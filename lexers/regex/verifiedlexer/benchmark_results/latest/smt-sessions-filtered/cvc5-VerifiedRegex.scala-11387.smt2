; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!607212 () Bool)

(assert start!607212)

(declare-fun b!6037326 () Bool)

(assert (=> b!6037326 true))

(assert (=> b!6037326 true))

(declare-fun lambda!329244 () Int)

(declare-fun lambda!329243 () Int)

(assert (=> b!6037326 (not (= lambda!329244 lambda!329243))))

(assert (=> b!6037326 true))

(assert (=> b!6037326 true))

(declare-fun b!6037340 () Bool)

(assert (=> b!6037340 true))

(declare-fun res!2513809 () Bool)

(declare-fun e!3687791 () Bool)

(assert (=> start!607212 (=> (not res!2513809) (not e!3687791))))

(declare-datatypes ((C!32310 0))(
  ( (C!32311 (val!25857 Int)) )
))
(declare-datatypes ((Regex!16020 0))(
  ( (ElementMatch!16020 (c!1082125 C!32310)) (Concat!24865 (regOne!32552 Regex!16020) (regTwo!32552 Regex!16020)) (EmptyExpr!16020) (Star!16020 (reg!16349 Regex!16020)) (EmptyLang!16020) (Union!16020 (regOne!32553 Regex!16020) (regTwo!32553 Regex!16020)) )
))
(declare-fun r!7292 () Regex!16020)

(declare-fun validRegex!7756 (Regex!16020) Bool)

(assert (=> start!607212 (= res!2513809 (validRegex!7756 r!7292))))

(assert (=> start!607212 e!3687791))

(declare-fun e!3687809 () Bool)

(assert (=> start!607212 e!3687809))

(declare-fun condSetEmpty!40838 () Bool)

(declare-datatypes ((List!64359 0))(
  ( (Nil!64235) (Cons!64235 (h!70683 Regex!16020) (t!377788 List!64359)) )
))
(declare-datatypes ((Context!10808 0))(
  ( (Context!10809 (exprs!5904 List!64359)) )
))
(declare-fun z!1189 () (Set Context!10808))

(assert (=> start!607212 (= condSetEmpty!40838 (= z!1189 (as set.empty (Set Context!10808))))))

(declare-fun setRes!40838 () Bool)

(assert (=> start!607212 setRes!40838))

(declare-fun e!3687801 () Bool)

(assert (=> start!607212 e!3687801))

(declare-fun e!3687800 () Bool)

(assert (=> start!607212 e!3687800))

(declare-fun b!6037311 () Bool)

(declare-fun e!3687808 () Bool)

(assert (=> b!6037311 (= e!3687791 (not e!3687808))))

(declare-fun res!2513813 () Bool)

(assert (=> b!6037311 (=> res!2513813 e!3687808)))

(declare-datatypes ((List!64360 0))(
  ( (Nil!64236) (Cons!64236 (h!70684 Context!10808) (t!377789 List!64360)) )
))
(declare-fun zl!343 () List!64360)

(assert (=> b!6037311 (= res!2513813 (not (is-Cons!64236 zl!343)))))

(declare-fun lt!2322700 () Bool)

(declare-datatypes ((List!64361 0))(
  ( (Nil!64237) (Cons!64237 (h!70685 C!32310) (t!377790 List!64361)) )
))
(declare-fun s!2326 () List!64361)

(declare-fun matchRSpec!3121 (Regex!16020 List!64361) Bool)

(assert (=> b!6037311 (= lt!2322700 (matchRSpec!3121 r!7292 s!2326))))

(declare-fun matchR!8203 (Regex!16020 List!64361) Bool)

(assert (=> b!6037311 (= lt!2322700 (matchR!8203 r!7292 s!2326))))

(declare-datatypes ((Unit!157311 0))(
  ( (Unit!157312) )
))
(declare-fun lt!2322720 () Unit!157311)

(declare-fun mainMatchTheorem!3121 (Regex!16020 List!64361) Unit!157311)

(assert (=> b!6037311 (= lt!2322720 (mainMatchTheorem!3121 r!7292 s!2326))))

(declare-fun setIsEmpty!40838 () Bool)

(assert (=> setIsEmpty!40838 setRes!40838))

(declare-fun b!6037312 () Bool)

(declare-fun e!3687797 () Bool)

(declare-fun e!3687798 () Bool)

(assert (=> b!6037312 (= e!3687797 e!3687798)))

(declare-fun res!2513798 () Bool)

(assert (=> b!6037312 (=> res!2513798 e!3687798)))

(declare-fun lt!2322717 () (Set Context!10808))

(declare-fun lt!2322704 () (Set Context!10808))

(assert (=> b!6037312 (= res!2513798 (not (= lt!2322717 lt!2322704)))))

(declare-fun lt!2322716 () Context!10808)

(declare-fun derivationStepZipperDown!1270 (Regex!16020 Context!10808 C!32310) (Set Context!10808))

(assert (=> b!6037312 (= lt!2322704 (derivationStepZipperDown!1270 r!7292 lt!2322716 (h!70685 s!2326)))))

(assert (=> b!6037312 (= lt!2322716 (Context!10809 Nil!64235))))

(declare-fun lt!2322710 () Context!10808)

(declare-fun derivationStepZipperUp!1196 (Context!10808 C!32310) (Set Context!10808))

(assert (=> b!6037312 (= lt!2322717 (derivationStepZipperUp!1196 lt!2322710 (h!70685 s!2326)))))

(assert (=> b!6037312 (= lt!2322710 (Context!10809 (Cons!64235 r!7292 Nil!64235)))))

(declare-fun lt!2322721 () (Set Context!10808))

(declare-fun derivationStepZipper!2001 ((Set Context!10808) C!32310) (Set Context!10808))

(assert (=> b!6037312 (= lt!2322721 (derivationStepZipper!2001 z!1189 (h!70685 s!2326)))))

(declare-fun b!6037313 () Bool)

(declare-fun res!2513796 () Bool)

(declare-fun e!3687790 () Bool)

(assert (=> b!6037313 (=> res!2513796 e!3687790)))

(declare-fun lt!2322733 () Context!10808)

(declare-fun lt!2322701 () Int)

(declare-fun contextDepth!168 (Context!10808) Int)

(assert (=> b!6037313 (= res!2513796 (>= (contextDepth!168 lt!2322733) lt!2322701))))

(declare-fun b!6037314 () Bool)

(declare-fun res!2513805 () Bool)

(assert (=> b!6037314 (=> res!2513805 e!3687808)))

(declare-fun isEmpty!36139 (List!64360) Bool)

(assert (=> b!6037314 (= res!2513805 (not (isEmpty!36139 (t!377789 zl!343))))))

(declare-fun b!6037315 () Bool)

(declare-fun e!3687807 () Bool)

(declare-fun e!3687799 () Bool)

(assert (=> b!6037315 (= e!3687807 e!3687799)))

(declare-fun res!2513803 () Bool)

(assert (=> b!6037315 (=> res!2513803 e!3687799)))

(declare-fun lt!2322730 () Int)

(assert (=> b!6037315 (= res!2513803 (>= lt!2322730 lt!2322701))))

(assert (=> b!6037315 (= lt!2322701 (contextDepth!168 lt!2322710))))

(declare-fun lt!2322698 () Context!10808)

(assert (=> b!6037315 (= lt!2322730 (contextDepth!168 lt!2322698))))

(declare-fun b!6037316 () Bool)

(declare-fun tp!1678886 () Bool)

(assert (=> b!6037316 (= e!3687809 tp!1678886)))

(declare-fun b!6037317 () Bool)

(declare-fun tp!1678879 () Bool)

(declare-fun tp!1678881 () Bool)

(assert (=> b!6037317 (= e!3687809 (and tp!1678879 tp!1678881))))

(declare-fun b!6037318 () Bool)

(declare-fun e!3687792 () Bool)

(declare-fun e!3687793 () Bool)

(assert (=> b!6037318 (= e!3687792 e!3687793)))

(declare-fun res!2513812 () Bool)

(assert (=> b!6037318 (=> res!2513812 e!3687793)))

(declare-fun lt!2322699 () (Set Context!10808))

(assert (=> b!6037318 (= res!2513812 (not (= lt!2322721 lt!2322699)))))

(declare-fun lt!2322715 () (Set Context!10808))

(declare-fun lt!2322706 () (Set Context!10808))

(assert (=> b!6037318 (= lt!2322699 (set.union lt!2322715 lt!2322706))))

(declare-fun b!6037319 () Bool)

(declare-fun e!3687804 () Bool)

(declare-fun tp!1678880 () Bool)

(declare-fun inv!83298 (Context!10808) Bool)

(assert (=> b!6037319 (= e!3687801 (and (inv!83298 (h!70684 zl!343)) e!3687804 tp!1678880))))

(declare-fun b!6037320 () Bool)

(declare-fun res!2513800 () Bool)

(assert (=> b!6037320 (=> (not res!2513800) (not e!3687791))))

(declare-fun toList!9804 ((Set Context!10808)) List!64360)

(assert (=> b!6037320 (= res!2513800 (= (toList!9804 z!1189) zl!343))))

(declare-fun b!6037321 () Bool)

(declare-fun e!3687803 () Bool)

(assert (=> b!6037321 (= e!3687793 e!3687803)))

(declare-fun res!2513788 () Bool)

(assert (=> b!6037321 (=> res!2513788 e!3687803)))

(declare-fun lt!2322705 () Bool)

(declare-fun matchZipper!2056 ((Set Context!10808) List!64361) Bool)

(assert (=> b!6037321 (= res!2513788 (not (= lt!2322705 (matchZipper!2056 lt!2322721 (t!377790 s!2326)))))))

(declare-fun lt!2322712 () Bool)

(assert (=> b!6037321 (= lt!2322712 lt!2322705)))

(declare-fun e!3687789 () Bool)

(assert (=> b!6037321 (= lt!2322705 e!3687789)))

(declare-fun res!2513792 () Bool)

(assert (=> b!6037321 (=> res!2513792 e!3687789)))

(declare-fun lt!2322734 () Bool)

(assert (=> b!6037321 (= res!2513792 lt!2322734)))

(assert (=> b!6037321 (= lt!2322712 (matchZipper!2056 lt!2322699 (t!377790 s!2326)))))

(assert (=> b!6037321 (= lt!2322734 (matchZipper!2056 lt!2322715 (t!377790 s!2326)))))

(declare-fun lt!2322732 () Unit!157311)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!887 ((Set Context!10808) (Set Context!10808) List!64361) Unit!157311)

(assert (=> b!6037321 (= lt!2322732 (lemmaZipperConcatMatchesSameAsBothZippers!887 lt!2322715 lt!2322706 (t!377790 s!2326)))))

(declare-fun b!6037322 () Bool)

(declare-fun e!3687796 () Bool)

(assert (=> b!6037322 (= e!3687790 e!3687796)))

(declare-fun res!2513799 () Bool)

(assert (=> b!6037322 (=> res!2513799 e!3687796)))

(declare-fun lt!2322709 () List!64360)

(declare-fun lt!2322727 () Int)

(declare-fun zipperDepth!269 (List!64360) Int)

(assert (=> b!6037322 (= res!2513799 (>= (zipperDepth!269 lt!2322709) lt!2322727))))

(assert (=> b!6037322 (= lt!2322709 (Cons!64236 lt!2322733 Nil!64236))))

(declare-fun b!6037323 () Bool)

(declare-fun e!3687802 () Bool)

(declare-fun tp!1678885 () Bool)

(assert (=> b!6037323 (= e!3687802 tp!1678885)))

(declare-fun b!6037324 () Bool)

(declare-fun res!2513815 () Bool)

(declare-fun e!3687794 () Bool)

(assert (=> b!6037324 (=> res!2513815 e!3687794)))

(declare-fun lt!2322722 () (Set Context!10808))

(assert (=> b!6037324 (= res!2513815 (not (= (toList!9804 lt!2322722) lt!2322709)))))

(declare-fun b!6037325 () Bool)

(declare-fun tp!1678887 () Bool)

(declare-fun tp!1678882 () Bool)

(assert (=> b!6037325 (= e!3687809 (and tp!1678887 tp!1678882))))

(assert (=> b!6037326 (= e!3687808 e!3687797)))

(declare-fun res!2513814 () Bool)

(assert (=> b!6037326 (=> res!2513814 e!3687797)))

(declare-fun lt!2322724 () Bool)

(assert (=> b!6037326 (= res!2513814 (or (not (= lt!2322700 lt!2322724)) (is-Nil!64237 s!2326)))))

(declare-fun Exists!3090 (Int) Bool)

(assert (=> b!6037326 (= (Exists!3090 lambda!329243) (Exists!3090 lambda!329244))))

(declare-fun lt!2322725 () Unit!157311)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1627 (Regex!16020 Regex!16020 List!64361) Unit!157311)

(assert (=> b!6037326 (= lt!2322725 (lemmaExistCutMatchRandMatchRSpecEquivalent!1627 (regOne!32552 r!7292) (regTwo!32552 r!7292) s!2326))))

(assert (=> b!6037326 (= lt!2322724 (Exists!3090 lambda!329243))))

(declare-datatypes ((tuple2!65998 0))(
  ( (tuple2!65999 (_1!36302 List!64361) (_2!36302 List!64361)) )
))
(declare-datatypes ((Option!15911 0))(
  ( (None!15910) (Some!15910 (v!52027 tuple2!65998)) )
))
(declare-fun isDefined!12614 (Option!15911) Bool)

(declare-fun findConcatSeparation!2325 (Regex!16020 Regex!16020 List!64361 List!64361 List!64361) Option!15911)

(assert (=> b!6037326 (= lt!2322724 (isDefined!12614 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) Nil!64237 s!2326 s!2326)))))

(declare-fun lt!2322708 () Unit!157311)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2089 (Regex!16020 Regex!16020 List!64361) Unit!157311)

(assert (=> b!6037326 (= lt!2322708 (lemmaFindConcatSeparationEquivalentToExists!2089 (regOne!32552 r!7292) (regTwo!32552 r!7292) s!2326))))

(declare-fun b!6037327 () Bool)

(declare-fun res!2513793 () Bool)

(assert (=> b!6037327 (=> res!2513793 e!3687803)))

(declare-fun lt!2322726 () (Set Context!10808))

(declare-fun lt!2322713 () (Set Context!10808))

(assert (=> b!6037327 (= res!2513793 (or (not (= lt!2322726 (set.union lt!2322715 lt!2322713))) (not (= lt!2322726 lt!2322699)) (not (= lt!2322726 lt!2322721))))))

(declare-fun b!6037328 () Bool)

(declare-fun e!3687806 () Bool)

(assert (=> b!6037328 (= e!3687803 e!3687806)))

(declare-fun res!2513790 () Bool)

(assert (=> b!6037328 (=> res!2513790 e!3687806)))

(declare-fun lt!2322714 () Bool)

(declare-fun lt!2322718 () (Set Context!10808))

(assert (=> b!6037328 (= res!2513790 (not (= lt!2322714 (matchZipper!2056 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) (t!377790 s!2326)))))))

(assert (=> b!6037328 (= lt!2322714 (matchZipper!2056 lt!2322718 s!2326))))

(declare-fun b!6037329 () Bool)

(declare-fun e!3687795 () Bool)

(assert (=> b!6037329 (= e!3687795 e!3687794)))

(declare-fun res!2513810 () Bool)

(assert (=> b!6037329 (=> res!2513810 e!3687794)))

(assert (=> b!6037329 (= res!2513810 (not (validRegex!7756 (regTwo!32552 r!7292))))))

(declare-fun lt!2322697 () Regex!16020)

(assert (=> b!6037329 (= (matchR!8203 lt!2322697 s!2326) lt!2322714)))

(declare-fun lt!2322702 () List!64360)

(declare-fun lt!2322731 () Unit!157311)

(declare-fun theoremZipperRegexEquiv!712 ((Set Context!10808) List!64360 Regex!16020 List!64361) Unit!157311)

(assert (=> b!6037329 (= lt!2322731 (theoremZipperRegexEquiv!712 lt!2322718 lt!2322702 lt!2322697 s!2326))))

(declare-fun b!6037330 () Bool)

(declare-fun tp_is_empty!41293 () Bool)

(declare-fun tp!1678884 () Bool)

(assert (=> b!6037330 (= e!3687800 (and tp_is_empty!41293 tp!1678884))))

(declare-fun b!6037331 () Bool)

(declare-fun res!2513801 () Bool)

(assert (=> b!6037331 (=> (not res!2513801) (not e!3687791))))

(declare-fun unfocusZipper!1762 (List!64360) Regex!16020)

(assert (=> b!6037331 (= res!2513801 (= r!7292 (unfocusZipper!1762 zl!343)))))

(declare-fun b!6037332 () Bool)

(assert (=> b!6037332 (= e!3687796 e!3687795)))

(declare-fun res!2513802 () Bool)

(assert (=> b!6037332 (=> res!2513802 e!3687795)))

(declare-fun regexDepth!277 (Regex!16020) Int)

(assert (=> b!6037332 (= res!2513802 (not (= (regexDepth!277 r!7292) (regexDepth!277 lt!2322697))))))

(assert (=> b!6037332 (= lt!2322697 (Concat!24865 (regOne!32552 r!7292) (regTwo!32552 r!7292)))))

(declare-fun setElem!40838 () Context!10808)

(declare-fun tp!1678888 () Bool)

(declare-fun setNonEmpty!40838 () Bool)

(assert (=> setNonEmpty!40838 (= setRes!40838 (and tp!1678888 (inv!83298 setElem!40838) e!3687802))))

(declare-fun setRest!40838 () (Set Context!10808))

(assert (=> setNonEmpty!40838 (= z!1189 (set.union (set.insert setElem!40838 (as set.empty (Set Context!10808))) setRest!40838))))

(declare-fun b!6037333 () Bool)

(declare-fun e!3687805 () Bool)

(assert (=> b!6037333 (= e!3687805 e!3687792)))

(declare-fun res!2513789 () Bool)

(assert (=> b!6037333 (=> res!2513789 e!3687792)))

(declare-fun nullable!6015 (Regex!16020) Bool)

(assert (=> b!6037333 (= res!2513789 (not (nullable!6015 (regOne!32552 r!7292))))))

(assert (=> b!6037333 (= lt!2322706 (derivationStepZipperDown!1270 (regTwo!32552 r!7292) lt!2322716 (h!70685 s!2326)))))

(assert (=> b!6037333 (= lt!2322715 (derivationStepZipperDown!1270 (regOne!32552 r!7292) lt!2322733 (h!70685 s!2326)))))

(declare-fun lambda!329245 () Int)

(declare-fun flatMap!1533 ((Set Context!10808) Int) (Set Context!10808))

(assert (=> b!6037333 (= (flatMap!1533 lt!2322722 lambda!329245) (derivationStepZipperUp!1196 lt!2322733 (h!70685 s!2326)))))

(declare-fun lt!2322728 () Unit!157311)

(declare-fun lemmaFlatMapOnSingletonSet!1059 ((Set Context!10808) Context!10808 Int) Unit!157311)

(assert (=> b!6037333 (= lt!2322728 (lemmaFlatMapOnSingletonSet!1059 lt!2322722 lt!2322733 lambda!329245))))

(assert (=> b!6037333 (= (flatMap!1533 lt!2322718 lambda!329245) (derivationStepZipperUp!1196 lt!2322698 (h!70685 s!2326)))))

(declare-fun lt!2322719 () Unit!157311)

(assert (=> b!6037333 (= lt!2322719 (lemmaFlatMapOnSingletonSet!1059 lt!2322718 lt!2322698 lambda!329245))))

(assert (=> b!6037333 (= lt!2322713 (derivationStepZipperUp!1196 lt!2322733 (h!70685 s!2326)))))

(assert (=> b!6037333 (= lt!2322726 (derivationStepZipperUp!1196 lt!2322698 (h!70685 s!2326)))))

(assert (=> b!6037333 (= lt!2322722 (set.insert lt!2322733 (as set.empty (Set Context!10808))))))

(declare-fun lt!2322729 () List!64359)

(assert (=> b!6037333 (= lt!2322733 (Context!10809 lt!2322729))))

(assert (=> b!6037333 (= lt!2322718 (set.insert lt!2322698 (as set.empty (Set Context!10808))))))

(assert (=> b!6037333 (= lt!2322698 (Context!10809 (Cons!64235 (regOne!32552 r!7292) lt!2322729)))))

(assert (=> b!6037333 (= lt!2322729 (Cons!64235 (regTwo!32552 r!7292) Nil!64235))))

(declare-fun b!6037334 () Bool)

(assert (=> b!6037334 (= e!3687789 (matchZipper!2056 lt!2322706 (t!377790 s!2326)))))

(declare-fun b!6037335 () Bool)

(declare-fun res!2513797 () Bool)

(assert (=> b!6037335 (=> res!2513797 e!3687808)))

(assert (=> b!6037335 (= res!2513797 (or (is-EmptyExpr!16020 r!7292) (is-EmptyLang!16020 r!7292) (is-ElementMatch!16020 r!7292) (is-Union!16020 r!7292) (not (is-Concat!24865 r!7292))))))

(declare-fun b!6037336 () Bool)

(declare-fun res!2513794 () Bool)

(assert (=> b!6037336 (=> res!2513794 e!3687808)))

(declare-fun generalisedConcat!1617 (List!64359) Regex!16020)

(assert (=> b!6037336 (= res!2513794 (not (= r!7292 (generalisedConcat!1617 (exprs!5904 (h!70684 zl!343))))))))

(declare-fun b!6037337 () Bool)

(declare-fun res!2513804 () Bool)

(assert (=> b!6037337 (=> res!2513804 e!3687797)))

(declare-fun isEmpty!36140 (List!64359) Bool)

(assert (=> b!6037337 (= res!2513804 (not (isEmpty!36140 (t!377788 (exprs!5904 (h!70684 zl!343))))))))

(declare-fun b!6037338 () Bool)

(declare-fun res!2513811 () Bool)

(assert (=> b!6037338 (=> res!2513811 e!3687808)))

(declare-fun generalisedUnion!1864 (List!64359) Regex!16020)

(declare-fun unfocusZipperList!1441 (List!64360) List!64359)

(assert (=> b!6037338 (= res!2513811 (not (= r!7292 (generalisedUnion!1864 (unfocusZipperList!1441 zl!343)))))))

(declare-fun b!6037339 () Bool)

(assert (=> b!6037339 (= e!3687799 e!3687790)))

(declare-fun res!2513807 () Bool)

(assert (=> b!6037339 (=> res!2513807 e!3687790)))

(declare-fun lt!2322707 () Int)

(assert (=> b!6037339 (= res!2513807 (>= lt!2322707 lt!2322727))))

(assert (=> b!6037339 (= lt!2322727 (zipperDepth!269 (Cons!64236 lt!2322710 Nil!64236)))))

(assert (=> b!6037339 (= lt!2322707 (zipperDepth!269 lt!2322702))))

(assert (=> b!6037339 (= lt!2322702 (Cons!64236 lt!2322698 Nil!64236))))

(assert (=> b!6037340 (= e!3687798 e!3687805)))

(declare-fun res!2513806 () Bool)

(assert (=> b!6037340 (=> res!2513806 e!3687805)))

(assert (=> b!6037340 (= res!2513806 (not (= lt!2322721 lt!2322704)))))

(assert (=> b!6037340 (= (flatMap!1533 z!1189 lambda!329245) (derivationStepZipperUp!1196 (h!70684 zl!343) (h!70685 s!2326)))))

(declare-fun lt!2322711 () Unit!157311)

(assert (=> b!6037340 (= lt!2322711 (lemmaFlatMapOnSingletonSet!1059 z!1189 (h!70684 zl!343) lambda!329245))))

(declare-fun b!6037341 () Bool)

(assert (=> b!6037341 (= e!3687806 e!3687807)))

(declare-fun res!2513808 () Bool)

(assert (=> b!6037341 (=> res!2513808 e!3687807)))

(declare-fun lt!2322723 () Bool)

(assert (=> b!6037341 (= res!2513808 (not (= lt!2322723 (matchZipper!2056 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) (t!377790 s!2326)))))))

(assert (=> b!6037341 (= lt!2322723 (matchZipper!2056 lt!2322722 s!2326))))

(declare-fun b!6037342 () Bool)

(assert (=> b!6037342 (= e!3687809 tp_is_empty!41293)))

(declare-fun b!6037343 () Bool)

(declare-fun tp!1678883 () Bool)

(assert (=> b!6037343 (= e!3687804 tp!1678883)))

(declare-fun b!6037344 () Bool)

(declare-fun res!2513795 () Bool)

(assert (=> b!6037344 (=> res!2513795 e!3687794)))

(assert (=> b!6037344 (= res!2513795 (not (= (regTwo!32552 r!7292) (unfocusZipper!1762 lt!2322709))))))

(declare-fun b!6037345 () Bool)

(assert (=> b!6037345 (= e!3687794 (= lt!2322700 (matchZipper!2056 z!1189 s!2326)))))

(assert (=> b!6037345 (= (matchR!8203 (regTwo!32552 r!7292) s!2326) lt!2322723)))

(declare-fun lt!2322703 () Unit!157311)

(assert (=> b!6037345 (= lt!2322703 (theoremZipperRegexEquiv!712 lt!2322722 lt!2322709 (regTwo!32552 r!7292) s!2326))))

(declare-fun b!6037346 () Bool)

(declare-fun res!2513791 () Bool)

(assert (=> b!6037346 (=> res!2513791 e!3687808)))

(assert (=> b!6037346 (= res!2513791 (not (is-Cons!64235 (exprs!5904 (h!70684 zl!343)))))))

(assert (= (and start!607212 res!2513809) b!6037320))

(assert (= (and b!6037320 res!2513800) b!6037331))

(assert (= (and b!6037331 res!2513801) b!6037311))

(assert (= (and b!6037311 (not res!2513813)) b!6037314))

(assert (= (and b!6037314 (not res!2513805)) b!6037336))

(assert (= (and b!6037336 (not res!2513794)) b!6037346))

(assert (= (and b!6037346 (not res!2513791)) b!6037338))

(assert (= (and b!6037338 (not res!2513811)) b!6037335))

(assert (= (and b!6037335 (not res!2513797)) b!6037326))

(assert (= (and b!6037326 (not res!2513814)) b!6037337))

(assert (= (and b!6037337 (not res!2513804)) b!6037312))

(assert (= (and b!6037312 (not res!2513798)) b!6037340))

(assert (= (and b!6037340 (not res!2513806)) b!6037333))

(assert (= (and b!6037333 (not res!2513789)) b!6037318))

(assert (= (and b!6037318 (not res!2513812)) b!6037321))

(assert (= (and b!6037321 (not res!2513792)) b!6037334))

(assert (= (and b!6037321 (not res!2513788)) b!6037327))

(assert (= (and b!6037327 (not res!2513793)) b!6037328))

(assert (= (and b!6037328 (not res!2513790)) b!6037341))

(assert (= (and b!6037341 (not res!2513808)) b!6037315))

(assert (= (and b!6037315 (not res!2513803)) b!6037339))

(assert (= (and b!6037339 (not res!2513807)) b!6037313))

(assert (= (and b!6037313 (not res!2513796)) b!6037322))

(assert (= (and b!6037322 (not res!2513799)) b!6037332))

(assert (= (and b!6037332 (not res!2513802)) b!6037329))

(assert (= (and b!6037329 (not res!2513810)) b!6037324))

(assert (= (and b!6037324 (not res!2513815)) b!6037344))

(assert (= (and b!6037344 (not res!2513795)) b!6037345))

(assert (= (and start!607212 (is-ElementMatch!16020 r!7292)) b!6037342))

(assert (= (and start!607212 (is-Concat!24865 r!7292)) b!6037317))

(assert (= (and start!607212 (is-Star!16020 r!7292)) b!6037316))

(assert (= (and start!607212 (is-Union!16020 r!7292)) b!6037325))

(assert (= (and start!607212 condSetEmpty!40838) setIsEmpty!40838))

(assert (= (and start!607212 (not condSetEmpty!40838)) setNonEmpty!40838))

(assert (= setNonEmpty!40838 b!6037323))

(assert (= b!6037319 b!6037343))

(assert (= (and start!607212 (is-Cons!64236 zl!343)) b!6037319))

(assert (= (and start!607212 (is-Cons!64237 s!2326)) b!6037330))

(declare-fun m!6907582 () Bool)

(assert (=> b!6037341 m!6907582))

(assert (=> b!6037341 m!6907582))

(declare-fun m!6907584 () Bool)

(assert (=> b!6037341 m!6907584))

(declare-fun m!6907586 () Bool)

(assert (=> b!6037341 m!6907586))

(declare-fun m!6907588 () Bool)

(assert (=> b!6037339 m!6907588))

(declare-fun m!6907590 () Bool)

(assert (=> b!6037339 m!6907590))

(declare-fun m!6907592 () Bool)

(assert (=> b!6037338 m!6907592))

(assert (=> b!6037338 m!6907592))

(declare-fun m!6907594 () Bool)

(assert (=> b!6037338 m!6907594))

(declare-fun m!6907596 () Bool)

(assert (=> b!6037314 m!6907596))

(declare-fun m!6907598 () Bool)

(assert (=> b!6037319 m!6907598))

(declare-fun m!6907600 () Bool)

(assert (=> b!6037340 m!6907600))

(declare-fun m!6907602 () Bool)

(assert (=> b!6037340 m!6907602))

(declare-fun m!6907604 () Bool)

(assert (=> b!6037340 m!6907604))

(declare-fun m!6907606 () Bool)

(assert (=> b!6037324 m!6907606))

(declare-fun m!6907608 () Bool)

(assert (=> b!6037321 m!6907608))

(declare-fun m!6907610 () Bool)

(assert (=> b!6037321 m!6907610))

(declare-fun m!6907612 () Bool)

(assert (=> b!6037321 m!6907612))

(declare-fun m!6907614 () Bool)

(assert (=> b!6037321 m!6907614))

(declare-fun m!6907616 () Bool)

(assert (=> b!6037344 m!6907616))

(declare-fun m!6907618 () Bool)

(assert (=> b!6037334 m!6907618))

(declare-fun m!6907620 () Bool)

(assert (=> b!6037326 m!6907620))

(declare-fun m!6907622 () Bool)

(assert (=> b!6037326 m!6907622))

(declare-fun m!6907624 () Bool)

(assert (=> b!6037326 m!6907624))

(assert (=> b!6037326 m!6907624))

(declare-fun m!6907626 () Bool)

(assert (=> b!6037326 m!6907626))

(declare-fun m!6907628 () Bool)

(assert (=> b!6037326 m!6907628))

(assert (=> b!6037326 m!6907620))

(declare-fun m!6907630 () Bool)

(assert (=> b!6037326 m!6907630))

(declare-fun m!6907632 () Bool)

(assert (=> b!6037315 m!6907632))

(declare-fun m!6907634 () Bool)

(assert (=> b!6037315 m!6907634))

(declare-fun m!6907636 () Bool)

(assert (=> b!6037329 m!6907636))

(declare-fun m!6907638 () Bool)

(assert (=> b!6037329 m!6907638))

(declare-fun m!6907640 () Bool)

(assert (=> b!6037329 m!6907640))

(declare-fun m!6907642 () Bool)

(assert (=> b!6037312 m!6907642))

(declare-fun m!6907644 () Bool)

(assert (=> b!6037312 m!6907644))

(declare-fun m!6907646 () Bool)

(assert (=> b!6037312 m!6907646))

(declare-fun m!6907648 () Bool)

(assert (=> b!6037345 m!6907648))

(declare-fun m!6907650 () Bool)

(assert (=> b!6037345 m!6907650))

(declare-fun m!6907652 () Bool)

(assert (=> b!6037345 m!6907652))

(declare-fun m!6907654 () Bool)

(assert (=> b!6037313 m!6907654))

(declare-fun m!6907656 () Bool)

(assert (=> start!607212 m!6907656))

(declare-fun m!6907658 () Bool)

(assert (=> b!6037320 m!6907658))

(declare-fun m!6907660 () Bool)

(assert (=> b!6037322 m!6907660))

(declare-fun m!6907662 () Bool)

(assert (=> b!6037333 m!6907662))

(declare-fun m!6907664 () Bool)

(assert (=> b!6037333 m!6907664))

(declare-fun m!6907666 () Bool)

(assert (=> b!6037333 m!6907666))

(declare-fun m!6907668 () Bool)

(assert (=> b!6037333 m!6907668))

(declare-fun m!6907670 () Bool)

(assert (=> b!6037333 m!6907670))

(declare-fun m!6907672 () Bool)

(assert (=> b!6037333 m!6907672))

(declare-fun m!6907674 () Bool)

(assert (=> b!6037333 m!6907674))

(declare-fun m!6907676 () Bool)

(assert (=> b!6037333 m!6907676))

(declare-fun m!6907678 () Bool)

(assert (=> b!6037333 m!6907678))

(declare-fun m!6907680 () Bool)

(assert (=> b!6037333 m!6907680))

(declare-fun m!6907682 () Bool)

(assert (=> b!6037333 m!6907682))

(declare-fun m!6907684 () Bool)

(assert (=> b!6037331 m!6907684))

(declare-fun m!6907686 () Bool)

(assert (=> b!6037332 m!6907686))

(declare-fun m!6907688 () Bool)

(assert (=> b!6037332 m!6907688))

(declare-fun m!6907690 () Bool)

(assert (=> b!6037328 m!6907690))

(assert (=> b!6037328 m!6907690))

(declare-fun m!6907692 () Bool)

(assert (=> b!6037328 m!6907692))

(declare-fun m!6907694 () Bool)

(assert (=> b!6037328 m!6907694))

(declare-fun m!6907696 () Bool)

(assert (=> b!6037311 m!6907696))

(declare-fun m!6907698 () Bool)

(assert (=> b!6037311 m!6907698))

(declare-fun m!6907700 () Bool)

(assert (=> b!6037311 m!6907700))

(declare-fun m!6907702 () Bool)

(assert (=> b!6037336 m!6907702))

(declare-fun m!6907704 () Bool)

(assert (=> b!6037337 m!6907704))

(declare-fun m!6907706 () Bool)

(assert (=> setNonEmpty!40838 m!6907706))

(push 1)

(assert (not start!607212))

(assert (not b!6037338))

(assert (not b!6037341))

(assert (not b!6037319))

(assert (not b!6037340))

(assert (not b!6037330))

(assert (not b!6037345))

(assert (not b!6037328))

(assert (not b!6037312))

(assert (not b!6037322))

(assert (not setNonEmpty!40838))

(assert (not b!6037333))

(assert (not b!6037316))

(assert (not b!6037325))

(assert (not b!6037337))

(assert (not b!6037329))

(assert (not b!6037320))

(assert (not b!6037314))

(assert (not b!6037343))

(assert (not b!6037311))

(assert (not b!6037336))

(assert (not b!6037321))

(assert tp_is_empty!41293)

(assert (not b!6037334))

(assert (not b!6037313))

(assert (not b!6037317))

(assert (not b!6037339))

(assert (not b!6037344))

(assert (not b!6037324))

(assert (not b!6037323))

(assert (not b!6037315))

(assert (not b!6037332))

(assert (not b!6037326))

(assert (not b!6037331))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1893240 () Bool)

(declare-fun c!1082136 () Bool)

(declare-fun isEmpty!36143 (List!64361) Bool)

(assert (=> d!1893240 (= c!1082136 (isEmpty!36143 s!2326))))

(declare-fun e!3687881 () Bool)

(assert (=> d!1893240 (= (matchZipper!2056 z!1189 s!2326) e!3687881)))

(declare-fun b!6037483 () Bool)

(declare-fun nullableZipper!1825 ((Set Context!10808)) Bool)

(assert (=> b!6037483 (= e!3687881 (nullableZipper!1825 z!1189))))

(declare-fun b!6037484 () Bool)

(declare-fun head!12577 (List!64361) C!32310)

(declare-fun tail!11662 (List!64361) List!64361)

(assert (=> b!6037484 (= e!3687881 (matchZipper!2056 (derivationStepZipper!2001 z!1189 (head!12577 s!2326)) (tail!11662 s!2326)))))

(assert (= (and d!1893240 c!1082136) b!6037483))

(assert (= (and d!1893240 (not c!1082136)) b!6037484))

(declare-fun m!6907834 () Bool)

(assert (=> d!1893240 m!6907834))

(declare-fun m!6907836 () Bool)

(assert (=> b!6037483 m!6907836))

(declare-fun m!6907838 () Bool)

(assert (=> b!6037484 m!6907838))

(assert (=> b!6037484 m!6907838))

(declare-fun m!6907840 () Bool)

(assert (=> b!6037484 m!6907840))

(declare-fun m!6907842 () Bool)

(assert (=> b!6037484 m!6907842))

(assert (=> b!6037484 m!6907840))

(assert (=> b!6037484 m!6907842))

(declare-fun m!6907844 () Bool)

(assert (=> b!6037484 m!6907844))

(assert (=> b!6037345 d!1893240))

(declare-fun b!6037513 () Bool)

(declare-fun e!3687897 () Bool)

(declare-fun derivativeStep!4749 (Regex!16020 C!32310) Regex!16020)

(assert (=> b!6037513 (= e!3687897 (matchR!8203 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326)) (tail!11662 s!2326)))))

(declare-fun b!6037514 () Bool)

(declare-fun e!3687899 () Bool)

(declare-fun lt!2322851 () Bool)

(assert (=> b!6037514 (= e!3687899 (not lt!2322851))))

(declare-fun b!6037515 () Bool)

(declare-fun e!3687898 () Bool)

(assert (=> b!6037515 (= e!3687898 (not (= (head!12577 s!2326) (c!1082125 (regTwo!32552 r!7292)))))))

(declare-fun b!6037516 () Bool)

(declare-fun res!2513934 () Bool)

(declare-fun e!3687902 () Bool)

(assert (=> b!6037516 (=> (not res!2513934) (not e!3687902))))

(assert (=> b!6037516 (= res!2513934 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun b!6037517 () Bool)

(declare-fun e!3687900 () Bool)

(declare-fun call!493552 () Bool)

(assert (=> b!6037517 (= e!3687900 (= lt!2322851 call!493552))))

(declare-fun b!6037518 () Bool)

(assert (=> b!6037518 (= e!3687902 (= (head!12577 s!2326) (c!1082125 (regTwo!32552 r!7292))))))

(declare-fun d!1893242 () Bool)

(assert (=> d!1893242 e!3687900))

(declare-fun c!1082143 () Bool)

(assert (=> d!1893242 (= c!1082143 (is-EmptyExpr!16020 (regTwo!32552 r!7292)))))

(assert (=> d!1893242 (= lt!2322851 e!3687897)))

(declare-fun c!1082144 () Bool)

(assert (=> d!1893242 (= c!1082144 (isEmpty!36143 s!2326))))

(assert (=> d!1893242 (validRegex!7756 (regTwo!32552 r!7292))))

(assert (=> d!1893242 (= (matchR!8203 (regTwo!32552 r!7292) s!2326) lt!2322851)))

(declare-fun b!6037519 () Bool)

(declare-fun res!2513931 () Bool)

(assert (=> b!6037519 (=> res!2513931 e!3687898)))

(assert (=> b!6037519 (= res!2513931 (not (isEmpty!36143 (tail!11662 s!2326))))))

(declare-fun b!6037520 () Bool)

(declare-fun res!2513935 () Bool)

(declare-fun e!3687901 () Bool)

(assert (=> b!6037520 (=> res!2513935 e!3687901)))

(assert (=> b!6037520 (= res!2513935 (not (is-ElementMatch!16020 (regTwo!32552 r!7292))))))

(assert (=> b!6037520 (= e!3687899 e!3687901)))

(declare-fun b!6037521 () Bool)

(declare-fun res!2513932 () Bool)

(assert (=> b!6037521 (=> res!2513932 e!3687901)))

(assert (=> b!6037521 (= res!2513932 e!3687902)))

(declare-fun res!2513933 () Bool)

(assert (=> b!6037521 (=> (not res!2513933) (not e!3687902))))

(assert (=> b!6037521 (= res!2513933 lt!2322851)))

(declare-fun b!6037522 () Bool)

(declare-fun res!2513929 () Bool)

(assert (=> b!6037522 (=> (not res!2513929) (not e!3687902))))

(assert (=> b!6037522 (= res!2513929 (not call!493552))))

(declare-fun b!6037523 () Bool)

(declare-fun e!3687896 () Bool)

(assert (=> b!6037523 (= e!3687896 e!3687898)))

(declare-fun res!2513930 () Bool)

(assert (=> b!6037523 (=> res!2513930 e!3687898)))

(assert (=> b!6037523 (= res!2513930 call!493552)))

(declare-fun b!6037524 () Bool)

(assert (=> b!6037524 (= e!3687897 (nullable!6015 (regTwo!32552 r!7292)))))

(declare-fun bm!493547 () Bool)

(assert (=> bm!493547 (= call!493552 (isEmpty!36143 s!2326))))

(declare-fun b!6037525 () Bool)

(assert (=> b!6037525 (= e!3687900 e!3687899)))

(declare-fun c!1082145 () Bool)

(assert (=> b!6037525 (= c!1082145 (is-EmptyLang!16020 (regTwo!32552 r!7292)))))

(declare-fun b!6037526 () Bool)

(assert (=> b!6037526 (= e!3687901 e!3687896)))

(declare-fun res!2513928 () Bool)

(assert (=> b!6037526 (=> (not res!2513928) (not e!3687896))))

(assert (=> b!6037526 (= res!2513928 (not lt!2322851))))

(assert (= (and d!1893242 c!1082144) b!6037524))

(assert (= (and d!1893242 (not c!1082144)) b!6037513))

(assert (= (and d!1893242 c!1082143) b!6037517))

(assert (= (and d!1893242 (not c!1082143)) b!6037525))

(assert (= (and b!6037525 c!1082145) b!6037514))

(assert (= (and b!6037525 (not c!1082145)) b!6037520))

(assert (= (and b!6037520 (not res!2513935)) b!6037521))

(assert (= (and b!6037521 res!2513933) b!6037522))

(assert (= (and b!6037522 res!2513929) b!6037516))

(assert (= (and b!6037516 res!2513934) b!6037518))

(assert (= (and b!6037521 (not res!2513932)) b!6037526))

(assert (= (and b!6037526 res!2513928) b!6037523))

(assert (= (and b!6037523 (not res!2513930)) b!6037519))

(assert (= (and b!6037519 (not res!2513931)) b!6037515))

(assert (= (or b!6037517 b!6037522 b!6037523) bm!493547))

(assert (=> bm!493547 m!6907834))

(assert (=> b!6037519 m!6907842))

(assert (=> b!6037519 m!6907842))

(declare-fun m!6907846 () Bool)

(assert (=> b!6037519 m!6907846))

(assert (=> b!6037513 m!6907838))

(assert (=> b!6037513 m!6907838))

(declare-fun m!6907848 () Bool)

(assert (=> b!6037513 m!6907848))

(assert (=> b!6037513 m!6907842))

(assert (=> b!6037513 m!6907848))

(assert (=> b!6037513 m!6907842))

(declare-fun m!6907850 () Bool)

(assert (=> b!6037513 m!6907850))

(declare-fun m!6907852 () Bool)

(assert (=> b!6037524 m!6907852))

(assert (=> b!6037516 m!6907842))

(assert (=> b!6037516 m!6907842))

(assert (=> b!6037516 m!6907846))

(assert (=> b!6037515 m!6907838))

(assert (=> d!1893242 m!6907834))

(assert (=> d!1893242 m!6907636))

(assert (=> b!6037518 m!6907838))

(assert (=> b!6037345 d!1893242))

(declare-fun d!1893244 () Bool)

(assert (=> d!1893244 (= (matchR!8203 (regTwo!32552 r!7292) s!2326) (matchZipper!2056 lt!2322722 s!2326))))

(declare-fun lt!2322854 () Unit!157311)

(declare-fun choose!45118 ((Set Context!10808) List!64360 Regex!16020 List!64361) Unit!157311)

(assert (=> d!1893244 (= lt!2322854 (choose!45118 lt!2322722 lt!2322709 (regTwo!32552 r!7292) s!2326))))

(assert (=> d!1893244 (validRegex!7756 (regTwo!32552 r!7292))))

(assert (=> d!1893244 (= (theoremZipperRegexEquiv!712 lt!2322722 lt!2322709 (regTwo!32552 r!7292) s!2326) lt!2322854)))

(declare-fun bs!1488939 () Bool)

(assert (= bs!1488939 d!1893244))

(assert (=> bs!1488939 m!6907650))

(assert (=> bs!1488939 m!6907586))

(declare-fun m!6907854 () Bool)

(assert (=> bs!1488939 m!6907854))

(assert (=> bs!1488939 m!6907636))

(assert (=> b!6037345 d!1893244))

(declare-fun d!1893246 () Bool)

(declare-fun lt!2322857 () Regex!16020)

(assert (=> d!1893246 (validRegex!7756 lt!2322857)))

(assert (=> d!1893246 (= lt!2322857 (generalisedUnion!1864 (unfocusZipperList!1441 lt!2322709)))))

(assert (=> d!1893246 (= (unfocusZipper!1762 lt!2322709) lt!2322857)))

(declare-fun bs!1488940 () Bool)

(assert (= bs!1488940 d!1893246))

(declare-fun m!6907856 () Bool)

(assert (=> bs!1488940 m!6907856))

(declare-fun m!6907858 () Bool)

(assert (=> bs!1488940 m!6907858))

(assert (=> bs!1488940 m!6907858))

(declare-fun m!6907860 () Bool)

(assert (=> bs!1488940 m!6907860))

(assert (=> b!6037344 d!1893246))

(declare-fun d!1893248 () Bool)

(declare-fun e!3687905 () Bool)

(assert (=> d!1893248 e!3687905))

(declare-fun res!2513938 () Bool)

(assert (=> d!1893248 (=> (not res!2513938) (not e!3687905))))

(declare-fun lt!2322860 () List!64360)

(declare-fun noDuplicate!1875 (List!64360) Bool)

(assert (=> d!1893248 (= res!2513938 (noDuplicate!1875 lt!2322860))))

(declare-fun choose!45119 ((Set Context!10808)) List!64360)

(assert (=> d!1893248 (= lt!2322860 (choose!45119 lt!2322722))))

(assert (=> d!1893248 (= (toList!9804 lt!2322722) lt!2322860)))

(declare-fun b!6037529 () Bool)

(declare-fun content!11884 (List!64360) (Set Context!10808))

(assert (=> b!6037529 (= e!3687905 (= (content!11884 lt!2322860) lt!2322722))))

(assert (= (and d!1893248 res!2513938) b!6037529))

(declare-fun m!6907862 () Bool)

(assert (=> d!1893248 m!6907862))

(declare-fun m!6907864 () Bool)

(assert (=> d!1893248 m!6907864))

(declare-fun m!6907866 () Bool)

(assert (=> b!6037529 m!6907866))

(assert (=> b!6037324 d!1893248))

(declare-fun d!1893250 () Bool)

(declare-fun c!1082146 () Bool)

(assert (=> d!1893250 (= c!1082146 (isEmpty!36143 (t!377790 s!2326)))))

(declare-fun e!3687906 () Bool)

(assert (=> d!1893250 (= (matchZipper!2056 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) (t!377790 s!2326)) e!3687906)))

(declare-fun b!6037530 () Bool)

(assert (=> b!6037530 (= e!3687906 (nullableZipper!1825 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326))))))

(declare-fun b!6037531 () Bool)

(assert (=> b!6037531 (= e!3687906 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))))))

(assert (= (and d!1893250 c!1082146) b!6037530))

(assert (= (and d!1893250 (not c!1082146)) b!6037531))

(declare-fun m!6907868 () Bool)

(assert (=> d!1893250 m!6907868))

(assert (=> b!6037530 m!6907690))

(declare-fun m!6907870 () Bool)

(assert (=> b!6037530 m!6907870))

(declare-fun m!6907872 () Bool)

(assert (=> b!6037531 m!6907872))

(assert (=> b!6037531 m!6907690))

(assert (=> b!6037531 m!6907872))

(declare-fun m!6907874 () Bool)

(assert (=> b!6037531 m!6907874))

(declare-fun m!6907876 () Bool)

(assert (=> b!6037531 m!6907876))

(assert (=> b!6037531 m!6907874))

(assert (=> b!6037531 m!6907876))

(declare-fun m!6907878 () Bool)

(assert (=> b!6037531 m!6907878))

(assert (=> b!6037328 d!1893250))

(declare-fun bs!1488941 () Bool)

(declare-fun d!1893252 () Bool)

(assert (= bs!1488941 (and d!1893252 b!6037340)))

(declare-fun lambda!329263 () Int)

(assert (=> bs!1488941 (= lambda!329263 lambda!329245)))

(assert (=> d!1893252 true))

(assert (=> d!1893252 (= (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) (flatMap!1533 lt!2322718 lambda!329263))))

(declare-fun bs!1488942 () Bool)

(assert (= bs!1488942 d!1893252))

(declare-fun m!6907880 () Bool)

(assert (=> bs!1488942 m!6907880))

(assert (=> b!6037328 d!1893252))

(declare-fun d!1893254 () Bool)

(declare-fun c!1082149 () Bool)

(assert (=> d!1893254 (= c!1082149 (isEmpty!36143 s!2326))))

(declare-fun e!3687907 () Bool)

(assert (=> d!1893254 (= (matchZipper!2056 lt!2322718 s!2326) e!3687907)))

(declare-fun b!6037534 () Bool)

(assert (=> b!6037534 (= e!3687907 (nullableZipper!1825 lt!2322718))))

(declare-fun b!6037535 () Bool)

(assert (=> b!6037535 (= e!3687907 (matchZipper!2056 (derivationStepZipper!2001 lt!2322718 (head!12577 s!2326)) (tail!11662 s!2326)))))

(assert (= (and d!1893254 c!1082149) b!6037534))

(assert (= (and d!1893254 (not c!1082149)) b!6037535))

(assert (=> d!1893254 m!6907834))

(declare-fun m!6907882 () Bool)

(assert (=> b!6037534 m!6907882))

(assert (=> b!6037535 m!6907838))

(assert (=> b!6037535 m!6907838))

(declare-fun m!6907884 () Bool)

(assert (=> b!6037535 m!6907884))

(assert (=> b!6037535 m!6907842))

(assert (=> b!6037535 m!6907884))

(assert (=> b!6037535 m!6907842))

(declare-fun m!6907886 () Bool)

(assert (=> b!6037535 m!6907886))

(assert (=> b!6037328 d!1893254))

(declare-fun b!6037554 () Bool)

(declare-fun res!2513953 () Bool)

(declare-fun e!3687918 () Bool)

(assert (=> b!6037554 (=> (not res!2513953) (not e!3687918))))

(declare-fun lt!2322869 () Option!15911)

(declare-fun get!22141 (Option!15911) tuple2!65998)

(assert (=> b!6037554 (= res!2513953 (matchR!8203 (regOne!32552 r!7292) (_1!36302 (get!22141 lt!2322869))))))

(declare-fun b!6037555 () Bool)

(declare-fun e!3687922 () Option!15911)

(assert (=> b!6037555 (= e!3687922 (Some!15910 (tuple2!65999 Nil!64237 s!2326)))))

(declare-fun b!6037556 () Bool)

(declare-fun lt!2322867 () Unit!157311)

(declare-fun lt!2322868 () Unit!157311)

(assert (=> b!6037556 (= lt!2322867 lt!2322868)))

(declare-fun ++!14115 (List!64361 List!64361) List!64361)

(assert (=> b!6037556 (= (++!14115 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (t!377790 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2210 (List!64361 C!32310 List!64361 List!64361) Unit!157311)

(assert (=> b!6037556 (= lt!2322868 (lemmaMoveElementToOtherListKeepsConcatEq!2210 Nil!64237 (h!70685 s!2326) (t!377790 s!2326) s!2326))))

(declare-fun e!3687919 () Option!15911)

(assert (=> b!6037556 (= e!3687919 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (t!377790 s!2326) s!2326))))

(declare-fun b!6037557 () Bool)

(declare-fun res!2513951 () Bool)

(assert (=> b!6037557 (=> (not res!2513951) (not e!3687918))))

(assert (=> b!6037557 (= res!2513951 (matchR!8203 (regTwo!32552 r!7292) (_2!36302 (get!22141 lt!2322869))))))

(declare-fun b!6037558 () Bool)

(assert (=> b!6037558 (= e!3687922 e!3687919)))

(declare-fun c!1082154 () Bool)

(assert (=> b!6037558 (= c!1082154 (is-Nil!64237 s!2326))))

(declare-fun b!6037559 () Bool)

(assert (=> b!6037559 (= e!3687918 (= (++!14115 (_1!36302 (get!22141 lt!2322869)) (_2!36302 (get!22141 lt!2322869))) s!2326))))

(declare-fun b!6037560 () Bool)

(declare-fun e!3687921 () Bool)

(assert (=> b!6037560 (= e!3687921 (not (isDefined!12614 lt!2322869)))))

(declare-fun d!1893256 () Bool)

(assert (=> d!1893256 e!3687921))

(declare-fun res!2513949 () Bool)

(assert (=> d!1893256 (=> res!2513949 e!3687921)))

(assert (=> d!1893256 (= res!2513949 e!3687918)))

(declare-fun res!2513952 () Bool)

(assert (=> d!1893256 (=> (not res!2513952) (not e!3687918))))

(assert (=> d!1893256 (= res!2513952 (isDefined!12614 lt!2322869))))

(assert (=> d!1893256 (= lt!2322869 e!3687922)))

(declare-fun c!1082155 () Bool)

(declare-fun e!3687920 () Bool)

(assert (=> d!1893256 (= c!1082155 e!3687920)))

(declare-fun res!2513950 () Bool)

(assert (=> d!1893256 (=> (not res!2513950) (not e!3687920))))

(assert (=> d!1893256 (= res!2513950 (matchR!8203 (regOne!32552 r!7292) Nil!64237))))

(assert (=> d!1893256 (validRegex!7756 (regOne!32552 r!7292))))

(assert (=> d!1893256 (= (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) Nil!64237 s!2326 s!2326) lt!2322869)))

(declare-fun b!6037561 () Bool)

(assert (=> b!6037561 (= e!3687919 None!15910)))

(declare-fun b!6037562 () Bool)

(assert (=> b!6037562 (= e!3687920 (matchR!8203 (regTwo!32552 r!7292) s!2326))))

(assert (= (and d!1893256 res!2513950) b!6037562))

(assert (= (and d!1893256 c!1082155) b!6037555))

(assert (= (and d!1893256 (not c!1082155)) b!6037558))

(assert (= (and b!6037558 c!1082154) b!6037561))

(assert (= (and b!6037558 (not c!1082154)) b!6037556))

(assert (= (and d!1893256 res!2513952) b!6037554))

(assert (= (and b!6037554 res!2513953) b!6037557))

(assert (= (and b!6037557 res!2513951) b!6037559))

(assert (= (and d!1893256 (not res!2513949)) b!6037560))

(declare-fun m!6907888 () Bool)

(assert (=> b!6037559 m!6907888))

(declare-fun m!6907890 () Bool)

(assert (=> b!6037559 m!6907890))

(assert (=> b!6037554 m!6907888))

(declare-fun m!6907892 () Bool)

(assert (=> b!6037554 m!6907892))

(declare-fun m!6907894 () Bool)

(assert (=> d!1893256 m!6907894))

(declare-fun m!6907896 () Bool)

(assert (=> d!1893256 m!6907896))

(declare-fun m!6907898 () Bool)

(assert (=> d!1893256 m!6907898))

(assert (=> b!6037562 m!6907650))

(assert (=> b!6037557 m!6907888))

(declare-fun m!6907900 () Bool)

(assert (=> b!6037557 m!6907900))

(declare-fun m!6907902 () Bool)

(assert (=> b!6037556 m!6907902))

(assert (=> b!6037556 m!6907902))

(declare-fun m!6907904 () Bool)

(assert (=> b!6037556 m!6907904))

(declare-fun m!6907906 () Bool)

(assert (=> b!6037556 m!6907906))

(assert (=> b!6037556 m!6907902))

(declare-fun m!6907908 () Bool)

(assert (=> b!6037556 m!6907908))

(assert (=> b!6037560 m!6907894))

(assert (=> b!6037326 d!1893256))

(declare-fun bs!1488943 () Bool)

(declare-fun d!1893258 () Bool)

(assert (= bs!1488943 (and d!1893258 b!6037326)))

(declare-fun lambda!329268 () Int)

(assert (=> bs!1488943 (= lambda!329268 lambda!329243)))

(assert (=> bs!1488943 (not (= lambda!329268 lambda!329244))))

(assert (=> d!1893258 true))

(assert (=> d!1893258 true))

(assert (=> d!1893258 true))

(declare-fun lambda!329269 () Int)

(assert (=> bs!1488943 (not (= lambda!329269 lambda!329243))))

(assert (=> bs!1488943 (= lambda!329269 lambda!329244)))

(declare-fun bs!1488944 () Bool)

(assert (= bs!1488944 d!1893258))

(assert (=> bs!1488944 (not (= lambda!329269 lambda!329268))))

(assert (=> d!1893258 true))

(assert (=> d!1893258 true))

(assert (=> d!1893258 true))

(assert (=> d!1893258 (= (Exists!3090 lambda!329268) (Exists!3090 lambda!329269))))

(declare-fun lt!2322872 () Unit!157311)

(declare-fun choose!45120 (Regex!16020 Regex!16020 List!64361) Unit!157311)

(assert (=> d!1893258 (= lt!2322872 (choose!45120 (regOne!32552 r!7292) (regTwo!32552 r!7292) s!2326))))

(assert (=> d!1893258 (validRegex!7756 (regOne!32552 r!7292))))

(assert (=> d!1893258 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1627 (regOne!32552 r!7292) (regTwo!32552 r!7292) s!2326) lt!2322872)))

(declare-fun m!6907910 () Bool)

(assert (=> bs!1488944 m!6907910))

(declare-fun m!6907912 () Bool)

(assert (=> bs!1488944 m!6907912))

(declare-fun m!6907914 () Bool)

(assert (=> bs!1488944 m!6907914))

(assert (=> bs!1488944 m!6907898))

(assert (=> b!6037326 d!1893258))

(declare-fun d!1893260 () Bool)

(declare-fun isEmpty!36144 (Option!15911) Bool)

(assert (=> d!1893260 (= (isDefined!12614 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) Nil!64237 s!2326 s!2326)) (not (isEmpty!36144 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) Nil!64237 s!2326 s!2326))))))

(declare-fun bs!1488945 () Bool)

(assert (= bs!1488945 d!1893260))

(assert (=> bs!1488945 m!6907620))

(declare-fun m!6907916 () Bool)

(assert (=> bs!1488945 m!6907916))

(assert (=> b!6037326 d!1893260))

(declare-fun bs!1488946 () Bool)

(declare-fun d!1893262 () Bool)

(assert (= bs!1488946 (and d!1893262 b!6037326)))

(declare-fun lambda!329272 () Int)

(assert (=> bs!1488946 (= lambda!329272 lambda!329243)))

(assert (=> bs!1488946 (not (= lambda!329272 lambda!329244))))

(declare-fun bs!1488947 () Bool)

(assert (= bs!1488947 (and d!1893262 d!1893258)))

(assert (=> bs!1488947 (= lambda!329272 lambda!329268)))

(assert (=> bs!1488947 (not (= lambda!329272 lambda!329269))))

(assert (=> d!1893262 true))

(assert (=> d!1893262 true))

(assert (=> d!1893262 true))

(assert (=> d!1893262 (= (isDefined!12614 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) Nil!64237 s!2326 s!2326)) (Exists!3090 lambda!329272))))

(declare-fun lt!2322875 () Unit!157311)

(declare-fun choose!45121 (Regex!16020 Regex!16020 List!64361) Unit!157311)

(assert (=> d!1893262 (= lt!2322875 (choose!45121 (regOne!32552 r!7292) (regTwo!32552 r!7292) s!2326))))

(assert (=> d!1893262 (validRegex!7756 (regOne!32552 r!7292))))

(assert (=> d!1893262 (= (lemmaFindConcatSeparationEquivalentToExists!2089 (regOne!32552 r!7292) (regTwo!32552 r!7292) s!2326) lt!2322875)))

(declare-fun bs!1488948 () Bool)

(assert (= bs!1488948 d!1893262))

(assert (=> bs!1488948 m!6907620))

(assert (=> bs!1488948 m!6907622))

(assert (=> bs!1488948 m!6907620))

(assert (=> bs!1488948 m!6907898))

(declare-fun m!6907918 () Bool)

(assert (=> bs!1488948 m!6907918))

(declare-fun m!6907920 () Bool)

(assert (=> bs!1488948 m!6907920))

(assert (=> b!6037326 d!1893262))

(declare-fun d!1893264 () Bool)

(declare-fun choose!45122 (Int) Bool)

(assert (=> d!1893264 (= (Exists!3090 lambda!329243) (choose!45122 lambda!329243))))

(declare-fun bs!1488949 () Bool)

(assert (= bs!1488949 d!1893264))

(declare-fun m!6907922 () Bool)

(assert (=> bs!1488949 m!6907922))

(assert (=> b!6037326 d!1893264))

(declare-fun d!1893266 () Bool)

(assert (=> d!1893266 (= (Exists!3090 lambda!329244) (choose!45122 lambda!329244))))

(declare-fun bs!1488950 () Bool)

(assert (= bs!1488950 d!1893266))

(declare-fun m!6907924 () Bool)

(assert (=> bs!1488950 m!6907924))

(assert (=> b!6037326 d!1893266))

(declare-fun d!1893268 () Bool)

(declare-fun choose!45123 ((Set Context!10808) Int) (Set Context!10808))

(assert (=> d!1893268 (= (flatMap!1533 z!1189 lambda!329245) (choose!45123 z!1189 lambda!329245))))

(declare-fun bs!1488951 () Bool)

(assert (= bs!1488951 d!1893268))

(declare-fun m!6907926 () Bool)

(assert (=> bs!1488951 m!6907926))

(assert (=> b!6037340 d!1893268))

(declare-fun b!6037585 () Bool)

(declare-fun e!3687935 () (Set Context!10808))

(declare-fun e!3687937 () (Set Context!10808))

(assert (=> b!6037585 (= e!3687935 e!3687937)))

(declare-fun c!1082160 () Bool)

(assert (=> b!6037585 (= c!1082160 (is-Cons!64235 (exprs!5904 (h!70684 zl!343))))))

(declare-fun b!6037586 () Bool)

(declare-fun e!3687936 () Bool)

(assert (=> b!6037586 (= e!3687936 (nullable!6015 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun bm!493550 () Bool)

(declare-fun call!493555 () (Set Context!10808))

(assert (=> bm!493550 (= call!493555 (derivationStepZipperDown!1270 (h!70683 (exprs!5904 (h!70684 zl!343))) (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))) (h!70685 s!2326)))))

(declare-fun d!1893270 () Bool)

(declare-fun c!1082161 () Bool)

(assert (=> d!1893270 (= c!1082161 e!3687936)))

(declare-fun res!2513968 () Bool)

(assert (=> d!1893270 (=> (not res!2513968) (not e!3687936))))

(assert (=> d!1893270 (= res!2513968 (is-Cons!64235 (exprs!5904 (h!70684 zl!343))))))

(assert (=> d!1893270 (= (derivationStepZipperUp!1196 (h!70684 zl!343) (h!70685 s!2326)) e!3687935)))

(declare-fun b!6037587 () Bool)

(assert (=> b!6037587 (= e!3687935 (set.union call!493555 (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))) (h!70685 s!2326))))))

(declare-fun b!6037588 () Bool)

(assert (=> b!6037588 (= e!3687937 (as set.empty (Set Context!10808)))))

(declare-fun b!6037589 () Bool)

(assert (=> b!6037589 (= e!3687937 call!493555)))

(assert (= (and d!1893270 res!2513968) b!6037586))

(assert (= (and d!1893270 c!1082161) b!6037587))

(assert (= (and d!1893270 (not c!1082161)) b!6037585))

(assert (= (and b!6037585 c!1082160) b!6037589))

(assert (= (and b!6037585 (not c!1082160)) b!6037588))

(assert (= (or b!6037587 b!6037589) bm!493550))

(declare-fun m!6907928 () Bool)

(assert (=> b!6037586 m!6907928))

(declare-fun m!6907930 () Bool)

(assert (=> bm!493550 m!6907930))

(declare-fun m!6907932 () Bool)

(assert (=> b!6037587 m!6907932))

(assert (=> b!6037340 d!1893270))

(declare-fun d!1893272 () Bool)

(declare-fun dynLambda!25214 (Int Context!10808) (Set Context!10808))

(assert (=> d!1893272 (= (flatMap!1533 z!1189 lambda!329245) (dynLambda!25214 lambda!329245 (h!70684 zl!343)))))

(declare-fun lt!2322878 () Unit!157311)

(declare-fun choose!45124 ((Set Context!10808) Context!10808 Int) Unit!157311)

(assert (=> d!1893272 (= lt!2322878 (choose!45124 z!1189 (h!70684 zl!343) lambda!329245))))

(assert (=> d!1893272 (= z!1189 (set.insert (h!70684 zl!343) (as set.empty (Set Context!10808))))))

(assert (=> d!1893272 (= (lemmaFlatMapOnSingletonSet!1059 z!1189 (h!70684 zl!343) lambda!329245) lt!2322878)))

(declare-fun b_lambda!229053 () Bool)

(assert (=> (not b_lambda!229053) (not d!1893272)))

(declare-fun bs!1488952 () Bool)

(assert (= bs!1488952 d!1893272))

(assert (=> bs!1488952 m!6907600))

(declare-fun m!6907934 () Bool)

(assert (=> bs!1488952 m!6907934))

(declare-fun m!6907936 () Bool)

(assert (=> bs!1488952 m!6907936))

(declare-fun m!6907938 () Bool)

(assert (=> bs!1488952 m!6907938))

(assert (=> b!6037340 d!1893272))

(declare-fun d!1893274 () Bool)

(declare-fun e!3687938 () Bool)

(assert (=> d!1893274 e!3687938))

(declare-fun res!2513969 () Bool)

(assert (=> d!1893274 (=> (not res!2513969) (not e!3687938))))

(declare-fun lt!2322879 () List!64360)

(assert (=> d!1893274 (= res!2513969 (noDuplicate!1875 lt!2322879))))

(assert (=> d!1893274 (= lt!2322879 (choose!45119 z!1189))))

(assert (=> d!1893274 (= (toList!9804 z!1189) lt!2322879)))

(declare-fun b!6037590 () Bool)

(assert (=> b!6037590 (= e!3687938 (= (content!11884 lt!2322879) z!1189))))

(assert (= (and d!1893274 res!2513969) b!6037590))

(declare-fun m!6907940 () Bool)

(assert (=> d!1893274 m!6907940))

(declare-fun m!6907942 () Bool)

(assert (=> d!1893274 m!6907942))

(declare-fun m!6907944 () Bool)

(assert (=> b!6037590 m!6907944))

(assert (=> b!6037320 d!1893274))

(declare-fun b!6037597 () Bool)

(assert (=> b!6037597 true))

(declare-fun bs!1488953 () Bool)

(declare-fun b!6037599 () Bool)

(assert (= bs!1488953 (and b!6037599 b!6037597)))

(declare-fun lt!2322889 () Int)

(declare-fun lambda!329280 () Int)

(declare-fun lambda!329281 () Int)

(declare-fun lt!2322890 () Int)

(assert (=> bs!1488953 (= (= lt!2322889 lt!2322890) (= lambda!329281 lambda!329280))))

(assert (=> b!6037599 true))

(declare-fun d!1893276 () Bool)

(declare-fun e!3687944 () Bool)

(assert (=> d!1893276 e!3687944))

(declare-fun res!2513972 () Bool)

(assert (=> d!1893276 (=> (not res!2513972) (not e!3687944))))

(assert (=> d!1893276 (= res!2513972 (>= lt!2322889 0))))

(declare-fun e!3687943 () Int)

(assert (=> d!1893276 (= lt!2322889 e!3687943)))

(declare-fun c!1082170 () Bool)

(assert (=> d!1893276 (= c!1082170 (is-Cons!64236 (Cons!64236 lt!2322710 Nil!64236)))))

(assert (=> d!1893276 (= (zipperDepth!269 (Cons!64236 lt!2322710 Nil!64236)) lt!2322889)))

(assert (=> b!6037597 (= e!3687943 lt!2322890)))

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!6037597 (= lt!2322890 (maxBigInt!0 (contextDepth!168 (h!70684 (Cons!64236 lt!2322710 Nil!64236))) (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236)))))))

(declare-fun lt!2322891 () Unit!157311)

(declare-fun lambda!329279 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!152 (List!64360 Int Int Int) Unit!157311)

(assert (=> b!6037597 (= lt!2322891 (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 (Cons!64236 lt!2322710 Nil!64236)) lt!2322890 (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236))) lambda!329279))))

(declare-fun forall!15127 (List!64360 Int) Bool)

(assert (=> b!6037597 (forall!15127 (t!377789 (Cons!64236 lt!2322710 Nil!64236)) lambda!329280)))

(declare-fun lt!2322888 () Unit!157311)

(assert (=> b!6037597 (= lt!2322888 lt!2322891)))

(declare-fun b!6037598 () Bool)

(assert (=> b!6037598 (= e!3687943 0)))

(assert (=> b!6037599 (= e!3687944 (forall!15127 (Cons!64236 lt!2322710 Nil!64236) lambda!329281))))

(assert (= (and d!1893276 c!1082170) b!6037597))

(assert (= (and d!1893276 (not c!1082170)) b!6037598))

(assert (= (and d!1893276 res!2513972) b!6037599))

(declare-fun m!6907946 () Bool)

(assert (=> b!6037597 m!6907946))

(declare-fun m!6907948 () Bool)

(assert (=> b!6037597 m!6907948))

(declare-fun m!6907950 () Bool)

(assert (=> b!6037597 m!6907950))

(assert (=> b!6037597 m!6907948))

(declare-fun m!6907952 () Bool)

(assert (=> b!6037597 m!6907952))

(assert (=> b!6037597 m!6907948))

(declare-fun m!6907954 () Bool)

(assert (=> b!6037597 m!6907954))

(assert (=> b!6037597 m!6907950))

(declare-fun m!6907956 () Bool)

(assert (=> b!6037599 m!6907956))

(assert (=> b!6037339 d!1893276))

(declare-fun bs!1488954 () Bool)

(declare-fun b!6037602 () Bool)

(assert (= bs!1488954 (and b!6037602 b!6037597)))

(declare-fun lambda!329282 () Int)

(assert (=> bs!1488954 (= lambda!329282 lambda!329279)))

(declare-fun lambda!329283 () Int)

(declare-fun lt!2322894 () Int)

(assert (=> bs!1488954 (= (= lt!2322894 lt!2322890) (= lambda!329283 lambda!329280))))

(declare-fun bs!1488955 () Bool)

(assert (= bs!1488955 (and b!6037602 b!6037599)))

(assert (=> bs!1488955 (= (= lt!2322894 lt!2322889) (= lambda!329283 lambda!329281))))

(assert (=> b!6037602 true))

(declare-fun bs!1488956 () Bool)

(declare-fun b!6037604 () Bool)

(assert (= bs!1488956 (and b!6037604 b!6037597)))

(declare-fun lt!2322893 () Int)

(declare-fun lambda!329284 () Int)

(assert (=> bs!1488956 (= (= lt!2322893 lt!2322890) (= lambda!329284 lambda!329280))))

(declare-fun bs!1488957 () Bool)

(assert (= bs!1488957 (and b!6037604 b!6037599)))

(assert (=> bs!1488957 (= (= lt!2322893 lt!2322889) (= lambda!329284 lambda!329281))))

(declare-fun bs!1488958 () Bool)

(assert (= bs!1488958 (and b!6037604 b!6037602)))

(assert (=> bs!1488958 (= (= lt!2322893 lt!2322894) (= lambda!329284 lambda!329283))))

(assert (=> b!6037604 true))

(declare-fun d!1893278 () Bool)

(declare-fun e!3687946 () Bool)

(assert (=> d!1893278 e!3687946))

(declare-fun res!2513973 () Bool)

(assert (=> d!1893278 (=> (not res!2513973) (not e!3687946))))

(assert (=> d!1893278 (= res!2513973 (>= lt!2322893 0))))

(declare-fun e!3687945 () Int)

(assert (=> d!1893278 (= lt!2322893 e!3687945)))

(declare-fun c!1082171 () Bool)

(assert (=> d!1893278 (= c!1082171 (is-Cons!64236 lt!2322702))))

(assert (=> d!1893278 (= (zipperDepth!269 lt!2322702) lt!2322893)))

(assert (=> b!6037602 (= e!3687945 lt!2322894)))

(assert (=> b!6037602 (= lt!2322894 (maxBigInt!0 (contextDepth!168 (h!70684 lt!2322702)) (zipperDepth!269 (t!377789 lt!2322702))))))

(declare-fun lt!2322895 () Unit!157311)

(assert (=> b!6037602 (= lt!2322895 (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 lt!2322702) lt!2322894 (zipperDepth!269 (t!377789 lt!2322702)) lambda!329282))))

(assert (=> b!6037602 (forall!15127 (t!377789 lt!2322702) lambda!329283)))

(declare-fun lt!2322892 () Unit!157311)

(assert (=> b!6037602 (= lt!2322892 lt!2322895)))

(declare-fun b!6037603 () Bool)

(assert (=> b!6037603 (= e!3687945 0)))

(assert (=> b!6037604 (= e!3687946 (forall!15127 lt!2322702 lambda!329284))))

(assert (= (and d!1893278 c!1082171) b!6037602))

(assert (= (and d!1893278 (not c!1082171)) b!6037603))

(assert (= (and d!1893278 res!2513973) b!6037604))

(declare-fun m!6907958 () Bool)

(assert (=> b!6037602 m!6907958))

(declare-fun m!6907960 () Bool)

(assert (=> b!6037602 m!6907960))

(declare-fun m!6907962 () Bool)

(assert (=> b!6037602 m!6907962))

(assert (=> b!6037602 m!6907960))

(declare-fun m!6907964 () Bool)

(assert (=> b!6037602 m!6907964))

(assert (=> b!6037602 m!6907960))

(declare-fun m!6907966 () Bool)

(assert (=> b!6037602 m!6907966))

(assert (=> b!6037602 m!6907962))

(declare-fun m!6907968 () Bool)

(assert (=> b!6037604 m!6907968))

(assert (=> b!6037339 d!1893278))

(declare-fun d!1893280 () Bool)

(declare-fun lambda!329287 () Int)

(declare-fun forall!15128 (List!64359 Int) Bool)

(assert (=> d!1893280 (= (inv!83298 (h!70684 zl!343)) (forall!15128 (exprs!5904 (h!70684 zl!343)) lambda!329287))))

(declare-fun bs!1488959 () Bool)

(assert (= bs!1488959 d!1893280))

(declare-fun m!6907970 () Bool)

(assert (=> bs!1488959 m!6907970))

(assert (=> b!6037319 d!1893280))

(declare-fun bs!1488960 () Bool)

(declare-fun b!6037605 () Bool)

(assert (= bs!1488960 (and b!6037605 b!6037597)))

(declare-fun lambda!329288 () Int)

(assert (=> bs!1488960 (= lambda!329288 lambda!329279)))

(declare-fun bs!1488961 () Bool)

(assert (= bs!1488961 (and b!6037605 b!6037602)))

(assert (=> bs!1488961 (= lambda!329288 lambda!329282)))

(declare-fun lt!2322898 () Int)

(declare-fun lambda!329289 () Int)

(assert (=> bs!1488960 (= (= lt!2322898 lt!2322890) (= lambda!329289 lambda!329280))))

(declare-fun bs!1488962 () Bool)

(assert (= bs!1488962 (and b!6037605 b!6037599)))

(assert (=> bs!1488962 (= (= lt!2322898 lt!2322889) (= lambda!329289 lambda!329281))))

(assert (=> bs!1488961 (= (= lt!2322898 lt!2322894) (= lambda!329289 lambda!329283))))

(declare-fun bs!1488963 () Bool)

(assert (= bs!1488963 (and b!6037605 b!6037604)))

(assert (=> bs!1488963 (= (= lt!2322898 lt!2322893) (= lambda!329289 lambda!329284))))

(assert (=> b!6037605 true))

(declare-fun bs!1488964 () Bool)

(declare-fun b!6037607 () Bool)

(assert (= bs!1488964 (and b!6037607 b!6037597)))

(declare-fun lambda!329290 () Int)

(declare-fun lt!2322897 () Int)

(assert (=> bs!1488964 (= (= lt!2322897 lt!2322890) (= lambda!329290 lambda!329280))))

(declare-fun bs!1488965 () Bool)

(assert (= bs!1488965 (and b!6037607 b!6037605)))

(assert (=> bs!1488965 (= (= lt!2322897 lt!2322898) (= lambda!329290 lambda!329289))))

(declare-fun bs!1488966 () Bool)

(assert (= bs!1488966 (and b!6037607 b!6037602)))

(assert (=> bs!1488966 (= (= lt!2322897 lt!2322894) (= lambda!329290 lambda!329283))))

(declare-fun bs!1488967 () Bool)

(assert (= bs!1488967 (and b!6037607 b!6037599)))

(assert (=> bs!1488967 (= (= lt!2322897 lt!2322889) (= lambda!329290 lambda!329281))))

(declare-fun bs!1488968 () Bool)

(assert (= bs!1488968 (and b!6037607 b!6037604)))

(assert (=> bs!1488968 (= (= lt!2322897 lt!2322893) (= lambda!329290 lambda!329284))))

(assert (=> b!6037607 true))

(declare-fun d!1893282 () Bool)

(declare-fun e!3687948 () Bool)

(assert (=> d!1893282 e!3687948))

(declare-fun res!2513974 () Bool)

(assert (=> d!1893282 (=> (not res!2513974) (not e!3687948))))

(assert (=> d!1893282 (= res!2513974 (>= lt!2322897 0))))

(declare-fun e!3687947 () Int)

(assert (=> d!1893282 (= lt!2322897 e!3687947)))

(declare-fun c!1082172 () Bool)

(assert (=> d!1893282 (= c!1082172 (is-Cons!64236 lt!2322709))))

(assert (=> d!1893282 (= (zipperDepth!269 lt!2322709) lt!2322897)))

(assert (=> b!6037605 (= e!3687947 lt!2322898)))

(assert (=> b!6037605 (= lt!2322898 (maxBigInt!0 (contextDepth!168 (h!70684 lt!2322709)) (zipperDepth!269 (t!377789 lt!2322709))))))

(declare-fun lt!2322899 () Unit!157311)

(assert (=> b!6037605 (= lt!2322899 (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 lt!2322709) lt!2322898 (zipperDepth!269 (t!377789 lt!2322709)) lambda!329288))))

(assert (=> b!6037605 (forall!15127 (t!377789 lt!2322709) lambda!329289)))

(declare-fun lt!2322896 () Unit!157311)

(assert (=> b!6037605 (= lt!2322896 lt!2322899)))

(declare-fun b!6037606 () Bool)

(assert (=> b!6037606 (= e!3687947 0)))

(assert (=> b!6037607 (= e!3687948 (forall!15127 lt!2322709 lambda!329290))))

(assert (= (and d!1893282 c!1082172) b!6037605))

(assert (= (and d!1893282 (not c!1082172)) b!6037606))

(assert (= (and d!1893282 res!2513974) b!6037607))

(declare-fun m!6907972 () Bool)

(assert (=> b!6037605 m!6907972))

(declare-fun m!6907974 () Bool)

(assert (=> b!6037605 m!6907974))

(declare-fun m!6907976 () Bool)

(assert (=> b!6037605 m!6907976))

(assert (=> b!6037605 m!6907974))

(declare-fun m!6907978 () Bool)

(assert (=> b!6037605 m!6907978))

(assert (=> b!6037605 m!6907974))

(declare-fun m!6907980 () Bool)

(assert (=> b!6037605 m!6907980))

(assert (=> b!6037605 m!6907976))

(declare-fun m!6907982 () Bool)

(assert (=> b!6037607 m!6907982))

(assert (=> b!6037322 d!1893282))

(declare-fun bm!493557 () Bool)

(declare-fun c!1082178 () Bool)

(declare-fun call!493562 () Bool)

(declare-fun c!1082177 () Bool)

(assert (=> bm!493557 (= call!493562 (validRegex!7756 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))))))

(declare-fun b!6037626 () Bool)

(declare-fun e!3687966 () Bool)

(declare-fun call!493564 () Bool)

(assert (=> b!6037626 (= e!3687966 call!493564)))

(declare-fun bm!493558 () Bool)

(declare-fun call!493563 () Bool)

(assert (=> bm!493558 (= call!493563 (validRegex!7756 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))))))

(declare-fun b!6037627 () Bool)

(declare-fun e!3687967 () Bool)

(declare-fun e!3687965 () Bool)

(assert (=> b!6037627 (= e!3687967 e!3687965)))

(declare-fun res!2513988 () Bool)

(assert (=> b!6037627 (= res!2513988 (not (nullable!6015 (reg!16349 r!7292))))))

(assert (=> b!6037627 (=> (not res!2513988) (not e!3687965))))

(declare-fun b!6037628 () Bool)

(declare-fun e!3687969 () Bool)

(assert (=> b!6037628 (= e!3687967 e!3687969)))

(assert (=> b!6037628 (= c!1082177 (is-Union!16020 r!7292))))

(declare-fun d!1893284 () Bool)

(declare-fun res!2513989 () Bool)

(declare-fun e!3687963 () Bool)

(assert (=> d!1893284 (=> res!2513989 e!3687963)))

(assert (=> d!1893284 (= res!2513989 (is-ElementMatch!16020 r!7292))))

(assert (=> d!1893284 (= (validRegex!7756 r!7292) e!3687963)))

(declare-fun bm!493559 () Bool)

(assert (=> bm!493559 (= call!493564 call!493562)))

(declare-fun b!6037629 () Bool)

(assert (=> b!6037629 (= e!3687963 e!3687967)))

(assert (=> b!6037629 (= c!1082178 (is-Star!16020 r!7292))))

(declare-fun b!6037630 () Bool)

(assert (=> b!6037630 (= e!3687965 call!493562)))

(declare-fun b!6037631 () Bool)

(declare-fun e!3687968 () Bool)

(assert (=> b!6037631 (= e!3687968 e!3687966)))

(declare-fun res!2513987 () Bool)

(assert (=> b!6037631 (=> (not res!2513987) (not e!3687966))))

(assert (=> b!6037631 (= res!2513987 call!493563)))

(declare-fun b!6037632 () Bool)

(declare-fun res!2513985 () Bool)

(declare-fun e!3687964 () Bool)

(assert (=> b!6037632 (=> (not res!2513985) (not e!3687964))))

(assert (=> b!6037632 (= res!2513985 call!493563)))

(assert (=> b!6037632 (= e!3687969 e!3687964)))

(declare-fun b!6037633 () Bool)

(declare-fun res!2513986 () Bool)

(assert (=> b!6037633 (=> res!2513986 e!3687968)))

(assert (=> b!6037633 (= res!2513986 (not (is-Concat!24865 r!7292)))))

(assert (=> b!6037633 (= e!3687969 e!3687968)))

(declare-fun b!6037634 () Bool)

(assert (=> b!6037634 (= e!3687964 call!493564)))

(assert (= (and d!1893284 (not res!2513989)) b!6037629))

(assert (= (and b!6037629 c!1082178) b!6037627))

(assert (= (and b!6037629 (not c!1082178)) b!6037628))

(assert (= (and b!6037627 res!2513988) b!6037630))

(assert (= (and b!6037628 c!1082177) b!6037632))

(assert (= (and b!6037628 (not c!1082177)) b!6037633))

(assert (= (and b!6037632 res!2513985) b!6037634))

(assert (= (and b!6037633 (not res!2513986)) b!6037631))

(assert (= (and b!6037631 res!2513987) b!6037626))

(assert (= (or b!6037634 b!6037626) bm!493559))

(assert (= (or b!6037632 b!6037631) bm!493558))

(assert (= (or b!6037630 bm!493559) bm!493557))

(declare-fun m!6907984 () Bool)

(assert (=> bm!493557 m!6907984))

(declare-fun m!6907986 () Bool)

(assert (=> bm!493558 m!6907986))

(declare-fun m!6907988 () Bool)

(assert (=> b!6037627 m!6907988))

(assert (=> start!607212 d!1893284))

(declare-fun d!1893286 () Bool)

(declare-fun c!1082179 () Bool)

(assert (=> d!1893286 (= c!1082179 (isEmpty!36143 (t!377790 s!2326)))))

(declare-fun e!3687970 () Bool)

(assert (=> d!1893286 (= (matchZipper!2056 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) (t!377790 s!2326)) e!3687970)))

(declare-fun b!6037635 () Bool)

(assert (=> b!6037635 (= e!3687970 (nullableZipper!1825 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326))))))

(declare-fun b!6037636 () Bool)

(assert (=> b!6037636 (= e!3687970 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))))))

(assert (= (and d!1893286 c!1082179) b!6037635))

(assert (= (and d!1893286 (not c!1082179)) b!6037636))

(assert (=> d!1893286 m!6907868))

(assert (=> b!6037635 m!6907582))

(declare-fun m!6907990 () Bool)

(assert (=> b!6037635 m!6907990))

(assert (=> b!6037636 m!6907872))

(assert (=> b!6037636 m!6907582))

(assert (=> b!6037636 m!6907872))

(declare-fun m!6907992 () Bool)

(assert (=> b!6037636 m!6907992))

(assert (=> b!6037636 m!6907876))

(assert (=> b!6037636 m!6907992))

(assert (=> b!6037636 m!6907876))

(declare-fun m!6907994 () Bool)

(assert (=> b!6037636 m!6907994))

(assert (=> b!6037341 d!1893286))

(declare-fun bs!1488969 () Bool)

(declare-fun d!1893288 () Bool)

(assert (= bs!1488969 (and d!1893288 b!6037340)))

(declare-fun lambda!329291 () Int)

(assert (=> bs!1488969 (= lambda!329291 lambda!329245)))

(declare-fun bs!1488970 () Bool)

(assert (= bs!1488970 (and d!1893288 d!1893252)))

(assert (=> bs!1488970 (= lambda!329291 lambda!329263)))

(assert (=> d!1893288 true))

(assert (=> d!1893288 (= (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) (flatMap!1533 lt!2322722 lambda!329291))))

(declare-fun bs!1488971 () Bool)

(assert (= bs!1488971 d!1893288))

(declare-fun m!6907996 () Bool)

(assert (=> bs!1488971 m!6907996))

(assert (=> b!6037341 d!1893288))

(declare-fun d!1893290 () Bool)

(declare-fun c!1082180 () Bool)

(assert (=> d!1893290 (= c!1082180 (isEmpty!36143 s!2326))))

(declare-fun e!3687971 () Bool)

(assert (=> d!1893290 (= (matchZipper!2056 lt!2322722 s!2326) e!3687971)))

(declare-fun b!6037637 () Bool)

(assert (=> b!6037637 (= e!3687971 (nullableZipper!1825 lt!2322722))))

(declare-fun b!6037638 () Bool)

(assert (=> b!6037638 (= e!3687971 (matchZipper!2056 (derivationStepZipper!2001 lt!2322722 (head!12577 s!2326)) (tail!11662 s!2326)))))

(assert (= (and d!1893290 c!1082180) b!6037637))

(assert (= (and d!1893290 (not c!1082180)) b!6037638))

(assert (=> d!1893290 m!6907834))

(declare-fun m!6907998 () Bool)

(assert (=> b!6037637 m!6907998))

(assert (=> b!6037638 m!6907838))

(assert (=> b!6037638 m!6907838))

(declare-fun m!6908000 () Bool)

(assert (=> b!6037638 m!6908000))

(assert (=> b!6037638 m!6907842))

(assert (=> b!6037638 m!6908000))

(assert (=> b!6037638 m!6907842))

(declare-fun m!6908002 () Bool)

(assert (=> b!6037638 m!6908002))

(assert (=> b!6037341 d!1893290))

(declare-fun d!1893292 () Bool)

(declare-fun c!1082181 () Bool)

(assert (=> d!1893292 (= c!1082181 (isEmpty!36143 (t!377790 s!2326)))))

(declare-fun e!3687972 () Bool)

(assert (=> d!1893292 (= (matchZipper!2056 lt!2322721 (t!377790 s!2326)) e!3687972)))

(declare-fun b!6037639 () Bool)

(assert (=> b!6037639 (= e!3687972 (nullableZipper!1825 lt!2322721))))

(declare-fun b!6037640 () Bool)

(assert (=> b!6037640 (= e!3687972 (matchZipper!2056 (derivationStepZipper!2001 lt!2322721 (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))))))

(assert (= (and d!1893292 c!1082181) b!6037639))

(assert (= (and d!1893292 (not c!1082181)) b!6037640))

(assert (=> d!1893292 m!6907868))

(declare-fun m!6908004 () Bool)

(assert (=> b!6037639 m!6908004))

(assert (=> b!6037640 m!6907872))

(assert (=> b!6037640 m!6907872))

(declare-fun m!6908006 () Bool)

(assert (=> b!6037640 m!6908006))

(assert (=> b!6037640 m!6907876))

(assert (=> b!6037640 m!6908006))

(assert (=> b!6037640 m!6907876))

(declare-fun m!6908008 () Bool)

(assert (=> b!6037640 m!6908008))

(assert (=> b!6037321 d!1893292))

(declare-fun d!1893294 () Bool)

(declare-fun c!1082182 () Bool)

(assert (=> d!1893294 (= c!1082182 (isEmpty!36143 (t!377790 s!2326)))))

(declare-fun e!3687973 () Bool)

(assert (=> d!1893294 (= (matchZipper!2056 lt!2322699 (t!377790 s!2326)) e!3687973)))

(declare-fun b!6037641 () Bool)

(assert (=> b!6037641 (= e!3687973 (nullableZipper!1825 lt!2322699))))

(declare-fun b!6037642 () Bool)

(assert (=> b!6037642 (= e!3687973 (matchZipper!2056 (derivationStepZipper!2001 lt!2322699 (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))))))

(assert (= (and d!1893294 c!1082182) b!6037641))

(assert (= (and d!1893294 (not c!1082182)) b!6037642))

(assert (=> d!1893294 m!6907868))

(declare-fun m!6908010 () Bool)

(assert (=> b!6037641 m!6908010))

(assert (=> b!6037642 m!6907872))

(assert (=> b!6037642 m!6907872))

(declare-fun m!6908012 () Bool)

(assert (=> b!6037642 m!6908012))

(assert (=> b!6037642 m!6907876))

(assert (=> b!6037642 m!6908012))

(assert (=> b!6037642 m!6907876))

(declare-fun m!6908014 () Bool)

(assert (=> b!6037642 m!6908014))

(assert (=> b!6037321 d!1893294))

(declare-fun d!1893296 () Bool)

(declare-fun c!1082183 () Bool)

(assert (=> d!1893296 (= c!1082183 (isEmpty!36143 (t!377790 s!2326)))))

(declare-fun e!3687974 () Bool)

(assert (=> d!1893296 (= (matchZipper!2056 lt!2322715 (t!377790 s!2326)) e!3687974)))

(declare-fun b!6037643 () Bool)

(assert (=> b!6037643 (= e!3687974 (nullableZipper!1825 lt!2322715))))

(declare-fun b!6037644 () Bool)

(assert (=> b!6037644 (= e!3687974 (matchZipper!2056 (derivationStepZipper!2001 lt!2322715 (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))))))

(assert (= (and d!1893296 c!1082183) b!6037643))

(assert (= (and d!1893296 (not c!1082183)) b!6037644))

(assert (=> d!1893296 m!6907868))

(declare-fun m!6908016 () Bool)

(assert (=> b!6037643 m!6908016))

(assert (=> b!6037644 m!6907872))

(assert (=> b!6037644 m!6907872))

(declare-fun m!6908018 () Bool)

(assert (=> b!6037644 m!6908018))

(assert (=> b!6037644 m!6907876))

(assert (=> b!6037644 m!6908018))

(assert (=> b!6037644 m!6907876))

(declare-fun m!6908020 () Bool)

(assert (=> b!6037644 m!6908020))

(assert (=> b!6037321 d!1893296))

(declare-fun d!1893298 () Bool)

(declare-fun e!3687977 () Bool)

(assert (=> d!1893298 (= (matchZipper!2056 (set.union lt!2322715 lt!2322706) (t!377790 s!2326)) e!3687977)))

(declare-fun res!2513992 () Bool)

(assert (=> d!1893298 (=> res!2513992 e!3687977)))

(assert (=> d!1893298 (= res!2513992 (matchZipper!2056 lt!2322715 (t!377790 s!2326)))))

(declare-fun lt!2322902 () Unit!157311)

(declare-fun choose!45125 ((Set Context!10808) (Set Context!10808) List!64361) Unit!157311)

(assert (=> d!1893298 (= lt!2322902 (choose!45125 lt!2322715 lt!2322706 (t!377790 s!2326)))))

(assert (=> d!1893298 (= (lemmaZipperConcatMatchesSameAsBothZippers!887 lt!2322715 lt!2322706 (t!377790 s!2326)) lt!2322902)))

(declare-fun b!6037647 () Bool)

(assert (=> b!6037647 (= e!3687977 (matchZipper!2056 lt!2322706 (t!377790 s!2326)))))

(assert (= (and d!1893298 (not res!2513992)) b!6037647))

(declare-fun m!6908022 () Bool)

(assert (=> d!1893298 m!6908022))

(assert (=> d!1893298 m!6907612))

(declare-fun m!6908024 () Bool)

(assert (=> d!1893298 m!6908024))

(assert (=> b!6037647 m!6907618))

(assert (=> b!6037321 d!1893298))

(declare-fun d!1893300 () Bool)

(assert (=> d!1893300 (= (isEmpty!36139 (t!377789 zl!343)) (is-Nil!64236 (t!377789 zl!343)))))

(assert (=> b!6037314 d!1893300))

(declare-fun bs!1488972 () Bool)

(declare-fun b!6037654 () Bool)

(assert (= bs!1488972 (and b!6037654 d!1893280)))

(declare-fun lambda!329296 () Int)

(assert (=> bs!1488972 (not (= lambda!329296 lambda!329287))))

(assert (=> b!6037654 true))

(declare-fun bs!1488973 () Bool)

(declare-fun b!6037656 () Bool)

(assert (= bs!1488973 (and b!6037656 d!1893280)))

(declare-fun lambda!329297 () Int)

(assert (=> bs!1488973 (not (= lambda!329297 lambda!329287))))

(declare-fun bs!1488974 () Bool)

(assert (= bs!1488974 (and b!6037656 b!6037654)))

(declare-fun lt!2322911 () Int)

(declare-fun lt!2322913 () Int)

(assert (=> bs!1488974 (= (= lt!2322911 lt!2322913) (= lambda!329297 lambda!329296))))

(assert (=> b!6037656 true))

(declare-fun d!1893302 () Bool)

(declare-fun e!3687983 () Bool)

(assert (=> d!1893302 e!3687983))

(declare-fun res!2513995 () Bool)

(assert (=> d!1893302 (=> (not res!2513995) (not e!3687983))))

(assert (=> d!1893302 (= res!2513995 (>= lt!2322911 0))))

(declare-fun e!3687982 () Int)

(assert (=> d!1893302 (= lt!2322911 e!3687982)))

(declare-fun c!1082187 () Bool)

(assert (=> d!1893302 (= c!1082187 (is-Cons!64235 (exprs!5904 lt!2322710)))))

(assert (=> d!1893302 (= (contextDepth!168 lt!2322710) lt!2322911)))

(assert (=> b!6037654 (= e!3687982 lt!2322913)))

(assert (=> b!6037654 (= lt!2322913 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 lt!2322710))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))))))

(declare-fun lt!2322912 () Unit!157311)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!67 (List!64359 Int Int) Unit!157311)

(assert (=> b!6037654 (= lt!2322912 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 lt!2322710)) lt!2322913 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))))))

(assert (=> b!6037654 (forall!15128 (t!377788 (exprs!5904 lt!2322710)) lambda!329296)))

(declare-fun lt!2322914 () Unit!157311)

(assert (=> b!6037654 (= lt!2322914 lt!2322912)))

(declare-fun b!6037655 () Bool)

(assert (=> b!6037655 (= e!3687982 0)))

(assert (=> b!6037656 (= e!3687983 (forall!15128 (exprs!5904 lt!2322710) lambda!329297))))

(assert (= (and d!1893302 c!1082187) b!6037654))

(assert (= (and d!1893302 (not c!1082187)) b!6037655))

(assert (= (and d!1893302 res!2513995) b!6037656))

(declare-fun m!6908026 () Bool)

(assert (=> b!6037654 m!6908026))

(declare-fun m!6908028 () Bool)

(assert (=> b!6037654 m!6908028))

(declare-fun m!6908030 () Bool)

(assert (=> b!6037654 m!6908030))

(assert (=> b!6037654 m!6908026))

(assert (=> b!6037654 m!6908028))

(declare-fun m!6908032 () Bool)

(assert (=> b!6037654 m!6908032))

(assert (=> b!6037654 m!6908028))

(declare-fun m!6908034 () Bool)

(assert (=> b!6037654 m!6908034))

(declare-fun m!6908036 () Bool)

(assert (=> b!6037656 m!6908036))

(assert (=> b!6037315 d!1893302))

(declare-fun bs!1488975 () Bool)

(declare-fun b!6037659 () Bool)

(assert (= bs!1488975 (and b!6037659 d!1893280)))

(declare-fun lambda!329298 () Int)

(assert (=> bs!1488975 (not (= lambda!329298 lambda!329287))))

(declare-fun bs!1488976 () Bool)

(assert (= bs!1488976 (and b!6037659 b!6037654)))

(declare-fun lt!2322917 () Int)

(assert (=> bs!1488976 (= (= lt!2322917 lt!2322913) (= lambda!329298 lambda!329296))))

(declare-fun bs!1488977 () Bool)

(assert (= bs!1488977 (and b!6037659 b!6037656)))

(assert (=> bs!1488977 (= (= lt!2322917 lt!2322911) (= lambda!329298 lambda!329297))))

(assert (=> b!6037659 true))

(declare-fun bs!1488978 () Bool)

(declare-fun b!6037661 () Bool)

(assert (= bs!1488978 (and b!6037661 d!1893280)))

(declare-fun lambda!329299 () Int)

(assert (=> bs!1488978 (not (= lambda!329299 lambda!329287))))

(declare-fun bs!1488979 () Bool)

(assert (= bs!1488979 (and b!6037661 b!6037654)))

(declare-fun lt!2322915 () Int)

(assert (=> bs!1488979 (= (= lt!2322915 lt!2322913) (= lambda!329299 lambda!329296))))

(declare-fun bs!1488980 () Bool)

(assert (= bs!1488980 (and b!6037661 b!6037656)))

(assert (=> bs!1488980 (= (= lt!2322915 lt!2322911) (= lambda!329299 lambda!329297))))

(declare-fun bs!1488981 () Bool)

(assert (= bs!1488981 (and b!6037661 b!6037659)))

(assert (=> bs!1488981 (= (= lt!2322915 lt!2322917) (= lambda!329299 lambda!329298))))

(assert (=> b!6037661 true))

(declare-fun d!1893304 () Bool)

(declare-fun e!3687985 () Bool)

(assert (=> d!1893304 e!3687985))

(declare-fun res!2513996 () Bool)

(assert (=> d!1893304 (=> (not res!2513996) (not e!3687985))))

(assert (=> d!1893304 (= res!2513996 (>= lt!2322915 0))))

(declare-fun e!3687984 () Int)

(assert (=> d!1893304 (= lt!2322915 e!3687984)))

(declare-fun c!1082188 () Bool)

(assert (=> d!1893304 (= c!1082188 (is-Cons!64235 (exprs!5904 lt!2322698)))))

(assert (=> d!1893304 (= (contextDepth!168 lt!2322698) lt!2322915)))

(assert (=> b!6037659 (= e!3687984 lt!2322917)))

(assert (=> b!6037659 (= lt!2322917 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 lt!2322698))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))))))

(declare-fun lt!2322916 () Unit!157311)

(assert (=> b!6037659 (= lt!2322916 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 lt!2322698)) lt!2322917 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))))))

(assert (=> b!6037659 (forall!15128 (t!377788 (exprs!5904 lt!2322698)) lambda!329298)))

(declare-fun lt!2322918 () Unit!157311)

(assert (=> b!6037659 (= lt!2322918 lt!2322916)))

(declare-fun b!6037660 () Bool)

(assert (=> b!6037660 (= e!3687984 0)))

(assert (=> b!6037661 (= e!3687985 (forall!15128 (exprs!5904 lt!2322698) lambda!329299))))

(assert (= (and d!1893304 c!1082188) b!6037659))

(assert (= (and d!1893304 (not c!1082188)) b!6037660))

(assert (= (and d!1893304 res!2513996) b!6037661))

(declare-fun m!6908038 () Bool)

(assert (=> b!6037659 m!6908038))

(declare-fun m!6908040 () Bool)

(assert (=> b!6037659 m!6908040))

(declare-fun m!6908042 () Bool)

(assert (=> b!6037659 m!6908042))

(assert (=> b!6037659 m!6908038))

(assert (=> b!6037659 m!6908040))

(declare-fun m!6908044 () Bool)

(assert (=> b!6037659 m!6908044))

(assert (=> b!6037659 m!6908040))

(declare-fun m!6908046 () Bool)

(assert (=> b!6037659 m!6908046))

(declare-fun m!6908048 () Bool)

(assert (=> b!6037661 m!6908048))

(assert (=> b!6037315 d!1893304))

(declare-fun d!1893306 () Bool)

(assert (=> d!1893306 (= (flatMap!1533 lt!2322722 lambda!329245) (choose!45123 lt!2322722 lambda!329245))))

(declare-fun bs!1488982 () Bool)

(assert (= bs!1488982 d!1893306))

(declare-fun m!6908050 () Bool)

(assert (=> bs!1488982 m!6908050))

(assert (=> b!6037333 d!1893306))

(declare-fun d!1893308 () Bool)

(declare-fun nullableFct!1985 (Regex!16020) Bool)

(assert (=> d!1893308 (= (nullable!6015 (regOne!32552 r!7292)) (nullableFct!1985 (regOne!32552 r!7292)))))

(declare-fun bs!1488983 () Bool)

(assert (= bs!1488983 d!1893308))

(declare-fun m!6908052 () Bool)

(assert (=> bs!1488983 m!6908052))

(assert (=> b!6037333 d!1893308))

(declare-fun d!1893310 () Bool)

(assert (=> d!1893310 (= (flatMap!1533 lt!2322718 lambda!329245) (dynLambda!25214 lambda!329245 lt!2322698))))

(declare-fun lt!2322919 () Unit!157311)

(assert (=> d!1893310 (= lt!2322919 (choose!45124 lt!2322718 lt!2322698 lambda!329245))))

(assert (=> d!1893310 (= lt!2322718 (set.insert lt!2322698 (as set.empty (Set Context!10808))))))

(assert (=> d!1893310 (= (lemmaFlatMapOnSingletonSet!1059 lt!2322718 lt!2322698 lambda!329245) lt!2322919)))

(declare-fun b_lambda!229055 () Bool)

(assert (=> (not b_lambda!229055) (not d!1893310)))

(declare-fun bs!1488984 () Bool)

(assert (= bs!1488984 d!1893310))

(assert (=> bs!1488984 m!6907670))

(declare-fun m!6908054 () Bool)

(assert (=> bs!1488984 m!6908054))

(declare-fun m!6908056 () Bool)

(assert (=> bs!1488984 m!6908056))

(assert (=> bs!1488984 m!6907664))

(assert (=> b!6037333 d!1893310))

(declare-fun b!6037662 () Bool)

(declare-fun e!3687986 () (Set Context!10808))

(declare-fun e!3687988 () (Set Context!10808))

(assert (=> b!6037662 (= e!3687986 e!3687988)))

(declare-fun c!1082189 () Bool)

(assert (=> b!6037662 (= c!1082189 (is-Cons!64235 (exprs!5904 lt!2322733)))))

(declare-fun b!6037663 () Bool)

(declare-fun e!3687987 () Bool)

(assert (=> b!6037663 (= e!3687987 (nullable!6015 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun bm!493560 () Bool)

(declare-fun call!493565 () (Set Context!10808))

(assert (=> bm!493560 (= call!493565 (derivationStepZipperDown!1270 (h!70683 (exprs!5904 lt!2322733)) (Context!10809 (t!377788 (exprs!5904 lt!2322733))) (h!70685 s!2326)))))

(declare-fun d!1893312 () Bool)

(declare-fun c!1082190 () Bool)

(assert (=> d!1893312 (= c!1082190 e!3687987)))

(declare-fun res!2513997 () Bool)

(assert (=> d!1893312 (=> (not res!2513997) (not e!3687987))))

(assert (=> d!1893312 (= res!2513997 (is-Cons!64235 (exprs!5904 lt!2322733)))))

(assert (=> d!1893312 (= (derivationStepZipperUp!1196 lt!2322733 (h!70685 s!2326)) e!3687986)))

(declare-fun b!6037664 () Bool)

(assert (=> b!6037664 (= e!3687986 (set.union call!493565 (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 lt!2322733))) (h!70685 s!2326))))))

(declare-fun b!6037665 () Bool)

(assert (=> b!6037665 (= e!3687988 (as set.empty (Set Context!10808)))))

(declare-fun b!6037666 () Bool)

(assert (=> b!6037666 (= e!3687988 call!493565)))

(assert (= (and d!1893312 res!2513997) b!6037663))

(assert (= (and d!1893312 c!1082190) b!6037664))

(assert (= (and d!1893312 (not c!1082190)) b!6037662))

(assert (= (and b!6037662 c!1082189) b!6037666))

(assert (= (and b!6037662 (not c!1082189)) b!6037665))

(assert (= (or b!6037664 b!6037666) bm!493560))

(declare-fun m!6908058 () Bool)

(assert (=> b!6037663 m!6908058))

(declare-fun m!6908060 () Bool)

(assert (=> bm!493560 m!6908060))

(declare-fun m!6908062 () Bool)

(assert (=> b!6037664 m!6908062))

(assert (=> b!6037333 d!1893312))

(declare-fun b!6037689 () Bool)

(declare-fun e!3688003 () (Set Context!10808))

(declare-fun call!493582 () (Set Context!10808))

(assert (=> b!6037689 (= e!3688003 call!493582)))

(declare-fun call!493581 () (Set Context!10808))

(declare-fun c!1082205 () Bool)

(declare-fun c!1082204 () Bool)

(declare-fun c!1082201 () Bool)

(declare-fun bm!493573 () Bool)

(declare-fun call!493580 () List!64359)

(assert (=> bm!493573 (= call!493581 (derivationStepZipperDown!1270 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292))))) (ite (or c!1082204 c!1082205) lt!2322733 (Context!10809 call!493580)) (h!70685 s!2326)))))

(declare-fun b!6037690 () Bool)

(declare-fun e!3688004 () (Set Context!10808))

(declare-fun e!3688006 () (Set Context!10808))

(assert (=> b!6037690 (= e!3688004 e!3688006)))

(assert (=> b!6037690 (= c!1082201 (is-Concat!24865 (regOne!32552 r!7292)))))

(declare-fun d!1893314 () Bool)

(declare-fun c!1082202 () Bool)

(assert (=> d!1893314 (= c!1082202 (and (is-ElementMatch!16020 (regOne!32552 r!7292)) (= (c!1082125 (regOne!32552 r!7292)) (h!70685 s!2326))))))

(declare-fun e!3688005 () (Set Context!10808))

(assert (=> d!1893314 (= (derivationStepZipperDown!1270 (regOne!32552 r!7292) lt!2322733 (h!70685 s!2326)) e!3688005)))

(declare-fun bm!493574 () Bool)

(declare-fun call!493578 () (Set Context!10808))

(assert (=> bm!493574 (= call!493582 call!493578)))

(declare-fun b!6037691 () Bool)

(declare-fun e!3688001 () Bool)

(assert (=> b!6037691 (= e!3688001 (nullable!6015 (regOne!32552 (regOne!32552 r!7292))))))

(declare-fun bm!493575 () Bool)

(assert (=> bm!493575 (= call!493578 call!493581)))

(declare-fun b!6037692 () Bool)

(declare-fun c!1082203 () Bool)

(assert (=> b!6037692 (= c!1082203 (is-Star!16020 (regOne!32552 r!7292)))))

(assert (=> b!6037692 (= e!3688006 e!3688003)))

(declare-fun call!493583 () List!64359)

(declare-fun bm!493576 () Bool)

(declare-fun $colon$colon!1905 (List!64359 Regex!16020) List!64359)

(assert (=> bm!493576 (= call!493583 ($colon$colon!1905 (exprs!5904 lt!2322733) (ite (or c!1082205 c!1082201) (regTwo!32552 (regOne!32552 r!7292)) (regOne!32552 r!7292))))))

(declare-fun b!6037693 () Bool)

(declare-fun call!493579 () (Set Context!10808))

(assert (=> b!6037693 (= e!3688004 (set.union call!493579 call!493578))))

(declare-fun b!6037694 () Bool)

(assert (=> b!6037694 (= e!3688005 (set.insert lt!2322733 (as set.empty (Set Context!10808))))))

(declare-fun bm!493577 () Bool)

(assert (=> bm!493577 (= call!493579 (derivationStepZipperDown!1270 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292))) (ite c!1082204 lt!2322733 (Context!10809 call!493583)) (h!70685 s!2326)))))

(declare-fun bm!493578 () Bool)

(assert (=> bm!493578 (= call!493580 call!493583)))

(declare-fun b!6037695 () Bool)

(assert (=> b!6037695 (= e!3688006 call!493582)))

(declare-fun b!6037696 () Bool)

(declare-fun e!3688002 () (Set Context!10808))

(assert (=> b!6037696 (= e!3688005 e!3688002)))

(assert (=> b!6037696 (= c!1082204 (is-Union!16020 (regOne!32552 r!7292)))))

(declare-fun b!6037697 () Bool)

(assert (=> b!6037697 (= c!1082205 e!3688001)))

(declare-fun res!2514000 () Bool)

(assert (=> b!6037697 (=> (not res!2514000) (not e!3688001))))

(assert (=> b!6037697 (= res!2514000 (is-Concat!24865 (regOne!32552 r!7292)))))

(assert (=> b!6037697 (= e!3688002 e!3688004)))

(declare-fun b!6037698 () Bool)

(assert (=> b!6037698 (= e!3688002 (set.union call!493581 call!493579))))

(declare-fun b!6037699 () Bool)

(assert (=> b!6037699 (= e!3688003 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893314 c!1082202) b!6037694))

(assert (= (and d!1893314 (not c!1082202)) b!6037696))

(assert (= (and b!6037696 c!1082204) b!6037698))

(assert (= (and b!6037696 (not c!1082204)) b!6037697))

(assert (= (and b!6037697 res!2514000) b!6037691))

(assert (= (and b!6037697 c!1082205) b!6037693))

(assert (= (and b!6037697 (not c!1082205)) b!6037690))

(assert (= (and b!6037690 c!1082201) b!6037695))

(assert (= (and b!6037690 (not c!1082201)) b!6037692))

(assert (= (and b!6037692 c!1082203) b!6037689))

(assert (= (and b!6037692 (not c!1082203)) b!6037699))

(assert (= (or b!6037695 b!6037689) bm!493578))

(assert (= (or b!6037695 b!6037689) bm!493574))

(assert (= (or b!6037693 bm!493578) bm!493576))

(assert (= (or b!6037693 bm!493574) bm!493575))

(assert (= (or b!6037698 b!6037693) bm!493577))

(assert (= (or b!6037698 bm!493575) bm!493573))

(declare-fun m!6908064 () Bool)

(assert (=> bm!493577 m!6908064))

(assert (=> b!6037694 m!6907682))

(declare-fun m!6908066 () Bool)

(assert (=> bm!493573 m!6908066))

(declare-fun m!6908068 () Bool)

(assert (=> bm!493576 m!6908068))

(declare-fun m!6908070 () Bool)

(assert (=> b!6037691 m!6908070))

(assert (=> b!6037333 d!1893314))

(declare-fun b!6037700 () Bool)

(declare-fun e!3688009 () (Set Context!10808))

(declare-fun call!493588 () (Set Context!10808))

(assert (=> b!6037700 (= e!3688009 call!493588)))

(declare-fun c!1082210 () Bool)

(declare-fun call!493587 () (Set Context!10808))

(declare-fun c!1082206 () Bool)

(declare-fun c!1082209 () Bool)

(declare-fun call!493586 () List!64359)

(declare-fun bm!493579 () Bool)

(assert (=> bm!493579 (= call!493587 (derivationStepZipperDown!1270 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292))))) (ite (or c!1082209 c!1082210) lt!2322716 (Context!10809 call!493586)) (h!70685 s!2326)))))

(declare-fun b!6037701 () Bool)

(declare-fun e!3688010 () (Set Context!10808))

(declare-fun e!3688012 () (Set Context!10808))

(assert (=> b!6037701 (= e!3688010 e!3688012)))

(assert (=> b!6037701 (= c!1082206 (is-Concat!24865 (regTwo!32552 r!7292)))))

(declare-fun d!1893316 () Bool)

(declare-fun c!1082207 () Bool)

(assert (=> d!1893316 (= c!1082207 (and (is-ElementMatch!16020 (regTwo!32552 r!7292)) (= (c!1082125 (regTwo!32552 r!7292)) (h!70685 s!2326))))))

(declare-fun e!3688011 () (Set Context!10808))

(assert (=> d!1893316 (= (derivationStepZipperDown!1270 (regTwo!32552 r!7292) lt!2322716 (h!70685 s!2326)) e!3688011)))

(declare-fun bm!493580 () Bool)

(declare-fun call!493584 () (Set Context!10808))

(assert (=> bm!493580 (= call!493588 call!493584)))

(declare-fun b!6037702 () Bool)

(declare-fun e!3688007 () Bool)

(assert (=> b!6037702 (= e!3688007 (nullable!6015 (regOne!32552 (regTwo!32552 r!7292))))))

(declare-fun bm!493581 () Bool)

(assert (=> bm!493581 (= call!493584 call!493587)))

(declare-fun b!6037703 () Bool)

(declare-fun c!1082208 () Bool)

(assert (=> b!6037703 (= c!1082208 (is-Star!16020 (regTwo!32552 r!7292)))))

(assert (=> b!6037703 (= e!3688012 e!3688009)))

(declare-fun call!493589 () List!64359)

(declare-fun bm!493582 () Bool)

(assert (=> bm!493582 (= call!493589 ($colon$colon!1905 (exprs!5904 lt!2322716) (ite (or c!1082210 c!1082206) (regTwo!32552 (regTwo!32552 r!7292)) (regTwo!32552 r!7292))))))

(declare-fun b!6037704 () Bool)

(declare-fun call!493585 () (Set Context!10808))

(assert (=> b!6037704 (= e!3688010 (set.union call!493585 call!493584))))

(declare-fun b!6037705 () Bool)

(assert (=> b!6037705 (= e!3688011 (set.insert lt!2322716 (as set.empty (Set Context!10808))))))

(declare-fun bm!493583 () Bool)

(assert (=> bm!493583 (= call!493585 (derivationStepZipperDown!1270 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292))) (ite c!1082209 lt!2322716 (Context!10809 call!493589)) (h!70685 s!2326)))))

(declare-fun bm!493584 () Bool)

(assert (=> bm!493584 (= call!493586 call!493589)))

(declare-fun b!6037706 () Bool)

(assert (=> b!6037706 (= e!3688012 call!493588)))

(declare-fun b!6037707 () Bool)

(declare-fun e!3688008 () (Set Context!10808))

(assert (=> b!6037707 (= e!3688011 e!3688008)))

(assert (=> b!6037707 (= c!1082209 (is-Union!16020 (regTwo!32552 r!7292)))))

(declare-fun b!6037708 () Bool)

(assert (=> b!6037708 (= c!1082210 e!3688007)))

(declare-fun res!2514001 () Bool)

(assert (=> b!6037708 (=> (not res!2514001) (not e!3688007))))

(assert (=> b!6037708 (= res!2514001 (is-Concat!24865 (regTwo!32552 r!7292)))))

(assert (=> b!6037708 (= e!3688008 e!3688010)))

(declare-fun b!6037709 () Bool)

(assert (=> b!6037709 (= e!3688008 (set.union call!493587 call!493585))))

(declare-fun b!6037710 () Bool)

(assert (=> b!6037710 (= e!3688009 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893316 c!1082207) b!6037705))

(assert (= (and d!1893316 (not c!1082207)) b!6037707))

(assert (= (and b!6037707 c!1082209) b!6037709))

(assert (= (and b!6037707 (not c!1082209)) b!6037708))

(assert (= (and b!6037708 res!2514001) b!6037702))

(assert (= (and b!6037708 c!1082210) b!6037704))

(assert (= (and b!6037708 (not c!1082210)) b!6037701))

(assert (= (and b!6037701 c!1082206) b!6037706))

(assert (= (and b!6037701 (not c!1082206)) b!6037703))

(assert (= (and b!6037703 c!1082208) b!6037700))

(assert (= (and b!6037703 (not c!1082208)) b!6037710))

(assert (= (or b!6037706 b!6037700) bm!493584))

(assert (= (or b!6037706 b!6037700) bm!493580))

(assert (= (or b!6037704 bm!493584) bm!493582))

(assert (= (or b!6037704 bm!493580) bm!493581))

(assert (= (or b!6037709 b!6037704) bm!493583))

(assert (= (or b!6037709 bm!493581) bm!493579))

(declare-fun m!6908072 () Bool)

(assert (=> bm!493583 m!6908072))

(declare-fun m!6908074 () Bool)

(assert (=> b!6037705 m!6908074))

(declare-fun m!6908076 () Bool)

(assert (=> bm!493579 m!6908076))

(declare-fun m!6908078 () Bool)

(assert (=> bm!493582 m!6908078))

(declare-fun m!6908080 () Bool)

(assert (=> b!6037702 m!6908080))

(assert (=> b!6037333 d!1893316))

(declare-fun d!1893318 () Bool)

(assert (=> d!1893318 (= (flatMap!1533 lt!2322722 lambda!329245) (dynLambda!25214 lambda!329245 lt!2322733))))

(declare-fun lt!2322920 () Unit!157311)

(assert (=> d!1893318 (= lt!2322920 (choose!45124 lt!2322722 lt!2322733 lambda!329245))))

(assert (=> d!1893318 (= lt!2322722 (set.insert lt!2322733 (as set.empty (Set Context!10808))))))

(assert (=> d!1893318 (= (lemmaFlatMapOnSingletonSet!1059 lt!2322722 lt!2322733 lambda!329245) lt!2322920)))

(declare-fun b_lambda!229057 () Bool)

(assert (=> (not b_lambda!229057) (not d!1893318)))

(declare-fun bs!1488985 () Bool)

(assert (= bs!1488985 d!1893318))

(assert (=> bs!1488985 m!6907680))

(declare-fun m!6908082 () Bool)

(assert (=> bs!1488985 m!6908082))

(declare-fun m!6908084 () Bool)

(assert (=> bs!1488985 m!6908084))

(assert (=> bs!1488985 m!6907682))

(assert (=> b!6037333 d!1893318))

(declare-fun b!6037711 () Bool)

(declare-fun e!3688013 () (Set Context!10808))

(declare-fun e!3688015 () (Set Context!10808))

(assert (=> b!6037711 (= e!3688013 e!3688015)))

(declare-fun c!1082211 () Bool)

(assert (=> b!6037711 (= c!1082211 (is-Cons!64235 (exprs!5904 lt!2322698)))))

(declare-fun b!6037712 () Bool)

(declare-fun e!3688014 () Bool)

(assert (=> b!6037712 (= e!3688014 (nullable!6015 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun bm!493585 () Bool)

(declare-fun call!493590 () (Set Context!10808))

(assert (=> bm!493585 (= call!493590 (derivationStepZipperDown!1270 (h!70683 (exprs!5904 lt!2322698)) (Context!10809 (t!377788 (exprs!5904 lt!2322698))) (h!70685 s!2326)))))

(declare-fun d!1893320 () Bool)

(declare-fun c!1082212 () Bool)

(assert (=> d!1893320 (= c!1082212 e!3688014)))

(declare-fun res!2514002 () Bool)

(assert (=> d!1893320 (=> (not res!2514002) (not e!3688014))))

(assert (=> d!1893320 (= res!2514002 (is-Cons!64235 (exprs!5904 lt!2322698)))))

(assert (=> d!1893320 (= (derivationStepZipperUp!1196 lt!2322698 (h!70685 s!2326)) e!3688013)))

(declare-fun b!6037713 () Bool)

(assert (=> b!6037713 (= e!3688013 (set.union call!493590 (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 lt!2322698))) (h!70685 s!2326))))))

(declare-fun b!6037714 () Bool)

(assert (=> b!6037714 (= e!3688015 (as set.empty (Set Context!10808)))))

(declare-fun b!6037715 () Bool)

(assert (=> b!6037715 (= e!3688015 call!493590)))

(assert (= (and d!1893320 res!2514002) b!6037712))

(assert (= (and d!1893320 c!1082212) b!6037713))

(assert (= (and d!1893320 (not c!1082212)) b!6037711))

(assert (= (and b!6037711 c!1082211) b!6037715))

(assert (= (and b!6037711 (not c!1082211)) b!6037714))

(assert (= (or b!6037713 b!6037715) bm!493585))

(declare-fun m!6908086 () Bool)

(assert (=> b!6037712 m!6908086))

(declare-fun m!6908088 () Bool)

(assert (=> bm!493585 m!6908088))

(declare-fun m!6908090 () Bool)

(assert (=> b!6037713 m!6908090))

(assert (=> b!6037333 d!1893320))

(declare-fun d!1893322 () Bool)

(assert (=> d!1893322 (= (flatMap!1533 lt!2322718 lambda!329245) (choose!45123 lt!2322718 lambda!329245))))

(declare-fun bs!1488986 () Bool)

(assert (= bs!1488986 d!1893322))

(declare-fun m!6908092 () Bool)

(assert (=> bs!1488986 m!6908092))

(assert (=> b!6037333 d!1893322))

(declare-fun bs!1488987 () Bool)

(declare-fun b!6037716 () Bool)

(assert (= bs!1488987 (and b!6037716 d!1893280)))

(declare-fun lambda!329300 () Int)

(assert (=> bs!1488987 (not (= lambda!329300 lambda!329287))))

(declare-fun bs!1488988 () Bool)

(assert (= bs!1488988 (and b!6037716 b!6037654)))

(declare-fun lt!2322923 () Int)

(assert (=> bs!1488988 (= (= lt!2322923 lt!2322913) (= lambda!329300 lambda!329296))))

(declare-fun bs!1488989 () Bool)

(assert (= bs!1488989 (and b!6037716 b!6037661)))

(assert (=> bs!1488989 (= (= lt!2322923 lt!2322915) (= lambda!329300 lambda!329299))))

(declare-fun bs!1488990 () Bool)

(assert (= bs!1488990 (and b!6037716 b!6037659)))

(assert (=> bs!1488990 (= (= lt!2322923 lt!2322917) (= lambda!329300 lambda!329298))))

(declare-fun bs!1488991 () Bool)

(assert (= bs!1488991 (and b!6037716 b!6037656)))

(assert (=> bs!1488991 (= (= lt!2322923 lt!2322911) (= lambda!329300 lambda!329297))))

(assert (=> b!6037716 true))

(declare-fun bs!1488992 () Bool)

(declare-fun b!6037718 () Bool)

(assert (= bs!1488992 (and b!6037718 d!1893280)))

(declare-fun lambda!329301 () Int)

(assert (=> bs!1488992 (not (= lambda!329301 lambda!329287))))

(declare-fun bs!1488993 () Bool)

(assert (= bs!1488993 (and b!6037718 b!6037654)))

(declare-fun lt!2322921 () Int)

(assert (=> bs!1488993 (= (= lt!2322921 lt!2322913) (= lambda!329301 lambda!329296))))

(declare-fun bs!1488994 () Bool)

(assert (= bs!1488994 (and b!6037718 b!6037661)))

(assert (=> bs!1488994 (= (= lt!2322921 lt!2322915) (= lambda!329301 lambda!329299))))

(declare-fun bs!1488995 () Bool)

(assert (= bs!1488995 (and b!6037718 b!6037659)))

(assert (=> bs!1488995 (= (= lt!2322921 lt!2322917) (= lambda!329301 lambda!329298))))

(declare-fun bs!1488996 () Bool)

(assert (= bs!1488996 (and b!6037718 b!6037716)))

(assert (=> bs!1488996 (= (= lt!2322921 lt!2322923) (= lambda!329301 lambda!329300))))

(declare-fun bs!1488997 () Bool)

(assert (= bs!1488997 (and b!6037718 b!6037656)))

(assert (=> bs!1488997 (= (= lt!2322921 lt!2322911) (= lambda!329301 lambda!329297))))

(assert (=> b!6037718 true))

(declare-fun d!1893324 () Bool)

(declare-fun e!3688017 () Bool)

(assert (=> d!1893324 e!3688017))

(declare-fun res!2514003 () Bool)

(assert (=> d!1893324 (=> (not res!2514003) (not e!3688017))))

(assert (=> d!1893324 (= res!2514003 (>= lt!2322921 0))))

(declare-fun e!3688016 () Int)

(assert (=> d!1893324 (= lt!2322921 e!3688016)))

(declare-fun c!1082213 () Bool)

(assert (=> d!1893324 (= c!1082213 (is-Cons!64235 (exprs!5904 lt!2322733)))))

(assert (=> d!1893324 (= (contextDepth!168 lt!2322733) lt!2322921)))

(assert (=> b!6037716 (= e!3688016 lt!2322923)))

(assert (=> b!6037716 (= lt!2322923 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 lt!2322733))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))))))

(declare-fun lt!2322922 () Unit!157311)

(assert (=> b!6037716 (= lt!2322922 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 lt!2322733)) lt!2322923 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))))))

(assert (=> b!6037716 (forall!15128 (t!377788 (exprs!5904 lt!2322733)) lambda!329300)))

(declare-fun lt!2322924 () Unit!157311)

(assert (=> b!6037716 (= lt!2322924 lt!2322922)))

(declare-fun b!6037717 () Bool)

(assert (=> b!6037717 (= e!3688016 0)))

(assert (=> b!6037718 (= e!3688017 (forall!15128 (exprs!5904 lt!2322733) lambda!329301))))

(assert (= (and d!1893324 c!1082213) b!6037716))

(assert (= (and d!1893324 (not c!1082213)) b!6037717))

(assert (= (and d!1893324 res!2514003) b!6037718))

(declare-fun m!6908094 () Bool)

(assert (=> b!6037716 m!6908094))

(declare-fun m!6908096 () Bool)

(assert (=> b!6037716 m!6908096))

(declare-fun m!6908098 () Bool)

(assert (=> b!6037716 m!6908098))

(assert (=> b!6037716 m!6908094))

(assert (=> b!6037716 m!6908096))

(declare-fun m!6908100 () Bool)

(assert (=> b!6037716 m!6908100))

(assert (=> b!6037716 m!6908096))

(declare-fun m!6908102 () Bool)

(assert (=> b!6037716 m!6908102))

(declare-fun m!6908104 () Bool)

(assert (=> b!6037718 m!6908104))

(assert (=> b!6037313 d!1893324))

(declare-fun d!1893326 () Bool)

(declare-fun c!1082214 () Bool)

(assert (=> d!1893326 (= c!1082214 (isEmpty!36143 (t!377790 s!2326)))))

(declare-fun e!3688018 () Bool)

(assert (=> d!1893326 (= (matchZipper!2056 lt!2322706 (t!377790 s!2326)) e!3688018)))

(declare-fun b!6037719 () Bool)

(assert (=> b!6037719 (= e!3688018 (nullableZipper!1825 lt!2322706))))

(declare-fun b!6037720 () Bool)

(assert (=> b!6037720 (= e!3688018 (matchZipper!2056 (derivationStepZipper!2001 lt!2322706 (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))))))

(assert (= (and d!1893326 c!1082214) b!6037719))

(assert (= (and d!1893326 (not c!1082214)) b!6037720))

(assert (=> d!1893326 m!6907868))

(declare-fun m!6908106 () Bool)

(assert (=> b!6037719 m!6908106))

(assert (=> b!6037720 m!6907872))

(assert (=> b!6037720 m!6907872))

(declare-fun m!6908108 () Bool)

(assert (=> b!6037720 m!6908108))

(assert (=> b!6037720 m!6907876))

(assert (=> b!6037720 m!6908108))

(assert (=> b!6037720 m!6907876))

(declare-fun m!6908110 () Bool)

(assert (=> b!6037720 m!6908110))

(assert (=> b!6037334 d!1893326))

(declare-fun d!1893328 () Bool)

(assert (=> d!1893328 (= (isEmpty!36140 (t!377788 (exprs!5904 (h!70684 zl!343)))) (is-Nil!64235 (t!377788 (exprs!5904 (h!70684 zl!343)))))))

(assert (=> b!6037337 d!1893328))

(declare-fun bs!1488998 () Bool)

(declare-fun d!1893330 () Bool)

(assert (= bs!1488998 (and d!1893330 d!1893280)))

(declare-fun lambda!329304 () Int)

(assert (=> bs!1488998 (= lambda!329304 lambda!329287)))

(declare-fun bs!1488999 () Bool)

(assert (= bs!1488999 (and d!1893330 b!6037654)))

(assert (=> bs!1488999 (not (= lambda!329304 lambda!329296))))

(declare-fun bs!1489000 () Bool)

(assert (= bs!1489000 (and d!1893330 b!6037661)))

(assert (=> bs!1489000 (not (= lambda!329304 lambda!329299))))

(declare-fun bs!1489001 () Bool)

(assert (= bs!1489001 (and d!1893330 b!6037659)))

(assert (=> bs!1489001 (not (= lambda!329304 lambda!329298))))

(declare-fun bs!1489002 () Bool)

(assert (= bs!1489002 (and d!1893330 b!6037718)))

(assert (=> bs!1489002 (not (= lambda!329304 lambda!329301))))

(declare-fun bs!1489003 () Bool)

(assert (= bs!1489003 (and d!1893330 b!6037716)))

(assert (=> bs!1489003 (not (= lambda!329304 lambda!329300))))

(declare-fun bs!1489004 () Bool)

(assert (= bs!1489004 (and d!1893330 b!6037656)))

(assert (=> bs!1489004 (not (= lambda!329304 lambda!329297))))

(declare-fun e!3688031 () Bool)

(assert (=> d!1893330 e!3688031))

(declare-fun res!2514008 () Bool)

(assert (=> d!1893330 (=> (not res!2514008) (not e!3688031))))

(declare-fun lt!2322927 () Regex!16020)

(assert (=> d!1893330 (= res!2514008 (validRegex!7756 lt!2322927))))

(declare-fun e!3688036 () Regex!16020)

(assert (=> d!1893330 (= lt!2322927 e!3688036)))

(declare-fun c!1082225 () Bool)

(declare-fun e!3688034 () Bool)

(assert (=> d!1893330 (= c!1082225 e!3688034)))

(declare-fun res!2514009 () Bool)

(assert (=> d!1893330 (=> (not res!2514009) (not e!3688034))))

(assert (=> d!1893330 (= res!2514009 (is-Cons!64235 (unfocusZipperList!1441 zl!343)))))

(assert (=> d!1893330 (forall!15128 (unfocusZipperList!1441 zl!343) lambda!329304)))

(assert (=> d!1893330 (= (generalisedUnion!1864 (unfocusZipperList!1441 zl!343)) lt!2322927)))

(declare-fun b!6037741 () Bool)

(assert (=> b!6037741 (= e!3688036 (h!70683 (unfocusZipperList!1441 zl!343)))))

(declare-fun b!6037742 () Bool)

(assert (=> b!6037742 (= e!3688034 (isEmpty!36140 (t!377788 (unfocusZipperList!1441 zl!343))))))

(declare-fun b!6037743 () Bool)

(declare-fun e!3688032 () Bool)

(declare-fun head!12578 (List!64359) Regex!16020)

(assert (=> b!6037743 (= e!3688032 (= lt!2322927 (head!12578 (unfocusZipperList!1441 zl!343))))))

(declare-fun b!6037744 () Bool)

(declare-fun e!3688035 () Bool)

(assert (=> b!6037744 (= e!3688031 e!3688035)))

(declare-fun c!1082224 () Bool)

(assert (=> b!6037744 (= c!1082224 (isEmpty!36140 (unfocusZipperList!1441 zl!343)))))

(declare-fun b!6037745 () Bool)

(declare-fun isEmptyLang!1455 (Regex!16020) Bool)

(assert (=> b!6037745 (= e!3688035 (isEmptyLang!1455 lt!2322927))))

(declare-fun b!6037746 () Bool)

(declare-fun e!3688033 () Regex!16020)

(assert (=> b!6037746 (= e!3688033 EmptyLang!16020)))

(declare-fun b!6037747 () Bool)

(assert (=> b!6037747 (= e!3688035 e!3688032)))

(declare-fun c!1082226 () Bool)

(declare-fun tail!11663 (List!64359) List!64359)

(assert (=> b!6037747 (= c!1082226 (isEmpty!36140 (tail!11663 (unfocusZipperList!1441 zl!343))))))

(declare-fun b!6037748 () Bool)

(assert (=> b!6037748 (= e!3688033 (Union!16020 (h!70683 (unfocusZipperList!1441 zl!343)) (generalisedUnion!1864 (t!377788 (unfocusZipperList!1441 zl!343)))))))

(declare-fun b!6037749 () Bool)

(declare-fun isUnion!885 (Regex!16020) Bool)

(assert (=> b!6037749 (= e!3688032 (isUnion!885 lt!2322927))))

(declare-fun b!6037750 () Bool)

(assert (=> b!6037750 (= e!3688036 e!3688033)))

(declare-fun c!1082223 () Bool)

(assert (=> b!6037750 (= c!1082223 (is-Cons!64235 (unfocusZipperList!1441 zl!343)))))

(assert (= (and d!1893330 res!2514009) b!6037742))

(assert (= (and d!1893330 c!1082225) b!6037741))

(assert (= (and d!1893330 (not c!1082225)) b!6037750))

(assert (= (and b!6037750 c!1082223) b!6037748))

(assert (= (and b!6037750 (not c!1082223)) b!6037746))

(assert (= (and d!1893330 res!2514008) b!6037744))

(assert (= (and b!6037744 c!1082224) b!6037745))

(assert (= (and b!6037744 (not c!1082224)) b!6037747))

(assert (= (and b!6037747 c!1082226) b!6037743))

(assert (= (and b!6037747 (not c!1082226)) b!6037749))

(assert (=> b!6037744 m!6907592))

(declare-fun m!6908112 () Bool)

(assert (=> b!6037744 m!6908112))

(assert (=> b!6037743 m!6907592))

(declare-fun m!6908114 () Bool)

(assert (=> b!6037743 m!6908114))

(declare-fun m!6908116 () Bool)

(assert (=> b!6037749 m!6908116))

(declare-fun m!6908118 () Bool)

(assert (=> d!1893330 m!6908118))

(assert (=> d!1893330 m!6907592))

(declare-fun m!6908120 () Bool)

(assert (=> d!1893330 m!6908120))

(declare-fun m!6908122 () Bool)

(assert (=> b!6037745 m!6908122))

(declare-fun m!6908124 () Bool)

(assert (=> b!6037748 m!6908124))

(declare-fun m!6908126 () Bool)

(assert (=> b!6037742 m!6908126))

(assert (=> b!6037747 m!6907592))

(declare-fun m!6908128 () Bool)

(assert (=> b!6037747 m!6908128))

(assert (=> b!6037747 m!6908128))

(declare-fun m!6908130 () Bool)

(assert (=> b!6037747 m!6908130))

(assert (=> b!6037338 d!1893330))

(declare-fun bs!1489005 () Bool)

(declare-fun d!1893332 () Bool)

(assert (= bs!1489005 (and d!1893332 d!1893330)))

(declare-fun lambda!329307 () Int)

(assert (=> bs!1489005 (= lambda!329307 lambda!329304)))

(declare-fun bs!1489006 () Bool)

(assert (= bs!1489006 (and d!1893332 d!1893280)))

(assert (=> bs!1489006 (= lambda!329307 lambda!329287)))

(declare-fun bs!1489007 () Bool)

(assert (= bs!1489007 (and d!1893332 b!6037654)))

(assert (=> bs!1489007 (not (= lambda!329307 lambda!329296))))

(declare-fun bs!1489008 () Bool)

(assert (= bs!1489008 (and d!1893332 b!6037661)))

(assert (=> bs!1489008 (not (= lambda!329307 lambda!329299))))

(declare-fun bs!1489009 () Bool)

(assert (= bs!1489009 (and d!1893332 b!6037659)))

(assert (=> bs!1489009 (not (= lambda!329307 lambda!329298))))

(declare-fun bs!1489010 () Bool)

(assert (= bs!1489010 (and d!1893332 b!6037718)))

(assert (=> bs!1489010 (not (= lambda!329307 lambda!329301))))

(declare-fun bs!1489011 () Bool)

(assert (= bs!1489011 (and d!1893332 b!6037716)))

(assert (=> bs!1489011 (not (= lambda!329307 lambda!329300))))

(declare-fun bs!1489012 () Bool)

(assert (= bs!1489012 (and d!1893332 b!6037656)))

(assert (=> bs!1489012 (not (= lambda!329307 lambda!329297))))

(declare-fun lt!2322930 () List!64359)

(assert (=> d!1893332 (forall!15128 lt!2322930 lambda!329307)))

(declare-fun e!3688039 () List!64359)

(assert (=> d!1893332 (= lt!2322930 e!3688039)))

(declare-fun c!1082229 () Bool)

(assert (=> d!1893332 (= c!1082229 (is-Cons!64236 zl!343))))

(assert (=> d!1893332 (= (unfocusZipperList!1441 zl!343) lt!2322930)))

(declare-fun b!6037755 () Bool)

(assert (=> b!6037755 (= e!3688039 (Cons!64235 (generalisedConcat!1617 (exprs!5904 (h!70684 zl!343))) (unfocusZipperList!1441 (t!377789 zl!343))))))

(declare-fun b!6037756 () Bool)

(assert (=> b!6037756 (= e!3688039 Nil!64235)))

(assert (= (and d!1893332 c!1082229) b!6037755))

(assert (= (and d!1893332 (not c!1082229)) b!6037756))

(declare-fun m!6908132 () Bool)

(assert (=> d!1893332 m!6908132))

(assert (=> b!6037755 m!6907702))

(declare-fun m!6908134 () Bool)

(assert (=> b!6037755 m!6908134))

(assert (=> b!6037338 d!1893332))

(declare-fun bs!1489013 () Bool)

(declare-fun d!1893334 () Bool)

(assert (= bs!1489013 (and d!1893334 d!1893330)))

(declare-fun lambda!329310 () Int)

(assert (=> bs!1489013 (= lambda!329310 lambda!329304)))

(declare-fun bs!1489014 () Bool)

(assert (= bs!1489014 (and d!1893334 d!1893280)))

(assert (=> bs!1489014 (= lambda!329310 lambda!329287)))

(declare-fun bs!1489015 () Bool)

(assert (= bs!1489015 (and d!1893334 b!6037654)))

(assert (=> bs!1489015 (not (= lambda!329310 lambda!329296))))

(declare-fun bs!1489016 () Bool)

(assert (= bs!1489016 (and d!1893334 b!6037661)))

(assert (=> bs!1489016 (not (= lambda!329310 lambda!329299))))

(declare-fun bs!1489017 () Bool)

(assert (= bs!1489017 (and d!1893334 b!6037659)))

(assert (=> bs!1489017 (not (= lambda!329310 lambda!329298))))

(declare-fun bs!1489018 () Bool)

(assert (= bs!1489018 (and d!1893334 b!6037718)))

(assert (=> bs!1489018 (not (= lambda!329310 lambda!329301))))

(declare-fun bs!1489019 () Bool)

(assert (= bs!1489019 (and d!1893334 d!1893332)))

(assert (=> bs!1489019 (= lambda!329310 lambda!329307)))

(declare-fun bs!1489020 () Bool)

(assert (= bs!1489020 (and d!1893334 b!6037716)))

(assert (=> bs!1489020 (not (= lambda!329310 lambda!329300))))

(declare-fun bs!1489021 () Bool)

(assert (= bs!1489021 (and d!1893334 b!6037656)))

(assert (=> bs!1489021 (not (= lambda!329310 lambda!329297))))

(declare-fun b!6037777 () Bool)

(declare-fun e!3688057 () Bool)

(declare-fun e!3688052 () Bool)

(assert (=> b!6037777 (= e!3688057 e!3688052)))

(declare-fun c!1082239 () Bool)

(assert (=> b!6037777 (= c!1082239 (isEmpty!36140 (exprs!5904 (h!70684 zl!343))))))

(assert (=> d!1893334 e!3688057))

(declare-fun res!2514015 () Bool)

(assert (=> d!1893334 (=> (not res!2514015) (not e!3688057))))

(declare-fun lt!2322933 () Regex!16020)

(assert (=> d!1893334 (= res!2514015 (validRegex!7756 lt!2322933))))

(declare-fun e!3688056 () Regex!16020)

(assert (=> d!1893334 (= lt!2322933 e!3688056)))

(declare-fun c!1082240 () Bool)

(declare-fun e!3688055 () Bool)

(assert (=> d!1893334 (= c!1082240 e!3688055)))

(declare-fun res!2514014 () Bool)

(assert (=> d!1893334 (=> (not res!2514014) (not e!3688055))))

(assert (=> d!1893334 (= res!2514014 (is-Cons!64235 (exprs!5904 (h!70684 zl!343))))))

(assert (=> d!1893334 (forall!15128 (exprs!5904 (h!70684 zl!343)) lambda!329310)))

(assert (=> d!1893334 (= (generalisedConcat!1617 (exprs!5904 (h!70684 zl!343))) lt!2322933)))

(declare-fun b!6037778 () Bool)

(declare-fun e!3688053 () Bool)

(assert (=> b!6037778 (= e!3688052 e!3688053)))

(declare-fun c!1082241 () Bool)

(assert (=> b!6037778 (= c!1082241 (isEmpty!36140 (tail!11663 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun b!6037779 () Bool)

(declare-fun isEmptyExpr!1445 (Regex!16020) Bool)

(assert (=> b!6037779 (= e!3688052 (isEmptyExpr!1445 lt!2322933))))

(declare-fun b!6037780 () Bool)

(declare-fun isConcat!968 (Regex!16020) Bool)

(assert (=> b!6037780 (= e!3688053 (isConcat!968 lt!2322933))))

(declare-fun b!6037781 () Bool)

(declare-fun e!3688054 () Regex!16020)

(assert (=> b!6037781 (= e!3688054 EmptyExpr!16020)))

(declare-fun b!6037782 () Bool)

(assert (=> b!6037782 (= e!3688055 (isEmpty!36140 (t!377788 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun b!6037783 () Bool)

(assert (=> b!6037783 (= e!3688054 (Concat!24865 (h!70683 (exprs!5904 (h!70684 zl!343))) (generalisedConcat!1617 (t!377788 (exprs!5904 (h!70684 zl!343))))))))

(declare-fun b!6037784 () Bool)

(assert (=> b!6037784 (= e!3688056 (h!70683 (exprs!5904 (h!70684 zl!343))))))

(declare-fun b!6037785 () Bool)

(assert (=> b!6037785 (= e!3688053 (= lt!2322933 (head!12578 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun b!6037786 () Bool)

(assert (=> b!6037786 (= e!3688056 e!3688054)))

(declare-fun c!1082238 () Bool)

(assert (=> b!6037786 (= c!1082238 (is-Cons!64235 (exprs!5904 (h!70684 zl!343))))))

(assert (= (and d!1893334 res!2514014) b!6037782))

(assert (= (and d!1893334 c!1082240) b!6037784))

(assert (= (and d!1893334 (not c!1082240)) b!6037786))

(assert (= (and b!6037786 c!1082238) b!6037783))

(assert (= (and b!6037786 (not c!1082238)) b!6037781))

(assert (= (and d!1893334 res!2514015) b!6037777))

(assert (= (and b!6037777 c!1082239) b!6037779))

(assert (= (and b!6037777 (not c!1082239)) b!6037778))

(assert (= (and b!6037778 c!1082241) b!6037785))

(assert (= (and b!6037778 (not c!1082241)) b!6037780))

(assert (=> b!6037782 m!6907704))

(declare-fun m!6908136 () Bool)

(assert (=> d!1893334 m!6908136))

(declare-fun m!6908138 () Bool)

(assert (=> d!1893334 m!6908138))

(declare-fun m!6908140 () Bool)

(assert (=> b!6037779 m!6908140))

(declare-fun m!6908142 () Bool)

(assert (=> b!6037783 m!6908142))

(declare-fun m!6908144 () Bool)

(assert (=> b!6037785 m!6908144))

(declare-fun m!6908146 () Bool)

(assert (=> b!6037777 m!6908146))

(declare-fun m!6908148 () Bool)

(assert (=> b!6037780 m!6908148))

(declare-fun m!6908150 () Bool)

(assert (=> b!6037778 m!6908150))

(assert (=> b!6037778 m!6908150))

(declare-fun m!6908152 () Bool)

(assert (=> b!6037778 m!6908152))

(assert (=> b!6037336 d!1893334))

(declare-fun d!1893336 () Bool)

(declare-fun lt!2322934 () Regex!16020)

(assert (=> d!1893336 (validRegex!7756 lt!2322934)))

(assert (=> d!1893336 (= lt!2322934 (generalisedUnion!1864 (unfocusZipperList!1441 zl!343)))))

(assert (=> d!1893336 (= (unfocusZipper!1762 zl!343) lt!2322934)))

(declare-fun bs!1489022 () Bool)

(assert (= bs!1489022 d!1893336))

(declare-fun m!6908154 () Bool)

(assert (=> bs!1489022 m!6908154))

(assert (=> bs!1489022 m!6907592))

(assert (=> bs!1489022 m!6907592))

(assert (=> bs!1489022 m!6907594))

(assert (=> b!6037331 d!1893336))

(declare-fun bm!493586 () Bool)

(declare-fun c!1082243 () Bool)

(declare-fun c!1082242 () Bool)

(declare-fun call!493591 () Bool)

(assert (=> bm!493586 (= call!493591 (validRegex!7756 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))))))

(declare-fun b!6037787 () Bool)

(declare-fun e!3688061 () Bool)

(declare-fun call!493593 () Bool)

(assert (=> b!6037787 (= e!3688061 call!493593)))

(declare-fun bm!493587 () Bool)

(declare-fun call!493592 () Bool)

(assert (=> bm!493587 (= call!493592 (validRegex!7756 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))

(declare-fun b!6037788 () Bool)

(declare-fun e!3688062 () Bool)

(declare-fun e!3688060 () Bool)

(assert (=> b!6037788 (= e!3688062 e!3688060)))

(declare-fun res!2514019 () Bool)

(assert (=> b!6037788 (= res!2514019 (not (nullable!6015 (reg!16349 (regTwo!32552 r!7292)))))))

(assert (=> b!6037788 (=> (not res!2514019) (not e!3688060))))

(declare-fun b!6037789 () Bool)

(declare-fun e!3688064 () Bool)

(assert (=> b!6037789 (= e!3688062 e!3688064)))

(assert (=> b!6037789 (= c!1082242 (is-Union!16020 (regTwo!32552 r!7292)))))

(declare-fun d!1893338 () Bool)

(declare-fun res!2514020 () Bool)

(declare-fun e!3688058 () Bool)

(assert (=> d!1893338 (=> res!2514020 e!3688058)))

(assert (=> d!1893338 (= res!2514020 (is-ElementMatch!16020 (regTwo!32552 r!7292)))))

(assert (=> d!1893338 (= (validRegex!7756 (regTwo!32552 r!7292)) e!3688058)))

(declare-fun bm!493588 () Bool)

(assert (=> bm!493588 (= call!493593 call!493591)))

(declare-fun b!6037790 () Bool)

(assert (=> b!6037790 (= e!3688058 e!3688062)))

(assert (=> b!6037790 (= c!1082243 (is-Star!16020 (regTwo!32552 r!7292)))))

(declare-fun b!6037791 () Bool)

(assert (=> b!6037791 (= e!3688060 call!493591)))

(declare-fun b!6037792 () Bool)

(declare-fun e!3688063 () Bool)

(assert (=> b!6037792 (= e!3688063 e!3688061)))

(declare-fun res!2514018 () Bool)

(assert (=> b!6037792 (=> (not res!2514018) (not e!3688061))))

(assert (=> b!6037792 (= res!2514018 call!493592)))

(declare-fun b!6037793 () Bool)

(declare-fun res!2514016 () Bool)

(declare-fun e!3688059 () Bool)

(assert (=> b!6037793 (=> (not res!2514016) (not e!3688059))))

(assert (=> b!6037793 (= res!2514016 call!493592)))

(assert (=> b!6037793 (= e!3688064 e!3688059)))

(declare-fun b!6037794 () Bool)

(declare-fun res!2514017 () Bool)

(assert (=> b!6037794 (=> res!2514017 e!3688063)))

(assert (=> b!6037794 (= res!2514017 (not (is-Concat!24865 (regTwo!32552 r!7292))))))

(assert (=> b!6037794 (= e!3688064 e!3688063)))

(declare-fun b!6037795 () Bool)

(assert (=> b!6037795 (= e!3688059 call!493593)))

(assert (= (and d!1893338 (not res!2514020)) b!6037790))

(assert (= (and b!6037790 c!1082243) b!6037788))

(assert (= (and b!6037790 (not c!1082243)) b!6037789))

(assert (= (and b!6037788 res!2514019) b!6037791))

(assert (= (and b!6037789 c!1082242) b!6037793))

(assert (= (and b!6037789 (not c!1082242)) b!6037794))

(assert (= (and b!6037793 res!2514016) b!6037795))

(assert (= (and b!6037794 (not res!2514017)) b!6037792))

(assert (= (and b!6037792 res!2514018) b!6037787))

(assert (= (or b!6037795 b!6037787) bm!493588))

(assert (= (or b!6037793 b!6037792) bm!493587))

(assert (= (or b!6037791 bm!493588) bm!493586))

(declare-fun m!6908156 () Bool)

(assert (=> bm!493586 m!6908156))

(declare-fun m!6908158 () Bool)

(assert (=> bm!493587 m!6908158))

(declare-fun m!6908160 () Bool)

(assert (=> b!6037788 m!6908160))

(assert (=> b!6037329 d!1893338))

(declare-fun b!6037796 () Bool)

(declare-fun e!3688066 () Bool)

(assert (=> b!6037796 (= e!3688066 (matchR!8203 (derivativeStep!4749 lt!2322697 (head!12577 s!2326)) (tail!11662 s!2326)))))

(declare-fun b!6037797 () Bool)

(declare-fun e!3688068 () Bool)

(declare-fun lt!2322935 () Bool)

(assert (=> b!6037797 (= e!3688068 (not lt!2322935))))

(declare-fun b!6037798 () Bool)

(declare-fun e!3688067 () Bool)

(assert (=> b!6037798 (= e!3688067 (not (= (head!12577 s!2326) (c!1082125 lt!2322697))))))

(declare-fun b!6037799 () Bool)

(declare-fun res!2514027 () Bool)

(declare-fun e!3688071 () Bool)

(assert (=> b!6037799 (=> (not res!2514027) (not e!3688071))))

(assert (=> b!6037799 (= res!2514027 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun b!6037800 () Bool)

(declare-fun e!3688069 () Bool)

(declare-fun call!493594 () Bool)

(assert (=> b!6037800 (= e!3688069 (= lt!2322935 call!493594))))

(declare-fun b!6037801 () Bool)

(assert (=> b!6037801 (= e!3688071 (= (head!12577 s!2326) (c!1082125 lt!2322697)))))

(declare-fun d!1893340 () Bool)

(assert (=> d!1893340 e!3688069))

(declare-fun c!1082244 () Bool)

(assert (=> d!1893340 (= c!1082244 (is-EmptyExpr!16020 lt!2322697))))

(assert (=> d!1893340 (= lt!2322935 e!3688066)))

(declare-fun c!1082245 () Bool)

(assert (=> d!1893340 (= c!1082245 (isEmpty!36143 s!2326))))

(assert (=> d!1893340 (validRegex!7756 lt!2322697)))

(assert (=> d!1893340 (= (matchR!8203 lt!2322697 s!2326) lt!2322935)))

(declare-fun b!6037802 () Bool)

(declare-fun res!2514024 () Bool)

(assert (=> b!6037802 (=> res!2514024 e!3688067)))

(assert (=> b!6037802 (= res!2514024 (not (isEmpty!36143 (tail!11662 s!2326))))))

(declare-fun b!6037803 () Bool)

(declare-fun res!2514028 () Bool)

(declare-fun e!3688070 () Bool)

(assert (=> b!6037803 (=> res!2514028 e!3688070)))

(assert (=> b!6037803 (= res!2514028 (not (is-ElementMatch!16020 lt!2322697)))))

(assert (=> b!6037803 (= e!3688068 e!3688070)))

(declare-fun b!6037804 () Bool)

(declare-fun res!2514025 () Bool)

(assert (=> b!6037804 (=> res!2514025 e!3688070)))

(assert (=> b!6037804 (= res!2514025 e!3688071)))

(declare-fun res!2514026 () Bool)

(assert (=> b!6037804 (=> (not res!2514026) (not e!3688071))))

(assert (=> b!6037804 (= res!2514026 lt!2322935)))

(declare-fun b!6037805 () Bool)

(declare-fun res!2514022 () Bool)

(assert (=> b!6037805 (=> (not res!2514022) (not e!3688071))))

(assert (=> b!6037805 (= res!2514022 (not call!493594))))

(declare-fun b!6037806 () Bool)

(declare-fun e!3688065 () Bool)

(assert (=> b!6037806 (= e!3688065 e!3688067)))

(declare-fun res!2514023 () Bool)

(assert (=> b!6037806 (=> res!2514023 e!3688067)))

(assert (=> b!6037806 (= res!2514023 call!493594)))

(declare-fun b!6037807 () Bool)

(assert (=> b!6037807 (= e!3688066 (nullable!6015 lt!2322697))))

(declare-fun bm!493589 () Bool)

(assert (=> bm!493589 (= call!493594 (isEmpty!36143 s!2326))))

(declare-fun b!6037808 () Bool)

(assert (=> b!6037808 (= e!3688069 e!3688068)))

(declare-fun c!1082246 () Bool)

(assert (=> b!6037808 (= c!1082246 (is-EmptyLang!16020 lt!2322697))))

(declare-fun b!6037809 () Bool)

(assert (=> b!6037809 (= e!3688070 e!3688065)))

(declare-fun res!2514021 () Bool)

(assert (=> b!6037809 (=> (not res!2514021) (not e!3688065))))

(assert (=> b!6037809 (= res!2514021 (not lt!2322935))))

(assert (= (and d!1893340 c!1082245) b!6037807))

(assert (= (and d!1893340 (not c!1082245)) b!6037796))

(assert (= (and d!1893340 c!1082244) b!6037800))

(assert (= (and d!1893340 (not c!1082244)) b!6037808))

(assert (= (and b!6037808 c!1082246) b!6037797))

(assert (= (and b!6037808 (not c!1082246)) b!6037803))

(assert (= (and b!6037803 (not res!2514028)) b!6037804))

(assert (= (and b!6037804 res!2514026) b!6037805))

(assert (= (and b!6037805 res!2514022) b!6037799))

(assert (= (and b!6037799 res!2514027) b!6037801))

(assert (= (and b!6037804 (not res!2514025)) b!6037809))

(assert (= (and b!6037809 res!2514021) b!6037806))

(assert (= (and b!6037806 (not res!2514023)) b!6037802))

(assert (= (and b!6037802 (not res!2514024)) b!6037798))

(assert (= (or b!6037800 b!6037805 b!6037806) bm!493589))

(assert (=> bm!493589 m!6907834))

(assert (=> b!6037802 m!6907842))

(assert (=> b!6037802 m!6907842))

(assert (=> b!6037802 m!6907846))

(assert (=> b!6037796 m!6907838))

(assert (=> b!6037796 m!6907838))

(declare-fun m!6908162 () Bool)

(assert (=> b!6037796 m!6908162))

(assert (=> b!6037796 m!6907842))

(assert (=> b!6037796 m!6908162))

(assert (=> b!6037796 m!6907842))

(declare-fun m!6908164 () Bool)

(assert (=> b!6037796 m!6908164))

(declare-fun m!6908166 () Bool)

(assert (=> b!6037807 m!6908166))

(assert (=> b!6037799 m!6907842))

(assert (=> b!6037799 m!6907842))

(assert (=> b!6037799 m!6907846))

(assert (=> b!6037798 m!6907838))

(assert (=> d!1893340 m!6907834))

(declare-fun m!6908168 () Bool)

(assert (=> d!1893340 m!6908168))

(assert (=> b!6037801 m!6907838))

(assert (=> b!6037329 d!1893340))

(declare-fun d!1893342 () Bool)

(assert (=> d!1893342 (= (matchR!8203 lt!2322697 s!2326) (matchZipper!2056 lt!2322718 s!2326))))

(declare-fun lt!2322936 () Unit!157311)

(assert (=> d!1893342 (= lt!2322936 (choose!45118 lt!2322718 lt!2322702 lt!2322697 s!2326))))

(assert (=> d!1893342 (validRegex!7756 lt!2322697)))

(assert (=> d!1893342 (= (theoremZipperRegexEquiv!712 lt!2322718 lt!2322702 lt!2322697 s!2326) lt!2322936)))

(declare-fun bs!1489023 () Bool)

(assert (= bs!1489023 d!1893342))

(assert (=> bs!1489023 m!6907638))

(assert (=> bs!1489023 m!6907694))

(declare-fun m!6908170 () Bool)

(assert (=> bs!1489023 m!6908170))

(assert (=> bs!1489023 m!6908168))

(assert (=> b!6037329 d!1893342))

(declare-fun bs!1489024 () Bool)

(declare-fun d!1893344 () Bool)

(assert (= bs!1489024 (and d!1893344 d!1893334)))

(declare-fun lambda!329311 () Int)

(assert (=> bs!1489024 (= lambda!329311 lambda!329310)))

(declare-fun bs!1489025 () Bool)

(assert (= bs!1489025 (and d!1893344 d!1893330)))

(assert (=> bs!1489025 (= lambda!329311 lambda!329304)))

(declare-fun bs!1489026 () Bool)

(assert (= bs!1489026 (and d!1893344 d!1893280)))

(assert (=> bs!1489026 (= lambda!329311 lambda!329287)))

(declare-fun bs!1489027 () Bool)

(assert (= bs!1489027 (and d!1893344 b!6037654)))

(assert (=> bs!1489027 (not (= lambda!329311 lambda!329296))))

(declare-fun bs!1489028 () Bool)

(assert (= bs!1489028 (and d!1893344 b!6037661)))

(assert (=> bs!1489028 (not (= lambda!329311 lambda!329299))))

(declare-fun bs!1489029 () Bool)

(assert (= bs!1489029 (and d!1893344 b!6037659)))

(assert (=> bs!1489029 (not (= lambda!329311 lambda!329298))))

(declare-fun bs!1489030 () Bool)

(assert (= bs!1489030 (and d!1893344 b!6037718)))

(assert (=> bs!1489030 (not (= lambda!329311 lambda!329301))))

(declare-fun bs!1489031 () Bool)

(assert (= bs!1489031 (and d!1893344 d!1893332)))

(assert (=> bs!1489031 (= lambda!329311 lambda!329307)))

(declare-fun bs!1489032 () Bool)

(assert (= bs!1489032 (and d!1893344 b!6037716)))

(assert (=> bs!1489032 (not (= lambda!329311 lambda!329300))))

(declare-fun bs!1489033 () Bool)

(assert (= bs!1489033 (and d!1893344 b!6037656)))

(assert (=> bs!1489033 (not (= lambda!329311 lambda!329297))))

(assert (=> d!1893344 (= (inv!83298 setElem!40838) (forall!15128 (exprs!5904 setElem!40838) lambda!329311))))

(declare-fun bs!1489034 () Bool)

(assert (= bs!1489034 d!1893344))

(declare-fun m!6908172 () Bool)

(assert (=> bs!1489034 m!6908172))

(assert (=> setNonEmpty!40838 d!1893344))

(declare-fun b!6037810 () Bool)

(declare-fun e!3688074 () (Set Context!10808))

(declare-fun call!493599 () (Set Context!10808))

(assert (=> b!6037810 (= e!3688074 call!493599)))

(declare-fun c!1082251 () Bool)

(declare-fun c!1082250 () Bool)

(declare-fun c!1082247 () Bool)

(declare-fun call!493597 () List!64359)

(declare-fun bm!493590 () Bool)

(declare-fun call!493598 () (Set Context!10808))

(assert (=> bm!493590 (= call!493598 (derivationStepZipperDown!1270 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292)))) (ite (or c!1082250 c!1082251) lt!2322716 (Context!10809 call!493597)) (h!70685 s!2326)))))

(declare-fun b!6037811 () Bool)

(declare-fun e!3688075 () (Set Context!10808))

(declare-fun e!3688077 () (Set Context!10808))

(assert (=> b!6037811 (= e!3688075 e!3688077)))

(assert (=> b!6037811 (= c!1082247 (is-Concat!24865 r!7292))))

(declare-fun d!1893346 () Bool)

(declare-fun c!1082248 () Bool)

(assert (=> d!1893346 (= c!1082248 (and (is-ElementMatch!16020 r!7292) (= (c!1082125 r!7292) (h!70685 s!2326))))))

(declare-fun e!3688076 () (Set Context!10808))

(assert (=> d!1893346 (= (derivationStepZipperDown!1270 r!7292 lt!2322716 (h!70685 s!2326)) e!3688076)))

(declare-fun bm!493591 () Bool)

(declare-fun call!493595 () (Set Context!10808))

(assert (=> bm!493591 (= call!493599 call!493595)))

(declare-fun b!6037812 () Bool)

(declare-fun e!3688072 () Bool)

(assert (=> b!6037812 (= e!3688072 (nullable!6015 (regOne!32552 r!7292)))))

(declare-fun bm!493592 () Bool)

(assert (=> bm!493592 (= call!493595 call!493598)))

(declare-fun b!6037813 () Bool)

(declare-fun c!1082249 () Bool)

(assert (=> b!6037813 (= c!1082249 (is-Star!16020 r!7292))))

(assert (=> b!6037813 (= e!3688077 e!3688074)))

(declare-fun call!493600 () List!64359)

(declare-fun bm!493593 () Bool)

(assert (=> bm!493593 (= call!493600 ($colon$colon!1905 (exprs!5904 lt!2322716) (ite (or c!1082251 c!1082247) (regTwo!32552 r!7292) r!7292)))))

(declare-fun b!6037814 () Bool)

(declare-fun call!493596 () (Set Context!10808))

(assert (=> b!6037814 (= e!3688075 (set.union call!493596 call!493595))))

(declare-fun b!6037815 () Bool)

(assert (=> b!6037815 (= e!3688076 (set.insert lt!2322716 (as set.empty (Set Context!10808))))))

(declare-fun bm!493594 () Bool)

(assert (=> bm!493594 (= call!493596 (derivationStepZipperDown!1270 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292)) (ite c!1082250 lt!2322716 (Context!10809 call!493600)) (h!70685 s!2326)))))

(declare-fun bm!493595 () Bool)

(assert (=> bm!493595 (= call!493597 call!493600)))

(declare-fun b!6037816 () Bool)

(assert (=> b!6037816 (= e!3688077 call!493599)))

(declare-fun b!6037817 () Bool)

(declare-fun e!3688073 () (Set Context!10808))

(assert (=> b!6037817 (= e!3688076 e!3688073)))

(assert (=> b!6037817 (= c!1082250 (is-Union!16020 r!7292))))

(declare-fun b!6037818 () Bool)

(assert (=> b!6037818 (= c!1082251 e!3688072)))

(declare-fun res!2514029 () Bool)

(assert (=> b!6037818 (=> (not res!2514029) (not e!3688072))))

(assert (=> b!6037818 (= res!2514029 (is-Concat!24865 r!7292))))

(assert (=> b!6037818 (= e!3688073 e!3688075)))

(declare-fun b!6037819 () Bool)

(assert (=> b!6037819 (= e!3688073 (set.union call!493598 call!493596))))

(declare-fun b!6037820 () Bool)

(assert (=> b!6037820 (= e!3688074 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893346 c!1082248) b!6037815))

(assert (= (and d!1893346 (not c!1082248)) b!6037817))

(assert (= (and b!6037817 c!1082250) b!6037819))

(assert (= (and b!6037817 (not c!1082250)) b!6037818))

(assert (= (and b!6037818 res!2514029) b!6037812))

(assert (= (and b!6037818 c!1082251) b!6037814))

(assert (= (and b!6037818 (not c!1082251)) b!6037811))

(assert (= (and b!6037811 c!1082247) b!6037816))

(assert (= (and b!6037811 (not c!1082247)) b!6037813))

(assert (= (and b!6037813 c!1082249) b!6037810))

(assert (= (and b!6037813 (not c!1082249)) b!6037820))

(assert (= (or b!6037816 b!6037810) bm!493595))

(assert (= (or b!6037816 b!6037810) bm!493591))

(assert (= (or b!6037814 bm!493595) bm!493593))

(assert (= (or b!6037814 bm!493591) bm!493592))

(assert (= (or b!6037819 b!6037814) bm!493594))

(assert (= (or b!6037819 bm!493592) bm!493590))

(declare-fun m!6908174 () Bool)

(assert (=> bm!493594 m!6908174))

(assert (=> b!6037815 m!6908074))

(declare-fun m!6908176 () Bool)

(assert (=> bm!493590 m!6908176))

(declare-fun m!6908178 () Bool)

(assert (=> bm!493593 m!6908178))

(assert (=> b!6037812 m!6907676))

(assert (=> b!6037312 d!1893346))

(declare-fun b!6037821 () Bool)

(declare-fun e!3688078 () (Set Context!10808))

(declare-fun e!3688080 () (Set Context!10808))

(assert (=> b!6037821 (= e!3688078 e!3688080)))

(declare-fun c!1082252 () Bool)

(assert (=> b!6037821 (= c!1082252 (is-Cons!64235 (exprs!5904 lt!2322710)))))

(declare-fun b!6037822 () Bool)

(declare-fun e!3688079 () Bool)

(assert (=> b!6037822 (= e!3688079 (nullable!6015 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun bm!493596 () Bool)

(declare-fun call!493601 () (Set Context!10808))

(assert (=> bm!493596 (= call!493601 (derivationStepZipperDown!1270 (h!70683 (exprs!5904 lt!2322710)) (Context!10809 (t!377788 (exprs!5904 lt!2322710))) (h!70685 s!2326)))))

(declare-fun d!1893348 () Bool)

(declare-fun c!1082253 () Bool)

(assert (=> d!1893348 (= c!1082253 e!3688079)))

(declare-fun res!2514030 () Bool)

(assert (=> d!1893348 (=> (not res!2514030) (not e!3688079))))

(assert (=> d!1893348 (= res!2514030 (is-Cons!64235 (exprs!5904 lt!2322710)))))

(assert (=> d!1893348 (= (derivationStepZipperUp!1196 lt!2322710 (h!70685 s!2326)) e!3688078)))

(declare-fun b!6037823 () Bool)

(assert (=> b!6037823 (= e!3688078 (set.union call!493601 (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 lt!2322710))) (h!70685 s!2326))))))

(declare-fun b!6037824 () Bool)

(assert (=> b!6037824 (= e!3688080 (as set.empty (Set Context!10808)))))

(declare-fun b!6037825 () Bool)

(assert (=> b!6037825 (= e!3688080 call!493601)))

(assert (= (and d!1893348 res!2514030) b!6037822))

(assert (= (and d!1893348 c!1082253) b!6037823))

(assert (= (and d!1893348 (not c!1082253)) b!6037821))

(assert (= (and b!6037821 c!1082252) b!6037825))

(assert (= (and b!6037821 (not c!1082252)) b!6037824))

(assert (= (or b!6037823 b!6037825) bm!493596))

(declare-fun m!6908180 () Bool)

(assert (=> b!6037822 m!6908180))

(declare-fun m!6908182 () Bool)

(assert (=> bm!493596 m!6908182))

(declare-fun m!6908184 () Bool)

(assert (=> b!6037823 m!6908184))

(assert (=> b!6037312 d!1893348))

(declare-fun bs!1489035 () Bool)

(declare-fun d!1893350 () Bool)

(assert (= bs!1489035 (and d!1893350 b!6037340)))

(declare-fun lambda!329312 () Int)

(assert (=> bs!1489035 (= lambda!329312 lambda!329245)))

(declare-fun bs!1489036 () Bool)

(assert (= bs!1489036 (and d!1893350 d!1893252)))

(assert (=> bs!1489036 (= lambda!329312 lambda!329263)))

(declare-fun bs!1489037 () Bool)

(assert (= bs!1489037 (and d!1893350 d!1893288)))

(assert (=> bs!1489037 (= lambda!329312 lambda!329291)))

(assert (=> d!1893350 true))

(assert (=> d!1893350 (= (derivationStepZipper!2001 z!1189 (h!70685 s!2326)) (flatMap!1533 z!1189 lambda!329312))))

(declare-fun bs!1489038 () Bool)

(assert (= bs!1489038 d!1893350))

(declare-fun m!6908186 () Bool)

(assert (=> bs!1489038 m!6908186))

(assert (=> b!6037312 d!1893350))

(declare-fun bs!1489039 () Bool)

(declare-fun b!6037859 () Bool)

(assert (= bs!1489039 (and b!6037859 d!1893258)))

(declare-fun lambda!329317 () Int)

(assert (=> bs!1489039 (not (= lambda!329317 lambda!329268))))

(declare-fun bs!1489040 () Bool)

(assert (= bs!1489040 (and b!6037859 b!6037326)))

(assert (=> bs!1489040 (not (= lambda!329317 lambda!329243))))

(declare-fun bs!1489041 () Bool)

(assert (= bs!1489041 (and b!6037859 d!1893262)))

(assert (=> bs!1489041 (not (= lambda!329317 lambda!329272))))

(assert (=> bs!1489039 (not (= lambda!329317 lambda!329269))))

(assert (=> bs!1489040 (not (= lambda!329317 lambda!329244))))

(assert (=> b!6037859 true))

(assert (=> b!6037859 true))

(declare-fun bs!1489042 () Bool)

(declare-fun b!6037864 () Bool)

(assert (= bs!1489042 (and b!6037864 d!1893258)))

(declare-fun lambda!329318 () Int)

(assert (=> bs!1489042 (not (= lambda!329318 lambda!329268))))

(declare-fun bs!1489043 () Bool)

(assert (= bs!1489043 (and b!6037864 b!6037326)))

(assert (=> bs!1489043 (not (= lambda!329318 lambda!329243))))

(declare-fun bs!1489044 () Bool)

(assert (= bs!1489044 (and b!6037864 b!6037859)))

(assert (=> bs!1489044 (not (= lambda!329318 lambda!329317))))

(declare-fun bs!1489045 () Bool)

(assert (= bs!1489045 (and b!6037864 d!1893262)))

(assert (=> bs!1489045 (not (= lambda!329318 lambda!329272))))

(assert (=> bs!1489042 (= lambda!329318 lambda!329269)))

(assert (=> bs!1489043 (= lambda!329318 lambda!329244)))

(assert (=> b!6037864 true))

(assert (=> b!6037864 true))

(declare-fun b!6037858 () Bool)

(declare-fun e!3688099 () Bool)

(declare-fun e!3688105 () Bool)

(assert (=> b!6037858 (= e!3688099 e!3688105)))

(declare-fun c!1082262 () Bool)

(assert (=> b!6037858 (= c!1082262 (is-Star!16020 r!7292))))

(declare-fun e!3688103 () Bool)

(declare-fun call!493606 () Bool)

(assert (=> b!6037859 (= e!3688103 call!493606)))

(declare-fun bm!493601 () Bool)

(assert (=> bm!493601 (= call!493606 (Exists!3090 (ite c!1082262 lambda!329317 lambda!329318)))))

(declare-fun b!6037860 () Bool)

(declare-fun e!3688100 () Bool)

(assert (=> b!6037860 (= e!3688100 (= s!2326 (Cons!64237 (c!1082125 r!7292) Nil!64237)))))

(declare-fun b!6037861 () Bool)

(declare-fun e!3688104 () Bool)

(assert (=> b!6037861 (= e!3688104 (matchRSpec!3121 (regTwo!32553 r!7292) s!2326))))

(declare-fun d!1893352 () Bool)

(declare-fun c!1082264 () Bool)

(assert (=> d!1893352 (= c!1082264 (is-EmptyExpr!16020 r!7292))))

(declare-fun e!3688102 () Bool)

(assert (=> d!1893352 (= (matchRSpec!3121 r!7292 s!2326) e!3688102)))

(declare-fun b!6037862 () Bool)

(declare-fun c!1082263 () Bool)

(assert (=> b!6037862 (= c!1082263 (is-Union!16020 r!7292))))

(assert (=> b!6037862 (= e!3688100 e!3688099)))

(declare-fun b!6037863 () Bool)

(declare-fun e!3688101 () Bool)

(assert (=> b!6037863 (= e!3688102 e!3688101)))

(declare-fun res!2514048 () Bool)

(assert (=> b!6037863 (= res!2514048 (not (is-EmptyLang!16020 r!7292)))))

(assert (=> b!6037863 (=> (not res!2514048) (not e!3688101))))

(assert (=> b!6037864 (= e!3688105 call!493606)))

(declare-fun bm!493602 () Bool)

(declare-fun call!493607 () Bool)

(assert (=> bm!493602 (= call!493607 (isEmpty!36143 s!2326))))

(declare-fun b!6037865 () Bool)

(declare-fun res!2514047 () Bool)

(assert (=> b!6037865 (=> res!2514047 e!3688103)))

(assert (=> b!6037865 (= res!2514047 call!493607)))

(assert (=> b!6037865 (= e!3688105 e!3688103)))

(declare-fun b!6037866 () Bool)

(assert (=> b!6037866 (= e!3688099 e!3688104)))

(declare-fun res!2514049 () Bool)

(assert (=> b!6037866 (= res!2514049 (matchRSpec!3121 (regOne!32553 r!7292) s!2326))))

(assert (=> b!6037866 (=> res!2514049 e!3688104)))

(declare-fun b!6037867 () Bool)

(assert (=> b!6037867 (= e!3688102 call!493607)))

(declare-fun b!6037868 () Bool)

(declare-fun c!1082265 () Bool)

(assert (=> b!6037868 (= c!1082265 (is-ElementMatch!16020 r!7292))))

(assert (=> b!6037868 (= e!3688101 e!3688100)))

(assert (= (and d!1893352 c!1082264) b!6037867))

(assert (= (and d!1893352 (not c!1082264)) b!6037863))

(assert (= (and b!6037863 res!2514048) b!6037868))

(assert (= (and b!6037868 c!1082265) b!6037860))

(assert (= (and b!6037868 (not c!1082265)) b!6037862))

(assert (= (and b!6037862 c!1082263) b!6037866))

(assert (= (and b!6037862 (not c!1082263)) b!6037858))

(assert (= (and b!6037866 (not res!2514049)) b!6037861))

(assert (= (and b!6037858 c!1082262) b!6037865))

(assert (= (and b!6037858 (not c!1082262)) b!6037864))

(assert (= (and b!6037865 (not res!2514047)) b!6037859))

(assert (= (or b!6037859 b!6037864) bm!493601))

(assert (= (or b!6037867 b!6037865) bm!493602))

(declare-fun m!6908188 () Bool)

(assert (=> bm!493601 m!6908188))

(declare-fun m!6908190 () Bool)

(assert (=> b!6037861 m!6908190))

(assert (=> bm!493602 m!6907834))

(declare-fun m!6908192 () Bool)

(assert (=> b!6037866 m!6908192))

(assert (=> b!6037311 d!1893352))

(declare-fun b!6037869 () Bool)

(declare-fun e!3688107 () Bool)

(assert (=> b!6037869 (= e!3688107 (matchR!8203 (derivativeStep!4749 r!7292 (head!12577 s!2326)) (tail!11662 s!2326)))))

(declare-fun b!6037870 () Bool)

(declare-fun e!3688109 () Bool)

(declare-fun lt!2322937 () Bool)

(assert (=> b!6037870 (= e!3688109 (not lt!2322937))))

(declare-fun b!6037871 () Bool)

(declare-fun e!3688108 () Bool)

(assert (=> b!6037871 (= e!3688108 (not (= (head!12577 s!2326) (c!1082125 r!7292))))))

(declare-fun b!6037872 () Bool)

(declare-fun res!2514056 () Bool)

(declare-fun e!3688112 () Bool)

(assert (=> b!6037872 (=> (not res!2514056) (not e!3688112))))

(assert (=> b!6037872 (= res!2514056 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun b!6037873 () Bool)

(declare-fun e!3688110 () Bool)

(declare-fun call!493608 () Bool)

(assert (=> b!6037873 (= e!3688110 (= lt!2322937 call!493608))))

(declare-fun b!6037874 () Bool)

(assert (=> b!6037874 (= e!3688112 (= (head!12577 s!2326) (c!1082125 r!7292)))))

(declare-fun d!1893354 () Bool)

(assert (=> d!1893354 e!3688110))

(declare-fun c!1082266 () Bool)

(assert (=> d!1893354 (= c!1082266 (is-EmptyExpr!16020 r!7292))))

(assert (=> d!1893354 (= lt!2322937 e!3688107)))

(declare-fun c!1082267 () Bool)

(assert (=> d!1893354 (= c!1082267 (isEmpty!36143 s!2326))))

(assert (=> d!1893354 (validRegex!7756 r!7292)))

(assert (=> d!1893354 (= (matchR!8203 r!7292 s!2326) lt!2322937)))

(declare-fun b!6037875 () Bool)

(declare-fun res!2514053 () Bool)

(assert (=> b!6037875 (=> res!2514053 e!3688108)))

(assert (=> b!6037875 (= res!2514053 (not (isEmpty!36143 (tail!11662 s!2326))))))

(declare-fun b!6037876 () Bool)

(declare-fun res!2514057 () Bool)

(declare-fun e!3688111 () Bool)

(assert (=> b!6037876 (=> res!2514057 e!3688111)))

(assert (=> b!6037876 (= res!2514057 (not (is-ElementMatch!16020 r!7292)))))

(assert (=> b!6037876 (= e!3688109 e!3688111)))

(declare-fun b!6037877 () Bool)

(declare-fun res!2514054 () Bool)

(assert (=> b!6037877 (=> res!2514054 e!3688111)))

(assert (=> b!6037877 (= res!2514054 e!3688112)))

(declare-fun res!2514055 () Bool)

(assert (=> b!6037877 (=> (not res!2514055) (not e!3688112))))

(assert (=> b!6037877 (= res!2514055 lt!2322937)))

(declare-fun b!6037878 () Bool)

(declare-fun res!2514051 () Bool)

(assert (=> b!6037878 (=> (not res!2514051) (not e!3688112))))

(assert (=> b!6037878 (= res!2514051 (not call!493608))))

(declare-fun b!6037879 () Bool)

(declare-fun e!3688106 () Bool)

(assert (=> b!6037879 (= e!3688106 e!3688108)))

(declare-fun res!2514052 () Bool)

(assert (=> b!6037879 (=> res!2514052 e!3688108)))

(assert (=> b!6037879 (= res!2514052 call!493608)))

(declare-fun b!6037880 () Bool)

(assert (=> b!6037880 (= e!3688107 (nullable!6015 r!7292))))

(declare-fun bm!493603 () Bool)

(assert (=> bm!493603 (= call!493608 (isEmpty!36143 s!2326))))

(declare-fun b!6037881 () Bool)

(assert (=> b!6037881 (= e!3688110 e!3688109)))

(declare-fun c!1082268 () Bool)

(assert (=> b!6037881 (= c!1082268 (is-EmptyLang!16020 r!7292))))

(declare-fun b!6037882 () Bool)

(assert (=> b!6037882 (= e!3688111 e!3688106)))

(declare-fun res!2514050 () Bool)

(assert (=> b!6037882 (=> (not res!2514050) (not e!3688106))))

(assert (=> b!6037882 (= res!2514050 (not lt!2322937))))

(assert (= (and d!1893354 c!1082267) b!6037880))

(assert (= (and d!1893354 (not c!1082267)) b!6037869))

(assert (= (and d!1893354 c!1082266) b!6037873))

(assert (= (and d!1893354 (not c!1082266)) b!6037881))

(assert (= (and b!6037881 c!1082268) b!6037870))

(assert (= (and b!6037881 (not c!1082268)) b!6037876))

(assert (= (and b!6037876 (not res!2514057)) b!6037877))

(assert (= (and b!6037877 res!2514055) b!6037878))

(assert (= (and b!6037878 res!2514051) b!6037872))

(assert (= (and b!6037872 res!2514056) b!6037874))

(assert (= (and b!6037877 (not res!2514054)) b!6037882))

(assert (= (and b!6037882 res!2514050) b!6037879))

(assert (= (and b!6037879 (not res!2514052)) b!6037875))

(assert (= (and b!6037875 (not res!2514053)) b!6037871))

(assert (= (or b!6037873 b!6037878 b!6037879) bm!493603))

(assert (=> bm!493603 m!6907834))

(assert (=> b!6037875 m!6907842))

(assert (=> b!6037875 m!6907842))

(assert (=> b!6037875 m!6907846))

(assert (=> b!6037869 m!6907838))

(assert (=> b!6037869 m!6907838))

(declare-fun m!6908194 () Bool)

(assert (=> b!6037869 m!6908194))

(assert (=> b!6037869 m!6907842))

(assert (=> b!6037869 m!6908194))

(assert (=> b!6037869 m!6907842))

(declare-fun m!6908196 () Bool)

(assert (=> b!6037869 m!6908196))

(declare-fun m!6908198 () Bool)

(assert (=> b!6037880 m!6908198))

(assert (=> b!6037872 m!6907842))

(assert (=> b!6037872 m!6907842))

(assert (=> b!6037872 m!6907846))

(assert (=> b!6037871 m!6907838))

(assert (=> d!1893354 m!6907834))

(assert (=> d!1893354 m!6907656))

(assert (=> b!6037874 m!6907838))

(assert (=> b!6037311 d!1893354))

(declare-fun d!1893356 () Bool)

(assert (=> d!1893356 (= (matchR!8203 r!7292 s!2326) (matchRSpec!3121 r!7292 s!2326))))

(declare-fun lt!2322940 () Unit!157311)

(declare-fun choose!45126 (Regex!16020 List!64361) Unit!157311)

(assert (=> d!1893356 (= lt!2322940 (choose!45126 r!7292 s!2326))))

(assert (=> d!1893356 (validRegex!7756 r!7292)))

(assert (=> d!1893356 (= (mainMatchTheorem!3121 r!7292 s!2326) lt!2322940)))

(declare-fun bs!1489046 () Bool)

(assert (= bs!1489046 d!1893356))

(assert (=> bs!1489046 m!6907698))

(assert (=> bs!1489046 m!6907696))

(declare-fun m!6908200 () Bool)

(assert (=> bs!1489046 m!6908200))

(assert (=> bs!1489046 m!6907656))

(assert (=> b!6037311 d!1893356))

(declare-fun bm!493618 () Bool)

(declare-fun call!493628 () Int)

(declare-fun call!493627 () Int)

(assert (=> bm!493618 (= call!493628 call!493627)))

(declare-fun b!6037918 () Bool)

(declare-fun e!3688133 () Bool)

(declare-fun e!3688134 () Bool)

(assert (=> b!6037918 (= e!3688133 e!3688134)))

(declare-fun c!1082286 () Bool)

(assert (=> b!6037918 (= c!1082286 (is-Concat!24865 r!7292))))

(declare-fun b!6037919 () Bool)

(declare-fun c!1082285 () Bool)

(assert (=> b!6037919 (= c!1082285 (is-Union!16020 r!7292))))

(declare-fun e!3688141 () Int)

(declare-fun e!3688142 () Int)

(assert (=> b!6037919 (= e!3688141 e!3688142)))

(declare-fun b!6037920 () Bool)

(declare-fun c!1082288 () Bool)

(assert (=> b!6037920 (= c!1082288 (is-Star!16020 r!7292))))

(declare-fun e!3688136 () Bool)

(assert (=> b!6037920 (= e!3688134 e!3688136)))

(declare-fun b!6037921 () Bool)

(declare-fun e!3688137 () Int)

(declare-fun call!493624 () Int)

(assert (=> b!6037921 (= e!3688137 (+ 1 call!493624))))

(declare-fun b!6037922 () Bool)

(assert (=> b!6037922 (= e!3688142 (+ 1 call!493624))))

(declare-fun b!6037923 () Bool)

(declare-fun lt!2322943 () Int)

(assert (=> b!6037923 (= e!3688136 (= lt!2322943 1))))

(declare-fun bm!493619 () Bool)

(declare-fun call!493626 () Int)

(assert (=> bm!493619 (= call!493624 (maxBigInt!0 (ite c!1082285 call!493626 call!493628) (ite c!1082285 call!493628 call!493626)))))

(declare-fun bm!493620 () Bool)

(declare-fun c!1082284 () Bool)

(assert (=> bm!493620 (= call!493627 (regexDepth!277 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(declare-fun b!6037924 () Bool)

(declare-fun call!493629 () Int)

(assert (=> b!6037924 (= e!3688136 (> lt!2322943 call!493629))))

(declare-fun b!6037925 () Bool)

(assert (=> b!6037925 (= e!3688141 (+ 1 call!493627))))

(declare-fun bm!493621 () Bool)

(declare-fun call!493623 () Int)

(declare-fun c!1082287 () Bool)

(assert (=> bm!493621 (= call!493623 (regexDepth!277 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun b!6037926 () Bool)

(declare-fun e!3688140 () Bool)

(assert (=> b!6037926 (= e!3688133 e!3688140)))

(declare-fun res!2514064 () Bool)

(assert (=> b!6037926 (= res!2514064 (> lt!2322943 call!493623))))

(assert (=> b!6037926 (=> (not res!2514064) (not e!3688140))))

(declare-fun b!6037927 () Bool)

(declare-fun res!2514066 () Bool)

(declare-fun e!3688138 () Bool)

(assert (=> b!6037927 (=> (not res!2514066) (not e!3688138))))

(assert (=> b!6037927 (= res!2514066 (> lt!2322943 call!493629))))

(assert (=> b!6037927 (= e!3688134 e!3688138)))

(declare-fun b!6037917 () Bool)

(assert (=> b!6037917 (= e!3688137 1)))

(declare-fun d!1893358 () Bool)

(declare-fun e!3688139 () Bool)

(assert (=> d!1893358 e!3688139))

(declare-fun res!2514065 () Bool)

(assert (=> d!1893358 (=> (not res!2514065) (not e!3688139))))

(assert (=> d!1893358 (= res!2514065 (> lt!2322943 0))))

(declare-fun e!3688135 () Int)

(assert (=> d!1893358 (= lt!2322943 e!3688135)))

(declare-fun c!1082283 () Bool)

(assert (=> d!1893358 (= c!1082283 (is-ElementMatch!16020 r!7292))))

(assert (=> d!1893358 (= (regexDepth!277 r!7292) lt!2322943)))

(declare-fun b!6037928 () Bool)

(assert (=> b!6037928 (= e!3688138 (> lt!2322943 call!493623))))

(declare-fun call!493625 () Int)

(declare-fun bm!493622 () Bool)

(assert (=> bm!493622 (= call!493625 (regexDepth!277 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))

(declare-fun bm!493623 () Bool)

(assert (=> bm!493623 (= call!493626 (regexDepth!277 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun b!6037929 () Bool)

(assert (=> b!6037929 (= e!3688135 1)))

(declare-fun b!6037930 () Bool)

(assert (=> b!6037930 (= e!3688140 (> lt!2322943 call!493625))))

(declare-fun bm!493624 () Bool)

(assert (=> bm!493624 (= call!493629 call!493625)))

(declare-fun b!6037931 () Bool)

(assert (=> b!6037931 (= e!3688142 e!3688137)))

(declare-fun c!1082289 () Bool)

(assert (=> b!6037931 (= c!1082289 (is-Concat!24865 r!7292))))

(declare-fun b!6037932 () Bool)

(assert (=> b!6037932 (= e!3688139 e!3688133)))

(assert (=> b!6037932 (= c!1082287 (is-Union!16020 r!7292))))

(declare-fun b!6037933 () Bool)

(assert (=> b!6037933 (= e!3688135 e!3688141)))

(assert (=> b!6037933 (= c!1082284 (is-Star!16020 r!7292))))

(assert (= (and d!1893358 c!1082283) b!6037929))

(assert (= (and d!1893358 (not c!1082283)) b!6037933))

(assert (= (and b!6037933 c!1082284) b!6037925))

(assert (= (and b!6037933 (not c!1082284)) b!6037919))

(assert (= (and b!6037919 c!1082285) b!6037922))

(assert (= (and b!6037919 (not c!1082285)) b!6037931))

(assert (= (and b!6037931 c!1082289) b!6037921))

(assert (= (and b!6037931 (not c!1082289)) b!6037917))

(assert (= (or b!6037922 b!6037921) bm!493618))

(assert (= (or b!6037922 b!6037921) bm!493623))

(assert (= (or b!6037922 b!6037921) bm!493619))

(assert (= (or b!6037925 bm!493618) bm!493620))

(assert (= (and d!1893358 res!2514065) b!6037932))

(assert (= (and b!6037932 c!1082287) b!6037926))

(assert (= (and b!6037932 (not c!1082287)) b!6037918))

(assert (= (and b!6037926 res!2514064) b!6037930))

(assert (= (and b!6037918 c!1082286) b!6037927))

(assert (= (and b!6037918 (not c!1082286)) b!6037920))

(assert (= (and b!6037927 res!2514066) b!6037928))

(assert (= (and b!6037920 c!1082288) b!6037924))

(assert (= (and b!6037920 (not c!1082288)) b!6037923))

(assert (= (or b!6037927 b!6037924) bm!493624))

(assert (= (or b!6037930 bm!493624) bm!493622))

(assert (= (or b!6037926 b!6037928) bm!493621))

(declare-fun m!6908202 () Bool)

(assert (=> bm!493621 m!6908202))

(declare-fun m!6908204 () Bool)

(assert (=> bm!493622 m!6908204))

(declare-fun m!6908206 () Bool)

(assert (=> bm!493619 m!6908206))

(declare-fun m!6908208 () Bool)

(assert (=> bm!493623 m!6908208))

(declare-fun m!6908210 () Bool)

(assert (=> bm!493620 m!6908210))

(assert (=> b!6037332 d!1893358))

(declare-fun bm!493625 () Bool)

(declare-fun call!493635 () Int)

(declare-fun call!493634 () Int)

(assert (=> bm!493625 (= call!493635 call!493634)))

(declare-fun b!6037935 () Bool)

(declare-fun e!3688143 () Bool)

(declare-fun e!3688144 () Bool)

(assert (=> b!6037935 (= e!3688143 e!3688144)))

(declare-fun c!1082293 () Bool)

(assert (=> b!6037935 (= c!1082293 (is-Concat!24865 lt!2322697))))

(declare-fun b!6037936 () Bool)

(declare-fun c!1082292 () Bool)

(assert (=> b!6037936 (= c!1082292 (is-Union!16020 lt!2322697))))

(declare-fun e!3688151 () Int)

(declare-fun e!3688152 () Int)

(assert (=> b!6037936 (= e!3688151 e!3688152)))

(declare-fun b!6037937 () Bool)

(declare-fun c!1082295 () Bool)

(assert (=> b!6037937 (= c!1082295 (is-Star!16020 lt!2322697))))

(declare-fun e!3688146 () Bool)

(assert (=> b!6037937 (= e!3688144 e!3688146)))

(declare-fun b!6037938 () Bool)

(declare-fun e!3688147 () Int)

(declare-fun call!493631 () Int)

(assert (=> b!6037938 (= e!3688147 (+ 1 call!493631))))

(declare-fun b!6037939 () Bool)

(assert (=> b!6037939 (= e!3688152 (+ 1 call!493631))))

(declare-fun b!6037940 () Bool)

(declare-fun lt!2322944 () Int)

(assert (=> b!6037940 (= e!3688146 (= lt!2322944 1))))

(declare-fun call!493633 () Int)

(declare-fun bm!493626 () Bool)

(assert (=> bm!493626 (= call!493631 (maxBigInt!0 (ite c!1082292 call!493633 call!493635) (ite c!1082292 call!493635 call!493633)))))

(declare-fun c!1082291 () Bool)

(declare-fun bm!493627 () Bool)

(assert (=> bm!493627 (= call!493634 (regexDepth!277 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))

(declare-fun b!6037941 () Bool)

(declare-fun call!493636 () Int)

(assert (=> b!6037941 (= e!3688146 (> lt!2322944 call!493636))))

(declare-fun b!6037942 () Bool)

(assert (=> b!6037942 (= e!3688151 (+ 1 call!493634))))

(declare-fun bm!493628 () Bool)

(declare-fun call!493630 () Int)

(declare-fun c!1082294 () Bool)

(assert (=> bm!493628 (= call!493630 (regexDepth!277 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun b!6037943 () Bool)

(declare-fun e!3688150 () Bool)

(assert (=> b!6037943 (= e!3688143 e!3688150)))

(declare-fun res!2514067 () Bool)

(assert (=> b!6037943 (= res!2514067 (> lt!2322944 call!493630))))

(assert (=> b!6037943 (=> (not res!2514067) (not e!3688150))))

(declare-fun b!6037944 () Bool)

(declare-fun res!2514069 () Bool)

(declare-fun e!3688148 () Bool)

(assert (=> b!6037944 (=> (not res!2514069) (not e!3688148))))

(assert (=> b!6037944 (= res!2514069 (> lt!2322944 call!493636))))

(assert (=> b!6037944 (= e!3688144 e!3688148)))

(declare-fun b!6037934 () Bool)

(assert (=> b!6037934 (= e!3688147 1)))

(declare-fun d!1893360 () Bool)

(declare-fun e!3688149 () Bool)

(assert (=> d!1893360 e!3688149))

(declare-fun res!2514068 () Bool)

(assert (=> d!1893360 (=> (not res!2514068) (not e!3688149))))

(assert (=> d!1893360 (= res!2514068 (> lt!2322944 0))))

(declare-fun e!3688145 () Int)

(assert (=> d!1893360 (= lt!2322944 e!3688145)))

(declare-fun c!1082290 () Bool)

(assert (=> d!1893360 (= c!1082290 (is-ElementMatch!16020 lt!2322697))))

(assert (=> d!1893360 (= (regexDepth!277 lt!2322697) lt!2322944)))

(declare-fun b!6037945 () Bool)

(assert (=> b!6037945 (= e!3688148 (> lt!2322944 call!493630))))

(declare-fun bm!493629 () Bool)

(declare-fun call!493632 () Int)

(assert (=> bm!493629 (= call!493632 (regexDepth!277 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))

(declare-fun bm!493630 () Bool)

(assert (=> bm!493630 (= call!493633 (regexDepth!277 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun b!6037946 () Bool)

(assert (=> b!6037946 (= e!3688145 1)))

(declare-fun b!6037947 () Bool)

(assert (=> b!6037947 (= e!3688150 (> lt!2322944 call!493632))))

(declare-fun bm!493631 () Bool)

(assert (=> bm!493631 (= call!493636 call!493632)))

(declare-fun b!6037948 () Bool)

(assert (=> b!6037948 (= e!3688152 e!3688147)))

(declare-fun c!1082296 () Bool)

(assert (=> b!6037948 (= c!1082296 (is-Concat!24865 lt!2322697))))

(declare-fun b!6037949 () Bool)

(assert (=> b!6037949 (= e!3688149 e!3688143)))

(assert (=> b!6037949 (= c!1082294 (is-Union!16020 lt!2322697))))

(declare-fun b!6037950 () Bool)

(assert (=> b!6037950 (= e!3688145 e!3688151)))

(assert (=> b!6037950 (= c!1082291 (is-Star!16020 lt!2322697))))

(assert (= (and d!1893360 c!1082290) b!6037946))

(assert (= (and d!1893360 (not c!1082290)) b!6037950))

(assert (= (and b!6037950 c!1082291) b!6037942))

(assert (= (and b!6037950 (not c!1082291)) b!6037936))

(assert (= (and b!6037936 c!1082292) b!6037939))

(assert (= (and b!6037936 (not c!1082292)) b!6037948))

(assert (= (and b!6037948 c!1082296) b!6037938))

(assert (= (and b!6037948 (not c!1082296)) b!6037934))

(assert (= (or b!6037939 b!6037938) bm!493625))

(assert (= (or b!6037939 b!6037938) bm!493630))

(assert (= (or b!6037939 b!6037938) bm!493626))

(assert (= (or b!6037942 bm!493625) bm!493627))

(assert (= (and d!1893360 res!2514068) b!6037949))

(assert (= (and b!6037949 c!1082294) b!6037943))

(assert (= (and b!6037949 (not c!1082294)) b!6037935))

(assert (= (and b!6037943 res!2514067) b!6037947))

(assert (= (and b!6037935 c!1082293) b!6037944))

(assert (= (and b!6037935 (not c!1082293)) b!6037937))

(assert (= (and b!6037944 res!2514069) b!6037945))

(assert (= (and b!6037937 c!1082295) b!6037941))

(assert (= (and b!6037937 (not c!1082295)) b!6037940))

(assert (= (or b!6037944 b!6037941) bm!493631))

(assert (= (or b!6037947 bm!493631) bm!493629))

(assert (= (or b!6037943 b!6037945) bm!493628))

(declare-fun m!6908212 () Bool)

(assert (=> bm!493628 m!6908212))

(declare-fun m!6908214 () Bool)

(assert (=> bm!493629 m!6908214))

(declare-fun m!6908216 () Bool)

(assert (=> bm!493626 m!6908216))

(declare-fun m!6908218 () Bool)

(assert (=> bm!493630 m!6908218))

(declare-fun m!6908220 () Bool)

(assert (=> bm!493627 m!6908220))

(assert (=> b!6037332 d!1893360))

(declare-fun b!6037955 () Bool)

(declare-fun e!3688155 () Bool)

(declare-fun tp!1678921 () Bool)

(assert (=> b!6037955 (= e!3688155 (and tp_is_empty!41293 tp!1678921))))

(assert (=> b!6037330 (= tp!1678884 e!3688155)))

(assert (= (and b!6037330 (is-Cons!64237 (t!377790 s!2326))) b!6037955))

(declare-fun e!3688158 () Bool)

(assert (=> b!6037325 (= tp!1678887 e!3688158)))

(declare-fun b!6037967 () Bool)

(declare-fun tp!1678933 () Bool)

(declare-fun tp!1678934 () Bool)

(assert (=> b!6037967 (= e!3688158 (and tp!1678933 tp!1678934))))

(declare-fun b!6037966 () Bool)

(assert (=> b!6037966 (= e!3688158 tp_is_empty!41293)))

(declare-fun b!6037968 () Bool)

(declare-fun tp!1678932 () Bool)

(assert (=> b!6037968 (= e!3688158 tp!1678932)))

(declare-fun b!6037969 () Bool)

(declare-fun tp!1678935 () Bool)

(declare-fun tp!1678936 () Bool)

(assert (=> b!6037969 (= e!3688158 (and tp!1678935 tp!1678936))))

(assert (= (and b!6037325 (is-ElementMatch!16020 (regOne!32553 r!7292))) b!6037966))

(assert (= (and b!6037325 (is-Concat!24865 (regOne!32553 r!7292))) b!6037967))

(assert (= (and b!6037325 (is-Star!16020 (regOne!32553 r!7292))) b!6037968))

(assert (= (and b!6037325 (is-Union!16020 (regOne!32553 r!7292))) b!6037969))

(declare-fun e!3688159 () Bool)

(assert (=> b!6037325 (= tp!1678882 e!3688159)))

(declare-fun b!6037971 () Bool)

(declare-fun tp!1678938 () Bool)

(declare-fun tp!1678939 () Bool)

(assert (=> b!6037971 (= e!3688159 (and tp!1678938 tp!1678939))))

(declare-fun b!6037970 () Bool)

(assert (=> b!6037970 (= e!3688159 tp_is_empty!41293)))

(declare-fun b!6037972 () Bool)

(declare-fun tp!1678937 () Bool)

(assert (=> b!6037972 (= e!3688159 tp!1678937)))

(declare-fun b!6037973 () Bool)

(declare-fun tp!1678940 () Bool)

(declare-fun tp!1678941 () Bool)

(assert (=> b!6037973 (= e!3688159 (and tp!1678940 tp!1678941))))

(assert (= (and b!6037325 (is-ElementMatch!16020 (regTwo!32553 r!7292))) b!6037970))

(assert (= (and b!6037325 (is-Concat!24865 (regTwo!32553 r!7292))) b!6037971))

(assert (= (and b!6037325 (is-Star!16020 (regTwo!32553 r!7292))) b!6037972))

(assert (= (and b!6037325 (is-Union!16020 (regTwo!32553 r!7292))) b!6037973))

(declare-fun b!6037981 () Bool)

(declare-fun e!3688165 () Bool)

(declare-fun tp!1678946 () Bool)

(assert (=> b!6037981 (= e!3688165 tp!1678946)))

(declare-fun b!6037980 () Bool)

(declare-fun e!3688164 () Bool)

(declare-fun tp!1678947 () Bool)

(assert (=> b!6037980 (= e!3688164 (and (inv!83298 (h!70684 (t!377789 zl!343))) e!3688165 tp!1678947))))

(assert (=> b!6037319 (= tp!1678880 e!3688164)))

(assert (= b!6037980 b!6037981))

(assert (= (and b!6037319 (is-Cons!64236 (t!377789 zl!343))) b!6037980))

(declare-fun m!6908222 () Bool)

(assert (=> b!6037980 m!6908222))

(declare-fun e!3688166 () Bool)

(assert (=> b!6037317 (= tp!1678879 e!3688166)))

(declare-fun b!6037983 () Bool)

(declare-fun tp!1678949 () Bool)

(declare-fun tp!1678950 () Bool)

(assert (=> b!6037983 (= e!3688166 (and tp!1678949 tp!1678950))))

(declare-fun b!6037982 () Bool)

(assert (=> b!6037982 (= e!3688166 tp_is_empty!41293)))

(declare-fun b!6037984 () Bool)

(declare-fun tp!1678948 () Bool)

(assert (=> b!6037984 (= e!3688166 tp!1678948)))

(declare-fun b!6037985 () Bool)

(declare-fun tp!1678951 () Bool)

(declare-fun tp!1678952 () Bool)

(assert (=> b!6037985 (= e!3688166 (and tp!1678951 tp!1678952))))

(assert (= (and b!6037317 (is-ElementMatch!16020 (regOne!32552 r!7292))) b!6037982))

(assert (= (and b!6037317 (is-Concat!24865 (regOne!32552 r!7292))) b!6037983))

(assert (= (and b!6037317 (is-Star!16020 (regOne!32552 r!7292))) b!6037984))

(assert (= (and b!6037317 (is-Union!16020 (regOne!32552 r!7292))) b!6037985))

(declare-fun e!3688167 () Bool)

(assert (=> b!6037317 (= tp!1678881 e!3688167)))

(declare-fun b!6037987 () Bool)

(declare-fun tp!1678954 () Bool)

(declare-fun tp!1678955 () Bool)

(assert (=> b!6037987 (= e!3688167 (and tp!1678954 tp!1678955))))

(declare-fun b!6037986 () Bool)

(assert (=> b!6037986 (= e!3688167 tp_is_empty!41293)))

(declare-fun b!6037988 () Bool)

(declare-fun tp!1678953 () Bool)

(assert (=> b!6037988 (= e!3688167 tp!1678953)))

(declare-fun b!6037989 () Bool)

(declare-fun tp!1678956 () Bool)

(declare-fun tp!1678957 () Bool)

(assert (=> b!6037989 (= e!3688167 (and tp!1678956 tp!1678957))))

(assert (= (and b!6037317 (is-ElementMatch!16020 (regTwo!32552 r!7292))) b!6037986))

(assert (= (and b!6037317 (is-Concat!24865 (regTwo!32552 r!7292))) b!6037987))

(assert (= (and b!6037317 (is-Star!16020 (regTwo!32552 r!7292))) b!6037988))

(assert (= (and b!6037317 (is-Union!16020 (regTwo!32552 r!7292))) b!6037989))

(declare-fun condSetEmpty!40844 () Bool)

(assert (=> setNonEmpty!40838 (= condSetEmpty!40844 (= setRest!40838 (as set.empty (Set Context!10808))))))

(declare-fun setRes!40844 () Bool)

(assert (=> setNonEmpty!40838 (= tp!1678888 setRes!40844)))

(declare-fun setIsEmpty!40844 () Bool)

(assert (=> setIsEmpty!40844 setRes!40844))

(declare-fun e!3688170 () Bool)

(declare-fun tp!1678963 () Bool)

(declare-fun setElem!40844 () Context!10808)

(declare-fun setNonEmpty!40844 () Bool)

(assert (=> setNonEmpty!40844 (= setRes!40844 (and tp!1678963 (inv!83298 setElem!40844) e!3688170))))

(declare-fun setRest!40844 () (Set Context!10808))

(assert (=> setNonEmpty!40844 (= setRest!40838 (set.union (set.insert setElem!40844 (as set.empty (Set Context!10808))) setRest!40844))))

(declare-fun b!6037994 () Bool)

(declare-fun tp!1678962 () Bool)

(assert (=> b!6037994 (= e!3688170 tp!1678962)))

(assert (= (and setNonEmpty!40838 condSetEmpty!40844) setIsEmpty!40844))

(assert (= (and setNonEmpty!40838 (not condSetEmpty!40844)) setNonEmpty!40844))

(assert (= setNonEmpty!40844 b!6037994))

(declare-fun m!6908224 () Bool)

(assert (=> setNonEmpty!40844 m!6908224))

(declare-fun b!6037999 () Bool)

(declare-fun e!3688173 () Bool)

(declare-fun tp!1678968 () Bool)

(declare-fun tp!1678969 () Bool)

(assert (=> b!6037999 (= e!3688173 (and tp!1678968 tp!1678969))))

(assert (=> b!6037343 (= tp!1678883 e!3688173)))

(assert (= (and b!6037343 (is-Cons!64235 (exprs!5904 (h!70684 zl!343)))) b!6037999))

(declare-fun b!6038000 () Bool)

(declare-fun e!3688174 () Bool)

(declare-fun tp!1678970 () Bool)

(declare-fun tp!1678971 () Bool)

(assert (=> b!6038000 (= e!3688174 (and tp!1678970 tp!1678971))))

(assert (=> b!6037323 (= tp!1678885 e!3688174)))

(assert (= (and b!6037323 (is-Cons!64235 (exprs!5904 setElem!40838))) b!6038000))

(declare-fun e!3688175 () Bool)

(assert (=> b!6037316 (= tp!1678886 e!3688175)))

(declare-fun b!6038002 () Bool)

(declare-fun tp!1678973 () Bool)

(declare-fun tp!1678974 () Bool)

(assert (=> b!6038002 (= e!3688175 (and tp!1678973 tp!1678974))))

(declare-fun b!6038001 () Bool)

(assert (=> b!6038001 (= e!3688175 tp_is_empty!41293)))

(declare-fun b!6038003 () Bool)

(declare-fun tp!1678972 () Bool)

(assert (=> b!6038003 (= e!3688175 tp!1678972)))

(declare-fun b!6038004 () Bool)

(declare-fun tp!1678975 () Bool)

(declare-fun tp!1678976 () Bool)

(assert (=> b!6038004 (= e!3688175 (and tp!1678975 tp!1678976))))

(assert (= (and b!6037316 (is-ElementMatch!16020 (reg!16349 r!7292))) b!6038001))

(assert (= (and b!6037316 (is-Concat!24865 (reg!16349 r!7292))) b!6038002))

(assert (= (and b!6037316 (is-Star!16020 (reg!16349 r!7292))) b!6038003))

(assert (= (and b!6037316 (is-Union!16020 (reg!16349 r!7292))) b!6038004))

(declare-fun b_lambda!229059 () Bool)

(assert (= b_lambda!229057 (or b!6037340 b_lambda!229059)))

(declare-fun bs!1489047 () Bool)

(declare-fun d!1893362 () Bool)

(assert (= bs!1489047 (and d!1893362 b!6037340)))

(assert (=> bs!1489047 (= (dynLambda!25214 lambda!329245 lt!2322733) (derivationStepZipperUp!1196 lt!2322733 (h!70685 s!2326)))))

(assert (=> bs!1489047 m!6907674))

(assert (=> d!1893318 d!1893362))

(declare-fun b_lambda!229061 () Bool)

(assert (= b_lambda!229055 (or b!6037340 b_lambda!229061)))

(declare-fun bs!1489048 () Bool)

(declare-fun d!1893364 () Bool)

(assert (= bs!1489048 (and d!1893364 b!6037340)))

(assert (=> bs!1489048 (= (dynLambda!25214 lambda!329245 lt!2322698) (derivationStepZipperUp!1196 lt!2322698 (h!70685 s!2326)))))

(assert (=> bs!1489048 m!6907668))

(assert (=> d!1893310 d!1893364))

(declare-fun b_lambda!229063 () Bool)

(assert (= b_lambda!229053 (or b!6037340 b_lambda!229063)))

(declare-fun bs!1489049 () Bool)

(declare-fun d!1893366 () Bool)

(assert (= bs!1489049 (and d!1893366 b!6037340)))

(assert (=> bs!1489049 (= (dynLambda!25214 lambda!329245 (h!70684 zl!343)) (derivationStepZipperUp!1196 (h!70684 zl!343) (h!70685 s!2326)))))

(assert (=> bs!1489049 m!6907602))

(assert (=> d!1893272 d!1893366))

(push 1)

(assert (not d!1893290))

(assert (not d!1893318))

(assert (not d!1893246))

(assert (not b!6037654))

(assert (not b!6037713))

(assert (not b!6037636))

(assert (not bm!493601))

(assert (not b!6037635))

(assert (not b!6038000))

(assert (not b!6037869))

(assert (not d!1893254))

(assert (not b!6037513))

(assert (not d!1893272))

(assert (not bs!1489049))

(assert (not d!1893250))

(assert (not d!1893240))

(assert (not b!6037720))

(assert (not d!1893310))

(assert (not b!6037980))

(assert (not b!6037638))

(assert (not b!6037988))

(assert (not b!6037780))

(assert (not d!1893286))

(assert (not d!1893336))

(assert (not b!6037644))

(assert (not d!1893268))

(assert (not d!1893288))

(assert (not b!6037968))

(assert (not b!6037812))

(assert (not b!6037999))

(assert (not b!6037987))

(assert (not b!6037647))

(assert (not b!6037643))

(assert (not bm!493576))

(assert (not b!6037559))

(assert (not b!6037531))

(assert (not b_lambda!229059))

(assert (not d!1893248))

(assert (not b!6037802))

(assert (not bm!493628))

(assert (not b!6037586))

(assert (not b!6037785))

(assert (not d!1893274))

(assert (not b!6037560))

(assert (not d!1893340))

(assert (not d!1893292))

(assert (not d!1893326))

(assert (not b!6037535))

(assert (not b!6037779))

(assert (not b!6037691))

(assert (not b!6037984))

(assert (not b!6037719))

(assert (not b!6037798))

(assert (not b!6037637))

(assert (not b!6037516))

(assert (not b!6037519))

(assert (not b!6037587))

(assert (not d!1893262))

(assert (not bm!493558))

(assert (not d!1893308))

(assert (not b!6037605))

(assert (not d!1893322))

(assert (not b!6037712))

(assert (not d!1893344))

(assert (not b!6038003))

(assert (not d!1893242))

(assert (not b!6037955))

(assert (not bm!493627))

(assert (not bs!1489048))

(assert (not b!6037985))

(assert (not d!1893256))

(assert (not d!1893252))

(assert (not b!6037656))

(assert (not bm!493579))

(assert (not b!6037871))

(assert (not b!6037529))

(assert (not b!6037562))

(assert (not b!6037597))

(assert (not b!6037745))

(assert (not bm!493557))

(assert (not b!6037607))

(assert (not b!6037971))

(assert (not d!1893244))

(assert (not bm!493621))

(assert (not b!6037782))

(assert (not d!1893258))

(assert (not b!6037599))

(assert (not b!6037642))

(assert (not d!1893266))

(assert (not b!6037627))

(assert (not b!6037659))

(assert (not b!6037718))

(assert (not b!6037663))

(assert (not bm!493619))

(assert (not b!6037973))

(assert (not b!6037875))

(assert (not b!6037967))

(assert (not b!6037749))

(assert (not b!6037969))

(assert (not b!6037743))

(assert (not b!6037872))

(assert (not bm!493547))

(assert (not d!1893306))

(assert (not b!6037557))

(assert (not bm!493585))

(assert (not d!1893260))

(assert (not b!6037530))

(assert (not b!6037702))

(assert tp_is_empty!41293)

(assert (not b!6037823))

(assert (not b!6037747))

(assert (not bm!493582))

(assert (not b!6037788))

(assert (not bm!493630))

(assert (not b!6037554))

(assert (not b!6037641))

(assert (not b!6037755))

(assert (not d!1893342))

(assert (not bs!1489047))

(assert (not b!6037822))

(assert (not d!1893332))

(assert (not b!6037777))

(assert (not bm!493550))

(assert (not b!6037807))

(assert (not d!1893294))

(assert (not b!6037534))

(assert (not b!6037744))

(assert (not d!1893354))

(assert (not d!1893334))

(assert (not d!1893356))

(assert (not b!6037748))

(assert (not bm!493590))

(assert (not bm!493623))

(assert (not b!6037778))

(assert (not b!6037716))

(assert (not d!1893296))

(assert (not b!6037742))

(assert (not bm!493594))

(assert (not bm!493587))

(assert (not b!6037484))

(assert (not b!6037639))

(assert (not b!6037518))

(assert (not setNonEmpty!40844))

(assert (not d!1893264))

(assert (not b_lambda!229061))

(assert (not bm!493629))

(assert (not b!6037861))

(assert (not d!1893280))

(assert (not b!6037483))

(assert (not b!6037664))

(assert (not bm!493577))

(assert (not b!6038004))

(assert (not bm!493573))

(assert (not b!6037515))

(assert (not b!6038002))

(assert (not b!6037972))

(assert (not b!6037640))

(assert (not bm!493586))

(assert (not bm!493596))

(assert (not bm!493583))

(assert (not b!6037874))

(assert (not b!6037604))

(assert (not d!1893298))

(assert (not bm!493622))

(assert (not b!6037981))

(assert (not b!6037524))

(assert (not bm!493602))

(assert (not bm!493560))

(assert (not d!1893330))

(assert (not b!6037866))

(assert (not bm!493626))

(assert (not b!6037801))

(assert (not b!6037556))

(assert (not b!6037994))

(assert (not b_lambda!229063))

(assert (not b!6037783))

(assert (not bm!493620))

(assert (not b!6037983))

(assert (not d!1893350))

(assert (not bm!493603))

(assert (not b!6037880))

(assert (not b!6037602))

(assert (not b!6037799))

(assert (not b!6037661))

(assert (not b!6037590))

(assert (not b!6037989))

(assert (not bm!493593))

(assert (not b!6037796))

(assert (not bm!493589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1893496 () Bool)

(assert (=> d!1893496 (= (maxBigInt!0 (ite c!1082285 call!493626 call!493628) (ite c!1082285 call!493628 call!493626)) (ite (>= (ite c!1082285 call!493626 call!493628) (ite c!1082285 call!493628 call!493626)) (ite c!1082285 call!493626 call!493628) (ite c!1082285 call!493628 call!493626)))))

(assert (=> bm!493619 d!1893496))

(declare-fun d!1893498 () Bool)

(declare-fun c!1082462 () Bool)

(assert (=> d!1893498 (= c!1082462 (is-Nil!64236 lt!2322860))))

(declare-fun e!3688475 () (Set Context!10808))

(assert (=> d!1893498 (= (content!11884 lt!2322860) e!3688475)))

(declare-fun b!6038536 () Bool)

(assert (=> b!6038536 (= e!3688475 (as set.empty (Set Context!10808)))))

(declare-fun b!6038537 () Bool)

(assert (=> b!6038537 (= e!3688475 (set.union (set.insert (h!70684 lt!2322860) (as set.empty (Set Context!10808))) (content!11884 (t!377789 lt!2322860))))))

(assert (= (and d!1893498 c!1082462) b!6038536))

(assert (= (and d!1893498 (not c!1082462)) b!6038537))

(declare-fun m!6908618 () Bool)

(assert (=> b!6038537 m!6908618))

(declare-fun m!6908620 () Bool)

(assert (=> b!6038537 m!6908620))

(assert (=> b!6037529 d!1893498))

(declare-fun bm!493719 () Bool)

(declare-fun call!493729 () Int)

(declare-fun call!493728 () Int)

(assert (=> bm!493719 (= call!493729 call!493728)))

(declare-fun b!6038539 () Bool)

(declare-fun e!3688476 () Bool)

(declare-fun e!3688477 () Bool)

(assert (=> b!6038539 (= e!3688476 e!3688477)))

(declare-fun c!1082466 () Bool)

(assert (=> b!6038539 (= c!1082466 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun b!6038540 () Bool)

(declare-fun c!1082465 () Bool)

(assert (=> b!6038540 (= c!1082465 (is-Union!16020 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun e!3688484 () Int)

(declare-fun e!3688485 () Int)

(assert (=> b!6038540 (= e!3688484 e!3688485)))

(declare-fun b!6038541 () Bool)

(declare-fun c!1082468 () Bool)

(assert (=> b!6038541 (= c!1082468 (is-Star!16020 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun e!3688479 () Bool)

(assert (=> b!6038541 (= e!3688477 e!3688479)))

(declare-fun b!6038542 () Bool)

(declare-fun e!3688480 () Int)

(declare-fun call!493725 () Int)

(assert (=> b!6038542 (= e!3688480 (+ 1 call!493725))))

(declare-fun b!6038543 () Bool)

(assert (=> b!6038543 (= e!3688485 (+ 1 call!493725))))

(declare-fun b!6038544 () Bool)

(declare-fun lt!2323041 () Int)

(assert (=> b!6038544 (= e!3688479 (= lt!2323041 1))))

(declare-fun bm!493720 () Bool)

(declare-fun call!493727 () Int)

(assert (=> bm!493720 (= call!493725 (maxBigInt!0 (ite c!1082465 call!493727 call!493729) (ite c!1082465 call!493729 call!493727)))))

(declare-fun bm!493721 () Bool)

(declare-fun c!1082464 () Bool)

(assert (=> bm!493721 (= call!493728 (regexDepth!277 (ite c!1082464 (reg!16349 (h!70683 (exprs!5904 lt!2322698))) (ite c!1082465 (regTwo!32553 (h!70683 (exprs!5904 lt!2322698))) (regOne!32552 (h!70683 (exprs!5904 lt!2322698)))))))))

(declare-fun b!6038545 () Bool)

(declare-fun call!493730 () Int)

(assert (=> b!6038545 (= e!3688479 (> lt!2323041 call!493730))))

(declare-fun b!6038546 () Bool)

(assert (=> b!6038546 (= e!3688484 (+ 1 call!493728))))

(declare-fun bm!493722 () Bool)

(declare-fun call!493724 () Int)

(declare-fun c!1082467 () Bool)

(assert (=> bm!493722 (= call!493724 (regexDepth!277 (ite c!1082467 (regOne!32553 (h!70683 (exprs!5904 lt!2322698))) (regTwo!32552 (h!70683 (exprs!5904 lt!2322698))))))))

(declare-fun b!6038547 () Bool)

(declare-fun e!3688483 () Bool)

(assert (=> b!6038547 (= e!3688476 e!3688483)))

(declare-fun res!2514228 () Bool)

(assert (=> b!6038547 (= res!2514228 (> lt!2323041 call!493724))))

(assert (=> b!6038547 (=> (not res!2514228) (not e!3688483))))

(declare-fun b!6038548 () Bool)

(declare-fun res!2514230 () Bool)

(declare-fun e!3688481 () Bool)

(assert (=> b!6038548 (=> (not res!2514230) (not e!3688481))))

(assert (=> b!6038548 (= res!2514230 (> lt!2323041 call!493730))))

(assert (=> b!6038548 (= e!3688477 e!3688481)))

(declare-fun b!6038538 () Bool)

(assert (=> b!6038538 (= e!3688480 1)))

(declare-fun d!1893500 () Bool)

(declare-fun e!3688482 () Bool)

(assert (=> d!1893500 e!3688482))

(declare-fun res!2514229 () Bool)

(assert (=> d!1893500 (=> (not res!2514229) (not e!3688482))))

(assert (=> d!1893500 (= res!2514229 (> lt!2323041 0))))

(declare-fun e!3688478 () Int)

(assert (=> d!1893500 (= lt!2323041 e!3688478)))

(declare-fun c!1082463 () Bool)

(assert (=> d!1893500 (= c!1082463 (is-ElementMatch!16020 (h!70683 (exprs!5904 lt!2322698))))))

(assert (=> d!1893500 (= (regexDepth!277 (h!70683 (exprs!5904 lt!2322698))) lt!2323041)))

(declare-fun b!6038549 () Bool)

(assert (=> b!6038549 (= e!3688481 (> lt!2323041 call!493724))))

(declare-fun bm!493723 () Bool)

(declare-fun call!493726 () Int)

(assert (=> bm!493723 (= call!493726 (regexDepth!277 (ite c!1082467 (regTwo!32553 (h!70683 (exprs!5904 lt!2322698))) (ite c!1082466 (regOne!32552 (h!70683 (exprs!5904 lt!2322698))) (reg!16349 (h!70683 (exprs!5904 lt!2322698)))))))))

(declare-fun bm!493724 () Bool)

(assert (=> bm!493724 (= call!493727 (regexDepth!277 (ite c!1082465 (regOne!32553 (h!70683 (exprs!5904 lt!2322698))) (regTwo!32552 (h!70683 (exprs!5904 lt!2322698))))))))

(declare-fun b!6038550 () Bool)

(assert (=> b!6038550 (= e!3688478 1)))

(declare-fun b!6038551 () Bool)

(assert (=> b!6038551 (= e!3688483 (> lt!2323041 call!493726))))

(declare-fun bm!493725 () Bool)

(assert (=> bm!493725 (= call!493730 call!493726)))

(declare-fun b!6038552 () Bool)

(assert (=> b!6038552 (= e!3688485 e!3688480)))

(declare-fun c!1082469 () Bool)

(assert (=> b!6038552 (= c!1082469 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun b!6038553 () Bool)

(assert (=> b!6038553 (= e!3688482 e!3688476)))

(assert (=> b!6038553 (= c!1082467 (is-Union!16020 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun b!6038554 () Bool)

(assert (=> b!6038554 (= e!3688478 e!3688484)))

(assert (=> b!6038554 (= c!1082464 (is-Star!16020 (h!70683 (exprs!5904 lt!2322698))))))

(assert (= (and d!1893500 c!1082463) b!6038550))

(assert (= (and d!1893500 (not c!1082463)) b!6038554))

(assert (= (and b!6038554 c!1082464) b!6038546))

(assert (= (and b!6038554 (not c!1082464)) b!6038540))

(assert (= (and b!6038540 c!1082465) b!6038543))

(assert (= (and b!6038540 (not c!1082465)) b!6038552))

(assert (= (and b!6038552 c!1082469) b!6038542))

(assert (= (and b!6038552 (not c!1082469)) b!6038538))

(assert (= (or b!6038543 b!6038542) bm!493719))

(assert (= (or b!6038543 b!6038542) bm!493724))

(assert (= (or b!6038543 b!6038542) bm!493720))

(assert (= (or b!6038546 bm!493719) bm!493721))

(assert (= (and d!1893500 res!2514229) b!6038553))

(assert (= (and b!6038553 c!1082467) b!6038547))

(assert (= (and b!6038553 (not c!1082467)) b!6038539))

(assert (= (and b!6038547 res!2514228) b!6038551))

(assert (= (and b!6038539 c!1082466) b!6038548))

(assert (= (and b!6038539 (not c!1082466)) b!6038541))

(assert (= (and b!6038548 res!2514230) b!6038549))

(assert (= (and b!6038541 c!1082468) b!6038545))

(assert (= (and b!6038541 (not c!1082468)) b!6038544))

(assert (= (or b!6038548 b!6038545) bm!493725))

(assert (= (or b!6038551 bm!493725) bm!493723))

(assert (= (or b!6038547 b!6038549) bm!493722))

(declare-fun m!6908622 () Bool)

(assert (=> bm!493722 m!6908622))

(declare-fun m!6908624 () Bool)

(assert (=> bm!493723 m!6908624))

(declare-fun m!6908626 () Bool)

(assert (=> bm!493720 m!6908626))

(declare-fun m!6908628 () Bool)

(assert (=> bm!493724 m!6908628))

(declare-fun m!6908630 () Bool)

(assert (=> bm!493721 m!6908630))

(assert (=> b!6037659 d!1893500))

(declare-fun d!1893502 () Bool)

(declare-fun res!2514235 () Bool)

(declare-fun e!3688490 () Bool)

(assert (=> d!1893502 (=> res!2514235 e!3688490)))

(assert (=> d!1893502 (= res!2514235 (is-Nil!64235 (t!377788 (exprs!5904 lt!2322698))))))

(assert (=> d!1893502 (= (forall!15128 (t!377788 (exprs!5904 lt!2322698)) lambda!329298) e!3688490)))

(declare-fun b!6038559 () Bool)

(declare-fun e!3688491 () Bool)

(assert (=> b!6038559 (= e!3688490 e!3688491)))

(declare-fun res!2514236 () Bool)

(assert (=> b!6038559 (=> (not res!2514236) (not e!3688491))))

(declare-fun dynLambda!25216 (Int Regex!16020) Bool)

(assert (=> b!6038559 (= res!2514236 (dynLambda!25216 lambda!329298 (h!70683 (t!377788 (exprs!5904 lt!2322698)))))))

(declare-fun b!6038560 () Bool)

(assert (=> b!6038560 (= e!3688491 (forall!15128 (t!377788 (t!377788 (exprs!5904 lt!2322698))) lambda!329298))))

(assert (= (and d!1893502 (not res!2514235)) b!6038559))

(assert (= (and b!6038559 res!2514236) b!6038560))

(declare-fun b_lambda!229077 () Bool)

(assert (=> (not b_lambda!229077) (not b!6038559)))

(declare-fun m!6908632 () Bool)

(assert (=> b!6038559 m!6908632))

(declare-fun m!6908634 () Bool)

(assert (=> b!6038560 m!6908634))

(assert (=> b!6037659 d!1893502))

(declare-fun bs!1489161 () Bool)

(declare-fun b!6038561 () Bool)

(assert (= bs!1489161 (and b!6038561 d!1893334)))

(declare-fun lambda!329377 () Int)

(assert (=> bs!1489161 (not (= lambda!329377 lambda!329310))))

(declare-fun bs!1489162 () Bool)

(assert (= bs!1489162 (and b!6038561 d!1893330)))

(assert (=> bs!1489162 (not (= lambda!329377 lambda!329304))))

(declare-fun bs!1489163 () Bool)

(assert (= bs!1489163 (and b!6038561 d!1893280)))

(assert (=> bs!1489163 (not (= lambda!329377 lambda!329287))))

(declare-fun bs!1489164 () Bool)

(assert (= bs!1489164 (and b!6038561 b!6037654)))

(declare-fun lt!2323044 () Int)

(assert (=> bs!1489164 (= (= lt!2323044 lt!2322913) (= lambda!329377 lambda!329296))))

(declare-fun bs!1489165 () Bool)

(assert (= bs!1489165 (and b!6038561 b!6037661)))

(assert (=> bs!1489165 (= (= lt!2323044 lt!2322915) (= lambda!329377 lambda!329299))))

(declare-fun bs!1489166 () Bool)

(assert (= bs!1489166 (and b!6038561 b!6037659)))

(assert (=> bs!1489166 (= (= lt!2323044 lt!2322917) (= lambda!329377 lambda!329298))))

(declare-fun bs!1489167 () Bool)

(assert (= bs!1489167 (and b!6038561 b!6037718)))

(assert (=> bs!1489167 (= (= lt!2323044 lt!2322921) (= lambda!329377 lambda!329301))))

(declare-fun bs!1489168 () Bool)

(assert (= bs!1489168 (and b!6038561 d!1893332)))

(assert (=> bs!1489168 (not (= lambda!329377 lambda!329307))))

(declare-fun bs!1489169 () Bool)

(assert (= bs!1489169 (and b!6038561 d!1893344)))

(assert (=> bs!1489169 (not (= lambda!329377 lambda!329311))))

(declare-fun bs!1489170 () Bool)

(assert (= bs!1489170 (and b!6038561 b!6037716)))

(assert (=> bs!1489170 (= (= lt!2323044 lt!2322923) (= lambda!329377 lambda!329300))))

(declare-fun bs!1489171 () Bool)

(assert (= bs!1489171 (and b!6038561 b!6037656)))

(assert (=> bs!1489171 (= (= lt!2323044 lt!2322911) (= lambda!329377 lambda!329297))))

(assert (=> b!6038561 true))

(declare-fun bs!1489172 () Bool)

(declare-fun b!6038563 () Bool)

(assert (= bs!1489172 (and b!6038563 d!1893334)))

(declare-fun lambda!329378 () Int)

(assert (=> bs!1489172 (not (= lambda!329378 lambda!329310))))

(declare-fun bs!1489173 () Bool)

(assert (= bs!1489173 (and b!6038563 d!1893280)))

(assert (=> bs!1489173 (not (= lambda!329378 lambda!329287))))

(declare-fun bs!1489174 () Bool)

(assert (= bs!1489174 (and b!6038563 b!6037654)))

(declare-fun lt!2323042 () Int)

(assert (=> bs!1489174 (= (= lt!2323042 lt!2322913) (= lambda!329378 lambda!329296))))

(declare-fun bs!1489175 () Bool)

(assert (= bs!1489175 (and b!6038563 b!6037661)))

(assert (=> bs!1489175 (= (= lt!2323042 lt!2322915) (= lambda!329378 lambda!329299))))

(declare-fun bs!1489176 () Bool)

(assert (= bs!1489176 (and b!6038563 b!6037659)))

(assert (=> bs!1489176 (= (= lt!2323042 lt!2322917) (= lambda!329378 lambda!329298))))

(declare-fun bs!1489177 () Bool)

(assert (= bs!1489177 (and b!6038563 b!6037718)))

(assert (=> bs!1489177 (= (= lt!2323042 lt!2322921) (= lambda!329378 lambda!329301))))

(declare-fun bs!1489178 () Bool)

(assert (= bs!1489178 (and b!6038563 d!1893332)))

(assert (=> bs!1489178 (not (= lambda!329378 lambda!329307))))

(declare-fun bs!1489179 () Bool)

(assert (= bs!1489179 (and b!6038563 d!1893344)))

(assert (=> bs!1489179 (not (= lambda!329378 lambda!329311))))

(declare-fun bs!1489180 () Bool)

(assert (= bs!1489180 (and b!6038563 d!1893330)))

(assert (=> bs!1489180 (not (= lambda!329378 lambda!329304))))

(declare-fun bs!1489181 () Bool)

(assert (= bs!1489181 (and b!6038563 b!6038561)))

(assert (=> bs!1489181 (= (= lt!2323042 lt!2323044) (= lambda!329378 lambda!329377))))

(declare-fun bs!1489182 () Bool)

(assert (= bs!1489182 (and b!6038563 b!6037716)))

(assert (=> bs!1489182 (= (= lt!2323042 lt!2322923) (= lambda!329378 lambda!329300))))

(declare-fun bs!1489183 () Bool)

(assert (= bs!1489183 (and b!6038563 b!6037656)))

(assert (=> bs!1489183 (= (= lt!2323042 lt!2322911) (= lambda!329378 lambda!329297))))

(assert (=> b!6038563 true))

(declare-fun d!1893504 () Bool)

(declare-fun e!3688493 () Bool)

(assert (=> d!1893504 e!3688493))

(declare-fun res!2514237 () Bool)

(assert (=> d!1893504 (=> (not res!2514237) (not e!3688493))))

(assert (=> d!1893504 (= res!2514237 (>= lt!2323042 0))))

(declare-fun e!3688492 () Int)

(assert (=> d!1893504 (= lt!2323042 e!3688492)))

(declare-fun c!1082470 () Bool)

(assert (=> d!1893504 (= c!1082470 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))))))

(assert (=> d!1893504 (= (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))) lt!2323042)))

(assert (=> b!6038561 (= e!3688492 lt!2323044)))

(assert (=> b!6038561 (= lt!2323044 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))))))))))

(declare-fun lt!2323043 () Unit!157311)

(assert (=> b!6038561 (= lt!2323043 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))) lt!2323044 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))))))))))

(assert (=> b!6038561 (forall!15128 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))) lambda!329377)))

(declare-fun lt!2323045 () Unit!157311)

(assert (=> b!6038561 (= lt!2323045 lt!2323043)))

(declare-fun b!6038562 () Bool)

(assert (=> b!6038562 (= e!3688492 0)))

(assert (=> b!6038563 (= e!3688493 (forall!15128 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))) lambda!329378))))

(assert (= (and d!1893504 c!1082470) b!6038561))

(assert (= (and d!1893504 (not c!1082470)) b!6038562))

(assert (= (and d!1893504 res!2514237) b!6038563))

(declare-fun m!6908636 () Bool)

(assert (=> b!6038561 m!6908636))

(declare-fun m!6908638 () Bool)

(assert (=> b!6038561 m!6908638))

(declare-fun m!6908640 () Bool)

(assert (=> b!6038561 m!6908640))

(assert (=> b!6038561 m!6908636))

(assert (=> b!6038561 m!6908638))

(declare-fun m!6908642 () Bool)

(assert (=> b!6038561 m!6908642))

(assert (=> b!6038561 m!6908638))

(declare-fun m!6908644 () Bool)

(assert (=> b!6038561 m!6908644))

(declare-fun m!6908646 () Bool)

(assert (=> b!6038563 m!6908646))

(assert (=> b!6037659 d!1893504))

(declare-fun bs!1489184 () Bool)

(declare-fun d!1893506 () Bool)

(assert (= bs!1489184 (and d!1893506 d!1893334)))

(declare-fun lambda!329381 () Int)

(assert (=> bs!1489184 (not (= lambda!329381 lambda!329310))))

(declare-fun bs!1489185 () Bool)

(assert (= bs!1489185 (and d!1893506 d!1893280)))

(assert (=> bs!1489185 (not (= lambda!329381 lambda!329287))))

(declare-fun bs!1489186 () Bool)

(assert (= bs!1489186 (and d!1893506 b!6037654)))

(assert (=> bs!1489186 (= (= lt!2322917 lt!2322913) (= lambda!329381 lambda!329296))))

(declare-fun bs!1489187 () Bool)

(assert (= bs!1489187 (and d!1893506 b!6037661)))

(assert (=> bs!1489187 (= (= lt!2322917 lt!2322915) (= lambda!329381 lambda!329299))))

(declare-fun bs!1489188 () Bool)

(assert (= bs!1489188 (and d!1893506 b!6037659)))

(assert (=> bs!1489188 (= lambda!329381 lambda!329298)))

(declare-fun bs!1489189 () Bool)

(assert (= bs!1489189 (and d!1893506 b!6038563)))

(assert (=> bs!1489189 (= (= lt!2322917 lt!2323042) (= lambda!329381 lambda!329378))))

(declare-fun bs!1489190 () Bool)

(assert (= bs!1489190 (and d!1893506 b!6037718)))

(assert (=> bs!1489190 (= (= lt!2322917 lt!2322921) (= lambda!329381 lambda!329301))))

(declare-fun bs!1489191 () Bool)

(assert (= bs!1489191 (and d!1893506 d!1893332)))

(assert (=> bs!1489191 (not (= lambda!329381 lambda!329307))))

(declare-fun bs!1489192 () Bool)

(assert (= bs!1489192 (and d!1893506 d!1893344)))

(assert (=> bs!1489192 (not (= lambda!329381 lambda!329311))))

(declare-fun bs!1489193 () Bool)

(assert (= bs!1489193 (and d!1893506 d!1893330)))

(assert (=> bs!1489193 (not (= lambda!329381 lambda!329304))))

(declare-fun bs!1489194 () Bool)

(assert (= bs!1489194 (and d!1893506 b!6038561)))

(assert (=> bs!1489194 (= (= lt!2322917 lt!2323044) (= lambda!329381 lambda!329377))))

(declare-fun bs!1489195 () Bool)

(assert (= bs!1489195 (and d!1893506 b!6037716)))

(assert (=> bs!1489195 (= (= lt!2322917 lt!2322923) (= lambda!329381 lambda!329300))))

(declare-fun bs!1489196 () Bool)

(assert (= bs!1489196 (and d!1893506 b!6037656)))

(assert (=> bs!1489196 (= (= lt!2322917 lt!2322911) (= lambda!329381 lambda!329297))))

(assert (=> d!1893506 true))

(assert (=> d!1893506 (forall!15128 (t!377788 (exprs!5904 lt!2322698)) lambda!329381)))

(declare-fun lt!2323048 () Unit!157311)

(declare-fun choose!45136 (List!64359 Int Int) Unit!157311)

(assert (=> d!1893506 (= lt!2323048 (choose!45136 (t!377788 (exprs!5904 lt!2322698)) lt!2322917 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))))))

(assert (=> d!1893506 (>= lt!2322917 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))))))

(assert (=> d!1893506 (= (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 lt!2322698)) lt!2322917 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))) lt!2323048)))

(declare-fun bs!1489197 () Bool)

(assert (= bs!1489197 d!1893506))

(declare-fun m!6908648 () Bool)

(assert (=> bs!1489197 m!6908648))

(assert (=> bs!1489197 m!6908040))

(declare-fun m!6908650 () Bool)

(assert (=> bs!1489197 m!6908650))

(assert (=> b!6037659 d!1893506))

(declare-fun d!1893508 () Bool)

(assert (=> d!1893508 (= (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 lt!2322698))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))) (ite (>= (regexDepth!277 (h!70683 (exprs!5904 lt!2322698))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))) (regexDepth!277 (h!70683 (exprs!5904 lt!2322698))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))))))

(assert (=> b!6037659 d!1893508))

(declare-fun b!6038565 () Bool)

(declare-fun e!3688496 () (Set Context!10808))

(declare-fun call!493735 () (Set Context!10808))

(assert (=> b!6038565 (= e!3688496 call!493735)))

(declare-fun c!1082471 () Bool)

(declare-fun bm!493726 () Bool)

(declare-fun c!1082474 () Bool)

(declare-fun c!1082475 () Bool)

(declare-fun call!493734 () (Set Context!10808))

(declare-fun call!493733 () List!64359)

(assert (=> bm!493726 (= call!493734 (derivationStepZipperDown!1270 (ite c!1082474 (regOne!32553 (h!70683 (exprs!5904 lt!2322698))) (ite c!1082475 (regTwo!32552 (h!70683 (exprs!5904 lt!2322698))) (ite c!1082471 (regOne!32552 (h!70683 (exprs!5904 lt!2322698))) (reg!16349 (h!70683 (exprs!5904 lt!2322698)))))) (ite (or c!1082474 c!1082475) (Context!10809 (t!377788 (exprs!5904 lt!2322698))) (Context!10809 call!493733)) (h!70685 s!2326)))))

(declare-fun b!6038566 () Bool)

(declare-fun e!3688497 () (Set Context!10808))

(declare-fun e!3688499 () (Set Context!10808))

(assert (=> b!6038566 (= e!3688497 e!3688499)))

(assert (=> b!6038566 (= c!1082471 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun d!1893510 () Bool)

(declare-fun c!1082472 () Bool)

(assert (=> d!1893510 (= c!1082472 (and (is-ElementMatch!16020 (h!70683 (exprs!5904 lt!2322698))) (= (c!1082125 (h!70683 (exprs!5904 lt!2322698))) (h!70685 s!2326))))))

(declare-fun e!3688498 () (Set Context!10808))

(assert (=> d!1893510 (= (derivationStepZipperDown!1270 (h!70683 (exprs!5904 lt!2322698)) (Context!10809 (t!377788 (exprs!5904 lt!2322698))) (h!70685 s!2326)) e!3688498)))

(declare-fun bm!493727 () Bool)

(declare-fun call!493731 () (Set Context!10808))

(assert (=> bm!493727 (= call!493735 call!493731)))

(declare-fun b!6038567 () Bool)

(declare-fun e!3688494 () Bool)

(assert (=> b!6038567 (= e!3688494 (nullable!6015 (regOne!32552 (h!70683 (exprs!5904 lt!2322698)))))))

(declare-fun bm!493728 () Bool)

(assert (=> bm!493728 (= call!493731 call!493734)))

(declare-fun b!6038568 () Bool)

(declare-fun c!1082473 () Bool)

(assert (=> b!6038568 (= c!1082473 (is-Star!16020 (h!70683 (exprs!5904 lt!2322698))))))

(assert (=> b!6038568 (= e!3688499 e!3688496)))

(declare-fun bm!493729 () Bool)

(declare-fun call!493736 () List!64359)

(assert (=> bm!493729 (= call!493736 ($colon$colon!1905 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))) (ite (or c!1082475 c!1082471) (regTwo!32552 (h!70683 (exprs!5904 lt!2322698))) (h!70683 (exprs!5904 lt!2322698)))))))

(declare-fun b!6038569 () Bool)

(declare-fun call!493732 () (Set Context!10808))

(assert (=> b!6038569 (= e!3688497 (set.union call!493732 call!493731))))

(declare-fun b!6038570 () Bool)

(assert (=> b!6038570 (= e!3688498 (set.insert (Context!10809 (t!377788 (exprs!5904 lt!2322698))) (as set.empty (Set Context!10808))))))

(declare-fun bm!493730 () Bool)

(assert (=> bm!493730 (= call!493732 (derivationStepZipperDown!1270 (ite c!1082474 (regTwo!32553 (h!70683 (exprs!5904 lt!2322698))) (regOne!32552 (h!70683 (exprs!5904 lt!2322698)))) (ite c!1082474 (Context!10809 (t!377788 (exprs!5904 lt!2322698))) (Context!10809 call!493736)) (h!70685 s!2326)))))

(declare-fun bm!493731 () Bool)

(assert (=> bm!493731 (= call!493733 call!493736)))

(declare-fun b!6038571 () Bool)

(assert (=> b!6038571 (= e!3688499 call!493735)))

(declare-fun b!6038572 () Bool)

(declare-fun e!3688495 () (Set Context!10808))

(assert (=> b!6038572 (= e!3688498 e!3688495)))

(assert (=> b!6038572 (= c!1082474 (is-Union!16020 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun b!6038573 () Bool)

(assert (=> b!6038573 (= c!1082475 e!3688494)))

(declare-fun res!2514238 () Bool)

(assert (=> b!6038573 (=> (not res!2514238) (not e!3688494))))

(assert (=> b!6038573 (= res!2514238 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322698))))))

(assert (=> b!6038573 (= e!3688495 e!3688497)))

(declare-fun b!6038574 () Bool)

(assert (=> b!6038574 (= e!3688495 (set.union call!493734 call!493732))))

(declare-fun b!6038575 () Bool)

(assert (=> b!6038575 (= e!3688496 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893510 c!1082472) b!6038570))

(assert (= (and d!1893510 (not c!1082472)) b!6038572))

(assert (= (and b!6038572 c!1082474) b!6038574))

(assert (= (and b!6038572 (not c!1082474)) b!6038573))

(assert (= (and b!6038573 res!2514238) b!6038567))

(assert (= (and b!6038573 c!1082475) b!6038569))

(assert (= (and b!6038573 (not c!1082475)) b!6038566))

(assert (= (and b!6038566 c!1082471) b!6038571))

(assert (= (and b!6038566 (not c!1082471)) b!6038568))

(assert (= (and b!6038568 c!1082473) b!6038565))

(assert (= (and b!6038568 (not c!1082473)) b!6038575))

(assert (= (or b!6038571 b!6038565) bm!493731))

(assert (= (or b!6038571 b!6038565) bm!493727))

(assert (= (or b!6038569 bm!493731) bm!493729))

(assert (= (or b!6038569 bm!493727) bm!493728))

(assert (= (or b!6038574 b!6038569) bm!493730))

(assert (= (or b!6038574 bm!493728) bm!493726))

(declare-fun m!6908652 () Bool)

(assert (=> bm!493730 m!6908652))

(declare-fun m!6908654 () Bool)

(assert (=> b!6038570 m!6908654))

(declare-fun m!6908656 () Bool)

(assert (=> bm!493726 m!6908656))

(declare-fun m!6908658 () Bool)

(assert (=> bm!493729 m!6908658))

(declare-fun m!6908660 () Bool)

(assert (=> b!6038567 m!6908660))

(assert (=> bm!493585 d!1893510))

(declare-fun d!1893512 () Bool)

(assert (=> d!1893512 (= (isEmpty!36143 (tail!11662 s!2326)) (is-Nil!64237 (tail!11662 s!2326)))))

(assert (=> b!6037519 d!1893512))

(declare-fun d!1893514 () Bool)

(assert (=> d!1893514 (= (tail!11662 s!2326) (t!377790 s!2326))))

(assert (=> b!6037519 d!1893514))

(assert (=> bs!1489049 d!1893270))

(declare-fun d!1893516 () Bool)

(assert (=> d!1893516 true))

(declare-fun setRes!40850 () Bool)

(assert (=> d!1893516 setRes!40850))

(declare-fun condSetEmpty!40850 () Bool)

(declare-fun res!2514241 () (Set Context!10808))

(assert (=> d!1893516 (= condSetEmpty!40850 (= res!2514241 (as set.empty (Set Context!10808))))))

(assert (=> d!1893516 (= (choose!45123 lt!2322722 lambda!329245) res!2514241)))

(declare-fun setIsEmpty!40850 () Bool)

(assert (=> setIsEmpty!40850 setRes!40850))

(declare-fun tp!1679039 () Bool)

(declare-fun setElem!40850 () Context!10808)

(declare-fun e!3688502 () Bool)

(declare-fun setNonEmpty!40850 () Bool)

(assert (=> setNonEmpty!40850 (= setRes!40850 (and tp!1679039 (inv!83298 setElem!40850) e!3688502))))

(declare-fun setRest!40850 () (Set Context!10808))

(assert (=> setNonEmpty!40850 (= res!2514241 (set.union (set.insert setElem!40850 (as set.empty (Set Context!10808))) setRest!40850))))

(declare-fun b!6038578 () Bool)

(declare-fun tp!1679040 () Bool)

(assert (=> b!6038578 (= e!3688502 tp!1679040)))

(assert (= (and d!1893516 condSetEmpty!40850) setIsEmpty!40850))

(assert (= (and d!1893516 (not condSetEmpty!40850)) setNonEmpty!40850))

(assert (= setNonEmpty!40850 b!6038578))

(declare-fun m!6908662 () Bool)

(assert (=> setNonEmpty!40850 m!6908662))

(assert (=> d!1893306 d!1893516))

(declare-fun d!1893518 () Bool)

(assert (=> d!1893518 (= (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 lt!2322733))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))) (ite (>= (regexDepth!277 (h!70683 (exprs!5904 lt!2322733))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))) (regexDepth!277 (h!70683 (exprs!5904 lt!2322733))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))))))

(assert (=> b!6037716 d!1893518))

(declare-fun bm!493732 () Bool)

(declare-fun call!493742 () Int)

(declare-fun call!493741 () Int)

(assert (=> bm!493732 (= call!493742 call!493741)))

(declare-fun b!6038580 () Bool)

(declare-fun e!3688503 () Bool)

(declare-fun e!3688504 () Bool)

(assert (=> b!6038580 (= e!3688503 e!3688504)))

(declare-fun c!1082479 () Bool)

(assert (=> b!6038580 (= c!1082479 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun b!6038581 () Bool)

(declare-fun c!1082478 () Bool)

(assert (=> b!6038581 (= c!1082478 (is-Union!16020 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun e!3688511 () Int)

(declare-fun e!3688512 () Int)

(assert (=> b!6038581 (= e!3688511 e!3688512)))

(declare-fun b!6038582 () Bool)

(declare-fun c!1082481 () Bool)

(assert (=> b!6038582 (= c!1082481 (is-Star!16020 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun e!3688506 () Bool)

(assert (=> b!6038582 (= e!3688504 e!3688506)))

(declare-fun b!6038583 () Bool)

(declare-fun e!3688507 () Int)

(declare-fun call!493738 () Int)

(assert (=> b!6038583 (= e!3688507 (+ 1 call!493738))))

(declare-fun b!6038584 () Bool)

(assert (=> b!6038584 (= e!3688512 (+ 1 call!493738))))

(declare-fun b!6038585 () Bool)

(declare-fun lt!2323049 () Int)

(assert (=> b!6038585 (= e!3688506 (= lt!2323049 1))))

(declare-fun bm!493733 () Bool)

(declare-fun call!493740 () Int)

(assert (=> bm!493733 (= call!493738 (maxBigInt!0 (ite c!1082478 call!493740 call!493742) (ite c!1082478 call!493742 call!493740)))))

(declare-fun bm!493734 () Bool)

(declare-fun c!1082477 () Bool)

(assert (=> bm!493734 (= call!493741 (regexDepth!277 (ite c!1082477 (reg!16349 (h!70683 (exprs!5904 lt!2322733))) (ite c!1082478 (regTwo!32553 (h!70683 (exprs!5904 lt!2322733))) (regOne!32552 (h!70683 (exprs!5904 lt!2322733)))))))))

(declare-fun b!6038586 () Bool)

(declare-fun call!493743 () Int)

(assert (=> b!6038586 (= e!3688506 (> lt!2323049 call!493743))))

(declare-fun b!6038587 () Bool)

(assert (=> b!6038587 (= e!3688511 (+ 1 call!493741))))

(declare-fun bm!493735 () Bool)

(declare-fun call!493737 () Int)

(declare-fun c!1082480 () Bool)

(assert (=> bm!493735 (= call!493737 (regexDepth!277 (ite c!1082480 (regOne!32553 (h!70683 (exprs!5904 lt!2322733))) (regTwo!32552 (h!70683 (exprs!5904 lt!2322733))))))))

(declare-fun b!6038588 () Bool)

(declare-fun e!3688510 () Bool)

(assert (=> b!6038588 (= e!3688503 e!3688510)))

(declare-fun res!2514242 () Bool)

(assert (=> b!6038588 (= res!2514242 (> lt!2323049 call!493737))))

(assert (=> b!6038588 (=> (not res!2514242) (not e!3688510))))

(declare-fun b!6038589 () Bool)

(declare-fun res!2514244 () Bool)

(declare-fun e!3688508 () Bool)

(assert (=> b!6038589 (=> (not res!2514244) (not e!3688508))))

(assert (=> b!6038589 (= res!2514244 (> lt!2323049 call!493743))))

(assert (=> b!6038589 (= e!3688504 e!3688508)))

(declare-fun b!6038579 () Bool)

(assert (=> b!6038579 (= e!3688507 1)))

(declare-fun d!1893520 () Bool)

(declare-fun e!3688509 () Bool)

(assert (=> d!1893520 e!3688509))

(declare-fun res!2514243 () Bool)

(assert (=> d!1893520 (=> (not res!2514243) (not e!3688509))))

(assert (=> d!1893520 (= res!2514243 (> lt!2323049 0))))

(declare-fun e!3688505 () Int)

(assert (=> d!1893520 (= lt!2323049 e!3688505)))

(declare-fun c!1082476 () Bool)

(assert (=> d!1893520 (= c!1082476 (is-ElementMatch!16020 (h!70683 (exprs!5904 lt!2322733))))))

(assert (=> d!1893520 (= (regexDepth!277 (h!70683 (exprs!5904 lt!2322733))) lt!2323049)))

(declare-fun b!6038590 () Bool)

(assert (=> b!6038590 (= e!3688508 (> lt!2323049 call!493737))))

(declare-fun bm!493736 () Bool)

(declare-fun call!493739 () Int)

(assert (=> bm!493736 (= call!493739 (regexDepth!277 (ite c!1082480 (regTwo!32553 (h!70683 (exprs!5904 lt!2322733))) (ite c!1082479 (regOne!32552 (h!70683 (exprs!5904 lt!2322733))) (reg!16349 (h!70683 (exprs!5904 lt!2322733)))))))))

(declare-fun bm!493737 () Bool)

(assert (=> bm!493737 (= call!493740 (regexDepth!277 (ite c!1082478 (regOne!32553 (h!70683 (exprs!5904 lt!2322733))) (regTwo!32552 (h!70683 (exprs!5904 lt!2322733))))))))

(declare-fun b!6038591 () Bool)

(assert (=> b!6038591 (= e!3688505 1)))

(declare-fun b!6038592 () Bool)

(assert (=> b!6038592 (= e!3688510 (> lt!2323049 call!493739))))

(declare-fun bm!493738 () Bool)

(assert (=> bm!493738 (= call!493743 call!493739)))

(declare-fun b!6038593 () Bool)

(assert (=> b!6038593 (= e!3688512 e!3688507)))

(declare-fun c!1082482 () Bool)

(assert (=> b!6038593 (= c!1082482 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun b!6038594 () Bool)

(assert (=> b!6038594 (= e!3688509 e!3688503)))

(assert (=> b!6038594 (= c!1082480 (is-Union!16020 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun b!6038595 () Bool)

(assert (=> b!6038595 (= e!3688505 e!3688511)))

(assert (=> b!6038595 (= c!1082477 (is-Star!16020 (h!70683 (exprs!5904 lt!2322733))))))

(assert (= (and d!1893520 c!1082476) b!6038591))

(assert (= (and d!1893520 (not c!1082476)) b!6038595))

(assert (= (and b!6038595 c!1082477) b!6038587))

(assert (= (and b!6038595 (not c!1082477)) b!6038581))

(assert (= (and b!6038581 c!1082478) b!6038584))

(assert (= (and b!6038581 (not c!1082478)) b!6038593))

(assert (= (and b!6038593 c!1082482) b!6038583))

(assert (= (and b!6038593 (not c!1082482)) b!6038579))

(assert (= (or b!6038584 b!6038583) bm!493732))

(assert (= (or b!6038584 b!6038583) bm!493737))

(assert (= (or b!6038584 b!6038583) bm!493733))

(assert (= (or b!6038587 bm!493732) bm!493734))

(assert (= (and d!1893520 res!2514243) b!6038594))

(assert (= (and b!6038594 c!1082480) b!6038588))

(assert (= (and b!6038594 (not c!1082480)) b!6038580))

(assert (= (and b!6038588 res!2514242) b!6038592))

(assert (= (and b!6038580 c!1082479) b!6038589))

(assert (= (and b!6038580 (not c!1082479)) b!6038582))

(assert (= (and b!6038589 res!2514244) b!6038590))

(assert (= (and b!6038582 c!1082481) b!6038586))

(assert (= (and b!6038582 (not c!1082481)) b!6038585))

(assert (= (or b!6038589 b!6038586) bm!493738))

(assert (= (or b!6038592 bm!493738) bm!493736))

(assert (= (or b!6038588 b!6038590) bm!493735))

(declare-fun m!6908664 () Bool)

(assert (=> bm!493735 m!6908664))

(declare-fun m!6908666 () Bool)

(assert (=> bm!493736 m!6908666))

(declare-fun m!6908668 () Bool)

(assert (=> bm!493733 m!6908668))

(declare-fun m!6908670 () Bool)

(assert (=> bm!493737 m!6908670))

(declare-fun m!6908672 () Bool)

(assert (=> bm!493734 m!6908672))

(assert (=> b!6037716 d!1893520))

(declare-fun bs!1489198 () Bool)

(declare-fun d!1893522 () Bool)

(assert (= bs!1489198 (and d!1893522 d!1893334)))

(declare-fun lambda!329382 () Int)

(assert (=> bs!1489198 (not (= lambda!329382 lambda!329310))))

(declare-fun bs!1489199 () Bool)

(assert (= bs!1489199 (and d!1893522 d!1893280)))

(assert (=> bs!1489199 (not (= lambda!329382 lambda!329287))))

(declare-fun bs!1489200 () Bool)

(assert (= bs!1489200 (and d!1893522 b!6037654)))

(assert (=> bs!1489200 (= (= lt!2322923 lt!2322913) (= lambda!329382 lambda!329296))))

(declare-fun bs!1489201 () Bool)

(assert (= bs!1489201 (and d!1893522 b!6037661)))

(assert (=> bs!1489201 (= (= lt!2322923 lt!2322915) (= lambda!329382 lambda!329299))))

(declare-fun bs!1489202 () Bool)

(assert (= bs!1489202 (and d!1893522 b!6037659)))

(assert (=> bs!1489202 (= (= lt!2322923 lt!2322917) (= lambda!329382 lambda!329298))))

(declare-fun bs!1489203 () Bool)

(assert (= bs!1489203 (and d!1893522 b!6038563)))

(assert (=> bs!1489203 (= (= lt!2322923 lt!2323042) (= lambda!329382 lambda!329378))))

(declare-fun bs!1489204 () Bool)

(assert (= bs!1489204 (and d!1893522 b!6037718)))

(assert (=> bs!1489204 (= (= lt!2322923 lt!2322921) (= lambda!329382 lambda!329301))))

(declare-fun bs!1489205 () Bool)

(assert (= bs!1489205 (and d!1893522 d!1893332)))

(assert (=> bs!1489205 (not (= lambda!329382 lambda!329307))))

(declare-fun bs!1489206 () Bool)

(assert (= bs!1489206 (and d!1893522 d!1893344)))

(assert (=> bs!1489206 (not (= lambda!329382 lambda!329311))))

(declare-fun bs!1489207 () Bool)

(assert (= bs!1489207 (and d!1893522 d!1893506)))

(assert (=> bs!1489207 (= (= lt!2322923 lt!2322917) (= lambda!329382 lambda!329381))))

(declare-fun bs!1489208 () Bool)

(assert (= bs!1489208 (and d!1893522 d!1893330)))

(assert (=> bs!1489208 (not (= lambda!329382 lambda!329304))))

(declare-fun bs!1489209 () Bool)

(assert (= bs!1489209 (and d!1893522 b!6038561)))

(assert (=> bs!1489209 (= (= lt!2322923 lt!2323044) (= lambda!329382 lambda!329377))))

(declare-fun bs!1489210 () Bool)

(assert (= bs!1489210 (and d!1893522 b!6037716)))

(assert (=> bs!1489210 (= lambda!329382 lambda!329300)))

(declare-fun bs!1489211 () Bool)

(assert (= bs!1489211 (and d!1893522 b!6037656)))

(assert (=> bs!1489211 (= (= lt!2322923 lt!2322911) (= lambda!329382 lambda!329297))))

(assert (=> d!1893522 true))

(assert (=> d!1893522 (forall!15128 (t!377788 (exprs!5904 lt!2322733)) lambda!329382)))

(declare-fun lt!2323050 () Unit!157311)

(assert (=> d!1893522 (= lt!2323050 (choose!45136 (t!377788 (exprs!5904 lt!2322733)) lt!2322923 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))))))

(assert (=> d!1893522 (>= lt!2322923 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))))))

(assert (=> d!1893522 (= (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 lt!2322733)) lt!2322923 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))) lt!2323050)))

(declare-fun bs!1489212 () Bool)

(assert (= bs!1489212 d!1893522))

(declare-fun m!6908674 () Bool)

(assert (=> bs!1489212 m!6908674))

(assert (=> bs!1489212 m!6908096))

(declare-fun m!6908676 () Bool)

(assert (=> bs!1489212 m!6908676))

(assert (=> b!6037716 d!1893522))

(declare-fun bs!1489213 () Bool)

(declare-fun b!6038596 () Bool)

(assert (= bs!1489213 (and b!6038596 d!1893522)))

(declare-fun lambda!329383 () Int)

(declare-fun lt!2323053 () Int)

(assert (=> bs!1489213 (= (= lt!2323053 lt!2322923) (= lambda!329383 lambda!329382))))

(declare-fun bs!1489214 () Bool)

(assert (= bs!1489214 (and b!6038596 d!1893334)))

(assert (=> bs!1489214 (not (= lambda!329383 lambda!329310))))

(declare-fun bs!1489215 () Bool)

(assert (= bs!1489215 (and b!6038596 d!1893280)))

(assert (=> bs!1489215 (not (= lambda!329383 lambda!329287))))

(declare-fun bs!1489216 () Bool)

(assert (= bs!1489216 (and b!6038596 b!6037654)))

(assert (=> bs!1489216 (= (= lt!2323053 lt!2322913) (= lambda!329383 lambda!329296))))

(declare-fun bs!1489217 () Bool)

(assert (= bs!1489217 (and b!6038596 b!6037661)))

(assert (=> bs!1489217 (= (= lt!2323053 lt!2322915) (= lambda!329383 lambda!329299))))

(declare-fun bs!1489218 () Bool)

(assert (= bs!1489218 (and b!6038596 b!6037659)))

(assert (=> bs!1489218 (= (= lt!2323053 lt!2322917) (= lambda!329383 lambda!329298))))

(declare-fun bs!1489219 () Bool)

(assert (= bs!1489219 (and b!6038596 b!6038563)))

(assert (=> bs!1489219 (= (= lt!2323053 lt!2323042) (= lambda!329383 lambda!329378))))

(declare-fun bs!1489220 () Bool)

(assert (= bs!1489220 (and b!6038596 b!6037718)))

(assert (=> bs!1489220 (= (= lt!2323053 lt!2322921) (= lambda!329383 lambda!329301))))

(declare-fun bs!1489221 () Bool)

(assert (= bs!1489221 (and b!6038596 d!1893332)))

(assert (=> bs!1489221 (not (= lambda!329383 lambda!329307))))

(declare-fun bs!1489222 () Bool)

(assert (= bs!1489222 (and b!6038596 d!1893344)))

(assert (=> bs!1489222 (not (= lambda!329383 lambda!329311))))

(declare-fun bs!1489223 () Bool)

(assert (= bs!1489223 (and b!6038596 d!1893506)))

(assert (=> bs!1489223 (= (= lt!2323053 lt!2322917) (= lambda!329383 lambda!329381))))

(declare-fun bs!1489224 () Bool)

(assert (= bs!1489224 (and b!6038596 d!1893330)))

(assert (=> bs!1489224 (not (= lambda!329383 lambda!329304))))

(declare-fun bs!1489225 () Bool)

(assert (= bs!1489225 (and b!6038596 b!6038561)))

(assert (=> bs!1489225 (= (= lt!2323053 lt!2323044) (= lambda!329383 lambda!329377))))

(declare-fun bs!1489226 () Bool)

(assert (= bs!1489226 (and b!6038596 b!6037716)))

(assert (=> bs!1489226 (= (= lt!2323053 lt!2322923) (= lambda!329383 lambda!329300))))

(declare-fun bs!1489227 () Bool)

(assert (= bs!1489227 (and b!6038596 b!6037656)))

(assert (=> bs!1489227 (= (= lt!2323053 lt!2322911) (= lambda!329383 lambda!329297))))

(assert (=> b!6038596 true))

(declare-fun bs!1489228 () Bool)

(declare-fun b!6038598 () Bool)

(assert (= bs!1489228 (and b!6038598 d!1893522)))

(declare-fun lt!2323051 () Int)

(declare-fun lambda!329384 () Int)

(assert (=> bs!1489228 (= (= lt!2323051 lt!2322923) (= lambda!329384 lambda!329382))))

(declare-fun bs!1489229 () Bool)

(assert (= bs!1489229 (and b!6038598 d!1893334)))

(assert (=> bs!1489229 (not (= lambda!329384 lambda!329310))))

(declare-fun bs!1489230 () Bool)

(assert (= bs!1489230 (and b!6038598 d!1893280)))

(assert (=> bs!1489230 (not (= lambda!329384 lambda!329287))))

(declare-fun bs!1489231 () Bool)

(assert (= bs!1489231 (and b!6038598 b!6037654)))

(assert (=> bs!1489231 (= (= lt!2323051 lt!2322913) (= lambda!329384 lambda!329296))))

(declare-fun bs!1489232 () Bool)

(assert (= bs!1489232 (and b!6038598 b!6037661)))

(assert (=> bs!1489232 (= (= lt!2323051 lt!2322915) (= lambda!329384 lambda!329299))))

(declare-fun bs!1489233 () Bool)

(assert (= bs!1489233 (and b!6038598 b!6037659)))

(assert (=> bs!1489233 (= (= lt!2323051 lt!2322917) (= lambda!329384 lambda!329298))))

(declare-fun bs!1489234 () Bool)

(assert (= bs!1489234 (and b!6038598 b!6038563)))

(assert (=> bs!1489234 (= (= lt!2323051 lt!2323042) (= lambda!329384 lambda!329378))))

(declare-fun bs!1489235 () Bool)

(assert (= bs!1489235 (and b!6038598 d!1893332)))

(assert (=> bs!1489235 (not (= lambda!329384 lambda!329307))))

(declare-fun bs!1489236 () Bool)

(assert (= bs!1489236 (and b!6038598 d!1893344)))

(assert (=> bs!1489236 (not (= lambda!329384 lambda!329311))))

(declare-fun bs!1489237 () Bool)

(assert (= bs!1489237 (and b!6038598 d!1893506)))

(assert (=> bs!1489237 (= (= lt!2323051 lt!2322917) (= lambda!329384 lambda!329381))))

(declare-fun bs!1489238 () Bool)

(assert (= bs!1489238 (and b!6038598 d!1893330)))

(assert (=> bs!1489238 (not (= lambda!329384 lambda!329304))))

(declare-fun bs!1489239 () Bool)

(assert (= bs!1489239 (and b!6038598 b!6038561)))

(assert (=> bs!1489239 (= (= lt!2323051 lt!2323044) (= lambda!329384 lambda!329377))))

(declare-fun bs!1489240 () Bool)

(assert (= bs!1489240 (and b!6038598 b!6037718)))

(assert (=> bs!1489240 (= (= lt!2323051 lt!2322921) (= lambda!329384 lambda!329301))))

(declare-fun bs!1489241 () Bool)

(assert (= bs!1489241 (and b!6038598 b!6038596)))

(assert (=> bs!1489241 (= (= lt!2323051 lt!2323053) (= lambda!329384 lambda!329383))))

(declare-fun bs!1489242 () Bool)

(assert (= bs!1489242 (and b!6038598 b!6037716)))

(assert (=> bs!1489242 (= (= lt!2323051 lt!2322923) (= lambda!329384 lambda!329300))))

(declare-fun bs!1489243 () Bool)

(assert (= bs!1489243 (and b!6038598 b!6037656)))

(assert (=> bs!1489243 (= (= lt!2323051 lt!2322911) (= lambda!329384 lambda!329297))))

(assert (=> b!6038598 true))

(declare-fun d!1893524 () Bool)

(declare-fun e!3688514 () Bool)

(assert (=> d!1893524 e!3688514))

(declare-fun res!2514245 () Bool)

(assert (=> d!1893524 (=> (not res!2514245) (not e!3688514))))

(assert (=> d!1893524 (= res!2514245 (>= lt!2323051 0))))

(declare-fun e!3688513 () Int)

(assert (=> d!1893524 (= lt!2323051 e!3688513)))

(declare-fun c!1082483 () Bool)

(assert (=> d!1893524 (= c!1082483 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))))))

(assert (=> d!1893524 (= (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))) lt!2323051)))

(assert (=> b!6038596 (= e!3688513 lt!2323053)))

(assert (=> b!6038596 (= lt!2323053 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))))))))))

(declare-fun lt!2323052 () Unit!157311)

(assert (=> b!6038596 (= lt!2323052 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))) lt!2323053 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))))))))))

(assert (=> b!6038596 (forall!15128 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))) lambda!329383)))

(declare-fun lt!2323054 () Unit!157311)

(assert (=> b!6038596 (= lt!2323054 lt!2323052)))

(declare-fun b!6038597 () Bool)

(assert (=> b!6038597 (= e!3688513 0)))

(assert (=> b!6038598 (= e!3688514 (forall!15128 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))) lambda!329384))))

(assert (= (and d!1893524 c!1082483) b!6038596))

(assert (= (and d!1893524 (not c!1082483)) b!6038597))

(assert (= (and d!1893524 res!2514245) b!6038598))

(declare-fun m!6908678 () Bool)

(assert (=> b!6038596 m!6908678))

(declare-fun m!6908680 () Bool)

(assert (=> b!6038596 m!6908680))

(declare-fun m!6908682 () Bool)

(assert (=> b!6038596 m!6908682))

(assert (=> b!6038596 m!6908678))

(assert (=> b!6038596 m!6908680))

(declare-fun m!6908684 () Bool)

(assert (=> b!6038596 m!6908684))

(assert (=> b!6038596 m!6908680))

(declare-fun m!6908686 () Bool)

(assert (=> b!6038596 m!6908686))

(declare-fun m!6908688 () Bool)

(assert (=> b!6038598 m!6908688))

(assert (=> b!6037716 d!1893524))

(declare-fun d!1893526 () Bool)

(declare-fun res!2514246 () Bool)

(declare-fun e!3688515 () Bool)

(assert (=> d!1893526 (=> res!2514246 e!3688515)))

(assert (=> d!1893526 (= res!2514246 (is-Nil!64235 (t!377788 (exprs!5904 lt!2322733))))))

(assert (=> d!1893526 (= (forall!15128 (t!377788 (exprs!5904 lt!2322733)) lambda!329300) e!3688515)))

(declare-fun b!6038599 () Bool)

(declare-fun e!3688516 () Bool)

(assert (=> b!6038599 (= e!3688515 e!3688516)))

(declare-fun res!2514247 () Bool)

(assert (=> b!6038599 (=> (not res!2514247) (not e!3688516))))

(assert (=> b!6038599 (= res!2514247 (dynLambda!25216 lambda!329300 (h!70683 (t!377788 (exprs!5904 lt!2322733)))))))

(declare-fun b!6038600 () Bool)

(assert (=> b!6038600 (= e!3688516 (forall!15128 (t!377788 (t!377788 (exprs!5904 lt!2322733))) lambda!329300))))

(assert (= (and d!1893526 (not res!2514246)) b!6038599))

(assert (= (and b!6038599 res!2514247) b!6038600))

(declare-fun b_lambda!229079 () Bool)

(assert (=> (not b_lambda!229079) (not b!6038599)))

(declare-fun m!6908690 () Bool)

(assert (=> b!6038599 m!6908690))

(declare-fun m!6908692 () Bool)

(assert (=> b!6038600 m!6908692))

(assert (=> b!6037716 d!1893526))

(declare-fun bm!493739 () Bool)

(declare-fun call!493749 () Int)

(declare-fun call!493748 () Int)

(assert (=> bm!493739 (= call!493749 call!493748)))

(declare-fun b!6038602 () Bool)

(declare-fun e!3688517 () Bool)

(declare-fun e!3688518 () Bool)

(assert (=> b!6038602 (= e!3688517 e!3688518)))

(declare-fun c!1082487 () Bool)

(assert (=> b!6038602 (= c!1082487 (is-Concat!24865 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun b!6038603 () Bool)

(declare-fun c!1082486 () Bool)

(assert (=> b!6038603 (= c!1082486 (is-Union!16020 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun e!3688525 () Int)

(declare-fun e!3688526 () Int)

(assert (=> b!6038603 (= e!3688525 e!3688526)))

(declare-fun b!6038604 () Bool)

(declare-fun c!1082489 () Bool)

(assert (=> b!6038604 (= c!1082489 (is-Star!16020 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun e!3688520 () Bool)

(assert (=> b!6038604 (= e!3688518 e!3688520)))

(declare-fun b!6038605 () Bool)

(declare-fun e!3688521 () Int)

(declare-fun call!493745 () Int)

(assert (=> b!6038605 (= e!3688521 (+ 1 call!493745))))

(declare-fun b!6038606 () Bool)

(assert (=> b!6038606 (= e!3688526 (+ 1 call!493745))))

(declare-fun b!6038607 () Bool)

(declare-fun lt!2323055 () Int)

(assert (=> b!6038607 (= e!3688520 (= lt!2323055 1))))

(declare-fun call!493747 () Int)

(declare-fun bm!493740 () Bool)

(assert (=> bm!493740 (= call!493745 (maxBigInt!0 (ite c!1082486 call!493747 call!493749) (ite c!1082486 call!493749 call!493747)))))

(declare-fun bm!493741 () Bool)

(declare-fun c!1082485 () Bool)

(assert (=> bm!493741 (= call!493748 (regexDepth!277 (ite c!1082485 (reg!16349 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (ite c!1082486 (regTwo!32553 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (regOne!32552 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292)))))))))

(declare-fun b!6038608 () Bool)

(declare-fun call!493750 () Int)

(assert (=> b!6038608 (= e!3688520 (> lt!2323055 call!493750))))

(declare-fun b!6038609 () Bool)

(assert (=> b!6038609 (= e!3688525 (+ 1 call!493748))))

(declare-fun bm!493742 () Bool)

(declare-fun c!1082488 () Bool)

(declare-fun call!493744 () Int)

(assert (=> bm!493742 (= call!493744 (regexDepth!277 (ite c!1082488 (regOne!32553 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (regTwo!32552 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))))

(declare-fun b!6038610 () Bool)

(declare-fun e!3688524 () Bool)

(assert (=> b!6038610 (= e!3688517 e!3688524)))

(declare-fun res!2514248 () Bool)

(assert (=> b!6038610 (= res!2514248 (> lt!2323055 call!493744))))

(assert (=> b!6038610 (=> (not res!2514248) (not e!3688524))))

(declare-fun b!6038611 () Bool)

(declare-fun res!2514250 () Bool)

(declare-fun e!3688522 () Bool)

(assert (=> b!6038611 (=> (not res!2514250) (not e!3688522))))

(assert (=> b!6038611 (= res!2514250 (> lt!2323055 call!493750))))

(assert (=> b!6038611 (= e!3688518 e!3688522)))

(declare-fun b!6038601 () Bool)

(assert (=> b!6038601 (= e!3688521 1)))

(declare-fun d!1893528 () Bool)

(declare-fun e!3688523 () Bool)

(assert (=> d!1893528 e!3688523))

(declare-fun res!2514249 () Bool)

(assert (=> d!1893528 (=> (not res!2514249) (not e!3688523))))

(assert (=> d!1893528 (= res!2514249 (> lt!2323055 0))))

(declare-fun e!3688519 () Int)

(assert (=> d!1893528 (= lt!2323055 e!3688519)))

(declare-fun c!1082484 () Bool)

(assert (=> d!1893528 (= c!1082484 (is-ElementMatch!16020 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(assert (=> d!1893528 (= (regexDepth!277 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))) lt!2323055)))

(declare-fun b!6038612 () Bool)

(assert (=> b!6038612 (= e!3688522 (> lt!2323055 call!493744))))

(declare-fun call!493746 () Int)

(declare-fun bm!493743 () Bool)

(assert (=> bm!493743 (= call!493746 (regexDepth!277 (ite c!1082488 (regTwo!32553 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (ite c!1082487 (regOne!32552 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (reg!16349 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292)))))))))

(declare-fun bm!493744 () Bool)

(assert (=> bm!493744 (= call!493747 (regexDepth!277 (ite c!1082486 (regOne!32553 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (regTwo!32552 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))))

(declare-fun b!6038613 () Bool)

(assert (=> b!6038613 (= e!3688519 1)))

(declare-fun b!6038614 () Bool)

(assert (=> b!6038614 (= e!3688524 (> lt!2323055 call!493746))))

(declare-fun bm!493745 () Bool)

(assert (=> bm!493745 (= call!493750 call!493746)))

(declare-fun b!6038615 () Bool)

(assert (=> b!6038615 (= e!3688526 e!3688521)))

(declare-fun c!1082490 () Bool)

(assert (=> b!6038615 (= c!1082490 (is-Concat!24865 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun b!6038616 () Bool)

(assert (=> b!6038616 (= e!3688523 e!3688517)))

(assert (=> b!6038616 (= c!1082488 (is-Union!16020 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun b!6038617 () Bool)

(assert (=> b!6038617 (= e!3688519 e!3688525)))

(assert (=> b!6038617 (= c!1082485 (is-Star!16020 (ite c!1082287 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(assert (= (and d!1893528 c!1082484) b!6038613))

(assert (= (and d!1893528 (not c!1082484)) b!6038617))

(assert (= (and b!6038617 c!1082485) b!6038609))

(assert (= (and b!6038617 (not c!1082485)) b!6038603))

(assert (= (and b!6038603 c!1082486) b!6038606))

(assert (= (and b!6038603 (not c!1082486)) b!6038615))

(assert (= (and b!6038615 c!1082490) b!6038605))

(assert (= (and b!6038615 (not c!1082490)) b!6038601))

(assert (= (or b!6038606 b!6038605) bm!493739))

(assert (= (or b!6038606 b!6038605) bm!493744))

(assert (= (or b!6038606 b!6038605) bm!493740))

(assert (= (or b!6038609 bm!493739) bm!493741))

(assert (= (and d!1893528 res!2514249) b!6038616))

(assert (= (and b!6038616 c!1082488) b!6038610))

(assert (= (and b!6038616 (not c!1082488)) b!6038602))

(assert (= (and b!6038610 res!2514248) b!6038614))

(assert (= (and b!6038602 c!1082487) b!6038611))

(assert (= (and b!6038602 (not c!1082487)) b!6038604))

(assert (= (and b!6038611 res!2514250) b!6038612))

(assert (= (and b!6038604 c!1082489) b!6038608))

(assert (= (and b!6038604 (not c!1082489)) b!6038607))

(assert (= (or b!6038611 b!6038608) bm!493745))

(assert (= (or b!6038614 bm!493745) bm!493743))

(assert (= (or b!6038610 b!6038612) bm!493742))

(declare-fun m!6908694 () Bool)

(assert (=> bm!493742 m!6908694))

(declare-fun m!6908696 () Bool)

(assert (=> bm!493743 m!6908696))

(declare-fun m!6908698 () Bool)

(assert (=> bm!493740 m!6908698))

(declare-fun m!6908700 () Bool)

(assert (=> bm!493744 m!6908700))

(declare-fun m!6908702 () Bool)

(assert (=> bm!493741 m!6908702))

(assert (=> bm!493621 d!1893528))

(declare-fun d!1893530 () Bool)

(assert (=> d!1893530 (= (flatMap!1533 lt!2322722 lambda!329291) (choose!45123 lt!2322722 lambda!329291))))

(declare-fun bs!1489244 () Bool)

(assert (= bs!1489244 d!1893530))

(declare-fun m!6908704 () Bool)

(assert (=> bs!1489244 m!6908704))

(assert (=> d!1893288 d!1893530))

(declare-fun b!6038629 () Bool)

(declare-fun e!3688532 () Bool)

(declare-fun lt!2323058 () List!64361)

(assert (=> b!6038629 (= e!3688532 (or (not (= (_2!36302 (get!22141 lt!2322869)) Nil!64237)) (= lt!2323058 (_1!36302 (get!22141 lt!2322869)))))))

(declare-fun b!6038626 () Bool)

(declare-fun e!3688531 () List!64361)

(assert (=> b!6038626 (= e!3688531 (_2!36302 (get!22141 lt!2322869)))))

(declare-fun d!1893532 () Bool)

(assert (=> d!1893532 e!3688532))

(declare-fun res!2514255 () Bool)

(assert (=> d!1893532 (=> (not res!2514255) (not e!3688532))))

(declare-fun content!11886 (List!64361) (Set C!32310))

(assert (=> d!1893532 (= res!2514255 (= (content!11886 lt!2323058) (set.union (content!11886 (_1!36302 (get!22141 lt!2322869))) (content!11886 (_2!36302 (get!22141 lt!2322869))))))))

(assert (=> d!1893532 (= lt!2323058 e!3688531)))

(declare-fun c!1082493 () Bool)

(assert (=> d!1893532 (= c!1082493 (is-Nil!64237 (_1!36302 (get!22141 lt!2322869))))))

(assert (=> d!1893532 (= (++!14115 (_1!36302 (get!22141 lt!2322869)) (_2!36302 (get!22141 lt!2322869))) lt!2323058)))

(declare-fun b!6038627 () Bool)

(assert (=> b!6038627 (= e!3688531 (Cons!64237 (h!70685 (_1!36302 (get!22141 lt!2322869))) (++!14115 (t!377790 (_1!36302 (get!22141 lt!2322869))) (_2!36302 (get!22141 lt!2322869)))))))

(declare-fun b!6038628 () Bool)

(declare-fun res!2514256 () Bool)

(assert (=> b!6038628 (=> (not res!2514256) (not e!3688532))))

(declare-fun size!40175 (List!64361) Int)

(assert (=> b!6038628 (= res!2514256 (= (size!40175 lt!2323058) (+ (size!40175 (_1!36302 (get!22141 lt!2322869))) (size!40175 (_2!36302 (get!22141 lt!2322869))))))))

(assert (= (and d!1893532 c!1082493) b!6038626))

(assert (= (and d!1893532 (not c!1082493)) b!6038627))

(assert (= (and d!1893532 res!2514255) b!6038628))

(assert (= (and b!6038628 res!2514256) b!6038629))

(declare-fun m!6908706 () Bool)

(assert (=> d!1893532 m!6908706))

(declare-fun m!6908708 () Bool)

(assert (=> d!1893532 m!6908708))

(declare-fun m!6908710 () Bool)

(assert (=> d!1893532 m!6908710))

(declare-fun m!6908712 () Bool)

(assert (=> b!6038627 m!6908712))

(declare-fun m!6908714 () Bool)

(assert (=> b!6038628 m!6908714))

(declare-fun m!6908716 () Bool)

(assert (=> b!6038628 m!6908716))

(declare-fun m!6908718 () Bool)

(assert (=> b!6038628 m!6908718))

(assert (=> b!6037559 d!1893532))

(declare-fun d!1893534 () Bool)

(assert (=> d!1893534 (= (get!22141 lt!2322869) (v!52027 lt!2322869))))

(assert (=> b!6037559 d!1893534))

(declare-fun d!1893536 () Bool)

(assert (=> d!1893536 (= (nullable!6015 lt!2322697) (nullableFct!1985 lt!2322697))))

(declare-fun bs!1489245 () Bool)

(assert (= bs!1489245 d!1893536))

(declare-fun m!6908720 () Bool)

(assert (=> bs!1489245 m!6908720))

(assert (=> b!6037807 d!1893536))

(declare-fun d!1893538 () Bool)

(assert (=> d!1893538 (= (head!12577 s!2326) (h!70685 s!2326))))

(assert (=> b!6037871 d!1893538))

(declare-fun b!6038630 () Bool)

(declare-fun e!3688535 () (Set Context!10808))

(declare-fun call!493755 () (Set Context!10808))

(assert (=> b!6038630 (= e!3688535 call!493755)))

(declare-fun call!493754 () (Set Context!10808))

(declare-fun c!1082494 () Bool)

(declare-fun call!493753 () List!64359)

(declare-fun c!1082497 () Bool)

(declare-fun bm!493746 () Bool)

(declare-fun c!1082498 () Bool)

(assert (=> bm!493746 (= call!493754 (derivationStepZipperDown!1270 (ite c!1082497 (regOne!32553 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))) (ite c!1082498 (regTwo!32552 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))) (ite c!1082494 (regOne!32552 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))) (reg!16349 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292))))))))) (ite (or c!1082497 c!1082498) (ite (or c!1082204 c!1082205) lt!2322733 (Context!10809 call!493580)) (Context!10809 call!493753)) (h!70685 s!2326)))))

(declare-fun b!6038631 () Bool)

(declare-fun e!3688536 () (Set Context!10808))

(declare-fun e!3688538 () (Set Context!10808))

(assert (=> b!6038631 (= e!3688536 e!3688538)))

(assert (=> b!6038631 (= c!1082494 (is-Concat!24865 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))))))

(declare-fun c!1082495 () Bool)

(declare-fun d!1893540 () Bool)

(assert (=> d!1893540 (= c!1082495 (and (is-ElementMatch!16020 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))) (= (c!1082125 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))) (h!70685 s!2326))))))

(declare-fun e!3688537 () (Set Context!10808))

(assert (=> d!1893540 (= (derivationStepZipperDown!1270 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292))))) (ite (or c!1082204 c!1082205) lt!2322733 (Context!10809 call!493580)) (h!70685 s!2326)) e!3688537)))

(declare-fun bm!493747 () Bool)

(declare-fun call!493751 () (Set Context!10808))

(assert (=> bm!493747 (= call!493755 call!493751)))

(declare-fun b!6038632 () Bool)

(declare-fun e!3688533 () Bool)

(assert (=> b!6038632 (= e!3688533 (nullable!6015 (regOne!32552 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292))))))))))

(declare-fun bm!493748 () Bool)

(assert (=> bm!493748 (= call!493751 call!493754)))

(declare-fun c!1082496 () Bool)

(declare-fun b!6038633 () Bool)

(assert (=> b!6038633 (= c!1082496 (is-Star!16020 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))))))

(assert (=> b!6038633 (= e!3688538 e!3688535)))

(declare-fun bm!493749 () Bool)

(declare-fun call!493756 () List!64359)

(assert (=> bm!493749 (= call!493756 ($colon$colon!1905 (exprs!5904 (ite (or c!1082204 c!1082205) lt!2322733 (Context!10809 call!493580))) (ite (or c!1082498 c!1082494) (regTwo!32552 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))) (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292))))))))))

(declare-fun b!6038634 () Bool)

(declare-fun call!493752 () (Set Context!10808))

(assert (=> b!6038634 (= e!3688536 (set.union call!493752 call!493751))))

(declare-fun b!6038635 () Bool)

(assert (=> b!6038635 (= e!3688537 (set.insert (ite (or c!1082204 c!1082205) lt!2322733 (Context!10809 call!493580)) (as set.empty (Set Context!10808))))))

(declare-fun bm!493750 () Bool)

(assert (=> bm!493750 (= call!493752 (derivationStepZipperDown!1270 (ite c!1082497 (regTwo!32553 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))) (regOne!32552 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292))))))) (ite c!1082497 (ite (or c!1082204 c!1082205) lt!2322733 (Context!10809 call!493580)) (Context!10809 call!493756)) (h!70685 s!2326)))))

(declare-fun bm!493751 () Bool)

(assert (=> bm!493751 (= call!493753 call!493756)))

(declare-fun b!6038636 () Bool)

(assert (=> b!6038636 (= e!3688538 call!493755)))

(declare-fun b!6038637 () Bool)

(declare-fun e!3688534 () (Set Context!10808))

(assert (=> b!6038637 (= e!3688537 e!3688534)))

(assert (=> b!6038637 (= c!1082497 (is-Union!16020 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))))))

(declare-fun b!6038638 () Bool)

(assert (=> b!6038638 (= c!1082498 e!3688533)))

(declare-fun res!2514257 () Bool)

(assert (=> b!6038638 (=> (not res!2514257) (not e!3688533))))

(assert (=> b!6038638 (= res!2514257 (is-Concat!24865 (ite c!1082204 (regOne!32553 (regOne!32552 r!7292)) (ite c!1082205 (regTwo!32552 (regOne!32552 r!7292)) (ite c!1082201 (regOne!32552 (regOne!32552 r!7292)) (reg!16349 (regOne!32552 r!7292)))))))))

(assert (=> b!6038638 (= e!3688534 e!3688536)))

(declare-fun b!6038639 () Bool)

(assert (=> b!6038639 (= e!3688534 (set.union call!493754 call!493752))))

(declare-fun b!6038640 () Bool)

(assert (=> b!6038640 (= e!3688535 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893540 c!1082495) b!6038635))

(assert (= (and d!1893540 (not c!1082495)) b!6038637))

(assert (= (and b!6038637 c!1082497) b!6038639))

(assert (= (and b!6038637 (not c!1082497)) b!6038638))

(assert (= (and b!6038638 res!2514257) b!6038632))

(assert (= (and b!6038638 c!1082498) b!6038634))

(assert (= (and b!6038638 (not c!1082498)) b!6038631))

(assert (= (and b!6038631 c!1082494) b!6038636))

(assert (= (and b!6038631 (not c!1082494)) b!6038633))

(assert (= (and b!6038633 c!1082496) b!6038630))

(assert (= (and b!6038633 (not c!1082496)) b!6038640))

(assert (= (or b!6038636 b!6038630) bm!493751))

(assert (= (or b!6038636 b!6038630) bm!493747))

(assert (= (or b!6038634 bm!493751) bm!493749))

(assert (= (or b!6038634 bm!493747) bm!493748))

(assert (= (or b!6038639 b!6038634) bm!493750))

(assert (= (or b!6038639 bm!493748) bm!493746))

(declare-fun m!6908722 () Bool)

(assert (=> bm!493750 m!6908722))

(declare-fun m!6908724 () Bool)

(assert (=> b!6038635 m!6908724))

(declare-fun m!6908726 () Bool)

(assert (=> bm!493746 m!6908726))

(declare-fun m!6908728 () Bool)

(assert (=> bm!493749 m!6908728))

(declare-fun m!6908730 () Bool)

(assert (=> b!6038632 m!6908730))

(assert (=> bm!493573 d!1893540))

(declare-fun d!1893542 () Bool)

(assert (=> d!1893542 (= (isEmpty!36140 (t!377788 (unfocusZipperList!1441 zl!343))) (is-Nil!64235 (t!377788 (unfocusZipperList!1441 zl!343))))))

(assert (=> b!6037742 d!1893542))

(declare-fun bs!1489246 () Bool)

(declare-fun b!6038642 () Bool)

(assert (= bs!1489246 (and b!6038642 d!1893258)))

(declare-fun lambda!329385 () Int)

(assert (=> bs!1489246 (not (= lambda!329385 lambda!329268))))

(declare-fun bs!1489247 () Bool)

(assert (= bs!1489247 (and b!6038642 b!6037326)))

(assert (=> bs!1489247 (not (= lambda!329385 lambda!329243))))

(declare-fun bs!1489248 () Bool)

(assert (= bs!1489248 (and b!6038642 b!6037859)))

(assert (=> bs!1489248 (= (and (= (reg!16349 (regOne!32553 r!7292)) (reg!16349 r!7292)) (= (regOne!32553 r!7292) r!7292)) (= lambda!329385 lambda!329317))))

(declare-fun bs!1489249 () Bool)

(assert (= bs!1489249 (and b!6038642 d!1893262)))

(assert (=> bs!1489249 (not (= lambda!329385 lambda!329272))))

(declare-fun bs!1489250 () Bool)

(assert (= bs!1489250 (and b!6038642 b!6037864)))

(assert (=> bs!1489250 (not (= lambda!329385 lambda!329318))))

(assert (=> bs!1489246 (not (= lambda!329385 lambda!329269))))

(assert (=> bs!1489247 (not (= lambda!329385 lambda!329244))))

(assert (=> b!6038642 true))

(assert (=> b!6038642 true))

(declare-fun bs!1489251 () Bool)

(declare-fun b!6038647 () Bool)

(assert (= bs!1489251 (and b!6038647 b!6037326)))

(declare-fun lambda!329386 () Int)

(assert (=> bs!1489251 (not (= lambda!329386 lambda!329243))))

(declare-fun bs!1489252 () Bool)

(assert (= bs!1489252 (and b!6038647 b!6037859)))

(assert (=> bs!1489252 (not (= lambda!329386 lambda!329317))))

(declare-fun bs!1489253 () Bool)

(assert (= bs!1489253 (and b!6038647 d!1893262)))

(assert (=> bs!1489253 (not (= lambda!329386 lambda!329272))))

(declare-fun bs!1489254 () Bool)

(assert (= bs!1489254 (and b!6038647 b!6037864)))

(assert (=> bs!1489254 (= (and (= (regOne!32552 (regOne!32553 r!7292)) (regOne!32552 r!7292)) (= (regTwo!32552 (regOne!32553 r!7292)) (regTwo!32552 r!7292))) (= lambda!329386 lambda!329318))))

(declare-fun bs!1489255 () Bool)

(assert (= bs!1489255 (and b!6038647 b!6038642)))

(assert (=> bs!1489255 (not (= lambda!329386 lambda!329385))))

(declare-fun bs!1489256 () Bool)

(assert (= bs!1489256 (and b!6038647 d!1893258)))

(assert (=> bs!1489256 (not (= lambda!329386 lambda!329268))))

(assert (=> bs!1489256 (= (and (= (regOne!32552 (regOne!32553 r!7292)) (regOne!32552 r!7292)) (= (regTwo!32552 (regOne!32553 r!7292)) (regTwo!32552 r!7292))) (= lambda!329386 lambda!329269))))

(assert (=> bs!1489251 (= (and (= (regOne!32552 (regOne!32553 r!7292)) (regOne!32552 r!7292)) (= (regTwo!32552 (regOne!32553 r!7292)) (regTwo!32552 r!7292))) (= lambda!329386 lambda!329244))))

(assert (=> b!6038647 true))

(assert (=> b!6038647 true))

(declare-fun b!6038641 () Bool)

(declare-fun e!3688539 () Bool)

(declare-fun e!3688545 () Bool)

(assert (=> b!6038641 (= e!3688539 e!3688545)))

(declare-fun c!1082499 () Bool)

(assert (=> b!6038641 (= c!1082499 (is-Star!16020 (regOne!32553 r!7292)))))

(declare-fun e!3688543 () Bool)

(declare-fun call!493757 () Bool)

(assert (=> b!6038642 (= e!3688543 call!493757)))

(declare-fun bm!493752 () Bool)

(assert (=> bm!493752 (= call!493757 (Exists!3090 (ite c!1082499 lambda!329385 lambda!329386)))))

(declare-fun b!6038643 () Bool)

(declare-fun e!3688540 () Bool)

(assert (=> b!6038643 (= e!3688540 (= s!2326 (Cons!64237 (c!1082125 (regOne!32553 r!7292)) Nil!64237)))))

(declare-fun b!6038644 () Bool)

(declare-fun e!3688544 () Bool)

(assert (=> b!6038644 (= e!3688544 (matchRSpec!3121 (regTwo!32553 (regOne!32553 r!7292)) s!2326))))

(declare-fun d!1893544 () Bool)

(declare-fun c!1082501 () Bool)

(assert (=> d!1893544 (= c!1082501 (is-EmptyExpr!16020 (regOne!32553 r!7292)))))

(declare-fun e!3688542 () Bool)

(assert (=> d!1893544 (= (matchRSpec!3121 (regOne!32553 r!7292) s!2326) e!3688542)))

(declare-fun b!6038645 () Bool)

(declare-fun c!1082500 () Bool)

(assert (=> b!6038645 (= c!1082500 (is-Union!16020 (regOne!32553 r!7292)))))

(assert (=> b!6038645 (= e!3688540 e!3688539)))

(declare-fun b!6038646 () Bool)

(declare-fun e!3688541 () Bool)

(assert (=> b!6038646 (= e!3688542 e!3688541)))

(declare-fun res!2514259 () Bool)

(assert (=> b!6038646 (= res!2514259 (not (is-EmptyLang!16020 (regOne!32553 r!7292))))))

(assert (=> b!6038646 (=> (not res!2514259) (not e!3688541))))

(assert (=> b!6038647 (= e!3688545 call!493757)))

(declare-fun bm!493753 () Bool)

(declare-fun call!493758 () Bool)

(assert (=> bm!493753 (= call!493758 (isEmpty!36143 s!2326))))

(declare-fun b!6038648 () Bool)

(declare-fun res!2514258 () Bool)

(assert (=> b!6038648 (=> res!2514258 e!3688543)))

(assert (=> b!6038648 (= res!2514258 call!493758)))

(assert (=> b!6038648 (= e!3688545 e!3688543)))

(declare-fun b!6038649 () Bool)

(assert (=> b!6038649 (= e!3688539 e!3688544)))

(declare-fun res!2514260 () Bool)

(assert (=> b!6038649 (= res!2514260 (matchRSpec!3121 (regOne!32553 (regOne!32553 r!7292)) s!2326))))

(assert (=> b!6038649 (=> res!2514260 e!3688544)))

(declare-fun b!6038650 () Bool)

(assert (=> b!6038650 (= e!3688542 call!493758)))

(declare-fun b!6038651 () Bool)

(declare-fun c!1082502 () Bool)

(assert (=> b!6038651 (= c!1082502 (is-ElementMatch!16020 (regOne!32553 r!7292)))))

(assert (=> b!6038651 (= e!3688541 e!3688540)))

(assert (= (and d!1893544 c!1082501) b!6038650))

(assert (= (and d!1893544 (not c!1082501)) b!6038646))

(assert (= (and b!6038646 res!2514259) b!6038651))

(assert (= (and b!6038651 c!1082502) b!6038643))

(assert (= (and b!6038651 (not c!1082502)) b!6038645))

(assert (= (and b!6038645 c!1082500) b!6038649))

(assert (= (and b!6038645 (not c!1082500)) b!6038641))

(assert (= (and b!6038649 (not res!2514260)) b!6038644))

(assert (= (and b!6038641 c!1082499) b!6038648))

(assert (= (and b!6038641 (not c!1082499)) b!6038647))

(assert (= (and b!6038648 (not res!2514258)) b!6038642))

(assert (= (or b!6038642 b!6038647) bm!493752))

(assert (= (or b!6038650 b!6038648) bm!493753))

(declare-fun m!6908732 () Bool)

(assert (=> bm!493752 m!6908732))

(declare-fun m!6908734 () Bool)

(assert (=> b!6038644 m!6908734))

(assert (=> bm!493753 m!6907834))

(declare-fun m!6908736 () Bool)

(assert (=> b!6038649 m!6908736))

(assert (=> b!6037866 d!1893544))

(assert (=> d!1893310 d!1893322))

(declare-fun d!1893546 () Bool)

(assert (=> d!1893546 (= (flatMap!1533 lt!2322718 lambda!329245) (dynLambda!25214 lambda!329245 lt!2322698))))

(assert (=> d!1893546 true))

(declare-fun _$13!2844 () Unit!157311)

(assert (=> d!1893546 (= (choose!45124 lt!2322718 lt!2322698 lambda!329245) _$13!2844)))

(declare-fun b_lambda!229081 () Bool)

(assert (=> (not b_lambda!229081) (not d!1893546)))

(declare-fun bs!1489257 () Bool)

(assert (= bs!1489257 d!1893546))

(assert (=> bs!1489257 m!6907670))

(assert (=> bs!1489257 m!6908054))

(assert (=> d!1893310 d!1893546))

(declare-fun bs!1489258 () Bool)

(declare-fun d!1893548 () Bool)

(assert (= bs!1489258 (and d!1893548 d!1893522)))

(declare-fun lambda!329387 () Int)

(assert (=> bs!1489258 (not (= lambda!329387 lambda!329382))))

(declare-fun bs!1489259 () Bool)

(assert (= bs!1489259 (and d!1893548 d!1893334)))

(assert (=> bs!1489259 (= lambda!329387 lambda!329310)))

(declare-fun bs!1489260 () Bool)

(assert (= bs!1489260 (and d!1893548 d!1893280)))

(assert (=> bs!1489260 (= lambda!329387 lambda!329287)))

(declare-fun bs!1489261 () Bool)

(assert (= bs!1489261 (and d!1893548 b!6037654)))

(assert (=> bs!1489261 (not (= lambda!329387 lambda!329296))))

(declare-fun bs!1489262 () Bool)

(assert (= bs!1489262 (and d!1893548 b!6037659)))

(assert (=> bs!1489262 (not (= lambda!329387 lambda!329298))))

(declare-fun bs!1489263 () Bool)

(assert (= bs!1489263 (and d!1893548 b!6038563)))

(assert (=> bs!1489263 (not (= lambda!329387 lambda!329378))))

(declare-fun bs!1489264 () Bool)

(assert (= bs!1489264 (and d!1893548 d!1893332)))

(assert (=> bs!1489264 (= lambda!329387 lambda!329307)))

(declare-fun bs!1489265 () Bool)

(assert (= bs!1489265 (and d!1893548 d!1893344)))

(assert (=> bs!1489265 (= lambda!329387 lambda!329311)))

(declare-fun bs!1489266 () Bool)

(assert (= bs!1489266 (and d!1893548 d!1893506)))

(assert (=> bs!1489266 (not (= lambda!329387 lambda!329381))))

(declare-fun bs!1489267 () Bool)

(assert (= bs!1489267 (and d!1893548 d!1893330)))

(assert (=> bs!1489267 (= lambda!329387 lambda!329304)))

(declare-fun bs!1489268 () Bool)

(assert (= bs!1489268 (and d!1893548 b!6038561)))

(assert (=> bs!1489268 (not (= lambda!329387 lambda!329377))))

(declare-fun bs!1489269 () Bool)

(assert (= bs!1489269 (and d!1893548 b!6038598)))

(assert (=> bs!1489269 (not (= lambda!329387 lambda!329384))))

(declare-fun bs!1489270 () Bool)

(assert (= bs!1489270 (and d!1893548 b!6037661)))

(assert (=> bs!1489270 (not (= lambda!329387 lambda!329299))))

(declare-fun bs!1489271 () Bool)

(assert (= bs!1489271 (and d!1893548 b!6037718)))

(assert (=> bs!1489271 (not (= lambda!329387 lambda!329301))))

(declare-fun bs!1489272 () Bool)

(assert (= bs!1489272 (and d!1893548 b!6038596)))

(assert (=> bs!1489272 (not (= lambda!329387 lambda!329383))))

(declare-fun bs!1489273 () Bool)

(assert (= bs!1489273 (and d!1893548 b!6037716)))

(assert (=> bs!1489273 (not (= lambda!329387 lambda!329300))))

(declare-fun bs!1489274 () Bool)

(assert (= bs!1489274 (and d!1893548 b!6037656)))

(assert (=> bs!1489274 (not (= lambda!329387 lambda!329297))))

(assert (=> d!1893548 (= (inv!83298 setElem!40844) (forall!15128 (exprs!5904 setElem!40844) lambda!329387))))

(declare-fun bs!1489275 () Bool)

(assert (= bs!1489275 d!1893548))

(declare-fun m!6908738 () Bool)

(assert (=> bs!1489275 m!6908738))

(assert (=> setNonEmpty!40844 d!1893548))

(declare-fun d!1893550 () Bool)

(declare-fun c!1082503 () Bool)

(assert (=> d!1893550 (= c!1082503 (isEmpty!36143 (tail!11662 (t!377790 s!2326))))))

(declare-fun e!3688546 () Bool)

(assert (=> d!1893550 (= (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))) e!3688546)))

(declare-fun b!6038652 () Bool)

(assert (=> b!6038652 (= e!3688546 (nullableZipper!1825 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) (head!12577 (t!377790 s!2326)))))))

(declare-fun b!6038653 () Bool)

(assert (=> b!6038653 (= e!3688546 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) (head!12577 (t!377790 s!2326))) (head!12577 (tail!11662 (t!377790 s!2326)))) (tail!11662 (tail!11662 (t!377790 s!2326)))))))

(assert (= (and d!1893550 c!1082503) b!6038652))

(assert (= (and d!1893550 (not c!1082503)) b!6038653))

(assert (=> d!1893550 m!6907876))

(declare-fun m!6908740 () Bool)

(assert (=> d!1893550 m!6908740))

(assert (=> b!6038652 m!6907992))

(declare-fun m!6908742 () Bool)

(assert (=> b!6038652 m!6908742))

(assert (=> b!6038653 m!6907876))

(declare-fun m!6908744 () Bool)

(assert (=> b!6038653 m!6908744))

(assert (=> b!6038653 m!6907992))

(assert (=> b!6038653 m!6908744))

(declare-fun m!6908746 () Bool)

(assert (=> b!6038653 m!6908746))

(assert (=> b!6038653 m!6907876))

(declare-fun m!6908748 () Bool)

(assert (=> b!6038653 m!6908748))

(assert (=> b!6038653 m!6908746))

(assert (=> b!6038653 m!6908748))

(declare-fun m!6908750 () Bool)

(assert (=> b!6038653 m!6908750))

(assert (=> b!6037636 d!1893550))

(declare-fun bs!1489276 () Bool)

(declare-fun d!1893552 () Bool)

(assert (= bs!1489276 (and d!1893552 b!6037340)))

(declare-fun lambda!329388 () Int)

(assert (=> bs!1489276 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329388 lambda!329245))))

(declare-fun bs!1489277 () Bool)

(assert (= bs!1489277 (and d!1893552 d!1893252)))

(assert (=> bs!1489277 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329388 lambda!329263))))

(declare-fun bs!1489278 () Bool)

(assert (= bs!1489278 (and d!1893552 d!1893288)))

(assert (=> bs!1489278 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329388 lambda!329291))))

(declare-fun bs!1489279 () Bool)

(assert (= bs!1489279 (and d!1893552 d!1893350)))

(assert (=> bs!1489279 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329388 lambda!329312))))

(assert (=> d!1893552 true))

(assert (=> d!1893552 (= (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) (head!12577 (t!377790 s!2326))) (flatMap!1533 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) lambda!329388))))

(declare-fun bs!1489280 () Bool)

(assert (= bs!1489280 d!1893552))

(assert (=> bs!1489280 m!6907582))

(declare-fun m!6908752 () Bool)

(assert (=> bs!1489280 m!6908752))

(assert (=> b!6037636 d!1893552))

(declare-fun d!1893554 () Bool)

(assert (=> d!1893554 (= (head!12577 (t!377790 s!2326)) (h!70685 (t!377790 s!2326)))))

(assert (=> b!6037636 d!1893554))

(declare-fun d!1893556 () Bool)

(assert (=> d!1893556 (= (tail!11662 (t!377790 s!2326)) (t!377790 (t!377790 s!2326)))))

(assert (=> b!6037636 d!1893556))

(declare-fun c!1082505 () Bool)

(declare-fun c!1082504 () Bool)

(declare-fun call!493759 () Bool)

(declare-fun bm!493754 () Bool)

(assert (=> bm!493754 (= call!493759 (validRegex!7756 (ite c!1082505 (reg!16349 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))) (ite c!1082504 (regTwo!32553 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))) (regTwo!32552 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292)))))))))

(declare-fun b!6038654 () Bool)

(declare-fun e!3688550 () Bool)

(declare-fun call!493761 () Bool)

(assert (=> b!6038654 (= e!3688550 call!493761)))

(declare-fun call!493760 () Bool)

(declare-fun bm!493755 () Bool)

(assert (=> bm!493755 (= call!493760 (validRegex!7756 (ite c!1082504 (regOne!32553 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))) (regOne!32552 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))))))))

(declare-fun b!6038655 () Bool)

(declare-fun e!3688551 () Bool)

(declare-fun e!3688549 () Bool)

(assert (=> b!6038655 (= e!3688551 e!3688549)))

(declare-fun res!2514264 () Bool)

(assert (=> b!6038655 (= res!2514264 (not (nullable!6015 (reg!16349 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))))))))

(assert (=> b!6038655 (=> (not res!2514264) (not e!3688549))))

(declare-fun b!6038656 () Bool)

(declare-fun e!3688553 () Bool)

(assert (=> b!6038656 (= e!3688551 e!3688553)))

(assert (=> b!6038656 (= c!1082504 (is-Union!16020 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))))))

(declare-fun d!1893558 () Bool)

(declare-fun res!2514265 () Bool)

(declare-fun e!3688547 () Bool)

(assert (=> d!1893558 (=> res!2514265 e!3688547)))

(assert (=> d!1893558 (= res!2514265 (is-ElementMatch!16020 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))))))

(assert (=> d!1893558 (= (validRegex!7756 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))) e!3688547)))

(declare-fun bm!493756 () Bool)

(assert (=> bm!493756 (= call!493761 call!493759)))

(declare-fun b!6038657 () Bool)

(assert (=> b!6038657 (= e!3688547 e!3688551)))

(assert (=> b!6038657 (= c!1082505 (is-Star!16020 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292))))))

(declare-fun b!6038658 () Bool)

(assert (=> b!6038658 (= e!3688549 call!493759)))

(declare-fun b!6038659 () Bool)

(declare-fun e!3688552 () Bool)

(assert (=> b!6038659 (= e!3688552 e!3688550)))

(declare-fun res!2514263 () Bool)

(assert (=> b!6038659 (=> (not res!2514263) (not e!3688550))))

(assert (=> b!6038659 (= res!2514263 call!493760)))

(declare-fun b!6038660 () Bool)

(declare-fun res!2514261 () Bool)

(declare-fun e!3688548 () Bool)

(assert (=> b!6038660 (=> (not res!2514261) (not e!3688548))))

(assert (=> b!6038660 (= res!2514261 call!493760)))

(assert (=> b!6038660 (= e!3688553 e!3688548)))

(declare-fun b!6038661 () Bool)

(declare-fun res!2514262 () Bool)

(assert (=> b!6038661 (=> res!2514262 e!3688552)))

(assert (=> b!6038661 (= res!2514262 (not (is-Concat!24865 (ite c!1082177 (regOne!32553 r!7292) (regOne!32552 r!7292)))))))

(assert (=> b!6038661 (= e!3688553 e!3688552)))

(declare-fun b!6038662 () Bool)

(assert (=> b!6038662 (= e!3688548 call!493761)))

(assert (= (and d!1893558 (not res!2514265)) b!6038657))

(assert (= (and b!6038657 c!1082505) b!6038655))

(assert (= (and b!6038657 (not c!1082505)) b!6038656))

(assert (= (and b!6038655 res!2514264) b!6038658))

(assert (= (and b!6038656 c!1082504) b!6038660))

(assert (= (and b!6038656 (not c!1082504)) b!6038661))

(assert (= (and b!6038660 res!2514261) b!6038662))

(assert (= (and b!6038661 (not res!2514262)) b!6038659))

(assert (= (and b!6038659 res!2514263) b!6038654))

(assert (= (or b!6038662 b!6038654) bm!493756))

(assert (= (or b!6038660 b!6038659) bm!493755))

(assert (= (or b!6038658 bm!493756) bm!493754))

(declare-fun m!6908754 () Bool)

(assert (=> bm!493754 m!6908754))

(declare-fun m!6908756 () Bool)

(assert (=> bm!493755 m!6908756))

(declare-fun m!6908758 () Bool)

(assert (=> b!6038655 m!6908758))

(assert (=> bm!493558 d!1893558))

(declare-fun bs!1489281 () Bool)

(declare-fun d!1893560 () Bool)

(assert (= bs!1489281 (and d!1893560 b!6037607)))

(declare-fun lambda!329391 () Int)

(assert (=> bs!1489281 (not (= lambda!329391 lambda!329290))))

(declare-fun bs!1489282 () Bool)

(assert (= bs!1489282 (and d!1893560 b!6037597)))

(assert (=> bs!1489282 (not (= lambda!329391 lambda!329280))))

(declare-fun bs!1489283 () Bool)

(assert (= bs!1489283 (and d!1893560 b!6037605)))

(assert (=> bs!1489283 (not (= lambda!329391 lambda!329289))))

(declare-fun bs!1489284 () Bool)

(assert (= bs!1489284 (and d!1893560 b!6037602)))

(assert (=> bs!1489284 (not (= lambda!329391 lambda!329283))))

(declare-fun bs!1489285 () Bool)

(assert (= bs!1489285 (and d!1893560 b!6037599)))

(assert (=> bs!1489285 (not (= lambda!329391 lambda!329281))))

(declare-fun bs!1489286 () Bool)

(assert (= bs!1489286 (and d!1893560 b!6037604)))

(assert (=> bs!1489286 (not (= lambda!329391 lambda!329284))))

(declare-fun exists!2385 ((Set Context!10808) Int) Bool)

(assert (=> d!1893560 (= (nullableZipper!1825 lt!2322706) (exists!2385 lt!2322706 lambda!329391))))

(declare-fun bs!1489287 () Bool)

(assert (= bs!1489287 d!1893560))

(declare-fun m!6908760 () Bool)

(assert (=> bs!1489287 m!6908760))

(assert (=> b!6037719 d!1893560))

(declare-fun b!6038663 () Bool)

(declare-fun e!3688554 () (Set Context!10808))

(declare-fun e!3688556 () (Set Context!10808))

(assert (=> b!6038663 (= e!3688554 e!3688556)))

(declare-fun c!1082508 () Bool)

(assert (=> b!6038663 (= c!1082508 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))))))

(declare-fun b!6038664 () Bool)

(declare-fun e!3688555 () Bool)

(assert (=> b!6038664 (= e!3688555 (nullable!6015 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))))))))

(declare-fun bm!493757 () Bool)

(declare-fun call!493762 () (Set Context!10808))

(assert (=> bm!493757 (= call!493762 (derivationStepZipperDown!1270 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))) (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))))) (h!70685 s!2326)))))

(declare-fun d!1893562 () Bool)

(declare-fun c!1082509 () Bool)

(assert (=> d!1893562 (= c!1082509 e!3688555)))

(declare-fun res!2514266 () Bool)

(assert (=> d!1893562 (=> (not res!2514266) (not e!3688555))))

(assert (=> d!1893562 (= res!2514266 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733))))))))

(assert (=> d!1893562 (= (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 lt!2322733))) (h!70685 s!2326)) e!3688554)))

(declare-fun b!6038665 () Bool)

(assert (=> b!6038665 (= e!3688554 (set.union call!493762 (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))))) (h!70685 s!2326))))))

(declare-fun b!6038666 () Bool)

(assert (=> b!6038666 (= e!3688556 (as set.empty (Set Context!10808)))))

(declare-fun b!6038667 () Bool)

(assert (=> b!6038667 (= e!3688556 call!493762)))

(assert (= (and d!1893562 res!2514266) b!6038664))

(assert (= (and d!1893562 c!1082509) b!6038665))

(assert (= (and d!1893562 (not c!1082509)) b!6038663))

(assert (= (and b!6038663 c!1082508) b!6038667))

(assert (= (and b!6038663 (not c!1082508)) b!6038666))

(assert (= (or b!6038665 b!6038667) bm!493757))

(declare-fun m!6908762 () Bool)

(assert (=> b!6038664 m!6908762))

(declare-fun m!6908764 () Bool)

(assert (=> bm!493757 m!6908764))

(declare-fun m!6908766 () Bool)

(assert (=> b!6038665 m!6908766))

(assert (=> b!6037664 d!1893562))

(declare-fun b!6038668 () Bool)

(declare-fun e!3688559 () (Set Context!10808))

(declare-fun call!493767 () (Set Context!10808))

(assert (=> b!6038668 (= e!3688559 call!493767)))

(declare-fun c!1082510 () Bool)

(declare-fun c!1082514 () Bool)

(declare-fun call!493766 () (Set Context!10808))

(declare-fun call!493765 () List!64359)

(declare-fun bm!493758 () Bool)

(declare-fun c!1082513 () Bool)

(assert (=> bm!493758 (= call!493766 (derivationStepZipperDown!1270 (ite c!1082513 (regOne!32553 (h!70683 (exprs!5904 lt!2322710))) (ite c!1082514 (regTwo!32552 (h!70683 (exprs!5904 lt!2322710))) (ite c!1082510 (regOne!32552 (h!70683 (exprs!5904 lt!2322710))) (reg!16349 (h!70683 (exprs!5904 lt!2322710)))))) (ite (or c!1082513 c!1082514) (Context!10809 (t!377788 (exprs!5904 lt!2322710))) (Context!10809 call!493765)) (h!70685 s!2326)))))

(declare-fun b!6038669 () Bool)

(declare-fun e!3688560 () (Set Context!10808))

(declare-fun e!3688562 () (Set Context!10808))

(assert (=> b!6038669 (= e!3688560 e!3688562)))

(assert (=> b!6038669 (= c!1082510 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun d!1893564 () Bool)

(declare-fun c!1082511 () Bool)

(assert (=> d!1893564 (= c!1082511 (and (is-ElementMatch!16020 (h!70683 (exprs!5904 lt!2322710))) (= (c!1082125 (h!70683 (exprs!5904 lt!2322710))) (h!70685 s!2326))))))

(declare-fun e!3688561 () (Set Context!10808))

(assert (=> d!1893564 (= (derivationStepZipperDown!1270 (h!70683 (exprs!5904 lt!2322710)) (Context!10809 (t!377788 (exprs!5904 lt!2322710))) (h!70685 s!2326)) e!3688561)))

(declare-fun bm!493759 () Bool)

(declare-fun call!493763 () (Set Context!10808))

(assert (=> bm!493759 (= call!493767 call!493763)))

(declare-fun b!6038670 () Bool)

(declare-fun e!3688557 () Bool)

(assert (=> b!6038670 (= e!3688557 (nullable!6015 (regOne!32552 (h!70683 (exprs!5904 lt!2322710)))))))

(declare-fun bm!493760 () Bool)

(assert (=> bm!493760 (= call!493763 call!493766)))

(declare-fun b!6038671 () Bool)

(declare-fun c!1082512 () Bool)

(assert (=> b!6038671 (= c!1082512 (is-Star!16020 (h!70683 (exprs!5904 lt!2322710))))))

(assert (=> b!6038671 (= e!3688562 e!3688559)))

(declare-fun bm!493761 () Bool)

(declare-fun call!493768 () List!64359)

(assert (=> bm!493761 (= call!493768 ($colon$colon!1905 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))) (ite (or c!1082514 c!1082510) (regTwo!32552 (h!70683 (exprs!5904 lt!2322710))) (h!70683 (exprs!5904 lt!2322710)))))))

(declare-fun b!6038672 () Bool)

(declare-fun call!493764 () (Set Context!10808))

(assert (=> b!6038672 (= e!3688560 (set.union call!493764 call!493763))))

(declare-fun b!6038673 () Bool)

(assert (=> b!6038673 (= e!3688561 (set.insert (Context!10809 (t!377788 (exprs!5904 lt!2322710))) (as set.empty (Set Context!10808))))))

(declare-fun bm!493762 () Bool)

(assert (=> bm!493762 (= call!493764 (derivationStepZipperDown!1270 (ite c!1082513 (regTwo!32553 (h!70683 (exprs!5904 lt!2322710))) (regOne!32552 (h!70683 (exprs!5904 lt!2322710)))) (ite c!1082513 (Context!10809 (t!377788 (exprs!5904 lt!2322710))) (Context!10809 call!493768)) (h!70685 s!2326)))))

(declare-fun bm!493763 () Bool)

(assert (=> bm!493763 (= call!493765 call!493768)))

(declare-fun b!6038674 () Bool)

(assert (=> b!6038674 (= e!3688562 call!493767)))

(declare-fun b!6038675 () Bool)

(declare-fun e!3688558 () (Set Context!10808))

(assert (=> b!6038675 (= e!3688561 e!3688558)))

(assert (=> b!6038675 (= c!1082513 (is-Union!16020 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun b!6038676 () Bool)

(assert (=> b!6038676 (= c!1082514 e!3688557)))

(declare-fun res!2514267 () Bool)

(assert (=> b!6038676 (=> (not res!2514267) (not e!3688557))))

(assert (=> b!6038676 (= res!2514267 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322710))))))

(assert (=> b!6038676 (= e!3688558 e!3688560)))

(declare-fun b!6038677 () Bool)

(assert (=> b!6038677 (= e!3688558 (set.union call!493766 call!493764))))

(declare-fun b!6038678 () Bool)

(assert (=> b!6038678 (= e!3688559 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893564 c!1082511) b!6038673))

(assert (= (and d!1893564 (not c!1082511)) b!6038675))

(assert (= (and b!6038675 c!1082513) b!6038677))

(assert (= (and b!6038675 (not c!1082513)) b!6038676))

(assert (= (and b!6038676 res!2514267) b!6038670))

(assert (= (and b!6038676 c!1082514) b!6038672))

(assert (= (and b!6038676 (not c!1082514)) b!6038669))

(assert (= (and b!6038669 c!1082510) b!6038674))

(assert (= (and b!6038669 (not c!1082510)) b!6038671))

(assert (= (and b!6038671 c!1082512) b!6038668))

(assert (= (and b!6038671 (not c!1082512)) b!6038678))

(assert (= (or b!6038674 b!6038668) bm!493763))

(assert (= (or b!6038674 b!6038668) bm!493759))

(assert (= (or b!6038672 bm!493763) bm!493761))

(assert (= (or b!6038672 bm!493759) bm!493760))

(assert (= (or b!6038677 b!6038672) bm!493762))

(assert (= (or b!6038677 bm!493760) bm!493758))

(declare-fun m!6908768 () Bool)

(assert (=> bm!493762 m!6908768))

(declare-fun m!6908770 () Bool)

(assert (=> b!6038673 m!6908770))

(declare-fun m!6908772 () Bool)

(assert (=> bm!493758 m!6908772))

(declare-fun m!6908774 () Bool)

(assert (=> bm!493761 m!6908774))

(declare-fun m!6908776 () Bool)

(assert (=> b!6038670 m!6908776))

(assert (=> bm!493596 d!1893564))

(assert (=> b!6037515 d!1893538))

(assert (=> b!6037875 d!1893512))

(assert (=> b!6037875 d!1893514))

(declare-fun d!1893566 () Bool)

(declare-fun res!2514268 () Bool)

(declare-fun e!3688563 () Bool)

(assert (=> d!1893566 (=> res!2514268 e!3688563)))

(assert (=> d!1893566 (= res!2514268 (is-Nil!64235 (exprs!5904 (h!70684 zl!343))))))

(assert (=> d!1893566 (= (forall!15128 (exprs!5904 (h!70684 zl!343)) lambda!329287) e!3688563)))

(declare-fun b!6038679 () Bool)

(declare-fun e!3688564 () Bool)

(assert (=> b!6038679 (= e!3688563 e!3688564)))

(declare-fun res!2514269 () Bool)

(assert (=> b!6038679 (=> (not res!2514269) (not e!3688564))))

(assert (=> b!6038679 (= res!2514269 (dynLambda!25216 lambda!329287 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun b!6038680 () Bool)

(assert (=> b!6038680 (= e!3688564 (forall!15128 (t!377788 (exprs!5904 (h!70684 zl!343))) lambda!329287))))

(assert (= (and d!1893566 (not res!2514268)) b!6038679))

(assert (= (and b!6038679 res!2514269) b!6038680))

(declare-fun b_lambda!229083 () Bool)

(assert (=> (not b_lambda!229083) (not b!6038679)))

(declare-fun m!6908778 () Bool)

(assert (=> b!6038679 m!6908778))

(declare-fun m!6908780 () Bool)

(assert (=> b!6038680 m!6908780))

(assert (=> d!1893280 d!1893566))

(assert (=> b!6037802 d!1893512))

(assert (=> b!6037802 d!1893514))

(declare-fun d!1893568 () Bool)

(assert (=> d!1893568 (= (isEmpty!36143 s!2326) (is-Nil!64237 s!2326))))

(assert (=> d!1893290 d!1893568))

(declare-fun d!1893570 () Bool)

(declare-fun c!1082515 () Bool)

(assert (=> d!1893570 (= c!1082515 (isEmpty!36143 (tail!11662 (t!377790 s!2326))))))

(declare-fun e!3688565 () Bool)

(assert (=> d!1893570 (= (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))) e!3688565)))

(declare-fun b!6038681 () Bool)

(assert (=> b!6038681 (= e!3688565 (nullableZipper!1825 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) (head!12577 (t!377790 s!2326)))))))

(declare-fun b!6038682 () Bool)

(assert (=> b!6038682 (= e!3688565 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) (head!12577 (t!377790 s!2326))) (head!12577 (tail!11662 (t!377790 s!2326)))) (tail!11662 (tail!11662 (t!377790 s!2326)))))))

(assert (= (and d!1893570 c!1082515) b!6038681))

(assert (= (and d!1893570 (not c!1082515)) b!6038682))

(assert (=> d!1893570 m!6907876))

(assert (=> d!1893570 m!6908740))

(assert (=> b!6038681 m!6907874))

(declare-fun m!6908782 () Bool)

(assert (=> b!6038681 m!6908782))

(assert (=> b!6038682 m!6907876))

(assert (=> b!6038682 m!6908744))

(assert (=> b!6038682 m!6907874))

(assert (=> b!6038682 m!6908744))

(declare-fun m!6908784 () Bool)

(assert (=> b!6038682 m!6908784))

(assert (=> b!6038682 m!6907876))

(assert (=> b!6038682 m!6908748))

(assert (=> b!6038682 m!6908784))

(assert (=> b!6038682 m!6908748))

(declare-fun m!6908786 () Bool)

(assert (=> b!6038682 m!6908786))

(assert (=> b!6037531 d!1893570))

(declare-fun bs!1489288 () Bool)

(declare-fun d!1893572 () Bool)

(assert (= bs!1489288 (and d!1893572 d!1893552)))

(declare-fun lambda!329392 () Int)

(assert (=> bs!1489288 (= lambda!329392 lambda!329388)))

(declare-fun bs!1489289 () Bool)

(assert (= bs!1489289 (and d!1893572 d!1893288)))

(assert (=> bs!1489289 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329392 lambda!329291))))

(declare-fun bs!1489290 () Bool)

(assert (= bs!1489290 (and d!1893572 b!6037340)))

(assert (=> bs!1489290 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329392 lambda!329245))))

(declare-fun bs!1489291 () Bool)

(assert (= bs!1489291 (and d!1893572 d!1893350)))

(assert (=> bs!1489291 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329392 lambda!329312))))

(declare-fun bs!1489292 () Bool)

(assert (= bs!1489292 (and d!1893572 d!1893252)))

(assert (=> bs!1489292 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329392 lambda!329263))))

(assert (=> d!1893572 true))

(assert (=> d!1893572 (= (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) (head!12577 (t!377790 s!2326))) (flatMap!1533 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) lambda!329392))))

(declare-fun bs!1489293 () Bool)

(assert (= bs!1489293 d!1893572))

(assert (=> bs!1489293 m!6907690))

(declare-fun m!6908788 () Bool)

(assert (=> bs!1489293 m!6908788))

(assert (=> b!6037531 d!1893572))

(assert (=> b!6037531 d!1893554))

(assert (=> b!6037531 d!1893556))

(declare-fun d!1893574 () Bool)

(declare-fun res!2514274 () Bool)

(declare-fun e!3688570 () Bool)

(assert (=> d!1893574 (=> res!2514274 e!3688570)))

(assert (=> d!1893574 (= res!2514274 (is-Nil!64236 (t!377789 (Cons!64236 lt!2322710 Nil!64236))))))

(assert (=> d!1893574 (= (forall!15127 (t!377789 (Cons!64236 lt!2322710 Nil!64236)) lambda!329280) e!3688570)))

(declare-fun b!6038687 () Bool)

(declare-fun e!3688571 () Bool)

(assert (=> b!6038687 (= e!3688570 e!3688571)))

(declare-fun res!2514275 () Bool)

(assert (=> b!6038687 (=> (not res!2514275) (not e!3688571))))

(declare-fun dynLambda!25217 (Int Context!10808) Bool)

(assert (=> b!6038687 (= res!2514275 (dynLambda!25217 lambda!329280 (h!70684 (t!377789 (Cons!64236 lt!2322710 Nil!64236)))))))

(declare-fun b!6038688 () Bool)

(assert (=> b!6038688 (= e!3688571 (forall!15127 (t!377789 (t!377789 (Cons!64236 lt!2322710 Nil!64236))) lambda!329280))))

(assert (= (and d!1893574 (not res!2514274)) b!6038687))

(assert (= (and b!6038687 res!2514275) b!6038688))

(declare-fun b_lambda!229085 () Bool)

(assert (=> (not b_lambda!229085) (not b!6038687)))

(declare-fun m!6908790 () Bool)

(assert (=> b!6038687 m!6908790))

(declare-fun m!6908792 () Bool)

(assert (=> b!6038688 m!6908792))

(assert (=> b!6037597 d!1893574))

(declare-fun bs!1489294 () Bool)

(declare-fun b!6038689 () Bool)

(assert (= bs!1489294 (and b!6038689 b!6037597)))

(declare-fun lambda!329393 () Int)

(assert (=> bs!1489294 (= lambda!329393 lambda!329279)))

(declare-fun bs!1489295 () Bool)

(assert (= bs!1489295 (and b!6038689 b!6037602)))

(assert (=> bs!1489295 (= lambda!329393 lambda!329282)))

(declare-fun bs!1489296 () Bool)

(assert (= bs!1489296 (and b!6038689 b!6037605)))

(assert (=> bs!1489296 (= lambda!329393 lambda!329288)))

(declare-fun bs!1489297 () Bool)

(assert (= bs!1489297 (and b!6038689 b!6037607)))

(declare-fun lt!2323061 () Int)

(declare-fun lambda!329394 () Int)

(assert (=> bs!1489297 (= (= lt!2323061 lt!2322897) (= lambda!329394 lambda!329290))))

(assert (=> bs!1489294 (= (= lt!2323061 lt!2322890) (= lambda!329394 lambda!329280))))

(assert (=> bs!1489296 (= (= lt!2323061 lt!2322898) (= lambda!329394 lambda!329289))))

(assert (=> bs!1489295 (= (= lt!2323061 lt!2322894) (= lambda!329394 lambda!329283))))

(declare-fun bs!1489298 () Bool)

(assert (= bs!1489298 (and b!6038689 b!6037599)))

(assert (=> bs!1489298 (= (= lt!2323061 lt!2322889) (= lambda!329394 lambda!329281))))

(declare-fun bs!1489299 () Bool)

(assert (= bs!1489299 (and b!6038689 b!6037604)))

(assert (=> bs!1489299 (= (= lt!2323061 lt!2322893) (= lambda!329394 lambda!329284))))

(declare-fun bs!1489300 () Bool)

(assert (= bs!1489300 (and b!6038689 d!1893560)))

(assert (=> bs!1489300 (not (= lambda!329394 lambda!329391))))

(assert (=> b!6038689 true))

(declare-fun bs!1489301 () Bool)

(declare-fun b!6038691 () Bool)

(assert (= bs!1489301 (and b!6038691 b!6037607)))

(declare-fun lambda!329395 () Int)

(declare-fun lt!2323060 () Int)

(assert (=> bs!1489301 (= (= lt!2323060 lt!2322897) (= lambda!329395 lambda!329290))))

(declare-fun bs!1489302 () Bool)

(assert (= bs!1489302 (and b!6038691 b!6037597)))

(assert (=> bs!1489302 (= (= lt!2323060 lt!2322890) (= lambda!329395 lambda!329280))))

(declare-fun bs!1489303 () Bool)

(assert (= bs!1489303 (and b!6038691 b!6037605)))

(assert (=> bs!1489303 (= (= lt!2323060 lt!2322898) (= lambda!329395 lambda!329289))))

(declare-fun bs!1489304 () Bool)

(assert (= bs!1489304 (and b!6038691 b!6037602)))

(assert (=> bs!1489304 (= (= lt!2323060 lt!2322894) (= lambda!329395 lambda!329283))))

(declare-fun bs!1489305 () Bool)

(assert (= bs!1489305 (and b!6038691 b!6037599)))

(assert (=> bs!1489305 (= (= lt!2323060 lt!2322889) (= lambda!329395 lambda!329281))))

(declare-fun bs!1489306 () Bool)

(assert (= bs!1489306 (and b!6038691 b!6037604)))

(assert (=> bs!1489306 (= (= lt!2323060 lt!2322893) (= lambda!329395 lambda!329284))))

(declare-fun bs!1489307 () Bool)

(assert (= bs!1489307 (and b!6038691 b!6038689)))

(assert (=> bs!1489307 (= (= lt!2323060 lt!2323061) (= lambda!329395 lambda!329394))))

(declare-fun bs!1489308 () Bool)

(assert (= bs!1489308 (and b!6038691 d!1893560)))

(assert (=> bs!1489308 (not (= lambda!329395 lambda!329391))))

(assert (=> b!6038691 true))

(declare-fun d!1893576 () Bool)

(declare-fun e!3688573 () Bool)

(assert (=> d!1893576 e!3688573))

(declare-fun res!2514276 () Bool)

(assert (=> d!1893576 (=> (not res!2514276) (not e!3688573))))

(assert (=> d!1893576 (= res!2514276 (>= lt!2323060 0))))

(declare-fun e!3688572 () Int)

(assert (=> d!1893576 (= lt!2323060 e!3688572)))

(declare-fun c!1082516 () Bool)

(assert (=> d!1893576 (= c!1082516 (is-Cons!64236 (t!377789 (Cons!64236 lt!2322710 Nil!64236))))))

(assert (=> d!1893576 (= (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236))) lt!2323060)))

(assert (=> b!6038689 (= e!3688572 lt!2323061)))

(assert (=> b!6038689 (= lt!2323061 (maxBigInt!0 (contextDepth!168 (h!70684 (t!377789 (Cons!64236 lt!2322710 Nil!64236)))) (zipperDepth!269 (t!377789 (t!377789 (Cons!64236 lt!2322710 Nil!64236))))))))

(declare-fun lt!2323062 () Unit!157311)

(assert (=> b!6038689 (= lt!2323062 (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 (t!377789 (Cons!64236 lt!2322710 Nil!64236))) lt!2323061 (zipperDepth!269 (t!377789 (t!377789 (Cons!64236 lt!2322710 Nil!64236)))) lambda!329393))))

(assert (=> b!6038689 (forall!15127 (t!377789 (t!377789 (Cons!64236 lt!2322710 Nil!64236))) lambda!329394)))

(declare-fun lt!2323059 () Unit!157311)

(assert (=> b!6038689 (= lt!2323059 lt!2323062)))

(declare-fun b!6038690 () Bool)

(assert (=> b!6038690 (= e!3688572 0)))

(assert (=> b!6038691 (= e!3688573 (forall!15127 (t!377789 (Cons!64236 lt!2322710 Nil!64236)) lambda!329395))))

(assert (= (and d!1893576 c!1082516) b!6038689))

(assert (= (and d!1893576 (not c!1082516)) b!6038690))

(assert (= (and d!1893576 res!2514276) b!6038691))

(declare-fun m!6908794 () Bool)

(assert (=> b!6038689 m!6908794))

(declare-fun m!6908796 () Bool)

(assert (=> b!6038689 m!6908796))

(declare-fun m!6908798 () Bool)

(assert (=> b!6038689 m!6908798))

(assert (=> b!6038689 m!6908796))

(declare-fun m!6908800 () Bool)

(assert (=> b!6038689 m!6908800))

(assert (=> b!6038689 m!6908796))

(declare-fun m!6908802 () Bool)

(assert (=> b!6038689 m!6908802))

(assert (=> b!6038689 m!6908798))

(declare-fun m!6908804 () Bool)

(assert (=> b!6038691 m!6908804))

(assert (=> b!6037597 d!1893576))

(declare-fun bs!1489309 () Bool)

(declare-fun b!6038692 () Bool)

(assert (= bs!1489309 (and b!6038692 d!1893522)))

(declare-fun lambda!329396 () Int)

(declare-fun lt!2323065 () Int)

(assert (=> bs!1489309 (= (= lt!2323065 lt!2322923) (= lambda!329396 lambda!329382))))

(declare-fun bs!1489310 () Bool)

(assert (= bs!1489310 (and b!6038692 d!1893334)))

(assert (=> bs!1489310 (not (= lambda!329396 lambda!329310))))

(declare-fun bs!1489311 () Bool)

(assert (= bs!1489311 (and b!6038692 d!1893280)))

(assert (=> bs!1489311 (not (= lambda!329396 lambda!329287))))

(declare-fun bs!1489312 () Bool)

(assert (= bs!1489312 (and b!6038692 b!6037654)))

(assert (=> bs!1489312 (= (= lt!2323065 lt!2322913) (= lambda!329396 lambda!329296))))

(declare-fun bs!1489313 () Bool)

(assert (= bs!1489313 (and b!6038692 b!6037659)))

(assert (=> bs!1489313 (= (= lt!2323065 lt!2322917) (= lambda!329396 lambda!329298))))

(declare-fun bs!1489314 () Bool)

(assert (= bs!1489314 (and b!6038692 b!6038563)))

(assert (=> bs!1489314 (= (= lt!2323065 lt!2323042) (= lambda!329396 lambda!329378))))

(declare-fun bs!1489315 () Bool)

(assert (= bs!1489315 (and b!6038692 d!1893332)))

(assert (=> bs!1489315 (not (= lambda!329396 lambda!329307))))

(declare-fun bs!1489316 () Bool)

(assert (= bs!1489316 (and b!6038692 d!1893344)))

(assert (=> bs!1489316 (not (= lambda!329396 lambda!329311))))

(declare-fun bs!1489317 () Bool)

(assert (= bs!1489317 (and b!6038692 d!1893548)))

(assert (=> bs!1489317 (not (= lambda!329396 lambda!329387))))

(declare-fun bs!1489318 () Bool)

(assert (= bs!1489318 (and b!6038692 d!1893506)))

(assert (=> bs!1489318 (= (= lt!2323065 lt!2322917) (= lambda!329396 lambda!329381))))

(declare-fun bs!1489319 () Bool)

(assert (= bs!1489319 (and b!6038692 d!1893330)))

(assert (=> bs!1489319 (not (= lambda!329396 lambda!329304))))

(declare-fun bs!1489320 () Bool)

(assert (= bs!1489320 (and b!6038692 b!6038561)))

(assert (=> bs!1489320 (= (= lt!2323065 lt!2323044) (= lambda!329396 lambda!329377))))

(declare-fun bs!1489321 () Bool)

(assert (= bs!1489321 (and b!6038692 b!6038598)))

(assert (=> bs!1489321 (= (= lt!2323065 lt!2323051) (= lambda!329396 lambda!329384))))

(declare-fun bs!1489322 () Bool)

(assert (= bs!1489322 (and b!6038692 b!6037661)))

(assert (=> bs!1489322 (= (= lt!2323065 lt!2322915) (= lambda!329396 lambda!329299))))

(declare-fun bs!1489323 () Bool)

(assert (= bs!1489323 (and b!6038692 b!6037718)))

(assert (=> bs!1489323 (= (= lt!2323065 lt!2322921) (= lambda!329396 lambda!329301))))

(declare-fun bs!1489324 () Bool)

(assert (= bs!1489324 (and b!6038692 b!6038596)))

(assert (=> bs!1489324 (= (= lt!2323065 lt!2323053) (= lambda!329396 lambda!329383))))

(declare-fun bs!1489325 () Bool)

(assert (= bs!1489325 (and b!6038692 b!6037716)))

(assert (=> bs!1489325 (= (= lt!2323065 lt!2322923) (= lambda!329396 lambda!329300))))

(declare-fun bs!1489326 () Bool)

(assert (= bs!1489326 (and b!6038692 b!6037656)))

(assert (=> bs!1489326 (= (= lt!2323065 lt!2322911) (= lambda!329396 lambda!329297))))

(assert (=> b!6038692 true))

(declare-fun bs!1489327 () Bool)

(declare-fun b!6038694 () Bool)

(assert (= bs!1489327 (and b!6038694 d!1893522)))

(declare-fun lambda!329397 () Int)

(declare-fun lt!2323063 () Int)

(assert (=> bs!1489327 (= (= lt!2323063 lt!2322923) (= lambda!329397 lambda!329382))))

(declare-fun bs!1489328 () Bool)

(assert (= bs!1489328 (and b!6038694 d!1893334)))

(assert (=> bs!1489328 (not (= lambda!329397 lambda!329310))))

(declare-fun bs!1489329 () Bool)

(assert (= bs!1489329 (and b!6038694 d!1893280)))

(assert (=> bs!1489329 (not (= lambda!329397 lambda!329287))))

(declare-fun bs!1489330 () Bool)

(assert (= bs!1489330 (and b!6038694 b!6037654)))

(assert (=> bs!1489330 (= (= lt!2323063 lt!2322913) (= lambda!329397 lambda!329296))))

(declare-fun bs!1489331 () Bool)

(assert (= bs!1489331 (and b!6038694 b!6037659)))

(assert (=> bs!1489331 (= (= lt!2323063 lt!2322917) (= lambda!329397 lambda!329298))))

(declare-fun bs!1489332 () Bool)

(assert (= bs!1489332 (and b!6038694 b!6038563)))

(assert (=> bs!1489332 (= (= lt!2323063 lt!2323042) (= lambda!329397 lambda!329378))))

(declare-fun bs!1489333 () Bool)

(assert (= bs!1489333 (and b!6038694 d!1893332)))

(assert (=> bs!1489333 (not (= lambda!329397 lambda!329307))))

(declare-fun bs!1489334 () Bool)

(assert (= bs!1489334 (and b!6038694 d!1893344)))

(assert (=> bs!1489334 (not (= lambda!329397 lambda!329311))))

(declare-fun bs!1489335 () Bool)

(assert (= bs!1489335 (and b!6038694 d!1893548)))

(assert (=> bs!1489335 (not (= lambda!329397 lambda!329387))))

(declare-fun bs!1489336 () Bool)

(assert (= bs!1489336 (and b!6038694 b!6038692)))

(assert (=> bs!1489336 (= (= lt!2323063 lt!2323065) (= lambda!329397 lambda!329396))))

(declare-fun bs!1489337 () Bool)

(assert (= bs!1489337 (and b!6038694 d!1893506)))

(assert (=> bs!1489337 (= (= lt!2323063 lt!2322917) (= lambda!329397 lambda!329381))))

(declare-fun bs!1489338 () Bool)

(assert (= bs!1489338 (and b!6038694 d!1893330)))

(assert (=> bs!1489338 (not (= lambda!329397 lambda!329304))))

(declare-fun bs!1489339 () Bool)

(assert (= bs!1489339 (and b!6038694 b!6038561)))

(assert (=> bs!1489339 (= (= lt!2323063 lt!2323044) (= lambda!329397 lambda!329377))))

(declare-fun bs!1489340 () Bool)

(assert (= bs!1489340 (and b!6038694 b!6038598)))

(assert (=> bs!1489340 (= (= lt!2323063 lt!2323051) (= lambda!329397 lambda!329384))))

(declare-fun bs!1489341 () Bool)

(assert (= bs!1489341 (and b!6038694 b!6037661)))

(assert (=> bs!1489341 (= (= lt!2323063 lt!2322915) (= lambda!329397 lambda!329299))))

(declare-fun bs!1489342 () Bool)

(assert (= bs!1489342 (and b!6038694 b!6037718)))

(assert (=> bs!1489342 (= (= lt!2323063 lt!2322921) (= lambda!329397 lambda!329301))))

(declare-fun bs!1489343 () Bool)

(assert (= bs!1489343 (and b!6038694 b!6038596)))

(assert (=> bs!1489343 (= (= lt!2323063 lt!2323053) (= lambda!329397 lambda!329383))))

(declare-fun bs!1489344 () Bool)

(assert (= bs!1489344 (and b!6038694 b!6037716)))

(assert (=> bs!1489344 (= (= lt!2323063 lt!2322923) (= lambda!329397 lambda!329300))))

(declare-fun bs!1489345 () Bool)

(assert (= bs!1489345 (and b!6038694 b!6037656)))

(assert (=> bs!1489345 (= (= lt!2323063 lt!2322911) (= lambda!329397 lambda!329297))))

(assert (=> b!6038694 true))

(declare-fun d!1893578 () Bool)

(declare-fun e!3688575 () Bool)

(assert (=> d!1893578 e!3688575))

(declare-fun res!2514277 () Bool)

(assert (=> d!1893578 (=> (not res!2514277) (not e!3688575))))

(assert (=> d!1893578 (= res!2514277 (>= lt!2323063 0))))

(declare-fun e!3688574 () Int)

(assert (=> d!1893578 (= lt!2323063 e!3688574)))

(declare-fun c!1082517 () Bool)

(assert (=> d!1893578 (= c!1082517 (is-Cons!64235 (exprs!5904 (h!70684 (Cons!64236 lt!2322710 Nil!64236)))))))

(assert (=> d!1893578 (= (contextDepth!168 (h!70684 (Cons!64236 lt!2322710 Nil!64236))) lt!2323063)))

(assert (=> b!6038692 (= e!3688574 lt!2323065)))

(assert (=> b!6038692 (= lt!2323065 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 (h!70684 (Cons!64236 lt!2322710 Nil!64236))))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (h!70684 (Cons!64236 lt!2322710 Nil!64236))))))))))

(declare-fun lt!2323064 () Unit!157311)

(assert (=> b!6038692 (= lt!2323064 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 (h!70684 (Cons!64236 lt!2322710 Nil!64236)))) lt!2323065 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (h!70684 (Cons!64236 lt!2322710 Nil!64236))))))))))

(assert (=> b!6038692 (forall!15128 (t!377788 (exprs!5904 (h!70684 (Cons!64236 lt!2322710 Nil!64236)))) lambda!329396)))

(declare-fun lt!2323066 () Unit!157311)

(assert (=> b!6038692 (= lt!2323066 lt!2323064)))

(declare-fun b!6038693 () Bool)

(assert (=> b!6038693 (= e!3688574 0)))

(assert (=> b!6038694 (= e!3688575 (forall!15128 (exprs!5904 (h!70684 (Cons!64236 lt!2322710 Nil!64236))) lambda!329397))))

(assert (= (and d!1893578 c!1082517) b!6038692))

(assert (= (and d!1893578 (not c!1082517)) b!6038693))

(assert (= (and d!1893578 res!2514277) b!6038694))

(declare-fun m!6908806 () Bool)

(assert (=> b!6038692 m!6908806))

(declare-fun m!6908808 () Bool)

(assert (=> b!6038692 m!6908808))

(declare-fun m!6908810 () Bool)

(assert (=> b!6038692 m!6908810))

(assert (=> b!6038692 m!6908806))

(assert (=> b!6038692 m!6908808))

(declare-fun m!6908812 () Bool)

(assert (=> b!6038692 m!6908812))

(assert (=> b!6038692 m!6908808))

(declare-fun m!6908814 () Bool)

(assert (=> b!6038692 m!6908814))

(declare-fun m!6908816 () Bool)

(assert (=> b!6038694 m!6908816))

(assert (=> b!6037597 d!1893578))

(declare-fun bs!1489346 () Bool)

(declare-fun d!1893580 () Bool)

(assert (= bs!1489346 (and d!1893580 b!6037607)))

(declare-fun lambda!329400 () Int)

(assert (=> bs!1489346 (not (= lambda!329400 lambda!329290))))

(declare-fun bs!1489347 () Bool)

(assert (= bs!1489347 (and d!1893580 b!6038691)))

(assert (=> bs!1489347 (not (= lambda!329400 lambda!329395))))

(declare-fun bs!1489348 () Bool)

(assert (= bs!1489348 (and d!1893580 b!6037597)))

(assert (=> bs!1489348 (not (= lambda!329400 lambda!329280))))

(declare-fun bs!1489349 () Bool)

(assert (= bs!1489349 (and d!1893580 b!6037605)))

(assert (=> bs!1489349 (not (= lambda!329400 lambda!329289))))

(declare-fun bs!1489350 () Bool)

(assert (= bs!1489350 (and d!1893580 b!6037602)))

(assert (=> bs!1489350 (not (= lambda!329400 lambda!329283))))

(declare-fun bs!1489351 () Bool)

(assert (= bs!1489351 (and d!1893580 b!6037599)))

(assert (=> bs!1489351 (not (= lambda!329400 lambda!329281))))

(declare-fun bs!1489352 () Bool)

(assert (= bs!1489352 (and d!1893580 b!6037604)))

(assert (=> bs!1489352 (not (= lambda!329400 lambda!329284))))

(declare-fun bs!1489353 () Bool)

(assert (= bs!1489353 (and d!1893580 b!6038689)))

(assert (=> bs!1489353 (not (= lambda!329400 lambda!329394))))

(declare-fun bs!1489354 () Bool)

(assert (= bs!1489354 (and d!1893580 d!1893560)))

(assert (=> bs!1489354 (not (= lambda!329400 lambda!329391))))

(assert (=> d!1893580 true))

(assert (=> d!1893580 true))

(declare-fun order!27325 () Int)

(declare-fun order!27327 () Int)

(declare-fun dynLambda!25218 (Int Int) Int)

(declare-fun dynLambda!25219 (Int Int) Int)

(assert (=> d!1893580 (< (dynLambda!25218 order!27325 lambda!329279) (dynLambda!25219 order!27327 lambda!329400))))

(assert (=> d!1893580 (forall!15127 (t!377789 (Cons!64236 lt!2322710 Nil!64236)) lambda!329400)))

(declare-fun lt!2323069 () Unit!157311)

(declare-fun choose!45137 (List!64360 Int Int Int) Unit!157311)

(assert (=> d!1893580 (= lt!2323069 (choose!45137 (t!377789 (Cons!64236 lt!2322710 Nil!64236)) lt!2322890 (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236))) lambda!329279))))

(assert (=> d!1893580 (>= lt!2322890 (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236))))))

(assert (=> d!1893580 (= (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 (Cons!64236 lt!2322710 Nil!64236)) lt!2322890 (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236))) lambda!329279) lt!2323069)))

(declare-fun bs!1489355 () Bool)

(assert (= bs!1489355 d!1893580))

(declare-fun m!6908818 () Bool)

(assert (=> bs!1489355 m!6908818))

(assert (=> bs!1489355 m!6907948))

(declare-fun m!6908820 () Bool)

(assert (=> bs!1489355 m!6908820))

(assert (=> b!6037597 d!1893580))

(declare-fun d!1893582 () Bool)

(assert (=> d!1893582 (= (maxBigInt!0 (contextDepth!168 (h!70684 (Cons!64236 lt!2322710 Nil!64236))) (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236)))) (ite (>= (contextDepth!168 (h!70684 (Cons!64236 lt!2322710 Nil!64236))) (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236)))) (contextDepth!168 (h!70684 (Cons!64236 lt!2322710 Nil!64236))) (zipperDepth!269 (t!377789 (Cons!64236 lt!2322710 Nil!64236)))))))

(assert (=> b!6037597 d!1893582))

(assert (=> d!1893356 d!1893354))

(assert (=> d!1893356 d!1893352))

(declare-fun d!1893584 () Bool)

(assert (=> d!1893584 (= (matchR!8203 r!7292 s!2326) (matchRSpec!3121 r!7292 s!2326))))

(assert (=> d!1893584 true))

(declare-fun _$88!4515 () Unit!157311)

(assert (=> d!1893584 (= (choose!45126 r!7292 s!2326) _$88!4515)))

(declare-fun bs!1489356 () Bool)

(assert (= bs!1489356 d!1893584))

(assert (=> bs!1489356 m!6907698))

(assert (=> bs!1489356 m!6907696))

(assert (=> d!1893356 d!1893584))

(assert (=> d!1893356 d!1893284))

(declare-fun c!1082520 () Bool)

(declare-fun bm!493764 () Bool)

(declare-fun call!493769 () Bool)

(declare-fun c!1082521 () Bool)

(assert (=> bm!493764 (= call!493769 (validRegex!7756 (ite c!1082521 (reg!16349 lt!2322933) (ite c!1082520 (regTwo!32553 lt!2322933) (regTwo!32552 lt!2322933)))))))

(declare-fun b!6038698 () Bool)

(declare-fun e!3688579 () Bool)

(declare-fun call!493771 () Bool)

(assert (=> b!6038698 (= e!3688579 call!493771)))

(declare-fun bm!493765 () Bool)

(declare-fun call!493770 () Bool)

(assert (=> bm!493765 (= call!493770 (validRegex!7756 (ite c!1082520 (regOne!32553 lt!2322933) (regOne!32552 lt!2322933))))))

(declare-fun b!6038699 () Bool)

(declare-fun e!3688580 () Bool)

(declare-fun e!3688578 () Bool)

(assert (=> b!6038699 (= e!3688580 e!3688578)))

(declare-fun res!2514281 () Bool)

(assert (=> b!6038699 (= res!2514281 (not (nullable!6015 (reg!16349 lt!2322933))))))

(assert (=> b!6038699 (=> (not res!2514281) (not e!3688578))))

(declare-fun b!6038700 () Bool)

(declare-fun e!3688582 () Bool)

(assert (=> b!6038700 (= e!3688580 e!3688582)))

(assert (=> b!6038700 (= c!1082520 (is-Union!16020 lt!2322933))))

(declare-fun d!1893586 () Bool)

(declare-fun res!2514282 () Bool)

(declare-fun e!3688576 () Bool)

(assert (=> d!1893586 (=> res!2514282 e!3688576)))

(assert (=> d!1893586 (= res!2514282 (is-ElementMatch!16020 lt!2322933))))

(assert (=> d!1893586 (= (validRegex!7756 lt!2322933) e!3688576)))

(declare-fun bm!493766 () Bool)

(assert (=> bm!493766 (= call!493771 call!493769)))

(declare-fun b!6038701 () Bool)

(assert (=> b!6038701 (= e!3688576 e!3688580)))

(assert (=> b!6038701 (= c!1082521 (is-Star!16020 lt!2322933))))

(declare-fun b!6038702 () Bool)

(assert (=> b!6038702 (= e!3688578 call!493769)))

(declare-fun b!6038703 () Bool)

(declare-fun e!3688581 () Bool)

(assert (=> b!6038703 (= e!3688581 e!3688579)))

(declare-fun res!2514280 () Bool)

(assert (=> b!6038703 (=> (not res!2514280) (not e!3688579))))

(assert (=> b!6038703 (= res!2514280 call!493770)))

(declare-fun b!6038704 () Bool)

(declare-fun res!2514278 () Bool)

(declare-fun e!3688577 () Bool)

(assert (=> b!6038704 (=> (not res!2514278) (not e!3688577))))

(assert (=> b!6038704 (= res!2514278 call!493770)))

(assert (=> b!6038704 (= e!3688582 e!3688577)))

(declare-fun b!6038705 () Bool)

(declare-fun res!2514279 () Bool)

(assert (=> b!6038705 (=> res!2514279 e!3688581)))

(assert (=> b!6038705 (= res!2514279 (not (is-Concat!24865 lt!2322933)))))

(assert (=> b!6038705 (= e!3688582 e!3688581)))

(declare-fun b!6038706 () Bool)

(assert (=> b!6038706 (= e!3688577 call!493771)))

(assert (= (and d!1893586 (not res!2514282)) b!6038701))

(assert (= (and b!6038701 c!1082521) b!6038699))

(assert (= (and b!6038701 (not c!1082521)) b!6038700))

(assert (= (and b!6038699 res!2514281) b!6038702))

(assert (= (and b!6038700 c!1082520) b!6038704))

(assert (= (and b!6038700 (not c!1082520)) b!6038705))

(assert (= (and b!6038704 res!2514278) b!6038706))

(assert (= (and b!6038705 (not res!2514279)) b!6038703))

(assert (= (and b!6038703 res!2514280) b!6038698))

(assert (= (or b!6038706 b!6038698) bm!493766))

(assert (= (or b!6038704 b!6038703) bm!493765))

(assert (= (or b!6038702 bm!493766) bm!493764))

(declare-fun m!6908822 () Bool)

(assert (=> bm!493764 m!6908822))

(declare-fun m!6908824 () Bool)

(assert (=> bm!493765 m!6908824))

(declare-fun m!6908826 () Bool)

(assert (=> b!6038699 m!6908826))

(assert (=> d!1893334 d!1893586))

(declare-fun d!1893588 () Bool)

(declare-fun res!2514283 () Bool)

(declare-fun e!3688583 () Bool)

(assert (=> d!1893588 (=> res!2514283 e!3688583)))

(assert (=> d!1893588 (= res!2514283 (is-Nil!64235 (exprs!5904 (h!70684 zl!343))))))

(assert (=> d!1893588 (= (forall!15128 (exprs!5904 (h!70684 zl!343)) lambda!329310) e!3688583)))

(declare-fun b!6038707 () Bool)

(declare-fun e!3688584 () Bool)

(assert (=> b!6038707 (= e!3688583 e!3688584)))

(declare-fun res!2514284 () Bool)

(assert (=> b!6038707 (=> (not res!2514284) (not e!3688584))))

(assert (=> b!6038707 (= res!2514284 (dynLambda!25216 lambda!329310 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun b!6038708 () Bool)

(assert (=> b!6038708 (= e!3688584 (forall!15128 (t!377788 (exprs!5904 (h!70684 zl!343))) lambda!329310))))

(assert (= (and d!1893588 (not res!2514283)) b!6038707))

(assert (= (and b!6038707 res!2514284) b!6038708))

(declare-fun b_lambda!229087 () Bool)

(assert (=> (not b_lambda!229087) (not b!6038707)))

(declare-fun m!6908828 () Bool)

(assert (=> b!6038707 m!6908828))

(declare-fun m!6908830 () Bool)

(assert (=> b!6038708 m!6908830))

(assert (=> d!1893334 d!1893588))

(declare-fun b!6038709 () Bool)

(declare-fun e!3688587 () (Set Context!10808))

(declare-fun call!493776 () (Set Context!10808))

(assert (=> b!6038709 (= e!3688587 call!493776)))

(declare-fun c!1082522 () Bool)

(declare-fun bm!493767 () Bool)

(declare-fun call!493775 () (Set Context!10808))

(declare-fun c!1082526 () Bool)

(declare-fun c!1082525 () Bool)

(declare-fun call!493774 () List!64359)

(assert (=> bm!493767 (= call!493775 (derivationStepZipperDown!1270 (ite c!1082525 (regOne!32553 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (ite c!1082526 (regTwo!32552 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (ite c!1082522 (regOne!32552 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (reg!16349 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292))))))) (ite (or c!1082525 c!1082526) (ite c!1082209 lt!2322716 (Context!10809 call!493589)) (Context!10809 call!493774)) (h!70685 s!2326)))))

(declare-fun b!6038710 () Bool)

(declare-fun e!3688588 () (Set Context!10808))

(declare-fun e!3688590 () (Set Context!10808))

(assert (=> b!6038710 (= e!3688588 e!3688590)))

(assert (=> b!6038710 (= c!1082522 (is-Concat!24865 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))

(declare-fun c!1082523 () Bool)

(declare-fun d!1893590 () Bool)

(assert (=> d!1893590 (= c!1082523 (and (is-ElementMatch!16020 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (= (c!1082125 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (h!70685 s!2326))))))

(declare-fun e!3688589 () (Set Context!10808))

(assert (=> d!1893590 (= (derivationStepZipperDown!1270 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292))) (ite c!1082209 lt!2322716 (Context!10809 call!493589)) (h!70685 s!2326)) e!3688589)))

(declare-fun bm!493768 () Bool)

(declare-fun call!493772 () (Set Context!10808))

(assert (=> bm!493768 (= call!493776 call!493772)))

(declare-fun b!6038711 () Bool)

(declare-fun e!3688585 () Bool)

(assert (=> b!6038711 (= e!3688585 (nullable!6015 (regOne!32552 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292))))))))

(declare-fun bm!493769 () Bool)

(assert (=> bm!493769 (= call!493772 call!493775)))

(declare-fun b!6038712 () Bool)

(declare-fun c!1082524 () Bool)

(assert (=> b!6038712 (= c!1082524 (is-Star!16020 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))

(assert (=> b!6038712 (= e!3688590 e!3688587)))

(declare-fun call!493777 () List!64359)

(declare-fun bm!493770 () Bool)

(assert (=> bm!493770 (= call!493777 ($colon$colon!1905 (exprs!5904 (ite c!1082209 lt!2322716 (Context!10809 call!493589))) (ite (or c!1082526 c!1082522) (regTwo!32552 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292))))))))

(declare-fun b!6038713 () Bool)

(declare-fun call!493773 () (Set Context!10808))

(assert (=> b!6038713 (= e!3688588 (set.union call!493773 call!493772))))

(declare-fun b!6038714 () Bool)

(assert (=> b!6038714 (= e!3688589 (set.insert (ite c!1082209 lt!2322716 (Context!10809 call!493589)) (as set.empty (Set Context!10808))))))

(declare-fun bm!493771 () Bool)

(assert (=> bm!493771 (= call!493773 (derivationStepZipperDown!1270 (ite c!1082525 (regTwo!32553 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (regOne!32552 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292))))) (ite c!1082525 (ite c!1082209 lt!2322716 (Context!10809 call!493589)) (Context!10809 call!493777)) (h!70685 s!2326)))))

(declare-fun bm!493772 () Bool)

(assert (=> bm!493772 (= call!493774 call!493777)))

(declare-fun b!6038715 () Bool)

(assert (=> b!6038715 (= e!3688590 call!493776)))

(declare-fun b!6038716 () Bool)

(declare-fun e!3688586 () (Set Context!10808))

(assert (=> b!6038716 (= e!3688589 e!3688586)))

(assert (=> b!6038716 (= c!1082525 (is-Union!16020 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))

(declare-fun b!6038717 () Bool)

(assert (=> b!6038717 (= c!1082526 e!3688585)))

(declare-fun res!2514285 () Bool)

(assert (=> b!6038717 (=> (not res!2514285) (not e!3688585))))

(assert (=> b!6038717 (= res!2514285 (is-Concat!24865 (ite c!1082209 (regTwo!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))

(assert (=> b!6038717 (= e!3688586 e!3688588)))

(declare-fun b!6038718 () Bool)

(assert (=> b!6038718 (= e!3688586 (set.union call!493775 call!493773))))

(declare-fun b!6038719 () Bool)

(assert (=> b!6038719 (= e!3688587 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893590 c!1082523) b!6038714))

(assert (= (and d!1893590 (not c!1082523)) b!6038716))

(assert (= (and b!6038716 c!1082525) b!6038718))

(assert (= (and b!6038716 (not c!1082525)) b!6038717))

(assert (= (and b!6038717 res!2514285) b!6038711))

(assert (= (and b!6038717 c!1082526) b!6038713))

(assert (= (and b!6038717 (not c!1082526)) b!6038710))

(assert (= (and b!6038710 c!1082522) b!6038715))

(assert (= (and b!6038710 (not c!1082522)) b!6038712))

(assert (= (and b!6038712 c!1082524) b!6038709))

(assert (= (and b!6038712 (not c!1082524)) b!6038719))

(assert (= (or b!6038715 b!6038709) bm!493772))

(assert (= (or b!6038715 b!6038709) bm!493768))

(assert (= (or b!6038713 bm!493772) bm!493770))

(assert (= (or b!6038713 bm!493768) bm!493769))

(assert (= (or b!6038718 b!6038713) bm!493771))

(assert (= (or b!6038718 bm!493769) bm!493767))

(declare-fun m!6908832 () Bool)

(assert (=> bm!493771 m!6908832))

(declare-fun m!6908834 () Bool)

(assert (=> b!6038714 m!6908834))

(declare-fun m!6908836 () Bool)

(assert (=> bm!493767 m!6908836))

(declare-fun m!6908838 () Bool)

(assert (=> bm!493770 m!6908838))

(declare-fun m!6908840 () Bool)

(assert (=> b!6038711 m!6908840))

(assert (=> bm!493583 d!1893590))

(assert (=> b!6037798 d!1893538))

(assert (=> d!1893242 d!1893568))

(assert (=> d!1893242 d!1893338))

(declare-fun d!1893592 () Bool)

(assert (=> d!1893592 (= (isEmpty!36140 (exprs!5904 (h!70684 zl!343))) (is-Nil!64235 (exprs!5904 (h!70684 zl!343))))))

(assert (=> b!6037777 d!1893592))

(declare-fun c!1082527 () Bool)

(declare-fun c!1082528 () Bool)

(declare-fun call!493778 () Bool)

(declare-fun bm!493773 () Bool)

(assert (=> bm!493773 (= call!493778 (validRegex!7756 (ite c!1082528 (reg!16349 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))) (ite c!1082527 (regTwo!32553 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))) (regTwo!32552 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292)))))))))))

(declare-fun b!6038720 () Bool)

(declare-fun e!3688594 () Bool)

(declare-fun call!493780 () Bool)

(assert (=> b!6038720 (= e!3688594 call!493780)))

(declare-fun bm!493774 () Bool)

(declare-fun call!493779 () Bool)

(assert (=> bm!493774 (= call!493779 (validRegex!7756 (ite c!1082527 (regOne!32553 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))) (regOne!32552 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))))))))

(declare-fun b!6038721 () Bool)

(declare-fun e!3688595 () Bool)

(declare-fun e!3688593 () Bool)

(assert (=> b!6038721 (= e!3688595 e!3688593)))

(declare-fun res!2514289 () Bool)

(assert (=> b!6038721 (= res!2514289 (not (nullable!6015 (reg!16349 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))))))))

(assert (=> b!6038721 (=> (not res!2514289) (not e!3688593))))

(declare-fun b!6038722 () Bool)

(declare-fun e!3688597 () Bool)

(assert (=> b!6038722 (= e!3688595 e!3688597)))

(assert (=> b!6038722 (= c!1082527 (is-Union!16020 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))))))

(declare-fun d!1893594 () Bool)

(declare-fun res!2514290 () Bool)

(declare-fun e!3688591 () Bool)

(assert (=> d!1893594 (=> res!2514290 e!3688591)))

(assert (=> d!1893594 (= res!2514290 (is-ElementMatch!16020 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))))))

(assert (=> d!1893594 (= (validRegex!7756 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))) e!3688591)))

(declare-fun bm!493775 () Bool)

(assert (=> bm!493775 (= call!493780 call!493778)))

(declare-fun b!6038723 () Bool)

(assert (=> b!6038723 (= e!3688591 e!3688595)))

(assert (=> b!6038723 (= c!1082528 (is-Star!16020 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292))))))))

(declare-fun b!6038724 () Bool)

(assert (=> b!6038724 (= e!3688593 call!493778)))

(declare-fun b!6038725 () Bool)

(declare-fun e!3688596 () Bool)

(assert (=> b!6038725 (= e!3688596 e!3688594)))

(declare-fun res!2514288 () Bool)

(assert (=> b!6038725 (=> (not res!2514288) (not e!3688594))))

(assert (=> b!6038725 (= res!2514288 call!493779)))

(declare-fun b!6038726 () Bool)

(declare-fun res!2514286 () Bool)

(declare-fun e!3688592 () Bool)

(assert (=> b!6038726 (=> (not res!2514286) (not e!3688592))))

(assert (=> b!6038726 (= res!2514286 call!493779)))

(assert (=> b!6038726 (= e!3688597 e!3688592)))

(declare-fun b!6038727 () Bool)

(declare-fun res!2514287 () Bool)

(assert (=> b!6038727 (=> res!2514287 e!3688596)))

(assert (=> b!6038727 (= res!2514287 (not (is-Concat!24865 (ite c!1082243 (reg!16349 (regTwo!32552 r!7292)) (ite c!1082242 (regTwo!32553 (regTwo!32552 r!7292)) (regTwo!32552 (regTwo!32552 r!7292)))))))))

(assert (=> b!6038727 (= e!3688597 e!3688596)))

(declare-fun b!6038728 () Bool)

(assert (=> b!6038728 (= e!3688592 call!493780)))

(assert (= (and d!1893594 (not res!2514290)) b!6038723))

(assert (= (and b!6038723 c!1082528) b!6038721))

(assert (= (and b!6038723 (not c!1082528)) b!6038722))

(assert (= (and b!6038721 res!2514289) b!6038724))

(assert (= (and b!6038722 c!1082527) b!6038726))

(assert (= (and b!6038722 (not c!1082527)) b!6038727))

(assert (= (and b!6038726 res!2514286) b!6038728))

(assert (= (and b!6038727 (not res!2514287)) b!6038725))

(assert (= (and b!6038725 res!2514288) b!6038720))

(assert (= (or b!6038728 b!6038720) bm!493775))

(assert (= (or b!6038726 b!6038725) bm!493774))

(assert (= (or b!6038724 bm!493775) bm!493773))

(declare-fun m!6908842 () Bool)

(assert (=> bm!493773 m!6908842))

(declare-fun m!6908844 () Bool)

(assert (=> bm!493774 m!6908844))

(declare-fun m!6908846 () Bool)

(assert (=> b!6038721 m!6908846))

(assert (=> bm!493586 d!1893594))

(declare-fun bm!493776 () Bool)

(declare-fun call!493786 () Int)

(declare-fun call!493785 () Int)

(assert (=> bm!493776 (= call!493786 call!493785)))

(declare-fun b!6038730 () Bool)

(declare-fun e!3688598 () Bool)

(declare-fun e!3688599 () Bool)

(assert (=> b!6038730 (= e!3688598 e!3688599)))

(declare-fun c!1082532 () Bool)

(assert (=> b!6038730 (= c!1082532 (is-Concat!24865 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))

(declare-fun b!6038731 () Bool)

(declare-fun c!1082531 () Bool)

(assert (=> b!6038731 (= c!1082531 (is-Union!16020 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))

(declare-fun e!3688606 () Int)

(declare-fun e!3688607 () Int)

(assert (=> b!6038731 (= e!3688606 e!3688607)))

(declare-fun c!1082534 () Bool)

(declare-fun b!6038732 () Bool)

(assert (=> b!6038732 (= c!1082534 (is-Star!16020 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))

(declare-fun e!3688601 () Bool)

(assert (=> b!6038732 (= e!3688599 e!3688601)))

(declare-fun b!6038733 () Bool)

(declare-fun e!3688602 () Int)

(declare-fun call!493782 () Int)

(assert (=> b!6038733 (= e!3688602 (+ 1 call!493782))))

(declare-fun b!6038734 () Bool)

(assert (=> b!6038734 (= e!3688607 (+ 1 call!493782))))

(declare-fun b!6038735 () Bool)

(declare-fun lt!2323070 () Int)

(assert (=> b!6038735 (= e!3688601 (= lt!2323070 1))))

(declare-fun call!493784 () Int)

(declare-fun bm!493777 () Bool)

(assert (=> bm!493777 (= call!493782 (maxBigInt!0 (ite c!1082531 call!493784 call!493786) (ite c!1082531 call!493786 call!493784)))))

(declare-fun c!1082530 () Bool)

(declare-fun bm!493778 () Bool)

(assert (=> bm!493778 (= call!493785 (regexDepth!277 (ite c!1082530 (reg!16349 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))) (ite c!1082531 (regTwo!32553 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))) (regOne!32552 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292))))))))))

(declare-fun b!6038736 () Bool)

(declare-fun call!493787 () Int)

(assert (=> b!6038736 (= e!3688601 (> lt!2323070 call!493787))))

(declare-fun b!6038737 () Bool)

(assert (=> b!6038737 (= e!3688606 (+ 1 call!493785))))

(declare-fun bm!493779 () Bool)

(declare-fun c!1082533 () Bool)

(declare-fun call!493781 () Int)

(assert (=> bm!493779 (= call!493781 (regexDepth!277 (ite c!1082533 (regOne!32553 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))) (regTwo!32552 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))))

(declare-fun b!6038738 () Bool)

(declare-fun e!3688605 () Bool)

(assert (=> b!6038738 (= e!3688598 e!3688605)))

(declare-fun res!2514291 () Bool)

(assert (=> b!6038738 (= res!2514291 (> lt!2323070 call!493781))))

(assert (=> b!6038738 (=> (not res!2514291) (not e!3688605))))

(declare-fun b!6038739 () Bool)

(declare-fun res!2514293 () Bool)

(declare-fun e!3688603 () Bool)

(assert (=> b!6038739 (=> (not res!2514293) (not e!3688603))))

(assert (=> b!6038739 (= res!2514293 (> lt!2323070 call!493787))))

(assert (=> b!6038739 (= e!3688599 e!3688603)))

(declare-fun b!6038729 () Bool)

(assert (=> b!6038729 (= e!3688602 1)))

(declare-fun d!1893596 () Bool)

(declare-fun e!3688604 () Bool)

(assert (=> d!1893596 e!3688604))

(declare-fun res!2514292 () Bool)

(assert (=> d!1893596 (=> (not res!2514292) (not e!3688604))))

(assert (=> d!1893596 (= res!2514292 (> lt!2323070 0))))

(declare-fun e!3688600 () Int)

(assert (=> d!1893596 (= lt!2323070 e!3688600)))

(declare-fun c!1082529 () Bool)

(assert (=> d!1893596 (= c!1082529 (is-ElementMatch!16020 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))

(assert (=> d!1893596 (= (regexDepth!277 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))) lt!2323070)))

(declare-fun b!6038740 () Bool)

(assert (=> b!6038740 (= e!3688603 (> lt!2323070 call!493781))))

(declare-fun call!493783 () Int)

(declare-fun bm!493780 () Bool)

(assert (=> bm!493780 (= call!493783 (regexDepth!277 (ite c!1082533 (regTwo!32553 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))) (ite c!1082532 (regOne!32552 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))) (reg!16349 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292))))))))))

(declare-fun bm!493781 () Bool)

(assert (=> bm!493781 (= call!493784 (regexDepth!277 (ite c!1082531 (regOne!32553 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))) (regTwo!32552 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))))

(declare-fun b!6038741 () Bool)

(assert (=> b!6038741 (= e!3688600 1)))

(declare-fun b!6038742 () Bool)

(assert (=> b!6038742 (= e!3688605 (> lt!2323070 call!493783))))

(declare-fun bm!493782 () Bool)

(assert (=> bm!493782 (= call!493787 call!493783)))

(declare-fun b!6038743 () Bool)

(assert (=> b!6038743 (= e!3688607 e!3688602)))

(declare-fun c!1082535 () Bool)

(assert (=> b!6038743 (= c!1082535 (is-Concat!24865 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))

(declare-fun b!6038744 () Bool)

(assert (=> b!6038744 (= e!3688604 e!3688598)))

(assert (=> b!6038744 (= c!1082533 (is-Union!16020 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))

(declare-fun b!6038745 () Bool)

(assert (=> b!6038745 (= e!3688600 e!3688606)))

(assert (=> b!6038745 (= c!1082530 (is-Star!16020 (ite c!1082287 (regTwo!32553 r!7292) (ite c!1082286 (regOne!32552 r!7292) (reg!16349 r!7292)))))))

(assert (= (and d!1893596 c!1082529) b!6038741))

(assert (= (and d!1893596 (not c!1082529)) b!6038745))

(assert (= (and b!6038745 c!1082530) b!6038737))

(assert (= (and b!6038745 (not c!1082530)) b!6038731))

(assert (= (and b!6038731 c!1082531) b!6038734))

(assert (= (and b!6038731 (not c!1082531)) b!6038743))

(assert (= (and b!6038743 c!1082535) b!6038733))

(assert (= (and b!6038743 (not c!1082535)) b!6038729))

(assert (= (or b!6038734 b!6038733) bm!493776))

(assert (= (or b!6038734 b!6038733) bm!493781))

(assert (= (or b!6038734 b!6038733) bm!493777))

(assert (= (or b!6038737 bm!493776) bm!493778))

(assert (= (and d!1893596 res!2514292) b!6038744))

(assert (= (and b!6038744 c!1082533) b!6038738))

(assert (= (and b!6038744 (not c!1082533)) b!6038730))

(assert (= (and b!6038738 res!2514291) b!6038742))

(assert (= (and b!6038730 c!1082532) b!6038739))

(assert (= (and b!6038730 (not c!1082532)) b!6038732))

(assert (= (and b!6038739 res!2514293) b!6038740))

(assert (= (and b!6038732 c!1082534) b!6038736))

(assert (= (and b!6038732 (not c!1082534)) b!6038735))

(assert (= (or b!6038739 b!6038736) bm!493782))

(assert (= (or b!6038742 bm!493782) bm!493780))

(assert (= (or b!6038738 b!6038740) bm!493779))

(declare-fun m!6908848 () Bool)

(assert (=> bm!493779 m!6908848))

(declare-fun m!6908850 () Bool)

(assert (=> bm!493780 m!6908850))

(declare-fun m!6908852 () Bool)

(assert (=> bm!493777 m!6908852))

(declare-fun m!6908854 () Bool)

(assert (=> bm!493781 m!6908854))

(declare-fun m!6908856 () Bool)

(assert (=> bm!493778 m!6908856))

(assert (=> bm!493622 d!1893596))

(declare-fun d!1893598 () Bool)

(assert (=> d!1893598 (= (isEmpty!36143 (t!377790 s!2326)) (is-Nil!64237 (t!377790 s!2326)))))

(assert (=> d!1893250 d!1893598))

(declare-fun d!1893600 () Bool)

(declare-fun res!2514294 () Bool)

(declare-fun e!3688608 () Bool)

(assert (=> d!1893600 (=> res!2514294 e!3688608)))

(assert (=> d!1893600 (= res!2514294 (is-Nil!64235 (exprs!5904 lt!2322710)))))

(assert (=> d!1893600 (= (forall!15128 (exprs!5904 lt!2322710) lambda!329297) e!3688608)))

(declare-fun b!6038746 () Bool)

(declare-fun e!3688609 () Bool)

(assert (=> b!6038746 (= e!3688608 e!3688609)))

(declare-fun res!2514295 () Bool)

(assert (=> b!6038746 (=> (not res!2514295) (not e!3688609))))

(assert (=> b!6038746 (= res!2514295 (dynLambda!25216 lambda!329297 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun b!6038747 () Bool)

(assert (=> b!6038747 (= e!3688609 (forall!15128 (t!377788 (exprs!5904 lt!2322710)) lambda!329297))))

(assert (= (and d!1893600 (not res!2514294)) b!6038746))

(assert (= (and b!6038746 res!2514295) b!6038747))

(declare-fun b_lambda!229089 () Bool)

(assert (=> (not b_lambda!229089) (not b!6038746)))

(declare-fun m!6908858 () Bool)

(assert (=> b!6038746 m!6908858))

(declare-fun m!6908860 () Bool)

(assert (=> b!6038747 m!6908860))

(assert (=> b!6037656 d!1893600))

(assert (=> b!6037812 d!1893308))

(declare-fun b!6038751 () Bool)

(declare-fun e!3688611 () Bool)

(declare-fun lt!2323071 () List!64361)

(assert (=> b!6038751 (= e!3688611 (or (not (= (t!377790 s!2326) Nil!64237)) (= lt!2323071 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)))))))

(declare-fun b!6038748 () Bool)

(declare-fun e!3688610 () List!64361)

(assert (=> b!6038748 (= e!3688610 (t!377790 s!2326))))

(declare-fun d!1893602 () Bool)

(assert (=> d!1893602 e!3688611))

(declare-fun res!2514296 () Bool)

(assert (=> d!1893602 (=> (not res!2514296) (not e!3688611))))

(assert (=> d!1893602 (= res!2514296 (= (content!11886 lt!2323071) (set.union (content!11886 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237))) (content!11886 (t!377790 s!2326)))))))

(assert (=> d!1893602 (= lt!2323071 e!3688610)))

(declare-fun c!1082536 () Bool)

(assert (=> d!1893602 (= c!1082536 (is-Nil!64237 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237))))))

(assert (=> d!1893602 (= (++!14115 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (t!377790 s!2326)) lt!2323071)))

(declare-fun b!6038749 () Bool)

(assert (=> b!6038749 (= e!3688610 (Cons!64237 (h!70685 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237))) (++!14115 (t!377790 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237))) (t!377790 s!2326))))))

(declare-fun b!6038750 () Bool)

(declare-fun res!2514297 () Bool)

(assert (=> b!6038750 (=> (not res!2514297) (not e!3688611))))

(assert (=> b!6038750 (= res!2514297 (= (size!40175 lt!2323071) (+ (size!40175 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237))) (size!40175 (t!377790 s!2326)))))))

(assert (= (and d!1893602 c!1082536) b!6038748))

(assert (= (and d!1893602 (not c!1082536)) b!6038749))

(assert (= (and d!1893602 res!2514296) b!6038750))

(assert (= (and b!6038750 res!2514297) b!6038751))

(declare-fun m!6908862 () Bool)

(assert (=> d!1893602 m!6908862))

(assert (=> d!1893602 m!6907902))

(declare-fun m!6908864 () Bool)

(assert (=> d!1893602 m!6908864))

(declare-fun m!6908866 () Bool)

(assert (=> d!1893602 m!6908866))

(declare-fun m!6908868 () Bool)

(assert (=> b!6038749 m!6908868))

(declare-fun m!6908870 () Bool)

(assert (=> b!6038750 m!6908870))

(assert (=> b!6038750 m!6907902))

(declare-fun m!6908872 () Bool)

(assert (=> b!6038750 m!6908872))

(declare-fun m!6908874 () Bool)

(assert (=> b!6038750 m!6908874))

(assert (=> b!6037556 d!1893602))

(declare-fun b!6038755 () Bool)

(declare-fun e!3688613 () Bool)

(declare-fun lt!2323072 () List!64361)

(assert (=> b!6038755 (= e!3688613 (or (not (= (Cons!64237 (h!70685 s!2326) Nil!64237) Nil!64237)) (= lt!2323072 Nil!64237)))))

(declare-fun b!6038752 () Bool)

(declare-fun e!3688612 () List!64361)

(assert (=> b!6038752 (= e!3688612 (Cons!64237 (h!70685 s!2326) Nil!64237))))

(declare-fun d!1893604 () Bool)

(assert (=> d!1893604 e!3688613))

(declare-fun res!2514298 () Bool)

(assert (=> d!1893604 (=> (not res!2514298) (not e!3688613))))

(assert (=> d!1893604 (= res!2514298 (= (content!11886 lt!2323072) (set.union (content!11886 Nil!64237) (content!11886 (Cons!64237 (h!70685 s!2326) Nil!64237)))))))

(assert (=> d!1893604 (= lt!2323072 e!3688612)))

(declare-fun c!1082537 () Bool)

(assert (=> d!1893604 (= c!1082537 (is-Nil!64237 Nil!64237))))

(assert (=> d!1893604 (= (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) lt!2323072)))

(declare-fun b!6038753 () Bool)

(assert (=> b!6038753 (= e!3688612 (Cons!64237 (h!70685 Nil!64237) (++!14115 (t!377790 Nil!64237) (Cons!64237 (h!70685 s!2326) Nil!64237))))))

(declare-fun b!6038754 () Bool)

(declare-fun res!2514299 () Bool)

(assert (=> b!6038754 (=> (not res!2514299) (not e!3688613))))

(assert (=> b!6038754 (= res!2514299 (= (size!40175 lt!2323072) (+ (size!40175 Nil!64237) (size!40175 (Cons!64237 (h!70685 s!2326) Nil!64237)))))))

(assert (= (and d!1893604 c!1082537) b!6038752))

(assert (= (and d!1893604 (not c!1082537)) b!6038753))

(assert (= (and d!1893604 res!2514298) b!6038754))

(assert (= (and b!6038754 res!2514299) b!6038755))

(declare-fun m!6908876 () Bool)

(assert (=> d!1893604 m!6908876))

(declare-fun m!6908878 () Bool)

(assert (=> d!1893604 m!6908878))

(declare-fun m!6908880 () Bool)

(assert (=> d!1893604 m!6908880))

(declare-fun m!6908882 () Bool)

(assert (=> b!6038753 m!6908882))

(declare-fun m!6908884 () Bool)

(assert (=> b!6038754 m!6908884))

(declare-fun m!6908886 () Bool)

(assert (=> b!6038754 m!6908886))

(declare-fun m!6908888 () Bool)

(assert (=> b!6038754 m!6908888))

(assert (=> b!6037556 d!1893604))

(declare-fun d!1893606 () Bool)

(assert (=> d!1893606 (= (++!14115 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (t!377790 s!2326)) s!2326)))

(declare-fun lt!2323075 () Unit!157311)

(declare-fun choose!45138 (List!64361 C!32310 List!64361 List!64361) Unit!157311)

(assert (=> d!1893606 (= lt!2323075 (choose!45138 Nil!64237 (h!70685 s!2326) (t!377790 s!2326) s!2326))))

(assert (=> d!1893606 (= (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) (t!377790 s!2326))) s!2326)))

(assert (=> d!1893606 (= (lemmaMoveElementToOtherListKeepsConcatEq!2210 Nil!64237 (h!70685 s!2326) (t!377790 s!2326) s!2326) lt!2323075)))

(declare-fun bs!1489357 () Bool)

(assert (= bs!1489357 d!1893606))

(assert (=> bs!1489357 m!6907902))

(assert (=> bs!1489357 m!6907902))

(assert (=> bs!1489357 m!6907904))

(declare-fun m!6908890 () Bool)

(assert (=> bs!1489357 m!6908890))

(declare-fun m!6908892 () Bool)

(assert (=> bs!1489357 m!6908892))

(assert (=> b!6037556 d!1893606))

(declare-fun b!6038756 () Bool)

(declare-fun res!2514304 () Bool)

(declare-fun e!3688614 () Bool)

(assert (=> b!6038756 (=> (not res!2514304) (not e!3688614))))

(declare-fun lt!2323078 () Option!15911)

(assert (=> b!6038756 (= res!2514304 (matchR!8203 (regOne!32552 r!7292) (_1!36302 (get!22141 lt!2323078))))))

(declare-fun b!6038757 () Bool)

(declare-fun e!3688618 () Option!15911)

(assert (=> b!6038757 (= e!3688618 (Some!15910 (tuple2!65999 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (t!377790 s!2326))))))

(declare-fun b!6038758 () Bool)

(declare-fun lt!2323076 () Unit!157311)

(declare-fun lt!2323077 () Unit!157311)

(assert (=> b!6038758 (= lt!2323076 lt!2323077)))

(assert (=> b!6038758 (= (++!14115 (++!14115 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (Cons!64237 (h!70685 (t!377790 s!2326)) Nil!64237)) (t!377790 (t!377790 s!2326))) s!2326)))

(assert (=> b!6038758 (= lt!2323077 (lemmaMoveElementToOtherListKeepsConcatEq!2210 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (h!70685 (t!377790 s!2326)) (t!377790 (t!377790 s!2326)) s!2326))))

(declare-fun e!3688615 () Option!15911)

(assert (=> b!6038758 (= e!3688615 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) (++!14115 (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (Cons!64237 (h!70685 (t!377790 s!2326)) Nil!64237)) (t!377790 (t!377790 s!2326)) s!2326))))

(declare-fun b!6038759 () Bool)

(declare-fun res!2514302 () Bool)

(assert (=> b!6038759 (=> (not res!2514302) (not e!3688614))))

(assert (=> b!6038759 (= res!2514302 (matchR!8203 (regTwo!32552 r!7292) (_2!36302 (get!22141 lt!2323078))))))

(declare-fun b!6038760 () Bool)

(assert (=> b!6038760 (= e!3688618 e!3688615)))

(declare-fun c!1082538 () Bool)

(assert (=> b!6038760 (= c!1082538 (is-Nil!64237 (t!377790 s!2326)))))

(declare-fun b!6038761 () Bool)

(assert (=> b!6038761 (= e!3688614 (= (++!14115 (_1!36302 (get!22141 lt!2323078)) (_2!36302 (get!22141 lt!2323078))) s!2326))))

(declare-fun b!6038762 () Bool)

(declare-fun e!3688617 () Bool)

(assert (=> b!6038762 (= e!3688617 (not (isDefined!12614 lt!2323078)))))

(declare-fun d!1893608 () Bool)

(assert (=> d!1893608 e!3688617))

(declare-fun res!2514300 () Bool)

(assert (=> d!1893608 (=> res!2514300 e!3688617)))

(assert (=> d!1893608 (= res!2514300 e!3688614)))

(declare-fun res!2514303 () Bool)

(assert (=> d!1893608 (=> (not res!2514303) (not e!3688614))))

(assert (=> d!1893608 (= res!2514303 (isDefined!12614 lt!2323078))))

(assert (=> d!1893608 (= lt!2323078 e!3688618)))

(declare-fun c!1082539 () Bool)

(declare-fun e!3688616 () Bool)

(assert (=> d!1893608 (= c!1082539 e!3688616)))

(declare-fun res!2514301 () Bool)

(assert (=> d!1893608 (=> (not res!2514301) (not e!3688616))))

(assert (=> d!1893608 (= res!2514301 (matchR!8203 (regOne!32552 r!7292) (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237))))))

(assert (=> d!1893608 (validRegex!7756 (regOne!32552 r!7292))))

(assert (=> d!1893608 (= (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) (++!14115 Nil!64237 (Cons!64237 (h!70685 s!2326) Nil!64237)) (t!377790 s!2326) s!2326) lt!2323078)))

(declare-fun b!6038763 () Bool)

(assert (=> b!6038763 (= e!3688615 None!15910)))

(declare-fun b!6038764 () Bool)

(assert (=> b!6038764 (= e!3688616 (matchR!8203 (regTwo!32552 r!7292) (t!377790 s!2326)))))

(assert (= (and d!1893608 res!2514301) b!6038764))

(assert (= (and d!1893608 c!1082539) b!6038757))

(assert (= (and d!1893608 (not c!1082539)) b!6038760))

(assert (= (and b!6038760 c!1082538) b!6038763))

(assert (= (and b!6038760 (not c!1082538)) b!6038758))

(assert (= (and d!1893608 res!2514303) b!6038756))

(assert (= (and b!6038756 res!2514304) b!6038759))

(assert (= (and b!6038759 res!2514302) b!6038761))

(assert (= (and d!1893608 (not res!2514300)) b!6038762))

(declare-fun m!6908894 () Bool)

(assert (=> b!6038761 m!6908894))

(declare-fun m!6908896 () Bool)

(assert (=> b!6038761 m!6908896))

(assert (=> b!6038756 m!6908894))

(declare-fun m!6908898 () Bool)

(assert (=> b!6038756 m!6908898))

(declare-fun m!6908900 () Bool)

(assert (=> d!1893608 m!6908900))

(assert (=> d!1893608 m!6907902))

(declare-fun m!6908902 () Bool)

(assert (=> d!1893608 m!6908902))

(assert (=> d!1893608 m!6907898))

(declare-fun m!6908904 () Bool)

(assert (=> b!6038764 m!6908904))

(assert (=> b!6038759 m!6908894))

(declare-fun m!6908906 () Bool)

(assert (=> b!6038759 m!6908906))

(assert (=> b!6038758 m!6907902))

(declare-fun m!6908908 () Bool)

(assert (=> b!6038758 m!6908908))

(assert (=> b!6038758 m!6908908))

(declare-fun m!6908910 () Bool)

(assert (=> b!6038758 m!6908910))

(assert (=> b!6038758 m!6907902))

(declare-fun m!6908912 () Bool)

(assert (=> b!6038758 m!6908912))

(assert (=> b!6038758 m!6908908))

(declare-fun m!6908914 () Bool)

(assert (=> b!6038758 m!6908914))

(assert (=> b!6038762 m!6908900))

(assert (=> b!6037556 d!1893608))

(declare-fun d!1893610 () Bool)

(assert (=> d!1893610 (= (maxBigInt!0 (ite c!1082292 call!493633 call!493635) (ite c!1082292 call!493635 call!493633)) (ite (>= (ite c!1082292 call!493633 call!493635) (ite c!1082292 call!493635 call!493633)) (ite c!1082292 call!493633 call!493635) (ite c!1082292 call!493635 call!493633)))))

(assert (=> bm!493626 d!1893610))

(assert (=> b!6037516 d!1893512))

(assert (=> b!6037516 d!1893514))

(declare-fun d!1893612 () Bool)

(assert (=> d!1893612 (= (isEmpty!36140 (tail!11663 (unfocusZipperList!1441 zl!343))) (is-Nil!64235 (tail!11663 (unfocusZipperList!1441 zl!343))))))

(assert (=> b!6037747 d!1893612))

(declare-fun d!1893614 () Bool)

(assert (=> d!1893614 (= (tail!11663 (unfocusZipperList!1441 zl!343)) (t!377788 (unfocusZipperList!1441 zl!343)))))

(assert (=> b!6037747 d!1893614))

(declare-fun bm!493783 () Bool)

(declare-fun call!493793 () Int)

(declare-fun call!493792 () Int)

(assert (=> bm!493783 (= call!493793 call!493792)))

(declare-fun b!6038766 () Bool)

(declare-fun e!3688619 () Bool)

(declare-fun e!3688620 () Bool)

(assert (=> b!6038766 (= e!3688619 e!3688620)))

(declare-fun c!1082543 () Bool)

(assert (=> b!6038766 (= c!1082543 (is-Concat!24865 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(declare-fun c!1082542 () Bool)

(declare-fun b!6038767 () Bool)

(assert (=> b!6038767 (= c!1082542 (is-Union!16020 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(declare-fun e!3688627 () Int)

(declare-fun e!3688628 () Int)

(assert (=> b!6038767 (= e!3688627 e!3688628)))

(declare-fun b!6038768 () Bool)

(declare-fun c!1082545 () Bool)

(assert (=> b!6038768 (= c!1082545 (is-Star!16020 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(declare-fun e!3688622 () Bool)

(assert (=> b!6038768 (= e!3688620 e!3688622)))

(declare-fun b!6038769 () Bool)

(declare-fun e!3688623 () Int)

(declare-fun call!493789 () Int)

(assert (=> b!6038769 (= e!3688623 (+ 1 call!493789))))

(declare-fun b!6038770 () Bool)

(assert (=> b!6038770 (= e!3688628 (+ 1 call!493789))))

(declare-fun b!6038771 () Bool)

(declare-fun lt!2323079 () Int)

(assert (=> b!6038771 (= e!3688622 (= lt!2323079 1))))

(declare-fun bm!493784 () Bool)

(declare-fun call!493791 () Int)

(assert (=> bm!493784 (= call!493789 (maxBigInt!0 (ite c!1082542 call!493791 call!493793) (ite c!1082542 call!493793 call!493791)))))

(declare-fun c!1082541 () Bool)

(declare-fun bm!493785 () Bool)

(assert (=> bm!493785 (= call!493792 (regexDepth!277 (ite c!1082541 (reg!16349 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))) (ite c!1082542 (regTwo!32553 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))) (regOne!32552 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292))))))))))

(declare-fun b!6038772 () Bool)

(declare-fun call!493794 () Int)

(assert (=> b!6038772 (= e!3688622 (> lt!2323079 call!493794))))

(declare-fun b!6038773 () Bool)

(assert (=> b!6038773 (= e!3688627 (+ 1 call!493792))))

(declare-fun c!1082544 () Bool)

(declare-fun bm!493786 () Bool)

(declare-fun call!493788 () Int)

(assert (=> bm!493786 (= call!493788 (regexDepth!277 (ite c!1082544 (regOne!32553 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))) (regTwo!32552 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))))

(declare-fun b!6038774 () Bool)

(declare-fun e!3688626 () Bool)

(assert (=> b!6038774 (= e!3688619 e!3688626)))

(declare-fun res!2514305 () Bool)

(assert (=> b!6038774 (= res!2514305 (> lt!2323079 call!493788))))

(assert (=> b!6038774 (=> (not res!2514305) (not e!3688626))))

(declare-fun b!6038775 () Bool)

(declare-fun res!2514307 () Bool)

(declare-fun e!3688624 () Bool)

(assert (=> b!6038775 (=> (not res!2514307) (not e!3688624))))

(assert (=> b!6038775 (= res!2514307 (> lt!2323079 call!493794))))

(assert (=> b!6038775 (= e!3688620 e!3688624)))

(declare-fun b!6038765 () Bool)

(assert (=> b!6038765 (= e!3688623 1)))

(declare-fun d!1893616 () Bool)

(declare-fun e!3688625 () Bool)

(assert (=> d!1893616 e!3688625))

(declare-fun res!2514306 () Bool)

(assert (=> d!1893616 (=> (not res!2514306) (not e!3688625))))

(assert (=> d!1893616 (= res!2514306 (> lt!2323079 0))))

(declare-fun e!3688621 () Int)

(assert (=> d!1893616 (= lt!2323079 e!3688621)))

(declare-fun c!1082540 () Bool)

(assert (=> d!1893616 (= c!1082540 (is-ElementMatch!16020 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(assert (=> d!1893616 (= (regexDepth!277 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))) lt!2323079)))

(declare-fun b!6038776 () Bool)

(assert (=> b!6038776 (= e!3688624 (> lt!2323079 call!493788))))

(declare-fun call!493790 () Int)

(declare-fun bm!493787 () Bool)

(assert (=> bm!493787 (= call!493790 (regexDepth!277 (ite c!1082544 (regTwo!32553 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))) (ite c!1082543 (regOne!32552 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))) (reg!16349 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292))))))))))

(declare-fun bm!493788 () Bool)

(assert (=> bm!493788 (= call!493791 (regexDepth!277 (ite c!1082542 (regOne!32553 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))) (regTwo!32552 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))))

(declare-fun b!6038777 () Bool)

(assert (=> b!6038777 (= e!3688621 1)))

(declare-fun b!6038778 () Bool)

(assert (=> b!6038778 (= e!3688626 (> lt!2323079 call!493790))))

(declare-fun bm!493789 () Bool)

(assert (=> bm!493789 (= call!493794 call!493790)))

(declare-fun b!6038779 () Bool)

(assert (=> b!6038779 (= e!3688628 e!3688623)))

(declare-fun c!1082546 () Bool)

(assert (=> b!6038779 (= c!1082546 (is-Concat!24865 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(declare-fun b!6038780 () Bool)

(assert (=> b!6038780 (= e!3688625 e!3688619)))

(assert (=> b!6038780 (= c!1082544 (is-Union!16020 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(declare-fun b!6038781 () Bool)

(assert (=> b!6038781 (= e!3688621 e!3688627)))

(assert (=> b!6038781 (= c!1082541 (is-Star!16020 (ite c!1082284 (reg!16349 r!7292) (ite c!1082285 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(assert (= (and d!1893616 c!1082540) b!6038777))

(assert (= (and d!1893616 (not c!1082540)) b!6038781))

(assert (= (and b!6038781 c!1082541) b!6038773))

(assert (= (and b!6038781 (not c!1082541)) b!6038767))

(assert (= (and b!6038767 c!1082542) b!6038770))

(assert (= (and b!6038767 (not c!1082542)) b!6038779))

(assert (= (and b!6038779 c!1082546) b!6038769))

(assert (= (and b!6038779 (not c!1082546)) b!6038765))

(assert (= (or b!6038770 b!6038769) bm!493783))

(assert (= (or b!6038770 b!6038769) bm!493788))

(assert (= (or b!6038770 b!6038769) bm!493784))

(assert (= (or b!6038773 bm!493783) bm!493785))

(assert (= (and d!1893616 res!2514306) b!6038780))

(assert (= (and b!6038780 c!1082544) b!6038774))

(assert (= (and b!6038780 (not c!1082544)) b!6038766))

(assert (= (and b!6038774 res!2514305) b!6038778))

(assert (= (and b!6038766 c!1082543) b!6038775))

(assert (= (and b!6038766 (not c!1082543)) b!6038768))

(assert (= (and b!6038775 res!2514307) b!6038776))

(assert (= (and b!6038768 c!1082545) b!6038772))

(assert (= (and b!6038768 (not c!1082545)) b!6038771))

(assert (= (or b!6038775 b!6038772) bm!493789))

(assert (= (or b!6038778 bm!493789) bm!493787))

(assert (= (or b!6038774 b!6038776) bm!493786))

(declare-fun m!6908916 () Bool)

(assert (=> bm!493786 m!6908916))

(declare-fun m!6908918 () Bool)

(assert (=> bm!493787 m!6908918))

(declare-fun m!6908920 () Bool)

(assert (=> bm!493784 m!6908920))

(declare-fun m!6908922 () Bool)

(assert (=> bm!493788 m!6908922))

(declare-fun m!6908924 () Bool)

(assert (=> bm!493785 m!6908924))

(assert (=> bm!493620 d!1893616))

(assert (=> d!1893244 d!1893242))

(assert (=> d!1893244 d!1893290))

(declare-fun d!1893618 () Bool)

(assert (=> d!1893618 (= (matchR!8203 (regTwo!32552 r!7292) s!2326) (matchZipper!2056 lt!2322722 s!2326))))

(assert (=> d!1893618 true))

(declare-fun _$44!1505 () Unit!157311)

(assert (=> d!1893618 (= (choose!45118 lt!2322722 lt!2322709 (regTwo!32552 r!7292) s!2326) _$44!1505)))

(declare-fun bs!1489358 () Bool)

(assert (= bs!1489358 d!1893618))

(assert (=> bs!1489358 m!6907650))

(assert (=> bs!1489358 m!6907586))

(assert (=> d!1893244 d!1893618))

(assert (=> d!1893244 d!1893338))

(assert (=> bs!1489048 d!1893320))

(declare-fun d!1893620 () Bool)

(assert (=> d!1893620 (= (nullable!6015 (h!70683 (exprs!5904 (h!70684 zl!343)))) (nullableFct!1985 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun bs!1489359 () Bool)

(assert (= bs!1489359 d!1893620))

(declare-fun m!6908926 () Bool)

(assert (=> bs!1489359 m!6908926))

(assert (=> b!6037586 d!1893620))

(declare-fun b!6038782 () Bool)

(declare-fun e!3688629 () (Set Context!10808))

(declare-fun e!3688631 () (Set Context!10808))

(assert (=> b!6038782 (= e!3688629 e!3688631)))

(declare-fun c!1082547 () Bool)

(assert (=> b!6038782 (= c!1082547 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))))))

(declare-fun b!6038783 () Bool)

(declare-fun e!3688630 () Bool)

(assert (=> b!6038783 (= e!3688630 (nullable!6015 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))))))))

(declare-fun bm!493790 () Bool)

(declare-fun call!493795 () (Set Context!10808))

(assert (=> bm!493790 (= call!493795 (derivationStepZipperDown!1270 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))) (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))))) (h!70685 s!2326)))))

(declare-fun d!1893622 () Bool)

(declare-fun c!1082548 () Bool)

(assert (=> d!1893622 (= c!1082548 e!3688630)))

(declare-fun res!2514308 () Bool)

(assert (=> d!1893622 (=> (not res!2514308) (not e!3688630))))

(assert (=> d!1893622 (= res!2514308 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698))))))))

(assert (=> d!1893622 (= (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 lt!2322698))) (h!70685 s!2326)) e!3688629)))

(declare-fun b!6038784 () Bool)

(assert (=> b!6038784 (= e!3688629 (set.union call!493795 (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322698)))))) (h!70685 s!2326))))))

(declare-fun b!6038785 () Bool)

(assert (=> b!6038785 (= e!3688631 (as set.empty (Set Context!10808)))))

(declare-fun b!6038786 () Bool)

(assert (=> b!6038786 (= e!3688631 call!493795)))

(assert (= (and d!1893622 res!2514308) b!6038783))

(assert (= (and d!1893622 c!1082548) b!6038784))

(assert (= (and d!1893622 (not c!1082548)) b!6038782))

(assert (= (and b!6038782 c!1082547) b!6038786))

(assert (= (and b!6038782 (not c!1082547)) b!6038785))

(assert (= (or b!6038784 b!6038786) bm!493790))

(declare-fun m!6908928 () Bool)

(assert (=> b!6038783 m!6908928))

(declare-fun m!6908930 () Bool)

(assert (=> bm!493790 m!6908930))

(declare-fun m!6908932 () Bool)

(assert (=> b!6038784 m!6908932))

(assert (=> b!6037713 d!1893622))

(declare-fun bs!1489360 () Bool)

(declare-fun d!1893624 () Bool)

(assert (= bs!1489360 (and d!1893624 d!1893522)))

(declare-fun lambda!329401 () Int)

(assert (=> bs!1489360 (not (= lambda!329401 lambda!329382))))

(declare-fun bs!1489361 () Bool)

(assert (= bs!1489361 (and d!1893624 d!1893334)))

(assert (=> bs!1489361 (= lambda!329401 lambda!329310)))

(declare-fun bs!1489362 () Bool)

(assert (= bs!1489362 (and d!1893624 d!1893280)))

(assert (=> bs!1489362 (= lambda!329401 lambda!329287)))

(declare-fun bs!1489363 () Bool)

(assert (= bs!1489363 (and d!1893624 b!6037654)))

(assert (=> bs!1489363 (not (= lambda!329401 lambda!329296))))

(declare-fun bs!1489364 () Bool)

(assert (= bs!1489364 (and d!1893624 b!6037659)))

(assert (=> bs!1489364 (not (= lambda!329401 lambda!329298))))

(declare-fun bs!1489365 () Bool)

(assert (= bs!1489365 (and d!1893624 b!6038563)))

(assert (=> bs!1489365 (not (= lambda!329401 lambda!329378))))

(declare-fun bs!1489366 () Bool)

(assert (= bs!1489366 (and d!1893624 d!1893332)))

(assert (=> bs!1489366 (= lambda!329401 lambda!329307)))

(declare-fun bs!1489367 () Bool)

(assert (= bs!1489367 (and d!1893624 d!1893344)))

(assert (=> bs!1489367 (= lambda!329401 lambda!329311)))

(declare-fun bs!1489368 () Bool)

(assert (= bs!1489368 (and d!1893624 d!1893548)))

(assert (=> bs!1489368 (= lambda!329401 lambda!329387)))

(declare-fun bs!1489369 () Bool)

(assert (= bs!1489369 (and d!1893624 b!6038692)))

(assert (=> bs!1489369 (not (= lambda!329401 lambda!329396))))

(declare-fun bs!1489370 () Bool)

(assert (= bs!1489370 (and d!1893624 d!1893506)))

(assert (=> bs!1489370 (not (= lambda!329401 lambda!329381))))

(declare-fun bs!1489371 () Bool)

(assert (= bs!1489371 (and d!1893624 d!1893330)))

(assert (=> bs!1489371 (= lambda!329401 lambda!329304)))

(declare-fun bs!1489372 () Bool)

(assert (= bs!1489372 (and d!1893624 b!6038561)))

(assert (=> bs!1489372 (not (= lambda!329401 lambda!329377))))

(declare-fun bs!1489373 () Bool)

(assert (= bs!1489373 (and d!1893624 b!6038598)))

(assert (=> bs!1489373 (not (= lambda!329401 lambda!329384))))

(declare-fun bs!1489374 () Bool)

(assert (= bs!1489374 (and d!1893624 b!6038694)))

(assert (=> bs!1489374 (not (= lambda!329401 lambda!329397))))

(declare-fun bs!1489375 () Bool)

(assert (= bs!1489375 (and d!1893624 b!6037661)))

(assert (=> bs!1489375 (not (= lambda!329401 lambda!329299))))

(declare-fun bs!1489376 () Bool)

(assert (= bs!1489376 (and d!1893624 b!6037718)))

(assert (=> bs!1489376 (not (= lambda!329401 lambda!329301))))

(declare-fun bs!1489377 () Bool)

(assert (= bs!1489377 (and d!1893624 b!6038596)))

(assert (=> bs!1489377 (not (= lambda!329401 lambda!329383))))

(declare-fun bs!1489378 () Bool)

(assert (= bs!1489378 (and d!1893624 b!6037716)))

(assert (=> bs!1489378 (not (= lambda!329401 lambda!329300))))

(declare-fun bs!1489379 () Bool)

(assert (= bs!1489379 (and d!1893624 b!6037656)))

(assert (=> bs!1489379 (not (= lambda!329401 lambda!329297))))

(assert (=> d!1893624 (= (inv!83298 (h!70684 (t!377789 zl!343))) (forall!15128 (exprs!5904 (h!70684 (t!377789 zl!343))) lambda!329401))))

(declare-fun bs!1489380 () Bool)

(assert (= bs!1489380 d!1893624))

(declare-fun m!6908934 () Bool)

(assert (=> bs!1489380 m!6908934))

(assert (=> b!6037980 d!1893624))

(declare-fun b!6038787 () Bool)

(declare-fun e!3688634 () (Set Context!10808))

(declare-fun call!493800 () (Set Context!10808))

(assert (=> b!6038787 (= e!3688634 call!493800)))

(declare-fun call!493798 () List!64359)

(declare-fun c!1082549 () Bool)

(declare-fun bm!493791 () Bool)

(declare-fun call!493799 () (Set Context!10808))

(declare-fun c!1082553 () Bool)

(declare-fun c!1082552 () Bool)

(assert (=> bm!493791 (= call!493799 (derivationStepZipperDown!1270 (ite c!1082552 (regOne!32553 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))) (ite c!1082553 (regTwo!32552 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))) (ite c!1082549 (regOne!32552 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))) (reg!16349 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292))))))) (ite (or c!1082552 c!1082553) (ite c!1082204 lt!2322733 (Context!10809 call!493583)) (Context!10809 call!493798)) (h!70685 s!2326)))))

(declare-fun b!6038788 () Bool)

(declare-fun e!3688635 () (Set Context!10808))

(declare-fun e!3688637 () (Set Context!10808))

(assert (=> b!6038788 (= e!3688635 e!3688637)))

(assert (=> b!6038788 (= c!1082549 (is-Concat!24865 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))))))

(declare-fun d!1893626 () Bool)

(declare-fun c!1082550 () Bool)

(assert (=> d!1893626 (= c!1082550 (and (is-ElementMatch!16020 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))) (= (c!1082125 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))) (h!70685 s!2326))))))

(declare-fun e!3688636 () (Set Context!10808))

(assert (=> d!1893626 (= (derivationStepZipperDown!1270 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292))) (ite c!1082204 lt!2322733 (Context!10809 call!493583)) (h!70685 s!2326)) e!3688636)))

(declare-fun bm!493792 () Bool)

(declare-fun call!493796 () (Set Context!10808))

(assert (=> bm!493792 (= call!493800 call!493796)))

(declare-fun b!6038789 () Bool)

(declare-fun e!3688632 () Bool)

(assert (=> b!6038789 (= e!3688632 (nullable!6015 (regOne!32552 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292))))))))

(declare-fun bm!493793 () Bool)

(assert (=> bm!493793 (= call!493796 call!493799)))

(declare-fun b!6038790 () Bool)

(declare-fun c!1082551 () Bool)

(assert (=> b!6038790 (= c!1082551 (is-Star!16020 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))))))

(assert (=> b!6038790 (= e!3688637 e!3688634)))

(declare-fun call!493801 () List!64359)

(declare-fun bm!493794 () Bool)

(assert (=> bm!493794 (= call!493801 ($colon$colon!1905 (exprs!5904 (ite c!1082204 lt!2322733 (Context!10809 call!493583))) (ite (or c!1082553 c!1082549) (regTwo!32552 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))) (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292))))))))

(declare-fun b!6038791 () Bool)

(declare-fun call!493797 () (Set Context!10808))

(assert (=> b!6038791 (= e!3688635 (set.union call!493797 call!493796))))

(declare-fun b!6038792 () Bool)

(assert (=> b!6038792 (= e!3688636 (set.insert (ite c!1082204 lt!2322733 (Context!10809 call!493583)) (as set.empty (Set Context!10808))))))

(declare-fun bm!493795 () Bool)

(assert (=> bm!493795 (= call!493797 (derivationStepZipperDown!1270 (ite c!1082552 (regTwo!32553 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))) (regOne!32552 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292))))) (ite c!1082552 (ite c!1082204 lt!2322733 (Context!10809 call!493583)) (Context!10809 call!493801)) (h!70685 s!2326)))))

(declare-fun bm!493796 () Bool)

(assert (=> bm!493796 (= call!493798 call!493801)))

(declare-fun b!6038793 () Bool)

(assert (=> b!6038793 (= e!3688637 call!493800)))

(declare-fun b!6038794 () Bool)

(declare-fun e!3688633 () (Set Context!10808))

(assert (=> b!6038794 (= e!3688636 e!3688633)))

(assert (=> b!6038794 (= c!1082552 (is-Union!16020 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))))))

(declare-fun b!6038795 () Bool)

(assert (=> b!6038795 (= c!1082553 e!3688632)))

(declare-fun res!2514309 () Bool)

(assert (=> b!6038795 (=> (not res!2514309) (not e!3688632))))

(assert (=> b!6038795 (= res!2514309 (is-Concat!24865 (ite c!1082204 (regTwo!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))))))

(assert (=> b!6038795 (= e!3688633 e!3688635)))

(declare-fun b!6038796 () Bool)

(assert (=> b!6038796 (= e!3688633 (set.union call!493799 call!493797))))

(declare-fun b!6038797 () Bool)

(assert (=> b!6038797 (= e!3688634 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893626 c!1082550) b!6038792))

(assert (= (and d!1893626 (not c!1082550)) b!6038794))

(assert (= (and b!6038794 c!1082552) b!6038796))

(assert (= (and b!6038794 (not c!1082552)) b!6038795))

(assert (= (and b!6038795 res!2514309) b!6038789))

(assert (= (and b!6038795 c!1082553) b!6038791))

(assert (= (and b!6038795 (not c!1082553)) b!6038788))

(assert (= (and b!6038788 c!1082549) b!6038793))

(assert (= (and b!6038788 (not c!1082549)) b!6038790))

(assert (= (and b!6038790 c!1082551) b!6038787))

(assert (= (and b!6038790 (not c!1082551)) b!6038797))

(assert (= (or b!6038793 b!6038787) bm!493796))

(assert (= (or b!6038793 b!6038787) bm!493792))

(assert (= (or b!6038791 bm!493796) bm!493794))

(assert (= (or b!6038791 bm!493792) bm!493793))

(assert (= (or b!6038796 b!6038791) bm!493795))

(assert (= (or b!6038796 bm!493793) bm!493791))

(declare-fun m!6908936 () Bool)

(assert (=> bm!493795 m!6908936))

(declare-fun m!6908938 () Bool)

(assert (=> b!6038792 m!6908938))

(declare-fun m!6908940 () Bool)

(assert (=> bm!493791 m!6908940))

(declare-fun m!6908942 () Bool)

(assert (=> bm!493794 m!6908942))

(declare-fun m!6908944 () Bool)

(assert (=> b!6038789 m!6908944))

(assert (=> bm!493577 d!1893626))

(assert (=> d!1893318 d!1893306))

(declare-fun d!1893628 () Bool)

(assert (=> d!1893628 (= (flatMap!1533 lt!2322722 lambda!329245) (dynLambda!25214 lambda!329245 lt!2322733))))

(assert (=> d!1893628 true))

(declare-fun _$13!2845 () Unit!157311)

(assert (=> d!1893628 (= (choose!45124 lt!2322722 lt!2322733 lambda!329245) _$13!2845)))

(declare-fun b_lambda!229091 () Bool)

(assert (=> (not b_lambda!229091) (not d!1893628)))

(declare-fun bs!1489381 () Bool)

(assert (= bs!1489381 d!1893628))

(assert (=> bs!1489381 m!6907680))

(assert (=> bs!1489381 m!6908082))

(assert (=> d!1893318 d!1893628))

(declare-fun d!1893630 () Bool)

(assert (=> d!1893630 (= (nullable!6015 r!7292) (nullableFct!1985 r!7292))))

(declare-fun bs!1489382 () Bool)

(assert (= bs!1489382 d!1893630))

(declare-fun m!6908946 () Bool)

(assert (=> bs!1489382 m!6908946))

(assert (=> b!6037880 d!1893630))

(declare-fun d!1893632 () Bool)

(assert (=> d!1893632 (= ($colon$colon!1905 (exprs!5904 lt!2322716) (ite (or c!1082210 c!1082206) (regTwo!32552 (regTwo!32552 r!7292)) (regTwo!32552 r!7292))) (Cons!64235 (ite (or c!1082210 c!1082206) (regTwo!32552 (regTwo!32552 r!7292)) (regTwo!32552 r!7292)) (exprs!5904 lt!2322716)))))

(assert (=> bm!493582 d!1893632))

(declare-fun d!1893634 () Bool)

(assert (=> d!1893634 (= (isDefined!12614 lt!2322869) (not (isEmpty!36144 lt!2322869)))))

(declare-fun bs!1489383 () Bool)

(assert (= bs!1489383 d!1893634))

(declare-fun m!6908948 () Bool)

(assert (=> bs!1489383 m!6908948))

(assert (=> b!6037560 d!1893634))

(declare-fun bm!493797 () Bool)

(declare-fun call!493807 () Int)

(declare-fun call!493806 () Int)

(assert (=> bm!493797 (= call!493807 call!493806)))

(declare-fun b!6038799 () Bool)

(declare-fun e!3688638 () Bool)

(declare-fun e!3688639 () Bool)

(assert (=> b!6038799 (= e!3688638 e!3688639)))

(declare-fun c!1082557 () Bool)

(assert (=> b!6038799 (= c!1082557 (is-Concat!24865 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun b!6038800 () Bool)

(declare-fun c!1082556 () Bool)

(assert (=> b!6038800 (= c!1082556 (is-Union!16020 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun e!3688646 () Int)

(declare-fun e!3688647 () Int)

(assert (=> b!6038800 (= e!3688646 e!3688647)))

(declare-fun b!6038801 () Bool)

(declare-fun c!1082559 () Bool)

(assert (=> b!6038801 (= c!1082559 (is-Star!16020 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun e!3688641 () Bool)

(assert (=> b!6038801 (= e!3688639 e!3688641)))

(declare-fun b!6038802 () Bool)

(declare-fun e!3688642 () Int)

(declare-fun call!493803 () Int)

(assert (=> b!6038802 (= e!3688642 (+ 1 call!493803))))

(declare-fun b!6038803 () Bool)

(assert (=> b!6038803 (= e!3688647 (+ 1 call!493803))))

(declare-fun b!6038804 () Bool)

(declare-fun lt!2323080 () Int)

(assert (=> b!6038804 (= e!3688641 (= lt!2323080 1))))

(declare-fun call!493805 () Int)

(declare-fun bm!493798 () Bool)

(assert (=> bm!493798 (= call!493803 (maxBigInt!0 (ite c!1082556 call!493805 call!493807) (ite c!1082556 call!493807 call!493805)))))

(declare-fun c!1082555 () Bool)

(declare-fun bm!493799 () Bool)

(assert (=> bm!493799 (= call!493806 (regexDepth!277 (ite c!1082555 (reg!16349 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (ite c!1082556 (regTwo!32553 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (regOne!32552 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697)))))))))

(declare-fun b!6038805 () Bool)

(declare-fun call!493808 () Int)

(assert (=> b!6038805 (= e!3688641 (> lt!2323080 call!493808))))

(declare-fun b!6038806 () Bool)

(assert (=> b!6038806 (= e!3688646 (+ 1 call!493806))))

(declare-fun bm!493800 () Bool)

(declare-fun c!1082558 () Bool)

(declare-fun call!493802 () Int)

(assert (=> bm!493800 (= call!493802 (regexDepth!277 (ite c!1082558 (regOne!32553 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (regTwo!32552 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))))

(declare-fun b!6038807 () Bool)

(declare-fun e!3688645 () Bool)

(assert (=> b!6038807 (= e!3688638 e!3688645)))

(declare-fun res!2514310 () Bool)

(assert (=> b!6038807 (= res!2514310 (> lt!2323080 call!493802))))

(assert (=> b!6038807 (=> (not res!2514310) (not e!3688645))))

(declare-fun b!6038808 () Bool)

(declare-fun res!2514312 () Bool)

(declare-fun e!3688643 () Bool)

(assert (=> b!6038808 (=> (not res!2514312) (not e!3688643))))

(assert (=> b!6038808 (= res!2514312 (> lt!2323080 call!493808))))

(assert (=> b!6038808 (= e!3688639 e!3688643)))

(declare-fun b!6038798 () Bool)

(assert (=> b!6038798 (= e!3688642 1)))

(declare-fun d!1893636 () Bool)

(declare-fun e!3688644 () Bool)

(assert (=> d!1893636 e!3688644))

(declare-fun res!2514311 () Bool)

(assert (=> d!1893636 (=> (not res!2514311) (not e!3688644))))

(assert (=> d!1893636 (= res!2514311 (> lt!2323080 0))))

(declare-fun e!3688640 () Int)

(assert (=> d!1893636 (= lt!2323080 e!3688640)))

(declare-fun c!1082554 () Bool)

(assert (=> d!1893636 (= c!1082554 (is-ElementMatch!16020 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(assert (=> d!1893636 (= (regexDepth!277 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) lt!2323080)))

(declare-fun b!6038809 () Bool)

(assert (=> b!6038809 (= e!3688643 (> lt!2323080 call!493802))))

(declare-fun bm!493801 () Bool)

(declare-fun call!493804 () Int)

(assert (=> bm!493801 (= call!493804 (regexDepth!277 (ite c!1082558 (regTwo!32553 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (ite c!1082557 (regOne!32552 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (reg!16349 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697)))))))))

(declare-fun bm!493802 () Bool)

(assert (=> bm!493802 (= call!493805 (regexDepth!277 (ite c!1082556 (regOne!32553 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (regTwo!32552 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))))

(declare-fun b!6038810 () Bool)

(assert (=> b!6038810 (= e!3688640 1)))

(declare-fun b!6038811 () Bool)

(assert (=> b!6038811 (= e!3688645 (> lt!2323080 call!493804))))

(declare-fun bm!493803 () Bool)

(assert (=> bm!493803 (= call!493808 call!493804)))

(declare-fun b!6038812 () Bool)

(assert (=> b!6038812 (= e!3688647 e!3688642)))

(declare-fun c!1082560 () Bool)

(assert (=> b!6038812 (= c!1082560 (is-Concat!24865 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun b!6038813 () Bool)

(assert (=> b!6038813 (= e!3688644 e!3688638)))

(assert (=> b!6038813 (= c!1082558 (is-Union!16020 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun b!6038814 () Bool)

(assert (=> b!6038814 (= e!3688640 e!3688646)))

(assert (=> b!6038814 (= c!1082555 (is-Star!16020 (ite c!1082294 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(assert (= (and d!1893636 c!1082554) b!6038810))

(assert (= (and d!1893636 (not c!1082554)) b!6038814))

(assert (= (and b!6038814 c!1082555) b!6038806))

(assert (= (and b!6038814 (not c!1082555)) b!6038800))

(assert (= (and b!6038800 c!1082556) b!6038803))

(assert (= (and b!6038800 (not c!1082556)) b!6038812))

(assert (= (and b!6038812 c!1082560) b!6038802))

(assert (= (and b!6038812 (not c!1082560)) b!6038798))

(assert (= (or b!6038803 b!6038802) bm!493797))

(assert (= (or b!6038803 b!6038802) bm!493802))

(assert (= (or b!6038803 b!6038802) bm!493798))

(assert (= (or b!6038806 bm!493797) bm!493799))

(assert (= (and d!1893636 res!2514311) b!6038813))

(assert (= (and b!6038813 c!1082558) b!6038807))

(assert (= (and b!6038813 (not c!1082558)) b!6038799))

(assert (= (and b!6038807 res!2514310) b!6038811))

(assert (= (and b!6038799 c!1082557) b!6038808))

(assert (= (and b!6038799 (not c!1082557)) b!6038801))

(assert (= (and b!6038808 res!2514312) b!6038809))

(assert (= (and b!6038801 c!1082559) b!6038805))

(assert (= (and b!6038801 (not c!1082559)) b!6038804))

(assert (= (or b!6038808 b!6038805) bm!493803))

(assert (= (or b!6038811 bm!493803) bm!493801))

(assert (= (or b!6038807 b!6038809) bm!493800))

(declare-fun m!6908950 () Bool)

(assert (=> bm!493800 m!6908950))

(declare-fun m!6908952 () Bool)

(assert (=> bm!493801 m!6908952))

(declare-fun m!6908954 () Bool)

(assert (=> bm!493798 m!6908954))

(declare-fun m!6908956 () Bool)

(assert (=> bm!493802 m!6908956))

(declare-fun m!6908958 () Bool)

(assert (=> bm!493799 m!6908958))

(assert (=> bm!493628 d!1893636))

(declare-fun b!6038815 () Bool)

(declare-fun e!3688650 () (Set Context!10808))

(declare-fun call!493813 () (Set Context!10808))

(assert (=> b!6038815 (= e!3688650 call!493813)))

(declare-fun call!493811 () List!64359)

(declare-fun c!1082564 () Bool)

(declare-fun call!493812 () (Set Context!10808))

(declare-fun c!1082565 () Bool)

(declare-fun c!1082561 () Bool)

(declare-fun bm!493804 () Bool)

(assert (=> bm!493804 (= call!493812 (derivationStepZipperDown!1270 (ite c!1082564 (regOne!32553 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))) (ite c!1082565 (regTwo!32552 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))) (ite c!1082561 (regOne!32552 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))) (reg!16349 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))) (ite (or c!1082564 c!1082565) (ite c!1082250 lt!2322716 (Context!10809 call!493600)) (Context!10809 call!493811)) (h!70685 s!2326)))))

(declare-fun b!6038816 () Bool)

(declare-fun e!3688651 () (Set Context!10808))

(declare-fun e!3688653 () (Set Context!10808))

(assert (=> b!6038816 (= e!3688651 e!3688653)))

(assert (=> b!6038816 (= c!1082561 (is-Concat!24865 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))))))

(declare-fun d!1893638 () Bool)

(declare-fun c!1082562 () Bool)

(assert (=> d!1893638 (= c!1082562 (and (is-ElementMatch!16020 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))) (= (c!1082125 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))) (h!70685 s!2326))))))

(declare-fun e!3688652 () (Set Context!10808))

(assert (=> d!1893638 (= (derivationStepZipperDown!1270 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292)) (ite c!1082250 lt!2322716 (Context!10809 call!493600)) (h!70685 s!2326)) e!3688652)))

(declare-fun bm!493805 () Bool)

(declare-fun call!493809 () (Set Context!10808))

(assert (=> bm!493805 (= call!493813 call!493809)))

(declare-fun b!6038817 () Bool)

(declare-fun e!3688648 () Bool)

(assert (=> b!6038817 (= e!3688648 (nullable!6015 (regOne!32552 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(declare-fun bm!493806 () Bool)

(assert (=> bm!493806 (= call!493809 call!493812)))

(declare-fun b!6038818 () Bool)

(declare-fun c!1082563 () Bool)

(assert (=> b!6038818 (= c!1082563 (is-Star!16020 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))))))

(assert (=> b!6038818 (= e!3688653 e!3688650)))

(declare-fun call!493814 () List!64359)

(declare-fun bm!493807 () Bool)

(assert (=> bm!493807 (= call!493814 ($colon$colon!1905 (exprs!5904 (ite c!1082250 lt!2322716 (Context!10809 call!493600))) (ite (or c!1082565 c!1082561) (regTwo!32552 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))) (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292)))))))

(declare-fun b!6038819 () Bool)

(declare-fun call!493810 () (Set Context!10808))

(assert (=> b!6038819 (= e!3688651 (set.union call!493810 call!493809))))

(declare-fun b!6038820 () Bool)

(assert (=> b!6038820 (= e!3688652 (set.insert (ite c!1082250 lt!2322716 (Context!10809 call!493600)) (as set.empty (Set Context!10808))))))

(declare-fun bm!493808 () Bool)

(assert (=> bm!493808 (= call!493810 (derivationStepZipperDown!1270 (ite c!1082564 (regTwo!32553 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))) (regOne!32552 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292)))) (ite c!1082564 (ite c!1082250 lt!2322716 (Context!10809 call!493600)) (Context!10809 call!493814)) (h!70685 s!2326)))))

(declare-fun bm!493809 () Bool)

(assert (=> bm!493809 (= call!493811 call!493814)))

(declare-fun b!6038821 () Bool)

(assert (=> b!6038821 (= e!3688653 call!493813)))

(declare-fun b!6038822 () Bool)

(declare-fun e!3688649 () (Set Context!10808))

(assert (=> b!6038822 (= e!3688652 e!3688649)))

(assert (=> b!6038822 (= c!1082564 (is-Union!16020 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))))))

(declare-fun b!6038823 () Bool)

(assert (=> b!6038823 (= c!1082565 e!3688648)))

(declare-fun res!2514313 () Bool)

(assert (=> b!6038823 (=> (not res!2514313) (not e!3688648))))

(assert (=> b!6038823 (= res!2514313 (is-Concat!24865 (ite c!1082250 (regTwo!32553 r!7292) (regOne!32552 r!7292))))))

(assert (=> b!6038823 (= e!3688649 e!3688651)))

(declare-fun b!6038824 () Bool)

(assert (=> b!6038824 (= e!3688649 (set.union call!493812 call!493810))))

(declare-fun b!6038825 () Bool)

(assert (=> b!6038825 (= e!3688650 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893638 c!1082562) b!6038820))

(assert (= (and d!1893638 (not c!1082562)) b!6038822))

(assert (= (and b!6038822 c!1082564) b!6038824))

(assert (= (and b!6038822 (not c!1082564)) b!6038823))

(assert (= (and b!6038823 res!2514313) b!6038817))

(assert (= (and b!6038823 c!1082565) b!6038819))

(assert (= (and b!6038823 (not c!1082565)) b!6038816))

(assert (= (and b!6038816 c!1082561) b!6038821))

(assert (= (and b!6038816 (not c!1082561)) b!6038818))

(assert (= (and b!6038818 c!1082563) b!6038815))

(assert (= (and b!6038818 (not c!1082563)) b!6038825))

(assert (= (or b!6038821 b!6038815) bm!493809))

(assert (= (or b!6038821 b!6038815) bm!493805))

(assert (= (or b!6038819 bm!493809) bm!493807))

(assert (= (or b!6038819 bm!493805) bm!493806))

(assert (= (or b!6038824 b!6038819) bm!493808))

(assert (= (or b!6038824 bm!493806) bm!493804))

(declare-fun m!6908960 () Bool)

(assert (=> bm!493808 m!6908960))

(declare-fun m!6908962 () Bool)

(assert (=> b!6038820 m!6908962))

(declare-fun m!6908964 () Bool)

(assert (=> bm!493804 m!6908964))

(declare-fun m!6908966 () Bool)

(assert (=> bm!493807 m!6908966))

(declare-fun m!6908968 () Bool)

(assert (=> b!6038817 m!6908968))

(assert (=> bm!493594 d!1893638))

(assert (=> b!6037647 d!1893326))

(assert (=> b!6037872 d!1893512))

(assert (=> b!6037872 d!1893514))

(assert (=> bm!493589 d!1893568))

(declare-fun d!1893640 () Bool)

(assert (=> d!1893640 (= (head!12578 (unfocusZipperList!1441 zl!343)) (h!70683 (unfocusZipperList!1441 zl!343)))))

(assert (=> b!6037743 d!1893640))

(declare-fun bs!1489384 () Bool)

(declare-fun d!1893642 () Bool)

(assert (= bs!1489384 (and d!1893642 b!6037607)))

(declare-fun lambda!329402 () Int)

(assert (=> bs!1489384 (not (= lambda!329402 lambda!329290))))

(declare-fun bs!1489385 () Bool)

(assert (= bs!1489385 (and d!1893642 b!6038691)))

(assert (=> bs!1489385 (not (= lambda!329402 lambda!329395))))

(declare-fun bs!1489386 () Bool)

(assert (= bs!1489386 (and d!1893642 b!6037597)))

(assert (=> bs!1489386 (not (= lambda!329402 lambda!329280))))

(declare-fun bs!1489387 () Bool)

(assert (= bs!1489387 (and d!1893642 b!6037605)))

(assert (=> bs!1489387 (not (= lambda!329402 lambda!329289))))

(declare-fun bs!1489388 () Bool)

(assert (= bs!1489388 (and d!1893642 b!6037602)))

(assert (=> bs!1489388 (not (= lambda!329402 lambda!329283))))

(declare-fun bs!1489389 () Bool)

(assert (= bs!1489389 (and d!1893642 b!6037599)))

(assert (=> bs!1489389 (not (= lambda!329402 lambda!329281))))

(declare-fun bs!1489390 () Bool)

(assert (= bs!1489390 (and d!1893642 b!6037604)))

(assert (=> bs!1489390 (not (= lambda!329402 lambda!329284))))

(declare-fun bs!1489391 () Bool)

(assert (= bs!1489391 (and d!1893642 d!1893580)))

(assert (=> bs!1489391 (not (= lambda!329402 lambda!329400))))

(declare-fun bs!1489392 () Bool)

(assert (= bs!1489392 (and d!1893642 b!6038689)))

(assert (=> bs!1489392 (not (= lambda!329402 lambda!329394))))

(declare-fun bs!1489393 () Bool)

(assert (= bs!1489393 (and d!1893642 d!1893560)))

(assert (=> bs!1489393 (= lambda!329402 lambda!329391)))

(assert (=> d!1893642 (= (nullableZipper!1825 lt!2322699) (exists!2385 lt!2322699 lambda!329402))))

(declare-fun bs!1489394 () Bool)

(assert (= bs!1489394 d!1893642))

(declare-fun m!6908970 () Bool)

(assert (=> bs!1489394 m!6908970))

(assert (=> b!6037641 d!1893642))

(declare-fun d!1893644 () Bool)

(declare-fun res!2514314 () Bool)

(declare-fun e!3688654 () Bool)

(assert (=> d!1893644 (=> res!2514314 e!3688654)))

(assert (=> d!1893644 (= res!2514314 (is-Nil!64236 (Cons!64236 lt!2322710 Nil!64236)))))

(assert (=> d!1893644 (= (forall!15127 (Cons!64236 lt!2322710 Nil!64236) lambda!329281) e!3688654)))

(declare-fun b!6038826 () Bool)

(declare-fun e!3688655 () Bool)

(assert (=> b!6038826 (= e!3688654 e!3688655)))

(declare-fun res!2514315 () Bool)

(assert (=> b!6038826 (=> (not res!2514315) (not e!3688655))))

(assert (=> b!6038826 (= res!2514315 (dynLambda!25217 lambda!329281 (h!70684 (Cons!64236 lt!2322710 Nil!64236))))))

(declare-fun b!6038827 () Bool)

(assert (=> b!6038827 (= e!3688655 (forall!15127 (t!377789 (Cons!64236 lt!2322710 Nil!64236)) lambda!329281))))

(assert (= (and d!1893644 (not res!2514314)) b!6038826))

(assert (= (and b!6038826 res!2514315) b!6038827))

(declare-fun b_lambda!229093 () Bool)

(assert (=> (not b_lambda!229093) (not b!6038826)))

(declare-fun m!6908972 () Bool)

(assert (=> b!6038826 m!6908972))

(declare-fun m!6908974 () Bool)

(assert (=> b!6038827 m!6908974))

(assert (=> b!6037599 d!1893644))

(declare-fun d!1893646 () Bool)

(assert (=> d!1893646 (= (nullable!6015 (reg!16349 r!7292)) (nullableFct!1985 (reg!16349 r!7292)))))

(declare-fun bs!1489395 () Bool)

(assert (= bs!1489395 d!1893646))

(declare-fun m!6908976 () Bool)

(assert (=> bs!1489395 m!6908976))

(assert (=> b!6037627 d!1893646))

(declare-fun d!1893648 () Bool)

(declare-fun c!1082566 () Bool)

(assert (=> d!1893648 (= c!1082566 (isEmpty!36143 (tail!11662 (t!377790 s!2326))))))

(declare-fun e!3688656 () Bool)

(assert (=> d!1893648 (= (matchZipper!2056 (derivationStepZipper!2001 lt!2322706 (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))) e!3688656)))

(declare-fun b!6038828 () Bool)

(assert (=> b!6038828 (= e!3688656 (nullableZipper!1825 (derivationStepZipper!2001 lt!2322706 (head!12577 (t!377790 s!2326)))))))

(declare-fun b!6038829 () Bool)

(assert (=> b!6038829 (= e!3688656 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322706 (head!12577 (t!377790 s!2326))) (head!12577 (tail!11662 (t!377790 s!2326)))) (tail!11662 (tail!11662 (t!377790 s!2326)))))))

(assert (= (and d!1893648 c!1082566) b!6038828))

(assert (= (and d!1893648 (not c!1082566)) b!6038829))

(assert (=> d!1893648 m!6907876))

(assert (=> d!1893648 m!6908740))

(assert (=> b!6038828 m!6908108))

(declare-fun m!6908978 () Bool)

(assert (=> b!6038828 m!6908978))

(assert (=> b!6038829 m!6907876))

(assert (=> b!6038829 m!6908744))

(assert (=> b!6038829 m!6908108))

(assert (=> b!6038829 m!6908744))

(declare-fun m!6908980 () Bool)

(assert (=> b!6038829 m!6908980))

(assert (=> b!6038829 m!6907876))

(assert (=> b!6038829 m!6908748))

(assert (=> b!6038829 m!6908980))

(assert (=> b!6038829 m!6908748))

(declare-fun m!6908982 () Bool)

(assert (=> b!6038829 m!6908982))

(assert (=> b!6037720 d!1893648))

(declare-fun bs!1489396 () Bool)

(declare-fun d!1893650 () Bool)

(assert (= bs!1489396 (and d!1893650 d!1893552)))

(declare-fun lambda!329403 () Int)

(assert (=> bs!1489396 (= lambda!329403 lambda!329388)))

(declare-fun bs!1489397 () Bool)

(assert (= bs!1489397 (and d!1893650 d!1893572)))

(assert (=> bs!1489397 (= lambda!329403 lambda!329392)))

(declare-fun bs!1489398 () Bool)

(assert (= bs!1489398 (and d!1893650 d!1893288)))

(assert (=> bs!1489398 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329403 lambda!329291))))

(declare-fun bs!1489399 () Bool)

(assert (= bs!1489399 (and d!1893650 b!6037340)))

(assert (=> bs!1489399 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329403 lambda!329245))))

(declare-fun bs!1489400 () Bool)

(assert (= bs!1489400 (and d!1893650 d!1893350)))

(assert (=> bs!1489400 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329403 lambda!329312))))

(declare-fun bs!1489401 () Bool)

(assert (= bs!1489401 (and d!1893650 d!1893252)))

(assert (=> bs!1489401 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329403 lambda!329263))))

(assert (=> d!1893650 true))

(assert (=> d!1893650 (= (derivationStepZipper!2001 lt!2322706 (head!12577 (t!377790 s!2326))) (flatMap!1533 lt!2322706 lambda!329403))))

(declare-fun bs!1489402 () Bool)

(assert (= bs!1489402 d!1893650))

(declare-fun m!6908984 () Bool)

(assert (=> bs!1489402 m!6908984))

(assert (=> b!6037720 d!1893650))

(assert (=> b!6037720 d!1893554))

(assert (=> b!6037720 d!1893556))

(declare-fun b!6038830 () Bool)

(declare-fun e!3688657 () (Set Context!10808))

(declare-fun e!3688659 () (Set Context!10808))

(assert (=> b!6038830 (= e!3688657 e!3688659)))

(declare-fun c!1082567 () Bool)

(assert (=> b!6038830 (= c!1082567 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))))))

(declare-fun b!6038831 () Bool)

(declare-fun e!3688658 () Bool)

(assert (=> b!6038831 (= e!3688658 (nullable!6015 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))))))))

(declare-fun bm!493810 () Bool)

(declare-fun call!493815 () (Set Context!10808))

(assert (=> bm!493810 (= call!493815 (derivationStepZipperDown!1270 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))) (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))))) (h!70685 s!2326)))))

(declare-fun d!1893652 () Bool)

(declare-fun c!1082568 () Bool)

(assert (=> d!1893652 (= c!1082568 e!3688658)))

(declare-fun res!2514316 () Bool)

(assert (=> d!1893652 (=> (not res!2514316) (not e!3688658))))

(assert (=> d!1893652 (= res!2514316 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))))))

(assert (=> d!1893652 (= (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 lt!2322710))) (h!70685 s!2326)) e!3688657)))

(declare-fun b!6038832 () Bool)

(assert (=> b!6038832 (= e!3688657 (set.union call!493815 (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))))) (h!70685 s!2326))))))

(declare-fun b!6038833 () Bool)

(assert (=> b!6038833 (= e!3688659 (as set.empty (Set Context!10808)))))

(declare-fun b!6038834 () Bool)

(assert (=> b!6038834 (= e!3688659 call!493815)))

(assert (= (and d!1893652 res!2514316) b!6038831))

(assert (= (and d!1893652 c!1082568) b!6038832))

(assert (= (and d!1893652 (not c!1082568)) b!6038830))

(assert (= (and b!6038830 c!1082567) b!6038834))

(assert (= (and b!6038830 (not c!1082567)) b!6038833))

(assert (= (or b!6038832 b!6038834) bm!493810))

(declare-fun m!6908986 () Bool)

(assert (=> b!6038831 m!6908986))

(declare-fun m!6908988 () Bool)

(assert (=> bm!493810 m!6908988))

(declare-fun m!6908990 () Bool)

(assert (=> b!6038832 m!6908990))

(assert (=> b!6037823 d!1893652))

(assert (=> b!6037755 d!1893334))

(declare-fun bs!1489403 () Bool)

(declare-fun d!1893654 () Bool)

(assert (= bs!1489403 (and d!1893654 d!1893522)))

(declare-fun lambda!329404 () Int)

(assert (=> bs!1489403 (not (= lambda!329404 lambda!329382))))

(declare-fun bs!1489404 () Bool)

(assert (= bs!1489404 (and d!1893654 d!1893280)))

(assert (=> bs!1489404 (= lambda!329404 lambda!329287)))

(declare-fun bs!1489405 () Bool)

(assert (= bs!1489405 (and d!1893654 b!6037654)))

(assert (=> bs!1489405 (not (= lambda!329404 lambda!329296))))

(declare-fun bs!1489406 () Bool)

(assert (= bs!1489406 (and d!1893654 b!6037659)))

(assert (=> bs!1489406 (not (= lambda!329404 lambda!329298))))

(declare-fun bs!1489407 () Bool)

(assert (= bs!1489407 (and d!1893654 b!6038563)))

(assert (=> bs!1489407 (not (= lambda!329404 lambda!329378))))

(declare-fun bs!1489408 () Bool)

(assert (= bs!1489408 (and d!1893654 d!1893332)))

(assert (=> bs!1489408 (= lambda!329404 lambda!329307)))

(declare-fun bs!1489409 () Bool)

(assert (= bs!1489409 (and d!1893654 d!1893344)))

(assert (=> bs!1489409 (= lambda!329404 lambda!329311)))

(declare-fun bs!1489410 () Bool)

(assert (= bs!1489410 (and d!1893654 d!1893548)))

(assert (=> bs!1489410 (= lambda!329404 lambda!329387)))

(declare-fun bs!1489411 () Bool)

(assert (= bs!1489411 (and d!1893654 b!6038692)))

(assert (=> bs!1489411 (not (= lambda!329404 lambda!329396))))

(declare-fun bs!1489412 () Bool)

(assert (= bs!1489412 (and d!1893654 d!1893334)))

(assert (=> bs!1489412 (= lambda!329404 lambda!329310)))

(declare-fun bs!1489413 () Bool)

(assert (= bs!1489413 (and d!1893654 d!1893624)))

(assert (=> bs!1489413 (= lambda!329404 lambda!329401)))

(declare-fun bs!1489414 () Bool)

(assert (= bs!1489414 (and d!1893654 d!1893506)))

(assert (=> bs!1489414 (not (= lambda!329404 lambda!329381))))

(declare-fun bs!1489415 () Bool)

(assert (= bs!1489415 (and d!1893654 d!1893330)))

(assert (=> bs!1489415 (= lambda!329404 lambda!329304)))

(declare-fun bs!1489416 () Bool)

(assert (= bs!1489416 (and d!1893654 b!6038561)))

(assert (=> bs!1489416 (not (= lambda!329404 lambda!329377))))

(declare-fun bs!1489417 () Bool)

(assert (= bs!1489417 (and d!1893654 b!6038598)))

(assert (=> bs!1489417 (not (= lambda!329404 lambda!329384))))

(declare-fun bs!1489418 () Bool)

(assert (= bs!1489418 (and d!1893654 b!6038694)))

(assert (=> bs!1489418 (not (= lambda!329404 lambda!329397))))

(declare-fun bs!1489419 () Bool)

(assert (= bs!1489419 (and d!1893654 b!6037661)))

(assert (=> bs!1489419 (not (= lambda!329404 lambda!329299))))

(declare-fun bs!1489420 () Bool)

(assert (= bs!1489420 (and d!1893654 b!6037718)))

(assert (=> bs!1489420 (not (= lambda!329404 lambda!329301))))

(declare-fun bs!1489421 () Bool)

(assert (= bs!1489421 (and d!1893654 b!6038596)))

(assert (=> bs!1489421 (not (= lambda!329404 lambda!329383))))

(declare-fun bs!1489422 () Bool)

(assert (= bs!1489422 (and d!1893654 b!6037716)))

(assert (=> bs!1489422 (not (= lambda!329404 lambda!329300))))

(declare-fun bs!1489423 () Bool)

(assert (= bs!1489423 (and d!1893654 b!6037656)))

(assert (=> bs!1489423 (not (= lambda!329404 lambda!329297))))

(declare-fun lt!2323081 () List!64359)

(assert (=> d!1893654 (forall!15128 lt!2323081 lambda!329404)))

(declare-fun e!3688660 () List!64359)

(assert (=> d!1893654 (= lt!2323081 e!3688660)))

(declare-fun c!1082569 () Bool)

(assert (=> d!1893654 (= c!1082569 (is-Cons!64236 (t!377789 zl!343)))))

(assert (=> d!1893654 (= (unfocusZipperList!1441 (t!377789 zl!343)) lt!2323081)))

(declare-fun b!6038835 () Bool)

(assert (=> b!6038835 (= e!3688660 (Cons!64235 (generalisedConcat!1617 (exprs!5904 (h!70684 (t!377789 zl!343)))) (unfocusZipperList!1441 (t!377789 (t!377789 zl!343)))))))

(declare-fun b!6038836 () Bool)

(assert (=> b!6038836 (= e!3688660 Nil!64235)))

(assert (= (and d!1893654 c!1082569) b!6038835))

(assert (= (and d!1893654 (not c!1082569)) b!6038836))

(declare-fun m!6908992 () Bool)

(assert (=> d!1893654 m!6908992))

(declare-fun m!6908994 () Bool)

(assert (=> b!6038835 m!6908994))

(declare-fun m!6908996 () Bool)

(assert (=> b!6038835 m!6908996))

(assert (=> b!6037755 d!1893654))

(declare-fun d!1893656 () Bool)

(declare-fun res!2514317 () Bool)

(declare-fun e!3688661 () Bool)

(assert (=> d!1893656 (=> res!2514317 e!3688661)))

(assert (=> d!1893656 (= res!2514317 (is-Nil!64235 lt!2322930))))

(assert (=> d!1893656 (= (forall!15128 lt!2322930 lambda!329307) e!3688661)))

(declare-fun b!6038837 () Bool)

(declare-fun e!3688662 () Bool)

(assert (=> b!6038837 (= e!3688661 e!3688662)))

(declare-fun res!2514318 () Bool)

(assert (=> b!6038837 (=> (not res!2514318) (not e!3688662))))

(assert (=> b!6038837 (= res!2514318 (dynLambda!25216 lambda!329307 (h!70683 lt!2322930)))))

(declare-fun b!6038838 () Bool)

(assert (=> b!6038838 (= e!3688662 (forall!15128 (t!377788 lt!2322930) lambda!329307))))

(assert (= (and d!1893656 (not res!2514317)) b!6038837))

(assert (= (and b!6038837 res!2514318) b!6038838))

(declare-fun b_lambda!229095 () Bool)

(assert (=> (not b_lambda!229095) (not b!6038837)))

(declare-fun m!6908998 () Bool)

(assert (=> b!6038837 m!6908998))

(declare-fun m!6909000 () Bool)

(assert (=> b!6038838 m!6909000))

(assert (=> d!1893332 d!1893656))

(assert (=> d!1893272 d!1893268))

(declare-fun d!1893658 () Bool)

(assert (=> d!1893658 (= (flatMap!1533 z!1189 lambda!329245) (dynLambda!25214 lambda!329245 (h!70684 zl!343)))))

(assert (=> d!1893658 true))

(declare-fun _$13!2846 () Unit!157311)

(assert (=> d!1893658 (= (choose!45124 z!1189 (h!70684 zl!343) lambda!329245) _$13!2846)))

(declare-fun b_lambda!229097 () Bool)

(assert (=> (not b_lambda!229097) (not d!1893658)))

(declare-fun bs!1489424 () Bool)

(assert (= bs!1489424 d!1893658))

(assert (=> bs!1489424 m!6907600))

(assert (=> bs!1489424 m!6907934))

(assert (=> d!1893272 d!1893658))

(assert (=> b!6037782 d!1893328))

(assert (=> d!1893286 d!1893598))

(declare-fun bs!1489425 () Bool)

(declare-fun b!6038839 () Bool)

(assert (= bs!1489425 (and b!6038839 d!1893522)))

(declare-fun lt!2323084 () Int)

(declare-fun lambda!329405 () Int)

(assert (=> bs!1489425 (= (= lt!2323084 lt!2322923) (= lambda!329405 lambda!329382))))

(declare-fun bs!1489426 () Bool)

(assert (= bs!1489426 (and b!6038839 d!1893280)))

(assert (=> bs!1489426 (not (= lambda!329405 lambda!329287))))

(declare-fun bs!1489427 () Bool)

(assert (= bs!1489427 (and b!6038839 b!6037654)))

(assert (=> bs!1489427 (= (= lt!2323084 lt!2322913) (= lambda!329405 lambda!329296))))

(declare-fun bs!1489428 () Bool)

(assert (= bs!1489428 (and b!6038839 b!6037659)))

(assert (=> bs!1489428 (= (= lt!2323084 lt!2322917) (= lambda!329405 lambda!329298))))

(declare-fun bs!1489429 () Bool)

(assert (= bs!1489429 (and b!6038839 b!6038563)))

(assert (=> bs!1489429 (= (= lt!2323084 lt!2323042) (= lambda!329405 lambda!329378))))

(declare-fun bs!1489430 () Bool)

(assert (= bs!1489430 (and b!6038839 d!1893654)))

(assert (=> bs!1489430 (not (= lambda!329405 lambda!329404))))

(declare-fun bs!1489431 () Bool)

(assert (= bs!1489431 (and b!6038839 d!1893332)))

(assert (=> bs!1489431 (not (= lambda!329405 lambda!329307))))

(declare-fun bs!1489432 () Bool)

(assert (= bs!1489432 (and b!6038839 d!1893344)))

(assert (=> bs!1489432 (not (= lambda!329405 lambda!329311))))

(declare-fun bs!1489433 () Bool)

(assert (= bs!1489433 (and b!6038839 d!1893548)))

(assert (=> bs!1489433 (not (= lambda!329405 lambda!329387))))

(declare-fun bs!1489434 () Bool)

(assert (= bs!1489434 (and b!6038839 b!6038692)))

(assert (=> bs!1489434 (= (= lt!2323084 lt!2323065) (= lambda!329405 lambda!329396))))

(declare-fun bs!1489435 () Bool)

(assert (= bs!1489435 (and b!6038839 d!1893334)))

(assert (=> bs!1489435 (not (= lambda!329405 lambda!329310))))

(declare-fun bs!1489436 () Bool)

(assert (= bs!1489436 (and b!6038839 d!1893624)))

(assert (=> bs!1489436 (not (= lambda!329405 lambda!329401))))

(declare-fun bs!1489437 () Bool)

(assert (= bs!1489437 (and b!6038839 d!1893506)))

(assert (=> bs!1489437 (= (= lt!2323084 lt!2322917) (= lambda!329405 lambda!329381))))

(declare-fun bs!1489438 () Bool)

(assert (= bs!1489438 (and b!6038839 d!1893330)))

(assert (=> bs!1489438 (not (= lambda!329405 lambda!329304))))

(declare-fun bs!1489439 () Bool)

(assert (= bs!1489439 (and b!6038839 b!6038561)))

(assert (=> bs!1489439 (= (= lt!2323084 lt!2323044) (= lambda!329405 lambda!329377))))

(declare-fun bs!1489440 () Bool)

(assert (= bs!1489440 (and b!6038839 b!6038598)))

(assert (=> bs!1489440 (= (= lt!2323084 lt!2323051) (= lambda!329405 lambda!329384))))

(declare-fun bs!1489441 () Bool)

(assert (= bs!1489441 (and b!6038839 b!6038694)))

(assert (=> bs!1489441 (= (= lt!2323084 lt!2323063) (= lambda!329405 lambda!329397))))

(declare-fun bs!1489442 () Bool)

(assert (= bs!1489442 (and b!6038839 b!6037661)))

(assert (=> bs!1489442 (= (= lt!2323084 lt!2322915) (= lambda!329405 lambda!329299))))

(declare-fun bs!1489443 () Bool)

(assert (= bs!1489443 (and b!6038839 b!6037718)))

(assert (=> bs!1489443 (= (= lt!2323084 lt!2322921) (= lambda!329405 lambda!329301))))

(declare-fun bs!1489444 () Bool)

(assert (= bs!1489444 (and b!6038839 b!6038596)))

(assert (=> bs!1489444 (= (= lt!2323084 lt!2323053) (= lambda!329405 lambda!329383))))

(declare-fun bs!1489445 () Bool)

(assert (= bs!1489445 (and b!6038839 b!6037716)))

(assert (=> bs!1489445 (= (= lt!2323084 lt!2322923) (= lambda!329405 lambda!329300))))

(declare-fun bs!1489446 () Bool)

(assert (= bs!1489446 (and b!6038839 b!6037656)))

(assert (=> bs!1489446 (= (= lt!2323084 lt!2322911) (= lambda!329405 lambda!329297))))

(assert (=> b!6038839 true))

(declare-fun bs!1489447 () Bool)

(declare-fun b!6038841 () Bool)

(assert (= bs!1489447 (and b!6038841 d!1893522)))

(declare-fun lambda!329406 () Int)

(declare-fun lt!2323082 () Int)

(assert (=> bs!1489447 (= (= lt!2323082 lt!2322923) (= lambda!329406 lambda!329382))))

(declare-fun bs!1489448 () Bool)

(assert (= bs!1489448 (and b!6038841 d!1893280)))

(assert (=> bs!1489448 (not (= lambda!329406 lambda!329287))))

(declare-fun bs!1489449 () Bool)

(assert (= bs!1489449 (and b!6038841 b!6038839)))

(assert (=> bs!1489449 (= (= lt!2323082 lt!2323084) (= lambda!329406 lambda!329405))))

(declare-fun bs!1489450 () Bool)

(assert (= bs!1489450 (and b!6038841 b!6037654)))

(assert (=> bs!1489450 (= (= lt!2323082 lt!2322913) (= lambda!329406 lambda!329296))))

(declare-fun bs!1489451 () Bool)

(assert (= bs!1489451 (and b!6038841 b!6037659)))

(assert (=> bs!1489451 (= (= lt!2323082 lt!2322917) (= lambda!329406 lambda!329298))))

(declare-fun bs!1489452 () Bool)

(assert (= bs!1489452 (and b!6038841 b!6038563)))

(assert (=> bs!1489452 (= (= lt!2323082 lt!2323042) (= lambda!329406 lambda!329378))))

(declare-fun bs!1489453 () Bool)

(assert (= bs!1489453 (and b!6038841 d!1893654)))

(assert (=> bs!1489453 (not (= lambda!329406 lambda!329404))))

(declare-fun bs!1489454 () Bool)

(assert (= bs!1489454 (and b!6038841 d!1893332)))

(assert (=> bs!1489454 (not (= lambda!329406 lambda!329307))))

(declare-fun bs!1489455 () Bool)

(assert (= bs!1489455 (and b!6038841 d!1893344)))

(assert (=> bs!1489455 (not (= lambda!329406 lambda!329311))))

(declare-fun bs!1489456 () Bool)

(assert (= bs!1489456 (and b!6038841 d!1893548)))

(assert (=> bs!1489456 (not (= lambda!329406 lambda!329387))))

(declare-fun bs!1489457 () Bool)

(assert (= bs!1489457 (and b!6038841 b!6038692)))

(assert (=> bs!1489457 (= (= lt!2323082 lt!2323065) (= lambda!329406 lambda!329396))))

(declare-fun bs!1489458 () Bool)

(assert (= bs!1489458 (and b!6038841 d!1893334)))

(assert (=> bs!1489458 (not (= lambda!329406 lambda!329310))))

(declare-fun bs!1489459 () Bool)

(assert (= bs!1489459 (and b!6038841 d!1893624)))

(assert (=> bs!1489459 (not (= lambda!329406 lambda!329401))))

(declare-fun bs!1489460 () Bool)

(assert (= bs!1489460 (and b!6038841 d!1893506)))

(assert (=> bs!1489460 (= (= lt!2323082 lt!2322917) (= lambda!329406 lambda!329381))))

(declare-fun bs!1489461 () Bool)

(assert (= bs!1489461 (and b!6038841 d!1893330)))

(assert (=> bs!1489461 (not (= lambda!329406 lambda!329304))))

(declare-fun bs!1489462 () Bool)

(assert (= bs!1489462 (and b!6038841 b!6038561)))

(assert (=> bs!1489462 (= (= lt!2323082 lt!2323044) (= lambda!329406 lambda!329377))))

(declare-fun bs!1489463 () Bool)

(assert (= bs!1489463 (and b!6038841 b!6038598)))

(assert (=> bs!1489463 (= (= lt!2323082 lt!2323051) (= lambda!329406 lambda!329384))))

(declare-fun bs!1489464 () Bool)

(assert (= bs!1489464 (and b!6038841 b!6038694)))

(assert (=> bs!1489464 (= (= lt!2323082 lt!2323063) (= lambda!329406 lambda!329397))))

(declare-fun bs!1489465 () Bool)

(assert (= bs!1489465 (and b!6038841 b!6037661)))

(assert (=> bs!1489465 (= (= lt!2323082 lt!2322915) (= lambda!329406 lambda!329299))))

(declare-fun bs!1489466 () Bool)

(assert (= bs!1489466 (and b!6038841 b!6037718)))

(assert (=> bs!1489466 (= (= lt!2323082 lt!2322921) (= lambda!329406 lambda!329301))))

(declare-fun bs!1489467 () Bool)

(assert (= bs!1489467 (and b!6038841 b!6038596)))

(assert (=> bs!1489467 (= (= lt!2323082 lt!2323053) (= lambda!329406 lambda!329383))))

(declare-fun bs!1489468 () Bool)

(assert (= bs!1489468 (and b!6038841 b!6037716)))

(assert (=> bs!1489468 (= (= lt!2323082 lt!2322923) (= lambda!329406 lambda!329300))))

(declare-fun bs!1489469 () Bool)

(assert (= bs!1489469 (and b!6038841 b!6037656)))

(assert (=> bs!1489469 (= (= lt!2323082 lt!2322911) (= lambda!329406 lambda!329297))))

(assert (=> b!6038841 true))

(declare-fun d!1893660 () Bool)

(declare-fun e!3688664 () Bool)

(assert (=> d!1893660 e!3688664))

(declare-fun res!2514319 () Bool)

(assert (=> d!1893660 (=> (not res!2514319) (not e!3688664))))

(assert (=> d!1893660 (= res!2514319 (>= lt!2323082 0))))

(declare-fun e!3688663 () Int)

(assert (=> d!1893660 (= lt!2323082 e!3688663)))

(declare-fun c!1082570 () Bool)

(assert (=> d!1893660 (= c!1082570 (is-Cons!64235 (exprs!5904 (h!70684 lt!2322709))))))

(assert (=> d!1893660 (= (contextDepth!168 (h!70684 lt!2322709)) lt!2323082)))

(assert (=> b!6038839 (= e!3688663 lt!2323084)))

(assert (=> b!6038839 (= lt!2323084 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 (h!70684 lt!2322709)))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (h!70684 lt!2322709)))))))))

(declare-fun lt!2323083 () Unit!157311)

(assert (=> b!6038839 (= lt!2323083 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 (h!70684 lt!2322709))) lt!2323084 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (h!70684 lt!2322709)))))))))

(assert (=> b!6038839 (forall!15128 (t!377788 (exprs!5904 (h!70684 lt!2322709))) lambda!329405)))

(declare-fun lt!2323085 () Unit!157311)

(assert (=> b!6038839 (= lt!2323085 lt!2323083)))

(declare-fun b!6038840 () Bool)

(assert (=> b!6038840 (= e!3688663 0)))

(assert (=> b!6038841 (= e!3688664 (forall!15128 (exprs!5904 (h!70684 lt!2322709)) lambda!329406))))

(assert (= (and d!1893660 c!1082570) b!6038839))

(assert (= (and d!1893660 (not c!1082570)) b!6038840))

(assert (= (and d!1893660 res!2514319) b!6038841))

(declare-fun m!6909002 () Bool)

(assert (=> b!6038839 m!6909002))

(declare-fun m!6909004 () Bool)

(assert (=> b!6038839 m!6909004))

(declare-fun m!6909006 () Bool)

(assert (=> b!6038839 m!6909006))

(assert (=> b!6038839 m!6909002))

(assert (=> b!6038839 m!6909004))

(declare-fun m!6909008 () Bool)

(assert (=> b!6038839 m!6909008))

(assert (=> b!6038839 m!6909004))

(declare-fun m!6909010 () Bool)

(assert (=> b!6038839 m!6909010))

(declare-fun m!6909012 () Bool)

(assert (=> b!6038841 m!6909012))

(assert (=> b!6037605 d!1893660))

(declare-fun d!1893662 () Bool)

(assert (=> d!1893662 (= (maxBigInt!0 (contextDepth!168 (h!70684 lt!2322709)) (zipperDepth!269 (t!377789 lt!2322709))) (ite (>= (contextDepth!168 (h!70684 lt!2322709)) (zipperDepth!269 (t!377789 lt!2322709))) (contextDepth!168 (h!70684 lt!2322709)) (zipperDepth!269 (t!377789 lt!2322709))))))

(assert (=> b!6037605 d!1893662))

(declare-fun bs!1489470 () Bool)

(declare-fun b!6038842 () Bool)

(assert (= bs!1489470 (and b!6038842 b!6037597)))

(declare-fun lambda!329407 () Int)

(assert (=> bs!1489470 (= lambda!329407 lambda!329279)))

(declare-fun bs!1489471 () Bool)

(assert (= bs!1489471 (and b!6038842 b!6037602)))

(assert (=> bs!1489471 (= lambda!329407 lambda!329282)))

(declare-fun bs!1489472 () Bool)

(assert (= bs!1489472 (and b!6038842 b!6037605)))

(assert (=> bs!1489472 (= lambda!329407 lambda!329288)))

(declare-fun bs!1489473 () Bool)

(assert (= bs!1489473 (and b!6038842 b!6038689)))

(assert (=> bs!1489473 (= lambda!329407 lambda!329393)))

(declare-fun bs!1489474 () Bool)

(assert (= bs!1489474 (and b!6038842 b!6037607)))

(declare-fun lambda!329408 () Int)

(declare-fun lt!2323088 () Int)

(assert (=> bs!1489474 (= (= lt!2323088 lt!2322897) (= lambda!329408 lambda!329290))))

(declare-fun bs!1489475 () Bool)

(assert (= bs!1489475 (and b!6038842 b!6038691)))

(assert (=> bs!1489475 (= (= lt!2323088 lt!2323060) (= lambda!329408 lambda!329395))))

(declare-fun bs!1489476 () Bool)

(assert (= bs!1489476 (and b!6038842 d!1893642)))

(assert (=> bs!1489476 (not (= lambda!329408 lambda!329402))))

(assert (=> bs!1489470 (= (= lt!2323088 lt!2322890) (= lambda!329408 lambda!329280))))

(assert (=> bs!1489472 (= (= lt!2323088 lt!2322898) (= lambda!329408 lambda!329289))))

(assert (=> bs!1489471 (= (= lt!2323088 lt!2322894) (= lambda!329408 lambda!329283))))

(declare-fun bs!1489477 () Bool)

(assert (= bs!1489477 (and b!6038842 b!6037599)))

(assert (=> bs!1489477 (= (= lt!2323088 lt!2322889) (= lambda!329408 lambda!329281))))

(declare-fun bs!1489478 () Bool)

(assert (= bs!1489478 (and b!6038842 b!6037604)))

(assert (=> bs!1489478 (= (= lt!2323088 lt!2322893) (= lambda!329408 lambda!329284))))

(declare-fun bs!1489479 () Bool)

(assert (= bs!1489479 (and b!6038842 d!1893580)))

(assert (=> bs!1489479 (not (= lambda!329408 lambda!329400))))

(assert (=> bs!1489473 (= (= lt!2323088 lt!2323061) (= lambda!329408 lambda!329394))))

(declare-fun bs!1489480 () Bool)

(assert (= bs!1489480 (and b!6038842 d!1893560)))

(assert (=> bs!1489480 (not (= lambda!329408 lambda!329391))))

(assert (=> b!6038842 true))

(declare-fun bs!1489481 () Bool)

(declare-fun b!6038844 () Bool)

(assert (= bs!1489481 (and b!6038844 b!6037607)))

(declare-fun lt!2323087 () Int)

(declare-fun lambda!329409 () Int)

(assert (=> bs!1489481 (= (= lt!2323087 lt!2322897) (= lambda!329409 lambda!329290))))

(declare-fun bs!1489482 () Bool)

(assert (= bs!1489482 (and b!6038844 b!6038691)))

(assert (=> bs!1489482 (= (= lt!2323087 lt!2323060) (= lambda!329409 lambda!329395))))

(declare-fun bs!1489483 () Bool)

(assert (= bs!1489483 (and b!6038844 d!1893642)))

(assert (=> bs!1489483 (not (= lambda!329409 lambda!329402))))

(declare-fun bs!1489484 () Bool)

(assert (= bs!1489484 (and b!6038844 b!6037597)))

(assert (=> bs!1489484 (= (= lt!2323087 lt!2322890) (= lambda!329409 lambda!329280))))

(declare-fun bs!1489485 () Bool)

(assert (= bs!1489485 (and b!6038844 b!6037602)))

(assert (=> bs!1489485 (= (= lt!2323087 lt!2322894) (= lambda!329409 lambda!329283))))

(declare-fun bs!1489486 () Bool)

(assert (= bs!1489486 (and b!6038844 b!6037599)))

(assert (=> bs!1489486 (= (= lt!2323087 lt!2322889) (= lambda!329409 lambda!329281))))

(declare-fun bs!1489487 () Bool)

(assert (= bs!1489487 (and b!6038844 b!6037604)))

(assert (=> bs!1489487 (= (= lt!2323087 lt!2322893) (= lambda!329409 lambda!329284))))

(declare-fun bs!1489488 () Bool)

(assert (= bs!1489488 (and b!6038844 d!1893580)))

(assert (=> bs!1489488 (not (= lambda!329409 lambda!329400))))

(declare-fun bs!1489489 () Bool)

(assert (= bs!1489489 (and b!6038844 b!6038689)))

(assert (=> bs!1489489 (= (= lt!2323087 lt!2323061) (= lambda!329409 lambda!329394))))

(declare-fun bs!1489490 () Bool)

(assert (= bs!1489490 (and b!6038844 d!1893560)))

(assert (=> bs!1489490 (not (= lambda!329409 lambda!329391))))

(declare-fun bs!1489491 () Bool)

(assert (= bs!1489491 (and b!6038844 b!6038842)))

(assert (=> bs!1489491 (= (= lt!2323087 lt!2323088) (= lambda!329409 lambda!329408))))

(declare-fun bs!1489492 () Bool)

(assert (= bs!1489492 (and b!6038844 b!6037605)))

(assert (=> bs!1489492 (= (= lt!2323087 lt!2322898) (= lambda!329409 lambda!329289))))

(assert (=> b!6038844 true))

(declare-fun d!1893664 () Bool)

(declare-fun e!3688666 () Bool)

(assert (=> d!1893664 e!3688666))

(declare-fun res!2514320 () Bool)

(assert (=> d!1893664 (=> (not res!2514320) (not e!3688666))))

(assert (=> d!1893664 (= res!2514320 (>= lt!2323087 0))))

(declare-fun e!3688665 () Int)

(assert (=> d!1893664 (= lt!2323087 e!3688665)))

(declare-fun c!1082571 () Bool)

(assert (=> d!1893664 (= c!1082571 (is-Cons!64236 (t!377789 lt!2322709)))))

(assert (=> d!1893664 (= (zipperDepth!269 (t!377789 lt!2322709)) lt!2323087)))

(assert (=> b!6038842 (= e!3688665 lt!2323088)))

(assert (=> b!6038842 (= lt!2323088 (maxBigInt!0 (contextDepth!168 (h!70684 (t!377789 lt!2322709))) (zipperDepth!269 (t!377789 (t!377789 lt!2322709)))))))

(declare-fun lt!2323089 () Unit!157311)

(assert (=> b!6038842 (= lt!2323089 (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 (t!377789 lt!2322709)) lt!2323088 (zipperDepth!269 (t!377789 (t!377789 lt!2322709))) lambda!329407))))

(assert (=> b!6038842 (forall!15127 (t!377789 (t!377789 lt!2322709)) lambda!329408)))

(declare-fun lt!2323086 () Unit!157311)

(assert (=> b!6038842 (= lt!2323086 lt!2323089)))

(declare-fun b!6038843 () Bool)

(assert (=> b!6038843 (= e!3688665 0)))

(assert (=> b!6038844 (= e!3688666 (forall!15127 (t!377789 lt!2322709) lambda!329409))))

(assert (= (and d!1893664 c!1082571) b!6038842))

(assert (= (and d!1893664 (not c!1082571)) b!6038843))

(assert (= (and d!1893664 res!2514320) b!6038844))

(declare-fun m!6909014 () Bool)

(assert (=> b!6038842 m!6909014))

(declare-fun m!6909016 () Bool)

(assert (=> b!6038842 m!6909016))

(declare-fun m!6909018 () Bool)

(assert (=> b!6038842 m!6909018))

(assert (=> b!6038842 m!6909016))

(declare-fun m!6909020 () Bool)

(assert (=> b!6038842 m!6909020))

(assert (=> b!6038842 m!6909016))

(declare-fun m!6909022 () Bool)

(assert (=> b!6038842 m!6909022))

(assert (=> b!6038842 m!6909018))

(declare-fun m!6909024 () Bool)

(assert (=> b!6038844 m!6909024))

(assert (=> b!6037605 d!1893664))

(declare-fun d!1893666 () Bool)

(declare-fun res!2514321 () Bool)

(declare-fun e!3688667 () Bool)

(assert (=> d!1893666 (=> res!2514321 e!3688667)))

(assert (=> d!1893666 (= res!2514321 (is-Nil!64236 (t!377789 lt!2322709)))))

(assert (=> d!1893666 (= (forall!15127 (t!377789 lt!2322709) lambda!329289) e!3688667)))

(declare-fun b!6038845 () Bool)

(declare-fun e!3688668 () Bool)

(assert (=> b!6038845 (= e!3688667 e!3688668)))

(declare-fun res!2514322 () Bool)

(assert (=> b!6038845 (=> (not res!2514322) (not e!3688668))))

(assert (=> b!6038845 (= res!2514322 (dynLambda!25217 lambda!329289 (h!70684 (t!377789 lt!2322709))))))

(declare-fun b!6038846 () Bool)

(assert (=> b!6038846 (= e!3688668 (forall!15127 (t!377789 (t!377789 lt!2322709)) lambda!329289))))

(assert (= (and d!1893666 (not res!2514321)) b!6038845))

(assert (= (and b!6038845 res!2514322) b!6038846))

(declare-fun b_lambda!229099 () Bool)

(assert (=> (not b_lambda!229099) (not b!6038845)))

(declare-fun m!6909026 () Bool)

(assert (=> b!6038845 m!6909026))

(declare-fun m!6909028 () Bool)

(assert (=> b!6038846 m!6909028))

(assert (=> b!6037605 d!1893666))

(declare-fun bs!1489493 () Bool)

(declare-fun d!1893668 () Bool)

(assert (= bs!1489493 (and d!1893668 b!6037607)))

(declare-fun lambda!329410 () Int)

(assert (=> bs!1489493 (not (= lambda!329410 lambda!329290))))

(declare-fun bs!1489494 () Bool)

(assert (= bs!1489494 (and d!1893668 b!6038691)))

(assert (=> bs!1489494 (not (= lambda!329410 lambda!329395))))

(declare-fun bs!1489495 () Bool)

(assert (= bs!1489495 (and d!1893668 d!1893642)))

(assert (=> bs!1489495 (not (= lambda!329410 lambda!329402))))

(declare-fun bs!1489496 () Bool)

(assert (= bs!1489496 (and d!1893668 b!6037597)))

(assert (=> bs!1489496 (not (= lambda!329410 lambda!329280))))

(declare-fun bs!1489497 () Bool)

(assert (= bs!1489497 (and d!1893668 b!6037602)))

(assert (=> bs!1489497 (not (= lambda!329410 lambda!329283))))

(declare-fun bs!1489498 () Bool)

(assert (= bs!1489498 (and d!1893668 b!6037599)))

(assert (=> bs!1489498 (not (= lambda!329410 lambda!329281))))

(declare-fun bs!1489499 () Bool)

(assert (= bs!1489499 (and d!1893668 b!6037604)))

(assert (=> bs!1489499 (not (= lambda!329410 lambda!329284))))

(declare-fun bs!1489500 () Bool)

(assert (= bs!1489500 (and d!1893668 b!6038844)))

(assert (=> bs!1489500 (not (= lambda!329410 lambda!329409))))

(declare-fun bs!1489501 () Bool)

(assert (= bs!1489501 (and d!1893668 d!1893580)))

(assert (=> bs!1489501 (= (and (= lt!2322898 lt!2322890) (= lambda!329288 lambda!329279)) (= lambda!329410 lambda!329400))))

(declare-fun bs!1489502 () Bool)

(assert (= bs!1489502 (and d!1893668 b!6038689)))

(assert (=> bs!1489502 (not (= lambda!329410 lambda!329394))))

(declare-fun bs!1489503 () Bool)

(assert (= bs!1489503 (and d!1893668 d!1893560)))

(assert (=> bs!1489503 (not (= lambda!329410 lambda!329391))))

(declare-fun bs!1489504 () Bool)

(assert (= bs!1489504 (and d!1893668 b!6038842)))

(assert (=> bs!1489504 (not (= lambda!329410 lambda!329408))))

(declare-fun bs!1489505 () Bool)

(assert (= bs!1489505 (and d!1893668 b!6037605)))

(assert (=> bs!1489505 (not (= lambda!329410 lambda!329289))))

(assert (=> d!1893668 true))

(assert (=> d!1893668 true))

(assert (=> d!1893668 (< (dynLambda!25218 order!27325 lambda!329288) (dynLambda!25219 order!27327 lambda!329410))))

(assert (=> d!1893668 (forall!15127 (t!377789 lt!2322709) lambda!329410)))

(declare-fun lt!2323090 () Unit!157311)

(assert (=> d!1893668 (= lt!2323090 (choose!45137 (t!377789 lt!2322709) lt!2322898 (zipperDepth!269 (t!377789 lt!2322709)) lambda!329288))))

(assert (=> d!1893668 (>= lt!2322898 (zipperDepth!269 (t!377789 lt!2322709)))))

(assert (=> d!1893668 (= (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 lt!2322709) lt!2322898 (zipperDepth!269 (t!377789 lt!2322709)) lambda!329288) lt!2323090)))

(declare-fun bs!1489506 () Bool)

(assert (= bs!1489506 d!1893668))

(declare-fun m!6909030 () Bool)

(assert (=> bs!1489506 m!6909030))

(assert (=> bs!1489506 m!6907974))

(declare-fun m!6909032 () Bool)

(assert (=> bs!1489506 m!6909032))

(assert (=> b!6037605 d!1893668))

(declare-fun c!1082572 () Bool)

(declare-fun bm!493811 () Bool)

(declare-fun c!1082573 () Bool)

(declare-fun call!493816 () Bool)

(assert (=> bm!493811 (= call!493816 (validRegex!7756 (ite c!1082573 (reg!16349 lt!2322934) (ite c!1082572 (regTwo!32553 lt!2322934) (regTwo!32552 lt!2322934)))))))

(declare-fun b!6038847 () Bool)

(declare-fun e!3688672 () Bool)

(declare-fun call!493818 () Bool)

(assert (=> b!6038847 (= e!3688672 call!493818)))

(declare-fun bm!493812 () Bool)

(declare-fun call!493817 () Bool)

(assert (=> bm!493812 (= call!493817 (validRegex!7756 (ite c!1082572 (regOne!32553 lt!2322934) (regOne!32552 lt!2322934))))))

(declare-fun b!6038848 () Bool)

(declare-fun e!3688673 () Bool)

(declare-fun e!3688671 () Bool)

(assert (=> b!6038848 (= e!3688673 e!3688671)))

(declare-fun res!2514326 () Bool)

(assert (=> b!6038848 (= res!2514326 (not (nullable!6015 (reg!16349 lt!2322934))))))

(assert (=> b!6038848 (=> (not res!2514326) (not e!3688671))))

(declare-fun b!6038849 () Bool)

(declare-fun e!3688675 () Bool)

(assert (=> b!6038849 (= e!3688673 e!3688675)))

(assert (=> b!6038849 (= c!1082572 (is-Union!16020 lt!2322934))))

(declare-fun d!1893670 () Bool)

(declare-fun res!2514327 () Bool)

(declare-fun e!3688669 () Bool)

(assert (=> d!1893670 (=> res!2514327 e!3688669)))

(assert (=> d!1893670 (= res!2514327 (is-ElementMatch!16020 lt!2322934))))

(assert (=> d!1893670 (= (validRegex!7756 lt!2322934) e!3688669)))

(declare-fun bm!493813 () Bool)

(assert (=> bm!493813 (= call!493818 call!493816)))

(declare-fun b!6038850 () Bool)

(assert (=> b!6038850 (= e!3688669 e!3688673)))

(assert (=> b!6038850 (= c!1082573 (is-Star!16020 lt!2322934))))

(declare-fun b!6038851 () Bool)

(assert (=> b!6038851 (= e!3688671 call!493816)))

(declare-fun b!6038852 () Bool)

(declare-fun e!3688674 () Bool)

(assert (=> b!6038852 (= e!3688674 e!3688672)))

(declare-fun res!2514325 () Bool)

(assert (=> b!6038852 (=> (not res!2514325) (not e!3688672))))

(assert (=> b!6038852 (= res!2514325 call!493817)))

(declare-fun b!6038853 () Bool)

(declare-fun res!2514323 () Bool)

(declare-fun e!3688670 () Bool)

(assert (=> b!6038853 (=> (not res!2514323) (not e!3688670))))

(assert (=> b!6038853 (= res!2514323 call!493817)))

(assert (=> b!6038853 (= e!3688675 e!3688670)))

(declare-fun b!6038854 () Bool)

(declare-fun res!2514324 () Bool)

(assert (=> b!6038854 (=> res!2514324 e!3688674)))

(assert (=> b!6038854 (= res!2514324 (not (is-Concat!24865 lt!2322934)))))

(assert (=> b!6038854 (= e!3688675 e!3688674)))

(declare-fun b!6038855 () Bool)

(assert (=> b!6038855 (= e!3688670 call!493818)))

(assert (= (and d!1893670 (not res!2514327)) b!6038850))

(assert (= (and b!6038850 c!1082573) b!6038848))

(assert (= (and b!6038850 (not c!1082573)) b!6038849))

(assert (= (and b!6038848 res!2514326) b!6038851))

(assert (= (and b!6038849 c!1082572) b!6038853))

(assert (= (and b!6038849 (not c!1082572)) b!6038854))

(assert (= (and b!6038853 res!2514323) b!6038855))

(assert (= (and b!6038854 (not res!2514324)) b!6038852))

(assert (= (and b!6038852 res!2514325) b!6038847))

(assert (= (or b!6038855 b!6038847) bm!493813))

(assert (= (or b!6038853 b!6038852) bm!493812))

(assert (= (or b!6038851 bm!493813) bm!493811))

(declare-fun m!6909034 () Bool)

(assert (=> bm!493811 m!6909034))

(declare-fun m!6909036 () Bool)

(assert (=> bm!493812 m!6909036))

(declare-fun m!6909038 () Bool)

(assert (=> b!6038848 m!6909038))

(assert (=> d!1893336 d!1893670))

(assert (=> d!1893336 d!1893330))

(assert (=> d!1893336 d!1893332))

(declare-fun d!1893672 () Bool)

(declare-fun res!2514332 () Bool)

(declare-fun e!3688680 () Bool)

(assert (=> d!1893672 (=> res!2514332 e!3688680)))

(assert (=> d!1893672 (= res!2514332 (is-Nil!64236 lt!2322860))))

(assert (=> d!1893672 (= (noDuplicate!1875 lt!2322860) e!3688680)))

(declare-fun b!6038860 () Bool)

(declare-fun e!3688681 () Bool)

(assert (=> b!6038860 (= e!3688680 e!3688681)))

(declare-fun res!2514333 () Bool)

(assert (=> b!6038860 (=> (not res!2514333) (not e!3688681))))

(declare-fun contains!19993 (List!64360 Context!10808) Bool)

(assert (=> b!6038860 (= res!2514333 (not (contains!19993 (t!377789 lt!2322860) (h!70684 lt!2322860))))))

(declare-fun b!6038861 () Bool)

(assert (=> b!6038861 (= e!3688681 (noDuplicate!1875 (t!377789 lt!2322860)))))

(assert (= (and d!1893672 (not res!2514332)) b!6038860))

(assert (= (and b!6038860 res!2514333) b!6038861))

(declare-fun m!6909040 () Bool)

(assert (=> b!6038860 m!6909040))

(declare-fun m!6909042 () Bool)

(assert (=> b!6038861 m!6909042))

(assert (=> d!1893248 d!1893672))

(declare-fun d!1893674 () Bool)

(declare-fun e!3688688 () Bool)

(assert (=> d!1893674 e!3688688))

(declare-fun res!2514339 () Bool)

(assert (=> d!1893674 (=> (not res!2514339) (not e!3688688))))

(declare-fun res!2514338 () List!64360)

(assert (=> d!1893674 (= res!2514339 (noDuplicate!1875 res!2514338))))

(declare-fun e!3688690 () Bool)

(assert (=> d!1893674 e!3688690))

(assert (=> d!1893674 (= (choose!45119 lt!2322722) res!2514338)))

(declare-fun b!6038869 () Bool)

(declare-fun e!3688689 () Bool)

(declare-fun tp!1679046 () Bool)

(assert (=> b!6038869 (= e!3688689 tp!1679046)))

(declare-fun b!6038868 () Bool)

(declare-fun tp!1679045 () Bool)

(assert (=> b!6038868 (= e!3688690 (and (inv!83298 (h!70684 res!2514338)) e!3688689 tp!1679045))))

(declare-fun b!6038870 () Bool)

(assert (=> b!6038870 (= e!3688688 (= (content!11884 res!2514338) lt!2322722))))

(assert (= b!6038868 b!6038869))

(assert (= (and d!1893674 (is-Cons!64236 res!2514338)) b!6038868))

(assert (= (and d!1893674 res!2514339) b!6038870))

(declare-fun m!6909044 () Bool)

(assert (=> d!1893674 m!6909044))

(declare-fun m!6909046 () Bool)

(assert (=> b!6038868 m!6909046))

(declare-fun m!6909048 () Bool)

(assert (=> b!6038870 m!6909048))

(assert (=> d!1893248 d!1893674))

(declare-fun d!1893676 () Bool)

(assert (=> d!1893676 (= (flatMap!1533 lt!2322718 lambda!329263) (choose!45123 lt!2322718 lambda!329263))))

(declare-fun bs!1489507 () Bool)

(assert (= bs!1489507 d!1893676))

(declare-fun m!6909050 () Bool)

(assert (=> bs!1489507 m!6909050))

(assert (=> d!1893252 d!1893676))

(declare-fun b!6038871 () Bool)

(declare-fun e!3688693 () (Set Context!10808))

(declare-fun call!493823 () (Set Context!10808))

(assert (=> b!6038871 (= e!3688693 call!493823)))

(declare-fun c!1082578 () Bool)

(declare-fun call!493822 () (Set Context!10808))

(declare-fun c!1082574 () Bool)

(declare-fun bm!493814 () Bool)

(declare-fun c!1082577 () Bool)

(declare-fun call!493821 () List!64359)

(assert (=> bm!493814 (= call!493822 (derivationStepZipperDown!1270 (ite c!1082577 (regOne!32553 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))) (ite c!1082578 (regTwo!32552 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))) (ite c!1082574 (regOne!32552 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))) (reg!16349 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292)))))))) (ite (or c!1082577 c!1082578) (ite (or c!1082250 c!1082251) lt!2322716 (Context!10809 call!493597)) (Context!10809 call!493821)) (h!70685 s!2326)))))

(declare-fun b!6038872 () Bool)

(declare-fun e!3688694 () (Set Context!10808))

(declare-fun e!3688696 () (Set Context!10808))

(assert (=> b!6038872 (= e!3688694 e!3688696)))

(assert (=> b!6038872 (= c!1082574 (is-Concat!24865 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))))))

(declare-fun c!1082575 () Bool)

(declare-fun d!1893678 () Bool)

(assert (=> d!1893678 (= c!1082575 (and (is-ElementMatch!16020 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))) (= (c!1082125 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))) (h!70685 s!2326))))))

(declare-fun e!3688695 () (Set Context!10808))

(assert (=> d!1893678 (= (derivationStepZipperDown!1270 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292)))) (ite (or c!1082250 c!1082251) lt!2322716 (Context!10809 call!493597)) (h!70685 s!2326)) e!3688695)))

(declare-fun bm!493815 () Bool)

(declare-fun call!493819 () (Set Context!10808))

(assert (=> bm!493815 (= call!493823 call!493819)))

(declare-fun e!3688691 () Bool)

(declare-fun b!6038873 () Bool)

(assert (=> b!6038873 (= e!3688691 (nullable!6015 (regOne!32552 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292)))))))))

(declare-fun bm!493816 () Bool)

(assert (=> bm!493816 (= call!493819 call!493822)))

(declare-fun b!6038874 () Bool)

(declare-fun c!1082576 () Bool)

(assert (=> b!6038874 (= c!1082576 (is-Star!16020 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))))))

(assert (=> b!6038874 (= e!3688696 e!3688693)))

(declare-fun bm!493817 () Bool)

(declare-fun call!493824 () List!64359)

(assert (=> bm!493817 (= call!493824 ($colon$colon!1905 (exprs!5904 (ite (or c!1082250 c!1082251) lt!2322716 (Context!10809 call!493597))) (ite (or c!1082578 c!1082574) (regTwo!32552 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))) (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292)))))))))

(declare-fun b!6038875 () Bool)

(declare-fun call!493820 () (Set Context!10808))

(assert (=> b!6038875 (= e!3688694 (set.union call!493820 call!493819))))

(declare-fun b!6038876 () Bool)

(assert (=> b!6038876 (= e!3688695 (set.insert (ite (or c!1082250 c!1082251) lt!2322716 (Context!10809 call!493597)) (as set.empty (Set Context!10808))))))

(declare-fun bm!493818 () Bool)

(assert (=> bm!493818 (= call!493820 (derivationStepZipperDown!1270 (ite c!1082577 (regTwo!32553 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))) (regOne!32552 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292)))))) (ite c!1082577 (ite (or c!1082250 c!1082251) lt!2322716 (Context!10809 call!493597)) (Context!10809 call!493824)) (h!70685 s!2326)))))

(declare-fun bm!493819 () Bool)

(assert (=> bm!493819 (= call!493821 call!493824)))

(declare-fun b!6038877 () Bool)

(assert (=> b!6038877 (= e!3688696 call!493823)))

(declare-fun b!6038878 () Bool)

(declare-fun e!3688692 () (Set Context!10808))

(assert (=> b!6038878 (= e!3688695 e!3688692)))

(assert (=> b!6038878 (= c!1082577 (is-Union!16020 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))))))

(declare-fun b!6038879 () Bool)

(assert (=> b!6038879 (= c!1082578 e!3688691)))

(declare-fun res!2514340 () Bool)

(assert (=> b!6038879 (=> (not res!2514340) (not e!3688691))))

(assert (=> b!6038879 (= res!2514340 (is-Concat!24865 (ite c!1082250 (regOne!32553 r!7292) (ite c!1082251 (regTwo!32552 r!7292) (ite c!1082247 (regOne!32552 r!7292) (reg!16349 r!7292))))))))

(assert (=> b!6038879 (= e!3688692 e!3688694)))

(declare-fun b!6038880 () Bool)

(assert (=> b!6038880 (= e!3688692 (set.union call!493822 call!493820))))

(declare-fun b!6038881 () Bool)

(assert (=> b!6038881 (= e!3688693 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893678 c!1082575) b!6038876))

(assert (= (and d!1893678 (not c!1082575)) b!6038878))

(assert (= (and b!6038878 c!1082577) b!6038880))

(assert (= (and b!6038878 (not c!1082577)) b!6038879))

(assert (= (and b!6038879 res!2514340) b!6038873))

(assert (= (and b!6038879 c!1082578) b!6038875))

(assert (= (and b!6038879 (not c!1082578)) b!6038872))

(assert (= (and b!6038872 c!1082574) b!6038877))

(assert (= (and b!6038872 (not c!1082574)) b!6038874))

(assert (= (and b!6038874 c!1082576) b!6038871))

(assert (= (and b!6038874 (not c!1082576)) b!6038881))

(assert (= (or b!6038877 b!6038871) bm!493819))

(assert (= (or b!6038877 b!6038871) bm!493815))

(assert (= (or b!6038875 bm!493819) bm!493817))

(assert (= (or b!6038875 bm!493815) bm!493816))

(assert (= (or b!6038880 b!6038875) bm!493818))

(assert (= (or b!6038880 bm!493816) bm!493814))

(declare-fun m!6909052 () Bool)

(assert (=> bm!493818 m!6909052))

(declare-fun m!6909054 () Bool)

(assert (=> b!6038876 m!6909054))

(declare-fun m!6909056 () Bool)

(assert (=> bm!493814 m!6909056))

(declare-fun m!6909058 () Bool)

(assert (=> bm!493817 m!6909058))

(declare-fun m!6909060 () Bool)

(assert (=> b!6038873 m!6909060))

(assert (=> bm!493590 d!1893678))

(assert (=> b!6037799 d!1893512))

(assert (=> b!6037799 d!1893514))

(assert (=> d!1893342 d!1893340))

(assert (=> d!1893342 d!1893254))

(declare-fun d!1893680 () Bool)

(assert (=> d!1893680 (= (matchR!8203 lt!2322697 s!2326) (matchZipper!2056 lt!2322718 s!2326))))

(assert (=> d!1893680 true))

(declare-fun _$44!1506 () Unit!157311)

(assert (=> d!1893680 (= (choose!45118 lt!2322718 lt!2322702 lt!2322697 s!2326) _$44!1506)))

(declare-fun bs!1489508 () Bool)

(assert (= bs!1489508 d!1893680))

(assert (=> bs!1489508 m!6907638))

(assert (=> bs!1489508 m!6907694))

(assert (=> d!1893342 d!1893680))

(declare-fun bm!493820 () Bool)

(declare-fun c!1082580 () Bool)

(declare-fun c!1082579 () Bool)

(declare-fun call!493825 () Bool)

(assert (=> bm!493820 (= call!493825 (validRegex!7756 (ite c!1082580 (reg!16349 lt!2322697) (ite c!1082579 (regTwo!32553 lt!2322697) (regTwo!32552 lt!2322697)))))))

(declare-fun b!6038882 () Bool)

(declare-fun e!3688700 () Bool)

(declare-fun call!493827 () Bool)

(assert (=> b!6038882 (= e!3688700 call!493827)))

(declare-fun bm!493821 () Bool)

(declare-fun call!493826 () Bool)

(assert (=> bm!493821 (= call!493826 (validRegex!7756 (ite c!1082579 (regOne!32553 lt!2322697) (regOne!32552 lt!2322697))))))

(declare-fun b!6038883 () Bool)

(declare-fun e!3688701 () Bool)

(declare-fun e!3688699 () Bool)

(assert (=> b!6038883 (= e!3688701 e!3688699)))

(declare-fun res!2514344 () Bool)

(assert (=> b!6038883 (= res!2514344 (not (nullable!6015 (reg!16349 lt!2322697))))))

(assert (=> b!6038883 (=> (not res!2514344) (not e!3688699))))

(declare-fun b!6038884 () Bool)

(declare-fun e!3688703 () Bool)

(assert (=> b!6038884 (= e!3688701 e!3688703)))

(assert (=> b!6038884 (= c!1082579 (is-Union!16020 lt!2322697))))

(declare-fun d!1893682 () Bool)

(declare-fun res!2514345 () Bool)

(declare-fun e!3688697 () Bool)

(assert (=> d!1893682 (=> res!2514345 e!3688697)))

(assert (=> d!1893682 (= res!2514345 (is-ElementMatch!16020 lt!2322697))))

(assert (=> d!1893682 (= (validRegex!7756 lt!2322697) e!3688697)))

(declare-fun bm!493822 () Bool)

(assert (=> bm!493822 (= call!493827 call!493825)))

(declare-fun b!6038885 () Bool)

(assert (=> b!6038885 (= e!3688697 e!3688701)))

(assert (=> b!6038885 (= c!1082580 (is-Star!16020 lt!2322697))))

(declare-fun b!6038886 () Bool)

(assert (=> b!6038886 (= e!3688699 call!493825)))

(declare-fun b!6038887 () Bool)

(declare-fun e!3688702 () Bool)

(assert (=> b!6038887 (= e!3688702 e!3688700)))

(declare-fun res!2514343 () Bool)

(assert (=> b!6038887 (=> (not res!2514343) (not e!3688700))))

(assert (=> b!6038887 (= res!2514343 call!493826)))

(declare-fun b!6038888 () Bool)

(declare-fun res!2514341 () Bool)

(declare-fun e!3688698 () Bool)

(assert (=> b!6038888 (=> (not res!2514341) (not e!3688698))))

(assert (=> b!6038888 (= res!2514341 call!493826)))

(assert (=> b!6038888 (= e!3688703 e!3688698)))

(declare-fun b!6038889 () Bool)

(declare-fun res!2514342 () Bool)

(assert (=> b!6038889 (=> res!2514342 e!3688702)))

(assert (=> b!6038889 (= res!2514342 (not (is-Concat!24865 lt!2322697)))))

(assert (=> b!6038889 (= e!3688703 e!3688702)))

(declare-fun b!6038890 () Bool)

(assert (=> b!6038890 (= e!3688698 call!493827)))

(assert (= (and d!1893682 (not res!2514345)) b!6038885))

(assert (= (and b!6038885 c!1082580) b!6038883))

(assert (= (and b!6038885 (not c!1082580)) b!6038884))

(assert (= (and b!6038883 res!2514344) b!6038886))

(assert (= (and b!6038884 c!1082579) b!6038888))

(assert (= (and b!6038884 (not c!1082579)) b!6038889))

(assert (= (and b!6038888 res!2514341) b!6038890))

(assert (= (and b!6038889 (not res!2514342)) b!6038887))

(assert (= (and b!6038887 res!2514343) b!6038882))

(assert (= (or b!6038890 b!6038882) bm!493822))

(assert (= (or b!6038888 b!6038887) bm!493821))

(assert (= (or b!6038886 bm!493822) bm!493820))

(declare-fun m!6909062 () Bool)

(assert (=> bm!493820 m!6909062))

(declare-fun m!6909064 () Bool)

(assert (=> bm!493821 m!6909064))

(declare-fun m!6909066 () Bool)

(assert (=> b!6038883 m!6909066))

(assert (=> d!1893342 d!1893682))

(declare-fun bm!493823 () Bool)

(declare-fun call!493833 () Int)

(declare-fun call!493832 () Int)

(assert (=> bm!493823 (= call!493833 call!493832)))

(declare-fun b!6038892 () Bool)

(declare-fun e!3688704 () Bool)

(declare-fun e!3688705 () Bool)

(assert (=> b!6038892 (= e!3688704 e!3688705)))

(declare-fun c!1082584 () Bool)

(assert (=> b!6038892 (= c!1082584 (is-Concat!24865 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))

(declare-fun b!6038893 () Bool)

(declare-fun c!1082583 () Bool)

(assert (=> b!6038893 (= c!1082583 (is-Union!16020 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))

(declare-fun e!3688712 () Int)

(declare-fun e!3688713 () Int)

(assert (=> b!6038893 (= e!3688712 e!3688713)))

(declare-fun c!1082586 () Bool)

(declare-fun b!6038894 () Bool)

(assert (=> b!6038894 (= c!1082586 (is-Star!16020 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))

(declare-fun e!3688707 () Bool)

(assert (=> b!6038894 (= e!3688705 e!3688707)))

(declare-fun b!6038895 () Bool)

(declare-fun e!3688708 () Int)

(declare-fun call!493829 () Int)

(assert (=> b!6038895 (= e!3688708 (+ 1 call!493829))))

(declare-fun b!6038896 () Bool)

(assert (=> b!6038896 (= e!3688713 (+ 1 call!493829))))

(declare-fun b!6038897 () Bool)

(declare-fun lt!2323091 () Int)

(assert (=> b!6038897 (= e!3688707 (= lt!2323091 1))))

(declare-fun call!493831 () Int)

(declare-fun bm!493824 () Bool)

(assert (=> bm!493824 (= call!493829 (maxBigInt!0 (ite c!1082583 call!493831 call!493833) (ite c!1082583 call!493833 call!493831)))))

(declare-fun c!1082582 () Bool)

(declare-fun bm!493825 () Bool)

(assert (=> bm!493825 (= call!493832 (regexDepth!277 (ite c!1082582 (reg!16349 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))) (ite c!1082583 (regTwo!32553 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))) (regOne!32552 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697))))))))))

(declare-fun b!6038898 () Bool)

(declare-fun call!493834 () Int)

(assert (=> b!6038898 (= e!3688707 (> lt!2323091 call!493834))))

(declare-fun b!6038899 () Bool)

(assert (=> b!6038899 (= e!3688712 (+ 1 call!493832))))

(declare-fun bm!493826 () Bool)

(declare-fun call!493828 () Int)

(declare-fun c!1082585 () Bool)

(assert (=> bm!493826 (= call!493828 (regexDepth!277 (ite c!1082585 (regOne!32553 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))) (regTwo!32552 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))))

(declare-fun b!6038900 () Bool)

(declare-fun e!3688711 () Bool)

(assert (=> b!6038900 (= e!3688704 e!3688711)))

(declare-fun res!2514346 () Bool)

(assert (=> b!6038900 (= res!2514346 (> lt!2323091 call!493828))))

(assert (=> b!6038900 (=> (not res!2514346) (not e!3688711))))

(declare-fun b!6038901 () Bool)

(declare-fun res!2514348 () Bool)

(declare-fun e!3688709 () Bool)

(assert (=> b!6038901 (=> (not res!2514348) (not e!3688709))))

(assert (=> b!6038901 (= res!2514348 (> lt!2323091 call!493834))))

(assert (=> b!6038901 (= e!3688705 e!3688709)))

(declare-fun b!6038891 () Bool)

(assert (=> b!6038891 (= e!3688708 1)))

(declare-fun d!1893684 () Bool)

(declare-fun e!3688710 () Bool)

(assert (=> d!1893684 e!3688710))

(declare-fun res!2514347 () Bool)

(assert (=> d!1893684 (=> (not res!2514347) (not e!3688710))))

(assert (=> d!1893684 (= res!2514347 (> lt!2323091 0))))

(declare-fun e!3688706 () Int)

(assert (=> d!1893684 (= lt!2323091 e!3688706)))

(declare-fun c!1082581 () Bool)

(assert (=> d!1893684 (= c!1082581 (is-ElementMatch!16020 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))

(assert (=> d!1893684 (= (regexDepth!277 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))) lt!2323091)))

(declare-fun b!6038902 () Bool)

(assert (=> b!6038902 (= e!3688709 (> lt!2323091 call!493828))))

(declare-fun call!493830 () Int)

(declare-fun bm!493827 () Bool)

(assert (=> bm!493827 (= call!493830 (regexDepth!277 (ite c!1082585 (regTwo!32553 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))) (ite c!1082584 (regOne!32552 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))) (reg!16349 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697))))))))))

(declare-fun bm!493828 () Bool)

(assert (=> bm!493828 (= call!493831 (regexDepth!277 (ite c!1082583 (regOne!32553 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))) (regTwo!32552 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))))

(declare-fun b!6038903 () Bool)

(assert (=> b!6038903 (= e!3688706 1)))

(declare-fun b!6038904 () Bool)

(assert (=> b!6038904 (= e!3688711 (> lt!2323091 call!493830))))

(declare-fun bm!493829 () Bool)

(assert (=> bm!493829 (= call!493834 call!493830)))

(declare-fun b!6038905 () Bool)

(assert (=> b!6038905 (= e!3688713 e!3688708)))

(declare-fun c!1082587 () Bool)

(assert (=> b!6038905 (= c!1082587 (is-Concat!24865 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))

(declare-fun b!6038906 () Bool)

(assert (=> b!6038906 (= e!3688710 e!3688704)))

(assert (=> b!6038906 (= c!1082585 (is-Union!16020 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))

(declare-fun b!6038907 () Bool)

(assert (=> b!6038907 (= e!3688706 e!3688712)))

(assert (=> b!6038907 (= c!1082582 (is-Star!16020 (ite c!1082294 (regTwo!32553 lt!2322697) (ite c!1082293 (regOne!32552 lt!2322697) (reg!16349 lt!2322697)))))))

(assert (= (and d!1893684 c!1082581) b!6038903))

(assert (= (and d!1893684 (not c!1082581)) b!6038907))

(assert (= (and b!6038907 c!1082582) b!6038899))

(assert (= (and b!6038907 (not c!1082582)) b!6038893))

(assert (= (and b!6038893 c!1082583) b!6038896))

(assert (= (and b!6038893 (not c!1082583)) b!6038905))

(assert (= (and b!6038905 c!1082587) b!6038895))

(assert (= (and b!6038905 (not c!1082587)) b!6038891))

(assert (= (or b!6038896 b!6038895) bm!493823))

(assert (= (or b!6038896 b!6038895) bm!493828))

(assert (= (or b!6038896 b!6038895) bm!493824))

(assert (= (or b!6038899 bm!493823) bm!493825))

(assert (= (and d!1893684 res!2514347) b!6038906))

(assert (= (and b!6038906 c!1082585) b!6038900))

(assert (= (and b!6038906 (not c!1082585)) b!6038892))

(assert (= (and b!6038900 res!2514346) b!6038904))

(assert (= (and b!6038892 c!1082584) b!6038901))

(assert (= (and b!6038892 (not c!1082584)) b!6038894))

(assert (= (and b!6038901 res!2514348) b!6038902))

(assert (= (and b!6038894 c!1082586) b!6038898))

(assert (= (and b!6038894 (not c!1082586)) b!6038897))

(assert (= (or b!6038901 b!6038898) bm!493829))

(assert (= (or b!6038904 bm!493829) bm!493827))

(assert (= (or b!6038900 b!6038902) bm!493826))

(declare-fun m!6909068 () Bool)

(assert (=> bm!493826 m!6909068))

(declare-fun m!6909070 () Bool)

(assert (=> bm!493827 m!6909070))

(declare-fun m!6909072 () Bool)

(assert (=> bm!493824 m!6909072))

(declare-fun m!6909074 () Bool)

(assert (=> bm!493828 m!6909074))

(declare-fun m!6909076 () Bool)

(assert (=> bm!493825 m!6909076))

(assert (=> bm!493629 d!1893684))

(declare-fun d!1893686 () Bool)

(assert (=> d!1893686 (= (nullable!6015 (regTwo!32552 r!7292)) (nullableFct!1985 (regTwo!32552 r!7292)))))

(declare-fun bs!1489509 () Bool)

(assert (= bs!1489509 d!1893686))

(declare-fun m!6909078 () Bool)

(assert (=> bs!1489509 m!6909078))

(assert (=> b!6037524 d!1893686))

(declare-fun bs!1489510 () Bool)

(declare-fun b!6038908 () Bool)

(assert (= bs!1489510 (and b!6038908 b!6038842)))

(declare-fun lambda!329411 () Int)

(assert (=> bs!1489510 (= lambda!329411 lambda!329407)))

(declare-fun bs!1489511 () Bool)

(assert (= bs!1489511 (and b!6038908 b!6037602)))

(assert (=> bs!1489511 (= lambda!329411 lambda!329282)))

(declare-fun bs!1489512 () Bool)

(assert (= bs!1489512 (and b!6038908 b!6038689)))

(assert (=> bs!1489512 (= lambda!329411 lambda!329393)))

(declare-fun bs!1489513 () Bool)

(assert (= bs!1489513 (and b!6038908 b!6037597)))

(assert (=> bs!1489513 (= lambda!329411 lambda!329279)))

(declare-fun bs!1489514 () Bool)

(assert (= bs!1489514 (and b!6038908 b!6037605)))

(assert (=> bs!1489514 (= lambda!329411 lambda!329288)))

(declare-fun bs!1489515 () Bool)

(assert (= bs!1489515 (and b!6038908 b!6037607)))

(declare-fun lambda!329412 () Int)

(declare-fun lt!2323094 () Int)

(assert (=> bs!1489515 (= (= lt!2323094 lt!2322897) (= lambda!329412 lambda!329290))))

(declare-fun bs!1489516 () Bool)

(assert (= bs!1489516 (and b!6038908 b!6038691)))

(assert (=> bs!1489516 (= (= lt!2323094 lt!2323060) (= lambda!329412 lambda!329395))))

(declare-fun bs!1489517 () Bool)

(assert (= bs!1489517 (and b!6038908 d!1893642)))

(assert (=> bs!1489517 (not (= lambda!329412 lambda!329402))))

(assert (=> bs!1489513 (= (= lt!2323094 lt!2322890) (= lambda!329412 lambda!329280))))

(assert (=> bs!1489511 (= (= lt!2323094 lt!2322894) (= lambda!329412 lambda!329283))))

(declare-fun bs!1489518 () Bool)

(assert (= bs!1489518 (and b!6038908 b!6037599)))

(assert (=> bs!1489518 (= (= lt!2323094 lt!2322889) (= lambda!329412 lambda!329281))))

(declare-fun bs!1489519 () Bool)

(assert (= bs!1489519 (and b!6038908 b!6037604)))

(assert (=> bs!1489519 (= (= lt!2323094 lt!2322893) (= lambda!329412 lambda!329284))))

(declare-fun bs!1489520 () Bool)

(assert (= bs!1489520 (and b!6038908 d!1893668)))

(assert (=> bs!1489520 (not (= lambda!329412 lambda!329410))))

(declare-fun bs!1489521 () Bool)

(assert (= bs!1489521 (and b!6038908 b!6038844)))

(assert (=> bs!1489521 (= (= lt!2323094 lt!2323087) (= lambda!329412 lambda!329409))))

(declare-fun bs!1489522 () Bool)

(assert (= bs!1489522 (and b!6038908 d!1893580)))

(assert (=> bs!1489522 (not (= lambda!329412 lambda!329400))))

(assert (=> bs!1489512 (= (= lt!2323094 lt!2323061) (= lambda!329412 lambda!329394))))

(declare-fun bs!1489523 () Bool)

(assert (= bs!1489523 (and b!6038908 d!1893560)))

(assert (=> bs!1489523 (not (= lambda!329412 lambda!329391))))

(assert (=> bs!1489510 (= (= lt!2323094 lt!2323088) (= lambda!329412 lambda!329408))))

(assert (=> bs!1489514 (= (= lt!2323094 lt!2322898) (= lambda!329412 lambda!329289))))

(assert (=> b!6038908 true))

(declare-fun bs!1489524 () Bool)

(declare-fun b!6038910 () Bool)

(assert (= bs!1489524 (and b!6038910 b!6037607)))

(declare-fun lambda!329413 () Int)

(declare-fun lt!2323093 () Int)

(assert (=> bs!1489524 (= (= lt!2323093 lt!2322897) (= lambda!329413 lambda!329290))))

(declare-fun bs!1489525 () Bool)

(assert (= bs!1489525 (and b!6038910 b!6038691)))

(assert (=> bs!1489525 (= (= lt!2323093 lt!2323060) (= lambda!329413 lambda!329395))))

(declare-fun bs!1489526 () Bool)

(assert (= bs!1489526 (and b!6038910 d!1893642)))

(assert (=> bs!1489526 (not (= lambda!329413 lambda!329402))))

(declare-fun bs!1489527 () Bool)

(assert (= bs!1489527 (and b!6038910 b!6038908)))

(assert (=> bs!1489527 (= (= lt!2323093 lt!2323094) (= lambda!329413 lambda!329412))))

(declare-fun bs!1489528 () Bool)

(assert (= bs!1489528 (and b!6038910 b!6037597)))

(assert (=> bs!1489528 (= (= lt!2323093 lt!2322890) (= lambda!329413 lambda!329280))))

(declare-fun bs!1489529 () Bool)

(assert (= bs!1489529 (and b!6038910 b!6037602)))

(assert (=> bs!1489529 (= (= lt!2323093 lt!2322894) (= lambda!329413 lambda!329283))))

(declare-fun bs!1489530 () Bool)

(assert (= bs!1489530 (and b!6038910 b!6037599)))

(assert (=> bs!1489530 (= (= lt!2323093 lt!2322889) (= lambda!329413 lambda!329281))))

(declare-fun bs!1489531 () Bool)

(assert (= bs!1489531 (and b!6038910 b!6037604)))

(assert (=> bs!1489531 (= (= lt!2323093 lt!2322893) (= lambda!329413 lambda!329284))))

(declare-fun bs!1489532 () Bool)

(assert (= bs!1489532 (and b!6038910 d!1893668)))

(assert (=> bs!1489532 (not (= lambda!329413 lambda!329410))))

(declare-fun bs!1489533 () Bool)

(assert (= bs!1489533 (and b!6038910 b!6038844)))

(assert (=> bs!1489533 (= (= lt!2323093 lt!2323087) (= lambda!329413 lambda!329409))))

(declare-fun bs!1489534 () Bool)

(assert (= bs!1489534 (and b!6038910 d!1893580)))

(assert (=> bs!1489534 (not (= lambda!329413 lambda!329400))))

(declare-fun bs!1489535 () Bool)

(assert (= bs!1489535 (and b!6038910 b!6038689)))

(assert (=> bs!1489535 (= (= lt!2323093 lt!2323061) (= lambda!329413 lambda!329394))))

(declare-fun bs!1489536 () Bool)

(assert (= bs!1489536 (and b!6038910 d!1893560)))

(assert (=> bs!1489536 (not (= lambda!329413 lambda!329391))))

(declare-fun bs!1489537 () Bool)

(assert (= bs!1489537 (and b!6038910 b!6038842)))

(assert (=> bs!1489537 (= (= lt!2323093 lt!2323088) (= lambda!329413 lambda!329408))))

(declare-fun bs!1489538 () Bool)

(assert (= bs!1489538 (and b!6038910 b!6037605)))

(assert (=> bs!1489538 (= (= lt!2323093 lt!2322898) (= lambda!329413 lambda!329289))))

(assert (=> b!6038910 true))

(declare-fun d!1893688 () Bool)

(declare-fun e!3688715 () Bool)

(assert (=> d!1893688 e!3688715))

(declare-fun res!2514349 () Bool)

(assert (=> d!1893688 (=> (not res!2514349) (not e!3688715))))

(assert (=> d!1893688 (= res!2514349 (>= lt!2323093 0))))

(declare-fun e!3688714 () Int)

(assert (=> d!1893688 (= lt!2323093 e!3688714)))

(declare-fun c!1082588 () Bool)

(assert (=> d!1893688 (= c!1082588 (is-Cons!64236 (t!377789 lt!2322702)))))

(assert (=> d!1893688 (= (zipperDepth!269 (t!377789 lt!2322702)) lt!2323093)))

(assert (=> b!6038908 (= e!3688714 lt!2323094)))

(assert (=> b!6038908 (= lt!2323094 (maxBigInt!0 (contextDepth!168 (h!70684 (t!377789 lt!2322702))) (zipperDepth!269 (t!377789 (t!377789 lt!2322702)))))))

(declare-fun lt!2323095 () Unit!157311)

(assert (=> b!6038908 (= lt!2323095 (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 (t!377789 lt!2322702)) lt!2323094 (zipperDepth!269 (t!377789 (t!377789 lt!2322702))) lambda!329411))))

(assert (=> b!6038908 (forall!15127 (t!377789 (t!377789 lt!2322702)) lambda!329412)))

(declare-fun lt!2323092 () Unit!157311)

(assert (=> b!6038908 (= lt!2323092 lt!2323095)))

(declare-fun b!6038909 () Bool)

(assert (=> b!6038909 (= e!3688714 0)))

(assert (=> b!6038910 (= e!3688715 (forall!15127 (t!377789 lt!2322702) lambda!329413))))

(assert (= (and d!1893688 c!1082588) b!6038908))

(assert (= (and d!1893688 (not c!1082588)) b!6038909))

(assert (= (and d!1893688 res!2514349) b!6038910))

(declare-fun m!6909080 () Bool)

(assert (=> b!6038908 m!6909080))

(declare-fun m!6909082 () Bool)

(assert (=> b!6038908 m!6909082))

(declare-fun m!6909084 () Bool)

(assert (=> b!6038908 m!6909084))

(assert (=> b!6038908 m!6909082))

(declare-fun m!6909086 () Bool)

(assert (=> b!6038908 m!6909086))

(assert (=> b!6038908 m!6909082))

(declare-fun m!6909088 () Bool)

(assert (=> b!6038908 m!6909088))

(assert (=> b!6038908 m!6909084))

(declare-fun m!6909090 () Bool)

(assert (=> b!6038910 m!6909090))

(assert (=> b!6037602 d!1893688))

(declare-fun bs!1489539 () Bool)

(declare-fun d!1893690 () Bool)

(assert (= bs!1489539 (and d!1893690 b!6037607)))

(declare-fun lambda!329414 () Int)

(assert (=> bs!1489539 (not (= lambda!329414 lambda!329290))))

(declare-fun bs!1489540 () Bool)

(assert (= bs!1489540 (and d!1893690 b!6038691)))

(assert (=> bs!1489540 (not (= lambda!329414 lambda!329395))))

(declare-fun bs!1489541 () Bool)

(assert (= bs!1489541 (and d!1893690 d!1893642)))

(assert (=> bs!1489541 (not (= lambda!329414 lambda!329402))))

(declare-fun bs!1489542 () Bool)

(assert (= bs!1489542 (and d!1893690 b!6038908)))

(assert (=> bs!1489542 (not (= lambda!329414 lambda!329412))))

(declare-fun bs!1489543 () Bool)

(assert (= bs!1489543 (and d!1893690 b!6037597)))

(assert (=> bs!1489543 (not (= lambda!329414 lambda!329280))))

(declare-fun bs!1489544 () Bool)

(assert (= bs!1489544 (and d!1893690 b!6037602)))

(assert (=> bs!1489544 (not (= lambda!329414 lambda!329283))))

(declare-fun bs!1489545 () Bool)

(assert (= bs!1489545 (and d!1893690 b!6037599)))

(assert (=> bs!1489545 (not (= lambda!329414 lambda!329281))))

(declare-fun bs!1489546 () Bool)

(assert (= bs!1489546 (and d!1893690 b!6037604)))

(assert (=> bs!1489546 (not (= lambda!329414 lambda!329284))))

(declare-fun bs!1489547 () Bool)

(assert (= bs!1489547 (and d!1893690 d!1893668)))

(assert (=> bs!1489547 (= (and (= lt!2322894 lt!2322898) (= lambda!329282 lambda!329288)) (= lambda!329414 lambda!329410))))

(declare-fun bs!1489548 () Bool)

(assert (= bs!1489548 (and d!1893690 b!6038844)))

(assert (=> bs!1489548 (not (= lambda!329414 lambda!329409))))

(declare-fun bs!1489549 () Bool)

(assert (= bs!1489549 (and d!1893690 d!1893580)))

(assert (=> bs!1489549 (= (and (= lt!2322894 lt!2322890) (= lambda!329282 lambda!329279)) (= lambda!329414 lambda!329400))))

(declare-fun bs!1489550 () Bool)

(assert (= bs!1489550 (and d!1893690 b!6038689)))

(assert (=> bs!1489550 (not (= lambda!329414 lambda!329394))))

(declare-fun bs!1489551 () Bool)

(assert (= bs!1489551 (and d!1893690 d!1893560)))

(assert (=> bs!1489551 (not (= lambda!329414 lambda!329391))))

(declare-fun bs!1489552 () Bool)

(assert (= bs!1489552 (and d!1893690 b!6038842)))

(assert (=> bs!1489552 (not (= lambda!329414 lambda!329408))))

(declare-fun bs!1489553 () Bool)

(assert (= bs!1489553 (and d!1893690 b!6037605)))

(assert (=> bs!1489553 (not (= lambda!329414 lambda!329289))))

(declare-fun bs!1489554 () Bool)

(assert (= bs!1489554 (and d!1893690 b!6038910)))

(assert (=> bs!1489554 (not (= lambda!329414 lambda!329413))))

(assert (=> d!1893690 true))

(assert (=> d!1893690 true))

(assert (=> d!1893690 (< (dynLambda!25218 order!27325 lambda!329282) (dynLambda!25219 order!27327 lambda!329414))))

(assert (=> d!1893690 (forall!15127 (t!377789 lt!2322702) lambda!329414)))

(declare-fun lt!2323096 () Unit!157311)

(assert (=> d!1893690 (= lt!2323096 (choose!45137 (t!377789 lt!2322702) lt!2322894 (zipperDepth!269 (t!377789 lt!2322702)) lambda!329282))))

(assert (=> d!1893690 (>= lt!2322894 (zipperDepth!269 (t!377789 lt!2322702)))))

(assert (=> d!1893690 (= (lemmaForallContextDepthBiggerThanTransitive!152 (t!377789 lt!2322702) lt!2322894 (zipperDepth!269 (t!377789 lt!2322702)) lambda!329282) lt!2323096)))

(declare-fun bs!1489555 () Bool)

(assert (= bs!1489555 d!1893690))

(declare-fun m!6909092 () Bool)

(assert (=> bs!1489555 m!6909092))

(assert (=> bs!1489555 m!6907960))

(declare-fun m!6909094 () Bool)

(assert (=> bs!1489555 m!6909094))

(assert (=> b!6037602 d!1893690))

(declare-fun d!1893692 () Bool)

(declare-fun res!2514350 () Bool)

(declare-fun e!3688716 () Bool)

(assert (=> d!1893692 (=> res!2514350 e!3688716)))

(assert (=> d!1893692 (= res!2514350 (is-Nil!64236 (t!377789 lt!2322702)))))

(assert (=> d!1893692 (= (forall!15127 (t!377789 lt!2322702) lambda!329283) e!3688716)))

(declare-fun b!6038911 () Bool)

(declare-fun e!3688717 () Bool)

(assert (=> b!6038911 (= e!3688716 e!3688717)))

(declare-fun res!2514351 () Bool)

(assert (=> b!6038911 (=> (not res!2514351) (not e!3688717))))

(assert (=> b!6038911 (= res!2514351 (dynLambda!25217 lambda!329283 (h!70684 (t!377789 lt!2322702))))))

(declare-fun b!6038912 () Bool)

(assert (=> b!6038912 (= e!3688717 (forall!15127 (t!377789 (t!377789 lt!2322702)) lambda!329283))))

(assert (= (and d!1893692 (not res!2514350)) b!6038911))

(assert (= (and b!6038911 res!2514351) b!6038912))

(declare-fun b_lambda!229101 () Bool)

(assert (=> (not b_lambda!229101) (not b!6038911)))

(declare-fun m!6909096 () Bool)

(assert (=> b!6038911 m!6909096))

(declare-fun m!6909098 () Bool)

(assert (=> b!6038912 m!6909098))

(assert (=> b!6037602 d!1893692))

(declare-fun bs!1489556 () Bool)

(declare-fun b!6038913 () Bool)

(assert (= bs!1489556 (and b!6038913 d!1893522)))

(declare-fun lt!2323099 () Int)

(declare-fun lambda!329415 () Int)

(assert (=> bs!1489556 (= (= lt!2323099 lt!2322923) (= lambda!329415 lambda!329382))))

(declare-fun bs!1489557 () Bool)

(assert (= bs!1489557 (and b!6038913 d!1893280)))

(assert (=> bs!1489557 (not (= lambda!329415 lambda!329287))))

(declare-fun bs!1489558 () Bool)

(assert (= bs!1489558 (and b!6038913 b!6038839)))

(assert (=> bs!1489558 (= (= lt!2323099 lt!2323084) (= lambda!329415 lambda!329405))))

(declare-fun bs!1489559 () Bool)

(assert (= bs!1489559 (and b!6038913 b!6037654)))

(assert (=> bs!1489559 (= (= lt!2323099 lt!2322913) (= lambda!329415 lambda!329296))))

(declare-fun bs!1489560 () Bool)

(assert (= bs!1489560 (and b!6038913 b!6037659)))

(assert (=> bs!1489560 (= (= lt!2323099 lt!2322917) (= lambda!329415 lambda!329298))))

(declare-fun bs!1489561 () Bool)

(assert (= bs!1489561 (and b!6038913 b!6038563)))

(assert (=> bs!1489561 (= (= lt!2323099 lt!2323042) (= lambda!329415 lambda!329378))))

(declare-fun bs!1489562 () Bool)

(assert (= bs!1489562 (and b!6038913 d!1893654)))

(assert (=> bs!1489562 (not (= lambda!329415 lambda!329404))))

(declare-fun bs!1489563 () Bool)

(assert (= bs!1489563 (and b!6038913 d!1893332)))

(assert (=> bs!1489563 (not (= lambda!329415 lambda!329307))))

(declare-fun bs!1489564 () Bool)

(assert (= bs!1489564 (and b!6038913 b!6038841)))

(assert (=> bs!1489564 (= (= lt!2323099 lt!2323082) (= lambda!329415 lambda!329406))))

(declare-fun bs!1489565 () Bool)

(assert (= bs!1489565 (and b!6038913 d!1893344)))

(assert (=> bs!1489565 (not (= lambda!329415 lambda!329311))))

(declare-fun bs!1489566 () Bool)

(assert (= bs!1489566 (and b!6038913 d!1893548)))

(assert (=> bs!1489566 (not (= lambda!329415 lambda!329387))))

(declare-fun bs!1489567 () Bool)

(assert (= bs!1489567 (and b!6038913 b!6038692)))

(assert (=> bs!1489567 (= (= lt!2323099 lt!2323065) (= lambda!329415 lambda!329396))))

(declare-fun bs!1489568 () Bool)

(assert (= bs!1489568 (and b!6038913 d!1893334)))

(assert (=> bs!1489568 (not (= lambda!329415 lambda!329310))))

(declare-fun bs!1489569 () Bool)

(assert (= bs!1489569 (and b!6038913 d!1893624)))

(assert (=> bs!1489569 (not (= lambda!329415 lambda!329401))))

(declare-fun bs!1489570 () Bool)

(assert (= bs!1489570 (and b!6038913 d!1893506)))

(assert (=> bs!1489570 (= (= lt!2323099 lt!2322917) (= lambda!329415 lambda!329381))))

(declare-fun bs!1489571 () Bool)

(assert (= bs!1489571 (and b!6038913 d!1893330)))

(assert (=> bs!1489571 (not (= lambda!329415 lambda!329304))))

(declare-fun bs!1489572 () Bool)

(assert (= bs!1489572 (and b!6038913 b!6038561)))

(assert (=> bs!1489572 (= (= lt!2323099 lt!2323044) (= lambda!329415 lambda!329377))))

(declare-fun bs!1489573 () Bool)

(assert (= bs!1489573 (and b!6038913 b!6038598)))

(assert (=> bs!1489573 (= (= lt!2323099 lt!2323051) (= lambda!329415 lambda!329384))))

(declare-fun bs!1489574 () Bool)

(assert (= bs!1489574 (and b!6038913 b!6038694)))

(assert (=> bs!1489574 (= (= lt!2323099 lt!2323063) (= lambda!329415 lambda!329397))))

(declare-fun bs!1489575 () Bool)

(assert (= bs!1489575 (and b!6038913 b!6037661)))

(assert (=> bs!1489575 (= (= lt!2323099 lt!2322915) (= lambda!329415 lambda!329299))))

(declare-fun bs!1489576 () Bool)

(assert (= bs!1489576 (and b!6038913 b!6037718)))

(assert (=> bs!1489576 (= (= lt!2323099 lt!2322921) (= lambda!329415 lambda!329301))))

(declare-fun bs!1489577 () Bool)

(assert (= bs!1489577 (and b!6038913 b!6038596)))

(assert (=> bs!1489577 (= (= lt!2323099 lt!2323053) (= lambda!329415 lambda!329383))))

(declare-fun bs!1489578 () Bool)

(assert (= bs!1489578 (and b!6038913 b!6037716)))

(assert (=> bs!1489578 (= (= lt!2323099 lt!2322923) (= lambda!329415 lambda!329300))))

(declare-fun bs!1489579 () Bool)

(assert (= bs!1489579 (and b!6038913 b!6037656)))

(assert (=> bs!1489579 (= (= lt!2323099 lt!2322911) (= lambda!329415 lambda!329297))))

(assert (=> b!6038913 true))

(declare-fun bs!1489580 () Bool)

(declare-fun b!6038915 () Bool)

(assert (= bs!1489580 (and b!6038915 d!1893522)))

(declare-fun lt!2323097 () Int)

(declare-fun lambda!329416 () Int)

(assert (=> bs!1489580 (= (= lt!2323097 lt!2322923) (= lambda!329416 lambda!329382))))

(declare-fun bs!1489581 () Bool)

(assert (= bs!1489581 (and b!6038915 d!1893280)))

(assert (=> bs!1489581 (not (= lambda!329416 lambda!329287))))

(declare-fun bs!1489582 () Bool)

(assert (= bs!1489582 (and b!6038915 b!6038839)))

(assert (=> bs!1489582 (= (= lt!2323097 lt!2323084) (= lambda!329416 lambda!329405))))

(declare-fun bs!1489583 () Bool)

(assert (= bs!1489583 (and b!6038915 b!6037654)))

(assert (=> bs!1489583 (= (= lt!2323097 lt!2322913) (= lambda!329416 lambda!329296))))

(declare-fun bs!1489584 () Bool)

(assert (= bs!1489584 (and b!6038915 b!6037659)))

(assert (=> bs!1489584 (= (= lt!2323097 lt!2322917) (= lambda!329416 lambda!329298))))

(declare-fun bs!1489585 () Bool)

(assert (= bs!1489585 (and b!6038915 b!6038563)))

(assert (=> bs!1489585 (= (= lt!2323097 lt!2323042) (= lambda!329416 lambda!329378))))

(declare-fun bs!1489586 () Bool)

(assert (= bs!1489586 (and b!6038915 d!1893654)))

(assert (=> bs!1489586 (not (= lambda!329416 lambda!329404))))

(declare-fun bs!1489587 () Bool)

(assert (= bs!1489587 (and b!6038915 d!1893332)))

(assert (=> bs!1489587 (not (= lambda!329416 lambda!329307))))

(declare-fun bs!1489588 () Bool)

(assert (= bs!1489588 (and b!6038915 b!6038841)))

(assert (=> bs!1489588 (= (= lt!2323097 lt!2323082) (= lambda!329416 lambda!329406))))

(declare-fun bs!1489589 () Bool)

(assert (= bs!1489589 (and b!6038915 d!1893344)))

(assert (=> bs!1489589 (not (= lambda!329416 lambda!329311))))

(declare-fun bs!1489590 () Bool)

(assert (= bs!1489590 (and b!6038915 d!1893548)))

(assert (=> bs!1489590 (not (= lambda!329416 lambda!329387))))

(declare-fun bs!1489591 () Bool)

(assert (= bs!1489591 (and b!6038915 b!6038692)))

(assert (=> bs!1489591 (= (= lt!2323097 lt!2323065) (= lambda!329416 lambda!329396))))

(declare-fun bs!1489592 () Bool)

(assert (= bs!1489592 (and b!6038915 d!1893334)))

(assert (=> bs!1489592 (not (= lambda!329416 lambda!329310))))

(declare-fun bs!1489593 () Bool)

(assert (= bs!1489593 (and b!6038915 d!1893624)))

(assert (=> bs!1489593 (not (= lambda!329416 lambda!329401))))

(declare-fun bs!1489594 () Bool)

(assert (= bs!1489594 (and b!6038915 d!1893506)))

(assert (=> bs!1489594 (= (= lt!2323097 lt!2322917) (= lambda!329416 lambda!329381))))

(declare-fun bs!1489595 () Bool)

(assert (= bs!1489595 (and b!6038915 d!1893330)))

(assert (=> bs!1489595 (not (= lambda!329416 lambda!329304))))

(declare-fun bs!1489596 () Bool)

(assert (= bs!1489596 (and b!6038915 b!6038913)))

(assert (=> bs!1489596 (= (= lt!2323097 lt!2323099) (= lambda!329416 lambda!329415))))

(declare-fun bs!1489597 () Bool)

(assert (= bs!1489597 (and b!6038915 b!6038561)))

(assert (=> bs!1489597 (= (= lt!2323097 lt!2323044) (= lambda!329416 lambda!329377))))

(declare-fun bs!1489598 () Bool)

(assert (= bs!1489598 (and b!6038915 b!6038598)))

(assert (=> bs!1489598 (= (= lt!2323097 lt!2323051) (= lambda!329416 lambda!329384))))

(declare-fun bs!1489599 () Bool)

(assert (= bs!1489599 (and b!6038915 b!6038694)))

(assert (=> bs!1489599 (= (= lt!2323097 lt!2323063) (= lambda!329416 lambda!329397))))

(declare-fun bs!1489600 () Bool)

(assert (= bs!1489600 (and b!6038915 b!6037661)))

(assert (=> bs!1489600 (= (= lt!2323097 lt!2322915) (= lambda!329416 lambda!329299))))

(declare-fun bs!1489601 () Bool)

(assert (= bs!1489601 (and b!6038915 b!6037718)))

(assert (=> bs!1489601 (= (= lt!2323097 lt!2322921) (= lambda!329416 lambda!329301))))

(declare-fun bs!1489602 () Bool)

(assert (= bs!1489602 (and b!6038915 b!6038596)))

(assert (=> bs!1489602 (= (= lt!2323097 lt!2323053) (= lambda!329416 lambda!329383))))

(declare-fun bs!1489603 () Bool)

(assert (= bs!1489603 (and b!6038915 b!6037716)))

(assert (=> bs!1489603 (= (= lt!2323097 lt!2322923) (= lambda!329416 lambda!329300))))

(declare-fun bs!1489604 () Bool)

(assert (= bs!1489604 (and b!6038915 b!6037656)))

(assert (=> bs!1489604 (= (= lt!2323097 lt!2322911) (= lambda!329416 lambda!329297))))

(assert (=> b!6038915 true))

(declare-fun d!1893694 () Bool)

(declare-fun e!3688719 () Bool)

(assert (=> d!1893694 e!3688719))

(declare-fun res!2514352 () Bool)

(assert (=> d!1893694 (=> (not res!2514352) (not e!3688719))))

(assert (=> d!1893694 (= res!2514352 (>= lt!2323097 0))))

(declare-fun e!3688718 () Int)

(assert (=> d!1893694 (= lt!2323097 e!3688718)))

(declare-fun c!1082589 () Bool)

(assert (=> d!1893694 (= c!1082589 (is-Cons!64235 (exprs!5904 (h!70684 lt!2322702))))))

(assert (=> d!1893694 (= (contextDepth!168 (h!70684 lt!2322702)) lt!2323097)))

(assert (=> b!6038913 (= e!3688718 lt!2323099)))

(assert (=> b!6038913 (= lt!2323099 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 (h!70684 lt!2322702)))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (h!70684 lt!2322702)))))))))

(declare-fun lt!2323098 () Unit!157311)

(assert (=> b!6038913 (= lt!2323098 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 (h!70684 lt!2322702))) lt!2323099 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (h!70684 lt!2322702)))))))))

(assert (=> b!6038913 (forall!15128 (t!377788 (exprs!5904 (h!70684 lt!2322702))) lambda!329415)))

(declare-fun lt!2323100 () Unit!157311)

(assert (=> b!6038913 (= lt!2323100 lt!2323098)))

(declare-fun b!6038914 () Bool)

(assert (=> b!6038914 (= e!3688718 0)))

(assert (=> b!6038915 (= e!3688719 (forall!15128 (exprs!5904 (h!70684 lt!2322702)) lambda!329416))))

(assert (= (and d!1893694 c!1082589) b!6038913))

(assert (= (and d!1893694 (not c!1082589)) b!6038914))

(assert (= (and d!1893694 res!2514352) b!6038915))

(declare-fun m!6909100 () Bool)

(assert (=> b!6038913 m!6909100))

(declare-fun m!6909102 () Bool)

(assert (=> b!6038913 m!6909102))

(declare-fun m!6909104 () Bool)

(assert (=> b!6038913 m!6909104))

(assert (=> b!6038913 m!6909100))

(assert (=> b!6038913 m!6909102))

(declare-fun m!6909106 () Bool)

(assert (=> b!6038913 m!6909106))

(assert (=> b!6038913 m!6909102))

(declare-fun m!6909108 () Bool)

(assert (=> b!6038913 m!6909108))

(declare-fun m!6909110 () Bool)

(assert (=> b!6038915 m!6909110))

(assert (=> b!6037602 d!1893694))

(declare-fun d!1893696 () Bool)

(assert (=> d!1893696 (= (maxBigInt!0 (contextDepth!168 (h!70684 lt!2322702)) (zipperDepth!269 (t!377789 lt!2322702))) (ite (>= (contextDepth!168 (h!70684 lt!2322702)) (zipperDepth!269 (t!377789 lt!2322702))) (contextDepth!168 (h!70684 lt!2322702)) (zipperDepth!269 (t!377789 lt!2322702))))))

(assert (=> b!6037602 d!1893696))

(declare-fun bm!493830 () Bool)

(declare-fun call!493840 () Int)

(declare-fun call!493839 () Int)

(assert (=> bm!493830 (= call!493840 call!493839)))

(declare-fun b!6038917 () Bool)

(declare-fun e!3688720 () Bool)

(declare-fun e!3688721 () Bool)

(assert (=> b!6038917 (= e!3688720 e!3688721)))

(declare-fun c!1082593 () Bool)

(assert (=> b!6038917 (= c!1082593 (is-Concat!24865 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun b!6038918 () Bool)

(declare-fun c!1082592 () Bool)

(assert (=> b!6038918 (= c!1082592 (is-Union!16020 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun e!3688728 () Int)

(declare-fun e!3688729 () Int)

(assert (=> b!6038918 (= e!3688728 e!3688729)))

(declare-fun b!6038919 () Bool)

(declare-fun c!1082595 () Bool)

(assert (=> b!6038919 (= c!1082595 (is-Star!16020 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun e!3688723 () Bool)

(assert (=> b!6038919 (= e!3688721 e!3688723)))

(declare-fun b!6038920 () Bool)

(declare-fun e!3688724 () Int)

(declare-fun call!493836 () Int)

(assert (=> b!6038920 (= e!3688724 (+ 1 call!493836))))

(declare-fun b!6038921 () Bool)

(assert (=> b!6038921 (= e!3688729 (+ 1 call!493836))))

(declare-fun b!6038922 () Bool)

(declare-fun lt!2323101 () Int)

(assert (=> b!6038922 (= e!3688723 (= lt!2323101 1))))

(declare-fun call!493838 () Int)

(declare-fun bm!493831 () Bool)

(assert (=> bm!493831 (= call!493836 (maxBigInt!0 (ite c!1082592 call!493838 call!493840) (ite c!1082592 call!493840 call!493838)))))

(declare-fun c!1082591 () Bool)

(declare-fun bm!493832 () Bool)

(assert (=> bm!493832 (= call!493839 (regexDepth!277 (ite c!1082591 (reg!16349 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (ite c!1082592 (regTwo!32553 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (regOne!32552 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292)))))))))

(declare-fun b!6038923 () Bool)

(declare-fun call!493841 () Int)

(assert (=> b!6038923 (= e!3688723 (> lt!2323101 call!493841))))

(declare-fun b!6038924 () Bool)

(assert (=> b!6038924 (= e!3688728 (+ 1 call!493839))))

(declare-fun bm!493833 () Bool)

(declare-fun call!493835 () Int)

(declare-fun c!1082594 () Bool)

(assert (=> bm!493833 (= call!493835 (regexDepth!277 (ite c!1082594 (regOne!32553 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (regTwo!32552 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))))

(declare-fun b!6038925 () Bool)

(declare-fun e!3688727 () Bool)

(assert (=> b!6038925 (= e!3688720 e!3688727)))

(declare-fun res!2514353 () Bool)

(assert (=> b!6038925 (= res!2514353 (> lt!2323101 call!493835))))

(assert (=> b!6038925 (=> (not res!2514353) (not e!3688727))))

(declare-fun b!6038926 () Bool)

(declare-fun res!2514355 () Bool)

(declare-fun e!3688725 () Bool)

(assert (=> b!6038926 (=> (not res!2514355) (not e!3688725))))

(assert (=> b!6038926 (= res!2514355 (> lt!2323101 call!493841))))

(assert (=> b!6038926 (= e!3688721 e!3688725)))

(declare-fun b!6038916 () Bool)

(assert (=> b!6038916 (= e!3688724 1)))

(declare-fun d!1893698 () Bool)

(declare-fun e!3688726 () Bool)

(assert (=> d!1893698 e!3688726))

(declare-fun res!2514354 () Bool)

(assert (=> d!1893698 (=> (not res!2514354) (not e!3688726))))

(assert (=> d!1893698 (= res!2514354 (> lt!2323101 0))))

(declare-fun e!3688722 () Int)

(assert (=> d!1893698 (= lt!2323101 e!3688722)))

(declare-fun c!1082590 () Bool)

(assert (=> d!1893698 (= c!1082590 (is-ElementMatch!16020 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(assert (=> d!1893698 (= (regexDepth!277 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))) lt!2323101)))

(declare-fun b!6038927 () Bool)

(assert (=> b!6038927 (= e!3688725 (> lt!2323101 call!493835))))

(declare-fun bm!493834 () Bool)

(declare-fun call!493837 () Int)

(assert (=> bm!493834 (= call!493837 (regexDepth!277 (ite c!1082594 (regTwo!32553 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (ite c!1082593 (regOne!32552 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (reg!16349 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292)))))))))

(declare-fun bm!493835 () Bool)

(assert (=> bm!493835 (= call!493838 (regexDepth!277 (ite c!1082592 (regOne!32553 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))) (regTwo!32552 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))))

(declare-fun b!6038928 () Bool)

(assert (=> b!6038928 (= e!3688722 1)))

(declare-fun b!6038929 () Bool)

(assert (=> b!6038929 (= e!3688727 (> lt!2323101 call!493837))))

(declare-fun bm!493836 () Bool)

(assert (=> bm!493836 (= call!493841 call!493837)))

(declare-fun b!6038930 () Bool)

(assert (=> b!6038930 (= e!3688729 e!3688724)))

(declare-fun c!1082596 () Bool)

(assert (=> b!6038930 (= c!1082596 (is-Concat!24865 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun b!6038931 () Bool)

(assert (=> b!6038931 (= e!3688726 e!3688720)))

(assert (=> b!6038931 (= c!1082594 (is-Union!16020 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(declare-fun b!6038932 () Bool)

(assert (=> b!6038932 (= e!3688722 e!3688728)))

(assert (=> b!6038932 (= c!1082591 (is-Star!16020 (ite c!1082285 (regOne!32553 r!7292) (regTwo!32552 r!7292))))))

(assert (= (and d!1893698 c!1082590) b!6038928))

(assert (= (and d!1893698 (not c!1082590)) b!6038932))

(assert (= (and b!6038932 c!1082591) b!6038924))

(assert (= (and b!6038932 (not c!1082591)) b!6038918))

(assert (= (and b!6038918 c!1082592) b!6038921))

(assert (= (and b!6038918 (not c!1082592)) b!6038930))

(assert (= (and b!6038930 c!1082596) b!6038920))

(assert (= (and b!6038930 (not c!1082596)) b!6038916))

(assert (= (or b!6038921 b!6038920) bm!493830))

(assert (= (or b!6038921 b!6038920) bm!493835))

(assert (= (or b!6038921 b!6038920) bm!493831))

(assert (= (or b!6038924 bm!493830) bm!493832))

(assert (= (and d!1893698 res!2514354) b!6038931))

(assert (= (and b!6038931 c!1082594) b!6038925))

(assert (= (and b!6038931 (not c!1082594)) b!6038917))

(assert (= (and b!6038925 res!2514353) b!6038929))

(assert (= (and b!6038917 c!1082593) b!6038926))

(assert (= (and b!6038917 (not c!1082593)) b!6038919))

(assert (= (and b!6038926 res!2514355) b!6038927))

(assert (= (and b!6038919 c!1082595) b!6038923))

(assert (= (and b!6038919 (not c!1082595)) b!6038922))

(assert (= (or b!6038926 b!6038923) bm!493836))

(assert (= (or b!6038929 bm!493836) bm!493834))

(assert (= (or b!6038925 b!6038927) bm!493833))

(declare-fun m!6909112 () Bool)

(assert (=> bm!493833 m!6909112))

(declare-fun m!6909114 () Bool)

(assert (=> bm!493834 m!6909114))

(declare-fun m!6909116 () Bool)

(assert (=> bm!493831 m!6909116))

(declare-fun m!6909118 () Bool)

(assert (=> bm!493835 m!6909118))

(declare-fun m!6909120 () Bool)

(assert (=> bm!493832 m!6909120))

(assert (=> bm!493623 d!1893698))

(declare-fun bs!1489605 () Bool)

(declare-fun d!1893700 () Bool)

(assert (= bs!1489605 (and d!1893700 b!6037607)))

(declare-fun lambda!329417 () Int)

(assert (=> bs!1489605 (not (= lambda!329417 lambda!329290))))

(declare-fun bs!1489606 () Bool)

(assert (= bs!1489606 (and d!1893700 b!6038691)))

(assert (=> bs!1489606 (not (= lambda!329417 lambda!329395))))

(declare-fun bs!1489607 () Bool)

(assert (= bs!1489607 (and d!1893700 d!1893642)))

(assert (=> bs!1489607 (= lambda!329417 lambda!329402)))

(declare-fun bs!1489608 () Bool)

(assert (= bs!1489608 (and d!1893700 b!6038908)))

(assert (=> bs!1489608 (not (= lambda!329417 lambda!329412))))

(declare-fun bs!1489609 () Bool)

(assert (= bs!1489609 (and d!1893700 b!6037597)))

(assert (=> bs!1489609 (not (= lambda!329417 lambda!329280))))

(declare-fun bs!1489610 () Bool)

(assert (= bs!1489610 (and d!1893700 b!6037602)))

(assert (=> bs!1489610 (not (= lambda!329417 lambda!329283))))

(declare-fun bs!1489611 () Bool)

(assert (= bs!1489611 (and d!1893700 b!6037599)))

(assert (=> bs!1489611 (not (= lambda!329417 lambda!329281))))

(declare-fun bs!1489612 () Bool)

(assert (= bs!1489612 (and d!1893700 b!6037604)))

(assert (=> bs!1489612 (not (= lambda!329417 lambda!329284))))

(declare-fun bs!1489613 () Bool)

(assert (= bs!1489613 (and d!1893700 d!1893690)))

(assert (=> bs!1489613 (not (= lambda!329417 lambda!329414))))

(declare-fun bs!1489614 () Bool)

(assert (= bs!1489614 (and d!1893700 d!1893668)))

(assert (=> bs!1489614 (not (= lambda!329417 lambda!329410))))

(declare-fun bs!1489615 () Bool)

(assert (= bs!1489615 (and d!1893700 b!6038844)))

(assert (=> bs!1489615 (not (= lambda!329417 lambda!329409))))

(declare-fun bs!1489616 () Bool)

(assert (= bs!1489616 (and d!1893700 d!1893580)))

(assert (=> bs!1489616 (not (= lambda!329417 lambda!329400))))

(declare-fun bs!1489617 () Bool)

(assert (= bs!1489617 (and d!1893700 b!6038689)))

(assert (=> bs!1489617 (not (= lambda!329417 lambda!329394))))

(declare-fun bs!1489618 () Bool)

(assert (= bs!1489618 (and d!1893700 d!1893560)))

(assert (=> bs!1489618 (= lambda!329417 lambda!329391)))

(declare-fun bs!1489619 () Bool)

(assert (= bs!1489619 (and d!1893700 b!6038842)))

(assert (=> bs!1489619 (not (= lambda!329417 lambda!329408))))

(declare-fun bs!1489620 () Bool)

(assert (= bs!1489620 (and d!1893700 b!6037605)))

(assert (=> bs!1489620 (not (= lambda!329417 lambda!329289))))

(declare-fun bs!1489621 () Bool)

(assert (= bs!1489621 (and d!1893700 b!6038910)))

(assert (=> bs!1489621 (not (= lambda!329417 lambda!329413))))

(assert (=> d!1893700 (= (nullableZipper!1825 lt!2322715) (exists!2385 lt!2322715 lambda!329417))))

(declare-fun bs!1489622 () Bool)

(assert (= bs!1489622 d!1893700))

(declare-fun m!6909122 () Bool)

(assert (=> bs!1489622 m!6909122))

(assert (=> b!6037643 d!1893700))

(declare-fun d!1893702 () Bool)

(assert (=> d!1893702 (= (Exists!3090 (ite c!1082262 lambda!329317 lambda!329318)) (choose!45122 (ite c!1082262 lambda!329317 lambda!329318)))))

(declare-fun bs!1489623 () Bool)

(assert (= bs!1489623 d!1893702))

(declare-fun m!6909124 () Bool)

(assert (=> bs!1489623 m!6909124))

(assert (=> bm!493601 d!1893702))

(declare-fun d!1893704 () Bool)

(declare-fun res!2514368 () Bool)

(declare-fun e!3688746 () Bool)

(assert (=> d!1893704 (=> res!2514368 e!3688746)))

(assert (=> d!1893704 (= res!2514368 (is-EmptyExpr!16020 (regOne!32552 r!7292)))))

(assert (=> d!1893704 (= (nullableFct!1985 (regOne!32552 r!7292)) e!3688746)))

(declare-fun b!6038947 () Bool)

(declare-fun e!3688744 () Bool)

(declare-fun e!3688743 () Bool)

(assert (=> b!6038947 (= e!3688744 e!3688743)))

(declare-fun c!1082599 () Bool)

(assert (=> b!6038947 (= c!1082599 (is-Union!16020 (regOne!32552 r!7292)))))

(declare-fun b!6038948 () Bool)

(declare-fun e!3688742 () Bool)

(assert (=> b!6038948 (= e!3688743 e!3688742)))

(declare-fun res!2514366 () Bool)

(declare-fun call!493846 () Bool)

(assert (=> b!6038948 (= res!2514366 call!493846)))

(assert (=> b!6038948 (=> (not res!2514366) (not e!3688742))))

(declare-fun b!6038949 () Bool)

(declare-fun e!3688747 () Bool)

(assert (=> b!6038949 (= e!3688746 e!3688747)))

(declare-fun res!2514370 () Bool)

(assert (=> b!6038949 (=> (not res!2514370) (not e!3688747))))

(assert (=> b!6038949 (= res!2514370 (and (not (is-EmptyLang!16020 (regOne!32552 r!7292))) (not (is-ElementMatch!16020 (regOne!32552 r!7292)))))))

(declare-fun b!6038950 () Bool)

(assert (=> b!6038950 (= e!3688747 e!3688744)))

(declare-fun res!2514367 () Bool)

(assert (=> b!6038950 (=> res!2514367 e!3688744)))

(assert (=> b!6038950 (= res!2514367 (is-Star!16020 (regOne!32552 r!7292)))))

(declare-fun bm!493841 () Bool)

(declare-fun call!493847 () Bool)

(assert (=> bm!493841 (= call!493847 (nullable!6015 (ite c!1082599 (regTwo!32553 (regOne!32552 r!7292)) (regTwo!32552 (regOne!32552 r!7292)))))))

(declare-fun b!6038951 () Bool)

(assert (=> b!6038951 (= e!3688742 call!493847)))

(declare-fun bm!493842 () Bool)

(assert (=> bm!493842 (= call!493846 (nullable!6015 (ite c!1082599 (regOne!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))))))

(declare-fun b!6038952 () Bool)

(declare-fun e!3688745 () Bool)

(assert (=> b!6038952 (= e!3688743 e!3688745)))

(declare-fun res!2514369 () Bool)

(assert (=> b!6038952 (= res!2514369 call!493846)))

(assert (=> b!6038952 (=> res!2514369 e!3688745)))

(declare-fun b!6038953 () Bool)

(assert (=> b!6038953 (= e!3688745 call!493847)))

(assert (= (and d!1893704 (not res!2514368)) b!6038949))

(assert (= (and b!6038949 res!2514370) b!6038950))

(assert (= (and b!6038950 (not res!2514367)) b!6038947))

(assert (= (and b!6038947 c!1082599) b!6038952))

(assert (= (and b!6038947 (not c!1082599)) b!6038948))

(assert (= (and b!6038952 (not res!2514369)) b!6038953))

(assert (= (and b!6038948 res!2514366) b!6038951))

(assert (= (or b!6038953 b!6038951) bm!493841))

(assert (= (or b!6038952 b!6038948) bm!493842))

(declare-fun m!6909126 () Bool)

(assert (=> bm!493841 m!6909126))

(declare-fun m!6909128 () Bool)

(assert (=> bm!493842 m!6909128))

(assert (=> d!1893308 d!1893704))

(declare-fun d!1893706 () Bool)

(assert (=> d!1893706 (= (isEmpty!36140 (tail!11663 (exprs!5904 (h!70684 zl!343)))) (is-Nil!64235 (tail!11663 (exprs!5904 (h!70684 zl!343)))))))

(assert (=> b!6037778 d!1893706))

(declare-fun d!1893708 () Bool)

(assert (=> d!1893708 (= (tail!11663 (exprs!5904 (h!70684 zl!343))) (t!377788 (exprs!5904 (h!70684 zl!343))))))

(assert (=> b!6037778 d!1893708))

(declare-fun d!1893710 () Bool)

(assert (=> d!1893710 (= ($colon$colon!1905 (exprs!5904 lt!2322733) (ite (or c!1082205 c!1082201) (regTwo!32552 (regOne!32552 r!7292)) (regOne!32552 r!7292))) (Cons!64235 (ite (or c!1082205 c!1082201) (regTwo!32552 (regOne!32552 r!7292)) (regOne!32552 r!7292)) (exprs!5904 lt!2322733)))))

(assert (=> bm!493576 d!1893710))

(declare-fun d!1893712 () Bool)

(assert (=> d!1893712 (= (isEmpty!36144 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) Nil!64237 s!2326 s!2326)) (not (is-Some!15910 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) Nil!64237 s!2326 s!2326))))))

(assert (=> d!1893260 d!1893712))

(declare-fun bs!1489624 () Bool)

(declare-fun d!1893714 () Bool)

(assert (= bs!1489624 (and d!1893714 d!1893522)))

(declare-fun lambda!329418 () Int)

(assert (=> bs!1489624 (not (= lambda!329418 lambda!329382))))

(declare-fun bs!1489625 () Bool)

(assert (= bs!1489625 (and d!1893714 d!1893280)))

(assert (=> bs!1489625 (= lambda!329418 lambda!329287)))

(declare-fun bs!1489626 () Bool)

(assert (= bs!1489626 (and d!1893714 b!6038839)))

(assert (=> bs!1489626 (not (= lambda!329418 lambda!329405))))

(declare-fun bs!1489627 () Bool)

(assert (= bs!1489627 (and d!1893714 b!6037654)))

(assert (=> bs!1489627 (not (= lambda!329418 lambda!329296))))

(declare-fun bs!1489628 () Bool)

(assert (= bs!1489628 (and d!1893714 b!6037659)))

(assert (=> bs!1489628 (not (= lambda!329418 lambda!329298))))

(declare-fun bs!1489629 () Bool)

(assert (= bs!1489629 (and d!1893714 b!6038563)))

(assert (=> bs!1489629 (not (= lambda!329418 lambda!329378))))

(declare-fun bs!1489630 () Bool)

(assert (= bs!1489630 (and d!1893714 d!1893654)))

(assert (=> bs!1489630 (= lambda!329418 lambda!329404)))

(declare-fun bs!1489631 () Bool)

(assert (= bs!1489631 (and d!1893714 d!1893332)))

(assert (=> bs!1489631 (= lambda!329418 lambda!329307)))

(declare-fun bs!1489632 () Bool)

(assert (= bs!1489632 (and d!1893714 b!6038841)))

(assert (=> bs!1489632 (not (= lambda!329418 lambda!329406))))

(declare-fun bs!1489633 () Bool)

(assert (= bs!1489633 (and d!1893714 d!1893344)))

(assert (=> bs!1489633 (= lambda!329418 lambda!329311)))

(declare-fun bs!1489634 () Bool)

(assert (= bs!1489634 (and d!1893714 d!1893548)))

(assert (=> bs!1489634 (= lambda!329418 lambda!329387)))

(declare-fun bs!1489635 () Bool)

(assert (= bs!1489635 (and d!1893714 b!6038692)))

(assert (=> bs!1489635 (not (= lambda!329418 lambda!329396))))

(declare-fun bs!1489636 () Bool)

(assert (= bs!1489636 (and d!1893714 b!6038915)))

(assert (=> bs!1489636 (not (= lambda!329418 lambda!329416))))

(declare-fun bs!1489637 () Bool)

(assert (= bs!1489637 (and d!1893714 d!1893334)))

(assert (=> bs!1489637 (= lambda!329418 lambda!329310)))

(declare-fun bs!1489638 () Bool)

(assert (= bs!1489638 (and d!1893714 d!1893624)))

(assert (=> bs!1489638 (= lambda!329418 lambda!329401)))

(declare-fun bs!1489639 () Bool)

(assert (= bs!1489639 (and d!1893714 d!1893506)))

(assert (=> bs!1489639 (not (= lambda!329418 lambda!329381))))

(declare-fun bs!1489640 () Bool)

(assert (= bs!1489640 (and d!1893714 d!1893330)))

(assert (=> bs!1489640 (= lambda!329418 lambda!329304)))

(declare-fun bs!1489641 () Bool)

(assert (= bs!1489641 (and d!1893714 b!6038913)))

(assert (=> bs!1489641 (not (= lambda!329418 lambda!329415))))

(declare-fun bs!1489642 () Bool)

(assert (= bs!1489642 (and d!1893714 b!6038561)))

(assert (=> bs!1489642 (not (= lambda!329418 lambda!329377))))

(declare-fun bs!1489643 () Bool)

(assert (= bs!1489643 (and d!1893714 b!6038598)))

(assert (=> bs!1489643 (not (= lambda!329418 lambda!329384))))

(declare-fun bs!1489644 () Bool)

(assert (= bs!1489644 (and d!1893714 b!6038694)))

(assert (=> bs!1489644 (not (= lambda!329418 lambda!329397))))

(declare-fun bs!1489645 () Bool)

(assert (= bs!1489645 (and d!1893714 b!6037661)))

(assert (=> bs!1489645 (not (= lambda!329418 lambda!329299))))

(declare-fun bs!1489646 () Bool)

(assert (= bs!1489646 (and d!1893714 b!6037718)))

(assert (=> bs!1489646 (not (= lambda!329418 lambda!329301))))

(declare-fun bs!1489647 () Bool)

(assert (= bs!1489647 (and d!1893714 b!6038596)))

(assert (=> bs!1489647 (not (= lambda!329418 lambda!329383))))

(declare-fun bs!1489648 () Bool)

(assert (= bs!1489648 (and d!1893714 b!6037716)))

(assert (=> bs!1489648 (not (= lambda!329418 lambda!329300))))

(declare-fun bs!1489649 () Bool)

(assert (= bs!1489649 (and d!1893714 b!6037656)))

(assert (=> bs!1489649 (not (= lambda!329418 lambda!329297))))

(declare-fun e!3688748 () Bool)

(assert (=> d!1893714 e!3688748))

(declare-fun res!2514371 () Bool)

(assert (=> d!1893714 (=> (not res!2514371) (not e!3688748))))

(declare-fun lt!2323102 () Regex!16020)

(assert (=> d!1893714 (= res!2514371 (validRegex!7756 lt!2323102))))

(declare-fun e!3688753 () Regex!16020)

(assert (=> d!1893714 (= lt!2323102 e!3688753)))

(declare-fun c!1082602 () Bool)

(declare-fun e!3688751 () Bool)

(assert (=> d!1893714 (= c!1082602 e!3688751)))

(declare-fun res!2514372 () Bool)

(assert (=> d!1893714 (=> (not res!2514372) (not e!3688751))))

(assert (=> d!1893714 (= res!2514372 (is-Cons!64235 (t!377788 (unfocusZipperList!1441 zl!343))))))

(assert (=> d!1893714 (forall!15128 (t!377788 (unfocusZipperList!1441 zl!343)) lambda!329418)))

(assert (=> d!1893714 (= (generalisedUnion!1864 (t!377788 (unfocusZipperList!1441 zl!343))) lt!2323102)))

(declare-fun b!6038954 () Bool)

(assert (=> b!6038954 (= e!3688753 (h!70683 (t!377788 (unfocusZipperList!1441 zl!343))))))

(declare-fun b!6038955 () Bool)

(assert (=> b!6038955 (= e!3688751 (isEmpty!36140 (t!377788 (t!377788 (unfocusZipperList!1441 zl!343)))))))

(declare-fun b!6038956 () Bool)

(declare-fun e!3688749 () Bool)

(assert (=> b!6038956 (= e!3688749 (= lt!2323102 (head!12578 (t!377788 (unfocusZipperList!1441 zl!343)))))))

(declare-fun b!6038957 () Bool)

(declare-fun e!3688752 () Bool)

(assert (=> b!6038957 (= e!3688748 e!3688752)))

(declare-fun c!1082601 () Bool)

(assert (=> b!6038957 (= c!1082601 (isEmpty!36140 (t!377788 (unfocusZipperList!1441 zl!343))))))

(declare-fun b!6038958 () Bool)

(assert (=> b!6038958 (= e!3688752 (isEmptyLang!1455 lt!2323102))))

(declare-fun b!6038959 () Bool)

(declare-fun e!3688750 () Regex!16020)

(assert (=> b!6038959 (= e!3688750 EmptyLang!16020)))

(declare-fun b!6038960 () Bool)

(assert (=> b!6038960 (= e!3688752 e!3688749)))

(declare-fun c!1082603 () Bool)

(assert (=> b!6038960 (= c!1082603 (isEmpty!36140 (tail!11663 (t!377788 (unfocusZipperList!1441 zl!343)))))))

(declare-fun b!6038961 () Bool)

(assert (=> b!6038961 (= e!3688750 (Union!16020 (h!70683 (t!377788 (unfocusZipperList!1441 zl!343))) (generalisedUnion!1864 (t!377788 (t!377788 (unfocusZipperList!1441 zl!343))))))))

(declare-fun b!6038962 () Bool)

(assert (=> b!6038962 (= e!3688749 (isUnion!885 lt!2323102))))

(declare-fun b!6038963 () Bool)

(assert (=> b!6038963 (= e!3688753 e!3688750)))

(declare-fun c!1082600 () Bool)

(assert (=> b!6038963 (= c!1082600 (is-Cons!64235 (t!377788 (unfocusZipperList!1441 zl!343))))))

(assert (= (and d!1893714 res!2514372) b!6038955))

(assert (= (and d!1893714 c!1082602) b!6038954))

(assert (= (and d!1893714 (not c!1082602)) b!6038963))

(assert (= (and b!6038963 c!1082600) b!6038961))

(assert (= (and b!6038963 (not c!1082600)) b!6038959))

(assert (= (and d!1893714 res!2514371) b!6038957))

(assert (= (and b!6038957 c!1082601) b!6038958))

(assert (= (and b!6038957 (not c!1082601)) b!6038960))

(assert (= (and b!6038960 c!1082603) b!6038956))

(assert (= (and b!6038960 (not c!1082603)) b!6038962))

(assert (=> b!6038957 m!6908126))

(declare-fun m!6909130 () Bool)

(assert (=> b!6038956 m!6909130))

(declare-fun m!6909132 () Bool)

(assert (=> b!6038962 m!6909132))

(declare-fun m!6909134 () Bool)

(assert (=> d!1893714 m!6909134))

(declare-fun m!6909136 () Bool)

(assert (=> d!1893714 m!6909136))

(declare-fun m!6909138 () Bool)

(assert (=> b!6038958 m!6909138))

(declare-fun m!6909140 () Bool)

(assert (=> b!6038961 m!6909140))

(declare-fun m!6909142 () Bool)

(assert (=> b!6038955 m!6909142))

(declare-fun m!6909144 () Bool)

(assert (=> b!6038960 m!6909144))

(assert (=> b!6038960 m!6909144))

(declare-fun m!6909146 () Bool)

(assert (=> b!6038960 m!6909146))

(assert (=> b!6037748 d!1893714))

(declare-fun d!1893716 () Bool)

(assert (=> d!1893716 (= (nullable!6015 (regOne!32552 (regTwo!32552 r!7292))) (nullableFct!1985 (regOne!32552 (regTwo!32552 r!7292))))))

(declare-fun bs!1489650 () Bool)

(assert (= bs!1489650 d!1893716))

(declare-fun m!6909148 () Bool)

(assert (=> bs!1489650 m!6909148))

(assert (=> b!6037702 d!1893716))

(declare-fun bm!493843 () Bool)

(declare-fun call!493853 () Int)

(declare-fun call!493852 () Int)

(assert (=> bm!493843 (= call!493853 call!493852)))

(declare-fun b!6038965 () Bool)

(declare-fun e!3688754 () Bool)

(declare-fun e!3688755 () Bool)

(assert (=> b!6038965 (= e!3688754 e!3688755)))

(declare-fun c!1082607 () Bool)

(assert (=> b!6038965 (= c!1082607 (is-Concat!24865 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))

(declare-fun b!6038966 () Bool)

(declare-fun c!1082606 () Bool)

(assert (=> b!6038966 (= c!1082606 (is-Union!16020 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))

(declare-fun e!3688762 () Int)

(declare-fun e!3688763 () Int)

(assert (=> b!6038966 (= e!3688762 e!3688763)))

(declare-fun b!6038967 () Bool)

(declare-fun c!1082609 () Bool)

(assert (=> b!6038967 (= c!1082609 (is-Star!16020 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))

(declare-fun e!3688757 () Bool)

(assert (=> b!6038967 (= e!3688755 e!3688757)))

(declare-fun b!6038968 () Bool)

(declare-fun e!3688758 () Int)

(declare-fun call!493849 () Int)

(assert (=> b!6038968 (= e!3688758 (+ 1 call!493849))))

(declare-fun b!6038969 () Bool)

(assert (=> b!6038969 (= e!3688763 (+ 1 call!493849))))

(declare-fun b!6038970 () Bool)

(declare-fun lt!2323103 () Int)

(assert (=> b!6038970 (= e!3688757 (= lt!2323103 1))))

(declare-fun call!493851 () Int)

(declare-fun bm!493844 () Bool)

(assert (=> bm!493844 (= call!493849 (maxBigInt!0 (ite c!1082606 call!493851 call!493853) (ite c!1082606 call!493853 call!493851)))))

(declare-fun c!1082605 () Bool)

(declare-fun bm!493845 () Bool)

(assert (=> bm!493845 (= call!493852 (regexDepth!277 (ite c!1082605 (reg!16349 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))) (ite c!1082606 (regTwo!32553 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))) (regOne!32552 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697))))))))))

(declare-fun b!6038971 () Bool)

(declare-fun call!493854 () Int)

(assert (=> b!6038971 (= e!3688757 (> lt!2323103 call!493854))))

(declare-fun b!6038972 () Bool)

(assert (=> b!6038972 (= e!3688762 (+ 1 call!493852))))

(declare-fun call!493848 () Int)

(declare-fun c!1082608 () Bool)

(declare-fun bm!493846 () Bool)

(assert (=> bm!493846 (= call!493848 (regexDepth!277 (ite c!1082608 (regOne!32553 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))) (regTwo!32552 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))))

(declare-fun b!6038973 () Bool)

(declare-fun e!3688761 () Bool)

(assert (=> b!6038973 (= e!3688754 e!3688761)))

(declare-fun res!2514373 () Bool)

(assert (=> b!6038973 (= res!2514373 (> lt!2323103 call!493848))))

(assert (=> b!6038973 (=> (not res!2514373) (not e!3688761))))

(declare-fun b!6038974 () Bool)

(declare-fun res!2514375 () Bool)

(declare-fun e!3688759 () Bool)

(assert (=> b!6038974 (=> (not res!2514375) (not e!3688759))))

(assert (=> b!6038974 (= res!2514375 (> lt!2323103 call!493854))))

(assert (=> b!6038974 (= e!3688755 e!3688759)))

(declare-fun b!6038964 () Bool)

(assert (=> b!6038964 (= e!3688758 1)))

(declare-fun d!1893718 () Bool)

(declare-fun e!3688760 () Bool)

(assert (=> d!1893718 e!3688760))

(declare-fun res!2514374 () Bool)

(assert (=> d!1893718 (=> (not res!2514374) (not e!3688760))))

(assert (=> d!1893718 (= res!2514374 (> lt!2323103 0))))

(declare-fun e!3688756 () Int)

(assert (=> d!1893718 (= lt!2323103 e!3688756)))

(declare-fun c!1082604 () Bool)

(assert (=> d!1893718 (= c!1082604 (is-ElementMatch!16020 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))

(assert (=> d!1893718 (= (regexDepth!277 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))) lt!2323103)))

(declare-fun b!6038975 () Bool)

(assert (=> b!6038975 (= e!3688759 (> lt!2323103 call!493848))))

(declare-fun bm!493847 () Bool)

(declare-fun call!493850 () Int)

(assert (=> bm!493847 (= call!493850 (regexDepth!277 (ite c!1082608 (regTwo!32553 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))) (ite c!1082607 (regOne!32552 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))) (reg!16349 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697))))))))))

(declare-fun bm!493848 () Bool)

(assert (=> bm!493848 (= call!493851 (regexDepth!277 (ite c!1082606 (regOne!32553 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))) (regTwo!32552 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))))

(declare-fun b!6038976 () Bool)

(assert (=> b!6038976 (= e!3688756 1)))

(declare-fun b!6038977 () Bool)

(assert (=> b!6038977 (= e!3688761 (> lt!2323103 call!493850))))

(declare-fun bm!493849 () Bool)

(assert (=> bm!493849 (= call!493854 call!493850)))

(declare-fun b!6038978 () Bool)

(assert (=> b!6038978 (= e!3688763 e!3688758)))

(declare-fun c!1082610 () Bool)

(assert (=> b!6038978 (= c!1082610 (is-Concat!24865 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))

(declare-fun b!6038979 () Bool)

(assert (=> b!6038979 (= e!3688760 e!3688754)))

(assert (=> b!6038979 (= c!1082608 (is-Union!16020 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))

(declare-fun b!6038980 () Bool)

(assert (=> b!6038980 (= e!3688756 e!3688762)))

(assert (=> b!6038980 (= c!1082605 (is-Star!16020 (ite c!1082291 (reg!16349 lt!2322697) (ite c!1082292 (regTwo!32553 lt!2322697) (regOne!32552 lt!2322697)))))))

(assert (= (and d!1893718 c!1082604) b!6038976))

(assert (= (and d!1893718 (not c!1082604)) b!6038980))

(assert (= (and b!6038980 c!1082605) b!6038972))

(assert (= (and b!6038980 (not c!1082605)) b!6038966))

(assert (= (and b!6038966 c!1082606) b!6038969))

(assert (= (and b!6038966 (not c!1082606)) b!6038978))

(assert (= (and b!6038978 c!1082610) b!6038968))

(assert (= (and b!6038978 (not c!1082610)) b!6038964))

(assert (= (or b!6038969 b!6038968) bm!493843))

(assert (= (or b!6038969 b!6038968) bm!493848))

(assert (= (or b!6038969 b!6038968) bm!493844))

(assert (= (or b!6038972 bm!493843) bm!493845))

(assert (= (and d!1893718 res!2514374) b!6038979))

(assert (= (and b!6038979 c!1082608) b!6038973))

(assert (= (and b!6038979 (not c!1082608)) b!6038965))

(assert (= (and b!6038973 res!2514373) b!6038977))

(assert (= (and b!6038965 c!1082607) b!6038974))

(assert (= (and b!6038965 (not c!1082607)) b!6038967))

(assert (= (and b!6038974 res!2514375) b!6038975))

(assert (= (and b!6038967 c!1082609) b!6038971))

(assert (= (and b!6038967 (not c!1082609)) b!6038970))

(assert (= (or b!6038974 b!6038971) bm!493849))

(assert (= (or b!6038977 bm!493849) bm!493847))

(assert (= (or b!6038973 b!6038975) bm!493846))

(declare-fun m!6909150 () Bool)

(assert (=> bm!493846 m!6909150))

(declare-fun m!6909152 () Bool)

(assert (=> bm!493847 m!6909152))

(declare-fun m!6909154 () Bool)

(assert (=> bm!493844 m!6909154))

(declare-fun m!6909156 () Bool)

(assert (=> bm!493848 m!6909156))

(declare-fun m!6909158 () Bool)

(assert (=> bm!493845 m!6909158))

(assert (=> bm!493627 d!1893718))

(declare-fun b!6038981 () Bool)

(declare-fun e!3688765 () Bool)

(assert (=> b!6038981 (= e!3688765 (matchR!8203 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 (_2!36302 (get!22141 lt!2322869)))) (tail!11662 (_2!36302 (get!22141 lt!2322869)))))))

(declare-fun b!6038982 () Bool)

(declare-fun e!3688767 () Bool)

(declare-fun lt!2323104 () Bool)

(assert (=> b!6038982 (= e!3688767 (not lt!2323104))))

(declare-fun b!6038983 () Bool)

(declare-fun e!3688766 () Bool)

(assert (=> b!6038983 (= e!3688766 (not (= (head!12577 (_2!36302 (get!22141 lt!2322869))) (c!1082125 (regTwo!32552 r!7292)))))))

(declare-fun b!6038984 () Bool)

(declare-fun res!2514382 () Bool)

(declare-fun e!3688770 () Bool)

(assert (=> b!6038984 (=> (not res!2514382) (not e!3688770))))

(assert (=> b!6038984 (= res!2514382 (isEmpty!36143 (tail!11662 (_2!36302 (get!22141 lt!2322869)))))))

(declare-fun b!6038985 () Bool)

(declare-fun e!3688768 () Bool)

(declare-fun call!493855 () Bool)

(assert (=> b!6038985 (= e!3688768 (= lt!2323104 call!493855))))

(declare-fun b!6038986 () Bool)

(assert (=> b!6038986 (= e!3688770 (= (head!12577 (_2!36302 (get!22141 lt!2322869))) (c!1082125 (regTwo!32552 r!7292))))))

(declare-fun d!1893720 () Bool)

(assert (=> d!1893720 e!3688768))

(declare-fun c!1082611 () Bool)

(assert (=> d!1893720 (= c!1082611 (is-EmptyExpr!16020 (regTwo!32552 r!7292)))))

(assert (=> d!1893720 (= lt!2323104 e!3688765)))

(declare-fun c!1082612 () Bool)

(assert (=> d!1893720 (= c!1082612 (isEmpty!36143 (_2!36302 (get!22141 lt!2322869))))))

(assert (=> d!1893720 (validRegex!7756 (regTwo!32552 r!7292))))

(assert (=> d!1893720 (= (matchR!8203 (regTwo!32552 r!7292) (_2!36302 (get!22141 lt!2322869))) lt!2323104)))

(declare-fun b!6038987 () Bool)

(declare-fun res!2514379 () Bool)

(assert (=> b!6038987 (=> res!2514379 e!3688766)))

(assert (=> b!6038987 (= res!2514379 (not (isEmpty!36143 (tail!11662 (_2!36302 (get!22141 lt!2322869))))))))

(declare-fun b!6038988 () Bool)

(declare-fun res!2514383 () Bool)

(declare-fun e!3688769 () Bool)

(assert (=> b!6038988 (=> res!2514383 e!3688769)))

(assert (=> b!6038988 (= res!2514383 (not (is-ElementMatch!16020 (regTwo!32552 r!7292))))))

(assert (=> b!6038988 (= e!3688767 e!3688769)))

(declare-fun b!6038989 () Bool)

(declare-fun res!2514380 () Bool)

(assert (=> b!6038989 (=> res!2514380 e!3688769)))

(assert (=> b!6038989 (= res!2514380 e!3688770)))

(declare-fun res!2514381 () Bool)

(assert (=> b!6038989 (=> (not res!2514381) (not e!3688770))))

(assert (=> b!6038989 (= res!2514381 lt!2323104)))

(declare-fun b!6038990 () Bool)

(declare-fun res!2514377 () Bool)

(assert (=> b!6038990 (=> (not res!2514377) (not e!3688770))))

(assert (=> b!6038990 (= res!2514377 (not call!493855))))

(declare-fun b!6038991 () Bool)

(declare-fun e!3688764 () Bool)

(assert (=> b!6038991 (= e!3688764 e!3688766)))

(declare-fun res!2514378 () Bool)

(assert (=> b!6038991 (=> res!2514378 e!3688766)))

(assert (=> b!6038991 (= res!2514378 call!493855)))

(declare-fun b!6038992 () Bool)

(assert (=> b!6038992 (= e!3688765 (nullable!6015 (regTwo!32552 r!7292)))))

(declare-fun bm!493850 () Bool)

(assert (=> bm!493850 (= call!493855 (isEmpty!36143 (_2!36302 (get!22141 lt!2322869))))))

(declare-fun b!6038993 () Bool)

(assert (=> b!6038993 (= e!3688768 e!3688767)))

(declare-fun c!1082613 () Bool)

(assert (=> b!6038993 (= c!1082613 (is-EmptyLang!16020 (regTwo!32552 r!7292)))))

(declare-fun b!6038994 () Bool)

(assert (=> b!6038994 (= e!3688769 e!3688764)))

(declare-fun res!2514376 () Bool)

(assert (=> b!6038994 (=> (not res!2514376) (not e!3688764))))

(assert (=> b!6038994 (= res!2514376 (not lt!2323104))))

(assert (= (and d!1893720 c!1082612) b!6038992))

(assert (= (and d!1893720 (not c!1082612)) b!6038981))

(assert (= (and d!1893720 c!1082611) b!6038985))

(assert (= (and d!1893720 (not c!1082611)) b!6038993))

(assert (= (and b!6038993 c!1082613) b!6038982))

(assert (= (and b!6038993 (not c!1082613)) b!6038988))

(assert (= (and b!6038988 (not res!2514383)) b!6038989))

(assert (= (and b!6038989 res!2514381) b!6038990))

(assert (= (and b!6038990 res!2514377) b!6038984))

(assert (= (and b!6038984 res!2514382) b!6038986))

(assert (= (and b!6038989 (not res!2514380)) b!6038994))

(assert (= (and b!6038994 res!2514376) b!6038991))

(assert (= (and b!6038991 (not res!2514378)) b!6038987))

(assert (= (and b!6038987 (not res!2514379)) b!6038983))

(assert (= (or b!6038985 b!6038990 b!6038991) bm!493850))

(declare-fun m!6909160 () Bool)

(assert (=> bm!493850 m!6909160))

(declare-fun m!6909162 () Bool)

(assert (=> b!6038987 m!6909162))

(assert (=> b!6038987 m!6909162))

(declare-fun m!6909164 () Bool)

(assert (=> b!6038987 m!6909164))

(declare-fun m!6909166 () Bool)

(assert (=> b!6038981 m!6909166))

(assert (=> b!6038981 m!6909166))

(declare-fun m!6909168 () Bool)

(assert (=> b!6038981 m!6909168))

(assert (=> b!6038981 m!6909162))

(assert (=> b!6038981 m!6909168))

(assert (=> b!6038981 m!6909162))

(declare-fun m!6909170 () Bool)

(assert (=> b!6038981 m!6909170))

(assert (=> b!6038992 m!6907852))

(assert (=> b!6038984 m!6909162))

(assert (=> b!6038984 m!6909162))

(assert (=> b!6038984 m!6909164))

(assert (=> b!6038983 m!6909166))

(assert (=> d!1893720 m!6909160))

(assert (=> d!1893720 m!6907636))

(assert (=> b!6038986 m!6909166))

(assert (=> b!6037557 d!1893720))

(assert (=> b!6037557 d!1893534))

(declare-fun d!1893722 () Bool)

(declare-fun res!2514384 () Bool)

(declare-fun e!3688771 () Bool)

(assert (=> d!1893722 (=> res!2514384 e!3688771)))

(assert (=> d!1893722 (= res!2514384 (is-Nil!64235 (exprs!5904 lt!2322698)))))

(assert (=> d!1893722 (= (forall!15128 (exprs!5904 lt!2322698) lambda!329299) e!3688771)))

(declare-fun b!6038995 () Bool)

(declare-fun e!3688772 () Bool)

(assert (=> b!6038995 (= e!3688771 e!3688772)))

(declare-fun res!2514385 () Bool)

(assert (=> b!6038995 (=> (not res!2514385) (not e!3688772))))

(assert (=> b!6038995 (= res!2514385 (dynLambda!25216 lambda!329299 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun b!6038996 () Bool)

(assert (=> b!6038996 (= e!3688772 (forall!15128 (t!377788 (exprs!5904 lt!2322698)) lambda!329299))))

(assert (= (and d!1893722 (not res!2514384)) b!6038995))

(assert (= (and b!6038995 res!2514385) b!6038996))

(declare-fun b_lambda!229103 () Bool)

(assert (=> (not b_lambda!229103) (not b!6038995)))

(declare-fun m!6909172 () Bool)

(assert (=> b!6038995 m!6909172))

(declare-fun m!6909174 () Bool)

(assert (=> b!6038996 m!6909174))

(assert (=> b!6037661 d!1893722))

(declare-fun b!6038997 () Bool)

(declare-fun e!3688775 () (Set Context!10808))

(declare-fun call!493860 () (Set Context!10808))

(assert (=> b!6038997 (= e!3688775 call!493860)))

(declare-fun c!1082617 () Bool)

(declare-fun call!493859 () (Set Context!10808))

(declare-fun bm!493851 () Bool)

(declare-fun call!493858 () List!64359)

(declare-fun c!1082614 () Bool)

(declare-fun c!1082618 () Bool)

(assert (=> bm!493851 (= call!493859 (derivationStepZipperDown!1270 (ite c!1082617 (regOne!32553 (h!70683 (exprs!5904 (h!70684 zl!343)))) (ite c!1082618 (regTwo!32552 (h!70683 (exprs!5904 (h!70684 zl!343)))) (ite c!1082614 (regOne!32552 (h!70683 (exprs!5904 (h!70684 zl!343)))) (reg!16349 (h!70683 (exprs!5904 (h!70684 zl!343))))))) (ite (or c!1082617 c!1082618) (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))) (Context!10809 call!493858)) (h!70685 s!2326)))))

(declare-fun b!6038998 () Bool)

(declare-fun e!3688776 () (Set Context!10808))

(declare-fun e!3688778 () (Set Context!10808))

(assert (=> b!6038998 (= e!3688776 e!3688778)))

(assert (=> b!6038998 (= c!1082614 (is-Concat!24865 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun d!1893724 () Bool)

(declare-fun c!1082615 () Bool)

(assert (=> d!1893724 (= c!1082615 (and (is-ElementMatch!16020 (h!70683 (exprs!5904 (h!70684 zl!343)))) (= (c!1082125 (h!70683 (exprs!5904 (h!70684 zl!343)))) (h!70685 s!2326))))))

(declare-fun e!3688777 () (Set Context!10808))

(assert (=> d!1893724 (= (derivationStepZipperDown!1270 (h!70683 (exprs!5904 (h!70684 zl!343))) (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))) (h!70685 s!2326)) e!3688777)))

(declare-fun bm!493852 () Bool)

(declare-fun call!493856 () (Set Context!10808))

(assert (=> bm!493852 (= call!493860 call!493856)))

(declare-fun b!6038999 () Bool)

(declare-fun e!3688773 () Bool)

(assert (=> b!6038999 (= e!3688773 (nullable!6015 (regOne!32552 (h!70683 (exprs!5904 (h!70684 zl!343))))))))

(declare-fun bm!493853 () Bool)

(assert (=> bm!493853 (= call!493856 call!493859)))

(declare-fun b!6039000 () Bool)

(declare-fun c!1082616 () Bool)

(assert (=> b!6039000 (= c!1082616 (is-Star!16020 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(assert (=> b!6039000 (= e!3688778 e!3688775)))

(declare-fun bm!493854 () Bool)

(declare-fun call!493861 () List!64359)

(assert (=> bm!493854 (= call!493861 ($colon$colon!1905 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343))))) (ite (or c!1082618 c!1082614) (regTwo!32552 (h!70683 (exprs!5904 (h!70684 zl!343)))) (h!70683 (exprs!5904 (h!70684 zl!343))))))))

(declare-fun b!6039001 () Bool)

(declare-fun call!493857 () (Set Context!10808))

(assert (=> b!6039001 (= e!3688776 (set.union call!493857 call!493856))))

(declare-fun b!6039002 () Bool)

(assert (=> b!6039002 (= e!3688777 (set.insert (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))) (as set.empty (Set Context!10808))))))

(declare-fun bm!493855 () Bool)

(assert (=> bm!493855 (= call!493857 (derivationStepZipperDown!1270 (ite c!1082617 (regTwo!32553 (h!70683 (exprs!5904 (h!70684 zl!343)))) (regOne!32552 (h!70683 (exprs!5904 (h!70684 zl!343))))) (ite c!1082617 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))) (Context!10809 call!493861)) (h!70685 s!2326)))))

(declare-fun bm!493856 () Bool)

(assert (=> bm!493856 (= call!493858 call!493861)))

(declare-fun b!6039003 () Bool)

(assert (=> b!6039003 (= e!3688778 call!493860)))

(declare-fun b!6039004 () Bool)

(declare-fun e!3688774 () (Set Context!10808))

(assert (=> b!6039004 (= e!3688777 e!3688774)))

(assert (=> b!6039004 (= c!1082617 (is-Union!16020 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun b!6039005 () Bool)

(assert (=> b!6039005 (= c!1082618 e!3688773)))

(declare-fun res!2514386 () Bool)

(assert (=> b!6039005 (=> (not res!2514386) (not e!3688773))))

(assert (=> b!6039005 (= res!2514386 (is-Concat!24865 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(assert (=> b!6039005 (= e!3688774 e!3688776)))

(declare-fun b!6039006 () Bool)

(assert (=> b!6039006 (= e!3688774 (set.union call!493859 call!493857))))

(declare-fun b!6039007 () Bool)

(assert (=> b!6039007 (= e!3688775 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893724 c!1082615) b!6039002))

(assert (= (and d!1893724 (not c!1082615)) b!6039004))

(assert (= (and b!6039004 c!1082617) b!6039006))

(assert (= (and b!6039004 (not c!1082617)) b!6039005))

(assert (= (and b!6039005 res!2514386) b!6038999))

(assert (= (and b!6039005 c!1082618) b!6039001))

(assert (= (and b!6039005 (not c!1082618)) b!6038998))

(assert (= (and b!6038998 c!1082614) b!6039003))

(assert (= (and b!6038998 (not c!1082614)) b!6039000))

(assert (= (and b!6039000 c!1082616) b!6038997))

(assert (= (and b!6039000 (not c!1082616)) b!6039007))

(assert (= (or b!6039003 b!6038997) bm!493856))

(assert (= (or b!6039003 b!6038997) bm!493852))

(assert (= (or b!6039001 bm!493856) bm!493854))

(assert (= (or b!6039001 bm!493852) bm!493853))

(assert (= (or b!6039006 b!6039001) bm!493855))

(assert (= (or b!6039006 bm!493853) bm!493851))

(declare-fun m!6909176 () Bool)

(assert (=> bm!493855 m!6909176))

(declare-fun m!6909178 () Bool)

(assert (=> b!6039002 m!6909178))

(declare-fun m!6909180 () Bool)

(assert (=> bm!493851 m!6909180))

(declare-fun m!6909182 () Bool)

(assert (=> bm!493854 m!6909182))

(declare-fun m!6909184 () Bool)

(assert (=> b!6038999 m!6909184))

(assert (=> bm!493550 d!1893724))

(assert (=> bm!493603 d!1893568))

(declare-fun d!1893726 () Bool)

(declare-fun c!1082619 () Bool)

(assert (=> d!1893726 (= c!1082619 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun e!3688779 () Bool)

(assert (=> d!1893726 (= (matchZipper!2056 (derivationStepZipper!2001 z!1189 (head!12577 s!2326)) (tail!11662 s!2326)) e!3688779)))

(declare-fun b!6039008 () Bool)

(assert (=> b!6039008 (= e!3688779 (nullableZipper!1825 (derivationStepZipper!2001 z!1189 (head!12577 s!2326))))))

(declare-fun b!6039009 () Bool)

(assert (=> b!6039009 (= e!3688779 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 z!1189 (head!12577 s!2326)) (head!12577 (tail!11662 s!2326))) (tail!11662 (tail!11662 s!2326))))))

(assert (= (and d!1893726 c!1082619) b!6039008))

(assert (= (and d!1893726 (not c!1082619)) b!6039009))

(assert (=> d!1893726 m!6907842))

(assert (=> d!1893726 m!6907846))

(assert (=> b!6039008 m!6907840))

(declare-fun m!6909186 () Bool)

(assert (=> b!6039008 m!6909186))

(assert (=> b!6039009 m!6907842))

(declare-fun m!6909188 () Bool)

(assert (=> b!6039009 m!6909188))

(assert (=> b!6039009 m!6907840))

(assert (=> b!6039009 m!6909188))

(declare-fun m!6909190 () Bool)

(assert (=> b!6039009 m!6909190))

(assert (=> b!6039009 m!6907842))

(declare-fun m!6909192 () Bool)

(assert (=> b!6039009 m!6909192))

(assert (=> b!6039009 m!6909190))

(assert (=> b!6039009 m!6909192))

(declare-fun m!6909194 () Bool)

(assert (=> b!6039009 m!6909194))

(assert (=> b!6037484 d!1893726))

(declare-fun bs!1489651 () Bool)

(declare-fun d!1893728 () Bool)

(assert (= bs!1489651 (and d!1893728 d!1893552)))

(declare-fun lambda!329419 () Int)

(assert (=> bs!1489651 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329419 lambda!329388))))

(declare-fun bs!1489652 () Bool)

(assert (= bs!1489652 (and d!1893728 d!1893572)))

(assert (=> bs!1489652 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329419 lambda!329392))))

(declare-fun bs!1489653 () Bool)

(assert (= bs!1489653 (and d!1893728 d!1893650)))

(assert (=> bs!1489653 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329419 lambda!329403))))

(declare-fun bs!1489654 () Bool)

(assert (= bs!1489654 (and d!1893728 d!1893288)))

(assert (=> bs!1489654 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329419 lambda!329291))))

(declare-fun bs!1489655 () Bool)

(assert (= bs!1489655 (and d!1893728 b!6037340)))

(assert (=> bs!1489655 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329419 lambda!329245))))

(declare-fun bs!1489656 () Bool)

(assert (= bs!1489656 (and d!1893728 d!1893350)))

(assert (=> bs!1489656 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329419 lambda!329312))))

(declare-fun bs!1489657 () Bool)

(assert (= bs!1489657 (and d!1893728 d!1893252)))

(assert (=> bs!1489657 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329419 lambda!329263))))

(assert (=> d!1893728 true))

(assert (=> d!1893728 (= (derivationStepZipper!2001 z!1189 (head!12577 s!2326)) (flatMap!1533 z!1189 lambda!329419))))

(declare-fun bs!1489658 () Bool)

(assert (= bs!1489658 d!1893728))

(declare-fun m!6909196 () Bool)

(assert (=> bs!1489658 m!6909196))

(assert (=> b!6037484 d!1893728))

(assert (=> b!6037484 d!1893538))

(assert (=> b!6037484 d!1893514))

(declare-fun d!1893730 () Bool)

(assert (=> d!1893730 (= (isEmpty!36140 (unfocusZipperList!1441 zl!343)) (is-Nil!64235 (unfocusZipperList!1441 zl!343)))))

(assert (=> b!6037744 d!1893730))

(declare-fun d!1893732 () Bool)

(declare-fun res!2514387 () Bool)

(declare-fun e!3688780 () Bool)

(assert (=> d!1893732 (=> res!2514387 e!3688780)))

(assert (=> d!1893732 (= res!2514387 (is-Nil!64236 lt!2322709))))

(assert (=> d!1893732 (= (forall!15127 lt!2322709 lambda!329290) e!3688780)))

(declare-fun b!6039010 () Bool)

(declare-fun e!3688781 () Bool)

(assert (=> b!6039010 (= e!3688780 e!3688781)))

(declare-fun res!2514388 () Bool)

(assert (=> b!6039010 (=> (not res!2514388) (not e!3688781))))

(assert (=> b!6039010 (= res!2514388 (dynLambda!25217 lambda!329290 (h!70684 lt!2322709)))))

(declare-fun b!6039011 () Bool)

(assert (=> b!6039011 (= e!3688781 (forall!15127 (t!377789 lt!2322709) lambda!329290))))

(assert (= (and d!1893732 (not res!2514387)) b!6039010))

(assert (= (and b!6039010 res!2514388) b!6039011))

(declare-fun b_lambda!229105 () Bool)

(assert (=> (not b_lambda!229105) (not b!6039010)))

(declare-fun m!6909198 () Bool)

(assert (=> b!6039010 m!6909198))

(declare-fun m!6909200 () Bool)

(assert (=> b!6039011 m!6909200))

(assert (=> b!6037607 d!1893732))

(assert (=> bs!1489047 d!1893312))

(declare-fun d!1893734 () Bool)

(declare-fun c!1082620 () Bool)

(assert (=> d!1893734 (= c!1082620 (isEmpty!36143 (tail!11662 (t!377790 s!2326))))))

(declare-fun e!3688782 () Bool)

(assert (=> d!1893734 (= (matchZipper!2056 (derivationStepZipper!2001 lt!2322699 (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))) e!3688782)))

(declare-fun b!6039012 () Bool)

(assert (=> b!6039012 (= e!3688782 (nullableZipper!1825 (derivationStepZipper!2001 lt!2322699 (head!12577 (t!377790 s!2326)))))))

(declare-fun b!6039013 () Bool)

(assert (=> b!6039013 (= e!3688782 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322699 (head!12577 (t!377790 s!2326))) (head!12577 (tail!11662 (t!377790 s!2326)))) (tail!11662 (tail!11662 (t!377790 s!2326)))))))

(assert (= (and d!1893734 c!1082620) b!6039012))

(assert (= (and d!1893734 (not c!1082620)) b!6039013))

(assert (=> d!1893734 m!6907876))

(assert (=> d!1893734 m!6908740))

(assert (=> b!6039012 m!6908012))

(declare-fun m!6909202 () Bool)

(assert (=> b!6039012 m!6909202))

(assert (=> b!6039013 m!6907876))

(assert (=> b!6039013 m!6908744))

(assert (=> b!6039013 m!6908012))

(assert (=> b!6039013 m!6908744))

(declare-fun m!6909204 () Bool)

(assert (=> b!6039013 m!6909204))

(assert (=> b!6039013 m!6907876))

(assert (=> b!6039013 m!6908748))

(assert (=> b!6039013 m!6909204))

(assert (=> b!6039013 m!6908748))

(declare-fun m!6909206 () Bool)

(assert (=> b!6039013 m!6909206))

(assert (=> b!6037642 d!1893734))

(declare-fun bs!1489659 () Bool)

(declare-fun d!1893736 () Bool)

(assert (= bs!1489659 (and d!1893736 d!1893552)))

(declare-fun lambda!329420 () Int)

(assert (=> bs!1489659 (= lambda!329420 lambda!329388)))

(declare-fun bs!1489660 () Bool)

(assert (= bs!1489660 (and d!1893736 d!1893572)))

(assert (=> bs!1489660 (= lambda!329420 lambda!329392)))

(declare-fun bs!1489661 () Bool)

(assert (= bs!1489661 (and d!1893736 d!1893650)))

(assert (=> bs!1489661 (= lambda!329420 lambda!329403)))

(declare-fun bs!1489662 () Bool)

(assert (= bs!1489662 (and d!1893736 d!1893288)))

(assert (=> bs!1489662 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329420 lambda!329291))))

(declare-fun bs!1489663 () Bool)

(assert (= bs!1489663 (and d!1893736 b!6037340)))

(assert (=> bs!1489663 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329420 lambda!329245))))

(declare-fun bs!1489664 () Bool)

(assert (= bs!1489664 (and d!1893736 d!1893728)))

(assert (=> bs!1489664 (= (= (head!12577 (t!377790 s!2326)) (head!12577 s!2326)) (= lambda!329420 lambda!329419))))

(declare-fun bs!1489665 () Bool)

(assert (= bs!1489665 (and d!1893736 d!1893350)))

(assert (=> bs!1489665 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329420 lambda!329312))))

(declare-fun bs!1489666 () Bool)

(assert (= bs!1489666 (and d!1893736 d!1893252)))

(assert (=> bs!1489666 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329420 lambda!329263))))

(assert (=> d!1893736 true))

(assert (=> d!1893736 (= (derivationStepZipper!2001 lt!2322699 (head!12577 (t!377790 s!2326))) (flatMap!1533 lt!2322699 lambda!329420))))

(declare-fun bs!1489667 () Bool)

(assert (= bs!1489667 d!1893736))

(declare-fun m!6909208 () Bool)

(assert (=> bs!1489667 m!6909208))

(assert (=> b!6037642 d!1893736))

(assert (=> b!6037642 d!1893554))

(assert (=> b!6037642 d!1893556))

(declare-fun b!6039014 () Bool)

(declare-fun e!3688784 () Bool)

(assert (=> b!6039014 (= e!3688784 (matchR!8203 (derivativeStep!4749 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326)) (head!12577 (tail!11662 s!2326))) (tail!11662 (tail!11662 s!2326))))))

(declare-fun b!6039015 () Bool)

(declare-fun e!3688786 () Bool)

(declare-fun lt!2323105 () Bool)

(assert (=> b!6039015 (= e!3688786 (not lt!2323105))))

(declare-fun b!6039016 () Bool)

(declare-fun e!3688785 () Bool)

(assert (=> b!6039016 (= e!3688785 (not (= (head!12577 (tail!11662 s!2326)) (c!1082125 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326))))))))

(declare-fun b!6039017 () Bool)

(declare-fun res!2514395 () Bool)

(declare-fun e!3688789 () Bool)

(assert (=> b!6039017 (=> (not res!2514395) (not e!3688789))))

(assert (=> b!6039017 (= res!2514395 (isEmpty!36143 (tail!11662 (tail!11662 s!2326))))))

(declare-fun b!6039018 () Bool)

(declare-fun e!3688787 () Bool)

(declare-fun call!493862 () Bool)

(assert (=> b!6039018 (= e!3688787 (= lt!2323105 call!493862))))

(declare-fun b!6039019 () Bool)

(assert (=> b!6039019 (= e!3688789 (= (head!12577 (tail!11662 s!2326)) (c!1082125 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326)))))))

(declare-fun d!1893738 () Bool)

(assert (=> d!1893738 e!3688787))

(declare-fun c!1082621 () Bool)

(assert (=> d!1893738 (= c!1082621 (is-EmptyExpr!16020 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326))))))

(assert (=> d!1893738 (= lt!2323105 e!3688784)))

(declare-fun c!1082622 () Bool)

(assert (=> d!1893738 (= c!1082622 (isEmpty!36143 (tail!11662 s!2326)))))

(assert (=> d!1893738 (validRegex!7756 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326)))))

(assert (=> d!1893738 (= (matchR!8203 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326)) (tail!11662 s!2326)) lt!2323105)))

(declare-fun b!6039020 () Bool)

(declare-fun res!2514392 () Bool)

(assert (=> b!6039020 (=> res!2514392 e!3688785)))

(assert (=> b!6039020 (= res!2514392 (not (isEmpty!36143 (tail!11662 (tail!11662 s!2326)))))))

(declare-fun b!6039021 () Bool)

(declare-fun res!2514396 () Bool)

(declare-fun e!3688788 () Bool)

(assert (=> b!6039021 (=> res!2514396 e!3688788)))

(assert (=> b!6039021 (= res!2514396 (not (is-ElementMatch!16020 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326)))))))

(assert (=> b!6039021 (= e!3688786 e!3688788)))

(declare-fun b!6039022 () Bool)

(declare-fun res!2514393 () Bool)

(assert (=> b!6039022 (=> res!2514393 e!3688788)))

(assert (=> b!6039022 (= res!2514393 e!3688789)))

(declare-fun res!2514394 () Bool)

(assert (=> b!6039022 (=> (not res!2514394) (not e!3688789))))

(assert (=> b!6039022 (= res!2514394 lt!2323105)))

(declare-fun b!6039023 () Bool)

(declare-fun res!2514390 () Bool)

(assert (=> b!6039023 (=> (not res!2514390) (not e!3688789))))

(assert (=> b!6039023 (= res!2514390 (not call!493862))))

(declare-fun b!6039024 () Bool)

(declare-fun e!3688783 () Bool)

(assert (=> b!6039024 (= e!3688783 e!3688785)))

(declare-fun res!2514391 () Bool)

(assert (=> b!6039024 (=> res!2514391 e!3688785)))

(assert (=> b!6039024 (= res!2514391 call!493862)))

(declare-fun b!6039025 () Bool)

(assert (=> b!6039025 (= e!3688784 (nullable!6015 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326))))))

(declare-fun bm!493857 () Bool)

(assert (=> bm!493857 (= call!493862 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun b!6039026 () Bool)

(assert (=> b!6039026 (= e!3688787 e!3688786)))

(declare-fun c!1082623 () Bool)

(assert (=> b!6039026 (= c!1082623 (is-EmptyLang!16020 (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326))))))

(declare-fun b!6039027 () Bool)

(assert (=> b!6039027 (= e!3688788 e!3688783)))

(declare-fun res!2514389 () Bool)

(assert (=> b!6039027 (=> (not res!2514389) (not e!3688783))))

(assert (=> b!6039027 (= res!2514389 (not lt!2323105))))

(assert (= (and d!1893738 c!1082622) b!6039025))

(assert (= (and d!1893738 (not c!1082622)) b!6039014))

(assert (= (and d!1893738 c!1082621) b!6039018))

(assert (= (and d!1893738 (not c!1082621)) b!6039026))

(assert (= (and b!6039026 c!1082623) b!6039015))

(assert (= (and b!6039026 (not c!1082623)) b!6039021))

(assert (= (and b!6039021 (not res!2514396)) b!6039022))

(assert (= (and b!6039022 res!2514394) b!6039023))

(assert (= (and b!6039023 res!2514390) b!6039017))

(assert (= (and b!6039017 res!2514395) b!6039019))

(assert (= (and b!6039022 (not res!2514393)) b!6039027))

(assert (= (and b!6039027 res!2514389) b!6039024))

(assert (= (and b!6039024 (not res!2514391)) b!6039020))

(assert (= (and b!6039020 (not res!2514392)) b!6039016))

(assert (= (or b!6039018 b!6039023 b!6039024) bm!493857))

(assert (=> bm!493857 m!6907842))

(assert (=> bm!493857 m!6907846))

(assert (=> b!6039020 m!6907842))

(assert (=> b!6039020 m!6909192))

(assert (=> b!6039020 m!6909192))

(declare-fun m!6909210 () Bool)

(assert (=> b!6039020 m!6909210))

(assert (=> b!6039014 m!6907842))

(assert (=> b!6039014 m!6909188))

(assert (=> b!6039014 m!6907848))

(assert (=> b!6039014 m!6909188))

(declare-fun m!6909212 () Bool)

(assert (=> b!6039014 m!6909212))

(assert (=> b!6039014 m!6907842))

(assert (=> b!6039014 m!6909192))

(assert (=> b!6039014 m!6909212))

(assert (=> b!6039014 m!6909192))

(declare-fun m!6909214 () Bool)

(assert (=> b!6039014 m!6909214))

(assert (=> b!6039025 m!6907848))

(declare-fun m!6909216 () Bool)

(assert (=> b!6039025 m!6909216))

(assert (=> b!6039017 m!6907842))

(assert (=> b!6039017 m!6909192))

(assert (=> b!6039017 m!6909192))

(assert (=> b!6039017 m!6909210))

(assert (=> b!6039016 m!6907842))

(assert (=> b!6039016 m!6909188))

(assert (=> d!1893738 m!6907842))

(assert (=> d!1893738 m!6907846))

(assert (=> d!1893738 m!6907848))

(declare-fun m!6909218 () Bool)

(assert (=> d!1893738 m!6909218))

(assert (=> b!6039019 m!6907842))

(assert (=> b!6039019 m!6909188))

(assert (=> b!6037513 d!1893738))

(declare-fun b!6039048 () Bool)

(declare-fun e!3688801 () Regex!16020)

(declare-fun call!493873 () Regex!16020)

(assert (=> b!6039048 (= e!3688801 (Concat!24865 call!493873 (regTwo!32552 r!7292)))))

(declare-fun b!6039049 () Bool)

(declare-fun e!3688800 () Regex!16020)

(declare-fun call!493874 () Regex!16020)

(declare-fun call!493871 () Regex!16020)

(assert (=> b!6039049 (= e!3688800 (Union!16020 call!493874 call!493871))))

(declare-fun b!6039050 () Bool)

(declare-fun e!3688803 () Regex!16020)

(declare-fun e!3688802 () Regex!16020)

(assert (=> b!6039050 (= e!3688803 e!3688802)))

(declare-fun c!1082638 () Bool)

(assert (=> b!6039050 (= c!1082638 (is-ElementMatch!16020 (regTwo!32552 r!7292)))))

(declare-fun b!6039051 () Bool)

(assert (=> b!6039051 (= e!3688803 EmptyLang!16020)))

(declare-fun b!6039052 () Bool)

(assert (=> b!6039052 (= e!3688800 e!3688801)))

(declare-fun c!1082635 () Bool)

(assert (=> b!6039052 (= c!1082635 (is-Star!16020 (regTwo!32552 r!7292)))))

(declare-fun bm!493866 () Bool)

(assert (=> bm!493866 (= call!493873 call!493871)))

(declare-fun e!3688804 () Regex!16020)

(declare-fun b!6039053 () Bool)

(declare-fun call!493872 () Regex!16020)

(assert (=> b!6039053 (= e!3688804 (Union!16020 (Concat!24865 call!493873 (regTwo!32552 (regTwo!32552 r!7292))) call!493872))))

(declare-fun b!6039055 () Bool)

(assert (=> b!6039055 (= e!3688802 (ite (= (head!12577 s!2326) (c!1082125 (regTwo!32552 r!7292))) EmptyExpr!16020 EmptyLang!16020))))

(declare-fun b!6039056 () Bool)

(declare-fun c!1082634 () Bool)

(assert (=> b!6039056 (= c!1082634 (is-Union!16020 (regTwo!32552 r!7292)))))

(assert (=> b!6039056 (= e!3688802 e!3688800)))

(declare-fun bm!493867 () Bool)

(assert (=> bm!493867 (= call!493872 call!493874)))

(declare-fun c!1082636 () Bool)

(declare-fun bm!493868 () Bool)

(assert (=> bm!493868 (= call!493874 (derivativeStep!4749 (ite c!1082634 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082636 (regTwo!32552 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (head!12577 s!2326)))))

(declare-fun b!6039054 () Bool)

(assert (=> b!6039054 (= e!3688804 (Union!16020 (Concat!24865 call!493872 (regTwo!32552 (regTwo!32552 r!7292))) EmptyLang!16020))))

(declare-fun d!1893740 () Bool)

(declare-fun lt!2323108 () Regex!16020)

(assert (=> d!1893740 (validRegex!7756 lt!2323108)))

(assert (=> d!1893740 (= lt!2323108 e!3688803)))

(declare-fun c!1082637 () Bool)

(assert (=> d!1893740 (= c!1082637 (or (is-EmptyExpr!16020 (regTwo!32552 r!7292)) (is-EmptyLang!16020 (regTwo!32552 r!7292))))))

(assert (=> d!1893740 (validRegex!7756 (regTwo!32552 r!7292))))

(assert (=> d!1893740 (= (derivativeStep!4749 (regTwo!32552 r!7292) (head!12577 s!2326)) lt!2323108)))

(declare-fun bm!493869 () Bool)

(assert (=> bm!493869 (= call!493871 (derivativeStep!4749 (ite c!1082634 (regTwo!32553 (regTwo!32552 r!7292)) (ite c!1082635 (reg!16349 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (head!12577 s!2326)))))

(declare-fun b!6039057 () Bool)

(assert (=> b!6039057 (= c!1082636 (nullable!6015 (regOne!32552 (regTwo!32552 r!7292))))))

(assert (=> b!6039057 (= e!3688801 e!3688804)))

(assert (= (and d!1893740 c!1082637) b!6039051))

(assert (= (and d!1893740 (not c!1082637)) b!6039050))

(assert (= (and b!6039050 c!1082638) b!6039055))

(assert (= (and b!6039050 (not c!1082638)) b!6039056))

(assert (= (and b!6039056 c!1082634) b!6039049))

(assert (= (and b!6039056 (not c!1082634)) b!6039052))

(assert (= (and b!6039052 c!1082635) b!6039048))

(assert (= (and b!6039052 (not c!1082635)) b!6039057))

(assert (= (and b!6039057 c!1082636) b!6039053))

(assert (= (and b!6039057 (not c!1082636)) b!6039054))

(assert (= (or b!6039053 b!6039054) bm!493867))

(assert (= (or b!6039048 b!6039053) bm!493866))

(assert (= (or b!6039049 bm!493866) bm!493869))

(assert (= (or b!6039049 bm!493867) bm!493868))

(assert (=> bm!493868 m!6907838))

(declare-fun m!6909220 () Bool)

(assert (=> bm!493868 m!6909220))

(declare-fun m!6909222 () Bool)

(assert (=> d!1893740 m!6909222))

(assert (=> d!1893740 m!6907636))

(assert (=> bm!493869 m!6907838))

(declare-fun m!6909224 () Bool)

(assert (=> bm!493869 m!6909224))

(assert (=> b!6039057 m!6908080))

(assert (=> b!6037513 d!1893740))

(assert (=> b!6037513 d!1893538))

(assert (=> b!6037513 d!1893514))

(assert (=> d!1893256 d!1893634))

(declare-fun b!6039058 () Bool)

(declare-fun e!3688806 () Bool)

(assert (=> b!6039058 (= e!3688806 (matchR!8203 (derivativeStep!4749 (regOne!32552 r!7292) (head!12577 Nil!64237)) (tail!11662 Nil!64237)))))

(declare-fun b!6039059 () Bool)

(declare-fun e!3688808 () Bool)

(declare-fun lt!2323109 () Bool)

(assert (=> b!6039059 (= e!3688808 (not lt!2323109))))

(declare-fun b!6039060 () Bool)

(declare-fun e!3688807 () Bool)

(assert (=> b!6039060 (= e!3688807 (not (= (head!12577 Nil!64237) (c!1082125 (regOne!32552 r!7292)))))))

(declare-fun b!6039061 () Bool)

(declare-fun res!2514403 () Bool)

(declare-fun e!3688811 () Bool)

(assert (=> b!6039061 (=> (not res!2514403) (not e!3688811))))

(assert (=> b!6039061 (= res!2514403 (isEmpty!36143 (tail!11662 Nil!64237)))))

(declare-fun b!6039062 () Bool)

(declare-fun e!3688809 () Bool)

(declare-fun call!493875 () Bool)

(assert (=> b!6039062 (= e!3688809 (= lt!2323109 call!493875))))

(declare-fun b!6039063 () Bool)

(assert (=> b!6039063 (= e!3688811 (= (head!12577 Nil!64237) (c!1082125 (regOne!32552 r!7292))))))

(declare-fun d!1893742 () Bool)

(assert (=> d!1893742 e!3688809))

(declare-fun c!1082639 () Bool)

(assert (=> d!1893742 (= c!1082639 (is-EmptyExpr!16020 (regOne!32552 r!7292)))))

(assert (=> d!1893742 (= lt!2323109 e!3688806)))

(declare-fun c!1082640 () Bool)

(assert (=> d!1893742 (= c!1082640 (isEmpty!36143 Nil!64237))))

(assert (=> d!1893742 (validRegex!7756 (regOne!32552 r!7292))))

(assert (=> d!1893742 (= (matchR!8203 (regOne!32552 r!7292) Nil!64237) lt!2323109)))

(declare-fun b!6039064 () Bool)

(declare-fun res!2514400 () Bool)

(assert (=> b!6039064 (=> res!2514400 e!3688807)))

(assert (=> b!6039064 (= res!2514400 (not (isEmpty!36143 (tail!11662 Nil!64237))))))

(declare-fun b!6039065 () Bool)

(declare-fun res!2514404 () Bool)

(declare-fun e!3688810 () Bool)

(assert (=> b!6039065 (=> res!2514404 e!3688810)))

(assert (=> b!6039065 (= res!2514404 (not (is-ElementMatch!16020 (regOne!32552 r!7292))))))

(assert (=> b!6039065 (= e!3688808 e!3688810)))

(declare-fun b!6039066 () Bool)

(declare-fun res!2514401 () Bool)

(assert (=> b!6039066 (=> res!2514401 e!3688810)))

(assert (=> b!6039066 (= res!2514401 e!3688811)))

(declare-fun res!2514402 () Bool)

(assert (=> b!6039066 (=> (not res!2514402) (not e!3688811))))

(assert (=> b!6039066 (= res!2514402 lt!2323109)))

(declare-fun b!6039067 () Bool)

(declare-fun res!2514398 () Bool)

(assert (=> b!6039067 (=> (not res!2514398) (not e!3688811))))

(assert (=> b!6039067 (= res!2514398 (not call!493875))))

(declare-fun b!6039068 () Bool)

(declare-fun e!3688805 () Bool)

(assert (=> b!6039068 (= e!3688805 e!3688807)))

(declare-fun res!2514399 () Bool)

(assert (=> b!6039068 (=> res!2514399 e!3688807)))

(assert (=> b!6039068 (= res!2514399 call!493875)))

(declare-fun b!6039069 () Bool)

(assert (=> b!6039069 (= e!3688806 (nullable!6015 (regOne!32552 r!7292)))))

(declare-fun bm!493870 () Bool)

(assert (=> bm!493870 (= call!493875 (isEmpty!36143 Nil!64237))))

(declare-fun b!6039070 () Bool)

(assert (=> b!6039070 (= e!3688809 e!3688808)))

(declare-fun c!1082641 () Bool)

(assert (=> b!6039070 (= c!1082641 (is-EmptyLang!16020 (regOne!32552 r!7292)))))

(declare-fun b!6039071 () Bool)

(assert (=> b!6039071 (= e!3688810 e!3688805)))

(declare-fun res!2514397 () Bool)

(assert (=> b!6039071 (=> (not res!2514397) (not e!3688805))))

(assert (=> b!6039071 (= res!2514397 (not lt!2323109))))

(assert (= (and d!1893742 c!1082640) b!6039069))

(assert (= (and d!1893742 (not c!1082640)) b!6039058))

(assert (= (and d!1893742 c!1082639) b!6039062))

(assert (= (and d!1893742 (not c!1082639)) b!6039070))

(assert (= (and b!6039070 c!1082641) b!6039059))

(assert (= (and b!6039070 (not c!1082641)) b!6039065))

(assert (= (and b!6039065 (not res!2514404)) b!6039066))

(assert (= (and b!6039066 res!2514402) b!6039067))

(assert (= (and b!6039067 res!2514398) b!6039061))

(assert (= (and b!6039061 res!2514403) b!6039063))

(assert (= (and b!6039066 (not res!2514401)) b!6039071))

(assert (= (and b!6039071 res!2514397) b!6039068))

(assert (= (and b!6039068 (not res!2514399)) b!6039064))

(assert (= (and b!6039064 (not res!2514400)) b!6039060))

(assert (= (or b!6039062 b!6039067 b!6039068) bm!493870))

(declare-fun m!6909226 () Bool)

(assert (=> bm!493870 m!6909226))

(declare-fun m!6909228 () Bool)

(assert (=> b!6039064 m!6909228))

(assert (=> b!6039064 m!6909228))

(declare-fun m!6909230 () Bool)

(assert (=> b!6039064 m!6909230))

(declare-fun m!6909232 () Bool)

(assert (=> b!6039058 m!6909232))

(assert (=> b!6039058 m!6909232))

(declare-fun m!6909234 () Bool)

(assert (=> b!6039058 m!6909234))

(assert (=> b!6039058 m!6909228))

(assert (=> b!6039058 m!6909234))

(assert (=> b!6039058 m!6909228))

(declare-fun m!6909236 () Bool)

(assert (=> b!6039058 m!6909236))

(assert (=> b!6039069 m!6907676))

(assert (=> b!6039061 m!6909228))

(assert (=> b!6039061 m!6909228))

(assert (=> b!6039061 m!6909230))

(assert (=> b!6039060 m!6909232))

(assert (=> d!1893742 m!6909226))

(assert (=> d!1893742 m!6907898))

(assert (=> b!6039063 m!6909232))

(assert (=> d!1893256 d!1893742))

(declare-fun c!1082643 () Bool)

(declare-fun c!1082642 () Bool)

(declare-fun call!493876 () Bool)

(declare-fun bm!493871 () Bool)

(assert (=> bm!493871 (= call!493876 (validRegex!7756 (ite c!1082643 (reg!16349 (regOne!32552 r!7292)) (ite c!1082642 (regTwo!32553 (regOne!32552 r!7292)) (regTwo!32552 (regOne!32552 r!7292))))))))

(declare-fun b!6039072 () Bool)

(declare-fun e!3688815 () Bool)

(declare-fun call!493878 () Bool)

(assert (=> b!6039072 (= e!3688815 call!493878)))

(declare-fun bm!493872 () Bool)

(declare-fun call!493877 () Bool)

(assert (=> bm!493872 (= call!493877 (validRegex!7756 (ite c!1082642 (regOne!32553 (regOne!32552 r!7292)) (regOne!32552 (regOne!32552 r!7292)))))))

(declare-fun b!6039073 () Bool)

(declare-fun e!3688816 () Bool)

(declare-fun e!3688814 () Bool)

(assert (=> b!6039073 (= e!3688816 e!3688814)))

(declare-fun res!2514408 () Bool)

(assert (=> b!6039073 (= res!2514408 (not (nullable!6015 (reg!16349 (regOne!32552 r!7292)))))))

(assert (=> b!6039073 (=> (not res!2514408) (not e!3688814))))

(declare-fun b!6039074 () Bool)

(declare-fun e!3688818 () Bool)

(assert (=> b!6039074 (= e!3688816 e!3688818)))

(assert (=> b!6039074 (= c!1082642 (is-Union!16020 (regOne!32552 r!7292)))))

(declare-fun d!1893744 () Bool)

(declare-fun res!2514409 () Bool)

(declare-fun e!3688812 () Bool)

(assert (=> d!1893744 (=> res!2514409 e!3688812)))

(assert (=> d!1893744 (= res!2514409 (is-ElementMatch!16020 (regOne!32552 r!7292)))))

(assert (=> d!1893744 (= (validRegex!7756 (regOne!32552 r!7292)) e!3688812)))

(declare-fun bm!493873 () Bool)

(assert (=> bm!493873 (= call!493878 call!493876)))

(declare-fun b!6039075 () Bool)

(assert (=> b!6039075 (= e!3688812 e!3688816)))

(assert (=> b!6039075 (= c!1082643 (is-Star!16020 (regOne!32552 r!7292)))))

(declare-fun b!6039076 () Bool)

(assert (=> b!6039076 (= e!3688814 call!493876)))

(declare-fun b!6039077 () Bool)

(declare-fun e!3688817 () Bool)

(assert (=> b!6039077 (= e!3688817 e!3688815)))

(declare-fun res!2514407 () Bool)

(assert (=> b!6039077 (=> (not res!2514407) (not e!3688815))))

(assert (=> b!6039077 (= res!2514407 call!493877)))

(declare-fun b!6039078 () Bool)

(declare-fun res!2514405 () Bool)

(declare-fun e!3688813 () Bool)

(assert (=> b!6039078 (=> (not res!2514405) (not e!3688813))))

(assert (=> b!6039078 (= res!2514405 call!493877)))

(assert (=> b!6039078 (= e!3688818 e!3688813)))

(declare-fun b!6039079 () Bool)

(declare-fun res!2514406 () Bool)

(assert (=> b!6039079 (=> res!2514406 e!3688817)))

(assert (=> b!6039079 (= res!2514406 (not (is-Concat!24865 (regOne!32552 r!7292))))))

(assert (=> b!6039079 (= e!3688818 e!3688817)))

(declare-fun b!6039080 () Bool)

(assert (=> b!6039080 (= e!3688813 call!493878)))

(assert (= (and d!1893744 (not res!2514409)) b!6039075))

(assert (= (and b!6039075 c!1082643) b!6039073))

(assert (= (and b!6039075 (not c!1082643)) b!6039074))

(assert (= (and b!6039073 res!2514408) b!6039076))

(assert (= (and b!6039074 c!1082642) b!6039078))

(assert (= (and b!6039074 (not c!1082642)) b!6039079))

(assert (= (and b!6039078 res!2514405) b!6039080))

(assert (= (and b!6039079 (not res!2514406)) b!6039077))

(assert (= (and b!6039077 res!2514407) b!6039072))

(assert (= (or b!6039080 b!6039072) bm!493873))

(assert (= (or b!6039078 b!6039077) bm!493872))

(assert (= (or b!6039076 bm!493873) bm!493871))

(declare-fun m!6909238 () Bool)

(assert (=> bm!493871 m!6909238))

(declare-fun m!6909240 () Bool)

(assert (=> bm!493872 m!6909240))

(declare-fun m!6909242 () Bool)

(assert (=> b!6039073 m!6909242))

(assert (=> d!1893256 d!1893744))

(declare-fun bs!1489668 () Bool)

(declare-fun d!1893746 () Bool)

(assert (= bs!1489668 (and d!1893746 b!6037607)))

(declare-fun lambda!329421 () Int)

(assert (=> bs!1489668 (not (= lambda!329421 lambda!329290))))

(declare-fun bs!1489669 () Bool)

(assert (= bs!1489669 (and d!1893746 b!6038691)))

(assert (=> bs!1489669 (not (= lambda!329421 lambda!329395))))

(declare-fun bs!1489670 () Bool)

(assert (= bs!1489670 (and d!1893746 d!1893642)))

(assert (=> bs!1489670 (= lambda!329421 lambda!329402)))

(declare-fun bs!1489671 () Bool)

(assert (= bs!1489671 (and d!1893746 b!6038908)))

(assert (=> bs!1489671 (not (= lambda!329421 lambda!329412))))

(declare-fun bs!1489672 () Bool)

(assert (= bs!1489672 (and d!1893746 b!6037597)))

(assert (=> bs!1489672 (not (= lambda!329421 lambda!329280))))

(declare-fun bs!1489673 () Bool)

(assert (= bs!1489673 (and d!1893746 b!6037602)))

(assert (=> bs!1489673 (not (= lambda!329421 lambda!329283))))

(declare-fun bs!1489674 () Bool)

(assert (= bs!1489674 (and d!1893746 d!1893700)))

(assert (=> bs!1489674 (= lambda!329421 lambda!329417)))

(declare-fun bs!1489675 () Bool)

(assert (= bs!1489675 (and d!1893746 b!6037599)))

(assert (=> bs!1489675 (not (= lambda!329421 lambda!329281))))

(declare-fun bs!1489676 () Bool)

(assert (= bs!1489676 (and d!1893746 b!6037604)))

(assert (=> bs!1489676 (not (= lambda!329421 lambda!329284))))

(declare-fun bs!1489677 () Bool)

(assert (= bs!1489677 (and d!1893746 d!1893690)))

(assert (=> bs!1489677 (not (= lambda!329421 lambda!329414))))

(declare-fun bs!1489678 () Bool)

(assert (= bs!1489678 (and d!1893746 d!1893668)))

(assert (=> bs!1489678 (not (= lambda!329421 lambda!329410))))

(declare-fun bs!1489679 () Bool)

(assert (= bs!1489679 (and d!1893746 b!6038844)))

(assert (=> bs!1489679 (not (= lambda!329421 lambda!329409))))

(declare-fun bs!1489680 () Bool)

(assert (= bs!1489680 (and d!1893746 d!1893580)))

(assert (=> bs!1489680 (not (= lambda!329421 lambda!329400))))

(declare-fun bs!1489681 () Bool)

(assert (= bs!1489681 (and d!1893746 b!6038689)))

(assert (=> bs!1489681 (not (= lambda!329421 lambda!329394))))

(declare-fun bs!1489682 () Bool)

(assert (= bs!1489682 (and d!1893746 d!1893560)))

(assert (=> bs!1489682 (= lambda!329421 lambda!329391)))

(declare-fun bs!1489683 () Bool)

(assert (= bs!1489683 (and d!1893746 b!6038842)))

(assert (=> bs!1489683 (not (= lambda!329421 lambda!329408))))

(declare-fun bs!1489684 () Bool)

(assert (= bs!1489684 (and d!1893746 b!6037605)))

(assert (=> bs!1489684 (not (= lambda!329421 lambda!329289))))

(declare-fun bs!1489685 () Bool)

(assert (= bs!1489685 (and d!1893746 b!6038910)))

(assert (=> bs!1489685 (not (= lambda!329421 lambda!329413))))

(assert (=> d!1893746 (= (nullableZipper!1825 lt!2322718) (exists!2385 lt!2322718 lambda!329421))))

(declare-fun bs!1489686 () Bool)

(assert (= bs!1489686 d!1893746))

(declare-fun m!6909244 () Bool)

(assert (=> bs!1489686 m!6909244))

(assert (=> b!6037534 d!1893746))

(declare-fun d!1893748 () Bool)

(assert (=> d!1893748 (= (isEmptyExpr!1445 lt!2322933) (is-EmptyExpr!16020 lt!2322933))))

(assert (=> b!6037779 d!1893748))

(declare-fun bs!1489687 () Bool)

(declare-fun d!1893750 () Bool)

(assert (= bs!1489687 (and d!1893750 b!6037607)))

(declare-fun lambda!329422 () Int)

(assert (=> bs!1489687 (not (= lambda!329422 lambda!329290))))

(declare-fun bs!1489688 () Bool)

(assert (= bs!1489688 (and d!1893750 b!6038691)))

(assert (=> bs!1489688 (not (= lambda!329422 lambda!329395))))

(declare-fun bs!1489689 () Bool)

(assert (= bs!1489689 (and d!1893750 d!1893642)))

(assert (=> bs!1489689 (= lambda!329422 lambda!329402)))

(declare-fun bs!1489690 () Bool)

(assert (= bs!1489690 (and d!1893750 d!1893746)))

(assert (=> bs!1489690 (= lambda!329422 lambda!329421)))

(declare-fun bs!1489691 () Bool)

(assert (= bs!1489691 (and d!1893750 b!6038908)))

(assert (=> bs!1489691 (not (= lambda!329422 lambda!329412))))

(declare-fun bs!1489692 () Bool)

(assert (= bs!1489692 (and d!1893750 b!6037597)))

(assert (=> bs!1489692 (not (= lambda!329422 lambda!329280))))

(declare-fun bs!1489693 () Bool)

(assert (= bs!1489693 (and d!1893750 b!6037602)))

(assert (=> bs!1489693 (not (= lambda!329422 lambda!329283))))

(declare-fun bs!1489694 () Bool)

(assert (= bs!1489694 (and d!1893750 d!1893700)))

(assert (=> bs!1489694 (= lambda!329422 lambda!329417)))

(declare-fun bs!1489695 () Bool)

(assert (= bs!1489695 (and d!1893750 b!6037599)))

(assert (=> bs!1489695 (not (= lambda!329422 lambda!329281))))

(declare-fun bs!1489696 () Bool)

(assert (= bs!1489696 (and d!1893750 b!6037604)))

(assert (=> bs!1489696 (not (= lambda!329422 lambda!329284))))

(declare-fun bs!1489697 () Bool)

(assert (= bs!1489697 (and d!1893750 d!1893690)))

(assert (=> bs!1489697 (not (= lambda!329422 lambda!329414))))

(declare-fun bs!1489698 () Bool)

(assert (= bs!1489698 (and d!1893750 d!1893668)))

(assert (=> bs!1489698 (not (= lambda!329422 lambda!329410))))

(declare-fun bs!1489699 () Bool)

(assert (= bs!1489699 (and d!1893750 b!6038844)))

(assert (=> bs!1489699 (not (= lambda!329422 lambda!329409))))

(declare-fun bs!1489700 () Bool)

(assert (= bs!1489700 (and d!1893750 d!1893580)))

(assert (=> bs!1489700 (not (= lambda!329422 lambda!329400))))

(declare-fun bs!1489701 () Bool)

(assert (= bs!1489701 (and d!1893750 b!6038689)))

(assert (=> bs!1489701 (not (= lambda!329422 lambda!329394))))

(declare-fun bs!1489702 () Bool)

(assert (= bs!1489702 (and d!1893750 d!1893560)))

(assert (=> bs!1489702 (= lambda!329422 lambda!329391)))

(declare-fun bs!1489703 () Bool)

(assert (= bs!1489703 (and d!1893750 b!6038842)))

(assert (=> bs!1489703 (not (= lambda!329422 lambda!329408))))

(declare-fun bs!1489704 () Bool)

(assert (= bs!1489704 (and d!1893750 b!6037605)))

(assert (=> bs!1489704 (not (= lambda!329422 lambda!329289))))

(declare-fun bs!1489705 () Bool)

(assert (= bs!1489705 (and d!1893750 b!6038910)))

(assert (=> bs!1489705 (not (= lambda!329422 lambda!329413))))

(assert (=> d!1893750 (= (nullableZipper!1825 z!1189) (exists!2385 z!1189 lambda!329422))))

(declare-fun bs!1489706 () Bool)

(assert (= bs!1489706 d!1893750))

(declare-fun m!6909246 () Bool)

(assert (=> bs!1489706 m!6909246))

(assert (=> b!6037483 d!1893750))

(assert (=> d!1893326 d!1893598))

(declare-fun bs!1489707 () Bool)

(declare-fun d!1893752 () Bool)

(assert (= bs!1489707 (and d!1893752 d!1893522)))

(declare-fun lambda!329423 () Int)

(assert (=> bs!1489707 (not (= lambda!329423 lambda!329382))))

(declare-fun bs!1489708 () Bool)

(assert (= bs!1489708 (and d!1893752 d!1893280)))

(assert (=> bs!1489708 (= lambda!329423 lambda!329287)))

(declare-fun bs!1489709 () Bool)

(assert (= bs!1489709 (and d!1893752 b!6038839)))

(assert (=> bs!1489709 (not (= lambda!329423 lambda!329405))))

(declare-fun bs!1489710 () Bool)

(assert (= bs!1489710 (and d!1893752 b!6037654)))

(assert (=> bs!1489710 (not (= lambda!329423 lambda!329296))))

(declare-fun bs!1489711 () Bool)

(assert (= bs!1489711 (and d!1893752 b!6037659)))

(assert (=> bs!1489711 (not (= lambda!329423 lambda!329298))))

(declare-fun bs!1489712 () Bool)

(assert (= bs!1489712 (and d!1893752 b!6038563)))

(assert (=> bs!1489712 (not (= lambda!329423 lambda!329378))))

(declare-fun bs!1489713 () Bool)

(assert (= bs!1489713 (and d!1893752 d!1893654)))

(assert (=> bs!1489713 (= lambda!329423 lambda!329404)))

(declare-fun bs!1489714 () Bool)

(assert (= bs!1489714 (and d!1893752 d!1893714)))

(assert (=> bs!1489714 (= lambda!329423 lambda!329418)))

(declare-fun bs!1489715 () Bool)

(assert (= bs!1489715 (and d!1893752 d!1893332)))

(assert (=> bs!1489715 (= lambda!329423 lambda!329307)))

(declare-fun bs!1489716 () Bool)

(assert (= bs!1489716 (and d!1893752 b!6038841)))

(assert (=> bs!1489716 (not (= lambda!329423 lambda!329406))))

(declare-fun bs!1489717 () Bool)

(assert (= bs!1489717 (and d!1893752 d!1893344)))

(assert (=> bs!1489717 (= lambda!329423 lambda!329311)))

(declare-fun bs!1489718 () Bool)

(assert (= bs!1489718 (and d!1893752 d!1893548)))

(assert (=> bs!1489718 (= lambda!329423 lambda!329387)))

(declare-fun bs!1489719 () Bool)

(assert (= bs!1489719 (and d!1893752 b!6038692)))

(assert (=> bs!1489719 (not (= lambda!329423 lambda!329396))))

(declare-fun bs!1489720 () Bool)

(assert (= bs!1489720 (and d!1893752 b!6038915)))

(assert (=> bs!1489720 (not (= lambda!329423 lambda!329416))))

(declare-fun bs!1489721 () Bool)

(assert (= bs!1489721 (and d!1893752 d!1893334)))

(assert (=> bs!1489721 (= lambda!329423 lambda!329310)))

(declare-fun bs!1489722 () Bool)

(assert (= bs!1489722 (and d!1893752 d!1893624)))

(assert (=> bs!1489722 (= lambda!329423 lambda!329401)))

(declare-fun bs!1489723 () Bool)

(assert (= bs!1489723 (and d!1893752 d!1893506)))

(assert (=> bs!1489723 (not (= lambda!329423 lambda!329381))))

(declare-fun bs!1489724 () Bool)

(assert (= bs!1489724 (and d!1893752 d!1893330)))

(assert (=> bs!1489724 (= lambda!329423 lambda!329304)))

(declare-fun bs!1489725 () Bool)

(assert (= bs!1489725 (and d!1893752 b!6038913)))

(assert (=> bs!1489725 (not (= lambda!329423 lambda!329415))))

(declare-fun bs!1489726 () Bool)

(assert (= bs!1489726 (and d!1893752 b!6038561)))

(assert (=> bs!1489726 (not (= lambda!329423 lambda!329377))))

(declare-fun bs!1489727 () Bool)

(assert (= bs!1489727 (and d!1893752 b!6038598)))

(assert (=> bs!1489727 (not (= lambda!329423 lambda!329384))))

(declare-fun bs!1489728 () Bool)

(assert (= bs!1489728 (and d!1893752 b!6038694)))

(assert (=> bs!1489728 (not (= lambda!329423 lambda!329397))))

(declare-fun bs!1489729 () Bool)

(assert (= bs!1489729 (and d!1893752 b!6037661)))

(assert (=> bs!1489729 (not (= lambda!329423 lambda!329299))))

(declare-fun bs!1489730 () Bool)

(assert (= bs!1489730 (and d!1893752 b!6037718)))

(assert (=> bs!1489730 (not (= lambda!329423 lambda!329301))))

(declare-fun bs!1489731 () Bool)

(assert (= bs!1489731 (and d!1893752 b!6038596)))

(assert (=> bs!1489731 (not (= lambda!329423 lambda!329383))))

(declare-fun bs!1489732 () Bool)

(assert (= bs!1489732 (and d!1893752 b!6037716)))

(assert (=> bs!1489732 (not (= lambda!329423 lambda!329300))))

(declare-fun bs!1489733 () Bool)

(assert (= bs!1489733 (and d!1893752 b!6037656)))

(assert (=> bs!1489733 (not (= lambda!329423 lambda!329297))))

(declare-fun b!6039081 () Bool)

(declare-fun e!3688824 () Bool)

(declare-fun e!3688819 () Bool)

(assert (=> b!6039081 (= e!3688824 e!3688819)))

(declare-fun c!1082645 () Bool)

(assert (=> b!6039081 (= c!1082645 (isEmpty!36140 (t!377788 (exprs!5904 (h!70684 zl!343)))))))

(assert (=> d!1893752 e!3688824))

(declare-fun res!2514411 () Bool)

(assert (=> d!1893752 (=> (not res!2514411) (not e!3688824))))

(declare-fun lt!2323110 () Regex!16020)

(assert (=> d!1893752 (= res!2514411 (validRegex!7756 lt!2323110))))

(declare-fun e!3688823 () Regex!16020)

(assert (=> d!1893752 (= lt!2323110 e!3688823)))

(declare-fun c!1082646 () Bool)

(declare-fun e!3688822 () Bool)

(assert (=> d!1893752 (= c!1082646 e!3688822)))

(declare-fun res!2514410 () Bool)

(assert (=> d!1893752 (=> (not res!2514410) (not e!3688822))))

(assert (=> d!1893752 (= res!2514410 (is-Cons!64235 (t!377788 (exprs!5904 (h!70684 zl!343)))))))

(assert (=> d!1893752 (forall!15128 (t!377788 (exprs!5904 (h!70684 zl!343))) lambda!329423)))

(assert (=> d!1893752 (= (generalisedConcat!1617 (t!377788 (exprs!5904 (h!70684 zl!343)))) lt!2323110)))

(declare-fun b!6039082 () Bool)

(declare-fun e!3688820 () Bool)

(assert (=> b!6039082 (= e!3688819 e!3688820)))

(declare-fun c!1082647 () Bool)

(assert (=> b!6039082 (= c!1082647 (isEmpty!36140 (tail!11663 (t!377788 (exprs!5904 (h!70684 zl!343))))))))

(declare-fun b!6039083 () Bool)

(assert (=> b!6039083 (= e!3688819 (isEmptyExpr!1445 lt!2323110))))

(declare-fun b!6039084 () Bool)

(assert (=> b!6039084 (= e!3688820 (isConcat!968 lt!2323110))))

(declare-fun b!6039085 () Bool)

(declare-fun e!3688821 () Regex!16020)

(assert (=> b!6039085 (= e!3688821 EmptyExpr!16020)))

(declare-fun b!6039086 () Bool)

(assert (=> b!6039086 (= e!3688822 (isEmpty!36140 (t!377788 (t!377788 (exprs!5904 (h!70684 zl!343))))))))

(declare-fun b!6039087 () Bool)

(assert (=> b!6039087 (= e!3688821 (Concat!24865 (h!70683 (t!377788 (exprs!5904 (h!70684 zl!343)))) (generalisedConcat!1617 (t!377788 (t!377788 (exprs!5904 (h!70684 zl!343)))))))))

(declare-fun b!6039088 () Bool)

(assert (=> b!6039088 (= e!3688823 (h!70683 (t!377788 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun b!6039089 () Bool)

(assert (=> b!6039089 (= e!3688820 (= lt!2323110 (head!12578 (t!377788 (exprs!5904 (h!70684 zl!343))))))))

(declare-fun b!6039090 () Bool)

(assert (=> b!6039090 (= e!3688823 e!3688821)))

(declare-fun c!1082644 () Bool)

(assert (=> b!6039090 (= c!1082644 (is-Cons!64235 (t!377788 (exprs!5904 (h!70684 zl!343)))))))

(assert (= (and d!1893752 res!2514410) b!6039086))

(assert (= (and d!1893752 c!1082646) b!6039088))

(assert (= (and d!1893752 (not c!1082646)) b!6039090))

(assert (= (and b!6039090 c!1082644) b!6039087))

(assert (= (and b!6039090 (not c!1082644)) b!6039085))

(assert (= (and d!1893752 res!2514411) b!6039081))

(assert (= (and b!6039081 c!1082645) b!6039083))

(assert (= (and b!6039081 (not c!1082645)) b!6039082))

(assert (= (and b!6039082 c!1082647) b!6039089))

(assert (= (and b!6039082 (not c!1082647)) b!6039084))

(declare-fun m!6909248 () Bool)

(assert (=> b!6039086 m!6909248))

(declare-fun m!6909250 () Bool)

(assert (=> d!1893752 m!6909250))

(declare-fun m!6909252 () Bool)

(assert (=> d!1893752 m!6909252))

(declare-fun m!6909254 () Bool)

(assert (=> b!6039083 m!6909254))

(declare-fun m!6909256 () Bool)

(assert (=> b!6039087 m!6909256))

(declare-fun m!6909258 () Bool)

(assert (=> b!6039089 m!6909258))

(assert (=> b!6039081 m!6907704))

(declare-fun m!6909260 () Bool)

(assert (=> b!6039084 m!6909260))

(declare-fun m!6909262 () Bool)

(assert (=> b!6039082 m!6909262))

(assert (=> b!6039082 m!6909262))

(declare-fun m!6909264 () Bool)

(assert (=> b!6039082 m!6909264))

(assert (=> b!6037783 d!1893752))

(assert (=> d!1893340 d!1893568))

(assert (=> d!1893340 d!1893682))

(declare-fun b!6039091 () Bool)

(declare-fun e!3688826 () Bool)

(assert (=> b!6039091 (= e!3688826 (matchR!8203 (derivativeStep!4749 (derivativeStep!4749 lt!2322697 (head!12577 s!2326)) (head!12577 (tail!11662 s!2326))) (tail!11662 (tail!11662 s!2326))))))

(declare-fun b!6039092 () Bool)

(declare-fun e!3688828 () Bool)

(declare-fun lt!2323111 () Bool)

(assert (=> b!6039092 (= e!3688828 (not lt!2323111))))

(declare-fun b!6039093 () Bool)

(declare-fun e!3688827 () Bool)

(assert (=> b!6039093 (= e!3688827 (not (= (head!12577 (tail!11662 s!2326)) (c!1082125 (derivativeStep!4749 lt!2322697 (head!12577 s!2326))))))))

(declare-fun b!6039094 () Bool)

(declare-fun res!2514418 () Bool)

(declare-fun e!3688831 () Bool)

(assert (=> b!6039094 (=> (not res!2514418) (not e!3688831))))

(assert (=> b!6039094 (= res!2514418 (isEmpty!36143 (tail!11662 (tail!11662 s!2326))))))

(declare-fun b!6039095 () Bool)

(declare-fun e!3688829 () Bool)

(declare-fun call!493879 () Bool)

(assert (=> b!6039095 (= e!3688829 (= lt!2323111 call!493879))))

(declare-fun b!6039096 () Bool)

(assert (=> b!6039096 (= e!3688831 (= (head!12577 (tail!11662 s!2326)) (c!1082125 (derivativeStep!4749 lt!2322697 (head!12577 s!2326)))))))

(declare-fun d!1893754 () Bool)

(assert (=> d!1893754 e!3688829))

(declare-fun c!1082648 () Bool)

(assert (=> d!1893754 (= c!1082648 (is-EmptyExpr!16020 (derivativeStep!4749 lt!2322697 (head!12577 s!2326))))))

(assert (=> d!1893754 (= lt!2323111 e!3688826)))

(declare-fun c!1082649 () Bool)

(assert (=> d!1893754 (= c!1082649 (isEmpty!36143 (tail!11662 s!2326)))))

(assert (=> d!1893754 (validRegex!7756 (derivativeStep!4749 lt!2322697 (head!12577 s!2326)))))

(assert (=> d!1893754 (= (matchR!8203 (derivativeStep!4749 lt!2322697 (head!12577 s!2326)) (tail!11662 s!2326)) lt!2323111)))

(declare-fun b!6039097 () Bool)

(declare-fun res!2514415 () Bool)

(assert (=> b!6039097 (=> res!2514415 e!3688827)))

(assert (=> b!6039097 (= res!2514415 (not (isEmpty!36143 (tail!11662 (tail!11662 s!2326)))))))

(declare-fun b!6039098 () Bool)

(declare-fun res!2514419 () Bool)

(declare-fun e!3688830 () Bool)

(assert (=> b!6039098 (=> res!2514419 e!3688830)))

(assert (=> b!6039098 (= res!2514419 (not (is-ElementMatch!16020 (derivativeStep!4749 lt!2322697 (head!12577 s!2326)))))))

(assert (=> b!6039098 (= e!3688828 e!3688830)))

(declare-fun b!6039099 () Bool)

(declare-fun res!2514416 () Bool)

(assert (=> b!6039099 (=> res!2514416 e!3688830)))

(assert (=> b!6039099 (= res!2514416 e!3688831)))

(declare-fun res!2514417 () Bool)

(assert (=> b!6039099 (=> (not res!2514417) (not e!3688831))))

(assert (=> b!6039099 (= res!2514417 lt!2323111)))

(declare-fun b!6039100 () Bool)

(declare-fun res!2514413 () Bool)

(assert (=> b!6039100 (=> (not res!2514413) (not e!3688831))))

(assert (=> b!6039100 (= res!2514413 (not call!493879))))

(declare-fun b!6039101 () Bool)

(declare-fun e!3688825 () Bool)

(assert (=> b!6039101 (= e!3688825 e!3688827)))

(declare-fun res!2514414 () Bool)

(assert (=> b!6039101 (=> res!2514414 e!3688827)))

(assert (=> b!6039101 (= res!2514414 call!493879)))

(declare-fun b!6039102 () Bool)

(assert (=> b!6039102 (= e!3688826 (nullable!6015 (derivativeStep!4749 lt!2322697 (head!12577 s!2326))))))

(declare-fun bm!493874 () Bool)

(assert (=> bm!493874 (= call!493879 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun b!6039103 () Bool)

(assert (=> b!6039103 (= e!3688829 e!3688828)))

(declare-fun c!1082650 () Bool)

(assert (=> b!6039103 (= c!1082650 (is-EmptyLang!16020 (derivativeStep!4749 lt!2322697 (head!12577 s!2326))))))

(declare-fun b!6039104 () Bool)

(assert (=> b!6039104 (= e!3688830 e!3688825)))

(declare-fun res!2514412 () Bool)

(assert (=> b!6039104 (=> (not res!2514412) (not e!3688825))))

(assert (=> b!6039104 (= res!2514412 (not lt!2323111))))

(assert (= (and d!1893754 c!1082649) b!6039102))

(assert (= (and d!1893754 (not c!1082649)) b!6039091))

(assert (= (and d!1893754 c!1082648) b!6039095))

(assert (= (and d!1893754 (not c!1082648)) b!6039103))

(assert (= (and b!6039103 c!1082650) b!6039092))

(assert (= (and b!6039103 (not c!1082650)) b!6039098))

(assert (= (and b!6039098 (not res!2514419)) b!6039099))

(assert (= (and b!6039099 res!2514417) b!6039100))

(assert (= (and b!6039100 res!2514413) b!6039094))

(assert (= (and b!6039094 res!2514418) b!6039096))

(assert (= (and b!6039099 (not res!2514416)) b!6039104))

(assert (= (and b!6039104 res!2514412) b!6039101))

(assert (= (and b!6039101 (not res!2514414)) b!6039097))

(assert (= (and b!6039097 (not res!2514415)) b!6039093))

(assert (= (or b!6039095 b!6039100 b!6039101) bm!493874))

(assert (=> bm!493874 m!6907842))

(assert (=> bm!493874 m!6907846))

(assert (=> b!6039097 m!6907842))

(assert (=> b!6039097 m!6909192))

(assert (=> b!6039097 m!6909192))

(assert (=> b!6039097 m!6909210))

(assert (=> b!6039091 m!6907842))

(assert (=> b!6039091 m!6909188))

(assert (=> b!6039091 m!6908162))

(assert (=> b!6039091 m!6909188))

(declare-fun m!6909266 () Bool)

(assert (=> b!6039091 m!6909266))

(assert (=> b!6039091 m!6907842))

(assert (=> b!6039091 m!6909192))

(assert (=> b!6039091 m!6909266))

(assert (=> b!6039091 m!6909192))

(declare-fun m!6909268 () Bool)

(assert (=> b!6039091 m!6909268))

(assert (=> b!6039102 m!6908162))

(declare-fun m!6909270 () Bool)

(assert (=> b!6039102 m!6909270))

(assert (=> b!6039094 m!6907842))

(assert (=> b!6039094 m!6909192))

(assert (=> b!6039094 m!6909192))

(assert (=> b!6039094 m!6909210))

(assert (=> b!6039093 m!6907842))

(assert (=> b!6039093 m!6909188))

(assert (=> d!1893754 m!6907842))

(assert (=> d!1893754 m!6907846))

(assert (=> d!1893754 m!6908162))

(declare-fun m!6909272 () Bool)

(assert (=> d!1893754 m!6909272))

(assert (=> b!6039096 m!6907842))

(assert (=> b!6039096 m!6909188))

(assert (=> b!6037796 d!1893754))

(declare-fun b!6039105 () Bool)

(declare-fun e!3688833 () Regex!16020)

(declare-fun call!493882 () Regex!16020)

(assert (=> b!6039105 (= e!3688833 (Concat!24865 call!493882 lt!2322697))))

(declare-fun b!6039106 () Bool)

(declare-fun e!3688832 () Regex!16020)

(declare-fun call!493883 () Regex!16020)

(declare-fun call!493880 () Regex!16020)

(assert (=> b!6039106 (= e!3688832 (Union!16020 call!493883 call!493880))))

(declare-fun b!6039107 () Bool)

(declare-fun e!3688835 () Regex!16020)

(declare-fun e!3688834 () Regex!16020)

(assert (=> b!6039107 (= e!3688835 e!3688834)))

(declare-fun c!1082655 () Bool)

(assert (=> b!6039107 (= c!1082655 (is-ElementMatch!16020 lt!2322697))))

(declare-fun b!6039108 () Bool)

(assert (=> b!6039108 (= e!3688835 EmptyLang!16020)))

(declare-fun b!6039109 () Bool)

(assert (=> b!6039109 (= e!3688832 e!3688833)))

(declare-fun c!1082652 () Bool)

(assert (=> b!6039109 (= c!1082652 (is-Star!16020 lt!2322697))))

(declare-fun bm!493875 () Bool)

(assert (=> bm!493875 (= call!493882 call!493880)))

(declare-fun call!493881 () Regex!16020)

(declare-fun b!6039110 () Bool)

(declare-fun e!3688836 () Regex!16020)

(assert (=> b!6039110 (= e!3688836 (Union!16020 (Concat!24865 call!493882 (regTwo!32552 lt!2322697)) call!493881))))

(declare-fun b!6039112 () Bool)

(assert (=> b!6039112 (= e!3688834 (ite (= (head!12577 s!2326) (c!1082125 lt!2322697)) EmptyExpr!16020 EmptyLang!16020))))

(declare-fun b!6039113 () Bool)

(declare-fun c!1082651 () Bool)

(assert (=> b!6039113 (= c!1082651 (is-Union!16020 lt!2322697))))

(assert (=> b!6039113 (= e!3688834 e!3688832)))

(declare-fun bm!493876 () Bool)

(assert (=> bm!493876 (= call!493881 call!493883)))

(declare-fun c!1082653 () Bool)

(declare-fun bm!493877 () Bool)

(assert (=> bm!493877 (= call!493883 (derivativeStep!4749 (ite c!1082651 (regOne!32553 lt!2322697) (ite c!1082653 (regTwo!32552 lt!2322697) (regOne!32552 lt!2322697))) (head!12577 s!2326)))))

(declare-fun b!6039111 () Bool)

(assert (=> b!6039111 (= e!3688836 (Union!16020 (Concat!24865 call!493881 (regTwo!32552 lt!2322697)) EmptyLang!16020))))

(declare-fun d!1893756 () Bool)

(declare-fun lt!2323112 () Regex!16020)

(assert (=> d!1893756 (validRegex!7756 lt!2323112)))

(assert (=> d!1893756 (= lt!2323112 e!3688835)))

(declare-fun c!1082654 () Bool)

(assert (=> d!1893756 (= c!1082654 (or (is-EmptyExpr!16020 lt!2322697) (is-EmptyLang!16020 lt!2322697)))))

(assert (=> d!1893756 (validRegex!7756 lt!2322697)))

(assert (=> d!1893756 (= (derivativeStep!4749 lt!2322697 (head!12577 s!2326)) lt!2323112)))

(declare-fun bm!493878 () Bool)

(assert (=> bm!493878 (= call!493880 (derivativeStep!4749 (ite c!1082651 (regTwo!32553 lt!2322697) (ite c!1082652 (reg!16349 lt!2322697) (regOne!32552 lt!2322697))) (head!12577 s!2326)))))

(declare-fun b!6039114 () Bool)

(assert (=> b!6039114 (= c!1082653 (nullable!6015 (regOne!32552 lt!2322697)))))

(assert (=> b!6039114 (= e!3688833 e!3688836)))

(assert (= (and d!1893756 c!1082654) b!6039108))

(assert (= (and d!1893756 (not c!1082654)) b!6039107))

(assert (= (and b!6039107 c!1082655) b!6039112))

(assert (= (and b!6039107 (not c!1082655)) b!6039113))

(assert (= (and b!6039113 c!1082651) b!6039106))

(assert (= (and b!6039113 (not c!1082651)) b!6039109))

(assert (= (and b!6039109 c!1082652) b!6039105))

(assert (= (and b!6039109 (not c!1082652)) b!6039114))

(assert (= (and b!6039114 c!1082653) b!6039110))

(assert (= (and b!6039114 (not c!1082653)) b!6039111))

(assert (= (or b!6039110 b!6039111) bm!493876))

(assert (= (or b!6039105 b!6039110) bm!493875))

(assert (= (or b!6039106 bm!493875) bm!493878))

(assert (= (or b!6039106 bm!493876) bm!493877))

(assert (=> bm!493877 m!6907838))

(declare-fun m!6909274 () Bool)

(assert (=> bm!493877 m!6909274))

(declare-fun m!6909276 () Bool)

(assert (=> d!1893756 m!6909276))

(assert (=> d!1893756 m!6908168))

(assert (=> bm!493878 m!6907838))

(declare-fun m!6909278 () Bool)

(assert (=> bm!493878 m!6909278))

(declare-fun m!6909280 () Bool)

(assert (=> b!6039114 m!6909280))

(assert (=> b!6037796 d!1893756))

(assert (=> b!6037796 d!1893538))

(assert (=> b!6037796 d!1893514))

(assert (=> d!1893296 d!1893598))

(declare-fun bs!1489734 () Bool)

(declare-fun d!1893758 () Bool)

(assert (= bs!1489734 (and d!1893758 b!6037607)))

(declare-fun lambda!329424 () Int)

(assert (=> bs!1489734 (not (= lambda!329424 lambda!329290))))

(declare-fun bs!1489735 () Bool)

(assert (= bs!1489735 (and d!1893758 b!6038691)))

(assert (=> bs!1489735 (not (= lambda!329424 lambda!329395))))

(declare-fun bs!1489736 () Bool)

(assert (= bs!1489736 (and d!1893758 d!1893642)))

(assert (=> bs!1489736 (= lambda!329424 lambda!329402)))

(declare-fun bs!1489737 () Bool)

(assert (= bs!1489737 (and d!1893758 d!1893746)))

(assert (=> bs!1489737 (= lambda!329424 lambda!329421)))

(declare-fun bs!1489738 () Bool)

(assert (= bs!1489738 (and d!1893758 b!6038908)))

(assert (=> bs!1489738 (not (= lambda!329424 lambda!329412))))

(declare-fun bs!1489739 () Bool)

(assert (= bs!1489739 (and d!1893758 b!6037597)))

(assert (=> bs!1489739 (not (= lambda!329424 lambda!329280))))

(declare-fun bs!1489740 () Bool)

(assert (= bs!1489740 (and d!1893758 b!6037602)))

(assert (=> bs!1489740 (not (= lambda!329424 lambda!329283))))

(declare-fun bs!1489741 () Bool)

(assert (= bs!1489741 (and d!1893758 d!1893700)))

(assert (=> bs!1489741 (= lambda!329424 lambda!329417)))

(declare-fun bs!1489742 () Bool)

(assert (= bs!1489742 (and d!1893758 b!6037599)))

(assert (=> bs!1489742 (not (= lambda!329424 lambda!329281))))

(declare-fun bs!1489743 () Bool)

(assert (= bs!1489743 (and d!1893758 b!6037604)))

(assert (=> bs!1489743 (not (= lambda!329424 lambda!329284))))

(declare-fun bs!1489744 () Bool)

(assert (= bs!1489744 (and d!1893758 d!1893668)))

(assert (=> bs!1489744 (not (= lambda!329424 lambda!329410))))

(declare-fun bs!1489745 () Bool)

(assert (= bs!1489745 (and d!1893758 b!6038844)))

(assert (=> bs!1489745 (not (= lambda!329424 lambda!329409))))

(declare-fun bs!1489746 () Bool)

(assert (= bs!1489746 (and d!1893758 d!1893580)))

(assert (=> bs!1489746 (not (= lambda!329424 lambda!329400))))

(declare-fun bs!1489747 () Bool)

(assert (= bs!1489747 (and d!1893758 b!6038689)))

(assert (=> bs!1489747 (not (= lambda!329424 lambda!329394))))

(declare-fun bs!1489748 () Bool)

(assert (= bs!1489748 (and d!1893758 d!1893560)))

(assert (=> bs!1489748 (= lambda!329424 lambda!329391)))

(declare-fun bs!1489749 () Bool)

(assert (= bs!1489749 (and d!1893758 b!6038842)))

(assert (=> bs!1489749 (not (= lambda!329424 lambda!329408))))

(declare-fun bs!1489750 () Bool)

(assert (= bs!1489750 (and d!1893758 b!6037605)))

(assert (=> bs!1489750 (not (= lambda!329424 lambda!329289))))

(declare-fun bs!1489751 () Bool)

(assert (= bs!1489751 (and d!1893758 b!6038910)))

(assert (=> bs!1489751 (not (= lambda!329424 lambda!329413))))

(declare-fun bs!1489752 () Bool)

(assert (= bs!1489752 (and d!1893758 d!1893750)))

(assert (=> bs!1489752 (= lambda!329424 lambda!329422)))

(declare-fun bs!1489753 () Bool)

(assert (= bs!1489753 (and d!1893758 d!1893690)))

(assert (=> bs!1489753 (not (= lambda!329424 lambda!329414))))

(assert (=> d!1893758 (= (nullableZipper!1825 lt!2322721) (exists!2385 lt!2322721 lambda!329424))))

(declare-fun bs!1489754 () Bool)

(assert (= bs!1489754 d!1893758))

(declare-fun m!6909282 () Bool)

(assert (=> bs!1489754 m!6909282))

(assert (=> b!6037639 d!1893758))

(declare-fun d!1893760 () Bool)

(declare-fun res!2514420 () Bool)

(declare-fun e!3688837 () Bool)

(assert (=> d!1893760 (=> res!2514420 e!3688837)))

(assert (=> d!1893760 (= res!2514420 (is-Nil!64235 (exprs!5904 lt!2322733)))))

(assert (=> d!1893760 (= (forall!15128 (exprs!5904 lt!2322733) lambda!329301) e!3688837)))

(declare-fun b!6039115 () Bool)

(declare-fun e!3688838 () Bool)

(assert (=> b!6039115 (= e!3688837 e!3688838)))

(declare-fun res!2514421 () Bool)

(assert (=> b!6039115 (=> (not res!2514421) (not e!3688838))))

(assert (=> b!6039115 (= res!2514421 (dynLambda!25216 lambda!329301 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun b!6039116 () Bool)

(assert (=> b!6039116 (= e!3688838 (forall!15128 (t!377788 (exprs!5904 lt!2322733)) lambda!329301))))

(assert (= (and d!1893760 (not res!2514420)) b!6039115))

(assert (= (and b!6039115 res!2514421) b!6039116))

(declare-fun b_lambda!229107 () Bool)

(assert (=> (not b_lambda!229107) (not b!6039115)))

(declare-fun m!6909284 () Bool)

(assert (=> b!6039115 m!6909284))

(declare-fun m!6909286 () Bool)

(assert (=> b!6039116 m!6909286))

(assert (=> b!6037718 d!1893760))

(assert (=> d!1893262 d!1893256))

(assert (=> d!1893262 d!1893744))

(assert (=> d!1893262 d!1893260))

(declare-fun d!1893762 () Bool)

(assert (=> d!1893762 (= (Exists!3090 lambda!329272) (choose!45122 lambda!329272))))

(declare-fun bs!1489755 () Bool)

(assert (= bs!1489755 d!1893762))

(declare-fun m!6909288 () Bool)

(assert (=> bs!1489755 m!6909288))

(assert (=> d!1893262 d!1893762))

(declare-fun bs!1489756 () Bool)

(declare-fun d!1893764 () Bool)

(assert (= bs!1489756 (and d!1893764 b!6037326)))

(declare-fun lambda!329427 () Int)

(assert (=> bs!1489756 (= lambda!329427 lambda!329243)))

(declare-fun bs!1489757 () Bool)

(assert (= bs!1489757 (and d!1893764 b!6037859)))

(assert (=> bs!1489757 (not (= lambda!329427 lambda!329317))))

(declare-fun bs!1489758 () Bool)

(assert (= bs!1489758 (and d!1893764 d!1893262)))

(assert (=> bs!1489758 (= lambda!329427 lambda!329272)))

(declare-fun bs!1489759 () Bool)

(assert (= bs!1489759 (and d!1893764 b!6037864)))

(assert (=> bs!1489759 (not (= lambda!329427 lambda!329318))))

(declare-fun bs!1489760 () Bool)

(assert (= bs!1489760 (and d!1893764 b!6038647)))

(assert (=> bs!1489760 (not (= lambda!329427 lambda!329386))))

(declare-fun bs!1489761 () Bool)

(assert (= bs!1489761 (and d!1893764 b!6038642)))

(assert (=> bs!1489761 (not (= lambda!329427 lambda!329385))))

(declare-fun bs!1489762 () Bool)

(assert (= bs!1489762 (and d!1893764 d!1893258)))

(assert (=> bs!1489762 (= lambda!329427 lambda!329268)))

(assert (=> bs!1489762 (not (= lambda!329427 lambda!329269))))

(assert (=> bs!1489756 (not (= lambda!329427 lambda!329244))))

(assert (=> d!1893764 true))

(assert (=> d!1893764 true))

(assert (=> d!1893764 true))

(assert (=> d!1893764 (= (isDefined!12614 (findConcatSeparation!2325 (regOne!32552 r!7292) (regTwo!32552 r!7292) Nil!64237 s!2326 s!2326)) (Exists!3090 lambda!329427))))

(assert (=> d!1893764 true))

(declare-fun _$89!2077 () Unit!157311)

(assert (=> d!1893764 (= (choose!45121 (regOne!32552 r!7292) (regTwo!32552 r!7292) s!2326) _$89!2077)))

(declare-fun bs!1489763 () Bool)

(assert (= bs!1489763 d!1893764))

(assert (=> bs!1489763 m!6907620))

(assert (=> bs!1489763 m!6907620))

(assert (=> bs!1489763 m!6907622))

(declare-fun m!6909290 () Bool)

(assert (=> bs!1489763 m!6909290))

(assert (=> d!1893262 d!1893764))

(declare-fun bm!493879 () Bool)

(declare-fun call!493889 () Int)

(declare-fun call!493888 () Int)

(assert (=> bm!493879 (= call!493889 call!493888)))

(declare-fun b!6039122 () Bool)

(declare-fun e!3688841 () Bool)

(declare-fun e!3688842 () Bool)

(assert (=> b!6039122 (= e!3688841 e!3688842)))

(declare-fun c!1082659 () Bool)

(assert (=> b!6039122 (= c!1082659 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun b!6039123 () Bool)

(declare-fun c!1082658 () Bool)

(assert (=> b!6039123 (= c!1082658 (is-Union!16020 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun e!3688849 () Int)

(declare-fun e!3688850 () Int)

(assert (=> b!6039123 (= e!3688849 e!3688850)))

(declare-fun b!6039124 () Bool)

(declare-fun c!1082661 () Bool)

(assert (=> b!6039124 (= c!1082661 (is-Star!16020 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun e!3688844 () Bool)

(assert (=> b!6039124 (= e!3688842 e!3688844)))

(declare-fun b!6039125 () Bool)

(declare-fun e!3688845 () Int)

(declare-fun call!493885 () Int)

(assert (=> b!6039125 (= e!3688845 (+ 1 call!493885))))

(declare-fun b!6039126 () Bool)

(assert (=> b!6039126 (= e!3688850 (+ 1 call!493885))))

(declare-fun b!6039127 () Bool)

(declare-fun lt!2323113 () Int)

(assert (=> b!6039127 (= e!3688844 (= lt!2323113 1))))

(declare-fun bm!493880 () Bool)

(declare-fun call!493887 () Int)

(assert (=> bm!493880 (= call!493885 (maxBigInt!0 (ite c!1082658 call!493887 call!493889) (ite c!1082658 call!493889 call!493887)))))

(declare-fun c!1082657 () Bool)

(declare-fun bm!493881 () Bool)

(assert (=> bm!493881 (= call!493888 (regexDepth!277 (ite c!1082657 (reg!16349 (h!70683 (exprs!5904 lt!2322710))) (ite c!1082658 (regTwo!32553 (h!70683 (exprs!5904 lt!2322710))) (regOne!32552 (h!70683 (exprs!5904 lt!2322710)))))))))

(declare-fun b!6039128 () Bool)

(declare-fun call!493890 () Int)

(assert (=> b!6039128 (= e!3688844 (> lt!2323113 call!493890))))

(declare-fun b!6039129 () Bool)

(assert (=> b!6039129 (= e!3688849 (+ 1 call!493888))))

(declare-fun bm!493882 () Bool)

(declare-fun call!493884 () Int)

(declare-fun c!1082660 () Bool)

(assert (=> bm!493882 (= call!493884 (regexDepth!277 (ite c!1082660 (regOne!32553 (h!70683 (exprs!5904 lt!2322710))) (regTwo!32552 (h!70683 (exprs!5904 lt!2322710))))))))

(declare-fun b!6039130 () Bool)

(declare-fun e!3688848 () Bool)

(assert (=> b!6039130 (= e!3688841 e!3688848)))

(declare-fun res!2514426 () Bool)

(assert (=> b!6039130 (= res!2514426 (> lt!2323113 call!493884))))

(assert (=> b!6039130 (=> (not res!2514426) (not e!3688848))))

(declare-fun b!6039131 () Bool)

(declare-fun res!2514428 () Bool)

(declare-fun e!3688846 () Bool)

(assert (=> b!6039131 (=> (not res!2514428) (not e!3688846))))

(assert (=> b!6039131 (= res!2514428 (> lt!2323113 call!493890))))

(assert (=> b!6039131 (= e!3688842 e!3688846)))

(declare-fun b!6039121 () Bool)

(assert (=> b!6039121 (= e!3688845 1)))

(declare-fun d!1893766 () Bool)

(declare-fun e!3688847 () Bool)

(assert (=> d!1893766 e!3688847))

(declare-fun res!2514427 () Bool)

(assert (=> d!1893766 (=> (not res!2514427) (not e!3688847))))

(assert (=> d!1893766 (= res!2514427 (> lt!2323113 0))))

(declare-fun e!3688843 () Int)

(assert (=> d!1893766 (= lt!2323113 e!3688843)))

(declare-fun c!1082656 () Bool)

(assert (=> d!1893766 (= c!1082656 (is-ElementMatch!16020 (h!70683 (exprs!5904 lt!2322710))))))

(assert (=> d!1893766 (= (regexDepth!277 (h!70683 (exprs!5904 lt!2322710))) lt!2323113)))

(declare-fun b!6039132 () Bool)

(assert (=> b!6039132 (= e!3688846 (> lt!2323113 call!493884))))

(declare-fun bm!493883 () Bool)

(declare-fun call!493886 () Int)

(assert (=> bm!493883 (= call!493886 (regexDepth!277 (ite c!1082660 (regTwo!32553 (h!70683 (exprs!5904 lt!2322710))) (ite c!1082659 (regOne!32552 (h!70683 (exprs!5904 lt!2322710))) (reg!16349 (h!70683 (exprs!5904 lt!2322710)))))))))

(declare-fun bm!493884 () Bool)

(assert (=> bm!493884 (= call!493887 (regexDepth!277 (ite c!1082658 (regOne!32553 (h!70683 (exprs!5904 lt!2322710))) (regTwo!32552 (h!70683 (exprs!5904 lt!2322710))))))))

(declare-fun b!6039133 () Bool)

(assert (=> b!6039133 (= e!3688843 1)))

(declare-fun b!6039134 () Bool)

(assert (=> b!6039134 (= e!3688848 (> lt!2323113 call!493886))))

(declare-fun bm!493885 () Bool)

(assert (=> bm!493885 (= call!493890 call!493886)))

(declare-fun b!6039135 () Bool)

(assert (=> b!6039135 (= e!3688850 e!3688845)))

(declare-fun c!1082662 () Bool)

(assert (=> b!6039135 (= c!1082662 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun b!6039136 () Bool)

(assert (=> b!6039136 (= e!3688847 e!3688841)))

(assert (=> b!6039136 (= c!1082660 (is-Union!16020 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun b!6039137 () Bool)

(assert (=> b!6039137 (= e!3688843 e!3688849)))

(assert (=> b!6039137 (= c!1082657 (is-Star!16020 (h!70683 (exprs!5904 lt!2322710))))))

(assert (= (and d!1893766 c!1082656) b!6039133))

(assert (= (and d!1893766 (not c!1082656)) b!6039137))

(assert (= (and b!6039137 c!1082657) b!6039129))

(assert (= (and b!6039137 (not c!1082657)) b!6039123))

(assert (= (and b!6039123 c!1082658) b!6039126))

(assert (= (and b!6039123 (not c!1082658)) b!6039135))

(assert (= (and b!6039135 c!1082662) b!6039125))

(assert (= (and b!6039135 (not c!1082662)) b!6039121))

(assert (= (or b!6039126 b!6039125) bm!493879))

(assert (= (or b!6039126 b!6039125) bm!493884))

(assert (= (or b!6039126 b!6039125) bm!493880))

(assert (= (or b!6039129 bm!493879) bm!493881))

(assert (= (and d!1893766 res!2514427) b!6039136))

(assert (= (and b!6039136 c!1082660) b!6039130))

(assert (= (and b!6039136 (not c!1082660)) b!6039122))

(assert (= (and b!6039130 res!2514426) b!6039134))

(assert (= (and b!6039122 c!1082659) b!6039131))

(assert (= (and b!6039122 (not c!1082659)) b!6039124))

(assert (= (and b!6039131 res!2514428) b!6039132))

(assert (= (and b!6039124 c!1082661) b!6039128))

(assert (= (and b!6039124 (not c!1082661)) b!6039127))

(assert (= (or b!6039131 b!6039128) bm!493885))

(assert (= (or b!6039134 bm!493885) bm!493883))

(assert (= (or b!6039130 b!6039132) bm!493882))

(declare-fun m!6909292 () Bool)

(assert (=> bm!493882 m!6909292))

(declare-fun m!6909294 () Bool)

(assert (=> bm!493883 m!6909294))

(declare-fun m!6909296 () Bool)

(assert (=> bm!493880 m!6909296))

(declare-fun m!6909298 () Bool)

(assert (=> bm!493884 m!6909298))

(declare-fun m!6909300 () Bool)

(assert (=> bm!493881 m!6909300))

(assert (=> b!6037654 d!1893766))

(declare-fun bs!1489764 () Bool)

(declare-fun d!1893768 () Bool)

(assert (= bs!1489764 (and d!1893768 d!1893522)))

(declare-fun lambda!329428 () Int)

(assert (=> bs!1489764 (= (= lt!2322913 lt!2322923) (= lambda!329428 lambda!329382))))

(declare-fun bs!1489765 () Bool)

(assert (= bs!1489765 (and d!1893768 d!1893280)))

(assert (=> bs!1489765 (not (= lambda!329428 lambda!329287))))

(declare-fun bs!1489766 () Bool)

(assert (= bs!1489766 (and d!1893768 b!6038839)))

(assert (=> bs!1489766 (= (= lt!2322913 lt!2323084) (= lambda!329428 lambda!329405))))

(declare-fun bs!1489767 () Bool)

(assert (= bs!1489767 (and d!1893768 b!6037654)))

(assert (=> bs!1489767 (= lambda!329428 lambda!329296)))

(declare-fun bs!1489768 () Bool)

(assert (= bs!1489768 (and d!1893768 b!6037659)))

(assert (=> bs!1489768 (= (= lt!2322913 lt!2322917) (= lambda!329428 lambda!329298))))

(declare-fun bs!1489769 () Bool)

(assert (= bs!1489769 (and d!1893768 b!6038563)))

(assert (=> bs!1489769 (= (= lt!2322913 lt!2323042) (= lambda!329428 lambda!329378))))

(declare-fun bs!1489770 () Bool)

(assert (= bs!1489770 (and d!1893768 d!1893654)))

(assert (=> bs!1489770 (not (= lambda!329428 lambda!329404))))

(declare-fun bs!1489771 () Bool)

(assert (= bs!1489771 (and d!1893768 d!1893714)))

(assert (=> bs!1489771 (not (= lambda!329428 lambda!329418))))

(declare-fun bs!1489772 () Bool)

(assert (= bs!1489772 (and d!1893768 d!1893332)))

(assert (=> bs!1489772 (not (= lambda!329428 lambda!329307))))

(declare-fun bs!1489773 () Bool)

(assert (= bs!1489773 (and d!1893768 b!6038841)))

(assert (=> bs!1489773 (= (= lt!2322913 lt!2323082) (= lambda!329428 lambda!329406))))

(declare-fun bs!1489774 () Bool)

(assert (= bs!1489774 (and d!1893768 d!1893344)))

(assert (=> bs!1489774 (not (= lambda!329428 lambda!329311))))

(declare-fun bs!1489775 () Bool)

(assert (= bs!1489775 (and d!1893768 d!1893752)))

(assert (=> bs!1489775 (not (= lambda!329428 lambda!329423))))

(declare-fun bs!1489776 () Bool)

(assert (= bs!1489776 (and d!1893768 d!1893548)))

(assert (=> bs!1489776 (not (= lambda!329428 lambda!329387))))

(declare-fun bs!1489777 () Bool)

(assert (= bs!1489777 (and d!1893768 b!6038692)))

(assert (=> bs!1489777 (= (= lt!2322913 lt!2323065) (= lambda!329428 lambda!329396))))

(declare-fun bs!1489778 () Bool)

(assert (= bs!1489778 (and d!1893768 b!6038915)))

(assert (=> bs!1489778 (= (= lt!2322913 lt!2323097) (= lambda!329428 lambda!329416))))

(declare-fun bs!1489779 () Bool)

(assert (= bs!1489779 (and d!1893768 d!1893334)))

(assert (=> bs!1489779 (not (= lambda!329428 lambda!329310))))

(declare-fun bs!1489780 () Bool)

(assert (= bs!1489780 (and d!1893768 d!1893624)))

(assert (=> bs!1489780 (not (= lambda!329428 lambda!329401))))

(declare-fun bs!1489781 () Bool)

(assert (= bs!1489781 (and d!1893768 d!1893506)))

(assert (=> bs!1489781 (= (= lt!2322913 lt!2322917) (= lambda!329428 lambda!329381))))

(declare-fun bs!1489782 () Bool)

(assert (= bs!1489782 (and d!1893768 d!1893330)))

(assert (=> bs!1489782 (not (= lambda!329428 lambda!329304))))

(declare-fun bs!1489783 () Bool)

(assert (= bs!1489783 (and d!1893768 b!6038913)))

(assert (=> bs!1489783 (= (= lt!2322913 lt!2323099) (= lambda!329428 lambda!329415))))

(declare-fun bs!1489784 () Bool)

(assert (= bs!1489784 (and d!1893768 b!6038561)))

(assert (=> bs!1489784 (= (= lt!2322913 lt!2323044) (= lambda!329428 lambda!329377))))

(declare-fun bs!1489785 () Bool)

(assert (= bs!1489785 (and d!1893768 b!6038598)))

(assert (=> bs!1489785 (= (= lt!2322913 lt!2323051) (= lambda!329428 lambda!329384))))

(declare-fun bs!1489786 () Bool)

(assert (= bs!1489786 (and d!1893768 b!6038694)))

(assert (=> bs!1489786 (= (= lt!2322913 lt!2323063) (= lambda!329428 lambda!329397))))

(declare-fun bs!1489787 () Bool)

(assert (= bs!1489787 (and d!1893768 b!6037661)))

(assert (=> bs!1489787 (= (= lt!2322913 lt!2322915) (= lambda!329428 lambda!329299))))

(declare-fun bs!1489788 () Bool)

(assert (= bs!1489788 (and d!1893768 b!6037718)))

(assert (=> bs!1489788 (= (= lt!2322913 lt!2322921) (= lambda!329428 lambda!329301))))

(declare-fun bs!1489789 () Bool)

(assert (= bs!1489789 (and d!1893768 b!6038596)))

(assert (=> bs!1489789 (= (= lt!2322913 lt!2323053) (= lambda!329428 lambda!329383))))

(declare-fun bs!1489790 () Bool)

(assert (= bs!1489790 (and d!1893768 b!6037716)))

(assert (=> bs!1489790 (= (= lt!2322913 lt!2322923) (= lambda!329428 lambda!329300))))

(declare-fun bs!1489791 () Bool)

(assert (= bs!1489791 (and d!1893768 b!6037656)))

(assert (=> bs!1489791 (= (= lt!2322913 lt!2322911) (= lambda!329428 lambda!329297))))

(assert (=> d!1893768 true))

(assert (=> d!1893768 (forall!15128 (t!377788 (exprs!5904 lt!2322710)) lambda!329428)))

(declare-fun lt!2323114 () Unit!157311)

(assert (=> d!1893768 (= lt!2323114 (choose!45136 (t!377788 (exprs!5904 lt!2322710)) lt!2322913 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))))))

(assert (=> d!1893768 (>= lt!2322913 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))))))

(assert (=> d!1893768 (= (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 lt!2322710)) lt!2322913 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))) lt!2323114)))

(declare-fun bs!1489792 () Bool)

(assert (= bs!1489792 d!1893768))

(declare-fun m!6909302 () Bool)

(assert (=> bs!1489792 m!6909302))

(assert (=> bs!1489792 m!6908028))

(declare-fun m!6909304 () Bool)

(assert (=> bs!1489792 m!6909304))

(assert (=> b!6037654 d!1893768))

(declare-fun d!1893770 () Bool)

(declare-fun res!2514429 () Bool)

(declare-fun e!3688851 () Bool)

(assert (=> d!1893770 (=> res!2514429 e!3688851)))

(assert (=> d!1893770 (= res!2514429 (is-Nil!64235 (t!377788 (exprs!5904 lt!2322710))))))

(assert (=> d!1893770 (= (forall!15128 (t!377788 (exprs!5904 lt!2322710)) lambda!329296) e!3688851)))

(declare-fun b!6039138 () Bool)

(declare-fun e!3688852 () Bool)

(assert (=> b!6039138 (= e!3688851 e!3688852)))

(declare-fun res!2514430 () Bool)

(assert (=> b!6039138 (=> (not res!2514430) (not e!3688852))))

(assert (=> b!6039138 (= res!2514430 (dynLambda!25216 lambda!329296 (h!70683 (t!377788 (exprs!5904 lt!2322710)))))))

(declare-fun b!6039139 () Bool)

(assert (=> b!6039139 (= e!3688852 (forall!15128 (t!377788 (t!377788 (exprs!5904 lt!2322710))) lambda!329296))))

(assert (= (and d!1893770 (not res!2514429)) b!6039138))

(assert (= (and b!6039138 res!2514430) b!6039139))

(declare-fun b_lambda!229109 () Bool)

(assert (=> (not b_lambda!229109) (not b!6039138)))

(declare-fun m!6909306 () Bool)

(assert (=> b!6039138 m!6909306))

(declare-fun m!6909308 () Bool)

(assert (=> b!6039139 m!6909308))

(assert (=> b!6037654 d!1893770))

(declare-fun d!1893772 () Bool)

(assert (=> d!1893772 (= (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 lt!2322710))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))) (ite (>= (regexDepth!277 (h!70683 (exprs!5904 lt!2322710))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))) (regexDepth!277 (h!70683 (exprs!5904 lt!2322710))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))))))

(assert (=> b!6037654 d!1893772))

(declare-fun bs!1489793 () Bool)

(declare-fun b!6039140 () Bool)

(assert (= bs!1489793 (and b!6039140 d!1893522)))

(declare-fun lambda!329429 () Int)

(declare-fun lt!2323117 () Int)

(assert (=> bs!1489793 (= (= lt!2323117 lt!2322923) (= lambda!329429 lambda!329382))))

(declare-fun bs!1489794 () Bool)

(assert (= bs!1489794 (and b!6039140 d!1893280)))

(assert (=> bs!1489794 (not (= lambda!329429 lambda!329287))))

(declare-fun bs!1489795 () Bool)

(assert (= bs!1489795 (and b!6039140 b!6038839)))

(assert (=> bs!1489795 (= (= lt!2323117 lt!2323084) (= lambda!329429 lambda!329405))))

(declare-fun bs!1489796 () Bool)

(assert (= bs!1489796 (and b!6039140 b!6037654)))

(assert (=> bs!1489796 (= (= lt!2323117 lt!2322913) (= lambda!329429 lambda!329296))))

(declare-fun bs!1489797 () Bool)

(assert (= bs!1489797 (and b!6039140 d!1893768)))

(assert (=> bs!1489797 (= (= lt!2323117 lt!2322913) (= lambda!329429 lambda!329428))))

(declare-fun bs!1489798 () Bool)

(assert (= bs!1489798 (and b!6039140 b!6037659)))

(assert (=> bs!1489798 (= (= lt!2323117 lt!2322917) (= lambda!329429 lambda!329298))))

(declare-fun bs!1489799 () Bool)

(assert (= bs!1489799 (and b!6039140 b!6038563)))

(assert (=> bs!1489799 (= (= lt!2323117 lt!2323042) (= lambda!329429 lambda!329378))))

(declare-fun bs!1489800 () Bool)

(assert (= bs!1489800 (and b!6039140 d!1893654)))

(assert (=> bs!1489800 (not (= lambda!329429 lambda!329404))))

(declare-fun bs!1489801 () Bool)

(assert (= bs!1489801 (and b!6039140 d!1893714)))

(assert (=> bs!1489801 (not (= lambda!329429 lambda!329418))))

(declare-fun bs!1489802 () Bool)

(assert (= bs!1489802 (and b!6039140 d!1893332)))

(assert (=> bs!1489802 (not (= lambda!329429 lambda!329307))))

(declare-fun bs!1489803 () Bool)

(assert (= bs!1489803 (and b!6039140 b!6038841)))

(assert (=> bs!1489803 (= (= lt!2323117 lt!2323082) (= lambda!329429 lambda!329406))))

(declare-fun bs!1489804 () Bool)

(assert (= bs!1489804 (and b!6039140 d!1893344)))

(assert (=> bs!1489804 (not (= lambda!329429 lambda!329311))))

(declare-fun bs!1489805 () Bool)

(assert (= bs!1489805 (and b!6039140 d!1893752)))

(assert (=> bs!1489805 (not (= lambda!329429 lambda!329423))))

(declare-fun bs!1489806 () Bool)

(assert (= bs!1489806 (and b!6039140 d!1893548)))

(assert (=> bs!1489806 (not (= lambda!329429 lambda!329387))))

(declare-fun bs!1489807 () Bool)

(assert (= bs!1489807 (and b!6039140 b!6038692)))

(assert (=> bs!1489807 (= (= lt!2323117 lt!2323065) (= lambda!329429 lambda!329396))))

(declare-fun bs!1489808 () Bool)

(assert (= bs!1489808 (and b!6039140 b!6038915)))

(assert (=> bs!1489808 (= (= lt!2323117 lt!2323097) (= lambda!329429 lambda!329416))))

(declare-fun bs!1489809 () Bool)

(assert (= bs!1489809 (and b!6039140 d!1893334)))

(assert (=> bs!1489809 (not (= lambda!329429 lambda!329310))))

(declare-fun bs!1489810 () Bool)

(assert (= bs!1489810 (and b!6039140 d!1893624)))

(assert (=> bs!1489810 (not (= lambda!329429 lambda!329401))))

(declare-fun bs!1489811 () Bool)

(assert (= bs!1489811 (and b!6039140 d!1893506)))

(assert (=> bs!1489811 (= (= lt!2323117 lt!2322917) (= lambda!329429 lambda!329381))))

(declare-fun bs!1489812 () Bool)

(assert (= bs!1489812 (and b!6039140 d!1893330)))

(assert (=> bs!1489812 (not (= lambda!329429 lambda!329304))))

(declare-fun bs!1489813 () Bool)

(assert (= bs!1489813 (and b!6039140 b!6038913)))

(assert (=> bs!1489813 (= (= lt!2323117 lt!2323099) (= lambda!329429 lambda!329415))))

(declare-fun bs!1489814 () Bool)

(assert (= bs!1489814 (and b!6039140 b!6038561)))

(assert (=> bs!1489814 (= (= lt!2323117 lt!2323044) (= lambda!329429 lambda!329377))))

(declare-fun bs!1489815 () Bool)

(assert (= bs!1489815 (and b!6039140 b!6038598)))

(assert (=> bs!1489815 (= (= lt!2323117 lt!2323051) (= lambda!329429 lambda!329384))))

(declare-fun bs!1489816 () Bool)

(assert (= bs!1489816 (and b!6039140 b!6038694)))

(assert (=> bs!1489816 (= (= lt!2323117 lt!2323063) (= lambda!329429 lambda!329397))))

(declare-fun bs!1489817 () Bool)

(assert (= bs!1489817 (and b!6039140 b!6037661)))

(assert (=> bs!1489817 (= (= lt!2323117 lt!2322915) (= lambda!329429 lambda!329299))))

(declare-fun bs!1489818 () Bool)

(assert (= bs!1489818 (and b!6039140 b!6037718)))

(assert (=> bs!1489818 (= (= lt!2323117 lt!2322921) (= lambda!329429 lambda!329301))))

(declare-fun bs!1489819 () Bool)

(assert (= bs!1489819 (and b!6039140 b!6038596)))

(assert (=> bs!1489819 (= (= lt!2323117 lt!2323053) (= lambda!329429 lambda!329383))))

(declare-fun bs!1489820 () Bool)

(assert (= bs!1489820 (and b!6039140 b!6037716)))

(assert (=> bs!1489820 (= (= lt!2323117 lt!2322923) (= lambda!329429 lambda!329300))))

(declare-fun bs!1489821 () Bool)

(assert (= bs!1489821 (and b!6039140 b!6037656)))

(assert (=> bs!1489821 (= (= lt!2323117 lt!2322911) (= lambda!329429 lambda!329297))))

(assert (=> b!6039140 true))

(declare-fun bs!1489822 () Bool)

(declare-fun b!6039142 () Bool)

(assert (= bs!1489822 (and b!6039142 d!1893522)))

(declare-fun lt!2323115 () Int)

(declare-fun lambda!329430 () Int)

(assert (=> bs!1489822 (= (= lt!2323115 lt!2322923) (= lambda!329430 lambda!329382))))

(declare-fun bs!1489823 () Bool)

(assert (= bs!1489823 (and b!6039142 d!1893280)))

(assert (=> bs!1489823 (not (= lambda!329430 lambda!329287))))

(declare-fun bs!1489824 () Bool)

(assert (= bs!1489824 (and b!6039142 b!6038839)))

(assert (=> bs!1489824 (= (= lt!2323115 lt!2323084) (= lambda!329430 lambda!329405))))

(declare-fun bs!1489825 () Bool)

(assert (= bs!1489825 (and b!6039142 b!6037654)))

(assert (=> bs!1489825 (= (= lt!2323115 lt!2322913) (= lambda!329430 lambda!329296))))

(declare-fun bs!1489826 () Bool)

(assert (= bs!1489826 (and b!6039142 d!1893768)))

(assert (=> bs!1489826 (= (= lt!2323115 lt!2322913) (= lambda!329430 lambda!329428))))

(declare-fun bs!1489827 () Bool)

(assert (= bs!1489827 (and b!6039142 b!6037659)))

(assert (=> bs!1489827 (= (= lt!2323115 lt!2322917) (= lambda!329430 lambda!329298))))

(declare-fun bs!1489828 () Bool)

(assert (= bs!1489828 (and b!6039142 b!6038563)))

(assert (=> bs!1489828 (= (= lt!2323115 lt!2323042) (= lambda!329430 lambda!329378))))

(declare-fun bs!1489829 () Bool)

(assert (= bs!1489829 (and b!6039142 d!1893654)))

(assert (=> bs!1489829 (not (= lambda!329430 lambda!329404))))

(declare-fun bs!1489830 () Bool)

(assert (= bs!1489830 (and b!6039142 d!1893714)))

(assert (=> bs!1489830 (not (= lambda!329430 lambda!329418))))

(declare-fun bs!1489831 () Bool)

(assert (= bs!1489831 (and b!6039142 d!1893332)))

(assert (=> bs!1489831 (not (= lambda!329430 lambda!329307))))

(declare-fun bs!1489832 () Bool)

(assert (= bs!1489832 (and b!6039142 d!1893344)))

(assert (=> bs!1489832 (not (= lambda!329430 lambda!329311))))

(declare-fun bs!1489833 () Bool)

(assert (= bs!1489833 (and b!6039142 d!1893752)))

(assert (=> bs!1489833 (not (= lambda!329430 lambda!329423))))

(declare-fun bs!1489834 () Bool)

(assert (= bs!1489834 (and b!6039142 d!1893548)))

(assert (=> bs!1489834 (not (= lambda!329430 lambda!329387))))

(declare-fun bs!1489835 () Bool)

(assert (= bs!1489835 (and b!6039142 b!6038692)))

(assert (=> bs!1489835 (= (= lt!2323115 lt!2323065) (= lambda!329430 lambda!329396))))

(declare-fun bs!1489836 () Bool)

(assert (= bs!1489836 (and b!6039142 b!6038915)))

(assert (=> bs!1489836 (= (= lt!2323115 lt!2323097) (= lambda!329430 lambda!329416))))

(declare-fun bs!1489837 () Bool)

(assert (= bs!1489837 (and b!6039142 d!1893334)))

(assert (=> bs!1489837 (not (= lambda!329430 lambda!329310))))

(declare-fun bs!1489838 () Bool)

(assert (= bs!1489838 (and b!6039142 d!1893624)))

(assert (=> bs!1489838 (not (= lambda!329430 lambda!329401))))

(declare-fun bs!1489839 () Bool)

(assert (= bs!1489839 (and b!6039142 d!1893506)))

(assert (=> bs!1489839 (= (= lt!2323115 lt!2322917) (= lambda!329430 lambda!329381))))

(declare-fun bs!1489840 () Bool)

(assert (= bs!1489840 (and b!6039142 d!1893330)))

(assert (=> bs!1489840 (not (= lambda!329430 lambda!329304))))

(declare-fun bs!1489841 () Bool)

(assert (= bs!1489841 (and b!6039142 b!6038913)))

(assert (=> bs!1489841 (= (= lt!2323115 lt!2323099) (= lambda!329430 lambda!329415))))

(declare-fun bs!1489842 () Bool)

(assert (= bs!1489842 (and b!6039142 b!6038561)))

(assert (=> bs!1489842 (= (= lt!2323115 lt!2323044) (= lambda!329430 lambda!329377))))

(declare-fun bs!1489843 () Bool)

(assert (= bs!1489843 (and b!6039142 b!6038598)))

(assert (=> bs!1489843 (= (= lt!2323115 lt!2323051) (= lambda!329430 lambda!329384))))

(declare-fun bs!1489844 () Bool)

(assert (= bs!1489844 (and b!6039142 b!6038694)))

(assert (=> bs!1489844 (= (= lt!2323115 lt!2323063) (= lambda!329430 lambda!329397))))

(declare-fun bs!1489845 () Bool)

(assert (= bs!1489845 (and b!6039142 b!6037661)))

(assert (=> bs!1489845 (= (= lt!2323115 lt!2322915) (= lambda!329430 lambda!329299))))

(declare-fun bs!1489846 () Bool)

(assert (= bs!1489846 (and b!6039142 b!6037718)))

(assert (=> bs!1489846 (= (= lt!2323115 lt!2322921) (= lambda!329430 lambda!329301))))

(declare-fun bs!1489847 () Bool)

(assert (= bs!1489847 (and b!6039142 b!6038596)))

(assert (=> bs!1489847 (= (= lt!2323115 lt!2323053) (= lambda!329430 lambda!329383))))

(declare-fun bs!1489848 () Bool)

(assert (= bs!1489848 (and b!6039142 b!6039140)))

(assert (=> bs!1489848 (= (= lt!2323115 lt!2323117) (= lambda!329430 lambda!329429))))

(declare-fun bs!1489849 () Bool)

(assert (= bs!1489849 (and b!6039142 b!6038841)))

(assert (=> bs!1489849 (= (= lt!2323115 lt!2323082) (= lambda!329430 lambda!329406))))

(declare-fun bs!1489850 () Bool)

(assert (= bs!1489850 (and b!6039142 b!6037716)))

(assert (=> bs!1489850 (= (= lt!2323115 lt!2322923) (= lambda!329430 lambda!329300))))

(declare-fun bs!1489851 () Bool)

(assert (= bs!1489851 (and b!6039142 b!6037656)))

(assert (=> bs!1489851 (= (= lt!2323115 lt!2322911) (= lambda!329430 lambda!329297))))

(assert (=> b!6039142 true))

(declare-fun d!1893774 () Bool)

(declare-fun e!3688854 () Bool)

(assert (=> d!1893774 e!3688854))

(declare-fun res!2514431 () Bool)

(assert (=> d!1893774 (=> (not res!2514431) (not e!3688854))))

(assert (=> d!1893774 (= res!2514431 (>= lt!2323115 0))))

(declare-fun e!3688853 () Int)

(assert (=> d!1893774 (= lt!2323115 e!3688853)))

(declare-fun c!1082663 () Bool)

(assert (=> d!1893774 (= c!1082663 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))))))

(assert (=> d!1893774 (= (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))) lt!2323115)))

(assert (=> b!6039140 (= e!3688853 lt!2323117)))

(assert (=> b!6039140 (= lt!2323117 (maxBigInt!0 (regexDepth!277 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))))) (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))))))))))

(declare-fun lt!2323116 () Unit!157311)

(assert (=> b!6039140 (= lt!2323116 (lemmaForallRegexDepthBiggerThanTransitive!67 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))) lt!2323117 (contextDepth!168 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))))))))))

(assert (=> b!6039140 (forall!15128 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710))))) lambda!329429)))

(declare-fun lt!2323118 () Unit!157311)

(assert (=> b!6039140 (= lt!2323118 lt!2323116)))

(declare-fun b!6039141 () Bool)

(assert (=> b!6039141 (= e!3688853 0)))

(assert (=> b!6039142 (= e!3688854 (forall!15128 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322710)))) lambda!329430))))

(assert (= (and d!1893774 c!1082663) b!6039140))

(assert (= (and d!1893774 (not c!1082663)) b!6039141))

(assert (= (and d!1893774 res!2514431) b!6039142))

(declare-fun m!6909310 () Bool)

(assert (=> b!6039140 m!6909310))

(declare-fun m!6909312 () Bool)

(assert (=> b!6039140 m!6909312))

(declare-fun m!6909314 () Bool)

(assert (=> b!6039140 m!6909314))

(assert (=> b!6039140 m!6909310))

(assert (=> b!6039140 m!6909312))

(declare-fun m!6909316 () Bool)

(assert (=> b!6039140 m!6909316))

(assert (=> b!6039140 m!6909312))

(declare-fun m!6909318 () Bool)

(assert (=> b!6039140 m!6909318))

(declare-fun m!6909320 () Bool)

(assert (=> b!6039142 m!6909320))

(assert (=> b!6037654 d!1893774))

(declare-fun bm!493886 () Bool)

(declare-fun call!493896 () Int)

(declare-fun call!493895 () Int)

(assert (=> bm!493886 (= call!493896 call!493895)))

(declare-fun b!6039144 () Bool)

(declare-fun e!3688855 () Bool)

(declare-fun e!3688856 () Bool)

(assert (=> b!6039144 (= e!3688855 e!3688856)))

(declare-fun c!1082667 () Bool)

(assert (=> b!6039144 (= c!1082667 (is-Concat!24865 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun b!6039145 () Bool)

(declare-fun c!1082666 () Bool)

(assert (=> b!6039145 (= c!1082666 (is-Union!16020 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun e!3688863 () Int)

(declare-fun e!3688864 () Int)

(assert (=> b!6039145 (= e!3688863 e!3688864)))

(declare-fun b!6039146 () Bool)

(declare-fun c!1082669 () Bool)

(assert (=> b!6039146 (= c!1082669 (is-Star!16020 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun e!3688858 () Bool)

(assert (=> b!6039146 (= e!3688856 e!3688858)))

(declare-fun b!6039147 () Bool)

(declare-fun e!3688859 () Int)

(declare-fun call!493892 () Int)

(assert (=> b!6039147 (= e!3688859 (+ 1 call!493892))))

(declare-fun b!6039148 () Bool)

(assert (=> b!6039148 (= e!3688864 (+ 1 call!493892))))

(declare-fun b!6039149 () Bool)

(declare-fun lt!2323119 () Int)

(assert (=> b!6039149 (= e!3688858 (= lt!2323119 1))))

(declare-fun call!493894 () Int)

(declare-fun bm!493887 () Bool)

(assert (=> bm!493887 (= call!493892 (maxBigInt!0 (ite c!1082666 call!493894 call!493896) (ite c!1082666 call!493896 call!493894)))))

(declare-fun c!1082665 () Bool)

(declare-fun bm!493888 () Bool)

(assert (=> bm!493888 (= call!493895 (regexDepth!277 (ite c!1082665 (reg!16349 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (ite c!1082666 (regTwo!32553 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (regOne!32552 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697)))))))))

(declare-fun b!6039150 () Bool)

(declare-fun call!493897 () Int)

(assert (=> b!6039150 (= e!3688858 (> lt!2323119 call!493897))))

(declare-fun b!6039151 () Bool)

(assert (=> b!6039151 (= e!3688863 (+ 1 call!493895))))

(declare-fun c!1082668 () Bool)

(declare-fun bm!493889 () Bool)

(declare-fun call!493891 () Int)

(assert (=> bm!493889 (= call!493891 (regexDepth!277 (ite c!1082668 (regOne!32553 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (regTwo!32552 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))))

(declare-fun b!6039152 () Bool)

(declare-fun e!3688862 () Bool)

(assert (=> b!6039152 (= e!3688855 e!3688862)))

(declare-fun res!2514432 () Bool)

(assert (=> b!6039152 (= res!2514432 (> lt!2323119 call!493891))))

(assert (=> b!6039152 (=> (not res!2514432) (not e!3688862))))

(declare-fun b!6039153 () Bool)

(declare-fun res!2514434 () Bool)

(declare-fun e!3688860 () Bool)

(assert (=> b!6039153 (=> (not res!2514434) (not e!3688860))))

(assert (=> b!6039153 (= res!2514434 (> lt!2323119 call!493897))))

(assert (=> b!6039153 (= e!3688856 e!3688860)))

(declare-fun b!6039143 () Bool)

(assert (=> b!6039143 (= e!3688859 1)))

(declare-fun d!1893776 () Bool)

(declare-fun e!3688861 () Bool)

(assert (=> d!1893776 e!3688861))

(declare-fun res!2514433 () Bool)

(assert (=> d!1893776 (=> (not res!2514433) (not e!3688861))))

(assert (=> d!1893776 (= res!2514433 (> lt!2323119 0))))

(declare-fun e!3688857 () Int)

(assert (=> d!1893776 (= lt!2323119 e!3688857)))

(declare-fun c!1082664 () Bool)

(assert (=> d!1893776 (= c!1082664 (is-ElementMatch!16020 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(assert (=> d!1893776 (= (regexDepth!277 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) lt!2323119)))

(declare-fun b!6039154 () Bool)

(assert (=> b!6039154 (= e!3688860 (> lt!2323119 call!493891))))

(declare-fun bm!493890 () Bool)

(declare-fun call!493893 () Int)

(assert (=> bm!493890 (= call!493893 (regexDepth!277 (ite c!1082668 (regTwo!32553 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (ite c!1082667 (regOne!32552 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (reg!16349 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697)))))))))

(declare-fun bm!493891 () Bool)

(assert (=> bm!493891 (= call!493894 (regexDepth!277 (ite c!1082666 (regOne!32553 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))) (regTwo!32552 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))))

(declare-fun b!6039155 () Bool)

(assert (=> b!6039155 (= e!3688857 1)))

(declare-fun b!6039156 () Bool)

(assert (=> b!6039156 (= e!3688862 (> lt!2323119 call!493893))))

(declare-fun bm!493892 () Bool)

(assert (=> bm!493892 (= call!493897 call!493893)))

(declare-fun b!6039157 () Bool)

(assert (=> b!6039157 (= e!3688864 e!3688859)))

(declare-fun c!1082670 () Bool)

(assert (=> b!6039157 (= c!1082670 (is-Concat!24865 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun b!6039158 () Bool)

(assert (=> b!6039158 (= e!3688861 e!3688855)))

(assert (=> b!6039158 (= c!1082668 (is-Union!16020 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(declare-fun b!6039159 () Bool)

(assert (=> b!6039159 (= e!3688857 e!3688863)))

(assert (=> b!6039159 (= c!1082665 (is-Star!16020 (ite c!1082292 (regOne!32553 lt!2322697) (regTwo!32552 lt!2322697))))))

(assert (= (and d!1893776 c!1082664) b!6039155))

(assert (= (and d!1893776 (not c!1082664)) b!6039159))

(assert (= (and b!6039159 c!1082665) b!6039151))

(assert (= (and b!6039159 (not c!1082665)) b!6039145))

(assert (= (and b!6039145 c!1082666) b!6039148))

(assert (= (and b!6039145 (not c!1082666)) b!6039157))

(assert (= (and b!6039157 c!1082670) b!6039147))

(assert (= (and b!6039157 (not c!1082670)) b!6039143))

(assert (= (or b!6039148 b!6039147) bm!493886))

(assert (= (or b!6039148 b!6039147) bm!493891))

(assert (= (or b!6039148 b!6039147) bm!493887))

(assert (= (or b!6039151 bm!493886) bm!493888))

(assert (= (and d!1893776 res!2514433) b!6039158))

(assert (= (and b!6039158 c!1082668) b!6039152))

(assert (= (and b!6039158 (not c!1082668)) b!6039144))

(assert (= (and b!6039152 res!2514432) b!6039156))

(assert (= (and b!6039144 c!1082667) b!6039153))

(assert (= (and b!6039144 (not c!1082667)) b!6039146))

(assert (= (and b!6039153 res!2514434) b!6039154))

(assert (= (and b!6039146 c!1082669) b!6039150))

(assert (= (and b!6039146 (not c!1082669)) b!6039149))

(assert (= (or b!6039153 b!6039150) bm!493892))

(assert (= (or b!6039156 bm!493892) bm!493890))

(assert (= (or b!6039152 b!6039154) bm!493889))

(declare-fun m!6909322 () Bool)

(assert (=> bm!493889 m!6909322))

(declare-fun m!6909324 () Bool)

(assert (=> bm!493890 m!6909324))

(declare-fun m!6909326 () Bool)

(assert (=> bm!493887 m!6909326))

(declare-fun m!6909328 () Bool)

(assert (=> bm!493891 m!6909328))

(declare-fun m!6909330 () Bool)

(assert (=> bm!493888 m!6909330))

(assert (=> bm!493630 d!1893776))

(declare-fun d!1893778 () Bool)

(assert (=> d!1893778 (= (Exists!3090 lambda!329268) (choose!45122 lambda!329268))))

(declare-fun bs!1489852 () Bool)

(assert (= bs!1489852 d!1893778))

(declare-fun m!6909332 () Bool)

(assert (=> bs!1489852 m!6909332))

(assert (=> d!1893258 d!1893778))

(declare-fun d!1893780 () Bool)

(assert (=> d!1893780 (= (Exists!3090 lambda!329269) (choose!45122 lambda!329269))))

(declare-fun bs!1489853 () Bool)

(assert (= bs!1489853 d!1893780))

(declare-fun m!6909334 () Bool)

(assert (=> bs!1489853 m!6909334))

(assert (=> d!1893258 d!1893780))

(declare-fun bs!1489854 () Bool)

(declare-fun d!1893782 () Bool)

(assert (= bs!1489854 (and d!1893782 b!6037326)))

(declare-fun lambda!329435 () Int)

(assert (=> bs!1489854 (= lambda!329435 lambda!329243)))

(declare-fun bs!1489855 () Bool)

(assert (= bs!1489855 (and d!1893782 b!6037859)))

(assert (=> bs!1489855 (not (= lambda!329435 lambda!329317))))

(declare-fun bs!1489856 () Bool)

(assert (= bs!1489856 (and d!1893782 d!1893262)))

(assert (=> bs!1489856 (= lambda!329435 lambda!329272)))

(declare-fun bs!1489857 () Bool)

(assert (= bs!1489857 (and d!1893782 b!6037864)))

(assert (=> bs!1489857 (not (= lambda!329435 lambda!329318))))

(declare-fun bs!1489858 () Bool)

(assert (= bs!1489858 (and d!1893782 b!6038647)))

(assert (=> bs!1489858 (not (= lambda!329435 lambda!329386))))

(declare-fun bs!1489859 () Bool)

(assert (= bs!1489859 (and d!1893782 b!6038642)))

(assert (=> bs!1489859 (not (= lambda!329435 lambda!329385))))

(declare-fun bs!1489860 () Bool)

(assert (= bs!1489860 (and d!1893782 d!1893258)))

(assert (=> bs!1489860 (= lambda!329435 lambda!329268)))

(assert (=> bs!1489854 (not (= lambda!329435 lambda!329244))))

(assert (=> bs!1489860 (not (= lambda!329435 lambda!329269))))

(declare-fun bs!1489861 () Bool)

(assert (= bs!1489861 (and d!1893782 d!1893764)))

(assert (=> bs!1489861 (= lambda!329435 lambda!329427)))

(assert (=> d!1893782 true))

(assert (=> d!1893782 true))

(assert (=> d!1893782 true))

(declare-fun lambda!329436 () Int)

(assert (=> bs!1489854 (not (= lambda!329436 lambda!329243))))

(assert (=> bs!1489855 (not (= lambda!329436 lambda!329317))))

(assert (=> bs!1489856 (not (= lambda!329436 lambda!329272))))

(assert (=> bs!1489857 (= lambda!329436 lambda!329318)))

(declare-fun bs!1489862 () Bool)

(assert (= bs!1489862 d!1893782))

(assert (=> bs!1489862 (not (= lambda!329436 lambda!329435))))

(assert (=> bs!1489858 (= (and (= (regOne!32552 r!7292) (regOne!32552 (regOne!32553 r!7292))) (= (regTwo!32552 r!7292) (regTwo!32552 (regOne!32553 r!7292)))) (= lambda!329436 lambda!329386))))

(assert (=> bs!1489859 (not (= lambda!329436 lambda!329385))))

(assert (=> bs!1489860 (not (= lambda!329436 lambda!329268))))

(assert (=> bs!1489854 (= lambda!329436 lambda!329244)))

(assert (=> bs!1489860 (= lambda!329436 lambda!329269)))

(assert (=> bs!1489861 (not (= lambda!329436 lambda!329427))))

(assert (=> d!1893782 true))

(assert (=> d!1893782 true))

(assert (=> d!1893782 true))

(assert (=> d!1893782 (= (Exists!3090 lambda!329435) (Exists!3090 lambda!329436))))

(assert (=> d!1893782 true))

(declare-fun _$90!1701 () Unit!157311)

(assert (=> d!1893782 (= (choose!45120 (regOne!32552 r!7292) (regTwo!32552 r!7292) s!2326) _$90!1701)))

(declare-fun m!6909336 () Bool)

(assert (=> bs!1489862 m!6909336))

(declare-fun m!6909338 () Bool)

(assert (=> bs!1489862 m!6909338))

(assert (=> d!1893258 d!1893782))

(assert (=> d!1893258 d!1893744))

(declare-fun d!1893784 () Bool)

(declare-fun c!1082671 () Bool)

(assert (=> d!1893784 (= c!1082671 (isEmpty!36143 (tail!11662 (t!377790 s!2326))))))

(declare-fun e!3688869 () Bool)

(assert (=> d!1893784 (= (matchZipper!2056 (derivationStepZipper!2001 lt!2322715 (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))) e!3688869)))

(declare-fun b!6039168 () Bool)

(assert (=> b!6039168 (= e!3688869 (nullableZipper!1825 (derivationStepZipper!2001 lt!2322715 (head!12577 (t!377790 s!2326)))))))

(declare-fun b!6039169 () Bool)

(assert (=> b!6039169 (= e!3688869 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322715 (head!12577 (t!377790 s!2326))) (head!12577 (tail!11662 (t!377790 s!2326)))) (tail!11662 (tail!11662 (t!377790 s!2326)))))))

(assert (= (and d!1893784 c!1082671) b!6039168))

(assert (= (and d!1893784 (not c!1082671)) b!6039169))

(assert (=> d!1893784 m!6907876))

(assert (=> d!1893784 m!6908740))

(assert (=> b!6039168 m!6908018))

(declare-fun m!6909340 () Bool)

(assert (=> b!6039168 m!6909340))

(assert (=> b!6039169 m!6907876))

(assert (=> b!6039169 m!6908744))

(assert (=> b!6039169 m!6908018))

(assert (=> b!6039169 m!6908744))

(declare-fun m!6909342 () Bool)

(assert (=> b!6039169 m!6909342))

(assert (=> b!6039169 m!6907876))

(assert (=> b!6039169 m!6908748))

(assert (=> b!6039169 m!6909342))

(assert (=> b!6039169 m!6908748))

(declare-fun m!6909344 () Bool)

(assert (=> b!6039169 m!6909344))

(assert (=> b!6037644 d!1893784))

(declare-fun bs!1489863 () Bool)

(declare-fun d!1893786 () Bool)

(assert (= bs!1489863 (and d!1893786 d!1893552)))

(declare-fun lambda!329437 () Int)

(assert (=> bs!1489863 (= lambda!329437 lambda!329388)))

(declare-fun bs!1489864 () Bool)

(assert (= bs!1489864 (and d!1893786 d!1893572)))

(assert (=> bs!1489864 (= lambda!329437 lambda!329392)))

(declare-fun bs!1489865 () Bool)

(assert (= bs!1489865 (and d!1893786 d!1893650)))

(assert (=> bs!1489865 (= lambda!329437 lambda!329403)))

(declare-fun bs!1489866 () Bool)

(assert (= bs!1489866 (and d!1893786 d!1893288)))

(assert (=> bs!1489866 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329437 lambda!329291))))

(declare-fun bs!1489867 () Bool)

(assert (= bs!1489867 (and d!1893786 b!6037340)))

(assert (=> bs!1489867 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329437 lambda!329245))))

(declare-fun bs!1489868 () Bool)

(assert (= bs!1489868 (and d!1893786 d!1893728)))

(assert (=> bs!1489868 (= (= (head!12577 (t!377790 s!2326)) (head!12577 s!2326)) (= lambda!329437 lambda!329419))))

(declare-fun bs!1489869 () Bool)

(assert (= bs!1489869 (and d!1893786 d!1893736)))

(assert (=> bs!1489869 (= lambda!329437 lambda!329420)))

(declare-fun bs!1489870 () Bool)

(assert (= bs!1489870 (and d!1893786 d!1893350)))

(assert (=> bs!1489870 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329437 lambda!329312))))

(declare-fun bs!1489871 () Bool)

(assert (= bs!1489871 (and d!1893786 d!1893252)))

(assert (=> bs!1489871 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329437 lambda!329263))))

(assert (=> d!1893786 true))

(assert (=> d!1893786 (= (derivationStepZipper!2001 lt!2322715 (head!12577 (t!377790 s!2326))) (flatMap!1533 lt!2322715 lambda!329437))))

(declare-fun bs!1489872 () Bool)

(assert (= bs!1489872 d!1893786))

(declare-fun m!6909346 () Bool)

(assert (=> bs!1489872 m!6909346))

(assert (=> b!6037644 d!1893786))

(assert (=> b!6037644 d!1893554))

(assert (=> b!6037644 d!1893556))

(assert (=> bm!493547 d!1893568))

(declare-fun c!1082672 () Bool)

(declare-fun bm!493893 () Bool)

(declare-fun c!1082673 () Bool)

(declare-fun call!493898 () Bool)

(assert (=> bm!493893 (= call!493898 (validRegex!7756 (ite c!1082673 (reg!16349 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (ite c!1082672 (regTwo!32553 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (regTwo!32552 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292))))))))))

(declare-fun b!6039170 () Bool)

(declare-fun e!3688873 () Bool)

(declare-fun call!493900 () Bool)

(assert (=> b!6039170 (= e!3688873 call!493900)))

(declare-fun bm!493894 () Bool)

(declare-fun call!493899 () Bool)

(assert (=> bm!493894 (= call!493899 (validRegex!7756 (ite c!1082672 (regOne!32553 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) (regOne!32552 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))))

(declare-fun b!6039171 () Bool)

(declare-fun e!3688874 () Bool)

(declare-fun e!3688872 () Bool)

(assert (=> b!6039171 (= e!3688874 e!3688872)))

(declare-fun res!2514446 () Bool)

(assert (=> b!6039171 (= res!2514446 (not (nullable!6015 (reg!16349 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))))

(assert (=> b!6039171 (=> (not res!2514446) (not e!3688872))))

(declare-fun b!6039172 () Bool)

(declare-fun e!3688876 () Bool)

(assert (=> b!6039172 (= e!3688874 e!3688876)))

(assert (=> b!6039172 (= c!1082672 (is-Union!16020 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))

(declare-fun d!1893788 () Bool)

(declare-fun res!2514447 () Bool)

(declare-fun e!3688870 () Bool)

(assert (=> d!1893788 (=> res!2514447 e!3688870)))

(assert (=> d!1893788 (= res!2514447 (is-ElementMatch!16020 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))

(assert (=> d!1893788 (= (validRegex!7756 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))) e!3688870)))

(declare-fun bm!493895 () Bool)

(assert (=> bm!493895 (= call!493900 call!493898)))

(declare-fun b!6039173 () Bool)

(assert (=> b!6039173 (= e!3688870 e!3688874)))

(assert (=> b!6039173 (= c!1082673 (is-Star!16020 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292)))))))

(declare-fun b!6039174 () Bool)

(assert (=> b!6039174 (= e!3688872 call!493898)))

(declare-fun b!6039175 () Bool)

(declare-fun e!3688875 () Bool)

(assert (=> b!6039175 (= e!3688875 e!3688873)))

(declare-fun res!2514445 () Bool)

(assert (=> b!6039175 (=> (not res!2514445) (not e!3688873))))

(assert (=> b!6039175 (= res!2514445 call!493899)))

(declare-fun b!6039176 () Bool)

(declare-fun res!2514443 () Bool)

(declare-fun e!3688871 () Bool)

(assert (=> b!6039176 (=> (not res!2514443) (not e!3688871))))

(assert (=> b!6039176 (= res!2514443 call!493899)))

(assert (=> b!6039176 (= e!3688876 e!3688871)))

(declare-fun b!6039177 () Bool)

(declare-fun res!2514444 () Bool)

(assert (=> b!6039177 (=> res!2514444 e!3688875)))

(assert (=> b!6039177 (= res!2514444 (not (is-Concat!24865 (ite c!1082242 (regOne!32553 (regTwo!32552 r!7292)) (regOne!32552 (regTwo!32552 r!7292))))))))

(assert (=> b!6039177 (= e!3688876 e!3688875)))

(declare-fun b!6039178 () Bool)

(assert (=> b!6039178 (= e!3688871 call!493900)))

(assert (= (and d!1893788 (not res!2514447)) b!6039173))

(assert (= (and b!6039173 c!1082673) b!6039171))

(assert (= (and b!6039173 (not c!1082673)) b!6039172))

(assert (= (and b!6039171 res!2514446) b!6039174))

(assert (= (and b!6039172 c!1082672) b!6039176))

(assert (= (and b!6039172 (not c!1082672)) b!6039177))

(assert (= (and b!6039176 res!2514443) b!6039178))

(assert (= (and b!6039177 (not res!2514444)) b!6039175))

(assert (= (and b!6039175 res!2514445) b!6039170))

(assert (= (or b!6039178 b!6039170) bm!493895))

(assert (= (or b!6039176 b!6039175) bm!493894))

(assert (= (or b!6039174 bm!493895) bm!493893))

(declare-fun m!6909348 () Bool)

(assert (=> bm!493893 m!6909348))

(declare-fun m!6909350 () Bool)

(assert (=> bm!493894 m!6909350))

(declare-fun m!6909352 () Bool)

(assert (=> b!6039171 m!6909352))

(assert (=> bm!493587 d!1893788))

(assert (=> d!1893240 d!1893568))

(declare-fun d!1893790 () Bool)

(assert (=> d!1893790 (= (nullable!6015 (h!70683 (exprs!5904 lt!2322698))) (nullableFct!1985 (h!70683 (exprs!5904 lt!2322698))))))

(declare-fun bs!1489873 () Bool)

(assert (= bs!1489873 d!1893790))

(declare-fun m!6909354 () Bool)

(assert (=> bs!1489873 m!6909354))

(assert (=> b!6037712 d!1893790))

(assert (=> b!6037518 d!1893538))

(declare-fun d!1893792 () Bool)

(assert (=> d!1893792 (= (isUnion!885 lt!2322927) (is-Union!16020 lt!2322927))))

(assert (=> b!6037749 d!1893792))

(assert (=> d!1893292 d!1893598))

(declare-fun d!1893794 () Bool)

(assert (=> d!1893794 true))

(assert (=> d!1893794 true))

(declare-fun res!2514450 () Bool)

(assert (=> d!1893794 (= (choose!45122 lambda!329243) res!2514450)))

(assert (=> d!1893264 d!1893794))

(declare-fun b!6039179 () Bool)

(declare-fun e!3688877 () (Set Context!10808))

(declare-fun e!3688879 () (Set Context!10808))

(assert (=> b!6039179 (= e!3688877 e!3688879)))

(declare-fun c!1082674 () Bool)

(assert (=> b!6039179 (= c!1082674 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))))))))

(declare-fun b!6039180 () Bool)

(declare-fun e!3688878 () Bool)

(assert (=> b!6039180 (= e!3688878 (nullable!6015 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343))))))))))

(declare-fun bm!493896 () Bool)

(declare-fun call!493901 () (Set Context!10808))

(assert (=> bm!493896 (= call!493901 (derivationStepZipperDown!1270 (h!70683 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))))) (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343))))))) (h!70685 s!2326)))))

(declare-fun d!1893796 () Bool)

(declare-fun c!1082675 () Bool)

(assert (=> d!1893796 (= c!1082675 e!3688878)))

(declare-fun res!2514451 () Bool)

(assert (=> d!1893796 (=> (not res!2514451) (not e!3688878))))

(assert (=> d!1893796 (= res!2514451 (is-Cons!64235 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))))))))

(assert (=> d!1893796 (= (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343)))) (h!70685 s!2326)) e!3688877)))

(declare-fun b!6039181 () Bool)

(assert (=> b!6039181 (= e!3688877 (set.union call!493901 (derivationStepZipperUp!1196 (Context!10809 (t!377788 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 (h!70684 zl!343))))))) (h!70685 s!2326))))))

(declare-fun b!6039182 () Bool)

(assert (=> b!6039182 (= e!3688879 (as set.empty (Set Context!10808)))))

(declare-fun b!6039183 () Bool)

(assert (=> b!6039183 (= e!3688879 call!493901)))

(assert (= (and d!1893796 res!2514451) b!6039180))

(assert (= (and d!1893796 c!1082675) b!6039181))

(assert (= (and d!1893796 (not c!1082675)) b!6039179))

(assert (= (and b!6039179 c!1082674) b!6039183))

(assert (= (and b!6039179 (not c!1082674)) b!6039182))

(assert (= (or b!6039181 b!6039183) bm!493896))

(declare-fun m!6909356 () Bool)

(assert (=> b!6039180 m!6909356))

(declare-fun m!6909358 () Bool)

(assert (=> bm!493896 m!6909358))

(declare-fun m!6909360 () Bool)

(assert (=> b!6039181 m!6909360))

(assert (=> b!6037587 d!1893796))

(declare-fun b!6039184 () Bool)

(declare-fun e!3688882 () (Set Context!10808))

(declare-fun call!493906 () (Set Context!10808))

(assert (=> b!6039184 (= e!3688882 call!493906)))

(declare-fun c!1082680 () Bool)

(declare-fun call!493904 () List!64359)

(declare-fun c!1082679 () Bool)

(declare-fun call!493905 () (Set Context!10808))

(declare-fun bm!493897 () Bool)

(declare-fun c!1082676 () Bool)

(assert (=> bm!493897 (= call!493905 (derivationStepZipperDown!1270 (ite c!1082679 (regOne!32553 (h!70683 (exprs!5904 lt!2322733))) (ite c!1082680 (regTwo!32552 (h!70683 (exprs!5904 lt!2322733))) (ite c!1082676 (regOne!32552 (h!70683 (exprs!5904 lt!2322733))) (reg!16349 (h!70683 (exprs!5904 lt!2322733)))))) (ite (or c!1082679 c!1082680) (Context!10809 (t!377788 (exprs!5904 lt!2322733))) (Context!10809 call!493904)) (h!70685 s!2326)))))

(declare-fun b!6039185 () Bool)

(declare-fun e!3688883 () (Set Context!10808))

(declare-fun e!3688885 () (Set Context!10808))

(assert (=> b!6039185 (= e!3688883 e!3688885)))

(assert (=> b!6039185 (= c!1082676 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun d!1893798 () Bool)

(declare-fun c!1082677 () Bool)

(assert (=> d!1893798 (= c!1082677 (and (is-ElementMatch!16020 (h!70683 (exprs!5904 lt!2322733))) (= (c!1082125 (h!70683 (exprs!5904 lt!2322733))) (h!70685 s!2326))))))

(declare-fun e!3688884 () (Set Context!10808))

(assert (=> d!1893798 (= (derivationStepZipperDown!1270 (h!70683 (exprs!5904 lt!2322733)) (Context!10809 (t!377788 (exprs!5904 lt!2322733))) (h!70685 s!2326)) e!3688884)))

(declare-fun bm!493898 () Bool)

(declare-fun call!493902 () (Set Context!10808))

(assert (=> bm!493898 (= call!493906 call!493902)))

(declare-fun b!6039186 () Bool)

(declare-fun e!3688880 () Bool)

(assert (=> b!6039186 (= e!3688880 (nullable!6015 (regOne!32552 (h!70683 (exprs!5904 lt!2322733)))))))

(declare-fun bm!493899 () Bool)

(assert (=> bm!493899 (= call!493902 call!493905)))

(declare-fun b!6039187 () Bool)

(declare-fun c!1082678 () Bool)

(assert (=> b!6039187 (= c!1082678 (is-Star!16020 (h!70683 (exprs!5904 lt!2322733))))))

(assert (=> b!6039187 (= e!3688885 e!3688882)))

(declare-fun call!493907 () List!64359)

(declare-fun bm!493900 () Bool)

(assert (=> bm!493900 (= call!493907 ($colon$colon!1905 (exprs!5904 (Context!10809 (t!377788 (exprs!5904 lt!2322733)))) (ite (or c!1082680 c!1082676) (regTwo!32552 (h!70683 (exprs!5904 lt!2322733))) (h!70683 (exprs!5904 lt!2322733)))))))

(declare-fun b!6039188 () Bool)

(declare-fun call!493903 () (Set Context!10808))

(assert (=> b!6039188 (= e!3688883 (set.union call!493903 call!493902))))

(declare-fun b!6039189 () Bool)

(assert (=> b!6039189 (= e!3688884 (set.insert (Context!10809 (t!377788 (exprs!5904 lt!2322733))) (as set.empty (Set Context!10808))))))

(declare-fun bm!493901 () Bool)

(assert (=> bm!493901 (= call!493903 (derivationStepZipperDown!1270 (ite c!1082679 (regTwo!32553 (h!70683 (exprs!5904 lt!2322733))) (regOne!32552 (h!70683 (exprs!5904 lt!2322733)))) (ite c!1082679 (Context!10809 (t!377788 (exprs!5904 lt!2322733))) (Context!10809 call!493907)) (h!70685 s!2326)))))

(declare-fun bm!493902 () Bool)

(assert (=> bm!493902 (= call!493904 call!493907)))

(declare-fun b!6039190 () Bool)

(assert (=> b!6039190 (= e!3688885 call!493906)))

(declare-fun b!6039191 () Bool)

(declare-fun e!3688881 () (Set Context!10808))

(assert (=> b!6039191 (= e!3688884 e!3688881)))

(assert (=> b!6039191 (= c!1082679 (is-Union!16020 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun b!6039192 () Bool)

(assert (=> b!6039192 (= c!1082680 e!3688880)))

(declare-fun res!2514452 () Bool)

(assert (=> b!6039192 (=> (not res!2514452) (not e!3688880))))

(assert (=> b!6039192 (= res!2514452 (is-Concat!24865 (h!70683 (exprs!5904 lt!2322733))))))

(assert (=> b!6039192 (= e!3688881 e!3688883)))

(declare-fun b!6039193 () Bool)

(assert (=> b!6039193 (= e!3688881 (set.union call!493905 call!493903))))

(declare-fun b!6039194 () Bool)

(assert (=> b!6039194 (= e!3688882 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893798 c!1082677) b!6039189))

(assert (= (and d!1893798 (not c!1082677)) b!6039191))

(assert (= (and b!6039191 c!1082679) b!6039193))

(assert (= (and b!6039191 (not c!1082679)) b!6039192))

(assert (= (and b!6039192 res!2514452) b!6039186))

(assert (= (and b!6039192 c!1082680) b!6039188))

(assert (= (and b!6039192 (not c!1082680)) b!6039185))

(assert (= (and b!6039185 c!1082676) b!6039190))

(assert (= (and b!6039185 (not c!1082676)) b!6039187))

(assert (= (and b!6039187 c!1082678) b!6039184))

(assert (= (and b!6039187 (not c!1082678)) b!6039194))

(assert (= (or b!6039190 b!6039184) bm!493902))

(assert (= (or b!6039190 b!6039184) bm!493898))

(assert (= (or b!6039188 bm!493902) bm!493900))

(assert (= (or b!6039188 bm!493898) bm!493899))

(assert (= (or b!6039193 b!6039188) bm!493901))

(assert (= (or b!6039193 bm!493899) bm!493897))

(declare-fun m!6909362 () Bool)

(assert (=> bm!493901 m!6909362))

(declare-fun m!6909364 () Bool)

(assert (=> b!6039189 m!6909364))

(declare-fun m!6909366 () Bool)

(assert (=> bm!493897 m!6909366))

(declare-fun m!6909368 () Bool)

(assert (=> bm!493900 m!6909368))

(declare-fun m!6909370 () Bool)

(assert (=> b!6039186 m!6909370))

(assert (=> bm!493560 d!1893798))

(declare-fun d!1893800 () Bool)

(assert (=> d!1893800 (= (head!12578 (exprs!5904 (h!70684 zl!343))) (h!70683 (exprs!5904 (h!70684 zl!343))))))

(assert (=> b!6037785 d!1893800))

(declare-fun d!1893802 () Bool)

(declare-fun c!1082681 () Bool)

(assert (=> d!1893802 (= c!1082681 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun e!3688886 () Bool)

(assert (=> d!1893802 (= (matchZipper!2056 (derivationStepZipper!2001 lt!2322722 (head!12577 s!2326)) (tail!11662 s!2326)) e!3688886)))

(declare-fun b!6039195 () Bool)

(assert (=> b!6039195 (= e!3688886 (nullableZipper!1825 (derivationStepZipper!2001 lt!2322722 (head!12577 s!2326))))))

(declare-fun b!6039196 () Bool)

(assert (=> b!6039196 (= e!3688886 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322722 (head!12577 s!2326)) (head!12577 (tail!11662 s!2326))) (tail!11662 (tail!11662 s!2326))))))

(assert (= (and d!1893802 c!1082681) b!6039195))

(assert (= (and d!1893802 (not c!1082681)) b!6039196))

(assert (=> d!1893802 m!6907842))

(assert (=> d!1893802 m!6907846))

(assert (=> b!6039195 m!6908000))

(declare-fun m!6909372 () Bool)

(assert (=> b!6039195 m!6909372))

(assert (=> b!6039196 m!6907842))

(assert (=> b!6039196 m!6909188))

(assert (=> b!6039196 m!6908000))

(assert (=> b!6039196 m!6909188))

(declare-fun m!6909374 () Bool)

(assert (=> b!6039196 m!6909374))

(assert (=> b!6039196 m!6907842))

(assert (=> b!6039196 m!6909192))

(assert (=> b!6039196 m!6909374))

(assert (=> b!6039196 m!6909192))

(declare-fun m!6909376 () Bool)

(assert (=> b!6039196 m!6909376))

(assert (=> b!6037638 d!1893802))

(declare-fun bs!1489874 () Bool)

(declare-fun d!1893804 () Bool)

(assert (= bs!1489874 (and d!1893804 d!1893552)))

(declare-fun lambda!329438 () Int)

(assert (=> bs!1489874 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329438 lambda!329388))))

(declare-fun bs!1489875 () Bool)

(assert (= bs!1489875 (and d!1893804 d!1893572)))

(assert (=> bs!1489875 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329438 lambda!329392))))

(declare-fun bs!1489876 () Bool)

(assert (= bs!1489876 (and d!1893804 d!1893650)))

(assert (=> bs!1489876 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329438 lambda!329403))))

(declare-fun bs!1489877 () Bool)

(assert (= bs!1489877 (and d!1893804 d!1893786)))

(assert (=> bs!1489877 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329438 lambda!329437))))

(declare-fun bs!1489878 () Bool)

(assert (= bs!1489878 (and d!1893804 d!1893288)))

(assert (=> bs!1489878 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329438 lambda!329291))))

(declare-fun bs!1489879 () Bool)

(assert (= bs!1489879 (and d!1893804 b!6037340)))

(assert (=> bs!1489879 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329438 lambda!329245))))

(declare-fun bs!1489880 () Bool)

(assert (= bs!1489880 (and d!1893804 d!1893728)))

(assert (=> bs!1489880 (= lambda!329438 lambda!329419)))

(declare-fun bs!1489881 () Bool)

(assert (= bs!1489881 (and d!1893804 d!1893736)))

(assert (=> bs!1489881 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329438 lambda!329420))))

(declare-fun bs!1489882 () Bool)

(assert (= bs!1489882 (and d!1893804 d!1893350)))

(assert (=> bs!1489882 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329438 lambda!329312))))

(declare-fun bs!1489883 () Bool)

(assert (= bs!1489883 (and d!1893804 d!1893252)))

(assert (=> bs!1489883 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329438 lambda!329263))))

(assert (=> d!1893804 true))

(assert (=> d!1893804 (= (derivationStepZipper!2001 lt!2322722 (head!12577 s!2326)) (flatMap!1533 lt!2322722 lambda!329438))))

(declare-fun bs!1489884 () Bool)

(assert (= bs!1489884 d!1893804))

(declare-fun m!6909378 () Bool)

(assert (=> bs!1489884 m!6909378))

(assert (=> b!6037638 d!1893804))

(assert (=> b!6037638 d!1893538))

(assert (=> b!6037638 d!1893514))

(declare-fun bs!1489885 () Bool)

(declare-fun d!1893806 () Bool)

(assert (= bs!1489885 (and d!1893806 b!6037607)))

(declare-fun lambda!329439 () Int)

(assert (=> bs!1489885 (not (= lambda!329439 lambda!329290))))

(declare-fun bs!1489886 () Bool)

(assert (= bs!1489886 (and d!1893806 b!6038691)))

(assert (=> bs!1489886 (not (= lambda!329439 lambda!329395))))

(declare-fun bs!1489887 () Bool)

(assert (= bs!1489887 (and d!1893806 d!1893642)))

(assert (=> bs!1489887 (= lambda!329439 lambda!329402)))

(declare-fun bs!1489888 () Bool)

(assert (= bs!1489888 (and d!1893806 d!1893746)))

(assert (=> bs!1489888 (= lambda!329439 lambda!329421)))

(declare-fun bs!1489889 () Bool)

(assert (= bs!1489889 (and d!1893806 b!6038908)))

(assert (=> bs!1489889 (not (= lambda!329439 lambda!329412))))

(declare-fun bs!1489890 () Bool)

(assert (= bs!1489890 (and d!1893806 b!6037597)))

(assert (=> bs!1489890 (not (= lambda!329439 lambda!329280))))

(declare-fun bs!1489891 () Bool)

(assert (= bs!1489891 (and d!1893806 b!6037602)))

(assert (=> bs!1489891 (not (= lambda!329439 lambda!329283))))

(declare-fun bs!1489892 () Bool)

(assert (= bs!1489892 (and d!1893806 d!1893700)))

(assert (=> bs!1489892 (= lambda!329439 lambda!329417)))

(declare-fun bs!1489893 () Bool)

(assert (= bs!1489893 (and d!1893806 b!6037599)))

(assert (=> bs!1489893 (not (= lambda!329439 lambda!329281))))

(declare-fun bs!1489894 () Bool)

(assert (= bs!1489894 (and d!1893806 d!1893758)))

(assert (=> bs!1489894 (= lambda!329439 lambda!329424)))

(declare-fun bs!1489895 () Bool)

(assert (= bs!1489895 (and d!1893806 b!6037604)))

(assert (=> bs!1489895 (not (= lambda!329439 lambda!329284))))

(declare-fun bs!1489896 () Bool)

(assert (= bs!1489896 (and d!1893806 d!1893668)))

(assert (=> bs!1489896 (not (= lambda!329439 lambda!329410))))

(declare-fun bs!1489897 () Bool)

(assert (= bs!1489897 (and d!1893806 b!6038844)))

(assert (=> bs!1489897 (not (= lambda!329439 lambda!329409))))

(declare-fun bs!1489898 () Bool)

(assert (= bs!1489898 (and d!1893806 d!1893580)))

(assert (=> bs!1489898 (not (= lambda!329439 lambda!329400))))

(declare-fun bs!1489899 () Bool)

(assert (= bs!1489899 (and d!1893806 b!6038689)))

(assert (=> bs!1489899 (not (= lambda!329439 lambda!329394))))

(declare-fun bs!1489900 () Bool)

(assert (= bs!1489900 (and d!1893806 d!1893560)))

(assert (=> bs!1489900 (= lambda!329439 lambda!329391)))

(declare-fun bs!1489901 () Bool)

(assert (= bs!1489901 (and d!1893806 b!6038842)))

(assert (=> bs!1489901 (not (= lambda!329439 lambda!329408))))

(declare-fun bs!1489902 () Bool)

(assert (= bs!1489902 (and d!1893806 b!6037605)))

(assert (=> bs!1489902 (not (= lambda!329439 lambda!329289))))

(declare-fun bs!1489903 () Bool)

(assert (= bs!1489903 (and d!1893806 b!6038910)))

(assert (=> bs!1489903 (not (= lambda!329439 lambda!329413))))

(declare-fun bs!1489904 () Bool)

(assert (= bs!1489904 (and d!1893806 d!1893750)))

(assert (=> bs!1489904 (= lambda!329439 lambda!329422)))

(declare-fun bs!1489905 () Bool)

(assert (= bs!1489905 (and d!1893806 d!1893690)))

(assert (=> bs!1489905 (not (= lambda!329439 lambda!329414))))

(assert (=> d!1893806 (= (nullableZipper!1825 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326))) (exists!2385 (derivationStepZipper!2001 lt!2322722 (h!70685 s!2326)) lambda!329439))))

(declare-fun bs!1489906 () Bool)

(assert (= bs!1489906 d!1893806))

(assert (=> bs!1489906 m!6907582))

(declare-fun m!6909380 () Bool)

(assert (=> bs!1489906 m!6909380))

(assert (=> b!6037635 d!1893806))

(declare-fun d!1893808 () Bool)

(assert (=> d!1893808 true))

(declare-fun setRes!40851 () Bool)

(assert (=> d!1893808 setRes!40851))

(declare-fun condSetEmpty!40851 () Bool)

(declare-fun res!2514453 () (Set Context!10808))

(assert (=> d!1893808 (= condSetEmpty!40851 (= res!2514453 (as set.empty (Set Context!10808))))))

(assert (=> d!1893808 (= (choose!45123 z!1189 lambda!329245) res!2514453)))

(declare-fun setIsEmpty!40851 () Bool)

(assert (=> setIsEmpty!40851 setRes!40851))

(declare-fun setElem!40851 () Context!10808)

(declare-fun e!3688887 () Bool)

(declare-fun setNonEmpty!40851 () Bool)

(declare-fun tp!1679047 () Bool)

(assert (=> setNonEmpty!40851 (= setRes!40851 (and tp!1679047 (inv!83298 setElem!40851) e!3688887))))

(declare-fun setRest!40851 () (Set Context!10808))

(assert (=> setNonEmpty!40851 (= res!2514453 (set.union (set.insert setElem!40851 (as set.empty (Set Context!10808))) setRest!40851))))

(declare-fun b!6039197 () Bool)

(declare-fun tp!1679048 () Bool)

(assert (=> b!6039197 (= e!3688887 tp!1679048)))

(assert (= (and d!1893808 condSetEmpty!40851) setIsEmpty!40851))

(assert (= (and d!1893808 (not condSetEmpty!40851)) setNonEmpty!40851))

(assert (= setNonEmpty!40851 b!6039197))

(declare-fun m!6909382 () Bool)

(assert (=> setNonEmpty!40851 m!6909382))

(assert (=> d!1893268 d!1893808))

(declare-fun b!6039198 () Bool)

(declare-fun e!3688890 () (Set Context!10808))

(declare-fun call!493912 () (Set Context!10808))

(assert (=> b!6039198 (= e!3688890 call!493912)))

(declare-fun call!493910 () List!64359)

(declare-fun c!1082686 () Bool)

(declare-fun c!1082685 () Bool)

(declare-fun c!1082682 () Bool)

(declare-fun call!493911 () (Set Context!10808))

(declare-fun bm!493903 () Bool)

(assert (=> bm!493903 (= call!493911 (derivationStepZipperDown!1270 (ite c!1082685 (regOne!32553 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))) (ite c!1082686 (regTwo!32552 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))) (ite c!1082682 (regOne!32552 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))) (reg!16349 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292))))))))) (ite (or c!1082685 c!1082686) (ite (or c!1082209 c!1082210) lt!2322716 (Context!10809 call!493586)) (Context!10809 call!493910)) (h!70685 s!2326)))))

(declare-fun b!6039199 () Bool)

(declare-fun e!3688891 () (Set Context!10808))

(declare-fun e!3688893 () (Set Context!10808))

(assert (=> b!6039199 (= e!3688891 e!3688893)))

(assert (=> b!6039199 (= c!1082682 (is-Concat!24865 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))))))

(declare-fun c!1082683 () Bool)

(declare-fun d!1893810 () Bool)

(assert (=> d!1893810 (= c!1082683 (and (is-ElementMatch!16020 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))) (= (c!1082125 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))) (h!70685 s!2326))))))

(declare-fun e!3688892 () (Set Context!10808))

(assert (=> d!1893810 (= (derivationStepZipperDown!1270 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292))))) (ite (or c!1082209 c!1082210) lt!2322716 (Context!10809 call!493586)) (h!70685 s!2326)) e!3688892)))

(declare-fun bm!493904 () Bool)

(declare-fun call!493908 () (Set Context!10808))

(assert (=> bm!493904 (= call!493912 call!493908)))

(declare-fun b!6039200 () Bool)

(declare-fun e!3688888 () Bool)

(assert (=> b!6039200 (= e!3688888 (nullable!6015 (regOne!32552 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292))))))))))

(declare-fun bm!493905 () Bool)

(assert (=> bm!493905 (= call!493908 call!493911)))

(declare-fun c!1082684 () Bool)

(declare-fun b!6039201 () Bool)

(assert (=> b!6039201 (= c!1082684 (is-Star!16020 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))))))

(assert (=> b!6039201 (= e!3688893 e!3688890)))

(declare-fun bm!493906 () Bool)

(declare-fun call!493913 () List!64359)

(assert (=> bm!493906 (= call!493913 ($colon$colon!1905 (exprs!5904 (ite (or c!1082209 c!1082210) lt!2322716 (Context!10809 call!493586))) (ite (or c!1082686 c!1082682) (regTwo!32552 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))) (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292))))))))))

(declare-fun b!6039202 () Bool)

(declare-fun call!493909 () (Set Context!10808))

(assert (=> b!6039202 (= e!3688891 (set.union call!493909 call!493908))))

(declare-fun b!6039203 () Bool)

(assert (=> b!6039203 (= e!3688892 (set.insert (ite (or c!1082209 c!1082210) lt!2322716 (Context!10809 call!493586)) (as set.empty (Set Context!10808))))))

(declare-fun bm!493907 () Bool)

(assert (=> bm!493907 (= call!493909 (derivationStepZipperDown!1270 (ite c!1082685 (regTwo!32553 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))) (regOne!32552 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292))))))) (ite c!1082685 (ite (or c!1082209 c!1082210) lt!2322716 (Context!10809 call!493586)) (Context!10809 call!493913)) (h!70685 s!2326)))))

(declare-fun bm!493908 () Bool)

(assert (=> bm!493908 (= call!493910 call!493913)))

(declare-fun b!6039204 () Bool)

(assert (=> b!6039204 (= e!3688893 call!493912)))

(declare-fun b!6039205 () Bool)

(declare-fun e!3688889 () (Set Context!10808))

(assert (=> b!6039205 (= e!3688892 e!3688889)))

(assert (=> b!6039205 (= c!1082685 (is-Union!16020 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))))))

(declare-fun b!6039206 () Bool)

(assert (=> b!6039206 (= c!1082686 e!3688888)))

(declare-fun res!2514454 () Bool)

(assert (=> b!6039206 (=> (not res!2514454) (not e!3688888))))

(assert (=> b!6039206 (= res!2514454 (is-Concat!24865 (ite c!1082209 (regOne!32553 (regTwo!32552 r!7292)) (ite c!1082210 (regTwo!32552 (regTwo!32552 r!7292)) (ite c!1082206 (regOne!32552 (regTwo!32552 r!7292)) (reg!16349 (regTwo!32552 r!7292)))))))))

(assert (=> b!6039206 (= e!3688889 e!3688891)))

(declare-fun b!6039207 () Bool)

(assert (=> b!6039207 (= e!3688889 (set.union call!493911 call!493909))))

(declare-fun b!6039208 () Bool)

(assert (=> b!6039208 (= e!3688890 (as set.empty (Set Context!10808)))))

(assert (= (and d!1893810 c!1082683) b!6039203))

(assert (= (and d!1893810 (not c!1082683)) b!6039205))

(assert (= (and b!6039205 c!1082685) b!6039207))

(assert (= (and b!6039205 (not c!1082685)) b!6039206))

(assert (= (and b!6039206 res!2514454) b!6039200))

(assert (= (and b!6039206 c!1082686) b!6039202))

(assert (= (and b!6039206 (not c!1082686)) b!6039199))

(assert (= (and b!6039199 c!1082682) b!6039204))

(assert (= (and b!6039199 (not c!1082682)) b!6039201))

(assert (= (and b!6039201 c!1082684) b!6039198))

(assert (= (and b!6039201 (not c!1082684)) b!6039208))

(assert (= (or b!6039204 b!6039198) bm!493908))

(assert (= (or b!6039204 b!6039198) bm!493904))

(assert (= (or b!6039202 bm!493908) bm!493906))

(assert (= (or b!6039202 bm!493904) bm!493905))

(assert (= (or b!6039207 b!6039202) bm!493907))

(assert (= (or b!6039207 bm!493905) bm!493903))

(declare-fun m!6909384 () Bool)

(assert (=> bm!493907 m!6909384))

(declare-fun m!6909386 () Bool)

(assert (=> b!6039203 m!6909386))

(declare-fun m!6909388 () Bool)

(assert (=> bm!493903 m!6909388))

(declare-fun m!6909390 () Bool)

(assert (=> bm!493906 m!6909390))

(declare-fun m!6909392 () Bool)

(assert (=> b!6039200 m!6909392))

(assert (=> bm!493579 d!1893810))

(declare-fun d!1893812 () Bool)

(assert (=> d!1893812 (= (nullable!6015 (h!70683 (exprs!5904 lt!2322710))) (nullableFct!1985 (h!70683 (exprs!5904 lt!2322710))))))

(declare-fun bs!1489907 () Bool)

(assert (= bs!1489907 d!1893812))

(declare-fun m!6909394 () Bool)

(assert (=> bs!1489907 m!6909394))

(assert (=> b!6037822 d!1893812))

(declare-fun d!1893814 () Bool)

(declare-fun c!1082687 () Bool)

(assert (=> d!1893814 (= c!1082687 (isEmpty!36143 (t!377790 s!2326)))))

(declare-fun e!3688894 () Bool)

(assert (=> d!1893814 (= (matchZipper!2056 (set.union lt!2322715 lt!2322706) (t!377790 s!2326)) e!3688894)))

(declare-fun b!6039209 () Bool)

(assert (=> b!6039209 (= e!3688894 (nullableZipper!1825 (set.union lt!2322715 lt!2322706)))))

(declare-fun b!6039210 () Bool)

(assert (=> b!6039210 (= e!3688894 (matchZipper!2056 (derivationStepZipper!2001 (set.union lt!2322715 lt!2322706) (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))))))

(assert (= (and d!1893814 c!1082687) b!6039209))

(assert (= (and d!1893814 (not c!1082687)) b!6039210))

(assert (=> d!1893814 m!6907868))

(declare-fun m!6909396 () Bool)

(assert (=> b!6039209 m!6909396))

(assert (=> b!6039210 m!6907872))

(assert (=> b!6039210 m!6907872))

(declare-fun m!6909398 () Bool)

(assert (=> b!6039210 m!6909398))

(assert (=> b!6039210 m!6907876))

(assert (=> b!6039210 m!6909398))

(assert (=> b!6039210 m!6907876))

(declare-fun m!6909400 () Bool)

(assert (=> b!6039210 m!6909400))

(assert (=> d!1893298 d!1893814))

(assert (=> d!1893298 d!1893296))

(declare-fun e!3688897 () Bool)

(declare-fun d!1893816 () Bool)

(assert (=> d!1893816 (= (matchZipper!2056 (set.union lt!2322715 lt!2322706) (t!377790 s!2326)) e!3688897)))

(declare-fun res!2514457 () Bool)

(assert (=> d!1893816 (=> res!2514457 e!3688897)))

(assert (=> d!1893816 (= res!2514457 (matchZipper!2056 lt!2322715 (t!377790 s!2326)))))

(assert (=> d!1893816 true))

(declare-fun _$48!1560 () Unit!157311)

(assert (=> d!1893816 (= (choose!45125 lt!2322715 lt!2322706 (t!377790 s!2326)) _$48!1560)))

(declare-fun b!6039213 () Bool)

(assert (=> b!6039213 (= e!3688897 (matchZipper!2056 lt!2322706 (t!377790 s!2326)))))

(assert (= (and d!1893816 (not res!2514457)) b!6039213))

(assert (=> d!1893816 m!6908022))

(assert (=> d!1893816 m!6907612))

(assert (=> b!6039213 m!6907618))

(assert (=> d!1893298 d!1893816))

(declare-fun d!1893818 () Bool)

(assert (=> d!1893818 (= (isEmptyLang!1455 lt!2322927) (is-EmptyLang!16020 lt!2322927))))

(assert (=> b!6037745 d!1893818))

(assert (=> b!6037874 d!1893538))

(declare-fun d!1893820 () Bool)

(assert (=> d!1893820 (= (nullable!6015 (regOne!32552 (regOne!32552 r!7292))) (nullableFct!1985 (regOne!32552 (regOne!32552 r!7292))))))

(declare-fun bs!1489908 () Bool)

(assert (= bs!1489908 d!1893820))

(declare-fun m!6909402 () Bool)

(assert (=> bs!1489908 m!6909402))

(assert (=> b!6037691 d!1893820))

(declare-fun b!6039214 () Bool)

(declare-fun e!3688899 () Bool)

(assert (=> b!6039214 (= e!3688899 (matchR!8203 (derivativeStep!4749 (regOne!32552 r!7292) (head!12577 (_1!36302 (get!22141 lt!2322869)))) (tail!11662 (_1!36302 (get!22141 lt!2322869)))))))

(declare-fun b!6039215 () Bool)

(declare-fun e!3688901 () Bool)

(declare-fun lt!2323120 () Bool)

(assert (=> b!6039215 (= e!3688901 (not lt!2323120))))

(declare-fun b!6039216 () Bool)

(declare-fun e!3688900 () Bool)

(assert (=> b!6039216 (= e!3688900 (not (= (head!12577 (_1!36302 (get!22141 lt!2322869))) (c!1082125 (regOne!32552 r!7292)))))))

(declare-fun b!6039217 () Bool)

(declare-fun res!2514464 () Bool)

(declare-fun e!3688904 () Bool)

(assert (=> b!6039217 (=> (not res!2514464) (not e!3688904))))

(assert (=> b!6039217 (= res!2514464 (isEmpty!36143 (tail!11662 (_1!36302 (get!22141 lt!2322869)))))))

(declare-fun b!6039218 () Bool)

(declare-fun e!3688902 () Bool)

(declare-fun call!493914 () Bool)

(assert (=> b!6039218 (= e!3688902 (= lt!2323120 call!493914))))

(declare-fun b!6039219 () Bool)

(assert (=> b!6039219 (= e!3688904 (= (head!12577 (_1!36302 (get!22141 lt!2322869))) (c!1082125 (regOne!32552 r!7292))))))

(declare-fun d!1893822 () Bool)

(assert (=> d!1893822 e!3688902))

(declare-fun c!1082688 () Bool)

(assert (=> d!1893822 (= c!1082688 (is-EmptyExpr!16020 (regOne!32552 r!7292)))))

(assert (=> d!1893822 (= lt!2323120 e!3688899)))

(declare-fun c!1082689 () Bool)

(assert (=> d!1893822 (= c!1082689 (isEmpty!36143 (_1!36302 (get!22141 lt!2322869))))))

(assert (=> d!1893822 (validRegex!7756 (regOne!32552 r!7292))))

(assert (=> d!1893822 (= (matchR!8203 (regOne!32552 r!7292) (_1!36302 (get!22141 lt!2322869))) lt!2323120)))

(declare-fun b!6039220 () Bool)

(declare-fun res!2514461 () Bool)

(assert (=> b!6039220 (=> res!2514461 e!3688900)))

(assert (=> b!6039220 (= res!2514461 (not (isEmpty!36143 (tail!11662 (_1!36302 (get!22141 lt!2322869))))))))

(declare-fun b!6039221 () Bool)

(declare-fun res!2514465 () Bool)

(declare-fun e!3688903 () Bool)

(assert (=> b!6039221 (=> res!2514465 e!3688903)))

(assert (=> b!6039221 (= res!2514465 (not (is-ElementMatch!16020 (regOne!32552 r!7292))))))

(assert (=> b!6039221 (= e!3688901 e!3688903)))

(declare-fun b!6039222 () Bool)

(declare-fun res!2514462 () Bool)

(assert (=> b!6039222 (=> res!2514462 e!3688903)))

(assert (=> b!6039222 (= res!2514462 e!3688904)))

(declare-fun res!2514463 () Bool)

(assert (=> b!6039222 (=> (not res!2514463) (not e!3688904))))

(assert (=> b!6039222 (= res!2514463 lt!2323120)))

(declare-fun b!6039223 () Bool)

(declare-fun res!2514459 () Bool)

(assert (=> b!6039223 (=> (not res!2514459) (not e!3688904))))

(assert (=> b!6039223 (= res!2514459 (not call!493914))))

(declare-fun b!6039224 () Bool)

(declare-fun e!3688898 () Bool)

(assert (=> b!6039224 (= e!3688898 e!3688900)))

(declare-fun res!2514460 () Bool)

(assert (=> b!6039224 (=> res!2514460 e!3688900)))

(assert (=> b!6039224 (= res!2514460 call!493914)))

(declare-fun b!6039225 () Bool)

(assert (=> b!6039225 (= e!3688899 (nullable!6015 (regOne!32552 r!7292)))))

(declare-fun bm!493909 () Bool)

(assert (=> bm!493909 (= call!493914 (isEmpty!36143 (_1!36302 (get!22141 lt!2322869))))))

(declare-fun b!6039226 () Bool)

(assert (=> b!6039226 (= e!3688902 e!3688901)))

(declare-fun c!1082690 () Bool)

(assert (=> b!6039226 (= c!1082690 (is-EmptyLang!16020 (regOne!32552 r!7292)))))

(declare-fun b!6039227 () Bool)

(assert (=> b!6039227 (= e!3688903 e!3688898)))

(declare-fun res!2514458 () Bool)

(assert (=> b!6039227 (=> (not res!2514458) (not e!3688898))))

(assert (=> b!6039227 (= res!2514458 (not lt!2323120))))

(assert (= (and d!1893822 c!1082689) b!6039225))

(assert (= (and d!1893822 (not c!1082689)) b!6039214))

(assert (= (and d!1893822 c!1082688) b!6039218))

(assert (= (and d!1893822 (not c!1082688)) b!6039226))

(assert (= (and b!6039226 c!1082690) b!6039215))

(assert (= (and b!6039226 (not c!1082690)) b!6039221))

(assert (= (and b!6039221 (not res!2514465)) b!6039222))

(assert (= (and b!6039222 res!2514463) b!6039223))

(assert (= (and b!6039223 res!2514459) b!6039217))

(assert (= (and b!6039217 res!2514464) b!6039219))

(assert (= (and b!6039222 (not res!2514462)) b!6039227))

(assert (= (and b!6039227 res!2514458) b!6039224))

(assert (= (and b!6039224 (not res!2514460)) b!6039220))

(assert (= (and b!6039220 (not res!2514461)) b!6039216))

(assert (= (or b!6039218 b!6039223 b!6039224) bm!493909))

(declare-fun m!6909404 () Bool)

(assert (=> bm!493909 m!6909404))

(declare-fun m!6909406 () Bool)

(assert (=> b!6039220 m!6909406))

(assert (=> b!6039220 m!6909406))

(declare-fun m!6909408 () Bool)

(assert (=> b!6039220 m!6909408))

(declare-fun m!6909410 () Bool)

(assert (=> b!6039214 m!6909410))

(assert (=> b!6039214 m!6909410))

(declare-fun m!6909412 () Bool)

(assert (=> b!6039214 m!6909412))

(assert (=> b!6039214 m!6909406))

(assert (=> b!6039214 m!6909412))

(assert (=> b!6039214 m!6909406))

(declare-fun m!6909414 () Bool)

(assert (=> b!6039214 m!6909414))

(assert (=> b!6039225 m!6907676))

(assert (=> b!6039217 m!6909406))

(assert (=> b!6039217 m!6909406))

(assert (=> b!6039217 m!6909408))

(assert (=> b!6039216 m!6909410))

(assert (=> d!1893822 m!6909404))

(assert (=> d!1893822 m!6907898))

(assert (=> b!6039219 m!6909410))

(assert (=> b!6037554 d!1893822))

(assert (=> b!6037554 d!1893534))

(declare-fun bm!493910 () Bool)

(declare-fun c!1082691 () Bool)

(declare-fun c!1082692 () Bool)

(declare-fun call!493915 () Bool)

(assert (=> bm!493910 (= call!493915 (validRegex!7756 (ite c!1082692 (reg!16349 lt!2322927) (ite c!1082691 (regTwo!32553 lt!2322927) (regTwo!32552 lt!2322927)))))))

(declare-fun b!6039228 () Bool)

(declare-fun e!3688908 () Bool)

(declare-fun call!493917 () Bool)

(assert (=> b!6039228 (= e!3688908 call!493917)))

(declare-fun bm!493911 () Bool)

(declare-fun call!493916 () Bool)

(assert (=> bm!493911 (= call!493916 (validRegex!7756 (ite c!1082691 (regOne!32553 lt!2322927) (regOne!32552 lt!2322927))))))

(declare-fun b!6039229 () Bool)

(declare-fun e!3688909 () Bool)

(declare-fun e!3688907 () Bool)

(assert (=> b!6039229 (= e!3688909 e!3688907)))

(declare-fun res!2514469 () Bool)

(assert (=> b!6039229 (= res!2514469 (not (nullable!6015 (reg!16349 lt!2322927))))))

(assert (=> b!6039229 (=> (not res!2514469) (not e!3688907))))

(declare-fun b!6039230 () Bool)

(declare-fun e!3688911 () Bool)

(assert (=> b!6039230 (= e!3688909 e!3688911)))

(assert (=> b!6039230 (= c!1082691 (is-Union!16020 lt!2322927))))

(declare-fun d!1893824 () Bool)

(declare-fun res!2514470 () Bool)

(declare-fun e!3688905 () Bool)

(assert (=> d!1893824 (=> res!2514470 e!3688905)))

(assert (=> d!1893824 (= res!2514470 (is-ElementMatch!16020 lt!2322927))))

(assert (=> d!1893824 (= (validRegex!7756 lt!2322927) e!3688905)))

(declare-fun bm!493912 () Bool)

(assert (=> bm!493912 (= call!493917 call!493915)))

(declare-fun b!6039231 () Bool)

(assert (=> b!6039231 (= e!3688905 e!3688909)))

(assert (=> b!6039231 (= c!1082692 (is-Star!16020 lt!2322927))))

(declare-fun b!6039232 () Bool)

(assert (=> b!6039232 (= e!3688907 call!493915)))

(declare-fun b!6039233 () Bool)

(declare-fun e!3688910 () Bool)

(assert (=> b!6039233 (= e!3688910 e!3688908)))

(declare-fun res!2514468 () Bool)

(assert (=> b!6039233 (=> (not res!2514468) (not e!3688908))))

(assert (=> b!6039233 (= res!2514468 call!493916)))

(declare-fun b!6039234 () Bool)

(declare-fun res!2514466 () Bool)

(declare-fun e!3688906 () Bool)

(assert (=> b!6039234 (=> (not res!2514466) (not e!3688906))))

(assert (=> b!6039234 (= res!2514466 call!493916)))

(assert (=> b!6039234 (= e!3688911 e!3688906)))

(declare-fun b!6039235 () Bool)

(declare-fun res!2514467 () Bool)

(assert (=> b!6039235 (=> res!2514467 e!3688910)))

(assert (=> b!6039235 (= res!2514467 (not (is-Concat!24865 lt!2322927)))))

(assert (=> b!6039235 (= e!3688911 e!3688910)))

(declare-fun b!6039236 () Bool)

(assert (=> b!6039236 (= e!3688906 call!493917)))

(assert (= (and d!1893824 (not res!2514470)) b!6039231))

(assert (= (and b!6039231 c!1082692) b!6039229))

(assert (= (and b!6039231 (not c!1082692)) b!6039230))

(assert (= (and b!6039229 res!2514469) b!6039232))

(assert (= (and b!6039230 c!1082691) b!6039234))

(assert (= (and b!6039230 (not c!1082691)) b!6039235))

(assert (= (and b!6039234 res!2514466) b!6039236))

(assert (= (and b!6039235 (not res!2514467)) b!6039233))

(assert (= (and b!6039233 res!2514468) b!6039228))

(assert (= (or b!6039236 b!6039228) bm!493912))

(assert (= (or b!6039234 b!6039233) bm!493911))

(assert (= (or b!6039232 bm!493912) bm!493910))

(declare-fun m!6909416 () Bool)

(assert (=> bm!493910 m!6909416))

(declare-fun m!6909418 () Bool)

(assert (=> bm!493911 m!6909418))

(declare-fun m!6909420 () Bool)

(assert (=> b!6039229 m!6909420))

(assert (=> d!1893330 d!1893824))

(declare-fun d!1893826 () Bool)

(declare-fun res!2514471 () Bool)

(declare-fun e!3688912 () Bool)

(assert (=> d!1893826 (=> res!2514471 e!3688912)))

(assert (=> d!1893826 (= res!2514471 (is-Nil!64235 (unfocusZipperList!1441 zl!343)))))

(assert (=> d!1893826 (= (forall!15128 (unfocusZipperList!1441 zl!343) lambda!329304) e!3688912)))

(declare-fun b!6039237 () Bool)

(declare-fun e!3688913 () Bool)

(assert (=> b!6039237 (= e!3688912 e!3688913)))

(declare-fun res!2514472 () Bool)

(assert (=> b!6039237 (=> (not res!2514472) (not e!3688913))))

(assert (=> b!6039237 (= res!2514472 (dynLambda!25216 lambda!329304 (h!70683 (unfocusZipperList!1441 zl!343))))))

(declare-fun b!6039238 () Bool)

(assert (=> b!6039238 (= e!3688913 (forall!15128 (t!377788 (unfocusZipperList!1441 zl!343)) lambda!329304))))

(assert (= (and d!1893826 (not res!2514471)) b!6039237))

(assert (= (and b!6039237 res!2514472) b!6039238))

(declare-fun b_lambda!229111 () Bool)

(assert (=> (not b_lambda!229111) (not b!6039237)))

(declare-fun m!6909422 () Bool)

(assert (=> b!6039237 m!6909422))

(declare-fun m!6909424 () Bool)

(assert (=> b!6039238 m!6909424))

(assert (=> d!1893330 d!1893826))

(declare-fun d!1893828 () Bool)

(assert (=> d!1893828 (= (nullable!6015 (reg!16349 (regTwo!32552 r!7292))) (nullableFct!1985 (reg!16349 (regTwo!32552 r!7292))))))

(declare-fun bs!1489909 () Bool)

(assert (= bs!1489909 d!1893828))

(declare-fun m!6909426 () Bool)

(assert (=> bs!1489909 m!6909426))

(assert (=> b!6037788 d!1893828))

(declare-fun d!1893830 () Bool)

(declare-fun res!2514473 () Bool)

(declare-fun e!3688914 () Bool)

(assert (=> d!1893830 (=> res!2514473 e!3688914)))

(assert (=> d!1893830 (= res!2514473 (is-Nil!64236 lt!2322879))))

(assert (=> d!1893830 (= (noDuplicate!1875 lt!2322879) e!3688914)))

(declare-fun b!6039239 () Bool)

(declare-fun e!3688915 () Bool)

(assert (=> b!6039239 (= e!3688914 e!3688915)))

(declare-fun res!2514474 () Bool)

(assert (=> b!6039239 (=> (not res!2514474) (not e!3688915))))

(assert (=> b!6039239 (= res!2514474 (not (contains!19993 (t!377789 lt!2322879) (h!70684 lt!2322879))))))

(declare-fun b!6039240 () Bool)

(assert (=> b!6039240 (= e!3688915 (noDuplicate!1875 (t!377789 lt!2322879)))))

(assert (= (and d!1893830 (not res!2514473)) b!6039239))

(assert (= (and b!6039239 res!2514474) b!6039240))

(declare-fun m!6909428 () Bool)

(assert (=> b!6039239 m!6909428))

(declare-fun m!6909430 () Bool)

(assert (=> b!6039240 m!6909430))

(assert (=> d!1893274 d!1893830))

(declare-fun d!1893832 () Bool)

(declare-fun e!3688916 () Bool)

(assert (=> d!1893832 e!3688916))

(declare-fun res!2514476 () Bool)

(assert (=> d!1893832 (=> (not res!2514476) (not e!3688916))))

(declare-fun res!2514475 () List!64360)

(assert (=> d!1893832 (= res!2514476 (noDuplicate!1875 res!2514475))))

(declare-fun e!3688918 () Bool)

(assert (=> d!1893832 e!3688918))

(assert (=> d!1893832 (= (choose!45119 z!1189) res!2514475)))

(declare-fun b!6039242 () Bool)

(declare-fun e!3688917 () Bool)

(declare-fun tp!1679050 () Bool)

(assert (=> b!6039242 (= e!3688917 tp!1679050)))

(declare-fun b!6039241 () Bool)

(declare-fun tp!1679049 () Bool)

(assert (=> b!6039241 (= e!3688918 (and (inv!83298 (h!70684 res!2514475)) e!3688917 tp!1679049))))

(declare-fun b!6039243 () Bool)

(assert (=> b!6039243 (= e!3688916 (= (content!11884 res!2514475) z!1189))))

(assert (= b!6039241 b!6039242))

(assert (= (and d!1893832 (is-Cons!64236 res!2514475)) b!6039241))

(assert (= (and d!1893832 res!2514476) b!6039243))

(declare-fun m!6909432 () Bool)

(assert (=> d!1893832 m!6909432))

(declare-fun m!6909434 () Bool)

(assert (=> b!6039241 m!6909434))

(declare-fun m!6909436 () Bool)

(assert (=> b!6039243 m!6909436))

(assert (=> d!1893274 d!1893832))

(declare-fun bs!1489910 () Bool)

(declare-fun b!6039245 () Bool)

(assert (= bs!1489910 (and b!6039245 d!1893782)))

(declare-fun lambda!329440 () Int)

(assert (=> bs!1489910 (not (= lambda!329440 lambda!329436))))

(declare-fun bs!1489911 () Bool)

(assert (= bs!1489911 (and b!6039245 b!6037326)))

(assert (=> bs!1489911 (not (= lambda!329440 lambda!329243))))

(declare-fun bs!1489912 () Bool)

(assert (= bs!1489912 (and b!6039245 b!6037859)))

(assert (=> bs!1489912 (= (and (= (reg!16349 (regTwo!32553 r!7292)) (reg!16349 r!7292)) (= (regTwo!32553 r!7292) r!7292)) (= lambda!329440 lambda!329317))))

(declare-fun bs!1489913 () Bool)

(assert (= bs!1489913 (and b!6039245 d!1893262)))

(assert (=> bs!1489913 (not (= lambda!329440 lambda!329272))))

(declare-fun bs!1489914 () Bool)

(assert (= bs!1489914 (and b!6039245 b!6037864)))

(assert (=> bs!1489914 (not (= lambda!329440 lambda!329318))))

(assert (=> bs!1489910 (not (= lambda!329440 lambda!329435))))

(declare-fun bs!1489915 () Bool)

(assert (= bs!1489915 (and b!6039245 b!6038647)))

(assert (=> bs!1489915 (not (= lambda!329440 lambda!329386))))

(declare-fun bs!1489916 () Bool)

(assert (= bs!1489916 (and b!6039245 b!6038642)))

(assert (=> bs!1489916 (= (and (= (reg!16349 (regTwo!32553 r!7292)) (reg!16349 (regOne!32553 r!7292))) (= (regTwo!32553 r!7292) (regOne!32553 r!7292))) (= lambda!329440 lambda!329385))))

(declare-fun bs!1489917 () Bool)

(assert (= bs!1489917 (and b!6039245 d!1893258)))

(assert (=> bs!1489917 (not (= lambda!329440 lambda!329268))))

(assert (=> bs!1489911 (not (= lambda!329440 lambda!329244))))

(assert (=> bs!1489917 (not (= lambda!329440 lambda!329269))))

(declare-fun bs!1489918 () Bool)

(assert (= bs!1489918 (and b!6039245 d!1893764)))

(assert (=> bs!1489918 (not (= lambda!329440 lambda!329427))))

(assert (=> b!6039245 true))

(assert (=> b!6039245 true))

(declare-fun bs!1489919 () Bool)

(declare-fun b!6039250 () Bool)

(assert (= bs!1489919 (and b!6039250 d!1893782)))

(declare-fun lambda!329441 () Int)

(assert (=> bs!1489919 (= (and (= (regOne!32552 (regTwo!32553 r!7292)) (regOne!32552 r!7292)) (= (regTwo!32552 (regTwo!32553 r!7292)) (regTwo!32552 r!7292))) (= lambda!329441 lambda!329436))))

(declare-fun bs!1489920 () Bool)

(assert (= bs!1489920 (and b!6039250 b!6037326)))

(assert (=> bs!1489920 (not (= lambda!329441 lambda!329243))))

(declare-fun bs!1489921 () Bool)

(assert (= bs!1489921 (and b!6039250 b!6037859)))

(assert (=> bs!1489921 (not (= lambda!329441 lambda!329317))))

(declare-fun bs!1489922 () Bool)

(assert (= bs!1489922 (and b!6039250 d!1893262)))

(assert (=> bs!1489922 (not (= lambda!329441 lambda!329272))))

(declare-fun bs!1489923 () Bool)

(assert (= bs!1489923 (and b!6039250 b!6037864)))

(assert (=> bs!1489923 (= (and (= (regOne!32552 (regTwo!32553 r!7292)) (regOne!32552 r!7292)) (= (regTwo!32552 (regTwo!32553 r!7292)) (regTwo!32552 r!7292))) (= lambda!329441 lambda!329318))))

(declare-fun bs!1489924 () Bool)

(assert (= bs!1489924 (and b!6039250 b!6039245)))

(assert (=> bs!1489924 (not (= lambda!329441 lambda!329440))))

(assert (=> bs!1489919 (not (= lambda!329441 lambda!329435))))

(declare-fun bs!1489925 () Bool)

(assert (= bs!1489925 (and b!6039250 b!6038647)))

(assert (=> bs!1489925 (= (and (= (regOne!32552 (regTwo!32553 r!7292)) (regOne!32552 (regOne!32553 r!7292))) (= (regTwo!32552 (regTwo!32553 r!7292)) (regTwo!32552 (regOne!32553 r!7292)))) (= lambda!329441 lambda!329386))))

(declare-fun bs!1489926 () Bool)

(assert (= bs!1489926 (and b!6039250 b!6038642)))

(assert (=> bs!1489926 (not (= lambda!329441 lambda!329385))))

(declare-fun bs!1489927 () Bool)

(assert (= bs!1489927 (and b!6039250 d!1893258)))

(assert (=> bs!1489927 (not (= lambda!329441 lambda!329268))))

(assert (=> bs!1489920 (= (and (= (regOne!32552 (regTwo!32553 r!7292)) (regOne!32552 r!7292)) (= (regTwo!32552 (regTwo!32553 r!7292)) (regTwo!32552 r!7292))) (= lambda!329441 lambda!329244))))

(assert (=> bs!1489927 (= (and (= (regOne!32552 (regTwo!32553 r!7292)) (regOne!32552 r!7292)) (= (regTwo!32552 (regTwo!32553 r!7292)) (regTwo!32552 r!7292))) (= lambda!329441 lambda!329269))))

(declare-fun bs!1489928 () Bool)

(assert (= bs!1489928 (and b!6039250 d!1893764)))

(assert (=> bs!1489928 (not (= lambda!329441 lambda!329427))))

(assert (=> b!6039250 true))

(assert (=> b!6039250 true))

(declare-fun b!6039244 () Bool)

(declare-fun e!3688919 () Bool)

(declare-fun e!3688925 () Bool)

(assert (=> b!6039244 (= e!3688919 e!3688925)))

(declare-fun c!1082693 () Bool)

(assert (=> b!6039244 (= c!1082693 (is-Star!16020 (regTwo!32553 r!7292)))))

(declare-fun e!3688923 () Bool)

(declare-fun call!493918 () Bool)

(assert (=> b!6039245 (= e!3688923 call!493918)))

(declare-fun bm!493913 () Bool)

(assert (=> bm!493913 (= call!493918 (Exists!3090 (ite c!1082693 lambda!329440 lambda!329441)))))

(declare-fun b!6039246 () Bool)

(declare-fun e!3688920 () Bool)

(assert (=> b!6039246 (= e!3688920 (= s!2326 (Cons!64237 (c!1082125 (regTwo!32553 r!7292)) Nil!64237)))))

(declare-fun b!6039247 () Bool)

(declare-fun e!3688924 () Bool)

(assert (=> b!6039247 (= e!3688924 (matchRSpec!3121 (regTwo!32553 (regTwo!32553 r!7292)) s!2326))))

(declare-fun d!1893834 () Bool)

(declare-fun c!1082695 () Bool)

(assert (=> d!1893834 (= c!1082695 (is-EmptyExpr!16020 (regTwo!32553 r!7292)))))

(declare-fun e!3688922 () Bool)

(assert (=> d!1893834 (= (matchRSpec!3121 (regTwo!32553 r!7292) s!2326) e!3688922)))

(declare-fun b!6039248 () Bool)

(declare-fun c!1082694 () Bool)

(assert (=> b!6039248 (= c!1082694 (is-Union!16020 (regTwo!32553 r!7292)))))

(assert (=> b!6039248 (= e!3688920 e!3688919)))

(declare-fun b!6039249 () Bool)

(declare-fun e!3688921 () Bool)

(assert (=> b!6039249 (= e!3688922 e!3688921)))

(declare-fun res!2514478 () Bool)

(assert (=> b!6039249 (= res!2514478 (not (is-EmptyLang!16020 (regTwo!32553 r!7292))))))

(assert (=> b!6039249 (=> (not res!2514478) (not e!3688921))))

(assert (=> b!6039250 (= e!3688925 call!493918)))

(declare-fun bm!493914 () Bool)

(declare-fun call!493919 () Bool)

(assert (=> bm!493914 (= call!493919 (isEmpty!36143 s!2326))))

(declare-fun b!6039251 () Bool)

(declare-fun res!2514477 () Bool)

(assert (=> b!6039251 (=> res!2514477 e!3688923)))

(assert (=> b!6039251 (= res!2514477 call!493919)))

(assert (=> b!6039251 (= e!3688925 e!3688923)))

(declare-fun b!6039252 () Bool)

(assert (=> b!6039252 (= e!3688919 e!3688924)))

(declare-fun res!2514479 () Bool)

(assert (=> b!6039252 (= res!2514479 (matchRSpec!3121 (regOne!32553 (regTwo!32553 r!7292)) s!2326))))

(assert (=> b!6039252 (=> res!2514479 e!3688924)))

(declare-fun b!6039253 () Bool)

(assert (=> b!6039253 (= e!3688922 call!493919)))

(declare-fun b!6039254 () Bool)

(declare-fun c!1082696 () Bool)

(assert (=> b!6039254 (= c!1082696 (is-ElementMatch!16020 (regTwo!32553 r!7292)))))

(assert (=> b!6039254 (= e!3688921 e!3688920)))

(assert (= (and d!1893834 c!1082695) b!6039253))

(assert (= (and d!1893834 (not c!1082695)) b!6039249))

(assert (= (and b!6039249 res!2514478) b!6039254))

(assert (= (and b!6039254 c!1082696) b!6039246))

(assert (= (and b!6039254 (not c!1082696)) b!6039248))

(assert (= (and b!6039248 c!1082694) b!6039252))

(assert (= (and b!6039248 (not c!1082694)) b!6039244))

(assert (= (and b!6039252 (not res!2514479)) b!6039247))

(assert (= (and b!6039244 c!1082693) b!6039251))

(assert (= (and b!6039244 (not c!1082693)) b!6039250))

(assert (= (and b!6039251 (not res!2514477)) b!6039245))

(assert (= (or b!6039245 b!6039250) bm!493913))

(assert (= (or b!6039253 b!6039251) bm!493914))

(declare-fun m!6909438 () Bool)

(assert (=> bm!493913 m!6909438))

(declare-fun m!6909440 () Bool)

(assert (=> b!6039247 m!6909440))

(assert (=> bm!493914 m!6907834))

(declare-fun m!6909442 () Bool)

(assert (=> b!6039252 m!6909442))

(assert (=> b!6037861 d!1893834))

(declare-fun d!1893836 () Bool)

(assert (=> d!1893836 true))

(assert (=> d!1893836 true))

(declare-fun res!2514480 () Bool)

(assert (=> d!1893836 (= (choose!45122 lambda!329244) res!2514480)))

(assert (=> d!1893266 d!1893836))

(declare-fun d!1893838 () Bool)

(declare-fun c!1082697 () Bool)

(assert (=> d!1893838 (= c!1082697 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun e!3688926 () Bool)

(assert (=> d!1893838 (= (matchZipper!2056 (derivationStepZipper!2001 lt!2322718 (head!12577 s!2326)) (tail!11662 s!2326)) e!3688926)))

(declare-fun b!6039255 () Bool)

(assert (=> b!6039255 (= e!3688926 (nullableZipper!1825 (derivationStepZipper!2001 lt!2322718 (head!12577 s!2326))))))

(declare-fun b!6039256 () Bool)

(assert (=> b!6039256 (= e!3688926 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322718 (head!12577 s!2326)) (head!12577 (tail!11662 s!2326))) (tail!11662 (tail!11662 s!2326))))))

(assert (= (and d!1893838 c!1082697) b!6039255))

(assert (= (and d!1893838 (not c!1082697)) b!6039256))

(assert (=> d!1893838 m!6907842))

(assert (=> d!1893838 m!6907846))

(assert (=> b!6039255 m!6907884))

(declare-fun m!6909444 () Bool)

(assert (=> b!6039255 m!6909444))

(assert (=> b!6039256 m!6907842))

(assert (=> b!6039256 m!6909188))

(assert (=> b!6039256 m!6907884))

(assert (=> b!6039256 m!6909188))

(declare-fun m!6909446 () Bool)

(assert (=> b!6039256 m!6909446))

(assert (=> b!6039256 m!6907842))

(assert (=> b!6039256 m!6909192))

(assert (=> b!6039256 m!6909446))

(assert (=> b!6039256 m!6909192))

(declare-fun m!6909448 () Bool)

(assert (=> b!6039256 m!6909448))

(assert (=> b!6037535 d!1893838))

(declare-fun bs!1489929 () Bool)

(declare-fun d!1893840 () Bool)

(assert (= bs!1489929 (and d!1893840 d!1893552)))

(declare-fun lambda!329442 () Int)

(assert (=> bs!1489929 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329442 lambda!329388))))

(declare-fun bs!1489930 () Bool)

(assert (= bs!1489930 (and d!1893840 d!1893572)))

(assert (=> bs!1489930 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329442 lambda!329392))))

(declare-fun bs!1489931 () Bool)

(assert (= bs!1489931 (and d!1893840 d!1893804)))

(assert (=> bs!1489931 (= lambda!329442 lambda!329438)))

(declare-fun bs!1489932 () Bool)

(assert (= bs!1489932 (and d!1893840 d!1893650)))

(assert (=> bs!1489932 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329442 lambda!329403))))

(declare-fun bs!1489933 () Bool)

(assert (= bs!1489933 (and d!1893840 d!1893786)))

(assert (=> bs!1489933 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329442 lambda!329437))))

(declare-fun bs!1489934 () Bool)

(assert (= bs!1489934 (and d!1893840 d!1893288)))

(assert (=> bs!1489934 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329442 lambda!329291))))

(declare-fun bs!1489935 () Bool)

(assert (= bs!1489935 (and d!1893840 b!6037340)))

(assert (=> bs!1489935 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329442 lambda!329245))))

(declare-fun bs!1489936 () Bool)

(assert (= bs!1489936 (and d!1893840 d!1893728)))

(assert (=> bs!1489936 (= lambda!329442 lambda!329419)))

(declare-fun bs!1489937 () Bool)

(assert (= bs!1489937 (and d!1893840 d!1893736)))

(assert (=> bs!1489937 (= (= (head!12577 s!2326) (head!12577 (t!377790 s!2326))) (= lambda!329442 lambda!329420))))

(declare-fun bs!1489938 () Bool)

(assert (= bs!1489938 (and d!1893840 d!1893350)))

(assert (=> bs!1489938 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329442 lambda!329312))))

(declare-fun bs!1489939 () Bool)

(assert (= bs!1489939 (and d!1893840 d!1893252)))

(assert (=> bs!1489939 (= (= (head!12577 s!2326) (h!70685 s!2326)) (= lambda!329442 lambda!329263))))

(assert (=> d!1893840 true))

(assert (=> d!1893840 (= (derivationStepZipper!2001 lt!2322718 (head!12577 s!2326)) (flatMap!1533 lt!2322718 lambda!329442))))

(declare-fun bs!1489940 () Bool)

(assert (= bs!1489940 d!1893840))

(declare-fun m!6909450 () Bool)

(assert (=> bs!1489940 m!6909450))

(assert (=> b!6037535 d!1893840))

(assert (=> b!6037535 d!1893538))

(assert (=> b!6037535 d!1893514))

(declare-fun d!1893842 () Bool)

(assert (=> d!1893842 (= (isConcat!968 lt!2322933) (is-Concat!24865 lt!2322933))))

(assert (=> b!6037780 d!1893842))

(declare-fun d!1893844 () Bool)

(assert (=> d!1893844 true))

(declare-fun setRes!40852 () Bool)

(assert (=> d!1893844 setRes!40852))

(declare-fun condSetEmpty!40852 () Bool)

(declare-fun res!2514481 () (Set Context!10808))

(assert (=> d!1893844 (= condSetEmpty!40852 (= res!2514481 (as set.empty (Set Context!10808))))))

(assert (=> d!1893844 (= (choose!45123 lt!2322718 lambda!329245) res!2514481)))

(declare-fun setIsEmpty!40852 () Bool)

(assert (=> setIsEmpty!40852 setRes!40852))

(declare-fun setElem!40852 () Context!10808)

(declare-fun tp!1679051 () Bool)

(declare-fun e!3688927 () Bool)

(declare-fun setNonEmpty!40852 () Bool)

(assert (=> setNonEmpty!40852 (= setRes!40852 (and tp!1679051 (inv!83298 setElem!40852) e!3688927))))

(declare-fun setRest!40852 () (Set Context!10808))

(assert (=> setNonEmpty!40852 (= res!2514481 (set.union (set.insert setElem!40852 (as set.empty (Set Context!10808))) setRest!40852))))

(declare-fun b!6039257 () Bool)

(declare-fun tp!1679052 () Bool)

(assert (=> b!6039257 (= e!3688927 tp!1679052)))

(assert (= (and d!1893844 condSetEmpty!40852) setIsEmpty!40852))

(assert (= (and d!1893844 (not condSetEmpty!40852)) setNonEmpty!40852))

(assert (= setNonEmpty!40852 b!6039257))

(declare-fun m!6909452 () Bool)

(assert (=> setNonEmpty!40852 m!6909452))

(assert (=> d!1893322 d!1893844))

(declare-fun bm!493915 () Bool)

(declare-fun c!1082698 () Bool)

(declare-fun call!493920 () Bool)

(declare-fun c!1082699 () Bool)

(assert (=> bm!493915 (= call!493920 (validRegex!7756 (ite c!1082699 (reg!16349 lt!2322857) (ite c!1082698 (regTwo!32553 lt!2322857) (regTwo!32552 lt!2322857)))))))

(declare-fun b!6039258 () Bool)

(declare-fun e!3688931 () Bool)

(declare-fun call!493922 () Bool)

(assert (=> b!6039258 (= e!3688931 call!493922)))

(declare-fun bm!493916 () Bool)

(declare-fun call!493921 () Bool)

(assert (=> bm!493916 (= call!493921 (validRegex!7756 (ite c!1082698 (regOne!32553 lt!2322857) (regOne!32552 lt!2322857))))))

(declare-fun b!6039259 () Bool)

(declare-fun e!3688932 () Bool)

(declare-fun e!3688930 () Bool)

(assert (=> b!6039259 (= e!3688932 e!3688930)))

(declare-fun res!2514485 () Bool)

(assert (=> b!6039259 (= res!2514485 (not (nullable!6015 (reg!16349 lt!2322857))))))

(assert (=> b!6039259 (=> (not res!2514485) (not e!3688930))))

(declare-fun b!6039260 () Bool)

(declare-fun e!3688934 () Bool)

(assert (=> b!6039260 (= e!3688932 e!3688934)))

(assert (=> b!6039260 (= c!1082698 (is-Union!16020 lt!2322857))))

(declare-fun d!1893846 () Bool)

(declare-fun res!2514486 () Bool)

(declare-fun e!3688928 () Bool)

(assert (=> d!1893846 (=> res!2514486 e!3688928)))

(assert (=> d!1893846 (= res!2514486 (is-ElementMatch!16020 lt!2322857))))

(assert (=> d!1893846 (= (validRegex!7756 lt!2322857) e!3688928)))

(declare-fun bm!493917 () Bool)

(assert (=> bm!493917 (= call!493922 call!493920)))

(declare-fun b!6039261 () Bool)

(assert (=> b!6039261 (= e!3688928 e!3688932)))

(assert (=> b!6039261 (= c!1082699 (is-Star!16020 lt!2322857))))

(declare-fun b!6039262 () Bool)

(assert (=> b!6039262 (= e!3688930 call!493920)))

(declare-fun b!6039263 () Bool)

(declare-fun e!3688933 () Bool)

(assert (=> b!6039263 (= e!3688933 e!3688931)))

(declare-fun res!2514484 () Bool)

(assert (=> b!6039263 (=> (not res!2514484) (not e!3688931))))

(assert (=> b!6039263 (= res!2514484 call!493921)))

(declare-fun b!6039264 () Bool)

(declare-fun res!2514482 () Bool)

(declare-fun e!3688929 () Bool)

(assert (=> b!6039264 (=> (not res!2514482) (not e!3688929))))

(assert (=> b!6039264 (= res!2514482 call!493921)))

(assert (=> b!6039264 (= e!3688934 e!3688929)))

(declare-fun b!6039265 () Bool)

(declare-fun res!2514483 () Bool)

(assert (=> b!6039265 (=> res!2514483 e!3688933)))

(assert (=> b!6039265 (= res!2514483 (not (is-Concat!24865 lt!2322857)))))

(assert (=> b!6039265 (= e!3688934 e!3688933)))

(declare-fun b!6039266 () Bool)

(assert (=> b!6039266 (= e!3688929 call!493922)))

(assert (= (and d!1893846 (not res!2514486)) b!6039261))

(assert (= (and b!6039261 c!1082699) b!6039259))

(assert (= (and b!6039261 (not c!1082699)) b!6039260))

(assert (= (and b!6039259 res!2514485) b!6039262))

(assert (= (and b!6039260 c!1082698) b!6039264))

(assert (= (and b!6039260 (not c!1082698)) b!6039265))

(assert (= (and b!6039264 res!2514482) b!6039266))

(assert (= (and b!6039265 (not res!2514483)) b!6039263))

(assert (= (and b!6039263 res!2514484) b!6039258))

(assert (= (or b!6039266 b!6039258) bm!493917))

(assert (= (or b!6039264 b!6039263) bm!493916))

(assert (= (or b!6039262 bm!493917) bm!493915))

(declare-fun m!6909454 () Bool)

(assert (=> bm!493915 m!6909454))

(declare-fun m!6909456 () Bool)

(assert (=> bm!493916 m!6909456))

(declare-fun m!6909458 () Bool)

(assert (=> b!6039259 m!6909458))

(assert (=> d!1893246 d!1893846))

(declare-fun bs!1489941 () Bool)

(declare-fun d!1893848 () Bool)

(assert (= bs!1489941 (and d!1893848 b!6039142)))

(declare-fun lambda!329443 () Int)

(assert (=> bs!1489941 (not (= lambda!329443 lambda!329430))))

(declare-fun bs!1489942 () Bool)

(assert (= bs!1489942 (and d!1893848 d!1893522)))

(assert (=> bs!1489942 (not (= lambda!329443 lambda!329382))))

(declare-fun bs!1489943 () Bool)

(assert (= bs!1489943 (and d!1893848 d!1893280)))

(assert (=> bs!1489943 (= lambda!329443 lambda!329287)))

(declare-fun bs!1489944 () Bool)

(assert (= bs!1489944 (and d!1893848 b!6038839)))

(assert (=> bs!1489944 (not (= lambda!329443 lambda!329405))))

(declare-fun bs!1489945 () Bool)

(assert (= bs!1489945 (and d!1893848 b!6037654)))

(assert (=> bs!1489945 (not (= lambda!329443 lambda!329296))))

(declare-fun bs!1489946 () Bool)

(assert (= bs!1489946 (and d!1893848 d!1893768)))

(assert (=> bs!1489946 (not (= lambda!329443 lambda!329428))))

(declare-fun bs!1489947 () Bool)

(assert (= bs!1489947 (and d!1893848 b!6037659)))

(assert (=> bs!1489947 (not (= lambda!329443 lambda!329298))))

(declare-fun bs!1489948 () Bool)

(assert (= bs!1489948 (and d!1893848 b!6038563)))

(assert (=> bs!1489948 (not (= lambda!329443 lambda!329378))))

(declare-fun bs!1489949 () Bool)

(assert (= bs!1489949 (and d!1893848 d!1893654)))

(assert (=> bs!1489949 (= lambda!329443 lambda!329404)))

(declare-fun bs!1489950 () Bool)

(assert (= bs!1489950 (and d!1893848 d!1893714)))

(assert (=> bs!1489950 (= lambda!329443 lambda!329418)))

(declare-fun bs!1489951 () Bool)

(assert (= bs!1489951 (and d!1893848 d!1893332)))

(assert (=> bs!1489951 (= lambda!329443 lambda!329307)))

(declare-fun bs!1489952 () Bool)

(assert (= bs!1489952 (and d!1893848 d!1893344)))

(assert (=> bs!1489952 (= lambda!329443 lambda!329311)))

(declare-fun bs!1489953 () Bool)

(assert (= bs!1489953 (and d!1893848 d!1893752)))

(assert (=> bs!1489953 (= lambda!329443 lambda!329423)))

(declare-fun bs!1489954 () Bool)

(assert (= bs!1489954 (and d!1893848 d!1893548)))

(assert (=> bs!1489954 (= lambda!329443 lambda!329387)))

(declare-fun bs!1489955 () Bool)

(assert (= bs!1489955 (and d!1893848 b!6038692)))

(assert (=> bs!1489955 (not (= lambda!329443 lambda!329396))))

(declare-fun bs!1489956 () Bool)

(assert (= bs!1489956 (and d!1893848 b!6038915)))

(assert (=> bs!1489956 (not (= lambda!329443 lambda!329416))))

(declare-fun bs!1489957 () Bool)

(assert (= bs!1489957 (and d!1893848 d!1893334)))

(assert (=> bs!1489957 (= lambda!329443 lambda!329310)))

(declare-fun bs!1489958 () Bool)

(assert (= bs!1489958 (and d!1893848 d!1893624)))

(assert (=> bs!1489958 (= lambda!329443 lambda!329401)))

(declare-fun bs!1489959 () Bool)

(assert (= bs!1489959 (and d!1893848 d!1893506)))

(assert (=> bs!1489959 (not (= lambda!329443 lambda!329381))))

(declare-fun bs!1489960 () Bool)

(assert (= bs!1489960 (and d!1893848 d!1893330)))

(assert (=> bs!1489960 (= lambda!329443 lambda!329304)))

(declare-fun bs!1489961 () Bool)

(assert (= bs!1489961 (and d!1893848 b!6038913)))

(assert (=> bs!1489961 (not (= lambda!329443 lambda!329415))))

(declare-fun bs!1489962 () Bool)

(assert (= bs!1489962 (and d!1893848 b!6038561)))

(assert (=> bs!1489962 (not (= lambda!329443 lambda!329377))))

(declare-fun bs!1489963 () Bool)

(assert (= bs!1489963 (and d!1893848 b!6038598)))

(assert (=> bs!1489963 (not (= lambda!329443 lambda!329384))))

(declare-fun bs!1489964 () Bool)

(assert (= bs!1489964 (and d!1893848 b!6038694)))

(assert (=> bs!1489964 (not (= lambda!329443 lambda!329397))))

(declare-fun bs!1489965 () Bool)

(assert (= bs!1489965 (and d!1893848 b!6037661)))

(assert (=> bs!1489965 (not (= lambda!329443 lambda!329299))))

(declare-fun bs!1489966 () Bool)

(assert (= bs!1489966 (and d!1893848 b!6037718)))

(assert (=> bs!1489966 (not (= lambda!329443 lambda!329301))))

(declare-fun bs!1489967 () Bool)

(assert (= bs!1489967 (and d!1893848 b!6038596)))

(assert (=> bs!1489967 (not (= lambda!329443 lambda!329383))))

(declare-fun bs!1489968 () Bool)

(assert (= bs!1489968 (and d!1893848 b!6039140)))

(assert (=> bs!1489968 (not (= lambda!329443 lambda!329429))))

(declare-fun bs!1489969 () Bool)

(assert (= bs!1489969 (and d!1893848 b!6038841)))

(assert (=> bs!1489969 (not (= lambda!329443 lambda!329406))))

(declare-fun bs!1489970 () Bool)

(assert (= bs!1489970 (and d!1893848 b!6037716)))

(assert (=> bs!1489970 (not (= lambda!329443 lambda!329300))))

(declare-fun bs!1489971 () Bool)

(assert (= bs!1489971 (and d!1893848 b!6037656)))

(assert (=> bs!1489971 (not (= lambda!329443 lambda!329297))))

(declare-fun e!3688935 () Bool)

(assert (=> d!1893848 e!3688935))

(declare-fun res!2514487 () Bool)

(assert (=> d!1893848 (=> (not res!2514487) (not e!3688935))))

(declare-fun lt!2323121 () Regex!16020)

(assert (=> d!1893848 (= res!2514487 (validRegex!7756 lt!2323121))))

(declare-fun e!3688940 () Regex!16020)

(assert (=> d!1893848 (= lt!2323121 e!3688940)))

(declare-fun c!1082702 () Bool)

(declare-fun e!3688938 () Bool)

(assert (=> d!1893848 (= c!1082702 e!3688938)))

(declare-fun res!2514488 () Bool)

(assert (=> d!1893848 (=> (not res!2514488) (not e!3688938))))

(assert (=> d!1893848 (= res!2514488 (is-Cons!64235 (unfocusZipperList!1441 lt!2322709)))))

(assert (=> d!1893848 (forall!15128 (unfocusZipperList!1441 lt!2322709) lambda!329443)))

(assert (=> d!1893848 (= (generalisedUnion!1864 (unfocusZipperList!1441 lt!2322709)) lt!2323121)))

(declare-fun b!6039267 () Bool)

(assert (=> b!6039267 (= e!3688940 (h!70683 (unfocusZipperList!1441 lt!2322709)))))

(declare-fun b!6039268 () Bool)

(assert (=> b!6039268 (= e!3688938 (isEmpty!36140 (t!377788 (unfocusZipperList!1441 lt!2322709))))))

(declare-fun b!6039269 () Bool)

(declare-fun e!3688936 () Bool)

(assert (=> b!6039269 (= e!3688936 (= lt!2323121 (head!12578 (unfocusZipperList!1441 lt!2322709))))))

(declare-fun b!6039270 () Bool)

(declare-fun e!3688939 () Bool)

(assert (=> b!6039270 (= e!3688935 e!3688939)))

(declare-fun c!1082701 () Bool)

(assert (=> b!6039270 (= c!1082701 (isEmpty!36140 (unfocusZipperList!1441 lt!2322709)))))

(declare-fun b!6039271 () Bool)

(assert (=> b!6039271 (= e!3688939 (isEmptyLang!1455 lt!2323121))))

(declare-fun b!6039272 () Bool)

(declare-fun e!3688937 () Regex!16020)

(assert (=> b!6039272 (= e!3688937 EmptyLang!16020)))

(declare-fun b!6039273 () Bool)

(assert (=> b!6039273 (= e!3688939 e!3688936)))

(declare-fun c!1082703 () Bool)

(assert (=> b!6039273 (= c!1082703 (isEmpty!36140 (tail!11663 (unfocusZipperList!1441 lt!2322709))))))

(declare-fun b!6039274 () Bool)

(assert (=> b!6039274 (= e!3688937 (Union!16020 (h!70683 (unfocusZipperList!1441 lt!2322709)) (generalisedUnion!1864 (t!377788 (unfocusZipperList!1441 lt!2322709)))))))

(declare-fun b!6039275 () Bool)

(assert (=> b!6039275 (= e!3688936 (isUnion!885 lt!2323121))))

(declare-fun b!6039276 () Bool)

(assert (=> b!6039276 (= e!3688940 e!3688937)))

(declare-fun c!1082700 () Bool)

(assert (=> b!6039276 (= c!1082700 (is-Cons!64235 (unfocusZipperList!1441 lt!2322709)))))

(assert (= (and d!1893848 res!2514488) b!6039268))

(assert (= (and d!1893848 c!1082702) b!6039267))

(assert (= (and d!1893848 (not c!1082702)) b!6039276))

(assert (= (and b!6039276 c!1082700) b!6039274))

(assert (= (and b!6039276 (not c!1082700)) b!6039272))

(assert (= (and d!1893848 res!2514487) b!6039270))

(assert (= (and b!6039270 c!1082701) b!6039271))

(assert (= (and b!6039270 (not c!1082701)) b!6039273))

(assert (= (and b!6039273 c!1082703) b!6039269))

(assert (= (and b!6039273 (not c!1082703)) b!6039275))

(assert (=> b!6039270 m!6907858))

(declare-fun m!6909460 () Bool)

(assert (=> b!6039270 m!6909460))

(assert (=> b!6039269 m!6907858))

(declare-fun m!6909462 () Bool)

(assert (=> b!6039269 m!6909462))

(declare-fun m!6909464 () Bool)

(assert (=> b!6039275 m!6909464))

(declare-fun m!6909466 () Bool)

(assert (=> d!1893848 m!6909466))

(assert (=> d!1893848 m!6907858))

(declare-fun m!6909468 () Bool)

(assert (=> d!1893848 m!6909468))

(declare-fun m!6909470 () Bool)

(assert (=> b!6039271 m!6909470))

(declare-fun m!6909472 () Bool)

(assert (=> b!6039274 m!6909472))

(declare-fun m!6909474 () Bool)

(assert (=> b!6039268 m!6909474))

(assert (=> b!6039273 m!6907858))

(declare-fun m!6909476 () Bool)

(assert (=> b!6039273 m!6909476))

(assert (=> b!6039273 m!6909476))

(declare-fun m!6909478 () Bool)

(assert (=> b!6039273 m!6909478))

(assert (=> d!1893246 d!1893848))

(declare-fun bs!1489972 () Bool)

(declare-fun d!1893850 () Bool)

(assert (= bs!1489972 (and d!1893850 b!6039142)))

(declare-fun lambda!329444 () Int)

(assert (=> bs!1489972 (not (= lambda!329444 lambda!329430))))

(declare-fun bs!1489973 () Bool)

(assert (= bs!1489973 (and d!1893850 d!1893522)))

(assert (=> bs!1489973 (not (= lambda!329444 lambda!329382))))

(declare-fun bs!1489974 () Bool)

(assert (= bs!1489974 (and d!1893850 d!1893280)))

(assert (=> bs!1489974 (= lambda!329444 lambda!329287)))

(declare-fun bs!1489975 () Bool)

(assert (= bs!1489975 (and d!1893850 b!6038839)))

(assert (=> bs!1489975 (not (= lambda!329444 lambda!329405))))

(declare-fun bs!1489976 () Bool)

(assert (= bs!1489976 (and d!1893850 b!6037654)))

(assert (=> bs!1489976 (not (= lambda!329444 lambda!329296))))

(declare-fun bs!1489977 () Bool)

(assert (= bs!1489977 (and d!1893850 d!1893768)))

(assert (=> bs!1489977 (not (= lambda!329444 lambda!329428))))

(declare-fun bs!1489978 () Bool)

(assert (= bs!1489978 (and d!1893850 b!6037659)))

(assert (=> bs!1489978 (not (= lambda!329444 lambda!329298))))

(declare-fun bs!1489979 () Bool)

(assert (= bs!1489979 (and d!1893850 b!6038563)))

(assert (=> bs!1489979 (not (= lambda!329444 lambda!329378))))

(declare-fun bs!1489980 () Bool)

(assert (= bs!1489980 (and d!1893850 d!1893848)))

(assert (=> bs!1489980 (= lambda!329444 lambda!329443)))

(declare-fun bs!1489981 () Bool)

(assert (= bs!1489981 (and d!1893850 d!1893654)))

(assert (=> bs!1489981 (= lambda!329444 lambda!329404)))

(declare-fun bs!1489982 () Bool)

(assert (= bs!1489982 (and d!1893850 d!1893714)))

(assert (=> bs!1489982 (= lambda!329444 lambda!329418)))

(declare-fun bs!1489983 () Bool)

(assert (= bs!1489983 (and d!1893850 d!1893332)))

(assert (=> bs!1489983 (= lambda!329444 lambda!329307)))

(declare-fun bs!1489984 () Bool)

(assert (= bs!1489984 (and d!1893850 d!1893344)))

(assert (=> bs!1489984 (= lambda!329444 lambda!329311)))

(declare-fun bs!1489985 () Bool)

(assert (= bs!1489985 (and d!1893850 d!1893752)))

(assert (=> bs!1489985 (= lambda!329444 lambda!329423)))

(declare-fun bs!1489986 () Bool)

(assert (= bs!1489986 (and d!1893850 d!1893548)))

(assert (=> bs!1489986 (= lambda!329444 lambda!329387)))

(declare-fun bs!1489987 () Bool)

(assert (= bs!1489987 (and d!1893850 b!6038692)))

(assert (=> bs!1489987 (not (= lambda!329444 lambda!329396))))

(declare-fun bs!1489988 () Bool)

(assert (= bs!1489988 (and d!1893850 b!6038915)))

(assert (=> bs!1489988 (not (= lambda!329444 lambda!329416))))

(declare-fun bs!1489989 () Bool)

(assert (= bs!1489989 (and d!1893850 d!1893334)))

(assert (=> bs!1489989 (= lambda!329444 lambda!329310)))

(declare-fun bs!1489990 () Bool)

(assert (= bs!1489990 (and d!1893850 d!1893624)))

(assert (=> bs!1489990 (= lambda!329444 lambda!329401)))

(declare-fun bs!1489991 () Bool)

(assert (= bs!1489991 (and d!1893850 d!1893506)))

(assert (=> bs!1489991 (not (= lambda!329444 lambda!329381))))

(declare-fun bs!1489992 () Bool)

(assert (= bs!1489992 (and d!1893850 d!1893330)))

(assert (=> bs!1489992 (= lambda!329444 lambda!329304)))

(declare-fun bs!1489993 () Bool)

(assert (= bs!1489993 (and d!1893850 b!6038913)))

(assert (=> bs!1489993 (not (= lambda!329444 lambda!329415))))

(declare-fun bs!1489994 () Bool)

(assert (= bs!1489994 (and d!1893850 b!6038561)))

(assert (=> bs!1489994 (not (= lambda!329444 lambda!329377))))

(declare-fun bs!1489995 () Bool)

(assert (= bs!1489995 (and d!1893850 b!6038598)))

(assert (=> bs!1489995 (not (= lambda!329444 lambda!329384))))

(declare-fun bs!1489996 () Bool)

(assert (= bs!1489996 (and d!1893850 b!6038694)))

(assert (=> bs!1489996 (not (= lambda!329444 lambda!329397))))

(declare-fun bs!1489997 () Bool)

(assert (= bs!1489997 (and d!1893850 b!6037661)))

(assert (=> bs!1489997 (not (= lambda!329444 lambda!329299))))

(declare-fun bs!1489998 () Bool)

(assert (= bs!1489998 (and d!1893850 b!6037718)))

(assert (=> bs!1489998 (not (= lambda!329444 lambda!329301))))

(declare-fun bs!1489999 () Bool)

(assert (= bs!1489999 (and d!1893850 b!6038596)))

(assert (=> bs!1489999 (not (= lambda!329444 lambda!329383))))

(declare-fun bs!1490000 () Bool)

(assert (= bs!1490000 (and d!1893850 b!6039140)))

(assert (=> bs!1490000 (not (= lambda!329444 lambda!329429))))

(declare-fun bs!1490001 () Bool)

(assert (= bs!1490001 (and d!1893850 b!6038841)))

(assert (=> bs!1490001 (not (= lambda!329444 lambda!329406))))

(declare-fun bs!1490002 () Bool)

(assert (= bs!1490002 (and d!1893850 b!6037716)))

(assert (=> bs!1490002 (not (= lambda!329444 lambda!329300))))

(declare-fun bs!1490003 () Bool)

(assert (= bs!1490003 (and d!1893850 b!6037656)))

(assert (=> bs!1490003 (not (= lambda!329444 lambda!329297))))

(declare-fun lt!2323122 () List!64359)

(assert (=> d!1893850 (forall!15128 lt!2323122 lambda!329444)))

(declare-fun e!3688941 () List!64359)

(assert (=> d!1893850 (= lt!2323122 e!3688941)))

(declare-fun c!1082704 () Bool)

(assert (=> d!1893850 (= c!1082704 (is-Cons!64236 lt!2322709))))

(assert (=> d!1893850 (= (unfocusZipperList!1441 lt!2322709) lt!2323122)))

(declare-fun b!6039277 () Bool)

(assert (=> b!6039277 (= e!3688941 (Cons!64235 (generalisedConcat!1617 (exprs!5904 (h!70684 lt!2322709))) (unfocusZipperList!1441 (t!377789 lt!2322709))))))

(declare-fun b!6039278 () Bool)

(assert (=> b!6039278 (= e!3688941 Nil!64235)))

(assert (= (and d!1893850 c!1082704) b!6039277))

(assert (= (and d!1893850 (not c!1082704)) b!6039278))

(declare-fun m!6909480 () Bool)

(assert (=> d!1893850 m!6909480))

(declare-fun m!6909482 () Bool)

(assert (=> b!6039277 m!6909482))

(declare-fun m!6909484 () Bool)

(assert (=> b!6039277 m!6909484))

(assert (=> d!1893246 d!1893850))

(declare-fun d!1893852 () Bool)

(assert (=> d!1893852 (= ($colon$colon!1905 (exprs!5904 lt!2322716) (ite (or c!1082251 c!1082247) (regTwo!32552 r!7292) r!7292)) (Cons!64235 (ite (or c!1082251 c!1082247) (regTwo!32552 r!7292) r!7292) (exprs!5904 lt!2322716)))))

(assert (=> bm!493593 d!1893852))

(assert (=> d!1893354 d!1893568))

(assert (=> d!1893354 d!1893284))

(declare-fun bs!1490004 () Bool)

(declare-fun d!1893854 () Bool)

(assert (= bs!1490004 (and d!1893854 b!6037607)))

(declare-fun lambda!329445 () Int)

(assert (=> bs!1490004 (not (= lambda!329445 lambda!329290))))

(declare-fun bs!1490005 () Bool)

(assert (= bs!1490005 (and d!1893854 b!6038691)))

(assert (=> bs!1490005 (not (= lambda!329445 lambda!329395))))

(declare-fun bs!1490006 () Bool)

(assert (= bs!1490006 (and d!1893854 d!1893642)))

(assert (=> bs!1490006 (= lambda!329445 lambda!329402)))

(declare-fun bs!1490007 () Bool)

(assert (= bs!1490007 (and d!1893854 d!1893746)))

(assert (=> bs!1490007 (= lambda!329445 lambda!329421)))

(declare-fun bs!1490008 () Bool)

(assert (= bs!1490008 (and d!1893854 b!6038908)))

(assert (=> bs!1490008 (not (= lambda!329445 lambda!329412))))

(declare-fun bs!1490009 () Bool)

(assert (= bs!1490009 (and d!1893854 b!6037597)))

(assert (=> bs!1490009 (not (= lambda!329445 lambda!329280))))

(declare-fun bs!1490010 () Bool)

(assert (= bs!1490010 (and d!1893854 b!6037602)))

(assert (=> bs!1490010 (not (= lambda!329445 lambda!329283))))

(declare-fun bs!1490011 () Bool)

(assert (= bs!1490011 (and d!1893854 d!1893700)))

(assert (=> bs!1490011 (= lambda!329445 lambda!329417)))

(declare-fun bs!1490012 () Bool)

(assert (= bs!1490012 (and d!1893854 b!6037599)))

(assert (=> bs!1490012 (not (= lambda!329445 lambda!329281))))

(declare-fun bs!1490013 () Bool)

(assert (= bs!1490013 (and d!1893854 d!1893806)))

(assert (=> bs!1490013 (= lambda!329445 lambda!329439)))

(declare-fun bs!1490014 () Bool)

(assert (= bs!1490014 (and d!1893854 d!1893758)))

(assert (=> bs!1490014 (= lambda!329445 lambda!329424)))

(declare-fun bs!1490015 () Bool)

(assert (= bs!1490015 (and d!1893854 b!6037604)))

(assert (=> bs!1490015 (not (= lambda!329445 lambda!329284))))

(declare-fun bs!1490016 () Bool)

(assert (= bs!1490016 (and d!1893854 d!1893668)))

(assert (=> bs!1490016 (not (= lambda!329445 lambda!329410))))

(declare-fun bs!1490017 () Bool)

(assert (= bs!1490017 (and d!1893854 b!6038844)))

(assert (=> bs!1490017 (not (= lambda!329445 lambda!329409))))

(declare-fun bs!1490018 () Bool)

(assert (= bs!1490018 (and d!1893854 d!1893580)))

(assert (=> bs!1490018 (not (= lambda!329445 lambda!329400))))

(declare-fun bs!1490019 () Bool)

(assert (= bs!1490019 (and d!1893854 b!6038689)))

(assert (=> bs!1490019 (not (= lambda!329445 lambda!329394))))

(declare-fun bs!1490020 () Bool)

(assert (= bs!1490020 (and d!1893854 d!1893560)))

(assert (=> bs!1490020 (= lambda!329445 lambda!329391)))

(declare-fun bs!1490021 () Bool)

(assert (= bs!1490021 (and d!1893854 b!6038842)))

(assert (=> bs!1490021 (not (= lambda!329445 lambda!329408))))

(declare-fun bs!1490022 () Bool)

(assert (= bs!1490022 (and d!1893854 b!6037605)))

(assert (=> bs!1490022 (not (= lambda!329445 lambda!329289))))

(declare-fun bs!1490023 () Bool)

(assert (= bs!1490023 (and d!1893854 b!6038910)))

(assert (=> bs!1490023 (not (= lambda!329445 lambda!329413))))

(declare-fun bs!1490024 () Bool)

(assert (= bs!1490024 (and d!1893854 d!1893750)))

(assert (=> bs!1490024 (= lambda!329445 lambda!329422)))

(declare-fun bs!1490025 () Bool)

(assert (= bs!1490025 (and d!1893854 d!1893690)))

(assert (=> bs!1490025 (not (= lambda!329445 lambda!329414))))

(assert (=> d!1893854 (= (nullableZipper!1825 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326))) (exists!2385 (derivationStepZipper!2001 lt!2322718 (h!70685 s!2326)) lambda!329445))))

(declare-fun bs!1490026 () Bool)

(assert (= bs!1490026 d!1893854))

(assert (=> bs!1490026 m!6907690))

(declare-fun m!6909486 () Bool)

(assert (=> bs!1490026 m!6909486))

(assert (=> b!6037530 d!1893854))

(declare-fun b!6039279 () Bool)

(declare-fun e!3688943 () Bool)

(assert (=> b!6039279 (= e!3688943 (matchR!8203 (derivativeStep!4749 (derivativeStep!4749 r!7292 (head!12577 s!2326)) (head!12577 (tail!11662 s!2326))) (tail!11662 (tail!11662 s!2326))))))

(declare-fun b!6039280 () Bool)

(declare-fun e!3688945 () Bool)

(declare-fun lt!2323123 () Bool)

(assert (=> b!6039280 (= e!3688945 (not lt!2323123))))

(declare-fun b!6039281 () Bool)

(declare-fun e!3688944 () Bool)

(assert (=> b!6039281 (= e!3688944 (not (= (head!12577 (tail!11662 s!2326)) (c!1082125 (derivativeStep!4749 r!7292 (head!12577 s!2326))))))))

(declare-fun b!6039282 () Bool)

(declare-fun res!2514495 () Bool)

(declare-fun e!3688948 () Bool)

(assert (=> b!6039282 (=> (not res!2514495) (not e!3688948))))

(assert (=> b!6039282 (= res!2514495 (isEmpty!36143 (tail!11662 (tail!11662 s!2326))))))

(declare-fun b!6039283 () Bool)

(declare-fun e!3688946 () Bool)

(declare-fun call!493923 () Bool)

(assert (=> b!6039283 (= e!3688946 (= lt!2323123 call!493923))))

(declare-fun b!6039284 () Bool)

(assert (=> b!6039284 (= e!3688948 (= (head!12577 (tail!11662 s!2326)) (c!1082125 (derivativeStep!4749 r!7292 (head!12577 s!2326)))))))

(declare-fun d!1893856 () Bool)

(assert (=> d!1893856 e!3688946))

(declare-fun c!1082705 () Bool)

(assert (=> d!1893856 (= c!1082705 (is-EmptyExpr!16020 (derivativeStep!4749 r!7292 (head!12577 s!2326))))))

(assert (=> d!1893856 (= lt!2323123 e!3688943)))

(declare-fun c!1082706 () Bool)

(assert (=> d!1893856 (= c!1082706 (isEmpty!36143 (tail!11662 s!2326)))))

(assert (=> d!1893856 (validRegex!7756 (derivativeStep!4749 r!7292 (head!12577 s!2326)))))

(assert (=> d!1893856 (= (matchR!8203 (derivativeStep!4749 r!7292 (head!12577 s!2326)) (tail!11662 s!2326)) lt!2323123)))

(declare-fun b!6039285 () Bool)

(declare-fun res!2514492 () Bool)

(assert (=> b!6039285 (=> res!2514492 e!3688944)))

(assert (=> b!6039285 (= res!2514492 (not (isEmpty!36143 (tail!11662 (tail!11662 s!2326)))))))

(declare-fun b!6039286 () Bool)

(declare-fun res!2514496 () Bool)

(declare-fun e!3688947 () Bool)

(assert (=> b!6039286 (=> res!2514496 e!3688947)))

(assert (=> b!6039286 (= res!2514496 (not (is-ElementMatch!16020 (derivativeStep!4749 r!7292 (head!12577 s!2326)))))))

(assert (=> b!6039286 (= e!3688945 e!3688947)))

(declare-fun b!6039287 () Bool)

(declare-fun res!2514493 () Bool)

(assert (=> b!6039287 (=> res!2514493 e!3688947)))

(assert (=> b!6039287 (= res!2514493 e!3688948)))

(declare-fun res!2514494 () Bool)

(assert (=> b!6039287 (=> (not res!2514494) (not e!3688948))))

(assert (=> b!6039287 (= res!2514494 lt!2323123)))

(declare-fun b!6039288 () Bool)

(declare-fun res!2514490 () Bool)

(assert (=> b!6039288 (=> (not res!2514490) (not e!3688948))))

(assert (=> b!6039288 (= res!2514490 (not call!493923))))

(declare-fun b!6039289 () Bool)

(declare-fun e!3688942 () Bool)

(assert (=> b!6039289 (= e!3688942 e!3688944)))

(declare-fun res!2514491 () Bool)

(assert (=> b!6039289 (=> res!2514491 e!3688944)))

(assert (=> b!6039289 (= res!2514491 call!493923)))

(declare-fun b!6039290 () Bool)

(assert (=> b!6039290 (= e!3688943 (nullable!6015 (derivativeStep!4749 r!7292 (head!12577 s!2326))))))

(declare-fun bm!493918 () Bool)

(assert (=> bm!493918 (= call!493923 (isEmpty!36143 (tail!11662 s!2326)))))

(declare-fun b!6039291 () Bool)

(assert (=> b!6039291 (= e!3688946 e!3688945)))

(declare-fun c!1082707 () Bool)

(assert (=> b!6039291 (= c!1082707 (is-EmptyLang!16020 (derivativeStep!4749 r!7292 (head!12577 s!2326))))))

(declare-fun b!6039292 () Bool)

(assert (=> b!6039292 (= e!3688947 e!3688942)))

(declare-fun res!2514489 () Bool)

(assert (=> b!6039292 (=> (not res!2514489) (not e!3688942))))

(assert (=> b!6039292 (= res!2514489 (not lt!2323123))))

(assert (= (and d!1893856 c!1082706) b!6039290))

(assert (= (and d!1893856 (not c!1082706)) b!6039279))

(assert (= (and d!1893856 c!1082705) b!6039283))

(assert (= (and d!1893856 (not c!1082705)) b!6039291))

(assert (= (and b!6039291 c!1082707) b!6039280))

(assert (= (and b!6039291 (not c!1082707)) b!6039286))

(assert (= (and b!6039286 (not res!2514496)) b!6039287))

(assert (= (and b!6039287 res!2514494) b!6039288))

(assert (= (and b!6039288 res!2514490) b!6039282))

(assert (= (and b!6039282 res!2514495) b!6039284))

(assert (= (and b!6039287 (not res!2514493)) b!6039292))

(assert (= (and b!6039292 res!2514489) b!6039289))

(assert (= (and b!6039289 (not res!2514491)) b!6039285))

(assert (= (and b!6039285 (not res!2514492)) b!6039281))

(assert (= (or b!6039283 b!6039288 b!6039289) bm!493918))

(assert (=> bm!493918 m!6907842))

(assert (=> bm!493918 m!6907846))

(assert (=> b!6039285 m!6907842))

(assert (=> b!6039285 m!6909192))

(assert (=> b!6039285 m!6909192))

(assert (=> b!6039285 m!6909210))

(assert (=> b!6039279 m!6907842))

(assert (=> b!6039279 m!6909188))

(assert (=> b!6039279 m!6908194))

(assert (=> b!6039279 m!6909188))

(declare-fun m!6909488 () Bool)

(assert (=> b!6039279 m!6909488))

(assert (=> b!6039279 m!6907842))

(assert (=> b!6039279 m!6909192))

(assert (=> b!6039279 m!6909488))

(assert (=> b!6039279 m!6909192))

(declare-fun m!6909490 () Bool)

(assert (=> b!6039279 m!6909490))

(assert (=> b!6039290 m!6908194))

(declare-fun m!6909492 () Bool)

(assert (=> b!6039290 m!6909492))

(assert (=> b!6039282 m!6907842))

(assert (=> b!6039282 m!6909192))

(assert (=> b!6039282 m!6909192))

(assert (=> b!6039282 m!6909210))

(assert (=> b!6039281 m!6907842))

(assert (=> b!6039281 m!6909188))

(assert (=> d!1893856 m!6907842))

(assert (=> d!1893856 m!6907846))

(assert (=> d!1893856 m!6908194))

(declare-fun m!6909494 () Bool)

(assert (=> d!1893856 m!6909494))

(assert (=> b!6039284 m!6907842))

(assert (=> b!6039284 m!6909188))

(assert (=> b!6037869 d!1893856))

(declare-fun b!6039293 () Bool)

(declare-fun e!3688950 () Regex!16020)

(declare-fun call!493926 () Regex!16020)

(assert (=> b!6039293 (= e!3688950 (Concat!24865 call!493926 r!7292))))

(declare-fun b!6039294 () Bool)

(declare-fun e!3688949 () Regex!16020)

(declare-fun call!493927 () Regex!16020)

(declare-fun call!493924 () Regex!16020)

(assert (=> b!6039294 (= e!3688949 (Union!16020 call!493927 call!493924))))

(declare-fun b!6039295 () Bool)

(declare-fun e!3688952 () Regex!16020)

(declare-fun e!3688951 () Regex!16020)

(assert (=> b!6039295 (= e!3688952 e!3688951)))

(declare-fun c!1082712 () Bool)

(assert (=> b!6039295 (= c!1082712 (is-ElementMatch!16020 r!7292))))

(declare-fun b!6039296 () Bool)

(assert (=> b!6039296 (= e!3688952 EmptyLang!16020)))

(declare-fun b!6039297 () Bool)

(assert (=> b!6039297 (= e!3688949 e!3688950)))

(declare-fun c!1082709 () Bool)

(assert (=> b!6039297 (= c!1082709 (is-Star!16020 r!7292))))

(declare-fun bm!493919 () Bool)

(assert (=> bm!493919 (= call!493926 call!493924)))

(declare-fun e!3688953 () Regex!16020)

(declare-fun b!6039298 () Bool)

(declare-fun call!493925 () Regex!16020)

(assert (=> b!6039298 (= e!3688953 (Union!16020 (Concat!24865 call!493926 (regTwo!32552 r!7292)) call!493925))))

(declare-fun b!6039300 () Bool)

(assert (=> b!6039300 (= e!3688951 (ite (= (head!12577 s!2326) (c!1082125 r!7292)) EmptyExpr!16020 EmptyLang!16020))))

(declare-fun b!6039301 () Bool)

(declare-fun c!1082708 () Bool)

(assert (=> b!6039301 (= c!1082708 (is-Union!16020 r!7292))))

(assert (=> b!6039301 (= e!3688951 e!3688949)))

(declare-fun bm!493920 () Bool)

(assert (=> bm!493920 (= call!493925 call!493927)))

(declare-fun c!1082710 () Bool)

(declare-fun bm!493921 () Bool)

(assert (=> bm!493921 (= call!493927 (derivativeStep!4749 (ite c!1082708 (regOne!32553 r!7292) (ite c!1082710 (regTwo!32552 r!7292) (regOne!32552 r!7292))) (head!12577 s!2326)))))

(declare-fun b!6039299 () Bool)

(assert (=> b!6039299 (= e!3688953 (Union!16020 (Concat!24865 call!493925 (regTwo!32552 r!7292)) EmptyLang!16020))))

(declare-fun d!1893858 () Bool)

(declare-fun lt!2323124 () Regex!16020)

(assert (=> d!1893858 (validRegex!7756 lt!2323124)))

(assert (=> d!1893858 (= lt!2323124 e!3688952)))

(declare-fun c!1082711 () Bool)

(assert (=> d!1893858 (= c!1082711 (or (is-EmptyExpr!16020 r!7292) (is-EmptyLang!16020 r!7292)))))

(assert (=> d!1893858 (validRegex!7756 r!7292)))

(assert (=> d!1893858 (= (derivativeStep!4749 r!7292 (head!12577 s!2326)) lt!2323124)))

(declare-fun bm!493922 () Bool)

(assert (=> bm!493922 (= call!493924 (derivativeStep!4749 (ite c!1082708 (regTwo!32553 r!7292) (ite c!1082709 (reg!16349 r!7292) (regOne!32552 r!7292))) (head!12577 s!2326)))))

(declare-fun b!6039302 () Bool)

(assert (=> b!6039302 (= c!1082710 (nullable!6015 (regOne!32552 r!7292)))))

(assert (=> b!6039302 (= e!3688950 e!3688953)))

(assert (= (and d!1893858 c!1082711) b!6039296))

(assert (= (and d!1893858 (not c!1082711)) b!6039295))

(assert (= (and b!6039295 c!1082712) b!6039300))

(assert (= (and b!6039295 (not c!1082712)) b!6039301))

(assert (= (and b!6039301 c!1082708) b!6039294))

(assert (= (and b!6039301 (not c!1082708)) b!6039297))

(assert (= (and b!6039297 c!1082709) b!6039293))

(assert (= (and b!6039297 (not c!1082709)) b!6039302))

(assert (= (and b!6039302 c!1082710) b!6039298))

(assert (= (and b!6039302 (not c!1082710)) b!6039299))

(assert (= (or b!6039298 b!6039299) bm!493920))

(assert (= (or b!6039293 b!6039298) bm!493919))

(assert (= (or b!6039294 bm!493919) bm!493922))

(assert (= (or b!6039294 bm!493920) bm!493921))

(assert (=> bm!493921 m!6907838))

(declare-fun m!6909496 () Bool)

(assert (=> bm!493921 m!6909496))

(declare-fun m!6909498 () Bool)

(assert (=> d!1893858 m!6909498))

(assert (=> d!1893858 m!6907656))

(assert (=> bm!493922 m!6907838))

(declare-fun m!6909500 () Bool)

(assert (=> bm!493922 m!6909500))

(assert (=> b!6039302 m!6907676))

(assert (=> b!6037869 d!1893858))

(assert (=> b!6037869 d!1893538))

(assert (=> b!6037869 d!1893514))

(declare-fun d!1893860 () Bool)

(declare-fun res!2514497 () Bool)

(declare-fun e!3688954 () Bool)

(assert (=> d!1893860 (=> res!2514497 e!3688954)))

(assert (=> d!1893860 (= res!2514497 (is-Nil!64235 (exprs!5904 setElem!40838)))))

(assert (=> d!1893860 (= (forall!15128 (exprs!5904 setElem!40838) lambda!329311) e!3688954)))

(declare-fun b!6039303 () Bool)

(declare-fun e!3688955 () Bool)

(assert (=> b!6039303 (= e!3688954 e!3688955)))

(declare-fun res!2514498 () Bool)

(assert (=> b!6039303 (=> (not res!2514498) (not e!3688955))))

(assert (=> b!6039303 (= res!2514498 (dynLambda!25216 lambda!329311 (h!70683 (exprs!5904 setElem!40838))))))

(declare-fun b!6039304 () Bool)

(assert (=> b!6039304 (= e!3688955 (forall!15128 (t!377788 (exprs!5904 setElem!40838)) lambda!329311))))

(assert (= (and d!1893860 (not res!2514497)) b!6039303))

(assert (= (and b!6039303 res!2514498) b!6039304))

(declare-fun b_lambda!229113 () Bool)

(assert (=> (not b_lambda!229113) (not b!6039303)))

(declare-fun m!6909502 () Bool)

(assert (=> b!6039303 m!6909502))

(declare-fun m!6909504 () Bool)

(assert (=> b!6039304 m!6909504))

(assert (=> d!1893344 d!1893860))

(declare-fun c!1082714 () Bool)

(declare-fun c!1082713 () Bool)

(declare-fun bm!493923 () Bool)

(declare-fun call!493928 () Bool)

(assert (=> bm!493923 (= call!493928 (validRegex!7756 (ite c!1082714 (reg!16349 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))) (ite c!1082713 (regTwo!32553 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))) (regTwo!32552 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292))))))))))

(declare-fun b!6039305 () Bool)

(declare-fun e!3688959 () Bool)

(declare-fun call!493930 () Bool)

(assert (=> b!6039305 (= e!3688959 call!493930)))

(declare-fun bm!493924 () Bool)

(declare-fun call!493929 () Bool)

(assert (=> bm!493924 (= call!493929 (validRegex!7756 (ite c!1082713 (regOne!32553 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))) (regOne!32552 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))))))))

(declare-fun b!6039306 () Bool)

(declare-fun e!3688960 () Bool)

(declare-fun e!3688958 () Bool)

(assert (=> b!6039306 (= e!3688960 e!3688958)))

(declare-fun res!2514502 () Bool)

(assert (=> b!6039306 (= res!2514502 (not (nullable!6015 (reg!16349 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))))))))

(assert (=> b!6039306 (=> (not res!2514502) (not e!3688958))))

(declare-fun b!6039307 () Bool)

(declare-fun e!3688962 () Bool)

(assert (=> b!6039307 (= e!3688960 e!3688962)))

(assert (=> b!6039307 (= c!1082713 (is-Union!16020 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))))))

(declare-fun d!1893862 () Bool)

(declare-fun res!2514503 () Bool)

(declare-fun e!3688956 () Bool)

(assert (=> d!1893862 (=> res!2514503 e!3688956)))

(assert (=> d!1893862 (= res!2514503 (is-ElementMatch!16020 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))))))

(assert (=> d!1893862 (= (validRegex!7756 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))) e!3688956)))

(declare-fun bm!493925 () Bool)

(assert (=> bm!493925 (= call!493930 call!493928)))

(declare-fun b!6039308 () Bool)

(assert (=> b!6039308 (= e!3688956 e!3688960)))

(assert (=> b!6039308 (= c!1082714 (is-Star!16020 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292)))))))

(declare-fun b!6039309 () Bool)

(assert (=> b!6039309 (= e!3688958 call!493928)))

(declare-fun b!6039310 () Bool)

(declare-fun e!3688961 () Bool)

(assert (=> b!6039310 (= e!3688961 e!3688959)))

(declare-fun res!2514501 () Bool)

(assert (=> b!6039310 (=> (not res!2514501) (not e!3688959))))

(assert (=> b!6039310 (= res!2514501 call!493929)))

(declare-fun b!6039311 () Bool)

(declare-fun res!2514499 () Bool)

(declare-fun e!3688957 () Bool)

(assert (=> b!6039311 (=> (not res!2514499) (not e!3688957))))

(assert (=> b!6039311 (= res!2514499 call!493929)))

(assert (=> b!6039311 (= e!3688962 e!3688957)))

(declare-fun b!6039312 () Bool)

(declare-fun res!2514500 () Bool)

(assert (=> b!6039312 (=> res!2514500 e!3688961)))

(assert (=> b!6039312 (= res!2514500 (not (is-Concat!24865 (ite c!1082178 (reg!16349 r!7292) (ite c!1082177 (regTwo!32553 r!7292) (regTwo!32552 r!7292))))))))

(assert (=> b!6039312 (= e!3688962 e!3688961)))

(declare-fun b!6039313 () Bool)

(assert (=> b!6039313 (= e!3688957 call!493930)))

(assert (= (and d!1893862 (not res!2514503)) b!6039308))

(assert (= (and b!6039308 c!1082714) b!6039306))

(assert (= (and b!6039308 (not c!1082714)) b!6039307))

(assert (= (and b!6039306 res!2514502) b!6039309))

(assert (= (and b!6039307 c!1082713) b!6039311))

(assert (= (and b!6039307 (not c!1082713)) b!6039312))

(assert (= (and b!6039311 res!2514499) b!6039313))

(assert (= (and b!6039312 (not res!2514500)) b!6039310))

(assert (= (and b!6039310 res!2514501) b!6039305))

(assert (= (or b!6039313 b!6039305) bm!493925))

(assert (= (or b!6039311 b!6039310) bm!493924))

(assert (= (or b!6039309 bm!493925) bm!493923))

(declare-fun m!6909506 () Bool)

(assert (=> bm!493923 m!6909506))

(declare-fun m!6909508 () Bool)

(assert (=> bm!493924 m!6909508))

(declare-fun m!6909510 () Bool)

(assert (=> b!6039306 m!6909510))

(assert (=> bm!493557 d!1893862))

(declare-fun d!1893864 () Bool)

(declare-fun c!1082715 () Bool)

(assert (=> d!1893864 (= c!1082715 (is-Nil!64236 lt!2322879))))

(declare-fun e!3688963 () (Set Context!10808))

(assert (=> d!1893864 (= (content!11884 lt!2322879) e!3688963)))

(declare-fun b!6039314 () Bool)

(assert (=> b!6039314 (= e!3688963 (as set.empty (Set Context!10808)))))

(declare-fun b!6039315 () Bool)

(assert (=> b!6039315 (= e!3688963 (set.union (set.insert (h!70684 lt!2322879) (as set.empty (Set Context!10808))) (content!11884 (t!377789 lt!2322879))))))

(assert (= (and d!1893864 c!1082715) b!6039314))

(assert (= (and d!1893864 (not c!1082715)) b!6039315))

(declare-fun m!6909512 () Bool)

(assert (=> b!6039315 m!6909512))

(declare-fun m!6909514 () Bool)

(assert (=> b!6039315 m!6909514))

(assert (=> b!6037590 d!1893864))

(declare-fun d!1893866 () Bool)

(assert (=> d!1893866 (= (nullable!6015 (h!70683 (exprs!5904 lt!2322733))) (nullableFct!1985 (h!70683 (exprs!5904 lt!2322733))))))

(declare-fun bs!1490027 () Bool)

(assert (= bs!1490027 d!1893866))

(declare-fun m!6909516 () Bool)

(assert (=> bs!1490027 m!6909516))

(assert (=> b!6037663 d!1893866))

(assert (=> bm!493602 d!1893568))

(assert (=> d!1893294 d!1893598))

(declare-fun bs!1490028 () Bool)

(declare-fun d!1893868 () Bool)

(assert (= bs!1490028 (and d!1893868 b!6037607)))

(declare-fun lambda!329446 () Int)

(assert (=> bs!1490028 (not (= lambda!329446 lambda!329290))))

(declare-fun bs!1490029 () Bool)

(assert (= bs!1490029 (and d!1893868 b!6038691)))

(assert (=> bs!1490029 (not (= lambda!329446 lambda!329395))))

(declare-fun bs!1490030 () Bool)

(assert (= bs!1490030 (and d!1893868 d!1893642)))

(assert (=> bs!1490030 (= lambda!329446 lambda!329402)))

(declare-fun bs!1490031 () Bool)

(assert (= bs!1490031 (and d!1893868 d!1893746)))

(assert (=> bs!1490031 (= lambda!329446 lambda!329421)))

(declare-fun bs!1490032 () Bool)

(assert (= bs!1490032 (and d!1893868 b!6038908)))

(assert (=> bs!1490032 (not (= lambda!329446 lambda!329412))))

(declare-fun bs!1490033 () Bool)

(assert (= bs!1490033 (and d!1893868 b!6037597)))

(assert (=> bs!1490033 (not (= lambda!329446 lambda!329280))))

(declare-fun bs!1490034 () Bool)

(assert (= bs!1490034 (and d!1893868 b!6037602)))

(assert (=> bs!1490034 (not (= lambda!329446 lambda!329283))))

(declare-fun bs!1490035 () Bool)

(assert (= bs!1490035 (and d!1893868 d!1893700)))

(assert (=> bs!1490035 (= lambda!329446 lambda!329417)))

(declare-fun bs!1490036 () Bool)

(assert (= bs!1490036 (and d!1893868 b!6037599)))

(assert (=> bs!1490036 (not (= lambda!329446 lambda!329281))))

(declare-fun bs!1490037 () Bool)

(assert (= bs!1490037 (and d!1893868 d!1893806)))

(assert (=> bs!1490037 (= lambda!329446 lambda!329439)))

(declare-fun bs!1490038 () Bool)

(assert (= bs!1490038 (and d!1893868 b!6037604)))

(assert (=> bs!1490038 (not (= lambda!329446 lambda!329284))))

(declare-fun bs!1490039 () Bool)

(assert (= bs!1490039 (and d!1893868 d!1893668)))

(assert (=> bs!1490039 (not (= lambda!329446 lambda!329410))))

(declare-fun bs!1490040 () Bool)

(assert (= bs!1490040 (and d!1893868 b!6038844)))

(assert (=> bs!1490040 (not (= lambda!329446 lambda!329409))))

(declare-fun bs!1490041 () Bool)

(assert (= bs!1490041 (and d!1893868 d!1893580)))

(assert (=> bs!1490041 (not (= lambda!329446 lambda!329400))))

(declare-fun bs!1490042 () Bool)

(assert (= bs!1490042 (and d!1893868 b!6038689)))

(assert (=> bs!1490042 (not (= lambda!329446 lambda!329394))))

(declare-fun bs!1490043 () Bool)

(assert (= bs!1490043 (and d!1893868 d!1893560)))

(assert (=> bs!1490043 (= lambda!329446 lambda!329391)))

(declare-fun bs!1490044 () Bool)

(assert (= bs!1490044 (and d!1893868 b!6038842)))

(assert (=> bs!1490044 (not (= lambda!329446 lambda!329408))))

(declare-fun bs!1490045 () Bool)

(assert (= bs!1490045 (and d!1893868 b!6037605)))

(assert (=> bs!1490045 (not (= lambda!329446 lambda!329289))))

(declare-fun bs!1490046 () Bool)

(assert (= bs!1490046 (and d!1893868 b!6038910)))

(assert (=> bs!1490046 (not (= lambda!329446 lambda!329413))))

(declare-fun bs!1490047 () Bool)

(assert (= bs!1490047 (and d!1893868 d!1893758)))

(assert (=> bs!1490047 (= lambda!329446 lambda!329424)))

(declare-fun bs!1490048 () Bool)

(assert (= bs!1490048 (and d!1893868 d!1893854)))

(assert (=> bs!1490048 (= lambda!329446 lambda!329445)))

(declare-fun bs!1490049 () Bool)

(assert (= bs!1490049 (and d!1893868 d!1893750)))

(assert (=> bs!1490049 (= lambda!329446 lambda!329422)))

(declare-fun bs!1490050 () Bool)

(assert (= bs!1490050 (and d!1893868 d!1893690)))

(assert (=> bs!1490050 (not (= lambda!329446 lambda!329414))))

(assert (=> d!1893868 (= (nullableZipper!1825 lt!2322722) (exists!2385 lt!2322722 lambda!329446))))

(declare-fun bs!1490051 () Bool)

(assert (= bs!1490051 d!1893868))

(declare-fun m!6909518 () Bool)

(assert (=> bs!1490051 m!6909518))

(assert (=> b!6037637 d!1893868))

(assert (=> b!6037562 d!1893242))

(declare-fun d!1893870 () Bool)

(declare-fun c!1082716 () Bool)

(assert (=> d!1893870 (= c!1082716 (isEmpty!36143 (tail!11662 (t!377790 s!2326))))))

(declare-fun e!3688964 () Bool)

(assert (=> d!1893870 (= (matchZipper!2056 (derivationStepZipper!2001 lt!2322721 (head!12577 (t!377790 s!2326))) (tail!11662 (t!377790 s!2326))) e!3688964)))

(declare-fun b!6039316 () Bool)

(assert (=> b!6039316 (= e!3688964 (nullableZipper!1825 (derivationStepZipper!2001 lt!2322721 (head!12577 (t!377790 s!2326)))))))

(declare-fun b!6039317 () Bool)

(assert (=> b!6039317 (= e!3688964 (matchZipper!2056 (derivationStepZipper!2001 (derivationStepZipper!2001 lt!2322721 (head!12577 (t!377790 s!2326))) (head!12577 (tail!11662 (t!377790 s!2326)))) (tail!11662 (tail!11662 (t!377790 s!2326)))))))

(assert (= (and d!1893870 c!1082716) b!6039316))

(assert (= (and d!1893870 (not c!1082716)) b!6039317))

(assert (=> d!1893870 m!6907876))

(assert (=> d!1893870 m!6908740))

(assert (=> b!6039316 m!6908006))

(declare-fun m!6909520 () Bool)

(assert (=> b!6039316 m!6909520))

(assert (=> b!6039317 m!6907876))

(assert (=> b!6039317 m!6908744))

(assert (=> b!6039317 m!6908006))

(assert (=> b!6039317 m!6908744))

(declare-fun m!6909522 () Bool)

(assert (=> b!6039317 m!6909522))

(assert (=> b!6039317 m!6907876))

(assert (=> b!6039317 m!6908748))

(assert (=> b!6039317 m!6909522))

(assert (=> b!6039317 m!6908748))

(declare-fun m!6909524 () Bool)

(assert (=> b!6039317 m!6909524))

(assert (=> b!6037640 d!1893870))

(declare-fun bs!1490052 () Bool)

(declare-fun d!1893872 () Bool)

(assert (= bs!1490052 (and d!1893872 d!1893552)))

(declare-fun lambda!329447 () Int)

(assert (=> bs!1490052 (= lambda!329447 lambda!329388)))

(declare-fun bs!1490053 () Bool)

(assert (= bs!1490053 (and d!1893872 d!1893572)))

(assert (=> bs!1490053 (= lambda!329447 lambda!329392)))

(declare-fun bs!1490054 () Bool)

(assert (= bs!1490054 (and d!1893872 d!1893804)))

(assert (=> bs!1490054 (= (= (head!12577 (t!377790 s!2326)) (head!12577 s!2326)) (= lambda!329447 lambda!329438))))

(declare-fun bs!1490055 () Bool)

(assert (= bs!1490055 (and d!1893872 d!1893650)))

(assert (=> bs!1490055 (= lambda!329447 lambda!329403)))

(declare-fun bs!1490056 () Bool)

(assert (= bs!1490056 (and d!1893872 d!1893786)))

(assert (=> bs!1490056 (= lambda!329447 lambda!329437)))

(declare-fun bs!1490057 () Bool)

(assert (= bs!1490057 (and d!1893872 b!6037340)))

(assert (=> bs!1490057 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329447 lambda!329245))))

(declare-fun bs!1490058 () Bool)

(assert (= bs!1490058 (and d!1893872 d!1893728)))

(assert (=> bs!1490058 (= (= (head!12577 (t!377790 s!2326)) (head!12577 s!2326)) (= lambda!329447 lambda!329419))))

(declare-fun bs!1490059 () Bool)

(assert (= bs!1490059 (and d!1893872 d!1893736)))

(assert (=> bs!1490059 (= lambda!329447 lambda!329420)))

(declare-fun bs!1490060 () Bool)

(assert (= bs!1490060 (and d!1893872 d!1893350)))

(assert (=> bs!1490060 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329447 lambda!329312))))

(declare-fun bs!1490061 () Bool)

(assert (= bs!1490061 (and d!1893872 d!1893252)))

(assert (=> bs!1490061 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329447 lambda!329263))))

(declare-fun bs!1490062 () Bool)

(assert (= bs!1490062 (and d!1893872 d!1893288)))

(assert (=> bs!1490062 (= (= (head!12577 (t!377790 s!2326)) (h!70685 s!2326)) (= lambda!329447 lambda!329291))))

(declare-fun bs!1490063 () Bool)

(assert (= bs!1490063 (and d!1893872 d!1893840)))

(assert (=> bs!1490063 (= (= (head!12577 (t!377790 s!2326)) (head!12577 s!2326)) (= lambda!329447 lambda!329442))))

(assert (=> d!1893872 true))

(assert (=> d!1893872 (= (derivationStepZipper!2001 lt!2322721 (head!12577 (t!377790 s!2326))) (flatMap!1533 lt!2322721 lambda!329447))))

(declare-fun bs!1490064 () Bool)

(assert (= bs!1490064 d!1893872))

(declare-fun m!6909526 () Bool)

(assert (=> bs!1490064 m!6909526))

(assert (=> b!6037640 d!1893872))

(assert (=> b!6037640 d!1893554))

(assert (=> b!6037640 d!1893556))

(assert (=> d!1893254 d!1893568))

(declare-fun d!1893874 () Bool)

(assert (=> d!1893874 (= (flatMap!1533 z!1189 lambda!329312) (choose!45123 z!1189 lambda!329312))))

(declare-fun bs!1490065 () Bool)

(assert (= bs!1490065 d!1893874))

(declare-fun m!6909528 () Bool)

(assert (=> bs!1490065 m!6909528))

(assert (=> d!1893350 d!1893874))

(declare-fun d!1893876 () Bool)

(declare-fun res!2514504 () Bool)

(declare-fun e!3688965 () Bool)

(assert (=> d!1893876 (=> res!2514504 e!3688965)))

(assert (=> d!1893876 (= res!2514504 (is-Nil!64236 lt!2322702))))

(assert (=> d!1893876 (= (forall!15127 lt!2322702 lambda!329284) e!3688965)))

(declare-fun b!6039318 () Bool)

(declare-fun e!3688966 () Bool)

(assert (=> b!6039318 (= e!3688965 e!3688966)))

(declare-fun res!2514505 () Bool)

(assert (=> b!6039318 (=> (not res!2514505) (not e!3688966))))

(assert (=> b!6039318 (= res!2514505 (dynLambda!25217 lambda!329284 (h!70684 lt!2322702)))))

(declare-fun b!6039319 () Bool)

(assert (=> b!6039319 (= e!3688966 (forall!15127 (t!377789 lt!2322702) lambda!329284))))

(assert (= (and d!1893876 (not res!2514504)) b!6039318))

(assert (= (and b!6039318 res!2514505) b!6039319))

(declare-fun b_lambda!229115 () Bool)

(assert (=> (not b_lambda!229115) (not b!6039318)))

(declare-fun m!6909530 () Bool)

(assert (=> b!6039318 m!6909530))

(declare-fun m!6909532 () Bool)

(assert (=> b!6039319 m!6909532))

(assert (=> b!6037604 d!1893876))

(assert (=> b!6037801 d!1893538))

(declare-fun e!3688967 () Bool)

(assert (=> b!6038000 (= tp!1678970 e!3688967)))

(declare-fun b!6039321 () Bool)

(declare-fun tp!1679054 () Bool)

(declare-fun tp!1679055 () Bool)

(assert (=> b!6039321 (= e!3688967 (and tp!1679054 tp!1679055))))

(declare-fun b!6039320 () Bool)

(assert (=> b!6039320 (= e!3688967 tp_is_empty!41293)))

(declare-fun b!6039322 () Bool)

(declare-fun tp!1679053 () Bool)

(assert (=> b!6039322 (= e!3688967 tp!1679053)))

(declare-fun b!6039323 () Bool)

(declare-fun tp!1679056 () Bool)

(declare-fun tp!1679057 () Bool)

(assert (=> b!6039323 (= e!3688967 (and tp!1679056 tp!1679057))))

(assert (= (and b!6038000 (is-ElementMatch!16020 (h!70683 (exprs!5904 setElem!40838)))) b!6039320))

(assert (= (and b!6038000 (is-Concat!24865 (h!70683 (exprs!5904 setElem!40838)))) b!6039321))

(assert (= (and b!6038000 (is-Star!16020 (h!70683 (exprs!5904 setElem!40838)))) b!6039322))

(assert (= (and b!6038000 (is-Union!16020 (h!70683 (exprs!5904 setElem!40838)))) b!6039323))

(declare-fun b!6039324 () Bool)

(declare-fun e!3688968 () Bool)

(declare-fun tp!1679058 () Bool)

(declare-fun tp!1679059 () Bool)

(assert (=> b!6039324 (= e!3688968 (and tp!1679058 tp!1679059))))

(assert (=> b!6038000 (= tp!1678971 e!3688968)))

(assert (= (and b!6038000 (is-Cons!64235 (t!377788 (exprs!5904 setElem!40838)))) b!6039324))

(declare-fun e!3688969 () Bool)

(assert (=> b!6037973 (= tp!1678940 e!3688969)))

(declare-fun b!6039326 () Bool)

(declare-fun tp!1679061 () Bool)

(declare-fun tp!1679062 () Bool)

(assert (=> b!6039326 (= e!3688969 (and tp!1679061 tp!1679062))))

(declare-fun b!6039325 () Bool)

(assert (=> b!6039325 (= e!3688969 tp_is_empty!41293)))

(declare-fun b!6039327 () Bool)

(declare-fun tp!1679060 () Bool)

(assert (=> b!6039327 (= e!3688969 tp!1679060)))

(declare-fun b!6039328 () Bool)

(declare-fun tp!1679063 () Bool)

(declare-fun tp!1679064 () Bool)

(assert (=> b!6039328 (= e!3688969 (and tp!1679063 tp!1679064))))

(assert (= (and b!6037973 (is-ElementMatch!16020 (regOne!32553 (regTwo!32553 r!7292)))) b!6039325))

(assert (= (and b!6037973 (is-Concat!24865 (regOne!32553 (regTwo!32553 r!7292)))) b!6039326))

(assert (= (and b!6037973 (is-Star!16020 (regOne!32553 (regTwo!32553 r!7292)))) b!6039327))

(assert (= (and b!6037973 (is-Union!16020 (regOne!32553 (regTwo!32553 r!7292)))) b!6039328))

(declare-fun e!3688970 () Bool)

(assert (=> b!6037973 (= tp!1678941 e!3688970)))

(declare-fun b!6039330 () Bool)

(declare-fun tp!1679066 () Bool)

(declare-fun tp!1679067 () Bool)

(assert (=> b!6039330 (= e!3688970 (and tp!1679066 tp!1679067))))

(declare-fun b!6039329 () Bool)

(assert (=> b!6039329 (= e!3688970 tp_is_empty!41293)))

(declare-fun b!6039331 () Bool)

(declare-fun tp!1679065 () Bool)

(assert (=> b!6039331 (= e!3688970 tp!1679065)))

(declare-fun b!6039332 () Bool)

(declare-fun tp!1679068 () Bool)

(declare-fun tp!1679069 () Bool)

(assert (=> b!6039332 (= e!3688970 (and tp!1679068 tp!1679069))))

(assert (= (and b!6037973 (is-ElementMatch!16020 (regTwo!32553 (regTwo!32553 r!7292)))) b!6039329))

(assert (= (and b!6037973 (is-Concat!24865 (regTwo!32553 (regTwo!32553 r!7292)))) b!6039330))

(assert (= (and b!6037973 (is-Star!16020 (regTwo!32553 (regTwo!32553 r!7292)))) b!6039331))

(assert (= (and b!6037973 (is-Union!16020 (regTwo!32553 (regTwo!32553 r!7292)))) b!6039332))

(declare-fun b!6039334 () Bool)

(declare-fun e!3688972 () Bool)

(declare-fun tp!1679070 () Bool)

(assert (=> b!6039334 (= e!3688972 tp!1679070)))

(declare-fun e!3688971 () Bool)

(declare-fun b!6039333 () Bool)

(declare-fun tp!1679071 () Bool)

(assert (=> b!6039333 (= e!3688971 (and (inv!83298 (h!70684 (t!377789 (t!377789 zl!343)))) e!3688972 tp!1679071))))

(assert (=> b!6037980 (= tp!1678947 e!3688971)))

(assert (= b!6039333 b!6039334))

(assert (= (and b!6037980 (is-Cons!64236 (t!377789 (t!377789 zl!343)))) b!6039333))

(declare-fun m!6909534 () Bool)

(assert (=> b!6039333 m!6909534))

(declare-fun e!3688973 () Bool)

(assert (=> b!6037987 (= tp!1678954 e!3688973)))

(declare-fun b!6039336 () Bool)

(declare-fun tp!1679073 () Bool)

(declare-fun tp!1679074 () Bool)

(assert (=> b!6039336 (= e!3688973 (and tp!1679073 tp!1679074))))

(declare-fun b!6039335 () Bool)

(assert (=> b!6039335 (= e!3688973 tp_is_empty!41293)))

(declare-fun b!6039337 () Bool)

(declare-fun tp!1679072 () Bool)

(assert (=> b!6039337 (= e!3688973 tp!1679072)))

(declare-fun b!6039338 () Bool)

(declare-fun tp!1679075 () Bool)

(declare-fun tp!1679076 () Bool)

(assert (=> b!6039338 (= e!3688973 (and tp!1679075 tp!1679076))))

(assert (= (and b!6037987 (is-ElementMatch!16020 (regOne!32552 (regTwo!32552 r!7292)))) b!6039335))

(assert (= (and b!6037987 (is-Concat!24865 (regOne!32552 (regTwo!32552 r!7292)))) b!6039336))

(assert (= (and b!6037987 (is-Star!16020 (regOne!32552 (regTwo!32552 r!7292)))) b!6039337))

(assert (= (and b!6037987 (is-Union!16020 (regOne!32552 (regTwo!32552 r!7292)))) b!6039338))

(declare-fun e!3688974 () Bool)

(assert (=> b!6037987 (= tp!1678955 e!3688974)))

(declare-fun b!6039340 () Bool)

(declare-fun tp!1679078 () Bool)

(declare-fun tp!1679079 () Bool)

(assert (=> b!6039340 (= e!3688974 (and tp!1679078 tp!1679079))))

(declare-fun b!6039339 () Bool)

(assert (=> b!6039339 (= e!3688974 tp_is_empty!41293)))

(declare-fun b!6039341 () Bool)

(declare-fun tp!1679077 () Bool)

(assert (=> b!6039341 (= e!3688974 tp!1679077)))

(declare-fun b!6039342 () Bool)

(declare-fun tp!1679080 () Bool)

(declare-fun tp!1679081 () Bool)

(assert (=> b!6039342 (= e!3688974 (and tp!1679080 tp!1679081))))

(assert (= (and b!6037987 (is-ElementMatch!16020 (regTwo!32552 (regTwo!32552 r!7292)))) b!6039339))

(assert (= (and b!6037987 (is-Concat!24865 (regTwo!32552 (regTwo!32552 r!7292)))) b!6039340))

(assert (= (and b!6037987 (is-Star!16020 (regTwo!32552 (regTwo!32552 r!7292)))) b!6039341))

(assert (= (and b!6037987 (is-Union!16020 (regTwo!32552 (regTwo!32552 r!7292)))) b!6039342))

(declare-fun e!3688975 () Bool)

(assert (=> b!6037988 (= tp!1678953 e!3688975)))

(declare-fun b!6039344 () Bool)

(declare-fun tp!1679083 () Bool)

(declare-fun tp!1679084 () Bool)

(assert (=> b!6039344 (= e!3688975 (and tp!1679083 tp!1679084))))

(declare-fun b!6039343 () Bool)

(assert (=> b!6039343 (= e!3688975 tp_is_empty!41293)))

(declare-fun b!6039345 () Bool)

(declare-fun tp!1679082 () Bool)

(assert (=> b!6039345 (= e!3688975 tp!1679082)))

(declare-fun b!6039346 () Bool)

(declare-fun tp!1679085 () Bool)

(declare-fun tp!1679086 () Bool)

(assert (=> b!6039346 (= e!3688975 (and tp!1679085 tp!1679086))))

(assert (= (and b!6037988 (is-ElementMatch!16020 (reg!16349 (regTwo!32552 r!7292)))) b!6039343))

(assert (= (and b!6037988 (is-Concat!24865 (reg!16349 (regTwo!32552 r!7292)))) b!6039344))

(assert (= (and b!6037988 (is-Star!16020 (reg!16349 (regTwo!32552 r!7292)))) b!6039345))

(assert (= (and b!6037988 (is-Union!16020 (reg!16349 (regTwo!32552 r!7292)))) b!6039346))

(declare-fun b!6039347 () Bool)

(declare-fun e!3688976 () Bool)

(declare-fun tp!1679087 () Bool)

(declare-fun tp!1679088 () Bool)

(assert (=> b!6039347 (= e!3688976 (and tp!1679087 tp!1679088))))

(assert (=> b!6037981 (= tp!1678946 e!3688976)))

(assert (= (and b!6037981 (is-Cons!64235 (exprs!5904 (h!70684 (t!377789 zl!343))))) b!6039347))

(declare-fun e!3688977 () Bool)

(assert (=> b!6037989 (= tp!1678956 e!3688977)))

(declare-fun b!6039349 () Bool)

(declare-fun tp!1679090 () Bool)

(declare-fun tp!1679091 () Bool)

(assert (=> b!6039349 (= e!3688977 (and tp!1679090 tp!1679091))))

(declare-fun b!6039348 () Bool)

(assert (=> b!6039348 (= e!3688977 tp_is_empty!41293)))

(declare-fun b!6039350 () Bool)

(declare-fun tp!1679089 () Bool)

(assert (=> b!6039350 (= e!3688977 tp!1679089)))

(declare-fun b!6039351 () Bool)

(declare-fun tp!1679092 () Bool)

(declare-fun tp!1679093 () Bool)

(assert (=> b!6039351 (= e!3688977 (and tp!1679092 tp!1679093))))

(assert (= (and b!6037989 (is-ElementMatch!16020 (regOne!32553 (regTwo!32552 r!7292)))) b!6039348))

(assert (= (and b!6037989 (is-Concat!24865 (regOne!32553 (regTwo!32552 r!7292)))) b!6039349))

(assert (= (and b!6037989 (is-Star!16020 (regOne!32553 (regTwo!32552 r!7292)))) b!6039350))

(assert (= (and b!6037989 (is-Union!16020 (regOne!32553 (regTwo!32552 r!7292)))) b!6039351))

(declare-fun e!3688978 () Bool)

(assert (=> b!6037989 (= tp!1678957 e!3688978)))

(declare-fun b!6039353 () Bool)

(declare-fun tp!1679095 () Bool)

(declare-fun tp!1679096 () Bool)

(assert (=> b!6039353 (= e!3688978 (and tp!1679095 tp!1679096))))

(declare-fun b!6039352 () Bool)

(assert (=> b!6039352 (= e!3688978 tp_is_empty!41293)))

(declare-fun b!6039354 () Bool)

(declare-fun tp!1679094 () Bool)

(assert (=> b!6039354 (= e!3688978 tp!1679094)))

(declare-fun b!6039355 () Bool)

(declare-fun tp!1679097 () Bool)

(declare-fun tp!1679098 () Bool)

(assert (=> b!6039355 (= e!3688978 (and tp!1679097 tp!1679098))))

(assert (= (and b!6037989 (is-ElementMatch!16020 (regTwo!32553 (regTwo!32552 r!7292)))) b!6039352))

(assert (= (and b!6037989 (is-Concat!24865 (regTwo!32553 (regTwo!32552 r!7292)))) b!6039353))

(assert (= (and b!6037989 (is-Star!16020 (regTwo!32553 (regTwo!32552 r!7292)))) b!6039354))

(assert (= (and b!6037989 (is-Union!16020 (regTwo!32553 (regTwo!32552 r!7292)))) b!6039355))

(declare-fun condSetEmpty!40853 () Bool)

(assert (=> setNonEmpty!40844 (= condSetEmpty!40853 (= setRest!40844 (as set.empty (Set Context!10808))))))

(declare-fun setRes!40853 () Bool)

(assert (=> setNonEmpty!40844 (= tp!1678963 setRes!40853)))

(declare-fun setIsEmpty!40853 () Bool)

(assert (=> setIsEmpty!40853 setRes!40853))

(declare-fun tp!1679100 () Bool)

(declare-fun setElem!40853 () Context!10808)

(declare-fun setNonEmpty!40853 () Bool)

(declare-fun e!3688979 () Bool)

(assert (=> setNonEmpty!40853 (= setRes!40853 (and tp!1679100 (inv!83298 setElem!40853) e!3688979))))

(declare-fun setRest!40853 () (Set Context!10808))

(assert (=> setNonEmpty!40853 (= setRest!40844 (set.union (set.insert setElem!40853 (as set.empty (Set Context!10808))) setRest!40853))))

(declare-fun b!6039356 () Bool)

(declare-fun tp!1679099 () Bool)

(assert (=> b!6039356 (= e!3688979 tp!1679099)))

(assert (= (and setNonEmpty!40844 condSetEmpty!40853) setIsEmpty!40853))

(assert (= (and setNonEmpty!40844 (not condSetEmpty!40853)) setNonEmpty!40853))

(assert (= setNonEmpty!40853 b!6039356))

(declare-fun m!6909536 () Bool)

(assert (=> setNonEmpty!40853 m!6909536))

(declare-fun e!3688980 () Bool)

(assert (=> b!6037999 (= tp!1678968 e!3688980)))

(declare-fun b!6039358 () Bool)

(declare-fun tp!1679102 () Bool)

(declare-fun tp!1679103 () Bool)

(assert (=> b!6039358 (= e!3688980 (and tp!1679102 tp!1679103))))

(declare-fun b!6039357 () Bool)

(assert (=> b!6039357 (= e!3688980 tp_is_empty!41293)))

(declare-fun b!6039359 () Bool)

(declare-fun tp!1679101 () Bool)

(assert (=> b!6039359 (= e!3688980 tp!1679101)))

(declare-fun b!6039360 () Bool)

(declare-fun tp!1679104 () Bool)

(declare-fun tp!1679105 () Bool)

(assert (=> b!6039360 (= e!3688980 (and tp!1679104 tp!1679105))))

(assert (= (and b!6037999 (is-ElementMatch!16020 (h!70683 (exprs!5904 (h!70684 zl!343))))) b!6039357))

(assert (= (and b!6037999 (is-Concat!24865 (h!70683 (exprs!5904 (h!70684 zl!343))))) b!6039358))

(assert (= (and b!6037999 (is-Star!16020 (h!70683 (exprs!5904 (h!70684 zl!343))))) b!6039359))

(assert (= (and b!6037999 (is-Union!16020 (h!70683 (exprs!5904 (h!70684 zl!343))))) b!6039360))

(declare-fun b!6039361 () Bool)

(declare-fun e!3688981 () Bool)

(declare-fun tp!1679106 () Bool)

(declare-fun tp!1679107 () Bool)

(assert (=> b!6039361 (= e!3688981 (and tp!1679106 tp!1679107))))

(assert (=> b!6037999 (= tp!1678969 e!3688981)))

(assert (= (and b!6037999 (is-Cons!64235 (t!377788 (exprs!5904 (h!70684 zl!343))))) b!6039361))

(declare-fun b!6039362 () Bool)

(declare-fun e!3688982 () Bool)

(declare-fun tp!1679108 () Bool)

(declare-fun tp!1679109 () Bool)

(assert (=> b!6039362 (= e!3688982 (and tp!1679108 tp!1679109))))

(assert (=> b!6037994 (= tp!1678962 e!3688982)))

(assert (= (and b!6037994 (is-Cons!64235 (exprs!5904 setElem!40844))) b!6039362))

(declare-fun b!6039363 () Bool)

(declare-fun e!3688983 () Bool)

(declare-fun tp!1679110 () Bool)

(assert (=> b!6039363 (= e!3688983 (and tp_is_empty!41293 tp!1679110))))

(assert (=> b!6037955 (= tp!1678921 e!3688983)))

(assert (= (and b!6037955 (is-Cons!64237 (t!377790 (t!377790 s!2326)))) b!6039363))

(declare-fun e!3688984 () Bool)

(assert (=> b!6037971 (= tp!1678938 e!3688984)))

(declare-fun b!6039365 () Bool)

(declare-fun tp!1679112 () Bool)

(declare-fun tp!1679113 () Bool)

(assert (=> b!6039365 (= e!3688984 (and tp!1679112 tp!1679113))))

(declare-fun b!6039364 () Bool)

(assert (=> b!6039364 (= e!3688984 tp_is_empty!41293)))

(declare-fun b!6039366 () Bool)

(declare-fun tp!1679111 () Bool)

(assert (=> b!6039366 (= e!3688984 tp!1679111)))

(declare-fun b!6039367 () Bool)

(declare-fun tp!1679114 () Bool)

(declare-fun tp!1679115 () Bool)

(assert (=> b!6039367 (= e!3688984 (and tp!1679114 tp!1679115))))

(assert (= (and b!6037971 (is-ElementMatch!16020 (regOne!32552 (regTwo!32553 r!7292)))) b!6039364))

(assert (= (and b!6037971 (is-Concat!24865 (regOne!32552 (regTwo!32553 r!7292)))) b!6039365))

(assert (= (and b!6037971 (is-Star!16020 (regOne!32552 (regTwo!32553 r!7292)))) b!6039366))

(assert (= (and b!6037971 (is-Union!16020 (regOne!32552 (regTwo!32553 r!7292)))) b!6039367))

(declare-fun e!3688985 () Bool)

(assert (=> b!6037971 (= tp!1678939 e!3688985)))

(declare-fun b!6039369 () Bool)

(declare-fun tp!1679117 () Bool)

(declare-fun tp!1679118 () Bool)

(assert (=> b!6039369 (= e!3688985 (and tp!1679117 tp!1679118))))

(declare-fun b!6039368 () Bool)

(assert (=> b!6039368 (= e!3688985 tp_is_empty!41293)))

(declare-fun b!6039370 () Bool)

(declare-fun tp!1679116 () Bool)

(assert (=> b!6039370 (= e!3688985 tp!1679116)))

(declare-fun b!6039371 () Bool)

(declare-fun tp!1679119 () Bool)

(declare-fun tp!1679120 () Bool)

(assert (=> b!6039371 (= e!3688985 (and tp!1679119 tp!1679120))))

(assert (= (and b!6037971 (is-ElementMatch!16020 (regTwo!32552 (regTwo!32553 r!7292)))) b!6039368))

(assert (= (and b!6037971 (is-Concat!24865 (regTwo!32552 (regTwo!32553 r!7292)))) b!6039369))

(assert (= (and b!6037971 (is-Star!16020 (regTwo!32552 (regTwo!32553 r!7292)))) b!6039370))

(assert (= (and b!6037971 (is-Union!16020 (regTwo!32552 (regTwo!32553 r!7292)))) b!6039371))

(declare-fun e!3688986 () Bool)

(assert (=> b!6037972 (= tp!1678937 e!3688986)))

(declare-fun b!6039373 () Bool)

(declare-fun tp!1679122 () Bool)

(declare-fun tp!1679123 () Bool)

(assert (=> b!6039373 (= e!3688986 (and tp!1679122 tp!1679123))))

(declare-fun b!6039372 () Bool)

(assert (=> b!6039372 (= e!3688986 tp_is_empty!41293)))

(declare-fun b!6039374 () Bool)

(declare-fun tp!1679121 () Bool)

(assert (=> b!6039374 (= e!3688986 tp!1679121)))

(declare-fun b!6039375 () Bool)

(declare-fun tp!1679124 () Bool)

(declare-fun tp!1679125 () Bool)

(assert (=> b!6039375 (= e!3688986 (and tp!1679124 tp!1679125))))

(assert (= (and b!6037972 (is-ElementMatch!16020 (reg!16349 (regTwo!32553 r!7292)))) b!6039372))

(assert (= (and b!6037972 (is-Concat!24865 (reg!16349 (regTwo!32553 r!7292)))) b!6039373))

(assert (= (and b!6037972 (is-Star!16020 (reg!16349 (regTwo!32553 r!7292)))) b!6039374))

(assert (= (and b!6037972 (is-Union!16020 (reg!16349 (regTwo!32553 r!7292)))) b!6039375))

(declare-fun e!3688987 () Bool)

(assert (=> b!6037968 (= tp!1678932 e!3688987)))

(declare-fun b!6039377 () Bool)

(declare-fun tp!1679127 () Bool)

(declare-fun tp!1679128 () Bool)

(assert (=> b!6039377 (= e!3688987 (and tp!1679127 tp!1679128))))

(declare-fun b!6039376 () Bool)

(assert (=> b!6039376 (= e!3688987 tp_is_empty!41293)))

(declare-fun b!6039378 () Bool)

(declare-fun tp!1679126 () Bool)

(assert (=> b!6039378 (= e!3688987 tp!1679126)))

(declare-fun b!6039379 () Bool)

(declare-fun tp!1679129 () Bool)

(declare-fun tp!1679130 () Bool)

(assert (=> b!6039379 (= e!3688987 (and tp!1679129 tp!1679130))))

(assert (= (and b!6037968 (is-ElementMatch!16020 (reg!16349 (regOne!32553 r!7292)))) b!6039376))

(assert (= (and b!6037968 (is-Concat!24865 (reg!16349 (regOne!32553 r!7292)))) b!6039377))

(assert (= (and b!6037968 (is-Star!16020 (reg!16349 (regOne!32553 r!7292)))) b!6039378))

(assert (= (and b!6037968 (is-Union!16020 (reg!16349 (regOne!32553 r!7292)))) b!6039379))

(declare-fun e!3688988 () Bool)

(assert (=> b!6037969 (= tp!1678935 e!3688988)))

(declare-fun b!6039381 () Bool)

(declare-fun tp!1679132 () Bool)

(declare-fun tp!1679133 () Bool)

(assert (=> b!6039381 (= e!3688988 (and tp!1679132 tp!1679133))))

(declare-fun b!6039380 () Bool)

(assert (=> b!6039380 (= e!3688988 tp_is_empty!41293)))

(declare-fun b!6039382 () Bool)

(declare-fun tp!1679131 () Bool)

(assert (=> b!6039382 (= e!3688988 tp!1679131)))

(declare-fun b!6039383 () Bool)

(declare-fun tp!1679134 () Bool)

(declare-fun tp!1679135 () Bool)

(assert (=> b!6039383 (= e!3688988 (and tp!1679134 tp!1679135))))

(assert (= (and b!6037969 (is-ElementMatch!16020 (regOne!32553 (regOne!32553 r!7292)))) b!6039380))

(assert (= (and b!6037969 (is-Concat!24865 (regOne!32553 (regOne!32553 r!7292)))) b!6039381))

(assert (= (and b!6037969 (is-Star!16020 (regOne!32553 (regOne!32553 r!7292)))) b!6039382))

(assert (= (and b!6037969 (is-Union!16020 (regOne!32553 (regOne!32553 r!7292)))) b!6039383))

(declare-fun e!3688989 () Bool)

(assert (=> b!6037969 (= tp!1678936 e!3688989)))

(declare-fun b!6039385 () Bool)

(declare-fun tp!1679137 () Bool)

(declare-fun tp!1679138 () Bool)

(assert (=> b!6039385 (= e!3688989 (and tp!1679137 tp!1679138))))

(declare-fun b!6039384 () Bool)

(assert (=> b!6039384 (= e!3688989 tp_is_empty!41293)))

(declare-fun b!6039386 () Bool)

(declare-fun tp!1679136 () Bool)

(assert (=> b!6039386 (= e!3688989 tp!1679136)))

(declare-fun b!6039387 () Bool)

(declare-fun tp!1679139 () Bool)

(declare-fun tp!1679140 () Bool)

(assert (=> b!6039387 (= e!3688989 (and tp!1679139 tp!1679140))))

(assert (= (and b!6037969 (is-ElementMatch!16020 (regTwo!32553 (regOne!32553 r!7292)))) b!6039384))

(assert (= (and b!6037969 (is-Concat!24865 (regTwo!32553 (regOne!32553 r!7292)))) b!6039385))

(assert (= (and b!6037969 (is-Star!16020 (regTwo!32553 (regOne!32553 r!7292)))) b!6039386))

(assert (= (and b!6037969 (is-Union!16020 (regTwo!32553 (regOne!32553 r!7292)))) b!6039387))

(declare-fun e!3688990 () Bool)

(assert (=> b!6037983 (= tp!1678949 e!3688990)))

(declare-fun b!6039389 () Bool)

(declare-fun tp!1679142 () Bool)

(declare-fun tp!1679143 () Bool)

(assert (=> b!6039389 (= e!3688990 (and tp!1679142 tp!1679143))))

(declare-fun b!6039388 () Bool)

(assert (=> b!6039388 (= e!3688990 tp_is_empty!41293)))

(declare-fun b!6039390 () Bool)

(declare-fun tp!1679141 () Bool)

(assert (=> b!6039390 (= e!3688990 tp!1679141)))

(declare-fun b!6039391 () Bool)

(declare-fun tp!1679144 () Bool)

(declare-fun tp!1679145 () Bool)

(assert (=> b!6039391 (= e!3688990 (and tp!1679144 tp!1679145))))

(assert (= (and b!6037983 (is-ElementMatch!16020 (regOne!32552 (regOne!32552 r!7292)))) b!6039388))

(assert (= (and b!6037983 (is-Concat!24865 (regOne!32552 (regOne!32552 r!7292)))) b!6039389))

(assert (= (and b!6037983 (is-Star!16020 (regOne!32552 (regOne!32552 r!7292)))) b!6039390))

(assert (= (and b!6037983 (is-Union!16020 (regOne!32552 (regOne!32552 r!7292)))) b!6039391))

(declare-fun e!3688991 () Bool)

(assert (=> b!6037983 (= tp!1678950 e!3688991)))

(declare-fun b!6039393 () Bool)

(declare-fun tp!1679147 () Bool)

(declare-fun tp!1679148 () Bool)

(assert (=> b!6039393 (= e!3688991 (and tp!1679147 tp!1679148))))

(declare-fun b!6039392 () Bool)

(assert (=> b!6039392 (= e!3688991 tp_is_empty!41293)))

(declare-fun b!6039394 () Bool)

(declare-fun tp!1679146 () Bool)

(assert (=> b!6039394 (= e!3688991 tp!1679146)))

(declare-fun b!6039395 () Bool)

(declare-fun tp!1679149 () Bool)

(declare-fun tp!1679150 () Bool)

(assert (=> b!6039395 (= e!3688991 (and tp!1679149 tp!1679150))))

(assert (= (and b!6037983 (is-ElementMatch!16020 (regTwo!32552 (regOne!32552 r!7292)))) b!6039392))

(assert (= (and b!6037983 (is-Concat!24865 (regTwo!32552 (regOne!32552 r!7292)))) b!6039393))

(assert (= (and b!6037983 (is-Star!16020 (regTwo!32552 (regOne!32552 r!7292)))) b!6039394))

(assert (= (and b!6037983 (is-Union!16020 (regTwo!32552 (regOne!32552 r!7292)))) b!6039395))

(declare-fun e!3688992 () Bool)

(assert (=> b!6037984 (= tp!1678948 e!3688992)))

(declare-fun b!6039397 () Bool)

(declare-fun tp!1679152 () Bool)

(declare-fun tp!1679153 () Bool)

(assert (=> b!6039397 (= e!3688992 (and tp!1679152 tp!1679153))))

(declare-fun b!6039396 () Bool)

(assert (=> b!6039396 (= e!3688992 tp_is_empty!41293)))

(declare-fun b!6039398 () Bool)

(declare-fun tp!1679151 () Bool)

(assert (=> b!6039398 (= e!3688992 tp!1679151)))

(declare-fun b!6039399 () Bool)

(declare-fun tp!1679154 () Bool)

(declare-fun tp!1679155 () Bool)

(assert (=> b!6039399 (= e!3688992 (and tp!1679154 tp!1679155))))

(assert (= (and b!6037984 (is-ElementMatch!16020 (reg!16349 (regOne!32552 r!7292)))) b!6039396))

(assert (= (and b!6037984 (is-Concat!24865 (reg!16349 (regOne!32552 r!7292)))) b!6039397))

(assert (= (and b!6037984 (is-Star!16020 (reg!16349 (regOne!32552 r!7292)))) b!6039398))

(assert (= (and b!6037984 (is-Union!16020 (reg!16349 (regOne!32552 r!7292)))) b!6039399))

(declare-fun e!3688993 () Bool)

(assert (=> b!6037985 (= tp!1678951 e!3688993)))

(declare-fun b!6039401 () Bool)

(declare-fun tp!1679157 () Bool)

(declare-fun tp!1679158 () Bool)

(assert (=> b!6039401 (= e!3688993 (and tp!1679157 tp!1679158))))

(declare-fun b!6039400 () Bool)

(assert (=> b!6039400 (= e!3688993 tp_is_empty!41293)))

(declare-fun b!6039402 () Bool)

(declare-fun tp!1679156 () Bool)

(assert (=> b!6039402 (= e!3688993 tp!1679156)))

(declare-fun b!6039403 () Bool)

(declare-fun tp!1679159 () Bool)

(declare-fun tp!1679160 () Bool)

(assert (=> b!6039403 (= e!3688993 (and tp!1679159 tp!1679160))))

(assert (= (and b!6037985 (is-ElementMatch!16020 (regOne!32553 (regOne!32552 r!7292)))) b!6039400))

(assert (= (and b!6037985 (is-Concat!24865 (regOne!32553 (regOne!32552 r!7292)))) b!6039401))

(assert (= (and b!6037985 (is-Star!16020 (regOne!32553 (regOne!32552 r!7292)))) b!6039402))

(assert (= (and b!6037985 (is-Union!16020 (regOne!32553 (regOne!32552 r!7292)))) b!6039403))

(declare-fun e!3688994 () Bool)

(assert (=> b!6037985 (= tp!1678952 e!3688994)))

(declare-fun b!6039405 () Bool)

(declare-fun tp!1679162 () Bool)

(declare-fun tp!1679163 () Bool)

(assert (=> b!6039405 (= e!3688994 (and tp!1679162 tp!1679163))))

(declare-fun b!6039404 () Bool)

(assert (=> b!6039404 (= e!3688994 tp_is_empty!41293)))

(declare-fun b!6039406 () Bool)

(declare-fun tp!1679161 () Bool)

(assert (=> b!6039406 (= e!3688994 tp!1679161)))

(declare-fun b!6039407 () Bool)

(declare-fun tp!1679164 () Bool)

(declare-fun tp!1679165 () Bool)

(assert (=> b!6039407 (= e!3688994 (and tp!1679164 tp!1679165))))

(assert (= (and b!6037985 (is-ElementMatch!16020 (regTwo!32553 (regOne!32552 r!7292)))) b!6039404))

(assert (= (and b!6037985 (is-Concat!24865 (regTwo!32553 (regOne!32552 r!7292)))) b!6039405))

(assert (= (and b!6037985 (is-Star!16020 (regTwo!32553 (regOne!32552 r!7292)))) b!6039406))

(assert (= (and b!6037985 (is-Union!16020 (regTwo!32553 (regOne!32552 r!7292)))) b!6039407))

(declare-fun e!3688995 () Bool)

(assert (=> b!6038002 (= tp!1678973 e!3688995)))

(declare-fun b!6039409 () Bool)

(declare-fun tp!1679167 () Bool)

(declare-fun tp!1679168 () Bool)

(assert (=> b!6039409 (= e!3688995 (and tp!1679167 tp!1679168))))

(declare-fun b!6039408 () Bool)

(assert (=> b!6039408 (= e!3688995 tp_is_empty!41293)))

(declare-fun b!6039410 () Bool)

(declare-fun tp!1679166 () Bool)

(assert (=> b!6039410 (= e!3688995 tp!1679166)))

(declare-fun b!6039411 () Bool)

(declare-fun tp!1679169 () Bool)

(declare-fun tp!1679170 () Bool)

(assert (=> b!6039411 (= e!3688995 (and tp!1679169 tp!1679170))))

(assert (= (and b!6038002 (is-ElementMatch!16020 (regOne!32552 (reg!16349 r!7292)))) b!6039408))

(assert (= (and b!6038002 (is-Concat!24865 (regOne!32552 (reg!16349 r!7292)))) b!6039409))

(assert (= (and b!6038002 (is-Star!16020 (regOne!32552 (reg!16349 r!7292)))) b!6039410))

(assert (= (and b!6038002 (is-Union!16020 (regOne!32552 (reg!16349 r!7292)))) b!6039411))

(declare-fun e!3688996 () Bool)

(assert (=> b!6038002 (= tp!1678974 e!3688996)))

(declare-fun b!6039413 () Bool)

(declare-fun tp!1679172 () Bool)

(declare-fun tp!1679173 () Bool)

(assert (=> b!6039413 (= e!3688996 (and tp!1679172 tp!1679173))))

(declare-fun b!6039412 () Bool)

(assert (=> b!6039412 (= e!3688996 tp_is_empty!41293)))

(declare-fun b!6039414 () Bool)

(declare-fun tp!1679171 () Bool)

(assert (=> b!6039414 (= e!3688996 tp!1679171)))

(declare-fun b!6039415 () Bool)

(declare-fun tp!1679174 () Bool)

(declare-fun tp!1679175 () Bool)

(assert (=> b!6039415 (= e!3688996 (and tp!1679174 tp!1679175))))

(assert (= (and b!6038002 (is-ElementMatch!16020 (regTwo!32552 (reg!16349 r!7292)))) b!6039412))

(assert (= (and b!6038002 (is-Concat!24865 (regTwo!32552 (reg!16349 r!7292)))) b!6039413))

(assert (= (and b!6038002 (is-Star!16020 (regTwo!32552 (reg!16349 r!7292)))) b!6039414))

(assert (= (and b!6038002 (is-Union!16020 (regTwo!32552 (reg!16349 r!7292)))) b!6039415))

(declare-fun e!3688997 () Bool)

(assert (=> b!6038003 (= tp!1678972 e!3688997)))

(declare-fun b!6039417 () Bool)

(declare-fun tp!1679177 () Bool)

(declare-fun tp!1679178 () Bool)

(assert (=> b!6039417 (= e!3688997 (and tp!1679177 tp!1679178))))

(declare-fun b!6039416 () Bool)

(assert (=> b!6039416 (= e!3688997 tp_is_empty!41293)))

(declare-fun b!6039418 () Bool)

(declare-fun tp!1679176 () Bool)

(assert (=> b!6039418 (= e!3688997 tp!1679176)))

(declare-fun b!6039419 () Bool)

(declare-fun tp!1679179 () Bool)

(declare-fun tp!1679180 () Bool)

(assert (=> b!6039419 (= e!3688997 (and tp!1679179 tp!1679180))))

(assert (= (and b!6038003 (is-ElementMatch!16020 (reg!16349 (reg!16349 r!7292)))) b!6039416))

(assert (= (and b!6038003 (is-Concat!24865 (reg!16349 (reg!16349 r!7292)))) b!6039417))

(assert (= (and b!6038003 (is-Star!16020 (reg!16349 (reg!16349 r!7292)))) b!6039418))

(assert (= (and b!6038003 (is-Union!16020 (reg!16349 (reg!16349 r!7292)))) b!6039419))

(declare-fun e!3688998 () Bool)

(assert (=> b!6038004 (= tp!1678975 e!3688998)))

(declare-fun b!6039421 () Bool)

(declare-fun tp!1679182 () Bool)

(declare-fun tp!1679183 () Bool)

(assert (=> b!6039421 (= e!3688998 (and tp!1679182 tp!1679183))))

(declare-fun b!6039420 () Bool)

(assert (=> b!6039420 (= e!3688998 tp_is_empty!41293)))

(declare-fun b!6039422 () Bool)

(declare-fun tp!1679181 () Bool)

(assert (=> b!6039422 (= e!3688998 tp!1679181)))

(declare-fun b!6039423 () Bool)

(declare-fun tp!1679184 () Bool)

(declare-fun tp!1679185 () Bool)

(assert (=> b!6039423 (= e!3688998 (and tp!1679184 tp!1679185))))

(assert (= (and b!6038004 (is-ElementMatch!16020 (regOne!32553 (reg!16349 r!7292)))) b!6039420))

(assert (= (and b!6038004 (is-Concat!24865 (regOne!32553 (reg!16349 r!7292)))) b!6039421))

(assert (= (and b!6038004 (is-Star!16020 (regOne!32553 (reg!16349 r!7292)))) b!6039422))

(assert (= (and b!6038004 (is-Union!16020 (regOne!32553 (reg!16349 r!7292)))) b!6039423))

(declare-fun e!3688999 () Bool)

(assert (=> b!6038004 (= tp!1678976 e!3688999)))

(declare-fun b!6039425 () Bool)

(declare-fun tp!1679187 () Bool)

(declare-fun tp!1679188 () Bool)

(assert (=> b!6039425 (= e!3688999 (and tp!1679187 tp!1679188))))

(declare-fun b!6039424 () Bool)

(assert (=> b!6039424 (= e!3688999 tp_is_empty!41293)))

(declare-fun b!6039426 () Bool)

(declare-fun tp!1679186 () Bool)

(assert (=> b!6039426 (= e!3688999 tp!1679186)))

(declare-fun b!6039427 () Bool)

(declare-fun tp!1679189 () Bool)

(declare-fun tp!1679190 () Bool)

(assert (=> b!6039427 (= e!3688999 (and tp!1679189 tp!1679190))))

(assert (= (and b!6038004 (is-ElementMatch!16020 (regTwo!32553 (reg!16349 r!7292)))) b!6039424))

(assert (= (and b!6038004 (is-Concat!24865 (regTwo!32553 (reg!16349 r!7292)))) b!6039425))

(assert (= (and b!6038004 (is-Star!16020 (regTwo!32553 (reg!16349 r!7292)))) b!6039426))

(assert (= (and b!6038004 (is-Union!16020 (regTwo!32553 (reg!16349 r!7292)))) b!6039427))

(declare-fun e!3689000 () Bool)

(assert (=> b!6037967 (= tp!1678933 e!3689000)))

(declare-fun b!6039429 () Bool)

(declare-fun tp!1679192 () Bool)

(declare-fun tp!1679193 () Bool)

(assert (=> b!6039429 (= e!3689000 (and tp!1679192 tp!1679193))))

(declare-fun b!6039428 () Bool)

(assert (=> b!6039428 (= e!3689000 tp_is_empty!41293)))

(declare-fun b!6039430 () Bool)

(declare-fun tp!1679191 () Bool)

(assert (=> b!6039430 (= e!3689000 tp!1679191)))

(declare-fun b!6039431 () Bool)

(declare-fun tp!1679194 () Bool)

(declare-fun tp!1679195 () Bool)

(assert (=> b!6039431 (= e!3689000 (and tp!1679194 tp!1679195))))

(assert (= (and b!6037967 (is-ElementMatch!16020 (regOne!32552 (regOne!32553 r!7292)))) b!6039428))

(assert (= (and b!6037967 (is-Concat!24865 (regOne!32552 (regOne!32553 r!7292)))) b!6039429))

(assert (= (and b!6037967 (is-Star!16020 (regOne!32552 (regOne!32553 r!7292)))) b!6039430))

(assert (= (and b!6037967 (is-Union!16020 (regOne!32552 (regOne!32553 r!7292)))) b!6039431))

(declare-fun e!3689001 () Bool)

(assert (=> b!6037967 (= tp!1678934 e!3689001)))

(declare-fun b!6039433 () Bool)

(declare-fun tp!1679197 () Bool)

(declare-fun tp!1679198 () Bool)

(assert (=> b!6039433 (= e!3689001 (and tp!1679197 tp!1679198))))

(declare-fun b!6039432 () Bool)

(assert (=> b!6039432 (= e!3689001 tp_is_empty!41293)))

(declare-fun b!6039434 () Bool)

(declare-fun tp!1679196 () Bool)

(assert (=> b!6039434 (= e!3689001 tp!1679196)))

(declare-fun b!6039435 () Bool)

(declare-fun tp!1679199 () Bool)

(declare-fun tp!1679200 () Bool)

(assert (=> b!6039435 (= e!3689001 (and tp!1679199 tp!1679200))))

(assert (= (and b!6037967 (is-ElementMatch!16020 (regTwo!32552 (regOne!32553 r!7292)))) b!6039432))

(assert (= (and b!6037967 (is-Concat!24865 (regTwo!32552 (regOne!32553 r!7292)))) b!6039433))

(assert (= (and b!6037967 (is-Star!16020 (regTwo!32552 (regOne!32553 r!7292)))) b!6039434))

(assert (= (and b!6037967 (is-Union!16020 (regTwo!32552 (regOne!32553 r!7292)))) b!6039435))

(declare-fun b_lambda!229117 () Bool)

(assert (= b_lambda!229109 (or b!6037654 b_lambda!229117)))

(declare-fun bs!1490066 () Bool)

(declare-fun d!1893878 () Bool)

(assert (= bs!1490066 (and d!1893878 b!6037654)))

(assert (=> bs!1490066 (= (dynLambda!25216 lambda!329296 (h!70683 (t!377788 (exprs!5904 lt!2322710)))) (>= lt!2322913 (regexDepth!277 (h!70683 (t!377788 (exprs!5904 lt!2322710))))))))

(declare-fun m!6909538 () Bool)

(assert (=> bs!1490066 m!6909538))

(assert (=> b!6039138 d!1893878))

(declare-fun b_lambda!229119 () Bool)

(assert (= b_lambda!229079 (or b!6037716 b_lambda!229119)))

(declare-fun bs!1490067 () Bool)

(declare-fun d!1893880 () Bool)

(assert (= bs!1490067 (and d!1893880 b!6037716)))

(assert (=> bs!1490067 (= (dynLambda!25216 lambda!329300 (h!70683 (t!377788 (exprs!5904 lt!2322733)))) (>= lt!2322923 (regexDepth!277 (h!70683 (t!377788 (exprs!5904 lt!2322733))))))))

(declare-fun m!6909540 () Bool)

(assert (=> bs!1490067 m!6909540))

(assert (=> b!6038599 d!1893880))

(declare-fun b_lambda!229121 () Bool)

(assert (= b_lambda!229101 (or b!6037602 b_lambda!229121)))

(declare-fun bs!1490068 () Bool)

(declare-fun d!1893882 () Bool)

(assert (= bs!1490068 (and d!1893882 b!6037602)))

(assert (=> bs!1490068 (= (dynLambda!25217 lambda!329283 (h!70684 (t!377789 lt!2322702))) (>= lt!2322894 (contextDepth!168 (h!70684 (t!377789 lt!2322702)))))))

(assert (=> bs!1490068 m!6909084))

(assert (=> b!6038911 d!1893882))

(declare-fun b_lambda!229123 () Bool)

(assert (= b_lambda!229115 (or b!6037604 b_lambda!229123)))

(declare-fun bs!1490069 () Bool)

(declare-fun d!1893884 () Bool)

(assert (= bs!1490069 (and d!1893884 b!6037604)))

(assert (=> bs!1490069 (= (dynLambda!25217 lambda!329284 (h!70684 lt!2322702)) (>= lt!2322893 (contextDepth!168 (h!70684 lt!2322702))))))

(assert (=> bs!1490069 m!6907962))

(assert (=> b!6039318 d!1893884))

(declare-fun b_lambda!229125 () Bool)

(assert (= b_lambda!229087 (or d!1893334 b_lambda!229125)))

(declare-fun bs!1490070 () Bool)

(declare-fun d!1893886 () Bool)

(assert (= bs!1490070 (and d!1893886 d!1893334)))

(assert (=> bs!1490070 (= (dynLambda!25216 lambda!329310 (h!70683 (exprs!5904 (h!70684 zl!343)))) (validRegex!7756 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(declare-fun m!6909542 () Bool)

(assert (=> bs!1490070 m!6909542))

(assert (=> b!6038707 d!1893886))

(declare-fun b_lambda!229127 () Bool)

(assert (= b_lambda!229103 (or b!6037661 b_lambda!229127)))

(declare-fun bs!1490071 () Bool)

(declare-fun d!1893888 () Bool)

(assert (= bs!1490071 (and d!1893888 b!6037661)))

(assert (=> bs!1490071 (= (dynLambda!25216 lambda!329299 (h!70683 (exprs!5904 lt!2322698))) (>= lt!2322915 (regexDepth!277 (h!70683 (exprs!5904 lt!2322698)))))))

(assert (=> bs!1490071 m!6908038))

(assert (=> b!6038995 d!1893888))

(declare-fun b_lambda!229129 () Bool)

(assert (= b_lambda!229095 (or d!1893332 b_lambda!229129)))

(declare-fun bs!1490072 () Bool)

(declare-fun d!1893890 () Bool)

(assert (= bs!1490072 (and d!1893890 d!1893332)))

(assert (=> bs!1490072 (= (dynLambda!25216 lambda!329307 (h!70683 lt!2322930)) (validRegex!7756 (h!70683 lt!2322930)))))

(declare-fun m!6909544 () Bool)

(assert (=> bs!1490072 m!6909544))

(assert (=> b!6038837 d!1893890))

(declare-fun b_lambda!229131 () Bool)

(assert (= b_lambda!229107 (or b!6037718 b_lambda!229131)))

(declare-fun bs!1490073 () Bool)

(declare-fun d!1893892 () Bool)

(assert (= bs!1490073 (and d!1893892 b!6037718)))

(assert (=> bs!1490073 (= (dynLambda!25216 lambda!329301 (h!70683 (exprs!5904 lt!2322733))) (>= lt!2322921 (regexDepth!277 (h!70683 (exprs!5904 lt!2322733)))))))

(assert (=> bs!1490073 m!6908094))

(assert (=> b!6039115 d!1893892))

(declare-fun b_lambda!229133 () Bool)

(assert (= b_lambda!229081 (or b!6037340 b_lambda!229133)))

(assert (=> d!1893546 d!1893364))

(declare-fun b_lambda!229135 () Bool)

(assert (= b_lambda!229083 (or d!1893280 b_lambda!229135)))

(declare-fun bs!1490074 () Bool)

(declare-fun d!1893894 () Bool)

(assert (= bs!1490074 (and d!1893894 d!1893280)))

(assert (=> bs!1490074 (= (dynLambda!25216 lambda!329287 (h!70683 (exprs!5904 (h!70684 zl!343)))) (validRegex!7756 (h!70683 (exprs!5904 (h!70684 zl!343)))))))

(assert (=> bs!1490074 m!6909542))

(assert (=> b!6038679 d!1893894))

(declare-fun b_lambda!229137 () Bool)

(assert (= b_lambda!229099 (or b!6037605 b_lambda!229137)))

(declare-fun bs!1490075 () Bool)

(declare-fun d!1893896 () Bool)

(assert (= bs!1490075 (and d!1893896 b!6037605)))

(assert (=> bs!1490075 (= (dynLambda!25217 lambda!329289 (h!70684 (t!377789 lt!2322709))) (>= lt!2322898 (contextDepth!168 (h!70684 (t!377789 lt!2322709)))))))

(assert (=> bs!1490075 m!6909018))

(assert (=> b!6038845 d!1893896))

(declare-fun b_lambda!229139 () Bool)

(assert (= b_lambda!229093 (or b!6037599 b_lambda!229139)))

(declare-fun bs!1490076 () Bool)

(declare-fun d!1893898 () Bool)

(assert (= bs!1490076 (and d!1893898 b!6037599)))

(assert (=> bs!1490076 (= (dynLambda!25217 lambda!329281 (h!70684 (Cons!64236 lt!2322710 Nil!64236))) (>= lt!2322889 (contextDepth!168 (h!70684 (Cons!64236 lt!2322710 Nil!64236)))))))

(assert (=> bs!1490076 m!6907950))

(assert (=> b!6038826 d!1893898))

(declare-fun b_lambda!229141 () Bool)

(assert (= b_lambda!229089 (or b!6037656 b_lambda!229141)))

(declare-fun bs!1490077 () Bool)

(declare-fun d!1893900 () Bool)

(assert (= bs!1490077 (and d!1893900 b!6037656)))

(assert (=> bs!1490077 (= (dynLambda!25216 lambda!329297 (h!70683 (exprs!5904 lt!2322710))) (>= lt!2322911 (regexDepth!277 (h!70683 (exprs!5904 lt!2322710)))))))

(assert (=> bs!1490077 m!6908026))

(assert (=> b!6038746 d!1893900))

(declare-fun b_lambda!229143 () Bool)

(assert (= b_lambda!229113 (or d!1893344 b_lambda!229143)))

(declare-fun bs!1490078 () Bool)

(declare-fun d!1893902 () Bool)

(assert (= bs!1490078 (and d!1893902 d!1893344)))

(assert (=> bs!1490078 (= (dynLambda!25216 lambda!329311 (h!70683 (exprs!5904 setElem!40838))) (validRegex!7756 (h!70683 (exprs!5904 setElem!40838))))))

(declare-fun m!6909546 () Bool)

(assert (=> bs!1490078 m!6909546))

(assert (=> b!6039303 d!1893902))

(declare-fun b_lambda!229145 () Bool)

(assert (= b_lambda!229077 (or b!6037659 b_lambda!229145)))

(declare-fun bs!1490079 () Bool)

(declare-fun d!1893904 () Bool)

(assert (= bs!1490079 (and d!1893904 b!6037659)))

(assert (=> bs!1490079 (= (dynLambda!25216 lambda!329298 (h!70683 (t!377788 (exprs!5904 lt!2322698)))) (>= lt!2322917 (regexDepth!277 (h!70683 (t!377788 (exprs!5904 lt!2322698))))))))

(declare-fun m!6909548 () Bool)

(assert (=> bs!1490079 m!6909548))

(assert (=> b!6038559 d!1893904))

(declare-fun b_lambda!229147 () Bool)

(assert (= b_lambda!229105 (or b!6037607 b_lambda!229147)))

(declare-fun bs!1490080 () Bool)

(declare-fun d!1893906 () Bool)

(assert (= bs!1490080 (and d!1893906 b!6037607)))

(assert (=> bs!1490080 (= (dynLambda!25217 lambda!329290 (h!70684 lt!2322709)) (>= lt!2322897 (contextDepth!168 (h!70684 lt!2322709))))))

(assert (=> bs!1490080 m!6907976))

(assert (=> b!6039010 d!1893906))

(declare-fun b_lambda!229149 () Bool)

(assert (= b_lambda!229085 (or b!6037597 b_lambda!229149)))

(declare-fun bs!1490081 () Bool)

(declare-fun d!1893908 () Bool)

(assert (= bs!1490081 (and d!1893908 b!6037597)))

(assert (=> bs!1490081 (= (dynLambda!25217 lambda!329280 (h!70684 (t!377789 (Cons!64236 lt!2322710 Nil!64236)))) (>= lt!2322890 (contextDepth!168 (h!70684 (t!377789 (Cons!64236 lt!2322710 Nil!64236))))))))

(assert (=> bs!1490081 m!6908798))

(assert (=> b!6038687 d!1893908))

(declare-fun b_lambda!229151 () Bool)

(assert (= b_lambda!229111 (or d!1893330 b_lambda!229151)))

(declare-fun bs!1490082 () Bool)

(declare-fun d!1893910 () Bool)

(assert (= bs!1490082 (and d!1893910 d!1893330)))

(assert (=> bs!1490082 (= (dynLambda!25216 lambda!329304 (h!70683 (unfocusZipperList!1441 zl!343))) (validRegex!7756 (h!70683 (unfocusZipperList!1441 zl!343))))))

(declare-fun m!6909550 () Bool)

(assert (=> bs!1490082 m!6909550))

(assert (=> b!6039237 d!1893910))

(declare-fun b_lambda!229153 () Bool)

(assert (= b_lambda!229091 (or b!6037340 b_lambda!229153)))

(assert (=> d!1893628 d!1893362))

(declare-fun b_lambda!229155 () Bool)

(assert (= b_lambda!229097 (or b!6037340 b_lambda!229155)))

(assert (=> d!1893658 d!1893366))

(push 1)

(assert (not d!1893802))

(assert (not b!6038996))

(assert (not b!6039210))

(assert (not b!6038567))

(assert (not b!6039362))

(assert (not b!6039094))

(assert (not b!6039240))

(assert (not b!6039360))

(assert (not d!1893628))

(assert (not b!6038711))

(assert (not d!1893548))

(assert (not d!1893680))

(assert (not b!6039377))

(assert (not b!6038829))

(assert (not b!6039319))

(assert (not b!6039216))

(assert (not bm!493794))

(assert (not d!1893762))

(assert (not bm!493828))

(assert (not b!6039102))

(assert (not b!6039324))

(assert (not bs!1490076))

(assert (not b!6038912))

(assert (not b!6039414))

(assert (not b!6039345))

(assert (not b_lambda!229149))

(assert (not b!6039025))

(assert (not bm!493846))

(assert (not d!1893720))

(assert (not b!6038873))

(assert (not b!6038846))

(assert (not d!1893816))

(assert (not b!6038699))

(assert (not b!6039391))

(assert (not b!6039084))

(assert (not b_lambda!229127))

(assert (not d!1893570))

(assert (not b_lambda!229153))

(assert (not b!6038828))

(assert (not b!6039419))

(assert (not b!6038783))

(assert (not bm!493810))

(assert (not b!6039334))

(assert (not b!6038999))

(assert (not b!6039332))

(assert (not d!1893584))

(assert (not b!6039306))

(assert (not b!6039316))

(assert (not d!1893838))

(assert (not b!6038652))

(assert (not d!1893832))

(assert (not b!6039410))

(assert (not b!6039229))

(assert (not bs!1490082))

(assert (not b!6039411))

(assert (not setNonEmpty!40853))

(assert (not b_lambda!229131))

(assert (not b!6039349))

(assert (not b!6039354))

(assert (not bm!493812))

(assert (not d!1893746))

(assert (not d!1893654))

(assert (not b_lambda!229145))

(assert (not b!6038842))

(assert (not b_lambda!229133))

(assert (not bm!493844))

(assert (not b!6039093))

(assert (not b!6039304))

(assert (not b!6039063))

(assert (not b!6038689))

(assert (not bm!493778))

(assert (not b!6039277))

(assert (not d!1893850))

(assert (not b!6038692))

(assert (not bm!493923))

(assert (not b!6039370))

(assert (not b!6039327))

(assert (not bm!493909))

(assert (not b!6039279))

(assert (not d!1893668))

(assert (not bm!493770))

(assert (not bm!493821))

(assert (not b!6039009))

(assert (not b!6038753))

(assert (not b!6038563))

(assert (not b_lambda!229123))

(assert (not bm!493833))

(assert (not b!6039060))

(assert (not bm!493884))

(assert (not bm!493744))

(assert (not bm!493870))

(assert (not b!6039180))

(assert (not d!1893702))

(assert (not bm!493729))

(assert (not b!6039342))

(assert (not bm!493891))

(assert (not b!6038860))

(assert (not bm!493773))

(assert (not bm!493795))

(assert (not bm!493820))

(assert (not d!1893630))

(assert (not b!6039064))

(assert (not bm!493857))

(assert (not b!6038627))

(assert (not b!6039367))

(assert (not b!6038981))

(assert (not d!1893646))

(assert (not d!1893840))

(assert (not b!6039330))

(assert (not b_lambda!229059))

(assert (not b_lambda!229135))

(assert (not b!6039371))

(assert (not b!6039214))

(assert (not bm!493764))

(assert (not b!6039012))

(assert (not b!6038600))

(assert (not bm!493915))

(assert (not d!1893780))

(assert (not bm!493894))

(assert (not b!6039097))

(assert (not b!6039415))

(assert (not bm!493762))

(assert (not b!6038750))

(assert (not bm!493808))

(assert (not b!6039355))

(assert (not b!6038915))

(assert (not d!1893742))

(assert (not b!6039114))

(assert (not b!6038883))

(assert (not b!6039281))

(assert (not bm!493827))

(assert (not d!1893804))

(assert (not d!1893814))

(assert (not b!6039381))

(assert (not b!6039395))

(assert (not bm!493758))

(assert (not b!6039326))

(assert (not b!6038913))

(assert (not bm!493807))

(assert (not b!6039393))

(assert (not b!6039014))

(assert (not bm!493730))

(assert (not b!6038992))

(assert (not bs!1490067))

(assert (not b!6038537))

(assert (not b!6039061))

(assert (not d!1893532))

(assert (not bs!1490073))

(assert (not b!6039259))

(assert (not b_lambda!229121))

(assert (not b_lambda!229119))

(assert (not b!6039197))

(assert (not bm!493887))

(assert (not bm!493835))

(assert (not b!6038908))

(assert (not b!6039282))

(assert (not b!6038708))

(assert (not d!1893790))

(assert (not b!6039139))

(assert (not d!1893686))

(assert (not bm!493791))

(assert (not b!6039365))

(assert (not b!6039285))

(assert (not bm!493907))

(assert (not bs!1490078))

(assert (not b!6039433))

(assert (not b!6039394))

(assert (not b!6039346))

(assert (not b!6039256))

(assert (not b!6038844))

(assert (not b!6038869))

(assert (not b!6038680))

(assert (not d!1893858))

(assert (not d!1893714))

(assert (not b!6039417))

(assert (not bm!493845))

(assert (not d!1893530))

(assert (not bm!493746))

(assert (not bm!493742))

(assert (not bm!493880))

(assert (not bm!493750))

(assert (not b_lambda!229155))

(assert (not b!6038839))

(assert (not b!6039379))

(assert (not b!6039385))

(assert (not b!6039019))

(assert (not b_lambda!229129))

(assert (not b!6039257))

(assert (not bs!1490070))

(assert (not bm!493922))

(assert (not b!6039275))

(assert (not b!6038832))

(assert (not bm!493854))

(assert (not d!1893690))

(assert (not b!6038761))

(assert (not d!1893676))

(assert (not bm!493779))

(assert (not b!6039196))

(assert (not b!6039213))

(assert (not bm!493855))

(assert (not b!6039403))

(assert (not bm!493825))

(assert (not b!6038598))

(assert (not b!6039425))

(assert (not b!6039353))

(assert (not bm!493721))

(assert (not b!6038841))

(assert (not b!6039171))

(assert (not bm!493893))

(assert (not bm!493749))

(assert (not b!6039268))

(assert (not b!6039200))

(assert (not b!6038764))

(assert (not d!1893784))

(assert (not b!6039284))

(assert (not b!6039096))

(assert (not d!1893736))

(assert (not bm!493869))

(assert (not bm!493921))

(assert (not d!1893552))

(assert (not d!1893740))

(assert (not d!1893866))

(assert (not bs!1490071))

(assert (not bm!493906))

(assert (not b!6039081))

(assert (not b!6039423))

(assert (not b!6039406))

(assert (not bm!493771))

(assert (not b!6038747))

(assert (not b!6039271))

(assert (not bm!493901))

(assert (not d!1893856))

(assert (not b!6038870))

(assert (not b!6038868))

(assert (not d!1893754))

(assert (not b!6038665))

(assert (not b!6039361))

(assert (not b!6039427))

(assert (not b!6039402))

(assert (not b!6039351))

(assert (not d!1893602))

(assert (not b!6039431))

(assert (not d!1893658))

(assert (not d!1893758))

(assert (not d!1893604))

(assert (not b!6038632))

(assert (not b!6039013))

(assert (not b!6039057))

(assert (not b!6039083))

(assert (not d!1893522))

(assert (not b!6038560))

(assert (not b!6039217))

(assert (not bm!493890))

(assert (not d!1893848))

(assert (not d!1893782))

(assert (not d!1893580))

(assert (not b!6038649))

(assert (not b!6038596))

(assert (not bm!493799))

(assert (not b_lambda!229137))

(assert (not bm!493804))

(assert (not bs!1490077))

(assert (not b!6039390))

(assert (not bm!493754))

(assert (not bs!1490075))

(assert (not bm!493916))

(assert (not d!1893778))

(assert (not b!6039091))

(assert (not bm!493737))

(assert (not setNonEmpty!40852))

(assert (not b!6039413))

(assert (not d!1893806))

(assert (not bs!1490068))

(assert (not b!6039366))

(assert (not d!1893634))

(assert (not b!6039241))

(assert (not d!1893854))

(assert (not b!6039270))

(assert (not bm!493788))

(assert (not b!6039315))

(assert (not b!6039302))

(assert (not b!6039359))

(assert (not b!6039140))

(assert (not bm!493847))

(assert (not b!6039375))

(assert (not d!1893728))

(assert (not b!6039341))

(assert tp_is_empty!41293)

(assert (not b!6039387))

(assert (not b!6038961))

(assert (not bm!493918))

(assert (not b!6039317))

(assert (not b!6039363))

(assert (not b!6039290))

(assert (not d!1893734))

(assert (not b!6039374))

(assert (not b!6038848))

(assert (not bm!493824))

(assert (not d!1893506))

(assert (not d!1893618))

(assert (not bm!493897))

(assert (not b_lambda!229141))

(assert (not b!6039378))

(assert (not b_lambda!229147))

(assert (not b!6039409))

(assert (not b_lambda!229143))

(assert (not bm!493781))

(assert (not bm!493851))

(assert (not b!6038758))

(assert (not b!6039017))

(assert (not bm!493720))

(assert (not setNonEmpty!40851))

(assert (not b!6038838))

(assert (not bm!493741))

(assert (not d!1893874))

(assert (not b!6038756))

(assert (not b!6039386))

(assert (not bs!1490081))

(assert (not b!6038958))

(assert (not b!6039333))

(assert (not b!6038655))

(assert (not b!6039422))

(assert (not bm!493881))

(assert (not bm!493811))

(assert (not bm!493787))

(assert (not bm!493786))

(assert (not d!1893872))

(assert (not b!6039434))

(assert (not b!6039242))

(assert (not b!6038688))

(assert (not b!6038986))

(assert (not b!6039020))

(assert (not b!6039407))

(assert (not bm!493848))

(assert (not bm!493903))

(assert (not bm!493910))

(assert (not b!6039429))

(assert (not b!6039274))

(assert (not d!1893572))

(assert (not b!6039269))

(assert (not b!6039008))

(assert (not b!6038987))

(assert (not b!6039356))

(assert (not b_lambda!229139))

(assert (not b!6039337))

(assert (not b!6038960))

(assert (not b!6039340))

(assert (not b!6038628))

(assert (not d!1893768))

(assert (not b!6039421))

(assert (not bs!1490066))

(assert (not bm!493832))

(assert (not b!6038653))

(assert (not b!6039389))

(assert (not b!6038681))

(assert (not b!6038983))

(assert (not bm!493883))

(assert (not b!6039089))

(assert (not b!6039247))

(assert (not bm!493841))

(assert (not bm!493834))

(assert (not b!6038956))

(assert (not d!1893608))

(assert (not d!1893786))

(assert (not d!1893606))

(assert (not bm!493798))

(assert (not bm!493790))

(assert (not b!6038784))

(assert (not b!6039350))

(assert (not bm!493874))

(assert (not bm!493842))

(assert (not bm!493743))

(assert (not b!6039358))

(assert (not b!6038831))

(assert (not b!6039011))

(assert (not b!6038910))

(assert (not b!6039336))

(assert (not bm!493723))

(assert (not bm!493752))

(assert (not b!6039331))

(assert (not b!6039369))

(assert (not b_lambda!229061))

(assert (not setNonEmpty!40850))

(assert (not bm!493882))

(assert (not d!1893820))

(assert (not bm!493911))

(assert (not bm!493774))

(assert (not bm!493735))

(assert (not b!6039382))

(assert (not b!6039426))

(assert (not b!6038817))

(assert (not bm!493802))

(assert (not b!6038762))

(assert (not d!1893716))

(assert (not bs!1490074))

(assert (not b!6038691))

(assert (not b_lambda!229117))

(assert (not b!6038861))

(assert (not b!6039073))

(assert (not b!6039398))

(assert (not b!6039397))

(assert (not b!6038789))

(assert (not b!6039058))

(assert (not d!1893764))

(assert (not b!6039435))

(assert (not b!6038984))

(assert (not b!6038759))

(assert (not b!6039219))

(assert (not b!6039243))

(assert (not bm!493736))

(assert (not bm!493755))

(assert (not bs!1490069))

(assert (not b!6039338))

(assert (not b!6039086))

(assert (not b!6038754))

(assert (not bm!493878))

(assert (not d!1893642))

(assert (not d!1893870))

(assert (not bm!493726))

(assert (not b!6039142))

(assert (not b!6039344))

(assert (not b!6038664))

(assert (not b!6038561))

(assert (not bm!493761))

(assert (not b!6039321))

(assert (not b!6039168))

(assert (not b!6038670))

(assert (not b!6038578))

(assert (not b!6038827))

(assert (not bm!493740))

(assert (not bm!493850))

(assert (not d!1893650))

(assert (not d!1893536))

(assert (not bm!493889))

(assert (not b!6039082))

(assert (not d!1893620))

(assert (not b!6039087))

(assert (not b!6038957))

(assert (not bm!493785))

(assert (not bm!493871))

(assert (not bm!493896))

(assert (not b_lambda!229125))

(assert (not d!1893648))

(assert (not b!6039181))

(assert (not d!1893550))

(assert (not bm!493872))

(assert (not b_lambda!229151))

(assert (not d!1893756))

(assert (not bm!493868))

(assert (not bm!493814))

(assert (not d!1893812))

(assert (not b!6039383))

(assert (not b_lambda!229063))

(assert (not bm!493757))

(assert (not bm!493784))

(assert (not b!6039169))

(assert (not b!6039252))

(assert (not bm!493826))

(assert (not bm!493913))

(assert (not b!6039186))

(assert (not bm!493831))

(assert (not d!1893822))

(assert (not b!6039239))

(assert (not b!6038749))

(assert (not b!6038962))

(assert (not b!6038835))

(assert (not bm!493888))

(assert (not bm!493724))

(assert (not b!6039405))

(assert (not bm!493767))

(assert (not b!6039195))

(assert (not bm!493900))

(assert (not b!6039209))

(assert (not b!6039418))

(assert (not bm!493733))

(assert (not b!6038694))

(assert (not b!6039399))

(assert (not bm!493801))

(assert (not b!6038644))

(assert (not bs!1490079))

(assert (not d!1893752))

(assert (not b!6038682))

(assert (not bm!493753))

(assert (not b!6039069))

(assert (not b!6039238))

(assert (not b!6038955))

(assert (not bm!493924))

(assert (not bm!493734))

(assert (not bm!493777))

(assert (not b!6039430))

(assert (not bm!493800))

(assert (not d!1893738))

(assert (not d!1893546))

(assert (not d!1893700))

(assert (not d!1893750))

(assert (not bm!493722))

(assert (not b!6039328))

(assert (not b!6039347))

(assert (not b!6039255))

(assert (not b!6039016))

(assert (not b!6038721))

(assert (not d!1893560))

(assert (not bm!493765))

(assert (not b!6039116))

(assert (not bs!1490080))

(assert (not bm!493818))

(assert (not d!1893674))

(assert (not b!6039225))

(assert (not bs!1490072))

(assert (not bm!493780))

(assert (not bm!493877))

(assert (not b!6039373))

(assert (not d!1893624))

(assert (not d!1893828))

(assert (not b!6039323))

(assert (not b!6039401))

(assert (not bm!493914))

(assert (not d!1893726))

(assert (not b!6039322))

(assert (not bm!493817))

(assert (not b!6039220))

(assert (not b!6039273))

(assert (not d!1893868))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

