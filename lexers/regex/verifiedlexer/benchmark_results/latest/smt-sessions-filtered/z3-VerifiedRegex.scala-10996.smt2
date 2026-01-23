; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570262 () Bool)

(assert start!570262)

(declare-fun b!5436116 () Bool)

(assert (=> b!5436116 true))

(assert (=> b!5436116 true))

(declare-fun lambda!285621 () Int)

(declare-fun lambda!285620 () Int)

(assert (=> b!5436116 (not (= lambda!285621 lambda!285620))))

(assert (=> b!5436116 true))

(assert (=> b!5436116 true))

(declare-fun b!5436081 () Bool)

(assert (=> b!5436081 true))

(declare-fun bs!1254888 () Bool)

(declare-fun b!5436077 () Bool)

(assert (= bs!1254888 (and b!5436077 b!5436116)))

(declare-datatypes ((C!30748 0))(
  ( (C!30749 (val!25076 Int)) )
))
(declare-datatypes ((Regex!15239 0))(
  ( (ElementMatch!15239 (c!948627 C!30748)) (Concat!24084 (regOne!30990 Regex!15239) (regTwo!30990 Regex!15239)) (EmptyExpr!15239) (Star!15239 (reg!15568 Regex!15239)) (EmptyLang!15239) (Union!15239 (regOne!30991 Regex!15239) (regTwo!30991 Regex!15239)) )
))
(declare-fun r!7292 () Regex!15239)

(declare-fun lt!2216739 () Regex!15239)

(declare-fun lambda!285623 () Int)

(declare-datatypes ((List!62016 0))(
  ( (Nil!61892) (Cons!61892 (h!68340 C!30748) (t!375241 List!62016)) )
))
(declare-fun s!2326 () List!62016)

(assert (=> bs!1254888 (= (and (= Nil!61892 s!2326) (= (reg!15568 (regOne!30990 r!7292)) (regOne!30990 r!7292)) (= lt!2216739 (regTwo!30990 r!7292))) (= lambda!285623 lambda!285620))))

(assert (=> bs!1254888 (not (= lambda!285623 lambda!285621))))

(assert (=> b!5436077 true))

(assert (=> b!5436077 true))

(declare-fun lambda!285624 () Int)

(assert (=> bs!1254888 (not (= lambda!285624 lambda!285620))))

(assert (=> bs!1254888 (= (and (= Nil!61892 s!2326) (= (reg!15568 (regOne!30990 r!7292)) (regOne!30990 r!7292)) (= lt!2216739 (regTwo!30990 r!7292))) (= lambda!285624 lambda!285621))))

(assert (=> b!5436077 (not (= lambda!285624 lambda!285623))))

(assert (=> b!5436077 true))

(assert (=> b!5436077 true))

(declare-fun lambda!285625 () Int)

(assert (=> bs!1254888 (not (= lambda!285625 lambda!285620))))

(assert (=> bs!1254888 (not (= lambda!285625 lambda!285621))))

(assert (=> b!5436077 (not (= lambda!285625 lambda!285623))))

(assert (=> b!5436077 (not (= lambda!285625 lambda!285624))))

(assert (=> b!5436077 true))

(assert (=> b!5436077 true))

(declare-fun e!3367991 () Bool)

(assert (=> b!5436077 (= e!3367991 true)))

(declare-fun lt!2216736 () Regex!15239)

(declare-fun matchR!7424 (Regex!15239 List!62016) Bool)

(declare-fun ++!13610 (List!62016 List!62016) List!62016)

(assert (=> b!5436077 (matchR!7424 lt!2216736 (++!13610 Nil!61892 s!2326))))

(declare-datatypes ((Unit!154478 0))(
  ( (Unit!154479) )
))
(declare-fun lt!2216744 () Unit!154478)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!236 (Regex!15239 Regex!15239 List!62016 List!62016) Unit!154478)

(assert (=> b!5436077 (= lt!2216744 (lemmaTwoRegexMatchThenConcatMatchesConcatString!236 lt!2216739 (regTwo!30990 r!7292) Nil!61892 s!2326))))

(declare-fun Exists!2420 (Int) Bool)

(assert (=> b!5436077 (= (Exists!2420 lambda!285623) (Exists!2420 lambda!285625))))

(declare-fun lt!2216745 () Unit!154478)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!426 (Regex!15239 List!62016) Unit!154478)

(assert (=> b!5436077 (= lt!2216745 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!426 (reg!15568 (regOne!30990 r!7292)) Nil!61892))))

(assert (=> b!5436077 (= (Exists!2420 lambda!285623) (Exists!2420 lambda!285624))))

(declare-fun lt!2216758 () Unit!154478)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1074 (Regex!15239 Regex!15239 List!62016) Unit!154478)

(assert (=> b!5436077 (= lt!2216758 (lemmaExistCutMatchRandMatchRSpecEquivalent!1074 (reg!15568 (regOne!30990 r!7292)) lt!2216739 Nil!61892))))

(declare-datatypes ((tuple2!64876 0))(
  ( (tuple2!64877 (_1!35741 List!62016) (_2!35741 List!62016)) )
))
(declare-datatypes ((Option!15350 0))(
  ( (None!15349) (Some!15349 (v!51378 tuple2!64876)) )
))
(declare-fun isDefined!12053 (Option!15350) Bool)

(declare-fun findConcatSeparation!1764 (Regex!15239 Regex!15239 List!62016 List!62016 List!62016) Option!15350)

(assert (=> b!5436077 (= (isDefined!12053 (findConcatSeparation!1764 (reg!15568 (regOne!30990 r!7292)) lt!2216739 Nil!61892 Nil!61892 Nil!61892)) (Exists!2420 lambda!285623))))

(declare-fun lt!2216719 () Unit!154478)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1528 (Regex!15239 Regex!15239 List!62016) Unit!154478)

(assert (=> b!5436077 (= lt!2216719 (lemmaFindConcatSeparationEquivalentToExists!1528 (reg!15568 (regOne!30990 r!7292)) lt!2216739 Nil!61892))))

(declare-fun matchRSpec!2342 (Regex!15239 List!62016) Bool)

(assert (=> b!5436077 (= (matchR!7424 lt!2216739 Nil!61892) (matchRSpec!2342 lt!2216739 Nil!61892))))

(declare-fun lt!2216730 () Unit!154478)

(declare-fun mainMatchTheorem!2342 (Regex!15239 List!62016) Unit!154478)

(assert (=> b!5436077 (= lt!2216730 (mainMatchTheorem!2342 lt!2216739 Nil!61892))))

(declare-fun b!5436078 () Bool)

(declare-fun res!2313938 () Bool)

(declare-fun e!3367979 () Bool)

(assert (=> b!5436078 (=> res!2313938 e!3367979)))

(declare-fun e!3367974 () Bool)

(assert (=> b!5436078 (= res!2313938 e!3367974)))

(declare-fun res!2313935 () Bool)

(assert (=> b!5436078 (=> (not res!2313935) (not e!3367974))))

(get-info :version)

(assert (=> b!5436078 (= res!2313935 ((_ is Concat!24084) (regOne!30990 r!7292)))))

(declare-fun b!5436079 () Bool)

(declare-fun res!2313944 () Bool)

(declare-fun e!3367986 () Bool)

(assert (=> b!5436079 (=> res!2313944 e!3367986)))

(declare-datatypes ((List!62017 0))(
  ( (Nil!61893) (Cons!61893 (h!68341 Regex!15239) (t!375242 List!62017)) )
))
(declare-datatypes ((Context!9246 0))(
  ( (Context!9247 (exprs!5123 List!62017)) )
))
(declare-datatypes ((List!62018 0))(
  ( (Nil!61894) (Cons!61894 (h!68342 Context!9246) (t!375243 List!62018)) )
))
(declare-fun zl!343 () List!62018)

(declare-fun generalisedConcat!908 (List!62017) Regex!15239)

(assert (=> b!5436079 (= res!2313944 (not (= r!7292 (generalisedConcat!908 (exprs!5123 (h!68342 zl!343))))))))

(declare-fun b!5436080 () Bool)

(declare-fun e!3367994 () Bool)

(declare-fun e!3367987 () Bool)

(assert (=> b!5436080 (= e!3367994 e!3367987)))

(declare-fun res!2313936 () Bool)

(assert (=> b!5436080 (=> res!2313936 e!3367987)))

(declare-fun lt!2216742 () List!62018)

(declare-fun zipperDepth!180 (List!62018) Int)

(assert (=> b!5436080 (= res!2313936 (< (zipperDepth!180 zl!343) (zipperDepth!180 lt!2216742)))))

(declare-fun lt!2216737 () Context!9246)

(assert (=> b!5436080 (= lt!2216742 (Cons!61894 lt!2216737 Nil!61894))))

(declare-fun e!3367997 () Bool)

(assert (=> b!5436081 (= e!3367997 e!3367979)))

(declare-fun res!2313941 () Bool)

(assert (=> b!5436081 (=> res!2313941 e!3367979)))

(assert (=> b!5436081 (= res!2313941 (or (and ((_ is ElementMatch!15239) (regOne!30990 r!7292)) (= (c!948627 (regOne!30990 r!7292)) (h!68340 s!2326))) ((_ is Union!15239) (regOne!30990 r!7292))))))

(declare-fun lt!2216741 () Unit!154478)

(declare-fun e!3367992 () Unit!154478)

(assert (=> b!5436081 (= lt!2216741 e!3367992)))

(declare-fun c!948626 () Bool)

(declare-fun lt!2216728 () Bool)

(assert (=> b!5436081 (= c!948626 lt!2216728)))

(declare-fun nullable!5408 (Regex!15239) Bool)

(assert (=> b!5436081 (= lt!2216728 (nullable!5408 (h!68341 (exprs!5123 (h!68342 zl!343)))))))

(declare-fun lambda!285622 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9246))

(declare-fun flatMap!966 ((InoxSet Context!9246) Int) (InoxSet Context!9246))

(declare-fun derivationStepZipperUp!611 (Context!9246 C!30748) (InoxSet Context!9246))

(assert (=> b!5436081 (= (flatMap!966 z!1189 lambda!285622) (derivationStepZipperUp!611 (h!68342 zl!343) (h!68340 s!2326)))))

(declare-fun lt!2216722 () Unit!154478)

(declare-fun lemmaFlatMapOnSingletonSet!498 ((InoxSet Context!9246) Context!9246 Int) Unit!154478)

(assert (=> b!5436081 (= lt!2216722 (lemmaFlatMapOnSingletonSet!498 z!1189 (h!68342 zl!343) lambda!285622))))

(declare-fun lt!2216738 () (InoxSet Context!9246))

(assert (=> b!5436081 (= lt!2216738 (derivationStepZipperUp!611 lt!2216737 (h!68340 s!2326)))))

(declare-fun lt!2216753 () (InoxSet Context!9246))

(declare-fun derivationStepZipperDown!687 (Regex!15239 Context!9246 C!30748) (InoxSet Context!9246))

(assert (=> b!5436081 (= lt!2216753 (derivationStepZipperDown!687 (h!68341 (exprs!5123 (h!68342 zl!343))) lt!2216737 (h!68340 s!2326)))))

(assert (=> b!5436081 (= lt!2216737 (Context!9247 (t!375242 (exprs!5123 (h!68342 zl!343)))))))

(declare-fun lt!2216756 () (InoxSet Context!9246))

(assert (=> b!5436081 (= lt!2216756 (derivationStepZipperUp!611 (Context!9247 (Cons!61893 (h!68341 (exprs!5123 (h!68342 zl!343))) (t!375242 (exprs!5123 (h!68342 zl!343))))) (h!68340 s!2326)))))

(declare-fun b!5436082 () Bool)

(declare-fun e!3367998 () Bool)

(assert (=> b!5436082 (= e!3367998 (not e!3367986))))

(declare-fun res!2313952 () Bool)

(assert (=> b!5436082 (=> res!2313952 e!3367986)))

(assert (=> b!5436082 (= res!2313952 (not ((_ is Cons!61894) zl!343)))))

(declare-fun lt!2216720 () Bool)

(assert (=> b!5436082 (= lt!2216720 (matchRSpec!2342 r!7292 s!2326))))

(assert (=> b!5436082 (= lt!2216720 (matchR!7424 r!7292 s!2326))))

(declare-fun lt!2216746 () Unit!154478)

(assert (=> b!5436082 (= lt!2216746 (mainMatchTheorem!2342 r!7292 s!2326))))

(declare-fun b!5436083 () Bool)

(declare-fun res!2313940 () Bool)

(assert (=> b!5436083 (=> res!2313940 e!3367986)))

(declare-fun generalisedUnion!1168 (List!62017) Regex!15239)

(declare-fun unfocusZipperList!681 (List!62018) List!62017)

(assert (=> b!5436083 (= res!2313940 (not (= r!7292 (generalisedUnion!1168 (unfocusZipperList!681 zl!343)))))))

(declare-fun b!5436084 () Bool)

(declare-fun e!3367996 () Bool)

(declare-fun e!3367989 () Bool)

(assert (=> b!5436084 (= e!3367996 e!3367989)))

(declare-fun res!2313945 () Bool)

(assert (=> b!5436084 (=> res!2313945 e!3367989)))

(assert (=> b!5436084 (= res!2313945 lt!2216720)))

(declare-fun lt!2216733 () Regex!15239)

(assert (=> b!5436084 (= (matchR!7424 lt!2216733 s!2326) (matchRSpec!2342 lt!2216733 s!2326))))

(declare-fun lt!2216751 () Unit!154478)

(assert (=> b!5436084 (= lt!2216751 (mainMatchTheorem!2342 lt!2216733 s!2326))))

(declare-fun b!5436085 () Bool)

(declare-fun e!3367976 () Bool)

(declare-fun e!3367978 () Bool)

(assert (=> b!5436085 (= e!3367976 e!3367978)))

(declare-fun res!2313947 () Bool)

(assert (=> b!5436085 (=> res!2313947 e!3367978)))

(assert (=> b!5436085 (= res!2313947 (not (= r!7292 lt!2216736)))))

(assert (=> b!5436085 (= lt!2216736 (Concat!24084 lt!2216739 (regTwo!30990 r!7292)))))

(declare-fun b!5436086 () Bool)

(declare-fun e!3367984 () Bool)

(declare-fun tp!1499065 () Bool)

(declare-fun tp!1499069 () Bool)

(assert (=> b!5436086 (= e!3367984 (and tp!1499065 tp!1499069))))

(declare-fun b!5436088 () Bool)

(declare-fun e!3367993 () Bool)

(assert (=> b!5436088 (= e!3367993 e!3367976)))

(declare-fun res!2313923 () Bool)

(assert (=> b!5436088 (=> res!2313923 e!3367976)))

(declare-fun lt!2216734 () (InoxSet Context!9246))

(declare-fun lt!2216749 () (InoxSet Context!9246))

(assert (=> b!5436088 (= res!2313923 (not (= lt!2216734 lt!2216749)))))

(declare-fun lt!2216757 () (InoxSet Context!9246))

(declare-fun lt!2216721 () Context!9246)

(assert (=> b!5436088 (= (flatMap!966 lt!2216757 lambda!285622) (derivationStepZipperUp!611 lt!2216721 (h!68340 s!2326)))))

(declare-fun lt!2216750 () Unit!154478)

(assert (=> b!5436088 (= lt!2216750 (lemmaFlatMapOnSingletonSet!498 lt!2216757 lt!2216721 lambda!285622))))

(declare-fun lt!2216735 () (InoxSet Context!9246))

(assert (=> b!5436088 (= lt!2216735 (derivationStepZipperUp!611 lt!2216721 (h!68340 s!2326)))))

(declare-fun derivationStepZipper!1478 ((InoxSet Context!9246) C!30748) (InoxSet Context!9246))

(assert (=> b!5436088 (= lt!2216734 (derivationStepZipper!1478 lt!2216757 (h!68340 s!2326)))))

(assert (=> b!5436088 (= lt!2216757 (store ((as const (Array Context!9246 Bool)) false) lt!2216721 true))))

(declare-fun lt!2216754 () List!62017)

(assert (=> b!5436088 (= lt!2216721 (Context!9247 (Cons!61893 (reg!15568 (regOne!30990 r!7292)) lt!2216754)))))

(declare-fun b!5436089 () Bool)

(declare-fun res!2313926 () Bool)

(assert (=> b!5436089 (=> res!2313926 e!3367986)))

(assert (=> b!5436089 (= res!2313926 (or ((_ is EmptyExpr!15239) r!7292) ((_ is EmptyLang!15239) r!7292) ((_ is ElementMatch!15239) r!7292) ((_ is Union!15239) r!7292) (not ((_ is Concat!24084) r!7292))))))

(declare-fun b!5436090 () Bool)

(declare-fun e!3367983 () Bool)

(assert (=> b!5436090 (= e!3367983 e!3367996)))

(declare-fun res!2313928 () Bool)

(assert (=> b!5436090 (=> res!2313928 e!3367996)))

(declare-fun lt!2216732 () Context!9246)

(declare-fun unfocusZipper!981 (List!62018) Regex!15239)

(assert (=> b!5436090 (= res!2313928 (not (= (unfocusZipper!981 (Cons!61894 lt!2216732 Nil!61894)) (reg!15568 (regOne!30990 r!7292)))))))

(declare-fun lt!2216725 () (InoxSet Context!9246))

(declare-fun lt!2216731 () Context!9246)

(assert (=> b!5436090 (= (flatMap!966 lt!2216725 lambda!285622) (derivationStepZipperUp!611 lt!2216731 (h!68340 s!2326)))))

(declare-fun lt!2216727 () Unit!154478)

(assert (=> b!5436090 (= lt!2216727 (lemmaFlatMapOnSingletonSet!498 lt!2216725 lt!2216731 lambda!285622))))

(declare-fun lt!2216723 () (InoxSet Context!9246))

(assert (=> b!5436090 (= (flatMap!966 lt!2216723 lambda!285622) (derivationStepZipperUp!611 lt!2216732 (h!68340 s!2326)))))

(declare-fun lt!2216752 () Unit!154478)

(assert (=> b!5436090 (= lt!2216752 (lemmaFlatMapOnSingletonSet!498 lt!2216723 lt!2216732 lambda!285622))))

(declare-fun lt!2216759 () (InoxSet Context!9246))

(assert (=> b!5436090 (= lt!2216759 (derivationStepZipperUp!611 lt!2216731 (h!68340 s!2326)))))

(declare-fun lt!2216724 () (InoxSet Context!9246))

(assert (=> b!5436090 (= lt!2216724 (derivationStepZipperUp!611 lt!2216732 (h!68340 s!2326)))))

(assert (=> b!5436090 (= lt!2216725 (store ((as const (Array Context!9246 Bool)) false) lt!2216731 true))))

(assert (=> b!5436090 (= lt!2216723 (store ((as const (Array Context!9246 Bool)) false) lt!2216732 true))))

(assert (=> b!5436090 (= lt!2216732 (Context!9247 (Cons!61893 (reg!15568 (regOne!30990 r!7292)) Nil!61893)))))

(declare-fun b!5436091 () Bool)

(declare-fun res!2313950 () Bool)

(assert (=> b!5436091 (=> res!2313950 e!3367997)))

(declare-fun isEmpty!33888 (List!62017) Bool)

(assert (=> b!5436091 (= res!2313950 (isEmpty!33888 (t!375242 (exprs!5123 (h!68342 zl!343)))))))

(declare-fun b!5436092 () Bool)

(declare-fun res!2313933 () Bool)

(declare-fun e!3367990 () Bool)

(assert (=> b!5436092 (=> (not res!2313933) (not e!3367990))))

(declare-fun toList!9023 ((InoxSet Context!9246)) List!62018)

(assert (=> b!5436092 (= res!2313933 (= (toList!9023 z!1189) zl!343))))

(declare-fun b!5436093 () Bool)

(declare-fun res!2313951 () Bool)

(assert (=> b!5436093 (=> res!2313951 e!3367989)))

(assert (=> b!5436093 (= res!2313951 (not lt!2216728))))

(declare-fun b!5436094 () Bool)

(declare-fun e!3367975 () Bool)

(declare-fun e!3367977 () Bool)

(assert (=> b!5436094 (= e!3367975 e!3367977)))

(declare-fun res!2313949 () Bool)

(assert (=> b!5436094 (=> res!2313949 e!3367977)))

(declare-fun lt!2216729 () (InoxSet Context!9246))

(assert (=> b!5436094 (= res!2313949 (not (= lt!2216738 (derivationStepZipper!1478 lt!2216729 (h!68340 s!2326)))))))

(assert (=> b!5436094 (= (flatMap!966 lt!2216729 lambda!285622) (derivationStepZipperUp!611 lt!2216737 (h!68340 s!2326)))))

(declare-fun lt!2216743 () Unit!154478)

(assert (=> b!5436094 (= lt!2216743 (lemmaFlatMapOnSingletonSet!498 lt!2216729 lt!2216737 lambda!285622))))

(assert (=> b!5436094 (= lt!2216729 (store ((as const (Array Context!9246 Bool)) false) lt!2216737 true))))

(declare-fun b!5436095 () Bool)

(declare-fun res!2313919 () Bool)

(assert (=> b!5436095 (=> res!2313919 e!3367976)))

(declare-fun lt!2216718 () Regex!15239)

(assert (=> b!5436095 (= res!2313919 (not (= lt!2216718 r!7292)))))

(declare-fun b!5436096 () Bool)

(assert (=> b!5436096 (= e!3367974 (nullable!5408 (regOne!30990 (regOne!30990 r!7292))))))

(declare-fun b!5436097 () Bool)

(declare-fun res!2313931 () Bool)

(assert (=> b!5436097 (=> res!2313931 e!3367986)))

(assert (=> b!5436097 (= res!2313931 (not ((_ is Cons!61893) (exprs!5123 (h!68342 zl!343)))))))

(declare-fun setIsEmpty!35493 () Bool)

(declare-fun setRes!35493 () Bool)

(assert (=> setIsEmpty!35493 setRes!35493))

(declare-fun b!5436098 () Bool)

(declare-fun tp!1499071 () Bool)

(declare-fun tp!1499066 () Bool)

(assert (=> b!5436098 (= e!3367984 (and tp!1499071 tp!1499066))))

(declare-fun b!5436099 () Bool)

(assert (=> b!5436099 (= e!3367989 e!3367975)))

(declare-fun res!2313921 () Bool)

(assert (=> b!5436099 (=> res!2313921 e!3367975)))

(declare-fun e!3367995 () Bool)

(assert (=> b!5436099 (= res!2313921 e!3367995)))

(declare-fun res!2313922 () Bool)

(assert (=> b!5436099 (=> (not res!2313922) (not e!3367995))))

(declare-fun lt!2216760 () Bool)

(assert (=> b!5436099 (= res!2313922 (not lt!2216760))))

(declare-fun matchZipper!1483 ((InoxSet Context!9246) List!62016) Bool)

(assert (=> b!5436099 (= lt!2216760 (matchZipper!1483 lt!2216753 (t!375241 s!2326)))))

(declare-fun b!5436100 () Bool)

(declare-fun Unit!154480 () Unit!154478)

(assert (=> b!5436100 (= e!3367992 Unit!154480)))

(declare-fun lt!2216717 () Unit!154478)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!476 ((InoxSet Context!9246) (InoxSet Context!9246) List!62016) Unit!154478)

(assert (=> b!5436100 (= lt!2216717 (lemmaZipperConcatMatchesSameAsBothZippers!476 lt!2216753 lt!2216738 (t!375241 s!2326)))))

(declare-fun res!2313925 () Bool)

(assert (=> b!5436100 (= res!2313925 (matchZipper!1483 lt!2216753 (t!375241 s!2326)))))

(declare-fun e!3367980 () Bool)

(assert (=> b!5436100 (=> res!2313925 e!3367980)))

(assert (=> b!5436100 (= (matchZipper!1483 ((_ map or) lt!2216753 lt!2216738) (t!375241 s!2326)) e!3367980)))

(declare-fun b!5436101 () Bool)

(assert (=> b!5436101 (= e!3367990 e!3367998)))

(declare-fun res!2313953 () Bool)

(assert (=> b!5436101 (=> (not res!2313953) (not e!3367998))))

(assert (=> b!5436101 (= res!2313953 (= r!7292 lt!2216718))))

(assert (=> b!5436101 (= lt!2216718 (unfocusZipper!981 zl!343))))

(declare-fun b!5436102 () Bool)

(declare-fun res!2313942 () Bool)

(assert (=> b!5436102 (=> res!2313942 e!3367976)))

(assert (=> b!5436102 (= res!2313942 (not (= (matchZipper!1483 lt!2216757 s!2326) (matchZipper!1483 lt!2216734 (t!375241 s!2326)))))))

(declare-fun b!5436103 () Bool)

(declare-fun res!2313920 () Bool)

(assert (=> b!5436103 (=> res!2313920 e!3367975)))

(assert (=> b!5436103 (= res!2313920 lt!2216760)))

(declare-fun b!5436104 () Bool)

(declare-fun res!2313929 () Bool)

(assert (=> b!5436104 (=> res!2313929 e!3367996)))

(assert (=> b!5436104 (= res!2313929 (not (= (unfocusZipper!981 (Cons!61894 lt!2216731 Nil!61894)) lt!2216736)))))

(declare-fun b!5436105 () Bool)

(assert (=> b!5436105 (= e!3367977 e!3367994)))

(declare-fun res!2313924 () Bool)

(assert (=> b!5436105 (=> res!2313924 e!3367994)))

(declare-fun lt!2216747 () Regex!15239)

(declare-fun regexDepth!195 (Regex!15239) Int)

(assert (=> b!5436105 (= res!2313924 (< (regexDepth!195 r!7292) (regexDepth!195 lt!2216747)))))

(assert (=> b!5436105 (= lt!2216747 (generalisedConcat!908 (t!375242 (exprs!5123 (h!68342 zl!343)))))))

(declare-fun b!5436106 () Bool)

(assert (=> b!5436106 (= e!3367978 e!3367983)))

(declare-fun res!2313927 () Bool)

(assert (=> b!5436106 (=> res!2313927 e!3367983)))

(assert (=> b!5436106 (= res!2313927 (not (= (unfocusZipper!981 (Cons!61894 lt!2216721 Nil!61894)) lt!2216733)))))

(assert (=> b!5436106 (= lt!2216733 (Concat!24084 (reg!15568 (regOne!30990 r!7292)) lt!2216736))))

(declare-fun b!5436107 () Bool)

(declare-fun res!2313937 () Bool)

(assert (=> b!5436107 (=> res!2313937 e!3367975)))

(assert (=> b!5436107 (= res!2313937 (not (matchZipper!1483 lt!2216738 (t!375241 s!2326))))))

(declare-fun b!5436108 () Bool)

(declare-fun e!3367988 () Bool)

(declare-fun tp_is_empty!39731 () Bool)

(declare-fun tp!1499067 () Bool)

(assert (=> b!5436108 (= e!3367988 (and tp_is_empty!39731 tp!1499067))))

(declare-fun e!3367982 () Bool)

(declare-fun setElem!35493 () Context!9246)

(declare-fun tp!1499064 () Bool)

(declare-fun setNonEmpty!35493 () Bool)

(declare-fun inv!81344 (Context!9246) Bool)

(assert (=> setNonEmpty!35493 (= setRes!35493 (and tp!1499064 (inv!81344 setElem!35493) e!3367982))))

(declare-fun setRest!35493 () (InoxSet Context!9246))

(assert (=> setNonEmpty!35493 (= z!1189 ((_ map or) (store ((as const (Array Context!9246 Bool)) false) setElem!35493 true) setRest!35493))))

(declare-fun b!5436109 () Bool)

(declare-fun res!2313932 () Bool)

(assert (=> b!5436109 (=> res!2313932 e!3367986)))

(declare-fun isEmpty!33889 (List!62018) Bool)

(assert (=> b!5436109 (= res!2313932 (not (isEmpty!33889 (t!375243 zl!343))))))

(declare-fun b!5436110 () Bool)

(assert (=> b!5436110 (= e!3367980 (matchZipper!1483 lt!2216738 (t!375241 s!2326)))))

(declare-fun b!5436111 () Bool)

(declare-fun tp!1499072 () Bool)

(assert (=> b!5436111 (= e!3367982 tp!1499072)))

(declare-fun e!3367981 () Bool)

(declare-fun b!5436112 () Bool)

(declare-fun tp!1499068 () Bool)

(declare-fun e!3367985 () Bool)

(assert (=> b!5436112 (= e!3367981 (and (inv!81344 (h!68342 zl!343)) e!3367985 tp!1499068))))

(declare-fun b!5436113 () Bool)

(assert (=> b!5436113 (= e!3367979 e!3367993)))

(declare-fun res!2313946 () Bool)

(assert (=> b!5436113 (=> res!2313946 e!3367993)))

(assert (=> b!5436113 (= res!2313946 (not (= lt!2216753 lt!2216749)))))

(assert (=> b!5436113 (= lt!2216749 (derivationStepZipperDown!687 (reg!15568 (regOne!30990 r!7292)) lt!2216731 (h!68340 s!2326)))))

(assert (=> b!5436113 (= lt!2216731 (Context!9247 lt!2216754))))

(assert (=> b!5436113 (= lt!2216754 (Cons!61893 lt!2216739 (t!375242 (exprs!5123 (h!68342 zl!343)))))))

(assert (=> b!5436113 (= lt!2216739 (Star!15239 (reg!15568 (regOne!30990 r!7292))))))

(declare-fun b!5436114 () Bool)

(assert (=> b!5436114 (= e!3367995 (not (matchZipper!1483 lt!2216738 (t!375241 s!2326))))))

(declare-fun b!5436115 () Bool)

(declare-fun tp!1499073 () Bool)

(assert (=> b!5436115 (= e!3367985 tp!1499073)))

(assert (=> b!5436116 (= e!3367986 e!3367997)))

(declare-fun res!2313939 () Bool)

(assert (=> b!5436116 (=> res!2313939 e!3367997)))

(declare-fun lt!2216726 () Bool)

(assert (=> b!5436116 (= res!2313939 (or (not (= lt!2216720 lt!2216726)) ((_ is Nil!61892) s!2326)))))

(assert (=> b!5436116 (= (Exists!2420 lambda!285620) (Exists!2420 lambda!285621))))

(declare-fun lt!2216748 () Unit!154478)

(assert (=> b!5436116 (= lt!2216748 (lemmaExistCutMatchRandMatchRSpecEquivalent!1074 (regOne!30990 r!7292) (regTwo!30990 r!7292) s!2326))))

(assert (=> b!5436116 (= lt!2216726 (Exists!2420 lambda!285620))))

(assert (=> b!5436116 (= lt!2216726 (isDefined!12053 (findConcatSeparation!1764 (regOne!30990 r!7292) (regTwo!30990 r!7292) Nil!61892 s!2326 s!2326)))))

(declare-fun lt!2216755 () Unit!154478)

(assert (=> b!5436116 (= lt!2216755 (lemmaFindConcatSeparationEquivalentToExists!1528 (regOne!30990 r!7292) (regTwo!30990 r!7292) s!2326))))

(declare-fun b!5436117 () Bool)

(declare-fun Unit!154481 () Unit!154478)

(assert (=> b!5436117 (= e!3367992 Unit!154481)))

(declare-fun b!5436118 () Bool)

(assert (=> b!5436118 (= e!3367984 tp_is_empty!39731)))

(declare-fun b!5436119 () Bool)

(assert (=> b!5436119 (= e!3367987 e!3367991)))

(declare-fun res!2313934 () Bool)

(assert (=> b!5436119 (=> res!2313934 e!3367991)))

(assert (=> b!5436119 (= res!2313934 (not (matchR!7424 (regTwo!30990 r!7292) s!2326)))))

(assert (=> b!5436119 (= (matchR!7424 lt!2216747 s!2326) (matchZipper!1483 lt!2216729 s!2326))))

(declare-fun lt!2216740 () Unit!154478)

(declare-fun theoremZipperRegexEquiv!543 ((InoxSet Context!9246) List!62018 Regex!15239 List!62016) Unit!154478)

(assert (=> b!5436119 (= lt!2216740 (theoremZipperRegexEquiv!543 lt!2216729 lt!2216742 lt!2216747 s!2326))))

(declare-fun b!5436120 () Bool)

(declare-fun res!2313943 () Bool)

(assert (=> b!5436120 (=> res!2313943 e!3367989)))

(assert (=> b!5436120 (= res!2313943 (not (matchZipper!1483 z!1189 s!2326)))))

(declare-fun b!5436121 () Bool)

(declare-fun res!2313948 () Bool)

(assert (=> b!5436121 (=> res!2313948 e!3367979)))

(assert (=> b!5436121 (= res!2313948 (or ((_ is Concat!24084) (regOne!30990 r!7292)) (not ((_ is Star!15239) (regOne!30990 r!7292)))))))

(declare-fun res!2313930 () Bool)

(assert (=> start!570262 (=> (not res!2313930) (not e!3367990))))

(declare-fun validRegex!6975 (Regex!15239) Bool)

(assert (=> start!570262 (= res!2313930 (validRegex!6975 r!7292))))

(assert (=> start!570262 e!3367990))

(assert (=> start!570262 e!3367984))

(declare-fun condSetEmpty!35493 () Bool)

(assert (=> start!570262 (= condSetEmpty!35493 (= z!1189 ((as const (Array Context!9246 Bool)) false)))))

(assert (=> start!570262 setRes!35493))

(assert (=> start!570262 e!3367981))

(assert (=> start!570262 e!3367988))

(declare-fun b!5436087 () Bool)

(declare-fun tp!1499070 () Bool)

(assert (=> b!5436087 (= e!3367984 tp!1499070)))

(assert (= (and start!570262 res!2313930) b!5436092))

(assert (= (and b!5436092 res!2313933) b!5436101))

(assert (= (and b!5436101 res!2313953) b!5436082))

(assert (= (and b!5436082 (not res!2313952)) b!5436109))

(assert (= (and b!5436109 (not res!2313932)) b!5436079))

(assert (= (and b!5436079 (not res!2313944)) b!5436097))

(assert (= (and b!5436097 (not res!2313931)) b!5436083))

(assert (= (and b!5436083 (not res!2313940)) b!5436089))

(assert (= (and b!5436089 (not res!2313926)) b!5436116))

(assert (= (and b!5436116 (not res!2313939)) b!5436091))

(assert (= (and b!5436091 (not res!2313950)) b!5436081))

(assert (= (and b!5436081 c!948626) b!5436100))

(assert (= (and b!5436081 (not c!948626)) b!5436117))

(assert (= (and b!5436100 (not res!2313925)) b!5436110))

(assert (= (and b!5436081 (not res!2313941)) b!5436078))

(assert (= (and b!5436078 res!2313935) b!5436096))

(assert (= (and b!5436078 (not res!2313938)) b!5436121))

(assert (= (and b!5436121 (not res!2313948)) b!5436113))

(assert (= (and b!5436113 (not res!2313946)) b!5436088))

(assert (= (and b!5436088 (not res!2313923)) b!5436102))

(assert (= (and b!5436102 (not res!2313942)) b!5436095))

(assert (= (and b!5436095 (not res!2313919)) b!5436085))

(assert (= (and b!5436085 (not res!2313947)) b!5436106))

(assert (= (and b!5436106 (not res!2313927)) b!5436090))

(assert (= (and b!5436090 (not res!2313928)) b!5436104))

(assert (= (and b!5436104 (not res!2313929)) b!5436084))

(assert (= (and b!5436084 (not res!2313945)) b!5436120))

(assert (= (and b!5436120 (not res!2313943)) b!5436093))

(assert (= (and b!5436093 (not res!2313951)) b!5436099))

(assert (= (and b!5436099 res!2313922) b!5436114))

(assert (= (and b!5436099 (not res!2313921)) b!5436103))

(assert (= (and b!5436103 (not res!2313920)) b!5436107))

(assert (= (and b!5436107 (not res!2313937)) b!5436094))

(assert (= (and b!5436094 (not res!2313949)) b!5436105))

(assert (= (and b!5436105 (not res!2313924)) b!5436080))

(assert (= (and b!5436080 (not res!2313936)) b!5436119))

(assert (= (and b!5436119 (not res!2313934)) b!5436077))

(assert (= (and start!570262 ((_ is ElementMatch!15239) r!7292)) b!5436118))

(assert (= (and start!570262 ((_ is Concat!24084) r!7292)) b!5436098))

(assert (= (and start!570262 ((_ is Star!15239) r!7292)) b!5436087))

(assert (= (and start!570262 ((_ is Union!15239) r!7292)) b!5436086))

(assert (= (and start!570262 condSetEmpty!35493) setIsEmpty!35493))

(assert (= (and start!570262 (not condSetEmpty!35493)) setNonEmpty!35493))

(assert (= setNonEmpty!35493 b!5436111))

(assert (= b!5436112 b!5436115))

(assert (= (and start!570262 ((_ is Cons!61894) zl!343)) b!5436112))

(assert (= (and start!570262 ((_ is Cons!61892) s!2326)) b!5436108))

(declare-fun m!6458070 () Bool)

(assert (=> b!5436099 m!6458070))

(declare-fun m!6458072 () Bool)

(assert (=> b!5436105 m!6458072))

(declare-fun m!6458074 () Bool)

(assert (=> b!5436105 m!6458074))

(declare-fun m!6458076 () Bool)

(assert (=> b!5436105 m!6458076))

(declare-fun m!6458078 () Bool)

(assert (=> b!5436104 m!6458078))

(declare-fun m!6458080 () Bool)

(assert (=> b!5436091 m!6458080))

(declare-fun m!6458082 () Bool)

(assert (=> b!5436077 m!6458082))

(declare-fun m!6458084 () Bool)

(assert (=> b!5436077 m!6458084))

(declare-fun m!6458086 () Bool)

(assert (=> b!5436077 m!6458086))

(declare-fun m!6458088 () Bool)

(assert (=> b!5436077 m!6458088))

(declare-fun m!6458090 () Bool)

(assert (=> b!5436077 m!6458090))

(declare-fun m!6458092 () Bool)

(assert (=> b!5436077 m!6458092))

(assert (=> b!5436077 m!6458088))

(declare-fun m!6458094 () Bool)

(assert (=> b!5436077 m!6458094))

(declare-fun m!6458096 () Bool)

(assert (=> b!5436077 m!6458096))

(assert (=> b!5436077 m!6458084))

(assert (=> b!5436077 m!6458092))

(declare-fun m!6458098 () Bool)

(assert (=> b!5436077 m!6458098))

(declare-fun m!6458100 () Bool)

(assert (=> b!5436077 m!6458100))

(declare-fun m!6458102 () Bool)

(assert (=> b!5436077 m!6458102))

(assert (=> b!5436077 m!6458092))

(declare-fun m!6458104 () Bool)

(assert (=> b!5436077 m!6458104))

(declare-fun m!6458106 () Bool)

(assert (=> b!5436077 m!6458106))

(declare-fun m!6458108 () Bool)

(assert (=> b!5436077 m!6458108))

(declare-fun m!6458110 () Bool)

(assert (=> b!5436084 m!6458110))

(declare-fun m!6458112 () Bool)

(assert (=> b!5436084 m!6458112))

(declare-fun m!6458114 () Bool)

(assert (=> b!5436084 m!6458114))

(declare-fun m!6458116 () Bool)

(assert (=> b!5436116 m!6458116))

(declare-fun m!6458118 () Bool)

(assert (=> b!5436116 m!6458118))

(declare-fun m!6458120 () Bool)

(assert (=> b!5436116 m!6458120))

(assert (=> b!5436116 m!6458120))

(declare-fun m!6458122 () Bool)

(assert (=> b!5436116 m!6458122))

(declare-fun m!6458124 () Bool)

(assert (=> b!5436116 m!6458124))

(assert (=> b!5436116 m!6458116))

(declare-fun m!6458126 () Bool)

(assert (=> b!5436116 m!6458126))

(declare-fun m!6458128 () Bool)

(assert (=> b!5436082 m!6458128))

(declare-fun m!6458130 () Bool)

(assert (=> b!5436082 m!6458130))

(declare-fun m!6458132 () Bool)

(assert (=> b!5436082 m!6458132))

(declare-fun m!6458134 () Bool)

(assert (=> b!5436079 m!6458134))

(declare-fun m!6458136 () Bool)

(assert (=> b!5436094 m!6458136))

(declare-fun m!6458138 () Bool)

(assert (=> b!5436094 m!6458138))

(declare-fun m!6458140 () Bool)

(assert (=> b!5436094 m!6458140))

(declare-fun m!6458142 () Bool)

(assert (=> b!5436094 m!6458142))

(declare-fun m!6458144 () Bool)

(assert (=> b!5436094 m!6458144))

(declare-fun m!6458146 () Bool)

(assert (=> b!5436112 m!6458146))

(declare-fun m!6458148 () Bool)

(assert (=> b!5436092 m!6458148))

(declare-fun m!6458150 () Bool)

(assert (=> b!5436088 m!6458150))

(declare-fun m!6458152 () Bool)

(assert (=> b!5436088 m!6458152))

(declare-fun m!6458154 () Bool)

(assert (=> b!5436088 m!6458154))

(declare-fun m!6458156 () Bool)

(assert (=> b!5436088 m!6458156))

(declare-fun m!6458158 () Bool)

(assert (=> b!5436088 m!6458158))

(declare-fun m!6458160 () Bool)

(assert (=> b!5436081 m!6458160))

(declare-fun m!6458162 () Bool)

(assert (=> b!5436081 m!6458162))

(declare-fun m!6458164 () Bool)

(assert (=> b!5436081 m!6458164))

(declare-fun m!6458166 () Bool)

(assert (=> b!5436081 m!6458166))

(assert (=> b!5436081 m!6458140))

(declare-fun m!6458168 () Bool)

(assert (=> b!5436081 m!6458168))

(declare-fun m!6458170 () Bool)

(assert (=> b!5436081 m!6458170))

(declare-fun m!6458172 () Bool)

(assert (=> b!5436102 m!6458172))

(declare-fun m!6458174 () Bool)

(assert (=> b!5436102 m!6458174))

(declare-fun m!6458176 () Bool)

(assert (=> b!5436106 m!6458176))

(declare-fun m!6458178 () Bool)

(assert (=> b!5436113 m!6458178))

(declare-fun m!6458180 () Bool)

(assert (=> b!5436109 m!6458180))

(declare-fun m!6458182 () Bool)

(assert (=> b!5436101 m!6458182))

(declare-fun m!6458184 () Bool)

(assert (=> b!5436120 m!6458184))

(declare-fun m!6458186 () Bool)

(assert (=> b!5436083 m!6458186))

(assert (=> b!5436083 m!6458186))

(declare-fun m!6458188 () Bool)

(assert (=> b!5436083 m!6458188))

(declare-fun m!6458190 () Bool)

(assert (=> b!5436114 m!6458190))

(declare-fun m!6458192 () Bool)

(assert (=> b!5436080 m!6458192))

(declare-fun m!6458194 () Bool)

(assert (=> b!5436080 m!6458194))

(declare-fun m!6458196 () Bool)

(assert (=> b!5436096 m!6458196))

(declare-fun m!6458198 () Bool)

(assert (=> b!5436100 m!6458198))

(assert (=> b!5436100 m!6458070))

(declare-fun m!6458200 () Bool)

(assert (=> b!5436100 m!6458200))

(declare-fun m!6458202 () Bool)

(assert (=> b!5436090 m!6458202))

(declare-fun m!6458204 () Bool)

(assert (=> b!5436090 m!6458204))

(declare-fun m!6458206 () Bool)

(assert (=> b!5436090 m!6458206))

(declare-fun m!6458208 () Bool)

(assert (=> b!5436090 m!6458208))

(declare-fun m!6458210 () Bool)

(assert (=> b!5436090 m!6458210))

(declare-fun m!6458212 () Bool)

(assert (=> b!5436090 m!6458212))

(declare-fun m!6458214 () Bool)

(assert (=> b!5436090 m!6458214))

(declare-fun m!6458216 () Bool)

(assert (=> b!5436090 m!6458216))

(declare-fun m!6458218 () Bool)

(assert (=> b!5436090 m!6458218))

(declare-fun m!6458220 () Bool)

(assert (=> setNonEmpty!35493 m!6458220))

(declare-fun m!6458222 () Bool)

(assert (=> b!5436119 m!6458222))

(declare-fun m!6458224 () Bool)

(assert (=> b!5436119 m!6458224))

(declare-fun m!6458226 () Bool)

(assert (=> b!5436119 m!6458226))

(declare-fun m!6458228 () Bool)

(assert (=> b!5436119 m!6458228))

(assert (=> b!5436110 m!6458190))

(declare-fun m!6458230 () Bool)

(assert (=> start!570262 m!6458230))

(assert (=> b!5436107 m!6458190))

(check-sat (not b!5436087) (not start!570262) (not b!5436104) (not b!5436096) (not b!5436102) (not b!5436116) (not b!5436083) (not b!5436120) (not b!5436077) (not b!5436081) (not b!5436109) (not b!5436107) (not b!5436119) (not b!5436100) (not b!5436114) (not b!5436094) (not b!5436111) tp_is_empty!39731 (not b!5436108) (not b!5436106) (not b!5436088) (not b!5436091) (not b!5436079) (not b!5436110) (not b!5436092) (not b!5436080) (not b!5436084) (not b!5436115) (not b!5436086) (not b!5436105) (not b!5436112) (not b!5436082) (not b!5436098) (not b!5436090) (not b!5436099) (not b!5436101) (not setNonEmpty!35493) (not b!5436113))
(check-sat)
