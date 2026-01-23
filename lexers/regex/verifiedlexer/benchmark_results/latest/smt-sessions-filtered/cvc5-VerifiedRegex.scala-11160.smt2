; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!579876 () Bool)

(assert start!579876)

(declare-fun b!5582335 () Bool)

(assert (=> b!5582335 true))

(assert (=> b!5582335 true))

(declare-fun lambda!299398 () Int)

(declare-fun lambda!299397 () Int)

(assert (=> b!5582335 (not (= lambda!299398 lambda!299397))))

(assert (=> b!5582335 true))

(assert (=> b!5582335 true))

(declare-fun b!5582339 () Bool)

(assert (=> b!5582339 true))

(declare-fun b!5582324 () Bool)

(declare-fun e!3444404 () Bool)

(declare-fun tp!1544536 () Bool)

(declare-fun tp!1544539 () Bool)

(assert (=> b!5582324 (= e!3444404 (and tp!1544536 tp!1544539))))

(declare-fun b!5582325 () Bool)

(declare-fun e!3444421 () Bool)

(declare-datatypes ((C!31402 0))(
  ( (C!31403 (val!25403 Int)) )
))
(declare-datatypes ((Regex!15566 0))(
  ( (ElementMatch!15566 (c!977602 C!31402)) (Concat!24411 (regOne!31644 Regex!15566) (regTwo!31644 Regex!15566)) (EmptyExpr!15566) (Star!15566 (reg!15895 Regex!15566)) (EmptyLang!15566) (Union!15566 (regOne!31645 Regex!15566) (regTwo!31645 Regex!15566)) )
))
(declare-datatypes ((List!62997 0))(
  ( (Nil!62873) (Cons!62873 (h!69321 Regex!15566) (t!376270 List!62997)) )
))
(declare-datatypes ((Context!9900 0))(
  ( (Context!9901 (exprs!5450 List!62997)) )
))
(declare-fun lt!2253805 () (Set Context!9900))

(declare-datatypes ((List!62998 0))(
  ( (Nil!62874) (Cons!62874 (h!69322 C!31402) (t!376271 List!62998)) )
))
(declare-fun s!2326 () List!62998)

(declare-fun matchZipper!1704 ((Set Context!9900) List!62998) Bool)

(assert (=> b!5582325 (= e!3444421 (matchZipper!1704 lt!2253805 (t!376271 s!2326)))))

(declare-fun b!5582326 () Bool)

(declare-fun res!2368970 () Bool)

(declare-fun e!3444411 () Bool)

(assert (=> b!5582326 (=> res!2368970 e!3444411)))

(declare-fun r!7292 () Regex!15566)

(declare-datatypes ((List!62999 0))(
  ( (Nil!62875) (Cons!62875 (h!69323 Context!9900) (t!376272 List!62999)) )
))
(declare-fun zl!343 () List!62999)

(declare-fun generalisedConcat!1181 (List!62997) Regex!15566)

(assert (=> b!5582326 (= res!2368970 (not (= r!7292 (generalisedConcat!1181 (exprs!5450 (h!69323 zl!343))))))))

(declare-fun b!5582327 () Bool)

(declare-fun e!3444409 () Bool)

(declare-fun tp!1544537 () Bool)

(assert (=> b!5582327 (= e!3444409 tp!1544537)))

(declare-fun b!5582328 () Bool)

(declare-fun res!2368953 () Bool)

(declare-fun e!3444413 () Bool)

(assert (=> b!5582328 (=> (not res!2368953) (not e!3444413))))

(declare-fun z!1189 () (Set Context!9900))

(declare-fun toList!9350 ((Set Context!9900)) List!62999)

(assert (=> b!5582328 (= res!2368953 (= (toList!9350 z!1189) zl!343))))

(declare-fun b!5582329 () Bool)

(declare-fun res!2368961 () Bool)

(assert (=> b!5582329 (=> res!2368961 e!3444411)))

(assert (=> b!5582329 (= res!2368961 (not (is-Cons!62873 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun tp!1544534 () Bool)

(declare-fun setElem!37162 () Context!9900)

(declare-fun setRes!37162 () Bool)

(declare-fun setNonEmpty!37162 () Bool)

(declare-fun inv!82163 (Context!9900) Bool)

(assert (=> setNonEmpty!37162 (= setRes!37162 (and tp!1544534 (inv!82163 setElem!37162) e!3444409))))

(declare-fun setRest!37162 () (Set Context!9900))

(assert (=> setNonEmpty!37162 (= z!1189 (set.union (set.insert setElem!37162 (as set.empty (Set Context!9900))) setRest!37162))))

(declare-fun b!5582330 () Bool)

(declare-fun res!2368964 () Bool)

(assert (=> b!5582330 (=> res!2368964 e!3444411)))

(declare-fun generalisedUnion!1429 (List!62997) Regex!15566)

(declare-fun unfocusZipperList!994 (List!62999) List!62997)

(assert (=> b!5582330 (= res!2368964 (not (= r!7292 (generalisedUnion!1429 (unfocusZipperList!994 zl!343)))))))

(declare-fun b!5582331 () Bool)

(declare-datatypes ((Unit!155640 0))(
  ( (Unit!155641) )
))
(declare-fun e!3444406 () Unit!155640)

(declare-fun Unit!155642 () Unit!155640)

(assert (=> b!5582331 (= e!3444406 Unit!155642)))

(declare-fun b!5582332 () Bool)

(declare-fun res!2368958 () Bool)

(assert (=> b!5582332 (=> res!2368958 e!3444411)))

(declare-fun isEmpty!34685 (List!62999) Bool)

(assert (=> b!5582332 (= res!2368958 (not (isEmpty!34685 (t!376272 zl!343))))))

(declare-fun b!5582333 () Bool)

(declare-fun e!3444408 () Bool)

(declare-fun lt!2253789 () (Set Context!9900))

(assert (=> b!5582333 (= e!3444408 (matchZipper!1704 lt!2253789 (t!376271 s!2326)))))

(declare-fun b!5582334 () Bool)

(declare-fun e!3444417 () Bool)

(declare-fun tp_is_empty!40385 () Bool)

(declare-fun tp!1544538 () Bool)

(assert (=> b!5582334 (= e!3444417 (and tp_is_empty!40385 tp!1544538))))

(declare-fun e!3444422 () Bool)

(assert (=> b!5582335 (= e!3444411 e!3444422)))

(declare-fun res!2368962 () Bool)

(assert (=> b!5582335 (=> res!2368962 e!3444422)))

(declare-fun lt!2253786 () Bool)

(declare-fun lt!2253781 () Bool)

(assert (=> b!5582335 (= res!2368962 (or (not (= lt!2253781 lt!2253786)) (is-Nil!62874 s!2326)))))

(declare-fun Exists!2666 (Int) Bool)

(assert (=> b!5582335 (= (Exists!2666 lambda!299397) (Exists!2666 lambda!299398))))

(declare-fun lt!2253797 () Unit!155640)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1295 (Regex!15566 Regex!15566 List!62998) Unit!155640)

(assert (=> b!5582335 (= lt!2253797 (lemmaExistCutMatchRandMatchRSpecEquivalent!1295 (regOne!31644 r!7292) (regTwo!31644 r!7292) s!2326))))

(assert (=> b!5582335 (= lt!2253786 (Exists!2666 lambda!299397))))

(declare-datatypes ((tuple2!65326 0))(
  ( (tuple2!65327 (_1!35966 List!62998) (_2!35966 List!62998)) )
))
(declare-datatypes ((Option!15575 0))(
  ( (None!15574) (Some!15574 (v!51615 tuple2!65326)) )
))
(declare-fun isDefined!12278 (Option!15575) Bool)

(declare-fun findConcatSeparation!1989 (Regex!15566 Regex!15566 List!62998 List!62998 List!62998) Option!15575)

(assert (=> b!5582335 (= lt!2253786 (isDefined!12278 (findConcatSeparation!1989 (regOne!31644 r!7292) (regTwo!31644 r!7292) Nil!62874 s!2326 s!2326)))))

(declare-fun lt!2253803 () Unit!155640)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1753 (Regex!15566 Regex!15566 List!62998) Unit!155640)

(assert (=> b!5582335 (= lt!2253803 (lemmaFindConcatSeparationEquivalentToExists!1753 (regOne!31644 r!7292) (regTwo!31644 r!7292) s!2326))))

(declare-fun b!5582336 () Bool)

(declare-fun tp!1544541 () Bool)

(declare-fun tp!1544540 () Bool)

(assert (=> b!5582336 (= e!3444404 (and tp!1544541 tp!1544540))))

(declare-fun setIsEmpty!37162 () Bool)

(assert (=> setIsEmpty!37162 setRes!37162))

(declare-fun b!5582337 () Bool)

(declare-fun Unit!155643 () Unit!155640)

(assert (=> b!5582337 (= e!3444406 Unit!155643)))

(declare-fun lt!2253785 () Unit!155640)

(declare-fun lt!2253788 () (Set Context!9900))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!591 ((Set Context!9900) (Set Context!9900) List!62998) Unit!155640)

(assert (=> b!5582337 (= lt!2253785 (lemmaZipperConcatMatchesSameAsBothZippers!591 lt!2253788 lt!2253805 (t!376271 s!2326)))))

(declare-fun res!2368959 () Bool)

(assert (=> b!5582337 (= res!2368959 (matchZipper!1704 lt!2253788 (t!376271 s!2326)))))

(assert (=> b!5582337 (=> res!2368959 e!3444421)))

(assert (=> b!5582337 (= (matchZipper!1704 (set.union lt!2253788 lt!2253805) (t!376271 s!2326)) e!3444421)))

(declare-fun b!5582338 () Bool)

(declare-fun e!3444420 () Bool)

(declare-fun tp!1544533 () Bool)

(assert (=> b!5582338 (= e!3444420 tp!1544533)))

(declare-fun res!2368951 () Bool)

(assert (=> start!579876 (=> (not res!2368951) (not e!3444413))))

(declare-fun validRegex!7302 (Regex!15566) Bool)

(assert (=> start!579876 (= res!2368951 (validRegex!7302 r!7292))))

(assert (=> start!579876 e!3444413))

(assert (=> start!579876 e!3444404))

(declare-fun condSetEmpty!37162 () Bool)

(assert (=> start!579876 (= condSetEmpty!37162 (= z!1189 (as set.empty (Set Context!9900))))))

(assert (=> start!579876 setRes!37162))

(declare-fun e!3444418 () Bool)

(assert (=> start!579876 e!3444418))

(assert (=> start!579876 e!3444417))

(declare-fun b!5582323 () Bool)

(declare-fun e!3444416 () Unit!155640)

(declare-fun Unit!155644 () Unit!155640)

(assert (=> b!5582323 (= e!3444416 Unit!155644)))

(declare-fun lt!2253795 () Unit!155640)

(declare-fun lt!2253793 () (Set Context!9900))

(assert (=> b!5582323 (= lt!2253795 (lemmaZipperConcatMatchesSameAsBothZippers!591 lt!2253793 lt!2253805 (t!376271 s!2326)))))

(declare-fun res!2368955 () Bool)

(declare-fun lt!2253791 () Bool)

(assert (=> b!5582323 (= res!2368955 lt!2253791)))

(declare-fun e!3444405 () Bool)

(assert (=> b!5582323 (=> res!2368955 e!3444405)))

(assert (=> b!5582323 (= (matchZipper!1704 (set.union lt!2253793 lt!2253805) (t!376271 s!2326)) e!3444405)))

(declare-fun e!3444412 () Bool)

(assert (=> b!5582339 (= e!3444422 e!3444412)))

(declare-fun res!2368967 () Bool)

(assert (=> b!5582339 (=> res!2368967 e!3444412)))

(assert (=> b!5582339 (= res!2368967 (or (and (is-ElementMatch!15566 (regOne!31644 r!7292)) (= (c!977602 (regOne!31644 r!7292)) (h!69322 s!2326))) (not (is-Union!15566 (regOne!31644 r!7292)))))))

(declare-fun lt!2253784 () Unit!155640)

(assert (=> b!5582339 (= lt!2253784 e!3444406)))

(declare-fun c!977601 () Bool)

(declare-fun nullable!5598 (Regex!15566) Bool)

(assert (=> b!5582339 (= c!977601 (nullable!5598 (h!69321 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun lambda!299399 () Int)

(declare-fun flatMap!1179 ((Set Context!9900) Int) (Set Context!9900))

(declare-fun derivationStepZipperUp!834 (Context!9900 C!31402) (Set Context!9900))

(assert (=> b!5582339 (= (flatMap!1179 z!1189 lambda!299399) (derivationStepZipperUp!834 (h!69323 zl!343) (h!69322 s!2326)))))

(declare-fun lt!2253792 () Unit!155640)

(declare-fun lemmaFlatMapOnSingletonSet!711 ((Set Context!9900) Context!9900 Int) Unit!155640)

(assert (=> b!5582339 (= lt!2253792 (lemmaFlatMapOnSingletonSet!711 z!1189 (h!69323 zl!343) lambda!299399))))

(declare-fun lt!2253783 () Context!9900)

(assert (=> b!5582339 (= lt!2253805 (derivationStepZipperUp!834 lt!2253783 (h!69322 s!2326)))))

(declare-fun derivationStepZipperDown!908 (Regex!15566 Context!9900 C!31402) (Set Context!9900))

(assert (=> b!5582339 (= lt!2253788 (derivationStepZipperDown!908 (h!69321 (exprs!5450 (h!69323 zl!343))) lt!2253783 (h!69322 s!2326)))))

(assert (=> b!5582339 (= lt!2253783 (Context!9901 (t!376270 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun lt!2253801 () (Set Context!9900))

(assert (=> b!5582339 (= lt!2253801 (derivationStepZipperUp!834 (Context!9901 (Cons!62873 (h!69321 (exprs!5450 (h!69323 zl!343))) (t!376270 (exprs!5450 (h!69323 zl!343))))) (h!69322 s!2326)))))

(declare-fun b!5582340 () Bool)

(declare-fun Unit!155645 () Unit!155640)

(assert (=> b!5582340 (= e!3444416 Unit!155645)))

(declare-fun b!5582341 () Bool)

(assert (=> b!5582341 (= e!3444413 (not e!3444411))))

(declare-fun res!2368968 () Bool)

(assert (=> b!5582341 (=> res!2368968 e!3444411)))

(assert (=> b!5582341 (= res!2368968 (not (is-Cons!62875 zl!343)))))

(declare-fun matchRSpec!2669 (Regex!15566 List!62998) Bool)

(assert (=> b!5582341 (= lt!2253781 (matchRSpec!2669 r!7292 s!2326))))

(declare-fun matchR!7751 (Regex!15566 List!62998) Bool)

(assert (=> b!5582341 (= lt!2253781 (matchR!7751 r!7292 s!2326))))

(declare-fun lt!2253790 () Unit!155640)

(declare-fun mainMatchTheorem!2669 (Regex!15566 List!62998) Unit!155640)

(assert (=> b!5582341 (= lt!2253790 (mainMatchTheorem!2669 r!7292 s!2326))))

(declare-fun b!5582342 () Bool)

(declare-fun res!2368966 () Bool)

(assert (=> b!5582342 (=> res!2368966 e!3444411)))

(assert (=> b!5582342 (= res!2368966 (or (is-EmptyExpr!15566 r!7292) (is-EmptyLang!15566 r!7292) (is-ElementMatch!15566 r!7292) (is-Union!15566 r!7292) (not (is-Concat!24411 r!7292))))))

(declare-fun b!5582343 () Bool)

(declare-fun res!2368952 () Bool)

(assert (=> b!5582343 (=> (not res!2368952) (not e!3444413))))

(declare-fun unfocusZipper!1308 (List!62999) Regex!15566)

(assert (=> b!5582343 (= res!2368952 (= r!7292 (unfocusZipper!1308 zl!343)))))

(declare-fun b!5582344 () Bool)

(declare-fun e!3444410 () Bool)

(declare-fun e!3444414 () Bool)

(assert (=> b!5582344 (= e!3444410 e!3444414)))

(declare-fun res!2368960 () Bool)

(assert (=> b!5582344 (=> res!2368960 e!3444414)))

(assert (=> b!5582344 (= res!2368960 (not (nullable!5598 (regTwo!31645 (regOne!31644 r!7292)))))))

(declare-fun lt!2253796 () (Set Context!9900))

(declare-fun lt!2253804 () Context!9900)

(assert (=> b!5582344 (= (flatMap!1179 lt!2253796 lambda!299399) (derivationStepZipperUp!834 lt!2253804 (h!69322 s!2326)))))

(declare-fun lt!2253794 () Unit!155640)

(assert (=> b!5582344 (= lt!2253794 (lemmaFlatMapOnSingletonSet!711 lt!2253796 lt!2253804 lambda!299399))))

(declare-fun lt!2253782 () (Set Context!9900))

(assert (=> b!5582344 (= lt!2253782 (derivationStepZipperUp!834 lt!2253804 (h!69322 s!2326)))))

(declare-fun lt!2253806 () Unit!155640)

(assert (=> b!5582344 (= lt!2253806 e!3444416)))

(declare-fun c!977600 () Bool)

(assert (=> b!5582344 (= c!977600 (nullable!5598 (regOne!31645 (regOne!31644 r!7292))))))

(declare-fun lt!2253799 () Context!9900)

(declare-fun lt!2253798 () (Set Context!9900))

(assert (=> b!5582344 (= (flatMap!1179 lt!2253798 lambda!299399) (derivationStepZipperUp!834 lt!2253799 (h!69322 s!2326)))))

(declare-fun lt!2253807 () Unit!155640)

(assert (=> b!5582344 (= lt!2253807 (lemmaFlatMapOnSingletonSet!711 lt!2253798 lt!2253799 lambda!299399))))

(declare-fun lt!2253808 () (Set Context!9900))

(assert (=> b!5582344 (= lt!2253808 (derivationStepZipperUp!834 lt!2253799 (h!69322 s!2326)))))

(assert (=> b!5582344 (= lt!2253796 (set.insert lt!2253804 (as set.empty (Set Context!9900))))))

(assert (=> b!5582344 (= lt!2253804 (Context!9901 (Cons!62873 (regTwo!31645 (regOne!31644 r!7292)) (t!376270 (exprs!5450 (h!69323 zl!343))))))))

(assert (=> b!5582344 (= lt!2253798 (set.insert lt!2253799 (as set.empty (Set Context!9900))))))

(assert (=> b!5582344 (= lt!2253799 (Context!9901 (Cons!62873 (regOne!31645 (regOne!31644 r!7292)) (t!376270 (exprs!5450 (h!69323 zl!343))))))))

(declare-fun b!5582345 () Bool)

(declare-fun e!3444407 () Bool)

(assert (=> b!5582345 (= e!3444407 e!3444410)))

(declare-fun res!2368956 () Bool)

(assert (=> b!5582345 (=> res!2368956 e!3444410)))

(declare-fun e!3444419 () Bool)

(assert (=> b!5582345 (= res!2368956 e!3444419)))

(declare-fun res!2368957 () Bool)

(assert (=> b!5582345 (=> (not res!2368957) (not e!3444419))))

(assert (=> b!5582345 (= res!2368957 (not (= (matchZipper!1704 lt!2253788 (t!376271 s!2326)) lt!2253791)))))

(declare-fun lt!2253800 () (Set Context!9900))

(assert (=> b!5582345 (= (matchZipper!1704 lt!2253800 (t!376271 s!2326)) e!3444408)))

(declare-fun res!2368963 () Bool)

(assert (=> b!5582345 (=> res!2368963 e!3444408)))

(assert (=> b!5582345 (= res!2368963 lt!2253791)))

(assert (=> b!5582345 (= lt!2253791 (matchZipper!1704 lt!2253793 (t!376271 s!2326)))))

(declare-fun lt!2253787 () Unit!155640)

(assert (=> b!5582345 (= lt!2253787 (lemmaZipperConcatMatchesSameAsBothZippers!591 lt!2253793 lt!2253789 (t!376271 s!2326)))))

(declare-fun b!5582346 () Bool)

(assert (=> b!5582346 (= e!3444412 e!3444407)))

(declare-fun res!2368954 () Bool)

(assert (=> b!5582346 (=> res!2368954 e!3444407)))

(assert (=> b!5582346 (= res!2368954 (not (= lt!2253788 lt!2253800)))))

(assert (=> b!5582346 (= lt!2253800 (set.union lt!2253793 lt!2253789))))

(assert (=> b!5582346 (= lt!2253789 (derivationStepZipperDown!908 (regTwo!31645 (regOne!31644 r!7292)) lt!2253783 (h!69322 s!2326)))))

(assert (=> b!5582346 (= lt!2253793 (derivationStepZipperDown!908 (regOne!31645 (regOne!31644 r!7292)) lt!2253783 (h!69322 s!2326)))))

(declare-fun b!5582347 () Bool)

(assert (=> b!5582347 (= e!3444405 (matchZipper!1704 lt!2253805 (t!376271 s!2326)))))

(declare-fun b!5582348 () Bool)

(declare-fun tp!1544532 () Bool)

(assert (=> b!5582348 (= e!3444404 tp!1544532)))

(declare-fun b!5582349 () Bool)

(declare-fun res!2368969 () Bool)

(assert (=> b!5582349 (=> res!2368969 e!3444422)))

(declare-fun isEmpty!34686 (List!62997) Bool)

(assert (=> b!5582349 (= res!2368969 (isEmpty!34686 (t!376270 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun b!5582350 () Bool)

(assert (=> b!5582350 (= e!3444419 (not (matchZipper!1704 lt!2253789 (t!376271 s!2326))))))

(declare-fun b!5582351 () Bool)

(assert (=> b!5582351 (= e!3444404 tp_is_empty!40385)))

(declare-fun b!5582352 () Bool)

(declare-fun tp!1544535 () Bool)

(assert (=> b!5582352 (= e!3444418 (and (inv!82163 (h!69323 zl!343)) e!3444420 tp!1544535))))

(declare-fun b!5582353 () Bool)

(declare-fun e!3444415 () Bool)

(assert (=> b!5582353 (= e!3444414 e!3444415)))

(declare-fun res!2368965 () Bool)

(assert (=> b!5582353 (=> res!2368965 e!3444415)))

(declare-fun lt!2253802 () (Set Context!9900))

(assert (=> b!5582353 (= res!2368965 (not (= lt!2253782 lt!2253802)))))

(assert (=> b!5582353 (= lt!2253802 (set.union lt!2253789 lt!2253805))))

(declare-fun b!5582354 () Bool)

(declare-fun derivationStepZipper!1665 ((Set Context!9900) C!31402) (Set Context!9900))

(assert (=> b!5582354 (= e!3444415 (= (derivationStepZipper!1665 lt!2253796 (h!69322 s!2326)) lt!2253802))))

(assert (= (and start!579876 res!2368951) b!5582328))

(assert (= (and b!5582328 res!2368953) b!5582343))

(assert (= (and b!5582343 res!2368952) b!5582341))

(assert (= (and b!5582341 (not res!2368968)) b!5582332))

(assert (= (and b!5582332 (not res!2368958)) b!5582326))

(assert (= (and b!5582326 (not res!2368970)) b!5582329))

(assert (= (and b!5582329 (not res!2368961)) b!5582330))

(assert (= (and b!5582330 (not res!2368964)) b!5582342))

(assert (= (and b!5582342 (not res!2368966)) b!5582335))

(assert (= (and b!5582335 (not res!2368962)) b!5582349))

(assert (= (and b!5582349 (not res!2368969)) b!5582339))

(assert (= (and b!5582339 c!977601) b!5582337))

(assert (= (and b!5582339 (not c!977601)) b!5582331))

(assert (= (and b!5582337 (not res!2368959)) b!5582325))

(assert (= (and b!5582339 (not res!2368967)) b!5582346))

(assert (= (and b!5582346 (not res!2368954)) b!5582345))

(assert (= (and b!5582345 (not res!2368963)) b!5582333))

(assert (= (and b!5582345 res!2368957) b!5582350))

(assert (= (and b!5582345 (not res!2368956)) b!5582344))

(assert (= (and b!5582344 c!977600) b!5582323))

(assert (= (and b!5582344 (not c!977600)) b!5582340))

(assert (= (and b!5582323 (not res!2368955)) b!5582347))

(assert (= (and b!5582344 (not res!2368960)) b!5582353))

(assert (= (and b!5582353 (not res!2368965)) b!5582354))

(assert (= (and start!579876 (is-ElementMatch!15566 r!7292)) b!5582351))

(assert (= (and start!579876 (is-Concat!24411 r!7292)) b!5582336))

(assert (= (and start!579876 (is-Star!15566 r!7292)) b!5582348))

(assert (= (and start!579876 (is-Union!15566 r!7292)) b!5582324))

(assert (= (and start!579876 condSetEmpty!37162) setIsEmpty!37162))

(assert (= (and start!579876 (not condSetEmpty!37162)) setNonEmpty!37162))

(assert (= setNonEmpty!37162 b!5582327))

(assert (= b!5582352 b!5582338))

(assert (= (and start!579876 (is-Cons!62875 zl!343)) b!5582352))

(assert (= (and start!579876 (is-Cons!62874 s!2326)) b!5582334))

(declare-fun m!6563986 () Bool)

(assert (=> b!5582345 m!6563986))

(declare-fun m!6563988 () Bool)

(assert (=> b!5582345 m!6563988))

(declare-fun m!6563990 () Bool)

(assert (=> b!5582345 m!6563990))

(declare-fun m!6563992 () Bool)

(assert (=> b!5582345 m!6563992))

(declare-fun m!6563994 () Bool)

(assert (=> b!5582337 m!6563994))

(assert (=> b!5582337 m!6563986))

(declare-fun m!6563996 () Bool)

(assert (=> b!5582337 m!6563996))

(declare-fun m!6563998 () Bool)

(assert (=> b!5582352 m!6563998))

(declare-fun m!6564000 () Bool)

(assert (=> b!5582328 m!6564000))

(declare-fun m!6564002 () Bool)

(assert (=> setNonEmpty!37162 m!6564002))

(declare-fun m!6564004 () Bool)

(assert (=> b!5582349 m!6564004))

(declare-fun m!6564006 () Bool)

(assert (=> b!5582323 m!6564006))

(declare-fun m!6564008 () Bool)

(assert (=> b!5582323 m!6564008))

(declare-fun m!6564010 () Bool)

(assert (=> start!579876 m!6564010))

(declare-fun m!6564012 () Bool)

(assert (=> b!5582326 m!6564012))

(declare-fun m!6564014 () Bool)

(assert (=> b!5582332 m!6564014))

(declare-fun m!6564016 () Bool)

(assert (=> b!5582346 m!6564016))

(declare-fun m!6564018 () Bool)

(assert (=> b!5582346 m!6564018))

(declare-fun m!6564020 () Bool)

(assert (=> b!5582325 m!6564020))

(declare-fun m!6564022 () Bool)

(assert (=> b!5582330 m!6564022))

(assert (=> b!5582330 m!6564022))

(declare-fun m!6564024 () Bool)

(assert (=> b!5582330 m!6564024))

(declare-fun m!6564026 () Bool)

(assert (=> b!5582350 m!6564026))

(assert (=> b!5582333 m!6564026))

(declare-fun m!6564028 () Bool)

(assert (=> b!5582354 m!6564028))

(declare-fun m!6564030 () Bool)

(assert (=> b!5582344 m!6564030))

(declare-fun m!6564032 () Bool)

(assert (=> b!5582344 m!6564032))

(declare-fun m!6564034 () Bool)

(assert (=> b!5582344 m!6564034))

(declare-fun m!6564036 () Bool)

(assert (=> b!5582344 m!6564036))

(declare-fun m!6564038 () Bool)

(assert (=> b!5582344 m!6564038))

(declare-fun m!6564040 () Bool)

(assert (=> b!5582344 m!6564040))

(declare-fun m!6564042 () Bool)

(assert (=> b!5582344 m!6564042))

(declare-fun m!6564044 () Bool)

(assert (=> b!5582344 m!6564044))

(declare-fun m!6564046 () Bool)

(assert (=> b!5582344 m!6564046))

(declare-fun m!6564048 () Bool)

(assert (=> b!5582344 m!6564048))

(declare-fun m!6564050 () Bool)

(assert (=> b!5582339 m!6564050))

(declare-fun m!6564052 () Bool)

(assert (=> b!5582339 m!6564052))

(declare-fun m!6564054 () Bool)

(assert (=> b!5582339 m!6564054))

(declare-fun m!6564056 () Bool)

(assert (=> b!5582339 m!6564056))

(declare-fun m!6564058 () Bool)

(assert (=> b!5582339 m!6564058))

(declare-fun m!6564060 () Bool)

(assert (=> b!5582339 m!6564060))

(declare-fun m!6564062 () Bool)

(assert (=> b!5582339 m!6564062))

(declare-fun m!6564064 () Bool)

(assert (=> b!5582335 m!6564064))

(declare-fun m!6564066 () Bool)

(assert (=> b!5582335 m!6564066))

(declare-fun m!6564068 () Bool)

(assert (=> b!5582335 m!6564068))

(declare-fun m!6564070 () Bool)

(assert (=> b!5582335 m!6564070))

(declare-fun m!6564072 () Bool)

(assert (=> b!5582335 m!6564072))

(assert (=> b!5582335 m!6564070))

(assert (=> b!5582335 m!6564064))

(declare-fun m!6564074 () Bool)

(assert (=> b!5582335 m!6564074))

(declare-fun m!6564076 () Bool)

(assert (=> b!5582343 m!6564076))

(declare-fun m!6564078 () Bool)

(assert (=> b!5582341 m!6564078))

(declare-fun m!6564080 () Bool)

(assert (=> b!5582341 m!6564080))

(declare-fun m!6564082 () Bool)

(assert (=> b!5582341 m!6564082))

(assert (=> b!5582347 m!6564020))

(push 1)

(assert (not b!5582325))

(assert (not b!5582338))

(assert (not b!5582345))

(assert (not b!5582350))

(assert (not b!5582332))

(assert (not b!5582326))

(assert (not b!5582339))

(assert (not b!5582335))

(assert (not b!5582330))

(assert tp_is_empty!40385)

(assert (not b!5582347))

(assert (not b!5582349))

(assert (not b!5582327))

(assert (not b!5582328))

(assert (not b!5582348))

(assert (not start!579876))

(assert (not b!5582337))

(assert (not b!5582336))

(assert (not b!5582352))

(assert (not b!5582354))

(assert (not b!5582344))

(assert (not b!5582343))

(assert (not b!5582323))

(assert (not b!5582334))

(assert (not setNonEmpty!37162))

(assert (not b!5582346))

(assert (not b!5582341))

(assert (not b!5582333))

(assert (not b!5582324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1291310 () Bool)

(declare-fun b!5582512 () Bool)

(assert (= bs!1291310 (and b!5582512 b!5582335)))

(declare-fun lambda!299419 () Int)

(assert (=> bs!1291310 (not (= lambda!299419 lambda!299397))))

(assert (=> bs!1291310 (not (= lambda!299419 lambda!299398))))

(assert (=> b!5582512 true))

(assert (=> b!5582512 true))

(declare-fun bs!1291311 () Bool)

(declare-fun b!5582517 () Bool)

(assert (= bs!1291311 (and b!5582517 b!5582335)))

(declare-fun lambda!299420 () Int)

(assert (=> bs!1291311 (not (= lambda!299420 lambda!299397))))

(assert (=> bs!1291311 (= lambda!299420 lambda!299398)))

(declare-fun bs!1291312 () Bool)

(assert (= bs!1291312 (and b!5582517 b!5582512)))

(assert (=> bs!1291312 (not (= lambda!299420 lambda!299419))))

(assert (=> b!5582517 true))

(assert (=> b!5582517 true))

(declare-fun call!417599 () Bool)

(declare-fun bm!417594 () Bool)

(declare-fun c!977628 () Bool)

(assert (=> bm!417594 (= call!417599 (Exists!2666 (ite c!977628 lambda!299419 lambda!299420)))))

(declare-fun d!1764649 () Bool)

(declare-fun c!977625 () Bool)

(assert (=> d!1764649 (= c!977625 (is-EmptyExpr!15566 r!7292))))

(declare-fun e!3444508 () Bool)

(assert (=> d!1764649 (= (matchRSpec!2669 r!7292 s!2326) e!3444508)))

(declare-fun b!5582507 () Bool)

(declare-fun e!3444504 () Bool)

(assert (=> b!5582507 (= e!3444504 (= s!2326 (Cons!62874 (c!977602 r!7292) Nil!62874)))))

(declare-fun b!5582508 () Bool)

(declare-fun e!3444506 () Bool)

(assert (=> b!5582508 (= e!3444508 e!3444506)))

(declare-fun res!2369059 () Bool)

(assert (=> b!5582508 (= res!2369059 (not (is-EmptyLang!15566 r!7292)))))

(assert (=> b!5582508 (=> (not res!2369059) (not e!3444506))))

(declare-fun bm!417595 () Bool)

(declare-fun call!417600 () Bool)

(declare-fun isEmpty!34689 (List!62998) Bool)

(assert (=> bm!417595 (= call!417600 (isEmpty!34689 s!2326))))

(declare-fun b!5582509 () Bool)

(declare-fun e!3444510 () Bool)

(declare-fun e!3444507 () Bool)

(assert (=> b!5582509 (= e!3444510 e!3444507)))

(declare-fun res!2369061 () Bool)

(assert (=> b!5582509 (= res!2369061 (matchRSpec!2669 (regOne!31645 r!7292) s!2326))))

(assert (=> b!5582509 (=> res!2369061 e!3444507)))

(declare-fun b!5582510 () Bool)

(declare-fun c!977626 () Bool)

(assert (=> b!5582510 (= c!977626 (is-ElementMatch!15566 r!7292))))

(assert (=> b!5582510 (= e!3444506 e!3444504)))

(declare-fun b!5582511 () Bool)

(declare-fun e!3444505 () Bool)

(assert (=> b!5582511 (= e!3444510 e!3444505)))

(assert (=> b!5582511 (= c!977628 (is-Star!15566 r!7292))))

(declare-fun e!3444509 () Bool)

(assert (=> b!5582512 (= e!3444509 call!417599)))

(declare-fun b!5582513 () Bool)

(assert (=> b!5582513 (= e!3444508 call!417600)))

(declare-fun b!5582514 () Bool)

(declare-fun c!977627 () Bool)

(assert (=> b!5582514 (= c!977627 (is-Union!15566 r!7292))))

(assert (=> b!5582514 (= e!3444504 e!3444510)))

(declare-fun b!5582515 () Bool)

(declare-fun res!2369060 () Bool)

(assert (=> b!5582515 (=> res!2369060 e!3444509)))

(assert (=> b!5582515 (= res!2369060 call!417600)))

(assert (=> b!5582515 (= e!3444505 e!3444509)))

(declare-fun b!5582516 () Bool)

(assert (=> b!5582516 (= e!3444507 (matchRSpec!2669 (regTwo!31645 r!7292) s!2326))))

(assert (=> b!5582517 (= e!3444505 call!417599)))

(assert (= (and d!1764649 c!977625) b!5582513))

(assert (= (and d!1764649 (not c!977625)) b!5582508))

(assert (= (and b!5582508 res!2369059) b!5582510))

(assert (= (and b!5582510 c!977626) b!5582507))

(assert (= (and b!5582510 (not c!977626)) b!5582514))

(assert (= (and b!5582514 c!977627) b!5582509))

(assert (= (and b!5582514 (not c!977627)) b!5582511))

(assert (= (and b!5582509 (not res!2369061)) b!5582516))

(assert (= (and b!5582511 c!977628) b!5582515))

(assert (= (and b!5582511 (not c!977628)) b!5582517))

(assert (= (and b!5582515 (not res!2369060)) b!5582512))

(assert (= (or b!5582512 b!5582517) bm!417594))

(assert (= (or b!5582513 b!5582515) bm!417595))

(declare-fun m!6564182 () Bool)

(assert (=> bm!417594 m!6564182))

(declare-fun m!6564184 () Bool)

(assert (=> bm!417595 m!6564184))

(declare-fun m!6564186 () Bool)

(assert (=> b!5582509 m!6564186))

(declare-fun m!6564188 () Bool)

(assert (=> b!5582516 m!6564188))

(assert (=> b!5582341 d!1764649))

(declare-fun b!5582546 () Bool)

(declare-fun res!2369082 () Bool)

(declare-fun e!3444531 () Bool)

(assert (=> b!5582546 (=> res!2369082 e!3444531)))

(assert (=> b!5582546 (= res!2369082 (not (is-ElementMatch!15566 r!7292)))))

(declare-fun e!3444529 () Bool)

(assert (=> b!5582546 (= e!3444529 e!3444531)))

(declare-fun b!5582547 () Bool)

(declare-fun e!3444528 () Bool)

(declare-fun lt!2253895 () Bool)

(declare-fun call!417603 () Bool)

(assert (=> b!5582547 (= e!3444528 (= lt!2253895 call!417603))))

(declare-fun b!5582548 () Bool)

(declare-fun e!3444530 () Bool)

(declare-fun e!3444527 () Bool)

(assert (=> b!5582548 (= e!3444530 e!3444527)))

(declare-fun res!2369079 () Bool)

(assert (=> b!5582548 (=> res!2369079 e!3444527)))

(assert (=> b!5582548 (= res!2369079 call!417603)))

(declare-fun bm!417598 () Bool)

(assert (=> bm!417598 (= call!417603 (isEmpty!34689 s!2326))))

(declare-fun d!1764651 () Bool)

(assert (=> d!1764651 e!3444528))

(declare-fun c!977635 () Bool)

(assert (=> d!1764651 (= c!977635 (is-EmptyExpr!15566 r!7292))))

(declare-fun e!3444526 () Bool)

(assert (=> d!1764651 (= lt!2253895 e!3444526)))

(declare-fun c!977637 () Bool)

(assert (=> d!1764651 (= c!977637 (isEmpty!34689 s!2326))))

(assert (=> d!1764651 (validRegex!7302 r!7292)))

(assert (=> d!1764651 (= (matchR!7751 r!7292 s!2326) lt!2253895)))

(declare-fun b!5582549 () Bool)

(declare-fun res!2369078 () Bool)

(assert (=> b!5582549 (=> res!2369078 e!3444531)))

(declare-fun e!3444525 () Bool)

(assert (=> b!5582549 (= res!2369078 e!3444525)))

(declare-fun res!2369080 () Bool)

(assert (=> b!5582549 (=> (not res!2369080) (not e!3444525))))

(assert (=> b!5582549 (= res!2369080 lt!2253895)))

(declare-fun b!5582550 () Bool)

(declare-fun derivativeStep!4417 (Regex!15566 C!31402) Regex!15566)

(declare-fun head!11906 (List!62998) C!31402)

(declare-fun tail!11001 (List!62998) List!62998)

(assert (=> b!5582550 (= e!3444526 (matchR!7751 (derivativeStep!4417 r!7292 (head!11906 s!2326)) (tail!11001 s!2326)))))

(declare-fun b!5582551 () Bool)

(declare-fun res!2369083 () Bool)

(assert (=> b!5582551 (=> res!2369083 e!3444527)))

(assert (=> b!5582551 (= res!2369083 (not (isEmpty!34689 (tail!11001 s!2326))))))

(declare-fun b!5582552 () Bool)

(assert (=> b!5582552 (= e!3444529 (not lt!2253895))))

(declare-fun b!5582553 () Bool)

(declare-fun res!2369084 () Bool)

(assert (=> b!5582553 (=> (not res!2369084) (not e!3444525))))

(assert (=> b!5582553 (= res!2369084 (not call!417603))))

(declare-fun b!5582554 () Bool)

(assert (=> b!5582554 (= e!3444531 e!3444530)))

(declare-fun res!2369085 () Bool)

(assert (=> b!5582554 (=> (not res!2369085) (not e!3444530))))

(assert (=> b!5582554 (= res!2369085 (not lt!2253895))))

(declare-fun b!5582555 () Bool)

(declare-fun res!2369081 () Bool)

(assert (=> b!5582555 (=> (not res!2369081) (not e!3444525))))

(assert (=> b!5582555 (= res!2369081 (isEmpty!34689 (tail!11001 s!2326)))))

(declare-fun b!5582556 () Bool)

(assert (=> b!5582556 (= e!3444527 (not (= (head!11906 s!2326) (c!977602 r!7292))))))

(declare-fun b!5582557 () Bool)

(assert (=> b!5582557 (= e!3444526 (nullable!5598 r!7292))))

(declare-fun b!5582558 () Bool)

(assert (=> b!5582558 (= e!3444528 e!3444529)))

(declare-fun c!977636 () Bool)

(assert (=> b!5582558 (= c!977636 (is-EmptyLang!15566 r!7292))))

(declare-fun b!5582559 () Bool)

(assert (=> b!5582559 (= e!3444525 (= (head!11906 s!2326) (c!977602 r!7292)))))

(assert (= (and d!1764651 c!977637) b!5582557))

(assert (= (and d!1764651 (not c!977637)) b!5582550))

(assert (= (and d!1764651 c!977635) b!5582547))

(assert (= (and d!1764651 (not c!977635)) b!5582558))

(assert (= (and b!5582558 c!977636) b!5582552))

(assert (= (and b!5582558 (not c!977636)) b!5582546))

(assert (= (and b!5582546 (not res!2369082)) b!5582549))

(assert (= (and b!5582549 res!2369080) b!5582553))

(assert (= (and b!5582553 res!2369084) b!5582555))

(assert (= (and b!5582555 res!2369081) b!5582559))

(assert (= (and b!5582549 (not res!2369078)) b!5582554))

(assert (= (and b!5582554 res!2369085) b!5582548))

(assert (= (and b!5582548 (not res!2369079)) b!5582551))

(assert (= (and b!5582551 (not res!2369083)) b!5582556))

(assert (= (or b!5582547 b!5582548 b!5582553) bm!417598))

(declare-fun m!6564190 () Bool)

(assert (=> b!5582551 m!6564190))

(assert (=> b!5582551 m!6564190))

(declare-fun m!6564192 () Bool)

(assert (=> b!5582551 m!6564192))

(declare-fun m!6564194 () Bool)

(assert (=> b!5582557 m!6564194))

(declare-fun m!6564196 () Bool)

(assert (=> b!5582550 m!6564196))

(assert (=> b!5582550 m!6564196))

(declare-fun m!6564198 () Bool)

(assert (=> b!5582550 m!6564198))

(assert (=> b!5582550 m!6564190))

(assert (=> b!5582550 m!6564198))

(assert (=> b!5582550 m!6564190))

(declare-fun m!6564200 () Bool)

(assert (=> b!5582550 m!6564200))

(assert (=> b!5582555 m!6564190))

(assert (=> b!5582555 m!6564190))

(assert (=> b!5582555 m!6564192))

(assert (=> b!5582559 m!6564196))

(assert (=> d!1764651 m!6564184))

(assert (=> d!1764651 m!6564010))

(assert (=> bm!417598 m!6564184))

(assert (=> b!5582556 m!6564196))

(assert (=> b!5582341 d!1764651))

(declare-fun d!1764653 () Bool)

(assert (=> d!1764653 (= (matchR!7751 r!7292 s!2326) (matchRSpec!2669 r!7292 s!2326))))

(declare-fun lt!2253898 () Unit!155640)

(declare-fun choose!42313 (Regex!15566 List!62998) Unit!155640)

(assert (=> d!1764653 (= lt!2253898 (choose!42313 r!7292 s!2326))))

(assert (=> d!1764653 (validRegex!7302 r!7292)))

(assert (=> d!1764653 (= (mainMatchTheorem!2669 r!7292 s!2326) lt!2253898)))

(declare-fun bs!1291313 () Bool)

(assert (= bs!1291313 d!1764653))

(assert (=> bs!1291313 m!6564080))

(assert (=> bs!1291313 m!6564078))

(declare-fun m!6564202 () Bool)

(assert (=> bs!1291313 m!6564202))

(assert (=> bs!1291313 m!6564010))

(assert (=> b!5582341 d!1764653))

(declare-fun d!1764655 () Bool)

(declare-fun lambda!299423 () Int)

(declare-fun forall!14735 (List!62997 Int) Bool)

(assert (=> d!1764655 (= (inv!82163 setElem!37162) (forall!14735 (exprs!5450 setElem!37162) lambda!299423))))

(declare-fun bs!1291314 () Bool)

(assert (= bs!1291314 d!1764655))

(declare-fun m!6564204 () Bool)

(assert (=> bs!1291314 m!6564204))

(assert (=> setNonEmpty!37162 d!1764655))

(declare-fun d!1764657 () Bool)

(declare-fun dynLambda!24590 (Int Context!9900) (Set Context!9900))

(assert (=> d!1764657 (= (flatMap!1179 z!1189 lambda!299399) (dynLambda!24590 lambda!299399 (h!69323 zl!343)))))

(declare-fun lt!2253901 () Unit!155640)

(declare-fun choose!42314 ((Set Context!9900) Context!9900 Int) Unit!155640)

(assert (=> d!1764657 (= lt!2253901 (choose!42314 z!1189 (h!69323 zl!343) lambda!299399))))

(assert (=> d!1764657 (= z!1189 (set.insert (h!69323 zl!343) (as set.empty (Set Context!9900))))))

(assert (=> d!1764657 (= (lemmaFlatMapOnSingletonSet!711 z!1189 (h!69323 zl!343) lambda!299399) lt!2253901)))

(declare-fun b_lambda!211571 () Bool)

(assert (=> (not b_lambda!211571) (not d!1764657)))

(declare-fun bs!1291315 () Bool)

(assert (= bs!1291315 d!1764657))

(assert (=> bs!1291315 m!6564058))

(declare-fun m!6564206 () Bool)

(assert (=> bs!1291315 m!6564206))

(declare-fun m!6564208 () Bool)

(assert (=> bs!1291315 m!6564208))

(declare-fun m!6564210 () Bool)

(assert (=> bs!1291315 m!6564210))

(assert (=> b!5582339 d!1764657))

(declare-fun d!1764659 () Bool)

(declare-fun nullableFct!1710 (Regex!15566) Bool)

(assert (=> d!1764659 (= (nullable!5598 (h!69321 (exprs!5450 (h!69323 zl!343)))) (nullableFct!1710 (h!69321 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun bs!1291316 () Bool)

(assert (= bs!1291316 d!1764659))

(declare-fun m!6564212 () Bool)

(assert (=> bs!1291316 m!6564212))

(assert (=> b!5582339 d!1764659))

(declare-fun b!5582570 () Bool)

(declare-fun e!3444540 () (Set Context!9900))

(declare-fun call!417606 () (Set Context!9900))

(assert (=> b!5582570 (= e!3444540 call!417606)))

(declare-fun e!3444539 () (Set Context!9900))

(declare-fun b!5582571 () Bool)

(assert (=> b!5582571 (= e!3444539 (set.union call!417606 (derivationStepZipperUp!834 (Context!9901 (t!376270 (exprs!5450 (Context!9901 (Cons!62873 (h!69321 (exprs!5450 (h!69323 zl!343))) (t!376270 (exprs!5450 (h!69323 zl!343)))))))) (h!69322 s!2326))))))

(declare-fun bm!417601 () Bool)

(assert (=> bm!417601 (= call!417606 (derivationStepZipperDown!908 (h!69321 (exprs!5450 (Context!9901 (Cons!62873 (h!69321 (exprs!5450 (h!69323 zl!343))) (t!376270 (exprs!5450 (h!69323 zl!343))))))) (Context!9901 (t!376270 (exprs!5450 (Context!9901 (Cons!62873 (h!69321 (exprs!5450 (h!69323 zl!343))) (t!376270 (exprs!5450 (h!69323 zl!343)))))))) (h!69322 s!2326)))))

(declare-fun b!5582572 () Bool)

(assert (=> b!5582572 (= e!3444539 e!3444540)))

(declare-fun c!977643 () Bool)

(assert (=> b!5582572 (= c!977643 (is-Cons!62873 (exprs!5450 (Context!9901 (Cons!62873 (h!69321 (exprs!5450 (h!69323 zl!343))) (t!376270 (exprs!5450 (h!69323 zl!343))))))))))

(declare-fun d!1764661 () Bool)

(declare-fun c!977642 () Bool)

(declare-fun e!3444538 () Bool)

(assert (=> d!1764661 (= c!977642 e!3444538)))

(declare-fun res!2369088 () Bool)

(assert (=> d!1764661 (=> (not res!2369088) (not e!3444538))))

(assert (=> d!1764661 (= res!2369088 (is-Cons!62873 (exprs!5450 (Context!9901 (Cons!62873 (h!69321 (exprs!5450 (h!69323 zl!343))) (t!376270 (exprs!5450 (h!69323 zl!343))))))))))

(assert (=> d!1764661 (= (derivationStepZipperUp!834 (Context!9901 (Cons!62873 (h!69321 (exprs!5450 (h!69323 zl!343))) (t!376270 (exprs!5450 (h!69323 zl!343))))) (h!69322 s!2326)) e!3444539)))

(declare-fun b!5582573 () Bool)

(assert (=> b!5582573 (= e!3444538 (nullable!5598 (h!69321 (exprs!5450 (Context!9901 (Cons!62873 (h!69321 (exprs!5450 (h!69323 zl!343))) (t!376270 (exprs!5450 (h!69323 zl!343)))))))))))

(declare-fun b!5582574 () Bool)

(assert (=> b!5582574 (= e!3444540 (as set.empty (Set Context!9900)))))

(assert (= (and d!1764661 res!2369088) b!5582573))

(assert (= (and d!1764661 c!977642) b!5582571))

(assert (= (and d!1764661 (not c!977642)) b!5582572))

(assert (= (and b!5582572 c!977643) b!5582570))

(assert (= (and b!5582572 (not c!977643)) b!5582574))

(assert (= (or b!5582571 b!5582570) bm!417601))

(declare-fun m!6564214 () Bool)

(assert (=> b!5582571 m!6564214))

(declare-fun m!6564216 () Bool)

(assert (=> bm!417601 m!6564216))

(declare-fun m!6564218 () Bool)

(assert (=> b!5582573 m!6564218))

(assert (=> b!5582339 d!1764661))

(declare-fun d!1764663 () Bool)

(declare-fun choose!42315 ((Set Context!9900) Int) (Set Context!9900))

(assert (=> d!1764663 (= (flatMap!1179 z!1189 lambda!299399) (choose!42315 z!1189 lambda!299399))))

(declare-fun bs!1291317 () Bool)

(assert (= bs!1291317 d!1764663))

(declare-fun m!6564220 () Bool)

(assert (=> bs!1291317 m!6564220))

(assert (=> b!5582339 d!1764663))

(declare-fun b!5582575 () Bool)

(declare-fun e!3444543 () (Set Context!9900))

(declare-fun call!417607 () (Set Context!9900))

(assert (=> b!5582575 (= e!3444543 call!417607)))

(declare-fun b!5582576 () Bool)

(declare-fun e!3444542 () (Set Context!9900))

(assert (=> b!5582576 (= e!3444542 (set.union call!417607 (derivationStepZipperUp!834 (Context!9901 (t!376270 (exprs!5450 lt!2253783))) (h!69322 s!2326))))))

(declare-fun bm!417602 () Bool)

(assert (=> bm!417602 (= call!417607 (derivationStepZipperDown!908 (h!69321 (exprs!5450 lt!2253783)) (Context!9901 (t!376270 (exprs!5450 lt!2253783))) (h!69322 s!2326)))))

(declare-fun b!5582577 () Bool)

(assert (=> b!5582577 (= e!3444542 e!3444543)))

(declare-fun c!977645 () Bool)

(assert (=> b!5582577 (= c!977645 (is-Cons!62873 (exprs!5450 lt!2253783)))))

(declare-fun d!1764665 () Bool)

(declare-fun c!977644 () Bool)

(declare-fun e!3444541 () Bool)

(assert (=> d!1764665 (= c!977644 e!3444541)))

(declare-fun res!2369089 () Bool)

(assert (=> d!1764665 (=> (not res!2369089) (not e!3444541))))

(assert (=> d!1764665 (= res!2369089 (is-Cons!62873 (exprs!5450 lt!2253783)))))

(assert (=> d!1764665 (= (derivationStepZipperUp!834 lt!2253783 (h!69322 s!2326)) e!3444542)))

(declare-fun b!5582578 () Bool)

(assert (=> b!5582578 (= e!3444541 (nullable!5598 (h!69321 (exprs!5450 lt!2253783))))))

(declare-fun b!5582579 () Bool)

(assert (=> b!5582579 (= e!3444543 (as set.empty (Set Context!9900)))))

(assert (= (and d!1764665 res!2369089) b!5582578))

(assert (= (and d!1764665 c!977644) b!5582576))

(assert (= (and d!1764665 (not c!977644)) b!5582577))

(assert (= (and b!5582577 c!977645) b!5582575))

(assert (= (and b!5582577 (not c!977645)) b!5582579))

(assert (= (or b!5582576 b!5582575) bm!417602))

(declare-fun m!6564222 () Bool)

(assert (=> b!5582576 m!6564222))

(declare-fun m!6564224 () Bool)

(assert (=> bm!417602 m!6564224))

(declare-fun m!6564226 () Bool)

(assert (=> b!5582578 m!6564226))

(assert (=> b!5582339 d!1764665))

(declare-fun bm!417615 () Bool)

(declare-fun call!417620 () (Set Context!9900))

(declare-fun call!417623 () (Set Context!9900))

(assert (=> bm!417615 (= call!417620 call!417623)))

(declare-fun b!5582602 () Bool)

(declare-fun e!3444556 () (Set Context!9900))

(declare-fun e!3444559 () (Set Context!9900))

(assert (=> b!5582602 (= e!3444556 e!3444559)))

(declare-fun c!977660 () Bool)

(assert (=> b!5582602 (= c!977660 (is-Union!15566 (h!69321 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun bm!417616 () Bool)

(declare-fun call!417624 () (Set Context!9900))

(assert (=> bm!417616 (= call!417623 call!417624)))

(declare-fun d!1764667 () Bool)

(declare-fun c!977657 () Bool)

(assert (=> d!1764667 (= c!977657 (and (is-ElementMatch!15566 (h!69321 (exprs!5450 (h!69323 zl!343)))) (= (c!977602 (h!69321 (exprs!5450 (h!69323 zl!343)))) (h!69322 s!2326))))))

(assert (=> d!1764667 (= (derivationStepZipperDown!908 (h!69321 (exprs!5450 (h!69323 zl!343))) lt!2253783 (h!69322 s!2326)) e!3444556)))

(declare-fun b!5582603 () Bool)

(declare-fun e!3444558 () (Set Context!9900))

(declare-fun call!417621 () (Set Context!9900))

(assert (=> b!5582603 (= e!3444558 (set.union call!417621 call!417623))))

(declare-fun bm!417617 () Bool)

(declare-fun call!417625 () List!62997)

(assert (=> bm!417617 (= call!417621 (derivationStepZipperDown!908 (ite c!977660 (regTwo!31645 (h!69321 (exprs!5450 (h!69323 zl!343)))) (regOne!31644 (h!69321 (exprs!5450 (h!69323 zl!343))))) (ite c!977660 lt!2253783 (Context!9901 call!417625)) (h!69322 s!2326)))))

(declare-fun b!5582604 () Bool)

(assert (=> b!5582604 (= e!3444556 (set.insert lt!2253783 (as set.empty (Set Context!9900))))))

(declare-fun b!5582605 () Bool)

(declare-fun e!3444560 () (Set Context!9900))

(assert (=> b!5582605 (= e!3444558 e!3444560)))

(declare-fun c!977656 () Bool)

(assert (=> b!5582605 (= c!977656 (is-Concat!24411 (h!69321 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun b!5582606 () Bool)

(declare-fun c!977658 () Bool)

(declare-fun e!3444561 () Bool)

(assert (=> b!5582606 (= c!977658 e!3444561)))

(declare-fun res!2369092 () Bool)

(assert (=> b!5582606 (=> (not res!2369092) (not e!3444561))))

(assert (=> b!5582606 (= res!2369092 (is-Concat!24411 (h!69321 (exprs!5450 (h!69323 zl!343)))))))

(assert (=> b!5582606 (= e!3444559 e!3444558)))

(declare-fun b!5582607 () Bool)

(declare-fun e!3444557 () (Set Context!9900))

(assert (=> b!5582607 (= e!3444557 (as set.empty (Set Context!9900)))))

(declare-fun b!5582608 () Bool)

(assert (=> b!5582608 (= e!3444559 (set.union call!417624 call!417621))))

(declare-fun b!5582609 () Bool)

(assert (=> b!5582609 (= e!3444561 (nullable!5598 (regOne!31644 (h!69321 (exprs!5450 (h!69323 zl!343))))))))

(declare-fun bm!417618 () Bool)

(declare-fun call!417622 () List!62997)

(assert (=> bm!417618 (= call!417624 (derivationStepZipperDown!908 (ite c!977660 (regOne!31645 (h!69321 (exprs!5450 (h!69323 zl!343)))) (ite c!977658 (regTwo!31644 (h!69321 (exprs!5450 (h!69323 zl!343)))) (ite c!977656 (regOne!31644 (h!69321 (exprs!5450 (h!69323 zl!343)))) (reg!15895 (h!69321 (exprs!5450 (h!69323 zl!343))))))) (ite (or c!977660 c!977658) lt!2253783 (Context!9901 call!417622)) (h!69322 s!2326)))))

(declare-fun b!5582610 () Bool)

(assert (=> b!5582610 (= e!3444557 call!417620)))

(declare-fun bm!417619 () Bool)

(declare-fun $colon$colon!1631 (List!62997 Regex!15566) List!62997)

(assert (=> bm!417619 (= call!417625 ($colon$colon!1631 (exprs!5450 lt!2253783) (ite (or c!977658 c!977656) (regTwo!31644 (h!69321 (exprs!5450 (h!69323 zl!343)))) (h!69321 (exprs!5450 (h!69323 zl!343))))))))

(declare-fun b!5582611 () Bool)

(declare-fun c!977659 () Bool)

(assert (=> b!5582611 (= c!977659 (is-Star!15566 (h!69321 (exprs!5450 (h!69323 zl!343)))))))

(assert (=> b!5582611 (= e!3444560 e!3444557)))

(declare-fun b!5582612 () Bool)

(assert (=> b!5582612 (= e!3444560 call!417620)))

(declare-fun bm!417620 () Bool)

(assert (=> bm!417620 (= call!417622 call!417625)))

(assert (= (and d!1764667 c!977657) b!5582604))

(assert (= (and d!1764667 (not c!977657)) b!5582602))

(assert (= (and b!5582602 c!977660) b!5582608))

(assert (= (and b!5582602 (not c!977660)) b!5582606))

(assert (= (and b!5582606 res!2369092) b!5582609))

(assert (= (and b!5582606 c!977658) b!5582603))

(assert (= (and b!5582606 (not c!977658)) b!5582605))

(assert (= (and b!5582605 c!977656) b!5582612))

(assert (= (and b!5582605 (not c!977656)) b!5582611))

(assert (= (and b!5582611 c!977659) b!5582610))

(assert (= (and b!5582611 (not c!977659)) b!5582607))

(assert (= (or b!5582612 b!5582610) bm!417620))

(assert (= (or b!5582612 b!5582610) bm!417615))

(assert (= (or b!5582603 bm!417620) bm!417619))

(assert (= (or b!5582603 bm!417615) bm!417616))

(assert (= (or b!5582608 b!5582603) bm!417617))

(assert (= (or b!5582608 bm!417616) bm!417618))

(declare-fun m!6564228 () Bool)

(assert (=> bm!417619 m!6564228))

(declare-fun m!6564230 () Bool)

(assert (=> b!5582609 m!6564230))

(declare-fun m!6564232 () Bool)

(assert (=> bm!417617 m!6564232))

(declare-fun m!6564234 () Bool)

(assert (=> b!5582604 m!6564234))

(declare-fun m!6564236 () Bool)

(assert (=> bm!417618 m!6564236))

(assert (=> b!5582339 d!1764667))

(declare-fun b!5582613 () Bool)

(declare-fun e!3444564 () (Set Context!9900))

(declare-fun call!417626 () (Set Context!9900))

(assert (=> b!5582613 (= e!3444564 call!417626)))

(declare-fun e!3444563 () (Set Context!9900))

(declare-fun b!5582614 () Bool)

(assert (=> b!5582614 (= e!3444563 (set.union call!417626 (derivationStepZipperUp!834 (Context!9901 (t!376270 (exprs!5450 (h!69323 zl!343)))) (h!69322 s!2326))))))

(declare-fun bm!417621 () Bool)

(assert (=> bm!417621 (= call!417626 (derivationStepZipperDown!908 (h!69321 (exprs!5450 (h!69323 zl!343))) (Context!9901 (t!376270 (exprs!5450 (h!69323 zl!343)))) (h!69322 s!2326)))))

(declare-fun b!5582615 () Bool)

(assert (=> b!5582615 (= e!3444563 e!3444564)))

(declare-fun c!977662 () Bool)

(assert (=> b!5582615 (= c!977662 (is-Cons!62873 (exprs!5450 (h!69323 zl!343))))))

(declare-fun d!1764669 () Bool)

(declare-fun c!977661 () Bool)

(declare-fun e!3444562 () Bool)

(assert (=> d!1764669 (= c!977661 e!3444562)))

(declare-fun res!2369093 () Bool)

(assert (=> d!1764669 (=> (not res!2369093) (not e!3444562))))

(assert (=> d!1764669 (= res!2369093 (is-Cons!62873 (exprs!5450 (h!69323 zl!343))))))

(assert (=> d!1764669 (= (derivationStepZipperUp!834 (h!69323 zl!343) (h!69322 s!2326)) e!3444563)))

(declare-fun b!5582616 () Bool)

(assert (=> b!5582616 (= e!3444562 (nullable!5598 (h!69321 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun b!5582617 () Bool)

(assert (=> b!5582617 (= e!3444564 (as set.empty (Set Context!9900)))))

(assert (= (and d!1764669 res!2369093) b!5582616))

(assert (= (and d!1764669 c!977661) b!5582614))

(assert (= (and d!1764669 (not c!977661)) b!5582615))

(assert (= (and b!5582615 c!977662) b!5582613))

(assert (= (and b!5582615 (not c!977662)) b!5582617))

(assert (= (or b!5582614 b!5582613) bm!417621))

(declare-fun m!6564238 () Bool)

(assert (=> b!5582614 m!6564238))

(declare-fun m!6564240 () Bool)

(assert (=> bm!417621 m!6564240))

(assert (=> b!5582616 m!6564056))

(assert (=> b!5582339 d!1764669))

(declare-fun d!1764671 () Bool)

(declare-fun c!977665 () Bool)

(assert (=> d!1764671 (= c!977665 (isEmpty!34689 (t!376271 s!2326)))))

(declare-fun e!3444567 () Bool)

(assert (=> d!1764671 (= (matchZipper!1704 lt!2253789 (t!376271 s!2326)) e!3444567)))

(declare-fun b!5582622 () Bool)

(declare-fun nullableZipper!1563 ((Set Context!9900)) Bool)

(assert (=> b!5582622 (= e!3444567 (nullableZipper!1563 lt!2253789))))

(declare-fun b!5582623 () Bool)

(assert (=> b!5582623 (= e!3444567 (matchZipper!1704 (derivationStepZipper!1665 lt!2253789 (head!11906 (t!376271 s!2326))) (tail!11001 (t!376271 s!2326))))))

(assert (= (and d!1764671 c!977665) b!5582622))

(assert (= (and d!1764671 (not c!977665)) b!5582623))

(declare-fun m!6564242 () Bool)

(assert (=> d!1764671 m!6564242))

(declare-fun m!6564244 () Bool)

(assert (=> b!5582622 m!6564244))

(declare-fun m!6564246 () Bool)

(assert (=> b!5582623 m!6564246))

(assert (=> b!5582623 m!6564246))

(declare-fun m!6564248 () Bool)

(assert (=> b!5582623 m!6564248))

(declare-fun m!6564250 () Bool)

(assert (=> b!5582623 m!6564250))

(assert (=> b!5582623 m!6564248))

(assert (=> b!5582623 m!6564250))

(declare-fun m!6564252 () Bool)

(assert (=> b!5582623 m!6564252))

(assert (=> b!5582350 d!1764671))

(declare-fun bs!1291318 () Bool)

(declare-fun d!1764673 () Bool)

(assert (= bs!1291318 (and d!1764673 d!1764655)))

(declare-fun lambda!299426 () Int)

(assert (=> bs!1291318 (= lambda!299426 lambda!299423)))

(declare-fun b!5582644 () Bool)

(declare-fun e!3444581 () Bool)

(declare-fun lt!2253904 () Regex!15566)

(declare-fun head!11907 (List!62997) Regex!15566)

(assert (=> b!5582644 (= e!3444581 (= lt!2253904 (head!11907 (unfocusZipperList!994 zl!343))))))

(declare-fun b!5582645 () Bool)

(declare-fun e!3444582 () Bool)

(declare-fun e!3444585 () Bool)

(assert (=> b!5582645 (= e!3444582 e!3444585)))

(declare-fun c!977675 () Bool)

(assert (=> b!5582645 (= c!977675 (isEmpty!34686 (unfocusZipperList!994 zl!343)))))

(declare-fun b!5582646 () Bool)

(declare-fun e!3444584 () Regex!15566)

(assert (=> b!5582646 (= e!3444584 EmptyLang!15566)))

(declare-fun b!5582648 () Bool)

(assert (=> b!5582648 (= e!3444584 (Union!15566 (h!69321 (unfocusZipperList!994 zl!343)) (generalisedUnion!1429 (t!376270 (unfocusZipperList!994 zl!343)))))))

(declare-fun b!5582649 () Bool)

(declare-fun isUnion!563 (Regex!15566) Bool)

(assert (=> b!5582649 (= e!3444581 (isUnion!563 lt!2253904))))

(declare-fun b!5582650 () Bool)

(declare-fun e!3444580 () Regex!15566)

(assert (=> b!5582650 (= e!3444580 e!3444584)))

(declare-fun c!977677 () Bool)

(assert (=> b!5582650 (= c!977677 (is-Cons!62873 (unfocusZipperList!994 zl!343)))))

(declare-fun b!5582651 () Bool)

(declare-fun e!3444583 () Bool)

(assert (=> b!5582651 (= e!3444583 (isEmpty!34686 (t!376270 (unfocusZipperList!994 zl!343))))))

(declare-fun b!5582652 () Bool)

(declare-fun isEmptyLang!1133 (Regex!15566) Bool)

(assert (=> b!5582652 (= e!3444585 (isEmptyLang!1133 lt!2253904))))

(declare-fun b!5582653 () Bool)

(assert (=> b!5582653 (= e!3444580 (h!69321 (unfocusZipperList!994 zl!343)))))

(declare-fun b!5582647 () Bool)

(assert (=> b!5582647 (= e!3444585 e!3444581)))

(declare-fun c!977676 () Bool)

(declare-fun tail!11002 (List!62997) List!62997)

(assert (=> b!5582647 (= c!977676 (isEmpty!34686 (tail!11002 (unfocusZipperList!994 zl!343))))))

(assert (=> d!1764673 e!3444582))

(declare-fun res!2369098 () Bool)

(assert (=> d!1764673 (=> (not res!2369098) (not e!3444582))))

(assert (=> d!1764673 (= res!2369098 (validRegex!7302 lt!2253904))))

(assert (=> d!1764673 (= lt!2253904 e!3444580)))

(declare-fun c!977674 () Bool)

(assert (=> d!1764673 (= c!977674 e!3444583)))

(declare-fun res!2369099 () Bool)

(assert (=> d!1764673 (=> (not res!2369099) (not e!3444583))))

(assert (=> d!1764673 (= res!2369099 (is-Cons!62873 (unfocusZipperList!994 zl!343)))))

(assert (=> d!1764673 (forall!14735 (unfocusZipperList!994 zl!343) lambda!299426)))

(assert (=> d!1764673 (= (generalisedUnion!1429 (unfocusZipperList!994 zl!343)) lt!2253904)))

(assert (= (and d!1764673 res!2369099) b!5582651))

(assert (= (and d!1764673 c!977674) b!5582653))

(assert (= (and d!1764673 (not c!977674)) b!5582650))

(assert (= (and b!5582650 c!977677) b!5582648))

(assert (= (and b!5582650 (not c!977677)) b!5582646))

(assert (= (and d!1764673 res!2369098) b!5582645))

(assert (= (and b!5582645 c!977675) b!5582652))

(assert (= (and b!5582645 (not c!977675)) b!5582647))

(assert (= (and b!5582647 c!977676) b!5582644))

(assert (= (and b!5582647 (not c!977676)) b!5582649))

(declare-fun m!6564254 () Bool)

(assert (=> b!5582648 m!6564254))

(assert (=> b!5582644 m!6564022))

(declare-fun m!6564256 () Bool)

(assert (=> b!5582644 m!6564256))

(declare-fun m!6564258 () Bool)

(assert (=> b!5582649 m!6564258))

(declare-fun m!6564260 () Bool)

(assert (=> b!5582652 m!6564260))

(declare-fun m!6564262 () Bool)

(assert (=> b!5582651 m!6564262))

(declare-fun m!6564264 () Bool)

(assert (=> d!1764673 m!6564264))

(assert (=> d!1764673 m!6564022))

(declare-fun m!6564266 () Bool)

(assert (=> d!1764673 m!6564266))

(assert (=> b!5582647 m!6564022))

(declare-fun m!6564268 () Bool)

(assert (=> b!5582647 m!6564268))

(assert (=> b!5582647 m!6564268))

(declare-fun m!6564270 () Bool)

(assert (=> b!5582647 m!6564270))

(assert (=> b!5582645 m!6564022))

(declare-fun m!6564272 () Bool)

(assert (=> b!5582645 m!6564272))

(assert (=> b!5582330 d!1764673))

(declare-fun bs!1291319 () Bool)

(declare-fun d!1764675 () Bool)

(assert (= bs!1291319 (and d!1764675 d!1764655)))

(declare-fun lambda!299429 () Int)

(assert (=> bs!1291319 (= lambda!299429 lambda!299423)))

(declare-fun bs!1291320 () Bool)

(assert (= bs!1291320 (and d!1764675 d!1764673)))

(assert (=> bs!1291320 (= lambda!299429 lambda!299426)))

(declare-fun lt!2253907 () List!62997)

(assert (=> d!1764675 (forall!14735 lt!2253907 lambda!299429)))

(declare-fun e!3444588 () List!62997)

(assert (=> d!1764675 (= lt!2253907 e!3444588)))

(declare-fun c!977680 () Bool)

(assert (=> d!1764675 (= c!977680 (is-Cons!62875 zl!343))))

(assert (=> d!1764675 (= (unfocusZipperList!994 zl!343) lt!2253907)))

(declare-fun b!5582658 () Bool)

(assert (=> b!5582658 (= e!3444588 (Cons!62873 (generalisedConcat!1181 (exprs!5450 (h!69323 zl!343))) (unfocusZipperList!994 (t!376272 zl!343))))))

(declare-fun b!5582659 () Bool)

(assert (=> b!5582659 (= e!3444588 Nil!62873)))

(assert (= (and d!1764675 c!977680) b!5582658))

(assert (= (and d!1764675 (not c!977680)) b!5582659))

(declare-fun m!6564274 () Bool)

(assert (=> d!1764675 m!6564274))

(assert (=> b!5582658 m!6564012))

(declare-fun m!6564276 () Bool)

(assert (=> b!5582658 m!6564276))

(assert (=> b!5582330 d!1764675))

(assert (=> b!5582333 d!1764671))

(declare-fun d!1764677 () Bool)

(declare-fun lt!2253910 () Regex!15566)

(assert (=> d!1764677 (validRegex!7302 lt!2253910)))

(assert (=> d!1764677 (= lt!2253910 (generalisedUnion!1429 (unfocusZipperList!994 zl!343)))))

(assert (=> d!1764677 (= (unfocusZipper!1308 zl!343) lt!2253910)))

(declare-fun bs!1291321 () Bool)

(assert (= bs!1291321 d!1764677))

(declare-fun m!6564278 () Bool)

(assert (=> bs!1291321 m!6564278))

(assert (=> bs!1291321 m!6564022))

(assert (=> bs!1291321 m!6564022))

(assert (=> bs!1291321 m!6564024))

(assert (=> b!5582343 d!1764677))

(declare-fun bs!1291322 () Bool)

(declare-fun d!1764679 () Bool)

(assert (= bs!1291322 (and d!1764679 b!5582339)))

(declare-fun lambda!299432 () Int)

(assert (=> bs!1291322 (= lambda!299432 lambda!299399)))

(assert (=> d!1764679 true))

(assert (=> d!1764679 (= (derivationStepZipper!1665 lt!2253796 (h!69322 s!2326)) (flatMap!1179 lt!2253796 lambda!299432))))

(declare-fun bs!1291323 () Bool)

(assert (= bs!1291323 d!1764679))

(declare-fun m!6564280 () Bool)

(assert (=> bs!1291323 m!6564280))

(assert (=> b!5582354 d!1764679))

(declare-fun bs!1291324 () Bool)

(declare-fun d!1764681 () Bool)

(assert (= bs!1291324 (and d!1764681 d!1764655)))

(declare-fun lambda!299433 () Int)

(assert (=> bs!1291324 (= lambda!299433 lambda!299423)))

(declare-fun bs!1291325 () Bool)

(assert (= bs!1291325 (and d!1764681 d!1764673)))

(assert (=> bs!1291325 (= lambda!299433 lambda!299426)))

(declare-fun bs!1291326 () Bool)

(assert (= bs!1291326 (and d!1764681 d!1764675)))

(assert (=> bs!1291326 (= lambda!299433 lambda!299429)))

(assert (=> d!1764681 (= (inv!82163 (h!69323 zl!343)) (forall!14735 (exprs!5450 (h!69323 zl!343)) lambda!299433))))

(declare-fun bs!1291327 () Bool)

(assert (= bs!1291327 d!1764681))

(declare-fun m!6564282 () Bool)

(assert (=> bs!1291327 m!6564282))

(assert (=> b!5582352 d!1764681))

(declare-fun d!1764683 () Bool)

(assert (=> d!1764683 (= (isEmpty!34685 (t!376272 zl!343)) (is-Nil!62875 (t!376272 zl!343)))))

(assert (=> b!5582332 d!1764683))

(declare-fun b!5582680 () Bool)

(declare-fun res!2369111 () Bool)

(declare-fun e!3444608 () Bool)

(assert (=> b!5582680 (=> res!2369111 e!3444608)))

(assert (=> b!5582680 (= res!2369111 (not (is-Concat!24411 r!7292)))))

(declare-fun e!3444609 () Bool)

(assert (=> b!5582680 (= e!3444609 e!3444608)))

(declare-fun b!5582681 () Bool)

(declare-fun res!2369110 () Bool)

(declare-fun e!3444604 () Bool)

(assert (=> b!5582681 (=> (not res!2369110) (not e!3444604))))

(declare-fun call!417635 () Bool)

(assert (=> b!5582681 (= res!2369110 call!417635)))

(assert (=> b!5582681 (= e!3444609 e!3444604)))

(declare-fun b!5582682 () Bool)

(declare-fun e!3444606 () Bool)

(declare-fun e!3444605 () Bool)

(assert (=> b!5582682 (= e!3444606 e!3444605)))

(declare-fun res!2369114 () Bool)

(assert (=> b!5582682 (= res!2369114 (not (nullable!5598 (reg!15895 r!7292))))))

(assert (=> b!5582682 (=> (not res!2369114) (not e!3444605))))

(declare-fun bm!417628 () Bool)

(declare-fun c!977687 () Bool)

(assert (=> bm!417628 (= call!417635 (validRegex!7302 (ite c!977687 (regOne!31645 r!7292) (regOne!31644 r!7292))))))

(declare-fun c!977688 () Bool)

(declare-fun bm!417629 () Bool)

(declare-fun call!417633 () Bool)

(assert (=> bm!417629 (= call!417633 (validRegex!7302 (ite c!977688 (reg!15895 r!7292) (ite c!977687 (regTwo!31645 r!7292) (regTwo!31644 r!7292)))))))

(declare-fun b!5582683 () Bool)

(declare-fun e!3444603 () Bool)

(assert (=> b!5582683 (= e!3444603 e!3444606)))

(assert (=> b!5582683 (= c!977688 (is-Star!15566 r!7292))))

(declare-fun b!5582684 () Bool)

(declare-fun e!3444607 () Bool)

(declare-fun call!417634 () Bool)

(assert (=> b!5582684 (= e!3444607 call!417634)))

(declare-fun b!5582685 () Bool)

(assert (=> b!5582685 (= e!3444606 e!3444609)))

(assert (=> b!5582685 (= c!977687 (is-Union!15566 r!7292))))

(declare-fun b!5582687 () Bool)

(assert (=> b!5582687 (= e!3444605 call!417633)))

(declare-fun b!5582688 () Bool)

(assert (=> b!5582688 (= e!3444608 e!3444607)))

(declare-fun res!2369112 () Bool)

(assert (=> b!5582688 (=> (not res!2369112) (not e!3444607))))

(assert (=> b!5582688 (= res!2369112 call!417635)))

(declare-fun bm!417630 () Bool)

(assert (=> bm!417630 (= call!417634 call!417633)))

(declare-fun b!5582686 () Bool)

(assert (=> b!5582686 (= e!3444604 call!417634)))

(declare-fun d!1764685 () Bool)

(declare-fun res!2369113 () Bool)

(assert (=> d!1764685 (=> res!2369113 e!3444603)))

(assert (=> d!1764685 (= res!2369113 (is-ElementMatch!15566 r!7292))))

(assert (=> d!1764685 (= (validRegex!7302 r!7292) e!3444603)))

(assert (= (and d!1764685 (not res!2369113)) b!5582683))

(assert (= (and b!5582683 c!977688) b!5582682))

(assert (= (and b!5582683 (not c!977688)) b!5582685))

(assert (= (and b!5582682 res!2369114) b!5582687))

(assert (= (and b!5582685 c!977687) b!5582681))

(assert (= (and b!5582685 (not c!977687)) b!5582680))

(assert (= (and b!5582681 res!2369110) b!5582686))

(assert (= (and b!5582680 (not res!2369111)) b!5582688))

(assert (= (and b!5582688 res!2369112) b!5582684))

(assert (= (or b!5582686 b!5582684) bm!417630))

(assert (= (or b!5582681 b!5582688) bm!417628))

(assert (= (or b!5582687 bm!417630) bm!417629))

(declare-fun m!6564284 () Bool)

(assert (=> b!5582682 m!6564284))

(declare-fun m!6564286 () Bool)

(assert (=> bm!417628 m!6564286))

(declare-fun m!6564288 () Bool)

(assert (=> bm!417629 m!6564288))

(assert (=> start!579876 d!1764685))

(declare-fun d!1764687 () Bool)

(declare-fun e!3444612 () Bool)

(assert (=> d!1764687 (= (matchZipper!1704 (set.union lt!2253793 lt!2253805) (t!376271 s!2326)) e!3444612)))

(declare-fun res!2369117 () Bool)

(assert (=> d!1764687 (=> res!2369117 e!3444612)))

(assert (=> d!1764687 (= res!2369117 (matchZipper!1704 lt!2253793 (t!376271 s!2326)))))

(declare-fun lt!2253913 () Unit!155640)

(declare-fun choose!42316 ((Set Context!9900) (Set Context!9900) List!62998) Unit!155640)

(assert (=> d!1764687 (= lt!2253913 (choose!42316 lt!2253793 lt!2253805 (t!376271 s!2326)))))

(assert (=> d!1764687 (= (lemmaZipperConcatMatchesSameAsBothZippers!591 lt!2253793 lt!2253805 (t!376271 s!2326)) lt!2253913)))

(declare-fun b!5582691 () Bool)

(assert (=> b!5582691 (= e!3444612 (matchZipper!1704 lt!2253805 (t!376271 s!2326)))))

(assert (= (and d!1764687 (not res!2369117)) b!5582691))

(assert (=> d!1764687 m!6564008))

(assert (=> d!1764687 m!6563990))

(declare-fun m!6564290 () Bool)

(assert (=> d!1764687 m!6564290))

(assert (=> b!5582691 m!6564020))

(assert (=> b!5582323 d!1764687))

(declare-fun d!1764689 () Bool)

(declare-fun c!977689 () Bool)

(assert (=> d!1764689 (= c!977689 (isEmpty!34689 (t!376271 s!2326)))))

(declare-fun e!3444613 () Bool)

(assert (=> d!1764689 (= (matchZipper!1704 (set.union lt!2253793 lt!2253805) (t!376271 s!2326)) e!3444613)))

(declare-fun b!5582692 () Bool)

(assert (=> b!5582692 (= e!3444613 (nullableZipper!1563 (set.union lt!2253793 lt!2253805)))))

(declare-fun b!5582693 () Bool)

(assert (=> b!5582693 (= e!3444613 (matchZipper!1704 (derivationStepZipper!1665 (set.union lt!2253793 lt!2253805) (head!11906 (t!376271 s!2326))) (tail!11001 (t!376271 s!2326))))))

(assert (= (and d!1764689 c!977689) b!5582692))

(assert (= (and d!1764689 (not c!977689)) b!5582693))

(assert (=> d!1764689 m!6564242))

(declare-fun m!6564292 () Bool)

(assert (=> b!5582692 m!6564292))

(assert (=> b!5582693 m!6564246))

(assert (=> b!5582693 m!6564246))

(declare-fun m!6564294 () Bool)

(assert (=> b!5582693 m!6564294))

(assert (=> b!5582693 m!6564250))

(assert (=> b!5582693 m!6564294))

(assert (=> b!5582693 m!6564250))

(declare-fun m!6564296 () Bool)

(assert (=> b!5582693 m!6564296))

(assert (=> b!5582323 d!1764689))

(declare-fun bs!1291328 () Bool)

(declare-fun d!1764691 () Bool)

(assert (= bs!1291328 (and d!1764691 d!1764655)))

(declare-fun lambda!299436 () Int)

(assert (=> bs!1291328 (= lambda!299436 lambda!299423)))

(declare-fun bs!1291329 () Bool)

(assert (= bs!1291329 (and d!1764691 d!1764673)))

(assert (=> bs!1291329 (= lambda!299436 lambda!299426)))

(declare-fun bs!1291330 () Bool)

(assert (= bs!1291330 (and d!1764691 d!1764675)))

(assert (=> bs!1291330 (= lambda!299436 lambda!299429)))

(declare-fun bs!1291331 () Bool)

(assert (= bs!1291331 (and d!1764691 d!1764681)))

(assert (=> bs!1291331 (= lambda!299436 lambda!299433)))

(declare-fun b!5582714 () Bool)

(declare-fun e!3444628 () Regex!15566)

(assert (=> b!5582714 (= e!3444628 (h!69321 (exprs!5450 (h!69323 zl!343))))))

(declare-fun b!5582715 () Bool)

(declare-fun e!3444631 () Bool)

(declare-fun lt!2253916 () Regex!15566)

(assert (=> b!5582715 (= e!3444631 (= lt!2253916 (head!11907 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun b!5582717 () Bool)

(declare-fun e!3444626 () Regex!15566)

(assert (=> b!5582717 (= e!3444626 EmptyExpr!15566)))

(declare-fun b!5582718 () Bool)

(declare-fun e!3444627 () Bool)

(assert (=> b!5582718 (= e!3444627 (isEmpty!34686 (t!376270 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun b!5582719 () Bool)

(declare-fun e!3444630 () Bool)

(declare-fun e!3444629 () Bool)

(assert (=> b!5582719 (= e!3444630 e!3444629)))

(declare-fun c!977699 () Bool)

(assert (=> b!5582719 (= c!977699 (isEmpty!34686 (exprs!5450 (h!69323 zl!343))))))

(declare-fun b!5582720 () Bool)

(declare-fun isEmptyExpr!1123 (Regex!15566) Bool)

(assert (=> b!5582720 (= e!3444629 (isEmptyExpr!1123 lt!2253916))))

(declare-fun b!5582716 () Bool)

(declare-fun isConcat!646 (Regex!15566) Bool)

(assert (=> b!5582716 (= e!3444631 (isConcat!646 lt!2253916))))

(assert (=> d!1764691 e!3444630))

(declare-fun res!2369122 () Bool)

(assert (=> d!1764691 (=> (not res!2369122) (not e!3444630))))

(assert (=> d!1764691 (= res!2369122 (validRegex!7302 lt!2253916))))

(assert (=> d!1764691 (= lt!2253916 e!3444628)))

(declare-fun c!977701 () Bool)

(assert (=> d!1764691 (= c!977701 e!3444627)))

(declare-fun res!2369123 () Bool)

(assert (=> d!1764691 (=> (not res!2369123) (not e!3444627))))

(assert (=> d!1764691 (= res!2369123 (is-Cons!62873 (exprs!5450 (h!69323 zl!343))))))

(assert (=> d!1764691 (forall!14735 (exprs!5450 (h!69323 zl!343)) lambda!299436)))

(assert (=> d!1764691 (= (generalisedConcat!1181 (exprs!5450 (h!69323 zl!343))) lt!2253916)))

(declare-fun b!5582721 () Bool)

(assert (=> b!5582721 (= e!3444629 e!3444631)))

(declare-fun c!977700 () Bool)

(assert (=> b!5582721 (= c!977700 (isEmpty!34686 (tail!11002 (exprs!5450 (h!69323 zl!343)))))))

(declare-fun b!5582722 () Bool)

(assert (=> b!5582722 (= e!3444626 (Concat!24411 (h!69321 (exprs!5450 (h!69323 zl!343))) (generalisedConcat!1181 (t!376270 (exprs!5450 (h!69323 zl!343))))))))

(declare-fun b!5582723 () Bool)

(assert (=> b!5582723 (= e!3444628 e!3444626)))

(declare-fun c!977698 () Bool)

(assert (=> b!5582723 (= c!977698 (is-Cons!62873 (exprs!5450 (h!69323 zl!343))))))

(assert (= (and d!1764691 res!2369123) b!5582718))

(assert (= (and d!1764691 c!977701) b!5582714))

(assert (= (and d!1764691 (not c!977701)) b!5582723))

(assert (= (and b!5582723 c!977698) b!5582722))

(assert (= (and b!5582723 (not c!977698)) b!5582717))

(assert (= (and d!1764691 res!2369122) b!5582719))

(assert (= (and b!5582719 c!977699) b!5582720))

(assert (= (and b!5582719 (not c!977699)) b!5582721))

(assert (= (and b!5582721 c!977700) b!5582715))

(assert (= (and b!5582721 (not c!977700)) b!5582716))

(declare-fun m!6564298 () Bool)

(assert (=> b!5582719 m!6564298))

(declare-fun m!6564300 () Bool)

(assert (=> b!5582721 m!6564300))

(assert (=> b!5582721 m!6564300))

(declare-fun m!6564302 () Bool)

(assert (=> b!5582721 m!6564302))

(declare-fun m!6564304 () Bool)

(assert (=> b!5582720 m!6564304))

(declare-fun m!6564306 () Bool)

(assert (=> d!1764691 m!6564306))

(declare-fun m!6564308 () Bool)

(assert (=> d!1764691 m!6564308))

(declare-fun m!6564310 () Bool)

(assert (=> b!5582716 m!6564310))

(declare-fun m!6564312 () Bool)

(assert (=> b!5582722 m!6564312))

(declare-fun m!6564314 () Bool)

(assert (=> b!5582715 m!6564314))

(assert (=> b!5582718 m!6564004))

(assert (=> b!5582326 d!1764691))

(declare-fun bm!417631 () Bool)

(declare-fun call!417636 () (Set Context!9900))

(declare-fun call!417639 () (Set Context!9900))

(assert (=> bm!417631 (= call!417636 call!417639)))

(declare-fun b!5582724 () Bool)

(declare-fun e!3444632 () (Set Context!9900))

(declare-fun e!3444635 () (Set Context!9900))

(assert (=> b!5582724 (= e!3444632 e!3444635)))

(declare-fun c!977706 () Bool)

(assert (=> b!5582724 (= c!977706 (is-Union!15566 (regTwo!31645 (regOne!31644 r!7292))))))

(declare-fun bm!417632 () Bool)

(declare-fun call!417640 () (Set Context!9900))

(assert (=> bm!417632 (= call!417639 call!417640)))

(declare-fun d!1764693 () Bool)

(declare-fun c!977703 () Bool)

(assert (=> d!1764693 (= c!977703 (and (is-ElementMatch!15566 (regTwo!31645 (regOne!31644 r!7292))) (= (c!977602 (regTwo!31645 (regOne!31644 r!7292))) (h!69322 s!2326))))))

(assert (=> d!1764693 (= (derivationStepZipperDown!908 (regTwo!31645 (regOne!31644 r!7292)) lt!2253783 (h!69322 s!2326)) e!3444632)))

(declare-fun b!5582725 () Bool)

(declare-fun e!3444634 () (Set Context!9900))

(declare-fun call!417637 () (Set Context!9900))

(assert (=> b!5582725 (= e!3444634 (set.union call!417637 call!417639))))

(declare-fun bm!417633 () Bool)

(declare-fun call!417641 () List!62997)

(assert (=> bm!417633 (= call!417637 (derivationStepZipperDown!908 (ite c!977706 (regTwo!31645 (regTwo!31645 (regOne!31644 r!7292))) (regOne!31644 (regTwo!31645 (regOne!31644 r!7292)))) (ite c!977706 lt!2253783 (Context!9901 call!417641)) (h!69322 s!2326)))))

(declare-fun b!5582726 () Bool)

(assert (=> b!5582726 (= e!3444632 (set.insert lt!2253783 (as set.empty (Set Context!9900))))))

(declare-fun b!5582727 () Bool)

(declare-fun e!3444636 () (Set Context!9900))

(assert (=> b!5582727 (= e!3444634 e!3444636)))

(declare-fun c!977702 () Bool)

(assert (=> b!5582727 (= c!977702 (is-Concat!24411 (regTwo!31645 (regOne!31644 r!7292))))))

(declare-fun b!5582728 () Bool)

(declare-fun c!977704 () Bool)

(declare-fun e!3444637 () Bool)

(assert (=> b!5582728 (= c!977704 e!3444637)))

(declare-fun res!2369124 () Bool)

(assert (=> b!5582728 (=> (not res!2369124) (not e!3444637))))

(assert (=> b!5582728 (= res!2369124 (is-Concat!24411 (regTwo!31645 (regOne!31644 r!7292))))))

(assert (=> b!5582728 (= e!3444635 e!3444634)))

(declare-fun b!5582729 () Bool)

(declare-fun e!3444633 () (Set Context!9900))

(assert (=> b!5582729 (= e!3444633 (as set.empty (Set Context!9900)))))

(declare-fun b!5582730 () Bool)

(assert (=> b!5582730 (= e!3444635 (set.union call!417640 call!417637))))

(declare-fun b!5582731 () Bool)

(assert (=> b!5582731 (= e!3444637 (nullable!5598 (regOne!31644 (regTwo!31645 (regOne!31644 r!7292)))))))

(declare-fun bm!417634 () Bool)

(declare-fun call!417638 () List!62997)

(assert (=> bm!417634 (= call!417640 (derivationStepZipperDown!908 (ite c!977706 (regOne!31645 (regTwo!31645 (regOne!31644 r!7292))) (ite c!977704 (regTwo!31644 (regTwo!31645 (regOne!31644 r!7292))) (ite c!977702 (regOne!31644 (regTwo!31645 (regOne!31644 r!7292))) (reg!15895 (regTwo!31645 (regOne!31644 r!7292)))))) (ite (or c!977706 c!977704) lt!2253783 (Context!9901 call!417638)) (h!69322 s!2326)))))

(declare-fun b!5582732 () Bool)

(assert (=> b!5582732 (= e!3444633 call!417636)))

(declare-fun bm!417635 () Bool)

(assert (=> bm!417635 (= call!417641 ($colon$colon!1631 (exprs!5450 lt!2253783) (ite (or c!977704 c!977702) (regTwo!31644 (regTwo!31645 (regOne!31644 r!7292))) (regTwo!31645 (regOne!31644 r!7292)))))))

(declare-fun b!5582733 () Bool)

(declare-fun c!977705 () Bool)

(assert (=> b!5582733 (= c!977705 (is-Star!15566 (regTwo!31645 (regOne!31644 r!7292))))))

(assert (=> b!5582733 (= e!3444636 e!3444633)))

(declare-fun b!5582734 () Bool)

(assert (=> b!5582734 (= e!3444636 call!417636)))

(declare-fun bm!417636 () Bool)

(assert (=> bm!417636 (= call!417638 call!417641)))

(assert (= (and d!1764693 c!977703) b!5582726))

(assert (= (and d!1764693 (not c!977703)) b!5582724))

(assert (= (and b!5582724 c!977706) b!5582730))

(assert (= (and b!5582724 (not c!977706)) b!5582728))

(assert (= (and b!5582728 res!2369124) b!5582731))

(assert (= (and b!5582728 c!977704) b!5582725))

(assert (= (and b!5582728 (not c!977704)) b!5582727))

(assert (= (and b!5582727 c!977702) b!5582734))

(assert (= (and b!5582727 (not c!977702)) b!5582733))

(assert (= (and b!5582733 c!977705) b!5582732))

(assert (= (and b!5582733 (not c!977705)) b!5582729))

(assert (= (or b!5582734 b!5582732) bm!417636))

(assert (= (or b!5582734 b!5582732) bm!417631))

(assert (= (or b!5582725 bm!417636) bm!417635))

(assert (= (or b!5582725 bm!417631) bm!417632))

(assert (= (or b!5582730 b!5582725) bm!417633))

(assert (= (or b!5582730 bm!417632) bm!417634))

(declare-fun m!6564316 () Bool)

(assert (=> bm!417635 m!6564316))

(declare-fun m!6564318 () Bool)

(assert (=> b!5582731 m!6564318))

(declare-fun m!6564320 () Bool)

(assert (=> bm!417633 m!6564320))

(assert (=> b!5582726 m!6564234))

(declare-fun m!6564322 () Bool)

(assert (=> bm!417634 m!6564322))

(assert (=> b!5582346 d!1764693))

(declare-fun bm!417637 () Bool)

(declare-fun call!417642 () (Set Context!9900))

(declare-fun call!417645 () (Set Context!9900))

(assert (=> bm!417637 (= call!417642 call!417645)))

(declare-fun b!5582735 () Bool)

(declare-fun e!3444638 () (Set Context!9900))

(declare-fun e!3444641 () (Set Context!9900))

(assert (=> b!5582735 (= e!3444638 e!3444641)))

(declare-fun c!977711 () Bool)

(assert (=> b!5582735 (= c!977711 (is-Union!15566 (regOne!31645 (regOne!31644 r!7292))))))

(declare-fun bm!417638 () Bool)

(declare-fun call!417646 () (Set Context!9900))

(assert (=> bm!417638 (= call!417645 call!417646)))

(declare-fun d!1764695 () Bool)

(declare-fun c!977708 () Bool)

(assert (=> d!1764695 (= c!977708 (and (is-ElementMatch!15566 (regOne!31645 (regOne!31644 r!7292))) (= (c!977602 (regOne!31645 (regOne!31644 r!7292))) (h!69322 s!2326))))))

(assert (=> d!1764695 (= (derivationStepZipperDown!908 (regOne!31645 (regOne!31644 r!7292)) lt!2253783 (h!69322 s!2326)) e!3444638)))

(declare-fun b!5582736 () Bool)

(declare-fun e!3444640 () (Set Context!9900))

(declare-fun call!417643 () (Set Context!9900))

(assert (=> b!5582736 (= e!3444640 (set.union call!417643 call!417645))))

(declare-fun bm!417639 () Bool)

(declare-fun call!417647 () List!62997)

(assert (=> bm!417639 (= call!417643 (derivationStepZipperDown!908 (ite c!977711 (regTwo!31645 (regOne!31645 (regOne!31644 r!7292))) (regOne!31644 (regOne!31645 (regOne!31644 r!7292)))) (ite c!977711 lt!2253783 (Context!9901 call!417647)) (h!69322 s!2326)))))

(declare-fun b!5582737 () Bool)

(assert (=> b!5582737 (= e!3444638 (set.insert lt!2253783 (as set.empty (Set Context!9900))))))

(declare-fun b!5582738 () Bool)

(declare-fun e!3444642 () (Set Context!9900))

(assert (=> b!5582738 (= e!3444640 e!3444642)))

(declare-fun c!977707 () Bool)

(assert (=> b!5582738 (= c!977707 (is-Concat!24411 (regOne!31645 (regOne!31644 r!7292))))))

(declare-fun b!5582739 () Bool)

(declare-fun c!977709 () Bool)

(declare-fun e!3444643 () Bool)

(assert (=> b!5582739 (= c!977709 e!3444643)))

(declare-fun res!2369125 () Bool)

(assert (=> b!5582739 (=> (not res!2369125) (not e!3444643))))

(assert (=> b!5582739 (= res!2369125 (is-Concat!24411 (regOne!31645 (regOne!31644 r!7292))))))

(assert (=> b!5582739 (= e!3444641 e!3444640)))

(declare-fun b!5582740 () Bool)

(declare-fun e!3444639 () (Set Context!9900))

(assert (=> b!5582740 (= e!3444639 (as set.empty (Set Context!9900)))))

(declare-fun b!5582741 () Bool)

(assert (=> b!5582741 (= e!3444641 (set.union call!417646 call!417643))))

(declare-fun b!5582742 () Bool)

(assert (=> b!5582742 (= e!3444643 (nullable!5598 (regOne!31644 (regOne!31645 (regOne!31644 r!7292)))))))

(declare-fun bm!417640 () Bool)

(declare-fun call!417644 () List!62997)

(assert (=> bm!417640 (= call!417646 (derivationStepZipperDown!908 (ite c!977711 (regOne!31645 (regOne!31645 (regOne!31644 r!7292))) (ite c!977709 (regTwo!31644 (regOne!31645 (regOne!31644 r!7292))) (ite c!977707 (regOne!31644 (regOne!31645 (regOne!31644 r!7292))) (reg!15895 (regOne!31645 (regOne!31644 r!7292)))))) (ite (or c!977711 c!977709) lt!2253783 (Context!9901 call!417644)) (h!69322 s!2326)))))

(declare-fun b!5582743 () Bool)

(assert (=> b!5582743 (= e!3444639 call!417642)))

(declare-fun bm!417641 () Bool)

(assert (=> bm!417641 (= call!417647 ($colon$colon!1631 (exprs!5450 lt!2253783) (ite (or c!977709 c!977707) (regTwo!31644 (regOne!31645 (regOne!31644 r!7292))) (regOne!31645 (regOne!31644 r!7292)))))))

(declare-fun b!5582744 () Bool)

(declare-fun c!977710 () Bool)

(assert (=> b!5582744 (= c!977710 (is-Star!15566 (regOne!31645 (regOne!31644 r!7292))))))

(assert (=> b!5582744 (= e!3444642 e!3444639)))

(declare-fun b!5582745 () Bool)

(assert (=> b!5582745 (= e!3444642 call!417642)))

(declare-fun bm!417642 () Bool)

(assert (=> bm!417642 (= call!417644 call!417647)))

(assert (= (and d!1764695 c!977708) b!5582737))

(assert (= (and d!1764695 (not c!977708)) b!5582735))

(assert (= (and b!5582735 c!977711) b!5582741))

(assert (= (and b!5582735 (not c!977711)) b!5582739))

(assert (= (and b!5582739 res!2369125) b!5582742))

(assert (= (and b!5582739 c!977709) b!5582736))

(assert (= (and b!5582739 (not c!977709)) b!5582738))

(assert (= (and b!5582738 c!977707) b!5582745))

(assert (= (and b!5582738 (not c!977707)) b!5582744))

(assert (= (and b!5582744 c!977710) b!5582743))

(assert (= (and b!5582744 (not c!977710)) b!5582740))

(assert (= (or b!5582745 b!5582743) bm!417642))

(assert (= (or b!5582745 b!5582743) bm!417637))

(assert (= (or b!5582736 bm!417642) bm!417641))

(assert (= (or b!5582736 bm!417637) bm!417638))

(assert (= (or b!5582741 b!5582736) bm!417639))

(assert (= (or b!5582741 bm!417638) bm!417640))

(declare-fun m!6564324 () Bool)

(assert (=> bm!417641 m!6564324))

(declare-fun m!6564326 () Bool)

(assert (=> b!5582742 m!6564326))

(declare-fun m!6564328 () Bool)

(assert (=> bm!417639 m!6564328))

(assert (=> b!5582737 m!6564234))

(declare-fun m!6564330 () Bool)

(assert (=> bm!417640 m!6564330))

(assert (=> b!5582346 d!1764695))

(declare-fun b!5582746 () Bool)

(declare-fun e!3444646 () (Set Context!9900))

(declare-fun call!417648 () (Set Context!9900))

(assert (=> b!5582746 (= e!3444646 call!417648)))

(declare-fun e!3444645 () (Set Context!9900))

(declare-fun b!5582747 () Bool)

(assert (=> b!5582747 (= e!3444645 (set.union call!417648 (derivationStepZipperUp!834 (Context!9901 (t!376270 (exprs!5450 lt!2253799))) (h!69322 s!2326))))))

(declare-fun bm!417643 () Bool)

(assert (=> bm!417643 (= call!417648 (derivationStepZipperDown!908 (h!69321 (exprs!5450 lt!2253799)) (Context!9901 (t!376270 (exprs!5450 lt!2253799))) (h!69322 s!2326)))))

(declare-fun b!5582748 () Bool)

(assert (=> b!5582748 (= e!3444645 e!3444646)))

(declare-fun c!977713 () Bool)

(assert (=> b!5582748 (= c!977713 (is-Cons!62873 (exprs!5450 lt!2253799)))))

(declare-fun d!1764697 () Bool)

(declare-fun c!977712 () Bool)

(declare-fun e!3444644 () Bool)

(assert (=> d!1764697 (= c!977712 e!3444644)))

(declare-fun res!2369126 () Bool)

(assert (=> d!1764697 (=> (not res!2369126) (not e!3444644))))

(assert (=> d!1764697 (= res!2369126 (is-Cons!62873 (exprs!5450 lt!2253799)))))

(assert (=> d!1764697 (= (derivationStepZipperUp!834 lt!2253799 (h!69322 s!2326)) e!3444645)))

(declare-fun b!5582749 () Bool)

(assert (=> b!5582749 (= e!3444644 (nullable!5598 (h!69321 (exprs!5450 lt!2253799))))))

(declare-fun b!5582750 () Bool)

(assert (=> b!5582750 (= e!3444646 (as set.empty (Set Context!9900)))))

(assert (= (and d!1764697 res!2369126) b!5582749))

(assert (= (and d!1764697 c!977712) b!5582747))

(assert (= (and d!1764697 (not c!977712)) b!5582748))

(assert (= (and b!5582748 c!977713) b!5582746))

(assert (= (and b!5582748 (not c!977713)) b!5582750))

(assert (= (or b!5582747 b!5582746) bm!417643))

(declare-fun m!6564332 () Bool)

(assert (=> b!5582747 m!6564332))

(declare-fun m!6564334 () Bool)

(assert (=> bm!417643 m!6564334))

(declare-fun m!6564336 () Bool)

(assert (=> b!5582749 m!6564336))

(assert (=> b!5582344 d!1764697))

(declare-fun d!1764699 () Bool)

(assert (=> d!1764699 (= (nullable!5598 (regTwo!31645 (regOne!31644 r!7292))) (nullableFct!1710 (regTwo!31645 (regOne!31644 r!7292))))))

(declare-fun bs!1291332 () Bool)

(assert (= bs!1291332 d!1764699))

(declare-fun m!6564338 () Bool)

(assert (=> bs!1291332 m!6564338))

(assert (=> b!5582344 d!1764699))

(declare-fun d!1764701 () Bool)

(assert (=> d!1764701 (= (flatMap!1179 lt!2253798 lambda!299399) (choose!42315 lt!2253798 lambda!299399))))

(declare-fun bs!1291333 () Bool)

(assert (= bs!1291333 d!1764701))

(declare-fun m!6564340 () Bool)

(assert (=> bs!1291333 m!6564340))

(assert (=> b!5582344 d!1764701))

(declare-fun d!1764703 () Bool)

(assert (=> d!1764703 (= (flatMap!1179 lt!2253796 lambda!299399) (dynLambda!24590 lambda!299399 lt!2253804))))

(declare-fun lt!2253917 () Unit!155640)

(assert (=> d!1764703 (= lt!2253917 (choose!42314 lt!2253796 lt!2253804 lambda!299399))))

(assert (=> d!1764703 (= lt!2253796 (set.insert lt!2253804 (as set.empty (Set Context!9900))))))

(assert (=> d!1764703 (= (lemmaFlatMapOnSingletonSet!711 lt!2253796 lt!2253804 lambda!299399) lt!2253917)))

(declare-fun b_lambda!211573 () Bool)

(assert (=> (not b_lambda!211573) (not d!1764703)))

(declare-fun bs!1291334 () Bool)

(assert (= bs!1291334 d!1764703))

(assert (=> bs!1291334 m!6564030))

(declare-fun m!6564342 () Bool)

(assert (=> bs!1291334 m!6564342))

(declare-fun m!6564344 () Bool)

(assert (=> bs!1291334 m!6564344))

(assert (=> bs!1291334 m!6564032))

(assert (=> b!5582344 d!1764703))

(declare-fun d!1764705 () Bool)

(assert (=> d!1764705 (= (flatMap!1179 lt!2253798 lambda!299399) (dynLambda!24590 lambda!299399 lt!2253799))))

(declare-fun lt!2253918 () Unit!155640)

(assert (=> d!1764705 (= lt!2253918 (choose!42314 lt!2253798 lt!2253799 lambda!299399))))

(assert (=> d!1764705 (= lt!2253798 (set.insert lt!2253799 (as set.empty (Set Context!9900))))))

(assert (=> d!1764705 (= (lemmaFlatMapOnSingletonSet!711 lt!2253798 lt!2253799 lambda!299399) lt!2253918)))

(declare-fun b_lambda!211575 () Bool)

(assert (=> (not b_lambda!211575) (not d!1764705)))

(declare-fun bs!1291335 () Bool)

(assert (= bs!1291335 d!1764705))

(assert (=> bs!1291335 m!6564040))

(declare-fun m!6564346 () Bool)

(assert (=> bs!1291335 m!6564346))

(declare-fun m!6564348 () Bool)

(assert (=> bs!1291335 m!6564348))

(assert (=> bs!1291335 m!6564036))

(assert (=> b!5582344 d!1764705))

(declare-fun d!1764707 () Bool)

(assert (=> d!1764707 (= (flatMap!1179 lt!2253796 lambda!299399) (choose!42315 lt!2253796 lambda!299399))))

(declare-fun bs!1291336 () Bool)

(assert (= bs!1291336 d!1764707))

(declare-fun m!6564350 () Bool)

(assert (=> bs!1291336 m!6564350))

(assert (=> b!5582344 d!1764707))

(declare-fun b!5582751 () Bool)

(declare-fun e!3444649 () (Set Context!9900))

(declare-fun call!417649 () (Set Context!9900))

(assert (=> b!5582751 (= e!3444649 call!417649)))

(declare-fun e!3444648 () (Set Context!9900))

(declare-fun b!5582752 () Bool)

(assert (=> b!5582752 (= e!3444648 (set.union call!417649 (derivationStepZipperUp!834 (Context!9901 (t!376270 (exprs!5450 lt!2253804))) (h!69322 s!2326))))))

(declare-fun bm!417644 () Bool)

(assert (=> bm!417644 (= call!417649 (derivationStepZipperDown!908 (h!69321 (exprs!5450 lt!2253804)) (Context!9901 (t!376270 (exprs!5450 lt!2253804))) (h!69322 s!2326)))))

(declare-fun b!5582753 () Bool)

(assert (=> b!5582753 (= e!3444648 e!3444649)))

(declare-fun c!977715 () Bool)

(assert (=> b!5582753 (= c!977715 (is-Cons!62873 (exprs!5450 lt!2253804)))))

(declare-fun d!1764709 () Bool)

(declare-fun c!977714 () Bool)

(declare-fun e!3444647 () Bool)

(assert (=> d!1764709 (= c!977714 e!3444647)))

(declare-fun res!2369127 () Bool)

(assert (=> d!1764709 (=> (not res!2369127) (not e!3444647))))

(assert (=> d!1764709 (= res!2369127 (is-Cons!62873 (exprs!5450 lt!2253804)))))

(assert (=> d!1764709 (= (derivationStepZipperUp!834 lt!2253804 (h!69322 s!2326)) e!3444648)))

(declare-fun b!5582754 () Bool)

(assert (=> b!5582754 (= e!3444647 (nullable!5598 (h!69321 (exprs!5450 lt!2253804))))))

(declare-fun b!5582755 () Bool)

(assert (=> b!5582755 (= e!3444649 (as set.empty (Set Context!9900)))))

(assert (= (and d!1764709 res!2369127) b!5582754))

(assert (= (and d!1764709 c!977714) b!5582752))

(assert (= (and d!1764709 (not c!977714)) b!5582753))

(assert (= (and b!5582753 c!977715) b!5582751))

(assert (= (and b!5582753 (not c!977715)) b!5582755))

(assert (= (or b!5582752 b!5582751) bm!417644))

(declare-fun m!6564352 () Bool)

(assert (=> b!5582752 m!6564352))

(declare-fun m!6564354 () Bool)

(assert (=> bm!417644 m!6564354))

(declare-fun m!6564356 () Bool)

(assert (=> b!5582754 m!6564356))

(assert (=> b!5582344 d!1764709))

(declare-fun d!1764711 () Bool)

(assert (=> d!1764711 (= (nullable!5598 (regOne!31645 (regOne!31644 r!7292))) (nullableFct!1710 (regOne!31645 (regOne!31644 r!7292))))))

(declare-fun bs!1291337 () Bool)

(assert (= bs!1291337 d!1764711))

(declare-fun m!6564358 () Bool)

(assert (=> bs!1291337 m!6564358))

(assert (=> b!5582344 d!1764711))

(declare-fun d!1764713 () Bool)

(declare-fun c!977716 () Bool)

(assert (=> d!1764713 (= c!977716 (isEmpty!34689 (t!376271 s!2326)))))

(declare-fun e!3444650 () Bool)

(assert (=> d!1764713 (= (matchZipper!1704 lt!2253805 (t!376271 s!2326)) e!3444650)))

(declare-fun b!5582756 () Bool)

(assert (=> b!5582756 (= e!3444650 (nullableZipper!1563 lt!2253805))))

(declare-fun b!5582757 () Bool)

(assert (=> b!5582757 (= e!3444650 (matchZipper!1704 (derivationStepZipper!1665 lt!2253805 (head!11906 (t!376271 s!2326))) (tail!11001 (t!376271 s!2326))))))

(assert (= (and d!1764713 c!977716) b!5582756))

(assert (= (and d!1764713 (not c!977716)) b!5582757))

(assert (=> d!1764713 m!6564242))

(declare-fun m!6564360 () Bool)

(assert (=> b!5582756 m!6564360))

(assert (=> b!5582757 m!6564246))

(assert (=> b!5582757 m!6564246))

(declare-fun m!6564362 () Bool)

(assert (=> b!5582757 m!6564362))

(assert (=> b!5582757 m!6564250))

(assert (=> b!5582757 m!6564362))

(assert (=> b!5582757 m!6564250))

(declare-fun m!6564364 () Bool)

(assert (=> b!5582757 m!6564364))

(assert (=> b!5582325 d!1764713))

(declare-fun b!5582776 () Bool)

(declare-fun e!3444662 () Option!15575)

(assert (=> b!5582776 (= e!3444662 (Some!15574 (tuple2!65327 Nil!62874 s!2326)))))

(declare-fun b!5582777 () Bool)

(declare-fun e!3444663 () Bool)

(declare-fun lt!2253927 () Option!15575)

(assert (=> b!5582777 (= e!3444663 (not (isDefined!12278 lt!2253927)))))

(declare-fun b!5582778 () Bool)

(declare-fun res!2369139 () Bool)

(declare-fun e!3444661 () Bool)

(assert (=> b!5582778 (=> (not res!2369139) (not e!3444661))))

(declare-fun get!21649 (Option!15575) tuple2!65326)

(assert (=> b!5582778 (= res!2369139 (matchR!7751 (regOne!31644 r!7292) (_1!35966 (get!21649 lt!2253927))))))

(declare-fun d!1764715 () Bool)

(assert (=> d!1764715 e!3444663))

(declare-fun res!2369138 () Bool)

(assert (=> d!1764715 (=> res!2369138 e!3444663)))

(assert (=> d!1764715 (= res!2369138 e!3444661)))

(declare-fun res!2369140 () Bool)

(assert (=> d!1764715 (=> (not res!2369140) (not e!3444661))))

(assert (=> d!1764715 (= res!2369140 (isDefined!12278 lt!2253927))))

(assert (=> d!1764715 (= lt!2253927 e!3444662)))

(declare-fun c!977721 () Bool)

(declare-fun e!3444664 () Bool)

(assert (=> d!1764715 (= c!977721 e!3444664)))

(declare-fun res!2369141 () Bool)

(assert (=> d!1764715 (=> (not res!2369141) (not e!3444664))))

(assert (=> d!1764715 (= res!2369141 (matchR!7751 (regOne!31644 r!7292) Nil!62874))))

(assert (=> d!1764715 (validRegex!7302 (regOne!31644 r!7292))))

(assert (=> d!1764715 (= (findConcatSeparation!1989 (regOne!31644 r!7292) (regTwo!31644 r!7292) Nil!62874 s!2326 s!2326) lt!2253927)))

(declare-fun b!5582779 () Bool)

(declare-fun e!3444665 () Option!15575)

(assert (=> b!5582779 (= e!3444665 None!15574)))

(declare-fun b!5582780 () Bool)

(declare-fun res!2369142 () Bool)

(assert (=> b!5582780 (=> (not res!2369142) (not e!3444661))))

(assert (=> b!5582780 (= res!2369142 (matchR!7751 (regTwo!31644 r!7292) (_2!35966 (get!21649 lt!2253927))))))

(declare-fun b!5582781 () Bool)

(declare-fun ++!13798 (List!62998 List!62998) List!62998)

(assert (=> b!5582781 (= e!3444661 (= (++!13798 (_1!35966 (get!21649 lt!2253927)) (_2!35966 (get!21649 lt!2253927))) s!2326))))

(declare-fun b!5582782 () Bool)

(declare-fun lt!2253926 () Unit!155640)

(declare-fun lt!2253925 () Unit!155640)

(assert (=> b!5582782 (= lt!2253926 lt!2253925)))

(assert (=> b!5582782 (= (++!13798 (++!13798 Nil!62874 (Cons!62874 (h!69322 s!2326) Nil!62874)) (t!376271 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1967 (List!62998 C!31402 List!62998 List!62998) Unit!155640)

(assert (=> b!5582782 (= lt!2253925 (lemmaMoveElementToOtherListKeepsConcatEq!1967 Nil!62874 (h!69322 s!2326) (t!376271 s!2326) s!2326))))

(assert (=> b!5582782 (= e!3444665 (findConcatSeparation!1989 (regOne!31644 r!7292) (regTwo!31644 r!7292) (++!13798 Nil!62874 (Cons!62874 (h!69322 s!2326) Nil!62874)) (t!376271 s!2326) s!2326))))

(declare-fun b!5582783 () Bool)

(assert (=> b!5582783 (= e!3444662 e!3444665)))

(declare-fun c!977722 () Bool)

(assert (=> b!5582783 (= c!977722 (is-Nil!62874 s!2326))))

(declare-fun b!5582784 () Bool)

(assert (=> b!5582784 (= e!3444664 (matchR!7751 (regTwo!31644 r!7292) s!2326))))

(assert (= (and d!1764715 res!2369141) b!5582784))

(assert (= (and d!1764715 c!977721) b!5582776))

(assert (= (and d!1764715 (not c!977721)) b!5582783))

(assert (= (and b!5582783 c!977722) b!5582779))

(assert (= (and b!5582783 (not c!977722)) b!5582782))

(assert (= (and d!1764715 res!2369140) b!5582778))

(assert (= (and b!5582778 res!2369139) b!5582780))

(assert (= (and b!5582780 res!2369142) b!5582781))

(assert (= (and d!1764715 (not res!2369138)) b!5582777))

(declare-fun m!6564366 () Bool)

(assert (=> b!5582777 m!6564366))

(declare-fun m!6564368 () Bool)

(assert (=> b!5582780 m!6564368))

(declare-fun m!6564370 () Bool)

(assert (=> b!5582780 m!6564370))

(declare-fun m!6564372 () Bool)

(assert (=> b!5582784 m!6564372))

(declare-fun m!6564374 () Bool)

(assert (=> b!5582782 m!6564374))

(assert (=> b!5582782 m!6564374))

(declare-fun m!6564376 () Bool)

(assert (=> b!5582782 m!6564376))

(declare-fun m!6564378 () Bool)

(assert (=> b!5582782 m!6564378))

(assert (=> b!5582782 m!6564374))

(declare-fun m!6564380 () Bool)

(assert (=> b!5582782 m!6564380))

(assert (=> d!1764715 m!6564366))

(declare-fun m!6564382 () Bool)

(assert (=> d!1764715 m!6564382))

(declare-fun m!6564384 () Bool)

(assert (=> d!1764715 m!6564384))

(assert (=> b!5582778 m!6564368))

(declare-fun m!6564386 () Bool)

(assert (=> b!5582778 m!6564386))

(assert (=> b!5582781 m!6564368))

(declare-fun m!6564388 () Bool)

(assert (=> b!5582781 m!6564388))

(assert (=> b!5582335 d!1764715))

(declare-fun d!1764717 () Bool)

(declare-fun choose!42317 (Int) Bool)

(assert (=> d!1764717 (= (Exists!2666 lambda!299398) (choose!42317 lambda!299398))))

(declare-fun bs!1291338 () Bool)

(assert (= bs!1291338 d!1764717))

(declare-fun m!6564390 () Bool)

(assert (=> bs!1291338 m!6564390))

(assert (=> b!5582335 d!1764717))

(declare-fun d!1764719 () Bool)

(assert (=> d!1764719 (= (Exists!2666 lambda!299397) (choose!42317 lambda!299397))))

(declare-fun bs!1291339 () Bool)

(assert (= bs!1291339 d!1764719))

(declare-fun m!6564392 () Bool)

(assert (=> bs!1291339 m!6564392))

(assert (=> b!5582335 d!1764719))

(declare-fun bs!1291340 () Bool)

(declare-fun d!1764721 () Bool)

(assert (= bs!1291340 (and d!1764721 b!5582335)))

(declare-fun lambda!299439 () Int)

(assert (=> bs!1291340 (= lambda!299439 lambda!299397)))

(assert (=> bs!1291340 (not (= lambda!299439 lambda!299398))))

(declare-fun bs!1291341 () Bool)

(assert (= bs!1291341 (and d!1764721 b!5582512)))

(assert (=> bs!1291341 (not (= lambda!299439 lambda!299419))))

(declare-fun bs!1291342 () Bool)

(assert (= bs!1291342 (and d!1764721 b!5582517)))

(assert (=> bs!1291342 (not (= lambda!299439 lambda!299420))))

(assert (=> d!1764721 true))

(assert (=> d!1764721 true))

(assert (=> d!1764721 true))

(assert (=> d!1764721 (= (isDefined!12278 (findConcatSeparation!1989 (regOne!31644 r!7292) (regTwo!31644 r!7292) Nil!62874 s!2326 s!2326)) (Exists!2666 lambda!299439))))

(declare-fun lt!2253930 () Unit!155640)

(declare-fun choose!42318 (Regex!15566 Regex!15566 List!62998) Unit!155640)

(assert (=> d!1764721 (= lt!2253930 (choose!42318 (regOne!31644 r!7292) (regTwo!31644 r!7292) s!2326))))

(assert (=> d!1764721 (validRegex!7302 (regOne!31644 r!7292))))

(assert (=> d!1764721 (= (lemmaFindConcatSeparationEquivalentToExists!1753 (regOne!31644 r!7292) (regTwo!31644 r!7292) s!2326) lt!2253930)))

(declare-fun bs!1291343 () Bool)

(assert (= bs!1291343 d!1764721))

(declare-fun m!6564394 () Bool)

(assert (=> bs!1291343 m!6564394))

(declare-fun m!6564396 () Bool)

(assert (=> bs!1291343 m!6564396))

(assert (=> bs!1291343 m!6564384))

(assert (=> bs!1291343 m!6564064))

(assert (=> bs!1291343 m!6564064))

(assert (=> bs!1291343 m!6564066))

(assert (=> b!5582335 d!1764721))

(declare-fun bs!1291344 () Bool)

(declare-fun d!1764723 () Bool)

(assert (= bs!1291344 (and d!1764723 b!5582517)))

(declare-fun lambda!299444 () Int)

(assert (=> bs!1291344 (not (= lambda!299444 lambda!299420))))

(declare-fun bs!1291345 () Bool)

(assert (= bs!1291345 (and d!1764723 b!5582335)))

(assert (=> bs!1291345 (= lambda!299444 lambda!299397)))

(declare-fun bs!1291346 () Bool)

(assert (= bs!1291346 (and d!1764723 b!5582512)))

(assert (=> bs!1291346 (not (= lambda!299444 lambda!299419))))

(assert (=> bs!1291345 (not (= lambda!299444 lambda!299398))))

(declare-fun bs!1291347 () Bool)

(assert (= bs!1291347 (and d!1764723 d!1764721)))

(assert (=> bs!1291347 (= lambda!299444 lambda!299439)))

(assert (=> d!1764723 true))

(assert (=> d!1764723 true))

(assert (=> d!1764723 true))

(declare-fun bs!1291348 () Bool)

(assert (= bs!1291348 d!1764723))

(declare-fun lambda!299445 () Int)

(assert (=> bs!1291348 (not (= lambda!299445 lambda!299444))))

(assert (=> bs!1291344 (= lambda!299445 lambda!299420)))

(assert (=> bs!1291345 (not (= lambda!299445 lambda!299397))))

(assert (=> bs!1291346 (not (= lambda!299445 lambda!299419))))

(assert (=> bs!1291345 (= lambda!299445 lambda!299398)))

(assert (=> bs!1291347 (not (= lambda!299445 lambda!299439))))

(assert (=> d!1764723 true))

(assert (=> d!1764723 true))

(assert (=> d!1764723 true))

(assert (=> d!1764723 (= (Exists!2666 lambda!299444) (Exists!2666 lambda!299445))))

(declare-fun lt!2253933 () Unit!155640)

(declare-fun choose!42319 (Regex!15566 Regex!15566 List!62998) Unit!155640)

(assert (=> d!1764723 (= lt!2253933 (choose!42319 (regOne!31644 r!7292) (regTwo!31644 r!7292) s!2326))))

(assert (=> d!1764723 (validRegex!7302 (regOne!31644 r!7292))))

(assert (=> d!1764723 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1295 (regOne!31644 r!7292) (regTwo!31644 r!7292) s!2326) lt!2253933)))

(declare-fun m!6564398 () Bool)

(assert (=> bs!1291348 m!6564398))

(declare-fun m!6564400 () Bool)

(assert (=> bs!1291348 m!6564400))

(declare-fun m!6564402 () Bool)

(assert (=> bs!1291348 m!6564402))

(assert (=> bs!1291348 m!6564384))

(assert (=> b!5582335 d!1764723))

(declare-fun d!1764725 () Bool)

(declare-fun isEmpty!34690 (Option!15575) Bool)

(assert (=> d!1764725 (= (isDefined!12278 (findConcatSeparation!1989 (regOne!31644 r!7292) (regTwo!31644 r!7292) Nil!62874 s!2326 s!2326)) (not (isEmpty!34690 (findConcatSeparation!1989 (regOne!31644 r!7292) (regTwo!31644 r!7292) Nil!62874 s!2326 s!2326))))))

(declare-fun bs!1291349 () Bool)

(assert (= bs!1291349 d!1764725))

(assert (=> bs!1291349 m!6564064))

(declare-fun m!6564404 () Bool)

(assert (=> bs!1291349 m!6564404))

(assert (=> b!5582335 d!1764725))

(declare-fun d!1764727 () Bool)

(declare-fun c!977723 () Bool)

(assert (=> d!1764727 (= c!977723 (isEmpty!34689 (t!376271 s!2326)))))

(declare-fun e!3444672 () Bool)

(assert (=> d!1764727 (= (matchZipper!1704 lt!2253788 (t!376271 s!2326)) e!3444672)))

(declare-fun b!5582797 () Bool)

(assert (=> b!5582797 (= e!3444672 (nullableZipper!1563 lt!2253788))))

(declare-fun b!5582798 () Bool)

(assert (=> b!5582798 (= e!3444672 (matchZipper!1704 (derivationStepZipper!1665 lt!2253788 (head!11906 (t!376271 s!2326))) (tail!11001 (t!376271 s!2326))))))

(assert (= (and d!1764727 c!977723) b!5582797))

(assert (= (and d!1764727 (not c!977723)) b!5582798))

(assert (=> d!1764727 m!6564242))

(declare-fun m!6564406 () Bool)

(assert (=> b!5582797 m!6564406))

(assert (=> b!5582798 m!6564246))

(assert (=> b!5582798 m!6564246))

(declare-fun m!6564408 () Bool)

(assert (=> b!5582798 m!6564408))

(assert (=> b!5582798 m!6564250))

(assert (=> b!5582798 m!6564408))

(assert (=> b!5582798 m!6564250))

(declare-fun m!6564410 () Bool)

(assert (=> b!5582798 m!6564410))

(assert (=> b!5582345 d!1764727))

(declare-fun d!1764729 () Bool)

(declare-fun c!977724 () Bool)

(assert (=> d!1764729 (= c!977724 (isEmpty!34689 (t!376271 s!2326)))))

(declare-fun e!3444673 () Bool)

(assert (=> d!1764729 (= (matchZipper!1704 lt!2253800 (t!376271 s!2326)) e!3444673)))

(declare-fun b!5582799 () Bool)

(assert (=> b!5582799 (= e!3444673 (nullableZipper!1563 lt!2253800))))

(declare-fun b!5582800 () Bool)

(assert (=> b!5582800 (= e!3444673 (matchZipper!1704 (derivationStepZipper!1665 lt!2253800 (head!11906 (t!376271 s!2326))) (tail!11001 (t!376271 s!2326))))))

(assert (= (and d!1764729 c!977724) b!5582799))

(assert (= (and d!1764729 (not c!977724)) b!5582800))

(assert (=> d!1764729 m!6564242))

(declare-fun m!6564412 () Bool)

(assert (=> b!5582799 m!6564412))

(assert (=> b!5582800 m!6564246))

(assert (=> b!5582800 m!6564246))

(declare-fun m!6564414 () Bool)

(assert (=> b!5582800 m!6564414))

(assert (=> b!5582800 m!6564250))

(assert (=> b!5582800 m!6564414))

(assert (=> b!5582800 m!6564250))

(declare-fun m!6564416 () Bool)

(assert (=> b!5582800 m!6564416))

(assert (=> b!5582345 d!1764729))

(declare-fun d!1764731 () Bool)

(declare-fun c!977725 () Bool)

(assert (=> d!1764731 (= c!977725 (isEmpty!34689 (t!376271 s!2326)))))

(declare-fun e!3444674 () Bool)

(assert (=> d!1764731 (= (matchZipper!1704 lt!2253793 (t!376271 s!2326)) e!3444674)))

(declare-fun b!5582801 () Bool)

(assert (=> b!5582801 (= e!3444674 (nullableZipper!1563 lt!2253793))))

(declare-fun b!5582802 () Bool)

(assert (=> b!5582802 (= e!3444674 (matchZipper!1704 (derivationStepZipper!1665 lt!2253793 (head!11906 (t!376271 s!2326))) (tail!11001 (t!376271 s!2326))))))

(assert (= (and d!1764731 c!977725) b!5582801))

(assert (= (and d!1764731 (not c!977725)) b!5582802))

(assert (=> d!1764731 m!6564242))

(declare-fun m!6564418 () Bool)

(assert (=> b!5582801 m!6564418))

(assert (=> b!5582802 m!6564246))

(assert (=> b!5582802 m!6564246))

(declare-fun m!6564420 () Bool)

(assert (=> b!5582802 m!6564420))

(assert (=> b!5582802 m!6564250))

(assert (=> b!5582802 m!6564420))

(assert (=> b!5582802 m!6564250))

(declare-fun m!6564422 () Bool)

(assert (=> b!5582802 m!6564422))

(assert (=> b!5582345 d!1764731))

(declare-fun d!1764733 () Bool)

(declare-fun e!3444675 () Bool)

(assert (=> d!1764733 (= (matchZipper!1704 (set.union lt!2253793 lt!2253789) (t!376271 s!2326)) e!3444675)))

(declare-fun res!2369155 () Bool)

(assert (=> d!1764733 (=> res!2369155 e!3444675)))

(assert (=> d!1764733 (= res!2369155 (matchZipper!1704 lt!2253793 (t!376271 s!2326)))))

(declare-fun lt!2253934 () Unit!155640)

(assert (=> d!1764733 (= lt!2253934 (choose!42316 lt!2253793 lt!2253789 (t!376271 s!2326)))))

(assert (=> d!1764733 (= (lemmaZipperConcatMatchesSameAsBothZippers!591 lt!2253793 lt!2253789 (t!376271 s!2326)) lt!2253934)))

(declare-fun b!5582803 () Bool)

(assert (=> b!5582803 (= e!3444675 (matchZipper!1704 lt!2253789 (t!376271 s!2326)))))

(assert (= (and d!1764733 (not res!2369155)) b!5582803))

(declare-fun m!6564424 () Bool)

(assert (=> d!1764733 m!6564424))

(assert (=> d!1764733 m!6563990))

(declare-fun m!6564426 () Bool)

(assert (=> d!1764733 m!6564426))

(assert (=> b!5582803 m!6564026))

(assert (=> b!5582345 d!1764733))

(declare-fun d!1764735 () Bool)

(assert (=> d!1764735 (= (isEmpty!34686 (t!376270 (exprs!5450 (h!69323 zl!343)))) (is-Nil!62873 (t!376270 (exprs!5450 (h!69323 zl!343)))))))

(assert (=> b!5582349 d!1764735))

(assert (=> b!5582347 d!1764713))

(declare-fun d!1764737 () Bool)

(declare-fun e!3444678 () Bool)

(assert (=> d!1764737 e!3444678))

(declare-fun res!2369158 () Bool)

(assert (=> d!1764737 (=> (not res!2369158) (not e!3444678))))

(declare-fun lt!2253937 () List!62999)

(declare-fun noDuplicate!1544 (List!62999) Bool)

(assert (=> d!1764737 (= res!2369158 (noDuplicate!1544 lt!2253937))))

(declare-fun choose!42320 ((Set Context!9900)) List!62999)

(assert (=> d!1764737 (= lt!2253937 (choose!42320 z!1189))))

(assert (=> d!1764737 (= (toList!9350 z!1189) lt!2253937)))

(declare-fun b!5582806 () Bool)

(declare-fun content!11336 (List!62999) (Set Context!9900))

(assert (=> b!5582806 (= e!3444678 (= (content!11336 lt!2253937) z!1189))))

(assert (= (and d!1764737 res!2369158) b!5582806))

(declare-fun m!6564428 () Bool)

(assert (=> d!1764737 m!6564428))

(declare-fun m!6564430 () Bool)

(assert (=> d!1764737 m!6564430))

(declare-fun m!6564432 () Bool)

(assert (=> b!5582806 m!6564432))

(assert (=> b!5582328 d!1764737))

(declare-fun d!1764739 () Bool)

(declare-fun e!3444679 () Bool)

(assert (=> d!1764739 (= (matchZipper!1704 (set.union lt!2253788 lt!2253805) (t!376271 s!2326)) e!3444679)))

(declare-fun res!2369159 () Bool)

(assert (=> d!1764739 (=> res!2369159 e!3444679)))

(assert (=> d!1764739 (= res!2369159 (matchZipper!1704 lt!2253788 (t!376271 s!2326)))))

(declare-fun lt!2253938 () Unit!155640)

(assert (=> d!1764739 (= lt!2253938 (choose!42316 lt!2253788 lt!2253805 (t!376271 s!2326)))))

(assert (=> d!1764739 (= (lemmaZipperConcatMatchesSameAsBothZippers!591 lt!2253788 lt!2253805 (t!376271 s!2326)) lt!2253938)))

(declare-fun b!5582807 () Bool)

(assert (=> b!5582807 (= e!3444679 (matchZipper!1704 lt!2253805 (t!376271 s!2326)))))

(assert (= (and d!1764739 (not res!2369159)) b!5582807))

(assert (=> d!1764739 m!6563996))

(assert (=> d!1764739 m!6563986))

(declare-fun m!6564434 () Bool)

(assert (=> d!1764739 m!6564434))

(assert (=> b!5582807 m!6564020))

(assert (=> b!5582337 d!1764739))

(assert (=> b!5582337 d!1764727))

(declare-fun d!1764741 () Bool)

(declare-fun c!977726 () Bool)

(assert (=> d!1764741 (= c!977726 (isEmpty!34689 (t!376271 s!2326)))))

(declare-fun e!3444680 () Bool)

(assert (=> d!1764741 (= (matchZipper!1704 (set.union lt!2253788 lt!2253805) (t!376271 s!2326)) e!3444680)))

(declare-fun b!5582808 () Bool)

(assert (=> b!5582808 (= e!3444680 (nullableZipper!1563 (set.union lt!2253788 lt!2253805)))))

(declare-fun b!5582809 () Bool)

(assert (=> b!5582809 (= e!3444680 (matchZipper!1704 (derivationStepZipper!1665 (set.union lt!2253788 lt!2253805) (head!11906 (t!376271 s!2326))) (tail!11001 (t!376271 s!2326))))))

(assert (= (and d!1764741 c!977726) b!5582808))

(assert (= (and d!1764741 (not c!977726)) b!5582809))

(assert (=> d!1764741 m!6564242))

(declare-fun m!6564436 () Bool)

(assert (=> b!5582808 m!6564436))

(assert (=> b!5582809 m!6564246))

(assert (=> b!5582809 m!6564246))

(declare-fun m!6564438 () Bool)

(assert (=> b!5582809 m!6564438))

(assert (=> b!5582809 m!6564250))

(assert (=> b!5582809 m!6564438))

(assert (=> b!5582809 m!6564250))

(declare-fun m!6564440 () Bool)

(assert (=> b!5582809 m!6564440))

(assert (=> b!5582337 d!1764741))

(declare-fun e!3444683 () Bool)

(assert (=> b!5582336 (= tp!1544541 e!3444683)))

(declare-fun b!5582823 () Bool)

(declare-fun tp!1544583 () Bool)

(declare-fun tp!1544585 () Bool)

(assert (=> b!5582823 (= e!3444683 (and tp!1544583 tp!1544585))))

(declare-fun b!5582821 () Bool)

(declare-fun tp!1544582 () Bool)

(declare-fun tp!1544584 () Bool)

(assert (=> b!5582821 (= e!3444683 (and tp!1544582 tp!1544584))))

(declare-fun b!5582820 () Bool)

(assert (=> b!5582820 (= e!3444683 tp_is_empty!40385)))

(declare-fun b!5582822 () Bool)

(declare-fun tp!1544586 () Bool)

(assert (=> b!5582822 (= e!3444683 tp!1544586)))

(assert (= (and b!5582336 (is-ElementMatch!15566 (regOne!31644 r!7292))) b!5582820))

(assert (= (and b!5582336 (is-Concat!24411 (regOne!31644 r!7292))) b!5582821))

(assert (= (and b!5582336 (is-Star!15566 (regOne!31644 r!7292))) b!5582822))

(assert (= (and b!5582336 (is-Union!15566 (regOne!31644 r!7292))) b!5582823))

(declare-fun e!3444684 () Bool)

(assert (=> b!5582336 (= tp!1544540 e!3444684)))

(declare-fun b!5582827 () Bool)

(declare-fun tp!1544588 () Bool)

(declare-fun tp!1544590 () Bool)

(assert (=> b!5582827 (= e!3444684 (and tp!1544588 tp!1544590))))

(declare-fun b!5582825 () Bool)

(declare-fun tp!1544587 () Bool)

(declare-fun tp!1544589 () Bool)

(assert (=> b!5582825 (= e!3444684 (and tp!1544587 tp!1544589))))

(declare-fun b!5582824 () Bool)

(assert (=> b!5582824 (= e!3444684 tp_is_empty!40385)))

(declare-fun b!5582826 () Bool)

(declare-fun tp!1544591 () Bool)

(assert (=> b!5582826 (= e!3444684 tp!1544591)))

(assert (= (and b!5582336 (is-ElementMatch!15566 (regTwo!31644 r!7292))) b!5582824))

(assert (= (and b!5582336 (is-Concat!24411 (regTwo!31644 r!7292))) b!5582825))

(assert (= (and b!5582336 (is-Star!15566 (regTwo!31644 r!7292))) b!5582826))

(assert (= (and b!5582336 (is-Union!15566 (regTwo!31644 r!7292))) b!5582827))

(declare-fun b!5582832 () Bool)

(declare-fun e!3444687 () Bool)

(declare-fun tp!1544596 () Bool)

(declare-fun tp!1544597 () Bool)

(assert (=> b!5582832 (= e!3444687 (and tp!1544596 tp!1544597))))

(assert (=> b!5582327 (= tp!1544537 e!3444687)))

(assert (= (and b!5582327 (is-Cons!62873 (exprs!5450 setElem!37162))) b!5582832))

(declare-fun condSetEmpty!37168 () Bool)

(assert (=> setNonEmpty!37162 (= condSetEmpty!37168 (= setRest!37162 (as set.empty (Set Context!9900))))))

(declare-fun setRes!37168 () Bool)

(assert (=> setNonEmpty!37162 (= tp!1544534 setRes!37168)))

(declare-fun setIsEmpty!37168 () Bool)

(assert (=> setIsEmpty!37168 setRes!37168))

(declare-fun setNonEmpty!37168 () Bool)

(declare-fun e!3444690 () Bool)

(declare-fun tp!1544602 () Bool)

(declare-fun setElem!37168 () Context!9900)

(assert (=> setNonEmpty!37168 (= setRes!37168 (and tp!1544602 (inv!82163 setElem!37168) e!3444690))))

(declare-fun setRest!37168 () (Set Context!9900))

(assert (=> setNonEmpty!37168 (= setRest!37162 (set.union (set.insert setElem!37168 (as set.empty (Set Context!9900))) setRest!37168))))

(declare-fun b!5582837 () Bool)

(declare-fun tp!1544603 () Bool)

(assert (=> b!5582837 (= e!3444690 tp!1544603)))

(assert (= (and setNonEmpty!37162 condSetEmpty!37168) setIsEmpty!37168))

(assert (= (and setNonEmpty!37162 (not condSetEmpty!37168)) setNonEmpty!37168))

(assert (= setNonEmpty!37168 b!5582837))

(declare-fun m!6564442 () Bool)

(assert (=> setNonEmpty!37168 m!6564442))

(declare-fun e!3444691 () Bool)

(assert (=> b!5582348 (= tp!1544532 e!3444691)))

(declare-fun b!5582841 () Bool)

(declare-fun tp!1544605 () Bool)

(declare-fun tp!1544607 () Bool)

(assert (=> b!5582841 (= e!3444691 (and tp!1544605 tp!1544607))))

(declare-fun b!5582839 () Bool)

(declare-fun tp!1544604 () Bool)

(declare-fun tp!1544606 () Bool)

(assert (=> b!5582839 (= e!3444691 (and tp!1544604 tp!1544606))))

(declare-fun b!5582838 () Bool)

(assert (=> b!5582838 (= e!3444691 tp_is_empty!40385)))

(declare-fun b!5582840 () Bool)

(declare-fun tp!1544608 () Bool)

(assert (=> b!5582840 (= e!3444691 tp!1544608)))

(assert (= (and b!5582348 (is-ElementMatch!15566 (reg!15895 r!7292))) b!5582838))

(assert (= (and b!5582348 (is-Concat!24411 (reg!15895 r!7292))) b!5582839))

(assert (= (and b!5582348 (is-Star!15566 (reg!15895 r!7292))) b!5582840))

(assert (= (and b!5582348 (is-Union!15566 (reg!15895 r!7292))) b!5582841))

(declare-fun b!5582842 () Bool)

(declare-fun e!3444692 () Bool)

(declare-fun tp!1544609 () Bool)

(declare-fun tp!1544610 () Bool)

(assert (=> b!5582842 (= e!3444692 (and tp!1544609 tp!1544610))))

(assert (=> b!5582338 (= tp!1544533 e!3444692)))

(assert (= (and b!5582338 (is-Cons!62873 (exprs!5450 (h!69323 zl!343)))) b!5582842))

(declare-fun e!3444693 () Bool)

(assert (=> b!5582324 (= tp!1544536 e!3444693)))

(declare-fun b!5582846 () Bool)

(declare-fun tp!1544612 () Bool)

(declare-fun tp!1544614 () Bool)

(assert (=> b!5582846 (= e!3444693 (and tp!1544612 tp!1544614))))

(declare-fun b!5582844 () Bool)

(declare-fun tp!1544611 () Bool)

(declare-fun tp!1544613 () Bool)

(assert (=> b!5582844 (= e!3444693 (and tp!1544611 tp!1544613))))

(declare-fun b!5582843 () Bool)

(assert (=> b!5582843 (= e!3444693 tp_is_empty!40385)))

(declare-fun b!5582845 () Bool)

(declare-fun tp!1544615 () Bool)

(assert (=> b!5582845 (= e!3444693 tp!1544615)))

(assert (= (and b!5582324 (is-ElementMatch!15566 (regOne!31645 r!7292))) b!5582843))

(assert (= (and b!5582324 (is-Concat!24411 (regOne!31645 r!7292))) b!5582844))

(assert (= (and b!5582324 (is-Star!15566 (regOne!31645 r!7292))) b!5582845))

(assert (= (and b!5582324 (is-Union!15566 (regOne!31645 r!7292))) b!5582846))

(declare-fun e!3444694 () Bool)

(assert (=> b!5582324 (= tp!1544539 e!3444694)))

(declare-fun b!5582850 () Bool)

(declare-fun tp!1544617 () Bool)

(declare-fun tp!1544619 () Bool)

(assert (=> b!5582850 (= e!3444694 (and tp!1544617 tp!1544619))))

(declare-fun b!5582848 () Bool)

(declare-fun tp!1544616 () Bool)

(declare-fun tp!1544618 () Bool)

(assert (=> b!5582848 (= e!3444694 (and tp!1544616 tp!1544618))))

(declare-fun b!5582847 () Bool)

(assert (=> b!5582847 (= e!3444694 tp_is_empty!40385)))

(declare-fun b!5582849 () Bool)

(declare-fun tp!1544620 () Bool)

(assert (=> b!5582849 (= e!3444694 tp!1544620)))

(assert (= (and b!5582324 (is-ElementMatch!15566 (regTwo!31645 r!7292))) b!5582847))

(assert (= (and b!5582324 (is-Concat!24411 (regTwo!31645 r!7292))) b!5582848))

(assert (= (and b!5582324 (is-Star!15566 (regTwo!31645 r!7292))) b!5582849))

(assert (= (and b!5582324 (is-Union!15566 (regTwo!31645 r!7292))) b!5582850))

(declare-fun b!5582855 () Bool)

(declare-fun e!3444697 () Bool)

(declare-fun tp!1544623 () Bool)

(assert (=> b!5582855 (= e!3444697 (and tp_is_empty!40385 tp!1544623))))

(assert (=> b!5582334 (= tp!1544538 e!3444697)))

(assert (= (and b!5582334 (is-Cons!62874 (t!376271 s!2326))) b!5582855))

(declare-fun b!5582863 () Bool)

(declare-fun e!3444703 () Bool)

(declare-fun tp!1544628 () Bool)

(assert (=> b!5582863 (= e!3444703 tp!1544628)))

(declare-fun e!3444702 () Bool)

(declare-fun tp!1544629 () Bool)

(declare-fun b!5582862 () Bool)

(assert (=> b!5582862 (= e!3444702 (and (inv!82163 (h!69323 (t!376272 zl!343))) e!3444703 tp!1544629))))

(assert (=> b!5582352 (= tp!1544535 e!3444702)))

(assert (= b!5582862 b!5582863))

(assert (= (and b!5582352 (is-Cons!62875 (t!376272 zl!343))) b!5582862))

(declare-fun m!6564444 () Bool)

(assert (=> b!5582862 m!6564444))

(declare-fun b_lambda!211577 () Bool)

(assert (= b_lambda!211575 (or b!5582339 b_lambda!211577)))

(declare-fun bs!1291350 () Bool)

(declare-fun d!1764743 () Bool)

(assert (= bs!1291350 (and d!1764743 b!5582339)))

(assert (=> bs!1291350 (= (dynLambda!24590 lambda!299399 lt!2253799) (derivationStepZipperUp!834 lt!2253799 (h!69322 s!2326)))))

(assert (=> bs!1291350 m!6564048))

(assert (=> d!1764705 d!1764743))

(declare-fun b_lambda!211579 () Bool)

(assert (= b_lambda!211571 (or b!5582339 b_lambda!211579)))

(declare-fun bs!1291351 () Bool)

(declare-fun d!1764745 () Bool)

(assert (= bs!1291351 (and d!1764745 b!5582339)))

(assert (=> bs!1291351 (= (dynLambda!24590 lambda!299399 (h!69323 zl!343)) (derivationStepZipperUp!834 (h!69323 zl!343) (h!69322 s!2326)))))

(assert (=> bs!1291351 m!6564062))

(assert (=> d!1764657 d!1764745))

(declare-fun b_lambda!211581 () Bool)

(assert (= b_lambda!211573 (or b!5582339 b_lambda!211581)))

(declare-fun bs!1291352 () Bool)

(declare-fun d!1764747 () Bool)

(assert (= bs!1291352 (and d!1764747 b!5582339)))

(assert (=> bs!1291352 (= (dynLambda!24590 lambda!299399 lt!2253804) (derivationStepZipperUp!834 lt!2253804 (h!69322 s!2326)))))

(assert (=> bs!1291352 m!6564044))

(assert (=> d!1764703 d!1764747))

(push 1)

(assert (not b!5582848))

(assert (not b!5582845))

(assert (not b!5582832))

(assert (not b!5582846))

(assert (not d!1764737))

(assert (not b!5582797))

(assert (not b!5582800))

(assert (not bm!417617))

(assert (not b!5582551))

(assert (not bm!417635))

(assert (not bm!417644))

(assert (not d!1764719))

(assert (not bm!417602))

(assert (not d!1764691))

(assert (not d!1764721))

(assert (not b!5582823))

(assert (not b!5582807))

(assert (not d!1764659))

(assert (not d!1764729))

(assert (not b!5582747))

(assert (not bs!1291351))

(assert (not b_lambda!211581))

(assert (not b!5582556))

(assert (not b_lambda!211577))

(assert (not d!1764681))

(assert (not d!1764717))

(assert (not b!5582754))

(assert (not d!1764723))

(assert (not bm!417643))

(assert (not bm!417598))

(assert (not b!5582849))

(assert (not d!1764701))

(assert (not b!5582844))

(assert (not b!5582826))

(assert (not b!5582731))

(assert (not d!1764733))

(assert (not b!5582806))

(assert (not d!1764713))

(assert (not d!1764687))

(assert (not b!5582718))

(assert (not d!1764655))

(assert (not b!5582571))

(assert (not b!5582573))

(assert (not d!1764699))

(assert (not d!1764651))

(assert (not bm!417629))

(assert (not b!5582863))

(assert (not b!5582692))

(assert (not d!1764739))

(assert (not setNonEmpty!37168))

(assert (not b!5582576))

(assert (not d!1764715))

(assert (not bm!417619))

(assert (not d!1764675))

(assert (not b!5582616))

(assert (not b!5582825))

(assert (not b!5582716))

(assert (not b!5582644))

(assert (not b!5582752))

(assert (not b!5582559))

(assert (not b!5582614))

(assert (not b!5582756))

(assert (not b!5582648))

(assert (not b!5582682))

(assert (not b!5582777))

(assert (not b!5582691))

(assert (not b!5582649))

(assert (not d!1764679))

(assert (not b!5582798))

(assert (not b!5582855))

(assert (not b!5582803))

(assert (not b!5582837))

(assert (not d!1764677))

(assert (not d!1764703))

(assert (not b!5582645))

(assert (not d!1764671))

(assert (not b!5582839))

(assert (not b!5582609))

(assert (not b!5582555))

(assert (not b!5582651))

(assert (not bm!417639))

(assert (not bm!417633))

(assert (not b!5582862))

(assert (not b!5582719))

(assert (not d!1764707))

(assert (not b!5582658))

(assert (not bm!417641))

(assert (not b!5582850))

(assert (not b!5582720))

(assert (not d!1764727))

(assert (not b!5582842))

(assert (not bm!417594))

(assert (not b!5582782))

(assert (not b!5582715))

(assert (not b!5582550))

(assert (not d!1764725))

(assert (not bm!417601))

(assert (not d!1764705))

(assert (not b!5582623))

(assert (not b!5582722))

(assert (not b!5582784))

(assert (not b!5582509))

(assert (not b!5582622))

(assert (not b!5582780))

(assert (not d!1764663))

(assert (not bm!417621))

(assert tp_is_empty!40385)

(assert (not bm!417595))

(assert (not d!1764673))

(assert (not b!5582801))

(assert (not d!1764731))

(assert (not b!5582802))

(assert (not b!5582578))

(assert (not b!5582778))

(assert (not b!5582693))

(assert (not b!5582808))

(assert (not bm!417634))

(assert (not d!1764711))

(assert (not bm!417640))

(assert (not b!5582652))

(assert (not b!5582757))

(assert (not b!5582809))

(assert (not b!5582822))

(assert (not b!5582742))

(assert (not bs!1291350))

(assert (not b!5582821))

(assert (not d!1764653))

(assert (not b!5582841))

(assert (not b!5582799))

(assert (not b!5582647))

(assert (not bm!417618))

(assert (not b!5582557))

(assert (not d!1764689))

(assert (not b_lambda!211579))

(assert (not b!5582781))

(assert (not b!5582516))

(assert (not b!5582749))

(assert (not b!5582840))

(assert (not bs!1291352))

(assert (not bm!417628))

(assert (not b!5582827))

(assert (not d!1764657))

(assert (not b!5582721))

(assert (not d!1764741))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

