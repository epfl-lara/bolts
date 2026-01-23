; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!655776 () Bool)

(assert start!655776)

(declare-fun b!6770867 () Bool)

(assert (=> b!6770867 true))

(assert (=> b!6770867 true))

(declare-fun lambda!381023 () Int)

(declare-fun lambda!381022 () Int)

(assert (=> b!6770867 (not (= lambda!381023 lambda!381022))))

(assert (=> b!6770867 true))

(assert (=> b!6770867 true))

(declare-fun lambda!381024 () Int)

(assert (=> b!6770867 (not (= lambda!381024 lambda!381022))))

(assert (=> b!6770867 (not (= lambda!381024 lambda!381023))))

(assert (=> b!6770867 true))

(assert (=> b!6770867 true))

(declare-fun b!6770851 () Bool)

(assert (=> b!6770851 true))

(declare-fun b!6770848 () Bool)

(declare-fun e!4087935 () Bool)

(declare-fun e!4087934 () Bool)

(assert (=> b!6770848 (= e!4087935 e!4087934)))

(declare-fun res!2768417 () Bool)

(assert (=> b!6770848 (=> res!2768417 e!4087934)))

(declare-datatypes ((C!33464 0))(
  ( (C!33465 (val!26434 Int)) )
))
(declare-datatypes ((Regex!16597 0))(
  ( (ElementMatch!16597 (c!1257293 C!33464)) (Concat!25442 (regOne!33706 Regex!16597) (regTwo!33706 Regex!16597)) (EmptyExpr!16597) (Star!16597 (reg!16926 Regex!16597)) (EmptyLang!16597) (Union!16597 (regOne!33707 Regex!16597) (regTwo!33707 Regex!16597)) )
))
(declare-fun r!7292 () Regex!16597)

(declare-fun validRegex!8333 (Regex!16597) Bool)

(assert (=> b!6770848 (= res!2768417 (not (validRegex!8333 r!7292)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!66090 0))(
  ( (Nil!65966) (Cons!65966 (h!72414 Regex!16597) (t!379801 List!66090)) )
))
(declare-datatypes ((Context!11962 0))(
  ( (Context!11963 (exprs!6481 List!66090)) )
))
(declare-fun lt!2443593 () (InoxSet Context!11962))

(declare-datatypes ((List!66091 0))(
  ( (Nil!65967) (Cons!65967 (h!72415 C!33464) (t!379802 List!66091)) )
))
(declare-datatypes ((tuple2!67144 0))(
  ( (tuple2!67145 (_1!36875 List!66091) (_2!36875 List!66091)) )
))
(declare-fun lt!2443576 () tuple2!67144)

(declare-fun matchZipper!2583 ((InoxSet Context!11962) List!66091) Bool)

(assert (=> b!6770848 (matchZipper!2583 lt!2443593 (_1!36875 lt!2443576))))

(declare-datatypes ((Unit!159885 0))(
  ( (Unit!159886) )
))
(declare-fun lt!2443568 () Unit!159885)

(declare-datatypes ((List!66092 0))(
  ( (Nil!65968) (Cons!65968 (h!72416 Context!11962) (t!379803 List!66092)) )
))
(declare-fun lt!2443575 () List!66092)

(declare-fun theoremZipperRegexEquiv!927 ((InoxSet Context!11962) List!66092 Regex!16597 List!66091) Unit!159885)

(assert (=> b!6770848 (= lt!2443568 (theoremZipperRegexEquiv!927 lt!2443593 lt!2443575 (reg!16926 r!7292) (_1!36875 lt!2443576)))))

(declare-fun b!6770849 () Bool)

(declare-fun e!4087939 () Bool)

(declare-fun tp!1855247 () Bool)

(assert (=> b!6770849 (= e!4087939 tp!1855247)))

(declare-fun b!6770850 () Bool)

(declare-fun e!4087932 () Bool)

(declare-fun e!4087936 () Bool)

(assert (=> b!6770850 (= e!4087932 e!4087936)))

(declare-fun res!2768421 () Bool)

(assert (=> b!6770850 (=> res!2768421 e!4087936)))

(declare-fun s!2326 () List!66091)

(declare-fun lt!2443574 () (InoxSet Context!11962))

(declare-fun lt!2443585 () Context!11962)

(declare-fun derivationStepZipperDown!1825 (Regex!16597 Context!11962 C!33464) (InoxSet Context!11962))

(assert (=> b!6770850 (= res!2768421 (not (= lt!2443574 (derivationStepZipperDown!1825 (reg!16926 r!7292) lt!2443585 (h!72415 s!2326)))))))

(declare-fun lt!2443571 () List!66090)

(assert (=> b!6770850 (= lt!2443585 (Context!11963 lt!2443571))))

(declare-fun lt!2443573 () (InoxSet Context!11962))

(declare-fun lambda!381025 () Int)

(declare-fun lt!2443595 () Context!11962)

(declare-fun flatMap!2078 ((InoxSet Context!11962) Int) (InoxSet Context!11962))

(declare-fun derivationStepZipperUp!1751 (Context!11962 C!33464) (InoxSet Context!11962))

(assert (=> b!6770850 (= (flatMap!2078 lt!2443573 lambda!381025) (derivationStepZipperUp!1751 lt!2443595 (h!72415 s!2326)))))

(declare-fun lt!2443594 () Unit!159885)

(declare-fun lemmaFlatMapOnSingletonSet!1604 ((InoxSet Context!11962) Context!11962 Int) Unit!159885)

(assert (=> b!6770850 (= lt!2443594 (lemmaFlatMapOnSingletonSet!1604 lt!2443573 lt!2443595 lambda!381025))))

(declare-fun lt!2443581 () (InoxSet Context!11962))

(assert (=> b!6770850 (= lt!2443581 (derivationStepZipperUp!1751 lt!2443595 (h!72415 s!2326)))))

(assert (=> b!6770850 (= lt!2443573 (store ((as const (Array Context!11962 Bool)) false) lt!2443595 true))))

(assert (=> b!6770850 (= lt!2443595 (Context!11963 (Cons!65966 (reg!16926 r!7292) lt!2443571)))))

(assert (=> b!6770850 (= lt!2443571 (Cons!65966 r!7292 Nil!65966))))

(declare-fun setIsEmpty!46303 () Bool)

(declare-fun setRes!46303 () Bool)

(assert (=> setIsEmpty!46303 setRes!46303))

(declare-fun e!4087940 () Bool)

(assert (=> b!6770851 (= e!4087940 e!4087932)))

(declare-fun res!2768427 () Bool)

(assert (=> b!6770851 (=> res!2768427 e!4087932)))

(declare-fun lt!2443578 () (InoxSet Context!11962))

(assert (=> b!6770851 (= res!2768427 (not (= lt!2443574 lt!2443578)))))

(declare-fun z!1189 () (InoxSet Context!11962))

(declare-fun zl!343 () List!66092)

(assert (=> b!6770851 (= (flatMap!2078 z!1189 lambda!381025) (derivationStepZipperUp!1751 (h!72416 zl!343) (h!72415 s!2326)))))

(declare-fun lt!2443572 () Unit!159885)

(assert (=> b!6770851 (= lt!2443572 (lemmaFlatMapOnSingletonSet!1604 z!1189 (h!72416 zl!343) lambda!381025))))

(declare-fun b!6770852 () Bool)

(declare-fun e!4087931 () Bool)

(declare-fun lt!2443584 () Bool)

(declare-fun Exists!3665 (Int) Bool)

(assert (=> b!6770852 (= e!4087931 (= lt!2443584 (Exists!3665 lambda!381022)))))

(declare-fun b!6770853 () Bool)

(declare-fun res!2768440 () Bool)

(declare-fun e!4087924 () Bool)

(assert (=> b!6770853 (=> (not res!2768440) (not e!4087924))))

(declare-fun toList!10381 ((InoxSet Context!11962)) List!66092)

(assert (=> b!6770853 (= res!2768440 (= (toList!10381 z!1189) zl!343))))

(declare-fun b!6770854 () Bool)

(declare-fun res!2768435 () Bool)

(declare-fun e!4087922 () Bool)

(assert (=> b!6770854 (=> res!2768435 e!4087922)))

(declare-fun generalisedUnion!2441 (List!66090) Regex!16597)

(declare-fun unfocusZipperList!2018 (List!66092) List!66090)

(assert (=> b!6770854 (= res!2768435 (not (= r!7292 (generalisedUnion!2441 (unfocusZipperList!2018 zl!343)))))))

(declare-fun e!4087920 () Bool)

(declare-fun e!4087938 () Bool)

(declare-fun b!6770855 () Bool)

(declare-fun tp!1855246 () Bool)

(declare-fun inv!84739 (Context!11962) Bool)

(assert (=> b!6770855 (= e!4087938 (and (inv!84739 (h!72416 zl!343)) e!4087920 tp!1855246))))

(declare-fun b!6770856 () Bool)

(declare-fun e!4087942 () Bool)

(declare-fun e!4087925 () Bool)

(assert (=> b!6770856 (= e!4087942 e!4087925)))

(declare-fun res!2768436 () Bool)

(assert (=> b!6770856 (=> res!2768436 e!4087925)))

(declare-fun lt!2443577 () (InoxSet Context!11962))

(declare-fun derivationStepZipper!2541 ((InoxSet Context!11962) C!33464) (InoxSet Context!11962))

(assert (=> b!6770856 (= res!2768436 (not (= lt!2443574 (derivationStepZipper!2541 lt!2443577 (h!72415 s!2326)))))))

(assert (=> b!6770856 (= (flatMap!2078 lt!2443577 lambda!381025) (derivationStepZipperUp!1751 lt!2443585 (h!72415 s!2326)))))

(declare-fun lt!2443570 () Unit!159885)

(assert (=> b!6770856 (= lt!2443570 (lemmaFlatMapOnSingletonSet!1604 lt!2443577 lt!2443585 lambda!381025))))

(declare-fun lt!2443579 () Context!11962)

(assert (=> b!6770856 (= (flatMap!2078 lt!2443593 lambda!381025) (derivationStepZipperUp!1751 lt!2443579 (h!72415 s!2326)))))

(declare-fun lt!2443582 () Unit!159885)

(assert (=> b!6770856 (= lt!2443582 (lemmaFlatMapOnSingletonSet!1604 lt!2443593 lt!2443579 lambda!381025))))

(declare-fun lt!2443600 () (InoxSet Context!11962))

(assert (=> b!6770856 (= lt!2443600 (derivationStepZipperUp!1751 lt!2443585 (h!72415 s!2326)))))

(declare-fun lt!2443598 () (InoxSet Context!11962))

(assert (=> b!6770856 (= lt!2443598 (derivationStepZipperUp!1751 lt!2443579 (h!72415 s!2326)))))

(assert (=> b!6770856 (= lt!2443577 (store ((as const (Array Context!11962 Bool)) false) lt!2443585 true))))

(assert (=> b!6770856 (= lt!2443593 (store ((as const (Array Context!11962 Bool)) false) lt!2443579 true))))

(assert (=> b!6770856 (= lt!2443579 (Context!11963 (Cons!65966 (reg!16926 r!7292) Nil!65966)))))

(declare-fun b!6770857 () Bool)

(declare-fun tp!1855244 () Bool)

(assert (=> b!6770857 (= e!4087920 tp!1855244)))

(declare-fun b!6770858 () Bool)

(declare-fun res!2768411 () Bool)

(assert (=> b!6770858 (=> res!2768411 e!4087936)))

(assert (=> b!6770858 (= res!2768411 (not (= (matchZipper!2583 lt!2443573 s!2326) (matchZipper!2583 (derivationStepZipper!2541 lt!2443573 (h!72415 s!2326)) (t!379802 s!2326)))))))

(declare-fun b!6770859 () Bool)

(declare-fun res!2768426 () Bool)

(assert (=> b!6770859 (=> res!2768426 e!4087936)))

(declare-fun lt!2443599 () Regex!16597)

(assert (=> b!6770859 (= res!2768426 (or (not (= lt!2443599 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6770860 () Bool)

(declare-fun res!2768431 () Bool)

(assert (=> b!6770860 (=> res!2768431 e!4087935)))

(declare-fun matchR!8780 (Regex!16597 List!66091) Bool)

(assert (=> b!6770860 (= res!2768431 (not (matchR!8780 (reg!16926 r!7292) (_1!36875 lt!2443576))))))

(declare-fun b!6770861 () Bool)

(declare-fun e!4087933 () Bool)

(assert (=> b!6770861 (= e!4087925 e!4087933)))

(declare-fun res!2768437 () Bool)

(assert (=> b!6770861 (=> res!2768437 e!4087933)))

(declare-fun unfocusZipper!2339 (List!66092) Regex!16597)

(assert (=> b!6770861 (= res!2768437 (not (= (unfocusZipper!2339 lt!2443575) (reg!16926 r!7292))))))

(assert (=> b!6770861 (= lt!2443575 (Cons!65968 lt!2443579 Nil!65968))))

(declare-fun b!6770862 () Bool)

(declare-fun e!4087928 () Bool)

(declare-fun tp!1855248 () Bool)

(assert (=> b!6770862 (= e!4087928 tp!1855248)))

(declare-fun b!6770863 () Bool)

(declare-fun e!4087926 () Bool)

(declare-fun e!4087937 () Bool)

(assert (=> b!6770863 (= e!4087926 e!4087937)))

(declare-fun res!2768419 () Bool)

(assert (=> b!6770863 (=> res!2768419 e!4087937)))

(declare-fun lt!2443569 () Bool)

(assert (=> b!6770863 (= res!2768419 (not lt!2443569))))

(declare-fun b!6770864 () Bool)

(declare-fun e!4087921 () Bool)

(assert (=> b!6770864 (= e!4087921 e!4087940)))

(declare-fun res!2768416 () Bool)

(assert (=> b!6770864 (=> res!2768416 e!4087940)))

(declare-fun lt!2443590 () (InoxSet Context!11962))

(assert (=> b!6770864 (= res!2768416 (not (= lt!2443590 lt!2443578)))))

(assert (=> b!6770864 (= lt!2443578 (derivationStepZipperDown!1825 r!7292 (Context!11963 Nil!65966) (h!72415 s!2326)))))

(assert (=> b!6770864 (= lt!2443590 (derivationStepZipperUp!1751 (Context!11963 (Cons!65966 r!7292 Nil!65966)) (h!72415 s!2326)))))

(assert (=> b!6770864 (= lt!2443574 (derivationStepZipper!2541 z!1189 (h!72415 s!2326)))))

(declare-fun b!6770865 () Bool)

(declare-fun tp!1855245 () Bool)

(declare-fun tp!1855253 () Bool)

(assert (=> b!6770865 (= e!4087939 (and tp!1855245 tp!1855253))))

(declare-fun b!6770866 () Bool)

(assert (=> b!6770866 (= e!4087936 e!4087942)))

(declare-fun res!2768413 () Bool)

(assert (=> b!6770866 (=> res!2768413 e!4087942)))

(declare-fun lt!2443583 () Regex!16597)

(assert (=> b!6770866 (= res!2768413 (not (= (unfocusZipper!2339 (Cons!65968 lt!2443595 Nil!65968)) lt!2443583)))))

(assert (=> b!6770866 (= lt!2443583 (Concat!25442 (reg!16926 r!7292) r!7292))))

(assert (=> b!6770867 (= e!4087922 e!4087921)))

(declare-fun res!2768434 () Bool)

(assert (=> b!6770867 (=> res!2768434 e!4087921)))

(declare-fun lt!2443589 () Bool)

(declare-fun e!4087927 () Bool)

(assert (=> b!6770867 (= res!2768434 (not (= lt!2443589 e!4087927)))))

(declare-fun res!2768428 () Bool)

(assert (=> b!6770867 (=> res!2768428 e!4087927)))

(declare-fun isEmpty!38325 (List!66091) Bool)

(assert (=> b!6770867 (= res!2768428 (isEmpty!38325 s!2326))))

(assert (=> b!6770867 (= (Exists!3665 lambda!381022) (Exists!3665 lambda!381024))))

(declare-fun lt!2443588 () Unit!159885)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2192 (Regex!16597 Regex!16597 List!66091) Unit!159885)

(assert (=> b!6770867 (= lt!2443588 (lemmaExistCutMatchRandMatchRSpecEquivalent!2192 (reg!16926 r!7292) r!7292 s!2326))))

(assert (=> b!6770867 (= (Exists!3665 lambda!381022) (Exists!3665 lambda!381023))))

(declare-fun lt!2443591 () Unit!159885)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!756 (Regex!16597 List!66091) Unit!159885)

(assert (=> b!6770867 (= lt!2443591 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!756 (reg!16926 r!7292) s!2326))))

(assert (=> b!6770867 (= lt!2443584 (Exists!3665 lambda!381022))))

(declare-datatypes ((Option!16484 0))(
  ( (None!16483) (Some!16483 (v!52687 tuple2!67144)) )
))
(declare-fun lt!2443597 () Option!16484)

(declare-fun isDefined!13187 (Option!16484) Bool)

(assert (=> b!6770867 (= lt!2443584 (isDefined!13187 lt!2443597))))

(declare-fun findConcatSeparation!2898 (Regex!16597 Regex!16597 List!66091 List!66091 List!66091) Option!16484)

(assert (=> b!6770867 (= lt!2443597 (findConcatSeparation!2898 (reg!16926 r!7292) r!7292 Nil!65967 s!2326 s!2326))))

(declare-fun lt!2443592 () Unit!159885)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2662 (Regex!16597 Regex!16597 List!66091) Unit!159885)

(assert (=> b!6770867 (= lt!2443592 (lemmaFindConcatSeparationEquivalentToExists!2662 (reg!16926 r!7292) r!7292 s!2326))))

(declare-fun b!6770868 () Bool)

(declare-fun tp_is_empty!42447 () Bool)

(assert (=> b!6770868 (= e!4087939 tp_is_empty!42447)))

(declare-fun b!6770869 () Bool)

(declare-fun e!4087941 () Bool)

(assert (=> b!6770869 (= e!4087933 e!4087941)))

(declare-fun res!2768424 () Bool)

(assert (=> b!6770869 (=> res!2768424 e!4087941)))

(declare-fun lt!2443586 () Regex!16597)

(assert (=> b!6770869 (= res!2768424 (not (= lt!2443586 r!7292)))))

(declare-fun lt!2443596 () List!66092)

(assert (=> b!6770869 (= lt!2443586 (unfocusZipper!2339 lt!2443596))))

(assert (=> b!6770869 (= lt!2443596 (Cons!65968 lt!2443585 Nil!65968))))

(declare-fun b!6770870 () Bool)

(declare-fun e!4087923 () Bool)

(assert (=> b!6770870 (= e!4087923 e!4087935)))

(declare-fun res!2768412 () Bool)

(assert (=> b!6770870 (=> res!2768412 e!4087935)))

(declare-fun ++!14751 (List!66091 List!66091) List!66091)

(assert (=> b!6770870 (= res!2768412 (not (= s!2326 (++!14751 (_1!36875 lt!2443576) (_2!36875 lt!2443576)))))))

(declare-fun get!22965 (Option!16484) tuple2!67144)

(assert (=> b!6770870 (= lt!2443576 (get!22965 lt!2443597))))

(declare-fun b!6770871 () Bool)

(assert (=> b!6770871 (= e!4087934 (= r!7292 lt!2443586))))

(declare-fun b!6770872 () Bool)

(declare-fun res!2768425 () Bool)

(assert (=> b!6770872 (=> res!2768425 e!4087934)))

(assert (=> b!6770872 (= res!2768425 (not (= (toList!10381 lt!2443577) lt!2443596)))))

(declare-fun b!6770873 () Bool)

(declare-fun e!4087930 () Bool)

(declare-fun tp!1855251 () Bool)

(assert (=> b!6770873 (= e!4087930 (and tp_is_empty!42447 tp!1855251))))

(declare-fun b!6770874 () Bool)

(declare-fun res!2768418 () Bool)

(assert (=> b!6770874 (=> res!2768418 e!4087921)))

(get-info :version)

(assert (=> b!6770874 (= res!2768418 ((_ is Nil!65967) s!2326))))

(declare-fun b!6770875 () Bool)

(assert (=> b!6770875 (= e!4087941 e!4087923)))

(declare-fun res!2768423 () Bool)

(assert (=> b!6770875 (=> res!2768423 e!4087923)))

(assert (=> b!6770875 (= res!2768423 (not lt!2443569))))

(assert (=> b!6770875 e!4087926))

(declare-fun res!2768429 () Bool)

(assert (=> b!6770875 (=> (not res!2768429) (not e!4087926))))

(declare-fun matchRSpec!3698 (Regex!16597 List!66091) Bool)

(assert (=> b!6770875 (= res!2768429 (= lt!2443569 (matchRSpec!3698 lt!2443583 s!2326)))))

(assert (=> b!6770875 (= lt!2443569 (matchR!8780 lt!2443583 s!2326))))

(declare-fun lt!2443580 () Unit!159885)

(declare-fun mainMatchTheorem!3698 (Regex!16597 List!66091) Unit!159885)

(assert (=> b!6770875 (= lt!2443580 (mainMatchTheorem!3698 lt!2443583 s!2326))))

(declare-fun b!6770876 () Bool)

(declare-fun res!2768438 () Bool)

(assert (=> b!6770876 (=> res!2768438 e!4087935)))

(assert (=> b!6770876 (= res!2768438 (not (matchR!8780 r!7292 (_2!36875 lt!2443576))))))

(declare-fun b!6770877 () Bool)

(declare-fun res!2768422 () Bool)

(assert (=> b!6770877 (=> res!2768422 e!4087922)))

(declare-fun generalisedConcat!2194 (List!66090) Regex!16597)

(assert (=> b!6770877 (= res!2768422 (not (= r!7292 (generalisedConcat!2194 (exprs!6481 (h!72416 zl!343))))))))

(declare-fun b!6770878 () Bool)

(assert (=> b!6770878 (= e!4087937 e!4087931)))

(declare-fun res!2768439 () Bool)

(assert (=> b!6770878 (=> (not res!2768439) (not e!4087931))))

(assert (=> b!6770878 (= res!2768439 (= (Exists!3665 lambda!381022) (Exists!3665 lambda!381023)))))

(declare-fun b!6770879 () Bool)

(declare-fun res!2768432 () Bool)

(assert (=> b!6770879 (=> res!2768432 e!4087922)))

(assert (=> b!6770879 (= res!2768432 (not ((_ is Cons!65966) (exprs!6481 (h!72416 zl!343)))))))

(declare-fun b!6770880 () Bool)

(declare-fun res!2768414 () Bool)

(assert (=> b!6770880 (=> res!2768414 e!4087922)))

(declare-fun isEmpty!38326 (List!66092) Bool)

(assert (=> b!6770880 (= res!2768414 (not (isEmpty!38326 (t!379803 zl!343))))))

(declare-fun b!6770881 () Bool)

(declare-fun e!4087929 () Bool)

(assert (=> b!6770881 (= e!4087924 e!4087929)))

(declare-fun res!2768433 () Bool)

(assert (=> b!6770881 (=> (not res!2768433) (not e!4087929))))

(assert (=> b!6770881 (= res!2768433 (= r!7292 lt!2443599))))

(assert (=> b!6770881 (= lt!2443599 (unfocusZipper!2339 zl!343))))

(declare-fun b!6770882 () Bool)

(declare-fun res!2768420 () Bool)

(assert (=> b!6770882 (=> res!2768420 e!4087922)))

(assert (=> b!6770882 (= res!2768420 (or ((_ is EmptyExpr!16597) r!7292) ((_ is EmptyLang!16597) r!7292) ((_ is ElementMatch!16597) r!7292) ((_ is Union!16597) r!7292) ((_ is Concat!25442) r!7292)))))

(declare-fun b!6770883 () Bool)

(assert (=> b!6770883 (= e!4087929 (not e!4087922))))

(declare-fun res!2768415 () Bool)

(assert (=> b!6770883 (=> res!2768415 e!4087922)))

(assert (=> b!6770883 (= res!2768415 (not ((_ is Cons!65968) zl!343)))))

(assert (=> b!6770883 (= lt!2443589 (matchRSpec!3698 r!7292 s!2326))))

(assert (=> b!6770883 (= lt!2443589 (matchR!8780 r!7292 s!2326))))

(declare-fun lt!2443587 () Unit!159885)

(assert (=> b!6770883 (= lt!2443587 (mainMatchTheorem!3698 r!7292 s!2326))))

(declare-fun res!2768430 () Bool)

(assert (=> start!655776 (=> (not res!2768430) (not e!4087924))))

(assert (=> start!655776 (= res!2768430 (validRegex!8333 r!7292))))

(assert (=> start!655776 e!4087924))

(assert (=> start!655776 e!4087939))

(declare-fun condSetEmpty!46303 () Bool)

(assert (=> start!655776 (= condSetEmpty!46303 (= z!1189 ((as const (Array Context!11962 Bool)) false)))))

(assert (=> start!655776 setRes!46303))

(assert (=> start!655776 e!4087938))

(assert (=> start!655776 e!4087930))

(declare-fun setElem!46303 () Context!11962)

(declare-fun tp!1855252 () Bool)

(declare-fun setNonEmpty!46303 () Bool)

(assert (=> setNonEmpty!46303 (= setRes!46303 (and tp!1855252 (inv!84739 setElem!46303) e!4087928))))

(declare-fun setRest!46303 () (InoxSet Context!11962))

(assert (=> setNonEmpty!46303 (= z!1189 ((_ map or) (store ((as const (Array Context!11962 Bool)) false) setElem!46303 true) setRest!46303))))

(declare-fun b!6770884 () Bool)

(declare-fun tp!1855249 () Bool)

(declare-fun tp!1855250 () Bool)

(assert (=> b!6770884 (= e!4087939 (and tp!1855249 tp!1855250))))

(declare-fun b!6770885 () Bool)

(assert (=> b!6770885 (= e!4087927 lt!2443584)))

(assert (= (and start!655776 res!2768430) b!6770853))

(assert (= (and b!6770853 res!2768440) b!6770881))

(assert (= (and b!6770881 res!2768433) b!6770883))

(assert (= (and b!6770883 (not res!2768415)) b!6770880))

(assert (= (and b!6770880 (not res!2768414)) b!6770877))

(assert (= (and b!6770877 (not res!2768422)) b!6770879))

(assert (= (and b!6770879 (not res!2768432)) b!6770854))

(assert (= (and b!6770854 (not res!2768435)) b!6770882))

(assert (= (and b!6770882 (not res!2768420)) b!6770867))

(assert (= (and b!6770867 (not res!2768428)) b!6770885))

(assert (= (and b!6770867 (not res!2768434)) b!6770874))

(assert (= (and b!6770874 (not res!2768418)) b!6770864))

(assert (= (and b!6770864 (not res!2768416)) b!6770851))

(assert (= (and b!6770851 (not res!2768427)) b!6770850))

(assert (= (and b!6770850 (not res!2768421)) b!6770858))

(assert (= (and b!6770858 (not res!2768411)) b!6770859))

(assert (= (and b!6770859 (not res!2768426)) b!6770866))

(assert (= (and b!6770866 (not res!2768413)) b!6770856))

(assert (= (and b!6770856 (not res!2768436)) b!6770861))

(assert (= (and b!6770861 (not res!2768437)) b!6770869))

(assert (= (and b!6770869 (not res!2768424)) b!6770875))

(assert (= (and b!6770875 res!2768429) b!6770863))

(assert (= (and b!6770863 (not res!2768419)) b!6770878))

(assert (= (and b!6770878 res!2768439) b!6770852))

(assert (= (and b!6770875 (not res!2768423)) b!6770870))

(assert (= (and b!6770870 (not res!2768412)) b!6770860))

(assert (= (and b!6770860 (not res!2768431)) b!6770876))

(assert (= (and b!6770876 (not res!2768438)) b!6770848))

(assert (= (and b!6770848 (not res!2768417)) b!6770872))

(assert (= (and b!6770872 (not res!2768425)) b!6770871))

(assert (= (and start!655776 ((_ is ElementMatch!16597) r!7292)) b!6770868))

(assert (= (and start!655776 ((_ is Concat!25442) r!7292)) b!6770865))

(assert (= (and start!655776 ((_ is Star!16597) r!7292)) b!6770849))

(assert (= (and start!655776 ((_ is Union!16597) r!7292)) b!6770884))

(assert (= (and start!655776 condSetEmpty!46303) setIsEmpty!46303))

(assert (= (and start!655776 (not condSetEmpty!46303)) setNonEmpty!46303))

(assert (= setNonEmpty!46303 b!6770862))

(assert (= b!6770855 b!6770857))

(assert (= (and start!655776 ((_ is Cons!65968) zl!343)) b!6770855))

(assert (= (and start!655776 ((_ is Cons!65967) s!2326)) b!6770873))

(declare-fun m!7521226 () Bool)

(assert (=> b!6770883 m!7521226))

(declare-fun m!7521228 () Bool)

(assert (=> b!6770883 m!7521228))

(declare-fun m!7521230 () Bool)

(assert (=> b!6770883 m!7521230))

(declare-fun m!7521232 () Bool)

(assert (=> b!6770850 m!7521232))

(declare-fun m!7521234 () Bool)

(assert (=> b!6770850 m!7521234))

(declare-fun m!7521236 () Bool)

(assert (=> b!6770850 m!7521236))

(declare-fun m!7521238 () Bool)

(assert (=> b!6770850 m!7521238))

(declare-fun m!7521240 () Bool)

(assert (=> b!6770850 m!7521240))

(declare-fun m!7521242 () Bool)

(assert (=> b!6770878 m!7521242))

(declare-fun m!7521244 () Bool)

(assert (=> b!6770878 m!7521244))

(declare-fun m!7521246 () Bool)

(assert (=> b!6770870 m!7521246))

(declare-fun m!7521248 () Bool)

(assert (=> b!6770870 m!7521248))

(declare-fun m!7521250 () Bool)

(assert (=> b!6770851 m!7521250))

(declare-fun m!7521252 () Bool)

(assert (=> b!6770851 m!7521252))

(declare-fun m!7521254 () Bool)

(assert (=> b!6770851 m!7521254))

(declare-fun m!7521256 () Bool)

(assert (=> b!6770881 m!7521256))

(assert (=> b!6770852 m!7521242))

(declare-fun m!7521258 () Bool)

(assert (=> b!6770875 m!7521258))

(declare-fun m!7521260 () Bool)

(assert (=> b!6770875 m!7521260))

(declare-fun m!7521262 () Bool)

(assert (=> b!6770875 m!7521262))

(declare-fun m!7521264 () Bool)

(assert (=> b!6770855 m!7521264))

(declare-fun m!7521266 () Bool)

(assert (=> b!6770876 m!7521266))

(declare-fun m!7521268 () Bool)

(assert (=> b!6770858 m!7521268))

(declare-fun m!7521270 () Bool)

(assert (=> b!6770858 m!7521270))

(assert (=> b!6770858 m!7521270))

(declare-fun m!7521272 () Bool)

(assert (=> b!6770858 m!7521272))

(declare-fun m!7521274 () Bool)

(assert (=> b!6770869 m!7521274))

(declare-fun m!7521276 () Bool)

(assert (=> start!655776 m!7521276))

(declare-fun m!7521278 () Bool)

(assert (=> b!6770853 m!7521278))

(declare-fun m!7521280 () Bool)

(assert (=> b!6770854 m!7521280))

(assert (=> b!6770854 m!7521280))

(declare-fun m!7521282 () Bool)

(assert (=> b!6770854 m!7521282))

(declare-fun m!7521284 () Bool)

(assert (=> b!6770856 m!7521284))

(declare-fun m!7521286 () Bool)

(assert (=> b!6770856 m!7521286))

(declare-fun m!7521288 () Bool)

(assert (=> b!6770856 m!7521288))

(declare-fun m!7521290 () Bool)

(assert (=> b!6770856 m!7521290))

(declare-fun m!7521292 () Bool)

(assert (=> b!6770856 m!7521292))

(declare-fun m!7521294 () Bool)

(assert (=> b!6770856 m!7521294))

(declare-fun m!7521296 () Bool)

(assert (=> b!6770856 m!7521296))

(declare-fun m!7521298 () Bool)

(assert (=> b!6770856 m!7521298))

(declare-fun m!7521300 () Bool)

(assert (=> b!6770856 m!7521300))

(declare-fun m!7521302 () Bool)

(assert (=> b!6770867 m!7521302))

(assert (=> b!6770867 m!7521244))

(assert (=> b!6770867 m!7521242))

(assert (=> b!6770867 m!7521242))

(declare-fun m!7521304 () Bool)

(assert (=> b!6770867 m!7521304))

(declare-fun m!7521306 () Bool)

(assert (=> b!6770867 m!7521306))

(declare-fun m!7521308 () Bool)

(assert (=> b!6770867 m!7521308))

(declare-fun m!7521310 () Bool)

(assert (=> b!6770867 m!7521310))

(declare-fun m!7521312 () Bool)

(assert (=> b!6770867 m!7521312))

(assert (=> b!6770867 m!7521242))

(declare-fun m!7521314 () Bool)

(assert (=> b!6770867 m!7521314))

(declare-fun m!7521316 () Bool)

(assert (=> b!6770861 m!7521316))

(declare-fun m!7521318 () Bool)

(assert (=> setNonEmpty!46303 m!7521318))

(declare-fun m!7521320 () Bool)

(assert (=> b!6770880 m!7521320))

(declare-fun m!7521322 () Bool)

(assert (=> b!6770872 m!7521322))

(declare-fun m!7521324 () Bool)

(assert (=> b!6770877 m!7521324))

(declare-fun m!7521326 () Bool)

(assert (=> b!6770866 m!7521326))

(declare-fun m!7521328 () Bool)

(assert (=> b!6770860 m!7521328))

(assert (=> b!6770848 m!7521276))

(declare-fun m!7521330 () Bool)

(assert (=> b!6770848 m!7521330))

(declare-fun m!7521332 () Bool)

(assert (=> b!6770848 m!7521332))

(declare-fun m!7521334 () Bool)

(assert (=> b!6770864 m!7521334))

(declare-fun m!7521336 () Bool)

(assert (=> b!6770864 m!7521336))

(declare-fun m!7521338 () Bool)

(assert (=> b!6770864 m!7521338))

(check-sat (not b!6770878) (not b!6770851) (not b!6770873) (not b!6770853) (not b!6770865) (not b!6770864) (not b!6770884) (not b!6770869) (not b!6770858) (not b!6770870) (not b!6770883) (not b!6770862) (not b!6770849) (not setNonEmpty!46303) (not b!6770867) (not b!6770856) (not b!6770848) tp_is_empty!42447 (not b!6770872) (not b!6770861) (not b!6770854) (not b!6770855) (not b!6770877) (not start!655776) (not b!6770852) (not b!6770866) (not b!6770850) (not b!6770857) (not b!6770875) (not b!6770876) (not b!6770880) (not b!6770881) (not b!6770860))
(check-sat)
