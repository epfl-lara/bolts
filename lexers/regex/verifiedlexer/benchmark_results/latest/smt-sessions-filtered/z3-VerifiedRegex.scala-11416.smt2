; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!612746 () Bool)

(assert start!612746)

(declare-fun b!6134456 () Bool)

(assert (=> b!6134456 true))

(assert (=> b!6134456 true))

(declare-fun lambda!334250 () Int)

(declare-fun lambda!334249 () Int)

(assert (=> b!6134456 (not (= lambda!334250 lambda!334249))))

(assert (=> b!6134456 true))

(assert (=> b!6134456 true))

(declare-fun b!6134439 () Bool)

(assert (=> b!6134439 true))

(declare-fun b!6134435 () Bool)

(declare-fun e!3738851 () Bool)

(declare-fun e!3738846 () Bool)

(assert (=> b!6134435 (= e!3738851 e!3738846)))

(declare-fun res!2542226 () Bool)

(assert (=> b!6134435 (=> res!2542226 e!3738846)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32428 0))(
  ( (C!32429 (val!25916 Int)) )
))
(declare-datatypes ((Regex!16079 0))(
  ( (ElementMatch!16079 (c!1103007 C!32428)) (Concat!24924 (regOne!32670 Regex!16079) (regTwo!32670 Regex!16079)) (EmptyExpr!16079) (Star!16079 (reg!16408 Regex!16079)) (EmptyLang!16079) (Union!16079 (regOne!32671 Regex!16079) (regTwo!32671 Regex!16079)) )
))
(declare-datatypes ((List!64536 0))(
  ( (Nil!64412) (Cons!64412 (h!70860 Regex!16079) (t!378009 List!64536)) )
))
(declare-datatypes ((Context!10926 0))(
  ( (Context!10927 (exprs!5963 List!64536)) )
))
(declare-fun lt!2332344 () (InoxSet Context!10926))

(declare-fun lt!2332348 () (InoxSet Context!10926))

(assert (=> b!6134435 (= res!2542226 (not (= lt!2332344 lt!2332348)))))

(declare-fun lt!2332343 () (InoxSet Context!10926))

(declare-fun lt!2332354 () (InoxSet Context!10926))

(assert (=> b!6134435 (= lt!2332348 ((_ map or) lt!2332343 lt!2332354))))

(declare-fun r!7292 () Regex!16079)

(declare-datatypes ((List!64537 0))(
  ( (Nil!64413) (Cons!64413 (h!70861 C!32428) (t!378010 List!64537)) )
))
(declare-fun s!2326 () List!64537)

(declare-fun lt!2332346 () Context!10926)

(declare-fun derivationStepZipperDown!1327 (Regex!16079 Context!10926 C!32428) (InoxSet Context!10926))

(assert (=> b!6134435 (= lt!2332354 (derivationStepZipperDown!1327 (regTwo!32671 (regOne!32670 r!7292)) lt!2332346 (h!70861 s!2326)))))

(assert (=> b!6134435 (= lt!2332343 (derivationStepZipperDown!1327 (regOne!32671 (regOne!32670 r!7292)) lt!2332346 (h!70861 s!2326)))))

(declare-fun b!6134436 () Bool)

(declare-fun res!2542223 () Bool)

(declare-fun e!3738853 () Bool)

(assert (=> b!6134436 (=> (not res!2542223) (not e!3738853))))

(declare-fun z!1189 () (InoxSet Context!10926))

(declare-datatypes ((List!64538 0))(
  ( (Nil!64414) (Cons!64414 (h!70862 Context!10926) (t!378011 List!64538)) )
))
(declare-fun zl!343 () List!64538)

(declare-fun toList!9863 ((InoxSet Context!10926)) List!64538)

(assert (=> b!6134436 (= res!2542223 (= (toList!9863 z!1189) zl!343))))

(declare-fun res!2542230 () Bool)

(assert (=> start!612746 (=> (not res!2542230) (not e!3738853))))

(declare-fun validRegex!7815 (Regex!16079) Bool)

(assert (=> start!612746 (= res!2542230 (validRegex!7815 r!7292))))

(assert (=> start!612746 e!3738853))

(declare-fun e!3738845 () Bool)

(assert (=> start!612746 e!3738845))

(declare-fun condSetEmpty!41476 () Bool)

(assert (=> start!612746 (= condSetEmpty!41476 (= z!1189 ((as const (Array Context!10926 Bool)) false)))))

(declare-fun setRes!41476 () Bool)

(assert (=> start!612746 setRes!41476))

(declare-fun e!3738843 () Bool)

(assert (=> start!612746 e!3738843))

(declare-fun e!3738854 () Bool)

(assert (=> start!612746 e!3738854))

(declare-fun b!6134437 () Bool)

(declare-fun res!2542219 () Bool)

(declare-fun e!3738849 () Bool)

(assert (=> b!6134437 (=> res!2542219 e!3738849)))

(get-info :version)

(assert (=> b!6134437 (= res!2542219 (not ((_ is Cons!64412) (exprs!5963 (h!70862 zl!343)))))))

(declare-fun tp!1714238 () Bool)

(declare-fun setElem!41476 () Context!10926)

(declare-fun setNonEmpty!41476 () Bool)

(declare-fun e!3738848 () Bool)

(declare-fun inv!83444 (Context!10926) Bool)

(assert (=> setNonEmpty!41476 (= setRes!41476 (and tp!1714238 (inv!83444 setElem!41476) e!3738848))))

(declare-fun setRest!41476 () (InoxSet Context!10926))

(assert (=> setNonEmpty!41476 (= z!1189 ((_ map or) (store ((as const (Array Context!10926 Bool)) false) setElem!41476 true) setRest!41476))))

(declare-fun b!6134438 () Bool)

(declare-fun res!2542221 () Bool)

(assert (=> b!6134438 (=> res!2542221 e!3738849)))

(declare-fun isEmpty!36356 (List!64538) Bool)

(assert (=> b!6134438 (= res!2542221 (not (isEmpty!36356 (t!378011 zl!343))))))

(declare-fun e!3738852 () Bool)

(assert (=> b!6134439 (= e!3738852 e!3738851)))

(declare-fun res!2542229 () Bool)

(assert (=> b!6134439 (=> res!2542229 e!3738851)))

(assert (=> b!6134439 (= res!2542229 (or (and ((_ is ElementMatch!16079) (regOne!32670 r!7292)) (= (c!1103007 (regOne!32670 r!7292)) (h!70861 s!2326))) (not ((_ is Union!16079) (regOne!32670 r!7292)))))))

(declare-datatypes ((Unit!157471 0))(
  ( (Unit!157472) )
))
(declare-fun lt!2332352 () Unit!157471)

(declare-fun e!3738844 () Unit!157471)

(assert (=> b!6134439 (= lt!2332352 e!3738844)))

(declare-fun c!1103006 () Bool)

(declare-fun nullable!6072 (Regex!16079) Bool)

(assert (=> b!6134439 (= c!1103006 (nullable!6072 (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun lambda!334251 () Int)

(declare-fun flatMap!1584 ((InoxSet Context!10926) Int) (InoxSet Context!10926))

(declare-fun derivationStepZipperUp!1253 (Context!10926 C!32428) (InoxSet Context!10926))

(assert (=> b!6134439 (= (flatMap!1584 z!1189 lambda!334251) (derivationStepZipperUp!1253 (h!70862 zl!343) (h!70861 s!2326)))))

(declare-fun lt!2332359 () Unit!157471)

(declare-fun lemmaFlatMapOnSingletonSet!1110 ((InoxSet Context!10926) Context!10926 Int) Unit!157471)

(assert (=> b!6134439 (= lt!2332359 (lemmaFlatMapOnSingletonSet!1110 z!1189 (h!70862 zl!343) lambda!334251))))

(declare-fun lt!2332357 () (InoxSet Context!10926))

(assert (=> b!6134439 (= lt!2332357 (derivationStepZipperUp!1253 lt!2332346 (h!70861 s!2326)))))

(assert (=> b!6134439 (= lt!2332344 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (h!70862 zl!343))) lt!2332346 (h!70861 s!2326)))))

(assert (=> b!6134439 (= lt!2332346 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun lt!2332350 () (InoxSet Context!10926))

(assert (=> b!6134439 (= lt!2332350 (derivationStepZipperUp!1253 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))) (h!70861 s!2326)))))

(declare-fun b!6134440 () Bool)

(declare-fun e!3738855 () Bool)

(assert (=> b!6134440 (= e!3738846 e!3738855)))

(declare-fun res!2542232 () Bool)

(assert (=> b!6134440 (=> res!2542232 e!3738855)))

(declare-fun e!3738850 () Bool)

(assert (=> b!6134440 (= res!2542232 e!3738850)))

(declare-fun res!2542231 () Bool)

(assert (=> b!6134440 (=> (not res!2542231) (not e!3738850))))

(declare-fun lt!2332342 () Bool)

(declare-fun matchZipper!2091 ((InoxSet Context!10926) List!64537) Bool)

(assert (=> b!6134440 (= res!2542231 (not (= (matchZipper!2091 lt!2332344 (t!378010 s!2326)) lt!2332342)))))

(declare-fun e!3738847 () Bool)

(assert (=> b!6134440 (= (matchZipper!2091 lt!2332348 (t!378010 s!2326)) e!3738847)))

(declare-fun res!2542220 () Bool)

(assert (=> b!6134440 (=> res!2542220 e!3738847)))

(assert (=> b!6134440 (= res!2542220 lt!2332342)))

(assert (=> b!6134440 (= lt!2332342 (matchZipper!2091 lt!2332343 (t!378010 s!2326)))))

(declare-fun lt!2332345 () Unit!157471)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!910 ((InoxSet Context!10926) (InoxSet Context!10926) List!64537) Unit!157471)

(assert (=> b!6134440 (= lt!2332345 (lemmaZipperConcatMatchesSameAsBothZippers!910 lt!2332343 lt!2332354 (t!378010 s!2326)))))

(declare-fun tp!1714234 () Bool)

(declare-fun b!6134441 () Bool)

(declare-fun e!3738841 () Bool)

(assert (=> b!6134441 (= e!3738843 (and (inv!83444 (h!70862 zl!343)) e!3738841 tp!1714234))))

(declare-fun b!6134442 () Bool)

(assert (=> b!6134442 (= e!3738853 (not e!3738849))))

(declare-fun res!2542224 () Bool)

(assert (=> b!6134442 (=> res!2542224 e!3738849)))

(assert (=> b!6134442 (= res!2542224 (not ((_ is Cons!64414) zl!343)))))

(declare-fun lt!2332351 () Bool)

(declare-fun matchRSpec!3180 (Regex!16079 List!64537) Bool)

(assert (=> b!6134442 (= lt!2332351 (matchRSpec!3180 r!7292 s!2326))))

(declare-fun matchR!8262 (Regex!16079 List!64537) Bool)

(assert (=> b!6134442 (= lt!2332351 (matchR!8262 r!7292 s!2326))))

(declare-fun lt!2332347 () Unit!157471)

(declare-fun mainMatchTheorem!3180 (Regex!16079 List!64537) Unit!157471)

(assert (=> b!6134442 (= lt!2332347 (mainMatchTheorem!3180 r!7292 s!2326))))

(declare-fun setIsEmpty!41476 () Bool)

(assert (=> setIsEmpty!41476 setRes!41476))

(declare-fun b!6134443 () Bool)

(declare-fun Unit!157473 () Unit!157471)

(assert (=> b!6134443 (= e!3738844 Unit!157473)))

(declare-fun lt!2332360 () Unit!157471)

(assert (=> b!6134443 (= lt!2332360 (lemmaZipperConcatMatchesSameAsBothZippers!910 lt!2332344 lt!2332357 (t!378010 s!2326)))))

(declare-fun res!2542235 () Bool)

(assert (=> b!6134443 (= res!2542235 (matchZipper!2091 lt!2332344 (t!378010 s!2326)))))

(declare-fun e!3738842 () Bool)

(assert (=> b!6134443 (=> res!2542235 e!3738842)))

(assert (=> b!6134443 (= (matchZipper!2091 ((_ map or) lt!2332344 lt!2332357) (t!378010 s!2326)) e!3738842)))

(declare-fun b!6134444 () Bool)

(declare-fun res!2542228 () Bool)

(assert (=> b!6134444 (=> res!2542228 e!3738849)))

(declare-fun generalisedUnion!1923 (List!64536) Regex!16079)

(declare-fun unfocusZipperList!1500 (List!64538) List!64536)

(assert (=> b!6134444 (= res!2542228 (not (= r!7292 (generalisedUnion!1923 (unfocusZipperList!1500 zl!343)))))))

(declare-fun b!6134445 () Bool)

(declare-fun tp!1714237 () Bool)

(assert (=> b!6134445 (= e!3738848 tp!1714237)))

(declare-fun b!6134446 () Bool)

(declare-fun tp_is_empty!41411 () Bool)

(declare-fun tp!1714233 () Bool)

(assert (=> b!6134446 (= e!3738854 (and tp_is_empty!41411 tp!1714233))))

(declare-fun b!6134447 () Bool)

(declare-fun tp!1714241 () Bool)

(assert (=> b!6134447 (= e!3738845 tp!1714241)))

(declare-fun b!6134448 () Bool)

(declare-fun tp!1714235 () Bool)

(declare-fun tp!1714242 () Bool)

(assert (=> b!6134448 (= e!3738845 (and tp!1714235 tp!1714242))))

(declare-fun b!6134449 () Bool)

(declare-fun res!2542225 () Bool)

(assert (=> b!6134449 (=> res!2542225 e!3738852)))

(declare-fun isEmpty!36357 (List!64536) Bool)

(assert (=> b!6134449 (= res!2542225 (isEmpty!36357 (t!378009 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6134450 () Bool)

(declare-fun res!2542227 () Bool)

(assert (=> b!6134450 (=> res!2542227 e!3738849)))

(assert (=> b!6134450 (= res!2542227 (or ((_ is EmptyExpr!16079) r!7292) ((_ is EmptyLang!16079) r!7292) ((_ is ElementMatch!16079) r!7292) ((_ is Union!16079) r!7292) (not ((_ is Concat!24924) r!7292))))))

(declare-fun b!6134451 () Bool)

(assert (=> b!6134451 (= e!3738845 tp_is_empty!41411)))

(declare-fun b!6134452 () Bool)

(assert (=> b!6134452 (= e!3738850 (not (matchZipper!2091 lt!2332354 (t!378010 s!2326))))))

(declare-fun b!6134453 () Bool)

(declare-fun res!2542222 () Bool)

(assert (=> b!6134453 (=> (not res!2542222) (not e!3738853))))

(declare-fun unfocusZipper!1821 (List!64538) Regex!16079)

(assert (=> b!6134453 (= res!2542222 (= r!7292 (unfocusZipper!1821 zl!343)))))

(declare-fun b!6134454 () Bool)

(declare-fun tp!1714236 () Bool)

(assert (=> b!6134454 (= e!3738841 tp!1714236)))

(declare-fun b!6134455 () Bool)

(assert (=> b!6134455 (= e!3738847 (matchZipper!2091 lt!2332354 (t!378010 s!2326)))))

(assert (=> b!6134456 (= e!3738849 e!3738852)))

(declare-fun res!2542234 () Bool)

(assert (=> b!6134456 (=> res!2542234 e!3738852)))

(declare-fun lt!2332358 () Bool)

(assert (=> b!6134456 (= res!2542234 (or (not (= lt!2332351 lt!2332358)) ((_ is Nil!64413) s!2326)))))

(declare-fun Exists!3149 (Int) Bool)

(assert (=> b!6134456 (= (Exists!3149 lambda!334249) (Exists!3149 lambda!334250))))

(declare-fun lt!2332355 () Unit!157471)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1686 (Regex!16079 Regex!16079 List!64537) Unit!157471)

(assert (=> b!6134456 (= lt!2332355 (lemmaExistCutMatchRandMatchRSpecEquivalent!1686 (regOne!32670 r!7292) (regTwo!32670 r!7292) s!2326))))

(assert (=> b!6134456 (= lt!2332358 (Exists!3149 lambda!334249))))

(declare-datatypes ((tuple2!66116 0))(
  ( (tuple2!66117 (_1!36361 List!64537) (_2!36361 List!64537)) )
))
(declare-datatypes ((Option!15970 0))(
  ( (None!15969) (Some!15969 (v!52108 tuple2!66116)) )
))
(declare-fun isDefined!12673 (Option!15970) Bool)

(declare-fun findConcatSeparation!2384 (Regex!16079 Regex!16079 List!64537 List!64537 List!64537) Option!15970)

(assert (=> b!6134456 (= lt!2332358 (isDefined!12673 (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) Nil!64413 s!2326 s!2326)))))

(declare-fun lt!2332356 () Unit!157471)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2148 (Regex!16079 Regex!16079 List!64537) Unit!157471)

(assert (=> b!6134456 (= lt!2332356 (lemmaFindConcatSeparationEquivalentToExists!2148 (regOne!32670 r!7292) (regTwo!32670 r!7292) s!2326))))

(declare-fun b!6134457 () Bool)

(declare-fun tp!1714239 () Bool)

(declare-fun tp!1714240 () Bool)

(assert (=> b!6134457 (= e!3738845 (and tp!1714239 tp!1714240))))

(declare-fun b!6134458 () Bool)

(assert (=> b!6134458 (= e!3738842 (matchZipper!2091 lt!2332357 (t!378010 s!2326)))))

(declare-fun b!6134459 () Bool)

(declare-fun Unit!157474 () Unit!157471)

(assert (=> b!6134459 (= e!3738844 Unit!157474)))

(declare-fun b!6134460 () Bool)

(declare-fun lt!2332353 () Context!10926)

(assert (=> b!6134460 (= e!3738855 (inv!83444 lt!2332353))))

(declare-fun lt!2332349 () (InoxSet Context!10926))

(assert (=> b!6134460 (= lt!2332349 (derivationStepZipperUp!1253 lt!2332353 (h!70861 s!2326)))))

(assert (=> b!6134460 (= lt!2332353 (Context!10927 (Cons!64412 (regOne!32671 (regOne!32670 r!7292)) (t!378009 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6134461 () Bool)

(declare-fun res!2542233 () Bool)

(assert (=> b!6134461 (=> res!2542233 e!3738849)))

(declare-fun generalisedConcat!1676 (List!64536) Regex!16079)

(assert (=> b!6134461 (= res!2542233 (not (= r!7292 (generalisedConcat!1676 (exprs!5963 (h!70862 zl!343))))))))

(assert (= (and start!612746 res!2542230) b!6134436))

(assert (= (and b!6134436 res!2542223) b!6134453))

(assert (= (and b!6134453 res!2542222) b!6134442))

(assert (= (and b!6134442 (not res!2542224)) b!6134438))

(assert (= (and b!6134438 (not res!2542221)) b!6134461))

(assert (= (and b!6134461 (not res!2542233)) b!6134437))

(assert (= (and b!6134437 (not res!2542219)) b!6134444))

(assert (= (and b!6134444 (not res!2542228)) b!6134450))

(assert (= (and b!6134450 (not res!2542227)) b!6134456))

(assert (= (and b!6134456 (not res!2542234)) b!6134449))

(assert (= (and b!6134449 (not res!2542225)) b!6134439))

(assert (= (and b!6134439 c!1103006) b!6134443))

(assert (= (and b!6134439 (not c!1103006)) b!6134459))

(assert (= (and b!6134443 (not res!2542235)) b!6134458))

(assert (= (and b!6134439 (not res!2542229)) b!6134435))

(assert (= (and b!6134435 (not res!2542226)) b!6134440))

(assert (= (and b!6134440 (not res!2542220)) b!6134455))

(assert (= (and b!6134440 res!2542231) b!6134452))

(assert (= (and b!6134440 (not res!2542232)) b!6134460))

(assert (= (and start!612746 ((_ is ElementMatch!16079) r!7292)) b!6134451))

(assert (= (and start!612746 ((_ is Concat!24924) r!7292)) b!6134448))

(assert (= (and start!612746 ((_ is Star!16079) r!7292)) b!6134447))

(assert (= (and start!612746 ((_ is Union!16079) r!7292)) b!6134457))

(assert (= (and start!612746 condSetEmpty!41476) setIsEmpty!41476))

(assert (= (and start!612746 (not condSetEmpty!41476)) setNonEmpty!41476))

(assert (= setNonEmpty!41476 b!6134445))

(assert (= b!6134441 b!6134454))

(assert (= (and start!612746 ((_ is Cons!64414) zl!343)) b!6134441))

(assert (= (and start!612746 ((_ is Cons!64413) s!2326)) b!6134446))

(declare-fun m!6977168 () Bool)

(assert (=> start!612746 m!6977168))

(declare-fun m!6977170 () Bool)

(assert (=> b!6134435 m!6977170))

(declare-fun m!6977172 () Bool)

(assert (=> b!6134435 m!6977172))

(declare-fun m!6977174 () Bool)

(assert (=> b!6134456 m!6977174))

(declare-fun m!6977176 () Bool)

(assert (=> b!6134456 m!6977176))

(declare-fun m!6977178 () Bool)

(assert (=> b!6134456 m!6977178))

(assert (=> b!6134456 m!6977174))

(declare-fun m!6977180 () Bool)

(assert (=> b!6134456 m!6977180))

(declare-fun m!6977182 () Bool)

(assert (=> b!6134456 m!6977182))

(assert (=> b!6134456 m!6977176))

(declare-fun m!6977184 () Bool)

(assert (=> b!6134456 m!6977184))

(declare-fun m!6977186 () Bool)

(assert (=> setNonEmpty!41476 m!6977186))

(declare-fun m!6977188 () Bool)

(assert (=> b!6134461 m!6977188))

(declare-fun m!6977190 () Bool)

(assert (=> b!6134455 m!6977190))

(declare-fun m!6977192 () Bool)

(assert (=> b!6134449 m!6977192))

(declare-fun m!6977194 () Bool)

(assert (=> b!6134443 m!6977194))

(declare-fun m!6977196 () Bool)

(assert (=> b!6134443 m!6977196))

(declare-fun m!6977198 () Bool)

(assert (=> b!6134443 m!6977198))

(declare-fun m!6977200 () Bool)

(assert (=> b!6134444 m!6977200))

(assert (=> b!6134444 m!6977200))

(declare-fun m!6977202 () Bool)

(assert (=> b!6134444 m!6977202))

(declare-fun m!6977204 () Bool)

(assert (=> b!6134439 m!6977204))

(declare-fun m!6977206 () Bool)

(assert (=> b!6134439 m!6977206))

(declare-fun m!6977208 () Bool)

(assert (=> b!6134439 m!6977208))

(declare-fun m!6977210 () Bool)

(assert (=> b!6134439 m!6977210))

(declare-fun m!6977212 () Bool)

(assert (=> b!6134439 m!6977212))

(declare-fun m!6977214 () Bool)

(assert (=> b!6134439 m!6977214))

(declare-fun m!6977216 () Bool)

(assert (=> b!6134439 m!6977216))

(declare-fun m!6977218 () Bool)

(assert (=> b!6134441 m!6977218))

(assert (=> b!6134440 m!6977196))

(declare-fun m!6977220 () Bool)

(assert (=> b!6134440 m!6977220))

(declare-fun m!6977222 () Bool)

(assert (=> b!6134440 m!6977222))

(declare-fun m!6977224 () Bool)

(assert (=> b!6134440 m!6977224))

(declare-fun m!6977226 () Bool)

(assert (=> b!6134438 m!6977226))

(declare-fun m!6977228 () Bool)

(assert (=> b!6134460 m!6977228))

(declare-fun m!6977230 () Bool)

(assert (=> b!6134460 m!6977230))

(declare-fun m!6977232 () Bool)

(assert (=> b!6134436 m!6977232))

(assert (=> b!6134452 m!6977190))

(declare-fun m!6977234 () Bool)

(assert (=> b!6134442 m!6977234))

(declare-fun m!6977236 () Bool)

(assert (=> b!6134442 m!6977236))

(declare-fun m!6977238 () Bool)

(assert (=> b!6134442 m!6977238))

(declare-fun m!6977240 () Bool)

(assert (=> b!6134453 m!6977240))

(declare-fun m!6977242 () Bool)

(assert (=> b!6134458 m!6977242))

(check-sat (not b!6134436) (not b!6134438) (not b!6134457) (not b!6134461) (not b!6134453) (not b!6134439) (not b!6134455) (not b!6134447) (not b!6134446) (not start!612746) (not b!6134435) (not b!6134458) (not b!6134440) (not b!6134452) (not b!6134442) (not b!6134454) (not b!6134441) (not b!6134444) (not b!6134456) (not b!6134443) (not b!6134445) tp_is_empty!41411 (not b!6134460) (not b!6134448) (not b!6134449) (not setNonEmpty!41476))
(check-sat)
(get-model)

(declare-fun bs!1521526 () Bool)

(declare-fun b!6134880 () Bool)

(assert (= bs!1521526 (and b!6134880 b!6134456)))

(declare-fun lambda!334285 () Int)

(assert (=> bs!1521526 (not (= lambda!334285 lambda!334249))))

(assert (=> bs!1521526 (not (= lambda!334285 lambda!334250))))

(assert (=> b!6134880 true))

(assert (=> b!6134880 true))

(declare-fun bs!1521527 () Bool)

(declare-fun b!6134888 () Bool)

(assert (= bs!1521527 (and b!6134888 b!6134456)))

(declare-fun lambda!334286 () Int)

(assert (=> bs!1521527 (not (= lambda!334286 lambda!334249))))

(assert (=> bs!1521527 (= lambda!334286 lambda!334250)))

(declare-fun bs!1521528 () Bool)

(assert (= bs!1521528 (and b!6134888 b!6134880)))

(assert (=> bs!1521528 (not (= lambda!334286 lambda!334285))))

(assert (=> b!6134888 true))

(assert (=> b!6134888 true))

(declare-fun c!1103124 () Bool)

(declare-fun bm!509030 () Bool)

(declare-fun call!509036 () Bool)

(assert (=> bm!509030 (= call!509036 (Exists!3149 (ite c!1103124 lambda!334285 lambda!334286)))))

(declare-fun b!6134879 () Bool)

(declare-fun e!3739088 () Bool)

(assert (=> b!6134879 (= e!3739088 (matchRSpec!3180 (regTwo!32671 r!7292) s!2326))))

(declare-fun bm!509031 () Bool)

(declare-fun call!509035 () Bool)

(declare-fun isEmpty!36360 (List!64537) Bool)

(assert (=> bm!509031 (= call!509035 (isEmpty!36360 s!2326))))

(declare-fun e!3739090 () Bool)

(assert (=> b!6134880 (= e!3739090 call!509036)))

(declare-fun b!6134881 () Bool)

(declare-fun e!3739089 () Bool)

(assert (=> b!6134881 (= e!3739089 call!509035)))

(declare-fun b!6134882 () Bool)

(declare-fun c!1103123 () Bool)

(assert (=> b!6134882 (= c!1103123 ((_ is ElementMatch!16079) r!7292))))

(declare-fun e!3739091 () Bool)

(declare-fun e!3739087 () Bool)

(assert (=> b!6134882 (= e!3739091 e!3739087)))

(declare-fun b!6134883 () Bool)

(declare-fun res!2542368 () Bool)

(assert (=> b!6134883 (=> res!2542368 e!3739090)))

(assert (=> b!6134883 (= res!2542368 call!509035)))

(declare-fun e!3739092 () Bool)

(assert (=> b!6134883 (= e!3739092 e!3739090)))

(declare-fun b!6134884 () Bool)

(declare-fun e!3739093 () Bool)

(assert (=> b!6134884 (= e!3739093 e!3739088)))

(declare-fun res!2542369 () Bool)

(assert (=> b!6134884 (= res!2542369 (matchRSpec!3180 (regOne!32671 r!7292) s!2326))))

(assert (=> b!6134884 (=> res!2542369 e!3739088)))

(declare-fun b!6134885 () Bool)

(assert (=> b!6134885 (= e!3739087 (= s!2326 (Cons!64413 (c!1103007 r!7292) Nil!64413)))))

(declare-fun b!6134886 () Bool)

(declare-fun c!1103122 () Bool)

(assert (=> b!6134886 (= c!1103122 ((_ is Union!16079) r!7292))))

(assert (=> b!6134886 (= e!3739087 e!3739093)))

(declare-fun d!1922041 () Bool)

(declare-fun c!1103121 () Bool)

(assert (=> d!1922041 (= c!1103121 ((_ is EmptyExpr!16079) r!7292))))

(assert (=> d!1922041 (= (matchRSpec!3180 r!7292 s!2326) e!3739089)))

(declare-fun b!6134887 () Bool)

(assert (=> b!6134887 (= e!3739093 e!3739092)))

(assert (=> b!6134887 (= c!1103124 ((_ is Star!16079) r!7292))))

(assert (=> b!6134888 (= e!3739092 call!509036)))

(declare-fun b!6134889 () Bool)

(assert (=> b!6134889 (= e!3739089 e!3739091)))

(declare-fun res!2542367 () Bool)

(assert (=> b!6134889 (= res!2542367 (not ((_ is EmptyLang!16079) r!7292)))))

(assert (=> b!6134889 (=> (not res!2542367) (not e!3739091))))

(assert (= (and d!1922041 c!1103121) b!6134881))

(assert (= (and d!1922041 (not c!1103121)) b!6134889))

(assert (= (and b!6134889 res!2542367) b!6134882))

(assert (= (and b!6134882 c!1103123) b!6134885))

(assert (= (and b!6134882 (not c!1103123)) b!6134886))

(assert (= (and b!6134886 c!1103122) b!6134884))

(assert (= (and b!6134886 (not c!1103122)) b!6134887))

(assert (= (and b!6134884 (not res!2542369)) b!6134879))

(assert (= (and b!6134887 c!1103124) b!6134883))

(assert (= (and b!6134887 (not c!1103124)) b!6134888))

(assert (= (and b!6134883 (not res!2542368)) b!6134880))

(assert (= (or b!6134880 b!6134888) bm!509030))

(assert (= (or b!6134881 b!6134883) bm!509031))

(declare-fun m!6977478 () Bool)

(assert (=> bm!509030 m!6977478))

(declare-fun m!6977480 () Bool)

(assert (=> b!6134879 m!6977480))

(declare-fun m!6977482 () Bool)

(assert (=> bm!509031 m!6977482))

(declare-fun m!6977484 () Bool)

(assert (=> b!6134884 m!6977484))

(assert (=> b!6134442 d!1922041))

(declare-fun b!6134918 () Bool)

(declare-fun e!3739109 () Bool)

(declare-fun head!12679 (List!64537) C!32428)

(assert (=> b!6134918 (= e!3739109 (not (= (head!12679 s!2326) (c!1103007 r!7292))))))

(declare-fun b!6134919 () Bool)

(declare-fun res!2542393 () Bool)

(declare-fun e!3739111 () Bool)

(assert (=> b!6134919 (=> (not res!2542393) (not e!3739111))))

(declare-fun call!509039 () Bool)

(assert (=> b!6134919 (= res!2542393 (not call!509039))))

(declare-fun b!6134920 () Bool)

(declare-fun e!3739114 () Bool)

(assert (=> b!6134920 (= e!3739114 e!3739109)))

(declare-fun res!2542392 () Bool)

(assert (=> b!6134920 (=> res!2542392 e!3739109)))

(assert (=> b!6134920 (= res!2542392 call!509039)))

(declare-fun b!6134921 () Bool)

(declare-fun e!3739108 () Bool)

(declare-fun lt!2332406 () Bool)

(assert (=> b!6134921 (= e!3739108 (not lt!2332406))))

(declare-fun b!6134922 () Bool)

(assert (=> b!6134922 (= e!3739111 (= (head!12679 s!2326) (c!1103007 r!7292)))))

(declare-fun b!6134923 () Bool)

(declare-fun res!2542390 () Bool)

(declare-fun e!3739112 () Bool)

(assert (=> b!6134923 (=> res!2542390 e!3739112)))

(assert (=> b!6134923 (= res!2542390 e!3739111)))

(declare-fun res!2542391 () Bool)

(assert (=> b!6134923 (=> (not res!2542391) (not e!3739111))))

(assert (=> b!6134923 (= res!2542391 lt!2332406)))

(declare-fun b!6134924 () Bool)

(assert (=> b!6134924 (= e!3739112 e!3739114)))

(declare-fun res!2542388 () Bool)

(assert (=> b!6134924 (=> (not res!2542388) (not e!3739114))))

(assert (=> b!6134924 (= res!2542388 (not lt!2332406))))

(declare-fun b!6134925 () Bool)

(declare-fun e!3739110 () Bool)

(assert (=> b!6134925 (= e!3739110 e!3739108)))

(declare-fun c!1103131 () Bool)

(assert (=> b!6134925 (= c!1103131 ((_ is EmptyLang!16079) r!7292))))

(declare-fun b!6134926 () Bool)

(declare-fun res!2542386 () Bool)

(assert (=> b!6134926 (=> (not res!2542386) (not e!3739111))))

(declare-fun tail!11764 (List!64537) List!64537)

(assert (=> b!6134926 (= res!2542386 (isEmpty!36360 (tail!11764 s!2326)))))

(declare-fun b!6134927 () Bool)

(assert (=> b!6134927 (= e!3739110 (= lt!2332406 call!509039))))

(declare-fun b!6134928 () Bool)

(declare-fun res!2542389 () Bool)

(assert (=> b!6134928 (=> res!2542389 e!3739112)))

(assert (=> b!6134928 (= res!2542389 (not ((_ is ElementMatch!16079) r!7292)))))

(assert (=> b!6134928 (= e!3739108 e!3739112)))

(declare-fun bm!509034 () Bool)

(assert (=> bm!509034 (= call!509039 (isEmpty!36360 s!2326))))

(declare-fun b!6134930 () Bool)

(declare-fun e!3739113 () Bool)

(declare-fun derivativeStep!4799 (Regex!16079 C!32428) Regex!16079)

(assert (=> b!6134930 (= e!3739113 (matchR!8262 (derivativeStep!4799 r!7292 (head!12679 s!2326)) (tail!11764 s!2326)))))

(declare-fun b!6134931 () Bool)

(assert (=> b!6134931 (= e!3739113 (nullable!6072 r!7292))))

(declare-fun d!1922043 () Bool)

(assert (=> d!1922043 e!3739110))

(declare-fun c!1103133 () Bool)

(assert (=> d!1922043 (= c!1103133 ((_ is EmptyExpr!16079) r!7292))))

(assert (=> d!1922043 (= lt!2332406 e!3739113)))

(declare-fun c!1103132 () Bool)

(assert (=> d!1922043 (= c!1103132 (isEmpty!36360 s!2326))))

(assert (=> d!1922043 (validRegex!7815 r!7292)))

(assert (=> d!1922043 (= (matchR!8262 r!7292 s!2326) lt!2332406)))

(declare-fun b!6134929 () Bool)

(declare-fun res!2542387 () Bool)

(assert (=> b!6134929 (=> res!2542387 e!3739109)))

(assert (=> b!6134929 (= res!2542387 (not (isEmpty!36360 (tail!11764 s!2326))))))

(assert (= (and d!1922043 c!1103132) b!6134931))

(assert (= (and d!1922043 (not c!1103132)) b!6134930))

(assert (= (and d!1922043 c!1103133) b!6134927))

(assert (= (and d!1922043 (not c!1103133)) b!6134925))

(assert (= (and b!6134925 c!1103131) b!6134921))

(assert (= (and b!6134925 (not c!1103131)) b!6134928))

(assert (= (and b!6134928 (not res!2542389)) b!6134923))

(assert (= (and b!6134923 res!2542391) b!6134919))

(assert (= (and b!6134919 res!2542393) b!6134926))

(assert (= (and b!6134926 res!2542386) b!6134922))

(assert (= (and b!6134923 (not res!2542390)) b!6134924))

(assert (= (and b!6134924 res!2542388) b!6134920))

(assert (= (and b!6134920 (not res!2542392)) b!6134929))

(assert (= (and b!6134929 (not res!2542387)) b!6134918))

(assert (= (or b!6134927 b!6134919 b!6134920) bm!509034))

(assert (=> d!1922043 m!6977482))

(assert (=> d!1922043 m!6977168))

(assert (=> bm!509034 m!6977482))

(declare-fun m!6977486 () Bool)

(assert (=> b!6134922 m!6977486))

(declare-fun m!6977488 () Bool)

(assert (=> b!6134926 m!6977488))

(assert (=> b!6134926 m!6977488))

(declare-fun m!6977490 () Bool)

(assert (=> b!6134926 m!6977490))

(assert (=> b!6134929 m!6977488))

(assert (=> b!6134929 m!6977488))

(assert (=> b!6134929 m!6977490))

(declare-fun m!6977492 () Bool)

(assert (=> b!6134931 m!6977492))

(assert (=> b!6134918 m!6977486))

(assert (=> b!6134930 m!6977486))

(assert (=> b!6134930 m!6977486))

(declare-fun m!6977494 () Bool)

(assert (=> b!6134930 m!6977494))

(assert (=> b!6134930 m!6977488))

(assert (=> b!6134930 m!6977494))

(assert (=> b!6134930 m!6977488))

(declare-fun m!6977496 () Bool)

(assert (=> b!6134930 m!6977496))

(assert (=> b!6134442 d!1922043))

(declare-fun d!1922045 () Bool)

(assert (=> d!1922045 (= (matchR!8262 r!7292 s!2326) (matchRSpec!3180 r!7292 s!2326))))

(declare-fun lt!2332409 () Unit!157471)

(declare-fun choose!45587 (Regex!16079 List!64537) Unit!157471)

(assert (=> d!1922045 (= lt!2332409 (choose!45587 r!7292 s!2326))))

(assert (=> d!1922045 (validRegex!7815 r!7292)))

(assert (=> d!1922045 (= (mainMatchTheorem!3180 r!7292 s!2326) lt!2332409)))

(declare-fun bs!1521529 () Bool)

(assert (= bs!1521529 d!1922045))

(assert (=> bs!1521529 m!6977236))

(assert (=> bs!1521529 m!6977234))

(declare-fun m!6977498 () Bool)

(assert (=> bs!1521529 m!6977498))

(assert (=> bs!1521529 m!6977168))

(assert (=> b!6134442 d!1922045))

(declare-fun d!1922047 () Bool)

(declare-fun lambda!334289 () Int)

(declare-fun forall!15200 (List!64536 Int) Bool)

(assert (=> d!1922047 (= (inv!83444 (h!70862 zl!343)) (forall!15200 (exprs!5963 (h!70862 zl!343)) lambda!334289))))

(declare-fun bs!1521530 () Bool)

(assert (= bs!1521530 d!1922047))

(declare-fun m!6977500 () Bool)

(assert (=> bs!1521530 m!6977500))

(assert (=> b!6134441 d!1922047))

(declare-fun bs!1521531 () Bool)

(declare-fun d!1922049 () Bool)

(assert (= bs!1521531 (and d!1922049 d!1922047)))

(declare-fun lambda!334292 () Int)

(assert (=> bs!1521531 (= lambda!334292 lambda!334289)))

(declare-fun b!6134952 () Bool)

(declare-fun e!3739130 () Bool)

(declare-fun lt!2332412 () Regex!16079)

(declare-fun isEmptyExpr!1496 (Regex!16079) Bool)

(assert (=> b!6134952 (= e!3739130 (isEmptyExpr!1496 lt!2332412))))

(declare-fun b!6134953 () Bool)

(declare-fun e!3739128 () Bool)

(declare-fun isConcat!1019 (Regex!16079) Bool)

(assert (=> b!6134953 (= e!3739128 (isConcat!1019 lt!2332412))))

(declare-fun b!6134954 () Bool)

(assert (=> b!6134954 (= e!3739130 e!3739128)))

(declare-fun c!1103144 () Bool)

(declare-fun tail!11765 (List!64536) List!64536)

(assert (=> b!6134954 (= c!1103144 (isEmpty!36357 (tail!11765 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6134955 () Bool)

(declare-fun e!3739132 () Bool)

(assert (=> b!6134955 (= e!3739132 e!3739130)))

(declare-fun c!1103142 () Bool)

(assert (=> b!6134955 (= c!1103142 (isEmpty!36357 (exprs!5963 (h!70862 zl!343))))))

(declare-fun b!6134956 () Bool)

(declare-fun head!12680 (List!64536) Regex!16079)

(assert (=> b!6134956 (= e!3739128 (= lt!2332412 (head!12680 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6134957 () Bool)

(declare-fun e!3739129 () Regex!16079)

(declare-fun e!3739131 () Regex!16079)

(assert (=> b!6134957 (= e!3739129 e!3739131)))

(declare-fun c!1103143 () Bool)

(assert (=> b!6134957 (= c!1103143 ((_ is Cons!64412) (exprs!5963 (h!70862 zl!343))))))

(declare-fun b!6134958 () Bool)

(assert (=> b!6134958 (= e!3739131 (Concat!24924 (h!70860 (exprs!5963 (h!70862 zl!343))) (generalisedConcat!1676 (t!378009 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6134959 () Bool)

(declare-fun e!3739127 () Bool)

(assert (=> b!6134959 (= e!3739127 (isEmpty!36357 (t!378009 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6134960 () Bool)

(assert (=> b!6134960 (= e!3739131 EmptyExpr!16079)))

(assert (=> d!1922049 e!3739132))

(declare-fun res!2542399 () Bool)

(assert (=> d!1922049 (=> (not res!2542399) (not e!3739132))))

(assert (=> d!1922049 (= res!2542399 (validRegex!7815 lt!2332412))))

(assert (=> d!1922049 (= lt!2332412 e!3739129)))

(declare-fun c!1103145 () Bool)

(assert (=> d!1922049 (= c!1103145 e!3739127)))

(declare-fun res!2542398 () Bool)

(assert (=> d!1922049 (=> (not res!2542398) (not e!3739127))))

(assert (=> d!1922049 (= res!2542398 ((_ is Cons!64412) (exprs!5963 (h!70862 zl!343))))))

(assert (=> d!1922049 (forall!15200 (exprs!5963 (h!70862 zl!343)) lambda!334292)))

(assert (=> d!1922049 (= (generalisedConcat!1676 (exprs!5963 (h!70862 zl!343))) lt!2332412)))

(declare-fun b!6134961 () Bool)

(assert (=> b!6134961 (= e!3739129 (h!70860 (exprs!5963 (h!70862 zl!343))))))

(assert (= (and d!1922049 res!2542398) b!6134959))

(assert (= (and d!1922049 c!1103145) b!6134961))

(assert (= (and d!1922049 (not c!1103145)) b!6134957))

(assert (= (and b!6134957 c!1103143) b!6134958))

(assert (= (and b!6134957 (not c!1103143)) b!6134960))

(assert (= (and d!1922049 res!2542399) b!6134955))

(assert (= (and b!6134955 c!1103142) b!6134952))

(assert (= (and b!6134955 (not c!1103142)) b!6134954))

(assert (= (and b!6134954 c!1103144) b!6134956))

(assert (= (and b!6134954 (not c!1103144)) b!6134953))

(declare-fun m!6977502 () Bool)

(assert (=> b!6134953 m!6977502))

(declare-fun m!6977504 () Bool)

(assert (=> b!6134958 m!6977504))

(declare-fun m!6977506 () Bool)

(assert (=> b!6134956 m!6977506))

(declare-fun m!6977508 () Bool)

(assert (=> d!1922049 m!6977508))

(declare-fun m!6977510 () Bool)

(assert (=> d!1922049 m!6977510))

(declare-fun m!6977512 () Bool)

(assert (=> b!6134954 m!6977512))

(assert (=> b!6134954 m!6977512))

(declare-fun m!6977514 () Bool)

(assert (=> b!6134954 m!6977514))

(declare-fun m!6977516 () Bool)

(assert (=> b!6134955 m!6977516))

(assert (=> b!6134959 m!6977192))

(declare-fun m!6977518 () Bool)

(assert (=> b!6134952 m!6977518))

(assert (=> b!6134461 d!1922049))

(declare-fun d!1922051 () Bool)

(declare-fun c!1103148 () Bool)

(assert (=> d!1922051 (= c!1103148 (isEmpty!36360 (t!378010 s!2326)))))

(declare-fun e!3739135 () Bool)

(assert (=> d!1922051 (= (matchZipper!2091 lt!2332344 (t!378010 s!2326)) e!3739135)))

(declare-fun b!6134966 () Bool)

(declare-fun nullableZipper!1860 ((InoxSet Context!10926)) Bool)

(assert (=> b!6134966 (= e!3739135 (nullableZipper!1860 lt!2332344))))

(declare-fun b!6134967 () Bool)

(declare-fun derivationStepZipper!2052 ((InoxSet Context!10926) C!32428) (InoxSet Context!10926))

(assert (=> b!6134967 (= e!3739135 (matchZipper!2091 (derivationStepZipper!2052 lt!2332344 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))))))

(assert (= (and d!1922051 c!1103148) b!6134966))

(assert (= (and d!1922051 (not c!1103148)) b!6134967))

(declare-fun m!6977520 () Bool)

(assert (=> d!1922051 m!6977520))

(declare-fun m!6977522 () Bool)

(assert (=> b!6134966 m!6977522))

(declare-fun m!6977524 () Bool)

(assert (=> b!6134967 m!6977524))

(assert (=> b!6134967 m!6977524))

(declare-fun m!6977526 () Bool)

(assert (=> b!6134967 m!6977526))

(declare-fun m!6977528 () Bool)

(assert (=> b!6134967 m!6977528))

(assert (=> b!6134967 m!6977526))

(assert (=> b!6134967 m!6977528))

(declare-fun m!6977530 () Bool)

(assert (=> b!6134967 m!6977530))

(assert (=> b!6134440 d!1922051))

(declare-fun d!1922053 () Bool)

(declare-fun c!1103149 () Bool)

(assert (=> d!1922053 (= c!1103149 (isEmpty!36360 (t!378010 s!2326)))))

(declare-fun e!3739136 () Bool)

(assert (=> d!1922053 (= (matchZipper!2091 lt!2332348 (t!378010 s!2326)) e!3739136)))

(declare-fun b!6134968 () Bool)

(assert (=> b!6134968 (= e!3739136 (nullableZipper!1860 lt!2332348))))

(declare-fun b!6134969 () Bool)

(assert (=> b!6134969 (= e!3739136 (matchZipper!2091 (derivationStepZipper!2052 lt!2332348 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))))))

(assert (= (and d!1922053 c!1103149) b!6134968))

(assert (= (and d!1922053 (not c!1103149)) b!6134969))

(assert (=> d!1922053 m!6977520))

(declare-fun m!6977532 () Bool)

(assert (=> b!6134968 m!6977532))

(assert (=> b!6134969 m!6977524))

(assert (=> b!6134969 m!6977524))

(declare-fun m!6977534 () Bool)

(assert (=> b!6134969 m!6977534))

(assert (=> b!6134969 m!6977528))

(assert (=> b!6134969 m!6977534))

(assert (=> b!6134969 m!6977528))

(declare-fun m!6977536 () Bool)

(assert (=> b!6134969 m!6977536))

(assert (=> b!6134440 d!1922053))

(declare-fun d!1922055 () Bool)

(declare-fun c!1103150 () Bool)

(assert (=> d!1922055 (= c!1103150 (isEmpty!36360 (t!378010 s!2326)))))

(declare-fun e!3739137 () Bool)

(assert (=> d!1922055 (= (matchZipper!2091 lt!2332343 (t!378010 s!2326)) e!3739137)))

(declare-fun b!6134970 () Bool)

(assert (=> b!6134970 (= e!3739137 (nullableZipper!1860 lt!2332343))))

(declare-fun b!6134971 () Bool)

(assert (=> b!6134971 (= e!3739137 (matchZipper!2091 (derivationStepZipper!2052 lt!2332343 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))))))

(assert (= (and d!1922055 c!1103150) b!6134970))

(assert (= (and d!1922055 (not c!1103150)) b!6134971))

(assert (=> d!1922055 m!6977520))

(declare-fun m!6977538 () Bool)

(assert (=> b!6134970 m!6977538))

(assert (=> b!6134971 m!6977524))

(assert (=> b!6134971 m!6977524))

(declare-fun m!6977540 () Bool)

(assert (=> b!6134971 m!6977540))

(assert (=> b!6134971 m!6977528))

(assert (=> b!6134971 m!6977540))

(assert (=> b!6134971 m!6977528))

(declare-fun m!6977542 () Bool)

(assert (=> b!6134971 m!6977542))

(assert (=> b!6134440 d!1922055))

(declare-fun d!1922057 () Bool)

(declare-fun e!3739140 () Bool)

(assert (=> d!1922057 (= (matchZipper!2091 ((_ map or) lt!2332343 lt!2332354) (t!378010 s!2326)) e!3739140)))

(declare-fun res!2542402 () Bool)

(assert (=> d!1922057 (=> res!2542402 e!3739140)))

(assert (=> d!1922057 (= res!2542402 (matchZipper!2091 lt!2332343 (t!378010 s!2326)))))

(declare-fun lt!2332415 () Unit!157471)

(declare-fun choose!45588 ((InoxSet Context!10926) (InoxSet Context!10926) List!64537) Unit!157471)

(assert (=> d!1922057 (= lt!2332415 (choose!45588 lt!2332343 lt!2332354 (t!378010 s!2326)))))

(assert (=> d!1922057 (= (lemmaZipperConcatMatchesSameAsBothZippers!910 lt!2332343 lt!2332354 (t!378010 s!2326)) lt!2332415)))

(declare-fun b!6134974 () Bool)

(assert (=> b!6134974 (= e!3739140 (matchZipper!2091 lt!2332354 (t!378010 s!2326)))))

(assert (= (and d!1922057 (not res!2542402)) b!6134974))

(declare-fun m!6977544 () Bool)

(assert (=> d!1922057 m!6977544))

(assert (=> d!1922057 m!6977222))

(declare-fun m!6977546 () Bool)

(assert (=> d!1922057 m!6977546))

(assert (=> b!6134974 m!6977190))

(assert (=> b!6134440 d!1922057))

(declare-fun bs!1521532 () Bool)

(declare-fun d!1922059 () Bool)

(assert (= bs!1521532 (and d!1922059 d!1922047)))

(declare-fun lambda!334293 () Int)

(assert (=> bs!1521532 (= lambda!334293 lambda!334289)))

(declare-fun bs!1521533 () Bool)

(assert (= bs!1521533 (and d!1922059 d!1922049)))

(assert (=> bs!1521533 (= lambda!334293 lambda!334292)))

(assert (=> d!1922059 (= (inv!83444 lt!2332353) (forall!15200 (exprs!5963 lt!2332353) lambda!334293))))

(declare-fun bs!1521534 () Bool)

(assert (= bs!1521534 d!1922059))

(declare-fun m!6977548 () Bool)

(assert (=> bs!1521534 m!6977548))

(assert (=> b!6134460 d!1922059))

(declare-fun d!1922061 () Bool)

(declare-fun c!1103156 () Bool)

(declare-fun e!3739147 () Bool)

(assert (=> d!1922061 (= c!1103156 e!3739147)))

(declare-fun res!2542405 () Bool)

(assert (=> d!1922061 (=> (not res!2542405) (not e!3739147))))

(assert (=> d!1922061 (= res!2542405 ((_ is Cons!64412) (exprs!5963 lt!2332353)))))

(declare-fun e!3739149 () (InoxSet Context!10926))

(assert (=> d!1922061 (= (derivationStepZipperUp!1253 lt!2332353 (h!70861 s!2326)) e!3739149)))

(declare-fun b!6134985 () Bool)

(declare-fun e!3739148 () (InoxSet Context!10926))

(assert (=> b!6134985 (= e!3739148 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6134986 () Bool)

(declare-fun call!509042 () (InoxSet Context!10926))

(assert (=> b!6134986 (= e!3739149 ((_ map or) call!509042 (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 lt!2332353))) (h!70861 s!2326))))))

(declare-fun b!6134987 () Bool)

(assert (=> b!6134987 (= e!3739149 e!3739148)))

(declare-fun c!1103155 () Bool)

(assert (=> b!6134987 (= c!1103155 ((_ is Cons!64412) (exprs!5963 lt!2332353)))))

(declare-fun b!6134988 () Bool)

(assert (=> b!6134988 (= e!3739147 (nullable!6072 (h!70860 (exprs!5963 lt!2332353))))))

(declare-fun bm!509037 () Bool)

(assert (=> bm!509037 (= call!509042 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 lt!2332353)) (Context!10927 (t!378009 (exprs!5963 lt!2332353))) (h!70861 s!2326)))))

(declare-fun b!6134989 () Bool)

(assert (=> b!6134989 (= e!3739148 call!509042)))

(assert (= (and d!1922061 res!2542405) b!6134988))

(assert (= (and d!1922061 c!1103156) b!6134986))

(assert (= (and d!1922061 (not c!1103156)) b!6134987))

(assert (= (and b!6134987 c!1103155) b!6134989))

(assert (= (and b!6134987 (not c!1103155)) b!6134985))

(assert (= (or b!6134986 b!6134989) bm!509037))

(declare-fun m!6977550 () Bool)

(assert (=> b!6134986 m!6977550))

(declare-fun m!6977552 () Bool)

(assert (=> b!6134988 m!6977552))

(declare-fun m!6977554 () Bool)

(assert (=> bm!509037 m!6977554))

(assert (=> b!6134460 d!1922061))

(declare-fun d!1922063 () Bool)

(assert (=> d!1922063 (= (isEmpty!36357 (t!378009 (exprs!5963 (h!70862 zl!343)))) ((_ is Nil!64412) (t!378009 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> b!6134449 d!1922063))

(declare-fun d!1922065 () Bool)

(declare-fun c!1103158 () Bool)

(declare-fun e!3739150 () Bool)

(assert (=> d!1922065 (= c!1103158 e!3739150)))

(declare-fun res!2542406 () Bool)

(assert (=> d!1922065 (=> (not res!2542406) (not e!3739150))))

(assert (=> d!1922065 (= res!2542406 ((_ is Cons!64412) (exprs!5963 lt!2332346)))))

(declare-fun e!3739152 () (InoxSet Context!10926))

(assert (=> d!1922065 (= (derivationStepZipperUp!1253 lt!2332346 (h!70861 s!2326)) e!3739152)))

(declare-fun b!6134990 () Bool)

(declare-fun e!3739151 () (InoxSet Context!10926))

(assert (=> b!6134990 (= e!3739151 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6134991 () Bool)

(declare-fun call!509043 () (InoxSet Context!10926))

(assert (=> b!6134991 (= e!3739152 ((_ map or) call!509043 (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 lt!2332346))) (h!70861 s!2326))))))

(declare-fun b!6134992 () Bool)

(assert (=> b!6134992 (= e!3739152 e!3739151)))

(declare-fun c!1103157 () Bool)

(assert (=> b!6134992 (= c!1103157 ((_ is Cons!64412) (exprs!5963 lt!2332346)))))

(declare-fun b!6134993 () Bool)

(assert (=> b!6134993 (= e!3739150 (nullable!6072 (h!70860 (exprs!5963 lt!2332346))))))

(declare-fun bm!509038 () Bool)

(assert (=> bm!509038 (= call!509043 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 lt!2332346)) (Context!10927 (t!378009 (exprs!5963 lt!2332346))) (h!70861 s!2326)))))

(declare-fun b!6134994 () Bool)

(assert (=> b!6134994 (= e!3739151 call!509043)))

(assert (= (and d!1922065 res!2542406) b!6134993))

(assert (= (and d!1922065 c!1103158) b!6134991))

(assert (= (and d!1922065 (not c!1103158)) b!6134992))

(assert (= (and b!6134992 c!1103157) b!6134994))

(assert (= (and b!6134992 (not c!1103157)) b!6134990))

(assert (= (or b!6134991 b!6134994) bm!509038))

(declare-fun m!6977556 () Bool)

(assert (=> b!6134991 m!6977556))

(declare-fun m!6977558 () Bool)

(assert (=> b!6134993 m!6977558))

(declare-fun m!6977560 () Bool)

(assert (=> bm!509038 m!6977560))

(assert (=> b!6134439 d!1922065))

(declare-fun d!1922067 () Bool)

(declare-fun nullableFct!2036 (Regex!16079) Bool)

(assert (=> d!1922067 (= (nullable!6072 (h!70860 (exprs!5963 (h!70862 zl!343)))) (nullableFct!2036 (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun bs!1521535 () Bool)

(assert (= bs!1521535 d!1922067))

(declare-fun m!6977562 () Bool)

(assert (=> bs!1521535 m!6977562))

(assert (=> b!6134439 d!1922067))

(declare-fun d!1922069 () Bool)

(declare-fun c!1103160 () Bool)

(declare-fun e!3739153 () Bool)

(assert (=> d!1922069 (= c!1103160 e!3739153)))

(declare-fun res!2542407 () Bool)

(assert (=> d!1922069 (=> (not res!2542407) (not e!3739153))))

(assert (=> d!1922069 (= res!2542407 ((_ is Cons!64412) (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))))

(declare-fun e!3739155 () (InoxSet Context!10926))

(assert (=> d!1922069 (= (derivationStepZipperUp!1253 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))) (h!70861 s!2326)) e!3739155)))

(declare-fun b!6134995 () Bool)

(declare-fun e!3739154 () (InoxSet Context!10926))

(assert (=> b!6134995 (= e!3739154 ((as const (Array Context!10926 Bool)) false))))

(declare-fun call!509044 () (InoxSet Context!10926))

(declare-fun b!6134996 () Bool)

(assert (=> b!6134996 (= e!3739155 ((_ map or) call!509044 (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (h!70861 s!2326))))))

(declare-fun b!6134997 () Bool)

(assert (=> b!6134997 (= e!3739155 e!3739154)))

(declare-fun c!1103159 () Bool)

(assert (=> b!6134997 (= c!1103159 ((_ is Cons!64412) (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))))

(declare-fun b!6134998 () Bool)

(assert (=> b!6134998 (= e!3739153 (nullable!6072 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))))

(declare-fun bm!509039 () Bool)

(assert (=> bm!509039 (= call!509044 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))) (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (h!70861 s!2326)))))

(declare-fun b!6134999 () Bool)

(assert (=> b!6134999 (= e!3739154 call!509044)))

(assert (= (and d!1922069 res!2542407) b!6134998))

(assert (= (and d!1922069 c!1103160) b!6134996))

(assert (= (and d!1922069 (not c!1103160)) b!6134997))

(assert (= (and b!6134997 c!1103159) b!6134999))

(assert (= (and b!6134997 (not c!1103159)) b!6134995))

(assert (= (or b!6134996 b!6134999) bm!509039))

(declare-fun m!6977564 () Bool)

(assert (=> b!6134996 m!6977564))

(declare-fun m!6977566 () Bool)

(assert (=> b!6134998 m!6977566))

(declare-fun m!6977568 () Bool)

(assert (=> bm!509039 m!6977568))

(assert (=> b!6134439 d!1922069))

(declare-fun b!6135022 () Bool)

(declare-fun e!3739168 () (InoxSet Context!10926))

(declare-fun e!3739170 () (InoxSet Context!10926))

(assert (=> b!6135022 (= e!3739168 e!3739170)))

(declare-fun c!1103173 () Bool)

(assert (=> b!6135022 (= c!1103173 ((_ is Union!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun c!1103171 () Bool)

(declare-fun call!509058 () (InoxSet Context!10926))

(declare-fun bm!509052 () Bool)

(declare-fun call!509057 () List!64536)

(declare-fun c!1103174 () Bool)

(assert (=> bm!509052 (= call!509058 (derivationStepZipperDown!1327 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343))))))) (ite (or c!1103173 c!1103171) lt!2332346 (Context!10927 call!509057)) (h!70861 s!2326)))))

(declare-fun b!6135023 () Bool)

(declare-fun e!3739173 () Bool)

(assert (=> b!6135023 (= e!3739173 (nullable!6072 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6135024 () Bool)

(declare-fun e!3739172 () (InoxSet Context!10926))

(declare-fun call!509059 () (InoxSet Context!10926))

(assert (=> b!6135024 (= e!3739172 call!509059)))

(declare-fun b!6135025 () Bool)

(declare-fun call!509062 () (InoxSet Context!10926))

(assert (=> b!6135025 (= e!3739170 ((_ map or) call!509058 call!509062))))

(declare-fun b!6135026 () Bool)

(assert (=> b!6135026 (= e!3739172 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135027 () Bool)

(declare-fun e!3739171 () (InoxSet Context!10926))

(declare-fun call!509061 () (InoxSet Context!10926))

(assert (=> b!6135027 (= e!3739171 ((_ map or) call!509062 call!509061))))

(declare-fun bm!509054 () Bool)

(declare-fun call!509060 () List!64536)

(assert (=> bm!509054 (= call!509062 (derivationStepZipperDown!1327 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))) (ite c!1103173 lt!2332346 (Context!10927 call!509060)) (h!70861 s!2326)))))

(declare-fun b!6135028 () Bool)

(assert (=> b!6135028 (= c!1103171 e!3739173)))

(declare-fun res!2542410 () Bool)

(assert (=> b!6135028 (=> (not res!2542410) (not e!3739173))))

(assert (=> b!6135028 (= res!2542410 ((_ is Concat!24924) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> b!6135028 (= e!3739170 e!3739171)))

(declare-fun b!6135029 () Bool)

(declare-fun e!3739169 () (InoxSet Context!10926))

(assert (=> b!6135029 (= e!3739169 call!509059)))

(declare-fun bm!509055 () Bool)

(assert (=> bm!509055 (= call!509061 call!509058)))

(declare-fun bm!509056 () Bool)

(declare-fun $colon$colon!1956 (List!64536 Regex!16079) List!64536)

(assert (=> bm!509056 (= call!509060 ($colon$colon!1956 (exprs!5963 lt!2332346) (ite (or c!1103171 c!1103174) (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (h!70860 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6135030 () Bool)

(assert (=> b!6135030 (= e!3739171 e!3739169)))

(assert (=> b!6135030 (= c!1103174 ((_ is Concat!24924) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6135031 () Bool)

(declare-fun c!1103172 () Bool)

(assert (=> b!6135031 (= c!1103172 ((_ is Star!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> b!6135031 (= e!3739169 e!3739172)))

(declare-fun bm!509057 () Bool)

(assert (=> bm!509057 (= call!509059 call!509061)))

(declare-fun b!6135032 () Bool)

(assert (=> b!6135032 (= e!3739168 (store ((as const (Array Context!10926 Bool)) false) lt!2332346 true))))

(declare-fun d!1922071 () Bool)

(declare-fun c!1103175 () Bool)

(assert (=> d!1922071 (= c!1103175 (and ((_ is ElementMatch!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))) (= (c!1103007 (h!70860 (exprs!5963 (h!70862 zl!343)))) (h!70861 s!2326))))))

(assert (=> d!1922071 (= (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (h!70862 zl!343))) lt!2332346 (h!70861 s!2326)) e!3739168)))

(declare-fun bm!509053 () Bool)

(assert (=> bm!509053 (= call!509057 call!509060)))

(assert (= (and d!1922071 c!1103175) b!6135032))

(assert (= (and d!1922071 (not c!1103175)) b!6135022))

(assert (= (and b!6135022 c!1103173) b!6135025))

(assert (= (and b!6135022 (not c!1103173)) b!6135028))

(assert (= (and b!6135028 res!2542410) b!6135023))

(assert (= (and b!6135028 c!1103171) b!6135027))

(assert (= (and b!6135028 (not c!1103171)) b!6135030))

(assert (= (and b!6135030 c!1103174) b!6135029))

(assert (= (and b!6135030 (not c!1103174)) b!6135031))

(assert (= (and b!6135031 c!1103172) b!6135024))

(assert (= (and b!6135031 (not c!1103172)) b!6135026))

(assert (= (or b!6135029 b!6135024) bm!509053))

(assert (= (or b!6135029 b!6135024) bm!509057))

(assert (= (or b!6135027 bm!509053) bm!509056))

(assert (= (or b!6135027 bm!509057) bm!509055))

(assert (= (or b!6135025 b!6135027) bm!509054))

(assert (= (or b!6135025 bm!509055) bm!509052))

(declare-fun m!6977570 () Bool)

(assert (=> bm!509054 m!6977570))

(declare-fun m!6977572 () Bool)

(assert (=> bm!509056 m!6977572))

(declare-fun m!6977574 () Bool)

(assert (=> bm!509052 m!6977574))

(declare-fun m!6977576 () Bool)

(assert (=> b!6135023 m!6977576))

(declare-fun m!6977578 () Bool)

(assert (=> b!6135032 m!6977578))

(assert (=> b!6134439 d!1922071))

(declare-fun d!1922073 () Bool)

(declare-fun c!1103177 () Bool)

(declare-fun e!3739174 () Bool)

(assert (=> d!1922073 (= c!1103177 e!3739174)))

(declare-fun res!2542411 () Bool)

(assert (=> d!1922073 (=> (not res!2542411) (not e!3739174))))

(assert (=> d!1922073 (= res!2542411 ((_ is Cons!64412) (exprs!5963 (h!70862 zl!343))))))

(declare-fun e!3739176 () (InoxSet Context!10926))

(assert (=> d!1922073 (= (derivationStepZipperUp!1253 (h!70862 zl!343) (h!70861 s!2326)) e!3739176)))

(declare-fun b!6135033 () Bool)

(declare-fun e!3739175 () (InoxSet Context!10926))

(assert (=> b!6135033 (= e!3739175 ((as const (Array Context!10926 Bool)) false))))

(declare-fun call!509063 () (InoxSet Context!10926))

(declare-fun b!6135034 () Bool)

(assert (=> b!6135034 (= e!3739176 ((_ map or) call!509063 (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))) (h!70861 s!2326))))))

(declare-fun b!6135035 () Bool)

(assert (=> b!6135035 (= e!3739176 e!3739175)))

(declare-fun c!1103176 () Bool)

(assert (=> b!6135035 (= c!1103176 ((_ is Cons!64412) (exprs!5963 (h!70862 zl!343))))))

(declare-fun b!6135036 () Bool)

(assert (=> b!6135036 (= e!3739174 (nullable!6072 (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun bm!509058 () Bool)

(assert (=> bm!509058 (= call!509063 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (h!70862 zl!343))) (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))) (h!70861 s!2326)))))

(declare-fun b!6135037 () Bool)

(assert (=> b!6135037 (= e!3739175 call!509063)))

(assert (= (and d!1922073 res!2542411) b!6135036))

(assert (= (and d!1922073 c!1103177) b!6135034))

(assert (= (and d!1922073 (not c!1103177)) b!6135035))

(assert (= (and b!6135035 c!1103176) b!6135037))

(assert (= (and b!6135035 (not c!1103176)) b!6135033))

(assert (= (or b!6135034 b!6135037) bm!509058))

(declare-fun m!6977580 () Bool)

(assert (=> b!6135034 m!6977580))

(assert (=> b!6135036 m!6977208))

(declare-fun m!6977582 () Bool)

(assert (=> bm!509058 m!6977582))

(assert (=> b!6134439 d!1922073))

(declare-fun d!1922075 () Bool)

(declare-fun choose!45589 ((InoxSet Context!10926) Int) (InoxSet Context!10926))

(assert (=> d!1922075 (= (flatMap!1584 z!1189 lambda!334251) (choose!45589 z!1189 lambda!334251))))

(declare-fun bs!1521536 () Bool)

(assert (= bs!1521536 d!1922075))

(declare-fun m!6977584 () Bool)

(assert (=> bs!1521536 m!6977584))

(assert (=> b!6134439 d!1922075))

(declare-fun d!1922077 () Bool)

(declare-fun dynLambda!25378 (Int Context!10926) (InoxSet Context!10926))

(assert (=> d!1922077 (= (flatMap!1584 z!1189 lambda!334251) (dynLambda!25378 lambda!334251 (h!70862 zl!343)))))

(declare-fun lt!2332418 () Unit!157471)

(declare-fun choose!45590 ((InoxSet Context!10926) Context!10926 Int) Unit!157471)

(assert (=> d!1922077 (= lt!2332418 (choose!45590 z!1189 (h!70862 zl!343) lambda!334251))))

(assert (=> d!1922077 (= z!1189 (store ((as const (Array Context!10926 Bool)) false) (h!70862 zl!343) true))))

(assert (=> d!1922077 (= (lemmaFlatMapOnSingletonSet!1110 z!1189 (h!70862 zl!343) lambda!334251) lt!2332418)))

(declare-fun b_lambda!233509 () Bool)

(assert (=> (not b_lambda!233509) (not d!1922077)))

(declare-fun bs!1521537 () Bool)

(assert (= bs!1521537 d!1922077))

(assert (=> bs!1521537 m!6977210))

(declare-fun m!6977586 () Bool)

(assert (=> bs!1521537 m!6977586))

(declare-fun m!6977588 () Bool)

(assert (=> bs!1521537 m!6977588))

(declare-fun m!6977590 () Bool)

(assert (=> bs!1521537 m!6977590))

(assert (=> b!6134439 d!1922077))

(declare-fun d!1922079 () Bool)

(assert (=> d!1922079 (= (isEmpty!36356 (t!378011 zl!343)) ((_ is Nil!64414) (t!378011 zl!343)))))

(assert (=> b!6134438 d!1922079))

(declare-fun d!1922081 () Bool)

(declare-fun c!1103178 () Bool)

(assert (=> d!1922081 (= c!1103178 (isEmpty!36360 (t!378010 s!2326)))))

(declare-fun e!3739177 () Bool)

(assert (=> d!1922081 (= (matchZipper!2091 lt!2332357 (t!378010 s!2326)) e!3739177)))

(declare-fun b!6135038 () Bool)

(assert (=> b!6135038 (= e!3739177 (nullableZipper!1860 lt!2332357))))

(declare-fun b!6135039 () Bool)

(assert (=> b!6135039 (= e!3739177 (matchZipper!2091 (derivationStepZipper!2052 lt!2332357 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))))))

(assert (= (and d!1922081 c!1103178) b!6135038))

(assert (= (and d!1922081 (not c!1103178)) b!6135039))

(assert (=> d!1922081 m!6977520))

(declare-fun m!6977592 () Bool)

(assert (=> b!6135038 m!6977592))

(assert (=> b!6135039 m!6977524))

(assert (=> b!6135039 m!6977524))

(declare-fun m!6977594 () Bool)

(assert (=> b!6135039 m!6977594))

(assert (=> b!6135039 m!6977528))

(assert (=> b!6135039 m!6977594))

(assert (=> b!6135039 m!6977528))

(declare-fun m!6977596 () Bool)

(assert (=> b!6135039 m!6977596))

(assert (=> b!6134458 d!1922081))

(declare-fun bs!1521538 () Bool)

(declare-fun d!1922083 () Bool)

(assert (= bs!1521538 (and d!1922083 d!1922047)))

(declare-fun lambda!334294 () Int)

(assert (=> bs!1521538 (= lambda!334294 lambda!334289)))

(declare-fun bs!1521539 () Bool)

(assert (= bs!1521539 (and d!1922083 d!1922049)))

(assert (=> bs!1521539 (= lambda!334294 lambda!334292)))

(declare-fun bs!1521540 () Bool)

(assert (= bs!1521540 (and d!1922083 d!1922059)))

(assert (=> bs!1521540 (= lambda!334294 lambda!334293)))

(assert (=> d!1922083 (= (inv!83444 setElem!41476) (forall!15200 (exprs!5963 setElem!41476) lambda!334294))))

(declare-fun bs!1521541 () Bool)

(assert (= bs!1521541 d!1922083))

(declare-fun m!6977598 () Bool)

(assert (=> bs!1521541 m!6977598))

(assert (=> setNonEmpty!41476 d!1922083))

(declare-fun b!6135058 () Bool)

(declare-fun res!2542424 () Bool)

(declare-fun e!3739190 () Bool)

(assert (=> b!6135058 (=> (not res!2542424) (not e!3739190))))

(declare-fun lt!2332426 () Option!15970)

(declare-fun get!22220 (Option!15970) tuple2!66116)

(assert (=> b!6135058 (= res!2542424 (matchR!8262 (regTwo!32670 r!7292) (_2!36361 (get!22220 lt!2332426))))))

(declare-fun b!6135059 () Bool)

(declare-fun e!3739189 () Option!15970)

(declare-fun e!3739191 () Option!15970)

(assert (=> b!6135059 (= e!3739189 e!3739191)))

(declare-fun c!1103183 () Bool)

(assert (=> b!6135059 (= c!1103183 ((_ is Nil!64413) s!2326))))

(declare-fun b!6135060 () Bool)

(declare-fun res!2542422 () Bool)

(assert (=> b!6135060 (=> (not res!2542422) (not e!3739190))))

(assert (=> b!6135060 (= res!2542422 (matchR!8262 (regOne!32670 r!7292) (_1!36361 (get!22220 lt!2332426))))))

(declare-fun b!6135061 () Bool)

(declare-fun e!3739192 () Bool)

(assert (=> b!6135061 (= e!3739192 (matchR!8262 (regTwo!32670 r!7292) s!2326))))

(declare-fun b!6135062 () Bool)

(declare-fun ++!14165 (List!64537 List!64537) List!64537)

(assert (=> b!6135062 (= e!3739190 (= (++!14165 (_1!36361 (get!22220 lt!2332426)) (_2!36361 (get!22220 lt!2332426))) s!2326))))

(declare-fun b!6135063 () Bool)

(assert (=> b!6135063 (= e!3739191 None!15969)))

(declare-fun d!1922085 () Bool)

(declare-fun e!3739188 () Bool)

(assert (=> d!1922085 e!3739188))

(declare-fun res!2542425 () Bool)

(assert (=> d!1922085 (=> res!2542425 e!3739188)))

(assert (=> d!1922085 (= res!2542425 e!3739190)))

(declare-fun res!2542423 () Bool)

(assert (=> d!1922085 (=> (not res!2542423) (not e!3739190))))

(assert (=> d!1922085 (= res!2542423 (isDefined!12673 lt!2332426))))

(assert (=> d!1922085 (= lt!2332426 e!3739189)))

(declare-fun c!1103184 () Bool)

(assert (=> d!1922085 (= c!1103184 e!3739192)))

(declare-fun res!2542426 () Bool)

(assert (=> d!1922085 (=> (not res!2542426) (not e!3739192))))

(assert (=> d!1922085 (= res!2542426 (matchR!8262 (regOne!32670 r!7292) Nil!64413))))

(assert (=> d!1922085 (validRegex!7815 (regOne!32670 r!7292))))

(assert (=> d!1922085 (= (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) Nil!64413 s!2326 s!2326) lt!2332426)))

(declare-fun b!6135064 () Bool)

(assert (=> b!6135064 (= e!3739189 (Some!15969 (tuple2!66117 Nil!64413 s!2326)))))

(declare-fun b!6135065 () Bool)

(declare-fun lt!2332425 () Unit!157471)

(declare-fun lt!2332427 () Unit!157471)

(assert (=> b!6135065 (= lt!2332425 lt!2332427)))

(assert (=> b!6135065 (= (++!14165 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (t!378010 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2260 (List!64537 C!32428 List!64537 List!64537) Unit!157471)

(assert (=> b!6135065 (= lt!2332427 (lemmaMoveElementToOtherListKeepsConcatEq!2260 Nil!64413 (h!70861 s!2326) (t!378010 s!2326) s!2326))))

(assert (=> b!6135065 (= e!3739191 (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (t!378010 s!2326) s!2326))))

(declare-fun b!6135066 () Bool)

(assert (=> b!6135066 (= e!3739188 (not (isDefined!12673 lt!2332426)))))

(assert (= (and d!1922085 res!2542426) b!6135061))

(assert (= (and d!1922085 c!1103184) b!6135064))

(assert (= (and d!1922085 (not c!1103184)) b!6135059))

(assert (= (and b!6135059 c!1103183) b!6135063))

(assert (= (and b!6135059 (not c!1103183)) b!6135065))

(assert (= (and d!1922085 res!2542423) b!6135060))

(assert (= (and b!6135060 res!2542422) b!6135058))

(assert (= (and b!6135058 res!2542424) b!6135062))

(assert (= (and d!1922085 (not res!2542425)) b!6135066))

(declare-fun m!6977600 () Bool)

(assert (=> b!6135058 m!6977600))

(declare-fun m!6977602 () Bool)

(assert (=> b!6135058 m!6977602))

(assert (=> b!6135062 m!6977600))

(declare-fun m!6977604 () Bool)

(assert (=> b!6135062 m!6977604))

(declare-fun m!6977606 () Bool)

(assert (=> b!6135065 m!6977606))

(assert (=> b!6135065 m!6977606))

(declare-fun m!6977608 () Bool)

(assert (=> b!6135065 m!6977608))

(declare-fun m!6977610 () Bool)

(assert (=> b!6135065 m!6977610))

(assert (=> b!6135065 m!6977606))

(declare-fun m!6977612 () Bool)

(assert (=> b!6135065 m!6977612))

(declare-fun m!6977614 () Bool)

(assert (=> b!6135061 m!6977614))

(declare-fun m!6977616 () Bool)

(assert (=> d!1922085 m!6977616))

(declare-fun m!6977618 () Bool)

(assert (=> d!1922085 m!6977618))

(declare-fun m!6977620 () Bool)

(assert (=> d!1922085 m!6977620))

(assert (=> b!6135060 m!6977600))

(declare-fun m!6977622 () Bool)

(assert (=> b!6135060 m!6977622))

(assert (=> b!6135066 m!6977616))

(assert (=> b!6134456 d!1922085))

(declare-fun d!1922087 () Bool)

(declare-fun choose!45591 (Int) Bool)

(assert (=> d!1922087 (= (Exists!3149 lambda!334250) (choose!45591 lambda!334250))))

(declare-fun bs!1521542 () Bool)

(assert (= bs!1521542 d!1922087))

(declare-fun m!6977624 () Bool)

(assert (=> bs!1521542 m!6977624))

(assert (=> b!6134456 d!1922087))

(declare-fun bs!1521543 () Bool)

(declare-fun d!1922089 () Bool)

(assert (= bs!1521543 (and d!1922089 b!6134456)))

(declare-fun lambda!334297 () Int)

(assert (=> bs!1521543 (= lambda!334297 lambda!334249)))

(assert (=> bs!1521543 (not (= lambda!334297 lambda!334250))))

(declare-fun bs!1521544 () Bool)

(assert (= bs!1521544 (and d!1922089 b!6134880)))

(assert (=> bs!1521544 (not (= lambda!334297 lambda!334285))))

(declare-fun bs!1521545 () Bool)

(assert (= bs!1521545 (and d!1922089 b!6134888)))

(assert (=> bs!1521545 (not (= lambda!334297 lambda!334286))))

(assert (=> d!1922089 true))

(assert (=> d!1922089 true))

(assert (=> d!1922089 true))

(assert (=> d!1922089 (= (isDefined!12673 (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) Nil!64413 s!2326 s!2326)) (Exists!3149 lambda!334297))))

(declare-fun lt!2332430 () Unit!157471)

(declare-fun choose!45592 (Regex!16079 Regex!16079 List!64537) Unit!157471)

(assert (=> d!1922089 (= lt!2332430 (choose!45592 (regOne!32670 r!7292) (regTwo!32670 r!7292) s!2326))))

(assert (=> d!1922089 (validRegex!7815 (regOne!32670 r!7292))))

(assert (=> d!1922089 (= (lemmaFindConcatSeparationEquivalentToExists!2148 (regOne!32670 r!7292) (regTwo!32670 r!7292) s!2326) lt!2332430)))

(declare-fun bs!1521546 () Bool)

(assert (= bs!1521546 d!1922089))

(assert (=> bs!1521546 m!6977176))

(declare-fun m!6977626 () Bool)

(assert (=> bs!1521546 m!6977626))

(declare-fun m!6977628 () Bool)

(assert (=> bs!1521546 m!6977628))

(assert (=> bs!1521546 m!6977620))

(assert (=> bs!1521546 m!6977176))

(assert (=> bs!1521546 m!6977178))

(assert (=> b!6134456 d!1922089))

(declare-fun bs!1521547 () Bool)

(declare-fun d!1922091 () Bool)

(assert (= bs!1521547 (and d!1922091 b!6134456)))

(declare-fun lambda!334302 () Int)

(assert (=> bs!1521547 (not (= lambda!334302 lambda!334250))))

(declare-fun bs!1521548 () Bool)

(assert (= bs!1521548 (and d!1922091 b!6134888)))

(assert (=> bs!1521548 (not (= lambda!334302 lambda!334286))))

(declare-fun bs!1521549 () Bool)

(assert (= bs!1521549 (and d!1922091 d!1922089)))

(assert (=> bs!1521549 (= lambda!334302 lambda!334297)))

(assert (=> bs!1521547 (= lambda!334302 lambda!334249)))

(declare-fun bs!1521550 () Bool)

(assert (= bs!1521550 (and d!1922091 b!6134880)))

(assert (=> bs!1521550 (not (= lambda!334302 lambda!334285))))

(assert (=> d!1922091 true))

(assert (=> d!1922091 true))

(assert (=> d!1922091 true))

(declare-fun lambda!334303 () Int)

(assert (=> bs!1521547 (= lambda!334303 lambda!334250)))

(assert (=> bs!1521548 (= lambda!334303 lambda!334286)))

(assert (=> bs!1521549 (not (= lambda!334303 lambda!334297))))

(assert (=> bs!1521547 (not (= lambda!334303 lambda!334249))))

(assert (=> bs!1521550 (not (= lambda!334303 lambda!334285))))

(declare-fun bs!1521551 () Bool)

(assert (= bs!1521551 d!1922091))

(assert (=> bs!1521551 (not (= lambda!334303 lambda!334302))))

(assert (=> d!1922091 true))

(assert (=> d!1922091 true))

(assert (=> d!1922091 true))

(assert (=> d!1922091 (= (Exists!3149 lambda!334302) (Exists!3149 lambda!334303))))

(declare-fun lt!2332433 () Unit!157471)

(declare-fun choose!45593 (Regex!16079 Regex!16079 List!64537) Unit!157471)

(assert (=> d!1922091 (= lt!2332433 (choose!45593 (regOne!32670 r!7292) (regTwo!32670 r!7292) s!2326))))

(assert (=> d!1922091 (validRegex!7815 (regOne!32670 r!7292))))

(assert (=> d!1922091 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1686 (regOne!32670 r!7292) (regTwo!32670 r!7292) s!2326) lt!2332433)))

(declare-fun m!6977630 () Bool)

(assert (=> bs!1521551 m!6977630))

(declare-fun m!6977632 () Bool)

(assert (=> bs!1521551 m!6977632))

(declare-fun m!6977634 () Bool)

(assert (=> bs!1521551 m!6977634))

(assert (=> bs!1521551 m!6977620))

(assert (=> b!6134456 d!1922091))

(declare-fun d!1922093 () Bool)

(assert (=> d!1922093 (= (Exists!3149 lambda!334249) (choose!45591 lambda!334249))))

(declare-fun bs!1521552 () Bool)

(assert (= bs!1521552 d!1922093))

(declare-fun m!6977636 () Bool)

(assert (=> bs!1521552 m!6977636))

(assert (=> b!6134456 d!1922093))

(declare-fun d!1922095 () Bool)

(declare-fun isEmpty!36361 (Option!15970) Bool)

(assert (=> d!1922095 (= (isDefined!12673 (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) Nil!64413 s!2326 s!2326)) (not (isEmpty!36361 (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) Nil!64413 s!2326 s!2326))))))

(declare-fun bs!1521553 () Bool)

(assert (= bs!1521553 d!1922095))

(assert (=> bs!1521553 m!6977176))

(declare-fun m!6977638 () Bool)

(assert (=> bs!1521553 m!6977638))

(assert (=> b!6134456 d!1922095))

(declare-fun d!1922097 () Bool)

(declare-fun e!3739201 () Bool)

(assert (=> d!1922097 e!3739201))

(declare-fun res!2542441 () Bool)

(assert (=> d!1922097 (=> (not res!2542441) (not e!3739201))))

(declare-fun lt!2332436 () List!64538)

(declare-fun noDuplicate!1926 (List!64538) Bool)

(assert (=> d!1922097 (= res!2542441 (noDuplicate!1926 lt!2332436))))

(declare-fun choose!45594 ((InoxSet Context!10926)) List!64538)

(assert (=> d!1922097 (= lt!2332436 (choose!45594 z!1189))))

(assert (=> d!1922097 (= (toList!9863 z!1189) lt!2332436)))

(declare-fun b!6135081 () Bool)

(declare-fun content!11981 (List!64538) (InoxSet Context!10926))

(assert (=> b!6135081 (= e!3739201 (= (content!11981 lt!2332436) z!1189))))

(assert (= (and d!1922097 res!2542441) b!6135081))

(declare-fun m!6977640 () Bool)

(assert (=> d!1922097 m!6977640))

(declare-fun m!6977642 () Bool)

(assert (=> d!1922097 m!6977642))

(declare-fun m!6977644 () Bool)

(assert (=> b!6135081 m!6977644))

(assert (=> b!6134436 d!1922097))

(declare-fun d!1922099 () Bool)

(declare-fun c!1103185 () Bool)

(assert (=> d!1922099 (= c!1103185 (isEmpty!36360 (t!378010 s!2326)))))

(declare-fun e!3739202 () Bool)

(assert (=> d!1922099 (= (matchZipper!2091 lt!2332354 (t!378010 s!2326)) e!3739202)))

(declare-fun b!6135082 () Bool)

(assert (=> b!6135082 (= e!3739202 (nullableZipper!1860 lt!2332354))))

(declare-fun b!6135083 () Bool)

(assert (=> b!6135083 (= e!3739202 (matchZipper!2091 (derivationStepZipper!2052 lt!2332354 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))))))

(assert (= (and d!1922099 c!1103185) b!6135082))

(assert (= (and d!1922099 (not c!1103185)) b!6135083))

(assert (=> d!1922099 m!6977520))

(declare-fun m!6977646 () Bool)

(assert (=> b!6135082 m!6977646))

(assert (=> b!6135083 m!6977524))

(assert (=> b!6135083 m!6977524))

(declare-fun m!6977648 () Bool)

(assert (=> b!6135083 m!6977648))

(assert (=> b!6135083 m!6977528))

(assert (=> b!6135083 m!6977648))

(assert (=> b!6135083 m!6977528))

(declare-fun m!6977650 () Bool)

(assert (=> b!6135083 m!6977650))

(assert (=> b!6134455 d!1922099))

(declare-fun bs!1521554 () Bool)

(declare-fun d!1922101 () Bool)

(assert (= bs!1521554 (and d!1922101 d!1922047)))

(declare-fun lambda!334306 () Int)

(assert (=> bs!1521554 (= lambda!334306 lambda!334289)))

(declare-fun bs!1521555 () Bool)

(assert (= bs!1521555 (and d!1922101 d!1922049)))

(assert (=> bs!1521555 (= lambda!334306 lambda!334292)))

(declare-fun bs!1521556 () Bool)

(assert (= bs!1521556 (and d!1922101 d!1922059)))

(assert (=> bs!1521556 (= lambda!334306 lambda!334293)))

(declare-fun bs!1521557 () Bool)

(assert (= bs!1521557 (and d!1922101 d!1922083)))

(assert (=> bs!1521557 (= lambda!334306 lambda!334294)))

(declare-fun b!6135104 () Bool)

(declare-fun e!3739219 () Bool)

(declare-fun lt!2332439 () Regex!16079)

(declare-fun isEmptyLang!1506 (Regex!16079) Bool)

(assert (=> b!6135104 (= e!3739219 (isEmptyLang!1506 lt!2332439))))

(declare-fun e!3739218 () Bool)

(assert (=> d!1922101 e!3739218))

(declare-fun res!2542447 () Bool)

(assert (=> d!1922101 (=> (not res!2542447) (not e!3739218))))

(assert (=> d!1922101 (= res!2542447 (validRegex!7815 lt!2332439))))

(declare-fun e!3739220 () Regex!16079)

(assert (=> d!1922101 (= lt!2332439 e!3739220)))

(declare-fun c!1103196 () Bool)

(declare-fun e!3739215 () Bool)

(assert (=> d!1922101 (= c!1103196 e!3739215)))

(declare-fun res!2542446 () Bool)

(assert (=> d!1922101 (=> (not res!2542446) (not e!3739215))))

(assert (=> d!1922101 (= res!2542446 ((_ is Cons!64412) (unfocusZipperList!1500 zl!343)))))

(assert (=> d!1922101 (forall!15200 (unfocusZipperList!1500 zl!343) lambda!334306)))

(assert (=> d!1922101 (= (generalisedUnion!1923 (unfocusZipperList!1500 zl!343)) lt!2332439)))

(declare-fun b!6135105 () Bool)

(declare-fun e!3739216 () Bool)

(assert (=> b!6135105 (= e!3739216 (= lt!2332439 (head!12680 (unfocusZipperList!1500 zl!343))))))

(declare-fun b!6135106 () Bool)

(assert (=> b!6135106 (= e!3739219 e!3739216)))

(declare-fun c!1103197 () Bool)

(assert (=> b!6135106 (= c!1103197 (isEmpty!36357 (tail!11765 (unfocusZipperList!1500 zl!343))))))

(declare-fun b!6135107 () Bool)

(assert (=> b!6135107 (= e!3739220 (h!70860 (unfocusZipperList!1500 zl!343)))))

(declare-fun b!6135108 () Bool)

(declare-fun e!3739217 () Regex!16079)

(assert (=> b!6135108 (= e!3739217 (Union!16079 (h!70860 (unfocusZipperList!1500 zl!343)) (generalisedUnion!1923 (t!378009 (unfocusZipperList!1500 zl!343)))))))

(declare-fun b!6135109 () Bool)

(assert (=> b!6135109 (= e!3739218 e!3739219)))

(declare-fun c!1103195 () Bool)

(assert (=> b!6135109 (= c!1103195 (isEmpty!36357 (unfocusZipperList!1500 zl!343)))))

(declare-fun b!6135110 () Bool)

(assert (=> b!6135110 (= e!3739215 (isEmpty!36357 (t!378009 (unfocusZipperList!1500 zl!343))))))

(declare-fun b!6135111 () Bool)

(assert (=> b!6135111 (= e!3739217 EmptyLang!16079)))

(declare-fun b!6135112 () Bool)

(assert (=> b!6135112 (= e!3739220 e!3739217)))

(declare-fun c!1103194 () Bool)

(assert (=> b!6135112 (= c!1103194 ((_ is Cons!64412) (unfocusZipperList!1500 zl!343)))))

(declare-fun b!6135113 () Bool)

(declare-fun isUnion!936 (Regex!16079) Bool)

(assert (=> b!6135113 (= e!3739216 (isUnion!936 lt!2332439))))

(assert (= (and d!1922101 res!2542446) b!6135110))

(assert (= (and d!1922101 c!1103196) b!6135107))

(assert (= (and d!1922101 (not c!1103196)) b!6135112))

(assert (= (and b!6135112 c!1103194) b!6135108))

(assert (= (and b!6135112 (not c!1103194)) b!6135111))

(assert (= (and d!1922101 res!2542447) b!6135109))

(assert (= (and b!6135109 c!1103195) b!6135104))

(assert (= (and b!6135109 (not c!1103195)) b!6135106))

(assert (= (and b!6135106 c!1103197) b!6135105))

(assert (= (and b!6135106 (not c!1103197)) b!6135113))

(declare-fun m!6977652 () Bool)

(assert (=> b!6135110 m!6977652))

(assert (=> b!6135109 m!6977200))

(declare-fun m!6977654 () Bool)

(assert (=> b!6135109 m!6977654))

(assert (=> b!6135106 m!6977200))

(declare-fun m!6977656 () Bool)

(assert (=> b!6135106 m!6977656))

(assert (=> b!6135106 m!6977656))

(declare-fun m!6977658 () Bool)

(assert (=> b!6135106 m!6977658))

(declare-fun m!6977660 () Bool)

(assert (=> b!6135108 m!6977660))

(declare-fun m!6977662 () Bool)

(assert (=> b!6135113 m!6977662))

(declare-fun m!6977664 () Bool)

(assert (=> d!1922101 m!6977664))

(assert (=> d!1922101 m!6977200))

(declare-fun m!6977666 () Bool)

(assert (=> d!1922101 m!6977666))

(declare-fun m!6977668 () Bool)

(assert (=> b!6135104 m!6977668))

(assert (=> b!6135105 m!6977200))

(declare-fun m!6977670 () Bool)

(assert (=> b!6135105 m!6977670))

(assert (=> b!6134444 d!1922101))

(declare-fun bs!1521558 () Bool)

(declare-fun d!1922103 () Bool)

(assert (= bs!1521558 (and d!1922103 d!1922083)))

(declare-fun lambda!334309 () Int)

(assert (=> bs!1521558 (= lambda!334309 lambda!334294)))

(declare-fun bs!1521559 () Bool)

(assert (= bs!1521559 (and d!1922103 d!1922049)))

(assert (=> bs!1521559 (= lambda!334309 lambda!334292)))

(declare-fun bs!1521560 () Bool)

(assert (= bs!1521560 (and d!1922103 d!1922101)))

(assert (=> bs!1521560 (= lambda!334309 lambda!334306)))

(declare-fun bs!1521561 () Bool)

(assert (= bs!1521561 (and d!1922103 d!1922047)))

(assert (=> bs!1521561 (= lambda!334309 lambda!334289)))

(declare-fun bs!1521562 () Bool)

(assert (= bs!1521562 (and d!1922103 d!1922059)))

(assert (=> bs!1521562 (= lambda!334309 lambda!334293)))

(declare-fun lt!2332442 () List!64536)

(assert (=> d!1922103 (forall!15200 lt!2332442 lambda!334309)))

(declare-fun e!3739223 () List!64536)

(assert (=> d!1922103 (= lt!2332442 e!3739223)))

(declare-fun c!1103200 () Bool)

(assert (=> d!1922103 (= c!1103200 ((_ is Cons!64414) zl!343))))

(assert (=> d!1922103 (= (unfocusZipperList!1500 zl!343) lt!2332442)))

(declare-fun b!6135118 () Bool)

(assert (=> b!6135118 (= e!3739223 (Cons!64412 (generalisedConcat!1676 (exprs!5963 (h!70862 zl!343))) (unfocusZipperList!1500 (t!378011 zl!343))))))

(declare-fun b!6135119 () Bool)

(assert (=> b!6135119 (= e!3739223 Nil!64412)))

(assert (= (and d!1922103 c!1103200) b!6135118))

(assert (= (and d!1922103 (not c!1103200)) b!6135119))

(declare-fun m!6977672 () Bool)

(assert (=> d!1922103 m!6977672))

(assert (=> b!6135118 m!6977188))

(declare-fun m!6977674 () Bool)

(assert (=> b!6135118 m!6977674))

(assert (=> b!6134444 d!1922103))

(declare-fun b!6135120 () Bool)

(declare-fun e!3739224 () (InoxSet Context!10926))

(declare-fun e!3739226 () (InoxSet Context!10926))

(assert (=> b!6135120 (= e!3739224 e!3739226)))

(declare-fun c!1103203 () Bool)

(assert (=> b!6135120 (= c!1103203 ((_ is Union!16079) (regTwo!32671 (regOne!32670 r!7292))))))

(declare-fun c!1103201 () Bool)

(declare-fun c!1103204 () Bool)

(declare-fun call!509065 () (InoxSet Context!10926))

(declare-fun bm!509059 () Bool)

(declare-fun call!509064 () List!64536)

(assert (=> bm!509059 (= call!509065 (derivationStepZipperDown!1327 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292)))))) (ite (or c!1103203 c!1103201) lt!2332346 (Context!10927 call!509064)) (h!70861 s!2326)))))

(declare-fun b!6135121 () Bool)

(declare-fun e!3739229 () Bool)

(assert (=> b!6135121 (= e!3739229 (nullable!6072 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))))))

(declare-fun b!6135122 () Bool)

(declare-fun e!3739228 () (InoxSet Context!10926))

(declare-fun call!509066 () (InoxSet Context!10926))

(assert (=> b!6135122 (= e!3739228 call!509066)))

(declare-fun b!6135123 () Bool)

(declare-fun call!509069 () (InoxSet Context!10926))

(assert (=> b!6135123 (= e!3739226 ((_ map or) call!509065 call!509069))))

(declare-fun b!6135124 () Bool)

(assert (=> b!6135124 (= e!3739228 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135125 () Bool)

(declare-fun e!3739227 () (InoxSet Context!10926))

(declare-fun call!509068 () (InoxSet Context!10926))

(assert (=> b!6135125 (= e!3739227 ((_ map or) call!509069 call!509068))))

(declare-fun bm!509061 () Bool)

(declare-fun call!509067 () List!64536)

(assert (=> bm!509061 (= call!509069 (derivationStepZipperDown!1327 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))) (ite c!1103203 lt!2332346 (Context!10927 call!509067)) (h!70861 s!2326)))))

(declare-fun b!6135126 () Bool)

(assert (=> b!6135126 (= c!1103201 e!3739229)))

(declare-fun res!2542448 () Bool)

(assert (=> b!6135126 (=> (not res!2542448) (not e!3739229))))

(assert (=> b!6135126 (= res!2542448 ((_ is Concat!24924) (regTwo!32671 (regOne!32670 r!7292))))))

(assert (=> b!6135126 (= e!3739226 e!3739227)))

(declare-fun b!6135127 () Bool)

(declare-fun e!3739225 () (InoxSet Context!10926))

(assert (=> b!6135127 (= e!3739225 call!509066)))

(declare-fun bm!509062 () Bool)

(assert (=> bm!509062 (= call!509068 call!509065)))

(declare-fun bm!509063 () Bool)

(assert (=> bm!509063 (= call!509067 ($colon$colon!1956 (exprs!5963 lt!2332346) (ite (or c!1103201 c!1103204) (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (regTwo!32671 (regOne!32670 r!7292)))))))

(declare-fun b!6135128 () Bool)

(assert (=> b!6135128 (= e!3739227 e!3739225)))

(assert (=> b!6135128 (= c!1103204 ((_ is Concat!24924) (regTwo!32671 (regOne!32670 r!7292))))))

(declare-fun b!6135129 () Bool)

(declare-fun c!1103202 () Bool)

(assert (=> b!6135129 (= c!1103202 ((_ is Star!16079) (regTwo!32671 (regOne!32670 r!7292))))))

(assert (=> b!6135129 (= e!3739225 e!3739228)))

(declare-fun bm!509064 () Bool)

(assert (=> bm!509064 (= call!509066 call!509068)))

(declare-fun b!6135130 () Bool)

(assert (=> b!6135130 (= e!3739224 (store ((as const (Array Context!10926 Bool)) false) lt!2332346 true))))

(declare-fun d!1922105 () Bool)

(declare-fun c!1103205 () Bool)

(assert (=> d!1922105 (= c!1103205 (and ((_ is ElementMatch!16079) (regTwo!32671 (regOne!32670 r!7292))) (= (c!1103007 (regTwo!32671 (regOne!32670 r!7292))) (h!70861 s!2326))))))

(assert (=> d!1922105 (= (derivationStepZipperDown!1327 (regTwo!32671 (regOne!32670 r!7292)) lt!2332346 (h!70861 s!2326)) e!3739224)))

(declare-fun bm!509060 () Bool)

(assert (=> bm!509060 (= call!509064 call!509067)))

(assert (= (and d!1922105 c!1103205) b!6135130))

(assert (= (and d!1922105 (not c!1103205)) b!6135120))

(assert (= (and b!6135120 c!1103203) b!6135123))

(assert (= (and b!6135120 (not c!1103203)) b!6135126))

(assert (= (and b!6135126 res!2542448) b!6135121))

(assert (= (and b!6135126 c!1103201) b!6135125))

(assert (= (and b!6135126 (not c!1103201)) b!6135128))

(assert (= (and b!6135128 c!1103204) b!6135127))

(assert (= (and b!6135128 (not c!1103204)) b!6135129))

(assert (= (and b!6135129 c!1103202) b!6135122))

(assert (= (and b!6135129 (not c!1103202)) b!6135124))

(assert (= (or b!6135127 b!6135122) bm!509060))

(assert (= (or b!6135127 b!6135122) bm!509064))

(assert (= (or b!6135125 bm!509060) bm!509063))

(assert (= (or b!6135125 bm!509064) bm!509062))

(assert (= (or b!6135123 b!6135125) bm!509061))

(assert (= (or b!6135123 bm!509062) bm!509059))

(declare-fun m!6977676 () Bool)

(assert (=> bm!509061 m!6977676))

(declare-fun m!6977678 () Bool)

(assert (=> bm!509063 m!6977678))

(declare-fun m!6977680 () Bool)

(assert (=> bm!509059 m!6977680))

(declare-fun m!6977682 () Bool)

(assert (=> b!6135121 m!6977682))

(assert (=> b!6135130 m!6977578))

(assert (=> b!6134435 d!1922105))

(declare-fun b!6135131 () Bool)

(declare-fun e!3739230 () (InoxSet Context!10926))

(declare-fun e!3739232 () (InoxSet Context!10926))

(assert (=> b!6135131 (= e!3739230 e!3739232)))

(declare-fun c!1103208 () Bool)

(assert (=> b!6135131 (= c!1103208 ((_ is Union!16079) (regOne!32671 (regOne!32670 r!7292))))))

(declare-fun c!1103206 () Bool)

(declare-fun call!509071 () (InoxSet Context!10926))

(declare-fun bm!509065 () Bool)

(declare-fun c!1103209 () Bool)

(declare-fun call!509070 () List!64536)

(assert (=> bm!509065 (= call!509071 (derivationStepZipperDown!1327 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292)))))) (ite (or c!1103208 c!1103206) lt!2332346 (Context!10927 call!509070)) (h!70861 s!2326)))))

(declare-fun b!6135132 () Bool)

(declare-fun e!3739235 () Bool)

(assert (=> b!6135132 (= e!3739235 (nullable!6072 (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))))))

(declare-fun b!6135133 () Bool)

(declare-fun e!3739234 () (InoxSet Context!10926))

(declare-fun call!509072 () (InoxSet Context!10926))

(assert (=> b!6135133 (= e!3739234 call!509072)))

(declare-fun b!6135134 () Bool)

(declare-fun call!509075 () (InoxSet Context!10926))

(assert (=> b!6135134 (= e!3739232 ((_ map or) call!509071 call!509075))))

(declare-fun b!6135135 () Bool)

(assert (=> b!6135135 (= e!3739234 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135136 () Bool)

(declare-fun e!3739233 () (InoxSet Context!10926))

(declare-fun call!509074 () (InoxSet Context!10926))

(assert (=> b!6135136 (= e!3739233 ((_ map or) call!509075 call!509074))))

(declare-fun bm!509067 () Bool)

(declare-fun call!509073 () List!64536)

(assert (=> bm!509067 (= call!509075 (derivationStepZipperDown!1327 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))) (ite c!1103208 lt!2332346 (Context!10927 call!509073)) (h!70861 s!2326)))))

(declare-fun b!6135137 () Bool)

(assert (=> b!6135137 (= c!1103206 e!3739235)))

(declare-fun res!2542449 () Bool)

(assert (=> b!6135137 (=> (not res!2542449) (not e!3739235))))

(assert (=> b!6135137 (= res!2542449 ((_ is Concat!24924) (regOne!32671 (regOne!32670 r!7292))))))

(assert (=> b!6135137 (= e!3739232 e!3739233)))

(declare-fun b!6135138 () Bool)

(declare-fun e!3739231 () (InoxSet Context!10926))

(assert (=> b!6135138 (= e!3739231 call!509072)))

(declare-fun bm!509068 () Bool)

(assert (=> bm!509068 (= call!509074 call!509071)))

(declare-fun bm!509069 () Bool)

(assert (=> bm!509069 (= call!509073 ($colon$colon!1956 (exprs!5963 lt!2332346) (ite (or c!1103206 c!1103209) (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (regOne!32671 (regOne!32670 r!7292)))))))

(declare-fun b!6135139 () Bool)

(assert (=> b!6135139 (= e!3739233 e!3739231)))

(assert (=> b!6135139 (= c!1103209 ((_ is Concat!24924) (regOne!32671 (regOne!32670 r!7292))))))

(declare-fun b!6135140 () Bool)

(declare-fun c!1103207 () Bool)

(assert (=> b!6135140 (= c!1103207 ((_ is Star!16079) (regOne!32671 (regOne!32670 r!7292))))))

(assert (=> b!6135140 (= e!3739231 e!3739234)))

(declare-fun bm!509070 () Bool)

(assert (=> bm!509070 (= call!509072 call!509074)))

(declare-fun b!6135141 () Bool)

(assert (=> b!6135141 (= e!3739230 (store ((as const (Array Context!10926 Bool)) false) lt!2332346 true))))

(declare-fun d!1922107 () Bool)

(declare-fun c!1103210 () Bool)

(assert (=> d!1922107 (= c!1103210 (and ((_ is ElementMatch!16079) (regOne!32671 (regOne!32670 r!7292))) (= (c!1103007 (regOne!32671 (regOne!32670 r!7292))) (h!70861 s!2326))))))

(assert (=> d!1922107 (= (derivationStepZipperDown!1327 (regOne!32671 (regOne!32670 r!7292)) lt!2332346 (h!70861 s!2326)) e!3739230)))

(declare-fun bm!509066 () Bool)

(assert (=> bm!509066 (= call!509070 call!509073)))

(assert (= (and d!1922107 c!1103210) b!6135141))

(assert (= (and d!1922107 (not c!1103210)) b!6135131))

(assert (= (and b!6135131 c!1103208) b!6135134))

(assert (= (and b!6135131 (not c!1103208)) b!6135137))

(assert (= (and b!6135137 res!2542449) b!6135132))

(assert (= (and b!6135137 c!1103206) b!6135136))

(assert (= (and b!6135137 (not c!1103206)) b!6135139))

(assert (= (and b!6135139 c!1103209) b!6135138))

(assert (= (and b!6135139 (not c!1103209)) b!6135140))

(assert (= (and b!6135140 c!1103207) b!6135133))

(assert (= (and b!6135140 (not c!1103207)) b!6135135))

(assert (= (or b!6135138 b!6135133) bm!509066))

(assert (= (or b!6135138 b!6135133) bm!509070))

(assert (= (or b!6135136 bm!509066) bm!509069))

(assert (= (or b!6135136 bm!509070) bm!509068))

(assert (= (or b!6135134 b!6135136) bm!509067))

(assert (= (or b!6135134 bm!509068) bm!509065))

(declare-fun m!6977684 () Bool)

(assert (=> bm!509067 m!6977684))

(declare-fun m!6977686 () Bool)

(assert (=> bm!509069 m!6977686))

(declare-fun m!6977688 () Bool)

(assert (=> bm!509065 m!6977688))

(declare-fun m!6977690 () Bool)

(assert (=> b!6135132 m!6977690))

(assert (=> b!6135141 m!6977578))

(assert (=> b!6134435 d!1922107))

(declare-fun d!1922109 () Bool)

(declare-fun e!3739236 () Bool)

(assert (=> d!1922109 (= (matchZipper!2091 ((_ map or) lt!2332344 lt!2332357) (t!378010 s!2326)) e!3739236)))

(declare-fun res!2542450 () Bool)

(assert (=> d!1922109 (=> res!2542450 e!3739236)))

(assert (=> d!1922109 (= res!2542450 (matchZipper!2091 lt!2332344 (t!378010 s!2326)))))

(declare-fun lt!2332443 () Unit!157471)

(assert (=> d!1922109 (= lt!2332443 (choose!45588 lt!2332344 lt!2332357 (t!378010 s!2326)))))

(assert (=> d!1922109 (= (lemmaZipperConcatMatchesSameAsBothZippers!910 lt!2332344 lt!2332357 (t!378010 s!2326)) lt!2332443)))

(declare-fun b!6135142 () Bool)

(assert (=> b!6135142 (= e!3739236 (matchZipper!2091 lt!2332357 (t!378010 s!2326)))))

(assert (= (and d!1922109 (not res!2542450)) b!6135142))

(assert (=> d!1922109 m!6977198))

(assert (=> d!1922109 m!6977196))

(declare-fun m!6977692 () Bool)

(assert (=> d!1922109 m!6977692))

(assert (=> b!6135142 m!6977242))

(assert (=> b!6134443 d!1922109))

(assert (=> b!6134443 d!1922051))

(declare-fun d!1922111 () Bool)

(declare-fun c!1103211 () Bool)

(assert (=> d!1922111 (= c!1103211 (isEmpty!36360 (t!378010 s!2326)))))

(declare-fun e!3739237 () Bool)

(assert (=> d!1922111 (= (matchZipper!2091 ((_ map or) lt!2332344 lt!2332357) (t!378010 s!2326)) e!3739237)))

(declare-fun b!6135143 () Bool)

(assert (=> b!6135143 (= e!3739237 (nullableZipper!1860 ((_ map or) lt!2332344 lt!2332357)))))

(declare-fun b!6135144 () Bool)

(assert (=> b!6135144 (= e!3739237 (matchZipper!2091 (derivationStepZipper!2052 ((_ map or) lt!2332344 lt!2332357) (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))))))

(assert (= (and d!1922111 c!1103211) b!6135143))

(assert (= (and d!1922111 (not c!1103211)) b!6135144))

(assert (=> d!1922111 m!6977520))

(declare-fun m!6977694 () Bool)

(assert (=> b!6135143 m!6977694))

(assert (=> b!6135144 m!6977524))

(assert (=> b!6135144 m!6977524))

(declare-fun m!6977696 () Bool)

(assert (=> b!6135144 m!6977696))

(assert (=> b!6135144 m!6977528))

(assert (=> b!6135144 m!6977696))

(assert (=> b!6135144 m!6977528))

(declare-fun m!6977698 () Bool)

(assert (=> b!6135144 m!6977698))

(assert (=> b!6134443 d!1922111))

(declare-fun c!1103217 () Bool)

(declare-fun c!1103216 () Bool)

(declare-fun bm!509077 () Bool)

(declare-fun call!509083 () Bool)

(assert (=> bm!509077 (= call!509083 (validRegex!7815 (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))))))

(declare-fun b!6135163 () Bool)

(declare-fun res!2542461 () Bool)

(declare-fun e!3739252 () Bool)

(assert (=> b!6135163 (=> res!2542461 e!3739252)))

(assert (=> b!6135163 (= res!2542461 (not ((_ is Concat!24924) r!7292)))))

(declare-fun e!3739254 () Bool)

(assert (=> b!6135163 (= e!3739254 e!3739252)))

(declare-fun b!6135164 () Bool)

(declare-fun res!2542463 () Bool)

(declare-fun e!3739257 () Bool)

(assert (=> b!6135164 (=> (not res!2542463) (not e!3739257))))

(declare-fun call!509082 () Bool)

(assert (=> b!6135164 (= res!2542463 call!509082)))

(assert (=> b!6135164 (= e!3739254 e!3739257)))

(declare-fun b!6135165 () Bool)

(declare-fun e!3739256 () Bool)

(declare-fun e!3739255 () Bool)

(assert (=> b!6135165 (= e!3739256 e!3739255)))

(declare-fun res!2542465 () Bool)

(assert (=> b!6135165 (= res!2542465 (not (nullable!6072 (reg!16408 r!7292))))))

(assert (=> b!6135165 (=> (not res!2542465) (not e!3739255))))

(declare-fun b!6135166 () Bool)

(assert (=> b!6135166 (= e!3739256 e!3739254)))

(assert (=> b!6135166 (= c!1103216 ((_ is Union!16079) r!7292))))

(declare-fun b!6135168 () Bool)

(declare-fun e!3739258 () Bool)

(assert (=> b!6135168 (= e!3739258 e!3739256)))

(assert (=> b!6135168 (= c!1103217 ((_ is Star!16079) r!7292))))

(declare-fun b!6135169 () Bool)

(declare-fun e!3739253 () Bool)

(assert (=> b!6135169 (= e!3739252 e!3739253)))

(declare-fun res!2542462 () Bool)

(assert (=> b!6135169 (=> (not res!2542462) (not e!3739253))))

(assert (=> b!6135169 (= res!2542462 call!509082)))

(declare-fun b!6135170 () Bool)

(assert (=> b!6135170 (= e!3739255 call!509083)))

(declare-fun b!6135171 () Bool)

(declare-fun call!509084 () Bool)

(assert (=> b!6135171 (= e!3739257 call!509084)))

(declare-fun d!1922113 () Bool)

(declare-fun res!2542464 () Bool)

(assert (=> d!1922113 (=> res!2542464 e!3739258)))

(assert (=> d!1922113 (= res!2542464 ((_ is ElementMatch!16079) r!7292))))

(assert (=> d!1922113 (= (validRegex!7815 r!7292) e!3739258)))

(declare-fun b!6135167 () Bool)

(assert (=> b!6135167 (= e!3739253 call!509084)))

(declare-fun bm!509078 () Bool)

(assert (=> bm!509078 (= call!509082 call!509083)))

(declare-fun bm!509079 () Bool)

(assert (=> bm!509079 (= call!509084 (validRegex!7815 (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))))))

(assert (= (and d!1922113 (not res!2542464)) b!6135168))

(assert (= (and b!6135168 c!1103217) b!6135165))

(assert (= (and b!6135168 (not c!1103217)) b!6135166))

(assert (= (and b!6135165 res!2542465) b!6135170))

(assert (= (and b!6135166 c!1103216) b!6135164))

(assert (= (and b!6135166 (not c!1103216)) b!6135163))

(assert (= (and b!6135164 res!2542463) b!6135171))

(assert (= (and b!6135163 (not res!2542461)) b!6135169))

(assert (= (and b!6135169 res!2542462) b!6135167))

(assert (= (or b!6135171 b!6135167) bm!509079))

(assert (= (or b!6135164 b!6135169) bm!509078))

(assert (= (or b!6135170 bm!509078) bm!509077))

(declare-fun m!6977700 () Bool)

(assert (=> bm!509077 m!6977700))

(declare-fun m!6977702 () Bool)

(assert (=> b!6135165 m!6977702))

(declare-fun m!6977704 () Bool)

(assert (=> bm!509079 m!6977704))

(assert (=> start!612746 d!1922113))

(declare-fun d!1922115 () Bool)

(declare-fun lt!2332446 () Regex!16079)

(assert (=> d!1922115 (validRegex!7815 lt!2332446)))

(assert (=> d!1922115 (= lt!2332446 (generalisedUnion!1923 (unfocusZipperList!1500 zl!343)))))

(assert (=> d!1922115 (= (unfocusZipper!1821 zl!343) lt!2332446)))

(declare-fun bs!1521563 () Bool)

(assert (= bs!1521563 d!1922115))

(declare-fun m!6977706 () Bool)

(assert (=> bs!1521563 m!6977706))

(assert (=> bs!1521563 m!6977200))

(assert (=> bs!1521563 m!6977200))

(assert (=> bs!1521563 m!6977202))

(assert (=> b!6134453 d!1922115))

(assert (=> b!6134452 d!1922099))

(declare-fun b!6135183 () Bool)

(declare-fun e!3739261 () Bool)

(declare-fun tp!1714314 () Bool)

(declare-fun tp!1714311 () Bool)

(assert (=> b!6135183 (= e!3739261 (and tp!1714314 tp!1714311))))

(assert (=> b!6134457 (= tp!1714239 e!3739261)))

(declare-fun b!6135184 () Bool)

(declare-fun tp!1714313 () Bool)

(assert (=> b!6135184 (= e!3739261 tp!1714313)))

(declare-fun b!6135185 () Bool)

(declare-fun tp!1714315 () Bool)

(declare-fun tp!1714312 () Bool)

(assert (=> b!6135185 (= e!3739261 (and tp!1714315 tp!1714312))))

(declare-fun b!6135182 () Bool)

(assert (=> b!6135182 (= e!3739261 tp_is_empty!41411)))

(assert (= (and b!6134457 ((_ is ElementMatch!16079) (regOne!32671 r!7292))) b!6135182))

(assert (= (and b!6134457 ((_ is Concat!24924) (regOne!32671 r!7292))) b!6135183))

(assert (= (and b!6134457 ((_ is Star!16079) (regOne!32671 r!7292))) b!6135184))

(assert (= (and b!6134457 ((_ is Union!16079) (regOne!32671 r!7292))) b!6135185))

(declare-fun b!6135187 () Bool)

(declare-fun e!3739262 () Bool)

(declare-fun tp!1714319 () Bool)

(declare-fun tp!1714316 () Bool)

(assert (=> b!6135187 (= e!3739262 (and tp!1714319 tp!1714316))))

(assert (=> b!6134457 (= tp!1714240 e!3739262)))

(declare-fun b!6135188 () Bool)

(declare-fun tp!1714318 () Bool)

(assert (=> b!6135188 (= e!3739262 tp!1714318)))

(declare-fun b!6135189 () Bool)

(declare-fun tp!1714320 () Bool)

(declare-fun tp!1714317 () Bool)

(assert (=> b!6135189 (= e!3739262 (and tp!1714320 tp!1714317))))

(declare-fun b!6135186 () Bool)

(assert (=> b!6135186 (= e!3739262 tp_is_empty!41411)))

(assert (= (and b!6134457 ((_ is ElementMatch!16079) (regTwo!32671 r!7292))) b!6135186))

(assert (= (and b!6134457 ((_ is Concat!24924) (regTwo!32671 r!7292))) b!6135187))

(assert (= (and b!6134457 ((_ is Star!16079) (regTwo!32671 r!7292))) b!6135188))

(assert (= (and b!6134457 ((_ is Union!16079) (regTwo!32671 r!7292))) b!6135189))

(declare-fun b!6135194 () Bool)

(declare-fun e!3739265 () Bool)

(declare-fun tp!1714323 () Bool)

(assert (=> b!6135194 (= e!3739265 (and tp_is_empty!41411 tp!1714323))))

(assert (=> b!6134446 (= tp!1714233 e!3739265)))

(assert (= (and b!6134446 ((_ is Cons!64413) (t!378010 s!2326))) b!6135194))

(declare-fun b!6135202 () Bool)

(declare-fun e!3739271 () Bool)

(declare-fun tp!1714328 () Bool)

(assert (=> b!6135202 (= e!3739271 tp!1714328)))

(declare-fun tp!1714329 () Bool)

(declare-fun b!6135201 () Bool)

(declare-fun e!3739270 () Bool)

(assert (=> b!6135201 (= e!3739270 (and (inv!83444 (h!70862 (t!378011 zl!343))) e!3739271 tp!1714329))))

(assert (=> b!6134441 (= tp!1714234 e!3739270)))

(assert (= b!6135201 b!6135202))

(assert (= (and b!6134441 ((_ is Cons!64414) (t!378011 zl!343))) b!6135201))

(declare-fun m!6977708 () Bool)

(assert (=> b!6135201 m!6977708))

(declare-fun b!6135207 () Bool)

(declare-fun e!3739274 () Bool)

(declare-fun tp!1714334 () Bool)

(declare-fun tp!1714335 () Bool)

(assert (=> b!6135207 (= e!3739274 (and tp!1714334 tp!1714335))))

(assert (=> b!6134445 (= tp!1714237 e!3739274)))

(assert (= (and b!6134445 ((_ is Cons!64412) (exprs!5963 setElem!41476))) b!6135207))

(declare-fun b!6135208 () Bool)

(declare-fun e!3739275 () Bool)

(declare-fun tp!1714336 () Bool)

(declare-fun tp!1714337 () Bool)

(assert (=> b!6135208 (= e!3739275 (and tp!1714336 tp!1714337))))

(assert (=> b!6134454 (= tp!1714236 e!3739275)))

(assert (= (and b!6134454 ((_ is Cons!64412) (exprs!5963 (h!70862 zl!343)))) b!6135208))

(declare-fun b!6135210 () Bool)

(declare-fun e!3739276 () Bool)

(declare-fun tp!1714341 () Bool)

(declare-fun tp!1714338 () Bool)

(assert (=> b!6135210 (= e!3739276 (and tp!1714341 tp!1714338))))

(assert (=> b!6134448 (= tp!1714235 e!3739276)))

(declare-fun b!6135211 () Bool)

(declare-fun tp!1714340 () Bool)

(assert (=> b!6135211 (= e!3739276 tp!1714340)))

(declare-fun b!6135212 () Bool)

(declare-fun tp!1714342 () Bool)

(declare-fun tp!1714339 () Bool)

(assert (=> b!6135212 (= e!3739276 (and tp!1714342 tp!1714339))))

(declare-fun b!6135209 () Bool)

(assert (=> b!6135209 (= e!3739276 tp_is_empty!41411)))

(assert (= (and b!6134448 ((_ is ElementMatch!16079) (regOne!32670 r!7292))) b!6135209))

(assert (= (and b!6134448 ((_ is Concat!24924) (regOne!32670 r!7292))) b!6135210))

(assert (= (and b!6134448 ((_ is Star!16079) (regOne!32670 r!7292))) b!6135211))

(assert (= (and b!6134448 ((_ is Union!16079) (regOne!32670 r!7292))) b!6135212))

(declare-fun b!6135214 () Bool)

(declare-fun e!3739277 () Bool)

(declare-fun tp!1714346 () Bool)

(declare-fun tp!1714343 () Bool)

(assert (=> b!6135214 (= e!3739277 (and tp!1714346 tp!1714343))))

(assert (=> b!6134448 (= tp!1714242 e!3739277)))

(declare-fun b!6135215 () Bool)

(declare-fun tp!1714345 () Bool)

(assert (=> b!6135215 (= e!3739277 tp!1714345)))

(declare-fun b!6135216 () Bool)

(declare-fun tp!1714347 () Bool)

(declare-fun tp!1714344 () Bool)

(assert (=> b!6135216 (= e!3739277 (and tp!1714347 tp!1714344))))

(declare-fun b!6135213 () Bool)

(assert (=> b!6135213 (= e!3739277 tp_is_empty!41411)))

(assert (= (and b!6134448 ((_ is ElementMatch!16079) (regTwo!32670 r!7292))) b!6135213))

(assert (= (and b!6134448 ((_ is Concat!24924) (regTwo!32670 r!7292))) b!6135214))

(assert (= (and b!6134448 ((_ is Star!16079) (regTwo!32670 r!7292))) b!6135215))

(assert (= (and b!6134448 ((_ is Union!16079) (regTwo!32670 r!7292))) b!6135216))

(declare-fun b!6135218 () Bool)

(declare-fun e!3739278 () Bool)

(declare-fun tp!1714351 () Bool)

(declare-fun tp!1714348 () Bool)

(assert (=> b!6135218 (= e!3739278 (and tp!1714351 tp!1714348))))

(assert (=> b!6134447 (= tp!1714241 e!3739278)))

(declare-fun b!6135219 () Bool)

(declare-fun tp!1714350 () Bool)

(assert (=> b!6135219 (= e!3739278 tp!1714350)))

(declare-fun b!6135220 () Bool)

(declare-fun tp!1714352 () Bool)

(declare-fun tp!1714349 () Bool)

(assert (=> b!6135220 (= e!3739278 (and tp!1714352 tp!1714349))))

(declare-fun b!6135217 () Bool)

(assert (=> b!6135217 (= e!3739278 tp_is_empty!41411)))

(assert (= (and b!6134447 ((_ is ElementMatch!16079) (reg!16408 r!7292))) b!6135217))

(assert (= (and b!6134447 ((_ is Concat!24924) (reg!16408 r!7292))) b!6135218))

(assert (= (and b!6134447 ((_ is Star!16079) (reg!16408 r!7292))) b!6135219))

(assert (= (and b!6134447 ((_ is Union!16079) (reg!16408 r!7292))) b!6135220))

(declare-fun condSetEmpty!41482 () Bool)

(assert (=> setNonEmpty!41476 (= condSetEmpty!41482 (= setRest!41476 ((as const (Array Context!10926 Bool)) false)))))

(declare-fun setRes!41482 () Bool)

(assert (=> setNonEmpty!41476 (= tp!1714238 setRes!41482)))

(declare-fun setIsEmpty!41482 () Bool)

(assert (=> setIsEmpty!41482 setRes!41482))

(declare-fun setElem!41482 () Context!10926)

(declare-fun tp!1714357 () Bool)

(declare-fun e!3739281 () Bool)

(declare-fun setNonEmpty!41482 () Bool)

(assert (=> setNonEmpty!41482 (= setRes!41482 (and tp!1714357 (inv!83444 setElem!41482) e!3739281))))

(declare-fun setRest!41482 () (InoxSet Context!10926))

(assert (=> setNonEmpty!41482 (= setRest!41476 ((_ map or) (store ((as const (Array Context!10926 Bool)) false) setElem!41482 true) setRest!41482))))

(declare-fun b!6135225 () Bool)

(declare-fun tp!1714358 () Bool)

(assert (=> b!6135225 (= e!3739281 tp!1714358)))

(assert (= (and setNonEmpty!41476 condSetEmpty!41482) setIsEmpty!41482))

(assert (= (and setNonEmpty!41476 (not condSetEmpty!41482)) setNonEmpty!41482))

(assert (= setNonEmpty!41482 b!6135225))

(declare-fun m!6977710 () Bool)

(assert (=> setNonEmpty!41482 m!6977710))

(declare-fun b_lambda!233511 () Bool)

(assert (= b_lambda!233509 (or b!6134439 b_lambda!233511)))

(declare-fun bs!1521564 () Bool)

(declare-fun d!1922117 () Bool)

(assert (= bs!1521564 (and d!1922117 b!6134439)))

(assert (=> bs!1521564 (= (dynLambda!25378 lambda!334251 (h!70862 zl!343)) (derivationStepZipperUp!1253 (h!70862 zl!343) (h!70861 s!2326)))))

(assert (=> bs!1521564 m!6977206))

(assert (=> d!1922077 d!1922117))

(check-sat (not d!1922083) (not b!6134954) (not b!6135201) (not b!6135121) (not b!6135118) (not bm!509058) (not b!6135066) (not b!6135183) (not b!6135189) (not setNonEmpty!41482) (not b!6134971) (not b!6135113) (not b!6134926) (not d!1922115) (not b!6135132) (not b!6135081) (not b!6134956) (not b!6134930) (not b!6134991) (not b!6135036) (not b!6135194) (not bm!509034) (not b!6134958) (not d!1922099) (not b!6135220) tp_is_empty!41411 (not b!6135187) (not b!6134955) (not b!6135207) (not bm!509061) (not d!1922049) (not bm!509059) (not b!6134967) (not b!6135039) (not b!6135211) (not b!6134922) (not d!1922077) (not bm!509069) (not d!1922047) (not b!6134988) (not bm!509077) (not d!1922055) (not b!6135034) (not b!6134959) (not d!1922111) (not b!6135184) (not b!6134931) (not b!6135214) (not b!6135108) (not b!6135109) (not b!6134986) (not b!6135110) (not b!6135058) (not bm!509031) (not bm!509054) (not b!6134969) (not b!6134968) (not b!6134929) (not b!6134998) (not b_lambda!233511) (not d!1922053) (not b!6135188) (not d!1922097) (not b!6135038) (not b!6134996) (not b!6135143) (not b!6134884) (not b!6134952) (not b!6134918) (not b!6135144) (not d!1922045) (not d!1922085) (not d!1922067) (not bm!509067) (not bm!509065) (not d!1922091) (not b!6134953) (not d!1922089) (not b!6135105) (not b!6134879) (not bs!1521564) (not bm!509037) (not b!6135208) (not bm!509063) (not d!1922051) (not bm!509038) (not d!1922103) (not b!6135202) (not b!6135216) (not b!6134966) (not d!1922093) (not b!6135083) (not d!1922057) (not b!6135062) (not d!1922075) (not d!1922043) (not d!1922087) (not bm!509079) (not bm!509052) (not b!6135225) (not b!6134993) (not b!6135060) (not b!6135215) (not b!6135106) (not d!1922081) (not b!6135219) (not b!6134970) (not b!6135142) (not b!6135082) (not b!6135065) (not b!6135023) (not b!6135061) (not b!6135165) (not d!1922109) (not bm!509056) (not b!6135218) (not b!6134974) (not d!1922101) (not b!6135210) (not d!1922059) (not b!6135104) (not bm!509030) (not bm!509039) (not b!6135212) (not d!1922095) (not b!6135185))
(check-sat)
(get-model)

(declare-fun bs!1521724 () Bool)

(declare-fun b!6135793 () Bool)

(assert (= bs!1521724 (and b!6135793 b!6134456)))

(declare-fun lambda!334344 () Int)

(assert (=> bs!1521724 (not (= lambda!334344 lambda!334250))))

(declare-fun bs!1521725 () Bool)

(assert (= bs!1521725 (and b!6135793 b!6134888)))

(assert (=> bs!1521725 (not (= lambda!334344 lambda!334286))))

(declare-fun bs!1521726 () Bool)

(assert (= bs!1521726 (and b!6135793 d!1922089)))

(assert (=> bs!1521726 (not (= lambda!334344 lambda!334297))))

(declare-fun bs!1521727 () Bool)

(assert (= bs!1521727 (and b!6135793 d!1922091)))

(assert (=> bs!1521727 (not (= lambda!334344 lambda!334303))))

(assert (=> bs!1521724 (not (= lambda!334344 lambda!334249))))

(declare-fun bs!1521728 () Bool)

(assert (= bs!1521728 (and b!6135793 b!6134880)))

(assert (=> bs!1521728 (= (and (= (reg!16408 (regOne!32671 r!7292)) (reg!16408 r!7292)) (= (regOne!32671 r!7292) r!7292)) (= lambda!334344 lambda!334285))))

(assert (=> bs!1521727 (not (= lambda!334344 lambda!334302))))

(assert (=> b!6135793 true))

(assert (=> b!6135793 true))

(declare-fun bs!1521729 () Bool)

(declare-fun b!6135801 () Bool)

(assert (= bs!1521729 (and b!6135801 b!6134456)))

(declare-fun lambda!334345 () Int)

(assert (=> bs!1521729 (= (and (= (regOne!32670 (regOne!32671 r!7292)) (regOne!32670 r!7292)) (= (regTwo!32670 (regOne!32671 r!7292)) (regTwo!32670 r!7292))) (= lambda!334345 lambda!334250))))

(declare-fun bs!1521730 () Bool)

(assert (= bs!1521730 (and b!6135801 b!6134888)))

(assert (=> bs!1521730 (= (and (= (regOne!32670 (regOne!32671 r!7292)) (regOne!32670 r!7292)) (= (regTwo!32670 (regOne!32671 r!7292)) (regTwo!32670 r!7292))) (= lambda!334345 lambda!334286))))

(declare-fun bs!1521731 () Bool)

(assert (= bs!1521731 (and b!6135801 b!6135793)))

(assert (=> bs!1521731 (not (= lambda!334345 lambda!334344))))

(declare-fun bs!1521732 () Bool)

(assert (= bs!1521732 (and b!6135801 d!1922089)))

(assert (=> bs!1521732 (not (= lambda!334345 lambda!334297))))

(declare-fun bs!1521733 () Bool)

(assert (= bs!1521733 (and b!6135801 d!1922091)))

(assert (=> bs!1521733 (= (and (= (regOne!32670 (regOne!32671 r!7292)) (regOne!32670 r!7292)) (= (regTwo!32670 (regOne!32671 r!7292)) (regTwo!32670 r!7292))) (= lambda!334345 lambda!334303))))

(assert (=> bs!1521729 (not (= lambda!334345 lambda!334249))))

(declare-fun bs!1521734 () Bool)

(assert (= bs!1521734 (and b!6135801 b!6134880)))

(assert (=> bs!1521734 (not (= lambda!334345 lambda!334285))))

(assert (=> bs!1521733 (not (= lambda!334345 lambda!334302))))

(assert (=> b!6135801 true))

(assert (=> b!6135801 true))

(declare-fun c!1103362 () Bool)

(declare-fun bm!509189 () Bool)

(declare-fun call!509195 () Bool)

(assert (=> bm!509189 (= call!509195 (Exists!3149 (ite c!1103362 lambda!334344 lambda!334345)))))

(declare-fun b!6135792 () Bool)

(declare-fun e!3739596 () Bool)

(assert (=> b!6135792 (= e!3739596 (matchRSpec!3180 (regTwo!32671 (regOne!32671 r!7292)) s!2326))))

(declare-fun bm!509190 () Bool)

(declare-fun call!509194 () Bool)

(assert (=> bm!509190 (= call!509194 (isEmpty!36360 s!2326))))

(declare-fun e!3739598 () Bool)

(assert (=> b!6135793 (= e!3739598 call!509195)))

(declare-fun b!6135794 () Bool)

(declare-fun e!3739597 () Bool)

(assert (=> b!6135794 (= e!3739597 call!509194)))

(declare-fun b!6135795 () Bool)

(declare-fun c!1103361 () Bool)

(assert (=> b!6135795 (= c!1103361 ((_ is ElementMatch!16079) (regOne!32671 r!7292)))))

(declare-fun e!3739599 () Bool)

(declare-fun e!3739595 () Bool)

(assert (=> b!6135795 (= e!3739599 e!3739595)))

(declare-fun b!6135796 () Bool)

(declare-fun res!2542642 () Bool)

(assert (=> b!6135796 (=> res!2542642 e!3739598)))

(assert (=> b!6135796 (= res!2542642 call!509194)))

(declare-fun e!3739600 () Bool)

(assert (=> b!6135796 (= e!3739600 e!3739598)))

(declare-fun b!6135797 () Bool)

(declare-fun e!3739601 () Bool)

(assert (=> b!6135797 (= e!3739601 e!3739596)))

(declare-fun res!2542643 () Bool)

(assert (=> b!6135797 (= res!2542643 (matchRSpec!3180 (regOne!32671 (regOne!32671 r!7292)) s!2326))))

(assert (=> b!6135797 (=> res!2542643 e!3739596)))

(declare-fun b!6135798 () Bool)

(assert (=> b!6135798 (= e!3739595 (= s!2326 (Cons!64413 (c!1103007 (regOne!32671 r!7292)) Nil!64413)))))

(declare-fun b!6135799 () Bool)

(declare-fun c!1103360 () Bool)

(assert (=> b!6135799 (= c!1103360 ((_ is Union!16079) (regOne!32671 r!7292)))))

(assert (=> b!6135799 (= e!3739595 e!3739601)))

(declare-fun d!1922359 () Bool)

(declare-fun c!1103359 () Bool)

(assert (=> d!1922359 (= c!1103359 ((_ is EmptyExpr!16079) (regOne!32671 r!7292)))))

(assert (=> d!1922359 (= (matchRSpec!3180 (regOne!32671 r!7292) s!2326) e!3739597)))

(declare-fun b!6135800 () Bool)

(assert (=> b!6135800 (= e!3739601 e!3739600)))

(assert (=> b!6135800 (= c!1103362 ((_ is Star!16079) (regOne!32671 r!7292)))))

(assert (=> b!6135801 (= e!3739600 call!509195)))

(declare-fun b!6135802 () Bool)

(assert (=> b!6135802 (= e!3739597 e!3739599)))

(declare-fun res!2542641 () Bool)

(assert (=> b!6135802 (= res!2542641 (not ((_ is EmptyLang!16079) (regOne!32671 r!7292))))))

(assert (=> b!6135802 (=> (not res!2542641) (not e!3739599))))

(assert (= (and d!1922359 c!1103359) b!6135794))

(assert (= (and d!1922359 (not c!1103359)) b!6135802))

(assert (= (and b!6135802 res!2542641) b!6135795))

(assert (= (and b!6135795 c!1103361) b!6135798))

(assert (= (and b!6135795 (not c!1103361)) b!6135799))

(assert (= (and b!6135799 c!1103360) b!6135797))

(assert (= (and b!6135799 (not c!1103360)) b!6135800))

(assert (= (and b!6135797 (not res!2542643)) b!6135792))

(assert (= (and b!6135800 c!1103362) b!6135796))

(assert (= (and b!6135800 (not c!1103362)) b!6135801))

(assert (= (and b!6135796 (not res!2542642)) b!6135793))

(assert (= (or b!6135793 b!6135801) bm!509189))

(assert (= (or b!6135794 b!6135796) bm!509190))

(declare-fun m!6978224 () Bool)

(assert (=> bm!509189 m!6978224))

(declare-fun m!6978226 () Bool)

(assert (=> b!6135792 m!6978226))

(assert (=> bm!509190 m!6977482))

(declare-fun m!6978228 () Bool)

(assert (=> b!6135797 m!6978228))

(assert (=> b!6134884 d!1922359))

(declare-fun d!1922361 () Bool)

(assert (=> d!1922361 (= (isEmpty!36360 (t!378010 s!2326)) ((_ is Nil!64413) (t!378010 s!2326)))))

(assert (=> d!1922051 d!1922361))

(declare-fun d!1922363 () Bool)

(assert (=> d!1922363 (= (nullable!6072 (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))) (nullableFct!2036 (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))))))

(declare-fun bs!1521735 () Bool)

(assert (= bs!1521735 d!1922363))

(declare-fun m!6978230 () Bool)

(assert (=> bs!1521735 m!6978230))

(assert (=> b!6135132 d!1922363))

(assert (=> d!1922055 d!1922361))

(declare-fun bs!1521736 () Bool)

(declare-fun d!1922365 () Bool)

(assert (= bs!1521736 (and d!1922365 d!1922103)))

(declare-fun lambda!334346 () Int)

(assert (=> bs!1521736 (= lambda!334346 lambda!334309)))

(declare-fun bs!1521737 () Bool)

(assert (= bs!1521737 (and d!1922365 d!1922083)))

(assert (=> bs!1521737 (= lambda!334346 lambda!334294)))

(declare-fun bs!1521738 () Bool)

(assert (= bs!1521738 (and d!1922365 d!1922049)))

(assert (=> bs!1521738 (= lambda!334346 lambda!334292)))

(declare-fun bs!1521739 () Bool)

(assert (= bs!1521739 (and d!1922365 d!1922101)))

(assert (=> bs!1521739 (= lambda!334346 lambda!334306)))

(declare-fun bs!1521740 () Bool)

(assert (= bs!1521740 (and d!1922365 d!1922047)))

(assert (=> bs!1521740 (= lambda!334346 lambda!334289)))

(declare-fun bs!1521741 () Bool)

(assert (= bs!1521741 (and d!1922365 d!1922059)))

(assert (=> bs!1521741 (= lambda!334346 lambda!334293)))

(assert (=> d!1922365 (= (inv!83444 (h!70862 (t!378011 zl!343))) (forall!15200 (exprs!5963 (h!70862 (t!378011 zl!343))) lambda!334346))))

(declare-fun bs!1521742 () Bool)

(assert (= bs!1521742 d!1922365))

(declare-fun m!6978232 () Bool)

(assert (=> bs!1521742 m!6978232))

(assert (=> b!6135201 d!1922365))

(declare-fun d!1922367 () Bool)

(assert (=> d!1922367 (= (nullable!6072 (h!70860 (exprs!5963 lt!2332353))) (nullableFct!2036 (h!70860 (exprs!5963 lt!2332353))))))

(declare-fun bs!1521743 () Bool)

(assert (= bs!1521743 d!1922367))

(declare-fun m!6978234 () Bool)

(assert (=> bs!1521743 m!6978234))

(assert (=> b!6134988 d!1922367))

(declare-fun d!1922369 () Bool)

(declare-fun c!1103363 () Bool)

(assert (=> d!1922369 (= c!1103363 (isEmpty!36360 (tail!11764 (t!378010 s!2326))))))

(declare-fun e!3739602 () Bool)

(assert (=> d!1922369 (= (matchZipper!2091 (derivationStepZipper!2052 lt!2332354 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))) e!3739602)))

(declare-fun b!6135803 () Bool)

(assert (=> b!6135803 (= e!3739602 (nullableZipper!1860 (derivationStepZipper!2052 lt!2332354 (head!12679 (t!378010 s!2326)))))))

(declare-fun b!6135804 () Bool)

(assert (=> b!6135804 (= e!3739602 (matchZipper!2091 (derivationStepZipper!2052 (derivationStepZipper!2052 lt!2332354 (head!12679 (t!378010 s!2326))) (head!12679 (tail!11764 (t!378010 s!2326)))) (tail!11764 (tail!11764 (t!378010 s!2326)))))))

(assert (= (and d!1922369 c!1103363) b!6135803))

(assert (= (and d!1922369 (not c!1103363)) b!6135804))

(assert (=> d!1922369 m!6977528))

(declare-fun m!6978236 () Bool)

(assert (=> d!1922369 m!6978236))

(assert (=> b!6135803 m!6977648))

(declare-fun m!6978238 () Bool)

(assert (=> b!6135803 m!6978238))

(assert (=> b!6135804 m!6977528))

(declare-fun m!6978240 () Bool)

(assert (=> b!6135804 m!6978240))

(assert (=> b!6135804 m!6977648))

(assert (=> b!6135804 m!6978240))

(declare-fun m!6978242 () Bool)

(assert (=> b!6135804 m!6978242))

(assert (=> b!6135804 m!6977528))

(declare-fun m!6978244 () Bool)

(assert (=> b!6135804 m!6978244))

(assert (=> b!6135804 m!6978242))

(assert (=> b!6135804 m!6978244))

(declare-fun m!6978246 () Bool)

(assert (=> b!6135804 m!6978246))

(assert (=> b!6135083 d!1922369))

(declare-fun bs!1521744 () Bool)

(declare-fun d!1922371 () Bool)

(assert (= bs!1521744 (and d!1922371 b!6134439)))

(declare-fun lambda!334349 () Int)

(assert (=> bs!1521744 (= (= (head!12679 (t!378010 s!2326)) (h!70861 s!2326)) (= lambda!334349 lambda!334251))))

(assert (=> d!1922371 true))

(assert (=> d!1922371 (= (derivationStepZipper!2052 lt!2332354 (head!12679 (t!378010 s!2326))) (flatMap!1584 lt!2332354 lambda!334349))))

(declare-fun bs!1521745 () Bool)

(assert (= bs!1521745 d!1922371))

(declare-fun m!6978248 () Bool)

(assert (=> bs!1521745 m!6978248))

(assert (=> b!6135083 d!1922371))

(declare-fun d!1922373 () Bool)

(assert (=> d!1922373 (= (head!12679 (t!378010 s!2326)) (h!70861 (t!378010 s!2326)))))

(assert (=> b!6135083 d!1922373))

(declare-fun d!1922375 () Bool)

(assert (=> d!1922375 (= (tail!11764 (t!378010 s!2326)) (t!378010 (t!378010 s!2326)))))

(assert (=> b!6135083 d!1922375))

(declare-fun d!1922377 () Bool)

(assert (=> d!1922377 (= (isUnion!936 lt!2332439) ((_ is Union!16079) lt!2332439))))

(assert (=> b!6135113 d!1922377))

(declare-fun d!1922379 () Bool)

(declare-fun e!3739608 () Bool)

(assert (=> d!1922379 e!3739608))

(declare-fun res!2542648 () Bool)

(assert (=> d!1922379 (=> (not res!2542648) (not e!3739608))))

(declare-fun lt!2332471 () List!64537)

(declare-fun content!11982 (List!64537) (InoxSet C!32428))

(assert (=> d!1922379 (= res!2542648 (= (content!11982 lt!2332471) ((_ map or) (content!11982 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413))) (content!11982 (t!378010 s!2326)))))))

(declare-fun e!3739607 () List!64537)

(assert (=> d!1922379 (= lt!2332471 e!3739607)))

(declare-fun c!1103368 () Bool)

(assert (=> d!1922379 (= c!1103368 ((_ is Nil!64413) (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413))))))

(assert (=> d!1922379 (= (++!14165 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (t!378010 s!2326)) lt!2332471)))

(declare-fun b!6135815 () Bool)

(assert (=> b!6135815 (= e!3739607 (t!378010 s!2326))))

(declare-fun b!6135818 () Bool)

(assert (=> b!6135818 (= e!3739608 (or (not (= (t!378010 s!2326) Nil!64413)) (= lt!2332471 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)))))))

(declare-fun b!6135816 () Bool)

(assert (=> b!6135816 (= e!3739607 (Cons!64413 (h!70861 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413))) (++!14165 (t!378010 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413))) (t!378010 s!2326))))))

(declare-fun b!6135817 () Bool)

(declare-fun res!2542649 () Bool)

(assert (=> b!6135817 (=> (not res!2542649) (not e!3739608))))

(declare-fun size!40221 (List!64537) Int)

(assert (=> b!6135817 (= res!2542649 (= (size!40221 lt!2332471) (+ (size!40221 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413))) (size!40221 (t!378010 s!2326)))))))

(assert (= (and d!1922379 c!1103368) b!6135815))

(assert (= (and d!1922379 (not c!1103368)) b!6135816))

(assert (= (and d!1922379 res!2542648) b!6135817))

(assert (= (and b!6135817 res!2542649) b!6135818))

(declare-fun m!6978250 () Bool)

(assert (=> d!1922379 m!6978250))

(assert (=> d!1922379 m!6977606))

(declare-fun m!6978252 () Bool)

(assert (=> d!1922379 m!6978252))

(declare-fun m!6978254 () Bool)

(assert (=> d!1922379 m!6978254))

(declare-fun m!6978256 () Bool)

(assert (=> b!6135816 m!6978256))

(declare-fun m!6978258 () Bool)

(assert (=> b!6135817 m!6978258))

(assert (=> b!6135817 m!6977606))

(declare-fun m!6978260 () Bool)

(assert (=> b!6135817 m!6978260))

(declare-fun m!6978262 () Bool)

(assert (=> b!6135817 m!6978262))

(assert (=> b!6135065 d!1922379))

(declare-fun d!1922381 () Bool)

(declare-fun e!3739610 () Bool)

(assert (=> d!1922381 e!3739610))

(declare-fun res!2542650 () Bool)

(assert (=> d!1922381 (=> (not res!2542650) (not e!3739610))))

(declare-fun lt!2332472 () List!64537)

(assert (=> d!1922381 (= res!2542650 (= (content!11982 lt!2332472) ((_ map or) (content!11982 Nil!64413) (content!11982 (Cons!64413 (h!70861 s!2326) Nil!64413)))))))

(declare-fun e!3739609 () List!64537)

(assert (=> d!1922381 (= lt!2332472 e!3739609)))

(declare-fun c!1103369 () Bool)

(assert (=> d!1922381 (= c!1103369 ((_ is Nil!64413) Nil!64413))))

(assert (=> d!1922381 (= (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) lt!2332472)))

(declare-fun b!6135819 () Bool)

(assert (=> b!6135819 (= e!3739609 (Cons!64413 (h!70861 s!2326) Nil!64413))))

(declare-fun b!6135822 () Bool)

(assert (=> b!6135822 (= e!3739610 (or (not (= (Cons!64413 (h!70861 s!2326) Nil!64413) Nil!64413)) (= lt!2332472 Nil!64413)))))

(declare-fun b!6135820 () Bool)

(assert (=> b!6135820 (= e!3739609 (Cons!64413 (h!70861 Nil!64413) (++!14165 (t!378010 Nil!64413) (Cons!64413 (h!70861 s!2326) Nil!64413))))))

(declare-fun b!6135821 () Bool)

(declare-fun res!2542651 () Bool)

(assert (=> b!6135821 (=> (not res!2542651) (not e!3739610))))

(assert (=> b!6135821 (= res!2542651 (= (size!40221 lt!2332472) (+ (size!40221 Nil!64413) (size!40221 (Cons!64413 (h!70861 s!2326) Nil!64413)))))))

(assert (= (and d!1922381 c!1103369) b!6135819))

(assert (= (and d!1922381 (not c!1103369)) b!6135820))

(assert (= (and d!1922381 res!2542650) b!6135821))

(assert (= (and b!6135821 res!2542651) b!6135822))

(declare-fun m!6978264 () Bool)

(assert (=> d!1922381 m!6978264))

(declare-fun m!6978266 () Bool)

(assert (=> d!1922381 m!6978266))

(declare-fun m!6978268 () Bool)

(assert (=> d!1922381 m!6978268))

(declare-fun m!6978270 () Bool)

(assert (=> b!6135820 m!6978270))

(declare-fun m!6978272 () Bool)

(assert (=> b!6135821 m!6978272))

(declare-fun m!6978274 () Bool)

(assert (=> b!6135821 m!6978274))

(declare-fun m!6978276 () Bool)

(assert (=> b!6135821 m!6978276))

(assert (=> b!6135065 d!1922381))

(declare-fun d!1922383 () Bool)

(assert (=> d!1922383 (= (++!14165 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (t!378010 s!2326)) s!2326)))

(declare-fun lt!2332475 () Unit!157471)

(declare-fun choose!45595 (List!64537 C!32428 List!64537 List!64537) Unit!157471)

(assert (=> d!1922383 (= lt!2332475 (choose!45595 Nil!64413 (h!70861 s!2326) (t!378010 s!2326) s!2326))))

(assert (=> d!1922383 (= (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) (t!378010 s!2326))) s!2326)))

(assert (=> d!1922383 (= (lemmaMoveElementToOtherListKeepsConcatEq!2260 Nil!64413 (h!70861 s!2326) (t!378010 s!2326) s!2326) lt!2332475)))

(declare-fun bs!1521746 () Bool)

(assert (= bs!1521746 d!1922383))

(assert (=> bs!1521746 m!6977606))

(assert (=> bs!1521746 m!6977606))

(assert (=> bs!1521746 m!6977608))

(declare-fun m!6978278 () Bool)

(assert (=> bs!1521746 m!6978278))

(declare-fun m!6978280 () Bool)

(assert (=> bs!1521746 m!6978280))

(assert (=> b!6135065 d!1922383))

(declare-fun b!6135823 () Bool)

(declare-fun res!2542654 () Bool)

(declare-fun e!3739613 () Bool)

(assert (=> b!6135823 (=> (not res!2542654) (not e!3739613))))

(declare-fun lt!2332477 () Option!15970)

(assert (=> b!6135823 (= res!2542654 (matchR!8262 (regTwo!32670 r!7292) (_2!36361 (get!22220 lt!2332477))))))

(declare-fun b!6135824 () Bool)

(declare-fun e!3739612 () Option!15970)

(declare-fun e!3739614 () Option!15970)

(assert (=> b!6135824 (= e!3739612 e!3739614)))

(declare-fun c!1103370 () Bool)

(assert (=> b!6135824 (= c!1103370 ((_ is Nil!64413) (t!378010 s!2326)))))

(declare-fun b!6135825 () Bool)

(declare-fun res!2542652 () Bool)

(assert (=> b!6135825 (=> (not res!2542652) (not e!3739613))))

(assert (=> b!6135825 (= res!2542652 (matchR!8262 (regOne!32670 r!7292) (_1!36361 (get!22220 lt!2332477))))))

(declare-fun b!6135826 () Bool)

(declare-fun e!3739615 () Bool)

(assert (=> b!6135826 (= e!3739615 (matchR!8262 (regTwo!32670 r!7292) (t!378010 s!2326)))))

(declare-fun b!6135827 () Bool)

(assert (=> b!6135827 (= e!3739613 (= (++!14165 (_1!36361 (get!22220 lt!2332477)) (_2!36361 (get!22220 lt!2332477))) s!2326))))

(declare-fun b!6135828 () Bool)

(assert (=> b!6135828 (= e!3739614 None!15969)))

(declare-fun d!1922385 () Bool)

(declare-fun e!3739611 () Bool)

(assert (=> d!1922385 e!3739611))

(declare-fun res!2542655 () Bool)

(assert (=> d!1922385 (=> res!2542655 e!3739611)))

(assert (=> d!1922385 (= res!2542655 e!3739613)))

(declare-fun res!2542653 () Bool)

(assert (=> d!1922385 (=> (not res!2542653) (not e!3739613))))

(assert (=> d!1922385 (= res!2542653 (isDefined!12673 lt!2332477))))

(assert (=> d!1922385 (= lt!2332477 e!3739612)))

(declare-fun c!1103371 () Bool)

(assert (=> d!1922385 (= c!1103371 e!3739615)))

(declare-fun res!2542656 () Bool)

(assert (=> d!1922385 (=> (not res!2542656) (not e!3739615))))

(assert (=> d!1922385 (= res!2542656 (matchR!8262 (regOne!32670 r!7292) (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413))))))

(assert (=> d!1922385 (validRegex!7815 (regOne!32670 r!7292))))

(assert (=> d!1922385 (= (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (t!378010 s!2326) s!2326) lt!2332477)))

(declare-fun b!6135829 () Bool)

(assert (=> b!6135829 (= e!3739612 (Some!15969 (tuple2!66117 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (t!378010 s!2326))))))

(declare-fun b!6135830 () Bool)

(declare-fun lt!2332476 () Unit!157471)

(declare-fun lt!2332478 () Unit!157471)

(assert (=> b!6135830 (= lt!2332476 lt!2332478)))

(assert (=> b!6135830 (= (++!14165 (++!14165 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (Cons!64413 (h!70861 (t!378010 s!2326)) Nil!64413)) (t!378010 (t!378010 s!2326))) s!2326)))

(assert (=> b!6135830 (= lt!2332478 (lemmaMoveElementToOtherListKeepsConcatEq!2260 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (h!70861 (t!378010 s!2326)) (t!378010 (t!378010 s!2326)) s!2326))))

(assert (=> b!6135830 (= e!3739614 (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) (++!14165 (++!14165 Nil!64413 (Cons!64413 (h!70861 s!2326) Nil!64413)) (Cons!64413 (h!70861 (t!378010 s!2326)) Nil!64413)) (t!378010 (t!378010 s!2326)) s!2326))))

(declare-fun b!6135831 () Bool)

(assert (=> b!6135831 (= e!3739611 (not (isDefined!12673 lt!2332477)))))

(assert (= (and d!1922385 res!2542656) b!6135826))

(assert (= (and d!1922385 c!1103371) b!6135829))

(assert (= (and d!1922385 (not c!1103371)) b!6135824))

(assert (= (and b!6135824 c!1103370) b!6135828))

(assert (= (and b!6135824 (not c!1103370)) b!6135830))

(assert (= (and d!1922385 res!2542653) b!6135825))

(assert (= (and b!6135825 res!2542652) b!6135823))

(assert (= (and b!6135823 res!2542654) b!6135827))

(assert (= (and d!1922385 (not res!2542655)) b!6135831))

(declare-fun m!6978282 () Bool)

(assert (=> b!6135823 m!6978282))

(declare-fun m!6978284 () Bool)

(assert (=> b!6135823 m!6978284))

(assert (=> b!6135827 m!6978282))

(declare-fun m!6978286 () Bool)

(assert (=> b!6135827 m!6978286))

(assert (=> b!6135830 m!6977606))

(declare-fun m!6978288 () Bool)

(assert (=> b!6135830 m!6978288))

(assert (=> b!6135830 m!6978288))

(declare-fun m!6978290 () Bool)

(assert (=> b!6135830 m!6978290))

(assert (=> b!6135830 m!6977606))

(declare-fun m!6978292 () Bool)

(assert (=> b!6135830 m!6978292))

(assert (=> b!6135830 m!6978288))

(declare-fun m!6978294 () Bool)

(assert (=> b!6135830 m!6978294))

(declare-fun m!6978296 () Bool)

(assert (=> b!6135826 m!6978296))

(declare-fun m!6978298 () Bool)

(assert (=> d!1922385 m!6978298))

(assert (=> d!1922385 m!6977606))

(declare-fun m!6978300 () Bool)

(assert (=> d!1922385 m!6978300))

(assert (=> d!1922385 m!6977620))

(assert (=> b!6135825 m!6978282))

(declare-fun m!6978302 () Bool)

(assert (=> b!6135825 m!6978302))

(assert (=> b!6135831 m!6978298))

(assert (=> b!6135065 d!1922385))

(declare-fun bs!1521747 () Bool)

(declare-fun d!1922387 () Bool)

(assert (= bs!1521747 (and d!1922387 d!1922103)))

(declare-fun lambda!334350 () Int)

(assert (=> bs!1521747 (= lambda!334350 lambda!334309)))

(declare-fun bs!1521748 () Bool)

(assert (= bs!1521748 (and d!1922387 d!1922083)))

(assert (=> bs!1521748 (= lambda!334350 lambda!334294)))

(declare-fun bs!1521749 () Bool)

(assert (= bs!1521749 (and d!1922387 d!1922049)))

(assert (=> bs!1521749 (= lambda!334350 lambda!334292)))

(declare-fun bs!1521750 () Bool)

(assert (= bs!1521750 (and d!1922387 d!1922101)))

(assert (=> bs!1521750 (= lambda!334350 lambda!334306)))

(declare-fun bs!1521751 () Bool)

(assert (= bs!1521751 (and d!1922387 d!1922047)))

(assert (=> bs!1521751 (= lambda!334350 lambda!334289)))

(declare-fun bs!1521752 () Bool)

(assert (= bs!1521752 (and d!1922387 d!1922059)))

(assert (=> bs!1521752 (= lambda!334350 lambda!334293)))

(declare-fun bs!1521753 () Bool)

(assert (= bs!1521753 (and d!1922387 d!1922365)))

(assert (=> bs!1521753 (= lambda!334350 lambda!334346)))

(declare-fun b!6135832 () Bool)

(declare-fun e!3739619 () Bool)

(declare-fun lt!2332479 () Regex!16079)

(assert (=> b!6135832 (= e!3739619 (isEmptyExpr!1496 lt!2332479))))

(declare-fun b!6135833 () Bool)

(declare-fun e!3739617 () Bool)

(assert (=> b!6135833 (= e!3739617 (isConcat!1019 lt!2332479))))

(declare-fun b!6135834 () Bool)

(assert (=> b!6135834 (= e!3739619 e!3739617)))

(declare-fun c!1103374 () Bool)

(assert (=> b!6135834 (= c!1103374 (isEmpty!36357 (tail!11765 (t!378009 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6135835 () Bool)

(declare-fun e!3739621 () Bool)

(assert (=> b!6135835 (= e!3739621 e!3739619)))

(declare-fun c!1103372 () Bool)

(assert (=> b!6135835 (= c!1103372 (isEmpty!36357 (t!378009 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6135836 () Bool)

(assert (=> b!6135836 (= e!3739617 (= lt!2332479 (head!12680 (t!378009 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6135837 () Bool)

(declare-fun e!3739618 () Regex!16079)

(declare-fun e!3739620 () Regex!16079)

(assert (=> b!6135837 (= e!3739618 e!3739620)))

(declare-fun c!1103373 () Bool)

(assert (=> b!6135837 (= c!1103373 ((_ is Cons!64412) (t!378009 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6135838 () Bool)

(assert (=> b!6135838 (= e!3739620 (Concat!24924 (h!70860 (t!378009 (exprs!5963 (h!70862 zl!343)))) (generalisedConcat!1676 (t!378009 (t!378009 (exprs!5963 (h!70862 zl!343)))))))))

(declare-fun b!6135839 () Bool)

(declare-fun e!3739616 () Bool)

(assert (=> b!6135839 (= e!3739616 (isEmpty!36357 (t!378009 (t!378009 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6135840 () Bool)

(assert (=> b!6135840 (= e!3739620 EmptyExpr!16079)))

(assert (=> d!1922387 e!3739621))

(declare-fun res!2542658 () Bool)

(assert (=> d!1922387 (=> (not res!2542658) (not e!3739621))))

(assert (=> d!1922387 (= res!2542658 (validRegex!7815 lt!2332479))))

(assert (=> d!1922387 (= lt!2332479 e!3739618)))

(declare-fun c!1103375 () Bool)

(assert (=> d!1922387 (= c!1103375 e!3739616)))

(declare-fun res!2542657 () Bool)

(assert (=> d!1922387 (=> (not res!2542657) (not e!3739616))))

(assert (=> d!1922387 (= res!2542657 ((_ is Cons!64412) (t!378009 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> d!1922387 (forall!15200 (t!378009 (exprs!5963 (h!70862 zl!343))) lambda!334350)))

(assert (=> d!1922387 (= (generalisedConcat!1676 (t!378009 (exprs!5963 (h!70862 zl!343)))) lt!2332479)))

(declare-fun b!6135841 () Bool)

(assert (=> b!6135841 (= e!3739618 (h!70860 (t!378009 (exprs!5963 (h!70862 zl!343)))))))

(assert (= (and d!1922387 res!2542657) b!6135839))

(assert (= (and d!1922387 c!1103375) b!6135841))

(assert (= (and d!1922387 (not c!1103375)) b!6135837))

(assert (= (and b!6135837 c!1103373) b!6135838))

(assert (= (and b!6135837 (not c!1103373)) b!6135840))

(assert (= (and d!1922387 res!2542658) b!6135835))

(assert (= (and b!6135835 c!1103372) b!6135832))

(assert (= (and b!6135835 (not c!1103372)) b!6135834))

(assert (= (and b!6135834 c!1103374) b!6135836))

(assert (= (and b!6135834 (not c!1103374)) b!6135833))

(declare-fun m!6978304 () Bool)

(assert (=> b!6135833 m!6978304))

(declare-fun m!6978306 () Bool)

(assert (=> b!6135838 m!6978306))

(declare-fun m!6978308 () Bool)

(assert (=> b!6135836 m!6978308))

(declare-fun m!6978310 () Bool)

(assert (=> d!1922387 m!6978310))

(declare-fun m!6978312 () Bool)

(assert (=> d!1922387 m!6978312))

(declare-fun m!6978314 () Bool)

(assert (=> b!6135834 m!6978314))

(assert (=> b!6135834 m!6978314))

(declare-fun m!6978316 () Bool)

(assert (=> b!6135834 m!6978316))

(assert (=> b!6135835 m!6977192))

(declare-fun m!6978318 () Bool)

(assert (=> b!6135839 m!6978318))

(declare-fun m!6978320 () Bool)

(assert (=> b!6135832 m!6978320))

(assert (=> b!6134958 d!1922387))

(declare-fun d!1922389 () Bool)

(assert (=> d!1922389 (= (nullable!6072 (reg!16408 r!7292)) (nullableFct!2036 (reg!16408 r!7292)))))

(declare-fun bs!1521754 () Bool)

(assert (= bs!1521754 d!1922389))

(declare-fun m!6978322 () Bool)

(assert (=> bs!1521754 m!6978322))

(assert (=> b!6135165 d!1922389))

(declare-fun c!1103377 () Bool)

(declare-fun call!509197 () Bool)

(declare-fun bm!509191 () Bool)

(declare-fun c!1103376 () Bool)

(assert (=> bm!509191 (= call!509197 (validRegex!7815 (ite c!1103377 (reg!16408 lt!2332439) (ite c!1103376 (regOne!32671 lt!2332439) (regOne!32670 lt!2332439)))))))

(declare-fun b!6135842 () Bool)

(declare-fun res!2542659 () Bool)

(declare-fun e!3739622 () Bool)

(assert (=> b!6135842 (=> res!2542659 e!3739622)))

(assert (=> b!6135842 (= res!2542659 (not ((_ is Concat!24924) lt!2332439)))))

(declare-fun e!3739624 () Bool)

(assert (=> b!6135842 (= e!3739624 e!3739622)))

(declare-fun b!6135843 () Bool)

(declare-fun res!2542661 () Bool)

(declare-fun e!3739627 () Bool)

(assert (=> b!6135843 (=> (not res!2542661) (not e!3739627))))

(declare-fun call!509196 () Bool)

(assert (=> b!6135843 (= res!2542661 call!509196)))

(assert (=> b!6135843 (= e!3739624 e!3739627)))

(declare-fun b!6135844 () Bool)

(declare-fun e!3739626 () Bool)

(declare-fun e!3739625 () Bool)

(assert (=> b!6135844 (= e!3739626 e!3739625)))

(declare-fun res!2542663 () Bool)

(assert (=> b!6135844 (= res!2542663 (not (nullable!6072 (reg!16408 lt!2332439))))))

(assert (=> b!6135844 (=> (not res!2542663) (not e!3739625))))

(declare-fun b!6135845 () Bool)

(assert (=> b!6135845 (= e!3739626 e!3739624)))

(assert (=> b!6135845 (= c!1103376 ((_ is Union!16079) lt!2332439))))

(declare-fun b!6135847 () Bool)

(declare-fun e!3739628 () Bool)

(assert (=> b!6135847 (= e!3739628 e!3739626)))

(assert (=> b!6135847 (= c!1103377 ((_ is Star!16079) lt!2332439))))

(declare-fun b!6135848 () Bool)

(declare-fun e!3739623 () Bool)

(assert (=> b!6135848 (= e!3739622 e!3739623)))

(declare-fun res!2542660 () Bool)

(assert (=> b!6135848 (=> (not res!2542660) (not e!3739623))))

(assert (=> b!6135848 (= res!2542660 call!509196)))

(declare-fun b!6135849 () Bool)

(assert (=> b!6135849 (= e!3739625 call!509197)))

(declare-fun b!6135850 () Bool)

(declare-fun call!509198 () Bool)

(assert (=> b!6135850 (= e!3739627 call!509198)))

(declare-fun d!1922391 () Bool)

(declare-fun res!2542662 () Bool)

(assert (=> d!1922391 (=> res!2542662 e!3739628)))

(assert (=> d!1922391 (= res!2542662 ((_ is ElementMatch!16079) lt!2332439))))

(assert (=> d!1922391 (= (validRegex!7815 lt!2332439) e!3739628)))

(declare-fun b!6135846 () Bool)

(assert (=> b!6135846 (= e!3739623 call!509198)))

(declare-fun bm!509192 () Bool)

(assert (=> bm!509192 (= call!509196 call!509197)))

(declare-fun bm!509193 () Bool)

(assert (=> bm!509193 (= call!509198 (validRegex!7815 (ite c!1103376 (regTwo!32671 lt!2332439) (regTwo!32670 lt!2332439))))))

(assert (= (and d!1922391 (not res!2542662)) b!6135847))

(assert (= (and b!6135847 c!1103377) b!6135844))

(assert (= (and b!6135847 (not c!1103377)) b!6135845))

(assert (= (and b!6135844 res!2542663) b!6135849))

(assert (= (and b!6135845 c!1103376) b!6135843))

(assert (= (and b!6135845 (not c!1103376)) b!6135842))

(assert (= (and b!6135843 res!2542661) b!6135850))

(assert (= (and b!6135842 (not res!2542659)) b!6135848))

(assert (= (and b!6135848 res!2542660) b!6135846))

(assert (= (or b!6135850 b!6135846) bm!509193))

(assert (= (or b!6135843 b!6135848) bm!509192))

(assert (= (or b!6135849 bm!509192) bm!509191))

(declare-fun m!6978324 () Bool)

(assert (=> bm!509191 m!6978324))

(declare-fun m!6978326 () Bool)

(assert (=> b!6135844 m!6978326))

(declare-fun m!6978328 () Bool)

(assert (=> bm!509193 m!6978328))

(assert (=> d!1922101 d!1922391))

(declare-fun d!1922393 () Bool)

(declare-fun res!2542668 () Bool)

(declare-fun e!3739633 () Bool)

(assert (=> d!1922393 (=> res!2542668 e!3739633)))

(assert (=> d!1922393 (= res!2542668 ((_ is Nil!64412) (unfocusZipperList!1500 zl!343)))))

(assert (=> d!1922393 (= (forall!15200 (unfocusZipperList!1500 zl!343) lambda!334306) e!3739633)))

(declare-fun b!6135855 () Bool)

(declare-fun e!3739634 () Bool)

(assert (=> b!6135855 (= e!3739633 e!3739634)))

(declare-fun res!2542669 () Bool)

(assert (=> b!6135855 (=> (not res!2542669) (not e!3739634))))

(declare-fun dynLambda!25380 (Int Regex!16079) Bool)

(assert (=> b!6135855 (= res!2542669 (dynLambda!25380 lambda!334306 (h!70860 (unfocusZipperList!1500 zl!343))))))

(declare-fun b!6135856 () Bool)

(assert (=> b!6135856 (= e!3739634 (forall!15200 (t!378009 (unfocusZipperList!1500 zl!343)) lambda!334306))))

(assert (= (and d!1922393 (not res!2542668)) b!6135855))

(assert (= (and b!6135855 res!2542669) b!6135856))

(declare-fun b_lambda!233541 () Bool)

(assert (=> (not b_lambda!233541) (not b!6135855)))

(declare-fun m!6978330 () Bool)

(assert (=> b!6135855 m!6978330))

(declare-fun m!6978332 () Bool)

(assert (=> b!6135856 m!6978332))

(assert (=> d!1922101 d!1922393))

(declare-fun c!1103379 () Bool)

(declare-fun c!1103378 () Bool)

(declare-fun bm!509194 () Bool)

(declare-fun call!509200 () Bool)

(assert (=> bm!509194 (= call!509200 (validRegex!7815 (ite c!1103379 (reg!16408 (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))) (ite c!1103378 (regOne!32671 (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))) (regOne!32670 (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292)))))))))

(declare-fun b!6135857 () Bool)

(declare-fun res!2542670 () Bool)

(declare-fun e!3739635 () Bool)

(assert (=> b!6135857 (=> res!2542670 e!3739635)))

(assert (=> b!6135857 (= res!2542670 (not ((_ is Concat!24924) (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292)))))))

(declare-fun e!3739637 () Bool)

(assert (=> b!6135857 (= e!3739637 e!3739635)))

(declare-fun b!6135858 () Bool)

(declare-fun res!2542672 () Bool)

(declare-fun e!3739640 () Bool)

(assert (=> b!6135858 (=> (not res!2542672) (not e!3739640))))

(declare-fun call!509199 () Bool)

(assert (=> b!6135858 (= res!2542672 call!509199)))

(assert (=> b!6135858 (= e!3739637 e!3739640)))

(declare-fun b!6135859 () Bool)

(declare-fun e!3739639 () Bool)

(declare-fun e!3739638 () Bool)

(assert (=> b!6135859 (= e!3739639 e!3739638)))

(declare-fun res!2542674 () Bool)

(assert (=> b!6135859 (= res!2542674 (not (nullable!6072 (reg!16408 (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))))))))

(assert (=> b!6135859 (=> (not res!2542674) (not e!3739638))))

(declare-fun b!6135860 () Bool)

(assert (=> b!6135860 (= e!3739639 e!3739637)))

(assert (=> b!6135860 (= c!1103378 ((_ is Union!16079) (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))))))

(declare-fun b!6135862 () Bool)

(declare-fun e!3739641 () Bool)

(assert (=> b!6135862 (= e!3739641 e!3739639)))

(assert (=> b!6135862 (= c!1103379 ((_ is Star!16079) (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))))))

(declare-fun b!6135863 () Bool)

(declare-fun e!3739636 () Bool)

(assert (=> b!6135863 (= e!3739635 e!3739636)))

(declare-fun res!2542671 () Bool)

(assert (=> b!6135863 (=> (not res!2542671) (not e!3739636))))

(assert (=> b!6135863 (= res!2542671 call!509199)))

(declare-fun b!6135864 () Bool)

(assert (=> b!6135864 (= e!3739638 call!509200)))

(declare-fun b!6135865 () Bool)

(declare-fun call!509201 () Bool)

(assert (=> b!6135865 (= e!3739640 call!509201)))

(declare-fun d!1922395 () Bool)

(declare-fun res!2542673 () Bool)

(assert (=> d!1922395 (=> res!2542673 e!3739641)))

(assert (=> d!1922395 (= res!2542673 ((_ is ElementMatch!16079) (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))))))

(assert (=> d!1922395 (= (validRegex!7815 (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))) e!3739641)))

(declare-fun b!6135861 () Bool)

(assert (=> b!6135861 (= e!3739636 call!509201)))

(declare-fun bm!509195 () Bool)

(assert (=> bm!509195 (= call!509199 call!509200)))

(declare-fun bm!509196 () Bool)

(assert (=> bm!509196 (= call!509201 (validRegex!7815 (ite c!1103378 (regTwo!32671 (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))) (regTwo!32670 (ite c!1103216 (regTwo!32671 r!7292) (regTwo!32670 r!7292))))))))

(assert (= (and d!1922395 (not res!2542673)) b!6135862))

(assert (= (and b!6135862 c!1103379) b!6135859))

(assert (= (and b!6135862 (not c!1103379)) b!6135860))

(assert (= (and b!6135859 res!2542674) b!6135864))

(assert (= (and b!6135860 c!1103378) b!6135858))

(assert (= (and b!6135860 (not c!1103378)) b!6135857))

(assert (= (and b!6135858 res!2542672) b!6135865))

(assert (= (and b!6135857 (not res!2542670)) b!6135863))

(assert (= (and b!6135863 res!2542671) b!6135861))

(assert (= (or b!6135865 b!6135861) bm!509196))

(assert (= (or b!6135858 b!6135863) bm!509195))

(assert (= (or b!6135864 bm!509195) bm!509194))

(declare-fun m!6978334 () Bool)

(assert (=> bm!509194 m!6978334))

(declare-fun m!6978336 () Bool)

(assert (=> b!6135859 m!6978336))

(declare-fun m!6978338 () Bool)

(assert (=> bm!509196 m!6978338))

(assert (=> bm!509079 d!1922395))

(declare-fun d!1922397 () Bool)

(declare-fun c!1103380 () Bool)

(assert (=> d!1922397 (= c!1103380 (isEmpty!36360 (tail!11764 (t!378010 s!2326))))))

(declare-fun e!3739642 () Bool)

(assert (=> d!1922397 (= (matchZipper!2091 (derivationStepZipper!2052 lt!2332343 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))) e!3739642)))

(declare-fun b!6135866 () Bool)

(assert (=> b!6135866 (= e!3739642 (nullableZipper!1860 (derivationStepZipper!2052 lt!2332343 (head!12679 (t!378010 s!2326)))))))

(declare-fun b!6135867 () Bool)

(assert (=> b!6135867 (= e!3739642 (matchZipper!2091 (derivationStepZipper!2052 (derivationStepZipper!2052 lt!2332343 (head!12679 (t!378010 s!2326))) (head!12679 (tail!11764 (t!378010 s!2326)))) (tail!11764 (tail!11764 (t!378010 s!2326)))))))

(assert (= (and d!1922397 c!1103380) b!6135866))

(assert (= (and d!1922397 (not c!1103380)) b!6135867))

(assert (=> d!1922397 m!6977528))

(assert (=> d!1922397 m!6978236))

(assert (=> b!6135866 m!6977540))

(declare-fun m!6978340 () Bool)

(assert (=> b!6135866 m!6978340))

(assert (=> b!6135867 m!6977528))

(assert (=> b!6135867 m!6978240))

(assert (=> b!6135867 m!6977540))

(assert (=> b!6135867 m!6978240))

(declare-fun m!6978342 () Bool)

(assert (=> b!6135867 m!6978342))

(assert (=> b!6135867 m!6977528))

(assert (=> b!6135867 m!6978244))

(assert (=> b!6135867 m!6978342))

(assert (=> b!6135867 m!6978244))

(declare-fun m!6978344 () Bool)

(assert (=> b!6135867 m!6978344))

(assert (=> b!6134971 d!1922397))

(declare-fun bs!1521755 () Bool)

(declare-fun d!1922399 () Bool)

(assert (= bs!1521755 (and d!1922399 b!6134439)))

(declare-fun lambda!334351 () Int)

(assert (=> bs!1521755 (= (= (head!12679 (t!378010 s!2326)) (h!70861 s!2326)) (= lambda!334351 lambda!334251))))

(declare-fun bs!1521756 () Bool)

(assert (= bs!1521756 (and d!1922399 d!1922371)))

(assert (=> bs!1521756 (= lambda!334351 lambda!334349)))

(assert (=> d!1922399 true))

(assert (=> d!1922399 (= (derivationStepZipper!2052 lt!2332343 (head!12679 (t!378010 s!2326))) (flatMap!1584 lt!2332343 lambda!334351))))

(declare-fun bs!1521757 () Bool)

(assert (= bs!1521757 d!1922399))

(declare-fun m!6978346 () Bool)

(assert (=> bs!1521757 m!6978346))

(assert (=> b!6134971 d!1922399))

(assert (=> b!6134971 d!1922373))

(assert (=> b!6134971 d!1922375))

(declare-fun d!1922401 () Bool)

(declare-fun c!1103382 () Bool)

(declare-fun e!3739643 () Bool)

(assert (=> d!1922401 (= c!1103382 e!3739643)))

(declare-fun res!2542675 () Bool)

(assert (=> d!1922401 (=> (not res!2542675) (not e!3739643))))

(assert (=> d!1922401 (= res!2542675 ((_ is Cons!64412) (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))))))))

(declare-fun e!3739645 () (InoxSet Context!10926))

(assert (=> d!1922401 (= (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))) (h!70861 s!2326)) e!3739645)))

(declare-fun b!6135868 () Bool)

(declare-fun e!3739644 () (InoxSet Context!10926))

(assert (=> b!6135868 (= e!3739644 ((as const (Array Context!10926 Bool)) false))))

(declare-fun call!509202 () (InoxSet Context!10926))

(declare-fun b!6135869 () Bool)

(assert (=> b!6135869 (= e!3739645 ((_ map or) call!509202 (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343))))))) (h!70861 s!2326))))))

(declare-fun b!6135870 () Bool)

(assert (=> b!6135870 (= e!3739645 e!3739644)))

(declare-fun c!1103381 () Bool)

(assert (=> b!6135870 (= c!1103381 ((_ is Cons!64412) (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))))))))

(declare-fun b!6135871 () Bool)

(assert (=> b!6135871 (= e!3739643 (nullable!6072 (h!70860 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343))))))))))

(declare-fun bm!509197 () Bool)

(assert (=> bm!509197 (= call!509202 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))))) (Context!10927 (t!378009 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343))))))) (h!70861 s!2326)))))

(declare-fun b!6135872 () Bool)

(assert (=> b!6135872 (= e!3739644 call!509202)))

(assert (= (and d!1922401 res!2542675) b!6135871))

(assert (= (and d!1922401 c!1103382) b!6135869))

(assert (= (and d!1922401 (not c!1103382)) b!6135870))

(assert (= (and b!6135870 c!1103381) b!6135872))

(assert (= (and b!6135870 (not c!1103381)) b!6135868))

(assert (= (or b!6135869 b!6135872) bm!509197))

(declare-fun m!6978348 () Bool)

(assert (=> b!6135869 m!6978348))

(declare-fun m!6978350 () Bool)

(assert (=> b!6135871 m!6978350))

(declare-fun m!6978352 () Bool)

(assert (=> bm!509197 m!6978352))

(assert (=> b!6135034 d!1922401))

(declare-fun d!1922403 () Bool)

(assert (=> d!1922403 (= (nullable!6072 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (nullableFct!2036 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))))

(declare-fun bs!1521758 () Bool)

(assert (= bs!1521758 d!1922403))

(declare-fun m!6978354 () Bool)

(assert (=> bs!1521758 m!6978354))

(assert (=> b!6134998 d!1922403))

(declare-fun d!1922405 () Bool)

(assert (=> d!1922405 (= (head!12680 (unfocusZipperList!1500 zl!343)) (h!70860 (unfocusZipperList!1500 zl!343)))))

(assert (=> b!6135105 d!1922405))

(declare-fun b!6135873 () Bool)

(declare-fun e!3739646 () (InoxSet Context!10926))

(declare-fun e!3739648 () (InoxSet Context!10926))

(assert (=> b!6135873 (= e!3739646 e!3739648)))

(declare-fun c!1103385 () Bool)

(assert (=> b!6135873 (= c!1103385 ((_ is Union!16079) (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))))

(declare-fun c!1103386 () Bool)

(declare-fun c!1103383 () Bool)

(declare-fun bm!509198 () Bool)

(declare-fun call!509204 () (InoxSet Context!10926))

(declare-fun call!509203 () List!64536)

(assert (=> bm!509198 (= call!509204 (derivationStepZipperDown!1327 (ite c!1103385 (regOne!32671 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))) (ite c!1103383 (regTwo!32670 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))) (ite c!1103386 (regOne!32670 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))) (reg!16408 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343))))))))))) (ite (or c!1103385 c!1103383) (ite (or c!1103173 c!1103171) lt!2332346 (Context!10927 call!509057)) (Context!10927 call!509203)) (h!70861 s!2326)))))

(declare-fun e!3739651 () Bool)

(declare-fun b!6135874 () Bool)

(assert (=> b!6135874 (= e!3739651 (nullable!6072 (regOne!32670 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343))))))))))))

(declare-fun b!6135875 () Bool)

(declare-fun e!3739650 () (InoxSet Context!10926))

(declare-fun call!509205 () (InoxSet Context!10926))

(assert (=> b!6135875 (= e!3739650 call!509205)))

(declare-fun b!6135876 () Bool)

(declare-fun call!509208 () (InoxSet Context!10926))

(assert (=> b!6135876 (= e!3739648 ((_ map or) call!509204 call!509208))))

(declare-fun b!6135877 () Bool)

(assert (=> b!6135877 (= e!3739650 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135878 () Bool)

(declare-fun e!3739649 () (InoxSet Context!10926))

(declare-fun call!509207 () (InoxSet Context!10926))

(assert (=> b!6135878 (= e!3739649 ((_ map or) call!509208 call!509207))))

(declare-fun bm!509200 () Bool)

(declare-fun call!509206 () List!64536)

(assert (=> bm!509200 (= call!509208 (derivationStepZipperDown!1327 (ite c!1103385 (regTwo!32671 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))) (regOne!32670 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343))))))))) (ite c!1103385 (ite (or c!1103173 c!1103171) lt!2332346 (Context!10927 call!509057)) (Context!10927 call!509206)) (h!70861 s!2326)))))

(declare-fun b!6135879 () Bool)

(assert (=> b!6135879 (= c!1103383 e!3739651)))

(declare-fun res!2542676 () Bool)

(assert (=> b!6135879 (=> (not res!2542676) (not e!3739651))))

(assert (=> b!6135879 (= res!2542676 ((_ is Concat!24924) (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))))

(assert (=> b!6135879 (= e!3739648 e!3739649)))

(declare-fun b!6135880 () Bool)

(declare-fun e!3739647 () (InoxSet Context!10926))

(assert (=> b!6135880 (= e!3739647 call!509205)))

(declare-fun bm!509201 () Bool)

(assert (=> bm!509201 (= call!509207 call!509204)))

(declare-fun bm!509202 () Bool)

(assert (=> bm!509202 (= call!509206 ($colon$colon!1956 (exprs!5963 (ite (or c!1103173 c!1103171) lt!2332346 (Context!10927 call!509057))) (ite (or c!1103383 c!1103386) (regTwo!32670 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))) (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343))))))))))))

(declare-fun b!6135881 () Bool)

(assert (=> b!6135881 (= e!3739649 e!3739647)))

(assert (=> b!6135881 (= c!1103386 ((_ is Concat!24924) (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))))

(declare-fun c!1103384 () Bool)

(declare-fun b!6135882 () Bool)

(assert (=> b!6135882 (= c!1103384 ((_ is Star!16079) (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))))

(assert (=> b!6135882 (= e!3739647 e!3739650)))

(declare-fun bm!509203 () Bool)

(assert (=> bm!509203 (= call!509205 call!509207)))

(declare-fun b!6135883 () Bool)

(assert (=> b!6135883 (= e!3739646 (store ((as const (Array Context!10926 Bool)) false) (ite (or c!1103173 c!1103171) lt!2332346 (Context!10927 call!509057)) true))))

(declare-fun d!1922407 () Bool)

(declare-fun c!1103387 () Bool)

(assert (=> d!1922407 (= c!1103387 (and ((_ is ElementMatch!16079) (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))) (= (c!1103007 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343)))))))) (h!70861 s!2326))))))

(assert (=> d!1922407 (= (derivationStepZipperDown!1327 (ite c!1103173 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103171 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103174 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343))))))) (ite (or c!1103173 c!1103171) lt!2332346 (Context!10927 call!509057)) (h!70861 s!2326)) e!3739646)))

(declare-fun bm!509199 () Bool)

(assert (=> bm!509199 (= call!509203 call!509206)))

(assert (= (and d!1922407 c!1103387) b!6135883))

(assert (= (and d!1922407 (not c!1103387)) b!6135873))

(assert (= (and b!6135873 c!1103385) b!6135876))

(assert (= (and b!6135873 (not c!1103385)) b!6135879))

(assert (= (and b!6135879 res!2542676) b!6135874))

(assert (= (and b!6135879 c!1103383) b!6135878))

(assert (= (and b!6135879 (not c!1103383)) b!6135881))

(assert (= (and b!6135881 c!1103386) b!6135880))

(assert (= (and b!6135881 (not c!1103386)) b!6135882))

(assert (= (and b!6135882 c!1103384) b!6135875))

(assert (= (and b!6135882 (not c!1103384)) b!6135877))

(assert (= (or b!6135880 b!6135875) bm!509199))

(assert (= (or b!6135880 b!6135875) bm!509203))

(assert (= (or b!6135878 bm!509199) bm!509202))

(assert (= (or b!6135878 bm!509203) bm!509201))

(assert (= (or b!6135876 b!6135878) bm!509200))

(assert (= (or b!6135876 bm!509201) bm!509198))

(declare-fun m!6978356 () Bool)

(assert (=> bm!509200 m!6978356))

(declare-fun m!6978358 () Bool)

(assert (=> bm!509202 m!6978358))

(declare-fun m!6978360 () Bool)

(assert (=> bm!509198 m!6978360))

(declare-fun m!6978362 () Bool)

(assert (=> b!6135874 m!6978362))

(declare-fun m!6978364 () Bool)

(assert (=> b!6135883 m!6978364))

(assert (=> bm!509052 d!1922407))

(assert (=> d!1922053 d!1922361))

(declare-fun d!1922409 () Bool)

(assert (=> d!1922409 (= (nullable!6072 r!7292) (nullableFct!2036 r!7292))))

(declare-fun bs!1521759 () Bool)

(assert (= bs!1521759 d!1922409))

(declare-fun m!6978366 () Bool)

(assert (=> bs!1521759 m!6978366))

(assert (=> b!6134931 d!1922409))

(declare-fun d!1922411 () Bool)

(declare-fun c!1103390 () Bool)

(assert (=> d!1922411 (= c!1103390 ((_ is Nil!64414) lt!2332436))))

(declare-fun e!3739654 () (InoxSet Context!10926))

(assert (=> d!1922411 (= (content!11981 lt!2332436) e!3739654)))

(declare-fun b!6135888 () Bool)

(assert (=> b!6135888 (= e!3739654 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135889 () Bool)

(assert (=> b!6135889 (= e!3739654 ((_ map or) (store ((as const (Array Context!10926 Bool)) false) (h!70862 lt!2332436) true) (content!11981 (t!378011 lt!2332436))))))

(assert (= (and d!1922411 c!1103390) b!6135888))

(assert (= (and d!1922411 (not c!1103390)) b!6135889))

(declare-fun m!6978368 () Bool)

(assert (=> b!6135889 m!6978368))

(declare-fun m!6978370 () Bool)

(assert (=> b!6135889 m!6978370))

(assert (=> b!6135081 d!1922411))

(declare-fun d!1922413 () Bool)

(declare-fun c!1103391 () Bool)

(assert (=> d!1922413 (= c!1103391 (isEmpty!36360 (tail!11764 (t!378010 s!2326))))))

(declare-fun e!3739655 () Bool)

(assert (=> d!1922413 (= (matchZipper!2091 (derivationStepZipper!2052 lt!2332357 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))) e!3739655)))

(declare-fun b!6135890 () Bool)

(assert (=> b!6135890 (= e!3739655 (nullableZipper!1860 (derivationStepZipper!2052 lt!2332357 (head!12679 (t!378010 s!2326)))))))

(declare-fun b!6135891 () Bool)

(assert (=> b!6135891 (= e!3739655 (matchZipper!2091 (derivationStepZipper!2052 (derivationStepZipper!2052 lt!2332357 (head!12679 (t!378010 s!2326))) (head!12679 (tail!11764 (t!378010 s!2326)))) (tail!11764 (tail!11764 (t!378010 s!2326)))))))

(assert (= (and d!1922413 c!1103391) b!6135890))

(assert (= (and d!1922413 (not c!1103391)) b!6135891))

(assert (=> d!1922413 m!6977528))

(assert (=> d!1922413 m!6978236))

(assert (=> b!6135890 m!6977594))

(declare-fun m!6978372 () Bool)

(assert (=> b!6135890 m!6978372))

(assert (=> b!6135891 m!6977528))

(assert (=> b!6135891 m!6978240))

(assert (=> b!6135891 m!6977594))

(assert (=> b!6135891 m!6978240))

(declare-fun m!6978374 () Bool)

(assert (=> b!6135891 m!6978374))

(assert (=> b!6135891 m!6977528))

(assert (=> b!6135891 m!6978244))

(assert (=> b!6135891 m!6978374))

(assert (=> b!6135891 m!6978244))

(declare-fun m!6978376 () Bool)

(assert (=> b!6135891 m!6978376))

(assert (=> b!6135039 d!1922413))

(declare-fun bs!1521760 () Bool)

(declare-fun d!1922415 () Bool)

(assert (= bs!1521760 (and d!1922415 b!6134439)))

(declare-fun lambda!334352 () Int)

(assert (=> bs!1521760 (= (= (head!12679 (t!378010 s!2326)) (h!70861 s!2326)) (= lambda!334352 lambda!334251))))

(declare-fun bs!1521761 () Bool)

(assert (= bs!1521761 (and d!1922415 d!1922371)))

(assert (=> bs!1521761 (= lambda!334352 lambda!334349)))

(declare-fun bs!1521762 () Bool)

(assert (= bs!1521762 (and d!1922415 d!1922399)))

(assert (=> bs!1521762 (= lambda!334352 lambda!334351)))

(assert (=> d!1922415 true))

(assert (=> d!1922415 (= (derivationStepZipper!2052 lt!2332357 (head!12679 (t!378010 s!2326))) (flatMap!1584 lt!2332357 lambda!334352))))

(declare-fun bs!1521763 () Bool)

(assert (= bs!1521763 d!1922415))

(declare-fun m!6978378 () Bool)

(assert (=> bs!1521763 m!6978378))

(assert (=> b!6135039 d!1922415))

(assert (=> b!6135039 d!1922373))

(assert (=> b!6135039 d!1922375))

(assert (=> d!1922099 d!1922361))

(declare-fun d!1922417 () Bool)

(declare-fun res!2542677 () Bool)

(declare-fun e!3739656 () Bool)

(assert (=> d!1922417 (=> res!2542677 e!3739656)))

(assert (=> d!1922417 (= res!2542677 ((_ is Nil!64412) (exprs!5963 setElem!41476)))))

(assert (=> d!1922417 (= (forall!15200 (exprs!5963 setElem!41476) lambda!334294) e!3739656)))

(declare-fun b!6135892 () Bool)

(declare-fun e!3739657 () Bool)

(assert (=> b!6135892 (= e!3739656 e!3739657)))

(declare-fun res!2542678 () Bool)

(assert (=> b!6135892 (=> (not res!2542678) (not e!3739657))))

(assert (=> b!6135892 (= res!2542678 (dynLambda!25380 lambda!334294 (h!70860 (exprs!5963 setElem!41476))))))

(declare-fun b!6135893 () Bool)

(assert (=> b!6135893 (= e!3739657 (forall!15200 (t!378009 (exprs!5963 setElem!41476)) lambda!334294))))

(assert (= (and d!1922417 (not res!2542677)) b!6135892))

(assert (= (and b!6135892 res!2542678) b!6135893))

(declare-fun b_lambda!233543 () Bool)

(assert (=> (not b_lambda!233543) (not b!6135892)))

(declare-fun m!6978380 () Bool)

(assert (=> b!6135892 m!6978380))

(declare-fun m!6978382 () Bool)

(assert (=> b!6135893 m!6978382))

(assert (=> d!1922083 d!1922417))

(declare-fun d!1922419 () Bool)

(assert (=> d!1922419 (= (isEmpty!36357 (unfocusZipperList!1500 zl!343)) ((_ is Nil!64412) (unfocusZipperList!1500 zl!343)))))

(assert (=> b!6135109 d!1922419))

(declare-fun b!6135894 () Bool)

(declare-fun e!3739659 () Bool)

(assert (=> b!6135894 (= e!3739659 (not (= (head!12679 s!2326) (c!1103007 (regTwo!32670 r!7292)))))))

(declare-fun b!6135895 () Bool)

(declare-fun res!2542686 () Bool)

(declare-fun e!3739661 () Bool)

(assert (=> b!6135895 (=> (not res!2542686) (not e!3739661))))

(declare-fun call!509209 () Bool)

(assert (=> b!6135895 (= res!2542686 (not call!509209))))

(declare-fun b!6135896 () Bool)

(declare-fun e!3739664 () Bool)

(assert (=> b!6135896 (= e!3739664 e!3739659)))

(declare-fun res!2542685 () Bool)

(assert (=> b!6135896 (=> res!2542685 e!3739659)))

(assert (=> b!6135896 (= res!2542685 call!509209)))

(declare-fun b!6135897 () Bool)

(declare-fun e!3739658 () Bool)

(declare-fun lt!2332480 () Bool)

(assert (=> b!6135897 (= e!3739658 (not lt!2332480))))

(declare-fun b!6135898 () Bool)

(assert (=> b!6135898 (= e!3739661 (= (head!12679 s!2326) (c!1103007 (regTwo!32670 r!7292))))))

(declare-fun b!6135899 () Bool)

(declare-fun res!2542683 () Bool)

(declare-fun e!3739662 () Bool)

(assert (=> b!6135899 (=> res!2542683 e!3739662)))

(assert (=> b!6135899 (= res!2542683 e!3739661)))

(declare-fun res!2542684 () Bool)

(assert (=> b!6135899 (=> (not res!2542684) (not e!3739661))))

(assert (=> b!6135899 (= res!2542684 lt!2332480)))

(declare-fun b!6135900 () Bool)

(assert (=> b!6135900 (= e!3739662 e!3739664)))

(declare-fun res!2542681 () Bool)

(assert (=> b!6135900 (=> (not res!2542681) (not e!3739664))))

(assert (=> b!6135900 (= res!2542681 (not lt!2332480))))

(declare-fun b!6135901 () Bool)

(declare-fun e!3739660 () Bool)

(assert (=> b!6135901 (= e!3739660 e!3739658)))

(declare-fun c!1103392 () Bool)

(assert (=> b!6135901 (= c!1103392 ((_ is EmptyLang!16079) (regTwo!32670 r!7292)))))

(declare-fun b!6135902 () Bool)

(declare-fun res!2542679 () Bool)

(assert (=> b!6135902 (=> (not res!2542679) (not e!3739661))))

(assert (=> b!6135902 (= res!2542679 (isEmpty!36360 (tail!11764 s!2326)))))

(declare-fun b!6135903 () Bool)

(assert (=> b!6135903 (= e!3739660 (= lt!2332480 call!509209))))

(declare-fun b!6135904 () Bool)

(declare-fun res!2542682 () Bool)

(assert (=> b!6135904 (=> res!2542682 e!3739662)))

(assert (=> b!6135904 (= res!2542682 (not ((_ is ElementMatch!16079) (regTwo!32670 r!7292))))))

(assert (=> b!6135904 (= e!3739658 e!3739662)))

(declare-fun bm!509204 () Bool)

(assert (=> bm!509204 (= call!509209 (isEmpty!36360 s!2326))))

(declare-fun b!6135906 () Bool)

(declare-fun e!3739663 () Bool)

(assert (=> b!6135906 (= e!3739663 (matchR!8262 (derivativeStep!4799 (regTwo!32670 r!7292) (head!12679 s!2326)) (tail!11764 s!2326)))))

(declare-fun b!6135907 () Bool)

(assert (=> b!6135907 (= e!3739663 (nullable!6072 (regTwo!32670 r!7292)))))

(declare-fun d!1922421 () Bool)

(assert (=> d!1922421 e!3739660))

(declare-fun c!1103394 () Bool)

(assert (=> d!1922421 (= c!1103394 ((_ is EmptyExpr!16079) (regTwo!32670 r!7292)))))

(assert (=> d!1922421 (= lt!2332480 e!3739663)))

(declare-fun c!1103393 () Bool)

(assert (=> d!1922421 (= c!1103393 (isEmpty!36360 s!2326))))

(assert (=> d!1922421 (validRegex!7815 (regTwo!32670 r!7292))))

(assert (=> d!1922421 (= (matchR!8262 (regTwo!32670 r!7292) s!2326) lt!2332480)))

(declare-fun b!6135905 () Bool)

(declare-fun res!2542680 () Bool)

(assert (=> b!6135905 (=> res!2542680 e!3739659)))

(assert (=> b!6135905 (= res!2542680 (not (isEmpty!36360 (tail!11764 s!2326))))))

(assert (= (and d!1922421 c!1103393) b!6135907))

(assert (= (and d!1922421 (not c!1103393)) b!6135906))

(assert (= (and d!1922421 c!1103394) b!6135903))

(assert (= (and d!1922421 (not c!1103394)) b!6135901))

(assert (= (and b!6135901 c!1103392) b!6135897))

(assert (= (and b!6135901 (not c!1103392)) b!6135904))

(assert (= (and b!6135904 (not res!2542682)) b!6135899))

(assert (= (and b!6135899 res!2542684) b!6135895))

(assert (= (and b!6135895 res!2542686) b!6135902))

(assert (= (and b!6135902 res!2542679) b!6135898))

(assert (= (and b!6135899 (not res!2542683)) b!6135900))

(assert (= (and b!6135900 res!2542681) b!6135896))

(assert (= (and b!6135896 (not res!2542685)) b!6135905))

(assert (= (and b!6135905 (not res!2542680)) b!6135894))

(assert (= (or b!6135903 b!6135895 b!6135896) bm!509204))

(assert (=> d!1922421 m!6977482))

(declare-fun m!6978384 () Bool)

(assert (=> d!1922421 m!6978384))

(assert (=> bm!509204 m!6977482))

(assert (=> b!6135898 m!6977486))

(assert (=> b!6135902 m!6977488))

(assert (=> b!6135902 m!6977488))

(assert (=> b!6135902 m!6977490))

(assert (=> b!6135905 m!6977488))

(assert (=> b!6135905 m!6977488))

(assert (=> b!6135905 m!6977490))

(declare-fun m!6978386 () Bool)

(assert (=> b!6135907 m!6978386))

(assert (=> b!6135894 m!6977486))

(assert (=> b!6135906 m!6977486))

(assert (=> b!6135906 m!6977486))

(declare-fun m!6978388 () Bool)

(assert (=> b!6135906 m!6978388))

(assert (=> b!6135906 m!6977488))

(assert (=> b!6135906 m!6978388))

(assert (=> b!6135906 m!6977488))

(declare-fun m!6978390 () Bool)

(assert (=> b!6135906 m!6978390))

(assert (=> b!6135061 d!1922421))

(declare-fun d!1922423 () Bool)

(assert (=> d!1922423 (= (isEmpty!36357 (tail!11765 (exprs!5963 (h!70862 zl!343)))) ((_ is Nil!64412) (tail!11765 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> b!6134954 d!1922423))

(declare-fun d!1922425 () Bool)

(assert (=> d!1922425 (= (tail!11765 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))

(assert (=> b!6134954 d!1922425))

(declare-fun d!1922427 () Bool)

(declare-fun c!1103395 () Bool)

(assert (=> d!1922427 (= c!1103395 (isEmpty!36360 (tail!11764 (t!378010 s!2326))))))

(declare-fun e!3739665 () Bool)

(assert (=> d!1922427 (= (matchZipper!2091 (derivationStepZipper!2052 lt!2332348 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))) e!3739665)))

(declare-fun b!6135908 () Bool)

(assert (=> b!6135908 (= e!3739665 (nullableZipper!1860 (derivationStepZipper!2052 lt!2332348 (head!12679 (t!378010 s!2326)))))))

(declare-fun b!6135909 () Bool)

(assert (=> b!6135909 (= e!3739665 (matchZipper!2091 (derivationStepZipper!2052 (derivationStepZipper!2052 lt!2332348 (head!12679 (t!378010 s!2326))) (head!12679 (tail!11764 (t!378010 s!2326)))) (tail!11764 (tail!11764 (t!378010 s!2326)))))))

(assert (= (and d!1922427 c!1103395) b!6135908))

(assert (= (and d!1922427 (not c!1103395)) b!6135909))

(assert (=> d!1922427 m!6977528))

(assert (=> d!1922427 m!6978236))

(assert (=> b!6135908 m!6977534))

(declare-fun m!6978392 () Bool)

(assert (=> b!6135908 m!6978392))

(assert (=> b!6135909 m!6977528))

(assert (=> b!6135909 m!6978240))

(assert (=> b!6135909 m!6977534))

(assert (=> b!6135909 m!6978240))

(declare-fun m!6978394 () Bool)

(assert (=> b!6135909 m!6978394))

(assert (=> b!6135909 m!6977528))

(assert (=> b!6135909 m!6978244))

(assert (=> b!6135909 m!6978394))

(assert (=> b!6135909 m!6978244))

(declare-fun m!6978396 () Bool)

(assert (=> b!6135909 m!6978396))

(assert (=> b!6134969 d!1922427))

(declare-fun bs!1521764 () Bool)

(declare-fun d!1922429 () Bool)

(assert (= bs!1521764 (and d!1922429 b!6134439)))

(declare-fun lambda!334353 () Int)

(assert (=> bs!1521764 (= (= (head!12679 (t!378010 s!2326)) (h!70861 s!2326)) (= lambda!334353 lambda!334251))))

(declare-fun bs!1521765 () Bool)

(assert (= bs!1521765 (and d!1922429 d!1922371)))

(assert (=> bs!1521765 (= lambda!334353 lambda!334349)))

(declare-fun bs!1521766 () Bool)

(assert (= bs!1521766 (and d!1922429 d!1922399)))

(assert (=> bs!1521766 (= lambda!334353 lambda!334351)))

(declare-fun bs!1521767 () Bool)

(assert (= bs!1521767 (and d!1922429 d!1922415)))

(assert (=> bs!1521767 (= lambda!334353 lambda!334352)))

(assert (=> d!1922429 true))

(assert (=> d!1922429 (= (derivationStepZipper!2052 lt!2332348 (head!12679 (t!378010 s!2326))) (flatMap!1584 lt!2332348 lambda!334353))))

(declare-fun bs!1521768 () Bool)

(assert (= bs!1521768 d!1922429))

(declare-fun m!6978398 () Bool)

(assert (=> bs!1521768 m!6978398))

(assert (=> b!6134969 d!1922429))

(assert (=> b!6134969 d!1922373))

(assert (=> b!6134969 d!1922375))

(declare-fun d!1922431 () Bool)

(declare-fun c!1103397 () Bool)

(declare-fun e!3739666 () Bool)

(assert (=> d!1922431 (= c!1103397 e!3739666)))

(declare-fun res!2542687 () Bool)

(assert (=> d!1922431 (=> (not res!2542687) (not e!3739666))))

(assert (=> d!1922431 (= res!2542687 ((_ is Cons!64412) (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332346))))))))

(declare-fun e!3739668 () (InoxSet Context!10926))

(assert (=> d!1922431 (= (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 lt!2332346))) (h!70861 s!2326)) e!3739668)))

(declare-fun b!6135910 () Bool)

(declare-fun e!3739667 () (InoxSet Context!10926))

(assert (=> b!6135910 (= e!3739667 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135911 () Bool)

(declare-fun call!509210 () (InoxSet Context!10926))

(assert (=> b!6135911 (= e!3739668 ((_ map or) call!509210 (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332346)))))) (h!70861 s!2326))))))

(declare-fun b!6135912 () Bool)

(assert (=> b!6135912 (= e!3739668 e!3739667)))

(declare-fun c!1103396 () Bool)

(assert (=> b!6135912 (= c!1103396 ((_ is Cons!64412) (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332346))))))))

(declare-fun b!6135913 () Bool)

(assert (=> b!6135913 (= e!3739666 (nullable!6072 (h!70860 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332346)))))))))

(declare-fun bm!509205 () Bool)

(assert (=> bm!509205 (= call!509210 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332346))))) (Context!10927 (t!378009 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332346)))))) (h!70861 s!2326)))))

(declare-fun b!6135914 () Bool)

(assert (=> b!6135914 (= e!3739667 call!509210)))

(assert (= (and d!1922431 res!2542687) b!6135913))

(assert (= (and d!1922431 c!1103397) b!6135911))

(assert (= (and d!1922431 (not c!1103397)) b!6135912))

(assert (= (and b!6135912 c!1103396) b!6135914))

(assert (= (and b!6135912 (not c!1103396)) b!6135910))

(assert (= (or b!6135911 b!6135914) bm!509205))

(declare-fun m!6978400 () Bool)

(assert (=> b!6135911 m!6978400))

(declare-fun m!6978402 () Bool)

(assert (=> b!6135913 m!6978402))

(declare-fun m!6978404 () Bool)

(assert (=> bm!509205 m!6978404))

(assert (=> b!6134991 d!1922431))

(declare-fun d!1922433 () Bool)

(assert (=> d!1922433 (= ($colon$colon!1956 (exprs!5963 lt!2332346) (ite (or c!1103171 c!1103174) (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (h!70860 (exprs!5963 (h!70862 zl!343))))) (Cons!64412 (ite (or c!1103171 c!1103174) (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (h!70860 (exprs!5963 (h!70862 zl!343)))) (exprs!5963 lt!2332346)))))

(assert (=> bm!509056 d!1922433))

(declare-fun d!1922435 () Bool)

(assert (=> d!1922435 (= (head!12679 s!2326) (h!70861 s!2326))))

(assert (=> b!6134922 d!1922435))

(declare-fun d!1922437 () Bool)

(declare-fun lambda!334356 () Int)

(declare-fun exists!2426 ((InoxSet Context!10926) Int) Bool)

(assert (=> d!1922437 (= (nullableZipper!1860 lt!2332354) (exists!2426 lt!2332354 lambda!334356))))

(declare-fun bs!1521769 () Bool)

(assert (= bs!1521769 d!1922437))

(declare-fun m!6978406 () Bool)

(assert (=> bs!1521769 m!6978406))

(assert (=> b!6135082 d!1922437))

(declare-fun b!6135915 () Bool)

(declare-fun e!3739669 () (InoxSet Context!10926))

(declare-fun e!3739671 () (InoxSet Context!10926))

(assert (=> b!6135915 (= e!3739669 e!3739671)))

(declare-fun c!1103402 () Bool)

(assert (=> b!6135915 (= c!1103402 ((_ is Union!16079) (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))))))

(declare-fun call!509211 () List!64536)

(declare-fun c!1103403 () Bool)

(declare-fun call!509212 () (InoxSet Context!10926))

(declare-fun bm!509206 () Bool)

(declare-fun c!1103400 () Bool)

(assert (=> bm!509206 (= call!509212 (derivationStepZipperDown!1327 (ite c!1103402 (regOne!32671 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))) (ite c!1103400 (regTwo!32670 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))) (ite c!1103403 (regOne!32670 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))) (reg!16408 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292)))))))))) (ite (or c!1103402 c!1103400) (ite (or c!1103208 c!1103206) lt!2332346 (Context!10927 call!509070)) (Context!10927 call!509211)) (h!70861 s!2326)))))

(declare-fun e!3739674 () Bool)

(declare-fun b!6135916 () Bool)

(assert (=> b!6135916 (= e!3739674 (nullable!6072 (regOne!32670 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292)))))))))))

(declare-fun b!6135917 () Bool)

(declare-fun e!3739673 () (InoxSet Context!10926))

(declare-fun call!509213 () (InoxSet Context!10926))

(assert (=> b!6135917 (= e!3739673 call!509213)))

(declare-fun b!6135918 () Bool)

(declare-fun call!509216 () (InoxSet Context!10926))

(assert (=> b!6135918 (= e!3739671 ((_ map or) call!509212 call!509216))))

(declare-fun b!6135919 () Bool)

(assert (=> b!6135919 (= e!3739673 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135920 () Bool)

(declare-fun e!3739672 () (InoxSet Context!10926))

(declare-fun call!509215 () (InoxSet Context!10926))

(assert (=> b!6135920 (= e!3739672 ((_ map or) call!509216 call!509215))))

(declare-fun bm!509208 () Bool)

(declare-fun call!509214 () List!64536)

(assert (=> bm!509208 (= call!509216 (derivationStepZipperDown!1327 (ite c!1103402 (regTwo!32671 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))) (regOne!32670 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292)))))))) (ite c!1103402 (ite (or c!1103208 c!1103206) lt!2332346 (Context!10927 call!509070)) (Context!10927 call!509214)) (h!70861 s!2326)))))

(declare-fun b!6135921 () Bool)

(assert (=> b!6135921 (= c!1103400 e!3739674)))

(declare-fun res!2542688 () Bool)

(assert (=> b!6135921 (=> (not res!2542688) (not e!3739674))))

(assert (=> b!6135921 (= res!2542688 ((_ is Concat!24924) (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))))))

(assert (=> b!6135921 (= e!3739671 e!3739672)))

(declare-fun b!6135922 () Bool)

(declare-fun e!3739670 () (InoxSet Context!10926))

(assert (=> b!6135922 (= e!3739670 call!509213)))

(declare-fun bm!509209 () Bool)

(assert (=> bm!509209 (= call!509215 call!509212)))

(declare-fun bm!509210 () Bool)

(assert (=> bm!509210 (= call!509214 ($colon$colon!1956 (exprs!5963 (ite (or c!1103208 c!1103206) lt!2332346 (Context!10927 call!509070))) (ite (or c!1103400 c!1103403) (regTwo!32670 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))) (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292)))))))))))

(declare-fun b!6135923 () Bool)

(assert (=> b!6135923 (= e!3739672 e!3739670)))

(assert (=> b!6135923 (= c!1103403 ((_ is Concat!24924) (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))))))

(declare-fun b!6135924 () Bool)

(declare-fun c!1103401 () Bool)

(assert (=> b!6135924 (= c!1103401 ((_ is Star!16079) (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))))))

(assert (=> b!6135924 (= e!3739670 e!3739673)))

(declare-fun bm!509211 () Bool)

(assert (=> bm!509211 (= call!509213 call!509215)))

(declare-fun b!6135925 () Bool)

(assert (=> b!6135925 (= e!3739669 (store ((as const (Array Context!10926 Bool)) false) (ite (or c!1103208 c!1103206) lt!2332346 (Context!10927 call!509070)) true))))

(declare-fun d!1922439 () Bool)

(declare-fun c!1103404 () Bool)

(assert (=> d!1922439 (= c!1103404 (and ((_ is ElementMatch!16079) (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))) (= (c!1103007 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292))))))) (h!70861 s!2326))))))

(assert (=> d!1922439 (= (derivationStepZipperDown!1327 (ite c!1103208 (regOne!32671 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103206 (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (ite c!1103209 (regOne!32670 (regOne!32671 (regOne!32670 r!7292))) (reg!16408 (regOne!32671 (regOne!32670 r!7292)))))) (ite (or c!1103208 c!1103206) lt!2332346 (Context!10927 call!509070)) (h!70861 s!2326)) e!3739669)))

(declare-fun bm!509207 () Bool)

(assert (=> bm!509207 (= call!509211 call!509214)))

(assert (= (and d!1922439 c!1103404) b!6135925))

(assert (= (and d!1922439 (not c!1103404)) b!6135915))

(assert (= (and b!6135915 c!1103402) b!6135918))

(assert (= (and b!6135915 (not c!1103402)) b!6135921))

(assert (= (and b!6135921 res!2542688) b!6135916))

(assert (= (and b!6135921 c!1103400) b!6135920))

(assert (= (and b!6135921 (not c!1103400)) b!6135923))

(assert (= (and b!6135923 c!1103403) b!6135922))

(assert (= (and b!6135923 (not c!1103403)) b!6135924))

(assert (= (and b!6135924 c!1103401) b!6135917))

(assert (= (and b!6135924 (not c!1103401)) b!6135919))

(assert (= (or b!6135922 b!6135917) bm!509207))

(assert (= (or b!6135922 b!6135917) bm!509211))

(assert (= (or b!6135920 bm!509207) bm!509210))

(assert (= (or b!6135920 bm!509211) bm!509209))

(assert (= (or b!6135918 b!6135920) bm!509208))

(assert (= (or b!6135918 bm!509209) bm!509206))

(declare-fun m!6978408 () Bool)

(assert (=> bm!509208 m!6978408))

(declare-fun m!6978410 () Bool)

(assert (=> bm!509210 m!6978410))

(declare-fun m!6978412 () Bool)

(assert (=> bm!509206 m!6978412))

(declare-fun m!6978414 () Bool)

(assert (=> b!6135916 m!6978414))

(declare-fun m!6978416 () Bool)

(assert (=> b!6135925 m!6978416))

(assert (=> bm!509065 d!1922439))

(declare-fun d!1922441 () Bool)

(assert (=> d!1922441 (= (isEmpty!36360 (tail!11764 s!2326)) ((_ is Nil!64413) (tail!11764 s!2326)))))

(assert (=> b!6134929 d!1922441))

(declare-fun d!1922443 () Bool)

(assert (=> d!1922443 (= (tail!11764 s!2326) (t!378010 s!2326))))

(assert (=> b!6134929 d!1922443))

(assert (=> b!6135142 d!1922081))

(declare-fun b!6135926 () Bool)

(declare-fun e!3739675 () (InoxSet Context!10926))

(declare-fun e!3739677 () (InoxSet Context!10926))

(assert (=> b!6135926 (= e!3739675 e!3739677)))

(declare-fun c!1103407 () Bool)

(assert (=> b!6135926 (= c!1103407 ((_ is Union!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun c!1103405 () Bool)

(declare-fun call!509217 () List!64536)

(declare-fun call!509218 () (InoxSet Context!10926))

(declare-fun c!1103408 () Bool)

(declare-fun bm!509212 () Bool)

(assert (=> bm!509212 (= call!509218 (derivationStepZipperDown!1327 (ite c!1103407 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103405 (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (ite c!1103408 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (reg!16408 (h!70860 (exprs!5963 (h!70862 zl!343))))))) (ite (or c!1103407 c!1103405) (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))) (Context!10927 call!509217)) (h!70861 s!2326)))))

(declare-fun b!6135927 () Bool)

(declare-fun e!3739680 () Bool)

(assert (=> b!6135927 (= e!3739680 (nullable!6072 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6135928 () Bool)

(declare-fun e!3739679 () (InoxSet Context!10926))

(declare-fun call!509219 () (InoxSet Context!10926))

(assert (=> b!6135928 (= e!3739679 call!509219)))

(declare-fun b!6135929 () Bool)

(declare-fun call!509222 () (InoxSet Context!10926))

(assert (=> b!6135929 (= e!3739677 ((_ map or) call!509218 call!509222))))

(declare-fun b!6135930 () Bool)

(assert (=> b!6135930 (= e!3739679 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135931 () Bool)

(declare-fun e!3739678 () (InoxSet Context!10926))

(declare-fun call!509221 () (InoxSet Context!10926))

(assert (=> b!6135931 (= e!3739678 ((_ map or) call!509222 call!509221))))

(declare-fun bm!509214 () Bool)

(declare-fun call!509220 () List!64536)

(assert (=> bm!509214 (= call!509222 (derivationStepZipperDown!1327 (ite c!1103407 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))) (ite c!1103407 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))) (Context!10927 call!509220)) (h!70861 s!2326)))))

(declare-fun b!6135932 () Bool)

(assert (=> b!6135932 (= c!1103405 e!3739680)))

(declare-fun res!2542689 () Bool)

(assert (=> b!6135932 (=> (not res!2542689) (not e!3739680))))

(assert (=> b!6135932 (= res!2542689 ((_ is Concat!24924) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> b!6135932 (= e!3739677 e!3739678)))

(declare-fun b!6135933 () Bool)

(declare-fun e!3739676 () (InoxSet Context!10926))

(assert (=> b!6135933 (= e!3739676 call!509219)))

(declare-fun bm!509215 () Bool)

(assert (=> bm!509215 (= call!509221 call!509218)))

(declare-fun bm!509216 () Bool)

(assert (=> bm!509216 (= call!509220 ($colon$colon!1956 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343))))) (ite (or c!1103405 c!1103408) (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))) (h!70860 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun b!6135934 () Bool)

(assert (=> b!6135934 (= e!3739678 e!3739676)))

(assert (=> b!6135934 (= c!1103408 ((_ is Concat!24924) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6135935 () Bool)

(declare-fun c!1103406 () Bool)

(assert (=> b!6135935 (= c!1103406 ((_ is Star!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> b!6135935 (= e!3739676 e!3739679)))

(declare-fun bm!509217 () Bool)

(assert (=> bm!509217 (= call!509219 call!509221)))

(declare-fun b!6135936 () Bool)

(assert (=> b!6135936 (= e!3739675 (store ((as const (Array Context!10926 Bool)) false) (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))) true))))

(declare-fun d!1922445 () Bool)

(declare-fun c!1103409 () Bool)

(assert (=> d!1922445 (= c!1103409 (and ((_ is ElementMatch!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))) (= (c!1103007 (h!70860 (exprs!5963 (h!70862 zl!343)))) (h!70861 s!2326))))))

(assert (=> d!1922445 (= (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (h!70862 zl!343))) (Context!10927 (t!378009 (exprs!5963 (h!70862 zl!343)))) (h!70861 s!2326)) e!3739675)))

(declare-fun bm!509213 () Bool)

(assert (=> bm!509213 (= call!509217 call!509220)))

(assert (= (and d!1922445 c!1103409) b!6135936))

(assert (= (and d!1922445 (not c!1103409)) b!6135926))

(assert (= (and b!6135926 c!1103407) b!6135929))

(assert (= (and b!6135926 (not c!1103407)) b!6135932))

(assert (= (and b!6135932 res!2542689) b!6135927))

(assert (= (and b!6135932 c!1103405) b!6135931))

(assert (= (and b!6135932 (not c!1103405)) b!6135934))

(assert (= (and b!6135934 c!1103408) b!6135933))

(assert (= (and b!6135934 (not c!1103408)) b!6135935))

(assert (= (and b!6135935 c!1103406) b!6135928))

(assert (= (and b!6135935 (not c!1103406)) b!6135930))

(assert (= (or b!6135933 b!6135928) bm!509213))

(assert (= (or b!6135933 b!6135928) bm!509217))

(assert (= (or b!6135931 bm!509213) bm!509216))

(assert (= (or b!6135931 bm!509217) bm!509215))

(assert (= (or b!6135929 b!6135931) bm!509214))

(assert (= (or b!6135929 bm!509215) bm!509212))

(declare-fun m!6978418 () Bool)

(assert (=> bm!509214 m!6978418))

(declare-fun m!6978420 () Bool)

(assert (=> bm!509216 m!6978420))

(declare-fun m!6978422 () Bool)

(assert (=> bm!509212 m!6978422))

(assert (=> b!6135927 m!6977576))

(declare-fun m!6978424 () Bool)

(assert (=> b!6135936 m!6978424))

(assert (=> bm!509058 d!1922445))

(declare-fun d!1922447 () Bool)

(assert (=> d!1922447 (= (isEmpty!36361 (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) Nil!64413 s!2326 s!2326)) (not ((_ is Some!15969) (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) Nil!64413 s!2326 s!2326))))))

(assert (=> d!1922095 d!1922447))

(declare-fun bs!1521770 () Bool)

(declare-fun d!1922449 () Bool)

(assert (= bs!1521770 (and d!1922449 d!1922437)))

(declare-fun lambda!334357 () Int)

(assert (=> bs!1521770 (= lambda!334357 lambda!334356)))

(assert (=> d!1922449 (= (nullableZipper!1860 lt!2332343) (exists!2426 lt!2332343 lambda!334357))))

(declare-fun bs!1521771 () Bool)

(assert (= bs!1521771 d!1922449))

(declare-fun m!6978426 () Bool)

(assert (=> bs!1521771 m!6978426))

(assert (=> b!6134970 d!1922449))

(assert (=> b!6134926 d!1922441))

(assert (=> b!6134926 d!1922443))

(assert (=> d!1922109 d!1922111))

(assert (=> d!1922109 d!1922051))

(declare-fun e!3739683 () Bool)

(declare-fun d!1922451 () Bool)

(assert (=> d!1922451 (= (matchZipper!2091 ((_ map or) lt!2332344 lt!2332357) (t!378010 s!2326)) e!3739683)))

(declare-fun res!2542692 () Bool)

(assert (=> d!1922451 (=> res!2542692 e!3739683)))

(assert (=> d!1922451 (= res!2542692 (matchZipper!2091 lt!2332344 (t!378010 s!2326)))))

(assert (=> d!1922451 true))

(declare-fun _$48!1628 () Unit!157471)

(assert (=> d!1922451 (= (choose!45588 lt!2332344 lt!2332357 (t!378010 s!2326)) _$48!1628)))

(declare-fun b!6135939 () Bool)

(assert (=> b!6135939 (= e!3739683 (matchZipper!2091 lt!2332357 (t!378010 s!2326)))))

(assert (= (and d!1922451 (not res!2542692)) b!6135939))

(assert (=> d!1922451 m!6977198))

(assert (=> d!1922451 m!6977196))

(assert (=> b!6135939 m!6977242))

(assert (=> d!1922109 d!1922451))

(declare-fun d!1922453 () Bool)

(declare-fun c!1103410 () Bool)

(assert (=> d!1922453 (= c!1103410 (isEmpty!36360 (t!378010 s!2326)))))

(declare-fun e!3739684 () Bool)

(assert (=> d!1922453 (= (matchZipper!2091 ((_ map or) lt!2332343 lt!2332354) (t!378010 s!2326)) e!3739684)))

(declare-fun b!6135940 () Bool)

(assert (=> b!6135940 (= e!3739684 (nullableZipper!1860 ((_ map or) lt!2332343 lt!2332354)))))

(declare-fun b!6135941 () Bool)

(assert (=> b!6135941 (= e!3739684 (matchZipper!2091 (derivationStepZipper!2052 ((_ map or) lt!2332343 lt!2332354) (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))))))

(assert (= (and d!1922453 c!1103410) b!6135940))

(assert (= (and d!1922453 (not c!1103410)) b!6135941))

(assert (=> d!1922453 m!6977520))

(declare-fun m!6978428 () Bool)

(assert (=> b!6135940 m!6978428))

(assert (=> b!6135941 m!6977524))

(assert (=> b!6135941 m!6977524))

(declare-fun m!6978430 () Bool)

(assert (=> b!6135941 m!6978430))

(assert (=> b!6135941 m!6977528))

(assert (=> b!6135941 m!6978430))

(assert (=> b!6135941 m!6977528))

(declare-fun m!6978432 () Bool)

(assert (=> b!6135941 m!6978432))

(assert (=> d!1922057 d!1922453))

(assert (=> d!1922057 d!1922055))

(declare-fun e!3739685 () Bool)

(declare-fun d!1922455 () Bool)

(assert (=> d!1922455 (= (matchZipper!2091 ((_ map or) lt!2332343 lt!2332354) (t!378010 s!2326)) e!3739685)))

(declare-fun res!2542693 () Bool)

(assert (=> d!1922455 (=> res!2542693 e!3739685)))

(assert (=> d!1922455 (= res!2542693 (matchZipper!2091 lt!2332343 (t!378010 s!2326)))))

(assert (=> d!1922455 true))

(declare-fun _$48!1629 () Unit!157471)

(assert (=> d!1922455 (= (choose!45588 lt!2332343 lt!2332354 (t!378010 s!2326)) _$48!1629)))

(declare-fun b!6135942 () Bool)

(assert (=> b!6135942 (= e!3739685 (matchZipper!2091 lt!2332354 (t!378010 s!2326)))))

(assert (= (and d!1922455 (not res!2542693)) b!6135942))

(assert (=> d!1922455 m!6977544))

(assert (=> d!1922455 m!6977222))

(assert (=> b!6135942 m!6977190))

(assert (=> d!1922057 d!1922455))

(declare-fun d!1922457 () Bool)

(assert (=> d!1922457 (= (isEmptyLang!1506 lt!2332439) ((_ is EmptyLang!16079) lt!2332439))))

(assert (=> b!6135104 d!1922457))

(declare-fun b!6135943 () Bool)

(declare-fun e!3739687 () Bool)

(assert (=> b!6135943 (= e!3739687 (not (= (head!12679 (tail!11764 s!2326)) (c!1103007 (derivativeStep!4799 r!7292 (head!12679 s!2326))))))))

(declare-fun b!6135944 () Bool)

(declare-fun res!2542701 () Bool)

(declare-fun e!3739689 () Bool)

(assert (=> b!6135944 (=> (not res!2542701) (not e!3739689))))

(declare-fun call!509223 () Bool)

(assert (=> b!6135944 (= res!2542701 (not call!509223))))

(declare-fun b!6135945 () Bool)

(declare-fun e!3739692 () Bool)

(assert (=> b!6135945 (= e!3739692 e!3739687)))

(declare-fun res!2542700 () Bool)

(assert (=> b!6135945 (=> res!2542700 e!3739687)))

(assert (=> b!6135945 (= res!2542700 call!509223)))

(declare-fun b!6135946 () Bool)

(declare-fun e!3739686 () Bool)

(declare-fun lt!2332481 () Bool)

(assert (=> b!6135946 (= e!3739686 (not lt!2332481))))

(declare-fun b!6135947 () Bool)

(assert (=> b!6135947 (= e!3739689 (= (head!12679 (tail!11764 s!2326)) (c!1103007 (derivativeStep!4799 r!7292 (head!12679 s!2326)))))))

(declare-fun b!6135948 () Bool)

(declare-fun res!2542698 () Bool)

(declare-fun e!3739690 () Bool)

(assert (=> b!6135948 (=> res!2542698 e!3739690)))

(assert (=> b!6135948 (= res!2542698 e!3739689)))

(declare-fun res!2542699 () Bool)

(assert (=> b!6135948 (=> (not res!2542699) (not e!3739689))))

(assert (=> b!6135948 (= res!2542699 lt!2332481)))

(declare-fun b!6135949 () Bool)

(assert (=> b!6135949 (= e!3739690 e!3739692)))

(declare-fun res!2542696 () Bool)

(assert (=> b!6135949 (=> (not res!2542696) (not e!3739692))))

(assert (=> b!6135949 (= res!2542696 (not lt!2332481))))

(declare-fun b!6135950 () Bool)

(declare-fun e!3739688 () Bool)

(assert (=> b!6135950 (= e!3739688 e!3739686)))

(declare-fun c!1103411 () Bool)

(assert (=> b!6135950 (= c!1103411 ((_ is EmptyLang!16079) (derivativeStep!4799 r!7292 (head!12679 s!2326))))))

(declare-fun b!6135951 () Bool)

(declare-fun res!2542694 () Bool)

(assert (=> b!6135951 (=> (not res!2542694) (not e!3739689))))

(assert (=> b!6135951 (= res!2542694 (isEmpty!36360 (tail!11764 (tail!11764 s!2326))))))

(declare-fun b!6135952 () Bool)

(assert (=> b!6135952 (= e!3739688 (= lt!2332481 call!509223))))

(declare-fun b!6135953 () Bool)

(declare-fun res!2542697 () Bool)

(assert (=> b!6135953 (=> res!2542697 e!3739690)))

(assert (=> b!6135953 (= res!2542697 (not ((_ is ElementMatch!16079) (derivativeStep!4799 r!7292 (head!12679 s!2326)))))))

(assert (=> b!6135953 (= e!3739686 e!3739690)))

(declare-fun bm!509218 () Bool)

(assert (=> bm!509218 (= call!509223 (isEmpty!36360 (tail!11764 s!2326)))))

(declare-fun b!6135955 () Bool)

(declare-fun e!3739691 () Bool)

(assert (=> b!6135955 (= e!3739691 (matchR!8262 (derivativeStep!4799 (derivativeStep!4799 r!7292 (head!12679 s!2326)) (head!12679 (tail!11764 s!2326))) (tail!11764 (tail!11764 s!2326))))))

(declare-fun b!6135956 () Bool)

(assert (=> b!6135956 (= e!3739691 (nullable!6072 (derivativeStep!4799 r!7292 (head!12679 s!2326))))))

(declare-fun d!1922459 () Bool)

(assert (=> d!1922459 e!3739688))

(declare-fun c!1103413 () Bool)

(assert (=> d!1922459 (= c!1103413 ((_ is EmptyExpr!16079) (derivativeStep!4799 r!7292 (head!12679 s!2326))))))

(assert (=> d!1922459 (= lt!2332481 e!3739691)))

(declare-fun c!1103412 () Bool)

(assert (=> d!1922459 (= c!1103412 (isEmpty!36360 (tail!11764 s!2326)))))

(assert (=> d!1922459 (validRegex!7815 (derivativeStep!4799 r!7292 (head!12679 s!2326)))))

(assert (=> d!1922459 (= (matchR!8262 (derivativeStep!4799 r!7292 (head!12679 s!2326)) (tail!11764 s!2326)) lt!2332481)))

(declare-fun b!6135954 () Bool)

(declare-fun res!2542695 () Bool)

(assert (=> b!6135954 (=> res!2542695 e!3739687)))

(assert (=> b!6135954 (= res!2542695 (not (isEmpty!36360 (tail!11764 (tail!11764 s!2326)))))))

(assert (= (and d!1922459 c!1103412) b!6135956))

(assert (= (and d!1922459 (not c!1103412)) b!6135955))

(assert (= (and d!1922459 c!1103413) b!6135952))

(assert (= (and d!1922459 (not c!1103413)) b!6135950))

(assert (= (and b!6135950 c!1103411) b!6135946))

(assert (= (and b!6135950 (not c!1103411)) b!6135953))

(assert (= (and b!6135953 (not res!2542697)) b!6135948))

(assert (= (and b!6135948 res!2542699) b!6135944))

(assert (= (and b!6135944 res!2542701) b!6135951))

(assert (= (and b!6135951 res!2542694) b!6135947))

(assert (= (and b!6135948 (not res!2542698)) b!6135949))

(assert (= (and b!6135949 res!2542696) b!6135945))

(assert (= (and b!6135945 (not res!2542700)) b!6135954))

(assert (= (and b!6135954 (not res!2542695)) b!6135943))

(assert (= (or b!6135952 b!6135944 b!6135945) bm!509218))

(assert (=> d!1922459 m!6977488))

(assert (=> d!1922459 m!6977490))

(assert (=> d!1922459 m!6977494))

(declare-fun m!6978434 () Bool)

(assert (=> d!1922459 m!6978434))

(assert (=> bm!509218 m!6977488))

(assert (=> bm!509218 m!6977490))

(assert (=> b!6135947 m!6977488))

(declare-fun m!6978436 () Bool)

(assert (=> b!6135947 m!6978436))

(assert (=> b!6135951 m!6977488))

(declare-fun m!6978438 () Bool)

(assert (=> b!6135951 m!6978438))

(assert (=> b!6135951 m!6978438))

(declare-fun m!6978440 () Bool)

(assert (=> b!6135951 m!6978440))

(assert (=> b!6135954 m!6977488))

(assert (=> b!6135954 m!6978438))

(assert (=> b!6135954 m!6978438))

(assert (=> b!6135954 m!6978440))

(assert (=> b!6135956 m!6977494))

(declare-fun m!6978442 () Bool)

(assert (=> b!6135956 m!6978442))

(assert (=> b!6135943 m!6977488))

(assert (=> b!6135943 m!6978436))

(assert (=> b!6135955 m!6977488))

(assert (=> b!6135955 m!6978436))

(assert (=> b!6135955 m!6977494))

(assert (=> b!6135955 m!6978436))

(declare-fun m!6978444 () Bool)

(assert (=> b!6135955 m!6978444))

(assert (=> b!6135955 m!6977488))

(assert (=> b!6135955 m!6978438))

(assert (=> b!6135955 m!6978444))

(assert (=> b!6135955 m!6978438))

(declare-fun m!6978446 () Bool)

(assert (=> b!6135955 m!6978446))

(assert (=> b!6134930 d!1922459))

(declare-fun bm!509227 () Bool)

(declare-fun call!509233 () Regex!16079)

(declare-fun c!1103428 () Bool)

(declare-fun c!1103427 () Bool)

(assert (=> bm!509227 (= call!509233 (derivativeStep!4799 (ite c!1103427 (regOne!32671 r!7292) (ite c!1103428 (regTwo!32670 r!7292) (regOne!32670 r!7292))) (head!12679 s!2326)))))

(declare-fun d!1922461 () Bool)

(declare-fun lt!2332484 () Regex!16079)

(assert (=> d!1922461 (validRegex!7815 lt!2332484)))

(declare-fun e!3739705 () Regex!16079)

(assert (=> d!1922461 (= lt!2332484 e!3739705)))

(declare-fun c!1103424 () Bool)

(assert (=> d!1922461 (= c!1103424 (or ((_ is EmptyExpr!16079) r!7292) ((_ is EmptyLang!16079) r!7292)))))

(assert (=> d!1922461 (validRegex!7815 r!7292)))

(assert (=> d!1922461 (= (derivativeStep!4799 r!7292 (head!12679 s!2326)) lt!2332484)))

(declare-fun bm!509228 () Bool)

(declare-fun call!509235 () Regex!16079)

(assert (=> bm!509228 (= call!509235 call!509233)))

(declare-fun b!6135977 () Bool)

(declare-fun e!3739706 () Regex!16079)

(declare-fun call!509234 () Regex!16079)

(assert (=> b!6135977 (= e!3739706 (Union!16079 call!509233 call!509234))))

(declare-fun b!6135978 () Bool)

(declare-fun e!3739704 () Regex!16079)

(assert (=> b!6135978 (= e!3739704 (ite (= (head!12679 s!2326) (c!1103007 r!7292)) EmptyExpr!16079 EmptyLang!16079))))

(declare-fun c!1103426 () Bool)

(declare-fun bm!509229 () Bool)

(assert (=> bm!509229 (= call!509234 (derivativeStep!4799 (ite c!1103427 (regTwo!32671 r!7292) (ite c!1103426 (reg!16408 r!7292) (regOne!32670 r!7292))) (head!12679 s!2326)))))

(declare-fun b!6135979 () Bool)

(declare-fun e!3739703 () Regex!16079)

(assert (=> b!6135979 (= e!3739703 (Union!16079 (Concat!24924 call!509235 (regTwo!32670 r!7292)) EmptyLang!16079))))

(declare-fun b!6135980 () Bool)

(declare-fun e!3739707 () Regex!16079)

(declare-fun call!509232 () Regex!16079)

(assert (=> b!6135980 (= e!3739707 (Concat!24924 call!509232 r!7292))))

(declare-fun b!6135981 () Bool)

(assert (=> b!6135981 (= e!3739705 e!3739704)))

(declare-fun c!1103425 () Bool)

(assert (=> b!6135981 (= c!1103425 ((_ is ElementMatch!16079) r!7292))))

(declare-fun b!6135982 () Bool)

(assert (=> b!6135982 (= e!3739706 e!3739707)))

(assert (=> b!6135982 (= c!1103426 ((_ is Star!16079) r!7292))))

(declare-fun b!6135983 () Bool)

(assert (=> b!6135983 (= e!3739703 (Union!16079 (Concat!24924 call!509232 (regTwo!32670 r!7292)) call!509235))))

(declare-fun b!6135984 () Bool)

(assert (=> b!6135984 (= c!1103428 (nullable!6072 (regOne!32670 r!7292)))))

(assert (=> b!6135984 (= e!3739707 e!3739703)))

(declare-fun b!6135985 () Bool)

(assert (=> b!6135985 (= e!3739705 EmptyLang!16079)))

(declare-fun b!6135986 () Bool)

(assert (=> b!6135986 (= c!1103427 ((_ is Union!16079) r!7292))))

(assert (=> b!6135986 (= e!3739704 e!3739706)))

(declare-fun bm!509230 () Bool)

(assert (=> bm!509230 (= call!509232 call!509234)))

(assert (= (and d!1922461 c!1103424) b!6135985))

(assert (= (and d!1922461 (not c!1103424)) b!6135981))

(assert (= (and b!6135981 c!1103425) b!6135978))

(assert (= (and b!6135981 (not c!1103425)) b!6135986))

(assert (= (and b!6135986 c!1103427) b!6135977))

(assert (= (and b!6135986 (not c!1103427)) b!6135982))

(assert (= (and b!6135982 c!1103426) b!6135980))

(assert (= (and b!6135982 (not c!1103426)) b!6135984))

(assert (= (and b!6135984 c!1103428) b!6135983))

(assert (= (and b!6135984 (not c!1103428)) b!6135979))

(assert (= (or b!6135983 b!6135979) bm!509228))

(assert (= (or b!6135980 b!6135983) bm!509230))

(assert (= (or b!6135977 bm!509230) bm!509229))

(assert (= (or b!6135977 bm!509228) bm!509227))

(assert (=> bm!509227 m!6977486))

(declare-fun m!6978448 () Bool)

(assert (=> bm!509227 m!6978448))

(declare-fun m!6978450 () Bool)

(assert (=> d!1922461 m!6978450))

(assert (=> d!1922461 m!6977168))

(assert (=> bm!509229 m!6977486))

(declare-fun m!6978452 () Bool)

(assert (=> bm!509229 m!6978452))

(declare-fun m!6978454 () Bool)

(assert (=> b!6135984 m!6978454))

(assert (=> b!6134930 d!1922461))

(assert (=> b!6134930 d!1922435))

(assert (=> b!6134930 d!1922443))

(declare-fun bs!1521772 () Bool)

(declare-fun d!1922463 () Bool)

(assert (= bs!1521772 (and d!1922463 d!1922437)))

(declare-fun lambda!334358 () Int)

(assert (=> bs!1521772 (= lambda!334358 lambda!334356)))

(declare-fun bs!1521773 () Bool)

(assert (= bs!1521773 (and d!1922463 d!1922449)))

(assert (=> bs!1521773 (= lambda!334358 lambda!334357)))

(assert (=> d!1922463 (= (nullableZipper!1860 lt!2332357) (exists!2426 lt!2332357 lambda!334358))))

(declare-fun bs!1521774 () Bool)

(assert (= bs!1521774 d!1922463))

(declare-fun m!6978456 () Bool)

(assert (=> bs!1521774 m!6978456))

(assert (=> b!6135038 d!1922463))

(assert (=> b!6134974 d!1922099))

(declare-fun d!1922465 () Bool)

(declare-fun c!1103429 () Bool)

(assert (=> d!1922465 (= c!1103429 (isEmpty!36360 (tail!11764 (t!378010 s!2326))))))

(declare-fun e!3739708 () Bool)

(assert (=> d!1922465 (= (matchZipper!2091 (derivationStepZipper!2052 lt!2332344 (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))) e!3739708)))

(declare-fun b!6135987 () Bool)

(assert (=> b!6135987 (= e!3739708 (nullableZipper!1860 (derivationStepZipper!2052 lt!2332344 (head!12679 (t!378010 s!2326)))))))

(declare-fun b!6135988 () Bool)

(assert (=> b!6135988 (= e!3739708 (matchZipper!2091 (derivationStepZipper!2052 (derivationStepZipper!2052 lt!2332344 (head!12679 (t!378010 s!2326))) (head!12679 (tail!11764 (t!378010 s!2326)))) (tail!11764 (tail!11764 (t!378010 s!2326)))))))

(assert (= (and d!1922465 c!1103429) b!6135987))

(assert (= (and d!1922465 (not c!1103429)) b!6135988))

(assert (=> d!1922465 m!6977528))

(assert (=> d!1922465 m!6978236))

(assert (=> b!6135987 m!6977526))

(declare-fun m!6978458 () Bool)

(assert (=> b!6135987 m!6978458))

(assert (=> b!6135988 m!6977528))

(assert (=> b!6135988 m!6978240))

(assert (=> b!6135988 m!6977526))

(assert (=> b!6135988 m!6978240))

(declare-fun m!6978460 () Bool)

(assert (=> b!6135988 m!6978460))

(assert (=> b!6135988 m!6977528))

(assert (=> b!6135988 m!6978244))

(assert (=> b!6135988 m!6978460))

(assert (=> b!6135988 m!6978244))

(declare-fun m!6978462 () Bool)

(assert (=> b!6135988 m!6978462))

(assert (=> b!6134967 d!1922465))

(declare-fun bs!1521775 () Bool)

(declare-fun d!1922467 () Bool)

(assert (= bs!1521775 (and d!1922467 d!1922399)))

(declare-fun lambda!334359 () Int)

(assert (=> bs!1521775 (= lambda!334359 lambda!334351)))

(declare-fun bs!1521776 () Bool)

(assert (= bs!1521776 (and d!1922467 b!6134439)))

(assert (=> bs!1521776 (= (= (head!12679 (t!378010 s!2326)) (h!70861 s!2326)) (= lambda!334359 lambda!334251))))

(declare-fun bs!1521777 () Bool)

(assert (= bs!1521777 (and d!1922467 d!1922429)))

(assert (=> bs!1521777 (= lambda!334359 lambda!334353)))

(declare-fun bs!1521778 () Bool)

(assert (= bs!1521778 (and d!1922467 d!1922415)))

(assert (=> bs!1521778 (= lambda!334359 lambda!334352)))

(declare-fun bs!1521779 () Bool)

(assert (= bs!1521779 (and d!1922467 d!1922371)))

(assert (=> bs!1521779 (= lambda!334359 lambda!334349)))

(assert (=> d!1922467 true))

(assert (=> d!1922467 (= (derivationStepZipper!2052 lt!2332344 (head!12679 (t!378010 s!2326))) (flatMap!1584 lt!2332344 lambda!334359))))

(declare-fun bs!1521780 () Bool)

(assert (= bs!1521780 d!1922467))

(declare-fun m!6978464 () Bool)

(assert (=> bs!1521780 m!6978464))

(assert (=> b!6134967 d!1922467))

(assert (=> b!6134967 d!1922373))

(assert (=> b!6134967 d!1922375))

(declare-fun d!1922469 () Bool)

(assert (=> d!1922469 (= (isEmpty!36360 s!2326) ((_ is Nil!64413) s!2326))))

(assert (=> bm!509031 d!1922469))

(declare-fun b!6135989 () Bool)

(declare-fun e!3739709 () (InoxSet Context!10926))

(declare-fun e!3739711 () (InoxSet Context!10926))

(assert (=> b!6135989 (= e!3739709 e!3739711)))

(declare-fun c!1103432 () Bool)

(assert (=> b!6135989 (= c!1103432 ((_ is Union!16079) (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))

(declare-fun bm!509231 () Bool)

(declare-fun call!509236 () List!64536)

(declare-fun c!1103433 () Bool)

(declare-fun c!1103430 () Bool)

(declare-fun call!509237 () (InoxSet Context!10926))

(assert (=> bm!509231 (= call!509237 (derivationStepZipperDown!1327 (ite c!1103432 (regOne!32671 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))) (ite c!1103430 (regTwo!32670 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))) (ite c!1103433 (regOne!32670 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))) (reg!16408 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))))))) (ite (or c!1103432 c!1103430) (ite c!1103173 lt!2332346 (Context!10927 call!509060)) (Context!10927 call!509236)) (h!70861 s!2326)))))

(declare-fun b!6135990 () Bool)

(declare-fun e!3739714 () Bool)

(assert (=> b!6135990 (= e!3739714 (nullable!6072 (regOne!32670 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))))))))

(declare-fun b!6135991 () Bool)

(declare-fun e!3739713 () (InoxSet Context!10926))

(declare-fun call!509238 () (InoxSet Context!10926))

(assert (=> b!6135991 (= e!3739713 call!509238)))

(declare-fun b!6135992 () Bool)

(declare-fun call!509241 () (InoxSet Context!10926))

(assert (=> b!6135992 (= e!3739711 ((_ map or) call!509237 call!509241))))

(declare-fun b!6135993 () Bool)

(assert (=> b!6135993 (= e!3739713 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6135994 () Bool)

(declare-fun e!3739712 () (InoxSet Context!10926))

(declare-fun call!509240 () (InoxSet Context!10926))

(assert (=> b!6135994 (= e!3739712 ((_ map or) call!509241 call!509240))))

(declare-fun bm!509233 () Bool)

(declare-fun call!509239 () List!64536)

(assert (=> bm!509233 (= call!509241 (derivationStepZipperDown!1327 (ite c!1103432 (regTwo!32671 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))) (regOne!32670 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))))) (ite c!1103432 (ite c!1103173 lt!2332346 (Context!10927 call!509060)) (Context!10927 call!509239)) (h!70861 s!2326)))))

(declare-fun b!6135995 () Bool)

(assert (=> b!6135995 (= c!1103430 e!3739714)))

(declare-fun res!2542702 () Bool)

(assert (=> b!6135995 (=> (not res!2542702) (not e!3739714))))

(assert (=> b!6135995 (= res!2542702 ((_ is Concat!24924) (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))

(assert (=> b!6135995 (= e!3739711 e!3739712)))

(declare-fun b!6135996 () Bool)

(declare-fun e!3739710 () (InoxSet Context!10926))

(assert (=> b!6135996 (= e!3739710 call!509238)))

(declare-fun bm!509234 () Bool)

(assert (=> bm!509234 (= call!509240 call!509237)))

(declare-fun bm!509235 () Bool)

(assert (=> bm!509235 (= call!509239 ($colon$colon!1956 (exprs!5963 (ite c!1103173 lt!2332346 (Context!10927 call!509060))) (ite (or c!1103430 c!1103433) (regTwo!32670 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))) (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))))))))

(declare-fun b!6135997 () Bool)

(assert (=> b!6135997 (= e!3739712 e!3739710)))

(assert (=> b!6135997 (= c!1103433 ((_ is Concat!24924) (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))

(declare-fun b!6135998 () Bool)

(declare-fun c!1103431 () Bool)

(assert (=> b!6135998 (= c!1103431 ((_ is Star!16079) (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))

(assert (=> b!6135998 (= e!3739710 e!3739713)))

(declare-fun bm!509236 () Bool)

(assert (=> bm!509236 (= call!509238 call!509240)))

(declare-fun b!6135999 () Bool)

(assert (=> b!6135999 (= e!3739709 (store ((as const (Array Context!10926 Bool)) false) (ite c!1103173 lt!2332346 (Context!10927 call!509060)) true))))

(declare-fun c!1103434 () Bool)

(declare-fun d!1922471 () Bool)

(assert (=> d!1922471 (= c!1103434 (and ((_ is ElementMatch!16079) (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))) (= (c!1103007 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))) (h!70861 s!2326))))))

(assert (=> d!1922471 (= (derivationStepZipperDown!1327 (ite c!1103173 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))) (ite c!1103173 lt!2332346 (Context!10927 call!509060)) (h!70861 s!2326)) e!3739709)))

(declare-fun bm!509232 () Bool)

(assert (=> bm!509232 (= call!509236 call!509239)))

(assert (= (and d!1922471 c!1103434) b!6135999))

(assert (= (and d!1922471 (not c!1103434)) b!6135989))

(assert (= (and b!6135989 c!1103432) b!6135992))

(assert (= (and b!6135989 (not c!1103432)) b!6135995))

(assert (= (and b!6135995 res!2542702) b!6135990))

(assert (= (and b!6135995 c!1103430) b!6135994))

(assert (= (and b!6135995 (not c!1103430)) b!6135997))

(assert (= (and b!6135997 c!1103433) b!6135996))

(assert (= (and b!6135997 (not c!1103433)) b!6135998))

(assert (= (and b!6135998 c!1103431) b!6135991))

(assert (= (and b!6135998 (not c!1103431)) b!6135993))

(assert (= (or b!6135996 b!6135991) bm!509232))

(assert (= (or b!6135996 b!6135991) bm!509236))

(assert (= (or b!6135994 bm!509232) bm!509235))

(assert (= (or b!6135994 bm!509236) bm!509234))

(assert (= (or b!6135992 b!6135994) bm!509233))

(assert (= (or b!6135992 bm!509234) bm!509231))

(declare-fun m!6978466 () Bool)

(assert (=> bm!509233 m!6978466))

(declare-fun m!6978468 () Bool)

(assert (=> bm!509235 m!6978468))

(declare-fun m!6978470 () Bool)

(assert (=> bm!509231 m!6978470))

(declare-fun m!6978472 () Bool)

(assert (=> b!6135990 m!6978472))

(declare-fun m!6978474 () Bool)

(assert (=> b!6135999 m!6978474))

(assert (=> bm!509054 d!1922471))

(declare-fun d!1922473 () Bool)

(assert (=> d!1922473 (= (nullable!6072 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))) (nullableFct!2036 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))))))

(declare-fun bs!1521781 () Bool)

(assert (= bs!1521781 d!1922473))

(declare-fun m!6978476 () Bool)

(assert (=> bs!1521781 m!6978476))

(assert (=> b!6135121 d!1922473))

(assert (=> b!6134918 d!1922435))

(declare-fun bs!1521782 () Bool)

(declare-fun d!1922475 () Bool)

(assert (= bs!1521782 (and d!1922475 d!1922103)))

(declare-fun lambda!334360 () Int)

(assert (=> bs!1521782 (= lambda!334360 lambda!334309)))

(declare-fun bs!1521783 () Bool)

(assert (= bs!1521783 (and d!1922475 d!1922387)))

(assert (=> bs!1521783 (= lambda!334360 lambda!334350)))

(declare-fun bs!1521784 () Bool)

(assert (= bs!1521784 (and d!1922475 d!1922083)))

(assert (=> bs!1521784 (= lambda!334360 lambda!334294)))

(declare-fun bs!1521785 () Bool)

(assert (= bs!1521785 (and d!1922475 d!1922049)))

(assert (=> bs!1521785 (= lambda!334360 lambda!334292)))

(declare-fun bs!1521786 () Bool)

(assert (= bs!1521786 (and d!1922475 d!1922101)))

(assert (=> bs!1521786 (= lambda!334360 lambda!334306)))

(declare-fun bs!1521787 () Bool)

(assert (= bs!1521787 (and d!1922475 d!1922047)))

(assert (=> bs!1521787 (= lambda!334360 lambda!334289)))

(declare-fun bs!1521788 () Bool)

(assert (= bs!1521788 (and d!1922475 d!1922059)))

(assert (=> bs!1521788 (= lambda!334360 lambda!334293)))

(declare-fun bs!1521789 () Bool)

(assert (= bs!1521789 (and d!1922475 d!1922365)))

(assert (=> bs!1521789 (= lambda!334360 lambda!334346)))

(declare-fun b!6136000 () Bool)

(declare-fun e!3739719 () Bool)

(declare-fun lt!2332485 () Regex!16079)

(assert (=> b!6136000 (= e!3739719 (isEmptyLang!1506 lt!2332485))))

(declare-fun e!3739718 () Bool)

(assert (=> d!1922475 e!3739718))

(declare-fun res!2542704 () Bool)

(assert (=> d!1922475 (=> (not res!2542704) (not e!3739718))))

(assert (=> d!1922475 (= res!2542704 (validRegex!7815 lt!2332485))))

(declare-fun e!3739720 () Regex!16079)

(assert (=> d!1922475 (= lt!2332485 e!3739720)))

(declare-fun c!1103437 () Bool)

(declare-fun e!3739715 () Bool)

(assert (=> d!1922475 (= c!1103437 e!3739715)))

(declare-fun res!2542703 () Bool)

(assert (=> d!1922475 (=> (not res!2542703) (not e!3739715))))

(assert (=> d!1922475 (= res!2542703 ((_ is Cons!64412) (t!378009 (unfocusZipperList!1500 zl!343))))))

(assert (=> d!1922475 (forall!15200 (t!378009 (unfocusZipperList!1500 zl!343)) lambda!334360)))

(assert (=> d!1922475 (= (generalisedUnion!1923 (t!378009 (unfocusZipperList!1500 zl!343))) lt!2332485)))

(declare-fun b!6136001 () Bool)

(declare-fun e!3739716 () Bool)

(assert (=> b!6136001 (= e!3739716 (= lt!2332485 (head!12680 (t!378009 (unfocusZipperList!1500 zl!343)))))))

(declare-fun b!6136002 () Bool)

(assert (=> b!6136002 (= e!3739719 e!3739716)))

(declare-fun c!1103438 () Bool)

(assert (=> b!6136002 (= c!1103438 (isEmpty!36357 (tail!11765 (t!378009 (unfocusZipperList!1500 zl!343)))))))

(declare-fun b!6136003 () Bool)

(assert (=> b!6136003 (= e!3739720 (h!70860 (t!378009 (unfocusZipperList!1500 zl!343))))))

(declare-fun b!6136004 () Bool)

(declare-fun e!3739717 () Regex!16079)

(assert (=> b!6136004 (= e!3739717 (Union!16079 (h!70860 (t!378009 (unfocusZipperList!1500 zl!343))) (generalisedUnion!1923 (t!378009 (t!378009 (unfocusZipperList!1500 zl!343))))))))

(declare-fun b!6136005 () Bool)

(assert (=> b!6136005 (= e!3739718 e!3739719)))

(declare-fun c!1103436 () Bool)

(assert (=> b!6136005 (= c!1103436 (isEmpty!36357 (t!378009 (unfocusZipperList!1500 zl!343))))))

(declare-fun b!6136006 () Bool)

(assert (=> b!6136006 (= e!3739715 (isEmpty!36357 (t!378009 (t!378009 (unfocusZipperList!1500 zl!343)))))))

(declare-fun b!6136007 () Bool)

(assert (=> b!6136007 (= e!3739717 EmptyLang!16079)))

(declare-fun b!6136008 () Bool)

(assert (=> b!6136008 (= e!3739720 e!3739717)))

(declare-fun c!1103435 () Bool)

(assert (=> b!6136008 (= c!1103435 ((_ is Cons!64412) (t!378009 (unfocusZipperList!1500 zl!343))))))

(declare-fun b!6136009 () Bool)

(assert (=> b!6136009 (= e!3739716 (isUnion!936 lt!2332485))))

(assert (= (and d!1922475 res!2542703) b!6136006))

(assert (= (and d!1922475 c!1103437) b!6136003))

(assert (= (and d!1922475 (not c!1103437)) b!6136008))

(assert (= (and b!6136008 c!1103435) b!6136004))

(assert (= (and b!6136008 (not c!1103435)) b!6136007))

(assert (= (and d!1922475 res!2542704) b!6136005))

(assert (= (and b!6136005 c!1103436) b!6136000))

(assert (= (and b!6136005 (not c!1103436)) b!6136002))

(assert (= (and b!6136002 c!1103438) b!6136001))

(assert (= (and b!6136002 (not c!1103438)) b!6136009))

(declare-fun m!6978478 () Bool)

(assert (=> b!6136006 m!6978478))

(assert (=> b!6136005 m!6977652))

(declare-fun m!6978480 () Bool)

(assert (=> b!6136002 m!6978480))

(assert (=> b!6136002 m!6978480))

(declare-fun m!6978482 () Bool)

(assert (=> b!6136002 m!6978482))

(declare-fun m!6978484 () Bool)

(assert (=> b!6136004 m!6978484))

(declare-fun m!6978486 () Bool)

(assert (=> b!6136009 m!6978486))

(declare-fun m!6978488 () Bool)

(assert (=> d!1922475 m!6978488))

(declare-fun m!6978490 () Bool)

(assert (=> d!1922475 m!6978490))

(declare-fun m!6978492 () Bool)

(assert (=> b!6136000 m!6978492))

(declare-fun m!6978494 () Bool)

(assert (=> b!6136001 m!6978494))

(assert (=> b!6135108 d!1922475))

(declare-fun b!6136010 () Bool)

(declare-fun e!3739722 () Bool)

(assert (=> b!6136010 (= e!3739722 (not (= (head!12679 (_1!36361 (get!22220 lt!2332426))) (c!1103007 (regOne!32670 r!7292)))))))

(declare-fun b!6136011 () Bool)

(declare-fun res!2542712 () Bool)

(declare-fun e!3739724 () Bool)

(assert (=> b!6136011 (=> (not res!2542712) (not e!3739724))))

(declare-fun call!509242 () Bool)

(assert (=> b!6136011 (= res!2542712 (not call!509242))))

(declare-fun b!6136012 () Bool)

(declare-fun e!3739727 () Bool)

(assert (=> b!6136012 (= e!3739727 e!3739722)))

(declare-fun res!2542711 () Bool)

(assert (=> b!6136012 (=> res!2542711 e!3739722)))

(assert (=> b!6136012 (= res!2542711 call!509242)))

(declare-fun b!6136013 () Bool)

(declare-fun e!3739721 () Bool)

(declare-fun lt!2332486 () Bool)

(assert (=> b!6136013 (= e!3739721 (not lt!2332486))))

(declare-fun b!6136014 () Bool)

(assert (=> b!6136014 (= e!3739724 (= (head!12679 (_1!36361 (get!22220 lt!2332426))) (c!1103007 (regOne!32670 r!7292))))))

(declare-fun b!6136015 () Bool)

(declare-fun res!2542709 () Bool)

(declare-fun e!3739725 () Bool)

(assert (=> b!6136015 (=> res!2542709 e!3739725)))

(assert (=> b!6136015 (= res!2542709 e!3739724)))

(declare-fun res!2542710 () Bool)

(assert (=> b!6136015 (=> (not res!2542710) (not e!3739724))))

(assert (=> b!6136015 (= res!2542710 lt!2332486)))

(declare-fun b!6136016 () Bool)

(assert (=> b!6136016 (= e!3739725 e!3739727)))

(declare-fun res!2542707 () Bool)

(assert (=> b!6136016 (=> (not res!2542707) (not e!3739727))))

(assert (=> b!6136016 (= res!2542707 (not lt!2332486))))

(declare-fun b!6136017 () Bool)

(declare-fun e!3739723 () Bool)

(assert (=> b!6136017 (= e!3739723 e!3739721)))

(declare-fun c!1103439 () Bool)

(assert (=> b!6136017 (= c!1103439 ((_ is EmptyLang!16079) (regOne!32670 r!7292)))))

(declare-fun b!6136018 () Bool)

(declare-fun res!2542705 () Bool)

(assert (=> b!6136018 (=> (not res!2542705) (not e!3739724))))

(assert (=> b!6136018 (= res!2542705 (isEmpty!36360 (tail!11764 (_1!36361 (get!22220 lt!2332426)))))))

(declare-fun b!6136019 () Bool)

(assert (=> b!6136019 (= e!3739723 (= lt!2332486 call!509242))))

(declare-fun b!6136020 () Bool)

(declare-fun res!2542708 () Bool)

(assert (=> b!6136020 (=> res!2542708 e!3739725)))

(assert (=> b!6136020 (= res!2542708 (not ((_ is ElementMatch!16079) (regOne!32670 r!7292))))))

(assert (=> b!6136020 (= e!3739721 e!3739725)))

(declare-fun bm!509237 () Bool)

(assert (=> bm!509237 (= call!509242 (isEmpty!36360 (_1!36361 (get!22220 lt!2332426))))))

(declare-fun b!6136022 () Bool)

(declare-fun e!3739726 () Bool)

(assert (=> b!6136022 (= e!3739726 (matchR!8262 (derivativeStep!4799 (regOne!32670 r!7292) (head!12679 (_1!36361 (get!22220 lt!2332426)))) (tail!11764 (_1!36361 (get!22220 lt!2332426)))))))

(declare-fun b!6136023 () Bool)

(assert (=> b!6136023 (= e!3739726 (nullable!6072 (regOne!32670 r!7292)))))

(declare-fun d!1922477 () Bool)

(assert (=> d!1922477 e!3739723))

(declare-fun c!1103441 () Bool)

(assert (=> d!1922477 (= c!1103441 ((_ is EmptyExpr!16079) (regOne!32670 r!7292)))))

(assert (=> d!1922477 (= lt!2332486 e!3739726)))

(declare-fun c!1103440 () Bool)

(assert (=> d!1922477 (= c!1103440 (isEmpty!36360 (_1!36361 (get!22220 lt!2332426))))))

(assert (=> d!1922477 (validRegex!7815 (regOne!32670 r!7292))))

(assert (=> d!1922477 (= (matchR!8262 (regOne!32670 r!7292) (_1!36361 (get!22220 lt!2332426))) lt!2332486)))

(declare-fun b!6136021 () Bool)

(declare-fun res!2542706 () Bool)

(assert (=> b!6136021 (=> res!2542706 e!3739722)))

(assert (=> b!6136021 (= res!2542706 (not (isEmpty!36360 (tail!11764 (_1!36361 (get!22220 lt!2332426))))))))

(assert (= (and d!1922477 c!1103440) b!6136023))

(assert (= (and d!1922477 (not c!1103440)) b!6136022))

(assert (= (and d!1922477 c!1103441) b!6136019))

(assert (= (and d!1922477 (not c!1103441)) b!6136017))

(assert (= (and b!6136017 c!1103439) b!6136013))

(assert (= (and b!6136017 (not c!1103439)) b!6136020))

(assert (= (and b!6136020 (not res!2542708)) b!6136015))

(assert (= (and b!6136015 res!2542710) b!6136011))

(assert (= (and b!6136011 res!2542712) b!6136018))

(assert (= (and b!6136018 res!2542705) b!6136014))

(assert (= (and b!6136015 (not res!2542709)) b!6136016))

(assert (= (and b!6136016 res!2542707) b!6136012))

(assert (= (and b!6136012 (not res!2542711)) b!6136021))

(assert (= (and b!6136021 (not res!2542706)) b!6136010))

(assert (= (or b!6136019 b!6136011 b!6136012) bm!509237))

(declare-fun m!6978496 () Bool)

(assert (=> d!1922477 m!6978496))

(assert (=> d!1922477 m!6977620))

(assert (=> bm!509237 m!6978496))

(declare-fun m!6978498 () Bool)

(assert (=> b!6136014 m!6978498))

(declare-fun m!6978500 () Bool)

(assert (=> b!6136018 m!6978500))

(assert (=> b!6136018 m!6978500))

(declare-fun m!6978502 () Bool)

(assert (=> b!6136018 m!6978502))

(assert (=> b!6136021 m!6978500))

(assert (=> b!6136021 m!6978500))

(assert (=> b!6136021 m!6978502))

(assert (=> b!6136023 m!6978454))

(assert (=> b!6136010 m!6978498))

(assert (=> b!6136022 m!6978498))

(assert (=> b!6136022 m!6978498))

(declare-fun m!6978504 () Bool)

(assert (=> b!6136022 m!6978504))

(assert (=> b!6136022 m!6978500))

(assert (=> b!6136022 m!6978504))

(assert (=> b!6136022 m!6978500))

(declare-fun m!6978506 () Bool)

(assert (=> b!6136022 m!6978506))

(assert (=> b!6135060 d!1922477))

(declare-fun d!1922479 () Bool)

(assert (=> d!1922479 (= (get!22220 lt!2332426) (v!52108 lt!2332426))))

(assert (=> b!6135060 d!1922479))

(declare-fun bs!1521790 () Bool)

(declare-fun d!1922481 () Bool)

(assert (= bs!1521790 (and d!1922481 d!1922437)))

(declare-fun lambda!334361 () Int)

(assert (=> bs!1521790 (= lambda!334361 lambda!334356)))

(declare-fun bs!1521791 () Bool)

(assert (= bs!1521791 (and d!1922481 d!1922449)))

(assert (=> bs!1521791 (= lambda!334361 lambda!334357)))

(declare-fun bs!1521792 () Bool)

(assert (= bs!1521792 (and d!1922481 d!1922463)))

(assert (=> bs!1521792 (= lambda!334361 lambda!334358)))

(assert (=> d!1922481 (= (nullableZipper!1860 lt!2332348) (exists!2426 lt!2332348 lambda!334361))))

(declare-fun bs!1521793 () Bool)

(assert (= bs!1521793 d!1922481))

(declare-fun m!6978508 () Bool)

(assert (=> bs!1521793 m!6978508))

(assert (=> b!6134968 d!1922481))

(declare-fun d!1922483 () Bool)

(assert (=> d!1922483 (= (isConcat!1019 lt!2332412) ((_ is Concat!24924) lt!2332412))))

(assert (=> b!6134953 d!1922483))

(declare-fun c!1103443 () Bool)

(declare-fun call!509244 () Bool)

(declare-fun bm!509238 () Bool)

(declare-fun c!1103442 () Bool)

(assert (=> bm!509238 (= call!509244 (validRegex!7815 (ite c!1103443 (reg!16408 lt!2332446) (ite c!1103442 (regOne!32671 lt!2332446) (regOne!32670 lt!2332446)))))))

(declare-fun b!6136024 () Bool)

(declare-fun res!2542713 () Bool)

(declare-fun e!3739728 () Bool)

(assert (=> b!6136024 (=> res!2542713 e!3739728)))

(assert (=> b!6136024 (= res!2542713 (not ((_ is Concat!24924) lt!2332446)))))

(declare-fun e!3739730 () Bool)

(assert (=> b!6136024 (= e!3739730 e!3739728)))

(declare-fun b!6136025 () Bool)

(declare-fun res!2542715 () Bool)

(declare-fun e!3739733 () Bool)

(assert (=> b!6136025 (=> (not res!2542715) (not e!3739733))))

(declare-fun call!509243 () Bool)

(assert (=> b!6136025 (= res!2542715 call!509243)))

(assert (=> b!6136025 (= e!3739730 e!3739733)))

(declare-fun b!6136026 () Bool)

(declare-fun e!3739732 () Bool)

(declare-fun e!3739731 () Bool)

(assert (=> b!6136026 (= e!3739732 e!3739731)))

(declare-fun res!2542717 () Bool)

(assert (=> b!6136026 (= res!2542717 (not (nullable!6072 (reg!16408 lt!2332446))))))

(assert (=> b!6136026 (=> (not res!2542717) (not e!3739731))))

(declare-fun b!6136027 () Bool)

(assert (=> b!6136027 (= e!3739732 e!3739730)))

(assert (=> b!6136027 (= c!1103442 ((_ is Union!16079) lt!2332446))))

(declare-fun b!6136029 () Bool)

(declare-fun e!3739734 () Bool)

(assert (=> b!6136029 (= e!3739734 e!3739732)))

(assert (=> b!6136029 (= c!1103443 ((_ is Star!16079) lt!2332446))))

(declare-fun b!6136030 () Bool)

(declare-fun e!3739729 () Bool)

(assert (=> b!6136030 (= e!3739728 e!3739729)))

(declare-fun res!2542714 () Bool)

(assert (=> b!6136030 (=> (not res!2542714) (not e!3739729))))

(assert (=> b!6136030 (= res!2542714 call!509243)))

(declare-fun b!6136031 () Bool)

(assert (=> b!6136031 (= e!3739731 call!509244)))

(declare-fun b!6136032 () Bool)

(declare-fun call!509245 () Bool)

(assert (=> b!6136032 (= e!3739733 call!509245)))

(declare-fun d!1922485 () Bool)

(declare-fun res!2542716 () Bool)

(assert (=> d!1922485 (=> res!2542716 e!3739734)))

(assert (=> d!1922485 (= res!2542716 ((_ is ElementMatch!16079) lt!2332446))))

(assert (=> d!1922485 (= (validRegex!7815 lt!2332446) e!3739734)))

(declare-fun b!6136028 () Bool)

(assert (=> b!6136028 (= e!3739729 call!509245)))

(declare-fun bm!509239 () Bool)

(assert (=> bm!509239 (= call!509243 call!509244)))

(declare-fun bm!509240 () Bool)

(assert (=> bm!509240 (= call!509245 (validRegex!7815 (ite c!1103442 (regTwo!32671 lt!2332446) (regTwo!32670 lt!2332446))))))

(assert (= (and d!1922485 (not res!2542716)) b!6136029))

(assert (= (and b!6136029 c!1103443) b!6136026))

(assert (= (and b!6136029 (not c!1103443)) b!6136027))

(assert (= (and b!6136026 res!2542717) b!6136031))

(assert (= (and b!6136027 c!1103442) b!6136025))

(assert (= (and b!6136027 (not c!1103442)) b!6136024))

(assert (= (and b!6136025 res!2542715) b!6136032))

(assert (= (and b!6136024 (not res!2542713)) b!6136030))

(assert (= (and b!6136030 res!2542714) b!6136028))

(assert (= (or b!6136032 b!6136028) bm!509240))

(assert (= (or b!6136025 b!6136030) bm!509239))

(assert (= (or b!6136031 bm!509239) bm!509238))

(declare-fun m!6978510 () Bool)

(assert (=> bm!509238 m!6978510))

(declare-fun m!6978512 () Bool)

(assert (=> b!6136026 m!6978512))

(declare-fun m!6978514 () Bool)

(assert (=> bm!509240 m!6978514))

(assert (=> d!1922115 d!1922485))

(assert (=> d!1922115 d!1922101))

(assert (=> d!1922115 d!1922103))

(assert (=> d!1922045 d!1922043))

(assert (=> d!1922045 d!1922041))

(declare-fun d!1922487 () Bool)

(assert (=> d!1922487 (= (matchR!8262 r!7292 s!2326) (matchRSpec!3180 r!7292 s!2326))))

(assert (=> d!1922487 true))

(declare-fun _$88!4656 () Unit!157471)

(assert (=> d!1922487 (= (choose!45587 r!7292 s!2326) _$88!4656)))

(declare-fun bs!1521794 () Bool)

(assert (= bs!1521794 d!1922487))

(assert (=> bs!1521794 m!6977236))

(assert (=> bs!1521794 m!6977234))

(assert (=> d!1922045 d!1922487))

(assert (=> d!1922045 d!1922113))

(declare-fun d!1922489 () Bool)

(assert (=> d!1922489 true))

(assert (=> d!1922489 true))

(declare-fun res!2542720 () Bool)

(assert (=> d!1922489 (= (choose!45591 lambda!334249) res!2542720)))

(assert (=> d!1922093 d!1922489))

(assert (=> d!1922077 d!1922075))

(declare-fun d!1922491 () Bool)

(assert (=> d!1922491 (= (flatMap!1584 z!1189 lambda!334251) (dynLambda!25378 lambda!334251 (h!70862 zl!343)))))

(assert (=> d!1922491 true))

(declare-fun _$13!3011 () Unit!157471)

(assert (=> d!1922491 (= (choose!45590 z!1189 (h!70862 zl!343) lambda!334251) _$13!3011)))

(declare-fun b_lambda!233545 () Bool)

(assert (=> (not b_lambda!233545) (not d!1922491)))

(declare-fun bs!1521795 () Bool)

(assert (= bs!1521795 d!1922491))

(assert (=> bs!1521795 m!6977210))

(assert (=> bs!1521795 m!6977586))

(assert (=> d!1922077 d!1922491))

(declare-fun d!1922493 () Bool)

(declare-fun c!1103445 () Bool)

(declare-fun e!3739735 () Bool)

(assert (=> d!1922493 (= c!1103445 e!3739735)))

(declare-fun res!2542721 () Bool)

(assert (=> d!1922493 (=> (not res!2542721) (not e!3739735))))

(assert (=> d!1922493 (= res!2542721 ((_ is Cons!64412) (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332353))))))))

(declare-fun e!3739737 () (InoxSet Context!10926))

(assert (=> d!1922493 (= (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 lt!2332353))) (h!70861 s!2326)) e!3739737)))

(declare-fun b!6136033 () Bool)

(declare-fun e!3739736 () (InoxSet Context!10926))

(assert (=> b!6136033 (= e!3739736 ((as const (Array Context!10926 Bool)) false))))

(declare-fun call!509246 () (InoxSet Context!10926))

(declare-fun b!6136034 () Bool)

(assert (=> b!6136034 (= e!3739737 ((_ map or) call!509246 (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332353)))))) (h!70861 s!2326))))))

(declare-fun b!6136035 () Bool)

(assert (=> b!6136035 (= e!3739737 e!3739736)))

(declare-fun c!1103444 () Bool)

(assert (=> b!6136035 (= c!1103444 ((_ is Cons!64412) (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332353))))))))

(declare-fun b!6136036 () Bool)

(assert (=> b!6136036 (= e!3739735 (nullable!6072 (h!70860 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332353)))))))))

(declare-fun bm!509241 () Bool)

(assert (=> bm!509241 (= call!509246 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332353))))) (Context!10927 (t!378009 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332353)))))) (h!70861 s!2326)))))

(declare-fun b!6136037 () Bool)

(assert (=> b!6136037 (= e!3739736 call!509246)))

(assert (= (and d!1922493 res!2542721) b!6136036))

(assert (= (and d!1922493 c!1103445) b!6136034))

(assert (= (and d!1922493 (not c!1103445)) b!6136035))

(assert (= (and b!6136035 c!1103444) b!6136037))

(assert (= (and b!6136035 (not c!1103444)) b!6136033))

(assert (= (or b!6136034 b!6136037) bm!509241))

(declare-fun m!6978516 () Bool)

(assert (=> b!6136034 m!6978516))

(declare-fun m!6978518 () Bool)

(assert (=> b!6136036 m!6978518))

(declare-fun m!6978520 () Bool)

(assert (=> bm!509241 m!6978520))

(assert (=> b!6134986 d!1922493))

(assert (=> b!6135036 d!1922067))

(declare-fun bs!1521796 () Bool)

(declare-fun d!1922495 () Bool)

(assert (= bs!1521796 (and d!1922495 d!1922103)))

(declare-fun lambda!334362 () Int)

(assert (=> bs!1521796 (= lambda!334362 lambda!334309)))

(declare-fun bs!1521797 () Bool)

(assert (= bs!1521797 (and d!1922495 d!1922387)))

(assert (=> bs!1521797 (= lambda!334362 lambda!334350)))

(declare-fun bs!1521798 () Bool)

(assert (= bs!1521798 (and d!1922495 d!1922083)))

(assert (=> bs!1521798 (= lambda!334362 lambda!334294)))

(declare-fun bs!1521799 () Bool)

(assert (= bs!1521799 (and d!1922495 d!1922049)))

(assert (=> bs!1521799 (= lambda!334362 lambda!334292)))

(declare-fun bs!1521800 () Bool)

(assert (= bs!1521800 (and d!1922495 d!1922101)))

(assert (=> bs!1521800 (= lambda!334362 lambda!334306)))

(declare-fun bs!1521801 () Bool)

(assert (= bs!1521801 (and d!1922495 d!1922047)))

(assert (=> bs!1521801 (= lambda!334362 lambda!334289)))

(declare-fun bs!1521802 () Bool)

(assert (= bs!1521802 (and d!1922495 d!1922059)))

(assert (=> bs!1521802 (= lambda!334362 lambda!334293)))

(declare-fun bs!1521803 () Bool)

(assert (= bs!1521803 (and d!1922495 d!1922475)))

(assert (=> bs!1521803 (= lambda!334362 lambda!334360)))

(declare-fun bs!1521804 () Bool)

(assert (= bs!1521804 (and d!1922495 d!1922365)))

(assert (=> bs!1521804 (= lambda!334362 lambda!334346)))

(assert (=> d!1922495 (= (inv!83444 setElem!41482) (forall!15200 (exprs!5963 setElem!41482) lambda!334362))))

(declare-fun bs!1521805 () Bool)

(assert (= bs!1521805 d!1922495))

(declare-fun m!6978522 () Bool)

(assert (=> bs!1521805 m!6978522))

(assert (=> setNonEmpty!41482 d!1922495))

(declare-fun b!6136038 () Bool)

(declare-fun e!3739738 () (InoxSet Context!10926))

(declare-fun e!3739740 () (InoxSet Context!10926))

(assert (=> b!6136038 (= e!3739738 e!3739740)))

(declare-fun c!1103448 () Bool)

(assert (=> b!6136038 (= c!1103448 ((_ is Union!16079) (h!70860 (exprs!5963 lt!2332346))))))

(declare-fun c!1103446 () Bool)

(declare-fun call!509247 () List!64536)

(declare-fun c!1103449 () Bool)

(declare-fun call!509248 () (InoxSet Context!10926))

(declare-fun bm!509242 () Bool)

(assert (=> bm!509242 (= call!509248 (derivationStepZipperDown!1327 (ite c!1103448 (regOne!32671 (h!70860 (exprs!5963 lt!2332346))) (ite c!1103446 (regTwo!32670 (h!70860 (exprs!5963 lt!2332346))) (ite c!1103449 (regOne!32670 (h!70860 (exprs!5963 lt!2332346))) (reg!16408 (h!70860 (exprs!5963 lt!2332346)))))) (ite (or c!1103448 c!1103446) (Context!10927 (t!378009 (exprs!5963 lt!2332346))) (Context!10927 call!509247)) (h!70861 s!2326)))))

(declare-fun b!6136039 () Bool)

(declare-fun e!3739743 () Bool)

(assert (=> b!6136039 (= e!3739743 (nullable!6072 (regOne!32670 (h!70860 (exprs!5963 lt!2332346)))))))

(declare-fun b!6136040 () Bool)

(declare-fun e!3739742 () (InoxSet Context!10926))

(declare-fun call!509249 () (InoxSet Context!10926))

(assert (=> b!6136040 (= e!3739742 call!509249)))

(declare-fun b!6136041 () Bool)

(declare-fun call!509252 () (InoxSet Context!10926))

(assert (=> b!6136041 (= e!3739740 ((_ map or) call!509248 call!509252))))

(declare-fun b!6136042 () Bool)

(assert (=> b!6136042 (= e!3739742 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6136043 () Bool)

(declare-fun e!3739741 () (InoxSet Context!10926))

(declare-fun call!509251 () (InoxSet Context!10926))

(assert (=> b!6136043 (= e!3739741 ((_ map or) call!509252 call!509251))))

(declare-fun bm!509244 () Bool)

(declare-fun call!509250 () List!64536)

(assert (=> bm!509244 (= call!509252 (derivationStepZipperDown!1327 (ite c!1103448 (regTwo!32671 (h!70860 (exprs!5963 lt!2332346))) (regOne!32670 (h!70860 (exprs!5963 lt!2332346)))) (ite c!1103448 (Context!10927 (t!378009 (exprs!5963 lt!2332346))) (Context!10927 call!509250)) (h!70861 s!2326)))))

(declare-fun b!6136044 () Bool)

(assert (=> b!6136044 (= c!1103446 e!3739743)))

(declare-fun res!2542722 () Bool)

(assert (=> b!6136044 (=> (not res!2542722) (not e!3739743))))

(assert (=> b!6136044 (= res!2542722 ((_ is Concat!24924) (h!70860 (exprs!5963 lt!2332346))))))

(assert (=> b!6136044 (= e!3739740 e!3739741)))

(declare-fun b!6136045 () Bool)

(declare-fun e!3739739 () (InoxSet Context!10926))

(assert (=> b!6136045 (= e!3739739 call!509249)))

(declare-fun bm!509245 () Bool)

(assert (=> bm!509245 (= call!509251 call!509248)))

(declare-fun bm!509246 () Bool)

(assert (=> bm!509246 (= call!509250 ($colon$colon!1956 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332346)))) (ite (or c!1103446 c!1103449) (regTwo!32670 (h!70860 (exprs!5963 lt!2332346))) (h!70860 (exprs!5963 lt!2332346)))))))

(declare-fun b!6136046 () Bool)

(assert (=> b!6136046 (= e!3739741 e!3739739)))

(assert (=> b!6136046 (= c!1103449 ((_ is Concat!24924) (h!70860 (exprs!5963 lt!2332346))))))

(declare-fun b!6136047 () Bool)

(declare-fun c!1103447 () Bool)

(assert (=> b!6136047 (= c!1103447 ((_ is Star!16079) (h!70860 (exprs!5963 lt!2332346))))))

(assert (=> b!6136047 (= e!3739739 e!3739742)))

(declare-fun bm!509247 () Bool)

(assert (=> bm!509247 (= call!509249 call!509251)))

(declare-fun b!6136048 () Bool)

(assert (=> b!6136048 (= e!3739738 (store ((as const (Array Context!10926 Bool)) false) (Context!10927 (t!378009 (exprs!5963 lt!2332346))) true))))

(declare-fun d!1922497 () Bool)

(declare-fun c!1103450 () Bool)

(assert (=> d!1922497 (= c!1103450 (and ((_ is ElementMatch!16079) (h!70860 (exprs!5963 lt!2332346))) (= (c!1103007 (h!70860 (exprs!5963 lt!2332346))) (h!70861 s!2326))))))

(assert (=> d!1922497 (= (derivationStepZipperDown!1327 (h!70860 (exprs!5963 lt!2332346)) (Context!10927 (t!378009 (exprs!5963 lt!2332346))) (h!70861 s!2326)) e!3739738)))

(declare-fun bm!509243 () Bool)

(assert (=> bm!509243 (= call!509247 call!509250)))

(assert (= (and d!1922497 c!1103450) b!6136048))

(assert (= (and d!1922497 (not c!1103450)) b!6136038))

(assert (= (and b!6136038 c!1103448) b!6136041))

(assert (= (and b!6136038 (not c!1103448)) b!6136044))

(assert (= (and b!6136044 res!2542722) b!6136039))

(assert (= (and b!6136044 c!1103446) b!6136043))

(assert (= (and b!6136044 (not c!1103446)) b!6136046))

(assert (= (and b!6136046 c!1103449) b!6136045))

(assert (= (and b!6136046 (not c!1103449)) b!6136047))

(assert (= (and b!6136047 c!1103447) b!6136040))

(assert (= (and b!6136047 (not c!1103447)) b!6136042))

(assert (= (or b!6136045 b!6136040) bm!509243))

(assert (= (or b!6136045 b!6136040) bm!509247))

(assert (= (or b!6136043 bm!509243) bm!509246))

(assert (= (or b!6136043 bm!509247) bm!509245))

(assert (= (or b!6136041 b!6136043) bm!509244))

(assert (= (or b!6136041 bm!509245) bm!509242))

(declare-fun m!6978524 () Bool)

(assert (=> bm!509244 m!6978524))

(declare-fun m!6978526 () Bool)

(assert (=> bm!509246 m!6978526))

(declare-fun m!6978528 () Bool)

(assert (=> bm!509242 m!6978528))

(declare-fun m!6978530 () Bool)

(assert (=> b!6136039 m!6978530))

(declare-fun m!6978532 () Bool)

(assert (=> b!6136048 m!6978532))

(assert (=> bm!509038 d!1922497))

(declare-fun b!6136049 () Bool)

(declare-fun e!3739744 () (InoxSet Context!10926))

(declare-fun e!3739746 () (InoxSet Context!10926))

(assert (=> b!6136049 (= e!3739744 e!3739746)))

(declare-fun c!1103453 () Bool)

(assert (=> b!6136049 (= c!1103453 ((_ is Union!16079) (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))))))

(declare-fun bm!509248 () Bool)

(declare-fun c!1103454 () Bool)

(declare-fun c!1103451 () Bool)

(declare-fun call!509254 () (InoxSet Context!10926))

(declare-fun call!509253 () List!64536)

(assert (=> bm!509248 (= call!509254 (derivationStepZipperDown!1327 (ite c!1103453 (regOne!32671 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))) (ite c!1103451 (regTwo!32670 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))) (ite c!1103454 (regOne!32670 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))) (reg!16408 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))))))) (ite (or c!1103453 c!1103451) (ite c!1103208 lt!2332346 (Context!10927 call!509073)) (Context!10927 call!509253)) (h!70861 s!2326)))))

(declare-fun b!6136050 () Bool)

(declare-fun e!3739749 () Bool)

(assert (=> b!6136050 (= e!3739749 (nullable!6072 (regOne!32670 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))))))))

(declare-fun b!6136051 () Bool)

(declare-fun e!3739748 () (InoxSet Context!10926))

(declare-fun call!509255 () (InoxSet Context!10926))

(assert (=> b!6136051 (= e!3739748 call!509255)))

(declare-fun b!6136052 () Bool)

(declare-fun call!509258 () (InoxSet Context!10926))

(assert (=> b!6136052 (= e!3739746 ((_ map or) call!509254 call!509258))))

(declare-fun b!6136053 () Bool)

(assert (=> b!6136053 (= e!3739748 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6136054 () Bool)

(declare-fun e!3739747 () (InoxSet Context!10926))

(declare-fun call!509257 () (InoxSet Context!10926))

(assert (=> b!6136054 (= e!3739747 ((_ map or) call!509258 call!509257))))

(declare-fun bm!509250 () Bool)

(declare-fun call!509256 () List!64536)

(assert (=> bm!509250 (= call!509258 (derivationStepZipperDown!1327 (ite c!1103453 (regTwo!32671 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))) (regOne!32670 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))))) (ite c!1103453 (ite c!1103208 lt!2332346 (Context!10927 call!509073)) (Context!10927 call!509256)) (h!70861 s!2326)))))

(declare-fun b!6136055 () Bool)

(assert (=> b!6136055 (= c!1103451 e!3739749)))

(declare-fun res!2542723 () Bool)

(assert (=> b!6136055 (=> (not res!2542723) (not e!3739749))))

(assert (=> b!6136055 (= res!2542723 ((_ is Concat!24924) (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))))))

(assert (=> b!6136055 (= e!3739746 e!3739747)))

(declare-fun b!6136056 () Bool)

(declare-fun e!3739745 () (InoxSet Context!10926))

(assert (=> b!6136056 (= e!3739745 call!509255)))

(declare-fun bm!509251 () Bool)

(assert (=> bm!509251 (= call!509257 call!509254)))

(declare-fun bm!509252 () Bool)

(assert (=> bm!509252 (= call!509256 ($colon$colon!1956 (exprs!5963 (ite c!1103208 lt!2332346 (Context!10927 call!509073))) (ite (or c!1103451 c!1103454) (regTwo!32670 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))) (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))))))))

(declare-fun b!6136057 () Bool)

(assert (=> b!6136057 (= e!3739747 e!3739745)))

(assert (=> b!6136057 (= c!1103454 ((_ is Concat!24924) (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))))))

(declare-fun b!6136058 () Bool)

(declare-fun c!1103452 () Bool)

(assert (=> b!6136058 (= c!1103452 ((_ is Star!16079) (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))))))

(assert (=> b!6136058 (= e!3739745 e!3739748)))

(declare-fun bm!509253 () Bool)

(assert (=> bm!509253 (= call!509255 call!509257)))

(declare-fun b!6136059 () Bool)

(assert (=> b!6136059 (= e!3739744 (store ((as const (Array Context!10926 Bool)) false) (ite c!1103208 lt!2332346 (Context!10927 call!509073)) true))))

(declare-fun c!1103455 () Bool)

(declare-fun d!1922499 () Bool)

(assert (=> d!1922499 (= c!1103455 (and ((_ is ElementMatch!16079) (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))) (= (c!1103007 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292))))) (h!70861 s!2326))))))

(assert (=> d!1922499 (= (derivationStepZipperDown!1327 (ite c!1103208 (regTwo!32671 (regOne!32671 (regOne!32670 r!7292))) (regOne!32670 (regOne!32671 (regOne!32670 r!7292)))) (ite c!1103208 lt!2332346 (Context!10927 call!509073)) (h!70861 s!2326)) e!3739744)))

(declare-fun bm!509249 () Bool)

(assert (=> bm!509249 (= call!509253 call!509256)))

(assert (= (and d!1922499 c!1103455) b!6136059))

(assert (= (and d!1922499 (not c!1103455)) b!6136049))

(assert (= (and b!6136049 c!1103453) b!6136052))

(assert (= (and b!6136049 (not c!1103453)) b!6136055))

(assert (= (and b!6136055 res!2542723) b!6136050))

(assert (= (and b!6136055 c!1103451) b!6136054))

(assert (= (and b!6136055 (not c!1103451)) b!6136057))

(assert (= (and b!6136057 c!1103454) b!6136056))

(assert (= (and b!6136057 (not c!1103454)) b!6136058))

(assert (= (and b!6136058 c!1103452) b!6136051))

(assert (= (and b!6136058 (not c!1103452)) b!6136053))

(assert (= (or b!6136056 b!6136051) bm!509249))

(assert (= (or b!6136056 b!6136051) bm!509253))

(assert (= (or b!6136054 bm!509249) bm!509252))

(assert (= (or b!6136054 bm!509253) bm!509251))

(assert (= (or b!6136052 b!6136054) bm!509250))

(assert (= (or b!6136052 bm!509251) bm!509248))

(declare-fun m!6978534 () Bool)

(assert (=> bm!509250 m!6978534))

(declare-fun m!6978536 () Bool)

(assert (=> bm!509252 m!6978536))

(declare-fun m!6978538 () Bool)

(assert (=> bm!509248 m!6978538))

(declare-fun m!6978540 () Bool)

(assert (=> b!6136050 m!6978540))

(declare-fun m!6978542 () Bool)

(assert (=> b!6136059 m!6978542))

(assert (=> bm!509067 d!1922499))

(assert (=> bm!509034 d!1922469))

(declare-fun d!1922501 () Bool)

(declare-fun res!2542724 () Bool)

(declare-fun e!3739750 () Bool)

(assert (=> d!1922501 (=> res!2542724 e!3739750)))

(assert (=> d!1922501 (= res!2542724 ((_ is Nil!64412) lt!2332442))))

(assert (=> d!1922501 (= (forall!15200 lt!2332442 lambda!334309) e!3739750)))

(declare-fun b!6136060 () Bool)

(declare-fun e!3739751 () Bool)

(assert (=> b!6136060 (= e!3739750 e!3739751)))

(declare-fun res!2542725 () Bool)

(assert (=> b!6136060 (=> (not res!2542725) (not e!3739751))))

(assert (=> b!6136060 (= res!2542725 (dynLambda!25380 lambda!334309 (h!70860 lt!2332442)))))

(declare-fun b!6136061 () Bool)

(assert (=> b!6136061 (= e!3739751 (forall!15200 (t!378009 lt!2332442) lambda!334309))))

(assert (= (and d!1922501 (not res!2542724)) b!6136060))

(assert (= (and b!6136060 res!2542725) b!6136061))

(declare-fun b_lambda!233547 () Bool)

(assert (=> (not b_lambda!233547) (not b!6136060)))

(declare-fun m!6978544 () Bool)

(assert (=> b!6136060 m!6978544))

(declare-fun m!6978546 () Bool)

(assert (=> b!6136061 m!6978546))

(assert (=> d!1922103 d!1922501))

(declare-fun d!1922503 () Bool)

(assert (=> d!1922503 true))

(assert (=> d!1922503 true))

(declare-fun res!2542726 () Bool)

(assert (=> d!1922503 (= (choose!45591 lambda!334250) res!2542726)))

(assert (=> d!1922087 d!1922503))

(assert (=> b!6135118 d!1922049))

(declare-fun bs!1521806 () Bool)

(declare-fun d!1922505 () Bool)

(assert (= bs!1521806 (and d!1922505 d!1922103)))

(declare-fun lambda!334363 () Int)

(assert (=> bs!1521806 (= lambda!334363 lambda!334309)))

(declare-fun bs!1521807 () Bool)

(assert (= bs!1521807 (and d!1922505 d!1922387)))

(assert (=> bs!1521807 (= lambda!334363 lambda!334350)))

(declare-fun bs!1521808 () Bool)

(assert (= bs!1521808 (and d!1922505 d!1922083)))

(assert (=> bs!1521808 (= lambda!334363 lambda!334294)))

(declare-fun bs!1521809 () Bool)

(assert (= bs!1521809 (and d!1922505 d!1922049)))

(assert (=> bs!1521809 (= lambda!334363 lambda!334292)))

(declare-fun bs!1521810 () Bool)

(assert (= bs!1521810 (and d!1922505 d!1922101)))

(assert (=> bs!1521810 (= lambda!334363 lambda!334306)))

(declare-fun bs!1521811 () Bool)

(assert (= bs!1521811 (and d!1922505 d!1922047)))

(assert (=> bs!1521811 (= lambda!334363 lambda!334289)))

(declare-fun bs!1521812 () Bool)

(assert (= bs!1521812 (and d!1922505 d!1922059)))

(assert (=> bs!1521812 (= lambda!334363 lambda!334293)))

(declare-fun bs!1521813 () Bool)

(assert (= bs!1521813 (and d!1922505 d!1922475)))

(assert (=> bs!1521813 (= lambda!334363 lambda!334360)))

(declare-fun bs!1521814 () Bool)

(assert (= bs!1521814 (and d!1922505 d!1922365)))

(assert (=> bs!1521814 (= lambda!334363 lambda!334346)))

(declare-fun bs!1521815 () Bool)

(assert (= bs!1521815 (and d!1922505 d!1922495)))

(assert (=> bs!1521815 (= lambda!334363 lambda!334362)))

(declare-fun lt!2332487 () List!64536)

(assert (=> d!1922505 (forall!15200 lt!2332487 lambda!334363)))

(declare-fun e!3739752 () List!64536)

(assert (=> d!1922505 (= lt!2332487 e!3739752)))

(declare-fun c!1103456 () Bool)

(assert (=> d!1922505 (= c!1103456 ((_ is Cons!64414) (t!378011 zl!343)))))

(assert (=> d!1922505 (= (unfocusZipperList!1500 (t!378011 zl!343)) lt!2332487)))

(declare-fun b!6136062 () Bool)

(assert (=> b!6136062 (= e!3739752 (Cons!64412 (generalisedConcat!1676 (exprs!5963 (h!70862 (t!378011 zl!343)))) (unfocusZipperList!1500 (t!378011 (t!378011 zl!343)))))))

(declare-fun b!6136063 () Bool)

(assert (=> b!6136063 (= e!3739752 Nil!64412)))

(assert (= (and d!1922505 c!1103456) b!6136062))

(assert (= (and d!1922505 (not c!1103456)) b!6136063))

(declare-fun m!6978548 () Bool)

(assert (=> d!1922505 m!6978548))

(declare-fun m!6978550 () Bool)

(assert (=> b!6136062 m!6978550))

(declare-fun m!6978552 () Bool)

(assert (=> b!6136062 m!6978552))

(assert (=> b!6135118 d!1922505))

(assert (=> d!1922111 d!1922361))

(declare-fun call!509260 () Bool)

(declare-fun bm!509254 () Bool)

(declare-fun c!1103458 () Bool)

(declare-fun c!1103457 () Bool)

(assert (=> bm!509254 (= call!509260 (validRegex!7815 (ite c!1103458 (reg!16408 lt!2332412) (ite c!1103457 (regOne!32671 lt!2332412) (regOne!32670 lt!2332412)))))))

(declare-fun b!6136064 () Bool)

(declare-fun res!2542727 () Bool)

(declare-fun e!3739753 () Bool)

(assert (=> b!6136064 (=> res!2542727 e!3739753)))

(assert (=> b!6136064 (= res!2542727 (not ((_ is Concat!24924) lt!2332412)))))

(declare-fun e!3739755 () Bool)

(assert (=> b!6136064 (= e!3739755 e!3739753)))

(declare-fun b!6136065 () Bool)

(declare-fun res!2542729 () Bool)

(declare-fun e!3739758 () Bool)

(assert (=> b!6136065 (=> (not res!2542729) (not e!3739758))))

(declare-fun call!509259 () Bool)

(assert (=> b!6136065 (= res!2542729 call!509259)))

(assert (=> b!6136065 (= e!3739755 e!3739758)))

(declare-fun b!6136066 () Bool)

(declare-fun e!3739757 () Bool)

(declare-fun e!3739756 () Bool)

(assert (=> b!6136066 (= e!3739757 e!3739756)))

(declare-fun res!2542731 () Bool)

(assert (=> b!6136066 (= res!2542731 (not (nullable!6072 (reg!16408 lt!2332412))))))

(assert (=> b!6136066 (=> (not res!2542731) (not e!3739756))))

(declare-fun b!6136067 () Bool)

(assert (=> b!6136067 (= e!3739757 e!3739755)))

(assert (=> b!6136067 (= c!1103457 ((_ is Union!16079) lt!2332412))))

(declare-fun b!6136069 () Bool)

(declare-fun e!3739759 () Bool)

(assert (=> b!6136069 (= e!3739759 e!3739757)))

(assert (=> b!6136069 (= c!1103458 ((_ is Star!16079) lt!2332412))))

(declare-fun b!6136070 () Bool)

(declare-fun e!3739754 () Bool)

(assert (=> b!6136070 (= e!3739753 e!3739754)))

(declare-fun res!2542728 () Bool)

(assert (=> b!6136070 (=> (not res!2542728) (not e!3739754))))

(assert (=> b!6136070 (= res!2542728 call!509259)))

(declare-fun b!6136071 () Bool)

(assert (=> b!6136071 (= e!3739756 call!509260)))

(declare-fun b!6136072 () Bool)

(declare-fun call!509261 () Bool)

(assert (=> b!6136072 (= e!3739758 call!509261)))

(declare-fun d!1922507 () Bool)

(declare-fun res!2542730 () Bool)

(assert (=> d!1922507 (=> res!2542730 e!3739759)))

(assert (=> d!1922507 (= res!2542730 ((_ is ElementMatch!16079) lt!2332412))))

(assert (=> d!1922507 (= (validRegex!7815 lt!2332412) e!3739759)))

(declare-fun b!6136068 () Bool)

(assert (=> b!6136068 (= e!3739754 call!509261)))

(declare-fun bm!509255 () Bool)

(assert (=> bm!509255 (= call!509259 call!509260)))

(declare-fun bm!509256 () Bool)

(assert (=> bm!509256 (= call!509261 (validRegex!7815 (ite c!1103457 (regTwo!32671 lt!2332412) (regTwo!32670 lt!2332412))))))

(assert (= (and d!1922507 (not res!2542730)) b!6136069))

(assert (= (and b!6136069 c!1103458) b!6136066))

(assert (= (and b!6136069 (not c!1103458)) b!6136067))

(assert (= (and b!6136066 res!2542731) b!6136071))

(assert (= (and b!6136067 c!1103457) b!6136065))

(assert (= (and b!6136067 (not c!1103457)) b!6136064))

(assert (= (and b!6136065 res!2542729) b!6136072))

(assert (= (and b!6136064 (not res!2542727)) b!6136070))

(assert (= (and b!6136070 res!2542728) b!6136068))

(assert (= (or b!6136072 b!6136068) bm!509256))

(assert (= (or b!6136065 b!6136070) bm!509255))

(assert (= (or b!6136071 bm!509255) bm!509254))

(declare-fun m!6978554 () Bool)

(assert (=> bm!509254 m!6978554))

(declare-fun m!6978556 () Bool)

(assert (=> b!6136066 m!6978556))

(declare-fun m!6978558 () Bool)

(assert (=> bm!509256 m!6978558))

(assert (=> d!1922049 d!1922507))

(declare-fun d!1922509 () Bool)

(declare-fun res!2542732 () Bool)

(declare-fun e!3739760 () Bool)

(assert (=> d!1922509 (=> res!2542732 e!3739760)))

(assert (=> d!1922509 (= res!2542732 ((_ is Nil!64412) (exprs!5963 (h!70862 zl!343))))))

(assert (=> d!1922509 (= (forall!15200 (exprs!5963 (h!70862 zl!343)) lambda!334292) e!3739760)))

(declare-fun b!6136073 () Bool)

(declare-fun e!3739761 () Bool)

(assert (=> b!6136073 (= e!3739760 e!3739761)))

(declare-fun res!2542733 () Bool)

(assert (=> b!6136073 (=> (not res!2542733) (not e!3739761))))

(assert (=> b!6136073 (= res!2542733 (dynLambda!25380 lambda!334292 (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6136074 () Bool)

(assert (=> b!6136074 (= e!3739761 (forall!15200 (t!378009 (exprs!5963 (h!70862 zl!343))) lambda!334292))))

(assert (= (and d!1922509 (not res!2542732)) b!6136073))

(assert (= (and b!6136073 res!2542733) b!6136074))

(declare-fun b_lambda!233549 () Bool)

(assert (=> (not b_lambda!233549) (not b!6136073)))

(declare-fun m!6978560 () Bool)

(assert (=> b!6136073 m!6978560))

(declare-fun m!6978562 () Bool)

(assert (=> b!6136074 m!6978562))

(assert (=> d!1922049 d!1922509))

(declare-fun d!1922511 () Bool)

(declare-fun c!1103460 () Bool)

(declare-fun e!3739762 () Bool)

(assert (=> d!1922511 (= c!1103460 e!3739762)))

(declare-fun res!2542734 () Bool)

(assert (=> d!1922511 (=> (not res!2542734) (not e!3739762))))

(assert (=> d!1922511 (= res!2542734 ((_ is Cons!64412) (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))))))

(declare-fun e!3739764 () (InoxSet Context!10926))

(assert (=> d!1922511 (= (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (h!70861 s!2326)) e!3739764)))

(declare-fun b!6136075 () Bool)

(declare-fun e!3739763 () (InoxSet Context!10926))

(assert (=> b!6136075 (= e!3739763 ((as const (Array Context!10926 Bool)) false))))

(declare-fun call!509262 () (InoxSet Context!10926))

(declare-fun b!6136076 () Bool)

(assert (=> b!6136076 (= e!3739764 ((_ map or) call!509262 (derivationStepZipperUp!1253 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))))) (h!70861 s!2326))))))

(declare-fun b!6136077 () Bool)

(assert (=> b!6136077 (= e!3739764 e!3739763)))

(declare-fun c!1103459 () Bool)

(assert (=> b!6136077 (= c!1103459 ((_ is Cons!64412) (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))))))

(declare-fun b!6136078 () Bool)

(assert (=> b!6136078 (= e!3739762 (nullable!6072 (h!70860 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))))))))

(declare-fun bm!509257 () Bool)

(assert (=> bm!509257 (= call!509262 (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))) (Context!10927 (t!378009 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))))) (h!70861 s!2326)))))

(declare-fun b!6136079 () Bool)

(assert (=> b!6136079 (= e!3739763 call!509262)))

(assert (= (and d!1922511 res!2542734) b!6136078))

(assert (= (and d!1922511 c!1103460) b!6136076))

(assert (= (and d!1922511 (not c!1103460)) b!6136077))

(assert (= (and b!6136077 c!1103459) b!6136079))

(assert (= (and b!6136077 (not c!1103459)) b!6136075))

(assert (= (or b!6136076 b!6136079) bm!509257))

(declare-fun m!6978564 () Bool)

(assert (=> b!6136076 m!6978564))

(declare-fun m!6978566 () Bool)

(assert (=> b!6136078 m!6978566))

(declare-fun m!6978568 () Bool)

(assert (=> bm!509257 m!6978568))

(assert (=> b!6134996 d!1922511))

(declare-fun d!1922513 () Bool)

(assert (=> d!1922513 (= (Exists!3149 lambda!334302) (choose!45591 lambda!334302))))

(declare-fun bs!1521816 () Bool)

(assert (= bs!1521816 d!1922513))

(declare-fun m!6978570 () Bool)

(assert (=> bs!1521816 m!6978570))

(assert (=> d!1922091 d!1922513))

(declare-fun d!1922515 () Bool)

(assert (=> d!1922515 (= (Exists!3149 lambda!334303) (choose!45591 lambda!334303))))

(declare-fun bs!1521817 () Bool)

(assert (= bs!1521817 d!1922515))

(declare-fun m!6978572 () Bool)

(assert (=> bs!1521817 m!6978572))

(assert (=> d!1922091 d!1922515))

(declare-fun bs!1521818 () Bool)

(declare-fun d!1922517 () Bool)

(assert (= bs!1521818 (and d!1922517 b!6134456)))

(declare-fun lambda!334368 () Int)

(assert (=> bs!1521818 (not (= lambda!334368 lambda!334250))))

(declare-fun bs!1521819 () Bool)

(assert (= bs!1521819 (and d!1922517 b!6135801)))

(assert (=> bs!1521819 (not (= lambda!334368 lambda!334345))))

(declare-fun bs!1521820 () Bool)

(assert (= bs!1521820 (and d!1922517 b!6134888)))

(assert (=> bs!1521820 (not (= lambda!334368 lambda!334286))))

(declare-fun bs!1521821 () Bool)

(assert (= bs!1521821 (and d!1922517 b!6135793)))

(assert (=> bs!1521821 (not (= lambda!334368 lambda!334344))))

(declare-fun bs!1521822 () Bool)

(assert (= bs!1521822 (and d!1922517 d!1922089)))

(assert (=> bs!1521822 (= lambda!334368 lambda!334297)))

(declare-fun bs!1521823 () Bool)

(assert (= bs!1521823 (and d!1922517 d!1922091)))

(assert (=> bs!1521823 (not (= lambda!334368 lambda!334303))))

(assert (=> bs!1521818 (= lambda!334368 lambda!334249)))

(declare-fun bs!1521824 () Bool)

(assert (= bs!1521824 (and d!1922517 b!6134880)))

(assert (=> bs!1521824 (not (= lambda!334368 lambda!334285))))

(assert (=> bs!1521823 (= lambda!334368 lambda!334302)))

(assert (=> d!1922517 true))

(assert (=> d!1922517 true))

(assert (=> d!1922517 true))

(declare-fun lambda!334369 () Int)

(assert (=> bs!1521818 (= lambda!334369 lambda!334250)))

(assert (=> bs!1521819 (= (and (= (regOne!32670 r!7292) (regOne!32670 (regOne!32671 r!7292))) (= (regTwo!32670 r!7292) (regTwo!32670 (regOne!32671 r!7292)))) (= lambda!334369 lambda!334345))))

(assert (=> bs!1521820 (= lambda!334369 lambda!334286)))

(assert (=> bs!1521821 (not (= lambda!334369 lambda!334344))))

(assert (=> bs!1521822 (not (= lambda!334369 lambda!334297))))

(assert (=> bs!1521823 (= lambda!334369 lambda!334303)))

(declare-fun bs!1521825 () Bool)

(assert (= bs!1521825 d!1922517))

(assert (=> bs!1521825 (not (= lambda!334369 lambda!334368))))

(assert (=> bs!1521818 (not (= lambda!334369 lambda!334249))))

(assert (=> bs!1521824 (not (= lambda!334369 lambda!334285))))

(assert (=> bs!1521823 (not (= lambda!334369 lambda!334302))))

(assert (=> d!1922517 true))

(assert (=> d!1922517 true))

(assert (=> d!1922517 true))

(assert (=> d!1922517 (= (Exists!3149 lambda!334368) (Exists!3149 lambda!334369))))

(assert (=> d!1922517 true))

(declare-fun _$90!1842 () Unit!157471)

(assert (=> d!1922517 (= (choose!45593 (regOne!32670 r!7292) (regTwo!32670 r!7292) s!2326) _$90!1842)))

(declare-fun m!6978574 () Bool)

(assert (=> bs!1521825 m!6978574))

(declare-fun m!6978576 () Bool)

(assert (=> bs!1521825 m!6978576))

(assert (=> d!1922091 d!1922517))

(declare-fun c!1103461 () Bool)

(declare-fun call!509264 () Bool)

(declare-fun bm!509258 () Bool)

(declare-fun c!1103462 () Bool)

(assert (=> bm!509258 (= call!509264 (validRegex!7815 (ite c!1103462 (reg!16408 (regOne!32670 r!7292)) (ite c!1103461 (regOne!32671 (regOne!32670 r!7292)) (regOne!32670 (regOne!32670 r!7292))))))))

(declare-fun b!6136088 () Bool)

(declare-fun res!2542743 () Bool)

(declare-fun e!3739769 () Bool)

(assert (=> b!6136088 (=> res!2542743 e!3739769)))

(assert (=> b!6136088 (= res!2542743 (not ((_ is Concat!24924) (regOne!32670 r!7292))))))

(declare-fun e!3739771 () Bool)

(assert (=> b!6136088 (= e!3739771 e!3739769)))

(declare-fun b!6136089 () Bool)

(declare-fun res!2542745 () Bool)

(declare-fun e!3739774 () Bool)

(assert (=> b!6136089 (=> (not res!2542745) (not e!3739774))))

(declare-fun call!509263 () Bool)

(assert (=> b!6136089 (= res!2542745 call!509263)))

(assert (=> b!6136089 (= e!3739771 e!3739774)))

(declare-fun b!6136090 () Bool)

(declare-fun e!3739773 () Bool)

(declare-fun e!3739772 () Bool)

(assert (=> b!6136090 (= e!3739773 e!3739772)))

(declare-fun res!2542747 () Bool)

(assert (=> b!6136090 (= res!2542747 (not (nullable!6072 (reg!16408 (regOne!32670 r!7292)))))))

(assert (=> b!6136090 (=> (not res!2542747) (not e!3739772))))

(declare-fun b!6136091 () Bool)

(assert (=> b!6136091 (= e!3739773 e!3739771)))

(assert (=> b!6136091 (= c!1103461 ((_ is Union!16079) (regOne!32670 r!7292)))))

(declare-fun b!6136093 () Bool)

(declare-fun e!3739775 () Bool)

(assert (=> b!6136093 (= e!3739775 e!3739773)))

(assert (=> b!6136093 (= c!1103462 ((_ is Star!16079) (regOne!32670 r!7292)))))

(declare-fun b!6136094 () Bool)

(declare-fun e!3739770 () Bool)

(assert (=> b!6136094 (= e!3739769 e!3739770)))

(declare-fun res!2542744 () Bool)

(assert (=> b!6136094 (=> (not res!2542744) (not e!3739770))))

(assert (=> b!6136094 (= res!2542744 call!509263)))

(declare-fun b!6136095 () Bool)

(assert (=> b!6136095 (= e!3739772 call!509264)))

(declare-fun b!6136096 () Bool)

(declare-fun call!509265 () Bool)

(assert (=> b!6136096 (= e!3739774 call!509265)))

(declare-fun d!1922519 () Bool)

(declare-fun res!2542746 () Bool)

(assert (=> d!1922519 (=> res!2542746 e!3739775)))

(assert (=> d!1922519 (= res!2542746 ((_ is ElementMatch!16079) (regOne!32670 r!7292)))))

(assert (=> d!1922519 (= (validRegex!7815 (regOne!32670 r!7292)) e!3739775)))

(declare-fun b!6136092 () Bool)

(assert (=> b!6136092 (= e!3739770 call!509265)))

(declare-fun bm!509259 () Bool)

(assert (=> bm!509259 (= call!509263 call!509264)))

(declare-fun bm!509260 () Bool)

(assert (=> bm!509260 (= call!509265 (validRegex!7815 (ite c!1103461 (regTwo!32671 (regOne!32670 r!7292)) (regTwo!32670 (regOne!32670 r!7292)))))))

(assert (= (and d!1922519 (not res!2542746)) b!6136093))

(assert (= (and b!6136093 c!1103462) b!6136090))

(assert (= (and b!6136093 (not c!1103462)) b!6136091))

(assert (= (and b!6136090 res!2542747) b!6136095))

(assert (= (and b!6136091 c!1103461) b!6136089))

(assert (= (and b!6136091 (not c!1103461)) b!6136088))

(assert (= (and b!6136089 res!2542745) b!6136096))

(assert (= (and b!6136088 (not res!2542743)) b!6136094))

(assert (= (and b!6136094 res!2542744) b!6136092))

(assert (= (or b!6136096 b!6136092) bm!509260))

(assert (= (or b!6136089 b!6136094) bm!509259))

(assert (= (or b!6136095 bm!509259) bm!509258))

(declare-fun m!6978578 () Bool)

(assert (=> bm!509258 m!6978578))

(declare-fun m!6978580 () Bool)

(assert (=> b!6136090 m!6978580))

(declare-fun m!6978582 () Bool)

(assert (=> bm!509260 m!6978582))

(assert (=> d!1922091 d!1922519))

(declare-fun d!1922521 () Bool)

(assert (=> d!1922521 (= (head!12680 (exprs!5963 (h!70862 zl!343))) (h!70860 (exprs!5963 (h!70862 zl!343))))))

(assert (=> b!6134956 d!1922521))

(declare-fun bs!1521826 () Bool)

(declare-fun b!6136098 () Bool)

(assert (= bs!1521826 (and b!6136098 b!6135801)))

(declare-fun lambda!334370 () Int)

(assert (=> bs!1521826 (not (= lambda!334370 lambda!334345))))

(declare-fun bs!1521827 () Bool)

(assert (= bs!1521827 (and b!6136098 b!6134888)))

(assert (=> bs!1521827 (not (= lambda!334370 lambda!334286))))

(declare-fun bs!1521828 () Bool)

(assert (= bs!1521828 (and b!6136098 b!6135793)))

(assert (=> bs!1521828 (= (and (= (reg!16408 (regTwo!32671 r!7292)) (reg!16408 (regOne!32671 r!7292))) (= (regTwo!32671 r!7292) (regOne!32671 r!7292))) (= lambda!334370 lambda!334344))))

(declare-fun bs!1521829 () Bool)

(assert (= bs!1521829 (and b!6136098 d!1922089)))

(assert (=> bs!1521829 (not (= lambda!334370 lambda!334297))))

(declare-fun bs!1521830 () Bool)

(assert (= bs!1521830 (and b!6136098 d!1922091)))

(assert (=> bs!1521830 (not (= lambda!334370 lambda!334303))))

(declare-fun bs!1521831 () Bool)

(assert (= bs!1521831 (and b!6136098 d!1922517)))

(assert (=> bs!1521831 (not (= lambda!334370 lambda!334368))))

(declare-fun bs!1521832 () Bool)

(assert (= bs!1521832 (and b!6136098 b!6134456)))

(assert (=> bs!1521832 (not (= lambda!334370 lambda!334249))))

(assert (=> bs!1521832 (not (= lambda!334370 lambda!334250))))

(assert (=> bs!1521831 (not (= lambda!334370 lambda!334369))))

(declare-fun bs!1521833 () Bool)

(assert (= bs!1521833 (and b!6136098 b!6134880)))

(assert (=> bs!1521833 (= (and (= (reg!16408 (regTwo!32671 r!7292)) (reg!16408 r!7292)) (= (regTwo!32671 r!7292) r!7292)) (= lambda!334370 lambda!334285))))

(assert (=> bs!1521830 (not (= lambda!334370 lambda!334302))))

(assert (=> b!6136098 true))

(assert (=> b!6136098 true))

(declare-fun bs!1521834 () Bool)

(declare-fun b!6136106 () Bool)

(assert (= bs!1521834 (and b!6136106 b!6135801)))

(declare-fun lambda!334371 () Int)

(assert (=> bs!1521834 (= (and (= (regOne!32670 (regTwo!32671 r!7292)) (regOne!32670 (regOne!32671 r!7292))) (= (regTwo!32670 (regTwo!32671 r!7292)) (regTwo!32670 (regOne!32671 r!7292)))) (= lambda!334371 lambda!334345))))

(declare-fun bs!1521835 () Bool)

(assert (= bs!1521835 (and b!6136106 b!6135793)))

(assert (=> bs!1521835 (not (= lambda!334371 lambda!334344))))

(declare-fun bs!1521836 () Bool)

(assert (= bs!1521836 (and b!6136106 d!1922089)))

(assert (=> bs!1521836 (not (= lambda!334371 lambda!334297))))

(declare-fun bs!1521837 () Bool)

(assert (= bs!1521837 (and b!6136106 d!1922091)))

(assert (=> bs!1521837 (= (and (= (regOne!32670 (regTwo!32671 r!7292)) (regOne!32670 r!7292)) (= (regTwo!32670 (regTwo!32671 r!7292)) (regTwo!32670 r!7292))) (= lambda!334371 lambda!334303))))

(declare-fun bs!1521838 () Bool)

(assert (= bs!1521838 (and b!6136106 d!1922517)))

(assert (=> bs!1521838 (not (= lambda!334371 lambda!334368))))

(declare-fun bs!1521839 () Bool)

(assert (= bs!1521839 (and b!6136106 b!6134456)))

(assert (=> bs!1521839 (not (= lambda!334371 lambda!334249))))

(assert (=> bs!1521839 (= (and (= (regOne!32670 (regTwo!32671 r!7292)) (regOne!32670 r!7292)) (= (regTwo!32670 (regTwo!32671 r!7292)) (regTwo!32670 r!7292))) (= lambda!334371 lambda!334250))))

(assert (=> bs!1521838 (= (and (= (regOne!32670 (regTwo!32671 r!7292)) (regOne!32670 r!7292)) (= (regTwo!32670 (regTwo!32671 r!7292)) (regTwo!32670 r!7292))) (= lambda!334371 lambda!334369))))

(declare-fun bs!1521840 () Bool)

(assert (= bs!1521840 (and b!6136106 b!6136098)))

(assert (=> bs!1521840 (not (= lambda!334371 lambda!334370))))

(declare-fun bs!1521841 () Bool)

(assert (= bs!1521841 (and b!6136106 b!6134888)))

(assert (=> bs!1521841 (= (and (= (regOne!32670 (regTwo!32671 r!7292)) (regOne!32670 r!7292)) (= (regTwo!32670 (regTwo!32671 r!7292)) (regTwo!32670 r!7292))) (= lambda!334371 lambda!334286))))

(declare-fun bs!1521842 () Bool)

(assert (= bs!1521842 (and b!6136106 b!6134880)))

(assert (=> bs!1521842 (not (= lambda!334371 lambda!334285))))

(assert (=> bs!1521837 (not (= lambda!334371 lambda!334302))))

(assert (=> b!6136106 true))

(assert (=> b!6136106 true))

(declare-fun c!1103466 () Bool)

(declare-fun call!509267 () Bool)

(declare-fun bm!509261 () Bool)

(assert (=> bm!509261 (= call!509267 (Exists!3149 (ite c!1103466 lambda!334370 lambda!334371)))))

(declare-fun b!6136097 () Bool)

(declare-fun e!3739777 () Bool)

(assert (=> b!6136097 (= e!3739777 (matchRSpec!3180 (regTwo!32671 (regTwo!32671 r!7292)) s!2326))))

(declare-fun bm!509262 () Bool)

(declare-fun call!509266 () Bool)

(assert (=> bm!509262 (= call!509266 (isEmpty!36360 s!2326))))

(declare-fun e!3739779 () Bool)

(assert (=> b!6136098 (= e!3739779 call!509267)))

(declare-fun b!6136099 () Bool)

(declare-fun e!3739778 () Bool)

(assert (=> b!6136099 (= e!3739778 call!509266)))

(declare-fun b!6136100 () Bool)

(declare-fun c!1103465 () Bool)

(assert (=> b!6136100 (= c!1103465 ((_ is ElementMatch!16079) (regTwo!32671 r!7292)))))

(declare-fun e!3739780 () Bool)

(declare-fun e!3739776 () Bool)

(assert (=> b!6136100 (= e!3739780 e!3739776)))

(declare-fun b!6136101 () Bool)

(declare-fun res!2542749 () Bool)

(assert (=> b!6136101 (=> res!2542749 e!3739779)))

(assert (=> b!6136101 (= res!2542749 call!509266)))

(declare-fun e!3739781 () Bool)

(assert (=> b!6136101 (= e!3739781 e!3739779)))

(declare-fun b!6136102 () Bool)

(declare-fun e!3739782 () Bool)

(assert (=> b!6136102 (= e!3739782 e!3739777)))

(declare-fun res!2542750 () Bool)

(assert (=> b!6136102 (= res!2542750 (matchRSpec!3180 (regOne!32671 (regTwo!32671 r!7292)) s!2326))))

(assert (=> b!6136102 (=> res!2542750 e!3739777)))

(declare-fun b!6136103 () Bool)

(assert (=> b!6136103 (= e!3739776 (= s!2326 (Cons!64413 (c!1103007 (regTwo!32671 r!7292)) Nil!64413)))))

(declare-fun b!6136104 () Bool)

(declare-fun c!1103464 () Bool)

(assert (=> b!6136104 (= c!1103464 ((_ is Union!16079) (regTwo!32671 r!7292)))))

(assert (=> b!6136104 (= e!3739776 e!3739782)))

(declare-fun d!1922523 () Bool)

(declare-fun c!1103463 () Bool)

(assert (=> d!1922523 (= c!1103463 ((_ is EmptyExpr!16079) (regTwo!32671 r!7292)))))

(assert (=> d!1922523 (= (matchRSpec!3180 (regTwo!32671 r!7292) s!2326) e!3739778)))

(declare-fun b!6136105 () Bool)

(assert (=> b!6136105 (= e!3739782 e!3739781)))

(assert (=> b!6136105 (= c!1103466 ((_ is Star!16079) (regTwo!32671 r!7292)))))

(assert (=> b!6136106 (= e!3739781 call!509267)))

(declare-fun b!6136107 () Bool)

(assert (=> b!6136107 (= e!3739778 e!3739780)))

(declare-fun res!2542748 () Bool)

(assert (=> b!6136107 (= res!2542748 (not ((_ is EmptyLang!16079) (regTwo!32671 r!7292))))))

(assert (=> b!6136107 (=> (not res!2542748) (not e!3739780))))

(assert (= (and d!1922523 c!1103463) b!6136099))

(assert (= (and d!1922523 (not c!1103463)) b!6136107))

(assert (= (and b!6136107 res!2542748) b!6136100))

(assert (= (and b!6136100 c!1103465) b!6136103))

(assert (= (and b!6136100 (not c!1103465)) b!6136104))

(assert (= (and b!6136104 c!1103464) b!6136102))

(assert (= (and b!6136104 (not c!1103464)) b!6136105))

(assert (= (and b!6136102 (not res!2542750)) b!6136097))

(assert (= (and b!6136105 c!1103466) b!6136101))

(assert (= (and b!6136105 (not c!1103466)) b!6136106))

(assert (= (and b!6136101 (not res!2542749)) b!6136098))

(assert (= (or b!6136098 b!6136106) bm!509261))

(assert (= (or b!6136099 b!6136101) bm!509262))

(declare-fun m!6978584 () Bool)

(assert (=> bm!509261 m!6978584))

(declare-fun m!6978586 () Bool)

(assert (=> b!6136097 m!6978586))

(assert (=> bm!509262 m!6977482))

(declare-fun m!6978588 () Bool)

(assert (=> b!6136102 m!6978588))

(assert (=> b!6134879 d!1922523))

(declare-fun b!6136108 () Bool)

(declare-fun e!3739783 () (InoxSet Context!10926))

(declare-fun e!3739785 () (InoxSet Context!10926))

(assert (=> b!6136108 (= e!3739783 e!3739785)))

(declare-fun c!1103469 () Bool)

(assert (=> b!6136108 (= c!1103469 ((_ is Union!16079) (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))))))

(declare-fun c!1103470 () Bool)

(declare-fun c!1103467 () Bool)

(declare-fun call!509268 () List!64536)

(declare-fun call!509269 () (InoxSet Context!10926))

(declare-fun bm!509263 () Bool)

(assert (=> bm!509263 (= call!509269 (derivationStepZipperDown!1327 (ite c!1103469 (regOne!32671 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))) (ite c!1103467 (regTwo!32670 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))) (ite c!1103470 (regOne!32670 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))) (reg!16408 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292)))))))))) (ite (or c!1103469 c!1103467) (ite (or c!1103203 c!1103201) lt!2332346 (Context!10927 call!509064)) (Context!10927 call!509268)) (h!70861 s!2326)))))

(declare-fun e!3739788 () Bool)

(declare-fun b!6136109 () Bool)

(assert (=> b!6136109 (= e!3739788 (nullable!6072 (regOne!32670 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292)))))))))))

(declare-fun b!6136110 () Bool)

(declare-fun e!3739787 () (InoxSet Context!10926))

(declare-fun call!509270 () (InoxSet Context!10926))

(assert (=> b!6136110 (= e!3739787 call!509270)))

(declare-fun b!6136111 () Bool)

(declare-fun call!509273 () (InoxSet Context!10926))

(assert (=> b!6136111 (= e!3739785 ((_ map or) call!509269 call!509273))))

(declare-fun b!6136112 () Bool)

(assert (=> b!6136112 (= e!3739787 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6136113 () Bool)

(declare-fun e!3739786 () (InoxSet Context!10926))

(declare-fun call!509272 () (InoxSet Context!10926))

(assert (=> b!6136113 (= e!3739786 ((_ map or) call!509273 call!509272))))

(declare-fun call!509271 () List!64536)

(declare-fun bm!509265 () Bool)

(assert (=> bm!509265 (= call!509273 (derivationStepZipperDown!1327 (ite c!1103469 (regTwo!32671 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))) (regOne!32670 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292)))))))) (ite c!1103469 (ite (or c!1103203 c!1103201) lt!2332346 (Context!10927 call!509064)) (Context!10927 call!509271)) (h!70861 s!2326)))))

(declare-fun b!6136114 () Bool)

(assert (=> b!6136114 (= c!1103467 e!3739788)))

(declare-fun res!2542751 () Bool)

(assert (=> b!6136114 (=> (not res!2542751) (not e!3739788))))

(assert (=> b!6136114 (= res!2542751 ((_ is Concat!24924) (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))))))

(assert (=> b!6136114 (= e!3739785 e!3739786)))

(declare-fun b!6136115 () Bool)

(declare-fun e!3739784 () (InoxSet Context!10926))

(assert (=> b!6136115 (= e!3739784 call!509270)))

(declare-fun bm!509266 () Bool)

(assert (=> bm!509266 (= call!509272 call!509269)))

(declare-fun bm!509267 () Bool)

(assert (=> bm!509267 (= call!509271 ($colon$colon!1956 (exprs!5963 (ite (or c!1103203 c!1103201) lt!2332346 (Context!10927 call!509064))) (ite (or c!1103467 c!1103470) (regTwo!32670 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))) (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292)))))))))))

(declare-fun b!6136116 () Bool)

(assert (=> b!6136116 (= e!3739786 e!3739784)))

(assert (=> b!6136116 (= c!1103470 ((_ is Concat!24924) (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))))))

(declare-fun b!6136117 () Bool)

(declare-fun c!1103468 () Bool)

(assert (=> b!6136117 (= c!1103468 ((_ is Star!16079) (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))))))

(assert (=> b!6136117 (= e!3739784 e!3739787)))

(declare-fun bm!509268 () Bool)

(assert (=> bm!509268 (= call!509270 call!509272)))

(declare-fun b!6136118 () Bool)

(assert (=> b!6136118 (= e!3739783 (store ((as const (Array Context!10926 Bool)) false) (ite (or c!1103203 c!1103201) lt!2332346 (Context!10927 call!509064)) true))))

(declare-fun d!1922525 () Bool)

(declare-fun c!1103471 () Bool)

(assert (=> d!1922525 (= c!1103471 (and ((_ is ElementMatch!16079) (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))) (= (c!1103007 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292))))))) (h!70861 s!2326))))))

(assert (=> d!1922525 (= (derivationStepZipperDown!1327 (ite c!1103203 (regOne!32671 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103201 (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (ite c!1103204 (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))) (reg!16408 (regTwo!32671 (regOne!32670 r!7292)))))) (ite (or c!1103203 c!1103201) lt!2332346 (Context!10927 call!509064)) (h!70861 s!2326)) e!3739783)))

(declare-fun bm!509264 () Bool)

(assert (=> bm!509264 (= call!509268 call!509271)))

(assert (= (and d!1922525 c!1103471) b!6136118))

(assert (= (and d!1922525 (not c!1103471)) b!6136108))

(assert (= (and b!6136108 c!1103469) b!6136111))

(assert (= (and b!6136108 (not c!1103469)) b!6136114))

(assert (= (and b!6136114 res!2542751) b!6136109))

(assert (= (and b!6136114 c!1103467) b!6136113))

(assert (= (and b!6136114 (not c!1103467)) b!6136116))

(assert (= (and b!6136116 c!1103470) b!6136115))

(assert (= (and b!6136116 (not c!1103470)) b!6136117))

(assert (= (and b!6136117 c!1103468) b!6136110))

(assert (= (and b!6136117 (not c!1103468)) b!6136112))

(assert (= (or b!6136115 b!6136110) bm!509264))

(assert (= (or b!6136115 b!6136110) bm!509268))

(assert (= (or b!6136113 bm!509264) bm!509267))

(assert (= (or b!6136113 bm!509268) bm!509266))

(assert (= (or b!6136111 b!6136113) bm!509265))

(assert (= (or b!6136111 bm!509266) bm!509263))

(declare-fun m!6978590 () Bool)

(assert (=> bm!509265 m!6978590))

(declare-fun m!6978592 () Bool)

(assert (=> bm!509267 m!6978592))

(declare-fun m!6978594 () Bool)

(assert (=> bm!509263 m!6978594))

(declare-fun m!6978596 () Bool)

(assert (=> b!6136109 m!6978596))

(declare-fun m!6978598 () Bool)

(assert (=> b!6136118 m!6978598))

(assert (=> bm!509059 d!1922525))

(declare-fun bs!1521843 () Bool)

(declare-fun d!1922527 () Bool)

(assert (= bs!1521843 (and d!1922527 d!1922437)))

(declare-fun lambda!334372 () Int)

(assert (=> bs!1521843 (= lambda!334372 lambda!334356)))

(declare-fun bs!1521844 () Bool)

(assert (= bs!1521844 (and d!1922527 d!1922449)))

(assert (=> bs!1521844 (= lambda!334372 lambda!334357)))

(declare-fun bs!1521845 () Bool)

(assert (= bs!1521845 (and d!1922527 d!1922463)))

(assert (=> bs!1521845 (= lambda!334372 lambda!334358)))

(declare-fun bs!1521846 () Bool)

(assert (= bs!1521846 (and d!1922527 d!1922481)))

(assert (=> bs!1521846 (= lambda!334372 lambda!334361)))

(assert (=> d!1922527 (= (nullableZipper!1860 lt!2332344) (exists!2426 lt!2332344 lambda!334372))))

(declare-fun bs!1521847 () Bool)

(assert (= bs!1521847 d!1922527))

(declare-fun m!6978600 () Bool)

(assert (=> bs!1521847 m!6978600))

(assert (=> b!6134966 d!1922527))

(declare-fun d!1922529 () Bool)

(declare-fun res!2542752 () Bool)

(declare-fun e!3739789 () Bool)

(assert (=> d!1922529 (=> res!2542752 e!3739789)))

(assert (=> d!1922529 (= res!2542752 ((_ is Nil!64412) (exprs!5963 (h!70862 zl!343))))))

(assert (=> d!1922529 (= (forall!15200 (exprs!5963 (h!70862 zl!343)) lambda!334289) e!3739789)))

(declare-fun b!6136119 () Bool)

(declare-fun e!3739790 () Bool)

(assert (=> b!6136119 (= e!3739789 e!3739790)))

(declare-fun res!2542753 () Bool)

(assert (=> b!6136119 (=> (not res!2542753) (not e!3739790))))

(assert (=> b!6136119 (= res!2542753 (dynLambda!25380 lambda!334289 (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6136120 () Bool)

(assert (=> b!6136120 (= e!3739790 (forall!15200 (t!378009 (exprs!5963 (h!70862 zl!343))) lambda!334289))))

(assert (= (and d!1922529 (not res!2542752)) b!6136119))

(assert (= (and b!6136119 res!2542753) b!6136120))

(declare-fun b_lambda!233551 () Bool)

(assert (=> (not b_lambda!233551) (not b!6136119)))

(declare-fun m!6978602 () Bool)

(assert (=> b!6136119 m!6978602))

(declare-fun m!6978604 () Bool)

(assert (=> b!6136120 m!6978604))

(assert (=> d!1922047 d!1922529))

(declare-fun d!1922531 () Bool)

(declare-fun c!1103472 () Bool)

(assert (=> d!1922531 (= c!1103472 (isEmpty!36360 (tail!11764 (t!378010 s!2326))))))

(declare-fun e!3739791 () Bool)

(assert (=> d!1922531 (= (matchZipper!2091 (derivationStepZipper!2052 ((_ map or) lt!2332344 lt!2332357) (head!12679 (t!378010 s!2326))) (tail!11764 (t!378010 s!2326))) e!3739791)))

(declare-fun b!6136121 () Bool)

(assert (=> b!6136121 (= e!3739791 (nullableZipper!1860 (derivationStepZipper!2052 ((_ map or) lt!2332344 lt!2332357) (head!12679 (t!378010 s!2326)))))))

(declare-fun b!6136122 () Bool)

(assert (=> b!6136122 (= e!3739791 (matchZipper!2091 (derivationStepZipper!2052 (derivationStepZipper!2052 ((_ map or) lt!2332344 lt!2332357) (head!12679 (t!378010 s!2326))) (head!12679 (tail!11764 (t!378010 s!2326)))) (tail!11764 (tail!11764 (t!378010 s!2326)))))))

(assert (= (and d!1922531 c!1103472) b!6136121))

(assert (= (and d!1922531 (not c!1103472)) b!6136122))

(assert (=> d!1922531 m!6977528))

(assert (=> d!1922531 m!6978236))

(assert (=> b!6136121 m!6977696))

(declare-fun m!6978606 () Bool)

(assert (=> b!6136121 m!6978606))

(assert (=> b!6136122 m!6977528))

(assert (=> b!6136122 m!6978240))

(assert (=> b!6136122 m!6977696))

(assert (=> b!6136122 m!6978240))

(declare-fun m!6978608 () Bool)

(assert (=> b!6136122 m!6978608))

(assert (=> b!6136122 m!6977528))

(assert (=> b!6136122 m!6978244))

(assert (=> b!6136122 m!6978608))

(assert (=> b!6136122 m!6978244))

(declare-fun m!6978610 () Bool)

(assert (=> b!6136122 m!6978610))

(assert (=> b!6135144 d!1922531))

(declare-fun bs!1521848 () Bool)

(declare-fun d!1922533 () Bool)

(assert (= bs!1521848 (and d!1922533 d!1922399)))

(declare-fun lambda!334373 () Int)

(assert (=> bs!1521848 (= lambda!334373 lambda!334351)))

(declare-fun bs!1521849 () Bool)

(assert (= bs!1521849 (and d!1922533 b!6134439)))

(assert (=> bs!1521849 (= (= (head!12679 (t!378010 s!2326)) (h!70861 s!2326)) (= lambda!334373 lambda!334251))))

(declare-fun bs!1521850 () Bool)

(assert (= bs!1521850 (and d!1922533 d!1922467)))

(assert (=> bs!1521850 (= lambda!334373 lambda!334359)))

(declare-fun bs!1521851 () Bool)

(assert (= bs!1521851 (and d!1922533 d!1922429)))

(assert (=> bs!1521851 (= lambda!334373 lambda!334353)))

(declare-fun bs!1521852 () Bool)

(assert (= bs!1521852 (and d!1922533 d!1922415)))

(assert (=> bs!1521852 (= lambda!334373 lambda!334352)))

(declare-fun bs!1521853 () Bool)

(assert (= bs!1521853 (and d!1922533 d!1922371)))

(assert (=> bs!1521853 (= lambda!334373 lambda!334349)))

(assert (=> d!1922533 true))

(assert (=> d!1922533 (= (derivationStepZipper!2052 ((_ map or) lt!2332344 lt!2332357) (head!12679 (t!378010 s!2326))) (flatMap!1584 ((_ map or) lt!2332344 lt!2332357) lambda!334373))))

(declare-fun bs!1521854 () Bool)

(assert (= bs!1521854 d!1922533))

(declare-fun m!6978612 () Bool)

(assert (=> bs!1521854 m!6978612))

(assert (=> b!6135144 d!1922533))

(assert (=> b!6135144 d!1922373))

(assert (=> b!6135144 d!1922375))

(declare-fun d!1922535 () Bool)

(declare-fun res!2542758 () Bool)

(declare-fun e!3739796 () Bool)

(assert (=> d!1922535 (=> res!2542758 e!3739796)))

(assert (=> d!1922535 (= res!2542758 ((_ is Nil!64414) lt!2332436))))

(assert (=> d!1922535 (= (noDuplicate!1926 lt!2332436) e!3739796)))

(declare-fun b!6136127 () Bool)

(declare-fun e!3739797 () Bool)

(assert (=> b!6136127 (= e!3739796 e!3739797)))

(declare-fun res!2542759 () Bool)

(assert (=> b!6136127 (=> (not res!2542759) (not e!3739797))))

(declare-fun contains!20040 (List!64538 Context!10926) Bool)

(assert (=> b!6136127 (= res!2542759 (not (contains!20040 (t!378011 lt!2332436) (h!70862 lt!2332436))))))

(declare-fun b!6136128 () Bool)

(assert (=> b!6136128 (= e!3739797 (noDuplicate!1926 (t!378011 lt!2332436)))))

(assert (= (and d!1922535 (not res!2542758)) b!6136127))

(assert (= (and b!6136127 res!2542759) b!6136128))

(declare-fun m!6978614 () Bool)

(assert (=> b!6136127 m!6978614))

(declare-fun m!6978616 () Bool)

(assert (=> b!6136128 m!6978616))

(assert (=> d!1922097 d!1922535))

(declare-fun d!1922537 () Bool)

(declare-fun e!3739805 () Bool)

(assert (=> d!1922537 e!3739805))

(declare-fun res!2542764 () Bool)

(assert (=> d!1922537 (=> (not res!2542764) (not e!3739805))))

(declare-fun res!2542765 () List!64538)

(assert (=> d!1922537 (= res!2542764 (noDuplicate!1926 res!2542765))))

(declare-fun e!3739806 () Bool)

(assert (=> d!1922537 e!3739806))

(assert (=> d!1922537 (= (choose!45594 z!1189) res!2542765)))

(declare-fun b!6136136 () Bool)

(declare-fun e!3739804 () Bool)

(declare-fun tp!1714524 () Bool)

(assert (=> b!6136136 (= e!3739804 tp!1714524)))

(declare-fun tp!1714523 () Bool)

(declare-fun b!6136135 () Bool)

(assert (=> b!6136135 (= e!3739806 (and (inv!83444 (h!70862 res!2542765)) e!3739804 tp!1714523))))

(declare-fun b!6136137 () Bool)

(assert (=> b!6136137 (= e!3739805 (= (content!11981 res!2542765) z!1189))))

(assert (= b!6136135 b!6136136))

(assert (= (and d!1922537 ((_ is Cons!64414) res!2542765)) b!6136135))

(assert (= (and d!1922537 res!2542764) b!6136137))

(declare-fun m!6978618 () Bool)

(assert (=> d!1922537 m!6978618))

(declare-fun m!6978620 () Bool)

(assert (=> b!6136135 m!6978620))

(declare-fun m!6978622 () Bool)

(assert (=> b!6136137 m!6978622))

(assert (=> d!1922097 d!1922537))

(declare-fun d!1922539 () Bool)

(assert (=> d!1922539 (= (isEmptyExpr!1496 lt!2332412) ((_ is EmptyExpr!16079) lt!2332412))))

(assert (=> b!6134952 d!1922539))

(declare-fun b!6136152 () Bool)

(declare-fun e!3739823 () Bool)

(declare-fun e!3739822 () Bool)

(assert (=> b!6136152 (= e!3739823 e!3739822)))

(declare-fun c!1103475 () Bool)

(assert (=> b!6136152 (= c!1103475 ((_ is Union!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun bm!509273 () Bool)

(declare-fun call!509278 () Bool)

(assert (=> bm!509273 (= call!509278 (nullable!6072 (ite c!1103475 (regTwo!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regTwo!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))

(declare-fun b!6136153 () Bool)

(declare-fun e!3739821 () Bool)

(declare-fun e!3739820 () Bool)

(assert (=> b!6136153 (= e!3739821 e!3739820)))

(declare-fun res!2542777 () Bool)

(assert (=> b!6136153 (=> (not res!2542777) (not e!3739820))))

(assert (=> b!6136153 (= res!2542777 (and (not ((_ is EmptyLang!16079) (h!70860 (exprs!5963 (h!70862 zl!343))))) (not ((_ is ElementMatch!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))))))))

(declare-fun bm!509274 () Bool)

(declare-fun call!509279 () Bool)

(assert (=> bm!509274 (= call!509279 (nullable!6072 (ite c!1103475 (regOne!32671 (h!70860 (exprs!5963 (h!70862 zl!343)))) (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343)))))))))

(declare-fun b!6136154 () Bool)

(declare-fun e!3739819 () Bool)

(assert (=> b!6136154 (= e!3739822 e!3739819)))

(declare-fun res!2542779 () Bool)

(assert (=> b!6136154 (= res!2542779 call!509279)))

(assert (=> b!6136154 (=> res!2542779 e!3739819)))

(declare-fun b!6136155 () Bool)

(assert (=> b!6136155 (= e!3739820 e!3739823)))

(declare-fun res!2542776 () Bool)

(assert (=> b!6136155 (=> res!2542776 e!3739823)))

(assert (=> b!6136155 (= res!2542776 ((_ is Star!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun b!6136156 () Bool)

(declare-fun e!3739824 () Bool)

(assert (=> b!6136156 (= e!3739822 e!3739824)))

(declare-fun res!2542780 () Bool)

(assert (=> b!6136156 (= res!2542780 call!509279)))

(assert (=> b!6136156 (=> (not res!2542780) (not e!3739824))))

(declare-fun d!1922541 () Bool)

(declare-fun res!2542778 () Bool)

(assert (=> d!1922541 (=> res!2542778 e!3739821)))

(assert (=> d!1922541 (= res!2542778 ((_ is EmptyExpr!16079) (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> d!1922541 (= (nullableFct!2036 (h!70860 (exprs!5963 (h!70862 zl!343)))) e!3739821)))

(declare-fun b!6136157 () Bool)

(assert (=> b!6136157 (= e!3739819 call!509278)))

(declare-fun b!6136158 () Bool)

(assert (=> b!6136158 (= e!3739824 call!509278)))

(assert (= (and d!1922541 (not res!2542778)) b!6136153))

(assert (= (and b!6136153 res!2542777) b!6136155))

(assert (= (and b!6136155 (not res!2542776)) b!6136152))

(assert (= (and b!6136152 c!1103475) b!6136154))

(assert (= (and b!6136152 (not c!1103475)) b!6136156))

(assert (= (and b!6136154 (not res!2542779)) b!6136157))

(assert (= (and b!6136156 res!2542780) b!6136158))

(assert (= (or b!6136157 b!6136158) bm!509273))

(assert (= (or b!6136154 b!6136156) bm!509274))

(declare-fun m!6978624 () Bool)

(assert (=> bm!509273 m!6978624))

(declare-fun m!6978626 () Bool)

(assert (=> bm!509274 m!6978626))

(assert (=> d!1922067 d!1922541))

(declare-fun b!6136159 () Bool)

(declare-fun e!3739825 () (InoxSet Context!10926))

(declare-fun e!3739827 () (InoxSet Context!10926))

(assert (=> b!6136159 (= e!3739825 e!3739827)))

(declare-fun c!1103478 () Bool)

(assert (=> b!6136159 (= c!1103478 ((_ is Union!16079) (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))))))

(declare-fun call!509281 () (InoxSet Context!10926))

(declare-fun call!509280 () List!64536)

(declare-fun c!1103476 () Bool)

(declare-fun bm!509275 () Bool)

(declare-fun c!1103479 () Bool)

(assert (=> bm!509275 (= call!509281 (derivationStepZipperDown!1327 (ite c!1103478 (regOne!32671 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))) (ite c!1103476 (regTwo!32670 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))) (ite c!1103479 (regOne!32670 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))) (reg!16408 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))))))) (ite (or c!1103478 c!1103476) (ite c!1103203 lt!2332346 (Context!10927 call!509067)) (Context!10927 call!509280)) (h!70861 s!2326)))))

(declare-fun b!6136160 () Bool)

(declare-fun e!3739830 () Bool)

(assert (=> b!6136160 (= e!3739830 (nullable!6072 (regOne!32670 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))))))))

(declare-fun b!6136161 () Bool)

(declare-fun e!3739829 () (InoxSet Context!10926))

(declare-fun call!509282 () (InoxSet Context!10926))

(assert (=> b!6136161 (= e!3739829 call!509282)))

(declare-fun b!6136162 () Bool)

(declare-fun call!509285 () (InoxSet Context!10926))

(assert (=> b!6136162 (= e!3739827 ((_ map or) call!509281 call!509285))))

(declare-fun b!6136163 () Bool)

(assert (=> b!6136163 (= e!3739829 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6136164 () Bool)

(declare-fun e!3739828 () (InoxSet Context!10926))

(declare-fun call!509284 () (InoxSet Context!10926))

(assert (=> b!6136164 (= e!3739828 ((_ map or) call!509285 call!509284))))

(declare-fun bm!509277 () Bool)

(declare-fun call!509283 () List!64536)

(assert (=> bm!509277 (= call!509285 (derivationStepZipperDown!1327 (ite c!1103478 (regTwo!32671 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))) (regOne!32670 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))))) (ite c!1103478 (ite c!1103203 lt!2332346 (Context!10927 call!509067)) (Context!10927 call!509283)) (h!70861 s!2326)))))

(declare-fun b!6136165 () Bool)

(assert (=> b!6136165 (= c!1103476 e!3739830)))

(declare-fun res!2542781 () Bool)

(assert (=> b!6136165 (=> (not res!2542781) (not e!3739830))))

(assert (=> b!6136165 (= res!2542781 ((_ is Concat!24924) (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))))))

(assert (=> b!6136165 (= e!3739827 e!3739828)))

(declare-fun b!6136166 () Bool)

(declare-fun e!3739826 () (InoxSet Context!10926))

(assert (=> b!6136166 (= e!3739826 call!509282)))

(declare-fun bm!509278 () Bool)

(assert (=> bm!509278 (= call!509284 call!509281)))

(declare-fun bm!509279 () Bool)

(assert (=> bm!509279 (= call!509283 ($colon$colon!1956 (exprs!5963 (ite c!1103203 lt!2332346 (Context!10927 call!509067))) (ite (or c!1103476 c!1103479) (regTwo!32670 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))) (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))))))))

(declare-fun b!6136167 () Bool)

(assert (=> b!6136167 (= e!3739828 e!3739826)))

(assert (=> b!6136167 (= c!1103479 ((_ is Concat!24924) (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))))))

(declare-fun b!6136168 () Bool)

(declare-fun c!1103477 () Bool)

(assert (=> b!6136168 (= c!1103477 ((_ is Star!16079) (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))))))

(assert (=> b!6136168 (= e!3739826 e!3739829)))

(declare-fun bm!509280 () Bool)

(assert (=> bm!509280 (= call!509282 call!509284)))

(declare-fun b!6136169 () Bool)

(assert (=> b!6136169 (= e!3739825 (store ((as const (Array Context!10926 Bool)) false) (ite c!1103203 lt!2332346 (Context!10927 call!509067)) true))))

(declare-fun d!1922543 () Bool)

(declare-fun c!1103480 () Bool)

(assert (=> d!1922543 (= c!1103480 (and ((_ is ElementMatch!16079) (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))) (= (c!1103007 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292))))) (h!70861 s!2326))))))

(assert (=> d!1922543 (= (derivationStepZipperDown!1327 (ite c!1103203 (regTwo!32671 (regTwo!32671 (regOne!32670 r!7292))) (regOne!32670 (regTwo!32671 (regOne!32670 r!7292)))) (ite c!1103203 lt!2332346 (Context!10927 call!509067)) (h!70861 s!2326)) e!3739825)))

(declare-fun bm!509276 () Bool)

(assert (=> bm!509276 (= call!509280 call!509283)))

(assert (= (and d!1922543 c!1103480) b!6136169))

(assert (= (and d!1922543 (not c!1103480)) b!6136159))

(assert (= (and b!6136159 c!1103478) b!6136162))

(assert (= (and b!6136159 (not c!1103478)) b!6136165))

(assert (= (and b!6136165 res!2542781) b!6136160))

(assert (= (and b!6136165 c!1103476) b!6136164))

(assert (= (and b!6136165 (not c!1103476)) b!6136167))

(assert (= (and b!6136167 c!1103479) b!6136166))

(assert (= (and b!6136167 (not c!1103479)) b!6136168))

(assert (= (and b!6136168 c!1103477) b!6136161))

(assert (= (and b!6136168 (not c!1103477)) b!6136163))

(assert (= (or b!6136166 b!6136161) bm!509276))

(assert (= (or b!6136166 b!6136161) bm!509280))

(assert (= (or b!6136164 bm!509276) bm!509279))

(assert (= (or b!6136164 bm!509280) bm!509278))

(assert (= (or b!6136162 b!6136164) bm!509277))

(assert (= (or b!6136162 bm!509278) bm!509275))

(declare-fun m!6978628 () Bool)

(assert (=> bm!509277 m!6978628))

(declare-fun m!6978630 () Bool)

(assert (=> bm!509279 m!6978630))

(declare-fun m!6978632 () Bool)

(assert (=> bm!509275 m!6978632))

(declare-fun m!6978634 () Bool)

(assert (=> b!6136160 m!6978634))

(declare-fun m!6978636 () Bool)

(assert (=> b!6136169 m!6978636))

(assert (=> bm!509061 d!1922543))

(declare-fun b!6136170 () Bool)

(declare-fun e!3739831 () (InoxSet Context!10926))

(declare-fun e!3739833 () (InoxSet Context!10926))

(assert (=> b!6136170 (= e!3739831 e!3739833)))

(declare-fun c!1103483 () Bool)

(assert (=> b!6136170 (= c!1103483 ((_ is Union!16079) (h!70860 (exprs!5963 lt!2332353))))))

(declare-fun bm!509281 () Bool)

(declare-fun c!1103484 () Bool)

(declare-fun call!509287 () (InoxSet Context!10926))

(declare-fun c!1103481 () Bool)

(declare-fun call!509286 () List!64536)

(assert (=> bm!509281 (= call!509287 (derivationStepZipperDown!1327 (ite c!1103483 (regOne!32671 (h!70860 (exprs!5963 lt!2332353))) (ite c!1103481 (regTwo!32670 (h!70860 (exprs!5963 lt!2332353))) (ite c!1103484 (regOne!32670 (h!70860 (exprs!5963 lt!2332353))) (reg!16408 (h!70860 (exprs!5963 lt!2332353)))))) (ite (or c!1103483 c!1103481) (Context!10927 (t!378009 (exprs!5963 lt!2332353))) (Context!10927 call!509286)) (h!70861 s!2326)))))

(declare-fun b!6136171 () Bool)

(declare-fun e!3739836 () Bool)

(assert (=> b!6136171 (= e!3739836 (nullable!6072 (regOne!32670 (h!70860 (exprs!5963 lt!2332353)))))))

(declare-fun b!6136172 () Bool)

(declare-fun e!3739835 () (InoxSet Context!10926))

(declare-fun call!509288 () (InoxSet Context!10926))

(assert (=> b!6136172 (= e!3739835 call!509288)))

(declare-fun b!6136173 () Bool)

(declare-fun call!509291 () (InoxSet Context!10926))

(assert (=> b!6136173 (= e!3739833 ((_ map or) call!509287 call!509291))))

(declare-fun b!6136174 () Bool)

(assert (=> b!6136174 (= e!3739835 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6136175 () Bool)

(declare-fun e!3739834 () (InoxSet Context!10926))

(declare-fun call!509290 () (InoxSet Context!10926))

(assert (=> b!6136175 (= e!3739834 ((_ map or) call!509291 call!509290))))

(declare-fun bm!509283 () Bool)

(declare-fun call!509289 () List!64536)

(assert (=> bm!509283 (= call!509291 (derivationStepZipperDown!1327 (ite c!1103483 (regTwo!32671 (h!70860 (exprs!5963 lt!2332353))) (regOne!32670 (h!70860 (exprs!5963 lt!2332353)))) (ite c!1103483 (Context!10927 (t!378009 (exprs!5963 lt!2332353))) (Context!10927 call!509289)) (h!70861 s!2326)))))

(declare-fun b!6136176 () Bool)

(assert (=> b!6136176 (= c!1103481 e!3739836)))

(declare-fun res!2542782 () Bool)

(assert (=> b!6136176 (=> (not res!2542782) (not e!3739836))))

(assert (=> b!6136176 (= res!2542782 ((_ is Concat!24924) (h!70860 (exprs!5963 lt!2332353))))))

(assert (=> b!6136176 (= e!3739833 e!3739834)))

(declare-fun b!6136177 () Bool)

(declare-fun e!3739832 () (InoxSet Context!10926))

(assert (=> b!6136177 (= e!3739832 call!509288)))

(declare-fun bm!509284 () Bool)

(assert (=> bm!509284 (= call!509290 call!509287)))

(declare-fun bm!509285 () Bool)

(assert (=> bm!509285 (= call!509289 ($colon$colon!1956 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 lt!2332353)))) (ite (or c!1103481 c!1103484) (regTwo!32670 (h!70860 (exprs!5963 lt!2332353))) (h!70860 (exprs!5963 lt!2332353)))))))

(declare-fun b!6136178 () Bool)

(assert (=> b!6136178 (= e!3739834 e!3739832)))

(assert (=> b!6136178 (= c!1103484 ((_ is Concat!24924) (h!70860 (exprs!5963 lt!2332353))))))

(declare-fun b!6136179 () Bool)

(declare-fun c!1103482 () Bool)

(assert (=> b!6136179 (= c!1103482 ((_ is Star!16079) (h!70860 (exprs!5963 lt!2332353))))))

(assert (=> b!6136179 (= e!3739832 e!3739835)))

(declare-fun bm!509286 () Bool)

(assert (=> bm!509286 (= call!509288 call!509290)))

(declare-fun b!6136180 () Bool)

(assert (=> b!6136180 (= e!3739831 (store ((as const (Array Context!10926 Bool)) false) (Context!10927 (t!378009 (exprs!5963 lt!2332353))) true))))

(declare-fun d!1922545 () Bool)

(declare-fun c!1103485 () Bool)

(assert (=> d!1922545 (= c!1103485 (and ((_ is ElementMatch!16079) (h!70860 (exprs!5963 lt!2332353))) (= (c!1103007 (h!70860 (exprs!5963 lt!2332353))) (h!70861 s!2326))))))

(assert (=> d!1922545 (= (derivationStepZipperDown!1327 (h!70860 (exprs!5963 lt!2332353)) (Context!10927 (t!378009 (exprs!5963 lt!2332353))) (h!70861 s!2326)) e!3739831)))

(declare-fun bm!509282 () Bool)

(assert (=> bm!509282 (= call!509286 call!509289)))

(assert (= (and d!1922545 c!1103485) b!6136180))

(assert (= (and d!1922545 (not c!1103485)) b!6136170))

(assert (= (and b!6136170 c!1103483) b!6136173))

(assert (= (and b!6136170 (not c!1103483)) b!6136176))

(assert (= (and b!6136176 res!2542782) b!6136171))

(assert (= (and b!6136176 c!1103481) b!6136175))

(assert (= (and b!6136176 (not c!1103481)) b!6136178))

(assert (= (and b!6136178 c!1103484) b!6136177))

(assert (= (and b!6136178 (not c!1103484)) b!6136179))

(assert (= (and b!6136179 c!1103482) b!6136172))

(assert (= (and b!6136179 (not c!1103482)) b!6136174))

(assert (= (or b!6136177 b!6136172) bm!509282))

(assert (= (or b!6136177 b!6136172) bm!509286))

(assert (= (or b!6136175 bm!509282) bm!509285))

(assert (= (or b!6136175 bm!509286) bm!509284))

(assert (= (or b!6136173 b!6136175) bm!509283))

(assert (= (or b!6136173 bm!509284) bm!509281))

(declare-fun m!6978638 () Bool)

(assert (=> bm!509283 m!6978638))

(declare-fun m!6978640 () Bool)

(assert (=> bm!509285 m!6978640))

(declare-fun m!6978642 () Bool)

(assert (=> bm!509281 m!6978642))

(declare-fun m!6978644 () Bool)

(assert (=> b!6136171 m!6978644))

(declare-fun m!6978646 () Bool)

(assert (=> b!6136180 m!6978646))

(assert (=> bm!509037 d!1922545))

(assert (=> b!6134959 d!1922063))

(declare-fun d!1922547 () Bool)

(assert (=> d!1922547 (= (isDefined!12673 lt!2332426) (not (isEmpty!36361 lt!2332426)))))

(declare-fun bs!1521855 () Bool)

(assert (= bs!1521855 d!1922547))

(declare-fun m!6978648 () Bool)

(assert (=> bs!1521855 m!6978648))

(assert (=> b!6135066 d!1922547))

(declare-fun d!1922549 () Bool)

(assert (=> d!1922549 (= ($colon$colon!1956 (exprs!5963 lt!2332346) (ite (or c!1103201 c!1103204) (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (regTwo!32671 (regOne!32670 r!7292)))) (Cons!64412 (ite (or c!1103201 c!1103204) (regTwo!32670 (regTwo!32671 (regOne!32670 r!7292))) (regTwo!32671 (regOne!32670 r!7292))) (exprs!5963 lt!2332346)))))

(assert (=> bm!509063 d!1922549))

(declare-fun d!1922551 () Bool)

(assert (=> d!1922551 (= (nullable!6072 (h!70860 (exprs!5963 lt!2332346))) (nullableFct!2036 (h!70860 (exprs!5963 lt!2332346))))))

(declare-fun bs!1521856 () Bool)

(assert (= bs!1521856 d!1922551))

(declare-fun m!6978650 () Bool)

(assert (=> bs!1521856 m!6978650))

(assert (=> b!6134993 d!1922551))

(assert (=> d!1922081 d!1922361))

(assert (=> d!1922085 d!1922547))

(declare-fun b!6136181 () Bool)

(declare-fun e!3739838 () Bool)

(assert (=> b!6136181 (= e!3739838 (not (= (head!12679 Nil!64413) (c!1103007 (regOne!32670 r!7292)))))))

(declare-fun b!6136182 () Bool)

(declare-fun res!2542790 () Bool)

(declare-fun e!3739840 () Bool)

(assert (=> b!6136182 (=> (not res!2542790) (not e!3739840))))

(declare-fun call!509292 () Bool)

(assert (=> b!6136182 (= res!2542790 (not call!509292))))

(declare-fun b!6136183 () Bool)

(declare-fun e!3739843 () Bool)

(assert (=> b!6136183 (= e!3739843 e!3739838)))

(declare-fun res!2542789 () Bool)

(assert (=> b!6136183 (=> res!2542789 e!3739838)))

(assert (=> b!6136183 (= res!2542789 call!509292)))

(declare-fun b!6136184 () Bool)

(declare-fun e!3739837 () Bool)

(declare-fun lt!2332488 () Bool)

(assert (=> b!6136184 (= e!3739837 (not lt!2332488))))

(declare-fun b!6136185 () Bool)

(assert (=> b!6136185 (= e!3739840 (= (head!12679 Nil!64413) (c!1103007 (regOne!32670 r!7292))))))

(declare-fun b!6136186 () Bool)

(declare-fun res!2542787 () Bool)

(declare-fun e!3739841 () Bool)

(assert (=> b!6136186 (=> res!2542787 e!3739841)))

(assert (=> b!6136186 (= res!2542787 e!3739840)))

(declare-fun res!2542788 () Bool)

(assert (=> b!6136186 (=> (not res!2542788) (not e!3739840))))

(assert (=> b!6136186 (= res!2542788 lt!2332488)))

(declare-fun b!6136187 () Bool)

(assert (=> b!6136187 (= e!3739841 e!3739843)))

(declare-fun res!2542785 () Bool)

(assert (=> b!6136187 (=> (not res!2542785) (not e!3739843))))

(assert (=> b!6136187 (= res!2542785 (not lt!2332488))))

(declare-fun b!6136188 () Bool)

(declare-fun e!3739839 () Bool)

(assert (=> b!6136188 (= e!3739839 e!3739837)))

(declare-fun c!1103486 () Bool)

(assert (=> b!6136188 (= c!1103486 ((_ is EmptyLang!16079) (regOne!32670 r!7292)))))

(declare-fun b!6136189 () Bool)

(declare-fun res!2542783 () Bool)

(assert (=> b!6136189 (=> (not res!2542783) (not e!3739840))))

(assert (=> b!6136189 (= res!2542783 (isEmpty!36360 (tail!11764 Nil!64413)))))

(declare-fun b!6136190 () Bool)

(assert (=> b!6136190 (= e!3739839 (= lt!2332488 call!509292))))

(declare-fun b!6136191 () Bool)

(declare-fun res!2542786 () Bool)

(assert (=> b!6136191 (=> res!2542786 e!3739841)))

(assert (=> b!6136191 (= res!2542786 (not ((_ is ElementMatch!16079) (regOne!32670 r!7292))))))

(assert (=> b!6136191 (= e!3739837 e!3739841)))

(declare-fun bm!509287 () Bool)

(assert (=> bm!509287 (= call!509292 (isEmpty!36360 Nil!64413))))

(declare-fun b!6136193 () Bool)

(declare-fun e!3739842 () Bool)

(assert (=> b!6136193 (= e!3739842 (matchR!8262 (derivativeStep!4799 (regOne!32670 r!7292) (head!12679 Nil!64413)) (tail!11764 Nil!64413)))))

(declare-fun b!6136194 () Bool)

(assert (=> b!6136194 (= e!3739842 (nullable!6072 (regOne!32670 r!7292)))))

(declare-fun d!1922553 () Bool)

(assert (=> d!1922553 e!3739839))

(declare-fun c!1103488 () Bool)

(assert (=> d!1922553 (= c!1103488 ((_ is EmptyExpr!16079) (regOne!32670 r!7292)))))

(assert (=> d!1922553 (= lt!2332488 e!3739842)))

(declare-fun c!1103487 () Bool)

(assert (=> d!1922553 (= c!1103487 (isEmpty!36360 Nil!64413))))

(assert (=> d!1922553 (validRegex!7815 (regOne!32670 r!7292))))

(assert (=> d!1922553 (= (matchR!8262 (regOne!32670 r!7292) Nil!64413) lt!2332488)))

(declare-fun b!6136192 () Bool)

(declare-fun res!2542784 () Bool)

(assert (=> b!6136192 (=> res!2542784 e!3739838)))

(assert (=> b!6136192 (= res!2542784 (not (isEmpty!36360 (tail!11764 Nil!64413))))))

(assert (= (and d!1922553 c!1103487) b!6136194))

(assert (= (and d!1922553 (not c!1103487)) b!6136193))

(assert (= (and d!1922553 c!1103488) b!6136190))

(assert (= (and d!1922553 (not c!1103488)) b!6136188))

(assert (= (and b!6136188 c!1103486) b!6136184))

(assert (= (and b!6136188 (not c!1103486)) b!6136191))

(assert (= (and b!6136191 (not res!2542786)) b!6136186))

(assert (= (and b!6136186 res!2542788) b!6136182))

(assert (= (and b!6136182 res!2542790) b!6136189))

(assert (= (and b!6136189 res!2542783) b!6136185))

(assert (= (and b!6136186 (not res!2542787)) b!6136187))

(assert (= (and b!6136187 res!2542785) b!6136183))

(assert (= (and b!6136183 (not res!2542789)) b!6136192))

(assert (= (and b!6136192 (not res!2542784)) b!6136181))

(assert (= (or b!6136190 b!6136182 b!6136183) bm!509287))

(declare-fun m!6978652 () Bool)

(assert (=> d!1922553 m!6978652))

(assert (=> d!1922553 m!6977620))

(assert (=> bm!509287 m!6978652))

(declare-fun m!6978654 () Bool)

(assert (=> b!6136185 m!6978654))

(declare-fun m!6978656 () Bool)

(assert (=> b!6136189 m!6978656))

(assert (=> b!6136189 m!6978656))

(declare-fun m!6978658 () Bool)

(assert (=> b!6136189 m!6978658))

(assert (=> b!6136192 m!6978656))

(assert (=> b!6136192 m!6978656))

(assert (=> b!6136192 m!6978658))

(assert (=> b!6136194 m!6978454))

(assert (=> b!6136181 m!6978654))

(assert (=> b!6136193 m!6978654))

(assert (=> b!6136193 m!6978654))

(declare-fun m!6978660 () Bool)

(assert (=> b!6136193 m!6978660))

(assert (=> b!6136193 m!6978656))

(assert (=> b!6136193 m!6978660))

(assert (=> b!6136193 m!6978656))

(declare-fun m!6978662 () Bool)

(assert (=> b!6136193 m!6978662))

(assert (=> d!1922085 d!1922553))

(assert (=> d!1922085 d!1922519))

(assert (=> d!1922043 d!1922469))

(assert (=> d!1922043 d!1922113))

(assert (=> d!1922089 d!1922085))

(assert (=> d!1922089 d!1922095))

(declare-fun bs!1521857 () Bool)

(declare-fun d!1922555 () Bool)

(assert (= bs!1521857 (and d!1922555 b!6135801)))

(declare-fun lambda!334376 () Int)

(assert (=> bs!1521857 (not (= lambda!334376 lambda!334345))))

(declare-fun bs!1521858 () Bool)

(assert (= bs!1521858 (and d!1922555 b!6135793)))

(assert (=> bs!1521858 (not (= lambda!334376 lambda!334344))))

(declare-fun bs!1521859 () Bool)

(assert (= bs!1521859 (and d!1922555 d!1922089)))

(assert (=> bs!1521859 (= lambda!334376 lambda!334297)))

(declare-fun bs!1521860 () Bool)

(assert (= bs!1521860 (and d!1922555 d!1922091)))

(assert (=> bs!1521860 (not (= lambda!334376 lambda!334303))))

(declare-fun bs!1521861 () Bool)

(assert (= bs!1521861 (and d!1922555 d!1922517)))

(assert (=> bs!1521861 (= lambda!334376 lambda!334368)))

(declare-fun bs!1521862 () Bool)

(assert (= bs!1521862 (and d!1922555 b!6134456)))

(assert (=> bs!1521862 (= lambda!334376 lambda!334249)))

(assert (=> bs!1521862 (not (= lambda!334376 lambda!334250))))

(assert (=> bs!1521861 (not (= lambda!334376 lambda!334369))))

(declare-fun bs!1521863 () Bool)

(assert (= bs!1521863 (and d!1922555 b!6136106)))

(assert (=> bs!1521863 (not (= lambda!334376 lambda!334371))))

(declare-fun bs!1521864 () Bool)

(assert (= bs!1521864 (and d!1922555 b!6136098)))

(assert (=> bs!1521864 (not (= lambda!334376 lambda!334370))))

(declare-fun bs!1521865 () Bool)

(assert (= bs!1521865 (and d!1922555 b!6134888)))

(assert (=> bs!1521865 (not (= lambda!334376 lambda!334286))))

(declare-fun bs!1521866 () Bool)

(assert (= bs!1521866 (and d!1922555 b!6134880)))

(assert (=> bs!1521866 (not (= lambda!334376 lambda!334285))))

(assert (=> bs!1521860 (= lambda!334376 lambda!334302)))

(assert (=> d!1922555 true))

(assert (=> d!1922555 true))

(assert (=> d!1922555 true))

(assert (=> d!1922555 (= (isDefined!12673 (findConcatSeparation!2384 (regOne!32670 r!7292) (regTwo!32670 r!7292) Nil!64413 s!2326 s!2326)) (Exists!3149 lambda!334376))))

(assert (=> d!1922555 true))

(declare-fun _$89!2218 () Unit!157471)

(assert (=> d!1922555 (= (choose!45592 (regOne!32670 r!7292) (regTwo!32670 r!7292) s!2326) _$89!2218)))

(declare-fun bs!1521867 () Bool)

(assert (= bs!1521867 d!1922555))

(assert (=> bs!1521867 m!6977176))

(assert (=> bs!1521867 m!6977176))

(assert (=> bs!1521867 m!6977178))

(declare-fun m!6978664 () Bool)

(assert (=> bs!1521867 m!6978664))

(assert (=> d!1922089 d!1922555))

(assert (=> d!1922089 d!1922519))

(declare-fun d!1922557 () Bool)

(assert (=> d!1922557 (= (Exists!3149 lambda!334297) (choose!45591 lambda!334297))))

(declare-fun bs!1521868 () Bool)

(assert (= bs!1521868 d!1922557))

(declare-fun m!6978666 () Bool)

(assert (=> bs!1521868 m!6978666))

(assert (=> d!1922089 d!1922557))

(declare-fun b!6136199 () Bool)

(declare-fun e!3739846 () (InoxSet Context!10926))

(declare-fun e!3739848 () (InoxSet Context!10926))

(assert (=> b!6136199 (= e!3739846 e!3739848)))

(declare-fun c!1103491 () Bool)

(assert (=> b!6136199 (= c!1103491 ((_ is Union!16079) (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))))

(declare-fun call!509293 () List!64536)

(declare-fun c!1103492 () Bool)

(declare-fun c!1103489 () Bool)

(declare-fun bm!509288 () Bool)

(declare-fun call!509294 () (InoxSet Context!10926))

(assert (=> bm!509288 (= call!509294 (derivationStepZipperDown!1327 (ite c!1103491 (regOne!32671 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (ite c!1103489 (regTwo!32670 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (ite c!1103492 (regOne!32670 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (reg!16408 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))))) (ite (or c!1103491 c!1103489) (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (Context!10927 call!509293)) (h!70861 s!2326)))))

(declare-fun b!6136200 () Bool)

(declare-fun e!3739851 () Bool)

(assert (=> b!6136200 (= e!3739851 (nullable!6072 (regOne!32670 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))))))

(declare-fun b!6136201 () Bool)

(declare-fun e!3739850 () (InoxSet Context!10926))

(declare-fun call!509295 () (InoxSet Context!10926))

(assert (=> b!6136201 (= e!3739850 call!509295)))

(declare-fun b!6136202 () Bool)

(declare-fun call!509298 () (InoxSet Context!10926))

(assert (=> b!6136202 (= e!3739848 ((_ map or) call!509294 call!509298))))

(declare-fun b!6136203 () Bool)

(assert (=> b!6136203 (= e!3739850 ((as const (Array Context!10926 Bool)) false))))

(declare-fun b!6136204 () Bool)

(declare-fun e!3739849 () (InoxSet Context!10926))

(declare-fun call!509297 () (InoxSet Context!10926))

(assert (=> b!6136204 (= e!3739849 ((_ map or) call!509298 call!509297))))

(declare-fun call!509296 () List!64536)

(declare-fun bm!509290 () Bool)

(assert (=> bm!509290 (= call!509298 (derivationStepZipperDown!1327 (ite c!1103491 (regTwo!32671 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (regOne!32670 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))) (ite c!1103491 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (Context!10927 call!509296)) (h!70861 s!2326)))))

(declare-fun b!6136205 () Bool)

(assert (=> b!6136205 (= c!1103489 e!3739851)))

(declare-fun res!2542795 () Bool)

(assert (=> b!6136205 (=> (not res!2542795) (not e!3739851))))

(assert (=> b!6136205 (= res!2542795 ((_ is Concat!24924) (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))))

(assert (=> b!6136205 (= e!3739848 e!3739849)))

(declare-fun b!6136206 () Bool)

(declare-fun e!3739847 () (InoxSet Context!10926))

(assert (=> b!6136206 (= e!3739847 call!509295)))

(declare-fun bm!509291 () Bool)

(assert (=> bm!509291 (= call!509297 call!509294)))

(declare-fun bm!509292 () Bool)

(assert (=> bm!509292 (= call!509296 ($colon$colon!1956 (exprs!5963 (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))) (ite (or c!1103489 c!1103492) (regTwo!32670 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))))))))

(declare-fun b!6136207 () Bool)

(assert (=> b!6136207 (= e!3739849 e!3739847)))

(assert (=> b!6136207 (= c!1103492 ((_ is Concat!24924) (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))))

(declare-fun b!6136208 () Bool)

(declare-fun c!1103490 () Bool)

(assert (=> b!6136208 (= c!1103490 ((_ is Star!16079) (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))))))

(assert (=> b!6136208 (= e!3739847 e!3739850)))

(declare-fun bm!509293 () Bool)

(assert (=> bm!509293 (= call!509295 call!509297)))

(declare-fun b!6136209 () Bool)

(assert (=> b!6136209 (= e!3739846 (store ((as const (Array Context!10926 Bool)) false) (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) true))))

(declare-fun d!1922559 () Bool)

(declare-fun c!1103493 () Bool)

(assert (=> d!1922559 (= c!1103493 (and ((_ is ElementMatch!16079) (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (= (c!1103007 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (h!70861 s!2326))))))

(assert (=> d!1922559 (= (derivationStepZipperDown!1327 (h!70860 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343))))))) (Context!10927 (t!378009 (exprs!5963 (Context!10927 (Cons!64412 (h!70860 (exprs!5963 (h!70862 zl!343))) (t!378009 (exprs!5963 (h!70862 zl!343)))))))) (h!70861 s!2326)) e!3739846)))

(declare-fun bm!509289 () Bool)

(assert (=> bm!509289 (= call!509293 call!509296)))

(assert (= (and d!1922559 c!1103493) b!6136209))

(assert (= (and d!1922559 (not c!1103493)) b!6136199))

(assert (= (and b!6136199 c!1103491) b!6136202))

(assert (= (and b!6136199 (not c!1103491)) b!6136205))

(assert (= (and b!6136205 res!2542795) b!6136200))

(assert (= (and b!6136205 c!1103489) b!6136204))

(assert (= (and b!6136205 (not c!1103489)) b!6136207))

(assert (= (and b!6136207 c!1103492) b!6136206))

(assert (= (and b!6136207 (not c!1103492)) b!6136208))

(assert (= (and b!6136208 c!1103490) b!6136201))

(assert (= (and b!6136208 (not c!1103490)) b!6136203))

(assert (= (or b!6136206 b!6136201) bm!509289))

(assert (= (or b!6136206 b!6136201) bm!509293))

(assert (= (or b!6136204 bm!509289) bm!509292))

(assert (= (or b!6136204 bm!509293) bm!509291))

(assert (= (or b!6136202 b!6136204) bm!509290))

(assert (= (or b!6136202 bm!509291) bm!509288))

(declare-fun m!6978668 () Bool)

(assert (=> bm!509290 m!6978668))

(declare-fun m!6978670 () Bool)

(assert (=> bm!509292 m!6978670))

(declare-fun m!6978672 () Bool)

(assert (=> bm!509288 m!6978672))

(declare-fun m!6978674 () Bool)

(assert (=> b!6136200 m!6978674))

(declare-fun m!6978676 () Bool)

(assert (=> b!6136209 m!6978676))

(assert (=> bm!509039 d!1922559))

(declare-fun d!1922561 () Bool)

(assert (=> d!1922561 (= (isEmpty!36357 (tail!11765 (unfocusZipperList!1500 zl!343))) ((_ is Nil!64412) (tail!11765 (unfocusZipperList!1500 zl!343))))))

(assert (=> b!6135106 d!1922561))

(declare-fun d!1922563 () Bool)

(assert (=> d!1922563 (= (tail!11765 (unfocusZipperList!1500 zl!343)) (t!378009 (unfocusZipperList!1500 zl!343)))))

(assert (=> b!6135106 d!1922563))

(declare-fun b!6136210 () Bool)

(declare-fun e!3739853 () Bool)

(assert (=> b!6136210 (= e!3739853 (not (= (head!12679 (_2!36361 (get!22220 lt!2332426))) (c!1103007 (regTwo!32670 r!7292)))))))

(declare-fun b!6136211 () Bool)

(declare-fun res!2542803 () Bool)

(declare-fun e!3739855 () Bool)

(assert (=> b!6136211 (=> (not res!2542803) (not e!3739855))))

(declare-fun call!509299 () Bool)

(assert (=> b!6136211 (= res!2542803 (not call!509299))))

(declare-fun b!6136212 () Bool)

(declare-fun e!3739858 () Bool)

(assert (=> b!6136212 (= e!3739858 e!3739853)))

(declare-fun res!2542802 () Bool)

(assert (=> b!6136212 (=> res!2542802 e!3739853)))

(assert (=> b!6136212 (= res!2542802 call!509299)))

(declare-fun b!6136213 () Bool)

(declare-fun e!3739852 () Bool)

(declare-fun lt!2332489 () Bool)

(assert (=> b!6136213 (= e!3739852 (not lt!2332489))))

(declare-fun b!6136214 () Bool)

(assert (=> b!6136214 (= e!3739855 (= (head!12679 (_2!36361 (get!22220 lt!2332426))) (c!1103007 (regTwo!32670 r!7292))))))

(declare-fun b!6136215 () Bool)

(declare-fun res!2542800 () Bool)

(declare-fun e!3739856 () Bool)

(assert (=> b!6136215 (=> res!2542800 e!3739856)))

(assert (=> b!6136215 (= res!2542800 e!3739855)))

(declare-fun res!2542801 () Bool)

(assert (=> b!6136215 (=> (not res!2542801) (not e!3739855))))

(assert (=> b!6136215 (= res!2542801 lt!2332489)))

(declare-fun b!6136216 () Bool)

(assert (=> b!6136216 (= e!3739856 e!3739858)))

(declare-fun res!2542798 () Bool)

(assert (=> b!6136216 (=> (not res!2542798) (not e!3739858))))

(assert (=> b!6136216 (= res!2542798 (not lt!2332489))))

(declare-fun b!6136217 () Bool)

(declare-fun e!3739854 () Bool)

(assert (=> b!6136217 (= e!3739854 e!3739852)))

(declare-fun c!1103494 () Bool)

(assert (=> b!6136217 (= c!1103494 ((_ is EmptyLang!16079) (regTwo!32670 r!7292)))))

(declare-fun b!6136218 () Bool)

(declare-fun res!2542796 () Bool)

(assert (=> b!6136218 (=> (not res!2542796) (not e!3739855))))

(assert (=> b!6136218 (= res!2542796 (isEmpty!36360 (tail!11764 (_2!36361 (get!22220 lt!2332426)))))))

(declare-fun b!6136219 () Bool)

(assert (=> b!6136219 (= e!3739854 (= lt!2332489 call!509299))))

(declare-fun b!6136220 () Bool)

(declare-fun res!2542799 () Bool)

(assert (=> b!6136220 (=> res!2542799 e!3739856)))

(assert (=> b!6136220 (= res!2542799 (not ((_ is ElementMatch!16079) (regTwo!32670 r!7292))))))

(assert (=> b!6136220 (= e!3739852 e!3739856)))

(declare-fun bm!509294 () Bool)

(assert (=> bm!509294 (= call!509299 (isEmpty!36360 (_2!36361 (get!22220 lt!2332426))))))

(declare-fun b!6136222 () Bool)

(declare-fun e!3739857 () Bool)

(assert (=> b!6136222 (= e!3739857 (matchR!8262 (derivativeStep!4799 (regTwo!32670 r!7292) (head!12679 (_2!36361 (get!22220 lt!2332426)))) (tail!11764 (_2!36361 (get!22220 lt!2332426)))))))

(declare-fun b!6136223 () Bool)

(assert (=> b!6136223 (= e!3739857 (nullable!6072 (regTwo!32670 r!7292)))))

(declare-fun d!1922565 () Bool)

(assert (=> d!1922565 e!3739854))

(declare-fun c!1103496 () Bool)

(assert (=> d!1922565 (= c!1103496 ((_ is EmptyExpr!16079) (regTwo!32670 r!7292)))))

(assert (=> d!1922565 (= lt!2332489 e!3739857)))

(declare-fun c!1103495 () Bool)

(assert (=> d!1922565 (= c!1103495 (isEmpty!36360 (_2!36361 (get!22220 lt!2332426))))))

(assert (=> d!1922565 (validRegex!7815 (regTwo!32670 r!7292))))

(assert (=> d!1922565 (= (matchR!8262 (regTwo!32670 r!7292) (_2!36361 (get!22220 lt!2332426))) lt!2332489)))

(declare-fun b!6136221 () Bool)

(declare-fun res!2542797 () Bool)

(assert (=> b!6136221 (=> res!2542797 e!3739853)))

(assert (=> b!6136221 (= res!2542797 (not (isEmpty!36360 (tail!11764 (_2!36361 (get!22220 lt!2332426))))))))

(assert (= (and d!1922565 c!1103495) b!6136223))

(assert (= (and d!1922565 (not c!1103495)) b!6136222))

(assert (= (and d!1922565 c!1103496) b!6136219))

(assert (= (and d!1922565 (not c!1103496)) b!6136217))

(assert (= (and b!6136217 c!1103494) b!6136213))

(assert (= (and b!6136217 (not c!1103494)) b!6136220))

(assert (= (and b!6136220 (not res!2542799)) b!6136215))

(assert (= (and b!6136215 res!2542801) b!6136211))

(assert (= (and b!6136211 res!2542803) b!6136218))

(assert (= (and b!6136218 res!2542796) b!6136214))

(assert (= (and b!6136215 (not res!2542800)) b!6136216))

(assert (= (and b!6136216 res!2542798) b!6136212))

(assert (= (and b!6136212 (not res!2542802)) b!6136221))

(assert (= (and b!6136221 (not res!2542797)) b!6136210))

(assert (= (or b!6136219 b!6136211 b!6136212) bm!509294))

(declare-fun m!6978678 () Bool)

(assert (=> d!1922565 m!6978678))

(assert (=> d!1922565 m!6978384))

(assert (=> bm!509294 m!6978678))

(declare-fun m!6978680 () Bool)

(assert (=> b!6136214 m!6978680))

(declare-fun m!6978682 () Bool)

(assert (=> b!6136218 m!6978682))

(assert (=> b!6136218 m!6978682))

(declare-fun m!6978684 () Bool)

(assert (=> b!6136218 m!6978684))

(assert (=> b!6136221 m!6978682))

(assert (=> b!6136221 m!6978682))

(assert (=> b!6136221 m!6978684))

(assert (=> b!6136223 m!6978386))

(assert (=> b!6136210 m!6978680))

(assert (=> b!6136222 m!6978680))

(assert (=> b!6136222 m!6978680))

(declare-fun m!6978686 () Bool)

(assert (=> b!6136222 m!6978686))

(assert (=> b!6136222 m!6978682))

(assert (=> b!6136222 m!6978686))

(assert (=> b!6136222 m!6978682))

(declare-fun m!6978688 () Bool)

(assert (=> b!6136222 m!6978688))

(assert (=> b!6135058 d!1922565))

(assert (=> b!6135058 d!1922479))

(declare-fun d!1922567 () Bool)

(assert (=> d!1922567 (= (nullable!6072 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))) (nullableFct!2036 (regOne!32670 (h!70860 (exprs!5963 (h!70862 zl!343))))))))

(declare-fun bs!1521869 () Bool)

(assert (= bs!1521869 d!1922567))

(declare-fun m!6978690 () Bool)

(assert (=> bs!1521869 m!6978690))

(assert (=> b!6135023 d!1922567))

(declare-fun d!1922569 () Bool)

(assert (=> d!1922569 (= ($colon$colon!1956 (exprs!5963 lt!2332346) (ite (or c!1103206 c!1103209) (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (regOne!32671 (regOne!32670 r!7292)))) (Cons!64412 (ite (or c!1103206 c!1103209) (regTwo!32670 (regOne!32671 (regOne!32670 r!7292))) (regOne!32671 (regOne!32670 r!7292))) (exprs!5963 lt!2332346)))))

(assert (=> bm!509069 d!1922569))

(declare-fun d!1922571 () Bool)

(assert (=> d!1922571 (= (isEmpty!36357 (exprs!5963 (h!70862 zl!343))) ((_ is Nil!64412) (exprs!5963 (h!70862 zl!343))))))

(assert (=> b!6134955 d!1922571))

(declare-fun call!509301 () Bool)

(declare-fun bm!509295 () Bool)

(declare-fun c!1103497 () Bool)

(declare-fun c!1103498 () Bool)

(assert (=> bm!509295 (= call!509301 (validRegex!7815 (ite c!1103498 (reg!16408 (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))) (ite c!1103497 (regOne!32671 (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))) (regOne!32670 (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292))))))))))

(declare-fun b!6136224 () Bool)

(declare-fun res!2542804 () Bool)

(declare-fun e!3739859 () Bool)

(assert (=> b!6136224 (=> res!2542804 e!3739859)))

(assert (=> b!6136224 (= res!2542804 (not ((_ is Concat!24924) (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292))))))))

(declare-fun e!3739861 () Bool)

(assert (=> b!6136224 (= e!3739861 e!3739859)))

(declare-fun b!6136225 () Bool)

(declare-fun res!2542806 () Bool)

(declare-fun e!3739864 () Bool)

(assert (=> b!6136225 (=> (not res!2542806) (not e!3739864))))

(declare-fun call!509300 () Bool)

(assert (=> b!6136225 (= res!2542806 call!509300)))

(assert (=> b!6136225 (= e!3739861 e!3739864)))

(declare-fun b!6136226 () Bool)

(declare-fun e!3739863 () Bool)

(declare-fun e!3739862 () Bool)

(assert (=> b!6136226 (= e!3739863 e!3739862)))

(declare-fun res!2542808 () Bool)

(assert (=> b!6136226 (= res!2542808 (not (nullable!6072 (reg!16408 (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))))))))

(assert (=> b!6136226 (=> (not res!2542808) (not e!3739862))))

(declare-fun b!6136227 () Bool)

(assert (=> b!6136227 (= e!3739863 e!3739861)))

(assert (=> b!6136227 (= c!1103497 ((_ is Union!16079) (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))))))

(declare-fun b!6136229 () Bool)

(declare-fun e!3739865 () Bool)

(assert (=> b!6136229 (= e!3739865 e!3739863)))

(assert (=> b!6136229 (= c!1103498 ((_ is Star!16079) (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))))))

(declare-fun b!6136230 () Bool)

(declare-fun e!3739860 () Bool)

(assert (=> b!6136230 (= e!3739859 e!3739860)))

(declare-fun res!2542805 () Bool)

(assert (=> b!6136230 (=> (not res!2542805) (not e!3739860))))

(assert (=> b!6136230 (= res!2542805 call!509300)))

(declare-fun b!6136231 () Bool)

(assert (=> b!6136231 (= e!3739862 call!509301)))

(declare-fun b!6136232 () Bool)

(declare-fun call!509302 () Bool)

(assert (=> b!6136232 (= e!3739864 call!509302)))

(declare-fun d!1922573 () Bool)

(declare-fun res!2542807 () Bool)

(assert (=> d!1922573 (=> res!2542807 e!3739865)))

(assert (=> d!1922573 (= res!2542807 ((_ is ElementMatch!16079) (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))))))

(assert (=> d!1922573 (= (validRegex!7815 (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))) e!3739865)))

(declare-fun b!6136228 () Bool)

(assert (=> b!6136228 (= e!3739860 call!509302)))

(declare-fun bm!509296 () Bool)

(assert (=> bm!509296 (= call!509300 call!509301)))

(declare-fun bm!509297 () Bool)

(assert (=> bm!509297 (= call!509302 (validRegex!7815 (ite c!1103497 (regTwo!32671 (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))) (regTwo!32670 (ite c!1103217 (reg!16408 r!7292) (ite c!1103216 (regOne!32671 r!7292) (regOne!32670 r!7292)))))))))

(assert (= (and d!1922573 (not res!2542807)) b!6136229))

(assert (= (and b!6136229 c!1103498) b!6136226))

(assert (= (and b!6136229 (not c!1103498)) b!6136227))

(assert (= (and b!6136226 res!2542808) b!6136231))

(assert (= (and b!6136227 c!1103497) b!6136225))

(assert (= (and b!6136227 (not c!1103497)) b!6136224))

(assert (= (and b!6136225 res!2542806) b!6136232))

(assert (= (and b!6136224 (not res!2542804)) b!6136230))

(assert (= (and b!6136230 res!2542805) b!6136228))

(assert (= (or b!6136232 b!6136228) bm!509297))

(assert (= (or b!6136225 b!6136230) bm!509296))

(assert (= (or b!6136231 bm!509296) bm!509295))

(declare-fun m!6978692 () Bool)

(assert (=> bm!509295 m!6978692))

(declare-fun m!6978694 () Bool)

(assert (=> b!6136226 m!6978694))

(declare-fun m!6978696 () Bool)

(assert (=> bm!509297 m!6978696))

(assert (=> bm!509077 d!1922573))

(declare-fun d!1922575 () Bool)

(assert (=> d!1922575 (= (Exists!3149 (ite c!1103124 lambda!334285 lambda!334286)) (choose!45591 (ite c!1103124 lambda!334285 lambda!334286)))))

(declare-fun bs!1521870 () Bool)

(assert (= bs!1521870 d!1922575))

(declare-fun m!6978698 () Bool)

(assert (=> bs!1521870 m!6978698))

(assert (=> bm!509030 d!1922575))

(declare-fun d!1922577 () Bool)

(assert (=> d!1922577 (= (isEmpty!36357 (t!378009 (unfocusZipperList!1500 zl!343))) ((_ is Nil!64412) (t!378009 (unfocusZipperList!1500 zl!343))))))

(assert (=> b!6135110 d!1922577))

(declare-fun d!1922579 () Bool)

(declare-fun e!3739867 () Bool)

(assert (=> d!1922579 e!3739867))

(declare-fun res!2542809 () Bool)

(assert (=> d!1922579 (=> (not res!2542809) (not e!3739867))))

(declare-fun lt!2332490 () List!64537)

(assert (=> d!1922579 (= res!2542809 (= (content!11982 lt!2332490) ((_ map or) (content!11982 (_1!36361 (get!22220 lt!2332426))) (content!11982 (_2!36361 (get!22220 lt!2332426))))))))

(declare-fun e!3739866 () List!64537)

(assert (=> d!1922579 (= lt!2332490 e!3739866)))

(declare-fun c!1103499 () Bool)

(assert (=> d!1922579 (= c!1103499 ((_ is Nil!64413) (_1!36361 (get!22220 lt!2332426))))))

(assert (=> d!1922579 (= (++!14165 (_1!36361 (get!22220 lt!2332426)) (_2!36361 (get!22220 lt!2332426))) lt!2332490)))

(declare-fun b!6136233 () Bool)

(assert (=> b!6136233 (= e!3739866 (_2!36361 (get!22220 lt!2332426)))))

(declare-fun b!6136236 () Bool)

(assert (=> b!6136236 (= e!3739867 (or (not (= (_2!36361 (get!22220 lt!2332426)) Nil!64413)) (= lt!2332490 (_1!36361 (get!22220 lt!2332426)))))))

(declare-fun b!6136234 () Bool)

(assert (=> b!6136234 (= e!3739866 (Cons!64413 (h!70861 (_1!36361 (get!22220 lt!2332426))) (++!14165 (t!378010 (_1!36361 (get!22220 lt!2332426))) (_2!36361 (get!22220 lt!2332426)))))))

(declare-fun b!6136235 () Bool)

(declare-fun res!2542810 () Bool)

(assert (=> b!6136235 (=> (not res!2542810) (not e!3739867))))

(assert (=> b!6136235 (= res!2542810 (= (size!40221 lt!2332490) (+ (size!40221 (_1!36361 (get!22220 lt!2332426))) (size!40221 (_2!36361 (get!22220 lt!2332426))))))))

(assert (= (and d!1922579 c!1103499) b!6136233))

(assert (= (and d!1922579 (not c!1103499)) b!6136234))

(assert (= (and d!1922579 res!2542809) b!6136235))

(assert (= (and b!6136235 res!2542810) b!6136236))

(declare-fun m!6978700 () Bool)

(assert (=> d!1922579 m!6978700))

(declare-fun m!6978702 () Bool)

(assert (=> d!1922579 m!6978702))

(declare-fun m!6978704 () Bool)

(assert (=> d!1922579 m!6978704))

(declare-fun m!6978706 () Bool)

(assert (=> b!6136234 m!6978706))

(declare-fun m!6978708 () Bool)

(assert (=> b!6136235 m!6978708))

(declare-fun m!6978710 () Bool)

(assert (=> b!6136235 m!6978710))

(declare-fun m!6978712 () Bool)

(assert (=> b!6136235 m!6978712))

(assert (=> b!6135062 d!1922579))

(assert (=> b!6135062 d!1922479))

(declare-fun d!1922581 () Bool)

(declare-fun res!2542811 () Bool)

(declare-fun e!3739868 () Bool)

(assert (=> d!1922581 (=> res!2542811 e!3739868)))

(assert (=> d!1922581 (= res!2542811 ((_ is Nil!64412) (exprs!5963 lt!2332353)))))

(assert (=> d!1922581 (= (forall!15200 (exprs!5963 lt!2332353) lambda!334293) e!3739868)))

(declare-fun b!6136237 () Bool)

(declare-fun e!3739869 () Bool)

(assert (=> b!6136237 (= e!3739868 e!3739869)))

(declare-fun res!2542812 () Bool)

(assert (=> b!6136237 (=> (not res!2542812) (not e!3739869))))

(assert (=> b!6136237 (= res!2542812 (dynLambda!25380 lambda!334293 (h!70860 (exprs!5963 lt!2332353))))))

(declare-fun b!6136238 () Bool)

(assert (=> b!6136238 (= e!3739869 (forall!15200 (t!378009 (exprs!5963 lt!2332353)) lambda!334293))))

(assert (= (and d!1922581 (not res!2542811)) b!6136237))

(assert (= (and b!6136237 res!2542812) b!6136238))

(declare-fun b_lambda!233553 () Bool)

(assert (=> (not b_lambda!233553) (not b!6136237)))

(declare-fun m!6978714 () Bool)

(assert (=> b!6136237 m!6978714))

(declare-fun m!6978716 () Bool)

(assert (=> b!6136238 m!6978716))

(assert (=> d!1922059 d!1922581))

(declare-fun d!1922583 () Bool)

(assert (=> d!1922583 true))

(declare-fun setRes!41489 () Bool)

(assert (=> d!1922583 setRes!41489))

(declare-fun condSetEmpty!41489 () Bool)

(declare-fun res!2542815 () (InoxSet Context!10926))

(assert (=> d!1922583 (= condSetEmpty!41489 (= res!2542815 ((as const (Array Context!10926 Bool)) false)))))

(assert (=> d!1922583 (= (choose!45589 z!1189 lambda!334251) res!2542815)))

(declare-fun setIsEmpty!41489 () Bool)

(assert (=> setIsEmpty!41489 setRes!41489))

(declare-fun setNonEmpty!41489 () Bool)

(declare-fun tp!1714530 () Bool)

(declare-fun e!3739872 () Bool)

(declare-fun setElem!41489 () Context!10926)

(assert (=> setNonEmpty!41489 (= setRes!41489 (and tp!1714530 (inv!83444 setElem!41489) e!3739872))))

(declare-fun setRest!41489 () (InoxSet Context!10926))

(assert (=> setNonEmpty!41489 (= res!2542815 ((_ map or) (store ((as const (Array Context!10926 Bool)) false) setElem!41489 true) setRest!41489))))

(declare-fun b!6136241 () Bool)

(declare-fun tp!1714529 () Bool)

(assert (=> b!6136241 (= e!3739872 tp!1714529)))

(assert (= (and d!1922583 condSetEmpty!41489) setIsEmpty!41489))

(assert (= (and d!1922583 (not condSetEmpty!41489)) setNonEmpty!41489))

(assert (= setNonEmpty!41489 b!6136241))

(declare-fun m!6978718 () Bool)

(assert (=> setNonEmpty!41489 m!6978718))

(assert (=> d!1922075 d!1922583))

(assert (=> bs!1521564 d!1922073))

(declare-fun bs!1521871 () Bool)

(declare-fun d!1922585 () Bool)

(assert (= bs!1521871 (and d!1922585 d!1922449)))

(declare-fun lambda!334377 () Int)

(assert (=> bs!1521871 (= lambda!334377 lambda!334357)))

(declare-fun bs!1521872 () Bool)

(assert (= bs!1521872 (and d!1922585 d!1922463)))

(assert (=> bs!1521872 (= lambda!334377 lambda!334358)))

(declare-fun bs!1521873 () Bool)

(assert (= bs!1521873 (and d!1922585 d!1922437)))

(assert (=> bs!1521873 (= lambda!334377 lambda!334356)))

(declare-fun bs!1521874 () Bool)

(assert (= bs!1521874 (and d!1922585 d!1922527)))

(assert (=> bs!1521874 (= lambda!334377 lambda!334372)))

(declare-fun bs!1521875 () Bool)

(assert (= bs!1521875 (and d!1922585 d!1922481)))

(assert (=> bs!1521875 (= lambda!334377 lambda!334361)))

(assert (=> d!1922585 (= (nullableZipper!1860 ((_ map or) lt!2332344 lt!2332357)) (exists!2426 ((_ map or) lt!2332344 lt!2332357) lambda!334377))))

(declare-fun bs!1521876 () Bool)

(assert (= bs!1521876 d!1922585))

(declare-fun m!6978720 () Bool)

(assert (=> bs!1521876 m!6978720))

(assert (=> b!6135143 d!1922585))

(declare-fun b!6136242 () Bool)

(declare-fun e!3739873 () Bool)

(declare-fun tp!1714531 () Bool)

(declare-fun tp!1714532 () Bool)

(assert (=> b!6136242 (= e!3739873 (and tp!1714531 tp!1714532))))

(assert (=> b!6135202 (= tp!1714328 e!3739873)))

(assert (= (and b!6135202 ((_ is Cons!64412) (exprs!5963 (h!70862 (t!378011 zl!343))))) b!6136242))

(declare-fun b!6136244 () Bool)

(declare-fun e!3739874 () Bool)

(declare-fun tp!1714536 () Bool)

(declare-fun tp!1714533 () Bool)

(assert (=> b!6136244 (= e!3739874 (and tp!1714536 tp!1714533))))

(assert (=> b!6135215 (= tp!1714345 e!3739874)))

(declare-fun b!6136245 () Bool)

(declare-fun tp!1714535 () Bool)

(assert (=> b!6136245 (= e!3739874 tp!1714535)))

(declare-fun b!6136246 () Bool)

(declare-fun tp!1714537 () Bool)

(declare-fun tp!1714534 () Bool)

(assert (=> b!6136246 (= e!3739874 (and tp!1714537 tp!1714534))))

(declare-fun b!6136243 () Bool)

(assert (=> b!6136243 (= e!3739874 tp_is_empty!41411)))

(assert (= (and b!6135215 ((_ is ElementMatch!16079) (reg!16408 (regTwo!32670 r!7292)))) b!6136243))

(assert (= (and b!6135215 ((_ is Concat!24924) (reg!16408 (regTwo!32670 r!7292)))) b!6136244))

(assert (= (and b!6135215 ((_ is Star!16079) (reg!16408 (regTwo!32670 r!7292)))) b!6136245))

(assert (= (and b!6135215 ((_ is Union!16079) (reg!16408 (regTwo!32670 r!7292)))) b!6136246))

(declare-fun b!6136248 () Bool)

(declare-fun e!3739875 () Bool)

(declare-fun tp!1714541 () Bool)

(declare-fun tp!1714538 () Bool)

(assert (=> b!6136248 (= e!3739875 (and tp!1714541 tp!1714538))))

(assert (=> b!6135207 (= tp!1714334 e!3739875)))

(declare-fun b!6136249 () Bool)

(declare-fun tp!1714540 () Bool)

(assert (=> b!6136249 (= e!3739875 tp!1714540)))

(declare-fun b!6136250 () Bool)

(declare-fun tp!1714542 () Bool)

(declare-fun tp!1714539 () Bool)

(assert (=> b!6136250 (= e!3739875 (and tp!1714542 tp!1714539))))

(declare-fun b!6136247 () Bool)

(assert (=> b!6136247 (= e!3739875 tp_is_empty!41411)))

(assert (= (and b!6135207 ((_ is ElementMatch!16079) (h!70860 (exprs!5963 setElem!41476)))) b!6136247))

(assert (= (and b!6135207 ((_ is Concat!24924) (h!70860 (exprs!5963 setElem!41476)))) b!6136248))

(assert (= (and b!6135207 ((_ is Star!16079) (h!70860 (exprs!5963 setElem!41476)))) b!6136249))

(assert (= (and b!6135207 ((_ is Union!16079) (h!70860 (exprs!5963 setElem!41476)))) b!6136250))

(declare-fun b!6136251 () Bool)

(declare-fun e!3739876 () Bool)

(declare-fun tp!1714543 () Bool)

(declare-fun tp!1714544 () Bool)

(assert (=> b!6136251 (= e!3739876 (and tp!1714543 tp!1714544))))

(assert (=> b!6135207 (= tp!1714335 e!3739876)))

(assert (= (and b!6135207 ((_ is Cons!64412) (t!378009 (exprs!5963 setElem!41476)))) b!6136251))

(declare-fun b!6136253 () Bool)

(declare-fun e!3739878 () Bool)

(declare-fun tp!1714545 () Bool)

(assert (=> b!6136253 (= e!3739878 tp!1714545)))

(declare-fun b!6136252 () Bool)

(declare-fun e!3739877 () Bool)

(declare-fun tp!1714546 () Bool)

(assert (=> b!6136252 (= e!3739877 (and (inv!83444 (h!70862 (t!378011 (t!378011 zl!343)))) e!3739878 tp!1714546))))

(assert (=> b!6135201 (= tp!1714329 e!3739877)))

(assert (= b!6136252 b!6136253))

(assert (= (and b!6135201 ((_ is Cons!64414) (t!378011 (t!378011 zl!343)))) b!6136252))

(declare-fun m!6978722 () Bool)

(assert (=> b!6136252 m!6978722))

(declare-fun b!6136255 () Bool)

(declare-fun e!3739879 () Bool)

(declare-fun tp!1714550 () Bool)

(declare-fun tp!1714547 () Bool)

(assert (=> b!6136255 (= e!3739879 (and tp!1714550 tp!1714547))))

(assert (=> b!6135214 (= tp!1714346 e!3739879)))

(declare-fun b!6136256 () Bool)

(declare-fun tp!1714549 () Bool)

(assert (=> b!6136256 (= e!3739879 tp!1714549)))

(declare-fun b!6136257 () Bool)

(declare-fun tp!1714551 () Bool)

(declare-fun tp!1714548 () Bool)

(assert (=> b!6136257 (= e!3739879 (and tp!1714551 tp!1714548))))

(declare-fun b!6136254 () Bool)

(assert (=> b!6136254 (= e!3739879 tp_is_empty!41411)))

(assert (= (and b!6135214 ((_ is ElementMatch!16079) (regOne!32670 (regTwo!32670 r!7292)))) b!6136254))

(assert (= (and b!6135214 ((_ is Concat!24924) (regOne!32670 (regTwo!32670 r!7292)))) b!6136255))

(assert (= (and b!6135214 ((_ is Star!16079) (regOne!32670 (regTwo!32670 r!7292)))) b!6136256))

(assert (= (and b!6135214 ((_ is Union!16079) (regOne!32670 (regTwo!32670 r!7292)))) b!6136257))

(declare-fun b!6136259 () Bool)

(declare-fun e!3739880 () Bool)

(declare-fun tp!1714555 () Bool)

(declare-fun tp!1714552 () Bool)

(assert (=> b!6136259 (= e!3739880 (and tp!1714555 tp!1714552))))

(assert (=> b!6135214 (= tp!1714343 e!3739880)))

(declare-fun b!6136260 () Bool)

(declare-fun tp!1714554 () Bool)

(assert (=> b!6136260 (= e!3739880 tp!1714554)))

(declare-fun b!6136261 () Bool)

(declare-fun tp!1714556 () Bool)

(declare-fun tp!1714553 () Bool)

(assert (=> b!6136261 (= e!3739880 (and tp!1714556 tp!1714553))))

(declare-fun b!6136258 () Bool)

(assert (=> b!6136258 (= e!3739880 tp_is_empty!41411)))

(assert (= (and b!6135214 ((_ is ElementMatch!16079) (regTwo!32670 (regTwo!32670 r!7292)))) b!6136258))

(assert (= (and b!6135214 ((_ is Concat!24924) (regTwo!32670 (regTwo!32670 r!7292)))) b!6136259))

(assert (= (and b!6135214 ((_ is Star!16079) (regTwo!32670 (regTwo!32670 r!7292)))) b!6136260))

(assert (= (and b!6135214 ((_ is Union!16079) (regTwo!32670 (regTwo!32670 r!7292)))) b!6136261))

(declare-fun b!6136262 () Bool)

(declare-fun e!3739881 () Bool)

(declare-fun tp!1714557 () Bool)

(assert (=> b!6136262 (= e!3739881 (and tp_is_empty!41411 tp!1714557))))

(assert (=> b!6135194 (= tp!1714323 e!3739881)))

(assert (= (and b!6135194 ((_ is Cons!64413) (t!378010 (t!378010 s!2326)))) b!6136262))

(declare-fun condSetEmpty!41490 () Bool)

(assert (=> setNonEmpty!41482 (= condSetEmpty!41490 (= setRest!41482 ((as const (Array Context!10926 Bool)) false)))))

(declare-fun setRes!41490 () Bool)

(assert (=> setNonEmpty!41482 (= tp!1714357 setRes!41490)))

(declare-fun setIsEmpty!41490 () Bool)

(assert (=> setIsEmpty!41490 setRes!41490))

(declare-fun setElem!41490 () Context!10926)

(declare-fun tp!1714558 () Bool)

(declare-fun e!3739882 () Bool)

(declare-fun setNonEmpty!41490 () Bool)

(assert (=> setNonEmpty!41490 (= setRes!41490 (and tp!1714558 (inv!83444 setElem!41490) e!3739882))))

(declare-fun setRest!41490 () (InoxSet Context!10926))

(assert (=> setNonEmpty!41490 (= setRest!41482 ((_ map or) (store ((as const (Array Context!10926 Bool)) false) setElem!41490 true) setRest!41490))))

(declare-fun b!6136263 () Bool)

(declare-fun tp!1714559 () Bool)

(assert (=> b!6136263 (= e!3739882 tp!1714559)))

(assert (= (and setNonEmpty!41482 condSetEmpty!41490) setIsEmpty!41490))

(assert (= (and setNonEmpty!41482 (not condSetEmpty!41490)) setNonEmpty!41490))

(assert (= setNonEmpty!41490 b!6136263))

(declare-fun m!6978724 () Bool)

(assert (=> setNonEmpty!41490 m!6978724))

(declare-fun b!6136265 () Bool)

(declare-fun e!3739883 () Bool)

(declare-fun tp!1714563 () Bool)

(declare-fun tp!1714560 () Bool)

(assert (=> b!6136265 (= e!3739883 (and tp!1714563 tp!1714560))))

(assert (=> b!6135189 (= tp!1714320 e!3739883)))

(declare-fun b!6136266 () Bool)

(declare-fun tp!1714562 () Bool)

(assert (=> b!6136266 (= e!3739883 tp!1714562)))

(declare-fun b!6136267 () Bool)

(declare-fun tp!1714564 () Bool)

(declare-fun tp!1714561 () Bool)

(assert (=> b!6136267 (= e!3739883 (and tp!1714564 tp!1714561))))

(declare-fun b!6136264 () Bool)

(assert (=> b!6136264 (= e!3739883 tp_is_empty!41411)))

(assert (= (and b!6135189 ((_ is ElementMatch!16079) (regOne!32671 (regTwo!32671 r!7292)))) b!6136264))

(assert (= (and b!6135189 ((_ is Concat!24924) (regOne!32671 (regTwo!32671 r!7292)))) b!6136265))

(assert (= (and b!6135189 ((_ is Star!16079) (regOne!32671 (regTwo!32671 r!7292)))) b!6136266))

(assert (= (and b!6135189 ((_ is Union!16079) (regOne!32671 (regTwo!32671 r!7292)))) b!6136267))

(declare-fun b!6136269 () Bool)

(declare-fun e!3739884 () Bool)

(declare-fun tp!1714568 () Bool)

(declare-fun tp!1714565 () Bool)

(assert (=> b!6136269 (= e!3739884 (and tp!1714568 tp!1714565))))

(assert (=> b!6135189 (= tp!1714317 e!3739884)))

(declare-fun b!6136270 () Bool)

(declare-fun tp!1714567 () Bool)

(assert (=> b!6136270 (= e!3739884 tp!1714567)))

(declare-fun b!6136271 () Bool)

(declare-fun tp!1714569 () Bool)

(declare-fun tp!1714566 () Bool)

(assert (=> b!6136271 (= e!3739884 (and tp!1714569 tp!1714566))))

(declare-fun b!6136268 () Bool)

(assert (=> b!6136268 (= e!3739884 tp_is_empty!41411)))

(assert (= (and b!6135189 ((_ is ElementMatch!16079) (regTwo!32671 (regTwo!32671 r!7292)))) b!6136268))

(assert (= (and b!6135189 ((_ is Concat!24924) (regTwo!32671 (regTwo!32671 r!7292)))) b!6136269))

(assert (= (and b!6135189 ((_ is Star!16079) (regTwo!32671 (regTwo!32671 r!7292)))) b!6136270))

(assert (= (and b!6135189 ((_ is Union!16079) (regTwo!32671 (regTwo!32671 r!7292)))) b!6136271))

(declare-fun b!6136272 () Bool)

(declare-fun e!3739885 () Bool)

(declare-fun tp!1714570 () Bool)

(declare-fun tp!1714571 () Bool)

(assert (=> b!6136272 (= e!3739885 (and tp!1714570 tp!1714571))))

(assert (=> b!6135225 (= tp!1714358 e!3739885)))

(assert (= (and b!6135225 ((_ is Cons!64412) (exprs!5963 setElem!41482))) b!6136272))

(declare-fun b!6136274 () Bool)

(declare-fun e!3739886 () Bool)

(declare-fun tp!1714575 () Bool)

(declare-fun tp!1714572 () Bool)

(assert (=> b!6136274 (= e!3739886 (and tp!1714575 tp!1714572))))

(assert (=> b!6135208 (= tp!1714336 e!3739886)))

(declare-fun b!6136275 () Bool)

(declare-fun tp!1714574 () Bool)

(assert (=> b!6136275 (= e!3739886 tp!1714574)))

(declare-fun b!6136276 () Bool)

(declare-fun tp!1714576 () Bool)

(declare-fun tp!1714573 () Bool)

(assert (=> b!6136276 (= e!3739886 (and tp!1714576 tp!1714573))))

(declare-fun b!6136273 () Bool)

(assert (=> b!6136273 (= e!3739886 tp_is_empty!41411)))

(assert (= (and b!6135208 ((_ is ElementMatch!16079) (h!70860 (exprs!5963 (h!70862 zl!343))))) b!6136273))

(assert (= (and b!6135208 ((_ is Concat!24924) (h!70860 (exprs!5963 (h!70862 zl!343))))) b!6136274))

(assert (= (and b!6135208 ((_ is Star!16079) (h!70860 (exprs!5963 (h!70862 zl!343))))) b!6136275))

(assert (= (and b!6135208 ((_ is Union!16079) (h!70860 (exprs!5963 (h!70862 zl!343))))) b!6136276))

(declare-fun b!6136277 () Bool)

(declare-fun e!3739887 () Bool)

(declare-fun tp!1714577 () Bool)

(declare-fun tp!1714578 () Bool)

(assert (=> b!6136277 (= e!3739887 (and tp!1714577 tp!1714578))))

(assert (=> b!6135208 (= tp!1714337 e!3739887)))

(assert (= (and b!6135208 ((_ is Cons!64412) (t!378009 (exprs!5963 (h!70862 zl!343))))) b!6136277))

(declare-fun b!6136279 () Bool)

(declare-fun e!3739888 () Bool)

(declare-fun tp!1714582 () Bool)

(declare-fun tp!1714579 () Bool)

(assert (=> b!6136279 (= e!3739888 (and tp!1714582 tp!1714579))))

(assert (=> b!6135188 (= tp!1714318 e!3739888)))

(declare-fun b!6136280 () Bool)

(declare-fun tp!1714581 () Bool)

(assert (=> b!6136280 (= e!3739888 tp!1714581)))

(declare-fun b!6136281 () Bool)

(declare-fun tp!1714583 () Bool)

(declare-fun tp!1714580 () Bool)

(assert (=> b!6136281 (= e!3739888 (and tp!1714583 tp!1714580))))

(declare-fun b!6136278 () Bool)

(assert (=> b!6136278 (= e!3739888 tp_is_empty!41411)))

(assert (= (and b!6135188 ((_ is ElementMatch!16079) (reg!16408 (regTwo!32671 r!7292)))) b!6136278))

(assert (= (and b!6135188 ((_ is Concat!24924) (reg!16408 (regTwo!32671 r!7292)))) b!6136279))

(assert (= (and b!6135188 ((_ is Star!16079) (reg!16408 (regTwo!32671 r!7292)))) b!6136280))

(assert (= (and b!6135188 ((_ is Union!16079) (reg!16408 (regTwo!32671 r!7292)))) b!6136281))

(declare-fun b!6136283 () Bool)

(declare-fun e!3739889 () Bool)

(declare-fun tp!1714587 () Bool)

(declare-fun tp!1714584 () Bool)

(assert (=> b!6136283 (= e!3739889 (and tp!1714587 tp!1714584))))

(assert (=> b!6135216 (= tp!1714347 e!3739889)))

(declare-fun b!6136284 () Bool)

(declare-fun tp!1714586 () Bool)

(assert (=> b!6136284 (= e!3739889 tp!1714586)))

(declare-fun b!6136285 () Bool)

(declare-fun tp!1714588 () Bool)

(declare-fun tp!1714585 () Bool)

(assert (=> b!6136285 (= e!3739889 (and tp!1714588 tp!1714585))))

(declare-fun b!6136282 () Bool)

(assert (=> b!6136282 (= e!3739889 tp_is_empty!41411)))

(assert (= (and b!6135216 ((_ is ElementMatch!16079) (regOne!32671 (regTwo!32670 r!7292)))) b!6136282))

(assert (= (and b!6135216 ((_ is Concat!24924) (regOne!32671 (regTwo!32670 r!7292)))) b!6136283))

(assert (= (and b!6135216 ((_ is Star!16079) (regOne!32671 (regTwo!32670 r!7292)))) b!6136284))

(assert (= (and b!6135216 ((_ is Union!16079) (regOne!32671 (regTwo!32670 r!7292)))) b!6136285))

(declare-fun b!6136287 () Bool)

(declare-fun e!3739890 () Bool)

(declare-fun tp!1714592 () Bool)

(declare-fun tp!1714589 () Bool)

(assert (=> b!6136287 (= e!3739890 (and tp!1714592 tp!1714589))))

(assert (=> b!6135216 (= tp!1714344 e!3739890)))

(declare-fun b!6136288 () Bool)

(declare-fun tp!1714591 () Bool)

(assert (=> b!6136288 (= e!3739890 tp!1714591)))

(declare-fun b!6136289 () Bool)

(declare-fun tp!1714593 () Bool)

(declare-fun tp!1714590 () Bool)

(assert (=> b!6136289 (= e!3739890 (and tp!1714593 tp!1714590))))

(declare-fun b!6136286 () Bool)

(assert (=> b!6136286 (= e!3739890 tp_is_empty!41411)))

(assert (= (and b!6135216 ((_ is ElementMatch!16079) (regTwo!32671 (regTwo!32670 r!7292)))) b!6136286))

(assert (= (and b!6135216 ((_ is Concat!24924) (regTwo!32671 (regTwo!32670 r!7292)))) b!6136287))

(assert (= (and b!6135216 ((_ is Star!16079) (regTwo!32671 (regTwo!32670 r!7292)))) b!6136288))

(assert (= (and b!6135216 ((_ is Union!16079) (regTwo!32671 (regTwo!32670 r!7292)))) b!6136289))

(declare-fun b!6136291 () Bool)

(declare-fun e!3739891 () Bool)

(declare-fun tp!1714597 () Bool)

(declare-fun tp!1714594 () Bool)

(assert (=> b!6136291 (= e!3739891 (and tp!1714597 tp!1714594))))

(assert (=> b!6135187 (= tp!1714319 e!3739891)))

(declare-fun b!6136292 () Bool)

(declare-fun tp!1714596 () Bool)

(assert (=> b!6136292 (= e!3739891 tp!1714596)))

(declare-fun b!6136293 () Bool)

(declare-fun tp!1714598 () Bool)

(declare-fun tp!1714595 () Bool)

(assert (=> b!6136293 (= e!3739891 (and tp!1714598 tp!1714595))))

(declare-fun b!6136290 () Bool)

(assert (=> b!6136290 (= e!3739891 tp_is_empty!41411)))

(assert (= (and b!6135187 ((_ is ElementMatch!16079) (regOne!32670 (regTwo!32671 r!7292)))) b!6136290))

(assert (= (and b!6135187 ((_ is Concat!24924) (regOne!32670 (regTwo!32671 r!7292)))) b!6136291))

(assert (= (and b!6135187 ((_ is Star!16079) (regOne!32670 (regTwo!32671 r!7292)))) b!6136292))

(assert (= (and b!6135187 ((_ is Union!16079) (regOne!32670 (regTwo!32671 r!7292)))) b!6136293))

(declare-fun b!6136295 () Bool)

(declare-fun e!3739892 () Bool)

(declare-fun tp!1714602 () Bool)

(declare-fun tp!1714599 () Bool)

(assert (=> b!6136295 (= e!3739892 (and tp!1714602 tp!1714599))))

(assert (=> b!6135187 (= tp!1714316 e!3739892)))

(declare-fun b!6136296 () Bool)

(declare-fun tp!1714601 () Bool)

(assert (=> b!6136296 (= e!3739892 tp!1714601)))

(declare-fun b!6136297 () Bool)

(declare-fun tp!1714603 () Bool)

(declare-fun tp!1714600 () Bool)

(assert (=> b!6136297 (= e!3739892 (and tp!1714603 tp!1714600))))

(declare-fun b!6136294 () Bool)

(assert (=> b!6136294 (= e!3739892 tp_is_empty!41411)))

(assert (= (and b!6135187 ((_ is ElementMatch!16079) (regTwo!32670 (regTwo!32671 r!7292)))) b!6136294))

(assert (= (and b!6135187 ((_ is Concat!24924) (regTwo!32670 (regTwo!32671 r!7292)))) b!6136295))

(assert (= (and b!6135187 ((_ is Star!16079) (regTwo!32670 (regTwo!32671 r!7292)))) b!6136296))

(assert (= (and b!6135187 ((_ is Union!16079) (regTwo!32670 (regTwo!32671 r!7292)))) b!6136297))

(declare-fun b!6136299 () Bool)

(declare-fun e!3739893 () Bool)

(declare-fun tp!1714607 () Bool)

(declare-fun tp!1714604 () Bool)

(assert (=> b!6136299 (= e!3739893 (and tp!1714607 tp!1714604))))

(assert (=> b!6135219 (= tp!1714350 e!3739893)))

(declare-fun b!6136300 () Bool)

(declare-fun tp!1714606 () Bool)

(assert (=> b!6136300 (= e!3739893 tp!1714606)))

(declare-fun b!6136301 () Bool)

(declare-fun tp!1714608 () Bool)

(declare-fun tp!1714605 () Bool)

(assert (=> b!6136301 (= e!3739893 (and tp!1714608 tp!1714605))))

(declare-fun b!6136298 () Bool)

(assert (=> b!6136298 (= e!3739893 tp_is_empty!41411)))

(assert (= (and b!6135219 ((_ is ElementMatch!16079) (reg!16408 (reg!16408 r!7292)))) b!6136298))

(assert (= (and b!6135219 ((_ is Concat!24924) (reg!16408 (reg!16408 r!7292)))) b!6136299))

(assert (= (and b!6135219 ((_ is Star!16079) (reg!16408 (reg!16408 r!7292)))) b!6136300))

(assert (= (and b!6135219 ((_ is Union!16079) (reg!16408 (reg!16408 r!7292)))) b!6136301))

(declare-fun b!6136303 () Bool)

(declare-fun e!3739894 () Bool)

(declare-fun tp!1714612 () Bool)

(declare-fun tp!1714609 () Bool)

(assert (=> b!6136303 (= e!3739894 (and tp!1714612 tp!1714609))))

(assert (=> b!6135210 (= tp!1714341 e!3739894)))

(declare-fun b!6136304 () Bool)

(declare-fun tp!1714611 () Bool)

(assert (=> b!6136304 (= e!3739894 tp!1714611)))

(declare-fun b!6136305 () Bool)

(declare-fun tp!1714613 () Bool)

(declare-fun tp!1714610 () Bool)

(assert (=> b!6136305 (= e!3739894 (and tp!1714613 tp!1714610))))

(declare-fun b!6136302 () Bool)

(assert (=> b!6136302 (= e!3739894 tp_is_empty!41411)))

(assert (= (and b!6135210 ((_ is ElementMatch!16079) (regOne!32670 (regOne!32670 r!7292)))) b!6136302))

(assert (= (and b!6135210 ((_ is Concat!24924) (regOne!32670 (regOne!32670 r!7292)))) b!6136303))

(assert (= (and b!6135210 ((_ is Star!16079) (regOne!32670 (regOne!32670 r!7292)))) b!6136304))

(assert (= (and b!6135210 ((_ is Union!16079) (regOne!32670 (regOne!32670 r!7292)))) b!6136305))

(declare-fun b!6136307 () Bool)

(declare-fun e!3739895 () Bool)

(declare-fun tp!1714617 () Bool)

(declare-fun tp!1714614 () Bool)

(assert (=> b!6136307 (= e!3739895 (and tp!1714617 tp!1714614))))

(assert (=> b!6135210 (= tp!1714338 e!3739895)))

(declare-fun b!6136308 () Bool)

(declare-fun tp!1714616 () Bool)

(assert (=> b!6136308 (= e!3739895 tp!1714616)))

(declare-fun b!6136309 () Bool)

(declare-fun tp!1714618 () Bool)

(declare-fun tp!1714615 () Bool)

(assert (=> b!6136309 (= e!3739895 (and tp!1714618 tp!1714615))))

(declare-fun b!6136306 () Bool)

(assert (=> b!6136306 (= e!3739895 tp_is_empty!41411)))

(assert (= (and b!6135210 ((_ is ElementMatch!16079) (regTwo!32670 (regOne!32670 r!7292)))) b!6136306))

(assert (= (and b!6135210 ((_ is Concat!24924) (regTwo!32670 (regOne!32670 r!7292)))) b!6136307))

(assert (= (and b!6135210 ((_ is Star!16079) (regTwo!32670 (regOne!32670 r!7292)))) b!6136308))

(assert (= (and b!6135210 ((_ is Union!16079) (regTwo!32670 (regOne!32670 r!7292)))) b!6136309))

(declare-fun b!6136311 () Bool)

(declare-fun e!3739896 () Bool)

(declare-fun tp!1714622 () Bool)

(declare-fun tp!1714619 () Bool)

(assert (=> b!6136311 (= e!3739896 (and tp!1714622 tp!1714619))))

(assert (=> b!6135220 (= tp!1714352 e!3739896)))

(declare-fun b!6136312 () Bool)

(declare-fun tp!1714621 () Bool)

(assert (=> b!6136312 (= e!3739896 tp!1714621)))

(declare-fun b!6136313 () Bool)

(declare-fun tp!1714623 () Bool)

(declare-fun tp!1714620 () Bool)

(assert (=> b!6136313 (= e!3739896 (and tp!1714623 tp!1714620))))

(declare-fun b!6136310 () Bool)

(assert (=> b!6136310 (= e!3739896 tp_is_empty!41411)))

(assert (= (and b!6135220 ((_ is ElementMatch!16079) (regOne!32671 (reg!16408 r!7292)))) b!6136310))

(assert (= (and b!6135220 ((_ is Concat!24924) (regOne!32671 (reg!16408 r!7292)))) b!6136311))

(assert (= (and b!6135220 ((_ is Star!16079) (regOne!32671 (reg!16408 r!7292)))) b!6136312))

(assert (= (and b!6135220 ((_ is Union!16079) (regOne!32671 (reg!16408 r!7292)))) b!6136313))

(declare-fun b!6136315 () Bool)

(declare-fun e!3739897 () Bool)

(declare-fun tp!1714627 () Bool)

(declare-fun tp!1714624 () Bool)

(assert (=> b!6136315 (= e!3739897 (and tp!1714627 tp!1714624))))

(assert (=> b!6135220 (= tp!1714349 e!3739897)))

(declare-fun b!6136316 () Bool)

(declare-fun tp!1714626 () Bool)

(assert (=> b!6136316 (= e!3739897 tp!1714626)))

(declare-fun b!6136317 () Bool)

(declare-fun tp!1714628 () Bool)

(declare-fun tp!1714625 () Bool)

(assert (=> b!6136317 (= e!3739897 (and tp!1714628 tp!1714625))))

(declare-fun b!6136314 () Bool)

(assert (=> b!6136314 (= e!3739897 tp_is_empty!41411)))

(assert (= (and b!6135220 ((_ is ElementMatch!16079) (regTwo!32671 (reg!16408 r!7292)))) b!6136314))

(assert (= (and b!6135220 ((_ is Concat!24924) (regTwo!32671 (reg!16408 r!7292)))) b!6136315))

(assert (= (and b!6135220 ((_ is Star!16079) (regTwo!32671 (reg!16408 r!7292)))) b!6136316))

(assert (= (and b!6135220 ((_ is Union!16079) (regTwo!32671 (reg!16408 r!7292)))) b!6136317))

(declare-fun b!6136319 () Bool)

(declare-fun e!3739898 () Bool)

(declare-fun tp!1714632 () Bool)

(declare-fun tp!1714629 () Bool)

(assert (=> b!6136319 (= e!3739898 (and tp!1714632 tp!1714629))))

(assert (=> b!6135218 (= tp!1714351 e!3739898)))

(declare-fun b!6136320 () Bool)

(declare-fun tp!1714631 () Bool)

(assert (=> b!6136320 (= e!3739898 tp!1714631)))

(declare-fun b!6136321 () Bool)

(declare-fun tp!1714633 () Bool)

(declare-fun tp!1714630 () Bool)

(assert (=> b!6136321 (= e!3739898 (and tp!1714633 tp!1714630))))

(declare-fun b!6136318 () Bool)

(assert (=> b!6136318 (= e!3739898 tp_is_empty!41411)))

(assert (= (and b!6135218 ((_ is ElementMatch!16079) (regOne!32670 (reg!16408 r!7292)))) b!6136318))

(assert (= (and b!6135218 ((_ is Concat!24924) (regOne!32670 (reg!16408 r!7292)))) b!6136319))

(assert (= (and b!6135218 ((_ is Star!16079) (regOne!32670 (reg!16408 r!7292)))) b!6136320))

(assert (= (and b!6135218 ((_ is Union!16079) (regOne!32670 (reg!16408 r!7292)))) b!6136321))

(declare-fun b!6136323 () Bool)

(declare-fun e!3739899 () Bool)

(declare-fun tp!1714637 () Bool)

(declare-fun tp!1714634 () Bool)

(assert (=> b!6136323 (= e!3739899 (and tp!1714637 tp!1714634))))

(assert (=> b!6135218 (= tp!1714348 e!3739899)))

(declare-fun b!6136324 () Bool)

(declare-fun tp!1714636 () Bool)

(assert (=> b!6136324 (= e!3739899 tp!1714636)))

(declare-fun b!6136325 () Bool)

(declare-fun tp!1714638 () Bool)

(declare-fun tp!1714635 () Bool)

(assert (=> b!6136325 (= e!3739899 (and tp!1714638 tp!1714635))))

(declare-fun b!6136322 () Bool)

(assert (=> b!6136322 (= e!3739899 tp_is_empty!41411)))

(assert (= (and b!6135218 ((_ is ElementMatch!16079) (regTwo!32670 (reg!16408 r!7292)))) b!6136322))

(assert (= (and b!6135218 ((_ is Concat!24924) (regTwo!32670 (reg!16408 r!7292)))) b!6136323))

(assert (= (and b!6135218 ((_ is Star!16079) (regTwo!32670 (reg!16408 r!7292)))) b!6136324))

(assert (= (and b!6135218 ((_ is Union!16079) (regTwo!32670 (reg!16408 r!7292)))) b!6136325))

(declare-fun b!6136327 () Bool)

(declare-fun e!3739900 () Bool)

(declare-fun tp!1714642 () Bool)

(declare-fun tp!1714639 () Bool)

(assert (=> b!6136327 (= e!3739900 (and tp!1714642 tp!1714639))))

(assert (=> b!6135185 (= tp!1714315 e!3739900)))

(declare-fun b!6136328 () Bool)

(declare-fun tp!1714641 () Bool)

(assert (=> b!6136328 (= e!3739900 tp!1714641)))

(declare-fun b!6136329 () Bool)

(declare-fun tp!1714643 () Bool)

(declare-fun tp!1714640 () Bool)

(assert (=> b!6136329 (= e!3739900 (and tp!1714643 tp!1714640))))

(declare-fun b!6136326 () Bool)

(assert (=> b!6136326 (= e!3739900 tp_is_empty!41411)))

(assert (= (and b!6135185 ((_ is ElementMatch!16079) (regOne!32671 (regOne!32671 r!7292)))) b!6136326))

(assert (= (and b!6135185 ((_ is Concat!24924) (regOne!32671 (regOne!32671 r!7292)))) b!6136327))

(assert (= (and b!6135185 ((_ is Star!16079) (regOne!32671 (regOne!32671 r!7292)))) b!6136328))

(assert (= (and b!6135185 ((_ is Union!16079) (regOne!32671 (regOne!32671 r!7292)))) b!6136329))

(declare-fun b!6136331 () Bool)

(declare-fun e!3739901 () Bool)

(declare-fun tp!1714647 () Bool)

(declare-fun tp!1714644 () Bool)

(assert (=> b!6136331 (= e!3739901 (and tp!1714647 tp!1714644))))

(assert (=> b!6135185 (= tp!1714312 e!3739901)))

(declare-fun b!6136332 () Bool)

(declare-fun tp!1714646 () Bool)

(assert (=> b!6136332 (= e!3739901 tp!1714646)))

(declare-fun b!6136333 () Bool)

(declare-fun tp!1714648 () Bool)

(declare-fun tp!1714645 () Bool)

(assert (=> b!6136333 (= e!3739901 (and tp!1714648 tp!1714645))))

(declare-fun b!6136330 () Bool)

(assert (=> b!6136330 (= e!3739901 tp_is_empty!41411)))

(assert (= (and b!6135185 ((_ is ElementMatch!16079) (regTwo!32671 (regOne!32671 r!7292)))) b!6136330))

(assert (= (and b!6135185 ((_ is Concat!24924) (regTwo!32671 (regOne!32671 r!7292)))) b!6136331))

(assert (= (and b!6135185 ((_ is Star!16079) (regTwo!32671 (regOne!32671 r!7292)))) b!6136332))

(assert (= (and b!6135185 ((_ is Union!16079) (regTwo!32671 (regOne!32671 r!7292)))) b!6136333))

(declare-fun b!6136335 () Bool)

(declare-fun e!3739902 () Bool)

(declare-fun tp!1714652 () Bool)

(declare-fun tp!1714649 () Bool)

(assert (=> b!6136335 (= e!3739902 (and tp!1714652 tp!1714649))))

(assert (=> b!6135183 (= tp!1714314 e!3739902)))

(declare-fun b!6136336 () Bool)

(declare-fun tp!1714651 () Bool)

(assert (=> b!6136336 (= e!3739902 tp!1714651)))

(declare-fun b!6136337 () Bool)

(declare-fun tp!1714653 () Bool)

(declare-fun tp!1714650 () Bool)

(assert (=> b!6136337 (= e!3739902 (and tp!1714653 tp!1714650))))

(declare-fun b!6136334 () Bool)

(assert (=> b!6136334 (= e!3739902 tp_is_empty!41411)))

(assert (= (and b!6135183 ((_ is ElementMatch!16079) (regOne!32670 (regOne!32671 r!7292)))) b!6136334))

(assert (= (and b!6135183 ((_ is Concat!24924) (regOne!32670 (regOne!32671 r!7292)))) b!6136335))

(assert (= (and b!6135183 ((_ is Star!16079) (regOne!32670 (regOne!32671 r!7292)))) b!6136336))

(assert (= (and b!6135183 ((_ is Union!16079) (regOne!32670 (regOne!32671 r!7292)))) b!6136337))

(declare-fun b!6136339 () Bool)

(declare-fun e!3739903 () Bool)

(declare-fun tp!1714657 () Bool)

(declare-fun tp!1714654 () Bool)

(assert (=> b!6136339 (= e!3739903 (and tp!1714657 tp!1714654))))

(assert (=> b!6135183 (= tp!1714311 e!3739903)))

(declare-fun b!6136340 () Bool)

(declare-fun tp!1714656 () Bool)

(assert (=> b!6136340 (= e!3739903 tp!1714656)))

(declare-fun b!6136341 () Bool)

(declare-fun tp!1714658 () Bool)

(declare-fun tp!1714655 () Bool)

(assert (=> b!6136341 (= e!3739903 (and tp!1714658 tp!1714655))))

(declare-fun b!6136338 () Bool)

(assert (=> b!6136338 (= e!3739903 tp_is_empty!41411)))

(assert (= (and b!6135183 ((_ is ElementMatch!16079) (regTwo!32670 (regOne!32671 r!7292)))) b!6136338))

(assert (= (and b!6135183 ((_ is Concat!24924) (regTwo!32670 (regOne!32671 r!7292)))) b!6136339))

(assert (= (and b!6135183 ((_ is Star!16079) (regTwo!32670 (regOne!32671 r!7292)))) b!6136340))

(assert (= (and b!6135183 ((_ is Union!16079) (regTwo!32670 (regOne!32671 r!7292)))) b!6136341))

(declare-fun b!6136343 () Bool)

(declare-fun e!3739904 () Bool)

(declare-fun tp!1714662 () Bool)

(declare-fun tp!1714659 () Bool)

(assert (=> b!6136343 (= e!3739904 (and tp!1714662 tp!1714659))))

(assert (=> b!6135184 (= tp!1714313 e!3739904)))

(declare-fun b!6136344 () Bool)

(declare-fun tp!1714661 () Bool)

(assert (=> b!6136344 (= e!3739904 tp!1714661)))

(declare-fun b!6136345 () Bool)

(declare-fun tp!1714663 () Bool)

(declare-fun tp!1714660 () Bool)

(assert (=> b!6136345 (= e!3739904 (and tp!1714663 tp!1714660))))

(declare-fun b!6136342 () Bool)

(assert (=> b!6136342 (= e!3739904 tp_is_empty!41411)))

(assert (= (and b!6135184 ((_ is ElementMatch!16079) (reg!16408 (regOne!32671 r!7292)))) b!6136342))

(assert (= (and b!6135184 ((_ is Concat!24924) (reg!16408 (regOne!32671 r!7292)))) b!6136343))

(assert (= (and b!6135184 ((_ is Star!16079) (reg!16408 (regOne!32671 r!7292)))) b!6136344))

(assert (= (and b!6135184 ((_ is Union!16079) (reg!16408 (regOne!32671 r!7292)))) b!6136345))

(declare-fun b!6136347 () Bool)

(declare-fun e!3739905 () Bool)

(declare-fun tp!1714667 () Bool)

(declare-fun tp!1714664 () Bool)

(assert (=> b!6136347 (= e!3739905 (and tp!1714667 tp!1714664))))

(assert (=> b!6135211 (= tp!1714340 e!3739905)))

(declare-fun b!6136348 () Bool)

(declare-fun tp!1714666 () Bool)

(assert (=> b!6136348 (= e!3739905 tp!1714666)))

(declare-fun b!6136349 () Bool)

(declare-fun tp!1714668 () Bool)

(declare-fun tp!1714665 () Bool)

(assert (=> b!6136349 (= e!3739905 (and tp!1714668 tp!1714665))))

(declare-fun b!6136346 () Bool)

(assert (=> b!6136346 (= e!3739905 tp_is_empty!41411)))

(assert (= (and b!6135211 ((_ is ElementMatch!16079) (reg!16408 (regOne!32670 r!7292)))) b!6136346))

(assert (= (and b!6135211 ((_ is Concat!24924) (reg!16408 (regOne!32670 r!7292)))) b!6136347))

(assert (= (and b!6135211 ((_ is Star!16079) (reg!16408 (regOne!32670 r!7292)))) b!6136348))

(assert (= (and b!6135211 ((_ is Union!16079) (reg!16408 (regOne!32670 r!7292)))) b!6136349))

(declare-fun b!6136351 () Bool)

(declare-fun e!3739906 () Bool)

(declare-fun tp!1714672 () Bool)

(declare-fun tp!1714669 () Bool)

(assert (=> b!6136351 (= e!3739906 (and tp!1714672 tp!1714669))))

(assert (=> b!6135212 (= tp!1714342 e!3739906)))

(declare-fun b!6136352 () Bool)

(declare-fun tp!1714671 () Bool)

(assert (=> b!6136352 (= e!3739906 tp!1714671)))

(declare-fun b!6136353 () Bool)

(declare-fun tp!1714673 () Bool)

(declare-fun tp!1714670 () Bool)

(assert (=> b!6136353 (= e!3739906 (and tp!1714673 tp!1714670))))

(declare-fun b!6136350 () Bool)

(assert (=> b!6136350 (= e!3739906 tp_is_empty!41411)))

(assert (= (and b!6135212 ((_ is ElementMatch!16079) (regOne!32671 (regOne!32670 r!7292)))) b!6136350))

(assert (= (and b!6135212 ((_ is Concat!24924) (regOne!32671 (regOne!32670 r!7292)))) b!6136351))

(assert (= (and b!6135212 ((_ is Star!16079) (regOne!32671 (regOne!32670 r!7292)))) b!6136352))

(assert (= (and b!6135212 ((_ is Union!16079) (regOne!32671 (regOne!32670 r!7292)))) b!6136353))

(declare-fun b!6136355 () Bool)

(declare-fun e!3739907 () Bool)

(declare-fun tp!1714677 () Bool)

(declare-fun tp!1714674 () Bool)

(assert (=> b!6136355 (= e!3739907 (and tp!1714677 tp!1714674))))

(assert (=> b!6135212 (= tp!1714339 e!3739907)))

(declare-fun b!6136356 () Bool)

(declare-fun tp!1714676 () Bool)

(assert (=> b!6136356 (= e!3739907 tp!1714676)))

(declare-fun b!6136357 () Bool)

(declare-fun tp!1714678 () Bool)

(declare-fun tp!1714675 () Bool)

(assert (=> b!6136357 (= e!3739907 (and tp!1714678 tp!1714675))))

(declare-fun b!6136354 () Bool)

(assert (=> b!6136354 (= e!3739907 tp_is_empty!41411)))

(assert (= (and b!6135212 ((_ is ElementMatch!16079) (regTwo!32671 (regOne!32670 r!7292)))) b!6136354))

(assert (= (and b!6135212 ((_ is Concat!24924) (regTwo!32671 (regOne!32670 r!7292)))) b!6136355))

(assert (= (and b!6135212 ((_ is Star!16079) (regTwo!32671 (regOne!32670 r!7292)))) b!6136356))

(assert (= (and b!6135212 ((_ is Union!16079) (regTwo!32671 (regOne!32670 r!7292)))) b!6136357))

(declare-fun b_lambda!233555 () Bool)

(assert (= b_lambda!233549 (or d!1922049 b_lambda!233555)))

(declare-fun bs!1521877 () Bool)

(declare-fun d!1922587 () Bool)

(assert (= bs!1521877 (and d!1922587 d!1922049)))

(assert (=> bs!1521877 (= (dynLambda!25380 lambda!334292 (h!70860 (exprs!5963 (h!70862 zl!343)))) (validRegex!7815 (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(declare-fun m!6978726 () Bool)

(assert (=> bs!1521877 m!6978726))

(assert (=> b!6136073 d!1922587))

(declare-fun b_lambda!233557 () Bool)

(assert (= b_lambda!233553 (or d!1922059 b_lambda!233557)))

(declare-fun bs!1521878 () Bool)

(declare-fun d!1922589 () Bool)

(assert (= bs!1521878 (and d!1922589 d!1922059)))

(assert (=> bs!1521878 (= (dynLambda!25380 lambda!334293 (h!70860 (exprs!5963 lt!2332353))) (validRegex!7815 (h!70860 (exprs!5963 lt!2332353))))))

(declare-fun m!6978728 () Bool)

(assert (=> bs!1521878 m!6978728))

(assert (=> b!6136237 d!1922589))

(declare-fun b_lambda!233559 () Bool)

(assert (= b_lambda!233547 (or d!1922103 b_lambda!233559)))

(declare-fun bs!1521879 () Bool)

(declare-fun d!1922591 () Bool)

(assert (= bs!1521879 (and d!1922591 d!1922103)))

(assert (=> bs!1521879 (= (dynLambda!25380 lambda!334309 (h!70860 lt!2332442)) (validRegex!7815 (h!70860 lt!2332442)))))

(declare-fun m!6978730 () Bool)

(assert (=> bs!1521879 m!6978730))

(assert (=> b!6136060 d!1922591))

(declare-fun b_lambda!233561 () Bool)

(assert (= b_lambda!233545 (or b!6134439 b_lambda!233561)))

(assert (=> d!1922491 d!1922117))

(declare-fun b_lambda!233563 () Bool)

(assert (= b_lambda!233543 (or d!1922083 b_lambda!233563)))

(declare-fun bs!1521880 () Bool)

(declare-fun d!1922593 () Bool)

(assert (= bs!1521880 (and d!1922593 d!1922083)))

(assert (=> bs!1521880 (= (dynLambda!25380 lambda!334294 (h!70860 (exprs!5963 setElem!41476))) (validRegex!7815 (h!70860 (exprs!5963 setElem!41476))))))

(declare-fun m!6978732 () Bool)

(assert (=> bs!1521880 m!6978732))

(assert (=> b!6135892 d!1922593))

(declare-fun b_lambda!233565 () Bool)

(assert (= b_lambda!233551 (or d!1922047 b_lambda!233565)))

(declare-fun bs!1521881 () Bool)

(declare-fun d!1922595 () Bool)

(assert (= bs!1521881 (and d!1922595 d!1922047)))

(assert (=> bs!1521881 (= (dynLambda!25380 lambda!334289 (h!70860 (exprs!5963 (h!70862 zl!343)))) (validRegex!7815 (h!70860 (exprs!5963 (h!70862 zl!343)))))))

(assert (=> bs!1521881 m!6978726))

(assert (=> b!6136119 d!1922595))

(declare-fun b_lambda!233567 () Bool)

(assert (= b_lambda!233541 (or d!1922101 b_lambda!233567)))

(declare-fun bs!1521882 () Bool)

(declare-fun d!1922597 () Bool)

(assert (= bs!1521882 (and d!1922597 d!1922101)))

(assert (=> bs!1521882 (= (dynLambda!25380 lambda!334306 (h!70860 (unfocusZipperList!1500 zl!343))) (validRegex!7815 (h!70860 (unfocusZipperList!1500 zl!343))))))

(declare-fun m!6978734 () Bool)

(assert (=> bs!1521882 m!6978734))

(assert (=> b!6135855 d!1922597))

(check-sat (not b!6136246) (not b!6135951) (not b!6135825) (not b!6135891) (not b!6136329) (not b!6136335) (not b!6136026) (not d!1922505) (not bm!509189) (not bm!509292) (not d!1922551) (not b!6136299) (not bm!509273) (not bs!1521880) (not b!6136002) (not b!6136234) (not bm!509212) (not d!1922449) (not bm!509218) (not d!1922537) (not bm!509285) (not b!6136316) (not b!6136348) (not b!6136218) (not b!6136253) (not d!1922397) (not bm!509267) (not b!6136333) (not bs!1521881) (not bm!509294) (not d!1922415) (not b!6136097) (not b!6135889) (not bm!509237) (not b!6136226) (not bm!509202) (not b!6136036) (not b!6135797) (not b!6135939) (not b!6136014) (not b!6136351) (not d!1922463) (not bm!509191) (not d!1922555) (not b!6136214) (not bm!509233) (not b!6135990) (not b!6136222) (not bm!509240) (not d!1922385) (not b!6136259) (not b!6136010) (not b!6136321) (not bm!509254) (not b!6135832) (not b!6136004) (not b!6135906) (not b!6136336) (not bm!509260) (not bm!509277) (not d!1922481) (not b!6135867) (not b!6136289) (not d!1922557) (not bm!509227) (not b!6136221) (not b!6135909) tp_is_empty!41411 (not b!6136265) (not bm!509262) (not d!1922513) (not b!6136160) (not d!1922383) (not bm!509263) (not b!6136076) (not d!1922565) (not b!6136331) (not b!6136279) (not b!6136022) (not b!6135869) (not bs!1521877) (not b!6136324) (not b!6136238) (not b!6135943) (not b!6136293) (not b!6136345) (not b!6136309) (not b!6136300) (not b!6136337) (not d!1922369) (not b!6135987) (not d!1922547) (not b!6135831) (not b!6136275) (not b!6135830) (not b!6136127) (not d!1922413) (not b!6136181) (not b!6136257) (not b_lambda!233561) (not b!6136288) (not setNonEmpty!41489) (not b!6136245) (not d!1922451) (not bm!509190) (not bm!509196) (not b!6135874) (not b!6135835) (not b!6136261) (not d!1922527) (not bs!1521879) (not b!6135833) (not b!6136317) (not d!1922495) (not b_lambda!233567) (not d!1922387) (not bm!509297) (not b!6136251) (not b!6135838) (not b!6135941) (not b!6135821) (not bm!509241) (not bm!509216) (not bm!509256) (not b!6136349) (not d!1922427) (not b!6136313) (not b!6135839) (not b!6136078) (not bs!1521882) (not b!6135803) (not b!6135984) (not bm!509281) (not b!6136292) (not b!6135834) (not d!1922531) (not d!1922429) (not b_lambda!233559) (not d!1922579) (not bm!509288) (not b!6136006) (not b!6136296) (not bm!509205) (not bm!509257) (not d!1922367) (not b!6136281) (not b_lambda!233555) (not bm!509206) (not setNonEmpty!41490) (not b!6136341) (not b!6136120) (not d!1922381) (not b!6136357) (not b!6136066) (not d!1922461) (not b!6136266) (not b_lambda!233511) (not b!6135866) (not b!6136356) (not b!6136021) (not b!6136200) (not b!6136102) (not d!1922467) (not bm!509290) (not b!6136272) (not b!6136121) (not b!6135836) (not d!1922465) (not b!6136210) (not b!6135792) (not b!6136109) (not b!6136128) (not b!6135911) (not b!6136284) (not b!6136249) (not bm!509295) (not b!6136135) (not b!6135955) (not bm!509231) (not d!1922491) (not b!6136271) (not bm!509258) (not d!1922379) (not b!6136018) (not bm!509242) (not b!6136347) (not d!1922421) (not d!1922453) (not b!6135988) (not d!1922477) (not b!6136283) (not b!6136315) (not b!6136260) (not b!6136194) (not b!6136301) (not bm!509279) (not b!6136327) (not b!6136287) (not b!6136339) (not b!6136136) (not b!6135947) (not d!1922475) (not b!6136277) (not bm!509246) (not b!6136256) (not b!6136009) (not b!6136074) (not b!6136241) (not d!1922533) (not b!6136325) (not b!6136355) (not bm!509287) (not bm!509283) (not bm!509275) (not b!6136340) (not b!6136307) (not b!6136255) (not d!1922459) (not d!1922399) (not b!6136343) (not b!6136304) (not b!6136267) (not b!6136344) (not b!6136323) (not d!1922371) (not b!6136308) (not b!6135927) (not d!1922517) (not b!6135954) (not b!6135823) (not b!6136280) (not b!6136305) (not b!6135890) (not b!6136319) (not bm!509197) (not bm!509261) (not b!6135820) (not d!1922473) (not b!6135859) (not d!1922437) (not b!6136193) (not d!1922455) (not b!6136244) (not b!6135827) (not bm!509194) (not b!6136270) (not b!6135940) (not bm!509248) (not b!6136223) (not b!6135893) (not b!6135908) (not b!6136185) (not bm!509244) (not b!6135894) (not b!6136252) (not b!6136000) (not bm!509204) (not b!6136061) (not b!6135905) (not b!6136250) (not bm!509235) (not b_lambda!233557) (not b!6136303) (not b!6136090) (not d!1922585) (not b!6136235) (not b!6135907) (not b!6135942) (not b!6136248) (not b!6135826) (not b!6136320) (not b!6135817) (not d!1922567) (not b!6135956) (not bm!509208) (not bm!509250) (not b!6136295) (not b!6136262) (not d!1922365) (not b!6136001) (not b!6136062) (not b!6136311) (not bm!509238) (not d!1922403) (not b!6136274) (not bm!509229) (not b!6136332) (not b!6135898) (not b!6136050) (not b!6136312) (not b!6136291) (not b!6136242) (not b!6135804) (not bm!509200) (not b!6135916) (not d!1922363) (not b!6136352) (not d!1922487) (not bm!509193) (not bs!1521878) (not bm!509252) (not bm!509265) (not d!1922409) (not b!6136285) (not d!1922515) (not b_lambda!233565) (not b!6135913) (not b!6136189) (not b!6136297) (not b!6136276) (not b!6136263) (not bm!509214) (not b_lambda!233563) (not b!6135816) (not b!6136171) (not bm!509210) (not b!6136192) (not bm!509198) (not b!6136269) (not d!1922575) (not b!6136353) (not d!1922553) (not b!6136328) (not d!1922389) (not bm!509274) (not b!6136137) (not b!6136039) (not b!6136023) (not b!6136122) (not b!6135844) (not b!6136005) (not b!6135871) (not b!6135856) (not b!6135902) (not b!6136034))
(check-sat)
