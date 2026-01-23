; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550106 () Bool)

(assert start!550106)

(declare-fun b!5199941 () Bool)

(assert (=> b!5199941 true))

(assert (=> b!5199941 true))

(declare-fun lambda!260458 () Int)

(declare-fun lambda!260457 () Int)

(assert (=> b!5199941 (not (= lambda!260458 lambda!260457))))

(assert (=> b!5199941 true))

(assert (=> b!5199941 true))

(declare-fun b!5199936 () Bool)

(assert (=> b!5199936 true))

(declare-fun res!2209120 () Bool)

(declare-fun e!3238098 () Bool)

(assert (=> start!550106 (=> (not res!2209120) (not e!3238098))))

(declare-datatypes ((C!29824 0))(
  ( (C!29825 (val!24614 Int)) )
))
(declare-datatypes ((Regex!14777 0))(
  ( (ElementMatch!14777 (c!896242 C!29824)) (Concat!23622 (regOne!30066 Regex!14777) (regTwo!30066 Regex!14777)) (EmptyExpr!14777) (Star!14777 (reg!15106 Regex!14777)) (EmptyLang!14777) (Union!14777 (regOne!30067 Regex!14777) (regTwo!30067 Regex!14777)) )
))
(declare-fun r!7292 () Regex!14777)

(declare-fun validRegex!6513 (Regex!14777) Bool)

(assert (=> start!550106 (= res!2209120 (validRegex!6513 r!7292))))

(assert (=> start!550106 e!3238098))

(declare-fun e!3238109 () Bool)

(assert (=> start!550106 e!3238109))

(declare-fun condSetEmpty!32962 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!60630 0))(
  ( (Nil!60506) (Cons!60506 (h!66954 Regex!14777) (t!373783 List!60630)) )
))
(declare-datatypes ((Context!8322 0))(
  ( (Context!8323 (exprs!4661 List!60630)) )
))
(declare-fun z!1189 () (InoxSet Context!8322))

(assert (=> start!550106 (= condSetEmpty!32962 (= z!1189 ((as const (Array Context!8322 Bool)) false)))))

(declare-fun setRes!32962 () Bool)

(assert (=> start!550106 setRes!32962))

(declare-fun e!3238097 () Bool)

(assert (=> start!550106 e!3238097))

(declare-fun e!3238103 () Bool)

(assert (=> start!550106 e!3238103))

(declare-fun b!5199924 () Bool)

(declare-fun res!2209119 () Bool)

(declare-fun e!3238102 () Bool)

(assert (=> b!5199924 (=> res!2209119 e!3238102)))

(declare-datatypes ((List!60631 0))(
  ( (Nil!60507) (Cons!60507 (h!66955 Context!8322) (t!373784 List!60631)) )
))
(declare-fun zl!343 () List!60631)

(declare-fun generalisedUnion!706 (List!60630) Regex!14777)

(declare-fun unfocusZipperList!219 (List!60631) List!60630)

(assert (=> b!5199924 (= res!2209119 (not (= r!7292 (generalisedUnion!706 (unfocusZipperList!219 zl!343)))))))

(declare-fun b!5199925 () Bool)

(declare-fun e!3238105 () Bool)

(declare-fun tp!1458541 () Bool)

(assert (=> b!5199925 (= e!3238105 tp!1458541)))

(declare-fun b!5199926 () Bool)

(declare-fun e!3238101 () Bool)

(declare-fun e!3238096 () Bool)

(assert (=> b!5199926 (= e!3238101 e!3238096)))

(declare-fun res!2209111 () Bool)

(assert (=> b!5199926 (=> res!2209111 e!3238096)))

(declare-fun lt!2140554 () List!60631)

(declare-fun lt!2140549 () Context!8322)

(declare-fun zipperDepth!10 (List!60631) Int)

(assert (=> b!5199926 (= res!2209111 (>= (zipperDepth!10 lt!2140554) (zipperDepth!10 (Cons!60507 lt!2140549 Nil!60507))))))

(declare-fun lt!2140546 () Context!8322)

(assert (=> b!5199926 (= lt!2140554 (Cons!60507 lt!2140546 Nil!60507))))

(declare-fun b!5199927 () Bool)

(declare-fun res!2209115 () Bool)

(assert (=> b!5199927 (=> res!2209115 e!3238102)))

(get-info :version)

(assert (=> b!5199927 (= res!2209115 (or ((_ is EmptyExpr!14777) r!7292) ((_ is EmptyLang!14777) r!7292) ((_ is ElementMatch!14777) r!7292) ((_ is Union!14777) r!7292) (not ((_ is Concat!23622) r!7292))))))

(declare-fun b!5199928 () Bool)

(declare-fun e!3238099 () Bool)

(assert (=> b!5199928 (= e!3238096 e!3238099)))

(declare-fun res!2209121 () Bool)

(assert (=> b!5199928 (=> res!2209121 e!3238099)))

(assert (=> b!5199928 (= res!2209121 (not (validRegex!6513 (regTwo!30066 r!7292))))))

(declare-fun lt!2140552 () List!60631)

(declare-fun lt!2140529 () Context!8322)

(assert (=> b!5199928 (= lt!2140552 (Cons!60507 lt!2140529 Nil!60507))))

(declare-fun lt!2140531 () Regex!14777)

(declare-datatypes ((List!60632 0))(
  ( (Nil!60508) (Cons!60508 (h!66956 C!29824) (t!373785 List!60632)) )
))
(declare-fun s!2326 () List!60632)

(declare-fun lt!2140541 () (InoxSet Context!8322))

(declare-fun matchR!6962 (Regex!14777 List!60632) Bool)

(declare-fun matchZipper!1025 ((InoxSet Context!8322) List!60632) Bool)

(assert (=> b!5199928 (= (matchR!6962 lt!2140531 s!2326) (matchZipper!1025 lt!2140541 s!2326))))

(declare-datatypes ((Unit!152388 0))(
  ( (Unit!152389) )
))
(declare-fun lt!2140544 () Unit!152388)

(declare-fun theoremZipperRegexEquiv!253 ((InoxSet Context!8322) List!60631 Regex!14777 List!60632) Unit!152388)

(assert (=> b!5199928 (= lt!2140544 (theoremZipperRegexEquiv!253 lt!2140541 lt!2140554 lt!2140531 s!2326))))

(assert (=> b!5199928 (= lt!2140531 (Concat!23622 (regOne!30066 r!7292) (regTwo!30066 r!7292)))))

(declare-fun b!5199929 () Bool)

(declare-fun res!2209122 () Bool)

(assert (=> b!5199929 (=> res!2209122 e!3238102)))

(declare-fun isEmpty!32418 (List!60631) Bool)

(assert (=> b!5199929 (= res!2209122 (not (isEmpty!32418 (t!373784 zl!343))))))

(declare-fun b!5199930 () Bool)

(declare-fun tp!1458544 () Bool)

(declare-fun inv!80189 (Context!8322) Bool)

(assert (=> b!5199930 (= e!3238097 (and (inv!80189 (h!66955 zl!343)) e!3238105 tp!1458544))))

(declare-fun b!5199931 () Bool)

(declare-fun e!3238107 () Bool)

(declare-fun e!3238106 () Bool)

(assert (=> b!5199931 (= e!3238107 e!3238106)))

(declare-fun res!2209123 () Bool)

(assert (=> b!5199931 (=> res!2209123 e!3238106)))

(declare-fun lt!2140555 () (InoxSet Context!8322))

(declare-fun lt!2140550 () (InoxSet Context!8322))

(assert (=> b!5199931 (= res!2209123 (not (= lt!2140555 lt!2140550)))))

(declare-fun lt!2140527 () Context!8322)

(declare-fun derivationStepZipperDown!226 (Regex!14777 Context!8322 C!29824) (InoxSet Context!8322))

(assert (=> b!5199931 (= lt!2140550 (derivationStepZipperDown!226 r!7292 lt!2140527 (h!66956 s!2326)))))

(assert (=> b!5199931 (= lt!2140527 (Context!8323 Nil!60506))))

(declare-fun derivationStepZipperUp!149 (Context!8322 C!29824) (InoxSet Context!8322))

(assert (=> b!5199931 (= lt!2140555 (derivationStepZipperUp!149 lt!2140549 (h!66956 s!2326)))))

(declare-fun lt!2140530 () List!60630)

(assert (=> b!5199931 (= lt!2140549 (Context!8323 lt!2140530))))

(assert (=> b!5199931 (= lt!2140530 (Cons!60506 r!7292 Nil!60506))))

(declare-fun lt!2140540 () (InoxSet Context!8322))

(declare-fun derivationStepZipper!1057 ((InoxSet Context!8322) C!29824) (InoxSet Context!8322))

(assert (=> b!5199931 (= lt!2140540 (derivationStepZipper!1057 z!1189 (h!66956 s!2326)))))

(declare-fun b!5199932 () Bool)

(declare-fun tp!1458546 () Bool)

(declare-fun tp!1458545 () Bool)

(assert (=> b!5199932 (= e!3238109 (and tp!1458546 tp!1458545))))

(declare-fun b!5199933 () Bool)

(assert (=> b!5199933 (= e!3238099 true)))

(declare-fun lt!2140536 () Regex!14777)

(declare-fun unfocusZipper!519 (List!60631) Regex!14777)

(assert (=> b!5199933 (= lt!2140536 (unfocusZipper!519 lt!2140552))))

(declare-fun b!5199934 () Bool)

(declare-fun res!2209110 () Bool)

(assert (=> b!5199934 (=> res!2209110 e!3238107)))

(declare-fun isEmpty!32419 (List!60630) Bool)

(assert (=> b!5199934 (= res!2209110 (not (isEmpty!32419 (t!373783 (exprs!4661 (h!66955 zl!343))))))))

(declare-fun b!5199935 () Bool)

(declare-fun res!2209112 () Bool)

(assert (=> b!5199935 (=> res!2209112 e!3238101)))

(declare-fun lt!2140537 () (InoxSet Context!8322))

(declare-fun lt!2140545 () Regex!14777)

(assert (=> b!5199935 (= res!2209112 (or (not (= lt!2140540 lt!2140537)) (not (= lt!2140545 r!7292)) (not (= (exprs!4661 (h!66955 zl!343)) lt!2140530))))))

(declare-fun e!3238104 () Bool)

(assert (=> b!5199936 (= e!3238106 e!3238104)))

(declare-fun res!2209107 () Bool)

(assert (=> b!5199936 (=> res!2209107 e!3238104)))

(assert (=> b!5199936 (= res!2209107 (not (= lt!2140540 lt!2140550)))))

(declare-fun lambda!260459 () Int)

(declare-fun flatMap!508 ((InoxSet Context!8322) Int) (InoxSet Context!8322))

(assert (=> b!5199936 (= (flatMap!508 z!1189 lambda!260459) (derivationStepZipperUp!149 (h!66955 zl!343) (h!66956 s!2326)))))

(declare-fun lt!2140533 () Unit!152388)

(declare-fun lemmaFlatMapOnSingletonSet!40 ((InoxSet Context!8322) Context!8322 Int) Unit!152388)

(assert (=> b!5199936 (= lt!2140533 (lemmaFlatMapOnSingletonSet!40 z!1189 (h!66955 zl!343) lambda!260459))))

(declare-fun b!5199937 () Bool)

(declare-fun res!2209108 () Bool)

(assert (=> b!5199937 (=> res!2209108 e!3238099)))

(declare-fun lt!2140539 () (InoxSet Context!8322))

(declare-fun toList!8561 ((InoxSet Context!8322)) List!60631)

(assert (=> b!5199937 (= res!2209108 (not (= (toList!8561 lt!2140539) lt!2140552)))))

(declare-fun setNonEmpty!32962 () Bool)

(declare-fun setElem!32962 () Context!8322)

(declare-fun e!3238100 () Bool)

(declare-fun tp!1458540 () Bool)

(assert (=> setNonEmpty!32962 (= setRes!32962 (and tp!1458540 (inv!80189 setElem!32962) e!3238100))))

(declare-fun setRest!32962 () (InoxSet Context!8322))

(assert (=> setNonEmpty!32962 (= z!1189 ((_ map or) (store ((as const (Array Context!8322 Bool)) false) setElem!32962 true) setRest!32962))))

(declare-fun b!5199938 () Bool)

(assert (=> b!5199938 (= e!3238104 e!3238101)))

(declare-fun res!2209113 () Bool)

(assert (=> b!5199938 (=> res!2209113 e!3238101)))

(declare-fun nullable!4948 (Regex!14777) Bool)

(assert (=> b!5199938 (= res!2209113 (nullable!4948 (regOne!30066 r!7292)))))

(declare-fun lt!2140553 () (InoxSet Context!8322))

(assert (=> b!5199938 (= lt!2140553 (derivationStepZipperDown!226 (regTwo!30066 r!7292) lt!2140527 (h!66956 s!2326)))))

(assert (=> b!5199938 (= lt!2140537 (derivationStepZipperDown!226 (regOne!30066 r!7292) lt!2140529 (h!66956 s!2326)))))

(assert (=> b!5199938 (= (flatMap!508 lt!2140539 lambda!260459) (derivationStepZipperUp!149 lt!2140529 (h!66956 s!2326)))))

(declare-fun lt!2140547 () Unit!152388)

(assert (=> b!5199938 (= lt!2140547 (lemmaFlatMapOnSingletonSet!40 lt!2140539 lt!2140529 lambda!260459))))

(assert (=> b!5199938 (= (flatMap!508 lt!2140541 lambda!260459) (derivationStepZipperUp!149 lt!2140546 (h!66956 s!2326)))))

(declare-fun lt!2140538 () Unit!152388)

(assert (=> b!5199938 (= lt!2140538 (lemmaFlatMapOnSingletonSet!40 lt!2140541 lt!2140546 lambda!260459))))

(declare-fun lt!2140532 () (InoxSet Context!8322))

(assert (=> b!5199938 (= lt!2140532 (derivationStepZipperUp!149 lt!2140529 (h!66956 s!2326)))))

(declare-fun lt!2140542 () (InoxSet Context!8322))

(assert (=> b!5199938 (= lt!2140542 (derivationStepZipperUp!149 lt!2140546 (h!66956 s!2326)))))

(assert (=> b!5199938 (= lt!2140539 (store ((as const (Array Context!8322 Bool)) false) lt!2140529 true))))

(declare-fun lt!2140543 () List!60630)

(assert (=> b!5199938 (= lt!2140529 (Context!8323 lt!2140543))))

(assert (=> b!5199938 (= lt!2140541 (store ((as const (Array Context!8322 Bool)) false) lt!2140546 true))))

(assert (=> b!5199938 (= lt!2140546 (Context!8323 (Cons!60506 (regOne!30066 r!7292) lt!2140543)))))

(assert (=> b!5199938 (= lt!2140543 (Cons!60506 (regTwo!30066 r!7292) Nil!60506))))

(declare-fun b!5199939 () Bool)

(declare-fun res!2209116 () Bool)

(assert (=> b!5199939 (=> res!2209116 e!3238102)))

(assert (=> b!5199939 (= res!2209116 (not ((_ is Cons!60506) (exprs!4661 (h!66955 zl!343)))))))

(declare-fun b!5199940 () Bool)

(declare-fun e!3238108 () Bool)

(assert (=> b!5199940 (= e!3238098 e!3238108)))

(declare-fun res!2209114 () Bool)

(assert (=> b!5199940 (=> (not res!2209114) (not e!3238108))))

(assert (=> b!5199940 (= res!2209114 (= r!7292 lt!2140545))))

(assert (=> b!5199940 (= lt!2140545 (unfocusZipper!519 zl!343))))

(assert (=> b!5199941 (= e!3238102 e!3238107)))

(declare-fun res!2209109 () Bool)

(assert (=> b!5199941 (=> res!2209109 e!3238107)))

(declare-fun lt!2140548 () Bool)

(declare-fun lt!2140535 () Bool)

(assert (=> b!5199941 (= res!2209109 (or (not (= lt!2140535 lt!2140548)) ((_ is Nil!60508) s!2326)))))

(declare-fun Exists!1958 (Int) Bool)

(assert (=> b!5199941 (= (Exists!1958 lambda!260457) (Exists!1958 lambda!260458))))

(declare-fun lt!2140534 () Unit!152388)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!612 (Regex!14777 Regex!14777 List!60632) Unit!152388)

(assert (=> b!5199941 (= lt!2140534 (lemmaExistCutMatchRandMatchRSpecEquivalent!612 (regOne!30066 r!7292) (regTwo!30066 r!7292) s!2326))))

(assert (=> b!5199941 (= lt!2140548 (Exists!1958 lambda!260457))))

(declare-datatypes ((tuple2!63952 0))(
  ( (tuple2!63953 (_1!35279 List!60632) (_2!35279 List!60632)) )
))
(declare-datatypes ((Option!14888 0))(
  ( (None!14887) (Some!14887 (v!50916 tuple2!63952)) )
))
(declare-fun isDefined!11591 (Option!14888) Bool)

(declare-fun findConcatSeparation!1302 (Regex!14777 Regex!14777 List!60632 List!60632 List!60632) Option!14888)

(assert (=> b!5199941 (= lt!2140548 (isDefined!11591 (findConcatSeparation!1302 (regOne!30066 r!7292) (regTwo!30066 r!7292) Nil!60508 s!2326 s!2326)))))

(declare-fun lt!2140551 () Unit!152388)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1066 (Regex!14777 Regex!14777 List!60632) Unit!152388)

(assert (=> b!5199941 (= lt!2140551 (lemmaFindConcatSeparationEquivalentToExists!1066 (regOne!30066 r!7292) (regTwo!30066 r!7292) s!2326))))

(declare-fun b!5199942 () Bool)

(declare-fun tp_is_empty!38807 () Bool)

(assert (=> b!5199942 (= e!3238109 tp_is_empty!38807)))

(declare-fun setIsEmpty!32962 () Bool)

(assert (=> setIsEmpty!32962 setRes!32962))

(declare-fun b!5199943 () Bool)

(declare-fun tp!1458549 () Bool)

(declare-fun tp!1458548 () Bool)

(assert (=> b!5199943 (= e!3238109 (and tp!1458549 tp!1458548))))

(declare-fun b!5199944 () Bool)

(declare-fun tp!1458547 () Bool)

(assert (=> b!5199944 (= e!3238109 tp!1458547)))

(declare-fun b!5199945 () Bool)

(declare-fun tp!1458542 () Bool)

(assert (=> b!5199945 (= e!3238100 tp!1458542)))

(declare-fun b!5199946 () Bool)

(declare-fun tp!1458543 () Bool)

(assert (=> b!5199946 (= e!3238103 (and tp_is_empty!38807 tp!1458543))))

(declare-fun b!5199947 () Bool)

(declare-fun res!2209117 () Bool)

(assert (=> b!5199947 (=> res!2209117 e!3238102)))

(declare-fun generalisedConcat!446 (List!60630) Regex!14777)

(assert (=> b!5199947 (= res!2209117 (not (= r!7292 (generalisedConcat!446 (exprs!4661 (h!66955 zl!343))))))))

(declare-fun b!5199948 () Bool)

(assert (=> b!5199948 (= e!3238108 (not e!3238102))))

(declare-fun res!2209124 () Bool)

(assert (=> b!5199948 (=> res!2209124 e!3238102)))

(assert (=> b!5199948 (= res!2209124 (not ((_ is Cons!60507) zl!343)))))

(declare-fun matchRSpec!1880 (Regex!14777 List!60632) Bool)

(assert (=> b!5199948 (= lt!2140535 (matchRSpec!1880 r!7292 s!2326))))

(assert (=> b!5199948 (= lt!2140535 (matchR!6962 r!7292 s!2326))))

(declare-fun lt!2140528 () Unit!152388)

(declare-fun mainMatchTheorem!1880 (Regex!14777 List!60632) Unit!152388)

(assert (=> b!5199948 (= lt!2140528 (mainMatchTheorem!1880 r!7292 s!2326))))

(declare-fun b!5199949 () Bool)

(declare-fun res!2209118 () Bool)

(assert (=> b!5199949 (=> (not res!2209118) (not e!3238098))))

(assert (=> b!5199949 (= res!2209118 (= (toList!8561 z!1189) zl!343))))

(assert (= (and start!550106 res!2209120) b!5199949))

(assert (= (and b!5199949 res!2209118) b!5199940))

(assert (= (and b!5199940 res!2209114) b!5199948))

(assert (= (and b!5199948 (not res!2209124)) b!5199929))

(assert (= (and b!5199929 (not res!2209122)) b!5199947))

(assert (= (and b!5199947 (not res!2209117)) b!5199939))

(assert (= (and b!5199939 (not res!2209116)) b!5199924))

(assert (= (and b!5199924 (not res!2209119)) b!5199927))

(assert (= (and b!5199927 (not res!2209115)) b!5199941))

(assert (= (and b!5199941 (not res!2209109)) b!5199934))

(assert (= (and b!5199934 (not res!2209110)) b!5199931))

(assert (= (and b!5199931 (not res!2209123)) b!5199936))

(assert (= (and b!5199936 (not res!2209107)) b!5199938))

(assert (= (and b!5199938 (not res!2209113)) b!5199935))

(assert (= (and b!5199935 (not res!2209112)) b!5199926))

(assert (= (and b!5199926 (not res!2209111)) b!5199928))

(assert (= (and b!5199928 (not res!2209121)) b!5199937))

(assert (= (and b!5199937 (not res!2209108)) b!5199933))

(assert (= (and start!550106 ((_ is ElementMatch!14777) r!7292)) b!5199942))

(assert (= (and start!550106 ((_ is Concat!23622) r!7292)) b!5199932))

(assert (= (and start!550106 ((_ is Star!14777) r!7292)) b!5199944))

(assert (= (and start!550106 ((_ is Union!14777) r!7292)) b!5199943))

(assert (= (and start!550106 condSetEmpty!32962) setIsEmpty!32962))

(assert (= (and start!550106 (not condSetEmpty!32962)) setNonEmpty!32962))

(assert (= setNonEmpty!32962 b!5199945))

(assert (= b!5199930 b!5199925))

(assert (= (and start!550106 ((_ is Cons!60507) zl!343)) b!5199930))

(assert (= (and start!550106 ((_ is Cons!60508) s!2326)) b!5199946))

(declare-fun m!6252830 () Bool)

(assert (=> b!5199941 m!6252830))

(declare-fun m!6252832 () Bool)

(assert (=> b!5199941 m!6252832))

(declare-fun m!6252834 () Bool)

(assert (=> b!5199941 m!6252834))

(declare-fun m!6252836 () Bool)

(assert (=> b!5199941 m!6252836))

(declare-fun m!6252838 () Bool)

(assert (=> b!5199941 m!6252838))

(assert (=> b!5199941 m!6252836))

(assert (=> b!5199941 m!6252830))

(declare-fun m!6252840 () Bool)

(assert (=> b!5199941 m!6252840))

(declare-fun m!6252842 () Bool)

(assert (=> b!5199937 m!6252842))

(declare-fun m!6252844 () Bool)

(assert (=> b!5199949 m!6252844))

(declare-fun m!6252846 () Bool)

(assert (=> b!5199926 m!6252846))

(declare-fun m!6252848 () Bool)

(assert (=> b!5199926 m!6252848))

(declare-fun m!6252850 () Bool)

(assert (=> start!550106 m!6252850))

(declare-fun m!6252852 () Bool)

(assert (=> b!5199931 m!6252852))

(declare-fun m!6252854 () Bool)

(assert (=> b!5199931 m!6252854))

(declare-fun m!6252856 () Bool)

(assert (=> b!5199931 m!6252856))

(declare-fun m!6252858 () Bool)

(assert (=> b!5199940 m!6252858))

(declare-fun m!6252860 () Bool)

(assert (=> b!5199938 m!6252860))

(declare-fun m!6252862 () Bool)

(assert (=> b!5199938 m!6252862))

(declare-fun m!6252864 () Bool)

(assert (=> b!5199938 m!6252864))

(declare-fun m!6252866 () Bool)

(assert (=> b!5199938 m!6252866))

(declare-fun m!6252868 () Bool)

(assert (=> b!5199938 m!6252868))

(declare-fun m!6252870 () Bool)

(assert (=> b!5199938 m!6252870))

(declare-fun m!6252872 () Bool)

(assert (=> b!5199938 m!6252872))

(declare-fun m!6252874 () Bool)

(assert (=> b!5199938 m!6252874))

(declare-fun m!6252876 () Bool)

(assert (=> b!5199938 m!6252876))

(declare-fun m!6252878 () Bool)

(assert (=> b!5199938 m!6252878))

(declare-fun m!6252880 () Bool)

(assert (=> b!5199938 m!6252880))

(declare-fun m!6252882 () Bool)

(assert (=> b!5199933 m!6252882))

(declare-fun m!6252884 () Bool)

(assert (=> b!5199930 m!6252884))

(declare-fun m!6252886 () Bool)

(assert (=> b!5199929 m!6252886))

(declare-fun m!6252888 () Bool)

(assert (=> b!5199947 m!6252888))

(declare-fun m!6252890 () Bool)

(assert (=> setNonEmpty!32962 m!6252890))

(declare-fun m!6252892 () Bool)

(assert (=> b!5199948 m!6252892))

(declare-fun m!6252894 () Bool)

(assert (=> b!5199948 m!6252894))

(declare-fun m!6252896 () Bool)

(assert (=> b!5199948 m!6252896))

(declare-fun m!6252898 () Bool)

(assert (=> b!5199924 m!6252898))

(assert (=> b!5199924 m!6252898))

(declare-fun m!6252900 () Bool)

(assert (=> b!5199924 m!6252900))

(declare-fun m!6252902 () Bool)

(assert (=> b!5199936 m!6252902))

(declare-fun m!6252904 () Bool)

(assert (=> b!5199936 m!6252904))

(declare-fun m!6252906 () Bool)

(assert (=> b!5199936 m!6252906))

(declare-fun m!6252908 () Bool)

(assert (=> b!5199928 m!6252908))

(declare-fun m!6252910 () Bool)

(assert (=> b!5199928 m!6252910))

(declare-fun m!6252912 () Bool)

(assert (=> b!5199928 m!6252912))

(declare-fun m!6252914 () Bool)

(assert (=> b!5199928 m!6252914))

(declare-fun m!6252916 () Bool)

(assert (=> b!5199934 m!6252916))

(check-sat (not b!5199930) (not b!5199949) (not b!5199946) (not b!5199944) (not b!5199925) (not b!5199933) (not b!5199948) (not b!5199938) (not b!5199932) (not b!5199943) (not b!5199924) (not b!5199931) (not b!5199945) tp_is_empty!38807 (not b!5199928) (not b!5199941) (not b!5199936) (not b!5199934) (not b!5199926) (not b!5199940) (not b!5199937) (not setNonEmpty!32962) (not start!550106) (not b!5199947) (not b!5199929))
(check-sat)
