; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!559544 () Bool)

(assert start!559544)

(declare-fun b!5305316 () Bool)

(assert (=> b!5305316 true))

(assert (=> b!5305316 true))

(declare-fun lambda!269833 () Int)

(declare-fun lambda!269832 () Int)

(assert (=> b!5305316 (not (= lambda!269833 lambda!269832))))

(assert (=> b!5305316 true))

(assert (=> b!5305316 true))

(declare-fun b!5305323 () Bool)

(assert (=> b!5305323 true))

(declare-fun bs!1230225 () Bool)

(declare-fun b!5305334 () Bool)

(assert (= bs!1230225 (and b!5305334 b!5305316)))

(declare-datatypes ((C!30178 0))(
  ( (C!30179 (val!24791 Int)) )
))
(declare-datatypes ((Regex!14954 0))(
  ( (ElementMatch!14954 (c!921158 C!30178)) (Concat!23799 (regOne!30420 Regex!14954) (regTwo!30420 Regex!14954)) (EmptyExpr!14954) (Star!14954 (reg!15283 Regex!14954)) (EmptyLang!14954) (Union!14954 (regOne!30421 Regex!14954) (regTwo!30421 Regex!14954)) )
))
(declare-fun r!7292 () Regex!14954)

(declare-fun lt!2167929 () Regex!14954)

(declare-fun lambda!269835 () Int)

(assert (=> bs!1230225 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167929 (regTwo!30420 r!7292))) (= lambda!269835 lambda!269832))))

(assert (=> bs!1230225 (not (= lambda!269835 lambda!269833))))

(assert (=> b!5305334 true))

(assert (=> b!5305334 true))

(assert (=> b!5305334 true))

(declare-fun lambda!269836 () Int)

(assert (=> bs!1230225 (not (= lambda!269836 lambda!269832))))

(assert (=> bs!1230225 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167929 (regTwo!30420 r!7292))) (= lambda!269836 lambda!269833))))

(assert (=> b!5305334 (not (= lambda!269836 lambda!269835))))

(assert (=> b!5305334 true))

(assert (=> b!5305334 true))

(assert (=> b!5305334 true))

(declare-fun lt!2167925 () Regex!14954)

(declare-fun lambda!269837 () Int)

(assert (=> bs!1230225 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167925 (regTwo!30420 r!7292))) (= lambda!269837 lambda!269832))))

(assert (=> bs!1230225 (not (= lambda!269837 lambda!269833))))

(assert (=> b!5305334 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 (regOne!30420 r!7292))) (= lt!2167925 lt!2167929)) (= lambda!269837 lambda!269835))))

(assert (=> b!5305334 (not (= lambda!269837 lambda!269836))))

(assert (=> b!5305334 true))

(assert (=> b!5305334 true))

(assert (=> b!5305334 true))

(declare-fun lambda!269838 () Int)

(assert (=> b!5305334 (not (= lambda!269838 lambda!269837))))

(assert (=> b!5305334 (not (= lambda!269838 lambda!269835))))

(assert (=> b!5305334 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 (regOne!30420 r!7292))) (= lt!2167925 lt!2167929)) (= lambda!269838 lambda!269836))))

(assert (=> bs!1230225 (not (= lambda!269838 lambda!269832))))

(assert (=> bs!1230225 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167925 (regTwo!30420 r!7292))) (= lambda!269838 lambda!269833))))

(assert (=> b!5305334 true))

(assert (=> b!5305334 true))

(assert (=> b!5305334 true))

(declare-fun b!5305314 () Bool)

(declare-fun e!3297142 () Bool)

(declare-fun tp!1478896 () Bool)

(assert (=> b!5305314 (= e!3297142 tp!1478896)))

(declare-fun b!5305315 () Bool)

(declare-datatypes ((Unit!153334 0))(
  ( (Unit!153335) )
))
(declare-fun e!3297139 () Unit!153334)

(declare-fun Unit!153336 () Unit!153334)

(assert (=> b!5305315 (= e!3297139 Unit!153336)))

(declare-fun e!3297154 () Bool)

(declare-fun e!3297151 () Bool)

(assert (=> b!5305316 (= e!3297154 e!3297151)))

(declare-fun res!2250517 () Bool)

(assert (=> b!5305316 (=> res!2250517 e!3297151)))

(declare-datatypes ((List!61161 0))(
  ( (Nil!61037) (Cons!61037 (h!67485 C!30178) (t!374366 List!61161)) )
))
(declare-fun s!2326 () List!61161)

(declare-fun lt!2167912 () Bool)

(declare-fun lt!2167938 () Bool)

(assert (=> b!5305316 (= res!2250517 (or (not (= lt!2167912 lt!2167938)) (is-Nil!61037 s!2326)))))

(declare-fun Exists!2135 (Int) Bool)

(assert (=> b!5305316 (= (Exists!2135 lambda!269832) (Exists!2135 lambda!269833))))

(declare-fun lt!2167905 () Unit!153334)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!789 (Regex!14954 Regex!14954 List!61161) Unit!153334)

(assert (=> b!5305316 (= lt!2167905 (lemmaExistCutMatchRandMatchRSpecEquivalent!789 (regOne!30420 r!7292) (regTwo!30420 r!7292) s!2326))))

(assert (=> b!5305316 (= lt!2167938 (Exists!2135 lambda!269832))))

(declare-datatypes ((tuple2!64306 0))(
  ( (tuple2!64307 (_1!35456 List!61161) (_2!35456 List!61161)) )
))
(declare-datatypes ((Option!15065 0))(
  ( (None!15064) (Some!15064 (v!51093 tuple2!64306)) )
))
(declare-fun isDefined!11768 (Option!15065) Bool)

(declare-fun findConcatSeparation!1479 (Regex!14954 Regex!14954 List!61161 List!61161 List!61161) Option!15065)

(assert (=> b!5305316 (= lt!2167938 (isDefined!11768 (findConcatSeparation!1479 (regOne!30420 r!7292) (regTwo!30420 r!7292) Nil!61037 s!2326 s!2326)))))

(declare-fun lt!2167913 () Unit!153334)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1243 (Regex!14954 Regex!14954 List!61161) Unit!153334)

(assert (=> b!5305316 (= lt!2167913 (lemmaFindConcatSeparationEquivalentToExists!1243 (regOne!30420 r!7292) (regTwo!30420 r!7292) s!2326))))

(declare-fun b!5305317 () Bool)

(declare-fun e!3297152 () Bool)

(declare-datatypes ((List!61162 0))(
  ( (Nil!61038) (Cons!61038 (h!67486 Regex!14954) (t!374367 List!61162)) )
))
(declare-datatypes ((Context!8676 0))(
  ( (Context!8677 (exprs!4838 List!61162)) )
))
(declare-fun lt!2167933 () (Set Context!8676))

(declare-fun matchZipper!1198 ((Set Context!8676) List!61161) Bool)

(assert (=> b!5305317 (= e!3297152 (matchZipper!1198 lt!2167933 (t!374366 s!2326)))))

(declare-fun tp!1478890 () Bool)

(declare-fun e!3297141 () Bool)

(declare-fun setElem!34100 () Context!8676)

(declare-fun setNonEmpty!34100 () Bool)

(declare-fun setRes!34100 () Bool)

(declare-fun inv!80633 (Context!8676) Bool)

(assert (=> setNonEmpty!34100 (= setRes!34100 (and tp!1478890 (inv!80633 setElem!34100) e!3297141))))

(declare-fun z!1189 () (Set Context!8676))

(declare-fun setRest!34100 () (Set Context!8676))

(assert (=> setNonEmpty!34100 (= z!1189 (set.union (set.insert setElem!34100 (as set.empty (Set Context!8676))) setRest!34100))))

(declare-fun b!5305318 () Bool)

(declare-fun e!3297146 () Bool)

(declare-fun lt!2167908 () (Set Context!8676))

(declare-fun derivationStepZipper!1197 ((Set Context!8676) C!30178) (Set Context!8676))

(assert (=> b!5305318 (= e!3297146 (not (matchZipper!1198 (derivationStepZipper!1197 lt!2167908 (h!67485 s!2326)) (t!374366 s!2326))))))

(declare-fun setIsEmpty!34100 () Bool)

(assert (=> setIsEmpty!34100 setRes!34100))

(declare-fun b!5305319 () Bool)

(declare-fun res!2250537 () Bool)

(assert (=> b!5305319 (=> res!2250537 e!3297151)))

(declare-datatypes ((List!61163 0))(
  ( (Nil!61039) (Cons!61039 (h!67487 Context!8676) (t!374368 List!61163)) )
))
(declare-fun zl!343 () List!61163)

(declare-fun isEmpty!32997 (List!61162) Bool)

(assert (=> b!5305319 (= res!2250537 (isEmpty!32997 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305320 () Bool)

(declare-fun e!3297138 () Bool)

(declare-fun lt!2167914 () (Set Context!8676))

(assert (=> b!5305320 (= e!3297138 (not (matchZipper!1198 lt!2167914 (t!374366 s!2326))))))

(declare-fun b!5305321 () Bool)

(declare-fun e!3297156 () Bool)

(declare-fun lt!2167923 () (Set Context!8676))

(assert (=> b!5305321 (= e!3297156 (matchZipper!1198 lt!2167923 (t!374366 s!2326)))))

(declare-fun b!5305322 () Bool)

(declare-fun res!2250519 () Bool)

(declare-fun e!3297157 () Bool)

(assert (=> b!5305322 (=> res!2250519 e!3297157)))

(declare-fun lt!2167943 () Regex!14954)

(declare-fun matchR!7139 (Regex!14954 List!61161) Bool)

(assert (=> b!5305322 (= res!2250519 (not (= lt!2167912 (matchR!7139 (Concat!23799 lt!2167943 (regTwo!30420 r!7292)) s!2326))))))

(declare-fun e!3297144 () Bool)

(assert (=> b!5305323 (= e!3297151 e!3297144)))

(declare-fun res!2250524 () Bool)

(assert (=> b!5305323 (=> res!2250524 e!3297144)))

(assert (=> b!5305323 (= res!2250524 (or (and (is-ElementMatch!14954 (regOne!30420 r!7292)) (= (c!921158 (regOne!30420 r!7292)) (h!67485 s!2326))) (is-Union!14954 (regOne!30420 r!7292)) (not (is-Concat!23799 (regOne!30420 r!7292)))))))

(declare-fun lt!2167935 () Unit!153334)

(assert (=> b!5305323 (= lt!2167935 e!3297139)))

(declare-fun c!921157 () Bool)

(declare-fun nullable!5123 (Regex!14954) Bool)

(assert (=> b!5305323 (= c!921157 (nullable!5123 (h!67486 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun lambda!269834 () Int)

(declare-fun flatMap!681 ((Set Context!8676) Int) (Set Context!8676))

(declare-fun derivationStepZipperUp!326 (Context!8676 C!30178) (Set Context!8676))

(assert (=> b!5305323 (= (flatMap!681 z!1189 lambda!269834) (derivationStepZipperUp!326 (h!67487 zl!343) (h!67485 s!2326)))))

(declare-fun lt!2167915 () Unit!153334)

(declare-fun lemmaFlatMapOnSingletonSet!213 ((Set Context!8676) Context!8676 Int) Unit!153334)

(assert (=> b!5305323 (= lt!2167915 (lemmaFlatMapOnSingletonSet!213 z!1189 (h!67487 zl!343) lambda!269834))))

(declare-fun lt!2167931 () Context!8676)

(assert (=> b!5305323 (= lt!2167933 (derivationStepZipperUp!326 lt!2167931 (h!67485 s!2326)))))

(declare-fun lt!2167941 () (Set Context!8676))

(declare-fun derivationStepZipperDown!402 (Regex!14954 Context!8676 C!30178) (Set Context!8676))

(assert (=> b!5305323 (= lt!2167941 (derivationStepZipperDown!402 (h!67486 (exprs!4838 (h!67487 zl!343))) lt!2167931 (h!67485 s!2326)))))

(assert (=> b!5305323 (= lt!2167931 (Context!8677 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun lt!2167910 () (Set Context!8676))

(assert (=> b!5305323 (= lt!2167910 (derivationStepZipperUp!326 (Context!8677 (Cons!61038 (h!67486 (exprs!4838 (h!67487 zl!343))) (t!374367 (exprs!4838 (h!67487 zl!343))))) (h!67485 s!2326)))))

(declare-fun b!5305324 () Bool)

(declare-fun e!3297137 () Bool)

(assert (=> b!5305324 (= e!3297137 (not e!3297154))))

(declare-fun res!2250518 () Bool)

(assert (=> b!5305324 (=> res!2250518 e!3297154)))

(assert (=> b!5305324 (= res!2250518 (not (is-Cons!61039 zl!343)))))

(declare-fun matchRSpec!2057 (Regex!14954 List!61161) Bool)

(assert (=> b!5305324 (= lt!2167912 (matchRSpec!2057 r!7292 s!2326))))

(assert (=> b!5305324 (= lt!2167912 (matchR!7139 r!7292 s!2326))))

(declare-fun lt!2167916 () Unit!153334)

(declare-fun mainMatchTheorem!2057 (Regex!14954 List!61161) Unit!153334)

(assert (=> b!5305324 (= lt!2167916 (mainMatchTheorem!2057 r!7292 s!2326))))

(declare-fun b!5305325 () Bool)

(declare-fun e!3297140 () Bool)

(declare-fun e!3297153 () Bool)

(assert (=> b!5305325 (= e!3297140 e!3297153)))

(declare-fun res!2250525 () Bool)

(assert (=> b!5305325 (=> res!2250525 e!3297153)))

(declare-fun lt!2167911 () (Set Context!8676))

(declare-fun lt!2167947 () (Set Context!8676))

(assert (=> b!5305325 (= res!2250525 (not (= lt!2167911 lt!2167947)))))

(declare-fun lt!2167919 () (Set Context!8676))

(assert (=> b!5305325 (= lt!2167947 (set.union lt!2167919 lt!2167923))))

(declare-fun lt!2167944 () Context!8676)

(assert (=> b!5305325 (= lt!2167923 (derivationStepZipperUp!326 lt!2167944 (h!67485 s!2326)))))

(declare-fun lt!2167942 () (Set Context!8676))

(declare-fun lt!2167902 () Context!8676)

(assert (=> b!5305325 (= (flatMap!681 lt!2167942 lambda!269834) (derivationStepZipperUp!326 lt!2167902 (h!67485 s!2326)))))

(declare-fun lt!2167907 () Unit!153334)

(assert (=> b!5305325 (= lt!2167907 (lemmaFlatMapOnSingletonSet!213 lt!2167942 lt!2167902 lambda!269834))))

(declare-fun lt!2167939 () (Set Context!8676))

(assert (=> b!5305325 (= lt!2167939 (derivationStepZipperUp!326 lt!2167902 (h!67485 s!2326)))))

(assert (=> b!5305325 (= lt!2167911 (derivationStepZipper!1197 lt!2167942 (h!67485 s!2326)))))

(assert (=> b!5305325 (= lt!2167908 (set.insert lt!2167944 (as set.empty (Set Context!8676))))))

(assert (=> b!5305325 (= lt!2167942 (set.insert lt!2167902 (as set.empty (Set Context!8676))))))

(declare-fun lt!2167927 () List!61162)

(assert (=> b!5305325 (= lt!2167902 (Context!8677 lt!2167927))))

(declare-fun lt!2167918 () List!61162)

(assert (=> b!5305325 (= lt!2167927 (Cons!61038 (regOne!30420 (regOne!30420 r!7292)) lt!2167918))))

(declare-fun b!5305326 () Bool)

(declare-fun res!2250527 () Bool)

(assert (=> b!5305326 (=> (not res!2250527) (not e!3297137))))

(declare-fun unfocusZipper!696 (List!61163) Regex!14954)

(assert (=> b!5305326 (= res!2250527 (= r!7292 (unfocusZipper!696 zl!343)))))

(declare-fun b!5305327 () Bool)

(declare-fun res!2250513 () Bool)

(assert (=> b!5305327 (=> res!2250513 e!3297144)))

(assert (=> b!5305327 (= res!2250513 (not (nullable!5123 (regOne!30420 (regOne!30420 r!7292)))))))

(declare-fun b!5305328 () Bool)

(declare-fun res!2250528 () Bool)

(assert (=> b!5305328 (=> res!2250528 e!3297154)))

(declare-fun generalisedUnion!883 (List!61162) Regex!14954)

(declare-fun unfocusZipperList!396 (List!61163) List!61162)

(assert (=> b!5305328 (= res!2250528 (not (= r!7292 (generalisedUnion!883 (unfocusZipperList!396 zl!343)))))))

(declare-fun b!5305329 () Bool)

(declare-fun e!3297147 () Bool)

(declare-fun tp_is_empty!39161 () Bool)

(declare-fun tp!1478899 () Bool)

(assert (=> b!5305329 (= e!3297147 (and tp_is_empty!39161 tp!1478899))))

(declare-fun b!5305330 () Bool)

(declare-fun tp!1478892 () Bool)

(declare-fun tp!1478893 () Bool)

(assert (=> b!5305330 (= e!3297142 (and tp!1478892 tp!1478893))))

(declare-fun b!5305331 () Bool)

(declare-fun e!3297150 () Bool)

(declare-fun e!3297155 () Bool)

(assert (=> b!5305331 (= e!3297150 e!3297155)))

(declare-fun res!2250531 () Bool)

(assert (=> b!5305331 (=> res!2250531 e!3297155)))

(assert (=> b!5305331 (= res!2250531 (not (= (exprs!4838 (h!67487 zl!343)) (Cons!61038 lt!2167943 (t!374367 (exprs!4838 (h!67487 zl!343)))))))))

(assert (=> b!5305331 (= lt!2167943 (Concat!23799 (regOne!30420 (regOne!30420 r!7292)) (regTwo!30420 (regOne!30420 r!7292))))))

(declare-fun b!5305332 () Bool)

(declare-fun res!2250523 () Bool)

(declare-fun e!3297148 () Bool)

(assert (=> b!5305332 (=> res!2250523 e!3297148)))

(declare-fun lt!2167937 () List!61163)

(declare-fun zipperDepth!71 (List!61163) Int)

(assert (=> b!5305332 (= res!2250523 (> (zipperDepth!71 lt!2167937) (zipperDepth!71 zl!343)))))

(declare-fun b!5305333 () Bool)

(declare-fun Unit!153337 () Unit!153334)

(assert (=> b!5305333 (= e!3297139 Unit!153337)))

(declare-fun lt!2167926 () Unit!153334)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!191 ((Set Context!8676) (Set Context!8676) List!61161) Unit!153334)

(assert (=> b!5305333 (= lt!2167926 (lemmaZipperConcatMatchesSameAsBothZippers!191 lt!2167941 lt!2167933 (t!374366 s!2326)))))

(declare-fun res!2250534 () Bool)

(assert (=> b!5305333 (= res!2250534 (matchZipper!1198 lt!2167941 (t!374366 s!2326)))))

(assert (=> b!5305333 (=> res!2250534 e!3297152)))

(assert (=> b!5305333 (= (matchZipper!1198 (set.union lt!2167941 lt!2167933) (t!374366 s!2326)) e!3297152)))

(assert (=> b!5305334 (= e!3297148 e!3297157)))

(declare-fun res!2250535 () Bool)

(assert (=> b!5305334 (=> res!2250535 e!3297157)))

(declare-fun lt!2167945 () Bool)

(declare-fun lt!2167932 () Bool)

(declare-fun lt!2167949 () Bool)

(declare-fun lt!2167924 () Bool)

(declare-fun lt!2167930 () Bool)

(assert (=> b!5305334 (= res!2250535 (or (not (= lt!2167949 (or lt!2167930 lt!2167945))) (not (= lt!2167949 (or lt!2167932 lt!2167924)))))))

(assert (=> b!5305334 (= lt!2167949 (matchZipper!1198 z!1189 s!2326))))

(assert (=> b!5305334 (= (Exists!2135 lambda!269837) (Exists!2135 lambda!269838))))

(declare-fun lt!2167922 () Unit!153334)

(assert (=> b!5305334 (= lt!2167922 (lemmaExistCutMatchRandMatchRSpecEquivalent!789 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 s!2326))))

(assert (=> b!5305334 (= (isDefined!11768 (findConcatSeparation!1479 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 Nil!61037 s!2326 s!2326)) (Exists!2135 lambda!269837))))

(declare-fun lt!2167934 () Unit!153334)

(assert (=> b!5305334 (= lt!2167934 (lemmaFindConcatSeparationEquivalentToExists!1243 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 s!2326))))

(declare-fun generalisedConcat!623 (List!61162) Regex!14954)

(assert (=> b!5305334 (= lt!2167925 (generalisedConcat!623 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(assert (=> b!5305334 (= lt!2167924 (matchRSpec!2057 lt!2167929 s!2326))))

(declare-fun lt!2167946 () Unit!153334)

(assert (=> b!5305334 (= lt!2167946 (mainMatchTheorem!2057 lt!2167929 s!2326))))

(assert (=> b!5305334 (= (Exists!2135 lambda!269835) (Exists!2135 lambda!269836))))

(declare-fun lt!2167920 () Unit!153334)

(assert (=> b!5305334 (= lt!2167920 (lemmaExistCutMatchRandMatchRSpecEquivalent!789 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 s!2326))))

(assert (=> b!5305334 (= (isDefined!11768 (findConcatSeparation!1479 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 Nil!61037 s!2326 s!2326)) (Exists!2135 lambda!269835))))

(declare-fun lt!2167906 () Unit!153334)

(assert (=> b!5305334 (= lt!2167906 (lemmaFindConcatSeparationEquivalentToExists!1243 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 s!2326))))

(declare-fun lt!2167917 () Regex!14954)

(assert (=> b!5305334 (= lt!2167932 (matchRSpec!2057 lt!2167917 s!2326))))

(declare-fun lt!2167921 () Unit!153334)

(assert (=> b!5305334 (= lt!2167921 (mainMatchTheorem!2057 lt!2167917 s!2326))))

(assert (=> b!5305334 (= lt!2167924 lt!2167945)))

(assert (=> b!5305334 (= lt!2167945 (matchZipper!1198 lt!2167908 s!2326))))

(assert (=> b!5305334 (= lt!2167924 (matchR!7139 lt!2167929 s!2326))))

(declare-fun lt!2167940 () Unit!153334)

(declare-fun theoremZipperRegexEquiv!364 ((Set Context!8676) List!61163 Regex!14954 List!61161) Unit!153334)

(assert (=> b!5305334 (= lt!2167940 (theoremZipperRegexEquiv!364 lt!2167908 (Cons!61039 lt!2167944 Nil!61039) lt!2167929 s!2326))))

(assert (=> b!5305334 (= lt!2167929 (generalisedConcat!623 lt!2167918))))

(assert (=> b!5305334 (= lt!2167932 lt!2167930)))

(assert (=> b!5305334 (= lt!2167930 (matchZipper!1198 lt!2167942 s!2326))))

(assert (=> b!5305334 (= lt!2167932 (matchR!7139 lt!2167917 s!2326))))

(declare-fun lt!2167936 () Unit!153334)

(assert (=> b!5305334 (= lt!2167936 (theoremZipperRegexEquiv!364 lt!2167942 lt!2167937 lt!2167917 s!2326))))

(assert (=> b!5305334 (= lt!2167917 (generalisedConcat!623 lt!2167927))))

(declare-fun b!5305335 () Bool)

(declare-fun validRegex!6690 (Regex!14954) Bool)

(assert (=> b!5305335 (= e!3297157 (validRegex!6690 (Concat!23799 lt!2167943 lt!2167925)))))

(declare-fun b!5305336 () Bool)

(assert (=> b!5305336 (= e!3297155 e!3297148)))

(declare-fun res!2250521 () Bool)

(assert (=> b!5305336 (=> res!2250521 e!3297148)))

(declare-fun zipperDepthTotal!115 (List!61163) Int)

(assert (=> b!5305336 (= res!2250521 (>= (zipperDepthTotal!115 lt!2167937) (zipperDepthTotal!115 zl!343)))))

(assert (=> b!5305336 (= lt!2167937 (Cons!61039 lt!2167902 Nil!61039))))

(declare-fun b!5305337 () Bool)

(declare-fun res!2250511 () Bool)

(assert (=> b!5305337 (=> res!2250511 e!3297154)))

(declare-fun isEmpty!32998 (List!61163) Bool)

(assert (=> b!5305337 (= res!2250511 (not (isEmpty!32998 (t!374368 zl!343))))))

(declare-fun b!5305338 () Bool)

(declare-fun e!3297149 () Bool)

(declare-fun tp!1478897 () Bool)

(assert (=> b!5305338 (= e!3297149 tp!1478897)))

(declare-fun b!5305339 () Bool)

(declare-fun e!3297143 () Bool)

(assert (=> b!5305339 (= e!3297143 (matchZipper!1198 lt!2167914 (t!374366 s!2326)))))

(declare-fun b!5305340 () Bool)

(declare-fun e!3297145 () Bool)

(assert (=> b!5305340 (= e!3297145 e!3297140)))

(declare-fun res!2250526 () Bool)

(assert (=> b!5305340 (=> res!2250526 e!3297140)))

(assert (=> b!5305340 (= res!2250526 e!3297138)))

(declare-fun res!2250532 () Bool)

(assert (=> b!5305340 (=> (not res!2250532) (not e!3297138))))

(declare-fun lt!2167909 () Bool)

(declare-fun lt!2167901 () Bool)

(assert (=> b!5305340 (= res!2250532 (not (= lt!2167909 lt!2167901)))))

(assert (=> b!5305340 (= lt!2167909 (matchZipper!1198 lt!2167941 (t!374366 s!2326)))))

(declare-fun lt!2167948 () (Set Context!8676))

(assert (=> b!5305340 (= (matchZipper!1198 lt!2167948 (t!374366 s!2326)) e!3297143)))

(declare-fun res!2250536 () Bool)

(assert (=> b!5305340 (=> res!2250536 e!3297143)))

(assert (=> b!5305340 (= res!2250536 lt!2167901)))

(assert (=> b!5305340 (= lt!2167901 (matchZipper!1198 lt!2167919 (t!374366 s!2326)))))

(declare-fun lt!2167904 () Unit!153334)

(assert (=> b!5305340 (= lt!2167904 (lemmaZipperConcatMatchesSameAsBothZippers!191 lt!2167919 lt!2167914 (t!374366 s!2326)))))

(declare-fun b!5305341 () Bool)

(declare-fun res!2250514 () Bool)

(assert (=> b!5305341 (=> res!2250514 e!3297157)))

(assert (=> b!5305341 (= res!2250514 (not (= lt!2167912 (matchR!7139 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292)) s!2326))))))

(declare-fun b!5305342 () Bool)

(declare-fun res!2250529 () Bool)

(assert (=> b!5305342 (=> res!2250529 e!3297155)))

(declare-fun contextDepthTotal!95 (Context!8676) Int)

(assert (=> b!5305342 (= res!2250529 (>= (contextDepthTotal!95 lt!2167902) (contextDepthTotal!95 (h!67487 zl!343))))))

(declare-fun b!5305343 () Bool)

(declare-fun res!2250520 () Bool)

(assert (=> b!5305343 (=> (not res!2250520) (not e!3297137))))

(declare-fun toList!8738 ((Set Context!8676)) List!61163)

(assert (=> b!5305343 (= res!2250520 (= (toList!8738 z!1189) zl!343))))

(declare-fun b!5305344 () Bool)

(declare-fun res!2250533 () Bool)

(assert (=> b!5305344 (=> res!2250533 e!3297154)))

(assert (=> b!5305344 (= res!2250533 (not (is-Cons!61038 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305345 () Bool)

(assert (=> b!5305345 (= e!3297153 e!3297150)))

(declare-fun res!2250515 () Bool)

(assert (=> b!5305345 (=> res!2250515 e!3297150)))

(assert (=> b!5305345 (= res!2250515 e!3297146)))

(declare-fun res!2250510 () Bool)

(assert (=> b!5305345 (=> (not res!2250510) (not e!3297146))))

(assert (=> b!5305345 (= res!2250510 (not (= lt!2167909 (matchZipper!1198 lt!2167911 (t!374366 s!2326)))))))

(assert (=> b!5305345 (= (matchZipper!1198 lt!2167947 (t!374366 s!2326)) e!3297156)))

(declare-fun res!2250516 () Bool)

(assert (=> b!5305345 (=> res!2250516 e!3297156)))

(assert (=> b!5305345 (= res!2250516 lt!2167901)))

(declare-fun lt!2167903 () Unit!153334)

(assert (=> b!5305345 (= lt!2167903 (lemmaZipperConcatMatchesSameAsBothZippers!191 lt!2167919 lt!2167923 (t!374366 s!2326)))))

(assert (=> b!5305345 (= (flatMap!681 lt!2167908 lambda!269834) (derivationStepZipperUp!326 lt!2167944 (h!67485 s!2326)))))

(declare-fun lt!2167928 () Unit!153334)

(assert (=> b!5305345 (= lt!2167928 (lemmaFlatMapOnSingletonSet!213 lt!2167908 lt!2167944 lambda!269834))))

(declare-fun b!5305346 () Bool)

(assert (=> b!5305346 (= e!3297142 tp_is_empty!39161)))

(declare-fun b!5305347 () Bool)

(declare-fun res!2250522 () Bool)

(assert (=> b!5305347 (=> res!2250522 e!3297154)))

(assert (=> b!5305347 (= res!2250522 (not (= r!7292 (generalisedConcat!623 (exprs!4838 (h!67487 zl!343))))))))

(declare-fun b!5305348 () Bool)

(assert (=> b!5305348 (= e!3297144 e!3297145)))

(declare-fun res!2250530 () Bool)

(assert (=> b!5305348 (=> res!2250530 e!3297145)))

(assert (=> b!5305348 (= res!2250530 (not (= lt!2167941 lt!2167948)))))

(assert (=> b!5305348 (= lt!2167948 (set.union lt!2167919 lt!2167914))))

(assert (=> b!5305348 (= lt!2167914 (derivationStepZipperDown!402 (regTwo!30420 (regOne!30420 r!7292)) lt!2167931 (h!67485 s!2326)))))

(assert (=> b!5305348 (= lt!2167919 (derivationStepZipperDown!402 (regOne!30420 (regOne!30420 r!7292)) lt!2167944 (h!67485 s!2326)))))

(assert (=> b!5305348 (= lt!2167944 (Context!8677 lt!2167918))))

(assert (=> b!5305348 (= lt!2167918 (Cons!61038 (regTwo!30420 (regOne!30420 r!7292)) (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305349 () Bool)

(declare-fun res!2250538 () Bool)

(assert (=> b!5305349 (=> res!2250538 e!3297154)))

(assert (=> b!5305349 (= res!2250538 (or (is-EmptyExpr!14954 r!7292) (is-EmptyLang!14954 r!7292) (is-ElementMatch!14954 r!7292) (is-Union!14954 r!7292) (not (is-Concat!23799 r!7292))))))

(declare-fun res!2250512 () Bool)

(assert (=> start!559544 (=> (not res!2250512) (not e!3297137))))

(assert (=> start!559544 (= res!2250512 (validRegex!6690 r!7292))))

(assert (=> start!559544 e!3297137))

(assert (=> start!559544 e!3297142))

(declare-fun condSetEmpty!34100 () Bool)

(assert (=> start!559544 (= condSetEmpty!34100 (= z!1189 (as set.empty (Set Context!8676))))))

(assert (=> start!559544 setRes!34100))

(declare-fun e!3297158 () Bool)

(assert (=> start!559544 e!3297158))

(assert (=> start!559544 e!3297147))

(declare-fun tp!1478895 () Bool)

(declare-fun b!5305350 () Bool)

(assert (=> b!5305350 (= e!3297158 (and (inv!80633 (h!67487 zl!343)) e!3297149 tp!1478895))))

(declare-fun b!5305351 () Bool)

(declare-fun tp!1478894 () Bool)

(declare-fun tp!1478898 () Bool)

(assert (=> b!5305351 (= e!3297142 (and tp!1478894 tp!1478898))))

(declare-fun b!5305352 () Bool)

(declare-fun tp!1478891 () Bool)

(assert (=> b!5305352 (= e!3297141 tp!1478891)))

(assert (= (and start!559544 res!2250512) b!5305343))

(assert (= (and b!5305343 res!2250520) b!5305326))

(assert (= (and b!5305326 res!2250527) b!5305324))

(assert (= (and b!5305324 (not res!2250518)) b!5305337))

(assert (= (and b!5305337 (not res!2250511)) b!5305347))

(assert (= (and b!5305347 (not res!2250522)) b!5305344))

(assert (= (and b!5305344 (not res!2250533)) b!5305328))

(assert (= (and b!5305328 (not res!2250528)) b!5305349))

(assert (= (and b!5305349 (not res!2250538)) b!5305316))

(assert (= (and b!5305316 (not res!2250517)) b!5305319))

(assert (= (and b!5305319 (not res!2250537)) b!5305323))

(assert (= (and b!5305323 c!921157) b!5305333))

(assert (= (and b!5305323 (not c!921157)) b!5305315))

(assert (= (and b!5305333 (not res!2250534)) b!5305317))

(assert (= (and b!5305323 (not res!2250524)) b!5305327))

(assert (= (and b!5305327 (not res!2250513)) b!5305348))

(assert (= (and b!5305348 (not res!2250530)) b!5305340))

(assert (= (and b!5305340 (not res!2250536)) b!5305339))

(assert (= (and b!5305340 res!2250532) b!5305320))

(assert (= (and b!5305340 (not res!2250526)) b!5305325))

(assert (= (and b!5305325 (not res!2250525)) b!5305345))

(assert (= (and b!5305345 (not res!2250516)) b!5305321))

(assert (= (and b!5305345 res!2250510) b!5305318))

(assert (= (and b!5305345 (not res!2250515)) b!5305331))

(assert (= (and b!5305331 (not res!2250531)) b!5305342))

(assert (= (and b!5305342 (not res!2250529)) b!5305336))

(assert (= (and b!5305336 (not res!2250521)) b!5305332))

(assert (= (and b!5305332 (not res!2250523)) b!5305334))

(assert (= (and b!5305334 (not res!2250535)) b!5305341))

(assert (= (and b!5305341 (not res!2250514)) b!5305322))

(assert (= (and b!5305322 (not res!2250519)) b!5305335))

(assert (= (and start!559544 (is-ElementMatch!14954 r!7292)) b!5305346))

(assert (= (and start!559544 (is-Concat!23799 r!7292)) b!5305330))

(assert (= (and start!559544 (is-Star!14954 r!7292)) b!5305314))

(assert (= (and start!559544 (is-Union!14954 r!7292)) b!5305351))

(assert (= (and start!559544 condSetEmpty!34100) setIsEmpty!34100))

(assert (= (and start!559544 (not condSetEmpty!34100)) setNonEmpty!34100))

(assert (= setNonEmpty!34100 b!5305352))

(assert (= b!5305350 b!5305338))

(assert (= (and start!559544 (is-Cons!61039 zl!343)) b!5305350))

(assert (= (and start!559544 (is-Cons!61037 s!2326)) b!5305329))

(declare-fun m!6342564 () Bool)

(assert (=> b!5305327 m!6342564))

(declare-fun m!6342566 () Bool)

(assert (=> b!5305316 m!6342566))

(declare-fun m!6342568 () Bool)

(assert (=> b!5305316 m!6342568))

(declare-fun m!6342570 () Bool)

(assert (=> b!5305316 m!6342570))

(declare-fun m!6342572 () Bool)

(assert (=> b!5305316 m!6342572))

(assert (=> b!5305316 m!6342572))

(declare-fun m!6342574 () Bool)

(assert (=> b!5305316 m!6342574))

(assert (=> b!5305316 m!6342568))

(declare-fun m!6342576 () Bool)

(assert (=> b!5305316 m!6342576))

(declare-fun m!6342578 () Bool)

(assert (=> b!5305347 m!6342578))

(declare-fun m!6342580 () Bool)

(assert (=> b!5305340 m!6342580))

(declare-fun m!6342582 () Bool)

(assert (=> b!5305340 m!6342582))

(declare-fun m!6342584 () Bool)

(assert (=> b!5305340 m!6342584))

(declare-fun m!6342586 () Bool)

(assert (=> b!5305340 m!6342586))

(declare-fun m!6342588 () Bool)

(assert (=> b!5305333 m!6342588))

(assert (=> b!5305333 m!6342580))

(declare-fun m!6342590 () Bool)

(assert (=> b!5305333 m!6342590))

(declare-fun m!6342592 () Bool)

(assert (=> b!5305334 m!6342592))

(declare-fun m!6342594 () Bool)

(assert (=> b!5305334 m!6342594))

(declare-fun m!6342596 () Bool)

(assert (=> b!5305334 m!6342596))

(declare-fun m!6342598 () Bool)

(assert (=> b!5305334 m!6342598))

(declare-fun m!6342600 () Bool)

(assert (=> b!5305334 m!6342600))

(assert (=> b!5305334 m!6342592))

(declare-fun m!6342602 () Bool)

(assert (=> b!5305334 m!6342602))

(declare-fun m!6342604 () Bool)

(assert (=> b!5305334 m!6342604))

(declare-fun m!6342606 () Bool)

(assert (=> b!5305334 m!6342606))

(declare-fun m!6342608 () Bool)

(assert (=> b!5305334 m!6342608))

(declare-fun m!6342610 () Bool)

(assert (=> b!5305334 m!6342610))

(declare-fun m!6342612 () Bool)

(assert (=> b!5305334 m!6342612))

(declare-fun m!6342614 () Bool)

(assert (=> b!5305334 m!6342614))

(declare-fun m!6342616 () Bool)

(assert (=> b!5305334 m!6342616))

(assert (=> b!5305334 m!6342602))

(declare-fun m!6342618 () Bool)

(assert (=> b!5305334 m!6342618))

(declare-fun m!6342620 () Bool)

(assert (=> b!5305334 m!6342620))

(declare-fun m!6342622 () Bool)

(assert (=> b!5305334 m!6342622))

(declare-fun m!6342624 () Bool)

(assert (=> b!5305334 m!6342624))

(declare-fun m!6342626 () Bool)

(assert (=> b!5305334 m!6342626))

(assert (=> b!5305334 m!6342620))

(declare-fun m!6342628 () Bool)

(assert (=> b!5305334 m!6342628))

(declare-fun m!6342630 () Bool)

(assert (=> b!5305334 m!6342630))

(declare-fun m!6342632 () Bool)

(assert (=> b!5305334 m!6342632))

(declare-fun m!6342634 () Bool)

(assert (=> b!5305334 m!6342634))

(declare-fun m!6342636 () Bool)

(assert (=> b!5305334 m!6342636))

(declare-fun m!6342638 () Bool)

(assert (=> b!5305334 m!6342638))

(assert (=> b!5305334 m!6342604))

(declare-fun m!6342640 () Bool)

(assert (=> b!5305334 m!6342640))

(declare-fun m!6342642 () Bool)

(assert (=> b!5305334 m!6342642))

(declare-fun m!6342644 () Bool)

(assert (=> b!5305318 m!6342644))

(assert (=> b!5305318 m!6342644))

(declare-fun m!6342646 () Bool)

(assert (=> b!5305318 m!6342646))

(declare-fun m!6342648 () Bool)

(assert (=> b!5305335 m!6342648))

(declare-fun m!6342650 () Bool)

(assert (=> b!5305323 m!6342650))

(declare-fun m!6342652 () Bool)

(assert (=> b!5305323 m!6342652))

(declare-fun m!6342654 () Bool)

(assert (=> b!5305323 m!6342654))

(declare-fun m!6342656 () Bool)

(assert (=> b!5305323 m!6342656))

(declare-fun m!6342658 () Bool)

(assert (=> b!5305323 m!6342658))

(declare-fun m!6342660 () Bool)

(assert (=> b!5305323 m!6342660))

(declare-fun m!6342662 () Bool)

(assert (=> b!5305323 m!6342662))

(declare-fun m!6342664 () Bool)

(assert (=> b!5305339 m!6342664))

(assert (=> b!5305320 m!6342664))

(declare-fun m!6342666 () Bool)

(assert (=> b!5305322 m!6342666))

(declare-fun m!6342668 () Bool)

(assert (=> b!5305321 m!6342668))

(declare-fun m!6342670 () Bool)

(assert (=> start!559544 m!6342670))

(declare-fun m!6342672 () Bool)

(assert (=> b!5305350 m!6342672))

(declare-fun m!6342674 () Bool)

(assert (=> b!5305342 m!6342674))

(declare-fun m!6342676 () Bool)

(assert (=> b!5305342 m!6342676))

(declare-fun m!6342678 () Bool)

(assert (=> b!5305319 m!6342678))

(declare-fun m!6342680 () Bool)

(assert (=> b!5305324 m!6342680))

(declare-fun m!6342682 () Bool)

(assert (=> b!5305324 m!6342682))

(declare-fun m!6342684 () Bool)

(assert (=> b!5305324 m!6342684))

(declare-fun m!6342686 () Bool)

(assert (=> setNonEmpty!34100 m!6342686))

(declare-fun m!6342688 () Bool)

(assert (=> b!5305337 m!6342688))

(declare-fun m!6342690 () Bool)

(assert (=> b!5305348 m!6342690))

(declare-fun m!6342692 () Bool)

(assert (=> b!5305348 m!6342692))

(declare-fun m!6342694 () Bool)

(assert (=> b!5305345 m!6342694))

(declare-fun m!6342696 () Bool)

(assert (=> b!5305345 m!6342696))

(declare-fun m!6342698 () Bool)

(assert (=> b!5305345 m!6342698))

(declare-fun m!6342700 () Bool)

(assert (=> b!5305345 m!6342700))

(declare-fun m!6342702 () Bool)

(assert (=> b!5305345 m!6342702))

(declare-fun m!6342704 () Bool)

(assert (=> b!5305345 m!6342704))

(declare-fun m!6342706 () Bool)

(assert (=> b!5305343 m!6342706))

(declare-fun m!6342708 () Bool)

(assert (=> b!5305336 m!6342708))

(declare-fun m!6342710 () Bool)

(assert (=> b!5305336 m!6342710))

(declare-fun m!6342712 () Bool)

(assert (=> b!5305328 m!6342712))

(assert (=> b!5305328 m!6342712))

(declare-fun m!6342714 () Bool)

(assert (=> b!5305328 m!6342714))

(declare-fun m!6342716 () Bool)

(assert (=> b!5305326 m!6342716))

(declare-fun m!6342718 () Bool)

(assert (=> b!5305332 m!6342718))

(declare-fun m!6342720 () Bool)

(assert (=> b!5305332 m!6342720))

(declare-fun m!6342722 () Bool)

(assert (=> b!5305317 m!6342722))

(declare-fun m!6342724 () Bool)

(assert (=> b!5305325 m!6342724))

(declare-fun m!6342726 () Bool)

(assert (=> b!5305325 m!6342726))

(declare-fun m!6342728 () Bool)

(assert (=> b!5305325 m!6342728))

(assert (=> b!5305325 m!6342702))

(declare-fun m!6342730 () Bool)

(assert (=> b!5305325 m!6342730))

(declare-fun m!6342732 () Bool)

(assert (=> b!5305325 m!6342732))

(declare-fun m!6342734 () Bool)

(assert (=> b!5305325 m!6342734))

(declare-fun m!6342736 () Bool)

(assert (=> b!5305341 m!6342736))

(push 1)

(assert (not b!5305322))

(assert (not b!5305321))

(assert (not b!5305320))

(assert (not start!559544))

(assert (not b!5305342))

(assert (not b!5305332))

(assert (not b!5305327))

(assert (not b!5305334))

(assert (not b!5305338))

(assert (not b!5305319))

(assert (not b!5305316))

(assert (not b!5305339))

(assert (not b!5305329))

(assert (not b!5305318))

(assert (not b!5305343))

(assert (not b!5305341))

(assert (not b!5305351))

(assert (not b!5305317))

(assert (not b!5305323))

(assert (not b!5305337))

(assert (not setNonEmpty!34100))

(assert (not b!5305335))

(assert (not b!5305340))

(assert (not b!5305350))

(assert (not b!5305328))

(assert (not b!5305336))

(assert tp_is_empty!39161)

(assert (not b!5305324))

(assert (not b!5305314))

(assert (not b!5305330))

(assert (not b!5305326))

(assert (not b!5305333))

(assert (not b!5305325))

(assert (not b!5305352))

(assert (not b!5305348))

(assert (not b!5305347))

(assert (not b!5305345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1705325 () Bool)

(declare-fun c!921172 () Bool)

(declare-fun isEmpty!33001 (List!61161) Bool)

(assert (=> d!1705325 (= c!921172 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297245 () Bool)

(assert (=> d!1705325 (= (matchZipper!1198 lt!2167914 (t!374366 s!2326)) e!3297245)))

(declare-fun b!5305522 () Bool)

(declare-fun nullableZipper!1327 ((Set Context!8676)) Bool)

(assert (=> b!5305522 (= e!3297245 (nullableZipper!1327 lt!2167914))))

(declare-fun b!5305523 () Bool)

(declare-fun head!11372 (List!61161) C!30178)

(declare-fun tail!10469 (List!61161) List!61161)

(assert (=> b!5305523 (= e!3297245 (matchZipper!1198 (derivationStepZipper!1197 lt!2167914 (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705325 c!921172) b!5305522))

(assert (= (and d!1705325 (not c!921172)) b!5305523))

(declare-fun m!6342912 () Bool)

(assert (=> d!1705325 m!6342912))

(declare-fun m!6342914 () Bool)

(assert (=> b!5305522 m!6342914))

(declare-fun m!6342916 () Bool)

(assert (=> b!5305523 m!6342916))

(assert (=> b!5305523 m!6342916))

(declare-fun m!6342918 () Bool)

(assert (=> b!5305523 m!6342918))

(declare-fun m!6342920 () Bool)

(assert (=> b!5305523 m!6342920))

(assert (=> b!5305523 m!6342918))

(assert (=> b!5305523 m!6342920))

(declare-fun m!6342922 () Bool)

(assert (=> b!5305523 m!6342922))

(assert (=> b!5305320 d!1705325))

(declare-fun b!5305552 () Bool)

(declare-fun e!3297263 () Bool)

(declare-fun e!3297262 () Bool)

(assert (=> b!5305552 (= e!3297263 e!3297262)))

(declare-fun res!2250683 () Bool)

(assert (=> b!5305552 (=> res!2250683 e!3297262)))

(declare-fun call!378209 () Bool)

(assert (=> b!5305552 (= res!2250683 call!378209)))

(declare-fun b!5305553 () Bool)

(declare-fun e!3297260 () Bool)

(declare-fun lt!2168099 () Bool)

(assert (=> b!5305553 (= e!3297260 (= lt!2168099 call!378209))))

(declare-fun b!5305554 () Bool)

(declare-fun res!2250681 () Bool)

(declare-fun e!3297264 () Bool)

(assert (=> b!5305554 (=> (not res!2250681) (not e!3297264))))

(assert (=> b!5305554 (= res!2250681 (not call!378209))))

(declare-fun b!5305555 () Bool)

(declare-fun e!3297266 () Bool)

(assert (=> b!5305555 (= e!3297266 (nullable!5123 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292))))))

(declare-fun bm!378204 () Bool)

(assert (=> bm!378204 (= call!378209 (isEmpty!33001 s!2326))))

(declare-fun b!5305556 () Bool)

(declare-fun res!2250684 () Bool)

(declare-fun e!3297261 () Bool)

(assert (=> b!5305556 (=> res!2250684 e!3297261)))

(assert (=> b!5305556 (= res!2250684 e!3297264)))

(declare-fun res!2250685 () Bool)

(assert (=> b!5305556 (=> (not res!2250685) (not e!3297264))))

(assert (=> b!5305556 (= res!2250685 lt!2168099)))

(declare-fun d!1705327 () Bool)

(assert (=> d!1705327 e!3297260))

(declare-fun c!921179 () Bool)

(assert (=> d!1705327 (= c!921179 (is-EmptyExpr!14954 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292))))))

(assert (=> d!1705327 (= lt!2168099 e!3297266)))

(declare-fun c!921181 () Bool)

(assert (=> d!1705327 (= c!921181 (isEmpty!33001 s!2326))))

(assert (=> d!1705327 (validRegex!6690 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292)))))

(assert (=> d!1705327 (= (matchR!7139 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292)) s!2326) lt!2168099)))

(declare-fun b!5305557 () Bool)

(declare-fun res!2250680 () Bool)

(assert (=> b!5305557 (=> res!2250680 e!3297262)))

(assert (=> b!5305557 (= res!2250680 (not (isEmpty!33001 (tail!10469 s!2326))))))

(declare-fun b!5305558 () Bool)

(declare-fun res!2250678 () Bool)

(assert (=> b!5305558 (=> res!2250678 e!3297261)))

(assert (=> b!5305558 (= res!2250678 (not (is-ElementMatch!14954 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292)))))))

(declare-fun e!3297265 () Bool)

(assert (=> b!5305558 (= e!3297265 e!3297261)))

(declare-fun b!5305559 () Bool)

(assert (=> b!5305559 (= e!3297260 e!3297265)))

(declare-fun c!921180 () Bool)

(assert (=> b!5305559 (= c!921180 (is-EmptyLang!14954 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292))))))

(declare-fun b!5305560 () Bool)

(assert (=> b!5305560 (= e!3297265 (not lt!2168099))))

(declare-fun b!5305561 () Bool)

(assert (=> b!5305561 (= e!3297262 (not (= (head!11372 s!2326) (c!921158 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292))))))))

(declare-fun b!5305562 () Bool)

(assert (=> b!5305562 (= e!3297264 (= (head!11372 s!2326) (c!921158 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292)))))))

(declare-fun b!5305563 () Bool)

(assert (=> b!5305563 (= e!3297261 e!3297263)))

(declare-fun res!2250679 () Bool)

(assert (=> b!5305563 (=> (not res!2250679) (not e!3297263))))

(assert (=> b!5305563 (= res!2250679 (not lt!2168099))))

(declare-fun b!5305564 () Bool)

(declare-fun res!2250682 () Bool)

(assert (=> b!5305564 (=> (not res!2250682) (not e!3297264))))

(assert (=> b!5305564 (= res!2250682 (isEmpty!33001 (tail!10469 s!2326)))))

(declare-fun b!5305565 () Bool)

(declare-fun derivativeStep!4148 (Regex!14954 C!30178) Regex!14954)

(assert (=> b!5305565 (= e!3297266 (matchR!7139 (derivativeStep!4148 (Concat!23799 (regOne!30420 r!7292) (regTwo!30420 r!7292)) (head!11372 s!2326)) (tail!10469 s!2326)))))

(assert (= (and d!1705327 c!921181) b!5305555))

(assert (= (and d!1705327 (not c!921181)) b!5305565))

(assert (= (and d!1705327 c!921179) b!5305553))

(assert (= (and d!1705327 (not c!921179)) b!5305559))

(assert (= (and b!5305559 c!921180) b!5305560))

(assert (= (and b!5305559 (not c!921180)) b!5305558))

(assert (= (and b!5305558 (not res!2250678)) b!5305556))

(assert (= (and b!5305556 res!2250685) b!5305554))

(assert (= (and b!5305554 res!2250681) b!5305564))

(assert (= (and b!5305564 res!2250682) b!5305562))

(assert (= (and b!5305556 (not res!2250684)) b!5305563))

(assert (= (and b!5305563 res!2250679) b!5305552))

(assert (= (and b!5305552 (not res!2250683)) b!5305557))

(assert (= (and b!5305557 (not res!2250680)) b!5305561))

(assert (= (or b!5305553 b!5305552 b!5305554) bm!378204))

(declare-fun m!6342924 () Bool)

(assert (=> b!5305557 m!6342924))

(assert (=> b!5305557 m!6342924))

(declare-fun m!6342926 () Bool)

(assert (=> b!5305557 m!6342926))

(declare-fun m!6342928 () Bool)

(assert (=> b!5305565 m!6342928))

(assert (=> b!5305565 m!6342928))

(declare-fun m!6342930 () Bool)

(assert (=> b!5305565 m!6342930))

(assert (=> b!5305565 m!6342924))

(assert (=> b!5305565 m!6342930))

(assert (=> b!5305565 m!6342924))

(declare-fun m!6342932 () Bool)

(assert (=> b!5305565 m!6342932))

(assert (=> b!5305562 m!6342928))

(declare-fun m!6342934 () Bool)

(assert (=> bm!378204 m!6342934))

(assert (=> d!1705327 m!6342934))

(declare-fun m!6342936 () Bool)

(assert (=> d!1705327 m!6342936))

(assert (=> b!5305561 m!6342928))

(assert (=> b!5305564 m!6342924))

(assert (=> b!5305564 m!6342924))

(assert (=> b!5305564 m!6342926))

(declare-fun m!6342938 () Bool)

(assert (=> b!5305555 m!6342938))

(assert (=> b!5305341 d!1705327))

(declare-fun d!1705329 () Bool)

(declare-fun lt!2168102 () Int)

(assert (=> d!1705329 (>= lt!2168102 0)))

(declare-fun e!3297269 () Int)

(assert (=> d!1705329 (= lt!2168102 e!3297269)))

(declare-fun c!921185 () Bool)

(assert (=> d!1705329 (= c!921185 (is-Cons!61038 (exprs!4838 lt!2167902)))))

(assert (=> d!1705329 (= (contextDepthTotal!95 lt!2167902) lt!2168102)))

(declare-fun b!5305570 () Bool)

(declare-fun regexDepthTotal!38 (Regex!14954) Int)

(assert (=> b!5305570 (= e!3297269 (+ (regexDepthTotal!38 (h!67486 (exprs!4838 lt!2167902))) (contextDepthTotal!95 (Context!8677 (t!374367 (exprs!4838 lt!2167902))))))))

(declare-fun b!5305571 () Bool)

(assert (=> b!5305571 (= e!3297269 1)))

(assert (= (and d!1705329 c!921185) b!5305570))

(assert (= (and d!1705329 (not c!921185)) b!5305571))

(declare-fun m!6342940 () Bool)

(assert (=> b!5305570 m!6342940))

(declare-fun m!6342942 () Bool)

(assert (=> b!5305570 m!6342942))

(assert (=> b!5305342 d!1705329))

(declare-fun d!1705331 () Bool)

(declare-fun lt!2168103 () Int)

(assert (=> d!1705331 (>= lt!2168103 0)))

(declare-fun e!3297270 () Int)

(assert (=> d!1705331 (= lt!2168103 e!3297270)))

(declare-fun c!921186 () Bool)

(assert (=> d!1705331 (= c!921186 (is-Cons!61038 (exprs!4838 (h!67487 zl!343))))))

(assert (=> d!1705331 (= (contextDepthTotal!95 (h!67487 zl!343)) lt!2168103)))

(declare-fun b!5305572 () Bool)

(assert (=> b!5305572 (= e!3297270 (+ (regexDepthTotal!38 (h!67486 (exprs!4838 (h!67487 zl!343)))) (contextDepthTotal!95 (Context!8677 (t!374367 (exprs!4838 (h!67487 zl!343)))))))))

(declare-fun b!5305573 () Bool)

(assert (=> b!5305573 (= e!3297270 1)))

(assert (= (and d!1705331 c!921186) b!5305572))

(assert (= (and d!1705331 (not c!921186)) b!5305573))

(declare-fun m!6342944 () Bool)

(assert (=> b!5305572 m!6342944))

(declare-fun m!6342946 () Bool)

(assert (=> b!5305572 m!6342946))

(assert (=> b!5305342 d!1705331))

(declare-fun d!1705333 () Bool)

(declare-fun c!921187 () Bool)

(assert (=> d!1705333 (= c!921187 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297271 () Bool)

(assert (=> d!1705333 (= (matchZipper!1198 lt!2167941 (t!374366 s!2326)) e!3297271)))

(declare-fun b!5305574 () Bool)

(assert (=> b!5305574 (= e!3297271 (nullableZipper!1327 lt!2167941))))

(declare-fun b!5305575 () Bool)

(assert (=> b!5305575 (= e!3297271 (matchZipper!1198 (derivationStepZipper!1197 lt!2167941 (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705333 c!921187) b!5305574))

(assert (= (and d!1705333 (not c!921187)) b!5305575))

(assert (=> d!1705333 m!6342912))

(declare-fun m!6342948 () Bool)

(assert (=> b!5305574 m!6342948))

(assert (=> b!5305575 m!6342916))

(assert (=> b!5305575 m!6342916))

(declare-fun m!6342950 () Bool)

(assert (=> b!5305575 m!6342950))

(assert (=> b!5305575 m!6342920))

(assert (=> b!5305575 m!6342950))

(assert (=> b!5305575 m!6342920))

(declare-fun m!6342952 () Bool)

(assert (=> b!5305575 m!6342952))

(assert (=> b!5305340 d!1705333))

(declare-fun d!1705335 () Bool)

(declare-fun c!921188 () Bool)

(assert (=> d!1705335 (= c!921188 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297272 () Bool)

(assert (=> d!1705335 (= (matchZipper!1198 lt!2167948 (t!374366 s!2326)) e!3297272)))

(declare-fun b!5305576 () Bool)

(assert (=> b!5305576 (= e!3297272 (nullableZipper!1327 lt!2167948))))

(declare-fun b!5305577 () Bool)

(assert (=> b!5305577 (= e!3297272 (matchZipper!1198 (derivationStepZipper!1197 lt!2167948 (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705335 c!921188) b!5305576))

(assert (= (and d!1705335 (not c!921188)) b!5305577))

(assert (=> d!1705335 m!6342912))

(declare-fun m!6342954 () Bool)

(assert (=> b!5305576 m!6342954))

(assert (=> b!5305577 m!6342916))

(assert (=> b!5305577 m!6342916))

(declare-fun m!6342956 () Bool)

(assert (=> b!5305577 m!6342956))

(assert (=> b!5305577 m!6342920))

(assert (=> b!5305577 m!6342956))

(assert (=> b!5305577 m!6342920))

(declare-fun m!6342958 () Bool)

(assert (=> b!5305577 m!6342958))

(assert (=> b!5305340 d!1705335))

(declare-fun d!1705337 () Bool)

(declare-fun c!921189 () Bool)

(assert (=> d!1705337 (= c!921189 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297273 () Bool)

(assert (=> d!1705337 (= (matchZipper!1198 lt!2167919 (t!374366 s!2326)) e!3297273)))

(declare-fun b!5305578 () Bool)

(assert (=> b!5305578 (= e!3297273 (nullableZipper!1327 lt!2167919))))

(declare-fun b!5305579 () Bool)

(assert (=> b!5305579 (= e!3297273 (matchZipper!1198 (derivationStepZipper!1197 lt!2167919 (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705337 c!921189) b!5305578))

(assert (= (and d!1705337 (not c!921189)) b!5305579))

(assert (=> d!1705337 m!6342912))

(declare-fun m!6342960 () Bool)

(assert (=> b!5305578 m!6342960))

(assert (=> b!5305579 m!6342916))

(assert (=> b!5305579 m!6342916))

(declare-fun m!6342962 () Bool)

(assert (=> b!5305579 m!6342962))

(assert (=> b!5305579 m!6342920))

(assert (=> b!5305579 m!6342962))

(assert (=> b!5305579 m!6342920))

(declare-fun m!6342964 () Bool)

(assert (=> b!5305579 m!6342964))

(assert (=> b!5305340 d!1705337))

(declare-fun d!1705339 () Bool)

(declare-fun e!3297276 () Bool)

(assert (=> d!1705339 (= (matchZipper!1198 (set.union lt!2167919 lt!2167914) (t!374366 s!2326)) e!3297276)))

(declare-fun res!2250688 () Bool)

(assert (=> d!1705339 (=> res!2250688 e!3297276)))

(assert (=> d!1705339 (= res!2250688 (matchZipper!1198 lt!2167919 (t!374366 s!2326)))))

(declare-fun lt!2168106 () Unit!153334)

(declare-fun choose!39663 ((Set Context!8676) (Set Context!8676) List!61161) Unit!153334)

(assert (=> d!1705339 (= lt!2168106 (choose!39663 lt!2167919 lt!2167914 (t!374366 s!2326)))))

(assert (=> d!1705339 (= (lemmaZipperConcatMatchesSameAsBothZippers!191 lt!2167919 lt!2167914 (t!374366 s!2326)) lt!2168106)))

(declare-fun b!5305582 () Bool)

(assert (=> b!5305582 (= e!3297276 (matchZipper!1198 lt!2167914 (t!374366 s!2326)))))

(assert (= (and d!1705339 (not res!2250688)) b!5305582))

(declare-fun m!6342966 () Bool)

(assert (=> d!1705339 m!6342966))

(assert (=> d!1705339 m!6342584))

(declare-fun m!6342968 () Bool)

(assert (=> d!1705339 m!6342968))

(assert (=> b!5305582 m!6342664))

(assert (=> b!5305340 d!1705339))

(declare-fun d!1705341 () Bool)

(assert (=> d!1705341 (= (isEmpty!32997 (t!374367 (exprs!4838 (h!67487 zl!343)))) (is-Nil!61038 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(assert (=> b!5305319 d!1705341))

(declare-fun b!5305593 () Bool)

(declare-fun e!3297283 () Bool)

(assert (=> b!5305593 (= e!3297283 (nullable!5123 (h!67486 (exprs!4838 lt!2167931))))))

(declare-fun b!5305594 () Bool)

(declare-fun e!3297285 () (Set Context!8676))

(declare-fun call!378212 () (Set Context!8676))

(assert (=> b!5305594 (= e!3297285 (set.union call!378212 (derivationStepZipperUp!326 (Context!8677 (t!374367 (exprs!4838 lt!2167931))) (h!67485 s!2326))))))

(declare-fun bm!378207 () Bool)

(assert (=> bm!378207 (= call!378212 (derivationStepZipperDown!402 (h!67486 (exprs!4838 lt!2167931)) (Context!8677 (t!374367 (exprs!4838 lt!2167931))) (h!67485 s!2326)))))

(declare-fun d!1705343 () Bool)

(declare-fun c!921194 () Bool)

(assert (=> d!1705343 (= c!921194 e!3297283)))

(declare-fun res!2250691 () Bool)

(assert (=> d!1705343 (=> (not res!2250691) (not e!3297283))))

(assert (=> d!1705343 (= res!2250691 (is-Cons!61038 (exprs!4838 lt!2167931)))))

(assert (=> d!1705343 (= (derivationStepZipperUp!326 lt!2167931 (h!67485 s!2326)) e!3297285)))

(declare-fun b!5305595 () Bool)

(declare-fun e!3297284 () (Set Context!8676))

(assert (=> b!5305595 (= e!3297284 call!378212)))

(declare-fun b!5305596 () Bool)

(assert (=> b!5305596 (= e!3297285 e!3297284)))

(declare-fun c!921195 () Bool)

(assert (=> b!5305596 (= c!921195 (is-Cons!61038 (exprs!4838 lt!2167931)))))

(declare-fun b!5305597 () Bool)

(assert (=> b!5305597 (= e!3297284 (as set.empty (Set Context!8676)))))

(assert (= (and d!1705343 res!2250691) b!5305593))

(assert (= (and d!1705343 c!921194) b!5305594))

(assert (= (and d!1705343 (not c!921194)) b!5305596))

(assert (= (and b!5305596 c!921195) b!5305595))

(assert (= (and b!5305596 (not c!921195)) b!5305597))

(assert (= (or b!5305594 b!5305595) bm!378207))

(declare-fun m!6342970 () Bool)

(assert (=> b!5305593 m!6342970))

(declare-fun m!6342972 () Bool)

(assert (=> b!5305594 m!6342972))

(declare-fun m!6342974 () Bool)

(assert (=> bm!378207 m!6342974))

(assert (=> b!5305323 d!1705343))

(declare-fun d!1705345 () Bool)

(declare-fun nullableFct!1479 (Regex!14954) Bool)

(assert (=> d!1705345 (= (nullable!5123 (h!67486 (exprs!4838 (h!67487 zl!343)))) (nullableFct!1479 (h!67486 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun bs!1230227 () Bool)

(assert (= bs!1230227 d!1705345))

(declare-fun m!6342976 () Bool)

(assert (=> bs!1230227 m!6342976))

(assert (=> b!5305323 d!1705345))

(declare-fun b!5305598 () Bool)

(declare-fun e!3297286 () Bool)

(assert (=> b!5305598 (= e!3297286 (nullable!5123 (h!67486 (exprs!4838 (Context!8677 (Cons!61038 (h!67486 (exprs!4838 (h!67487 zl!343))) (t!374367 (exprs!4838 (h!67487 zl!343)))))))))))

(declare-fun e!3297288 () (Set Context!8676))

(declare-fun call!378213 () (Set Context!8676))

(declare-fun b!5305599 () Bool)

(assert (=> b!5305599 (= e!3297288 (set.union call!378213 (derivationStepZipperUp!326 (Context!8677 (t!374367 (exprs!4838 (Context!8677 (Cons!61038 (h!67486 (exprs!4838 (h!67487 zl!343))) (t!374367 (exprs!4838 (h!67487 zl!343)))))))) (h!67485 s!2326))))))

(declare-fun bm!378208 () Bool)

(assert (=> bm!378208 (= call!378213 (derivationStepZipperDown!402 (h!67486 (exprs!4838 (Context!8677 (Cons!61038 (h!67486 (exprs!4838 (h!67487 zl!343))) (t!374367 (exprs!4838 (h!67487 zl!343))))))) (Context!8677 (t!374367 (exprs!4838 (Context!8677 (Cons!61038 (h!67486 (exprs!4838 (h!67487 zl!343))) (t!374367 (exprs!4838 (h!67487 zl!343)))))))) (h!67485 s!2326)))))

(declare-fun d!1705347 () Bool)

(declare-fun c!921196 () Bool)

(assert (=> d!1705347 (= c!921196 e!3297286)))

(declare-fun res!2250692 () Bool)

(assert (=> d!1705347 (=> (not res!2250692) (not e!3297286))))

(assert (=> d!1705347 (= res!2250692 (is-Cons!61038 (exprs!4838 (Context!8677 (Cons!61038 (h!67486 (exprs!4838 (h!67487 zl!343))) (t!374367 (exprs!4838 (h!67487 zl!343))))))))))

(assert (=> d!1705347 (= (derivationStepZipperUp!326 (Context!8677 (Cons!61038 (h!67486 (exprs!4838 (h!67487 zl!343))) (t!374367 (exprs!4838 (h!67487 zl!343))))) (h!67485 s!2326)) e!3297288)))

(declare-fun b!5305600 () Bool)

(declare-fun e!3297287 () (Set Context!8676))

(assert (=> b!5305600 (= e!3297287 call!378213)))

(declare-fun b!5305601 () Bool)

(assert (=> b!5305601 (= e!3297288 e!3297287)))

(declare-fun c!921197 () Bool)

(assert (=> b!5305601 (= c!921197 (is-Cons!61038 (exprs!4838 (Context!8677 (Cons!61038 (h!67486 (exprs!4838 (h!67487 zl!343))) (t!374367 (exprs!4838 (h!67487 zl!343))))))))))

(declare-fun b!5305602 () Bool)

(assert (=> b!5305602 (= e!3297287 (as set.empty (Set Context!8676)))))

(assert (= (and d!1705347 res!2250692) b!5305598))

(assert (= (and d!1705347 c!921196) b!5305599))

(assert (= (and d!1705347 (not c!921196)) b!5305601))

(assert (= (and b!5305601 c!921197) b!5305600))

(assert (= (and b!5305601 (not c!921197)) b!5305602))

(assert (= (or b!5305599 b!5305600) bm!378208))

(declare-fun m!6342978 () Bool)

(assert (=> b!5305598 m!6342978))

(declare-fun m!6342980 () Bool)

(assert (=> b!5305599 m!6342980))

(declare-fun m!6342982 () Bool)

(assert (=> bm!378208 m!6342982))

(assert (=> b!5305323 d!1705347))

(declare-fun d!1705349 () Bool)

(declare-fun choose!39664 ((Set Context!8676) Int) (Set Context!8676))

(assert (=> d!1705349 (= (flatMap!681 z!1189 lambda!269834) (choose!39664 z!1189 lambda!269834))))

(declare-fun bs!1230228 () Bool)

(assert (= bs!1230228 d!1705349))

(declare-fun m!6342984 () Bool)

(assert (=> bs!1230228 m!6342984))

(assert (=> b!5305323 d!1705349))

(declare-fun d!1705351 () Bool)

(declare-fun dynLambda!24126 (Int Context!8676) (Set Context!8676))

(assert (=> d!1705351 (= (flatMap!681 z!1189 lambda!269834) (dynLambda!24126 lambda!269834 (h!67487 zl!343)))))

(declare-fun lt!2168109 () Unit!153334)

(declare-fun choose!39665 ((Set Context!8676) Context!8676 Int) Unit!153334)

(assert (=> d!1705351 (= lt!2168109 (choose!39665 z!1189 (h!67487 zl!343) lambda!269834))))

(assert (=> d!1705351 (= z!1189 (set.insert (h!67487 zl!343) (as set.empty (Set Context!8676))))))

(assert (=> d!1705351 (= (lemmaFlatMapOnSingletonSet!213 z!1189 (h!67487 zl!343) lambda!269834) lt!2168109)))

(declare-fun b_lambda!204317 () Bool)

(assert (=> (not b_lambda!204317) (not d!1705351)))

(declare-fun bs!1230229 () Bool)

(assert (= bs!1230229 d!1705351))

(assert (=> bs!1230229 m!6342656))

(declare-fun m!6342986 () Bool)

(assert (=> bs!1230229 m!6342986))

(declare-fun m!6342988 () Bool)

(assert (=> bs!1230229 m!6342988))

(declare-fun m!6342990 () Bool)

(assert (=> bs!1230229 m!6342990))

(assert (=> b!5305323 d!1705351))

(declare-fun b!5305603 () Bool)

(declare-fun e!3297289 () Bool)

(assert (=> b!5305603 (= e!3297289 (nullable!5123 (h!67486 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun call!378214 () (Set Context!8676))

(declare-fun e!3297291 () (Set Context!8676))

(declare-fun b!5305604 () Bool)

(assert (=> b!5305604 (= e!3297291 (set.union call!378214 (derivationStepZipperUp!326 (Context!8677 (t!374367 (exprs!4838 (h!67487 zl!343)))) (h!67485 s!2326))))))

(declare-fun bm!378209 () Bool)

(assert (=> bm!378209 (= call!378214 (derivationStepZipperDown!402 (h!67486 (exprs!4838 (h!67487 zl!343))) (Context!8677 (t!374367 (exprs!4838 (h!67487 zl!343)))) (h!67485 s!2326)))))

(declare-fun d!1705353 () Bool)

(declare-fun c!921198 () Bool)

(assert (=> d!1705353 (= c!921198 e!3297289)))

(declare-fun res!2250693 () Bool)

(assert (=> d!1705353 (=> (not res!2250693) (not e!3297289))))

(assert (=> d!1705353 (= res!2250693 (is-Cons!61038 (exprs!4838 (h!67487 zl!343))))))

(assert (=> d!1705353 (= (derivationStepZipperUp!326 (h!67487 zl!343) (h!67485 s!2326)) e!3297291)))

(declare-fun b!5305605 () Bool)

(declare-fun e!3297290 () (Set Context!8676))

(assert (=> b!5305605 (= e!3297290 call!378214)))

(declare-fun b!5305606 () Bool)

(assert (=> b!5305606 (= e!3297291 e!3297290)))

(declare-fun c!921199 () Bool)

(assert (=> b!5305606 (= c!921199 (is-Cons!61038 (exprs!4838 (h!67487 zl!343))))))

(declare-fun b!5305607 () Bool)

(assert (=> b!5305607 (= e!3297290 (as set.empty (Set Context!8676)))))

(assert (= (and d!1705353 res!2250693) b!5305603))

(assert (= (and d!1705353 c!921198) b!5305604))

(assert (= (and d!1705353 (not c!921198)) b!5305606))

(assert (= (and b!5305606 c!921199) b!5305605))

(assert (= (and b!5305606 (not c!921199)) b!5305607))

(assert (= (or b!5305604 b!5305605) bm!378209))

(assert (=> b!5305603 m!6342660))

(declare-fun m!6342992 () Bool)

(assert (=> b!5305604 m!6342992))

(declare-fun m!6342994 () Bool)

(assert (=> bm!378209 m!6342994))

(assert (=> b!5305323 d!1705353))

(declare-fun d!1705355 () Bool)

(declare-fun c!921211 () Bool)

(assert (=> d!1705355 (= c!921211 (and (is-ElementMatch!14954 (h!67486 (exprs!4838 (h!67487 zl!343)))) (= (c!921158 (h!67486 (exprs!4838 (h!67487 zl!343)))) (h!67485 s!2326))))))

(declare-fun e!3297306 () (Set Context!8676))

(assert (=> d!1705355 (= (derivationStepZipperDown!402 (h!67486 (exprs!4838 (h!67487 zl!343))) lt!2167931 (h!67485 s!2326)) e!3297306)))

(declare-fun b!5305630 () Bool)

(declare-fun e!3297304 () (Set Context!8676))

(declare-fun call!378230 () (Set Context!8676))

(declare-fun call!378229 () (Set Context!8676))

(assert (=> b!5305630 (= e!3297304 (set.union call!378230 call!378229))))

(declare-fun call!378232 () List!61162)

(declare-fun c!921213 () Bool)

(declare-fun bm!378222 () Bool)

(assert (=> bm!378222 (= call!378230 (derivationStepZipperDown!402 (ite c!921213 (regTwo!30421 (h!67486 (exprs!4838 (h!67487 zl!343)))) (regOne!30420 (h!67486 (exprs!4838 (h!67487 zl!343))))) (ite c!921213 lt!2167931 (Context!8677 call!378232)) (h!67485 s!2326)))))

(declare-fun b!5305631 () Bool)

(assert (=> b!5305631 (= e!3297306 (set.insert lt!2167931 (as set.empty (Set Context!8676))))))

(declare-fun bm!378223 () Bool)

(declare-fun call!378227 () List!61162)

(assert (=> bm!378223 (= call!378227 call!378232)))

(declare-fun b!5305632 () Bool)

(declare-fun e!3297305 () (Set Context!8676))

(assert (=> b!5305632 (= e!3297306 e!3297305)))

(assert (=> b!5305632 (= c!921213 (is-Union!14954 (h!67486 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun c!921210 () Bool)

(declare-fun c!921214 () Bool)

(declare-fun call!378228 () (Set Context!8676))

(declare-fun bm!378224 () Bool)

(assert (=> bm!378224 (= call!378228 (derivationStepZipperDown!402 (ite c!921213 (regOne!30421 (h!67486 (exprs!4838 (h!67487 zl!343)))) (ite c!921214 (regTwo!30420 (h!67486 (exprs!4838 (h!67487 zl!343)))) (ite c!921210 (regOne!30420 (h!67486 (exprs!4838 (h!67487 zl!343)))) (reg!15283 (h!67486 (exprs!4838 (h!67487 zl!343))))))) (ite (or c!921213 c!921214) lt!2167931 (Context!8677 call!378227)) (h!67485 s!2326)))))

(declare-fun bm!378225 () Bool)

(declare-fun call!378231 () (Set Context!8676))

(assert (=> bm!378225 (= call!378231 call!378229)))

(declare-fun b!5305633 () Bool)

(declare-fun e!3297308 () (Set Context!8676))

(assert (=> b!5305633 (= e!3297308 (as set.empty (Set Context!8676)))))

(declare-fun b!5305634 () Bool)

(assert (=> b!5305634 (= e!3297305 (set.union call!378228 call!378230))))

(declare-fun bm!378226 () Bool)

(assert (=> bm!378226 (= call!378229 call!378228)))

(declare-fun b!5305635 () Bool)

(declare-fun c!921212 () Bool)

(assert (=> b!5305635 (= c!921212 (is-Star!14954 (h!67486 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun e!3297309 () (Set Context!8676))

(assert (=> b!5305635 (= e!3297309 e!3297308)))

(declare-fun b!5305636 () Bool)

(assert (=> b!5305636 (= e!3297308 call!378231)))

(declare-fun b!5305637 () Bool)

(declare-fun e!3297307 () Bool)

(assert (=> b!5305637 (= e!3297307 (nullable!5123 (regOne!30420 (h!67486 (exprs!4838 (h!67487 zl!343))))))))

(declare-fun b!5305638 () Bool)

(assert (=> b!5305638 (= e!3297304 e!3297309)))

(assert (=> b!5305638 (= c!921210 (is-Concat!23799 (h!67486 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305639 () Bool)

(assert (=> b!5305639 (= c!921214 e!3297307)))

(declare-fun res!2250696 () Bool)

(assert (=> b!5305639 (=> (not res!2250696) (not e!3297307))))

(assert (=> b!5305639 (= res!2250696 (is-Concat!23799 (h!67486 (exprs!4838 (h!67487 zl!343)))))))

(assert (=> b!5305639 (= e!3297305 e!3297304)))

(declare-fun bm!378227 () Bool)

(declare-fun $colon$colon!1377 (List!61162 Regex!14954) List!61162)

(assert (=> bm!378227 (= call!378232 ($colon$colon!1377 (exprs!4838 lt!2167931) (ite (or c!921214 c!921210) (regTwo!30420 (h!67486 (exprs!4838 (h!67487 zl!343)))) (h!67486 (exprs!4838 (h!67487 zl!343))))))))

(declare-fun b!5305640 () Bool)

(assert (=> b!5305640 (= e!3297309 call!378231)))

(assert (= (and d!1705355 c!921211) b!5305631))

(assert (= (and d!1705355 (not c!921211)) b!5305632))

(assert (= (and b!5305632 c!921213) b!5305634))

(assert (= (and b!5305632 (not c!921213)) b!5305639))

(assert (= (and b!5305639 res!2250696) b!5305637))

(assert (= (and b!5305639 c!921214) b!5305630))

(assert (= (and b!5305639 (not c!921214)) b!5305638))

(assert (= (and b!5305638 c!921210) b!5305640))

(assert (= (and b!5305638 (not c!921210)) b!5305635))

(assert (= (and b!5305635 c!921212) b!5305636))

(assert (= (and b!5305635 (not c!921212)) b!5305633))

(assert (= (or b!5305640 b!5305636) bm!378223))

(assert (= (or b!5305640 b!5305636) bm!378225))

(assert (= (or b!5305630 bm!378223) bm!378227))

(assert (= (or b!5305630 bm!378225) bm!378226))

(assert (= (or b!5305634 b!5305630) bm!378222))

(assert (= (or b!5305634 bm!378226) bm!378224))

(declare-fun m!6342996 () Bool)

(assert (=> bm!378222 m!6342996))

(declare-fun m!6342998 () Bool)

(assert (=> b!5305637 m!6342998))

(declare-fun m!6343000 () Bool)

(assert (=> b!5305631 m!6343000))

(declare-fun m!6343002 () Bool)

(assert (=> bm!378227 m!6343002))

(declare-fun m!6343004 () Bool)

(assert (=> bm!378224 m!6343004))

(assert (=> b!5305323 d!1705355))

(declare-fun d!1705357 () Bool)

(declare-fun c!921215 () Bool)

(assert (=> d!1705357 (= c!921215 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297310 () Bool)

(assert (=> d!1705357 (= (matchZipper!1198 lt!2167923 (t!374366 s!2326)) e!3297310)))

(declare-fun b!5305641 () Bool)

(assert (=> b!5305641 (= e!3297310 (nullableZipper!1327 lt!2167923))))

(declare-fun b!5305642 () Bool)

(assert (=> b!5305642 (= e!3297310 (matchZipper!1198 (derivationStepZipper!1197 lt!2167923 (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705357 c!921215) b!5305641))

(assert (= (and d!1705357 (not c!921215)) b!5305642))

(assert (=> d!1705357 m!6342912))

(declare-fun m!6343006 () Bool)

(assert (=> b!5305641 m!6343006))

(assert (=> b!5305642 m!6342916))

(assert (=> b!5305642 m!6342916))

(declare-fun m!6343008 () Bool)

(assert (=> b!5305642 m!6343008))

(assert (=> b!5305642 m!6342920))

(assert (=> b!5305642 m!6343008))

(assert (=> b!5305642 m!6342920))

(declare-fun m!6343010 () Bool)

(assert (=> b!5305642 m!6343010))

(assert (=> b!5305321 d!1705357))

(declare-fun b!5305643 () Bool)

(declare-fun e!3297314 () Bool)

(declare-fun e!3297313 () Bool)

(assert (=> b!5305643 (= e!3297314 e!3297313)))

(declare-fun res!2250702 () Bool)

(assert (=> b!5305643 (=> res!2250702 e!3297313)))

(declare-fun call!378233 () Bool)

(assert (=> b!5305643 (= res!2250702 call!378233)))

(declare-fun b!5305644 () Bool)

(declare-fun e!3297311 () Bool)

(declare-fun lt!2168110 () Bool)

(assert (=> b!5305644 (= e!3297311 (= lt!2168110 call!378233))))

(declare-fun b!5305645 () Bool)

(declare-fun res!2250700 () Bool)

(declare-fun e!3297315 () Bool)

(assert (=> b!5305645 (=> (not res!2250700) (not e!3297315))))

(assert (=> b!5305645 (= res!2250700 (not call!378233))))

(declare-fun b!5305646 () Bool)

(declare-fun e!3297317 () Bool)

(assert (=> b!5305646 (= e!3297317 (nullable!5123 (Concat!23799 lt!2167943 (regTwo!30420 r!7292))))))

(declare-fun bm!378228 () Bool)

(assert (=> bm!378228 (= call!378233 (isEmpty!33001 s!2326))))

(declare-fun b!5305647 () Bool)

(declare-fun res!2250703 () Bool)

(declare-fun e!3297312 () Bool)

(assert (=> b!5305647 (=> res!2250703 e!3297312)))

(assert (=> b!5305647 (= res!2250703 e!3297315)))

(declare-fun res!2250704 () Bool)

(assert (=> b!5305647 (=> (not res!2250704) (not e!3297315))))

(assert (=> b!5305647 (= res!2250704 lt!2168110)))

(declare-fun d!1705359 () Bool)

(assert (=> d!1705359 e!3297311))

(declare-fun c!921216 () Bool)

(assert (=> d!1705359 (= c!921216 (is-EmptyExpr!14954 (Concat!23799 lt!2167943 (regTwo!30420 r!7292))))))

(assert (=> d!1705359 (= lt!2168110 e!3297317)))

(declare-fun c!921218 () Bool)

(assert (=> d!1705359 (= c!921218 (isEmpty!33001 s!2326))))

(assert (=> d!1705359 (validRegex!6690 (Concat!23799 lt!2167943 (regTwo!30420 r!7292)))))

(assert (=> d!1705359 (= (matchR!7139 (Concat!23799 lt!2167943 (regTwo!30420 r!7292)) s!2326) lt!2168110)))

(declare-fun b!5305648 () Bool)

(declare-fun res!2250699 () Bool)

(assert (=> b!5305648 (=> res!2250699 e!3297313)))

(assert (=> b!5305648 (= res!2250699 (not (isEmpty!33001 (tail!10469 s!2326))))))

(declare-fun b!5305649 () Bool)

(declare-fun res!2250697 () Bool)

(assert (=> b!5305649 (=> res!2250697 e!3297312)))

(assert (=> b!5305649 (= res!2250697 (not (is-ElementMatch!14954 (Concat!23799 lt!2167943 (regTwo!30420 r!7292)))))))

(declare-fun e!3297316 () Bool)

(assert (=> b!5305649 (= e!3297316 e!3297312)))

(declare-fun b!5305650 () Bool)

(assert (=> b!5305650 (= e!3297311 e!3297316)))

(declare-fun c!921217 () Bool)

(assert (=> b!5305650 (= c!921217 (is-EmptyLang!14954 (Concat!23799 lt!2167943 (regTwo!30420 r!7292))))))

(declare-fun b!5305651 () Bool)

(assert (=> b!5305651 (= e!3297316 (not lt!2168110))))

(declare-fun b!5305652 () Bool)

(assert (=> b!5305652 (= e!3297313 (not (= (head!11372 s!2326) (c!921158 (Concat!23799 lt!2167943 (regTwo!30420 r!7292))))))))

(declare-fun b!5305653 () Bool)

(assert (=> b!5305653 (= e!3297315 (= (head!11372 s!2326) (c!921158 (Concat!23799 lt!2167943 (regTwo!30420 r!7292)))))))

(declare-fun b!5305654 () Bool)

(assert (=> b!5305654 (= e!3297312 e!3297314)))

(declare-fun res!2250698 () Bool)

(assert (=> b!5305654 (=> (not res!2250698) (not e!3297314))))

(assert (=> b!5305654 (= res!2250698 (not lt!2168110))))

(declare-fun b!5305655 () Bool)

(declare-fun res!2250701 () Bool)

(assert (=> b!5305655 (=> (not res!2250701) (not e!3297315))))

(assert (=> b!5305655 (= res!2250701 (isEmpty!33001 (tail!10469 s!2326)))))

(declare-fun b!5305656 () Bool)

(assert (=> b!5305656 (= e!3297317 (matchR!7139 (derivativeStep!4148 (Concat!23799 lt!2167943 (regTwo!30420 r!7292)) (head!11372 s!2326)) (tail!10469 s!2326)))))

(assert (= (and d!1705359 c!921218) b!5305646))

(assert (= (and d!1705359 (not c!921218)) b!5305656))

(assert (= (and d!1705359 c!921216) b!5305644))

(assert (= (and d!1705359 (not c!921216)) b!5305650))

(assert (= (and b!5305650 c!921217) b!5305651))

(assert (= (and b!5305650 (not c!921217)) b!5305649))

(assert (= (and b!5305649 (not res!2250697)) b!5305647))

(assert (= (and b!5305647 res!2250704) b!5305645))

(assert (= (and b!5305645 res!2250700) b!5305655))

(assert (= (and b!5305655 res!2250701) b!5305653))

(assert (= (and b!5305647 (not res!2250703)) b!5305654))

(assert (= (and b!5305654 res!2250698) b!5305643))

(assert (= (and b!5305643 (not res!2250702)) b!5305648))

(assert (= (and b!5305648 (not res!2250699)) b!5305652))

(assert (= (or b!5305644 b!5305643 b!5305645) bm!378228))

(assert (=> b!5305648 m!6342924))

(assert (=> b!5305648 m!6342924))

(assert (=> b!5305648 m!6342926))

(assert (=> b!5305656 m!6342928))

(assert (=> b!5305656 m!6342928))

(declare-fun m!6343012 () Bool)

(assert (=> b!5305656 m!6343012))

(assert (=> b!5305656 m!6342924))

(assert (=> b!5305656 m!6343012))

(assert (=> b!5305656 m!6342924))

(declare-fun m!6343014 () Bool)

(assert (=> b!5305656 m!6343014))

(assert (=> b!5305653 m!6342928))

(assert (=> bm!378228 m!6342934))

(assert (=> d!1705359 m!6342934))

(declare-fun m!6343016 () Bool)

(assert (=> d!1705359 m!6343016))

(assert (=> b!5305652 m!6342928))

(assert (=> b!5305655 m!6342924))

(assert (=> b!5305655 m!6342924))

(assert (=> b!5305655 m!6342926))

(declare-fun m!6343018 () Bool)

(assert (=> b!5305646 m!6343018))

(assert (=> b!5305322 d!1705359))

(declare-fun d!1705361 () Bool)

(declare-fun e!3297320 () Bool)

(assert (=> d!1705361 e!3297320))

(declare-fun res!2250707 () Bool)

(assert (=> d!1705361 (=> (not res!2250707) (not e!3297320))))

(declare-fun lt!2168113 () List!61163)

(declare-fun noDuplicate!1282 (List!61163) Bool)

(assert (=> d!1705361 (= res!2250707 (noDuplicate!1282 lt!2168113))))

(declare-fun choose!39666 ((Set Context!8676)) List!61163)

(assert (=> d!1705361 (= lt!2168113 (choose!39666 z!1189))))

(assert (=> d!1705361 (= (toList!8738 z!1189) lt!2168113)))

(declare-fun b!5305659 () Bool)

(declare-fun content!10872 (List!61163) (Set Context!8676))

(assert (=> b!5305659 (= e!3297320 (= (content!10872 lt!2168113) z!1189))))

(assert (= (and d!1705361 res!2250707) b!5305659))

(declare-fun m!6343020 () Bool)

(assert (=> d!1705361 m!6343020))

(declare-fun m!6343022 () Bool)

(assert (=> d!1705361 m!6343022))

(declare-fun m!6343024 () Bool)

(assert (=> b!5305659 m!6343024))

(assert (=> b!5305343 d!1705361))

(declare-fun b!5305660 () Bool)

(declare-fun e!3297321 () Bool)

(assert (=> b!5305660 (= e!3297321 (nullable!5123 (h!67486 (exprs!4838 lt!2167944))))))

(declare-fun b!5305661 () Bool)

(declare-fun call!378234 () (Set Context!8676))

(declare-fun e!3297323 () (Set Context!8676))

(assert (=> b!5305661 (= e!3297323 (set.union call!378234 (derivationStepZipperUp!326 (Context!8677 (t!374367 (exprs!4838 lt!2167944))) (h!67485 s!2326))))))

(declare-fun bm!378229 () Bool)

(assert (=> bm!378229 (= call!378234 (derivationStepZipperDown!402 (h!67486 (exprs!4838 lt!2167944)) (Context!8677 (t!374367 (exprs!4838 lt!2167944))) (h!67485 s!2326)))))

(declare-fun d!1705363 () Bool)

(declare-fun c!921219 () Bool)

(assert (=> d!1705363 (= c!921219 e!3297321)))

(declare-fun res!2250708 () Bool)

(assert (=> d!1705363 (=> (not res!2250708) (not e!3297321))))

(assert (=> d!1705363 (= res!2250708 (is-Cons!61038 (exprs!4838 lt!2167944)))))

(assert (=> d!1705363 (= (derivationStepZipperUp!326 lt!2167944 (h!67485 s!2326)) e!3297323)))

(declare-fun b!5305662 () Bool)

(declare-fun e!3297322 () (Set Context!8676))

(assert (=> b!5305662 (= e!3297322 call!378234)))

(declare-fun b!5305663 () Bool)

(assert (=> b!5305663 (= e!3297323 e!3297322)))

(declare-fun c!921220 () Bool)

(assert (=> b!5305663 (= c!921220 (is-Cons!61038 (exprs!4838 lt!2167944)))))

(declare-fun b!5305664 () Bool)

(assert (=> b!5305664 (= e!3297322 (as set.empty (Set Context!8676)))))

(assert (= (and d!1705363 res!2250708) b!5305660))

(assert (= (and d!1705363 c!921219) b!5305661))

(assert (= (and d!1705363 (not c!921219)) b!5305663))

(assert (= (and b!5305663 c!921220) b!5305662))

(assert (= (and b!5305663 (not c!921220)) b!5305664))

(assert (= (or b!5305661 b!5305662) bm!378229))

(declare-fun m!6343026 () Bool)

(assert (=> b!5305660 m!6343026))

(declare-fun m!6343028 () Bool)

(assert (=> b!5305661 m!6343028))

(declare-fun m!6343030 () Bool)

(assert (=> bm!378229 m!6343030))

(assert (=> b!5305325 d!1705363))

(declare-fun d!1705365 () Bool)

(assert (=> d!1705365 (= (flatMap!681 lt!2167942 lambda!269834) (choose!39664 lt!2167942 lambda!269834))))

(declare-fun bs!1230230 () Bool)

(assert (= bs!1230230 d!1705365))

(declare-fun m!6343032 () Bool)

(assert (=> bs!1230230 m!6343032))

(assert (=> b!5305325 d!1705365))

(declare-fun bs!1230231 () Bool)

(declare-fun d!1705367 () Bool)

(assert (= bs!1230231 (and d!1705367 b!5305323)))

(declare-fun lambda!269872 () Int)

(assert (=> bs!1230231 (= lambda!269872 lambda!269834)))

(assert (=> d!1705367 true))

(assert (=> d!1705367 (= (derivationStepZipper!1197 lt!2167942 (h!67485 s!2326)) (flatMap!681 lt!2167942 lambda!269872))))

(declare-fun bs!1230232 () Bool)

(assert (= bs!1230232 d!1705367))

(declare-fun m!6343034 () Bool)

(assert (=> bs!1230232 m!6343034))

(assert (=> b!5305325 d!1705367))

(declare-fun d!1705369 () Bool)

(assert (=> d!1705369 (= (flatMap!681 lt!2167942 lambda!269834) (dynLambda!24126 lambda!269834 lt!2167902))))

(declare-fun lt!2168114 () Unit!153334)

(assert (=> d!1705369 (= lt!2168114 (choose!39665 lt!2167942 lt!2167902 lambda!269834))))

(assert (=> d!1705369 (= lt!2167942 (set.insert lt!2167902 (as set.empty (Set Context!8676))))))

(assert (=> d!1705369 (= (lemmaFlatMapOnSingletonSet!213 lt!2167942 lt!2167902 lambda!269834) lt!2168114)))

(declare-fun b_lambda!204319 () Bool)

(assert (=> (not b_lambda!204319) (not d!1705369)))

(declare-fun bs!1230233 () Bool)

(assert (= bs!1230233 d!1705369))

(assert (=> bs!1230233 m!6342732))

(declare-fun m!6343036 () Bool)

(assert (=> bs!1230233 m!6343036))

(declare-fun m!6343038 () Bool)

(assert (=> bs!1230233 m!6343038))

(assert (=> bs!1230233 m!6342728))

(assert (=> b!5305325 d!1705369))

(declare-fun b!5305667 () Bool)

(declare-fun e!3297324 () Bool)

(assert (=> b!5305667 (= e!3297324 (nullable!5123 (h!67486 (exprs!4838 lt!2167902))))))

(declare-fun e!3297326 () (Set Context!8676))

(declare-fun b!5305668 () Bool)

(declare-fun call!378235 () (Set Context!8676))

(assert (=> b!5305668 (= e!3297326 (set.union call!378235 (derivationStepZipperUp!326 (Context!8677 (t!374367 (exprs!4838 lt!2167902))) (h!67485 s!2326))))))

(declare-fun bm!378230 () Bool)

(assert (=> bm!378230 (= call!378235 (derivationStepZipperDown!402 (h!67486 (exprs!4838 lt!2167902)) (Context!8677 (t!374367 (exprs!4838 lt!2167902))) (h!67485 s!2326)))))

(declare-fun d!1705371 () Bool)

(declare-fun c!921223 () Bool)

(assert (=> d!1705371 (= c!921223 e!3297324)))

(declare-fun res!2250709 () Bool)

(assert (=> d!1705371 (=> (not res!2250709) (not e!3297324))))

(assert (=> d!1705371 (= res!2250709 (is-Cons!61038 (exprs!4838 lt!2167902)))))

(assert (=> d!1705371 (= (derivationStepZipperUp!326 lt!2167902 (h!67485 s!2326)) e!3297326)))

(declare-fun b!5305669 () Bool)

(declare-fun e!3297325 () (Set Context!8676))

(assert (=> b!5305669 (= e!3297325 call!378235)))

(declare-fun b!5305670 () Bool)

(assert (=> b!5305670 (= e!3297326 e!3297325)))

(declare-fun c!921224 () Bool)

(assert (=> b!5305670 (= c!921224 (is-Cons!61038 (exprs!4838 lt!2167902)))))

(declare-fun b!5305671 () Bool)

(assert (=> b!5305671 (= e!3297325 (as set.empty (Set Context!8676)))))

(assert (= (and d!1705371 res!2250709) b!5305667))

(assert (= (and d!1705371 c!921223) b!5305668))

(assert (= (and d!1705371 (not c!921223)) b!5305670))

(assert (= (and b!5305670 c!921224) b!5305669))

(assert (= (and b!5305670 (not c!921224)) b!5305671))

(assert (= (or b!5305668 b!5305669) bm!378230))

(declare-fun m!6343040 () Bool)

(assert (=> b!5305667 m!6343040))

(declare-fun m!6343042 () Bool)

(assert (=> b!5305668 m!6343042))

(declare-fun m!6343044 () Bool)

(assert (=> bm!378230 m!6343044))

(assert (=> b!5305325 d!1705371))

(declare-fun d!1705373 () Bool)

(declare-fun lt!2168117 () Regex!14954)

(assert (=> d!1705373 (validRegex!6690 lt!2168117)))

(assert (=> d!1705373 (= lt!2168117 (generalisedUnion!883 (unfocusZipperList!396 zl!343)))))

(assert (=> d!1705373 (= (unfocusZipper!696 zl!343) lt!2168117)))

(declare-fun bs!1230234 () Bool)

(assert (= bs!1230234 d!1705373))

(declare-fun m!6343046 () Bool)

(assert (=> bs!1230234 m!6343046))

(assert (=> bs!1230234 m!6342712))

(assert (=> bs!1230234 m!6342712))

(assert (=> bs!1230234 m!6342714))

(assert (=> b!5305326 d!1705373))

(declare-fun b!5305692 () Bool)

(declare-fun e!3297344 () Regex!14954)

(assert (=> b!5305692 (= e!3297344 (Concat!23799 (h!67486 (exprs!4838 (h!67487 zl!343))) (generalisedConcat!623 (t!374367 (exprs!4838 (h!67487 zl!343))))))))

(declare-fun b!5305694 () Bool)

(declare-fun e!3297343 () Bool)

(declare-fun lt!2168120 () Regex!14954)

(declare-fun head!11373 (List!61162) Regex!14954)

(assert (=> b!5305694 (= e!3297343 (= lt!2168120 (head!11373 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305695 () Bool)

(declare-fun e!3297341 () Regex!14954)

(assert (=> b!5305695 (= e!3297341 (h!67486 (exprs!4838 (h!67487 zl!343))))))

(declare-fun b!5305696 () Bool)

(assert (=> b!5305696 (= e!3297341 e!3297344)))

(declare-fun c!921234 () Bool)

(assert (=> b!5305696 (= c!921234 (is-Cons!61038 (exprs!4838 (h!67487 zl!343))))))

(declare-fun b!5305697 () Bool)

(declare-fun e!3297340 () Bool)

(declare-fun e!3297342 () Bool)

(assert (=> b!5305697 (= e!3297340 e!3297342)))

(declare-fun c!921236 () Bool)

(assert (=> b!5305697 (= c!921236 (isEmpty!32997 (exprs!4838 (h!67487 zl!343))))))

(declare-fun b!5305693 () Bool)

(assert (=> b!5305693 (= e!3297342 e!3297343)))

(declare-fun c!921233 () Bool)

(declare-fun tail!10470 (List!61162) List!61162)

(assert (=> b!5305693 (= c!921233 (isEmpty!32997 (tail!10470 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun d!1705375 () Bool)

(assert (=> d!1705375 e!3297340))

(declare-fun res!2250714 () Bool)

(assert (=> d!1705375 (=> (not res!2250714) (not e!3297340))))

(assert (=> d!1705375 (= res!2250714 (validRegex!6690 lt!2168120))))

(assert (=> d!1705375 (= lt!2168120 e!3297341)))

(declare-fun c!921235 () Bool)

(declare-fun e!3297339 () Bool)

(assert (=> d!1705375 (= c!921235 e!3297339)))

(declare-fun res!2250715 () Bool)

(assert (=> d!1705375 (=> (not res!2250715) (not e!3297339))))

(assert (=> d!1705375 (= res!2250715 (is-Cons!61038 (exprs!4838 (h!67487 zl!343))))))

(declare-fun lambda!269875 () Int)

(declare-fun forall!14368 (List!61162 Int) Bool)

(assert (=> d!1705375 (forall!14368 (exprs!4838 (h!67487 zl!343)) lambda!269875)))

(assert (=> d!1705375 (= (generalisedConcat!623 (exprs!4838 (h!67487 zl!343))) lt!2168120)))

(declare-fun b!5305698 () Bool)

(declare-fun isEmptyExpr!862 (Regex!14954) Bool)

(assert (=> b!5305698 (= e!3297342 (isEmptyExpr!862 lt!2168120))))

(declare-fun b!5305699 () Bool)

(assert (=> b!5305699 (= e!3297339 (isEmpty!32997 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305700 () Bool)

(declare-fun isConcat!385 (Regex!14954) Bool)

(assert (=> b!5305700 (= e!3297343 (isConcat!385 lt!2168120))))

(declare-fun b!5305701 () Bool)

(assert (=> b!5305701 (= e!3297344 EmptyExpr!14954)))

(assert (= (and d!1705375 res!2250715) b!5305699))

(assert (= (and d!1705375 c!921235) b!5305695))

(assert (= (and d!1705375 (not c!921235)) b!5305696))

(assert (= (and b!5305696 c!921234) b!5305692))

(assert (= (and b!5305696 (not c!921234)) b!5305701))

(assert (= (and d!1705375 res!2250714) b!5305697))

(assert (= (and b!5305697 c!921236) b!5305698))

(assert (= (and b!5305697 (not c!921236)) b!5305693))

(assert (= (and b!5305693 c!921233) b!5305694))

(assert (= (and b!5305693 (not c!921233)) b!5305700))

(assert (=> b!5305692 m!6342630))

(declare-fun m!6343048 () Bool)

(assert (=> b!5305697 m!6343048))

(declare-fun m!6343050 () Bool)

(assert (=> b!5305700 m!6343050))

(assert (=> b!5305699 m!6342678))

(declare-fun m!6343052 () Bool)

(assert (=> d!1705375 m!6343052))

(declare-fun m!6343054 () Bool)

(assert (=> d!1705375 m!6343054))

(declare-fun m!6343056 () Bool)

(assert (=> b!5305693 m!6343056))

(assert (=> b!5305693 m!6343056))

(declare-fun m!6343058 () Bool)

(assert (=> b!5305693 m!6343058))

(declare-fun m!6343060 () Bool)

(assert (=> b!5305694 m!6343060))

(declare-fun m!6343062 () Bool)

(assert (=> b!5305698 m!6343062))

(assert (=> b!5305347 d!1705375))

(declare-fun bs!1230235 () Bool)

(declare-fun b!5305743 () Bool)

(assert (= bs!1230235 (and b!5305743 b!5305334)))

(declare-fun lambda!269880 () Int)

(assert (=> bs!1230235 (not (= lambda!269880 lambda!269835))))

(assert (=> bs!1230235 (not (= lambda!269880 lambda!269836))))

(declare-fun bs!1230236 () Bool)

(assert (= bs!1230236 (and b!5305743 b!5305316)))

(assert (=> bs!1230236 (not (= lambda!269880 lambda!269832))))

(assert (=> bs!1230236 (not (= lambda!269880 lambda!269833))))

(assert (=> bs!1230235 (not (= lambda!269880 lambda!269838))))

(assert (=> bs!1230235 (not (= lambda!269880 lambda!269837))))

(assert (=> b!5305743 true))

(assert (=> b!5305743 true))

(declare-fun bs!1230237 () Bool)

(declare-fun b!5305738 () Bool)

(assert (= bs!1230237 (and b!5305738 b!5305334)))

(declare-fun lambda!269881 () Int)

(assert (=> bs!1230237 (not (= lambda!269881 lambda!269835))))

(assert (=> bs!1230237 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269881 lambda!269836))))

(declare-fun bs!1230238 () Bool)

(assert (= bs!1230238 (and b!5305738 b!5305316)))

(assert (=> bs!1230238 (not (= lambda!269881 lambda!269832))))

(declare-fun bs!1230239 () Bool)

(assert (= bs!1230239 (and b!5305738 b!5305743)))

(assert (=> bs!1230239 (not (= lambda!269881 lambda!269880))))

(assert (=> bs!1230238 (= lambda!269881 lambda!269833)))

(assert (=> bs!1230237 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269881 lambda!269838))))

(assert (=> bs!1230237 (not (= lambda!269881 lambda!269837))))

(assert (=> b!5305738 true))

(assert (=> b!5305738 true))

(declare-fun call!378240 () Bool)

(declare-fun bm!378235 () Bool)

(declare-fun c!921245 () Bool)

(assert (=> bm!378235 (= call!378240 (Exists!2135 (ite c!921245 lambda!269880 lambda!269881)))))

(declare-fun d!1705377 () Bool)

(declare-fun c!921247 () Bool)

(assert (=> d!1705377 (= c!921247 (is-EmptyExpr!14954 r!7292))))

(declare-fun e!3297369 () Bool)

(assert (=> d!1705377 (= (matchRSpec!2057 r!7292 s!2326) e!3297369)))

(declare-fun b!5305734 () Bool)

(declare-fun res!2250732 () Bool)

(declare-fun e!3297368 () Bool)

(assert (=> b!5305734 (=> res!2250732 e!3297368)))

(declare-fun call!378241 () Bool)

(assert (=> b!5305734 (= res!2250732 call!378241)))

(declare-fun e!3297363 () Bool)

(assert (=> b!5305734 (= e!3297363 e!3297368)))

(declare-fun b!5305735 () Bool)

(declare-fun c!921248 () Bool)

(assert (=> b!5305735 (= c!921248 (is-Union!14954 r!7292))))

(declare-fun e!3297366 () Bool)

(declare-fun e!3297365 () Bool)

(assert (=> b!5305735 (= e!3297366 e!3297365)))

(declare-fun b!5305736 () Bool)

(declare-fun e!3297367 () Bool)

(assert (=> b!5305736 (= e!3297367 (matchRSpec!2057 (regTwo!30421 r!7292) s!2326))))

(declare-fun b!5305737 () Bool)

(assert (=> b!5305737 (= e!3297366 (= s!2326 (Cons!61037 (c!921158 r!7292) Nil!61037)))))

(assert (=> b!5305738 (= e!3297363 call!378240)))

(declare-fun b!5305739 () Bool)

(assert (=> b!5305739 (= e!3297365 e!3297363)))

(assert (=> b!5305739 (= c!921245 (is-Star!14954 r!7292))))

(declare-fun b!5305740 () Bool)

(assert (=> b!5305740 (= e!3297369 call!378241)))

(declare-fun b!5305741 () Bool)

(assert (=> b!5305741 (= e!3297365 e!3297367)))

(declare-fun res!2250733 () Bool)

(assert (=> b!5305741 (= res!2250733 (matchRSpec!2057 (regOne!30421 r!7292) s!2326))))

(assert (=> b!5305741 (=> res!2250733 e!3297367)))

(declare-fun b!5305742 () Bool)

(declare-fun e!3297364 () Bool)

(assert (=> b!5305742 (= e!3297369 e!3297364)))

(declare-fun res!2250734 () Bool)

(assert (=> b!5305742 (= res!2250734 (not (is-EmptyLang!14954 r!7292)))))

(assert (=> b!5305742 (=> (not res!2250734) (not e!3297364))))

(declare-fun bm!378236 () Bool)

(assert (=> bm!378236 (= call!378241 (isEmpty!33001 s!2326))))

(assert (=> b!5305743 (= e!3297368 call!378240)))

(declare-fun b!5305744 () Bool)

(declare-fun c!921246 () Bool)

(assert (=> b!5305744 (= c!921246 (is-ElementMatch!14954 r!7292))))

(assert (=> b!5305744 (= e!3297364 e!3297366)))

(assert (= (and d!1705377 c!921247) b!5305740))

(assert (= (and d!1705377 (not c!921247)) b!5305742))

(assert (= (and b!5305742 res!2250734) b!5305744))

(assert (= (and b!5305744 c!921246) b!5305737))

(assert (= (and b!5305744 (not c!921246)) b!5305735))

(assert (= (and b!5305735 c!921248) b!5305741))

(assert (= (and b!5305735 (not c!921248)) b!5305739))

(assert (= (and b!5305741 (not res!2250733)) b!5305736))

(assert (= (and b!5305739 c!921245) b!5305734))

(assert (= (and b!5305739 (not c!921245)) b!5305738))

(assert (= (and b!5305734 (not res!2250732)) b!5305743))

(assert (= (or b!5305743 b!5305738) bm!378235))

(assert (= (or b!5305740 b!5305734) bm!378236))

(declare-fun m!6343064 () Bool)

(assert (=> bm!378235 m!6343064))

(declare-fun m!6343066 () Bool)

(assert (=> b!5305736 m!6343066))

(declare-fun m!6343068 () Bool)

(assert (=> b!5305741 m!6343068))

(assert (=> bm!378236 m!6342934))

(assert (=> b!5305324 d!1705377))

(declare-fun b!5305745 () Bool)

(declare-fun e!3297373 () Bool)

(declare-fun e!3297372 () Bool)

(assert (=> b!5305745 (= e!3297373 e!3297372)))

(declare-fun res!2250740 () Bool)

(assert (=> b!5305745 (=> res!2250740 e!3297372)))

(declare-fun call!378242 () Bool)

(assert (=> b!5305745 (= res!2250740 call!378242)))

(declare-fun b!5305746 () Bool)

(declare-fun e!3297370 () Bool)

(declare-fun lt!2168121 () Bool)

(assert (=> b!5305746 (= e!3297370 (= lt!2168121 call!378242))))

(declare-fun b!5305747 () Bool)

(declare-fun res!2250738 () Bool)

(declare-fun e!3297374 () Bool)

(assert (=> b!5305747 (=> (not res!2250738) (not e!3297374))))

(assert (=> b!5305747 (= res!2250738 (not call!378242))))

(declare-fun b!5305748 () Bool)

(declare-fun e!3297376 () Bool)

(assert (=> b!5305748 (= e!3297376 (nullable!5123 r!7292))))

(declare-fun bm!378237 () Bool)

(assert (=> bm!378237 (= call!378242 (isEmpty!33001 s!2326))))

(declare-fun b!5305749 () Bool)

(declare-fun res!2250741 () Bool)

(declare-fun e!3297371 () Bool)

(assert (=> b!5305749 (=> res!2250741 e!3297371)))

(assert (=> b!5305749 (= res!2250741 e!3297374)))

(declare-fun res!2250742 () Bool)

(assert (=> b!5305749 (=> (not res!2250742) (not e!3297374))))

(assert (=> b!5305749 (= res!2250742 lt!2168121)))

(declare-fun d!1705379 () Bool)

(assert (=> d!1705379 e!3297370))

(declare-fun c!921249 () Bool)

(assert (=> d!1705379 (= c!921249 (is-EmptyExpr!14954 r!7292))))

(assert (=> d!1705379 (= lt!2168121 e!3297376)))

(declare-fun c!921251 () Bool)

(assert (=> d!1705379 (= c!921251 (isEmpty!33001 s!2326))))

(assert (=> d!1705379 (validRegex!6690 r!7292)))

(assert (=> d!1705379 (= (matchR!7139 r!7292 s!2326) lt!2168121)))

(declare-fun b!5305750 () Bool)

(declare-fun res!2250737 () Bool)

(assert (=> b!5305750 (=> res!2250737 e!3297372)))

(assert (=> b!5305750 (= res!2250737 (not (isEmpty!33001 (tail!10469 s!2326))))))

(declare-fun b!5305751 () Bool)

(declare-fun res!2250735 () Bool)

(assert (=> b!5305751 (=> res!2250735 e!3297371)))

(assert (=> b!5305751 (= res!2250735 (not (is-ElementMatch!14954 r!7292)))))

(declare-fun e!3297375 () Bool)

(assert (=> b!5305751 (= e!3297375 e!3297371)))

(declare-fun b!5305752 () Bool)

(assert (=> b!5305752 (= e!3297370 e!3297375)))

(declare-fun c!921250 () Bool)

(assert (=> b!5305752 (= c!921250 (is-EmptyLang!14954 r!7292))))

(declare-fun b!5305753 () Bool)

(assert (=> b!5305753 (= e!3297375 (not lt!2168121))))

(declare-fun b!5305754 () Bool)

(assert (=> b!5305754 (= e!3297372 (not (= (head!11372 s!2326) (c!921158 r!7292))))))

(declare-fun b!5305755 () Bool)

(assert (=> b!5305755 (= e!3297374 (= (head!11372 s!2326) (c!921158 r!7292)))))

(declare-fun b!5305756 () Bool)

(assert (=> b!5305756 (= e!3297371 e!3297373)))

(declare-fun res!2250736 () Bool)

(assert (=> b!5305756 (=> (not res!2250736) (not e!3297373))))

(assert (=> b!5305756 (= res!2250736 (not lt!2168121))))

(declare-fun b!5305757 () Bool)

(declare-fun res!2250739 () Bool)

(assert (=> b!5305757 (=> (not res!2250739) (not e!3297374))))

(assert (=> b!5305757 (= res!2250739 (isEmpty!33001 (tail!10469 s!2326)))))

(declare-fun b!5305758 () Bool)

(assert (=> b!5305758 (= e!3297376 (matchR!7139 (derivativeStep!4148 r!7292 (head!11372 s!2326)) (tail!10469 s!2326)))))

(assert (= (and d!1705379 c!921251) b!5305748))

(assert (= (and d!1705379 (not c!921251)) b!5305758))

(assert (= (and d!1705379 c!921249) b!5305746))

(assert (= (and d!1705379 (not c!921249)) b!5305752))

(assert (= (and b!5305752 c!921250) b!5305753))

(assert (= (and b!5305752 (not c!921250)) b!5305751))

(assert (= (and b!5305751 (not res!2250735)) b!5305749))

(assert (= (and b!5305749 res!2250742) b!5305747))

(assert (= (and b!5305747 res!2250738) b!5305757))

(assert (= (and b!5305757 res!2250739) b!5305755))

(assert (= (and b!5305749 (not res!2250741)) b!5305756))

(assert (= (and b!5305756 res!2250736) b!5305745))

(assert (= (and b!5305745 (not res!2250740)) b!5305750))

(assert (= (and b!5305750 (not res!2250737)) b!5305754))

(assert (= (or b!5305746 b!5305745 b!5305747) bm!378237))

(assert (=> b!5305750 m!6342924))

(assert (=> b!5305750 m!6342924))

(assert (=> b!5305750 m!6342926))

(assert (=> b!5305758 m!6342928))

(assert (=> b!5305758 m!6342928))

(declare-fun m!6343070 () Bool)

(assert (=> b!5305758 m!6343070))

(assert (=> b!5305758 m!6342924))

(assert (=> b!5305758 m!6343070))

(assert (=> b!5305758 m!6342924))

(declare-fun m!6343072 () Bool)

(assert (=> b!5305758 m!6343072))

(assert (=> b!5305755 m!6342928))

(assert (=> bm!378237 m!6342934))

(assert (=> d!1705379 m!6342934))

(assert (=> d!1705379 m!6342670))

(assert (=> b!5305754 m!6342928))

(assert (=> b!5305757 m!6342924))

(assert (=> b!5305757 m!6342924))

(assert (=> b!5305757 m!6342926))

(declare-fun m!6343074 () Bool)

(assert (=> b!5305748 m!6343074))

(assert (=> b!5305324 d!1705379))

(declare-fun d!1705381 () Bool)

(assert (=> d!1705381 (= (matchR!7139 r!7292 s!2326) (matchRSpec!2057 r!7292 s!2326))))

(declare-fun lt!2168124 () Unit!153334)

(declare-fun choose!39667 (Regex!14954 List!61161) Unit!153334)

(assert (=> d!1705381 (= lt!2168124 (choose!39667 r!7292 s!2326))))

(assert (=> d!1705381 (validRegex!6690 r!7292)))

(assert (=> d!1705381 (= (mainMatchTheorem!2057 r!7292 s!2326) lt!2168124)))

(declare-fun bs!1230240 () Bool)

(assert (= bs!1230240 d!1705381))

(assert (=> bs!1230240 m!6342682))

(assert (=> bs!1230240 m!6342680))

(declare-fun m!6343076 () Bool)

(assert (=> bs!1230240 m!6343076))

(assert (=> bs!1230240 m!6342670))

(assert (=> b!5305324 d!1705381))

(declare-fun b!5305777 () Bool)

(declare-fun e!3297392 () Bool)

(declare-fun call!378250 () Bool)

(assert (=> b!5305777 (= e!3297392 call!378250)))

(declare-fun c!921257 () Bool)

(declare-fun c!921256 () Bool)

(declare-fun bm!378244 () Bool)

(declare-fun call!378251 () Bool)

(assert (=> bm!378244 (= call!378251 (validRegex!6690 (ite c!921257 (reg!15283 r!7292) (ite c!921256 (regOne!30421 r!7292) (regOne!30420 r!7292)))))))

(declare-fun bm!378245 () Bool)

(assert (=> bm!378245 (= call!378250 (validRegex!6690 (ite c!921256 (regTwo!30421 r!7292) (regTwo!30420 r!7292))))))

(declare-fun bm!378246 () Bool)

(declare-fun call!378249 () Bool)

(assert (=> bm!378246 (= call!378249 call!378251)))

(declare-fun b!5305778 () Bool)

(declare-fun res!2250755 () Bool)

(assert (=> b!5305778 (=> (not res!2250755) (not e!3297392))))

(assert (=> b!5305778 (= res!2250755 call!378249)))

(declare-fun e!3297397 () Bool)

(assert (=> b!5305778 (= e!3297397 e!3297392)))

(declare-fun b!5305779 () Bool)

(declare-fun e!3297393 () Bool)

(assert (=> b!5305779 (= e!3297393 e!3297397)))

(assert (=> b!5305779 (= c!921256 (is-Union!14954 r!7292))))

(declare-fun d!1705383 () Bool)

(declare-fun res!2250754 () Bool)

(declare-fun e!3297396 () Bool)

(assert (=> d!1705383 (=> res!2250754 e!3297396)))

(assert (=> d!1705383 (= res!2250754 (is-ElementMatch!14954 r!7292))))

(assert (=> d!1705383 (= (validRegex!6690 r!7292) e!3297396)))

(declare-fun b!5305780 () Bool)

(declare-fun e!3297395 () Bool)

(declare-fun e!3297394 () Bool)

(assert (=> b!5305780 (= e!3297395 e!3297394)))

(declare-fun res!2250756 () Bool)

(assert (=> b!5305780 (=> (not res!2250756) (not e!3297394))))

(assert (=> b!5305780 (= res!2250756 call!378249)))

(declare-fun b!5305781 () Bool)

(assert (=> b!5305781 (= e!3297396 e!3297393)))

(assert (=> b!5305781 (= c!921257 (is-Star!14954 r!7292))))

(declare-fun b!5305782 () Bool)

(declare-fun e!3297391 () Bool)

(assert (=> b!5305782 (= e!3297393 e!3297391)))

(declare-fun res!2250753 () Bool)

(assert (=> b!5305782 (= res!2250753 (not (nullable!5123 (reg!15283 r!7292))))))

(assert (=> b!5305782 (=> (not res!2250753) (not e!3297391))))

(declare-fun b!5305783 () Bool)

(assert (=> b!5305783 (= e!3297391 call!378251)))

(declare-fun b!5305784 () Bool)

(assert (=> b!5305784 (= e!3297394 call!378250)))

(declare-fun b!5305785 () Bool)

(declare-fun res!2250757 () Bool)

(assert (=> b!5305785 (=> res!2250757 e!3297395)))

(assert (=> b!5305785 (= res!2250757 (not (is-Concat!23799 r!7292)))))

(assert (=> b!5305785 (= e!3297397 e!3297395)))

(assert (= (and d!1705383 (not res!2250754)) b!5305781))

(assert (= (and b!5305781 c!921257) b!5305782))

(assert (= (and b!5305781 (not c!921257)) b!5305779))

(assert (= (and b!5305782 res!2250753) b!5305783))

(assert (= (and b!5305779 c!921256) b!5305778))

(assert (= (and b!5305779 (not c!921256)) b!5305785))

(assert (= (and b!5305778 res!2250755) b!5305777))

(assert (= (and b!5305785 (not res!2250757)) b!5305780))

(assert (= (and b!5305780 res!2250756) b!5305784))

(assert (= (or b!5305777 b!5305784) bm!378245))

(assert (= (or b!5305778 b!5305780) bm!378246))

(assert (= (or b!5305783 bm!378246) bm!378244))

(declare-fun m!6343078 () Bool)

(assert (=> bm!378244 m!6343078))

(declare-fun m!6343080 () Bool)

(assert (=> bm!378245 m!6343080))

(declare-fun m!6343082 () Bool)

(assert (=> b!5305782 m!6343082))

(assert (=> start!559544 d!1705383))

(assert (=> b!5305345 d!1705363))

(declare-fun d!1705385 () Bool)

(assert (=> d!1705385 (= (flatMap!681 lt!2167908 lambda!269834) (choose!39664 lt!2167908 lambda!269834))))

(declare-fun bs!1230241 () Bool)

(assert (= bs!1230241 d!1705385))

(declare-fun m!6343084 () Bool)

(assert (=> bs!1230241 m!6343084))

(assert (=> b!5305345 d!1705385))

(declare-fun d!1705387 () Bool)

(assert (=> d!1705387 (= (flatMap!681 lt!2167908 lambda!269834) (dynLambda!24126 lambda!269834 lt!2167944))))

(declare-fun lt!2168125 () Unit!153334)

(assert (=> d!1705387 (= lt!2168125 (choose!39665 lt!2167908 lt!2167944 lambda!269834))))

(assert (=> d!1705387 (= lt!2167908 (set.insert lt!2167944 (as set.empty (Set Context!8676))))))

(assert (=> d!1705387 (= (lemmaFlatMapOnSingletonSet!213 lt!2167908 lt!2167944 lambda!269834) lt!2168125)))

(declare-fun b_lambda!204321 () Bool)

(assert (=> (not b_lambda!204321) (not d!1705387)))

(declare-fun bs!1230242 () Bool)

(assert (= bs!1230242 d!1705387))

(assert (=> bs!1230242 m!6342696))

(declare-fun m!6343086 () Bool)

(assert (=> bs!1230242 m!6343086))

(declare-fun m!6343088 () Bool)

(assert (=> bs!1230242 m!6343088))

(assert (=> bs!1230242 m!6342724))

(assert (=> b!5305345 d!1705387))

(declare-fun d!1705389 () Bool)

(declare-fun e!3297398 () Bool)

(assert (=> d!1705389 (= (matchZipper!1198 (set.union lt!2167919 lt!2167923) (t!374366 s!2326)) e!3297398)))

(declare-fun res!2250758 () Bool)

(assert (=> d!1705389 (=> res!2250758 e!3297398)))

(assert (=> d!1705389 (= res!2250758 (matchZipper!1198 lt!2167919 (t!374366 s!2326)))))

(declare-fun lt!2168126 () Unit!153334)

(assert (=> d!1705389 (= lt!2168126 (choose!39663 lt!2167919 lt!2167923 (t!374366 s!2326)))))

(assert (=> d!1705389 (= (lemmaZipperConcatMatchesSameAsBothZippers!191 lt!2167919 lt!2167923 (t!374366 s!2326)) lt!2168126)))

(declare-fun b!5305786 () Bool)

(assert (=> b!5305786 (= e!3297398 (matchZipper!1198 lt!2167923 (t!374366 s!2326)))))

(assert (= (and d!1705389 (not res!2250758)) b!5305786))

(declare-fun m!6343090 () Bool)

(assert (=> d!1705389 m!6343090))

(assert (=> d!1705389 m!6342584))

(declare-fun m!6343092 () Bool)

(assert (=> d!1705389 m!6343092))

(assert (=> b!5305786 m!6342668))

(assert (=> b!5305345 d!1705389))

(declare-fun d!1705391 () Bool)

(declare-fun c!921258 () Bool)

(assert (=> d!1705391 (= c!921258 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297399 () Bool)

(assert (=> d!1705391 (= (matchZipper!1198 lt!2167911 (t!374366 s!2326)) e!3297399)))

(declare-fun b!5305787 () Bool)

(assert (=> b!5305787 (= e!3297399 (nullableZipper!1327 lt!2167911))))

(declare-fun b!5305788 () Bool)

(assert (=> b!5305788 (= e!3297399 (matchZipper!1198 (derivationStepZipper!1197 lt!2167911 (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705391 c!921258) b!5305787))

(assert (= (and d!1705391 (not c!921258)) b!5305788))

(assert (=> d!1705391 m!6342912))

(declare-fun m!6343094 () Bool)

(assert (=> b!5305787 m!6343094))

(assert (=> b!5305788 m!6342916))

(assert (=> b!5305788 m!6342916))

(declare-fun m!6343096 () Bool)

(assert (=> b!5305788 m!6343096))

(assert (=> b!5305788 m!6342920))

(assert (=> b!5305788 m!6343096))

(assert (=> b!5305788 m!6342920))

(declare-fun m!6343098 () Bool)

(assert (=> b!5305788 m!6343098))

(assert (=> b!5305345 d!1705391))

(declare-fun d!1705393 () Bool)

(declare-fun c!921259 () Bool)

(assert (=> d!1705393 (= c!921259 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297400 () Bool)

(assert (=> d!1705393 (= (matchZipper!1198 lt!2167947 (t!374366 s!2326)) e!3297400)))

(declare-fun b!5305789 () Bool)

(assert (=> b!5305789 (= e!3297400 (nullableZipper!1327 lt!2167947))))

(declare-fun b!5305790 () Bool)

(assert (=> b!5305790 (= e!3297400 (matchZipper!1198 (derivationStepZipper!1197 lt!2167947 (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705393 c!921259) b!5305789))

(assert (= (and d!1705393 (not c!921259)) b!5305790))

(assert (=> d!1705393 m!6342912))

(declare-fun m!6343100 () Bool)

(assert (=> b!5305789 m!6343100))

(assert (=> b!5305790 m!6342916))

(assert (=> b!5305790 m!6342916))

(declare-fun m!6343102 () Bool)

(assert (=> b!5305790 m!6343102))

(assert (=> b!5305790 m!6342920))

(assert (=> b!5305790 m!6343102))

(assert (=> b!5305790 m!6342920))

(declare-fun m!6343104 () Bool)

(assert (=> b!5305790 m!6343104))

(assert (=> b!5305345 d!1705393))

(declare-fun bs!1230243 () Bool)

(declare-fun d!1705395 () Bool)

(assert (= bs!1230243 (and d!1705395 d!1705375)))

(declare-fun lambda!269884 () Int)

(assert (=> bs!1230243 (= lambda!269884 lambda!269875)))

(declare-fun b!5305811 () Bool)

(declare-fun e!3297413 () Bool)

(declare-fun e!3297416 () Bool)

(assert (=> b!5305811 (= e!3297413 e!3297416)))

(declare-fun c!921271 () Bool)

(assert (=> b!5305811 (= c!921271 (isEmpty!32997 (tail!10470 (unfocusZipperList!396 zl!343))))))

(declare-fun e!3297418 () Bool)

(assert (=> d!1705395 e!3297418))

(declare-fun res!2250763 () Bool)

(assert (=> d!1705395 (=> (not res!2250763) (not e!3297418))))

(declare-fun lt!2168129 () Regex!14954)

(assert (=> d!1705395 (= res!2250763 (validRegex!6690 lt!2168129))))

(declare-fun e!3297417 () Regex!14954)

(assert (=> d!1705395 (= lt!2168129 e!3297417)))

(declare-fun c!921269 () Bool)

(declare-fun e!3297415 () Bool)

(assert (=> d!1705395 (= c!921269 e!3297415)))

(declare-fun res!2250764 () Bool)

(assert (=> d!1705395 (=> (not res!2250764) (not e!3297415))))

(assert (=> d!1705395 (= res!2250764 (is-Cons!61038 (unfocusZipperList!396 zl!343)))))

(assert (=> d!1705395 (forall!14368 (unfocusZipperList!396 zl!343) lambda!269884)))

(assert (=> d!1705395 (= (generalisedUnion!883 (unfocusZipperList!396 zl!343)) lt!2168129)))

(declare-fun b!5305812 () Bool)

(assert (=> b!5305812 (= e!3297416 (= lt!2168129 (head!11373 (unfocusZipperList!396 zl!343))))))

(declare-fun b!5305813 () Bool)

(assert (=> b!5305813 (= e!3297415 (isEmpty!32997 (t!374367 (unfocusZipperList!396 zl!343))))))

(declare-fun b!5305814 () Bool)

(declare-fun isEmptyLang!870 (Regex!14954) Bool)

(assert (=> b!5305814 (= e!3297413 (isEmptyLang!870 lt!2168129))))

(declare-fun b!5305815 () Bool)

(declare-fun e!3297414 () Regex!14954)

(assert (=> b!5305815 (= e!3297417 e!3297414)))

(declare-fun c!921268 () Bool)

(assert (=> b!5305815 (= c!921268 (is-Cons!61038 (unfocusZipperList!396 zl!343)))))

(declare-fun b!5305816 () Bool)

(assert (=> b!5305816 (= e!3297417 (h!67486 (unfocusZipperList!396 zl!343)))))

(declare-fun b!5305817 () Bool)

(declare-fun isUnion!302 (Regex!14954) Bool)

(assert (=> b!5305817 (= e!3297416 (isUnion!302 lt!2168129))))

(declare-fun b!5305818 () Bool)

(assert (=> b!5305818 (= e!3297414 (Union!14954 (h!67486 (unfocusZipperList!396 zl!343)) (generalisedUnion!883 (t!374367 (unfocusZipperList!396 zl!343)))))))

(declare-fun b!5305819 () Bool)

(assert (=> b!5305819 (= e!3297418 e!3297413)))

(declare-fun c!921270 () Bool)

(assert (=> b!5305819 (= c!921270 (isEmpty!32997 (unfocusZipperList!396 zl!343)))))

(declare-fun b!5305820 () Bool)

(assert (=> b!5305820 (= e!3297414 EmptyLang!14954)))

(assert (= (and d!1705395 res!2250764) b!5305813))

(assert (= (and d!1705395 c!921269) b!5305816))

(assert (= (and d!1705395 (not c!921269)) b!5305815))

(assert (= (and b!5305815 c!921268) b!5305818))

(assert (= (and b!5305815 (not c!921268)) b!5305820))

(assert (= (and d!1705395 res!2250763) b!5305819))

(assert (= (and b!5305819 c!921270) b!5305814))

(assert (= (and b!5305819 (not c!921270)) b!5305811))

(assert (= (and b!5305811 c!921271) b!5305812))

(assert (= (and b!5305811 (not c!921271)) b!5305817))

(assert (=> b!5305811 m!6342712))

(declare-fun m!6343106 () Bool)

(assert (=> b!5305811 m!6343106))

(assert (=> b!5305811 m!6343106))

(declare-fun m!6343108 () Bool)

(assert (=> b!5305811 m!6343108))

(declare-fun m!6343110 () Bool)

(assert (=> b!5305817 m!6343110))

(declare-fun m!6343112 () Bool)

(assert (=> d!1705395 m!6343112))

(assert (=> d!1705395 m!6342712))

(declare-fun m!6343114 () Bool)

(assert (=> d!1705395 m!6343114))

(declare-fun m!6343116 () Bool)

(assert (=> b!5305814 m!6343116))

(assert (=> b!5305819 m!6342712))

(declare-fun m!6343118 () Bool)

(assert (=> b!5305819 m!6343118))

(assert (=> b!5305812 m!6342712))

(declare-fun m!6343120 () Bool)

(assert (=> b!5305812 m!6343120))

(declare-fun m!6343122 () Bool)

(assert (=> b!5305818 m!6343122))

(declare-fun m!6343124 () Bool)

(assert (=> b!5305813 m!6343124))

(assert (=> b!5305328 d!1705395))

(declare-fun bs!1230244 () Bool)

(declare-fun d!1705397 () Bool)

(assert (= bs!1230244 (and d!1705397 d!1705375)))

(declare-fun lambda!269887 () Int)

(assert (=> bs!1230244 (= lambda!269887 lambda!269875)))

(declare-fun bs!1230245 () Bool)

(assert (= bs!1230245 (and d!1705397 d!1705395)))

(assert (=> bs!1230245 (= lambda!269887 lambda!269884)))

(declare-fun lt!2168132 () List!61162)

(assert (=> d!1705397 (forall!14368 lt!2168132 lambda!269887)))

(declare-fun e!3297421 () List!61162)

(assert (=> d!1705397 (= lt!2168132 e!3297421)))

(declare-fun c!921274 () Bool)

(assert (=> d!1705397 (= c!921274 (is-Cons!61039 zl!343))))

(assert (=> d!1705397 (= (unfocusZipperList!396 zl!343) lt!2168132)))

(declare-fun b!5305825 () Bool)

(assert (=> b!5305825 (= e!3297421 (Cons!61038 (generalisedConcat!623 (exprs!4838 (h!67487 zl!343))) (unfocusZipperList!396 (t!374368 zl!343))))))

(declare-fun b!5305826 () Bool)

(assert (=> b!5305826 (= e!3297421 Nil!61038)))

(assert (= (and d!1705397 c!921274) b!5305825))

(assert (= (and d!1705397 (not c!921274)) b!5305826))

(declare-fun m!6343126 () Bool)

(assert (=> d!1705397 m!6343126))

(assert (=> b!5305825 m!6342578))

(declare-fun m!6343128 () Bool)

(assert (=> b!5305825 m!6343128))

(assert (=> b!5305328 d!1705397))

(declare-fun bs!1230246 () Bool)

(declare-fun d!1705399 () Bool)

(assert (= bs!1230246 (and d!1705399 d!1705375)))

(declare-fun lambda!269890 () Int)

(assert (=> bs!1230246 (= lambda!269890 lambda!269875)))

(declare-fun bs!1230247 () Bool)

(assert (= bs!1230247 (and d!1705399 d!1705395)))

(assert (=> bs!1230247 (= lambda!269890 lambda!269884)))

(declare-fun bs!1230248 () Bool)

(assert (= bs!1230248 (and d!1705399 d!1705397)))

(assert (=> bs!1230248 (= lambda!269890 lambda!269887)))

(assert (=> d!1705399 (= (inv!80633 (h!67487 zl!343)) (forall!14368 (exprs!4838 (h!67487 zl!343)) lambda!269890))))

(declare-fun bs!1230249 () Bool)

(assert (= bs!1230249 d!1705399))

(declare-fun m!6343130 () Bool)

(assert (=> bs!1230249 m!6343130))

(assert (=> b!5305350 d!1705399))

(declare-fun d!1705401 () Bool)

(declare-fun c!921276 () Bool)

(assert (=> d!1705401 (= c!921276 (and (is-ElementMatch!14954 (regTwo!30420 (regOne!30420 r!7292))) (= (c!921158 (regTwo!30420 (regOne!30420 r!7292))) (h!67485 s!2326))))))

(declare-fun e!3297424 () (Set Context!8676))

(assert (=> d!1705401 (= (derivationStepZipperDown!402 (regTwo!30420 (regOne!30420 r!7292)) lt!2167931 (h!67485 s!2326)) e!3297424)))

(declare-fun b!5305827 () Bool)

(declare-fun e!3297422 () (Set Context!8676))

(declare-fun call!378255 () (Set Context!8676))

(declare-fun call!378254 () (Set Context!8676))

(assert (=> b!5305827 (= e!3297422 (set.union call!378255 call!378254))))

(declare-fun bm!378247 () Bool)

(declare-fun call!378257 () List!61162)

(declare-fun c!921278 () Bool)

(assert (=> bm!378247 (= call!378255 (derivationStepZipperDown!402 (ite c!921278 (regTwo!30421 (regTwo!30420 (regOne!30420 r!7292))) (regOne!30420 (regTwo!30420 (regOne!30420 r!7292)))) (ite c!921278 lt!2167931 (Context!8677 call!378257)) (h!67485 s!2326)))))

(declare-fun b!5305828 () Bool)

(assert (=> b!5305828 (= e!3297424 (set.insert lt!2167931 (as set.empty (Set Context!8676))))))

(declare-fun bm!378248 () Bool)

(declare-fun call!378252 () List!61162)

(assert (=> bm!378248 (= call!378252 call!378257)))

(declare-fun b!5305829 () Bool)

(declare-fun e!3297423 () (Set Context!8676))

(assert (=> b!5305829 (= e!3297424 e!3297423)))

(assert (=> b!5305829 (= c!921278 (is-Union!14954 (regTwo!30420 (regOne!30420 r!7292))))))

(declare-fun call!378253 () (Set Context!8676))

(declare-fun c!921279 () Bool)

(declare-fun bm!378249 () Bool)

(declare-fun c!921275 () Bool)

(assert (=> bm!378249 (= call!378253 (derivationStepZipperDown!402 (ite c!921278 (regOne!30421 (regTwo!30420 (regOne!30420 r!7292))) (ite c!921279 (regTwo!30420 (regTwo!30420 (regOne!30420 r!7292))) (ite c!921275 (regOne!30420 (regTwo!30420 (regOne!30420 r!7292))) (reg!15283 (regTwo!30420 (regOne!30420 r!7292)))))) (ite (or c!921278 c!921279) lt!2167931 (Context!8677 call!378252)) (h!67485 s!2326)))))

(declare-fun bm!378250 () Bool)

(declare-fun call!378256 () (Set Context!8676))

(assert (=> bm!378250 (= call!378256 call!378254)))

(declare-fun b!5305830 () Bool)

(declare-fun e!3297426 () (Set Context!8676))

(assert (=> b!5305830 (= e!3297426 (as set.empty (Set Context!8676)))))

(declare-fun b!5305831 () Bool)

(assert (=> b!5305831 (= e!3297423 (set.union call!378253 call!378255))))

(declare-fun bm!378251 () Bool)

(assert (=> bm!378251 (= call!378254 call!378253)))

(declare-fun b!5305832 () Bool)

(declare-fun c!921277 () Bool)

(assert (=> b!5305832 (= c!921277 (is-Star!14954 (regTwo!30420 (regOne!30420 r!7292))))))

(declare-fun e!3297427 () (Set Context!8676))

(assert (=> b!5305832 (= e!3297427 e!3297426)))

(declare-fun b!5305833 () Bool)

(assert (=> b!5305833 (= e!3297426 call!378256)))

(declare-fun b!5305834 () Bool)

(declare-fun e!3297425 () Bool)

(assert (=> b!5305834 (= e!3297425 (nullable!5123 (regOne!30420 (regTwo!30420 (regOne!30420 r!7292)))))))

(declare-fun b!5305835 () Bool)

(assert (=> b!5305835 (= e!3297422 e!3297427)))

(assert (=> b!5305835 (= c!921275 (is-Concat!23799 (regTwo!30420 (regOne!30420 r!7292))))))

(declare-fun b!5305836 () Bool)

(assert (=> b!5305836 (= c!921279 e!3297425)))

(declare-fun res!2250765 () Bool)

(assert (=> b!5305836 (=> (not res!2250765) (not e!3297425))))

(assert (=> b!5305836 (= res!2250765 (is-Concat!23799 (regTwo!30420 (regOne!30420 r!7292))))))

(assert (=> b!5305836 (= e!3297423 e!3297422)))

(declare-fun bm!378252 () Bool)

(assert (=> bm!378252 (= call!378257 ($colon$colon!1377 (exprs!4838 lt!2167931) (ite (or c!921279 c!921275) (regTwo!30420 (regTwo!30420 (regOne!30420 r!7292))) (regTwo!30420 (regOne!30420 r!7292)))))))

(declare-fun b!5305837 () Bool)

(assert (=> b!5305837 (= e!3297427 call!378256)))

(assert (= (and d!1705401 c!921276) b!5305828))

(assert (= (and d!1705401 (not c!921276)) b!5305829))

(assert (= (and b!5305829 c!921278) b!5305831))

(assert (= (and b!5305829 (not c!921278)) b!5305836))

(assert (= (and b!5305836 res!2250765) b!5305834))

(assert (= (and b!5305836 c!921279) b!5305827))

(assert (= (and b!5305836 (not c!921279)) b!5305835))

(assert (= (and b!5305835 c!921275) b!5305837))

(assert (= (and b!5305835 (not c!921275)) b!5305832))

(assert (= (and b!5305832 c!921277) b!5305833))

(assert (= (and b!5305832 (not c!921277)) b!5305830))

(assert (= (or b!5305837 b!5305833) bm!378248))

(assert (= (or b!5305837 b!5305833) bm!378250))

(assert (= (or b!5305827 bm!378248) bm!378252))

(assert (= (or b!5305827 bm!378250) bm!378251))

(assert (= (or b!5305831 b!5305827) bm!378247))

(assert (= (or b!5305831 bm!378251) bm!378249))

(declare-fun m!6343132 () Bool)

(assert (=> bm!378247 m!6343132))

(declare-fun m!6343134 () Bool)

(assert (=> b!5305834 m!6343134))

(assert (=> b!5305828 m!6343000))

(declare-fun m!6343136 () Bool)

(assert (=> bm!378252 m!6343136))

(declare-fun m!6343138 () Bool)

(assert (=> bm!378249 m!6343138))

(assert (=> b!5305348 d!1705401))

(declare-fun d!1705403 () Bool)

(declare-fun c!921281 () Bool)

(assert (=> d!1705403 (= c!921281 (and (is-ElementMatch!14954 (regOne!30420 (regOne!30420 r!7292))) (= (c!921158 (regOne!30420 (regOne!30420 r!7292))) (h!67485 s!2326))))))

(declare-fun e!3297430 () (Set Context!8676))

(assert (=> d!1705403 (= (derivationStepZipperDown!402 (regOne!30420 (regOne!30420 r!7292)) lt!2167944 (h!67485 s!2326)) e!3297430)))

(declare-fun b!5305838 () Bool)

(declare-fun e!3297428 () (Set Context!8676))

(declare-fun call!378261 () (Set Context!8676))

(declare-fun call!378260 () (Set Context!8676))

(assert (=> b!5305838 (= e!3297428 (set.union call!378261 call!378260))))

(declare-fun call!378263 () List!61162)

(declare-fun c!921283 () Bool)

(declare-fun bm!378253 () Bool)

(assert (=> bm!378253 (= call!378261 (derivationStepZipperDown!402 (ite c!921283 (regTwo!30421 (regOne!30420 (regOne!30420 r!7292))) (regOne!30420 (regOne!30420 (regOne!30420 r!7292)))) (ite c!921283 lt!2167944 (Context!8677 call!378263)) (h!67485 s!2326)))))

(declare-fun b!5305839 () Bool)

(assert (=> b!5305839 (= e!3297430 (set.insert lt!2167944 (as set.empty (Set Context!8676))))))

(declare-fun bm!378254 () Bool)

(declare-fun call!378258 () List!61162)

(assert (=> bm!378254 (= call!378258 call!378263)))

(declare-fun b!5305840 () Bool)

(declare-fun e!3297429 () (Set Context!8676))

(assert (=> b!5305840 (= e!3297430 e!3297429)))

(assert (=> b!5305840 (= c!921283 (is-Union!14954 (regOne!30420 (regOne!30420 r!7292))))))

(declare-fun c!921284 () Bool)

(declare-fun c!921280 () Bool)

(declare-fun call!378259 () (Set Context!8676))

(declare-fun bm!378255 () Bool)

(assert (=> bm!378255 (= call!378259 (derivationStepZipperDown!402 (ite c!921283 (regOne!30421 (regOne!30420 (regOne!30420 r!7292))) (ite c!921284 (regTwo!30420 (regOne!30420 (regOne!30420 r!7292))) (ite c!921280 (regOne!30420 (regOne!30420 (regOne!30420 r!7292))) (reg!15283 (regOne!30420 (regOne!30420 r!7292)))))) (ite (or c!921283 c!921284) lt!2167944 (Context!8677 call!378258)) (h!67485 s!2326)))))

(declare-fun bm!378256 () Bool)

(declare-fun call!378262 () (Set Context!8676))

(assert (=> bm!378256 (= call!378262 call!378260)))

(declare-fun b!5305841 () Bool)

(declare-fun e!3297432 () (Set Context!8676))

(assert (=> b!5305841 (= e!3297432 (as set.empty (Set Context!8676)))))

(declare-fun b!5305842 () Bool)

(assert (=> b!5305842 (= e!3297429 (set.union call!378259 call!378261))))

(declare-fun bm!378257 () Bool)

(assert (=> bm!378257 (= call!378260 call!378259)))

(declare-fun b!5305843 () Bool)

(declare-fun c!921282 () Bool)

(assert (=> b!5305843 (= c!921282 (is-Star!14954 (regOne!30420 (regOne!30420 r!7292))))))

(declare-fun e!3297433 () (Set Context!8676))

(assert (=> b!5305843 (= e!3297433 e!3297432)))

(declare-fun b!5305844 () Bool)

(assert (=> b!5305844 (= e!3297432 call!378262)))

(declare-fun b!5305845 () Bool)

(declare-fun e!3297431 () Bool)

(assert (=> b!5305845 (= e!3297431 (nullable!5123 (regOne!30420 (regOne!30420 (regOne!30420 r!7292)))))))

(declare-fun b!5305846 () Bool)

(assert (=> b!5305846 (= e!3297428 e!3297433)))

(assert (=> b!5305846 (= c!921280 (is-Concat!23799 (regOne!30420 (regOne!30420 r!7292))))))

(declare-fun b!5305847 () Bool)

(assert (=> b!5305847 (= c!921284 e!3297431)))

(declare-fun res!2250766 () Bool)

(assert (=> b!5305847 (=> (not res!2250766) (not e!3297431))))

(assert (=> b!5305847 (= res!2250766 (is-Concat!23799 (regOne!30420 (regOne!30420 r!7292))))))

(assert (=> b!5305847 (= e!3297429 e!3297428)))

(declare-fun bm!378258 () Bool)

(assert (=> bm!378258 (= call!378263 ($colon$colon!1377 (exprs!4838 lt!2167944) (ite (or c!921284 c!921280) (regTwo!30420 (regOne!30420 (regOne!30420 r!7292))) (regOne!30420 (regOne!30420 r!7292)))))))

(declare-fun b!5305848 () Bool)

(assert (=> b!5305848 (= e!3297433 call!378262)))

(assert (= (and d!1705403 c!921281) b!5305839))

(assert (= (and d!1705403 (not c!921281)) b!5305840))

(assert (= (and b!5305840 c!921283) b!5305842))

(assert (= (and b!5305840 (not c!921283)) b!5305847))

(assert (= (and b!5305847 res!2250766) b!5305845))

(assert (= (and b!5305847 c!921284) b!5305838))

(assert (= (and b!5305847 (not c!921284)) b!5305846))

(assert (= (and b!5305846 c!921280) b!5305848))

(assert (= (and b!5305846 (not c!921280)) b!5305843))

(assert (= (and b!5305843 c!921282) b!5305844))

(assert (= (and b!5305843 (not c!921282)) b!5305841))

(assert (= (or b!5305848 b!5305844) bm!378254))

(assert (= (or b!5305848 b!5305844) bm!378256))

(assert (= (or b!5305838 bm!378254) bm!378258))

(assert (= (or b!5305838 bm!378256) bm!378257))

(assert (= (or b!5305842 b!5305838) bm!378253))

(assert (= (or b!5305842 bm!378257) bm!378255))

(declare-fun m!6343140 () Bool)

(assert (=> bm!378253 m!6343140))

(declare-fun m!6343142 () Bool)

(assert (=> b!5305845 m!6343142))

(assert (=> b!5305839 m!6342724))

(declare-fun m!6343144 () Bool)

(assert (=> bm!378258 m!6343144))

(declare-fun m!6343146 () Bool)

(assert (=> bm!378255 m!6343146))

(assert (=> b!5305348 d!1705403))

(declare-fun d!1705405 () Bool)

(assert (=> d!1705405 (= (nullable!5123 (regOne!30420 (regOne!30420 r!7292))) (nullableFct!1479 (regOne!30420 (regOne!30420 r!7292))))))

(declare-fun bs!1230250 () Bool)

(assert (= bs!1230250 d!1705405))

(declare-fun m!6343148 () Bool)

(assert (=> bs!1230250 m!6343148))

(assert (=> b!5305327 d!1705405))

(declare-fun e!3297434 () Bool)

(declare-fun d!1705407 () Bool)

(assert (=> d!1705407 (= (matchZipper!1198 (set.union lt!2167941 lt!2167933) (t!374366 s!2326)) e!3297434)))

(declare-fun res!2250767 () Bool)

(assert (=> d!1705407 (=> res!2250767 e!3297434)))

(assert (=> d!1705407 (= res!2250767 (matchZipper!1198 lt!2167941 (t!374366 s!2326)))))

(declare-fun lt!2168133 () Unit!153334)

(assert (=> d!1705407 (= lt!2168133 (choose!39663 lt!2167941 lt!2167933 (t!374366 s!2326)))))

(assert (=> d!1705407 (= (lemmaZipperConcatMatchesSameAsBothZippers!191 lt!2167941 lt!2167933 (t!374366 s!2326)) lt!2168133)))

(declare-fun b!5305849 () Bool)

(assert (=> b!5305849 (= e!3297434 (matchZipper!1198 lt!2167933 (t!374366 s!2326)))))

(assert (= (and d!1705407 (not res!2250767)) b!5305849))

(assert (=> d!1705407 m!6342590))

(assert (=> d!1705407 m!6342580))

(declare-fun m!6343150 () Bool)

(assert (=> d!1705407 m!6343150))

(assert (=> b!5305849 m!6342722))

(assert (=> b!5305333 d!1705407))

(assert (=> b!5305333 d!1705333))

(declare-fun d!1705409 () Bool)

(declare-fun c!921285 () Bool)

(assert (=> d!1705409 (= c!921285 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297435 () Bool)

(assert (=> d!1705409 (= (matchZipper!1198 (set.union lt!2167941 lt!2167933) (t!374366 s!2326)) e!3297435)))

(declare-fun b!5305850 () Bool)

(assert (=> b!5305850 (= e!3297435 (nullableZipper!1327 (set.union lt!2167941 lt!2167933)))))

(declare-fun b!5305851 () Bool)

(assert (=> b!5305851 (= e!3297435 (matchZipper!1198 (derivationStepZipper!1197 (set.union lt!2167941 lt!2167933) (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705409 c!921285) b!5305850))

(assert (= (and d!1705409 (not c!921285)) b!5305851))

(assert (=> d!1705409 m!6342912))

(declare-fun m!6343152 () Bool)

(assert (=> b!5305850 m!6343152))

(assert (=> b!5305851 m!6342916))

(assert (=> b!5305851 m!6342916))

(declare-fun m!6343154 () Bool)

(assert (=> b!5305851 m!6343154))

(assert (=> b!5305851 m!6342920))

(assert (=> b!5305851 m!6343154))

(assert (=> b!5305851 m!6342920))

(declare-fun m!6343156 () Bool)

(assert (=> b!5305851 m!6343156))

(assert (=> b!5305333 d!1705409))

(declare-fun bs!1230251 () Bool)

(declare-fun b!5305861 () Bool)

(assert (= bs!1230251 (and b!5305861 b!5305334)))

(declare-fun lambda!269891 () Int)

(assert (=> bs!1230251 (not (= lambda!269891 lambda!269836))))

(declare-fun bs!1230252 () Bool)

(assert (= bs!1230252 (and b!5305861 b!5305316)))

(assert (=> bs!1230252 (not (= lambda!269891 lambda!269832))))

(declare-fun bs!1230253 () Bool)

(assert (= bs!1230253 (and b!5305861 b!5305743)))

(assert (=> bs!1230253 (= (and (= (reg!15283 lt!2167929) (reg!15283 r!7292)) (= lt!2167929 r!7292)) (= lambda!269891 lambda!269880))))

(assert (=> bs!1230252 (not (= lambda!269891 lambda!269833))))

(assert (=> bs!1230251 (not (= lambda!269891 lambda!269838))))

(assert (=> bs!1230251 (not (= lambda!269891 lambda!269837))))

(declare-fun bs!1230254 () Bool)

(assert (= bs!1230254 (and b!5305861 b!5305738)))

(assert (=> bs!1230254 (not (= lambda!269891 lambda!269881))))

(assert (=> bs!1230251 (not (= lambda!269891 lambda!269835))))

(assert (=> b!5305861 true))

(assert (=> b!5305861 true))

(declare-fun bs!1230255 () Bool)

(declare-fun b!5305856 () Bool)

(assert (= bs!1230255 (and b!5305856 b!5305334)))

(declare-fun lambda!269892 () Int)

(assert (=> bs!1230255 (= (and (= (regOne!30420 lt!2167929) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 lt!2167929) lt!2167929)) (= lambda!269892 lambda!269836))))

(declare-fun bs!1230256 () Bool)

(assert (= bs!1230256 (and b!5305856 b!5305316)))

(assert (=> bs!1230256 (not (= lambda!269892 lambda!269832))))

(declare-fun bs!1230257 () Bool)

(assert (= bs!1230257 (and b!5305856 b!5305743)))

(assert (=> bs!1230257 (not (= lambda!269892 lambda!269880))))

(declare-fun bs!1230258 () Bool)

(assert (= bs!1230258 (and b!5305856 b!5305861)))

(assert (=> bs!1230258 (not (= lambda!269892 lambda!269891))))

(assert (=> bs!1230256 (= (and (= (regOne!30420 lt!2167929) (regOne!30420 r!7292)) (= (regTwo!30420 lt!2167929) (regTwo!30420 r!7292))) (= lambda!269892 lambda!269833))))

(assert (=> bs!1230255 (= (and (= (regOne!30420 lt!2167929) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 lt!2167929) lt!2167925)) (= lambda!269892 lambda!269838))))

(assert (=> bs!1230255 (not (= lambda!269892 lambda!269837))))

(declare-fun bs!1230259 () Bool)

(assert (= bs!1230259 (and b!5305856 b!5305738)))

(assert (=> bs!1230259 (= (and (= (regOne!30420 lt!2167929) (regOne!30420 r!7292)) (= (regTwo!30420 lt!2167929) (regTwo!30420 r!7292))) (= lambda!269892 lambda!269881))))

(assert (=> bs!1230255 (not (= lambda!269892 lambda!269835))))

(assert (=> b!5305856 true))

(assert (=> b!5305856 true))

(declare-fun call!378264 () Bool)

(declare-fun bm!378259 () Bool)

(declare-fun c!921286 () Bool)

(assert (=> bm!378259 (= call!378264 (Exists!2135 (ite c!921286 lambda!269891 lambda!269892)))))

(declare-fun d!1705411 () Bool)

(declare-fun c!921288 () Bool)

(assert (=> d!1705411 (= c!921288 (is-EmptyExpr!14954 lt!2167929))))

(declare-fun e!3297442 () Bool)

(assert (=> d!1705411 (= (matchRSpec!2057 lt!2167929 s!2326) e!3297442)))

(declare-fun b!5305852 () Bool)

(declare-fun res!2250768 () Bool)

(declare-fun e!3297441 () Bool)

(assert (=> b!5305852 (=> res!2250768 e!3297441)))

(declare-fun call!378265 () Bool)

(assert (=> b!5305852 (= res!2250768 call!378265)))

(declare-fun e!3297436 () Bool)

(assert (=> b!5305852 (= e!3297436 e!3297441)))

(declare-fun b!5305853 () Bool)

(declare-fun c!921289 () Bool)

(assert (=> b!5305853 (= c!921289 (is-Union!14954 lt!2167929))))

(declare-fun e!3297439 () Bool)

(declare-fun e!3297438 () Bool)

(assert (=> b!5305853 (= e!3297439 e!3297438)))

(declare-fun b!5305854 () Bool)

(declare-fun e!3297440 () Bool)

(assert (=> b!5305854 (= e!3297440 (matchRSpec!2057 (regTwo!30421 lt!2167929) s!2326))))

(declare-fun b!5305855 () Bool)

(assert (=> b!5305855 (= e!3297439 (= s!2326 (Cons!61037 (c!921158 lt!2167929) Nil!61037)))))

(assert (=> b!5305856 (= e!3297436 call!378264)))

(declare-fun b!5305857 () Bool)

(assert (=> b!5305857 (= e!3297438 e!3297436)))

(assert (=> b!5305857 (= c!921286 (is-Star!14954 lt!2167929))))

(declare-fun b!5305858 () Bool)

(assert (=> b!5305858 (= e!3297442 call!378265)))

(declare-fun b!5305859 () Bool)

(assert (=> b!5305859 (= e!3297438 e!3297440)))

(declare-fun res!2250769 () Bool)

(assert (=> b!5305859 (= res!2250769 (matchRSpec!2057 (regOne!30421 lt!2167929) s!2326))))

(assert (=> b!5305859 (=> res!2250769 e!3297440)))

(declare-fun b!5305860 () Bool)

(declare-fun e!3297437 () Bool)

(assert (=> b!5305860 (= e!3297442 e!3297437)))

(declare-fun res!2250770 () Bool)

(assert (=> b!5305860 (= res!2250770 (not (is-EmptyLang!14954 lt!2167929)))))

(assert (=> b!5305860 (=> (not res!2250770) (not e!3297437))))

(declare-fun bm!378260 () Bool)

(assert (=> bm!378260 (= call!378265 (isEmpty!33001 s!2326))))

(assert (=> b!5305861 (= e!3297441 call!378264)))

(declare-fun b!5305862 () Bool)

(declare-fun c!921287 () Bool)

(assert (=> b!5305862 (= c!921287 (is-ElementMatch!14954 lt!2167929))))

(assert (=> b!5305862 (= e!3297437 e!3297439)))

(assert (= (and d!1705411 c!921288) b!5305858))

(assert (= (and d!1705411 (not c!921288)) b!5305860))

(assert (= (and b!5305860 res!2250770) b!5305862))

(assert (= (and b!5305862 c!921287) b!5305855))

(assert (= (and b!5305862 (not c!921287)) b!5305853))

(assert (= (and b!5305853 c!921289) b!5305859))

(assert (= (and b!5305853 (not c!921289)) b!5305857))

(assert (= (and b!5305859 (not res!2250769)) b!5305854))

(assert (= (and b!5305857 c!921286) b!5305852))

(assert (= (and b!5305857 (not c!921286)) b!5305856))

(assert (= (and b!5305852 (not res!2250768)) b!5305861))

(assert (= (or b!5305861 b!5305856) bm!378259))

(assert (= (or b!5305858 b!5305852) bm!378260))

(declare-fun m!6343158 () Bool)

(assert (=> bm!378259 m!6343158))

(declare-fun m!6343160 () Bool)

(assert (=> b!5305854 m!6343160))

(declare-fun m!6343162 () Bool)

(assert (=> b!5305859 m!6343162))

(assert (=> bm!378260 m!6342934))

(assert (=> b!5305334 d!1705411))

(declare-fun bs!1230260 () Bool)

(declare-fun d!1705413 () Bool)

(assert (= bs!1230260 (and d!1705413 b!5305334)))

(declare-fun lambda!269895 () Int)

(assert (=> bs!1230260 (not (= lambda!269895 lambda!269836))))

(declare-fun bs!1230261 () Bool)

(assert (= bs!1230261 (and d!1705413 b!5305316)))

(assert (=> bs!1230261 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167925 (regTwo!30420 r!7292))) (= lambda!269895 lambda!269832))))

(declare-fun bs!1230262 () Bool)

(assert (= bs!1230262 (and d!1705413 b!5305856)))

(assert (=> bs!1230262 (not (= lambda!269895 lambda!269892))))

(declare-fun bs!1230263 () Bool)

(assert (= bs!1230263 (and d!1705413 b!5305743)))

(assert (=> bs!1230263 (not (= lambda!269895 lambda!269880))))

(declare-fun bs!1230264 () Bool)

(assert (= bs!1230264 (and d!1705413 b!5305861)))

(assert (=> bs!1230264 (not (= lambda!269895 lambda!269891))))

(assert (=> bs!1230261 (not (= lambda!269895 lambda!269833))))

(assert (=> bs!1230260 (not (= lambda!269895 lambda!269838))))

(assert (=> bs!1230260 (= lambda!269895 lambda!269837)))

(declare-fun bs!1230265 () Bool)

(assert (= bs!1230265 (and d!1705413 b!5305738)))

(assert (=> bs!1230265 (not (= lambda!269895 lambda!269881))))

(assert (=> bs!1230260 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 (regOne!30420 r!7292))) (= lt!2167925 lt!2167929)) (= lambda!269895 lambda!269835))))

(assert (=> d!1705413 true))

(assert (=> d!1705413 true))

(assert (=> d!1705413 true))

(assert (=> d!1705413 (= (isDefined!11768 (findConcatSeparation!1479 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 Nil!61037 s!2326 s!2326)) (Exists!2135 lambda!269895))))

(declare-fun lt!2168136 () Unit!153334)

(declare-fun choose!39668 (Regex!14954 Regex!14954 List!61161) Unit!153334)

(assert (=> d!1705413 (= lt!2168136 (choose!39668 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 s!2326))))

(assert (=> d!1705413 (validRegex!6690 (regTwo!30420 (regOne!30420 r!7292)))))

(assert (=> d!1705413 (= (lemmaFindConcatSeparationEquivalentToExists!1243 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 s!2326) lt!2168136)))

(declare-fun bs!1230266 () Bool)

(assert (= bs!1230266 d!1705413))

(assert (=> bs!1230266 m!6342620))

(assert (=> bs!1230266 m!6342628))

(declare-fun m!6343164 () Bool)

(assert (=> bs!1230266 m!6343164))

(declare-fun m!6343166 () Bool)

(assert (=> bs!1230266 m!6343166))

(assert (=> bs!1230266 m!6342620))

(declare-fun m!6343168 () Bool)

(assert (=> bs!1230266 m!6343168))

(assert (=> b!5305334 d!1705413))

(declare-fun d!1705415 () Bool)

(declare-fun choose!39669 (Int) Bool)

(assert (=> d!1705415 (= (Exists!2135 lambda!269838) (choose!39669 lambda!269838))))

(declare-fun bs!1230267 () Bool)

(assert (= bs!1230267 d!1705415))

(declare-fun m!6343170 () Bool)

(assert (=> bs!1230267 m!6343170))

(assert (=> b!5305334 d!1705415))

(declare-fun d!1705417 () Bool)

(assert (=> d!1705417 (= (matchR!7139 lt!2167917 s!2326) (matchZipper!1198 lt!2167942 s!2326))))

(declare-fun lt!2168139 () Unit!153334)

(declare-fun choose!39670 ((Set Context!8676) List!61163 Regex!14954 List!61161) Unit!153334)

(assert (=> d!1705417 (= lt!2168139 (choose!39670 lt!2167942 lt!2167937 lt!2167917 s!2326))))

(assert (=> d!1705417 (validRegex!6690 lt!2167917)))

(assert (=> d!1705417 (= (theoremZipperRegexEquiv!364 lt!2167942 lt!2167937 lt!2167917 s!2326) lt!2168139)))

(declare-fun bs!1230268 () Bool)

(assert (= bs!1230268 d!1705417))

(assert (=> bs!1230268 m!6342606))

(assert (=> bs!1230268 m!6342624))

(declare-fun m!6343172 () Bool)

(assert (=> bs!1230268 m!6343172))

(declare-fun m!6343174 () Bool)

(assert (=> bs!1230268 m!6343174))

(assert (=> b!5305334 d!1705417))

(declare-fun bs!1230269 () Bool)

(declare-fun d!1705419 () Bool)

(assert (= bs!1230269 (and d!1705419 d!1705375)))

(declare-fun lambda!269896 () Int)

(assert (=> bs!1230269 (= lambda!269896 lambda!269875)))

(declare-fun bs!1230270 () Bool)

(assert (= bs!1230270 (and d!1705419 d!1705395)))

(assert (=> bs!1230270 (= lambda!269896 lambda!269884)))

(declare-fun bs!1230271 () Bool)

(assert (= bs!1230271 (and d!1705419 d!1705397)))

(assert (=> bs!1230271 (= lambda!269896 lambda!269887)))

(declare-fun bs!1230272 () Bool)

(assert (= bs!1230272 (and d!1705419 d!1705399)))

(assert (=> bs!1230272 (= lambda!269896 lambda!269890)))

(declare-fun b!5305867 () Bool)

(declare-fun e!3297450 () Regex!14954)

(assert (=> b!5305867 (= e!3297450 (Concat!23799 (h!67486 (t!374367 (exprs!4838 (h!67487 zl!343)))) (generalisedConcat!623 (t!374367 (t!374367 (exprs!4838 (h!67487 zl!343)))))))))

(declare-fun b!5305869 () Bool)

(declare-fun e!3297449 () Bool)

(declare-fun lt!2168140 () Regex!14954)

(assert (=> b!5305869 (= e!3297449 (= lt!2168140 (head!11373 (t!374367 (exprs!4838 (h!67487 zl!343))))))))

(declare-fun b!5305870 () Bool)

(declare-fun e!3297447 () Regex!14954)

(assert (=> b!5305870 (= e!3297447 (h!67486 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305871 () Bool)

(assert (=> b!5305871 (= e!3297447 e!3297450)))

(declare-fun c!921291 () Bool)

(assert (=> b!5305871 (= c!921291 (is-Cons!61038 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305872 () Bool)

(declare-fun e!3297446 () Bool)

(declare-fun e!3297448 () Bool)

(assert (=> b!5305872 (= e!3297446 e!3297448)))

(declare-fun c!921293 () Bool)

(assert (=> b!5305872 (= c!921293 (isEmpty!32997 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(declare-fun b!5305868 () Bool)

(assert (=> b!5305868 (= e!3297448 e!3297449)))

(declare-fun c!921290 () Bool)

(assert (=> b!5305868 (= c!921290 (isEmpty!32997 (tail!10470 (t!374367 (exprs!4838 (h!67487 zl!343))))))))

(assert (=> d!1705419 e!3297446))

(declare-fun res!2250775 () Bool)

(assert (=> d!1705419 (=> (not res!2250775) (not e!3297446))))

(assert (=> d!1705419 (= res!2250775 (validRegex!6690 lt!2168140))))

(assert (=> d!1705419 (= lt!2168140 e!3297447)))

(declare-fun c!921292 () Bool)

(declare-fun e!3297445 () Bool)

(assert (=> d!1705419 (= c!921292 e!3297445)))

(declare-fun res!2250776 () Bool)

(assert (=> d!1705419 (=> (not res!2250776) (not e!3297445))))

(assert (=> d!1705419 (= res!2250776 (is-Cons!61038 (t!374367 (exprs!4838 (h!67487 zl!343)))))))

(assert (=> d!1705419 (forall!14368 (t!374367 (exprs!4838 (h!67487 zl!343))) lambda!269896)))

(assert (=> d!1705419 (= (generalisedConcat!623 (t!374367 (exprs!4838 (h!67487 zl!343)))) lt!2168140)))

(declare-fun b!5305873 () Bool)

(assert (=> b!5305873 (= e!3297448 (isEmptyExpr!862 lt!2168140))))

(declare-fun b!5305874 () Bool)

(assert (=> b!5305874 (= e!3297445 (isEmpty!32997 (t!374367 (t!374367 (exprs!4838 (h!67487 zl!343))))))))

(declare-fun b!5305875 () Bool)

(assert (=> b!5305875 (= e!3297449 (isConcat!385 lt!2168140))))

(declare-fun b!5305876 () Bool)

(assert (=> b!5305876 (= e!3297450 EmptyExpr!14954)))

(assert (= (and d!1705419 res!2250776) b!5305874))

(assert (= (and d!1705419 c!921292) b!5305870))

(assert (= (and d!1705419 (not c!921292)) b!5305871))

(assert (= (and b!5305871 c!921291) b!5305867))

(assert (= (and b!5305871 (not c!921291)) b!5305876))

(assert (= (and d!1705419 res!2250775) b!5305872))

(assert (= (and b!5305872 c!921293) b!5305873))

(assert (= (and b!5305872 (not c!921293)) b!5305868))

(assert (= (and b!5305868 c!921290) b!5305869))

(assert (= (and b!5305868 (not c!921290)) b!5305875))

(declare-fun m!6343176 () Bool)

(assert (=> b!5305867 m!6343176))

(assert (=> b!5305872 m!6342678))

(declare-fun m!6343178 () Bool)

(assert (=> b!5305875 m!6343178))

(declare-fun m!6343180 () Bool)

(assert (=> b!5305874 m!6343180))

(declare-fun m!6343182 () Bool)

(assert (=> d!1705419 m!6343182))

(declare-fun m!6343184 () Bool)

(assert (=> d!1705419 m!6343184))

(declare-fun m!6343186 () Bool)

(assert (=> b!5305868 m!6343186))

(assert (=> b!5305868 m!6343186))

(declare-fun m!6343188 () Bool)

(assert (=> b!5305868 m!6343188))

(declare-fun m!6343190 () Bool)

(assert (=> b!5305869 m!6343190))

(declare-fun m!6343192 () Bool)

(assert (=> b!5305873 m!6343192))

(assert (=> b!5305334 d!1705419))

(declare-fun bs!1230273 () Bool)

(declare-fun d!1705421 () Bool)

(assert (= bs!1230273 (and d!1705421 d!1705419)))

(declare-fun lambda!269897 () Int)

(assert (=> bs!1230273 (= lambda!269897 lambda!269896)))

(declare-fun bs!1230274 () Bool)

(assert (= bs!1230274 (and d!1705421 d!1705399)))

(assert (=> bs!1230274 (= lambda!269897 lambda!269890)))

(declare-fun bs!1230275 () Bool)

(assert (= bs!1230275 (and d!1705421 d!1705375)))

(assert (=> bs!1230275 (= lambda!269897 lambda!269875)))

(declare-fun bs!1230276 () Bool)

(assert (= bs!1230276 (and d!1705421 d!1705395)))

(assert (=> bs!1230276 (= lambda!269897 lambda!269884)))

(declare-fun bs!1230277 () Bool)

(assert (= bs!1230277 (and d!1705421 d!1705397)))

(assert (=> bs!1230277 (= lambda!269897 lambda!269887)))

(declare-fun b!5305877 () Bool)

(declare-fun e!3297456 () Regex!14954)

(assert (=> b!5305877 (= e!3297456 (Concat!23799 (h!67486 lt!2167918) (generalisedConcat!623 (t!374367 lt!2167918))))))

(declare-fun b!5305879 () Bool)

(declare-fun e!3297455 () Bool)

(declare-fun lt!2168141 () Regex!14954)

(assert (=> b!5305879 (= e!3297455 (= lt!2168141 (head!11373 lt!2167918)))))

(declare-fun b!5305880 () Bool)

(declare-fun e!3297453 () Regex!14954)

(assert (=> b!5305880 (= e!3297453 (h!67486 lt!2167918))))

(declare-fun b!5305881 () Bool)

(assert (=> b!5305881 (= e!3297453 e!3297456)))

(declare-fun c!921295 () Bool)

(assert (=> b!5305881 (= c!921295 (is-Cons!61038 lt!2167918))))

(declare-fun b!5305882 () Bool)

(declare-fun e!3297452 () Bool)

(declare-fun e!3297454 () Bool)

(assert (=> b!5305882 (= e!3297452 e!3297454)))

(declare-fun c!921297 () Bool)

(assert (=> b!5305882 (= c!921297 (isEmpty!32997 lt!2167918))))

(declare-fun b!5305878 () Bool)

(assert (=> b!5305878 (= e!3297454 e!3297455)))

(declare-fun c!921294 () Bool)

(assert (=> b!5305878 (= c!921294 (isEmpty!32997 (tail!10470 lt!2167918)))))

(assert (=> d!1705421 e!3297452))

(declare-fun res!2250777 () Bool)

(assert (=> d!1705421 (=> (not res!2250777) (not e!3297452))))

(assert (=> d!1705421 (= res!2250777 (validRegex!6690 lt!2168141))))

(assert (=> d!1705421 (= lt!2168141 e!3297453)))

(declare-fun c!921296 () Bool)

(declare-fun e!3297451 () Bool)

(assert (=> d!1705421 (= c!921296 e!3297451)))

(declare-fun res!2250778 () Bool)

(assert (=> d!1705421 (=> (not res!2250778) (not e!3297451))))

(assert (=> d!1705421 (= res!2250778 (is-Cons!61038 lt!2167918))))

(assert (=> d!1705421 (forall!14368 lt!2167918 lambda!269897)))

(assert (=> d!1705421 (= (generalisedConcat!623 lt!2167918) lt!2168141)))

(declare-fun b!5305883 () Bool)

(assert (=> b!5305883 (= e!3297454 (isEmptyExpr!862 lt!2168141))))

(declare-fun b!5305884 () Bool)

(assert (=> b!5305884 (= e!3297451 (isEmpty!32997 (t!374367 lt!2167918)))))

(declare-fun b!5305885 () Bool)

(assert (=> b!5305885 (= e!3297455 (isConcat!385 lt!2168141))))

(declare-fun b!5305886 () Bool)

(assert (=> b!5305886 (= e!3297456 EmptyExpr!14954)))

(assert (= (and d!1705421 res!2250778) b!5305884))

(assert (= (and d!1705421 c!921296) b!5305880))

(assert (= (and d!1705421 (not c!921296)) b!5305881))

(assert (= (and b!5305881 c!921295) b!5305877))

(assert (= (and b!5305881 (not c!921295)) b!5305886))

(assert (= (and d!1705421 res!2250777) b!5305882))

(assert (= (and b!5305882 c!921297) b!5305883))

(assert (= (and b!5305882 (not c!921297)) b!5305878))

(assert (= (and b!5305878 c!921294) b!5305879))

(assert (= (and b!5305878 (not c!921294)) b!5305885))

(declare-fun m!6343194 () Bool)

(assert (=> b!5305877 m!6343194))

(declare-fun m!6343196 () Bool)

(assert (=> b!5305882 m!6343196))

(declare-fun m!6343198 () Bool)

(assert (=> b!5305885 m!6343198))

(declare-fun m!6343200 () Bool)

(assert (=> b!5305884 m!6343200))

(declare-fun m!6343202 () Bool)

(assert (=> d!1705421 m!6343202))

(declare-fun m!6343204 () Bool)

(assert (=> d!1705421 m!6343204))

(declare-fun m!6343206 () Bool)

(assert (=> b!5305878 m!6343206))

(assert (=> b!5305878 m!6343206))

(declare-fun m!6343208 () Bool)

(assert (=> b!5305878 m!6343208))

(declare-fun m!6343210 () Bool)

(assert (=> b!5305879 m!6343210))

(declare-fun m!6343212 () Bool)

(assert (=> b!5305883 m!6343212))

(assert (=> b!5305334 d!1705421))

(declare-fun d!1705423 () Bool)

(declare-fun isEmpty!33002 (Option!15065) Bool)

(assert (=> d!1705423 (= (isDefined!11768 (findConcatSeparation!1479 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 Nil!61037 s!2326 s!2326)) (not (isEmpty!33002 (findConcatSeparation!1479 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 Nil!61037 s!2326 s!2326))))))

(declare-fun bs!1230278 () Bool)

(assert (= bs!1230278 d!1705423))

(assert (=> bs!1230278 m!6342620))

(declare-fun m!6343214 () Bool)

(assert (=> bs!1230278 m!6343214))

(assert (=> b!5305334 d!1705423))

(declare-fun bs!1230279 () Bool)

(declare-fun b!5305896 () Bool)

(assert (= bs!1230279 (and b!5305896 b!5305334)))

(declare-fun lambda!269898 () Int)

(assert (=> bs!1230279 (not (= lambda!269898 lambda!269836))))

(declare-fun bs!1230280 () Bool)

(assert (= bs!1230280 (and b!5305896 b!5305316)))

(assert (=> bs!1230280 (not (= lambda!269898 lambda!269832))))

(declare-fun bs!1230281 () Bool)

(assert (= bs!1230281 (and b!5305896 b!5305856)))

(assert (=> bs!1230281 (not (= lambda!269898 lambda!269892))))

(declare-fun bs!1230282 () Bool)

(assert (= bs!1230282 (and b!5305896 b!5305743)))

(assert (=> bs!1230282 (= (and (= (reg!15283 lt!2167917) (reg!15283 r!7292)) (= lt!2167917 r!7292)) (= lambda!269898 lambda!269880))))

(declare-fun bs!1230283 () Bool)

(assert (= bs!1230283 (and b!5305896 b!5305861)))

(assert (=> bs!1230283 (= (and (= (reg!15283 lt!2167917) (reg!15283 lt!2167929)) (= lt!2167917 lt!2167929)) (= lambda!269898 lambda!269891))))

(assert (=> bs!1230280 (not (= lambda!269898 lambda!269833))))

(assert (=> bs!1230279 (not (= lambda!269898 lambda!269838))))

(assert (=> bs!1230279 (not (= lambda!269898 lambda!269837))))

(declare-fun bs!1230284 () Bool)

(assert (= bs!1230284 (and b!5305896 d!1705413)))

(assert (=> bs!1230284 (not (= lambda!269898 lambda!269895))))

(declare-fun bs!1230285 () Bool)

(assert (= bs!1230285 (and b!5305896 b!5305738)))

(assert (=> bs!1230285 (not (= lambda!269898 lambda!269881))))

(assert (=> bs!1230279 (not (= lambda!269898 lambda!269835))))

(assert (=> b!5305896 true))

(assert (=> b!5305896 true))

(declare-fun bs!1230286 () Bool)

(declare-fun b!5305891 () Bool)

(assert (= bs!1230286 (and b!5305891 b!5305334)))

(declare-fun lambda!269899 () Int)

(assert (=> bs!1230286 (= (and (= (regOne!30420 lt!2167917) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 lt!2167917) lt!2167929)) (= lambda!269899 lambda!269836))))

(declare-fun bs!1230287 () Bool)

(assert (= bs!1230287 (and b!5305891 b!5305316)))

(assert (=> bs!1230287 (not (= lambda!269899 lambda!269832))))

(declare-fun bs!1230288 () Bool)

(assert (= bs!1230288 (and b!5305891 b!5305856)))

(assert (=> bs!1230288 (= (and (= (regOne!30420 lt!2167917) (regOne!30420 lt!2167929)) (= (regTwo!30420 lt!2167917) (regTwo!30420 lt!2167929))) (= lambda!269899 lambda!269892))))

(declare-fun bs!1230289 () Bool)

(assert (= bs!1230289 (and b!5305891 b!5305743)))

(assert (=> bs!1230289 (not (= lambda!269899 lambda!269880))))

(declare-fun bs!1230290 () Bool)

(assert (= bs!1230290 (and b!5305891 b!5305861)))

(assert (=> bs!1230290 (not (= lambda!269899 lambda!269891))))

(assert (=> bs!1230287 (= (and (= (regOne!30420 lt!2167917) (regOne!30420 r!7292)) (= (regTwo!30420 lt!2167917) (regTwo!30420 r!7292))) (= lambda!269899 lambda!269833))))

(assert (=> bs!1230286 (= (and (= (regOne!30420 lt!2167917) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 lt!2167917) lt!2167925)) (= lambda!269899 lambda!269838))))

(assert (=> bs!1230286 (not (= lambda!269899 lambda!269837))))

(declare-fun bs!1230291 () Bool)

(assert (= bs!1230291 (and b!5305891 d!1705413)))

(assert (=> bs!1230291 (not (= lambda!269899 lambda!269895))))

(declare-fun bs!1230292 () Bool)

(assert (= bs!1230292 (and b!5305891 b!5305738)))

(assert (=> bs!1230292 (= (and (= (regOne!30420 lt!2167917) (regOne!30420 r!7292)) (= (regTwo!30420 lt!2167917) (regTwo!30420 r!7292))) (= lambda!269899 lambda!269881))))

(assert (=> bs!1230286 (not (= lambda!269899 lambda!269835))))

(declare-fun bs!1230293 () Bool)

(assert (= bs!1230293 (and b!5305891 b!5305896)))

(assert (=> bs!1230293 (not (= lambda!269899 lambda!269898))))

(assert (=> b!5305891 true))

(assert (=> b!5305891 true))

(declare-fun c!921298 () Bool)

(declare-fun bm!378261 () Bool)

(declare-fun call!378266 () Bool)

(assert (=> bm!378261 (= call!378266 (Exists!2135 (ite c!921298 lambda!269898 lambda!269899)))))

(declare-fun d!1705425 () Bool)

(declare-fun c!921300 () Bool)

(assert (=> d!1705425 (= c!921300 (is-EmptyExpr!14954 lt!2167917))))

(declare-fun e!3297463 () Bool)

(assert (=> d!1705425 (= (matchRSpec!2057 lt!2167917 s!2326) e!3297463)))

(declare-fun b!5305887 () Bool)

(declare-fun res!2250779 () Bool)

(declare-fun e!3297462 () Bool)

(assert (=> b!5305887 (=> res!2250779 e!3297462)))

(declare-fun call!378267 () Bool)

(assert (=> b!5305887 (= res!2250779 call!378267)))

(declare-fun e!3297457 () Bool)

(assert (=> b!5305887 (= e!3297457 e!3297462)))

(declare-fun b!5305888 () Bool)

(declare-fun c!921301 () Bool)

(assert (=> b!5305888 (= c!921301 (is-Union!14954 lt!2167917))))

(declare-fun e!3297460 () Bool)

(declare-fun e!3297459 () Bool)

(assert (=> b!5305888 (= e!3297460 e!3297459)))

(declare-fun b!5305889 () Bool)

(declare-fun e!3297461 () Bool)

(assert (=> b!5305889 (= e!3297461 (matchRSpec!2057 (regTwo!30421 lt!2167917) s!2326))))

(declare-fun b!5305890 () Bool)

(assert (=> b!5305890 (= e!3297460 (= s!2326 (Cons!61037 (c!921158 lt!2167917) Nil!61037)))))

(assert (=> b!5305891 (= e!3297457 call!378266)))

(declare-fun b!5305892 () Bool)

(assert (=> b!5305892 (= e!3297459 e!3297457)))

(assert (=> b!5305892 (= c!921298 (is-Star!14954 lt!2167917))))

(declare-fun b!5305893 () Bool)

(assert (=> b!5305893 (= e!3297463 call!378267)))

(declare-fun b!5305894 () Bool)

(assert (=> b!5305894 (= e!3297459 e!3297461)))

(declare-fun res!2250780 () Bool)

(assert (=> b!5305894 (= res!2250780 (matchRSpec!2057 (regOne!30421 lt!2167917) s!2326))))

(assert (=> b!5305894 (=> res!2250780 e!3297461)))

(declare-fun b!5305895 () Bool)

(declare-fun e!3297458 () Bool)

(assert (=> b!5305895 (= e!3297463 e!3297458)))

(declare-fun res!2250781 () Bool)

(assert (=> b!5305895 (= res!2250781 (not (is-EmptyLang!14954 lt!2167917)))))

(assert (=> b!5305895 (=> (not res!2250781) (not e!3297458))))

(declare-fun bm!378262 () Bool)

(assert (=> bm!378262 (= call!378267 (isEmpty!33001 s!2326))))

(assert (=> b!5305896 (= e!3297462 call!378266)))

(declare-fun b!5305897 () Bool)

(declare-fun c!921299 () Bool)

(assert (=> b!5305897 (= c!921299 (is-ElementMatch!14954 lt!2167917))))

(assert (=> b!5305897 (= e!3297458 e!3297460)))

(assert (= (and d!1705425 c!921300) b!5305893))

(assert (= (and d!1705425 (not c!921300)) b!5305895))

(assert (= (and b!5305895 res!2250781) b!5305897))

(assert (= (and b!5305897 c!921299) b!5305890))

(assert (= (and b!5305897 (not c!921299)) b!5305888))

(assert (= (and b!5305888 c!921301) b!5305894))

(assert (= (and b!5305888 (not c!921301)) b!5305892))

(assert (= (and b!5305894 (not res!2250780)) b!5305889))

(assert (= (and b!5305892 c!921298) b!5305887))

(assert (= (and b!5305892 (not c!921298)) b!5305891))

(assert (= (and b!5305887 (not res!2250779)) b!5305896))

(assert (= (or b!5305896 b!5305891) bm!378261))

(assert (= (or b!5305893 b!5305887) bm!378262))

(declare-fun m!6343216 () Bool)

(assert (=> bm!378261 m!6343216))

(declare-fun m!6343218 () Bool)

(assert (=> b!5305889 m!6343218))

(declare-fun m!6343220 () Bool)

(assert (=> b!5305894 m!6343220))

(assert (=> bm!378262 m!6342934))

(assert (=> b!5305334 d!1705425))

(declare-fun d!1705427 () Bool)

(declare-fun c!921302 () Bool)

(assert (=> d!1705427 (= c!921302 (isEmpty!33001 s!2326))))

(declare-fun e!3297464 () Bool)

(assert (=> d!1705427 (= (matchZipper!1198 lt!2167908 s!2326) e!3297464)))

(declare-fun b!5305898 () Bool)

(assert (=> b!5305898 (= e!3297464 (nullableZipper!1327 lt!2167908))))

(declare-fun b!5305899 () Bool)

(assert (=> b!5305899 (= e!3297464 (matchZipper!1198 (derivationStepZipper!1197 lt!2167908 (head!11372 s!2326)) (tail!10469 s!2326)))))

(assert (= (and d!1705427 c!921302) b!5305898))

(assert (= (and d!1705427 (not c!921302)) b!5305899))

(assert (=> d!1705427 m!6342934))

(declare-fun m!6343222 () Bool)

(assert (=> b!5305898 m!6343222))

(assert (=> b!5305899 m!6342928))

(assert (=> b!5305899 m!6342928))

(declare-fun m!6343224 () Bool)

(assert (=> b!5305899 m!6343224))

(assert (=> b!5305899 m!6342924))

(assert (=> b!5305899 m!6343224))

(assert (=> b!5305899 m!6342924))

(declare-fun m!6343226 () Bool)

(assert (=> b!5305899 m!6343226))

(assert (=> b!5305334 d!1705427))

(declare-fun d!1705429 () Bool)

(assert (=> d!1705429 (= (matchR!7139 lt!2167929 s!2326) (matchZipper!1198 lt!2167908 s!2326))))

(declare-fun lt!2168142 () Unit!153334)

(assert (=> d!1705429 (= lt!2168142 (choose!39670 lt!2167908 (Cons!61039 lt!2167944 Nil!61039) lt!2167929 s!2326))))

(assert (=> d!1705429 (validRegex!6690 lt!2167929)))

(assert (=> d!1705429 (= (theoremZipperRegexEquiv!364 lt!2167908 (Cons!61039 lt!2167944 Nil!61039) lt!2167929 s!2326) lt!2168142)))

(declare-fun bs!1230294 () Bool)

(assert (= bs!1230294 d!1705429))

(assert (=> bs!1230294 m!6342600))

(assert (=> bs!1230294 m!6342642))

(declare-fun m!6343228 () Bool)

(assert (=> bs!1230294 m!6343228))

(declare-fun m!6343230 () Bool)

(assert (=> bs!1230294 m!6343230))

(assert (=> b!5305334 d!1705429))

(declare-fun d!1705431 () Bool)

(assert (=> d!1705431 (= (matchR!7139 lt!2167929 s!2326) (matchRSpec!2057 lt!2167929 s!2326))))

(declare-fun lt!2168143 () Unit!153334)

(assert (=> d!1705431 (= lt!2168143 (choose!39667 lt!2167929 s!2326))))

(assert (=> d!1705431 (validRegex!6690 lt!2167929)))

(assert (=> d!1705431 (= (mainMatchTheorem!2057 lt!2167929 s!2326) lt!2168143)))

(declare-fun bs!1230295 () Bool)

(assert (= bs!1230295 d!1705431))

(assert (=> bs!1230295 m!6342600))

(assert (=> bs!1230295 m!6342632))

(declare-fun m!6343232 () Bool)

(assert (=> bs!1230295 m!6343232))

(assert (=> bs!1230295 m!6343230))

(assert (=> b!5305334 d!1705431))

(declare-fun bs!1230296 () Bool)

(declare-fun d!1705433 () Bool)

(assert (= bs!1230296 (and d!1705433 d!1705419)))

(declare-fun lambda!269900 () Int)

(assert (=> bs!1230296 (= lambda!269900 lambda!269896)))

(declare-fun bs!1230297 () Bool)

(assert (= bs!1230297 (and d!1705433 d!1705421)))

(assert (=> bs!1230297 (= lambda!269900 lambda!269897)))

(declare-fun bs!1230298 () Bool)

(assert (= bs!1230298 (and d!1705433 d!1705399)))

(assert (=> bs!1230298 (= lambda!269900 lambda!269890)))

(declare-fun bs!1230299 () Bool)

(assert (= bs!1230299 (and d!1705433 d!1705375)))

(assert (=> bs!1230299 (= lambda!269900 lambda!269875)))

(declare-fun bs!1230300 () Bool)

(assert (= bs!1230300 (and d!1705433 d!1705395)))

(assert (=> bs!1230300 (= lambda!269900 lambda!269884)))

(declare-fun bs!1230301 () Bool)

(assert (= bs!1230301 (and d!1705433 d!1705397)))

(assert (=> bs!1230301 (= lambda!269900 lambda!269887)))

(declare-fun b!5305900 () Bool)

(declare-fun e!3297470 () Regex!14954)

(assert (=> b!5305900 (= e!3297470 (Concat!23799 (h!67486 lt!2167927) (generalisedConcat!623 (t!374367 lt!2167927))))))

(declare-fun b!5305902 () Bool)

(declare-fun e!3297469 () Bool)

(declare-fun lt!2168144 () Regex!14954)

(assert (=> b!5305902 (= e!3297469 (= lt!2168144 (head!11373 lt!2167927)))))

(declare-fun b!5305903 () Bool)

(declare-fun e!3297467 () Regex!14954)

(assert (=> b!5305903 (= e!3297467 (h!67486 lt!2167927))))

(declare-fun b!5305904 () Bool)

(assert (=> b!5305904 (= e!3297467 e!3297470)))

(declare-fun c!921304 () Bool)

(assert (=> b!5305904 (= c!921304 (is-Cons!61038 lt!2167927))))

(declare-fun b!5305905 () Bool)

(declare-fun e!3297466 () Bool)

(declare-fun e!3297468 () Bool)

(assert (=> b!5305905 (= e!3297466 e!3297468)))

(declare-fun c!921306 () Bool)

(assert (=> b!5305905 (= c!921306 (isEmpty!32997 lt!2167927))))

(declare-fun b!5305901 () Bool)

(assert (=> b!5305901 (= e!3297468 e!3297469)))

(declare-fun c!921303 () Bool)

(assert (=> b!5305901 (= c!921303 (isEmpty!32997 (tail!10470 lt!2167927)))))

(assert (=> d!1705433 e!3297466))

(declare-fun res!2250782 () Bool)

(assert (=> d!1705433 (=> (not res!2250782) (not e!3297466))))

(assert (=> d!1705433 (= res!2250782 (validRegex!6690 lt!2168144))))

(assert (=> d!1705433 (= lt!2168144 e!3297467)))

(declare-fun c!921305 () Bool)

(declare-fun e!3297465 () Bool)

(assert (=> d!1705433 (= c!921305 e!3297465)))

(declare-fun res!2250783 () Bool)

(assert (=> d!1705433 (=> (not res!2250783) (not e!3297465))))

(assert (=> d!1705433 (= res!2250783 (is-Cons!61038 lt!2167927))))

(assert (=> d!1705433 (forall!14368 lt!2167927 lambda!269900)))

(assert (=> d!1705433 (= (generalisedConcat!623 lt!2167927) lt!2168144)))

(declare-fun b!5305906 () Bool)

(assert (=> b!5305906 (= e!3297468 (isEmptyExpr!862 lt!2168144))))

(declare-fun b!5305907 () Bool)

(assert (=> b!5305907 (= e!3297465 (isEmpty!32997 (t!374367 lt!2167927)))))

(declare-fun b!5305908 () Bool)

(assert (=> b!5305908 (= e!3297469 (isConcat!385 lt!2168144))))

(declare-fun b!5305909 () Bool)

(assert (=> b!5305909 (= e!3297470 EmptyExpr!14954)))

(assert (= (and d!1705433 res!2250783) b!5305907))

(assert (= (and d!1705433 c!921305) b!5305903))

(assert (= (and d!1705433 (not c!921305)) b!5305904))

(assert (= (and b!5305904 c!921304) b!5305900))

(assert (= (and b!5305904 (not c!921304)) b!5305909))

(assert (= (and d!1705433 res!2250782) b!5305905))

(assert (= (and b!5305905 c!921306) b!5305906))

(assert (= (and b!5305905 (not c!921306)) b!5305901))

(assert (= (and b!5305901 c!921303) b!5305902))

(assert (= (and b!5305901 (not c!921303)) b!5305908))

(declare-fun m!6343234 () Bool)

(assert (=> b!5305900 m!6343234))

(declare-fun m!6343236 () Bool)

(assert (=> b!5305905 m!6343236))

(declare-fun m!6343238 () Bool)

(assert (=> b!5305908 m!6343238))

(declare-fun m!6343240 () Bool)

(assert (=> b!5305907 m!6343240))

(declare-fun m!6343242 () Bool)

(assert (=> d!1705433 m!6343242))

(declare-fun m!6343244 () Bool)

(assert (=> d!1705433 m!6343244))

(declare-fun m!6343246 () Bool)

(assert (=> b!5305901 m!6343246))

(assert (=> b!5305901 m!6343246))

(declare-fun m!6343248 () Bool)

(assert (=> b!5305901 m!6343248))

(declare-fun m!6343250 () Bool)

(assert (=> b!5305902 m!6343250))

(declare-fun m!6343252 () Bool)

(assert (=> b!5305906 m!6343252))

(assert (=> b!5305334 d!1705433))

(declare-fun bs!1230302 () Bool)

(declare-fun d!1705435 () Bool)

(assert (= bs!1230302 (and d!1705435 b!5305891)))

(declare-fun lambda!269901 () Int)

(assert (=> bs!1230302 (not (= lambda!269901 lambda!269899))))

(declare-fun bs!1230303 () Bool)

(assert (= bs!1230303 (and d!1705435 b!5305334)))

(assert (=> bs!1230303 (not (= lambda!269901 lambda!269836))))

(declare-fun bs!1230304 () Bool)

(assert (= bs!1230304 (and d!1705435 b!5305316)))

(assert (=> bs!1230304 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167929 (regTwo!30420 r!7292))) (= lambda!269901 lambda!269832))))

(declare-fun bs!1230305 () Bool)

(assert (= bs!1230305 (and d!1705435 b!5305856)))

(assert (=> bs!1230305 (not (= lambda!269901 lambda!269892))))

(declare-fun bs!1230306 () Bool)

(assert (= bs!1230306 (and d!1705435 b!5305743)))

(assert (=> bs!1230306 (not (= lambda!269901 lambda!269880))))

(declare-fun bs!1230307 () Bool)

(assert (= bs!1230307 (and d!1705435 b!5305861)))

(assert (=> bs!1230307 (not (= lambda!269901 lambda!269891))))

(assert (=> bs!1230304 (not (= lambda!269901 lambda!269833))))

(assert (=> bs!1230303 (not (= lambda!269901 lambda!269838))))

(assert (=> bs!1230303 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regTwo!30420 (regOne!30420 r!7292))) (= lt!2167929 lt!2167925)) (= lambda!269901 lambda!269837))))

(declare-fun bs!1230308 () Bool)

(assert (= bs!1230308 (and d!1705435 d!1705413)))

(assert (=> bs!1230308 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regTwo!30420 (regOne!30420 r!7292))) (= lt!2167929 lt!2167925)) (= lambda!269901 lambda!269895))))

(declare-fun bs!1230309 () Bool)

(assert (= bs!1230309 (and d!1705435 b!5305738)))

(assert (=> bs!1230309 (not (= lambda!269901 lambda!269881))))

(assert (=> bs!1230303 (= lambda!269901 lambda!269835)))

(declare-fun bs!1230310 () Bool)

(assert (= bs!1230310 (and d!1705435 b!5305896)))

(assert (=> bs!1230310 (not (= lambda!269901 lambda!269898))))

(assert (=> d!1705435 true))

(assert (=> d!1705435 true))

(assert (=> d!1705435 true))

(assert (=> d!1705435 (= (isDefined!11768 (findConcatSeparation!1479 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 Nil!61037 s!2326 s!2326)) (Exists!2135 lambda!269901))))

(declare-fun lt!2168145 () Unit!153334)

(assert (=> d!1705435 (= lt!2168145 (choose!39668 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 s!2326))))

(assert (=> d!1705435 (validRegex!6690 (regOne!30420 (regOne!30420 r!7292)))))

(assert (=> d!1705435 (= (lemmaFindConcatSeparationEquivalentToExists!1243 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 s!2326) lt!2168145)))

(declare-fun bs!1230311 () Bool)

(assert (= bs!1230311 d!1705435))

(assert (=> bs!1230311 m!6342602))

(assert (=> bs!1230311 m!6342618))

(declare-fun m!6343254 () Bool)

(assert (=> bs!1230311 m!6343254))

(declare-fun m!6343256 () Bool)

(assert (=> bs!1230311 m!6343256))

(assert (=> bs!1230311 m!6342602))

(declare-fun m!6343258 () Bool)

(assert (=> bs!1230311 m!6343258))

(assert (=> b!5305334 d!1705435))

(declare-fun b!5305910 () Bool)

(declare-fun e!3297474 () Bool)

(declare-fun e!3297473 () Bool)

(assert (=> b!5305910 (= e!3297474 e!3297473)))

(declare-fun res!2250789 () Bool)

(assert (=> b!5305910 (=> res!2250789 e!3297473)))

(declare-fun call!378268 () Bool)

(assert (=> b!5305910 (= res!2250789 call!378268)))

(declare-fun b!5305911 () Bool)

(declare-fun e!3297471 () Bool)

(declare-fun lt!2168146 () Bool)

(assert (=> b!5305911 (= e!3297471 (= lt!2168146 call!378268))))

(declare-fun b!5305912 () Bool)

(declare-fun res!2250787 () Bool)

(declare-fun e!3297475 () Bool)

(assert (=> b!5305912 (=> (not res!2250787) (not e!3297475))))

(assert (=> b!5305912 (= res!2250787 (not call!378268))))

(declare-fun b!5305913 () Bool)

(declare-fun e!3297477 () Bool)

(assert (=> b!5305913 (= e!3297477 (nullable!5123 lt!2167929))))

(declare-fun bm!378263 () Bool)

(assert (=> bm!378263 (= call!378268 (isEmpty!33001 s!2326))))

(declare-fun b!5305914 () Bool)

(declare-fun res!2250790 () Bool)

(declare-fun e!3297472 () Bool)

(assert (=> b!5305914 (=> res!2250790 e!3297472)))

(assert (=> b!5305914 (= res!2250790 e!3297475)))

(declare-fun res!2250791 () Bool)

(assert (=> b!5305914 (=> (not res!2250791) (not e!3297475))))

(assert (=> b!5305914 (= res!2250791 lt!2168146)))

(declare-fun d!1705437 () Bool)

(assert (=> d!1705437 e!3297471))

(declare-fun c!921307 () Bool)

(assert (=> d!1705437 (= c!921307 (is-EmptyExpr!14954 lt!2167929))))

(assert (=> d!1705437 (= lt!2168146 e!3297477)))

(declare-fun c!921309 () Bool)

(assert (=> d!1705437 (= c!921309 (isEmpty!33001 s!2326))))

(assert (=> d!1705437 (validRegex!6690 lt!2167929)))

(assert (=> d!1705437 (= (matchR!7139 lt!2167929 s!2326) lt!2168146)))

(declare-fun b!5305915 () Bool)

(declare-fun res!2250786 () Bool)

(assert (=> b!5305915 (=> res!2250786 e!3297473)))

(assert (=> b!5305915 (= res!2250786 (not (isEmpty!33001 (tail!10469 s!2326))))))

(declare-fun b!5305916 () Bool)

(declare-fun res!2250784 () Bool)

(assert (=> b!5305916 (=> res!2250784 e!3297472)))

(assert (=> b!5305916 (= res!2250784 (not (is-ElementMatch!14954 lt!2167929)))))

(declare-fun e!3297476 () Bool)

(assert (=> b!5305916 (= e!3297476 e!3297472)))

(declare-fun b!5305917 () Bool)

(assert (=> b!5305917 (= e!3297471 e!3297476)))

(declare-fun c!921308 () Bool)

(assert (=> b!5305917 (= c!921308 (is-EmptyLang!14954 lt!2167929))))

(declare-fun b!5305918 () Bool)

(assert (=> b!5305918 (= e!3297476 (not lt!2168146))))

(declare-fun b!5305919 () Bool)

(assert (=> b!5305919 (= e!3297473 (not (= (head!11372 s!2326) (c!921158 lt!2167929))))))

(declare-fun b!5305920 () Bool)

(assert (=> b!5305920 (= e!3297475 (= (head!11372 s!2326) (c!921158 lt!2167929)))))

(declare-fun b!5305921 () Bool)

(assert (=> b!5305921 (= e!3297472 e!3297474)))

(declare-fun res!2250785 () Bool)

(assert (=> b!5305921 (=> (not res!2250785) (not e!3297474))))

(assert (=> b!5305921 (= res!2250785 (not lt!2168146))))

(declare-fun b!5305922 () Bool)

(declare-fun res!2250788 () Bool)

(assert (=> b!5305922 (=> (not res!2250788) (not e!3297475))))

(assert (=> b!5305922 (= res!2250788 (isEmpty!33001 (tail!10469 s!2326)))))

(declare-fun b!5305923 () Bool)

(assert (=> b!5305923 (= e!3297477 (matchR!7139 (derivativeStep!4148 lt!2167929 (head!11372 s!2326)) (tail!10469 s!2326)))))

(assert (= (and d!1705437 c!921309) b!5305913))

(assert (= (and d!1705437 (not c!921309)) b!5305923))

(assert (= (and d!1705437 c!921307) b!5305911))

(assert (= (and d!1705437 (not c!921307)) b!5305917))

(assert (= (and b!5305917 c!921308) b!5305918))

(assert (= (and b!5305917 (not c!921308)) b!5305916))

(assert (= (and b!5305916 (not res!2250784)) b!5305914))

(assert (= (and b!5305914 res!2250791) b!5305912))

(assert (= (and b!5305912 res!2250787) b!5305922))

(assert (= (and b!5305922 res!2250788) b!5305920))

(assert (= (and b!5305914 (not res!2250790)) b!5305921))

(assert (= (and b!5305921 res!2250785) b!5305910))

(assert (= (and b!5305910 (not res!2250789)) b!5305915))

(assert (= (and b!5305915 (not res!2250786)) b!5305919))

(assert (= (or b!5305911 b!5305910 b!5305912) bm!378263))

(assert (=> b!5305915 m!6342924))

(assert (=> b!5305915 m!6342924))

(assert (=> b!5305915 m!6342926))

(assert (=> b!5305923 m!6342928))

(assert (=> b!5305923 m!6342928))

(declare-fun m!6343260 () Bool)

(assert (=> b!5305923 m!6343260))

(assert (=> b!5305923 m!6342924))

(assert (=> b!5305923 m!6343260))

(assert (=> b!5305923 m!6342924))

(declare-fun m!6343262 () Bool)

(assert (=> b!5305923 m!6343262))

(assert (=> b!5305920 m!6342928))

(assert (=> bm!378263 m!6342934))

(assert (=> d!1705437 m!6342934))

(assert (=> d!1705437 m!6343230))

(assert (=> b!5305919 m!6342928))

(assert (=> b!5305922 m!6342924))

(assert (=> b!5305922 m!6342924))

(assert (=> b!5305922 m!6342926))

(declare-fun m!6343264 () Bool)

(assert (=> b!5305913 m!6343264))

(assert (=> b!5305334 d!1705437))

(declare-fun b!5305942 () Bool)

(declare-fun lt!2168155 () Unit!153334)

(declare-fun lt!2168154 () Unit!153334)

(assert (=> b!5305942 (= lt!2168155 lt!2168154)))

(declare-fun ++!13307 (List!61161 List!61161) List!61161)

(assert (=> b!5305942 (= (++!13307 (++!13307 Nil!61037 (Cons!61037 (h!67485 s!2326) Nil!61037)) (t!374366 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1722 (List!61161 C!30178 List!61161 List!61161) Unit!153334)

(assert (=> b!5305942 (= lt!2168154 (lemmaMoveElementToOtherListKeepsConcatEq!1722 Nil!61037 (h!67485 s!2326) (t!374366 s!2326) s!2326))))

(declare-fun e!3297491 () Option!15065)

(assert (=> b!5305942 (= e!3297491 (findConcatSeparation!1479 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 (++!13307 Nil!61037 (Cons!61037 (h!67485 s!2326) Nil!61037)) (t!374366 s!2326) s!2326))))

(declare-fun b!5305943 () Bool)

(declare-fun e!3297492 () Option!15065)

(assert (=> b!5305943 (= e!3297492 (Some!15064 (tuple2!64307 Nil!61037 s!2326)))))

(declare-fun d!1705439 () Bool)

(declare-fun e!3297490 () Bool)

(assert (=> d!1705439 e!3297490))

(declare-fun res!2250802 () Bool)

(assert (=> d!1705439 (=> res!2250802 e!3297490)))

(declare-fun e!3297488 () Bool)

(assert (=> d!1705439 (= res!2250802 e!3297488)))

(declare-fun res!2250806 () Bool)

(assert (=> d!1705439 (=> (not res!2250806) (not e!3297488))))

(declare-fun lt!2168153 () Option!15065)

(assert (=> d!1705439 (= res!2250806 (isDefined!11768 lt!2168153))))

(assert (=> d!1705439 (= lt!2168153 e!3297492)))

(declare-fun c!921314 () Bool)

(declare-fun e!3297489 () Bool)

(assert (=> d!1705439 (= c!921314 e!3297489)))

(declare-fun res!2250805 () Bool)

(assert (=> d!1705439 (=> (not res!2250805) (not e!3297489))))

(assert (=> d!1705439 (= res!2250805 (matchR!7139 (regTwo!30420 (regOne!30420 r!7292)) Nil!61037))))

(assert (=> d!1705439 (validRegex!6690 (regTwo!30420 (regOne!30420 r!7292)))))

(assert (=> d!1705439 (= (findConcatSeparation!1479 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 Nil!61037 s!2326 s!2326) lt!2168153)))

(declare-fun b!5305944 () Bool)

(declare-fun res!2250803 () Bool)

(assert (=> b!5305944 (=> (not res!2250803) (not e!3297488))))

(declare-fun get!20990 (Option!15065) tuple2!64306)

(assert (=> b!5305944 (= res!2250803 (matchR!7139 (regTwo!30420 (regOne!30420 r!7292)) (_1!35456 (get!20990 lt!2168153))))))

(declare-fun b!5305945 () Bool)

(assert (=> b!5305945 (= e!3297491 None!15064)))

(declare-fun b!5305946 () Bool)

(assert (=> b!5305946 (= e!3297489 (matchR!7139 lt!2167925 s!2326))))

(declare-fun b!5305947 () Bool)

(assert (=> b!5305947 (= e!3297488 (= (++!13307 (_1!35456 (get!20990 lt!2168153)) (_2!35456 (get!20990 lt!2168153))) s!2326))))

(declare-fun b!5305948 () Bool)

(assert (=> b!5305948 (= e!3297492 e!3297491)))

(declare-fun c!921315 () Bool)

(assert (=> b!5305948 (= c!921315 (is-Nil!61037 s!2326))))

(declare-fun b!5305949 () Bool)

(assert (=> b!5305949 (= e!3297490 (not (isDefined!11768 lt!2168153)))))

(declare-fun b!5305950 () Bool)

(declare-fun res!2250804 () Bool)

(assert (=> b!5305950 (=> (not res!2250804) (not e!3297488))))

(assert (=> b!5305950 (= res!2250804 (matchR!7139 lt!2167925 (_2!35456 (get!20990 lt!2168153))))))

(assert (= (and d!1705439 res!2250805) b!5305946))

(assert (= (and d!1705439 c!921314) b!5305943))

(assert (= (and d!1705439 (not c!921314)) b!5305948))

(assert (= (and b!5305948 c!921315) b!5305945))

(assert (= (and b!5305948 (not c!921315)) b!5305942))

(assert (= (and d!1705439 res!2250806) b!5305944))

(assert (= (and b!5305944 res!2250803) b!5305950))

(assert (= (and b!5305950 res!2250804) b!5305947))

(assert (= (and d!1705439 (not res!2250802)) b!5305949))

(declare-fun m!6343266 () Bool)

(assert (=> b!5305944 m!6343266))

(declare-fun m!6343268 () Bool)

(assert (=> b!5305944 m!6343268))

(declare-fun m!6343270 () Bool)

(assert (=> d!1705439 m!6343270))

(declare-fun m!6343272 () Bool)

(assert (=> d!1705439 m!6343272))

(assert (=> d!1705439 m!6343166))

(declare-fun m!6343274 () Bool)

(assert (=> b!5305942 m!6343274))

(assert (=> b!5305942 m!6343274))

(declare-fun m!6343276 () Bool)

(assert (=> b!5305942 m!6343276))

(declare-fun m!6343278 () Bool)

(assert (=> b!5305942 m!6343278))

(assert (=> b!5305942 m!6343274))

(declare-fun m!6343280 () Bool)

(assert (=> b!5305942 m!6343280))

(assert (=> b!5305950 m!6343266))

(declare-fun m!6343282 () Bool)

(assert (=> b!5305950 m!6343282))

(declare-fun m!6343284 () Bool)

(assert (=> b!5305946 m!6343284))

(assert (=> b!5305947 m!6343266))

(declare-fun m!6343286 () Bool)

(assert (=> b!5305947 m!6343286))

(assert (=> b!5305949 m!6343270))

(assert (=> b!5305334 d!1705439))

(declare-fun d!1705441 () Bool)

(assert (=> d!1705441 (= (Exists!2135 lambda!269837) (choose!39669 lambda!269837))))

(declare-fun bs!1230312 () Bool)

(assert (= bs!1230312 d!1705441))

(declare-fun m!6343288 () Bool)

(assert (=> bs!1230312 m!6343288))

(assert (=> b!5305334 d!1705441))

(declare-fun b!5305951 () Bool)

(declare-fun e!3297496 () Bool)

(declare-fun e!3297495 () Bool)

(assert (=> b!5305951 (= e!3297496 e!3297495)))

(declare-fun res!2250812 () Bool)

(assert (=> b!5305951 (=> res!2250812 e!3297495)))

(declare-fun call!378269 () Bool)

(assert (=> b!5305951 (= res!2250812 call!378269)))

(declare-fun b!5305952 () Bool)

(declare-fun e!3297493 () Bool)

(declare-fun lt!2168156 () Bool)

(assert (=> b!5305952 (= e!3297493 (= lt!2168156 call!378269))))

(declare-fun b!5305953 () Bool)

(declare-fun res!2250810 () Bool)

(declare-fun e!3297497 () Bool)

(assert (=> b!5305953 (=> (not res!2250810) (not e!3297497))))

(assert (=> b!5305953 (= res!2250810 (not call!378269))))

(declare-fun b!5305954 () Bool)

(declare-fun e!3297499 () Bool)

(assert (=> b!5305954 (= e!3297499 (nullable!5123 lt!2167917))))

(declare-fun bm!378264 () Bool)

(assert (=> bm!378264 (= call!378269 (isEmpty!33001 s!2326))))

(declare-fun b!5305955 () Bool)

(declare-fun res!2250813 () Bool)

(declare-fun e!3297494 () Bool)

(assert (=> b!5305955 (=> res!2250813 e!3297494)))

(assert (=> b!5305955 (= res!2250813 e!3297497)))

(declare-fun res!2250814 () Bool)

(assert (=> b!5305955 (=> (not res!2250814) (not e!3297497))))

(assert (=> b!5305955 (= res!2250814 lt!2168156)))

(declare-fun d!1705443 () Bool)

(assert (=> d!1705443 e!3297493))

(declare-fun c!921316 () Bool)

(assert (=> d!1705443 (= c!921316 (is-EmptyExpr!14954 lt!2167917))))

(assert (=> d!1705443 (= lt!2168156 e!3297499)))

(declare-fun c!921318 () Bool)

(assert (=> d!1705443 (= c!921318 (isEmpty!33001 s!2326))))

(assert (=> d!1705443 (validRegex!6690 lt!2167917)))

(assert (=> d!1705443 (= (matchR!7139 lt!2167917 s!2326) lt!2168156)))

(declare-fun b!5305956 () Bool)

(declare-fun res!2250809 () Bool)

(assert (=> b!5305956 (=> res!2250809 e!3297495)))

(assert (=> b!5305956 (= res!2250809 (not (isEmpty!33001 (tail!10469 s!2326))))))

(declare-fun b!5305957 () Bool)

(declare-fun res!2250807 () Bool)

(assert (=> b!5305957 (=> res!2250807 e!3297494)))

(assert (=> b!5305957 (= res!2250807 (not (is-ElementMatch!14954 lt!2167917)))))

(declare-fun e!3297498 () Bool)

(assert (=> b!5305957 (= e!3297498 e!3297494)))

(declare-fun b!5305958 () Bool)

(assert (=> b!5305958 (= e!3297493 e!3297498)))

(declare-fun c!921317 () Bool)

(assert (=> b!5305958 (= c!921317 (is-EmptyLang!14954 lt!2167917))))

(declare-fun b!5305959 () Bool)

(assert (=> b!5305959 (= e!3297498 (not lt!2168156))))

(declare-fun b!5305960 () Bool)

(assert (=> b!5305960 (= e!3297495 (not (= (head!11372 s!2326) (c!921158 lt!2167917))))))

(declare-fun b!5305961 () Bool)

(assert (=> b!5305961 (= e!3297497 (= (head!11372 s!2326) (c!921158 lt!2167917)))))

(declare-fun b!5305962 () Bool)

(assert (=> b!5305962 (= e!3297494 e!3297496)))

(declare-fun res!2250808 () Bool)

(assert (=> b!5305962 (=> (not res!2250808) (not e!3297496))))

(assert (=> b!5305962 (= res!2250808 (not lt!2168156))))

(declare-fun b!5305963 () Bool)

(declare-fun res!2250811 () Bool)

(assert (=> b!5305963 (=> (not res!2250811) (not e!3297497))))

(assert (=> b!5305963 (= res!2250811 (isEmpty!33001 (tail!10469 s!2326)))))

(declare-fun b!5305964 () Bool)

(assert (=> b!5305964 (= e!3297499 (matchR!7139 (derivativeStep!4148 lt!2167917 (head!11372 s!2326)) (tail!10469 s!2326)))))

(assert (= (and d!1705443 c!921318) b!5305954))

(assert (= (and d!1705443 (not c!921318)) b!5305964))

(assert (= (and d!1705443 c!921316) b!5305952))

(assert (= (and d!1705443 (not c!921316)) b!5305958))

(assert (= (and b!5305958 c!921317) b!5305959))

(assert (= (and b!5305958 (not c!921317)) b!5305957))

(assert (= (and b!5305957 (not res!2250807)) b!5305955))

(assert (= (and b!5305955 res!2250814) b!5305953))

(assert (= (and b!5305953 res!2250810) b!5305963))

(assert (= (and b!5305963 res!2250811) b!5305961))

(assert (= (and b!5305955 (not res!2250813)) b!5305962))

(assert (= (and b!5305962 res!2250808) b!5305951))

(assert (= (and b!5305951 (not res!2250812)) b!5305956))

(assert (= (and b!5305956 (not res!2250809)) b!5305960))

(assert (= (or b!5305952 b!5305951 b!5305953) bm!378264))

(assert (=> b!5305956 m!6342924))

(assert (=> b!5305956 m!6342924))

(assert (=> b!5305956 m!6342926))

(assert (=> b!5305964 m!6342928))

(assert (=> b!5305964 m!6342928))

(declare-fun m!6343290 () Bool)

(assert (=> b!5305964 m!6343290))

(assert (=> b!5305964 m!6342924))

(assert (=> b!5305964 m!6343290))

(assert (=> b!5305964 m!6342924))

(declare-fun m!6343292 () Bool)

(assert (=> b!5305964 m!6343292))

(assert (=> b!5305961 m!6342928))

(assert (=> bm!378264 m!6342934))

(assert (=> d!1705443 m!6342934))

(assert (=> d!1705443 m!6343174))

(assert (=> b!5305960 m!6342928))

(assert (=> b!5305963 m!6342924))

(assert (=> b!5305963 m!6342924))

(assert (=> b!5305963 m!6342926))

(declare-fun m!6343294 () Bool)

(assert (=> b!5305954 m!6343294))

(assert (=> b!5305334 d!1705443))

(declare-fun d!1705445 () Bool)

(declare-fun c!921319 () Bool)

(assert (=> d!1705445 (= c!921319 (isEmpty!33001 s!2326))))

(declare-fun e!3297500 () Bool)

(assert (=> d!1705445 (= (matchZipper!1198 z!1189 s!2326) e!3297500)))

(declare-fun b!5305965 () Bool)

(assert (=> b!5305965 (= e!3297500 (nullableZipper!1327 z!1189))))

(declare-fun b!5305966 () Bool)

(assert (=> b!5305966 (= e!3297500 (matchZipper!1198 (derivationStepZipper!1197 z!1189 (head!11372 s!2326)) (tail!10469 s!2326)))))

(assert (= (and d!1705445 c!921319) b!5305965))

(assert (= (and d!1705445 (not c!921319)) b!5305966))

(assert (=> d!1705445 m!6342934))

(declare-fun m!6343296 () Bool)

(assert (=> b!5305965 m!6343296))

(assert (=> b!5305966 m!6342928))

(assert (=> b!5305966 m!6342928))

(declare-fun m!6343298 () Bool)

(assert (=> b!5305966 m!6343298))

(assert (=> b!5305966 m!6342924))

(assert (=> b!5305966 m!6343298))

(assert (=> b!5305966 m!6342924))

(declare-fun m!6343300 () Bool)

(assert (=> b!5305966 m!6343300))

(assert (=> b!5305334 d!1705445))

(declare-fun d!1705447 () Bool)

(assert (=> d!1705447 (= (Exists!2135 lambda!269836) (choose!39669 lambda!269836))))

(declare-fun bs!1230313 () Bool)

(assert (= bs!1230313 d!1705447))

(declare-fun m!6343302 () Bool)

(assert (=> bs!1230313 m!6343302))

(assert (=> b!5305334 d!1705447))

(declare-fun b!5305967 () Bool)

(declare-fun lt!2168159 () Unit!153334)

(declare-fun lt!2168158 () Unit!153334)

(assert (=> b!5305967 (= lt!2168159 lt!2168158)))

(assert (=> b!5305967 (= (++!13307 (++!13307 Nil!61037 (Cons!61037 (h!67485 s!2326) Nil!61037)) (t!374366 s!2326)) s!2326)))

(assert (=> b!5305967 (= lt!2168158 (lemmaMoveElementToOtherListKeepsConcatEq!1722 Nil!61037 (h!67485 s!2326) (t!374366 s!2326) s!2326))))

(declare-fun e!3297504 () Option!15065)

(assert (=> b!5305967 (= e!3297504 (findConcatSeparation!1479 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 (++!13307 Nil!61037 (Cons!61037 (h!67485 s!2326) Nil!61037)) (t!374366 s!2326) s!2326))))

(declare-fun b!5305968 () Bool)

(declare-fun e!3297505 () Option!15065)

(assert (=> b!5305968 (= e!3297505 (Some!15064 (tuple2!64307 Nil!61037 s!2326)))))

(declare-fun d!1705449 () Bool)

(declare-fun e!3297503 () Bool)

(assert (=> d!1705449 e!3297503))

(declare-fun res!2250815 () Bool)

(assert (=> d!1705449 (=> res!2250815 e!3297503)))

(declare-fun e!3297501 () Bool)

(assert (=> d!1705449 (= res!2250815 e!3297501)))

(declare-fun res!2250819 () Bool)

(assert (=> d!1705449 (=> (not res!2250819) (not e!3297501))))

(declare-fun lt!2168157 () Option!15065)

(assert (=> d!1705449 (= res!2250819 (isDefined!11768 lt!2168157))))

(assert (=> d!1705449 (= lt!2168157 e!3297505)))

(declare-fun c!921320 () Bool)

(declare-fun e!3297502 () Bool)

(assert (=> d!1705449 (= c!921320 e!3297502)))

(declare-fun res!2250818 () Bool)

(assert (=> d!1705449 (=> (not res!2250818) (not e!3297502))))

(assert (=> d!1705449 (= res!2250818 (matchR!7139 (regOne!30420 (regOne!30420 r!7292)) Nil!61037))))

(assert (=> d!1705449 (validRegex!6690 (regOne!30420 (regOne!30420 r!7292)))))

(assert (=> d!1705449 (= (findConcatSeparation!1479 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 Nil!61037 s!2326 s!2326) lt!2168157)))

(declare-fun b!5305969 () Bool)

(declare-fun res!2250816 () Bool)

(assert (=> b!5305969 (=> (not res!2250816) (not e!3297501))))

(assert (=> b!5305969 (= res!2250816 (matchR!7139 (regOne!30420 (regOne!30420 r!7292)) (_1!35456 (get!20990 lt!2168157))))))

(declare-fun b!5305970 () Bool)

(assert (=> b!5305970 (= e!3297504 None!15064)))

(declare-fun b!5305971 () Bool)

(assert (=> b!5305971 (= e!3297502 (matchR!7139 lt!2167929 s!2326))))

(declare-fun b!5305972 () Bool)

(assert (=> b!5305972 (= e!3297501 (= (++!13307 (_1!35456 (get!20990 lt!2168157)) (_2!35456 (get!20990 lt!2168157))) s!2326))))

(declare-fun b!5305973 () Bool)

(assert (=> b!5305973 (= e!3297505 e!3297504)))

(declare-fun c!921321 () Bool)

(assert (=> b!5305973 (= c!921321 (is-Nil!61037 s!2326))))

(declare-fun b!5305974 () Bool)

(assert (=> b!5305974 (= e!3297503 (not (isDefined!11768 lt!2168157)))))

(declare-fun b!5305975 () Bool)

(declare-fun res!2250817 () Bool)

(assert (=> b!5305975 (=> (not res!2250817) (not e!3297501))))

(assert (=> b!5305975 (= res!2250817 (matchR!7139 lt!2167929 (_2!35456 (get!20990 lt!2168157))))))

(assert (= (and d!1705449 res!2250818) b!5305971))

(assert (= (and d!1705449 c!921320) b!5305968))

(assert (= (and d!1705449 (not c!921320)) b!5305973))

(assert (= (and b!5305973 c!921321) b!5305970))

(assert (= (and b!5305973 (not c!921321)) b!5305967))

(assert (= (and d!1705449 res!2250819) b!5305969))

(assert (= (and b!5305969 res!2250816) b!5305975))

(assert (= (and b!5305975 res!2250817) b!5305972))

(assert (= (and d!1705449 (not res!2250815)) b!5305974))

(declare-fun m!6343304 () Bool)

(assert (=> b!5305969 m!6343304))

(declare-fun m!6343306 () Bool)

(assert (=> b!5305969 m!6343306))

(declare-fun m!6343308 () Bool)

(assert (=> d!1705449 m!6343308))

(declare-fun m!6343310 () Bool)

(assert (=> d!1705449 m!6343310))

(assert (=> d!1705449 m!6343256))

(assert (=> b!5305967 m!6343274))

(assert (=> b!5305967 m!6343274))

(assert (=> b!5305967 m!6343276))

(assert (=> b!5305967 m!6343278))

(assert (=> b!5305967 m!6343274))

(declare-fun m!6343312 () Bool)

(assert (=> b!5305967 m!6343312))

(assert (=> b!5305975 m!6343304))

(declare-fun m!6343314 () Bool)

(assert (=> b!5305975 m!6343314))

(assert (=> b!5305971 m!6342600))

(assert (=> b!5305972 m!6343304))

(declare-fun m!6343316 () Bool)

(assert (=> b!5305972 m!6343316))

(assert (=> b!5305974 m!6343308))

(assert (=> b!5305334 d!1705449))

(declare-fun d!1705451 () Bool)

(assert (=> d!1705451 (= (matchR!7139 lt!2167917 s!2326) (matchRSpec!2057 lt!2167917 s!2326))))

(declare-fun lt!2168160 () Unit!153334)

(assert (=> d!1705451 (= lt!2168160 (choose!39667 lt!2167917 s!2326))))

(assert (=> d!1705451 (validRegex!6690 lt!2167917)))

(assert (=> d!1705451 (= (mainMatchTheorem!2057 lt!2167917 s!2326) lt!2168160)))

(declare-fun bs!1230314 () Bool)

(assert (= bs!1230314 d!1705451))

(assert (=> bs!1230314 m!6342606))

(assert (=> bs!1230314 m!6342626))

(declare-fun m!6343318 () Bool)

(assert (=> bs!1230314 m!6343318))

(assert (=> bs!1230314 m!6343174))

(assert (=> b!5305334 d!1705451))

(declare-fun d!1705453 () Bool)

(assert (=> d!1705453 (= (Exists!2135 lambda!269835) (choose!39669 lambda!269835))))

(declare-fun bs!1230315 () Bool)

(assert (= bs!1230315 d!1705453))

(declare-fun m!6343320 () Bool)

(assert (=> bs!1230315 m!6343320))

(assert (=> b!5305334 d!1705453))

(declare-fun d!1705455 () Bool)

(declare-fun c!921322 () Bool)

(assert (=> d!1705455 (= c!921322 (isEmpty!33001 s!2326))))

(declare-fun e!3297506 () Bool)

(assert (=> d!1705455 (= (matchZipper!1198 lt!2167942 s!2326) e!3297506)))

(declare-fun b!5305976 () Bool)

(assert (=> b!5305976 (= e!3297506 (nullableZipper!1327 lt!2167942))))

(declare-fun b!5305977 () Bool)

(assert (=> b!5305977 (= e!3297506 (matchZipper!1198 (derivationStepZipper!1197 lt!2167942 (head!11372 s!2326)) (tail!10469 s!2326)))))

(assert (= (and d!1705455 c!921322) b!5305976))

(assert (= (and d!1705455 (not c!921322)) b!5305977))

(assert (=> d!1705455 m!6342934))

(declare-fun m!6343322 () Bool)

(assert (=> b!5305976 m!6343322))

(assert (=> b!5305977 m!6342928))

(assert (=> b!5305977 m!6342928))

(declare-fun m!6343324 () Bool)

(assert (=> b!5305977 m!6343324))

(assert (=> b!5305977 m!6342924))

(assert (=> b!5305977 m!6343324))

(assert (=> b!5305977 m!6342924))

(declare-fun m!6343326 () Bool)

(assert (=> b!5305977 m!6343326))

(assert (=> b!5305334 d!1705455))

(declare-fun bs!1230316 () Bool)

(declare-fun d!1705457 () Bool)

(assert (= bs!1230316 (and d!1705457 b!5305891)))

(declare-fun lambda!269906 () Int)

(assert (=> bs!1230316 (not (= lambda!269906 lambda!269899))))

(declare-fun bs!1230317 () Bool)

(assert (= bs!1230317 (and d!1705457 b!5305334)))

(assert (=> bs!1230317 (not (= lambda!269906 lambda!269836))))

(declare-fun bs!1230318 () Bool)

(assert (= bs!1230318 (and d!1705457 b!5305856)))

(assert (=> bs!1230318 (not (= lambda!269906 lambda!269892))))

(declare-fun bs!1230319 () Bool)

(assert (= bs!1230319 (and d!1705457 b!5305743)))

(assert (=> bs!1230319 (not (= lambda!269906 lambda!269880))))

(declare-fun bs!1230320 () Bool)

(assert (= bs!1230320 (and d!1705457 b!5305861)))

(assert (=> bs!1230320 (not (= lambda!269906 lambda!269891))))

(declare-fun bs!1230321 () Bool)

(assert (= bs!1230321 (and d!1705457 b!5305316)))

(assert (=> bs!1230321 (not (= lambda!269906 lambda!269833))))

(assert (=> bs!1230317 (not (= lambda!269906 lambda!269838))))

(assert (=> bs!1230317 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regTwo!30420 (regOne!30420 r!7292))) (= lt!2167929 lt!2167925)) (= lambda!269906 lambda!269837))))

(declare-fun bs!1230322 () Bool)

(assert (= bs!1230322 (and d!1705457 d!1705413)))

(assert (=> bs!1230322 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regTwo!30420 (regOne!30420 r!7292))) (= lt!2167929 lt!2167925)) (= lambda!269906 lambda!269895))))

(declare-fun bs!1230323 () Bool)

(assert (= bs!1230323 (and d!1705457 b!5305738)))

(assert (=> bs!1230323 (not (= lambda!269906 lambda!269881))))

(assert (=> bs!1230317 (= lambda!269906 lambda!269835)))

(declare-fun bs!1230324 () Bool)

(assert (= bs!1230324 (and d!1705457 b!5305896)))

(assert (=> bs!1230324 (not (= lambda!269906 lambda!269898))))

(assert (=> bs!1230321 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167929 (regTwo!30420 r!7292))) (= lambda!269906 lambda!269832))))

(declare-fun bs!1230325 () Bool)

(assert (= bs!1230325 (and d!1705457 d!1705435)))

(assert (=> bs!1230325 (= lambda!269906 lambda!269901)))

(assert (=> d!1705457 true))

(assert (=> d!1705457 true))

(assert (=> d!1705457 true))

(declare-fun lambda!269907 () Int)

(assert (=> bs!1230316 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regOne!30420 lt!2167917)) (= lt!2167929 (regTwo!30420 lt!2167917))) (= lambda!269907 lambda!269899))))

(assert (=> bs!1230317 (= lambda!269907 lambda!269836)))

(assert (=> bs!1230318 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regOne!30420 lt!2167929)) (= lt!2167929 (regTwo!30420 lt!2167929))) (= lambda!269907 lambda!269892))))

(assert (=> bs!1230319 (not (= lambda!269907 lambda!269880))))

(assert (=> bs!1230320 (not (= lambda!269907 lambda!269891))))

(assert (=> bs!1230321 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167929 (regTwo!30420 r!7292))) (= lambda!269907 lambda!269833))))

(declare-fun bs!1230326 () Bool)

(assert (= bs!1230326 d!1705457))

(assert (=> bs!1230326 (not (= lambda!269907 lambda!269906))))

(assert (=> bs!1230317 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regTwo!30420 (regOne!30420 r!7292))) (= lt!2167929 lt!2167925)) (= lambda!269907 lambda!269838))))

(assert (=> bs!1230317 (not (= lambda!269907 lambda!269837))))

(assert (=> bs!1230322 (not (= lambda!269907 lambda!269895))))

(assert (=> bs!1230323 (= (and (= (regOne!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167929 (regTwo!30420 r!7292))) (= lambda!269907 lambda!269881))))

(assert (=> bs!1230317 (not (= lambda!269907 lambda!269835))))

(assert (=> bs!1230324 (not (= lambda!269907 lambda!269898))))

(assert (=> bs!1230321 (not (= lambda!269907 lambda!269832))))

(assert (=> bs!1230325 (not (= lambda!269907 lambda!269901))))

(assert (=> d!1705457 true))

(assert (=> d!1705457 true))

(assert (=> d!1705457 true))

(assert (=> d!1705457 (= (Exists!2135 lambda!269906) (Exists!2135 lambda!269907))))

(declare-fun lt!2168163 () Unit!153334)

(declare-fun choose!39671 (Regex!14954 Regex!14954 List!61161) Unit!153334)

(assert (=> d!1705457 (= lt!2168163 (choose!39671 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 s!2326))))

(assert (=> d!1705457 (validRegex!6690 (regOne!30420 (regOne!30420 r!7292)))))

(assert (=> d!1705457 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!789 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 s!2326) lt!2168163)))

(declare-fun m!6343328 () Bool)

(assert (=> bs!1230326 m!6343328))

(declare-fun m!6343330 () Bool)

(assert (=> bs!1230326 m!6343330))

(declare-fun m!6343332 () Bool)

(assert (=> bs!1230326 m!6343332))

(assert (=> bs!1230326 m!6343256))

(assert (=> b!5305334 d!1705457))

(declare-fun d!1705459 () Bool)

(assert (=> d!1705459 (= (isDefined!11768 (findConcatSeparation!1479 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 Nil!61037 s!2326 s!2326)) (not (isEmpty!33002 (findConcatSeparation!1479 (regOne!30420 (regOne!30420 r!7292)) lt!2167929 Nil!61037 s!2326 s!2326))))))

(declare-fun bs!1230327 () Bool)

(assert (= bs!1230327 d!1705459))

(assert (=> bs!1230327 m!6342602))

(declare-fun m!6343334 () Bool)

(assert (=> bs!1230327 m!6343334))

(assert (=> b!5305334 d!1705459))

(declare-fun bs!1230328 () Bool)

(declare-fun d!1705461 () Bool)

(assert (= bs!1230328 (and d!1705461 b!5305891)))

(declare-fun lambda!269908 () Int)

(assert (=> bs!1230328 (not (= lambda!269908 lambda!269899))))

(declare-fun bs!1230329 () Bool)

(assert (= bs!1230329 (and d!1705461 b!5305334)))

(assert (=> bs!1230329 (not (= lambda!269908 lambda!269836))))

(declare-fun bs!1230330 () Bool)

(assert (= bs!1230330 (and d!1705461 b!5305856)))

(assert (=> bs!1230330 (not (= lambda!269908 lambda!269892))))

(declare-fun bs!1230331 () Bool)

(assert (= bs!1230331 (and d!1705461 b!5305743)))

(assert (=> bs!1230331 (not (= lambda!269908 lambda!269880))))

(declare-fun bs!1230332 () Bool)

(assert (= bs!1230332 (and d!1705461 b!5305861)))

(assert (=> bs!1230332 (not (= lambda!269908 lambda!269891))))

(declare-fun bs!1230333 () Bool)

(assert (= bs!1230333 (and d!1705461 d!1705457)))

(assert (=> bs!1230333 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 (regOne!30420 r!7292))) (= lt!2167925 lt!2167929)) (= lambda!269908 lambda!269906))))

(assert (=> bs!1230329 (not (= lambda!269908 lambda!269838))))

(assert (=> bs!1230329 (= lambda!269908 lambda!269837)))

(declare-fun bs!1230334 () Bool)

(assert (= bs!1230334 (and d!1705461 d!1705413)))

(assert (=> bs!1230334 (= lambda!269908 lambda!269895)))

(declare-fun bs!1230335 () Bool)

(assert (= bs!1230335 (and d!1705461 b!5305738)))

(assert (=> bs!1230335 (not (= lambda!269908 lambda!269881))))

(assert (=> bs!1230329 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 (regOne!30420 r!7292))) (= lt!2167925 lt!2167929)) (= lambda!269908 lambda!269835))))

(declare-fun bs!1230336 () Bool)

(assert (= bs!1230336 (and d!1705461 b!5305896)))

(assert (=> bs!1230336 (not (= lambda!269908 lambda!269898))))

(declare-fun bs!1230337 () Bool)

(assert (= bs!1230337 (and d!1705461 b!5305316)))

(assert (=> bs!1230337 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167925 (regTwo!30420 r!7292))) (= lambda!269908 lambda!269832))))

(declare-fun bs!1230338 () Bool)

(assert (= bs!1230338 (and d!1705461 d!1705435)))

(assert (=> bs!1230338 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 (regOne!30420 r!7292))) (= lt!2167925 lt!2167929)) (= lambda!269908 lambda!269901))))

(assert (=> bs!1230337 (not (= lambda!269908 lambda!269833))))

(assert (=> bs!1230333 (not (= lambda!269908 lambda!269907))))

(assert (=> d!1705461 true))

(assert (=> d!1705461 true))

(assert (=> d!1705461 true))

(declare-fun bs!1230339 () Bool)

(assert (= bs!1230339 d!1705461))

(declare-fun lambda!269909 () Int)

(assert (=> bs!1230339 (not (= lambda!269909 lambda!269908))))

(assert (=> bs!1230328 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 lt!2167917)) (= lt!2167925 (regTwo!30420 lt!2167917))) (= lambda!269909 lambda!269899))))

(assert (=> bs!1230329 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 (regOne!30420 r!7292))) (= lt!2167925 lt!2167929)) (= lambda!269909 lambda!269836))))

(assert (=> bs!1230330 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 lt!2167929)) (= lt!2167925 (regTwo!30420 lt!2167929))) (= lambda!269909 lambda!269892))))

(assert (=> bs!1230331 (not (= lambda!269909 lambda!269880))))

(assert (=> bs!1230332 (not (= lambda!269909 lambda!269891))))

(assert (=> bs!1230333 (not (= lambda!269909 lambda!269906))))

(assert (=> bs!1230329 (= lambda!269909 lambda!269838)))

(assert (=> bs!1230329 (not (= lambda!269909 lambda!269837))))

(assert (=> bs!1230334 (not (= lambda!269909 lambda!269895))))

(assert (=> bs!1230335 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167925 (regTwo!30420 r!7292))) (= lambda!269909 lambda!269881))))

(assert (=> bs!1230329 (not (= lambda!269909 lambda!269835))))

(assert (=> bs!1230336 (not (= lambda!269909 lambda!269898))))

(assert (=> bs!1230337 (not (= lambda!269909 lambda!269832))))

(assert (=> bs!1230338 (not (= lambda!269909 lambda!269901))))

(assert (=> bs!1230337 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 r!7292)) (= lt!2167925 (regTwo!30420 r!7292))) (= lambda!269909 lambda!269833))))

(assert (=> bs!1230333 (= (and (= (regTwo!30420 (regOne!30420 r!7292)) (regOne!30420 (regOne!30420 r!7292))) (= lt!2167925 lt!2167929)) (= lambda!269909 lambda!269907))))

(assert (=> d!1705461 true))

(assert (=> d!1705461 true))

(assert (=> d!1705461 true))

(assert (=> d!1705461 (= (Exists!2135 lambda!269908) (Exists!2135 lambda!269909))))

(declare-fun lt!2168164 () Unit!153334)

(assert (=> d!1705461 (= lt!2168164 (choose!39671 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 s!2326))))

(assert (=> d!1705461 (validRegex!6690 (regTwo!30420 (regOne!30420 r!7292)))))

(assert (=> d!1705461 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!789 (regTwo!30420 (regOne!30420 r!7292)) lt!2167925 s!2326) lt!2168164)))

(declare-fun m!6343336 () Bool)

(assert (=> bs!1230339 m!6343336))

(declare-fun m!6343338 () Bool)

(assert (=> bs!1230339 m!6343338))

(declare-fun m!6343340 () Bool)

(assert (=> bs!1230339 m!6343340))

(assert (=> bs!1230339 m!6343166))

(assert (=> b!5305334 d!1705461))

(declare-fun b!5305992 () Bool)

(assert (=> b!5305992 true))

(declare-fun bs!1230340 () Bool)

(declare-fun b!5305994 () Bool)

(assert (= bs!1230340 (and b!5305994 b!5305992)))

(declare-fun lt!2168174 () Int)

(declare-fun lambda!269917 () Int)

(declare-fun lt!2168173 () Int)

(declare-fun lambda!269918 () Int)

(assert (=> bs!1230340 (= (= lt!2168174 lt!2168173) (= lambda!269918 lambda!269917))))

(assert (=> b!5305994 true))

(declare-fun d!1705463 () Bool)

(declare-fun e!3297516 () Bool)

(assert (=> d!1705463 e!3297516))

(declare-fun res!2250830 () Bool)

(assert (=> d!1705463 (=> (not res!2250830) (not e!3297516))))

(assert (=> d!1705463 (= res!2250830 (>= lt!2168174 0))))

(declare-fun e!3297515 () Int)

(assert (=> d!1705463 (= lt!2168174 e!3297515)))

(declare-fun c!921331 () Bool)

(assert (=> d!1705463 (= c!921331 (is-Cons!61039 lt!2167937))))

(assert (=> d!1705463 (= (zipperDepth!71 lt!2167937) lt!2168174)))

(assert (=> b!5305992 (= e!3297515 lt!2168173)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!39 (Context!8676) Int)

(assert (=> b!5305992 (= lt!2168173 (maxBigInt!0 (contextDepth!39 (h!67487 lt!2167937)) (zipperDepth!71 (t!374368 lt!2167937))))))

(declare-fun lambda!269916 () Int)

(declare-fun lt!2168175 () Unit!153334)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!33 (List!61163 Int Int Int) Unit!153334)

(assert (=> b!5305992 (= lt!2168175 (lemmaForallContextDepthBiggerThanTransitive!33 (t!374368 lt!2167937) lt!2168173 (zipperDepth!71 (t!374368 lt!2167937)) lambda!269916))))

(declare-fun forall!14369 (List!61163 Int) Bool)

(assert (=> b!5305992 (forall!14369 (t!374368 lt!2167937) lambda!269917)))

(declare-fun lt!2168176 () Unit!153334)

(assert (=> b!5305992 (= lt!2168176 lt!2168175)))

(declare-fun b!5305993 () Bool)

(assert (=> b!5305993 (= e!3297515 0)))

(assert (=> b!5305994 (= e!3297516 (forall!14369 lt!2167937 lambda!269918))))

(assert (= (and d!1705463 c!921331) b!5305992))

(assert (= (and d!1705463 (not c!921331)) b!5305993))

(assert (= (and d!1705463 res!2250830) b!5305994))

(declare-fun m!6343342 () Bool)

(assert (=> b!5305992 m!6343342))

(declare-fun m!6343344 () Bool)

(assert (=> b!5305992 m!6343344))

(declare-fun m!6343346 () Bool)

(assert (=> b!5305992 m!6343346))

(assert (=> b!5305992 m!6343342))

(declare-fun m!6343348 () Bool)

(assert (=> b!5305992 m!6343348))

(assert (=> b!5305992 m!6343342))

(declare-fun m!6343350 () Bool)

(assert (=> b!5305992 m!6343350))

(assert (=> b!5305992 m!6343346))

(declare-fun m!6343352 () Bool)

(assert (=> b!5305994 m!6343352))

(assert (=> b!5305332 d!1705463))

(declare-fun bs!1230341 () Bool)

(declare-fun b!5305997 () Bool)

(assert (= bs!1230341 (and b!5305997 b!5305992)))

(declare-fun lambda!269919 () Int)

(assert (=> bs!1230341 (= lambda!269919 lambda!269916)))

(declare-fun lt!2168177 () Int)

(declare-fun lambda!269920 () Int)

(assert (=> bs!1230341 (= (= lt!2168177 lt!2168173) (= lambda!269920 lambda!269917))))

(declare-fun bs!1230342 () Bool)

(assert (= bs!1230342 (and b!5305997 b!5305994)))

(assert (=> bs!1230342 (= (= lt!2168177 lt!2168174) (= lambda!269920 lambda!269918))))

(assert (=> b!5305997 true))

(declare-fun bs!1230343 () Bool)

(declare-fun b!5305999 () Bool)

(assert (= bs!1230343 (and b!5305999 b!5305992)))

(declare-fun lambda!269921 () Int)

(declare-fun lt!2168178 () Int)

(assert (=> bs!1230343 (= (= lt!2168178 lt!2168173) (= lambda!269921 lambda!269917))))

(declare-fun bs!1230344 () Bool)

(assert (= bs!1230344 (and b!5305999 b!5305994)))

(assert (=> bs!1230344 (= (= lt!2168178 lt!2168174) (= lambda!269921 lambda!269918))))

(declare-fun bs!1230345 () Bool)

(assert (= bs!1230345 (and b!5305999 b!5305997)))

(assert (=> bs!1230345 (= (= lt!2168178 lt!2168177) (= lambda!269921 lambda!269920))))

(assert (=> b!5305999 true))

(declare-fun d!1705465 () Bool)

(declare-fun e!3297518 () Bool)

(assert (=> d!1705465 e!3297518))

(declare-fun res!2250831 () Bool)

(assert (=> d!1705465 (=> (not res!2250831) (not e!3297518))))

(assert (=> d!1705465 (= res!2250831 (>= lt!2168178 0))))

(declare-fun e!3297517 () Int)

(assert (=> d!1705465 (= lt!2168178 e!3297517)))

(declare-fun c!921332 () Bool)

(assert (=> d!1705465 (= c!921332 (is-Cons!61039 zl!343))))

(assert (=> d!1705465 (= (zipperDepth!71 zl!343) lt!2168178)))

(assert (=> b!5305997 (= e!3297517 lt!2168177)))

(assert (=> b!5305997 (= lt!2168177 (maxBigInt!0 (contextDepth!39 (h!67487 zl!343)) (zipperDepth!71 (t!374368 zl!343))))))

(declare-fun lt!2168179 () Unit!153334)

(assert (=> b!5305997 (= lt!2168179 (lemmaForallContextDepthBiggerThanTransitive!33 (t!374368 zl!343) lt!2168177 (zipperDepth!71 (t!374368 zl!343)) lambda!269919))))

(assert (=> b!5305997 (forall!14369 (t!374368 zl!343) lambda!269920)))

(declare-fun lt!2168180 () Unit!153334)

(assert (=> b!5305997 (= lt!2168180 lt!2168179)))

(declare-fun b!5305998 () Bool)

(assert (=> b!5305998 (= e!3297517 0)))

(assert (=> b!5305999 (= e!3297518 (forall!14369 zl!343 lambda!269921))))

(assert (= (and d!1705465 c!921332) b!5305997))

(assert (= (and d!1705465 (not c!921332)) b!5305998))

(assert (= (and d!1705465 res!2250831) b!5305999))

(declare-fun m!6343354 () Bool)

(assert (=> b!5305997 m!6343354))

(declare-fun m!6343356 () Bool)

(assert (=> b!5305997 m!6343356))

(declare-fun m!6343358 () Bool)

(assert (=> b!5305997 m!6343358))

(assert (=> b!5305997 m!6343354))

(declare-fun m!6343360 () Bool)

(assert (=> b!5305997 m!6343360))

(assert (=> b!5305997 m!6343354))

(declare-fun m!6343362 () Bool)

(assert (=> b!5305997 m!6343362))

(assert (=> b!5305997 m!6343358))

(declare-fun m!6343364 () Bool)

(assert (=> b!5305999 m!6343364))

(assert (=> b!5305332 d!1705465))

(declare-fun d!1705467 () Bool)

(declare-fun lt!2168183 () Int)

(assert (=> d!1705467 (>= lt!2168183 0)))

(declare-fun e!3297521 () Int)

(assert (=> d!1705467 (= lt!2168183 e!3297521)))

(declare-fun c!921335 () Bool)

(assert (=> d!1705467 (= c!921335 (is-Cons!61039 lt!2167937))))

(assert (=> d!1705467 (= (zipperDepthTotal!115 lt!2167937) lt!2168183)))

(declare-fun b!5306004 () Bool)

(assert (=> b!5306004 (= e!3297521 (+ (contextDepthTotal!95 (h!67487 lt!2167937)) (zipperDepthTotal!115 (t!374368 lt!2167937))))))

(declare-fun b!5306005 () Bool)

(assert (=> b!5306005 (= e!3297521 0)))

(assert (= (and d!1705467 c!921335) b!5306004))

(assert (= (and d!1705467 (not c!921335)) b!5306005))

(declare-fun m!6343366 () Bool)

(assert (=> b!5306004 m!6343366))

(declare-fun m!6343368 () Bool)

(assert (=> b!5306004 m!6343368))

(assert (=> b!5305336 d!1705467))

(declare-fun d!1705469 () Bool)

(declare-fun lt!2168184 () Int)

(assert (=> d!1705469 (>= lt!2168184 0)))

(declare-fun e!3297522 () Int)

(assert (=> d!1705469 (= lt!2168184 e!3297522)))

(declare-fun c!921336 () Bool)

(assert (=> d!1705469 (= c!921336 (is-Cons!61039 zl!343))))

(assert (=> d!1705469 (= (zipperDepthTotal!115 zl!343) lt!2168184)))

(declare-fun b!5306006 () Bool)

(assert (=> b!5306006 (= e!3297522 (+ (contextDepthTotal!95 (h!67487 zl!343)) (zipperDepthTotal!115 (t!374368 zl!343))))))

(declare-fun b!5306007 () Bool)

(assert (=> b!5306007 (= e!3297522 0)))

(assert (= (and d!1705469 c!921336) b!5306006))

(assert (= (and d!1705469 (not c!921336)) b!5306007))

(assert (=> b!5306006 m!6342676))

(declare-fun m!6343370 () Bool)

(assert (=> b!5306006 m!6343370))

(assert (=> b!5305336 d!1705469))

(declare-fun d!1705471 () Bool)

(declare-fun c!921337 () Bool)

(assert (=> d!1705471 (= c!921337 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297523 () Bool)

(assert (=> d!1705471 (= (matchZipper!1198 lt!2167933 (t!374366 s!2326)) e!3297523)))

(declare-fun b!5306008 () Bool)

(assert (=> b!5306008 (= e!3297523 (nullableZipper!1327 lt!2167933))))

(declare-fun b!5306009 () Bool)

(assert (=> b!5306009 (= e!3297523 (matchZipper!1198 (derivationStepZipper!1197 lt!2167933 (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705471 c!921337) b!5306008))

(assert (= (and d!1705471 (not c!921337)) b!5306009))

(assert (=> d!1705471 m!6342912))

(declare-fun m!6343372 () Bool)

(assert (=> b!5306008 m!6343372))

(assert (=> b!5306009 m!6342916))

(assert (=> b!5306009 m!6342916))

(declare-fun m!6343374 () Bool)

(assert (=> b!5306009 m!6343374))

(assert (=> b!5306009 m!6342920))

(assert (=> b!5306009 m!6343374))

(assert (=> b!5306009 m!6342920))

(declare-fun m!6343376 () Bool)

(assert (=> b!5306009 m!6343376))

(assert (=> b!5305317 d!1705471))

(declare-fun b!5306010 () Bool)

(declare-fun lt!2168187 () Unit!153334)

(declare-fun lt!2168186 () Unit!153334)

(assert (=> b!5306010 (= lt!2168187 lt!2168186)))

(assert (=> b!5306010 (= (++!13307 (++!13307 Nil!61037 (Cons!61037 (h!67485 s!2326) Nil!61037)) (t!374366 s!2326)) s!2326)))

(assert (=> b!5306010 (= lt!2168186 (lemmaMoveElementToOtherListKeepsConcatEq!1722 Nil!61037 (h!67485 s!2326) (t!374366 s!2326) s!2326))))

(declare-fun e!3297527 () Option!15065)

(assert (=> b!5306010 (= e!3297527 (findConcatSeparation!1479 (regOne!30420 r!7292) (regTwo!30420 r!7292) (++!13307 Nil!61037 (Cons!61037 (h!67485 s!2326) Nil!61037)) (t!374366 s!2326) s!2326))))

(declare-fun b!5306011 () Bool)

(declare-fun e!3297528 () Option!15065)

(assert (=> b!5306011 (= e!3297528 (Some!15064 (tuple2!64307 Nil!61037 s!2326)))))

(declare-fun d!1705473 () Bool)

(declare-fun e!3297526 () Bool)

(assert (=> d!1705473 e!3297526))

(declare-fun res!2250832 () Bool)

(assert (=> d!1705473 (=> res!2250832 e!3297526)))

(declare-fun e!3297524 () Bool)

(assert (=> d!1705473 (= res!2250832 e!3297524)))

(declare-fun res!2250836 () Bool)

(assert (=> d!1705473 (=> (not res!2250836) (not e!3297524))))

(declare-fun lt!2168185 () Option!15065)

(assert (=> d!1705473 (= res!2250836 (isDefined!11768 lt!2168185))))

(assert (=> d!1705473 (= lt!2168185 e!3297528)))

(declare-fun c!921338 () Bool)

(declare-fun e!3297525 () Bool)

(assert (=> d!1705473 (= c!921338 e!3297525)))

(declare-fun res!2250835 () Bool)

(assert (=> d!1705473 (=> (not res!2250835) (not e!3297525))))

(assert (=> d!1705473 (= res!2250835 (matchR!7139 (regOne!30420 r!7292) Nil!61037))))

(assert (=> d!1705473 (validRegex!6690 (regOne!30420 r!7292))))

(assert (=> d!1705473 (= (findConcatSeparation!1479 (regOne!30420 r!7292) (regTwo!30420 r!7292) Nil!61037 s!2326 s!2326) lt!2168185)))

(declare-fun b!5306012 () Bool)

(declare-fun res!2250833 () Bool)

(assert (=> b!5306012 (=> (not res!2250833) (not e!3297524))))

(assert (=> b!5306012 (= res!2250833 (matchR!7139 (regOne!30420 r!7292) (_1!35456 (get!20990 lt!2168185))))))

(declare-fun b!5306013 () Bool)

(assert (=> b!5306013 (= e!3297527 None!15064)))

(declare-fun b!5306014 () Bool)

(assert (=> b!5306014 (= e!3297525 (matchR!7139 (regTwo!30420 r!7292) s!2326))))

(declare-fun b!5306015 () Bool)

(assert (=> b!5306015 (= e!3297524 (= (++!13307 (_1!35456 (get!20990 lt!2168185)) (_2!35456 (get!20990 lt!2168185))) s!2326))))

(declare-fun b!5306016 () Bool)

(assert (=> b!5306016 (= e!3297528 e!3297527)))

(declare-fun c!921339 () Bool)

(assert (=> b!5306016 (= c!921339 (is-Nil!61037 s!2326))))

(declare-fun b!5306017 () Bool)

(assert (=> b!5306017 (= e!3297526 (not (isDefined!11768 lt!2168185)))))

(declare-fun b!5306018 () Bool)

(declare-fun res!2250834 () Bool)

(assert (=> b!5306018 (=> (not res!2250834) (not e!3297524))))

(assert (=> b!5306018 (= res!2250834 (matchR!7139 (regTwo!30420 r!7292) (_2!35456 (get!20990 lt!2168185))))))

(assert (= (and d!1705473 res!2250835) b!5306014))

(assert (= (and d!1705473 c!921338) b!5306011))

(assert (= (and d!1705473 (not c!921338)) b!5306016))

(assert (= (and b!5306016 c!921339) b!5306013))

(assert (= (and b!5306016 (not c!921339)) b!5306010))

(assert (= (and d!1705473 res!2250836) b!5306012))

(assert (= (and b!5306012 res!2250833) b!5306018))

(assert (= (and b!5306018 res!2250834) b!5306015))

(assert (= (and d!1705473 (not res!2250832)) b!5306017))

(declare-fun m!6343378 () Bool)

(assert (=> b!5306012 m!6343378))

(declare-fun m!6343380 () Bool)

(assert (=> b!5306012 m!6343380))

(declare-fun m!6343382 () Bool)

(assert (=> d!1705473 m!6343382))

(declare-fun m!6343384 () Bool)

(assert (=> d!1705473 m!6343384))

(declare-fun m!6343386 () Bool)

(assert (=> d!1705473 m!6343386))

(assert (=> b!5306010 m!6343274))

(assert (=> b!5306010 m!6343274))

(assert (=> b!5306010 m!6343276))

(assert (=> b!5306010 m!6343278))

(assert (=> b!5306010 m!6343274))

(declare-fun m!6343388 () Bool)

(assert (=> b!5306010 m!6343388))

(assert (=> b!5306018 m!6343378))

(declare-fun m!6343390 () Bool)

(assert (=> b!5306018 m!6343390))

(declare-fun m!6343392 () Bool)

(assert (=> b!5306014 m!6343392))

(assert (=> b!5306015 m!6343378))

(declare-fun m!6343394 () Bool)

(assert (=> b!5306015 m!6343394))

(assert (=> b!5306017 m!6343382))

(assert (=> b!5305316 d!1705473))

(declare-fun d!1705475 () Bool)

(assert (=> d!1705475 (= (Exists!2135 lambda!269832) (choose!39669 lambda!269832))))

(declare-fun bs!1230346 () Bool)

(assert (= bs!1230346 d!1705475))

(declare-fun m!6343396 () Bool)

(assert (=> bs!1230346 m!6343396))

(assert (=> b!5305316 d!1705475))

(declare-fun d!1705477 () Bool)

(assert (=> d!1705477 (= (Exists!2135 lambda!269833) (choose!39669 lambda!269833))))

(declare-fun bs!1230347 () Bool)

(assert (= bs!1230347 d!1705477))

(declare-fun m!6343398 () Bool)

(assert (=> bs!1230347 m!6343398))

(assert (=> b!5305316 d!1705477))

(declare-fun bs!1230348 () Bool)

(declare-fun d!1705479 () Bool)

(assert (= bs!1230348 (and d!1705479 d!1705461)))

(declare-fun lambda!269922 () Int)

(assert (=> bs!1230348 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269922 lambda!269908))))

(declare-fun bs!1230349 () Bool)

(assert (= bs!1230349 (and d!1705479 b!5305891)))

(assert (=> bs!1230349 (not (= lambda!269922 lambda!269899))))

(assert (=> bs!1230348 (not (= lambda!269922 lambda!269909))))

(declare-fun bs!1230350 () Bool)

(assert (= bs!1230350 (and d!1705479 b!5305334)))

(assert (=> bs!1230350 (not (= lambda!269922 lambda!269836))))

(declare-fun bs!1230351 () Bool)

(assert (= bs!1230351 (and d!1705479 b!5305856)))

(assert (=> bs!1230351 (not (= lambda!269922 lambda!269892))))

(declare-fun bs!1230352 () Bool)

(assert (= bs!1230352 (and d!1705479 b!5305743)))

(assert (=> bs!1230352 (not (= lambda!269922 lambda!269880))))

(declare-fun bs!1230353 () Bool)

(assert (= bs!1230353 (and d!1705479 b!5305861)))

(assert (=> bs!1230353 (not (= lambda!269922 lambda!269891))))

(declare-fun bs!1230354 () Bool)

(assert (= bs!1230354 (and d!1705479 d!1705457)))

(assert (=> bs!1230354 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269922 lambda!269906))))

(assert (=> bs!1230350 (not (= lambda!269922 lambda!269838))))

(assert (=> bs!1230350 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269922 lambda!269837))))

(declare-fun bs!1230355 () Bool)

(assert (= bs!1230355 (and d!1705479 d!1705413)))

(assert (=> bs!1230355 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269922 lambda!269895))))

(declare-fun bs!1230356 () Bool)

(assert (= bs!1230356 (and d!1705479 b!5305738)))

(assert (=> bs!1230356 (not (= lambda!269922 lambda!269881))))

(assert (=> bs!1230350 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269922 lambda!269835))))

(declare-fun bs!1230357 () Bool)

(assert (= bs!1230357 (and d!1705479 b!5305896)))

(assert (=> bs!1230357 (not (= lambda!269922 lambda!269898))))

(declare-fun bs!1230358 () Bool)

(assert (= bs!1230358 (and d!1705479 b!5305316)))

(assert (=> bs!1230358 (= lambda!269922 lambda!269832)))

(declare-fun bs!1230359 () Bool)

(assert (= bs!1230359 (and d!1705479 d!1705435)))

(assert (=> bs!1230359 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269922 lambda!269901))))

(assert (=> bs!1230358 (not (= lambda!269922 lambda!269833))))

(assert (=> bs!1230354 (not (= lambda!269922 lambda!269907))))

(assert (=> d!1705479 true))

(assert (=> d!1705479 true))

(assert (=> d!1705479 true))

(assert (=> d!1705479 (= (isDefined!11768 (findConcatSeparation!1479 (regOne!30420 r!7292) (regTwo!30420 r!7292) Nil!61037 s!2326 s!2326)) (Exists!2135 lambda!269922))))

(declare-fun lt!2168188 () Unit!153334)

(assert (=> d!1705479 (= lt!2168188 (choose!39668 (regOne!30420 r!7292) (regTwo!30420 r!7292) s!2326))))

(assert (=> d!1705479 (validRegex!6690 (regOne!30420 r!7292))))

(assert (=> d!1705479 (= (lemmaFindConcatSeparationEquivalentToExists!1243 (regOne!30420 r!7292) (regTwo!30420 r!7292) s!2326) lt!2168188)))

(declare-fun bs!1230360 () Bool)

(assert (= bs!1230360 d!1705479))

(assert (=> bs!1230360 m!6342568))

(assert (=> bs!1230360 m!6342570))

(declare-fun m!6343400 () Bool)

(assert (=> bs!1230360 m!6343400))

(assert (=> bs!1230360 m!6343386))

(assert (=> bs!1230360 m!6342568))

(declare-fun m!6343402 () Bool)

(assert (=> bs!1230360 m!6343402))

(assert (=> b!5305316 d!1705479))

(declare-fun bs!1230361 () Bool)

(declare-fun d!1705481 () Bool)

(assert (= bs!1230361 (and d!1705481 b!5305891)))

(declare-fun lambda!269923 () Int)

(assert (=> bs!1230361 (not (= lambda!269923 lambda!269899))))

(declare-fun bs!1230362 () Bool)

(assert (= bs!1230362 (and d!1705481 d!1705461)))

(assert (=> bs!1230362 (not (= lambda!269923 lambda!269909))))

(declare-fun bs!1230363 () Bool)

(assert (= bs!1230363 (and d!1705481 b!5305334)))

(assert (=> bs!1230363 (not (= lambda!269923 lambda!269836))))

(declare-fun bs!1230364 () Bool)

(assert (= bs!1230364 (and d!1705481 b!5305856)))

(assert (=> bs!1230364 (not (= lambda!269923 lambda!269892))))

(declare-fun bs!1230365 () Bool)

(assert (= bs!1230365 (and d!1705481 b!5305743)))

(assert (=> bs!1230365 (not (= lambda!269923 lambda!269880))))

(declare-fun bs!1230366 () Bool)

(assert (= bs!1230366 (and d!1705481 b!5305861)))

(assert (=> bs!1230366 (not (= lambda!269923 lambda!269891))))

(declare-fun bs!1230367 () Bool)

(assert (= bs!1230367 (and d!1705481 d!1705457)))

(assert (=> bs!1230367 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269923 lambda!269906))))

(assert (=> bs!1230363 (not (= lambda!269923 lambda!269838))))

(assert (=> bs!1230363 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269923 lambda!269837))))

(declare-fun bs!1230368 () Bool)

(assert (= bs!1230368 (and d!1705481 d!1705413)))

(assert (=> bs!1230368 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269923 lambda!269895))))

(assert (=> bs!1230362 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269923 lambda!269908))))

(declare-fun bs!1230369 () Bool)

(assert (= bs!1230369 (and d!1705481 d!1705479)))

(assert (=> bs!1230369 (= lambda!269923 lambda!269922)))

(declare-fun bs!1230370 () Bool)

(assert (= bs!1230370 (and d!1705481 b!5305738)))

(assert (=> bs!1230370 (not (= lambda!269923 lambda!269881))))

(assert (=> bs!1230363 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269923 lambda!269835))))

(declare-fun bs!1230371 () Bool)

(assert (= bs!1230371 (and d!1705481 b!5305896)))

(assert (=> bs!1230371 (not (= lambda!269923 lambda!269898))))

(declare-fun bs!1230372 () Bool)

(assert (= bs!1230372 (and d!1705481 b!5305316)))

(assert (=> bs!1230372 (= lambda!269923 lambda!269832)))

(declare-fun bs!1230373 () Bool)

(assert (= bs!1230373 (and d!1705481 d!1705435)))

(assert (=> bs!1230373 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269923 lambda!269901))))

(assert (=> bs!1230372 (not (= lambda!269923 lambda!269833))))

(assert (=> bs!1230367 (not (= lambda!269923 lambda!269907))))

(assert (=> d!1705481 true))

(assert (=> d!1705481 true))

(assert (=> d!1705481 true))

(declare-fun lambda!269924 () Int)

(assert (=> bs!1230361 (= (and (= (regOne!30420 r!7292) (regOne!30420 lt!2167917)) (= (regTwo!30420 r!7292) (regTwo!30420 lt!2167917))) (= lambda!269924 lambda!269899))))

(assert (=> bs!1230362 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269924 lambda!269909))))

(assert (=> bs!1230363 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269924 lambda!269836))))

(assert (=> bs!1230364 (= (and (= (regOne!30420 r!7292) (regOne!30420 lt!2167929)) (= (regTwo!30420 r!7292) (regTwo!30420 lt!2167929))) (= lambda!269924 lambda!269892))))

(assert (=> bs!1230365 (not (= lambda!269924 lambda!269880))))

(declare-fun bs!1230374 () Bool)

(assert (= bs!1230374 d!1705481))

(assert (=> bs!1230374 (not (= lambda!269924 lambda!269923))))

(assert (=> bs!1230366 (not (= lambda!269924 lambda!269891))))

(assert (=> bs!1230367 (not (= lambda!269924 lambda!269906))))

(assert (=> bs!1230363 (= (and (= (regOne!30420 r!7292) (regTwo!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167925)) (= lambda!269924 lambda!269838))))

(assert (=> bs!1230363 (not (= lambda!269924 lambda!269837))))

(assert (=> bs!1230368 (not (= lambda!269924 lambda!269895))))

(assert (=> bs!1230362 (not (= lambda!269924 lambda!269908))))

(assert (=> bs!1230369 (not (= lambda!269924 lambda!269922))))

(assert (=> bs!1230370 (= lambda!269924 lambda!269881)))

(assert (=> bs!1230363 (not (= lambda!269924 lambda!269835))))

(assert (=> bs!1230371 (not (= lambda!269924 lambda!269898))))

(assert (=> bs!1230372 (not (= lambda!269924 lambda!269832))))

(assert (=> bs!1230373 (not (= lambda!269924 lambda!269901))))

(assert (=> bs!1230372 (= lambda!269924 lambda!269833)))

(assert (=> bs!1230367 (= (and (= (regOne!30420 r!7292) (regOne!30420 (regOne!30420 r!7292))) (= (regTwo!30420 r!7292) lt!2167929)) (= lambda!269924 lambda!269907))))

(assert (=> d!1705481 true))

(assert (=> d!1705481 true))

(assert (=> d!1705481 true))

(assert (=> d!1705481 (= (Exists!2135 lambda!269923) (Exists!2135 lambda!269924))))

(declare-fun lt!2168189 () Unit!153334)

(assert (=> d!1705481 (= lt!2168189 (choose!39671 (regOne!30420 r!7292) (regTwo!30420 r!7292) s!2326))))

(assert (=> d!1705481 (validRegex!6690 (regOne!30420 r!7292))))

(assert (=> d!1705481 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!789 (regOne!30420 r!7292) (regTwo!30420 r!7292) s!2326) lt!2168189)))

(declare-fun m!6343404 () Bool)

(assert (=> bs!1230374 m!6343404))

(declare-fun m!6343406 () Bool)

(assert (=> bs!1230374 m!6343406))

(declare-fun m!6343408 () Bool)

(assert (=> bs!1230374 m!6343408))

(assert (=> bs!1230374 m!6343386))

(assert (=> b!5305316 d!1705481))

(declare-fun d!1705483 () Bool)

(assert (=> d!1705483 (= (isDefined!11768 (findConcatSeparation!1479 (regOne!30420 r!7292) (regTwo!30420 r!7292) Nil!61037 s!2326 s!2326)) (not (isEmpty!33002 (findConcatSeparation!1479 (regOne!30420 r!7292) (regTwo!30420 r!7292) Nil!61037 s!2326 s!2326))))))

(declare-fun bs!1230375 () Bool)

(assert (= bs!1230375 d!1705483))

(assert (=> bs!1230375 m!6342568))

(declare-fun m!6343410 () Bool)

(assert (=> bs!1230375 m!6343410))

(assert (=> b!5305316 d!1705483))

(declare-fun b!5306019 () Bool)

(declare-fun e!3297530 () Bool)

(declare-fun call!378271 () Bool)

(assert (=> b!5306019 (= e!3297530 call!378271)))

(declare-fun call!378272 () Bool)

(declare-fun c!921340 () Bool)

(declare-fun bm!378265 () Bool)

(declare-fun c!921341 () Bool)

(assert (=> bm!378265 (= call!378272 (validRegex!6690 (ite c!921341 (reg!15283 (Concat!23799 lt!2167943 lt!2167925)) (ite c!921340 (regOne!30421 (Concat!23799 lt!2167943 lt!2167925)) (regOne!30420 (Concat!23799 lt!2167943 lt!2167925))))))))

(declare-fun bm!378266 () Bool)

(assert (=> bm!378266 (= call!378271 (validRegex!6690 (ite c!921340 (regTwo!30421 (Concat!23799 lt!2167943 lt!2167925)) (regTwo!30420 (Concat!23799 lt!2167943 lt!2167925)))))))

(declare-fun bm!378267 () Bool)

(declare-fun call!378270 () Bool)

(assert (=> bm!378267 (= call!378270 call!378272)))

(declare-fun b!5306020 () Bool)

(declare-fun res!2250839 () Bool)

(assert (=> b!5306020 (=> (not res!2250839) (not e!3297530))))

(assert (=> b!5306020 (= res!2250839 call!378270)))

(declare-fun e!3297535 () Bool)

(assert (=> b!5306020 (= e!3297535 e!3297530)))

(declare-fun b!5306021 () Bool)

(declare-fun e!3297531 () Bool)

(assert (=> b!5306021 (= e!3297531 e!3297535)))

(assert (=> b!5306021 (= c!921340 (is-Union!14954 (Concat!23799 lt!2167943 lt!2167925)))))

(declare-fun d!1705485 () Bool)

(declare-fun res!2250838 () Bool)

(declare-fun e!3297534 () Bool)

(assert (=> d!1705485 (=> res!2250838 e!3297534)))

(assert (=> d!1705485 (= res!2250838 (is-ElementMatch!14954 (Concat!23799 lt!2167943 lt!2167925)))))

(assert (=> d!1705485 (= (validRegex!6690 (Concat!23799 lt!2167943 lt!2167925)) e!3297534)))

(declare-fun b!5306022 () Bool)

(declare-fun e!3297533 () Bool)

(declare-fun e!3297532 () Bool)

(assert (=> b!5306022 (= e!3297533 e!3297532)))

(declare-fun res!2250840 () Bool)

(assert (=> b!5306022 (=> (not res!2250840) (not e!3297532))))

(assert (=> b!5306022 (= res!2250840 call!378270)))

(declare-fun b!5306023 () Bool)

(assert (=> b!5306023 (= e!3297534 e!3297531)))

(assert (=> b!5306023 (= c!921341 (is-Star!14954 (Concat!23799 lt!2167943 lt!2167925)))))

(declare-fun b!5306024 () Bool)

(declare-fun e!3297529 () Bool)

(assert (=> b!5306024 (= e!3297531 e!3297529)))

(declare-fun res!2250837 () Bool)

(assert (=> b!5306024 (= res!2250837 (not (nullable!5123 (reg!15283 (Concat!23799 lt!2167943 lt!2167925)))))))

(assert (=> b!5306024 (=> (not res!2250837) (not e!3297529))))

(declare-fun b!5306025 () Bool)

(assert (=> b!5306025 (= e!3297529 call!378272)))

(declare-fun b!5306026 () Bool)

(assert (=> b!5306026 (= e!3297532 call!378271)))

(declare-fun b!5306027 () Bool)

(declare-fun res!2250841 () Bool)

(assert (=> b!5306027 (=> res!2250841 e!3297533)))

(assert (=> b!5306027 (= res!2250841 (not (is-Concat!23799 (Concat!23799 lt!2167943 lt!2167925))))))

(assert (=> b!5306027 (= e!3297535 e!3297533)))

(assert (= (and d!1705485 (not res!2250838)) b!5306023))

(assert (= (and b!5306023 c!921341) b!5306024))

(assert (= (and b!5306023 (not c!921341)) b!5306021))

(assert (= (and b!5306024 res!2250837) b!5306025))

(assert (= (and b!5306021 c!921340) b!5306020))

(assert (= (and b!5306021 (not c!921340)) b!5306027))

(assert (= (and b!5306020 res!2250839) b!5306019))

(assert (= (and b!5306027 (not res!2250841)) b!5306022))

(assert (= (and b!5306022 res!2250840) b!5306026))

(assert (= (or b!5306019 b!5306026) bm!378266))

(assert (= (or b!5306020 b!5306022) bm!378267))

(assert (= (or b!5306025 bm!378267) bm!378265))

(declare-fun m!6343412 () Bool)

(assert (=> bm!378265 m!6343412))

(declare-fun m!6343414 () Bool)

(assert (=> bm!378266 m!6343414))

(declare-fun m!6343416 () Bool)

(assert (=> b!5306024 m!6343416))

(assert (=> b!5305335 d!1705485))

(declare-fun d!1705487 () Bool)

(declare-fun c!921342 () Bool)

(assert (=> d!1705487 (= c!921342 (isEmpty!33001 (t!374366 s!2326)))))

(declare-fun e!3297536 () Bool)

(assert (=> d!1705487 (= (matchZipper!1198 (derivationStepZipper!1197 lt!2167908 (h!67485 s!2326)) (t!374366 s!2326)) e!3297536)))

(declare-fun b!5306028 () Bool)

(assert (=> b!5306028 (= e!3297536 (nullableZipper!1327 (derivationStepZipper!1197 lt!2167908 (h!67485 s!2326))))))

(declare-fun b!5306029 () Bool)

(assert (=> b!5306029 (= e!3297536 (matchZipper!1198 (derivationStepZipper!1197 (derivationStepZipper!1197 lt!2167908 (h!67485 s!2326)) (head!11372 (t!374366 s!2326))) (tail!10469 (t!374366 s!2326))))))

(assert (= (and d!1705487 c!921342) b!5306028))

(assert (= (and d!1705487 (not c!921342)) b!5306029))

(assert (=> d!1705487 m!6342912))

(assert (=> b!5306028 m!6342644))

(declare-fun m!6343418 () Bool)

(assert (=> b!5306028 m!6343418))

(assert (=> b!5306029 m!6342916))

(assert (=> b!5306029 m!6342644))

(assert (=> b!5306029 m!6342916))

(declare-fun m!6343420 () Bool)

(assert (=> b!5306029 m!6343420))

(assert (=> b!5306029 m!6342920))

(assert (=> b!5306029 m!6343420))

(assert (=> b!5306029 m!6342920))

(declare-fun m!6343422 () Bool)

(assert (=> b!5306029 m!6343422))

(assert (=> b!5305318 d!1705487))

(declare-fun bs!1230376 () Bool)

(declare-fun d!1705489 () Bool)

(assert (= bs!1230376 (and d!1705489 b!5305323)))

(declare-fun lambda!269925 () Int)

(assert (=> bs!1230376 (= lambda!269925 lambda!269834)))

(declare-fun bs!1230377 () Bool)

(assert (= bs!1230377 (and d!1705489 d!1705367)))

(assert (=> bs!1230377 (= lambda!269925 lambda!269872)))

(assert (=> d!1705489 true))

(assert (=> d!1705489 (= (derivationStepZipper!1197 lt!2167908 (h!67485 s!2326)) (flatMap!681 lt!2167908 lambda!269925))))

(declare-fun bs!1230378 () Bool)

(assert (= bs!1230378 d!1705489))

(declare-fun m!6343424 () Bool)

(assert (=> bs!1230378 m!6343424))

(assert (=> b!5305318 d!1705489))

(assert (=> b!5305339 d!1705325))

(declare-fun bs!1230379 () Bool)

(declare-fun d!1705491 () Bool)

(assert (= bs!1230379 (and d!1705491 d!1705419)))

(declare-fun lambda!269926 () Int)

(assert (=> bs!1230379 (= lambda!269926 lambda!269896)))

(declare-fun bs!1230380 () Bool)

(assert (= bs!1230380 (and d!1705491 d!1705421)))

(assert (=> bs!1230380 (= lambda!269926 lambda!269897)))

(declare-fun bs!1230381 () Bool)

(assert (= bs!1230381 (and d!1705491 d!1705399)))

(assert (=> bs!1230381 (= lambda!269926 lambda!269890)))

(declare-fun bs!1230382 () Bool)

(assert (= bs!1230382 (and d!1705491 d!1705375)))

(assert (=> bs!1230382 (= lambda!269926 lambda!269875)))

(declare-fun bs!1230383 () Bool)

(assert (= bs!1230383 (and d!1705491 d!1705433)))

(assert (=> bs!1230383 (= lambda!269926 lambda!269900)))

(declare-fun bs!1230384 () Bool)

(assert (= bs!1230384 (and d!1705491 d!1705395)))

(assert (=> bs!1230384 (= lambda!269926 lambda!269884)))

(declare-fun bs!1230385 () Bool)

(assert (= bs!1230385 (and d!1705491 d!1705397)))

(assert (=> bs!1230385 (= lambda!269926 lambda!269887)))

(assert (=> d!1705491 (= (inv!80633 setElem!34100) (forall!14368 (exprs!4838 setElem!34100) lambda!269926))))

(declare-fun bs!1230386 () Bool)

(assert (= bs!1230386 d!1705491))

(declare-fun m!6343426 () Bool)

(assert (=> bs!1230386 m!6343426))

(assert (=> setNonEmpty!34100 d!1705491))

(declare-fun d!1705493 () Bool)

(assert (=> d!1705493 (= (isEmpty!32998 (t!374368 zl!343)) (is-Nil!61039 (t!374368 zl!343)))))

(assert (=> b!5305337 d!1705493))

(declare-fun b!5306034 () Bool)

(declare-fun e!3297539 () Bool)

(declare-fun tp!1478934 () Bool)

(declare-fun tp!1478935 () Bool)

(assert (=> b!5306034 (= e!3297539 (and tp!1478934 tp!1478935))))

(assert (=> b!5305352 (= tp!1478891 e!3297539)))

(assert (= (and b!5305352 (is-Cons!61038 (exprs!4838 setElem!34100))) b!5306034))

(declare-fun b!5306039 () Bool)

(declare-fun e!3297542 () Bool)

(declare-fun tp!1478938 () Bool)

(assert (=> b!5306039 (= e!3297542 (and tp_is_empty!39161 tp!1478938))))

(assert (=> b!5305329 (= tp!1478899 e!3297542)))

(assert (= (and b!5305329 (is-Cons!61037 (t!374366 s!2326))) b!5306039))

(declare-fun b!5306053 () Bool)

(declare-fun e!3297545 () Bool)

(declare-fun tp!1478951 () Bool)

(declare-fun tp!1478952 () Bool)

(assert (=> b!5306053 (= e!3297545 (and tp!1478951 tp!1478952))))

(declare-fun b!5306052 () Bool)

(declare-fun tp!1478950 () Bool)

(assert (=> b!5306052 (= e!3297545 tp!1478950)))

(declare-fun b!5306050 () Bool)

(assert (=> b!5306050 (= e!3297545 tp_is_empty!39161)))

(declare-fun b!5306051 () Bool)

(declare-fun tp!1478949 () Bool)

(declare-fun tp!1478953 () Bool)

(assert (=> b!5306051 (= e!3297545 (and tp!1478949 tp!1478953))))

(assert (=> b!5305330 (= tp!1478892 e!3297545)))

(assert (= (and b!5305330 (is-ElementMatch!14954 (regOne!30420 r!7292))) b!5306050))

(assert (= (and b!5305330 (is-Concat!23799 (regOne!30420 r!7292))) b!5306051))

(assert (= (and b!5305330 (is-Star!14954 (regOne!30420 r!7292))) b!5306052))

(assert (= (and b!5305330 (is-Union!14954 (regOne!30420 r!7292))) b!5306053))

(declare-fun b!5306057 () Bool)

(declare-fun e!3297546 () Bool)

(declare-fun tp!1478956 () Bool)

(declare-fun tp!1478957 () Bool)

(assert (=> b!5306057 (= e!3297546 (and tp!1478956 tp!1478957))))

(declare-fun b!5306056 () Bool)

(declare-fun tp!1478955 () Bool)

(assert (=> b!5306056 (= e!3297546 tp!1478955)))

(declare-fun b!5306054 () Bool)

(assert (=> b!5306054 (= e!3297546 tp_is_empty!39161)))

(declare-fun b!5306055 () Bool)

(declare-fun tp!1478954 () Bool)

(declare-fun tp!1478958 () Bool)

(assert (=> b!5306055 (= e!3297546 (and tp!1478954 tp!1478958))))

(assert (=> b!5305330 (= tp!1478893 e!3297546)))

(assert (= (and b!5305330 (is-ElementMatch!14954 (regTwo!30420 r!7292))) b!5306054))

(assert (= (and b!5305330 (is-Concat!23799 (regTwo!30420 r!7292))) b!5306055))

(assert (= (and b!5305330 (is-Star!14954 (regTwo!30420 r!7292))) b!5306056))

(assert (= (and b!5305330 (is-Union!14954 (regTwo!30420 r!7292))) b!5306057))

(declare-fun b!5306061 () Bool)

(declare-fun e!3297547 () Bool)

(declare-fun tp!1478961 () Bool)

(declare-fun tp!1478962 () Bool)

(assert (=> b!5306061 (= e!3297547 (and tp!1478961 tp!1478962))))

(declare-fun b!5306060 () Bool)

(declare-fun tp!1478960 () Bool)

(assert (=> b!5306060 (= e!3297547 tp!1478960)))

(declare-fun b!5306058 () Bool)

(assert (=> b!5306058 (= e!3297547 tp_is_empty!39161)))

(declare-fun b!5306059 () Bool)

(declare-fun tp!1478959 () Bool)

(declare-fun tp!1478963 () Bool)

(assert (=> b!5306059 (= e!3297547 (and tp!1478959 tp!1478963))))

(assert (=> b!5305351 (= tp!1478894 e!3297547)))

(assert (= (and b!5305351 (is-ElementMatch!14954 (regOne!30421 r!7292))) b!5306058))

(assert (= (and b!5305351 (is-Concat!23799 (regOne!30421 r!7292))) b!5306059))

(assert (= (and b!5305351 (is-Star!14954 (regOne!30421 r!7292))) b!5306060))

(assert (= (and b!5305351 (is-Union!14954 (regOne!30421 r!7292))) b!5306061))

(declare-fun b!5306065 () Bool)

(declare-fun e!3297548 () Bool)

(declare-fun tp!1478966 () Bool)

(declare-fun tp!1478967 () Bool)

(assert (=> b!5306065 (= e!3297548 (and tp!1478966 tp!1478967))))

(declare-fun b!5306064 () Bool)

(declare-fun tp!1478965 () Bool)

(assert (=> b!5306064 (= e!3297548 tp!1478965)))

(declare-fun b!5306062 () Bool)

(assert (=> b!5306062 (= e!3297548 tp_is_empty!39161)))

(declare-fun b!5306063 () Bool)

(declare-fun tp!1478964 () Bool)

(declare-fun tp!1478968 () Bool)

(assert (=> b!5306063 (= e!3297548 (and tp!1478964 tp!1478968))))

(assert (=> b!5305351 (= tp!1478898 e!3297548)))

(assert (= (and b!5305351 (is-ElementMatch!14954 (regTwo!30421 r!7292))) b!5306062))

(assert (= (and b!5305351 (is-Concat!23799 (regTwo!30421 r!7292))) b!5306063))

(assert (= (and b!5305351 (is-Star!14954 (regTwo!30421 r!7292))) b!5306064))

(assert (= (and b!5305351 (is-Union!14954 (regTwo!30421 r!7292))) b!5306065))

(declare-fun b!5306069 () Bool)

(declare-fun e!3297549 () Bool)

(declare-fun tp!1478971 () Bool)

(declare-fun tp!1478972 () Bool)

(assert (=> b!5306069 (= e!3297549 (and tp!1478971 tp!1478972))))

(declare-fun b!5306068 () Bool)

(declare-fun tp!1478970 () Bool)

(assert (=> b!5306068 (= e!3297549 tp!1478970)))

(declare-fun b!5306066 () Bool)

(assert (=> b!5306066 (= e!3297549 tp_is_empty!39161)))

(declare-fun b!5306067 () Bool)

(declare-fun tp!1478969 () Bool)

(declare-fun tp!1478973 () Bool)

(assert (=> b!5306067 (= e!3297549 (and tp!1478969 tp!1478973))))

(assert (=> b!5305314 (= tp!1478896 e!3297549)))

(assert (= (and b!5305314 (is-ElementMatch!14954 (reg!15283 r!7292))) b!5306066))

(assert (= (and b!5305314 (is-Concat!23799 (reg!15283 r!7292))) b!5306067))

(assert (= (and b!5305314 (is-Star!14954 (reg!15283 r!7292))) b!5306068))

(assert (= (and b!5305314 (is-Union!14954 (reg!15283 r!7292))) b!5306069))

(declare-fun b!5306077 () Bool)

(declare-fun e!3297555 () Bool)

(declare-fun tp!1478978 () Bool)

(assert (=> b!5306077 (= e!3297555 tp!1478978)))

(declare-fun e!3297554 () Bool)

(declare-fun b!5306076 () Bool)

(declare-fun tp!1478979 () Bool)

(assert (=> b!5306076 (= e!3297554 (and (inv!80633 (h!67487 (t!374368 zl!343))) e!3297555 tp!1478979))))

(assert (=> b!5305350 (= tp!1478895 e!3297554)))

(assert (= b!5306076 b!5306077))

(assert (= (and b!5305350 (is-Cons!61039 (t!374368 zl!343))) b!5306076))

(declare-fun m!6343428 () Bool)

(assert (=> b!5306076 m!6343428))

(declare-fun condSetEmpty!34106 () Bool)

(assert (=> setNonEmpty!34100 (= condSetEmpty!34106 (= setRest!34100 (as set.empty (Set Context!8676))))))

(declare-fun setRes!34106 () Bool)

(assert (=> setNonEmpty!34100 (= tp!1478890 setRes!34106)))

(declare-fun setIsEmpty!34106 () Bool)

(assert (=> setIsEmpty!34106 setRes!34106))

(declare-fun setElem!34106 () Context!8676)

(declare-fun tp!1478984 () Bool)

(declare-fun setNonEmpty!34106 () Bool)

(declare-fun e!3297558 () Bool)

(assert (=> setNonEmpty!34106 (= setRes!34106 (and tp!1478984 (inv!80633 setElem!34106) e!3297558))))

(declare-fun setRest!34106 () (Set Context!8676))

(assert (=> setNonEmpty!34106 (= setRest!34100 (set.union (set.insert setElem!34106 (as set.empty (Set Context!8676))) setRest!34106))))

(declare-fun b!5306082 () Bool)

(declare-fun tp!1478985 () Bool)

(assert (=> b!5306082 (= e!3297558 tp!1478985)))

(assert (= (and setNonEmpty!34100 condSetEmpty!34106) setIsEmpty!34106))

(assert (= (and setNonEmpty!34100 (not condSetEmpty!34106)) setNonEmpty!34106))

(assert (= setNonEmpty!34106 b!5306082))

(declare-fun m!6343430 () Bool)

(assert (=> setNonEmpty!34106 m!6343430))

(declare-fun b!5306083 () Bool)

(declare-fun e!3297559 () Bool)

(declare-fun tp!1478986 () Bool)

(declare-fun tp!1478987 () Bool)

(assert (=> b!5306083 (= e!3297559 (and tp!1478986 tp!1478987))))

(assert (=> b!5305338 (= tp!1478897 e!3297559)))

(assert (= (and b!5305338 (is-Cons!61038 (exprs!4838 (h!67487 zl!343)))) b!5306083))

(declare-fun b_lambda!204323 () Bool)

(assert (= b_lambda!204317 (or b!5305323 b_lambda!204323)))

(declare-fun bs!1230387 () Bool)

(declare-fun d!1705495 () Bool)

(assert (= bs!1230387 (and d!1705495 b!5305323)))

(assert (=> bs!1230387 (= (dynLambda!24126 lambda!269834 (h!67487 zl!343)) (derivationStepZipperUp!326 (h!67487 zl!343) (h!67485 s!2326)))))

(assert (=> bs!1230387 m!6342652))

(assert (=> d!1705351 d!1705495))

(declare-fun b_lambda!204325 () Bool)

(assert (= b_lambda!204319 (or b!5305323 b_lambda!204325)))

(declare-fun bs!1230388 () Bool)

(declare-fun d!1705497 () Bool)

(assert (= bs!1230388 (and d!1705497 b!5305323)))

(assert (=> bs!1230388 (= (dynLambda!24126 lambda!269834 lt!2167902) (derivationStepZipperUp!326 lt!2167902 (h!67485 s!2326)))))

(assert (=> bs!1230388 m!6342726))

(assert (=> d!1705369 d!1705497))

(declare-fun b_lambda!204327 () Bool)

(assert (= b_lambda!204321 (or b!5305323 b_lambda!204327)))

(declare-fun bs!1230389 () Bool)

(declare-fun d!1705499 () Bool)

(assert (= bs!1230389 (and d!1705499 b!5305323)))

(assert (=> bs!1230389 (= (dynLambda!24126 lambda!269834 lt!2167944) (derivationStepZipperUp!326 lt!2167944 (h!67485 s!2326)))))

(assert (=> bs!1230389 m!6342702))

(assert (=> d!1705387 d!1705499))

(push 1)

(assert (not b!5305966))

(assert (not d!1705453))

(assert (not b!5305570))

(assert (not b!5305974))

(assert (not b!5306063))

(assert (not b!5305750))

(assert (not b!5305661))

(assert (not bm!378261))

(assert (not b!5305967))

(assert (not b!5305782))

(assert (not d!1705407))

(assert (not b!5305913))

(assert (not d!1705335))

(assert (not b!5306076))

(assert (not b!5305900))

(assert (not setNonEmpty!34106))

(assert (not b!5305883))

(assert (not b!5305811))

(assert (not d!1705421))

(assert (not b!5305641))

(assert (not d!1705389))

(assert (not b!5305868))

(assert (not b!5305748))

(assert (not b!5306024))

(assert (not b!5305877))

(assert (not b!5306018))

(assert (not b!5305920))

(assert (not b!5305894))

(assert (not bm!378228))

(assert (not b!5305736))

(assert (not bm!378258))

(assert (not b!5305834))

(assert (not b!5305572))

(assert (not d!1705449))

(assert (not b!5305594))

(assert (not b!5305818))

(assert (not bm!378252))

(assert (not b!5305697))

(assert (not d!1705361))

(assert (not b!5305961))

(assert (not b!5305786))

(assert (not d!1705359))

(assert (not b!5305947))

(assert (not d!1705337))

(assert (not b!5306083))

(assert (not b!5305788))

(assert (not b!5305969))

(assert (not d!1705379))

(assert (not b!5305656))

(assert (not b!5305557))

(assert (not b!5305652))

(assert (not b!5305787))

(assert (not bs!1230388))

(assert (not d!1705443))

(assert (not bs!1230389))

(assert (not d!1705339))

(assert (not b!5305668))

(assert (not b!5305850))

(assert (not b!5305956))

(assert (not b!5306067))

(assert (not b!5306034))

(assert (not b!5305992))

(assert (not bm!378237))

(assert (not b!5305919))

(assert (not b!5306059))

(assert (not b!5306061))

(assert (not d!1705487))

(assert (not b!5305964))

(assert (not d!1705357))

(assert (not b!5305874))

(assert (not b!5305819))

(assert (not b!5305698))

(assert (not d!1705423))

(assert (not b!5305885))

(assert (not b!5305859))

(assert (not b!5305997))

(assert (not b!5305845))

(assert (not b!5305878))

(assert (not b!5305659))

(assert (not bm!378266))

(assert (not b!5305593))

(assert (not b!5306055))

(assert (not bm!378255))

(assert (not b!5305648))

(assert (not b!5305577))

(assert (not b!5306015))

(assert (not b!5305908))

(assert (not b!5306004))

(assert (not b!5305758))

(assert (not b!5305555))

(assert (not bm!378265))

(assert (not d!1705413))

(assert (not b!5305579))

(assert (not b_lambda!204325))

(assert (not bm!378209))

(assert (not d!1705435))

(assert (not b!5305693))

(assert (not b!5305574))

(assert (not b!5305949))

(assert (not bm!378208))

(assert (not bm!378260))

(assert tp_is_empty!39161)

(assert (not b!5305561))

(assert (not bm!378235))

(assert (not d!1705433))

(assert (not d!1705417))

(assert (not d!1705481))

(assert (not b!5305942))

(assert (not b!5306068))

(assert (not b!5306057))

(assert (not b!5305575))

(assert (not b!5305599))

(assert (not b!5306069))

(assert (not b!5305814))

(assert (not d!1705409))

(assert (not d!1705461))

(assert (not b_lambda!204327))

(assert (not bm!378262))

(assert (not d!1705451))

(assert (not d!1705373))

(assert (not b!5305882))

(assert (not b!5306029))

(assert (not b!5306082))

(assert (not d!1705399))

(assert (not b!5305994))

(assert (not b!5306028))

(assert (not d!1705369))

(assert (not d!1705437))

(assert (not b!5305757))

(assert (not bm!378247))

(assert (not bs!1230387))

(assert (not b!5306053))

(assert (not b!5305869))

(assert (not d!1705439))

(assert (not d!1705333))

(assert (not b!5305976))

(assert (not b!5305977))

(assert (not d!1705393))

(assert (not d!1705325))

(assert (not b!5305905))

(assert (not b!5305789))

(assert (not b!5305873))

(assert (not b!5305960))

(assert (not b!5305637))

(assert (not b!5305963))

(assert (not b!5305523))

(assert (not b!5305944))

(assert (not b!5305825))

(assert (not b!5305562))

(assert (not b!5305901))

(assert (not d!1705427))

(assert (not b!5305972))

(assert (not b!5305653))

(assert (not d!1705475))

(assert (not b!5305565))

(assert (not b!5305755))

(assert (not d!1705441))

(assert (not d!1705483))

(assert (not b!5305522))

(assert (not b!5305667))

(assert (not d!1705491))

(assert (not b!5306056))

(assert (not bm!378244))

(assert (not d!1705349))

(assert (not b!5305813))

(assert (not b!5305975))

(assert (not b!5306017))

(assert (not b!5306060))

(assert (not b!5306010))

(assert (not b!5306008))

(assert (not b!5305655))

(assert (not b!5306064))

(assert (not bm!378263))

(assert (not d!1705445))

(assert (not b!5305576))

(assert (not b!5306006))

(assert (not b!5305790))

(assert (not b!5305692))

(assert (not b!5305950))

(assert (not d!1705419))

(assert (not b!5305598))

(assert (not b!5306065))

(assert (not d!1705431))

(assert (not bm!378207))

(assert (not d!1705381))

(assert (not b!5305898))

(assert (not bm!378222))

(assert (not d!1705387))

(assert (not b!5305906))

(assert (not b!5306014))

(assert (not d!1705351))

(assert (not b!5305741))

(assert (not bm!378204))

(assert (not d!1705415))

(assert (not d!1705457))

(assert (not bm!378264))

(assert (not b!5305578))

(assert (not bm!378227))

(assert (not b!5305999))

(assert (not bm!378245))

(assert (not bm!378229))

(assert (not b!5306077))

(assert (not b!5305872))

(assert (not b!5305812))

(assert (not b!5305817))

(assert (not b!5305851))

(assert (not d!1705455))

(assert (not d!1705477))

(assert (not b!5306009))

(assert (not d!1705459))

(assert (not d!1705473))

(assert (not d!1705479))

(assert (not b!5305854))

(assert (not b!5305965))

(assert (not b!5305582))

(assert (not b!5305899))

(assert (not d!1705327))

(assert (not bm!378230))

(assert (not d!1705385))

(assert (not b!5305642))

(assert (not d!1705391))

(assert (not d!1705405))

(assert (not b!5306039))

(assert (not b!5305694))

(assert (not d!1705367))

(assert (not b!5305660))

(assert (not b!5305907))

(assert (not b!5306052))

(assert (not b!5305700))

(assert (not d!1705375))

(assert (not b_lambda!204323))

(assert (not d!1705365))

(assert (not d!1705397))

(assert (not bm!378236))

(assert (not bm!378249))

(assert (not d!1705471))

(assert (not d!1705395))

(assert (not b!5305754))

(assert (not b!5305946))

(assert (not b!5305922))

(assert (not b!5305915))

(assert (not d!1705429))

(assert (not b!5305954))

(assert (not b!5305875))

(assert (not d!1705345))

(assert (not b!5305879))

(assert (not b!5305564))

(assert (not b!5305603))

(assert (not b!5305902))

(assert (not b!5305849))

(assert (not b!5305867))

(assert (not bm!378259))

(assert (not bm!378253))

(assert (not b!5305699))

(assert (not b!5305604))

(assert (not bm!378224))

(assert (not b!5305646))

(assert (not b!5306051))

(assert (not d!1705447))

(assert (not b!5305884))

(assert (not b!5305923))

(assert (not b!5306012))

(assert (not d!1705489))

(assert (not b!5305971))

(assert (not b!5305889))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

