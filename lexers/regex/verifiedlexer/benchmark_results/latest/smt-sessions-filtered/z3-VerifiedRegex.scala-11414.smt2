; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!612314 () Bool)

(assert start!612314)

(declare-fun b!6130355 () Bool)

(assert (=> b!6130355 true))

(assert (=> b!6130355 true))

(declare-fun lambda!333954 () Int)

(declare-fun lambda!333953 () Int)

(assert (=> b!6130355 (not (= lambda!333954 lambda!333953))))

(assert (=> b!6130355 true))

(assert (=> b!6130355 true))

(declare-fun b!6130360 () Bool)

(assert (=> b!6130360 true))

(declare-fun tp!1713249 () Bool)

(declare-fun e!3736587 () Bool)

(declare-fun setRes!41436 () Bool)

(declare-fun setNonEmpty!41436 () Bool)

(declare-datatypes ((C!32420 0))(
  ( (C!32421 (val!25912 Int)) )
))
(declare-datatypes ((Regex!16075 0))(
  ( (ElementMatch!16075 (c!1102031 C!32420)) (Concat!24920 (regOne!32662 Regex!16075) (regTwo!32662 Regex!16075)) (EmptyExpr!16075) (Star!16075 (reg!16404 Regex!16075)) (EmptyLang!16075) (Union!16075 (regOne!32663 Regex!16075) (regTwo!32663 Regex!16075)) )
))
(declare-datatypes ((List!64524 0))(
  ( (Nil!64400) (Cons!64400 (h!70848 Regex!16075) (t!377993 List!64524)) )
))
(declare-datatypes ((Context!10918 0))(
  ( (Context!10919 (exprs!5959 List!64524)) )
))
(declare-fun setElem!41436 () Context!10918)

(declare-fun inv!83434 (Context!10918) Bool)

(assert (=> setNonEmpty!41436 (= setRes!41436 (and tp!1713249 (inv!83434 setElem!41436) e!3736587))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10918))

(declare-fun setRest!41436 () (InoxSet Context!10918))

(assert (=> setNonEmpty!41436 (= z!1189 ((_ map or) (store ((as const (Array Context!10918 Bool)) false) setElem!41436 true) setRest!41436))))

(declare-fun b!6130343 () Bool)

(declare-fun e!3736590 () Bool)

(declare-fun tp!1713247 () Bool)

(assert (=> b!6130343 (= e!3736590 tp!1713247)))

(declare-fun b!6130344 () Bool)

(declare-fun e!3736585 () Bool)

(declare-fun tp!1713242 () Bool)

(declare-fun tp!1713245 () Bool)

(assert (=> b!6130344 (= e!3736585 (and tp!1713242 tp!1713245))))

(declare-fun b!6130345 () Bool)

(declare-fun e!3736581 () Bool)

(declare-fun e!3736582 () Bool)

(assert (=> b!6130345 (= e!3736581 e!3736582)))

(declare-fun res!2540834 () Bool)

(assert (=> b!6130345 (=> res!2540834 e!3736582)))

(declare-fun e!3736591 () Bool)

(assert (=> b!6130345 (= res!2540834 e!3736591)))

(declare-fun res!2540826 () Bool)

(assert (=> b!6130345 (=> (not res!2540826) (not e!3736591))))

(declare-datatypes ((List!64525 0))(
  ( (Nil!64401) (Cons!64401 (h!70849 C!32420) (t!377994 List!64525)) )
))
(declare-fun s!2326 () List!64525)

(declare-fun lt!2331880 () Bool)

(declare-fun lt!2331875 () (InoxSet Context!10918))

(declare-fun matchZipper!2087 ((InoxSet Context!10918) List!64525) Bool)

(assert (=> b!6130345 (= res!2540826 (not (= (matchZipper!2087 lt!2331875 (t!377994 s!2326)) lt!2331880)))))

(declare-fun lt!2331873 () (InoxSet Context!10918))

(declare-fun e!3736584 () Bool)

(assert (=> b!6130345 (= (matchZipper!2087 lt!2331873 (t!377994 s!2326)) e!3736584)))

(declare-fun res!2540822 () Bool)

(assert (=> b!6130345 (=> res!2540822 e!3736584)))

(assert (=> b!6130345 (= res!2540822 lt!2331880)))

(declare-fun lt!2331871 () (InoxSet Context!10918))

(assert (=> b!6130345 (= lt!2331880 (matchZipper!2087 lt!2331871 (t!377994 s!2326)))))

(declare-datatypes ((Unit!157455 0))(
  ( (Unit!157456) )
))
(declare-fun lt!2331876 () Unit!157455)

(declare-fun lt!2331884 () (InoxSet Context!10918))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!906 ((InoxSet Context!10918) (InoxSet Context!10918) List!64525) Unit!157455)

(assert (=> b!6130345 (= lt!2331876 (lemmaZipperConcatMatchesSameAsBothZippers!906 lt!2331871 lt!2331884 (t!377994 s!2326)))))

(declare-fun res!2540828 () Bool)

(declare-fun e!3736583 () Bool)

(assert (=> start!612314 (=> (not res!2540828) (not e!3736583))))

(declare-fun r!7292 () Regex!16075)

(declare-fun validRegex!7811 (Regex!16075) Bool)

(assert (=> start!612314 (= res!2540828 (validRegex!7811 r!7292))))

(assert (=> start!612314 e!3736583))

(assert (=> start!612314 e!3736585))

(declare-fun condSetEmpty!41436 () Bool)

(assert (=> start!612314 (= condSetEmpty!41436 (= z!1189 ((as const (Array Context!10918 Bool)) false)))))

(assert (=> start!612314 setRes!41436))

(declare-fun e!3736594 () Bool)

(assert (=> start!612314 e!3736594))

(declare-fun e!3736588 () Bool)

(assert (=> start!612314 e!3736588))

(declare-fun tp!1713241 () Bool)

(declare-fun b!6130346 () Bool)

(declare-datatypes ((List!64526 0))(
  ( (Nil!64402) (Cons!64402 (h!70850 Context!10918) (t!377995 List!64526)) )
))
(declare-fun zl!343 () List!64526)

(assert (=> b!6130346 (= e!3736594 (and (inv!83434 (h!70850 zl!343)) e!3736590 tp!1713241))))

(declare-fun b!6130347 () Bool)

(declare-fun res!2540823 () Bool)

(declare-fun e!3736586 () Bool)

(assert (=> b!6130347 (=> res!2540823 e!3736586)))

(declare-fun generalisedUnion!1919 (List!64524) Regex!16075)

(declare-fun unfocusZipperList!1496 (List!64526) List!64524)

(assert (=> b!6130347 (= res!2540823 (not (= r!7292 (generalisedUnion!1919 (unfocusZipperList!1496 zl!343)))))))

(declare-fun b!6130348 () Bool)

(declare-fun tp!1713248 () Bool)

(declare-fun tp!1713244 () Bool)

(assert (=> b!6130348 (= e!3736585 (and tp!1713248 tp!1713244))))

(declare-fun b!6130349 () Bool)

(declare-fun e!3736589 () Bool)

(assert (=> b!6130349 (= e!3736589 e!3736581)))

(declare-fun res!2540825 () Bool)

(assert (=> b!6130349 (=> res!2540825 e!3736581)))

(assert (=> b!6130349 (= res!2540825 (not (= lt!2331875 lt!2331873)))))

(assert (=> b!6130349 (= lt!2331873 ((_ map or) lt!2331871 lt!2331884))))

(declare-fun lt!2331882 () Context!10918)

(declare-fun derivationStepZipperDown!1323 (Regex!16075 Context!10918 C!32420) (InoxSet Context!10918))

(assert (=> b!6130349 (= lt!2331884 (derivationStepZipperDown!1323 (regTwo!32663 (regOne!32662 r!7292)) lt!2331882 (h!70849 s!2326)))))

(assert (=> b!6130349 (= lt!2331871 (derivationStepZipperDown!1323 (regOne!32663 (regOne!32662 r!7292)) lt!2331882 (h!70849 s!2326)))))

(declare-fun b!6130350 () Bool)

(declare-fun tp!1713246 () Bool)

(assert (=> b!6130350 (= e!3736587 tp!1713246)))

(declare-fun b!6130351 () Bool)

(declare-fun e!3736593 () Bool)

(declare-fun lt!2331874 () (InoxSet Context!10918))

(assert (=> b!6130351 (= e!3736593 (matchZipper!2087 lt!2331874 (t!377994 s!2326)))))

(declare-fun b!6130352 () Bool)

(declare-fun res!2540833 () Bool)

(assert (=> b!6130352 (=> (not res!2540833) (not e!3736583))))

(declare-fun toList!9859 ((InoxSet Context!10918)) List!64526)

(assert (=> b!6130352 (= res!2540833 (= (toList!9859 z!1189) zl!343))))

(declare-fun b!6130353 () Bool)

(declare-fun tp_is_empty!41403 () Bool)

(assert (=> b!6130353 (= e!3736585 tp_is_empty!41403)))

(declare-fun b!6130354 () Bool)

(declare-fun res!2540820 () Bool)

(declare-fun e!3736592 () Bool)

(assert (=> b!6130354 (=> res!2540820 e!3736592)))

(declare-fun isEmpty!36340 (List!64524) Bool)

(assert (=> b!6130354 (= res!2540820 (isEmpty!36340 (t!377993 (exprs!5959 (h!70850 zl!343)))))))

(assert (=> b!6130355 (= e!3736586 e!3736592)))

(declare-fun res!2540835 () Bool)

(assert (=> b!6130355 (=> res!2540835 e!3736592)))

(declare-fun lt!2331877 () Bool)

(declare-fun lt!2331872 () Bool)

(get-info :version)

(assert (=> b!6130355 (= res!2540835 (or (not (= lt!2331877 lt!2331872)) ((_ is Nil!64401) s!2326)))))

(declare-fun Exists!3145 (Int) Bool)

(assert (=> b!6130355 (= (Exists!3145 lambda!333953) (Exists!3145 lambda!333954))))

(declare-fun lt!2331868 () Unit!157455)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1682 (Regex!16075 Regex!16075 List!64525) Unit!157455)

(assert (=> b!6130355 (= lt!2331868 (lemmaExistCutMatchRandMatchRSpecEquivalent!1682 (regOne!32662 r!7292) (regTwo!32662 r!7292) s!2326))))

(assert (=> b!6130355 (= lt!2331872 (Exists!3145 lambda!333953))))

(declare-datatypes ((tuple2!66108 0))(
  ( (tuple2!66109 (_1!36357 List!64525) (_2!36357 List!64525)) )
))
(declare-datatypes ((Option!15966 0))(
  ( (None!15965) (Some!15965 (v!52104 tuple2!66108)) )
))
(declare-fun isDefined!12669 (Option!15966) Bool)

(declare-fun findConcatSeparation!2380 (Regex!16075 Regex!16075 List!64525 List!64525 List!64525) Option!15966)

(assert (=> b!6130355 (= lt!2331872 (isDefined!12669 (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) Nil!64401 s!2326 s!2326)))))

(declare-fun lt!2331879 () Unit!157455)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2144 (Regex!16075 Regex!16075 List!64525) Unit!157455)

(assert (=> b!6130355 (= lt!2331879 (lemmaFindConcatSeparationEquivalentToExists!2144 (regOne!32662 r!7292) (regTwo!32662 r!7292) s!2326))))

(declare-fun b!6130356 () Bool)

(assert (=> b!6130356 (= e!3736583 (not e!3736586))))

(declare-fun res!2540831 () Bool)

(assert (=> b!6130356 (=> res!2540831 e!3736586)))

(assert (=> b!6130356 (= res!2540831 (not ((_ is Cons!64402) zl!343)))))

(declare-fun matchRSpec!3176 (Regex!16075 List!64525) Bool)

(assert (=> b!6130356 (= lt!2331877 (matchRSpec!3176 r!7292 s!2326))))

(declare-fun matchR!8258 (Regex!16075 List!64525) Bool)

(assert (=> b!6130356 (= lt!2331877 (matchR!8258 r!7292 s!2326))))

(declare-fun lt!2331870 () Unit!157455)

(declare-fun mainMatchTheorem!3176 (Regex!16075 List!64525) Unit!157455)

(assert (=> b!6130356 (= lt!2331870 (mainMatchTheorem!3176 r!7292 s!2326))))

(declare-fun b!6130357 () Bool)

(declare-fun res!2540819 () Bool)

(assert (=> b!6130357 (=> res!2540819 e!3736586)))

(assert (=> b!6130357 (= res!2540819 (or ((_ is EmptyExpr!16075) r!7292) ((_ is EmptyLang!16075) r!7292) ((_ is ElementMatch!16075) r!7292) ((_ is Union!16075) r!7292) (not ((_ is Concat!24920) r!7292))))))

(declare-fun b!6130358 () Bool)

(declare-fun e!3736595 () Unit!157455)

(declare-fun Unit!157457 () Unit!157455)

(assert (=> b!6130358 (= e!3736595 Unit!157457)))

(declare-fun lt!2331883 () Unit!157455)

(assert (=> b!6130358 (= lt!2331883 (lemmaZipperConcatMatchesSameAsBothZippers!906 lt!2331875 lt!2331874 (t!377994 s!2326)))))

(declare-fun res!2540821 () Bool)

(assert (=> b!6130358 (= res!2540821 (matchZipper!2087 lt!2331875 (t!377994 s!2326)))))

(assert (=> b!6130358 (=> res!2540821 e!3736593)))

(assert (=> b!6130358 (= (matchZipper!2087 ((_ map or) lt!2331875 lt!2331874) (t!377994 s!2326)) e!3736593)))

(declare-fun b!6130359 () Bool)

(assert (=> b!6130359 (= e!3736584 (matchZipper!2087 lt!2331884 (t!377994 s!2326)))))

(assert (=> b!6130360 (= e!3736592 e!3736589)))

(declare-fun res!2540829 () Bool)

(assert (=> b!6130360 (=> res!2540829 e!3736589)))

(assert (=> b!6130360 (= res!2540829 (or (and ((_ is ElementMatch!16075) (regOne!32662 r!7292)) (= (c!1102031 (regOne!32662 r!7292)) (h!70849 s!2326))) (not ((_ is Union!16075) (regOne!32662 r!7292)))))))

(declare-fun lt!2331881 () Unit!157455)

(assert (=> b!6130360 (= lt!2331881 e!3736595)))

(declare-fun c!1102030 () Bool)

(declare-fun nullable!6068 (Regex!16075) Bool)

(assert (=> b!6130360 (= c!1102030 (nullable!6068 (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun lambda!333955 () Int)

(declare-fun flatMap!1580 ((InoxSet Context!10918) Int) (InoxSet Context!10918))

(declare-fun derivationStepZipperUp!1249 (Context!10918 C!32420) (InoxSet Context!10918))

(assert (=> b!6130360 (= (flatMap!1580 z!1189 lambda!333955) (derivationStepZipperUp!1249 (h!70850 zl!343) (h!70849 s!2326)))))

(declare-fun lt!2331869 () Unit!157455)

(declare-fun lemmaFlatMapOnSingletonSet!1106 ((InoxSet Context!10918) Context!10918 Int) Unit!157455)

(assert (=> b!6130360 (= lt!2331869 (lemmaFlatMapOnSingletonSet!1106 z!1189 (h!70850 zl!343) lambda!333955))))

(assert (=> b!6130360 (= lt!2331874 (derivationStepZipperUp!1249 lt!2331882 (h!70849 s!2326)))))

(assert (=> b!6130360 (= lt!2331875 (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (h!70850 zl!343))) lt!2331882 (h!70849 s!2326)))))

(assert (=> b!6130360 (= lt!2331882 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun lt!2331878 () (InoxSet Context!10918))

(assert (=> b!6130360 (= lt!2331878 (derivationStepZipperUp!1249 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))) (h!70849 s!2326)))))

(declare-fun b!6130361 () Bool)

(declare-fun res!2540824 () Bool)

(assert (=> b!6130361 (=> res!2540824 e!3736586)))

(assert (=> b!6130361 (= res!2540824 (not ((_ is Cons!64400) (exprs!5959 (h!70850 zl!343)))))))

(declare-fun setIsEmpty!41436 () Bool)

(assert (=> setIsEmpty!41436 setRes!41436))

(declare-fun b!6130362 () Bool)

(declare-fun tp!1713250 () Bool)

(assert (=> b!6130362 (= e!3736585 tp!1713250)))

(declare-fun b!6130363 () Bool)

(declare-fun res!2540830 () Bool)

(assert (=> b!6130363 (=> res!2540830 e!3736586)))

(declare-fun generalisedConcat!1672 (List!64524) Regex!16075)

(assert (=> b!6130363 (= res!2540830 (not (= r!7292 (generalisedConcat!1672 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun b!6130364 () Bool)

(declare-fun res!2540827 () Bool)

(assert (=> b!6130364 (=> (not res!2540827) (not e!3736583))))

(declare-fun unfocusZipper!1817 (List!64526) Regex!16075)

(assert (=> b!6130364 (= res!2540827 (= r!7292 (unfocusZipper!1817 zl!343)))))

(declare-fun b!6130365 () Bool)

(declare-fun res!2540832 () Bool)

(assert (=> b!6130365 (=> res!2540832 e!3736586)))

(declare-fun isEmpty!36341 (List!64526) Bool)

(assert (=> b!6130365 (= res!2540832 (not (isEmpty!36341 (t!377995 zl!343))))))

(declare-fun b!6130366 () Bool)

(declare-fun tp!1713243 () Bool)

(assert (=> b!6130366 (= e!3736588 (and tp_is_empty!41403 tp!1713243))))

(declare-fun b!6130367 () Bool)

(declare-fun Unit!157458 () Unit!157455)

(assert (=> b!6130367 (= e!3736595 Unit!157458)))

(declare-fun b!6130368 () Bool)

(assert (=> b!6130368 (= e!3736591 (not (matchZipper!2087 lt!2331884 (t!377994 s!2326))))))

(declare-fun b!6130369 () Bool)

(assert (=> b!6130369 (= e!3736582 (inv!83434 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))

(assert (= (and start!612314 res!2540828) b!6130352))

(assert (= (and b!6130352 res!2540833) b!6130364))

(assert (= (and b!6130364 res!2540827) b!6130356))

(assert (= (and b!6130356 (not res!2540831)) b!6130365))

(assert (= (and b!6130365 (not res!2540832)) b!6130363))

(assert (= (and b!6130363 (not res!2540830)) b!6130361))

(assert (= (and b!6130361 (not res!2540824)) b!6130347))

(assert (= (and b!6130347 (not res!2540823)) b!6130357))

(assert (= (and b!6130357 (not res!2540819)) b!6130355))

(assert (= (and b!6130355 (not res!2540835)) b!6130354))

(assert (= (and b!6130354 (not res!2540820)) b!6130360))

(assert (= (and b!6130360 c!1102030) b!6130358))

(assert (= (and b!6130360 (not c!1102030)) b!6130367))

(assert (= (and b!6130358 (not res!2540821)) b!6130351))

(assert (= (and b!6130360 (not res!2540829)) b!6130349))

(assert (= (and b!6130349 (not res!2540825)) b!6130345))

(assert (= (and b!6130345 (not res!2540822)) b!6130359))

(assert (= (and b!6130345 res!2540826) b!6130368))

(assert (= (and b!6130345 (not res!2540834)) b!6130369))

(assert (= (and start!612314 ((_ is ElementMatch!16075) r!7292)) b!6130353))

(assert (= (and start!612314 ((_ is Concat!24920) r!7292)) b!6130348))

(assert (= (and start!612314 ((_ is Star!16075) r!7292)) b!6130362))

(assert (= (and start!612314 ((_ is Union!16075) r!7292)) b!6130344))

(assert (= (and start!612314 condSetEmpty!41436) setIsEmpty!41436))

(assert (= (and start!612314 (not condSetEmpty!41436)) setNonEmpty!41436))

(assert (= setNonEmpty!41436 b!6130350))

(assert (= b!6130346 b!6130343))

(assert (= (and start!612314 ((_ is Cons!64402) zl!343)) b!6130346))

(assert (= (and start!612314 ((_ is Cons!64401) s!2326)) b!6130366))

(declare-fun m!6973982 () Bool)

(assert (=> start!612314 m!6973982))

(declare-fun m!6973984 () Bool)

(assert (=> b!6130354 m!6973984))

(declare-fun m!6973986 () Bool)

(assert (=> setNonEmpty!41436 m!6973986))

(declare-fun m!6973988 () Bool)

(assert (=> b!6130352 m!6973988))

(declare-fun m!6973990 () Bool)

(assert (=> b!6130365 m!6973990))

(declare-fun m!6973992 () Bool)

(assert (=> b!6130359 m!6973992))

(declare-fun m!6973994 () Bool)

(assert (=> b!6130346 m!6973994))

(declare-fun m!6973996 () Bool)

(assert (=> b!6130363 m!6973996))

(declare-fun m!6973998 () Bool)

(assert (=> b!6130360 m!6973998))

(declare-fun m!6974000 () Bool)

(assert (=> b!6130360 m!6974000))

(declare-fun m!6974002 () Bool)

(assert (=> b!6130360 m!6974002))

(declare-fun m!6974004 () Bool)

(assert (=> b!6130360 m!6974004))

(declare-fun m!6974006 () Bool)

(assert (=> b!6130360 m!6974006))

(declare-fun m!6974008 () Bool)

(assert (=> b!6130360 m!6974008))

(declare-fun m!6974010 () Bool)

(assert (=> b!6130360 m!6974010))

(declare-fun m!6974012 () Bool)

(assert (=> b!6130351 m!6974012))

(declare-fun m!6974014 () Bool)

(assert (=> b!6130345 m!6974014))

(declare-fun m!6974016 () Bool)

(assert (=> b!6130345 m!6974016))

(declare-fun m!6974018 () Bool)

(assert (=> b!6130345 m!6974018))

(declare-fun m!6974020 () Bool)

(assert (=> b!6130345 m!6974020))

(declare-fun m!6974022 () Bool)

(assert (=> b!6130347 m!6974022))

(assert (=> b!6130347 m!6974022))

(declare-fun m!6974024 () Bool)

(assert (=> b!6130347 m!6974024))

(declare-fun m!6974026 () Bool)

(assert (=> b!6130356 m!6974026))

(declare-fun m!6974028 () Bool)

(assert (=> b!6130356 m!6974028))

(declare-fun m!6974030 () Bool)

(assert (=> b!6130356 m!6974030))

(declare-fun m!6974032 () Bool)

(assert (=> b!6130349 m!6974032))

(declare-fun m!6974034 () Bool)

(assert (=> b!6130349 m!6974034))

(declare-fun m!6974036 () Bool)

(assert (=> b!6130369 m!6974036))

(assert (=> b!6130368 m!6973992))

(declare-fun m!6974038 () Bool)

(assert (=> b!6130364 m!6974038))

(declare-fun m!6974040 () Bool)

(assert (=> b!6130355 m!6974040))

(declare-fun m!6974042 () Bool)

(assert (=> b!6130355 m!6974042))

(declare-fun m!6974044 () Bool)

(assert (=> b!6130355 m!6974044))

(declare-fun m!6974046 () Bool)

(assert (=> b!6130355 m!6974046))

(assert (=> b!6130355 m!6974046))

(declare-fun m!6974048 () Bool)

(assert (=> b!6130355 m!6974048))

(assert (=> b!6130355 m!6974042))

(declare-fun m!6974050 () Bool)

(assert (=> b!6130355 m!6974050))

(declare-fun m!6974052 () Bool)

(assert (=> b!6130358 m!6974052))

(assert (=> b!6130358 m!6974014))

(declare-fun m!6974054 () Bool)

(assert (=> b!6130358 m!6974054))

(check-sat (not b!6130358) (not b!6130343) (not b!6130368) (not b!6130352) (not b!6130356) (not b!6130364) (not b!6130346) (not b!6130347) (not b!6130365) (not b!6130359) tp_is_empty!41403 (not b!6130344) (not b!6130348) (not b!6130349) (not b!6130350) (not b!6130363) (not setNonEmpty!41436) (not b!6130362) (not start!612314) (not b!6130354) (not b!6130351) (not b!6130345) (not b!6130355) (not b!6130369) (not b!6130366) (not b!6130360))
(check-sat)
(get-model)

(declare-fun d!1920745 () Bool)

(declare-fun e!3736701 () Bool)

(assert (=> d!1920745 e!3736701))

(declare-fun res!2540904 () Bool)

(assert (=> d!1920745 (=> (not res!2540904) (not e!3736701))))

(declare-fun lt!2331893 () List!64526)

(declare-fun noDuplicate!1921 (List!64526) Bool)

(assert (=> d!1920745 (= res!2540904 (noDuplicate!1921 lt!2331893))))

(declare-fun choose!45545 ((InoxSet Context!10918)) List!64526)

(assert (=> d!1920745 (= lt!2331893 (choose!45545 z!1189))))

(assert (=> d!1920745 (= (toList!9859 z!1189) lt!2331893)))

(declare-fun b!6130554 () Bool)

(declare-fun content!11972 (List!64526) (InoxSet Context!10918))

(assert (=> b!6130554 (= e!3736701 (= (content!11972 lt!2331893) z!1189))))

(assert (= (and d!1920745 res!2540904) b!6130554))

(declare-fun m!6974130 () Bool)

(assert (=> d!1920745 m!6974130))

(declare-fun m!6974132 () Bool)

(assert (=> d!1920745 m!6974132))

(declare-fun m!6974134 () Bool)

(assert (=> b!6130554 m!6974134))

(assert (=> b!6130352 d!1920745))

(declare-fun d!1920749 () Bool)

(declare-fun c!1102089 () Bool)

(declare-fun isEmpty!36343 (List!64525) Bool)

(assert (=> d!1920749 (= c!1102089 (isEmpty!36343 (t!377994 s!2326)))))

(declare-fun e!3736704 () Bool)

(assert (=> d!1920749 (= (matchZipper!2087 lt!2331874 (t!377994 s!2326)) e!3736704)))

(declare-fun b!6130559 () Bool)

(declare-fun nullableZipper!1856 ((InoxSet Context!10918)) Bool)

(assert (=> b!6130559 (= e!3736704 (nullableZipper!1856 lt!2331874))))

(declare-fun b!6130560 () Bool)

(declare-fun derivationStepZipper!2048 ((InoxSet Context!10918) C!32420) (InoxSet Context!10918))

(declare-fun head!12670 (List!64525) C!32420)

(declare-fun tail!11755 (List!64525) List!64525)

(assert (=> b!6130560 (= e!3736704 (matchZipper!2087 (derivationStepZipper!2048 lt!2331874 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))))))

(assert (= (and d!1920749 c!1102089) b!6130559))

(assert (= (and d!1920749 (not c!1102089)) b!6130560))

(declare-fun m!6974138 () Bool)

(assert (=> d!1920749 m!6974138))

(declare-fun m!6974140 () Bool)

(assert (=> b!6130559 m!6974140))

(declare-fun m!6974142 () Bool)

(assert (=> b!6130560 m!6974142))

(assert (=> b!6130560 m!6974142))

(declare-fun m!6974144 () Bool)

(assert (=> b!6130560 m!6974144))

(declare-fun m!6974146 () Bool)

(assert (=> b!6130560 m!6974146))

(assert (=> b!6130560 m!6974144))

(assert (=> b!6130560 m!6974146))

(declare-fun m!6974148 () Bool)

(assert (=> b!6130560 m!6974148))

(assert (=> b!6130351 d!1920749))

(declare-fun b!6130591 () Bool)

(declare-fun e!3736724 () Bool)

(declare-fun lt!2331905 () Regex!16075)

(declare-fun head!12671 (List!64524) Regex!16075)

(assert (=> b!6130591 (= e!3736724 (= lt!2331905 (head!12671 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun d!1920753 () Bool)

(declare-fun e!3736723 () Bool)

(assert (=> d!1920753 e!3736723))

(declare-fun res!2540912 () Bool)

(assert (=> d!1920753 (=> (not res!2540912) (not e!3736723))))

(assert (=> d!1920753 (= res!2540912 (validRegex!7811 lt!2331905))))

(declare-fun e!3736725 () Regex!16075)

(assert (=> d!1920753 (= lt!2331905 e!3736725)))

(declare-fun c!1102103 () Bool)

(declare-fun e!3736728 () Bool)

(assert (=> d!1920753 (= c!1102103 e!3736728)))

(declare-fun res!2540911 () Bool)

(assert (=> d!1920753 (=> (not res!2540911) (not e!3736728))))

(assert (=> d!1920753 (= res!2540911 ((_ is Cons!64400) (exprs!5959 (h!70850 zl!343))))))

(declare-fun lambda!333964 () Int)

(declare-fun forall!15195 (List!64524 Int) Bool)

(assert (=> d!1920753 (forall!15195 (exprs!5959 (h!70850 zl!343)) lambda!333964)))

(assert (=> d!1920753 (= (generalisedConcat!1672 (exprs!5959 (h!70850 zl!343))) lt!2331905)))

(declare-fun b!6130592 () Bool)

(assert (=> b!6130592 (= e!3736728 (isEmpty!36340 (t!377993 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun b!6130593 () Bool)

(assert (=> b!6130593 (= e!3736725 (h!70848 (exprs!5959 (h!70850 zl!343))))))

(declare-fun b!6130594 () Bool)

(declare-fun e!3736727 () Regex!16075)

(assert (=> b!6130594 (= e!3736727 EmptyExpr!16075)))

(declare-fun b!6130595 () Bool)

(assert (=> b!6130595 (= e!3736727 (Concat!24920 (h!70848 (exprs!5959 (h!70850 zl!343))) (generalisedConcat!1672 (t!377993 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun b!6130596 () Bool)

(declare-fun isConcat!1014 (Regex!16075) Bool)

(assert (=> b!6130596 (= e!3736724 (isConcat!1014 lt!2331905))))

(declare-fun b!6130597 () Bool)

(declare-fun e!3736726 () Bool)

(assert (=> b!6130597 (= e!3736726 e!3736724)))

(declare-fun c!1102104 () Bool)

(declare-fun tail!11756 (List!64524) List!64524)

(assert (=> b!6130597 (= c!1102104 (isEmpty!36340 (tail!11756 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun b!6130598 () Bool)

(declare-fun isEmptyExpr!1491 (Regex!16075) Bool)

(assert (=> b!6130598 (= e!3736726 (isEmptyExpr!1491 lt!2331905))))

(declare-fun b!6130599 () Bool)

(assert (=> b!6130599 (= e!3736723 e!3736726)))

(declare-fun c!1102102 () Bool)

(assert (=> b!6130599 (= c!1102102 (isEmpty!36340 (exprs!5959 (h!70850 zl!343))))))

(declare-fun b!6130600 () Bool)

(assert (=> b!6130600 (= e!3736725 e!3736727)))

(declare-fun c!1102105 () Bool)

(assert (=> b!6130600 (= c!1102105 ((_ is Cons!64400) (exprs!5959 (h!70850 zl!343))))))

(assert (= (and d!1920753 res!2540911) b!6130592))

(assert (= (and d!1920753 c!1102103) b!6130593))

(assert (= (and d!1920753 (not c!1102103)) b!6130600))

(assert (= (and b!6130600 c!1102105) b!6130595))

(assert (= (and b!6130600 (not c!1102105)) b!6130594))

(assert (= (and d!1920753 res!2540912) b!6130599))

(assert (= (and b!6130599 c!1102102) b!6130598))

(assert (= (and b!6130599 (not c!1102102)) b!6130597))

(assert (= (and b!6130597 c!1102104) b!6130591))

(assert (= (and b!6130597 (not c!1102104)) b!6130596))

(declare-fun m!6974150 () Bool)

(assert (=> b!6130597 m!6974150))

(assert (=> b!6130597 m!6974150))

(declare-fun m!6974152 () Bool)

(assert (=> b!6130597 m!6974152))

(declare-fun m!6974154 () Bool)

(assert (=> b!6130595 m!6974154))

(declare-fun m!6974156 () Bool)

(assert (=> d!1920753 m!6974156))

(declare-fun m!6974158 () Bool)

(assert (=> d!1920753 m!6974158))

(assert (=> b!6130592 m!6973984))

(declare-fun m!6974160 () Bool)

(assert (=> b!6130599 m!6974160))

(declare-fun m!6974162 () Bool)

(assert (=> b!6130591 m!6974162))

(declare-fun m!6974164 () Bool)

(assert (=> b!6130598 m!6974164))

(declare-fun m!6974166 () Bool)

(assert (=> b!6130596 m!6974166))

(assert (=> b!6130363 d!1920753))

(declare-fun bs!1520702 () Bool)

(declare-fun d!1920755 () Bool)

(assert (= bs!1520702 (and d!1920755 d!1920753)))

(declare-fun lambda!333967 () Int)

(assert (=> bs!1520702 (= lambda!333967 lambda!333964)))

(assert (=> d!1920755 (= (inv!83434 setElem!41436) (forall!15195 (exprs!5959 setElem!41436) lambda!333967))))

(declare-fun bs!1520703 () Bool)

(assert (= bs!1520703 d!1920755))

(declare-fun m!6974168 () Bool)

(assert (=> bs!1520703 m!6974168))

(assert (=> setNonEmpty!41436 d!1920755))

(declare-fun d!1920757 () Bool)

(declare-fun lt!2331911 () Regex!16075)

(assert (=> d!1920757 (validRegex!7811 lt!2331911)))

(assert (=> d!1920757 (= lt!2331911 (generalisedUnion!1919 (unfocusZipperList!1496 zl!343)))))

(assert (=> d!1920757 (= (unfocusZipper!1817 zl!343) lt!2331911)))

(declare-fun bs!1520704 () Bool)

(assert (= bs!1520704 d!1920757))

(declare-fun m!6974170 () Bool)

(assert (=> bs!1520704 m!6974170))

(assert (=> bs!1520704 m!6974022))

(assert (=> bs!1520704 m!6974022))

(assert (=> bs!1520704 m!6974024))

(assert (=> b!6130364 d!1920757))

(declare-fun b!6130636 () Bool)

(declare-fun res!2540937 () Bool)

(declare-fun e!3736753 () Bool)

(assert (=> b!6130636 (=> (not res!2540937) (not e!3736753))))

(declare-fun call!508406 () Bool)

(assert (=> b!6130636 (= res!2540937 call!508406)))

(declare-fun e!3736758 () Bool)

(assert (=> b!6130636 (= e!3736758 e!3736753)))

(declare-fun bm!508399 () Bool)

(declare-fun call!508405 () Bool)

(assert (=> bm!508399 (= call!508406 call!508405)))

(declare-fun d!1920759 () Bool)

(declare-fun res!2540940 () Bool)

(declare-fun e!3736757 () Bool)

(assert (=> d!1920759 (=> res!2540940 e!3736757)))

(assert (=> d!1920759 (= res!2540940 ((_ is ElementMatch!16075) r!7292))))

(assert (=> d!1920759 (= (validRegex!7811 r!7292) e!3736757)))

(declare-fun bm!508400 () Bool)

(declare-fun call!508404 () Bool)

(declare-fun c!1102113 () Bool)

(assert (=> bm!508400 (= call!508404 (validRegex!7811 (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))))))

(declare-fun b!6130637 () Bool)

(declare-fun e!3736752 () Bool)

(assert (=> b!6130637 (= e!3736752 call!508404)))

(declare-fun b!6130638 () Bool)

(declare-fun res!2540938 () Bool)

(declare-fun e!3736756 () Bool)

(assert (=> b!6130638 (=> res!2540938 e!3736756)))

(assert (=> b!6130638 (= res!2540938 (not ((_ is Concat!24920) r!7292)))))

(assert (=> b!6130638 (= e!3736758 e!3736756)))

(declare-fun b!6130639 () Bool)

(assert (=> b!6130639 (= e!3736756 e!3736752)))

(declare-fun res!2540939 () Bool)

(assert (=> b!6130639 (=> (not res!2540939) (not e!3736752))))

(assert (=> b!6130639 (= res!2540939 call!508406)))

(declare-fun b!6130640 () Bool)

(declare-fun e!3736754 () Bool)

(assert (=> b!6130640 (= e!3736754 e!3736758)))

(assert (=> b!6130640 (= c!1102113 ((_ is Union!16075) r!7292))))

(declare-fun bm!508401 () Bool)

(declare-fun c!1102112 () Bool)

(assert (=> bm!508401 (= call!508405 (validRegex!7811 (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))))))

(declare-fun b!6130641 () Bool)

(assert (=> b!6130641 (= e!3736757 e!3736754)))

(assert (=> b!6130641 (= c!1102112 ((_ is Star!16075) r!7292))))

(declare-fun b!6130642 () Bool)

(assert (=> b!6130642 (= e!3736753 call!508404)))

(declare-fun b!6130643 () Bool)

(declare-fun e!3736755 () Bool)

(assert (=> b!6130643 (= e!3736754 e!3736755)))

(declare-fun res!2540936 () Bool)

(assert (=> b!6130643 (= res!2540936 (not (nullable!6068 (reg!16404 r!7292))))))

(assert (=> b!6130643 (=> (not res!2540936) (not e!3736755))))

(declare-fun b!6130644 () Bool)

(assert (=> b!6130644 (= e!3736755 call!508405)))

(assert (= (and d!1920759 (not res!2540940)) b!6130641))

(assert (= (and b!6130641 c!1102112) b!6130643))

(assert (= (and b!6130641 (not c!1102112)) b!6130640))

(assert (= (and b!6130643 res!2540936) b!6130644))

(assert (= (and b!6130640 c!1102113) b!6130636))

(assert (= (and b!6130640 (not c!1102113)) b!6130638))

(assert (= (and b!6130636 res!2540937) b!6130642))

(assert (= (and b!6130638 (not res!2540938)) b!6130639))

(assert (= (and b!6130639 res!2540939) b!6130637))

(assert (= (or b!6130642 b!6130637) bm!508400))

(assert (= (or b!6130636 b!6130639) bm!508399))

(assert (= (or b!6130644 bm!508399) bm!508401))

(declare-fun m!6974200 () Bool)

(assert (=> bm!508400 m!6974200))

(declare-fun m!6974202 () Bool)

(assert (=> bm!508401 m!6974202))

(declare-fun m!6974204 () Bool)

(assert (=> b!6130643 m!6974204))

(assert (=> start!612314 d!1920759))

(declare-fun d!1920767 () Bool)

(assert (=> d!1920767 (= (isEmpty!36340 (t!377993 (exprs!5959 (h!70850 zl!343)))) ((_ is Nil!64400) (t!377993 (exprs!5959 (h!70850 zl!343)))))))

(assert (=> b!6130354 d!1920767))

(declare-fun d!1920769 () Bool)

(declare-fun c!1102114 () Bool)

(assert (=> d!1920769 (= c!1102114 (isEmpty!36343 (t!377994 s!2326)))))

(declare-fun e!3736759 () Bool)

(assert (=> d!1920769 (= (matchZipper!2087 lt!2331875 (t!377994 s!2326)) e!3736759)))

(declare-fun b!6130645 () Bool)

(assert (=> b!6130645 (= e!3736759 (nullableZipper!1856 lt!2331875))))

(declare-fun b!6130646 () Bool)

(assert (=> b!6130646 (= e!3736759 (matchZipper!2087 (derivationStepZipper!2048 lt!2331875 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))))))

(assert (= (and d!1920769 c!1102114) b!6130645))

(assert (= (and d!1920769 (not c!1102114)) b!6130646))

(assert (=> d!1920769 m!6974138))

(declare-fun m!6974206 () Bool)

(assert (=> b!6130645 m!6974206))

(assert (=> b!6130646 m!6974142))

(assert (=> b!6130646 m!6974142))

(declare-fun m!6974208 () Bool)

(assert (=> b!6130646 m!6974208))

(assert (=> b!6130646 m!6974146))

(assert (=> b!6130646 m!6974208))

(assert (=> b!6130646 m!6974146))

(declare-fun m!6974210 () Bool)

(assert (=> b!6130646 m!6974210))

(assert (=> b!6130345 d!1920769))

(declare-fun d!1920771 () Bool)

(declare-fun c!1102115 () Bool)

(assert (=> d!1920771 (= c!1102115 (isEmpty!36343 (t!377994 s!2326)))))

(declare-fun e!3736760 () Bool)

(assert (=> d!1920771 (= (matchZipper!2087 lt!2331873 (t!377994 s!2326)) e!3736760)))

(declare-fun b!6130647 () Bool)

(assert (=> b!6130647 (= e!3736760 (nullableZipper!1856 lt!2331873))))

(declare-fun b!6130648 () Bool)

(assert (=> b!6130648 (= e!3736760 (matchZipper!2087 (derivationStepZipper!2048 lt!2331873 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))))))

(assert (= (and d!1920771 c!1102115) b!6130647))

(assert (= (and d!1920771 (not c!1102115)) b!6130648))

(assert (=> d!1920771 m!6974138))

(declare-fun m!6974212 () Bool)

(assert (=> b!6130647 m!6974212))

(assert (=> b!6130648 m!6974142))

(assert (=> b!6130648 m!6974142))

(declare-fun m!6974214 () Bool)

(assert (=> b!6130648 m!6974214))

(assert (=> b!6130648 m!6974146))

(assert (=> b!6130648 m!6974214))

(assert (=> b!6130648 m!6974146))

(declare-fun m!6974216 () Bool)

(assert (=> b!6130648 m!6974216))

(assert (=> b!6130345 d!1920771))

(declare-fun d!1920773 () Bool)

(declare-fun c!1102116 () Bool)

(assert (=> d!1920773 (= c!1102116 (isEmpty!36343 (t!377994 s!2326)))))

(declare-fun e!3736763 () Bool)

(assert (=> d!1920773 (= (matchZipper!2087 lt!2331871 (t!377994 s!2326)) e!3736763)))

(declare-fun b!6130653 () Bool)

(assert (=> b!6130653 (= e!3736763 (nullableZipper!1856 lt!2331871))))

(declare-fun b!6130654 () Bool)

(assert (=> b!6130654 (= e!3736763 (matchZipper!2087 (derivationStepZipper!2048 lt!2331871 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))))))

(assert (= (and d!1920773 c!1102116) b!6130653))

(assert (= (and d!1920773 (not c!1102116)) b!6130654))

(assert (=> d!1920773 m!6974138))

(declare-fun m!6974218 () Bool)

(assert (=> b!6130653 m!6974218))

(assert (=> b!6130654 m!6974142))

(assert (=> b!6130654 m!6974142))

(declare-fun m!6974220 () Bool)

(assert (=> b!6130654 m!6974220))

(assert (=> b!6130654 m!6974146))

(assert (=> b!6130654 m!6974220))

(assert (=> b!6130654 m!6974146))

(declare-fun m!6974222 () Bool)

(assert (=> b!6130654 m!6974222))

(assert (=> b!6130345 d!1920773))

(declare-fun e!3736766 () Bool)

(declare-fun d!1920775 () Bool)

(assert (=> d!1920775 (= (matchZipper!2087 ((_ map or) lt!2331871 lt!2331884) (t!377994 s!2326)) e!3736766)))

(declare-fun res!2540947 () Bool)

(assert (=> d!1920775 (=> res!2540947 e!3736766)))

(assert (=> d!1920775 (= res!2540947 (matchZipper!2087 lt!2331871 (t!377994 s!2326)))))

(declare-fun lt!2331917 () Unit!157455)

(declare-fun choose!45551 ((InoxSet Context!10918) (InoxSet Context!10918) List!64525) Unit!157455)

(assert (=> d!1920775 (= lt!2331917 (choose!45551 lt!2331871 lt!2331884 (t!377994 s!2326)))))

(assert (=> d!1920775 (= (lemmaZipperConcatMatchesSameAsBothZippers!906 lt!2331871 lt!2331884 (t!377994 s!2326)) lt!2331917)))

(declare-fun b!6130657 () Bool)

(assert (=> b!6130657 (= e!3736766 (matchZipper!2087 lt!2331884 (t!377994 s!2326)))))

(assert (= (and d!1920775 (not res!2540947)) b!6130657))

(declare-fun m!6974228 () Bool)

(assert (=> d!1920775 m!6974228))

(assert (=> d!1920775 m!6974018))

(declare-fun m!6974230 () Bool)

(assert (=> d!1920775 m!6974230))

(assert (=> b!6130657 m!6973992))

(assert (=> b!6130345 d!1920775))

(declare-fun bs!1520718 () Bool)

(declare-fun b!6130712 () Bool)

(assert (= bs!1520718 (and b!6130712 b!6130355)))

(declare-fun lambda!333984 () Int)

(assert (=> bs!1520718 (not (= lambda!333984 lambda!333953))))

(assert (=> bs!1520718 (not (= lambda!333984 lambda!333954))))

(assert (=> b!6130712 true))

(assert (=> b!6130712 true))

(declare-fun bs!1520719 () Bool)

(declare-fun b!6130707 () Bool)

(assert (= bs!1520719 (and b!6130707 b!6130355)))

(declare-fun lambda!333985 () Int)

(assert (=> bs!1520719 (not (= lambda!333985 lambda!333953))))

(assert (=> bs!1520719 (= lambda!333985 lambda!333954)))

(declare-fun bs!1520720 () Bool)

(assert (= bs!1520720 (and b!6130707 b!6130712)))

(assert (=> bs!1520720 (not (= lambda!333985 lambda!333984))))

(assert (=> b!6130707 true))

(assert (=> b!6130707 true))

(declare-fun b!6130704 () Bool)

(declare-fun e!3736796 () Bool)

(assert (=> b!6130704 (= e!3736796 (= s!2326 (Cons!64401 (c!1102031 r!7292) Nil!64401)))))

(declare-fun b!6130705 () Bool)

(declare-fun c!1102129 () Bool)

(assert (=> b!6130705 (= c!1102129 ((_ is Union!16075) r!7292))))

(declare-fun e!3736792 () Bool)

(assert (=> b!6130705 (= e!3736796 e!3736792)))

(declare-fun b!6130706 () Bool)

(declare-fun e!3736798 () Bool)

(declare-fun call!508412 () Bool)

(assert (=> b!6130706 (= e!3736798 call!508412)))

(declare-fun e!3736793 () Bool)

(declare-fun call!508411 () Bool)

(assert (=> b!6130707 (= e!3736793 call!508411)))

(declare-fun c!1102131 () Bool)

(declare-fun bm!508406 () Bool)

(assert (=> bm!508406 (= call!508411 (Exists!3145 (ite c!1102131 lambda!333984 lambda!333985)))))

(declare-fun b!6130708 () Bool)

(declare-fun e!3736794 () Bool)

(assert (=> b!6130708 (= e!3736794 (matchRSpec!3176 (regTwo!32663 r!7292) s!2326))))

(declare-fun b!6130710 () Bool)

(assert (=> b!6130710 (= e!3736792 e!3736793)))

(assert (=> b!6130710 (= c!1102131 ((_ is Star!16075) r!7292))))

(declare-fun b!6130711 () Bool)

(assert (=> b!6130711 (= e!3736792 e!3736794)))

(declare-fun res!2540972 () Bool)

(assert (=> b!6130711 (= res!2540972 (matchRSpec!3176 (regOne!32663 r!7292) s!2326))))

(assert (=> b!6130711 (=> res!2540972 e!3736794)))

(declare-fun e!3736795 () Bool)

(assert (=> b!6130712 (= e!3736795 call!508411)))

(declare-fun b!6130713 () Bool)

(declare-fun res!2540974 () Bool)

(assert (=> b!6130713 (=> res!2540974 e!3736795)))

(assert (=> b!6130713 (= res!2540974 call!508412)))

(assert (=> b!6130713 (= e!3736793 e!3736795)))

(declare-fun bm!508407 () Bool)

(assert (=> bm!508407 (= call!508412 (isEmpty!36343 s!2326))))

(declare-fun b!6130714 () Bool)

(declare-fun c!1102130 () Bool)

(assert (=> b!6130714 (= c!1102130 ((_ is ElementMatch!16075) r!7292))))

(declare-fun e!3736797 () Bool)

(assert (=> b!6130714 (= e!3736797 e!3736796)))

(declare-fun b!6130709 () Bool)

(assert (=> b!6130709 (= e!3736798 e!3736797)))

(declare-fun res!2540973 () Bool)

(assert (=> b!6130709 (= res!2540973 (not ((_ is EmptyLang!16075) r!7292)))))

(assert (=> b!6130709 (=> (not res!2540973) (not e!3736797))))

(declare-fun d!1920779 () Bool)

(declare-fun c!1102128 () Bool)

(assert (=> d!1920779 (= c!1102128 ((_ is EmptyExpr!16075) r!7292))))

(assert (=> d!1920779 (= (matchRSpec!3176 r!7292 s!2326) e!3736798)))

(assert (= (and d!1920779 c!1102128) b!6130706))

(assert (= (and d!1920779 (not c!1102128)) b!6130709))

(assert (= (and b!6130709 res!2540973) b!6130714))

(assert (= (and b!6130714 c!1102130) b!6130704))

(assert (= (and b!6130714 (not c!1102130)) b!6130705))

(assert (= (and b!6130705 c!1102129) b!6130711))

(assert (= (and b!6130705 (not c!1102129)) b!6130710))

(assert (= (and b!6130711 (not res!2540972)) b!6130708))

(assert (= (and b!6130710 c!1102131) b!6130713))

(assert (= (and b!6130710 (not c!1102131)) b!6130707))

(assert (= (and b!6130713 (not res!2540974)) b!6130712))

(assert (= (or b!6130712 b!6130707) bm!508406))

(assert (= (or b!6130706 b!6130713) bm!508407))

(declare-fun m!6974260 () Bool)

(assert (=> bm!508406 m!6974260))

(declare-fun m!6974262 () Bool)

(assert (=> b!6130708 m!6974262))

(declare-fun m!6974264 () Bool)

(assert (=> b!6130711 m!6974264))

(declare-fun m!6974266 () Bool)

(assert (=> bm!508407 m!6974266))

(assert (=> b!6130356 d!1920779))

(declare-fun b!6130766 () Bool)

(declare-fun e!3736833 () Bool)

(assert (=> b!6130766 (= e!3736833 (nullable!6068 r!7292))))

(declare-fun b!6130767 () Bool)

(declare-fun res!2541004 () Bool)

(declare-fun e!3736834 () Bool)

(assert (=> b!6130767 (=> res!2541004 e!3736834)))

(assert (=> b!6130767 (= res!2541004 (not (isEmpty!36343 (tail!11755 s!2326))))))

(declare-fun b!6130768 () Bool)

(declare-fun res!2541003 () Bool)

(declare-fun e!3736829 () Bool)

(assert (=> b!6130768 (=> (not res!2541003) (not e!3736829))))

(assert (=> b!6130768 (= res!2541003 (isEmpty!36343 (tail!11755 s!2326)))))

(declare-fun b!6130770 () Bool)

(declare-fun res!2541001 () Bool)

(declare-fun e!3736830 () Bool)

(assert (=> b!6130770 (=> res!2541001 e!3736830)))

(assert (=> b!6130770 (= res!2541001 (not ((_ is ElementMatch!16075) r!7292)))))

(declare-fun e!3736832 () Bool)

(assert (=> b!6130770 (= e!3736832 e!3736830)))

(declare-fun b!6130771 () Bool)

(assert (=> b!6130771 (= e!3736834 (not (= (head!12670 s!2326) (c!1102031 r!7292))))))

(declare-fun b!6130772 () Bool)

(assert (=> b!6130772 (= e!3736829 (= (head!12670 s!2326) (c!1102031 r!7292)))))

(declare-fun b!6130773 () Bool)

(declare-fun e!3736828 () Bool)

(assert (=> b!6130773 (= e!3736828 e!3736832)))

(declare-fun c!1102148 () Bool)

(assert (=> b!6130773 (= c!1102148 ((_ is EmptyLang!16075) r!7292))))

(declare-fun b!6130774 () Bool)

(declare-fun res!2541000 () Bool)

(assert (=> b!6130774 (=> res!2541000 e!3736830)))

(assert (=> b!6130774 (= res!2541000 e!3736829)))

(declare-fun res!2540999 () Bool)

(assert (=> b!6130774 (=> (not res!2540999) (not e!3736829))))

(declare-fun lt!2331931 () Bool)

(assert (=> b!6130774 (= res!2540999 lt!2331931)))

(declare-fun b!6130775 () Bool)

(declare-fun e!3736831 () Bool)

(assert (=> b!6130775 (= e!3736831 e!3736834)))

(declare-fun res!2540998 () Bool)

(assert (=> b!6130775 (=> res!2540998 e!3736834)))

(declare-fun call!508415 () Bool)

(assert (=> b!6130775 (= res!2540998 call!508415)))

(declare-fun bm!508410 () Bool)

(assert (=> bm!508410 (= call!508415 (isEmpty!36343 s!2326))))

(declare-fun b!6130769 () Bool)

(declare-fun res!2541002 () Bool)

(assert (=> b!6130769 (=> (not res!2541002) (not e!3736829))))

(assert (=> b!6130769 (= res!2541002 (not call!508415))))

(declare-fun d!1920793 () Bool)

(assert (=> d!1920793 e!3736828))

(declare-fun c!1102146 () Bool)

(assert (=> d!1920793 (= c!1102146 ((_ is EmptyExpr!16075) r!7292))))

(assert (=> d!1920793 (= lt!2331931 e!3736833)))

(declare-fun c!1102147 () Bool)

(assert (=> d!1920793 (= c!1102147 (isEmpty!36343 s!2326))))

(assert (=> d!1920793 (validRegex!7811 r!7292)))

(assert (=> d!1920793 (= (matchR!8258 r!7292 s!2326) lt!2331931)))

(declare-fun b!6130776 () Bool)

(declare-fun derivativeStep!4795 (Regex!16075 C!32420) Regex!16075)

(assert (=> b!6130776 (= e!3736833 (matchR!8258 (derivativeStep!4795 r!7292 (head!12670 s!2326)) (tail!11755 s!2326)))))

(declare-fun b!6130777 () Bool)

(assert (=> b!6130777 (= e!3736830 e!3736831)))

(declare-fun res!2541005 () Bool)

(assert (=> b!6130777 (=> (not res!2541005) (not e!3736831))))

(assert (=> b!6130777 (= res!2541005 (not lt!2331931))))

(declare-fun b!6130778 () Bool)

(assert (=> b!6130778 (= e!3736828 (= lt!2331931 call!508415))))

(declare-fun b!6130779 () Bool)

(assert (=> b!6130779 (= e!3736832 (not lt!2331931))))

(assert (= (and d!1920793 c!1102147) b!6130766))

(assert (= (and d!1920793 (not c!1102147)) b!6130776))

(assert (= (and d!1920793 c!1102146) b!6130778))

(assert (= (and d!1920793 (not c!1102146)) b!6130773))

(assert (= (and b!6130773 c!1102148) b!6130779))

(assert (= (and b!6130773 (not c!1102148)) b!6130770))

(assert (= (and b!6130770 (not res!2541001)) b!6130774))

(assert (= (and b!6130774 res!2540999) b!6130769))

(assert (= (and b!6130769 res!2541002) b!6130768))

(assert (= (and b!6130768 res!2541003) b!6130772))

(assert (= (and b!6130774 (not res!2541000)) b!6130777))

(assert (= (and b!6130777 res!2541005) b!6130775))

(assert (= (and b!6130775 (not res!2540998)) b!6130767))

(assert (= (and b!6130767 (not res!2541004)) b!6130771))

(assert (= (or b!6130778 b!6130775 b!6130769) bm!508410))

(declare-fun m!6974278 () Bool)

(assert (=> b!6130767 m!6974278))

(assert (=> b!6130767 m!6974278))

(declare-fun m!6974280 () Bool)

(assert (=> b!6130767 m!6974280))

(assert (=> bm!508410 m!6974266))

(assert (=> d!1920793 m!6974266))

(assert (=> d!1920793 m!6973982))

(assert (=> b!6130768 m!6974278))

(assert (=> b!6130768 m!6974278))

(assert (=> b!6130768 m!6974280))

(declare-fun m!6974282 () Bool)

(assert (=> b!6130772 m!6974282))

(declare-fun m!6974284 () Bool)

(assert (=> b!6130766 m!6974284))

(assert (=> b!6130776 m!6974282))

(assert (=> b!6130776 m!6974282))

(declare-fun m!6974286 () Bool)

(assert (=> b!6130776 m!6974286))

(assert (=> b!6130776 m!6974278))

(assert (=> b!6130776 m!6974286))

(assert (=> b!6130776 m!6974278))

(declare-fun m!6974288 () Bool)

(assert (=> b!6130776 m!6974288))

(assert (=> b!6130771 m!6974282))

(assert (=> b!6130356 d!1920793))

(declare-fun d!1920803 () Bool)

(assert (=> d!1920803 (= (matchR!8258 r!7292 s!2326) (matchRSpec!3176 r!7292 s!2326))))

(declare-fun lt!2331936 () Unit!157455)

(declare-fun choose!45552 (Regex!16075 List!64525) Unit!157455)

(assert (=> d!1920803 (= lt!2331936 (choose!45552 r!7292 s!2326))))

(assert (=> d!1920803 (validRegex!7811 r!7292)))

(assert (=> d!1920803 (= (mainMatchTheorem!3176 r!7292 s!2326) lt!2331936)))

(declare-fun bs!1520730 () Bool)

(assert (= bs!1520730 d!1920803))

(assert (=> bs!1520730 m!6974028))

(assert (=> bs!1520730 m!6974026))

(declare-fun m!6974316 () Bool)

(assert (=> bs!1520730 m!6974316))

(assert (=> bs!1520730 m!6973982))

(assert (=> b!6130356 d!1920803))

(declare-fun d!1920811 () Bool)

(declare-fun e!3736889 () Bool)

(assert (=> d!1920811 e!3736889))

(declare-fun res!2541027 () Bool)

(assert (=> d!1920811 (=> res!2541027 e!3736889)))

(declare-fun e!3736886 () Bool)

(assert (=> d!1920811 (= res!2541027 e!3736886)))

(declare-fun res!2541028 () Bool)

(assert (=> d!1920811 (=> (not res!2541028) (not e!3736886))))

(declare-fun lt!2331948 () Option!15966)

(assert (=> d!1920811 (= res!2541028 (isDefined!12669 lt!2331948))))

(declare-fun e!3736885 () Option!15966)

(assert (=> d!1920811 (= lt!2331948 e!3736885)))

(declare-fun c!1102183 () Bool)

(declare-fun e!3736888 () Bool)

(assert (=> d!1920811 (= c!1102183 e!3736888)))

(declare-fun res!2541031 () Bool)

(assert (=> d!1920811 (=> (not res!2541031) (not e!3736888))))

(assert (=> d!1920811 (= res!2541031 (matchR!8258 (regOne!32662 r!7292) Nil!64401))))

(assert (=> d!1920811 (validRegex!7811 (regOne!32662 r!7292))))

(assert (=> d!1920811 (= (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) Nil!64401 s!2326 s!2326) lt!2331948)))

(declare-fun b!6130867 () Bool)

(assert (=> b!6130867 (= e!3736885 (Some!15965 (tuple2!66109 Nil!64401 s!2326)))))

(declare-fun b!6130868 () Bool)

(declare-fun lt!2331950 () Unit!157455)

(declare-fun lt!2331949 () Unit!157455)

(assert (=> b!6130868 (= lt!2331950 lt!2331949)))

(declare-fun ++!14161 (List!64525 List!64525) List!64525)

(assert (=> b!6130868 (= (++!14161 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (t!377994 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2256 (List!64525 C!32420 List!64525 List!64525) Unit!157455)

(assert (=> b!6130868 (= lt!2331949 (lemmaMoveElementToOtherListKeepsConcatEq!2256 Nil!64401 (h!70849 s!2326) (t!377994 s!2326) s!2326))))

(declare-fun e!3736887 () Option!15966)

(assert (=> b!6130868 (= e!3736887 (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (t!377994 s!2326) s!2326))))

(declare-fun b!6130869 () Bool)

(declare-fun res!2541030 () Bool)

(assert (=> b!6130869 (=> (not res!2541030) (not e!3736886))))

(declare-fun get!22214 (Option!15966) tuple2!66108)

(assert (=> b!6130869 (= res!2541030 (matchR!8258 (regTwo!32662 r!7292) (_2!36357 (get!22214 lt!2331948))))))

(declare-fun b!6130870 () Bool)

(assert (=> b!6130870 (= e!3736889 (not (isDefined!12669 lt!2331948)))))

(declare-fun b!6130871 () Bool)

(declare-fun res!2541029 () Bool)

(assert (=> b!6130871 (=> (not res!2541029) (not e!3736886))))

(assert (=> b!6130871 (= res!2541029 (matchR!8258 (regOne!32662 r!7292) (_1!36357 (get!22214 lt!2331948))))))

(declare-fun b!6130872 () Bool)

(assert (=> b!6130872 (= e!3736887 None!15965)))

(declare-fun b!6130873 () Bool)

(assert (=> b!6130873 (= e!3736886 (= (++!14161 (_1!36357 (get!22214 lt!2331948)) (_2!36357 (get!22214 lt!2331948))) s!2326))))

(declare-fun b!6130874 () Bool)

(assert (=> b!6130874 (= e!3736885 e!3736887)))

(declare-fun c!1102182 () Bool)

(assert (=> b!6130874 (= c!1102182 ((_ is Nil!64401) s!2326))))

(declare-fun b!6130875 () Bool)

(assert (=> b!6130875 (= e!3736888 (matchR!8258 (regTwo!32662 r!7292) s!2326))))

(assert (= (and d!1920811 res!2541031) b!6130875))

(assert (= (and d!1920811 c!1102183) b!6130867))

(assert (= (and d!1920811 (not c!1102183)) b!6130874))

(assert (= (and b!6130874 c!1102182) b!6130872))

(assert (= (and b!6130874 (not c!1102182)) b!6130868))

(assert (= (and d!1920811 res!2541028) b!6130871))

(assert (= (and b!6130871 res!2541029) b!6130869))

(assert (= (and b!6130869 res!2541030) b!6130873))

(assert (= (and d!1920811 (not res!2541027)) b!6130870))

(declare-fun m!6974354 () Bool)

(assert (=> b!6130870 m!6974354))

(declare-fun m!6974356 () Bool)

(assert (=> b!6130875 m!6974356))

(declare-fun m!6974358 () Bool)

(assert (=> b!6130868 m!6974358))

(assert (=> b!6130868 m!6974358))

(declare-fun m!6974360 () Bool)

(assert (=> b!6130868 m!6974360))

(declare-fun m!6974362 () Bool)

(assert (=> b!6130868 m!6974362))

(assert (=> b!6130868 m!6974358))

(declare-fun m!6974364 () Bool)

(assert (=> b!6130868 m!6974364))

(assert (=> d!1920811 m!6974354))

(declare-fun m!6974366 () Bool)

(assert (=> d!1920811 m!6974366))

(declare-fun m!6974368 () Bool)

(assert (=> d!1920811 m!6974368))

(declare-fun m!6974370 () Bool)

(assert (=> b!6130873 m!6974370))

(declare-fun m!6974372 () Bool)

(assert (=> b!6130873 m!6974372))

(assert (=> b!6130869 m!6974370))

(declare-fun m!6974374 () Bool)

(assert (=> b!6130869 m!6974374))

(assert (=> b!6130871 m!6974370))

(declare-fun m!6974378 () Bool)

(assert (=> b!6130871 m!6974378))

(assert (=> b!6130355 d!1920811))

(declare-fun d!1920821 () Bool)

(declare-fun choose!45553 (Int) Bool)

(assert (=> d!1920821 (= (Exists!3145 lambda!333954) (choose!45553 lambda!333954))))

(declare-fun bs!1520740 () Bool)

(assert (= bs!1520740 d!1920821))

(declare-fun m!6974388 () Bool)

(assert (=> bs!1520740 m!6974388))

(assert (=> b!6130355 d!1920821))

(declare-fun bs!1520742 () Bool)

(declare-fun d!1920825 () Bool)

(assert (= bs!1520742 (and d!1920825 b!6130355)))

(declare-fun lambda!333999 () Int)

(assert (=> bs!1520742 (= lambda!333999 lambda!333953)))

(assert (=> bs!1520742 (not (= lambda!333999 lambda!333954))))

(declare-fun bs!1520743 () Bool)

(assert (= bs!1520743 (and d!1920825 b!6130712)))

(assert (=> bs!1520743 (not (= lambda!333999 lambda!333984))))

(declare-fun bs!1520744 () Bool)

(assert (= bs!1520744 (and d!1920825 b!6130707)))

(assert (=> bs!1520744 (not (= lambda!333999 lambda!333985))))

(assert (=> d!1920825 true))

(assert (=> d!1920825 true))

(assert (=> d!1920825 true))

(assert (=> d!1920825 (= (isDefined!12669 (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) Nil!64401 s!2326 s!2326)) (Exists!3145 lambda!333999))))

(declare-fun lt!2331957 () Unit!157455)

(declare-fun choose!45554 (Regex!16075 Regex!16075 List!64525) Unit!157455)

(assert (=> d!1920825 (= lt!2331957 (choose!45554 (regOne!32662 r!7292) (regTwo!32662 r!7292) s!2326))))

(assert (=> d!1920825 (validRegex!7811 (regOne!32662 r!7292))))

(assert (=> d!1920825 (= (lemmaFindConcatSeparationEquivalentToExists!2144 (regOne!32662 r!7292) (regTwo!32662 r!7292) s!2326) lt!2331957)))

(declare-fun bs!1520745 () Bool)

(assert (= bs!1520745 d!1920825))

(assert (=> bs!1520745 m!6974368))

(declare-fun m!6974400 () Bool)

(assert (=> bs!1520745 m!6974400))

(assert (=> bs!1520745 m!6974042))

(declare-fun m!6974402 () Bool)

(assert (=> bs!1520745 m!6974402))

(assert (=> bs!1520745 m!6974042))

(assert (=> bs!1520745 m!6974044))

(assert (=> b!6130355 d!1920825))

(declare-fun d!1920831 () Bool)

(assert (=> d!1920831 (= (Exists!3145 lambda!333953) (choose!45553 lambda!333953))))

(declare-fun bs!1520746 () Bool)

(assert (= bs!1520746 d!1920831))

(declare-fun m!6974404 () Bool)

(assert (=> bs!1520746 m!6974404))

(assert (=> b!6130355 d!1920831))

(declare-fun bs!1520747 () Bool)

(declare-fun d!1920833 () Bool)

(assert (= bs!1520747 (and d!1920833 b!6130712)))

(declare-fun lambda!334004 () Int)

(assert (=> bs!1520747 (not (= lambda!334004 lambda!333984))))

(declare-fun bs!1520748 () Bool)

(assert (= bs!1520748 (and d!1920833 b!6130707)))

(assert (=> bs!1520748 (not (= lambda!334004 lambda!333985))))

(declare-fun bs!1520749 () Bool)

(assert (= bs!1520749 (and d!1920833 b!6130355)))

(assert (=> bs!1520749 (= lambda!334004 lambda!333953)))

(assert (=> bs!1520749 (not (= lambda!334004 lambda!333954))))

(declare-fun bs!1520750 () Bool)

(assert (= bs!1520750 (and d!1920833 d!1920825)))

(assert (=> bs!1520750 (= lambda!334004 lambda!333999)))

(assert (=> d!1920833 true))

(assert (=> d!1920833 true))

(assert (=> d!1920833 true))

(declare-fun lambda!334005 () Int)

(assert (=> bs!1520747 (not (= lambda!334005 lambda!333984))))

(assert (=> bs!1520748 (= lambda!334005 lambda!333985)))

(declare-fun bs!1520751 () Bool)

(assert (= bs!1520751 d!1920833))

(assert (=> bs!1520751 (not (= lambda!334005 lambda!334004))))

(assert (=> bs!1520749 (not (= lambda!334005 lambda!333953))))

(assert (=> bs!1520749 (= lambda!334005 lambda!333954)))

(assert (=> bs!1520750 (not (= lambda!334005 lambda!333999))))

(assert (=> d!1920833 true))

(assert (=> d!1920833 true))

(assert (=> d!1920833 true))

(assert (=> d!1920833 (= (Exists!3145 lambda!334004) (Exists!3145 lambda!334005))))

(declare-fun lt!2331960 () Unit!157455)

(declare-fun choose!45555 (Regex!16075 Regex!16075 List!64525) Unit!157455)

(assert (=> d!1920833 (= lt!2331960 (choose!45555 (regOne!32662 r!7292) (regTwo!32662 r!7292) s!2326))))

(assert (=> d!1920833 (validRegex!7811 (regOne!32662 r!7292))))

(assert (=> d!1920833 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1682 (regOne!32662 r!7292) (regTwo!32662 r!7292) s!2326) lt!2331960)))

(declare-fun m!6974406 () Bool)

(assert (=> bs!1520751 m!6974406))

(declare-fun m!6974408 () Bool)

(assert (=> bs!1520751 m!6974408))

(declare-fun m!6974410 () Bool)

(assert (=> bs!1520751 m!6974410))

(assert (=> bs!1520751 m!6974368))

(assert (=> b!6130355 d!1920833))

(declare-fun d!1920835 () Bool)

(declare-fun isEmpty!36345 (Option!15966) Bool)

(assert (=> d!1920835 (= (isDefined!12669 (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) Nil!64401 s!2326 s!2326)) (not (isEmpty!36345 (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) Nil!64401 s!2326 s!2326))))))

(declare-fun bs!1520752 () Bool)

(assert (= bs!1520752 d!1920835))

(assert (=> bs!1520752 m!6974042))

(declare-fun m!6974412 () Bool)

(assert (=> bs!1520752 m!6974412))

(assert (=> b!6130355 d!1920835))

(declare-fun d!1920837 () Bool)

(assert (=> d!1920837 (= (isEmpty!36341 (t!377995 zl!343)) ((_ is Nil!64402) (t!377995 zl!343)))))

(assert (=> b!6130365 d!1920837))

(declare-fun bs!1520753 () Bool)

(declare-fun d!1920839 () Bool)

(assert (= bs!1520753 (and d!1920839 d!1920753)))

(declare-fun lambda!334006 () Int)

(assert (=> bs!1520753 (= lambda!334006 lambda!333964)))

(declare-fun bs!1520754 () Bool)

(assert (= bs!1520754 (and d!1920839 d!1920755)))

(assert (=> bs!1520754 (= lambda!334006 lambda!333967)))

(assert (=> d!1920839 (= (inv!83434 (h!70850 zl!343)) (forall!15195 (exprs!5959 (h!70850 zl!343)) lambda!334006))))

(declare-fun bs!1520755 () Bool)

(assert (= bs!1520755 d!1920839))

(declare-fun m!6974414 () Bool)

(assert (=> bs!1520755 m!6974414))

(assert (=> b!6130346 d!1920839))

(declare-fun d!1920841 () Bool)

(declare-fun c!1102186 () Bool)

(assert (=> d!1920841 (= c!1102186 (isEmpty!36343 (t!377994 s!2326)))))

(declare-fun e!3736924 () Bool)

(assert (=> d!1920841 (= (matchZipper!2087 lt!2331884 (t!377994 s!2326)) e!3736924)))

(declare-fun b!6130949 () Bool)

(assert (=> b!6130949 (= e!3736924 (nullableZipper!1856 lt!2331884))))

(declare-fun b!6130950 () Bool)

(assert (=> b!6130950 (= e!3736924 (matchZipper!2087 (derivationStepZipper!2048 lt!2331884 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))))))

(assert (= (and d!1920841 c!1102186) b!6130949))

(assert (= (and d!1920841 (not c!1102186)) b!6130950))

(assert (=> d!1920841 m!6974138))

(declare-fun m!6974416 () Bool)

(assert (=> b!6130949 m!6974416))

(assert (=> b!6130950 m!6974142))

(assert (=> b!6130950 m!6974142))

(declare-fun m!6974418 () Bool)

(assert (=> b!6130950 m!6974418))

(assert (=> b!6130950 m!6974146))

(assert (=> b!6130950 m!6974418))

(assert (=> b!6130950 m!6974146))

(declare-fun m!6974420 () Bool)

(assert (=> b!6130950 m!6974420))

(assert (=> b!6130368 d!1920841))

(declare-fun bs!1520756 () Bool)

(declare-fun d!1920843 () Bool)

(assert (= bs!1520756 (and d!1920843 d!1920753)))

(declare-fun lambda!334009 () Int)

(assert (=> bs!1520756 (= lambda!334009 lambda!333964)))

(declare-fun bs!1520757 () Bool)

(assert (= bs!1520757 (and d!1920843 d!1920755)))

(assert (=> bs!1520757 (= lambda!334009 lambda!333967)))

(declare-fun bs!1520758 () Bool)

(assert (= bs!1520758 (and d!1920843 d!1920839)))

(assert (=> bs!1520758 (= lambda!334009 lambda!334006)))

(declare-fun b!6130971 () Bool)

(declare-fun e!3736939 () Bool)

(declare-fun lt!2331963 () Regex!16075)

(declare-fun isEmptyLang!1502 (Regex!16075) Bool)

(assert (=> b!6130971 (= e!3736939 (isEmptyLang!1502 lt!2331963))))

(declare-fun b!6130972 () Bool)

(declare-fun e!3736938 () Bool)

(assert (=> b!6130972 (= e!3736938 e!3736939)))

(declare-fun c!1102195 () Bool)

(assert (=> b!6130972 (= c!1102195 (isEmpty!36340 (unfocusZipperList!1496 zl!343)))))

(declare-fun b!6130974 () Bool)

(declare-fun e!3736942 () Regex!16075)

(assert (=> b!6130974 (= e!3736942 (h!70848 (unfocusZipperList!1496 zl!343)))))

(declare-fun b!6130975 () Bool)

(declare-fun e!3736940 () Bool)

(declare-fun isUnion!932 (Regex!16075) Bool)

(assert (=> b!6130975 (= e!3736940 (isUnion!932 lt!2331963))))

(declare-fun b!6130976 () Bool)

(declare-fun e!3736937 () Regex!16075)

(assert (=> b!6130976 (= e!3736942 e!3736937)))

(declare-fun c!1102197 () Bool)

(assert (=> b!6130976 (= c!1102197 ((_ is Cons!64400) (unfocusZipperList!1496 zl!343)))))

(declare-fun b!6130977 () Bool)

(assert (=> b!6130977 (= e!3736939 e!3736940)))

(declare-fun c!1102198 () Bool)

(assert (=> b!6130977 (= c!1102198 (isEmpty!36340 (tail!11756 (unfocusZipperList!1496 zl!343))))))

(declare-fun b!6130978 () Bool)

(declare-fun e!3736941 () Bool)

(assert (=> b!6130978 (= e!3736941 (isEmpty!36340 (t!377993 (unfocusZipperList!1496 zl!343))))))

(declare-fun b!6130973 () Bool)

(assert (=> b!6130973 (= e!3736940 (= lt!2331963 (head!12671 (unfocusZipperList!1496 zl!343))))))

(assert (=> d!1920843 e!3736938))

(declare-fun res!2541052 () Bool)

(assert (=> d!1920843 (=> (not res!2541052) (not e!3736938))))

(assert (=> d!1920843 (= res!2541052 (validRegex!7811 lt!2331963))))

(assert (=> d!1920843 (= lt!2331963 e!3736942)))

(declare-fun c!1102196 () Bool)

(assert (=> d!1920843 (= c!1102196 e!3736941)))

(declare-fun res!2541051 () Bool)

(assert (=> d!1920843 (=> (not res!2541051) (not e!3736941))))

(assert (=> d!1920843 (= res!2541051 ((_ is Cons!64400) (unfocusZipperList!1496 zl!343)))))

(assert (=> d!1920843 (forall!15195 (unfocusZipperList!1496 zl!343) lambda!334009)))

(assert (=> d!1920843 (= (generalisedUnion!1919 (unfocusZipperList!1496 zl!343)) lt!2331963)))

(declare-fun b!6130979 () Bool)

(assert (=> b!6130979 (= e!3736937 (Union!16075 (h!70848 (unfocusZipperList!1496 zl!343)) (generalisedUnion!1919 (t!377993 (unfocusZipperList!1496 zl!343)))))))

(declare-fun b!6130980 () Bool)

(assert (=> b!6130980 (= e!3736937 EmptyLang!16075)))

(assert (= (and d!1920843 res!2541051) b!6130978))

(assert (= (and d!1920843 c!1102196) b!6130974))

(assert (= (and d!1920843 (not c!1102196)) b!6130976))

(assert (= (and b!6130976 c!1102197) b!6130979))

(assert (= (and b!6130976 (not c!1102197)) b!6130980))

(assert (= (and d!1920843 res!2541052) b!6130972))

(assert (= (and b!6130972 c!1102195) b!6130971))

(assert (= (and b!6130972 (not c!1102195)) b!6130977))

(assert (= (and b!6130977 c!1102198) b!6130973))

(assert (= (and b!6130977 (not c!1102198)) b!6130975))

(declare-fun m!6974422 () Bool)

(assert (=> b!6130971 m!6974422))

(declare-fun m!6974424 () Bool)

(assert (=> b!6130978 m!6974424))

(declare-fun m!6974426 () Bool)

(assert (=> d!1920843 m!6974426))

(assert (=> d!1920843 m!6974022))

(declare-fun m!6974428 () Bool)

(assert (=> d!1920843 m!6974428))

(declare-fun m!6974430 () Bool)

(assert (=> b!6130979 m!6974430))

(declare-fun m!6974432 () Bool)

(assert (=> b!6130975 m!6974432))

(assert (=> b!6130977 m!6974022))

(declare-fun m!6974434 () Bool)

(assert (=> b!6130977 m!6974434))

(assert (=> b!6130977 m!6974434))

(declare-fun m!6974436 () Bool)

(assert (=> b!6130977 m!6974436))

(assert (=> b!6130973 m!6974022))

(declare-fun m!6974438 () Bool)

(assert (=> b!6130973 m!6974438))

(assert (=> b!6130972 m!6974022))

(declare-fun m!6974440 () Bool)

(assert (=> b!6130972 m!6974440))

(assert (=> b!6130347 d!1920843))

(declare-fun bs!1520759 () Bool)

(declare-fun d!1920845 () Bool)

(assert (= bs!1520759 (and d!1920845 d!1920753)))

(declare-fun lambda!334012 () Int)

(assert (=> bs!1520759 (= lambda!334012 lambda!333964)))

(declare-fun bs!1520760 () Bool)

(assert (= bs!1520760 (and d!1920845 d!1920755)))

(assert (=> bs!1520760 (= lambda!334012 lambda!333967)))

(declare-fun bs!1520761 () Bool)

(assert (= bs!1520761 (and d!1920845 d!1920839)))

(assert (=> bs!1520761 (= lambda!334012 lambda!334006)))

(declare-fun bs!1520762 () Bool)

(assert (= bs!1520762 (and d!1920845 d!1920843)))

(assert (=> bs!1520762 (= lambda!334012 lambda!334009)))

(declare-fun lt!2331966 () List!64524)

(assert (=> d!1920845 (forall!15195 lt!2331966 lambda!334012)))

(declare-fun e!3736945 () List!64524)

(assert (=> d!1920845 (= lt!2331966 e!3736945)))

(declare-fun c!1102201 () Bool)

(assert (=> d!1920845 (= c!1102201 ((_ is Cons!64402) zl!343))))

(assert (=> d!1920845 (= (unfocusZipperList!1496 zl!343) lt!2331966)))

(declare-fun b!6130985 () Bool)

(assert (=> b!6130985 (= e!3736945 (Cons!64400 (generalisedConcat!1672 (exprs!5959 (h!70850 zl!343))) (unfocusZipperList!1496 (t!377995 zl!343))))))

(declare-fun b!6130986 () Bool)

(assert (=> b!6130986 (= e!3736945 Nil!64400)))

(assert (= (and d!1920845 c!1102201) b!6130985))

(assert (= (and d!1920845 (not c!1102201)) b!6130986))

(declare-fun m!6974442 () Bool)

(assert (=> d!1920845 m!6974442))

(assert (=> b!6130985 m!6973996))

(declare-fun m!6974444 () Bool)

(assert (=> b!6130985 m!6974444))

(assert (=> b!6130347 d!1920845))

(declare-fun e!3736946 () Bool)

(declare-fun d!1920847 () Bool)

(assert (=> d!1920847 (= (matchZipper!2087 ((_ map or) lt!2331875 lt!2331874) (t!377994 s!2326)) e!3736946)))

(declare-fun res!2541053 () Bool)

(assert (=> d!1920847 (=> res!2541053 e!3736946)))

(assert (=> d!1920847 (= res!2541053 (matchZipper!2087 lt!2331875 (t!377994 s!2326)))))

(declare-fun lt!2331967 () Unit!157455)

(assert (=> d!1920847 (= lt!2331967 (choose!45551 lt!2331875 lt!2331874 (t!377994 s!2326)))))

(assert (=> d!1920847 (= (lemmaZipperConcatMatchesSameAsBothZippers!906 lt!2331875 lt!2331874 (t!377994 s!2326)) lt!2331967)))

(declare-fun b!6130987 () Bool)

(assert (=> b!6130987 (= e!3736946 (matchZipper!2087 lt!2331874 (t!377994 s!2326)))))

(assert (= (and d!1920847 (not res!2541053)) b!6130987))

(assert (=> d!1920847 m!6974054))

(assert (=> d!1920847 m!6974014))

(declare-fun m!6974446 () Bool)

(assert (=> d!1920847 m!6974446))

(assert (=> b!6130987 m!6974012))

(assert (=> b!6130358 d!1920847))

(assert (=> b!6130358 d!1920769))

(declare-fun d!1920849 () Bool)

(declare-fun c!1102202 () Bool)

(assert (=> d!1920849 (= c!1102202 (isEmpty!36343 (t!377994 s!2326)))))

(declare-fun e!3736947 () Bool)

(assert (=> d!1920849 (= (matchZipper!2087 ((_ map or) lt!2331875 lt!2331874) (t!377994 s!2326)) e!3736947)))

(declare-fun b!6130988 () Bool)

(assert (=> b!6130988 (= e!3736947 (nullableZipper!1856 ((_ map or) lt!2331875 lt!2331874)))))

(declare-fun b!6130989 () Bool)

(assert (=> b!6130989 (= e!3736947 (matchZipper!2087 (derivationStepZipper!2048 ((_ map or) lt!2331875 lt!2331874) (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))))))

(assert (= (and d!1920849 c!1102202) b!6130988))

(assert (= (and d!1920849 (not c!1102202)) b!6130989))

(assert (=> d!1920849 m!6974138))

(declare-fun m!6974448 () Bool)

(assert (=> b!6130988 m!6974448))

(assert (=> b!6130989 m!6974142))

(assert (=> b!6130989 m!6974142))

(declare-fun m!6974450 () Bool)

(assert (=> b!6130989 m!6974450))

(assert (=> b!6130989 m!6974146))

(assert (=> b!6130989 m!6974450))

(assert (=> b!6130989 m!6974146))

(declare-fun m!6974452 () Bool)

(assert (=> b!6130989 m!6974452))

(assert (=> b!6130358 d!1920849))

(declare-fun b!6131012 () Bool)

(declare-fun e!3736965 () (InoxSet Context!10918))

(declare-fun e!3736961 () (InoxSet Context!10918))

(assert (=> b!6131012 (= e!3736965 e!3736961)))

(declare-fun c!1102213 () Bool)

(assert (=> b!6131012 (= c!1102213 ((_ is Concat!24920) (regTwo!32663 (regOne!32662 r!7292))))))

(declare-fun bm!508435 () Bool)

(declare-fun call!508444 () (InoxSet Context!10918))

(declare-fun call!508441 () (InoxSet Context!10918))

(assert (=> bm!508435 (= call!508444 call!508441)))

(declare-fun b!6131013 () Bool)

(declare-fun c!1102216 () Bool)

(declare-fun e!3736964 () Bool)

(assert (=> b!6131013 (= c!1102216 e!3736964)))

(declare-fun res!2541056 () Bool)

(assert (=> b!6131013 (=> (not res!2541056) (not e!3736964))))

(assert (=> b!6131013 (= res!2541056 ((_ is Concat!24920) (regTwo!32663 (regOne!32662 r!7292))))))

(declare-fun e!3736963 () (InoxSet Context!10918))

(assert (=> b!6131013 (= e!3736963 e!3736965)))

(declare-fun bm!508437 () Bool)

(declare-fun call!508440 () (InoxSet Context!10918))

(assert (=> bm!508437 (= call!508441 call!508440)))

(declare-fun b!6131014 () Bool)

(declare-fun call!508442 () (InoxSet Context!10918))

(assert (=> b!6131014 (= e!3736963 ((_ map or) call!508442 call!508440))))

(declare-fun b!6131015 () Bool)

(declare-fun e!3736962 () (InoxSet Context!10918))

(assert (=> b!6131015 (= e!3736962 (store ((as const (Array Context!10918 Bool)) false) lt!2331882 true))))

(declare-fun b!6131016 () Bool)

(declare-fun c!1102215 () Bool)

(assert (=> b!6131016 (= c!1102215 ((_ is Star!16075) (regTwo!32663 (regOne!32662 r!7292))))))

(declare-fun e!3736960 () (InoxSet Context!10918))

(assert (=> b!6131016 (= e!3736961 e!3736960)))

(declare-fun b!6131017 () Bool)

(assert (=> b!6131017 (= e!3736962 e!3736963)))

(declare-fun c!1102217 () Bool)

(assert (=> b!6131017 (= c!1102217 ((_ is Union!16075) (regTwo!32663 (regOne!32662 r!7292))))))

(declare-fun bm!508438 () Bool)

(declare-fun call!508443 () List!64524)

(assert (=> bm!508438 (= call!508442 (derivationStepZipperDown!1323 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))) (ite c!1102217 lt!2331882 (Context!10919 call!508443)) (h!70849 s!2326)))))

(declare-fun b!6131018 () Bool)

(assert (=> b!6131018 (= e!3736961 call!508444)))

(declare-fun bm!508436 () Bool)

(declare-fun call!508445 () List!64524)

(assert (=> bm!508436 (= call!508445 call!508443)))

(declare-fun d!1920851 () Bool)

(declare-fun c!1102214 () Bool)

(assert (=> d!1920851 (= c!1102214 (and ((_ is ElementMatch!16075) (regTwo!32663 (regOne!32662 r!7292))) (= (c!1102031 (regTwo!32663 (regOne!32662 r!7292))) (h!70849 s!2326))))))

(assert (=> d!1920851 (= (derivationStepZipperDown!1323 (regTwo!32663 (regOne!32662 r!7292)) lt!2331882 (h!70849 s!2326)) e!3736962)))

(declare-fun bm!508439 () Bool)

(assert (=> bm!508439 (= call!508440 (derivationStepZipperDown!1323 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292)))))) (ite (or c!1102217 c!1102216) lt!2331882 (Context!10919 call!508445)) (h!70849 s!2326)))))

(declare-fun b!6131019 () Bool)

(assert (=> b!6131019 (= e!3736960 call!508444)))

(declare-fun bm!508440 () Bool)

(declare-fun $colon$colon!1952 (List!64524 Regex!16075) List!64524)

(assert (=> bm!508440 (= call!508443 ($colon$colon!1952 (exprs!5959 lt!2331882) (ite (or c!1102216 c!1102213) (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (regTwo!32663 (regOne!32662 r!7292)))))))

(declare-fun b!6131020 () Bool)

(assert (=> b!6131020 (= e!3736964 (nullable!6068 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))))))

(declare-fun b!6131021 () Bool)

(assert (=> b!6131021 (= e!3736965 ((_ map or) call!508442 call!508441))))

(declare-fun b!6131022 () Bool)

(assert (=> b!6131022 (= e!3736960 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1920851 c!1102214) b!6131015))

(assert (= (and d!1920851 (not c!1102214)) b!6131017))

(assert (= (and b!6131017 c!1102217) b!6131014))

(assert (= (and b!6131017 (not c!1102217)) b!6131013))

(assert (= (and b!6131013 res!2541056) b!6131020))

(assert (= (and b!6131013 c!1102216) b!6131021))

(assert (= (and b!6131013 (not c!1102216)) b!6131012))

(assert (= (and b!6131012 c!1102213) b!6131018))

(assert (= (and b!6131012 (not c!1102213)) b!6131016))

(assert (= (and b!6131016 c!1102215) b!6131019))

(assert (= (and b!6131016 (not c!1102215)) b!6131022))

(assert (= (or b!6131018 b!6131019) bm!508436))

(assert (= (or b!6131018 b!6131019) bm!508435))

(assert (= (or b!6131021 bm!508436) bm!508440))

(assert (= (or b!6131021 bm!508435) bm!508437))

(assert (= (or b!6131014 bm!508437) bm!508439))

(assert (= (or b!6131014 b!6131021) bm!508438))

(declare-fun m!6974454 () Bool)

(assert (=> bm!508440 m!6974454))

(declare-fun m!6974456 () Bool)

(assert (=> b!6131020 m!6974456))

(declare-fun m!6974458 () Bool)

(assert (=> b!6131015 m!6974458))

(declare-fun m!6974460 () Bool)

(assert (=> bm!508439 m!6974460))

(declare-fun m!6974462 () Bool)

(assert (=> bm!508438 m!6974462))

(assert (=> b!6130349 d!1920851))

(declare-fun b!6131023 () Bool)

(declare-fun e!3736971 () (InoxSet Context!10918))

(declare-fun e!3736967 () (InoxSet Context!10918))

(assert (=> b!6131023 (= e!3736971 e!3736967)))

(declare-fun c!1102218 () Bool)

(assert (=> b!6131023 (= c!1102218 ((_ is Concat!24920) (regOne!32663 (regOne!32662 r!7292))))))

(declare-fun bm!508441 () Bool)

(declare-fun call!508450 () (InoxSet Context!10918))

(declare-fun call!508447 () (InoxSet Context!10918))

(assert (=> bm!508441 (= call!508450 call!508447)))

(declare-fun b!6131024 () Bool)

(declare-fun c!1102221 () Bool)

(declare-fun e!3736970 () Bool)

(assert (=> b!6131024 (= c!1102221 e!3736970)))

(declare-fun res!2541057 () Bool)

(assert (=> b!6131024 (=> (not res!2541057) (not e!3736970))))

(assert (=> b!6131024 (= res!2541057 ((_ is Concat!24920) (regOne!32663 (regOne!32662 r!7292))))))

(declare-fun e!3736969 () (InoxSet Context!10918))

(assert (=> b!6131024 (= e!3736969 e!3736971)))

(declare-fun bm!508443 () Bool)

(declare-fun call!508446 () (InoxSet Context!10918))

(assert (=> bm!508443 (= call!508447 call!508446)))

(declare-fun b!6131025 () Bool)

(declare-fun call!508448 () (InoxSet Context!10918))

(assert (=> b!6131025 (= e!3736969 ((_ map or) call!508448 call!508446))))

(declare-fun b!6131026 () Bool)

(declare-fun e!3736968 () (InoxSet Context!10918))

(assert (=> b!6131026 (= e!3736968 (store ((as const (Array Context!10918 Bool)) false) lt!2331882 true))))

(declare-fun b!6131027 () Bool)

(declare-fun c!1102220 () Bool)

(assert (=> b!6131027 (= c!1102220 ((_ is Star!16075) (regOne!32663 (regOne!32662 r!7292))))))

(declare-fun e!3736966 () (InoxSet Context!10918))

(assert (=> b!6131027 (= e!3736967 e!3736966)))

(declare-fun b!6131028 () Bool)

(assert (=> b!6131028 (= e!3736968 e!3736969)))

(declare-fun c!1102222 () Bool)

(assert (=> b!6131028 (= c!1102222 ((_ is Union!16075) (regOne!32663 (regOne!32662 r!7292))))))

(declare-fun bm!508444 () Bool)

(declare-fun call!508449 () List!64524)

(assert (=> bm!508444 (= call!508448 (derivationStepZipperDown!1323 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))) (ite c!1102222 lt!2331882 (Context!10919 call!508449)) (h!70849 s!2326)))))

(declare-fun b!6131029 () Bool)

(assert (=> b!6131029 (= e!3736967 call!508450)))

(declare-fun bm!508442 () Bool)

(declare-fun call!508451 () List!64524)

(assert (=> bm!508442 (= call!508451 call!508449)))

(declare-fun d!1920853 () Bool)

(declare-fun c!1102219 () Bool)

(assert (=> d!1920853 (= c!1102219 (and ((_ is ElementMatch!16075) (regOne!32663 (regOne!32662 r!7292))) (= (c!1102031 (regOne!32663 (regOne!32662 r!7292))) (h!70849 s!2326))))))

(assert (=> d!1920853 (= (derivationStepZipperDown!1323 (regOne!32663 (regOne!32662 r!7292)) lt!2331882 (h!70849 s!2326)) e!3736968)))

(declare-fun bm!508445 () Bool)

(assert (=> bm!508445 (= call!508446 (derivationStepZipperDown!1323 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292)))))) (ite (or c!1102222 c!1102221) lt!2331882 (Context!10919 call!508451)) (h!70849 s!2326)))))

(declare-fun b!6131030 () Bool)

(assert (=> b!6131030 (= e!3736966 call!508450)))

(declare-fun bm!508446 () Bool)

(assert (=> bm!508446 (= call!508449 ($colon$colon!1952 (exprs!5959 lt!2331882) (ite (or c!1102221 c!1102218) (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (regOne!32663 (regOne!32662 r!7292)))))))

(declare-fun b!6131031 () Bool)

(assert (=> b!6131031 (= e!3736970 (nullable!6068 (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))))))

(declare-fun b!6131032 () Bool)

(assert (=> b!6131032 (= e!3736971 ((_ map or) call!508448 call!508447))))

(declare-fun b!6131033 () Bool)

(assert (=> b!6131033 (= e!3736966 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1920853 c!1102219) b!6131026))

(assert (= (and d!1920853 (not c!1102219)) b!6131028))

(assert (= (and b!6131028 c!1102222) b!6131025))

(assert (= (and b!6131028 (not c!1102222)) b!6131024))

(assert (= (and b!6131024 res!2541057) b!6131031))

(assert (= (and b!6131024 c!1102221) b!6131032))

(assert (= (and b!6131024 (not c!1102221)) b!6131023))

(assert (= (and b!6131023 c!1102218) b!6131029))

(assert (= (and b!6131023 (not c!1102218)) b!6131027))

(assert (= (and b!6131027 c!1102220) b!6131030))

(assert (= (and b!6131027 (not c!1102220)) b!6131033))

(assert (= (or b!6131029 b!6131030) bm!508442))

(assert (= (or b!6131029 b!6131030) bm!508441))

(assert (= (or b!6131032 bm!508442) bm!508446))

(assert (= (or b!6131032 bm!508441) bm!508443))

(assert (= (or b!6131025 bm!508443) bm!508445))

(assert (= (or b!6131025 b!6131032) bm!508444))

(declare-fun m!6974464 () Bool)

(assert (=> bm!508446 m!6974464))

(declare-fun m!6974466 () Bool)

(assert (=> b!6131031 m!6974466))

(assert (=> b!6131026 m!6974458))

(declare-fun m!6974468 () Bool)

(assert (=> bm!508445 m!6974468))

(declare-fun m!6974470 () Bool)

(assert (=> bm!508444 m!6974470))

(assert (=> b!6130349 d!1920853))

(declare-fun d!1920855 () Bool)

(declare-fun nullableFct!2032 (Regex!16075) Bool)

(assert (=> d!1920855 (= (nullable!6068 (h!70848 (exprs!5959 (h!70850 zl!343)))) (nullableFct!2032 (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun bs!1520763 () Bool)

(assert (= bs!1520763 d!1920855))

(declare-fun m!6974472 () Bool)

(assert (=> bs!1520763 m!6974472))

(assert (=> b!6130360 d!1920855))

(declare-fun b!6131044 () Bool)

(declare-fun e!3736980 () (InoxSet Context!10918))

(declare-fun e!3736978 () (InoxSet Context!10918))

(assert (=> b!6131044 (= e!3736980 e!3736978)))

(declare-fun c!1102227 () Bool)

(assert (=> b!6131044 (= c!1102227 ((_ is Cons!64400) (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))

(declare-fun d!1920857 () Bool)

(declare-fun c!1102228 () Bool)

(declare-fun e!3736979 () Bool)

(assert (=> d!1920857 (= c!1102228 e!3736979)))

(declare-fun res!2541060 () Bool)

(assert (=> d!1920857 (=> (not res!2541060) (not e!3736979))))

(assert (=> d!1920857 (= res!2541060 ((_ is Cons!64400) (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))

(assert (=> d!1920857 (= (derivationStepZipperUp!1249 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))) (h!70849 s!2326)) e!3736980)))

(declare-fun b!6131045 () Bool)

(declare-fun call!508454 () (InoxSet Context!10918))

(assert (=> b!6131045 (= e!3736978 call!508454)))

(declare-fun b!6131046 () Bool)

(assert (=> b!6131046 (= e!3736980 ((_ map or) call!508454 (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (h!70849 s!2326))))))

(declare-fun bm!508449 () Bool)

(assert (=> bm!508449 (= call!508454 (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))) (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (h!70849 s!2326)))))

(declare-fun b!6131047 () Bool)

(assert (=> b!6131047 (= e!3736979 (nullable!6068 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun b!6131048 () Bool)

(assert (=> b!6131048 (= e!3736978 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1920857 res!2541060) b!6131047))

(assert (= (and d!1920857 c!1102228) b!6131046))

(assert (= (and d!1920857 (not c!1102228)) b!6131044))

(assert (= (and b!6131044 c!1102227) b!6131045))

(assert (= (and b!6131044 (not c!1102227)) b!6131048))

(assert (= (or b!6131046 b!6131045) bm!508449))

(declare-fun m!6974474 () Bool)

(assert (=> b!6131046 m!6974474))

(declare-fun m!6974476 () Bool)

(assert (=> bm!508449 m!6974476))

(declare-fun m!6974478 () Bool)

(assert (=> b!6131047 m!6974478))

(assert (=> b!6130360 d!1920857))

(declare-fun b!6131049 () Bool)

(declare-fun e!3736983 () (InoxSet Context!10918))

(declare-fun e!3736981 () (InoxSet Context!10918))

(assert (=> b!6131049 (= e!3736983 e!3736981)))

(declare-fun c!1102229 () Bool)

(assert (=> b!6131049 (= c!1102229 ((_ is Cons!64400) (exprs!5959 lt!2331882)))))

(declare-fun d!1920859 () Bool)

(declare-fun c!1102230 () Bool)

(declare-fun e!3736982 () Bool)

(assert (=> d!1920859 (= c!1102230 e!3736982)))

(declare-fun res!2541061 () Bool)

(assert (=> d!1920859 (=> (not res!2541061) (not e!3736982))))

(assert (=> d!1920859 (= res!2541061 ((_ is Cons!64400) (exprs!5959 lt!2331882)))))

(assert (=> d!1920859 (= (derivationStepZipperUp!1249 lt!2331882 (h!70849 s!2326)) e!3736983)))

(declare-fun b!6131050 () Bool)

(declare-fun call!508455 () (InoxSet Context!10918))

(assert (=> b!6131050 (= e!3736981 call!508455)))

(declare-fun b!6131051 () Bool)

(assert (=> b!6131051 (= e!3736983 ((_ map or) call!508455 (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 lt!2331882))) (h!70849 s!2326))))))

(declare-fun bm!508450 () Bool)

(assert (=> bm!508450 (= call!508455 (derivationStepZipperDown!1323 (h!70848 (exprs!5959 lt!2331882)) (Context!10919 (t!377993 (exprs!5959 lt!2331882))) (h!70849 s!2326)))))

(declare-fun b!6131052 () Bool)

(assert (=> b!6131052 (= e!3736982 (nullable!6068 (h!70848 (exprs!5959 lt!2331882))))))

(declare-fun b!6131053 () Bool)

(assert (=> b!6131053 (= e!3736981 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1920859 res!2541061) b!6131052))

(assert (= (and d!1920859 c!1102230) b!6131051))

(assert (= (and d!1920859 (not c!1102230)) b!6131049))

(assert (= (and b!6131049 c!1102229) b!6131050))

(assert (= (and b!6131049 (not c!1102229)) b!6131053))

(assert (= (or b!6131051 b!6131050) bm!508450))

(declare-fun m!6974480 () Bool)

(assert (=> b!6131051 m!6974480))

(declare-fun m!6974482 () Bool)

(assert (=> bm!508450 m!6974482))

(declare-fun m!6974484 () Bool)

(assert (=> b!6131052 m!6974484))

(assert (=> b!6130360 d!1920859))

(declare-fun b!6131054 () Bool)

(declare-fun e!3736986 () (InoxSet Context!10918))

(declare-fun e!3736984 () (InoxSet Context!10918))

(assert (=> b!6131054 (= e!3736986 e!3736984)))

(declare-fun c!1102231 () Bool)

(assert (=> b!6131054 (= c!1102231 ((_ is Cons!64400) (exprs!5959 (h!70850 zl!343))))))

(declare-fun d!1920861 () Bool)

(declare-fun c!1102232 () Bool)

(declare-fun e!3736985 () Bool)

(assert (=> d!1920861 (= c!1102232 e!3736985)))

(declare-fun res!2541062 () Bool)

(assert (=> d!1920861 (=> (not res!2541062) (not e!3736985))))

(assert (=> d!1920861 (= res!2541062 ((_ is Cons!64400) (exprs!5959 (h!70850 zl!343))))))

(assert (=> d!1920861 (= (derivationStepZipperUp!1249 (h!70850 zl!343) (h!70849 s!2326)) e!3736986)))

(declare-fun b!6131055 () Bool)

(declare-fun call!508456 () (InoxSet Context!10918))

(assert (=> b!6131055 (= e!3736984 call!508456)))

(declare-fun b!6131056 () Bool)

(assert (=> b!6131056 (= e!3736986 ((_ map or) call!508456 (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))) (h!70849 s!2326))))))

(declare-fun bm!508451 () Bool)

(assert (=> bm!508451 (= call!508456 (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (h!70850 zl!343))) (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))) (h!70849 s!2326)))))

(declare-fun b!6131057 () Bool)

(assert (=> b!6131057 (= e!3736985 (nullable!6068 (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun b!6131058 () Bool)

(assert (=> b!6131058 (= e!3736984 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1920861 res!2541062) b!6131057))

(assert (= (and d!1920861 c!1102232) b!6131056))

(assert (= (and d!1920861 (not c!1102232)) b!6131054))

(assert (= (and b!6131054 c!1102231) b!6131055))

(assert (= (and b!6131054 (not c!1102231)) b!6131058))

(assert (= (or b!6131056 b!6131055) bm!508451))

(declare-fun m!6974486 () Bool)

(assert (=> b!6131056 m!6974486))

(declare-fun m!6974488 () Bool)

(assert (=> bm!508451 m!6974488))

(assert (=> b!6131057 m!6974008))

(assert (=> b!6130360 d!1920861))

(declare-fun d!1920863 () Bool)

(declare-fun choose!45557 ((InoxSet Context!10918) Int) (InoxSet Context!10918))

(assert (=> d!1920863 (= (flatMap!1580 z!1189 lambda!333955) (choose!45557 z!1189 lambda!333955))))

(declare-fun bs!1520764 () Bool)

(assert (= bs!1520764 d!1920863))

(declare-fun m!6974490 () Bool)

(assert (=> bs!1520764 m!6974490))

(assert (=> b!6130360 d!1920863))

(declare-fun d!1920865 () Bool)

(declare-fun dynLambda!25370 (Int Context!10918) (InoxSet Context!10918))

(assert (=> d!1920865 (= (flatMap!1580 z!1189 lambda!333955) (dynLambda!25370 lambda!333955 (h!70850 zl!343)))))

(declare-fun lt!2331970 () Unit!157455)

(declare-fun choose!45558 ((InoxSet Context!10918) Context!10918 Int) Unit!157455)

(assert (=> d!1920865 (= lt!2331970 (choose!45558 z!1189 (h!70850 zl!343) lambda!333955))))

(assert (=> d!1920865 (= z!1189 (store ((as const (Array Context!10918 Bool)) false) (h!70850 zl!343) true))))

(assert (=> d!1920865 (= (lemmaFlatMapOnSingletonSet!1106 z!1189 (h!70850 zl!343) lambda!333955) lt!2331970)))

(declare-fun b_lambda!233381 () Bool)

(assert (=> (not b_lambda!233381) (not d!1920865)))

(declare-fun bs!1520765 () Bool)

(assert (= bs!1520765 d!1920865))

(assert (=> bs!1520765 m!6974010))

(declare-fun m!6974492 () Bool)

(assert (=> bs!1520765 m!6974492))

(declare-fun m!6974494 () Bool)

(assert (=> bs!1520765 m!6974494))

(declare-fun m!6974496 () Bool)

(assert (=> bs!1520765 m!6974496))

(assert (=> b!6130360 d!1920865))

(declare-fun b!6131059 () Bool)

(declare-fun e!3736992 () (InoxSet Context!10918))

(declare-fun e!3736988 () (InoxSet Context!10918))

(assert (=> b!6131059 (= e!3736992 e!3736988)))

(declare-fun c!1102233 () Bool)

(assert (=> b!6131059 (= c!1102233 ((_ is Concat!24920) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun bm!508452 () Bool)

(declare-fun call!508461 () (InoxSet Context!10918))

(declare-fun call!508458 () (InoxSet Context!10918))

(assert (=> bm!508452 (= call!508461 call!508458)))

(declare-fun b!6131060 () Bool)

(declare-fun c!1102236 () Bool)

(declare-fun e!3736991 () Bool)

(assert (=> b!6131060 (= c!1102236 e!3736991)))

(declare-fun res!2541063 () Bool)

(assert (=> b!6131060 (=> (not res!2541063) (not e!3736991))))

(assert (=> b!6131060 (= res!2541063 ((_ is Concat!24920) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun e!3736990 () (InoxSet Context!10918))

(assert (=> b!6131060 (= e!3736990 e!3736992)))

(declare-fun bm!508454 () Bool)

(declare-fun call!508457 () (InoxSet Context!10918))

(assert (=> bm!508454 (= call!508458 call!508457)))

(declare-fun b!6131061 () Bool)

(declare-fun call!508459 () (InoxSet Context!10918))

(assert (=> b!6131061 (= e!3736990 ((_ map or) call!508459 call!508457))))

(declare-fun b!6131062 () Bool)

(declare-fun e!3736989 () (InoxSet Context!10918))

(assert (=> b!6131062 (= e!3736989 (store ((as const (Array Context!10918 Bool)) false) lt!2331882 true))))

(declare-fun b!6131063 () Bool)

(declare-fun c!1102235 () Bool)

(assert (=> b!6131063 (= c!1102235 ((_ is Star!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun e!3736987 () (InoxSet Context!10918))

(assert (=> b!6131063 (= e!3736988 e!3736987)))

(declare-fun b!6131064 () Bool)

(assert (=> b!6131064 (= e!3736989 e!3736990)))

(declare-fun c!1102237 () Bool)

(assert (=> b!6131064 (= c!1102237 ((_ is Union!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun bm!508455 () Bool)

(declare-fun call!508460 () List!64524)

(assert (=> bm!508455 (= call!508459 (derivationStepZipperDown!1323 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))) (ite c!1102237 lt!2331882 (Context!10919 call!508460)) (h!70849 s!2326)))))

(declare-fun b!6131065 () Bool)

(assert (=> b!6131065 (= e!3736988 call!508461)))

(declare-fun bm!508453 () Bool)

(declare-fun call!508462 () List!64524)

(assert (=> bm!508453 (= call!508462 call!508460)))

(declare-fun d!1920867 () Bool)

(declare-fun c!1102234 () Bool)

(assert (=> d!1920867 (= c!1102234 (and ((_ is ElementMatch!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))) (= (c!1102031 (h!70848 (exprs!5959 (h!70850 zl!343)))) (h!70849 s!2326))))))

(assert (=> d!1920867 (= (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (h!70850 zl!343))) lt!2331882 (h!70849 s!2326)) e!3736989)))

(declare-fun bm!508456 () Bool)

(assert (=> bm!508456 (= call!508457 (derivationStepZipperDown!1323 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343))))))) (ite (or c!1102237 c!1102236) lt!2331882 (Context!10919 call!508462)) (h!70849 s!2326)))))

(declare-fun b!6131066 () Bool)

(assert (=> b!6131066 (= e!3736987 call!508461)))

(declare-fun bm!508457 () Bool)

(assert (=> bm!508457 (= call!508460 ($colon$colon!1952 (exprs!5959 lt!2331882) (ite (or c!1102236 c!1102233) (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (h!70848 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun b!6131067 () Bool)

(assert (=> b!6131067 (= e!3736991 (nullable!6068 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun b!6131068 () Bool)

(assert (=> b!6131068 (= e!3736992 ((_ map or) call!508459 call!508458))))

(declare-fun b!6131069 () Bool)

(assert (=> b!6131069 (= e!3736987 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1920867 c!1102234) b!6131062))

(assert (= (and d!1920867 (not c!1102234)) b!6131064))

(assert (= (and b!6131064 c!1102237) b!6131061))

(assert (= (and b!6131064 (not c!1102237)) b!6131060))

(assert (= (and b!6131060 res!2541063) b!6131067))

(assert (= (and b!6131060 c!1102236) b!6131068))

(assert (= (and b!6131060 (not c!1102236)) b!6131059))

(assert (= (and b!6131059 c!1102233) b!6131065))

(assert (= (and b!6131059 (not c!1102233)) b!6131063))

(assert (= (and b!6131063 c!1102235) b!6131066))

(assert (= (and b!6131063 (not c!1102235)) b!6131069))

(assert (= (or b!6131065 b!6131066) bm!508453))

(assert (= (or b!6131065 b!6131066) bm!508452))

(assert (= (or b!6131068 bm!508453) bm!508457))

(assert (= (or b!6131068 bm!508452) bm!508454))

(assert (= (or b!6131061 bm!508454) bm!508456))

(assert (= (or b!6131061 b!6131068) bm!508455))

(declare-fun m!6974498 () Bool)

(assert (=> bm!508457 m!6974498))

(declare-fun m!6974500 () Bool)

(assert (=> b!6131067 m!6974500))

(assert (=> b!6131062 m!6974458))

(declare-fun m!6974502 () Bool)

(assert (=> bm!508456 m!6974502))

(declare-fun m!6974504 () Bool)

(assert (=> bm!508455 m!6974504))

(assert (=> b!6130360 d!1920867))

(assert (=> b!6130359 d!1920841))

(declare-fun bs!1520766 () Bool)

(declare-fun d!1920869 () Bool)

(assert (= bs!1520766 (and d!1920869 d!1920843)))

(declare-fun lambda!334013 () Int)

(assert (=> bs!1520766 (= lambda!334013 lambda!334009)))

(declare-fun bs!1520767 () Bool)

(assert (= bs!1520767 (and d!1920869 d!1920845)))

(assert (=> bs!1520767 (= lambda!334013 lambda!334012)))

(declare-fun bs!1520768 () Bool)

(assert (= bs!1520768 (and d!1920869 d!1920755)))

(assert (=> bs!1520768 (= lambda!334013 lambda!333967)))

(declare-fun bs!1520769 () Bool)

(assert (= bs!1520769 (and d!1920869 d!1920753)))

(assert (=> bs!1520769 (= lambda!334013 lambda!333964)))

(declare-fun bs!1520770 () Bool)

(assert (= bs!1520770 (and d!1920869 d!1920839)))

(assert (=> bs!1520770 (= lambda!334013 lambda!334006)))

(assert (=> d!1920869 (= (inv!83434 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343)))))) (forall!15195 (exprs!5959 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343)))))) lambda!334013))))

(declare-fun bs!1520771 () Bool)

(assert (= bs!1520771 d!1920869))

(declare-fun m!6974506 () Bool)

(assert (=> bs!1520771 m!6974506))

(assert (=> b!6130369 d!1920869))

(declare-fun b!6131074 () Bool)

(declare-fun e!3736995 () Bool)

(declare-fun tp!1713313 () Bool)

(declare-fun tp!1713314 () Bool)

(assert (=> b!6131074 (= e!3736995 (and tp!1713313 tp!1713314))))

(assert (=> b!6130350 (= tp!1713246 e!3736995)))

(assert (= (and b!6130350 ((_ is Cons!64400) (exprs!5959 setElem!41436))) b!6131074))

(declare-fun b!6131079 () Bool)

(declare-fun e!3736998 () Bool)

(declare-fun tp!1713317 () Bool)

(assert (=> b!6131079 (= e!3736998 (and tp_is_empty!41403 tp!1713317))))

(assert (=> b!6130366 (= tp!1713243 e!3736998)))

(assert (= (and b!6130366 ((_ is Cons!64401) (t!377994 s!2326))) b!6131079))

(declare-fun b!6131087 () Bool)

(declare-fun e!3737004 () Bool)

(declare-fun tp!1713322 () Bool)

(assert (=> b!6131087 (= e!3737004 tp!1713322)))

(declare-fun e!3737003 () Bool)

(declare-fun tp!1713323 () Bool)

(declare-fun b!6131086 () Bool)

(assert (=> b!6131086 (= e!3737003 (and (inv!83434 (h!70850 (t!377995 zl!343))) e!3737004 tp!1713323))))

(assert (=> b!6130346 (= tp!1713241 e!3737003)))

(assert (= b!6131086 b!6131087))

(assert (= (and b!6130346 ((_ is Cons!64402) (t!377995 zl!343))) b!6131086))

(declare-fun m!6974508 () Bool)

(assert (=> b!6131086 m!6974508))

(declare-fun e!3737007 () Bool)

(assert (=> b!6130348 (= tp!1713248 e!3737007)))

(declare-fun b!6131101 () Bool)

(declare-fun tp!1713338 () Bool)

(declare-fun tp!1713337 () Bool)

(assert (=> b!6131101 (= e!3737007 (and tp!1713338 tp!1713337))))

(declare-fun b!6131100 () Bool)

(declare-fun tp!1713335 () Bool)

(assert (=> b!6131100 (= e!3737007 tp!1713335)))

(declare-fun b!6131098 () Bool)

(assert (=> b!6131098 (= e!3737007 tp_is_empty!41403)))

(declare-fun b!6131099 () Bool)

(declare-fun tp!1713334 () Bool)

(declare-fun tp!1713336 () Bool)

(assert (=> b!6131099 (= e!3737007 (and tp!1713334 tp!1713336))))

(assert (= (and b!6130348 ((_ is ElementMatch!16075) (regOne!32662 r!7292))) b!6131098))

(assert (= (and b!6130348 ((_ is Concat!24920) (regOne!32662 r!7292))) b!6131099))

(assert (= (and b!6130348 ((_ is Star!16075) (regOne!32662 r!7292))) b!6131100))

(assert (= (and b!6130348 ((_ is Union!16075) (regOne!32662 r!7292))) b!6131101))

(declare-fun e!3737008 () Bool)

(assert (=> b!6130348 (= tp!1713244 e!3737008)))

(declare-fun b!6131105 () Bool)

(declare-fun tp!1713343 () Bool)

(declare-fun tp!1713342 () Bool)

(assert (=> b!6131105 (= e!3737008 (and tp!1713343 tp!1713342))))

(declare-fun b!6131104 () Bool)

(declare-fun tp!1713340 () Bool)

(assert (=> b!6131104 (= e!3737008 tp!1713340)))

(declare-fun b!6131102 () Bool)

(assert (=> b!6131102 (= e!3737008 tp_is_empty!41403)))

(declare-fun b!6131103 () Bool)

(declare-fun tp!1713339 () Bool)

(declare-fun tp!1713341 () Bool)

(assert (=> b!6131103 (= e!3737008 (and tp!1713339 tp!1713341))))

(assert (= (and b!6130348 ((_ is ElementMatch!16075) (regTwo!32662 r!7292))) b!6131102))

(assert (= (and b!6130348 ((_ is Concat!24920) (regTwo!32662 r!7292))) b!6131103))

(assert (= (and b!6130348 ((_ is Star!16075) (regTwo!32662 r!7292))) b!6131104))

(assert (= (and b!6130348 ((_ is Union!16075) (regTwo!32662 r!7292))) b!6131105))

(declare-fun e!3737009 () Bool)

(assert (=> b!6130362 (= tp!1713250 e!3737009)))

(declare-fun b!6131109 () Bool)

(declare-fun tp!1713348 () Bool)

(declare-fun tp!1713347 () Bool)

(assert (=> b!6131109 (= e!3737009 (and tp!1713348 tp!1713347))))

(declare-fun b!6131108 () Bool)

(declare-fun tp!1713345 () Bool)

(assert (=> b!6131108 (= e!3737009 tp!1713345)))

(declare-fun b!6131106 () Bool)

(assert (=> b!6131106 (= e!3737009 tp_is_empty!41403)))

(declare-fun b!6131107 () Bool)

(declare-fun tp!1713344 () Bool)

(declare-fun tp!1713346 () Bool)

(assert (=> b!6131107 (= e!3737009 (and tp!1713344 tp!1713346))))

(assert (= (and b!6130362 ((_ is ElementMatch!16075) (reg!16404 r!7292))) b!6131106))

(assert (= (and b!6130362 ((_ is Concat!24920) (reg!16404 r!7292))) b!6131107))

(assert (= (and b!6130362 ((_ is Star!16075) (reg!16404 r!7292))) b!6131108))

(assert (= (and b!6130362 ((_ is Union!16075) (reg!16404 r!7292))) b!6131109))

(declare-fun condSetEmpty!41442 () Bool)

(assert (=> setNonEmpty!41436 (= condSetEmpty!41442 (= setRest!41436 ((as const (Array Context!10918 Bool)) false)))))

(declare-fun setRes!41442 () Bool)

(assert (=> setNonEmpty!41436 (= tp!1713249 setRes!41442)))

(declare-fun setIsEmpty!41442 () Bool)

(assert (=> setIsEmpty!41442 setRes!41442))

(declare-fun setNonEmpty!41442 () Bool)

(declare-fun setElem!41442 () Context!10918)

(declare-fun e!3737012 () Bool)

(declare-fun tp!1713353 () Bool)

(assert (=> setNonEmpty!41442 (= setRes!41442 (and tp!1713353 (inv!83434 setElem!41442) e!3737012))))

(declare-fun setRest!41442 () (InoxSet Context!10918))

(assert (=> setNonEmpty!41442 (= setRest!41436 ((_ map or) (store ((as const (Array Context!10918 Bool)) false) setElem!41442 true) setRest!41442))))

(declare-fun b!6131114 () Bool)

(declare-fun tp!1713354 () Bool)

(assert (=> b!6131114 (= e!3737012 tp!1713354)))

(assert (= (and setNonEmpty!41436 condSetEmpty!41442) setIsEmpty!41442))

(assert (= (and setNonEmpty!41436 (not condSetEmpty!41442)) setNonEmpty!41442))

(assert (= setNonEmpty!41442 b!6131114))

(declare-fun m!6974510 () Bool)

(assert (=> setNonEmpty!41442 m!6974510))

(declare-fun e!3737013 () Bool)

(assert (=> b!6130344 (= tp!1713242 e!3737013)))

(declare-fun b!6131118 () Bool)

(declare-fun tp!1713359 () Bool)

(declare-fun tp!1713358 () Bool)

(assert (=> b!6131118 (= e!3737013 (and tp!1713359 tp!1713358))))

(declare-fun b!6131117 () Bool)

(declare-fun tp!1713356 () Bool)

(assert (=> b!6131117 (= e!3737013 tp!1713356)))

(declare-fun b!6131115 () Bool)

(assert (=> b!6131115 (= e!3737013 tp_is_empty!41403)))

(declare-fun b!6131116 () Bool)

(declare-fun tp!1713355 () Bool)

(declare-fun tp!1713357 () Bool)

(assert (=> b!6131116 (= e!3737013 (and tp!1713355 tp!1713357))))

(assert (= (and b!6130344 ((_ is ElementMatch!16075) (regOne!32663 r!7292))) b!6131115))

(assert (= (and b!6130344 ((_ is Concat!24920) (regOne!32663 r!7292))) b!6131116))

(assert (= (and b!6130344 ((_ is Star!16075) (regOne!32663 r!7292))) b!6131117))

(assert (= (and b!6130344 ((_ is Union!16075) (regOne!32663 r!7292))) b!6131118))

(declare-fun e!3737014 () Bool)

(assert (=> b!6130344 (= tp!1713245 e!3737014)))

(declare-fun b!6131122 () Bool)

(declare-fun tp!1713364 () Bool)

(declare-fun tp!1713363 () Bool)

(assert (=> b!6131122 (= e!3737014 (and tp!1713364 tp!1713363))))

(declare-fun b!6131121 () Bool)

(declare-fun tp!1713361 () Bool)

(assert (=> b!6131121 (= e!3737014 tp!1713361)))

(declare-fun b!6131119 () Bool)

(assert (=> b!6131119 (= e!3737014 tp_is_empty!41403)))

(declare-fun b!6131120 () Bool)

(declare-fun tp!1713360 () Bool)

(declare-fun tp!1713362 () Bool)

(assert (=> b!6131120 (= e!3737014 (and tp!1713360 tp!1713362))))

(assert (= (and b!6130344 ((_ is ElementMatch!16075) (regTwo!32663 r!7292))) b!6131119))

(assert (= (and b!6130344 ((_ is Concat!24920) (regTwo!32663 r!7292))) b!6131120))

(assert (= (and b!6130344 ((_ is Star!16075) (regTwo!32663 r!7292))) b!6131121))

(assert (= (and b!6130344 ((_ is Union!16075) (regTwo!32663 r!7292))) b!6131122))

(declare-fun b!6131123 () Bool)

(declare-fun e!3737015 () Bool)

(declare-fun tp!1713365 () Bool)

(declare-fun tp!1713366 () Bool)

(assert (=> b!6131123 (= e!3737015 (and tp!1713365 tp!1713366))))

(assert (=> b!6130343 (= tp!1713247 e!3737015)))

(assert (= (and b!6130343 ((_ is Cons!64400) (exprs!5959 (h!70850 zl!343)))) b!6131123))

(declare-fun b_lambda!233383 () Bool)

(assert (= b_lambda!233381 (or b!6130360 b_lambda!233383)))

(declare-fun bs!1520772 () Bool)

(declare-fun d!1920871 () Bool)

(assert (= bs!1520772 (and d!1920871 b!6130360)))

(assert (=> bs!1520772 (= (dynLambda!25370 lambda!333955 (h!70850 zl!343)) (derivationStepZipperUp!1249 (h!70850 zl!343) (h!70849 s!2326)))))

(assert (=> bs!1520772 m!6974002))

(assert (=> d!1920865 d!1920871))

(check-sat (not b!6130648) (not b!6130647) (not b!6130592) (not d!1920831) (not b!6130875) (not bm!508400) (not d!1920755) (not b!6130772) (not b!6130871) (not d!1920845) (not b!6130591) (not d!1920771) (not d!1920865) (not b!6131117) (not d!1920793) (not b!6130873) (not d!1920757) (not b!6130869) (not b!6131087) (not bm!508451) (not b!6130987) (not b!6131116) (not b!6130708) (not b!6131120) (not b!6130985) (not b!6130559) (not b!6130989) (not b!6131067) (not bm!508457) (not b!6130776) (not b!6131086) (not b!6130950) (not b!6130949) (not b!6131123) (not b!6131056) (not d!1920849) (not bm!508438) (not b!6130988) (not d!1920847) (not b!6131121) (not b!6130711) (not b!6130654) (not b!6131104) (not d!1920841) (not bm!508456) (not b!6130973) (not bm!508445) (not b!6130596) (not b!6131020) (not b!6130971) (not b!6131103) (not d!1920843) (not b!6130972) (not b!6130645) (not b!6130646) (not b!6131046) (not b!6130653) (not b!6131114) (not bm!508401) (not d!1920803) (not b!6130598) (not b!6130766) (not d!1920863) (not bm!508406) (not b!6130771) (not b!6130977) (not b_lambda!233383) (not bm!508446) (not b!6130597) (not d!1920869) (not b!6131057) (not b!6130768) (not d!1920839) (not d!1920855) (not b!6131079) (not b!6130975) (not b!6130554) (not d!1920835) (not b!6130643) (not b!6130767) (not bm!508455) (not bs!1520772) (not b!6131052) (not setNonEmpty!41442) (not bm!508410) (not bm!508407) (not b!6131099) (not bm!508450) (not b!6131101) (not bm!508440) (not b!6131107) (not b!6130868) (not d!1920745) (not d!1920773) (not b!6131047) (not bm!508444) (not b!6131105) (not b!6131074) (not b!6130599) (not bm!508449) (not d!1920833) (not b!6130595) tp_is_empty!41403 (not b!6130657) (not d!1920753) (not b!6131031) (not b!6130978) (not bm!508439) (not d!1920821) (not b!6131051) (not b!6131109) (not d!1920775) (not b!6130979) (not b!6130870) (not d!1920825) (not d!1920769) (not b!6131108) (not b!6131118) (not d!1920749) (not b!6130560) (not d!1920811) (not b!6131122) (not b!6131100))
(check-sat)
(get-model)

(declare-fun d!1921107 () Bool)

(declare-fun res!2541241 () Bool)

(declare-fun e!3737324 () Bool)

(assert (=> d!1921107 (=> res!2541241 e!3737324)))

(assert (=> d!1921107 (= res!2541241 ((_ is Nil!64400) (exprs!5959 setElem!41436)))))

(assert (=> d!1921107 (= (forall!15195 (exprs!5959 setElem!41436) lambda!333967) e!3737324)))

(declare-fun b!6131678 () Bool)

(declare-fun e!3737325 () Bool)

(assert (=> b!6131678 (= e!3737324 e!3737325)))

(declare-fun res!2541242 () Bool)

(assert (=> b!6131678 (=> (not res!2541242) (not e!3737325))))

(declare-fun dynLambda!25372 (Int Regex!16075) Bool)

(assert (=> b!6131678 (= res!2541242 (dynLambda!25372 lambda!333967 (h!70848 (exprs!5959 setElem!41436))))))

(declare-fun b!6131679 () Bool)

(assert (=> b!6131679 (= e!3737325 (forall!15195 (t!377993 (exprs!5959 setElem!41436)) lambda!333967))))

(assert (= (and d!1921107 (not res!2541241)) b!6131678))

(assert (= (and b!6131678 res!2541242) b!6131679))

(declare-fun b_lambda!233413 () Bool)

(assert (=> (not b_lambda!233413) (not b!6131678)))

(declare-fun m!6975006 () Bool)

(assert (=> b!6131678 m!6975006))

(declare-fun m!6975008 () Bool)

(assert (=> b!6131679 m!6975008))

(assert (=> d!1920755 d!1921107))

(declare-fun d!1921109 () Bool)

(assert (=> d!1921109 (= (isEmpty!36343 (tail!11755 s!2326)) ((_ is Nil!64401) (tail!11755 s!2326)))))

(assert (=> b!6130768 d!1921109))

(declare-fun d!1921111 () Bool)

(assert (=> d!1921111 (= (tail!11755 s!2326) (t!377994 s!2326))))

(assert (=> b!6130768 d!1921111))

(assert (=> d!1920847 d!1920849))

(assert (=> d!1920847 d!1920769))

(declare-fun d!1921113 () Bool)

(declare-fun e!3737328 () Bool)

(assert (=> d!1921113 (= (matchZipper!2087 ((_ map or) lt!2331875 lt!2331874) (t!377994 s!2326)) e!3737328)))

(declare-fun res!2541245 () Bool)

(assert (=> d!1921113 (=> res!2541245 e!3737328)))

(assert (=> d!1921113 (= res!2541245 (matchZipper!2087 lt!2331875 (t!377994 s!2326)))))

(assert (=> d!1921113 true))

(declare-fun _$48!1612 () Unit!157455)

(assert (=> d!1921113 (= (choose!45551 lt!2331875 lt!2331874 (t!377994 s!2326)) _$48!1612)))

(declare-fun b!6131682 () Bool)

(assert (=> b!6131682 (= e!3737328 (matchZipper!2087 lt!2331874 (t!377994 s!2326)))))

(assert (= (and d!1921113 (not res!2541245)) b!6131682))

(assert (=> d!1921113 m!6974054))

(assert (=> d!1921113 m!6974014))

(assert (=> b!6131682 m!6974012))

(assert (=> d!1920847 d!1921113))

(declare-fun d!1921115 () Bool)

(assert (=> d!1921115 (= (isEmpty!36340 (exprs!5959 (h!70850 zl!343))) ((_ is Nil!64400) (exprs!5959 (h!70850 zl!343))))))

(assert (=> b!6130599 d!1921115))

(declare-fun d!1921117 () Bool)

(assert (=> d!1921117 (= (isEmpty!36345 (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) Nil!64401 s!2326 s!2326)) (not ((_ is Some!15965) (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) Nil!64401 s!2326 s!2326))))))

(assert (=> d!1920835 d!1921117))

(declare-fun d!1921119 () Bool)

(assert (=> d!1921119 (= (isEmpty!36343 (t!377994 s!2326)) ((_ is Nil!64401) (t!377994 s!2326)))))

(assert (=> d!1920841 d!1921119))

(declare-fun d!1921121 () Bool)

(assert (=> d!1921121 (= (isEmpty!36340 (unfocusZipperList!1496 zl!343)) ((_ is Nil!64400) (unfocusZipperList!1496 zl!343)))))

(assert (=> b!6130972 d!1921121))

(assert (=> d!1920773 d!1921119))

(declare-fun d!1921123 () Bool)

(assert (=> d!1921123 (= (head!12670 s!2326) (h!70849 s!2326))))

(assert (=> b!6130772 d!1921123))

(declare-fun d!1921125 () Bool)

(declare-fun lambda!334050 () Int)

(declare-fun exists!2422 ((InoxSet Context!10918) Int) Bool)

(assert (=> d!1921125 (= (nullableZipper!1856 lt!2331873) (exists!2422 lt!2331873 lambda!334050))))

(declare-fun bs!1520931 () Bool)

(assert (= bs!1520931 d!1921125))

(declare-fun m!6975010 () Bool)

(assert (=> bs!1520931 m!6975010))

(assert (=> b!6130647 d!1921125))

(declare-fun d!1921127 () Bool)

(declare-fun c!1102374 () Bool)

(assert (=> d!1921127 (= c!1102374 (isEmpty!36343 (tail!11755 (t!377994 s!2326))))))

(declare-fun e!3737329 () Bool)

(assert (=> d!1921127 (= (matchZipper!2087 (derivationStepZipper!2048 lt!2331871 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))) e!3737329)))

(declare-fun b!6131683 () Bool)

(assert (=> b!6131683 (= e!3737329 (nullableZipper!1856 (derivationStepZipper!2048 lt!2331871 (head!12670 (t!377994 s!2326)))))))

(declare-fun b!6131684 () Bool)

(assert (=> b!6131684 (= e!3737329 (matchZipper!2087 (derivationStepZipper!2048 (derivationStepZipper!2048 lt!2331871 (head!12670 (t!377994 s!2326))) (head!12670 (tail!11755 (t!377994 s!2326)))) (tail!11755 (tail!11755 (t!377994 s!2326)))))))

(assert (= (and d!1921127 c!1102374) b!6131683))

(assert (= (and d!1921127 (not c!1102374)) b!6131684))

(assert (=> d!1921127 m!6974146))

(declare-fun m!6975012 () Bool)

(assert (=> d!1921127 m!6975012))

(assert (=> b!6131683 m!6974220))

(declare-fun m!6975014 () Bool)

(assert (=> b!6131683 m!6975014))

(assert (=> b!6131684 m!6974146))

(declare-fun m!6975016 () Bool)

(assert (=> b!6131684 m!6975016))

(assert (=> b!6131684 m!6974220))

(assert (=> b!6131684 m!6975016))

(declare-fun m!6975018 () Bool)

(assert (=> b!6131684 m!6975018))

(assert (=> b!6131684 m!6974146))

(declare-fun m!6975020 () Bool)

(assert (=> b!6131684 m!6975020))

(assert (=> b!6131684 m!6975018))

(assert (=> b!6131684 m!6975020))

(declare-fun m!6975022 () Bool)

(assert (=> b!6131684 m!6975022))

(assert (=> b!6130654 d!1921127))

(declare-fun bs!1520932 () Bool)

(declare-fun d!1921129 () Bool)

(assert (= bs!1520932 (and d!1921129 b!6130360)))

(declare-fun lambda!334053 () Int)

(assert (=> bs!1520932 (= (= (head!12670 (t!377994 s!2326)) (h!70849 s!2326)) (= lambda!334053 lambda!333955))))

(assert (=> d!1921129 true))

(assert (=> d!1921129 (= (derivationStepZipper!2048 lt!2331871 (head!12670 (t!377994 s!2326))) (flatMap!1580 lt!2331871 lambda!334053))))

(declare-fun bs!1520933 () Bool)

(assert (= bs!1520933 d!1921129))

(declare-fun m!6975024 () Bool)

(assert (=> bs!1520933 m!6975024))

(assert (=> b!6130654 d!1921129))

(declare-fun d!1921131 () Bool)

(assert (=> d!1921131 (= (head!12670 (t!377994 s!2326)) (h!70849 (t!377994 s!2326)))))

(assert (=> b!6130654 d!1921131))

(declare-fun d!1921133 () Bool)

(assert (=> d!1921133 (= (tail!11755 (t!377994 s!2326)) (t!377994 (t!377994 s!2326)))))

(assert (=> b!6130654 d!1921133))

(declare-fun d!1921135 () Bool)

(assert (=> d!1921135 (= (isEmpty!36343 s!2326) ((_ is Nil!64401) s!2326))))

(assert (=> bm!508410 d!1921135))

(declare-fun d!1921137 () Bool)

(assert (=> d!1921137 true))

(assert (=> d!1921137 true))

(declare-fun res!2541248 () Bool)

(assert (=> d!1921137 (= (choose!45553 lambda!333954) res!2541248)))

(assert (=> d!1920821 d!1921137))

(declare-fun d!1921139 () Bool)

(declare-fun res!2541249 () Bool)

(declare-fun e!3737330 () Bool)

(assert (=> d!1921139 (=> res!2541249 e!3737330)))

(assert (=> d!1921139 (= res!2541249 ((_ is Nil!64400) (exprs!5959 (h!70850 zl!343))))))

(assert (=> d!1921139 (= (forall!15195 (exprs!5959 (h!70850 zl!343)) lambda!334006) e!3737330)))

(declare-fun b!6131687 () Bool)

(declare-fun e!3737331 () Bool)

(assert (=> b!6131687 (= e!3737330 e!3737331)))

(declare-fun res!2541250 () Bool)

(assert (=> b!6131687 (=> (not res!2541250) (not e!3737331))))

(assert (=> b!6131687 (= res!2541250 (dynLambda!25372 lambda!334006 (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun b!6131688 () Bool)

(assert (=> b!6131688 (= e!3737331 (forall!15195 (t!377993 (exprs!5959 (h!70850 zl!343))) lambda!334006))))

(assert (= (and d!1921139 (not res!2541249)) b!6131687))

(assert (= (and b!6131687 res!2541250) b!6131688))

(declare-fun b_lambda!233415 () Bool)

(assert (=> (not b_lambda!233415) (not b!6131687)))

(declare-fun m!6975026 () Bool)

(assert (=> b!6131687 m!6975026))

(declare-fun m!6975028 () Bool)

(assert (=> b!6131688 m!6975028))

(assert (=> d!1920839 d!1921139))

(declare-fun d!1921141 () Bool)

(declare-fun res!2541251 () Bool)

(declare-fun e!3737332 () Bool)

(assert (=> d!1921141 (=> res!2541251 e!3737332)))

(assert (=> d!1921141 (= res!2541251 ((_ is Nil!64400) lt!2331966))))

(assert (=> d!1921141 (= (forall!15195 lt!2331966 lambda!334012) e!3737332)))

(declare-fun b!6131689 () Bool)

(declare-fun e!3737333 () Bool)

(assert (=> b!6131689 (= e!3737332 e!3737333)))

(declare-fun res!2541252 () Bool)

(assert (=> b!6131689 (=> (not res!2541252) (not e!3737333))))

(assert (=> b!6131689 (= res!2541252 (dynLambda!25372 lambda!334012 (h!70848 lt!2331966)))))

(declare-fun b!6131690 () Bool)

(assert (=> b!6131690 (= e!3737333 (forall!15195 (t!377993 lt!2331966) lambda!334012))))

(assert (= (and d!1921141 (not res!2541251)) b!6131689))

(assert (= (and b!6131689 res!2541252) b!6131690))

(declare-fun b_lambda!233417 () Bool)

(assert (=> (not b_lambda!233417) (not b!6131689)))

(declare-fun m!6975030 () Bool)

(assert (=> b!6131689 m!6975030))

(declare-fun m!6975032 () Bool)

(assert (=> b!6131690 m!6975032))

(assert (=> d!1920845 d!1921141))

(assert (=> b!6130985 d!1920753))

(declare-fun bs!1520934 () Bool)

(declare-fun d!1921143 () Bool)

(assert (= bs!1520934 (and d!1921143 d!1920843)))

(declare-fun lambda!334054 () Int)

(assert (=> bs!1520934 (= lambda!334054 lambda!334009)))

(declare-fun bs!1520935 () Bool)

(assert (= bs!1520935 (and d!1921143 d!1920845)))

(assert (=> bs!1520935 (= lambda!334054 lambda!334012)))

(declare-fun bs!1520936 () Bool)

(assert (= bs!1520936 (and d!1921143 d!1920755)))

(assert (=> bs!1520936 (= lambda!334054 lambda!333967)))

(declare-fun bs!1520937 () Bool)

(assert (= bs!1520937 (and d!1921143 d!1920753)))

(assert (=> bs!1520937 (= lambda!334054 lambda!333964)))

(declare-fun bs!1520938 () Bool)

(assert (= bs!1520938 (and d!1921143 d!1920839)))

(assert (=> bs!1520938 (= lambda!334054 lambda!334006)))

(declare-fun bs!1520939 () Bool)

(assert (= bs!1520939 (and d!1921143 d!1920869)))

(assert (=> bs!1520939 (= lambda!334054 lambda!334013)))

(declare-fun lt!2331993 () List!64524)

(assert (=> d!1921143 (forall!15195 lt!2331993 lambda!334054)))

(declare-fun e!3737334 () List!64524)

(assert (=> d!1921143 (= lt!2331993 e!3737334)))

(declare-fun c!1102377 () Bool)

(assert (=> d!1921143 (= c!1102377 ((_ is Cons!64402) (t!377995 zl!343)))))

(assert (=> d!1921143 (= (unfocusZipperList!1496 (t!377995 zl!343)) lt!2331993)))

(declare-fun b!6131691 () Bool)

(assert (=> b!6131691 (= e!3737334 (Cons!64400 (generalisedConcat!1672 (exprs!5959 (h!70850 (t!377995 zl!343)))) (unfocusZipperList!1496 (t!377995 (t!377995 zl!343)))))))

(declare-fun b!6131692 () Bool)

(assert (=> b!6131692 (= e!3737334 Nil!64400)))

(assert (= (and d!1921143 c!1102377) b!6131691))

(assert (= (and d!1921143 (not c!1102377)) b!6131692))

(declare-fun m!6975034 () Bool)

(assert (=> d!1921143 m!6975034))

(declare-fun m!6975036 () Bool)

(assert (=> b!6131691 m!6975036))

(declare-fun m!6975038 () Bool)

(assert (=> b!6131691 m!6975038))

(assert (=> b!6130985 d!1921143))

(declare-fun b!6131693 () Bool)

(declare-fun e!3737340 () (InoxSet Context!10918))

(declare-fun e!3737336 () (InoxSet Context!10918))

(assert (=> b!6131693 (= e!3737340 e!3737336)))

(declare-fun c!1102378 () Bool)

(assert (=> b!6131693 (= c!1102378 ((_ is Concat!24920) (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun bm!508560 () Bool)

(declare-fun call!508569 () (InoxSet Context!10918))

(declare-fun call!508566 () (InoxSet Context!10918))

(assert (=> bm!508560 (= call!508569 call!508566)))

(declare-fun b!6131694 () Bool)

(declare-fun c!1102381 () Bool)

(declare-fun e!3737339 () Bool)

(assert (=> b!6131694 (= c!1102381 e!3737339)))

(declare-fun res!2541253 () Bool)

(assert (=> b!6131694 (=> (not res!2541253) (not e!3737339))))

(assert (=> b!6131694 (= res!2541253 ((_ is Concat!24920) (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun e!3737338 () (InoxSet Context!10918))

(assert (=> b!6131694 (= e!3737338 e!3737340)))

(declare-fun bm!508562 () Bool)

(declare-fun call!508565 () (InoxSet Context!10918))

(assert (=> bm!508562 (= call!508566 call!508565)))

(declare-fun b!6131695 () Bool)

(declare-fun call!508567 () (InoxSet Context!10918))

(assert (=> b!6131695 (= e!3737338 ((_ map or) call!508567 call!508565))))

(declare-fun e!3737337 () (InoxSet Context!10918))

(declare-fun b!6131696 () Bool)

(assert (=> b!6131696 (= e!3737337 (store ((as const (Array Context!10918 Bool)) false) (ite (or c!1102237 c!1102236) lt!2331882 (Context!10919 call!508462)) true))))

(declare-fun c!1102380 () Bool)

(declare-fun b!6131697 () Bool)

(assert (=> b!6131697 (= c!1102380 ((_ is Star!16075) (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun e!3737335 () (InoxSet Context!10918))

(assert (=> b!6131697 (= e!3737336 e!3737335)))

(declare-fun b!6131698 () Bool)

(assert (=> b!6131698 (= e!3737337 e!3737338)))

(declare-fun c!1102382 () Bool)

(assert (=> b!6131698 (= c!1102382 ((_ is Union!16075) (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun call!508568 () List!64524)

(declare-fun bm!508563 () Bool)

(assert (=> bm!508563 (= call!508567 (derivationStepZipperDown!1323 (ite c!1102382 (regOne!32663 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))) (regOne!32662 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343))))))))) (ite c!1102382 (ite (or c!1102237 c!1102236) lt!2331882 (Context!10919 call!508462)) (Context!10919 call!508568)) (h!70849 s!2326)))))

(declare-fun b!6131699 () Bool)

(assert (=> b!6131699 (= e!3737336 call!508569)))

(declare-fun bm!508561 () Bool)

(declare-fun call!508570 () List!64524)

(assert (=> bm!508561 (= call!508570 call!508568)))

(declare-fun d!1921145 () Bool)

(declare-fun c!1102379 () Bool)

(assert (=> d!1921145 (= c!1102379 (and ((_ is ElementMatch!16075) (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))) (= (c!1102031 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))) (h!70849 s!2326))))))

(assert (=> d!1921145 (= (derivationStepZipperDown!1323 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343))))))) (ite (or c!1102237 c!1102236) lt!2331882 (Context!10919 call!508462)) (h!70849 s!2326)) e!3737337)))

(declare-fun bm!508564 () Bool)

(assert (=> bm!508564 (= call!508565 (derivationStepZipperDown!1323 (ite c!1102382 (regTwo!32663 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))) (ite c!1102381 (regTwo!32662 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))) (ite c!1102378 (regOne!32662 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))) (reg!16404 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343))))))))))) (ite (or c!1102382 c!1102381) (ite (or c!1102237 c!1102236) lt!2331882 (Context!10919 call!508462)) (Context!10919 call!508570)) (h!70849 s!2326)))))

(declare-fun b!6131700 () Bool)

(assert (=> b!6131700 (= e!3737335 call!508569)))

(declare-fun bm!508565 () Bool)

(assert (=> bm!508565 (= call!508568 ($colon$colon!1952 (exprs!5959 (ite (or c!1102237 c!1102236) lt!2331882 (Context!10919 call!508462))) (ite (or c!1102381 c!1102378) (regTwo!32662 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343)))))))) (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343))))))))))))

(declare-fun b!6131701 () Bool)

(assert (=> b!6131701 (= e!3737339 (nullable!6068 (regOne!32662 (ite c!1102237 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102236 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102233 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343))))))))))))

(declare-fun b!6131702 () Bool)

(assert (=> b!6131702 (= e!3737340 ((_ map or) call!508567 call!508566))))

(declare-fun b!6131703 () Bool)

(assert (=> b!6131703 (= e!3737335 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921145 c!1102379) b!6131696))

(assert (= (and d!1921145 (not c!1102379)) b!6131698))

(assert (= (and b!6131698 c!1102382) b!6131695))

(assert (= (and b!6131698 (not c!1102382)) b!6131694))

(assert (= (and b!6131694 res!2541253) b!6131701))

(assert (= (and b!6131694 c!1102381) b!6131702))

(assert (= (and b!6131694 (not c!1102381)) b!6131693))

(assert (= (and b!6131693 c!1102378) b!6131699))

(assert (= (and b!6131693 (not c!1102378)) b!6131697))

(assert (= (and b!6131697 c!1102380) b!6131700))

(assert (= (and b!6131697 (not c!1102380)) b!6131703))

(assert (= (or b!6131699 b!6131700) bm!508561))

(assert (= (or b!6131699 b!6131700) bm!508560))

(assert (= (or b!6131702 bm!508561) bm!508565))

(assert (= (or b!6131702 bm!508560) bm!508562))

(assert (= (or b!6131695 bm!508562) bm!508564))

(assert (= (or b!6131695 b!6131702) bm!508563))

(declare-fun m!6975040 () Bool)

(assert (=> bm!508565 m!6975040))

(declare-fun m!6975042 () Bool)

(assert (=> b!6131701 m!6975042))

(declare-fun m!6975044 () Bool)

(assert (=> b!6131696 m!6975044))

(declare-fun m!6975046 () Bool)

(assert (=> bm!508564 m!6975046))

(declare-fun m!6975048 () Bool)

(assert (=> bm!508563 m!6975048))

(assert (=> bm!508456 d!1921145))

(declare-fun b!6131704 () Bool)

(declare-fun res!2541255 () Bool)

(declare-fun e!3737342 () Bool)

(assert (=> b!6131704 (=> (not res!2541255) (not e!3737342))))

(declare-fun call!508573 () Bool)

(assert (=> b!6131704 (= res!2541255 call!508573)))

(declare-fun e!3737347 () Bool)

(assert (=> b!6131704 (= e!3737347 e!3737342)))

(declare-fun bm!508566 () Bool)

(declare-fun call!508572 () Bool)

(assert (=> bm!508566 (= call!508573 call!508572)))

(declare-fun d!1921147 () Bool)

(declare-fun res!2541258 () Bool)

(declare-fun e!3737346 () Bool)

(assert (=> d!1921147 (=> res!2541258 e!3737346)))

(assert (=> d!1921147 (= res!2541258 ((_ is ElementMatch!16075) lt!2331905))))

(assert (=> d!1921147 (= (validRegex!7811 lt!2331905) e!3737346)))

(declare-fun bm!508567 () Bool)

(declare-fun call!508571 () Bool)

(declare-fun c!1102384 () Bool)

(assert (=> bm!508567 (= call!508571 (validRegex!7811 (ite c!1102384 (regTwo!32663 lt!2331905) (regTwo!32662 lt!2331905))))))

(declare-fun b!6131705 () Bool)

(declare-fun e!3737341 () Bool)

(assert (=> b!6131705 (= e!3737341 call!508571)))

(declare-fun b!6131706 () Bool)

(declare-fun res!2541256 () Bool)

(declare-fun e!3737345 () Bool)

(assert (=> b!6131706 (=> res!2541256 e!3737345)))

(assert (=> b!6131706 (= res!2541256 (not ((_ is Concat!24920) lt!2331905)))))

(assert (=> b!6131706 (= e!3737347 e!3737345)))

(declare-fun b!6131707 () Bool)

(assert (=> b!6131707 (= e!3737345 e!3737341)))

(declare-fun res!2541257 () Bool)

(assert (=> b!6131707 (=> (not res!2541257) (not e!3737341))))

(assert (=> b!6131707 (= res!2541257 call!508573)))

(declare-fun b!6131708 () Bool)

(declare-fun e!3737343 () Bool)

(assert (=> b!6131708 (= e!3737343 e!3737347)))

(assert (=> b!6131708 (= c!1102384 ((_ is Union!16075) lt!2331905))))

(declare-fun bm!508568 () Bool)

(declare-fun c!1102383 () Bool)

(assert (=> bm!508568 (= call!508572 (validRegex!7811 (ite c!1102383 (reg!16404 lt!2331905) (ite c!1102384 (regOne!32663 lt!2331905) (regOne!32662 lt!2331905)))))))

(declare-fun b!6131709 () Bool)

(assert (=> b!6131709 (= e!3737346 e!3737343)))

(assert (=> b!6131709 (= c!1102383 ((_ is Star!16075) lt!2331905))))

(declare-fun b!6131710 () Bool)

(assert (=> b!6131710 (= e!3737342 call!508571)))

(declare-fun b!6131711 () Bool)

(declare-fun e!3737344 () Bool)

(assert (=> b!6131711 (= e!3737343 e!3737344)))

(declare-fun res!2541254 () Bool)

(assert (=> b!6131711 (= res!2541254 (not (nullable!6068 (reg!16404 lt!2331905))))))

(assert (=> b!6131711 (=> (not res!2541254) (not e!3737344))))

(declare-fun b!6131712 () Bool)

(assert (=> b!6131712 (= e!3737344 call!508572)))

(assert (= (and d!1921147 (not res!2541258)) b!6131709))

(assert (= (and b!6131709 c!1102383) b!6131711))

(assert (= (and b!6131709 (not c!1102383)) b!6131708))

(assert (= (and b!6131711 res!2541254) b!6131712))

(assert (= (and b!6131708 c!1102384) b!6131704))

(assert (= (and b!6131708 (not c!1102384)) b!6131706))

(assert (= (and b!6131704 res!2541255) b!6131710))

(assert (= (and b!6131706 (not res!2541256)) b!6131707))

(assert (= (and b!6131707 res!2541257) b!6131705))

(assert (= (or b!6131710 b!6131705) bm!508567))

(assert (= (or b!6131704 b!6131707) bm!508566))

(assert (= (or b!6131712 bm!508566) bm!508568))

(declare-fun m!6975050 () Bool)

(assert (=> bm!508567 m!6975050))

(declare-fun m!6975052 () Bool)

(assert (=> bm!508568 m!6975052))

(declare-fun m!6975054 () Bool)

(assert (=> b!6131711 m!6975054))

(assert (=> d!1920753 d!1921147))

(declare-fun d!1921149 () Bool)

(declare-fun res!2541259 () Bool)

(declare-fun e!3737348 () Bool)

(assert (=> d!1921149 (=> res!2541259 e!3737348)))

(assert (=> d!1921149 (= res!2541259 ((_ is Nil!64400) (exprs!5959 (h!70850 zl!343))))))

(assert (=> d!1921149 (= (forall!15195 (exprs!5959 (h!70850 zl!343)) lambda!333964) e!3737348)))

(declare-fun b!6131713 () Bool)

(declare-fun e!3737349 () Bool)

(assert (=> b!6131713 (= e!3737348 e!3737349)))

(declare-fun res!2541260 () Bool)

(assert (=> b!6131713 (=> (not res!2541260) (not e!3737349))))

(assert (=> b!6131713 (= res!2541260 (dynLambda!25372 lambda!333964 (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun b!6131714 () Bool)

(assert (=> b!6131714 (= e!3737349 (forall!15195 (t!377993 (exprs!5959 (h!70850 zl!343))) lambda!333964))))

(assert (= (and d!1921149 (not res!2541259)) b!6131713))

(assert (= (and b!6131713 res!2541260) b!6131714))

(declare-fun b_lambda!233419 () Bool)

(assert (=> (not b_lambda!233419) (not b!6131713)))

(declare-fun m!6975056 () Bool)

(assert (=> b!6131713 m!6975056))

(declare-fun m!6975058 () Bool)

(assert (=> b!6131714 m!6975058))

(assert (=> d!1920753 d!1921149))

(assert (=> d!1920749 d!1921119))

(declare-fun b!6131715 () Bool)

(declare-fun e!3737355 () (InoxSet Context!10918))

(declare-fun e!3737351 () (InoxSet Context!10918))

(assert (=> b!6131715 (= e!3737355 e!3737351)))

(declare-fun c!1102385 () Bool)

(assert (=> b!6131715 (= c!1102385 ((_ is Concat!24920) (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))))))

(declare-fun bm!508569 () Bool)

(declare-fun call!508578 () (InoxSet Context!10918))

(declare-fun call!508575 () (InoxSet Context!10918))

(assert (=> bm!508569 (= call!508578 call!508575)))

(declare-fun b!6131716 () Bool)

(declare-fun c!1102388 () Bool)

(declare-fun e!3737354 () Bool)

(assert (=> b!6131716 (= c!1102388 e!3737354)))

(declare-fun res!2541261 () Bool)

(assert (=> b!6131716 (=> (not res!2541261) (not e!3737354))))

(assert (=> b!6131716 (= res!2541261 ((_ is Concat!24920) (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))))))

(declare-fun e!3737353 () (InoxSet Context!10918))

(assert (=> b!6131716 (= e!3737353 e!3737355)))

(declare-fun bm!508571 () Bool)

(declare-fun call!508574 () (InoxSet Context!10918))

(assert (=> bm!508571 (= call!508575 call!508574)))

(declare-fun b!6131717 () Bool)

(declare-fun call!508576 () (InoxSet Context!10918))

(assert (=> b!6131717 (= e!3737353 ((_ map or) call!508576 call!508574))))

(declare-fun b!6131718 () Bool)

(declare-fun e!3737352 () (InoxSet Context!10918))

(assert (=> b!6131718 (= e!3737352 (store ((as const (Array Context!10918 Bool)) false) (ite (or c!1102222 c!1102221) lt!2331882 (Context!10919 call!508451)) true))))

(declare-fun b!6131719 () Bool)

(declare-fun c!1102387 () Bool)

(assert (=> b!6131719 (= c!1102387 ((_ is Star!16075) (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))))))

(declare-fun e!3737350 () (InoxSet Context!10918))

(assert (=> b!6131719 (= e!3737351 e!3737350)))

(declare-fun b!6131720 () Bool)

(assert (=> b!6131720 (= e!3737352 e!3737353)))

(declare-fun c!1102389 () Bool)

(assert (=> b!6131720 (= c!1102389 ((_ is Union!16075) (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))))))

(declare-fun bm!508572 () Bool)

(declare-fun call!508577 () List!64524)

(assert (=> bm!508572 (= call!508576 (derivationStepZipperDown!1323 (ite c!1102389 (regOne!32663 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))) (regOne!32662 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292)))))))) (ite c!1102389 (ite (or c!1102222 c!1102221) lt!2331882 (Context!10919 call!508451)) (Context!10919 call!508577)) (h!70849 s!2326)))))

(declare-fun b!6131721 () Bool)

(assert (=> b!6131721 (= e!3737351 call!508578)))

(declare-fun bm!508570 () Bool)

(declare-fun call!508579 () List!64524)

(assert (=> bm!508570 (= call!508579 call!508577)))

(declare-fun d!1921151 () Bool)

(declare-fun c!1102386 () Bool)

(assert (=> d!1921151 (= c!1102386 (and ((_ is ElementMatch!16075) (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))) (= (c!1102031 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))) (h!70849 s!2326))))))

(assert (=> d!1921151 (= (derivationStepZipperDown!1323 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292)))))) (ite (or c!1102222 c!1102221) lt!2331882 (Context!10919 call!508451)) (h!70849 s!2326)) e!3737352)))

(declare-fun bm!508573 () Bool)

(assert (=> bm!508573 (= call!508574 (derivationStepZipperDown!1323 (ite c!1102389 (regTwo!32663 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))) (ite c!1102388 (regTwo!32662 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))) (ite c!1102385 (regOne!32662 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))) (reg!16404 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292)))))))))) (ite (or c!1102389 c!1102388) (ite (or c!1102222 c!1102221) lt!2331882 (Context!10919 call!508451)) (Context!10919 call!508579)) (h!70849 s!2326)))))

(declare-fun b!6131722 () Bool)

(assert (=> b!6131722 (= e!3737350 call!508578)))

(declare-fun bm!508574 () Bool)

(assert (=> bm!508574 (= call!508577 ($colon$colon!1952 (exprs!5959 (ite (or c!1102222 c!1102221) lt!2331882 (Context!10919 call!508451))) (ite (or c!1102388 c!1102385) (regTwo!32662 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292))))))) (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292)))))))))))

(declare-fun b!6131723 () Bool)

(assert (=> b!6131723 (= e!3737354 (nullable!6068 (regOne!32662 (ite c!1102222 (regTwo!32663 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102221 (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (ite c!1102218 (regOne!32662 (regOne!32663 (regOne!32662 r!7292))) (reg!16404 (regOne!32663 (regOne!32662 r!7292)))))))))))

(declare-fun b!6131724 () Bool)

(assert (=> b!6131724 (= e!3737355 ((_ map or) call!508576 call!508575))))

(declare-fun b!6131725 () Bool)

(assert (=> b!6131725 (= e!3737350 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921151 c!1102386) b!6131718))

(assert (= (and d!1921151 (not c!1102386)) b!6131720))

(assert (= (and b!6131720 c!1102389) b!6131717))

(assert (= (and b!6131720 (not c!1102389)) b!6131716))

(assert (= (and b!6131716 res!2541261) b!6131723))

(assert (= (and b!6131716 c!1102388) b!6131724))

(assert (= (and b!6131716 (not c!1102388)) b!6131715))

(assert (= (and b!6131715 c!1102385) b!6131721))

(assert (= (and b!6131715 (not c!1102385)) b!6131719))

(assert (= (and b!6131719 c!1102387) b!6131722))

(assert (= (and b!6131719 (not c!1102387)) b!6131725))

(assert (= (or b!6131721 b!6131722) bm!508570))

(assert (= (or b!6131721 b!6131722) bm!508569))

(assert (= (or b!6131724 bm!508570) bm!508574))

(assert (= (or b!6131724 bm!508569) bm!508571))

(assert (= (or b!6131717 bm!508571) bm!508573))

(assert (= (or b!6131717 b!6131724) bm!508572))

(declare-fun m!6975060 () Bool)

(assert (=> bm!508574 m!6975060))

(declare-fun m!6975062 () Bool)

(assert (=> b!6131723 m!6975062))

(declare-fun m!6975064 () Bool)

(assert (=> b!6131718 m!6975064))

(declare-fun m!6975066 () Bool)

(assert (=> bm!508573 m!6975066))

(declare-fun m!6975068 () Bool)

(assert (=> bm!508572 m!6975068))

(assert (=> bm!508445 d!1921151))

(declare-fun d!1921153 () Bool)

(declare-fun c!1102390 () Bool)

(assert (=> d!1921153 (= c!1102390 (isEmpty!36343 (t!377994 s!2326)))))

(declare-fun e!3737356 () Bool)

(assert (=> d!1921153 (= (matchZipper!2087 ((_ map or) lt!2331871 lt!2331884) (t!377994 s!2326)) e!3737356)))

(declare-fun b!6131726 () Bool)

(assert (=> b!6131726 (= e!3737356 (nullableZipper!1856 ((_ map or) lt!2331871 lt!2331884)))))

(declare-fun b!6131727 () Bool)

(assert (=> b!6131727 (= e!3737356 (matchZipper!2087 (derivationStepZipper!2048 ((_ map or) lt!2331871 lt!2331884) (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))))))

(assert (= (and d!1921153 c!1102390) b!6131726))

(assert (= (and d!1921153 (not c!1102390)) b!6131727))

(assert (=> d!1921153 m!6974138))

(declare-fun m!6975070 () Bool)

(assert (=> b!6131726 m!6975070))

(assert (=> b!6131727 m!6974142))

(assert (=> b!6131727 m!6974142))

(declare-fun m!6975072 () Bool)

(assert (=> b!6131727 m!6975072))

(assert (=> b!6131727 m!6974146))

(assert (=> b!6131727 m!6975072))

(assert (=> b!6131727 m!6974146))

(declare-fun m!6975074 () Bool)

(assert (=> b!6131727 m!6975074))

(assert (=> d!1920775 d!1921153))

(assert (=> d!1920775 d!1920773))

(declare-fun e!3737357 () Bool)

(declare-fun d!1921155 () Bool)

(assert (=> d!1921155 (= (matchZipper!2087 ((_ map or) lt!2331871 lt!2331884) (t!377994 s!2326)) e!3737357)))

(declare-fun res!2541262 () Bool)

(assert (=> d!1921155 (=> res!2541262 e!3737357)))

(assert (=> d!1921155 (= res!2541262 (matchZipper!2087 lt!2331871 (t!377994 s!2326)))))

(assert (=> d!1921155 true))

(declare-fun _$48!1613 () Unit!157455)

(assert (=> d!1921155 (= (choose!45551 lt!2331871 lt!2331884 (t!377994 s!2326)) _$48!1613)))

(declare-fun b!6131728 () Bool)

(assert (=> b!6131728 (= e!3737357 (matchZipper!2087 lt!2331884 (t!377994 s!2326)))))

(assert (= (and d!1921155 (not res!2541262)) b!6131728))

(assert (=> d!1921155 m!6974228))

(assert (=> d!1921155 m!6974018))

(assert (=> b!6131728 m!6973992))

(assert (=> d!1920775 d!1921155))

(declare-fun d!1921157 () Bool)

(declare-fun e!3737363 () Bool)

(assert (=> d!1921157 e!3737363))

(declare-fun res!2541267 () Bool)

(assert (=> d!1921157 (=> (not res!2541267) (not e!3737363))))

(declare-fun lt!2331996 () List!64525)

(declare-fun content!11975 (List!64525) (InoxSet C!32420))

(assert (=> d!1921157 (= res!2541267 (= (content!11975 lt!2331996) ((_ map or) (content!11975 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401))) (content!11975 (t!377994 s!2326)))))))

(declare-fun e!3737362 () List!64525)

(assert (=> d!1921157 (= lt!2331996 e!3737362)))

(declare-fun c!1102393 () Bool)

(assert (=> d!1921157 (= c!1102393 ((_ is Nil!64401) (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401))))))

(assert (=> d!1921157 (= (++!14161 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (t!377994 s!2326)) lt!2331996)))

(declare-fun b!6131740 () Bool)

(assert (=> b!6131740 (= e!3737363 (or (not (= (t!377994 s!2326) Nil!64401)) (= lt!2331996 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)))))))

(declare-fun b!6131737 () Bool)

(assert (=> b!6131737 (= e!3737362 (t!377994 s!2326))))

(declare-fun b!6131738 () Bool)

(assert (=> b!6131738 (= e!3737362 (Cons!64401 (h!70849 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401))) (++!14161 (t!377994 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401))) (t!377994 s!2326))))))

(declare-fun b!6131739 () Bool)

(declare-fun res!2541268 () Bool)

(assert (=> b!6131739 (=> (not res!2541268) (not e!3737363))))

(declare-fun size!40218 (List!64525) Int)

(assert (=> b!6131739 (= res!2541268 (= (size!40218 lt!2331996) (+ (size!40218 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401))) (size!40218 (t!377994 s!2326)))))))

(assert (= (and d!1921157 c!1102393) b!6131737))

(assert (= (and d!1921157 (not c!1102393)) b!6131738))

(assert (= (and d!1921157 res!2541267) b!6131739))

(assert (= (and b!6131739 res!2541268) b!6131740))

(declare-fun m!6975076 () Bool)

(assert (=> d!1921157 m!6975076))

(assert (=> d!1921157 m!6974358))

(declare-fun m!6975078 () Bool)

(assert (=> d!1921157 m!6975078))

(declare-fun m!6975080 () Bool)

(assert (=> d!1921157 m!6975080))

(declare-fun m!6975082 () Bool)

(assert (=> b!6131738 m!6975082))

(declare-fun m!6975084 () Bool)

(assert (=> b!6131739 m!6975084))

(assert (=> b!6131739 m!6974358))

(declare-fun m!6975086 () Bool)

(assert (=> b!6131739 m!6975086))

(declare-fun m!6975088 () Bool)

(assert (=> b!6131739 m!6975088))

(assert (=> b!6130868 d!1921157))

(declare-fun d!1921159 () Bool)

(declare-fun e!3737365 () Bool)

(assert (=> d!1921159 e!3737365))

(declare-fun res!2541269 () Bool)

(assert (=> d!1921159 (=> (not res!2541269) (not e!3737365))))

(declare-fun lt!2331997 () List!64525)

(assert (=> d!1921159 (= res!2541269 (= (content!11975 lt!2331997) ((_ map or) (content!11975 Nil!64401) (content!11975 (Cons!64401 (h!70849 s!2326) Nil!64401)))))))

(declare-fun e!3737364 () List!64525)

(assert (=> d!1921159 (= lt!2331997 e!3737364)))

(declare-fun c!1102394 () Bool)

(assert (=> d!1921159 (= c!1102394 ((_ is Nil!64401) Nil!64401))))

(assert (=> d!1921159 (= (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) lt!2331997)))

(declare-fun b!6131744 () Bool)

(assert (=> b!6131744 (= e!3737365 (or (not (= (Cons!64401 (h!70849 s!2326) Nil!64401) Nil!64401)) (= lt!2331997 Nil!64401)))))

(declare-fun b!6131741 () Bool)

(assert (=> b!6131741 (= e!3737364 (Cons!64401 (h!70849 s!2326) Nil!64401))))

(declare-fun b!6131742 () Bool)

(assert (=> b!6131742 (= e!3737364 (Cons!64401 (h!70849 Nil!64401) (++!14161 (t!377994 Nil!64401) (Cons!64401 (h!70849 s!2326) Nil!64401))))))

(declare-fun b!6131743 () Bool)

(declare-fun res!2541270 () Bool)

(assert (=> b!6131743 (=> (not res!2541270) (not e!3737365))))

(assert (=> b!6131743 (= res!2541270 (= (size!40218 lt!2331997) (+ (size!40218 Nil!64401) (size!40218 (Cons!64401 (h!70849 s!2326) Nil!64401)))))))

(assert (= (and d!1921159 c!1102394) b!6131741))

(assert (= (and d!1921159 (not c!1102394)) b!6131742))

(assert (= (and d!1921159 res!2541269) b!6131743))

(assert (= (and b!6131743 res!2541270) b!6131744))

(declare-fun m!6975090 () Bool)

(assert (=> d!1921159 m!6975090))

(declare-fun m!6975092 () Bool)

(assert (=> d!1921159 m!6975092))

(declare-fun m!6975094 () Bool)

(assert (=> d!1921159 m!6975094))

(declare-fun m!6975096 () Bool)

(assert (=> b!6131742 m!6975096))

(declare-fun m!6975098 () Bool)

(assert (=> b!6131743 m!6975098))

(declare-fun m!6975100 () Bool)

(assert (=> b!6131743 m!6975100))

(declare-fun m!6975102 () Bool)

(assert (=> b!6131743 m!6975102))

(assert (=> b!6130868 d!1921159))

(declare-fun d!1921161 () Bool)

(assert (=> d!1921161 (= (++!14161 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (t!377994 s!2326)) s!2326)))

(declare-fun lt!2332000 () Unit!157455)

(declare-fun choose!45560 (List!64525 C!32420 List!64525 List!64525) Unit!157455)

(assert (=> d!1921161 (= lt!2332000 (choose!45560 Nil!64401 (h!70849 s!2326) (t!377994 s!2326) s!2326))))

(assert (=> d!1921161 (= (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) (t!377994 s!2326))) s!2326)))

(assert (=> d!1921161 (= (lemmaMoveElementToOtherListKeepsConcatEq!2256 Nil!64401 (h!70849 s!2326) (t!377994 s!2326) s!2326) lt!2332000)))

(declare-fun bs!1520940 () Bool)

(assert (= bs!1520940 d!1921161))

(assert (=> bs!1520940 m!6974358))

(assert (=> bs!1520940 m!6974358))

(assert (=> bs!1520940 m!6974360))

(declare-fun m!6975104 () Bool)

(assert (=> bs!1520940 m!6975104))

(declare-fun m!6975106 () Bool)

(assert (=> bs!1520940 m!6975106))

(assert (=> b!6130868 d!1921161))

(declare-fun d!1921163 () Bool)

(declare-fun e!3737370 () Bool)

(assert (=> d!1921163 e!3737370))

(declare-fun res!2541271 () Bool)

(assert (=> d!1921163 (=> res!2541271 e!3737370)))

(declare-fun e!3737367 () Bool)

(assert (=> d!1921163 (= res!2541271 e!3737367)))

(declare-fun res!2541272 () Bool)

(assert (=> d!1921163 (=> (not res!2541272) (not e!3737367))))

(declare-fun lt!2332001 () Option!15966)

(assert (=> d!1921163 (= res!2541272 (isDefined!12669 lt!2332001))))

(declare-fun e!3737366 () Option!15966)

(assert (=> d!1921163 (= lt!2332001 e!3737366)))

(declare-fun c!1102396 () Bool)

(declare-fun e!3737369 () Bool)

(assert (=> d!1921163 (= c!1102396 e!3737369)))

(declare-fun res!2541275 () Bool)

(assert (=> d!1921163 (=> (not res!2541275) (not e!3737369))))

(assert (=> d!1921163 (= res!2541275 (matchR!8258 (regOne!32662 r!7292) (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401))))))

(assert (=> d!1921163 (validRegex!7811 (regOne!32662 r!7292))))

(assert (=> d!1921163 (= (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (t!377994 s!2326) s!2326) lt!2332001)))

(declare-fun b!6131745 () Bool)

(assert (=> b!6131745 (= e!3737366 (Some!15965 (tuple2!66109 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (t!377994 s!2326))))))

(declare-fun b!6131746 () Bool)

(declare-fun lt!2332003 () Unit!157455)

(declare-fun lt!2332002 () Unit!157455)

(assert (=> b!6131746 (= lt!2332003 lt!2332002)))

(assert (=> b!6131746 (= (++!14161 (++!14161 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (Cons!64401 (h!70849 (t!377994 s!2326)) Nil!64401)) (t!377994 (t!377994 s!2326))) s!2326)))

(assert (=> b!6131746 (= lt!2332002 (lemmaMoveElementToOtherListKeepsConcatEq!2256 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (h!70849 (t!377994 s!2326)) (t!377994 (t!377994 s!2326)) s!2326))))

(declare-fun e!3737368 () Option!15966)

(assert (=> b!6131746 (= e!3737368 (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) (++!14161 (++!14161 Nil!64401 (Cons!64401 (h!70849 s!2326) Nil!64401)) (Cons!64401 (h!70849 (t!377994 s!2326)) Nil!64401)) (t!377994 (t!377994 s!2326)) s!2326))))

(declare-fun b!6131747 () Bool)

(declare-fun res!2541274 () Bool)

(assert (=> b!6131747 (=> (not res!2541274) (not e!3737367))))

(assert (=> b!6131747 (= res!2541274 (matchR!8258 (regTwo!32662 r!7292) (_2!36357 (get!22214 lt!2332001))))))

(declare-fun b!6131748 () Bool)

(assert (=> b!6131748 (= e!3737370 (not (isDefined!12669 lt!2332001)))))

(declare-fun b!6131749 () Bool)

(declare-fun res!2541273 () Bool)

(assert (=> b!6131749 (=> (not res!2541273) (not e!3737367))))

(assert (=> b!6131749 (= res!2541273 (matchR!8258 (regOne!32662 r!7292) (_1!36357 (get!22214 lt!2332001))))))

(declare-fun b!6131750 () Bool)

(assert (=> b!6131750 (= e!3737368 None!15965)))

(declare-fun b!6131751 () Bool)

(assert (=> b!6131751 (= e!3737367 (= (++!14161 (_1!36357 (get!22214 lt!2332001)) (_2!36357 (get!22214 lt!2332001))) s!2326))))

(declare-fun b!6131752 () Bool)

(assert (=> b!6131752 (= e!3737366 e!3737368)))

(declare-fun c!1102395 () Bool)

(assert (=> b!6131752 (= c!1102395 ((_ is Nil!64401) (t!377994 s!2326)))))

(declare-fun b!6131753 () Bool)

(assert (=> b!6131753 (= e!3737369 (matchR!8258 (regTwo!32662 r!7292) (t!377994 s!2326)))))

(assert (= (and d!1921163 res!2541275) b!6131753))

(assert (= (and d!1921163 c!1102396) b!6131745))

(assert (= (and d!1921163 (not c!1102396)) b!6131752))

(assert (= (and b!6131752 c!1102395) b!6131750))

(assert (= (and b!6131752 (not c!1102395)) b!6131746))

(assert (= (and d!1921163 res!2541272) b!6131749))

(assert (= (and b!6131749 res!2541273) b!6131747))

(assert (= (and b!6131747 res!2541274) b!6131751))

(assert (= (and d!1921163 (not res!2541271)) b!6131748))

(declare-fun m!6975108 () Bool)

(assert (=> b!6131748 m!6975108))

(declare-fun m!6975110 () Bool)

(assert (=> b!6131753 m!6975110))

(assert (=> b!6131746 m!6974358))

(declare-fun m!6975112 () Bool)

(assert (=> b!6131746 m!6975112))

(assert (=> b!6131746 m!6975112))

(declare-fun m!6975114 () Bool)

(assert (=> b!6131746 m!6975114))

(assert (=> b!6131746 m!6974358))

(declare-fun m!6975116 () Bool)

(assert (=> b!6131746 m!6975116))

(assert (=> b!6131746 m!6975112))

(declare-fun m!6975118 () Bool)

(assert (=> b!6131746 m!6975118))

(assert (=> d!1921163 m!6975108))

(assert (=> d!1921163 m!6974358))

(declare-fun m!6975120 () Bool)

(assert (=> d!1921163 m!6975120))

(assert (=> d!1921163 m!6974368))

(declare-fun m!6975122 () Bool)

(assert (=> b!6131751 m!6975122))

(declare-fun m!6975124 () Bool)

(assert (=> b!6131751 m!6975124))

(assert (=> b!6131747 m!6975122))

(declare-fun m!6975126 () Bool)

(assert (=> b!6131747 m!6975126))

(assert (=> b!6131749 m!6975122))

(declare-fun m!6975128 () Bool)

(assert (=> b!6131749 m!6975128))

(assert (=> b!6130868 d!1921163))

(declare-fun b!6131754 () Bool)

(declare-fun e!3737373 () (InoxSet Context!10918))

(declare-fun e!3737371 () (InoxSet Context!10918))

(assert (=> b!6131754 (= e!3737373 e!3737371)))

(declare-fun c!1102397 () Bool)

(assert (=> b!6131754 (= c!1102397 ((_ is Cons!64400) (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))))

(declare-fun d!1921165 () Bool)

(declare-fun c!1102398 () Bool)

(declare-fun e!3737372 () Bool)

(assert (=> d!1921165 (= c!1102398 e!3737372)))

(declare-fun res!2541276 () Bool)

(assert (=> d!1921165 (=> (not res!2541276) (not e!3737372))))

(assert (=> d!1921165 (= res!2541276 ((_ is Cons!64400) (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))))

(assert (=> d!1921165 (= (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (h!70849 s!2326)) e!3737373)))

(declare-fun b!6131755 () Bool)

(declare-fun call!508580 () (InoxSet Context!10918))

(assert (=> b!6131755 (= e!3737371 call!508580)))

(declare-fun b!6131756 () Bool)

(assert (=> b!6131756 (= e!3737373 ((_ map or) call!508580 (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))) (h!70849 s!2326))))))

(declare-fun bm!508575 () Bool)

(assert (=> bm!508575 (= call!508580 (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))) (Context!10919 (t!377993 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))) (h!70849 s!2326)))))

(declare-fun b!6131757 () Bool)

(assert (=> b!6131757 (= e!3737372 (nullable!6068 (h!70848 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))))))

(declare-fun b!6131758 () Bool)

(assert (=> b!6131758 (= e!3737371 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921165 res!2541276) b!6131757))

(assert (= (and d!1921165 c!1102398) b!6131756))

(assert (= (and d!1921165 (not c!1102398)) b!6131754))

(assert (= (and b!6131754 c!1102397) b!6131755))

(assert (= (and b!6131754 (not c!1102397)) b!6131758))

(assert (= (or b!6131756 b!6131755) bm!508575))

(declare-fun m!6975130 () Bool)

(assert (=> b!6131756 m!6975130))

(declare-fun m!6975132 () Bool)

(assert (=> bm!508575 m!6975132))

(declare-fun m!6975134 () Bool)

(assert (=> b!6131757 m!6975134))

(assert (=> b!6131046 d!1921165))

(declare-fun b!6131759 () Bool)

(declare-fun e!3737376 () (InoxSet Context!10918))

(declare-fun e!3737374 () (InoxSet Context!10918))

(assert (=> b!6131759 (= e!3737376 e!3737374)))

(declare-fun c!1102399 () Bool)

(assert (=> b!6131759 (= c!1102399 ((_ is Cons!64400) (exprs!5959 (Context!10919 (t!377993 (exprs!5959 lt!2331882))))))))

(declare-fun d!1921167 () Bool)

(declare-fun c!1102400 () Bool)

(declare-fun e!3737375 () Bool)

(assert (=> d!1921167 (= c!1102400 e!3737375)))

(declare-fun res!2541277 () Bool)

(assert (=> d!1921167 (=> (not res!2541277) (not e!3737375))))

(assert (=> d!1921167 (= res!2541277 ((_ is Cons!64400) (exprs!5959 (Context!10919 (t!377993 (exprs!5959 lt!2331882))))))))

(assert (=> d!1921167 (= (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 lt!2331882))) (h!70849 s!2326)) e!3737376)))

(declare-fun b!6131760 () Bool)

(declare-fun call!508581 () (InoxSet Context!10918))

(assert (=> b!6131760 (= e!3737374 call!508581)))

(declare-fun b!6131761 () Bool)

(assert (=> b!6131761 (= e!3737376 ((_ map or) call!508581 (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 lt!2331882)))))) (h!70849 s!2326))))))

(declare-fun bm!508576 () Bool)

(assert (=> bm!508576 (= call!508581 (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 lt!2331882))))) (Context!10919 (t!377993 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 lt!2331882)))))) (h!70849 s!2326)))))

(declare-fun b!6131762 () Bool)

(assert (=> b!6131762 (= e!3737375 (nullable!6068 (h!70848 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 lt!2331882)))))))))

(declare-fun b!6131763 () Bool)

(assert (=> b!6131763 (= e!3737374 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921167 res!2541277) b!6131762))

(assert (= (and d!1921167 c!1102400) b!6131761))

(assert (= (and d!1921167 (not c!1102400)) b!6131759))

(assert (= (and b!6131759 c!1102399) b!6131760))

(assert (= (and b!6131759 (not c!1102399)) b!6131763))

(assert (= (or b!6131761 b!6131760) bm!508576))

(declare-fun m!6975136 () Bool)

(assert (=> b!6131761 m!6975136))

(declare-fun m!6975138 () Bool)

(assert (=> bm!508576 m!6975138))

(declare-fun m!6975140 () Bool)

(assert (=> b!6131762 m!6975140))

(assert (=> b!6131051 d!1921167))

(declare-fun b!6131764 () Bool)

(declare-fun e!3737379 () (InoxSet Context!10918))

(declare-fun e!3737377 () (InoxSet Context!10918))

(assert (=> b!6131764 (= e!3737379 e!3737377)))

(declare-fun c!1102401 () Bool)

(assert (=> b!6131764 (= c!1102401 ((_ is Cons!64400) (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun d!1921169 () Bool)

(declare-fun c!1102402 () Bool)

(declare-fun e!3737378 () Bool)

(assert (=> d!1921169 (= c!1102402 e!3737378)))

(declare-fun res!2541278 () Bool)

(assert (=> d!1921169 (=> (not res!2541278) (not e!3737378))))

(assert (=> d!1921169 (= res!2541278 ((_ is Cons!64400) (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))))))))

(assert (=> d!1921169 (= (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))) (h!70849 s!2326)) e!3737379)))

(declare-fun b!6131765 () Bool)

(declare-fun call!508582 () (InoxSet Context!10918))

(assert (=> b!6131765 (= e!3737377 call!508582)))

(declare-fun b!6131766 () Bool)

(assert (=> b!6131766 (= e!3737379 ((_ map or) call!508582 (derivationStepZipperUp!1249 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343))))))) (h!70849 s!2326))))))

(declare-fun bm!508577 () Bool)

(assert (=> bm!508577 (= call!508582 (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))))) (Context!10919 (t!377993 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343))))))) (h!70849 s!2326)))))

(declare-fun b!6131767 () Bool)

(assert (=> b!6131767 (= e!3737378 (nullable!6068 (h!70848 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343))))))))))

(declare-fun b!6131768 () Bool)

(assert (=> b!6131768 (= e!3737377 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921169 res!2541278) b!6131767))

(assert (= (and d!1921169 c!1102402) b!6131766))

(assert (= (and d!1921169 (not c!1102402)) b!6131764))

(assert (= (and b!6131764 c!1102401) b!6131765))

(assert (= (and b!6131764 (not c!1102401)) b!6131768))

(assert (= (or b!6131766 b!6131765) bm!508577))

(declare-fun m!6975142 () Bool)

(assert (=> b!6131766 m!6975142))

(declare-fun m!6975144 () Bool)

(assert (=> bm!508577 m!6975144))

(declare-fun m!6975146 () Bool)

(assert (=> b!6131767 m!6975146))

(assert (=> b!6131056 d!1921169))

(declare-fun bs!1520941 () Bool)

(declare-fun d!1921171 () Bool)

(assert (= bs!1520941 (and d!1921171 d!1920843)))

(declare-fun lambda!334055 () Int)

(assert (=> bs!1520941 (= lambda!334055 lambda!334009)))

(declare-fun bs!1520942 () Bool)

(assert (= bs!1520942 (and d!1921171 d!1920845)))

(assert (=> bs!1520942 (= lambda!334055 lambda!334012)))

(declare-fun bs!1520943 () Bool)

(assert (= bs!1520943 (and d!1921171 d!1920755)))

(assert (=> bs!1520943 (= lambda!334055 lambda!333967)))

(declare-fun bs!1520944 () Bool)

(assert (= bs!1520944 (and d!1921171 d!1920753)))

(assert (=> bs!1520944 (= lambda!334055 lambda!333964)))

(declare-fun bs!1520945 () Bool)

(assert (= bs!1520945 (and d!1921171 d!1920839)))

(assert (=> bs!1520945 (= lambda!334055 lambda!334006)))

(declare-fun bs!1520946 () Bool)

(assert (= bs!1520946 (and d!1921171 d!1921143)))

(assert (=> bs!1520946 (= lambda!334055 lambda!334054)))

(declare-fun bs!1520947 () Bool)

(assert (= bs!1520947 (and d!1921171 d!1920869)))

(assert (=> bs!1520947 (= lambda!334055 lambda!334013)))

(assert (=> d!1921171 (= (inv!83434 (h!70850 (t!377995 zl!343))) (forall!15195 (exprs!5959 (h!70850 (t!377995 zl!343))) lambda!334055))))

(declare-fun bs!1520948 () Bool)

(assert (= bs!1520948 d!1921171))

(declare-fun m!6975148 () Bool)

(assert (=> bs!1520948 m!6975148))

(assert (=> b!6131086 d!1921171))

(assert (=> bm!508407 d!1921135))

(declare-fun d!1921173 () Bool)

(assert (=> d!1921173 (= (isEmpty!36340 (tail!11756 (unfocusZipperList!1496 zl!343))) ((_ is Nil!64400) (tail!11756 (unfocusZipperList!1496 zl!343))))))

(assert (=> b!6130977 d!1921173))

(declare-fun d!1921175 () Bool)

(assert (=> d!1921175 (= (tail!11756 (unfocusZipperList!1496 zl!343)) (t!377993 (unfocusZipperList!1496 zl!343)))))

(assert (=> b!6130977 d!1921175))

(declare-fun bs!1520949 () Bool)

(declare-fun d!1921177 () Bool)

(assert (= bs!1520949 (and d!1921177 d!1921125)))

(declare-fun lambda!334056 () Int)

(assert (=> bs!1520949 (= lambda!334056 lambda!334050)))

(assert (=> d!1921177 (= (nullableZipper!1856 lt!2331874) (exists!2422 lt!2331874 lambda!334056))))

(declare-fun bs!1520950 () Bool)

(assert (= bs!1520950 d!1921177))

(declare-fun m!6975150 () Bool)

(assert (=> bs!1520950 m!6975150))

(assert (=> b!6130559 d!1921177))

(declare-fun bs!1520951 () Bool)

(declare-fun d!1921179 () Bool)

(assert (= bs!1520951 (and d!1921179 d!1921125)))

(declare-fun lambda!334057 () Int)

(assert (=> bs!1520951 (= lambda!334057 lambda!334050)))

(declare-fun bs!1520952 () Bool)

(assert (= bs!1520952 (and d!1921179 d!1921177)))

(assert (=> bs!1520952 (= lambda!334057 lambda!334056)))

(assert (=> d!1921179 (= (nullableZipper!1856 lt!2331884) (exists!2422 lt!2331884 lambda!334057))))

(declare-fun bs!1520953 () Bool)

(assert (= bs!1520953 d!1921179))

(declare-fun m!6975152 () Bool)

(assert (=> bs!1520953 m!6975152))

(assert (=> b!6130949 d!1921179))

(declare-fun d!1921181 () Bool)

(declare-fun res!2541279 () Bool)

(declare-fun e!3737380 () Bool)

(assert (=> d!1921181 (=> res!2541279 e!3737380)))

(assert (=> d!1921181 (= res!2541279 ((_ is Nil!64400) (exprs!5959 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))

(assert (=> d!1921181 (= (forall!15195 (exprs!5959 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343)))))) lambda!334013) e!3737380)))

(declare-fun b!6131769 () Bool)

(declare-fun e!3737381 () Bool)

(assert (=> b!6131769 (= e!3737380 e!3737381)))

(declare-fun res!2541280 () Bool)

(assert (=> b!6131769 (=> (not res!2541280) (not e!3737381))))

(assert (=> b!6131769 (= res!2541280 (dynLambda!25372 lambda!334013 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun b!6131770 () Bool)

(assert (=> b!6131770 (= e!3737381 (forall!15195 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343))))))) lambda!334013))))

(assert (= (and d!1921181 (not res!2541279)) b!6131769))

(assert (= (and b!6131769 res!2541280) b!6131770))

(declare-fun b_lambda!233421 () Bool)

(assert (=> (not b_lambda!233421) (not b!6131769)))

(declare-fun m!6975154 () Bool)

(assert (=> b!6131769 m!6975154))

(declare-fun m!6975156 () Bool)

(assert (=> b!6131770 m!6975156))

(assert (=> d!1920869 d!1921181))

(declare-fun d!1921183 () Bool)

(assert (=> d!1921183 (= (isUnion!932 lt!2331963) ((_ is Union!16075) lt!2331963))))

(assert (=> b!6130975 d!1921183))

(declare-fun b!6131785 () Bool)

(declare-fun e!3737399 () Bool)

(declare-fun call!508588 () Bool)

(assert (=> b!6131785 (= e!3737399 call!508588)))

(declare-fun bm!508582 () Bool)

(declare-fun call!508587 () Bool)

(declare-fun c!1102405 () Bool)

(assert (=> bm!508582 (= call!508587 (nullable!6068 (ite c!1102405 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun bm!508583 () Bool)

(assert (=> bm!508583 (= call!508588 (nullable!6068 (ite c!1102405 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun b!6131786 () Bool)

(declare-fun e!3737396 () Bool)

(declare-fun e!3737397 () Bool)

(assert (=> b!6131786 (= e!3737396 e!3737397)))

(declare-fun res!2541295 () Bool)

(assert (=> b!6131786 (=> (not res!2541295) (not e!3737397))))

(assert (=> b!6131786 (= res!2541295 (and (not ((_ is EmptyLang!16075) (h!70848 (exprs!5959 (h!70850 zl!343))))) (not ((_ is ElementMatch!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun b!6131788 () Bool)

(declare-fun e!3737395 () Bool)

(declare-fun e!3737398 () Bool)

(assert (=> b!6131788 (= e!3737395 e!3737398)))

(declare-fun res!2541292 () Bool)

(assert (=> b!6131788 (= res!2541292 call!508587)))

(assert (=> b!6131788 (=> res!2541292 e!3737398)))

(declare-fun b!6131789 () Bool)

(assert (=> b!6131789 (= e!3737395 e!3737399)))

(declare-fun res!2541293 () Bool)

(assert (=> b!6131789 (= res!2541293 call!508587)))

(assert (=> b!6131789 (=> (not res!2541293) (not e!3737399))))

(declare-fun b!6131790 () Bool)

(assert (=> b!6131790 (= e!3737398 call!508588)))

(declare-fun b!6131791 () Bool)

(declare-fun e!3737394 () Bool)

(assert (=> b!6131791 (= e!3737394 e!3737395)))

(assert (=> b!6131791 (= c!1102405 ((_ is Union!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun b!6131787 () Bool)

(assert (=> b!6131787 (= e!3737397 e!3737394)))

(declare-fun res!2541291 () Bool)

(assert (=> b!6131787 (=> res!2541291 e!3737394)))

(assert (=> b!6131787 (= res!2541291 ((_ is Star!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun d!1921185 () Bool)

(declare-fun res!2541294 () Bool)

(assert (=> d!1921185 (=> res!2541294 e!3737396)))

(assert (=> d!1921185 (= res!2541294 ((_ is EmptyExpr!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(assert (=> d!1921185 (= (nullableFct!2032 (h!70848 (exprs!5959 (h!70850 zl!343)))) e!3737396)))

(assert (= (and d!1921185 (not res!2541294)) b!6131786))

(assert (= (and b!6131786 res!2541295) b!6131787))

(assert (= (and b!6131787 (not res!2541291)) b!6131791))

(assert (= (and b!6131791 c!1102405) b!6131788))

(assert (= (and b!6131791 (not c!1102405)) b!6131789))

(assert (= (and b!6131788 (not res!2541292)) b!6131790))

(assert (= (and b!6131789 res!2541293) b!6131785))

(assert (= (or b!6131790 b!6131785) bm!508583))

(assert (= (or b!6131788 b!6131789) bm!508582))

(declare-fun m!6975158 () Bool)

(assert (=> bm!508582 m!6975158))

(declare-fun m!6975160 () Bool)

(assert (=> bm!508583 m!6975160))

(assert (=> d!1920855 d!1921185))

(assert (=> d!1920771 d!1921119))

(declare-fun d!1921187 () Bool)

(assert (=> d!1921187 (= (isEmptyLang!1502 lt!2331963) ((_ is EmptyLang!16075) lt!2331963))))

(assert (=> b!6130971 d!1921187))

(assert (=> d!1920803 d!1920793))

(assert (=> d!1920803 d!1920779))

(declare-fun d!1921189 () Bool)

(assert (=> d!1921189 (= (matchR!8258 r!7292 s!2326) (matchRSpec!3176 r!7292 s!2326))))

(assert (=> d!1921189 true))

(declare-fun _$88!4644 () Unit!157455)

(assert (=> d!1921189 (= (choose!45552 r!7292 s!2326) _$88!4644)))

(declare-fun bs!1520954 () Bool)

(assert (= bs!1520954 d!1921189))

(assert (=> bs!1520954 m!6974028))

(assert (=> bs!1520954 m!6974026))

(assert (=> d!1920803 d!1921189))

(assert (=> d!1920803 d!1920759))

(declare-fun d!1921191 () Bool)

(declare-fun c!1102406 () Bool)

(assert (=> d!1921191 (= c!1102406 (isEmpty!36343 (tail!11755 (t!377994 s!2326))))))

(declare-fun e!3737400 () Bool)

(assert (=> d!1921191 (= (matchZipper!2087 (derivationStepZipper!2048 lt!2331873 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))) e!3737400)))

(declare-fun b!6131792 () Bool)

(assert (=> b!6131792 (= e!3737400 (nullableZipper!1856 (derivationStepZipper!2048 lt!2331873 (head!12670 (t!377994 s!2326)))))))

(declare-fun b!6131793 () Bool)

(assert (=> b!6131793 (= e!3737400 (matchZipper!2087 (derivationStepZipper!2048 (derivationStepZipper!2048 lt!2331873 (head!12670 (t!377994 s!2326))) (head!12670 (tail!11755 (t!377994 s!2326)))) (tail!11755 (tail!11755 (t!377994 s!2326)))))))

(assert (= (and d!1921191 c!1102406) b!6131792))

(assert (= (and d!1921191 (not c!1102406)) b!6131793))

(assert (=> d!1921191 m!6974146))

(assert (=> d!1921191 m!6975012))

(assert (=> b!6131792 m!6974214))

(declare-fun m!6975162 () Bool)

(assert (=> b!6131792 m!6975162))

(assert (=> b!6131793 m!6974146))

(assert (=> b!6131793 m!6975016))

(assert (=> b!6131793 m!6974214))

(assert (=> b!6131793 m!6975016))

(declare-fun m!6975164 () Bool)

(assert (=> b!6131793 m!6975164))

(assert (=> b!6131793 m!6974146))

(assert (=> b!6131793 m!6975020))

(assert (=> b!6131793 m!6975164))

(assert (=> b!6131793 m!6975020))

(declare-fun m!6975166 () Bool)

(assert (=> b!6131793 m!6975166))

(assert (=> b!6130648 d!1921191))

(declare-fun bs!1520955 () Bool)

(declare-fun d!1921193 () Bool)

(assert (= bs!1520955 (and d!1921193 b!6130360)))

(declare-fun lambda!334058 () Int)

(assert (=> bs!1520955 (= (= (head!12670 (t!377994 s!2326)) (h!70849 s!2326)) (= lambda!334058 lambda!333955))))

(declare-fun bs!1520956 () Bool)

(assert (= bs!1520956 (and d!1921193 d!1921129)))

(assert (=> bs!1520956 (= lambda!334058 lambda!334053)))

(assert (=> d!1921193 true))

(assert (=> d!1921193 (= (derivationStepZipper!2048 lt!2331873 (head!12670 (t!377994 s!2326))) (flatMap!1580 lt!2331873 lambda!334058))))

(declare-fun bs!1520957 () Bool)

(assert (= bs!1520957 d!1921193))

(declare-fun m!6975168 () Bool)

(assert (=> bs!1520957 m!6975168))

(assert (=> b!6130648 d!1921193))

(assert (=> b!6130648 d!1921131))

(assert (=> b!6130648 d!1921133))

(declare-fun d!1921195 () Bool)

(assert (=> d!1921195 (= (nullable!6068 (reg!16404 r!7292)) (nullableFct!2032 (reg!16404 r!7292)))))

(declare-fun bs!1520958 () Bool)

(assert (= bs!1520958 d!1921195))

(declare-fun m!6975170 () Bool)

(assert (=> bs!1520958 m!6975170))

(assert (=> b!6130643 d!1921195))

(declare-fun b!6131794 () Bool)

(declare-fun e!3737406 () Bool)

(assert (=> b!6131794 (= e!3737406 (nullable!6068 (derivativeStep!4795 r!7292 (head!12670 s!2326))))))

(declare-fun b!6131795 () Bool)

(declare-fun res!2541302 () Bool)

(declare-fun e!3737407 () Bool)

(assert (=> b!6131795 (=> res!2541302 e!3737407)))

(assert (=> b!6131795 (= res!2541302 (not (isEmpty!36343 (tail!11755 (tail!11755 s!2326)))))))

(declare-fun b!6131796 () Bool)

(declare-fun res!2541301 () Bool)

(declare-fun e!3737402 () Bool)

(assert (=> b!6131796 (=> (not res!2541301) (not e!3737402))))

(assert (=> b!6131796 (= res!2541301 (isEmpty!36343 (tail!11755 (tail!11755 s!2326))))))

(declare-fun b!6131798 () Bool)

(declare-fun res!2541299 () Bool)

(declare-fun e!3737403 () Bool)

(assert (=> b!6131798 (=> res!2541299 e!3737403)))

(assert (=> b!6131798 (= res!2541299 (not ((_ is ElementMatch!16075) (derivativeStep!4795 r!7292 (head!12670 s!2326)))))))

(declare-fun e!3737405 () Bool)

(assert (=> b!6131798 (= e!3737405 e!3737403)))

(declare-fun b!6131799 () Bool)

(assert (=> b!6131799 (= e!3737407 (not (= (head!12670 (tail!11755 s!2326)) (c!1102031 (derivativeStep!4795 r!7292 (head!12670 s!2326))))))))

(declare-fun b!6131800 () Bool)

(assert (=> b!6131800 (= e!3737402 (= (head!12670 (tail!11755 s!2326)) (c!1102031 (derivativeStep!4795 r!7292 (head!12670 s!2326)))))))

(declare-fun b!6131801 () Bool)

(declare-fun e!3737401 () Bool)

(assert (=> b!6131801 (= e!3737401 e!3737405)))

(declare-fun c!1102409 () Bool)

(assert (=> b!6131801 (= c!1102409 ((_ is EmptyLang!16075) (derivativeStep!4795 r!7292 (head!12670 s!2326))))))

(declare-fun b!6131802 () Bool)

(declare-fun res!2541298 () Bool)

(assert (=> b!6131802 (=> res!2541298 e!3737403)))

(assert (=> b!6131802 (= res!2541298 e!3737402)))

(declare-fun res!2541297 () Bool)

(assert (=> b!6131802 (=> (not res!2541297) (not e!3737402))))

(declare-fun lt!2332004 () Bool)

(assert (=> b!6131802 (= res!2541297 lt!2332004)))

(declare-fun b!6131803 () Bool)

(declare-fun e!3737404 () Bool)

(assert (=> b!6131803 (= e!3737404 e!3737407)))

(declare-fun res!2541296 () Bool)

(assert (=> b!6131803 (=> res!2541296 e!3737407)))

(declare-fun call!508589 () Bool)

(assert (=> b!6131803 (= res!2541296 call!508589)))

(declare-fun bm!508584 () Bool)

(assert (=> bm!508584 (= call!508589 (isEmpty!36343 (tail!11755 s!2326)))))

(declare-fun b!6131797 () Bool)

(declare-fun res!2541300 () Bool)

(assert (=> b!6131797 (=> (not res!2541300) (not e!3737402))))

(assert (=> b!6131797 (= res!2541300 (not call!508589))))

(declare-fun d!1921197 () Bool)

(assert (=> d!1921197 e!3737401))

(declare-fun c!1102407 () Bool)

(assert (=> d!1921197 (= c!1102407 ((_ is EmptyExpr!16075) (derivativeStep!4795 r!7292 (head!12670 s!2326))))))

(assert (=> d!1921197 (= lt!2332004 e!3737406)))

(declare-fun c!1102408 () Bool)

(assert (=> d!1921197 (= c!1102408 (isEmpty!36343 (tail!11755 s!2326)))))

(assert (=> d!1921197 (validRegex!7811 (derivativeStep!4795 r!7292 (head!12670 s!2326)))))

(assert (=> d!1921197 (= (matchR!8258 (derivativeStep!4795 r!7292 (head!12670 s!2326)) (tail!11755 s!2326)) lt!2332004)))

(declare-fun b!6131804 () Bool)

(assert (=> b!6131804 (= e!3737406 (matchR!8258 (derivativeStep!4795 (derivativeStep!4795 r!7292 (head!12670 s!2326)) (head!12670 (tail!11755 s!2326))) (tail!11755 (tail!11755 s!2326))))))

(declare-fun b!6131805 () Bool)

(assert (=> b!6131805 (= e!3737403 e!3737404)))

(declare-fun res!2541303 () Bool)

(assert (=> b!6131805 (=> (not res!2541303) (not e!3737404))))

(assert (=> b!6131805 (= res!2541303 (not lt!2332004))))

(declare-fun b!6131806 () Bool)

(assert (=> b!6131806 (= e!3737401 (= lt!2332004 call!508589))))

(declare-fun b!6131807 () Bool)

(assert (=> b!6131807 (= e!3737405 (not lt!2332004))))

(assert (= (and d!1921197 c!1102408) b!6131794))

(assert (= (and d!1921197 (not c!1102408)) b!6131804))

(assert (= (and d!1921197 c!1102407) b!6131806))

(assert (= (and d!1921197 (not c!1102407)) b!6131801))

(assert (= (and b!6131801 c!1102409) b!6131807))

(assert (= (and b!6131801 (not c!1102409)) b!6131798))

(assert (= (and b!6131798 (not res!2541299)) b!6131802))

(assert (= (and b!6131802 res!2541297) b!6131797))

(assert (= (and b!6131797 res!2541300) b!6131796))

(assert (= (and b!6131796 res!2541301) b!6131800))

(assert (= (and b!6131802 (not res!2541298)) b!6131805))

(assert (= (and b!6131805 res!2541303) b!6131803))

(assert (= (and b!6131803 (not res!2541296)) b!6131795))

(assert (= (and b!6131795 (not res!2541302)) b!6131799))

(assert (= (or b!6131806 b!6131803 b!6131797) bm!508584))

(assert (=> b!6131795 m!6974278))

(declare-fun m!6975172 () Bool)

(assert (=> b!6131795 m!6975172))

(assert (=> b!6131795 m!6975172))

(declare-fun m!6975174 () Bool)

(assert (=> b!6131795 m!6975174))

(assert (=> bm!508584 m!6974278))

(assert (=> bm!508584 m!6974280))

(assert (=> d!1921197 m!6974278))

(assert (=> d!1921197 m!6974280))

(assert (=> d!1921197 m!6974286))

(declare-fun m!6975176 () Bool)

(assert (=> d!1921197 m!6975176))

(assert (=> b!6131796 m!6974278))

(assert (=> b!6131796 m!6975172))

(assert (=> b!6131796 m!6975172))

(assert (=> b!6131796 m!6975174))

(assert (=> b!6131800 m!6974278))

(declare-fun m!6975178 () Bool)

(assert (=> b!6131800 m!6975178))

(assert (=> b!6131794 m!6974286))

(declare-fun m!6975180 () Bool)

(assert (=> b!6131794 m!6975180))

(assert (=> b!6131804 m!6974278))

(assert (=> b!6131804 m!6975178))

(assert (=> b!6131804 m!6974286))

(assert (=> b!6131804 m!6975178))

(declare-fun m!6975182 () Bool)

(assert (=> b!6131804 m!6975182))

(assert (=> b!6131804 m!6974278))

(assert (=> b!6131804 m!6975172))

(assert (=> b!6131804 m!6975182))

(assert (=> b!6131804 m!6975172))

(declare-fun m!6975184 () Bool)

(assert (=> b!6131804 m!6975184))

(assert (=> b!6131799 m!6974278))

(assert (=> b!6131799 m!6975178))

(assert (=> b!6130776 d!1921197))

(declare-fun b!6131828 () Bool)

(declare-fun e!3737420 () Regex!16075)

(declare-fun call!508600 () Regex!16075)

(assert (=> b!6131828 (= e!3737420 (Union!16075 (Concat!24920 call!508600 (regTwo!32662 r!7292)) EmptyLang!16075))))

(declare-fun c!1102424 () Bool)

(declare-fun c!1102423 () Bool)

(declare-fun call!508601 () Regex!16075)

(declare-fun c!1102420 () Bool)

(declare-fun bm!508593 () Bool)

(assert (=> bm!508593 (= call!508601 (derivativeStep!4795 (ite c!1102423 (regTwo!32663 r!7292) (ite c!1102424 (reg!16404 r!7292) (ite c!1102420 (regTwo!32662 r!7292) (regOne!32662 r!7292)))) (head!12670 s!2326)))))

(declare-fun b!6131829 () Bool)

(declare-fun e!3737422 () Regex!16075)

(declare-fun call!508598 () Regex!16075)

(assert (=> b!6131829 (= e!3737422 (Concat!24920 call!508598 r!7292))))

(declare-fun bm!508594 () Bool)

(assert (=> bm!508594 (= call!508598 call!508601)))

(declare-fun b!6131830 () Bool)

(assert (=> b!6131830 (= c!1102423 ((_ is Union!16075) r!7292))))

(declare-fun e!3737418 () Regex!16075)

(declare-fun e!3737421 () Regex!16075)

(assert (=> b!6131830 (= e!3737418 e!3737421)))

(declare-fun b!6131831 () Bool)

(assert (=> b!6131831 (= e!3737421 e!3737422)))

(assert (=> b!6131831 (= c!1102424 ((_ is Star!16075) r!7292))))

(declare-fun bm!508595 () Bool)

(assert (=> bm!508595 (= call!508600 call!508598)))

(declare-fun b!6131832 () Bool)

(assert (=> b!6131832 (= c!1102420 (nullable!6068 (regOne!32662 r!7292)))))

(assert (=> b!6131832 (= e!3737422 e!3737420)))

(declare-fun b!6131833 () Bool)

(declare-fun call!508599 () Regex!16075)

(assert (=> b!6131833 (= e!3737420 (Union!16075 (Concat!24920 call!508599 (regTwo!32662 r!7292)) call!508600))))

(declare-fun b!6131834 () Bool)

(declare-fun e!3737419 () Regex!16075)

(assert (=> b!6131834 (= e!3737419 EmptyLang!16075)))

(declare-fun d!1921199 () Bool)

(declare-fun lt!2332007 () Regex!16075)

(assert (=> d!1921199 (validRegex!7811 lt!2332007)))

(assert (=> d!1921199 (= lt!2332007 e!3737419)))

(declare-fun c!1102422 () Bool)

(assert (=> d!1921199 (= c!1102422 (or ((_ is EmptyExpr!16075) r!7292) ((_ is EmptyLang!16075) r!7292)))))

(assert (=> d!1921199 (validRegex!7811 r!7292)))

(assert (=> d!1921199 (= (derivativeStep!4795 r!7292 (head!12670 s!2326)) lt!2332007)))

(declare-fun bm!508596 () Bool)

(assert (=> bm!508596 (= call!508599 (derivativeStep!4795 (ite c!1102423 (regOne!32663 r!7292) (regOne!32662 r!7292)) (head!12670 s!2326)))))

(declare-fun b!6131835 () Bool)

(assert (=> b!6131835 (= e!3737418 (ite (= (head!12670 s!2326) (c!1102031 r!7292)) EmptyExpr!16075 EmptyLang!16075))))

(declare-fun b!6131836 () Bool)

(assert (=> b!6131836 (= e!3737419 e!3737418)))

(declare-fun c!1102421 () Bool)

(assert (=> b!6131836 (= c!1102421 ((_ is ElementMatch!16075) r!7292))))

(declare-fun b!6131837 () Bool)

(assert (=> b!6131837 (= e!3737421 (Union!16075 call!508599 call!508601))))

(assert (= (and d!1921199 c!1102422) b!6131834))

(assert (= (and d!1921199 (not c!1102422)) b!6131836))

(assert (= (and b!6131836 c!1102421) b!6131835))

(assert (= (and b!6131836 (not c!1102421)) b!6131830))

(assert (= (and b!6131830 c!1102423) b!6131837))

(assert (= (and b!6131830 (not c!1102423)) b!6131831))

(assert (= (and b!6131831 c!1102424) b!6131829))

(assert (= (and b!6131831 (not c!1102424)) b!6131832))

(assert (= (and b!6131832 c!1102420) b!6131833))

(assert (= (and b!6131832 (not c!1102420)) b!6131828))

(assert (= (or b!6131833 b!6131828) bm!508595))

(assert (= (or b!6131829 bm!508595) bm!508594))

(assert (= (or b!6131837 bm!508594) bm!508593))

(assert (= (or b!6131837 b!6131833) bm!508596))

(assert (=> bm!508593 m!6974282))

(declare-fun m!6975186 () Bool)

(assert (=> bm!508593 m!6975186))

(declare-fun m!6975188 () Bool)

(assert (=> b!6131832 m!6975188))

(declare-fun m!6975190 () Bool)

(assert (=> d!1921199 m!6975190))

(assert (=> d!1921199 m!6973982))

(assert (=> bm!508596 m!6974282))

(declare-fun m!6975192 () Bool)

(assert (=> bm!508596 m!6975192))

(assert (=> b!6130776 d!1921199))

(assert (=> b!6130776 d!1921123))

(assert (=> b!6130776 d!1921111))

(declare-fun b!6131838 () Bool)

(declare-fun e!3737428 () Bool)

(assert (=> b!6131838 (= e!3737428 (nullable!6068 (regTwo!32662 r!7292)))))

(declare-fun b!6131839 () Bool)

(declare-fun res!2541310 () Bool)

(declare-fun e!3737429 () Bool)

(assert (=> b!6131839 (=> res!2541310 e!3737429)))

(assert (=> b!6131839 (= res!2541310 (not (isEmpty!36343 (tail!11755 s!2326))))))

(declare-fun b!6131840 () Bool)

(declare-fun res!2541309 () Bool)

(declare-fun e!3737424 () Bool)

(assert (=> b!6131840 (=> (not res!2541309) (not e!3737424))))

(assert (=> b!6131840 (= res!2541309 (isEmpty!36343 (tail!11755 s!2326)))))

(declare-fun b!6131842 () Bool)

(declare-fun res!2541307 () Bool)

(declare-fun e!3737425 () Bool)

(assert (=> b!6131842 (=> res!2541307 e!3737425)))

(assert (=> b!6131842 (= res!2541307 (not ((_ is ElementMatch!16075) (regTwo!32662 r!7292))))))

(declare-fun e!3737427 () Bool)

(assert (=> b!6131842 (= e!3737427 e!3737425)))

(declare-fun b!6131843 () Bool)

(assert (=> b!6131843 (= e!3737429 (not (= (head!12670 s!2326) (c!1102031 (regTwo!32662 r!7292)))))))

(declare-fun b!6131844 () Bool)

(assert (=> b!6131844 (= e!3737424 (= (head!12670 s!2326) (c!1102031 (regTwo!32662 r!7292))))))

(declare-fun b!6131845 () Bool)

(declare-fun e!3737423 () Bool)

(assert (=> b!6131845 (= e!3737423 e!3737427)))

(declare-fun c!1102427 () Bool)

(assert (=> b!6131845 (= c!1102427 ((_ is EmptyLang!16075) (regTwo!32662 r!7292)))))

(declare-fun b!6131846 () Bool)

(declare-fun res!2541306 () Bool)

(assert (=> b!6131846 (=> res!2541306 e!3737425)))

(assert (=> b!6131846 (= res!2541306 e!3737424)))

(declare-fun res!2541305 () Bool)

(assert (=> b!6131846 (=> (not res!2541305) (not e!3737424))))

(declare-fun lt!2332008 () Bool)

(assert (=> b!6131846 (= res!2541305 lt!2332008)))

(declare-fun b!6131847 () Bool)

(declare-fun e!3737426 () Bool)

(assert (=> b!6131847 (= e!3737426 e!3737429)))

(declare-fun res!2541304 () Bool)

(assert (=> b!6131847 (=> res!2541304 e!3737429)))

(declare-fun call!508602 () Bool)

(assert (=> b!6131847 (= res!2541304 call!508602)))

(declare-fun bm!508597 () Bool)

(assert (=> bm!508597 (= call!508602 (isEmpty!36343 s!2326))))

(declare-fun b!6131841 () Bool)

(declare-fun res!2541308 () Bool)

(assert (=> b!6131841 (=> (not res!2541308) (not e!3737424))))

(assert (=> b!6131841 (= res!2541308 (not call!508602))))

(declare-fun d!1921201 () Bool)

(assert (=> d!1921201 e!3737423))

(declare-fun c!1102425 () Bool)

(assert (=> d!1921201 (= c!1102425 ((_ is EmptyExpr!16075) (regTwo!32662 r!7292)))))

(assert (=> d!1921201 (= lt!2332008 e!3737428)))

(declare-fun c!1102426 () Bool)

(assert (=> d!1921201 (= c!1102426 (isEmpty!36343 s!2326))))

(assert (=> d!1921201 (validRegex!7811 (regTwo!32662 r!7292))))

(assert (=> d!1921201 (= (matchR!8258 (regTwo!32662 r!7292) s!2326) lt!2332008)))

(declare-fun b!6131848 () Bool)

(assert (=> b!6131848 (= e!3737428 (matchR!8258 (derivativeStep!4795 (regTwo!32662 r!7292) (head!12670 s!2326)) (tail!11755 s!2326)))))

(declare-fun b!6131849 () Bool)

(assert (=> b!6131849 (= e!3737425 e!3737426)))

(declare-fun res!2541311 () Bool)

(assert (=> b!6131849 (=> (not res!2541311) (not e!3737426))))

(assert (=> b!6131849 (= res!2541311 (not lt!2332008))))

(declare-fun b!6131850 () Bool)

(assert (=> b!6131850 (= e!3737423 (= lt!2332008 call!508602))))

(declare-fun b!6131851 () Bool)

(assert (=> b!6131851 (= e!3737427 (not lt!2332008))))

(assert (= (and d!1921201 c!1102426) b!6131838))

(assert (= (and d!1921201 (not c!1102426)) b!6131848))

(assert (= (and d!1921201 c!1102425) b!6131850))

(assert (= (and d!1921201 (not c!1102425)) b!6131845))

(assert (= (and b!6131845 c!1102427) b!6131851))

(assert (= (and b!6131845 (not c!1102427)) b!6131842))

(assert (= (and b!6131842 (not res!2541307)) b!6131846))

(assert (= (and b!6131846 res!2541305) b!6131841))

(assert (= (and b!6131841 res!2541308) b!6131840))

(assert (= (and b!6131840 res!2541309) b!6131844))

(assert (= (and b!6131846 (not res!2541306)) b!6131849))

(assert (= (and b!6131849 res!2541311) b!6131847))

(assert (= (and b!6131847 (not res!2541304)) b!6131839))

(assert (= (and b!6131839 (not res!2541310)) b!6131843))

(assert (= (or b!6131850 b!6131847 b!6131841) bm!508597))

(assert (=> b!6131839 m!6974278))

(assert (=> b!6131839 m!6974278))

(assert (=> b!6131839 m!6974280))

(assert (=> bm!508597 m!6974266))

(assert (=> d!1921201 m!6974266))

(declare-fun m!6975194 () Bool)

(assert (=> d!1921201 m!6975194))

(assert (=> b!6131840 m!6974278))

(assert (=> b!6131840 m!6974278))

(assert (=> b!6131840 m!6974280))

(assert (=> b!6131844 m!6974282))

(declare-fun m!6975196 () Bool)

(assert (=> b!6131838 m!6975196))

(assert (=> b!6131848 m!6974282))

(assert (=> b!6131848 m!6974282))

(declare-fun m!6975198 () Bool)

(assert (=> b!6131848 m!6975198))

(assert (=> b!6131848 m!6974278))

(assert (=> b!6131848 m!6975198))

(assert (=> b!6131848 m!6974278))

(declare-fun m!6975200 () Bool)

(assert (=> b!6131848 m!6975200))

(assert (=> b!6131843 m!6974282))

(assert (=> b!6130875 d!1921201))

(declare-fun d!1921203 () Bool)

(declare-fun c!1102428 () Bool)

(assert (=> d!1921203 (= c!1102428 (isEmpty!36343 (tail!11755 (t!377994 s!2326))))))

(declare-fun e!3737430 () Bool)

(assert (=> d!1921203 (= (matchZipper!2087 (derivationStepZipper!2048 ((_ map or) lt!2331875 lt!2331874) (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))) e!3737430)))

(declare-fun b!6131852 () Bool)

(assert (=> b!6131852 (= e!3737430 (nullableZipper!1856 (derivationStepZipper!2048 ((_ map or) lt!2331875 lt!2331874) (head!12670 (t!377994 s!2326)))))))

(declare-fun b!6131853 () Bool)

(assert (=> b!6131853 (= e!3737430 (matchZipper!2087 (derivationStepZipper!2048 (derivationStepZipper!2048 ((_ map or) lt!2331875 lt!2331874) (head!12670 (t!377994 s!2326))) (head!12670 (tail!11755 (t!377994 s!2326)))) (tail!11755 (tail!11755 (t!377994 s!2326)))))))

(assert (= (and d!1921203 c!1102428) b!6131852))

(assert (= (and d!1921203 (not c!1102428)) b!6131853))

(assert (=> d!1921203 m!6974146))

(assert (=> d!1921203 m!6975012))

(assert (=> b!6131852 m!6974450))

(declare-fun m!6975202 () Bool)

(assert (=> b!6131852 m!6975202))

(assert (=> b!6131853 m!6974146))

(assert (=> b!6131853 m!6975016))

(assert (=> b!6131853 m!6974450))

(assert (=> b!6131853 m!6975016))

(declare-fun m!6975204 () Bool)

(assert (=> b!6131853 m!6975204))

(assert (=> b!6131853 m!6974146))

(assert (=> b!6131853 m!6975020))

(assert (=> b!6131853 m!6975204))

(assert (=> b!6131853 m!6975020))

(declare-fun m!6975206 () Bool)

(assert (=> b!6131853 m!6975206))

(assert (=> b!6130989 d!1921203))

(declare-fun bs!1520959 () Bool)

(declare-fun d!1921205 () Bool)

(assert (= bs!1520959 (and d!1921205 b!6130360)))

(declare-fun lambda!334059 () Int)

(assert (=> bs!1520959 (= (= (head!12670 (t!377994 s!2326)) (h!70849 s!2326)) (= lambda!334059 lambda!333955))))

(declare-fun bs!1520960 () Bool)

(assert (= bs!1520960 (and d!1921205 d!1921129)))

(assert (=> bs!1520960 (= lambda!334059 lambda!334053)))

(declare-fun bs!1520961 () Bool)

(assert (= bs!1520961 (and d!1921205 d!1921193)))

(assert (=> bs!1520961 (= lambda!334059 lambda!334058)))

(assert (=> d!1921205 true))

(assert (=> d!1921205 (= (derivationStepZipper!2048 ((_ map or) lt!2331875 lt!2331874) (head!12670 (t!377994 s!2326))) (flatMap!1580 ((_ map or) lt!2331875 lt!2331874) lambda!334059))))

(declare-fun bs!1520962 () Bool)

(assert (= bs!1520962 d!1921205))

(declare-fun m!6975208 () Bool)

(assert (=> bs!1520962 m!6975208))

(assert (=> b!6130989 d!1921205))

(assert (=> b!6130989 d!1921131))

(assert (=> b!6130989 d!1921133))

(assert (=> d!1920825 d!1920811))

(declare-fun b!6131854 () Bool)

(declare-fun res!2541313 () Bool)

(declare-fun e!3737432 () Bool)

(assert (=> b!6131854 (=> (not res!2541313) (not e!3737432))))

(declare-fun call!508605 () Bool)

(assert (=> b!6131854 (= res!2541313 call!508605)))

(declare-fun e!3737437 () Bool)

(assert (=> b!6131854 (= e!3737437 e!3737432)))

(declare-fun bm!508598 () Bool)

(declare-fun call!508604 () Bool)

(assert (=> bm!508598 (= call!508605 call!508604)))

(declare-fun d!1921207 () Bool)

(declare-fun res!2541316 () Bool)

(declare-fun e!3737436 () Bool)

(assert (=> d!1921207 (=> res!2541316 e!3737436)))

(assert (=> d!1921207 (= res!2541316 ((_ is ElementMatch!16075) (regOne!32662 r!7292)))))

(assert (=> d!1921207 (= (validRegex!7811 (regOne!32662 r!7292)) e!3737436)))

(declare-fun bm!508599 () Bool)

(declare-fun call!508603 () Bool)

(declare-fun c!1102430 () Bool)

(assert (=> bm!508599 (= call!508603 (validRegex!7811 (ite c!1102430 (regTwo!32663 (regOne!32662 r!7292)) (regTwo!32662 (regOne!32662 r!7292)))))))

(declare-fun b!6131855 () Bool)

(declare-fun e!3737431 () Bool)

(assert (=> b!6131855 (= e!3737431 call!508603)))

(declare-fun b!6131856 () Bool)

(declare-fun res!2541314 () Bool)

(declare-fun e!3737435 () Bool)

(assert (=> b!6131856 (=> res!2541314 e!3737435)))

(assert (=> b!6131856 (= res!2541314 (not ((_ is Concat!24920) (regOne!32662 r!7292))))))

(assert (=> b!6131856 (= e!3737437 e!3737435)))

(declare-fun b!6131857 () Bool)

(assert (=> b!6131857 (= e!3737435 e!3737431)))

(declare-fun res!2541315 () Bool)

(assert (=> b!6131857 (=> (not res!2541315) (not e!3737431))))

(assert (=> b!6131857 (= res!2541315 call!508605)))

(declare-fun b!6131858 () Bool)

(declare-fun e!3737433 () Bool)

(assert (=> b!6131858 (= e!3737433 e!3737437)))

(assert (=> b!6131858 (= c!1102430 ((_ is Union!16075) (regOne!32662 r!7292)))))

(declare-fun c!1102429 () Bool)

(declare-fun bm!508600 () Bool)

(assert (=> bm!508600 (= call!508604 (validRegex!7811 (ite c!1102429 (reg!16404 (regOne!32662 r!7292)) (ite c!1102430 (regOne!32663 (regOne!32662 r!7292)) (regOne!32662 (regOne!32662 r!7292))))))))

(declare-fun b!6131859 () Bool)

(assert (=> b!6131859 (= e!3737436 e!3737433)))

(assert (=> b!6131859 (= c!1102429 ((_ is Star!16075) (regOne!32662 r!7292)))))

(declare-fun b!6131860 () Bool)

(assert (=> b!6131860 (= e!3737432 call!508603)))

(declare-fun b!6131861 () Bool)

(declare-fun e!3737434 () Bool)

(assert (=> b!6131861 (= e!3737433 e!3737434)))

(declare-fun res!2541312 () Bool)

(assert (=> b!6131861 (= res!2541312 (not (nullable!6068 (reg!16404 (regOne!32662 r!7292)))))))

(assert (=> b!6131861 (=> (not res!2541312) (not e!3737434))))

(declare-fun b!6131862 () Bool)

(assert (=> b!6131862 (= e!3737434 call!508604)))

(assert (= (and d!1921207 (not res!2541316)) b!6131859))

(assert (= (and b!6131859 c!1102429) b!6131861))

(assert (= (and b!6131859 (not c!1102429)) b!6131858))

(assert (= (and b!6131861 res!2541312) b!6131862))

(assert (= (and b!6131858 c!1102430) b!6131854))

(assert (= (and b!6131858 (not c!1102430)) b!6131856))

(assert (= (and b!6131854 res!2541313) b!6131860))

(assert (= (and b!6131856 (not res!2541314)) b!6131857))

(assert (= (and b!6131857 res!2541315) b!6131855))

(assert (= (or b!6131860 b!6131855) bm!508599))

(assert (= (or b!6131854 b!6131857) bm!508598))

(assert (= (or b!6131862 bm!508598) bm!508600))

(declare-fun m!6975210 () Bool)

(assert (=> bm!508599 m!6975210))

(declare-fun m!6975212 () Bool)

(assert (=> bm!508600 m!6975212))

(declare-fun m!6975214 () Bool)

(assert (=> b!6131861 m!6975214))

(assert (=> d!1920825 d!1921207))

(declare-fun bs!1520963 () Bool)

(declare-fun d!1921209 () Bool)

(assert (= bs!1520963 (and d!1921209 d!1920833)))

(declare-fun lambda!334062 () Int)

(assert (=> bs!1520963 (not (= lambda!334062 lambda!334005))))

(declare-fun bs!1520964 () Bool)

(assert (= bs!1520964 (and d!1921209 b!6130712)))

(assert (=> bs!1520964 (not (= lambda!334062 lambda!333984))))

(declare-fun bs!1520965 () Bool)

(assert (= bs!1520965 (and d!1921209 b!6130707)))

(assert (=> bs!1520965 (not (= lambda!334062 lambda!333985))))

(assert (=> bs!1520963 (= lambda!334062 lambda!334004)))

(declare-fun bs!1520966 () Bool)

(assert (= bs!1520966 (and d!1921209 b!6130355)))

(assert (=> bs!1520966 (= lambda!334062 lambda!333953)))

(assert (=> bs!1520966 (not (= lambda!334062 lambda!333954))))

(declare-fun bs!1520967 () Bool)

(assert (= bs!1520967 (and d!1921209 d!1920825)))

(assert (=> bs!1520967 (= lambda!334062 lambda!333999)))

(assert (=> d!1921209 true))

(assert (=> d!1921209 true))

(assert (=> d!1921209 true))

(assert (=> d!1921209 (= (isDefined!12669 (findConcatSeparation!2380 (regOne!32662 r!7292) (regTwo!32662 r!7292) Nil!64401 s!2326 s!2326)) (Exists!3145 lambda!334062))))

(assert (=> d!1921209 true))

(declare-fun _$89!2206 () Unit!157455)

(assert (=> d!1921209 (= (choose!45554 (regOne!32662 r!7292) (regTwo!32662 r!7292) s!2326) _$89!2206)))

(declare-fun bs!1520968 () Bool)

(assert (= bs!1520968 d!1921209))

(assert (=> bs!1520968 m!6974042))

(assert (=> bs!1520968 m!6974042))

(assert (=> bs!1520968 m!6974044))

(declare-fun m!6975216 () Bool)

(assert (=> bs!1520968 m!6975216))

(assert (=> d!1920825 d!1921209))

(declare-fun d!1921211 () Bool)

(assert (=> d!1921211 (= (Exists!3145 lambda!333999) (choose!45553 lambda!333999))))

(declare-fun bs!1520969 () Bool)

(assert (= bs!1520969 d!1921211))

(declare-fun m!6975218 () Bool)

(assert (=> bs!1520969 m!6975218))

(assert (=> d!1920825 d!1921211))

(assert (=> d!1920825 d!1920835))

(declare-fun d!1921213 () Bool)

(assert (=> d!1921213 (= (nullable!6068 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))) (nullableFct!2032 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun bs!1520970 () Bool)

(assert (= bs!1520970 d!1921213))

(declare-fun m!6975220 () Bool)

(assert (=> bs!1520970 m!6975220))

(assert (=> b!6131067 d!1921213))

(declare-fun b!6131867 () Bool)

(declare-fun res!2541322 () Bool)

(declare-fun e!3737441 () Bool)

(assert (=> b!6131867 (=> (not res!2541322) (not e!3737441))))

(declare-fun call!508608 () Bool)

(assert (=> b!6131867 (= res!2541322 call!508608)))

(declare-fun e!3737446 () Bool)

(assert (=> b!6131867 (= e!3737446 e!3737441)))

(declare-fun bm!508601 () Bool)

(declare-fun call!508607 () Bool)

(assert (=> bm!508601 (= call!508608 call!508607)))

(declare-fun d!1921215 () Bool)

(declare-fun res!2541325 () Bool)

(declare-fun e!3737445 () Bool)

(assert (=> d!1921215 (=> res!2541325 e!3737445)))

(assert (=> d!1921215 (= res!2541325 ((_ is ElementMatch!16075) lt!2331963))))

(assert (=> d!1921215 (= (validRegex!7811 lt!2331963) e!3737445)))

(declare-fun bm!508602 () Bool)

(declare-fun call!508606 () Bool)

(declare-fun c!1102432 () Bool)

(assert (=> bm!508602 (= call!508606 (validRegex!7811 (ite c!1102432 (regTwo!32663 lt!2331963) (regTwo!32662 lt!2331963))))))

(declare-fun b!6131868 () Bool)

(declare-fun e!3737440 () Bool)

(assert (=> b!6131868 (= e!3737440 call!508606)))

(declare-fun b!6131869 () Bool)

(declare-fun res!2541323 () Bool)

(declare-fun e!3737444 () Bool)

(assert (=> b!6131869 (=> res!2541323 e!3737444)))

(assert (=> b!6131869 (= res!2541323 (not ((_ is Concat!24920) lt!2331963)))))

(assert (=> b!6131869 (= e!3737446 e!3737444)))

(declare-fun b!6131870 () Bool)

(assert (=> b!6131870 (= e!3737444 e!3737440)))

(declare-fun res!2541324 () Bool)

(assert (=> b!6131870 (=> (not res!2541324) (not e!3737440))))

(assert (=> b!6131870 (= res!2541324 call!508608)))

(declare-fun b!6131871 () Bool)

(declare-fun e!3737442 () Bool)

(assert (=> b!6131871 (= e!3737442 e!3737446)))

(assert (=> b!6131871 (= c!1102432 ((_ is Union!16075) lt!2331963))))

(declare-fun bm!508603 () Bool)

(declare-fun c!1102431 () Bool)

(assert (=> bm!508603 (= call!508607 (validRegex!7811 (ite c!1102431 (reg!16404 lt!2331963) (ite c!1102432 (regOne!32663 lt!2331963) (regOne!32662 lt!2331963)))))))

(declare-fun b!6131872 () Bool)

(assert (=> b!6131872 (= e!3737445 e!3737442)))

(assert (=> b!6131872 (= c!1102431 ((_ is Star!16075) lt!2331963))))

(declare-fun b!6131873 () Bool)

(assert (=> b!6131873 (= e!3737441 call!508606)))

(declare-fun b!6131874 () Bool)

(declare-fun e!3737443 () Bool)

(assert (=> b!6131874 (= e!3737442 e!3737443)))

(declare-fun res!2541321 () Bool)

(assert (=> b!6131874 (= res!2541321 (not (nullable!6068 (reg!16404 lt!2331963))))))

(assert (=> b!6131874 (=> (not res!2541321) (not e!3737443))))

(declare-fun b!6131875 () Bool)

(assert (=> b!6131875 (= e!3737443 call!508607)))

(assert (= (and d!1921215 (not res!2541325)) b!6131872))

(assert (= (and b!6131872 c!1102431) b!6131874))

(assert (= (and b!6131872 (not c!1102431)) b!6131871))

(assert (= (and b!6131874 res!2541321) b!6131875))

(assert (= (and b!6131871 c!1102432) b!6131867))

(assert (= (and b!6131871 (not c!1102432)) b!6131869))

(assert (= (and b!6131867 res!2541322) b!6131873))

(assert (= (and b!6131869 (not res!2541323)) b!6131870))

(assert (= (and b!6131870 res!2541324) b!6131868))

(assert (= (or b!6131873 b!6131868) bm!508602))

(assert (= (or b!6131867 b!6131870) bm!508601))

(assert (= (or b!6131875 bm!508601) bm!508603))

(declare-fun m!6975222 () Bool)

(assert (=> bm!508602 m!6975222))

(declare-fun m!6975224 () Bool)

(assert (=> bm!508603 m!6975224))

(declare-fun m!6975226 () Bool)

(assert (=> b!6131874 m!6975226))

(assert (=> d!1920843 d!1921215))

(declare-fun d!1921217 () Bool)

(declare-fun res!2541326 () Bool)

(declare-fun e!3737447 () Bool)

(assert (=> d!1921217 (=> res!2541326 e!3737447)))

(assert (=> d!1921217 (= res!2541326 ((_ is Nil!64400) (unfocusZipperList!1496 zl!343)))))

(assert (=> d!1921217 (= (forall!15195 (unfocusZipperList!1496 zl!343) lambda!334009) e!3737447)))

(declare-fun b!6131876 () Bool)

(declare-fun e!3737448 () Bool)

(assert (=> b!6131876 (= e!3737447 e!3737448)))

(declare-fun res!2541327 () Bool)

(assert (=> b!6131876 (=> (not res!2541327) (not e!3737448))))

(assert (=> b!6131876 (= res!2541327 (dynLambda!25372 lambda!334009 (h!70848 (unfocusZipperList!1496 zl!343))))))

(declare-fun b!6131877 () Bool)

(assert (=> b!6131877 (= e!3737448 (forall!15195 (t!377993 (unfocusZipperList!1496 zl!343)) lambda!334009))))

(assert (= (and d!1921217 (not res!2541326)) b!6131876))

(assert (= (and b!6131876 res!2541327) b!6131877))

(declare-fun b_lambda!233423 () Bool)

(assert (=> (not b_lambda!233423) (not b!6131876)))

(declare-fun m!6975228 () Bool)

(assert (=> b!6131876 m!6975228))

(declare-fun m!6975230 () Bool)

(assert (=> b!6131877 m!6975230))

(assert (=> d!1920843 d!1921217))

(declare-fun d!1921219 () Bool)

(assert (=> d!1921219 (= (nullable!6068 (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))) (nullableFct!2032 (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))))))

(declare-fun bs!1520971 () Bool)

(assert (= bs!1520971 d!1921219))

(declare-fun m!6975232 () Bool)

(assert (=> bs!1520971 m!6975232))

(assert (=> b!6131031 d!1921219))

(declare-fun d!1921221 () Bool)

(assert (=> d!1921221 (= (Exists!3145 (ite c!1102131 lambda!333984 lambda!333985)) (choose!45553 (ite c!1102131 lambda!333984 lambda!333985)))))

(declare-fun bs!1520972 () Bool)

(assert (= bs!1520972 d!1921221))

(declare-fun m!6975234 () Bool)

(assert (=> bs!1520972 m!6975234))

(assert (=> bm!508406 d!1921221))

(declare-fun b!6131878 () Bool)

(declare-fun e!3737454 () Bool)

(assert (=> b!6131878 (= e!3737454 (nullable!6068 (regOne!32662 r!7292)))))

(declare-fun b!6131879 () Bool)

(declare-fun res!2541334 () Bool)

(declare-fun e!3737455 () Bool)

(assert (=> b!6131879 (=> res!2541334 e!3737455)))

(assert (=> b!6131879 (= res!2541334 (not (isEmpty!36343 (tail!11755 (_1!36357 (get!22214 lt!2331948))))))))

(declare-fun b!6131880 () Bool)

(declare-fun res!2541333 () Bool)

(declare-fun e!3737450 () Bool)

(assert (=> b!6131880 (=> (not res!2541333) (not e!3737450))))

(assert (=> b!6131880 (= res!2541333 (isEmpty!36343 (tail!11755 (_1!36357 (get!22214 lt!2331948)))))))

(declare-fun b!6131882 () Bool)

(declare-fun res!2541331 () Bool)

(declare-fun e!3737451 () Bool)

(assert (=> b!6131882 (=> res!2541331 e!3737451)))

(assert (=> b!6131882 (= res!2541331 (not ((_ is ElementMatch!16075) (regOne!32662 r!7292))))))

(declare-fun e!3737453 () Bool)

(assert (=> b!6131882 (= e!3737453 e!3737451)))

(declare-fun b!6131883 () Bool)

(assert (=> b!6131883 (= e!3737455 (not (= (head!12670 (_1!36357 (get!22214 lt!2331948))) (c!1102031 (regOne!32662 r!7292)))))))

(declare-fun b!6131884 () Bool)

(assert (=> b!6131884 (= e!3737450 (= (head!12670 (_1!36357 (get!22214 lt!2331948))) (c!1102031 (regOne!32662 r!7292))))))

(declare-fun b!6131885 () Bool)

(declare-fun e!3737449 () Bool)

(assert (=> b!6131885 (= e!3737449 e!3737453)))

(declare-fun c!1102435 () Bool)

(assert (=> b!6131885 (= c!1102435 ((_ is EmptyLang!16075) (regOne!32662 r!7292)))))

(declare-fun b!6131886 () Bool)

(declare-fun res!2541330 () Bool)

(assert (=> b!6131886 (=> res!2541330 e!3737451)))

(assert (=> b!6131886 (= res!2541330 e!3737450)))

(declare-fun res!2541329 () Bool)

(assert (=> b!6131886 (=> (not res!2541329) (not e!3737450))))

(declare-fun lt!2332009 () Bool)

(assert (=> b!6131886 (= res!2541329 lt!2332009)))

(declare-fun b!6131887 () Bool)

(declare-fun e!3737452 () Bool)

(assert (=> b!6131887 (= e!3737452 e!3737455)))

(declare-fun res!2541328 () Bool)

(assert (=> b!6131887 (=> res!2541328 e!3737455)))

(declare-fun call!508609 () Bool)

(assert (=> b!6131887 (= res!2541328 call!508609)))

(declare-fun bm!508604 () Bool)

(assert (=> bm!508604 (= call!508609 (isEmpty!36343 (_1!36357 (get!22214 lt!2331948))))))

(declare-fun b!6131881 () Bool)

(declare-fun res!2541332 () Bool)

(assert (=> b!6131881 (=> (not res!2541332) (not e!3737450))))

(assert (=> b!6131881 (= res!2541332 (not call!508609))))

(declare-fun d!1921223 () Bool)

(assert (=> d!1921223 e!3737449))

(declare-fun c!1102433 () Bool)

(assert (=> d!1921223 (= c!1102433 ((_ is EmptyExpr!16075) (regOne!32662 r!7292)))))

(assert (=> d!1921223 (= lt!2332009 e!3737454)))

(declare-fun c!1102434 () Bool)

(assert (=> d!1921223 (= c!1102434 (isEmpty!36343 (_1!36357 (get!22214 lt!2331948))))))

(assert (=> d!1921223 (validRegex!7811 (regOne!32662 r!7292))))

(assert (=> d!1921223 (= (matchR!8258 (regOne!32662 r!7292) (_1!36357 (get!22214 lt!2331948))) lt!2332009)))

(declare-fun b!6131888 () Bool)

(assert (=> b!6131888 (= e!3737454 (matchR!8258 (derivativeStep!4795 (regOne!32662 r!7292) (head!12670 (_1!36357 (get!22214 lt!2331948)))) (tail!11755 (_1!36357 (get!22214 lt!2331948)))))))

(declare-fun b!6131889 () Bool)

(assert (=> b!6131889 (= e!3737451 e!3737452)))

(declare-fun res!2541335 () Bool)

(assert (=> b!6131889 (=> (not res!2541335) (not e!3737452))))

(assert (=> b!6131889 (= res!2541335 (not lt!2332009))))

(declare-fun b!6131890 () Bool)

(assert (=> b!6131890 (= e!3737449 (= lt!2332009 call!508609))))

(declare-fun b!6131891 () Bool)

(assert (=> b!6131891 (= e!3737453 (not lt!2332009))))

(assert (= (and d!1921223 c!1102434) b!6131878))

(assert (= (and d!1921223 (not c!1102434)) b!6131888))

(assert (= (and d!1921223 c!1102433) b!6131890))

(assert (= (and d!1921223 (not c!1102433)) b!6131885))

(assert (= (and b!6131885 c!1102435) b!6131891))

(assert (= (and b!6131885 (not c!1102435)) b!6131882))

(assert (= (and b!6131882 (not res!2541331)) b!6131886))

(assert (= (and b!6131886 res!2541329) b!6131881))

(assert (= (and b!6131881 res!2541332) b!6131880))

(assert (= (and b!6131880 res!2541333) b!6131884))

(assert (= (and b!6131886 (not res!2541330)) b!6131889))

(assert (= (and b!6131889 res!2541335) b!6131887))

(assert (= (and b!6131887 (not res!2541328)) b!6131879))

(assert (= (and b!6131879 (not res!2541334)) b!6131883))

(assert (= (or b!6131890 b!6131887 b!6131881) bm!508604))

(declare-fun m!6975236 () Bool)

(assert (=> b!6131879 m!6975236))

(assert (=> b!6131879 m!6975236))

(declare-fun m!6975238 () Bool)

(assert (=> b!6131879 m!6975238))

(declare-fun m!6975240 () Bool)

(assert (=> bm!508604 m!6975240))

(assert (=> d!1921223 m!6975240))

(assert (=> d!1921223 m!6974368))

(assert (=> b!6131880 m!6975236))

(assert (=> b!6131880 m!6975236))

(assert (=> b!6131880 m!6975238))

(declare-fun m!6975242 () Bool)

(assert (=> b!6131884 m!6975242))

(assert (=> b!6131878 m!6975188))

(assert (=> b!6131888 m!6975242))

(assert (=> b!6131888 m!6975242))

(declare-fun m!6975244 () Bool)

(assert (=> b!6131888 m!6975244))

(assert (=> b!6131888 m!6975236))

(assert (=> b!6131888 m!6975244))

(assert (=> b!6131888 m!6975236))

(declare-fun m!6975246 () Bool)

(assert (=> b!6131888 m!6975246))

(assert (=> b!6131883 m!6975242))

(assert (=> b!6130871 d!1921223))

(declare-fun d!1921225 () Bool)

(assert (=> d!1921225 (= (get!22214 lt!2331948) (v!52104 lt!2331948))))

(assert (=> b!6130871 d!1921225))

(assert (=> d!1920849 d!1921119))

(declare-fun d!1921227 () Bool)

(assert (=> d!1921227 (= (head!12671 (exprs!5959 (h!70850 zl!343))) (h!70848 (exprs!5959 (h!70850 zl!343))))))

(assert (=> b!6130591 d!1921227))

(declare-fun bs!1520973 () Bool)

(declare-fun b!6131900 () Bool)

(assert (= bs!1520973 (and b!6131900 d!1920833)))

(declare-fun lambda!334063 () Int)

(assert (=> bs!1520973 (not (= lambda!334063 lambda!334005))))

(declare-fun bs!1520974 () Bool)

(assert (= bs!1520974 (and b!6131900 b!6130707)))

(assert (=> bs!1520974 (not (= lambda!334063 lambda!333985))))

(assert (=> bs!1520973 (not (= lambda!334063 lambda!334004))))

(declare-fun bs!1520975 () Bool)

(assert (= bs!1520975 (and b!6131900 b!6130355)))

(assert (=> bs!1520975 (not (= lambda!334063 lambda!333953))))

(assert (=> bs!1520975 (not (= lambda!334063 lambda!333954))))

(declare-fun bs!1520976 () Bool)

(assert (= bs!1520976 (and b!6131900 d!1920825)))

(assert (=> bs!1520976 (not (= lambda!334063 lambda!333999))))

(declare-fun bs!1520977 () Bool)

(assert (= bs!1520977 (and b!6131900 b!6130712)))

(assert (=> bs!1520977 (= (and (= (reg!16404 (regOne!32663 r!7292)) (reg!16404 r!7292)) (= (regOne!32663 r!7292) r!7292)) (= lambda!334063 lambda!333984))))

(declare-fun bs!1520978 () Bool)

(assert (= bs!1520978 (and b!6131900 d!1921209)))

(assert (=> bs!1520978 (not (= lambda!334063 lambda!334062))))

(assert (=> b!6131900 true))

(assert (=> b!6131900 true))

(declare-fun bs!1520979 () Bool)

(declare-fun b!6131895 () Bool)

(assert (= bs!1520979 (and b!6131895 d!1920833)))

(declare-fun lambda!334064 () Int)

(assert (=> bs!1520979 (= (and (= (regOne!32662 (regOne!32663 r!7292)) (regOne!32662 r!7292)) (= (regTwo!32662 (regOne!32663 r!7292)) (regTwo!32662 r!7292))) (= lambda!334064 lambda!334005))))

(declare-fun bs!1520980 () Bool)

(assert (= bs!1520980 (and b!6131895 b!6131900)))

(assert (=> bs!1520980 (not (= lambda!334064 lambda!334063))))

(declare-fun bs!1520981 () Bool)

(assert (= bs!1520981 (and b!6131895 b!6130707)))

(assert (=> bs!1520981 (= (and (= (regOne!32662 (regOne!32663 r!7292)) (regOne!32662 r!7292)) (= (regTwo!32662 (regOne!32663 r!7292)) (regTwo!32662 r!7292))) (= lambda!334064 lambda!333985))))

(assert (=> bs!1520979 (not (= lambda!334064 lambda!334004))))

(declare-fun bs!1520982 () Bool)

(assert (= bs!1520982 (and b!6131895 b!6130355)))

(assert (=> bs!1520982 (not (= lambda!334064 lambda!333953))))

(assert (=> bs!1520982 (= (and (= (regOne!32662 (regOne!32663 r!7292)) (regOne!32662 r!7292)) (= (regTwo!32662 (regOne!32663 r!7292)) (regTwo!32662 r!7292))) (= lambda!334064 lambda!333954))))

(declare-fun bs!1520983 () Bool)

(assert (= bs!1520983 (and b!6131895 d!1920825)))

(assert (=> bs!1520983 (not (= lambda!334064 lambda!333999))))

(declare-fun bs!1520984 () Bool)

(assert (= bs!1520984 (and b!6131895 b!6130712)))

(assert (=> bs!1520984 (not (= lambda!334064 lambda!333984))))

(declare-fun bs!1520985 () Bool)

(assert (= bs!1520985 (and b!6131895 d!1921209)))

(assert (=> bs!1520985 (not (= lambda!334064 lambda!334062))))

(assert (=> b!6131895 true))

(assert (=> b!6131895 true))

(declare-fun b!6131892 () Bool)

(declare-fun e!3737460 () Bool)

(assert (=> b!6131892 (= e!3737460 (= s!2326 (Cons!64401 (c!1102031 (regOne!32663 r!7292)) Nil!64401)))))

(declare-fun b!6131893 () Bool)

(declare-fun c!1102437 () Bool)

(assert (=> b!6131893 (= c!1102437 ((_ is Union!16075) (regOne!32663 r!7292)))))

(declare-fun e!3737456 () Bool)

(assert (=> b!6131893 (= e!3737460 e!3737456)))

(declare-fun b!6131894 () Bool)

(declare-fun e!3737462 () Bool)

(declare-fun call!508611 () Bool)

(assert (=> b!6131894 (= e!3737462 call!508611)))

(declare-fun e!3737457 () Bool)

(declare-fun call!508610 () Bool)

(assert (=> b!6131895 (= e!3737457 call!508610)))

(declare-fun bm!508605 () Bool)

(declare-fun c!1102439 () Bool)

(assert (=> bm!508605 (= call!508610 (Exists!3145 (ite c!1102439 lambda!334063 lambda!334064)))))

(declare-fun b!6131896 () Bool)

(declare-fun e!3737458 () Bool)

(assert (=> b!6131896 (= e!3737458 (matchRSpec!3176 (regTwo!32663 (regOne!32663 r!7292)) s!2326))))

(declare-fun b!6131898 () Bool)

(assert (=> b!6131898 (= e!3737456 e!3737457)))

(assert (=> b!6131898 (= c!1102439 ((_ is Star!16075) (regOne!32663 r!7292)))))

(declare-fun b!6131899 () Bool)

(assert (=> b!6131899 (= e!3737456 e!3737458)))

(declare-fun res!2541336 () Bool)

(assert (=> b!6131899 (= res!2541336 (matchRSpec!3176 (regOne!32663 (regOne!32663 r!7292)) s!2326))))

(assert (=> b!6131899 (=> res!2541336 e!3737458)))

(declare-fun e!3737459 () Bool)

(assert (=> b!6131900 (= e!3737459 call!508610)))

(declare-fun b!6131901 () Bool)

(declare-fun res!2541338 () Bool)

(assert (=> b!6131901 (=> res!2541338 e!3737459)))

(assert (=> b!6131901 (= res!2541338 call!508611)))

(assert (=> b!6131901 (= e!3737457 e!3737459)))

(declare-fun bm!508606 () Bool)

(assert (=> bm!508606 (= call!508611 (isEmpty!36343 s!2326))))

(declare-fun b!6131902 () Bool)

(declare-fun c!1102438 () Bool)

(assert (=> b!6131902 (= c!1102438 ((_ is ElementMatch!16075) (regOne!32663 r!7292)))))

(declare-fun e!3737461 () Bool)

(assert (=> b!6131902 (= e!3737461 e!3737460)))

(declare-fun b!6131897 () Bool)

(assert (=> b!6131897 (= e!3737462 e!3737461)))

(declare-fun res!2541337 () Bool)

(assert (=> b!6131897 (= res!2541337 (not ((_ is EmptyLang!16075) (regOne!32663 r!7292))))))

(assert (=> b!6131897 (=> (not res!2541337) (not e!3737461))))

(declare-fun d!1921229 () Bool)

(declare-fun c!1102436 () Bool)

(assert (=> d!1921229 (= c!1102436 ((_ is EmptyExpr!16075) (regOne!32663 r!7292)))))

(assert (=> d!1921229 (= (matchRSpec!3176 (regOne!32663 r!7292) s!2326) e!3737462)))

(assert (= (and d!1921229 c!1102436) b!6131894))

(assert (= (and d!1921229 (not c!1102436)) b!6131897))

(assert (= (and b!6131897 res!2541337) b!6131902))

(assert (= (and b!6131902 c!1102438) b!6131892))

(assert (= (and b!6131902 (not c!1102438)) b!6131893))

(assert (= (and b!6131893 c!1102437) b!6131899))

(assert (= (and b!6131893 (not c!1102437)) b!6131898))

(assert (= (and b!6131899 (not res!2541336)) b!6131896))

(assert (= (and b!6131898 c!1102439) b!6131901))

(assert (= (and b!6131898 (not c!1102439)) b!6131895))

(assert (= (and b!6131901 (not res!2541338)) b!6131900))

(assert (= (or b!6131900 b!6131895) bm!508605))

(assert (= (or b!6131894 b!6131901) bm!508606))

(declare-fun m!6975248 () Bool)

(assert (=> bm!508605 m!6975248))

(declare-fun m!6975250 () Bool)

(assert (=> b!6131896 m!6975250))

(declare-fun m!6975252 () Bool)

(assert (=> b!6131899 m!6975252))

(assert (=> bm!508606 m!6974266))

(assert (=> b!6130711 d!1921229))

(assert (=> b!6130987 d!1920749))

(declare-fun bs!1520986 () Bool)

(declare-fun d!1921231 () Bool)

(assert (= bs!1520986 (and d!1921231 d!1920843)))

(declare-fun lambda!334065 () Int)

(assert (=> bs!1520986 (= lambda!334065 lambda!334009)))

(declare-fun bs!1520987 () Bool)

(assert (= bs!1520987 (and d!1921231 d!1920845)))

(assert (=> bs!1520987 (= lambda!334065 lambda!334012)))

(declare-fun bs!1520988 () Bool)

(assert (= bs!1520988 (and d!1921231 d!1920755)))

(assert (=> bs!1520988 (= lambda!334065 lambda!333967)))

(declare-fun bs!1520989 () Bool)

(assert (= bs!1520989 (and d!1921231 d!1920753)))

(assert (=> bs!1520989 (= lambda!334065 lambda!333964)))

(declare-fun bs!1520990 () Bool)

(assert (= bs!1520990 (and d!1921231 d!1920839)))

(assert (=> bs!1520990 (= lambda!334065 lambda!334006)))

(declare-fun bs!1520991 () Bool)

(assert (= bs!1520991 (and d!1921231 d!1921143)))

(assert (=> bs!1520991 (= lambda!334065 lambda!334054)))

(declare-fun bs!1520992 () Bool)

(assert (= bs!1520992 (and d!1921231 d!1921171)))

(assert (=> bs!1520992 (= lambda!334065 lambda!334055)))

(declare-fun bs!1520993 () Bool)

(assert (= bs!1520993 (and d!1921231 d!1920869)))

(assert (=> bs!1520993 (= lambda!334065 lambda!334013)))

(declare-fun b!6131903 () Bool)

(declare-fun e!3737464 () Bool)

(declare-fun lt!2332010 () Regex!16075)

(assert (=> b!6131903 (= e!3737464 (= lt!2332010 (head!12671 (t!377993 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun e!3737463 () Bool)

(assert (=> d!1921231 e!3737463))

(declare-fun res!2541340 () Bool)

(assert (=> d!1921231 (=> (not res!2541340) (not e!3737463))))

(assert (=> d!1921231 (= res!2541340 (validRegex!7811 lt!2332010))))

(declare-fun e!3737465 () Regex!16075)

(assert (=> d!1921231 (= lt!2332010 e!3737465)))

(declare-fun c!1102441 () Bool)

(declare-fun e!3737468 () Bool)

(assert (=> d!1921231 (= c!1102441 e!3737468)))

(declare-fun res!2541339 () Bool)

(assert (=> d!1921231 (=> (not res!2541339) (not e!3737468))))

(assert (=> d!1921231 (= res!2541339 ((_ is Cons!64400) (t!377993 (exprs!5959 (h!70850 zl!343)))))))

(assert (=> d!1921231 (forall!15195 (t!377993 (exprs!5959 (h!70850 zl!343))) lambda!334065)))

(assert (=> d!1921231 (= (generalisedConcat!1672 (t!377993 (exprs!5959 (h!70850 zl!343)))) lt!2332010)))

(declare-fun b!6131904 () Bool)

(assert (=> b!6131904 (= e!3737468 (isEmpty!36340 (t!377993 (t!377993 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun b!6131905 () Bool)

(assert (=> b!6131905 (= e!3737465 (h!70848 (t!377993 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun b!6131906 () Bool)

(declare-fun e!3737467 () Regex!16075)

(assert (=> b!6131906 (= e!3737467 EmptyExpr!16075)))

(declare-fun b!6131907 () Bool)

(assert (=> b!6131907 (= e!3737467 (Concat!24920 (h!70848 (t!377993 (exprs!5959 (h!70850 zl!343)))) (generalisedConcat!1672 (t!377993 (t!377993 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun b!6131908 () Bool)

(assert (=> b!6131908 (= e!3737464 (isConcat!1014 lt!2332010))))

(declare-fun b!6131909 () Bool)

(declare-fun e!3737466 () Bool)

(assert (=> b!6131909 (= e!3737466 e!3737464)))

(declare-fun c!1102442 () Bool)

(assert (=> b!6131909 (= c!1102442 (isEmpty!36340 (tail!11756 (t!377993 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun b!6131910 () Bool)

(assert (=> b!6131910 (= e!3737466 (isEmptyExpr!1491 lt!2332010))))

(declare-fun b!6131911 () Bool)

(assert (=> b!6131911 (= e!3737463 e!3737466)))

(declare-fun c!1102440 () Bool)

(assert (=> b!6131911 (= c!1102440 (isEmpty!36340 (t!377993 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun b!6131912 () Bool)

(assert (=> b!6131912 (= e!3737465 e!3737467)))

(declare-fun c!1102443 () Bool)

(assert (=> b!6131912 (= c!1102443 ((_ is Cons!64400) (t!377993 (exprs!5959 (h!70850 zl!343)))))))

(assert (= (and d!1921231 res!2541339) b!6131904))

(assert (= (and d!1921231 c!1102441) b!6131905))

(assert (= (and d!1921231 (not c!1102441)) b!6131912))

(assert (= (and b!6131912 c!1102443) b!6131907))

(assert (= (and b!6131912 (not c!1102443)) b!6131906))

(assert (= (and d!1921231 res!2541340) b!6131911))

(assert (= (and b!6131911 c!1102440) b!6131910))

(assert (= (and b!6131911 (not c!1102440)) b!6131909))

(assert (= (and b!6131909 c!1102442) b!6131903))

(assert (= (and b!6131909 (not c!1102442)) b!6131908))

(declare-fun m!6975254 () Bool)

(assert (=> b!6131909 m!6975254))

(assert (=> b!6131909 m!6975254))

(declare-fun m!6975256 () Bool)

(assert (=> b!6131909 m!6975256))

(declare-fun m!6975258 () Bool)

(assert (=> b!6131907 m!6975258))

(declare-fun m!6975260 () Bool)

(assert (=> d!1921231 m!6975260))

(declare-fun m!6975262 () Bool)

(assert (=> d!1921231 m!6975262))

(declare-fun m!6975264 () Bool)

(assert (=> b!6131904 m!6975264))

(assert (=> b!6131911 m!6973984))

(declare-fun m!6975266 () Bool)

(assert (=> b!6131903 m!6975266))

(declare-fun m!6975268 () Bool)

(assert (=> b!6131910 m!6975268))

(declare-fun m!6975270 () Bool)

(assert (=> b!6131908 m!6975270))

(assert (=> b!6130595 d!1921231))

(declare-fun d!1921233 () Bool)

(declare-fun c!1102444 () Bool)

(assert (=> d!1921233 (= c!1102444 (isEmpty!36343 (tail!11755 (t!377994 s!2326))))))

(declare-fun e!3737469 () Bool)

(assert (=> d!1921233 (= (matchZipper!2087 (derivationStepZipper!2048 lt!2331884 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))) e!3737469)))

(declare-fun b!6131913 () Bool)

(assert (=> b!6131913 (= e!3737469 (nullableZipper!1856 (derivationStepZipper!2048 lt!2331884 (head!12670 (t!377994 s!2326)))))))

(declare-fun b!6131914 () Bool)

(assert (=> b!6131914 (= e!3737469 (matchZipper!2087 (derivationStepZipper!2048 (derivationStepZipper!2048 lt!2331884 (head!12670 (t!377994 s!2326))) (head!12670 (tail!11755 (t!377994 s!2326)))) (tail!11755 (tail!11755 (t!377994 s!2326)))))))

(assert (= (and d!1921233 c!1102444) b!6131913))

(assert (= (and d!1921233 (not c!1102444)) b!6131914))

(assert (=> d!1921233 m!6974146))

(assert (=> d!1921233 m!6975012))

(assert (=> b!6131913 m!6974418))

(declare-fun m!6975272 () Bool)

(assert (=> b!6131913 m!6975272))

(assert (=> b!6131914 m!6974146))

(assert (=> b!6131914 m!6975016))

(assert (=> b!6131914 m!6974418))

(assert (=> b!6131914 m!6975016))

(declare-fun m!6975274 () Bool)

(assert (=> b!6131914 m!6975274))

(assert (=> b!6131914 m!6974146))

(assert (=> b!6131914 m!6975020))

(assert (=> b!6131914 m!6975274))

(assert (=> b!6131914 m!6975020))

(declare-fun m!6975276 () Bool)

(assert (=> b!6131914 m!6975276))

(assert (=> b!6130950 d!1921233))

(declare-fun bs!1520994 () Bool)

(declare-fun d!1921235 () Bool)

(assert (= bs!1520994 (and d!1921235 b!6130360)))

(declare-fun lambda!334066 () Int)

(assert (=> bs!1520994 (= (= (head!12670 (t!377994 s!2326)) (h!70849 s!2326)) (= lambda!334066 lambda!333955))))

(declare-fun bs!1520995 () Bool)

(assert (= bs!1520995 (and d!1921235 d!1921129)))

(assert (=> bs!1520995 (= lambda!334066 lambda!334053)))

(declare-fun bs!1520996 () Bool)

(assert (= bs!1520996 (and d!1921235 d!1921193)))

(assert (=> bs!1520996 (= lambda!334066 lambda!334058)))

(declare-fun bs!1520997 () Bool)

(assert (= bs!1520997 (and d!1921235 d!1921205)))

(assert (=> bs!1520997 (= lambda!334066 lambda!334059)))

(assert (=> d!1921235 true))

(assert (=> d!1921235 (= (derivationStepZipper!2048 lt!2331884 (head!12670 (t!377994 s!2326))) (flatMap!1580 lt!2331884 lambda!334066))))

(declare-fun bs!1520998 () Bool)

(assert (= bs!1520998 d!1921235))

(declare-fun m!6975278 () Bool)

(assert (=> bs!1520998 m!6975278))

(assert (=> b!6130950 d!1921235))

(assert (=> b!6130950 d!1921131))

(assert (=> b!6130950 d!1921133))

(declare-fun b!6131915 () Bool)

(declare-fun e!3737475 () (InoxSet Context!10918))

(declare-fun e!3737471 () (InoxSet Context!10918))

(assert (=> b!6131915 (= e!3737475 e!3737471)))

(declare-fun c!1102445 () Bool)

(assert (=> b!6131915 (= c!1102445 ((_ is Concat!24920) (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))))))

(declare-fun bm!508607 () Bool)

(declare-fun call!508616 () (InoxSet Context!10918))

(declare-fun call!508613 () (InoxSet Context!10918))

(assert (=> bm!508607 (= call!508616 call!508613)))

(declare-fun b!6131916 () Bool)

(declare-fun c!1102448 () Bool)

(declare-fun e!3737474 () Bool)

(assert (=> b!6131916 (= c!1102448 e!3737474)))

(declare-fun res!2541341 () Bool)

(assert (=> b!6131916 (=> (not res!2541341) (not e!3737474))))

(assert (=> b!6131916 (= res!2541341 ((_ is Concat!24920) (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))))))

(declare-fun e!3737473 () (InoxSet Context!10918))

(assert (=> b!6131916 (= e!3737473 e!3737475)))

(declare-fun bm!508609 () Bool)

(declare-fun call!508612 () (InoxSet Context!10918))

(assert (=> bm!508609 (= call!508613 call!508612)))

(declare-fun b!6131917 () Bool)

(declare-fun call!508614 () (InoxSet Context!10918))

(assert (=> b!6131917 (= e!3737473 ((_ map or) call!508614 call!508612))))

(declare-fun e!3737472 () (InoxSet Context!10918))

(declare-fun b!6131918 () Bool)

(assert (=> b!6131918 (= e!3737472 (store ((as const (Array Context!10918 Bool)) false) (ite (or c!1102217 c!1102216) lt!2331882 (Context!10919 call!508445)) true))))

(declare-fun b!6131919 () Bool)

(declare-fun c!1102447 () Bool)

(assert (=> b!6131919 (= c!1102447 ((_ is Star!16075) (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))))))

(declare-fun e!3737470 () (InoxSet Context!10918))

(assert (=> b!6131919 (= e!3737471 e!3737470)))

(declare-fun b!6131920 () Bool)

(assert (=> b!6131920 (= e!3737472 e!3737473)))

(declare-fun c!1102449 () Bool)

(assert (=> b!6131920 (= c!1102449 ((_ is Union!16075) (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))))))

(declare-fun bm!508610 () Bool)

(declare-fun call!508615 () List!64524)

(assert (=> bm!508610 (= call!508614 (derivationStepZipperDown!1323 (ite c!1102449 (regOne!32663 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))) (regOne!32662 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292)))))))) (ite c!1102449 (ite (or c!1102217 c!1102216) lt!2331882 (Context!10919 call!508445)) (Context!10919 call!508615)) (h!70849 s!2326)))))

(declare-fun b!6131921 () Bool)

(assert (=> b!6131921 (= e!3737471 call!508616)))

(declare-fun bm!508608 () Bool)

(declare-fun call!508617 () List!64524)

(assert (=> bm!508608 (= call!508617 call!508615)))

(declare-fun d!1921237 () Bool)

(declare-fun c!1102446 () Bool)

(assert (=> d!1921237 (= c!1102446 (and ((_ is ElementMatch!16075) (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))) (= (c!1102031 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))) (h!70849 s!2326))))))

(assert (=> d!1921237 (= (derivationStepZipperDown!1323 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292)))))) (ite (or c!1102217 c!1102216) lt!2331882 (Context!10919 call!508445)) (h!70849 s!2326)) e!3737472)))

(declare-fun bm!508611 () Bool)

(assert (=> bm!508611 (= call!508612 (derivationStepZipperDown!1323 (ite c!1102449 (regTwo!32663 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))) (ite c!1102448 (regTwo!32662 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))) (ite c!1102445 (regOne!32662 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))) (reg!16404 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292)))))))))) (ite (or c!1102449 c!1102448) (ite (or c!1102217 c!1102216) lt!2331882 (Context!10919 call!508445)) (Context!10919 call!508617)) (h!70849 s!2326)))))

(declare-fun b!6131922 () Bool)

(assert (=> b!6131922 (= e!3737470 call!508616)))

(declare-fun bm!508612 () Bool)

(assert (=> bm!508612 (= call!508615 ($colon$colon!1952 (exprs!5959 (ite (or c!1102217 c!1102216) lt!2331882 (Context!10919 call!508445))) (ite (or c!1102448 c!1102445) (regTwo!32662 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292))))))) (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292)))))))))))

(declare-fun b!6131923 () Bool)

(assert (=> b!6131923 (= e!3737474 (nullable!6068 (regOne!32662 (ite c!1102217 (regTwo!32663 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102216 (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (ite c!1102213 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))) (reg!16404 (regTwo!32663 (regOne!32662 r!7292)))))))))))

(declare-fun b!6131924 () Bool)

(assert (=> b!6131924 (= e!3737475 ((_ map or) call!508614 call!508613))))

(declare-fun b!6131925 () Bool)

(assert (=> b!6131925 (= e!3737470 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921237 c!1102446) b!6131918))

(assert (= (and d!1921237 (not c!1102446)) b!6131920))

(assert (= (and b!6131920 c!1102449) b!6131917))

(assert (= (and b!6131920 (not c!1102449)) b!6131916))

(assert (= (and b!6131916 res!2541341) b!6131923))

(assert (= (and b!6131916 c!1102448) b!6131924))

(assert (= (and b!6131916 (not c!1102448)) b!6131915))

(assert (= (and b!6131915 c!1102445) b!6131921))

(assert (= (and b!6131915 (not c!1102445)) b!6131919))

(assert (= (and b!6131919 c!1102447) b!6131922))

(assert (= (and b!6131919 (not c!1102447)) b!6131925))

(assert (= (or b!6131921 b!6131922) bm!508608))

(assert (= (or b!6131921 b!6131922) bm!508607))

(assert (= (or b!6131924 bm!508608) bm!508612))

(assert (= (or b!6131924 bm!508607) bm!508609))

(assert (= (or b!6131917 bm!508609) bm!508611))

(assert (= (or b!6131917 b!6131924) bm!508610))

(declare-fun m!6975280 () Bool)

(assert (=> bm!508612 m!6975280))

(declare-fun m!6975282 () Bool)

(assert (=> b!6131923 m!6975282))

(declare-fun m!6975284 () Bool)

(assert (=> b!6131918 m!6975284))

(declare-fun m!6975286 () Bool)

(assert (=> bm!508611 m!6975286))

(declare-fun m!6975288 () Bool)

(assert (=> bm!508610 m!6975288))

(assert (=> bm!508439 d!1921237))

(assert (=> d!1920865 d!1920863))

(declare-fun d!1921239 () Bool)

(assert (=> d!1921239 (= (flatMap!1580 z!1189 lambda!333955) (dynLambda!25370 lambda!333955 (h!70850 zl!343)))))

(assert (=> d!1921239 true))

(declare-fun _$13!2999 () Unit!157455)

(assert (=> d!1921239 (= (choose!45558 z!1189 (h!70850 zl!343) lambda!333955) _$13!2999)))

(declare-fun b_lambda!233425 () Bool)

(assert (=> (not b_lambda!233425) (not d!1921239)))

(declare-fun bs!1520999 () Bool)

(assert (= bs!1520999 d!1921239))

(assert (=> bs!1520999 m!6974010))

(assert (=> bs!1520999 m!6974492))

(assert (=> d!1920865 d!1921239))

(assert (=> bs!1520772 d!1920861))

(declare-fun b!6131926 () Bool)

(declare-fun e!3737481 () (InoxSet Context!10918))

(declare-fun e!3737477 () (InoxSet Context!10918))

(assert (=> b!6131926 (= e!3737481 e!3737477)))

(declare-fun c!1102450 () Bool)

(assert (=> b!6131926 (= c!1102450 ((_ is Concat!24920) (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))))))

(declare-fun bm!508613 () Bool)

(declare-fun call!508622 () (InoxSet Context!10918))

(declare-fun call!508619 () (InoxSet Context!10918))

(assert (=> bm!508613 (= call!508622 call!508619)))

(declare-fun b!6131927 () Bool)

(declare-fun c!1102453 () Bool)

(declare-fun e!3737480 () Bool)

(assert (=> b!6131927 (= c!1102453 e!3737480)))

(declare-fun res!2541342 () Bool)

(assert (=> b!6131927 (=> (not res!2541342) (not e!3737480))))

(assert (=> b!6131927 (= res!2541342 ((_ is Concat!24920) (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))))))

(declare-fun e!3737479 () (InoxSet Context!10918))

(assert (=> b!6131927 (= e!3737479 e!3737481)))

(declare-fun bm!508615 () Bool)

(declare-fun call!508618 () (InoxSet Context!10918))

(assert (=> bm!508615 (= call!508619 call!508618)))

(declare-fun b!6131928 () Bool)

(declare-fun call!508620 () (InoxSet Context!10918))

(assert (=> b!6131928 (= e!3737479 ((_ map or) call!508620 call!508618))))

(declare-fun b!6131929 () Bool)

(declare-fun e!3737478 () (InoxSet Context!10918))

(assert (=> b!6131929 (= e!3737478 (store ((as const (Array Context!10918 Bool)) false) (ite c!1102217 lt!2331882 (Context!10919 call!508443)) true))))

(declare-fun b!6131930 () Bool)

(declare-fun c!1102452 () Bool)

(assert (=> b!6131930 (= c!1102452 ((_ is Star!16075) (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))))))

(declare-fun e!3737476 () (InoxSet Context!10918))

(assert (=> b!6131930 (= e!3737477 e!3737476)))

(declare-fun b!6131931 () Bool)

(assert (=> b!6131931 (= e!3737478 e!3737479)))

(declare-fun c!1102454 () Bool)

(assert (=> b!6131931 (= c!1102454 ((_ is Union!16075) (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))))))

(declare-fun call!508621 () List!64524)

(declare-fun bm!508616 () Bool)

(assert (=> bm!508616 (= call!508620 (derivationStepZipperDown!1323 (ite c!1102454 (regOne!32663 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))) (regOne!32662 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))))) (ite c!1102454 (ite c!1102217 lt!2331882 (Context!10919 call!508443)) (Context!10919 call!508621)) (h!70849 s!2326)))))

(declare-fun b!6131932 () Bool)

(assert (=> b!6131932 (= e!3737477 call!508622)))

(declare-fun bm!508614 () Bool)

(declare-fun call!508623 () List!64524)

(assert (=> bm!508614 (= call!508623 call!508621)))

(declare-fun c!1102451 () Bool)

(declare-fun d!1921241 () Bool)

(assert (=> d!1921241 (= c!1102451 (and ((_ is ElementMatch!16075) (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))) (= (c!1102031 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))) (h!70849 s!2326))))))

(assert (=> d!1921241 (= (derivationStepZipperDown!1323 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))) (ite c!1102217 lt!2331882 (Context!10919 call!508443)) (h!70849 s!2326)) e!3737478)))

(declare-fun bm!508617 () Bool)

(assert (=> bm!508617 (= call!508618 (derivationStepZipperDown!1323 (ite c!1102454 (regTwo!32663 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))) (ite c!1102453 (regTwo!32662 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))) (ite c!1102450 (regOne!32662 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))) (reg!16404 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))))))) (ite (or c!1102454 c!1102453) (ite c!1102217 lt!2331882 (Context!10919 call!508443)) (Context!10919 call!508623)) (h!70849 s!2326)))))

(declare-fun b!6131933 () Bool)

(assert (=> b!6131933 (= e!3737476 call!508622)))

(declare-fun bm!508618 () Bool)

(assert (=> bm!508618 (= call!508621 ($colon$colon!1952 (exprs!5959 (ite c!1102217 lt!2331882 (Context!10919 call!508443))) (ite (or c!1102453 c!1102450) (regTwo!32662 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292))))) (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))))))))

(declare-fun b!6131934 () Bool)

(assert (=> b!6131934 (= e!3737480 (nullable!6068 (regOne!32662 (ite c!1102217 (regOne!32663 (regTwo!32663 (regOne!32662 r!7292))) (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))))))))

(declare-fun b!6131935 () Bool)

(assert (=> b!6131935 (= e!3737481 ((_ map or) call!508620 call!508619))))

(declare-fun b!6131936 () Bool)

(assert (=> b!6131936 (= e!3737476 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921241 c!1102451) b!6131929))

(assert (= (and d!1921241 (not c!1102451)) b!6131931))

(assert (= (and b!6131931 c!1102454) b!6131928))

(assert (= (and b!6131931 (not c!1102454)) b!6131927))

(assert (= (and b!6131927 res!2541342) b!6131934))

(assert (= (and b!6131927 c!1102453) b!6131935))

(assert (= (and b!6131927 (not c!1102453)) b!6131926))

(assert (= (and b!6131926 c!1102450) b!6131932))

(assert (= (and b!6131926 (not c!1102450)) b!6131930))

(assert (= (and b!6131930 c!1102452) b!6131933))

(assert (= (and b!6131930 (not c!1102452)) b!6131936))

(assert (= (or b!6131932 b!6131933) bm!508614))

(assert (= (or b!6131932 b!6131933) bm!508613))

(assert (= (or b!6131935 bm!508614) bm!508618))

(assert (= (or b!6131935 bm!508613) bm!508615))

(assert (= (or b!6131928 bm!508615) bm!508617))

(assert (= (or b!6131928 b!6131935) bm!508616))

(declare-fun m!6975290 () Bool)

(assert (=> bm!508618 m!6975290))

(declare-fun m!6975292 () Bool)

(assert (=> b!6131934 m!6975292))

(declare-fun m!6975294 () Bool)

(assert (=> b!6131929 m!6975294))

(declare-fun m!6975296 () Bool)

(assert (=> bm!508617 m!6975296))

(declare-fun m!6975298 () Bool)

(assert (=> bm!508616 m!6975298))

(assert (=> bm!508438 d!1921241))

(declare-fun d!1921243 () Bool)

(declare-fun c!1102455 () Bool)

(assert (=> d!1921243 (= c!1102455 (isEmpty!36343 (tail!11755 (t!377994 s!2326))))))

(declare-fun e!3737482 () Bool)

(assert (=> d!1921243 (= (matchZipper!2087 (derivationStepZipper!2048 lt!2331874 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))) e!3737482)))

(declare-fun b!6131937 () Bool)

(assert (=> b!6131937 (= e!3737482 (nullableZipper!1856 (derivationStepZipper!2048 lt!2331874 (head!12670 (t!377994 s!2326)))))))

(declare-fun b!6131938 () Bool)

(assert (=> b!6131938 (= e!3737482 (matchZipper!2087 (derivationStepZipper!2048 (derivationStepZipper!2048 lt!2331874 (head!12670 (t!377994 s!2326))) (head!12670 (tail!11755 (t!377994 s!2326)))) (tail!11755 (tail!11755 (t!377994 s!2326)))))))

(assert (= (and d!1921243 c!1102455) b!6131937))

(assert (= (and d!1921243 (not c!1102455)) b!6131938))

(assert (=> d!1921243 m!6974146))

(assert (=> d!1921243 m!6975012))

(assert (=> b!6131937 m!6974144))

(declare-fun m!6975300 () Bool)

(assert (=> b!6131937 m!6975300))

(assert (=> b!6131938 m!6974146))

(assert (=> b!6131938 m!6975016))

(assert (=> b!6131938 m!6974144))

(assert (=> b!6131938 m!6975016))

(declare-fun m!6975302 () Bool)

(assert (=> b!6131938 m!6975302))

(assert (=> b!6131938 m!6974146))

(assert (=> b!6131938 m!6975020))

(assert (=> b!6131938 m!6975302))

(assert (=> b!6131938 m!6975020))

(declare-fun m!6975304 () Bool)

(assert (=> b!6131938 m!6975304))

(assert (=> b!6130560 d!1921243))

(declare-fun bs!1521000 () Bool)

(declare-fun d!1921245 () Bool)

(assert (= bs!1521000 (and d!1921245 d!1921193)))

(declare-fun lambda!334067 () Int)

(assert (=> bs!1521000 (= lambda!334067 lambda!334058)))

(declare-fun bs!1521001 () Bool)

(assert (= bs!1521001 (and d!1921245 d!1921235)))

(assert (=> bs!1521001 (= lambda!334067 lambda!334066)))

(declare-fun bs!1521002 () Bool)

(assert (= bs!1521002 (and d!1921245 d!1921129)))

(assert (=> bs!1521002 (= lambda!334067 lambda!334053)))

(declare-fun bs!1521003 () Bool)

(assert (= bs!1521003 (and d!1921245 b!6130360)))

(assert (=> bs!1521003 (= (= (head!12670 (t!377994 s!2326)) (h!70849 s!2326)) (= lambda!334067 lambda!333955))))

(declare-fun bs!1521004 () Bool)

(assert (= bs!1521004 (and d!1921245 d!1921205)))

(assert (=> bs!1521004 (= lambda!334067 lambda!334059)))

(assert (=> d!1921245 true))

(assert (=> d!1921245 (= (derivationStepZipper!2048 lt!2331874 (head!12670 (t!377994 s!2326))) (flatMap!1580 lt!2331874 lambda!334067))))

(declare-fun bs!1521005 () Bool)

(assert (= bs!1521005 d!1921245))

(declare-fun m!6975306 () Bool)

(assert (=> bs!1521005 m!6975306))

(assert (=> b!6130560 d!1921245))

(assert (=> b!6130560 d!1921131))

(assert (=> b!6130560 d!1921133))

(declare-fun b!6131939 () Bool)

(declare-fun res!2541344 () Bool)

(declare-fun e!3737484 () Bool)

(assert (=> b!6131939 (=> (not res!2541344) (not e!3737484))))

(declare-fun call!508626 () Bool)

(assert (=> b!6131939 (= res!2541344 call!508626)))

(declare-fun e!3737489 () Bool)

(assert (=> b!6131939 (= e!3737489 e!3737484)))

(declare-fun bm!508619 () Bool)

(declare-fun call!508625 () Bool)

(assert (=> bm!508619 (= call!508626 call!508625)))

(declare-fun d!1921247 () Bool)

(declare-fun res!2541347 () Bool)

(declare-fun e!3737488 () Bool)

(assert (=> d!1921247 (=> res!2541347 e!3737488)))

(assert (=> d!1921247 (= res!2541347 ((_ is ElementMatch!16075) (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))))))

(assert (=> d!1921247 (= (validRegex!7811 (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))) e!3737488)))

(declare-fun bm!508620 () Bool)

(declare-fun c!1102457 () Bool)

(declare-fun call!508624 () Bool)

(assert (=> bm!508620 (= call!508624 (validRegex!7811 (ite c!1102457 (regTwo!32663 (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))) (regTwo!32662 (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))))))))

(declare-fun b!6131940 () Bool)

(declare-fun e!3737483 () Bool)

(assert (=> b!6131940 (= e!3737483 call!508624)))

(declare-fun b!6131941 () Bool)

(declare-fun res!2541345 () Bool)

(declare-fun e!3737487 () Bool)

(assert (=> b!6131941 (=> res!2541345 e!3737487)))

(assert (=> b!6131941 (= res!2541345 (not ((_ is Concat!24920) (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292))))))))

(assert (=> b!6131941 (= e!3737489 e!3737487)))

(declare-fun b!6131942 () Bool)

(assert (=> b!6131942 (= e!3737487 e!3737483)))

(declare-fun res!2541346 () Bool)

(assert (=> b!6131942 (=> (not res!2541346) (not e!3737483))))

(assert (=> b!6131942 (= res!2541346 call!508626)))

(declare-fun b!6131943 () Bool)

(declare-fun e!3737485 () Bool)

(assert (=> b!6131943 (= e!3737485 e!3737489)))

(assert (=> b!6131943 (= c!1102457 ((_ is Union!16075) (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))))))

(declare-fun c!1102456 () Bool)

(declare-fun bm!508621 () Bool)

(assert (=> bm!508621 (= call!508625 (validRegex!7811 (ite c!1102456 (reg!16404 (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))) (ite c!1102457 (regOne!32663 (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))) (regOne!32662 (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292))))))))))

(declare-fun b!6131944 () Bool)

(assert (=> b!6131944 (= e!3737488 e!3737485)))

(assert (=> b!6131944 (= c!1102456 ((_ is Star!16075) (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))))))

(declare-fun b!6131945 () Bool)

(assert (=> b!6131945 (= e!3737484 call!508624)))

(declare-fun b!6131946 () Bool)

(declare-fun e!3737486 () Bool)

(assert (=> b!6131946 (= e!3737485 e!3737486)))

(declare-fun res!2541343 () Bool)

(assert (=> b!6131946 (= res!2541343 (not (nullable!6068 (reg!16404 (ite c!1102112 (reg!16404 r!7292) (ite c!1102113 (regOne!32663 r!7292) (regOne!32662 r!7292)))))))))

(assert (=> b!6131946 (=> (not res!2541343) (not e!3737486))))

(declare-fun b!6131947 () Bool)

(assert (=> b!6131947 (= e!3737486 call!508625)))

(assert (= (and d!1921247 (not res!2541347)) b!6131944))

(assert (= (and b!6131944 c!1102456) b!6131946))

(assert (= (and b!6131944 (not c!1102456)) b!6131943))

(assert (= (and b!6131946 res!2541343) b!6131947))

(assert (= (and b!6131943 c!1102457) b!6131939))

(assert (= (and b!6131943 (not c!1102457)) b!6131941))

(assert (= (and b!6131939 res!2541344) b!6131945))

(assert (= (and b!6131941 (not res!2541345)) b!6131942))

(assert (= (and b!6131942 res!2541346) b!6131940))

(assert (= (or b!6131945 b!6131940) bm!508620))

(assert (= (or b!6131939 b!6131942) bm!508619))

(assert (= (or b!6131947 bm!508619) bm!508621))

(declare-fun m!6975308 () Bool)

(assert (=> bm!508620 m!6975308))

(declare-fun m!6975310 () Bool)

(assert (=> bm!508621 m!6975310))

(declare-fun m!6975312 () Bool)

(assert (=> b!6131946 m!6975312))

(assert (=> bm!508401 d!1921247))

(declare-fun d!1921249 () Bool)

(declare-fun c!1102460 () Bool)

(assert (=> d!1921249 (= c!1102460 ((_ is Nil!64402) lt!2331893))))

(declare-fun e!3737492 () (InoxSet Context!10918))

(assert (=> d!1921249 (= (content!11972 lt!2331893) e!3737492)))

(declare-fun b!6131952 () Bool)

(assert (=> b!6131952 (= e!3737492 ((as const (Array Context!10918 Bool)) false))))

(declare-fun b!6131953 () Bool)

(assert (=> b!6131953 (= e!3737492 ((_ map or) (store ((as const (Array Context!10918 Bool)) false) (h!70850 lt!2331893) true) (content!11972 (t!377995 lt!2331893))))))

(assert (= (and d!1921249 c!1102460) b!6131952))

(assert (= (and d!1921249 (not c!1102460)) b!6131953))

(declare-fun m!6975314 () Bool)

(assert (=> b!6131953 m!6975314))

(declare-fun m!6975316 () Bool)

(assert (=> b!6131953 m!6975316))

(assert (=> b!6130554 d!1921249))

(declare-fun bs!1521006 () Bool)

(declare-fun d!1921251 () Bool)

(assert (= bs!1521006 (and d!1921251 d!1920843)))

(declare-fun lambda!334068 () Int)

(assert (=> bs!1521006 (= lambda!334068 lambda!334009)))

(declare-fun bs!1521007 () Bool)

(assert (= bs!1521007 (and d!1921251 d!1920845)))

(assert (=> bs!1521007 (= lambda!334068 lambda!334012)))

(declare-fun bs!1521008 () Bool)

(assert (= bs!1521008 (and d!1921251 d!1920755)))

(assert (=> bs!1521008 (= lambda!334068 lambda!333967)))

(declare-fun bs!1521009 () Bool)

(assert (= bs!1521009 (and d!1921251 d!1920753)))

(assert (=> bs!1521009 (= lambda!334068 lambda!333964)))

(declare-fun bs!1521010 () Bool)

(assert (= bs!1521010 (and d!1921251 d!1920839)))

(assert (=> bs!1521010 (= lambda!334068 lambda!334006)))

(declare-fun bs!1521011 () Bool)

(assert (= bs!1521011 (and d!1921251 d!1921143)))

(assert (=> bs!1521011 (= lambda!334068 lambda!334054)))

(declare-fun bs!1521012 () Bool)

(assert (= bs!1521012 (and d!1921251 d!1921231)))

(assert (=> bs!1521012 (= lambda!334068 lambda!334065)))

(declare-fun bs!1521013 () Bool)

(assert (= bs!1521013 (and d!1921251 d!1921171)))

(assert (=> bs!1521013 (= lambda!334068 lambda!334055)))

(declare-fun bs!1521014 () Bool)

(assert (= bs!1521014 (and d!1921251 d!1920869)))

(assert (=> bs!1521014 (= lambda!334068 lambda!334013)))

(assert (=> d!1921251 (= (inv!83434 setElem!41442) (forall!15195 (exprs!5959 setElem!41442) lambda!334068))))

(declare-fun bs!1521015 () Bool)

(assert (= bs!1521015 d!1921251))

(declare-fun m!6975318 () Bool)

(assert (=> bs!1521015 m!6975318))

(assert (=> setNonEmpty!41442 d!1921251))

(declare-fun bs!1521016 () Bool)

(declare-fun d!1921253 () Bool)

(assert (= bs!1521016 (and d!1921253 d!1921125)))

(declare-fun lambda!334069 () Int)

(assert (=> bs!1521016 (= lambda!334069 lambda!334050)))

(declare-fun bs!1521017 () Bool)

(assert (= bs!1521017 (and d!1921253 d!1921177)))

(assert (=> bs!1521017 (= lambda!334069 lambda!334056)))

(declare-fun bs!1521018 () Bool)

(assert (= bs!1521018 (and d!1921253 d!1921179)))

(assert (=> bs!1521018 (= lambda!334069 lambda!334057)))

(assert (=> d!1921253 (= (nullableZipper!1856 lt!2331875) (exists!2422 lt!2331875 lambda!334069))))

(declare-fun bs!1521019 () Bool)

(assert (= bs!1521019 d!1921253))

(declare-fun m!6975320 () Bool)

(assert (=> bs!1521019 m!6975320))

(assert (=> b!6130645 d!1921253))

(declare-fun bs!1521020 () Bool)

(declare-fun d!1921255 () Bool)

(assert (= bs!1521020 (and d!1921255 d!1921125)))

(declare-fun lambda!334070 () Int)

(assert (=> bs!1521020 (= lambda!334070 lambda!334050)))

(declare-fun bs!1521021 () Bool)

(assert (= bs!1521021 (and d!1921255 d!1921177)))

(assert (=> bs!1521021 (= lambda!334070 lambda!334056)))

(declare-fun bs!1521022 () Bool)

(assert (= bs!1521022 (and d!1921255 d!1921179)))

(assert (=> bs!1521022 (= lambda!334070 lambda!334057)))

(declare-fun bs!1521023 () Bool)

(assert (= bs!1521023 (and d!1921255 d!1921253)))

(assert (=> bs!1521023 (= lambda!334070 lambda!334069)))

(assert (=> d!1921255 (= (nullableZipper!1856 ((_ map or) lt!2331875 lt!2331874)) (exists!2422 ((_ map or) lt!2331875 lt!2331874) lambda!334070))))

(declare-fun bs!1521024 () Bool)

(assert (= bs!1521024 d!1921255))

(declare-fun m!6975322 () Bool)

(assert (=> bs!1521024 m!6975322))

(assert (=> b!6130988 d!1921255))

(declare-fun d!1921257 () Bool)

(assert (=> d!1921257 (= (isDefined!12669 lt!2331948) (not (isEmpty!36345 lt!2331948)))))

(declare-fun bs!1521025 () Bool)

(assert (= bs!1521025 d!1921257))

(declare-fun m!6975324 () Bool)

(assert (=> bs!1521025 m!6975324))

(assert (=> d!1920811 d!1921257))

(declare-fun b!6131954 () Bool)

(declare-fun e!3737498 () Bool)

(assert (=> b!6131954 (= e!3737498 (nullable!6068 (regOne!32662 r!7292)))))

(declare-fun b!6131955 () Bool)

(declare-fun res!2541354 () Bool)

(declare-fun e!3737499 () Bool)

(assert (=> b!6131955 (=> res!2541354 e!3737499)))

(assert (=> b!6131955 (= res!2541354 (not (isEmpty!36343 (tail!11755 Nil!64401))))))

(declare-fun b!6131956 () Bool)

(declare-fun res!2541353 () Bool)

(declare-fun e!3737494 () Bool)

(assert (=> b!6131956 (=> (not res!2541353) (not e!3737494))))

(assert (=> b!6131956 (= res!2541353 (isEmpty!36343 (tail!11755 Nil!64401)))))

(declare-fun b!6131958 () Bool)

(declare-fun res!2541351 () Bool)

(declare-fun e!3737495 () Bool)

(assert (=> b!6131958 (=> res!2541351 e!3737495)))

(assert (=> b!6131958 (= res!2541351 (not ((_ is ElementMatch!16075) (regOne!32662 r!7292))))))

(declare-fun e!3737497 () Bool)

(assert (=> b!6131958 (= e!3737497 e!3737495)))

(declare-fun b!6131959 () Bool)

(assert (=> b!6131959 (= e!3737499 (not (= (head!12670 Nil!64401) (c!1102031 (regOne!32662 r!7292)))))))

(declare-fun b!6131960 () Bool)

(assert (=> b!6131960 (= e!3737494 (= (head!12670 Nil!64401) (c!1102031 (regOne!32662 r!7292))))))

(declare-fun b!6131961 () Bool)

(declare-fun e!3737493 () Bool)

(assert (=> b!6131961 (= e!3737493 e!3737497)))

(declare-fun c!1102463 () Bool)

(assert (=> b!6131961 (= c!1102463 ((_ is EmptyLang!16075) (regOne!32662 r!7292)))))

(declare-fun b!6131962 () Bool)

(declare-fun res!2541350 () Bool)

(assert (=> b!6131962 (=> res!2541350 e!3737495)))

(assert (=> b!6131962 (= res!2541350 e!3737494)))

(declare-fun res!2541349 () Bool)

(assert (=> b!6131962 (=> (not res!2541349) (not e!3737494))))

(declare-fun lt!2332011 () Bool)

(assert (=> b!6131962 (= res!2541349 lt!2332011)))

(declare-fun b!6131963 () Bool)

(declare-fun e!3737496 () Bool)

(assert (=> b!6131963 (= e!3737496 e!3737499)))

(declare-fun res!2541348 () Bool)

(assert (=> b!6131963 (=> res!2541348 e!3737499)))

(declare-fun call!508627 () Bool)

(assert (=> b!6131963 (= res!2541348 call!508627)))

(declare-fun bm!508622 () Bool)

(assert (=> bm!508622 (= call!508627 (isEmpty!36343 Nil!64401))))

(declare-fun b!6131957 () Bool)

(declare-fun res!2541352 () Bool)

(assert (=> b!6131957 (=> (not res!2541352) (not e!3737494))))

(assert (=> b!6131957 (= res!2541352 (not call!508627))))

(declare-fun d!1921259 () Bool)

(assert (=> d!1921259 e!3737493))

(declare-fun c!1102461 () Bool)

(assert (=> d!1921259 (= c!1102461 ((_ is EmptyExpr!16075) (regOne!32662 r!7292)))))

(assert (=> d!1921259 (= lt!2332011 e!3737498)))

(declare-fun c!1102462 () Bool)

(assert (=> d!1921259 (= c!1102462 (isEmpty!36343 Nil!64401))))

(assert (=> d!1921259 (validRegex!7811 (regOne!32662 r!7292))))

(assert (=> d!1921259 (= (matchR!8258 (regOne!32662 r!7292) Nil!64401) lt!2332011)))

(declare-fun b!6131964 () Bool)

(assert (=> b!6131964 (= e!3737498 (matchR!8258 (derivativeStep!4795 (regOne!32662 r!7292) (head!12670 Nil!64401)) (tail!11755 Nil!64401)))))

(declare-fun b!6131965 () Bool)

(assert (=> b!6131965 (= e!3737495 e!3737496)))

(declare-fun res!2541355 () Bool)

(assert (=> b!6131965 (=> (not res!2541355) (not e!3737496))))

(assert (=> b!6131965 (= res!2541355 (not lt!2332011))))

(declare-fun b!6131966 () Bool)

(assert (=> b!6131966 (= e!3737493 (= lt!2332011 call!508627))))

(declare-fun b!6131967 () Bool)

(assert (=> b!6131967 (= e!3737497 (not lt!2332011))))

(assert (= (and d!1921259 c!1102462) b!6131954))

(assert (= (and d!1921259 (not c!1102462)) b!6131964))

(assert (= (and d!1921259 c!1102461) b!6131966))

(assert (= (and d!1921259 (not c!1102461)) b!6131961))

(assert (= (and b!6131961 c!1102463) b!6131967))

(assert (= (and b!6131961 (not c!1102463)) b!6131958))

(assert (= (and b!6131958 (not res!2541351)) b!6131962))

(assert (= (and b!6131962 res!2541349) b!6131957))

(assert (= (and b!6131957 res!2541352) b!6131956))

(assert (= (and b!6131956 res!2541353) b!6131960))

(assert (= (and b!6131962 (not res!2541350)) b!6131965))

(assert (= (and b!6131965 res!2541355) b!6131963))

(assert (= (and b!6131963 (not res!2541348)) b!6131955))

(assert (= (and b!6131955 (not res!2541354)) b!6131959))

(assert (= (or b!6131966 b!6131963 b!6131957) bm!508622))

(declare-fun m!6975326 () Bool)

(assert (=> b!6131955 m!6975326))

(assert (=> b!6131955 m!6975326))

(declare-fun m!6975328 () Bool)

(assert (=> b!6131955 m!6975328))

(declare-fun m!6975330 () Bool)

(assert (=> bm!508622 m!6975330))

(assert (=> d!1921259 m!6975330))

(assert (=> d!1921259 m!6974368))

(assert (=> b!6131956 m!6975326))

(assert (=> b!6131956 m!6975326))

(assert (=> b!6131956 m!6975328))

(declare-fun m!6975332 () Bool)

(assert (=> b!6131960 m!6975332))

(assert (=> b!6131954 m!6975188))

(assert (=> b!6131964 m!6975332))

(assert (=> b!6131964 m!6975332))

(declare-fun m!6975334 () Bool)

(assert (=> b!6131964 m!6975334))

(assert (=> b!6131964 m!6975326))

(assert (=> b!6131964 m!6975334))

(assert (=> b!6131964 m!6975326))

(declare-fun m!6975336 () Bool)

(assert (=> b!6131964 m!6975336))

(assert (=> b!6131959 m!6975332))

(assert (=> d!1920811 d!1921259))

(assert (=> d!1920811 d!1921207))

(declare-fun d!1921261 () Bool)

(assert (=> d!1921261 (= ($colon$colon!1952 (exprs!5959 lt!2331882) (ite (or c!1102236 c!1102233) (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (h!70848 (exprs!5959 (h!70850 zl!343))))) (Cons!64400 (ite (or c!1102236 c!1102233) (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (h!70848 (exprs!5959 (h!70850 zl!343)))) (exprs!5959 lt!2331882)))))

(assert (=> bm!508457 d!1921261))

(declare-fun d!1921263 () Bool)

(assert (=> d!1921263 (= ($colon$colon!1952 (exprs!5959 lt!2331882) (ite (or c!1102221 c!1102218) (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (regOne!32663 (regOne!32662 r!7292)))) (Cons!64400 (ite (or c!1102221 c!1102218) (regTwo!32662 (regOne!32663 (regOne!32662 r!7292))) (regOne!32663 (regOne!32662 r!7292))) (exprs!5959 lt!2331882)))))

(assert (=> bm!508446 d!1921263))

(declare-fun bs!1521026 () Bool)

(declare-fun b!6131976 () Bool)

(assert (= bs!1521026 (and b!6131976 b!6131895)))

(declare-fun lambda!334071 () Int)

(assert (=> bs!1521026 (not (= lambda!334071 lambda!334064))))

(declare-fun bs!1521027 () Bool)

(assert (= bs!1521027 (and b!6131976 d!1920833)))

(assert (=> bs!1521027 (not (= lambda!334071 lambda!334005))))

(declare-fun bs!1521028 () Bool)

(assert (= bs!1521028 (and b!6131976 b!6131900)))

(assert (=> bs!1521028 (= (and (= (reg!16404 (regTwo!32663 r!7292)) (reg!16404 (regOne!32663 r!7292))) (= (regTwo!32663 r!7292) (regOne!32663 r!7292))) (= lambda!334071 lambda!334063))))

(declare-fun bs!1521029 () Bool)

(assert (= bs!1521029 (and b!6131976 b!6130707)))

(assert (=> bs!1521029 (not (= lambda!334071 lambda!333985))))

(assert (=> bs!1521027 (not (= lambda!334071 lambda!334004))))

(declare-fun bs!1521030 () Bool)

(assert (= bs!1521030 (and b!6131976 b!6130355)))

(assert (=> bs!1521030 (not (= lambda!334071 lambda!333953))))

(assert (=> bs!1521030 (not (= lambda!334071 lambda!333954))))

(declare-fun bs!1521031 () Bool)

(assert (= bs!1521031 (and b!6131976 d!1920825)))

(assert (=> bs!1521031 (not (= lambda!334071 lambda!333999))))

(declare-fun bs!1521032 () Bool)

(assert (= bs!1521032 (and b!6131976 b!6130712)))

(assert (=> bs!1521032 (= (and (= (reg!16404 (regTwo!32663 r!7292)) (reg!16404 r!7292)) (= (regTwo!32663 r!7292) r!7292)) (= lambda!334071 lambda!333984))))

(declare-fun bs!1521033 () Bool)

(assert (= bs!1521033 (and b!6131976 d!1921209)))

(assert (=> bs!1521033 (not (= lambda!334071 lambda!334062))))

(assert (=> b!6131976 true))

(assert (=> b!6131976 true))

(declare-fun bs!1521034 () Bool)

(declare-fun b!6131971 () Bool)

(assert (= bs!1521034 (and b!6131971 b!6131895)))

(declare-fun lambda!334072 () Int)

(assert (=> bs!1521034 (= (and (= (regOne!32662 (regTwo!32663 r!7292)) (regOne!32662 (regOne!32663 r!7292))) (= (regTwo!32662 (regTwo!32663 r!7292)) (regTwo!32662 (regOne!32663 r!7292)))) (= lambda!334072 lambda!334064))))

(declare-fun bs!1521035 () Bool)

(assert (= bs!1521035 (and b!6131971 d!1920833)))

(assert (=> bs!1521035 (= (and (= (regOne!32662 (regTwo!32663 r!7292)) (regOne!32662 r!7292)) (= (regTwo!32662 (regTwo!32663 r!7292)) (regTwo!32662 r!7292))) (= lambda!334072 lambda!334005))))

(declare-fun bs!1521036 () Bool)

(assert (= bs!1521036 (and b!6131971 b!6131900)))

(assert (=> bs!1521036 (not (= lambda!334072 lambda!334063))))

(declare-fun bs!1521037 () Bool)

(assert (= bs!1521037 (and b!6131971 b!6130707)))

(assert (=> bs!1521037 (= (and (= (regOne!32662 (regTwo!32663 r!7292)) (regOne!32662 r!7292)) (= (regTwo!32662 (regTwo!32663 r!7292)) (regTwo!32662 r!7292))) (= lambda!334072 lambda!333985))))

(assert (=> bs!1521035 (not (= lambda!334072 lambda!334004))))

(declare-fun bs!1521038 () Bool)

(assert (= bs!1521038 (and b!6131971 b!6130355)))

(assert (=> bs!1521038 (= (and (= (regOne!32662 (regTwo!32663 r!7292)) (regOne!32662 r!7292)) (= (regTwo!32662 (regTwo!32663 r!7292)) (regTwo!32662 r!7292))) (= lambda!334072 lambda!333954))))

(declare-fun bs!1521039 () Bool)

(assert (= bs!1521039 (and b!6131971 d!1920825)))

(assert (=> bs!1521039 (not (= lambda!334072 lambda!333999))))

(declare-fun bs!1521040 () Bool)

(assert (= bs!1521040 (and b!6131971 b!6130712)))

(assert (=> bs!1521040 (not (= lambda!334072 lambda!333984))))

(declare-fun bs!1521041 () Bool)

(assert (= bs!1521041 (and b!6131971 d!1921209)))

(assert (=> bs!1521041 (not (= lambda!334072 lambda!334062))))

(declare-fun bs!1521042 () Bool)

(assert (= bs!1521042 (and b!6131971 b!6131976)))

(assert (=> bs!1521042 (not (= lambda!334072 lambda!334071))))

(assert (=> bs!1521038 (not (= lambda!334072 lambda!333953))))

(assert (=> b!6131971 true))

(assert (=> b!6131971 true))

(declare-fun b!6131968 () Bool)

(declare-fun e!3737504 () Bool)

(assert (=> b!6131968 (= e!3737504 (= s!2326 (Cons!64401 (c!1102031 (regTwo!32663 r!7292)) Nil!64401)))))

(declare-fun b!6131969 () Bool)

(declare-fun c!1102465 () Bool)

(assert (=> b!6131969 (= c!1102465 ((_ is Union!16075) (regTwo!32663 r!7292)))))

(declare-fun e!3737500 () Bool)

(assert (=> b!6131969 (= e!3737504 e!3737500)))

(declare-fun b!6131970 () Bool)

(declare-fun e!3737506 () Bool)

(declare-fun call!508629 () Bool)

(assert (=> b!6131970 (= e!3737506 call!508629)))

(declare-fun e!3737501 () Bool)

(declare-fun call!508628 () Bool)

(assert (=> b!6131971 (= e!3737501 call!508628)))

(declare-fun c!1102467 () Bool)

(declare-fun bm!508623 () Bool)

(assert (=> bm!508623 (= call!508628 (Exists!3145 (ite c!1102467 lambda!334071 lambda!334072)))))

(declare-fun b!6131972 () Bool)

(declare-fun e!3737502 () Bool)

(assert (=> b!6131972 (= e!3737502 (matchRSpec!3176 (regTwo!32663 (regTwo!32663 r!7292)) s!2326))))

(declare-fun b!6131974 () Bool)

(assert (=> b!6131974 (= e!3737500 e!3737501)))

(assert (=> b!6131974 (= c!1102467 ((_ is Star!16075) (regTwo!32663 r!7292)))))

(declare-fun b!6131975 () Bool)

(assert (=> b!6131975 (= e!3737500 e!3737502)))

(declare-fun res!2541356 () Bool)

(assert (=> b!6131975 (= res!2541356 (matchRSpec!3176 (regOne!32663 (regTwo!32663 r!7292)) s!2326))))

(assert (=> b!6131975 (=> res!2541356 e!3737502)))

(declare-fun e!3737503 () Bool)

(assert (=> b!6131976 (= e!3737503 call!508628)))

(declare-fun b!6131977 () Bool)

(declare-fun res!2541358 () Bool)

(assert (=> b!6131977 (=> res!2541358 e!3737503)))

(assert (=> b!6131977 (= res!2541358 call!508629)))

(assert (=> b!6131977 (= e!3737501 e!3737503)))

(declare-fun bm!508624 () Bool)

(assert (=> bm!508624 (= call!508629 (isEmpty!36343 s!2326))))

(declare-fun b!6131978 () Bool)

(declare-fun c!1102466 () Bool)

(assert (=> b!6131978 (= c!1102466 ((_ is ElementMatch!16075) (regTwo!32663 r!7292)))))

(declare-fun e!3737505 () Bool)

(assert (=> b!6131978 (= e!3737505 e!3737504)))

(declare-fun b!6131973 () Bool)

(assert (=> b!6131973 (= e!3737506 e!3737505)))

(declare-fun res!2541357 () Bool)

(assert (=> b!6131973 (= res!2541357 (not ((_ is EmptyLang!16075) (regTwo!32663 r!7292))))))

(assert (=> b!6131973 (=> (not res!2541357) (not e!3737505))))

(declare-fun d!1921265 () Bool)

(declare-fun c!1102464 () Bool)

(assert (=> d!1921265 (= c!1102464 ((_ is EmptyExpr!16075) (regTwo!32663 r!7292)))))

(assert (=> d!1921265 (= (matchRSpec!3176 (regTwo!32663 r!7292) s!2326) e!3737506)))

(assert (= (and d!1921265 c!1102464) b!6131970))

(assert (= (and d!1921265 (not c!1102464)) b!6131973))

(assert (= (and b!6131973 res!2541357) b!6131978))

(assert (= (and b!6131978 c!1102466) b!6131968))

(assert (= (and b!6131978 (not c!1102466)) b!6131969))

(assert (= (and b!6131969 c!1102465) b!6131975))

(assert (= (and b!6131969 (not c!1102465)) b!6131974))

(assert (= (and b!6131975 (not res!2541356)) b!6131972))

(assert (= (and b!6131974 c!1102467) b!6131977))

(assert (= (and b!6131974 (not c!1102467)) b!6131971))

(assert (= (and b!6131977 (not res!2541358)) b!6131976))

(assert (= (or b!6131976 b!6131971) bm!508623))

(assert (= (or b!6131970 b!6131977) bm!508624))

(declare-fun m!6975338 () Bool)

(assert (=> bm!508623 m!6975338))

(declare-fun m!6975340 () Bool)

(assert (=> b!6131972 m!6975340))

(declare-fun m!6975342 () Bool)

(assert (=> b!6131975 m!6975342))

(assert (=> bm!508624 m!6974266))

(assert (=> b!6130708 d!1921265))

(declare-fun b!6131979 () Bool)

(declare-fun res!2541360 () Bool)

(declare-fun e!3737508 () Bool)

(assert (=> b!6131979 (=> (not res!2541360) (not e!3737508))))

(declare-fun call!508632 () Bool)

(assert (=> b!6131979 (= res!2541360 call!508632)))

(declare-fun e!3737513 () Bool)

(assert (=> b!6131979 (= e!3737513 e!3737508)))

(declare-fun bm!508625 () Bool)

(declare-fun call!508631 () Bool)

(assert (=> bm!508625 (= call!508632 call!508631)))

(declare-fun d!1921267 () Bool)

(declare-fun res!2541363 () Bool)

(declare-fun e!3737512 () Bool)

(assert (=> d!1921267 (=> res!2541363 e!3737512)))

(assert (=> d!1921267 (= res!2541363 ((_ is ElementMatch!16075) lt!2331911))))

(assert (=> d!1921267 (= (validRegex!7811 lt!2331911) e!3737512)))

(declare-fun bm!508626 () Bool)

(declare-fun call!508630 () Bool)

(declare-fun c!1102469 () Bool)

(assert (=> bm!508626 (= call!508630 (validRegex!7811 (ite c!1102469 (regTwo!32663 lt!2331911) (regTwo!32662 lt!2331911))))))

(declare-fun b!6131980 () Bool)

(declare-fun e!3737507 () Bool)

(assert (=> b!6131980 (= e!3737507 call!508630)))

(declare-fun b!6131981 () Bool)

(declare-fun res!2541361 () Bool)

(declare-fun e!3737511 () Bool)

(assert (=> b!6131981 (=> res!2541361 e!3737511)))

(assert (=> b!6131981 (= res!2541361 (not ((_ is Concat!24920) lt!2331911)))))

(assert (=> b!6131981 (= e!3737513 e!3737511)))

(declare-fun b!6131982 () Bool)

(assert (=> b!6131982 (= e!3737511 e!3737507)))

(declare-fun res!2541362 () Bool)

(assert (=> b!6131982 (=> (not res!2541362) (not e!3737507))))

(assert (=> b!6131982 (= res!2541362 call!508632)))

(declare-fun b!6131983 () Bool)

(declare-fun e!3737509 () Bool)

(assert (=> b!6131983 (= e!3737509 e!3737513)))

(assert (=> b!6131983 (= c!1102469 ((_ is Union!16075) lt!2331911))))

(declare-fun c!1102468 () Bool)

(declare-fun bm!508627 () Bool)

(assert (=> bm!508627 (= call!508631 (validRegex!7811 (ite c!1102468 (reg!16404 lt!2331911) (ite c!1102469 (regOne!32663 lt!2331911) (regOne!32662 lt!2331911)))))))

(declare-fun b!6131984 () Bool)

(assert (=> b!6131984 (= e!3737512 e!3737509)))

(assert (=> b!6131984 (= c!1102468 ((_ is Star!16075) lt!2331911))))

(declare-fun b!6131985 () Bool)

(assert (=> b!6131985 (= e!3737508 call!508630)))

(declare-fun b!6131986 () Bool)

(declare-fun e!3737510 () Bool)

(assert (=> b!6131986 (= e!3737509 e!3737510)))

(declare-fun res!2541359 () Bool)

(assert (=> b!6131986 (= res!2541359 (not (nullable!6068 (reg!16404 lt!2331911))))))

(assert (=> b!6131986 (=> (not res!2541359) (not e!3737510))))

(declare-fun b!6131987 () Bool)

(assert (=> b!6131987 (= e!3737510 call!508631)))

(assert (= (and d!1921267 (not res!2541363)) b!6131984))

(assert (= (and b!6131984 c!1102468) b!6131986))

(assert (= (and b!6131984 (not c!1102468)) b!6131983))

(assert (= (and b!6131986 res!2541359) b!6131987))

(assert (= (and b!6131983 c!1102469) b!6131979))

(assert (= (and b!6131983 (not c!1102469)) b!6131981))

(assert (= (and b!6131979 res!2541360) b!6131985))

(assert (= (and b!6131981 (not res!2541361)) b!6131982))

(assert (= (and b!6131982 res!2541362) b!6131980))

(assert (= (or b!6131985 b!6131980) bm!508626))

(assert (= (or b!6131979 b!6131982) bm!508625))

(assert (= (or b!6131987 bm!508625) bm!508627))

(declare-fun m!6975344 () Bool)

(assert (=> bm!508626 m!6975344))

(declare-fun m!6975346 () Bool)

(assert (=> bm!508627 m!6975346))

(declare-fun m!6975348 () Bool)

(assert (=> b!6131986 m!6975348))

(assert (=> d!1920757 d!1921267))

(assert (=> d!1920757 d!1920843))

(assert (=> d!1920757 d!1920845))

(assert (=> b!6130870 d!1921257))

(assert (=> b!6130592 d!1920767))

(declare-fun d!1921269 () Bool)

(assert (=> d!1921269 (= (nullable!6068 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (nullableFct!2032 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun bs!1521043 () Bool)

(assert (= bs!1521043 d!1921269))

(declare-fun m!6975350 () Bool)

(assert (=> bs!1521043 m!6975350))

(assert (=> b!6131047 d!1921269))

(declare-fun d!1921271 () Bool)

(assert (=> d!1921271 (= (nullable!6068 (h!70848 (exprs!5959 lt!2331882))) (nullableFct!2032 (h!70848 (exprs!5959 lt!2331882))))))

(declare-fun bs!1521044 () Bool)

(assert (= bs!1521044 d!1921271))

(declare-fun m!6975352 () Bool)

(assert (=> bs!1521044 m!6975352))

(assert (=> b!6131052 d!1921271))

(assert (=> b!6131057 d!1920855))

(declare-fun b!6131988 () Bool)

(declare-fun e!3737519 () (InoxSet Context!10918))

(declare-fun e!3737515 () (InoxSet Context!10918))

(assert (=> b!6131988 (= e!3737519 e!3737515)))

(declare-fun c!1102470 () Bool)

(assert (=> b!6131988 (= c!1102470 ((_ is Concat!24920) (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun bm!508628 () Bool)

(declare-fun call!508637 () (InoxSet Context!10918))

(declare-fun call!508634 () (InoxSet Context!10918))

(assert (=> bm!508628 (= call!508637 call!508634)))

(declare-fun b!6131989 () Bool)

(declare-fun c!1102473 () Bool)

(declare-fun e!3737518 () Bool)

(assert (=> b!6131989 (= c!1102473 e!3737518)))

(declare-fun res!2541364 () Bool)

(assert (=> b!6131989 (=> (not res!2541364) (not e!3737518))))

(assert (=> b!6131989 (= res!2541364 ((_ is Concat!24920) (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun e!3737517 () (InoxSet Context!10918))

(assert (=> b!6131989 (= e!3737517 e!3737519)))

(declare-fun bm!508630 () Bool)

(declare-fun call!508633 () (InoxSet Context!10918))

(assert (=> bm!508630 (= call!508634 call!508633)))

(declare-fun b!6131990 () Bool)

(declare-fun call!508635 () (InoxSet Context!10918))

(assert (=> b!6131990 (= e!3737517 ((_ map or) call!508635 call!508633))))

(declare-fun b!6131991 () Bool)

(declare-fun e!3737516 () (InoxSet Context!10918))

(assert (=> b!6131991 (= e!3737516 (store ((as const (Array Context!10918 Bool)) false) (ite c!1102237 lt!2331882 (Context!10919 call!508460)) true))))

(declare-fun b!6131992 () Bool)

(declare-fun c!1102472 () Bool)

(assert (=> b!6131992 (= c!1102472 ((_ is Star!16075) (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun e!3737514 () (InoxSet Context!10918))

(assert (=> b!6131992 (= e!3737515 e!3737514)))

(declare-fun b!6131993 () Bool)

(assert (=> b!6131993 (= e!3737516 e!3737517)))

(declare-fun c!1102474 () Bool)

(assert (=> b!6131993 (= c!1102474 ((_ is Union!16075) (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))))))

(declare-fun call!508636 () List!64524)

(declare-fun bm!508631 () Bool)

(assert (=> bm!508631 (= call!508635 (derivationStepZipperDown!1323 (ite c!1102474 (regOne!32663 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))) (regOne!32662 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))))) (ite c!1102474 (ite c!1102237 lt!2331882 (Context!10919 call!508460)) (Context!10919 call!508636)) (h!70849 s!2326)))))

(declare-fun b!6131994 () Bool)

(assert (=> b!6131994 (= e!3737515 call!508637)))

(declare-fun bm!508629 () Bool)

(declare-fun call!508638 () List!64524)

(assert (=> bm!508629 (= call!508638 call!508636)))

(declare-fun d!1921273 () Bool)

(declare-fun c!1102471 () Bool)

(assert (=> d!1921273 (= c!1102471 (and ((_ is ElementMatch!16075) (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))) (= (c!1102031 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))) (h!70849 s!2326))))))

(assert (=> d!1921273 (= (derivationStepZipperDown!1323 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))) (ite c!1102237 lt!2331882 (Context!10919 call!508460)) (h!70849 s!2326)) e!3737516)))

(declare-fun bm!508632 () Bool)

(assert (=> bm!508632 (= call!508633 (derivationStepZipperDown!1323 (ite c!1102474 (regTwo!32663 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))) (ite c!1102473 (regTwo!32662 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))) (ite c!1102470 (regOne!32662 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))) (reg!16404 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))))))) (ite (or c!1102474 c!1102473) (ite c!1102237 lt!2331882 (Context!10919 call!508460)) (Context!10919 call!508638)) (h!70849 s!2326)))))

(declare-fun b!6131995 () Bool)

(assert (=> b!6131995 (= e!3737514 call!508637)))

(declare-fun bm!508633 () Bool)

(assert (=> bm!508633 (= call!508636 ($colon$colon!1952 (exprs!5959 (ite c!1102237 lt!2331882 (Context!10919 call!508460))) (ite (or c!1102473 c!1102470) (regTwo!32662 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))))) (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))))))))

(declare-fun b!6131996 () Bool)

(assert (=> b!6131996 (= e!3737518 (nullable!6068 (regOne!32662 (ite c!1102237 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))))))))

(declare-fun b!6131997 () Bool)

(assert (=> b!6131997 (= e!3737519 ((_ map or) call!508635 call!508634))))

(declare-fun b!6131998 () Bool)

(assert (=> b!6131998 (= e!3737514 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921273 c!1102471) b!6131991))

(assert (= (and d!1921273 (not c!1102471)) b!6131993))

(assert (= (and b!6131993 c!1102474) b!6131990))

(assert (= (and b!6131993 (not c!1102474)) b!6131989))

(assert (= (and b!6131989 res!2541364) b!6131996))

(assert (= (and b!6131989 c!1102473) b!6131997))

(assert (= (and b!6131989 (not c!1102473)) b!6131988))

(assert (= (and b!6131988 c!1102470) b!6131994))

(assert (= (and b!6131988 (not c!1102470)) b!6131992))

(assert (= (and b!6131992 c!1102472) b!6131995))

(assert (= (and b!6131992 (not c!1102472)) b!6131998))

(assert (= (or b!6131994 b!6131995) bm!508629))

(assert (= (or b!6131994 b!6131995) bm!508628))

(assert (= (or b!6131997 bm!508629) bm!508633))

(assert (= (or b!6131997 bm!508628) bm!508630))

(assert (= (or b!6131990 bm!508630) bm!508632))

(assert (= (or b!6131990 b!6131997) bm!508631))

(declare-fun m!6975354 () Bool)

(assert (=> bm!508633 m!6975354))

(declare-fun m!6975356 () Bool)

(assert (=> b!6131996 m!6975356))

(declare-fun m!6975358 () Bool)

(assert (=> b!6131991 m!6975358))

(declare-fun m!6975360 () Bool)

(assert (=> bm!508632 m!6975360))

(declare-fun m!6975362 () Bool)

(assert (=> bm!508631 m!6975362))

(assert (=> bm!508455 d!1921273))

(declare-fun d!1921275 () Bool)

(assert (=> d!1921275 (= (nullable!6068 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))) (nullableFct!2032 (regOne!32662 (regTwo!32663 (regOne!32662 r!7292)))))))

(declare-fun bs!1521045 () Bool)

(assert (= bs!1521045 d!1921275))

(declare-fun m!6975364 () Bool)

(assert (=> bs!1521045 m!6975364))

(assert (=> b!6131020 d!1921275))

(declare-fun b!6131999 () Bool)

(declare-fun e!3737525 () (InoxSet Context!10918))

(declare-fun e!3737521 () (InoxSet Context!10918))

(assert (=> b!6131999 (= e!3737525 e!3737521)))

(declare-fun c!1102475 () Bool)

(assert (=> b!6131999 (= c!1102475 ((_ is Concat!24920) (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))))))

(declare-fun bm!508634 () Bool)

(declare-fun call!508643 () (InoxSet Context!10918))

(declare-fun call!508640 () (InoxSet Context!10918))

(assert (=> bm!508634 (= call!508643 call!508640)))

(declare-fun b!6132000 () Bool)

(declare-fun c!1102478 () Bool)

(declare-fun e!3737524 () Bool)

(assert (=> b!6132000 (= c!1102478 e!3737524)))

(declare-fun res!2541365 () Bool)

(assert (=> b!6132000 (=> (not res!2541365) (not e!3737524))))

(assert (=> b!6132000 (= res!2541365 ((_ is Concat!24920) (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))))))

(declare-fun e!3737523 () (InoxSet Context!10918))

(assert (=> b!6132000 (= e!3737523 e!3737525)))

(declare-fun bm!508636 () Bool)

(declare-fun call!508639 () (InoxSet Context!10918))

(assert (=> bm!508636 (= call!508640 call!508639)))

(declare-fun b!6132001 () Bool)

(declare-fun call!508641 () (InoxSet Context!10918))

(assert (=> b!6132001 (= e!3737523 ((_ map or) call!508641 call!508639))))

(declare-fun b!6132002 () Bool)

(declare-fun e!3737522 () (InoxSet Context!10918))

(assert (=> b!6132002 (= e!3737522 (store ((as const (Array Context!10918 Bool)) false) (ite c!1102222 lt!2331882 (Context!10919 call!508449)) true))))

(declare-fun b!6132003 () Bool)

(declare-fun c!1102477 () Bool)

(assert (=> b!6132003 (= c!1102477 ((_ is Star!16075) (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))))))

(declare-fun e!3737520 () (InoxSet Context!10918))

(assert (=> b!6132003 (= e!3737521 e!3737520)))

(declare-fun b!6132004 () Bool)

(assert (=> b!6132004 (= e!3737522 e!3737523)))

(declare-fun c!1102479 () Bool)

(assert (=> b!6132004 (= c!1102479 ((_ is Union!16075) (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))))))

(declare-fun call!508642 () List!64524)

(declare-fun bm!508637 () Bool)

(assert (=> bm!508637 (= call!508641 (derivationStepZipperDown!1323 (ite c!1102479 (regOne!32663 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))) (regOne!32662 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))))) (ite c!1102479 (ite c!1102222 lt!2331882 (Context!10919 call!508449)) (Context!10919 call!508642)) (h!70849 s!2326)))))

(declare-fun b!6132005 () Bool)

(assert (=> b!6132005 (= e!3737521 call!508643)))

(declare-fun bm!508635 () Bool)

(declare-fun call!508644 () List!64524)

(assert (=> bm!508635 (= call!508644 call!508642)))

(declare-fun d!1921277 () Bool)

(declare-fun c!1102476 () Bool)

(assert (=> d!1921277 (= c!1102476 (and ((_ is ElementMatch!16075) (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))) (= (c!1102031 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))) (h!70849 s!2326))))))

(assert (=> d!1921277 (= (derivationStepZipperDown!1323 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))) (ite c!1102222 lt!2331882 (Context!10919 call!508449)) (h!70849 s!2326)) e!3737522)))

(declare-fun bm!508638 () Bool)

(assert (=> bm!508638 (= call!508639 (derivationStepZipperDown!1323 (ite c!1102479 (regTwo!32663 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))) (ite c!1102478 (regTwo!32662 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))) (ite c!1102475 (regOne!32662 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))) (reg!16404 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))))))) (ite (or c!1102479 c!1102478) (ite c!1102222 lt!2331882 (Context!10919 call!508449)) (Context!10919 call!508644)) (h!70849 s!2326)))))

(declare-fun b!6132006 () Bool)

(assert (=> b!6132006 (= e!3737520 call!508643)))

(declare-fun bm!508639 () Bool)

(assert (=> bm!508639 (= call!508642 ($colon$colon!1952 (exprs!5959 (ite c!1102222 lt!2331882 (Context!10919 call!508449))) (ite (or c!1102478 c!1102475) (regTwo!32662 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292))))) (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))))))))

(declare-fun b!6132007 () Bool)

(assert (=> b!6132007 (= e!3737524 (nullable!6068 (regOne!32662 (ite c!1102222 (regOne!32663 (regOne!32663 (regOne!32662 r!7292))) (regOne!32662 (regOne!32663 (regOne!32662 r!7292)))))))))

(declare-fun b!6132008 () Bool)

(assert (=> b!6132008 (= e!3737525 ((_ map or) call!508641 call!508640))))

(declare-fun b!6132009 () Bool)

(assert (=> b!6132009 (= e!3737520 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921277 c!1102476) b!6132002))

(assert (= (and d!1921277 (not c!1102476)) b!6132004))

(assert (= (and b!6132004 c!1102479) b!6132001))

(assert (= (and b!6132004 (not c!1102479)) b!6132000))

(assert (= (and b!6132000 res!2541365) b!6132007))

(assert (= (and b!6132000 c!1102478) b!6132008))

(assert (= (and b!6132000 (not c!1102478)) b!6131999))

(assert (= (and b!6131999 c!1102475) b!6132005))

(assert (= (and b!6131999 (not c!1102475)) b!6132003))

(assert (= (and b!6132003 c!1102477) b!6132006))

(assert (= (and b!6132003 (not c!1102477)) b!6132009))

(assert (= (or b!6132005 b!6132006) bm!508635))

(assert (= (or b!6132005 b!6132006) bm!508634))

(assert (= (or b!6132008 bm!508635) bm!508639))

(assert (= (or b!6132008 bm!508634) bm!508636))

(assert (= (or b!6132001 bm!508636) bm!508638))

(assert (= (or b!6132001 b!6132008) bm!508637))

(declare-fun m!6975366 () Bool)

(assert (=> bm!508639 m!6975366))

(declare-fun m!6975368 () Bool)

(assert (=> b!6132007 m!6975368))

(declare-fun m!6975370 () Bool)

(assert (=> b!6132002 m!6975370))

(declare-fun m!6975372 () Bool)

(assert (=> bm!508638 m!6975372))

(declare-fun m!6975374 () Bool)

(assert (=> bm!508637 m!6975374))

(assert (=> bm!508444 d!1921277))

(declare-fun bs!1521046 () Bool)

(declare-fun d!1921279 () Bool)

(assert (= bs!1521046 (and d!1921279 d!1920843)))

(declare-fun lambda!334073 () Int)

(assert (=> bs!1521046 (= lambda!334073 lambda!334009)))

(declare-fun bs!1521047 () Bool)

(assert (= bs!1521047 (and d!1921279 d!1920845)))

(assert (=> bs!1521047 (= lambda!334073 lambda!334012)))

(declare-fun bs!1521048 () Bool)

(assert (= bs!1521048 (and d!1921279 d!1920755)))

(assert (=> bs!1521048 (= lambda!334073 lambda!333967)))

(declare-fun bs!1521049 () Bool)

(assert (= bs!1521049 (and d!1921279 d!1920753)))

(assert (=> bs!1521049 (= lambda!334073 lambda!333964)))

(declare-fun bs!1521050 () Bool)

(assert (= bs!1521050 (and d!1921279 d!1920839)))

(assert (=> bs!1521050 (= lambda!334073 lambda!334006)))

(declare-fun bs!1521051 () Bool)

(assert (= bs!1521051 (and d!1921279 d!1921143)))

(assert (=> bs!1521051 (= lambda!334073 lambda!334054)))

(declare-fun bs!1521052 () Bool)

(assert (= bs!1521052 (and d!1921279 d!1921231)))

(assert (=> bs!1521052 (= lambda!334073 lambda!334065)))

(declare-fun bs!1521053 () Bool)

(assert (= bs!1521053 (and d!1921279 d!1920869)))

(assert (=> bs!1521053 (= lambda!334073 lambda!334013)))

(declare-fun bs!1521054 () Bool)

(assert (= bs!1521054 (and d!1921279 d!1921251)))

(assert (=> bs!1521054 (= lambda!334073 lambda!334068)))

(declare-fun bs!1521055 () Bool)

(assert (= bs!1521055 (and d!1921279 d!1921171)))

(assert (=> bs!1521055 (= lambda!334073 lambda!334055)))

(declare-fun b!6132010 () Bool)

(declare-fun e!3737528 () Bool)

(declare-fun lt!2332012 () Regex!16075)

(assert (=> b!6132010 (= e!3737528 (isEmptyLang!1502 lt!2332012))))

(declare-fun b!6132011 () Bool)

(declare-fun e!3737527 () Bool)

(assert (=> b!6132011 (= e!3737527 e!3737528)))

(declare-fun c!1102480 () Bool)

(assert (=> b!6132011 (= c!1102480 (isEmpty!36340 (t!377993 (unfocusZipperList!1496 zl!343))))))

(declare-fun b!6132013 () Bool)

(declare-fun e!3737531 () Regex!16075)

(assert (=> b!6132013 (= e!3737531 (h!70848 (t!377993 (unfocusZipperList!1496 zl!343))))))

(declare-fun b!6132014 () Bool)

(declare-fun e!3737529 () Bool)

(assert (=> b!6132014 (= e!3737529 (isUnion!932 lt!2332012))))

(declare-fun b!6132015 () Bool)

(declare-fun e!3737526 () Regex!16075)

(assert (=> b!6132015 (= e!3737531 e!3737526)))

(declare-fun c!1102482 () Bool)

(assert (=> b!6132015 (= c!1102482 ((_ is Cons!64400) (t!377993 (unfocusZipperList!1496 zl!343))))))

(declare-fun b!6132016 () Bool)

(assert (=> b!6132016 (= e!3737528 e!3737529)))

(declare-fun c!1102483 () Bool)

(assert (=> b!6132016 (= c!1102483 (isEmpty!36340 (tail!11756 (t!377993 (unfocusZipperList!1496 zl!343)))))))

(declare-fun b!6132017 () Bool)

(declare-fun e!3737530 () Bool)

(assert (=> b!6132017 (= e!3737530 (isEmpty!36340 (t!377993 (t!377993 (unfocusZipperList!1496 zl!343)))))))

(declare-fun b!6132012 () Bool)

(assert (=> b!6132012 (= e!3737529 (= lt!2332012 (head!12671 (t!377993 (unfocusZipperList!1496 zl!343)))))))

(assert (=> d!1921279 e!3737527))

(declare-fun res!2541367 () Bool)

(assert (=> d!1921279 (=> (not res!2541367) (not e!3737527))))

(assert (=> d!1921279 (= res!2541367 (validRegex!7811 lt!2332012))))

(assert (=> d!1921279 (= lt!2332012 e!3737531)))

(declare-fun c!1102481 () Bool)

(assert (=> d!1921279 (= c!1102481 e!3737530)))

(declare-fun res!2541366 () Bool)

(assert (=> d!1921279 (=> (not res!2541366) (not e!3737530))))

(assert (=> d!1921279 (= res!2541366 ((_ is Cons!64400) (t!377993 (unfocusZipperList!1496 zl!343))))))

(assert (=> d!1921279 (forall!15195 (t!377993 (unfocusZipperList!1496 zl!343)) lambda!334073)))

(assert (=> d!1921279 (= (generalisedUnion!1919 (t!377993 (unfocusZipperList!1496 zl!343))) lt!2332012)))

(declare-fun b!6132018 () Bool)

(assert (=> b!6132018 (= e!3737526 (Union!16075 (h!70848 (t!377993 (unfocusZipperList!1496 zl!343))) (generalisedUnion!1919 (t!377993 (t!377993 (unfocusZipperList!1496 zl!343))))))))

(declare-fun b!6132019 () Bool)

(assert (=> b!6132019 (= e!3737526 EmptyLang!16075)))

(assert (= (and d!1921279 res!2541366) b!6132017))

(assert (= (and d!1921279 c!1102481) b!6132013))

(assert (= (and d!1921279 (not c!1102481)) b!6132015))

(assert (= (and b!6132015 c!1102482) b!6132018))

(assert (= (and b!6132015 (not c!1102482)) b!6132019))

(assert (= (and d!1921279 res!2541367) b!6132011))

(assert (= (and b!6132011 c!1102480) b!6132010))

(assert (= (and b!6132011 (not c!1102480)) b!6132016))

(assert (= (and b!6132016 c!1102483) b!6132012))

(assert (= (and b!6132016 (not c!1102483)) b!6132014))

(declare-fun m!6975376 () Bool)

(assert (=> b!6132010 m!6975376))

(declare-fun m!6975378 () Bool)

(assert (=> b!6132017 m!6975378))

(declare-fun m!6975380 () Bool)

(assert (=> d!1921279 m!6975380))

(declare-fun m!6975382 () Bool)

(assert (=> d!1921279 m!6975382))

(declare-fun m!6975384 () Bool)

(assert (=> b!6132018 m!6975384))

(declare-fun m!6975386 () Bool)

(assert (=> b!6132014 m!6975386))

(declare-fun m!6975388 () Bool)

(assert (=> b!6132016 m!6975388))

(assert (=> b!6132016 m!6975388))

(declare-fun m!6975390 () Bool)

(assert (=> b!6132016 m!6975390))

(declare-fun m!6975392 () Bool)

(assert (=> b!6132012 m!6975392))

(assert (=> b!6132011 m!6974424))

(assert (=> b!6130979 d!1921279))

(declare-fun d!1921281 () Bool)

(assert (=> d!1921281 (= (isConcat!1014 lt!2331905) ((_ is Concat!24920) lt!2331905))))

(assert (=> b!6130596 d!1921281))

(declare-fun b!6132020 () Bool)

(declare-fun res!2541369 () Bool)

(declare-fun e!3737533 () Bool)

(assert (=> b!6132020 (=> (not res!2541369) (not e!3737533))))

(declare-fun call!508647 () Bool)

(assert (=> b!6132020 (= res!2541369 call!508647)))

(declare-fun e!3737538 () Bool)

(assert (=> b!6132020 (= e!3737538 e!3737533)))

(declare-fun bm!508640 () Bool)

(declare-fun call!508646 () Bool)

(assert (=> bm!508640 (= call!508647 call!508646)))

(declare-fun d!1921283 () Bool)

(declare-fun res!2541372 () Bool)

(declare-fun e!3737537 () Bool)

(assert (=> d!1921283 (=> res!2541372 e!3737537)))

(assert (=> d!1921283 (= res!2541372 ((_ is ElementMatch!16075) (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))))))

(assert (=> d!1921283 (= (validRegex!7811 (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))) e!3737537)))

(declare-fun bm!508641 () Bool)

(declare-fun call!508645 () Bool)

(declare-fun c!1102485 () Bool)

(assert (=> bm!508641 (= call!508645 (validRegex!7811 (ite c!1102485 (regTwo!32663 (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))) (regTwo!32662 (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))))))))

(declare-fun b!6132021 () Bool)

(declare-fun e!3737532 () Bool)

(assert (=> b!6132021 (= e!3737532 call!508645)))

(declare-fun b!6132022 () Bool)

(declare-fun res!2541370 () Bool)

(declare-fun e!3737536 () Bool)

(assert (=> b!6132022 (=> res!2541370 e!3737536)))

(assert (=> b!6132022 (= res!2541370 (not ((_ is Concat!24920) (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292)))))))

(assert (=> b!6132022 (= e!3737538 e!3737536)))

(declare-fun b!6132023 () Bool)

(assert (=> b!6132023 (= e!3737536 e!3737532)))

(declare-fun res!2541371 () Bool)

(assert (=> b!6132023 (=> (not res!2541371) (not e!3737532))))

(assert (=> b!6132023 (= res!2541371 call!508647)))

(declare-fun b!6132024 () Bool)

(declare-fun e!3737534 () Bool)

(assert (=> b!6132024 (= e!3737534 e!3737538)))

(assert (=> b!6132024 (= c!1102485 ((_ is Union!16075) (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))))))

(declare-fun c!1102484 () Bool)

(declare-fun bm!508642 () Bool)

(assert (=> bm!508642 (= call!508646 (validRegex!7811 (ite c!1102484 (reg!16404 (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))) (ite c!1102485 (regOne!32663 (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))) (regOne!32662 (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292)))))))))

(declare-fun b!6132025 () Bool)

(assert (=> b!6132025 (= e!3737537 e!3737534)))

(assert (=> b!6132025 (= c!1102484 ((_ is Star!16075) (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))))))

(declare-fun b!6132026 () Bool)

(assert (=> b!6132026 (= e!3737533 call!508645)))

(declare-fun b!6132027 () Bool)

(declare-fun e!3737535 () Bool)

(assert (=> b!6132027 (= e!3737534 e!3737535)))

(declare-fun res!2541368 () Bool)

(assert (=> b!6132027 (= res!2541368 (not (nullable!6068 (reg!16404 (ite c!1102113 (regTwo!32663 r!7292) (regTwo!32662 r!7292))))))))

(assert (=> b!6132027 (=> (not res!2541368) (not e!3737535))))

(declare-fun b!6132028 () Bool)

(assert (=> b!6132028 (= e!3737535 call!508646)))

(assert (= (and d!1921283 (not res!2541372)) b!6132025))

(assert (= (and b!6132025 c!1102484) b!6132027))

(assert (= (and b!6132025 (not c!1102484)) b!6132024))

(assert (= (and b!6132027 res!2541368) b!6132028))

(assert (= (and b!6132024 c!1102485) b!6132020))

(assert (= (and b!6132024 (not c!1102485)) b!6132022))

(assert (= (and b!6132020 res!2541369) b!6132026))

(assert (= (and b!6132022 (not res!2541370)) b!6132023))

(assert (= (and b!6132023 res!2541371) b!6132021))

(assert (= (or b!6132026 b!6132021) bm!508641))

(assert (= (or b!6132020 b!6132023) bm!508640))

(assert (= (or b!6132028 bm!508640) bm!508642))

(declare-fun m!6975394 () Bool)

(assert (=> bm!508641 m!6975394))

(declare-fun m!6975396 () Bool)

(assert (=> bm!508642 m!6975396))

(declare-fun m!6975398 () Bool)

(assert (=> b!6132027 m!6975398))

(assert (=> bm!508400 d!1921283))

(declare-fun d!1921285 () Bool)

(assert (=> d!1921285 (= (isEmptyExpr!1491 lt!2331905) ((_ is EmptyExpr!16075) lt!2331905))))

(assert (=> b!6130598 d!1921285))

(assert (=> b!6130767 d!1921109))

(assert (=> b!6130767 d!1921111))

(declare-fun d!1921287 () Bool)

(assert (=> d!1921287 true))

(assert (=> d!1921287 true))

(declare-fun res!2541373 () Bool)

(assert (=> d!1921287 (= (choose!45553 lambda!333953) res!2541373)))

(assert (=> d!1920831 d!1921287))

(assert (=> b!6130657 d!1920841))

(declare-fun d!1921289 () Bool)

(assert (=> d!1921289 (= (head!12671 (unfocusZipperList!1496 zl!343)) (h!70848 (unfocusZipperList!1496 zl!343)))))

(assert (=> b!6130973 d!1921289))

(assert (=> b!6130771 d!1921123))

(declare-fun bs!1521056 () Bool)

(declare-fun d!1921291 () Bool)

(assert (= bs!1521056 (and d!1921291 d!1921125)))

(declare-fun lambda!334074 () Int)

(assert (=> bs!1521056 (= lambda!334074 lambda!334050)))

(declare-fun bs!1521057 () Bool)

(assert (= bs!1521057 (and d!1921291 d!1921177)))

(assert (=> bs!1521057 (= lambda!334074 lambda!334056)))

(declare-fun bs!1521058 () Bool)

(assert (= bs!1521058 (and d!1921291 d!1921255)))

(assert (=> bs!1521058 (= lambda!334074 lambda!334070)))

(declare-fun bs!1521059 () Bool)

(assert (= bs!1521059 (and d!1921291 d!1921179)))

(assert (=> bs!1521059 (= lambda!334074 lambda!334057)))

(declare-fun bs!1521060 () Bool)

(assert (= bs!1521060 (and d!1921291 d!1921253)))

(assert (=> bs!1521060 (= lambda!334074 lambda!334069)))

(assert (=> d!1921291 (= (nullableZipper!1856 lt!2331871) (exists!2422 lt!2331871 lambda!334074))))

(declare-fun bs!1521061 () Bool)

(assert (= bs!1521061 d!1921291))

(declare-fun m!6975400 () Bool)

(assert (=> bs!1521061 m!6975400))

(assert (=> b!6130653 d!1921291))

(declare-fun d!1921293 () Bool)

(declare-fun res!2541378 () Bool)

(declare-fun e!3737543 () Bool)

(assert (=> d!1921293 (=> res!2541378 e!3737543)))

(assert (=> d!1921293 (= res!2541378 ((_ is Nil!64402) lt!2331893))))

(assert (=> d!1921293 (= (noDuplicate!1921 lt!2331893) e!3737543)))

(declare-fun b!6132033 () Bool)

(declare-fun e!3737544 () Bool)

(assert (=> b!6132033 (= e!3737543 e!3737544)))

(declare-fun res!2541379 () Bool)

(assert (=> b!6132033 (=> (not res!2541379) (not e!3737544))))

(declare-fun contains!20036 (List!64526 Context!10918) Bool)

(assert (=> b!6132033 (= res!2541379 (not (contains!20036 (t!377995 lt!2331893) (h!70850 lt!2331893))))))

(declare-fun b!6132034 () Bool)

(assert (=> b!6132034 (= e!3737544 (noDuplicate!1921 (t!377995 lt!2331893)))))

(assert (= (and d!1921293 (not res!2541378)) b!6132033))

(assert (= (and b!6132033 res!2541379) b!6132034))

(declare-fun m!6975402 () Bool)

(assert (=> b!6132033 m!6975402))

(declare-fun m!6975404 () Bool)

(assert (=> b!6132034 m!6975404))

(assert (=> d!1920745 d!1921293))

(declare-fun d!1921295 () Bool)

(declare-fun e!3737552 () Bool)

(assert (=> d!1921295 e!3737552))

(declare-fun res!2541385 () Bool)

(assert (=> d!1921295 (=> (not res!2541385) (not e!3737552))))

(declare-fun res!2541384 () List!64526)

(assert (=> d!1921295 (= res!2541385 (noDuplicate!1921 res!2541384))))

(declare-fun e!3737551 () Bool)

(assert (=> d!1921295 e!3737551))

(assert (=> d!1921295 (= (choose!45545 z!1189) res!2541384)))

(declare-fun b!6132042 () Bool)

(declare-fun e!3737553 () Bool)

(declare-fun tp!1713531 () Bool)

(assert (=> b!6132042 (= e!3737553 tp!1713531)))

(declare-fun b!6132041 () Bool)

(declare-fun tp!1713532 () Bool)

(assert (=> b!6132041 (= e!3737551 (and (inv!83434 (h!70850 res!2541384)) e!3737553 tp!1713532))))

(declare-fun b!6132043 () Bool)

(assert (=> b!6132043 (= e!3737552 (= (content!11972 res!2541384) z!1189))))

(assert (= b!6132041 b!6132042))

(assert (= (and d!1921295 ((_ is Cons!64402) res!2541384)) b!6132041))

(assert (= (and d!1921295 res!2541385) b!6132043))

(declare-fun m!6975406 () Bool)

(assert (=> d!1921295 m!6975406))

(declare-fun m!6975408 () Bool)

(assert (=> b!6132041 m!6975408))

(declare-fun m!6975410 () Bool)

(assert (=> b!6132043 m!6975410))

(assert (=> d!1920745 d!1921295))

(assert (=> d!1920769 d!1921119))

(declare-fun d!1921297 () Bool)

(assert (=> d!1921297 true))

(declare-fun setRes!41449 () Bool)

(assert (=> d!1921297 setRes!41449))

(declare-fun condSetEmpty!41449 () Bool)

(declare-fun res!2541388 () (InoxSet Context!10918))

(assert (=> d!1921297 (= condSetEmpty!41449 (= res!2541388 ((as const (Array Context!10918 Bool)) false)))))

(assert (=> d!1921297 (= (choose!45557 z!1189 lambda!333955) res!2541388)))

(declare-fun setIsEmpty!41449 () Bool)

(assert (=> setIsEmpty!41449 setRes!41449))

(declare-fun e!3737556 () Bool)

(declare-fun tp!1713537 () Bool)

(declare-fun setElem!41449 () Context!10918)

(declare-fun setNonEmpty!41449 () Bool)

(assert (=> setNonEmpty!41449 (= setRes!41449 (and tp!1713537 (inv!83434 setElem!41449) e!3737556))))

(declare-fun setRest!41449 () (InoxSet Context!10918))

(assert (=> setNonEmpty!41449 (= res!2541388 ((_ map or) (store ((as const (Array Context!10918 Bool)) false) setElem!41449 true) setRest!41449))))

(declare-fun b!6132046 () Bool)

(declare-fun tp!1713538 () Bool)

(assert (=> b!6132046 (= e!3737556 tp!1713538)))

(assert (= (and d!1921297 condSetEmpty!41449) setIsEmpty!41449))

(assert (= (and d!1921297 (not condSetEmpty!41449)) setNonEmpty!41449))

(assert (= setNonEmpty!41449 b!6132046))

(declare-fun m!6975412 () Bool)

(assert (=> setNonEmpty!41449 m!6975412))

(assert (=> d!1920863 d!1921297))

(declare-fun d!1921299 () Bool)

(declare-fun e!3737558 () Bool)

(assert (=> d!1921299 e!3737558))

(declare-fun res!2541389 () Bool)

(assert (=> d!1921299 (=> (not res!2541389) (not e!3737558))))

(declare-fun lt!2332013 () List!64525)

(assert (=> d!1921299 (= res!2541389 (= (content!11975 lt!2332013) ((_ map or) (content!11975 (_1!36357 (get!22214 lt!2331948))) (content!11975 (_2!36357 (get!22214 lt!2331948))))))))

(declare-fun e!3737557 () List!64525)

(assert (=> d!1921299 (= lt!2332013 e!3737557)))

(declare-fun c!1102486 () Bool)

(assert (=> d!1921299 (= c!1102486 ((_ is Nil!64401) (_1!36357 (get!22214 lt!2331948))))))

(assert (=> d!1921299 (= (++!14161 (_1!36357 (get!22214 lt!2331948)) (_2!36357 (get!22214 lt!2331948))) lt!2332013)))

(declare-fun b!6132050 () Bool)

(assert (=> b!6132050 (= e!3737558 (or (not (= (_2!36357 (get!22214 lt!2331948)) Nil!64401)) (= lt!2332013 (_1!36357 (get!22214 lt!2331948)))))))

(declare-fun b!6132047 () Bool)

(assert (=> b!6132047 (= e!3737557 (_2!36357 (get!22214 lt!2331948)))))

(declare-fun b!6132048 () Bool)

(assert (=> b!6132048 (= e!3737557 (Cons!64401 (h!70849 (_1!36357 (get!22214 lt!2331948))) (++!14161 (t!377994 (_1!36357 (get!22214 lt!2331948))) (_2!36357 (get!22214 lt!2331948)))))))

(declare-fun b!6132049 () Bool)

(declare-fun res!2541390 () Bool)

(assert (=> b!6132049 (=> (not res!2541390) (not e!3737558))))

(assert (=> b!6132049 (= res!2541390 (= (size!40218 lt!2332013) (+ (size!40218 (_1!36357 (get!22214 lt!2331948))) (size!40218 (_2!36357 (get!22214 lt!2331948))))))))

(assert (= (and d!1921299 c!1102486) b!6132047))

(assert (= (and d!1921299 (not c!1102486)) b!6132048))

(assert (= (and d!1921299 res!2541389) b!6132049))

(assert (= (and b!6132049 res!2541390) b!6132050))

(declare-fun m!6975414 () Bool)

(assert (=> d!1921299 m!6975414))

(declare-fun m!6975416 () Bool)

(assert (=> d!1921299 m!6975416))

(declare-fun m!6975418 () Bool)

(assert (=> d!1921299 m!6975418))

(declare-fun m!6975420 () Bool)

(assert (=> b!6132048 m!6975420))

(declare-fun m!6975422 () Bool)

(assert (=> b!6132049 m!6975422))

(declare-fun m!6975424 () Bool)

(assert (=> b!6132049 m!6975424))

(declare-fun m!6975426 () Bool)

(assert (=> b!6132049 m!6975426))

(assert (=> b!6130873 d!1921299))

(assert (=> b!6130873 d!1921225))

(declare-fun d!1921301 () Bool)

(declare-fun c!1102487 () Bool)

(assert (=> d!1921301 (= c!1102487 (isEmpty!36343 (tail!11755 (t!377994 s!2326))))))

(declare-fun e!3737559 () Bool)

(assert (=> d!1921301 (= (matchZipper!2087 (derivationStepZipper!2048 lt!2331875 (head!12670 (t!377994 s!2326))) (tail!11755 (t!377994 s!2326))) e!3737559)))

(declare-fun b!6132051 () Bool)

(assert (=> b!6132051 (= e!3737559 (nullableZipper!1856 (derivationStepZipper!2048 lt!2331875 (head!12670 (t!377994 s!2326)))))))

(declare-fun b!6132052 () Bool)

(assert (=> b!6132052 (= e!3737559 (matchZipper!2087 (derivationStepZipper!2048 (derivationStepZipper!2048 lt!2331875 (head!12670 (t!377994 s!2326))) (head!12670 (tail!11755 (t!377994 s!2326)))) (tail!11755 (tail!11755 (t!377994 s!2326)))))))

(assert (= (and d!1921301 c!1102487) b!6132051))

(assert (= (and d!1921301 (not c!1102487)) b!6132052))

(assert (=> d!1921301 m!6974146))

(assert (=> d!1921301 m!6975012))

(assert (=> b!6132051 m!6974208))

(declare-fun m!6975428 () Bool)

(assert (=> b!6132051 m!6975428))

(assert (=> b!6132052 m!6974146))

(assert (=> b!6132052 m!6975016))

(assert (=> b!6132052 m!6974208))

(assert (=> b!6132052 m!6975016))

(declare-fun m!6975430 () Bool)

(assert (=> b!6132052 m!6975430))

(assert (=> b!6132052 m!6974146))

(assert (=> b!6132052 m!6975020))

(assert (=> b!6132052 m!6975430))

(assert (=> b!6132052 m!6975020))

(declare-fun m!6975432 () Bool)

(assert (=> b!6132052 m!6975432))

(assert (=> b!6130646 d!1921301))

(declare-fun bs!1521062 () Bool)

(declare-fun d!1921303 () Bool)

(assert (= bs!1521062 (and d!1921303 d!1921193)))

(declare-fun lambda!334075 () Int)

(assert (=> bs!1521062 (= lambda!334075 lambda!334058)))

(declare-fun bs!1521063 () Bool)

(assert (= bs!1521063 (and d!1921303 d!1921245)))

(assert (=> bs!1521063 (= lambda!334075 lambda!334067)))

(declare-fun bs!1521064 () Bool)

(assert (= bs!1521064 (and d!1921303 d!1921235)))

(assert (=> bs!1521064 (= lambda!334075 lambda!334066)))

(declare-fun bs!1521065 () Bool)

(assert (= bs!1521065 (and d!1921303 d!1921129)))

(assert (=> bs!1521065 (= lambda!334075 lambda!334053)))

(declare-fun bs!1521066 () Bool)

(assert (= bs!1521066 (and d!1921303 b!6130360)))

(assert (=> bs!1521066 (= (= (head!12670 (t!377994 s!2326)) (h!70849 s!2326)) (= lambda!334075 lambda!333955))))

(declare-fun bs!1521067 () Bool)

(assert (= bs!1521067 (and d!1921303 d!1921205)))

(assert (=> bs!1521067 (= lambda!334075 lambda!334059)))

(assert (=> d!1921303 true))

(assert (=> d!1921303 (= (derivationStepZipper!2048 lt!2331875 (head!12670 (t!377994 s!2326))) (flatMap!1580 lt!2331875 lambda!334075))))

(declare-fun bs!1521068 () Bool)

(assert (= bs!1521068 d!1921303))

(declare-fun m!6975434 () Bool)

(assert (=> bs!1521068 m!6975434))

(assert (=> b!6130646 d!1921303))

(assert (=> b!6130646 d!1921131))

(assert (=> b!6130646 d!1921133))

(assert (=> d!1920793 d!1921135))

(assert (=> d!1920793 d!1920759))

(declare-fun b!6132053 () Bool)

(declare-fun e!3737565 () Bool)

(assert (=> b!6132053 (= e!3737565 (nullable!6068 (regTwo!32662 r!7292)))))

(declare-fun b!6132054 () Bool)

(declare-fun res!2541397 () Bool)

(declare-fun e!3737566 () Bool)

(assert (=> b!6132054 (=> res!2541397 e!3737566)))

(assert (=> b!6132054 (= res!2541397 (not (isEmpty!36343 (tail!11755 (_2!36357 (get!22214 lt!2331948))))))))

(declare-fun b!6132055 () Bool)

(declare-fun res!2541396 () Bool)

(declare-fun e!3737561 () Bool)

(assert (=> b!6132055 (=> (not res!2541396) (not e!3737561))))

(assert (=> b!6132055 (= res!2541396 (isEmpty!36343 (tail!11755 (_2!36357 (get!22214 lt!2331948)))))))

(declare-fun b!6132057 () Bool)

(declare-fun res!2541394 () Bool)

(declare-fun e!3737562 () Bool)

(assert (=> b!6132057 (=> res!2541394 e!3737562)))

(assert (=> b!6132057 (= res!2541394 (not ((_ is ElementMatch!16075) (regTwo!32662 r!7292))))))

(declare-fun e!3737564 () Bool)

(assert (=> b!6132057 (= e!3737564 e!3737562)))

(declare-fun b!6132058 () Bool)

(assert (=> b!6132058 (= e!3737566 (not (= (head!12670 (_2!36357 (get!22214 lt!2331948))) (c!1102031 (regTwo!32662 r!7292)))))))

(declare-fun b!6132059 () Bool)

(assert (=> b!6132059 (= e!3737561 (= (head!12670 (_2!36357 (get!22214 lt!2331948))) (c!1102031 (regTwo!32662 r!7292))))))

(declare-fun b!6132060 () Bool)

(declare-fun e!3737560 () Bool)

(assert (=> b!6132060 (= e!3737560 e!3737564)))

(declare-fun c!1102490 () Bool)

(assert (=> b!6132060 (= c!1102490 ((_ is EmptyLang!16075) (regTwo!32662 r!7292)))))

(declare-fun b!6132061 () Bool)

(declare-fun res!2541393 () Bool)

(assert (=> b!6132061 (=> res!2541393 e!3737562)))

(assert (=> b!6132061 (= res!2541393 e!3737561)))

(declare-fun res!2541392 () Bool)

(assert (=> b!6132061 (=> (not res!2541392) (not e!3737561))))

(declare-fun lt!2332014 () Bool)

(assert (=> b!6132061 (= res!2541392 lt!2332014)))

(declare-fun b!6132062 () Bool)

(declare-fun e!3737563 () Bool)

(assert (=> b!6132062 (= e!3737563 e!3737566)))

(declare-fun res!2541391 () Bool)

(assert (=> b!6132062 (=> res!2541391 e!3737566)))

(declare-fun call!508648 () Bool)

(assert (=> b!6132062 (= res!2541391 call!508648)))

(declare-fun bm!508643 () Bool)

(assert (=> bm!508643 (= call!508648 (isEmpty!36343 (_2!36357 (get!22214 lt!2331948))))))

(declare-fun b!6132056 () Bool)

(declare-fun res!2541395 () Bool)

(assert (=> b!6132056 (=> (not res!2541395) (not e!3737561))))

(assert (=> b!6132056 (= res!2541395 (not call!508648))))

(declare-fun d!1921305 () Bool)

(assert (=> d!1921305 e!3737560))

(declare-fun c!1102488 () Bool)

(assert (=> d!1921305 (= c!1102488 ((_ is EmptyExpr!16075) (regTwo!32662 r!7292)))))

(assert (=> d!1921305 (= lt!2332014 e!3737565)))

(declare-fun c!1102489 () Bool)

(assert (=> d!1921305 (= c!1102489 (isEmpty!36343 (_2!36357 (get!22214 lt!2331948))))))

(assert (=> d!1921305 (validRegex!7811 (regTwo!32662 r!7292))))

(assert (=> d!1921305 (= (matchR!8258 (regTwo!32662 r!7292) (_2!36357 (get!22214 lt!2331948))) lt!2332014)))

(declare-fun b!6132063 () Bool)

(assert (=> b!6132063 (= e!3737565 (matchR!8258 (derivativeStep!4795 (regTwo!32662 r!7292) (head!12670 (_2!36357 (get!22214 lt!2331948)))) (tail!11755 (_2!36357 (get!22214 lt!2331948)))))))

(declare-fun b!6132064 () Bool)

(assert (=> b!6132064 (= e!3737562 e!3737563)))

(declare-fun res!2541398 () Bool)

(assert (=> b!6132064 (=> (not res!2541398) (not e!3737563))))

(assert (=> b!6132064 (= res!2541398 (not lt!2332014))))

(declare-fun b!6132065 () Bool)

(assert (=> b!6132065 (= e!3737560 (= lt!2332014 call!508648))))

(declare-fun b!6132066 () Bool)

(assert (=> b!6132066 (= e!3737564 (not lt!2332014))))

(assert (= (and d!1921305 c!1102489) b!6132053))

(assert (= (and d!1921305 (not c!1102489)) b!6132063))

(assert (= (and d!1921305 c!1102488) b!6132065))

(assert (= (and d!1921305 (not c!1102488)) b!6132060))

(assert (= (and b!6132060 c!1102490) b!6132066))

(assert (= (and b!6132060 (not c!1102490)) b!6132057))

(assert (= (and b!6132057 (not res!2541394)) b!6132061))

(assert (= (and b!6132061 res!2541392) b!6132056))

(assert (= (and b!6132056 res!2541395) b!6132055))

(assert (= (and b!6132055 res!2541396) b!6132059))

(assert (= (and b!6132061 (not res!2541393)) b!6132064))

(assert (= (and b!6132064 res!2541398) b!6132062))

(assert (= (and b!6132062 (not res!2541391)) b!6132054))

(assert (= (and b!6132054 (not res!2541397)) b!6132058))

(assert (= (or b!6132065 b!6132062 b!6132056) bm!508643))

(declare-fun m!6975436 () Bool)

(assert (=> b!6132054 m!6975436))

(assert (=> b!6132054 m!6975436))

(declare-fun m!6975438 () Bool)

(assert (=> b!6132054 m!6975438))

(declare-fun m!6975440 () Bool)

(assert (=> bm!508643 m!6975440))

(assert (=> d!1921305 m!6975440))

(assert (=> d!1921305 m!6975194))

(assert (=> b!6132055 m!6975436))

(assert (=> b!6132055 m!6975436))

(assert (=> b!6132055 m!6975438))

(declare-fun m!6975442 () Bool)

(assert (=> b!6132059 m!6975442))

(assert (=> b!6132053 m!6975196))

(assert (=> b!6132063 m!6975442))

(assert (=> b!6132063 m!6975442))

(declare-fun m!6975444 () Bool)

(assert (=> b!6132063 m!6975444))

(assert (=> b!6132063 m!6975436))

(assert (=> b!6132063 m!6975444))

(assert (=> b!6132063 m!6975436))

(declare-fun m!6975446 () Bool)

(assert (=> b!6132063 m!6975446))

(assert (=> b!6132058 m!6975442))

(assert (=> b!6130869 d!1921305))

(assert (=> b!6130869 d!1921225))

(declare-fun b!6132067 () Bool)

(declare-fun e!3737572 () (InoxSet Context!10918))

(declare-fun e!3737568 () (InoxSet Context!10918))

(assert (=> b!6132067 (= e!3737572 e!3737568)))

(declare-fun c!1102491 () Bool)

(assert (=> b!6132067 (= c!1102491 ((_ is Concat!24920) (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun bm!508644 () Bool)

(declare-fun call!508653 () (InoxSet Context!10918))

(declare-fun call!508650 () (InoxSet Context!10918))

(assert (=> bm!508644 (= call!508653 call!508650)))

(declare-fun b!6132068 () Bool)

(declare-fun c!1102494 () Bool)

(declare-fun e!3737571 () Bool)

(assert (=> b!6132068 (= c!1102494 e!3737571)))

(declare-fun res!2541399 () Bool)

(assert (=> b!6132068 (=> (not res!2541399) (not e!3737571))))

(assert (=> b!6132068 (= res!2541399 ((_ is Concat!24920) (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun e!3737570 () (InoxSet Context!10918))

(assert (=> b!6132068 (= e!3737570 e!3737572)))

(declare-fun bm!508646 () Bool)

(declare-fun call!508649 () (InoxSet Context!10918))

(assert (=> bm!508646 (= call!508650 call!508649)))

(declare-fun b!6132069 () Bool)

(declare-fun call!508651 () (InoxSet Context!10918))

(assert (=> b!6132069 (= e!3737570 ((_ map or) call!508651 call!508649))))

(declare-fun b!6132070 () Bool)

(declare-fun e!3737569 () (InoxSet Context!10918))

(assert (=> b!6132070 (= e!3737569 (store ((as const (Array Context!10918 Bool)) false) (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) true))))

(declare-fun b!6132071 () Bool)

(declare-fun c!1102493 () Bool)

(assert (=> b!6132071 (= c!1102493 ((_ is Star!16075) (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun e!3737567 () (InoxSet Context!10918))

(assert (=> b!6132071 (= e!3737568 e!3737567)))

(declare-fun b!6132072 () Bool)

(assert (=> b!6132072 (= e!3737569 e!3737570)))

(declare-fun c!1102495 () Bool)

(assert (=> b!6132072 (= c!1102495 ((_ is Union!16075) (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun bm!508647 () Bool)

(declare-fun call!508652 () List!64524)

(assert (=> bm!508647 (= call!508651 (derivationStepZipperDown!1323 (ite c!1102495 (regOne!32663 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (regOne!32662 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))) (ite c!1102495 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (Context!10919 call!508652)) (h!70849 s!2326)))))

(declare-fun b!6132073 () Bool)

(assert (=> b!6132073 (= e!3737568 call!508653)))

(declare-fun bm!508645 () Bool)

(declare-fun call!508654 () List!64524)

(assert (=> bm!508645 (= call!508654 call!508652)))

(declare-fun d!1921307 () Bool)

(declare-fun c!1102492 () Bool)

(assert (=> d!1921307 (= c!1102492 (and ((_ is ElementMatch!16075) (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (= (c!1102031 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (h!70849 s!2326))))))

(assert (=> d!1921307 (= (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))) (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (h!70849 s!2326)) e!3737569)))

(declare-fun bm!508648 () Bool)

(assert (=> bm!508648 (= call!508649 (derivationStepZipperDown!1323 (ite c!1102495 (regTwo!32663 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (ite c!1102494 (regTwo!32662 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (ite c!1102491 (regOne!32662 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (reg!16404 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))) (ite (or c!1102495 c!1102494) (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (Context!10919 call!508654)) (h!70849 s!2326)))))

(declare-fun b!6132074 () Bool)

(assert (=> b!6132074 (= e!3737567 call!508653)))

(declare-fun bm!508649 () Bool)

(assert (=> bm!508649 (= call!508652 ($colon$colon!1952 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))) (ite (or c!1102494 c!1102491) (regTwo!32662 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))))

(declare-fun b!6132075 () Bool)

(assert (=> b!6132075 (= e!3737571 (nullable!6068 (regOne!32662 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (h!70848 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))))))))

(declare-fun b!6132076 () Bool)

(assert (=> b!6132076 (= e!3737572 ((_ map or) call!508651 call!508650))))

(declare-fun b!6132077 () Bool)

(assert (=> b!6132077 (= e!3737567 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921307 c!1102492) b!6132070))

(assert (= (and d!1921307 (not c!1102492)) b!6132072))

(assert (= (and b!6132072 c!1102495) b!6132069))

(assert (= (and b!6132072 (not c!1102495)) b!6132068))

(assert (= (and b!6132068 res!2541399) b!6132075))

(assert (= (and b!6132068 c!1102494) b!6132076))

(assert (= (and b!6132068 (not c!1102494)) b!6132067))

(assert (= (and b!6132067 c!1102491) b!6132073))

(assert (= (and b!6132067 (not c!1102491)) b!6132071))

(assert (= (and b!6132071 c!1102493) b!6132074))

(assert (= (and b!6132071 (not c!1102493)) b!6132077))

(assert (= (or b!6132073 b!6132074) bm!508645))

(assert (= (or b!6132073 b!6132074) bm!508644))

(assert (= (or b!6132076 bm!508645) bm!508649))

(assert (= (or b!6132076 bm!508644) bm!508646))

(assert (= (or b!6132069 bm!508646) bm!508648))

(assert (= (or b!6132069 b!6132076) bm!508647))

(declare-fun m!6975448 () Bool)

(assert (=> bm!508649 m!6975448))

(declare-fun m!6975450 () Bool)

(assert (=> b!6132075 m!6975450))

(declare-fun m!6975452 () Bool)

(assert (=> b!6132070 m!6975452))

(declare-fun m!6975454 () Bool)

(assert (=> bm!508648 m!6975454))

(declare-fun m!6975456 () Bool)

(assert (=> bm!508647 m!6975456))

(assert (=> bm!508449 d!1921307))

(declare-fun b!6132078 () Bool)

(declare-fun e!3737578 () (InoxSet Context!10918))

(declare-fun e!3737574 () (InoxSet Context!10918))

(assert (=> b!6132078 (= e!3737578 e!3737574)))

(declare-fun c!1102496 () Bool)

(assert (=> b!6132078 (= c!1102496 ((_ is Concat!24920) (h!70848 (exprs!5959 lt!2331882))))))

(declare-fun bm!508650 () Bool)

(declare-fun call!508659 () (InoxSet Context!10918))

(declare-fun call!508656 () (InoxSet Context!10918))

(assert (=> bm!508650 (= call!508659 call!508656)))

(declare-fun b!6132079 () Bool)

(declare-fun c!1102499 () Bool)

(declare-fun e!3737577 () Bool)

(assert (=> b!6132079 (= c!1102499 e!3737577)))

(declare-fun res!2541400 () Bool)

(assert (=> b!6132079 (=> (not res!2541400) (not e!3737577))))

(assert (=> b!6132079 (= res!2541400 ((_ is Concat!24920) (h!70848 (exprs!5959 lt!2331882))))))

(declare-fun e!3737576 () (InoxSet Context!10918))

(assert (=> b!6132079 (= e!3737576 e!3737578)))

(declare-fun bm!508652 () Bool)

(declare-fun call!508655 () (InoxSet Context!10918))

(assert (=> bm!508652 (= call!508656 call!508655)))

(declare-fun b!6132080 () Bool)

(declare-fun call!508657 () (InoxSet Context!10918))

(assert (=> b!6132080 (= e!3737576 ((_ map or) call!508657 call!508655))))

(declare-fun b!6132081 () Bool)

(declare-fun e!3737575 () (InoxSet Context!10918))

(assert (=> b!6132081 (= e!3737575 (store ((as const (Array Context!10918 Bool)) false) (Context!10919 (t!377993 (exprs!5959 lt!2331882))) true))))

(declare-fun b!6132082 () Bool)

(declare-fun c!1102498 () Bool)

(assert (=> b!6132082 (= c!1102498 ((_ is Star!16075) (h!70848 (exprs!5959 lt!2331882))))))

(declare-fun e!3737573 () (InoxSet Context!10918))

(assert (=> b!6132082 (= e!3737574 e!3737573)))

(declare-fun b!6132083 () Bool)

(assert (=> b!6132083 (= e!3737575 e!3737576)))

(declare-fun c!1102500 () Bool)

(assert (=> b!6132083 (= c!1102500 ((_ is Union!16075) (h!70848 (exprs!5959 lt!2331882))))))

(declare-fun call!508658 () List!64524)

(declare-fun bm!508653 () Bool)

(assert (=> bm!508653 (= call!508657 (derivationStepZipperDown!1323 (ite c!1102500 (regOne!32663 (h!70848 (exprs!5959 lt!2331882))) (regOne!32662 (h!70848 (exprs!5959 lt!2331882)))) (ite c!1102500 (Context!10919 (t!377993 (exprs!5959 lt!2331882))) (Context!10919 call!508658)) (h!70849 s!2326)))))

(declare-fun b!6132084 () Bool)

(assert (=> b!6132084 (= e!3737574 call!508659)))

(declare-fun bm!508651 () Bool)

(declare-fun call!508660 () List!64524)

(assert (=> bm!508651 (= call!508660 call!508658)))

(declare-fun d!1921309 () Bool)

(declare-fun c!1102497 () Bool)

(assert (=> d!1921309 (= c!1102497 (and ((_ is ElementMatch!16075) (h!70848 (exprs!5959 lt!2331882))) (= (c!1102031 (h!70848 (exprs!5959 lt!2331882))) (h!70849 s!2326))))))

(assert (=> d!1921309 (= (derivationStepZipperDown!1323 (h!70848 (exprs!5959 lt!2331882)) (Context!10919 (t!377993 (exprs!5959 lt!2331882))) (h!70849 s!2326)) e!3737575)))

(declare-fun bm!508654 () Bool)

(assert (=> bm!508654 (= call!508655 (derivationStepZipperDown!1323 (ite c!1102500 (regTwo!32663 (h!70848 (exprs!5959 lt!2331882))) (ite c!1102499 (regTwo!32662 (h!70848 (exprs!5959 lt!2331882))) (ite c!1102496 (regOne!32662 (h!70848 (exprs!5959 lt!2331882))) (reg!16404 (h!70848 (exprs!5959 lt!2331882)))))) (ite (or c!1102500 c!1102499) (Context!10919 (t!377993 (exprs!5959 lt!2331882))) (Context!10919 call!508660)) (h!70849 s!2326)))))

(declare-fun b!6132085 () Bool)

(assert (=> b!6132085 (= e!3737573 call!508659)))

(declare-fun bm!508655 () Bool)

(assert (=> bm!508655 (= call!508658 ($colon$colon!1952 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 lt!2331882)))) (ite (or c!1102499 c!1102496) (regTwo!32662 (h!70848 (exprs!5959 lt!2331882))) (h!70848 (exprs!5959 lt!2331882)))))))

(declare-fun b!6132086 () Bool)

(assert (=> b!6132086 (= e!3737577 (nullable!6068 (regOne!32662 (h!70848 (exprs!5959 lt!2331882)))))))

(declare-fun b!6132087 () Bool)

(assert (=> b!6132087 (= e!3737578 ((_ map or) call!508657 call!508656))))

(declare-fun b!6132088 () Bool)

(assert (=> b!6132088 (= e!3737573 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921309 c!1102497) b!6132081))

(assert (= (and d!1921309 (not c!1102497)) b!6132083))

(assert (= (and b!6132083 c!1102500) b!6132080))

(assert (= (and b!6132083 (not c!1102500)) b!6132079))

(assert (= (and b!6132079 res!2541400) b!6132086))

(assert (= (and b!6132079 c!1102499) b!6132087))

(assert (= (and b!6132079 (not c!1102499)) b!6132078))

(assert (= (and b!6132078 c!1102496) b!6132084))

(assert (= (and b!6132078 (not c!1102496)) b!6132082))

(assert (= (and b!6132082 c!1102498) b!6132085))

(assert (= (and b!6132082 (not c!1102498)) b!6132088))

(assert (= (or b!6132084 b!6132085) bm!508651))

(assert (= (or b!6132084 b!6132085) bm!508650))

(assert (= (or b!6132087 bm!508651) bm!508655))

(assert (= (or b!6132087 bm!508650) bm!508652))

(assert (= (or b!6132080 bm!508652) bm!508654))

(assert (= (or b!6132080 b!6132087) bm!508653))

(declare-fun m!6975458 () Bool)

(assert (=> bm!508655 m!6975458))

(declare-fun m!6975460 () Bool)

(assert (=> b!6132086 m!6975460))

(declare-fun m!6975462 () Bool)

(assert (=> b!6132081 m!6975462))

(declare-fun m!6975464 () Bool)

(assert (=> bm!508654 m!6975464))

(declare-fun m!6975466 () Bool)

(assert (=> bm!508653 m!6975466))

(assert (=> bm!508450 d!1921309))

(declare-fun d!1921311 () Bool)

(assert (=> d!1921311 (= (Exists!3145 lambda!334004) (choose!45553 lambda!334004))))

(declare-fun bs!1521069 () Bool)

(assert (= bs!1521069 d!1921311))

(declare-fun m!6975468 () Bool)

(assert (=> bs!1521069 m!6975468))

(assert (=> d!1920833 d!1921311))

(declare-fun d!1921313 () Bool)

(assert (=> d!1921313 (= (Exists!3145 lambda!334005) (choose!45553 lambda!334005))))

(declare-fun bs!1521070 () Bool)

(assert (= bs!1521070 d!1921313))

(declare-fun m!6975470 () Bool)

(assert (=> bs!1521070 m!6975470))

(assert (=> d!1920833 d!1921313))

(declare-fun bs!1521071 () Bool)

(declare-fun d!1921315 () Bool)

(assert (= bs!1521071 (and d!1921315 b!6131895)))

(declare-fun lambda!334080 () Int)

(assert (=> bs!1521071 (not (= lambda!334080 lambda!334064))))

(declare-fun bs!1521072 () Bool)

(assert (= bs!1521072 (and d!1921315 d!1920833)))

(assert (=> bs!1521072 (not (= lambda!334080 lambda!334005))))

(declare-fun bs!1521073 () Bool)

(assert (= bs!1521073 (and d!1921315 b!6130707)))

(assert (=> bs!1521073 (not (= lambda!334080 lambda!333985))))

(assert (=> bs!1521072 (= lambda!334080 lambda!334004)))

(declare-fun bs!1521074 () Bool)

(assert (= bs!1521074 (and d!1921315 b!6130355)))

(assert (=> bs!1521074 (not (= lambda!334080 lambda!333954))))

(declare-fun bs!1521075 () Bool)

(assert (= bs!1521075 (and d!1921315 d!1920825)))

(assert (=> bs!1521075 (= lambda!334080 lambda!333999)))

(declare-fun bs!1521076 () Bool)

(assert (= bs!1521076 (and d!1921315 b!6131971)))

(assert (=> bs!1521076 (not (= lambda!334080 lambda!334072))))

(declare-fun bs!1521077 () Bool)

(assert (= bs!1521077 (and d!1921315 b!6131900)))

(assert (=> bs!1521077 (not (= lambda!334080 lambda!334063))))

(declare-fun bs!1521078 () Bool)

(assert (= bs!1521078 (and d!1921315 b!6130712)))

(assert (=> bs!1521078 (not (= lambda!334080 lambda!333984))))

(declare-fun bs!1521079 () Bool)

(assert (= bs!1521079 (and d!1921315 d!1921209)))

(assert (=> bs!1521079 (= lambda!334080 lambda!334062)))

(declare-fun bs!1521080 () Bool)

(assert (= bs!1521080 (and d!1921315 b!6131976)))

(assert (=> bs!1521080 (not (= lambda!334080 lambda!334071))))

(assert (=> bs!1521074 (= lambda!334080 lambda!333953)))

(assert (=> d!1921315 true))

(assert (=> d!1921315 true))

(assert (=> d!1921315 true))

(declare-fun lambda!334081 () Int)

(assert (=> bs!1521071 (= (and (= (regOne!32662 r!7292) (regOne!32662 (regOne!32663 r!7292))) (= (regTwo!32662 r!7292) (regTwo!32662 (regOne!32663 r!7292)))) (= lambda!334081 lambda!334064))))

(assert (=> bs!1521072 (= lambda!334081 lambda!334005)))

(assert (=> bs!1521073 (= lambda!334081 lambda!333985)))

(assert (=> bs!1521072 (not (= lambda!334081 lambda!334004))))

(declare-fun bs!1521081 () Bool)

(assert (= bs!1521081 d!1921315))

(assert (=> bs!1521081 (not (= lambda!334081 lambda!334080))))

(assert (=> bs!1521074 (= lambda!334081 lambda!333954)))

(assert (=> bs!1521075 (not (= lambda!334081 lambda!333999))))

(assert (=> bs!1521076 (= (and (= (regOne!32662 r!7292) (regOne!32662 (regTwo!32663 r!7292))) (= (regTwo!32662 r!7292) (regTwo!32662 (regTwo!32663 r!7292)))) (= lambda!334081 lambda!334072))))

(assert (=> bs!1521077 (not (= lambda!334081 lambda!334063))))

(assert (=> bs!1521078 (not (= lambda!334081 lambda!333984))))

(assert (=> bs!1521079 (not (= lambda!334081 lambda!334062))))

(assert (=> bs!1521080 (not (= lambda!334081 lambda!334071))))

(assert (=> bs!1521074 (not (= lambda!334081 lambda!333953))))

(assert (=> d!1921315 true))

(assert (=> d!1921315 true))

(assert (=> d!1921315 true))

(assert (=> d!1921315 (= (Exists!3145 lambda!334080) (Exists!3145 lambda!334081))))

(assert (=> d!1921315 true))

(declare-fun _$90!1830 () Unit!157455)

(assert (=> d!1921315 (= (choose!45555 (regOne!32662 r!7292) (regTwo!32662 r!7292) s!2326) _$90!1830)))

(declare-fun m!6975472 () Bool)

(assert (=> bs!1521081 m!6975472))

(declare-fun m!6975474 () Bool)

(assert (=> bs!1521081 m!6975474))

(assert (=> d!1920833 d!1921315))

(assert (=> d!1920833 d!1921207))

(declare-fun b!6132097 () Bool)

(declare-fun e!3737588 () (InoxSet Context!10918))

(declare-fun e!3737584 () (InoxSet Context!10918))

(assert (=> b!6132097 (= e!3737588 e!3737584)))

(declare-fun c!1102501 () Bool)

(assert (=> b!6132097 (= c!1102501 ((_ is Concat!24920) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun bm!508656 () Bool)

(declare-fun call!508665 () (InoxSet Context!10918))

(declare-fun call!508662 () (InoxSet Context!10918))

(assert (=> bm!508656 (= call!508665 call!508662)))

(declare-fun b!6132098 () Bool)

(declare-fun c!1102504 () Bool)

(declare-fun e!3737587 () Bool)

(assert (=> b!6132098 (= c!1102504 e!3737587)))

(declare-fun res!2541409 () Bool)

(assert (=> b!6132098 (=> (not res!2541409) (not e!3737587))))

(assert (=> b!6132098 (= res!2541409 ((_ is Concat!24920) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun e!3737586 () (InoxSet Context!10918))

(assert (=> b!6132098 (= e!3737586 e!3737588)))

(declare-fun bm!508658 () Bool)

(declare-fun call!508661 () (InoxSet Context!10918))

(assert (=> bm!508658 (= call!508662 call!508661)))

(declare-fun b!6132099 () Bool)

(declare-fun call!508663 () (InoxSet Context!10918))

(assert (=> b!6132099 (= e!3737586 ((_ map or) call!508663 call!508661))))

(declare-fun b!6132100 () Bool)

(declare-fun e!3737585 () (InoxSet Context!10918))

(assert (=> b!6132100 (= e!3737585 (store ((as const (Array Context!10918 Bool)) false) (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))) true))))

(declare-fun b!6132101 () Bool)

(declare-fun c!1102503 () Bool)

(assert (=> b!6132101 (= c!1102503 ((_ is Star!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun e!3737583 () (InoxSet Context!10918))

(assert (=> b!6132101 (= e!3737584 e!3737583)))

(declare-fun b!6132102 () Bool)

(assert (=> b!6132102 (= e!3737585 e!3737586)))

(declare-fun c!1102505 () Bool)

(assert (=> b!6132102 (= c!1102505 ((_ is Union!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun call!508664 () List!64524)

(declare-fun bm!508659 () Bool)

(assert (=> bm!508659 (= call!508663 (derivationStepZipperDown!1323 (ite c!1102505 (regOne!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))) (ite c!1102505 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))) (Context!10919 call!508664)) (h!70849 s!2326)))))

(declare-fun b!6132103 () Bool)

(assert (=> b!6132103 (= e!3737584 call!508665)))

(declare-fun bm!508657 () Bool)

(declare-fun call!508666 () List!64524)

(assert (=> bm!508657 (= call!508666 call!508664)))

(declare-fun d!1921317 () Bool)

(declare-fun c!1102502 () Bool)

(assert (=> d!1921317 (= c!1102502 (and ((_ is ElementMatch!16075) (h!70848 (exprs!5959 (h!70850 zl!343)))) (= (c!1102031 (h!70848 (exprs!5959 (h!70850 zl!343)))) (h!70849 s!2326))))))

(assert (=> d!1921317 (= (derivationStepZipperDown!1323 (h!70848 (exprs!5959 (h!70850 zl!343))) (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))) (h!70849 s!2326)) e!3737585)))

(declare-fun bm!508660 () Bool)

(assert (=> bm!508660 (= call!508661 (derivationStepZipperDown!1323 (ite c!1102505 (regTwo!32663 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102504 (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (ite c!1102501 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (reg!16404 (h!70848 (exprs!5959 (h!70850 zl!343))))))) (ite (or c!1102505 c!1102504) (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343)))) (Context!10919 call!508666)) (h!70849 s!2326)))))

(declare-fun b!6132104 () Bool)

(assert (=> b!6132104 (= e!3737583 call!508665)))

(declare-fun bm!508661 () Bool)

(assert (=> bm!508661 (= call!508664 ($colon$colon!1952 (exprs!5959 (Context!10919 (t!377993 (exprs!5959 (h!70850 zl!343))))) (ite (or c!1102504 c!1102501) (regTwo!32662 (h!70848 (exprs!5959 (h!70850 zl!343)))) (h!70848 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun b!6132105 () Bool)

(assert (=> b!6132105 (= e!3737587 (nullable!6068 (regOne!32662 (h!70848 (exprs!5959 (h!70850 zl!343))))))))

(declare-fun b!6132106 () Bool)

(assert (=> b!6132106 (= e!3737588 ((_ map or) call!508663 call!508662))))

(declare-fun b!6132107 () Bool)

(assert (=> b!6132107 (= e!3737583 ((as const (Array Context!10918 Bool)) false))))

(assert (= (and d!1921317 c!1102502) b!6132100))

(assert (= (and d!1921317 (not c!1102502)) b!6132102))

(assert (= (and b!6132102 c!1102505) b!6132099))

(assert (= (and b!6132102 (not c!1102505)) b!6132098))

(assert (= (and b!6132098 res!2541409) b!6132105))

(assert (= (and b!6132098 c!1102504) b!6132106))

(assert (= (and b!6132098 (not c!1102504)) b!6132097))

(assert (= (and b!6132097 c!1102501) b!6132103))

(assert (= (and b!6132097 (not c!1102501)) b!6132101))

(assert (= (and b!6132101 c!1102503) b!6132104))

(assert (= (and b!6132101 (not c!1102503)) b!6132107))

(assert (= (or b!6132103 b!6132104) bm!508657))

(assert (= (or b!6132103 b!6132104) bm!508656))

(assert (= (or b!6132106 bm!508657) bm!508661))

(assert (= (or b!6132106 bm!508656) bm!508658))

(assert (= (or b!6132099 bm!508658) bm!508660))

(assert (= (or b!6132099 b!6132106) bm!508659))

(declare-fun m!6975476 () Bool)

(assert (=> bm!508661 m!6975476))

(assert (=> b!6132105 m!6974500))

(declare-fun m!6975478 () Bool)

(assert (=> b!6132100 m!6975478))

(declare-fun m!6975480 () Bool)

(assert (=> bm!508660 m!6975480))

(declare-fun m!6975482 () Bool)

(assert (=> bm!508659 m!6975482))

(assert (=> bm!508451 d!1921317))

(declare-fun d!1921319 () Bool)

(assert (=> d!1921319 (= ($colon$colon!1952 (exprs!5959 lt!2331882) (ite (or c!1102216 c!1102213) (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (regTwo!32663 (regOne!32662 r!7292)))) (Cons!64400 (ite (or c!1102216 c!1102213) (regTwo!32662 (regTwo!32663 (regOne!32662 r!7292))) (regTwo!32663 (regOne!32662 r!7292))) (exprs!5959 lt!2331882)))))

(assert (=> bm!508440 d!1921319))

(declare-fun d!1921321 () Bool)

(assert (=> d!1921321 (= (isEmpty!36340 (t!377993 (unfocusZipperList!1496 zl!343))) ((_ is Nil!64400) (t!377993 (unfocusZipperList!1496 zl!343))))))

(assert (=> b!6130978 d!1921321))

(declare-fun d!1921323 () Bool)

(assert (=> d!1921323 (= (nullable!6068 r!7292) (nullableFct!2032 r!7292))))

(declare-fun bs!1521082 () Bool)

(assert (= bs!1521082 d!1921323))

(declare-fun m!6975484 () Bool)

(assert (=> bs!1521082 m!6975484))

(assert (=> b!6130766 d!1921323))

(declare-fun d!1921325 () Bool)

(assert (=> d!1921325 (= (isEmpty!36340 (tail!11756 (exprs!5959 (h!70850 zl!343)))) ((_ is Nil!64400) (tail!11756 (exprs!5959 (h!70850 zl!343)))))))

(assert (=> b!6130597 d!1921325))

(declare-fun d!1921327 () Bool)

(assert (=> d!1921327 (= (tail!11756 (exprs!5959 (h!70850 zl!343))) (t!377993 (exprs!5959 (h!70850 zl!343))))))

(assert (=> b!6130597 d!1921327))

(declare-fun b!6132108 () Bool)

(declare-fun e!3737589 () Bool)

(declare-fun tp!1713539 () Bool)

(assert (=> b!6132108 (= e!3737589 (and tp_is_empty!41403 tp!1713539))))

(assert (=> b!6131079 (= tp!1713317 e!3737589)))

(assert (= (and b!6131079 ((_ is Cons!64401) (t!377994 (t!377994 s!2326)))) b!6132108))

(declare-fun e!3737590 () Bool)

(assert (=> b!6131101 (= tp!1713338 e!3737590)))

(declare-fun b!6132112 () Bool)

(declare-fun tp!1713544 () Bool)

(declare-fun tp!1713543 () Bool)

(assert (=> b!6132112 (= e!3737590 (and tp!1713544 tp!1713543))))

(declare-fun b!6132111 () Bool)

(declare-fun tp!1713541 () Bool)

(assert (=> b!6132111 (= e!3737590 tp!1713541)))

(declare-fun b!6132109 () Bool)

(assert (=> b!6132109 (= e!3737590 tp_is_empty!41403)))

(declare-fun b!6132110 () Bool)

(declare-fun tp!1713540 () Bool)

(declare-fun tp!1713542 () Bool)

(assert (=> b!6132110 (= e!3737590 (and tp!1713540 tp!1713542))))

(assert (= (and b!6131101 ((_ is ElementMatch!16075) (regOne!32663 (regOne!32662 r!7292)))) b!6132109))

(assert (= (and b!6131101 ((_ is Concat!24920) (regOne!32663 (regOne!32662 r!7292)))) b!6132110))

(assert (= (and b!6131101 ((_ is Star!16075) (regOne!32663 (regOne!32662 r!7292)))) b!6132111))

(assert (= (and b!6131101 ((_ is Union!16075) (regOne!32663 (regOne!32662 r!7292)))) b!6132112))

(declare-fun e!3737591 () Bool)

(assert (=> b!6131101 (= tp!1713337 e!3737591)))

(declare-fun b!6132116 () Bool)

(declare-fun tp!1713549 () Bool)

(declare-fun tp!1713548 () Bool)

(assert (=> b!6132116 (= e!3737591 (and tp!1713549 tp!1713548))))

(declare-fun b!6132115 () Bool)

(declare-fun tp!1713546 () Bool)

(assert (=> b!6132115 (= e!3737591 tp!1713546)))

(declare-fun b!6132113 () Bool)

(assert (=> b!6132113 (= e!3737591 tp_is_empty!41403)))

(declare-fun b!6132114 () Bool)

(declare-fun tp!1713545 () Bool)

(declare-fun tp!1713547 () Bool)

(assert (=> b!6132114 (= e!3737591 (and tp!1713545 tp!1713547))))

(assert (= (and b!6131101 ((_ is ElementMatch!16075) (regTwo!32663 (regOne!32662 r!7292)))) b!6132113))

(assert (= (and b!6131101 ((_ is Concat!24920) (regTwo!32663 (regOne!32662 r!7292)))) b!6132114))

(assert (= (and b!6131101 ((_ is Star!16075) (regTwo!32663 (regOne!32662 r!7292)))) b!6132115))

(assert (= (and b!6131101 ((_ is Union!16075) (regTwo!32663 (regOne!32662 r!7292)))) b!6132116))

(declare-fun e!3737592 () Bool)

(assert (=> b!6131100 (= tp!1713335 e!3737592)))

(declare-fun b!6132120 () Bool)

(declare-fun tp!1713554 () Bool)

(declare-fun tp!1713553 () Bool)

(assert (=> b!6132120 (= e!3737592 (and tp!1713554 tp!1713553))))

(declare-fun b!6132119 () Bool)

(declare-fun tp!1713551 () Bool)

(assert (=> b!6132119 (= e!3737592 tp!1713551)))

(declare-fun b!6132117 () Bool)

(assert (=> b!6132117 (= e!3737592 tp_is_empty!41403)))

(declare-fun b!6132118 () Bool)

(declare-fun tp!1713550 () Bool)

(declare-fun tp!1713552 () Bool)

(assert (=> b!6132118 (= e!3737592 (and tp!1713550 tp!1713552))))

(assert (= (and b!6131100 ((_ is ElementMatch!16075) (reg!16404 (regOne!32662 r!7292)))) b!6132117))

(assert (= (and b!6131100 ((_ is Concat!24920) (reg!16404 (regOne!32662 r!7292)))) b!6132118))

(assert (= (and b!6131100 ((_ is Star!16075) (reg!16404 (regOne!32662 r!7292)))) b!6132119))

(assert (= (and b!6131100 ((_ is Union!16075) (reg!16404 (regOne!32662 r!7292)))) b!6132120))

(declare-fun e!3737593 () Bool)

(assert (=> b!6131109 (= tp!1713348 e!3737593)))

(declare-fun b!6132124 () Bool)

(declare-fun tp!1713559 () Bool)

(declare-fun tp!1713558 () Bool)

(assert (=> b!6132124 (= e!3737593 (and tp!1713559 tp!1713558))))

(declare-fun b!6132123 () Bool)

(declare-fun tp!1713556 () Bool)

(assert (=> b!6132123 (= e!3737593 tp!1713556)))

(declare-fun b!6132121 () Bool)

(assert (=> b!6132121 (= e!3737593 tp_is_empty!41403)))

(declare-fun b!6132122 () Bool)

(declare-fun tp!1713555 () Bool)

(declare-fun tp!1713557 () Bool)

(assert (=> b!6132122 (= e!3737593 (and tp!1713555 tp!1713557))))

(assert (= (and b!6131109 ((_ is ElementMatch!16075) (regOne!32663 (reg!16404 r!7292)))) b!6132121))

(assert (= (and b!6131109 ((_ is Concat!24920) (regOne!32663 (reg!16404 r!7292)))) b!6132122))

(assert (= (and b!6131109 ((_ is Star!16075) (regOne!32663 (reg!16404 r!7292)))) b!6132123))

(assert (= (and b!6131109 ((_ is Union!16075) (regOne!32663 (reg!16404 r!7292)))) b!6132124))

(declare-fun e!3737594 () Bool)

(assert (=> b!6131109 (= tp!1713347 e!3737594)))

(declare-fun b!6132128 () Bool)

(declare-fun tp!1713564 () Bool)

(declare-fun tp!1713563 () Bool)

(assert (=> b!6132128 (= e!3737594 (and tp!1713564 tp!1713563))))

(declare-fun b!6132127 () Bool)

(declare-fun tp!1713561 () Bool)

(assert (=> b!6132127 (= e!3737594 tp!1713561)))

(declare-fun b!6132125 () Bool)

(assert (=> b!6132125 (= e!3737594 tp_is_empty!41403)))

(declare-fun b!6132126 () Bool)

(declare-fun tp!1713560 () Bool)

(declare-fun tp!1713562 () Bool)

(assert (=> b!6132126 (= e!3737594 (and tp!1713560 tp!1713562))))

(assert (= (and b!6131109 ((_ is ElementMatch!16075) (regTwo!32663 (reg!16404 r!7292)))) b!6132125))

(assert (= (and b!6131109 ((_ is Concat!24920) (regTwo!32663 (reg!16404 r!7292)))) b!6132126))

(assert (= (and b!6131109 ((_ is Star!16075) (regTwo!32663 (reg!16404 r!7292)))) b!6132127))

(assert (= (and b!6131109 ((_ is Union!16075) (regTwo!32663 (reg!16404 r!7292)))) b!6132128))

(declare-fun e!3737595 () Bool)

(assert (=> b!6131099 (= tp!1713334 e!3737595)))

(declare-fun b!6132132 () Bool)

(declare-fun tp!1713569 () Bool)

(declare-fun tp!1713568 () Bool)

(assert (=> b!6132132 (= e!3737595 (and tp!1713569 tp!1713568))))

(declare-fun b!6132131 () Bool)

(declare-fun tp!1713566 () Bool)

(assert (=> b!6132131 (= e!3737595 tp!1713566)))

(declare-fun b!6132129 () Bool)

(assert (=> b!6132129 (= e!3737595 tp_is_empty!41403)))

(declare-fun b!6132130 () Bool)

(declare-fun tp!1713565 () Bool)

(declare-fun tp!1713567 () Bool)

(assert (=> b!6132130 (= e!3737595 (and tp!1713565 tp!1713567))))

(assert (= (and b!6131099 ((_ is ElementMatch!16075) (regOne!32662 (regOne!32662 r!7292)))) b!6132129))

(assert (= (and b!6131099 ((_ is Concat!24920) (regOne!32662 (regOne!32662 r!7292)))) b!6132130))

(assert (= (and b!6131099 ((_ is Star!16075) (regOne!32662 (regOne!32662 r!7292)))) b!6132131))

(assert (= (and b!6131099 ((_ is Union!16075) (regOne!32662 (regOne!32662 r!7292)))) b!6132132))

(declare-fun e!3737596 () Bool)

(assert (=> b!6131099 (= tp!1713336 e!3737596)))

(declare-fun b!6132136 () Bool)

(declare-fun tp!1713574 () Bool)

(declare-fun tp!1713573 () Bool)

(assert (=> b!6132136 (= e!3737596 (and tp!1713574 tp!1713573))))

(declare-fun b!6132135 () Bool)

(declare-fun tp!1713571 () Bool)

(assert (=> b!6132135 (= e!3737596 tp!1713571)))

(declare-fun b!6132133 () Bool)

(assert (=> b!6132133 (= e!3737596 tp_is_empty!41403)))

(declare-fun b!6132134 () Bool)

(declare-fun tp!1713570 () Bool)

(declare-fun tp!1713572 () Bool)

(assert (=> b!6132134 (= e!3737596 (and tp!1713570 tp!1713572))))

(assert (= (and b!6131099 ((_ is ElementMatch!16075) (regTwo!32662 (regOne!32662 r!7292)))) b!6132133))

(assert (= (and b!6131099 ((_ is Concat!24920) (regTwo!32662 (regOne!32662 r!7292)))) b!6132134))

(assert (= (and b!6131099 ((_ is Star!16075) (regTwo!32662 (regOne!32662 r!7292)))) b!6132135))

(assert (= (and b!6131099 ((_ is Union!16075) (regTwo!32662 (regOne!32662 r!7292)))) b!6132136))

(declare-fun e!3737597 () Bool)

(assert (=> b!6131123 (= tp!1713365 e!3737597)))

(declare-fun b!6132140 () Bool)

(declare-fun tp!1713579 () Bool)

(declare-fun tp!1713578 () Bool)

(assert (=> b!6132140 (= e!3737597 (and tp!1713579 tp!1713578))))

(declare-fun b!6132139 () Bool)

(declare-fun tp!1713576 () Bool)

(assert (=> b!6132139 (= e!3737597 tp!1713576)))

(declare-fun b!6132137 () Bool)

(assert (=> b!6132137 (= e!3737597 tp_is_empty!41403)))

(declare-fun b!6132138 () Bool)

(declare-fun tp!1713575 () Bool)

(declare-fun tp!1713577 () Bool)

(assert (=> b!6132138 (= e!3737597 (and tp!1713575 tp!1713577))))

(assert (= (and b!6131123 ((_ is ElementMatch!16075) (h!70848 (exprs!5959 (h!70850 zl!343))))) b!6132137))

(assert (= (and b!6131123 ((_ is Concat!24920) (h!70848 (exprs!5959 (h!70850 zl!343))))) b!6132138))

(assert (= (and b!6131123 ((_ is Star!16075) (h!70848 (exprs!5959 (h!70850 zl!343))))) b!6132139))

(assert (= (and b!6131123 ((_ is Union!16075) (h!70848 (exprs!5959 (h!70850 zl!343))))) b!6132140))

(declare-fun b!6132141 () Bool)

(declare-fun e!3737598 () Bool)

(declare-fun tp!1713580 () Bool)

(declare-fun tp!1713581 () Bool)

(assert (=> b!6132141 (= e!3737598 (and tp!1713580 tp!1713581))))

(assert (=> b!6131123 (= tp!1713366 e!3737598)))

(assert (= (and b!6131123 ((_ is Cons!64400) (t!377993 (exprs!5959 (h!70850 zl!343))))) b!6132141))

(declare-fun e!3737599 () Bool)

(assert (=> b!6131108 (= tp!1713345 e!3737599)))

(declare-fun b!6132145 () Bool)

(declare-fun tp!1713586 () Bool)

(declare-fun tp!1713585 () Bool)

(assert (=> b!6132145 (= e!3737599 (and tp!1713586 tp!1713585))))

(declare-fun b!6132144 () Bool)

(declare-fun tp!1713583 () Bool)

(assert (=> b!6132144 (= e!3737599 tp!1713583)))

(declare-fun b!6132142 () Bool)

(assert (=> b!6132142 (= e!3737599 tp_is_empty!41403)))

(declare-fun b!6132143 () Bool)

(declare-fun tp!1713582 () Bool)

(declare-fun tp!1713584 () Bool)

(assert (=> b!6132143 (= e!3737599 (and tp!1713582 tp!1713584))))

(assert (= (and b!6131108 ((_ is ElementMatch!16075) (reg!16404 (reg!16404 r!7292)))) b!6132142))

(assert (= (and b!6131108 ((_ is Concat!24920) (reg!16404 (reg!16404 r!7292)))) b!6132143))

(assert (= (and b!6131108 ((_ is Star!16075) (reg!16404 (reg!16404 r!7292)))) b!6132144))

(assert (= (and b!6131108 ((_ is Union!16075) (reg!16404 (reg!16404 r!7292)))) b!6132145))

(declare-fun e!3737600 () Bool)

(assert (=> b!6131107 (= tp!1713344 e!3737600)))

(declare-fun b!6132149 () Bool)

(declare-fun tp!1713591 () Bool)

(declare-fun tp!1713590 () Bool)

(assert (=> b!6132149 (= e!3737600 (and tp!1713591 tp!1713590))))

(declare-fun b!6132148 () Bool)

(declare-fun tp!1713588 () Bool)

(assert (=> b!6132148 (= e!3737600 tp!1713588)))

(declare-fun b!6132146 () Bool)

(assert (=> b!6132146 (= e!3737600 tp_is_empty!41403)))

(declare-fun b!6132147 () Bool)

(declare-fun tp!1713587 () Bool)

(declare-fun tp!1713589 () Bool)

(assert (=> b!6132147 (= e!3737600 (and tp!1713587 tp!1713589))))

(assert (= (and b!6131107 ((_ is ElementMatch!16075) (regOne!32662 (reg!16404 r!7292)))) b!6132146))

(assert (= (and b!6131107 ((_ is Concat!24920) (regOne!32662 (reg!16404 r!7292)))) b!6132147))

(assert (= (and b!6131107 ((_ is Star!16075) (regOne!32662 (reg!16404 r!7292)))) b!6132148))

(assert (= (and b!6131107 ((_ is Union!16075) (regOne!32662 (reg!16404 r!7292)))) b!6132149))

(declare-fun e!3737601 () Bool)

(assert (=> b!6131107 (= tp!1713346 e!3737601)))

(declare-fun b!6132153 () Bool)

(declare-fun tp!1713596 () Bool)

(declare-fun tp!1713595 () Bool)

(assert (=> b!6132153 (= e!3737601 (and tp!1713596 tp!1713595))))

(declare-fun b!6132152 () Bool)

(declare-fun tp!1713593 () Bool)

(assert (=> b!6132152 (= e!3737601 tp!1713593)))

(declare-fun b!6132150 () Bool)

(assert (=> b!6132150 (= e!3737601 tp_is_empty!41403)))

(declare-fun b!6132151 () Bool)

(declare-fun tp!1713592 () Bool)

(declare-fun tp!1713594 () Bool)

(assert (=> b!6132151 (= e!3737601 (and tp!1713592 tp!1713594))))

(assert (= (and b!6131107 ((_ is ElementMatch!16075) (regTwo!32662 (reg!16404 r!7292)))) b!6132150))

(assert (= (and b!6131107 ((_ is Concat!24920) (regTwo!32662 (reg!16404 r!7292)))) b!6132151))

(assert (= (and b!6131107 ((_ is Star!16075) (regTwo!32662 (reg!16404 r!7292)))) b!6132152))

(assert (= (and b!6131107 ((_ is Union!16075) (regTwo!32662 (reg!16404 r!7292)))) b!6132153))

(declare-fun e!3737602 () Bool)

(assert (=> b!6131122 (= tp!1713364 e!3737602)))

(declare-fun b!6132157 () Bool)

(declare-fun tp!1713601 () Bool)

(declare-fun tp!1713600 () Bool)

(assert (=> b!6132157 (= e!3737602 (and tp!1713601 tp!1713600))))

(declare-fun b!6132156 () Bool)

(declare-fun tp!1713598 () Bool)

(assert (=> b!6132156 (= e!3737602 tp!1713598)))

(declare-fun b!6132154 () Bool)

(assert (=> b!6132154 (= e!3737602 tp_is_empty!41403)))

(declare-fun b!6132155 () Bool)

(declare-fun tp!1713597 () Bool)

(declare-fun tp!1713599 () Bool)

(assert (=> b!6132155 (= e!3737602 (and tp!1713597 tp!1713599))))

(assert (= (and b!6131122 ((_ is ElementMatch!16075) (regOne!32663 (regTwo!32663 r!7292)))) b!6132154))

(assert (= (and b!6131122 ((_ is Concat!24920) (regOne!32663 (regTwo!32663 r!7292)))) b!6132155))

(assert (= (and b!6131122 ((_ is Star!16075) (regOne!32663 (regTwo!32663 r!7292)))) b!6132156))

(assert (= (and b!6131122 ((_ is Union!16075) (regOne!32663 (regTwo!32663 r!7292)))) b!6132157))

(declare-fun e!3737603 () Bool)

(assert (=> b!6131122 (= tp!1713363 e!3737603)))

(declare-fun b!6132161 () Bool)

(declare-fun tp!1713606 () Bool)

(declare-fun tp!1713605 () Bool)

(assert (=> b!6132161 (= e!3737603 (and tp!1713606 tp!1713605))))

(declare-fun b!6132160 () Bool)

(declare-fun tp!1713603 () Bool)

(assert (=> b!6132160 (= e!3737603 tp!1713603)))

(declare-fun b!6132158 () Bool)

(assert (=> b!6132158 (= e!3737603 tp_is_empty!41403)))

(declare-fun b!6132159 () Bool)

(declare-fun tp!1713602 () Bool)

(declare-fun tp!1713604 () Bool)

(assert (=> b!6132159 (= e!3737603 (and tp!1713602 tp!1713604))))

(assert (= (and b!6131122 ((_ is ElementMatch!16075) (regTwo!32663 (regTwo!32663 r!7292)))) b!6132158))

(assert (= (and b!6131122 ((_ is Concat!24920) (regTwo!32663 (regTwo!32663 r!7292)))) b!6132159))

(assert (= (and b!6131122 ((_ is Star!16075) (regTwo!32663 (regTwo!32663 r!7292)))) b!6132160))

(assert (= (and b!6131122 ((_ is Union!16075) (regTwo!32663 (regTwo!32663 r!7292)))) b!6132161))

(declare-fun e!3737604 () Bool)

(assert (=> b!6131121 (= tp!1713361 e!3737604)))

(declare-fun b!6132165 () Bool)

(declare-fun tp!1713611 () Bool)

(declare-fun tp!1713610 () Bool)

(assert (=> b!6132165 (= e!3737604 (and tp!1713611 tp!1713610))))

(declare-fun b!6132164 () Bool)

(declare-fun tp!1713608 () Bool)

(assert (=> b!6132164 (= e!3737604 tp!1713608)))

(declare-fun b!6132162 () Bool)

(assert (=> b!6132162 (= e!3737604 tp_is_empty!41403)))

(declare-fun b!6132163 () Bool)

(declare-fun tp!1713607 () Bool)

(declare-fun tp!1713609 () Bool)

(assert (=> b!6132163 (= e!3737604 (and tp!1713607 tp!1713609))))

(assert (= (and b!6131121 ((_ is ElementMatch!16075) (reg!16404 (regTwo!32663 r!7292)))) b!6132162))

(assert (= (and b!6131121 ((_ is Concat!24920) (reg!16404 (regTwo!32663 r!7292)))) b!6132163))

(assert (= (and b!6131121 ((_ is Star!16075) (reg!16404 (regTwo!32663 r!7292)))) b!6132164))

(assert (= (and b!6131121 ((_ is Union!16075) (reg!16404 (regTwo!32663 r!7292)))) b!6132165))

(declare-fun e!3737605 () Bool)

(assert (=> b!6131120 (= tp!1713360 e!3737605)))

(declare-fun b!6132169 () Bool)

(declare-fun tp!1713616 () Bool)

(declare-fun tp!1713615 () Bool)

(assert (=> b!6132169 (= e!3737605 (and tp!1713616 tp!1713615))))

(declare-fun b!6132168 () Bool)

(declare-fun tp!1713613 () Bool)

(assert (=> b!6132168 (= e!3737605 tp!1713613)))

(declare-fun b!6132166 () Bool)

(assert (=> b!6132166 (= e!3737605 tp_is_empty!41403)))

(declare-fun b!6132167 () Bool)

(declare-fun tp!1713612 () Bool)

(declare-fun tp!1713614 () Bool)

(assert (=> b!6132167 (= e!3737605 (and tp!1713612 tp!1713614))))

(assert (= (and b!6131120 ((_ is ElementMatch!16075) (regOne!32662 (regTwo!32663 r!7292)))) b!6132166))

(assert (= (and b!6131120 ((_ is Concat!24920) (regOne!32662 (regTwo!32663 r!7292)))) b!6132167))

(assert (= (and b!6131120 ((_ is Star!16075) (regOne!32662 (regTwo!32663 r!7292)))) b!6132168))

(assert (= (and b!6131120 ((_ is Union!16075) (regOne!32662 (regTwo!32663 r!7292)))) b!6132169))

(declare-fun e!3737606 () Bool)

(assert (=> b!6131120 (= tp!1713362 e!3737606)))

(declare-fun b!6132173 () Bool)

(declare-fun tp!1713621 () Bool)

(declare-fun tp!1713620 () Bool)

(assert (=> b!6132173 (= e!3737606 (and tp!1713621 tp!1713620))))

(declare-fun b!6132172 () Bool)

(declare-fun tp!1713618 () Bool)

(assert (=> b!6132172 (= e!3737606 tp!1713618)))

(declare-fun b!6132170 () Bool)

(assert (=> b!6132170 (= e!3737606 tp_is_empty!41403)))

(declare-fun b!6132171 () Bool)

(declare-fun tp!1713617 () Bool)

(declare-fun tp!1713619 () Bool)

(assert (=> b!6132171 (= e!3737606 (and tp!1713617 tp!1713619))))

(assert (= (and b!6131120 ((_ is ElementMatch!16075) (regTwo!32662 (regTwo!32663 r!7292)))) b!6132170))

(assert (= (and b!6131120 ((_ is Concat!24920) (regTwo!32662 (regTwo!32663 r!7292)))) b!6132171))

(assert (= (and b!6131120 ((_ is Star!16075) (regTwo!32662 (regTwo!32663 r!7292)))) b!6132172))

(assert (= (and b!6131120 ((_ is Union!16075) (regTwo!32662 (regTwo!32663 r!7292)))) b!6132173))

(declare-fun b!6132174 () Bool)

(declare-fun e!3737607 () Bool)

(declare-fun tp!1713622 () Bool)

(declare-fun tp!1713623 () Bool)

(assert (=> b!6132174 (= e!3737607 (and tp!1713622 tp!1713623))))

(assert (=> b!6131114 (= tp!1713354 e!3737607)))

(assert (= (and b!6131114 ((_ is Cons!64400) (exprs!5959 setElem!41442))) b!6132174))

(declare-fun condSetEmpty!41450 () Bool)

(assert (=> setNonEmpty!41442 (= condSetEmpty!41450 (= setRest!41442 ((as const (Array Context!10918 Bool)) false)))))

(declare-fun setRes!41450 () Bool)

(assert (=> setNonEmpty!41442 (= tp!1713353 setRes!41450)))

(declare-fun setIsEmpty!41450 () Bool)

(assert (=> setIsEmpty!41450 setRes!41450))

(declare-fun setNonEmpty!41450 () Bool)

(declare-fun tp!1713624 () Bool)

(declare-fun setElem!41450 () Context!10918)

(declare-fun e!3737608 () Bool)

(assert (=> setNonEmpty!41450 (= setRes!41450 (and tp!1713624 (inv!83434 setElem!41450) e!3737608))))

(declare-fun setRest!41450 () (InoxSet Context!10918))

(assert (=> setNonEmpty!41450 (= setRest!41442 ((_ map or) (store ((as const (Array Context!10918 Bool)) false) setElem!41450 true) setRest!41450))))

(declare-fun b!6132175 () Bool)

(declare-fun tp!1713625 () Bool)

(assert (=> b!6132175 (= e!3737608 tp!1713625)))

(assert (= (and setNonEmpty!41442 condSetEmpty!41450) setIsEmpty!41450))

(assert (= (and setNonEmpty!41442 (not condSetEmpty!41450)) setNonEmpty!41450))

(assert (= setNonEmpty!41450 b!6132175))

(declare-fun m!6975486 () Bool)

(assert (=> setNonEmpty!41450 m!6975486))

(declare-fun e!3737609 () Bool)

(assert (=> b!6131105 (= tp!1713343 e!3737609)))

(declare-fun b!6132179 () Bool)

(declare-fun tp!1713630 () Bool)

(declare-fun tp!1713629 () Bool)

(assert (=> b!6132179 (= e!3737609 (and tp!1713630 tp!1713629))))

(declare-fun b!6132178 () Bool)

(declare-fun tp!1713627 () Bool)

(assert (=> b!6132178 (= e!3737609 tp!1713627)))

(declare-fun b!6132176 () Bool)

(assert (=> b!6132176 (= e!3737609 tp_is_empty!41403)))

(declare-fun b!6132177 () Bool)

(declare-fun tp!1713626 () Bool)

(declare-fun tp!1713628 () Bool)

(assert (=> b!6132177 (= e!3737609 (and tp!1713626 tp!1713628))))

(assert (= (and b!6131105 ((_ is ElementMatch!16075) (regOne!32663 (regTwo!32662 r!7292)))) b!6132176))

(assert (= (and b!6131105 ((_ is Concat!24920) (regOne!32663 (regTwo!32662 r!7292)))) b!6132177))

(assert (= (and b!6131105 ((_ is Star!16075) (regOne!32663 (regTwo!32662 r!7292)))) b!6132178))

(assert (= (and b!6131105 ((_ is Union!16075) (regOne!32663 (regTwo!32662 r!7292)))) b!6132179))

(declare-fun e!3737610 () Bool)

(assert (=> b!6131105 (= tp!1713342 e!3737610)))

(declare-fun b!6132183 () Bool)

(declare-fun tp!1713635 () Bool)

(declare-fun tp!1713634 () Bool)

(assert (=> b!6132183 (= e!3737610 (and tp!1713635 tp!1713634))))

(declare-fun b!6132182 () Bool)

(declare-fun tp!1713632 () Bool)

(assert (=> b!6132182 (= e!3737610 tp!1713632)))

(declare-fun b!6132180 () Bool)

(assert (=> b!6132180 (= e!3737610 tp_is_empty!41403)))

(declare-fun b!6132181 () Bool)

(declare-fun tp!1713631 () Bool)

(declare-fun tp!1713633 () Bool)

(assert (=> b!6132181 (= e!3737610 (and tp!1713631 tp!1713633))))

(assert (= (and b!6131105 ((_ is ElementMatch!16075) (regTwo!32663 (regTwo!32662 r!7292)))) b!6132180))

(assert (= (and b!6131105 ((_ is Concat!24920) (regTwo!32663 (regTwo!32662 r!7292)))) b!6132181))

(assert (= (and b!6131105 ((_ is Star!16075) (regTwo!32663 (regTwo!32662 r!7292)))) b!6132182))

(assert (= (and b!6131105 ((_ is Union!16075) (regTwo!32663 (regTwo!32662 r!7292)))) b!6132183))

(declare-fun e!3737611 () Bool)

(assert (=> b!6131104 (= tp!1713340 e!3737611)))

(declare-fun b!6132187 () Bool)

(declare-fun tp!1713640 () Bool)

(declare-fun tp!1713639 () Bool)

(assert (=> b!6132187 (= e!3737611 (and tp!1713640 tp!1713639))))

(declare-fun b!6132186 () Bool)

(declare-fun tp!1713637 () Bool)

(assert (=> b!6132186 (= e!3737611 tp!1713637)))

(declare-fun b!6132184 () Bool)

(assert (=> b!6132184 (= e!3737611 tp_is_empty!41403)))

(declare-fun b!6132185 () Bool)

(declare-fun tp!1713636 () Bool)

(declare-fun tp!1713638 () Bool)

(assert (=> b!6132185 (= e!3737611 (and tp!1713636 tp!1713638))))

(assert (= (and b!6131104 ((_ is ElementMatch!16075) (reg!16404 (regTwo!32662 r!7292)))) b!6132184))

(assert (= (and b!6131104 ((_ is Concat!24920) (reg!16404 (regTwo!32662 r!7292)))) b!6132185))

(assert (= (and b!6131104 ((_ is Star!16075) (reg!16404 (regTwo!32662 r!7292)))) b!6132186))

(assert (= (and b!6131104 ((_ is Union!16075) (reg!16404 (regTwo!32662 r!7292)))) b!6132187))

(declare-fun e!3737612 () Bool)

(assert (=> b!6131074 (= tp!1713313 e!3737612)))

(declare-fun b!6132191 () Bool)

(declare-fun tp!1713645 () Bool)

(declare-fun tp!1713644 () Bool)

(assert (=> b!6132191 (= e!3737612 (and tp!1713645 tp!1713644))))

(declare-fun b!6132190 () Bool)

(declare-fun tp!1713642 () Bool)

(assert (=> b!6132190 (= e!3737612 tp!1713642)))

(declare-fun b!6132188 () Bool)

(assert (=> b!6132188 (= e!3737612 tp_is_empty!41403)))

(declare-fun b!6132189 () Bool)

(declare-fun tp!1713641 () Bool)

(declare-fun tp!1713643 () Bool)

(assert (=> b!6132189 (= e!3737612 (and tp!1713641 tp!1713643))))

(assert (= (and b!6131074 ((_ is ElementMatch!16075) (h!70848 (exprs!5959 setElem!41436)))) b!6132188))

(assert (= (and b!6131074 ((_ is Concat!24920) (h!70848 (exprs!5959 setElem!41436)))) b!6132189))

(assert (= (and b!6131074 ((_ is Star!16075) (h!70848 (exprs!5959 setElem!41436)))) b!6132190))

(assert (= (and b!6131074 ((_ is Union!16075) (h!70848 (exprs!5959 setElem!41436)))) b!6132191))

(declare-fun b!6132192 () Bool)

(declare-fun e!3737613 () Bool)

(declare-fun tp!1713646 () Bool)

(declare-fun tp!1713647 () Bool)

(assert (=> b!6132192 (= e!3737613 (and tp!1713646 tp!1713647))))

(assert (=> b!6131074 (= tp!1713314 e!3737613)))

(assert (= (and b!6131074 ((_ is Cons!64400) (t!377993 (exprs!5959 setElem!41436)))) b!6132192))

(declare-fun e!3737614 () Bool)

(assert (=> b!6131103 (= tp!1713339 e!3737614)))

(declare-fun b!6132196 () Bool)

(declare-fun tp!1713652 () Bool)

(declare-fun tp!1713651 () Bool)

(assert (=> b!6132196 (= e!3737614 (and tp!1713652 tp!1713651))))

(declare-fun b!6132195 () Bool)

(declare-fun tp!1713649 () Bool)

(assert (=> b!6132195 (= e!3737614 tp!1713649)))

(declare-fun b!6132193 () Bool)

(assert (=> b!6132193 (= e!3737614 tp_is_empty!41403)))

(declare-fun b!6132194 () Bool)

(declare-fun tp!1713648 () Bool)

(declare-fun tp!1713650 () Bool)

(assert (=> b!6132194 (= e!3737614 (and tp!1713648 tp!1713650))))

(assert (= (and b!6131103 ((_ is ElementMatch!16075) (regOne!32662 (regTwo!32662 r!7292)))) b!6132193))

(assert (= (and b!6131103 ((_ is Concat!24920) (regOne!32662 (regTwo!32662 r!7292)))) b!6132194))

(assert (= (and b!6131103 ((_ is Star!16075) (regOne!32662 (regTwo!32662 r!7292)))) b!6132195))

(assert (= (and b!6131103 ((_ is Union!16075) (regOne!32662 (regTwo!32662 r!7292)))) b!6132196))

(declare-fun e!3737615 () Bool)

(assert (=> b!6131103 (= tp!1713341 e!3737615)))

(declare-fun b!6132200 () Bool)

(declare-fun tp!1713657 () Bool)

(declare-fun tp!1713656 () Bool)

(assert (=> b!6132200 (= e!3737615 (and tp!1713657 tp!1713656))))

(declare-fun b!6132199 () Bool)

(declare-fun tp!1713654 () Bool)

(assert (=> b!6132199 (= e!3737615 tp!1713654)))

(declare-fun b!6132197 () Bool)

(assert (=> b!6132197 (= e!3737615 tp_is_empty!41403)))

(declare-fun b!6132198 () Bool)

(declare-fun tp!1713653 () Bool)

(declare-fun tp!1713655 () Bool)

(assert (=> b!6132198 (= e!3737615 (and tp!1713653 tp!1713655))))

(assert (= (and b!6131103 ((_ is ElementMatch!16075) (regTwo!32662 (regTwo!32662 r!7292)))) b!6132197))

(assert (= (and b!6131103 ((_ is Concat!24920) (regTwo!32662 (regTwo!32662 r!7292)))) b!6132198))

(assert (= (and b!6131103 ((_ is Star!16075) (regTwo!32662 (regTwo!32662 r!7292)))) b!6132199))

(assert (= (and b!6131103 ((_ is Union!16075) (regTwo!32662 (regTwo!32662 r!7292)))) b!6132200))

(declare-fun e!3737616 () Bool)

(assert (=> b!6131118 (= tp!1713359 e!3737616)))

(declare-fun b!6132204 () Bool)

(declare-fun tp!1713662 () Bool)

(declare-fun tp!1713661 () Bool)

(assert (=> b!6132204 (= e!3737616 (and tp!1713662 tp!1713661))))

(declare-fun b!6132203 () Bool)

(declare-fun tp!1713659 () Bool)

(assert (=> b!6132203 (= e!3737616 tp!1713659)))

(declare-fun b!6132201 () Bool)

(assert (=> b!6132201 (= e!3737616 tp_is_empty!41403)))

(declare-fun b!6132202 () Bool)

(declare-fun tp!1713658 () Bool)

(declare-fun tp!1713660 () Bool)

(assert (=> b!6132202 (= e!3737616 (and tp!1713658 tp!1713660))))

(assert (= (and b!6131118 ((_ is ElementMatch!16075) (regOne!32663 (regOne!32663 r!7292)))) b!6132201))

(assert (= (and b!6131118 ((_ is Concat!24920) (regOne!32663 (regOne!32663 r!7292)))) b!6132202))

(assert (= (and b!6131118 ((_ is Star!16075) (regOne!32663 (regOne!32663 r!7292)))) b!6132203))

(assert (= (and b!6131118 ((_ is Union!16075) (regOne!32663 (regOne!32663 r!7292)))) b!6132204))

(declare-fun e!3737617 () Bool)

(assert (=> b!6131118 (= tp!1713358 e!3737617)))

(declare-fun b!6132208 () Bool)

(declare-fun tp!1713667 () Bool)

(declare-fun tp!1713666 () Bool)

(assert (=> b!6132208 (= e!3737617 (and tp!1713667 tp!1713666))))

(declare-fun b!6132207 () Bool)

(declare-fun tp!1713664 () Bool)

(assert (=> b!6132207 (= e!3737617 tp!1713664)))

(declare-fun b!6132205 () Bool)

(assert (=> b!6132205 (= e!3737617 tp_is_empty!41403)))

(declare-fun b!6132206 () Bool)

(declare-fun tp!1713663 () Bool)

(declare-fun tp!1713665 () Bool)

(assert (=> b!6132206 (= e!3737617 (and tp!1713663 tp!1713665))))

(assert (= (and b!6131118 ((_ is ElementMatch!16075) (regTwo!32663 (regOne!32663 r!7292)))) b!6132205))

(assert (= (and b!6131118 ((_ is Concat!24920) (regTwo!32663 (regOne!32663 r!7292)))) b!6132206))

(assert (= (and b!6131118 ((_ is Star!16075) (regTwo!32663 (regOne!32663 r!7292)))) b!6132207))

(assert (= (and b!6131118 ((_ is Union!16075) (regTwo!32663 (regOne!32663 r!7292)))) b!6132208))

(declare-fun b!6132209 () Bool)

(declare-fun e!3737618 () Bool)

(declare-fun tp!1713668 () Bool)

(declare-fun tp!1713669 () Bool)

(assert (=> b!6132209 (= e!3737618 (and tp!1713668 tp!1713669))))

(assert (=> b!6131087 (= tp!1713322 e!3737618)))

(assert (= (and b!6131087 ((_ is Cons!64400) (exprs!5959 (h!70850 (t!377995 zl!343))))) b!6132209))

(declare-fun b!6132211 () Bool)

(declare-fun e!3737620 () Bool)

(declare-fun tp!1713670 () Bool)

(assert (=> b!6132211 (= e!3737620 tp!1713670)))

(declare-fun e!3737619 () Bool)

(declare-fun b!6132210 () Bool)

(declare-fun tp!1713671 () Bool)

(assert (=> b!6132210 (= e!3737619 (and (inv!83434 (h!70850 (t!377995 (t!377995 zl!343)))) e!3737620 tp!1713671))))

(assert (=> b!6131086 (= tp!1713323 e!3737619)))

(assert (= b!6132210 b!6132211))

(assert (= (and b!6131086 ((_ is Cons!64402) (t!377995 (t!377995 zl!343)))) b!6132210))

(declare-fun m!6975488 () Bool)

(assert (=> b!6132210 m!6975488))

(declare-fun e!3737621 () Bool)

(assert (=> b!6131117 (= tp!1713356 e!3737621)))

(declare-fun b!6132215 () Bool)

(declare-fun tp!1713676 () Bool)

(declare-fun tp!1713675 () Bool)

(assert (=> b!6132215 (= e!3737621 (and tp!1713676 tp!1713675))))

(declare-fun b!6132214 () Bool)

(declare-fun tp!1713673 () Bool)

(assert (=> b!6132214 (= e!3737621 tp!1713673)))

(declare-fun b!6132212 () Bool)

(assert (=> b!6132212 (= e!3737621 tp_is_empty!41403)))

(declare-fun b!6132213 () Bool)

(declare-fun tp!1713672 () Bool)

(declare-fun tp!1713674 () Bool)

(assert (=> b!6132213 (= e!3737621 (and tp!1713672 tp!1713674))))

(assert (= (and b!6131117 ((_ is ElementMatch!16075) (reg!16404 (regOne!32663 r!7292)))) b!6132212))

(assert (= (and b!6131117 ((_ is Concat!24920) (reg!16404 (regOne!32663 r!7292)))) b!6132213))

(assert (= (and b!6131117 ((_ is Star!16075) (reg!16404 (regOne!32663 r!7292)))) b!6132214))

(assert (= (and b!6131117 ((_ is Union!16075) (reg!16404 (regOne!32663 r!7292)))) b!6132215))

(declare-fun e!3737622 () Bool)

(assert (=> b!6131116 (= tp!1713355 e!3737622)))

(declare-fun b!6132219 () Bool)

(declare-fun tp!1713681 () Bool)

(declare-fun tp!1713680 () Bool)

(assert (=> b!6132219 (= e!3737622 (and tp!1713681 tp!1713680))))

(declare-fun b!6132218 () Bool)

(declare-fun tp!1713678 () Bool)

(assert (=> b!6132218 (= e!3737622 tp!1713678)))

(declare-fun b!6132216 () Bool)

(assert (=> b!6132216 (= e!3737622 tp_is_empty!41403)))

(declare-fun b!6132217 () Bool)

(declare-fun tp!1713677 () Bool)

(declare-fun tp!1713679 () Bool)

(assert (=> b!6132217 (= e!3737622 (and tp!1713677 tp!1713679))))

(assert (= (and b!6131116 ((_ is ElementMatch!16075) (regOne!32662 (regOne!32663 r!7292)))) b!6132216))

(assert (= (and b!6131116 ((_ is Concat!24920) (regOne!32662 (regOne!32663 r!7292)))) b!6132217))

(assert (= (and b!6131116 ((_ is Star!16075) (regOne!32662 (regOne!32663 r!7292)))) b!6132218))

(assert (= (and b!6131116 ((_ is Union!16075) (regOne!32662 (regOne!32663 r!7292)))) b!6132219))

(declare-fun e!3737623 () Bool)

(assert (=> b!6131116 (= tp!1713357 e!3737623)))

(declare-fun b!6132223 () Bool)

(declare-fun tp!1713686 () Bool)

(declare-fun tp!1713685 () Bool)

(assert (=> b!6132223 (= e!3737623 (and tp!1713686 tp!1713685))))

(declare-fun b!6132222 () Bool)

(declare-fun tp!1713683 () Bool)

(assert (=> b!6132222 (= e!3737623 tp!1713683)))

(declare-fun b!6132220 () Bool)

(assert (=> b!6132220 (= e!3737623 tp_is_empty!41403)))

(declare-fun b!6132221 () Bool)

(declare-fun tp!1713682 () Bool)

(declare-fun tp!1713684 () Bool)

(assert (=> b!6132221 (= e!3737623 (and tp!1713682 tp!1713684))))

(assert (= (and b!6131116 ((_ is ElementMatch!16075) (regTwo!32662 (regOne!32663 r!7292)))) b!6132220))

(assert (= (and b!6131116 ((_ is Concat!24920) (regTwo!32662 (regOne!32663 r!7292)))) b!6132221))

(assert (= (and b!6131116 ((_ is Star!16075) (regTwo!32662 (regOne!32663 r!7292)))) b!6132222))

(assert (= (and b!6131116 ((_ is Union!16075) (regTwo!32662 (regOne!32663 r!7292)))) b!6132223))

(declare-fun b_lambda!233427 () Bool)

(assert (= b_lambda!233419 (or d!1920753 b_lambda!233427)))

(declare-fun bs!1521083 () Bool)

(declare-fun d!1921329 () Bool)

(assert (= bs!1521083 (and d!1921329 d!1920753)))

(assert (=> bs!1521083 (= (dynLambda!25372 lambda!333964 (h!70848 (exprs!5959 (h!70850 zl!343)))) (validRegex!7811 (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(declare-fun m!6975490 () Bool)

(assert (=> bs!1521083 m!6975490))

(assert (=> b!6131713 d!1921329))

(declare-fun b_lambda!233429 () Bool)

(assert (= b_lambda!233413 (or d!1920755 b_lambda!233429)))

(declare-fun bs!1521084 () Bool)

(declare-fun d!1921331 () Bool)

(assert (= bs!1521084 (and d!1921331 d!1920755)))

(assert (=> bs!1521084 (= (dynLambda!25372 lambda!333967 (h!70848 (exprs!5959 setElem!41436))) (validRegex!7811 (h!70848 (exprs!5959 setElem!41436))))))

(declare-fun m!6975492 () Bool)

(assert (=> bs!1521084 m!6975492))

(assert (=> b!6131678 d!1921331))

(declare-fun b_lambda!233431 () Bool)

(assert (= b_lambda!233421 (or d!1920869 b_lambda!233431)))

(declare-fun bs!1521085 () Bool)

(declare-fun d!1921333 () Bool)

(assert (= bs!1521085 (and d!1921333 d!1920869)))

(assert (=> bs!1521085 (= (dynLambda!25372 lambda!334013 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343)))))))) (validRegex!7811 (h!70848 (exprs!5959 (Context!10919 (Cons!64400 (regOne!32663 (regOne!32662 r!7292)) (t!377993 (exprs!5959 (h!70850 zl!343)))))))))))

(declare-fun m!6975494 () Bool)

(assert (=> bs!1521085 m!6975494))

(assert (=> b!6131769 d!1921333))

(declare-fun b_lambda!233433 () Bool)

(assert (= b_lambda!233423 (or d!1920843 b_lambda!233433)))

(declare-fun bs!1521086 () Bool)

(declare-fun d!1921335 () Bool)

(assert (= bs!1521086 (and d!1921335 d!1920843)))

(assert (=> bs!1521086 (= (dynLambda!25372 lambda!334009 (h!70848 (unfocusZipperList!1496 zl!343))) (validRegex!7811 (h!70848 (unfocusZipperList!1496 zl!343))))))

(declare-fun m!6975496 () Bool)

(assert (=> bs!1521086 m!6975496))

(assert (=> b!6131876 d!1921335))

(declare-fun b_lambda!233435 () Bool)

(assert (= b_lambda!233425 (or b!6130360 b_lambda!233435)))

(assert (=> d!1921239 d!1920871))

(declare-fun b_lambda!233437 () Bool)

(assert (= b_lambda!233417 (or d!1920845 b_lambda!233437)))

(declare-fun bs!1521087 () Bool)

(declare-fun d!1921337 () Bool)

(assert (= bs!1521087 (and d!1921337 d!1920845)))

(assert (=> bs!1521087 (= (dynLambda!25372 lambda!334012 (h!70848 lt!2331966)) (validRegex!7811 (h!70848 lt!2331966)))))

(declare-fun m!6975498 () Bool)

(assert (=> bs!1521087 m!6975498))

(assert (=> b!6131689 d!1921337))

(declare-fun b_lambda!233439 () Bool)

(assert (= b_lambda!233415 (or d!1920839 b_lambda!233439)))

(declare-fun bs!1521088 () Bool)

(declare-fun d!1921339 () Bool)

(assert (= bs!1521088 (and d!1921339 d!1920839)))

(assert (=> bs!1521088 (= (dynLambda!25372 lambda!334006 (h!70848 (exprs!5959 (h!70850 zl!343)))) (validRegex!7811 (h!70848 (exprs!5959 (h!70850 zl!343)))))))

(assert (=> bs!1521088 m!6975490))

(assert (=> b!6131687 d!1921339))

(check-sat (not d!1921191) (not b!6132153) (not bm!508641) (not d!1921235) (not b!6131770) (not bm!508584) (not b!6132194) (not b!6131726) (not b!6131996) (not b!6131679) (not b_lambda!233433) (not setNonEmpty!41450) (not b!6131877) (not b!6132167) (not b!6131840) (not b!6132203) (not d!1921171) (not d!1921323) (not bm!508599) (not b!6132199) (not b!6131959) (not b!6131753) (not b!6132186) (not d!1921161) (not bm!508617) (not b!6131747) (not b!6132054) (not b!6132173) (not b!6132123) (not bs!1521084) (not bm!508659) (not b!6132217) (not b!6131723) (not b!6132152) (not b!6131908) (not bm!508647) (not b!6132136) (not bs!1521083) (not bm!508602) (not d!1921189) (not b!6132118) (not b!6131756) (not bm!508574) (not b!6131746) (not b!6131799) (not b!6132164) (not bm!508568) (not d!1921223) (not d!1921251) (not bm!508632) (not b!6132192) (not b!6132209) (not bs!1521088) (not d!1921275) (not b!6131742) (not b!6131743) (not b!6131728) (not b!6132187) (not b!6132206) (not b!6132016) (not d!1921177) (not b!6131955) (not b!6132012) (not b!6132177) (not b!6132208) (not b!6132033) (not b!6131762) (not b!6131690) (not b!6132052) (not b!6132185) (not b!6131796) (not b!6131792) (not b!6131688) (not b!6132135) (not b!6132127) (not b!6131954) (not b!6132198) (not b!6132214) (not b!6132178) (not b!6131903) (not bm!508605) (not d!1921127) (not b!6131914) (not b!6131975) (not bm!508611) (not b!6131964) (not b!6132156) (not b!6132112) (not d!1921205) (not b_lambda!233429) (not d!1921163) (not b!6132179) (not b!6131844) (not b!6132221) (not b!6131766) (not b!6132130) (not b!6131956) (not b!6131795) (not b!6131749) (not b!6132132) (not bm!508618) (not b!6132108) (not b!6132182) (not b!6131904) (not d!1921313) (not bm!508626) (not b!6132046) (not bm!508600) (not bm!508624) (not b!6132110) (not b!6132116) (not b!6132126) (not b!6131751) (not bm!508633) (not b!6131684) (not b!6132105) (not b_lambda!233435) (not b!6131843) (not b!6131888) (not d!1921155) (not d!1921221) (not b!6132213) (not b!6132175) (not b!6132171) (not bm!508573) (not b!6132163) (not b!6131986) (not d!1921299) (not b!6131748) (not b!6131938) (not bm!508655) (not d!1921195) (not b!6132114) (not b!6131907) (not d!1921301) (not b!6131711) (not bm!508576) (not d!1921199) (not b!6131852) (not b!6132059) (not b!6132075) (not b!6131714) (not d!1921253) (not d!1921295) (not b!6132159) (not b!6132202) (not b!6132063) (not bm!508606) (not d!1921303) (not b!6131883) (not bs!1521086) (not d!1921113) (not b!6131839) (not b!6132124) (not bs!1521087) (not bm!508612) (not b!6132172) (not bm!508621) (not bm!508572) (not bm!508623) (not b_lambda!233437) (not d!1921197) (not d!1921257) (not bm!508610) (not d!1921239) (not bm!508596) (not b_lambda!233383) (not d!1921259) (not b!6132174) (not d!1921291) (not b!6131953) (not b!6132157) (not d!1921243) (not b!6132007) (not bm!508565) (not bm!508620) (not b!6132086) (not bm!508593) (not b!6131848) (not b!6132223) (not b_lambda!233431) (not d!1921129) (not d!1921219) (not d!1921233) (not b!6132219) (not b!6131682) (not b!6132151) (not d!1921305) (not b!6131878) (not b!6131739) (not b!6131727) (not b!6132196) (not d!1921279) (not bm!508577) (not bm!508648) (not b!6132115) (not b!6131913) (not b!6132058) (not bm!508638) (not b!6131832) (not b!6132168) (not b!6131911) (not bm!508622) (not bm!508654) (not b!6132128) (not b!6132189) (not d!1921193) (not b!6131793) (not b!6132131) (not bm!508563) (not d!1921245) (not bm!508583) (not d!1921271) (not b!6131683) (not bm!508642) (not b_lambda!233427) (not b!6131838) (not bm!508567) (not bs!1521085) (not bm!508649) (not b!6131960) (not b!6131701) (not b!6131899) (not bm!508631) (not d!1921311) (not b!6131853) (not b!6131972) (not bm!508603) (not d!1921209) (not b!6132190) (not b!6132218) (not b!6132181) (not b!6132041) (not b!6132204) (not b!6131884) (not bm!508637) (not d!1921201) (not b!6132122) (not d!1921153) (not b!6132111) (not b!6132011) (not b!6132207) (not b!6132010) (not b!6132055) (not b!6132051) (not b!6132141) (not d!1921157) (not b!6132210) (not b!6132138) (not b!6132049) (not bm!508639) (not b!6131910) (not b!6132147) (not b!6131794) (not bm!508575) (not bm!508627) (not b!6132215) (not b!6132134) (not d!1921315) (not b!6131879) (not b!6132018) (not b!6132053) (not bm!508643) (not d!1921231) (not b!6132014) (not b!6132119) (not b!6132144) (not b!6131738) (not b!6131934) (not d!1921179) (not b!6131937) (not b!6131767) (not b!6132042) tp_is_empty!41403 (not b!6131874) (not d!1921203) (not b!6132034) (not b!6132222) (not b!6131804) (not b!6132195) (not bm!508661) (not d!1921255) (not b!6131800) (not bm!508582) (not b!6132027) (not bm!508653) (not b!6131923) (not bm!508616) (not d!1921159) (not b!6132048) (not b!6132043) (not b!6132169) (not d!1921143) (not bm!508604) (not b!6132120) (not bm!508564) (not b!6131946) (not b!6132140) (not b!6132211) (not b!6132165) (not d!1921211) (not setNonEmpty!41449) (not bm!508660) (not b!6132155) (not bm!508597) (not b!6132148) (not b!6131757) (not d!1921213) (not b!6131880) (not b!6132017) (not b!6132143) (not b!6132200) (not d!1921269) (not b_lambda!233439) (not b!6132183) (not b!6132149) (not b!6132160) (not b!6132191) (not b!6131761) (not b!6132139) (not b!6131861) (not b!6131691) (not b!6132145) (not b!6132161) (not b!6131909) (not d!1921125) (not b!6131896))
(check-sat)
