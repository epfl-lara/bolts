; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!628110 () Bool)

(assert start!628110)

(declare-fun b!6339315 () Bool)

(assert (=> b!6339315 true))

(assert (=> b!6339315 true))

(declare-fun lambda!348174 () Int)

(declare-fun lambda!348173 () Int)

(assert (=> b!6339315 (not (= lambda!348174 lambda!348173))))

(assert (=> b!6339315 true))

(assert (=> b!6339315 true))

(declare-fun b!6339309 () Bool)

(assert (=> b!6339309 true))

(declare-fun b!6339279 () Bool)

(declare-fun e!3850609 () Bool)

(declare-fun e!3850613 () Bool)

(assert (=> b!6339279 (= e!3850609 e!3850613)))

(declare-fun res!2608782 () Bool)

(assert (=> b!6339279 (=> res!2608782 e!3850613)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32752 0))(
  ( (C!32753 (val!26078 Int)) )
))
(declare-datatypes ((Regex!16241 0))(
  ( (ElementMatch!16241 (c!1152456 C!32752)) (Concat!25086 (regOne!32994 Regex!16241) (regTwo!32994 Regex!16241)) (EmptyExpr!16241) (Star!16241 (reg!16570 Regex!16241)) (EmptyLang!16241) (Union!16241 (regOne!32995 Regex!16241) (regTwo!32995 Regex!16241)) )
))
(declare-datatypes ((List!65022 0))(
  ( (Nil!64898) (Cons!64898 (h!71346 Regex!16241) (t!378608 List!65022)) )
))
(declare-datatypes ((Context!11250 0))(
  ( (Context!11251 (exprs!6125 List!65022)) )
))
(declare-fun lt!2361986 () (InoxSet Context!11250))

(declare-fun lt!2361978 () (InoxSet Context!11250))

(assert (=> b!6339279 (= res!2608782 (not (= lt!2361986 lt!2361978)))))

(declare-fun lambda!348175 () Int)

(declare-datatypes ((List!65023 0))(
  ( (Nil!64899) (Cons!64899 (h!71347 C!32752) (t!378609 List!65023)) )
))
(declare-fun s!2326 () List!65023)

(declare-fun lt!2361973 () (InoxSet Context!11250))

(declare-fun lt!2361970 () Context!11250)

(declare-fun flatMap!1746 ((InoxSet Context!11250) Int) (InoxSet Context!11250))

(declare-fun derivationStepZipperUp!1415 (Context!11250 C!32752) (InoxSet Context!11250))

(assert (=> b!6339279 (= (flatMap!1746 lt!2361973 lambda!348175) (derivationStepZipperUp!1415 lt!2361970 (h!71347 s!2326)))))

(declare-datatypes ((Unit!158295 0))(
  ( (Unit!158296) )
))
(declare-fun lt!2361967 () Unit!158295)

(declare-fun lemmaFlatMapOnSingletonSet!1272 ((InoxSet Context!11250) Context!11250 Int) Unit!158295)

(assert (=> b!6339279 (= lt!2361967 (lemmaFlatMapOnSingletonSet!1272 lt!2361973 lt!2361970 lambda!348175))))

(declare-fun lt!2361979 () (InoxSet Context!11250))

(assert (=> b!6339279 (= lt!2361979 (derivationStepZipperUp!1415 lt!2361970 (h!71347 s!2326)))))

(declare-fun derivationStepZipper!2207 ((InoxSet Context!11250) C!32752) (InoxSet Context!11250))

(assert (=> b!6339279 (= lt!2361986 (derivationStepZipper!2207 lt!2361973 (h!71347 s!2326)))))

(assert (=> b!6339279 (= lt!2361973 (store ((as const (Array Context!11250 Bool)) false) lt!2361970 true))))

(declare-fun lt!2361976 () List!65022)

(assert (=> b!6339279 (= lt!2361970 (Context!11251 lt!2361976))))

(declare-fun r!7292 () Regex!16241)

(declare-fun lt!2361974 () List!65022)

(assert (=> b!6339279 (= lt!2361976 (Cons!64898 (regOne!32994 (regOne!32994 r!7292)) lt!2361974))))

(declare-fun b!6339280 () Bool)

(declare-fun e!3850617 () Bool)

(declare-fun lt!2361968 () (InoxSet Context!11250))

(declare-fun matchZipper!2253 ((InoxSet Context!11250) List!65023) Bool)

(assert (=> b!6339280 (= e!3850617 (matchZipper!2253 lt!2361968 (t!378609 s!2326)))))

(declare-fun b!6339281 () Bool)

(declare-fun e!3850603 () Bool)

(declare-fun tp!1768053 () Bool)

(assert (=> b!6339281 (= e!3850603 tp!1768053)))

(declare-fun res!2608768 () Bool)

(declare-fun e!3850604 () Bool)

(assert (=> start!628110 (=> (not res!2608768) (not e!3850604))))

(declare-fun validRegex!7977 (Regex!16241) Bool)

(assert (=> start!628110 (= res!2608768 (validRegex!7977 r!7292))))

(assert (=> start!628110 e!3850604))

(assert (=> start!628110 e!3850603))

(declare-fun condSetEmpty!43136 () Bool)

(declare-fun z!1189 () (InoxSet Context!11250))

(assert (=> start!628110 (= condSetEmpty!43136 (= z!1189 ((as const (Array Context!11250 Bool)) false)))))

(declare-fun setRes!43136 () Bool)

(assert (=> start!628110 setRes!43136))

(declare-fun e!3850612 () Bool)

(assert (=> start!628110 e!3850612))

(declare-fun e!3850606 () Bool)

(assert (=> start!628110 e!3850606))

(declare-fun b!6339282 () Bool)

(declare-fun tp_is_empty!41735 () Bool)

(assert (=> b!6339282 (= e!3850603 tp_is_empty!41735)))

(declare-fun setNonEmpty!43136 () Bool)

(declare-fun tp!1768060 () Bool)

(declare-fun setElem!43136 () Context!11250)

(declare-fun e!3850610 () Bool)

(declare-fun inv!83849 (Context!11250) Bool)

(assert (=> setNonEmpty!43136 (= setRes!43136 (and tp!1768060 (inv!83849 setElem!43136) e!3850610))))

(declare-fun setRest!43136 () (InoxSet Context!11250))

(assert (=> setNonEmpty!43136 (= z!1189 ((_ map or) (store ((as const (Array Context!11250 Bool)) false) setElem!43136 true) setRest!43136))))

(declare-fun b!6339283 () Bool)

(declare-fun e!3850608 () Bool)

(assert (=> b!6339283 (= e!3850604 (not e!3850608))))

(declare-fun res!2608766 () Bool)

(assert (=> b!6339283 (=> res!2608766 e!3850608)))

(declare-datatypes ((List!65024 0))(
  ( (Nil!64900) (Cons!64900 (h!71348 Context!11250) (t!378610 List!65024)) )
))
(declare-fun zl!343 () List!65024)

(get-info :version)

(assert (=> b!6339283 (= res!2608766 (not ((_ is Cons!64900) zl!343)))))

(declare-fun lt!2361972 () Bool)

(declare-fun matchRSpec!3342 (Regex!16241 List!65023) Bool)

(assert (=> b!6339283 (= lt!2361972 (matchRSpec!3342 r!7292 s!2326))))

(declare-fun matchR!8424 (Regex!16241 List!65023) Bool)

(assert (=> b!6339283 (= lt!2361972 (matchR!8424 r!7292 s!2326))))

(declare-fun lt!2361963 () Unit!158295)

(declare-fun mainMatchTheorem!3342 (Regex!16241 List!65023) Unit!158295)

(assert (=> b!6339283 (= lt!2361963 (mainMatchTheorem!3342 r!7292 s!2326))))

(declare-fun b!6339284 () Bool)

(declare-fun res!2608784 () Bool)

(assert (=> b!6339284 (=> res!2608784 e!3850608)))

(declare-fun generalisedConcat!1838 (List!65022) Regex!16241)

(assert (=> b!6339284 (= res!2608784 (not (= r!7292 (generalisedConcat!1838 (exprs!6125 (h!71348 zl!343))))))))

(declare-fun e!3850611 () Bool)

(declare-fun tp!1768061 () Bool)

(declare-fun b!6339285 () Bool)

(assert (=> b!6339285 (= e!3850612 (and (inv!83849 (h!71348 zl!343)) e!3850611 tp!1768061))))

(declare-fun b!6339286 () Bool)

(declare-fun res!2608769 () Bool)

(assert (=> b!6339286 (=> res!2608769 e!3850608)))

(assert (=> b!6339286 (= res!2608769 (not ((_ is Cons!64898) (exprs!6125 (h!71348 zl!343)))))))

(declare-fun b!6339287 () Bool)

(declare-fun res!2608761 () Bool)

(declare-fun e!3850607 () Bool)

(assert (=> b!6339287 (=> res!2608761 e!3850607)))

(declare-fun e!3850615 () Bool)

(assert (=> b!6339287 (= res!2608761 e!3850615)))

(declare-fun res!2608781 () Bool)

(assert (=> b!6339287 (=> (not res!2608781) (not e!3850615))))

(assert (=> b!6339287 (= res!2608781 ((_ is Concat!25086) (regOne!32994 r!7292)))))

(declare-fun b!6339288 () Bool)

(declare-fun e!3850602 () Bool)

(assert (=> b!6339288 (= e!3850602 e!3850609)))

(declare-fun res!2608783 () Bool)

(assert (=> b!6339288 (=> res!2608783 e!3850609)))

(declare-fun lt!2361982 () Bool)

(assert (=> b!6339288 (= res!2608783 (not (= lt!2361982 (matchZipper!2253 lt!2361978 (t!378609 s!2326)))))))

(declare-fun lt!2361980 () (InoxSet Context!11250))

(assert (=> b!6339288 (= lt!2361982 (matchZipper!2253 lt!2361980 (t!378609 s!2326)))))

(declare-fun b!6339289 () Bool)

(declare-fun e!3850614 () Bool)

(assert (=> b!6339289 (= e!3850614 true)))

(declare-fun lt!2361977 () Int)

(declare-fun size!40340 (List!65023) Int)

(assert (=> b!6339289 (= lt!2361977 (size!40340 s!2326))))

(declare-fun b!6339290 () Bool)

(declare-fun res!2608780 () Bool)

(assert (=> b!6339290 (=> res!2608780 e!3850608)))

(declare-fun isEmpty!36977 (List!65024) Bool)

(assert (=> b!6339290 (= res!2608780 (not (isEmpty!36977 (t!378610 zl!343))))))

(declare-fun b!6339291 () Bool)

(declare-fun res!2608779 () Bool)

(assert (=> b!6339291 (=> res!2608779 e!3850613)))

(assert (=> b!6339291 (= res!2608779 (not (= (exprs!6125 (h!71348 zl!343)) (Cons!64898 (Concat!25086 (regOne!32994 (regOne!32994 r!7292)) (regTwo!32994 (regOne!32994 r!7292))) (t!378608 (exprs!6125 (h!71348 zl!343)))))))))

(declare-fun b!6339292 () Bool)

(declare-fun res!2608771 () Bool)

(assert (=> b!6339292 (=> res!2608771 e!3850614)))

(declare-fun lt!2361985 () Regex!16241)

(declare-fun lt!2361964 () List!65024)

(declare-fun unfocusZipper!1983 (List!65024) Regex!16241)

(assert (=> b!6339292 (= res!2608771 (not (= lt!2361985 (unfocusZipper!1983 lt!2361964))))))

(declare-fun b!6339293 () Bool)

(declare-fun res!2608778 () Bool)

(assert (=> b!6339293 (=> res!2608778 e!3850608)))

(declare-fun generalisedUnion!2085 (List!65022) Regex!16241)

(declare-fun unfocusZipperList!1662 (List!65024) List!65022)

(assert (=> b!6339293 (= res!2608778 (not (= r!7292 (generalisedUnion!2085 (unfocusZipperList!1662 zl!343)))))))

(declare-fun b!6339294 () Bool)

(declare-fun res!2608785 () Bool)

(assert (=> b!6339294 (=> (not res!2608785) (not e!3850604))))

(assert (=> b!6339294 (= res!2608785 (= r!7292 (unfocusZipper!1983 zl!343)))))

(declare-fun b!6339295 () Bool)

(declare-fun res!2608772 () Bool)

(assert (=> b!6339295 (=> res!2608772 e!3850613)))

(declare-fun contextDepthTotal!350 (Context!11250) Int)

(assert (=> b!6339295 (= res!2608772 (>= (contextDepthTotal!350 lt!2361970) (contextDepthTotal!350 (h!71348 zl!343))))))

(declare-fun b!6339296 () Bool)

(declare-fun tp!1768055 () Bool)

(declare-fun tp!1768062 () Bool)

(assert (=> b!6339296 (= e!3850603 (and tp!1768055 tp!1768062))))

(declare-fun setIsEmpty!43136 () Bool)

(assert (=> setIsEmpty!43136 setRes!43136))

(declare-fun b!6339297 () Bool)

(declare-fun res!2608770 () Bool)

(assert (=> b!6339297 (=> res!2608770 e!3850608)))

(assert (=> b!6339297 (= res!2608770 (or ((_ is EmptyExpr!16241) r!7292) ((_ is EmptyLang!16241) r!7292) ((_ is ElementMatch!16241) r!7292) ((_ is Union!16241) r!7292) (not ((_ is Concat!25086) r!7292))))))

(declare-fun b!6339298 () Bool)

(declare-fun nullable!6234 (Regex!16241) Bool)

(assert (=> b!6339298 (= e!3850615 (nullable!6234 (regOne!32994 (regOne!32994 r!7292))))))

(declare-fun b!6339299 () Bool)

(declare-fun res!2608767 () Bool)

(assert (=> b!6339299 (=> res!2608767 e!3850613)))

(assert (=> b!6339299 (= res!2608767 (not (= lt!2361982 (matchZipper!2253 lt!2361986 (t!378609 s!2326)))))))

(declare-fun b!6339300 () Bool)

(declare-fun res!2608765 () Bool)

(assert (=> b!6339300 (=> res!2608765 e!3850614)))

(declare-fun toList!10025 ((InoxSet Context!11250)) List!65024)

(assert (=> b!6339300 (= res!2608765 (not (= (toList!10025 lt!2361973) lt!2361964)))))

(declare-fun b!6339301 () Bool)

(declare-fun res!2608764 () Bool)

(assert (=> b!6339301 (=> res!2608764 e!3850607)))

(assert (=> b!6339301 (= res!2608764 (not ((_ is Concat!25086) (regOne!32994 r!7292))))))

(declare-fun b!6339302 () Bool)

(declare-fun res!2608786 () Bool)

(declare-fun e!3850616 () Bool)

(assert (=> b!6339302 (=> res!2608786 e!3850616)))

(declare-fun zipperDepth!348 (List!65024) Int)

(assert (=> b!6339302 (= res!2608786 (> (zipperDepth!348 lt!2361964) (zipperDepth!348 zl!343)))))

(declare-fun b!6339303 () Bool)

(declare-fun tp!1768057 () Bool)

(assert (=> b!6339303 (= e!3850610 tp!1768057)))

(declare-fun b!6339304 () Bool)

(declare-fun tp!1768054 () Bool)

(assert (=> b!6339304 (= e!3850611 tp!1768054)))

(declare-fun b!6339305 () Bool)

(assert (=> b!6339305 (= e!3850613 e!3850616)))

(declare-fun res!2608775 () Bool)

(assert (=> b!6339305 (=> res!2608775 e!3850616)))

(declare-fun zipperDepthTotal!378 (List!65024) Int)

(assert (=> b!6339305 (= res!2608775 (>= (zipperDepthTotal!378 lt!2361964) (zipperDepthTotal!378 zl!343)))))

(assert (=> b!6339305 (= lt!2361964 (Cons!64900 lt!2361970 Nil!64900))))

(declare-fun b!6339306 () Bool)

(declare-fun tp!1768059 () Bool)

(declare-fun tp!1768056 () Bool)

(assert (=> b!6339306 (= e!3850603 (and tp!1768059 tp!1768056))))

(declare-fun b!6339307 () Bool)

(declare-fun tp!1768058 () Bool)

(assert (=> b!6339307 (= e!3850606 (and tp_is_empty!41735 tp!1768058))))

(declare-fun b!6339308 () Bool)

(declare-fun e!3850605 () Unit!158295)

(declare-fun Unit!158297 () Unit!158295)

(assert (=> b!6339308 (= e!3850605 Unit!158297)))

(declare-fun e!3850618 () Bool)

(assert (=> b!6339309 (= e!3850618 e!3850607)))

(declare-fun res!2608762 () Bool)

(assert (=> b!6339309 (=> res!2608762 e!3850607)))

(assert (=> b!6339309 (= res!2608762 (or (and ((_ is ElementMatch!16241) (regOne!32994 r!7292)) (= (c!1152456 (regOne!32994 r!7292)) (h!71347 s!2326))) ((_ is Union!16241) (regOne!32994 r!7292))))))

(declare-fun lt!2361965 () Unit!158295)

(assert (=> b!6339309 (= lt!2361965 e!3850605)))

(declare-fun c!1152455 () Bool)

(assert (=> b!6339309 (= c!1152455 (nullable!6234 (h!71346 (exprs!6125 (h!71348 zl!343)))))))

(assert (=> b!6339309 (= (flatMap!1746 z!1189 lambda!348175) (derivationStepZipperUp!1415 (h!71348 zl!343) (h!71347 s!2326)))))

(declare-fun lt!2361981 () Unit!158295)

(assert (=> b!6339309 (= lt!2361981 (lemmaFlatMapOnSingletonSet!1272 z!1189 (h!71348 zl!343) lambda!348175))))

(declare-fun lt!2361966 () Context!11250)

(assert (=> b!6339309 (= lt!2361968 (derivationStepZipperUp!1415 lt!2361966 (h!71347 s!2326)))))

(declare-fun derivationStepZipperDown!1489 (Regex!16241 Context!11250 C!32752) (InoxSet Context!11250))

(assert (=> b!6339309 (= lt!2361980 (derivationStepZipperDown!1489 (h!71346 (exprs!6125 (h!71348 zl!343))) lt!2361966 (h!71347 s!2326)))))

(assert (=> b!6339309 (= lt!2361966 (Context!11251 (t!378608 (exprs!6125 (h!71348 zl!343)))))))

(declare-fun lt!2361969 () (InoxSet Context!11250))

(assert (=> b!6339309 (= lt!2361969 (derivationStepZipperUp!1415 (Context!11251 (Cons!64898 (h!71346 (exprs!6125 (h!71348 zl!343))) (t!378608 (exprs!6125 (h!71348 zl!343))))) (h!71347 s!2326)))))

(declare-fun b!6339310 () Bool)

(assert (=> b!6339310 (= e!3850616 e!3850614)))

(declare-fun res!2608773 () Bool)

(assert (=> b!6339310 (=> res!2608773 e!3850614)))

(assert (=> b!6339310 (= res!2608773 (not (validRegex!7977 lt!2361985)))))

(assert (=> b!6339310 (= lt!2361985 (generalisedConcat!1838 lt!2361976))))

(declare-fun b!6339311 () Bool)

(declare-fun res!2608774 () Bool)

(assert (=> b!6339311 (=> (not res!2608774) (not e!3850604))))

(assert (=> b!6339311 (= res!2608774 (= (toList!10025 z!1189) zl!343))))

(declare-fun b!6339312 () Bool)

(declare-fun Unit!158298 () Unit!158295)

(assert (=> b!6339312 (= e!3850605 Unit!158298)))

(declare-fun lt!2361983 () Unit!158295)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1072 ((InoxSet Context!11250) (InoxSet Context!11250) List!65023) Unit!158295)

(assert (=> b!6339312 (= lt!2361983 (lemmaZipperConcatMatchesSameAsBothZippers!1072 lt!2361980 lt!2361968 (t!378609 s!2326)))))

(declare-fun res!2608776 () Bool)

(assert (=> b!6339312 (= res!2608776 (matchZipper!2253 lt!2361980 (t!378609 s!2326)))))

(assert (=> b!6339312 (=> res!2608776 e!3850617)))

(assert (=> b!6339312 (= (matchZipper!2253 ((_ map or) lt!2361980 lt!2361968) (t!378609 s!2326)) e!3850617)))

(declare-fun b!6339313 () Bool)

(declare-fun res!2608763 () Bool)

(assert (=> b!6339313 (=> res!2608763 e!3850618)))

(declare-fun isEmpty!36978 (List!65022) Bool)

(assert (=> b!6339313 (= res!2608763 (isEmpty!36978 (t!378608 (exprs!6125 (h!71348 zl!343)))))))

(declare-fun b!6339314 () Bool)

(assert (=> b!6339314 (= e!3850607 e!3850602)))

(declare-fun res!2608777 () Bool)

(assert (=> b!6339314 (=> res!2608777 e!3850602)))

(assert (=> b!6339314 (= res!2608777 (not (= lt!2361980 lt!2361978)))))

(assert (=> b!6339314 (= lt!2361978 (derivationStepZipperDown!1489 (regOne!32994 (regOne!32994 r!7292)) (Context!11251 lt!2361974) (h!71347 s!2326)))))

(assert (=> b!6339314 (= lt!2361974 (Cons!64898 (regTwo!32994 (regOne!32994 r!7292)) (t!378608 (exprs!6125 (h!71348 zl!343)))))))

(assert (=> b!6339315 (= e!3850608 e!3850618)))

(declare-fun res!2608760 () Bool)

(assert (=> b!6339315 (=> res!2608760 e!3850618)))

(declare-fun lt!2361975 () Bool)

(assert (=> b!6339315 (= res!2608760 (or (not (= lt!2361972 lt!2361975)) ((_ is Nil!64899) s!2326)))))

(declare-fun Exists!3311 (Int) Bool)

(assert (=> b!6339315 (= (Exists!3311 lambda!348173) (Exists!3311 lambda!348174))))

(declare-fun lt!2361984 () Unit!158295)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1848 (Regex!16241 Regex!16241 List!65023) Unit!158295)

(assert (=> b!6339315 (= lt!2361984 (lemmaExistCutMatchRandMatchRSpecEquivalent!1848 (regOne!32994 r!7292) (regTwo!32994 r!7292) s!2326))))

(assert (=> b!6339315 (= lt!2361975 (Exists!3311 lambda!348173))))

(declare-datatypes ((tuple2!66440 0))(
  ( (tuple2!66441 (_1!36523 List!65023) (_2!36523 List!65023)) )
))
(declare-datatypes ((Option!16132 0))(
  ( (None!16131) (Some!16131 (v!52300 tuple2!66440)) )
))
(declare-fun isDefined!12835 (Option!16132) Bool)

(declare-fun findConcatSeparation!2546 (Regex!16241 Regex!16241 List!65023 List!65023 List!65023) Option!16132)

(assert (=> b!6339315 (= lt!2361975 (isDefined!12835 (findConcatSeparation!2546 (regOne!32994 r!7292) (regTwo!32994 r!7292) Nil!64899 s!2326 s!2326)))))

(declare-fun lt!2361971 () Unit!158295)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2310 (Regex!16241 Regex!16241 List!65023) Unit!158295)

(assert (=> b!6339315 (= lt!2361971 (lemmaFindConcatSeparationEquivalentToExists!2310 (regOne!32994 r!7292) (regTwo!32994 r!7292) s!2326))))

(assert (= (and start!628110 res!2608768) b!6339311))

(assert (= (and b!6339311 res!2608774) b!6339294))

(assert (= (and b!6339294 res!2608785) b!6339283))

(assert (= (and b!6339283 (not res!2608766)) b!6339290))

(assert (= (and b!6339290 (not res!2608780)) b!6339284))

(assert (= (and b!6339284 (not res!2608784)) b!6339286))

(assert (= (and b!6339286 (not res!2608769)) b!6339293))

(assert (= (and b!6339293 (not res!2608778)) b!6339297))

(assert (= (and b!6339297 (not res!2608770)) b!6339315))

(assert (= (and b!6339315 (not res!2608760)) b!6339313))

(assert (= (and b!6339313 (not res!2608763)) b!6339309))

(assert (= (and b!6339309 c!1152455) b!6339312))

(assert (= (and b!6339309 (not c!1152455)) b!6339308))

(assert (= (and b!6339312 (not res!2608776)) b!6339280))

(assert (= (and b!6339309 (not res!2608762)) b!6339287))

(assert (= (and b!6339287 res!2608781) b!6339298))

(assert (= (and b!6339287 (not res!2608761)) b!6339301))

(assert (= (and b!6339301 (not res!2608764)) b!6339314))

(assert (= (and b!6339314 (not res!2608777)) b!6339288))

(assert (= (and b!6339288 (not res!2608783)) b!6339279))

(assert (= (and b!6339279 (not res!2608782)) b!6339299))

(assert (= (and b!6339299 (not res!2608767)) b!6339291))

(assert (= (and b!6339291 (not res!2608779)) b!6339295))

(assert (= (and b!6339295 (not res!2608772)) b!6339305))

(assert (= (and b!6339305 (not res!2608775)) b!6339302))

(assert (= (and b!6339302 (not res!2608786)) b!6339310))

(assert (= (and b!6339310 (not res!2608773)) b!6339300))

(assert (= (and b!6339300 (not res!2608765)) b!6339292))

(assert (= (and b!6339292 (not res!2608771)) b!6339289))

(assert (= (and start!628110 ((_ is ElementMatch!16241) r!7292)) b!6339282))

(assert (= (and start!628110 ((_ is Concat!25086) r!7292)) b!6339296))

(assert (= (and start!628110 ((_ is Star!16241) r!7292)) b!6339281))

(assert (= (and start!628110 ((_ is Union!16241) r!7292)) b!6339306))

(assert (= (and start!628110 condSetEmpty!43136) setIsEmpty!43136))

(assert (= (and start!628110 (not condSetEmpty!43136)) setNonEmpty!43136))

(assert (= setNonEmpty!43136 b!6339303))

(assert (= b!6339285 b!6339304))

(assert (= (and start!628110 ((_ is Cons!64900) zl!343)) b!6339285))

(assert (= (and start!628110 ((_ is Cons!64899) s!2326)) b!6339307))

(declare-fun m!7148172 () Bool)

(assert (=> b!6339292 m!7148172))

(declare-fun m!7148174 () Bool)

(assert (=> start!628110 m!7148174))

(declare-fun m!7148176 () Bool)

(assert (=> b!6339299 m!7148176))

(declare-fun m!7148178 () Bool)

(assert (=> b!6339311 m!7148178))

(declare-fun m!7148180 () Bool)

(assert (=> b!6339305 m!7148180))

(declare-fun m!7148182 () Bool)

(assert (=> b!6339305 m!7148182))

(declare-fun m!7148184 () Bool)

(assert (=> b!6339284 m!7148184))

(declare-fun m!7148186 () Bool)

(assert (=> b!6339314 m!7148186))

(declare-fun m!7148188 () Bool)

(assert (=> b!6339293 m!7148188))

(assert (=> b!6339293 m!7148188))

(declare-fun m!7148190 () Bool)

(assert (=> b!6339293 m!7148190))

(declare-fun m!7148192 () Bool)

(assert (=> b!6339289 m!7148192))

(declare-fun m!7148194 () Bool)

(assert (=> b!6339288 m!7148194))

(declare-fun m!7148196 () Bool)

(assert (=> b!6339288 m!7148196))

(declare-fun m!7148198 () Bool)

(assert (=> b!6339279 m!7148198))

(declare-fun m!7148200 () Bool)

(assert (=> b!6339279 m!7148200))

(declare-fun m!7148202 () Bool)

(assert (=> b!6339279 m!7148202))

(declare-fun m!7148204 () Bool)

(assert (=> b!6339279 m!7148204))

(declare-fun m!7148206 () Bool)

(assert (=> b!6339279 m!7148206))

(declare-fun m!7148208 () Bool)

(assert (=> setNonEmpty!43136 m!7148208))

(declare-fun m!7148210 () Bool)

(assert (=> b!6339295 m!7148210))

(declare-fun m!7148212 () Bool)

(assert (=> b!6339295 m!7148212))

(declare-fun m!7148214 () Bool)

(assert (=> b!6339315 m!7148214))

(declare-fun m!7148216 () Bool)

(assert (=> b!6339315 m!7148216))

(declare-fun m!7148218 () Bool)

(assert (=> b!6339315 m!7148218))

(declare-fun m!7148220 () Bool)

(assert (=> b!6339315 m!7148220))

(declare-fun m!7148222 () Bool)

(assert (=> b!6339315 m!7148222))

(assert (=> b!6339315 m!7148214))

(assert (=> b!6339315 m!7148220))

(declare-fun m!7148224 () Bool)

(assert (=> b!6339315 m!7148224))

(declare-fun m!7148226 () Bool)

(assert (=> b!6339309 m!7148226))

(declare-fun m!7148228 () Bool)

(assert (=> b!6339309 m!7148228))

(declare-fun m!7148230 () Bool)

(assert (=> b!6339309 m!7148230))

(declare-fun m!7148232 () Bool)

(assert (=> b!6339309 m!7148232))

(declare-fun m!7148234 () Bool)

(assert (=> b!6339309 m!7148234))

(declare-fun m!7148236 () Bool)

(assert (=> b!6339309 m!7148236))

(declare-fun m!7148238 () Bool)

(assert (=> b!6339309 m!7148238))

(declare-fun m!7148240 () Bool)

(assert (=> b!6339300 m!7148240))

(declare-fun m!7148242 () Bool)

(assert (=> b!6339283 m!7148242))

(declare-fun m!7148244 () Bool)

(assert (=> b!6339283 m!7148244))

(declare-fun m!7148246 () Bool)

(assert (=> b!6339283 m!7148246))

(declare-fun m!7148248 () Bool)

(assert (=> b!6339290 m!7148248))

(declare-fun m!7148250 () Bool)

(assert (=> b!6339298 m!7148250))

(declare-fun m!7148252 () Bool)

(assert (=> b!6339310 m!7148252))

(declare-fun m!7148254 () Bool)

(assert (=> b!6339310 m!7148254))

(declare-fun m!7148256 () Bool)

(assert (=> b!6339312 m!7148256))

(assert (=> b!6339312 m!7148196))

(declare-fun m!7148258 () Bool)

(assert (=> b!6339312 m!7148258))

(declare-fun m!7148260 () Bool)

(assert (=> b!6339313 m!7148260))

(declare-fun m!7148262 () Bool)

(assert (=> b!6339302 m!7148262))

(declare-fun m!7148264 () Bool)

(assert (=> b!6339302 m!7148264))

(declare-fun m!7148266 () Bool)

(assert (=> b!6339285 m!7148266))

(declare-fun m!7148268 () Bool)

(assert (=> b!6339280 m!7148268))

(declare-fun m!7148270 () Bool)

(assert (=> b!6339294 m!7148270))

(check-sat (not b!6339305) (not b!6339283) (not b!6339299) (not b!6339290) (not b!6339310) (not b!6339281) (not b!6339309) (not b!6339296) (not b!6339294) (not b!6339293) (not b!6339314) (not b!6339306) (not b!6339312) (not b!6339298) (not b!6339288) (not b!6339289) (not b!6339311) tp_is_empty!41735 (not b!6339285) (not b!6339292) (not b!6339280) (not b!6339300) (not b!6339313) (not b!6339295) (not setNonEmpty!43136) (not b!6339303) (not b!6339307) (not b!6339279) (not b!6339284) (not start!628110) (not b!6339304) (not b!6339315) (not b!6339302))
(check-sat)
