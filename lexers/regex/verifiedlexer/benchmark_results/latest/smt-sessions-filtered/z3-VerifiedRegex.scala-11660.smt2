; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!653668 () Bool)

(assert start!653668)

(declare-fun b!6739483 () Bool)

(assert (=> b!6739483 true))

(assert (=> b!6739483 true))

(declare-fun lambda!378555 () Int)

(declare-fun lambda!378554 () Int)

(assert (=> b!6739483 (not (= lambda!378555 lambda!378554))))

(assert (=> b!6739483 true))

(assert (=> b!6739483 true))

(declare-fun lambda!378556 () Int)

(assert (=> b!6739483 (not (= lambda!378556 lambda!378554))))

(assert (=> b!6739483 (not (= lambda!378556 lambda!378555))))

(assert (=> b!6739483 true))

(assert (=> b!6739483 true))

(declare-fun b!6739499 () Bool)

(assert (=> b!6739499 true))

(declare-fun b!6739477 () Bool)

(declare-fun e!4070910 () Bool)

(declare-fun e!4070903 () Bool)

(assert (=> b!6739477 (= e!4070910 (not e!4070903))))

(declare-fun res!2756838 () Bool)

(assert (=> b!6739477 (=> res!2756838 e!4070903)))

(declare-datatypes ((C!33404 0))(
  ( (C!33405 (val!26404 Int)) )
))
(declare-datatypes ((Regex!16567 0))(
  ( (ElementMatch!16567 (c!1250093 C!33404)) (Concat!25412 (regOne!33646 Regex!16567) (regTwo!33646 Regex!16567)) (EmptyExpr!16567) (Star!16567 (reg!16896 Regex!16567)) (EmptyLang!16567) (Union!16567 (regOne!33647 Regex!16567) (regTwo!33647 Regex!16567)) )
))
(declare-datatypes ((List!66000 0))(
  ( (Nil!65876) (Cons!65876 (h!72324 Regex!16567) (t!379697 List!66000)) )
))
(declare-datatypes ((Context!11902 0))(
  ( (Context!11903 (exprs!6451 List!66000)) )
))
(declare-datatypes ((List!66001 0))(
  ( (Nil!65877) (Cons!65877 (h!72325 Context!11902) (t!379698 List!66001)) )
))
(declare-fun zl!343 () List!66001)

(get-info :version)

(assert (=> b!6739477 (= res!2756838 (not ((_ is Cons!65877) zl!343)))))

(declare-fun lt!2438920 () Bool)

(declare-fun r!7292 () Regex!16567)

(declare-datatypes ((List!66002 0))(
  ( (Nil!65878) (Cons!65878 (h!72326 C!33404) (t!379699 List!66002)) )
))
(declare-fun s!2326 () List!66002)

(declare-fun matchRSpec!3668 (Regex!16567 List!66002) Bool)

(assert (=> b!6739477 (= lt!2438920 (matchRSpec!3668 r!7292 s!2326))))

(declare-fun matchR!8750 (Regex!16567 List!66002) Bool)

(assert (=> b!6739477 (= lt!2438920 (matchR!8750 r!7292 s!2326))))

(declare-datatypes ((Unit!159825 0))(
  ( (Unit!159826) )
))
(declare-fun lt!2438903 () Unit!159825)

(declare-fun mainMatchTheorem!3668 (Regex!16567 List!66002) Unit!159825)

(assert (=> b!6739477 (= lt!2438903 (mainMatchTheorem!3668 r!7292 s!2326))))

(declare-fun b!6739478 () Bool)

(declare-fun e!4070909 () Bool)

(declare-fun e!4070914 () Bool)

(assert (=> b!6739478 (= e!4070909 e!4070914)))

(declare-fun res!2756840 () Bool)

(assert (=> b!6739478 (=> res!2756840 e!4070914)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2438906 () (InoxSet Context!11902))

(declare-fun lt!2438922 () (InoxSet Context!11902))

(declare-fun derivationStepZipper!2511 ((InoxSet Context!11902) C!33404) (InoxSet Context!11902))

(assert (=> b!6739478 (= res!2756840 (not (= lt!2438922 (derivationStepZipper!2511 lt!2438906 (h!72326 s!2326)))))))

(declare-fun lt!2438917 () Context!11902)

(declare-fun lambda!378557 () Int)

(declare-fun flatMap!2048 ((InoxSet Context!11902) Int) (InoxSet Context!11902))

(declare-fun derivationStepZipperUp!1721 (Context!11902 C!33404) (InoxSet Context!11902))

(assert (=> b!6739478 (= (flatMap!2048 lt!2438906 lambda!378557) (derivationStepZipperUp!1721 lt!2438917 (h!72326 s!2326)))))

(declare-fun lt!2438914 () Unit!159825)

(declare-fun lemmaFlatMapOnSingletonSet!1574 ((InoxSet Context!11902) Context!11902 Int) Unit!159825)

(assert (=> b!6739478 (= lt!2438914 (lemmaFlatMapOnSingletonSet!1574 lt!2438906 lt!2438917 lambda!378557))))

(declare-fun lt!2438924 () (InoxSet Context!11902))

(declare-fun lt!2438907 () Context!11902)

(assert (=> b!6739478 (= (flatMap!2048 lt!2438924 lambda!378557) (derivationStepZipperUp!1721 lt!2438907 (h!72326 s!2326)))))

(declare-fun lt!2438904 () Unit!159825)

(assert (=> b!6739478 (= lt!2438904 (lemmaFlatMapOnSingletonSet!1574 lt!2438924 lt!2438907 lambda!378557))))

(declare-fun lt!2438911 () (InoxSet Context!11902))

(assert (=> b!6739478 (= lt!2438911 (derivationStepZipperUp!1721 lt!2438917 (h!72326 s!2326)))))

(declare-fun lt!2438908 () (InoxSet Context!11902))

(assert (=> b!6739478 (= lt!2438908 (derivationStepZipperUp!1721 lt!2438907 (h!72326 s!2326)))))

(assert (=> b!6739478 (= lt!2438906 (store ((as const (Array Context!11902 Bool)) false) lt!2438917 true))))

(assert (=> b!6739478 (= lt!2438924 (store ((as const (Array Context!11902 Bool)) false) lt!2438907 true))))

(assert (=> b!6739478 (= lt!2438907 (Context!11903 (Cons!65876 (reg!16896 r!7292) Nil!65876)))))

(declare-fun b!6739479 () Bool)

(declare-fun e!4070911 () Bool)

(assert (=> b!6739479 (= e!4070911 e!4070909)))

(declare-fun res!2756836 () Bool)

(assert (=> b!6739479 (=> res!2756836 e!4070909)))

(declare-fun derivationStepZipperDown!1795 (Regex!16567 Context!11902 C!33404) (InoxSet Context!11902))

(assert (=> b!6739479 (= res!2756836 (not (= lt!2438922 (derivationStepZipperDown!1795 (reg!16896 r!7292) lt!2438917 (h!72326 s!2326)))))))

(declare-fun lt!2438918 () List!66000)

(assert (=> b!6739479 (= lt!2438917 (Context!11903 lt!2438918))))

(declare-fun lt!2438913 () Context!11902)

(declare-fun lt!2438916 () (InoxSet Context!11902))

(assert (=> b!6739479 (= (flatMap!2048 lt!2438916 lambda!378557) (derivationStepZipperUp!1721 lt!2438913 (h!72326 s!2326)))))

(declare-fun lt!2438901 () Unit!159825)

(assert (=> b!6739479 (= lt!2438901 (lemmaFlatMapOnSingletonSet!1574 lt!2438916 lt!2438913 lambda!378557))))

(declare-fun lt!2438915 () (InoxSet Context!11902))

(assert (=> b!6739479 (= lt!2438915 (derivationStepZipperUp!1721 lt!2438913 (h!72326 s!2326)))))

(assert (=> b!6739479 (= lt!2438916 (store ((as const (Array Context!11902 Bool)) false) lt!2438913 true))))

(assert (=> b!6739479 (= lt!2438913 (Context!11903 (Cons!65876 (reg!16896 r!7292) lt!2438918)))))

(assert (=> b!6739479 (= lt!2438918 (Cons!65876 r!7292 Nil!65876))))

(declare-fun res!2756832 () Bool)

(declare-fun e!4070907 () Bool)

(assert (=> start!653668 (=> (not res!2756832) (not e!4070907))))

(declare-fun validRegex!8303 (Regex!16567) Bool)

(assert (=> start!653668 (= res!2756832 (validRegex!8303 r!7292))))

(assert (=> start!653668 e!4070907))

(declare-fun e!4070908 () Bool)

(assert (=> start!653668 e!4070908))

(declare-fun condSetEmpty!46011 () Bool)

(declare-fun z!1189 () (InoxSet Context!11902))

(assert (=> start!653668 (= condSetEmpty!46011 (= z!1189 ((as const (Array Context!11902 Bool)) false)))))

(declare-fun setRes!46011 () Bool)

(assert (=> start!653668 setRes!46011))

(declare-fun e!4070905 () Bool)

(assert (=> start!653668 e!4070905))

(declare-fun e!4070912 () Bool)

(assert (=> start!653668 e!4070912))

(declare-fun b!6739480 () Bool)

(declare-fun res!2756837 () Bool)

(assert (=> b!6739480 (=> res!2756837 e!4070903)))

(declare-fun isEmpty!38217 (List!66001) Bool)

(assert (=> b!6739480 (= res!2756837 (not (isEmpty!38217 (t!379698 zl!343))))))

(declare-fun b!6739481 () Bool)

(assert (=> b!6739481 (= e!4070907 e!4070910)))

(declare-fun res!2756831 () Bool)

(assert (=> b!6739481 (=> (not res!2756831) (not e!4070910))))

(declare-fun lt!2438923 () Regex!16567)

(assert (=> b!6739481 (= res!2756831 (= r!7292 lt!2438923))))

(declare-fun unfocusZipper!2309 (List!66001) Regex!16567)

(assert (=> b!6739481 (= lt!2438923 (unfocusZipper!2309 zl!343))))

(declare-fun b!6739482 () Bool)

(declare-fun e!4070904 () Bool)

(declare-fun tp!1847653 () Bool)

(assert (=> b!6739482 (= e!4070904 tp!1847653)))

(declare-fun e!4070916 () Bool)

(assert (=> b!6739483 (= e!4070903 e!4070916)))

(declare-fun res!2756830 () Bool)

(assert (=> b!6739483 (=> res!2756830 e!4070916)))

(declare-fun e!4070913 () Bool)

(assert (=> b!6739483 (= res!2756830 (not (= lt!2438920 e!4070913)))))

(declare-fun res!2756835 () Bool)

(assert (=> b!6739483 (=> res!2756835 e!4070913)))

(declare-fun isEmpty!38218 (List!66002) Bool)

(assert (=> b!6739483 (= res!2756835 (isEmpty!38218 s!2326))))

(declare-fun Exists!3635 (Int) Bool)

(assert (=> b!6739483 (= (Exists!3635 lambda!378554) (Exists!3635 lambda!378556))))

(declare-fun lt!2438909 () Unit!159825)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2162 (Regex!16567 Regex!16567 List!66002) Unit!159825)

(assert (=> b!6739483 (= lt!2438909 (lemmaExistCutMatchRandMatchRSpecEquivalent!2162 (reg!16896 r!7292) r!7292 s!2326))))

(assert (=> b!6739483 (= (Exists!3635 lambda!378554) (Exists!3635 lambda!378555))))

(declare-fun lt!2438912 () Unit!159825)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!726 (Regex!16567 List!66002) Unit!159825)

(assert (=> b!6739483 (= lt!2438912 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!726 (reg!16896 r!7292) s!2326))))

(declare-fun lt!2438919 () Bool)

(assert (=> b!6739483 (= lt!2438919 (Exists!3635 lambda!378554))))

(declare-datatypes ((tuple2!67084 0))(
  ( (tuple2!67085 (_1!36845 List!66002) (_2!36845 List!66002)) )
))
(declare-datatypes ((Option!16454 0))(
  ( (None!16453) (Some!16453 (v!52653 tuple2!67084)) )
))
(declare-fun isDefined!13157 (Option!16454) Bool)

(declare-fun findConcatSeparation!2868 (Regex!16567 Regex!16567 List!66002 List!66002 List!66002) Option!16454)

(assert (=> b!6739483 (= lt!2438919 (isDefined!13157 (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 Nil!65878 s!2326 s!2326)))))

(declare-fun lt!2438902 () Unit!159825)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2632 (Regex!16567 Regex!16567 List!66002) Unit!159825)

(assert (=> b!6739483 (= lt!2438902 (lemmaFindConcatSeparationEquivalentToExists!2632 (reg!16896 r!7292) r!7292 s!2326))))

(declare-fun b!6739484 () Bool)

(declare-fun res!2756826 () Bool)

(assert (=> b!6739484 (=> res!2756826 e!4070903)))

(declare-fun generalisedUnion!2411 (List!66000) Regex!16567)

(declare-fun unfocusZipperList!1988 (List!66001) List!66000)

(assert (=> b!6739484 (= res!2756826 (not (= r!7292 (generalisedUnion!2411 (unfocusZipperList!1988 zl!343)))))))

(declare-fun b!6739485 () Bool)

(declare-fun tp!1847655 () Bool)

(declare-fun inv!84664 (Context!11902) Bool)

(assert (=> b!6739485 (= e!4070905 (and (inv!84664 (h!72325 zl!343)) e!4070904 tp!1847655))))

(declare-fun b!6739486 () Bool)

(declare-fun tp_is_empty!42387 () Bool)

(assert (=> b!6739486 (= e!4070908 tp_is_empty!42387)))

(declare-fun b!6739487 () Bool)

(declare-fun res!2756827 () Bool)

(assert (=> b!6739487 (=> (not res!2756827) (not e!4070907))))

(declare-fun toList!10351 ((InoxSet Context!11902)) List!66001)

(assert (=> b!6739487 (= res!2756827 (= (toList!10351 z!1189) zl!343))))

(declare-fun b!6739488 () Bool)

(declare-fun res!2756822 () Bool)

(assert (=> b!6739488 (=> res!2756822 e!4070916)))

(assert (=> b!6739488 (= res!2756822 ((_ is Nil!65878) s!2326))))

(declare-fun b!6739489 () Bool)

(declare-fun e!4070906 () Bool)

(assert (=> b!6739489 (= e!4070916 e!4070906)))

(declare-fun res!2756824 () Bool)

(assert (=> b!6739489 (=> res!2756824 e!4070906)))

(declare-fun lt!2438910 () (InoxSet Context!11902))

(declare-fun lt!2438921 () (InoxSet Context!11902))

(assert (=> b!6739489 (= res!2756824 (not (= lt!2438910 lt!2438921)))))

(assert (=> b!6739489 (= lt!2438921 (derivationStepZipperDown!1795 r!7292 (Context!11903 Nil!65876) (h!72326 s!2326)))))

(assert (=> b!6739489 (= lt!2438910 (derivationStepZipperUp!1721 (Context!11903 (Cons!65876 r!7292 Nil!65876)) (h!72326 s!2326)))))

(assert (=> b!6739489 (= lt!2438922 (derivationStepZipper!2511 z!1189 (h!72326 s!2326)))))

(declare-fun b!6739490 () Bool)

(declare-fun res!2756829 () Bool)

(assert (=> b!6739490 (=> res!2756829 e!4070903)))

(assert (=> b!6739490 (= res!2756829 (not ((_ is Cons!65876) (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6739491 () Bool)

(declare-fun tp!1847648 () Bool)

(declare-fun tp!1847656 () Bool)

(assert (=> b!6739491 (= e!4070908 (and tp!1847648 tp!1847656))))

(declare-fun b!6739492 () Bool)

(declare-fun res!2756828 () Bool)

(assert (=> b!6739492 (=> res!2756828 e!4070903)))

(declare-fun generalisedConcat!2164 (List!66000) Regex!16567)

(assert (=> b!6739492 (= res!2756828 (not (= r!7292 (generalisedConcat!2164 (exprs!6451 (h!72325 zl!343))))))))

(declare-fun b!6739493 () Bool)

(declare-fun tp!1847654 () Bool)

(declare-fun tp!1847650 () Bool)

(assert (=> b!6739493 (= e!4070908 (and tp!1847654 tp!1847650))))

(declare-fun b!6739494 () Bool)

(declare-fun e!4070915 () Bool)

(declare-fun tp!1847649 () Bool)

(assert (=> b!6739494 (= e!4070915 tp!1847649)))

(declare-fun b!6739495 () Bool)

(assert (=> b!6739495 (= e!4070913 lt!2438919)))

(declare-fun setNonEmpty!46011 () Bool)

(declare-fun tp!1847657 () Bool)

(declare-fun setElem!46011 () Context!11902)

(assert (=> setNonEmpty!46011 (= setRes!46011 (and tp!1847657 (inv!84664 setElem!46011) e!4070915))))

(declare-fun setRest!46011 () (InoxSet Context!11902))

(assert (=> setNonEmpty!46011 (= z!1189 ((_ map or) (store ((as const (Array Context!11902 Bool)) false) setElem!46011 true) setRest!46011))))

(declare-fun b!6739496 () Bool)

(assert (=> b!6739496 (= e!4070914 (inv!84664 lt!2438907))))

(declare-fun setIsEmpty!46011 () Bool)

(assert (=> setIsEmpty!46011 setRes!46011))

(declare-fun b!6739497 () Bool)

(declare-fun tp!1847652 () Bool)

(assert (=> b!6739497 (= e!4070908 tp!1847652)))

(declare-fun b!6739498 () Bool)

(declare-fun res!2756834 () Bool)

(assert (=> b!6739498 (=> res!2756834 e!4070909)))

(declare-fun matchZipper!2553 ((InoxSet Context!11902) List!66002) Bool)

(assert (=> b!6739498 (= res!2756834 (not (= (matchZipper!2553 lt!2438916 s!2326) (matchZipper!2553 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) (t!379699 s!2326)))))))

(assert (=> b!6739499 (= e!4070906 e!4070911)))

(declare-fun res!2756825 () Bool)

(assert (=> b!6739499 (=> res!2756825 e!4070911)))

(assert (=> b!6739499 (= res!2756825 (not (= lt!2438922 lt!2438921)))))

(assert (=> b!6739499 (= (flatMap!2048 z!1189 lambda!378557) (derivationStepZipperUp!1721 (h!72325 zl!343) (h!72326 s!2326)))))

(declare-fun lt!2438905 () Unit!159825)

(assert (=> b!6739499 (= lt!2438905 (lemmaFlatMapOnSingletonSet!1574 z!1189 (h!72325 zl!343) lambda!378557))))

(declare-fun b!6739500 () Bool)

(declare-fun res!2756823 () Bool)

(assert (=> b!6739500 (=> res!2756823 e!4070909)))

(assert (=> b!6739500 (= res!2756823 (not (= (unfocusZipper!2309 (Cons!65877 lt!2438913 Nil!65877)) (Concat!25412 (reg!16896 r!7292) r!7292))))))

(declare-fun b!6739501 () Bool)

(declare-fun tp!1847651 () Bool)

(assert (=> b!6739501 (= e!4070912 (and tp_is_empty!42387 tp!1847651))))

(declare-fun b!6739502 () Bool)

(declare-fun res!2756833 () Bool)

(assert (=> b!6739502 (=> res!2756833 e!4070903)))

(assert (=> b!6739502 (= res!2756833 (or ((_ is EmptyExpr!16567) r!7292) ((_ is EmptyLang!16567) r!7292) ((_ is ElementMatch!16567) r!7292) ((_ is Union!16567) r!7292) ((_ is Concat!25412) r!7292)))))

(declare-fun b!6739503 () Bool)

(declare-fun res!2756839 () Bool)

(assert (=> b!6739503 (=> res!2756839 e!4070909)))

(assert (=> b!6739503 (= res!2756839 (or (not (= lt!2438923 r!7292)) (not (= r!7292 r!7292))))))

(assert (= (and start!653668 res!2756832) b!6739487))

(assert (= (and b!6739487 res!2756827) b!6739481))

(assert (= (and b!6739481 res!2756831) b!6739477))

(assert (= (and b!6739477 (not res!2756838)) b!6739480))

(assert (= (and b!6739480 (not res!2756837)) b!6739492))

(assert (= (and b!6739492 (not res!2756828)) b!6739490))

(assert (= (and b!6739490 (not res!2756829)) b!6739484))

(assert (= (and b!6739484 (not res!2756826)) b!6739502))

(assert (= (and b!6739502 (not res!2756833)) b!6739483))

(assert (= (and b!6739483 (not res!2756835)) b!6739495))

(assert (= (and b!6739483 (not res!2756830)) b!6739488))

(assert (= (and b!6739488 (not res!2756822)) b!6739489))

(assert (= (and b!6739489 (not res!2756824)) b!6739499))

(assert (= (and b!6739499 (not res!2756825)) b!6739479))

(assert (= (and b!6739479 (not res!2756836)) b!6739498))

(assert (= (and b!6739498 (not res!2756834)) b!6739503))

(assert (= (and b!6739503 (not res!2756839)) b!6739500))

(assert (= (and b!6739500 (not res!2756823)) b!6739478))

(assert (= (and b!6739478 (not res!2756840)) b!6739496))

(assert (= (and start!653668 ((_ is ElementMatch!16567) r!7292)) b!6739486))

(assert (= (and start!653668 ((_ is Concat!25412) r!7292)) b!6739493))

(assert (= (and start!653668 ((_ is Star!16567) r!7292)) b!6739497))

(assert (= (and start!653668 ((_ is Union!16567) r!7292)) b!6739491))

(assert (= (and start!653668 condSetEmpty!46011) setIsEmpty!46011))

(assert (= (and start!653668 (not condSetEmpty!46011)) setNonEmpty!46011))

(assert (= setNonEmpty!46011 b!6739494))

(assert (= b!6739485 b!6739482))

(assert (= (and start!653668 ((_ is Cons!65877) zl!343)) b!6739485))

(assert (= (and start!653668 ((_ is Cons!65878) s!2326)) b!6739501))

(declare-fun m!7496252 () Bool)

(assert (=> b!6739496 m!7496252))

(declare-fun m!7496254 () Bool)

(assert (=> b!6739485 m!7496254))

(declare-fun m!7496256 () Bool)

(assert (=> b!6739498 m!7496256))

(declare-fun m!7496258 () Bool)

(assert (=> b!6739498 m!7496258))

(assert (=> b!6739498 m!7496258))

(declare-fun m!7496260 () Bool)

(assert (=> b!6739498 m!7496260))

(declare-fun m!7496262 () Bool)

(assert (=> b!6739489 m!7496262))

(declare-fun m!7496264 () Bool)

(assert (=> b!6739489 m!7496264))

(declare-fun m!7496266 () Bool)

(assert (=> b!6739489 m!7496266))

(declare-fun m!7496268 () Bool)

(assert (=> b!6739484 m!7496268))

(assert (=> b!6739484 m!7496268))

(declare-fun m!7496270 () Bool)

(assert (=> b!6739484 m!7496270))

(declare-fun m!7496272 () Bool)

(assert (=> b!6739477 m!7496272))

(declare-fun m!7496274 () Bool)

(assert (=> b!6739477 m!7496274))

(declare-fun m!7496276 () Bool)

(assert (=> b!6739477 m!7496276))

(declare-fun m!7496278 () Bool)

(assert (=> b!6739492 m!7496278))

(declare-fun m!7496280 () Bool)

(assert (=> start!653668 m!7496280))

(declare-fun m!7496282 () Bool)

(assert (=> b!6739500 m!7496282))

(declare-fun m!7496284 () Bool)

(assert (=> b!6739499 m!7496284))

(declare-fun m!7496286 () Bool)

(assert (=> b!6739499 m!7496286))

(declare-fun m!7496288 () Bool)

(assert (=> b!6739499 m!7496288))

(declare-fun m!7496290 () Bool)

(assert (=> b!6739481 m!7496290))

(declare-fun m!7496292 () Bool)

(assert (=> b!6739487 m!7496292))

(declare-fun m!7496294 () Bool)

(assert (=> b!6739479 m!7496294))

(declare-fun m!7496296 () Bool)

(assert (=> b!6739479 m!7496296))

(declare-fun m!7496298 () Bool)

(assert (=> b!6739479 m!7496298))

(declare-fun m!7496300 () Bool)

(assert (=> b!6739479 m!7496300))

(declare-fun m!7496302 () Bool)

(assert (=> b!6739479 m!7496302))

(declare-fun m!7496304 () Bool)

(assert (=> b!6739478 m!7496304))

(declare-fun m!7496306 () Bool)

(assert (=> b!6739478 m!7496306))

(declare-fun m!7496308 () Bool)

(assert (=> b!6739478 m!7496308))

(declare-fun m!7496310 () Bool)

(assert (=> b!6739478 m!7496310))

(declare-fun m!7496312 () Bool)

(assert (=> b!6739478 m!7496312))

(declare-fun m!7496314 () Bool)

(assert (=> b!6739478 m!7496314))

(declare-fun m!7496316 () Bool)

(assert (=> b!6739478 m!7496316))

(declare-fun m!7496318 () Bool)

(assert (=> b!6739478 m!7496318))

(declare-fun m!7496320 () Bool)

(assert (=> b!6739478 m!7496320))

(declare-fun m!7496322 () Bool)

(assert (=> b!6739483 m!7496322))

(declare-fun m!7496324 () Bool)

(assert (=> b!6739483 m!7496324))

(declare-fun m!7496326 () Bool)

(assert (=> b!6739483 m!7496326))

(declare-fun m!7496328 () Bool)

(assert (=> b!6739483 m!7496328))

(assert (=> b!6739483 m!7496322))

(assert (=> b!6739483 m!7496322))

(declare-fun m!7496330 () Bool)

(assert (=> b!6739483 m!7496330))

(declare-fun m!7496332 () Bool)

(assert (=> b!6739483 m!7496332))

(declare-fun m!7496334 () Bool)

(assert (=> b!6739483 m!7496334))

(assert (=> b!6739483 m!7496332))

(declare-fun m!7496336 () Bool)

(assert (=> b!6739483 m!7496336))

(declare-fun m!7496338 () Bool)

(assert (=> b!6739483 m!7496338))

(declare-fun m!7496340 () Bool)

(assert (=> b!6739480 m!7496340))

(declare-fun m!7496342 () Bool)

(assert (=> setNonEmpty!46011 m!7496342))

(check-sat (not start!653668) (not b!6739478) (not b!6739494) (not b!6739487) (not b!6739500) (not setNonEmpty!46011) (not b!6739498) (not b!6739484) (not b!6739489) (not b!6739499) (not b!6739485) tp_is_empty!42387 (not b!6739493) (not b!6739479) (not b!6739477) (not b!6739482) (not b!6739480) (not b!6739496) (not b!6739492) (not b!6739497) (not b!6739483) (not b!6739481) (not b!6739491) (not b!6739501))
(check-sat)
(get-model)

(declare-fun d!2117503 () Bool)

(declare-fun isEmpty!38221 (Option!16454) Bool)

(assert (=> d!2117503 (= (isDefined!13157 (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 Nil!65878 s!2326 s!2326)) (not (isEmpty!38221 (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 Nil!65878 s!2326 s!2326))))))

(declare-fun bs!1792038 () Bool)

(assert (= bs!1792038 d!2117503))

(assert (=> bs!1792038 m!7496332))

(declare-fun m!7496364 () Bool)

(assert (=> bs!1792038 m!7496364))

(assert (=> b!6739483 d!2117503))

(declare-fun bs!1792043 () Bool)

(declare-fun d!2117509 () Bool)

(assert (= bs!1792043 (and d!2117509 b!6739483)))

(declare-fun lambda!378571 () Int)

(assert (=> bs!1792043 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378571 lambda!378554))))

(assert (=> bs!1792043 (not (= lambda!378571 lambda!378555))))

(assert (=> bs!1792043 (not (= lambda!378571 lambda!378556))))

(assert (=> d!2117509 true))

(assert (=> d!2117509 true))

(declare-fun lambda!378572 () Int)

(assert (=> bs!1792043 (not (= lambda!378572 lambda!378554))))

(assert (=> bs!1792043 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378572 lambda!378555))))

(assert (=> bs!1792043 (not (= lambda!378572 lambda!378556))))

(declare-fun bs!1792044 () Bool)

(assert (= bs!1792044 d!2117509))

(assert (=> bs!1792044 (not (= lambda!378572 lambda!378571))))

(assert (=> d!2117509 true))

(assert (=> d!2117509 true))

(assert (=> d!2117509 (= (Exists!3635 lambda!378571) (Exists!3635 lambda!378572))))

(declare-fun lt!2438939 () Unit!159825)

(declare-fun choose!50241 (Regex!16567 List!66002) Unit!159825)

(assert (=> d!2117509 (= lt!2438939 (choose!50241 (reg!16896 r!7292) s!2326))))

(assert (=> d!2117509 (validRegex!8303 (reg!16896 r!7292))))

(assert (=> d!2117509 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!726 (reg!16896 r!7292) s!2326) lt!2438939)))

(declare-fun m!7496390 () Bool)

(assert (=> bs!1792044 m!7496390))

(declare-fun m!7496392 () Bool)

(assert (=> bs!1792044 m!7496392))

(declare-fun m!7496394 () Bool)

(assert (=> bs!1792044 m!7496394))

(declare-fun m!7496396 () Bool)

(assert (=> bs!1792044 m!7496396))

(assert (=> b!6739483 d!2117509))

(declare-fun d!2117523 () Bool)

(declare-fun choose!50242 (Int) Bool)

(assert (=> d!2117523 (= (Exists!3635 lambda!378554) (choose!50242 lambda!378554))))

(declare-fun bs!1792045 () Bool)

(assert (= bs!1792045 d!2117523))

(declare-fun m!7496398 () Bool)

(assert (=> bs!1792045 m!7496398))

(assert (=> b!6739483 d!2117523))

(declare-fun d!2117525 () Bool)

(assert (=> d!2117525 (= (Exists!3635 lambda!378555) (choose!50242 lambda!378555))))

(declare-fun bs!1792046 () Bool)

(assert (= bs!1792046 d!2117525))

(declare-fun m!7496400 () Bool)

(assert (=> bs!1792046 m!7496400))

(assert (=> b!6739483 d!2117525))

(declare-fun d!2117527 () Bool)

(assert (=> d!2117527 (= (isEmpty!38218 s!2326) ((_ is Nil!65878) s!2326))))

(assert (=> b!6739483 d!2117527))

(declare-fun bs!1792054 () Bool)

(declare-fun d!2117529 () Bool)

(assert (= bs!1792054 (and d!2117529 b!6739483)))

(declare-fun lambda!378587 () Int)

(assert (=> bs!1792054 (= lambda!378587 lambda!378554)))

(declare-fun bs!1792055 () Bool)

(assert (= bs!1792055 (and d!2117529 d!2117509)))

(assert (=> bs!1792055 (not (= lambda!378587 lambda!378572))))

(assert (=> bs!1792054 (not (= lambda!378587 lambda!378555))))

(assert (=> bs!1792054 (not (= lambda!378587 lambda!378556))))

(assert (=> bs!1792055 (= (= r!7292 (Star!16567 (reg!16896 r!7292))) (= lambda!378587 lambda!378571))))

(assert (=> d!2117529 true))

(assert (=> d!2117529 true))

(assert (=> d!2117529 true))

(declare-fun bs!1792060 () Bool)

(assert (= bs!1792060 d!2117529))

(declare-fun lambda!378590 () Int)

(assert (=> bs!1792060 (not (= lambda!378590 lambda!378587))))

(assert (=> bs!1792054 (not (= lambda!378590 lambda!378554))))

(assert (=> bs!1792055 (not (= lambda!378590 lambda!378572))))

(assert (=> bs!1792054 (not (= lambda!378590 lambda!378555))))

(assert (=> bs!1792054 (= lambda!378590 lambda!378556)))

(assert (=> bs!1792055 (not (= lambda!378590 lambda!378571))))

(assert (=> d!2117529 true))

(assert (=> d!2117529 true))

(assert (=> d!2117529 true))

(assert (=> d!2117529 (= (Exists!3635 lambda!378587) (Exists!3635 lambda!378590))))

(declare-fun lt!2438952 () Unit!159825)

(declare-fun choose!50244 (Regex!16567 Regex!16567 List!66002) Unit!159825)

(assert (=> d!2117529 (= lt!2438952 (choose!50244 (reg!16896 r!7292) r!7292 s!2326))))

(assert (=> d!2117529 (validRegex!8303 (reg!16896 r!7292))))

(assert (=> d!2117529 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2162 (reg!16896 r!7292) r!7292 s!2326) lt!2438952)))

(declare-fun m!7496478 () Bool)

(assert (=> bs!1792060 m!7496478))

(declare-fun m!7496480 () Bool)

(assert (=> bs!1792060 m!7496480))

(declare-fun m!7496482 () Bool)

(assert (=> bs!1792060 m!7496482))

(assert (=> bs!1792060 m!7496396))

(assert (=> b!6739483 d!2117529))

(declare-fun d!2117553 () Bool)

(assert (=> d!2117553 (= (Exists!3635 lambda!378556) (choose!50242 lambda!378556))))

(declare-fun bs!1792061 () Bool)

(assert (= bs!1792061 d!2117553))

(declare-fun m!7496484 () Bool)

(assert (=> bs!1792061 m!7496484))

(assert (=> b!6739483 d!2117553))

(declare-fun b!6739763 () Bool)

(declare-fun lt!2438969 () Unit!159825)

(declare-fun lt!2438970 () Unit!159825)

(assert (=> b!6739763 (= lt!2438969 lt!2438970)))

(declare-fun ++!14723 (List!66002 List!66002) List!66002)

(assert (=> b!6739763 (= (++!14723 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (t!379699 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2696 (List!66002 C!33404 List!66002 List!66002) Unit!159825)

(assert (=> b!6739763 (= lt!2438970 (lemmaMoveElementToOtherListKeepsConcatEq!2696 Nil!65878 (h!72326 s!2326) (t!379699 s!2326) s!2326))))

(declare-fun e!4071054 () Option!16454)

(assert (=> b!6739763 (= e!4071054 (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (t!379699 s!2326) s!2326))))

(declare-fun b!6739764 () Bool)

(assert (=> b!6739764 (= e!4071054 None!16453)))

(declare-fun b!6739765 () Bool)

(declare-fun e!4071056 () Option!16454)

(assert (=> b!6739765 (= e!4071056 (Some!16453 (tuple2!67085 Nil!65878 s!2326)))))

(declare-fun b!6739766 () Bool)

(declare-fun e!4071058 () Bool)

(declare-fun lt!2438971 () Option!16454)

(declare-fun get!22922 (Option!16454) tuple2!67084)

(assert (=> b!6739766 (= e!4071058 (= (++!14723 (_1!36845 (get!22922 lt!2438971)) (_2!36845 (get!22922 lt!2438971))) s!2326))))

(declare-fun b!6739767 () Bool)

(assert (=> b!6739767 (= e!4071056 e!4071054)))

(declare-fun c!1250165 () Bool)

(assert (=> b!6739767 (= c!1250165 ((_ is Nil!65878) s!2326))))

(declare-fun b!6739768 () Bool)

(declare-fun res!2756959 () Bool)

(assert (=> b!6739768 (=> (not res!2756959) (not e!4071058))))

(assert (=> b!6739768 (= res!2756959 (matchR!8750 (reg!16896 r!7292) (_1!36845 (get!22922 lt!2438971))))))

(declare-fun b!6739770 () Bool)

(declare-fun e!4071055 () Bool)

(assert (=> b!6739770 (= e!4071055 (matchR!8750 r!7292 s!2326))))

(declare-fun b!6739771 () Bool)

(declare-fun e!4071057 () Bool)

(assert (=> b!6739771 (= e!4071057 (not (isDefined!13157 lt!2438971)))))

(declare-fun d!2117555 () Bool)

(assert (=> d!2117555 e!4071057))

(declare-fun res!2756960 () Bool)

(assert (=> d!2117555 (=> res!2756960 e!4071057)))

(assert (=> d!2117555 (= res!2756960 e!4071058)))

(declare-fun res!2756956 () Bool)

(assert (=> d!2117555 (=> (not res!2756956) (not e!4071058))))

(assert (=> d!2117555 (= res!2756956 (isDefined!13157 lt!2438971))))

(assert (=> d!2117555 (= lt!2438971 e!4071056)))

(declare-fun c!1250164 () Bool)

(assert (=> d!2117555 (= c!1250164 e!4071055)))

(declare-fun res!2756958 () Bool)

(assert (=> d!2117555 (=> (not res!2756958) (not e!4071055))))

(assert (=> d!2117555 (= res!2756958 (matchR!8750 (reg!16896 r!7292) Nil!65878))))

(assert (=> d!2117555 (validRegex!8303 (reg!16896 r!7292))))

(assert (=> d!2117555 (= (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 Nil!65878 s!2326 s!2326) lt!2438971)))

(declare-fun b!6739769 () Bool)

(declare-fun res!2756957 () Bool)

(assert (=> b!6739769 (=> (not res!2756957) (not e!4071058))))

(assert (=> b!6739769 (= res!2756957 (matchR!8750 r!7292 (_2!36845 (get!22922 lt!2438971))))))

(assert (= (and d!2117555 res!2756958) b!6739770))

(assert (= (and d!2117555 c!1250164) b!6739765))

(assert (= (and d!2117555 (not c!1250164)) b!6739767))

(assert (= (and b!6739767 c!1250165) b!6739764))

(assert (= (and b!6739767 (not c!1250165)) b!6739763))

(assert (= (and d!2117555 res!2756956) b!6739768))

(assert (= (and b!6739768 res!2756959) b!6739769))

(assert (= (and b!6739769 res!2756957) b!6739766))

(assert (= (and d!2117555 (not res!2756960)) b!6739771))

(declare-fun m!7496498 () Bool)

(assert (=> b!6739768 m!7496498))

(declare-fun m!7496500 () Bool)

(assert (=> b!6739768 m!7496500))

(assert (=> b!6739769 m!7496498))

(declare-fun m!7496502 () Bool)

(assert (=> b!6739769 m!7496502))

(assert (=> b!6739770 m!7496274))

(assert (=> b!6739766 m!7496498))

(declare-fun m!7496504 () Bool)

(assert (=> b!6739766 m!7496504))

(declare-fun m!7496506 () Bool)

(assert (=> b!6739771 m!7496506))

(assert (=> d!2117555 m!7496506))

(declare-fun m!7496508 () Bool)

(assert (=> d!2117555 m!7496508))

(assert (=> d!2117555 m!7496396))

(declare-fun m!7496512 () Bool)

(assert (=> b!6739763 m!7496512))

(assert (=> b!6739763 m!7496512))

(declare-fun m!7496518 () Bool)

(assert (=> b!6739763 m!7496518))

(declare-fun m!7496522 () Bool)

(assert (=> b!6739763 m!7496522))

(assert (=> b!6739763 m!7496512))

(declare-fun m!7496528 () Bool)

(assert (=> b!6739763 m!7496528))

(assert (=> b!6739483 d!2117555))

(declare-fun bs!1792083 () Bool)

(declare-fun d!2117567 () Bool)

(assert (= bs!1792083 (and d!2117567 d!2117529)))

(declare-fun lambda!378603 () Int)

(assert (=> bs!1792083 (= lambda!378603 lambda!378587)))

(declare-fun bs!1792084 () Bool)

(assert (= bs!1792084 (and d!2117567 b!6739483)))

(assert (=> bs!1792084 (= lambda!378603 lambda!378554)))

(declare-fun bs!1792085 () Bool)

(assert (= bs!1792085 (and d!2117567 d!2117509)))

(assert (=> bs!1792085 (not (= lambda!378603 lambda!378572))))

(assert (=> bs!1792084 (not (= lambda!378603 lambda!378555))))

(assert (=> bs!1792084 (not (= lambda!378603 lambda!378556))))

(assert (=> bs!1792085 (= (= r!7292 (Star!16567 (reg!16896 r!7292))) (= lambda!378603 lambda!378571))))

(assert (=> bs!1792083 (not (= lambda!378603 lambda!378590))))

(assert (=> d!2117567 true))

(assert (=> d!2117567 true))

(assert (=> d!2117567 true))

(assert (=> d!2117567 (= (isDefined!13157 (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 Nil!65878 s!2326 s!2326)) (Exists!3635 lambda!378603))))

(declare-fun lt!2438982 () Unit!159825)

(declare-fun choose!50245 (Regex!16567 Regex!16567 List!66002) Unit!159825)

(assert (=> d!2117567 (= lt!2438982 (choose!50245 (reg!16896 r!7292) r!7292 s!2326))))

(assert (=> d!2117567 (validRegex!8303 (reg!16896 r!7292))))

(assert (=> d!2117567 (= (lemmaFindConcatSeparationEquivalentToExists!2632 (reg!16896 r!7292) r!7292 s!2326) lt!2438982)))

(declare-fun bs!1792086 () Bool)

(assert (= bs!1792086 d!2117567))

(assert (=> bs!1792086 m!7496396))

(declare-fun m!7496568 () Bool)

(assert (=> bs!1792086 m!7496568))

(assert (=> bs!1792086 m!7496332))

(assert (=> bs!1792086 m!7496332))

(assert (=> bs!1792086 m!7496336))

(declare-fun m!7496570 () Bool)

(assert (=> bs!1792086 m!7496570))

(assert (=> b!6739483 d!2117567))

(declare-fun b!6739882 () Bool)

(declare-fun e!4071131 () Regex!16567)

(assert (=> b!6739882 (= e!4071131 (Concat!25412 (h!72324 (exprs!6451 (h!72325 zl!343))) (generalisedConcat!2164 (t!379697 (exprs!6451 (h!72325 zl!343))))))))

(declare-fun b!6739883 () Bool)

(assert (=> b!6739883 (= e!4071131 EmptyExpr!16567)))

(declare-fun b!6739884 () Bool)

(declare-fun e!4071130 () Bool)

(declare-fun isEmpty!38222 (List!66000) Bool)

(assert (=> b!6739884 (= e!4071130 (isEmpty!38222 (t!379697 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun d!2117587 () Bool)

(declare-fun e!4071133 () Bool)

(assert (=> d!2117587 e!4071133))

(declare-fun res!2757002 () Bool)

(assert (=> d!2117587 (=> (not res!2757002) (not e!4071133))))

(declare-fun lt!2438987 () Regex!16567)

(assert (=> d!2117587 (= res!2757002 (validRegex!8303 lt!2438987))))

(declare-fun e!4071132 () Regex!16567)

(assert (=> d!2117587 (= lt!2438987 e!4071132)))

(declare-fun c!1250201 () Bool)

(assert (=> d!2117587 (= c!1250201 e!4071130)))

(declare-fun res!2757001 () Bool)

(assert (=> d!2117587 (=> (not res!2757001) (not e!4071130))))

(assert (=> d!2117587 (= res!2757001 ((_ is Cons!65876) (exprs!6451 (h!72325 zl!343))))))

(declare-fun lambda!378610 () Int)

(declare-fun forall!15767 (List!66000 Int) Bool)

(assert (=> d!2117587 (forall!15767 (exprs!6451 (h!72325 zl!343)) lambda!378610)))

(assert (=> d!2117587 (= (generalisedConcat!2164 (exprs!6451 (h!72325 zl!343))) lt!2438987)))

(declare-fun b!6739885 () Bool)

(declare-fun e!4071128 () Bool)

(assert (=> b!6739885 (= e!4071133 e!4071128)))

(declare-fun c!1250204 () Bool)

(assert (=> b!6739885 (= c!1250204 (isEmpty!38222 (exprs!6451 (h!72325 zl!343))))))

(declare-fun b!6739886 () Bool)

(assert (=> b!6739886 (= e!4071132 e!4071131)))

(declare-fun c!1250202 () Bool)

(assert (=> b!6739886 (= c!1250202 ((_ is Cons!65876) (exprs!6451 (h!72325 zl!343))))))

(declare-fun b!6739887 () Bool)

(declare-fun e!4071129 () Bool)

(declare-fun head!13561 (List!66000) Regex!16567)

(assert (=> b!6739887 (= e!4071129 (= lt!2438987 (head!13561 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6739888 () Bool)

(declare-fun isConcat!1456 (Regex!16567) Bool)

(assert (=> b!6739888 (= e!4071129 (isConcat!1456 lt!2438987))))

(declare-fun b!6739889 () Bool)

(assert (=> b!6739889 (= e!4071132 (h!72324 (exprs!6451 (h!72325 zl!343))))))

(declare-fun b!6739890 () Bool)

(assert (=> b!6739890 (= e!4071128 e!4071129)))

(declare-fun c!1250203 () Bool)

(declare-fun tail!12646 (List!66000) List!66000)

(assert (=> b!6739890 (= c!1250203 (isEmpty!38222 (tail!12646 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6739891 () Bool)

(declare-fun isEmptyExpr!1933 (Regex!16567) Bool)

(assert (=> b!6739891 (= e!4071128 (isEmptyExpr!1933 lt!2438987))))

(assert (= (and d!2117587 res!2757001) b!6739884))

(assert (= (and d!2117587 c!1250201) b!6739889))

(assert (= (and d!2117587 (not c!1250201)) b!6739886))

(assert (= (and b!6739886 c!1250202) b!6739882))

(assert (= (and b!6739886 (not c!1250202)) b!6739883))

(assert (= (and d!2117587 res!2757002) b!6739885))

(assert (= (and b!6739885 c!1250204) b!6739891))

(assert (= (and b!6739885 (not c!1250204)) b!6739890))

(assert (= (and b!6739890 c!1250203) b!6739887))

(assert (= (and b!6739890 (not c!1250203)) b!6739888))

(declare-fun m!7496598 () Bool)

(assert (=> b!6739890 m!7496598))

(assert (=> b!6739890 m!7496598))

(declare-fun m!7496600 () Bool)

(assert (=> b!6739890 m!7496600))

(declare-fun m!7496602 () Bool)

(assert (=> b!6739884 m!7496602))

(declare-fun m!7496604 () Bool)

(assert (=> b!6739887 m!7496604))

(declare-fun m!7496606 () Bool)

(assert (=> d!2117587 m!7496606))

(declare-fun m!7496608 () Bool)

(assert (=> d!2117587 m!7496608))

(declare-fun m!7496610 () Bool)

(assert (=> b!6739882 m!7496610))

(declare-fun m!7496612 () Bool)

(assert (=> b!6739891 m!7496612))

(declare-fun m!7496614 () Bool)

(assert (=> b!6739885 m!7496614))

(declare-fun m!7496616 () Bool)

(assert (=> b!6739888 m!7496616))

(assert (=> b!6739492 d!2117587))

(declare-fun bs!1792097 () Bool)

(declare-fun d!2117599 () Bool)

(assert (= bs!1792097 (and d!2117599 d!2117587)))

(declare-fun lambda!378614 () Int)

(assert (=> bs!1792097 (= lambda!378614 lambda!378610)))

(assert (=> d!2117599 (= (inv!84664 lt!2438907) (forall!15767 (exprs!6451 lt!2438907) lambda!378614))))

(declare-fun bs!1792098 () Bool)

(assert (= bs!1792098 d!2117599))

(declare-fun m!7496638 () Bool)

(assert (=> bs!1792098 m!7496638))

(assert (=> b!6739496 d!2117599))

(declare-fun bs!1792099 () Bool)

(declare-fun d!2117603 () Bool)

(assert (= bs!1792099 (and d!2117603 d!2117587)))

(declare-fun lambda!378615 () Int)

(assert (=> bs!1792099 (= lambda!378615 lambda!378610)))

(declare-fun bs!1792100 () Bool)

(assert (= bs!1792100 (and d!2117603 d!2117599)))

(assert (=> bs!1792100 (= lambda!378615 lambda!378614)))

(assert (=> d!2117603 (= (inv!84664 setElem!46011) (forall!15767 (exprs!6451 setElem!46011) lambda!378615))))

(declare-fun bs!1792101 () Bool)

(assert (= bs!1792101 d!2117603))

(declare-fun m!7496640 () Bool)

(assert (=> bs!1792101 m!7496640))

(assert (=> setNonEmpty!46011 d!2117603))

(declare-fun bs!1792102 () Bool)

(declare-fun d!2117605 () Bool)

(assert (= bs!1792102 (and d!2117605 d!2117587)))

(declare-fun lambda!378616 () Int)

(assert (=> bs!1792102 (= lambda!378616 lambda!378610)))

(declare-fun bs!1792103 () Bool)

(assert (= bs!1792103 (and d!2117605 d!2117599)))

(assert (=> bs!1792103 (= lambda!378616 lambda!378614)))

(declare-fun bs!1792104 () Bool)

(assert (= bs!1792104 (and d!2117605 d!2117603)))

(assert (=> bs!1792104 (= lambda!378616 lambda!378615)))

(assert (=> d!2117605 (= (inv!84664 (h!72325 zl!343)) (forall!15767 (exprs!6451 (h!72325 zl!343)) lambda!378616))))

(declare-fun bs!1792105 () Bool)

(assert (= bs!1792105 d!2117605))

(declare-fun m!7496642 () Bool)

(assert (=> bs!1792105 m!7496642))

(assert (=> b!6739485 d!2117605))

(declare-fun bs!1792116 () Bool)

(declare-fun d!2117607 () Bool)

(assert (= bs!1792116 (and d!2117607 d!2117587)))

(declare-fun lambda!378623 () Int)

(assert (=> bs!1792116 (= lambda!378623 lambda!378610)))

(declare-fun bs!1792117 () Bool)

(assert (= bs!1792117 (and d!2117607 d!2117599)))

(assert (=> bs!1792117 (= lambda!378623 lambda!378614)))

(declare-fun bs!1792118 () Bool)

(assert (= bs!1792118 (and d!2117607 d!2117603)))

(assert (=> bs!1792118 (= lambda!378623 lambda!378615)))

(declare-fun bs!1792119 () Bool)

(assert (= bs!1792119 (and d!2117607 d!2117605)))

(assert (=> bs!1792119 (= lambda!378623 lambda!378616)))

(declare-fun b!6739978 () Bool)

(declare-fun e!4071176 () Bool)

(declare-fun lt!2438994 () Regex!16567)

(declare-fun isUnion!1370 (Regex!16567) Bool)

(assert (=> b!6739978 (= e!4071176 (isUnion!1370 lt!2438994))))

(declare-fun b!6739979 () Bool)

(declare-fun e!4071182 () Regex!16567)

(declare-fun e!4071181 () Regex!16567)

(assert (=> b!6739979 (= e!4071182 e!4071181)))

(declare-fun c!1250223 () Bool)

(assert (=> b!6739979 (= c!1250223 ((_ is Cons!65876) (unfocusZipperList!1988 zl!343)))))

(declare-fun b!6739980 () Bool)

(declare-fun e!4071177 () Bool)

(declare-fun isEmptyLang!1940 (Regex!16567) Bool)

(assert (=> b!6739980 (= e!4071177 (isEmptyLang!1940 lt!2438994))))

(declare-fun b!6739981 () Bool)

(declare-fun e!4071179 () Bool)

(assert (=> b!6739981 (= e!4071179 (isEmpty!38222 (t!379697 (unfocusZipperList!1988 zl!343))))))

(declare-fun b!6739982 () Bool)

(assert (=> b!6739982 (= e!4071182 (h!72324 (unfocusZipperList!1988 zl!343)))))

(declare-fun e!4071180 () Bool)

(assert (=> d!2117607 e!4071180))

(declare-fun res!2757009 () Bool)

(assert (=> d!2117607 (=> (not res!2757009) (not e!4071180))))

(assert (=> d!2117607 (= res!2757009 (validRegex!8303 lt!2438994))))

(assert (=> d!2117607 (= lt!2438994 e!4071182)))

(declare-fun c!1250220 () Bool)

(assert (=> d!2117607 (= c!1250220 e!4071179)))

(declare-fun res!2757010 () Bool)

(assert (=> d!2117607 (=> (not res!2757010) (not e!4071179))))

(assert (=> d!2117607 (= res!2757010 ((_ is Cons!65876) (unfocusZipperList!1988 zl!343)))))

(assert (=> d!2117607 (forall!15767 (unfocusZipperList!1988 zl!343) lambda!378623)))

(assert (=> d!2117607 (= (generalisedUnion!2411 (unfocusZipperList!1988 zl!343)) lt!2438994)))

(declare-fun b!6739983 () Bool)

(assert (=> b!6739983 (= e!4071181 (Union!16567 (h!72324 (unfocusZipperList!1988 zl!343)) (generalisedUnion!2411 (t!379697 (unfocusZipperList!1988 zl!343)))))))

(declare-fun b!6739984 () Bool)

(assert (=> b!6739984 (= e!4071180 e!4071177)))

(declare-fun c!1250221 () Bool)

(assert (=> b!6739984 (= c!1250221 (isEmpty!38222 (unfocusZipperList!1988 zl!343)))))

(declare-fun b!6739985 () Bool)

(assert (=> b!6739985 (= e!4071181 EmptyLang!16567)))

(declare-fun b!6739986 () Bool)

(assert (=> b!6739986 (= e!4071177 e!4071176)))

(declare-fun c!1250222 () Bool)

(assert (=> b!6739986 (= c!1250222 (isEmpty!38222 (tail!12646 (unfocusZipperList!1988 zl!343))))))

(declare-fun b!6739987 () Bool)

(assert (=> b!6739987 (= e!4071176 (= lt!2438994 (head!13561 (unfocusZipperList!1988 zl!343))))))

(assert (= (and d!2117607 res!2757010) b!6739981))

(assert (= (and d!2117607 c!1250220) b!6739982))

(assert (= (and d!2117607 (not c!1250220)) b!6739979))

(assert (= (and b!6739979 c!1250223) b!6739983))

(assert (= (and b!6739979 (not c!1250223)) b!6739985))

(assert (= (and d!2117607 res!2757009) b!6739984))

(assert (= (and b!6739984 c!1250221) b!6739980))

(assert (= (and b!6739984 (not c!1250221)) b!6739986))

(assert (= (and b!6739986 c!1250222) b!6739987))

(assert (= (and b!6739986 (not c!1250222)) b!6739978))

(declare-fun m!7496654 () Bool)

(assert (=> b!6739978 m!7496654))

(declare-fun m!7496656 () Bool)

(assert (=> d!2117607 m!7496656))

(assert (=> d!2117607 m!7496268))

(declare-fun m!7496658 () Bool)

(assert (=> d!2117607 m!7496658))

(assert (=> b!6739984 m!7496268))

(declare-fun m!7496660 () Bool)

(assert (=> b!6739984 m!7496660))

(declare-fun m!7496662 () Bool)

(assert (=> b!6739983 m!7496662))

(assert (=> b!6739986 m!7496268))

(declare-fun m!7496664 () Bool)

(assert (=> b!6739986 m!7496664))

(assert (=> b!6739986 m!7496664))

(declare-fun m!7496666 () Bool)

(assert (=> b!6739986 m!7496666))

(declare-fun m!7496668 () Bool)

(assert (=> b!6739981 m!7496668))

(assert (=> b!6739987 m!7496268))

(declare-fun m!7496670 () Bool)

(assert (=> b!6739987 m!7496670))

(declare-fun m!7496672 () Bool)

(assert (=> b!6739980 m!7496672))

(assert (=> b!6739484 d!2117607))

(declare-fun bs!1792124 () Bool)

(declare-fun d!2117619 () Bool)

(assert (= bs!1792124 (and d!2117619 d!2117587)))

(declare-fun lambda!378626 () Int)

(assert (=> bs!1792124 (= lambda!378626 lambda!378610)))

(declare-fun bs!1792125 () Bool)

(assert (= bs!1792125 (and d!2117619 d!2117607)))

(assert (=> bs!1792125 (= lambda!378626 lambda!378623)))

(declare-fun bs!1792126 () Bool)

(assert (= bs!1792126 (and d!2117619 d!2117605)))

(assert (=> bs!1792126 (= lambda!378626 lambda!378616)))

(declare-fun bs!1792127 () Bool)

(assert (= bs!1792127 (and d!2117619 d!2117603)))

(assert (=> bs!1792127 (= lambda!378626 lambda!378615)))

(declare-fun bs!1792128 () Bool)

(assert (= bs!1792128 (and d!2117619 d!2117599)))

(assert (=> bs!1792128 (= lambda!378626 lambda!378614)))

(declare-fun lt!2438997 () List!66000)

(assert (=> d!2117619 (forall!15767 lt!2438997 lambda!378626)))

(declare-fun e!4071186 () List!66000)

(assert (=> d!2117619 (= lt!2438997 e!4071186)))

(declare-fun c!1250226 () Bool)

(assert (=> d!2117619 (= c!1250226 ((_ is Cons!65877) zl!343))))

(assert (=> d!2117619 (= (unfocusZipperList!1988 zl!343) lt!2438997)))

(declare-fun b!6739996 () Bool)

(assert (=> b!6739996 (= e!4071186 (Cons!65876 (generalisedConcat!2164 (exprs!6451 (h!72325 zl!343))) (unfocusZipperList!1988 (t!379698 zl!343))))))

(declare-fun b!6739997 () Bool)

(assert (=> b!6739997 (= e!4071186 Nil!65876)))

(assert (= (and d!2117619 c!1250226) b!6739996))

(assert (= (and d!2117619 (not c!1250226)) b!6739997))

(declare-fun m!7496674 () Bool)

(assert (=> d!2117619 m!7496674))

(assert (=> b!6739996 m!7496278))

(declare-fun m!7496676 () Bool)

(assert (=> b!6739996 m!7496676))

(assert (=> b!6739484 d!2117619))

(declare-fun b!6740020 () Bool)

(declare-fun c!1250241 () Bool)

(assert (=> b!6740020 (= c!1250241 ((_ is Star!16567) r!7292))))

(declare-fun e!4071204 () (InoxSet Context!11902))

(declare-fun e!4071199 () (InoxSet Context!11902))

(assert (=> b!6740020 (= e!4071204 e!4071199)))

(declare-fun b!6740021 () Bool)

(declare-fun e!4071200 () (InoxSet Context!11902))

(declare-fun call!609205 () (InoxSet Context!11902))

(declare-fun call!609202 () (InoxSet Context!11902))

(assert (=> b!6740021 (= e!4071200 ((_ map or) call!609205 call!609202))))

(declare-fun b!6740022 () Bool)

(declare-fun e!4071202 () Bool)

(declare-fun nullable!6554 (Regex!16567) Bool)

(assert (=> b!6740022 (= e!4071202 (nullable!6554 (regOne!33646 r!7292)))))

(declare-fun d!2117621 () Bool)

(declare-fun c!1250237 () Bool)

(assert (=> d!2117621 (= c!1250237 (and ((_ is ElementMatch!16567) r!7292) (= (c!1250093 r!7292) (h!72326 s!2326))))))

(declare-fun e!4071203 () (InoxSet Context!11902))

(assert (=> d!2117621 (= (derivationStepZipperDown!1795 r!7292 (Context!11903 Nil!65876) (h!72326 s!2326)) e!4071203)))

(declare-fun bm!609196 () Bool)

(declare-fun call!609201 () List!66000)

(declare-fun call!609204 () List!66000)

(assert (=> bm!609196 (= call!609201 call!609204)))

(declare-fun b!6740023 () Bool)

(declare-fun e!4071201 () (InoxSet Context!11902))

(assert (=> b!6740023 (= e!4071203 e!4071201)))

(declare-fun c!1250239 () Bool)

(assert (=> b!6740023 (= c!1250239 ((_ is Union!16567) r!7292))))

(declare-fun b!6740024 () Bool)

(assert (=> b!6740024 (= e!4071200 e!4071204)))

(declare-fun c!1250238 () Bool)

(assert (=> b!6740024 (= c!1250238 ((_ is Concat!25412) r!7292))))

(declare-fun b!6740025 () Bool)

(declare-fun call!609203 () (InoxSet Context!11902))

(assert (=> b!6740025 (= e!4071204 call!609203)))

(declare-fun c!1250240 () Bool)

(declare-fun bm!609197 () Bool)

(declare-fun $colon$colon!2384 (List!66000 Regex!16567) List!66000)

(assert (=> bm!609197 (= call!609204 ($colon$colon!2384 (exprs!6451 (Context!11903 Nil!65876)) (ite (or c!1250240 c!1250238) (regTwo!33646 r!7292) r!7292)))))

(declare-fun b!6740026 () Bool)

(declare-fun call!609206 () (InoxSet Context!11902))

(assert (=> b!6740026 (= e!4071201 ((_ map or) call!609206 call!609205))))

(declare-fun bm!609198 () Bool)

(assert (=> bm!609198 (= call!609203 call!609202)))

(declare-fun bm!609199 () Bool)

(assert (=> bm!609199 (= call!609206 (derivationStepZipperDown!1795 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292)))) (ite (or c!1250239 c!1250240) (Context!11903 Nil!65876) (Context!11903 call!609201)) (h!72326 s!2326)))))

(declare-fun b!6740027 () Bool)

(assert (=> b!6740027 (= e!4071199 call!609203)))

(declare-fun b!6740028 () Bool)

(assert (=> b!6740028 (= c!1250240 e!4071202)))

(declare-fun res!2757013 () Bool)

(assert (=> b!6740028 (=> (not res!2757013) (not e!4071202))))

(assert (=> b!6740028 (= res!2757013 ((_ is Concat!25412) r!7292))))

(assert (=> b!6740028 (= e!4071201 e!4071200)))

(declare-fun bm!609200 () Bool)

(assert (=> bm!609200 (= call!609202 call!609206)))

(declare-fun b!6740029 () Bool)

(assert (=> b!6740029 (= e!4071199 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609201 () Bool)

(assert (=> bm!609201 (= call!609205 (derivationStepZipperDown!1795 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292)) (ite c!1250239 (Context!11903 Nil!65876) (Context!11903 call!609204)) (h!72326 s!2326)))))

(declare-fun b!6740030 () Bool)

(assert (=> b!6740030 (= e!4071203 (store ((as const (Array Context!11902 Bool)) false) (Context!11903 Nil!65876) true))))

(assert (= (and d!2117621 c!1250237) b!6740030))

(assert (= (and d!2117621 (not c!1250237)) b!6740023))

(assert (= (and b!6740023 c!1250239) b!6740026))

(assert (= (and b!6740023 (not c!1250239)) b!6740028))

(assert (= (and b!6740028 res!2757013) b!6740022))

(assert (= (and b!6740028 c!1250240) b!6740021))

(assert (= (and b!6740028 (not c!1250240)) b!6740024))

(assert (= (and b!6740024 c!1250238) b!6740025))

(assert (= (and b!6740024 (not c!1250238)) b!6740020))

(assert (= (and b!6740020 c!1250241) b!6740027))

(assert (= (and b!6740020 (not c!1250241)) b!6740029))

(assert (= (or b!6740025 b!6740027) bm!609196))

(assert (= (or b!6740025 b!6740027) bm!609198))

(assert (= (or b!6740021 bm!609196) bm!609197))

(assert (= (or b!6740021 bm!609198) bm!609200))

(assert (= (or b!6740026 b!6740021) bm!609201))

(assert (= (or b!6740026 bm!609200) bm!609199))

(declare-fun m!7496678 () Bool)

(assert (=> b!6740022 m!7496678))

(declare-fun m!7496680 () Bool)

(assert (=> b!6740030 m!7496680))

(declare-fun m!7496682 () Bool)

(assert (=> bm!609201 m!7496682))

(declare-fun m!7496684 () Bool)

(assert (=> bm!609199 m!7496684))

(declare-fun m!7496686 () Bool)

(assert (=> bm!609197 m!7496686))

(assert (=> b!6739489 d!2117621))

(declare-fun b!6740041 () Bool)

(declare-fun e!4071213 () (InoxSet Context!11902))

(declare-fun call!609209 () (InoxSet Context!11902))

(assert (=> b!6740041 (= e!4071213 call!609209)))

(declare-fun e!4071212 () (InoxSet Context!11902))

(declare-fun b!6740042 () Bool)

(assert (=> b!6740042 (= e!4071212 ((_ map or) call!609209 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (h!72326 s!2326))))))

(declare-fun b!6740043 () Bool)

(assert (=> b!6740043 (= e!4071212 e!4071213)))

(declare-fun c!1250246 () Bool)

(assert (=> b!6740043 (= c!1250246 ((_ is Cons!65876) (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))))

(declare-fun d!2117623 () Bool)

(declare-fun c!1250247 () Bool)

(declare-fun e!4071211 () Bool)

(assert (=> d!2117623 (= c!1250247 e!4071211)))

(declare-fun res!2757016 () Bool)

(assert (=> d!2117623 (=> (not res!2757016) (not e!4071211))))

(assert (=> d!2117623 (= res!2757016 ((_ is Cons!65876) (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))))

(assert (=> d!2117623 (= (derivationStepZipperUp!1721 (Context!11903 (Cons!65876 r!7292 Nil!65876)) (h!72326 s!2326)) e!4071212)))

(declare-fun bm!609204 () Bool)

(assert (=> bm!609204 (= call!609209 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (h!72326 s!2326)))))

(declare-fun b!6740044 () Bool)

(assert (=> b!6740044 (= e!4071213 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6740045 () Bool)

(assert (=> b!6740045 (= e!4071211 (nullable!6554 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))))

(assert (= (and d!2117623 res!2757016) b!6740045))

(assert (= (and d!2117623 c!1250247) b!6740042))

(assert (= (and d!2117623 (not c!1250247)) b!6740043))

(assert (= (and b!6740043 c!1250246) b!6740041))

(assert (= (and b!6740043 (not c!1250246)) b!6740044))

(assert (= (or b!6740042 b!6740041) bm!609204))

(declare-fun m!7496688 () Bool)

(assert (=> b!6740042 m!7496688))

(declare-fun m!7496690 () Bool)

(assert (=> bm!609204 m!7496690))

(declare-fun m!7496692 () Bool)

(assert (=> b!6740045 m!7496692))

(assert (=> b!6739489 d!2117623))

(declare-fun bs!1792129 () Bool)

(declare-fun d!2117625 () Bool)

(assert (= bs!1792129 (and d!2117625 b!6739499)))

(declare-fun lambda!378629 () Int)

(assert (=> bs!1792129 (= lambda!378629 lambda!378557)))

(assert (=> d!2117625 true))

(assert (=> d!2117625 (= (derivationStepZipper!2511 z!1189 (h!72326 s!2326)) (flatMap!2048 z!1189 lambda!378629))))

(declare-fun bs!1792130 () Bool)

(assert (= bs!1792130 d!2117625))

(declare-fun m!7496694 () Bool)

(assert (=> bs!1792130 m!7496694))

(assert (=> b!6739489 d!2117625))

(declare-fun d!2117627 () Bool)

(declare-fun choose!50246 ((InoxSet Context!11902) Int) (InoxSet Context!11902))

(assert (=> d!2117627 (= (flatMap!2048 lt!2438924 lambda!378557) (choose!50246 lt!2438924 lambda!378557))))

(declare-fun bs!1792131 () Bool)

(assert (= bs!1792131 d!2117627))

(declare-fun m!7496696 () Bool)

(assert (=> bs!1792131 m!7496696))

(assert (=> b!6739478 d!2117627))

(declare-fun b!6740048 () Bool)

(declare-fun e!4071216 () (InoxSet Context!11902))

(declare-fun call!609210 () (InoxSet Context!11902))

(assert (=> b!6740048 (= e!4071216 call!609210)))

(declare-fun b!6740049 () Bool)

(declare-fun e!4071215 () (InoxSet Context!11902))

(assert (=> b!6740049 (= e!4071215 ((_ map or) call!609210 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 lt!2438907))) (h!72326 s!2326))))))

(declare-fun b!6740050 () Bool)

(assert (=> b!6740050 (= e!4071215 e!4071216)))

(declare-fun c!1250250 () Bool)

(assert (=> b!6740050 (= c!1250250 ((_ is Cons!65876) (exprs!6451 lt!2438907)))))

(declare-fun d!2117629 () Bool)

(declare-fun c!1250251 () Bool)

(declare-fun e!4071214 () Bool)

(assert (=> d!2117629 (= c!1250251 e!4071214)))

(declare-fun res!2757017 () Bool)

(assert (=> d!2117629 (=> (not res!2757017) (not e!4071214))))

(assert (=> d!2117629 (= res!2757017 ((_ is Cons!65876) (exprs!6451 lt!2438907)))))

(assert (=> d!2117629 (= (derivationStepZipperUp!1721 lt!2438907 (h!72326 s!2326)) e!4071215)))

(declare-fun bm!609205 () Bool)

(assert (=> bm!609205 (= call!609210 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 lt!2438907)) (Context!11903 (t!379697 (exprs!6451 lt!2438907))) (h!72326 s!2326)))))

(declare-fun b!6740051 () Bool)

(assert (=> b!6740051 (= e!4071216 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6740052 () Bool)

(assert (=> b!6740052 (= e!4071214 (nullable!6554 (h!72324 (exprs!6451 lt!2438907))))))

(assert (= (and d!2117629 res!2757017) b!6740052))

(assert (= (and d!2117629 c!1250251) b!6740049))

(assert (= (and d!2117629 (not c!1250251)) b!6740050))

(assert (= (and b!6740050 c!1250250) b!6740048))

(assert (= (and b!6740050 (not c!1250250)) b!6740051))

(assert (= (or b!6740049 b!6740048) bm!609205))

(declare-fun m!7496698 () Bool)

(assert (=> b!6740049 m!7496698))

(declare-fun m!7496700 () Bool)

(assert (=> bm!609205 m!7496700))

(declare-fun m!7496702 () Bool)

(assert (=> b!6740052 m!7496702))

(assert (=> b!6739478 d!2117629))

(declare-fun d!2117631 () Bool)

(declare-fun dynLambda!26284 (Int Context!11902) (InoxSet Context!11902))

(assert (=> d!2117631 (= (flatMap!2048 lt!2438906 lambda!378557) (dynLambda!26284 lambda!378557 lt!2438917))))

(declare-fun lt!2439000 () Unit!159825)

(declare-fun choose!50247 ((InoxSet Context!11902) Context!11902 Int) Unit!159825)

(assert (=> d!2117631 (= lt!2439000 (choose!50247 lt!2438906 lt!2438917 lambda!378557))))

(assert (=> d!2117631 (= lt!2438906 (store ((as const (Array Context!11902 Bool)) false) lt!2438917 true))))

(assert (=> d!2117631 (= (lemmaFlatMapOnSingletonSet!1574 lt!2438906 lt!2438917 lambda!378557) lt!2439000)))

(declare-fun b_lambda!253803 () Bool)

(assert (=> (not b_lambda!253803) (not d!2117631)))

(declare-fun bs!1792132 () Bool)

(assert (= bs!1792132 d!2117631))

(assert (=> bs!1792132 m!7496318))

(declare-fun m!7496704 () Bool)

(assert (=> bs!1792132 m!7496704))

(declare-fun m!7496706 () Bool)

(assert (=> bs!1792132 m!7496706))

(assert (=> bs!1792132 m!7496308))

(assert (=> b!6739478 d!2117631))

(declare-fun d!2117633 () Bool)

(assert (=> d!2117633 (= (flatMap!2048 lt!2438906 lambda!378557) (choose!50246 lt!2438906 lambda!378557))))

(declare-fun bs!1792133 () Bool)

(assert (= bs!1792133 d!2117633))

(declare-fun m!7496708 () Bool)

(assert (=> bs!1792133 m!7496708))

(assert (=> b!6739478 d!2117633))

(declare-fun d!2117635 () Bool)

(assert (=> d!2117635 (= (flatMap!2048 lt!2438924 lambda!378557) (dynLambda!26284 lambda!378557 lt!2438907))))

(declare-fun lt!2439001 () Unit!159825)

(assert (=> d!2117635 (= lt!2439001 (choose!50247 lt!2438924 lt!2438907 lambda!378557))))

(assert (=> d!2117635 (= lt!2438924 (store ((as const (Array Context!11902 Bool)) false) lt!2438907 true))))

(assert (=> d!2117635 (= (lemmaFlatMapOnSingletonSet!1574 lt!2438924 lt!2438907 lambda!378557) lt!2439001)))

(declare-fun b_lambda!253805 () Bool)

(assert (=> (not b_lambda!253805) (not d!2117635)))

(declare-fun bs!1792134 () Bool)

(assert (= bs!1792134 d!2117635))

(assert (=> bs!1792134 m!7496316))

(declare-fun m!7496710 () Bool)

(assert (=> bs!1792134 m!7496710))

(declare-fun m!7496712 () Bool)

(assert (=> bs!1792134 m!7496712))

(assert (=> bs!1792134 m!7496314))

(assert (=> b!6739478 d!2117635))

(declare-fun b!6740053 () Bool)

(declare-fun e!4071219 () (InoxSet Context!11902))

(declare-fun call!609211 () (InoxSet Context!11902))

(assert (=> b!6740053 (= e!4071219 call!609211)))

(declare-fun b!6740054 () Bool)

(declare-fun e!4071218 () (InoxSet Context!11902))

(assert (=> b!6740054 (= e!4071218 ((_ map or) call!609211 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 lt!2438917))) (h!72326 s!2326))))))

(declare-fun b!6740055 () Bool)

(assert (=> b!6740055 (= e!4071218 e!4071219)))

(declare-fun c!1250252 () Bool)

(assert (=> b!6740055 (= c!1250252 ((_ is Cons!65876) (exprs!6451 lt!2438917)))))

(declare-fun d!2117637 () Bool)

(declare-fun c!1250253 () Bool)

(declare-fun e!4071217 () Bool)

(assert (=> d!2117637 (= c!1250253 e!4071217)))

(declare-fun res!2757018 () Bool)

(assert (=> d!2117637 (=> (not res!2757018) (not e!4071217))))

(assert (=> d!2117637 (= res!2757018 ((_ is Cons!65876) (exprs!6451 lt!2438917)))))

(assert (=> d!2117637 (= (derivationStepZipperUp!1721 lt!2438917 (h!72326 s!2326)) e!4071218)))

(declare-fun bm!609206 () Bool)

(assert (=> bm!609206 (= call!609211 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 lt!2438917)) (Context!11903 (t!379697 (exprs!6451 lt!2438917))) (h!72326 s!2326)))))

(declare-fun b!6740056 () Bool)

(assert (=> b!6740056 (= e!4071219 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6740057 () Bool)

(assert (=> b!6740057 (= e!4071217 (nullable!6554 (h!72324 (exprs!6451 lt!2438917))))))

(assert (= (and d!2117637 res!2757018) b!6740057))

(assert (= (and d!2117637 c!1250253) b!6740054))

(assert (= (and d!2117637 (not c!1250253)) b!6740055))

(assert (= (and b!6740055 c!1250252) b!6740053))

(assert (= (and b!6740055 (not c!1250252)) b!6740056))

(assert (= (or b!6740054 b!6740053) bm!609206))

(declare-fun m!7496714 () Bool)

(assert (=> b!6740054 m!7496714))

(declare-fun m!7496716 () Bool)

(assert (=> bm!609206 m!7496716))

(declare-fun m!7496718 () Bool)

(assert (=> b!6740057 m!7496718))

(assert (=> b!6739478 d!2117637))

(declare-fun bs!1792135 () Bool)

(declare-fun d!2117639 () Bool)

(assert (= bs!1792135 (and d!2117639 b!6739499)))

(declare-fun lambda!378630 () Int)

(assert (=> bs!1792135 (= lambda!378630 lambda!378557)))

(declare-fun bs!1792136 () Bool)

(assert (= bs!1792136 (and d!2117639 d!2117625)))

(assert (=> bs!1792136 (= lambda!378630 lambda!378629)))

(assert (=> d!2117639 true))

(assert (=> d!2117639 (= (derivationStepZipper!2511 lt!2438906 (h!72326 s!2326)) (flatMap!2048 lt!2438906 lambda!378630))))

(declare-fun bs!1792137 () Bool)

(assert (= bs!1792137 d!2117639))

(declare-fun m!7496720 () Bool)

(assert (=> bs!1792137 m!7496720))

(assert (=> b!6739478 d!2117639))

(declare-fun bs!1792138 () Bool)

(declare-fun b!6740096 () Bool)

(assert (= bs!1792138 (and b!6740096 d!2117529)))

(declare-fun lambda!378635 () Int)

(assert (=> bs!1792138 (not (= lambda!378635 lambda!378587))))

(declare-fun bs!1792139 () Bool)

(assert (= bs!1792139 (and b!6740096 d!2117567)))

(assert (=> bs!1792139 (not (= lambda!378635 lambda!378603))))

(declare-fun bs!1792140 () Bool)

(assert (= bs!1792140 (and b!6740096 b!6739483)))

(assert (=> bs!1792140 (not (= lambda!378635 lambda!378554))))

(declare-fun bs!1792141 () Bool)

(assert (= bs!1792141 (and b!6740096 d!2117509)))

(assert (=> bs!1792141 (= (= r!7292 (Star!16567 (reg!16896 r!7292))) (= lambda!378635 lambda!378572))))

(assert (=> bs!1792140 (= lambda!378635 lambda!378555)))

(assert (=> bs!1792140 (not (= lambda!378635 lambda!378556))))

(assert (=> bs!1792141 (not (= lambda!378635 lambda!378571))))

(assert (=> bs!1792138 (not (= lambda!378635 lambda!378590))))

(assert (=> b!6740096 true))

(assert (=> b!6740096 true))

(declare-fun bs!1792142 () Bool)

(declare-fun b!6740098 () Bool)

(assert (= bs!1792142 (and b!6740098 d!2117529)))

(declare-fun lambda!378636 () Int)

(assert (=> bs!1792142 (not (= lambda!378636 lambda!378587))))

(declare-fun bs!1792143 () Bool)

(assert (= bs!1792143 (and b!6740098 d!2117567)))

(assert (=> bs!1792143 (not (= lambda!378636 lambda!378603))))

(declare-fun bs!1792144 () Bool)

(assert (= bs!1792144 (and b!6740098 b!6739483)))

(assert (=> bs!1792144 (not (= lambda!378636 lambda!378554))))

(declare-fun bs!1792145 () Bool)

(assert (= bs!1792145 (and b!6740098 d!2117509)))

(assert (=> bs!1792145 (not (= lambda!378636 lambda!378572))))

(assert (=> bs!1792144 (not (= lambda!378636 lambda!378555))))

(assert (=> bs!1792144 (= (and (= (regOne!33646 r!7292) (reg!16896 r!7292)) (= (regTwo!33646 r!7292) r!7292)) (= lambda!378636 lambda!378556))))

(assert (=> bs!1792145 (not (= lambda!378636 lambda!378571))))

(assert (=> bs!1792142 (= (and (= (regOne!33646 r!7292) (reg!16896 r!7292)) (= (regTwo!33646 r!7292) r!7292)) (= lambda!378636 lambda!378590))))

(declare-fun bs!1792146 () Bool)

(assert (= bs!1792146 (and b!6740098 b!6740096)))

(assert (=> bs!1792146 (not (= lambda!378636 lambda!378635))))

(assert (=> b!6740098 true))

(assert (=> b!6740098 true))

(declare-fun b!6740090 () Bool)

(declare-fun e!4071243 () Bool)

(declare-fun call!609217 () Bool)

(assert (=> b!6740090 (= e!4071243 call!609217)))

(declare-fun b!6740091 () Bool)

(declare-fun e!4071238 () Bool)

(assert (=> b!6740091 (= e!4071238 (= s!2326 (Cons!65878 (c!1250093 r!7292) Nil!65878)))))

(declare-fun d!2117641 () Bool)

(declare-fun c!1250264 () Bool)

(assert (=> d!2117641 (= c!1250264 ((_ is EmptyExpr!16567) r!7292))))

(assert (=> d!2117641 (= (matchRSpec!3668 r!7292 s!2326) e!4071243)))

(declare-fun b!6740092 () Bool)

(declare-fun e!4071240 () Bool)

(assert (=> b!6740092 (= e!4071240 (matchRSpec!3668 (regTwo!33647 r!7292) s!2326))))

(declare-fun b!6740093 () Bool)

(declare-fun e!4071239 () Bool)

(assert (=> b!6740093 (= e!4071243 e!4071239)))

(declare-fun res!2757036 () Bool)

(assert (=> b!6740093 (= res!2757036 (not ((_ is EmptyLang!16567) r!7292)))))

(assert (=> b!6740093 (=> (not res!2757036) (not e!4071239))))

(declare-fun b!6740094 () Bool)

(declare-fun e!4071242 () Bool)

(assert (=> b!6740094 (= e!4071242 e!4071240)))

(declare-fun res!2757037 () Bool)

(assert (=> b!6740094 (= res!2757037 (matchRSpec!3668 (regOne!33647 r!7292) s!2326))))

(assert (=> b!6740094 (=> res!2757037 e!4071240)))

(declare-fun b!6740095 () Bool)

(declare-fun e!4071244 () Bool)

(assert (=> b!6740095 (= e!4071242 e!4071244)))

(declare-fun c!1250265 () Bool)

(assert (=> b!6740095 (= c!1250265 ((_ is Star!16567) r!7292))))

(declare-fun e!4071241 () Bool)

(declare-fun call!609216 () Bool)

(assert (=> b!6740096 (= e!4071241 call!609216)))

(declare-fun b!6740097 () Bool)

(declare-fun c!1250262 () Bool)

(assert (=> b!6740097 (= c!1250262 ((_ is Union!16567) r!7292))))

(assert (=> b!6740097 (= e!4071238 e!4071242)))

(declare-fun bm!609211 () Bool)

(assert (=> bm!609211 (= call!609216 (Exists!3635 (ite c!1250265 lambda!378635 lambda!378636)))))

(assert (=> b!6740098 (= e!4071244 call!609216)))

(declare-fun bm!609212 () Bool)

(assert (=> bm!609212 (= call!609217 (isEmpty!38218 s!2326))))

(declare-fun b!6740099 () Bool)

(declare-fun res!2757035 () Bool)

(assert (=> b!6740099 (=> res!2757035 e!4071241)))

(assert (=> b!6740099 (= res!2757035 call!609217)))

(assert (=> b!6740099 (= e!4071244 e!4071241)))

(declare-fun b!6740100 () Bool)

(declare-fun c!1250263 () Bool)

(assert (=> b!6740100 (= c!1250263 ((_ is ElementMatch!16567) r!7292))))

(assert (=> b!6740100 (= e!4071239 e!4071238)))

(assert (= (and d!2117641 c!1250264) b!6740090))

(assert (= (and d!2117641 (not c!1250264)) b!6740093))

(assert (= (and b!6740093 res!2757036) b!6740100))

(assert (= (and b!6740100 c!1250263) b!6740091))

(assert (= (and b!6740100 (not c!1250263)) b!6740097))

(assert (= (and b!6740097 c!1250262) b!6740094))

(assert (= (and b!6740097 (not c!1250262)) b!6740095))

(assert (= (and b!6740094 (not res!2757037)) b!6740092))

(assert (= (and b!6740095 c!1250265) b!6740099))

(assert (= (and b!6740095 (not c!1250265)) b!6740098))

(assert (= (and b!6740099 (not res!2757035)) b!6740096))

(assert (= (or b!6740096 b!6740098) bm!609211))

(assert (= (or b!6740090 b!6740099) bm!609212))

(declare-fun m!7496722 () Bool)

(assert (=> b!6740092 m!7496722))

(declare-fun m!7496724 () Bool)

(assert (=> b!6740094 m!7496724))

(declare-fun m!7496726 () Bool)

(assert (=> bm!609211 m!7496726))

(assert (=> bm!609212 m!7496324))

(assert (=> b!6739477 d!2117641))

(declare-fun b!6740129 () Bool)

(declare-fun e!4071263 () Bool)

(declare-fun head!13562 (List!66002) C!33404)

(assert (=> b!6740129 (= e!4071263 (= (head!13562 s!2326) (c!1250093 r!7292)))))

(declare-fun b!6740130 () Bool)

(declare-fun res!2757061 () Bool)

(declare-fun e!4071264 () Bool)

(assert (=> b!6740130 (=> res!2757061 e!4071264)))

(assert (=> b!6740130 (= res!2757061 (not ((_ is ElementMatch!16567) r!7292)))))

(declare-fun e!4071261 () Bool)

(assert (=> b!6740130 (= e!4071261 e!4071264)))

(declare-fun b!6740131 () Bool)

(declare-fun e!4071260 () Bool)

(declare-fun lt!2439004 () Bool)

(declare-fun call!609220 () Bool)

(assert (=> b!6740131 (= e!4071260 (= lt!2439004 call!609220))))

(declare-fun b!6740132 () Bool)

(declare-fun e!4071259 () Bool)

(declare-fun e!4071265 () Bool)

(assert (=> b!6740132 (= e!4071259 e!4071265)))

(declare-fun res!2757060 () Bool)

(assert (=> b!6740132 (=> res!2757060 e!4071265)))

(assert (=> b!6740132 (= res!2757060 call!609220)))

(declare-fun b!6740133 () Bool)

(assert (=> b!6740133 (= e!4071261 (not lt!2439004))))

(declare-fun b!6740134 () Bool)

(declare-fun res!2757057 () Bool)

(assert (=> b!6740134 (=> res!2757057 e!4071264)))

(assert (=> b!6740134 (= res!2757057 e!4071263)))

(declare-fun res!2757056 () Bool)

(assert (=> b!6740134 (=> (not res!2757056) (not e!4071263))))

(assert (=> b!6740134 (= res!2757056 lt!2439004)))

(declare-fun b!6740135 () Bool)

(declare-fun res!2757059 () Bool)

(assert (=> b!6740135 (=> (not res!2757059) (not e!4071263))))

(assert (=> b!6740135 (= res!2757059 (not call!609220))))

(declare-fun b!6740136 () Bool)

(declare-fun e!4071262 () Bool)

(assert (=> b!6740136 (= e!4071262 (nullable!6554 r!7292))))

(declare-fun b!6740137 () Bool)

(assert (=> b!6740137 (= e!4071264 e!4071259)))

(declare-fun res!2757054 () Bool)

(assert (=> b!6740137 (=> (not res!2757054) (not e!4071259))))

(assert (=> b!6740137 (= res!2757054 (not lt!2439004))))

(declare-fun b!6740138 () Bool)

(assert (=> b!6740138 (= e!4071260 e!4071261)))

(declare-fun c!1250274 () Bool)

(assert (=> b!6740138 (= c!1250274 ((_ is EmptyLang!16567) r!7292))))

(declare-fun b!6740139 () Bool)

(assert (=> b!6740139 (= e!4071265 (not (= (head!13562 s!2326) (c!1250093 r!7292))))))

(declare-fun b!6740140 () Bool)

(declare-fun res!2757055 () Bool)

(assert (=> b!6740140 (=> res!2757055 e!4071265)))

(declare-fun tail!12647 (List!66002) List!66002)

(assert (=> b!6740140 (= res!2757055 (not (isEmpty!38218 (tail!12647 s!2326))))))

(declare-fun b!6740141 () Bool)

(declare-fun derivativeStep!5239 (Regex!16567 C!33404) Regex!16567)

(assert (=> b!6740141 (= e!4071262 (matchR!8750 (derivativeStep!5239 r!7292 (head!13562 s!2326)) (tail!12647 s!2326)))))

(declare-fun b!6740142 () Bool)

(declare-fun res!2757058 () Bool)

(assert (=> b!6740142 (=> (not res!2757058) (not e!4071263))))

(assert (=> b!6740142 (= res!2757058 (isEmpty!38218 (tail!12647 s!2326)))))

(declare-fun d!2117643 () Bool)

(assert (=> d!2117643 e!4071260))

(declare-fun c!1250273 () Bool)

(assert (=> d!2117643 (= c!1250273 ((_ is EmptyExpr!16567) r!7292))))

(assert (=> d!2117643 (= lt!2439004 e!4071262)))

(declare-fun c!1250272 () Bool)

(assert (=> d!2117643 (= c!1250272 (isEmpty!38218 s!2326))))

(assert (=> d!2117643 (validRegex!8303 r!7292)))

(assert (=> d!2117643 (= (matchR!8750 r!7292 s!2326) lt!2439004)))

(declare-fun bm!609215 () Bool)

(assert (=> bm!609215 (= call!609220 (isEmpty!38218 s!2326))))

(assert (= (and d!2117643 c!1250272) b!6740136))

(assert (= (and d!2117643 (not c!1250272)) b!6740141))

(assert (= (and d!2117643 c!1250273) b!6740131))

(assert (= (and d!2117643 (not c!1250273)) b!6740138))

(assert (= (and b!6740138 c!1250274) b!6740133))

(assert (= (and b!6740138 (not c!1250274)) b!6740130))

(assert (= (and b!6740130 (not res!2757061)) b!6740134))

(assert (= (and b!6740134 res!2757056) b!6740135))

(assert (= (and b!6740135 res!2757059) b!6740142))

(assert (= (and b!6740142 res!2757058) b!6740129))

(assert (= (and b!6740134 (not res!2757057)) b!6740137))

(assert (= (and b!6740137 res!2757054) b!6740132))

(assert (= (and b!6740132 (not res!2757060)) b!6740140))

(assert (= (and b!6740140 (not res!2757055)) b!6740139))

(assert (= (or b!6740131 b!6740132 b!6740135) bm!609215))

(declare-fun m!7496728 () Bool)

(assert (=> b!6740140 m!7496728))

(assert (=> b!6740140 m!7496728))

(declare-fun m!7496730 () Bool)

(assert (=> b!6740140 m!7496730))

(assert (=> bm!609215 m!7496324))

(assert (=> d!2117643 m!7496324))

(assert (=> d!2117643 m!7496280))

(declare-fun m!7496732 () Bool)

(assert (=> b!6740141 m!7496732))

(assert (=> b!6740141 m!7496732))

(declare-fun m!7496734 () Bool)

(assert (=> b!6740141 m!7496734))

(assert (=> b!6740141 m!7496728))

(assert (=> b!6740141 m!7496734))

(assert (=> b!6740141 m!7496728))

(declare-fun m!7496736 () Bool)

(assert (=> b!6740141 m!7496736))

(assert (=> b!6740129 m!7496732))

(assert (=> b!6740142 m!7496728))

(assert (=> b!6740142 m!7496728))

(assert (=> b!6740142 m!7496730))

(assert (=> b!6740139 m!7496732))

(declare-fun m!7496738 () Bool)

(assert (=> b!6740136 m!7496738))

(assert (=> b!6739477 d!2117643))

(declare-fun d!2117645 () Bool)

(assert (=> d!2117645 (= (matchR!8750 r!7292 s!2326) (matchRSpec!3668 r!7292 s!2326))))

(declare-fun lt!2439007 () Unit!159825)

(declare-fun choose!50248 (Regex!16567 List!66002) Unit!159825)

(assert (=> d!2117645 (= lt!2439007 (choose!50248 r!7292 s!2326))))

(assert (=> d!2117645 (validRegex!8303 r!7292)))

(assert (=> d!2117645 (= (mainMatchTheorem!3668 r!7292 s!2326) lt!2439007)))

(declare-fun bs!1792147 () Bool)

(assert (= bs!1792147 d!2117645))

(assert (=> bs!1792147 m!7496274))

(assert (=> bs!1792147 m!7496272))

(declare-fun m!7496740 () Bool)

(assert (=> bs!1792147 m!7496740))

(assert (=> bs!1792147 m!7496280))

(assert (=> b!6739477 d!2117645))

(declare-fun d!2117647 () Bool)

(declare-fun e!4071268 () Bool)

(assert (=> d!2117647 e!4071268))

(declare-fun res!2757064 () Bool)

(assert (=> d!2117647 (=> (not res!2757064) (not e!4071268))))

(declare-fun lt!2439010 () List!66001)

(declare-fun noDuplicate!2360 (List!66001) Bool)

(assert (=> d!2117647 (= res!2757064 (noDuplicate!2360 lt!2439010))))

(declare-fun choose!50249 ((InoxSet Context!11902)) List!66001)

(assert (=> d!2117647 (= lt!2439010 (choose!50249 z!1189))))

(assert (=> d!2117647 (= (toList!10351 z!1189) lt!2439010)))

(declare-fun b!6740145 () Bool)

(declare-fun content!12803 (List!66001) (InoxSet Context!11902))

(assert (=> b!6740145 (= e!4071268 (= (content!12803 lt!2439010) z!1189))))

(assert (= (and d!2117647 res!2757064) b!6740145))

(declare-fun m!7496742 () Bool)

(assert (=> d!2117647 m!7496742))

(declare-fun m!7496744 () Bool)

(assert (=> d!2117647 m!7496744))

(declare-fun m!7496746 () Bool)

(assert (=> b!6740145 m!7496746))

(assert (=> b!6739487 d!2117647))

(declare-fun d!2117649 () Bool)

(declare-fun lt!2439013 () Regex!16567)

(assert (=> d!2117649 (validRegex!8303 lt!2439013)))

(assert (=> d!2117649 (= lt!2439013 (generalisedUnion!2411 (unfocusZipperList!1988 zl!343)))))

(assert (=> d!2117649 (= (unfocusZipper!2309 zl!343) lt!2439013)))

(declare-fun bs!1792148 () Bool)

(assert (= bs!1792148 d!2117649))

(declare-fun m!7496748 () Bool)

(assert (=> bs!1792148 m!7496748))

(assert (=> bs!1792148 m!7496268))

(assert (=> bs!1792148 m!7496268))

(assert (=> bs!1792148 m!7496270))

(assert (=> b!6739481 d!2117649))

(declare-fun d!2117651 () Bool)

(declare-fun lt!2439014 () Regex!16567)

(assert (=> d!2117651 (validRegex!8303 lt!2439014)))

(assert (=> d!2117651 (= lt!2439014 (generalisedUnion!2411 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877))))))

(assert (=> d!2117651 (= (unfocusZipper!2309 (Cons!65877 lt!2438913 Nil!65877)) lt!2439014)))

(declare-fun bs!1792149 () Bool)

(assert (= bs!1792149 d!2117651))

(declare-fun m!7496750 () Bool)

(assert (=> bs!1792149 m!7496750))

(declare-fun m!7496752 () Bool)

(assert (=> bs!1792149 m!7496752))

(assert (=> bs!1792149 m!7496752))

(declare-fun m!7496754 () Bool)

(assert (=> bs!1792149 m!7496754))

(assert (=> b!6739500 d!2117651))

(declare-fun d!2117653 () Bool)

(assert (=> d!2117653 (= (isEmpty!38217 (t!379698 zl!343)) ((_ is Nil!65877) (t!379698 zl!343)))))

(assert (=> b!6739480 d!2117653))

(declare-fun d!2117655 () Bool)

(assert (=> d!2117655 (= (flatMap!2048 z!1189 lambda!378557) (choose!50246 z!1189 lambda!378557))))

(declare-fun bs!1792150 () Bool)

(assert (= bs!1792150 d!2117655))

(declare-fun m!7496756 () Bool)

(assert (=> bs!1792150 m!7496756))

(assert (=> b!6739499 d!2117655))

(declare-fun b!6740146 () Bool)

(declare-fun e!4071271 () (InoxSet Context!11902))

(declare-fun call!609221 () (InoxSet Context!11902))

(assert (=> b!6740146 (= e!4071271 call!609221)))

(declare-fun b!6740147 () Bool)

(declare-fun e!4071270 () (InoxSet Context!11902))

(assert (=> b!6740147 (= e!4071270 ((_ map or) call!609221 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))) (h!72326 s!2326))))))

(declare-fun b!6740148 () Bool)

(assert (=> b!6740148 (= e!4071270 e!4071271)))

(declare-fun c!1250275 () Bool)

(assert (=> b!6740148 (= c!1250275 ((_ is Cons!65876) (exprs!6451 (h!72325 zl!343))))))

(declare-fun d!2117657 () Bool)

(declare-fun c!1250276 () Bool)

(declare-fun e!4071269 () Bool)

(assert (=> d!2117657 (= c!1250276 e!4071269)))

(declare-fun res!2757065 () Bool)

(assert (=> d!2117657 (=> (not res!2757065) (not e!4071269))))

(assert (=> d!2117657 (= res!2757065 ((_ is Cons!65876) (exprs!6451 (h!72325 zl!343))))))

(assert (=> d!2117657 (= (derivationStepZipperUp!1721 (h!72325 zl!343) (h!72326 s!2326)) e!4071270)))

(declare-fun bm!609216 () Bool)

(assert (=> bm!609216 (= call!609221 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (h!72325 zl!343))) (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))) (h!72326 s!2326)))))

(declare-fun b!6740149 () Bool)

(assert (=> b!6740149 (= e!4071271 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6740150 () Bool)

(assert (=> b!6740150 (= e!4071269 (nullable!6554 (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(assert (= (and d!2117657 res!2757065) b!6740150))

(assert (= (and d!2117657 c!1250276) b!6740147))

(assert (= (and d!2117657 (not c!1250276)) b!6740148))

(assert (= (and b!6740148 c!1250275) b!6740146))

(assert (= (and b!6740148 (not c!1250275)) b!6740149))

(assert (= (or b!6740147 b!6740146) bm!609216))

(declare-fun m!7496758 () Bool)

(assert (=> b!6740147 m!7496758))

(declare-fun m!7496760 () Bool)

(assert (=> bm!609216 m!7496760))

(declare-fun m!7496762 () Bool)

(assert (=> b!6740150 m!7496762))

(assert (=> b!6739499 d!2117657))

(declare-fun d!2117659 () Bool)

(assert (=> d!2117659 (= (flatMap!2048 z!1189 lambda!378557) (dynLambda!26284 lambda!378557 (h!72325 zl!343)))))

(declare-fun lt!2439015 () Unit!159825)

(assert (=> d!2117659 (= lt!2439015 (choose!50247 z!1189 (h!72325 zl!343) lambda!378557))))

(assert (=> d!2117659 (= z!1189 (store ((as const (Array Context!11902 Bool)) false) (h!72325 zl!343) true))))

(assert (=> d!2117659 (= (lemmaFlatMapOnSingletonSet!1574 z!1189 (h!72325 zl!343) lambda!378557) lt!2439015)))

(declare-fun b_lambda!253807 () Bool)

(assert (=> (not b_lambda!253807) (not d!2117659)))

(declare-fun bs!1792151 () Bool)

(assert (= bs!1792151 d!2117659))

(assert (=> bs!1792151 m!7496284))

(declare-fun m!7496764 () Bool)

(assert (=> bs!1792151 m!7496764))

(declare-fun m!7496766 () Bool)

(assert (=> bs!1792151 m!7496766))

(declare-fun m!7496768 () Bool)

(assert (=> bs!1792151 m!7496768))

(assert (=> b!6739499 d!2117659))

(declare-fun b!6740169 () Bool)

(declare-fun e!4071291 () Bool)

(declare-fun call!609230 () Bool)

(assert (=> b!6740169 (= e!4071291 call!609230)))

(declare-fun b!6740170 () Bool)

(declare-fun e!4071290 () Bool)

(declare-fun e!4071288 () Bool)

(assert (=> b!6740170 (= e!4071290 e!4071288)))

(declare-fun c!1250282 () Bool)

(assert (=> b!6740170 (= c!1250282 ((_ is Union!16567) r!7292))))

(declare-fun b!6740171 () Bool)

(declare-fun e!4071286 () Bool)

(declare-fun call!609229 () Bool)

(assert (=> b!6740171 (= e!4071286 call!609229)))

(declare-fun b!6740172 () Bool)

(assert (=> b!6740172 (= e!4071290 e!4071286)))

(declare-fun res!2757079 () Bool)

(assert (=> b!6740172 (= res!2757079 (not (nullable!6554 (reg!16896 r!7292))))))

(assert (=> b!6740172 (=> (not res!2757079) (not e!4071286))))

(declare-fun b!6740173 () Bool)

(declare-fun res!2757076 () Bool)

(declare-fun e!4071287 () Bool)

(assert (=> b!6740173 (=> res!2757076 e!4071287)))

(assert (=> b!6740173 (= res!2757076 (not ((_ is Concat!25412) r!7292)))))

(assert (=> b!6740173 (= e!4071288 e!4071287)))

(declare-fun b!6740174 () Bool)

(declare-fun e!4071289 () Bool)

(assert (=> b!6740174 (= e!4071289 call!609230)))

(declare-fun b!6740175 () Bool)

(declare-fun e!4071292 () Bool)

(assert (=> b!6740175 (= e!4071292 e!4071290)))

(declare-fun c!1250281 () Bool)

(assert (=> b!6740175 (= c!1250281 ((_ is Star!16567) r!7292))))

(declare-fun b!6740176 () Bool)

(assert (=> b!6740176 (= e!4071287 e!4071289)))

(declare-fun res!2757078 () Bool)

(assert (=> b!6740176 (=> (not res!2757078) (not e!4071289))))

(declare-fun call!609228 () Bool)

(assert (=> b!6740176 (= res!2757078 call!609228)))

(declare-fun bm!609224 () Bool)

(assert (=> bm!609224 (= call!609230 (validRegex!8303 (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))))))

(declare-fun b!6740177 () Bool)

(declare-fun res!2757080 () Bool)

(assert (=> b!6740177 (=> (not res!2757080) (not e!4071291))))

(assert (=> b!6740177 (= res!2757080 call!609228)))

(assert (=> b!6740177 (= e!4071288 e!4071291)))

(declare-fun bm!609225 () Bool)

(assert (=> bm!609225 (= call!609228 call!609229)))

(declare-fun d!2117661 () Bool)

(declare-fun res!2757077 () Bool)

(assert (=> d!2117661 (=> res!2757077 e!4071292)))

(assert (=> d!2117661 (= res!2757077 ((_ is ElementMatch!16567) r!7292))))

(assert (=> d!2117661 (= (validRegex!8303 r!7292) e!4071292)))

(declare-fun bm!609223 () Bool)

(assert (=> bm!609223 (= call!609229 (validRegex!8303 (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))))))

(assert (= (and d!2117661 (not res!2757077)) b!6740175))

(assert (= (and b!6740175 c!1250281) b!6740172))

(assert (= (and b!6740175 (not c!1250281)) b!6740170))

(assert (= (and b!6740172 res!2757079) b!6740171))

(assert (= (and b!6740170 c!1250282) b!6740177))

(assert (= (and b!6740170 (not c!1250282)) b!6740173))

(assert (= (and b!6740177 res!2757080) b!6740169))

(assert (= (and b!6740173 (not res!2757076)) b!6740176))

(assert (= (and b!6740176 res!2757078) b!6740174))

(assert (= (or b!6740169 b!6740174) bm!609224))

(assert (= (or b!6740177 b!6740176) bm!609225))

(assert (= (or b!6740171 bm!609225) bm!609223))

(declare-fun m!7496770 () Bool)

(assert (=> b!6740172 m!7496770))

(declare-fun m!7496772 () Bool)

(assert (=> bm!609224 m!7496772))

(declare-fun m!7496774 () Bool)

(assert (=> bm!609223 m!7496774))

(assert (=> start!653668 d!2117661))

(declare-fun b!6740178 () Bool)

(declare-fun c!1250287 () Bool)

(assert (=> b!6740178 (= c!1250287 ((_ is Star!16567) (reg!16896 r!7292)))))

(declare-fun e!4071298 () (InoxSet Context!11902))

(declare-fun e!4071293 () (InoxSet Context!11902))

(assert (=> b!6740178 (= e!4071298 e!4071293)))

(declare-fun b!6740179 () Bool)

(declare-fun e!4071294 () (InoxSet Context!11902))

(declare-fun call!609235 () (InoxSet Context!11902))

(declare-fun call!609232 () (InoxSet Context!11902))

(assert (=> b!6740179 (= e!4071294 ((_ map or) call!609235 call!609232))))

(declare-fun b!6740180 () Bool)

(declare-fun e!4071296 () Bool)

(assert (=> b!6740180 (= e!4071296 (nullable!6554 (regOne!33646 (reg!16896 r!7292))))))

(declare-fun d!2117663 () Bool)

(declare-fun c!1250283 () Bool)

(assert (=> d!2117663 (= c!1250283 (and ((_ is ElementMatch!16567) (reg!16896 r!7292)) (= (c!1250093 (reg!16896 r!7292)) (h!72326 s!2326))))))

(declare-fun e!4071297 () (InoxSet Context!11902))

(assert (=> d!2117663 (= (derivationStepZipperDown!1795 (reg!16896 r!7292) lt!2438917 (h!72326 s!2326)) e!4071297)))

(declare-fun bm!609226 () Bool)

(declare-fun call!609231 () List!66000)

(declare-fun call!609234 () List!66000)

(assert (=> bm!609226 (= call!609231 call!609234)))

(declare-fun b!6740181 () Bool)

(declare-fun e!4071295 () (InoxSet Context!11902))

(assert (=> b!6740181 (= e!4071297 e!4071295)))

(declare-fun c!1250285 () Bool)

(assert (=> b!6740181 (= c!1250285 ((_ is Union!16567) (reg!16896 r!7292)))))

(declare-fun b!6740182 () Bool)

(assert (=> b!6740182 (= e!4071294 e!4071298)))

(declare-fun c!1250284 () Bool)

(assert (=> b!6740182 (= c!1250284 ((_ is Concat!25412) (reg!16896 r!7292)))))

(declare-fun b!6740183 () Bool)

(declare-fun call!609233 () (InoxSet Context!11902))

(assert (=> b!6740183 (= e!4071298 call!609233)))

(declare-fun c!1250286 () Bool)

(declare-fun bm!609227 () Bool)

(assert (=> bm!609227 (= call!609234 ($colon$colon!2384 (exprs!6451 lt!2438917) (ite (or c!1250286 c!1250284) (regTwo!33646 (reg!16896 r!7292)) (reg!16896 r!7292))))))

(declare-fun b!6740184 () Bool)

(declare-fun call!609236 () (InoxSet Context!11902))

(assert (=> b!6740184 (= e!4071295 ((_ map or) call!609236 call!609235))))

(declare-fun bm!609228 () Bool)

(assert (=> bm!609228 (= call!609233 call!609232)))

(declare-fun bm!609229 () Bool)

(assert (=> bm!609229 (= call!609236 (derivationStepZipperDown!1795 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292))))) (ite (or c!1250285 c!1250286) lt!2438917 (Context!11903 call!609231)) (h!72326 s!2326)))))

(declare-fun b!6740185 () Bool)

(assert (=> b!6740185 (= e!4071293 call!609233)))

(declare-fun b!6740186 () Bool)

(assert (=> b!6740186 (= c!1250286 e!4071296)))

(declare-fun res!2757081 () Bool)

(assert (=> b!6740186 (=> (not res!2757081) (not e!4071296))))

(assert (=> b!6740186 (= res!2757081 ((_ is Concat!25412) (reg!16896 r!7292)))))

(assert (=> b!6740186 (= e!4071295 e!4071294)))

(declare-fun bm!609230 () Bool)

(assert (=> bm!609230 (= call!609232 call!609236)))

(declare-fun b!6740187 () Bool)

(assert (=> b!6740187 (= e!4071293 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609231 () Bool)

(assert (=> bm!609231 (= call!609235 (derivationStepZipperDown!1795 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292))) (ite c!1250285 lt!2438917 (Context!11903 call!609234)) (h!72326 s!2326)))))

(declare-fun b!6740188 () Bool)

(assert (=> b!6740188 (= e!4071297 (store ((as const (Array Context!11902 Bool)) false) lt!2438917 true))))

(assert (= (and d!2117663 c!1250283) b!6740188))

(assert (= (and d!2117663 (not c!1250283)) b!6740181))

(assert (= (and b!6740181 c!1250285) b!6740184))

(assert (= (and b!6740181 (not c!1250285)) b!6740186))

(assert (= (and b!6740186 res!2757081) b!6740180))

(assert (= (and b!6740186 c!1250286) b!6740179))

(assert (= (and b!6740186 (not c!1250286)) b!6740182))

(assert (= (and b!6740182 c!1250284) b!6740183))

(assert (= (and b!6740182 (not c!1250284)) b!6740178))

(assert (= (and b!6740178 c!1250287) b!6740185))

(assert (= (and b!6740178 (not c!1250287)) b!6740187))

(assert (= (or b!6740183 b!6740185) bm!609226))

(assert (= (or b!6740183 b!6740185) bm!609228))

(assert (= (or b!6740179 bm!609226) bm!609227))

(assert (= (or b!6740179 bm!609228) bm!609230))

(assert (= (or b!6740184 b!6740179) bm!609231))

(assert (= (or b!6740184 bm!609230) bm!609229))

(declare-fun m!7496776 () Bool)

(assert (=> b!6740180 m!7496776))

(assert (=> b!6740188 m!7496308))

(declare-fun m!7496778 () Bool)

(assert (=> bm!609231 m!7496778))

(declare-fun m!7496780 () Bool)

(assert (=> bm!609229 m!7496780))

(declare-fun m!7496782 () Bool)

(assert (=> bm!609227 m!7496782))

(assert (=> b!6739479 d!2117663))

(declare-fun d!2117665 () Bool)

(assert (=> d!2117665 (= (flatMap!2048 lt!2438916 lambda!378557) (choose!50246 lt!2438916 lambda!378557))))

(declare-fun bs!1792152 () Bool)

(assert (= bs!1792152 d!2117665))

(declare-fun m!7496784 () Bool)

(assert (=> bs!1792152 m!7496784))

(assert (=> b!6739479 d!2117665))

(declare-fun b!6740189 () Bool)

(declare-fun e!4071301 () (InoxSet Context!11902))

(declare-fun call!609237 () (InoxSet Context!11902))

(assert (=> b!6740189 (= e!4071301 call!609237)))

(declare-fun b!6740190 () Bool)

(declare-fun e!4071300 () (InoxSet Context!11902))

(assert (=> b!6740190 (= e!4071300 ((_ map or) call!609237 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 lt!2438913))) (h!72326 s!2326))))))

(declare-fun b!6740191 () Bool)

(assert (=> b!6740191 (= e!4071300 e!4071301)))

(declare-fun c!1250288 () Bool)

(assert (=> b!6740191 (= c!1250288 ((_ is Cons!65876) (exprs!6451 lt!2438913)))))

(declare-fun d!2117667 () Bool)

(declare-fun c!1250289 () Bool)

(declare-fun e!4071299 () Bool)

(assert (=> d!2117667 (= c!1250289 e!4071299)))

(declare-fun res!2757082 () Bool)

(assert (=> d!2117667 (=> (not res!2757082) (not e!4071299))))

(assert (=> d!2117667 (= res!2757082 ((_ is Cons!65876) (exprs!6451 lt!2438913)))))

(assert (=> d!2117667 (= (derivationStepZipperUp!1721 lt!2438913 (h!72326 s!2326)) e!4071300)))

(declare-fun bm!609232 () Bool)

(assert (=> bm!609232 (= call!609237 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 lt!2438913)) (Context!11903 (t!379697 (exprs!6451 lt!2438913))) (h!72326 s!2326)))))

(declare-fun b!6740192 () Bool)

(assert (=> b!6740192 (= e!4071301 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6740193 () Bool)

(assert (=> b!6740193 (= e!4071299 (nullable!6554 (h!72324 (exprs!6451 lt!2438913))))))

(assert (= (and d!2117667 res!2757082) b!6740193))

(assert (= (and d!2117667 c!1250289) b!6740190))

(assert (= (and d!2117667 (not c!1250289)) b!6740191))

(assert (= (and b!6740191 c!1250288) b!6740189))

(assert (= (and b!6740191 (not c!1250288)) b!6740192))

(assert (= (or b!6740190 b!6740189) bm!609232))

(declare-fun m!7496786 () Bool)

(assert (=> b!6740190 m!7496786))

(declare-fun m!7496788 () Bool)

(assert (=> bm!609232 m!7496788))

(declare-fun m!7496790 () Bool)

(assert (=> b!6740193 m!7496790))

(assert (=> b!6739479 d!2117667))

(declare-fun d!2117669 () Bool)

(assert (=> d!2117669 (= (flatMap!2048 lt!2438916 lambda!378557) (dynLambda!26284 lambda!378557 lt!2438913))))

(declare-fun lt!2439016 () Unit!159825)

(assert (=> d!2117669 (= lt!2439016 (choose!50247 lt!2438916 lt!2438913 lambda!378557))))

(assert (=> d!2117669 (= lt!2438916 (store ((as const (Array Context!11902 Bool)) false) lt!2438913 true))))

(assert (=> d!2117669 (= (lemmaFlatMapOnSingletonSet!1574 lt!2438916 lt!2438913 lambda!378557) lt!2439016)))

(declare-fun b_lambda!253809 () Bool)

(assert (=> (not b_lambda!253809) (not d!2117669)))

(declare-fun bs!1792153 () Bool)

(assert (= bs!1792153 d!2117669))

(assert (=> bs!1792153 m!7496294))

(declare-fun m!7496792 () Bool)

(assert (=> bs!1792153 m!7496792))

(declare-fun m!7496794 () Bool)

(assert (=> bs!1792153 m!7496794))

(assert (=> bs!1792153 m!7496300))

(assert (=> b!6739479 d!2117669))

(declare-fun d!2117671 () Bool)

(declare-fun c!1250292 () Bool)

(assert (=> d!2117671 (= c!1250292 (isEmpty!38218 s!2326))))

(declare-fun e!4071304 () Bool)

(assert (=> d!2117671 (= (matchZipper!2553 lt!2438916 s!2326) e!4071304)))

(declare-fun b!6740198 () Bool)

(declare-fun nullableZipper!2282 ((InoxSet Context!11902)) Bool)

(assert (=> b!6740198 (= e!4071304 (nullableZipper!2282 lt!2438916))))

(declare-fun b!6740199 () Bool)

(assert (=> b!6740199 (= e!4071304 (matchZipper!2553 (derivationStepZipper!2511 lt!2438916 (head!13562 s!2326)) (tail!12647 s!2326)))))

(assert (= (and d!2117671 c!1250292) b!6740198))

(assert (= (and d!2117671 (not c!1250292)) b!6740199))

(assert (=> d!2117671 m!7496324))

(declare-fun m!7496796 () Bool)

(assert (=> b!6740198 m!7496796))

(assert (=> b!6740199 m!7496732))

(assert (=> b!6740199 m!7496732))

(declare-fun m!7496798 () Bool)

(assert (=> b!6740199 m!7496798))

(assert (=> b!6740199 m!7496728))

(assert (=> b!6740199 m!7496798))

(assert (=> b!6740199 m!7496728))

(declare-fun m!7496800 () Bool)

(assert (=> b!6740199 m!7496800))

(assert (=> b!6739498 d!2117671))

(declare-fun d!2117673 () Bool)

(declare-fun c!1250293 () Bool)

(assert (=> d!2117673 (= c!1250293 (isEmpty!38218 (t!379699 s!2326)))))

(declare-fun e!4071305 () Bool)

(assert (=> d!2117673 (= (matchZipper!2553 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) (t!379699 s!2326)) e!4071305)))

(declare-fun b!6740200 () Bool)

(assert (=> b!6740200 (= e!4071305 (nullableZipper!2282 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326))))))

(declare-fun b!6740201 () Bool)

(assert (=> b!6740201 (= e!4071305 (matchZipper!2553 (derivationStepZipper!2511 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) (head!13562 (t!379699 s!2326))) (tail!12647 (t!379699 s!2326))))))

(assert (= (and d!2117673 c!1250293) b!6740200))

(assert (= (and d!2117673 (not c!1250293)) b!6740201))

(declare-fun m!7496802 () Bool)

(assert (=> d!2117673 m!7496802))

(assert (=> b!6740200 m!7496258))

(declare-fun m!7496804 () Bool)

(assert (=> b!6740200 m!7496804))

(declare-fun m!7496806 () Bool)

(assert (=> b!6740201 m!7496806))

(assert (=> b!6740201 m!7496258))

(assert (=> b!6740201 m!7496806))

(declare-fun m!7496808 () Bool)

(assert (=> b!6740201 m!7496808))

(declare-fun m!7496810 () Bool)

(assert (=> b!6740201 m!7496810))

(assert (=> b!6740201 m!7496808))

(assert (=> b!6740201 m!7496810))

(declare-fun m!7496812 () Bool)

(assert (=> b!6740201 m!7496812))

(assert (=> b!6739498 d!2117673))

(declare-fun bs!1792154 () Bool)

(declare-fun d!2117675 () Bool)

(assert (= bs!1792154 (and d!2117675 b!6739499)))

(declare-fun lambda!378637 () Int)

(assert (=> bs!1792154 (= lambda!378637 lambda!378557)))

(declare-fun bs!1792155 () Bool)

(assert (= bs!1792155 (and d!2117675 d!2117625)))

(assert (=> bs!1792155 (= lambda!378637 lambda!378629)))

(declare-fun bs!1792156 () Bool)

(assert (= bs!1792156 (and d!2117675 d!2117639)))

(assert (=> bs!1792156 (= lambda!378637 lambda!378630)))

(assert (=> d!2117675 true))

(assert (=> d!2117675 (= (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) (flatMap!2048 lt!2438916 lambda!378637))))

(declare-fun bs!1792157 () Bool)

(assert (= bs!1792157 d!2117675))

(declare-fun m!7496814 () Bool)

(assert (=> bs!1792157 m!7496814))

(assert (=> b!6739498 d!2117675))

(declare-fun b!6740206 () Bool)

(declare-fun e!4071308 () Bool)

(declare-fun tp!1847720 () Bool)

(declare-fun tp!1847721 () Bool)

(assert (=> b!6740206 (= e!4071308 (and tp!1847720 tp!1847721))))

(assert (=> b!6739494 (= tp!1847649 e!4071308)))

(assert (= (and b!6739494 ((_ is Cons!65876) (exprs!6451 setElem!46011))) b!6740206))

(declare-fun e!4071311 () Bool)

(assert (=> b!6739497 (= tp!1847652 e!4071311)))

(declare-fun b!6740218 () Bool)

(declare-fun tp!1847732 () Bool)

(declare-fun tp!1847734 () Bool)

(assert (=> b!6740218 (= e!4071311 (and tp!1847732 tp!1847734))))

(declare-fun b!6740219 () Bool)

(declare-fun tp!1847735 () Bool)

(assert (=> b!6740219 (= e!4071311 tp!1847735)))

(declare-fun b!6740217 () Bool)

(assert (=> b!6740217 (= e!4071311 tp_is_empty!42387)))

(declare-fun b!6740220 () Bool)

(declare-fun tp!1847736 () Bool)

(declare-fun tp!1847733 () Bool)

(assert (=> b!6740220 (= e!4071311 (and tp!1847736 tp!1847733))))

(assert (= (and b!6739497 ((_ is ElementMatch!16567) (reg!16896 r!7292))) b!6740217))

(assert (= (and b!6739497 ((_ is Concat!25412) (reg!16896 r!7292))) b!6740218))

(assert (= (and b!6739497 ((_ is Star!16567) (reg!16896 r!7292))) b!6740219))

(assert (= (and b!6739497 ((_ is Union!16567) (reg!16896 r!7292))) b!6740220))

(declare-fun e!4071312 () Bool)

(assert (=> b!6739493 (= tp!1847654 e!4071312)))

(declare-fun b!6740222 () Bool)

(declare-fun tp!1847737 () Bool)

(declare-fun tp!1847739 () Bool)

(assert (=> b!6740222 (= e!4071312 (and tp!1847737 tp!1847739))))

(declare-fun b!6740223 () Bool)

(declare-fun tp!1847740 () Bool)

(assert (=> b!6740223 (= e!4071312 tp!1847740)))

(declare-fun b!6740221 () Bool)

(assert (=> b!6740221 (= e!4071312 tp_is_empty!42387)))

(declare-fun b!6740224 () Bool)

(declare-fun tp!1847741 () Bool)

(declare-fun tp!1847738 () Bool)

(assert (=> b!6740224 (= e!4071312 (and tp!1847741 tp!1847738))))

(assert (= (and b!6739493 ((_ is ElementMatch!16567) (regOne!33646 r!7292))) b!6740221))

(assert (= (and b!6739493 ((_ is Concat!25412) (regOne!33646 r!7292))) b!6740222))

(assert (= (and b!6739493 ((_ is Star!16567) (regOne!33646 r!7292))) b!6740223))

(assert (= (and b!6739493 ((_ is Union!16567) (regOne!33646 r!7292))) b!6740224))

(declare-fun e!4071313 () Bool)

(assert (=> b!6739493 (= tp!1847650 e!4071313)))

(declare-fun b!6740226 () Bool)

(declare-fun tp!1847742 () Bool)

(declare-fun tp!1847744 () Bool)

(assert (=> b!6740226 (= e!4071313 (and tp!1847742 tp!1847744))))

(declare-fun b!6740227 () Bool)

(declare-fun tp!1847745 () Bool)

(assert (=> b!6740227 (= e!4071313 tp!1847745)))

(declare-fun b!6740225 () Bool)

(assert (=> b!6740225 (= e!4071313 tp_is_empty!42387)))

(declare-fun b!6740228 () Bool)

(declare-fun tp!1847746 () Bool)

(declare-fun tp!1847743 () Bool)

(assert (=> b!6740228 (= e!4071313 (and tp!1847746 tp!1847743))))

(assert (= (and b!6739493 ((_ is ElementMatch!16567) (regTwo!33646 r!7292))) b!6740225))

(assert (= (and b!6739493 ((_ is Concat!25412) (regTwo!33646 r!7292))) b!6740226))

(assert (= (and b!6739493 ((_ is Star!16567) (regTwo!33646 r!7292))) b!6740227))

(assert (= (and b!6739493 ((_ is Union!16567) (regTwo!33646 r!7292))) b!6740228))

(declare-fun b!6740229 () Bool)

(declare-fun e!4071314 () Bool)

(declare-fun tp!1847747 () Bool)

(declare-fun tp!1847748 () Bool)

(assert (=> b!6740229 (= e!4071314 (and tp!1847747 tp!1847748))))

(assert (=> b!6739482 (= tp!1847653 e!4071314)))

(assert (= (and b!6739482 ((_ is Cons!65876) (exprs!6451 (h!72325 zl!343)))) b!6740229))

(declare-fun b!6740234 () Bool)

(declare-fun e!4071317 () Bool)

(declare-fun tp!1847751 () Bool)

(assert (=> b!6740234 (= e!4071317 (and tp_is_empty!42387 tp!1847751))))

(assert (=> b!6739501 (= tp!1847651 e!4071317)))

(assert (= (and b!6739501 ((_ is Cons!65878) (t!379699 s!2326))) b!6740234))

(declare-fun e!4071318 () Bool)

(assert (=> b!6739491 (= tp!1847648 e!4071318)))

(declare-fun b!6740236 () Bool)

(declare-fun tp!1847752 () Bool)

(declare-fun tp!1847754 () Bool)

(assert (=> b!6740236 (= e!4071318 (and tp!1847752 tp!1847754))))

(declare-fun b!6740237 () Bool)

(declare-fun tp!1847755 () Bool)

(assert (=> b!6740237 (= e!4071318 tp!1847755)))

(declare-fun b!6740235 () Bool)

(assert (=> b!6740235 (= e!4071318 tp_is_empty!42387)))

(declare-fun b!6740238 () Bool)

(declare-fun tp!1847756 () Bool)

(declare-fun tp!1847753 () Bool)

(assert (=> b!6740238 (= e!4071318 (and tp!1847756 tp!1847753))))

(assert (= (and b!6739491 ((_ is ElementMatch!16567) (regOne!33647 r!7292))) b!6740235))

(assert (= (and b!6739491 ((_ is Concat!25412) (regOne!33647 r!7292))) b!6740236))

(assert (= (and b!6739491 ((_ is Star!16567) (regOne!33647 r!7292))) b!6740237))

(assert (= (and b!6739491 ((_ is Union!16567) (regOne!33647 r!7292))) b!6740238))

(declare-fun e!4071319 () Bool)

(assert (=> b!6739491 (= tp!1847656 e!4071319)))

(declare-fun b!6740240 () Bool)

(declare-fun tp!1847757 () Bool)

(declare-fun tp!1847759 () Bool)

(assert (=> b!6740240 (= e!4071319 (and tp!1847757 tp!1847759))))

(declare-fun b!6740241 () Bool)

(declare-fun tp!1847760 () Bool)

(assert (=> b!6740241 (= e!4071319 tp!1847760)))

(declare-fun b!6740239 () Bool)

(assert (=> b!6740239 (= e!4071319 tp_is_empty!42387)))

(declare-fun b!6740242 () Bool)

(declare-fun tp!1847761 () Bool)

(declare-fun tp!1847758 () Bool)

(assert (=> b!6740242 (= e!4071319 (and tp!1847761 tp!1847758))))

(assert (= (and b!6739491 ((_ is ElementMatch!16567) (regTwo!33647 r!7292))) b!6740239))

(assert (= (and b!6739491 ((_ is Concat!25412) (regTwo!33647 r!7292))) b!6740240))

(assert (= (and b!6739491 ((_ is Star!16567) (regTwo!33647 r!7292))) b!6740241))

(assert (= (and b!6739491 ((_ is Union!16567) (regTwo!33647 r!7292))) b!6740242))

(declare-fun condSetEmpty!46017 () Bool)

(assert (=> setNonEmpty!46011 (= condSetEmpty!46017 (= setRest!46011 ((as const (Array Context!11902 Bool)) false)))))

(declare-fun setRes!46017 () Bool)

(assert (=> setNonEmpty!46011 (= tp!1847657 setRes!46017)))

(declare-fun setIsEmpty!46017 () Bool)

(assert (=> setIsEmpty!46017 setRes!46017))

(declare-fun e!4071322 () Bool)

(declare-fun tp!1847767 () Bool)

(declare-fun setNonEmpty!46017 () Bool)

(declare-fun setElem!46017 () Context!11902)

(assert (=> setNonEmpty!46017 (= setRes!46017 (and tp!1847767 (inv!84664 setElem!46017) e!4071322))))

(declare-fun setRest!46017 () (InoxSet Context!11902))

(assert (=> setNonEmpty!46017 (= setRest!46011 ((_ map or) (store ((as const (Array Context!11902 Bool)) false) setElem!46017 true) setRest!46017))))

(declare-fun b!6740247 () Bool)

(declare-fun tp!1847766 () Bool)

(assert (=> b!6740247 (= e!4071322 tp!1847766)))

(assert (= (and setNonEmpty!46011 condSetEmpty!46017) setIsEmpty!46017))

(assert (= (and setNonEmpty!46011 (not condSetEmpty!46017)) setNonEmpty!46017))

(assert (= setNonEmpty!46017 b!6740247))

(declare-fun m!7496816 () Bool)

(assert (=> setNonEmpty!46017 m!7496816))

(declare-fun b!6740255 () Bool)

(declare-fun e!4071328 () Bool)

(declare-fun tp!1847772 () Bool)

(assert (=> b!6740255 (= e!4071328 tp!1847772)))

(declare-fun b!6740254 () Bool)

(declare-fun tp!1847773 () Bool)

(declare-fun e!4071327 () Bool)

(assert (=> b!6740254 (= e!4071327 (and (inv!84664 (h!72325 (t!379698 zl!343))) e!4071328 tp!1847773))))

(assert (=> b!6739485 (= tp!1847655 e!4071327)))

(assert (= b!6740254 b!6740255))

(assert (= (and b!6739485 ((_ is Cons!65877) (t!379698 zl!343))) b!6740254))

(declare-fun m!7496818 () Bool)

(assert (=> b!6740254 m!7496818))

(declare-fun b_lambda!253811 () Bool)

(assert (= b_lambda!253803 (or b!6739499 b_lambda!253811)))

(declare-fun bs!1792158 () Bool)

(declare-fun d!2117677 () Bool)

(assert (= bs!1792158 (and d!2117677 b!6739499)))

(assert (=> bs!1792158 (= (dynLambda!26284 lambda!378557 lt!2438917) (derivationStepZipperUp!1721 lt!2438917 (h!72326 s!2326)))))

(assert (=> bs!1792158 m!7496306))

(assert (=> d!2117631 d!2117677))

(declare-fun b_lambda!253813 () Bool)

(assert (= b_lambda!253807 (or b!6739499 b_lambda!253813)))

(declare-fun bs!1792159 () Bool)

(declare-fun d!2117679 () Bool)

(assert (= bs!1792159 (and d!2117679 b!6739499)))

(assert (=> bs!1792159 (= (dynLambda!26284 lambda!378557 (h!72325 zl!343)) (derivationStepZipperUp!1721 (h!72325 zl!343) (h!72326 s!2326)))))

(assert (=> bs!1792159 m!7496286))

(assert (=> d!2117659 d!2117679))

(declare-fun b_lambda!253815 () Bool)

(assert (= b_lambda!253809 (or b!6739499 b_lambda!253815)))

(declare-fun bs!1792160 () Bool)

(declare-fun d!2117681 () Bool)

(assert (= bs!1792160 (and d!2117681 b!6739499)))

(assert (=> bs!1792160 (= (dynLambda!26284 lambda!378557 lt!2438913) (derivationStepZipperUp!1721 lt!2438913 (h!72326 s!2326)))))

(assert (=> bs!1792160 m!7496298))

(assert (=> d!2117669 d!2117681))

(declare-fun b_lambda!253817 () Bool)

(assert (= b_lambda!253805 (or b!6739499 b_lambda!253817)))

(declare-fun bs!1792161 () Bool)

(declare-fun d!2117683 () Bool)

(assert (= bs!1792161 (and d!2117683 b!6739499)))

(assert (=> bs!1792161 (= (dynLambda!26284 lambda!378557 lt!2438907) (derivationStepZipperUp!1721 lt!2438907 (h!72326 s!2326)))))

(assert (=> bs!1792161 m!7496304))

(assert (=> d!2117635 d!2117683))

(check-sat (not d!2117633) (not b!6740147) (not b!6740255) (not b_lambda!253813) (not b!6739882) (not b!6740224) (not b!6739887) (not d!2117625) (not b!6740234) (not b!6740238) (not b!6739981) (not bm!609204) (not bm!609199) (not b!6740022) (not b!6739771) (not bm!609206) (not d!2117627) (not b!6739980) (not bm!609229) (not b!6740219) (not b!6740227) (not b_lambda!253811) (not b!6740054) (not bs!1792160) (not b!6740140) (not bm!609231) (not b!6740247) (not b_lambda!253815) (not b!6740141) (not d!2117671) tp_is_empty!42387 (not b!6739987) (not b!6740139) (not b!6740145) (not d!2117523) (not b!6740254) (not bm!609224) (not b!6740229) (not d!2117555) (not b!6740199) (not d!2117643) (not b!6739986) (not b!6740242) (not d!2117553) (not b!6740052) (not b!6740045) (not b!6739768) (not b!6740200) (not bs!1792161) (not b!6739770) (not d!2117631) (not b!6739766) (not b!6740223) (not bm!609212) (not b!6740228) (not b!6740094) (not bm!609232) (not b!6740193) (not bm!609223) (not b!6740218) (not d!2117607) (not d!2117587) (not b!6740150) (not b!6739890) (not b!6740092) (not b!6740198) (not d!2117665) (not bs!1792158) (not b!6739763) (not b!6740241) (not b!6740180) (not d!2117567) (not b_lambda!253817) (not d!2117645) (not b!6740236) (not b!6740220) (not b!6739996) (not b!6740142) (not b!6739984) (not d!2117649) (not b!6740172) (not b!6740057) (not d!2117655) (not d!2117639) (not d!2117673) (not b!6740129) (not d!2117635) (not b!6739978) (not b!6740136) (not d!2117603) (not bm!609211) (not bm!609227) (not b!6740042) (not d!2117529) (not bm!609215) (not b!6740049) (not b!6740190) (not b!6740240) (not b!6739983) (not bm!609197) (not d!2117669) (not d!2117659) (not bs!1792159) (not d!2117675) (not b!6739769) (not d!2117525) (not d!2117605) (not b!6740222) (not b!6740237) (not d!2117651) (not bm!609216) (not d!2117509) (not b!6739885) (not b!6740206) (not b!6740201) (not b!6740226) (not b!6739891) (not bm!609201) (not d!2117619) (not bm!609205) (not b!6739888) (not setNonEmpty!46017) (not d!2117599) (not d!2117647) (not d!2117503) (not b!6739884))
(check-sat)
(get-model)

(assert (=> b!6739770 d!2117643))

(declare-fun d!2117911 () Bool)

(assert (=> d!2117911 (= (Exists!3635 lambda!378603) (choose!50242 lambda!378603))))

(declare-fun bs!1792332 () Bool)

(assert (= bs!1792332 d!2117911))

(declare-fun m!7497310 () Bool)

(assert (=> bs!1792332 m!7497310))

(assert (=> d!2117567 d!2117911))

(assert (=> d!2117567 d!2117503))

(declare-fun bs!1792339 () Bool)

(declare-fun d!2117913 () Bool)

(assert (= bs!1792339 (and d!2117913 d!2117529)))

(declare-fun lambda!378672 () Int)

(assert (=> bs!1792339 (= lambda!378672 lambda!378587)))

(declare-fun bs!1792340 () Bool)

(assert (= bs!1792340 (and d!2117913 d!2117567)))

(assert (=> bs!1792340 (= lambda!378672 lambda!378603)))

(declare-fun bs!1792341 () Bool)

(assert (= bs!1792341 (and d!2117913 b!6739483)))

(assert (=> bs!1792341 (= lambda!378672 lambda!378554)))

(declare-fun bs!1792342 () Bool)

(assert (= bs!1792342 (and d!2117913 d!2117509)))

(assert (=> bs!1792342 (not (= lambda!378672 lambda!378572))))

(assert (=> bs!1792341 (not (= lambda!378672 lambda!378555))))

(declare-fun bs!1792343 () Bool)

(assert (= bs!1792343 (and d!2117913 b!6740098)))

(assert (=> bs!1792343 (not (= lambda!378672 lambda!378636))))

(assert (=> bs!1792341 (not (= lambda!378672 lambda!378556))))

(assert (=> bs!1792342 (= (= r!7292 (Star!16567 (reg!16896 r!7292))) (= lambda!378672 lambda!378571))))

(assert (=> bs!1792339 (not (= lambda!378672 lambda!378590))))

(declare-fun bs!1792344 () Bool)

(assert (= bs!1792344 (and d!2117913 b!6740096)))

(assert (=> bs!1792344 (not (= lambda!378672 lambda!378635))))

(assert (=> d!2117913 true))

(assert (=> d!2117913 true))

(assert (=> d!2117913 true))

(assert (=> d!2117913 (= (isDefined!13157 (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 Nil!65878 s!2326 s!2326)) (Exists!3635 lambda!378672))))

(assert (=> d!2117913 true))

(declare-fun _$89!2980 () Unit!159825)

(assert (=> d!2117913 (= (choose!50245 (reg!16896 r!7292) r!7292 s!2326) _$89!2980)))

(declare-fun bs!1792345 () Bool)

(assert (= bs!1792345 d!2117913))

(assert (=> bs!1792345 m!7496332))

(assert (=> bs!1792345 m!7496332))

(assert (=> bs!1792345 m!7496336))

(declare-fun m!7497326 () Bool)

(assert (=> bs!1792345 m!7497326))

(assert (=> d!2117567 d!2117913))

(assert (=> d!2117567 d!2117555))

(declare-fun b!6740803 () Bool)

(declare-fun e!4071633 () Bool)

(declare-fun call!609340 () Bool)

(assert (=> b!6740803 (= e!4071633 call!609340)))

(declare-fun b!6740804 () Bool)

(declare-fun e!4071632 () Bool)

(declare-fun e!4071630 () Bool)

(assert (=> b!6740804 (= e!4071632 e!4071630)))

(declare-fun c!1250427 () Bool)

(assert (=> b!6740804 (= c!1250427 ((_ is Union!16567) (reg!16896 r!7292)))))

(declare-fun b!6740805 () Bool)

(declare-fun e!4071628 () Bool)

(declare-fun call!609339 () Bool)

(assert (=> b!6740805 (= e!4071628 call!609339)))

(declare-fun b!6740806 () Bool)

(assert (=> b!6740806 (= e!4071632 e!4071628)))

(declare-fun res!2757259 () Bool)

(assert (=> b!6740806 (= res!2757259 (not (nullable!6554 (reg!16896 (reg!16896 r!7292)))))))

(assert (=> b!6740806 (=> (not res!2757259) (not e!4071628))))

(declare-fun b!6740807 () Bool)

(declare-fun res!2757256 () Bool)

(declare-fun e!4071629 () Bool)

(assert (=> b!6740807 (=> res!2757256 e!4071629)))

(assert (=> b!6740807 (= res!2757256 (not ((_ is Concat!25412) (reg!16896 r!7292))))))

(assert (=> b!6740807 (= e!4071630 e!4071629)))

(declare-fun b!6740808 () Bool)

(declare-fun e!4071631 () Bool)

(assert (=> b!6740808 (= e!4071631 call!609340)))

(declare-fun b!6740809 () Bool)

(declare-fun e!4071634 () Bool)

(assert (=> b!6740809 (= e!4071634 e!4071632)))

(declare-fun c!1250426 () Bool)

(assert (=> b!6740809 (= c!1250426 ((_ is Star!16567) (reg!16896 r!7292)))))

(declare-fun b!6740810 () Bool)

(assert (=> b!6740810 (= e!4071629 e!4071631)))

(declare-fun res!2757258 () Bool)

(assert (=> b!6740810 (=> (not res!2757258) (not e!4071631))))

(declare-fun call!609338 () Bool)

(assert (=> b!6740810 (= res!2757258 call!609338)))

(declare-fun bm!609334 () Bool)

(assert (=> bm!609334 (= call!609340 (validRegex!8303 (ite c!1250427 (regTwo!33647 (reg!16896 r!7292)) (regTwo!33646 (reg!16896 r!7292)))))))

(declare-fun b!6740811 () Bool)

(declare-fun res!2757260 () Bool)

(assert (=> b!6740811 (=> (not res!2757260) (not e!4071633))))

(assert (=> b!6740811 (= res!2757260 call!609338)))

(assert (=> b!6740811 (= e!4071630 e!4071633)))

(declare-fun bm!609335 () Bool)

(assert (=> bm!609335 (= call!609338 call!609339)))

(declare-fun d!2117927 () Bool)

(declare-fun res!2757257 () Bool)

(assert (=> d!2117927 (=> res!2757257 e!4071634)))

(assert (=> d!2117927 (= res!2757257 ((_ is ElementMatch!16567) (reg!16896 r!7292)))))

(assert (=> d!2117927 (= (validRegex!8303 (reg!16896 r!7292)) e!4071634)))

(declare-fun bm!609333 () Bool)

(assert (=> bm!609333 (= call!609339 (validRegex!8303 (ite c!1250426 (reg!16896 (reg!16896 r!7292)) (ite c!1250427 (regOne!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292))))))))

(assert (= (and d!2117927 (not res!2757257)) b!6740809))

(assert (= (and b!6740809 c!1250426) b!6740806))

(assert (= (and b!6740809 (not c!1250426)) b!6740804))

(assert (= (and b!6740806 res!2757259) b!6740805))

(assert (= (and b!6740804 c!1250427) b!6740811))

(assert (= (and b!6740804 (not c!1250427)) b!6740807))

(assert (= (and b!6740811 res!2757260) b!6740803))

(assert (= (and b!6740807 (not res!2757256)) b!6740810))

(assert (= (and b!6740810 res!2757258) b!6740808))

(assert (= (or b!6740803 b!6740808) bm!609334))

(assert (= (or b!6740811 b!6740810) bm!609335))

(assert (= (or b!6740805 bm!609335) bm!609333))

(declare-fun m!7497328 () Bool)

(assert (=> b!6740806 m!7497328))

(declare-fun m!7497330 () Bool)

(assert (=> bm!609334 m!7497330))

(declare-fun m!7497332 () Bool)

(assert (=> bm!609333 m!7497332))

(assert (=> d!2117567 d!2117927))

(declare-fun bs!1792346 () Bool)

(declare-fun d!2117929 () Bool)

(assert (= bs!1792346 (and d!2117929 d!2117619)))

(declare-fun lambda!378673 () Int)

(assert (=> bs!1792346 (= lambda!378673 lambda!378626)))

(declare-fun bs!1792347 () Bool)

(assert (= bs!1792347 (and d!2117929 d!2117587)))

(assert (=> bs!1792347 (= lambda!378673 lambda!378610)))

(declare-fun bs!1792348 () Bool)

(assert (= bs!1792348 (and d!2117929 d!2117607)))

(assert (=> bs!1792348 (= lambda!378673 lambda!378623)))

(declare-fun bs!1792349 () Bool)

(assert (= bs!1792349 (and d!2117929 d!2117605)))

(assert (=> bs!1792349 (= lambda!378673 lambda!378616)))

(declare-fun bs!1792350 () Bool)

(assert (= bs!1792350 (and d!2117929 d!2117603)))

(assert (=> bs!1792350 (= lambda!378673 lambda!378615)))

(declare-fun bs!1792351 () Bool)

(assert (= bs!1792351 (and d!2117929 d!2117599)))

(assert (=> bs!1792351 (= lambda!378673 lambda!378614)))

(declare-fun b!6740812 () Bool)

(declare-fun e!4071638 () Regex!16567)

(assert (=> b!6740812 (= e!4071638 (Concat!25412 (h!72324 (t!379697 (exprs!6451 (h!72325 zl!343)))) (generalisedConcat!2164 (t!379697 (t!379697 (exprs!6451 (h!72325 zl!343)))))))))

(declare-fun b!6740813 () Bool)

(assert (=> b!6740813 (= e!4071638 EmptyExpr!16567)))

(declare-fun b!6740814 () Bool)

(declare-fun e!4071637 () Bool)

(assert (=> b!6740814 (= e!4071637 (isEmpty!38222 (t!379697 (t!379697 (exprs!6451 (h!72325 zl!343))))))))

(declare-fun e!4071640 () Bool)

(assert (=> d!2117929 e!4071640))

(declare-fun res!2757262 () Bool)

(assert (=> d!2117929 (=> (not res!2757262) (not e!4071640))))

(declare-fun lt!2439040 () Regex!16567)

(assert (=> d!2117929 (= res!2757262 (validRegex!8303 lt!2439040))))

(declare-fun e!4071639 () Regex!16567)

(assert (=> d!2117929 (= lt!2439040 e!4071639)))

(declare-fun c!1250428 () Bool)

(assert (=> d!2117929 (= c!1250428 e!4071637)))

(declare-fun res!2757261 () Bool)

(assert (=> d!2117929 (=> (not res!2757261) (not e!4071637))))

(assert (=> d!2117929 (= res!2757261 ((_ is Cons!65876) (t!379697 (exprs!6451 (h!72325 zl!343)))))))

(assert (=> d!2117929 (forall!15767 (t!379697 (exprs!6451 (h!72325 zl!343))) lambda!378673)))

(assert (=> d!2117929 (= (generalisedConcat!2164 (t!379697 (exprs!6451 (h!72325 zl!343)))) lt!2439040)))

(declare-fun b!6740815 () Bool)

(declare-fun e!4071635 () Bool)

(assert (=> b!6740815 (= e!4071640 e!4071635)))

(declare-fun c!1250431 () Bool)

(assert (=> b!6740815 (= c!1250431 (isEmpty!38222 (t!379697 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6740816 () Bool)

(assert (=> b!6740816 (= e!4071639 e!4071638)))

(declare-fun c!1250429 () Bool)

(assert (=> b!6740816 (= c!1250429 ((_ is Cons!65876) (t!379697 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6740817 () Bool)

(declare-fun e!4071636 () Bool)

(assert (=> b!6740817 (= e!4071636 (= lt!2439040 (head!13561 (t!379697 (exprs!6451 (h!72325 zl!343))))))))

(declare-fun b!6740818 () Bool)

(assert (=> b!6740818 (= e!4071636 (isConcat!1456 lt!2439040))))

(declare-fun b!6740819 () Bool)

(assert (=> b!6740819 (= e!4071639 (h!72324 (t!379697 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6740820 () Bool)

(assert (=> b!6740820 (= e!4071635 e!4071636)))

(declare-fun c!1250430 () Bool)

(assert (=> b!6740820 (= c!1250430 (isEmpty!38222 (tail!12646 (t!379697 (exprs!6451 (h!72325 zl!343))))))))

(declare-fun b!6740821 () Bool)

(assert (=> b!6740821 (= e!4071635 (isEmptyExpr!1933 lt!2439040))))

(assert (= (and d!2117929 res!2757261) b!6740814))

(assert (= (and d!2117929 c!1250428) b!6740819))

(assert (= (and d!2117929 (not c!1250428)) b!6740816))

(assert (= (and b!6740816 c!1250429) b!6740812))

(assert (= (and b!6740816 (not c!1250429)) b!6740813))

(assert (= (and d!2117929 res!2757262) b!6740815))

(assert (= (and b!6740815 c!1250431) b!6740821))

(assert (= (and b!6740815 (not c!1250431)) b!6740820))

(assert (= (and b!6740820 c!1250430) b!6740817))

(assert (= (and b!6740820 (not c!1250430)) b!6740818))

(declare-fun m!7497334 () Bool)

(assert (=> b!6740820 m!7497334))

(assert (=> b!6740820 m!7497334))

(declare-fun m!7497336 () Bool)

(assert (=> b!6740820 m!7497336))

(declare-fun m!7497338 () Bool)

(assert (=> b!6740814 m!7497338))

(declare-fun m!7497340 () Bool)

(assert (=> b!6740817 m!7497340))

(declare-fun m!7497342 () Bool)

(assert (=> d!2117929 m!7497342))

(declare-fun m!7497344 () Bool)

(assert (=> d!2117929 m!7497344))

(declare-fun m!7497346 () Bool)

(assert (=> b!6740812 m!7497346))

(declare-fun m!7497348 () Bool)

(assert (=> b!6740821 m!7497348))

(assert (=> b!6740815 m!7496602))

(declare-fun m!7497350 () Bool)

(assert (=> b!6740818 m!7497350))

(assert (=> b!6739882 d!2117929))

(declare-fun d!2117931 () Bool)

(declare-fun c!1250434 () Bool)

(assert (=> d!2117931 (= c!1250434 ((_ is Nil!65877) lt!2439010))))

(declare-fun e!4071643 () (InoxSet Context!11902))

(assert (=> d!2117931 (= (content!12803 lt!2439010) e!4071643)))

(declare-fun b!6740826 () Bool)

(assert (=> b!6740826 (= e!4071643 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6740827 () Bool)

(assert (=> b!6740827 (= e!4071643 ((_ map or) (store ((as const (Array Context!11902 Bool)) false) (h!72325 lt!2439010) true) (content!12803 (t!379698 lt!2439010))))))

(assert (= (and d!2117931 c!1250434) b!6740826))

(assert (= (and d!2117931 (not c!1250434)) b!6740827))

(declare-fun m!7497352 () Bool)

(assert (=> b!6740827 m!7497352))

(declare-fun m!7497354 () Bool)

(assert (=> b!6740827 m!7497354))

(assert (=> b!6740145 d!2117931))

(assert (=> d!2117671 d!2117527))

(declare-fun b!6740828 () Bool)

(declare-fun c!1250439 () Bool)

(assert (=> b!6740828 (= c!1250439 ((_ is Star!16567) (h!72324 (exprs!6451 lt!2438913))))))

(declare-fun e!4071649 () (InoxSet Context!11902))

(declare-fun e!4071644 () (InoxSet Context!11902))

(assert (=> b!6740828 (= e!4071649 e!4071644)))

(declare-fun b!6740829 () Bool)

(declare-fun e!4071645 () (InoxSet Context!11902))

(declare-fun call!609345 () (InoxSet Context!11902))

(declare-fun call!609342 () (InoxSet Context!11902))

(assert (=> b!6740829 (= e!4071645 ((_ map or) call!609345 call!609342))))

(declare-fun b!6740830 () Bool)

(declare-fun e!4071647 () Bool)

(assert (=> b!6740830 (= e!4071647 (nullable!6554 (regOne!33646 (h!72324 (exprs!6451 lt!2438913)))))))

(declare-fun d!2117933 () Bool)

(declare-fun c!1250435 () Bool)

(assert (=> d!2117933 (= c!1250435 (and ((_ is ElementMatch!16567) (h!72324 (exprs!6451 lt!2438913))) (= (c!1250093 (h!72324 (exprs!6451 lt!2438913))) (h!72326 s!2326))))))

(declare-fun e!4071648 () (InoxSet Context!11902))

(assert (=> d!2117933 (= (derivationStepZipperDown!1795 (h!72324 (exprs!6451 lt!2438913)) (Context!11903 (t!379697 (exprs!6451 lt!2438913))) (h!72326 s!2326)) e!4071648)))

(declare-fun bm!609336 () Bool)

(declare-fun call!609341 () List!66000)

(declare-fun call!609344 () List!66000)

(assert (=> bm!609336 (= call!609341 call!609344)))

(declare-fun b!6740831 () Bool)

(declare-fun e!4071646 () (InoxSet Context!11902))

(assert (=> b!6740831 (= e!4071648 e!4071646)))

(declare-fun c!1250437 () Bool)

(assert (=> b!6740831 (= c!1250437 ((_ is Union!16567) (h!72324 (exprs!6451 lt!2438913))))))

(declare-fun b!6740832 () Bool)

(assert (=> b!6740832 (= e!4071645 e!4071649)))

(declare-fun c!1250436 () Bool)

(assert (=> b!6740832 (= c!1250436 ((_ is Concat!25412) (h!72324 (exprs!6451 lt!2438913))))))

(declare-fun b!6740833 () Bool)

(declare-fun call!609343 () (InoxSet Context!11902))

(assert (=> b!6740833 (= e!4071649 call!609343)))

(declare-fun bm!609337 () Bool)

(declare-fun c!1250438 () Bool)

(assert (=> bm!609337 (= call!609344 ($colon$colon!2384 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438913)))) (ite (or c!1250438 c!1250436) (regTwo!33646 (h!72324 (exprs!6451 lt!2438913))) (h!72324 (exprs!6451 lt!2438913)))))))

(declare-fun b!6740834 () Bool)

(declare-fun call!609346 () (InoxSet Context!11902))

(assert (=> b!6740834 (= e!4071646 ((_ map or) call!609346 call!609345))))

(declare-fun bm!609338 () Bool)

(assert (=> bm!609338 (= call!609343 call!609342)))

(declare-fun bm!609339 () Bool)

(assert (=> bm!609339 (= call!609346 (derivationStepZipperDown!1795 (ite c!1250437 (regOne!33647 (h!72324 (exprs!6451 lt!2438913))) (ite c!1250438 (regTwo!33646 (h!72324 (exprs!6451 lt!2438913))) (ite c!1250436 (regOne!33646 (h!72324 (exprs!6451 lt!2438913))) (reg!16896 (h!72324 (exprs!6451 lt!2438913)))))) (ite (or c!1250437 c!1250438) (Context!11903 (t!379697 (exprs!6451 lt!2438913))) (Context!11903 call!609341)) (h!72326 s!2326)))))

(declare-fun b!6740835 () Bool)

(assert (=> b!6740835 (= e!4071644 call!609343)))

(declare-fun b!6740836 () Bool)

(assert (=> b!6740836 (= c!1250438 e!4071647)))

(declare-fun res!2757263 () Bool)

(assert (=> b!6740836 (=> (not res!2757263) (not e!4071647))))

(assert (=> b!6740836 (= res!2757263 ((_ is Concat!25412) (h!72324 (exprs!6451 lt!2438913))))))

(assert (=> b!6740836 (= e!4071646 e!4071645)))

(declare-fun bm!609340 () Bool)

(assert (=> bm!609340 (= call!609342 call!609346)))

(declare-fun b!6740837 () Bool)

(assert (=> b!6740837 (= e!4071644 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609341 () Bool)

(assert (=> bm!609341 (= call!609345 (derivationStepZipperDown!1795 (ite c!1250437 (regTwo!33647 (h!72324 (exprs!6451 lt!2438913))) (regOne!33646 (h!72324 (exprs!6451 lt!2438913)))) (ite c!1250437 (Context!11903 (t!379697 (exprs!6451 lt!2438913))) (Context!11903 call!609344)) (h!72326 s!2326)))))

(declare-fun b!6740838 () Bool)

(assert (=> b!6740838 (= e!4071648 (store ((as const (Array Context!11902 Bool)) false) (Context!11903 (t!379697 (exprs!6451 lt!2438913))) true))))

(assert (= (and d!2117933 c!1250435) b!6740838))

(assert (= (and d!2117933 (not c!1250435)) b!6740831))

(assert (= (and b!6740831 c!1250437) b!6740834))

(assert (= (and b!6740831 (not c!1250437)) b!6740836))

(assert (= (and b!6740836 res!2757263) b!6740830))

(assert (= (and b!6740836 c!1250438) b!6740829))

(assert (= (and b!6740836 (not c!1250438)) b!6740832))

(assert (= (and b!6740832 c!1250436) b!6740833))

(assert (= (and b!6740832 (not c!1250436)) b!6740828))

(assert (= (and b!6740828 c!1250439) b!6740835))

(assert (= (and b!6740828 (not c!1250439)) b!6740837))

(assert (= (or b!6740833 b!6740835) bm!609336))

(assert (= (or b!6740833 b!6740835) bm!609338))

(assert (= (or b!6740829 bm!609336) bm!609337))

(assert (= (or b!6740829 bm!609338) bm!609340))

(assert (= (or b!6740834 b!6740829) bm!609341))

(assert (= (or b!6740834 bm!609340) bm!609339))

(declare-fun m!7497356 () Bool)

(assert (=> b!6740830 m!7497356))

(declare-fun m!7497358 () Bool)

(assert (=> b!6740838 m!7497358))

(declare-fun m!7497360 () Bool)

(assert (=> bm!609341 m!7497360))

(declare-fun m!7497362 () Bool)

(assert (=> bm!609339 m!7497362))

(declare-fun m!7497364 () Bool)

(assert (=> bm!609337 m!7497364))

(assert (=> bm!609232 d!2117933))

(declare-fun d!2117935 () Bool)

(assert (=> d!2117935 (= (isEmpty!38218 (tail!12647 s!2326)) ((_ is Nil!65878) (tail!12647 s!2326)))))

(assert (=> b!6740142 d!2117935))

(declare-fun d!2117937 () Bool)

(assert (=> d!2117937 (= (tail!12647 s!2326) (t!379699 s!2326))))

(assert (=> b!6740142 d!2117937))

(declare-fun b!6740839 () Bool)

(declare-fun c!1250444 () Bool)

(assert (=> b!6740839 (= c!1250444 ((_ is Star!16567) (h!72324 (exprs!6451 lt!2438917))))))

(declare-fun e!4071655 () (InoxSet Context!11902))

(declare-fun e!4071650 () (InoxSet Context!11902))

(assert (=> b!6740839 (= e!4071655 e!4071650)))

(declare-fun b!6740840 () Bool)

(declare-fun e!4071651 () (InoxSet Context!11902))

(declare-fun call!609351 () (InoxSet Context!11902))

(declare-fun call!609348 () (InoxSet Context!11902))

(assert (=> b!6740840 (= e!4071651 ((_ map or) call!609351 call!609348))))

(declare-fun b!6740841 () Bool)

(declare-fun e!4071653 () Bool)

(assert (=> b!6740841 (= e!4071653 (nullable!6554 (regOne!33646 (h!72324 (exprs!6451 lt!2438917)))))))

(declare-fun d!2117939 () Bool)

(declare-fun c!1250440 () Bool)

(assert (=> d!2117939 (= c!1250440 (and ((_ is ElementMatch!16567) (h!72324 (exprs!6451 lt!2438917))) (= (c!1250093 (h!72324 (exprs!6451 lt!2438917))) (h!72326 s!2326))))))

(declare-fun e!4071654 () (InoxSet Context!11902))

(assert (=> d!2117939 (= (derivationStepZipperDown!1795 (h!72324 (exprs!6451 lt!2438917)) (Context!11903 (t!379697 (exprs!6451 lt!2438917))) (h!72326 s!2326)) e!4071654)))

(declare-fun bm!609342 () Bool)

(declare-fun call!609347 () List!66000)

(declare-fun call!609350 () List!66000)

(assert (=> bm!609342 (= call!609347 call!609350)))

(declare-fun b!6740842 () Bool)

(declare-fun e!4071652 () (InoxSet Context!11902))

(assert (=> b!6740842 (= e!4071654 e!4071652)))

(declare-fun c!1250442 () Bool)

(assert (=> b!6740842 (= c!1250442 ((_ is Union!16567) (h!72324 (exprs!6451 lt!2438917))))))

(declare-fun b!6740843 () Bool)

(assert (=> b!6740843 (= e!4071651 e!4071655)))

(declare-fun c!1250441 () Bool)

(assert (=> b!6740843 (= c!1250441 ((_ is Concat!25412) (h!72324 (exprs!6451 lt!2438917))))))

(declare-fun b!6740844 () Bool)

(declare-fun call!609349 () (InoxSet Context!11902))

(assert (=> b!6740844 (= e!4071655 call!609349)))

(declare-fun c!1250443 () Bool)

(declare-fun bm!609343 () Bool)

(assert (=> bm!609343 (= call!609350 ($colon$colon!2384 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438917)))) (ite (or c!1250443 c!1250441) (regTwo!33646 (h!72324 (exprs!6451 lt!2438917))) (h!72324 (exprs!6451 lt!2438917)))))))

(declare-fun b!6740845 () Bool)

(declare-fun call!609352 () (InoxSet Context!11902))

(assert (=> b!6740845 (= e!4071652 ((_ map or) call!609352 call!609351))))

(declare-fun bm!609344 () Bool)

(assert (=> bm!609344 (= call!609349 call!609348)))

(declare-fun bm!609345 () Bool)

(assert (=> bm!609345 (= call!609352 (derivationStepZipperDown!1795 (ite c!1250442 (regOne!33647 (h!72324 (exprs!6451 lt!2438917))) (ite c!1250443 (regTwo!33646 (h!72324 (exprs!6451 lt!2438917))) (ite c!1250441 (regOne!33646 (h!72324 (exprs!6451 lt!2438917))) (reg!16896 (h!72324 (exprs!6451 lt!2438917)))))) (ite (or c!1250442 c!1250443) (Context!11903 (t!379697 (exprs!6451 lt!2438917))) (Context!11903 call!609347)) (h!72326 s!2326)))))

(declare-fun b!6740846 () Bool)

(assert (=> b!6740846 (= e!4071650 call!609349)))

(declare-fun b!6740847 () Bool)

(assert (=> b!6740847 (= c!1250443 e!4071653)))

(declare-fun res!2757264 () Bool)

(assert (=> b!6740847 (=> (not res!2757264) (not e!4071653))))

(assert (=> b!6740847 (= res!2757264 ((_ is Concat!25412) (h!72324 (exprs!6451 lt!2438917))))))

(assert (=> b!6740847 (= e!4071652 e!4071651)))

(declare-fun bm!609346 () Bool)

(assert (=> bm!609346 (= call!609348 call!609352)))

(declare-fun b!6740848 () Bool)

(assert (=> b!6740848 (= e!4071650 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609347 () Bool)

(assert (=> bm!609347 (= call!609351 (derivationStepZipperDown!1795 (ite c!1250442 (regTwo!33647 (h!72324 (exprs!6451 lt!2438917))) (regOne!33646 (h!72324 (exprs!6451 lt!2438917)))) (ite c!1250442 (Context!11903 (t!379697 (exprs!6451 lt!2438917))) (Context!11903 call!609350)) (h!72326 s!2326)))))

(declare-fun b!6740849 () Bool)

(assert (=> b!6740849 (= e!4071654 (store ((as const (Array Context!11902 Bool)) false) (Context!11903 (t!379697 (exprs!6451 lt!2438917))) true))))

(assert (= (and d!2117939 c!1250440) b!6740849))

(assert (= (and d!2117939 (not c!1250440)) b!6740842))

(assert (= (and b!6740842 c!1250442) b!6740845))

(assert (= (and b!6740842 (not c!1250442)) b!6740847))

(assert (= (and b!6740847 res!2757264) b!6740841))

(assert (= (and b!6740847 c!1250443) b!6740840))

(assert (= (and b!6740847 (not c!1250443)) b!6740843))

(assert (= (and b!6740843 c!1250441) b!6740844))

(assert (= (and b!6740843 (not c!1250441)) b!6740839))

(assert (= (and b!6740839 c!1250444) b!6740846))

(assert (= (and b!6740839 (not c!1250444)) b!6740848))

(assert (= (or b!6740844 b!6740846) bm!609342))

(assert (= (or b!6740844 b!6740846) bm!609344))

(assert (= (or b!6740840 bm!609342) bm!609343))

(assert (= (or b!6740840 bm!609344) bm!609346))

(assert (= (or b!6740845 b!6740840) bm!609347))

(assert (= (or b!6740845 bm!609346) bm!609345))

(declare-fun m!7497366 () Bool)

(assert (=> b!6740841 m!7497366))

(declare-fun m!7497368 () Bool)

(assert (=> b!6740849 m!7497368))

(declare-fun m!7497370 () Bool)

(assert (=> bm!609347 m!7497370))

(declare-fun m!7497372 () Bool)

(assert (=> bm!609345 m!7497372))

(declare-fun m!7497374 () Bool)

(assert (=> bm!609343 m!7497374))

(assert (=> bm!609206 d!2117939))

(declare-fun d!2117941 () Bool)

(assert (=> d!2117941 true))

(declare-fun setRes!46027 () Bool)

(assert (=> d!2117941 setRes!46027))

(declare-fun condSetEmpty!46027 () Bool)

(declare-fun res!2757267 () (InoxSet Context!11902))

(assert (=> d!2117941 (= condSetEmpty!46027 (= res!2757267 ((as const (Array Context!11902 Bool)) false)))))

(assert (=> d!2117941 (= (choose!50246 z!1189 lambda!378557) res!2757267)))

(declare-fun setIsEmpty!46027 () Bool)

(assert (=> setIsEmpty!46027 setRes!46027))

(declare-fun e!4071658 () Bool)

(declare-fun setNonEmpty!46027 () Bool)

(declare-fun tp!1847945 () Bool)

(declare-fun setElem!46027 () Context!11902)

(assert (=> setNonEmpty!46027 (= setRes!46027 (and tp!1847945 (inv!84664 setElem!46027) e!4071658))))

(declare-fun setRest!46027 () (InoxSet Context!11902))

(assert (=> setNonEmpty!46027 (= res!2757267 ((_ map or) (store ((as const (Array Context!11902 Bool)) false) setElem!46027 true) setRest!46027))))

(declare-fun b!6740852 () Bool)

(declare-fun tp!1847944 () Bool)

(assert (=> b!6740852 (= e!4071658 tp!1847944)))

(assert (= (and d!2117941 condSetEmpty!46027) setIsEmpty!46027))

(assert (= (and d!2117941 (not condSetEmpty!46027)) setNonEmpty!46027))

(assert (= setNonEmpty!46027 b!6740852))

(declare-fun m!7497376 () Bool)

(assert (=> setNonEmpty!46027 m!7497376))

(assert (=> d!2117655 d!2117941))

(declare-fun bs!1792352 () Bool)

(declare-fun d!2117943 () Bool)

(assert (= bs!1792352 (and d!2117943 d!2117619)))

(declare-fun lambda!378674 () Int)

(assert (=> bs!1792352 (= lambda!378674 lambda!378626)))

(declare-fun bs!1792353 () Bool)

(assert (= bs!1792353 (and d!2117943 d!2117587)))

(assert (=> bs!1792353 (= lambda!378674 lambda!378610)))

(declare-fun bs!1792354 () Bool)

(assert (= bs!1792354 (and d!2117943 d!2117607)))

(assert (=> bs!1792354 (= lambda!378674 lambda!378623)))

(declare-fun bs!1792355 () Bool)

(assert (= bs!1792355 (and d!2117943 d!2117605)))

(assert (=> bs!1792355 (= lambda!378674 lambda!378616)))

(declare-fun bs!1792356 () Bool)

(assert (= bs!1792356 (and d!2117943 d!2117603)))

(assert (=> bs!1792356 (= lambda!378674 lambda!378615)))

(declare-fun bs!1792357 () Bool)

(assert (= bs!1792357 (and d!2117943 d!2117599)))

(assert (=> bs!1792357 (= lambda!378674 lambda!378614)))

(declare-fun bs!1792358 () Bool)

(assert (= bs!1792358 (and d!2117943 d!2117929)))

(assert (=> bs!1792358 (= lambda!378674 lambda!378673)))

(assert (=> d!2117943 (= (inv!84664 (h!72325 (t!379698 zl!343))) (forall!15767 (exprs!6451 (h!72325 (t!379698 zl!343))) lambda!378674))))

(declare-fun bs!1792359 () Bool)

(assert (= bs!1792359 d!2117943))

(declare-fun m!7497378 () Bool)

(assert (=> bs!1792359 m!7497378))

(assert (=> b!6740254 d!2117943))

(declare-fun d!2117945 () Bool)

(assert (=> d!2117945 (= ($colon$colon!2384 (exprs!6451 (Context!11903 Nil!65876)) (ite (or c!1250240 c!1250238) (regTwo!33646 r!7292) r!7292)) (Cons!65876 (ite (or c!1250240 c!1250238) (regTwo!33646 r!7292) r!7292) (exprs!6451 (Context!11903 Nil!65876))))))

(assert (=> bm!609197 d!2117945))

(declare-fun b!6740853 () Bool)

(declare-fun e!4071664 () Bool)

(declare-fun call!609355 () Bool)

(assert (=> b!6740853 (= e!4071664 call!609355)))

(declare-fun b!6740854 () Bool)

(declare-fun e!4071663 () Bool)

(declare-fun e!4071661 () Bool)

(assert (=> b!6740854 (= e!4071663 e!4071661)))

(declare-fun c!1250446 () Bool)

(assert (=> b!6740854 (= c!1250446 ((_ is Union!16567) (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))))))

(declare-fun b!6740855 () Bool)

(declare-fun e!4071659 () Bool)

(declare-fun call!609354 () Bool)

(assert (=> b!6740855 (= e!4071659 call!609354)))

(declare-fun b!6740856 () Bool)

(assert (=> b!6740856 (= e!4071663 e!4071659)))

(declare-fun res!2757271 () Bool)

(assert (=> b!6740856 (= res!2757271 (not (nullable!6554 (reg!16896 (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))))))))

(assert (=> b!6740856 (=> (not res!2757271) (not e!4071659))))

(declare-fun b!6740857 () Bool)

(declare-fun res!2757268 () Bool)

(declare-fun e!4071660 () Bool)

(assert (=> b!6740857 (=> res!2757268 e!4071660)))

(assert (=> b!6740857 (= res!2757268 (not ((_ is Concat!25412) (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292)))))))

(assert (=> b!6740857 (= e!4071661 e!4071660)))

(declare-fun b!6740858 () Bool)

(declare-fun e!4071662 () Bool)

(assert (=> b!6740858 (= e!4071662 call!609355)))

(declare-fun b!6740859 () Bool)

(declare-fun e!4071665 () Bool)

(assert (=> b!6740859 (= e!4071665 e!4071663)))

(declare-fun c!1250445 () Bool)

(assert (=> b!6740859 (= c!1250445 ((_ is Star!16567) (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))))))

(declare-fun b!6740860 () Bool)

(assert (=> b!6740860 (= e!4071660 e!4071662)))

(declare-fun res!2757270 () Bool)

(assert (=> b!6740860 (=> (not res!2757270) (not e!4071662))))

(declare-fun call!609353 () Bool)

(assert (=> b!6740860 (= res!2757270 call!609353)))

(declare-fun bm!609349 () Bool)

(assert (=> bm!609349 (= call!609355 (validRegex!8303 (ite c!1250446 (regTwo!33647 (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))) (regTwo!33646 (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))))))))

(declare-fun b!6740861 () Bool)

(declare-fun res!2757272 () Bool)

(assert (=> b!6740861 (=> (not res!2757272) (not e!4071664))))

(assert (=> b!6740861 (= res!2757272 call!609353)))

(assert (=> b!6740861 (= e!4071661 e!4071664)))

(declare-fun bm!609350 () Bool)

(assert (=> bm!609350 (= call!609353 call!609354)))

(declare-fun d!2117947 () Bool)

(declare-fun res!2757269 () Bool)

(assert (=> d!2117947 (=> res!2757269 e!4071665)))

(assert (=> d!2117947 (= res!2757269 ((_ is ElementMatch!16567) (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))))))

(assert (=> d!2117947 (= (validRegex!8303 (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))) e!4071665)))

(declare-fun bm!609348 () Bool)

(assert (=> bm!609348 (= call!609354 (validRegex!8303 (ite c!1250445 (reg!16896 (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))) (ite c!1250446 (regOne!33647 (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292))) (regOne!33646 (ite c!1250282 (regTwo!33647 r!7292) (regTwo!33646 r!7292)))))))))

(assert (= (and d!2117947 (not res!2757269)) b!6740859))

(assert (= (and b!6740859 c!1250445) b!6740856))

(assert (= (and b!6740859 (not c!1250445)) b!6740854))

(assert (= (and b!6740856 res!2757271) b!6740855))

(assert (= (and b!6740854 c!1250446) b!6740861))

(assert (= (and b!6740854 (not c!1250446)) b!6740857))

(assert (= (and b!6740861 res!2757272) b!6740853))

(assert (= (and b!6740857 (not res!2757268)) b!6740860))

(assert (= (and b!6740860 res!2757270) b!6740858))

(assert (= (or b!6740853 b!6740858) bm!609349))

(assert (= (or b!6740861 b!6740860) bm!609350))

(assert (= (or b!6740855 bm!609350) bm!609348))

(declare-fun m!7497380 () Bool)

(assert (=> b!6740856 m!7497380))

(declare-fun m!7497382 () Bool)

(assert (=> bm!609349 m!7497382))

(declare-fun m!7497384 () Bool)

(assert (=> bm!609348 m!7497384))

(assert (=> bm!609224 d!2117947))

(declare-fun b!6740871 () Bool)

(declare-fun e!4071670 () List!66002)

(assert (=> b!6740871 (= e!4071670 (Cons!65878 (h!72326 (_1!36845 (get!22922 lt!2438971))) (++!14723 (t!379699 (_1!36845 (get!22922 lt!2438971))) (_2!36845 (get!22922 lt!2438971)))))))

(declare-fun d!2117949 () Bool)

(declare-fun e!4071671 () Bool)

(assert (=> d!2117949 e!4071671))

(declare-fun res!2757277 () Bool)

(assert (=> d!2117949 (=> (not res!2757277) (not e!4071671))))

(declare-fun lt!2439043 () List!66002)

(declare-fun content!12805 (List!66002) (InoxSet C!33404))

(assert (=> d!2117949 (= res!2757277 (= (content!12805 lt!2439043) ((_ map or) (content!12805 (_1!36845 (get!22922 lt!2438971))) (content!12805 (_2!36845 (get!22922 lt!2438971))))))))

(assert (=> d!2117949 (= lt!2439043 e!4071670)))

(declare-fun c!1250449 () Bool)

(assert (=> d!2117949 (= c!1250449 ((_ is Nil!65878) (_1!36845 (get!22922 lt!2438971))))))

(assert (=> d!2117949 (= (++!14723 (_1!36845 (get!22922 lt!2438971)) (_2!36845 (get!22922 lt!2438971))) lt!2439043)))

(declare-fun b!6740873 () Bool)

(assert (=> b!6740873 (= e!4071671 (or (not (= (_2!36845 (get!22922 lt!2438971)) Nil!65878)) (= lt!2439043 (_1!36845 (get!22922 lt!2438971)))))))

(declare-fun b!6740872 () Bool)

(declare-fun res!2757278 () Bool)

(assert (=> b!6740872 (=> (not res!2757278) (not e!4071671))))

(declare-fun size!40617 (List!66002) Int)

(assert (=> b!6740872 (= res!2757278 (= (size!40617 lt!2439043) (+ (size!40617 (_1!36845 (get!22922 lt!2438971))) (size!40617 (_2!36845 (get!22922 lt!2438971))))))))

(declare-fun b!6740870 () Bool)

(assert (=> b!6740870 (= e!4071670 (_2!36845 (get!22922 lt!2438971)))))

(assert (= (and d!2117949 c!1250449) b!6740870))

(assert (= (and d!2117949 (not c!1250449)) b!6740871))

(assert (= (and d!2117949 res!2757277) b!6740872))

(assert (= (and b!6740872 res!2757278) b!6740873))

(declare-fun m!7497386 () Bool)

(assert (=> b!6740871 m!7497386))

(declare-fun m!7497388 () Bool)

(assert (=> d!2117949 m!7497388))

(declare-fun m!7497390 () Bool)

(assert (=> d!2117949 m!7497390))

(declare-fun m!7497392 () Bool)

(assert (=> d!2117949 m!7497392))

(declare-fun m!7497394 () Bool)

(assert (=> b!6740872 m!7497394))

(declare-fun m!7497396 () Bool)

(assert (=> b!6740872 m!7497396))

(declare-fun m!7497398 () Bool)

(assert (=> b!6740872 m!7497398))

(assert (=> b!6739766 d!2117949))

(declare-fun d!2117951 () Bool)

(assert (=> d!2117951 (= (get!22922 lt!2438971) (v!52653 lt!2438971))))

(assert (=> b!6739766 d!2117951))

(declare-fun d!2117953 () Bool)

(assert (=> d!2117953 (= (Exists!3635 lambda!378587) (choose!50242 lambda!378587))))

(declare-fun bs!1792360 () Bool)

(assert (= bs!1792360 d!2117953))

(declare-fun m!7497400 () Bool)

(assert (=> bs!1792360 m!7497400))

(assert (=> d!2117529 d!2117953))

(declare-fun d!2117955 () Bool)

(assert (=> d!2117955 (= (Exists!3635 lambda!378590) (choose!50242 lambda!378590))))

(declare-fun bs!1792361 () Bool)

(assert (= bs!1792361 d!2117955))

(declare-fun m!7497402 () Bool)

(assert (=> bs!1792361 m!7497402))

(assert (=> d!2117529 d!2117955))

(declare-fun bs!1792362 () Bool)

(declare-fun d!2117957 () Bool)

(assert (= bs!1792362 (and d!2117957 d!2117529)))

(declare-fun lambda!378679 () Int)

(assert (=> bs!1792362 (= lambda!378679 lambda!378587)))

(declare-fun bs!1792363 () Bool)

(assert (= bs!1792363 (and d!2117957 d!2117567)))

(assert (=> bs!1792363 (= lambda!378679 lambda!378603)))

(declare-fun bs!1792364 () Bool)

(assert (= bs!1792364 (and d!2117957 b!6739483)))

(assert (=> bs!1792364 (= lambda!378679 lambda!378554)))

(declare-fun bs!1792365 () Bool)

(assert (= bs!1792365 (and d!2117957 d!2117509)))

(assert (=> bs!1792365 (not (= lambda!378679 lambda!378572))))

(assert (=> bs!1792364 (not (= lambda!378679 lambda!378555))))

(declare-fun bs!1792366 () Bool)

(assert (= bs!1792366 (and d!2117957 b!6740098)))

(assert (=> bs!1792366 (not (= lambda!378679 lambda!378636))))

(assert (=> bs!1792364 (not (= lambda!378679 lambda!378556))))

(assert (=> bs!1792365 (= (= r!7292 (Star!16567 (reg!16896 r!7292))) (= lambda!378679 lambda!378571))))

(assert (=> bs!1792362 (not (= lambda!378679 lambda!378590))))

(declare-fun bs!1792367 () Bool)

(assert (= bs!1792367 (and d!2117957 d!2117913)))

(assert (=> bs!1792367 (= lambda!378679 lambda!378672)))

(declare-fun bs!1792368 () Bool)

(assert (= bs!1792368 (and d!2117957 b!6740096)))

(assert (=> bs!1792368 (not (= lambda!378679 lambda!378635))))

(assert (=> d!2117957 true))

(assert (=> d!2117957 true))

(assert (=> d!2117957 true))

(declare-fun lambda!378680 () Int)

(assert (=> bs!1792362 (not (= lambda!378680 lambda!378587))))

(assert (=> bs!1792363 (not (= lambda!378680 lambda!378603))))

(declare-fun bs!1792369 () Bool)

(assert (= bs!1792369 d!2117957))

(assert (=> bs!1792369 (not (= lambda!378680 lambda!378679))))

(assert (=> bs!1792364 (not (= lambda!378680 lambda!378554))))

(assert (=> bs!1792365 (not (= lambda!378680 lambda!378572))))

(assert (=> bs!1792364 (not (= lambda!378680 lambda!378555))))

(assert (=> bs!1792366 (= (and (= (reg!16896 r!7292) (regOne!33646 r!7292)) (= r!7292 (regTwo!33646 r!7292))) (= lambda!378680 lambda!378636))))

(assert (=> bs!1792364 (= lambda!378680 lambda!378556)))

(assert (=> bs!1792365 (not (= lambda!378680 lambda!378571))))

(assert (=> bs!1792362 (= lambda!378680 lambda!378590)))

(assert (=> bs!1792367 (not (= lambda!378680 lambda!378672))))

(assert (=> bs!1792368 (not (= lambda!378680 lambda!378635))))

(assert (=> d!2117957 true))

(assert (=> d!2117957 true))

(assert (=> d!2117957 true))

(assert (=> d!2117957 (= (Exists!3635 lambda!378679) (Exists!3635 lambda!378680))))

(assert (=> d!2117957 true))

(declare-fun _$90!2602 () Unit!159825)

(assert (=> d!2117957 (= (choose!50244 (reg!16896 r!7292) r!7292 s!2326) _$90!2602)))

(declare-fun m!7497404 () Bool)

(assert (=> bs!1792369 m!7497404))

(declare-fun m!7497406 () Bool)

(assert (=> bs!1792369 m!7497406))

(assert (=> d!2117529 d!2117957))

(assert (=> d!2117529 d!2117927))

(declare-fun d!2117959 () Bool)

(assert (=> d!2117959 true))

(declare-fun setRes!46028 () Bool)

(assert (=> d!2117959 setRes!46028))

(declare-fun condSetEmpty!46028 () Bool)

(declare-fun res!2757287 () (InoxSet Context!11902))

(assert (=> d!2117959 (= condSetEmpty!46028 (= res!2757287 ((as const (Array Context!11902 Bool)) false)))))

(assert (=> d!2117959 (= (choose!50246 lt!2438906 lambda!378557) res!2757287)))

(declare-fun setIsEmpty!46028 () Bool)

(assert (=> setIsEmpty!46028 setRes!46028))

(declare-fun setElem!46028 () Context!11902)

(declare-fun tp!1847947 () Bool)

(declare-fun setNonEmpty!46028 () Bool)

(declare-fun e!4071676 () Bool)

(assert (=> setNonEmpty!46028 (= setRes!46028 (and tp!1847947 (inv!84664 setElem!46028) e!4071676))))

(declare-fun setRest!46028 () (InoxSet Context!11902))

(assert (=> setNonEmpty!46028 (= res!2757287 ((_ map or) (store ((as const (Array Context!11902 Bool)) false) setElem!46028 true) setRest!46028))))

(declare-fun b!6740882 () Bool)

(declare-fun tp!1847946 () Bool)

(assert (=> b!6740882 (= e!4071676 tp!1847946)))

(assert (= (and d!2117959 condSetEmpty!46028) setIsEmpty!46028))

(assert (= (and d!2117959 (not condSetEmpty!46028)) setNonEmpty!46028))

(assert (= setNonEmpty!46028 b!6740882))

(declare-fun m!7497408 () Bool)

(assert (=> setNonEmpty!46028 m!7497408))

(assert (=> d!2117633 d!2117959))

(assert (=> bs!1792159 d!2117657))

(declare-fun d!2117961 () Bool)

(declare-fun res!2757292 () Bool)

(declare-fun e!4071681 () Bool)

(assert (=> d!2117961 (=> res!2757292 e!4071681)))

(assert (=> d!2117961 (= res!2757292 ((_ is Nil!65876) (exprs!6451 lt!2438907)))))

(assert (=> d!2117961 (= (forall!15767 (exprs!6451 lt!2438907) lambda!378614) e!4071681)))

(declare-fun b!6740887 () Bool)

(declare-fun e!4071682 () Bool)

(assert (=> b!6740887 (= e!4071681 e!4071682)))

(declare-fun res!2757293 () Bool)

(assert (=> b!6740887 (=> (not res!2757293) (not e!4071682))))

(declare-fun dynLambda!26286 (Int Regex!16567) Bool)

(assert (=> b!6740887 (= res!2757293 (dynLambda!26286 lambda!378614 (h!72324 (exprs!6451 lt!2438907))))))

(declare-fun b!6740888 () Bool)

(assert (=> b!6740888 (= e!4071682 (forall!15767 (t!379697 (exprs!6451 lt!2438907)) lambda!378614))))

(assert (= (and d!2117961 (not res!2757292)) b!6740887))

(assert (= (and b!6740887 res!2757293) b!6740888))

(declare-fun b_lambda!253859 () Bool)

(assert (=> (not b_lambda!253859) (not b!6740887)))

(declare-fun m!7497410 () Bool)

(assert (=> b!6740887 m!7497410))

(declare-fun m!7497412 () Bool)

(assert (=> b!6740888 m!7497412))

(assert (=> d!2117599 d!2117961))

(assert (=> b!6739996 d!2117587))

(declare-fun bs!1792370 () Bool)

(declare-fun d!2117963 () Bool)

(assert (= bs!1792370 (and d!2117963 d!2117619)))

(declare-fun lambda!378681 () Int)

(assert (=> bs!1792370 (= lambda!378681 lambda!378626)))

(declare-fun bs!1792371 () Bool)

(assert (= bs!1792371 (and d!2117963 d!2117587)))

(assert (=> bs!1792371 (= lambda!378681 lambda!378610)))

(declare-fun bs!1792372 () Bool)

(assert (= bs!1792372 (and d!2117963 d!2117607)))

(assert (=> bs!1792372 (= lambda!378681 lambda!378623)))

(declare-fun bs!1792373 () Bool)

(assert (= bs!1792373 (and d!2117963 d!2117605)))

(assert (=> bs!1792373 (= lambda!378681 lambda!378616)))

(declare-fun bs!1792374 () Bool)

(assert (= bs!1792374 (and d!2117963 d!2117603)))

(assert (=> bs!1792374 (= lambda!378681 lambda!378615)))

(declare-fun bs!1792375 () Bool)

(assert (= bs!1792375 (and d!2117963 d!2117599)))

(assert (=> bs!1792375 (= lambda!378681 lambda!378614)))

(declare-fun bs!1792376 () Bool)

(assert (= bs!1792376 (and d!2117963 d!2117943)))

(assert (=> bs!1792376 (= lambda!378681 lambda!378674)))

(declare-fun bs!1792377 () Bool)

(assert (= bs!1792377 (and d!2117963 d!2117929)))

(assert (=> bs!1792377 (= lambda!378681 lambda!378673)))

(declare-fun lt!2439044 () List!66000)

(assert (=> d!2117963 (forall!15767 lt!2439044 lambda!378681)))

(declare-fun e!4071683 () List!66000)

(assert (=> d!2117963 (= lt!2439044 e!4071683)))

(declare-fun c!1250450 () Bool)

(assert (=> d!2117963 (= c!1250450 ((_ is Cons!65877) (t!379698 zl!343)))))

(assert (=> d!2117963 (= (unfocusZipperList!1988 (t!379698 zl!343)) lt!2439044)))

(declare-fun b!6740889 () Bool)

(assert (=> b!6740889 (= e!4071683 (Cons!65876 (generalisedConcat!2164 (exprs!6451 (h!72325 (t!379698 zl!343)))) (unfocusZipperList!1988 (t!379698 (t!379698 zl!343)))))))

(declare-fun b!6740890 () Bool)

(assert (=> b!6740890 (= e!4071683 Nil!65876)))

(assert (= (and d!2117963 c!1250450) b!6740889))

(assert (= (and d!2117963 (not c!1250450)) b!6740890))

(declare-fun m!7497414 () Bool)

(assert (=> d!2117963 m!7497414))

(declare-fun m!7497416 () Bool)

(assert (=> b!6740889 m!7497416))

(declare-fun m!7497418 () Bool)

(assert (=> b!6740889 m!7497418))

(assert (=> b!6739996 d!2117963))

(declare-fun d!2117965 () Bool)

(declare-fun res!2757294 () Bool)

(declare-fun e!4071684 () Bool)

(assert (=> d!2117965 (=> res!2757294 e!4071684)))

(assert (=> d!2117965 (= res!2757294 ((_ is Nil!65876) lt!2438997))))

(assert (=> d!2117965 (= (forall!15767 lt!2438997 lambda!378626) e!4071684)))

(declare-fun b!6740891 () Bool)

(declare-fun e!4071685 () Bool)

(assert (=> b!6740891 (= e!4071684 e!4071685)))

(declare-fun res!2757295 () Bool)

(assert (=> b!6740891 (=> (not res!2757295) (not e!4071685))))

(assert (=> b!6740891 (= res!2757295 (dynLambda!26286 lambda!378626 (h!72324 lt!2438997)))))

(declare-fun b!6740892 () Bool)

(assert (=> b!6740892 (= e!4071685 (forall!15767 (t!379697 lt!2438997) lambda!378626))))

(assert (= (and d!2117965 (not res!2757294)) b!6740891))

(assert (= (and b!6740891 res!2757295) b!6740892))

(declare-fun b_lambda!253861 () Bool)

(assert (=> (not b_lambda!253861) (not b!6740891)))

(declare-fun m!7497420 () Bool)

(assert (=> b!6740891 m!7497420))

(declare-fun m!7497422 () Bool)

(assert (=> b!6740892 m!7497422))

(assert (=> d!2117619 d!2117965))

(declare-fun b!6740893 () Bool)

(declare-fun c!1250455 () Bool)

(assert (=> b!6740893 (= c!1250455 ((_ is Star!16567) (h!72324 (exprs!6451 lt!2438907))))))

(declare-fun e!4071691 () (InoxSet Context!11902))

(declare-fun e!4071686 () (InoxSet Context!11902))

(assert (=> b!6740893 (= e!4071691 e!4071686)))

(declare-fun b!6740894 () Bool)

(declare-fun e!4071687 () (InoxSet Context!11902))

(declare-fun call!609360 () (InoxSet Context!11902))

(declare-fun call!609357 () (InoxSet Context!11902))

(assert (=> b!6740894 (= e!4071687 ((_ map or) call!609360 call!609357))))

(declare-fun b!6740895 () Bool)

(declare-fun e!4071689 () Bool)

(assert (=> b!6740895 (= e!4071689 (nullable!6554 (regOne!33646 (h!72324 (exprs!6451 lt!2438907)))))))

(declare-fun d!2117967 () Bool)

(declare-fun c!1250451 () Bool)

(assert (=> d!2117967 (= c!1250451 (and ((_ is ElementMatch!16567) (h!72324 (exprs!6451 lt!2438907))) (= (c!1250093 (h!72324 (exprs!6451 lt!2438907))) (h!72326 s!2326))))))

(declare-fun e!4071690 () (InoxSet Context!11902))

(assert (=> d!2117967 (= (derivationStepZipperDown!1795 (h!72324 (exprs!6451 lt!2438907)) (Context!11903 (t!379697 (exprs!6451 lt!2438907))) (h!72326 s!2326)) e!4071690)))

(declare-fun bm!609351 () Bool)

(declare-fun call!609356 () List!66000)

(declare-fun call!609359 () List!66000)

(assert (=> bm!609351 (= call!609356 call!609359)))

(declare-fun b!6740896 () Bool)

(declare-fun e!4071688 () (InoxSet Context!11902))

(assert (=> b!6740896 (= e!4071690 e!4071688)))

(declare-fun c!1250453 () Bool)

(assert (=> b!6740896 (= c!1250453 ((_ is Union!16567) (h!72324 (exprs!6451 lt!2438907))))))

(declare-fun b!6740897 () Bool)

(assert (=> b!6740897 (= e!4071687 e!4071691)))

(declare-fun c!1250452 () Bool)

(assert (=> b!6740897 (= c!1250452 ((_ is Concat!25412) (h!72324 (exprs!6451 lt!2438907))))))

(declare-fun b!6740898 () Bool)

(declare-fun call!609358 () (InoxSet Context!11902))

(assert (=> b!6740898 (= e!4071691 call!609358)))

(declare-fun c!1250454 () Bool)

(declare-fun bm!609352 () Bool)

(assert (=> bm!609352 (= call!609359 ($colon$colon!2384 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438907)))) (ite (or c!1250454 c!1250452) (regTwo!33646 (h!72324 (exprs!6451 lt!2438907))) (h!72324 (exprs!6451 lt!2438907)))))))

(declare-fun b!6740899 () Bool)

(declare-fun call!609361 () (InoxSet Context!11902))

(assert (=> b!6740899 (= e!4071688 ((_ map or) call!609361 call!609360))))

(declare-fun bm!609353 () Bool)

(assert (=> bm!609353 (= call!609358 call!609357)))

(declare-fun bm!609354 () Bool)

(assert (=> bm!609354 (= call!609361 (derivationStepZipperDown!1795 (ite c!1250453 (regOne!33647 (h!72324 (exprs!6451 lt!2438907))) (ite c!1250454 (regTwo!33646 (h!72324 (exprs!6451 lt!2438907))) (ite c!1250452 (regOne!33646 (h!72324 (exprs!6451 lt!2438907))) (reg!16896 (h!72324 (exprs!6451 lt!2438907)))))) (ite (or c!1250453 c!1250454) (Context!11903 (t!379697 (exprs!6451 lt!2438907))) (Context!11903 call!609356)) (h!72326 s!2326)))))

(declare-fun b!6740900 () Bool)

(assert (=> b!6740900 (= e!4071686 call!609358)))

(declare-fun b!6740901 () Bool)

(assert (=> b!6740901 (= c!1250454 e!4071689)))

(declare-fun res!2757296 () Bool)

(assert (=> b!6740901 (=> (not res!2757296) (not e!4071689))))

(assert (=> b!6740901 (= res!2757296 ((_ is Concat!25412) (h!72324 (exprs!6451 lt!2438907))))))

(assert (=> b!6740901 (= e!4071688 e!4071687)))

(declare-fun bm!609355 () Bool)

(assert (=> bm!609355 (= call!609357 call!609361)))

(declare-fun b!6740902 () Bool)

(assert (=> b!6740902 (= e!4071686 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609356 () Bool)

(assert (=> bm!609356 (= call!609360 (derivationStepZipperDown!1795 (ite c!1250453 (regTwo!33647 (h!72324 (exprs!6451 lt!2438907))) (regOne!33646 (h!72324 (exprs!6451 lt!2438907)))) (ite c!1250453 (Context!11903 (t!379697 (exprs!6451 lt!2438907))) (Context!11903 call!609359)) (h!72326 s!2326)))))

(declare-fun b!6740903 () Bool)

(assert (=> b!6740903 (= e!4071690 (store ((as const (Array Context!11902 Bool)) false) (Context!11903 (t!379697 (exprs!6451 lt!2438907))) true))))

(assert (= (and d!2117967 c!1250451) b!6740903))

(assert (= (and d!2117967 (not c!1250451)) b!6740896))

(assert (= (and b!6740896 c!1250453) b!6740899))

(assert (= (and b!6740896 (not c!1250453)) b!6740901))

(assert (= (and b!6740901 res!2757296) b!6740895))

(assert (= (and b!6740901 c!1250454) b!6740894))

(assert (= (and b!6740901 (not c!1250454)) b!6740897))

(assert (= (and b!6740897 c!1250452) b!6740898))

(assert (= (and b!6740897 (not c!1250452)) b!6740893))

(assert (= (and b!6740893 c!1250455) b!6740900))

(assert (= (and b!6740893 (not c!1250455)) b!6740902))

(assert (= (or b!6740898 b!6740900) bm!609351))

(assert (= (or b!6740898 b!6740900) bm!609353))

(assert (= (or b!6740894 bm!609351) bm!609352))

(assert (= (or b!6740894 bm!609353) bm!609355))

(assert (= (or b!6740899 b!6740894) bm!609356))

(assert (= (or b!6740899 bm!609355) bm!609354))

(declare-fun m!7497424 () Bool)

(assert (=> b!6740895 m!7497424))

(declare-fun m!7497426 () Bool)

(assert (=> b!6740903 m!7497426))

(declare-fun m!7497428 () Bool)

(assert (=> bm!609356 m!7497428))

(declare-fun m!7497430 () Bool)

(assert (=> bm!609354 m!7497430))

(declare-fun m!7497432 () Bool)

(assert (=> bm!609352 m!7497432))

(assert (=> bm!609205 d!2117967))

(declare-fun d!2117969 () Bool)

(assert (=> d!2117969 (= (flatMap!2048 z!1189 lambda!378629) (choose!50246 z!1189 lambda!378629))))

(declare-fun bs!1792378 () Bool)

(assert (= bs!1792378 d!2117969))

(declare-fun m!7497434 () Bool)

(assert (=> bs!1792378 m!7497434))

(assert (=> d!2117625 d!2117969))

(declare-fun d!2117971 () Bool)

(assert (=> d!2117971 (= (head!13561 (exprs!6451 (h!72325 zl!343))) (h!72324 (exprs!6451 (h!72325 zl!343))))))

(assert (=> b!6739887 d!2117971))

(declare-fun d!2117973 () Bool)

(assert (=> d!2117973 (= (isEmptyExpr!1933 lt!2438987) ((_ is EmptyExpr!16567) lt!2438987))))

(assert (=> b!6739891 d!2117973))

(declare-fun d!2117975 () Bool)

(assert (=> d!2117975 (= (isEmpty!38222 (t!379697 (unfocusZipperList!1988 zl!343))) ((_ is Nil!65876) (t!379697 (unfocusZipperList!1988 zl!343))))))

(assert (=> b!6739981 d!2117975))

(declare-fun d!2117977 () Bool)

(assert (=> d!2117977 (= (head!13562 s!2326) (h!72326 s!2326))))

(assert (=> b!6740139 d!2117977))

(declare-fun d!2117979 () Bool)

(assert (=> d!2117979 (= (isDefined!13157 lt!2438971) (not (isEmpty!38221 lt!2438971)))))

(declare-fun bs!1792379 () Bool)

(assert (= bs!1792379 d!2117979))

(declare-fun m!7497436 () Bool)

(assert (=> bs!1792379 m!7497436))

(assert (=> b!6739771 d!2117979))

(assert (=> d!2117659 d!2117655))

(declare-fun d!2117981 () Bool)

(assert (=> d!2117981 (= (flatMap!2048 z!1189 lambda!378557) (dynLambda!26284 lambda!378557 (h!72325 zl!343)))))

(assert (=> d!2117981 true))

(declare-fun _$13!4082 () Unit!159825)

(assert (=> d!2117981 (= (choose!50247 z!1189 (h!72325 zl!343) lambda!378557) _$13!4082)))

(declare-fun b_lambda!253863 () Bool)

(assert (=> (not b_lambda!253863) (not d!2117981)))

(declare-fun bs!1792380 () Bool)

(assert (= bs!1792380 d!2117981))

(assert (=> bs!1792380 m!7496284))

(assert (=> bs!1792380 m!7496764))

(assert (=> d!2117659 d!2117981))

(declare-fun d!2117983 () Bool)

(assert (=> d!2117983 (= (flatMap!2048 lt!2438916 lambda!378637) (choose!50246 lt!2438916 lambda!378637))))

(declare-fun bs!1792381 () Bool)

(assert (= bs!1792381 d!2117983))

(declare-fun m!7497438 () Bool)

(assert (=> bs!1792381 m!7497438))

(assert (=> d!2117675 d!2117983))

(declare-fun b!6740904 () Bool)

(declare-fun e!4071694 () (InoxSet Context!11902))

(declare-fun call!609362 () (InoxSet Context!11902))

(assert (=> b!6740904 (= e!4071694 call!609362)))

(declare-fun b!6740905 () Bool)

(declare-fun e!4071693 () (InoxSet Context!11902))

(assert (=> b!6740905 (= e!4071693 ((_ map or) call!609362 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))))) (h!72326 s!2326))))))

(declare-fun b!6740906 () Bool)

(assert (=> b!6740906 (= e!4071693 e!4071694)))

(declare-fun c!1250456 () Bool)

(assert (=> b!6740906 (= c!1250456 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))))))

(declare-fun d!2117985 () Bool)

(declare-fun c!1250457 () Bool)

(declare-fun e!4071692 () Bool)

(assert (=> d!2117985 (= c!1250457 e!4071692)))

(declare-fun res!2757297 () Bool)

(assert (=> d!2117985 (=> (not res!2757297) (not e!4071692))))

(assert (=> d!2117985 (= res!2757297 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))))))

(assert (=> d!2117985 (= (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (h!72326 s!2326)) e!4071693)))

(declare-fun bm!609357 () Bool)

(assert (=> bm!609357 (= call!609362 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))))) (h!72326 s!2326)))))

(declare-fun b!6740907 () Bool)

(assert (=> b!6740907 (= e!4071694 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6740908 () Bool)

(assert (=> b!6740908 (= e!4071692 (nullable!6554 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))))))))

(assert (= (and d!2117985 res!2757297) b!6740908))

(assert (= (and d!2117985 c!1250457) b!6740905))

(assert (= (and d!2117985 (not c!1250457)) b!6740906))

(assert (= (and b!6740906 c!1250456) b!6740904))

(assert (= (and b!6740906 (not c!1250456)) b!6740907))

(assert (= (or b!6740905 b!6740904) bm!609357))

(declare-fun m!7497440 () Bool)

(assert (=> b!6740905 m!7497440))

(declare-fun m!7497442 () Bool)

(assert (=> bm!609357 m!7497442))

(declare-fun m!7497444 () Bool)

(assert (=> b!6740908 m!7497444))

(assert (=> b!6740042 d!2117985))

(declare-fun d!2117987 () Bool)

(assert (=> d!2117987 (= (Exists!3635 (ite c!1250265 lambda!378635 lambda!378636)) (choose!50242 (ite c!1250265 lambda!378635 lambda!378636)))))

(declare-fun bs!1792382 () Bool)

(assert (= bs!1792382 d!2117987))

(declare-fun m!7497446 () Bool)

(assert (=> bs!1792382 m!7497446))

(assert (=> bm!609211 d!2117987))

(declare-fun d!2117989 () Bool)

(declare-fun nullableFct!2468 (Regex!16567) Bool)

(assert (=> d!2117989 (= (nullable!6554 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (nullableFct!2468 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))))

(declare-fun bs!1792383 () Bool)

(assert (= bs!1792383 d!2117989))

(declare-fun m!7497448 () Bool)

(assert (=> bs!1792383 m!7497448))

(assert (=> b!6740045 d!2117989))

(assert (=> d!2117645 d!2117643))

(assert (=> d!2117645 d!2117641))

(declare-fun d!2117991 () Bool)

(assert (=> d!2117991 (= (matchR!8750 r!7292 s!2326) (matchRSpec!3668 r!7292 s!2326))))

(assert (=> d!2117991 true))

(declare-fun _$88!5504 () Unit!159825)

(assert (=> d!2117991 (= (choose!50248 r!7292 s!2326) _$88!5504)))

(declare-fun bs!1792384 () Bool)

(assert (= bs!1792384 d!2117991))

(assert (=> bs!1792384 m!7496274))

(assert (=> bs!1792384 m!7496272))

(assert (=> d!2117645 d!2117991))

(assert (=> d!2117645 d!2117661))

(assert (=> d!2117635 d!2117627))

(declare-fun d!2117993 () Bool)

(assert (=> d!2117993 (= (flatMap!2048 lt!2438924 lambda!378557) (dynLambda!26284 lambda!378557 lt!2438907))))

(assert (=> d!2117993 true))

(declare-fun _$13!4083 () Unit!159825)

(assert (=> d!2117993 (= (choose!50247 lt!2438924 lt!2438907 lambda!378557) _$13!4083)))

(declare-fun b_lambda!253865 () Bool)

(assert (=> (not b_lambda!253865) (not d!2117993)))

(declare-fun bs!1792385 () Bool)

(assert (= bs!1792385 d!2117993))

(assert (=> bs!1792385 m!7496316))

(assert (=> bs!1792385 m!7496710))

(assert (=> d!2117635 d!2117993))

(declare-fun d!2117995 () Bool)

(assert (=> d!2117995 (= (isEmpty!38222 (tail!12646 (unfocusZipperList!1988 zl!343))) ((_ is Nil!65876) (tail!12646 (unfocusZipperList!1988 zl!343))))))

(assert (=> b!6739986 d!2117995))

(declare-fun d!2117997 () Bool)

(assert (=> d!2117997 (= (tail!12646 (unfocusZipperList!1988 zl!343)) (t!379697 (unfocusZipperList!1988 zl!343)))))

(assert (=> b!6739986 d!2117997))

(declare-fun bs!1792386 () Bool)

(declare-fun b!6740915 () Bool)

(assert (= bs!1792386 (and b!6740915 d!2117529)))

(declare-fun lambda!378682 () Int)

(assert (=> bs!1792386 (not (= lambda!378682 lambda!378587))))

(declare-fun bs!1792387 () Bool)

(assert (= bs!1792387 (and b!6740915 d!2117567)))

(assert (=> bs!1792387 (not (= lambda!378682 lambda!378603))))

(declare-fun bs!1792388 () Bool)

(assert (= bs!1792388 (and b!6740915 d!2117957)))

(assert (=> bs!1792388 (not (= lambda!378682 lambda!378679))))

(declare-fun bs!1792389 () Bool)

(assert (= bs!1792389 (and b!6740915 b!6739483)))

(assert (=> bs!1792389 (not (= lambda!378682 lambda!378554))))

(assert (=> bs!1792388 (not (= lambda!378682 lambda!378680))))

(declare-fun bs!1792390 () Bool)

(assert (= bs!1792390 (and b!6740915 d!2117509)))

(assert (=> bs!1792390 (= (and (= (reg!16896 (regOne!33647 r!7292)) (reg!16896 r!7292)) (= (regOne!33647 r!7292) (Star!16567 (reg!16896 r!7292)))) (= lambda!378682 lambda!378572))))

(assert (=> bs!1792389 (= (and (= (reg!16896 (regOne!33647 r!7292)) (reg!16896 r!7292)) (= (regOne!33647 r!7292) r!7292)) (= lambda!378682 lambda!378555))))

(declare-fun bs!1792391 () Bool)

(assert (= bs!1792391 (and b!6740915 b!6740098)))

(assert (=> bs!1792391 (not (= lambda!378682 lambda!378636))))

(assert (=> bs!1792389 (not (= lambda!378682 lambda!378556))))

(assert (=> bs!1792390 (not (= lambda!378682 lambda!378571))))

(assert (=> bs!1792386 (not (= lambda!378682 lambda!378590))))

(declare-fun bs!1792392 () Bool)

(assert (= bs!1792392 (and b!6740915 d!2117913)))

(assert (=> bs!1792392 (not (= lambda!378682 lambda!378672))))

(declare-fun bs!1792393 () Bool)

(assert (= bs!1792393 (and b!6740915 b!6740096)))

(assert (=> bs!1792393 (= (and (= (reg!16896 (regOne!33647 r!7292)) (reg!16896 r!7292)) (= (regOne!33647 r!7292) r!7292)) (= lambda!378682 lambda!378635))))

(assert (=> b!6740915 true))

(assert (=> b!6740915 true))

(declare-fun bs!1792394 () Bool)

(declare-fun b!6740917 () Bool)

(assert (= bs!1792394 (and b!6740917 d!2117529)))

(declare-fun lambda!378683 () Int)

(assert (=> bs!1792394 (not (= lambda!378683 lambda!378587))))

(declare-fun bs!1792395 () Bool)

(assert (= bs!1792395 (and b!6740917 d!2117567)))

(assert (=> bs!1792395 (not (= lambda!378683 lambda!378603))))

(declare-fun bs!1792396 () Bool)

(assert (= bs!1792396 (and b!6740917 d!2117957)))

(assert (=> bs!1792396 (not (= lambda!378683 lambda!378679))))

(declare-fun bs!1792397 () Bool)

(assert (= bs!1792397 (and b!6740917 b!6739483)))

(assert (=> bs!1792397 (not (= lambda!378683 lambda!378554))))

(declare-fun bs!1792398 () Bool)

(assert (= bs!1792398 (and b!6740917 b!6740915)))

(assert (=> bs!1792398 (not (= lambda!378683 lambda!378682))))

(assert (=> bs!1792396 (= (and (= (regOne!33646 (regOne!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33646 (regOne!33647 r!7292)) r!7292)) (= lambda!378683 lambda!378680))))

(declare-fun bs!1792399 () Bool)

(assert (= bs!1792399 (and b!6740917 d!2117509)))

(assert (=> bs!1792399 (not (= lambda!378683 lambda!378572))))

(assert (=> bs!1792397 (not (= lambda!378683 lambda!378555))))

(declare-fun bs!1792400 () Bool)

(assert (= bs!1792400 (and b!6740917 b!6740098)))

(assert (=> bs!1792400 (= (and (= (regOne!33646 (regOne!33647 r!7292)) (regOne!33646 r!7292)) (= (regTwo!33646 (regOne!33647 r!7292)) (regTwo!33646 r!7292))) (= lambda!378683 lambda!378636))))

(assert (=> bs!1792397 (= (and (= (regOne!33646 (regOne!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33646 (regOne!33647 r!7292)) r!7292)) (= lambda!378683 lambda!378556))))

(assert (=> bs!1792399 (not (= lambda!378683 lambda!378571))))

(assert (=> bs!1792394 (= (and (= (regOne!33646 (regOne!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33646 (regOne!33647 r!7292)) r!7292)) (= lambda!378683 lambda!378590))))

(declare-fun bs!1792401 () Bool)

(assert (= bs!1792401 (and b!6740917 d!2117913)))

(assert (=> bs!1792401 (not (= lambda!378683 lambda!378672))))

(declare-fun bs!1792402 () Bool)

(assert (= bs!1792402 (and b!6740917 b!6740096)))

(assert (=> bs!1792402 (not (= lambda!378683 lambda!378635))))

(assert (=> b!6740917 true))

(assert (=> b!6740917 true))

(declare-fun b!6740909 () Bool)

(declare-fun e!4071700 () Bool)

(declare-fun call!609364 () Bool)

(assert (=> b!6740909 (= e!4071700 call!609364)))

(declare-fun b!6740910 () Bool)

(declare-fun e!4071695 () Bool)

(assert (=> b!6740910 (= e!4071695 (= s!2326 (Cons!65878 (c!1250093 (regOne!33647 r!7292)) Nil!65878)))))

(declare-fun d!2117999 () Bool)

(declare-fun c!1250460 () Bool)

(assert (=> d!2117999 (= c!1250460 ((_ is EmptyExpr!16567) (regOne!33647 r!7292)))))

(assert (=> d!2117999 (= (matchRSpec!3668 (regOne!33647 r!7292) s!2326) e!4071700)))

(declare-fun b!6740911 () Bool)

(declare-fun e!4071697 () Bool)

(assert (=> b!6740911 (= e!4071697 (matchRSpec!3668 (regTwo!33647 (regOne!33647 r!7292)) s!2326))))

(declare-fun b!6740912 () Bool)

(declare-fun e!4071696 () Bool)

(assert (=> b!6740912 (= e!4071700 e!4071696)))

(declare-fun res!2757299 () Bool)

(assert (=> b!6740912 (= res!2757299 (not ((_ is EmptyLang!16567) (regOne!33647 r!7292))))))

(assert (=> b!6740912 (=> (not res!2757299) (not e!4071696))))

(declare-fun b!6740913 () Bool)

(declare-fun e!4071699 () Bool)

(assert (=> b!6740913 (= e!4071699 e!4071697)))

(declare-fun res!2757300 () Bool)

(assert (=> b!6740913 (= res!2757300 (matchRSpec!3668 (regOne!33647 (regOne!33647 r!7292)) s!2326))))

(assert (=> b!6740913 (=> res!2757300 e!4071697)))

(declare-fun b!6740914 () Bool)

(declare-fun e!4071701 () Bool)

(assert (=> b!6740914 (= e!4071699 e!4071701)))

(declare-fun c!1250461 () Bool)

(assert (=> b!6740914 (= c!1250461 ((_ is Star!16567) (regOne!33647 r!7292)))))

(declare-fun e!4071698 () Bool)

(declare-fun call!609363 () Bool)

(assert (=> b!6740915 (= e!4071698 call!609363)))

(declare-fun b!6740916 () Bool)

(declare-fun c!1250458 () Bool)

(assert (=> b!6740916 (= c!1250458 ((_ is Union!16567) (regOne!33647 r!7292)))))

(assert (=> b!6740916 (= e!4071695 e!4071699)))

(declare-fun bm!609358 () Bool)

(assert (=> bm!609358 (= call!609363 (Exists!3635 (ite c!1250461 lambda!378682 lambda!378683)))))

(assert (=> b!6740917 (= e!4071701 call!609363)))

(declare-fun bm!609359 () Bool)

(assert (=> bm!609359 (= call!609364 (isEmpty!38218 s!2326))))

(declare-fun b!6740918 () Bool)

(declare-fun res!2757298 () Bool)

(assert (=> b!6740918 (=> res!2757298 e!4071698)))

(assert (=> b!6740918 (= res!2757298 call!609364)))

(assert (=> b!6740918 (= e!4071701 e!4071698)))

(declare-fun b!6740919 () Bool)

(declare-fun c!1250459 () Bool)

(assert (=> b!6740919 (= c!1250459 ((_ is ElementMatch!16567) (regOne!33647 r!7292)))))

(assert (=> b!6740919 (= e!4071696 e!4071695)))

(assert (= (and d!2117999 c!1250460) b!6740909))

(assert (= (and d!2117999 (not c!1250460)) b!6740912))

(assert (= (and b!6740912 res!2757299) b!6740919))

(assert (= (and b!6740919 c!1250459) b!6740910))

(assert (= (and b!6740919 (not c!1250459)) b!6740916))

(assert (= (and b!6740916 c!1250458) b!6740913))

(assert (= (and b!6740916 (not c!1250458)) b!6740914))

(assert (= (and b!6740913 (not res!2757300)) b!6740911))

(assert (= (and b!6740914 c!1250461) b!6740918))

(assert (= (and b!6740914 (not c!1250461)) b!6740917))

(assert (= (and b!6740918 (not res!2757298)) b!6740915))

(assert (= (or b!6740915 b!6740917) bm!609358))

(assert (= (or b!6740909 b!6740918) bm!609359))

(declare-fun m!7497450 () Bool)

(assert (=> b!6740911 m!7497450))

(declare-fun m!7497452 () Bool)

(assert (=> b!6740913 m!7497452))

(declare-fun m!7497454 () Bool)

(assert (=> bm!609358 m!7497454))

(assert (=> bm!609359 m!7496324))

(assert (=> b!6740094 d!2117999))

(declare-fun d!2118001 () Bool)

(assert (=> d!2118001 true))

(declare-fun setRes!46029 () Bool)

(assert (=> d!2118001 setRes!46029))

(declare-fun condSetEmpty!46029 () Bool)

(declare-fun res!2757301 () (InoxSet Context!11902))

(assert (=> d!2118001 (= condSetEmpty!46029 (= res!2757301 ((as const (Array Context!11902 Bool)) false)))))

(assert (=> d!2118001 (= (choose!50246 lt!2438916 lambda!378557) res!2757301)))

(declare-fun setIsEmpty!46029 () Bool)

(assert (=> setIsEmpty!46029 setRes!46029))

(declare-fun setElem!46029 () Context!11902)

(declare-fun e!4071702 () Bool)

(declare-fun setNonEmpty!46029 () Bool)

(declare-fun tp!1847949 () Bool)

(assert (=> setNonEmpty!46029 (= setRes!46029 (and tp!1847949 (inv!84664 setElem!46029) e!4071702))))

(declare-fun setRest!46029 () (InoxSet Context!11902))

(assert (=> setNonEmpty!46029 (= res!2757301 ((_ map or) (store ((as const (Array Context!11902 Bool)) false) setElem!46029 true) setRest!46029))))

(declare-fun b!6740920 () Bool)

(declare-fun tp!1847948 () Bool)

(assert (=> b!6740920 (= e!4071702 tp!1847948)))

(assert (= (and d!2118001 condSetEmpty!46029) setIsEmpty!46029))

(assert (= (and d!2118001 (not condSetEmpty!46029)) setNonEmpty!46029))

(assert (= setNonEmpty!46029 b!6740920))

(declare-fun m!7497456 () Bool)

(assert (=> setNonEmpty!46029 m!7497456))

(assert (=> d!2117665 d!2118001))

(declare-fun b!6740921 () Bool)

(declare-fun c!1250466 () Bool)

(assert (=> b!6740921 (= c!1250466 ((_ is Star!16567) (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))))))

(declare-fun e!4071708 () (InoxSet Context!11902))

(declare-fun e!4071703 () (InoxSet Context!11902))

(assert (=> b!6740921 (= e!4071708 e!4071703)))

(declare-fun b!6740922 () Bool)

(declare-fun e!4071704 () (InoxSet Context!11902))

(declare-fun call!609369 () (InoxSet Context!11902))

(declare-fun call!609366 () (InoxSet Context!11902))

(assert (=> b!6740922 (= e!4071704 ((_ map or) call!609369 call!609366))))

(declare-fun e!4071706 () Bool)

(declare-fun b!6740923 () Bool)

(assert (=> b!6740923 (= e!4071706 (nullable!6554 (regOne!33646 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292))))))))))

(declare-fun c!1250462 () Bool)

(declare-fun d!2118003 () Bool)

(assert (=> d!2118003 (= c!1250462 (and ((_ is ElementMatch!16567) (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))) (= (c!1250093 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))) (h!72326 s!2326))))))

(declare-fun e!4071707 () (InoxSet Context!11902))

(assert (=> d!2118003 (= (derivationStepZipperDown!1795 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292))))) (ite (or c!1250285 c!1250286) lt!2438917 (Context!11903 call!609231)) (h!72326 s!2326)) e!4071707)))

(declare-fun bm!609360 () Bool)

(declare-fun call!609365 () List!66000)

(declare-fun call!609368 () List!66000)

(assert (=> bm!609360 (= call!609365 call!609368)))

(declare-fun b!6740924 () Bool)

(declare-fun e!4071705 () (InoxSet Context!11902))

(assert (=> b!6740924 (= e!4071707 e!4071705)))

(declare-fun c!1250464 () Bool)

(assert (=> b!6740924 (= c!1250464 ((_ is Union!16567) (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))))))

(declare-fun b!6740925 () Bool)

(assert (=> b!6740925 (= e!4071704 e!4071708)))

(declare-fun c!1250463 () Bool)

(assert (=> b!6740925 (= c!1250463 ((_ is Concat!25412) (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))))))

(declare-fun b!6740926 () Bool)

(declare-fun call!609367 () (InoxSet Context!11902))

(assert (=> b!6740926 (= e!4071708 call!609367)))

(declare-fun c!1250465 () Bool)

(declare-fun bm!609361 () Bool)

(assert (=> bm!609361 (= call!609368 ($colon$colon!2384 (exprs!6451 (ite (or c!1250285 c!1250286) lt!2438917 (Context!11903 call!609231))) (ite (or c!1250465 c!1250463) (regTwo!33646 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))) (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292))))))))))

(declare-fun b!6740927 () Bool)

(declare-fun call!609370 () (InoxSet Context!11902))

(assert (=> b!6740927 (= e!4071705 ((_ map or) call!609370 call!609369))))

(declare-fun bm!609362 () Bool)

(assert (=> bm!609362 (= call!609367 call!609366)))

(declare-fun bm!609363 () Bool)

(assert (=> bm!609363 (= call!609370 (derivationStepZipperDown!1795 (ite c!1250464 (regOne!33647 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))) (ite c!1250465 (regTwo!33646 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))) (ite c!1250463 (regOne!33646 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))) (reg!16896 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292))))))))) (ite (or c!1250464 c!1250465) (ite (or c!1250285 c!1250286) lt!2438917 (Context!11903 call!609231)) (Context!11903 call!609365)) (h!72326 s!2326)))))

(declare-fun b!6740928 () Bool)

(assert (=> b!6740928 (= e!4071703 call!609367)))

(declare-fun b!6740929 () Bool)

(assert (=> b!6740929 (= c!1250465 e!4071706)))

(declare-fun res!2757302 () Bool)

(assert (=> b!6740929 (=> (not res!2757302) (not e!4071706))))

(assert (=> b!6740929 (= res!2757302 ((_ is Concat!25412) (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))))))

(assert (=> b!6740929 (= e!4071705 e!4071704)))

(declare-fun bm!609364 () Bool)

(assert (=> bm!609364 (= call!609366 call!609370)))

(declare-fun b!6740930 () Bool)

(assert (=> b!6740930 (= e!4071703 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609365 () Bool)

(assert (=> bm!609365 (= call!609369 (derivationStepZipperDown!1795 (ite c!1250464 (regTwo!33647 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292)))))) (regOne!33646 (ite c!1250285 (regOne!33647 (reg!16896 r!7292)) (ite c!1250286 (regTwo!33646 (reg!16896 r!7292)) (ite c!1250284 (regOne!33646 (reg!16896 r!7292)) (reg!16896 (reg!16896 r!7292))))))) (ite c!1250464 (ite (or c!1250285 c!1250286) lt!2438917 (Context!11903 call!609231)) (Context!11903 call!609368)) (h!72326 s!2326)))))

(declare-fun b!6740931 () Bool)

(assert (=> b!6740931 (= e!4071707 (store ((as const (Array Context!11902 Bool)) false) (ite (or c!1250285 c!1250286) lt!2438917 (Context!11903 call!609231)) true))))

(assert (= (and d!2118003 c!1250462) b!6740931))

(assert (= (and d!2118003 (not c!1250462)) b!6740924))

(assert (= (and b!6740924 c!1250464) b!6740927))

(assert (= (and b!6740924 (not c!1250464)) b!6740929))

(assert (= (and b!6740929 res!2757302) b!6740923))

(assert (= (and b!6740929 c!1250465) b!6740922))

(assert (= (and b!6740929 (not c!1250465)) b!6740925))

(assert (= (and b!6740925 c!1250463) b!6740926))

(assert (= (and b!6740925 (not c!1250463)) b!6740921))

(assert (= (and b!6740921 c!1250466) b!6740928))

(assert (= (and b!6740921 (not c!1250466)) b!6740930))

(assert (= (or b!6740926 b!6740928) bm!609360))

(assert (= (or b!6740926 b!6740928) bm!609362))

(assert (= (or b!6740922 bm!609360) bm!609361))

(assert (= (or b!6740922 bm!609362) bm!609364))

(assert (= (or b!6740927 b!6740922) bm!609365))

(assert (= (or b!6740927 bm!609364) bm!609363))

(declare-fun m!7497458 () Bool)

(assert (=> b!6740923 m!7497458))

(declare-fun m!7497460 () Bool)

(assert (=> b!6740931 m!7497460))

(declare-fun m!7497462 () Bool)

(assert (=> bm!609365 m!7497462))

(declare-fun m!7497464 () Bool)

(assert (=> bm!609363 m!7497464))

(declare-fun m!7497466 () Bool)

(assert (=> bm!609361 m!7497466))

(assert (=> bm!609229 d!2118003))

(declare-fun b!6740933 () Bool)

(declare-fun e!4071709 () List!66002)

(assert (=> b!6740933 (= e!4071709 (Cons!65878 (h!72326 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878))) (++!14723 (t!379699 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878))) (t!379699 s!2326))))))

(declare-fun d!2118005 () Bool)

(declare-fun e!4071710 () Bool)

(assert (=> d!2118005 e!4071710))

(declare-fun res!2757303 () Bool)

(assert (=> d!2118005 (=> (not res!2757303) (not e!4071710))))

(declare-fun lt!2439045 () List!66002)

(assert (=> d!2118005 (= res!2757303 (= (content!12805 lt!2439045) ((_ map or) (content!12805 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878))) (content!12805 (t!379699 s!2326)))))))

(assert (=> d!2118005 (= lt!2439045 e!4071709)))

(declare-fun c!1250467 () Bool)

(assert (=> d!2118005 (= c!1250467 ((_ is Nil!65878) (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878))))))

(assert (=> d!2118005 (= (++!14723 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (t!379699 s!2326)) lt!2439045)))

(declare-fun b!6740935 () Bool)

(assert (=> b!6740935 (= e!4071710 (or (not (= (t!379699 s!2326) Nil!65878)) (= lt!2439045 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)))))))

(declare-fun b!6740934 () Bool)

(declare-fun res!2757304 () Bool)

(assert (=> b!6740934 (=> (not res!2757304) (not e!4071710))))

(assert (=> b!6740934 (= res!2757304 (= (size!40617 lt!2439045) (+ (size!40617 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878))) (size!40617 (t!379699 s!2326)))))))

(declare-fun b!6740932 () Bool)

(assert (=> b!6740932 (= e!4071709 (t!379699 s!2326))))

(assert (= (and d!2118005 c!1250467) b!6740932))

(assert (= (and d!2118005 (not c!1250467)) b!6740933))

(assert (= (and d!2118005 res!2757303) b!6740934))

(assert (= (and b!6740934 res!2757304) b!6740935))

(declare-fun m!7497468 () Bool)

(assert (=> b!6740933 m!7497468))

(declare-fun m!7497470 () Bool)

(assert (=> d!2118005 m!7497470))

(assert (=> d!2118005 m!7496512))

(declare-fun m!7497472 () Bool)

(assert (=> d!2118005 m!7497472))

(declare-fun m!7497474 () Bool)

(assert (=> d!2118005 m!7497474))

(declare-fun m!7497476 () Bool)

(assert (=> b!6740934 m!7497476))

(assert (=> b!6740934 m!7496512))

(declare-fun m!7497478 () Bool)

(assert (=> b!6740934 m!7497478))

(declare-fun m!7497480 () Bool)

(assert (=> b!6740934 m!7497480))

(assert (=> b!6739763 d!2118005))

(declare-fun b!6740937 () Bool)

(declare-fun e!4071711 () List!66002)

(assert (=> b!6740937 (= e!4071711 (Cons!65878 (h!72326 Nil!65878) (++!14723 (t!379699 Nil!65878) (Cons!65878 (h!72326 s!2326) Nil!65878))))))

(declare-fun d!2118007 () Bool)

(declare-fun e!4071712 () Bool)

(assert (=> d!2118007 e!4071712))

(declare-fun res!2757305 () Bool)

(assert (=> d!2118007 (=> (not res!2757305) (not e!4071712))))

(declare-fun lt!2439046 () List!66002)

(assert (=> d!2118007 (= res!2757305 (= (content!12805 lt!2439046) ((_ map or) (content!12805 Nil!65878) (content!12805 (Cons!65878 (h!72326 s!2326) Nil!65878)))))))

(assert (=> d!2118007 (= lt!2439046 e!4071711)))

(declare-fun c!1250468 () Bool)

(assert (=> d!2118007 (= c!1250468 ((_ is Nil!65878) Nil!65878))))

(assert (=> d!2118007 (= (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) lt!2439046)))

(declare-fun b!6740939 () Bool)

(assert (=> b!6740939 (= e!4071712 (or (not (= (Cons!65878 (h!72326 s!2326) Nil!65878) Nil!65878)) (= lt!2439046 Nil!65878)))))

(declare-fun b!6740938 () Bool)

(declare-fun res!2757306 () Bool)

(assert (=> b!6740938 (=> (not res!2757306) (not e!4071712))))

(assert (=> b!6740938 (= res!2757306 (= (size!40617 lt!2439046) (+ (size!40617 Nil!65878) (size!40617 (Cons!65878 (h!72326 s!2326) Nil!65878)))))))

(declare-fun b!6740936 () Bool)

(assert (=> b!6740936 (= e!4071711 (Cons!65878 (h!72326 s!2326) Nil!65878))))

(assert (= (and d!2118007 c!1250468) b!6740936))

(assert (= (and d!2118007 (not c!1250468)) b!6740937))

(assert (= (and d!2118007 res!2757305) b!6740938))

(assert (= (and b!6740938 res!2757306) b!6740939))

(declare-fun m!7497482 () Bool)

(assert (=> b!6740937 m!7497482))

(declare-fun m!7497484 () Bool)

(assert (=> d!2118007 m!7497484))

(declare-fun m!7497486 () Bool)

(assert (=> d!2118007 m!7497486))

(declare-fun m!7497488 () Bool)

(assert (=> d!2118007 m!7497488))

(declare-fun m!7497490 () Bool)

(assert (=> b!6740938 m!7497490))

(declare-fun m!7497492 () Bool)

(assert (=> b!6740938 m!7497492))

(declare-fun m!7497494 () Bool)

(assert (=> b!6740938 m!7497494))

(assert (=> b!6739763 d!2118007))

(declare-fun d!2118009 () Bool)

(assert (=> d!2118009 (= (++!14723 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (t!379699 s!2326)) s!2326)))

(declare-fun lt!2439049 () Unit!159825)

(declare-fun choose!50251 (List!66002 C!33404 List!66002 List!66002) Unit!159825)

(assert (=> d!2118009 (= lt!2439049 (choose!50251 Nil!65878 (h!72326 s!2326) (t!379699 s!2326) s!2326))))

(assert (=> d!2118009 (= (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) (t!379699 s!2326))) s!2326)))

(assert (=> d!2118009 (= (lemmaMoveElementToOtherListKeepsConcatEq!2696 Nil!65878 (h!72326 s!2326) (t!379699 s!2326) s!2326) lt!2439049)))

(declare-fun bs!1792403 () Bool)

(assert (= bs!1792403 d!2118009))

(assert (=> bs!1792403 m!7496512))

(assert (=> bs!1792403 m!7496512))

(assert (=> bs!1792403 m!7496518))

(declare-fun m!7497496 () Bool)

(assert (=> bs!1792403 m!7497496))

(declare-fun m!7497498 () Bool)

(assert (=> bs!1792403 m!7497498))

(assert (=> b!6739763 d!2118009))

(declare-fun b!6740940 () Bool)

(declare-fun lt!2439050 () Unit!159825)

(declare-fun lt!2439051 () Unit!159825)

(assert (=> b!6740940 (= lt!2439050 lt!2439051)))

(assert (=> b!6740940 (= (++!14723 (++!14723 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (Cons!65878 (h!72326 (t!379699 s!2326)) Nil!65878)) (t!379699 (t!379699 s!2326))) s!2326)))

(assert (=> b!6740940 (= lt!2439051 (lemmaMoveElementToOtherListKeepsConcatEq!2696 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (h!72326 (t!379699 s!2326)) (t!379699 (t!379699 s!2326)) s!2326))))

(declare-fun e!4071713 () Option!16454)

(assert (=> b!6740940 (= e!4071713 (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 (++!14723 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (Cons!65878 (h!72326 (t!379699 s!2326)) Nil!65878)) (t!379699 (t!379699 s!2326)) s!2326))))

(declare-fun b!6740941 () Bool)

(assert (=> b!6740941 (= e!4071713 None!16453)))

(declare-fun b!6740942 () Bool)

(declare-fun e!4071715 () Option!16454)

(assert (=> b!6740942 (= e!4071715 (Some!16453 (tuple2!67085 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (t!379699 s!2326))))))

(declare-fun b!6740943 () Bool)

(declare-fun e!4071717 () Bool)

(declare-fun lt!2439052 () Option!16454)

(assert (=> b!6740943 (= e!4071717 (= (++!14723 (_1!36845 (get!22922 lt!2439052)) (_2!36845 (get!22922 lt!2439052))) s!2326))))

(declare-fun b!6740944 () Bool)

(assert (=> b!6740944 (= e!4071715 e!4071713)))

(declare-fun c!1250470 () Bool)

(assert (=> b!6740944 (= c!1250470 ((_ is Nil!65878) (t!379699 s!2326)))))

(declare-fun b!6740945 () Bool)

(declare-fun res!2757310 () Bool)

(assert (=> b!6740945 (=> (not res!2757310) (not e!4071717))))

(assert (=> b!6740945 (= res!2757310 (matchR!8750 (reg!16896 r!7292) (_1!36845 (get!22922 lt!2439052))))))

(declare-fun b!6740947 () Bool)

(declare-fun e!4071714 () Bool)

(assert (=> b!6740947 (= e!4071714 (matchR!8750 r!7292 (t!379699 s!2326)))))

(declare-fun b!6740948 () Bool)

(declare-fun e!4071716 () Bool)

(assert (=> b!6740948 (= e!4071716 (not (isDefined!13157 lt!2439052)))))

(declare-fun d!2118011 () Bool)

(assert (=> d!2118011 e!4071716))

(declare-fun res!2757311 () Bool)

(assert (=> d!2118011 (=> res!2757311 e!4071716)))

(assert (=> d!2118011 (= res!2757311 e!4071717)))

(declare-fun res!2757307 () Bool)

(assert (=> d!2118011 (=> (not res!2757307) (not e!4071717))))

(assert (=> d!2118011 (= res!2757307 (isDefined!13157 lt!2439052))))

(assert (=> d!2118011 (= lt!2439052 e!4071715)))

(declare-fun c!1250469 () Bool)

(assert (=> d!2118011 (= c!1250469 e!4071714)))

(declare-fun res!2757309 () Bool)

(assert (=> d!2118011 (=> (not res!2757309) (not e!4071714))))

(assert (=> d!2118011 (= res!2757309 (matchR!8750 (reg!16896 r!7292) (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878))))))

(assert (=> d!2118011 (validRegex!8303 (reg!16896 r!7292))))

(assert (=> d!2118011 (= (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 (++!14723 Nil!65878 (Cons!65878 (h!72326 s!2326) Nil!65878)) (t!379699 s!2326) s!2326) lt!2439052)))

(declare-fun b!6740946 () Bool)

(declare-fun res!2757308 () Bool)

(assert (=> b!6740946 (=> (not res!2757308) (not e!4071717))))

(assert (=> b!6740946 (= res!2757308 (matchR!8750 r!7292 (_2!36845 (get!22922 lt!2439052))))))

(assert (= (and d!2118011 res!2757309) b!6740947))

(assert (= (and d!2118011 c!1250469) b!6740942))

(assert (= (and d!2118011 (not c!1250469)) b!6740944))

(assert (= (and b!6740944 c!1250470) b!6740941))

(assert (= (and b!6740944 (not c!1250470)) b!6740940))

(assert (= (and d!2118011 res!2757307) b!6740945))

(assert (= (and b!6740945 res!2757310) b!6740946))

(assert (= (and b!6740946 res!2757308) b!6740943))

(assert (= (and d!2118011 (not res!2757311)) b!6740948))

(declare-fun m!7497500 () Bool)

(assert (=> b!6740945 m!7497500))

(declare-fun m!7497502 () Bool)

(assert (=> b!6740945 m!7497502))

(assert (=> b!6740946 m!7497500))

(declare-fun m!7497504 () Bool)

(assert (=> b!6740946 m!7497504))

(declare-fun m!7497506 () Bool)

(assert (=> b!6740947 m!7497506))

(assert (=> b!6740943 m!7497500))

(declare-fun m!7497508 () Bool)

(assert (=> b!6740943 m!7497508))

(declare-fun m!7497510 () Bool)

(assert (=> b!6740948 m!7497510))

(assert (=> d!2118011 m!7497510))

(assert (=> d!2118011 m!7496512))

(declare-fun m!7497512 () Bool)

(assert (=> d!2118011 m!7497512))

(assert (=> d!2118011 m!7496396))

(assert (=> b!6740940 m!7496512))

(declare-fun m!7497514 () Bool)

(assert (=> b!6740940 m!7497514))

(assert (=> b!6740940 m!7497514))

(declare-fun m!7497516 () Bool)

(assert (=> b!6740940 m!7497516))

(assert (=> b!6740940 m!7496512))

(declare-fun m!7497518 () Bool)

(assert (=> b!6740940 m!7497518))

(assert (=> b!6740940 m!7497514))

(declare-fun m!7497520 () Bool)

(assert (=> b!6740940 m!7497520))

(assert (=> b!6739763 d!2118011))

(declare-fun d!2118013 () Bool)

(assert (=> d!2118013 true))

(assert (=> d!2118013 true))

(declare-fun res!2757314 () Bool)

(assert (=> d!2118013 (= (choose!50242 lambda!378556) res!2757314)))

(assert (=> d!2117553 d!2118013))

(declare-fun d!2118015 () Bool)

(assert (=> d!2118015 (= (nullable!6554 (h!72324 (exprs!6451 (h!72325 zl!343)))) (nullableFct!2468 (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun bs!1792404 () Bool)

(assert (= bs!1792404 d!2118015))

(declare-fun m!7497522 () Bool)

(assert (=> bs!1792404 m!7497522))

(assert (=> b!6740150 d!2118015))

(declare-fun d!2118017 () Bool)

(assert (=> d!2118017 (= (isConcat!1456 lt!2438987) ((_ is Concat!25412) lt!2438987))))

(assert (=> b!6739888 d!2118017))

(declare-fun d!2118019 () Bool)

(assert (=> d!2118019 (= (nullable!6554 (regOne!33646 (reg!16896 r!7292))) (nullableFct!2468 (regOne!33646 (reg!16896 r!7292))))))

(declare-fun bs!1792405 () Bool)

(assert (= bs!1792405 d!2118019))

(declare-fun m!7497524 () Bool)

(assert (=> bs!1792405 m!7497524))

(assert (=> b!6740180 d!2118019))

(declare-fun b!6740949 () Bool)

(declare-fun e!4071720 () (InoxSet Context!11902))

(declare-fun call!609371 () (InoxSet Context!11902))

(assert (=> b!6740949 (= e!4071720 call!609371)))

(declare-fun b!6740950 () Bool)

(declare-fun e!4071719 () (InoxSet Context!11902))

(assert (=> b!6740950 (= e!4071719 ((_ map or) call!609371 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343))))))) (h!72326 s!2326))))))

(declare-fun b!6740951 () Bool)

(assert (=> b!6740951 (= e!4071719 e!4071720)))

(declare-fun c!1250471 () Bool)

(assert (=> b!6740951 (= c!1250471 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))))))))

(declare-fun d!2118021 () Bool)

(declare-fun c!1250472 () Bool)

(declare-fun e!4071718 () Bool)

(assert (=> d!2118021 (= c!1250472 e!4071718)))

(declare-fun res!2757315 () Bool)

(assert (=> d!2118021 (=> (not res!2757315) (not e!4071718))))

(assert (=> d!2118021 (= res!2757315 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))))))))

(assert (=> d!2118021 (= (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))) (h!72326 s!2326)) e!4071719)))

(declare-fun bm!609366 () Bool)

(assert (=> bm!609366 (= call!609371 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))))) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343))))))) (h!72326 s!2326)))))

(declare-fun b!6740952 () Bool)

(assert (=> b!6740952 (= e!4071720 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6740953 () Bool)

(assert (=> b!6740953 (= e!4071718 (nullable!6554 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343))))))))))

(assert (= (and d!2118021 res!2757315) b!6740953))

(assert (= (and d!2118021 c!1250472) b!6740950))

(assert (= (and d!2118021 (not c!1250472)) b!6740951))

(assert (= (and b!6740951 c!1250471) b!6740949))

(assert (= (and b!6740951 (not c!1250471)) b!6740952))

(assert (= (or b!6740950 b!6740949) bm!609366))

(declare-fun m!7497526 () Bool)

(assert (=> b!6740950 m!7497526))

(declare-fun m!7497528 () Bool)

(assert (=> bm!609366 m!7497528))

(declare-fun m!7497530 () Bool)

(assert (=> b!6740953 m!7497530))

(assert (=> b!6740147 d!2118021))

(declare-fun d!2118023 () Bool)

(declare-fun res!2757320 () Bool)

(declare-fun e!4071725 () Bool)

(assert (=> d!2118023 (=> res!2757320 e!4071725)))

(assert (=> d!2118023 (= res!2757320 ((_ is Nil!65877) lt!2439010))))

(assert (=> d!2118023 (= (noDuplicate!2360 lt!2439010) e!4071725)))

(declare-fun b!6740958 () Bool)

(declare-fun e!4071726 () Bool)

(assert (=> b!6740958 (= e!4071725 e!4071726)))

(declare-fun res!2757321 () Bool)

(assert (=> b!6740958 (=> (not res!2757321) (not e!4071726))))

(declare-fun contains!20265 (List!66001 Context!11902) Bool)

(assert (=> b!6740958 (= res!2757321 (not (contains!20265 (t!379698 lt!2439010) (h!72325 lt!2439010))))))

(declare-fun b!6740959 () Bool)

(assert (=> b!6740959 (= e!4071726 (noDuplicate!2360 (t!379698 lt!2439010)))))

(assert (= (and d!2118023 (not res!2757320)) b!6740958))

(assert (= (and b!6740958 res!2757321) b!6740959))

(declare-fun m!7497532 () Bool)

(assert (=> b!6740958 m!7497532))

(declare-fun m!7497534 () Bool)

(assert (=> b!6740959 m!7497534))

(assert (=> d!2117647 d!2118023))

(declare-fun d!2118025 () Bool)

(declare-fun e!4071735 () Bool)

(assert (=> d!2118025 e!4071735))

(declare-fun res!2757327 () Bool)

(assert (=> d!2118025 (=> (not res!2757327) (not e!4071735))))

(declare-fun res!2757326 () List!66001)

(assert (=> d!2118025 (= res!2757327 (noDuplicate!2360 res!2757326))))

(declare-fun e!4071733 () Bool)

(assert (=> d!2118025 e!4071733))

(assert (=> d!2118025 (= (choose!50249 z!1189) res!2757326)))

(declare-fun b!6740967 () Bool)

(declare-fun e!4071734 () Bool)

(declare-fun tp!1847954 () Bool)

(assert (=> b!6740967 (= e!4071734 tp!1847954)))

(declare-fun b!6740966 () Bool)

(declare-fun tp!1847955 () Bool)

(assert (=> b!6740966 (= e!4071733 (and (inv!84664 (h!72325 res!2757326)) e!4071734 tp!1847955))))

(declare-fun b!6740968 () Bool)

(assert (=> b!6740968 (= e!4071735 (= (content!12803 res!2757326) z!1189))))

(assert (= b!6740966 b!6740967))

(assert (= (and d!2118025 ((_ is Cons!65877) res!2757326)) b!6740966))

(assert (= (and d!2118025 res!2757327) b!6740968))

(declare-fun m!7497536 () Bool)

(assert (=> d!2118025 m!7497536))

(declare-fun m!7497538 () Bool)

(assert (=> b!6740966 m!7497538))

(declare-fun m!7497540 () Bool)

(assert (=> b!6740968 m!7497540))

(assert (=> d!2117647 d!2118025))

(assert (=> bs!1792158 d!2117637))

(declare-fun b!6740969 () Bool)

(declare-fun e!4071741 () Bool)

(declare-fun call!609374 () Bool)

(assert (=> b!6740969 (= e!4071741 call!609374)))

(declare-fun b!6740970 () Bool)

(declare-fun e!4071740 () Bool)

(declare-fun e!4071738 () Bool)

(assert (=> b!6740970 (= e!4071740 e!4071738)))

(declare-fun c!1250474 () Bool)

(assert (=> b!6740970 (= c!1250474 ((_ is Union!16567) lt!2439014))))

(declare-fun b!6740971 () Bool)

(declare-fun e!4071736 () Bool)

(declare-fun call!609373 () Bool)

(assert (=> b!6740971 (= e!4071736 call!609373)))

(declare-fun b!6740972 () Bool)

(assert (=> b!6740972 (= e!4071740 e!4071736)))

(declare-fun res!2757331 () Bool)

(assert (=> b!6740972 (= res!2757331 (not (nullable!6554 (reg!16896 lt!2439014))))))

(assert (=> b!6740972 (=> (not res!2757331) (not e!4071736))))

(declare-fun b!6740973 () Bool)

(declare-fun res!2757328 () Bool)

(declare-fun e!4071737 () Bool)

(assert (=> b!6740973 (=> res!2757328 e!4071737)))

(assert (=> b!6740973 (= res!2757328 (not ((_ is Concat!25412) lt!2439014)))))

(assert (=> b!6740973 (= e!4071738 e!4071737)))

(declare-fun b!6740974 () Bool)

(declare-fun e!4071739 () Bool)

(assert (=> b!6740974 (= e!4071739 call!609374)))

(declare-fun b!6740975 () Bool)

(declare-fun e!4071742 () Bool)

(assert (=> b!6740975 (= e!4071742 e!4071740)))

(declare-fun c!1250473 () Bool)

(assert (=> b!6740975 (= c!1250473 ((_ is Star!16567) lt!2439014))))

(declare-fun b!6740976 () Bool)

(assert (=> b!6740976 (= e!4071737 e!4071739)))

(declare-fun res!2757330 () Bool)

(assert (=> b!6740976 (=> (not res!2757330) (not e!4071739))))

(declare-fun call!609372 () Bool)

(assert (=> b!6740976 (= res!2757330 call!609372)))

(declare-fun bm!609368 () Bool)

(assert (=> bm!609368 (= call!609374 (validRegex!8303 (ite c!1250474 (regTwo!33647 lt!2439014) (regTwo!33646 lt!2439014))))))

(declare-fun b!6740977 () Bool)

(declare-fun res!2757332 () Bool)

(assert (=> b!6740977 (=> (not res!2757332) (not e!4071741))))

(assert (=> b!6740977 (= res!2757332 call!609372)))

(assert (=> b!6740977 (= e!4071738 e!4071741)))

(declare-fun bm!609369 () Bool)

(assert (=> bm!609369 (= call!609372 call!609373)))

(declare-fun d!2118027 () Bool)

(declare-fun res!2757329 () Bool)

(assert (=> d!2118027 (=> res!2757329 e!4071742)))

(assert (=> d!2118027 (= res!2757329 ((_ is ElementMatch!16567) lt!2439014))))

(assert (=> d!2118027 (= (validRegex!8303 lt!2439014) e!4071742)))

(declare-fun bm!609367 () Bool)

(assert (=> bm!609367 (= call!609373 (validRegex!8303 (ite c!1250473 (reg!16896 lt!2439014) (ite c!1250474 (regOne!33647 lt!2439014) (regOne!33646 lt!2439014)))))))

(assert (= (and d!2118027 (not res!2757329)) b!6740975))

(assert (= (and b!6740975 c!1250473) b!6740972))

(assert (= (and b!6740975 (not c!1250473)) b!6740970))

(assert (= (and b!6740972 res!2757331) b!6740971))

(assert (= (and b!6740970 c!1250474) b!6740977))

(assert (= (and b!6740970 (not c!1250474)) b!6740973))

(assert (= (and b!6740977 res!2757332) b!6740969))

(assert (= (and b!6740973 (not res!2757328)) b!6740976))

(assert (= (and b!6740976 res!2757330) b!6740974))

(assert (= (or b!6740969 b!6740974) bm!609368))

(assert (= (or b!6740977 b!6740976) bm!609369))

(assert (= (or b!6740971 bm!609369) bm!609367))

(declare-fun m!7497542 () Bool)

(assert (=> b!6740972 m!7497542))

(declare-fun m!7497544 () Bool)

(assert (=> bm!609368 m!7497544))

(declare-fun m!7497546 () Bool)

(assert (=> bm!609367 m!7497546))

(assert (=> d!2117651 d!2118027))

(declare-fun bs!1792406 () Bool)

(declare-fun d!2118029 () Bool)

(assert (= bs!1792406 (and d!2118029 d!2117619)))

(declare-fun lambda!378684 () Int)

(assert (=> bs!1792406 (= lambda!378684 lambda!378626)))

(declare-fun bs!1792407 () Bool)

(assert (= bs!1792407 (and d!2118029 d!2117587)))

(assert (=> bs!1792407 (= lambda!378684 lambda!378610)))

(declare-fun bs!1792408 () Bool)

(assert (= bs!1792408 (and d!2118029 d!2117607)))

(assert (=> bs!1792408 (= lambda!378684 lambda!378623)))

(declare-fun bs!1792409 () Bool)

(assert (= bs!1792409 (and d!2118029 d!2117605)))

(assert (=> bs!1792409 (= lambda!378684 lambda!378616)))

(declare-fun bs!1792410 () Bool)

(assert (= bs!1792410 (and d!2118029 d!2117603)))

(assert (=> bs!1792410 (= lambda!378684 lambda!378615)))

(declare-fun bs!1792411 () Bool)

(assert (= bs!1792411 (and d!2118029 d!2117599)))

(assert (=> bs!1792411 (= lambda!378684 lambda!378614)))

(declare-fun bs!1792412 () Bool)

(assert (= bs!1792412 (and d!2118029 d!2117943)))

(assert (=> bs!1792412 (= lambda!378684 lambda!378674)))

(declare-fun bs!1792413 () Bool)

(assert (= bs!1792413 (and d!2118029 d!2117963)))

(assert (=> bs!1792413 (= lambda!378684 lambda!378681)))

(declare-fun bs!1792414 () Bool)

(assert (= bs!1792414 (and d!2118029 d!2117929)))

(assert (=> bs!1792414 (= lambda!378684 lambda!378673)))

(declare-fun b!6740978 () Bool)

(declare-fun e!4071743 () Bool)

(declare-fun lt!2439053 () Regex!16567)

(assert (=> b!6740978 (= e!4071743 (isUnion!1370 lt!2439053))))

(declare-fun b!6740979 () Bool)

(declare-fun e!4071748 () Regex!16567)

(declare-fun e!4071747 () Regex!16567)

(assert (=> b!6740979 (= e!4071748 e!4071747)))

(declare-fun c!1250478 () Bool)

(assert (=> b!6740979 (= c!1250478 ((_ is Cons!65876) (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877))))))

(declare-fun b!6740980 () Bool)

(declare-fun e!4071744 () Bool)

(assert (=> b!6740980 (= e!4071744 (isEmptyLang!1940 lt!2439053))))

(declare-fun b!6740981 () Bool)

(declare-fun e!4071745 () Bool)

(assert (=> b!6740981 (= e!4071745 (isEmpty!38222 (t!379697 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877)))))))

(declare-fun b!6740982 () Bool)

(assert (=> b!6740982 (= e!4071748 (h!72324 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877))))))

(declare-fun e!4071746 () Bool)

(assert (=> d!2118029 e!4071746))

(declare-fun res!2757333 () Bool)

(assert (=> d!2118029 (=> (not res!2757333) (not e!4071746))))

(assert (=> d!2118029 (= res!2757333 (validRegex!8303 lt!2439053))))

(assert (=> d!2118029 (= lt!2439053 e!4071748)))

(declare-fun c!1250475 () Bool)

(assert (=> d!2118029 (= c!1250475 e!4071745)))

(declare-fun res!2757334 () Bool)

(assert (=> d!2118029 (=> (not res!2757334) (not e!4071745))))

(assert (=> d!2118029 (= res!2757334 ((_ is Cons!65876) (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877))))))

(assert (=> d!2118029 (forall!15767 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877)) lambda!378684)))

(assert (=> d!2118029 (= (generalisedUnion!2411 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877))) lt!2439053)))

(declare-fun b!6740983 () Bool)

(assert (=> b!6740983 (= e!4071747 (Union!16567 (h!72324 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877))) (generalisedUnion!2411 (t!379697 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877))))))))

(declare-fun b!6740984 () Bool)

(assert (=> b!6740984 (= e!4071746 e!4071744)))

(declare-fun c!1250476 () Bool)

(assert (=> b!6740984 (= c!1250476 (isEmpty!38222 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877))))))

(declare-fun b!6740985 () Bool)

(assert (=> b!6740985 (= e!4071747 EmptyLang!16567)))

(declare-fun b!6740986 () Bool)

(assert (=> b!6740986 (= e!4071744 e!4071743)))

(declare-fun c!1250477 () Bool)

(assert (=> b!6740986 (= c!1250477 (isEmpty!38222 (tail!12646 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877)))))))

(declare-fun b!6740987 () Bool)

(assert (=> b!6740987 (= e!4071743 (= lt!2439053 (head!13561 (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877)))))))

(assert (= (and d!2118029 res!2757334) b!6740981))

(assert (= (and d!2118029 c!1250475) b!6740982))

(assert (= (and d!2118029 (not c!1250475)) b!6740979))

(assert (= (and b!6740979 c!1250478) b!6740983))

(assert (= (and b!6740979 (not c!1250478)) b!6740985))

(assert (= (and d!2118029 res!2757333) b!6740984))

(assert (= (and b!6740984 c!1250476) b!6740980))

(assert (= (and b!6740984 (not c!1250476)) b!6740986))

(assert (= (and b!6740986 c!1250477) b!6740987))

(assert (= (and b!6740986 (not c!1250477)) b!6740978))

(declare-fun m!7497548 () Bool)

(assert (=> b!6740978 m!7497548))

(declare-fun m!7497550 () Bool)

(assert (=> d!2118029 m!7497550))

(assert (=> d!2118029 m!7496752))

(declare-fun m!7497552 () Bool)

(assert (=> d!2118029 m!7497552))

(assert (=> b!6740984 m!7496752))

(declare-fun m!7497554 () Bool)

(assert (=> b!6740984 m!7497554))

(declare-fun m!7497556 () Bool)

(assert (=> b!6740983 m!7497556))

(assert (=> b!6740986 m!7496752))

(declare-fun m!7497558 () Bool)

(assert (=> b!6740986 m!7497558))

(assert (=> b!6740986 m!7497558))

(declare-fun m!7497560 () Bool)

(assert (=> b!6740986 m!7497560))

(declare-fun m!7497562 () Bool)

(assert (=> b!6740981 m!7497562))

(assert (=> b!6740987 m!7496752))

(declare-fun m!7497564 () Bool)

(assert (=> b!6740987 m!7497564))

(declare-fun m!7497566 () Bool)

(assert (=> b!6740980 m!7497566))

(assert (=> d!2117651 d!2118029))

(declare-fun bs!1792415 () Bool)

(declare-fun d!2118031 () Bool)

(assert (= bs!1792415 (and d!2118031 d!2117619)))

(declare-fun lambda!378685 () Int)

(assert (=> bs!1792415 (= lambda!378685 lambda!378626)))

(declare-fun bs!1792416 () Bool)

(assert (= bs!1792416 (and d!2118031 d!2117587)))

(assert (=> bs!1792416 (= lambda!378685 lambda!378610)))

(declare-fun bs!1792417 () Bool)

(assert (= bs!1792417 (and d!2118031 d!2117607)))

(assert (=> bs!1792417 (= lambda!378685 lambda!378623)))

(declare-fun bs!1792418 () Bool)

(assert (= bs!1792418 (and d!2118031 d!2117603)))

(assert (=> bs!1792418 (= lambda!378685 lambda!378615)))

(declare-fun bs!1792419 () Bool)

(assert (= bs!1792419 (and d!2118031 d!2117599)))

(assert (=> bs!1792419 (= lambda!378685 lambda!378614)))

(declare-fun bs!1792420 () Bool)

(assert (= bs!1792420 (and d!2118031 d!2117943)))

(assert (=> bs!1792420 (= lambda!378685 lambda!378674)))

(declare-fun bs!1792421 () Bool)

(assert (= bs!1792421 (and d!2118031 d!2117963)))

(assert (=> bs!1792421 (= lambda!378685 lambda!378681)))

(declare-fun bs!1792422 () Bool)

(assert (= bs!1792422 (and d!2118031 d!2117929)))

(assert (=> bs!1792422 (= lambda!378685 lambda!378673)))

(declare-fun bs!1792423 () Bool)

(assert (= bs!1792423 (and d!2118031 d!2117605)))

(assert (=> bs!1792423 (= lambda!378685 lambda!378616)))

(declare-fun bs!1792424 () Bool)

(assert (= bs!1792424 (and d!2118031 d!2118029)))

(assert (=> bs!1792424 (= lambda!378685 lambda!378684)))

(declare-fun lt!2439054 () List!66000)

(assert (=> d!2118031 (forall!15767 lt!2439054 lambda!378685)))

(declare-fun e!4071749 () List!66000)

(assert (=> d!2118031 (= lt!2439054 e!4071749)))

(declare-fun c!1250479 () Bool)

(assert (=> d!2118031 (= c!1250479 ((_ is Cons!65877) (Cons!65877 lt!2438913 Nil!65877)))))

(assert (=> d!2118031 (= (unfocusZipperList!1988 (Cons!65877 lt!2438913 Nil!65877)) lt!2439054)))

(declare-fun b!6740988 () Bool)

(assert (=> b!6740988 (= e!4071749 (Cons!65876 (generalisedConcat!2164 (exprs!6451 (h!72325 (Cons!65877 lt!2438913 Nil!65877)))) (unfocusZipperList!1988 (t!379698 (Cons!65877 lt!2438913 Nil!65877)))))))

(declare-fun b!6740989 () Bool)

(assert (=> b!6740989 (= e!4071749 Nil!65876)))

(assert (= (and d!2118031 c!1250479) b!6740988))

(assert (= (and d!2118031 (not c!1250479)) b!6740989))

(declare-fun m!7497568 () Bool)

(assert (=> d!2118031 m!7497568))

(declare-fun m!7497570 () Bool)

(assert (=> b!6740988 m!7497570))

(declare-fun m!7497572 () Bool)

(assert (=> b!6740988 m!7497572))

(assert (=> d!2117651 d!2118031))

(declare-fun d!2118033 () Bool)

(assert (=> d!2118033 (= (isUnion!1370 lt!2438994) ((_ is Union!16567) lt!2438994))))

(assert (=> b!6739978 d!2118033))

(declare-fun d!2118035 () Bool)

(assert (=> d!2118035 (= (isEmpty!38222 (t!379697 (exprs!6451 (h!72325 zl!343)))) ((_ is Nil!65876) (t!379697 (exprs!6451 (h!72325 zl!343)))))))

(assert (=> b!6739884 d!2118035))

(assert (=> b!6740140 d!2117935))

(assert (=> b!6740140 d!2117937))

(declare-fun d!2118037 () Bool)

(assert (=> d!2118037 (= (Exists!3635 lambda!378571) (choose!50242 lambda!378571))))

(declare-fun bs!1792425 () Bool)

(assert (= bs!1792425 d!2118037))

(declare-fun m!7497574 () Bool)

(assert (=> bs!1792425 m!7497574))

(assert (=> d!2117509 d!2118037))

(declare-fun d!2118039 () Bool)

(assert (=> d!2118039 (= (Exists!3635 lambda!378572) (choose!50242 lambda!378572))))

(declare-fun bs!1792426 () Bool)

(assert (= bs!1792426 d!2118039))

(declare-fun m!7497576 () Bool)

(assert (=> bs!1792426 m!7497576))

(assert (=> d!2117509 d!2118039))

(declare-fun bs!1792427 () Bool)

(declare-fun d!2118041 () Bool)

(assert (= bs!1792427 (and d!2118041 d!2117529)))

(declare-fun lambda!378690 () Int)

(assert (=> bs!1792427 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378690 lambda!378587))))

(declare-fun bs!1792428 () Bool)

(assert (= bs!1792428 (and d!2118041 b!6740917)))

(assert (=> bs!1792428 (not (= lambda!378690 lambda!378683))))

(declare-fun bs!1792429 () Bool)

(assert (= bs!1792429 (and d!2118041 d!2117567)))

(assert (=> bs!1792429 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378690 lambda!378603))))

(declare-fun bs!1792430 () Bool)

(assert (= bs!1792430 (and d!2118041 d!2117957)))

(assert (=> bs!1792430 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378690 lambda!378679))))

(declare-fun bs!1792431 () Bool)

(assert (= bs!1792431 (and d!2118041 b!6739483)))

(assert (=> bs!1792431 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378690 lambda!378554))))

(declare-fun bs!1792432 () Bool)

(assert (= bs!1792432 (and d!2118041 b!6740915)))

(assert (=> bs!1792432 (not (= lambda!378690 lambda!378682))))

(assert (=> bs!1792430 (not (= lambda!378690 lambda!378680))))

(declare-fun bs!1792433 () Bool)

(assert (= bs!1792433 (and d!2118041 d!2117509)))

(assert (=> bs!1792433 (not (= lambda!378690 lambda!378572))))

(assert (=> bs!1792431 (not (= lambda!378690 lambda!378555))))

(declare-fun bs!1792434 () Bool)

(assert (= bs!1792434 (and d!2118041 b!6740098)))

(assert (=> bs!1792434 (not (= lambda!378690 lambda!378636))))

(assert (=> bs!1792431 (not (= lambda!378690 lambda!378556))))

(assert (=> bs!1792433 (= lambda!378690 lambda!378571)))

(assert (=> bs!1792427 (not (= lambda!378690 lambda!378590))))

(declare-fun bs!1792435 () Bool)

(assert (= bs!1792435 (and d!2118041 d!2117913)))

(assert (=> bs!1792435 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378690 lambda!378672))))

(declare-fun bs!1792436 () Bool)

(assert (= bs!1792436 (and d!2118041 b!6740096)))

(assert (=> bs!1792436 (not (= lambda!378690 lambda!378635))))

(assert (=> d!2118041 true))

(assert (=> d!2118041 true))

(declare-fun lambda!378691 () Int)

(assert (=> bs!1792427 (not (= lambda!378691 lambda!378587))))

(assert (=> bs!1792428 (not (= lambda!378691 lambda!378683))))

(assert (=> bs!1792429 (not (= lambda!378691 lambda!378603))))

(assert (=> bs!1792430 (not (= lambda!378691 lambda!378679))))

(assert (=> bs!1792431 (not (= lambda!378691 lambda!378554))))

(assert (=> bs!1792432 (= (and (= (reg!16896 r!7292) (reg!16896 (regOne!33647 r!7292))) (= (Star!16567 (reg!16896 r!7292)) (regOne!33647 r!7292))) (= lambda!378691 lambda!378682))))

(declare-fun bs!1792437 () Bool)

(assert (= bs!1792437 d!2118041))

(assert (=> bs!1792437 (not (= lambda!378691 lambda!378690))))

(assert (=> bs!1792430 (not (= lambda!378691 lambda!378680))))

(assert (=> bs!1792433 (= lambda!378691 lambda!378572)))

(assert (=> bs!1792431 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378691 lambda!378555))))

(assert (=> bs!1792434 (not (= lambda!378691 lambda!378636))))

(assert (=> bs!1792431 (not (= lambda!378691 lambda!378556))))

(assert (=> bs!1792433 (not (= lambda!378691 lambda!378571))))

(assert (=> bs!1792427 (not (= lambda!378691 lambda!378590))))

(assert (=> bs!1792435 (not (= lambda!378691 lambda!378672))))

(assert (=> bs!1792436 (= (= (Star!16567 (reg!16896 r!7292)) r!7292) (= lambda!378691 lambda!378635))))

(assert (=> d!2118041 true))

(assert (=> d!2118041 true))

(assert (=> d!2118041 (= (Exists!3635 lambda!378690) (Exists!3635 lambda!378691))))

(assert (=> d!2118041 true))

(declare-fun _$91!722 () Unit!159825)

(assert (=> d!2118041 (= (choose!50241 (reg!16896 r!7292) s!2326) _$91!722)))

(declare-fun m!7497578 () Bool)

(assert (=> bs!1792437 m!7497578))

(declare-fun m!7497580 () Bool)

(assert (=> bs!1792437 m!7497580))

(assert (=> d!2117509 d!2118041))

(assert (=> d!2117509 d!2117927))

(declare-fun b!6741000 () Bool)

(declare-fun c!1250484 () Bool)

(assert (=> b!6741000 (= c!1250484 ((_ is Star!16567) (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))))

(declare-fun e!4071759 () (InoxSet Context!11902))

(declare-fun e!4071754 () (InoxSet Context!11902))

(assert (=> b!6741000 (= e!4071759 e!4071754)))

(declare-fun b!6741001 () Bool)

(declare-fun e!4071755 () (InoxSet Context!11902))

(declare-fun call!609379 () (InoxSet Context!11902))

(declare-fun call!609376 () (InoxSet Context!11902))

(assert (=> b!6741001 (= e!4071755 ((_ map or) call!609379 call!609376))))

(declare-fun b!6741002 () Bool)

(declare-fun e!4071757 () Bool)

(assert (=> b!6741002 (= e!4071757 (nullable!6554 (regOne!33646 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))))))

(declare-fun d!2118043 () Bool)

(declare-fun c!1250480 () Bool)

(assert (=> d!2118043 (= c!1250480 (and ((_ is ElementMatch!16567) (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (= (c!1250093 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (h!72326 s!2326))))))

(declare-fun e!4071758 () (InoxSet Context!11902))

(assert (=> d!2118043 (= (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (h!72326 s!2326)) e!4071758)))

(declare-fun bm!609370 () Bool)

(declare-fun call!609375 () List!66000)

(declare-fun call!609378 () List!66000)

(assert (=> bm!609370 (= call!609375 call!609378)))

(declare-fun b!6741003 () Bool)

(declare-fun e!4071756 () (InoxSet Context!11902))

(assert (=> b!6741003 (= e!4071758 e!4071756)))

(declare-fun c!1250482 () Bool)

(assert (=> b!6741003 (= c!1250482 ((_ is Union!16567) (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))))

(declare-fun b!6741004 () Bool)

(assert (=> b!6741004 (= e!4071755 e!4071759)))

(declare-fun c!1250481 () Bool)

(assert (=> b!6741004 (= c!1250481 ((_ is Concat!25412) (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))))

(declare-fun b!6741005 () Bool)

(declare-fun call!609377 () (InoxSet Context!11902))

(assert (=> b!6741005 (= e!4071759 call!609377)))

(declare-fun bm!609371 () Bool)

(declare-fun c!1250483 () Bool)

(assert (=> bm!609371 (= call!609378 ($colon$colon!2384 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))) (ite (or c!1250483 c!1250481) (regTwo!33646 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))))))

(declare-fun b!6741006 () Bool)

(declare-fun call!609380 () (InoxSet Context!11902))

(assert (=> b!6741006 (= e!4071756 ((_ map or) call!609380 call!609379))))

(declare-fun bm!609372 () Bool)

(assert (=> bm!609372 (= call!609377 call!609376)))

(declare-fun bm!609373 () Bool)

(assert (=> bm!609373 (= call!609380 (derivationStepZipperDown!1795 (ite c!1250482 (regOne!33647 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (ite c!1250483 (regTwo!33646 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (ite c!1250481 (regOne!33646 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (reg!16896 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))))) (ite (or c!1250482 c!1250483) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (Context!11903 call!609375)) (h!72326 s!2326)))))

(declare-fun b!6741007 () Bool)

(assert (=> b!6741007 (= e!4071754 call!609377)))

(declare-fun b!6741008 () Bool)

(assert (=> b!6741008 (= c!1250483 e!4071757)))

(declare-fun res!2757345 () Bool)

(assert (=> b!6741008 (=> (not res!2757345) (not e!4071757))))

(assert (=> b!6741008 (= res!2757345 ((_ is Concat!25412) (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))))))

(assert (=> b!6741008 (= e!4071756 e!4071755)))

(declare-fun bm!609374 () Bool)

(assert (=> bm!609374 (= call!609376 call!609380)))

(declare-fun b!6741009 () Bool)

(assert (=> b!6741009 (= e!4071754 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609375 () Bool)

(assert (=> bm!609375 (= call!609379 (derivationStepZipperDown!1795 (ite c!1250482 (regTwo!33647 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (regOne!33646 (h!72324 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876)))))) (ite c!1250482 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) (Context!11903 call!609378)) (h!72326 s!2326)))))

(declare-fun b!6741010 () Bool)

(assert (=> b!6741010 (= e!4071758 (store ((as const (Array Context!11902 Bool)) false) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (Cons!65876 r!7292 Nil!65876))))) true))))

(assert (= (and d!2118043 c!1250480) b!6741010))

(assert (= (and d!2118043 (not c!1250480)) b!6741003))

(assert (= (and b!6741003 c!1250482) b!6741006))

(assert (= (and b!6741003 (not c!1250482)) b!6741008))

(assert (= (and b!6741008 res!2757345) b!6741002))

(assert (= (and b!6741008 c!1250483) b!6741001))

(assert (= (and b!6741008 (not c!1250483)) b!6741004))

(assert (= (and b!6741004 c!1250481) b!6741005))

(assert (= (and b!6741004 (not c!1250481)) b!6741000))

(assert (= (and b!6741000 c!1250484) b!6741007))

(assert (= (and b!6741000 (not c!1250484)) b!6741009))

(assert (= (or b!6741005 b!6741007) bm!609370))

(assert (= (or b!6741005 b!6741007) bm!609372))

(assert (= (or b!6741001 bm!609370) bm!609371))

(assert (= (or b!6741001 bm!609372) bm!609374))

(assert (= (or b!6741006 b!6741001) bm!609375))

(assert (= (or b!6741006 bm!609374) bm!609373))

(declare-fun m!7497582 () Bool)

(assert (=> b!6741002 m!7497582))

(declare-fun m!7497584 () Bool)

(assert (=> b!6741010 m!7497584))

(declare-fun m!7497586 () Bool)

(assert (=> bm!609375 m!7497586))

(declare-fun m!7497588 () Bool)

(assert (=> bm!609373 m!7497588))

(declare-fun m!7497590 () Bool)

(assert (=> bm!609371 m!7497590))

(assert (=> bm!609204 d!2118043))

(declare-fun d!2118045 () Bool)

(assert (=> d!2118045 (= (nullable!6554 r!7292) (nullableFct!2468 r!7292))))

(declare-fun bs!1792438 () Bool)

(assert (= bs!1792438 d!2118045))

(declare-fun m!7497592 () Bool)

(assert (=> bs!1792438 m!7497592))

(assert (=> b!6740136 d!2118045))

(declare-fun b!6741011 () Bool)

(declare-fun c!1250489 () Bool)

(assert (=> b!6741011 (= c!1250489 ((_ is Star!16567) (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))))))

(declare-fun e!4071765 () (InoxSet Context!11902))

(declare-fun e!4071760 () (InoxSet Context!11902))

(assert (=> b!6741011 (= e!4071765 e!4071760)))

(declare-fun b!6741012 () Bool)

(declare-fun e!4071761 () (InoxSet Context!11902))

(declare-fun call!609385 () (InoxSet Context!11902))

(declare-fun call!609382 () (InoxSet Context!11902))

(assert (=> b!6741012 (= e!4071761 ((_ map or) call!609385 call!609382))))

(declare-fun b!6741013 () Bool)

(declare-fun e!4071763 () Bool)

(assert (=> b!6741013 (= e!4071763 (nullable!6554 (regOne!33646 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292))))))))

(declare-fun c!1250485 () Bool)

(declare-fun d!2118047 () Bool)

(assert (=> d!2118047 (= c!1250485 (and ((_ is ElementMatch!16567) (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))) (= (c!1250093 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))) (h!72326 s!2326))))))

(declare-fun e!4071764 () (InoxSet Context!11902))

(assert (=> d!2118047 (= (derivationStepZipperDown!1795 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292))) (ite c!1250285 lt!2438917 (Context!11903 call!609234)) (h!72326 s!2326)) e!4071764)))

(declare-fun bm!609376 () Bool)

(declare-fun call!609381 () List!66000)

(declare-fun call!609384 () List!66000)

(assert (=> bm!609376 (= call!609381 call!609384)))

(declare-fun b!6741014 () Bool)

(declare-fun e!4071762 () (InoxSet Context!11902))

(assert (=> b!6741014 (= e!4071764 e!4071762)))

(declare-fun c!1250487 () Bool)

(assert (=> b!6741014 (= c!1250487 ((_ is Union!16567) (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))))))

(declare-fun b!6741015 () Bool)

(assert (=> b!6741015 (= e!4071761 e!4071765)))

(declare-fun c!1250486 () Bool)

(assert (=> b!6741015 (= c!1250486 ((_ is Concat!25412) (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))))))

(declare-fun b!6741016 () Bool)

(declare-fun call!609383 () (InoxSet Context!11902))

(assert (=> b!6741016 (= e!4071765 call!609383)))

(declare-fun c!1250488 () Bool)

(declare-fun bm!609377 () Bool)

(assert (=> bm!609377 (= call!609384 ($colon$colon!2384 (exprs!6451 (ite c!1250285 lt!2438917 (Context!11903 call!609234))) (ite (or c!1250488 c!1250486) (regTwo!33646 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))) (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292))))))))

(declare-fun b!6741017 () Bool)

(declare-fun call!609386 () (InoxSet Context!11902))

(assert (=> b!6741017 (= e!4071762 ((_ map or) call!609386 call!609385))))

(declare-fun bm!609378 () Bool)

(assert (=> bm!609378 (= call!609383 call!609382)))

(declare-fun bm!609379 () Bool)

(assert (=> bm!609379 (= call!609386 (derivationStepZipperDown!1795 (ite c!1250487 (regOne!33647 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))) (ite c!1250488 (regTwo!33646 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))) (ite c!1250486 (regOne!33646 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))) (reg!16896 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292))))))) (ite (or c!1250487 c!1250488) (ite c!1250285 lt!2438917 (Context!11903 call!609234)) (Context!11903 call!609381)) (h!72326 s!2326)))))

(declare-fun b!6741018 () Bool)

(assert (=> b!6741018 (= e!4071760 call!609383)))

(declare-fun b!6741019 () Bool)

(assert (=> b!6741019 (= c!1250488 e!4071763)))

(declare-fun res!2757346 () Bool)

(assert (=> b!6741019 (=> (not res!2757346) (not e!4071763))))

(assert (=> b!6741019 (= res!2757346 ((_ is Concat!25412) (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))))))

(assert (=> b!6741019 (= e!4071762 e!4071761)))

(declare-fun bm!609380 () Bool)

(assert (=> bm!609380 (= call!609382 call!609386)))

(declare-fun b!6741020 () Bool)

(assert (=> b!6741020 (= e!4071760 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609381 () Bool)

(assert (=> bm!609381 (= call!609385 (derivationStepZipperDown!1795 (ite c!1250487 (regTwo!33647 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292)))) (regOne!33646 (ite c!1250285 (regTwo!33647 (reg!16896 r!7292)) (regOne!33646 (reg!16896 r!7292))))) (ite c!1250487 (ite c!1250285 lt!2438917 (Context!11903 call!609234)) (Context!11903 call!609384)) (h!72326 s!2326)))))

(declare-fun b!6741021 () Bool)

(assert (=> b!6741021 (= e!4071764 (store ((as const (Array Context!11902 Bool)) false) (ite c!1250285 lt!2438917 (Context!11903 call!609234)) true))))

(assert (= (and d!2118047 c!1250485) b!6741021))

(assert (= (and d!2118047 (not c!1250485)) b!6741014))

(assert (= (and b!6741014 c!1250487) b!6741017))

(assert (= (and b!6741014 (not c!1250487)) b!6741019))

(assert (= (and b!6741019 res!2757346) b!6741013))

(assert (= (and b!6741019 c!1250488) b!6741012))

(assert (= (and b!6741019 (not c!1250488)) b!6741015))

(assert (= (and b!6741015 c!1250486) b!6741016))

(assert (= (and b!6741015 (not c!1250486)) b!6741011))

(assert (= (and b!6741011 c!1250489) b!6741018))

(assert (= (and b!6741011 (not c!1250489)) b!6741020))

(assert (= (or b!6741016 b!6741018) bm!609376))

(assert (= (or b!6741016 b!6741018) bm!609378))

(assert (= (or b!6741012 bm!609376) bm!609377))

(assert (= (or b!6741012 bm!609378) bm!609380))

(assert (= (or b!6741017 b!6741012) bm!609381))

(assert (= (or b!6741017 bm!609380) bm!609379))

(declare-fun m!7497594 () Bool)

(assert (=> b!6741013 m!7497594))

(declare-fun m!7497596 () Bool)

(assert (=> b!6741021 m!7497596))

(declare-fun m!7497598 () Bool)

(assert (=> bm!609381 m!7497598))

(declare-fun m!7497600 () Bool)

(assert (=> bm!609379 m!7497600))

(declare-fun m!7497602 () Bool)

(assert (=> bm!609377 m!7497602))

(assert (=> bm!609231 d!2118047))

(assert (=> bs!1792161 d!2117629))

(assert (=> d!2117555 d!2117979))

(declare-fun b!6741022 () Bool)

(declare-fun e!4071770 () Bool)

(assert (=> b!6741022 (= e!4071770 (= (head!13562 Nil!65878) (c!1250093 (reg!16896 r!7292))))))

(declare-fun b!6741023 () Bool)

(declare-fun res!2757354 () Bool)

(declare-fun e!4071771 () Bool)

(assert (=> b!6741023 (=> res!2757354 e!4071771)))

(assert (=> b!6741023 (= res!2757354 (not ((_ is ElementMatch!16567) (reg!16896 r!7292))))))

(declare-fun e!4071768 () Bool)

(assert (=> b!6741023 (= e!4071768 e!4071771)))

(declare-fun b!6741024 () Bool)

(declare-fun e!4071767 () Bool)

(declare-fun lt!2439055 () Bool)

(declare-fun call!609387 () Bool)

(assert (=> b!6741024 (= e!4071767 (= lt!2439055 call!609387))))

(declare-fun b!6741025 () Bool)

(declare-fun e!4071766 () Bool)

(declare-fun e!4071772 () Bool)

(assert (=> b!6741025 (= e!4071766 e!4071772)))

(declare-fun res!2757353 () Bool)

(assert (=> b!6741025 (=> res!2757353 e!4071772)))

(assert (=> b!6741025 (= res!2757353 call!609387)))

(declare-fun b!6741026 () Bool)

(assert (=> b!6741026 (= e!4071768 (not lt!2439055))))

(declare-fun b!6741027 () Bool)

(declare-fun res!2757350 () Bool)

(assert (=> b!6741027 (=> res!2757350 e!4071771)))

(assert (=> b!6741027 (= res!2757350 e!4071770)))

(declare-fun res!2757349 () Bool)

(assert (=> b!6741027 (=> (not res!2757349) (not e!4071770))))

(assert (=> b!6741027 (= res!2757349 lt!2439055)))

(declare-fun b!6741028 () Bool)

(declare-fun res!2757352 () Bool)

(assert (=> b!6741028 (=> (not res!2757352) (not e!4071770))))

(assert (=> b!6741028 (= res!2757352 (not call!609387))))

(declare-fun b!6741029 () Bool)

(declare-fun e!4071769 () Bool)

(assert (=> b!6741029 (= e!4071769 (nullable!6554 (reg!16896 r!7292)))))

(declare-fun b!6741030 () Bool)

(assert (=> b!6741030 (= e!4071771 e!4071766)))

(declare-fun res!2757347 () Bool)

(assert (=> b!6741030 (=> (not res!2757347) (not e!4071766))))

(assert (=> b!6741030 (= res!2757347 (not lt!2439055))))

(declare-fun b!6741031 () Bool)

(assert (=> b!6741031 (= e!4071767 e!4071768)))

(declare-fun c!1250492 () Bool)

(assert (=> b!6741031 (= c!1250492 ((_ is EmptyLang!16567) (reg!16896 r!7292)))))

(declare-fun b!6741032 () Bool)

(assert (=> b!6741032 (= e!4071772 (not (= (head!13562 Nil!65878) (c!1250093 (reg!16896 r!7292)))))))

(declare-fun b!6741033 () Bool)

(declare-fun res!2757348 () Bool)

(assert (=> b!6741033 (=> res!2757348 e!4071772)))

(assert (=> b!6741033 (= res!2757348 (not (isEmpty!38218 (tail!12647 Nil!65878))))))

(declare-fun b!6741034 () Bool)

(assert (=> b!6741034 (= e!4071769 (matchR!8750 (derivativeStep!5239 (reg!16896 r!7292) (head!13562 Nil!65878)) (tail!12647 Nil!65878)))))

(declare-fun b!6741035 () Bool)

(declare-fun res!2757351 () Bool)

(assert (=> b!6741035 (=> (not res!2757351) (not e!4071770))))

(assert (=> b!6741035 (= res!2757351 (isEmpty!38218 (tail!12647 Nil!65878)))))

(declare-fun d!2118049 () Bool)

(assert (=> d!2118049 e!4071767))

(declare-fun c!1250491 () Bool)

(assert (=> d!2118049 (= c!1250491 ((_ is EmptyExpr!16567) (reg!16896 r!7292)))))

(assert (=> d!2118049 (= lt!2439055 e!4071769)))

(declare-fun c!1250490 () Bool)

(assert (=> d!2118049 (= c!1250490 (isEmpty!38218 Nil!65878))))

(assert (=> d!2118049 (validRegex!8303 (reg!16896 r!7292))))

(assert (=> d!2118049 (= (matchR!8750 (reg!16896 r!7292) Nil!65878) lt!2439055)))

(declare-fun bm!609382 () Bool)

(assert (=> bm!609382 (= call!609387 (isEmpty!38218 Nil!65878))))

(assert (= (and d!2118049 c!1250490) b!6741029))

(assert (= (and d!2118049 (not c!1250490)) b!6741034))

(assert (= (and d!2118049 c!1250491) b!6741024))

(assert (= (and d!2118049 (not c!1250491)) b!6741031))

(assert (= (and b!6741031 c!1250492) b!6741026))

(assert (= (and b!6741031 (not c!1250492)) b!6741023))

(assert (= (and b!6741023 (not res!2757354)) b!6741027))

(assert (= (and b!6741027 res!2757349) b!6741028))

(assert (= (and b!6741028 res!2757352) b!6741035))

(assert (= (and b!6741035 res!2757351) b!6741022))

(assert (= (and b!6741027 (not res!2757350)) b!6741030))

(assert (= (and b!6741030 res!2757347) b!6741025))

(assert (= (and b!6741025 (not res!2757353)) b!6741033))

(assert (= (and b!6741033 (not res!2757348)) b!6741032))

(assert (= (or b!6741024 b!6741025 b!6741028) bm!609382))

(declare-fun m!7497604 () Bool)

(assert (=> b!6741033 m!7497604))

(assert (=> b!6741033 m!7497604))

(declare-fun m!7497606 () Bool)

(assert (=> b!6741033 m!7497606))

(declare-fun m!7497608 () Bool)

(assert (=> bm!609382 m!7497608))

(assert (=> d!2118049 m!7497608))

(assert (=> d!2118049 m!7496396))

(declare-fun m!7497610 () Bool)

(assert (=> b!6741034 m!7497610))

(assert (=> b!6741034 m!7497610))

(declare-fun m!7497612 () Bool)

(assert (=> b!6741034 m!7497612))

(assert (=> b!6741034 m!7497604))

(assert (=> b!6741034 m!7497612))

(assert (=> b!6741034 m!7497604))

(declare-fun m!7497614 () Bool)

(assert (=> b!6741034 m!7497614))

(assert (=> b!6741022 m!7497610))

(assert (=> b!6741035 m!7497604))

(assert (=> b!6741035 m!7497604))

(assert (=> b!6741035 m!7497606))

(assert (=> b!6741032 m!7497610))

(assert (=> b!6741029 m!7496770))

(assert (=> d!2117555 d!2118049))

(assert (=> d!2117555 d!2117927))

(declare-fun b!6741036 () Bool)

(declare-fun e!4071777 () Bool)

(assert (=> b!6741036 (= e!4071777 (= (head!13562 (_1!36845 (get!22922 lt!2438971))) (c!1250093 (reg!16896 r!7292))))))

(declare-fun b!6741037 () Bool)

(declare-fun res!2757362 () Bool)

(declare-fun e!4071778 () Bool)

(assert (=> b!6741037 (=> res!2757362 e!4071778)))

(assert (=> b!6741037 (= res!2757362 (not ((_ is ElementMatch!16567) (reg!16896 r!7292))))))

(declare-fun e!4071775 () Bool)

(assert (=> b!6741037 (= e!4071775 e!4071778)))

(declare-fun b!6741038 () Bool)

(declare-fun e!4071774 () Bool)

(declare-fun lt!2439056 () Bool)

(declare-fun call!609388 () Bool)

(assert (=> b!6741038 (= e!4071774 (= lt!2439056 call!609388))))

(declare-fun b!6741039 () Bool)

(declare-fun e!4071773 () Bool)

(declare-fun e!4071779 () Bool)

(assert (=> b!6741039 (= e!4071773 e!4071779)))

(declare-fun res!2757361 () Bool)

(assert (=> b!6741039 (=> res!2757361 e!4071779)))

(assert (=> b!6741039 (= res!2757361 call!609388)))

(declare-fun b!6741040 () Bool)

(assert (=> b!6741040 (= e!4071775 (not lt!2439056))))

(declare-fun b!6741041 () Bool)

(declare-fun res!2757358 () Bool)

(assert (=> b!6741041 (=> res!2757358 e!4071778)))

(assert (=> b!6741041 (= res!2757358 e!4071777)))

(declare-fun res!2757357 () Bool)

(assert (=> b!6741041 (=> (not res!2757357) (not e!4071777))))

(assert (=> b!6741041 (= res!2757357 lt!2439056)))

(declare-fun b!6741042 () Bool)

(declare-fun res!2757360 () Bool)

(assert (=> b!6741042 (=> (not res!2757360) (not e!4071777))))

(assert (=> b!6741042 (= res!2757360 (not call!609388))))

(declare-fun b!6741043 () Bool)

(declare-fun e!4071776 () Bool)

(assert (=> b!6741043 (= e!4071776 (nullable!6554 (reg!16896 r!7292)))))

(declare-fun b!6741044 () Bool)

(assert (=> b!6741044 (= e!4071778 e!4071773)))

(declare-fun res!2757355 () Bool)

(assert (=> b!6741044 (=> (not res!2757355) (not e!4071773))))

(assert (=> b!6741044 (= res!2757355 (not lt!2439056))))

(declare-fun b!6741045 () Bool)

(assert (=> b!6741045 (= e!4071774 e!4071775)))

(declare-fun c!1250495 () Bool)

(assert (=> b!6741045 (= c!1250495 ((_ is EmptyLang!16567) (reg!16896 r!7292)))))

(declare-fun b!6741046 () Bool)

(assert (=> b!6741046 (= e!4071779 (not (= (head!13562 (_1!36845 (get!22922 lt!2438971))) (c!1250093 (reg!16896 r!7292)))))))

(declare-fun b!6741047 () Bool)

(declare-fun res!2757356 () Bool)

(assert (=> b!6741047 (=> res!2757356 e!4071779)))

(assert (=> b!6741047 (= res!2757356 (not (isEmpty!38218 (tail!12647 (_1!36845 (get!22922 lt!2438971))))))))

(declare-fun b!6741048 () Bool)

(assert (=> b!6741048 (= e!4071776 (matchR!8750 (derivativeStep!5239 (reg!16896 r!7292) (head!13562 (_1!36845 (get!22922 lt!2438971)))) (tail!12647 (_1!36845 (get!22922 lt!2438971)))))))

(declare-fun b!6741049 () Bool)

(declare-fun res!2757359 () Bool)

(assert (=> b!6741049 (=> (not res!2757359) (not e!4071777))))

(assert (=> b!6741049 (= res!2757359 (isEmpty!38218 (tail!12647 (_1!36845 (get!22922 lt!2438971)))))))

(declare-fun d!2118051 () Bool)

(assert (=> d!2118051 e!4071774))

(declare-fun c!1250494 () Bool)

(assert (=> d!2118051 (= c!1250494 ((_ is EmptyExpr!16567) (reg!16896 r!7292)))))

(assert (=> d!2118051 (= lt!2439056 e!4071776)))

(declare-fun c!1250493 () Bool)

(assert (=> d!2118051 (= c!1250493 (isEmpty!38218 (_1!36845 (get!22922 lt!2438971))))))

(assert (=> d!2118051 (validRegex!8303 (reg!16896 r!7292))))

(assert (=> d!2118051 (= (matchR!8750 (reg!16896 r!7292) (_1!36845 (get!22922 lt!2438971))) lt!2439056)))

(declare-fun bm!609383 () Bool)

(assert (=> bm!609383 (= call!609388 (isEmpty!38218 (_1!36845 (get!22922 lt!2438971))))))

(assert (= (and d!2118051 c!1250493) b!6741043))

(assert (= (and d!2118051 (not c!1250493)) b!6741048))

(assert (= (and d!2118051 c!1250494) b!6741038))

(assert (= (and d!2118051 (not c!1250494)) b!6741045))

(assert (= (and b!6741045 c!1250495) b!6741040))

(assert (= (and b!6741045 (not c!1250495)) b!6741037))

(assert (= (and b!6741037 (not res!2757362)) b!6741041))

(assert (= (and b!6741041 res!2757357) b!6741042))

(assert (= (and b!6741042 res!2757360) b!6741049))

(assert (= (and b!6741049 res!2757359) b!6741036))

(assert (= (and b!6741041 (not res!2757358)) b!6741044))

(assert (= (and b!6741044 res!2757355) b!6741039))

(assert (= (and b!6741039 (not res!2757361)) b!6741047))

(assert (= (and b!6741047 (not res!2757356)) b!6741046))

(assert (= (or b!6741038 b!6741039 b!6741042) bm!609383))

(declare-fun m!7497616 () Bool)

(assert (=> b!6741047 m!7497616))

(assert (=> b!6741047 m!7497616))

(declare-fun m!7497618 () Bool)

(assert (=> b!6741047 m!7497618))

(declare-fun m!7497620 () Bool)

(assert (=> bm!609383 m!7497620))

(assert (=> d!2118051 m!7497620))

(assert (=> d!2118051 m!7496396))

(declare-fun m!7497622 () Bool)

(assert (=> b!6741048 m!7497622))

(assert (=> b!6741048 m!7497622))

(declare-fun m!7497624 () Bool)

(assert (=> b!6741048 m!7497624))

(assert (=> b!6741048 m!7497616))

(assert (=> b!6741048 m!7497624))

(assert (=> b!6741048 m!7497616))

(declare-fun m!7497626 () Bool)

(assert (=> b!6741048 m!7497626))

(assert (=> b!6741036 m!7497622))

(assert (=> b!6741049 m!7497616))

(assert (=> b!6741049 m!7497616))

(assert (=> b!6741049 m!7497618))

(assert (=> b!6741046 m!7497622))

(assert (=> b!6741043 m!7496770))

(assert (=> b!6739768 d!2118051))

(assert (=> b!6739768 d!2117951))

(declare-fun d!2118053 () Bool)

(declare-fun res!2757363 () Bool)

(declare-fun e!4071780 () Bool)

(assert (=> d!2118053 (=> res!2757363 e!4071780)))

(assert (=> d!2118053 (= res!2757363 ((_ is Nil!65876) (exprs!6451 (h!72325 zl!343))))))

(assert (=> d!2118053 (= (forall!15767 (exprs!6451 (h!72325 zl!343)) lambda!378616) e!4071780)))

(declare-fun b!6741050 () Bool)

(declare-fun e!4071781 () Bool)

(assert (=> b!6741050 (= e!4071780 e!4071781)))

(declare-fun res!2757364 () Bool)

(assert (=> b!6741050 (=> (not res!2757364) (not e!4071781))))

(assert (=> b!6741050 (= res!2757364 (dynLambda!26286 lambda!378616 (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6741051 () Bool)

(assert (=> b!6741051 (= e!4071781 (forall!15767 (t!379697 (exprs!6451 (h!72325 zl!343))) lambda!378616))))

(assert (= (and d!2118053 (not res!2757363)) b!6741050))

(assert (= (and b!6741050 res!2757364) b!6741051))

(declare-fun b_lambda!253867 () Bool)

(assert (=> (not b_lambda!253867) (not b!6741050)))

(declare-fun m!7497628 () Bool)

(assert (=> b!6741050 m!7497628))

(declare-fun m!7497630 () Bool)

(assert (=> b!6741051 m!7497630))

(assert (=> d!2117605 d!2118053))

(declare-fun d!2118055 () Bool)

(declare-fun lambda!378694 () Int)

(declare-fun exists!2701 ((InoxSet Context!11902) Int) Bool)

(assert (=> d!2118055 (= (nullableZipper!2282 lt!2438916) (exists!2701 lt!2438916 lambda!378694))))

(declare-fun bs!1792439 () Bool)

(assert (= bs!1792439 d!2118055))

(declare-fun m!7497632 () Bool)

(assert (=> bs!1792439 m!7497632))

(assert (=> b!6740198 d!2118055))

(assert (=> b!6740129 d!2117977))

(declare-fun d!2118057 () Bool)

(assert (=> d!2118057 (= ($colon$colon!2384 (exprs!6451 lt!2438917) (ite (or c!1250286 c!1250284) (regTwo!33646 (reg!16896 r!7292)) (reg!16896 r!7292))) (Cons!65876 (ite (or c!1250286 c!1250284) (regTwo!33646 (reg!16896 r!7292)) (reg!16896 r!7292)) (exprs!6451 lt!2438917)))))

(assert (=> bm!609227 d!2118057))

(declare-fun d!2118059 () Bool)

(assert (=> d!2118059 (= (nullable!6554 (reg!16896 r!7292)) (nullableFct!2468 (reg!16896 r!7292)))))

(declare-fun bs!1792440 () Bool)

(assert (= bs!1792440 d!2118059))

(declare-fun m!7497634 () Bool)

(assert (=> bs!1792440 m!7497634))

(assert (=> b!6740172 d!2118059))

(declare-fun bs!1792441 () Bool)

(declare-fun d!2118061 () Bool)

(assert (= bs!1792441 (and d!2118061 d!2118055)))

(declare-fun lambda!378695 () Int)

(assert (=> bs!1792441 (= lambda!378695 lambda!378694)))

(assert (=> d!2118061 (= (nullableZipper!2282 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326))) (exists!2701 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) lambda!378695))))

(declare-fun bs!1792442 () Bool)

(assert (= bs!1792442 d!2118061))

(assert (=> bs!1792442 m!7496258))

(declare-fun m!7497636 () Bool)

(assert (=> bs!1792442 m!7497636))

(assert (=> b!6740200 d!2118061))

(declare-fun d!2118063 () Bool)

(declare-fun res!2757365 () Bool)

(declare-fun e!4071782 () Bool)

(assert (=> d!2118063 (=> res!2757365 e!4071782)))

(assert (=> d!2118063 (= res!2757365 ((_ is Nil!65876) (exprs!6451 setElem!46011)))))

(assert (=> d!2118063 (= (forall!15767 (exprs!6451 setElem!46011) lambda!378615) e!4071782)))

(declare-fun b!6741052 () Bool)

(declare-fun e!4071783 () Bool)

(assert (=> b!6741052 (= e!4071782 e!4071783)))

(declare-fun res!2757366 () Bool)

(assert (=> b!6741052 (=> (not res!2757366) (not e!4071783))))

(assert (=> b!6741052 (= res!2757366 (dynLambda!26286 lambda!378615 (h!72324 (exprs!6451 setElem!46011))))))

(declare-fun b!6741053 () Bool)

(assert (=> b!6741053 (= e!4071783 (forall!15767 (t!379697 (exprs!6451 setElem!46011)) lambda!378615))))

(assert (= (and d!2118063 (not res!2757365)) b!6741052))

(assert (= (and b!6741052 res!2757366) b!6741053))

(declare-fun b_lambda!253869 () Bool)

(assert (=> (not b_lambda!253869) (not b!6741052)))

(declare-fun m!7497638 () Bool)

(assert (=> b!6741052 m!7497638))

(declare-fun m!7497640 () Bool)

(assert (=> b!6741053 m!7497640))

(assert (=> d!2117603 d!2118063))

(declare-fun d!2118065 () Bool)

(assert (=> d!2118065 (= (isEmpty!38221 (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 Nil!65878 s!2326 s!2326)) (not ((_ is Some!16453) (findConcatSeparation!2868 (reg!16896 r!7292) r!7292 Nil!65878 s!2326 s!2326))))))

(assert (=> d!2117503 d!2118065))

(assert (=> d!2117669 d!2117665))

(declare-fun d!2118067 () Bool)

(assert (=> d!2118067 (= (flatMap!2048 lt!2438916 lambda!378557) (dynLambda!26284 lambda!378557 lt!2438913))))

(assert (=> d!2118067 true))

(declare-fun _$13!4084 () Unit!159825)

(assert (=> d!2118067 (= (choose!50247 lt!2438916 lt!2438913 lambda!378557) _$13!4084)))

(declare-fun b_lambda!253871 () Bool)

(assert (=> (not b_lambda!253871) (not d!2118067)))

(declare-fun bs!1792443 () Bool)

(assert (= bs!1792443 d!2118067))

(assert (=> bs!1792443 m!7496294))

(assert (=> bs!1792443 m!7496792))

(assert (=> d!2117669 d!2118067))

(declare-fun d!2118069 () Bool)

(assert (=> d!2118069 (= (head!13561 (unfocusZipperList!1988 zl!343)) (h!72324 (unfocusZipperList!1988 zl!343)))))

(assert (=> b!6739987 d!2118069))

(declare-fun d!2118071 () Bool)

(assert (=> d!2118071 (= (nullable!6554 (h!72324 (exprs!6451 lt!2438913))) (nullableFct!2468 (h!72324 (exprs!6451 lt!2438913))))))

(declare-fun bs!1792444 () Bool)

(assert (= bs!1792444 d!2118071))

(declare-fun m!7497642 () Bool)

(assert (=> bs!1792444 m!7497642))

(assert (=> b!6740193 d!2118071))

(declare-fun b!6741054 () Bool)

(declare-fun e!4071789 () Bool)

(declare-fun call!609391 () Bool)

(assert (=> b!6741054 (= e!4071789 call!609391)))

(declare-fun b!6741055 () Bool)

(declare-fun e!4071788 () Bool)

(declare-fun e!4071786 () Bool)

(assert (=> b!6741055 (= e!4071788 e!4071786)))

(declare-fun c!1250499 () Bool)

(assert (=> b!6741055 (= c!1250499 ((_ is Union!16567) lt!2438994))))

(declare-fun b!6741056 () Bool)

(declare-fun e!4071784 () Bool)

(declare-fun call!609390 () Bool)

(assert (=> b!6741056 (= e!4071784 call!609390)))

(declare-fun b!6741057 () Bool)

(assert (=> b!6741057 (= e!4071788 e!4071784)))

(declare-fun res!2757370 () Bool)

(assert (=> b!6741057 (= res!2757370 (not (nullable!6554 (reg!16896 lt!2438994))))))

(assert (=> b!6741057 (=> (not res!2757370) (not e!4071784))))

(declare-fun b!6741058 () Bool)

(declare-fun res!2757367 () Bool)

(declare-fun e!4071785 () Bool)

(assert (=> b!6741058 (=> res!2757367 e!4071785)))

(assert (=> b!6741058 (= res!2757367 (not ((_ is Concat!25412) lt!2438994)))))

(assert (=> b!6741058 (= e!4071786 e!4071785)))

(declare-fun b!6741059 () Bool)

(declare-fun e!4071787 () Bool)

(assert (=> b!6741059 (= e!4071787 call!609391)))

(declare-fun b!6741060 () Bool)

(declare-fun e!4071790 () Bool)

(assert (=> b!6741060 (= e!4071790 e!4071788)))

(declare-fun c!1250498 () Bool)

(assert (=> b!6741060 (= c!1250498 ((_ is Star!16567) lt!2438994))))

(declare-fun b!6741061 () Bool)

(assert (=> b!6741061 (= e!4071785 e!4071787)))

(declare-fun res!2757369 () Bool)

(assert (=> b!6741061 (=> (not res!2757369) (not e!4071787))))

(declare-fun call!609389 () Bool)

(assert (=> b!6741061 (= res!2757369 call!609389)))

(declare-fun bm!609385 () Bool)

(assert (=> bm!609385 (= call!609391 (validRegex!8303 (ite c!1250499 (regTwo!33647 lt!2438994) (regTwo!33646 lt!2438994))))))

(declare-fun b!6741062 () Bool)

(declare-fun res!2757371 () Bool)

(assert (=> b!6741062 (=> (not res!2757371) (not e!4071789))))

(assert (=> b!6741062 (= res!2757371 call!609389)))

(assert (=> b!6741062 (= e!4071786 e!4071789)))

(declare-fun bm!609386 () Bool)

(assert (=> bm!609386 (= call!609389 call!609390)))

(declare-fun d!2118073 () Bool)

(declare-fun res!2757368 () Bool)

(assert (=> d!2118073 (=> res!2757368 e!4071790)))

(assert (=> d!2118073 (= res!2757368 ((_ is ElementMatch!16567) lt!2438994))))

(assert (=> d!2118073 (= (validRegex!8303 lt!2438994) e!4071790)))

(declare-fun bm!609384 () Bool)

(assert (=> bm!609384 (= call!609390 (validRegex!8303 (ite c!1250498 (reg!16896 lt!2438994) (ite c!1250499 (regOne!33647 lt!2438994) (regOne!33646 lt!2438994)))))))

(assert (= (and d!2118073 (not res!2757368)) b!6741060))

(assert (= (and b!6741060 c!1250498) b!6741057))

(assert (= (and b!6741060 (not c!1250498)) b!6741055))

(assert (= (and b!6741057 res!2757370) b!6741056))

(assert (= (and b!6741055 c!1250499) b!6741062))

(assert (= (and b!6741055 (not c!1250499)) b!6741058))

(assert (= (and b!6741062 res!2757371) b!6741054))

(assert (= (and b!6741058 (not res!2757367)) b!6741061))

(assert (= (and b!6741061 res!2757369) b!6741059))

(assert (= (or b!6741054 b!6741059) bm!609385))

(assert (= (or b!6741062 b!6741061) bm!609386))

(assert (= (or b!6741056 bm!609386) bm!609384))

(declare-fun m!7497644 () Bool)

(assert (=> b!6741057 m!7497644))

(declare-fun m!7497646 () Bool)

(assert (=> bm!609385 m!7497646))

(declare-fun m!7497648 () Bool)

(assert (=> bm!609384 m!7497648))

(assert (=> d!2117607 d!2118073))

(declare-fun d!2118075 () Bool)

(declare-fun res!2757372 () Bool)

(declare-fun e!4071791 () Bool)

(assert (=> d!2118075 (=> res!2757372 e!4071791)))

(assert (=> d!2118075 (= res!2757372 ((_ is Nil!65876) (unfocusZipperList!1988 zl!343)))))

(assert (=> d!2118075 (= (forall!15767 (unfocusZipperList!1988 zl!343) lambda!378623) e!4071791)))

(declare-fun b!6741063 () Bool)

(declare-fun e!4071792 () Bool)

(assert (=> b!6741063 (= e!4071791 e!4071792)))

(declare-fun res!2757373 () Bool)

(assert (=> b!6741063 (=> (not res!2757373) (not e!4071792))))

(assert (=> b!6741063 (= res!2757373 (dynLambda!26286 lambda!378623 (h!72324 (unfocusZipperList!1988 zl!343))))))

(declare-fun b!6741064 () Bool)

(assert (=> b!6741064 (= e!4071792 (forall!15767 (t!379697 (unfocusZipperList!1988 zl!343)) lambda!378623))))

(assert (= (and d!2118075 (not res!2757372)) b!6741063))

(assert (= (and b!6741063 res!2757373) b!6741064))

(declare-fun b_lambda!253873 () Bool)

(assert (=> (not b_lambda!253873) (not b!6741063)))

(declare-fun m!7497650 () Bool)

(assert (=> b!6741063 m!7497650))

(declare-fun m!7497652 () Bool)

(assert (=> b!6741064 m!7497652))

(assert (=> d!2117607 d!2118075))

(declare-fun d!2118077 () Bool)

(assert (=> d!2118077 true))

(declare-fun setRes!46030 () Bool)

(assert (=> d!2118077 setRes!46030))

(declare-fun condSetEmpty!46030 () Bool)

(declare-fun res!2757374 () (InoxSet Context!11902))

(assert (=> d!2118077 (= condSetEmpty!46030 (= res!2757374 ((as const (Array Context!11902 Bool)) false)))))

(assert (=> d!2118077 (= (choose!50246 lt!2438924 lambda!378557) res!2757374)))

(declare-fun setIsEmpty!46030 () Bool)

(assert (=> setIsEmpty!46030 setRes!46030))

(declare-fun tp!1847957 () Bool)

(declare-fun e!4071793 () Bool)

(declare-fun setElem!46030 () Context!11902)

(declare-fun setNonEmpty!46030 () Bool)

(assert (=> setNonEmpty!46030 (= setRes!46030 (and tp!1847957 (inv!84664 setElem!46030) e!4071793))))

(declare-fun setRest!46030 () (InoxSet Context!11902))

(assert (=> setNonEmpty!46030 (= res!2757374 ((_ map or) (store ((as const (Array Context!11902 Bool)) false) setElem!46030 true) setRest!46030))))

(declare-fun b!6741065 () Bool)

(declare-fun tp!1847956 () Bool)

(assert (=> b!6741065 (= e!4071793 tp!1847956)))

(assert (= (and d!2118077 condSetEmpty!46030) setIsEmpty!46030))

(assert (= (and d!2118077 (not condSetEmpty!46030)) setNonEmpty!46030))

(assert (= setNonEmpty!46030 b!6741065))

(declare-fun m!7497654 () Bool)

(assert (=> setNonEmpty!46030 m!7497654))

(assert (=> d!2117627 d!2118077))

(declare-fun bs!1792445 () Bool)

(declare-fun d!2118079 () Bool)

(assert (= bs!1792445 (and d!2118079 d!2117619)))

(declare-fun lambda!378696 () Int)

(assert (=> bs!1792445 (= lambda!378696 lambda!378626)))

(declare-fun bs!1792446 () Bool)

(assert (= bs!1792446 (and d!2118079 d!2117587)))

(assert (=> bs!1792446 (= lambda!378696 lambda!378610)))

(declare-fun bs!1792447 () Bool)

(assert (= bs!1792447 (and d!2118079 d!2117607)))

(assert (=> bs!1792447 (= lambda!378696 lambda!378623)))

(declare-fun bs!1792448 () Bool)

(assert (= bs!1792448 (and d!2118079 d!2117603)))

(assert (=> bs!1792448 (= lambda!378696 lambda!378615)))

(declare-fun bs!1792449 () Bool)

(assert (= bs!1792449 (and d!2118079 d!2117599)))

(assert (=> bs!1792449 (= lambda!378696 lambda!378614)))

(declare-fun bs!1792450 () Bool)

(assert (= bs!1792450 (and d!2118079 d!2117963)))

(assert (=> bs!1792450 (= lambda!378696 lambda!378681)))

(declare-fun bs!1792451 () Bool)

(assert (= bs!1792451 (and d!2118079 d!2117929)))

(assert (=> bs!1792451 (= lambda!378696 lambda!378673)))

(declare-fun bs!1792452 () Bool)

(assert (= bs!1792452 (and d!2118079 d!2117605)))

(assert (=> bs!1792452 (= lambda!378696 lambda!378616)))

(declare-fun bs!1792453 () Bool)

(assert (= bs!1792453 (and d!2118079 d!2118029)))

(assert (=> bs!1792453 (= lambda!378696 lambda!378684)))

(declare-fun bs!1792454 () Bool)

(assert (= bs!1792454 (and d!2118079 d!2118031)))

(assert (=> bs!1792454 (= lambda!378696 lambda!378685)))

(declare-fun bs!1792455 () Bool)

(assert (= bs!1792455 (and d!2118079 d!2117943)))

(assert (=> bs!1792455 (= lambda!378696 lambda!378674)))

(declare-fun b!6741066 () Bool)

(declare-fun e!4071794 () Bool)

(declare-fun lt!2439057 () Regex!16567)

(assert (=> b!6741066 (= e!4071794 (isUnion!1370 lt!2439057))))

(declare-fun b!6741067 () Bool)

(declare-fun e!4071799 () Regex!16567)

(declare-fun e!4071798 () Regex!16567)

(assert (=> b!6741067 (= e!4071799 e!4071798)))

(declare-fun c!1250503 () Bool)

(assert (=> b!6741067 (= c!1250503 ((_ is Cons!65876) (t!379697 (unfocusZipperList!1988 zl!343))))))

(declare-fun b!6741068 () Bool)

(declare-fun e!4071795 () Bool)

(assert (=> b!6741068 (= e!4071795 (isEmptyLang!1940 lt!2439057))))

(declare-fun b!6741069 () Bool)

(declare-fun e!4071796 () Bool)

(assert (=> b!6741069 (= e!4071796 (isEmpty!38222 (t!379697 (t!379697 (unfocusZipperList!1988 zl!343)))))))

(declare-fun b!6741070 () Bool)

(assert (=> b!6741070 (= e!4071799 (h!72324 (t!379697 (unfocusZipperList!1988 zl!343))))))

(declare-fun e!4071797 () Bool)

(assert (=> d!2118079 e!4071797))

(declare-fun res!2757375 () Bool)

(assert (=> d!2118079 (=> (not res!2757375) (not e!4071797))))

(assert (=> d!2118079 (= res!2757375 (validRegex!8303 lt!2439057))))

(assert (=> d!2118079 (= lt!2439057 e!4071799)))

(declare-fun c!1250500 () Bool)

(assert (=> d!2118079 (= c!1250500 e!4071796)))

(declare-fun res!2757376 () Bool)

(assert (=> d!2118079 (=> (not res!2757376) (not e!4071796))))

(assert (=> d!2118079 (= res!2757376 ((_ is Cons!65876) (t!379697 (unfocusZipperList!1988 zl!343))))))

(assert (=> d!2118079 (forall!15767 (t!379697 (unfocusZipperList!1988 zl!343)) lambda!378696)))

(assert (=> d!2118079 (= (generalisedUnion!2411 (t!379697 (unfocusZipperList!1988 zl!343))) lt!2439057)))

(declare-fun b!6741071 () Bool)

(assert (=> b!6741071 (= e!4071798 (Union!16567 (h!72324 (t!379697 (unfocusZipperList!1988 zl!343))) (generalisedUnion!2411 (t!379697 (t!379697 (unfocusZipperList!1988 zl!343))))))))

(declare-fun b!6741072 () Bool)

(assert (=> b!6741072 (= e!4071797 e!4071795)))

(declare-fun c!1250501 () Bool)

(assert (=> b!6741072 (= c!1250501 (isEmpty!38222 (t!379697 (unfocusZipperList!1988 zl!343))))))

(declare-fun b!6741073 () Bool)

(assert (=> b!6741073 (= e!4071798 EmptyLang!16567)))

(declare-fun b!6741074 () Bool)

(assert (=> b!6741074 (= e!4071795 e!4071794)))

(declare-fun c!1250502 () Bool)

(assert (=> b!6741074 (= c!1250502 (isEmpty!38222 (tail!12646 (t!379697 (unfocusZipperList!1988 zl!343)))))))

(declare-fun b!6741075 () Bool)

(assert (=> b!6741075 (= e!4071794 (= lt!2439057 (head!13561 (t!379697 (unfocusZipperList!1988 zl!343)))))))

(assert (= (and d!2118079 res!2757376) b!6741069))

(assert (= (and d!2118079 c!1250500) b!6741070))

(assert (= (and d!2118079 (not c!1250500)) b!6741067))

(assert (= (and b!6741067 c!1250503) b!6741071))

(assert (= (and b!6741067 (not c!1250503)) b!6741073))

(assert (= (and d!2118079 res!2757375) b!6741072))

(assert (= (and b!6741072 c!1250501) b!6741068))

(assert (= (and b!6741072 (not c!1250501)) b!6741074))

(assert (= (and b!6741074 c!1250502) b!6741075))

(assert (= (and b!6741074 (not c!1250502)) b!6741066))

(declare-fun m!7497656 () Bool)

(assert (=> b!6741066 m!7497656))

(declare-fun m!7497658 () Bool)

(assert (=> d!2118079 m!7497658))

(declare-fun m!7497660 () Bool)

(assert (=> d!2118079 m!7497660))

(assert (=> b!6741072 m!7496668))

(declare-fun m!7497662 () Bool)

(assert (=> b!6741071 m!7497662))

(declare-fun m!7497664 () Bool)

(assert (=> b!6741074 m!7497664))

(assert (=> b!6741074 m!7497664))

(declare-fun m!7497666 () Bool)

(assert (=> b!6741074 m!7497666))

(declare-fun m!7497668 () Bool)

(assert (=> b!6741069 m!7497668))

(declare-fun m!7497670 () Bool)

(assert (=> b!6741075 m!7497670))

(declare-fun m!7497672 () Bool)

(assert (=> b!6741068 m!7497672))

(assert (=> b!6739983 d!2118079))

(declare-fun b!6741076 () Bool)

(declare-fun c!1250508 () Bool)

(assert (=> b!6741076 (= c!1250508 ((_ is Star!16567) (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun e!4071805 () (InoxSet Context!11902))

(declare-fun e!4071800 () (InoxSet Context!11902))

(assert (=> b!6741076 (= e!4071805 e!4071800)))

(declare-fun b!6741077 () Bool)

(declare-fun e!4071801 () (InoxSet Context!11902))

(declare-fun call!609396 () (InoxSet Context!11902))

(declare-fun call!609393 () (InoxSet Context!11902))

(assert (=> b!6741077 (= e!4071801 ((_ map or) call!609396 call!609393))))

(declare-fun b!6741078 () Bool)

(declare-fun e!4071803 () Bool)

(assert (=> b!6741078 (= e!4071803 (nullable!6554 (regOne!33646 (h!72324 (exprs!6451 (h!72325 zl!343))))))))

(declare-fun d!2118081 () Bool)

(declare-fun c!1250504 () Bool)

(assert (=> d!2118081 (= c!1250504 (and ((_ is ElementMatch!16567) (h!72324 (exprs!6451 (h!72325 zl!343)))) (= (c!1250093 (h!72324 (exprs!6451 (h!72325 zl!343)))) (h!72326 s!2326))))))

(declare-fun e!4071804 () (InoxSet Context!11902))

(assert (=> d!2118081 (= (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (h!72325 zl!343))) (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))) (h!72326 s!2326)) e!4071804)))

(declare-fun bm!609387 () Bool)

(declare-fun call!609392 () List!66000)

(declare-fun call!609395 () List!66000)

(assert (=> bm!609387 (= call!609392 call!609395)))

(declare-fun b!6741079 () Bool)

(declare-fun e!4071802 () (InoxSet Context!11902))

(assert (=> b!6741079 (= e!4071804 e!4071802)))

(declare-fun c!1250506 () Bool)

(assert (=> b!6741079 (= c!1250506 ((_ is Union!16567) (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6741080 () Bool)

(assert (=> b!6741080 (= e!4071801 e!4071805)))

(declare-fun c!1250505 () Bool)

(assert (=> b!6741080 (= c!1250505 ((_ is Concat!25412) (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6741081 () Bool)

(declare-fun call!609394 () (InoxSet Context!11902))

(assert (=> b!6741081 (= e!4071805 call!609394)))

(declare-fun c!1250507 () Bool)

(declare-fun bm!609388 () Bool)

(assert (=> bm!609388 (= call!609395 ($colon$colon!2384 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343))))) (ite (or c!1250507 c!1250505) (regTwo!33646 (h!72324 (exprs!6451 (h!72325 zl!343)))) (h!72324 (exprs!6451 (h!72325 zl!343))))))))

(declare-fun b!6741082 () Bool)

(declare-fun call!609397 () (InoxSet Context!11902))

(assert (=> b!6741082 (= e!4071802 ((_ map or) call!609397 call!609396))))

(declare-fun bm!609389 () Bool)

(assert (=> bm!609389 (= call!609394 call!609393)))

(declare-fun bm!609390 () Bool)

(assert (=> bm!609390 (= call!609397 (derivationStepZipperDown!1795 (ite c!1250506 (regOne!33647 (h!72324 (exprs!6451 (h!72325 zl!343)))) (ite c!1250507 (regTwo!33646 (h!72324 (exprs!6451 (h!72325 zl!343)))) (ite c!1250505 (regOne!33646 (h!72324 (exprs!6451 (h!72325 zl!343)))) (reg!16896 (h!72324 (exprs!6451 (h!72325 zl!343))))))) (ite (or c!1250506 c!1250507) (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))) (Context!11903 call!609392)) (h!72326 s!2326)))))

(declare-fun b!6741083 () Bool)

(assert (=> b!6741083 (= e!4071800 call!609394)))

(declare-fun b!6741084 () Bool)

(assert (=> b!6741084 (= c!1250507 e!4071803)))

(declare-fun res!2757377 () Bool)

(assert (=> b!6741084 (=> (not res!2757377) (not e!4071803))))

(assert (=> b!6741084 (= res!2757377 ((_ is Concat!25412) (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(assert (=> b!6741084 (= e!4071802 e!4071801)))

(declare-fun bm!609391 () Bool)

(assert (=> bm!609391 (= call!609393 call!609397)))

(declare-fun b!6741085 () Bool)

(assert (=> b!6741085 (= e!4071800 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609392 () Bool)

(assert (=> bm!609392 (= call!609396 (derivationStepZipperDown!1795 (ite c!1250506 (regTwo!33647 (h!72324 (exprs!6451 (h!72325 zl!343)))) (regOne!33646 (h!72324 (exprs!6451 (h!72325 zl!343))))) (ite c!1250506 (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))) (Context!11903 call!609395)) (h!72326 s!2326)))))

(declare-fun b!6741086 () Bool)

(assert (=> b!6741086 (= e!4071804 (store ((as const (Array Context!11902 Bool)) false) (Context!11903 (t!379697 (exprs!6451 (h!72325 zl!343)))) true))))

(assert (= (and d!2118081 c!1250504) b!6741086))

(assert (= (and d!2118081 (not c!1250504)) b!6741079))

(assert (= (and b!6741079 c!1250506) b!6741082))

(assert (= (and b!6741079 (not c!1250506)) b!6741084))

(assert (= (and b!6741084 res!2757377) b!6741078))

(assert (= (and b!6741084 c!1250507) b!6741077))

(assert (= (and b!6741084 (not c!1250507)) b!6741080))

(assert (= (and b!6741080 c!1250505) b!6741081))

(assert (= (and b!6741080 (not c!1250505)) b!6741076))

(assert (= (and b!6741076 c!1250508) b!6741083))

(assert (= (and b!6741076 (not c!1250508)) b!6741085))

(assert (= (or b!6741081 b!6741083) bm!609387))

(assert (= (or b!6741081 b!6741083) bm!609389))

(assert (= (or b!6741077 bm!609387) bm!609388))

(assert (= (or b!6741077 bm!609389) bm!609391))

(assert (= (or b!6741082 b!6741077) bm!609392))

(assert (= (or b!6741082 bm!609391) bm!609390))

(declare-fun m!7497674 () Bool)

(assert (=> b!6741078 m!7497674))

(declare-fun m!7497676 () Bool)

(assert (=> b!6741086 m!7497676))

(declare-fun m!7497678 () Bool)

(assert (=> bm!609392 m!7497678))

(declare-fun m!7497680 () Bool)

(assert (=> bm!609390 m!7497680))

(declare-fun m!7497682 () Bool)

(assert (=> bm!609388 m!7497682))

(assert (=> bm!609216 d!2118081))

(declare-fun d!2118083 () Bool)

(assert (=> d!2118083 (= (flatMap!2048 lt!2438906 lambda!378630) (choose!50246 lt!2438906 lambda!378630))))

(declare-fun bs!1792456 () Bool)

(assert (= bs!1792456 d!2118083))

(declare-fun m!7497684 () Bool)

(assert (=> bs!1792456 m!7497684))

(assert (=> d!2117639 d!2118083))

(declare-fun b!6741087 () Bool)

(declare-fun e!4071811 () Bool)

(declare-fun call!609400 () Bool)

(assert (=> b!6741087 (= e!4071811 call!609400)))

(declare-fun b!6741088 () Bool)

(declare-fun e!4071810 () Bool)

(declare-fun e!4071808 () Bool)

(assert (=> b!6741088 (= e!4071810 e!4071808)))

(declare-fun c!1250510 () Bool)

(assert (=> b!6741088 (= c!1250510 ((_ is Union!16567) lt!2438987))))

(declare-fun b!6741089 () Bool)

(declare-fun e!4071806 () Bool)

(declare-fun call!609399 () Bool)

(assert (=> b!6741089 (= e!4071806 call!609399)))

(declare-fun b!6741090 () Bool)

(assert (=> b!6741090 (= e!4071810 e!4071806)))

(declare-fun res!2757381 () Bool)

(assert (=> b!6741090 (= res!2757381 (not (nullable!6554 (reg!16896 lt!2438987))))))

(assert (=> b!6741090 (=> (not res!2757381) (not e!4071806))))

(declare-fun b!6741091 () Bool)

(declare-fun res!2757378 () Bool)

(declare-fun e!4071807 () Bool)

(assert (=> b!6741091 (=> res!2757378 e!4071807)))

(assert (=> b!6741091 (= res!2757378 (not ((_ is Concat!25412) lt!2438987)))))

(assert (=> b!6741091 (= e!4071808 e!4071807)))

(declare-fun b!6741092 () Bool)

(declare-fun e!4071809 () Bool)

(assert (=> b!6741092 (= e!4071809 call!609400)))

(declare-fun b!6741093 () Bool)

(declare-fun e!4071812 () Bool)

(assert (=> b!6741093 (= e!4071812 e!4071810)))

(declare-fun c!1250509 () Bool)

(assert (=> b!6741093 (= c!1250509 ((_ is Star!16567) lt!2438987))))

(declare-fun b!6741094 () Bool)

(assert (=> b!6741094 (= e!4071807 e!4071809)))

(declare-fun res!2757380 () Bool)

(assert (=> b!6741094 (=> (not res!2757380) (not e!4071809))))

(declare-fun call!609398 () Bool)

(assert (=> b!6741094 (= res!2757380 call!609398)))

(declare-fun bm!609394 () Bool)

(assert (=> bm!609394 (= call!609400 (validRegex!8303 (ite c!1250510 (regTwo!33647 lt!2438987) (regTwo!33646 lt!2438987))))))

(declare-fun b!6741095 () Bool)

(declare-fun res!2757382 () Bool)

(assert (=> b!6741095 (=> (not res!2757382) (not e!4071811))))

(assert (=> b!6741095 (= res!2757382 call!609398)))

(assert (=> b!6741095 (= e!4071808 e!4071811)))

(declare-fun bm!609395 () Bool)

(assert (=> bm!609395 (= call!609398 call!609399)))

(declare-fun d!2118085 () Bool)

(declare-fun res!2757379 () Bool)

(assert (=> d!2118085 (=> res!2757379 e!4071812)))

(assert (=> d!2118085 (= res!2757379 ((_ is ElementMatch!16567) lt!2438987))))

(assert (=> d!2118085 (= (validRegex!8303 lt!2438987) e!4071812)))

(declare-fun bm!609393 () Bool)

(assert (=> bm!609393 (= call!609399 (validRegex!8303 (ite c!1250509 (reg!16896 lt!2438987) (ite c!1250510 (regOne!33647 lt!2438987) (regOne!33646 lt!2438987)))))))

(assert (= (and d!2118085 (not res!2757379)) b!6741093))

(assert (= (and b!6741093 c!1250509) b!6741090))

(assert (= (and b!6741093 (not c!1250509)) b!6741088))

(assert (= (and b!6741090 res!2757381) b!6741089))

(assert (= (and b!6741088 c!1250510) b!6741095))

(assert (= (and b!6741088 (not c!1250510)) b!6741091))

(assert (= (and b!6741095 res!2757382) b!6741087))

(assert (= (and b!6741091 (not res!2757378)) b!6741094))

(assert (= (and b!6741094 res!2757380) b!6741092))

(assert (= (or b!6741087 b!6741092) bm!609394))

(assert (= (or b!6741095 b!6741094) bm!609395))

(assert (= (or b!6741089 bm!609395) bm!609393))

(declare-fun m!7497686 () Bool)

(assert (=> b!6741090 m!7497686))

(declare-fun m!7497688 () Bool)

(assert (=> bm!609394 m!7497688))

(declare-fun m!7497690 () Bool)

(assert (=> bm!609393 m!7497690))

(assert (=> d!2117587 d!2118085))

(declare-fun d!2118087 () Bool)

(declare-fun res!2757383 () Bool)

(declare-fun e!4071813 () Bool)

(assert (=> d!2118087 (=> res!2757383 e!4071813)))

(assert (=> d!2118087 (= res!2757383 ((_ is Nil!65876) (exprs!6451 (h!72325 zl!343))))))

(assert (=> d!2118087 (= (forall!15767 (exprs!6451 (h!72325 zl!343)) lambda!378610) e!4071813)))

(declare-fun b!6741096 () Bool)

(declare-fun e!4071814 () Bool)

(assert (=> b!6741096 (= e!4071813 e!4071814)))

(declare-fun res!2757384 () Bool)

(assert (=> b!6741096 (=> (not res!2757384) (not e!4071814))))

(assert (=> b!6741096 (= res!2757384 (dynLambda!26286 lambda!378610 (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun b!6741097 () Bool)

(assert (=> b!6741097 (= e!4071814 (forall!15767 (t!379697 (exprs!6451 (h!72325 zl!343))) lambda!378610))))

(assert (= (and d!2118087 (not res!2757383)) b!6741096))

(assert (= (and b!6741096 res!2757384) b!6741097))

(declare-fun b_lambda!253875 () Bool)

(assert (=> (not b_lambda!253875) (not b!6741096)))

(declare-fun m!7497692 () Bool)

(assert (=> b!6741096 m!7497692))

(declare-fun m!7497694 () Bool)

(assert (=> b!6741097 m!7497694))

(assert (=> d!2117587 d!2118087))

(assert (=> d!2117643 d!2117527))

(assert (=> d!2117643 d!2117661))

(declare-fun d!2118089 () Bool)

(assert (=> d!2118089 true))

(assert (=> d!2118089 true))

(declare-fun res!2757385 () Bool)

(assert (=> d!2118089 (= (choose!50242 lambda!378555) res!2757385)))

(assert (=> d!2117525 d!2118089))

(declare-fun b!6741098 () Bool)

(declare-fun e!4071819 () Bool)

(assert (=> b!6741098 (= e!4071819 (= (head!13562 (_2!36845 (get!22922 lt!2438971))) (c!1250093 r!7292)))))

(declare-fun b!6741099 () Bool)

(declare-fun res!2757393 () Bool)

(declare-fun e!4071820 () Bool)

(assert (=> b!6741099 (=> res!2757393 e!4071820)))

(assert (=> b!6741099 (= res!2757393 (not ((_ is ElementMatch!16567) r!7292)))))

(declare-fun e!4071817 () Bool)

(assert (=> b!6741099 (= e!4071817 e!4071820)))

(declare-fun b!6741100 () Bool)

(declare-fun e!4071816 () Bool)

(declare-fun lt!2439058 () Bool)

(declare-fun call!609401 () Bool)

(assert (=> b!6741100 (= e!4071816 (= lt!2439058 call!609401))))

(declare-fun b!6741101 () Bool)

(declare-fun e!4071815 () Bool)

(declare-fun e!4071821 () Bool)

(assert (=> b!6741101 (= e!4071815 e!4071821)))

(declare-fun res!2757392 () Bool)

(assert (=> b!6741101 (=> res!2757392 e!4071821)))

(assert (=> b!6741101 (= res!2757392 call!609401)))

(declare-fun b!6741102 () Bool)

(assert (=> b!6741102 (= e!4071817 (not lt!2439058))))

(declare-fun b!6741103 () Bool)

(declare-fun res!2757389 () Bool)

(assert (=> b!6741103 (=> res!2757389 e!4071820)))

(assert (=> b!6741103 (= res!2757389 e!4071819)))

(declare-fun res!2757388 () Bool)

(assert (=> b!6741103 (=> (not res!2757388) (not e!4071819))))

(assert (=> b!6741103 (= res!2757388 lt!2439058)))

(declare-fun b!6741104 () Bool)

(declare-fun res!2757391 () Bool)

(assert (=> b!6741104 (=> (not res!2757391) (not e!4071819))))

(assert (=> b!6741104 (= res!2757391 (not call!609401))))

(declare-fun b!6741105 () Bool)

(declare-fun e!4071818 () Bool)

(assert (=> b!6741105 (= e!4071818 (nullable!6554 r!7292))))

(declare-fun b!6741106 () Bool)

(assert (=> b!6741106 (= e!4071820 e!4071815)))

(declare-fun res!2757386 () Bool)

(assert (=> b!6741106 (=> (not res!2757386) (not e!4071815))))

(assert (=> b!6741106 (= res!2757386 (not lt!2439058))))

(declare-fun b!6741107 () Bool)

(assert (=> b!6741107 (= e!4071816 e!4071817)))

(declare-fun c!1250513 () Bool)

(assert (=> b!6741107 (= c!1250513 ((_ is EmptyLang!16567) r!7292))))

(declare-fun b!6741108 () Bool)

(assert (=> b!6741108 (= e!4071821 (not (= (head!13562 (_2!36845 (get!22922 lt!2438971))) (c!1250093 r!7292))))))

(declare-fun b!6741109 () Bool)

(declare-fun res!2757387 () Bool)

(assert (=> b!6741109 (=> res!2757387 e!4071821)))

(assert (=> b!6741109 (= res!2757387 (not (isEmpty!38218 (tail!12647 (_2!36845 (get!22922 lt!2438971))))))))

(declare-fun b!6741110 () Bool)

(assert (=> b!6741110 (= e!4071818 (matchR!8750 (derivativeStep!5239 r!7292 (head!13562 (_2!36845 (get!22922 lt!2438971)))) (tail!12647 (_2!36845 (get!22922 lt!2438971)))))))

(declare-fun b!6741111 () Bool)

(declare-fun res!2757390 () Bool)

(assert (=> b!6741111 (=> (not res!2757390) (not e!4071819))))

(assert (=> b!6741111 (= res!2757390 (isEmpty!38218 (tail!12647 (_2!36845 (get!22922 lt!2438971)))))))

(declare-fun d!2118091 () Bool)

(assert (=> d!2118091 e!4071816))

(declare-fun c!1250512 () Bool)

(assert (=> d!2118091 (= c!1250512 ((_ is EmptyExpr!16567) r!7292))))

(assert (=> d!2118091 (= lt!2439058 e!4071818)))

(declare-fun c!1250511 () Bool)

(assert (=> d!2118091 (= c!1250511 (isEmpty!38218 (_2!36845 (get!22922 lt!2438971))))))

(assert (=> d!2118091 (validRegex!8303 r!7292)))

(assert (=> d!2118091 (= (matchR!8750 r!7292 (_2!36845 (get!22922 lt!2438971))) lt!2439058)))

(declare-fun bm!609396 () Bool)

(assert (=> bm!609396 (= call!609401 (isEmpty!38218 (_2!36845 (get!22922 lt!2438971))))))

(assert (= (and d!2118091 c!1250511) b!6741105))

(assert (= (and d!2118091 (not c!1250511)) b!6741110))

(assert (= (and d!2118091 c!1250512) b!6741100))

(assert (= (and d!2118091 (not c!1250512)) b!6741107))

(assert (= (and b!6741107 c!1250513) b!6741102))

(assert (= (and b!6741107 (not c!1250513)) b!6741099))

(assert (= (and b!6741099 (not res!2757393)) b!6741103))

(assert (= (and b!6741103 res!2757388) b!6741104))

(assert (= (and b!6741104 res!2757391) b!6741111))

(assert (= (and b!6741111 res!2757390) b!6741098))

(assert (= (and b!6741103 (not res!2757389)) b!6741106))

(assert (= (and b!6741106 res!2757386) b!6741101))

(assert (= (and b!6741101 (not res!2757392)) b!6741109))

(assert (= (and b!6741109 (not res!2757387)) b!6741108))

(assert (= (or b!6741100 b!6741101 b!6741104) bm!609396))

(declare-fun m!7497696 () Bool)

(assert (=> b!6741109 m!7497696))

(assert (=> b!6741109 m!7497696))

(declare-fun m!7497698 () Bool)

(assert (=> b!6741109 m!7497698))

(declare-fun m!7497700 () Bool)

(assert (=> bm!609396 m!7497700))

(assert (=> d!2118091 m!7497700))

(assert (=> d!2118091 m!7496280))

(declare-fun m!7497702 () Bool)

(assert (=> b!6741110 m!7497702))

(assert (=> b!6741110 m!7497702))

(declare-fun m!7497704 () Bool)

(assert (=> b!6741110 m!7497704))

(assert (=> b!6741110 m!7497696))

(assert (=> b!6741110 m!7497704))

(assert (=> b!6741110 m!7497696))

(declare-fun m!7497706 () Bool)

(assert (=> b!6741110 m!7497706))

(assert (=> b!6741098 m!7497702))

(assert (=> b!6741111 m!7497696))

(assert (=> b!6741111 m!7497696))

(assert (=> b!6741111 m!7497698))

(assert (=> b!6741108 m!7497702))

(assert (=> b!6741105 m!7496738))

(assert (=> b!6739769 d!2118091))

(assert (=> b!6739769 d!2117951))

(declare-fun d!2118093 () Bool)

(assert (=> d!2118093 (= (nullable!6554 (h!72324 (exprs!6451 lt!2438917))) (nullableFct!2468 (h!72324 (exprs!6451 lt!2438917))))))

(declare-fun bs!1792457 () Bool)

(assert (= bs!1792457 d!2118093))

(declare-fun m!7497708 () Bool)

(assert (=> bs!1792457 m!7497708))

(assert (=> b!6740057 d!2118093))

(declare-fun d!2118095 () Bool)

(assert (=> d!2118095 (= (isEmpty!38222 (exprs!6451 (h!72325 zl!343))) ((_ is Nil!65876) (exprs!6451 (h!72325 zl!343))))))

(assert (=> b!6739885 d!2118095))

(declare-fun c!1250518 () Bool)

(declare-fun b!6741112 () Bool)

(assert (=> b!6741112 (= c!1250518 ((_ is Star!16567) (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))))))

(declare-fun e!4071827 () (InoxSet Context!11902))

(declare-fun e!4071822 () (InoxSet Context!11902))

(assert (=> b!6741112 (= e!4071827 e!4071822)))

(declare-fun b!6741113 () Bool)

(declare-fun e!4071823 () (InoxSet Context!11902))

(declare-fun call!609406 () (InoxSet Context!11902))

(declare-fun call!609403 () (InoxSet Context!11902))

(assert (=> b!6741113 (= e!4071823 ((_ map or) call!609406 call!609403))))

(declare-fun e!4071825 () Bool)

(declare-fun b!6741114 () Bool)

(assert (=> b!6741114 (= e!4071825 (nullable!6554 (regOne!33646 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292)))))))))

(declare-fun c!1250514 () Bool)

(declare-fun d!2118097 () Bool)

(assert (=> d!2118097 (= c!1250514 (and ((_ is ElementMatch!16567) (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))) (= (c!1250093 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))) (h!72326 s!2326))))))

(declare-fun e!4071826 () (InoxSet Context!11902))

(assert (=> d!2118097 (= (derivationStepZipperDown!1795 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292)))) (ite (or c!1250239 c!1250240) (Context!11903 Nil!65876) (Context!11903 call!609201)) (h!72326 s!2326)) e!4071826)))

(declare-fun bm!609397 () Bool)

(declare-fun call!609402 () List!66000)

(declare-fun call!609405 () List!66000)

(assert (=> bm!609397 (= call!609402 call!609405)))

(declare-fun b!6741115 () Bool)

(declare-fun e!4071824 () (InoxSet Context!11902))

(assert (=> b!6741115 (= e!4071826 e!4071824)))

(declare-fun c!1250516 () Bool)

(assert (=> b!6741115 (= c!1250516 ((_ is Union!16567) (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))))))

(declare-fun b!6741116 () Bool)

(assert (=> b!6741116 (= e!4071823 e!4071827)))

(declare-fun c!1250515 () Bool)

(assert (=> b!6741116 (= c!1250515 ((_ is Concat!25412) (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))))))

(declare-fun b!6741117 () Bool)

(declare-fun call!609404 () (InoxSet Context!11902))

(assert (=> b!6741117 (= e!4071827 call!609404)))

(declare-fun bm!609398 () Bool)

(declare-fun c!1250517 () Bool)

(assert (=> bm!609398 (= call!609405 ($colon$colon!2384 (exprs!6451 (ite (or c!1250239 c!1250240) (Context!11903 Nil!65876) (Context!11903 call!609201))) (ite (or c!1250517 c!1250515) (regTwo!33646 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))) (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292)))))))))

(declare-fun b!6741118 () Bool)

(declare-fun call!609407 () (InoxSet Context!11902))

(assert (=> b!6741118 (= e!4071824 ((_ map or) call!609407 call!609406))))

(declare-fun bm!609399 () Bool)

(assert (=> bm!609399 (= call!609404 call!609403)))

(declare-fun bm!609400 () Bool)

(assert (=> bm!609400 (= call!609407 (derivationStepZipperDown!1795 (ite c!1250516 (regOne!33647 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))) (ite c!1250517 (regTwo!33646 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))) (ite c!1250515 (regOne!33646 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))) (reg!16896 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292)))))))) (ite (or c!1250516 c!1250517) (ite (or c!1250239 c!1250240) (Context!11903 Nil!65876) (Context!11903 call!609201)) (Context!11903 call!609402)) (h!72326 s!2326)))))

(declare-fun b!6741119 () Bool)

(assert (=> b!6741119 (= e!4071822 call!609404)))

(declare-fun b!6741120 () Bool)

(assert (=> b!6741120 (= c!1250517 e!4071825)))

(declare-fun res!2757394 () Bool)

(assert (=> b!6741120 (=> (not res!2757394) (not e!4071825))))

(assert (=> b!6741120 (= res!2757394 ((_ is Concat!25412) (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))))))

(assert (=> b!6741120 (= e!4071824 e!4071823)))

(declare-fun bm!609401 () Bool)

(assert (=> bm!609401 (= call!609403 call!609407)))

(declare-fun b!6741121 () Bool)

(assert (=> b!6741121 (= e!4071822 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609402 () Bool)

(assert (=> bm!609402 (= call!609406 (derivationStepZipperDown!1795 (ite c!1250516 (regTwo!33647 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292))))) (regOne!33646 (ite c!1250239 (regOne!33647 r!7292) (ite c!1250240 (regTwo!33646 r!7292) (ite c!1250238 (regOne!33646 r!7292) (reg!16896 r!7292)))))) (ite c!1250516 (ite (or c!1250239 c!1250240) (Context!11903 Nil!65876) (Context!11903 call!609201)) (Context!11903 call!609405)) (h!72326 s!2326)))))

(declare-fun b!6741122 () Bool)

(assert (=> b!6741122 (= e!4071826 (store ((as const (Array Context!11902 Bool)) false) (ite (or c!1250239 c!1250240) (Context!11903 Nil!65876) (Context!11903 call!609201)) true))))

(assert (= (and d!2118097 c!1250514) b!6741122))

(assert (= (and d!2118097 (not c!1250514)) b!6741115))

(assert (= (and b!6741115 c!1250516) b!6741118))

(assert (= (and b!6741115 (not c!1250516)) b!6741120))

(assert (= (and b!6741120 res!2757394) b!6741114))

(assert (= (and b!6741120 c!1250517) b!6741113))

(assert (= (and b!6741120 (not c!1250517)) b!6741116))

(assert (= (and b!6741116 c!1250515) b!6741117))

(assert (= (and b!6741116 (not c!1250515)) b!6741112))

(assert (= (and b!6741112 c!1250518) b!6741119))

(assert (= (and b!6741112 (not c!1250518)) b!6741121))

(assert (= (or b!6741117 b!6741119) bm!609397))

(assert (= (or b!6741117 b!6741119) bm!609399))

(assert (= (or b!6741113 bm!609397) bm!609398))

(assert (= (or b!6741113 bm!609399) bm!609401))

(assert (= (or b!6741118 b!6741113) bm!609402))

(assert (= (or b!6741118 bm!609401) bm!609400))

(declare-fun m!7497710 () Bool)

(assert (=> b!6741114 m!7497710))

(declare-fun m!7497712 () Bool)

(assert (=> b!6741122 m!7497712))

(declare-fun m!7497714 () Bool)

(assert (=> bm!609402 m!7497714))

(declare-fun m!7497716 () Bool)

(assert (=> bm!609400 m!7497716))

(declare-fun m!7497718 () Bool)

(assert (=> bm!609398 m!7497718))

(assert (=> bm!609199 d!2118097))

(declare-fun b!6741123 () Bool)

(declare-fun e!4071830 () (InoxSet Context!11902))

(declare-fun call!609408 () (InoxSet Context!11902))

(assert (=> b!6741123 (= e!4071830 call!609408)))

(declare-fun b!6741124 () Bool)

(declare-fun e!4071829 () (InoxSet Context!11902))

(assert (=> b!6741124 (= e!4071829 ((_ map or) call!609408 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438913)))))) (h!72326 s!2326))))))

(declare-fun b!6741125 () Bool)

(assert (=> b!6741125 (= e!4071829 e!4071830)))

(declare-fun c!1250519 () Bool)

(assert (=> b!6741125 (= c!1250519 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438913))))))))

(declare-fun d!2118099 () Bool)

(declare-fun c!1250520 () Bool)

(declare-fun e!4071828 () Bool)

(assert (=> d!2118099 (= c!1250520 e!4071828)))

(declare-fun res!2757395 () Bool)

(assert (=> d!2118099 (=> (not res!2757395) (not e!4071828))))

(assert (=> d!2118099 (= res!2757395 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438913))))))))

(assert (=> d!2118099 (= (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 lt!2438913))) (h!72326 s!2326)) e!4071829)))

(declare-fun bm!609403 () Bool)

(assert (=> bm!609403 (= call!609408 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438913))))) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438913)))))) (h!72326 s!2326)))))

(declare-fun b!6741126 () Bool)

(assert (=> b!6741126 (= e!4071830 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6741127 () Bool)

(assert (=> b!6741127 (= e!4071828 (nullable!6554 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438913)))))))))

(assert (= (and d!2118099 res!2757395) b!6741127))

(assert (= (and d!2118099 c!1250520) b!6741124))

(assert (= (and d!2118099 (not c!1250520)) b!6741125))

(assert (= (and b!6741125 c!1250519) b!6741123))

(assert (= (and b!6741125 (not c!1250519)) b!6741126))

(assert (= (or b!6741124 b!6741123) bm!609403))

(declare-fun m!7497720 () Bool)

(assert (=> b!6741124 m!7497720))

(declare-fun m!7497722 () Bool)

(assert (=> bm!609403 m!7497722))

(declare-fun m!7497724 () Bool)

(assert (=> b!6741127 m!7497724))

(assert (=> b!6740190 d!2118099))

(declare-fun b!6741128 () Bool)

(declare-fun e!4071835 () Bool)

(assert (=> b!6741128 (= e!4071835 (= (head!13562 (tail!12647 s!2326)) (c!1250093 (derivativeStep!5239 r!7292 (head!13562 s!2326)))))))

(declare-fun b!6741129 () Bool)

(declare-fun res!2757403 () Bool)

(declare-fun e!4071836 () Bool)

(assert (=> b!6741129 (=> res!2757403 e!4071836)))

(assert (=> b!6741129 (= res!2757403 (not ((_ is ElementMatch!16567) (derivativeStep!5239 r!7292 (head!13562 s!2326)))))))

(declare-fun e!4071833 () Bool)

(assert (=> b!6741129 (= e!4071833 e!4071836)))

(declare-fun b!6741130 () Bool)

(declare-fun e!4071832 () Bool)

(declare-fun lt!2439059 () Bool)

(declare-fun call!609409 () Bool)

(assert (=> b!6741130 (= e!4071832 (= lt!2439059 call!609409))))

(declare-fun b!6741131 () Bool)

(declare-fun e!4071831 () Bool)

(declare-fun e!4071837 () Bool)

(assert (=> b!6741131 (= e!4071831 e!4071837)))

(declare-fun res!2757402 () Bool)

(assert (=> b!6741131 (=> res!2757402 e!4071837)))

(assert (=> b!6741131 (= res!2757402 call!609409)))

(declare-fun b!6741132 () Bool)

(assert (=> b!6741132 (= e!4071833 (not lt!2439059))))

(declare-fun b!6741133 () Bool)

(declare-fun res!2757399 () Bool)

(assert (=> b!6741133 (=> res!2757399 e!4071836)))

(assert (=> b!6741133 (= res!2757399 e!4071835)))

(declare-fun res!2757398 () Bool)

(assert (=> b!6741133 (=> (not res!2757398) (not e!4071835))))

(assert (=> b!6741133 (= res!2757398 lt!2439059)))

(declare-fun b!6741134 () Bool)

(declare-fun res!2757401 () Bool)

(assert (=> b!6741134 (=> (not res!2757401) (not e!4071835))))

(assert (=> b!6741134 (= res!2757401 (not call!609409))))

(declare-fun b!6741135 () Bool)

(declare-fun e!4071834 () Bool)

(assert (=> b!6741135 (= e!4071834 (nullable!6554 (derivativeStep!5239 r!7292 (head!13562 s!2326))))))

(declare-fun b!6741136 () Bool)

(assert (=> b!6741136 (= e!4071836 e!4071831)))

(declare-fun res!2757396 () Bool)

(assert (=> b!6741136 (=> (not res!2757396) (not e!4071831))))

(assert (=> b!6741136 (= res!2757396 (not lt!2439059))))

(declare-fun b!6741137 () Bool)

(assert (=> b!6741137 (= e!4071832 e!4071833)))

(declare-fun c!1250523 () Bool)

(assert (=> b!6741137 (= c!1250523 ((_ is EmptyLang!16567) (derivativeStep!5239 r!7292 (head!13562 s!2326))))))

(declare-fun b!6741138 () Bool)

(assert (=> b!6741138 (= e!4071837 (not (= (head!13562 (tail!12647 s!2326)) (c!1250093 (derivativeStep!5239 r!7292 (head!13562 s!2326))))))))

(declare-fun b!6741139 () Bool)

(declare-fun res!2757397 () Bool)

(assert (=> b!6741139 (=> res!2757397 e!4071837)))

(assert (=> b!6741139 (= res!2757397 (not (isEmpty!38218 (tail!12647 (tail!12647 s!2326)))))))

(declare-fun b!6741140 () Bool)

(assert (=> b!6741140 (= e!4071834 (matchR!8750 (derivativeStep!5239 (derivativeStep!5239 r!7292 (head!13562 s!2326)) (head!13562 (tail!12647 s!2326))) (tail!12647 (tail!12647 s!2326))))))

(declare-fun b!6741141 () Bool)

(declare-fun res!2757400 () Bool)

(assert (=> b!6741141 (=> (not res!2757400) (not e!4071835))))

(assert (=> b!6741141 (= res!2757400 (isEmpty!38218 (tail!12647 (tail!12647 s!2326))))))

(declare-fun d!2118101 () Bool)

(assert (=> d!2118101 e!4071832))

(declare-fun c!1250522 () Bool)

(assert (=> d!2118101 (= c!1250522 ((_ is EmptyExpr!16567) (derivativeStep!5239 r!7292 (head!13562 s!2326))))))

(assert (=> d!2118101 (= lt!2439059 e!4071834)))

(declare-fun c!1250521 () Bool)

(assert (=> d!2118101 (= c!1250521 (isEmpty!38218 (tail!12647 s!2326)))))

(assert (=> d!2118101 (validRegex!8303 (derivativeStep!5239 r!7292 (head!13562 s!2326)))))

(assert (=> d!2118101 (= (matchR!8750 (derivativeStep!5239 r!7292 (head!13562 s!2326)) (tail!12647 s!2326)) lt!2439059)))

(declare-fun bm!609404 () Bool)

(assert (=> bm!609404 (= call!609409 (isEmpty!38218 (tail!12647 s!2326)))))

(assert (= (and d!2118101 c!1250521) b!6741135))

(assert (= (and d!2118101 (not c!1250521)) b!6741140))

(assert (= (and d!2118101 c!1250522) b!6741130))

(assert (= (and d!2118101 (not c!1250522)) b!6741137))

(assert (= (and b!6741137 c!1250523) b!6741132))

(assert (= (and b!6741137 (not c!1250523)) b!6741129))

(assert (= (and b!6741129 (not res!2757403)) b!6741133))

(assert (= (and b!6741133 res!2757398) b!6741134))

(assert (= (and b!6741134 res!2757401) b!6741141))

(assert (= (and b!6741141 res!2757400) b!6741128))

(assert (= (and b!6741133 (not res!2757399)) b!6741136))

(assert (= (and b!6741136 res!2757396) b!6741131))

(assert (= (and b!6741131 (not res!2757402)) b!6741139))

(assert (= (and b!6741139 (not res!2757397)) b!6741138))

(assert (= (or b!6741130 b!6741131 b!6741134) bm!609404))

(assert (=> b!6741139 m!7496728))

(declare-fun m!7497726 () Bool)

(assert (=> b!6741139 m!7497726))

(assert (=> b!6741139 m!7497726))

(declare-fun m!7497728 () Bool)

(assert (=> b!6741139 m!7497728))

(assert (=> bm!609404 m!7496728))

(assert (=> bm!609404 m!7496730))

(assert (=> d!2118101 m!7496728))

(assert (=> d!2118101 m!7496730))

(assert (=> d!2118101 m!7496734))

(declare-fun m!7497730 () Bool)

(assert (=> d!2118101 m!7497730))

(assert (=> b!6741140 m!7496728))

(declare-fun m!7497732 () Bool)

(assert (=> b!6741140 m!7497732))

(assert (=> b!6741140 m!7496734))

(assert (=> b!6741140 m!7497732))

(declare-fun m!7497734 () Bool)

(assert (=> b!6741140 m!7497734))

(assert (=> b!6741140 m!7496728))

(assert (=> b!6741140 m!7497726))

(assert (=> b!6741140 m!7497734))

(assert (=> b!6741140 m!7497726))

(declare-fun m!7497736 () Bool)

(assert (=> b!6741140 m!7497736))

(assert (=> b!6741128 m!7496728))

(assert (=> b!6741128 m!7497732))

(assert (=> b!6741141 m!7496728))

(assert (=> b!6741141 m!7497726))

(assert (=> b!6741141 m!7497726))

(assert (=> b!6741141 m!7497728))

(assert (=> b!6741138 m!7496728))

(assert (=> b!6741138 m!7497732))

(assert (=> b!6741135 m!7496734))

(declare-fun m!7497738 () Bool)

(assert (=> b!6741135 m!7497738))

(assert (=> b!6740141 d!2118101))

(declare-fun b!6741162 () Bool)

(declare-fun e!4071852 () Regex!16567)

(declare-fun e!4071849 () Regex!16567)

(assert (=> b!6741162 (= e!4071852 e!4071849)))

(declare-fun c!1250536 () Bool)

(assert (=> b!6741162 (= c!1250536 ((_ is Star!16567) r!7292))))

(declare-fun b!6741163 () Bool)

(declare-fun c!1250534 () Bool)

(assert (=> b!6741163 (= c!1250534 (nullable!6554 (regOne!33646 r!7292)))))

(declare-fun e!4071848 () Regex!16567)

(assert (=> b!6741163 (= e!4071849 e!4071848)))

(declare-fun b!6741164 () Bool)

(declare-fun e!4071851 () Regex!16567)

(declare-fun e!4071850 () Regex!16567)

(assert (=> b!6741164 (= e!4071851 e!4071850)))

(declare-fun c!1250538 () Bool)

(assert (=> b!6741164 (= c!1250538 ((_ is ElementMatch!16567) r!7292))))

(declare-fun b!6741165 () Bool)

(assert (=> b!6741165 (= e!4071851 EmptyLang!16567)))

(declare-fun d!2118103 () Bool)

(declare-fun lt!2439062 () Regex!16567)

(assert (=> d!2118103 (validRegex!8303 lt!2439062)))

(assert (=> d!2118103 (= lt!2439062 e!4071851)))

(declare-fun c!1250537 () Bool)

(assert (=> d!2118103 (= c!1250537 (or ((_ is EmptyExpr!16567) r!7292) ((_ is EmptyLang!16567) r!7292)))))

(assert (=> d!2118103 (validRegex!8303 r!7292)))

(assert (=> d!2118103 (= (derivativeStep!5239 r!7292 (head!13562 s!2326)) lt!2439062)))

(declare-fun b!6741166 () Bool)

(declare-fun c!1250535 () Bool)

(assert (=> b!6741166 (= c!1250535 ((_ is Union!16567) r!7292))))

(assert (=> b!6741166 (= e!4071850 e!4071852)))

(declare-fun b!6741167 () Bool)

(declare-fun call!609419 () Regex!16567)

(declare-fun call!609418 () Regex!16567)

(assert (=> b!6741167 (= e!4071852 (Union!16567 call!609419 call!609418))))

(declare-fun bm!609413 () Bool)

(assert (=> bm!609413 (= call!609418 (derivativeStep!5239 (ite c!1250535 (regTwo!33647 r!7292) (ite c!1250536 (reg!16896 r!7292) (regOne!33646 r!7292))) (head!13562 s!2326)))))

(declare-fun bm!609414 () Bool)

(declare-fun call!609420 () Regex!16567)

(assert (=> bm!609414 (= call!609420 call!609418)))

(declare-fun b!6741168 () Bool)

(assert (=> b!6741168 (= e!4071850 (ite (= (head!13562 s!2326) (c!1250093 r!7292)) EmptyExpr!16567 EmptyLang!16567))))

(declare-fun b!6741169 () Bool)

(assert (=> b!6741169 (= e!4071849 (Concat!25412 call!609420 r!7292))))

(declare-fun bm!609415 () Bool)

(declare-fun call!609421 () Regex!16567)

(assert (=> bm!609415 (= call!609421 call!609419)))

(declare-fun b!6741170 () Bool)

(assert (=> b!6741170 (= e!4071848 (Union!16567 (Concat!25412 call!609421 (regTwo!33646 r!7292)) EmptyLang!16567))))

(declare-fun b!6741171 () Bool)

(assert (=> b!6741171 (= e!4071848 (Union!16567 (Concat!25412 call!609420 (regTwo!33646 r!7292)) call!609421))))

(declare-fun bm!609416 () Bool)

(assert (=> bm!609416 (= call!609419 (derivativeStep!5239 (ite c!1250535 (regOne!33647 r!7292) (ite c!1250534 (regTwo!33646 r!7292) (regOne!33646 r!7292))) (head!13562 s!2326)))))

(assert (= (and d!2118103 c!1250537) b!6741165))

(assert (= (and d!2118103 (not c!1250537)) b!6741164))

(assert (= (and b!6741164 c!1250538) b!6741168))

(assert (= (and b!6741164 (not c!1250538)) b!6741166))

(assert (= (and b!6741166 c!1250535) b!6741167))

(assert (= (and b!6741166 (not c!1250535)) b!6741162))

(assert (= (and b!6741162 c!1250536) b!6741169))

(assert (= (and b!6741162 (not c!1250536)) b!6741163))

(assert (= (and b!6741163 c!1250534) b!6741171))

(assert (= (and b!6741163 (not c!1250534)) b!6741170))

(assert (= (or b!6741171 b!6741170) bm!609415))

(assert (= (or b!6741169 b!6741171) bm!609414))

(assert (= (or b!6741167 bm!609414) bm!609413))

(assert (= (or b!6741167 bm!609415) bm!609416))

(assert (=> b!6741163 m!7496678))

(declare-fun m!7497740 () Bool)

(assert (=> d!2118103 m!7497740))

(assert (=> d!2118103 m!7496280))

(assert (=> bm!609413 m!7496732))

(declare-fun m!7497742 () Bool)

(assert (=> bm!609413 m!7497742))

(assert (=> bm!609416 m!7496732))

(declare-fun m!7497744 () Bool)

(assert (=> bm!609416 m!7497744))

(assert (=> b!6740141 d!2118103))

(assert (=> b!6740141 d!2117977))

(assert (=> b!6740141 d!2117937))

(declare-fun b!6741172 () Bool)

(declare-fun e!4071855 () (InoxSet Context!11902))

(declare-fun call!609422 () (InoxSet Context!11902))

(assert (=> b!6741172 (= e!4071855 call!609422)))

(declare-fun b!6741173 () Bool)

(declare-fun e!4071854 () (InoxSet Context!11902))

(assert (=> b!6741173 (= e!4071854 ((_ map or) call!609422 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438917)))))) (h!72326 s!2326))))))

(declare-fun b!6741174 () Bool)

(assert (=> b!6741174 (= e!4071854 e!4071855)))

(declare-fun c!1250539 () Bool)

(assert (=> b!6741174 (= c!1250539 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438917))))))))

(declare-fun d!2118105 () Bool)

(declare-fun c!1250540 () Bool)

(declare-fun e!4071853 () Bool)

(assert (=> d!2118105 (= c!1250540 e!4071853)))

(declare-fun res!2757404 () Bool)

(assert (=> d!2118105 (=> (not res!2757404) (not e!4071853))))

(assert (=> d!2118105 (= res!2757404 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438917))))))))

(assert (=> d!2118105 (= (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 lt!2438917))) (h!72326 s!2326)) e!4071854)))

(declare-fun bm!609417 () Bool)

(assert (=> bm!609417 (= call!609422 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438917))))) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438917)))))) (h!72326 s!2326)))))

(declare-fun b!6741175 () Bool)

(assert (=> b!6741175 (= e!4071855 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6741176 () Bool)

(assert (=> b!6741176 (= e!4071853 (nullable!6554 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438917)))))))))

(assert (= (and d!2118105 res!2757404) b!6741176))

(assert (= (and d!2118105 c!1250540) b!6741173))

(assert (= (and d!2118105 (not c!1250540)) b!6741174))

(assert (= (and b!6741174 c!1250539) b!6741172))

(assert (= (and b!6741174 (not c!1250539)) b!6741175))

(assert (= (or b!6741173 b!6741172) bm!609417))

(declare-fun m!7497746 () Bool)

(assert (=> b!6741173 m!7497746))

(declare-fun m!7497748 () Bool)

(assert (=> bm!609417 m!7497748))

(declare-fun m!7497750 () Bool)

(assert (=> b!6741176 m!7497750))

(assert (=> b!6740054 d!2118105))

(declare-fun b!6741177 () Bool)

(declare-fun e!4071861 () Bool)

(declare-fun call!609425 () Bool)

(assert (=> b!6741177 (= e!4071861 call!609425)))

(declare-fun b!6741178 () Bool)

(declare-fun e!4071860 () Bool)

(declare-fun e!4071858 () Bool)

(assert (=> b!6741178 (= e!4071860 e!4071858)))

(declare-fun c!1250542 () Bool)

(assert (=> b!6741178 (= c!1250542 ((_ is Union!16567) (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))))))

(declare-fun b!6741179 () Bool)

(declare-fun e!4071856 () Bool)

(declare-fun call!609424 () Bool)

(assert (=> b!6741179 (= e!4071856 call!609424)))

(declare-fun b!6741180 () Bool)

(assert (=> b!6741180 (= e!4071860 e!4071856)))

(declare-fun res!2757408 () Bool)

(assert (=> b!6741180 (= res!2757408 (not (nullable!6554 (reg!16896 (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))))))))

(assert (=> b!6741180 (=> (not res!2757408) (not e!4071856))))

(declare-fun b!6741181 () Bool)

(declare-fun res!2757405 () Bool)

(declare-fun e!4071857 () Bool)

(assert (=> b!6741181 (=> res!2757405 e!4071857)))

(assert (=> b!6741181 (= res!2757405 (not ((_ is Concat!25412) (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292))))))))

(assert (=> b!6741181 (= e!4071858 e!4071857)))

(declare-fun b!6741182 () Bool)

(declare-fun e!4071859 () Bool)

(assert (=> b!6741182 (= e!4071859 call!609425)))

(declare-fun b!6741183 () Bool)

(declare-fun e!4071862 () Bool)

(assert (=> b!6741183 (= e!4071862 e!4071860)))

(declare-fun c!1250541 () Bool)

(assert (=> b!6741183 (= c!1250541 ((_ is Star!16567) (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))))))

(declare-fun b!6741184 () Bool)

(assert (=> b!6741184 (= e!4071857 e!4071859)))

(declare-fun res!2757407 () Bool)

(assert (=> b!6741184 (=> (not res!2757407) (not e!4071859))))

(declare-fun call!609423 () Bool)

(assert (=> b!6741184 (= res!2757407 call!609423)))

(declare-fun bm!609419 () Bool)

(assert (=> bm!609419 (= call!609425 (validRegex!8303 (ite c!1250542 (regTwo!33647 (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))) (regTwo!33646 (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))))))))

(declare-fun b!6741185 () Bool)

(declare-fun res!2757409 () Bool)

(assert (=> b!6741185 (=> (not res!2757409) (not e!4071861))))

(assert (=> b!6741185 (= res!2757409 call!609423)))

(assert (=> b!6741185 (= e!4071858 e!4071861)))

(declare-fun bm!609420 () Bool)

(assert (=> bm!609420 (= call!609423 call!609424)))

(declare-fun d!2118107 () Bool)

(declare-fun res!2757406 () Bool)

(assert (=> d!2118107 (=> res!2757406 e!4071862)))

(assert (=> d!2118107 (= res!2757406 ((_ is ElementMatch!16567) (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))))))

(assert (=> d!2118107 (= (validRegex!8303 (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))) e!4071862)))

(declare-fun bm!609418 () Bool)

(assert (=> bm!609418 (= call!609424 (validRegex!8303 (ite c!1250541 (reg!16896 (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))) (ite c!1250542 (regOne!33647 (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292)))) (regOne!33646 (ite c!1250281 (reg!16896 r!7292) (ite c!1250282 (regOne!33647 r!7292) (regOne!33646 r!7292))))))))))

(assert (= (and d!2118107 (not res!2757406)) b!6741183))

(assert (= (and b!6741183 c!1250541) b!6741180))

(assert (= (and b!6741183 (not c!1250541)) b!6741178))

(assert (= (and b!6741180 res!2757408) b!6741179))

(assert (= (and b!6741178 c!1250542) b!6741185))

(assert (= (and b!6741178 (not c!1250542)) b!6741181))

(assert (= (and b!6741185 res!2757409) b!6741177))

(assert (= (and b!6741181 (not res!2757405)) b!6741184))

(assert (= (and b!6741184 res!2757407) b!6741182))

(assert (= (or b!6741177 b!6741182) bm!609419))

(assert (= (or b!6741185 b!6741184) bm!609420))

(assert (= (or b!6741179 bm!609420) bm!609418))

(declare-fun m!7497752 () Bool)

(assert (=> b!6741180 m!7497752))

(declare-fun m!7497754 () Bool)

(assert (=> bm!609419 m!7497754))

(declare-fun m!7497756 () Bool)

(assert (=> bm!609418 m!7497756))

(assert (=> bm!609223 d!2118107))

(assert (=> d!2117631 d!2117633))

(declare-fun d!2118109 () Bool)

(assert (=> d!2118109 (= (flatMap!2048 lt!2438906 lambda!378557) (dynLambda!26284 lambda!378557 lt!2438917))))

(assert (=> d!2118109 true))

(declare-fun _$13!4085 () Unit!159825)

(assert (=> d!2118109 (= (choose!50247 lt!2438906 lt!2438917 lambda!378557) _$13!4085)))

(declare-fun b_lambda!253877 () Bool)

(assert (=> (not b_lambda!253877) (not d!2118109)))

(declare-fun bs!1792458 () Bool)

(assert (= bs!1792458 d!2118109))

(assert (=> bs!1792458 m!7496318))

(assert (=> bs!1792458 m!7496704))

(assert (=> d!2117631 d!2118109))

(assert (=> bs!1792160 d!2117667))

(declare-fun d!2118111 () Bool)

(assert (=> d!2118111 (= (nullable!6554 (regOne!33646 r!7292)) (nullableFct!2468 (regOne!33646 r!7292)))))

(declare-fun bs!1792459 () Bool)

(assert (= bs!1792459 d!2118111))

(declare-fun m!7497758 () Bool)

(assert (=> bs!1792459 m!7497758))

(assert (=> b!6740022 d!2118111))

(assert (=> bm!609215 d!2117527))

(declare-fun d!2118113 () Bool)

(declare-fun c!1250543 () Bool)

(assert (=> d!2118113 (= c!1250543 (isEmpty!38218 (tail!12647 s!2326)))))

(declare-fun e!4071863 () Bool)

(assert (=> d!2118113 (= (matchZipper!2553 (derivationStepZipper!2511 lt!2438916 (head!13562 s!2326)) (tail!12647 s!2326)) e!4071863)))

(declare-fun b!6741186 () Bool)

(assert (=> b!6741186 (= e!4071863 (nullableZipper!2282 (derivationStepZipper!2511 lt!2438916 (head!13562 s!2326))))))

(declare-fun b!6741187 () Bool)

(assert (=> b!6741187 (= e!4071863 (matchZipper!2553 (derivationStepZipper!2511 (derivationStepZipper!2511 lt!2438916 (head!13562 s!2326)) (head!13562 (tail!12647 s!2326))) (tail!12647 (tail!12647 s!2326))))))

(assert (= (and d!2118113 c!1250543) b!6741186))

(assert (= (and d!2118113 (not c!1250543)) b!6741187))

(assert (=> d!2118113 m!7496728))

(assert (=> d!2118113 m!7496730))

(assert (=> b!6741186 m!7496798))

(declare-fun m!7497760 () Bool)

(assert (=> b!6741186 m!7497760))

(assert (=> b!6741187 m!7496728))

(assert (=> b!6741187 m!7497732))

(assert (=> b!6741187 m!7496798))

(assert (=> b!6741187 m!7497732))

(declare-fun m!7497762 () Bool)

(assert (=> b!6741187 m!7497762))

(assert (=> b!6741187 m!7496728))

(assert (=> b!6741187 m!7497726))

(assert (=> b!6741187 m!7497762))

(assert (=> b!6741187 m!7497726))

(declare-fun m!7497764 () Bool)

(assert (=> b!6741187 m!7497764))

(assert (=> b!6740199 d!2118113))

(declare-fun bs!1792460 () Bool)

(declare-fun d!2118115 () Bool)

(assert (= bs!1792460 (and d!2118115 b!6739499)))

(declare-fun lambda!378697 () Int)

(assert (=> bs!1792460 (= (= (head!13562 s!2326) (h!72326 s!2326)) (= lambda!378697 lambda!378557))))

(declare-fun bs!1792461 () Bool)

(assert (= bs!1792461 (and d!2118115 d!2117625)))

(assert (=> bs!1792461 (= (= (head!13562 s!2326) (h!72326 s!2326)) (= lambda!378697 lambda!378629))))

(declare-fun bs!1792462 () Bool)

(assert (= bs!1792462 (and d!2118115 d!2117639)))

(assert (=> bs!1792462 (= (= (head!13562 s!2326) (h!72326 s!2326)) (= lambda!378697 lambda!378630))))

(declare-fun bs!1792463 () Bool)

(assert (= bs!1792463 (and d!2118115 d!2117675)))

(assert (=> bs!1792463 (= (= (head!13562 s!2326) (h!72326 s!2326)) (= lambda!378697 lambda!378637))))

(assert (=> d!2118115 true))

(assert (=> d!2118115 (= (derivationStepZipper!2511 lt!2438916 (head!13562 s!2326)) (flatMap!2048 lt!2438916 lambda!378697))))

(declare-fun bs!1792464 () Bool)

(assert (= bs!1792464 d!2118115))

(declare-fun m!7497766 () Bool)

(assert (=> bs!1792464 m!7497766))

(assert (=> b!6740199 d!2118115))

(assert (=> b!6740199 d!2117977))

(assert (=> b!6740199 d!2117937))

(assert (=> bm!609212 d!2117527))

(declare-fun b!6741188 () Bool)

(declare-fun e!4071869 () Bool)

(declare-fun call!609428 () Bool)

(assert (=> b!6741188 (= e!4071869 call!609428)))

(declare-fun b!6741189 () Bool)

(declare-fun e!4071868 () Bool)

(declare-fun e!4071866 () Bool)

(assert (=> b!6741189 (= e!4071868 e!4071866)))

(declare-fun c!1250545 () Bool)

(assert (=> b!6741189 (= c!1250545 ((_ is Union!16567) lt!2439013))))

(declare-fun b!6741190 () Bool)

(declare-fun e!4071864 () Bool)

(declare-fun call!609427 () Bool)

(assert (=> b!6741190 (= e!4071864 call!609427)))

(declare-fun b!6741191 () Bool)

(assert (=> b!6741191 (= e!4071868 e!4071864)))

(declare-fun res!2757413 () Bool)

(assert (=> b!6741191 (= res!2757413 (not (nullable!6554 (reg!16896 lt!2439013))))))

(assert (=> b!6741191 (=> (not res!2757413) (not e!4071864))))

(declare-fun b!6741192 () Bool)

(declare-fun res!2757410 () Bool)

(declare-fun e!4071865 () Bool)

(assert (=> b!6741192 (=> res!2757410 e!4071865)))

(assert (=> b!6741192 (= res!2757410 (not ((_ is Concat!25412) lt!2439013)))))

(assert (=> b!6741192 (= e!4071866 e!4071865)))

(declare-fun b!6741193 () Bool)

(declare-fun e!4071867 () Bool)

(assert (=> b!6741193 (= e!4071867 call!609428)))

(declare-fun b!6741194 () Bool)

(declare-fun e!4071870 () Bool)

(assert (=> b!6741194 (= e!4071870 e!4071868)))

(declare-fun c!1250544 () Bool)

(assert (=> b!6741194 (= c!1250544 ((_ is Star!16567) lt!2439013))))

(declare-fun b!6741195 () Bool)

(assert (=> b!6741195 (= e!4071865 e!4071867)))

(declare-fun res!2757412 () Bool)

(assert (=> b!6741195 (=> (not res!2757412) (not e!4071867))))

(declare-fun call!609426 () Bool)

(assert (=> b!6741195 (= res!2757412 call!609426)))

(declare-fun bm!609422 () Bool)

(assert (=> bm!609422 (= call!609428 (validRegex!8303 (ite c!1250545 (regTwo!33647 lt!2439013) (regTwo!33646 lt!2439013))))))

(declare-fun b!6741196 () Bool)

(declare-fun res!2757414 () Bool)

(assert (=> b!6741196 (=> (not res!2757414) (not e!4071869))))

(assert (=> b!6741196 (= res!2757414 call!609426)))

(assert (=> b!6741196 (= e!4071866 e!4071869)))

(declare-fun bm!609423 () Bool)

(assert (=> bm!609423 (= call!609426 call!609427)))

(declare-fun d!2118117 () Bool)

(declare-fun res!2757411 () Bool)

(assert (=> d!2118117 (=> res!2757411 e!4071870)))

(assert (=> d!2118117 (= res!2757411 ((_ is ElementMatch!16567) lt!2439013))))

(assert (=> d!2118117 (= (validRegex!8303 lt!2439013) e!4071870)))

(declare-fun bm!609421 () Bool)

(assert (=> bm!609421 (= call!609427 (validRegex!8303 (ite c!1250544 (reg!16896 lt!2439013) (ite c!1250545 (regOne!33647 lt!2439013) (regOne!33646 lt!2439013)))))))

(assert (= (and d!2118117 (not res!2757411)) b!6741194))

(assert (= (and b!6741194 c!1250544) b!6741191))

(assert (= (and b!6741194 (not c!1250544)) b!6741189))

(assert (= (and b!6741191 res!2757413) b!6741190))

(assert (= (and b!6741189 c!1250545) b!6741196))

(assert (= (and b!6741189 (not c!1250545)) b!6741192))

(assert (= (and b!6741196 res!2757414) b!6741188))

(assert (= (and b!6741192 (not res!2757410)) b!6741195))

(assert (= (and b!6741195 res!2757412) b!6741193))

(assert (= (or b!6741188 b!6741193) bm!609422))

(assert (= (or b!6741196 b!6741195) bm!609423))

(assert (= (or b!6741190 bm!609423) bm!609421))

(declare-fun m!7497768 () Bool)

(assert (=> b!6741191 m!7497768))

(declare-fun m!7497770 () Bool)

(assert (=> bm!609422 m!7497770))

(declare-fun m!7497772 () Bool)

(assert (=> bm!609421 m!7497772))

(assert (=> d!2117649 d!2118117))

(assert (=> d!2117649 d!2117607))

(assert (=> d!2117649 d!2117619))

(declare-fun d!2118119 () Bool)

(assert (=> d!2118119 (= (isEmpty!38222 (unfocusZipperList!1988 zl!343)) ((_ is Nil!65876) (unfocusZipperList!1988 zl!343)))))

(assert (=> b!6739984 d!2118119))

(declare-fun bs!1792465 () Bool)

(declare-fun d!2118121 () Bool)

(assert (= bs!1792465 (and d!2118121 d!2117619)))

(declare-fun lambda!378698 () Int)

(assert (=> bs!1792465 (= lambda!378698 lambda!378626)))

(declare-fun bs!1792466 () Bool)

(assert (= bs!1792466 (and d!2118121 d!2117587)))

(assert (=> bs!1792466 (= lambda!378698 lambda!378610)))

(declare-fun bs!1792467 () Bool)

(assert (= bs!1792467 (and d!2118121 d!2117607)))

(assert (=> bs!1792467 (= lambda!378698 lambda!378623)))

(declare-fun bs!1792468 () Bool)

(assert (= bs!1792468 (and d!2118121 d!2117599)))

(assert (=> bs!1792468 (= lambda!378698 lambda!378614)))

(declare-fun bs!1792469 () Bool)

(assert (= bs!1792469 (and d!2118121 d!2117963)))

(assert (=> bs!1792469 (= lambda!378698 lambda!378681)))

(declare-fun bs!1792470 () Bool)

(assert (= bs!1792470 (and d!2118121 d!2117929)))

(assert (=> bs!1792470 (= lambda!378698 lambda!378673)))

(declare-fun bs!1792471 () Bool)

(assert (= bs!1792471 (and d!2118121 d!2117605)))

(assert (=> bs!1792471 (= lambda!378698 lambda!378616)))

(declare-fun bs!1792472 () Bool)

(assert (= bs!1792472 (and d!2118121 d!2118029)))

(assert (=> bs!1792472 (= lambda!378698 lambda!378684)))

(declare-fun bs!1792473 () Bool)

(assert (= bs!1792473 (and d!2118121 d!2117603)))

(assert (=> bs!1792473 (= lambda!378698 lambda!378615)))

(declare-fun bs!1792474 () Bool)

(assert (= bs!1792474 (and d!2118121 d!2118079)))

(assert (=> bs!1792474 (= lambda!378698 lambda!378696)))

(declare-fun bs!1792475 () Bool)

(assert (= bs!1792475 (and d!2118121 d!2118031)))

(assert (=> bs!1792475 (= lambda!378698 lambda!378685)))

(declare-fun bs!1792476 () Bool)

(assert (= bs!1792476 (and d!2118121 d!2117943)))

(assert (=> bs!1792476 (= lambda!378698 lambda!378674)))

(assert (=> d!2118121 (= (inv!84664 setElem!46017) (forall!15767 (exprs!6451 setElem!46017) lambda!378698))))

(declare-fun bs!1792477 () Bool)

(assert (= bs!1792477 d!2118121))

(declare-fun m!7497774 () Bool)

(assert (=> bs!1792477 m!7497774))

(assert (=> setNonEmpty!46017 d!2118121))

(declare-fun bs!1792478 () Bool)

(declare-fun b!6741203 () Bool)

(assert (= bs!1792478 (and b!6741203 d!2117529)))

(declare-fun lambda!378699 () Int)

(assert (=> bs!1792478 (not (= lambda!378699 lambda!378587))))

(declare-fun bs!1792479 () Bool)

(assert (= bs!1792479 (and b!6741203 b!6740917)))

(assert (=> bs!1792479 (not (= lambda!378699 lambda!378683))))

(declare-fun bs!1792480 () Bool)

(assert (= bs!1792480 (and b!6741203 d!2117567)))

(assert (=> bs!1792480 (not (= lambda!378699 lambda!378603))))

(declare-fun bs!1792481 () Bool)

(assert (= bs!1792481 (and b!6741203 d!2117957)))

(assert (=> bs!1792481 (not (= lambda!378699 lambda!378679))))

(declare-fun bs!1792482 () Bool)

(assert (= bs!1792482 (and b!6741203 b!6739483)))

(assert (=> bs!1792482 (not (= lambda!378699 lambda!378554))))

(declare-fun bs!1792483 () Bool)

(assert (= bs!1792483 (and b!6741203 b!6740915)))

(assert (=> bs!1792483 (= (and (= (reg!16896 (regTwo!33647 r!7292)) (reg!16896 (regOne!33647 r!7292))) (= (regTwo!33647 r!7292) (regOne!33647 r!7292))) (= lambda!378699 lambda!378682))))

(declare-fun bs!1792484 () Bool)

(assert (= bs!1792484 (and b!6741203 d!2118041)))

(assert (=> bs!1792484 (not (= lambda!378699 lambda!378690))))

(assert (=> bs!1792484 (= (and (= (reg!16896 (regTwo!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33647 r!7292) (Star!16567 (reg!16896 r!7292)))) (= lambda!378699 lambda!378691))))

(assert (=> bs!1792481 (not (= lambda!378699 lambda!378680))))

(declare-fun bs!1792485 () Bool)

(assert (= bs!1792485 (and b!6741203 d!2117509)))

(assert (=> bs!1792485 (= (and (= (reg!16896 (regTwo!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33647 r!7292) (Star!16567 (reg!16896 r!7292)))) (= lambda!378699 lambda!378572))))

(assert (=> bs!1792482 (= (and (= (reg!16896 (regTwo!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33647 r!7292) r!7292)) (= lambda!378699 lambda!378555))))

(declare-fun bs!1792486 () Bool)

(assert (= bs!1792486 (and b!6741203 b!6740098)))

(assert (=> bs!1792486 (not (= lambda!378699 lambda!378636))))

(assert (=> bs!1792482 (not (= lambda!378699 lambda!378556))))

(assert (=> bs!1792485 (not (= lambda!378699 lambda!378571))))

(assert (=> bs!1792478 (not (= lambda!378699 lambda!378590))))

(declare-fun bs!1792487 () Bool)

(assert (= bs!1792487 (and b!6741203 d!2117913)))

(assert (=> bs!1792487 (not (= lambda!378699 lambda!378672))))

(declare-fun bs!1792488 () Bool)

(assert (= bs!1792488 (and b!6741203 b!6740096)))

(assert (=> bs!1792488 (= (and (= (reg!16896 (regTwo!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33647 r!7292) r!7292)) (= lambda!378699 lambda!378635))))

(assert (=> b!6741203 true))

(assert (=> b!6741203 true))

(declare-fun bs!1792489 () Bool)

(declare-fun b!6741205 () Bool)

(assert (= bs!1792489 (and b!6741205 d!2117529)))

(declare-fun lambda!378700 () Int)

(assert (=> bs!1792489 (not (= lambda!378700 lambda!378587))))

(declare-fun bs!1792490 () Bool)

(assert (= bs!1792490 (and b!6741205 b!6740917)))

(assert (=> bs!1792490 (= (and (= (regOne!33646 (regTwo!33647 r!7292)) (regOne!33646 (regOne!33647 r!7292))) (= (regTwo!33646 (regTwo!33647 r!7292)) (regTwo!33646 (regOne!33647 r!7292)))) (= lambda!378700 lambda!378683))))

(declare-fun bs!1792491 () Bool)

(assert (= bs!1792491 (and b!6741205 d!2117567)))

(assert (=> bs!1792491 (not (= lambda!378700 lambda!378603))))

(declare-fun bs!1792492 () Bool)

(assert (= bs!1792492 (and b!6741205 d!2117957)))

(assert (=> bs!1792492 (not (= lambda!378700 lambda!378679))))

(declare-fun bs!1792493 () Bool)

(assert (= bs!1792493 (and b!6741205 b!6739483)))

(assert (=> bs!1792493 (not (= lambda!378700 lambda!378554))))

(declare-fun bs!1792494 () Bool)

(assert (= bs!1792494 (and b!6741205 b!6740915)))

(assert (=> bs!1792494 (not (= lambda!378700 lambda!378682))))

(declare-fun bs!1792495 () Bool)

(assert (= bs!1792495 (and b!6741205 d!2118041)))

(assert (=> bs!1792495 (not (= lambda!378700 lambda!378690))))

(assert (=> bs!1792495 (not (= lambda!378700 lambda!378691))))

(assert (=> bs!1792492 (= (and (= (regOne!33646 (regTwo!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33646 (regTwo!33647 r!7292)) r!7292)) (= lambda!378700 lambda!378680))))

(declare-fun bs!1792496 () Bool)

(assert (= bs!1792496 (and b!6741205 b!6741203)))

(assert (=> bs!1792496 (not (= lambda!378700 lambda!378699))))

(declare-fun bs!1792497 () Bool)

(assert (= bs!1792497 (and b!6741205 d!2117509)))

(assert (=> bs!1792497 (not (= lambda!378700 lambda!378572))))

(assert (=> bs!1792493 (not (= lambda!378700 lambda!378555))))

(declare-fun bs!1792498 () Bool)

(assert (= bs!1792498 (and b!6741205 b!6740098)))

(assert (=> bs!1792498 (= (and (= (regOne!33646 (regTwo!33647 r!7292)) (regOne!33646 r!7292)) (= (regTwo!33646 (regTwo!33647 r!7292)) (regTwo!33646 r!7292))) (= lambda!378700 lambda!378636))))

(assert (=> bs!1792493 (= (and (= (regOne!33646 (regTwo!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33646 (regTwo!33647 r!7292)) r!7292)) (= lambda!378700 lambda!378556))))

(assert (=> bs!1792497 (not (= lambda!378700 lambda!378571))))

(assert (=> bs!1792489 (= (and (= (regOne!33646 (regTwo!33647 r!7292)) (reg!16896 r!7292)) (= (regTwo!33646 (regTwo!33647 r!7292)) r!7292)) (= lambda!378700 lambda!378590))))

(declare-fun bs!1792499 () Bool)

(assert (= bs!1792499 (and b!6741205 d!2117913)))

(assert (=> bs!1792499 (not (= lambda!378700 lambda!378672))))

(declare-fun bs!1792500 () Bool)

(assert (= bs!1792500 (and b!6741205 b!6740096)))

(assert (=> bs!1792500 (not (= lambda!378700 lambda!378635))))

(assert (=> b!6741205 true))

(assert (=> b!6741205 true))

(declare-fun b!6741197 () Bool)

(declare-fun e!4071876 () Bool)

(declare-fun call!609430 () Bool)

(assert (=> b!6741197 (= e!4071876 call!609430)))

(declare-fun b!6741198 () Bool)

(declare-fun e!4071871 () Bool)

(assert (=> b!6741198 (= e!4071871 (= s!2326 (Cons!65878 (c!1250093 (regTwo!33647 r!7292)) Nil!65878)))))

(declare-fun d!2118123 () Bool)

(declare-fun c!1250548 () Bool)

(assert (=> d!2118123 (= c!1250548 ((_ is EmptyExpr!16567) (regTwo!33647 r!7292)))))

(assert (=> d!2118123 (= (matchRSpec!3668 (regTwo!33647 r!7292) s!2326) e!4071876)))

(declare-fun b!6741199 () Bool)

(declare-fun e!4071873 () Bool)

(assert (=> b!6741199 (= e!4071873 (matchRSpec!3668 (regTwo!33647 (regTwo!33647 r!7292)) s!2326))))

(declare-fun b!6741200 () Bool)

(declare-fun e!4071872 () Bool)

(assert (=> b!6741200 (= e!4071876 e!4071872)))

(declare-fun res!2757416 () Bool)

(assert (=> b!6741200 (= res!2757416 (not ((_ is EmptyLang!16567) (regTwo!33647 r!7292))))))

(assert (=> b!6741200 (=> (not res!2757416) (not e!4071872))))

(declare-fun b!6741201 () Bool)

(declare-fun e!4071875 () Bool)

(assert (=> b!6741201 (= e!4071875 e!4071873)))

(declare-fun res!2757417 () Bool)

(assert (=> b!6741201 (= res!2757417 (matchRSpec!3668 (regOne!33647 (regTwo!33647 r!7292)) s!2326))))

(assert (=> b!6741201 (=> res!2757417 e!4071873)))

(declare-fun b!6741202 () Bool)

(declare-fun e!4071877 () Bool)

(assert (=> b!6741202 (= e!4071875 e!4071877)))

(declare-fun c!1250549 () Bool)

(assert (=> b!6741202 (= c!1250549 ((_ is Star!16567) (regTwo!33647 r!7292)))))

(declare-fun e!4071874 () Bool)

(declare-fun call!609429 () Bool)

(assert (=> b!6741203 (= e!4071874 call!609429)))

(declare-fun b!6741204 () Bool)

(declare-fun c!1250546 () Bool)

(assert (=> b!6741204 (= c!1250546 ((_ is Union!16567) (regTwo!33647 r!7292)))))

(assert (=> b!6741204 (= e!4071871 e!4071875)))

(declare-fun bm!609424 () Bool)

(assert (=> bm!609424 (= call!609429 (Exists!3635 (ite c!1250549 lambda!378699 lambda!378700)))))

(assert (=> b!6741205 (= e!4071877 call!609429)))

(declare-fun bm!609425 () Bool)

(assert (=> bm!609425 (= call!609430 (isEmpty!38218 s!2326))))

(declare-fun b!6741206 () Bool)

(declare-fun res!2757415 () Bool)

(assert (=> b!6741206 (=> res!2757415 e!4071874)))

(assert (=> b!6741206 (= res!2757415 call!609430)))

(assert (=> b!6741206 (= e!4071877 e!4071874)))

(declare-fun b!6741207 () Bool)

(declare-fun c!1250547 () Bool)

(assert (=> b!6741207 (= c!1250547 ((_ is ElementMatch!16567) (regTwo!33647 r!7292)))))

(assert (=> b!6741207 (= e!4071872 e!4071871)))

(assert (= (and d!2118123 c!1250548) b!6741197))

(assert (= (and d!2118123 (not c!1250548)) b!6741200))

(assert (= (and b!6741200 res!2757416) b!6741207))

(assert (= (and b!6741207 c!1250547) b!6741198))

(assert (= (and b!6741207 (not c!1250547)) b!6741204))

(assert (= (and b!6741204 c!1250546) b!6741201))

(assert (= (and b!6741204 (not c!1250546)) b!6741202))

(assert (= (and b!6741201 (not res!2757417)) b!6741199))

(assert (= (and b!6741202 c!1250549) b!6741206))

(assert (= (and b!6741202 (not c!1250549)) b!6741205))

(assert (= (and b!6741206 (not res!2757415)) b!6741203))

(assert (= (or b!6741203 b!6741205) bm!609424))

(assert (= (or b!6741197 b!6741206) bm!609425))

(declare-fun m!7497776 () Bool)

(assert (=> b!6741199 m!7497776))

(declare-fun m!7497778 () Bool)

(assert (=> b!6741201 m!7497778))

(declare-fun m!7497780 () Bool)

(assert (=> bm!609424 m!7497780))

(assert (=> bm!609425 m!7496324))

(assert (=> b!6740092 d!2118123))

(declare-fun d!2118125 () Bool)

(declare-fun c!1250550 () Bool)

(assert (=> d!2118125 (= c!1250550 (isEmpty!38218 (tail!12647 (t!379699 s!2326))))))

(declare-fun e!4071878 () Bool)

(assert (=> d!2118125 (= (matchZipper!2553 (derivationStepZipper!2511 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) (head!13562 (t!379699 s!2326))) (tail!12647 (t!379699 s!2326))) e!4071878)))

(declare-fun b!6741208 () Bool)

(assert (=> b!6741208 (= e!4071878 (nullableZipper!2282 (derivationStepZipper!2511 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) (head!13562 (t!379699 s!2326)))))))

(declare-fun b!6741209 () Bool)

(assert (=> b!6741209 (= e!4071878 (matchZipper!2553 (derivationStepZipper!2511 (derivationStepZipper!2511 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) (head!13562 (t!379699 s!2326))) (head!13562 (tail!12647 (t!379699 s!2326)))) (tail!12647 (tail!12647 (t!379699 s!2326)))))))

(assert (= (and d!2118125 c!1250550) b!6741208))

(assert (= (and d!2118125 (not c!1250550)) b!6741209))

(assert (=> d!2118125 m!7496810))

(declare-fun m!7497782 () Bool)

(assert (=> d!2118125 m!7497782))

(assert (=> b!6741208 m!7496808))

(declare-fun m!7497784 () Bool)

(assert (=> b!6741208 m!7497784))

(assert (=> b!6741209 m!7496810))

(declare-fun m!7497786 () Bool)

(assert (=> b!6741209 m!7497786))

(assert (=> b!6741209 m!7496808))

(assert (=> b!6741209 m!7497786))

(declare-fun m!7497788 () Bool)

(assert (=> b!6741209 m!7497788))

(assert (=> b!6741209 m!7496810))

(declare-fun m!7497790 () Bool)

(assert (=> b!6741209 m!7497790))

(assert (=> b!6741209 m!7497788))

(assert (=> b!6741209 m!7497790))

(declare-fun m!7497792 () Bool)

(assert (=> b!6741209 m!7497792))

(assert (=> b!6740201 d!2118125))

(declare-fun bs!1792501 () Bool)

(declare-fun d!2118127 () Bool)

(assert (= bs!1792501 (and d!2118127 d!2117675)))

(declare-fun lambda!378701 () Int)

(assert (=> bs!1792501 (= (= (head!13562 (t!379699 s!2326)) (h!72326 s!2326)) (= lambda!378701 lambda!378637))))

(declare-fun bs!1792502 () Bool)

(assert (= bs!1792502 (and d!2118127 b!6739499)))

(assert (=> bs!1792502 (= (= (head!13562 (t!379699 s!2326)) (h!72326 s!2326)) (= lambda!378701 lambda!378557))))

(declare-fun bs!1792503 () Bool)

(assert (= bs!1792503 (and d!2118127 d!2118115)))

(assert (=> bs!1792503 (= (= (head!13562 (t!379699 s!2326)) (head!13562 s!2326)) (= lambda!378701 lambda!378697))))

(declare-fun bs!1792504 () Bool)

(assert (= bs!1792504 (and d!2118127 d!2117625)))

(assert (=> bs!1792504 (= (= (head!13562 (t!379699 s!2326)) (h!72326 s!2326)) (= lambda!378701 lambda!378629))))

(declare-fun bs!1792505 () Bool)

(assert (= bs!1792505 (and d!2118127 d!2117639)))

(assert (=> bs!1792505 (= (= (head!13562 (t!379699 s!2326)) (h!72326 s!2326)) (= lambda!378701 lambda!378630))))

(assert (=> d!2118127 true))

(assert (=> d!2118127 (= (derivationStepZipper!2511 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) (head!13562 (t!379699 s!2326))) (flatMap!2048 (derivationStepZipper!2511 lt!2438916 (h!72326 s!2326)) lambda!378701))))

(declare-fun bs!1792506 () Bool)

(assert (= bs!1792506 d!2118127))

(assert (=> bs!1792506 m!7496258))

(declare-fun m!7497794 () Bool)

(assert (=> bs!1792506 m!7497794))

(assert (=> b!6740201 d!2118127))

(declare-fun d!2118129 () Bool)

(assert (=> d!2118129 (= (head!13562 (t!379699 s!2326)) (h!72326 (t!379699 s!2326)))))

(assert (=> b!6740201 d!2118129))

(declare-fun d!2118131 () Bool)

(assert (=> d!2118131 (= (tail!12647 (t!379699 s!2326)) (t!379699 (t!379699 s!2326)))))

(assert (=> b!6740201 d!2118131))

(declare-fun d!2118133 () Bool)

(assert (=> d!2118133 (= (isEmptyLang!1940 lt!2438994) ((_ is EmptyLang!16567) lt!2438994))))

(assert (=> b!6739980 d!2118133))

(declare-fun d!2118135 () Bool)

(assert (=> d!2118135 (= (isEmpty!38218 (t!379699 s!2326)) ((_ is Nil!65878) (t!379699 s!2326)))))

(assert (=> d!2117673 d!2118135))

(declare-fun b!6741210 () Bool)

(declare-fun c!1250555 () Bool)

(assert (=> b!6741210 (= c!1250555 ((_ is Star!16567) (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))))))

(declare-fun e!4071884 () (InoxSet Context!11902))

(declare-fun e!4071879 () (InoxSet Context!11902))

(assert (=> b!6741210 (= e!4071884 e!4071879)))

(declare-fun b!6741211 () Bool)

(declare-fun e!4071880 () (InoxSet Context!11902))

(declare-fun call!609435 () (InoxSet Context!11902))

(declare-fun call!609432 () (InoxSet Context!11902))

(assert (=> b!6741211 (= e!4071880 ((_ map or) call!609435 call!609432))))

(declare-fun b!6741212 () Bool)

(declare-fun e!4071882 () Bool)

(assert (=> b!6741212 (= e!4071882 (nullable!6554 (regOne!33646 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292)))))))

(declare-fun d!2118137 () Bool)

(declare-fun c!1250551 () Bool)

(assert (=> d!2118137 (= c!1250551 (and ((_ is ElementMatch!16567) (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))) (= (c!1250093 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))) (h!72326 s!2326))))))

(declare-fun e!4071883 () (InoxSet Context!11902))

(assert (=> d!2118137 (= (derivationStepZipperDown!1795 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292)) (ite c!1250239 (Context!11903 Nil!65876) (Context!11903 call!609204)) (h!72326 s!2326)) e!4071883)))

(declare-fun bm!609426 () Bool)

(declare-fun call!609431 () List!66000)

(declare-fun call!609434 () List!66000)

(assert (=> bm!609426 (= call!609431 call!609434)))

(declare-fun b!6741213 () Bool)

(declare-fun e!4071881 () (InoxSet Context!11902))

(assert (=> b!6741213 (= e!4071883 e!4071881)))

(declare-fun c!1250553 () Bool)

(assert (=> b!6741213 (= c!1250553 ((_ is Union!16567) (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))))))

(declare-fun b!6741214 () Bool)

(assert (=> b!6741214 (= e!4071880 e!4071884)))

(declare-fun c!1250552 () Bool)

(assert (=> b!6741214 (= c!1250552 ((_ is Concat!25412) (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))))))

(declare-fun b!6741215 () Bool)

(declare-fun call!609433 () (InoxSet Context!11902))

(assert (=> b!6741215 (= e!4071884 call!609433)))

(declare-fun bm!609427 () Bool)

(declare-fun c!1250554 () Bool)

(assert (=> bm!609427 (= call!609434 ($colon$colon!2384 (exprs!6451 (ite c!1250239 (Context!11903 Nil!65876) (Context!11903 call!609204))) (ite (or c!1250554 c!1250552) (regTwo!33646 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))) (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292)))))))

(declare-fun b!6741216 () Bool)

(declare-fun call!609436 () (InoxSet Context!11902))

(assert (=> b!6741216 (= e!4071881 ((_ map or) call!609436 call!609435))))

(declare-fun bm!609428 () Bool)

(assert (=> bm!609428 (= call!609433 call!609432)))

(declare-fun bm!609429 () Bool)

(assert (=> bm!609429 (= call!609436 (derivationStepZipperDown!1795 (ite c!1250553 (regOne!33647 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))) (ite c!1250554 (regTwo!33646 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))) (ite c!1250552 (regOne!33646 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))) (reg!16896 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292)))))) (ite (or c!1250553 c!1250554) (ite c!1250239 (Context!11903 Nil!65876) (Context!11903 call!609204)) (Context!11903 call!609431)) (h!72326 s!2326)))))

(declare-fun b!6741217 () Bool)

(assert (=> b!6741217 (= e!4071879 call!609433)))

(declare-fun b!6741218 () Bool)

(assert (=> b!6741218 (= c!1250554 e!4071882)))

(declare-fun res!2757418 () Bool)

(assert (=> b!6741218 (=> (not res!2757418) (not e!4071882))))

(assert (=> b!6741218 (= res!2757418 ((_ is Concat!25412) (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))))))

(assert (=> b!6741218 (= e!4071881 e!4071880)))

(declare-fun bm!609430 () Bool)

(assert (=> bm!609430 (= call!609432 call!609436)))

(declare-fun b!6741219 () Bool)

(assert (=> b!6741219 (= e!4071879 ((as const (Array Context!11902 Bool)) false))))

(declare-fun bm!609431 () Bool)

(assert (=> bm!609431 (= call!609435 (derivationStepZipperDown!1795 (ite c!1250553 (regTwo!33647 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292))) (regOne!33646 (ite c!1250239 (regTwo!33647 r!7292) (regOne!33646 r!7292)))) (ite c!1250553 (ite c!1250239 (Context!11903 Nil!65876) (Context!11903 call!609204)) (Context!11903 call!609434)) (h!72326 s!2326)))))

(declare-fun b!6741220 () Bool)

(assert (=> b!6741220 (= e!4071883 (store ((as const (Array Context!11902 Bool)) false) (ite c!1250239 (Context!11903 Nil!65876) (Context!11903 call!609204)) true))))

(assert (= (and d!2118137 c!1250551) b!6741220))

(assert (= (and d!2118137 (not c!1250551)) b!6741213))

(assert (= (and b!6741213 c!1250553) b!6741216))

(assert (= (and b!6741213 (not c!1250553)) b!6741218))

(assert (= (and b!6741218 res!2757418) b!6741212))

(assert (= (and b!6741218 c!1250554) b!6741211))

(assert (= (and b!6741218 (not c!1250554)) b!6741214))

(assert (= (and b!6741214 c!1250552) b!6741215))

(assert (= (and b!6741214 (not c!1250552)) b!6741210))

(assert (= (and b!6741210 c!1250555) b!6741217))

(assert (= (and b!6741210 (not c!1250555)) b!6741219))

(assert (= (or b!6741215 b!6741217) bm!609426))

(assert (= (or b!6741215 b!6741217) bm!609428))

(assert (= (or b!6741211 bm!609426) bm!609427))

(assert (= (or b!6741211 bm!609428) bm!609430))

(assert (= (or b!6741216 b!6741211) bm!609431))

(assert (= (or b!6741216 bm!609430) bm!609429))

(declare-fun m!7497796 () Bool)

(assert (=> b!6741212 m!7497796))

(declare-fun m!7497798 () Bool)

(assert (=> b!6741220 m!7497798))

(declare-fun m!7497800 () Bool)

(assert (=> bm!609431 m!7497800))

(declare-fun m!7497802 () Bool)

(assert (=> bm!609429 m!7497802))

(declare-fun m!7497804 () Bool)

(assert (=> bm!609427 m!7497804))

(assert (=> bm!609201 d!2118137))

(declare-fun d!2118139 () Bool)

(assert (=> d!2118139 true))

(assert (=> d!2118139 true))

(declare-fun res!2757419 () Bool)

(assert (=> d!2118139 (= (choose!50242 lambda!378554) res!2757419)))

(assert (=> d!2117523 d!2118139))

(declare-fun b!6741221 () Bool)

(declare-fun e!4071887 () (InoxSet Context!11902))

(declare-fun call!609437 () (InoxSet Context!11902))

(assert (=> b!6741221 (= e!4071887 call!609437)))

(declare-fun e!4071886 () (InoxSet Context!11902))

(declare-fun b!6741222 () Bool)

(assert (=> b!6741222 (= e!4071886 ((_ map or) call!609437 (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438907)))))) (h!72326 s!2326))))))

(declare-fun b!6741223 () Bool)

(assert (=> b!6741223 (= e!4071886 e!4071887)))

(declare-fun c!1250556 () Bool)

(assert (=> b!6741223 (= c!1250556 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438907))))))))

(declare-fun d!2118141 () Bool)

(declare-fun c!1250557 () Bool)

(declare-fun e!4071885 () Bool)

(assert (=> d!2118141 (= c!1250557 e!4071885)))

(declare-fun res!2757420 () Bool)

(assert (=> d!2118141 (=> (not res!2757420) (not e!4071885))))

(assert (=> d!2118141 (= res!2757420 ((_ is Cons!65876) (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438907))))))))

(assert (=> d!2118141 (= (derivationStepZipperUp!1721 (Context!11903 (t!379697 (exprs!6451 lt!2438907))) (h!72326 s!2326)) e!4071886)))

(declare-fun bm!609432 () Bool)

(assert (=> bm!609432 (= call!609437 (derivationStepZipperDown!1795 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438907))))) (Context!11903 (t!379697 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438907)))))) (h!72326 s!2326)))))

(declare-fun b!6741224 () Bool)

(assert (=> b!6741224 (= e!4071887 ((as const (Array Context!11902 Bool)) false))))

(declare-fun b!6741225 () Bool)

(assert (=> b!6741225 (= e!4071885 (nullable!6554 (h!72324 (exprs!6451 (Context!11903 (t!379697 (exprs!6451 lt!2438907)))))))))

(assert (= (and d!2118141 res!2757420) b!6741225))

(assert (= (and d!2118141 c!1250557) b!6741222))

(assert (= (and d!2118141 (not c!1250557)) b!6741223))

(assert (= (and b!6741223 c!1250556) b!6741221))

(assert (= (and b!6741223 (not c!1250556)) b!6741224))

(assert (= (or b!6741222 b!6741221) bm!609432))

(declare-fun m!7497806 () Bool)

(assert (=> b!6741222 m!7497806))

(declare-fun m!7497808 () Bool)

(assert (=> bm!609432 m!7497808))

(declare-fun m!7497810 () Bool)

(assert (=> b!6741225 m!7497810))

(assert (=> b!6740049 d!2118141))

(declare-fun d!2118143 () Bool)

(assert (=> d!2118143 (= (nullable!6554 (h!72324 (exprs!6451 lt!2438907))) (nullableFct!2468 (h!72324 (exprs!6451 lt!2438907))))))

(declare-fun bs!1792507 () Bool)

(assert (= bs!1792507 d!2118143))

(declare-fun m!7497812 () Bool)

(assert (=> bs!1792507 m!7497812))

(assert (=> b!6740052 d!2118143))

(declare-fun d!2118145 () Bool)

(assert (=> d!2118145 (= (isEmpty!38222 (tail!12646 (exprs!6451 (h!72325 zl!343)))) ((_ is Nil!65876) (tail!12646 (exprs!6451 (h!72325 zl!343)))))))

(assert (=> b!6739890 d!2118145))

(declare-fun d!2118147 () Bool)

(assert (=> d!2118147 (= (tail!12646 (exprs!6451 (h!72325 zl!343))) (t!379697 (exprs!6451 (h!72325 zl!343))))))

(assert (=> b!6739890 d!2118147))

(declare-fun e!4071888 () Bool)

(assert (=> b!6740219 (= tp!1847735 e!4071888)))

(declare-fun b!6741227 () Bool)

(declare-fun tp!1847958 () Bool)

(declare-fun tp!1847960 () Bool)

(assert (=> b!6741227 (= e!4071888 (and tp!1847958 tp!1847960))))

(declare-fun b!6741228 () Bool)

(declare-fun tp!1847961 () Bool)

(assert (=> b!6741228 (= e!4071888 tp!1847961)))

(declare-fun b!6741226 () Bool)

(assert (=> b!6741226 (= e!4071888 tp_is_empty!42387)))

(declare-fun b!6741229 () Bool)

(declare-fun tp!1847962 () Bool)

(declare-fun tp!1847959 () Bool)

(assert (=> b!6741229 (= e!4071888 (and tp!1847962 tp!1847959))))

(assert (= (and b!6740219 ((_ is ElementMatch!16567) (reg!16896 (reg!16896 r!7292)))) b!6741226))

(assert (= (and b!6740219 ((_ is Concat!25412) (reg!16896 (reg!16896 r!7292)))) b!6741227))

(assert (= (and b!6740219 ((_ is Star!16567) (reg!16896 (reg!16896 r!7292)))) b!6741228))

(assert (= (and b!6740219 ((_ is Union!16567) (reg!16896 (reg!16896 r!7292)))) b!6741229))

(declare-fun e!4071889 () Bool)

(assert (=> b!6740220 (= tp!1847736 e!4071889)))

(declare-fun b!6741231 () Bool)

(declare-fun tp!1847963 () Bool)

(declare-fun tp!1847965 () Bool)

(assert (=> b!6741231 (= e!4071889 (and tp!1847963 tp!1847965))))

(declare-fun b!6741232 () Bool)

(declare-fun tp!1847966 () Bool)

(assert (=> b!6741232 (= e!4071889 tp!1847966)))

(declare-fun b!6741230 () Bool)

(assert (=> b!6741230 (= e!4071889 tp_is_empty!42387)))

(declare-fun b!6741233 () Bool)

(declare-fun tp!1847967 () Bool)

(declare-fun tp!1847964 () Bool)

(assert (=> b!6741233 (= e!4071889 (and tp!1847967 tp!1847964))))

(assert (= (and b!6740220 ((_ is ElementMatch!16567) (regOne!33647 (reg!16896 r!7292)))) b!6741230))

(assert (= (and b!6740220 ((_ is Concat!25412) (regOne!33647 (reg!16896 r!7292)))) b!6741231))

(assert (= (and b!6740220 ((_ is Star!16567) (regOne!33647 (reg!16896 r!7292)))) b!6741232))

(assert (= (and b!6740220 ((_ is Union!16567) (regOne!33647 (reg!16896 r!7292)))) b!6741233))

(declare-fun e!4071890 () Bool)

(assert (=> b!6740220 (= tp!1847733 e!4071890)))

(declare-fun b!6741235 () Bool)

(declare-fun tp!1847968 () Bool)

(declare-fun tp!1847970 () Bool)

(assert (=> b!6741235 (= e!4071890 (and tp!1847968 tp!1847970))))

(declare-fun b!6741236 () Bool)

(declare-fun tp!1847971 () Bool)

(assert (=> b!6741236 (= e!4071890 tp!1847971)))

(declare-fun b!6741234 () Bool)

(assert (=> b!6741234 (= e!4071890 tp_is_empty!42387)))

(declare-fun b!6741237 () Bool)

(declare-fun tp!1847972 () Bool)

(declare-fun tp!1847969 () Bool)

(assert (=> b!6741237 (= e!4071890 (and tp!1847972 tp!1847969))))

(assert (= (and b!6740220 ((_ is ElementMatch!16567) (regTwo!33647 (reg!16896 r!7292)))) b!6741234))

(assert (= (and b!6740220 ((_ is Concat!25412) (regTwo!33647 (reg!16896 r!7292)))) b!6741235))

(assert (= (and b!6740220 ((_ is Star!16567) (regTwo!33647 (reg!16896 r!7292)))) b!6741236))

(assert (= (and b!6740220 ((_ is Union!16567) (regTwo!33647 (reg!16896 r!7292)))) b!6741237))

(declare-fun e!4071891 () Bool)

(assert (=> b!6740227 (= tp!1847745 e!4071891)))

(declare-fun b!6741239 () Bool)

(declare-fun tp!1847973 () Bool)

(declare-fun tp!1847975 () Bool)

(assert (=> b!6741239 (= e!4071891 (and tp!1847973 tp!1847975))))

(declare-fun b!6741240 () Bool)

(declare-fun tp!1847976 () Bool)

(assert (=> b!6741240 (= e!4071891 tp!1847976)))

(declare-fun b!6741238 () Bool)

(assert (=> b!6741238 (= e!4071891 tp_is_empty!42387)))

(declare-fun b!6741241 () Bool)

(declare-fun tp!1847977 () Bool)

(declare-fun tp!1847974 () Bool)

(assert (=> b!6741241 (= e!4071891 (and tp!1847977 tp!1847974))))

(assert (= (and b!6740227 ((_ is ElementMatch!16567) (reg!16896 (regTwo!33646 r!7292)))) b!6741238))

(assert (= (and b!6740227 ((_ is Concat!25412) (reg!16896 (regTwo!33646 r!7292)))) b!6741239))

(assert (= (and b!6740227 ((_ is Star!16567) (reg!16896 (regTwo!33646 r!7292)))) b!6741240))

(assert (= (and b!6740227 ((_ is Union!16567) (reg!16896 (regTwo!33646 r!7292)))) b!6741241))

(declare-fun e!4071892 () Bool)

(assert (=> b!6740218 (= tp!1847732 e!4071892)))

(declare-fun b!6741243 () Bool)

(declare-fun tp!1847978 () Bool)

(declare-fun tp!1847980 () Bool)

(assert (=> b!6741243 (= e!4071892 (and tp!1847978 tp!1847980))))

(declare-fun b!6741244 () Bool)

(declare-fun tp!1847981 () Bool)

(assert (=> b!6741244 (= e!4071892 tp!1847981)))

(declare-fun b!6741242 () Bool)

(assert (=> b!6741242 (= e!4071892 tp_is_empty!42387)))

(declare-fun b!6741245 () Bool)

(declare-fun tp!1847982 () Bool)

(declare-fun tp!1847979 () Bool)

(assert (=> b!6741245 (= e!4071892 (and tp!1847982 tp!1847979))))

(assert (= (and b!6740218 ((_ is ElementMatch!16567) (regOne!33646 (reg!16896 r!7292)))) b!6741242))

(assert (= (and b!6740218 ((_ is Concat!25412) (regOne!33646 (reg!16896 r!7292)))) b!6741243))

(assert (= (and b!6740218 ((_ is Star!16567) (regOne!33646 (reg!16896 r!7292)))) b!6741244))

(assert (= (and b!6740218 ((_ is Union!16567) (regOne!33646 (reg!16896 r!7292)))) b!6741245))

(declare-fun e!4071893 () Bool)

(assert (=> b!6740218 (= tp!1847734 e!4071893)))

(declare-fun b!6741247 () Bool)

(declare-fun tp!1847983 () Bool)

(declare-fun tp!1847985 () Bool)

(assert (=> b!6741247 (= e!4071893 (and tp!1847983 tp!1847985))))

(declare-fun b!6741248 () Bool)

(declare-fun tp!1847986 () Bool)

(assert (=> b!6741248 (= e!4071893 tp!1847986)))

(declare-fun b!6741246 () Bool)

(assert (=> b!6741246 (= e!4071893 tp_is_empty!42387)))

(declare-fun b!6741249 () Bool)

(declare-fun tp!1847987 () Bool)

(declare-fun tp!1847984 () Bool)

(assert (=> b!6741249 (= e!4071893 (and tp!1847987 tp!1847984))))

(assert (= (and b!6740218 ((_ is ElementMatch!16567) (regTwo!33646 (reg!16896 r!7292)))) b!6741246))

(assert (= (and b!6740218 ((_ is Concat!25412) (regTwo!33646 (reg!16896 r!7292)))) b!6741247))

(assert (= (and b!6740218 ((_ is Star!16567) (regTwo!33646 (reg!16896 r!7292)))) b!6741248))

(assert (= (and b!6740218 ((_ is Union!16567) (regTwo!33646 (reg!16896 r!7292)))) b!6741249))

(declare-fun e!4071894 () Bool)

(assert (=> b!6740228 (= tp!1847746 e!4071894)))

(declare-fun b!6741251 () Bool)

(declare-fun tp!1847988 () Bool)

(declare-fun tp!1847990 () Bool)

(assert (=> b!6741251 (= e!4071894 (and tp!1847988 tp!1847990))))

(declare-fun b!6741252 () Bool)

(declare-fun tp!1847991 () Bool)

(assert (=> b!6741252 (= e!4071894 tp!1847991)))

(declare-fun b!6741250 () Bool)

(assert (=> b!6741250 (= e!4071894 tp_is_empty!42387)))

(declare-fun b!6741253 () Bool)

(declare-fun tp!1847992 () Bool)

(declare-fun tp!1847989 () Bool)

(assert (=> b!6741253 (= e!4071894 (and tp!1847992 tp!1847989))))

(assert (= (and b!6740228 ((_ is ElementMatch!16567) (regOne!33647 (regTwo!33646 r!7292)))) b!6741250))

(assert (= (and b!6740228 ((_ is Concat!25412) (regOne!33647 (regTwo!33646 r!7292)))) b!6741251))

(assert (= (and b!6740228 ((_ is Star!16567) (regOne!33647 (regTwo!33646 r!7292)))) b!6741252))

(assert (= (and b!6740228 ((_ is Union!16567) (regOne!33647 (regTwo!33646 r!7292)))) b!6741253))

(declare-fun e!4071895 () Bool)

(assert (=> b!6740228 (= tp!1847743 e!4071895)))

(declare-fun b!6741255 () Bool)

(declare-fun tp!1847993 () Bool)

(declare-fun tp!1847995 () Bool)

(assert (=> b!6741255 (= e!4071895 (and tp!1847993 tp!1847995))))

(declare-fun b!6741256 () Bool)

(declare-fun tp!1847996 () Bool)

(assert (=> b!6741256 (= e!4071895 tp!1847996)))

(declare-fun b!6741254 () Bool)

(assert (=> b!6741254 (= e!4071895 tp_is_empty!42387)))

(declare-fun b!6741257 () Bool)

(declare-fun tp!1847997 () Bool)

(declare-fun tp!1847994 () Bool)

(assert (=> b!6741257 (= e!4071895 (and tp!1847997 tp!1847994))))

(assert (= (and b!6740228 ((_ is ElementMatch!16567) (regTwo!33647 (regTwo!33646 r!7292)))) b!6741254))

(assert (= (and b!6740228 ((_ is Concat!25412) (regTwo!33647 (regTwo!33646 r!7292)))) b!6741255))

(assert (= (and b!6740228 ((_ is Star!16567) (regTwo!33647 (regTwo!33646 r!7292)))) b!6741256))

(assert (= (and b!6740228 ((_ is Union!16567) (regTwo!33647 (regTwo!33646 r!7292)))) b!6741257))

(declare-fun e!4071896 () Bool)

(assert (=> b!6740229 (= tp!1847747 e!4071896)))

(declare-fun b!6741259 () Bool)

(declare-fun tp!1847998 () Bool)

(declare-fun tp!1848000 () Bool)

(assert (=> b!6741259 (= e!4071896 (and tp!1847998 tp!1848000))))

(declare-fun b!6741260 () Bool)

(declare-fun tp!1848001 () Bool)

(assert (=> b!6741260 (= e!4071896 tp!1848001)))

(declare-fun b!6741258 () Bool)

(assert (=> b!6741258 (= e!4071896 tp_is_empty!42387)))

(declare-fun b!6741261 () Bool)

(declare-fun tp!1848002 () Bool)

(declare-fun tp!1847999 () Bool)

(assert (=> b!6741261 (= e!4071896 (and tp!1848002 tp!1847999))))

(assert (= (and b!6740229 ((_ is ElementMatch!16567) (h!72324 (exprs!6451 (h!72325 zl!343))))) b!6741258))

(assert (= (and b!6740229 ((_ is Concat!25412) (h!72324 (exprs!6451 (h!72325 zl!343))))) b!6741259))

(assert (= (and b!6740229 ((_ is Star!16567) (h!72324 (exprs!6451 (h!72325 zl!343))))) b!6741260))

(assert (= (and b!6740229 ((_ is Union!16567) (h!72324 (exprs!6451 (h!72325 zl!343))))) b!6741261))

(declare-fun b!6741262 () Bool)

(declare-fun e!4071897 () Bool)

(declare-fun tp!1848003 () Bool)

(declare-fun tp!1848004 () Bool)

(assert (=> b!6741262 (= e!4071897 (and tp!1848003 tp!1848004))))

(assert (=> b!6740229 (= tp!1847748 e!4071897)))

(assert (= (and b!6740229 ((_ is Cons!65876) (t!379697 (exprs!6451 (h!72325 zl!343))))) b!6741262))

(declare-fun e!4071898 () Bool)

(assert (=> b!6740240 (= tp!1847757 e!4071898)))

(declare-fun b!6741264 () Bool)

(declare-fun tp!1848005 () Bool)

(declare-fun tp!1848007 () Bool)

(assert (=> b!6741264 (= e!4071898 (and tp!1848005 tp!1848007))))

(declare-fun b!6741265 () Bool)

(declare-fun tp!1848008 () Bool)

(assert (=> b!6741265 (= e!4071898 tp!1848008)))

(declare-fun b!6741263 () Bool)

(assert (=> b!6741263 (= e!4071898 tp_is_empty!42387)))

(declare-fun b!6741266 () Bool)

(declare-fun tp!1848009 () Bool)

(declare-fun tp!1848006 () Bool)

(assert (=> b!6741266 (= e!4071898 (and tp!1848009 tp!1848006))))

(assert (= (and b!6740240 ((_ is ElementMatch!16567) (regOne!33646 (regTwo!33647 r!7292)))) b!6741263))

(assert (= (and b!6740240 ((_ is Concat!25412) (regOne!33646 (regTwo!33647 r!7292)))) b!6741264))

(assert (= (and b!6740240 ((_ is Star!16567) (regOne!33646 (regTwo!33647 r!7292)))) b!6741265))

(assert (= (and b!6740240 ((_ is Union!16567) (regOne!33646 (regTwo!33647 r!7292)))) b!6741266))

(declare-fun e!4071899 () Bool)

(assert (=> b!6740240 (= tp!1847759 e!4071899)))

(declare-fun b!6741268 () Bool)

(declare-fun tp!1848010 () Bool)

(declare-fun tp!1848012 () Bool)

(assert (=> b!6741268 (= e!4071899 (and tp!1848010 tp!1848012))))

(declare-fun b!6741269 () Bool)

(declare-fun tp!1848013 () Bool)

(assert (=> b!6741269 (= e!4071899 tp!1848013)))

(declare-fun b!6741267 () Bool)

(assert (=> b!6741267 (= e!4071899 tp_is_empty!42387)))

(declare-fun b!6741270 () Bool)

(declare-fun tp!1848014 () Bool)

(declare-fun tp!1848011 () Bool)

(assert (=> b!6741270 (= e!4071899 (and tp!1848014 tp!1848011))))

(assert (= (and b!6740240 ((_ is ElementMatch!16567) (regTwo!33646 (regTwo!33647 r!7292)))) b!6741267))

(assert (= (and b!6740240 ((_ is Concat!25412) (regTwo!33646 (regTwo!33647 r!7292)))) b!6741268))

(assert (= (and b!6740240 ((_ is Star!16567) (regTwo!33646 (regTwo!33647 r!7292)))) b!6741269))

(assert (= (and b!6740240 ((_ is Union!16567) (regTwo!33646 (regTwo!33647 r!7292)))) b!6741270))

(declare-fun e!4071900 () Bool)

(assert (=> b!6740241 (= tp!1847760 e!4071900)))

(declare-fun b!6741272 () Bool)

(declare-fun tp!1848015 () Bool)

(declare-fun tp!1848017 () Bool)

(assert (=> b!6741272 (= e!4071900 (and tp!1848015 tp!1848017))))

(declare-fun b!6741273 () Bool)

(declare-fun tp!1848018 () Bool)

(assert (=> b!6741273 (= e!4071900 tp!1848018)))

(declare-fun b!6741271 () Bool)

(assert (=> b!6741271 (= e!4071900 tp_is_empty!42387)))

(declare-fun b!6741274 () Bool)

(declare-fun tp!1848019 () Bool)

(declare-fun tp!1848016 () Bool)

(assert (=> b!6741274 (= e!4071900 (and tp!1848019 tp!1848016))))

(assert (= (and b!6740241 ((_ is ElementMatch!16567) (reg!16896 (regTwo!33647 r!7292)))) b!6741271))

(assert (= (and b!6740241 ((_ is Concat!25412) (reg!16896 (regTwo!33647 r!7292)))) b!6741272))

(assert (= (and b!6740241 ((_ is Star!16567) (reg!16896 (regTwo!33647 r!7292)))) b!6741273))

(assert (= (and b!6740241 ((_ is Union!16567) (reg!16896 (regTwo!33647 r!7292)))) b!6741274))

(declare-fun b!6741276 () Bool)

(declare-fun e!4071902 () Bool)

(declare-fun tp!1848020 () Bool)

(assert (=> b!6741276 (= e!4071902 tp!1848020)))

(declare-fun tp!1848021 () Bool)

(declare-fun b!6741275 () Bool)

(declare-fun e!4071901 () Bool)

(assert (=> b!6741275 (= e!4071901 (and (inv!84664 (h!72325 (t!379698 (t!379698 zl!343)))) e!4071902 tp!1848021))))

(assert (=> b!6740254 (= tp!1847773 e!4071901)))

(assert (= b!6741275 b!6741276))

(assert (= (and b!6740254 ((_ is Cons!65877) (t!379698 (t!379698 zl!343)))) b!6741275))

(declare-fun m!7497814 () Bool)

(assert (=> b!6741275 m!7497814))

(declare-fun e!4071903 () Bool)

(assert (=> b!6740226 (= tp!1847742 e!4071903)))

(declare-fun b!6741278 () Bool)

(declare-fun tp!1848022 () Bool)

(declare-fun tp!1848024 () Bool)

(assert (=> b!6741278 (= e!4071903 (and tp!1848022 tp!1848024))))

(declare-fun b!6741279 () Bool)

(declare-fun tp!1848025 () Bool)

(assert (=> b!6741279 (= e!4071903 tp!1848025)))

(declare-fun b!6741277 () Bool)

(assert (=> b!6741277 (= e!4071903 tp_is_empty!42387)))

(declare-fun b!6741280 () Bool)

(declare-fun tp!1848026 () Bool)

(declare-fun tp!1848023 () Bool)

(assert (=> b!6741280 (= e!4071903 (and tp!1848026 tp!1848023))))

(assert (= (and b!6740226 ((_ is ElementMatch!16567) (regOne!33646 (regTwo!33646 r!7292)))) b!6741277))

(assert (= (and b!6740226 ((_ is Concat!25412) (regOne!33646 (regTwo!33646 r!7292)))) b!6741278))

(assert (= (and b!6740226 ((_ is Star!16567) (regOne!33646 (regTwo!33646 r!7292)))) b!6741279))

(assert (= (and b!6740226 ((_ is Union!16567) (regOne!33646 (regTwo!33646 r!7292)))) b!6741280))

(declare-fun e!4071904 () Bool)

(assert (=> b!6740226 (= tp!1847744 e!4071904)))

(declare-fun b!6741282 () Bool)

(declare-fun tp!1848027 () Bool)

(declare-fun tp!1848029 () Bool)

(assert (=> b!6741282 (= e!4071904 (and tp!1848027 tp!1848029))))

(declare-fun b!6741283 () Bool)

(declare-fun tp!1848030 () Bool)

(assert (=> b!6741283 (= e!4071904 tp!1848030)))

(declare-fun b!6741281 () Bool)

(assert (=> b!6741281 (= e!4071904 tp_is_empty!42387)))

(declare-fun b!6741284 () Bool)

(declare-fun tp!1848031 () Bool)

(declare-fun tp!1848028 () Bool)

(assert (=> b!6741284 (= e!4071904 (and tp!1848031 tp!1848028))))

(assert (= (and b!6740226 ((_ is ElementMatch!16567) (regTwo!33646 (regTwo!33646 r!7292)))) b!6741281))

(assert (= (and b!6740226 ((_ is Concat!25412) (regTwo!33646 (regTwo!33646 r!7292)))) b!6741282))

(assert (= (and b!6740226 ((_ is Star!16567) (regTwo!33646 (regTwo!33646 r!7292)))) b!6741283))

(assert (= (and b!6740226 ((_ is Union!16567) (regTwo!33646 (regTwo!33646 r!7292)))) b!6741284))

(declare-fun e!4071905 () Bool)

(assert (=> b!6740242 (= tp!1847761 e!4071905)))

(declare-fun b!6741286 () Bool)

(declare-fun tp!1848032 () Bool)

(declare-fun tp!1848034 () Bool)

(assert (=> b!6741286 (= e!4071905 (and tp!1848032 tp!1848034))))

(declare-fun b!6741287 () Bool)

(declare-fun tp!1848035 () Bool)

(assert (=> b!6741287 (= e!4071905 tp!1848035)))

(declare-fun b!6741285 () Bool)

(assert (=> b!6741285 (= e!4071905 tp_is_empty!42387)))

(declare-fun b!6741288 () Bool)

(declare-fun tp!1848036 () Bool)

(declare-fun tp!1848033 () Bool)

(assert (=> b!6741288 (= e!4071905 (and tp!1848036 tp!1848033))))

(assert (= (and b!6740242 ((_ is ElementMatch!16567) (regOne!33647 (regTwo!33647 r!7292)))) b!6741285))

(assert (= (and b!6740242 ((_ is Concat!25412) (regOne!33647 (regTwo!33647 r!7292)))) b!6741286))

(assert (= (and b!6740242 ((_ is Star!16567) (regOne!33647 (regTwo!33647 r!7292)))) b!6741287))

(assert (= (and b!6740242 ((_ is Union!16567) (regOne!33647 (regTwo!33647 r!7292)))) b!6741288))

(declare-fun e!4071906 () Bool)

(assert (=> b!6740242 (= tp!1847758 e!4071906)))

(declare-fun b!6741290 () Bool)

(declare-fun tp!1848037 () Bool)

(declare-fun tp!1848039 () Bool)

(assert (=> b!6741290 (= e!4071906 (and tp!1848037 tp!1848039))))

(declare-fun b!6741291 () Bool)

(declare-fun tp!1848040 () Bool)

(assert (=> b!6741291 (= e!4071906 tp!1848040)))

(declare-fun b!6741289 () Bool)

(assert (=> b!6741289 (= e!4071906 tp_is_empty!42387)))

(declare-fun b!6741292 () Bool)

(declare-fun tp!1848041 () Bool)

(declare-fun tp!1848038 () Bool)

(assert (=> b!6741292 (= e!4071906 (and tp!1848041 tp!1848038))))

(assert (= (and b!6740242 ((_ is ElementMatch!16567) (regTwo!33647 (regTwo!33647 r!7292)))) b!6741289))

(assert (= (and b!6740242 ((_ is Concat!25412) (regTwo!33647 (regTwo!33647 r!7292)))) b!6741290))

(assert (= (and b!6740242 ((_ is Star!16567) (regTwo!33647 (regTwo!33647 r!7292)))) b!6741291))

(assert (= (and b!6740242 ((_ is Union!16567) (regTwo!33647 (regTwo!33647 r!7292)))) b!6741292))

(declare-fun b!6741293 () Bool)

(declare-fun e!4071907 () Bool)

(declare-fun tp!1848042 () Bool)

(declare-fun tp!1848043 () Bool)

(assert (=> b!6741293 (= e!4071907 (and tp!1848042 tp!1848043))))

(assert (=> b!6740255 (= tp!1847772 e!4071907)))

(assert (= (and b!6740255 ((_ is Cons!65876) (exprs!6451 (h!72325 (t!379698 zl!343))))) b!6741293))

(declare-fun b!6741294 () Bool)

(declare-fun e!4071908 () Bool)

(declare-fun tp!1848044 () Bool)

(assert (=> b!6741294 (= e!4071908 (and tp_is_empty!42387 tp!1848044))))

(assert (=> b!6740234 (= tp!1847751 e!4071908)))

(assert (= (and b!6740234 ((_ is Cons!65878) (t!379699 (t!379699 s!2326)))) b!6741294))

(declare-fun e!4071909 () Bool)

(assert (=> b!6740224 (= tp!1847741 e!4071909)))

(declare-fun b!6741296 () Bool)

(declare-fun tp!1848045 () Bool)

(declare-fun tp!1848047 () Bool)

(assert (=> b!6741296 (= e!4071909 (and tp!1848045 tp!1848047))))

(declare-fun b!6741297 () Bool)

(declare-fun tp!1848048 () Bool)

(assert (=> b!6741297 (= e!4071909 tp!1848048)))

(declare-fun b!6741295 () Bool)

(assert (=> b!6741295 (= e!4071909 tp_is_empty!42387)))

(declare-fun b!6741298 () Bool)

(declare-fun tp!1848049 () Bool)

(declare-fun tp!1848046 () Bool)

(assert (=> b!6741298 (= e!4071909 (and tp!1848049 tp!1848046))))

(assert (= (and b!6740224 ((_ is ElementMatch!16567) (regOne!33647 (regOne!33646 r!7292)))) b!6741295))

(assert (= (and b!6740224 ((_ is Concat!25412) (regOne!33647 (regOne!33646 r!7292)))) b!6741296))

(assert (= (and b!6740224 ((_ is Star!16567) (regOne!33647 (regOne!33646 r!7292)))) b!6741297))

(assert (= (and b!6740224 ((_ is Union!16567) (regOne!33647 (regOne!33646 r!7292)))) b!6741298))

(declare-fun e!4071910 () Bool)

(assert (=> b!6740224 (= tp!1847738 e!4071910)))

(declare-fun b!6741300 () Bool)

(declare-fun tp!1848050 () Bool)

(declare-fun tp!1848052 () Bool)

(assert (=> b!6741300 (= e!4071910 (and tp!1848050 tp!1848052))))

(declare-fun b!6741301 () Bool)

(declare-fun tp!1848053 () Bool)

(assert (=> b!6741301 (= e!4071910 tp!1848053)))

(declare-fun b!6741299 () Bool)

(assert (=> b!6741299 (= e!4071910 tp_is_empty!42387)))

(declare-fun b!6741302 () Bool)

(declare-fun tp!1848054 () Bool)

(declare-fun tp!1848051 () Bool)

(assert (=> b!6741302 (= e!4071910 (and tp!1848054 tp!1848051))))

(assert (= (and b!6740224 ((_ is ElementMatch!16567) (regTwo!33647 (regOne!33646 r!7292)))) b!6741299))

(assert (= (and b!6740224 ((_ is Concat!25412) (regTwo!33647 (regOne!33646 r!7292)))) b!6741300))

(assert (= (and b!6740224 ((_ is Star!16567) (regTwo!33647 (regOne!33646 r!7292)))) b!6741301))

(assert (= (and b!6740224 ((_ is Union!16567) (regTwo!33647 (regOne!33646 r!7292)))) b!6741302))

(declare-fun condSetEmpty!46031 () Bool)

(assert (=> setNonEmpty!46017 (= condSetEmpty!46031 (= setRest!46017 ((as const (Array Context!11902 Bool)) false)))))

(declare-fun setRes!46031 () Bool)

(assert (=> setNonEmpty!46017 (= tp!1847767 setRes!46031)))

(declare-fun setIsEmpty!46031 () Bool)

(assert (=> setIsEmpty!46031 setRes!46031))

(declare-fun e!4071911 () Bool)

(declare-fun setNonEmpty!46031 () Bool)

(declare-fun tp!1848056 () Bool)

(declare-fun setElem!46031 () Context!11902)

(assert (=> setNonEmpty!46031 (= setRes!46031 (and tp!1848056 (inv!84664 setElem!46031) e!4071911))))

(declare-fun setRest!46031 () (InoxSet Context!11902))

(assert (=> setNonEmpty!46031 (= setRest!46017 ((_ map or) (store ((as const (Array Context!11902 Bool)) false) setElem!46031 true) setRest!46031))))

(declare-fun b!6741303 () Bool)

(declare-fun tp!1848055 () Bool)

(assert (=> b!6741303 (= e!4071911 tp!1848055)))

(assert (= (and setNonEmpty!46017 condSetEmpty!46031) setIsEmpty!46031))

(assert (= (and setNonEmpty!46017 (not condSetEmpty!46031)) setNonEmpty!46031))

(assert (= setNonEmpty!46031 b!6741303))

(declare-fun m!7497816 () Bool)

(assert (=> setNonEmpty!46031 m!7497816))

(declare-fun e!4071912 () Bool)

(assert (=> b!6740223 (= tp!1847740 e!4071912)))

(declare-fun b!6741305 () Bool)

(declare-fun tp!1848057 () Bool)

(declare-fun tp!1848059 () Bool)

(assert (=> b!6741305 (= e!4071912 (and tp!1848057 tp!1848059))))

(declare-fun b!6741306 () Bool)

(declare-fun tp!1848060 () Bool)

(assert (=> b!6741306 (= e!4071912 tp!1848060)))

(declare-fun b!6741304 () Bool)

(assert (=> b!6741304 (= e!4071912 tp_is_empty!42387)))

(declare-fun b!6741307 () Bool)

(declare-fun tp!1848061 () Bool)

(declare-fun tp!1848058 () Bool)

(assert (=> b!6741307 (= e!4071912 (and tp!1848061 tp!1848058))))

(assert (= (and b!6740223 ((_ is ElementMatch!16567) (reg!16896 (regOne!33646 r!7292)))) b!6741304))

(assert (= (and b!6740223 ((_ is Concat!25412) (reg!16896 (regOne!33646 r!7292)))) b!6741305))

(assert (= (and b!6740223 ((_ is Star!16567) (reg!16896 (regOne!33646 r!7292)))) b!6741306))

(assert (= (and b!6740223 ((_ is Union!16567) (reg!16896 (regOne!33646 r!7292)))) b!6741307))

(declare-fun b!6741308 () Bool)

(declare-fun e!4071913 () Bool)

(declare-fun tp!1848062 () Bool)

(declare-fun tp!1848063 () Bool)

(assert (=> b!6741308 (= e!4071913 (and tp!1848062 tp!1848063))))

(assert (=> b!6740247 (= tp!1847766 e!4071913)))

(assert (= (and b!6740247 ((_ is Cons!65876) (exprs!6451 setElem!46017))) b!6741308))

(declare-fun e!4071914 () Bool)

(assert (=> b!6740237 (= tp!1847755 e!4071914)))

(declare-fun b!6741310 () Bool)

(declare-fun tp!1848064 () Bool)

(declare-fun tp!1848066 () Bool)

(assert (=> b!6741310 (= e!4071914 (and tp!1848064 tp!1848066))))

(declare-fun b!6741311 () Bool)

(declare-fun tp!1848067 () Bool)

(assert (=> b!6741311 (= e!4071914 tp!1848067)))

(declare-fun b!6741309 () Bool)

(assert (=> b!6741309 (= e!4071914 tp_is_empty!42387)))

(declare-fun b!6741312 () Bool)

(declare-fun tp!1848068 () Bool)

(declare-fun tp!1848065 () Bool)

(assert (=> b!6741312 (= e!4071914 (and tp!1848068 tp!1848065))))

(assert (= (and b!6740237 ((_ is ElementMatch!16567) (reg!16896 (regOne!33647 r!7292)))) b!6741309))

(assert (= (and b!6740237 ((_ is Concat!25412) (reg!16896 (regOne!33647 r!7292)))) b!6741310))

(assert (= (and b!6740237 ((_ is Star!16567) (reg!16896 (regOne!33647 r!7292)))) b!6741311))

(assert (= (and b!6740237 ((_ is Union!16567) (reg!16896 (regOne!33647 r!7292)))) b!6741312))

(declare-fun e!4071915 () Bool)

(assert (=> b!6740236 (= tp!1847752 e!4071915)))

(declare-fun b!6741314 () Bool)

(declare-fun tp!1848069 () Bool)

(declare-fun tp!1848071 () Bool)

(assert (=> b!6741314 (= e!4071915 (and tp!1848069 tp!1848071))))

(declare-fun b!6741315 () Bool)

(declare-fun tp!1848072 () Bool)

(assert (=> b!6741315 (= e!4071915 tp!1848072)))

(declare-fun b!6741313 () Bool)

(assert (=> b!6741313 (= e!4071915 tp_is_empty!42387)))

(declare-fun b!6741316 () Bool)

(declare-fun tp!1848073 () Bool)

(declare-fun tp!1848070 () Bool)

(assert (=> b!6741316 (= e!4071915 (and tp!1848073 tp!1848070))))

(assert (= (and b!6740236 ((_ is ElementMatch!16567) (regOne!33646 (regOne!33647 r!7292)))) b!6741313))

(assert (= (and b!6740236 ((_ is Concat!25412) (regOne!33646 (regOne!33647 r!7292)))) b!6741314))

(assert (= (and b!6740236 ((_ is Star!16567) (regOne!33646 (regOne!33647 r!7292)))) b!6741315))

(assert (= (and b!6740236 ((_ is Union!16567) (regOne!33646 (regOne!33647 r!7292)))) b!6741316))

(declare-fun e!4071916 () Bool)

(assert (=> b!6740236 (= tp!1847754 e!4071916)))

(declare-fun b!6741318 () Bool)

(declare-fun tp!1848074 () Bool)

(declare-fun tp!1848076 () Bool)

(assert (=> b!6741318 (= e!4071916 (and tp!1848074 tp!1848076))))

(declare-fun b!6741319 () Bool)

(declare-fun tp!1848077 () Bool)

(assert (=> b!6741319 (= e!4071916 tp!1848077)))

(declare-fun b!6741317 () Bool)

(assert (=> b!6741317 (= e!4071916 tp_is_empty!42387)))

(declare-fun b!6741320 () Bool)

(declare-fun tp!1848078 () Bool)

(declare-fun tp!1848075 () Bool)

(assert (=> b!6741320 (= e!4071916 (and tp!1848078 tp!1848075))))

(assert (= (and b!6740236 ((_ is ElementMatch!16567) (regTwo!33646 (regOne!33647 r!7292)))) b!6741317))

(assert (= (and b!6740236 ((_ is Concat!25412) (regTwo!33646 (regOne!33647 r!7292)))) b!6741318))

(assert (= (and b!6740236 ((_ is Star!16567) (regTwo!33646 (regOne!33647 r!7292)))) b!6741319))

(assert (= (and b!6740236 ((_ is Union!16567) (regTwo!33646 (regOne!33647 r!7292)))) b!6741320))

(declare-fun e!4071917 () Bool)

(assert (=> b!6740238 (= tp!1847756 e!4071917)))

(declare-fun b!6741322 () Bool)

(declare-fun tp!1848079 () Bool)

(declare-fun tp!1848081 () Bool)

(assert (=> b!6741322 (= e!4071917 (and tp!1848079 tp!1848081))))

(declare-fun b!6741323 () Bool)

(declare-fun tp!1848082 () Bool)

(assert (=> b!6741323 (= e!4071917 tp!1848082)))

(declare-fun b!6741321 () Bool)

(assert (=> b!6741321 (= e!4071917 tp_is_empty!42387)))

(declare-fun b!6741324 () Bool)

(declare-fun tp!1848083 () Bool)

(declare-fun tp!1848080 () Bool)

(assert (=> b!6741324 (= e!4071917 (and tp!1848083 tp!1848080))))

(assert (= (and b!6740238 ((_ is ElementMatch!16567) (regOne!33647 (regOne!33647 r!7292)))) b!6741321))

(assert (= (and b!6740238 ((_ is Concat!25412) (regOne!33647 (regOne!33647 r!7292)))) b!6741322))

(assert (= (and b!6740238 ((_ is Star!16567) (regOne!33647 (regOne!33647 r!7292)))) b!6741323))

(assert (= (and b!6740238 ((_ is Union!16567) (regOne!33647 (regOne!33647 r!7292)))) b!6741324))

(declare-fun e!4071918 () Bool)

(assert (=> b!6740238 (= tp!1847753 e!4071918)))

(declare-fun b!6741326 () Bool)

(declare-fun tp!1848084 () Bool)

(declare-fun tp!1848086 () Bool)

(assert (=> b!6741326 (= e!4071918 (and tp!1848084 tp!1848086))))

(declare-fun b!6741327 () Bool)

(declare-fun tp!1848087 () Bool)

(assert (=> b!6741327 (= e!4071918 tp!1848087)))

(declare-fun b!6741325 () Bool)

(assert (=> b!6741325 (= e!4071918 tp_is_empty!42387)))

(declare-fun b!6741328 () Bool)

(declare-fun tp!1848088 () Bool)

(declare-fun tp!1848085 () Bool)

(assert (=> b!6741328 (= e!4071918 (and tp!1848088 tp!1848085))))

(assert (= (and b!6740238 ((_ is ElementMatch!16567) (regTwo!33647 (regOne!33647 r!7292)))) b!6741325))

(assert (= (and b!6740238 ((_ is Concat!25412) (regTwo!33647 (regOne!33647 r!7292)))) b!6741326))

(assert (= (and b!6740238 ((_ is Star!16567) (regTwo!33647 (regOne!33647 r!7292)))) b!6741327))

(assert (= (and b!6740238 ((_ is Union!16567) (regTwo!33647 (regOne!33647 r!7292)))) b!6741328))

(declare-fun e!4071919 () Bool)

(assert (=> b!6740222 (= tp!1847737 e!4071919)))

(declare-fun b!6741330 () Bool)

(declare-fun tp!1848089 () Bool)

(declare-fun tp!1848091 () Bool)

(assert (=> b!6741330 (= e!4071919 (and tp!1848089 tp!1848091))))

(declare-fun b!6741331 () Bool)

(declare-fun tp!1848092 () Bool)

(assert (=> b!6741331 (= e!4071919 tp!1848092)))

(declare-fun b!6741329 () Bool)

(assert (=> b!6741329 (= e!4071919 tp_is_empty!42387)))

(declare-fun b!6741332 () Bool)

(declare-fun tp!1848093 () Bool)

(declare-fun tp!1848090 () Bool)

(assert (=> b!6741332 (= e!4071919 (and tp!1848093 tp!1848090))))

(assert (= (and b!6740222 ((_ is ElementMatch!16567) (regOne!33646 (regOne!33646 r!7292)))) b!6741329))

(assert (= (and b!6740222 ((_ is Concat!25412) (regOne!33646 (regOne!33646 r!7292)))) b!6741330))

(assert (= (and b!6740222 ((_ is Star!16567) (regOne!33646 (regOne!33646 r!7292)))) b!6741331))

(assert (= (and b!6740222 ((_ is Union!16567) (regOne!33646 (regOne!33646 r!7292)))) b!6741332))

(declare-fun e!4071920 () Bool)

(assert (=> b!6740222 (= tp!1847739 e!4071920)))

(declare-fun b!6741334 () Bool)

(declare-fun tp!1848094 () Bool)

(declare-fun tp!1848096 () Bool)

(assert (=> b!6741334 (= e!4071920 (and tp!1848094 tp!1848096))))

(declare-fun b!6741335 () Bool)

(declare-fun tp!1848097 () Bool)

(assert (=> b!6741335 (= e!4071920 tp!1848097)))

(declare-fun b!6741333 () Bool)

(assert (=> b!6741333 (= e!4071920 tp_is_empty!42387)))

(declare-fun b!6741336 () Bool)

(declare-fun tp!1848098 () Bool)

(declare-fun tp!1848095 () Bool)

(assert (=> b!6741336 (= e!4071920 (and tp!1848098 tp!1848095))))

(assert (= (and b!6740222 ((_ is ElementMatch!16567) (regTwo!33646 (regOne!33646 r!7292)))) b!6741333))

(assert (= (and b!6740222 ((_ is Concat!25412) (regTwo!33646 (regOne!33646 r!7292)))) b!6741334))

(assert (= (and b!6740222 ((_ is Star!16567) (regTwo!33646 (regOne!33646 r!7292)))) b!6741335))

(assert (= (and b!6740222 ((_ is Union!16567) (regTwo!33646 (regOne!33646 r!7292)))) b!6741336))

(declare-fun e!4071921 () Bool)

(assert (=> b!6740206 (= tp!1847720 e!4071921)))

(declare-fun b!6741338 () Bool)

(declare-fun tp!1848099 () Bool)

(declare-fun tp!1848101 () Bool)

(assert (=> b!6741338 (= e!4071921 (and tp!1848099 tp!1848101))))

(declare-fun b!6741339 () Bool)

(declare-fun tp!1848102 () Bool)

(assert (=> b!6741339 (= e!4071921 tp!1848102)))

(declare-fun b!6741337 () Bool)

(assert (=> b!6741337 (= e!4071921 tp_is_empty!42387)))

(declare-fun b!6741340 () Bool)

(declare-fun tp!1848103 () Bool)

(declare-fun tp!1848100 () Bool)

(assert (=> b!6741340 (= e!4071921 (and tp!1848103 tp!1848100))))

(assert (= (and b!6740206 ((_ is ElementMatch!16567) (h!72324 (exprs!6451 setElem!46011)))) b!6741337))

(assert (= (and b!6740206 ((_ is Concat!25412) (h!72324 (exprs!6451 setElem!46011)))) b!6741338))

(assert (= (and b!6740206 ((_ is Star!16567) (h!72324 (exprs!6451 setElem!46011)))) b!6741339))

(assert (= (and b!6740206 ((_ is Union!16567) (h!72324 (exprs!6451 setElem!46011)))) b!6741340))

(declare-fun b!6741341 () Bool)

(declare-fun e!4071922 () Bool)

(declare-fun tp!1848104 () Bool)

(declare-fun tp!1848105 () Bool)

(assert (=> b!6741341 (= e!4071922 (and tp!1848104 tp!1848105))))

(assert (=> b!6740206 (= tp!1847721 e!4071922)))

(assert (= (and b!6740206 ((_ is Cons!65876) (t!379697 (exprs!6451 setElem!46011)))) b!6741341))

(declare-fun b_lambda!253879 () Bool)

(assert (= b_lambda!253865 (or b!6739499 b_lambda!253879)))

(assert (=> d!2117993 d!2117683))

(declare-fun b_lambda!253881 () Bool)

(assert (= b_lambda!253871 (or b!6739499 b_lambda!253881)))

(assert (=> d!2118067 d!2117681))

(declare-fun b_lambda!253883 () Bool)

(assert (= b_lambda!253877 (or b!6739499 b_lambda!253883)))

(assert (=> d!2118109 d!2117677))

(declare-fun b_lambda!253885 () Bool)

(assert (= b_lambda!253869 (or d!2117603 b_lambda!253885)))

(declare-fun bs!1792508 () Bool)

(declare-fun d!2118149 () Bool)

(assert (= bs!1792508 (and d!2118149 d!2117603)))

(assert (=> bs!1792508 (= (dynLambda!26286 lambda!378615 (h!72324 (exprs!6451 setElem!46011))) (validRegex!8303 (h!72324 (exprs!6451 setElem!46011))))))

(declare-fun m!7497818 () Bool)

(assert (=> bs!1792508 m!7497818))

(assert (=> b!6741052 d!2118149))

(declare-fun b_lambda!253887 () Bool)

(assert (= b_lambda!253867 (or d!2117605 b_lambda!253887)))

(declare-fun bs!1792509 () Bool)

(declare-fun d!2118151 () Bool)

(assert (= bs!1792509 (and d!2118151 d!2117605)))

(assert (=> bs!1792509 (= (dynLambda!26286 lambda!378616 (h!72324 (exprs!6451 (h!72325 zl!343)))) (validRegex!8303 (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(declare-fun m!7497820 () Bool)

(assert (=> bs!1792509 m!7497820))

(assert (=> b!6741050 d!2118151))

(declare-fun b_lambda!253889 () Bool)

(assert (= b_lambda!253873 (or d!2117607 b_lambda!253889)))

(declare-fun bs!1792510 () Bool)

(declare-fun d!2118153 () Bool)

(assert (= bs!1792510 (and d!2118153 d!2117607)))

(assert (=> bs!1792510 (= (dynLambda!26286 lambda!378623 (h!72324 (unfocusZipperList!1988 zl!343))) (validRegex!8303 (h!72324 (unfocusZipperList!1988 zl!343))))))

(declare-fun m!7497822 () Bool)

(assert (=> bs!1792510 m!7497822))

(assert (=> b!6741063 d!2118153))

(declare-fun b_lambda!253891 () Bool)

(assert (= b_lambda!253861 (or d!2117619 b_lambda!253891)))

(declare-fun bs!1792511 () Bool)

(declare-fun d!2118155 () Bool)

(assert (= bs!1792511 (and d!2118155 d!2117619)))

(assert (=> bs!1792511 (= (dynLambda!26286 lambda!378626 (h!72324 lt!2438997)) (validRegex!8303 (h!72324 lt!2438997)))))

(declare-fun m!7497824 () Bool)

(assert (=> bs!1792511 m!7497824))

(assert (=> b!6740891 d!2118155))

(declare-fun b_lambda!253893 () Bool)

(assert (= b_lambda!253859 (or d!2117599 b_lambda!253893)))

(declare-fun bs!1792512 () Bool)

(declare-fun d!2118157 () Bool)

(assert (= bs!1792512 (and d!2118157 d!2117599)))

(assert (=> bs!1792512 (= (dynLambda!26286 lambda!378614 (h!72324 (exprs!6451 lt!2438907))) (validRegex!8303 (h!72324 (exprs!6451 lt!2438907))))))

(declare-fun m!7497826 () Bool)

(assert (=> bs!1792512 m!7497826))

(assert (=> b!6740887 d!2118157))

(declare-fun b_lambda!253895 () Bool)

(assert (= b_lambda!253875 (or d!2117587 b_lambda!253895)))

(declare-fun bs!1792513 () Bool)

(declare-fun d!2118159 () Bool)

(assert (= bs!1792513 (and d!2118159 d!2117587)))

(assert (=> bs!1792513 (= (dynLambda!26286 lambda!378610 (h!72324 (exprs!6451 (h!72325 zl!343)))) (validRegex!8303 (h!72324 (exprs!6451 (h!72325 zl!343)))))))

(assert (=> bs!1792513 m!7497820))

(assert (=> b!6741096 d!2118159))

(declare-fun b_lambda!253897 () Bool)

(assert (= b_lambda!253863 (or b!6739499 b_lambda!253897)))

(assert (=> d!2117981 d!2117679))

(check-sat (not d!2118125) (not b!6740980) (not bm!609339) (not b!6741255) (not bm!609431) (not b!6741236) (not b!6741105) (not b!6741256) (not d!2117979) (not b_lambda!253813) (not b!6741262) (not b!6741272) (not b!6741334) (not bm!609359) (not d!2118055) (not b!6740812) (not b_lambda!253891) (not b!6741286) (not bm!609368) (not b!6741053) (not b!6741036) (not b!6740978) (not b!6741239) (not b!6741057) (not d!2117957) (not b!6740815) (not b!6741245) (not d!2118103) (not b!6741282) (not b!6741108) (not bm!609341) (not b!6741280) (not d!2118051) (not b!6740984) (not bm!609419) (not bm!609356) (not b!6740827) (not b!6741273) (not d!2118039) (not b_lambda!253889) (not bm!609396) (not d!2117949) (not b!6741227) (not bm!609347) (not bs!1792512) (not d!2117969) (not b!6741328) (not b!6741275) (not d!2117953) (not b!6741110) (not b!6741297) (not d!2117911) (not b!6740937) (not d!2118031) (not bm!609424) (not b!6741303) (not b!6741288) (not bm!609421) (not b!6740950) (not b!6741270) (not b!6741069) (not d!2118011) (not d!2118127) (not bm!609349) (not b!6741222) (not b!6741268) (not b_lambda!253811) (not bm!609394) (not b!6741078) (not bm!609357) (not b!6741247) (not d!2117983) (not b!6740852) (not bm!609361) (not b!6741035) (not b!6741340) (not b_lambda!253897) (not b!6740892) (not bm!609343) (not b!6741296) (not bm!609383) (not d!2118005) (not b!6740959) (not b!6740818) (not b!6740821) (not d!2118045) (not b!6741315) (not b!6741066) (not b!6740895) (not b!6741244) (not bm!609373) (not b!6741243) (not b!6741029) (not b!6741111) (not b!6741311) (not b!6740940) (not bm!609365) (not b!6741046) (not b!6740905) (not b_lambda!253815) (not b!6741335) (not b!6741048) (not b!6741225) (not b!6741071) (not bm!609416) (not d!2118121) tp_is_empty!42387 (not b!6740943) (not b!6741266) (not b!6740946) (not b!6741128) (not b!6741292) (not d!2118079) (not b!6741228) (not bm!609393) (not d!2118109) (not bm!609417) (not b!6740911) (not b!6741191) (not bm!609427) (not b_lambda!253883) (not b!6740908) (not b!6741138) (not b!6741318) (not b!6741176) (not b!6741049) (not b!6741323) (not d!2118111) (not d!2118029) (not d!2117981) (not b_lambda!253895) (not bm!609402) (not b!6741208) (not b_lambda!253881) (not b!6741316) (not bs!1792509) (not d!2118143) (not b!6741240) (not b!6741032) (not b!6741047) (not b!6741232) (not b!6741324) (not bm!609425) (not b!6741072) (not b!6741322) (not bm!609381) (not b_lambda!253879) (not b!6741090) (not bm!609385) (not bm!609379) (not b!6741305) (not b!6740889) (not b!6741287) (not b!6740967) (not b!6741229) (not d!2118041) (not d!2118091) (not b!6741201) (not b!6741326) (not b!6741187) (not b!6741327) (not d!2118061) (not b!6741338) (not b!6741291) (not b!6741259) (not b!6741139) (not b!6740871) (not b!6741173) (not b!6740856) (not b!6741140) (not b!6741097) (not b!6740958) (not b!6741135) (not b!6740966) (not b!6741264) (not b!6740986) (not d!2118025) (not d!2118019) (not d!2118015) (not b_lambda!253893) (not bm!609337) (not b!6741260) (not bm!609404) (not b!6740947) (not d!2118101) (not bs!1792513) (not setNonEmpty!46028) (not b!6741209) (not b!6741180) (not b!6741269) (not b!6741249) (not bs!1792511) (not bm!609418) (not bm!609334) (not b!6741279) (not b!6741114) (not d!2117913) (not b!6741298) (not b!6741276) (not b!6741252) (not b!6741237) (not d!2117987) (not d!2118067) (not b!6740806) (not bm!609345) (not b!6741336) (not d!2118007) (not d!2118083) (not b!6740882) (not b!6741199) (not d!2118009) (not b!6741109) (not bm!609422) (not d!2118071) (not bm!609354) (not bm!609390) (not b!6741319) (not bm!609400) (not b!6741212) (not b!6741141) (not b!6741248) (not d!2117993) (not bm!609377) (not bm!609413) (not b!6741341) (not b!6741302) (not bs!1792508) (not b!6740981) (not b!6741253) (not d!2117991) (not b!6741261) (not b!6741124) (not b_lambda!253817) (not b!6741043) (not b!6740987) (not b!6741013) (not bm!609366) (not bm!609429) (not d!2118115) (not b!6741235) (not bm!609392) (not b!6741320) (not b!6740923) (not b!6740953) (not b!6740938) (not bm!609403) (not b!6741022) (not b!6741098) (not setNonEmpty!46031) (not b!6741312) (not bs!1792510) (not b!6741033) (not b!6740913) (not b!6741300) (not b!6741265) (not b!6740817) (not b!6740968) (not b_lambda!253887) (not bm!609363) (not b!6740948) (not b!6740934) (not b!6741301) (not b!6740872) (not b!6741339) (not b!6741074) (not b!6740920) (not b!6741163) (not bm!609382) (not b!6741314) (not b!6741051) (not d!2118093) (not d!2118059) (not bm!609333) (not d!2117955) (not setNonEmpty!46027) (not b!6741274) (not b!6740983) (not b!6741332) (not b!6741186) (not b!6741034) (not b!6740933) (not b!6741068) (not b!6740988) (not bm!609398) (not b!6741231) (not b!6740820) (not bm!609371) (not b!6741257) (not d!2117963) (not b!6741283) (not b!6740814) (not b!6741075) (not d!2117943) (not b!6741308) (not b!6741290) (not d!2118113) (not bm!609348) (not b!6741233) (not b!6741064) (not d!2118037) (not b!6741284) (not b!6741278) (not d!2118049) (not bm!609384) (not b!6741307) (not b!6741241) (not b!6741127) (not b!6741310) (not b!6741002) (not b!6741065) (not bm!609388) (not bm!609432) (not setNonEmpty!46029) (not d!2117989) (not b!6740841) (not bm!609367) (not bm!609358) (not b!6741294) (not d!2117929) (not b_lambda!253885) (not bm!609375) (not b!6741251) (not b!6740945) (not b!6741331) (not b!6741293) (not setNonEmpty!46030) (not b!6741306) (not b!6740888) (not b!6741330) (not b!6740972) (not bm!609352) (not b!6740830))
(check-sat)
