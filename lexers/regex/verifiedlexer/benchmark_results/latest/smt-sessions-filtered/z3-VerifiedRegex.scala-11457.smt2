; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!620452 () Bool)

(assert start!620452)

(declare-fun b!6225265 () Bool)

(assert (=> b!6225265 true))

(assert (=> b!6225265 true))

(declare-fun lambda!340338 () Int)

(declare-fun lambda!340337 () Int)

(assert (=> b!6225265 (not (= lambda!340338 lambda!340337))))

(assert (=> b!6225265 true))

(assert (=> b!6225265 true))

(declare-fun b!6225256 () Bool)

(assert (=> b!6225256 true))

(declare-fun b!6225248 () Bool)

(declare-fun res!2572708 () Bool)

(declare-fun e!3789225 () Bool)

(assert (=> b!6225248 (=> res!2572708 e!3789225)))

(declare-datatypes ((C!32592 0))(
  ( (C!32593 (val!25998 Int)) )
))
(declare-datatypes ((Regex!16161 0))(
  ( (ElementMatch!16161 (c!1125039 C!32592)) (Concat!25006 (regOne!32834 Regex!16161) (regTwo!32834 Regex!16161)) (EmptyExpr!16161) (Star!16161 (reg!16490 Regex!16161)) (EmptyLang!16161) (Union!16161 (regOne!32835 Regex!16161) (regTwo!32835 Regex!16161)) )
))
(declare-datatypes ((List!64782 0))(
  ( (Nil!64658) (Cons!64658 (h!71106 Regex!16161) (t!378318 List!64782)) )
))
(declare-datatypes ((Context!11090 0))(
  ( (Context!11091 (exprs!6045 List!64782)) )
))
(declare-datatypes ((List!64783 0))(
  ( (Nil!64659) (Cons!64659 (h!71107 Context!11090) (t!378319 List!64783)) )
))
(declare-fun zl!343 () List!64783)

(get-info :version)

(assert (=> b!6225248 (= res!2572708 (not ((_ is Cons!64658) (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6225249 () Bool)

(declare-fun res!2572711 () Bool)

(declare-fun e!3789222 () Bool)

(assert (=> b!6225249 (=> res!2572711 e!3789222)))

(declare-fun r!7292 () Regex!16161)

(declare-fun nullable!6154 (Regex!16161) Bool)

(assert (=> b!6225249 (= res!2572711 (not (nullable!6154 (regOne!32834 (regOne!32834 r!7292)))))))

(declare-fun setIsEmpty!42302 () Bool)

(declare-fun setRes!42302 () Bool)

(assert (=> setIsEmpty!42302 setRes!42302))

(declare-fun b!6225250 () Bool)

(declare-fun e!3789219 () Bool)

(assert (=> b!6225250 (= e!3789222 e!3789219)))

(declare-fun res!2572706 () Bool)

(assert (=> b!6225250 (=> res!2572706 e!3789219)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2345527 () (InoxSet Context!11090))

(declare-fun lt!2345524 () (InoxSet Context!11090))

(assert (=> b!6225250 (= res!2572706 (not (= lt!2345527 lt!2345524)))))

(declare-fun lt!2345519 () (InoxSet Context!11090))

(declare-fun lt!2345535 () (InoxSet Context!11090))

(assert (=> b!6225250 (= lt!2345524 ((_ map or) lt!2345519 lt!2345535))))

(declare-fun lt!2345516 () Context!11090)

(declare-datatypes ((List!64784 0))(
  ( (Nil!64660) (Cons!64660 (h!71108 C!32592) (t!378320 List!64784)) )
))
(declare-fun s!2326 () List!64784)

(declare-fun derivationStepZipperDown!1409 (Regex!16161 Context!11090 C!32592) (InoxSet Context!11090))

(assert (=> b!6225250 (= lt!2345535 (derivationStepZipperDown!1409 (regTwo!32834 (regOne!32834 r!7292)) lt!2345516 (h!71108 s!2326)))))

(declare-fun lt!2345517 () Context!11090)

(assert (=> b!6225250 (= lt!2345519 (derivationStepZipperDown!1409 (regOne!32834 (regOne!32834 r!7292)) lt!2345517 (h!71108 s!2326)))))

(declare-fun lt!2345518 () List!64782)

(assert (=> b!6225250 (= lt!2345517 (Context!11091 lt!2345518))))

(assert (=> b!6225250 (= lt!2345518 (Cons!64658 (regTwo!32834 (regOne!32834 r!7292)) (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6225251 () Bool)

(declare-fun e!3789221 () Bool)

(declare-fun matchZipper!2173 ((InoxSet Context!11090) List!64784) Bool)

(assert (=> b!6225251 (= e!3789221 (not (matchZipper!2173 lt!2345535 (t!378320 s!2326))))))

(declare-fun res!2572719 () Bool)

(declare-fun e!3789212 () Bool)

(assert (=> start!620452 (=> (not res!2572719) (not e!3789212))))

(declare-fun validRegex!7897 (Regex!16161) Bool)

(assert (=> start!620452 (= res!2572719 (validRegex!7897 r!7292))))

(assert (=> start!620452 e!3789212))

(declare-fun e!3789218 () Bool)

(assert (=> start!620452 e!3789218))

(declare-fun condSetEmpty!42302 () Bool)

(declare-fun z!1189 () (InoxSet Context!11090))

(assert (=> start!620452 (= condSetEmpty!42302 (= z!1189 ((as const (Array Context!11090 Bool)) false)))))

(assert (=> start!620452 setRes!42302))

(declare-fun e!3789213 () Bool)

(assert (=> start!620452 e!3789213))

(declare-fun e!3789211 () Bool)

(assert (=> start!620452 e!3789211))

(declare-fun b!6225252 () Bool)

(declare-fun e!3789216 () Bool)

(declare-fun tp!1736445 () Bool)

(assert (=> b!6225252 (= e!3789216 tp!1736445)))

(declare-fun b!6225253 () Bool)

(declare-fun tp!1736443 () Bool)

(declare-fun tp!1736448 () Bool)

(assert (=> b!6225253 (= e!3789218 (and tp!1736443 tp!1736448))))

(declare-fun b!6225254 () Bool)

(declare-fun e!3789215 () Bool)

(assert (=> b!6225254 (= e!3789219 e!3789215)))

(declare-fun res!2572712 () Bool)

(assert (=> b!6225254 (=> res!2572712 e!3789215)))

(assert (=> b!6225254 (= res!2572712 e!3789221)))

(declare-fun res!2572716 () Bool)

(assert (=> b!6225254 (=> (not res!2572716) (not e!3789221))))

(declare-fun lt!2345532 () Bool)

(assert (=> b!6225254 (= res!2572716 (not (= (matchZipper!2173 lt!2345527 (t!378320 s!2326)) lt!2345532)))))

(declare-fun e!3789210 () Bool)

(assert (=> b!6225254 (= (matchZipper!2173 lt!2345524 (t!378320 s!2326)) e!3789210)))

(declare-fun res!2572717 () Bool)

(assert (=> b!6225254 (=> res!2572717 e!3789210)))

(assert (=> b!6225254 (= res!2572717 lt!2345532)))

(assert (=> b!6225254 (= lt!2345532 (matchZipper!2173 lt!2345519 (t!378320 s!2326)))))

(declare-datatypes ((Unit!157975 0))(
  ( (Unit!157976) )
))
(declare-fun lt!2345525 () Unit!157975)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!992 ((InoxSet Context!11090) (InoxSet Context!11090) List!64784) Unit!157975)

(assert (=> b!6225254 (= lt!2345525 (lemmaZipperConcatMatchesSameAsBothZippers!992 lt!2345519 lt!2345535 (t!378320 s!2326)))))

(declare-fun b!6225255 () Bool)

(declare-fun tp!1736450 () Bool)

(declare-fun tp!1736442 () Bool)

(assert (=> b!6225255 (= e!3789218 (and tp!1736450 tp!1736442))))

(declare-fun e!3789214 () Bool)

(assert (=> b!6225256 (= e!3789214 e!3789222)))

(declare-fun res!2572721 () Bool)

(assert (=> b!6225256 (=> res!2572721 e!3789222)))

(assert (=> b!6225256 (= res!2572721 (or (and ((_ is ElementMatch!16161) (regOne!32834 r!7292)) (= (c!1125039 (regOne!32834 r!7292)) (h!71108 s!2326))) ((_ is Union!16161) (regOne!32834 r!7292)) (not ((_ is Concat!25006) (regOne!32834 r!7292)))))))

(declare-fun lt!2345533 () Unit!157975)

(declare-fun e!3789220 () Unit!157975)

(assert (=> b!6225256 (= lt!2345533 e!3789220)))

(declare-fun c!1125038 () Bool)

(assert (=> b!6225256 (= c!1125038 (nullable!6154 (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun lambda!340339 () Int)

(declare-fun flatMap!1666 ((InoxSet Context!11090) Int) (InoxSet Context!11090))

(declare-fun derivationStepZipperUp!1335 (Context!11090 C!32592) (InoxSet Context!11090))

(assert (=> b!6225256 (= (flatMap!1666 z!1189 lambda!340339) (derivationStepZipperUp!1335 (h!71107 zl!343) (h!71108 s!2326)))))

(declare-fun lt!2345528 () Unit!157975)

(declare-fun lemmaFlatMapOnSingletonSet!1192 ((InoxSet Context!11090) Context!11090 Int) Unit!157975)

(assert (=> b!6225256 (= lt!2345528 (lemmaFlatMapOnSingletonSet!1192 z!1189 (h!71107 zl!343) lambda!340339))))

(declare-fun lt!2345521 () (InoxSet Context!11090))

(assert (=> b!6225256 (= lt!2345521 (derivationStepZipperUp!1335 lt!2345516 (h!71108 s!2326)))))

(assert (=> b!6225256 (= lt!2345527 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (h!71107 zl!343))) lt!2345516 (h!71108 s!2326)))))

(assert (=> b!6225256 (= lt!2345516 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun lt!2345536 () (InoxSet Context!11090))

(assert (=> b!6225256 (= lt!2345536 (derivationStepZipperUp!1335 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))) (h!71108 s!2326)))))

(declare-fun b!6225257 () Bool)

(assert (=> b!6225257 (= e!3789210 (matchZipper!2173 lt!2345535 (t!378320 s!2326)))))

(declare-fun e!3789217 () Bool)

(declare-fun setElem!42302 () Context!11090)

(declare-fun setNonEmpty!42302 () Bool)

(declare-fun tp!1736447 () Bool)

(declare-fun inv!83649 (Context!11090) Bool)

(assert (=> setNonEmpty!42302 (= setRes!42302 (and tp!1736447 (inv!83649 setElem!42302) e!3789217))))

(declare-fun setRest!42302 () (InoxSet Context!11090))

(assert (=> setNonEmpty!42302 (= z!1189 ((_ map or) (store ((as const (Array Context!11090 Bool)) false) setElem!42302 true) setRest!42302))))

(declare-fun tp!1736446 () Bool)

(declare-fun b!6225258 () Bool)

(assert (=> b!6225258 (= e!3789213 (and (inv!83649 (h!71107 zl!343)) e!3789216 tp!1736446))))

(declare-fun b!6225259 () Bool)

(declare-fun res!2572718 () Bool)

(assert (=> b!6225259 (=> res!2572718 e!3789225)))

(declare-fun generalisedUnion!2005 (List!64782) Regex!16161)

(declare-fun unfocusZipperList!1582 (List!64783) List!64782)

(assert (=> b!6225259 (= res!2572718 (not (= r!7292 (generalisedUnion!2005 (unfocusZipperList!1582 zl!343)))))))

(declare-fun b!6225260 () Bool)

(declare-fun tp!1736449 () Bool)

(assert (=> b!6225260 (= e!3789217 tp!1736449)))

(declare-fun b!6225261 () Bool)

(declare-fun res!2572714 () Bool)

(assert (=> b!6225261 (=> res!2572714 e!3789225)))

(declare-fun generalisedConcat!1758 (List!64782) Regex!16161)

(assert (=> b!6225261 (= res!2572714 (not (= r!7292 (generalisedConcat!1758 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun b!6225262 () Bool)

(declare-fun e!3789224 () Bool)

(assert (=> b!6225262 (= e!3789224 (inv!83649 lt!2345517))))

(declare-fun lt!2345520 () (InoxSet Context!11090))

(assert (=> b!6225262 (= (flatMap!1666 lt!2345520 lambda!340339) (derivationStepZipperUp!1335 lt!2345517 (h!71108 s!2326)))))

(declare-fun lt!2345523 () Unit!157975)

(assert (=> b!6225262 (= lt!2345523 (lemmaFlatMapOnSingletonSet!1192 lt!2345520 lt!2345517 lambda!340339))))

(declare-fun b!6225263 () Bool)

(declare-fun tp!1736441 () Bool)

(assert (=> b!6225263 (= e!3789218 tp!1736441)))

(declare-fun b!6225264 () Bool)

(declare-fun Unit!157977 () Unit!157975)

(assert (=> b!6225264 (= e!3789220 Unit!157977)))

(assert (=> b!6225265 (= e!3789225 e!3789214)))

(declare-fun res!2572707 () Bool)

(assert (=> b!6225265 (=> res!2572707 e!3789214)))

(declare-fun lt!2345538 () Bool)

(declare-fun lt!2345531 () Bool)

(assert (=> b!6225265 (= res!2572707 (or (not (= lt!2345538 lt!2345531)) ((_ is Nil!64660) s!2326)))))

(declare-fun Exists!3231 (Int) Bool)

(assert (=> b!6225265 (= (Exists!3231 lambda!340337) (Exists!3231 lambda!340338))))

(declare-fun lt!2345526 () Unit!157975)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1768 (Regex!16161 Regex!16161 List!64784) Unit!157975)

(assert (=> b!6225265 (= lt!2345526 (lemmaExistCutMatchRandMatchRSpecEquivalent!1768 (regOne!32834 r!7292) (regTwo!32834 r!7292) s!2326))))

(assert (=> b!6225265 (= lt!2345531 (Exists!3231 lambda!340337))))

(declare-datatypes ((tuple2!66280 0))(
  ( (tuple2!66281 (_1!36443 List!64784) (_2!36443 List!64784)) )
))
(declare-datatypes ((Option!16052 0))(
  ( (None!16051) (Some!16051 (v!52197 tuple2!66280)) )
))
(declare-fun isDefined!12755 (Option!16052) Bool)

(declare-fun findConcatSeparation!2466 (Regex!16161 Regex!16161 List!64784 List!64784 List!64784) Option!16052)

(assert (=> b!6225265 (= lt!2345531 (isDefined!12755 (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) Nil!64660 s!2326 s!2326)))))

(declare-fun lt!2345530 () Unit!157975)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2230 (Regex!16161 Regex!16161 List!64784) Unit!157975)

(assert (=> b!6225265 (= lt!2345530 (lemmaFindConcatSeparationEquivalentToExists!2230 (regOne!32834 r!7292) (regTwo!32834 r!7292) s!2326))))

(declare-fun b!6225266 () Bool)

(assert (=> b!6225266 (= e!3789212 (not e!3789225))))

(declare-fun res!2572723 () Bool)

(assert (=> b!6225266 (=> res!2572723 e!3789225)))

(assert (=> b!6225266 (= res!2572723 (not ((_ is Cons!64659) zl!343)))))

(declare-fun matchRSpec!3262 (Regex!16161 List!64784) Bool)

(assert (=> b!6225266 (= lt!2345538 (matchRSpec!3262 r!7292 s!2326))))

(declare-fun matchR!8344 (Regex!16161 List!64784) Bool)

(assert (=> b!6225266 (= lt!2345538 (matchR!8344 r!7292 s!2326))))

(declare-fun lt!2345529 () Unit!157975)

(declare-fun mainMatchTheorem!3262 (Regex!16161 List!64784) Unit!157975)

(assert (=> b!6225266 (= lt!2345529 (mainMatchTheorem!3262 r!7292 s!2326))))

(declare-fun b!6225267 () Bool)

(declare-fun res!2572724 () Bool)

(assert (=> b!6225267 (=> res!2572724 e!3789225)))

(assert (=> b!6225267 (= res!2572724 (or ((_ is EmptyExpr!16161) r!7292) ((_ is EmptyLang!16161) r!7292) ((_ is ElementMatch!16161) r!7292) ((_ is Union!16161) r!7292) (not ((_ is Concat!25006) r!7292))))))

(declare-fun b!6225268 () Bool)

(declare-fun tp_is_empty!41575 () Bool)

(declare-fun tp!1736444 () Bool)

(assert (=> b!6225268 (= e!3789211 (and tp_is_empty!41575 tp!1736444))))

(declare-fun b!6225269 () Bool)

(assert (=> b!6225269 (= e!3789215 e!3789224)))

(declare-fun res!2572710 () Bool)

(assert (=> b!6225269 (=> res!2572710 e!3789224)))

(declare-fun lt!2345537 () (InoxSet Context!11090))

(declare-fun derivationStepZipper!2127 ((InoxSet Context!11090) C!32592) (InoxSet Context!11090))

(assert (=> b!6225269 (= res!2572710 (not (= (derivationStepZipper!2127 lt!2345537 (h!71108 s!2326)) ((_ map or) lt!2345519 (derivationStepZipperUp!1335 lt!2345517 (h!71108 s!2326))))))))

(declare-fun lt!2345515 () Context!11090)

(assert (=> b!6225269 (= (flatMap!1666 lt!2345537 lambda!340339) (derivationStepZipperUp!1335 lt!2345515 (h!71108 s!2326)))))

(declare-fun lt!2345514 () Unit!157975)

(assert (=> b!6225269 (= lt!2345514 (lemmaFlatMapOnSingletonSet!1192 lt!2345537 lt!2345515 lambda!340339))))

(declare-fun lt!2345522 () (InoxSet Context!11090))

(assert (=> b!6225269 (= lt!2345522 (derivationStepZipperUp!1335 lt!2345515 (h!71108 s!2326)))))

(assert (=> b!6225269 (= lt!2345520 (store ((as const (Array Context!11090 Bool)) false) lt!2345517 true))))

(assert (=> b!6225269 (= lt!2345537 (store ((as const (Array Context!11090 Bool)) false) lt!2345515 true))))

(assert (=> b!6225269 (= lt!2345515 (Context!11091 (Cons!64658 (regOne!32834 (regOne!32834 r!7292)) lt!2345518)))))

(declare-fun b!6225270 () Bool)

(declare-fun res!2572720 () Bool)

(assert (=> b!6225270 (=> res!2572720 e!3789214)))

(declare-fun isEmpty!36670 (List!64782) Bool)

(assert (=> b!6225270 (= res!2572720 (isEmpty!36670 (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6225271 () Bool)

(declare-fun e!3789223 () Bool)

(assert (=> b!6225271 (= e!3789223 (matchZipper!2173 lt!2345521 (t!378320 s!2326)))))

(declare-fun b!6225272 () Bool)

(assert (=> b!6225272 (= e!3789218 tp_is_empty!41575)))

(declare-fun b!6225273 () Bool)

(declare-fun res!2572713 () Bool)

(assert (=> b!6225273 (=> res!2572713 e!3789225)))

(declare-fun isEmpty!36671 (List!64783) Bool)

(assert (=> b!6225273 (= res!2572713 (not (isEmpty!36671 (t!378319 zl!343))))))

(declare-fun b!6225274 () Bool)

(declare-fun res!2572709 () Bool)

(assert (=> b!6225274 (=> (not res!2572709) (not e!3789212))))

(declare-fun toList!9945 ((InoxSet Context!11090)) List!64783)

(assert (=> b!6225274 (= res!2572709 (= (toList!9945 z!1189) zl!343))))

(declare-fun b!6225275 () Bool)

(declare-fun Unit!157978 () Unit!157975)

(assert (=> b!6225275 (= e!3789220 Unit!157978)))

(declare-fun lt!2345534 () Unit!157975)

(assert (=> b!6225275 (= lt!2345534 (lemmaZipperConcatMatchesSameAsBothZippers!992 lt!2345527 lt!2345521 (t!378320 s!2326)))))

(declare-fun res!2572715 () Bool)

(assert (=> b!6225275 (= res!2572715 (matchZipper!2173 lt!2345527 (t!378320 s!2326)))))

(assert (=> b!6225275 (=> res!2572715 e!3789223)))

(assert (=> b!6225275 (= (matchZipper!2173 ((_ map or) lt!2345527 lt!2345521) (t!378320 s!2326)) e!3789223)))

(declare-fun b!6225276 () Bool)

(declare-fun res!2572722 () Bool)

(assert (=> b!6225276 (=> (not res!2572722) (not e!3789212))))

(declare-fun unfocusZipper!1903 (List!64783) Regex!16161)

(assert (=> b!6225276 (= res!2572722 (= r!7292 (unfocusZipper!1903 zl!343)))))

(assert (= (and start!620452 res!2572719) b!6225274))

(assert (= (and b!6225274 res!2572709) b!6225276))

(assert (= (and b!6225276 res!2572722) b!6225266))

(assert (= (and b!6225266 (not res!2572723)) b!6225273))

(assert (= (and b!6225273 (not res!2572713)) b!6225261))

(assert (= (and b!6225261 (not res!2572714)) b!6225248))

(assert (= (and b!6225248 (not res!2572708)) b!6225259))

(assert (= (and b!6225259 (not res!2572718)) b!6225267))

(assert (= (and b!6225267 (not res!2572724)) b!6225265))

(assert (= (and b!6225265 (not res!2572707)) b!6225270))

(assert (= (and b!6225270 (not res!2572720)) b!6225256))

(assert (= (and b!6225256 c!1125038) b!6225275))

(assert (= (and b!6225256 (not c!1125038)) b!6225264))

(assert (= (and b!6225275 (not res!2572715)) b!6225271))

(assert (= (and b!6225256 (not res!2572721)) b!6225249))

(assert (= (and b!6225249 (not res!2572711)) b!6225250))

(assert (= (and b!6225250 (not res!2572706)) b!6225254))

(assert (= (and b!6225254 (not res!2572717)) b!6225257))

(assert (= (and b!6225254 res!2572716) b!6225251))

(assert (= (and b!6225254 (not res!2572712)) b!6225269))

(assert (= (and b!6225269 (not res!2572710)) b!6225262))

(assert (= (and start!620452 ((_ is ElementMatch!16161) r!7292)) b!6225272))

(assert (= (and start!620452 ((_ is Concat!25006) r!7292)) b!6225255))

(assert (= (and start!620452 ((_ is Star!16161) r!7292)) b!6225263))

(assert (= (and start!620452 ((_ is Union!16161) r!7292)) b!6225253))

(assert (= (and start!620452 condSetEmpty!42302) setIsEmpty!42302))

(assert (= (and start!620452 (not condSetEmpty!42302)) setNonEmpty!42302))

(assert (= setNonEmpty!42302 b!6225260))

(assert (= b!6225258 b!6225252))

(assert (= (and start!620452 ((_ is Cons!64659) zl!343)) b!6225258))

(assert (= (and start!620452 ((_ is Cons!64660) s!2326)) b!6225268))

(declare-fun m!7052316 () Bool)

(assert (=> b!6225249 m!7052316))

(declare-fun m!7052318 () Bool)

(assert (=> b!6225273 m!7052318))

(declare-fun m!7052320 () Bool)

(assert (=> b!6225262 m!7052320))

(declare-fun m!7052322 () Bool)

(assert (=> b!6225262 m!7052322))

(declare-fun m!7052324 () Bool)

(assert (=> b!6225262 m!7052324))

(declare-fun m!7052326 () Bool)

(assert (=> b!6225262 m!7052326))

(declare-fun m!7052328 () Bool)

(assert (=> start!620452 m!7052328))

(declare-fun m!7052330 () Bool)

(assert (=> b!6225258 m!7052330))

(declare-fun m!7052332 () Bool)

(assert (=> b!6225270 m!7052332))

(declare-fun m!7052334 () Bool)

(assert (=> b!6225265 m!7052334))

(declare-fun m!7052336 () Bool)

(assert (=> b!6225265 m!7052336))

(declare-fun m!7052338 () Bool)

(assert (=> b!6225265 m!7052338))

(declare-fun m!7052340 () Bool)

(assert (=> b!6225265 m!7052340))

(declare-fun m!7052342 () Bool)

(assert (=> b!6225265 m!7052342))

(assert (=> b!6225265 m!7052340))

(assert (=> b!6225265 m!7052336))

(declare-fun m!7052344 () Bool)

(assert (=> b!6225265 m!7052344))

(declare-fun m!7052346 () Bool)

(assert (=> b!6225271 m!7052346))

(declare-fun m!7052348 () Bool)

(assert (=> b!6225251 m!7052348))

(declare-fun m!7052350 () Bool)

(assert (=> b!6225276 m!7052350))

(declare-fun m!7052352 () Bool)

(assert (=> b!6225274 m!7052352))

(declare-fun m!7052354 () Bool)

(assert (=> b!6225256 m!7052354))

(declare-fun m!7052356 () Bool)

(assert (=> b!6225256 m!7052356))

(declare-fun m!7052358 () Bool)

(assert (=> b!6225256 m!7052358))

(declare-fun m!7052360 () Bool)

(assert (=> b!6225256 m!7052360))

(declare-fun m!7052362 () Bool)

(assert (=> b!6225256 m!7052362))

(declare-fun m!7052364 () Bool)

(assert (=> b!6225256 m!7052364))

(declare-fun m!7052366 () Bool)

(assert (=> b!6225256 m!7052366))

(declare-fun m!7052368 () Bool)

(assert (=> b!6225266 m!7052368))

(declare-fun m!7052370 () Bool)

(assert (=> b!6225266 m!7052370))

(declare-fun m!7052372 () Bool)

(assert (=> b!6225266 m!7052372))

(declare-fun m!7052374 () Bool)

(assert (=> b!6225254 m!7052374))

(declare-fun m!7052376 () Bool)

(assert (=> b!6225254 m!7052376))

(declare-fun m!7052378 () Bool)

(assert (=> b!6225254 m!7052378))

(declare-fun m!7052380 () Bool)

(assert (=> b!6225254 m!7052380))

(declare-fun m!7052382 () Bool)

(assert (=> b!6225275 m!7052382))

(assert (=> b!6225275 m!7052374))

(declare-fun m!7052384 () Bool)

(assert (=> b!6225275 m!7052384))

(declare-fun m!7052386 () Bool)

(assert (=> setNonEmpty!42302 m!7052386))

(declare-fun m!7052388 () Bool)

(assert (=> b!6225250 m!7052388))

(declare-fun m!7052390 () Bool)

(assert (=> b!6225250 m!7052390))

(assert (=> b!6225257 m!7052348))

(declare-fun m!7052392 () Bool)

(assert (=> b!6225261 m!7052392))

(declare-fun m!7052394 () Bool)

(assert (=> b!6225269 m!7052394))

(declare-fun m!7052396 () Bool)

(assert (=> b!6225269 m!7052396))

(declare-fun m!7052398 () Bool)

(assert (=> b!6225269 m!7052398))

(declare-fun m!7052400 () Bool)

(assert (=> b!6225269 m!7052400))

(declare-fun m!7052402 () Bool)

(assert (=> b!6225269 m!7052402))

(declare-fun m!7052404 () Bool)

(assert (=> b!6225269 m!7052404))

(assert (=> b!6225269 m!7052324))

(declare-fun m!7052406 () Bool)

(assert (=> b!6225259 m!7052406))

(assert (=> b!6225259 m!7052406))

(declare-fun m!7052408 () Bool)

(assert (=> b!6225259 m!7052408))

(check-sat (not b!6225273) (not setNonEmpty!42302) (not start!620452) (not b!6225269) (not b!6225253) (not b!6225274) (not b!6225265) (not b!6225249) (not b!6225257) (not b!6225271) (not b!6225259) tp_is_empty!41575 (not b!6225260) (not b!6225252) (not b!6225270) (not b!6225254) (not b!6225262) (not b!6225263) (not b!6225250) (not b!6225256) (not b!6225261) (not b!6225251) (not b!6225268) (not b!6225276) (not b!6225255) (not b!6225266) (not b!6225258) (not b!6225275))
(check-sat)
(get-model)

(declare-fun d!1951544 () Bool)

(declare-fun c!1125118 () Bool)

(declare-fun isEmpty!36673 (List!64784) Bool)

(assert (=> d!1951544 (= c!1125118 (isEmpty!36673 (t!378320 s!2326)))))

(declare-fun e!3789340 () Bool)

(assert (=> d!1951544 (= (matchZipper!2173 lt!2345535 (t!378320 s!2326)) e!3789340)))

(declare-fun b!6225481 () Bool)

(declare-fun nullableZipper!1935 ((InoxSet Context!11090)) Bool)

(assert (=> b!6225481 (= e!3789340 (nullableZipper!1935 lt!2345535))))

(declare-fun b!6225482 () Bool)

(declare-fun head!12830 (List!64784) C!32592)

(declare-fun tail!11915 (List!64784) List!64784)

(assert (=> b!6225482 (= e!3789340 (matchZipper!2173 (derivationStepZipper!2127 lt!2345535 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))))))

(assert (= (and d!1951544 c!1125118) b!6225481))

(assert (= (and d!1951544 (not c!1125118)) b!6225482))

(declare-fun m!7052582 () Bool)

(assert (=> d!1951544 m!7052582))

(declare-fun m!7052584 () Bool)

(assert (=> b!6225481 m!7052584))

(declare-fun m!7052586 () Bool)

(assert (=> b!6225482 m!7052586))

(assert (=> b!6225482 m!7052586))

(declare-fun m!7052588 () Bool)

(assert (=> b!6225482 m!7052588))

(declare-fun m!7052590 () Bool)

(assert (=> b!6225482 m!7052590))

(assert (=> b!6225482 m!7052588))

(assert (=> b!6225482 m!7052590))

(declare-fun m!7052592 () Bool)

(assert (=> b!6225482 m!7052592))

(assert (=> b!6225257 d!1951544))

(declare-fun d!1951548 () Bool)

(declare-fun lt!2345564 () Regex!16161)

(assert (=> d!1951548 (validRegex!7897 lt!2345564)))

(assert (=> d!1951548 (= lt!2345564 (generalisedUnion!2005 (unfocusZipperList!1582 zl!343)))))

(assert (=> d!1951548 (= (unfocusZipper!1903 zl!343) lt!2345564)))

(declare-fun bs!1543614 () Bool)

(assert (= bs!1543614 d!1951548))

(declare-fun m!7052594 () Bool)

(assert (=> bs!1543614 m!7052594))

(assert (=> bs!1543614 m!7052406))

(assert (=> bs!1543614 m!7052406))

(assert (=> bs!1543614 m!7052408))

(assert (=> b!6225276 d!1951548))

(declare-fun b!6225574 () Bool)

(declare-fun e!3789391 () Option!16052)

(assert (=> b!6225574 (= e!3789391 None!16051)))

(declare-fun d!1951550 () Bool)

(declare-fun e!3789389 () Bool)

(assert (=> d!1951550 e!3789389))

(declare-fun res!2572822 () Bool)

(assert (=> d!1951550 (=> res!2572822 e!3789389)))

(declare-fun e!3789393 () Bool)

(assert (=> d!1951550 (= res!2572822 e!3789393)))

(declare-fun res!2572825 () Bool)

(assert (=> d!1951550 (=> (not res!2572825) (not e!3789393))))

(declare-fun lt!2345586 () Option!16052)

(assert (=> d!1951550 (= res!2572825 (isDefined!12755 lt!2345586))))

(declare-fun e!3789390 () Option!16052)

(assert (=> d!1951550 (= lt!2345586 e!3789390)))

(declare-fun c!1125138 () Bool)

(declare-fun e!3789392 () Bool)

(assert (=> d!1951550 (= c!1125138 e!3789392)))

(declare-fun res!2572826 () Bool)

(assert (=> d!1951550 (=> (not res!2572826) (not e!3789392))))

(assert (=> d!1951550 (= res!2572826 (matchR!8344 (regOne!32834 r!7292) Nil!64660))))

(assert (=> d!1951550 (validRegex!7897 (regOne!32834 r!7292))))

(assert (=> d!1951550 (= (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) Nil!64660 s!2326 s!2326) lt!2345586)))

(declare-fun b!6225575 () Bool)

(assert (=> b!6225575 (= e!3789392 (matchR!8344 (regTwo!32834 r!7292) s!2326))))

(declare-fun b!6225576 () Bool)

(assert (=> b!6225576 (= e!3789389 (not (isDefined!12755 lt!2345586)))))

(declare-fun b!6225577 () Bool)

(declare-fun ++!14239 (List!64784 List!64784) List!64784)

(declare-fun get!22335 (Option!16052) tuple2!66280)

(assert (=> b!6225577 (= e!3789393 (= (++!14239 (_1!36443 (get!22335 lt!2345586)) (_2!36443 (get!22335 lt!2345586))) s!2326))))

(declare-fun b!6225578 () Bool)

(declare-fun res!2572824 () Bool)

(assert (=> b!6225578 (=> (not res!2572824) (not e!3789393))))

(assert (=> b!6225578 (= res!2572824 (matchR!8344 (regOne!32834 r!7292) (_1!36443 (get!22335 lt!2345586))))))

(declare-fun b!6225579 () Bool)

(assert (=> b!6225579 (= e!3789390 e!3789391)))

(declare-fun c!1125139 () Bool)

(assert (=> b!6225579 (= c!1125139 ((_ is Nil!64660) s!2326))))

(declare-fun b!6225580 () Bool)

(declare-fun res!2572823 () Bool)

(assert (=> b!6225580 (=> (not res!2572823) (not e!3789393))))

(assert (=> b!6225580 (= res!2572823 (matchR!8344 (regTwo!32834 r!7292) (_2!36443 (get!22335 lt!2345586))))))

(declare-fun b!6225581 () Bool)

(assert (=> b!6225581 (= e!3789390 (Some!16051 (tuple2!66281 Nil!64660 s!2326)))))

(declare-fun b!6225582 () Bool)

(declare-fun lt!2345587 () Unit!157975)

(declare-fun lt!2345588 () Unit!157975)

(assert (=> b!6225582 (= lt!2345587 lt!2345588)))

(assert (=> b!6225582 (= (++!14239 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (t!378320 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2334 (List!64784 C!32592 List!64784 List!64784) Unit!157975)

(assert (=> b!6225582 (= lt!2345588 (lemmaMoveElementToOtherListKeepsConcatEq!2334 Nil!64660 (h!71108 s!2326) (t!378320 s!2326) s!2326))))

(assert (=> b!6225582 (= e!3789391 (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (t!378320 s!2326) s!2326))))

(assert (= (and d!1951550 res!2572826) b!6225575))

(assert (= (and d!1951550 c!1125138) b!6225581))

(assert (= (and d!1951550 (not c!1125138)) b!6225579))

(assert (= (and b!6225579 c!1125139) b!6225574))

(assert (= (and b!6225579 (not c!1125139)) b!6225582))

(assert (= (and d!1951550 res!2572825) b!6225578))

(assert (= (and b!6225578 res!2572824) b!6225580))

(assert (= (and b!6225580 res!2572823) b!6225577))

(assert (= (and d!1951550 (not res!2572822)) b!6225576))

(declare-fun m!7052638 () Bool)

(assert (=> b!6225578 m!7052638))

(declare-fun m!7052640 () Bool)

(assert (=> b!6225578 m!7052640))

(declare-fun m!7052644 () Bool)

(assert (=> d!1951550 m!7052644))

(declare-fun m!7052648 () Bool)

(assert (=> d!1951550 m!7052648))

(declare-fun m!7052650 () Bool)

(assert (=> d!1951550 m!7052650))

(assert (=> b!6225576 m!7052644))

(assert (=> b!6225580 m!7052638))

(declare-fun m!7052652 () Bool)

(assert (=> b!6225580 m!7052652))

(assert (=> b!6225577 m!7052638))

(declare-fun m!7052654 () Bool)

(assert (=> b!6225577 m!7052654))

(declare-fun m!7052656 () Bool)

(assert (=> b!6225582 m!7052656))

(assert (=> b!6225582 m!7052656))

(declare-fun m!7052658 () Bool)

(assert (=> b!6225582 m!7052658))

(declare-fun m!7052660 () Bool)

(assert (=> b!6225582 m!7052660))

(assert (=> b!6225582 m!7052656))

(declare-fun m!7052662 () Bool)

(assert (=> b!6225582 m!7052662))

(declare-fun m!7052664 () Bool)

(assert (=> b!6225575 m!7052664))

(assert (=> b!6225265 d!1951550))

(declare-fun d!1951564 () Bool)

(declare-fun choose!46267 (Int) Bool)

(assert (=> d!1951564 (= (Exists!3231 lambda!340337) (choose!46267 lambda!340337))))

(declare-fun bs!1543622 () Bool)

(assert (= bs!1543622 d!1951564))

(declare-fun m!7052666 () Bool)

(assert (=> bs!1543622 m!7052666))

(assert (=> b!6225265 d!1951564))

(declare-fun d!1951566 () Bool)

(assert (=> d!1951566 (= (Exists!3231 lambda!340338) (choose!46267 lambda!340338))))

(declare-fun bs!1543623 () Bool)

(assert (= bs!1543623 d!1951566))

(declare-fun m!7052668 () Bool)

(assert (=> bs!1543623 m!7052668))

(assert (=> b!6225265 d!1951566))

(declare-fun bs!1543630 () Bool)

(declare-fun d!1951568 () Bool)

(assert (= bs!1543630 (and d!1951568 b!6225265)))

(declare-fun lambda!340370 () Int)

(assert (=> bs!1543630 (= lambda!340370 lambda!340337)))

(assert (=> bs!1543630 (not (= lambda!340370 lambda!340338))))

(assert (=> d!1951568 true))

(assert (=> d!1951568 true))

(assert (=> d!1951568 true))

(assert (=> d!1951568 (= (isDefined!12755 (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) Nil!64660 s!2326 s!2326)) (Exists!3231 lambda!340370))))

(declare-fun lt!2345595 () Unit!157975)

(declare-fun choose!46268 (Regex!16161 Regex!16161 List!64784) Unit!157975)

(assert (=> d!1951568 (= lt!2345595 (choose!46268 (regOne!32834 r!7292) (regTwo!32834 r!7292) s!2326))))

(assert (=> d!1951568 (validRegex!7897 (regOne!32834 r!7292))))

(assert (=> d!1951568 (= (lemmaFindConcatSeparationEquivalentToExists!2230 (regOne!32834 r!7292) (regTwo!32834 r!7292) s!2326) lt!2345595)))

(declare-fun bs!1543631 () Bool)

(assert (= bs!1543631 d!1951568))

(assert (=> bs!1543631 m!7052336))

(assert (=> bs!1543631 m!7052650))

(declare-fun m!7052678 () Bool)

(assert (=> bs!1543631 m!7052678))

(assert (=> bs!1543631 m!7052336))

(assert (=> bs!1543631 m!7052338))

(declare-fun m!7052680 () Bool)

(assert (=> bs!1543631 m!7052680))

(assert (=> b!6225265 d!1951568))

(declare-fun bs!1543645 () Bool)

(declare-fun d!1951574 () Bool)

(assert (= bs!1543645 (and d!1951574 b!6225265)))

(declare-fun lambda!340379 () Int)

(assert (=> bs!1543645 (= lambda!340379 lambda!340337)))

(assert (=> bs!1543645 (not (= lambda!340379 lambda!340338))))

(declare-fun bs!1543646 () Bool)

(assert (= bs!1543646 (and d!1951574 d!1951568)))

(assert (=> bs!1543646 (= lambda!340379 lambda!340370)))

(assert (=> d!1951574 true))

(assert (=> d!1951574 true))

(assert (=> d!1951574 true))

(declare-fun lambda!340380 () Int)

(assert (=> bs!1543645 (not (= lambda!340380 lambda!340337))))

(assert (=> bs!1543645 (= lambda!340380 lambda!340338)))

(assert (=> bs!1543646 (not (= lambda!340380 lambda!340370))))

(declare-fun bs!1543647 () Bool)

(assert (= bs!1543647 d!1951574))

(assert (=> bs!1543647 (not (= lambda!340380 lambda!340379))))

(assert (=> d!1951574 true))

(assert (=> d!1951574 true))

(assert (=> d!1951574 true))

(assert (=> d!1951574 (= (Exists!3231 lambda!340379) (Exists!3231 lambda!340380))))

(declare-fun lt!2345601 () Unit!157975)

(declare-fun choose!46269 (Regex!16161 Regex!16161 List!64784) Unit!157975)

(assert (=> d!1951574 (= lt!2345601 (choose!46269 (regOne!32834 r!7292) (regTwo!32834 r!7292) s!2326))))

(assert (=> d!1951574 (validRegex!7897 (regOne!32834 r!7292))))

(assert (=> d!1951574 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1768 (regOne!32834 r!7292) (regTwo!32834 r!7292) s!2326) lt!2345601)))

(declare-fun m!7052712 () Bool)

(assert (=> bs!1543647 m!7052712))

(declare-fun m!7052714 () Bool)

(assert (=> bs!1543647 m!7052714))

(declare-fun m!7052716 () Bool)

(assert (=> bs!1543647 m!7052716))

(assert (=> bs!1543647 m!7052650))

(assert (=> b!6225265 d!1951574))

(declare-fun d!1951586 () Bool)

(declare-fun isEmpty!36675 (Option!16052) Bool)

(assert (=> d!1951586 (= (isDefined!12755 (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) Nil!64660 s!2326 s!2326)) (not (isEmpty!36675 (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) Nil!64660 s!2326 s!2326))))))

(declare-fun bs!1543648 () Bool)

(assert (= bs!1543648 d!1951586))

(assert (=> bs!1543648 m!7052336))

(declare-fun m!7052718 () Bool)

(assert (=> bs!1543648 m!7052718))

(assert (=> b!6225265 d!1951586))

(declare-fun d!1951588 () Bool)

(declare-fun res!2572882 () Bool)

(declare-fun e!3789483 () Bool)

(assert (=> d!1951588 (=> res!2572882 e!3789483)))

(assert (=> d!1951588 (= res!2572882 ((_ is ElementMatch!16161) r!7292))))

(assert (=> d!1951588 (= (validRegex!7897 r!7292) e!3789483)))

(declare-fun b!6225732 () Bool)

(declare-fun e!3789485 () Bool)

(declare-fun call!522891 () Bool)

(assert (=> b!6225732 (= e!3789485 call!522891)))

(declare-fun b!6225733 () Bool)

(declare-fun e!3789484 () Bool)

(declare-fun e!3789486 () Bool)

(assert (=> b!6225733 (= e!3789484 e!3789486)))

(declare-fun c!1125162 () Bool)

(assert (=> b!6225733 (= c!1125162 ((_ is Union!16161) r!7292))))

(declare-fun b!6225734 () Bool)

(assert (=> b!6225734 (= e!3789483 e!3789484)))

(declare-fun c!1125163 () Bool)

(assert (=> b!6225734 (= c!1125163 ((_ is Star!16161) r!7292))))

(declare-fun bm!522885 () Bool)

(assert (=> bm!522885 (= call!522891 (validRegex!7897 (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))))))

(declare-fun b!6225735 () Bool)

(declare-fun e!3789480 () Bool)

(assert (=> b!6225735 (= e!3789484 e!3789480)))

(declare-fun res!2572879 () Bool)

(assert (=> b!6225735 (= res!2572879 (not (nullable!6154 (reg!16490 r!7292))))))

(assert (=> b!6225735 (=> (not res!2572879) (not e!3789480))))

(declare-fun call!522892 () Bool)

(declare-fun bm!522886 () Bool)

(assert (=> bm!522886 (= call!522892 (validRegex!7897 (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))))))

(declare-fun b!6225736 () Bool)

(declare-fun res!2572880 () Bool)

(assert (=> b!6225736 (=> (not res!2572880) (not e!3789485))))

(declare-fun call!522890 () Bool)

(assert (=> b!6225736 (= res!2572880 call!522890)))

(assert (=> b!6225736 (= e!3789486 e!3789485)))

(declare-fun b!6225737 () Bool)

(declare-fun res!2572878 () Bool)

(declare-fun e!3789481 () Bool)

(assert (=> b!6225737 (=> res!2572878 e!3789481)))

(assert (=> b!6225737 (= res!2572878 (not ((_ is Concat!25006) r!7292)))))

(assert (=> b!6225737 (= e!3789486 e!3789481)))

(declare-fun b!6225738 () Bool)

(declare-fun e!3789482 () Bool)

(assert (=> b!6225738 (= e!3789481 e!3789482)))

(declare-fun res!2572881 () Bool)

(assert (=> b!6225738 (=> (not res!2572881) (not e!3789482))))

(assert (=> b!6225738 (= res!2572881 call!522890)))

(declare-fun bm!522887 () Bool)

(assert (=> bm!522887 (= call!522890 call!522892)))

(declare-fun b!6225739 () Bool)

(assert (=> b!6225739 (= e!3789482 call!522891)))

(declare-fun b!6225740 () Bool)

(assert (=> b!6225740 (= e!3789480 call!522892)))

(assert (= (and d!1951588 (not res!2572882)) b!6225734))

(assert (= (and b!6225734 c!1125163) b!6225735))

(assert (= (and b!6225734 (not c!1125163)) b!6225733))

(assert (= (and b!6225735 res!2572879) b!6225740))

(assert (= (and b!6225733 c!1125162) b!6225736))

(assert (= (and b!6225733 (not c!1125162)) b!6225737))

(assert (= (and b!6225736 res!2572880) b!6225732))

(assert (= (and b!6225737 (not res!2572878)) b!6225738))

(assert (= (and b!6225738 res!2572881) b!6225739))

(assert (= (or b!6225732 b!6225739) bm!522885))

(assert (= (or b!6225736 b!6225738) bm!522887))

(assert (= (or b!6225740 bm!522887) bm!522886))

(declare-fun m!7052720 () Bool)

(assert (=> bm!522885 m!7052720))

(declare-fun m!7052722 () Bool)

(assert (=> b!6225735 m!7052722))

(declare-fun m!7052724 () Bool)

(assert (=> bm!522886 m!7052724))

(assert (=> start!620452 d!1951588))

(declare-fun bs!1543649 () Bool)

(declare-fun b!6225783 () Bool)

(assert (= bs!1543649 (and b!6225783 d!1951574)))

(declare-fun lambda!340385 () Int)

(assert (=> bs!1543649 (not (= lambda!340385 lambda!340379))))

(assert (=> bs!1543649 (not (= lambda!340385 lambda!340380))))

(declare-fun bs!1543650 () Bool)

(assert (= bs!1543650 (and b!6225783 b!6225265)))

(assert (=> bs!1543650 (not (= lambda!340385 lambda!340337))))

(assert (=> bs!1543650 (not (= lambda!340385 lambda!340338))))

(declare-fun bs!1543651 () Bool)

(assert (= bs!1543651 (and b!6225783 d!1951568)))

(assert (=> bs!1543651 (not (= lambda!340385 lambda!340370))))

(assert (=> b!6225783 true))

(assert (=> b!6225783 true))

(declare-fun bs!1543652 () Bool)

(declare-fun b!6225778 () Bool)

(assert (= bs!1543652 (and b!6225778 d!1951574)))

(declare-fun lambda!340386 () Int)

(assert (=> bs!1543652 (not (= lambda!340386 lambda!340379))))

(declare-fun bs!1543653 () Bool)

(assert (= bs!1543653 (and b!6225778 b!6225783)))

(assert (=> bs!1543653 (not (= lambda!340386 lambda!340385))))

(assert (=> bs!1543652 (= lambda!340386 lambda!340380)))

(declare-fun bs!1543654 () Bool)

(assert (= bs!1543654 (and b!6225778 b!6225265)))

(assert (=> bs!1543654 (not (= lambda!340386 lambda!340337))))

(assert (=> bs!1543654 (= lambda!340386 lambda!340338)))

(declare-fun bs!1543655 () Bool)

(assert (= bs!1543655 (and b!6225778 d!1951568)))

(assert (=> bs!1543655 (not (= lambda!340386 lambda!340370))))

(assert (=> b!6225778 true))

(assert (=> b!6225778 true))

(declare-fun b!6225773 () Bool)

(declare-fun e!3789508 () Bool)

(declare-fun call!522897 () Bool)

(assert (=> b!6225773 (= e!3789508 call!522897)))

(declare-fun b!6225774 () Bool)

(declare-fun res!2572900 () Bool)

(declare-fun e!3789511 () Bool)

(assert (=> b!6225774 (=> res!2572900 e!3789511)))

(assert (=> b!6225774 (= res!2572900 call!522897)))

(declare-fun e!3789506 () Bool)

(assert (=> b!6225774 (= e!3789506 e!3789511)))

(declare-fun b!6225775 () Bool)

(declare-fun c!1125173 () Bool)

(assert (=> b!6225775 (= c!1125173 ((_ is Union!16161) r!7292))))

(declare-fun e!3789505 () Bool)

(declare-fun e!3789510 () Bool)

(assert (=> b!6225775 (= e!3789505 e!3789510)))

(declare-fun b!6225776 () Bool)

(declare-fun e!3789507 () Bool)

(assert (=> b!6225776 (= e!3789507 (matchRSpec!3262 (regTwo!32835 r!7292) s!2326))))

(declare-fun call!522898 () Bool)

(assert (=> b!6225778 (= e!3789506 call!522898)))

(declare-fun b!6225779 () Bool)

(assert (=> b!6225779 (= e!3789505 (= s!2326 (Cons!64660 (c!1125039 r!7292) Nil!64660)))))

(declare-fun b!6225780 () Bool)

(declare-fun c!1125175 () Bool)

(assert (=> b!6225780 (= c!1125175 ((_ is ElementMatch!16161) r!7292))))

(declare-fun e!3789509 () Bool)

(assert (=> b!6225780 (= e!3789509 e!3789505)))

(declare-fun b!6225781 () Bool)

(assert (=> b!6225781 (= e!3789510 e!3789506)))

(declare-fun c!1125174 () Bool)

(assert (=> b!6225781 (= c!1125174 ((_ is Star!16161) r!7292))))

(declare-fun d!1951590 () Bool)

(declare-fun c!1125172 () Bool)

(assert (=> d!1951590 (= c!1125172 ((_ is EmptyExpr!16161) r!7292))))

(assert (=> d!1951590 (= (matchRSpec!3262 r!7292 s!2326) e!3789508)))

(declare-fun b!6225777 () Bool)

(assert (=> b!6225777 (= e!3789508 e!3789509)))

(declare-fun res!2572899 () Bool)

(assert (=> b!6225777 (= res!2572899 (not ((_ is EmptyLang!16161) r!7292)))))

(assert (=> b!6225777 (=> (not res!2572899) (not e!3789509))))

(declare-fun bm!522892 () Bool)

(assert (=> bm!522892 (= call!522898 (Exists!3231 (ite c!1125174 lambda!340385 lambda!340386)))))

(declare-fun b!6225782 () Bool)

(assert (=> b!6225782 (= e!3789510 e!3789507)))

(declare-fun res!2572901 () Bool)

(assert (=> b!6225782 (= res!2572901 (matchRSpec!3262 (regOne!32835 r!7292) s!2326))))

(assert (=> b!6225782 (=> res!2572901 e!3789507)))

(declare-fun bm!522893 () Bool)

(assert (=> bm!522893 (= call!522897 (isEmpty!36673 s!2326))))

(assert (=> b!6225783 (= e!3789511 call!522898)))

(assert (= (and d!1951590 c!1125172) b!6225773))

(assert (= (and d!1951590 (not c!1125172)) b!6225777))

(assert (= (and b!6225777 res!2572899) b!6225780))

(assert (= (and b!6225780 c!1125175) b!6225779))

(assert (= (and b!6225780 (not c!1125175)) b!6225775))

(assert (= (and b!6225775 c!1125173) b!6225782))

(assert (= (and b!6225775 (not c!1125173)) b!6225781))

(assert (= (and b!6225782 (not res!2572901)) b!6225776))

(assert (= (and b!6225781 c!1125174) b!6225774))

(assert (= (and b!6225781 (not c!1125174)) b!6225778))

(assert (= (and b!6225774 (not res!2572900)) b!6225783))

(assert (= (or b!6225783 b!6225778) bm!522892))

(assert (= (or b!6225773 b!6225774) bm!522893))

(declare-fun m!7052726 () Bool)

(assert (=> b!6225776 m!7052726))

(declare-fun m!7052728 () Bool)

(assert (=> bm!522892 m!7052728))

(declare-fun m!7052730 () Bool)

(assert (=> b!6225782 m!7052730))

(declare-fun m!7052732 () Bool)

(assert (=> bm!522893 m!7052732))

(assert (=> b!6225266 d!1951590))

(declare-fun b!6225812 () Bool)

(declare-fun res!2572919 () Bool)

(declare-fun e!3789527 () Bool)

(assert (=> b!6225812 (=> (not res!2572919) (not e!3789527))))

(declare-fun call!522901 () Bool)

(assert (=> b!6225812 (= res!2572919 (not call!522901))))

(declare-fun b!6225813 () Bool)

(declare-fun e!3789531 () Bool)

(declare-fun e!3789528 () Bool)

(assert (=> b!6225813 (= e!3789531 e!3789528)))

(declare-fun res!2572924 () Bool)

(assert (=> b!6225813 (=> res!2572924 e!3789528)))

(assert (=> b!6225813 (= res!2572924 call!522901)))

(declare-fun b!6225814 () Bool)

(declare-fun e!3789532 () Bool)

(assert (=> b!6225814 (= e!3789532 (nullable!6154 r!7292))))

(declare-fun b!6225815 () Bool)

(declare-fun derivativeStep!4874 (Regex!16161 C!32592) Regex!16161)

(assert (=> b!6225815 (= e!3789532 (matchR!8344 (derivativeStep!4874 r!7292 (head!12830 s!2326)) (tail!11915 s!2326)))))

(declare-fun b!6225816 () Bool)

(declare-fun e!3789530 () Bool)

(declare-fun e!3789526 () Bool)

(assert (=> b!6225816 (= e!3789530 e!3789526)))

(declare-fun c!1125183 () Bool)

(assert (=> b!6225816 (= c!1125183 ((_ is EmptyLang!16161) r!7292))))

(declare-fun b!6225817 () Bool)

(assert (=> b!6225817 (= e!3789528 (not (= (head!12830 s!2326) (c!1125039 r!7292))))))

(declare-fun b!6225818 () Bool)

(declare-fun res!2572920 () Bool)

(declare-fun e!3789529 () Bool)

(assert (=> b!6225818 (=> res!2572920 e!3789529)))

(assert (=> b!6225818 (= res!2572920 (not ((_ is ElementMatch!16161) r!7292)))))

(assert (=> b!6225818 (= e!3789526 e!3789529)))

(declare-fun b!6225819 () Bool)

(declare-fun lt!2345604 () Bool)

(assert (=> b!6225819 (= e!3789530 (= lt!2345604 call!522901))))

(declare-fun b!6225820 () Bool)

(assert (=> b!6225820 (= e!3789529 e!3789531)))

(declare-fun res!2572918 () Bool)

(assert (=> b!6225820 (=> (not res!2572918) (not e!3789531))))

(assert (=> b!6225820 (= res!2572918 (not lt!2345604))))

(declare-fun b!6225821 () Bool)

(declare-fun res!2572925 () Bool)

(assert (=> b!6225821 (=> (not res!2572925) (not e!3789527))))

(assert (=> b!6225821 (= res!2572925 (isEmpty!36673 (tail!11915 s!2326)))))

(declare-fun b!6225822 () Bool)

(assert (=> b!6225822 (= e!3789527 (= (head!12830 s!2326) (c!1125039 r!7292)))))

(declare-fun b!6225823 () Bool)

(declare-fun res!2572921 () Bool)

(assert (=> b!6225823 (=> res!2572921 e!3789529)))

(assert (=> b!6225823 (= res!2572921 e!3789527)))

(declare-fun res!2572923 () Bool)

(assert (=> b!6225823 (=> (not res!2572923) (not e!3789527))))

(assert (=> b!6225823 (= res!2572923 lt!2345604)))

(declare-fun bm!522896 () Bool)

(assert (=> bm!522896 (= call!522901 (isEmpty!36673 s!2326))))

(declare-fun d!1951592 () Bool)

(assert (=> d!1951592 e!3789530))

(declare-fun c!1125182 () Bool)

(assert (=> d!1951592 (= c!1125182 ((_ is EmptyExpr!16161) r!7292))))

(assert (=> d!1951592 (= lt!2345604 e!3789532)))

(declare-fun c!1125184 () Bool)

(assert (=> d!1951592 (= c!1125184 (isEmpty!36673 s!2326))))

(assert (=> d!1951592 (validRegex!7897 r!7292)))

(assert (=> d!1951592 (= (matchR!8344 r!7292 s!2326) lt!2345604)))

(declare-fun b!6225824 () Bool)

(assert (=> b!6225824 (= e!3789526 (not lt!2345604))))

(declare-fun b!6225825 () Bool)

(declare-fun res!2572922 () Bool)

(assert (=> b!6225825 (=> res!2572922 e!3789528)))

(assert (=> b!6225825 (= res!2572922 (not (isEmpty!36673 (tail!11915 s!2326))))))

(assert (= (and d!1951592 c!1125184) b!6225814))

(assert (= (and d!1951592 (not c!1125184)) b!6225815))

(assert (= (and d!1951592 c!1125182) b!6225819))

(assert (= (and d!1951592 (not c!1125182)) b!6225816))

(assert (= (and b!6225816 c!1125183) b!6225824))

(assert (= (and b!6225816 (not c!1125183)) b!6225818))

(assert (= (and b!6225818 (not res!2572920)) b!6225823))

(assert (= (and b!6225823 res!2572923) b!6225812))

(assert (= (and b!6225812 res!2572919) b!6225821))

(assert (= (and b!6225821 res!2572925) b!6225822))

(assert (= (and b!6225823 (not res!2572921)) b!6225820))

(assert (= (and b!6225820 res!2572918) b!6225813))

(assert (= (and b!6225813 (not res!2572924)) b!6225825))

(assert (= (and b!6225825 (not res!2572922)) b!6225817))

(assert (= (or b!6225819 b!6225812 b!6225813) bm!522896))

(assert (=> bm!522896 m!7052732))

(declare-fun m!7052734 () Bool)

(assert (=> b!6225814 m!7052734))

(declare-fun m!7052736 () Bool)

(assert (=> b!6225817 m!7052736))

(assert (=> b!6225815 m!7052736))

(assert (=> b!6225815 m!7052736))

(declare-fun m!7052738 () Bool)

(assert (=> b!6225815 m!7052738))

(declare-fun m!7052740 () Bool)

(assert (=> b!6225815 m!7052740))

(assert (=> b!6225815 m!7052738))

(assert (=> b!6225815 m!7052740))

(declare-fun m!7052742 () Bool)

(assert (=> b!6225815 m!7052742))

(assert (=> b!6225822 m!7052736))

(assert (=> b!6225825 m!7052740))

(assert (=> b!6225825 m!7052740))

(declare-fun m!7052744 () Bool)

(assert (=> b!6225825 m!7052744))

(assert (=> d!1951592 m!7052732))

(assert (=> d!1951592 m!7052328))

(assert (=> b!6225821 m!7052740))

(assert (=> b!6225821 m!7052740))

(assert (=> b!6225821 m!7052744))

(assert (=> b!6225266 d!1951592))

(declare-fun d!1951594 () Bool)

(assert (=> d!1951594 (= (matchR!8344 r!7292 s!2326) (matchRSpec!3262 r!7292 s!2326))))

(declare-fun lt!2345607 () Unit!157975)

(declare-fun choose!46270 (Regex!16161 List!64784) Unit!157975)

(assert (=> d!1951594 (= lt!2345607 (choose!46270 r!7292 s!2326))))

(assert (=> d!1951594 (validRegex!7897 r!7292)))

(assert (=> d!1951594 (= (mainMatchTheorem!3262 r!7292 s!2326) lt!2345607)))

(declare-fun bs!1543656 () Bool)

(assert (= bs!1543656 d!1951594))

(assert (=> bs!1543656 m!7052370))

(assert (=> bs!1543656 m!7052368))

(declare-fun m!7052746 () Bool)

(assert (=> bs!1543656 m!7052746))

(assert (=> bs!1543656 m!7052328))

(assert (=> b!6225266 d!1951594))

(declare-fun d!1951596 () Bool)

(declare-fun nullableFct!2110 (Regex!16161) Bool)

(assert (=> d!1951596 (= (nullable!6154 (h!71106 (exprs!6045 (h!71107 zl!343)))) (nullableFct!2110 (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun bs!1543657 () Bool)

(assert (= bs!1543657 d!1951596))

(declare-fun m!7052748 () Bool)

(assert (=> bs!1543657 m!7052748))

(assert (=> b!6225256 d!1951596))

(declare-fun b!6225836 () Bool)

(declare-fun e!3789540 () (InoxSet Context!11090))

(assert (=> b!6225836 (= e!3789540 ((as const (Array Context!11090 Bool)) false))))

(declare-fun e!3789539 () (InoxSet Context!11090))

(declare-fun b!6225837 () Bool)

(declare-fun call!522904 () (InoxSet Context!11090))

(assert (=> b!6225837 (= e!3789539 ((_ map or) call!522904 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (h!71108 s!2326))))))

(declare-fun d!1951598 () Bool)

(declare-fun c!1125189 () Bool)

(declare-fun e!3789541 () Bool)

(assert (=> d!1951598 (= c!1125189 e!3789541)))

(declare-fun res!2572928 () Bool)

(assert (=> d!1951598 (=> (not res!2572928) (not e!3789541))))

(assert (=> d!1951598 (= res!2572928 ((_ is Cons!64658) (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))))

(assert (=> d!1951598 (= (derivationStepZipperUp!1335 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))) (h!71108 s!2326)) e!3789539)))

(declare-fun b!6225838 () Bool)

(assert (=> b!6225838 (= e!3789539 e!3789540)))

(declare-fun c!1125190 () Bool)

(assert (=> b!6225838 (= c!1125190 ((_ is Cons!64658) (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))))

(declare-fun b!6225839 () Bool)

(assert (=> b!6225839 (= e!3789540 call!522904)))

(declare-fun bm!522899 () Bool)

(assert (=> bm!522899 (= call!522904 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (h!71108 s!2326)))))

(declare-fun b!6225840 () Bool)

(assert (=> b!6225840 (= e!3789541 (nullable!6154 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))))

(assert (= (and d!1951598 res!2572928) b!6225840))

(assert (= (and d!1951598 c!1125189) b!6225837))

(assert (= (and d!1951598 (not c!1125189)) b!6225838))

(assert (= (and b!6225838 c!1125190) b!6225839))

(assert (= (and b!6225838 (not c!1125190)) b!6225836))

(assert (= (or b!6225837 b!6225839) bm!522899))

(declare-fun m!7052750 () Bool)

(assert (=> b!6225837 m!7052750))

(declare-fun m!7052752 () Bool)

(assert (=> bm!522899 m!7052752))

(declare-fun m!7052754 () Bool)

(assert (=> b!6225840 m!7052754))

(assert (=> b!6225256 d!1951598))

(declare-fun d!1951600 () Bool)

(declare-fun choose!46271 ((InoxSet Context!11090) Int) (InoxSet Context!11090))

(assert (=> d!1951600 (= (flatMap!1666 z!1189 lambda!340339) (choose!46271 z!1189 lambda!340339))))

(declare-fun bs!1543658 () Bool)

(assert (= bs!1543658 d!1951600))

(declare-fun m!7052756 () Bool)

(assert (=> bs!1543658 m!7052756))

(assert (=> b!6225256 d!1951600))

(declare-fun b!6225841 () Bool)

(declare-fun e!3789543 () (InoxSet Context!11090))

(assert (=> b!6225841 (= e!3789543 ((as const (Array Context!11090 Bool)) false))))

(declare-fun e!3789542 () (InoxSet Context!11090))

(declare-fun call!522905 () (InoxSet Context!11090))

(declare-fun b!6225842 () Bool)

(assert (=> b!6225842 (= e!3789542 ((_ map or) call!522905 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))) (h!71108 s!2326))))))

(declare-fun d!1951602 () Bool)

(declare-fun c!1125191 () Bool)

(declare-fun e!3789544 () Bool)

(assert (=> d!1951602 (= c!1125191 e!3789544)))

(declare-fun res!2572929 () Bool)

(assert (=> d!1951602 (=> (not res!2572929) (not e!3789544))))

(assert (=> d!1951602 (= res!2572929 ((_ is Cons!64658) (exprs!6045 (h!71107 zl!343))))))

(assert (=> d!1951602 (= (derivationStepZipperUp!1335 (h!71107 zl!343) (h!71108 s!2326)) e!3789542)))

(declare-fun b!6225843 () Bool)

(assert (=> b!6225843 (= e!3789542 e!3789543)))

(declare-fun c!1125192 () Bool)

(assert (=> b!6225843 (= c!1125192 ((_ is Cons!64658) (exprs!6045 (h!71107 zl!343))))))

(declare-fun b!6225844 () Bool)

(assert (=> b!6225844 (= e!3789543 call!522905)))

(declare-fun bm!522900 () Bool)

(assert (=> bm!522900 (= call!522905 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (h!71107 zl!343))) (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))) (h!71108 s!2326)))))

(declare-fun b!6225845 () Bool)

(assert (=> b!6225845 (= e!3789544 (nullable!6154 (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(assert (= (and d!1951602 res!2572929) b!6225845))

(assert (= (and d!1951602 c!1125191) b!6225842))

(assert (= (and d!1951602 (not c!1125191)) b!6225843))

(assert (= (and b!6225843 c!1125192) b!6225844))

(assert (= (and b!6225843 (not c!1125192)) b!6225841))

(assert (= (or b!6225842 b!6225844) bm!522900))

(declare-fun m!7052758 () Bool)

(assert (=> b!6225842 m!7052758))

(declare-fun m!7052760 () Bool)

(assert (=> bm!522900 m!7052760))

(assert (=> b!6225845 m!7052362))

(assert (=> b!6225256 d!1951602))

(declare-fun call!522920 () List!64782)

(declare-fun c!1125203 () Bool)

(declare-fun bm!522913 () Bool)

(declare-fun c!1125207 () Bool)

(declare-fun $colon$colon!2030 (List!64782 Regex!16161) List!64782)

(assert (=> bm!522913 (= call!522920 ($colon$colon!2030 (exprs!6045 lt!2345516) (ite (or c!1125203 c!1125207) (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (h!71106 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun bm!522914 () Bool)

(declare-fun call!522918 () (InoxSet Context!11090))

(declare-fun c!1125205 () Bool)

(assert (=> bm!522914 (= call!522918 (derivationStepZipperDown!1409 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))) (ite c!1125205 lt!2345516 (Context!11091 call!522920)) (h!71108 s!2326)))))

(declare-fun b!6225868 () Bool)

(declare-fun e!3789562 () (InoxSet Context!11090))

(assert (=> b!6225868 (= e!3789562 (store ((as const (Array Context!11090 Bool)) false) lt!2345516 true))))

(declare-fun call!522922 () List!64782)

(declare-fun call!522919 () (InoxSet Context!11090))

(declare-fun bm!522915 () Bool)

(assert (=> bm!522915 (= call!522919 (derivationStepZipperDown!1409 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343))))))) (ite (or c!1125205 c!1125203) lt!2345516 (Context!11091 call!522922)) (h!71108 s!2326)))))

(declare-fun b!6225869 () Bool)

(declare-fun c!1125206 () Bool)

(assert (=> b!6225869 (= c!1125206 ((_ is Star!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun e!3789557 () (InoxSet Context!11090))

(declare-fun e!3789558 () (InoxSet Context!11090))

(assert (=> b!6225869 (= e!3789557 e!3789558)))

(declare-fun b!6225870 () Bool)

(declare-fun call!522921 () (InoxSet Context!11090))

(assert (=> b!6225870 (= e!3789558 call!522921)))

(declare-fun d!1951604 () Bool)

(declare-fun c!1125204 () Bool)

(assert (=> d!1951604 (= c!1125204 (and ((_ is ElementMatch!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))) (= (c!1125039 (h!71106 (exprs!6045 (h!71107 zl!343)))) (h!71108 s!2326))))))

(assert (=> d!1951604 (= (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (h!71107 zl!343))) lt!2345516 (h!71108 s!2326)) e!3789562)))

(declare-fun bm!522916 () Bool)

(assert (=> bm!522916 (= call!522922 call!522920)))

(declare-fun b!6225871 () Bool)

(declare-fun e!3789560 () Bool)

(assert (=> b!6225871 (= c!1125203 e!3789560)))

(declare-fun res!2572932 () Bool)

(assert (=> b!6225871 (=> (not res!2572932) (not e!3789560))))

(assert (=> b!6225871 (= res!2572932 ((_ is Concat!25006) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun e!3789559 () (InoxSet Context!11090))

(declare-fun e!3789561 () (InoxSet Context!11090))

(assert (=> b!6225871 (= e!3789559 e!3789561)))

(declare-fun b!6225872 () Bool)

(assert (=> b!6225872 (= e!3789558 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6225873 () Bool)

(assert (=> b!6225873 (= e!3789559 ((_ map or) call!522919 call!522918))))

(declare-fun b!6225874 () Bool)

(assert (=> b!6225874 (= e!3789561 e!3789557)))

(assert (=> b!6225874 (= c!1125207 ((_ is Concat!25006) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun bm!522917 () Bool)

(declare-fun call!522923 () (InoxSet Context!11090))

(assert (=> bm!522917 (= call!522921 call!522923)))

(declare-fun bm!522918 () Bool)

(assert (=> bm!522918 (= call!522923 call!522919)))

(declare-fun b!6225875 () Bool)

(assert (=> b!6225875 (= e!3789560 (nullable!6154 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun b!6225876 () Bool)

(assert (=> b!6225876 (= e!3789562 e!3789559)))

(assert (=> b!6225876 (= c!1125205 ((_ is Union!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6225877 () Bool)

(assert (=> b!6225877 (= e!3789557 call!522921)))

(declare-fun b!6225878 () Bool)

(assert (=> b!6225878 (= e!3789561 ((_ map or) call!522918 call!522923))))

(assert (= (and d!1951604 c!1125204) b!6225868))

(assert (= (and d!1951604 (not c!1125204)) b!6225876))

(assert (= (and b!6225876 c!1125205) b!6225873))

(assert (= (and b!6225876 (not c!1125205)) b!6225871))

(assert (= (and b!6225871 res!2572932) b!6225875))

(assert (= (and b!6225871 c!1125203) b!6225878))

(assert (= (and b!6225871 (not c!1125203)) b!6225874))

(assert (= (and b!6225874 c!1125207) b!6225877))

(assert (= (and b!6225874 (not c!1125207)) b!6225869))

(assert (= (and b!6225869 c!1125206) b!6225870))

(assert (= (and b!6225869 (not c!1125206)) b!6225872))

(assert (= (or b!6225877 b!6225870) bm!522916))

(assert (= (or b!6225877 b!6225870) bm!522917))

(assert (= (or b!6225878 bm!522916) bm!522913))

(assert (= (or b!6225878 bm!522917) bm!522918))

(assert (= (or b!6225873 b!6225878) bm!522914))

(assert (= (or b!6225873 bm!522918) bm!522915))

(declare-fun m!7052762 () Bool)

(assert (=> bm!522915 m!7052762))

(declare-fun m!7052764 () Bool)

(assert (=> b!6225875 m!7052764))

(declare-fun m!7052766 () Bool)

(assert (=> bm!522913 m!7052766))

(declare-fun m!7052768 () Bool)

(assert (=> bm!522914 m!7052768))

(declare-fun m!7052770 () Bool)

(assert (=> b!6225868 m!7052770))

(assert (=> b!6225256 d!1951604))

(declare-fun b!6225879 () Bool)

(declare-fun e!3789564 () (InoxSet Context!11090))

(assert (=> b!6225879 (= e!3789564 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6225880 () Bool)

(declare-fun e!3789563 () (InoxSet Context!11090))

(declare-fun call!522924 () (InoxSet Context!11090))

(assert (=> b!6225880 (= e!3789563 ((_ map or) call!522924 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 lt!2345516))) (h!71108 s!2326))))))

(declare-fun d!1951606 () Bool)

(declare-fun c!1125208 () Bool)

(declare-fun e!3789565 () Bool)

(assert (=> d!1951606 (= c!1125208 e!3789565)))

(declare-fun res!2572933 () Bool)

(assert (=> d!1951606 (=> (not res!2572933) (not e!3789565))))

(assert (=> d!1951606 (= res!2572933 ((_ is Cons!64658) (exprs!6045 lt!2345516)))))

(assert (=> d!1951606 (= (derivationStepZipperUp!1335 lt!2345516 (h!71108 s!2326)) e!3789563)))

(declare-fun b!6225881 () Bool)

(assert (=> b!6225881 (= e!3789563 e!3789564)))

(declare-fun c!1125209 () Bool)

(assert (=> b!6225881 (= c!1125209 ((_ is Cons!64658) (exprs!6045 lt!2345516)))))

(declare-fun b!6225882 () Bool)

(assert (=> b!6225882 (= e!3789564 call!522924)))

(declare-fun bm!522919 () Bool)

(assert (=> bm!522919 (= call!522924 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 lt!2345516)) (Context!11091 (t!378318 (exprs!6045 lt!2345516))) (h!71108 s!2326)))))

(declare-fun b!6225883 () Bool)

(assert (=> b!6225883 (= e!3789565 (nullable!6154 (h!71106 (exprs!6045 lt!2345516))))))

(assert (= (and d!1951606 res!2572933) b!6225883))

(assert (= (and d!1951606 c!1125208) b!6225880))

(assert (= (and d!1951606 (not c!1125208)) b!6225881))

(assert (= (and b!6225881 c!1125209) b!6225882))

(assert (= (and b!6225881 (not c!1125209)) b!6225879))

(assert (= (or b!6225880 b!6225882) bm!522919))

(declare-fun m!7052772 () Bool)

(assert (=> b!6225880 m!7052772))

(declare-fun m!7052774 () Bool)

(assert (=> bm!522919 m!7052774))

(declare-fun m!7052776 () Bool)

(assert (=> b!6225883 m!7052776))

(assert (=> b!6225256 d!1951606))

(declare-fun d!1951608 () Bool)

(declare-fun dynLambda!25515 (Int Context!11090) (InoxSet Context!11090))

(assert (=> d!1951608 (= (flatMap!1666 z!1189 lambda!340339) (dynLambda!25515 lambda!340339 (h!71107 zl!343)))))

(declare-fun lt!2345610 () Unit!157975)

(declare-fun choose!46272 ((InoxSet Context!11090) Context!11090 Int) Unit!157975)

(assert (=> d!1951608 (= lt!2345610 (choose!46272 z!1189 (h!71107 zl!343) lambda!340339))))

(assert (=> d!1951608 (= z!1189 (store ((as const (Array Context!11090 Bool)) false) (h!71107 zl!343) true))))

(assert (=> d!1951608 (= (lemmaFlatMapOnSingletonSet!1192 z!1189 (h!71107 zl!343) lambda!340339) lt!2345610)))

(declare-fun b_lambda!236709 () Bool)

(assert (=> (not b_lambda!236709) (not d!1951608)))

(declare-fun bs!1543659 () Bool)

(assert (= bs!1543659 d!1951608))

(assert (=> bs!1543659 m!7052364))

(declare-fun m!7052778 () Bool)

(assert (=> bs!1543659 m!7052778))

(declare-fun m!7052780 () Bool)

(assert (=> bs!1543659 m!7052780))

(declare-fun m!7052782 () Bool)

(assert (=> bs!1543659 m!7052782))

(assert (=> b!6225256 d!1951608))

(declare-fun d!1951610 () Bool)

(assert (=> d!1951610 (= (flatMap!1666 lt!2345537 lambda!340339) (dynLambda!25515 lambda!340339 lt!2345515))))

(declare-fun lt!2345611 () Unit!157975)

(assert (=> d!1951610 (= lt!2345611 (choose!46272 lt!2345537 lt!2345515 lambda!340339))))

(assert (=> d!1951610 (= lt!2345537 (store ((as const (Array Context!11090 Bool)) false) lt!2345515 true))))

(assert (=> d!1951610 (= (lemmaFlatMapOnSingletonSet!1192 lt!2345537 lt!2345515 lambda!340339) lt!2345611)))

(declare-fun b_lambda!236711 () Bool)

(assert (=> (not b_lambda!236711) (not d!1951610)))

(declare-fun bs!1543660 () Bool)

(assert (= bs!1543660 d!1951610))

(assert (=> bs!1543660 m!7052400))

(declare-fun m!7052784 () Bool)

(assert (=> bs!1543660 m!7052784))

(declare-fun m!7052786 () Bool)

(assert (=> bs!1543660 m!7052786))

(assert (=> bs!1543660 m!7052402))

(assert (=> b!6225269 d!1951610))

(declare-fun d!1951612 () Bool)

(assert (=> d!1951612 (= (flatMap!1666 lt!2345537 lambda!340339) (choose!46271 lt!2345537 lambda!340339))))

(declare-fun bs!1543661 () Bool)

(assert (= bs!1543661 d!1951612))

(declare-fun m!7052788 () Bool)

(assert (=> bs!1543661 m!7052788))

(assert (=> b!6225269 d!1951612))

(declare-fun b!6225884 () Bool)

(declare-fun e!3789567 () (InoxSet Context!11090))

(assert (=> b!6225884 (= e!3789567 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6225885 () Bool)

(declare-fun call!522925 () (InoxSet Context!11090))

(declare-fun e!3789566 () (InoxSet Context!11090))

(assert (=> b!6225885 (= e!3789566 ((_ map or) call!522925 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 lt!2345517))) (h!71108 s!2326))))))

(declare-fun d!1951614 () Bool)

(declare-fun c!1125210 () Bool)

(declare-fun e!3789568 () Bool)

(assert (=> d!1951614 (= c!1125210 e!3789568)))

(declare-fun res!2572934 () Bool)

(assert (=> d!1951614 (=> (not res!2572934) (not e!3789568))))

(assert (=> d!1951614 (= res!2572934 ((_ is Cons!64658) (exprs!6045 lt!2345517)))))

(assert (=> d!1951614 (= (derivationStepZipperUp!1335 lt!2345517 (h!71108 s!2326)) e!3789566)))

(declare-fun b!6225886 () Bool)

(assert (=> b!6225886 (= e!3789566 e!3789567)))

(declare-fun c!1125211 () Bool)

(assert (=> b!6225886 (= c!1125211 ((_ is Cons!64658) (exprs!6045 lt!2345517)))))

(declare-fun b!6225887 () Bool)

(assert (=> b!6225887 (= e!3789567 call!522925)))

(declare-fun bm!522920 () Bool)

(assert (=> bm!522920 (= call!522925 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 lt!2345517)) (Context!11091 (t!378318 (exprs!6045 lt!2345517))) (h!71108 s!2326)))))

(declare-fun b!6225888 () Bool)

(assert (=> b!6225888 (= e!3789568 (nullable!6154 (h!71106 (exprs!6045 lt!2345517))))))

(assert (= (and d!1951614 res!2572934) b!6225888))

(assert (= (and d!1951614 c!1125210) b!6225885))

(assert (= (and d!1951614 (not c!1125210)) b!6225886))

(assert (= (and b!6225886 c!1125211) b!6225887))

(assert (= (and b!6225886 (not c!1125211)) b!6225884))

(assert (= (or b!6225885 b!6225887) bm!522920))

(declare-fun m!7052790 () Bool)

(assert (=> b!6225885 m!7052790))

(declare-fun m!7052792 () Bool)

(assert (=> bm!522920 m!7052792))

(declare-fun m!7052794 () Bool)

(assert (=> b!6225888 m!7052794))

(assert (=> b!6225269 d!1951614))

(declare-fun bs!1543662 () Bool)

(declare-fun d!1951616 () Bool)

(assert (= bs!1543662 (and d!1951616 b!6225256)))

(declare-fun lambda!340389 () Int)

(assert (=> bs!1543662 (= lambda!340389 lambda!340339)))

(assert (=> d!1951616 true))

(assert (=> d!1951616 (= (derivationStepZipper!2127 lt!2345537 (h!71108 s!2326)) (flatMap!1666 lt!2345537 lambda!340389))))

(declare-fun bs!1543663 () Bool)

(assert (= bs!1543663 d!1951616))

(declare-fun m!7052796 () Bool)

(assert (=> bs!1543663 m!7052796))

(assert (=> b!6225269 d!1951616))

(declare-fun b!6225891 () Bool)

(declare-fun e!3789570 () (InoxSet Context!11090))

(assert (=> b!6225891 (= e!3789570 ((as const (Array Context!11090 Bool)) false))))

(declare-fun call!522926 () (InoxSet Context!11090))

(declare-fun e!3789569 () (InoxSet Context!11090))

(declare-fun b!6225892 () Bool)

(assert (=> b!6225892 (= e!3789569 ((_ map or) call!522926 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 lt!2345515))) (h!71108 s!2326))))))

(declare-fun d!1951618 () Bool)

(declare-fun c!1125214 () Bool)

(declare-fun e!3789571 () Bool)

(assert (=> d!1951618 (= c!1125214 e!3789571)))

(declare-fun res!2572935 () Bool)

(assert (=> d!1951618 (=> (not res!2572935) (not e!3789571))))

(assert (=> d!1951618 (= res!2572935 ((_ is Cons!64658) (exprs!6045 lt!2345515)))))

(assert (=> d!1951618 (= (derivationStepZipperUp!1335 lt!2345515 (h!71108 s!2326)) e!3789569)))

(declare-fun b!6225893 () Bool)

(assert (=> b!6225893 (= e!3789569 e!3789570)))

(declare-fun c!1125215 () Bool)

(assert (=> b!6225893 (= c!1125215 ((_ is Cons!64658) (exprs!6045 lt!2345515)))))

(declare-fun b!6225894 () Bool)

(assert (=> b!6225894 (= e!3789570 call!522926)))

(declare-fun bm!522921 () Bool)

(assert (=> bm!522921 (= call!522926 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 lt!2345515)) (Context!11091 (t!378318 (exprs!6045 lt!2345515))) (h!71108 s!2326)))))

(declare-fun b!6225895 () Bool)

(assert (=> b!6225895 (= e!3789571 (nullable!6154 (h!71106 (exprs!6045 lt!2345515))))))

(assert (= (and d!1951618 res!2572935) b!6225895))

(assert (= (and d!1951618 c!1125214) b!6225892))

(assert (= (and d!1951618 (not c!1125214)) b!6225893))

(assert (= (and b!6225893 c!1125215) b!6225894))

(assert (= (and b!6225893 (not c!1125215)) b!6225891))

(assert (= (or b!6225892 b!6225894) bm!522921))

(declare-fun m!7052798 () Bool)

(assert (=> b!6225892 m!7052798))

(declare-fun m!7052800 () Bool)

(assert (=> bm!522921 m!7052800))

(declare-fun m!7052802 () Bool)

(assert (=> b!6225895 m!7052802))

(assert (=> b!6225269 d!1951618))

(declare-fun d!1951620 () Bool)

(assert (=> d!1951620 (= (isEmpty!36670 (t!378318 (exprs!6045 (h!71107 zl!343)))) ((_ is Nil!64658) (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(assert (=> b!6225270 d!1951620))

(declare-fun b!6225916 () Bool)

(declare-fun e!3789588 () Regex!16161)

(declare-fun e!3789584 () Regex!16161)

(assert (=> b!6225916 (= e!3789588 e!3789584)))

(declare-fun c!1125226 () Bool)

(assert (=> b!6225916 (= c!1125226 ((_ is Cons!64658) (unfocusZipperList!1582 zl!343)))))

(declare-fun b!6225917 () Bool)

(declare-fun e!3789586 () Bool)

(declare-fun lt!2345614 () Regex!16161)

(declare-fun isEmptyLang!1580 (Regex!16161) Bool)

(assert (=> b!6225917 (= e!3789586 (isEmptyLang!1580 lt!2345614))))

(declare-fun b!6225918 () Bool)

(declare-fun e!3789587 () Bool)

(declare-fun head!12831 (List!64782) Regex!16161)

(assert (=> b!6225918 (= e!3789587 (= lt!2345614 (head!12831 (unfocusZipperList!1582 zl!343))))))

(declare-fun b!6225919 () Bool)

(declare-fun e!3789585 () Bool)

(assert (=> b!6225919 (= e!3789585 (isEmpty!36670 (t!378318 (unfocusZipperList!1582 zl!343))))))

(declare-fun b!6225920 () Bool)

(declare-fun isUnion!1010 (Regex!16161) Bool)

(assert (=> b!6225920 (= e!3789587 (isUnion!1010 lt!2345614))))

(declare-fun b!6225921 () Bool)

(assert (=> b!6225921 (= e!3789586 e!3789587)))

(declare-fun c!1125225 () Bool)

(declare-fun tail!11916 (List!64782) List!64782)

(assert (=> b!6225921 (= c!1125225 (isEmpty!36670 (tail!11916 (unfocusZipperList!1582 zl!343))))))

(declare-fun b!6225922 () Bool)

(assert (=> b!6225922 (= e!3789588 (h!71106 (unfocusZipperList!1582 zl!343)))))

(declare-fun b!6225923 () Bool)

(assert (=> b!6225923 (= e!3789584 EmptyLang!16161)))

(declare-fun d!1951622 () Bool)

(declare-fun e!3789589 () Bool)

(assert (=> d!1951622 e!3789589))

(declare-fun res!2572941 () Bool)

(assert (=> d!1951622 (=> (not res!2572941) (not e!3789589))))

(assert (=> d!1951622 (= res!2572941 (validRegex!7897 lt!2345614))))

(assert (=> d!1951622 (= lt!2345614 e!3789588)))

(declare-fun c!1125227 () Bool)

(assert (=> d!1951622 (= c!1125227 e!3789585)))

(declare-fun res!2572940 () Bool)

(assert (=> d!1951622 (=> (not res!2572940) (not e!3789585))))

(assert (=> d!1951622 (= res!2572940 ((_ is Cons!64658) (unfocusZipperList!1582 zl!343)))))

(declare-fun lambda!340392 () Int)

(declare-fun forall!15275 (List!64782 Int) Bool)

(assert (=> d!1951622 (forall!15275 (unfocusZipperList!1582 zl!343) lambda!340392)))

(assert (=> d!1951622 (= (generalisedUnion!2005 (unfocusZipperList!1582 zl!343)) lt!2345614)))

(declare-fun b!6225924 () Bool)

(assert (=> b!6225924 (= e!3789589 e!3789586)))

(declare-fun c!1125224 () Bool)

(assert (=> b!6225924 (= c!1125224 (isEmpty!36670 (unfocusZipperList!1582 zl!343)))))

(declare-fun b!6225925 () Bool)

(assert (=> b!6225925 (= e!3789584 (Union!16161 (h!71106 (unfocusZipperList!1582 zl!343)) (generalisedUnion!2005 (t!378318 (unfocusZipperList!1582 zl!343)))))))

(assert (= (and d!1951622 res!2572940) b!6225919))

(assert (= (and d!1951622 c!1125227) b!6225922))

(assert (= (and d!1951622 (not c!1125227)) b!6225916))

(assert (= (and b!6225916 c!1125226) b!6225925))

(assert (= (and b!6225916 (not c!1125226)) b!6225923))

(assert (= (and d!1951622 res!2572941) b!6225924))

(assert (= (and b!6225924 c!1125224) b!6225917))

(assert (= (and b!6225924 (not c!1125224)) b!6225921))

(assert (= (and b!6225921 c!1125225) b!6225918))

(assert (= (and b!6225921 (not c!1125225)) b!6225920))

(declare-fun m!7052804 () Bool)

(assert (=> b!6225925 m!7052804))

(declare-fun m!7052806 () Bool)

(assert (=> b!6225917 m!7052806))

(declare-fun m!7052808 () Bool)

(assert (=> d!1951622 m!7052808))

(assert (=> d!1951622 m!7052406))

(declare-fun m!7052810 () Bool)

(assert (=> d!1951622 m!7052810))

(declare-fun m!7052812 () Bool)

(assert (=> b!6225919 m!7052812))

(declare-fun m!7052814 () Bool)

(assert (=> b!6225920 m!7052814))

(assert (=> b!6225924 m!7052406))

(declare-fun m!7052816 () Bool)

(assert (=> b!6225924 m!7052816))

(assert (=> b!6225918 m!7052406))

(declare-fun m!7052818 () Bool)

(assert (=> b!6225918 m!7052818))

(assert (=> b!6225921 m!7052406))

(declare-fun m!7052820 () Bool)

(assert (=> b!6225921 m!7052820))

(assert (=> b!6225921 m!7052820))

(declare-fun m!7052822 () Bool)

(assert (=> b!6225921 m!7052822))

(assert (=> b!6225259 d!1951622))

(declare-fun bs!1543664 () Bool)

(declare-fun d!1951624 () Bool)

(assert (= bs!1543664 (and d!1951624 d!1951622)))

(declare-fun lambda!340395 () Int)

(assert (=> bs!1543664 (= lambda!340395 lambda!340392)))

(declare-fun lt!2345617 () List!64782)

(assert (=> d!1951624 (forall!15275 lt!2345617 lambda!340395)))

(declare-fun e!3789592 () List!64782)

(assert (=> d!1951624 (= lt!2345617 e!3789592)))

(declare-fun c!1125230 () Bool)

(assert (=> d!1951624 (= c!1125230 ((_ is Cons!64659) zl!343))))

(assert (=> d!1951624 (= (unfocusZipperList!1582 zl!343) lt!2345617)))

(declare-fun b!6225930 () Bool)

(assert (=> b!6225930 (= e!3789592 (Cons!64658 (generalisedConcat!1758 (exprs!6045 (h!71107 zl!343))) (unfocusZipperList!1582 (t!378319 zl!343))))))

(declare-fun b!6225931 () Bool)

(assert (=> b!6225931 (= e!3789592 Nil!64658)))

(assert (= (and d!1951624 c!1125230) b!6225930))

(assert (= (and d!1951624 (not c!1125230)) b!6225931))

(declare-fun m!7052824 () Bool)

(assert (=> d!1951624 m!7052824))

(assert (=> b!6225930 m!7052392))

(declare-fun m!7052826 () Bool)

(assert (=> b!6225930 m!7052826))

(assert (=> b!6225259 d!1951624))

(declare-fun bs!1543665 () Bool)

(declare-fun d!1951626 () Bool)

(assert (= bs!1543665 (and d!1951626 d!1951622)))

(declare-fun lambda!340398 () Int)

(assert (=> bs!1543665 (= lambda!340398 lambda!340392)))

(declare-fun bs!1543666 () Bool)

(assert (= bs!1543666 (and d!1951626 d!1951624)))

(assert (=> bs!1543666 (= lambda!340398 lambda!340395)))

(assert (=> d!1951626 (= (inv!83649 setElem!42302) (forall!15275 (exprs!6045 setElem!42302) lambda!340398))))

(declare-fun bs!1543667 () Bool)

(assert (= bs!1543667 d!1951626))

(declare-fun m!7052828 () Bool)

(assert (=> bs!1543667 m!7052828))

(assert (=> setNonEmpty!42302 d!1951626))

(declare-fun bs!1543668 () Bool)

(declare-fun d!1951628 () Bool)

(assert (= bs!1543668 (and d!1951628 d!1951622)))

(declare-fun lambda!340399 () Int)

(assert (=> bs!1543668 (= lambda!340399 lambda!340392)))

(declare-fun bs!1543669 () Bool)

(assert (= bs!1543669 (and d!1951628 d!1951624)))

(assert (=> bs!1543669 (= lambda!340399 lambda!340395)))

(declare-fun bs!1543670 () Bool)

(assert (= bs!1543670 (and d!1951628 d!1951626)))

(assert (=> bs!1543670 (= lambda!340399 lambda!340398)))

(assert (=> d!1951628 (= (inv!83649 (h!71107 zl!343)) (forall!15275 (exprs!6045 (h!71107 zl!343)) lambda!340399))))

(declare-fun bs!1543671 () Bool)

(assert (= bs!1543671 d!1951628))

(declare-fun m!7052830 () Bool)

(assert (=> bs!1543671 m!7052830))

(assert (=> b!6225258 d!1951628))

(declare-fun d!1951630 () Bool)

(assert (=> d!1951630 (= (nullable!6154 (regOne!32834 (regOne!32834 r!7292))) (nullableFct!2110 (regOne!32834 (regOne!32834 r!7292))))))

(declare-fun bs!1543672 () Bool)

(assert (= bs!1543672 d!1951630))

(declare-fun m!7052832 () Bool)

(assert (=> bs!1543672 m!7052832))

(assert (=> b!6225249 d!1951630))

(declare-fun bs!1543673 () Bool)

(declare-fun d!1951632 () Bool)

(assert (= bs!1543673 (and d!1951632 d!1951622)))

(declare-fun lambda!340402 () Int)

(assert (=> bs!1543673 (= lambda!340402 lambda!340392)))

(declare-fun bs!1543674 () Bool)

(assert (= bs!1543674 (and d!1951632 d!1951624)))

(assert (=> bs!1543674 (= lambda!340402 lambda!340395)))

(declare-fun bs!1543675 () Bool)

(assert (= bs!1543675 (and d!1951632 d!1951626)))

(assert (=> bs!1543675 (= lambda!340402 lambda!340398)))

(declare-fun bs!1543676 () Bool)

(assert (= bs!1543676 (and d!1951632 d!1951628)))

(assert (=> bs!1543676 (= lambda!340402 lambda!340399)))

(declare-fun b!6225952 () Bool)

(declare-fun e!3789607 () Bool)

(declare-fun lt!2345620 () Regex!16161)

(assert (=> b!6225952 (= e!3789607 (= lt!2345620 (head!12831 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6225953 () Bool)

(declare-fun isConcat!1094 (Regex!16161) Bool)

(assert (=> b!6225953 (= e!3789607 (isConcat!1094 lt!2345620))))

(declare-fun b!6225954 () Bool)

(declare-fun e!3789609 () Bool)

(assert (=> b!6225954 (= e!3789609 (isEmpty!36670 (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun e!3789610 () Bool)

(assert (=> d!1951632 e!3789610))

(declare-fun res!2572946 () Bool)

(assert (=> d!1951632 (=> (not res!2572946) (not e!3789610))))

(assert (=> d!1951632 (= res!2572946 (validRegex!7897 lt!2345620))))

(declare-fun e!3789608 () Regex!16161)

(assert (=> d!1951632 (= lt!2345620 e!3789608)))

(declare-fun c!1125240 () Bool)

(assert (=> d!1951632 (= c!1125240 e!3789609)))

(declare-fun res!2572947 () Bool)

(assert (=> d!1951632 (=> (not res!2572947) (not e!3789609))))

(assert (=> d!1951632 (= res!2572947 ((_ is Cons!64658) (exprs!6045 (h!71107 zl!343))))))

(assert (=> d!1951632 (forall!15275 (exprs!6045 (h!71107 zl!343)) lambda!340402)))

(assert (=> d!1951632 (= (generalisedConcat!1758 (exprs!6045 (h!71107 zl!343))) lt!2345620)))

(declare-fun b!6225955 () Bool)

(declare-fun e!3789605 () Regex!16161)

(assert (=> b!6225955 (= e!3789605 EmptyExpr!16161)))

(declare-fun b!6225956 () Bool)

(assert (=> b!6225956 (= e!3789608 e!3789605)))

(declare-fun c!1125241 () Bool)

(assert (=> b!6225956 (= c!1125241 ((_ is Cons!64658) (exprs!6045 (h!71107 zl!343))))))

(declare-fun b!6225957 () Bool)

(assert (=> b!6225957 (= e!3789605 (Concat!25006 (h!71106 (exprs!6045 (h!71107 zl!343))) (generalisedConcat!1758 (t!378318 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun b!6225958 () Bool)

(declare-fun e!3789606 () Bool)

(assert (=> b!6225958 (= e!3789610 e!3789606)))

(declare-fun c!1125239 () Bool)

(assert (=> b!6225958 (= c!1125239 (isEmpty!36670 (exprs!6045 (h!71107 zl!343))))))

(declare-fun b!6225959 () Bool)

(assert (=> b!6225959 (= e!3789606 e!3789607)))

(declare-fun c!1125242 () Bool)

(assert (=> b!6225959 (= c!1125242 (isEmpty!36670 (tail!11916 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6225960 () Bool)

(assert (=> b!6225960 (= e!3789608 (h!71106 (exprs!6045 (h!71107 zl!343))))))

(declare-fun b!6225961 () Bool)

(declare-fun isEmptyExpr!1571 (Regex!16161) Bool)

(assert (=> b!6225961 (= e!3789606 (isEmptyExpr!1571 lt!2345620))))

(assert (= (and d!1951632 res!2572947) b!6225954))

(assert (= (and d!1951632 c!1125240) b!6225960))

(assert (= (and d!1951632 (not c!1125240)) b!6225956))

(assert (= (and b!6225956 c!1125241) b!6225957))

(assert (= (and b!6225956 (not c!1125241)) b!6225955))

(assert (= (and d!1951632 res!2572946) b!6225958))

(assert (= (and b!6225958 c!1125239) b!6225961))

(assert (= (and b!6225958 (not c!1125239)) b!6225959))

(assert (= (and b!6225959 c!1125242) b!6225952))

(assert (= (and b!6225959 (not c!1125242)) b!6225953))

(declare-fun m!7052834 () Bool)

(assert (=> b!6225959 m!7052834))

(assert (=> b!6225959 m!7052834))

(declare-fun m!7052836 () Bool)

(assert (=> b!6225959 m!7052836))

(declare-fun m!7052838 () Bool)

(assert (=> b!6225961 m!7052838))

(declare-fun m!7052840 () Bool)

(assert (=> b!6225958 m!7052840))

(declare-fun m!7052842 () Bool)

(assert (=> b!6225957 m!7052842))

(declare-fun m!7052844 () Bool)

(assert (=> b!6225953 m!7052844))

(assert (=> b!6225954 m!7052332))

(declare-fun m!7052846 () Bool)

(assert (=> d!1951632 m!7052846))

(declare-fun m!7052848 () Bool)

(assert (=> d!1951632 m!7052848))

(declare-fun m!7052850 () Bool)

(assert (=> b!6225952 m!7052850))

(assert (=> b!6225261 d!1951632))

(declare-fun bs!1543677 () Bool)

(declare-fun d!1951634 () Bool)

(assert (= bs!1543677 (and d!1951634 d!1951622)))

(declare-fun lambda!340403 () Int)

(assert (=> bs!1543677 (= lambda!340403 lambda!340392)))

(declare-fun bs!1543678 () Bool)

(assert (= bs!1543678 (and d!1951634 d!1951628)))

(assert (=> bs!1543678 (= lambda!340403 lambda!340399)))

(declare-fun bs!1543679 () Bool)

(assert (= bs!1543679 (and d!1951634 d!1951626)))

(assert (=> bs!1543679 (= lambda!340403 lambda!340398)))

(declare-fun bs!1543680 () Bool)

(assert (= bs!1543680 (and d!1951634 d!1951632)))

(assert (=> bs!1543680 (= lambda!340403 lambda!340402)))

(declare-fun bs!1543681 () Bool)

(assert (= bs!1543681 (and d!1951634 d!1951624)))

(assert (=> bs!1543681 (= lambda!340403 lambda!340395)))

(assert (=> d!1951634 (= (inv!83649 lt!2345517) (forall!15275 (exprs!6045 lt!2345517) lambda!340403))))

(declare-fun bs!1543682 () Bool)

(assert (= bs!1543682 d!1951634))

(declare-fun m!7052852 () Bool)

(assert (=> bs!1543682 m!7052852))

(assert (=> b!6225262 d!1951634))

(declare-fun d!1951636 () Bool)

(assert (=> d!1951636 (= (flatMap!1666 lt!2345520 lambda!340339) (choose!46271 lt!2345520 lambda!340339))))

(declare-fun bs!1543683 () Bool)

(assert (= bs!1543683 d!1951636))

(declare-fun m!7052854 () Bool)

(assert (=> bs!1543683 m!7052854))

(assert (=> b!6225262 d!1951636))

(assert (=> b!6225262 d!1951614))

(declare-fun d!1951638 () Bool)

(assert (=> d!1951638 (= (flatMap!1666 lt!2345520 lambda!340339) (dynLambda!25515 lambda!340339 lt!2345517))))

(declare-fun lt!2345621 () Unit!157975)

(assert (=> d!1951638 (= lt!2345621 (choose!46272 lt!2345520 lt!2345517 lambda!340339))))

(assert (=> d!1951638 (= lt!2345520 (store ((as const (Array Context!11090 Bool)) false) lt!2345517 true))))

(assert (=> d!1951638 (= (lemmaFlatMapOnSingletonSet!1192 lt!2345520 lt!2345517 lambda!340339) lt!2345621)))

(declare-fun b_lambda!236713 () Bool)

(assert (=> (not b_lambda!236713) (not d!1951638)))

(declare-fun bs!1543684 () Bool)

(assert (= bs!1543684 d!1951638))

(assert (=> bs!1543684 m!7052322))

(declare-fun m!7052856 () Bool)

(assert (=> bs!1543684 m!7052856))

(declare-fun m!7052858 () Bool)

(assert (=> bs!1543684 m!7052858))

(assert (=> bs!1543684 m!7052396))

(assert (=> b!6225262 d!1951638))

(declare-fun bm!522922 () Bool)

(declare-fun c!1125247 () Bool)

(declare-fun call!522929 () List!64782)

(declare-fun c!1125243 () Bool)

(assert (=> bm!522922 (= call!522929 ($colon$colon!2030 (exprs!6045 lt!2345516) (ite (or c!1125243 c!1125247) (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (regTwo!32834 (regOne!32834 r!7292)))))))

(declare-fun c!1125245 () Bool)

(declare-fun call!522927 () (InoxSet Context!11090))

(declare-fun bm!522923 () Bool)

(assert (=> bm!522923 (= call!522927 (derivationStepZipperDown!1409 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))) (ite c!1125245 lt!2345516 (Context!11091 call!522929)) (h!71108 s!2326)))))

(declare-fun b!6225962 () Bool)

(declare-fun e!3789616 () (InoxSet Context!11090))

(assert (=> b!6225962 (= e!3789616 (store ((as const (Array Context!11090 Bool)) false) lt!2345516 true))))

(declare-fun call!522928 () (InoxSet Context!11090))

(declare-fun call!522931 () List!64782)

(declare-fun bm!522924 () Bool)

(assert (=> bm!522924 (= call!522928 (derivationStepZipperDown!1409 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292)))))) (ite (or c!1125245 c!1125243) lt!2345516 (Context!11091 call!522931)) (h!71108 s!2326)))))

(declare-fun b!6225963 () Bool)

(declare-fun c!1125246 () Bool)

(assert (=> b!6225963 (= c!1125246 ((_ is Star!16161) (regTwo!32834 (regOne!32834 r!7292))))))

(declare-fun e!3789611 () (InoxSet Context!11090))

(declare-fun e!3789612 () (InoxSet Context!11090))

(assert (=> b!6225963 (= e!3789611 e!3789612)))

(declare-fun b!6225964 () Bool)

(declare-fun call!522930 () (InoxSet Context!11090))

(assert (=> b!6225964 (= e!3789612 call!522930)))

(declare-fun d!1951640 () Bool)

(declare-fun c!1125244 () Bool)

(assert (=> d!1951640 (= c!1125244 (and ((_ is ElementMatch!16161) (regTwo!32834 (regOne!32834 r!7292))) (= (c!1125039 (regTwo!32834 (regOne!32834 r!7292))) (h!71108 s!2326))))))

(assert (=> d!1951640 (= (derivationStepZipperDown!1409 (regTwo!32834 (regOne!32834 r!7292)) lt!2345516 (h!71108 s!2326)) e!3789616)))

(declare-fun bm!522925 () Bool)

(assert (=> bm!522925 (= call!522931 call!522929)))

(declare-fun b!6225965 () Bool)

(declare-fun e!3789614 () Bool)

(assert (=> b!6225965 (= c!1125243 e!3789614)))

(declare-fun res!2572948 () Bool)

(assert (=> b!6225965 (=> (not res!2572948) (not e!3789614))))

(assert (=> b!6225965 (= res!2572948 ((_ is Concat!25006) (regTwo!32834 (regOne!32834 r!7292))))))

(declare-fun e!3789613 () (InoxSet Context!11090))

(declare-fun e!3789615 () (InoxSet Context!11090))

(assert (=> b!6225965 (= e!3789613 e!3789615)))

(declare-fun b!6225966 () Bool)

(assert (=> b!6225966 (= e!3789612 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6225967 () Bool)

(assert (=> b!6225967 (= e!3789613 ((_ map or) call!522928 call!522927))))

(declare-fun b!6225968 () Bool)

(assert (=> b!6225968 (= e!3789615 e!3789611)))

(assert (=> b!6225968 (= c!1125247 ((_ is Concat!25006) (regTwo!32834 (regOne!32834 r!7292))))))

(declare-fun bm!522926 () Bool)

(declare-fun call!522932 () (InoxSet Context!11090))

(assert (=> bm!522926 (= call!522930 call!522932)))

(declare-fun bm!522927 () Bool)

(assert (=> bm!522927 (= call!522932 call!522928)))

(declare-fun b!6225969 () Bool)

(assert (=> b!6225969 (= e!3789614 (nullable!6154 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))))))

(declare-fun b!6225970 () Bool)

(assert (=> b!6225970 (= e!3789616 e!3789613)))

(assert (=> b!6225970 (= c!1125245 ((_ is Union!16161) (regTwo!32834 (regOne!32834 r!7292))))))

(declare-fun b!6225971 () Bool)

(assert (=> b!6225971 (= e!3789611 call!522930)))

(declare-fun b!6225972 () Bool)

(assert (=> b!6225972 (= e!3789615 ((_ map or) call!522927 call!522932))))

(assert (= (and d!1951640 c!1125244) b!6225962))

(assert (= (and d!1951640 (not c!1125244)) b!6225970))

(assert (= (and b!6225970 c!1125245) b!6225967))

(assert (= (and b!6225970 (not c!1125245)) b!6225965))

(assert (= (and b!6225965 res!2572948) b!6225969))

(assert (= (and b!6225965 c!1125243) b!6225972))

(assert (= (and b!6225965 (not c!1125243)) b!6225968))

(assert (= (and b!6225968 c!1125247) b!6225971))

(assert (= (and b!6225968 (not c!1125247)) b!6225963))

(assert (= (and b!6225963 c!1125246) b!6225964))

(assert (= (and b!6225963 (not c!1125246)) b!6225966))

(assert (= (or b!6225971 b!6225964) bm!522925))

(assert (= (or b!6225971 b!6225964) bm!522926))

(assert (= (or b!6225972 bm!522925) bm!522922))

(assert (= (or b!6225972 bm!522926) bm!522927))

(assert (= (or b!6225967 b!6225972) bm!522923))

(assert (= (or b!6225967 bm!522927) bm!522924))

(declare-fun m!7052860 () Bool)

(assert (=> bm!522924 m!7052860))

(declare-fun m!7052862 () Bool)

(assert (=> b!6225969 m!7052862))

(declare-fun m!7052864 () Bool)

(assert (=> bm!522922 m!7052864))

(declare-fun m!7052866 () Bool)

(assert (=> bm!522923 m!7052866))

(assert (=> b!6225962 m!7052770))

(assert (=> b!6225250 d!1951640))

(declare-fun call!522935 () List!64782)

(declare-fun bm!522928 () Bool)

(declare-fun c!1125252 () Bool)

(declare-fun c!1125248 () Bool)

(assert (=> bm!522928 (= call!522935 ($colon$colon!2030 (exprs!6045 lt!2345517) (ite (or c!1125248 c!1125252) (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 r!7292)))))))

(declare-fun bm!522929 () Bool)

(declare-fun c!1125250 () Bool)

(declare-fun call!522933 () (InoxSet Context!11090))

(assert (=> bm!522929 (= call!522933 (derivationStepZipperDown!1409 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))) (ite c!1125250 lt!2345517 (Context!11091 call!522935)) (h!71108 s!2326)))))

(declare-fun b!6225973 () Bool)

(declare-fun e!3789622 () (InoxSet Context!11090))

(assert (=> b!6225973 (= e!3789622 (store ((as const (Array Context!11090 Bool)) false) lt!2345517 true))))

(declare-fun call!522934 () (InoxSet Context!11090))

(declare-fun bm!522930 () Bool)

(declare-fun call!522937 () List!64782)

(assert (=> bm!522930 (= call!522934 (derivationStepZipperDown!1409 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292)))))) (ite (or c!1125250 c!1125248) lt!2345517 (Context!11091 call!522937)) (h!71108 s!2326)))))

(declare-fun b!6225974 () Bool)

(declare-fun c!1125251 () Bool)

(assert (=> b!6225974 (= c!1125251 ((_ is Star!16161) (regOne!32834 (regOne!32834 r!7292))))))

(declare-fun e!3789617 () (InoxSet Context!11090))

(declare-fun e!3789618 () (InoxSet Context!11090))

(assert (=> b!6225974 (= e!3789617 e!3789618)))

(declare-fun b!6225975 () Bool)

(declare-fun call!522936 () (InoxSet Context!11090))

(assert (=> b!6225975 (= e!3789618 call!522936)))

(declare-fun d!1951642 () Bool)

(declare-fun c!1125249 () Bool)

(assert (=> d!1951642 (= c!1125249 (and ((_ is ElementMatch!16161) (regOne!32834 (regOne!32834 r!7292))) (= (c!1125039 (regOne!32834 (regOne!32834 r!7292))) (h!71108 s!2326))))))

(assert (=> d!1951642 (= (derivationStepZipperDown!1409 (regOne!32834 (regOne!32834 r!7292)) lt!2345517 (h!71108 s!2326)) e!3789622)))

(declare-fun bm!522931 () Bool)

(assert (=> bm!522931 (= call!522937 call!522935)))

(declare-fun b!6225976 () Bool)

(declare-fun e!3789620 () Bool)

(assert (=> b!6225976 (= c!1125248 e!3789620)))

(declare-fun res!2572949 () Bool)

(assert (=> b!6225976 (=> (not res!2572949) (not e!3789620))))

(assert (=> b!6225976 (= res!2572949 ((_ is Concat!25006) (regOne!32834 (regOne!32834 r!7292))))))

(declare-fun e!3789619 () (InoxSet Context!11090))

(declare-fun e!3789621 () (InoxSet Context!11090))

(assert (=> b!6225976 (= e!3789619 e!3789621)))

(declare-fun b!6225977 () Bool)

(assert (=> b!6225977 (= e!3789618 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6225978 () Bool)

(assert (=> b!6225978 (= e!3789619 ((_ map or) call!522934 call!522933))))

(declare-fun b!6225979 () Bool)

(assert (=> b!6225979 (= e!3789621 e!3789617)))

(assert (=> b!6225979 (= c!1125252 ((_ is Concat!25006) (regOne!32834 (regOne!32834 r!7292))))))

(declare-fun bm!522932 () Bool)

(declare-fun call!522938 () (InoxSet Context!11090))

(assert (=> bm!522932 (= call!522936 call!522938)))

(declare-fun bm!522933 () Bool)

(assert (=> bm!522933 (= call!522938 call!522934)))

(declare-fun b!6225980 () Bool)

(assert (=> b!6225980 (= e!3789620 (nullable!6154 (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))))))

(declare-fun b!6225981 () Bool)

(assert (=> b!6225981 (= e!3789622 e!3789619)))

(assert (=> b!6225981 (= c!1125250 ((_ is Union!16161) (regOne!32834 (regOne!32834 r!7292))))))

(declare-fun b!6225982 () Bool)

(assert (=> b!6225982 (= e!3789617 call!522936)))

(declare-fun b!6225983 () Bool)

(assert (=> b!6225983 (= e!3789621 ((_ map or) call!522933 call!522938))))

(assert (= (and d!1951642 c!1125249) b!6225973))

(assert (= (and d!1951642 (not c!1125249)) b!6225981))

(assert (= (and b!6225981 c!1125250) b!6225978))

(assert (= (and b!6225981 (not c!1125250)) b!6225976))

(assert (= (and b!6225976 res!2572949) b!6225980))

(assert (= (and b!6225976 c!1125248) b!6225983))

(assert (= (and b!6225976 (not c!1125248)) b!6225979))

(assert (= (and b!6225979 c!1125252) b!6225982))

(assert (= (and b!6225979 (not c!1125252)) b!6225974))

(assert (= (and b!6225974 c!1125251) b!6225975))

(assert (= (and b!6225974 (not c!1125251)) b!6225977))

(assert (= (or b!6225982 b!6225975) bm!522931))

(assert (= (or b!6225982 b!6225975) bm!522932))

(assert (= (or b!6225983 bm!522931) bm!522928))

(assert (= (or b!6225983 bm!522932) bm!522933))

(assert (= (or b!6225978 b!6225983) bm!522929))

(assert (= (or b!6225978 bm!522933) bm!522930))

(declare-fun m!7052868 () Bool)

(assert (=> bm!522930 m!7052868))

(declare-fun m!7052870 () Bool)

(assert (=> b!6225980 m!7052870))

(declare-fun m!7052872 () Bool)

(assert (=> bm!522928 m!7052872))

(declare-fun m!7052874 () Bool)

(assert (=> bm!522929 m!7052874))

(assert (=> b!6225973 m!7052396))

(assert (=> b!6225250 d!1951642))

(assert (=> b!6225251 d!1951544))

(declare-fun d!1951644 () Bool)

(declare-fun c!1125253 () Bool)

(assert (=> d!1951644 (= c!1125253 (isEmpty!36673 (t!378320 s!2326)))))

(declare-fun e!3789623 () Bool)

(assert (=> d!1951644 (= (matchZipper!2173 lt!2345521 (t!378320 s!2326)) e!3789623)))

(declare-fun b!6225984 () Bool)

(assert (=> b!6225984 (= e!3789623 (nullableZipper!1935 lt!2345521))))

(declare-fun b!6225985 () Bool)

(assert (=> b!6225985 (= e!3789623 (matchZipper!2173 (derivationStepZipper!2127 lt!2345521 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))))))

(assert (= (and d!1951644 c!1125253) b!6225984))

(assert (= (and d!1951644 (not c!1125253)) b!6225985))

(assert (=> d!1951644 m!7052582))

(declare-fun m!7052876 () Bool)

(assert (=> b!6225984 m!7052876))

(assert (=> b!6225985 m!7052586))

(assert (=> b!6225985 m!7052586))

(declare-fun m!7052878 () Bool)

(assert (=> b!6225985 m!7052878))

(assert (=> b!6225985 m!7052590))

(assert (=> b!6225985 m!7052878))

(assert (=> b!6225985 m!7052590))

(declare-fun m!7052880 () Bool)

(assert (=> b!6225985 m!7052880))

(assert (=> b!6225271 d!1951644))

(declare-fun d!1951646 () Bool)

(declare-fun c!1125254 () Bool)

(assert (=> d!1951646 (= c!1125254 (isEmpty!36673 (t!378320 s!2326)))))

(declare-fun e!3789624 () Bool)

(assert (=> d!1951646 (= (matchZipper!2173 lt!2345527 (t!378320 s!2326)) e!3789624)))

(declare-fun b!6225986 () Bool)

(assert (=> b!6225986 (= e!3789624 (nullableZipper!1935 lt!2345527))))

(declare-fun b!6225987 () Bool)

(assert (=> b!6225987 (= e!3789624 (matchZipper!2173 (derivationStepZipper!2127 lt!2345527 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))))))

(assert (= (and d!1951646 c!1125254) b!6225986))

(assert (= (and d!1951646 (not c!1125254)) b!6225987))

(assert (=> d!1951646 m!7052582))

(declare-fun m!7052882 () Bool)

(assert (=> b!6225986 m!7052882))

(assert (=> b!6225987 m!7052586))

(assert (=> b!6225987 m!7052586))

(declare-fun m!7052884 () Bool)

(assert (=> b!6225987 m!7052884))

(assert (=> b!6225987 m!7052590))

(assert (=> b!6225987 m!7052884))

(assert (=> b!6225987 m!7052590))

(declare-fun m!7052886 () Bool)

(assert (=> b!6225987 m!7052886))

(assert (=> b!6225254 d!1951646))

(declare-fun d!1951648 () Bool)

(declare-fun c!1125255 () Bool)

(assert (=> d!1951648 (= c!1125255 (isEmpty!36673 (t!378320 s!2326)))))

(declare-fun e!3789625 () Bool)

(assert (=> d!1951648 (= (matchZipper!2173 lt!2345524 (t!378320 s!2326)) e!3789625)))

(declare-fun b!6225988 () Bool)

(assert (=> b!6225988 (= e!3789625 (nullableZipper!1935 lt!2345524))))

(declare-fun b!6225989 () Bool)

(assert (=> b!6225989 (= e!3789625 (matchZipper!2173 (derivationStepZipper!2127 lt!2345524 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))))))

(assert (= (and d!1951648 c!1125255) b!6225988))

(assert (= (and d!1951648 (not c!1125255)) b!6225989))

(assert (=> d!1951648 m!7052582))

(declare-fun m!7052888 () Bool)

(assert (=> b!6225988 m!7052888))

(assert (=> b!6225989 m!7052586))

(assert (=> b!6225989 m!7052586))

(declare-fun m!7052890 () Bool)

(assert (=> b!6225989 m!7052890))

(assert (=> b!6225989 m!7052590))

(assert (=> b!6225989 m!7052890))

(assert (=> b!6225989 m!7052590))

(declare-fun m!7052892 () Bool)

(assert (=> b!6225989 m!7052892))

(assert (=> b!6225254 d!1951648))

(declare-fun d!1951650 () Bool)

(declare-fun c!1125256 () Bool)

(assert (=> d!1951650 (= c!1125256 (isEmpty!36673 (t!378320 s!2326)))))

(declare-fun e!3789626 () Bool)

(assert (=> d!1951650 (= (matchZipper!2173 lt!2345519 (t!378320 s!2326)) e!3789626)))

(declare-fun b!6225990 () Bool)

(assert (=> b!6225990 (= e!3789626 (nullableZipper!1935 lt!2345519))))

(declare-fun b!6225991 () Bool)

(assert (=> b!6225991 (= e!3789626 (matchZipper!2173 (derivationStepZipper!2127 lt!2345519 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))))))

(assert (= (and d!1951650 c!1125256) b!6225990))

(assert (= (and d!1951650 (not c!1125256)) b!6225991))

(assert (=> d!1951650 m!7052582))

(declare-fun m!7052894 () Bool)

(assert (=> b!6225990 m!7052894))

(assert (=> b!6225991 m!7052586))

(assert (=> b!6225991 m!7052586))

(declare-fun m!7052896 () Bool)

(assert (=> b!6225991 m!7052896))

(assert (=> b!6225991 m!7052590))

(assert (=> b!6225991 m!7052896))

(assert (=> b!6225991 m!7052590))

(declare-fun m!7052898 () Bool)

(assert (=> b!6225991 m!7052898))

(assert (=> b!6225254 d!1951650))

(declare-fun e!3789629 () Bool)

(declare-fun d!1951652 () Bool)

(assert (=> d!1951652 (= (matchZipper!2173 ((_ map or) lt!2345519 lt!2345535) (t!378320 s!2326)) e!3789629)))

(declare-fun res!2572952 () Bool)

(assert (=> d!1951652 (=> res!2572952 e!3789629)))

(assert (=> d!1951652 (= res!2572952 (matchZipper!2173 lt!2345519 (t!378320 s!2326)))))

(declare-fun lt!2345624 () Unit!157975)

(declare-fun choose!46273 ((InoxSet Context!11090) (InoxSet Context!11090) List!64784) Unit!157975)

(assert (=> d!1951652 (= lt!2345624 (choose!46273 lt!2345519 lt!2345535 (t!378320 s!2326)))))

(assert (=> d!1951652 (= (lemmaZipperConcatMatchesSameAsBothZippers!992 lt!2345519 lt!2345535 (t!378320 s!2326)) lt!2345624)))

(declare-fun b!6225994 () Bool)

(assert (=> b!6225994 (= e!3789629 (matchZipper!2173 lt!2345535 (t!378320 s!2326)))))

(assert (= (and d!1951652 (not res!2572952)) b!6225994))

(declare-fun m!7052900 () Bool)

(assert (=> d!1951652 m!7052900))

(assert (=> d!1951652 m!7052378))

(declare-fun m!7052902 () Bool)

(assert (=> d!1951652 m!7052902))

(assert (=> b!6225994 m!7052348))

(assert (=> b!6225254 d!1951652))

(declare-fun e!3789630 () Bool)

(declare-fun d!1951654 () Bool)

(assert (=> d!1951654 (= (matchZipper!2173 ((_ map or) lt!2345527 lt!2345521) (t!378320 s!2326)) e!3789630)))

(declare-fun res!2572953 () Bool)

(assert (=> d!1951654 (=> res!2572953 e!3789630)))

(assert (=> d!1951654 (= res!2572953 (matchZipper!2173 lt!2345527 (t!378320 s!2326)))))

(declare-fun lt!2345625 () Unit!157975)

(assert (=> d!1951654 (= lt!2345625 (choose!46273 lt!2345527 lt!2345521 (t!378320 s!2326)))))

(assert (=> d!1951654 (= (lemmaZipperConcatMatchesSameAsBothZippers!992 lt!2345527 lt!2345521 (t!378320 s!2326)) lt!2345625)))

(declare-fun b!6225995 () Bool)

(assert (=> b!6225995 (= e!3789630 (matchZipper!2173 lt!2345521 (t!378320 s!2326)))))

(assert (= (and d!1951654 (not res!2572953)) b!6225995))

(assert (=> d!1951654 m!7052384))

(assert (=> d!1951654 m!7052374))

(declare-fun m!7052904 () Bool)

(assert (=> d!1951654 m!7052904))

(assert (=> b!6225995 m!7052346))

(assert (=> b!6225275 d!1951654))

(assert (=> b!6225275 d!1951646))

(declare-fun d!1951656 () Bool)

(declare-fun c!1125257 () Bool)

(assert (=> d!1951656 (= c!1125257 (isEmpty!36673 (t!378320 s!2326)))))

(declare-fun e!3789631 () Bool)

(assert (=> d!1951656 (= (matchZipper!2173 ((_ map or) lt!2345527 lt!2345521) (t!378320 s!2326)) e!3789631)))

(declare-fun b!6225996 () Bool)

(assert (=> b!6225996 (= e!3789631 (nullableZipper!1935 ((_ map or) lt!2345527 lt!2345521)))))

(declare-fun b!6225997 () Bool)

(assert (=> b!6225997 (= e!3789631 (matchZipper!2173 (derivationStepZipper!2127 ((_ map or) lt!2345527 lt!2345521) (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))))))

(assert (= (and d!1951656 c!1125257) b!6225996))

(assert (= (and d!1951656 (not c!1125257)) b!6225997))

(assert (=> d!1951656 m!7052582))

(declare-fun m!7052906 () Bool)

(assert (=> b!6225996 m!7052906))

(assert (=> b!6225997 m!7052586))

(assert (=> b!6225997 m!7052586))

(declare-fun m!7052908 () Bool)

(assert (=> b!6225997 m!7052908))

(assert (=> b!6225997 m!7052590))

(assert (=> b!6225997 m!7052908))

(assert (=> b!6225997 m!7052590))

(declare-fun m!7052910 () Bool)

(assert (=> b!6225997 m!7052910))

(assert (=> b!6225275 d!1951656))

(declare-fun d!1951658 () Bool)

(assert (=> d!1951658 (= (isEmpty!36671 (t!378319 zl!343)) ((_ is Nil!64659) (t!378319 zl!343)))))

(assert (=> b!6225273 d!1951658))

(declare-fun d!1951660 () Bool)

(declare-fun e!3789634 () Bool)

(assert (=> d!1951660 e!3789634))

(declare-fun res!2572956 () Bool)

(assert (=> d!1951660 (=> (not res!2572956) (not e!3789634))))

(declare-fun lt!2345628 () List!64783)

(declare-fun noDuplicate!1999 (List!64783) Bool)

(assert (=> d!1951660 (= res!2572956 (noDuplicate!1999 lt!2345628))))

(declare-fun choose!46274 ((InoxSet Context!11090)) List!64783)

(assert (=> d!1951660 (= lt!2345628 (choose!46274 z!1189))))

(assert (=> d!1951660 (= (toList!9945 z!1189) lt!2345628)))

(declare-fun b!6226000 () Bool)

(declare-fun content!12116 (List!64783) (InoxSet Context!11090))

(assert (=> b!6226000 (= e!3789634 (= (content!12116 lt!2345628) z!1189))))

(assert (= (and d!1951660 res!2572956) b!6226000))

(declare-fun m!7052912 () Bool)

(assert (=> d!1951660 m!7052912))

(declare-fun m!7052914 () Bool)

(assert (=> d!1951660 m!7052914))

(declare-fun m!7052916 () Bool)

(assert (=> b!6226000 m!7052916))

(assert (=> b!6225274 d!1951660))

(declare-fun b!6226005 () Bool)

(declare-fun e!3789637 () Bool)

(declare-fun tp!1736513 () Bool)

(declare-fun tp!1736514 () Bool)

(assert (=> b!6226005 (= e!3789637 (and tp!1736513 tp!1736514))))

(assert (=> b!6225252 (= tp!1736445 e!3789637)))

(assert (= (and b!6225252 ((_ is Cons!64658) (exprs!6045 (h!71107 zl!343)))) b!6226005))

(declare-fun b!6226006 () Bool)

(declare-fun e!3789638 () Bool)

(declare-fun tp!1736515 () Bool)

(declare-fun tp!1736516 () Bool)

(assert (=> b!6226006 (= e!3789638 (and tp!1736515 tp!1736516))))

(assert (=> b!6225260 (= tp!1736449 e!3789638)))

(assert (= (and b!6225260 ((_ is Cons!64658) (exprs!6045 setElem!42302))) b!6226006))

(declare-fun e!3789641 () Bool)

(assert (=> b!6225255 (= tp!1736450 e!3789641)))

(declare-fun b!6226020 () Bool)

(declare-fun tp!1736530 () Bool)

(declare-fun tp!1736529 () Bool)

(assert (=> b!6226020 (= e!3789641 (and tp!1736530 tp!1736529))))

(declare-fun b!6226017 () Bool)

(assert (=> b!6226017 (= e!3789641 tp_is_empty!41575)))

(declare-fun b!6226019 () Bool)

(declare-fun tp!1736527 () Bool)

(assert (=> b!6226019 (= e!3789641 tp!1736527)))

(declare-fun b!6226018 () Bool)

(declare-fun tp!1736528 () Bool)

(declare-fun tp!1736531 () Bool)

(assert (=> b!6226018 (= e!3789641 (and tp!1736528 tp!1736531))))

(assert (= (and b!6225255 ((_ is ElementMatch!16161) (regOne!32834 r!7292))) b!6226017))

(assert (= (and b!6225255 ((_ is Concat!25006) (regOne!32834 r!7292))) b!6226018))

(assert (= (and b!6225255 ((_ is Star!16161) (regOne!32834 r!7292))) b!6226019))

(assert (= (and b!6225255 ((_ is Union!16161) (regOne!32834 r!7292))) b!6226020))

(declare-fun e!3789642 () Bool)

(assert (=> b!6225255 (= tp!1736442 e!3789642)))

(declare-fun b!6226024 () Bool)

(declare-fun tp!1736535 () Bool)

(declare-fun tp!1736534 () Bool)

(assert (=> b!6226024 (= e!3789642 (and tp!1736535 tp!1736534))))

(declare-fun b!6226021 () Bool)

(assert (=> b!6226021 (= e!3789642 tp_is_empty!41575)))

(declare-fun b!6226023 () Bool)

(declare-fun tp!1736532 () Bool)

(assert (=> b!6226023 (= e!3789642 tp!1736532)))

(declare-fun b!6226022 () Bool)

(declare-fun tp!1736533 () Bool)

(declare-fun tp!1736536 () Bool)

(assert (=> b!6226022 (= e!3789642 (and tp!1736533 tp!1736536))))

(assert (= (and b!6225255 ((_ is ElementMatch!16161) (regTwo!32834 r!7292))) b!6226021))

(assert (= (and b!6225255 ((_ is Concat!25006) (regTwo!32834 r!7292))) b!6226022))

(assert (= (and b!6225255 ((_ is Star!16161) (regTwo!32834 r!7292))) b!6226023))

(assert (= (and b!6225255 ((_ is Union!16161) (regTwo!32834 r!7292))) b!6226024))

(declare-fun b!6226029 () Bool)

(declare-fun e!3789645 () Bool)

(declare-fun tp!1736539 () Bool)

(assert (=> b!6226029 (= e!3789645 (and tp_is_empty!41575 tp!1736539))))

(assert (=> b!6225268 (= tp!1736444 e!3789645)))

(assert (= (and b!6225268 ((_ is Cons!64660) (t!378320 s!2326))) b!6226029))

(declare-fun e!3789646 () Bool)

(assert (=> b!6225253 (= tp!1736443 e!3789646)))

(declare-fun b!6226033 () Bool)

(declare-fun tp!1736543 () Bool)

(declare-fun tp!1736542 () Bool)

(assert (=> b!6226033 (= e!3789646 (and tp!1736543 tp!1736542))))

(declare-fun b!6226030 () Bool)

(assert (=> b!6226030 (= e!3789646 tp_is_empty!41575)))

(declare-fun b!6226032 () Bool)

(declare-fun tp!1736540 () Bool)

(assert (=> b!6226032 (= e!3789646 tp!1736540)))

(declare-fun b!6226031 () Bool)

(declare-fun tp!1736541 () Bool)

(declare-fun tp!1736544 () Bool)

(assert (=> b!6226031 (= e!3789646 (and tp!1736541 tp!1736544))))

(assert (= (and b!6225253 ((_ is ElementMatch!16161) (regOne!32835 r!7292))) b!6226030))

(assert (= (and b!6225253 ((_ is Concat!25006) (regOne!32835 r!7292))) b!6226031))

(assert (= (and b!6225253 ((_ is Star!16161) (regOne!32835 r!7292))) b!6226032))

(assert (= (and b!6225253 ((_ is Union!16161) (regOne!32835 r!7292))) b!6226033))

(declare-fun e!3789647 () Bool)

(assert (=> b!6225253 (= tp!1736448 e!3789647)))

(declare-fun b!6226037 () Bool)

(declare-fun tp!1736548 () Bool)

(declare-fun tp!1736547 () Bool)

(assert (=> b!6226037 (= e!3789647 (and tp!1736548 tp!1736547))))

(declare-fun b!6226034 () Bool)

(assert (=> b!6226034 (= e!3789647 tp_is_empty!41575)))

(declare-fun b!6226036 () Bool)

(declare-fun tp!1736545 () Bool)

(assert (=> b!6226036 (= e!3789647 tp!1736545)))

(declare-fun b!6226035 () Bool)

(declare-fun tp!1736546 () Bool)

(declare-fun tp!1736549 () Bool)

(assert (=> b!6226035 (= e!3789647 (and tp!1736546 tp!1736549))))

(assert (= (and b!6225253 ((_ is ElementMatch!16161) (regTwo!32835 r!7292))) b!6226034))

(assert (= (and b!6225253 ((_ is Concat!25006) (regTwo!32835 r!7292))) b!6226035))

(assert (= (and b!6225253 ((_ is Star!16161) (regTwo!32835 r!7292))) b!6226036))

(assert (= (and b!6225253 ((_ is Union!16161) (regTwo!32835 r!7292))) b!6226037))

(declare-fun condSetEmpty!42308 () Bool)

(assert (=> setNonEmpty!42302 (= condSetEmpty!42308 (= setRest!42302 ((as const (Array Context!11090 Bool)) false)))))

(declare-fun setRes!42308 () Bool)

(assert (=> setNonEmpty!42302 (= tp!1736447 setRes!42308)))

(declare-fun setIsEmpty!42308 () Bool)

(assert (=> setIsEmpty!42308 setRes!42308))

(declare-fun tp!1736555 () Bool)

(declare-fun setElem!42308 () Context!11090)

(declare-fun setNonEmpty!42308 () Bool)

(declare-fun e!3789650 () Bool)

(assert (=> setNonEmpty!42308 (= setRes!42308 (and tp!1736555 (inv!83649 setElem!42308) e!3789650))))

(declare-fun setRest!42308 () (InoxSet Context!11090))

(assert (=> setNonEmpty!42308 (= setRest!42302 ((_ map or) (store ((as const (Array Context!11090 Bool)) false) setElem!42308 true) setRest!42308))))

(declare-fun b!6226042 () Bool)

(declare-fun tp!1736554 () Bool)

(assert (=> b!6226042 (= e!3789650 tp!1736554)))

(assert (= (and setNonEmpty!42302 condSetEmpty!42308) setIsEmpty!42308))

(assert (= (and setNonEmpty!42302 (not condSetEmpty!42308)) setNonEmpty!42308))

(assert (= setNonEmpty!42308 b!6226042))

(declare-fun m!7052918 () Bool)

(assert (=> setNonEmpty!42308 m!7052918))

(declare-fun b!6226050 () Bool)

(declare-fun e!3789656 () Bool)

(declare-fun tp!1736560 () Bool)

(assert (=> b!6226050 (= e!3789656 tp!1736560)))

(declare-fun e!3789655 () Bool)

(declare-fun tp!1736561 () Bool)

(declare-fun b!6226049 () Bool)

(assert (=> b!6226049 (= e!3789655 (and (inv!83649 (h!71107 (t!378319 zl!343))) e!3789656 tp!1736561))))

(assert (=> b!6225258 (= tp!1736446 e!3789655)))

(assert (= b!6226049 b!6226050))

(assert (= (and b!6225258 ((_ is Cons!64659) (t!378319 zl!343))) b!6226049))

(declare-fun m!7052920 () Bool)

(assert (=> b!6226049 m!7052920))

(declare-fun e!3789657 () Bool)

(assert (=> b!6225263 (= tp!1736441 e!3789657)))

(declare-fun b!6226054 () Bool)

(declare-fun tp!1736565 () Bool)

(declare-fun tp!1736564 () Bool)

(assert (=> b!6226054 (= e!3789657 (and tp!1736565 tp!1736564))))

(declare-fun b!6226051 () Bool)

(assert (=> b!6226051 (= e!3789657 tp_is_empty!41575)))

(declare-fun b!6226053 () Bool)

(declare-fun tp!1736562 () Bool)

(assert (=> b!6226053 (= e!3789657 tp!1736562)))

(declare-fun b!6226052 () Bool)

(declare-fun tp!1736563 () Bool)

(declare-fun tp!1736566 () Bool)

(assert (=> b!6226052 (= e!3789657 (and tp!1736563 tp!1736566))))

(assert (= (and b!6225263 ((_ is ElementMatch!16161) (reg!16490 r!7292))) b!6226051))

(assert (= (and b!6225263 ((_ is Concat!25006) (reg!16490 r!7292))) b!6226052))

(assert (= (and b!6225263 ((_ is Star!16161) (reg!16490 r!7292))) b!6226053))

(assert (= (and b!6225263 ((_ is Union!16161) (reg!16490 r!7292))) b!6226054))

(declare-fun b_lambda!236715 () Bool)

(assert (= b_lambda!236713 (or b!6225256 b_lambda!236715)))

(declare-fun bs!1543685 () Bool)

(declare-fun d!1951662 () Bool)

(assert (= bs!1543685 (and d!1951662 b!6225256)))

(assert (=> bs!1543685 (= (dynLambda!25515 lambda!340339 lt!2345517) (derivationStepZipperUp!1335 lt!2345517 (h!71108 s!2326)))))

(assert (=> bs!1543685 m!7052324))

(assert (=> d!1951638 d!1951662))

(declare-fun b_lambda!236717 () Bool)

(assert (= b_lambda!236709 (or b!6225256 b_lambda!236717)))

(declare-fun bs!1543686 () Bool)

(declare-fun d!1951664 () Bool)

(assert (= bs!1543686 (and d!1951664 b!6225256)))

(assert (=> bs!1543686 (= (dynLambda!25515 lambda!340339 (h!71107 zl!343)) (derivationStepZipperUp!1335 (h!71107 zl!343) (h!71108 s!2326)))))

(assert (=> bs!1543686 m!7052356))

(assert (=> d!1951608 d!1951664))

(declare-fun b_lambda!236719 () Bool)

(assert (= b_lambda!236711 (or b!6225256 b_lambda!236719)))

(declare-fun bs!1543687 () Bool)

(declare-fun d!1951666 () Bool)

(assert (= bs!1543687 (and d!1951666 b!6225256)))

(assert (=> bs!1543687 (= (dynLambda!25515 lambda!340339 lt!2345515) (derivationStepZipperUp!1335 lt!2345515 (h!71108 s!2326)))))

(assert (=> bs!1543687 m!7052394))

(assert (=> d!1951610 d!1951666))

(check-sat (not d!1951600) (not b!6225814) (not d!1951638) (not b!6225930) (not b!6225481) (not b!6225986) (not d!1951628) (not setNonEmpty!42308) (not b!6225921) (not d!1951568) (not b!6225969) (not b!6225883) (not bm!522914) (not b!6226049) (not bm!522896) (not b!6225989) (not b!6226054) (not b!6226029) (not b!6225482) (not b!6225961) (not bm!522923) (not d!1951610) (not b!6225575) (not d!1951564) (not b!6225840) (not d!1951650) (not d!1951548) (not bm!522915) (not b!6225578) (not bm!522921) (not b!6225991) (not b!6225885) (not b!6226042) (not b!6225845) (not b!6225735) (not b!6225837) (not b!6225958) (not d!1951624) (not d!1951630) (not b!6226032) (not d!1951594) (not b!6225997) (not b!6225984) (not d!1951586) (not d!1951634) (not d!1951636) (not bm!522930) (not b!6225917) (not b!6225959) (not b!6225782) (not bm!522922) (not b!6225957) (not b!6225954) (not b!6226000) (not d!1951592) (not bm!522919) (not b!6225582) (not b!6226022) (not b!6226053) (not b!6225895) (not d!1951644) (not b!6226006) (not bm!522899) (not b!6225987) (not d!1951632) (not bm!522920) (not b!6226020) (not b!6225988) (not b!6226018) (not b!6225815) (not d!1951648) (not bm!522913) (not d!1951654) (not b!6225980) (not bs!1543686) (not d!1951574) (not bm!522924) (not d!1951646) (not b!6226050) (not b!6226035) (not d!1951544) (not d!1951616) (not b!6225996) (not bm!522885) (not bs!1543685) (not d!1951566) (not b!6225953) (not b!6226031) (not b!6226019) (not d!1951596) (not b!6225924) (not b!6225875) (not bm!522886) (not d!1951550) (not b!6225995) (not b!6225990) (not b!6225580) (not b!6225842) (not b!6225822) (not b!6225821) (not b!6225920) (not bm!522892) (not d!1951652) (not b!6225577) (not d!1951612) (not b_lambda!236715) (not b!6226024) (not b!6225994) (not bm!522928) (not b!6225880) (not d!1951622) (not b!6225952) (not bm!522929) (not bm!522893) (not b!6225776) (not b!6226033) (not b!6225825) (not bm!522900) (not d!1951660) (not d!1951608) tp_is_empty!41575 (not b!6226037) (not b!6225925) (not b!6226023) (not b!6225892) (not b!6225576) (not bs!1543687) (not b!6226036) (not b!6226005) (not b!6225888) (not d!1951656) (not b_lambda!236719) (not b_lambda!236717) (not b!6225817) (not b!6225919) (not b!6225918) (not b!6225985) (not d!1951626) (not b!6226052))
(check-sat)
(get-model)

(declare-fun d!1951708 () Bool)

(assert (=> d!1951708 (= (isEmpty!36670 (unfocusZipperList!1582 zl!343)) ((_ is Nil!64658) (unfocusZipperList!1582 zl!343)))))

(assert (=> b!6225924 d!1951708))

(declare-fun bm!522968 () Bool)

(declare-fun c!1125295 () Bool)

(declare-fun c!1125299 () Bool)

(declare-fun call!522975 () List!64782)

(assert (=> bm!522968 (= call!522975 ($colon$colon!2030 (exprs!6045 (ite (or c!1125250 c!1125248) lt!2345517 (Context!11091 call!522937))) (ite (or c!1125295 c!1125299) (regTwo!32834 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))) (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292)))))))))))

(declare-fun call!522973 () (InoxSet Context!11090))

(declare-fun c!1125297 () Bool)

(declare-fun bm!522969 () Bool)

(assert (=> bm!522969 (= call!522973 (derivationStepZipperDown!1409 (ite c!1125297 (regTwo!32835 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))) (regOne!32834 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292)))))))) (ite c!1125297 (ite (or c!1125250 c!1125248) lt!2345517 (Context!11091 call!522937)) (Context!11091 call!522975)) (h!71108 s!2326)))))

(declare-fun b!6226172 () Bool)

(declare-fun e!3789729 () (InoxSet Context!11090))

(assert (=> b!6226172 (= e!3789729 (store ((as const (Array Context!11090 Bool)) false) (ite (or c!1125250 c!1125248) lt!2345517 (Context!11091 call!522937)) true))))

(declare-fun bm!522970 () Bool)

(declare-fun call!522977 () List!64782)

(declare-fun call!522974 () (InoxSet Context!11090))

(assert (=> bm!522970 (= call!522974 (derivationStepZipperDown!1409 (ite c!1125297 (regOne!32835 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))) (ite c!1125295 (regTwo!32834 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))) (ite c!1125299 (regOne!32834 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))) (reg!16490 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292)))))))))) (ite (or c!1125297 c!1125295) (ite (or c!1125250 c!1125248) lt!2345517 (Context!11091 call!522937)) (Context!11091 call!522977)) (h!71108 s!2326)))))

(declare-fun c!1125298 () Bool)

(declare-fun b!6226173 () Bool)

(assert (=> b!6226173 (= c!1125298 ((_ is Star!16161) (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))))))

(declare-fun e!3789724 () (InoxSet Context!11090))

(declare-fun e!3789725 () (InoxSet Context!11090))

(assert (=> b!6226173 (= e!3789724 e!3789725)))

(declare-fun b!6226174 () Bool)

(declare-fun call!522976 () (InoxSet Context!11090))

(assert (=> b!6226174 (= e!3789725 call!522976)))

(declare-fun c!1125296 () Bool)

(declare-fun d!1951712 () Bool)

(assert (=> d!1951712 (= c!1125296 (and ((_ is ElementMatch!16161) (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))) (= (c!1125039 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))) (h!71108 s!2326))))))

(assert (=> d!1951712 (= (derivationStepZipperDown!1409 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292)))))) (ite (or c!1125250 c!1125248) lt!2345517 (Context!11091 call!522937)) (h!71108 s!2326)) e!3789729)))

(declare-fun bm!522971 () Bool)

(assert (=> bm!522971 (= call!522977 call!522975)))

(declare-fun b!6226175 () Bool)

(declare-fun e!3789727 () Bool)

(assert (=> b!6226175 (= c!1125295 e!3789727)))

(declare-fun res!2573007 () Bool)

(assert (=> b!6226175 (=> (not res!2573007) (not e!3789727))))

(assert (=> b!6226175 (= res!2573007 ((_ is Concat!25006) (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))))))

(declare-fun e!3789726 () (InoxSet Context!11090))

(declare-fun e!3789728 () (InoxSet Context!11090))

(assert (=> b!6226175 (= e!3789726 e!3789728)))

(declare-fun b!6226176 () Bool)

(assert (=> b!6226176 (= e!3789725 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226177 () Bool)

(assert (=> b!6226177 (= e!3789726 ((_ map or) call!522974 call!522973))))

(declare-fun b!6226178 () Bool)

(assert (=> b!6226178 (= e!3789728 e!3789724)))

(assert (=> b!6226178 (= c!1125299 ((_ is Concat!25006) (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))))))

(declare-fun bm!522972 () Bool)

(declare-fun call!522978 () (InoxSet Context!11090))

(assert (=> bm!522972 (= call!522976 call!522978)))

(declare-fun bm!522973 () Bool)

(assert (=> bm!522973 (= call!522978 call!522974)))

(declare-fun b!6226179 () Bool)

(assert (=> b!6226179 (= e!3789727 (nullable!6154 (regOne!32834 (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292)))))))))))

(declare-fun b!6226180 () Bool)

(assert (=> b!6226180 (= e!3789729 e!3789726)))

(assert (=> b!6226180 (= c!1125297 ((_ is Union!16161) (ite c!1125250 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125248 (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (ite c!1125252 (regOne!32834 (regOne!32834 (regOne!32834 r!7292))) (reg!16490 (regOne!32834 (regOne!32834 r!7292))))))))))

(declare-fun b!6226181 () Bool)

(assert (=> b!6226181 (= e!3789724 call!522976)))

(declare-fun b!6226182 () Bool)

(assert (=> b!6226182 (= e!3789728 ((_ map or) call!522973 call!522978))))

(assert (= (and d!1951712 c!1125296) b!6226172))

(assert (= (and d!1951712 (not c!1125296)) b!6226180))

(assert (= (and b!6226180 c!1125297) b!6226177))

(assert (= (and b!6226180 (not c!1125297)) b!6226175))

(assert (= (and b!6226175 res!2573007) b!6226179))

(assert (= (and b!6226175 c!1125295) b!6226182))

(assert (= (and b!6226175 (not c!1125295)) b!6226178))

(assert (= (and b!6226178 c!1125299) b!6226181))

(assert (= (and b!6226178 (not c!1125299)) b!6226173))

(assert (= (and b!6226173 c!1125298) b!6226174))

(assert (= (and b!6226173 (not c!1125298)) b!6226176))

(assert (= (or b!6226181 b!6226174) bm!522971))

(assert (= (or b!6226181 b!6226174) bm!522972))

(assert (= (or b!6226182 bm!522971) bm!522968))

(assert (= (or b!6226182 bm!522972) bm!522973))

(assert (= (or b!6226177 b!6226182) bm!522969))

(assert (= (or b!6226177 bm!522973) bm!522970))

(declare-fun m!7053030 () Bool)

(assert (=> bm!522970 m!7053030))

(declare-fun m!7053032 () Bool)

(assert (=> b!6226179 m!7053032))

(declare-fun m!7053034 () Bool)

(assert (=> bm!522968 m!7053034))

(declare-fun m!7053036 () Bool)

(assert (=> bm!522969 m!7053036))

(declare-fun m!7053038 () Bool)

(assert (=> b!6226172 m!7053038))

(assert (=> bm!522930 d!1951712))

(declare-fun d!1951718 () Bool)

(assert (=> d!1951718 (= (nullable!6154 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (nullableFct!2110 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun bs!1543708 () Bool)

(assert (= bs!1543708 d!1951718))

(declare-fun m!7053040 () Bool)

(assert (=> bs!1543708 m!7053040))

(assert (=> b!6225840 d!1951718))

(declare-fun d!1951720 () Bool)

(assert (=> d!1951720 (= (isConcat!1094 lt!2345620) ((_ is Concat!25006) lt!2345620))))

(assert (=> b!6225953 d!1951720))

(declare-fun d!1951722 () Bool)

(assert (=> d!1951722 (= (isEmpty!36673 s!2326) ((_ is Nil!64660) s!2326))))

(assert (=> d!1951592 d!1951722))

(assert (=> d!1951592 d!1951588))

(declare-fun bs!1543709 () Bool)

(declare-fun b!6226197 () Bool)

(assert (= bs!1543709 (and b!6226197 d!1951574)))

(declare-fun lambda!340415 () Int)

(assert (=> bs!1543709 (not (= lambda!340415 lambda!340379))))

(declare-fun bs!1543710 () Bool)

(assert (= bs!1543710 (and b!6226197 b!6225783)))

(assert (=> bs!1543710 (= (and (= (reg!16490 (regOne!32835 r!7292)) (reg!16490 r!7292)) (= (regOne!32835 r!7292) r!7292)) (= lambda!340415 lambda!340385))))

(declare-fun bs!1543711 () Bool)

(assert (= bs!1543711 (and b!6226197 b!6225265)))

(assert (=> bs!1543711 (not (= lambda!340415 lambda!340337))))

(assert (=> bs!1543711 (not (= lambda!340415 lambda!340338))))

(declare-fun bs!1543712 () Bool)

(assert (= bs!1543712 (and b!6226197 d!1951568)))

(assert (=> bs!1543712 (not (= lambda!340415 lambda!340370))))

(declare-fun bs!1543713 () Bool)

(assert (= bs!1543713 (and b!6226197 b!6225778)))

(assert (=> bs!1543713 (not (= lambda!340415 lambda!340386))))

(assert (=> bs!1543709 (not (= lambda!340415 lambda!340380))))

(assert (=> b!6226197 true))

(assert (=> b!6226197 true))

(declare-fun bs!1543714 () Bool)

(declare-fun b!6226192 () Bool)

(assert (= bs!1543714 (and b!6226192 d!1951574)))

(declare-fun lambda!340416 () Int)

(assert (=> bs!1543714 (not (= lambda!340416 lambda!340379))))

(declare-fun bs!1543715 () Bool)

(assert (= bs!1543715 (and b!6226192 b!6225783)))

(assert (=> bs!1543715 (not (= lambda!340416 lambda!340385))))

(declare-fun bs!1543716 () Bool)

(assert (= bs!1543716 (and b!6226192 b!6225265)))

(assert (=> bs!1543716 (not (= lambda!340416 lambda!340337))))

(declare-fun bs!1543717 () Bool)

(assert (= bs!1543717 (and b!6226192 b!6226197)))

(assert (=> bs!1543717 (not (= lambda!340416 lambda!340415))))

(assert (=> bs!1543716 (= (and (= (regOne!32834 (regOne!32835 r!7292)) (regOne!32834 r!7292)) (= (regTwo!32834 (regOne!32835 r!7292)) (regTwo!32834 r!7292))) (= lambda!340416 lambda!340338))))

(declare-fun bs!1543718 () Bool)

(assert (= bs!1543718 (and b!6226192 d!1951568)))

(assert (=> bs!1543718 (not (= lambda!340416 lambda!340370))))

(declare-fun bs!1543720 () Bool)

(assert (= bs!1543720 (and b!6226192 b!6225778)))

(assert (=> bs!1543720 (= (and (= (regOne!32834 (regOne!32835 r!7292)) (regOne!32834 r!7292)) (= (regTwo!32834 (regOne!32835 r!7292)) (regTwo!32834 r!7292))) (= lambda!340416 lambda!340386))))

(assert (=> bs!1543714 (= (and (= (regOne!32834 (regOne!32835 r!7292)) (regOne!32834 r!7292)) (= (regTwo!32834 (regOne!32835 r!7292)) (regTwo!32834 r!7292))) (= lambda!340416 lambda!340380))))

(assert (=> b!6226192 true))

(assert (=> b!6226192 true))

(declare-fun b!6226187 () Bool)

(declare-fun e!3789737 () Bool)

(declare-fun call!522979 () Bool)

(assert (=> b!6226187 (= e!3789737 call!522979)))

(declare-fun b!6226188 () Bool)

(declare-fun res!2573013 () Bool)

(declare-fun e!3789740 () Bool)

(assert (=> b!6226188 (=> res!2573013 e!3789740)))

(assert (=> b!6226188 (= res!2573013 call!522979)))

(declare-fun e!3789735 () Bool)

(assert (=> b!6226188 (= e!3789735 e!3789740)))

(declare-fun b!6226189 () Bool)

(declare-fun c!1125301 () Bool)

(assert (=> b!6226189 (= c!1125301 ((_ is Union!16161) (regOne!32835 r!7292)))))

(declare-fun e!3789734 () Bool)

(declare-fun e!3789739 () Bool)

(assert (=> b!6226189 (= e!3789734 e!3789739)))

(declare-fun b!6226190 () Bool)

(declare-fun e!3789736 () Bool)

(assert (=> b!6226190 (= e!3789736 (matchRSpec!3262 (regTwo!32835 (regOne!32835 r!7292)) s!2326))))

(declare-fun call!522980 () Bool)

(assert (=> b!6226192 (= e!3789735 call!522980)))

(declare-fun b!6226193 () Bool)

(assert (=> b!6226193 (= e!3789734 (= s!2326 (Cons!64660 (c!1125039 (regOne!32835 r!7292)) Nil!64660)))))

(declare-fun b!6226194 () Bool)

(declare-fun c!1125303 () Bool)

(assert (=> b!6226194 (= c!1125303 ((_ is ElementMatch!16161) (regOne!32835 r!7292)))))

(declare-fun e!3789738 () Bool)

(assert (=> b!6226194 (= e!3789738 e!3789734)))

(declare-fun b!6226195 () Bool)

(assert (=> b!6226195 (= e!3789739 e!3789735)))

(declare-fun c!1125302 () Bool)

(assert (=> b!6226195 (= c!1125302 ((_ is Star!16161) (regOne!32835 r!7292)))))

(declare-fun d!1951724 () Bool)

(declare-fun c!1125300 () Bool)

(assert (=> d!1951724 (= c!1125300 ((_ is EmptyExpr!16161) (regOne!32835 r!7292)))))

(assert (=> d!1951724 (= (matchRSpec!3262 (regOne!32835 r!7292) s!2326) e!3789737)))

(declare-fun b!6226191 () Bool)

(assert (=> b!6226191 (= e!3789737 e!3789738)))

(declare-fun res!2573012 () Bool)

(assert (=> b!6226191 (= res!2573012 (not ((_ is EmptyLang!16161) (regOne!32835 r!7292))))))

(assert (=> b!6226191 (=> (not res!2573012) (not e!3789738))))

(declare-fun bm!522974 () Bool)

(assert (=> bm!522974 (= call!522980 (Exists!3231 (ite c!1125302 lambda!340415 lambda!340416)))))

(declare-fun b!6226196 () Bool)

(assert (=> b!6226196 (= e!3789739 e!3789736)))

(declare-fun res!2573014 () Bool)

(assert (=> b!6226196 (= res!2573014 (matchRSpec!3262 (regOne!32835 (regOne!32835 r!7292)) s!2326))))

(assert (=> b!6226196 (=> res!2573014 e!3789736)))

(declare-fun bm!522975 () Bool)

(assert (=> bm!522975 (= call!522979 (isEmpty!36673 s!2326))))

(assert (=> b!6226197 (= e!3789740 call!522980)))

(assert (= (and d!1951724 c!1125300) b!6226187))

(assert (= (and d!1951724 (not c!1125300)) b!6226191))

(assert (= (and b!6226191 res!2573012) b!6226194))

(assert (= (and b!6226194 c!1125303) b!6226193))

(assert (= (and b!6226194 (not c!1125303)) b!6226189))

(assert (= (and b!6226189 c!1125301) b!6226196))

(assert (= (and b!6226189 (not c!1125301)) b!6226195))

(assert (= (and b!6226196 (not res!2573014)) b!6226190))

(assert (= (and b!6226195 c!1125302) b!6226188))

(assert (= (and b!6226195 (not c!1125302)) b!6226192))

(assert (= (and b!6226188 (not res!2573013)) b!6226197))

(assert (= (or b!6226197 b!6226192) bm!522974))

(assert (= (or b!6226187 b!6226188) bm!522975))

(declare-fun m!7053060 () Bool)

(assert (=> b!6226190 m!7053060))

(declare-fun m!7053062 () Bool)

(assert (=> bm!522974 m!7053062))

(declare-fun m!7053064 () Bool)

(assert (=> b!6226196 m!7053064))

(assert (=> bm!522975 m!7052732))

(assert (=> b!6225782 d!1951724))

(declare-fun d!1951738 () Bool)

(assert (=> d!1951738 (= (Exists!3231 lambda!340379) (choose!46267 lambda!340379))))

(declare-fun bs!1543721 () Bool)

(assert (= bs!1543721 d!1951738))

(declare-fun m!7053066 () Bool)

(assert (=> bs!1543721 m!7053066))

(assert (=> d!1951574 d!1951738))

(declare-fun d!1951740 () Bool)

(assert (=> d!1951740 (= (Exists!3231 lambda!340380) (choose!46267 lambda!340380))))

(declare-fun bs!1543722 () Bool)

(assert (= bs!1543722 d!1951740))

(declare-fun m!7053068 () Bool)

(assert (=> bs!1543722 m!7053068))

(assert (=> d!1951574 d!1951740))

(declare-fun bs!1543736 () Bool)

(declare-fun d!1951742 () Bool)

(assert (= bs!1543736 (and d!1951742 d!1951574)))

(declare-fun lambda!340423 () Int)

(assert (=> bs!1543736 (= lambda!340423 lambda!340379)))

(declare-fun bs!1543737 () Bool)

(assert (= bs!1543737 (and d!1951742 b!6226192)))

(assert (=> bs!1543737 (not (= lambda!340423 lambda!340416))))

(declare-fun bs!1543738 () Bool)

(assert (= bs!1543738 (and d!1951742 b!6225783)))

(assert (=> bs!1543738 (not (= lambda!340423 lambda!340385))))

(declare-fun bs!1543739 () Bool)

(assert (= bs!1543739 (and d!1951742 b!6225265)))

(assert (=> bs!1543739 (= lambda!340423 lambda!340337)))

(declare-fun bs!1543740 () Bool)

(assert (= bs!1543740 (and d!1951742 b!6226197)))

(assert (=> bs!1543740 (not (= lambda!340423 lambda!340415))))

(assert (=> bs!1543739 (not (= lambda!340423 lambda!340338))))

(declare-fun bs!1543741 () Bool)

(assert (= bs!1543741 (and d!1951742 d!1951568)))

(assert (=> bs!1543741 (= lambda!340423 lambda!340370)))

(declare-fun bs!1543743 () Bool)

(assert (= bs!1543743 (and d!1951742 b!6225778)))

(assert (=> bs!1543743 (not (= lambda!340423 lambda!340386))))

(assert (=> bs!1543736 (not (= lambda!340423 lambda!340380))))

(assert (=> d!1951742 true))

(assert (=> d!1951742 true))

(assert (=> d!1951742 true))

(declare-fun lambda!340424 () Int)

(assert (=> bs!1543736 (not (= lambda!340424 lambda!340379))))

(assert (=> bs!1543737 (= (and (= (regOne!32834 r!7292) (regOne!32834 (regOne!32835 r!7292))) (= (regTwo!32834 r!7292) (regTwo!32834 (regOne!32835 r!7292)))) (= lambda!340424 lambda!340416))))

(assert (=> bs!1543738 (not (= lambda!340424 lambda!340385))))

(assert (=> bs!1543739 (not (= lambda!340424 lambda!340337))))

(declare-fun bs!1543744 () Bool)

(assert (= bs!1543744 d!1951742))

(assert (=> bs!1543744 (not (= lambda!340424 lambda!340423))))

(assert (=> bs!1543740 (not (= lambda!340424 lambda!340415))))

(assert (=> bs!1543739 (= lambda!340424 lambda!340338)))

(assert (=> bs!1543741 (not (= lambda!340424 lambda!340370))))

(assert (=> bs!1543743 (= lambda!340424 lambda!340386)))

(assert (=> bs!1543736 (= lambda!340424 lambda!340380)))

(assert (=> d!1951742 true))

(assert (=> d!1951742 true))

(assert (=> d!1951742 true))

(assert (=> d!1951742 (= (Exists!3231 lambda!340423) (Exists!3231 lambda!340424))))

(assert (=> d!1951742 true))

(declare-fun _$90!2031 () Unit!157975)

(assert (=> d!1951742 (= (choose!46269 (regOne!32834 r!7292) (regTwo!32834 r!7292) s!2326) _$90!2031)))

(declare-fun m!7053092 () Bool)

(assert (=> bs!1543744 m!7053092))

(declare-fun m!7053094 () Bool)

(assert (=> bs!1543744 m!7053094))

(assert (=> d!1951574 d!1951742))

(declare-fun d!1951758 () Bool)

(declare-fun res!2573050 () Bool)

(declare-fun e!3789790 () Bool)

(assert (=> d!1951758 (=> res!2573050 e!3789790)))

(assert (=> d!1951758 (= res!2573050 ((_ is ElementMatch!16161) (regOne!32834 r!7292)))))

(assert (=> d!1951758 (= (validRegex!7897 (regOne!32834 r!7292)) e!3789790)))

(declare-fun b!6226264 () Bool)

(declare-fun e!3789792 () Bool)

(declare-fun call!522997 () Bool)

(assert (=> b!6226264 (= e!3789792 call!522997)))

(declare-fun b!6226265 () Bool)

(declare-fun e!3789791 () Bool)

(declare-fun e!3789793 () Bool)

(assert (=> b!6226265 (= e!3789791 e!3789793)))

(declare-fun c!1125320 () Bool)

(assert (=> b!6226265 (= c!1125320 ((_ is Union!16161) (regOne!32834 r!7292)))))

(declare-fun b!6226266 () Bool)

(assert (=> b!6226266 (= e!3789790 e!3789791)))

(declare-fun c!1125321 () Bool)

(assert (=> b!6226266 (= c!1125321 ((_ is Star!16161) (regOne!32834 r!7292)))))

(declare-fun bm!522991 () Bool)

(assert (=> bm!522991 (= call!522997 (validRegex!7897 (ite c!1125320 (regTwo!32835 (regOne!32834 r!7292)) (regTwo!32834 (regOne!32834 r!7292)))))))

(declare-fun b!6226267 () Bool)

(declare-fun e!3789787 () Bool)

(assert (=> b!6226267 (= e!3789791 e!3789787)))

(declare-fun res!2573047 () Bool)

(assert (=> b!6226267 (= res!2573047 (not (nullable!6154 (reg!16490 (regOne!32834 r!7292)))))))

(assert (=> b!6226267 (=> (not res!2573047) (not e!3789787))))

(declare-fun bm!522992 () Bool)

(declare-fun call!522998 () Bool)

(assert (=> bm!522992 (= call!522998 (validRegex!7897 (ite c!1125321 (reg!16490 (regOne!32834 r!7292)) (ite c!1125320 (regOne!32835 (regOne!32834 r!7292)) (regOne!32834 (regOne!32834 r!7292))))))))

(declare-fun b!6226268 () Bool)

(declare-fun res!2573048 () Bool)

(assert (=> b!6226268 (=> (not res!2573048) (not e!3789792))))

(declare-fun call!522996 () Bool)

(assert (=> b!6226268 (= res!2573048 call!522996)))

(assert (=> b!6226268 (= e!3789793 e!3789792)))

(declare-fun b!6226269 () Bool)

(declare-fun res!2573046 () Bool)

(declare-fun e!3789788 () Bool)

(assert (=> b!6226269 (=> res!2573046 e!3789788)))

(assert (=> b!6226269 (= res!2573046 (not ((_ is Concat!25006) (regOne!32834 r!7292))))))

(assert (=> b!6226269 (= e!3789793 e!3789788)))

(declare-fun b!6226270 () Bool)

(declare-fun e!3789789 () Bool)

(assert (=> b!6226270 (= e!3789788 e!3789789)))

(declare-fun res!2573049 () Bool)

(assert (=> b!6226270 (=> (not res!2573049) (not e!3789789))))

(assert (=> b!6226270 (= res!2573049 call!522996)))

(declare-fun bm!522993 () Bool)

(assert (=> bm!522993 (= call!522996 call!522998)))

(declare-fun b!6226271 () Bool)

(assert (=> b!6226271 (= e!3789789 call!522997)))

(declare-fun b!6226272 () Bool)

(assert (=> b!6226272 (= e!3789787 call!522998)))

(assert (= (and d!1951758 (not res!2573050)) b!6226266))

(assert (= (and b!6226266 c!1125321) b!6226267))

(assert (= (and b!6226266 (not c!1125321)) b!6226265))

(assert (= (and b!6226267 res!2573047) b!6226272))

(assert (= (and b!6226265 c!1125320) b!6226268))

(assert (= (and b!6226265 (not c!1125320)) b!6226269))

(assert (= (and b!6226268 res!2573048) b!6226264))

(assert (= (and b!6226269 (not res!2573046)) b!6226270))

(assert (= (and b!6226270 res!2573049) b!6226271))

(assert (= (or b!6226264 b!6226271) bm!522991))

(assert (= (or b!6226268 b!6226270) bm!522993))

(assert (= (or b!6226272 bm!522993) bm!522992))

(declare-fun m!7053096 () Bool)

(assert (=> bm!522991 m!7053096))

(declare-fun m!7053098 () Bool)

(assert (=> b!6226267 m!7053098))

(declare-fun m!7053102 () Bool)

(assert (=> bm!522992 m!7053102))

(assert (=> d!1951574 d!1951758))

(declare-fun d!1951760 () Bool)

(assert (=> d!1951760 (= (isEmpty!36673 (tail!11915 s!2326)) ((_ is Nil!64660) (tail!11915 s!2326)))))

(assert (=> b!6225821 d!1951760))

(declare-fun d!1951762 () Bool)

(assert (=> d!1951762 (= (tail!11915 s!2326) (t!378320 s!2326))))

(assert (=> b!6225821 d!1951762))

(declare-fun d!1951766 () Bool)

(declare-fun res!2573055 () Bool)

(declare-fun e!3789797 () Bool)

(assert (=> d!1951766 (=> res!2573055 e!3789797)))

(assert (=> d!1951766 (= res!2573055 ((_ is ElementMatch!16161) (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))))))

(assert (=> d!1951766 (= (validRegex!7897 (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))) e!3789797)))

(declare-fun b!6226273 () Bool)

(declare-fun e!3789799 () Bool)

(declare-fun call!523000 () Bool)

(assert (=> b!6226273 (= e!3789799 call!523000)))

(declare-fun b!6226274 () Bool)

(declare-fun e!3789798 () Bool)

(declare-fun e!3789800 () Bool)

(assert (=> b!6226274 (= e!3789798 e!3789800)))

(declare-fun c!1125322 () Bool)

(assert (=> b!6226274 (= c!1125322 ((_ is Union!16161) (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))))))

(declare-fun b!6226275 () Bool)

(assert (=> b!6226275 (= e!3789797 e!3789798)))

(declare-fun c!1125323 () Bool)

(assert (=> b!6226275 (= c!1125323 ((_ is Star!16161) (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))))))

(declare-fun bm!522994 () Bool)

(assert (=> bm!522994 (= call!523000 (validRegex!7897 (ite c!1125322 (regTwo!32835 (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))) (regTwo!32834 (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))))))))

(declare-fun b!6226276 () Bool)

(declare-fun e!3789794 () Bool)

(assert (=> b!6226276 (= e!3789798 e!3789794)))

(declare-fun res!2573052 () Bool)

(assert (=> b!6226276 (= res!2573052 (not (nullable!6154 (reg!16490 (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))))))))

(assert (=> b!6226276 (=> (not res!2573052) (not e!3789794))))

(declare-fun bm!522995 () Bool)

(declare-fun call!523001 () Bool)

(assert (=> bm!522995 (= call!523001 (validRegex!7897 (ite c!1125323 (reg!16490 (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))) (ite c!1125322 (regOne!32835 (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292)))) (regOne!32834 (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292))))))))))

(declare-fun b!6226277 () Bool)

(declare-fun res!2573053 () Bool)

(assert (=> b!6226277 (=> (not res!2573053) (not e!3789799))))

(declare-fun call!522999 () Bool)

(assert (=> b!6226277 (= res!2573053 call!522999)))

(assert (=> b!6226277 (= e!3789800 e!3789799)))

(declare-fun b!6226278 () Bool)

(declare-fun res!2573051 () Bool)

(declare-fun e!3789795 () Bool)

(assert (=> b!6226278 (=> res!2573051 e!3789795)))

(assert (=> b!6226278 (= res!2573051 (not ((_ is Concat!25006) (ite c!1125163 (reg!16490 r!7292) (ite c!1125162 (regOne!32835 r!7292) (regOne!32834 r!7292))))))))

(assert (=> b!6226278 (= e!3789800 e!3789795)))

(declare-fun b!6226279 () Bool)

(declare-fun e!3789796 () Bool)

(assert (=> b!6226279 (= e!3789795 e!3789796)))

(declare-fun res!2573054 () Bool)

(assert (=> b!6226279 (=> (not res!2573054) (not e!3789796))))

(assert (=> b!6226279 (= res!2573054 call!522999)))

(declare-fun bm!522996 () Bool)

(assert (=> bm!522996 (= call!522999 call!523001)))

(declare-fun b!6226280 () Bool)

(assert (=> b!6226280 (= e!3789796 call!523000)))

(declare-fun b!6226281 () Bool)

(assert (=> b!6226281 (= e!3789794 call!523001)))

(assert (= (and d!1951766 (not res!2573055)) b!6226275))

(assert (= (and b!6226275 c!1125323) b!6226276))

(assert (= (and b!6226275 (not c!1125323)) b!6226274))

(assert (= (and b!6226276 res!2573052) b!6226281))

(assert (= (and b!6226274 c!1125322) b!6226277))

(assert (= (and b!6226274 (not c!1125322)) b!6226278))

(assert (= (and b!6226277 res!2573053) b!6226273))

(assert (= (and b!6226278 (not res!2573051)) b!6226279))

(assert (= (and b!6226279 res!2573054) b!6226280))

(assert (= (or b!6226273 b!6226280) bm!522994))

(assert (= (or b!6226277 b!6226279) bm!522996))

(assert (= (or b!6226281 bm!522996) bm!522995))

(declare-fun m!7053112 () Bool)

(assert (=> bm!522994 m!7053112))

(declare-fun m!7053114 () Bool)

(assert (=> b!6226276 m!7053114))

(declare-fun m!7053116 () Bool)

(assert (=> bm!522995 m!7053116))

(assert (=> bm!522886 d!1951766))

(declare-fun d!1951768 () Bool)

(assert (=> d!1951768 (= ($colon$colon!2030 (exprs!6045 lt!2345516) (ite (or c!1125203 c!1125207) (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (h!71106 (exprs!6045 (h!71107 zl!343))))) (Cons!64658 (ite (or c!1125203 c!1125207) (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (h!71106 (exprs!6045 (h!71107 zl!343)))) (exprs!6045 lt!2345516)))))

(assert (=> bm!522913 d!1951768))

(declare-fun d!1951772 () Bool)

(assert (=> d!1951772 (= (isEmpty!36673 (t!378320 s!2326)) ((_ is Nil!64660) (t!378320 s!2326)))))

(assert (=> d!1951650 d!1951772))

(assert (=> bs!1543687 d!1951618))

(declare-fun d!1951774 () Bool)

(declare-fun lambda!340428 () Int)

(declare-fun exists!2495 ((InoxSet Context!11090) Int) Bool)

(assert (=> d!1951774 (= (nullableZipper!1935 lt!2345527) (exists!2495 lt!2345527 lambda!340428))))

(declare-fun bs!1543753 () Bool)

(assert (= bs!1543753 d!1951774))

(declare-fun m!7053130 () Bool)

(assert (=> bs!1543753 m!7053130))

(assert (=> b!6225986 d!1951774))

(declare-fun d!1951778 () Bool)

(assert (=> d!1951778 (= (isUnion!1010 lt!2345614) ((_ is Union!16161) lt!2345614))))

(assert (=> b!6225920 d!1951778))

(declare-fun d!1951780 () Bool)

(assert (=> d!1951780 (= (nullable!6154 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))) (nullableFct!2110 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun bs!1543754 () Bool)

(assert (= bs!1543754 d!1951780))

(declare-fun m!7053150 () Bool)

(assert (=> bs!1543754 m!7053150))

(assert (=> b!6225875 d!1951780))

(declare-fun b!6226306 () Bool)

(declare-fun e!3789815 () (InoxSet Context!11090))

(assert (=> b!6226306 (= e!3789815 ((as const (Array Context!11090 Bool)) false))))

(declare-fun e!3789814 () (InoxSet Context!11090))

(declare-fun b!6226307 () Bool)

(declare-fun call!523003 () (InoxSet Context!11090))

(assert (=> b!6226307 (= e!3789814 ((_ map or) call!523003 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))))) (h!71108 s!2326))))))

(declare-fun d!1951784 () Bool)

(declare-fun c!1125333 () Bool)

(declare-fun e!3789816 () Bool)

(assert (=> d!1951784 (= c!1125333 e!3789816)))

(declare-fun res!2573066 () Bool)

(assert (=> d!1951784 (=> (not res!2573066) (not e!3789816))))

(assert (=> d!1951784 (= res!2573066 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))))))

(assert (=> d!1951784 (= (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (h!71108 s!2326)) e!3789814)))

(declare-fun b!6226308 () Bool)

(assert (=> b!6226308 (= e!3789814 e!3789815)))

(declare-fun c!1125334 () Bool)

(assert (=> b!6226308 (= c!1125334 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))))))

(declare-fun b!6226309 () Bool)

(assert (=> b!6226309 (= e!3789815 call!523003)))

(declare-fun bm!522998 () Bool)

(assert (=> bm!522998 (= call!523003 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))))) (h!71108 s!2326)))))

(declare-fun b!6226310 () Bool)

(assert (=> b!6226310 (= e!3789816 (nullable!6154 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))))))))

(assert (= (and d!1951784 res!2573066) b!6226310))

(assert (= (and d!1951784 c!1125333) b!6226307))

(assert (= (and d!1951784 (not c!1125333)) b!6226308))

(assert (= (and b!6226308 c!1125334) b!6226309))

(assert (= (and b!6226308 (not c!1125334)) b!6226306))

(assert (= (or b!6226307 b!6226309) bm!522998))

(declare-fun m!7053166 () Bool)

(assert (=> b!6226307 m!7053166))

(declare-fun m!7053168 () Bool)

(assert (=> bm!522998 m!7053168))

(declare-fun m!7053170 () Bool)

(assert (=> b!6226310 m!7053170))

(assert (=> b!6225837 d!1951784))

(declare-fun d!1951790 () Bool)

(declare-fun c!1125336 () Bool)

(assert (=> d!1951790 (= c!1125336 (isEmpty!36673 (tail!11915 (t!378320 s!2326))))))

(declare-fun e!3789818 () Bool)

(assert (=> d!1951790 (= (matchZipper!2173 (derivationStepZipper!2127 lt!2345519 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))) e!3789818)))

(declare-fun b!6226313 () Bool)

(assert (=> b!6226313 (= e!3789818 (nullableZipper!1935 (derivationStepZipper!2127 lt!2345519 (head!12830 (t!378320 s!2326)))))))

(declare-fun b!6226314 () Bool)

(assert (=> b!6226314 (= e!3789818 (matchZipper!2173 (derivationStepZipper!2127 (derivationStepZipper!2127 lt!2345519 (head!12830 (t!378320 s!2326))) (head!12830 (tail!11915 (t!378320 s!2326)))) (tail!11915 (tail!11915 (t!378320 s!2326)))))))

(assert (= (and d!1951790 c!1125336) b!6226313))

(assert (= (and d!1951790 (not c!1125336)) b!6226314))

(assert (=> d!1951790 m!7052590))

(declare-fun m!7053172 () Bool)

(assert (=> d!1951790 m!7053172))

(assert (=> b!6226313 m!7052896))

(declare-fun m!7053174 () Bool)

(assert (=> b!6226313 m!7053174))

(assert (=> b!6226314 m!7052590))

(declare-fun m!7053176 () Bool)

(assert (=> b!6226314 m!7053176))

(assert (=> b!6226314 m!7052896))

(assert (=> b!6226314 m!7053176))

(declare-fun m!7053180 () Bool)

(assert (=> b!6226314 m!7053180))

(assert (=> b!6226314 m!7052590))

(declare-fun m!7053182 () Bool)

(assert (=> b!6226314 m!7053182))

(assert (=> b!6226314 m!7053180))

(assert (=> b!6226314 m!7053182))

(declare-fun m!7053184 () Bool)

(assert (=> b!6226314 m!7053184))

(assert (=> b!6225991 d!1951790))

(declare-fun bs!1543759 () Bool)

(declare-fun d!1951794 () Bool)

(assert (= bs!1543759 (and d!1951794 b!6225256)))

(declare-fun lambda!340430 () Int)

(assert (=> bs!1543759 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340430 lambda!340339))))

(declare-fun bs!1543760 () Bool)

(assert (= bs!1543760 (and d!1951794 d!1951616)))

(assert (=> bs!1543760 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340430 lambda!340389))))

(assert (=> d!1951794 true))

(assert (=> d!1951794 (= (derivationStepZipper!2127 lt!2345519 (head!12830 (t!378320 s!2326))) (flatMap!1666 lt!2345519 lambda!340430))))

(declare-fun bs!1543761 () Bool)

(assert (= bs!1543761 d!1951794))

(declare-fun m!7053186 () Bool)

(assert (=> bs!1543761 m!7053186))

(assert (=> b!6225991 d!1951794))

(declare-fun d!1951798 () Bool)

(assert (=> d!1951798 (= (head!12830 (t!378320 s!2326)) (h!71108 (t!378320 s!2326)))))

(assert (=> b!6225991 d!1951798))

(declare-fun d!1951802 () Bool)

(assert (=> d!1951802 (= (tail!11915 (t!378320 s!2326)) (t!378320 (t!378320 s!2326)))))

(assert (=> b!6225991 d!1951802))

(declare-fun d!1951804 () Bool)

(assert (=> d!1951804 (= (head!12830 s!2326) (h!71108 s!2326))))

(assert (=> b!6225817 d!1951804))

(declare-fun b!6226326 () Bool)

(declare-fun res!2573069 () Bool)

(declare-fun e!3789826 () Bool)

(assert (=> b!6226326 (=> (not res!2573069) (not e!3789826))))

(declare-fun call!523010 () Bool)

(assert (=> b!6226326 (= res!2573069 (not call!523010))))

(declare-fun b!6226327 () Bool)

(declare-fun e!3789830 () Bool)

(declare-fun e!3789827 () Bool)

(assert (=> b!6226327 (= e!3789830 e!3789827)))

(declare-fun res!2573074 () Bool)

(assert (=> b!6226327 (=> res!2573074 e!3789827)))

(assert (=> b!6226327 (= res!2573074 call!523010)))

(declare-fun b!6226328 () Bool)

(declare-fun e!3789831 () Bool)

(assert (=> b!6226328 (= e!3789831 (nullable!6154 (regTwo!32834 r!7292)))))

(declare-fun b!6226329 () Bool)

(assert (=> b!6226329 (= e!3789831 (matchR!8344 (derivativeStep!4874 (regTwo!32834 r!7292) (head!12830 s!2326)) (tail!11915 s!2326)))))

(declare-fun b!6226330 () Bool)

(declare-fun e!3789829 () Bool)

(declare-fun e!3789825 () Bool)

(assert (=> b!6226330 (= e!3789829 e!3789825)))

(declare-fun c!1125343 () Bool)

(assert (=> b!6226330 (= c!1125343 ((_ is EmptyLang!16161) (regTwo!32834 r!7292)))))

(declare-fun b!6226331 () Bool)

(assert (=> b!6226331 (= e!3789827 (not (= (head!12830 s!2326) (c!1125039 (regTwo!32834 r!7292)))))))

(declare-fun b!6226332 () Bool)

(declare-fun res!2573070 () Bool)

(declare-fun e!3789828 () Bool)

(assert (=> b!6226332 (=> res!2573070 e!3789828)))

(assert (=> b!6226332 (= res!2573070 (not ((_ is ElementMatch!16161) (regTwo!32834 r!7292))))))

(assert (=> b!6226332 (= e!3789825 e!3789828)))

(declare-fun b!6226333 () Bool)

(declare-fun lt!2345634 () Bool)

(assert (=> b!6226333 (= e!3789829 (= lt!2345634 call!523010))))

(declare-fun b!6226334 () Bool)

(assert (=> b!6226334 (= e!3789828 e!3789830)))

(declare-fun res!2573068 () Bool)

(assert (=> b!6226334 (=> (not res!2573068) (not e!3789830))))

(assert (=> b!6226334 (= res!2573068 (not lt!2345634))))

(declare-fun b!6226335 () Bool)

(declare-fun res!2573075 () Bool)

(assert (=> b!6226335 (=> (not res!2573075) (not e!3789826))))

(assert (=> b!6226335 (= res!2573075 (isEmpty!36673 (tail!11915 s!2326)))))

(declare-fun b!6226336 () Bool)

(assert (=> b!6226336 (= e!3789826 (= (head!12830 s!2326) (c!1125039 (regTwo!32834 r!7292))))))

(declare-fun b!6226337 () Bool)

(declare-fun res!2573071 () Bool)

(assert (=> b!6226337 (=> res!2573071 e!3789828)))

(assert (=> b!6226337 (= res!2573071 e!3789826)))

(declare-fun res!2573073 () Bool)

(assert (=> b!6226337 (=> (not res!2573073) (not e!3789826))))

(assert (=> b!6226337 (= res!2573073 lt!2345634)))

(declare-fun bm!523005 () Bool)

(assert (=> bm!523005 (= call!523010 (isEmpty!36673 s!2326))))

(declare-fun d!1951806 () Bool)

(assert (=> d!1951806 e!3789829))

(declare-fun c!1125342 () Bool)

(assert (=> d!1951806 (= c!1125342 ((_ is EmptyExpr!16161) (regTwo!32834 r!7292)))))

(assert (=> d!1951806 (= lt!2345634 e!3789831)))

(declare-fun c!1125344 () Bool)

(assert (=> d!1951806 (= c!1125344 (isEmpty!36673 s!2326))))

(assert (=> d!1951806 (validRegex!7897 (regTwo!32834 r!7292))))

(assert (=> d!1951806 (= (matchR!8344 (regTwo!32834 r!7292) s!2326) lt!2345634)))

(declare-fun b!6226338 () Bool)

(assert (=> b!6226338 (= e!3789825 (not lt!2345634))))

(declare-fun b!6226339 () Bool)

(declare-fun res!2573072 () Bool)

(assert (=> b!6226339 (=> res!2573072 e!3789827)))

(assert (=> b!6226339 (= res!2573072 (not (isEmpty!36673 (tail!11915 s!2326))))))

(assert (= (and d!1951806 c!1125344) b!6226328))

(assert (= (and d!1951806 (not c!1125344)) b!6226329))

(assert (= (and d!1951806 c!1125342) b!6226333))

(assert (= (and d!1951806 (not c!1125342)) b!6226330))

(assert (= (and b!6226330 c!1125343) b!6226338))

(assert (= (and b!6226330 (not c!1125343)) b!6226332))

(assert (= (and b!6226332 (not res!2573070)) b!6226337))

(assert (= (and b!6226337 res!2573073) b!6226326))

(assert (= (and b!6226326 res!2573069) b!6226335))

(assert (= (and b!6226335 res!2573075) b!6226336))

(assert (= (and b!6226337 (not res!2573071)) b!6226334))

(assert (= (and b!6226334 res!2573068) b!6226327))

(assert (= (and b!6226327 (not res!2573074)) b!6226339))

(assert (= (and b!6226339 (not res!2573072)) b!6226331))

(assert (= (or b!6226333 b!6226326 b!6226327) bm!523005))

(assert (=> bm!523005 m!7052732))

(declare-fun m!7053198 () Bool)

(assert (=> b!6226328 m!7053198))

(assert (=> b!6226331 m!7052736))

(assert (=> b!6226329 m!7052736))

(assert (=> b!6226329 m!7052736))

(declare-fun m!7053200 () Bool)

(assert (=> b!6226329 m!7053200))

(assert (=> b!6226329 m!7052740))

(assert (=> b!6226329 m!7053200))

(assert (=> b!6226329 m!7052740))

(declare-fun m!7053204 () Bool)

(assert (=> b!6226329 m!7053204))

(assert (=> b!6226336 m!7052736))

(assert (=> b!6226339 m!7052740))

(assert (=> b!6226339 m!7052740))

(assert (=> b!6226339 m!7052744))

(assert (=> d!1951806 m!7052732))

(declare-fun m!7053208 () Bool)

(assert (=> d!1951806 m!7053208))

(assert (=> b!6226335 m!7052740))

(assert (=> b!6226335 m!7052740))

(assert (=> b!6226335 m!7052744))

(assert (=> b!6225575 d!1951806))

(declare-fun b!6226342 () Bool)

(declare-fun e!3789834 () (InoxSet Context!11090))

(assert (=> b!6226342 (= e!3789834 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226343 () Bool)

(declare-fun call!523011 () (InoxSet Context!11090))

(declare-fun e!3789833 () (InoxSet Context!11090))

(assert (=> b!6226343 (= e!3789833 ((_ map or) call!523011 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345517)))))) (h!71108 s!2326))))))

(declare-fun d!1951810 () Bool)

(declare-fun c!1125346 () Bool)

(declare-fun e!3789835 () Bool)

(assert (=> d!1951810 (= c!1125346 e!3789835)))

(declare-fun res!2573076 () Bool)

(assert (=> d!1951810 (=> (not res!2573076) (not e!3789835))))

(assert (=> d!1951810 (= res!2573076 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345517))))))))

(assert (=> d!1951810 (= (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 lt!2345517))) (h!71108 s!2326)) e!3789833)))

(declare-fun b!6226344 () Bool)

(assert (=> b!6226344 (= e!3789833 e!3789834)))

(declare-fun c!1125347 () Bool)

(assert (=> b!6226344 (= c!1125347 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345517))))))))

(declare-fun b!6226345 () Bool)

(assert (=> b!6226345 (= e!3789834 call!523011)))

(declare-fun bm!523006 () Bool)

(assert (=> bm!523006 (= call!523011 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345517))))) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345517)))))) (h!71108 s!2326)))))

(declare-fun b!6226346 () Bool)

(assert (=> b!6226346 (= e!3789835 (nullable!6154 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345517)))))))))

(assert (= (and d!1951810 res!2573076) b!6226346))

(assert (= (and d!1951810 c!1125346) b!6226343))

(assert (= (and d!1951810 (not c!1125346)) b!6226344))

(assert (= (and b!6226344 c!1125347) b!6226345))

(assert (= (and b!6226344 (not c!1125347)) b!6226342))

(assert (= (or b!6226343 b!6226345) bm!523006))

(declare-fun m!7053212 () Bool)

(assert (=> b!6226343 m!7053212))

(declare-fun m!7053214 () Bool)

(assert (=> bm!523006 m!7053214))

(declare-fun m!7053216 () Bool)

(assert (=> b!6226346 m!7053216))

(assert (=> b!6225885 d!1951810))

(declare-fun d!1951814 () Bool)

(declare-fun res!2573082 () Bool)

(declare-fun e!3789844 () Bool)

(assert (=> d!1951814 (=> res!2573082 e!3789844)))

(assert (=> d!1951814 (= res!2573082 ((_ is Nil!64658) (exprs!6045 setElem!42302)))))

(assert (=> d!1951814 (= (forall!15275 (exprs!6045 setElem!42302) lambda!340398) e!3789844)))

(declare-fun b!6226358 () Bool)

(declare-fun e!3789845 () Bool)

(assert (=> b!6226358 (= e!3789844 e!3789845)))

(declare-fun res!2573083 () Bool)

(assert (=> b!6226358 (=> (not res!2573083) (not e!3789845))))

(declare-fun dynLambda!25516 (Int Regex!16161) Bool)

(assert (=> b!6226358 (= res!2573083 (dynLambda!25516 lambda!340398 (h!71106 (exprs!6045 setElem!42302))))))

(declare-fun b!6226359 () Bool)

(assert (=> b!6226359 (= e!3789845 (forall!15275 (t!378318 (exprs!6045 setElem!42302)) lambda!340398))))

(assert (= (and d!1951814 (not res!2573082)) b!6226358))

(assert (= (and b!6226358 res!2573083) b!6226359))

(declare-fun b_lambda!236725 () Bool)

(assert (=> (not b_lambda!236725) (not b!6226358)))

(declare-fun m!7053236 () Bool)

(assert (=> b!6226358 m!7053236))

(declare-fun m!7053238 () Bool)

(assert (=> b!6226359 m!7053238))

(assert (=> d!1951626 d!1951814))

(assert (=> d!1951568 d!1951550))

(declare-fun d!1951828 () Bool)

(assert (=> d!1951828 (= (Exists!3231 lambda!340370) (choose!46267 lambda!340370))))

(declare-fun bs!1543772 () Bool)

(assert (= bs!1543772 d!1951828))

(declare-fun m!7053240 () Bool)

(assert (=> bs!1543772 m!7053240))

(assert (=> d!1951568 d!1951828))

(assert (=> d!1951568 d!1951758))

(assert (=> d!1951568 d!1951586))

(declare-fun bs!1543789 () Bool)

(declare-fun d!1951830 () Bool)

(assert (= bs!1543789 (and d!1951830 d!1951574)))

(declare-fun lambda!340437 () Int)

(assert (=> bs!1543789 (= lambda!340437 lambda!340379)))

(declare-fun bs!1543790 () Bool)

(assert (= bs!1543790 (and d!1951830 b!6226192)))

(assert (=> bs!1543790 (not (= lambda!340437 lambda!340416))))

(declare-fun bs!1543791 () Bool)

(assert (= bs!1543791 (and d!1951830 d!1951742)))

(assert (=> bs!1543791 (not (= lambda!340437 lambda!340424))))

(declare-fun bs!1543792 () Bool)

(assert (= bs!1543792 (and d!1951830 b!6225783)))

(assert (=> bs!1543792 (not (= lambda!340437 lambda!340385))))

(declare-fun bs!1543793 () Bool)

(assert (= bs!1543793 (and d!1951830 b!6225265)))

(assert (=> bs!1543793 (= lambda!340437 lambda!340337)))

(assert (=> bs!1543791 (= lambda!340437 lambda!340423)))

(declare-fun bs!1543794 () Bool)

(assert (= bs!1543794 (and d!1951830 b!6226197)))

(assert (=> bs!1543794 (not (= lambda!340437 lambda!340415))))

(assert (=> bs!1543793 (not (= lambda!340437 lambda!340338))))

(declare-fun bs!1543798 () Bool)

(assert (= bs!1543798 (and d!1951830 d!1951568)))

(assert (=> bs!1543798 (= lambda!340437 lambda!340370)))

(declare-fun bs!1543800 () Bool)

(assert (= bs!1543800 (and d!1951830 b!6225778)))

(assert (=> bs!1543800 (not (= lambda!340437 lambda!340386))))

(assert (=> bs!1543789 (not (= lambda!340437 lambda!340380))))

(assert (=> d!1951830 true))

(assert (=> d!1951830 true))

(assert (=> d!1951830 true))

(assert (=> d!1951830 (= (isDefined!12755 (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) Nil!64660 s!2326 s!2326)) (Exists!3231 lambda!340437))))

(assert (=> d!1951830 true))

(declare-fun _$89!2404 () Unit!157975)

(assert (=> d!1951830 (= (choose!46268 (regOne!32834 r!7292) (regTwo!32834 r!7292) s!2326) _$89!2404)))

(declare-fun bs!1543802 () Bool)

(assert (= bs!1543802 d!1951830))

(assert (=> bs!1543802 m!7052336))

(assert (=> bs!1543802 m!7052336))

(assert (=> bs!1543802 m!7052338))

(declare-fun m!7053296 () Bool)

(assert (=> bs!1543802 m!7053296))

(assert (=> d!1951568 d!1951830))

(declare-fun d!1951868 () Bool)

(declare-fun res!2573100 () Bool)

(declare-fun e!3789875 () Bool)

(assert (=> d!1951868 (=> res!2573100 e!3789875)))

(assert (=> d!1951868 (= res!2573100 ((_ is Nil!64658) (exprs!6045 lt!2345517)))))

(assert (=> d!1951868 (= (forall!15275 (exprs!6045 lt!2345517) lambda!340403) e!3789875)))

(declare-fun b!6226406 () Bool)

(declare-fun e!3789876 () Bool)

(assert (=> b!6226406 (= e!3789875 e!3789876)))

(declare-fun res!2573101 () Bool)

(assert (=> b!6226406 (=> (not res!2573101) (not e!3789876))))

(assert (=> b!6226406 (= res!2573101 (dynLambda!25516 lambda!340403 (h!71106 (exprs!6045 lt!2345517))))))

(declare-fun b!6226407 () Bool)

(assert (=> b!6226407 (= e!3789876 (forall!15275 (t!378318 (exprs!6045 lt!2345517)) lambda!340403))))

(assert (= (and d!1951868 (not res!2573100)) b!6226406))

(assert (= (and b!6226406 res!2573101) b!6226407))

(declare-fun b_lambda!236731 () Bool)

(assert (=> (not b_lambda!236731) (not b!6226406)))

(declare-fun m!7053302 () Bool)

(assert (=> b!6226406 m!7053302))

(declare-fun m!7053304 () Bool)

(assert (=> b!6226407 m!7053304))

(assert (=> d!1951634 d!1951868))

(declare-fun c!1125369 () Bool)

(declare-fun c!1125373 () Bool)

(declare-fun bm!523025 () Bool)

(declare-fun call!523032 () List!64782)

(assert (=> bm!523025 (= call!523032 ($colon$colon!2030 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345515)))) (ite (or c!1125369 c!1125373) (regTwo!32834 (h!71106 (exprs!6045 lt!2345515))) (h!71106 (exprs!6045 lt!2345515)))))))

(declare-fun bm!523026 () Bool)

(declare-fun call!523030 () (InoxSet Context!11090))

(declare-fun c!1125371 () Bool)

(assert (=> bm!523026 (= call!523030 (derivationStepZipperDown!1409 (ite c!1125371 (regTwo!32835 (h!71106 (exprs!6045 lt!2345515))) (regOne!32834 (h!71106 (exprs!6045 lt!2345515)))) (ite c!1125371 (Context!11091 (t!378318 (exprs!6045 lt!2345515))) (Context!11091 call!523032)) (h!71108 s!2326)))))

(declare-fun b!6226422 () Bool)

(declare-fun e!3789889 () (InoxSet Context!11090))

(assert (=> b!6226422 (= e!3789889 (store ((as const (Array Context!11090 Bool)) false) (Context!11091 (t!378318 (exprs!6045 lt!2345515))) true))))

(declare-fun call!523034 () List!64782)

(declare-fun bm!523027 () Bool)

(declare-fun call!523031 () (InoxSet Context!11090))

(assert (=> bm!523027 (= call!523031 (derivationStepZipperDown!1409 (ite c!1125371 (regOne!32835 (h!71106 (exprs!6045 lt!2345515))) (ite c!1125369 (regTwo!32834 (h!71106 (exprs!6045 lt!2345515))) (ite c!1125373 (regOne!32834 (h!71106 (exprs!6045 lt!2345515))) (reg!16490 (h!71106 (exprs!6045 lt!2345515)))))) (ite (or c!1125371 c!1125369) (Context!11091 (t!378318 (exprs!6045 lt!2345515))) (Context!11091 call!523034)) (h!71108 s!2326)))))

(declare-fun b!6226423 () Bool)

(declare-fun c!1125372 () Bool)

(assert (=> b!6226423 (= c!1125372 ((_ is Star!16161) (h!71106 (exprs!6045 lt!2345515))))))

(declare-fun e!3789884 () (InoxSet Context!11090))

(declare-fun e!3789885 () (InoxSet Context!11090))

(assert (=> b!6226423 (= e!3789884 e!3789885)))

(declare-fun b!6226424 () Bool)

(declare-fun call!523033 () (InoxSet Context!11090))

(assert (=> b!6226424 (= e!3789885 call!523033)))

(declare-fun d!1951872 () Bool)

(declare-fun c!1125370 () Bool)

(assert (=> d!1951872 (= c!1125370 (and ((_ is ElementMatch!16161) (h!71106 (exprs!6045 lt!2345515))) (= (c!1125039 (h!71106 (exprs!6045 lt!2345515))) (h!71108 s!2326))))))

(assert (=> d!1951872 (= (derivationStepZipperDown!1409 (h!71106 (exprs!6045 lt!2345515)) (Context!11091 (t!378318 (exprs!6045 lt!2345515))) (h!71108 s!2326)) e!3789889)))

(declare-fun bm!523028 () Bool)

(assert (=> bm!523028 (= call!523034 call!523032)))

(declare-fun b!6226425 () Bool)

(declare-fun e!3789887 () Bool)

(assert (=> b!6226425 (= c!1125369 e!3789887)))

(declare-fun res!2573110 () Bool)

(assert (=> b!6226425 (=> (not res!2573110) (not e!3789887))))

(assert (=> b!6226425 (= res!2573110 ((_ is Concat!25006) (h!71106 (exprs!6045 lt!2345515))))))

(declare-fun e!3789886 () (InoxSet Context!11090))

(declare-fun e!3789888 () (InoxSet Context!11090))

(assert (=> b!6226425 (= e!3789886 e!3789888)))

(declare-fun b!6226426 () Bool)

(assert (=> b!6226426 (= e!3789885 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226427 () Bool)

(assert (=> b!6226427 (= e!3789886 ((_ map or) call!523031 call!523030))))

(declare-fun b!6226428 () Bool)

(assert (=> b!6226428 (= e!3789888 e!3789884)))

(assert (=> b!6226428 (= c!1125373 ((_ is Concat!25006) (h!71106 (exprs!6045 lt!2345515))))))

(declare-fun bm!523029 () Bool)

(declare-fun call!523035 () (InoxSet Context!11090))

(assert (=> bm!523029 (= call!523033 call!523035)))

(declare-fun bm!523030 () Bool)

(assert (=> bm!523030 (= call!523035 call!523031)))

(declare-fun b!6226429 () Bool)

(assert (=> b!6226429 (= e!3789887 (nullable!6154 (regOne!32834 (h!71106 (exprs!6045 lt!2345515)))))))

(declare-fun b!6226430 () Bool)

(assert (=> b!6226430 (= e!3789889 e!3789886)))

(assert (=> b!6226430 (= c!1125371 ((_ is Union!16161) (h!71106 (exprs!6045 lt!2345515))))))

(declare-fun b!6226431 () Bool)

(assert (=> b!6226431 (= e!3789884 call!523033)))

(declare-fun b!6226432 () Bool)

(assert (=> b!6226432 (= e!3789888 ((_ map or) call!523030 call!523035))))

(assert (= (and d!1951872 c!1125370) b!6226422))

(assert (= (and d!1951872 (not c!1125370)) b!6226430))

(assert (= (and b!6226430 c!1125371) b!6226427))

(assert (= (and b!6226430 (not c!1125371)) b!6226425))

(assert (= (and b!6226425 res!2573110) b!6226429))

(assert (= (and b!6226425 c!1125369) b!6226432))

(assert (= (and b!6226425 (not c!1125369)) b!6226428))

(assert (= (and b!6226428 c!1125373) b!6226431))

(assert (= (and b!6226428 (not c!1125373)) b!6226423))

(assert (= (and b!6226423 c!1125372) b!6226424))

(assert (= (and b!6226423 (not c!1125372)) b!6226426))

(assert (= (or b!6226431 b!6226424) bm!523028))

(assert (= (or b!6226431 b!6226424) bm!523029))

(assert (= (or b!6226432 bm!523028) bm!523025))

(assert (= (or b!6226432 bm!523029) bm!523030))

(assert (= (or b!6226427 b!6226432) bm!523026))

(assert (= (or b!6226427 bm!523030) bm!523027))

(declare-fun m!7053320 () Bool)

(assert (=> bm!523027 m!7053320))

(declare-fun m!7053322 () Bool)

(assert (=> b!6226429 m!7053322))

(declare-fun m!7053324 () Bool)

(assert (=> bm!523025 m!7053324))

(declare-fun m!7053326 () Bool)

(assert (=> bm!523026 m!7053326))

(declare-fun m!7053328 () Bool)

(assert (=> b!6226422 m!7053328))

(assert (=> bm!522921 d!1951872))

(declare-fun d!1951876 () Bool)

(assert (=> d!1951876 (= (nullable!6154 (h!71106 (exprs!6045 lt!2345517))) (nullableFct!2110 (h!71106 (exprs!6045 lt!2345517))))))

(declare-fun bs!1543803 () Bool)

(assert (= bs!1543803 d!1951876))

(declare-fun m!7053330 () Bool)

(assert (=> bs!1543803 m!7053330))

(assert (=> b!6225888 d!1951876))

(declare-fun bs!1543804 () Bool)

(declare-fun d!1951878 () Bool)

(assert (= bs!1543804 (and d!1951878 d!1951622)))

(declare-fun lambda!340439 () Int)

(assert (=> bs!1543804 (= lambda!340439 lambda!340392)))

(declare-fun bs!1543805 () Bool)

(assert (= bs!1543805 (and d!1951878 d!1951634)))

(assert (=> bs!1543805 (= lambda!340439 lambda!340403)))

(declare-fun bs!1543806 () Bool)

(assert (= bs!1543806 (and d!1951878 d!1951628)))

(assert (=> bs!1543806 (= lambda!340439 lambda!340399)))

(declare-fun bs!1543807 () Bool)

(assert (= bs!1543807 (and d!1951878 d!1951626)))

(assert (=> bs!1543807 (= lambda!340439 lambda!340398)))

(declare-fun bs!1543808 () Bool)

(assert (= bs!1543808 (and d!1951878 d!1951632)))

(assert (=> bs!1543808 (= lambda!340439 lambda!340402)))

(declare-fun bs!1543809 () Bool)

(assert (= bs!1543809 (and d!1951878 d!1951624)))

(assert (=> bs!1543809 (= lambda!340439 lambda!340395)))

(declare-fun b!6226433 () Bool)

(declare-fun e!3789892 () Bool)

(declare-fun lt!2345636 () Regex!16161)

(assert (=> b!6226433 (= e!3789892 (= lt!2345636 (head!12831 (t!378318 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun b!6226434 () Bool)

(assert (=> b!6226434 (= e!3789892 (isConcat!1094 lt!2345636))))

(declare-fun b!6226435 () Bool)

(declare-fun e!3789894 () Bool)

(assert (=> b!6226435 (= e!3789894 (isEmpty!36670 (t!378318 (t!378318 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun e!3789895 () Bool)

(assert (=> d!1951878 e!3789895))

(declare-fun res!2573111 () Bool)

(assert (=> d!1951878 (=> (not res!2573111) (not e!3789895))))

(assert (=> d!1951878 (= res!2573111 (validRegex!7897 lt!2345636))))

(declare-fun e!3789893 () Regex!16161)

(assert (=> d!1951878 (= lt!2345636 e!3789893)))

(declare-fun c!1125375 () Bool)

(assert (=> d!1951878 (= c!1125375 e!3789894)))

(declare-fun res!2573112 () Bool)

(assert (=> d!1951878 (=> (not res!2573112) (not e!3789894))))

(assert (=> d!1951878 (= res!2573112 ((_ is Cons!64658) (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(assert (=> d!1951878 (forall!15275 (t!378318 (exprs!6045 (h!71107 zl!343))) lambda!340439)))

(assert (=> d!1951878 (= (generalisedConcat!1758 (t!378318 (exprs!6045 (h!71107 zl!343)))) lt!2345636)))

(declare-fun b!6226436 () Bool)

(declare-fun e!3789890 () Regex!16161)

(assert (=> b!6226436 (= e!3789890 EmptyExpr!16161)))

(declare-fun b!6226437 () Bool)

(assert (=> b!6226437 (= e!3789893 e!3789890)))

(declare-fun c!1125376 () Bool)

(assert (=> b!6226437 (= c!1125376 ((_ is Cons!64658) (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6226438 () Bool)

(assert (=> b!6226438 (= e!3789890 (Concat!25006 (h!71106 (t!378318 (exprs!6045 (h!71107 zl!343)))) (generalisedConcat!1758 (t!378318 (t!378318 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun b!6226439 () Bool)

(declare-fun e!3789891 () Bool)

(assert (=> b!6226439 (= e!3789895 e!3789891)))

(declare-fun c!1125374 () Bool)

(assert (=> b!6226439 (= c!1125374 (isEmpty!36670 (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6226440 () Bool)

(assert (=> b!6226440 (= e!3789891 e!3789892)))

(declare-fun c!1125377 () Bool)

(assert (=> b!6226440 (= c!1125377 (isEmpty!36670 (tail!11916 (t!378318 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun b!6226441 () Bool)

(assert (=> b!6226441 (= e!3789893 (h!71106 (t!378318 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6226442 () Bool)

(assert (=> b!6226442 (= e!3789891 (isEmptyExpr!1571 lt!2345636))))

(assert (= (and d!1951878 res!2573112) b!6226435))

(assert (= (and d!1951878 c!1125375) b!6226441))

(assert (= (and d!1951878 (not c!1125375)) b!6226437))

(assert (= (and b!6226437 c!1125376) b!6226438))

(assert (= (and b!6226437 (not c!1125376)) b!6226436))

(assert (= (and d!1951878 res!2573111) b!6226439))

(assert (= (and b!6226439 c!1125374) b!6226442))

(assert (= (and b!6226439 (not c!1125374)) b!6226440))

(assert (= (and b!6226440 c!1125377) b!6226433))

(assert (= (and b!6226440 (not c!1125377)) b!6226434))

(declare-fun m!7053332 () Bool)

(assert (=> b!6226440 m!7053332))

(assert (=> b!6226440 m!7053332))

(declare-fun m!7053334 () Bool)

(assert (=> b!6226440 m!7053334))

(declare-fun m!7053336 () Bool)

(assert (=> b!6226442 m!7053336))

(assert (=> b!6226439 m!7052332))

(declare-fun m!7053338 () Bool)

(assert (=> b!6226438 m!7053338))

(declare-fun m!7053340 () Bool)

(assert (=> b!6226434 m!7053340))

(declare-fun m!7053342 () Bool)

(assert (=> b!6226435 m!7053342))

(declare-fun m!7053344 () Bool)

(assert (=> d!1951878 m!7053344))

(declare-fun m!7053346 () Bool)

(assert (=> d!1951878 m!7053346))

(declare-fun m!7053348 () Bool)

(assert (=> b!6226433 m!7053348))

(assert (=> b!6225957 d!1951878))

(declare-fun d!1951880 () Bool)

(declare-fun c!1125378 () Bool)

(assert (=> d!1951880 (= c!1125378 (isEmpty!36673 (t!378320 s!2326)))))

(declare-fun e!3789896 () Bool)

(assert (=> d!1951880 (= (matchZipper!2173 ((_ map or) lt!2345519 lt!2345535) (t!378320 s!2326)) e!3789896)))

(declare-fun b!6226443 () Bool)

(assert (=> b!6226443 (= e!3789896 (nullableZipper!1935 ((_ map or) lt!2345519 lt!2345535)))))

(declare-fun b!6226444 () Bool)

(assert (=> b!6226444 (= e!3789896 (matchZipper!2173 (derivationStepZipper!2127 ((_ map or) lt!2345519 lt!2345535) (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))))))

(assert (= (and d!1951880 c!1125378) b!6226443))

(assert (= (and d!1951880 (not c!1125378)) b!6226444))

(assert (=> d!1951880 m!7052582))

(declare-fun m!7053350 () Bool)

(assert (=> b!6226443 m!7053350))

(assert (=> b!6226444 m!7052586))

(assert (=> b!6226444 m!7052586))

(declare-fun m!7053352 () Bool)

(assert (=> b!6226444 m!7053352))

(assert (=> b!6226444 m!7052590))

(assert (=> b!6226444 m!7053352))

(assert (=> b!6226444 m!7052590))

(declare-fun m!7053354 () Bool)

(assert (=> b!6226444 m!7053354))

(assert (=> d!1951652 d!1951880))

(assert (=> d!1951652 d!1951650))

(declare-fun e!3789909 () Bool)

(declare-fun d!1951882 () Bool)

(assert (=> d!1951882 (= (matchZipper!2173 ((_ map or) lt!2345519 lt!2345535) (t!378320 s!2326)) e!3789909)))

(declare-fun res!2573115 () Bool)

(assert (=> d!1951882 (=> res!2573115 e!3789909)))

(assert (=> d!1951882 (= res!2573115 (matchZipper!2173 lt!2345519 (t!378320 s!2326)))))

(assert (=> d!1951882 true))

(declare-fun _$48!1922 () Unit!157975)

(assert (=> d!1951882 (= (choose!46273 lt!2345519 lt!2345535 (t!378320 s!2326)) _$48!1922)))

(declare-fun b!6226467 () Bool)

(assert (=> b!6226467 (= e!3789909 (matchZipper!2173 lt!2345535 (t!378320 s!2326)))))

(assert (= (and d!1951882 (not res!2573115)) b!6226467))

(assert (=> d!1951882 m!7052900))

(assert (=> d!1951882 m!7052378))

(assert (=> b!6226467 m!7052348))

(assert (=> d!1951652 d!1951882))

(declare-fun bs!1543810 () Bool)

(declare-fun d!1951884 () Bool)

(assert (= bs!1543810 (and d!1951884 d!1951774)))

(declare-fun lambda!340440 () Int)

(assert (=> bs!1543810 (= lambda!340440 lambda!340428)))

(assert (=> d!1951884 (= (nullableZipper!1935 lt!2345524) (exists!2495 lt!2345524 lambda!340440))))

(declare-fun bs!1543811 () Bool)

(assert (= bs!1543811 d!1951884))

(declare-fun m!7053356 () Bool)

(assert (=> bs!1543811 m!7053356))

(assert (=> b!6225988 d!1951884))

(declare-fun bm!523039 () Bool)

(declare-fun call!523046 () List!64782)

(declare-fun c!1125393 () Bool)

(declare-fun c!1125389 () Bool)

(assert (=> bm!523039 (= call!523046 ($colon$colon!2030 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343))))) (ite (or c!1125389 c!1125393) (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (h!71106 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun call!523044 () (InoxSet Context!11090))

(declare-fun bm!523040 () Bool)

(declare-fun c!1125391 () Bool)

(assert (=> bm!523040 (= call!523044 (derivationStepZipperDown!1409 (ite c!1125391 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))) (ite c!1125391 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))) (Context!11091 call!523046)) (h!71108 s!2326)))))

(declare-fun b!6226468 () Bool)

(declare-fun e!3789915 () (InoxSet Context!11090))

(assert (=> b!6226468 (= e!3789915 (store ((as const (Array Context!11090 Bool)) false) (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))) true))))

(declare-fun bm!523041 () Bool)

(declare-fun call!523048 () List!64782)

(declare-fun call!523045 () (InoxSet Context!11090))

(assert (=> bm!523041 (= call!523045 (derivationStepZipperDown!1409 (ite c!1125391 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125389 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125393 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343))))))) (ite (or c!1125391 c!1125389) (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))) (Context!11091 call!523048)) (h!71108 s!2326)))))

(declare-fun b!6226469 () Bool)

(declare-fun c!1125392 () Bool)

(assert (=> b!6226469 (= c!1125392 ((_ is Star!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun e!3789910 () (InoxSet Context!11090))

(declare-fun e!3789911 () (InoxSet Context!11090))

(assert (=> b!6226469 (= e!3789910 e!3789911)))

(declare-fun b!6226470 () Bool)

(declare-fun call!523047 () (InoxSet Context!11090))

(assert (=> b!6226470 (= e!3789911 call!523047)))

(declare-fun d!1951886 () Bool)

(declare-fun c!1125390 () Bool)

(assert (=> d!1951886 (= c!1125390 (and ((_ is ElementMatch!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))) (= (c!1125039 (h!71106 (exprs!6045 (h!71107 zl!343)))) (h!71108 s!2326))))))

(assert (=> d!1951886 (= (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (h!71107 zl!343))) (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))) (h!71108 s!2326)) e!3789915)))

(declare-fun bm!523042 () Bool)

(assert (=> bm!523042 (= call!523048 call!523046)))

(declare-fun b!6226471 () Bool)

(declare-fun e!3789913 () Bool)

(assert (=> b!6226471 (= c!1125389 e!3789913)))

(declare-fun res!2573116 () Bool)

(assert (=> b!6226471 (=> (not res!2573116) (not e!3789913))))

(assert (=> b!6226471 (= res!2573116 ((_ is Concat!25006) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun e!3789912 () (InoxSet Context!11090))

(declare-fun e!3789914 () (InoxSet Context!11090))

(assert (=> b!6226471 (= e!3789912 e!3789914)))

(declare-fun b!6226472 () Bool)

(assert (=> b!6226472 (= e!3789911 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226473 () Bool)

(assert (=> b!6226473 (= e!3789912 ((_ map or) call!523045 call!523044))))

(declare-fun b!6226474 () Bool)

(assert (=> b!6226474 (= e!3789914 e!3789910)))

(assert (=> b!6226474 (= c!1125393 ((_ is Concat!25006) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun bm!523043 () Bool)

(declare-fun call!523049 () (InoxSet Context!11090))

(assert (=> bm!523043 (= call!523047 call!523049)))

(declare-fun bm!523044 () Bool)

(assert (=> bm!523044 (= call!523049 call!523045)))

(declare-fun b!6226475 () Bool)

(assert (=> b!6226475 (= e!3789913 (nullable!6154 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))))))

(declare-fun b!6226476 () Bool)

(assert (=> b!6226476 (= e!3789915 e!3789912)))

(assert (=> b!6226476 (= c!1125391 ((_ is Union!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6226477 () Bool)

(assert (=> b!6226477 (= e!3789910 call!523047)))

(declare-fun b!6226478 () Bool)

(assert (=> b!6226478 (= e!3789914 ((_ map or) call!523044 call!523049))))

(assert (= (and d!1951886 c!1125390) b!6226468))

(assert (= (and d!1951886 (not c!1125390)) b!6226476))

(assert (= (and b!6226476 c!1125391) b!6226473))

(assert (= (and b!6226476 (not c!1125391)) b!6226471))

(assert (= (and b!6226471 res!2573116) b!6226475))

(assert (= (and b!6226471 c!1125389) b!6226478))

(assert (= (and b!6226471 (not c!1125389)) b!6226474))

(assert (= (and b!6226474 c!1125393) b!6226477))

(assert (= (and b!6226474 (not c!1125393)) b!6226469))

(assert (= (and b!6226469 c!1125392) b!6226470))

(assert (= (and b!6226469 (not c!1125392)) b!6226472))

(assert (= (or b!6226477 b!6226470) bm!523042))

(assert (= (or b!6226477 b!6226470) bm!523043))

(assert (= (or b!6226478 bm!523042) bm!523039))

(assert (= (or b!6226478 bm!523043) bm!523044))

(assert (= (or b!6226473 b!6226478) bm!523040))

(assert (= (or b!6226473 bm!523044) bm!523041))

(declare-fun m!7053358 () Bool)

(assert (=> bm!523041 m!7053358))

(assert (=> b!6226475 m!7052764))

(declare-fun m!7053360 () Bool)

(assert (=> bm!523039 m!7053360))

(declare-fun m!7053362 () Bool)

(assert (=> bm!523040 m!7053362))

(declare-fun m!7053364 () Bool)

(assert (=> b!6226468 m!7053364))

(assert (=> bm!522900 d!1951886))

(declare-fun d!1951888 () Bool)

(assert (=> d!1951888 true))

(declare-fun setRes!42311 () Bool)

(assert (=> d!1951888 setRes!42311))

(declare-fun condSetEmpty!42311 () Bool)

(declare-fun res!2573119 () (InoxSet Context!11090))

(assert (=> d!1951888 (= condSetEmpty!42311 (= res!2573119 ((as const (Array Context!11090 Bool)) false)))))

(assert (=> d!1951888 (= (choose!46271 z!1189 lambda!340339) res!2573119)))

(declare-fun setIsEmpty!42311 () Bool)

(assert (=> setIsEmpty!42311 setRes!42311))

(declare-fun e!3789918 () Bool)

(declare-fun setElem!42311 () Context!11090)

(declare-fun tp!1736577 () Bool)

(declare-fun setNonEmpty!42311 () Bool)

(assert (=> setNonEmpty!42311 (= setRes!42311 (and tp!1736577 (inv!83649 setElem!42311) e!3789918))))

(declare-fun setRest!42311 () (InoxSet Context!11090))

(assert (=> setNonEmpty!42311 (= res!2573119 ((_ map or) (store ((as const (Array Context!11090 Bool)) false) setElem!42311 true) setRest!42311))))

(declare-fun b!6226481 () Bool)

(declare-fun tp!1736578 () Bool)

(assert (=> b!6226481 (= e!3789918 tp!1736578)))

(assert (= (and d!1951888 condSetEmpty!42311) setIsEmpty!42311))

(assert (= (and d!1951888 (not condSetEmpty!42311)) setNonEmpty!42311))

(assert (= setNonEmpty!42311 b!6226481))

(declare-fun m!7053366 () Bool)

(assert (=> setNonEmpty!42311 m!7053366))

(assert (=> d!1951600 d!1951888))

(declare-fun d!1951890 () Bool)

(assert (=> d!1951890 (= (isEmptyExpr!1571 lt!2345620) ((_ is EmptyExpr!16161) lt!2345620))))

(assert (=> b!6225961 d!1951890))

(declare-fun d!1951892 () Bool)

(assert (=> d!1951892 (= (Exists!3231 (ite c!1125174 lambda!340385 lambda!340386)) (choose!46267 (ite c!1125174 lambda!340385 lambda!340386)))))

(declare-fun bs!1543812 () Bool)

(assert (= bs!1543812 d!1951892))

(declare-fun m!7053368 () Bool)

(assert (=> bs!1543812 m!7053368))

(assert (=> bm!522892 d!1951892))

(declare-fun b!6226482 () Bool)

(declare-fun res!2573121 () Bool)

(declare-fun e!3789920 () Bool)

(assert (=> b!6226482 (=> (not res!2573121) (not e!3789920))))

(declare-fun call!523050 () Bool)

(assert (=> b!6226482 (= res!2573121 (not call!523050))))

(declare-fun b!6226483 () Bool)

(declare-fun e!3789924 () Bool)

(declare-fun e!3789921 () Bool)

(assert (=> b!6226483 (= e!3789924 e!3789921)))

(declare-fun res!2573126 () Bool)

(assert (=> b!6226483 (=> res!2573126 e!3789921)))

(assert (=> b!6226483 (= res!2573126 call!523050)))

(declare-fun b!6226484 () Bool)

(declare-fun e!3789925 () Bool)

(assert (=> b!6226484 (= e!3789925 (nullable!6154 (regOne!32834 r!7292)))))

(declare-fun b!6226485 () Bool)

(assert (=> b!6226485 (= e!3789925 (matchR!8344 (derivativeStep!4874 (regOne!32834 r!7292) (head!12830 (_1!36443 (get!22335 lt!2345586)))) (tail!11915 (_1!36443 (get!22335 lt!2345586)))))))

(declare-fun b!6226486 () Bool)

(declare-fun e!3789923 () Bool)

(declare-fun e!3789919 () Bool)

(assert (=> b!6226486 (= e!3789923 e!3789919)))

(declare-fun c!1125395 () Bool)

(assert (=> b!6226486 (= c!1125395 ((_ is EmptyLang!16161) (regOne!32834 r!7292)))))

(declare-fun b!6226487 () Bool)

(assert (=> b!6226487 (= e!3789921 (not (= (head!12830 (_1!36443 (get!22335 lt!2345586))) (c!1125039 (regOne!32834 r!7292)))))))

(declare-fun b!6226488 () Bool)

(declare-fun res!2573122 () Bool)

(declare-fun e!3789922 () Bool)

(assert (=> b!6226488 (=> res!2573122 e!3789922)))

(assert (=> b!6226488 (= res!2573122 (not ((_ is ElementMatch!16161) (regOne!32834 r!7292))))))

(assert (=> b!6226488 (= e!3789919 e!3789922)))

(declare-fun b!6226489 () Bool)

(declare-fun lt!2345639 () Bool)

(assert (=> b!6226489 (= e!3789923 (= lt!2345639 call!523050))))

(declare-fun b!6226490 () Bool)

(assert (=> b!6226490 (= e!3789922 e!3789924)))

(declare-fun res!2573120 () Bool)

(assert (=> b!6226490 (=> (not res!2573120) (not e!3789924))))

(assert (=> b!6226490 (= res!2573120 (not lt!2345639))))

(declare-fun b!6226491 () Bool)

(declare-fun res!2573127 () Bool)

(assert (=> b!6226491 (=> (not res!2573127) (not e!3789920))))

(assert (=> b!6226491 (= res!2573127 (isEmpty!36673 (tail!11915 (_1!36443 (get!22335 lt!2345586)))))))

(declare-fun b!6226492 () Bool)

(assert (=> b!6226492 (= e!3789920 (= (head!12830 (_1!36443 (get!22335 lt!2345586))) (c!1125039 (regOne!32834 r!7292))))))

(declare-fun b!6226493 () Bool)

(declare-fun res!2573123 () Bool)

(assert (=> b!6226493 (=> res!2573123 e!3789922)))

(assert (=> b!6226493 (= res!2573123 e!3789920)))

(declare-fun res!2573125 () Bool)

(assert (=> b!6226493 (=> (not res!2573125) (not e!3789920))))

(assert (=> b!6226493 (= res!2573125 lt!2345639)))

(declare-fun bm!523045 () Bool)

(assert (=> bm!523045 (= call!523050 (isEmpty!36673 (_1!36443 (get!22335 lt!2345586))))))

(declare-fun d!1951894 () Bool)

(assert (=> d!1951894 e!3789923))

(declare-fun c!1125394 () Bool)

(assert (=> d!1951894 (= c!1125394 ((_ is EmptyExpr!16161) (regOne!32834 r!7292)))))

(assert (=> d!1951894 (= lt!2345639 e!3789925)))

(declare-fun c!1125396 () Bool)

(assert (=> d!1951894 (= c!1125396 (isEmpty!36673 (_1!36443 (get!22335 lt!2345586))))))

(assert (=> d!1951894 (validRegex!7897 (regOne!32834 r!7292))))

(assert (=> d!1951894 (= (matchR!8344 (regOne!32834 r!7292) (_1!36443 (get!22335 lt!2345586))) lt!2345639)))

(declare-fun b!6226494 () Bool)

(assert (=> b!6226494 (= e!3789919 (not lt!2345639))))

(declare-fun b!6226495 () Bool)

(declare-fun res!2573124 () Bool)

(assert (=> b!6226495 (=> res!2573124 e!3789921)))

(assert (=> b!6226495 (= res!2573124 (not (isEmpty!36673 (tail!11915 (_1!36443 (get!22335 lt!2345586))))))))

(assert (= (and d!1951894 c!1125396) b!6226484))

(assert (= (and d!1951894 (not c!1125396)) b!6226485))

(assert (= (and d!1951894 c!1125394) b!6226489))

(assert (= (and d!1951894 (not c!1125394)) b!6226486))

(assert (= (and b!6226486 c!1125395) b!6226494))

(assert (= (and b!6226486 (not c!1125395)) b!6226488))

(assert (= (and b!6226488 (not res!2573122)) b!6226493))

(assert (= (and b!6226493 res!2573125) b!6226482))

(assert (= (and b!6226482 res!2573121) b!6226491))

(assert (= (and b!6226491 res!2573127) b!6226492))

(assert (= (and b!6226493 (not res!2573123)) b!6226490))

(assert (= (and b!6226490 res!2573120) b!6226483))

(assert (= (and b!6226483 (not res!2573126)) b!6226495))

(assert (= (and b!6226495 (not res!2573124)) b!6226487))

(assert (= (or b!6226489 b!6226482 b!6226483) bm!523045))

(declare-fun m!7053370 () Bool)

(assert (=> bm!523045 m!7053370))

(declare-fun m!7053372 () Bool)

(assert (=> b!6226484 m!7053372))

(declare-fun m!7053374 () Bool)

(assert (=> b!6226487 m!7053374))

(assert (=> b!6226485 m!7053374))

(assert (=> b!6226485 m!7053374))

(declare-fun m!7053376 () Bool)

(assert (=> b!6226485 m!7053376))

(declare-fun m!7053378 () Bool)

(assert (=> b!6226485 m!7053378))

(assert (=> b!6226485 m!7053376))

(assert (=> b!6226485 m!7053378))

(declare-fun m!7053382 () Bool)

(assert (=> b!6226485 m!7053382))

(assert (=> b!6226492 m!7053374))

(assert (=> b!6226495 m!7053378))

(assert (=> b!6226495 m!7053378))

(declare-fun m!7053386 () Bool)

(assert (=> b!6226495 m!7053386))

(assert (=> d!1951894 m!7053370))

(assert (=> d!1951894 m!7052650))

(assert (=> b!6226491 m!7053378))

(assert (=> b!6226491 m!7053378))

(assert (=> b!6226491 m!7053386))

(assert (=> b!6225578 d!1951894))

(declare-fun d!1951898 () Bool)

(assert (=> d!1951898 (= (get!22335 lt!2345586) (v!52197 lt!2345586))))

(assert (=> b!6225578 d!1951898))

(declare-fun bm!523050 () Bool)

(declare-fun c!1125406 () Bool)

(declare-fun c!1125402 () Bool)

(declare-fun call!523057 () List!64782)

(assert (=> bm!523050 (= call!523057 ($colon$colon!2030 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))) (ite (or c!1125402 c!1125406) (regTwo!32834 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))))))

(declare-fun call!523055 () (InoxSet Context!11090))

(declare-fun c!1125404 () Bool)

(declare-fun bm!523051 () Bool)

(assert (=> bm!523051 (= call!523055 (derivationStepZipperDown!1409 (ite c!1125404 (regTwo!32835 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (regOne!32834 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))) (ite c!1125404 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (Context!11091 call!523057)) (h!71108 s!2326)))))

(declare-fun b!6226506 () Bool)

(declare-fun e!3789936 () (InoxSet Context!11090))

(assert (=> b!6226506 (= e!3789936 (store ((as const (Array Context!11090 Bool)) false) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) true))))

(declare-fun call!523059 () List!64782)

(declare-fun bm!523052 () Bool)

(declare-fun call!523056 () (InoxSet Context!11090))

(assert (=> bm!523052 (= call!523056 (derivationStepZipperDown!1409 (ite c!1125404 (regOne!32835 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (ite c!1125402 (regTwo!32834 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (ite c!1125406 (regOne!32834 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (reg!16490 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))))) (ite (or c!1125404 c!1125402) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (Context!11091 call!523059)) (h!71108 s!2326)))))

(declare-fun b!6226507 () Bool)

(declare-fun c!1125405 () Bool)

(assert (=> b!6226507 (= c!1125405 ((_ is Star!16161) (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun e!3789931 () (InoxSet Context!11090))

(declare-fun e!3789932 () (InoxSet Context!11090))

(assert (=> b!6226507 (= e!3789931 e!3789932)))

(declare-fun b!6226508 () Bool)

(declare-fun call!523058 () (InoxSet Context!11090))

(assert (=> b!6226508 (= e!3789932 call!523058)))

(declare-fun d!1951902 () Bool)

(declare-fun c!1125403 () Bool)

(assert (=> d!1951902 (= c!1125403 (and ((_ is ElementMatch!16161) (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (= (c!1125039 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (h!71108 s!2326))))))

(assert (=> d!1951902 (= (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))) (h!71108 s!2326)) e!3789936)))

(declare-fun bm!523053 () Bool)

(assert (=> bm!523053 (= call!523059 call!523057)))

(declare-fun b!6226509 () Bool)

(declare-fun e!3789934 () Bool)

(assert (=> b!6226509 (= c!1125402 e!3789934)))

(declare-fun res!2573128 () Bool)

(assert (=> b!6226509 (=> (not res!2573128) (not e!3789934))))

(assert (=> b!6226509 (= res!2573128 ((_ is Concat!25006) (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun e!3789933 () (InoxSet Context!11090))

(declare-fun e!3789935 () (InoxSet Context!11090))

(assert (=> b!6226509 (= e!3789933 e!3789935)))

(declare-fun b!6226510 () Bool)

(assert (=> b!6226510 (= e!3789932 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226511 () Bool)

(assert (=> b!6226511 (= e!3789933 ((_ map or) call!523056 call!523055))))

(declare-fun b!6226512 () Bool)

(assert (=> b!6226512 (= e!3789935 e!3789931)))

(assert (=> b!6226512 (= c!1125406 ((_ is Concat!25006) (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun bm!523054 () Bool)

(declare-fun call!523060 () (InoxSet Context!11090))

(assert (=> bm!523054 (= call!523058 call!523060)))

(declare-fun bm!523055 () Bool)

(assert (=> bm!523055 (= call!523060 call!523056)))

(declare-fun b!6226513 () Bool)

(assert (=> b!6226513 (= e!3789934 (nullable!6154 (regOne!32834 (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))))))))

(declare-fun b!6226514 () Bool)

(assert (=> b!6226514 (= e!3789936 e!3789933)))

(assert (=> b!6226514 (= c!1125404 ((_ is Union!16161) (h!71106 (exprs!6045 (Context!11091 (Cons!64658 (h!71106 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun b!6226515 () Bool)

(assert (=> b!6226515 (= e!3789931 call!523058)))

(declare-fun b!6226516 () Bool)

(assert (=> b!6226516 (= e!3789935 ((_ map or) call!523055 call!523060))))

(assert (= (and d!1951902 c!1125403) b!6226506))

(assert (= (and d!1951902 (not c!1125403)) b!6226514))

(assert (= (and b!6226514 c!1125404) b!6226511))

(assert (= (and b!6226514 (not c!1125404)) b!6226509))

(assert (= (and b!6226509 res!2573128) b!6226513))

(assert (= (and b!6226509 c!1125402) b!6226516))

(assert (= (and b!6226509 (not c!1125402)) b!6226512))

(assert (= (and b!6226512 c!1125406) b!6226515))

(assert (= (and b!6226512 (not c!1125406)) b!6226507))

(assert (= (and b!6226507 c!1125405) b!6226508))

(assert (= (and b!6226507 (not c!1125405)) b!6226510))

(assert (= (or b!6226515 b!6226508) bm!523053))

(assert (= (or b!6226515 b!6226508) bm!523054))

(assert (= (or b!6226516 bm!523053) bm!523050))

(assert (= (or b!6226516 bm!523054) bm!523055))

(assert (= (or b!6226511 b!6226516) bm!523051))

(assert (= (or b!6226511 bm!523055) bm!523052))

(declare-fun m!7053392 () Bool)

(assert (=> bm!523052 m!7053392))

(declare-fun m!7053396 () Bool)

(assert (=> b!6226513 m!7053396))

(declare-fun m!7053400 () Bool)

(assert (=> bm!523050 m!7053400))

(declare-fun m!7053404 () Bool)

(assert (=> bm!523051 m!7053404))

(declare-fun m!7053406 () Bool)

(assert (=> b!6226506 m!7053406))

(assert (=> bm!522899 d!1951902))

(declare-fun d!1951910 () Bool)

(assert (=> d!1951910 (= (head!12831 (exprs!6045 (h!71107 zl!343))) (h!71106 (exprs!6045 (h!71107 zl!343))))))

(assert (=> b!6225952 d!1951910))

(declare-fun d!1951912 () Bool)

(assert (=> d!1951912 true))

(assert (=> d!1951912 true))

(declare-fun res!2573134 () Bool)

(assert (=> d!1951912 (= (choose!46267 lambda!340337) res!2573134)))

(assert (=> d!1951564 d!1951912))

(declare-fun d!1951914 () Bool)

(assert (=> d!1951914 (= (flatMap!1666 lt!2345537 lambda!340389) (choose!46271 lt!2345537 lambda!340389))))

(declare-fun bs!1543826 () Bool)

(assert (= bs!1543826 d!1951914))

(declare-fun m!7053408 () Bool)

(assert (=> bs!1543826 m!7053408))

(assert (=> d!1951616 d!1951914))

(declare-fun d!1951916 () Bool)

(declare-fun res!2573135 () Bool)

(declare-fun e!3789946 () Bool)

(assert (=> d!1951916 (=> res!2573135 e!3789946)))

(assert (=> d!1951916 (= res!2573135 ((_ is Nil!64658) lt!2345617))))

(assert (=> d!1951916 (= (forall!15275 lt!2345617 lambda!340395) e!3789946)))

(declare-fun b!6226532 () Bool)

(declare-fun e!3789947 () Bool)

(assert (=> b!6226532 (= e!3789946 e!3789947)))

(declare-fun res!2573136 () Bool)

(assert (=> b!6226532 (=> (not res!2573136) (not e!3789947))))

(assert (=> b!6226532 (= res!2573136 (dynLambda!25516 lambda!340395 (h!71106 lt!2345617)))))

(declare-fun b!6226533 () Bool)

(assert (=> b!6226533 (= e!3789947 (forall!15275 (t!378318 lt!2345617) lambda!340395))))

(assert (= (and d!1951916 (not res!2573135)) b!6226532))

(assert (= (and b!6226532 res!2573136) b!6226533))

(declare-fun b_lambda!236733 () Bool)

(assert (=> (not b_lambda!236733) (not b!6226532)))

(declare-fun m!7053410 () Bool)

(assert (=> b!6226532 m!7053410))

(declare-fun m!7053412 () Bool)

(assert (=> b!6226533 m!7053412))

(assert (=> d!1951624 d!1951916))

(declare-fun bs!1543827 () Bool)

(declare-fun d!1951918 () Bool)

(assert (= bs!1543827 (and d!1951918 d!1951622)))

(declare-fun lambda!340443 () Int)

(assert (=> bs!1543827 (= lambda!340443 lambda!340392)))

(declare-fun bs!1543828 () Bool)

(assert (= bs!1543828 (and d!1951918 d!1951634)))

(assert (=> bs!1543828 (= lambda!340443 lambda!340403)))

(declare-fun bs!1543829 () Bool)

(assert (= bs!1543829 (and d!1951918 d!1951628)))

(assert (=> bs!1543829 (= lambda!340443 lambda!340399)))

(declare-fun bs!1543830 () Bool)

(assert (= bs!1543830 (and d!1951918 d!1951626)))

(assert (=> bs!1543830 (= lambda!340443 lambda!340398)))

(declare-fun bs!1543832 () Bool)

(assert (= bs!1543832 (and d!1951918 d!1951624)))

(assert (=> bs!1543832 (= lambda!340443 lambda!340395)))

(declare-fun bs!1543833 () Bool)

(assert (= bs!1543833 (and d!1951918 d!1951632)))

(assert (=> bs!1543833 (= lambda!340443 lambda!340402)))

(declare-fun bs!1543834 () Bool)

(assert (= bs!1543834 (and d!1951918 d!1951878)))

(assert (=> bs!1543834 (= lambda!340443 lambda!340439)))

(assert (=> d!1951918 (= (inv!83649 setElem!42308) (forall!15275 (exprs!6045 setElem!42308) lambda!340443))))

(declare-fun bs!1543836 () Bool)

(assert (= bs!1543836 d!1951918))

(declare-fun m!7053432 () Bool)

(assert (=> bs!1543836 m!7053432))

(assert (=> setNonEmpty!42308 d!1951918))

(declare-fun d!1951926 () Bool)

(assert (=> d!1951926 (= (nullable!6154 (reg!16490 r!7292)) (nullableFct!2110 (reg!16490 r!7292)))))

(declare-fun bs!1543837 () Bool)

(assert (= bs!1543837 d!1951926))

(declare-fun m!7053434 () Bool)

(assert (=> bs!1543837 m!7053434))

(assert (=> b!6225735 d!1951926))

(declare-fun d!1951928 () Bool)

(assert (=> d!1951928 (= (nullable!6154 (h!71106 (exprs!6045 lt!2345516))) (nullableFct!2110 (h!71106 (exprs!6045 lt!2345516))))))

(declare-fun bs!1543838 () Bool)

(assert (= bs!1543838 d!1951928))

(declare-fun m!7053436 () Bool)

(assert (=> bs!1543838 m!7053436))

(assert (=> b!6225883 d!1951928))

(assert (=> b!6225930 d!1951632))

(declare-fun bs!1543839 () Bool)

(declare-fun d!1951930 () Bool)

(assert (= bs!1543839 (and d!1951930 d!1951622)))

(declare-fun lambda!340444 () Int)

(assert (=> bs!1543839 (= lambda!340444 lambda!340392)))

(declare-fun bs!1543840 () Bool)

(assert (= bs!1543840 (and d!1951930 d!1951634)))

(assert (=> bs!1543840 (= lambda!340444 lambda!340403)))

(declare-fun bs!1543841 () Bool)

(assert (= bs!1543841 (and d!1951930 d!1951918)))

(assert (=> bs!1543841 (= lambda!340444 lambda!340443)))

(declare-fun bs!1543842 () Bool)

(assert (= bs!1543842 (and d!1951930 d!1951628)))

(assert (=> bs!1543842 (= lambda!340444 lambda!340399)))

(declare-fun bs!1543843 () Bool)

(assert (= bs!1543843 (and d!1951930 d!1951626)))

(assert (=> bs!1543843 (= lambda!340444 lambda!340398)))

(declare-fun bs!1543844 () Bool)

(assert (= bs!1543844 (and d!1951930 d!1951624)))

(assert (=> bs!1543844 (= lambda!340444 lambda!340395)))

(declare-fun bs!1543845 () Bool)

(assert (= bs!1543845 (and d!1951930 d!1951632)))

(assert (=> bs!1543845 (= lambda!340444 lambda!340402)))

(declare-fun bs!1543846 () Bool)

(assert (= bs!1543846 (and d!1951930 d!1951878)))

(assert (=> bs!1543846 (= lambda!340444 lambda!340439)))

(declare-fun lt!2345642 () List!64782)

(assert (=> d!1951930 (forall!15275 lt!2345642 lambda!340444)))

(declare-fun e!3789955 () List!64782)

(assert (=> d!1951930 (= lt!2345642 e!3789955)))

(declare-fun c!1125415 () Bool)

(assert (=> d!1951930 (= c!1125415 ((_ is Cons!64659) (t!378319 zl!343)))))

(assert (=> d!1951930 (= (unfocusZipperList!1582 (t!378319 zl!343)) lt!2345642)))

(declare-fun b!6226543 () Bool)

(assert (=> b!6226543 (= e!3789955 (Cons!64658 (generalisedConcat!1758 (exprs!6045 (h!71107 (t!378319 zl!343)))) (unfocusZipperList!1582 (t!378319 (t!378319 zl!343)))))))

(declare-fun b!6226544 () Bool)

(assert (=> b!6226544 (= e!3789955 Nil!64658)))

(assert (= (and d!1951930 c!1125415) b!6226543))

(assert (= (and d!1951930 (not c!1125415)) b!6226544))

(declare-fun m!7053444 () Bool)

(assert (=> d!1951930 m!7053444))

(declare-fun m!7053448 () Bool)

(assert (=> b!6226543 m!7053448))

(declare-fun m!7053450 () Bool)

(assert (=> b!6226543 m!7053450))

(assert (=> b!6225930 d!1951930))

(declare-fun d!1951934 () Bool)

(assert (=> d!1951934 (= (isEmpty!36670 (t!378318 (unfocusZipperList!1582 zl!343))) ((_ is Nil!64658) (t!378318 (unfocusZipperList!1582 zl!343))))))

(assert (=> b!6225919 d!1951934))

(declare-fun d!1951936 () Bool)

(assert (=> d!1951936 (= (isDefined!12755 lt!2345586) (not (isEmpty!36675 lt!2345586)))))

(declare-fun bs!1543847 () Bool)

(assert (= bs!1543847 d!1951936))

(declare-fun m!7053458 () Bool)

(assert (=> bs!1543847 m!7053458))

(assert (=> d!1951550 d!1951936))

(declare-fun b!6226556 () Bool)

(declare-fun res!2573144 () Bool)

(declare-fun e!3789963 () Bool)

(assert (=> b!6226556 (=> (not res!2573144) (not e!3789963))))

(declare-fun call!523071 () Bool)

(assert (=> b!6226556 (= res!2573144 (not call!523071))))

(declare-fun b!6226557 () Bool)

(declare-fun e!3789967 () Bool)

(declare-fun e!3789964 () Bool)

(assert (=> b!6226557 (= e!3789967 e!3789964)))

(declare-fun res!2573149 () Bool)

(assert (=> b!6226557 (=> res!2573149 e!3789964)))

(assert (=> b!6226557 (= res!2573149 call!523071)))

(declare-fun b!6226558 () Bool)

(declare-fun e!3789968 () Bool)

(assert (=> b!6226558 (= e!3789968 (nullable!6154 (regOne!32834 r!7292)))))

(declare-fun b!6226559 () Bool)

(assert (=> b!6226559 (= e!3789968 (matchR!8344 (derivativeStep!4874 (regOne!32834 r!7292) (head!12830 Nil!64660)) (tail!11915 Nil!64660)))))

(declare-fun b!6226560 () Bool)

(declare-fun e!3789966 () Bool)

(declare-fun e!3789962 () Bool)

(assert (=> b!6226560 (= e!3789966 e!3789962)))

(declare-fun c!1125422 () Bool)

(assert (=> b!6226560 (= c!1125422 ((_ is EmptyLang!16161) (regOne!32834 r!7292)))))

(declare-fun b!6226561 () Bool)

(assert (=> b!6226561 (= e!3789964 (not (= (head!12830 Nil!64660) (c!1125039 (regOne!32834 r!7292)))))))

(declare-fun b!6226562 () Bool)

(declare-fun res!2573145 () Bool)

(declare-fun e!3789965 () Bool)

(assert (=> b!6226562 (=> res!2573145 e!3789965)))

(assert (=> b!6226562 (= res!2573145 (not ((_ is ElementMatch!16161) (regOne!32834 r!7292))))))

(assert (=> b!6226562 (= e!3789962 e!3789965)))

(declare-fun b!6226563 () Bool)

(declare-fun lt!2345643 () Bool)

(assert (=> b!6226563 (= e!3789966 (= lt!2345643 call!523071))))

(declare-fun b!6226564 () Bool)

(assert (=> b!6226564 (= e!3789965 e!3789967)))

(declare-fun res!2573143 () Bool)

(assert (=> b!6226564 (=> (not res!2573143) (not e!3789967))))

(assert (=> b!6226564 (= res!2573143 (not lt!2345643))))

(declare-fun b!6226565 () Bool)

(declare-fun res!2573150 () Bool)

(assert (=> b!6226565 (=> (not res!2573150) (not e!3789963))))

(assert (=> b!6226565 (= res!2573150 (isEmpty!36673 (tail!11915 Nil!64660)))))

(declare-fun b!6226566 () Bool)

(assert (=> b!6226566 (= e!3789963 (= (head!12830 Nil!64660) (c!1125039 (regOne!32834 r!7292))))))

(declare-fun b!6226567 () Bool)

(declare-fun res!2573146 () Bool)

(assert (=> b!6226567 (=> res!2573146 e!3789965)))

(assert (=> b!6226567 (= res!2573146 e!3789963)))

(declare-fun res!2573148 () Bool)

(assert (=> b!6226567 (=> (not res!2573148) (not e!3789963))))

(assert (=> b!6226567 (= res!2573148 lt!2345643)))

(declare-fun bm!523066 () Bool)

(assert (=> bm!523066 (= call!523071 (isEmpty!36673 Nil!64660))))

(declare-fun d!1951938 () Bool)

(assert (=> d!1951938 e!3789966))

(declare-fun c!1125421 () Bool)

(assert (=> d!1951938 (= c!1125421 ((_ is EmptyExpr!16161) (regOne!32834 r!7292)))))

(assert (=> d!1951938 (= lt!2345643 e!3789968)))

(declare-fun c!1125423 () Bool)

(assert (=> d!1951938 (= c!1125423 (isEmpty!36673 Nil!64660))))

(assert (=> d!1951938 (validRegex!7897 (regOne!32834 r!7292))))

(assert (=> d!1951938 (= (matchR!8344 (regOne!32834 r!7292) Nil!64660) lt!2345643)))

(declare-fun b!6226568 () Bool)

(assert (=> b!6226568 (= e!3789962 (not lt!2345643))))

(declare-fun b!6226569 () Bool)

(declare-fun res!2573147 () Bool)

(assert (=> b!6226569 (=> res!2573147 e!3789964)))

(assert (=> b!6226569 (= res!2573147 (not (isEmpty!36673 (tail!11915 Nil!64660))))))

(assert (= (and d!1951938 c!1125423) b!6226558))

(assert (= (and d!1951938 (not c!1125423)) b!6226559))

(assert (= (and d!1951938 c!1125421) b!6226563))

(assert (= (and d!1951938 (not c!1125421)) b!6226560))

(assert (= (and b!6226560 c!1125422) b!6226568))

(assert (= (and b!6226560 (not c!1125422)) b!6226562))

(assert (= (and b!6226562 (not res!2573145)) b!6226567))

(assert (= (and b!6226567 res!2573148) b!6226556))

(assert (= (and b!6226556 res!2573144) b!6226565))

(assert (= (and b!6226565 res!2573150) b!6226566))

(assert (= (and b!6226567 (not res!2573146)) b!6226564))

(assert (= (and b!6226564 res!2573143) b!6226557))

(assert (= (and b!6226557 (not res!2573149)) b!6226569))

(assert (= (and b!6226569 (not res!2573147)) b!6226561))

(assert (= (or b!6226563 b!6226556 b!6226557) bm!523066))

(declare-fun m!7053462 () Bool)

(assert (=> bm!523066 m!7053462))

(assert (=> b!6226558 m!7053372))

(declare-fun m!7053464 () Bool)

(assert (=> b!6226561 m!7053464))

(assert (=> b!6226559 m!7053464))

(assert (=> b!6226559 m!7053464))

(declare-fun m!7053466 () Bool)

(assert (=> b!6226559 m!7053466))

(declare-fun m!7053468 () Bool)

(assert (=> b!6226559 m!7053468))

(assert (=> b!6226559 m!7053466))

(assert (=> b!6226559 m!7053468))

(declare-fun m!7053470 () Bool)

(assert (=> b!6226559 m!7053470))

(assert (=> b!6226566 m!7053464))

(assert (=> b!6226569 m!7053468))

(assert (=> b!6226569 m!7053468))

(declare-fun m!7053472 () Bool)

(assert (=> b!6226569 m!7053472))

(assert (=> d!1951938 m!7053462))

(assert (=> d!1951938 m!7052650))

(assert (=> b!6226565 m!7053468))

(assert (=> b!6226565 m!7053468))

(assert (=> b!6226565 m!7053472))

(assert (=> d!1951550 d!1951938))

(assert (=> d!1951550 d!1951758))

(declare-fun d!1951944 () Bool)

(assert (=> d!1951944 (= (isEmpty!36675 (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) Nil!64660 s!2326 s!2326)) (not ((_ is Some!16051) (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) Nil!64660 s!2326 s!2326))))))

(assert (=> d!1951586 d!1951944))

(declare-fun c!1125431 () Bool)

(declare-fun c!1125426 () Bool)

(declare-fun call!523074 () List!64782)

(declare-fun bm!523067 () Bool)

(assert (=> bm!523067 (= call!523074 ($colon$colon!2030 (exprs!6045 (ite c!1125245 lt!2345516 (Context!11091 call!522929))) (ite (or c!1125426 c!1125431) (regTwo!32834 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))) (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))))))))

(declare-fun c!1125428 () Bool)

(declare-fun bm!523068 () Bool)

(declare-fun call!523072 () (InoxSet Context!11090))

(assert (=> bm!523068 (= call!523072 (derivationStepZipperDown!1409 (ite c!1125428 (regTwo!32835 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))) (regOne!32834 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))))) (ite c!1125428 (ite c!1125245 lt!2345516 (Context!11091 call!522929)) (Context!11091 call!523074)) (h!71108 s!2326)))))

(declare-fun e!3789976 () (InoxSet Context!11090))

(declare-fun b!6226576 () Bool)

(assert (=> b!6226576 (= e!3789976 (store ((as const (Array Context!11090 Bool)) false) (ite c!1125245 lt!2345516 (Context!11091 call!522929)) true))))

(declare-fun call!523076 () List!64782)

(declare-fun bm!523069 () Bool)

(declare-fun call!523073 () (InoxSet Context!11090))

(assert (=> bm!523069 (= call!523073 (derivationStepZipperDown!1409 (ite c!1125428 (regOne!32835 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))) (ite c!1125426 (regTwo!32834 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))) (ite c!1125431 (regOne!32834 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))) (reg!16490 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))))))) (ite (or c!1125428 c!1125426) (ite c!1125245 lt!2345516 (Context!11091 call!522929)) (Context!11091 call!523076)) (h!71108 s!2326)))))

(declare-fun b!6226577 () Bool)

(declare-fun c!1125429 () Bool)

(assert (=> b!6226577 (= c!1125429 ((_ is Star!16161) (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))))))

(declare-fun e!3789971 () (InoxSet Context!11090))

(declare-fun e!3789972 () (InoxSet Context!11090))

(assert (=> b!6226577 (= e!3789971 e!3789972)))

(declare-fun b!6226578 () Bool)

(declare-fun call!523075 () (InoxSet Context!11090))

(assert (=> b!6226578 (= e!3789972 call!523075)))

(declare-fun c!1125427 () Bool)

(declare-fun d!1951946 () Bool)

(assert (=> d!1951946 (= c!1125427 (and ((_ is ElementMatch!16161) (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))) (= (c!1125039 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))) (h!71108 s!2326))))))

(assert (=> d!1951946 (= (derivationStepZipperDown!1409 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))) (ite c!1125245 lt!2345516 (Context!11091 call!522929)) (h!71108 s!2326)) e!3789976)))

(declare-fun bm!523070 () Bool)

(assert (=> bm!523070 (= call!523076 call!523074)))

(declare-fun b!6226579 () Bool)

(declare-fun e!3789974 () Bool)

(assert (=> b!6226579 (= c!1125426 e!3789974)))

(declare-fun res!2573151 () Bool)

(assert (=> b!6226579 (=> (not res!2573151) (not e!3789974))))

(assert (=> b!6226579 (= res!2573151 ((_ is Concat!25006) (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))))))

(declare-fun e!3789973 () (InoxSet Context!11090))

(declare-fun e!3789975 () (InoxSet Context!11090))

(assert (=> b!6226579 (= e!3789973 e!3789975)))

(declare-fun b!6226580 () Bool)

(assert (=> b!6226580 (= e!3789972 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226581 () Bool)

(assert (=> b!6226581 (= e!3789973 ((_ map or) call!523073 call!523072))))

(declare-fun b!6226582 () Bool)

(assert (=> b!6226582 (= e!3789975 e!3789971)))

(assert (=> b!6226582 (= c!1125431 ((_ is Concat!25006) (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))))))

(declare-fun bm!523071 () Bool)

(declare-fun call!523077 () (InoxSet Context!11090))

(assert (=> bm!523071 (= call!523075 call!523077)))

(declare-fun bm!523072 () Bool)

(assert (=> bm!523072 (= call!523077 call!523073)))

(declare-fun b!6226583 () Bool)

(assert (=> b!6226583 (= e!3789974 (nullable!6154 (regOne!32834 (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))))))))

(declare-fun b!6226584 () Bool)

(assert (=> b!6226584 (= e!3789976 e!3789973)))

(assert (=> b!6226584 (= c!1125428 ((_ is Union!16161) (ite c!1125245 (regTwo!32835 (regTwo!32834 (regOne!32834 r!7292))) (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))))))))

(declare-fun b!6226585 () Bool)

(assert (=> b!6226585 (= e!3789971 call!523075)))

(declare-fun b!6226586 () Bool)

(assert (=> b!6226586 (= e!3789975 ((_ map or) call!523072 call!523077))))

(assert (= (and d!1951946 c!1125427) b!6226576))

(assert (= (and d!1951946 (not c!1125427)) b!6226584))

(assert (= (and b!6226584 c!1125428) b!6226581))

(assert (= (and b!6226584 (not c!1125428)) b!6226579))

(assert (= (and b!6226579 res!2573151) b!6226583))

(assert (= (and b!6226579 c!1125426) b!6226586))

(assert (= (and b!6226579 (not c!1125426)) b!6226582))

(assert (= (and b!6226582 c!1125431) b!6226585))

(assert (= (and b!6226582 (not c!1125431)) b!6226577))

(assert (= (and b!6226577 c!1125429) b!6226578))

(assert (= (and b!6226577 (not c!1125429)) b!6226580))

(assert (= (or b!6226585 b!6226578) bm!523070))

(assert (= (or b!6226585 b!6226578) bm!523071))

(assert (= (or b!6226586 bm!523070) bm!523067))

(assert (= (or b!6226586 bm!523071) bm!523072))

(assert (= (or b!6226581 b!6226586) bm!523068))

(assert (= (or b!6226581 bm!523072) bm!523069))

(declare-fun m!7053480 () Bool)

(assert (=> bm!523069 m!7053480))

(declare-fun m!7053482 () Bool)

(assert (=> b!6226583 m!7053482))

(declare-fun m!7053484 () Bool)

(assert (=> bm!523067 m!7053484))

(declare-fun m!7053486 () Bool)

(assert (=> bm!523068 m!7053486))

(declare-fun m!7053488 () Bool)

(assert (=> b!6226576 m!7053488))

(assert (=> bm!522923 d!1951946))

(declare-fun bs!1543853 () Bool)

(declare-fun d!1951952 () Bool)

(assert (= bs!1543853 (and d!1951952 d!1951774)))

(declare-fun lambda!340446 () Int)

(assert (=> bs!1543853 (= lambda!340446 lambda!340428)))

(declare-fun bs!1543854 () Bool)

(assert (= bs!1543854 (and d!1951952 d!1951884)))

(assert (=> bs!1543854 (= lambda!340446 lambda!340440)))

(assert (=> d!1951952 (= (nullableZipper!1935 lt!2345519) (exists!2495 lt!2345519 lambda!340446))))

(declare-fun bs!1543855 () Bool)

(assert (= bs!1543855 d!1951952))

(declare-fun m!7053490 () Bool)

(assert (=> bs!1543855 m!7053490))

(assert (=> b!6225990 d!1951952))

(declare-fun d!1951954 () Bool)

(declare-fun res!2573156 () Bool)

(declare-fun e!3789981 () Bool)

(assert (=> d!1951954 (=> res!2573156 e!3789981)))

(assert (=> d!1951954 (= res!2573156 ((_ is ElementMatch!16161) lt!2345620))))

(assert (=> d!1951954 (= (validRegex!7897 lt!2345620) e!3789981)))

(declare-fun b!6226587 () Bool)

(declare-fun e!3789983 () Bool)

(declare-fun call!523079 () Bool)

(assert (=> b!6226587 (= e!3789983 call!523079)))

(declare-fun b!6226588 () Bool)

(declare-fun e!3789982 () Bool)

(declare-fun e!3789984 () Bool)

(assert (=> b!6226588 (= e!3789982 e!3789984)))

(declare-fun c!1125432 () Bool)

(assert (=> b!6226588 (= c!1125432 ((_ is Union!16161) lt!2345620))))

(declare-fun b!6226589 () Bool)

(assert (=> b!6226589 (= e!3789981 e!3789982)))

(declare-fun c!1125433 () Bool)

(assert (=> b!6226589 (= c!1125433 ((_ is Star!16161) lt!2345620))))

(declare-fun bm!523073 () Bool)

(assert (=> bm!523073 (= call!523079 (validRegex!7897 (ite c!1125432 (regTwo!32835 lt!2345620) (regTwo!32834 lt!2345620))))))

(declare-fun b!6226590 () Bool)

(declare-fun e!3789978 () Bool)

(assert (=> b!6226590 (= e!3789982 e!3789978)))

(declare-fun res!2573153 () Bool)

(assert (=> b!6226590 (= res!2573153 (not (nullable!6154 (reg!16490 lt!2345620))))))

(assert (=> b!6226590 (=> (not res!2573153) (not e!3789978))))

(declare-fun bm!523074 () Bool)

(declare-fun call!523080 () Bool)

(assert (=> bm!523074 (= call!523080 (validRegex!7897 (ite c!1125433 (reg!16490 lt!2345620) (ite c!1125432 (regOne!32835 lt!2345620) (regOne!32834 lt!2345620)))))))

(declare-fun b!6226591 () Bool)

(declare-fun res!2573154 () Bool)

(assert (=> b!6226591 (=> (not res!2573154) (not e!3789983))))

(declare-fun call!523078 () Bool)

(assert (=> b!6226591 (= res!2573154 call!523078)))

(assert (=> b!6226591 (= e!3789984 e!3789983)))

(declare-fun b!6226592 () Bool)

(declare-fun res!2573152 () Bool)

(declare-fun e!3789979 () Bool)

(assert (=> b!6226592 (=> res!2573152 e!3789979)))

(assert (=> b!6226592 (= res!2573152 (not ((_ is Concat!25006) lt!2345620)))))

(assert (=> b!6226592 (= e!3789984 e!3789979)))

(declare-fun b!6226593 () Bool)

(declare-fun e!3789980 () Bool)

(assert (=> b!6226593 (= e!3789979 e!3789980)))

(declare-fun res!2573155 () Bool)

(assert (=> b!6226593 (=> (not res!2573155) (not e!3789980))))

(assert (=> b!6226593 (= res!2573155 call!523078)))

(declare-fun bm!523075 () Bool)

(assert (=> bm!523075 (= call!523078 call!523080)))

(declare-fun b!6226594 () Bool)

(assert (=> b!6226594 (= e!3789980 call!523079)))

(declare-fun b!6226595 () Bool)

(assert (=> b!6226595 (= e!3789978 call!523080)))

(assert (= (and d!1951954 (not res!2573156)) b!6226589))

(assert (= (and b!6226589 c!1125433) b!6226590))

(assert (= (and b!6226589 (not c!1125433)) b!6226588))

(assert (= (and b!6226590 res!2573153) b!6226595))

(assert (= (and b!6226588 c!1125432) b!6226591))

(assert (= (and b!6226588 (not c!1125432)) b!6226592))

(assert (= (and b!6226591 res!2573154) b!6226587))

(assert (= (and b!6226592 (not res!2573152)) b!6226593))

(assert (= (and b!6226593 res!2573155) b!6226594))

(assert (= (or b!6226587 b!6226594) bm!523073))

(assert (= (or b!6226591 b!6226593) bm!523075))

(assert (= (or b!6226595 bm!523075) bm!523074))

(declare-fun m!7053492 () Bool)

(assert (=> bm!523073 m!7053492))

(declare-fun m!7053494 () Bool)

(assert (=> b!6226590 m!7053494))

(declare-fun m!7053496 () Bool)

(assert (=> bm!523074 m!7053496))

(assert (=> d!1951632 d!1951954))

(declare-fun d!1951956 () Bool)

(declare-fun res!2573157 () Bool)

(declare-fun e!3789985 () Bool)

(assert (=> d!1951956 (=> res!2573157 e!3789985)))

(assert (=> d!1951956 (= res!2573157 ((_ is Nil!64658) (exprs!6045 (h!71107 zl!343))))))

(assert (=> d!1951956 (= (forall!15275 (exprs!6045 (h!71107 zl!343)) lambda!340402) e!3789985)))

(declare-fun b!6226596 () Bool)

(declare-fun e!3789986 () Bool)

(assert (=> b!6226596 (= e!3789985 e!3789986)))

(declare-fun res!2573158 () Bool)

(assert (=> b!6226596 (=> (not res!2573158) (not e!3789986))))

(assert (=> b!6226596 (= res!2573158 (dynLambda!25516 lambda!340402 (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6226597 () Bool)

(assert (=> b!6226597 (= e!3789986 (forall!15275 (t!378318 (exprs!6045 (h!71107 zl!343))) lambda!340402))))

(assert (= (and d!1951956 (not res!2573157)) b!6226596))

(assert (= (and b!6226596 res!2573158) b!6226597))

(declare-fun b_lambda!236739 () Bool)

(assert (=> (not b_lambda!236739) (not b!6226596)))

(declare-fun m!7053498 () Bool)

(assert (=> b!6226596 m!7053498))

(declare-fun m!7053500 () Bool)

(assert (=> b!6226597 m!7053500))

(assert (=> d!1951632 d!1951956))

(declare-fun b!6226598 () Bool)

(declare-fun e!3789988 () (InoxSet Context!11090))

(assert (=> b!6226598 (= e!3789988 ((as const (Array Context!11090 Bool)) false))))

(declare-fun e!3789987 () (InoxSet Context!11090))

(declare-fun b!6226599 () Bool)

(declare-fun call!523081 () (InoxSet Context!11090))

(assert (=> b!6226599 (= e!3789987 ((_ map or) call!523081 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345516)))))) (h!71108 s!2326))))))

(declare-fun d!1951958 () Bool)

(declare-fun c!1125434 () Bool)

(declare-fun e!3789989 () Bool)

(assert (=> d!1951958 (= c!1125434 e!3789989)))

(declare-fun res!2573159 () Bool)

(assert (=> d!1951958 (=> (not res!2573159) (not e!3789989))))

(assert (=> d!1951958 (= res!2573159 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345516))))))))

(assert (=> d!1951958 (= (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 lt!2345516))) (h!71108 s!2326)) e!3789987)))

(declare-fun b!6226600 () Bool)

(assert (=> b!6226600 (= e!3789987 e!3789988)))

(declare-fun c!1125435 () Bool)

(assert (=> b!6226600 (= c!1125435 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345516))))))))

(declare-fun b!6226601 () Bool)

(assert (=> b!6226601 (= e!3789988 call!523081)))

(declare-fun bm!523076 () Bool)

(assert (=> bm!523076 (= call!523081 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345516))))) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345516)))))) (h!71108 s!2326)))))

(declare-fun b!6226602 () Bool)

(assert (=> b!6226602 (= e!3789989 (nullable!6154 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345516)))))))))

(assert (= (and d!1951958 res!2573159) b!6226602))

(assert (= (and d!1951958 c!1125434) b!6226599))

(assert (= (and d!1951958 (not c!1125434)) b!6226600))

(assert (= (and b!6226600 c!1125435) b!6226601))

(assert (= (and b!6226600 (not c!1125435)) b!6226598))

(assert (= (or b!6226599 b!6226601) bm!523076))

(declare-fun m!7053502 () Bool)

(assert (=> b!6226599 m!7053502))

(declare-fun m!7053504 () Bool)

(assert (=> bm!523076 m!7053504))

(declare-fun m!7053506 () Bool)

(assert (=> b!6226602 m!7053506))

(assert (=> b!6225880 d!1951958))

(assert (=> d!1951608 d!1951600))

(declare-fun d!1951960 () Bool)

(assert (=> d!1951960 (= (flatMap!1666 z!1189 lambda!340339) (dynLambda!25515 lambda!340339 (h!71107 zl!343)))))

(assert (=> d!1951960 true))

(declare-fun _$13!3280 () Unit!157975)

(assert (=> d!1951960 (= (choose!46272 z!1189 (h!71107 zl!343) lambda!340339) _$13!3280)))

(declare-fun b_lambda!236741 () Bool)

(assert (=> (not b_lambda!236741) (not d!1951960)))

(declare-fun bs!1543856 () Bool)

(assert (= bs!1543856 d!1951960))

(assert (=> bs!1543856 m!7052364))

(assert (=> bs!1543856 m!7052778))

(assert (=> d!1951608 d!1951960))

(assert (=> b!6225995 d!1951644))

(declare-fun bm!523077 () Bool)

(declare-fun call!523084 () List!64782)

(declare-fun c!1125440 () Bool)

(declare-fun c!1125436 () Bool)

(assert (=> bm!523077 (= call!523084 ($colon$colon!2030 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345517)))) (ite (or c!1125436 c!1125440) (regTwo!32834 (h!71106 (exprs!6045 lt!2345517))) (h!71106 (exprs!6045 lt!2345517)))))))

(declare-fun c!1125438 () Bool)

(declare-fun call!523082 () (InoxSet Context!11090))

(declare-fun bm!523078 () Bool)

(assert (=> bm!523078 (= call!523082 (derivationStepZipperDown!1409 (ite c!1125438 (regTwo!32835 (h!71106 (exprs!6045 lt!2345517))) (regOne!32834 (h!71106 (exprs!6045 lt!2345517)))) (ite c!1125438 (Context!11091 (t!378318 (exprs!6045 lt!2345517))) (Context!11091 call!523084)) (h!71108 s!2326)))))

(declare-fun b!6226603 () Bool)

(declare-fun e!3789995 () (InoxSet Context!11090))

(assert (=> b!6226603 (= e!3789995 (store ((as const (Array Context!11090 Bool)) false) (Context!11091 (t!378318 (exprs!6045 lt!2345517))) true))))

(declare-fun call!523083 () (InoxSet Context!11090))

(declare-fun bm!523079 () Bool)

(declare-fun call!523086 () List!64782)

(assert (=> bm!523079 (= call!523083 (derivationStepZipperDown!1409 (ite c!1125438 (regOne!32835 (h!71106 (exprs!6045 lt!2345517))) (ite c!1125436 (regTwo!32834 (h!71106 (exprs!6045 lt!2345517))) (ite c!1125440 (regOne!32834 (h!71106 (exprs!6045 lt!2345517))) (reg!16490 (h!71106 (exprs!6045 lt!2345517)))))) (ite (or c!1125438 c!1125436) (Context!11091 (t!378318 (exprs!6045 lt!2345517))) (Context!11091 call!523086)) (h!71108 s!2326)))))

(declare-fun b!6226604 () Bool)

(declare-fun c!1125439 () Bool)

(assert (=> b!6226604 (= c!1125439 ((_ is Star!16161) (h!71106 (exprs!6045 lt!2345517))))))

(declare-fun e!3789990 () (InoxSet Context!11090))

(declare-fun e!3789991 () (InoxSet Context!11090))

(assert (=> b!6226604 (= e!3789990 e!3789991)))

(declare-fun b!6226605 () Bool)

(declare-fun call!523085 () (InoxSet Context!11090))

(assert (=> b!6226605 (= e!3789991 call!523085)))

(declare-fun d!1951962 () Bool)

(declare-fun c!1125437 () Bool)

(assert (=> d!1951962 (= c!1125437 (and ((_ is ElementMatch!16161) (h!71106 (exprs!6045 lt!2345517))) (= (c!1125039 (h!71106 (exprs!6045 lt!2345517))) (h!71108 s!2326))))))

(assert (=> d!1951962 (= (derivationStepZipperDown!1409 (h!71106 (exprs!6045 lt!2345517)) (Context!11091 (t!378318 (exprs!6045 lt!2345517))) (h!71108 s!2326)) e!3789995)))

(declare-fun bm!523080 () Bool)

(assert (=> bm!523080 (= call!523086 call!523084)))

(declare-fun b!6226606 () Bool)

(declare-fun e!3789993 () Bool)

(assert (=> b!6226606 (= c!1125436 e!3789993)))

(declare-fun res!2573160 () Bool)

(assert (=> b!6226606 (=> (not res!2573160) (not e!3789993))))

(assert (=> b!6226606 (= res!2573160 ((_ is Concat!25006) (h!71106 (exprs!6045 lt!2345517))))))

(declare-fun e!3789992 () (InoxSet Context!11090))

(declare-fun e!3789994 () (InoxSet Context!11090))

(assert (=> b!6226606 (= e!3789992 e!3789994)))

(declare-fun b!6226607 () Bool)

(assert (=> b!6226607 (= e!3789991 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226608 () Bool)

(assert (=> b!6226608 (= e!3789992 ((_ map or) call!523083 call!523082))))

(declare-fun b!6226609 () Bool)

(assert (=> b!6226609 (= e!3789994 e!3789990)))

(assert (=> b!6226609 (= c!1125440 ((_ is Concat!25006) (h!71106 (exprs!6045 lt!2345517))))))

(declare-fun bm!523081 () Bool)

(declare-fun call!523087 () (InoxSet Context!11090))

(assert (=> bm!523081 (= call!523085 call!523087)))

(declare-fun bm!523082 () Bool)

(assert (=> bm!523082 (= call!523087 call!523083)))

(declare-fun b!6226610 () Bool)

(assert (=> b!6226610 (= e!3789993 (nullable!6154 (regOne!32834 (h!71106 (exprs!6045 lt!2345517)))))))

(declare-fun b!6226611 () Bool)

(assert (=> b!6226611 (= e!3789995 e!3789992)))

(assert (=> b!6226611 (= c!1125438 ((_ is Union!16161) (h!71106 (exprs!6045 lt!2345517))))))

(declare-fun b!6226612 () Bool)

(assert (=> b!6226612 (= e!3789990 call!523085)))

(declare-fun b!6226613 () Bool)

(assert (=> b!6226613 (= e!3789994 ((_ map or) call!523082 call!523087))))

(assert (= (and d!1951962 c!1125437) b!6226603))

(assert (= (and d!1951962 (not c!1125437)) b!6226611))

(assert (= (and b!6226611 c!1125438) b!6226608))

(assert (= (and b!6226611 (not c!1125438)) b!6226606))

(assert (= (and b!6226606 res!2573160) b!6226610))

(assert (= (and b!6226606 c!1125436) b!6226613))

(assert (= (and b!6226606 (not c!1125436)) b!6226609))

(assert (= (and b!6226609 c!1125440) b!6226612))

(assert (= (and b!6226609 (not c!1125440)) b!6226604))

(assert (= (and b!6226604 c!1125439) b!6226605))

(assert (= (and b!6226604 (not c!1125439)) b!6226607))

(assert (= (or b!6226612 b!6226605) bm!523080))

(assert (= (or b!6226612 b!6226605) bm!523081))

(assert (= (or b!6226613 bm!523080) bm!523077))

(assert (= (or b!6226613 bm!523081) bm!523082))

(assert (= (or b!6226608 b!6226613) bm!523078))

(assert (= (or b!6226608 bm!523082) bm!523079))

(declare-fun m!7053508 () Bool)

(assert (=> bm!523079 m!7053508))

(declare-fun m!7053510 () Bool)

(assert (=> b!6226610 m!7053510))

(declare-fun m!7053512 () Bool)

(assert (=> bm!523077 m!7053512))

(declare-fun m!7053514 () Bool)

(assert (=> bm!523078 m!7053514))

(declare-fun m!7053516 () Bool)

(assert (=> b!6226603 m!7053516))

(assert (=> bm!522920 d!1951962))

(declare-fun d!1951964 () Bool)

(declare-fun res!2573169 () Bool)

(declare-fun e!3790002 () Bool)

(assert (=> d!1951964 (=> res!2573169 e!3790002)))

(assert (=> d!1951964 (= res!2573169 ((_ is Nil!64659) lt!2345628))))

(assert (=> d!1951964 (= (noDuplicate!1999 lt!2345628) e!3790002)))

(declare-fun b!6226622 () Bool)

(declare-fun e!3790003 () Bool)

(assert (=> b!6226622 (= e!3790002 e!3790003)))

(declare-fun res!2573170 () Bool)

(assert (=> b!6226622 (=> (not res!2573170) (not e!3790003))))

(declare-fun contains!20101 (List!64783 Context!11090) Bool)

(assert (=> b!6226622 (= res!2573170 (not (contains!20101 (t!378319 lt!2345628) (h!71107 lt!2345628))))))

(declare-fun b!6226623 () Bool)

(assert (=> b!6226623 (= e!3790003 (noDuplicate!1999 (t!378319 lt!2345628)))))

(assert (= (and d!1951964 (not res!2573169)) b!6226622))

(assert (= (and b!6226622 res!2573170) b!6226623))

(declare-fun m!7053518 () Bool)

(assert (=> b!6226622 m!7053518))

(declare-fun m!7053520 () Bool)

(assert (=> b!6226623 m!7053520))

(assert (=> d!1951660 d!1951964))

(declare-fun d!1951966 () Bool)

(declare-fun e!3790018 () Bool)

(assert (=> d!1951966 e!3790018))

(declare-fun res!2573181 () Bool)

(assert (=> d!1951966 (=> (not res!2573181) (not e!3790018))))

(declare-fun res!2573180 () List!64783)

(assert (=> d!1951966 (= res!2573181 (noDuplicate!1999 res!2573180))))

(declare-fun e!3790019 () Bool)

(assert (=> d!1951966 e!3790019))

(assert (=> d!1951966 (= (choose!46274 z!1189) res!2573180)))

(declare-fun b!6226640 () Bool)

(declare-fun e!3790017 () Bool)

(declare-fun tp!1736584 () Bool)

(assert (=> b!6226640 (= e!3790017 tp!1736584)))

(declare-fun b!6226639 () Bool)

(declare-fun tp!1736583 () Bool)

(assert (=> b!6226639 (= e!3790019 (and (inv!83649 (h!71107 res!2573180)) e!3790017 tp!1736583))))

(declare-fun b!6226641 () Bool)

(assert (=> b!6226641 (= e!3790018 (= (content!12116 res!2573180) z!1189))))

(assert (= b!6226639 b!6226640))

(assert (= (and d!1951966 ((_ is Cons!64659) res!2573180)) b!6226639))

(assert (= (and d!1951966 res!2573181) b!6226641))

(declare-fun m!7053526 () Bool)

(assert (=> d!1951966 m!7053526))

(declare-fun m!7053530 () Bool)

(assert (=> b!6226639 m!7053530))

(declare-fun m!7053534 () Bool)

(assert (=> b!6226641 m!7053534))

(assert (=> d!1951660 d!1951966))

(declare-fun b!6226674 () Bool)

(declare-fun e!3790050 () Bool)

(declare-fun call!523099 () Bool)

(assert (=> b!6226674 (= e!3790050 call!523099)))

(declare-fun b!6226675 () Bool)

(declare-fun e!3790049 () Bool)

(declare-fun e!3790048 () Bool)

(assert (=> b!6226675 (= e!3790049 e!3790048)))

(declare-fun c!1125447 () Bool)

(assert (=> b!6226675 (= c!1125447 ((_ is Union!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6226676 () Bool)

(declare-fun e!3790053 () Bool)

(declare-fun e!3790051 () Bool)

(assert (=> b!6226676 (= e!3790053 e!3790051)))

(declare-fun res!2573206 () Bool)

(assert (=> b!6226676 (=> (not res!2573206) (not e!3790051))))

(assert (=> b!6226676 (= res!2573206 (and (not ((_ is EmptyLang!16161) (h!71106 (exprs!6045 (h!71107 zl!343))))) (not ((_ is ElementMatch!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun b!6226677 () Bool)

(declare-fun e!3790052 () Bool)

(assert (=> b!6226677 (= e!3790048 e!3790052)))

(declare-fun res!2573207 () Bool)

(declare-fun call!523100 () Bool)

(assert (=> b!6226677 (= res!2573207 call!523100)))

(assert (=> b!6226677 (=> (not res!2573207) (not e!3790052))))

(declare-fun bm!523094 () Bool)

(assert (=> bm!523094 (= call!523100 (nullable!6154 (ite c!1125447 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun b!6226678 () Bool)

(assert (=> b!6226678 (= e!3790048 e!3790050)))

(declare-fun res!2573209 () Bool)

(assert (=> b!6226678 (= res!2573209 call!523100)))

(assert (=> b!6226678 (=> res!2573209 e!3790050)))

(declare-fun bm!523095 () Bool)

(assert (=> bm!523095 (= call!523099 (nullable!6154 (ite c!1125447 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun b!6226679 () Bool)

(assert (=> b!6226679 (= e!3790051 e!3790049)))

(declare-fun res!2573208 () Bool)

(assert (=> b!6226679 (=> res!2573208 e!3790049)))

(assert (=> b!6226679 (= res!2573208 ((_ is Star!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6226680 () Bool)

(assert (=> b!6226680 (= e!3790052 call!523099)))

(declare-fun d!1951972 () Bool)

(declare-fun res!2573210 () Bool)

(assert (=> d!1951972 (=> res!2573210 e!3790053)))

(assert (=> d!1951972 (= res!2573210 ((_ is EmptyExpr!16161) (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(assert (=> d!1951972 (= (nullableFct!2110 (h!71106 (exprs!6045 (h!71107 zl!343)))) e!3790053)))

(assert (= (and d!1951972 (not res!2573210)) b!6226676))

(assert (= (and b!6226676 res!2573206) b!6226679))

(assert (= (and b!6226679 (not res!2573208)) b!6226675))

(assert (= (and b!6226675 c!1125447) b!6226678))

(assert (= (and b!6226675 (not c!1125447)) b!6226677))

(assert (= (and b!6226678 (not res!2573209)) b!6226674))

(assert (= (and b!6226677 res!2573207) b!6226680))

(assert (= (or b!6226674 b!6226680) bm!523095))

(assert (= (or b!6226678 b!6226677) bm!523094))

(declare-fun m!7053542 () Bool)

(assert (=> bm!523094 m!7053542))

(declare-fun m!7053544 () Bool)

(assert (=> bm!523095 m!7053544))

(assert (=> d!1951596 d!1951972))

(declare-fun b!6226681 () Bool)

(declare-fun e!3790056 () Bool)

(declare-fun call!523101 () Bool)

(assert (=> b!6226681 (= e!3790056 call!523101)))

(declare-fun b!6226682 () Bool)

(declare-fun e!3790055 () Bool)

(declare-fun e!3790054 () Bool)

(assert (=> b!6226682 (= e!3790055 e!3790054)))

(declare-fun c!1125448 () Bool)

(assert (=> b!6226682 (= c!1125448 ((_ is Union!16161) (regOne!32834 (regOne!32834 r!7292))))))

(declare-fun b!6226683 () Bool)

(declare-fun e!3790059 () Bool)

(declare-fun e!3790057 () Bool)

(assert (=> b!6226683 (= e!3790059 e!3790057)))

(declare-fun res!2573211 () Bool)

(assert (=> b!6226683 (=> (not res!2573211) (not e!3790057))))

(assert (=> b!6226683 (= res!2573211 (and (not ((_ is EmptyLang!16161) (regOne!32834 (regOne!32834 r!7292)))) (not ((_ is ElementMatch!16161) (regOne!32834 (regOne!32834 r!7292))))))))

(declare-fun b!6226684 () Bool)

(declare-fun e!3790058 () Bool)

(assert (=> b!6226684 (= e!3790054 e!3790058)))

(declare-fun res!2573212 () Bool)

(declare-fun call!523102 () Bool)

(assert (=> b!6226684 (= res!2573212 call!523102)))

(assert (=> b!6226684 (=> (not res!2573212) (not e!3790058))))

(declare-fun bm!523096 () Bool)

(assert (=> bm!523096 (= call!523102 (nullable!6154 (ite c!1125448 (regOne!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))))))

(declare-fun b!6226685 () Bool)

(assert (=> b!6226685 (= e!3790054 e!3790056)))

(declare-fun res!2573214 () Bool)

(assert (=> b!6226685 (= res!2573214 call!523102)))

(assert (=> b!6226685 (=> res!2573214 e!3790056)))

(declare-fun bm!523097 () Bool)

(assert (=> bm!523097 (= call!523101 (nullable!6154 (ite c!1125448 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))))))))

(declare-fun b!6226686 () Bool)

(assert (=> b!6226686 (= e!3790057 e!3790055)))

(declare-fun res!2573213 () Bool)

(assert (=> b!6226686 (=> res!2573213 e!3790055)))

(assert (=> b!6226686 (= res!2573213 ((_ is Star!16161) (regOne!32834 (regOne!32834 r!7292))))))

(declare-fun b!6226687 () Bool)

(assert (=> b!6226687 (= e!3790058 call!523101)))

(declare-fun d!1951980 () Bool)

(declare-fun res!2573215 () Bool)

(assert (=> d!1951980 (=> res!2573215 e!3790059)))

(assert (=> d!1951980 (= res!2573215 ((_ is EmptyExpr!16161) (regOne!32834 (regOne!32834 r!7292))))))

(assert (=> d!1951980 (= (nullableFct!2110 (regOne!32834 (regOne!32834 r!7292))) e!3790059)))

(assert (= (and d!1951980 (not res!2573215)) b!6226683))

(assert (= (and b!6226683 res!2573211) b!6226686))

(assert (= (and b!6226686 (not res!2573213)) b!6226682))

(assert (= (and b!6226682 c!1125448) b!6226685))

(assert (= (and b!6226682 (not c!1125448)) b!6226684))

(assert (= (and b!6226685 (not res!2573214)) b!6226681))

(assert (= (and b!6226684 res!2573212) b!6226687))

(assert (= (or b!6226681 b!6226687) bm!523097))

(assert (= (or b!6226685 b!6226684) bm!523096))

(declare-fun m!7053546 () Bool)

(assert (=> bm!523096 m!7053546))

(declare-fun m!7053548 () Bool)

(assert (=> bm!523097 m!7053548))

(assert (=> d!1951630 d!1951980))

(declare-fun b!6226708 () Bool)

(declare-fun e!3790072 () List!64784)

(assert (=> b!6226708 (= e!3790072 (Cons!64660 (h!71108 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660))) (++!14239 (t!378320 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660))) (t!378320 s!2326))))))

(declare-fun b!6226709 () Bool)

(declare-fun res!2573226 () Bool)

(declare-fun e!3790073 () Bool)

(assert (=> b!6226709 (=> (not res!2573226) (not e!3790073))))

(declare-fun lt!2345648 () List!64784)

(declare-fun size!40287 (List!64784) Int)

(assert (=> b!6226709 (= res!2573226 (= (size!40287 lt!2345648) (+ (size!40287 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660))) (size!40287 (t!378320 s!2326)))))))

(declare-fun b!6226710 () Bool)

(assert (=> b!6226710 (= e!3790073 (or (not (= (t!378320 s!2326) Nil!64660)) (= lt!2345648 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)))))))

(declare-fun b!6226707 () Bool)

(assert (=> b!6226707 (= e!3790072 (t!378320 s!2326))))

(declare-fun d!1951982 () Bool)

(assert (=> d!1951982 e!3790073))

(declare-fun res!2573225 () Bool)

(assert (=> d!1951982 (=> (not res!2573225) (not e!3790073))))

(declare-fun content!12117 (List!64784) (InoxSet C!32592))

(assert (=> d!1951982 (= res!2573225 (= (content!12117 lt!2345648) ((_ map or) (content!12117 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660))) (content!12117 (t!378320 s!2326)))))))

(assert (=> d!1951982 (= lt!2345648 e!3790072)))

(declare-fun c!1125454 () Bool)

(assert (=> d!1951982 (= c!1125454 ((_ is Nil!64660) (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660))))))

(assert (=> d!1951982 (= (++!14239 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (t!378320 s!2326)) lt!2345648)))

(assert (= (and d!1951982 c!1125454) b!6226707))

(assert (= (and d!1951982 (not c!1125454)) b!6226708))

(assert (= (and d!1951982 res!2573225) b!6226709))

(assert (= (and b!6226709 res!2573226) b!6226710))

(declare-fun m!7053554 () Bool)

(assert (=> b!6226708 m!7053554))

(declare-fun m!7053556 () Bool)

(assert (=> b!6226709 m!7053556))

(assert (=> b!6226709 m!7052656))

(declare-fun m!7053558 () Bool)

(assert (=> b!6226709 m!7053558))

(declare-fun m!7053560 () Bool)

(assert (=> b!6226709 m!7053560))

(declare-fun m!7053562 () Bool)

(assert (=> d!1951982 m!7053562))

(assert (=> d!1951982 m!7052656))

(declare-fun m!7053564 () Bool)

(assert (=> d!1951982 m!7053564))

(declare-fun m!7053566 () Bool)

(assert (=> d!1951982 m!7053566))

(assert (=> b!6225582 d!1951982))

(declare-fun b!6226716 () Bool)

(declare-fun e!3790076 () List!64784)

(assert (=> b!6226716 (= e!3790076 (Cons!64660 (h!71108 Nil!64660) (++!14239 (t!378320 Nil!64660) (Cons!64660 (h!71108 s!2326) Nil!64660))))))

(declare-fun b!6226717 () Bool)

(declare-fun res!2573232 () Bool)

(declare-fun e!3790077 () Bool)

(assert (=> b!6226717 (=> (not res!2573232) (not e!3790077))))

(declare-fun lt!2345649 () List!64784)

(assert (=> b!6226717 (= res!2573232 (= (size!40287 lt!2345649) (+ (size!40287 Nil!64660) (size!40287 (Cons!64660 (h!71108 s!2326) Nil!64660)))))))

(declare-fun b!6226718 () Bool)

(assert (=> b!6226718 (= e!3790077 (or (not (= (Cons!64660 (h!71108 s!2326) Nil!64660) Nil!64660)) (= lt!2345649 Nil!64660)))))

(declare-fun b!6226715 () Bool)

(assert (=> b!6226715 (= e!3790076 (Cons!64660 (h!71108 s!2326) Nil!64660))))

(declare-fun d!1951986 () Bool)

(assert (=> d!1951986 e!3790077))

(declare-fun res!2573231 () Bool)

(assert (=> d!1951986 (=> (not res!2573231) (not e!3790077))))

(assert (=> d!1951986 (= res!2573231 (= (content!12117 lt!2345649) ((_ map or) (content!12117 Nil!64660) (content!12117 (Cons!64660 (h!71108 s!2326) Nil!64660)))))))

(assert (=> d!1951986 (= lt!2345649 e!3790076)))

(declare-fun c!1125455 () Bool)

(assert (=> d!1951986 (= c!1125455 ((_ is Nil!64660) Nil!64660))))

(assert (=> d!1951986 (= (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) lt!2345649)))

(assert (= (and d!1951986 c!1125455) b!6226715))

(assert (= (and d!1951986 (not c!1125455)) b!6226716))

(assert (= (and d!1951986 res!2573231) b!6226717))

(assert (= (and b!6226717 res!2573232) b!6226718))

(declare-fun m!7053568 () Bool)

(assert (=> b!6226716 m!7053568))

(declare-fun m!7053570 () Bool)

(assert (=> b!6226717 m!7053570))

(declare-fun m!7053572 () Bool)

(assert (=> b!6226717 m!7053572))

(declare-fun m!7053574 () Bool)

(assert (=> b!6226717 m!7053574))

(declare-fun m!7053576 () Bool)

(assert (=> d!1951986 m!7053576))

(declare-fun m!7053578 () Bool)

(assert (=> d!1951986 m!7053578))

(declare-fun m!7053580 () Bool)

(assert (=> d!1951986 m!7053580))

(assert (=> b!6225582 d!1951986))

(declare-fun d!1951988 () Bool)

(assert (=> d!1951988 (= (++!14239 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (t!378320 s!2326)) s!2326)))

(declare-fun lt!2345654 () Unit!157975)

(declare-fun choose!46275 (List!64784 C!32592 List!64784 List!64784) Unit!157975)

(assert (=> d!1951988 (= lt!2345654 (choose!46275 Nil!64660 (h!71108 s!2326) (t!378320 s!2326) s!2326))))

(assert (=> d!1951988 (= (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) (t!378320 s!2326))) s!2326)))

(assert (=> d!1951988 (= (lemmaMoveElementToOtherListKeepsConcatEq!2334 Nil!64660 (h!71108 s!2326) (t!378320 s!2326) s!2326) lt!2345654)))

(declare-fun bs!1543867 () Bool)

(assert (= bs!1543867 d!1951988))

(assert (=> bs!1543867 m!7052656))

(assert (=> bs!1543867 m!7052656))

(assert (=> bs!1543867 m!7052658))

(declare-fun m!7053610 () Bool)

(assert (=> bs!1543867 m!7053610))

(declare-fun m!7053612 () Bool)

(assert (=> bs!1543867 m!7053612))

(assert (=> b!6225582 d!1951988))

(declare-fun b!6226727 () Bool)

(declare-fun e!3790084 () Option!16052)

(assert (=> b!6226727 (= e!3790084 None!16051)))

(declare-fun d!1951994 () Bool)

(declare-fun e!3790082 () Bool)

(assert (=> d!1951994 e!3790082))

(declare-fun res!2573237 () Bool)

(assert (=> d!1951994 (=> res!2573237 e!3790082)))

(declare-fun e!3790086 () Bool)

(assert (=> d!1951994 (= res!2573237 e!3790086)))

(declare-fun res!2573240 () Bool)

(assert (=> d!1951994 (=> (not res!2573240) (not e!3790086))))

(declare-fun lt!2345655 () Option!16052)

(assert (=> d!1951994 (= res!2573240 (isDefined!12755 lt!2345655))))

(declare-fun e!3790083 () Option!16052)

(assert (=> d!1951994 (= lt!2345655 e!3790083)))

(declare-fun c!1125458 () Bool)

(declare-fun e!3790085 () Bool)

(assert (=> d!1951994 (= c!1125458 e!3790085)))

(declare-fun res!2573241 () Bool)

(assert (=> d!1951994 (=> (not res!2573241) (not e!3790085))))

(assert (=> d!1951994 (= res!2573241 (matchR!8344 (regOne!32834 r!7292) (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660))))))

(assert (=> d!1951994 (validRegex!7897 (regOne!32834 r!7292))))

(assert (=> d!1951994 (= (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (t!378320 s!2326) s!2326) lt!2345655)))

(declare-fun b!6226728 () Bool)

(assert (=> b!6226728 (= e!3790085 (matchR!8344 (regTwo!32834 r!7292) (t!378320 s!2326)))))

(declare-fun b!6226729 () Bool)

(assert (=> b!6226729 (= e!3790082 (not (isDefined!12755 lt!2345655)))))

(declare-fun b!6226730 () Bool)

(assert (=> b!6226730 (= e!3790086 (= (++!14239 (_1!36443 (get!22335 lt!2345655)) (_2!36443 (get!22335 lt!2345655))) s!2326))))

(declare-fun b!6226731 () Bool)

(declare-fun res!2573239 () Bool)

(assert (=> b!6226731 (=> (not res!2573239) (not e!3790086))))

(assert (=> b!6226731 (= res!2573239 (matchR!8344 (regOne!32834 r!7292) (_1!36443 (get!22335 lt!2345655))))))

(declare-fun b!6226732 () Bool)

(assert (=> b!6226732 (= e!3790083 e!3790084)))

(declare-fun c!1125459 () Bool)

(assert (=> b!6226732 (= c!1125459 ((_ is Nil!64660) (t!378320 s!2326)))))

(declare-fun b!6226733 () Bool)

(declare-fun res!2573238 () Bool)

(assert (=> b!6226733 (=> (not res!2573238) (not e!3790086))))

(assert (=> b!6226733 (= res!2573238 (matchR!8344 (regTwo!32834 r!7292) (_2!36443 (get!22335 lt!2345655))))))

(declare-fun b!6226734 () Bool)

(assert (=> b!6226734 (= e!3790083 (Some!16051 (tuple2!66281 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (t!378320 s!2326))))))

(declare-fun b!6226735 () Bool)

(declare-fun lt!2345656 () Unit!157975)

(declare-fun lt!2345657 () Unit!157975)

(assert (=> b!6226735 (= lt!2345656 lt!2345657)))

(assert (=> b!6226735 (= (++!14239 (++!14239 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (Cons!64660 (h!71108 (t!378320 s!2326)) Nil!64660)) (t!378320 (t!378320 s!2326))) s!2326)))

(assert (=> b!6226735 (= lt!2345657 (lemmaMoveElementToOtherListKeepsConcatEq!2334 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (h!71108 (t!378320 s!2326)) (t!378320 (t!378320 s!2326)) s!2326))))

(assert (=> b!6226735 (= e!3790084 (findConcatSeparation!2466 (regOne!32834 r!7292) (regTwo!32834 r!7292) (++!14239 (++!14239 Nil!64660 (Cons!64660 (h!71108 s!2326) Nil!64660)) (Cons!64660 (h!71108 (t!378320 s!2326)) Nil!64660)) (t!378320 (t!378320 s!2326)) s!2326))))

(assert (= (and d!1951994 res!2573241) b!6226728))

(assert (= (and d!1951994 c!1125458) b!6226734))

(assert (= (and d!1951994 (not c!1125458)) b!6226732))

(assert (= (and b!6226732 c!1125459) b!6226727))

(assert (= (and b!6226732 (not c!1125459)) b!6226735))

(assert (= (and d!1951994 res!2573240) b!6226731))

(assert (= (and b!6226731 res!2573239) b!6226733))

(assert (= (and b!6226733 res!2573238) b!6226730))

(assert (= (and d!1951994 (not res!2573237)) b!6226729))

(declare-fun m!7053614 () Bool)

(assert (=> b!6226731 m!7053614))

(declare-fun m!7053616 () Bool)

(assert (=> b!6226731 m!7053616))

(declare-fun m!7053618 () Bool)

(assert (=> d!1951994 m!7053618))

(assert (=> d!1951994 m!7052656))

(declare-fun m!7053620 () Bool)

(assert (=> d!1951994 m!7053620))

(assert (=> d!1951994 m!7052650))

(assert (=> b!6226729 m!7053618))

(assert (=> b!6226733 m!7053614))

(declare-fun m!7053622 () Bool)

(assert (=> b!6226733 m!7053622))

(assert (=> b!6226730 m!7053614))

(declare-fun m!7053624 () Bool)

(assert (=> b!6226730 m!7053624))

(assert (=> b!6226735 m!7052656))

(declare-fun m!7053626 () Bool)

(assert (=> b!6226735 m!7053626))

(assert (=> b!6226735 m!7053626))

(declare-fun m!7053628 () Bool)

(assert (=> b!6226735 m!7053628))

(assert (=> b!6226735 m!7052656))

(declare-fun m!7053630 () Bool)

(assert (=> b!6226735 m!7053630))

(assert (=> b!6226735 m!7053626))

(declare-fun m!7053632 () Bool)

(assert (=> b!6226735 m!7053632))

(declare-fun m!7053634 () Bool)

(assert (=> b!6226728 m!7053634))

(assert (=> b!6225582 d!1951994))

(declare-fun c!1125464 () Bool)

(declare-fun c!1125460 () Bool)

(declare-fun bm!523100 () Bool)

(declare-fun call!523107 () List!64782)

(assert (=> bm!523100 (= call!523107 ($colon$colon!2030 (exprs!6045 (ite (or c!1125205 c!1125203) lt!2345516 (Context!11091 call!522922))) (ite (or c!1125460 c!1125464) (regTwo!32834 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))) (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343))))))))))))

(declare-fun c!1125462 () Bool)

(declare-fun bm!523101 () Bool)

(declare-fun call!523105 () (InoxSet Context!11090))

(assert (=> bm!523101 (= call!523105 (derivationStepZipperDown!1409 (ite c!1125462 (regTwo!32835 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))) (regOne!32834 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343))))))))) (ite c!1125462 (ite (or c!1125205 c!1125203) lt!2345516 (Context!11091 call!522922)) (Context!11091 call!523107)) (h!71108 s!2326)))))

(declare-fun e!3790092 () (InoxSet Context!11090))

(declare-fun b!6226736 () Bool)

(assert (=> b!6226736 (= e!3790092 (store ((as const (Array Context!11090 Bool)) false) (ite (or c!1125205 c!1125203) lt!2345516 (Context!11091 call!522922)) true))))

(declare-fun bm!523102 () Bool)

(declare-fun call!523106 () (InoxSet Context!11090))

(declare-fun call!523109 () List!64782)

(assert (=> bm!523102 (= call!523106 (derivationStepZipperDown!1409 (ite c!1125462 (regOne!32835 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))) (ite c!1125460 (regTwo!32834 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))) (ite c!1125464 (regOne!32834 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))) (reg!16490 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343))))))))))) (ite (or c!1125462 c!1125460) (ite (or c!1125205 c!1125203) lt!2345516 (Context!11091 call!522922)) (Context!11091 call!523109)) (h!71108 s!2326)))))

(declare-fun c!1125463 () Bool)

(declare-fun b!6226737 () Bool)

(assert (=> b!6226737 (= c!1125463 ((_ is Star!16161) (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun e!3790087 () (InoxSet Context!11090))

(declare-fun e!3790088 () (InoxSet Context!11090))

(assert (=> b!6226737 (= e!3790087 e!3790088)))

(declare-fun b!6226738 () Bool)

(declare-fun call!523108 () (InoxSet Context!11090))

(assert (=> b!6226738 (= e!3790088 call!523108)))

(declare-fun c!1125461 () Bool)

(declare-fun d!1951996 () Bool)

(assert (=> d!1951996 (= c!1125461 (and ((_ is ElementMatch!16161) (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))) (= (c!1125039 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))) (h!71108 s!2326))))))

(assert (=> d!1951996 (= (derivationStepZipperDown!1409 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343))))))) (ite (or c!1125205 c!1125203) lt!2345516 (Context!11091 call!522922)) (h!71108 s!2326)) e!3790092)))

(declare-fun bm!523103 () Bool)

(assert (=> bm!523103 (= call!523109 call!523107)))

(declare-fun b!6226739 () Bool)

(declare-fun e!3790090 () Bool)

(assert (=> b!6226739 (= c!1125460 e!3790090)))

(declare-fun res!2573242 () Bool)

(assert (=> b!6226739 (=> (not res!2573242) (not e!3790090))))

(assert (=> b!6226739 (= res!2573242 ((_ is Concat!25006) (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun e!3790089 () (InoxSet Context!11090))

(declare-fun e!3790091 () (InoxSet Context!11090))

(assert (=> b!6226739 (= e!3790089 e!3790091)))

(declare-fun b!6226740 () Bool)

(assert (=> b!6226740 (= e!3790088 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226741 () Bool)

(assert (=> b!6226741 (= e!3790089 ((_ map or) call!523106 call!523105))))

(declare-fun b!6226742 () Bool)

(assert (=> b!6226742 (= e!3790091 e!3790087)))

(assert (=> b!6226742 (= c!1125464 ((_ is Concat!25006) (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun bm!523104 () Bool)

(declare-fun call!523110 () (InoxSet Context!11090))

(assert (=> bm!523104 (= call!523108 call!523110)))

(declare-fun bm!523105 () Bool)

(assert (=> bm!523105 (= call!523110 call!523106)))

(declare-fun b!6226743 () Bool)

(assert (=> b!6226743 (= e!3790090 (nullable!6154 (regOne!32834 (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343))))))))))))

(declare-fun b!6226744 () Bool)

(assert (=> b!6226744 (= e!3790092 e!3790089)))

(assert (=> b!6226744 (= c!1125462 ((_ is Union!16161) (ite c!1125205 (regOne!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125203 (regTwo!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (ite c!1125207 (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))) (reg!16490 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))))

(declare-fun b!6226745 () Bool)

(assert (=> b!6226745 (= e!3790087 call!523108)))

(declare-fun b!6226746 () Bool)

(assert (=> b!6226746 (= e!3790091 ((_ map or) call!523105 call!523110))))

(assert (= (and d!1951996 c!1125461) b!6226736))

(assert (= (and d!1951996 (not c!1125461)) b!6226744))

(assert (= (and b!6226744 c!1125462) b!6226741))

(assert (= (and b!6226744 (not c!1125462)) b!6226739))

(assert (= (and b!6226739 res!2573242) b!6226743))

(assert (= (and b!6226739 c!1125460) b!6226746))

(assert (= (and b!6226739 (not c!1125460)) b!6226742))

(assert (= (and b!6226742 c!1125464) b!6226745))

(assert (= (and b!6226742 (not c!1125464)) b!6226737))

(assert (= (and b!6226737 c!1125463) b!6226738))

(assert (= (and b!6226737 (not c!1125463)) b!6226740))

(assert (= (or b!6226745 b!6226738) bm!523103))

(assert (= (or b!6226745 b!6226738) bm!523104))

(assert (= (or b!6226746 bm!523103) bm!523100))

(assert (= (or b!6226746 bm!523104) bm!523105))

(assert (= (or b!6226741 b!6226746) bm!523101))

(assert (= (or b!6226741 bm!523105) bm!523102))

(declare-fun m!7053640 () Bool)

(assert (=> bm!523102 m!7053640))

(declare-fun m!7053642 () Bool)

(assert (=> b!6226743 m!7053642))

(declare-fun m!7053644 () Bool)

(assert (=> bm!523100 m!7053644))

(declare-fun m!7053648 () Bool)

(assert (=> bm!523101 m!7053648))

(declare-fun m!7053652 () Bool)

(assert (=> b!6226736 m!7053652))

(assert (=> bm!522915 d!1951996))

(assert (=> d!1951638 d!1951636))

(declare-fun d!1952000 () Bool)

(assert (=> d!1952000 (= (flatMap!1666 lt!2345520 lambda!340339) (dynLambda!25515 lambda!340339 lt!2345517))))

(assert (=> d!1952000 true))

(declare-fun _$13!3281 () Unit!157975)

(assert (=> d!1952000 (= (choose!46272 lt!2345520 lt!2345517 lambda!340339) _$13!3281)))

(declare-fun b_lambda!236743 () Bool)

(assert (=> (not b_lambda!236743) (not d!1952000)))

(declare-fun bs!1543869 () Bool)

(assert (= bs!1543869 d!1952000))

(assert (=> bs!1543869 m!7052322))

(assert (=> bs!1543869 m!7052856))

(assert (=> d!1951638 d!1952000))

(declare-fun d!1952002 () Bool)

(assert (=> d!1952002 (= (nullable!6154 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))) (nullableFct!2110 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292)))))))

(declare-fun bs!1543870 () Bool)

(assert (= bs!1543870 d!1952002))

(declare-fun m!7053668 () Bool)

(assert (=> bs!1543870 m!7053668))

(assert (=> b!6225969 d!1952002))

(assert (=> d!1951654 d!1951656))

(assert (=> d!1951654 d!1951646))

(declare-fun e!3790098 () Bool)

(declare-fun d!1952004 () Bool)

(assert (=> d!1952004 (= (matchZipper!2173 ((_ map or) lt!2345527 lt!2345521) (t!378320 s!2326)) e!3790098)))

(declare-fun res!2573248 () Bool)

(assert (=> d!1952004 (=> res!2573248 e!3790098)))

(assert (=> d!1952004 (= res!2573248 (matchZipper!2173 lt!2345527 (t!378320 s!2326)))))

(assert (=> d!1952004 true))

(declare-fun _$48!1923 () Unit!157975)

(assert (=> d!1952004 (= (choose!46273 lt!2345527 lt!2345521 (t!378320 s!2326)) _$48!1923)))

(declare-fun b!6226756 () Bool)

(assert (=> b!6226756 (= e!3790098 (matchZipper!2173 lt!2345521 (t!378320 s!2326)))))

(assert (= (and d!1952004 (not res!2573248)) b!6226756))

(assert (=> d!1952004 m!7052384))

(assert (=> d!1952004 m!7052374))

(assert (=> b!6226756 m!7052346))

(assert (=> d!1951654 d!1952004))

(assert (=> bs!1543685 d!1951614))

(declare-fun d!1952008 () Bool)

(assert (=> d!1952008 true))

(assert (=> d!1952008 true))

(declare-fun res!2573249 () Bool)

(assert (=> d!1952008 (= (choose!46267 lambda!340338) res!2573249)))

(assert (=> d!1951566 d!1952008))

(declare-fun b!6226758 () Bool)

(declare-fun e!3790099 () List!64784)

(assert (=> b!6226758 (= e!3790099 (Cons!64660 (h!71108 (_1!36443 (get!22335 lt!2345586))) (++!14239 (t!378320 (_1!36443 (get!22335 lt!2345586))) (_2!36443 (get!22335 lt!2345586)))))))

(declare-fun b!6226759 () Bool)

(declare-fun res!2573251 () Bool)

(declare-fun e!3790100 () Bool)

(assert (=> b!6226759 (=> (not res!2573251) (not e!3790100))))

(declare-fun lt!2345664 () List!64784)

(assert (=> b!6226759 (= res!2573251 (= (size!40287 lt!2345664) (+ (size!40287 (_1!36443 (get!22335 lt!2345586))) (size!40287 (_2!36443 (get!22335 lt!2345586))))))))

(declare-fun b!6226760 () Bool)

(assert (=> b!6226760 (= e!3790100 (or (not (= (_2!36443 (get!22335 lt!2345586)) Nil!64660)) (= lt!2345664 (_1!36443 (get!22335 lt!2345586)))))))

(declare-fun b!6226757 () Bool)

(assert (=> b!6226757 (= e!3790099 (_2!36443 (get!22335 lt!2345586)))))

(declare-fun d!1952010 () Bool)

(assert (=> d!1952010 e!3790100))

(declare-fun res!2573250 () Bool)

(assert (=> d!1952010 (=> (not res!2573250) (not e!3790100))))

(assert (=> d!1952010 (= res!2573250 (= (content!12117 lt!2345664) ((_ map or) (content!12117 (_1!36443 (get!22335 lt!2345586))) (content!12117 (_2!36443 (get!22335 lt!2345586))))))))

(assert (=> d!1952010 (= lt!2345664 e!3790099)))

(declare-fun c!1125467 () Bool)

(assert (=> d!1952010 (= c!1125467 ((_ is Nil!64660) (_1!36443 (get!22335 lt!2345586))))))

(assert (=> d!1952010 (= (++!14239 (_1!36443 (get!22335 lt!2345586)) (_2!36443 (get!22335 lt!2345586))) lt!2345664)))

(assert (= (and d!1952010 c!1125467) b!6226757))

(assert (= (and d!1952010 (not c!1125467)) b!6226758))

(assert (= (and d!1952010 res!2573250) b!6226759))

(assert (= (and b!6226759 res!2573251) b!6226760))

(declare-fun m!7053674 () Bool)

(assert (=> b!6226758 m!7053674))

(declare-fun m!7053676 () Bool)

(assert (=> b!6226759 m!7053676))

(declare-fun m!7053678 () Bool)

(assert (=> b!6226759 m!7053678))

(declare-fun m!7053682 () Bool)

(assert (=> b!6226759 m!7053682))

(declare-fun m!7053684 () Bool)

(assert (=> d!1952010 m!7053684))

(declare-fun m!7053686 () Bool)

(assert (=> d!1952010 m!7053686))

(declare-fun m!7053688 () Bool)

(assert (=> d!1952010 m!7053688))

(assert (=> b!6225577 d!1952010))

(assert (=> b!6225577 d!1951898))

(declare-fun d!1952014 () Bool)

(declare-fun c!1125468 () Bool)

(assert (=> d!1952014 (= c!1125468 (isEmpty!36673 (tail!11915 (t!378320 s!2326))))))

(declare-fun e!3790102 () Bool)

(assert (=> d!1952014 (= (matchZipper!2173 (derivationStepZipper!2127 ((_ map or) lt!2345527 lt!2345521) (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))) e!3790102)))

(declare-fun b!6226762 () Bool)

(assert (=> b!6226762 (= e!3790102 (nullableZipper!1935 (derivationStepZipper!2127 ((_ map or) lt!2345527 lt!2345521) (head!12830 (t!378320 s!2326)))))))

(declare-fun b!6226763 () Bool)

(assert (=> b!6226763 (= e!3790102 (matchZipper!2173 (derivationStepZipper!2127 (derivationStepZipper!2127 ((_ map or) lt!2345527 lt!2345521) (head!12830 (t!378320 s!2326))) (head!12830 (tail!11915 (t!378320 s!2326)))) (tail!11915 (tail!11915 (t!378320 s!2326)))))))

(assert (= (and d!1952014 c!1125468) b!6226762))

(assert (= (and d!1952014 (not c!1125468)) b!6226763))

(assert (=> d!1952014 m!7052590))

(assert (=> d!1952014 m!7053172))

(assert (=> b!6226762 m!7052908))

(declare-fun m!7053692 () Bool)

(assert (=> b!6226762 m!7053692))

(assert (=> b!6226763 m!7052590))

(assert (=> b!6226763 m!7053176))

(assert (=> b!6226763 m!7052908))

(assert (=> b!6226763 m!7053176))

(declare-fun m!7053694 () Bool)

(assert (=> b!6226763 m!7053694))

(assert (=> b!6226763 m!7052590))

(assert (=> b!6226763 m!7053182))

(assert (=> b!6226763 m!7053694))

(assert (=> b!6226763 m!7053182))

(declare-fun m!7053696 () Bool)

(assert (=> b!6226763 m!7053696))

(assert (=> b!6225997 d!1952014))

(declare-fun bs!1543877 () Bool)

(declare-fun d!1952018 () Bool)

(assert (= bs!1543877 (and d!1952018 b!6225256)))

(declare-fun lambda!340451 () Int)

(assert (=> bs!1543877 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340451 lambda!340339))))

(declare-fun bs!1543878 () Bool)

(assert (= bs!1543878 (and d!1952018 d!1951616)))

(assert (=> bs!1543878 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340451 lambda!340389))))

(declare-fun bs!1543879 () Bool)

(assert (= bs!1543879 (and d!1952018 d!1951794)))

(assert (=> bs!1543879 (= lambda!340451 lambda!340430)))

(assert (=> d!1952018 true))

(assert (=> d!1952018 (= (derivationStepZipper!2127 ((_ map or) lt!2345527 lt!2345521) (head!12830 (t!378320 s!2326))) (flatMap!1666 ((_ map or) lt!2345527 lt!2345521) lambda!340451))))

(declare-fun bs!1543880 () Bool)

(assert (= bs!1543880 d!1952018))

(declare-fun m!7053704 () Bool)

(assert (=> bs!1543880 m!7053704))

(assert (=> b!6225997 d!1952018))

(assert (=> b!6225997 d!1951798))

(assert (=> b!6225997 d!1951802))

(assert (=> d!1951644 d!1951772))

(declare-fun d!1952024 () Bool)

(declare-fun res!2573258 () Bool)

(declare-fun e!3790109 () Bool)

(assert (=> d!1952024 (=> res!2573258 e!3790109)))

(assert (=> d!1952024 (= res!2573258 ((_ is ElementMatch!16161) (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))))))

(assert (=> d!1952024 (= (validRegex!7897 (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))) e!3790109)))

(declare-fun b!6226769 () Bool)

(declare-fun e!3790111 () Bool)

(declare-fun call!523112 () Bool)

(assert (=> b!6226769 (= e!3790111 call!523112)))

(declare-fun b!6226770 () Bool)

(declare-fun e!3790110 () Bool)

(declare-fun e!3790112 () Bool)

(assert (=> b!6226770 (= e!3790110 e!3790112)))

(declare-fun c!1125471 () Bool)

(assert (=> b!6226770 (= c!1125471 ((_ is Union!16161) (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))))))

(declare-fun b!6226771 () Bool)

(assert (=> b!6226771 (= e!3790109 e!3790110)))

(declare-fun c!1125472 () Bool)

(assert (=> b!6226771 (= c!1125472 ((_ is Star!16161) (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))))))

(declare-fun bm!523106 () Bool)

(assert (=> bm!523106 (= call!523112 (validRegex!7897 (ite c!1125471 (regTwo!32835 (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))) (regTwo!32834 (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))))))))

(declare-fun b!6226772 () Bool)

(declare-fun e!3790106 () Bool)

(assert (=> b!6226772 (= e!3790110 e!3790106)))

(declare-fun res!2573255 () Bool)

(assert (=> b!6226772 (= res!2573255 (not (nullable!6154 (reg!16490 (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))))))))

(assert (=> b!6226772 (=> (not res!2573255) (not e!3790106))))

(declare-fun bm!523107 () Bool)

(declare-fun call!523113 () Bool)

(assert (=> bm!523107 (= call!523113 (validRegex!7897 (ite c!1125472 (reg!16490 (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))) (ite c!1125471 (regOne!32835 (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292))) (regOne!32834 (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292)))))))))

(declare-fun b!6226773 () Bool)

(declare-fun res!2573256 () Bool)

(assert (=> b!6226773 (=> (not res!2573256) (not e!3790111))))

(declare-fun call!523111 () Bool)

(assert (=> b!6226773 (= res!2573256 call!523111)))

(assert (=> b!6226773 (= e!3790112 e!3790111)))

(declare-fun b!6226774 () Bool)

(declare-fun res!2573254 () Bool)

(declare-fun e!3790107 () Bool)

(assert (=> b!6226774 (=> res!2573254 e!3790107)))

(assert (=> b!6226774 (= res!2573254 (not ((_ is Concat!25006) (ite c!1125162 (regTwo!32835 r!7292) (regTwo!32834 r!7292)))))))

(assert (=> b!6226774 (= e!3790112 e!3790107)))

(declare-fun b!6226775 () Bool)

(declare-fun e!3790108 () Bool)

(assert (=> b!6226775 (= e!3790107 e!3790108)))

(declare-fun res!2573257 () Bool)

(assert (=> b!6226775 (=> (not res!2573257) (not e!3790108))))

(assert (=> b!6226775 (= res!2573257 call!523111)))

(declare-fun bm!523108 () Bool)

(assert (=> bm!523108 (= call!523111 call!523113)))

(declare-fun b!6226776 () Bool)

(assert (=> b!6226776 (= e!3790108 call!523112)))

(declare-fun b!6226777 () Bool)

(assert (=> b!6226777 (= e!3790106 call!523113)))

(assert (= (and d!1952024 (not res!2573258)) b!6226771))

(assert (= (and b!6226771 c!1125472) b!6226772))

(assert (= (and b!6226771 (not c!1125472)) b!6226770))

(assert (= (and b!6226772 res!2573255) b!6226777))

(assert (= (and b!6226770 c!1125471) b!6226773))

(assert (= (and b!6226770 (not c!1125471)) b!6226774))

(assert (= (and b!6226773 res!2573256) b!6226769))

(assert (= (and b!6226774 (not res!2573254)) b!6226775))

(assert (= (and b!6226775 res!2573257) b!6226776))

(assert (= (or b!6226769 b!6226776) bm!523106))

(assert (= (or b!6226773 b!6226775) bm!523108))

(assert (= (or b!6226777 bm!523108) bm!523107))

(declare-fun m!7053712 () Bool)

(assert (=> bm!523106 m!7053712))

(declare-fun m!7053714 () Bool)

(assert (=> b!6226772 m!7053714))

(declare-fun m!7053716 () Bool)

(assert (=> bm!523107 m!7053716))

(assert (=> bm!522885 d!1952024))

(assert (=> d!1951594 d!1951592))

(assert (=> d!1951594 d!1951590))

(declare-fun d!1952028 () Bool)

(assert (=> d!1952028 (= (matchR!8344 r!7292 s!2326) (matchRSpec!3262 r!7292 s!2326))))

(assert (=> d!1952028 true))

(declare-fun _$88!4850 () Unit!157975)

(assert (=> d!1952028 (= (choose!46270 r!7292 s!2326) _$88!4850)))

(declare-fun bs!1543888 () Bool)

(assert (= bs!1543888 d!1952028))

(assert (=> bs!1543888 m!7052370))

(assert (=> bs!1543888 m!7052368))

(assert (=> d!1951594 d!1952028))

(assert (=> d!1951594 d!1951588))

(declare-fun bm!523117 () Bool)

(declare-fun call!523124 () List!64782)

(declare-fun c!1125483 () Bool)

(declare-fun c!1125479 () Bool)

(assert (=> bm!523117 (= call!523124 ($colon$colon!2030 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345516)))) (ite (or c!1125479 c!1125483) (regTwo!32834 (h!71106 (exprs!6045 lt!2345516))) (h!71106 (exprs!6045 lt!2345516)))))))

(declare-fun c!1125481 () Bool)

(declare-fun call!523122 () (InoxSet Context!11090))

(declare-fun bm!523118 () Bool)

(assert (=> bm!523118 (= call!523122 (derivationStepZipperDown!1409 (ite c!1125481 (regTwo!32835 (h!71106 (exprs!6045 lt!2345516))) (regOne!32834 (h!71106 (exprs!6045 lt!2345516)))) (ite c!1125481 (Context!11091 (t!378318 (exprs!6045 lt!2345516))) (Context!11091 call!523124)) (h!71108 s!2326)))))

(declare-fun b!6226796 () Bool)

(declare-fun e!3790130 () (InoxSet Context!11090))

(assert (=> b!6226796 (= e!3790130 (store ((as const (Array Context!11090 Bool)) false) (Context!11091 (t!378318 (exprs!6045 lt!2345516))) true))))

(declare-fun call!523123 () (InoxSet Context!11090))

(declare-fun call!523126 () List!64782)

(declare-fun bm!523119 () Bool)

(assert (=> bm!523119 (= call!523123 (derivationStepZipperDown!1409 (ite c!1125481 (regOne!32835 (h!71106 (exprs!6045 lt!2345516))) (ite c!1125479 (regTwo!32834 (h!71106 (exprs!6045 lt!2345516))) (ite c!1125483 (regOne!32834 (h!71106 (exprs!6045 lt!2345516))) (reg!16490 (h!71106 (exprs!6045 lt!2345516)))))) (ite (or c!1125481 c!1125479) (Context!11091 (t!378318 (exprs!6045 lt!2345516))) (Context!11091 call!523126)) (h!71108 s!2326)))))

(declare-fun b!6226797 () Bool)

(declare-fun c!1125482 () Bool)

(assert (=> b!6226797 (= c!1125482 ((_ is Star!16161) (h!71106 (exprs!6045 lt!2345516))))))

(declare-fun e!3790125 () (InoxSet Context!11090))

(declare-fun e!3790126 () (InoxSet Context!11090))

(assert (=> b!6226797 (= e!3790125 e!3790126)))

(declare-fun b!6226798 () Bool)

(declare-fun call!523125 () (InoxSet Context!11090))

(assert (=> b!6226798 (= e!3790126 call!523125)))

(declare-fun d!1952034 () Bool)

(declare-fun c!1125480 () Bool)

(assert (=> d!1952034 (= c!1125480 (and ((_ is ElementMatch!16161) (h!71106 (exprs!6045 lt!2345516))) (= (c!1125039 (h!71106 (exprs!6045 lt!2345516))) (h!71108 s!2326))))))

(assert (=> d!1952034 (= (derivationStepZipperDown!1409 (h!71106 (exprs!6045 lt!2345516)) (Context!11091 (t!378318 (exprs!6045 lt!2345516))) (h!71108 s!2326)) e!3790130)))

(declare-fun bm!523120 () Bool)

(assert (=> bm!523120 (= call!523126 call!523124)))

(declare-fun b!6226799 () Bool)

(declare-fun e!3790128 () Bool)

(assert (=> b!6226799 (= c!1125479 e!3790128)))

(declare-fun res!2573265 () Bool)

(assert (=> b!6226799 (=> (not res!2573265) (not e!3790128))))

(assert (=> b!6226799 (= res!2573265 ((_ is Concat!25006) (h!71106 (exprs!6045 lt!2345516))))))

(declare-fun e!3790127 () (InoxSet Context!11090))

(declare-fun e!3790129 () (InoxSet Context!11090))

(assert (=> b!6226799 (= e!3790127 e!3790129)))

(declare-fun b!6226800 () Bool)

(assert (=> b!6226800 (= e!3790126 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226801 () Bool)

(assert (=> b!6226801 (= e!3790127 ((_ map or) call!523123 call!523122))))

(declare-fun b!6226802 () Bool)

(assert (=> b!6226802 (= e!3790129 e!3790125)))

(assert (=> b!6226802 (= c!1125483 ((_ is Concat!25006) (h!71106 (exprs!6045 lt!2345516))))))

(declare-fun bm!523121 () Bool)

(declare-fun call!523127 () (InoxSet Context!11090))

(assert (=> bm!523121 (= call!523125 call!523127)))

(declare-fun bm!523122 () Bool)

(assert (=> bm!523122 (= call!523127 call!523123)))

(declare-fun b!6226803 () Bool)

(assert (=> b!6226803 (= e!3790128 (nullable!6154 (regOne!32834 (h!71106 (exprs!6045 lt!2345516)))))))

(declare-fun b!6226804 () Bool)

(assert (=> b!6226804 (= e!3790130 e!3790127)))

(assert (=> b!6226804 (= c!1125481 ((_ is Union!16161) (h!71106 (exprs!6045 lt!2345516))))))

(declare-fun b!6226805 () Bool)

(assert (=> b!6226805 (= e!3790125 call!523125)))

(declare-fun b!6226806 () Bool)

(assert (=> b!6226806 (= e!3790129 ((_ map or) call!523122 call!523127))))

(assert (= (and d!1952034 c!1125480) b!6226796))

(assert (= (and d!1952034 (not c!1125480)) b!6226804))

(assert (= (and b!6226804 c!1125481) b!6226801))

(assert (= (and b!6226804 (not c!1125481)) b!6226799))

(assert (= (and b!6226799 res!2573265) b!6226803))

(assert (= (and b!6226799 c!1125479) b!6226806))

(assert (= (and b!6226799 (not c!1125479)) b!6226802))

(assert (= (and b!6226802 c!1125483) b!6226805))

(assert (= (and b!6226802 (not c!1125483)) b!6226797))

(assert (= (and b!6226797 c!1125482) b!6226798))

(assert (= (and b!6226797 (not c!1125482)) b!6226800))

(assert (= (or b!6226805 b!6226798) bm!523120))

(assert (= (or b!6226805 b!6226798) bm!523121))

(assert (= (or b!6226806 bm!523120) bm!523117))

(assert (= (or b!6226806 bm!523121) bm!523122))

(assert (= (or b!6226801 b!6226806) bm!523118))

(assert (= (or b!6226801 bm!523122) bm!523119))

(declare-fun m!7053740 () Bool)

(assert (=> bm!523119 m!7053740))

(declare-fun m!7053742 () Bool)

(assert (=> b!6226803 m!7053742))

(declare-fun m!7053744 () Bool)

(assert (=> bm!523117 m!7053744))

(declare-fun m!7053746 () Bool)

(assert (=> bm!523118 m!7053746))

(declare-fun m!7053748 () Bool)

(assert (=> b!6226796 m!7053748))

(assert (=> bm!522919 d!1952034))

(declare-fun d!1952040 () Bool)

(assert (=> d!1952040 true))

(declare-fun setRes!42317 () Bool)

(assert (=> d!1952040 setRes!42317))

(declare-fun condSetEmpty!42317 () Bool)

(declare-fun res!2573266 () (InoxSet Context!11090))

(assert (=> d!1952040 (= condSetEmpty!42317 (= res!2573266 ((as const (Array Context!11090 Bool)) false)))))

(assert (=> d!1952040 (= (choose!46271 lt!2345520 lambda!340339) res!2573266)))

(declare-fun setIsEmpty!42317 () Bool)

(assert (=> setIsEmpty!42317 setRes!42317))

(declare-fun tp!1736595 () Bool)

(declare-fun setNonEmpty!42317 () Bool)

(declare-fun e!3790132 () Bool)

(declare-fun setElem!42317 () Context!11090)

(assert (=> setNonEmpty!42317 (= setRes!42317 (and tp!1736595 (inv!83649 setElem!42317) e!3790132))))

(declare-fun setRest!42317 () (InoxSet Context!11090))

(assert (=> setNonEmpty!42317 (= res!2573266 ((_ map or) (store ((as const (Array Context!11090 Bool)) false) setElem!42317 true) setRest!42317))))

(declare-fun b!6226809 () Bool)

(declare-fun tp!1736596 () Bool)

(assert (=> b!6226809 (= e!3790132 tp!1736596)))

(assert (= (and d!1952040 condSetEmpty!42317) setIsEmpty!42317))

(assert (= (and d!1952040 (not condSetEmpty!42317)) setNonEmpty!42317))

(assert (= setNonEmpty!42317 b!6226809))

(declare-fun m!7053750 () Bool)

(assert (=> setNonEmpty!42317 m!7053750))

(assert (=> d!1951636 d!1952040))

(declare-fun d!1952042 () Bool)

(assert (=> d!1952042 (= (head!12831 (unfocusZipperList!1582 zl!343)) (h!71106 (unfocusZipperList!1582 zl!343)))))

(assert (=> b!6225918 d!1952042))

(declare-fun d!1952044 () Bool)

(assert (=> d!1952044 (= ($colon$colon!2030 (exprs!6045 lt!2345516) (ite (or c!1125243 c!1125247) (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (regTwo!32834 (regOne!32834 r!7292)))) (Cons!64658 (ite (or c!1125243 c!1125247) (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (regTwo!32834 (regOne!32834 r!7292))) (exprs!6045 lt!2345516)))))

(assert (=> bm!522922 d!1952044))

(assert (=> d!1951656 d!1951772))

(declare-fun d!1952046 () Bool)

(assert (=> d!1952046 true))

(declare-fun setRes!42318 () Bool)

(assert (=> d!1952046 setRes!42318))

(declare-fun condSetEmpty!42318 () Bool)

(declare-fun res!2573267 () (InoxSet Context!11090))

(assert (=> d!1952046 (= condSetEmpty!42318 (= res!2573267 ((as const (Array Context!11090 Bool)) false)))))

(assert (=> d!1952046 (= (choose!46271 lt!2345537 lambda!340339) res!2573267)))

(declare-fun setIsEmpty!42318 () Bool)

(assert (=> setIsEmpty!42318 setRes!42318))

(declare-fun e!3790133 () Bool)

(declare-fun setElem!42318 () Context!11090)

(declare-fun tp!1736597 () Bool)

(declare-fun setNonEmpty!42318 () Bool)

(assert (=> setNonEmpty!42318 (= setRes!42318 (and tp!1736597 (inv!83649 setElem!42318) e!3790133))))

(declare-fun setRest!42318 () (InoxSet Context!11090))

(assert (=> setNonEmpty!42318 (= res!2573267 ((_ map or) (store ((as const (Array Context!11090 Bool)) false) setElem!42318 true) setRest!42318))))

(declare-fun b!6226810 () Bool)

(declare-fun tp!1736598 () Bool)

(assert (=> b!6226810 (= e!3790133 tp!1736598)))

(assert (= (and d!1952046 condSetEmpty!42318) setIsEmpty!42318))

(assert (= (and d!1952046 (not condSetEmpty!42318)) setNonEmpty!42318))

(assert (= setNonEmpty!42318 b!6226810))

(declare-fun m!7053752 () Bool)

(assert (=> setNonEmpty!42318 m!7053752))

(assert (=> d!1951612 d!1952046))

(declare-fun d!1952048 () Bool)

(declare-fun c!1125485 () Bool)

(assert (=> d!1952048 (= c!1125485 (isEmpty!36673 (tail!11915 (t!378320 s!2326))))))

(declare-fun e!3790134 () Bool)

(assert (=> d!1952048 (= (matchZipper!2173 (derivationStepZipper!2127 lt!2345535 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))) e!3790134)))

(declare-fun b!6226811 () Bool)

(assert (=> b!6226811 (= e!3790134 (nullableZipper!1935 (derivationStepZipper!2127 lt!2345535 (head!12830 (t!378320 s!2326)))))))

(declare-fun b!6226812 () Bool)

(assert (=> b!6226812 (= e!3790134 (matchZipper!2173 (derivationStepZipper!2127 (derivationStepZipper!2127 lt!2345535 (head!12830 (t!378320 s!2326))) (head!12830 (tail!11915 (t!378320 s!2326)))) (tail!11915 (tail!11915 (t!378320 s!2326)))))))

(assert (= (and d!1952048 c!1125485) b!6226811))

(assert (= (and d!1952048 (not c!1125485)) b!6226812))

(assert (=> d!1952048 m!7052590))

(assert (=> d!1952048 m!7053172))

(assert (=> b!6226811 m!7052588))

(declare-fun m!7053756 () Bool)

(assert (=> b!6226811 m!7053756))

(assert (=> b!6226812 m!7052590))

(assert (=> b!6226812 m!7053176))

(assert (=> b!6226812 m!7052588))

(assert (=> b!6226812 m!7053176))

(declare-fun m!7053758 () Bool)

(assert (=> b!6226812 m!7053758))

(assert (=> b!6226812 m!7052590))

(assert (=> b!6226812 m!7053182))

(assert (=> b!6226812 m!7053758))

(assert (=> b!6226812 m!7053182))

(declare-fun m!7053760 () Bool)

(assert (=> b!6226812 m!7053760))

(assert (=> b!6225482 d!1952048))

(declare-fun bs!1543897 () Bool)

(declare-fun d!1952052 () Bool)

(assert (= bs!1543897 (and d!1952052 b!6225256)))

(declare-fun lambda!340454 () Int)

(assert (=> bs!1543897 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340454 lambda!340339))))

(declare-fun bs!1543900 () Bool)

(assert (= bs!1543900 (and d!1952052 d!1951616)))

(assert (=> bs!1543900 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340454 lambda!340389))))

(declare-fun bs!1543901 () Bool)

(assert (= bs!1543901 (and d!1952052 d!1951794)))

(assert (=> bs!1543901 (= lambda!340454 lambda!340430)))

(declare-fun bs!1543902 () Bool)

(assert (= bs!1543902 (and d!1952052 d!1952018)))

(assert (=> bs!1543902 (= lambda!340454 lambda!340451)))

(assert (=> d!1952052 true))

(assert (=> d!1952052 (= (derivationStepZipper!2127 lt!2345535 (head!12830 (t!378320 s!2326))) (flatMap!1666 lt!2345535 lambda!340454))))

(declare-fun bs!1543903 () Bool)

(assert (= bs!1543903 d!1952052))

(declare-fun m!7053784 () Bool)

(assert (=> bs!1543903 m!7053784))

(assert (=> b!6225482 d!1952052))

(assert (=> b!6225482 d!1951798))

(assert (=> b!6225482 d!1951802))

(declare-fun c!1125492 () Bool)

(declare-fun call!523130 () List!64782)

(declare-fun bm!523123 () Bool)

(declare-fun c!1125488 () Bool)

(assert (=> bm!523123 (= call!523130 ($colon$colon!2030 (exprs!6045 (ite c!1125250 lt!2345517 (Context!11091 call!522935))) (ite (or c!1125488 c!1125492) (regTwo!32834 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))) (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))))))))

(declare-fun call!523128 () (InoxSet Context!11090))

(declare-fun c!1125490 () Bool)

(declare-fun bm!523124 () Bool)

(assert (=> bm!523124 (= call!523128 (derivationStepZipperDown!1409 (ite c!1125490 (regTwo!32835 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))) (regOne!32834 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))))) (ite c!1125490 (ite c!1125250 lt!2345517 (Context!11091 call!522935)) (Context!11091 call!523130)) (h!71108 s!2326)))))

(declare-fun e!3790145 () (InoxSet Context!11090))

(declare-fun b!6226821 () Bool)

(assert (=> b!6226821 (= e!3790145 (store ((as const (Array Context!11090 Bool)) false) (ite c!1125250 lt!2345517 (Context!11091 call!522935)) true))))

(declare-fun call!523129 () (InoxSet Context!11090))

(declare-fun bm!523125 () Bool)

(declare-fun call!523132 () List!64782)

(assert (=> bm!523125 (= call!523129 (derivationStepZipperDown!1409 (ite c!1125490 (regOne!32835 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))) (ite c!1125488 (regTwo!32834 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))) (ite c!1125492 (regOne!32834 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))) (reg!16490 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))))))) (ite (or c!1125490 c!1125488) (ite c!1125250 lt!2345517 (Context!11091 call!522935)) (Context!11091 call!523132)) (h!71108 s!2326)))))

(declare-fun b!6226822 () Bool)

(declare-fun c!1125491 () Bool)

(assert (=> b!6226822 (= c!1125491 ((_ is Star!16161) (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))))))

(declare-fun e!3790140 () (InoxSet Context!11090))

(declare-fun e!3790141 () (InoxSet Context!11090))

(assert (=> b!6226822 (= e!3790140 e!3790141)))

(declare-fun b!6226823 () Bool)

(declare-fun call!523131 () (InoxSet Context!11090))

(assert (=> b!6226823 (= e!3790141 call!523131)))

(declare-fun d!1952062 () Bool)

(declare-fun c!1125489 () Bool)

(assert (=> d!1952062 (= c!1125489 (and ((_ is ElementMatch!16161) (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))) (= (c!1125039 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))) (h!71108 s!2326))))))

(assert (=> d!1952062 (= (derivationStepZipperDown!1409 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))) (ite c!1125250 lt!2345517 (Context!11091 call!522935)) (h!71108 s!2326)) e!3790145)))

(declare-fun bm!523126 () Bool)

(assert (=> bm!523126 (= call!523132 call!523130)))

(declare-fun b!6226824 () Bool)

(declare-fun e!3790143 () Bool)

(assert (=> b!6226824 (= c!1125488 e!3790143)))

(declare-fun res!2573272 () Bool)

(assert (=> b!6226824 (=> (not res!2573272) (not e!3790143))))

(assert (=> b!6226824 (= res!2573272 ((_ is Concat!25006) (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))))))

(declare-fun e!3790142 () (InoxSet Context!11090))

(declare-fun e!3790144 () (InoxSet Context!11090))

(assert (=> b!6226824 (= e!3790142 e!3790144)))

(declare-fun b!6226825 () Bool)

(assert (=> b!6226825 (= e!3790141 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6226826 () Bool)

(assert (=> b!6226826 (= e!3790142 ((_ map or) call!523129 call!523128))))

(declare-fun b!6226827 () Bool)

(assert (=> b!6226827 (= e!3790144 e!3790140)))

(assert (=> b!6226827 (= c!1125492 ((_ is Concat!25006) (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))))))

(declare-fun bm!523127 () Bool)

(declare-fun call!523133 () (InoxSet Context!11090))

(assert (=> bm!523127 (= call!523131 call!523133)))

(declare-fun bm!523128 () Bool)

(assert (=> bm!523128 (= call!523133 call!523129)))

(declare-fun b!6226828 () Bool)

(assert (=> b!6226828 (= e!3790143 (nullable!6154 (regOne!32834 (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))))))))

(declare-fun b!6226829 () Bool)

(assert (=> b!6226829 (= e!3790145 e!3790142)))

(assert (=> b!6226829 (= c!1125490 ((_ is Union!16161) (ite c!1125250 (regTwo!32835 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 (regOne!32834 r!7292))))))))

(declare-fun b!6226830 () Bool)

(assert (=> b!6226830 (= e!3790140 call!523131)))

(declare-fun b!6226831 () Bool)

(assert (=> b!6226831 (= e!3790144 ((_ map or) call!523128 call!523133))))

(assert (= (and d!1952062 c!1125489) b!6226821))

(assert (= (and d!1952062 (not c!1125489)) b!6226829))

(assert (= (and b!6226829 c!1125490) b!6226826))

(assert (= (and b!6226829 (not c!1125490)) b!6226824))

(assert (= (and b!6226824 res!2573272) b!6226828))

(assert (= (and b!6226824 c!1125488) b!6226831))

(assert (= (and b!6226824 (not c!1125488)) b!6226827))

(assert (= (and b!6226827 c!1125492) b!6226830))

(assert (= (and b!6226827 (not c!1125492)) b!6226822))

(assert (= (and b!6226822 c!1125491) b!6226823))

(assert (= (and b!6226822 (not c!1125491)) b!6226825))

(assert (= (or b!6226830 b!6226823) bm!523126))

(assert (= (or b!6226830 b!6226823) bm!523127))

(assert (= (or b!6226831 bm!523126) bm!523123))

(assert (= (or b!6226831 bm!523127) bm!523128))

(assert (= (or b!6226826 b!6226831) bm!523124))

(assert (= (or b!6226826 bm!523128) bm!523125))

(declare-fun m!7053786 () Bool)

(assert (=> bm!523125 m!7053786))

(declare-fun m!7053788 () Bool)

(assert (=> b!6226828 m!7053788))

(declare-fun m!7053790 () Bool)

(assert (=> bm!523123 m!7053790))

(declare-fun m!7053792 () Bool)

(assert (=> bm!523124 m!7053792))

(declare-fun m!7053794 () Bool)

(assert (=> b!6226821 m!7053794))

(assert (=> bm!522929 d!1952062))

(declare-fun b!6226832 () Bool)

(declare-fun res!2573274 () Bool)

(declare-fun e!3790147 () Bool)

(assert (=> b!6226832 (=> (not res!2573274) (not e!3790147))))

(declare-fun call!523134 () Bool)

(assert (=> b!6226832 (= res!2573274 (not call!523134))))

(declare-fun b!6226833 () Bool)

(declare-fun e!3790151 () Bool)

(declare-fun e!3790148 () Bool)

(assert (=> b!6226833 (= e!3790151 e!3790148)))

(declare-fun res!2573279 () Bool)

(assert (=> b!6226833 (=> res!2573279 e!3790148)))

(assert (=> b!6226833 (= res!2573279 call!523134)))

(declare-fun b!6226834 () Bool)

(declare-fun e!3790152 () Bool)

(assert (=> b!6226834 (= e!3790152 (nullable!6154 (derivativeStep!4874 r!7292 (head!12830 s!2326))))))

(declare-fun b!6226835 () Bool)

(assert (=> b!6226835 (= e!3790152 (matchR!8344 (derivativeStep!4874 (derivativeStep!4874 r!7292 (head!12830 s!2326)) (head!12830 (tail!11915 s!2326))) (tail!11915 (tail!11915 s!2326))))))

(declare-fun b!6226836 () Bool)

(declare-fun e!3790150 () Bool)

(declare-fun e!3790146 () Bool)

(assert (=> b!6226836 (= e!3790150 e!3790146)))

(declare-fun c!1125494 () Bool)

(assert (=> b!6226836 (= c!1125494 ((_ is EmptyLang!16161) (derivativeStep!4874 r!7292 (head!12830 s!2326))))))

(declare-fun b!6226837 () Bool)

(assert (=> b!6226837 (= e!3790148 (not (= (head!12830 (tail!11915 s!2326)) (c!1125039 (derivativeStep!4874 r!7292 (head!12830 s!2326))))))))

(declare-fun b!6226838 () Bool)

(declare-fun res!2573275 () Bool)

(declare-fun e!3790149 () Bool)

(assert (=> b!6226838 (=> res!2573275 e!3790149)))

(assert (=> b!6226838 (= res!2573275 (not ((_ is ElementMatch!16161) (derivativeStep!4874 r!7292 (head!12830 s!2326)))))))

(assert (=> b!6226838 (= e!3790146 e!3790149)))

(declare-fun b!6226839 () Bool)

(declare-fun lt!2345667 () Bool)

(assert (=> b!6226839 (= e!3790150 (= lt!2345667 call!523134))))

(declare-fun b!6226840 () Bool)

(assert (=> b!6226840 (= e!3790149 e!3790151)))

(declare-fun res!2573273 () Bool)

(assert (=> b!6226840 (=> (not res!2573273) (not e!3790151))))

(assert (=> b!6226840 (= res!2573273 (not lt!2345667))))

(declare-fun b!6226841 () Bool)

(declare-fun res!2573280 () Bool)

(assert (=> b!6226841 (=> (not res!2573280) (not e!3790147))))

(assert (=> b!6226841 (= res!2573280 (isEmpty!36673 (tail!11915 (tail!11915 s!2326))))))

(declare-fun b!6226842 () Bool)

(assert (=> b!6226842 (= e!3790147 (= (head!12830 (tail!11915 s!2326)) (c!1125039 (derivativeStep!4874 r!7292 (head!12830 s!2326)))))))

(declare-fun b!6226843 () Bool)

(declare-fun res!2573276 () Bool)

(assert (=> b!6226843 (=> res!2573276 e!3790149)))

(assert (=> b!6226843 (= res!2573276 e!3790147)))

(declare-fun res!2573278 () Bool)

(assert (=> b!6226843 (=> (not res!2573278) (not e!3790147))))

(assert (=> b!6226843 (= res!2573278 lt!2345667)))

(declare-fun bm!523129 () Bool)

(assert (=> bm!523129 (= call!523134 (isEmpty!36673 (tail!11915 s!2326)))))

(declare-fun d!1952064 () Bool)

(assert (=> d!1952064 e!3790150))

(declare-fun c!1125493 () Bool)

(assert (=> d!1952064 (= c!1125493 ((_ is EmptyExpr!16161) (derivativeStep!4874 r!7292 (head!12830 s!2326))))))

(assert (=> d!1952064 (= lt!2345667 e!3790152)))

(declare-fun c!1125495 () Bool)

(assert (=> d!1952064 (= c!1125495 (isEmpty!36673 (tail!11915 s!2326)))))

(assert (=> d!1952064 (validRegex!7897 (derivativeStep!4874 r!7292 (head!12830 s!2326)))))

(assert (=> d!1952064 (= (matchR!8344 (derivativeStep!4874 r!7292 (head!12830 s!2326)) (tail!11915 s!2326)) lt!2345667)))

(declare-fun b!6226844 () Bool)

(assert (=> b!6226844 (= e!3790146 (not lt!2345667))))

(declare-fun b!6226845 () Bool)

(declare-fun res!2573277 () Bool)

(assert (=> b!6226845 (=> res!2573277 e!3790148)))

(assert (=> b!6226845 (= res!2573277 (not (isEmpty!36673 (tail!11915 (tail!11915 s!2326)))))))

(assert (= (and d!1952064 c!1125495) b!6226834))

(assert (= (and d!1952064 (not c!1125495)) b!6226835))

(assert (= (and d!1952064 c!1125493) b!6226839))

(assert (= (and d!1952064 (not c!1125493)) b!6226836))

(assert (= (and b!6226836 c!1125494) b!6226844))

(assert (= (and b!6226836 (not c!1125494)) b!6226838))

(assert (= (and b!6226838 (not res!2573275)) b!6226843))

(assert (= (and b!6226843 res!2573278) b!6226832))

(assert (= (and b!6226832 res!2573274) b!6226841))

(assert (= (and b!6226841 res!2573280) b!6226842))

(assert (= (and b!6226843 (not res!2573276)) b!6226840))

(assert (= (and b!6226840 res!2573273) b!6226833))

(assert (= (and b!6226833 (not res!2573279)) b!6226845))

(assert (= (and b!6226845 (not res!2573277)) b!6226837))

(assert (= (or b!6226839 b!6226832 b!6226833) bm!523129))

(assert (=> bm!523129 m!7052740))

(assert (=> bm!523129 m!7052744))

(assert (=> b!6226834 m!7052738))

(declare-fun m!7053808 () Bool)

(assert (=> b!6226834 m!7053808))

(assert (=> b!6226837 m!7052740))

(declare-fun m!7053810 () Bool)

(assert (=> b!6226837 m!7053810))

(assert (=> b!6226835 m!7052740))

(assert (=> b!6226835 m!7053810))

(assert (=> b!6226835 m!7052738))

(assert (=> b!6226835 m!7053810))

(declare-fun m!7053812 () Bool)

(assert (=> b!6226835 m!7053812))

(assert (=> b!6226835 m!7052740))

(declare-fun m!7053814 () Bool)

(assert (=> b!6226835 m!7053814))

(assert (=> b!6226835 m!7053812))

(assert (=> b!6226835 m!7053814))

(declare-fun m!7053816 () Bool)

(assert (=> b!6226835 m!7053816))

(assert (=> b!6226842 m!7052740))

(assert (=> b!6226842 m!7053810))

(assert (=> b!6226845 m!7052740))

(assert (=> b!6226845 m!7053814))

(assert (=> b!6226845 m!7053814))

(declare-fun m!7053818 () Bool)

(assert (=> b!6226845 m!7053818))

(assert (=> d!1952064 m!7052740))

(assert (=> d!1952064 m!7052744))

(assert (=> d!1952064 m!7052738))

(declare-fun m!7053820 () Bool)

(assert (=> d!1952064 m!7053820))

(assert (=> b!6226841 m!7052740))

(assert (=> b!6226841 m!7053814))

(assert (=> b!6226841 m!7053814))

(assert (=> b!6226841 m!7053818))

(assert (=> b!6225815 d!1952064))

(declare-fun bm!523143 () Bool)

(declare-fun call!523150 () Regex!16161)

(declare-fun call!523148 () Regex!16161)

(assert (=> bm!523143 (= call!523150 call!523148)))

(declare-fun bm!523144 () Bool)

(declare-fun c!1125513 () Bool)

(declare-fun c!1125516 () Bool)

(declare-fun call!523149 () Regex!16161)

(assert (=> bm!523144 (= call!523149 (derivativeStep!4874 (ite c!1125513 (regOne!32835 r!7292) (ite c!1125516 (regTwo!32834 r!7292) (regOne!32834 r!7292))) (head!12830 s!2326)))))

(declare-fun c!1125512 () Bool)

(declare-fun bm!523145 () Bool)

(assert (=> bm!523145 (= call!523148 (derivativeStep!4874 (ite c!1125513 (regTwo!32835 r!7292) (ite c!1125512 (reg!16490 r!7292) (regOne!32834 r!7292))) (head!12830 s!2326)))))

(declare-fun b!6226891 () Bool)

(declare-fun e!3790181 () Regex!16161)

(assert (=> b!6226891 (= e!3790181 (Union!16161 call!523149 call!523148))))

(declare-fun b!6226892 () Bool)

(declare-fun e!3790183 () Regex!16161)

(declare-fun call!523151 () Regex!16161)

(assert (=> b!6226892 (= e!3790183 (Union!16161 (Concat!25006 call!523150 (regTwo!32834 r!7292)) call!523151))))

(declare-fun b!6226893 () Bool)

(assert (=> b!6226893 (= c!1125513 ((_ is Union!16161) r!7292))))

(declare-fun e!3790184 () Regex!16161)

(assert (=> b!6226893 (= e!3790184 e!3790181)))

(declare-fun b!6226894 () Bool)

(declare-fun e!3790185 () Regex!16161)

(assert (=> b!6226894 (= e!3790185 e!3790184)))

(declare-fun c!1125515 () Bool)

(assert (=> b!6226894 (= c!1125515 ((_ is ElementMatch!16161) r!7292))))

(declare-fun bm!523146 () Bool)

(assert (=> bm!523146 (= call!523151 call!523149)))

(declare-fun b!6226895 () Bool)

(assert (=> b!6226895 (= e!3790183 (Union!16161 (Concat!25006 call!523151 (regTwo!32834 r!7292)) EmptyLang!16161))))

(declare-fun b!6226896 () Bool)

(assert (=> b!6226896 (= e!3790184 (ite (= (head!12830 s!2326) (c!1125039 r!7292)) EmptyExpr!16161 EmptyLang!16161))))

(declare-fun b!6226897 () Bool)

(assert (=> b!6226897 (= c!1125516 (nullable!6154 (regOne!32834 r!7292)))))

(declare-fun e!3790182 () Regex!16161)

(assert (=> b!6226897 (= e!3790182 e!3790183)))

(declare-fun b!6226890 () Bool)

(assert (=> b!6226890 (= e!3790185 EmptyLang!16161)))

(declare-fun d!1952076 () Bool)

(declare-fun lt!2345670 () Regex!16161)

(assert (=> d!1952076 (validRegex!7897 lt!2345670)))

(assert (=> d!1952076 (= lt!2345670 e!3790185)))

(declare-fun c!1125514 () Bool)

(assert (=> d!1952076 (= c!1125514 (or ((_ is EmptyExpr!16161) r!7292) ((_ is EmptyLang!16161) r!7292)))))

(assert (=> d!1952076 (validRegex!7897 r!7292)))

(assert (=> d!1952076 (= (derivativeStep!4874 r!7292 (head!12830 s!2326)) lt!2345670)))

(declare-fun b!6226898 () Bool)

(assert (=> b!6226898 (= e!3790181 e!3790182)))

(assert (=> b!6226898 (= c!1125512 ((_ is Star!16161) r!7292))))

(declare-fun b!6226899 () Bool)

(assert (=> b!6226899 (= e!3790182 (Concat!25006 call!523150 r!7292))))

(assert (= (and d!1952076 c!1125514) b!6226890))

(assert (= (and d!1952076 (not c!1125514)) b!6226894))

(assert (= (and b!6226894 c!1125515) b!6226896))

(assert (= (and b!6226894 (not c!1125515)) b!6226893))

(assert (= (and b!6226893 c!1125513) b!6226891))

(assert (= (and b!6226893 (not c!1125513)) b!6226898))

(assert (= (and b!6226898 c!1125512) b!6226899))

(assert (= (and b!6226898 (not c!1125512)) b!6226897))

(assert (= (and b!6226897 c!1125516) b!6226892))

(assert (= (and b!6226897 (not c!1125516)) b!6226895))

(assert (= (or b!6226892 b!6226895) bm!523146))

(assert (= (or b!6226899 b!6226892) bm!523143))

(assert (= (or b!6226891 bm!523143) bm!523145))

(assert (= (or b!6226891 bm!523146) bm!523144))

(assert (=> bm!523144 m!7052736))

(declare-fun m!7053838 () Bool)

(assert (=> bm!523144 m!7053838))

(assert (=> bm!523145 m!7052736))

(declare-fun m!7053840 () Bool)

(assert (=> bm!523145 m!7053840))

(assert (=> b!6226897 m!7053372))

(declare-fun m!7053842 () Bool)

(assert (=> d!1952076 m!7053842))

(assert (=> d!1952076 m!7052328))

(assert (=> b!6225815 d!1952076))

(assert (=> b!6225815 d!1951804))

(assert (=> b!6225815 d!1951762))

(assert (=> d!1951646 d!1951772))

(assert (=> bs!1543686 d!1951602))

(declare-fun d!1952094 () Bool)

(assert (=> d!1952094 (= (isEmptyLang!1580 lt!2345614) ((_ is EmptyLang!16161) lt!2345614))))

(assert (=> b!6225917 d!1952094))

(declare-fun d!1952096 () Bool)

(declare-fun c!1125517 () Bool)

(assert (=> d!1952096 (= c!1125517 (isEmpty!36673 (tail!11915 (t!378320 s!2326))))))

(declare-fun e!3790194 () Bool)

(assert (=> d!1952096 (= (matchZipper!2173 (derivationStepZipper!2127 lt!2345521 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))) e!3790194)))

(declare-fun b!6226929 () Bool)

(assert (=> b!6226929 (= e!3790194 (nullableZipper!1935 (derivationStepZipper!2127 lt!2345521 (head!12830 (t!378320 s!2326)))))))

(declare-fun b!6226930 () Bool)

(assert (=> b!6226930 (= e!3790194 (matchZipper!2173 (derivationStepZipper!2127 (derivationStepZipper!2127 lt!2345521 (head!12830 (t!378320 s!2326))) (head!12830 (tail!11915 (t!378320 s!2326)))) (tail!11915 (tail!11915 (t!378320 s!2326)))))))

(assert (= (and d!1952096 c!1125517) b!6226929))

(assert (= (and d!1952096 (not c!1125517)) b!6226930))

(assert (=> d!1952096 m!7052590))

(assert (=> d!1952096 m!7053172))

(assert (=> b!6226929 m!7052878))

(declare-fun m!7053844 () Bool)

(assert (=> b!6226929 m!7053844))

(assert (=> b!6226930 m!7052590))

(assert (=> b!6226930 m!7053176))

(assert (=> b!6226930 m!7052878))

(assert (=> b!6226930 m!7053176))

(declare-fun m!7053846 () Bool)

(assert (=> b!6226930 m!7053846))

(assert (=> b!6226930 m!7052590))

(assert (=> b!6226930 m!7053182))

(assert (=> b!6226930 m!7053846))

(assert (=> b!6226930 m!7053182))

(declare-fun m!7053848 () Bool)

(assert (=> b!6226930 m!7053848))

(assert (=> b!6225985 d!1952096))

(declare-fun bs!1543935 () Bool)

(declare-fun d!1952098 () Bool)

(assert (= bs!1543935 (and d!1952098 d!1951794)))

(declare-fun lambda!340458 () Int)

(assert (=> bs!1543935 (= lambda!340458 lambda!340430)))

(declare-fun bs!1543936 () Bool)

(assert (= bs!1543936 (and d!1952098 d!1951616)))

(assert (=> bs!1543936 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340458 lambda!340389))))

(declare-fun bs!1543937 () Bool)

(assert (= bs!1543937 (and d!1952098 d!1952018)))

(assert (=> bs!1543937 (= lambda!340458 lambda!340451)))

(declare-fun bs!1543938 () Bool)

(assert (= bs!1543938 (and d!1952098 d!1952052)))

(assert (=> bs!1543938 (= lambda!340458 lambda!340454)))

(declare-fun bs!1543939 () Bool)

(assert (= bs!1543939 (and d!1952098 b!6225256)))

(assert (=> bs!1543939 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340458 lambda!340339))))

(assert (=> d!1952098 true))

(assert (=> d!1952098 (= (derivationStepZipper!2127 lt!2345521 (head!12830 (t!378320 s!2326))) (flatMap!1666 lt!2345521 lambda!340458))))

(declare-fun bs!1543940 () Bool)

(assert (= bs!1543940 d!1952098))

(declare-fun m!7053850 () Bool)

(assert (=> bs!1543940 m!7053850))

(assert (=> b!6225985 d!1952098))

(assert (=> b!6225985 d!1951798))

(assert (=> b!6225985 d!1951802))

(assert (=> bm!522896 d!1951722))

(declare-fun d!1952100 () Bool)

(declare-fun res!2573294 () Bool)

(declare-fun e!3790203 () Bool)

(assert (=> d!1952100 (=> res!2573294 e!3790203)))

(assert (=> d!1952100 (= res!2573294 ((_ is Nil!64658) (exprs!6045 (h!71107 zl!343))))))

(assert (=> d!1952100 (= (forall!15275 (exprs!6045 (h!71107 zl!343)) lambda!340399) e!3790203)))

(declare-fun b!6226957 () Bool)

(declare-fun e!3790204 () Bool)

(assert (=> b!6226957 (= e!3790203 e!3790204)))

(declare-fun res!2573295 () Bool)

(assert (=> b!6226957 (=> (not res!2573295) (not e!3790204))))

(assert (=> b!6226957 (= res!2573295 (dynLambda!25516 lambda!340399 (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun b!6226958 () Bool)

(assert (=> b!6226958 (= e!3790204 (forall!15275 (t!378318 (exprs!6045 (h!71107 zl!343))) lambda!340399))))

(assert (= (and d!1952100 (not res!2573294)) b!6226957))

(assert (= (and b!6226957 res!2573295) b!6226958))

(declare-fun b_lambda!236751 () Bool)

(assert (=> (not b_lambda!236751) (not b!6226957)))

(declare-fun m!7053852 () Bool)

(assert (=> b!6226957 m!7053852))

(declare-fun m!7053854 () Bool)

(assert (=> b!6226958 m!7053854))

(assert (=> d!1951628 d!1952100))

(declare-fun d!1952102 () Bool)

(assert (=> d!1952102 (= (isEmpty!36670 (tail!11916 (exprs!6045 (h!71107 zl!343)))) ((_ is Nil!64658) (tail!11916 (exprs!6045 (h!71107 zl!343)))))))

(assert (=> b!6225959 d!1952102))

(declare-fun d!1952104 () Bool)

(assert (=> d!1952104 (= (tail!11916 (exprs!6045 (h!71107 zl!343))) (t!378318 (exprs!6045 (h!71107 zl!343))))))

(assert (=> b!6225959 d!1952104))

(declare-fun bs!1543941 () Bool)

(declare-fun d!1952106 () Bool)

(assert (= bs!1543941 (and d!1952106 d!1951622)))

(declare-fun lambda!340459 () Int)

(assert (=> bs!1543941 (= lambda!340459 lambda!340392)))

(declare-fun bs!1543942 () Bool)

(assert (= bs!1543942 (and d!1952106 d!1951634)))

(assert (=> bs!1543942 (= lambda!340459 lambda!340403)))

(declare-fun bs!1543943 () Bool)

(assert (= bs!1543943 (and d!1952106 d!1951918)))

(assert (=> bs!1543943 (= lambda!340459 lambda!340443)))

(declare-fun bs!1543944 () Bool)

(assert (= bs!1543944 (and d!1952106 d!1951628)))

(assert (=> bs!1543944 (= lambda!340459 lambda!340399)))

(declare-fun bs!1543945 () Bool)

(assert (= bs!1543945 (and d!1952106 d!1951626)))

(assert (=> bs!1543945 (= lambda!340459 lambda!340398)))

(declare-fun bs!1543946 () Bool)

(assert (= bs!1543946 (and d!1952106 d!1951632)))

(assert (=> bs!1543946 (= lambda!340459 lambda!340402)))

(declare-fun bs!1543947 () Bool)

(assert (= bs!1543947 (and d!1952106 d!1951878)))

(assert (=> bs!1543947 (= lambda!340459 lambda!340439)))

(declare-fun bs!1543948 () Bool)

(assert (= bs!1543948 (and d!1952106 d!1951930)))

(assert (=> bs!1543948 (= lambda!340459 lambda!340444)))

(declare-fun bs!1543949 () Bool)

(assert (= bs!1543949 (and d!1952106 d!1951624)))

(assert (=> bs!1543949 (= lambda!340459 lambda!340395)))

(assert (=> d!1952106 (= (inv!83649 (h!71107 (t!378319 zl!343))) (forall!15275 (exprs!6045 (h!71107 (t!378319 zl!343))) lambda!340459))))

(declare-fun bs!1543950 () Bool)

(assert (= bs!1543950 d!1952106))

(declare-fun m!7053858 () Bool)

(assert (=> bs!1543950 m!7053858))

(assert (=> b!6226049 d!1952106))

(declare-fun d!1952108 () Bool)

(assert (=> d!1952108 (= (nullable!6154 (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))) (nullableFct!2110 (regOne!32834 (regOne!32834 (regOne!32834 r!7292)))))))

(declare-fun bs!1543951 () Bool)

(assert (= bs!1543951 d!1952108))

(declare-fun m!7053860 () Bool)

(assert (=> bs!1543951 m!7053860))

(assert (=> b!6225980 d!1952108))

(declare-fun d!1952110 () Bool)

(declare-fun res!2573300 () Bool)

(declare-fun e!3790222 () Bool)

(assert (=> d!1952110 (=> res!2573300 e!3790222)))

(assert (=> d!1952110 (= res!2573300 ((_ is ElementMatch!16161) lt!2345564))))

(assert (=> d!1952110 (= (validRegex!7897 lt!2345564) e!3790222)))

(declare-fun b!6227003 () Bool)

(declare-fun e!3790224 () Bool)

(declare-fun call!523153 () Bool)

(assert (=> b!6227003 (= e!3790224 call!523153)))

(declare-fun b!6227004 () Bool)

(declare-fun e!3790223 () Bool)

(declare-fun e!3790225 () Bool)

(assert (=> b!6227004 (= e!3790223 e!3790225)))

(declare-fun c!1125518 () Bool)

(assert (=> b!6227004 (= c!1125518 ((_ is Union!16161) lt!2345564))))

(declare-fun b!6227005 () Bool)

(assert (=> b!6227005 (= e!3790222 e!3790223)))

(declare-fun c!1125519 () Bool)

(assert (=> b!6227005 (= c!1125519 ((_ is Star!16161) lt!2345564))))

(declare-fun bm!523147 () Bool)

(assert (=> bm!523147 (= call!523153 (validRegex!7897 (ite c!1125518 (regTwo!32835 lt!2345564) (regTwo!32834 lt!2345564))))))

(declare-fun b!6227006 () Bool)

(declare-fun e!3790219 () Bool)

(assert (=> b!6227006 (= e!3790223 e!3790219)))

(declare-fun res!2573297 () Bool)

(assert (=> b!6227006 (= res!2573297 (not (nullable!6154 (reg!16490 lt!2345564))))))

(assert (=> b!6227006 (=> (not res!2573297) (not e!3790219))))

(declare-fun bm!523148 () Bool)

(declare-fun call!523154 () Bool)

(assert (=> bm!523148 (= call!523154 (validRegex!7897 (ite c!1125519 (reg!16490 lt!2345564) (ite c!1125518 (regOne!32835 lt!2345564) (regOne!32834 lt!2345564)))))))

(declare-fun b!6227007 () Bool)

(declare-fun res!2573298 () Bool)

(assert (=> b!6227007 (=> (not res!2573298) (not e!3790224))))

(declare-fun call!523152 () Bool)

(assert (=> b!6227007 (= res!2573298 call!523152)))

(assert (=> b!6227007 (= e!3790225 e!3790224)))

(declare-fun b!6227008 () Bool)

(declare-fun res!2573296 () Bool)

(declare-fun e!3790220 () Bool)

(assert (=> b!6227008 (=> res!2573296 e!3790220)))

(assert (=> b!6227008 (= res!2573296 (not ((_ is Concat!25006) lt!2345564)))))

(assert (=> b!6227008 (= e!3790225 e!3790220)))

(declare-fun b!6227009 () Bool)

(declare-fun e!3790221 () Bool)

(assert (=> b!6227009 (= e!3790220 e!3790221)))

(declare-fun res!2573299 () Bool)

(assert (=> b!6227009 (=> (not res!2573299) (not e!3790221))))

(assert (=> b!6227009 (= res!2573299 call!523152)))

(declare-fun bm!523149 () Bool)

(assert (=> bm!523149 (= call!523152 call!523154)))

(declare-fun b!6227010 () Bool)

(assert (=> b!6227010 (= e!3790221 call!523153)))

(declare-fun b!6227011 () Bool)

(assert (=> b!6227011 (= e!3790219 call!523154)))

(assert (= (and d!1952110 (not res!2573300)) b!6227005))

(assert (= (and b!6227005 c!1125519) b!6227006))

(assert (= (and b!6227005 (not c!1125519)) b!6227004))

(assert (= (and b!6227006 res!2573297) b!6227011))

(assert (= (and b!6227004 c!1125518) b!6227007))

(assert (= (and b!6227004 (not c!1125518)) b!6227008))

(assert (= (and b!6227007 res!2573298) b!6227003))

(assert (= (and b!6227008 (not res!2573296)) b!6227009))

(assert (= (and b!6227009 res!2573299) b!6227010))

(assert (= (or b!6227003 b!6227010) bm!523147))

(assert (= (or b!6227007 b!6227009) bm!523149))

(assert (= (or b!6227011 bm!523149) bm!523148))

(declare-fun m!7053862 () Bool)

(assert (=> bm!523147 m!7053862))

(declare-fun m!7053864 () Bool)

(assert (=> b!6227006 m!7053864))

(declare-fun m!7053866 () Bool)

(assert (=> bm!523148 m!7053866))

(assert (=> d!1951548 d!1952110))

(assert (=> d!1951548 d!1951622))

(assert (=> d!1951548 d!1951624))

(assert (=> b!6225576 d!1951936))

(declare-fun bs!1543952 () Bool)

(declare-fun d!1952112 () Bool)

(assert (= bs!1543952 (and d!1952112 d!1951622)))

(declare-fun lambda!340460 () Int)

(assert (=> bs!1543952 (= lambda!340460 lambda!340392)))

(declare-fun bs!1543953 () Bool)

(assert (= bs!1543953 (and d!1952112 d!1951634)))

(assert (=> bs!1543953 (= lambda!340460 lambda!340403)))

(declare-fun bs!1543954 () Bool)

(assert (= bs!1543954 (and d!1952112 d!1951918)))

(assert (=> bs!1543954 (= lambda!340460 lambda!340443)))

(declare-fun bs!1543955 () Bool)

(assert (= bs!1543955 (and d!1952112 d!1951628)))

(assert (=> bs!1543955 (= lambda!340460 lambda!340399)))

(declare-fun bs!1543956 () Bool)

(assert (= bs!1543956 (and d!1952112 d!1951626)))

(assert (=> bs!1543956 (= lambda!340460 lambda!340398)))

(declare-fun bs!1543958 () Bool)

(assert (= bs!1543958 (and d!1952112 d!1952106)))

(assert (=> bs!1543958 (= lambda!340460 lambda!340459)))

(declare-fun bs!1543961 () Bool)

(assert (= bs!1543961 (and d!1952112 d!1951632)))

(assert (=> bs!1543961 (= lambda!340460 lambda!340402)))

(declare-fun bs!1543963 () Bool)

(assert (= bs!1543963 (and d!1952112 d!1951878)))

(assert (=> bs!1543963 (= lambda!340460 lambda!340439)))

(declare-fun bs!1543965 () Bool)

(assert (= bs!1543965 (and d!1952112 d!1951930)))

(assert (=> bs!1543965 (= lambda!340460 lambda!340444)))

(declare-fun bs!1543967 () Bool)

(assert (= bs!1543967 (and d!1952112 d!1951624)))

(assert (=> bs!1543967 (= lambda!340460 lambda!340395)))

(declare-fun b!6227028 () Bool)

(declare-fun e!3790234 () Regex!16161)

(declare-fun e!3790230 () Regex!16161)

(assert (=> b!6227028 (= e!3790234 e!3790230)))

(declare-fun c!1125522 () Bool)

(assert (=> b!6227028 (= c!1125522 ((_ is Cons!64658) (t!378318 (unfocusZipperList!1582 zl!343))))))

(declare-fun b!6227029 () Bool)

(declare-fun e!3790232 () Bool)

(declare-fun lt!2345671 () Regex!16161)

(assert (=> b!6227029 (= e!3790232 (isEmptyLang!1580 lt!2345671))))

(declare-fun b!6227030 () Bool)

(declare-fun e!3790233 () Bool)

(assert (=> b!6227030 (= e!3790233 (= lt!2345671 (head!12831 (t!378318 (unfocusZipperList!1582 zl!343)))))))

(declare-fun b!6227031 () Bool)

(declare-fun e!3790231 () Bool)

(assert (=> b!6227031 (= e!3790231 (isEmpty!36670 (t!378318 (t!378318 (unfocusZipperList!1582 zl!343)))))))

(declare-fun b!6227032 () Bool)

(assert (=> b!6227032 (= e!3790233 (isUnion!1010 lt!2345671))))

(declare-fun b!6227033 () Bool)

(assert (=> b!6227033 (= e!3790232 e!3790233)))

(declare-fun c!1125521 () Bool)

(assert (=> b!6227033 (= c!1125521 (isEmpty!36670 (tail!11916 (t!378318 (unfocusZipperList!1582 zl!343)))))))

(declare-fun b!6227034 () Bool)

(assert (=> b!6227034 (= e!3790234 (h!71106 (t!378318 (unfocusZipperList!1582 zl!343))))))

(declare-fun b!6227035 () Bool)

(assert (=> b!6227035 (= e!3790230 EmptyLang!16161)))

(declare-fun e!3790235 () Bool)

(assert (=> d!1952112 e!3790235))

(declare-fun res!2573302 () Bool)

(assert (=> d!1952112 (=> (not res!2573302) (not e!3790235))))

(assert (=> d!1952112 (= res!2573302 (validRegex!7897 lt!2345671))))

(assert (=> d!1952112 (= lt!2345671 e!3790234)))

(declare-fun c!1125523 () Bool)

(assert (=> d!1952112 (= c!1125523 e!3790231)))

(declare-fun res!2573301 () Bool)

(assert (=> d!1952112 (=> (not res!2573301) (not e!3790231))))

(assert (=> d!1952112 (= res!2573301 ((_ is Cons!64658) (t!378318 (unfocusZipperList!1582 zl!343))))))

(assert (=> d!1952112 (forall!15275 (t!378318 (unfocusZipperList!1582 zl!343)) lambda!340460)))

(assert (=> d!1952112 (= (generalisedUnion!2005 (t!378318 (unfocusZipperList!1582 zl!343))) lt!2345671)))

(declare-fun b!6227036 () Bool)

(assert (=> b!6227036 (= e!3790235 e!3790232)))

(declare-fun c!1125520 () Bool)

(assert (=> b!6227036 (= c!1125520 (isEmpty!36670 (t!378318 (unfocusZipperList!1582 zl!343))))))

(declare-fun b!6227037 () Bool)

(assert (=> b!6227037 (= e!3790230 (Union!16161 (h!71106 (t!378318 (unfocusZipperList!1582 zl!343))) (generalisedUnion!2005 (t!378318 (t!378318 (unfocusZipperList!1582 zl!343))))))))

(assert (= (and d!1952112 res!2573301) b!6227031))

(assert (= (and d!1952112 c!1125523) b!6227034))

(assert (= (and d!1952112 (not c!1125523)) b!6227028))

(assert (= (and b!6227028 c!1125522) b!6227037))

(assert (= (and b!6227028 (not c!1125522)) b!6227035))

(assert (= (and d!1952112 res!2573302) b!6227036))

(assert (= (and b!6227036 c!1125520) b!6227029))

(assert (= (and b!6227036 (not c!1125520)) b!6227033))

(assert (= (and b!6227033 c!1125521) b!6227030))

(assert (= (and b!6227033 (not c!1125521)) b!6227032))

(declare-fun m!7053880 () Bool)

(assert (=> b!6227037 m!7053880))

(declare-fun m!7053882 () Bool)

(assert (=> b!6227029 m!7053882))

(declare-fun m!7053884 () Bool)

(assert (=> d!1952112 m!7053884))

(declare-fun m!7053886 () Bool)

(assert (=> d!1952112 m!7053886))

(declare-fun m!7053888 () Bool)

(assert (=> b!6227031 m!7053888))

(declare-fun m!7053890 () Bool)

(assert (=> b!6227032 m!7053890))

(assert (=> b!6227036 m!7052812))

(declare-fun m!7053892 () Bool)

(assert (=> b!6227030 m!7053892))

(declare-fun m!7053894 () Bool)

(assert (=> b!6227033 m!7053894))

(assert (=> b!6227033 m!7053894))

(declare-fun m!7053896 () Bool)

(assert (=> b!6227033 m!7053896))

(assert (=> b!6225925 d!1952112))

(assert (=> b!6225954 d!1951620))

(assert (=> bm!522893 d!1951722))

(assert (=> b!6225822 d!1951804))

(assert (=> d!1951648 d!1951772))

(declare-fun bs!1543968 () Bool)

(declare-fun d!1952126 () Bool)

(assert (= bs!1543968 (and d!1952126 d!1951774)))

(declare-fun lambda!340461 () Int)

(assert (=> bs!1543968 (= lambda!340461 lambda!340428)))

(declare-fun bs!1543969 () Bool)

(assert (= bs!1543969 (and d!1952126 d!1951884)))

(assert (=> bs!1543969 (= lambda!340461 lambda!340440)))

(declare-fun bs!1543970 () Bool)

(assert (= bs!1543970 (and d!1952126 d!1951952)))

(assert (=> bs!1543970 (= lambda!340461 lambda!340446)))

(assert (=> d!1952126 (= (nullableZipper!1935 lt!2345521) (exists!2495 lt!2345521 lambda!340461))))

(declare-fun bs!1543971 () Bool)

(assert (= bs!1543971 d!1952126))

(declare-fun m!7053898 () Bool)

(assert (=> bs!1543971 m!7053898))

(assert (=> b!6225984 d!1952126))

(assert (=> b!6225994 d!1951544))

(declare-fun b!6227039 () Bool)

(declare-fun res!2573304 () Bool)

(declare-fun e!3790238 () Bool)

(assert (=> b!6227039 (=> (not res!2573304) (not e!3790238))))

(declare-fun call!523155 () Bool)

(assert (=> b!6227039 (= res!2573304 (not call!523155))))

(declare-fun b!6227040 () Bool)

(declare-fun e!3790242 () Bool)

(declare-fun e!3790239 () Bool)

(assert (=> b!6227040 (= e!3790242 e!3790239)))

(declare-fun res!2573309 () Bool)

(assert (=> b!6227040 (=> res!2573309 e!3790239)))

(assert (=> b!6227040 (= res!2573309 call!523155)))

(declare-fun b!6227041 () Bool)

(declare-fun e!3790243 () Bool)

(assert (=> b!6227041 (= e!3790243 (nullable!6154 (regTwo!32834 r!7292)))))

(declare-fun b!6227042 () Bool)

(assert (=> b!6227042 (= e!3790243 (matchR!8344 (derivativeStep!4874 (regTwo!32834 r!7292) (head!12830 (_2!36443 (get!22335 lt!2345586)))) (tail!11915 (_2!36443 (get!22335 lt!2345586)))))))

(declare-fun b!6227043 () Bool)

(declare-fun e!3790241 () Bool)

(declare-fun e!3790237 () Bool)

(assert (=> b!6227043 (= e!3790241 e!3790237)))

(declare-fun c!1125525 () Bool)

(assert (=> b!6227043 (= c!1125525 ((_ is EmptyLang!16161) (regTwo!32834 r!7292)))))

(declare-fun b!6227044 () Bool)

(assert (=> b!6227044 (= e!3790239 (not (= (head!12830 (_2!36443 (get!22335 lt!2345586))) (c!1125039 (regTwo!32834 r!7292)))))))

(declare-fun b!6227045 () Bool)

(declare-fun res!2573305 () Bool)

(declare-fun e!3790240 () Bool)

(assert (=> b!6227045 (=> res!2573305 e!3790240)))

(assert (=> b!6227045 (= res!2573305 (not ((_ is ElementMatch!16161) (regTwo!32834 r!7292))))))

(assert (=> b!6227045 (= e!3790237 e!3790240)))

(declare-fun b!6227046 () Bool)

(declare-fun lt!2345672 () Bool)

(assert (=> b!6227046 (= e!3790241 (= lt!2345672 call!523155))))

(declare-fun b!6227047 () Bool)

(assert (=> b!6227047 (= e!3790240 e!3790242)))

(declare-fun res!2573303 () Bool)

(assert (=> b!6227047 (=> (not res!2573303) (not e!3790242))))

(assert (=> b!6227047 (= res!2573303 (not lt!2345672))))

(declare-fun b!6227048 () Bool)

(declare-fun res!2573310 () Bool)

(assert (=> b!6227048 (=> (not res!2573310) (not e!3790238))))

(assert (=> b!6227048 (= res!2573310 (isEmpty!36673 (tail!11915 (_2!36443 (get!22335 lt!2345586)))))))

(declare-fun b!6227049 () Bool)

(assert (=> b!6227049 (= e!3790238 (= (head!12830 (_2!36443 (get!22335 lt!2345586))) (c!1125039 (regTwo!32834 r!7292))))))

(declare-fun b!6227050 () Bool)

(declare-fun res!2573306 () Bool)

(assert (=> b!6227050 (=> res!2573306 e!3790240)))

(assert (=> b!6227050 (= res!2573306 e!3790238)))

(declare-fun res!2573308 () Bool)

(assert (=> b!6227050 (=> (not res!2573308) (not e!3790238))))

(assert (=> b!6227050 (= res!2573308 lt!2345672)))

(declare-fun bm!523150 () Bool)

(assert (=> bm!523150 (= call!523155 (isEmpty!36673 (_2!36443 (get!22335 lt!2345586))))))

(declare-fun d!1952128 () Bool)

(assert (=> d!1952128 e!3790241))

(declare-fun c!1125524 () Bool)

(assert (=> d!1952128 (= c!1125524 ((_ is EmptyExpr!16161) (regTwo!32834 r!7292)))))

(assert (=> d!1952128 (= lt!2345672 e!3790243)))

(declare-fun c!1125526 () Bool)

(assert (=> d!1952128 (= c!1125526 (isEmpty!36673 (_2!36443 (get!22335 lt!2345586))))))

(assert (=> d!1952128 (validRegex!7897 (regTwo!32834 r!7292))))

(assert (=> d!1952128 (= (matchR!8344 (regTwo!32834 r!7292) (_2!36443 (get!22335 lt!2345586))) lt!2345672)))

(declare-fun b!6227051 () Bool)

(assert (=> b!6227051 (= e!3790237 (not lt!2345672))))

(declare-fun b!6227052 () Bool)

(declare-fun res!2573307 () Bool)

(assert (=> b!6227052 (=> res!2573307 e!3790239)))

(assert (=> b!6227052 (= res!2573307 (not (isEmpty!36673 (tail!11915 (_2!36443 (get!22335 lt!2345586))))))))

(assert (= (and d!1952128 c!1125526) b!6227041))

(assert (= (and d!1952128 (not c!1125526)) b!6227042))

(assert (= (and d!1952128 c!1125524) b!6227046))

(assert (= (and d!1952128 (not c!1125524)) b!6227043))

(assert (= (and b!6227043 c!1125525) b!6227051))

(assert (= (and b!6227043 (not c!1125525)) b!6227045))

(assert (= (and b!6227045 (not res!2573305)) b!6227050))

(assert (= (and b!6227050 res!2573308) b!6227039))

(assert (= (and b!6227039 res!2573304) b!6227048))

(assert (= (and b!6227048 res!2573310) b!6227049))

(assert (= (and b!6227050 (not res!2573306)) b!6227047))

(assert (= (and b!6227047 res!2573303) b!6227040))

(assert (= (and b!6227040 (not res!2573309)) b!6227052))

(assert (= (and b!6227052 (not res!2573307)) b!6227044))

(assert (= (or b!6227046 b!6227039 b!6227040) bm!523150))

(declare-fun m!7053900 () Bool)

(assert (=> bm!523150 m!7053900))

(assert (=> b!6227041 m!7053198))

(declare-fun m!7053902 () Bool)

(assert (=> b!6227044 m!7053902))

(assert (=> b!6227042 m!7053902))

(assert (=> b!6227042 m!7053902))

(declare-fun m!7053904 () Bool)

(assert (=> b!6227042 m!7053904))

(declare-fun m!7053906 () Bool)

(assert (=> b!6227042 m!7053906))

(assert (=> b!6227042 m!7053904))

(assert (=> b!6227042 m!7053906))

(declare-fun m!7053908 () Bool)

(assert (=> b!6227042 m!7053908))

(assert (=> b!6227049 m!7053902))

(assert (=> b!6227052 m!7053906))

(assert (=> b!6227052 m!7053906))

(declare-fun m!7053910 () Bool)

(assert (=> b!6227052 m!7053910))

(assert (=> d!1952128 m!7053900))

(assert (=> d!1952128 m!7053208))

(assert (=> b!6227048 m!7053906))

(assert (=> b!6227048 m!7053906))

(assert (=> b!6227048 m!7053910))

(assert (=> b!6225580 d!1952128))

(assert (=> b!6225580 d!1951898))

(declare-fun bs!1543972 () Bool)

(declare-fun b!6227063 () Bool)

(assert (= bs!1543972 (and b!6227063 d!1951574)))

(declare-fun lambda!340462 () Int)

(assert (=> bs!1543972 (not (= lambda!340462 lambda!340379))))

(declare-fun bs!1543973 () Bool)

(assert (= bs!1543973 (and b!6227063 d!1951830)))

(assert (=> bs!1543973 (not (= lambda!340462 lambda!340437))))

(declare-fun bs!1543974 () Bool)

(assert (= bs!1543974 (and b!6227063 b!6226192)))

(assert (=> bs!1543974 (not (= lambda!340462 lambda!340416))))

(declare-fun bs!1543975 () Bool)

(assert (= bs!1543975 (and b!6227063 d!1951742)))

(assert (=> bs!1543975 (not (= lambda!340462 lambda!340424))))

(declare-fun bs!1543976 () Bool)

(assert (= bs!1543976 (and b!6227063 b!6225783)))

(assert (=> bs!1543976 (= (and (= (reg!16490 (regTwo!32835 r!7292)) (reg!16490 r!7292)) (= (regTwo!32835 r!7292) r!7292)) (= lambda!340462 lambda!340385))))

(declare-fun bs!1543977 () Bool)

(assert (= bs!1543977 (and b!6227063 b!6225265)))

(assert (=> bs!1543977 (not (= lambda!340462 lambda!340337))))

(assert (=> bs!1543975 (not (= lambda!340462 lambda!340423))))

(declare-fun bs!1543978 () Bool)

(assert (= bs!1543978 (and b!6227063 b!6226197)))

(assert (=> bs!1543978 (= (and (= (reg!16490 (regTwo!32835 r!7292)) (reg!16490 (regOne!32835 r!7292))) (= (regTwo!32835 r!7292) (regOne!32835 r!7292))) (= lambda!340462 lambda!340415))))

(assert (=> bs!1543977 (not (= lambda!340462 lambda!340338))))

(declare-fun bs!1543979 () Bool)

(assert (= bs!1543979 (and b!6227063 d!1951568)))

(assert (=> bs!1543979 (not (= lambda!340462 lambda!340370))))

(declare-fun bs!1543980 () Bool)

(assert (= bs!1543980 (and b!6227063 b!6225778)))

(assert (=> bs!1543980 (not (= lambda!340462 lambda!340386))))

(assert (=> bs!1543972 (not (= lambda!340462 lambda!340380))))

(assert (=> b!6227063 true))

(assert (=> b!6227063 true))

(declare-fun bs!1543981 () Bool)

(declare-fun b!6227058 () Bool)

(assert (= bs!1543981 (and b!6227058 d!1951830)))

(declare-fun lambda!340463 () Int)

(assert (=> bs!1543981 (not (= lambda!340463 lambda!340437))))

(declare-fun bs!1543982 () Bool)

(assert (= bs!1543982 (and b!6227058 b!6226192)))

(assert (=> bs!1543982 (= (and (= (regOne!32834 (regTwo!32835 r!7292)) (regOne!32834 (regOne!32835 r!7292))) (= (regTwo!32834 (regTwo!32835 r!7292)) (regTwo!32834 (regOne!32835 r!7292)))) (= lambda!340463 lambda!340416))))

(declare-fun bs!1543983 () Bool)

(assert (= bs!1543983 (and b!6227058 d!1951742)))

(assert (=> bs!1543983 (= (and (= (regOne!32834 (regTwo!32835 r!7292)) (regOne!32834 r!7292)) (= (regTwo!32834 (regTwo!32835 r!7292)) (regTwo!32834 r!7292))) (= lambda!340463 lambda!340424))))

(declare-fun bs!1543984 () Bool)

(assert (= bs!1543984 (and b!6227058 b!6225783)))

(assert (=> bs!1543984 (not (= lambda!340463 lambda!340385))))

(declare-fun bs!1543985 () Bool)

(assert (= bs!1543985 (and b!6227058 b!6225265)))

(assert (=> bs!1543985 (not (= lambda!340463 lambda!340337))))

(assert (=> bs!1543983 (not (= lambda!340463 lambda!340423))))

(declare-fun bs!1543986 () Bool)

(assert (= bs!1543986 (and b!6227058 b!6226197)))

(assert (=> bs!1543986 (not (= lambda!340463 lambda!340415))))

(assert (=> bs!1543985 (= (and (= (regOne!32834 (regTwo!32835 r!7292)) (regOne!32834 r!7292)) (= (regTwo!32834 (regTwo!32835 r!7292)) (regTwo!32834 r!7292))) (= lambda!340463 lambda!340338))))

(declare-fun bs!1543987 () Bool)

(assert (= bs!1543987 (and b!6227058 d!1951568)))

(assert (=> bs!1543987 (not (= lambda!340463 lambda!340370))))

(declare-fun bs!1543988 () Bool)

(assert (= bs!1543988 (and b!6227058 b!6227063)))

(assert (=> bs!1543988 (not (= lambda!340463 lambda!340462))))

(declare-fun bs!1543989 () Bool)

(assert (= bs!1543989 (and b!6227058 d!1951574)))

(assert (=> bs!1543989 (not (= lambda!340463 lambda!340379))))

(declare-fun bs!1543990 () Bool)

(assert (= bs!1543990 (and b!6227058 b!6225778)))

(assert (=> bs!1543990 (= (and (= (regOne!32834 (regTwo!32835 r!7292)) (regOne!32834 r!7292)) (= (regTwo!32834 (regTwo!32835 r!7292)) (regTwo!32834 r!7292))) (= lambda!340463 lambda!340386))))

(assert (=> bs!1543989 (= (and (= (regOne!32834 (regTwo!32835 r!7292)) (regOne!32834 r!7292)) (= (regTwo!32834 (regTwo!32835 r!7292)) (regTwo!32834 r!7292))) (= lambda!340463 lambda!340380))))

(assert (=> b!6227058 true))

(assert (=> b!6227058 true))

(declare-fun b!6227053 () Bool)

(declare-fun e!3790247 () Bool)

(declare-fun call!523156 () Bool)

(assert (=> b!6227053 (= e!3790247 call!523156)))

(declare-fun b!6227054 () Bool)

(declare-fun res!2573312 () Bool)

(declare-fun e!3790250 () Bool)

(assert (=> b!6227054 (=> res!2573312 e!3790250)))

(assert (=> b!6227054 (= res!2573312 call!523156)))

(declare-fun e!3790245 () Bool)

(assert (=> b!6227054 (= e!3790245 e!3790250)))

(declare-fun b!6227055 () Bool)

(declare-fun c!1125528 () Bool)

(assert (=> b!6227055 (= c!1125528 ((_ is Union!16161) (regTwo!32835 r!7292)))))

(declare-fun e!3790244 () Bool)

(declare-fun e!3790249 () Bool)

(assert (=> b!6227055 (= e!3790244 e!3790249)))

(declare-fun b!6227056 () Bool)

(declare-fun e!3790246 () Bool)

(assert (=> b!6227056 (= e!3790246 (matchRSpec!3262 (regTwo!32835 (regTwo!32835 r!7292)) s!2326))))

(declare-fun call!523157 () Bool)

(assert (=> b!6227058 (= e!3790245 call!523157)))

(declare-fun b!6227059 () Bool)

(assert (=> b!6227059 (= e!3790244 (= s!2326 (Cons!64660 (c!1125039 (regTwo!32835 r!7292)) Nil!64660)))))

(declare-fun b!6227060 () Bool)

(declare-fun c!1125530 () Bool)

(assert (=> b!6227060 (= c!1125530 ((_ is ElementMatch!16161) (regTwo!32835 r!7292)))))

(declare-fun e!3790248 () Bool)

(assert (=> b!6227060 (= e!3790248 e!3790244)))

(declare-fun b!6227061 () Bool)

(assert (=> b!6227061 (= e!3790249 e!3790245)))

(declare-fun c!1125529 () Bool)

(assert (=> b!6227061 (= c!1125529 ((_ is Star!16161) (regTwo!32835 r!7292)))))

(declare-fun d!1952130 () Bool)

(declare-fun c!1125527 () Bool)

(assert (=> d!1952130 (= c!1125527 ((_ is EmptyExpr!16161) (regTwo!32835 r!7292)))))

(assert (=> d!1952130 (= (matchRSpec!3262 (regTwo!32835 r!7292) s!2326) e!3790247)))

(declare-fun b!6227057 () Bool)

(assert (=> b!6227057 (= e!3790247 e!3790248)))

(declare-fun res!2573311 () Bool)

(assert (=> b!6227057 (= res!2573311 (not ((_ is EmptyLang!16161) (regTwo!32835 r!7292))))))

(assert (=> b!6227057 (=> (not res!2573311) (not e!3790248))))

(declare-fun bm!523151 () Bool)

(assert (=> bm!523151 (= call!523157 (Exists!3231 (ite c!1125529 lambda!340462 lambda!340463)))))

(declare-fun b!6227062 () Bool)

(assert (=> b!6227062 (= e!3790249 e!3790246)))

(declare-fun res!2573313 () Bool)

(assert (=> b!6227062 (= res!2573313 (matchRSpec!3262 (regOne!32835 (regTwo!32835 r!7292)) s!2326))))

(assert (=> b!6227062 (=> res!2573313 e!3790246)))

(declare-fun bm!523152 () Bool)

(assert (=> bm!523152 (= call!523156 (isEmpty!36673 s!2326))))

(assert (=> b!6227063 (= e!3790250 call!523157)))

(assert (= (and d!1952130 c!1125527) b!6227053))

(assert (= (and d!1952130 (not c!1125527)) b!6227057))

(assert (= (and b!6227057 res!2573311) b!6227060))

(assert (= (and b!6227060 c!1125530) b!6227059))

(assert (= (and b!6227060 (not c!1125530)) b!6227055))

(assert (= (and b!6227055 c!1125528) b!6227062))

(assert (= (and b!6227055 (not c!1125528)) b!6227061))

(assert (= (and b!6227062 (not res!2573313)) b!6227056))

(assert (= (and b!6227061 c!1125529) b!6227054))

(assert (= (and b!6227061 (not c!1125529)) b!6227058))

(assert (= (and b!6227054 (not res!2573312)) b!6227063))

(assert (= (or b!6227063 b!6227058) bm!523151))

(assert (= (or b!6227053 b!6227054) bm!523152))

(declare-fun m!7053912 () Bool)

(assert (=> b!6227056 m!7053912))

(declare-fun m!7053914 () Bool)

(assert (=> bm!523151 m!7053914))

(declare-fun m!7053916 () Bool)

(assert (=> b!6227062 m!7053916))

(assert (=> bm!523152 m!7052732))

(assert (=> b!6225776 d!1952130))

(declare-fun d!1952132 () Bool)

(assert (=> d!1952132 (= (nullable!6154 r!7292) (nullableFct!2110 r!7292))))

(declare-fun bs!1543991 () Bool)

(assert (= bs!1543991 d!1952132))

(declare-fun m!7053918 () Bool)

(assert (=> bs!1543991 m!7053918))

(assert (=> b!6225814 d!1952132))

(declare-fun d!1952134 () Bool)

(declare-fun c!1125531 () Bool)

(assert (=> d!1952134 (= c!1125531 (isEmpty!36673 (tail!11915 (t!378320 s!2326))))))

(declare-fun e!3790251 () Bool)

(assert (=> d!1952134 (= (matchZipper!2173 (derivationStepZipper!2127 lt!2345527 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))) e!3790251)))

(declare-fun b!6227064 () Bool)

(assert (=> b!6227064 (= e!3790251 (nullableZipper!1935 (derivationStepZipper!2127 lt!2345527 (head!12830 (t!378320 s!2326)))))))

(declare-fun b!6227065 () Bool)

(assert (=> b!6227065 (= e!3790251 (matchZipper!2173 (derivationStepZipper!2127 (derivationStepZipper!2127 lt!2345527 (head!12830 (t!378320 s!2326))) (head!12830 (tail!11915 (t!378320 s!2326)))) (tail!11915 (tail!11915 (t!378320 s!2326)))))))

(assert (= (and d!1952134 c!1125531) b!6227064))

(assert (= (and d!1952134 (not c!1125531)) b!6227065))

(assert (=> d!1952134 m!7052590))

(assert (=> d!1952134 m!7053172))

(assert (=> b!6227064 m!7052884))

(declare-fun m!7053920 () Bool)

(assert (=> b!6227064 m!7053920))

(assert (=> b!6227065 m!7052590))

(assert (=> b!6227065 m!7053176))

(assert (=> b!6227065 m!7052884))

(assert (=> b!6227065 m!7053176))

(declare-fun m!7053922 () Bool)

(assert (=> b!6227065 m!7053922))

(assert (=> b!6227065 m!7052590))

(assert (=> b!6227065 m!7053182))

(assert (=> b!6227065 m!7053922))

(assert (=> b!6227065 m!7053182))

(declare-fun m!7053924 () Bool)

(assert (=> b!6227065 m!7053924))

(assert (=> b!6225987 d!1952134))

(declare-fun bs!1543992 () Bool)

(declare-fun d!1952136 () Bool)

(assert (= bs!1543992 (and d!1952136 d!1952098)))

(declare-fun lambda!340464 () Int)

(assert (=> bs!1543992 (= lambda!340464 lambda!340458)))

(declare-fun bs!1543993 () Bool)

(assert (= bs!1543993 (and d!1952136 d!1951794)))

(assert (=> bs!1543993 (= lambda!340464 lambda!340430)))

(declare-fun bs!1543994 () Bool)

(assert (= bs!1543994 (and d!1952136 d!1951616)))

(assert (=> bs!1543994 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340464 lambda!340389))))

(declare-fun bs!1543995 () Bool)

(assert (= bs!1543995 (and d!1952136 d!1952018)))

(assert (=> bs!1543995 (= lambda!340464 lambda!340451)))

(declare-fun bs!1543996 () Bool)

(assert (= bs!1543996 (and d!1952136 d!1952052)))

(assert (=> bs!1543996 (= lambda!340464 lambda!340454)))

(declare-fun bs!1543997 () Bool)

(assert (= bs!1543997 (and d!1952136 b!6225256)))

(assert (=> bs!1543997 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340464 lambda!340339))))

(assert (=> d!1952136 true))

(assert (=> d!1952136 (= (derivationStepZipper!2127 lt!2345527 (head!12830 (t!378320 s!2326))) (flatMap!1666 lt!2345527 lambda!340464))))

(declare-fun bs!1543998 () Bool)

(assert (= bs!1543998 d!1952136))

(declare-fun m!7053926 () Bool)

(assert (=> bs!1543998 m!7053926))

(assert (=> b!6225987 d!1952136))

(assert (=> b!6225987 d!1951798))

(assert (=> b!6225987 d!1951802))

(declare-fun c!1125532 () Bool)

(declare-fun c!1125536 () Bool)

(declare-fun call!523160 () List!64782)

(declare-fun bm!523153 () Bool)

(assert (=> bm!523153 (= call!523160 ($colon$colon!2030 (exprs!6045 (ite (or c!1125245 c!1125243) lt!2345516 (Context!11091 call!522931))) (ite (or c!1125532 c!1125536) (regTwo!32834 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))) (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292)))))))))))

(declare-fun c!1125534 () Bool)

(declare-fun bm!523154 () Bool)

(declare-fun call!523158 () (InoxSet Context!11090))

(assert (=> bm!523154 (= call!523158 (derivationStepZipperDown!1409 (ite c!1125534 (regTwo!32835 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))) (regOne!32834 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292)))))))) (ite c!1125534 (ite (or c!1125245 c!1125243) lt!2345516 (Context!11091 call!522931)) (Context!11091 call!523160)) (h!71108 s!2326)))))

(declare-fun e!3790257 () (InoxSet Context!11090))

(declare-fun b!6227066 () Bool)

(assert (=> b!6227066 (= e!3790257 (store ((as const (Array Context!11090 Bool)) false) (ite (or c!1125245 c!1125243) lt!2345516 (Context!11091 call!522931)) true))))

(declare-fun bm!523155 () Bool)

(declare-fun call!523162 () List!64782)

(declare-fun call!523159 () (InoxSet Context!11090))

(assert (=> bm!523155 (= call!523159 (derivationStepZipperDown!1409 (ite c!1125534 (regOne!32835 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))) (ite c!1125532 (regTwo!32834 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))) (ite c!1125536 (regOne!32834 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))) (reg!16490 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292)))))))))) (ite (or c!1125534 c!1125532) (ite (or c!1125245 c!1125243) lt!2345516 (Context!11091 call!522931)) (Context!11091 call!523162)) (h!71108 s!2326)))))

(declare-fun c!1125535 () Bool)

(declare-fun b!6227067 () Bool)

(assert (=> b!6227067 (= c!1125535 ((_ is Star!16161) (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))))))

(declare-fun e!3790252 () (InoxSet Context!11090))

(declare-fun e!3790253 () (InoxSet Context!11090))

(assert (=> b!6227067 (= e!3790252 e!3790253)))

(declare-fun b!6227068 () Bool)

(declare-fun call!523161 () (InoxSet Context!11090))

(assert (=> b!6227068 (= e!3790253 call!523161)))

(declare-fun d!1952138 () Bool)

(declare-fun c!1125533 () Bool)

(assert (=> d!1952138 (= c!1125533 (and ((_ is ElementMatch!16161) (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))) (= (c!1125039 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))) (h!71108 s!2326))))))

(assert (=> d!1952138 (= (derivationStepZipperDown!1409 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292)))))) (ite (or c!1125245 c!1125243) lt!2345516 (Context!11091 call!522931)) (h!71108 s!2326)) e!3790257)))

(declare-fun bm!523156 () Bool)

(assert (=> bm!523156 (= call!523162 call!523160)))

(declare-fun b!6227069 () Bool)

(declare-fun e!3790255 () Bool)

(assert (=> b!6227069 (= c!1125532 e!3790255)))

(declare-fun res!2573314 () Bool)

(assert (=> b!6227069 (=> (not res!2573314) (not e!3790255))))

(assert (=> b!6227069 (= res!2573314 ((_ is Concat!25006) (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))))))

(declare-fun e!3790254 () (InoxSet Context!11090))

(declare-fun e!3790256 () (InoxSet Context!11090))

(assert (=> b!6227069 (= e!3790254 e!3790256)))

(declare-fun b!6227070 () Bool)

(assert (=> b!6227070 (= e!3790253 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6227071 () Bool)

(assert (=> b!6227071 (= e!3790254 ((_ map or) call!523159 call!523158))))

(declare-fun b!6227072 () Bool)

(assert (=> b!6227072 (= e!3790256 e!3790252)))

(assert (=> b!6227072 (= c!1125536 ((_ is Concat!25006) (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))))))

(declare-fun bm!523157 () Bool)

(declare-fun call!523163 () (InoxSet Context!11090))

(assert (=> bm!523157 (= call!523161 call!523163)))

(declare-fun bm!523158 () Bool)

(assert (=> bm!523158 (= call!523163 call!523159)))

(declare-fun b!6227073 () Bool)

(assert (=> b!6227073 (= e!3790255 (nullable!6154 (regOne!32834 (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292)))))))))))

(declare-fun b!6227074 () Bool)

(assert (=> b!6227074 (= e!3790257 e!3790254)))

(assert (=> b!6227074 (= c!1125534 ((_ is Union!16161) (ite c!1125245 (regOne!32835 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125243 (regTwo!32834 (regTwo!32834 (regOne!32834 r!7292))) (ite c!1125247 (regOne!32834 (regTwo!32834 (regOne!32834 r!7292))) (reg!16490 (regTwo!32834 (regOne!32834 r!7292))))))))))

(declare-fun b!6227075 () Bool)

(assert (=> b!6227075 (= e!3790252 call!523161)))

(declare-fun b!6227076 () Bool)

(assert (=> b!6227076 (= e!3790256 ((_ map or) call!523158 call!523163))))

(assert (= (and d!1952138 c!1125533) b!6227066))

(assert (= (and d!1952138 (not c!1125533)) b!6227074))

(assert (= (and b!6227074 c!1125534) b!6227071))

(assert (= (and b!6227074 (not c!1125534)) b!6227069))

(assert (= (and b!6227069 res!2573314) b!6227073))

(assert (= (and b!6227069 c!1125532) b!6227076))

(assert (= (and b!6227069 (not c!1125532)) b!6227072))

(assert (= (and b!6227072 c!1125536) b!6227075))

(assert (= (and b!6227072 (not c!1125536)) b!6227067))

(assert (= (and b!6227067 c!1125535) b!6227068))

(assert (= (and b!6227067 (not c!1125535)) b!6227070))

(assert (= (or b!6227075 b!6227068) bm!523156))

(assert (= (or b!6227075 b!6227068) bm!523157))

(assert (= (or b!6227076 bm!523156) bm!523153))

(assert (= (or b!6227076 bm!523157) bm!523158))

(assert (= (or b!6227071 b!6227076) bm!523154))

(assert (= (or b!6227071 bm!523158) bm!523155))

(declare-fun m!7053928 () Bool)

(assert (=> bm!523155 m!7053928))

(declare-fun m!7053930 () Bool)

(assert (=> b!6227073 m!7053930))

(declare-fun m!7053932 () Bool)

(assert (=> bm!523153 m!7053932))

(declare-fun m!7053934 () Bool)

(assert (=> bm!523154 m!7053934))

(declare-fun m!7053936 () Bool)

(assert (=> b!6227066 m!7053936))

(assert (=> bm!522924 d!1952138))

(declare-fun d!1952140 () Bool)

(assert (=> d!1952140 (= ($colon$colon!2030 (exprs!6045 lt!2345517) (ite (or c!1125248 c!1125252) (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 r!7292)))) (Cons!64658 (ite (or c!1125248 c!1125252) (regTwo!32834 (regOne!32834 (regOne!32834 r!7292))) (regOne!32834 (regOne!32834 r!7292))) (exprs!6045 lt!2345517)))))

(assert (=> bm!522928 d!1952140))

(declare-fun d!1952142 () Bool)

(assert (=> d!1952142 (= (isEmpty!36670 (tail!11916 (unfocusZipperList!1582 zl!343))) ((_ is Nil!64658) (tail!11916 (unfocusZipperList!1582 zl!343))))))

(assert (=> b!6225921 d!1952142))

(declare-fun d!1952144 () Bool)

(assert (=> d!1952144 (= (tail!11916 (unfocusZipperList!1582 zl!343)) (t!378318 (unfocusZipperList!1582 zl!343)))))

(assert (=> b!6225921 d!1952144))

(declare-fun bs!1543999 () Bool)

(declare-fun d!1952146 () Bool)

(assert (= bs!1543999 (and d!1952146 d!1951774)))

(declare-fun lambda!340465 () Int)

(assert (=> bs!1543999 (= lambda!340465 lambda!340428)))

(declare-fun bs!1544000 () Bool)

(assert (= bs!1544000 (and d!1952146 d!1951884)))

(assert (=> bs!1544000 (= lambda!340465 lambda!340440)))

(declare-fun bs!1544001 () Bool)

(assert (= bs!1544001 (and d!1952146 d!1951952)))

(assert (=> bs!1544001 (= lambda!340465 lambda!340446)))

(declare-fun bs!1544002 () Bool)

(assert (= bs!1544002 (and d!1952146 d!1952126)))

(assert (=> bs!1544002 (= lambda!340465 lambda!340461)))

(assert (=> d!1952146 (= (nullableZipper!1935 ((_ map or) lt!2345527 lt!2345521)) (exists!2495 ((_ map or) lt!2345527 lt!2345521) lambda!340465))))

(declare-fun bs!1544003 () Bool)

(assert (= bs!1544003 d!1952146))

(declare-fun m!7053938 () Bool)

(assert (=> bs!1544003 m!7053938))

(assert (=> b!6225996 d!1952146))

(declare-fun bs!1544004 () Bool)

(declare-fun d!1952148 () Bool)

(assert (= bs!1544004 (and d!1952148 d!1951952)))

(declare-fun lambda!340466 () Int)

(assert (=> bs!1544004 (= lambda!340466 lambda!340446)))

(declare-fun bs!1544005 () Bool)

(assert (= bs!1544005 (and d!1952148 d!1951774)))

(assert (=> bs!1544005 (= lambda!340466 lambda!340428)))

(declare-fun bs!1544006 () Bool)

(assert (= bs!1544006 (and d!1952148 d!1951884)))

(assert (=> bs!1544006 (= lambda!340466 lambda!340440)))

(declare-fun bs!1544007 () Bool)

(assert (= bs!1544007 (and d!1952148 d!1952126)))

(assert (=> bs!1544007 (= lambda!340466 lambda!340461)))

(declare-fun bs!1544008 () Bool)

(assert (= bs!1544008 (and d!1952148 d!1952146)))

(assert (=> bs!1544008 (= lambda!340466 lambda!340465)))

(assert (=> d!1952148 (= (nullableZipper!1935 lt!2345535) (exists!2495 lt!2345535 lambda!340466))))

(declare-fun bs!1544009 () Bool)

(assert (= bs!1544009 d!1952148))

(declare-fun m!7053940 () Bool)

(assert (=> bs!1544009 m!7053940))

(assert (=> b!6225481 d!1952148))

(declare-fun b!6227077 () Bool)

(declare-fun e!3790259 () (InoxSet Context!11090))

(assert (=> b!6227077 (= e!3790259 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6227078 () Bool)

(declare-fun call!523164 () (InoxSet Context!11090))

(declare-fun e!3790258 () (InoxSet Context!11090))

(assert (=> b!6227078 (= e!3790258 ((_ map or) call!523164 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345515)))))) (h!71108 s!2326))))))

(declare-fun d!1952150 () Bool)

(declare-fun c!1125537 () Bool)

(declare-fun e!3790260 () Bool)

(assert (=> d!1952150 (= c!1125537 e!3790260)))

(declare-fun res!2573315 () Bool)

(assert (=> d!1952150 (=> (not res!2573315) (not e!3790260))))

(assert (=> d!1952150 (= res!2573315 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345515))))))))

(assert (=> d!1952150 (= (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 lt!2345515))) (h!71108 s!2326)) e!3790258)))

(declare-fun b!6227079 () Bool)

(assert (=> b!6227079 (= e!3790258 e!3790259)))

(declare-fun c!1125538 () Bool)

(assert (=> b!6227079 (= c!1125538 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345515))))))))

(declare-fun b!6227080 () Bool)

(assert (=> b!6227080 (= e!3790259 call!523164)))

(declare-fun bm!523159 () Bool)

(assert (=> bm!523159 (= call!523164 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345515))))) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345515)))))) (h!71108 s!2326)))))

(declare-fun b!6227081 () Bool)

(assert (=> b!6227081 (= e!3790260 (nullable!6154 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 lt!2345515)))))))))

(assert (= (and d!1952150 res!2573315) b!6227081))

(assert (= (and d!1952150 c!1125537) b!6227078))

(assert (= (and d!1952150 (not c!1125537)) b!6227079))

(assert (= (and b!6227079 c!1125538) b!6227080))

(assert (= (and b!6227079 (not c!1125538)) b!6227077))

(assert (= (or b!6227078 b!6227080) bm!523159))

(declare-fun m!7053942 () Bool)

(assert (=> b!6227078 m!7053942))

(declare-fun m!7053944 () Bool)

(assert (=> bm!523159 m!7053944))

(declare-fun m!7053946 () Bool)

(assert (=> b!6227081 m!7053946))

(assert (=> b!6225892 d!1952150))

(assert (=> b!6225845 d!1951596))

(assert (=> d!1951544 d!1951772))

(declare-fun d!1952152 () Bool)

(assert (=> d!1952152 (= (nullable!6154 (h!71106 (exprs!6045 lt!2345515))) (nullableFct!2110 (h!71106 (exprs!6045 lt!2345515))))))

(declare-fun bs!1544010 () Bool)

(assert (= bs!1544010 d!1952152))

(declare-fun m!7053948 () Bool)

(assert (=> bs!1544010 m!7053948))

(assert (=> b!6225895 d!1952152))

(declare-fun bm!523160 () Bool)

(declare-fun c!1125539 () Bool)

(declare-fun call!523167 () List!64782)

(declare-fun c!1125543 () Bool)

(assert (=> bm!523160 (= call!523167 ($colon$colon!2030 (exprs!6045 (ite c!1125205 lt!2345516 (Context!11091 call!522920))) (ite (or c!1125539 c!1125543) (regTwo!32834 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))) (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))))))))

(declare-fun bm!523161 () Bool)

(declare-fun c!1125541 () Bool)

(declare-fun call!523165 () (InoxSet Context!11090))

(assert (=> bm!523161 (= call!523165 (derivationStepZipperDown!1409 (ite c!1125541 (regTwo!32835 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))) (regOne!32834 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))))) (ite c!1125541 (ite c!1125205 lt!2345516 (Context!11091 call!522920)) (Context!11091 call!523167)) (h!71108 s!2326)))))

(declare-fun b!6227082 () Bool)

(declare-fun e!3790266 () (InoxSet Context!11090))

(assert (=> b!6227082 (= e!3790266 (store ((as const (Array Context!11090 Bool)) false) (ite c!1125205 lt!2345516 (Context!11091 call!522920)) true))))

(declare-fun call!523166 () (InoxSet Context!11090))

(declare-fun bm!523162 () Bool)

(declare-fun call!523169 () List!64782)

(assert (=> bm!523162 (= call!523166 (derivationStepZipperDown!1409 (ite c!1125541 (regOne!32835 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))) (ite c!1125539 (regTwo!32834 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))) (ite c!1125543 (regOne!32834 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))) (reg!16490 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))))))) (ite (or c!1125541 c!1125539) (ite c!1125205 lt!2345516 (Context!11091 call!522920)) (Context!11091 call!523169)) (h!71108 s!2326)))))

(declare-fun b!6227083 () Bool)

(declare-fun c!1125542 () Bool)

(assert (=> b!6227083 (= c!1125542 ((_ is Star!16161) (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun e!3790261 () (InoxSet Context!11090))

(declare-fun e!3790262 () (InoxSet Context!11090))

(assert (=> b!6227083 (= e!3790261 e!3790262)))

(declare-fun b!6227084 () Bool)

(declare-fun call!523168 () (InoxSet Context!11090))

(assert (=> b!6227084 (= e!3790262 call!523168)))

(declare-fun d!1952154 () Bool)

(declare-fun c!1125540 () Bool)

(assert (=> d!1952154 (= c!1125540 (and ((_ is ElementMatch!16161) (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))) (= (c!1125039 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))) (h!71108 s!2326))))))

(assert (=> d!1952154 (= (derivationStepZipperDown!1409 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))) (ite c!1125205 lt!2345516 (Context!11091 call!522920)) (h!71108 s!2326)) e!3790266)))

(declare-fun bm!523163 () Bool)

(assert (=> bm!523163 (= call!523169 call!523167)))

(declare-fun b!6227085 () Bool)

(declare-fun e!3790264 () Bool)

(assert (=> b!6227085 (= c!1125539 e!3790264)))

(declare-fun res!2573316 () Bool)

(assert (=> b!6227085 (=> (not res!2573316) (not e!3790264))))

(assert (=> b!6227085 (= res!2573316 ((_ is Concat!25006) (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun e!3790263 () (InoxSet Context!11090))

(declare-fun e!3790265 () (InoxSet Context!11090))

(assert (=> b!6227085 (= e!3790263 e!3790265)))

(declare-fun b!6227086 () Bool)

(assert (=> b!6227086 (= e!3790262 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6227087 () Bool)

(assert (=> b!6227087 (= e!3790263 ((_ map or) call!523166 call!523165))))

(declare-fun b!6227088 () Bool)

(assert (=> b!6227088 (= e!3790265 e!3790261)))

(assert (=> b!6227088 (= c!1125543 ((_ is Concat!25006) (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun bm!523164 () Bool)

(declare-fun call!523170 () (InoxSet Context!11090))

(assert (=> bm!523164 (= call!523168 call!523170)))

(declare-fun bm!523165 () Bool)

(assert (=> bm!523165 (= call!523170 call!523166)))

(declare-fun b!6227089 () Bool)

(assert (=> b!6227089 (= e!3790264 (nullable!6154 (regOne!32834 (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343))))))))))

(declare-fun b!6227090 () Bool)

(assert (=> b!6227090 (= e!3790266 e!3790263)))

(assert (=> b!6227090 (= c!1125541 ((_ is Union!16161) (ite c!1125205 (regTwo!32835 (h!71106 (exprs!6045 (h!71107 zl!343)))) (regOne!32834 (h!71106 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun b!6227091 () Bool)

(assert (=> b!6227091 (= e!3790261 call!523168)))

(declare-fun b!6227092 () Bool)

(assert (=> b!6227092 (= e!3790265 ((_ map or) call!523165 call!523170))))

(assert (= (and d!1952154 c!1125540) b!6227082))

(assert (= (and d!1952154 (not c!1125540)) b!6227090))

(assert (= (and b!6227090 c!1125541) b!6227087))

(assert (= (and b!6227090 (not c!1125541)) b!6227085))

(assert (= (and b!6227085 res!2573316) b!6227089))

(assert (= (and b!6227085 c!1125539) b!6227092))

(assert (= (and b!6227085 (not c!1125539)) b!6227088))

(assert (= (and b!6227088 c!1125543) b!6227091))

(assert (= (and b!6227088 (not c!1125543)) b!6227083))

(assert (= (and b!6227083 c!1125542) b!6227084))

(assert (= (and b!6227083 (not c!1125542)) b!6227086))

(assert (= (or b!6227091 b!6227084) bm!523163))

(assert (= (or b!6227091 b!6227084) bm!523164))

(assert (= (or b!6227092 bm!523163) bm!523160))

(assert (= (or b!6227092 bm!523164) bm!523165))

(assert (= (or b!6227087 b!6227092) bm!523161))

(assert (= (or b!6227087 bm!523165) bm!523162))

(declare-fun m!7053950 () Bool)

(assert (=> bm!523162 m!7053950))

(declare-fun m!7053952 () Bool)

(assert (=> b!6227089 m!7053952))

(declare-fun m!7053954 () Bool)

(assert (=> bm!523160 m!7053954))

(declare-fun m!7053956 () Bool)

(assert (=> bm!523161 m!7053956))

(declare-fun m!7053958 () Bool)

(assert (=> b!6227082 m!7053958))

(assert (=> bm!522914 d!1952154))

(declare-fun d!1952156 () Bool)

(assert (=> d!1952156 (= (isEmpty!36670 (exprs!6045 (h!71107 zl!343))) ((_ is Nil!64658) (exprs!6045 (h!71107 zl!343))))))

(assert (=> b!6225958 d!1952156))

(declare-fun b!6227093 () Bool)

(declare-fun e!3790268 () (InoxSet Context!11090))

(assert (=> b!6227093 (= e!3790268 ((as const (Array Context!11090 Bool)) false))))

(declare-fun call!523171 () (InoxSet Context!11090))

(declare-fun e!3790267 () (InoxSet Context!11090))

(declare-fun b!6227094 () Bool)

(assert (=> b!6227094 (= e!3790267 ((_ map or) call!523171 (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343))))))) (h!71108 s!2326))))))

(declare-fun d!1952158 () Bool)

(declare-fun c!1125544 () Bool)

(declare-fun e!3790269 () Bool)

(assert (=> d!1952158 (= c!1125544 e!3790269)))

(declare-fun res!2573317 () Bool)

(assert (=> d!1952158 (=> (not res!2573317) (not e!3790269))))

(assert (=> d!1952158 (= res!2573317 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))))))))

(assert (=> d!1952158 (= (derivationStepZipperUp!1335 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))) (h!71108 s!2326)) e!3790267)))

(declare-fun b!6227095 () Bool)

(assert (=> b!6227095 (= e!3790267 e!3790268)))

(declare-fun c!1125545 () Bool)

(assert (=> b!6227095 (= c!1125545 ((_ is Cons!64658) (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))))))))

(declare-fun b!6227096 () Bool)

(assert (=> b!6227096 (= e!3790268 call!523171)))

(declare-fun bm!523166 () Bool)

(assert (=> bm!523166 (= call!523171 (derivationStepZipperDown!1409 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343)))))) (Context!11091 (t!378318 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343))))))) (h!71108 s!2326)))))

(declare-fun b!6227097 () Bool)

(assert (=> b!6227097 (= e!3790269 (nullable!6154 (h!71106 (exprs!6045 (Context!11091 (t!378318 (exprs!6045 (h!71107 zl!343))))))))))

(assert (= (and d!1952158 res!2573317) b!6227097))

(assert (= (and d!1952158 c!1125544) b!6227094))

(assert (= (and d!1952158 (not c!1125544)) b!6227095))

(assert (= (and b!6227095 c!1125545) b!6227096))

(assert (= (and b!6227095 (not c!1125545)) b!6227093))

(assert (= (or b!6227094 b!6227096) bm!523166))

(declare-fun m!7053960 () Bool)

(assert (=> b!6227094 m!7053960))

(declare-fun m!7053962 () Bool)

(assert (=> bm!523166 m!7053962))

(declare-fun m!7053964 () Bool)

(assert (=> b!6227097 m!7053964))

(assert (=> b!6225842 d!1952158))

(declare-fun d!1952160 () Bool)

(declare-fun res!2573322 () Bool)

(declare-fun e!3790273 () Bool)

(assert (=> d!1952160 (=> res!2573322 e!3790273)))

(assert (=> d!1952160 (= res!2573322 ((_ is ElementMatch!16161) lt!2345614))))

(assert (=> d!1952160 (= (validRegex!7897 lt!2345614) e!3790273)))

(declare-fun b!6227098 () Bool)

(declare-fun e!3790275 () Bool)

(declare-fun call!523173 () Bool)

(assert (=> b!6227098 (= e!3790275 call!523173)))

(declare-fun b!6227099 () Bool)

(declare-fun e!3790274 () Bool)

(declare-fun e!3790276 () Bool)

(assert (=> b!6227099 (= e!3790274 e!3790276)))

(declare-fun c!1125546 () Bool)

(assert (=> b!6227099 (= c!1125546 ((_ is Union!16161) lt!2345614))))

(declare-fun b!6227100 () Bool)

(assert (=> b!6227100 (= e!3790273 e!3790274)))

(declare-fun c!1125547 () Bool)

(assert (=> b!6227100 (= c!1125547 ((_ is Star!16161) lt!2345614))))

(declare-fun bm!523167 () Bool)

(assert (=> bm!523167 (= call!523173 (validRegex!7897 (ite c!1125546 (regTwo!32835 lt!2345614) (regTwo!32834 lt!2345614))))))

(declare-fun b!6227101 () Bool)

(declare-fun e!3790270 () Bool)

(assert (=> b!6227101 (= e!3790274 e!3790270)))

(declare-fun res!2573319 () Bool)

(assert (=> b!6227101 (= res!2573319 (not (nullable!6154 (reg!16490 lt!2345614))))))

(assert (=> b!6227101 (=> (not res!2573319) (not e!3790270))))

(declare-fun bm!523168 () Bool)

(declare-fun call!523174 () Bool)

(assert (=> bm!523168 (= call!523174 (validRegex!7897 (ite c!1125547 (reg!16490 lt!2345614) (ite c!1125546 (regOne!32835 lt!2345614) (regOne!32834 lt!2345614)))))))

(declare-fun b!6227102 () Bool)

(declare-fun res!2573320 () Bool)

(assert (=> b!6227102 (=> (not res!2573320) (not e!3790275))))

(declare-fun call!523172 () Bool)

(assert (=> b!6227102 (= res!2573320 call!523172)))

(assert (=> b!6227102 (= e!3790276 e!3790275)))

(declare-fun b!6227103 () Bool)

(declare-fun res!2573318 () Bool)

(declare-fun e!3790271 () Bool)

(assert (=> b!6227103 (=> res!2573318 e!3790271)))

(assert (=> b!6227103 (= res!2573318 (not ((_ is Concat!25006) lt!2345614)))))

(assert (=> b!6227103 (= e!3790276 e!3790271)))

(declare-fun b!6227104 () Bool)

(declare-fun e!3790272 () Bool)

(assert (=> b!6227104 (= e!3790271 e!3790272)))

(declare-fun res!2573321 () Bool)

(assert (=> b!6227104 (=> (not res!2573321) (not e!3790272))))

(assert (=> b!6227104 (= res!2573321 call!523172)))

(declare-fun bm!523169 () Bool)

(assert (=> bm!523169 (= call!523172 call!523174)))

(declare-fun b!6227105 () Bool)

(assert (=> b!6227105 (= e!3790272 call!523173)))

(declare-fun b!6227106 () Bool)

(assert (=> b!6227106 (= e!3790270 call!523174)))

(assert (= (and d!1952160 (not res!2573322)) b!6227100))

(assert (= (and b!6227100 c!1125547) b!6227101))

(assert (= (and b!6227100 (not c!1125547)) b!6227099))

(assert (= (and b!6227101 res!2573319) b!6227106))

(assert (= (and b!6227099 c!1125546) b!6227102))

(assert (= (and b!6227099 (not c!1125546)) b!6227103))

(assert (= (and b!6227102 res!2573320) b!6227098))

(assert (= (and b!6227103 (not res!2573318)) b!6227104))

(assert (= (and b!6227104 res!2573321) b!6227105))

(assert (= (or b!6227098 b!6227105) bm!523167))

(assert (= (or b!6227102 b!6227104) bm!523169))

(assert (= (or b!6227106 bm!523169) bm!523168))

(declare-fun m!7053966 () Bool)

(assert (=> bm!523167 m!7053966))

(declare-fun m!7053968 () Bool)

(assert (=> b!6227101 m!7053968))

(declare-fun m!7053970 () Bool)

(assert (=> bm!523168 m!7053970))

(assert (=> d!1951622 d!1952160))

(declare-fun d!1952162 () Bool)

(declare-fun res!2573323 () Bool)

(declare-fun e!3790277 () Bool)

(assert (=> d!1952162 (=> res!2573323 e!3790277)))

(assert (=> d!1952162 (= res!2573323 ((_ is Nil!64658) (unfocusZipperList!1582 zl!343)))))

(assert (=> d!1952162 (= (forall!15275 (unfocusZipperList!1582 zl!343) lambda!340392) e!3790277)))

(declare-fun b!6227107 () Bool)

(declare-fun e!3790278 () Bool)

(assert (=> b!6227107 (= e!3790277 e!3790278)))

(declare-fun res!2573324 () Bool)

(assert (=> b!6227107 (=> (not res!2573324) (not e!3790278))))

(assert (=> b!6227107 (= res!2573324 (dynLambda!25516 lambda!340392 (h!71106 (unfocusZipperList!1582 zl!343))))))

(declare-fun b!6227108 () Bool)

(assert (=> b!6227108 (= e!3790278 (forall!15275 (t!378318 (unfocusZipperList!1582 zl!343)) lambda!340392))))

(assert (= (and d!1952162 (not res!2573323)) b!6227107))

(assert (= (and b!6227107 res!2573324) b!6227108))

(declare-fun b_lambda!236771 () Bool)

(assert (=> (not b_lambda!236771) (not b!6227107)))

(declare-fun m!7053972 () Bool)

(assert (=> b!6227107 m!7053972))

(declare-fun m!7053974 () Bool)

(assert (=> b!6227108 m!7053974))

(assert (=> d!1951622 d!1952162))

(declare-fun d!1952164 () Bool)

(declare-fun c!1125550 () Bool)

(assert (=> d!1952164 (= c!1125550 ((_ is Nil!64659) lt!2345628))))

(declare-fun e!3790281 () (InoxSet Context!11090))

(assert (=> d!1952164 (= (content!12116 lt!2345628) e!3790281)))

(declare-fun b!6227113 () Bool)

(assert (=> b!6227113 (= e!3790281 ((as const (Array Context!11090 Bool)) false))))

(declare-fun b!6227114 () Bool)

(assert (=> b!6227114 (= e!3790281 ((_ map or) (store ((as const (Array Context!11090 Bool)) false) (h!71107 lt!2345628) true) (content!12116 (t!378319 lt!2345628))))))

(assert (= (and d!1952164 c!1125550) b!6227113))

(assert (= (and d!1952164 (not c!1125550)) b!6227114))

(declare-fun m!7053976 () Bool)

(assert (=> b!6227114 m!7053976))

(declare-fun m!7053978 () Bool)

(assert (=> b!6227114 m!7053978))

(assert (=> b!6226000 d!1952164))

(assert (=> b!6225825 d!1951760))

(assert (=> b!6225825 d!1951762))

(declare-fun d!1952166 () Bool)

(declare-fun c!1125551 () Bool)

(assert (=> d!1952166 (= c!1125551 (isEmpty!36673 (tail!11915 (t!378320 s!2326))))))

(declare-fun e!3790282 () Bool)

(assert (=> d!1952166 (= (matchZipper!2173 (derivationStepZipper!2127 lt!2345524 (head!12830 (t!378320 s!2326))) (tail!11915 (t!378320 s!2326))) e!3790282)))

(declare-fun b!6227115 () Bool)

(assert (=> b!6227115 (= e!3790282 (nullableZipper!1935 (derivationStepZipper!2127 lt!2345524 (head!12830 (t!378320 s!2326)))))))

(declare-fun b!6227116 () Bool)

(assert (=> b!6227116 (= e!3790282 (matchZipper!2173 (derivationStepZipper!2127 (derivationStepZipper!2127 lt!2345524 (head!12830 (t!378320 s!2326))) (head!12830 (tail!11915 (t!378320 s!2326)))) (tail!11915 (tail!11915 (t!378320 s!2326)))))))

(assert (= (and d!1952166 c!1125551) b!6227115))

(assert (= (and d!1952166 (not c!1125551)) b!6227116))

(assert (=> d!1952166 m!7052590))

(assert (=> d!1952166 m!7053172))

(assert (=> b!6227115 m!7052890))

(declare-fun m!7053980 () Bool)

(assert (=> b!6227115 m!7053980))

(assert (=> b!6227116 m!7052590))

(assert (=> b!6227116 m!7053176))

(assert (=> b!6227116 m!7052890))

(assert (=> b!6227116 m!7053176))

(declare-fun m!7053982 () Bool)

(assert (=> b!6227116 m!7053982))

(assert (=> b!6227116 m!7052590))

(assert (=> b!6227116 m!7053182))

(assert (=> b!6227116 m!7053982))

(assert (=> b!6227116 m!7053182))

(declare-fun m!7053984 () Bool)

(assert (=> b!6227116 m!7053984))

(assert (=> b!6225989 d!1952166))

(declare-fun bs!1544011 () Bool)

(declare-fun d!1952168 () Bool)

(assert (= bs!1544011 (and d!1952168 d!1952098)))

(declare-fun lambda!340467 () Int)

(assert (=> bs!1544011 (= lambda!340467 lambda!340458)))

(declare-fun bs!1544012 () Bool)

(assert (= bs!1544012 (and d!1952168 d!1952136)))

(assert (=> bs!1544012 (= lambda!340467 lambda!340464)))

(declare-fun bs!1544013 () Bool)

(assert (= bs!1544013 (and d!1952168 d!1951794)))

(assert (=> bs!1544013 (= lambda!340467 lambda!340430)))

(declare-fun bs!1544014 () Bool)

(assert (= bs!1544014 (and d!1952168 d!1951616)))

(assert (=> bs!1544014 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340467 lambda!340389))))

(declare-fun bs!1544015 () Bool)

(assert (= bs!1544015 (and d!1952168 d!1952018)))

(assert (=> bs!1544015 (= lambda!340467 lambda!340451)))

(declare-fun bs!1544016 () Bool)

(assert (= bs!1544016 (and d!1952168 d!1952052)))

(assert (=> bs!1544016 (= lambda!340467 lambda!340454)))

(declare-fun bs!1544017 () Bool)

(assert (= bs!1544017 (and d!1952168 b!6225256)))

(assert (=> bs!1544017 (= (= (head!12830 (t!378320 s!2326)) (h!71108 s!2326)) (= lambda!340467 lambda!340339))))

(assert (=> d!1952168 true))

(assert (=> d!1952168 (= (derivationStepZipper!2127 lt!2345524 (head!12830 (t!378320 s!2326))) (flatMap!1666 lt!2345524 lambda!340467))))

(declare-fun bs!1544018 () Bool)

(assert (= bs!1544018 d!1952168))

(declare-fun m!7053986 () Bool)

(assert (=> bs!1544018 m!7053986))

(assert (=> b!6225989 d!1952168))

(assert (=> b!6225989 d!1951798))

(assert (=> b!6225989 d!1951802))

(assert (=> d!1951610 d!1951612))

(declare-fun d!1952170 () Bool)

(assert (=> d!1952170 (= (flatMap!1666 lt!2345537 lambda!340339) (dynLambda!25515 lambda!340339 lt!2345515))))

(assert (=> d!1952170 true))

(declare-fun _$13!3282 () Unit!157975)

(assert (=> d!1952170 (= (choose!46272 lt!2345537 lt!2345515 lambda!340339) _$13!3282)))

(declare-fun b_lambda!236773 () Bool)

(assert (=> (not b_lambda!236773) (not d!1952170)))

(declare-fun bs!1544019 () Bool)

(assert (= bs!1544019 d!1952170))

(assert (=> bs!1544019 m!7052400))

(assert (=> bs!1544019 m!7052784))

(assert (=> d!1951610 d!1952170))

(declare-fun e!3790283 () Bool)

(assert (=> b!6226053 (= tp!1736562 e!3790283)))

(declare-fun b!6227120 () Bool)

(declare-fun tp!1736750 () Bool)

(declare-fun tp!1736749 () Bool)

(assert (=> b!6227120 (= e!3790283 (and tp!1736750 tp!1736749))))

(declare-fun b!6227117 () Bool)

(assert (=> b!6227117 (= e!3790283 tp_is_empty!41575)))

(declare-fun b!6227119 () Bool)

(declare-fun tp!1736747 () Bool)

(assert (=> b!6227119 (= e!3790283 tp!1736747)))

(declare-fun b!6227118 () Bool)

(declare-fun tp!1736748 () Bool)

(declare-fun tp!1736751 () Bool)

(assert (=> b!6227118 (= e!3790283 (and tp!1736748 tp!1736751))))

(assert (= (and b!6226053 ((_ is ElementMatch!16161) (reg!16490 (reg!16490 r!7292)))) b!6227117))

(assert (= (and b!6226053 ((_ is Concat!25006) (reg!16490 (reg!16490 r!7292)))) b!6227118))

(assert (= (and b!6226053 ((_ is Star!16161) (reg!16490 (reg!16490 r!7292)))) b!6227119))

(assert (= (and b!6226053 ((_ is Union!16161) (reg!16490 (reg!16490 r!7292)))) b!6227120))

(declare-fun e!3790284 () Bool)

(assert (=> b!6226033 (= tp!1736543 e!3790284)))

(declare-fun b!6227124 () Bool)

(declare-fun tp!1736755 () Bool)

(declare-fun tp!1736754 () Bool)

(assert (=> b!6227124 (= e!3790284 (and tp!1736755 tp!1736754))))

(declare-fun b!6227121 () Bool)

(assert (=> b!6227121 (= e!3790284 tp_is_empty!41575)))

(declare-fun b!6227123 () Bool)

(declare-fun tp!1736752 () Bool)

(assert (=> b!6227123 (= e!3790284 tp!1736752)))

(declare-fun b!6227122 () Bool)

(declare-fun tp!1736753 () Bool)

(declare-fun tp!1736756 () Bool)

(assert (=> b!6227122 (= e!3790284 (and tp!1736753 tp!1736756))))

(assert (= (and b!6226033 ((_ is ElementMatch!16161) (regOne!32835 (regOne!32835 r!7292)))) b!6227121))

(assert (= (and b!6226033 ((_ is Concat!25006) (regOne!32835 (regOne!32835 r!7292)))) b!6227122))

(assert (= (and b!6226033 ((_ is Star!16161) (regOne!32835 (regOne!32835 r!7292)))) b!6227123))

(assert (= (and b!6226033 ((_ is Union!16161) (regOne!32835 (regOne!32835 r!7292)))) b!6227124))

(declare-fun e!3790285 () Bool)

(assert (=> b!6226033 (= tp!1736542 e!3790285)))

(declare-fun b!6227128 () Bool)

(declare-fun tp!1736760 () Bool)

(declare-fun tp!1736759 () Bool)

(assert (=> b!6227128 (= e!3790285 (and tp!1736760 tp!1736759))))

(declare-fun b!6227125 () Bool)

(assert (=> b!6227125 (= e!3790285 tp_is_empty!41575)))

(declare-fun b!6227127 () Bool)

(declare-fun tp!1736757 () Bool)

(assert (=> b!6227127 (= e!3790285 tp!1736757)))

(declare-fun b!6227126 () Bool)

(declare-fun tp!1736758 () Bool)

(declare-fun tp!1736761 () Bool)

(assert (=> b!6227126 (= e!3790285 (and tp!1736758 tp!1736761))))

(assert (= (and b!6226033 ((_ is ElementMatch!16161) (regTwo!32835 (regOne!32835 r!7292)))) b!6227125))

(assert (= (and b!6226033 ((_ is Concat!25006) (regTwo!32835 (regOne!32835 r!7292)))) b!6227126))

(assert (= (and b!6226033 ((_ is Star!16161) (regTwo!32835 (regOne!32835 r!7292)))) b!6227127))

(assert (= (and b!6226033 ((_ is Union!16161) (regTwo!32835 (regOne!32835 r!7292)))) b!6227128))

(declare-fun e!3790286 () Bool)

(assert (=> b!6226054 (= tp!1736565 e!3790286)))

(declare-fun b!6227132 () Bool)

(declare-fun tp!1736765 () Bool)

(declare-fun tp!1736764 () Bool)

(assert (=> b!6227132 (= e!3790286 (and tp!1736765 tp!1736764))))

(declare-fun b!6227129 () Bool)

(assert (=> b!6227129 (= e!3790286 tp_is_empty!41575)))

(declare-fun b!6227131 () Bool)

(declare-fun tp!1736762 () Bool)

(assert (=> b!6227131 (= e!3790286 tp!1736762)))

(declare-fun b!6227130 () Bool)

(declare-fun tp!1736763 () Bool)

(declare-fun tp!1736766 () Bool)

(assert (=> b!6227130 (= e!3790286 (and tp!1736763 tp!1736766))))

(assert (= (and b!6226054 ((_ is ElementMatch!16161) (regOne!32835 (reg!16490 r!7292)))) b!6227129))

(assert (= (and b!6226054 ((_ is Concat!25006) (regOne!32835 (reg!16490 r!7292)))) b!6227130))

(assert (= (and b!6226054 ((_ is Star!16161) (regOne!32835 (reg!16490 r!7292)))) b!6227131))

(assert (= (and b!6226054 ((_ is Union!16161) (regOne!32835 (reg!16490 r!7292)))) b!6227132))

(declare-fun e!3790287 () Bool)

(assert (=> b!6226054 (= tp!1736564 e!3790287)))

(declare-fun b!6227136 () Bool)

(declare-fun tp!1736770 () Bool)

(declare-fun tp!1736769 () Bool)

(assert (=> b!6227136 (= e!3790287 (and tp!1736770 tp!1736769))))

(declare-fun b!6227133 () Bool)

(assert (=> b!6227133 (= e!3790287 tp_is_empty!41575)))

(declare-fun b!6227135 () Bool)

(declare-fun tp!1736767 () Bool)

(assert (=> b!6227135 (= e!3790287 tp!1736767)))

(declare-fun b!6227134 () Bool)

(declare-fun tp!1736768 () Bool)

(declare-fun tp!1736771 () Bool)

(assert (=> b!6227134 (= e!3790287 (and tp!1736768 tp!1736771))))

(assert (= (and b!6226054 ((_ is ElementMatch!16161) (regTwo!32835 (reg!16490 r!7292)))) b!6227133))

(assert (= (and b!6226054 ((_ is Concat!25006) (regTwo!32835 (reg!16490 r!7292)))) b!6227134))

(assert (= (and b!6226054 ((_ is Star!16161) (regTwo!32835 (reg!16490 r!7292)))) b!6227135))

(assert (= (and b!6226054 ((_ is Union!16161) (regTwo!32835 (reg!16490 r!7292)))) b!6227136))

(declare-fun condSetEmpty!42320 () Bool)

(assert (=> setNonEmpty!42308 (= condSetEmpty!42320 (= setRest!42308 ((as const (Array Context!11090 Bool)) false)))))

(declare-fun setRes!42320 () Bool)

(assert (=> setNonEmpty!42308 (= tp!1736555 setRes!42320)))

(declare-fun setIsEmpty!42320 () Bool)

(assert (=> setIsEmpty!42320 setRes!42320))

(declare-fun setElem!42320 () Context!11090)

(declare-fun setNonEmpty!42320 () Bool)

(declare-fun e!3790288 () Bool)

(declare-fun tp!1736773 () Bool)

(assert (=> setNonEmpty!42320 (= setRes!42320 (and tp!1736773 (inv!83649 setElem!42320) e!3790288))))

(declare-fun setRest!42320 () (InoxSet Context!11090))

(assert (=> setNonEmpty!42320 (= setRest!42308 ((_ map or) (store ((as const (Array Context!11090 Bool)) false) setElem!42320 true) setRest!42320))))

(declare-fun b!6227137 () Bool)

(declare-fun tp!1736772 () Bool)

(assert (=> b!6227137 (= e!3790288 tp!1736772)))

(assert (= (and setNonEmpty!42308 condSetEmpty!42320) setIsEmpty!42320))

(assert (= (and setNonEmpty!42308 (not condSetEmpty!42320)) setNonEmpty!42320))

(assert (= setNonEmpty!42320 b!6227137))

(declare-fun m!7053988 () Bool)

(assert (=> setNonEmpty!42320 m!7053988))

(declare-fun b!6227138 () Bool)

(declare-fun e!3790289 () Bool)

(declare-fun tp!1736774 () Bool)

(declare-fun tp!1736775 () Bool)

(assert (=> b!6227138 (= e!3790289 (and tp!1736774 tp!1736775))))

(assert (=> b!6226042 (= tp!1736554 e!3790289)))

(assert (= (and b!6226042 ((_ is Cons!64658) (exprs!6045 setElem!42308))) b!6227138))

(declare-fun e!3790290 () Bool)

(assert (=> b!6226022 (= tp!1736533 e!3790290)))

(declare-fun b!6227142 () Bool)

(declare-fun tp!1736779 () Bool)

(declare-fun tp!1736778 () Bool)

(assert (=> b!6227142 (= e!3790290 (and tp!1736779 tp!1736778))))

(declare-fun b!6227139 () Bool)

(assert (=> b!6227139 (= e!3790290 tp_is_empty!41575)))

(declare-fun b!6227141 () Bool)

(declare-fun tp!1736776 () Bool)

(assert (=> b!6227141 (= e!3790290 tp!1736776)))

(declare-fun b!6227140 () Bool)

(declare-fun tp!1736777 () Bool)

(declare-fun tp!1736780 () Bool)

(assert (=> b!6227140 (= e!3790290 (and tp!1736777 tp!1736780))))

(assert (= (and b!6226022 ((_ is ElementMatch!16161) (regOne!32834 (regTwo!32834 r!7292)))) b!6227139))

(assert (= (and b!6226022 ((_ is Concat!25006) (regOne!32834 (regTwo!32834 r!7292)))) b!6227140))

(assert (= (and b!6226022 ((_ is Star!16161) (regOne!32834 (regTwo!32834 r!7292)))) b!6227141))

(assert (= (and b!6226022 ((_ is Union!16161) (regOne!32834 (regTwo!32834 r!7292)))) b!6227142))

(declare-fun e!3790291 () Bool)

(assert (=> b!6226022 (= tp!1736536 e!3790291)))

(declare-fun b!6227146 () Bool)

(declare-fun tp!1736784 () Bool)

(declare-fun tp!1736783 () Bool)

(assert (=> b!6227146 (= e!3790291 (and tp!1736784 tp!1736783))))

(declare-fun b!6227143 () Bool)

(assert (=> b!6227143 (= e!3790291 tp_is_empty!41575)))

(declare-fun b!6227145 () Bool)

(declare-fun tp!1736781 () Bool)

(assert (=> b!6227145 (= e!3790291 tp!1736781)))

(declare-fun b!6227144 () Bool)

(declare-fun tp!1736782 () Bool)

(declare-fun tp!1736785 () Bool)

(assert (=> b!6227144 (= e!3790291 (and tp!1736782 tp!1736785))))

(assert (= (and b!6226022 ((_ is ElementMatch!16161) (regTwo!32834 (regTwo!32834 r!7292)))) b!6227143))

(assert (= (and b!6226022 ((_ is Concat!25006) (regTwo!32834 (regTwo!32834 r!7292)))) b!6227144))

(assert (= (and b!6226022 ((_ is Star!16161) (regTwo!32834 (regTwo!32834 r!7292)))) b!6227145))

(assert (= (and b!6226022 ((_ is Union!16161) (regTwo!32834 (regTwo!32834 r!7292)))) b!6227146))

(declare-fun e!3790292 () Bool)

(assert (=> b!6226023 (= tp!1736532 e!3790292)))

(declare-fun b!6227150 () Bool)

(declare-fun tp!1736789 () Bool)

(declare-fun tp!1736788 () Bool)

(assert (=> b!6227150 (= e!3790292 (and tp!1736789 tp!1736788))))

(declare-fun b!6227147 () Bool)

(assert (=> b!6227147 (= e!3790292 tp_is_empty!41575)))

(declare-fun b!6227149 () Bool)

(declare-fun tp!1736786 () Bool)

(assert (=> b!6227149 (= e!3790292 tp!1736786)))

(declare-fun b!6227148 () Bool)

(declare-fun tp!1736787 () Bool)

(declare-fun tp!1736790 () Bool)

(assert (=> b!6227148 (= e!3790292 (and tp!1736787 tp!1736790))))

(assert (= (and b!6226023 ((_ is ElementMatch!16161) (reg!16490 (regTwo!32834 r!7292)))) b!6227147))

(assert (= (and b!6226023 ((_ is Concat!25006) (reg!16490 (regTwo!32834 r!7292)))) b!6227148))

(assert (= (and b!6226023 ((_ is Star!16161) (reg!16490 (regTwo!32834 r!7292)))) b!6227149))

(assert (= (and b!6226023 ((_ is Union!16161) (reg!16490 (regTwo!32834 r!7292)))) b!6227150))

(declare-fun e!3790293 () Bool)

(assert (=> b!6226024 (= tp!1736535 e!3790293)))

(declare-fun b!6227154 () Bool)

(declare-fun tp!1736794 () Bool)

(declare-fun tp!1736793 () Bool)

(assert (=> b!6227154 (= e!3790293 (and tp!1736794 tp!1736793))))

(declare-fun b!6227151 () Bool)

(assert (=> b!6227151 (= e!3790293 tp_is_empty!41575)))

(declare-fun b!6227153 () Bool)

(declare-fun tp!1736791 () Bool)

(assert (=> b!6227153 (= e!3790293 tp!1736791)))

(declare-fun b!6227152 () Bool)

(declare-fun tp!1736792 () Bool)

(declare-fun tp!1736795 () Bool)

(assert (=> b!6227152 (= e!3790293 (and tp!1736792 tp!1736795))))

(assert (= (and b!6226024 ((_ is ElementMatch!16161) (regOne!32835 (regTwo!32834 r!7292)))) b!6227151))

(assert (= (and b!6226024 ((_ is Concat!25006) (regOne!32835 (regTwo!32834 r!7292)))) b!6227152))

(assert (= (and b!6226024 ((_ is Star!16161) (regOne!32835 (regTwo!32834 r!7292)))) b!6227153))

(assert (= (and b!6226024 ((_ is Union!16161) (regOne!32835 (regTwo!32834 r!7292)))) b!6227154))

(declare-fun e!3790294 () Bool)

(assert (=> b!6226024 (= tp!1736534 e!3790294)))

(declare-fun b!6227158 () Bool)

(declare-fun tp!1736799 () Bool)

(declare-fun tp!1736798 () Bool)

(assert (=> b!6227158 (= e!3790294 (and tp!1736799 tp!1736798))))

(declare-fun b!6227155 () Bool)

(assert (=> b!6227155 (= e!3790294 tp_is_empty!41575)))

(declare-fun b!6227157 () Bool)

(declare-fun tp!1736796 () Bool)

(assert (=> b!6227157 (= e!3790294 tp!1736796)))

(declare-fun b!6227156 () Bool)

(declare-fun tp!1736797 () Bool)

(declare-fun tp!1736800 () Bool)

(assert (=> b!6227156 (= e!3790294 (and tp!1736797 tp!1736800))))

(assert (= (and b!6226024 ((_ is ElementMatch!16161) (regTwo!32835 (regTwo!32834 r!7292)))) b!6227155))

(assert (= (and b!6226024 ((_ is Concat!25006) (regTwo!32835 (regTwo!32834 r!7292)))) b!6227156))

(assert (= (and b!6226024 ((_ is Star!16161) (regTwo!32835 (regTwo!32834 r!7292)))) b!6227157))

(assert (= (and b!6226024 ((_ is Union!16161) (regTwo!32835 (regTwo!32834 r!7292)))) b!6227158))

(declare-fun e!3790295 () Bool)

(assert (=> b!6226031 (= tp!1736541 e!3790295)))

(declare-fun b!6227162 () Bool)

(declare-fun tp!1736804 () Bool)

(declare-fun tp!1736803 () Bool)

(assert (=> b!6227162 (= e!3790295 (and tp!1736804 tp!1736803))))

(declare-fun b!6227159 () Bool)

(assert (=> b!6227159 (= e!3790295 tp_is_empty!41575)))

(declare-fun b!6227161 () Bool)

(declare-fun tp!1736801 () Bool)

(assert (=> b!6227161 (= e!3790295 tp!1736801)))

(declare-fun b!6227160 () Bool)

(declare-fun tp!1736802 () Bool)

(declare-fun tp!1736805 () Bool)

(assert (=> b!6227160 (= e!3790295 (and tp!1736802 tp!1736805))))

(assert (= (and b!6226031 ((_ is ElementMatch!16161) (regOne!32834 (regOne!32835 r!7292)))) b!6227159))

(assert (= (and b!6226031 ((_ is Concat!25006) (regOne!32834 (regOne!32835 r!7292)))) b!6227160))

(assert (= (and b!6226031 ((_ is Star!16161) (regOne!32834 (regOne!32835 r!7292)))) b!6227161))

(assert (= (and b!6226031 ((_ is Union!16161) (regOne!32834 (regOne!32835 r!7292)))) b!6227162))

(declare-fun e!3790296 () Bool)

(assert (=> b!6226031 (= tp!1736544 e!3790296)))

(declare-fun b!6227166 () Bool)

(declare-fun tp!1736809 () Bool)

(declare-fun tp!1736808 () Bool)

(assert (=> b!6227166 (= e!3790296 (and tp!1736809 tp!1736808))))

(declare-fun b!6227163 () Bool)

(assert (=> b!6227163 (= e!3790296 tp_is_empty!41575)))

(declare-fun b!6227165 () Bool)

(declare-fun tp!1736806 () Bool)

(assert (=> b!6227165 (= e!3790296 tp!1736806)))

(declare-fun b!6227164 () Bool)

(declare-fun tp!1736807 () Bool)

(declare-fun tp!1736810 () Bool)

(assert (=> b!6227164 (= e!3790296 (and tp!1736807 tp!1736810))))

(assert (= (and b!6226031 ((_ is ElementMatch!16161) (regTwo!32834 (regOne!32835 r!7292)))) b!6227163))

(assert (= (and b!6226031 ((_ is Concat!25006) (regTwo!32834 (regOne!32835 r!7292)))) b!6227164))

(assert (= (and b!6226031 ((_ is Star!16161) (regTwo!32834 (regOne!32835 r!7292)))) b!6227165))

(assert (= (and b!6226031 ((_ is Union!16161) (regTwo!32834 (regOne!32835 r!7292)))) b!6227166))

(declare-fun e!3790297 () Bool)

(assert (=> b!6226032 (= tp!1736540 e!3790297)))

(declare-fun b!6227170 () Bool)

(declare-fun tp!1736814 () Bool)

(declare-fun tp!1736813 () Bool)

(assert (=> b!6227170 (= e!3790297 (and tp!1736814 tp!1736813))))

(declare-fun b!6227167 () Bool)

(assert (=> b!6227167 (= e!3790297 tp_is_empty!41575)))

(declare-fun b!6227169 () Bool)

(declare-fun tp!1736811 () Bool)

(assert (=> b!6227169 (= e!3790297 tp!1736811)))

(declare-fun b!6227168 () Bool)

(declare-fun tp!1736812 () Bool)

(declare-fun tp!1736815 () Bool)

(assert (=> b!6227168 (= e!3790297 (and tp!1736812 tp!1736815))))

(assert (= (and b!6226032 ((_ is ElementMatch!16161) (reg!16490 (regOne!32835 r!7292)))) b!6227167))

(assert (= (and b!6226032 ((_ is Concat!25006) (reg!16490 (regOne!32835 r!7292)))) b!6227168))

(assert (= (and b!6226032 ((_ is Star!16161) (reg!16490 (regOne!32835 r!7292)))) b!6227169))

(assert (= (and b!6226032 ((_ is Union!16161) (reg!16490 (regOne!32835 r!7292)))) b!6227170))

(declare-fun e!3790298 () Bool)

(assert (=> b!6226052 (= tp!1736563 e!3790298)))

(declare-fun b!6227174 () Bool)

(declare-fun tp!1736819 () Bool)

(declare-fun tp!1736818 () Bool)

(assert (=> b!6227174 (= e!3790298 (and tp!1736819 tp!1736818))))

(declare-fun b!6227171 () Bool)

(assert (=> b!6227171 (= e!3790298 tp_is_empty!41575)))

(declare-fun b!6227173 () Bool)

(declare-fun tp!1736816 () Bool)

(assert (=> b!6227173 (= e!3790298 tp!1736816)))

(declare-fun b!6227172 () Bool)

(declare-fun tp!1736817 () Bool)

(declare-fun tp!1736820 () Bool)

(assert (=> b!6227172 (= e!3790298 (and tp!1736817 tp!1736820))))

(assert (= (and b!6226052 ((_ is ElementMatch!16161) (regOne!32834 (reg!16490 r!7292)))) b!6227171))

(assert (= (and b!6226052 ((_ is Concat!25006) (regOne!32834 (reg!16490 r!7292)))) b!6227172))

(assert (= (and b!6226052 ((_ is Star!16161) (regOne!32834 (reg!16490 r!7292)))) b!6227173))

(assert (= (and b!6226052 ((_ is Union!16161) (regOne!32834 (reg!16490 r!7292)))) b!6227174))

(declare-fun e!3790299 () Bool)

(assert (=> b!6226052 (= tp!1736566 e!3790299)))

(declare-fun b!6227178 () Bool)

(declare-fun tp!1736824 () Bool)

(declare-fun tp!1736823 () Bool)

(assert (=> b!6227178 (= e!3790299 (and tp!1736824 tp!1736823))))

(declare-fun b!6227175 () Bool)

(assert (=> b!6227175 (= e!3790299 tp_is_empty!41575)))

(declare-fun b!6227177 () Bool)

(declare-fun tp!1736821 () Bool)

(assert (=> b!6227177 (= e!3790299 tp!1736821)))

(declare-fun b!6227176 () Bool)

(declare-fun tp!1736822 () Bool)

(declare-fun tp!1736825 () Bool)

(assert (=> b!6227176 (= e!3790299 (and tp!1736822 tp!1736825))))

(assert (= (and b!6226052 ((_ is ElementMatch!16161) (regTwo!32834 (reg!16490 r!7292)))) b!6227175))

(assert (= (and b!6226052 ((_ is Concat!25006) (regTwo!32834 (reg!16490 r!7292)))) b!6227176))

(assert (= (and b!6226052 ((_ is Star!16161) (regTwo!32834 (reg!16490 r!7292)))) b!6227177))

(assert (= (and b!6226052 ((_ is Union!16161) (regTwo!32834 (reg!16490 r!7292)))) b!6227178))

(declare-fun b!6227179 () Bool)

(declare-fun e!3790300 () Bool)

(declare-fun tp!1736826 () Bool)

(declare-fun tp!1736827 () Bool)

(assert (=> b!6227179 (= e!3790300 (and tp!1736826 tp!1736827))))

(assert (=> b!6226050 (= tp!1736560 e!3790300)))

(assert (= (and b!6226050 ((_ is Cons!64658) (exprs!6045 (h!71107 (t!378319 zl!343))))) b!6227179))

(declare-fun e!3790301 () Bool)

(assert (=> b!6226037 (= tp!1736548 e!3790301)))

(declare-fun b!6227183 () Bool)

(declare-fun tp!1736831 () Bool)

(declare-fun tp!1736830 () Bool)

(assert (=> b!6227183 (= e!3790301 (and tp!1736831 tp!1736830))))

(declare-fun b!6227180 () Bool)

(assert (=> b!6227180 (= e!3790301 tp_is_empty!41575)))

(declare-fun b!6227182 () Bool)

(declare-fun tp!1736828 () Bool)

(assert (=> b!6227182 (= e!3790301 tp!1736828)))

(declare-fun b!6227181 () Bool)

(declare-fun tp!1736829 () Bool)

(declare-fun tp!1736832 () Bool)

(assert (=> b!6227181 (= e!3790301 (and tp!1736829 tp!1736832))))

(assert (= (and b!6226037 ((_ is ElementMatch!16161) (regOne!32835 (regTwo!32835 r!7292)))) b!6227180))

(assert (= (and b!6226037 ((_ is Concat!25006) (regOne!32835 (regTwo!32835 r!7292)))) b!6227181))

(assert (= (and b!6226037 ((_ is Star!16161) (regOne!32835 (regTwo!32835 r!7292)))) b!6227182))

(assert (= (and b!6226037 ((_ is Union!16161) (regOne!32835 (regTwo!32835 r!7292)))) b!6227183))

(declare-fun e!3790302 () Bool)

(assert (=> b!6226037 (= tp!1736547 e!3790302)))

(declare-fun b!6227187 () Bool)

(declare-fun tp!1736836 () Bool)

(declare-fun tp!1736835 () Bool)

(assert (=> b!6227187 (= e!3790302 (and tp!1736836 tp!1736835))))

(declare-fun b!6227184 () Bool)

(assert (=> b!6227184 (= e!3790302 tp_is_empty!41575)))

(declare-fun b!6227186 () Bool)

(declare-fun tp!1736833 () Bool)

(assert (=> b!6227186 (= e!3790302 tp!1736833)))

(declare-fun b!6227185 () Bool)

(declare-fun tp!1736834 () Bool)

(declare-fun tp!1736837 () Bool)

(assert (=> b!6227185 (= e!3790302 (and tp!1736834 tp!1736837))))

(assert (= (and b!6226037 ((_ is ElementMatch!16161) (regTwo!32835 (regTwo!32835 r!7292)))) b!6227184))

(assert (= (and b!6226037 ((_ is Concat!25006) (regTwo!32835 (regTwo!32835 r!7292)))) b!6227185))

(assert (= (and b!6226037 ((_ is Star!16161) (regTwo!32835 (regTwo!32835 r!7292)))) b!6227186))

(assert (= (and b!6226037 ((_ is Union!16161) (regTwo!32835 (regTwo!32835 r!7292)))) b!6227187))

(declare-fun b!6227188 () Bool)

(declare-fun e!3790303 () Bool)

(declare-fun tp!1736838 () Bool)

(assert (=> b!6227188 (= e!3790303 (and tp_is_empty!41575 tp!1736838))))

(assert (=> b!6226029 (= tp!1736539 e!3790303)))

(assert (= (and b!6226029 ((_ is Cons!64660) (t!378320 (t!378320 s!2326)))) b!6227188))

(declare-fun e!3790304 () Bool)

(assert (=> b!6226006 (= tp!1736515 e!3790304)))

(declare-fun b!6227192 () Bool)

(declare-fun tp!1736842 () Bool)

(declare-fun tp!1736841 () Bool)

(assert (=> b!6227192 (= e!3790304 (and tp!1736842 tp!1736841))))

(declare-fun b!6227189 () Bool)

(assert (=> b!6227189 (= e!3790304 tp_is_empty!41575)))

(declare-fun b!6227191 () Bool)

(declare-fun tp!1736839 () Bool)

(assert (=> b!6227191 (= e!3790304 tp!1736839)))

(declare-fun b!6227190 () Bool)

(declare-fun tp!1736840 () Bool)

(declare-fun tp!1736843 () Bool)

(assert (=> b!6227190 (= e!3790304 (and tp!1736840 tp!1736843))))

(assert (= (and b!6226006 ((_ is ElementMatch!16161) (h!71106 (exprs!6045 setElem!42302)))) b!6227189))

(assert (= (and b!6226006 ((_ is Concat!25006) (h!71106 (exprs!6045 setElem!42302)))) b!6227190))

(assert (= (and b!6226006 ((_ is Star!16161) (h!71106 (exprs!6045 setElem!42302)))) b!6227191))

(assert (= (and b!6226006 ((_ is Union!16161) (h!71106 (exprs!6045 setElem!42302)))) b!6227192))

(declare-fun b!6227193 () Bool)

(declare-fun e!3790305 () Bool)

(declare-fun tp!1736844 () Bool)

(declare-fun tp!1736845 () Bool)

(assert (=> b!6227193 (= e!3790305 (and tp!1736844 tp!1736845))))

(assert (=> b!6226006 (= tp!1736516 e!3790305)))

(assert (= (and b!6226006 ((_ is Cons!64658) (t!378318 (exprs!6045 setElem!42302)))) b!6227193))

(declare-fun e!3790306 () Bool)

(assert (=> b!6226018 (= tp!1736528 e!3790306)))

(declare-fun b!6227197 () Bool)

(declare-fun tp!1736849 () Bool)

(declare-fun tp!1736848 () Bool)

(assert (=> b!6227197 (= e!3790306 (and tp!1736849 tp!1736848))))

(declare-fun b!6227194 () Bool)

(assert (=> b!6227194 (= e!3790306 tp_is_empty!41575)))

(declare-fun b!6227196 () Bool)

(declare-fun tp!1736846 () Bool)

(assert (=> b!6227196 (= e!3790306 tp!1736846)))

(declare-fun b!6227195 () Bool)

(declare-fun tp!1736847 () Bool)

(declare-fun tp!1736850 () Bool)

(assert (=> b!6227195 (= e!3790306 (and tp!1736847 tp!1736850))))

(assert (= (and b!6226018 ((_ is ElementMatch!16161) (regOne!32834 (regOne!32834 r!7292)))) b!6227194))

(assert (= (and b!6226018 ((_ is Concat!25006) (regOne!32834 (regOne!32834 r!7292)))) b!6227195))

(assert (= (and b!6226018 ((_ is Star!16161) (regOne!32834 (regOne!32834 r!7292)))) b!6227196))

(assert (= (and b!6226018 ((_ is Union!16161) (regOne!32834 (regOne!32834 r!7292)))) b!6227197))

(declare-fun e!3790307 () Bool)

(assert (=> b!6226018 (= tp!1736531 e!3790307)))

(declare-fun b!6227201 () Bool)

(declare-fun tp!1736854 () Bool)

(declare-fun tp!1736853 () Bool)

(assert (=> b!6227201 (= e!3790307 (and tp!1736854 tp!1736853))))

(declare-fun b!6227198 () Bool)

(assert (=> b!6227198 (= e!3790307 tp_is_empty!41575)))

(declare-fun b!6227200 () Bool)

(declare-fun tp!1736851 () Bool)

(assert (=> b!6227200 (= e!3790307 tp!1736851)))

(declare-fun b!6227199 () Bool)

(declare-fun tp!1736852 () Bool)

(declare-fun tp!1736855 () Bool)

(assert (=> b!6227199 (= e!3790307 (and tp!1736852 tp!1736855))))

(assert (= (and b!6226018 ((_ is ElementMatch!16161) (regTwo!32834 (regOne!32834 r!7292)))) b!6227198))

(assert (= (and b!6226018 ((_ is Concat!25006) (regTwo!32834 (regOne!32834 r!7292)))) b!6227199))

(assert (= (and b!6226018 ((_ is Star!16161) (regTwo!32834 (regOne!32834 r!7292)))) b!6227200))

(assert (= (and b!6226018 ((_ is Union!16161) (regTwo!32834 (regOne!32834 r!7292)))) b!6227201))

(declare-fun e!3790308 () Bool)

(assert (=> b!6226019 (= tp!1736527 e!3790308)))

(declare-fun b!6227205 () Bool)

(declare-fun tp!1736859 () Bool)

(declare-fun tp!1736858 () Bool)

(assert (=> b!6227205 (= e!3790308 (and tp!1736859 tp!1736858))))

(declare-fun b!6227202 () Bool)

(assert (=> b!6227202 (= e!3790308 tp_is_empty!41575)))

(declare-fun b!6227204 () Bool)

(declare-fun tp!1736856 () Bool)

(assert (=> b!6227204 (= e!3790308 tp!1736856)))

(declare-fun b!6227203 () Bool)

(declare-fun tp!1736857 () Bool)

(declare-fun tp!1736860 () Bool)

(assert (=> b!6227203 (= e!3790308 (and tp!1736857 tp!1736860))))

(assert (= (and b!6226019 ((_ is ElementMatch!16161) (reg!16490 (regOne!32834 r!7292)))) b!6227202))

(assert (= (and b!6226019 ((_ is Concat!25006) (reg!16490 (regOne!32834 r!7292)))) b!6227203))

(assert (= (and b!6226019 ((_ is Star!16161) (reg!16490 (regOne!32834 r!7292)))) b!6227204))

(assert (= (and b!6226019 ((_ is Union!16161) (reg!16490 (regOne!32834 r!7292)))) b!6227205))

(declare-fun e!3790309 () Bool)

(assert (=> b!6226020 (= tp!1736530 e!3790309)))

(declare-fun b!6227209 () Bool)

(declare-fun tp!1736864 () Bool)

(declare-fun tp!1736863 () Bool)

(assert (=> b!6227209 (= e!3790309 (and tp!1736864 tp!1736863))))

(declare-fun b!6227206 () Bool)

(assert (=> b!6227206 (= e!3790309 tp_is_empty!41575)))

(declare-fun b!6227208 () Bool)

(declare-fun tp!1736861 () Bool)

(assert (=> b!6227208 (= e!3790309 tp!1736861)))

(declare-fun b!6227207 () Bool)

(declare-fun tp!1736862 () Bool)

(declare-fun tp!1736865 () Bool)

(assert (=> b!6227207 (= e!3790309 (and tp!1736862 tp!1736865))))

(assert (= (and b!6226020 ((_ is ElementMatch!16161) (regOne!32835 (regOne!32834 r!7292)))) b!6227206))

(assert (= (and b!6226020 ((_ is Concat!25006) (regOne!32835 (regOne!32834 r!7292)))) b!6227207))

(assert (= (and b!6226020 ((_ is Star!16161) (regOne!32835 (regOne!32834 r!7292)))) b!6227208))

(assert (= (and b!6226020 ((_ is Union!16161) (regOne!32835 (regOne!32834 r!7292)))) b!6227209))

(declare-fun e!3790310 () Bool)

(assert (=> b!6226020 (= tp!1736529 e!3790310)))

(declare-fun b!6227213 () Bool)

(declare-fun tp!1736869 () Bool)

(declare-fun tp!1736868 () Bool)

(assert (=> b!6227213 (= e!3790310 (and tp!1736869 tp!1736868))))

(declare-fun b!6227210 () Bool)

(assert (=> b!6227210 (= e!3790310 tp_is_empty!41575)))

(declare-fun b!6227212 () Bool)

(declare-fun tp!1736866 () Bool)

(assert (=> b!6227212 (= e!3790310 tp!1736866)))

(declare-fun b!6227211 () Bool)

(declare-fun tp!1736867 () Bool)

(declare-fun tp!1736870 () Bool)

(assert (=> b!6227211 (= e!3790310 (and tp!1736867 tp!1736870))))

(assert (= (and b!6226020 ((_ is ElementMatch!16161) (regTwo!32835 (regOne!32834 r!7292)))) b!6227210))

(assert (= (and b!6226020 ((_ is Concat!25006) (regTwo!32835 (regOne!32834 r!7292)))) b!6227211))

(assert (= (and b!6226020 ((_ is Star!16161) (regTwo!32835 (regOne!32834 r!7292)))) b!6227212))

(assert (= (and b!6226020 ((_ is Union!16161) (regTwo!32835 (regOne!32834 r!7292)))) b!6227213))

(declare-fun e!3790311 () Bool)

(assert (=> b!6226035 (= tp!1736546 e!3790311)))

(declare-fun b!6227217 () Bool)

(declare-fun tp!1736874 () Bool)

(declare-fun tp!1736873 () Bool)

(assert (=> b!6227217 (= e!3790311 (and tp!1736874 tp!1736873))))

(declare-fun b!6227214 () Bool)

(assert (=> b!6227214 (= e!3790311 tp_is_empty!41575)))

(declare-fun b!6227216 () Bool)

(declare-fun tp!1736871 () Bool)

(assert (=> b!6227216 (= e!3790311 tp!1736871)))

(declare-fun b!6227215 () Bool)

(declare-fun tp!1736872 () Bool)

(declare-fun tp!1736875 () Bool)

(assert (=> b!6227215 (= e!3790311 (and tp!1736872 tp!1736875))))

(assert (= (and b!6226035 ((_ is ElementMatch!16161) (regOne!32834 (regTwo!32835 r!7292)))) b!6227214))

(assert (= (and b!6226035 ((_ is Concat!25006) (regOne!32834 (regTwo!32835 r!7292)))) b!6227215))

(assert (= (and b!6226035 ((_ is Star!16161) (regOne!32834 (regTwo!32835 r!7292)))) b!6227216))

(assert (= (and b!6226035 ((_ is Union!16161) (regOne!32834 (regTwo!32835 r!7292)))) b!6227217))

(declare-fun e!3790312 () Bool)

(assert (=> b!6226035 (= tp!1736549 e!3790312)))

(declare-fun b!6227221 () Bool)

(declare-fun tp!1736879 () Bool)

(declare-fun tp!1736878 () Bool)

(assert (=> b!6227221 (= e!3790312 (and tp!1736879 tp!1736878))))

(declare-fun b!6227218 () Bool)

(assert (=> b!6227218 (= e!3790312 tp_is_empty!41575)))

(declare-fun b!6227220 () Bool)

(declare-fun tp!1736876 () Bool)

(assert (=> b!6227220 (= e!3790312 tp!1736876)))

(declare-fun b!6227219 () Bool)

(declare-fun tp!1736877 () Bool)

(declare-fun tp!1736880 () Bool)

(assert (=> b!6227219 (= e!3790312 (and tp!1736877 tp!1736880))))

(assert (= (and b!6226035 ((_ is ElementMatch!16161) (regTwo!32834 (regTwo!32835 r!7292)))) b!6227218))

(assert (= (and b!6226035 ((_ is Concat!25006) (regTwo!32834 (regTwo!32835 r!7292)))) b!6227219))

(assert (= (and b!6226035 ((_ is Star!16161) (regTwo!32834 (regTwo!32835 r!7292)))) b!6227220))

(assert (= (and b!6226035 ((_ is Union!16161) (regTwo!32834 (regTwo!32835 r!7292)))) b!6227221))

(declare-fun b!6227223 () Bool)

(declare-fun e!3790314 () Bool)

(declare-fun tp!1736881 () Bool)

(assert (=> b!6227223 (= e!3790314 tp!1736881)))

(declare-fun e!3790313 () Bool)

(declare-fun tp!1736882 () Bool)

(declare-fun b!6227222 () Bool)

(assert (=> b!6227222 (= e!3790313 (and (inv!83649 (h!71107 (t!378319 (t!378319 zl!343)))) e!3790314 tp!1736882))))

(assert (=> b!6226049 (= tp!1736561 e!3790313)))

(assert (= b!6227222 b!6227223))

(assert (= (and b!6226049 ((_ is Cons!64659) (t!378319 (t!378319 zl!343)))) b!6227222))

(declare-fun m!7053990 () Bool)

(assert (=> b!6227222 m!7053990))

(declare-fun e!3790315 () Bool)

(assert (=> b!6226036 (= tp!1736545 e!3790315)))

(declare-fun b!6227227 () Bool)

(declare-fun tp!1736886 () Bool)

(declare-fun tp!1736885 () Bool)

(assert (=> b!6227227 (= e!3790315 (and tp!1736886 tp!1736885))))

(declare-fun b!6227224 () Bool)

(assert (=> b!6227224 (= e!3790315 tp_is_empty!41575)))

(declare-fun b!6227226 () Bool)

(declare-fun tp!1736883 () Bool)

(assert (=> b!6227226 (= e!3790315 tp!1736883)))

(declare-fun b!6227225 () Bool)

(declare-fun tp!1736884 () Bool)

(declare-fun tp!1736887 () Bool)

(assert (=> b!6227225 (= e!3790315 (and tp!1736884 tp!1736887))))

(assert (= (and b!6226036 ((_ is ElementMatch!16161) (reg!16490 (regTwo!32835 r!7292)))) b!6227224))

(assert (= (and b!6226036 ((_ is Concat!25006) (reg!16490 (regTwo!32835 r!7292)))) b!6227225))

(assert (= (and b!6226036 ((_ is Star!16161) (reg!16490 (regTwo!32835 r!7292)))) b!6227226))

(assert (= (and b!6226036 ((_ is Union!16161) (reg!16490 (regTwo!32835 r!7292)))) b!6227227))

(declare-fun e!3790316 () Bool)

(assert (=> b!6226005 (= tp!1736513 e!3790316)))

(declare-fun b!6227231 () Bool)

(declare-fun tp!1736891 () Bool)

(declare-fun tp!1736890 () Bool)

(assert (=> b!6227231 (= e!3790316 (and tp!1736891 tp!1736890))))

(declare-fun b!6227228 () Bool)

(assert (=> b!6227228 (= e!3790316 tp_is_empty!41575)))

(declare-fun b!6227230 () Bool)

(declare-fun tp!1736888 () Bool)

(assert (=> b!6227230 (= e!3790316 tp!1736888)))

(declare-fun b!6227229 () Bool)

(declare-fun tp!1736889 () Bool)

(declare-fun tp!1736892 () Bool)

(assert (=> b!6227229 (= e!3790316 (and tp!1736889 tp!1736892))))

(assert (= (and b!6226005 ((_ is ElementMatch!16161) (h!71106 (exprs!6045 (h!71107 zl!343))))) b!6227228))

(assert (= (and b!6226005 ((_ is Concat!25006) (h!71106 (exprs!6045 (h!71107 zl!343))))) b!6227229))

(assert (= (and b!6226005 ((_ is Star!16161) (h!71106 (exprs!6045 (h!71107 zl!343))))) b!6227230))

(assert (= (and b!6226005 ((_ is Union!16161) (h!71106 (exprs!6045 (h!71107 zl!343))))) b!6227231))

(declare-fun b!6227232 () Bool)

(declare-fun e!3790317 () Bool)

(declare-fun tp!1736893 () Bool)

(declare-fun tp!1736894 () Bool)

(assert (=> b!6227232 (= e!3790317 (and tp!1736893 tp!1736894))))

(assert (=> b!6226005 (= tp!1736514 e!3790317)))

(assert (= (and b!6226005 ((_ is Cons!64658) (t!378318 (exprs!6045 (h!71107 zl!343))))) b!6227232))

(declare-fun b_lambda!236775 () Bool)

(assert (= b_lambda!236739 (or d!1951632 b_lambda!236775)))

(declare-fun bs!1544020 () Bool)

(declare-fun d!1952172 () Bool)

(assert (= bs!1544020 (and d!1952172 d!1951632)))

(assert (=> bs!1544020 (= (dynLambda!25516 lambda!340402 (h!71106 (exprs!6045 (h!71107 zl!343)))) (validRegex!7897 (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(declare-fun m!7053992 () Bool)

(assert (=> bs!1544020 m!7053992))

(assert (=> b!6226596 d!1952172))

(declare-fun b_lambda!236777 () Bool)

(assert (= b_lambda!236773 (or b!6225256 b_lambda!236777)))

(assert (=> d!1952170 d!1951666))

(declare-fun b_lambda!236779 () Bool)

(assert (= b_lambda!236731 (or d!1951634 b_lambda!236779)))

(declare-fun bs!1544021 () Bool)

(declare-fun d!1952174 () Bool)

(assert (= bs!1544021 (and d!1952174 d!1951634)))

(assert (=> bs!1544021 (= (dynLambda!25516 lambda!340403 (h!71106 (exprs!6045 lt!2345517))) (validRegex!7897 (h!71106 (exprs!6045 lt!2345517))))))

(declare-fun m!7053994 () Bool)

(assert (=> bs!1544021 m!7053994))

(assert (=> b!6226406 d!1952174))

(declare-fun b_lambda!236781 () Bool)

(assert (= b_lambda!236741 (or b!6225256 b_lambda!236781)))

(assert (=> d!1951960 d!1951664))

(declare-fun b_lambda!236783 () Bool)

(assert (= b_lambda!236771 (or d!1951622 b_lambda!236783)))

(declare-fun bs!1544022 () Bool)

(declare-fun d!1952176 () Bool)

(assert (= bs!1544022 (and d!1952176 d!1951622)))

(assert (=> bs!1544022 (= (dynLambda!25516 lambda!340392 (h!71106 (unfocusZipperList!1582 zl!343))) (validRegex!7897 (h!71106 (unfocusZipperList!1582 zl!343))))))

(declare-fun m!7053996 () Bool)

(assert (=> bs!1544022 m!7053996))

(assert (=> b!6227107 d!1952176))

(declare-fun b_lambda!236785 () Bool)

(assert (= b_lambda!236733 (or d!1951624 b_lambda!236785)))

(declare-fun bs!1544023 () Bool)

(declare-fun d!1952178 () Bool)

(assert (= bs!1544023 (and d!1952178 d!1951624)))

(assert (=> bs!1544023 (= (dynLambda!25516 lambda!340395 (h!71106 lt!2345617)) (validRegex!7897 (h!71106 lt!2345617)))))

(declare-fun m!7053998 () Bool)

(assert (=> bs!1544023 m!7053998))

(assert (=> b!6226532 d!1952178))

(declare-fun b_lambda!236787 () Bool)

(assert (= b_lambda!236751 (or d!1951628 b_lambda!236787)))

(declare-fun bs!1544024 () Bool)

(declare-fun d!1952180 () Bool)

(assert (= bs!1544024 (and d!1952180 d!1951628)))

(assert (=> bs!1544024 (= (dynLambda!25516 lambda!340399 (h!71106 (exprs!6045 (h!71107 zl!343)))) (validRegex!7897 (h!71106 (exprs!6045 (h!71107 zl!343)))))))

(assert (=> bs!1544024 m!7053992))

(assert (=> b!6226957 d!1952180))

(declare-fun b_lambda!236789 () Bool)

(assert (= b_lambda!236743 (or b!6225256 b_lambda!236789)))

(assert (=> d!1952000 d!1951662))

(declare-fun b_lambda!236791 () Bool)

(assert (= b_lambda!236725 (or d!1951626 b_lambda!236791)))

(declare-fun bs!1544025 () Bool)

(declare-fun d!1952182 () Bool)

(assert (= bs!1544025 (and d!1952182 d!1951626)))

(assert (=> bs!1544025 (= (dynLambda!25516 lambda!340398 (h!71106 (exprs!6045 setElem!42302))) (validRegex!7897 (h!71106 (exprs!6045 setElem!42302))))))

(declare-fun m!7054000 () Bool)

(assert (=> bs!1544025 m!7054000))

(assert (=> b!6226358 d!1952182))

(check-sat (not d!1952014) (not b!6227187) (not d!1951938) (not bs!1544025) (not b!6227173) (not b!6226267) (not d!1952128) (not b!6226492) (not b!6227186) (not b!6226307) (not d!1951878) (not b!6227201) (not b!6226828) (not d!1951780) (not b!6227115) (not setNonEmpty!42320) (not b!6227097) (not b!6226481) (not bm!523118) (not b!6226730) (not b!6226565) (not b!6226190) (not bm!523005) (not b!6226491) (not bm!522974) (not b_lambda!236777) (not d!1951794) (not bs!1544020) (not d!1952064) (not b_lambda!236775) (not d!1952076) (not b!6227203) (not b!6227220) (not bm!522968) (not d!1952166) (not d!1951882) (not b!6226561) (not bm!523096) (not b!6227144) (not b!6227006) (not b!6227226) (not b!6227131) (not b!6227204) (not bm!523152) (not b!6226803) (not b!6227199) (not b!6226435) (not b!6226475) (not bm!523095) (not b!6226335) (not d!1951914) (not d!1951986) (not b!6227169) (not b!6227052) (not b!6227064) (not b!6227037) (not d!1951774) (not b!6227205) (not b!6226336) (not b!6227056) (not b!6227152) (not b!6226841) (not b!6226513) (not b!6226559) (not d!1952108) (not b!6227116) (not b!6227196) (not b!6227123) (not bm!522975) (not b!6227073) (not bm!522970) (not b!6226276) (not d!1952028) (not b!6227213) (not b!6227190) (not b!6226487) (not bm!522995) (not b!6226310) (not bm!523026) (not b!6226313) (not b!6226735) (not d!1951884) (not b!6226758) (not b!6227108) (not b!6227179) (not b!6226359) (not b!6227062) (not bm!523066) (not b!6226610) (not b!6226331) (not b!6226484) (not bm!523166) (not bm!523051) (not d!1952136) (not b!6227181) (not b!6226433) (not bm!523078) (not b!6226837) (not bm!523027) (not b_lambda!236781) (not b!6226811) (not bm!523074) (not b!6227081) (not bm!523040) (not d!1952098) (not bm!523097) (not d!1951892) (not b!6227177) (not b!6227215) (not b!6227137) (not b!6226845) (not b!6227170) (not b!6227158) (not d!1952106) (not setNonEmpty!42318) (not b!6226729) (not b!6226599) (not b!6226842) (not b!6227135) (not b!6226434) (not b!6226602) (not bm!523073) (not b!6226179) (not bm!523125) (not bm!523147) (not b!6227048) (not b!6227114) (not b!6227222) (not bm!523039) (not b_lambda!236785) (not bm!523045) (not d!1952170) (not setNonEmpty!42317) (not b!6227119) (not b!6226533) (not b!6227078) (not bm!523079) (not b!6227156) (not b!6227124) (not b!6226438) (not bs!1544022) (not bm!523077) (not b!6227172) (not b!6227153) (not b!6226759) (not bm!523107) (not b!6227166) (not bm!523162) (not b!6227192) (not b!6226717) (not d!1951790) (not b!6226439) (not bm!523150) (not b!6226733) (not b!6226930) (not d!1951806) (not b!6227162) (not b!6226958) (not b!6227183) (not bm!523153) (not b!6227174) (not b!6227044) (not bm!523123) (not d!1952004) (not b!6227146) (not b!6227128) (not bm!522992) (not b!6226728) (not b!6227142) (not b!6227182) (not bm!523117) (not b!6227227) (not b!6226467) (not d!1951894) (not bm!523145) (not b!6227101) (not b!6226407) (not bm!523159) (not b!6226809) (not b!6226708) (not b!6227041) (not b_lambda!236791) (not b_lambda!236779) (not b!6227208) (not bm!523119) (not b!6226716) (not b!6227212) (not d!1952168) (not b!6227154) (not bm!523006) (not bm!523161) (not b!6226929) (not b!6227230) (not b!6227161) (not b!6227178) (not d!1951918) (not bm!522998) (not d!1952112) (not b!6226812) (not b!6227033) (not d!1951738) (not bm!523167) (not b!6227157) (not bm!522994) (not d!1951742) (not b!6227118) (not b!6227136) (not d!1951966) (not d!1951718) (not b!6227232) (not b!6227030) (not bm!523168) (not b!6227140) (not d!1951828) (not bm!523101) (not b!6226622) (not d!1951994) (not b!6226495) (not b!6226731) (not d!1951876) (not b!6227130) (not b!6227127) (not b!6226543) (not bm!523025) (not b!6227094) (not bm!523052) (not d!1951960) (not b!6227217) (not d!1952002) (not b!6227160) (not b!6227036) (not b!6226763) (not bm!523067) (not bm!523148) (not b!6226743) (not b!6226346) (not bm!523154) (not b!6227049) (not d!1952000) (not b!6227031) (not b!6227200) (not b!6226756) (not b!6227188) (not b!6227219) (not bm!523100) (not b!6226810) (not b!6226343) (not d!1951936) (not b!6227145) (not b!6226583) (not d!1951880) (not b!6227141) (not b!6227223) (not b!6227042) (not d!1952052) (not b!6226590) (not b!6227231) (not b!6226569) (not d!1952134) (not b!6226443) (not b!6227229) (not b!6227221) (not b!6226597) (not b!6226834) (not b!6227216) (not b!6226623) (not d!1952152) (not b!6227120) (not d!1951926) (not b_lambda!236789) (not b!6226429) (not b!6227211) (not b_lambda!236783) (not b!6226440) (not b!6226442) (not d!1951830) (not b!6227122) (not b_lambda!236715) (not d!1951982) (not b!6226339) (not d!1952132) (not d!1952010) (not d!1952096) (not b!6227225) (not b!6227207) (not bm!523106) (not b!6227126) (not bm!523069) (not b!6227193) (not b!6226566) (not setNonEmpty!42311) (not b!6227168) (not b!6227089) (not b!6226640) (not b!6226558) (not b!6227209) (not b!6227132) tp_is_empty!41575 (not b!6226897) (not d!1952048) (not b!6226329) (not b!6227185) (not b!6226709) (not b_lambda!236787) (not b!6227191) (not bm!522991) (not b!6226762) (not b!6227134) (not bm!523160) (not bm!523155) (not bm!522969) (not bm!523068) (not b!6226196) (not b!6226485) (not b!6227176) (not d!1951928) (not b!6227148) (not b!6226328) (not bm!523144) (not d!1952126) (not d!1951740) (not bm!523050) (not d!1951930) (not bm!523151) (not b!6226835) (not b!6227165) (not bm!523129) (not d!1951952) (not b!6227032) (not b_lambda!236717) (not d!1951988) (not bs!1544024) (not b_lambda!236719) (not b!6227149) (not b!6226639) (not b!6226314) (not b!6227197) (not bm!523076) (not d!1952146) (not d!1952148) (not b!6226772) (not bs!1544021) (not b!6227195) (not bs!1544023) (not b!6226444) (not b!6227164) (not b!6226641) (not b!6227065) (not b!6227138) (not b!6227029) (not d!1952018) (not bm!523124) (not bm!523102) (not bm!523094) (not b!6227150) (not bm!523041))
(check-sat)
