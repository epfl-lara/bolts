; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!555284 () Bool)

(assert start!555284)

(declare-fun b!5256960 () Bool)

(assert (=> b!5256960 true))

(assert (=> b!5256960 true))

(declare-fun lambda!264927 () Int)

(declare-fun lambda!264926 () Int)

(assert (=> b!5256960 (not (= lambda!264927 lambda!264926))))

(assert (=> b!5256960 true))

(assert (=> b!5256960 true))

(declare-fun b!5256976 () Bool)

(assert (=> b!5256976 true))

(declare-fun e!3270323 () Bool)

(declare-fun e!3270314 () Bool)

(assert (=> b!5256960 (= e!3270323 e!3270314)))

(declare-fun res!2230894 () Bool)

(assert (=> b!5256960 (=> res!2230894 e!3270314)))

(declare-datatypes ((C!30014 0))(
  ( (C!30015 (val!24709 Int)) )
))
(declare-datatypes ((List!60915 0))(
  ( (Nil!60791) (Cons!60791 (h!67239 C!30014) (t!374098 List!60915)) )
))
(declare-fun s!2326 () List!60915)

(declare-fun lt!2154400 () Bool)

(declare-fun lt!2154399 () Bool)

(assert (=> b!5256960 (= res!2230894 (or (not (= lt!2154400 lt!2154399)) (is-Nil!60791 s!2326)))))

(declare-fun Exists!2053 (Int) Bool)

(assert (=> b!5256960 (= (Exists!2053 lambda!264926) (Exists!2053 lambda!264927))))

(declare-datatypes ((Unit!152990 0))(
  ( (Unit!152991) )
))
(declare-fun lt!2154433 () Unit!152990)

(declare-datatypes ((Regex!14872 0))(
  ( (ElementMatch!14872 (c!909754 C!30014)) (Concat!23717 (regOne!30256 Regex!14872) (regTwo!30256 Regex!14872)) (EmptyExpr!14872) (Star!14872 (reg!15201 Regex!14872)) (EmptyLang!14872) (Union!14872 (regOne!30257 Regex!14872) (regTwo!30257 Regex!14872)) )
))
(declare-fun r!7292 () Regex!14872)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!707 (Regex!14872 Regex!14872 List!60915) Unit!152990)

(assert (=> b!5256960 (= lt!2154433 (lemmaExistCutMatchRandMatchRSpecEquivalent!707 (regOne!30256 r!7292) (regTwo!30256 r!7292) s!2326))))

(assert (=> b!5256960 (= lt!2154399 (Exists!2053 lambda!264926))))

(declare-datatypes ((tuple2!64142 0))(
  ( (tuple2!64143 (_1!35374 List!60915) (_2!35374 List!60915)) )
))
(declare-datatypes ((Option!14983 0))(
  ( (None!14982) (Some!14982 (v!51011 tuple2!64142)) )
))
(declare-fun isDefined!11686 (Option!14983) Bool)

(declare-fun findConcatSeparation!1397 (Regex!14872 Regex!14872 List!60915 List!60915 List!60915) Option!14983)

(assert (=> b!5256960 (= lt!2154399 (isDefined!11686 (findConcatSeparation!1397 (regOne!30256 r!7292) (regTwo!30256 r!7292) Nil!60791 s!2326 s!2326)))))

(declare-fun lt!2154426 () Unit!152990)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1161 (Regex!14872 Regex!14872 List!60915) Unit!152990)

(assert (=> b!5256960 (= lt!2154426 (lemmaFindConcatSeparationEquivalentToExists!1161 (regOne!30256 r!7292) (regTwo!30256 r!7292) s!2326))))

(declare-fun b!5256961 () Bool)

(declare-fun e!3270322 () Bool)

(declare-fun e!3270326 () Bool)

(assert (=> b!5256961 (= e!3270322 e!3270326)))

(declare-fun res!2230895 () Bool)

(assert (=> b!5256961 (=> res!2230895 e!3270326)))

(declare-fun lt!2154436 () Bool)

(declare-fun lt!2154438 () Bool)

(declare-fun lt!2154417 () Bool)

(assert (=> b!5256961 (= res!2230895 (and (not (= lt!2154417 lt!2154436)) (not lt!2154438)))))

(declare-fun lt!2154390 () Regex!14872)

(declare-fun matchRSpec!1975 (Regex!14872 List!60915) Bool)

(assert (=> b!5256961 (= lt!2154438 (matchRSpec!1975 lt!2154390 s!2326))))

(declare-fun lt!2154420 () Unit!152990)

(declare-fun mainMatchTheorem!1975 (Regex!14872 List!60915) Unit!152990)

(assert (=> b!5256961 (= lt!2154420 (mainMatchTheorem!1975 lt!2154390 s!2326))))

(declare-fun lt!2154423 () Regex!14872)

(assert (=> b!5256961 (= lt!2154436 (matchRSpec!1975 lt!2154423 s!2326))))

(declare-fun lt!2154388 () Unit!152990)

(assert (=> b!5256961 (= lt!2154388 (mainMatchTheorem!1975 lt!2154423 s!2326))))

(declare-datatypes ((List!60916 0))(
  ( (Nil!60792) (Cons!60792 (h!67240 Regex!14872) (t!374099 List!60916)) )
))
(declare-datatypes ((Context!8512 0))(
  ( (Context!8513 (exprs!4756 List!60916)) )
))
(declare-fun lt!2154410 () (Set Context!8512))

(declare-fun matchZipper!1116 ((Set Context!8512) List!60915) Bool)

(assert (=> b!5256961 (= lt!2154438 (matchZipper!1116 lt!2154410 s!2326))))

(declare-fun matchR!7057 (Regex!14872 List!60915) Bool)

(assert (=> b!5256961 (= lt!2154438 (matchR!7057 lt!2154390 s!2326))))

(declare-fun lt!2154406 () Unit!152990)

(declare-datatypes ((List!60917 0))(
  ( (Nil!60793) (Cons!60793 (h!67241 Context!8512) (t!374100 List!60917)) )
))
(declare-fun lt!2154434 () List!60917)

(declare-fun theoremZipperRegexEquiv!306 ((Set Context!8512) List!60917 Regex!14872 List!60915) Unit!152990)

(assert (=> b!5256961 (= lt!2154406 (theoremZipperRegexEquiv!306 lt!2154410 lt!2154434 lt!2154390 s!2326))))

(declare-fun lt!2154391 () List!60916)

(declare-fun generalisedConcat!541 (List!60916) Regex!14872)

(assert (=> b!5256961 (= lt!2154390 (generalisedConcat!541 lt!2154391))))

(declare-fun lt!2154437 () Bool)

(assert (=> b!5256961 (= lt!2154436 lt!2154437)))

(assert (=> b!5256961 (= lt!2154436 (matchR!7057 lt!2154423 s!2326))))

(declare-fun lt!2154408 () Unit!152990)

(declare-fun lt!2154401 () List!60917)

(declare-fun lt!2154405 () (Set Context!8512))

(assert (=> b!5256961 (= lt!2154408 (theoremZipperRegexEquiv!306 lt!2154405 lt!2154401 lt!2154423 s!2326))))

(declare-fun lt!2154411 () List!60916)

(assert (=> b!5256961 (= lt!2154423 (generalisedConcat!541 lt!2154411))))

(declare-fun b!5256962 () Bool)

(declare-fun res!2230879 () Bool)

(declare-fun e!3270312 () Bool)

(assert (=> b!5256962 (=> (not res!2230879) (not e!3270312))))

(declare-fun z!1189 () (Set Context!8512))

(declare-fun zl!343 () List!60917)

(declare-fun toList!8656 ((Set Context!8512)) List!60917)

(assert (=> b!5256962 (= res!2230879 (= (toList!8656 z!1189) zl!343))))

(declare-fun setIsEmpty!33590 () Bool)

(declare-fun setRes!33590 () Bool)

(assert (=> setIsEmpty!33590 setRes!33590))

(declare-fun b!5256964 () Bool)

(declare-fun e!3270320 () Bool)

(declare-fun lt!2154393 () (Set Context!8512))

(assert (=> b!5256964 (= e!3270320 (not (matchZipper!1116 lt!2154393 (t!374098 s!2326))))))

(declare-fun b!5256965 () Bool)

(declare-fun res!2230878 () Bool)

(assert (=> b!5256965 (=> res!2230878 e!3270314)))

(declare-fun isEmpty!32733 (List!60916) Bool)

(assert (=> b!5256965 (= res!2230878 (isEmpty!32733 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5256966 () Bool)

(declare-fun e!3270330 () Bool)

(declare-fun tp!1469967 () Bool)

(declare-fun tp!1469959 () Bool)

(assert (=> b!5256966 (= e!3270330 (and tp!1469967 tp!1469959))))

(declare-fun b!5256967 () Bool)

(declare-fun e!3270313 () Bool)

(declare-fun tp!1469960 () Bool)

(declare-fun e!3270332 () Bool)

(declare-fun inv!80428 (Context!8512) Bool)

(assert (=> b!5256967 (= e!3270313 (and (inv!80428 (h!67241 zl!343)) e!3270332 tp!1469960))))

(declare-fun b!5256968 () Bool)

(declare-fun e!3270317 () Bool)

(declare-fun e!3270311 () Bool)

(assert (=> b!5256968 (= e!3270317 e!3270311)))

(declare-fun res!2230897 () Bool)

(assert (=> b!5256968 (=> res!2230897 e!3270311)))

(declare-fun lt!2154440 () Bool)

(assert (=> b!5256968 (= res!2230897 (= lt!2154440 lt!2154436))))

(declare-fun lt!2154409 () Regex!14872)

(assert (=> b!5256968 (= lt!2154440 (matchRSpec!1975 lt!2154409 s!2326))))

(declare-fun lt!2154392 () Unit!152990)

(assert (=> b!5256968 (= lt!2154392 (mainMatchTheorem!1975 lt!2154409 s!2326))))

(declare-fun lt!2154407 () Bool)

(declare-fun lt!2154415 () Regex!14872)

(assert (=> b!5256968 (= lt!2154407 (matchRSpec!1975 lt!2154415 s!2326))))

(declare-fun lt!2154425 () Unit!152990)

(assert (=> b!5256968 (= lt!2154425 (mainMatchTheorem!1975 lt!2154415 s!2326))))

(assert (=> b!5256968 (= lt!2154440 lt!2154407)))

(assert (=> b!5256968 (= lt!2154407 (matchR!7057 lt!2154415 s!2326))))

(assert (=> b!5256968 (= lt!2154440 (matchR!7057 lt!2154409 s!2326))))

(assert (=> b!5256968 (= lt!2154415 (Union!14872 (Concat!23717 (regOne!30257 (regOne!30256 r!7292)) (regTwo!30256 r!7292)) (Concat!23717 (regTwo!30257 (regOne!30256 r!7292)) (regTwo!30256 r!7292))))))

(declare-fun lt!2154421 () Unit!152990)

(declare-fun lemmaConcatDistributesInUnion!17 (Regex!14872 Regex!14872 Regex!14872 List!60915) Unit!152990)

(assert (=> b!5256968 (= lt!2154421 (lemmaConcatDistributesInUnion!17 (regOne!30257 (regOne!30256 r!7292)) (regTwo!30257 (regOne!30256 r!7292)) (regTwo!30256 r!7292) s!2326))))

(declare-fun b!5256969 () Bool)

(declare-fun e!3270337 () Unit!152990)

(declare-fun Unit!152992 () Unit!152990)

(assert (=> b!5256969 (= e!3270337 Unit!152992)))

(declare-fun b!5256970 () Bool)

(declare-fun e!3270331 () Bool)

(declare-fun e!3270335 () Bool)

(assert (=> b!5256970 (= e!3270331 e!3270335)))

(declare-fun res!2230871 () Bool)

(assert (=> b!5256970 (=> res!2230871 e!3270335)))

(declare-fun lt!2154412 () (Set Context!8512))

(declare-fun lt!2154414 () (Set Context!8512))

(assert (=> b!5256970 (= res!2230871 (not (= lt!2154412 lt!2154414)))))

(declare-fun lt!2154416 () (Set Context!8512))

(assert (=> b!5256970 (= lt!2154414 (set.union lt!2154416 lt!2154393))))

(declare-fun lt!2154413 () Context!8512)

(declare-fun derivationStepZipperDown!320 (Regex!14872 Context!8512 C!30014) (Set Context!8512))

(assert (=> b!5256970 (= lt!2154393 (derivationStepZipperDown!320 (regTwo!30257 (regOne!30256 r!7292)) lt!2154413 (h!67239 s!2326)))))

(assert (=> b!5256970 (= lt!2154416 (derivationStepZipperDown!320 (regOne!30257 (regOne!30256 r!7292)) lt!2154413 (h!67239 s!2326)))))

(declare-fun b!5256971 () Bool)

(declare-fun e!3270334 () Unit!152990)

(declare-fun Unit!152993 () Unit!152990)

(assert (=> b!5256971 (= e!3270334 Unit!152993)))

(declare-fun b!5256972 () Bool)

(declare-fun e!3270329 () Bool)

(declare-fun tp_is_empty!38997 () Bool)

(declare-fun tp!1469963 () Bool)

(assert (=> b!5256972 (= e!3270329 (and tp_is_empty!38997 tp!1469963))))

(declare-fun b!5256973 () Bool)

(declare-fun e!3270321 () Bool)

(assert (=> b!5256973 (= e!3270321 (not e!3270323))))

(declare-fun res!2230877 () Bool)

(assert (=> b!5256973 (=> res!2230877 e!3270323)))

(assert (=> b!5256973 (= res!2230877 (not (is-Cons!60793 zl!343)))))

(assert (=> b!5256973 (= lt!2154400 (matchRSpec!1975 r!7292 s!2326))))

(assert (=> b!5256973 (= lt!2154400 (matchR!7057 r!7292 s!2326))))

(declare-fun lt!2154404 () Unit!152990)

(assert (=> b!5256973 (= lt!2154404 (mainMatchTheorem!1975 r!7292 s!2326))))

(declare-fun b!5256974 () Bool)

(declare-fun e!3270316 () Bool)

(assert (=> b!5256974 (= e!3270316 e!3270322)))

(declare-fun res!2230885 () Bool)

(assert (=> b!5256974 (=> res!2230885 e!3270322)))

(declare-fun lt!2154402 () Int)

(declare-fun zipperDepthTotal!53 (List!60917) Int)

(assert (=> b!5256974 (= res!2230885 (>= (zipperDepthTotal!53 lt!2154434) lt!2154402))))

(declare-fun lt!2154430 () Context!8512)

(assert (=> b!5256974 (= lt!2154434 (Cons!60793 lt!2154430 Nil!60793))))

(declare-fun b!5256975 () Bool)

(declare-fun e!3270319 () Bool)

(assert (=> b!5256975 (= e!3270319 (matchZipper!1116 lt!2154393 (t!374098 s!2326)))))

(assert (=> b!5256976 (= e!3270314 e!3270331)))

(declare-fun res!2230881 () Bool)

(assert (=> b!5256976 (=> res!2230881 e!3270331)))

(assert (=> b!5256976 (= res!2230881 (or (and (is-ElementMatch!14872 (regOne!30256 r!7292)) (= (c!909754 (regOne!30256 r!7292)) (h!67239 s!2326))) (not (is-Union!14872 (regOne!30256 r!7292)))))))

(declare-fun lt!2154394 () Unit!152990)

(assert (=> b!5256976 (= lt!2154394 e!3270334)))

(declare-fun c!909752 () Bool)

(declare-fun nullable!5041 (Regex!14872) Bool)

(assert (=> b!5256976 (= c!909752 (nullable!5041 (h!67240 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun lambda!264928 () Int)

(declare-fun flatMap!599 ((Set Context!8512) Int) (Set Context!8512))

(declare-fun derivationStepZipperUp!244 (Context!8512 C!30014) (Set Context!8512))

(assert (=> b!5256976 (= (flatMap!599 z!1189 lambda!264928) (derivationStepZipperUp!244 (h!67241 zl!343) (h!67239 s!2326)))))

(declare-fun lt!2154424 () Unit!152990)

(declare-fun lemmaFlatMapOnSingletonSet!131 ((Set Context!8512) Context!8512 Int) Unit!152990)

(assert (=> b!5256976 (= lt!2154424 (lemmaFlatMapOnSingletonSet!131 z!1189 (h!67241 zl!343) lambda!264928))))

(declare-fun lt!2154396 () (Set Context!8512))

(assert (=> b!5256976 (= lt!2154396 (derivationStepZipperUp!244 lt!2154413 (h!67239 s!2326)))))

(assert (=> b!5256976 (= lt!2154412 (derivationStepZipperDown!320 (h!67240 (exprs!4756 (h!67241 zl!343))) lt!2154413 (h!67239 s!2326)))))

(assert (=> b!5256976 (= lt!2154413 (Context!8513 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun lt!2154435 () (Set Context!8512))

(assert (=> b!5256976 (= lt!2154435 (derivationStepZipperUp!244 (Context!8513 (Cons!60792 (h!67240 (exprs!4756 (h!67241 zl!343))) (t!374099 (exprs!4756 (h!67241 zl!343))))) (h!67239 s!2326)))))

(declare-fun b!5256977 () Bool)

(declare-fun Unit!152994 () Unit!152990)

(assert (=> b!5256977 (= e!3270337 Unit!152994)))

(declare-fun lt!2154431 () Unit!152990)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!109 ((Set Context!8512) (Set Context!8512) List!60915) Unit!152990)

(assert (=> b!5256977 (= lt!2154431 (lemmaZipperConcatMatchesSameAsBothZippers!109 lt!2154393 lt!2154396 (t!374098 s!2326)))))

(declare-fun res!2230883 () Bool)

(assert (=> b!5256977 (= res!2230883 (matchZipper!1116 lt!2154393 (t!374098 s!2326)))))

(declare-fun e!3270324 () Bool)

(assert (=> b!5256977 (=> res!2230883 e!3270324)))

(assert (=> b!5256977 (= (matchZipper!1116 (set.union lt!2154393 lt!2154396) (t!374098 s!2326)) e!3270324)))

(declare-fun b!5256978 () Bool)

(assert (=> b!5256978 (= e!3270324 (matchZipper!1116 lt!2154396 (t!374098 s!2326)))))

(declare-fun b!5256979 () Bool)

(declare-fun e!3270338 () Bool)

(declare-fun e!3270318 () Bool)

(assert (=> b!5256979 (= e!3270338 e!3270318)))

(declare-fun res!2230876 () Bool)

(assert (=> b!5256979 (=> res!2230876 e!3270318)))

(declare-fun e!3270333 () Bool)

(assert (=> b!5256979 (= res!2230876 (not (= lt!2154417 e!3270333)))))

(declare-fun res!2230874 () Bool)

(assert (=> b!5256979 (=> res!2230874 e!3270333)))

(assert (=> b!5256979 (= res!2230874 lt!2154437)))

(assert (=> b!5256979 (= lt!2154417 (matchZipper!1116 z!1189 s!2326))))

(assert (=> b!5256979 (= lt!2154437 (matchZipper!1116 lt!2154405 s!2326))))

(declare-fun lt!2154387 () Unit!152990)

(assert (=> b!5256979 (= lt!2154387 e!3270337)))

(declare-fun c!909751 () Bool)

(assert (=> b!5256979 (= c!909751 (nullable!5041 (regTwo!30257 (regOne!30256 r!7292))))))

(assert (=> b!5256979 (= (flatMap!599 lt!2154410 lambda!264928) (derivationStepZipperUp!244 lt!2154430 (h!67239 s!2326)))))

(declare-fun lt!2154439 () Unit!152990)

(assert (=> b!5256979 (= lt!2154439 (lemmaFlatMapOnSingletonSet!131 lt!2154410 lt!2154430 lambda!264928))))

(declare-fun lt!2154419 () (Set Context!8512))

(assert (=> b!5256979 (= lt!2154419 (derivationStepZipperUp!244 lt!2154430 (h!67239 s!2326)))))

(declare-fun lt!2154418 () Unit!152990)

(declare-fun e!3270336 () Unit!152990)

(assert (=> b!5256979 (= lt!2154418 e!3270336)))

(declare-fun c!909753 () Bool)

(assert (=> b!5256979 (= c!909753 (nullable!5041 (regOne!30257 (regOne!30256 r!7292))))))

(declare-fun lt!2154429 () Context!8512)

(assert (=> b!5256979 (= (flatMap!599 lt!2154405 lambda!264928) (derivationStepZipperUp!244 lt!2154429 (h!67239 s!2326)))))

(declare-fun lt!2154395 () Unit!152990)

(assert (=> b!5256979 (= lt!2154395 (lemmaFlatMapOnSingletonSet!131 lt!2154405 lt!2154429 lambda!264928))))

(declare-fun lt!2154398 () (Set Context!8512))

(assert (=> b!5256979 (= lt!2154398 (derivationStepZipperUp!244 lt!2154429 (h!67239 s!2326)))))

(assert (=> b!5256979 (= lt!2154410 (set.insert lt!2154430 (as set.empty (Set Context!8512))))))

(assert (=> b!5256979 (= lt!2154430 (Context!8513 lt!2154391))))

(assert (=> b!5256979 (= lt!2154391 (Cons!60792 (regTwo!30257 (regOne!30256 r!7292)) (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(assert (=> b!5256979 (= lt!2154405 (set.insert lt!2154429 (as set.empty (Set Context!8512))))))

(assert (=> b!5256979 (= lt!2154429 (Context!8513 lt!2154411))))

(assert (=> b!5256979 (= lt!2154411 (Cons!60792 (regOne!30257 (regOne!30256 r!7292)) (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5256980 () Bool)

(declare-fun res!2230893 () Bool)

(assert (=> b!5256980 (=> res!2230893 e!3270323)))

(declare-fun isEmpty!32734 (List!60917) Bool)

(assert (=> b!5256980 (= res!2230893 (not (isEmpty!32734 (t!374100 zl!343))))))

(declare-fun b!5256981 () Bool)

(assert (=> b!5256981 (= e!3270333 (matchZipper!1116 lt!2154410 s!2326))))

(declare-fun b!5256982 () Bool)

(assert (=> b!5256982 (= e!3270330 tp_is_empty!38997)))

(declare-fun b!5256983 () Bool)

(declare-fun res!2230886 () Bool)

(assert (=> b!5256983 (=> res!2230886 e!3270323)))

(assert (=> b!5256983 (= res!2230886 (not (= r!7292 (generalisedConcat!541 (exprs!4756 (h!67241 zl!343))))))))

(declare-fun b!5256984 () Bool)

(declare-fun Unit!152995 () Unit!152990)

(assert (=> b!5256984 (= e!3270334 Unit!152995)))

(declare-fun lt!2154432 () Unit!152990)

(assert (=> b!5256984 (= lt!2154432 (lemmaZipperConcatMatchesSameAsBothZippers!109 lt!2154412 lt!2154396 (t!374098 s!2326)))))

(declare-fun res!2230892 () Bool)

(assert (=> b!5256984 (= res!2230892 (matchZipper!1116 lt!2154412 (t!374098 s!2326)))))

(declare-fun e!3270328 () Bool)

(assert (=> b!5256984 (=> res!2230892 e!3270328)))

(assert (=> b!5256984 (= (matchZipper!1116 (set.union lt!2154412 lt!2154396) (t!374098 s!2326)) e!3270328)))

(declare-fun b!5256985 () Bool)

(declare-fun Unit!152996 () Unit!152990)

(assert (=> b!5256985 (= e!3270336 Unit!152996)))

(declare-fun b!5256986 () Bool)

(declare-fun Unit!152997 () Unit!152990)

(assert (=> b!5256986 (= e!3270336 Unit!152997)))

(declare-fun lt!2154427 () Unit!152990)

(assert (=> b!5256986 (= lt!2154427 (lemmaZipperConcatMatchesSameAsBothZippers!109 lt!2154416 lt!2154396 (t!374098 s!2326)))))

(declare-fun res!2230896 () Bool)

(declare-fun lt!2154428 () Bool)

(assert (=> b!5256986 (= res!2230896 lt!2154428)))

(declare-fun e!3270325 () Bool)

(assert (=> b!5256986 (=> res!2230896 e!3270325)))

(assert (=> b!5256986 (= (matchZipper!1116 (set.union lt!2154416 lt!2154396) (t!374098 s!2326)) e!3270325)))

(declare-fun b!5256963 () Bool)

(declare-fun tp!1469965 () Bool)

(assert (=> b!5256963 (= e!3270332 tp!1469965)))

(declare-fun res!2230887 () Bool)

(assert (=> start!555284 (=> (not res!2230887) (not e!3270312))))

(declare-fun validRegex!6608 (Regex!14872) Bool)

(assert (=> start!555284 (= res!2230887 (validRegex!6608 r!7292))))

(assert (=> start!555284 e!3270312))

(assert (=> start!555284 e!3270330))

(declare-fun condSetEmpty!33590 () Bool)

(assert (=> start!555284 (= condSetEmpty!33590 (= z!1189 (as set.empty (Set Context!8512))))))

(assert (=> start!555284 setRes!33590))

(assert (=> start!555284 e!3270313))

(assert (=> start!555284 e!3270329))

(declare-fun b!5256987 () Bool)

(assert (=> b!5256987 (= e!3270335 e!3270338)))

(declare-fun res!2230882 () Bool)

(assert (=> b!5256987 (=> res!2230882 e!3270338)))

(assert (=> b!5256987 (= res!2230882 e!3270320)))

(declare-fun res!2230873 () Bool)

(assert (=> b!5256987 (=> (not res!2230873) (not e!3270320))))

(assert (=> b!5256987 (= res!2230873 (not (= (matchZipper!1116 lt!2154412 (t!374098 s!2326)) lt!2154428)))))

(assert (=> b!5256987 (= (matchZipper!1116 lt!2154414 (t!374098 s!2326)) e!3270319)))

(declare-fun res!2230870 () Bool)

(assert (=> b!5256987 (=> res!2230870 e!3270319)))

(assert (=> b!5256987 (= res!2230870 lt!2154428)))

(assert (=> b!5256987 (= lt!2154428 (matchZipper!1116 lt!2154416 (t!374098 s!2326)))))

(declare-fun lt!2154397 () Unit!152990)

(assert (=> b!5256987 (= lt!2154397 (lemmaZipperConcatMatchesSameAsBothZippers!109 lt!2154416 lt!2154393 (t!374098 s!2326)))))

(declare-fun b!5256988 () Bool)

(declare-fun res!2230890 () Bool)

(assert (=> b!5256988 (=> res!2230890 e!3270318)))

(declare-fun lt!2154403 () Regex!14872)

(assert (=> b!5256988 (= res!2230890 (or (not (= lt!2154403 r!7292)) (not (= (exprs!4756 (h!67241 zl!343)) (Cons!60792 (regOne!30256 r!7292) (t!374099 (exprs!4756 (h!67241 zl!343))))))))))

(declare-fun b!5256989 () Bool)

(assert (=> b!5256989 (= e!3270328 (matchZipper!1116 lt!2154396 (t!374098 s!2326)))))

(declare-fun b!5256990 () Bool)

(declare-fun tp!1469958 () Bool)

(declare-fun tp!1469966 () Bool)

(assert (=> b!5256990 (= e!3270330 (and tp!1469958 tp!1469966))))

(declare-fun b!5256991 () Bool)

(assert (=> b!5256991 (= e!3270318 e!3270316)))

(declare-fun res!2230884 () Bool)

(assert (=> b!5256991 (=> res!2230884 e!3270316)))

(declare-fun lt!2154422 () Int)

(assert (=> b!5256991 (= res!2230884 (>= lt!2154422 lt!2154402))))

(assert (=> b!5256991 (= lt!2154402 (zipperDepthTotal!53 zl!343))))

(assert (=> b!5256991 (= lt!2154422 (zipperDepthTotal!53 lt!2154401))))

(assert (=> b!5256991 (= lt!2154401 (Cons!60793 lt!2154429 Nil!60793))))

(declare-fun b!5256992 () Bool)

(declare-fun e!3270315 () Bool)

(declare-fun tp!1469962 () Bool)

(assert (=> b!5256992 (= e!3270315 tp!1469962)))

(declare-fun b!5256993 () Bool)

(declare-fun res!2230889 () Bool)

(assert (=> b!5256993 (=> res!2230889 e!3270323)))

(assert (=> b!5256993 (= res!2230889 (or (is-EmptyExpr!14872 r!7292) (is-EmptyLang!14872 r!7292) (is-ElementMatch!14872 r!7292) (is-Union!14872 r!7292) (not (is-Concat!23717 r!7292))))))

(declare-fun b!5256994 () Bool)

(declare-fun tp!1469964 () Bool)

(assert (=> b!5256994 (= e!3270330 tp!1469964)))

(declare-fun b!5256995 () Bool)

(declare-fun res!2230872 () Bool)

(assert (=> b!5256995 (=> res!2230872 e!3270323)))

(declare-fun generalisedUnion!801 (List!60916) Regex!14872)

(declare-fun unfocusZipperList!314 (List!60917) List!60916)

(assert (=> b!5256995 (= res!2230872 (not (= r!7292 (generalisedUnion!801 (unfocusZipperList!314 zl!343)))))))

(declare-fun b!5256996 () Bool)

(declare-fun e!3270327 () Bool)

(assert (=> b!5256996 (= e!3270327 e!3270317)))

(declare-fun res!2230880 () Bool)

(assert (=> b!5256996 (=> res!2230880 e!3270317)))

(declare-fun lt!2154389 () Regex!14872)

(assert (=> b!5256996 (= res!2230880 (or (not (= lt!2154423 (Concat!23717 (regOne!30257 (regOne!30256 r!7292)) lt!2154389))) (not (= lt!2154390 (Concat!23717 (regTwo!30257 (regOne!30256 r!7292)) lt!2154389))) (not (= (regTwo!30256 r!7292) lt!2154389))))))

(assert (=> b!5256996 (= lt!2154389 (generalisedConcat!541 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5256997 () Bool)

(assert (=> b!5256997 (= e!3270326 e!3270327)))

(declare-fun res!2230891 () Bool)

(assert (=> b!5256997 (=> res!2230891 e!3270327)))

(assert (=> b!5256997 (= res!2230891 (not (= r!7292 lt!2154409)))))

(assert (=> b!5256997 (= lt!2154409 (Concat!23717 (Union!14872 (regOne!30257 (regOne!30256 r!7292)) (regTwo!30257 (regOne!30256 r!7292))) (regTwo!30256 r!7292)))))

(declare-fun b!5256998 () Bool)

(assert (=> b!5256998 (= e!3270325 (matchZipper!1116 lt!2154396 (t!374098 s!2326)))))

(declare-fun b!5256999 () Bool)

(assert (=> b!5256999 (= e!3270311 (validRegex!6608 lt!2154390))))

(declare-fun tp!1469961 () Bool)

(declare-fun setElem!33590 () Context!8512)

(declare-fun setNonEmpty!33590 () Bool)

(assert (=> setNonEmpty!33590 (= setRes!33590 (and tp!1469961 (inv!80428 setElem!33590) e!3270315))))

(declare-fun setRest!33590 () (Set Context!8512))

(assert (=> setNonEmpty!33590 (= z!1189 (set.union (set.insert setElem!33590 (as set.empty (Set Context!8512))) setRest!33590))))

(declare-fun b!5257000 () Bool)

(declare-fun res!2230888 () Bool)

(assert (=> b!5257000 (=> res!2230888 e!3270323)))

(assert (=> b!5257000 (= res!2230888 (not (is-Cons!60792 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257001 () Bool)

(assert (=> b!5257001 (= e!3270312 e!3270321)))

(declare-fun res!2230875 () Bool)

(assert (=> b!5257001 (=> (not res!2230875) (not e!3270321))))

(assert (=> b!5257001 (= res!2230875 (= r!7292 lt!2154403))))

(declare-fun unfocusZipper!614 (List!60917) Regex!14872)

(assert (=> b!5257001 (= lt!2154403 (unfocusZipper!614 zl!343))))

(assert (= (and start!555284 res!2230887) b!5256962))

(assert (= (and b!5256962 res!2230879) b!5257001))

(assert (= (and b!5257001 res!2230875) b!5256973))

(assert (= (and b!5256973 (not res!2230877)) b!5256980))

(assert (= (and b!5256980 (not res!2230893)) b!5256983))

(assert (= (and b!5256983 (not res!2230886)) b!5257000))

(assert (= (and b!5257000 (not res!2230888)) b!5256995))

(assert (= (and b!5256995 (not res!2230872)) b!5256993))

(assert (= (and b!5256993 (not res!2230889)) b!5256960))

(assert (= (and b!5256960 (not res!2230894)) b!5256965))

(assert (= (and b!5256965 (not res!2230878)) b!5256976))

(assert (= (and b!5256976 c!909752) b!5256984))

(assert (= (and b!5256976 (not c!909752)) b!5256971))

(assert (= (and b!5256984 (not res!2230892)) b!5256989))

(assert (= (and b!5256976 (not res!2230881)) b!5256970))

(assert (= (and b!5256970 (not res!2230871)) b!5256987))

(assert (= (and b!5256987 (not res!2230870)) b!5256975))

(assert (= (and b!5256987 res!2230873) b!5256964))

(assert (= (and b!5256987 (not res!2230882)) b!5256979))

(assert (= (and b!5256979 c!909753) b!5256986))

(assert (= (and b!5256979 (not c!909753)) b!5256985))

(assert (= (and b!5256986 (not res!2230896)) b!5256998))

(assert (= (and b!5256979 c!909751) b!5256977))

(assert (= (and b!5256979 (not c!909751)) b!5256969))

(assert (= (and b!5256977 (not res!2230883)) b!5256978))

(assert (= (and b!5256979 (not res!2230874)) b!5256981))

(assert (= (and b!5256979 (not res!2230876)) b!5256988))

(assert (= (and b!5256988 (not res!2230890)) b!5256991))

(assert (= (and b!5256991 (not res!2230884)) b!5256974))

(assert (= (and b!5256974 (not res!2230885)) b!5256961))

(assert (= (and b!5256961 (not res!2230895)) b!5256997))

(assert (= (and b!5256997 (not res!2230891)) b!5256996))

(assert (= (and b!5256996 (not res!2230880)) b!5256968))

(assert (= (and b!5256968 (not res!2230897)) b!5256999))

(assert (= (and start!555284 (is-ElementMatch!14872 r!7292)) b!5256982))

(assert (= (and start!555284 (is-Concat!23717 r!7292)) b!5256990))

(assert (= (and start!555284 (is-Star!14872 r!7292)) b!5256994))

(assert (= (and start!555284 (is-Union!14872 r!7292)) b!5256966))

(assert (= (and start!555284 condSetEmpty!33590) setIsEmpty!33590))

(assert (= (and start!555284 (not condSetEmpty!33590)) setNonEmpty!33590))

(assert (= setNonEmpty!33590 b!5256992))

(assert (= b!5256967 b!5256963))

(assert (= (and start!555284 (is-Cons!60793 zl!343)) b!5256967))

(assert (= (and start!555284 (is-Cons!60791 s!2326)) b!5256972))

(declare-fun m!6299388 () Bool)

(assert (=> b!5256983 m!6299388))

(declare-fun m!6299390 () Bool)

(assert (=> b!5256989 m!6299390))

(declare-fun m!6299392 () Bool)

(assert (=> b!5256965 m!6299392))

(declare-fun m!6299394 () Bool)

(assert (=> b!5256987 m!6299394))

(declare-fun m!6299396 () Bool)

(assert (=> b!5256987 m!6299396))

(declare-fun m!6299398 () Bool)

(assert (=> b!5256987 m!6299398))

(declare-fun m!6299400 () Bool)

(assert (=> b!5256987 m!6299400))

(declare-fun m!6299402 () Bool)

(assert (=> b!5256976 m!6299402))

(declare-fun m!6299404 () Bool)

(assert (=> b!5256976 m!6299404))

(declare-fun m!6299406 () Bool)

(assert (=> b!5256976 m!6299406))

(declare-fun m!6299408 () Bool)

(assert (=> b!5256976 m!6299408))

(declare-fun m!6299410 () Bool)

(assert (=> b!5256976 m!6299410))

(declare-fun m!6299412 () Bool)

(assert (=> b!5256976 m!6299412))

(declare-fun m!6299414 () Bool)

(assert (=> b!5256976 m!6299414))

(declare-fun m!6299416 () Bool)

(assert (=> b!5257001 m!6299416))

(assert (=> b!5256998 m!6299390))

(declare-fun m!6299418 () Bool)

(assert (=> b!5256974 m!6299418))

(declare-fun m!6299420 () Bool)

(assert (=> b!5256986 m!6299420))

(declare-fun m!6299422 () Bool)

(assert (=> b!5256986 m!6299422))

(declare-fun m!6299424 () Bool)

(assert (=> b!5256960 m!6299424))

(declare-fun m!6299426 () Bool)

(assert (=> b!5256960 m!6299426))

(declare-fun m!6299428 () Bool)

(assert (=> b!5256960 m!6299428))

(declare-fun m!6299430 () Bool)

(assert (=> b!5256960 m!6299430))

(assert (=> b!5256960 m!6299424))

(declare-fun m!6299432 () Bool)

(assert (=> b!5256960 m!6299432))

(declare-fun m!6299434 () Bool)

(assert (=> b!5256960 m!6299434))

(assert (=> b!5256960 m!6299434))

(declare-fun m!6299436 () Bool)

(assert (=> b!5256999 m!6299436))

(declare-fun m!6299438 () Bool)

(assert (=> setNonEmpty!33590 m!6299438))

(declare-fun m!6299440 () Bool)

(assert (=> b!5256977 m!6299440))

(declare-fun m!6299442 () Bool)

(assert (=> b!5256977 m!6299442))

(declare-fun m!6299444 () Bool)

(assert (=> b!5256977 m!6299444))

(declare-fun m!6299446 () Bool)

(assert (=> start!555284 m!6299446))

(declare-fun m!6299448 () Bool)

(assert (=> b!5256962 m!6299448))

(assert (=> b!5256978 m!6299390))

(declare-fun m!6299450 () Bool)

(assert (=> b!5256980 m!6299450))

(assert (=> b!5256964 m!6299442))

(declare-fun m!6299452 () Bool)

(assert (=> b!5256995 m!6299452))

(assert (=> b!5256995 m!6299452))

(declare-fun m!6299454 () Bool)

(assert (=> b!5256995 m!6299454))

(declare-fun m!6299456 () Bool)

(assert (=> b!5256984 m!6299456))

(assert (=> b!5256984 m!6299394))

(declare-fun m!6299458 () Bool)

(assert (=> b!5256984 m!6299458))

(declare-fun m!6299460 () Bool)

(assert (=> b!5256967 m!6299460))

(declare-fun m!6299462 () Bool)

(assert (=> b!5256973 m!6299462))

(declare-fun m!6299464 () Bool)

(assert (=> b!5256973 m!6299464))

(declare-fun m!6299466 () Bool)

(assert (=> b!5256973 m!6299466))

(declare-fun m!6299468 () Bool)

(assert (=> b!5256970 m!6299468))

(declare-fun m!6299470 () Bool)

(assert (=> b!5256970 m!6299470))

(assert (=> b!5256975 m!6299442))

(declare-fun m!6299472 () Bool)

(assert (=> b!5256991 m!6299472))

(declare-fun m!6299474 () Bool)

(assert (=> b!5256991 m!6299474))

(declare-fun m!6299476 () Bool)

(assert (=> b!5256996 m!6299476))

(declare-fun m!6299478 () Bool)

(assert (=> b!5256981 m!6299478))

(declare-fun m!6299480 () Bool)

(assert (=> b!5256968 m!6299480))

(declare-fun m!6299482 () Bool)

(assert (=> b!5256968 m!6299482))

(declare-fun m!6299484 () Bool)

(assert (=> b!5256968 m!6299484))

(declare-fun m!6299486 () Bool)

(assert (=> b!5256968 m!6299486))

(declare-fun m!6299488 () Bool)

(assert (=> b!5256968 m!6299488))

(declare-fun m!6299490 () Bool)

(assert (=> b!5256968 m!6299490))

(declare-fun m!6299492 () Bool)

(assert (=> b!5256968 m!6299492))

(declare-fun m!6299494 () Bool)

(assert (=> b!5256979 m!6299494))

(declare-fun m!6299496 () Bool)

(assert (=> b!5256979 m!6299496))

(declare-fun m!6299498 () Bool)

(assert (=> b!5256979 m!6299498))

(declare-fun m!6299500 () Bool)

(assert (=> b!5256979 m!6299500))

(declare-fun m!6299502 () Bool)

(assert (=> b!5256979 m!6299502))

(declare-fun m!6299504 () Bool)

(assert (=> b!5256979 m!6299504))

(declare-fun m!6299506 () Bool)

(assert (=> b!5256979 m!6299506))

(declare-fun m!6299508 () Bool)

(assert (=> b!5256979 m!6299508))

(declare-fun m!6299510 () Bool)

(assert (=> b!5256979 m!6299510))

(declare-fun m!6299512 () Bool)

(assert (=> b!5256979 m!6299512))

(declare-fun m!6299514 () Bool)

(assert (=> b!5256979 m!6299514))

(declare-fun m!6299516 () Bool)

(assert (=> b!5256979 m!6299516))

(declare-fun m!6299518 () Bool)

(assert (=> b!5256961 m!6299518))

(declare-fun m!6299520 () Bool)

(assert (=> b!5256961 m!6299520))

(declare-fun m!6299522 () Bool)

(assert (=> b!5256961 m!6299522))

(declare-fun m!6299524 () Bool)

(assert (=> b!5256961 m!6299524))

(assert (=> b!5256961 m!6299478))

(declare-fun m!6299526 () Bool)

(assert (=> b!5256961 m!6299526))

(declare-fun m!6299528 () Bool)

(assert (=> b!5256961 m!6299528))

(declare-fun m!6299530 () Bool)

(assert (=> b!5256961 m!6299530))

(declare-fun m!6299532 () Bool)

(assert (=> b!5256961 m!6299532))

(declare-fun m!6299534 () Bool)

(assert (=> b!5256961 m!6299534))

(declare-fun m!6299536 () Bool)

(assert (=> b!5256961 m!6299536))

(push 1)

(assert (not b!5256989))

(assert (not b!5256980))

(assert (not b!5256962))

(assert (not setNonEmpty!33590))

(assert (not b!5256966))

(assert (not start!555284))

(assert (not b!5256983))

(assert (not b!5256970))

(assert (not b!5256961))

(assert (not b!5256995))

(assert (not b!5256994))

(assert (not b!5256965))

(assert (not b!5256992))

(assert (not b!5256978))

(assert (not b!5256976))

(assert (not b!5256960))

(assert (not b!5256973))

(assert (not b!5256975))

(assert (not b!5256974))

(assert (not b!5256963))

(assert (not b!5256972))

(assert (not b!5256999))

(assert (not b!5256964))

(assert (not b!5256990))

(assert (not b!5256987))

(assert (not b!5256979))

(assert (not b!5256967))

(assert (not b!5257001))

(assert (not b!5256984))

(assert (not b!5256977))

(assert (not b!5256968))

(assert (not b!5256998))

(assert (not b!5256991))

(assert tp_is_empty!38997)

(assert (not b!5256981))

(assert (not b!5256996))

(assert (not b!5256986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!372594 () Bool)

(declare-fun call!372601 () (Set Context!8512))

(declare-fun call!372602 () (Set Context!8512))

(assert (=> bm!372594 (= call!372601 call!372602)))

(declare-fun c!909786 () Bool)

(declare-fun call!372603 () List!60916)

(declare-fun c!909782 () Bool)

(declare-fun bm!372595 () Bool)

(declare-fun $colon$colon!1327 (List!60916 Regex!14872) List!60916)

(assert (=> bm!372595 (= call!372603 ($colon$colon!1327 (exprs!4756 lt!2154413) (ite (or c!909786 c!909782) (regTwo!30256 (regTwo!30257 (regOne!30256 r!7292))) (regTwo!30257 (regOne!30256 r!7292)))))))

(declare-fun bm!372596 () Bool)

(declare-fun call!372600 () List!60916)

(assert (=> bm!372596 (= call!372600 call!372603)))

(declare-fun c!909783 () Bool)

(declare-fun bm!372597 () Bool)

(assert (=> bm!372597 (= call!372602 (derivationStepZipperDown!320 (ite c!909783 (regOne!30257 (regTwo!30257 (regOne!30256 r!7292))) (ite c!909786 (regTwo!30256 (regTwo!30257 (regOne!30256 r!7292))) (ite c!909782 (regOne!30256 (regTwo!30257 (regOne!30256 r!7292))) (reg!15201 (regTwo!30257 (regOne!30256 r!7292)))))) (ite (or c!909783 c!909786) lt!2154413 (Context!8513 call!372600)) (h!67239 s!2326)))))

(declare-fun bm!372598 () Bool)

(declare-fun call!372604 () (Set Context!8512))

(assert (=> bm!372598 (= call!372604 (derivationStepZipperDown!320 (ite c!909783 (regTwo!30257 (regTwo!30257 (regOne!30256 r!7292))) (regOne!30256 (regTwo!30257 (regOne!30256 r!7292)))) (ite c!909783 lt!2154413 (Context!8513 call!372603)) (h!67239 s!2326)))))

(declare-fun b!5257175 () Bool)

(declare-fun e!3270444 () (Set Context!8512))

(assert (=> b!5257175 (= e!3270444 (as set.empty (Set Context!8512)))))

(declare-fun b!5257176 () Bool)

(declare-fun e!3270446 () (Set Context!8512))

(assert (=> b!5257176 (= e!3270446 (set.union call!372604 call!372601))))

(declare-fun b!5257177 () Bool)

(declare-fun e!3270442 () (Set Context!8512))

(declare-fun call!372599 () (Set Context!8512))

(assert (=> b!5257177 (= e!3270442 call!372599)))

(declare-fun b!5257178 () Bool)

(assert (=> b!5257178 (= e!3270444 call!372599)))

(declare-fun d!1692504 () Bool)

(declare-fun c!909784 () Bool)

(assert (=> d!1692504 (= c!909784 (and (is-ElementMatch!14872 (regTwo!30257 (regOne!30256 r!7292))) (= (c!909754 (regTwo!30257 (regOne!30256 r!7292))) (h!67239 s!2326))))))

(declare-fun e!3270445 () (Set Context!8512))

(assert (=> d!1692504 (= (derivationStepZipperDown!320 (regTwo!30257 (regOne!30256 r!7292)) lt!2154413 (h!67239 s!2326)) e!3270445)))

(declare-fun b!5257174 () Bool)

(declare-fun e!3270443 () Bool)

(assert (=> b!5257174 (= e!3270443 (nullable!5041 (regOne!30256 (regTwo!30257 (regOne!30256 r!7292)))))))

(declare-fun b!5257179 () Bool)

(assert (=> b!5257179 (= e!3270446 e!3270442)))

(assert (=> b!5257179 (= c!909782 (is-Concat!23717 (regTwo!30257 (regOne!30256 r!7292))))))

(declare-fun b!5257180 () Bool)

(assert (=> b!5257180 (= e!3270445 (set.insert lt!2154413 (as set.empty (Set Context!8512))))))

(declare-fun b!5257181 () Bool)

(declare-fun e!3270441 () (Set Context!8512))

(assert (=> b!5257181 (= e!3270441 (set.union call!372602 call!372604))))

(declare-fun bm!372599 () Bool)

(assert (=> bm!372599 (= call!372599 call!372601)))

(declare-fun b!5257182 () Bool)

(assert (=> b!5257182 (= e!3270445 e!3270441)))

(assert (=> b!5257182 (= c!909783 (is-Union!14872 (regTwo!30257 (regOne!30256 r!7292))))))

(declare-fun b!5257183 () Bool)

(declare-fun c!909785 () Bool)

(assert (=> b!5257183 (= c!909785 (is-Star!14872 (regTwo!30257 (regOne!30256 r!7292))))))

(assert (=> b!5257183 (= e!3270442 e!3270444)))

(declare-fun b!5257184 () Bool)

(assert (=> b!5257184 (= c!909786 e!3270443)))

(declare-fun res!2230996 () Bool)

(assert (=> b!5257184 (=> (not res!2230996) (not e!3270443))))

(assert (=> b!5257184 (= res!2230996 (is-Concat!23717 (regTwo!30257 (regOne!30256 r!7292))))))

(assert (=> b!5257184 (= e!3270441 e!3270446)))

(assert (= (and d!1692504 c!909784) b!5257180))

(assert (= (and d!1692504 (not c!909784)) b!5257182))

(assert (= (and b!5257182 c!909783) b!5257181))

(assert (= (and b!5257182 (not c!909783)) b!5257184))

(assert (= (and b!5257184 res!2230996) b!5257174))

(assert (= (and b!5257184 c!909786) b!5257176))

(assert (= (and b!5257184 (not c!909786)) b!5257179))

(assert (= (and b!5257179 c!909782) b!5257177))

(assert (= (and b!5257179 (not c!909782)) b!5257183))

(assert (= (and b!5257183 c!909785) b!5257178))

(assert (= (and b!5257183 (not c!909785)) b!5257175))

(assert (= (or b!5257177 b!5257178) bm!372596))

(assert (= (or b!5257177 b!5257178) bm!372599))

(assert (= (or b!5257176 bm!372596) bm!372595))

(assert (= (or b!5257176 bm!372599) bm!372594))

(assert (= (or b!5257181 b!5257176) bm!372598))

(assert (= (or b!5257181 bm!372594) bm!372597))

(declare-fun m!6299688 () Bool)

(assert (=> b!5257174 m!6299688))

(declare-fun m!6299690 () Bool)

(assert (=> b!5257180 m!6299690))

(declare-fun m!6299692 () Bool)

(assert (=> bm!372598 m!6299692))

(declare-fun m!6299694 () Bool)

(assert (=> bm!372597 m!6299694))

(declare-fun m!6299696 () Bool)

(assert (=> bm!372595 m!6299696))

(assert (=> b!5256970 d!1692504))

(declare-fun bm!372600 () Bool)

(declare-fun call!372607 () (Set Context!8512))

(declare-fun call!372608 () (Set Context!8512))

(assert (=> bm!372600 (= call!372607 call!372608)))

(declare-fun bm!372601 () Bool)

(declare-fun c!909791 () Bool)

(declare-fun c!909787 () Bool)

(declare-fun call!372609 () List!60916)

(assert (=> bm!372601 (= call!372609 ($colon$colon!1327 (exprs!4756 lt!2154413) (ite (or c!909791 c!909787) (regTwo!30256 (regOne!30257 (regOne!30256 r!7292))) (regOne!30257 (regOne!30256 r!7292)))))))

(declare-fun bm!372602 () Bool)

(declare-fun call!372606 () List!60916)

(assert (=> bm!372602 (= call!372606 call!372609)))

(declare-fun bm!372603 () Bool)

(declare-fun c!909788 () Bool)

(assert (=> bm!372603 (= call!372608 (derivationStepZipperDown!320 (ite c!909788 (regOne!30257 (regOne!30257 (regOne!30256 r!7292))) (ite c!909791 (regTwo!30256 (regOne!30257 (regOne!30256 r!7292))) (ite c!909787 (regOne!30256 (regOne!30257 (regOne!30256 r!7292))) (reg!15201 (regOne!30257 (regOne!30256 r!7292)))))) (ite (or c!909788 c!909791) lt!2154413 (Context!8513 call!372606)) (h!67239 s!2326)))))

(declare-fun call!372610 () (Set Context!8512))

(declare-fun bm!372604 () Bool)

(assert (=> bm!372604 (= call!372610 (derivationStepZipperDown!320 (ite c!909788 (regTwo!30257 (regOne!30257 (regOne!30256 r!7292))) (regOne!30256 (regOne!30257 (regOne!30256 r!7292)))) (ite c!909788 lt!2154413 (Context!8513 call!372609)) (h!67239 s!2326)))))

(declare-fun b!5257186 () Bool)

(declare-fun e!3270450 () (Set Context!8512))

(assert (=> b!5257186 (= e!3270450 (as set.empty (Set Context!8512)))))

(declare-fun b!5257187 () Bool)

(declare-fun e!3270452 () (Set Context!8512))

(assert (=> b!5257187 (= e!3270452 (set.union call!372610 call!372607))))

(declare-fun b!5257188 () Bool)

(declare-fun e!3270448 () (Set Context!8512))

(declare-fun call!372605 () (Set Context!8512))

(assert (=> b!5257188 (= e!3270448 call!372605)))

(declare-fun b!5257189 () Bool)

(assert (=> b!5257189 (= e!3270450 call!372605)))

(declare-fun d!1692506 () Bool)

(declare-fun c!909789 () Bool)

(assert (=> d!1692506 (= c!909789 (and (is-ElementMatch!14872 (regOne!30257 (regOne!30256 r!7292))) (= (c!909754 (regOne!30257 (regOne!30256 r!7292))) (h!67239 s!2326))))))

(declare-fun e!3270451 () (Set Context!8512))

(assert (=> d!1692506 (= (derivationStepZipperDown!320 (regOne!30257 (regOne!30256 r!7292)) lt!2154413 (h!67239 s!2326)) e!3270451)))

(declare-fun b!5257185 () Bool)

(declare-fun e!3270449 () Bool)

(assert (=> b!5257185 (= e!3270449 (nullable!5041 (regOne!30256 (regOne!30257 (regOne!30256 r!7292)))))))

(declare-fun b!5257190 () Bool)

(assert (=> b!5257190 (= e!3270452 e!3270448)))

(assert (=> b!5257190 (= c!909787 (is-Concat!23717 (regOne!30257 (regOne!30256 r!7292))))))

(declare-fun b!5257191 () Bool)

(assert (=> b!5257191 (= e!3270451 (set.insert lt!2154413 (as set.empty (Set Context!8512))))))

(declare-fun b!5257192 () Bool)

(declare-fun e!3270447 () (Set Context!8512))

(assert (=> b!5257192 (= e!3270447 (set.union call!372608 call!372610))))

(declare-fun bm!372605 () Bool)

(assert (=> bm!372605 (= call!372605 call!372607)))

(declare-fun b!5257193 () Bool)

(assert (=> b!5257193 (= e!3270451 e!3270447)))

(assert (=> b!5257193 (= c!909788 (is-Union!14872 (regOne!30257 (regOne!30256 r!7292))))))

(declare-fun b!5257194 () Bool)

(declare-fun c!909790 () Bool)

(assert (=> b!5257194 (= c!909790 (is-Star!14872 (regOne!30257 (regOne!30256 r!7292))))))

(assert (=> b!5257194 (= e!3270448 e!3270450)))

(declare-fun b!5257195 () Bool)

(assert (=> b!5257195 (= c!909791 e!3270449)))

(declare-fun res!2230997 () Bool)

(assert (=> b!5257195 (=> (not res!2230997) (not e!3270449))))

(assert (=> b!5257195 (= res!2230997 (is-Concat!23717 (regOne!30257 (regOne!30256 r!7292))))))

(assert (=> b!5257195 (= e!3270447 e!3270452)))

(assert (= (and d!1692506 c!909789) b!5257191))

(assert (= (and d!1692506 (not c!909789)) b!5257193))

(assert (= (and b!5257193 c!909788) b!5257192))

(assert (= (and b!5257193 (not c!909788)) b!5257195))

(assert (= (and b!5257195 res!2230997) b!5257185))

(assert (= (and b!5257195 c!909791) b!5257187))

(assert (= (and b!5257195 (not c!909791)) b!5257190))

(assert (= (and b!5257190 c!909787) b!5257188))

(assert (= (and b!5257190 (not c!909787)) b!5257194))

(assert (= (and b!5257194 c!909790) b!5257189))

(assert (= (and b!5257194 (not c!909790)) b!5257186))

(assert (= (or b!5257188 b!5257189) bm!372602))

(assert (= (or b!5257188 b!5257189) bm!372605))

(assert (= (or b!5257187 bm!372602) bm!372601))

(assert (= (or b!5257187 bm!372605) bm!372600))

(assert (= (or b!5257192 b!5257187) bm!372604))

(assert (= (or b!5257192 bm!372600) bm!372603))

(declare-fun m!6299698 () Bool)

(assert (=> b!5257185 m!6299698))

(assert (=> b!5257191 m!6299690))

(declare-fun m!6299700 () Bool)

(assert (=> bm!372604 m!6299700))

(declare-fun m!6299702 () Bool)

(assert (=> bm!372603 m!6299702))

(declare-fun m!6299704 () Bool)

(assert (=> bm!372601 m!6299704))

(assert (=> b!5256970 d!1692506))

(declare-fun d!1692508 () Bool)

(declare-fun lt!2154605 () Int)

(assert (=> d!1692508 (>= lt!2154605 0)))

(declare-fun e!3270455 () Int)

(assert (=> d!1692508 (= lt!2154605 e!3270455)))

(declare-fun c!909794 () Bool)

(assert (=> d!1692508 (= c!909794 (is-Cons!60793 zl!343))))

(assert (=> d!1692508 (= (zipperDepthTotal!53 zl!343) lt!2154605)))

(declare-fun b!5257200 () Bool)

(declare-fun contextDepthTotal!35 (Context!8512) Int)

(assert (=> b!5257200 (= e!3270455 (+ (contextDepthTotal!35 (h!67241 zl!343)) (zipperDepthTotal!53 (t!374100 zl!343))))))

(declare-fun b!5257201 () Bool)

(assert (=> b!5257201 (= e!3270455 0)))

(assert (= (and d!1692508 c!909794) b!5257200))

(assert (= (and d!1692508 (not c!909794)) b!5257201))

(declare-fun m!6299706 () Bool)

(assert (=> b!5257200 m!6299706))

(declare-fun m!6299708 () Bool)

(assert (=> b!5257200 m!6299708))

(assert (=> b!5256991 d!1692508))

(declare-fun d!1692510 () Bool)

(declare-fun lt!2154606 () Int)

(assert (=> d!1692510 (>= lt!2154606 0)))

(declare-fun e!3270456 () Int)

(assert (=> d!1692510 (= lt!2154606 e!3270456)))

(declare-fun c!909795 () Bool)

(assert (=> d!1692510 (= c!909795 (is-Cons!60793 lt!2154401))))

(assert (=> d!1692510 (= (zipperDepthTotal!53 lt!2154401) lt!2154606)))

(declare-fun b!5257202 () Bool)

(assert (=> b!5257202 (= e!3270456 (+ (contextDepthTotal!35 (h!67241 lt!2154401)) (zipperDepthTotal!53 (t!374100 lt!2154401))))))

(declare-fun b!5257203 () Bool)

(assert (=> b!5257203 (= e!3270456 0)))

(assert (= (and d!1692510 c!909795) b!5257202))

(assert (= (and d!1692510 (not c!909795)) b!5257203))

(declare-fun m!6299710 () Bool)

(assert (=> b!5257202 m!6299710))

(declare-fun m!6299712 () Bool)

(assert (=> b!5257202 m!6299712))

(assert (=> b!5256991 d!1692510))

(declare-fun d!1692512 () Bool)

(declare-fun c!909798 () Bool)

(declare-fun isEmpty!32737 (List!60915) Bool)

(assert (=> d!1692512 (= c!909798 (isEmpty!32737 (t!374098 s!2326)))))

(declare-fun e!3270459 () Bool)

(assert (=> d!1692512 (= (matchZipper!1116 lt!2154396 (t!374098 s!2326)) e!3270459)))

(declare-fun b!5257208 () Bool)

(declare-fun nullableZipper!1277 ((Set Context!8512)) Bool)

(assert (=> b!5257208 (= e!3270459 (nullableZipper!1277 lt!2154396))))

(declare-fun b!5257209 () Bool)

(declare-fun derivationStepZipper!1121 ((Set Context!8512) C!30014) (Set Context!8512))

(declare-fun head!11272 (List!60915) C!30014)

(declare-fun tail!10369 (List!60915) List!60915)

(assert (=> b!5257209 (= e!3270459 (matchZipper!1116 (derivationStepZipper!1121 lt!2154396 (head!11272 (t!374098 s!2326))) (tail!10369 (t!374098 s!2326))))))

(assert (= (and d!1692512 c!909798) b!5257208))

(assert (= (and d!1692512 (not c!909798)) b!5257209))

(declare-fun m!6299714 () Bool)

(assert (=> d!1692512 m!6299714))

(declare-fun m!6299716 () Bool)

(assert (=> b!5257208 m!6299716))

(declare-fun m!6299718 () Bool)

(assert (=> b!5257209 m!6299718))

(assert (=> b!5257209 m!6299718))

(declare-fun m!6299720 () Bool)

(assert (=> b!5257209 m!6299720))

(declare-fun m!6299722 () Bool)

(assert (=> b!5257209 m!6299722))

(assert (=> b!5257209 m!6299720))

(assert (=> b!5257209 m!6299722))

(declare-fun m!6299724 () Bool)

(assert (=> b!5257209 m!6299724))

(assert (=> b!5256989 d!1692512))

(declare-fun bs!1219113 () Bool)

(declare-fun b!5257247 () Bool)

(assert (= bs!1219113 (and b!5257247 b!5256960)))

(declare-fun lambda!264948 () Int)

(assert (=> bs!1219113 (not (= lambda!264948 lambda!264926))))

(assert (=> bs!1219113 (not (= lambda!264948 lambda!264927))))

(assert (=> b!5257247 true))

(assert (=> b!5257247 true))

(declare-fun bs!1219114 () Bool)

(declare-fun b!5257242 () Bool)

(assert (= bs!1219114 (and b!5257242 b!5256960)))

(declare-fun lambda!264949 () Int)

(assert (=> bs!1219114 (not (= lambda!264949 lambda!264926))))

(assert (=> bs!1219114 (= (and (= (regOne!30256 lt!2154415) (regOne!30256 r!7292)) (= (regTwo!30256 lt!2154415) (regTwo!30256 r!7292))) (= lambda!264949 lambda!264927))))

(declare-fun bs!1219115 () Bool)

(assert (= bs!1219115 (and b!5257242 b!5257247)))

(assert (=> bs!1219115 (not (= lambda!264949 lambda!264948))))

(assert (=> b!5257242 true))

(assert (=> b!5257242 true))

(declare-fun e!3270478 () Bool)

(declare-fun call!372615 () Bool)

(assert (=> b!5257242 (= e!3270478 call!372615)))

(declare-fun b!5257243 () Bool)

(declare-fun c!909810 () Bool)

(assert (=> b!5257243 (= c!909810 (is-Union!14872 lt!2154415))))

(declare-fun e!3270482 () Bool)

(declare-fun e!3270479 () Bool)

(assert (=> b!5257243 (= e!3270482 e!3270479)))

(declare-fun bm!372610 () Bool)

(declare-fun c!909807 () Bool)

(assert (=> bm!372610 (= call!372615 (Exists!2053 (ite c!909807 lambda!264948 lambda!264949)))))

(declare-fun b!5257244 () Bool)

(assert (=> b!5257244 (= e!3270482 (= s!2326 (Cons!60791 (c!909754 lt!2154415) Nil!60791)))))

(declare-fun b!5257245 () Bool)

(declare-fun c!909808 () Bool)

(assert (=> b!5257245 (= c!909808 (is-ElementMatch!14872 lt!2154415))))

(declare-fun e!3270480 () Bool)

(assert (=> b!5257245 (= e!3270480 e!3270482)))

(declare-fun b!5257246 () Bool)

(declare-fun res!2231014 () Bool)

(declare-fun e!3270481 () Bool)

(assert (=> b!5257246 (=> res!2231014 e!3270481)))

(declare-fun call!372616 () Bool)

(assert (=> b!5257246 (= res!2231014 call!372616)))

(assert (=> b!5257246 (= e!3270478 e!3270481)))

(assert (=> b!5257247 (= e!3270481 call!372615)))

(declare-fun b!5257248 () Bool)

(declare-fun e!3270483 () Bool)

(assert (=> b!5257248 (= e!3270483 e!3270480)))

(declare-fun res!2231015 () Bool)

(assert (=> b!5257248 (= res!2231015 (not (is-EmptyLang!14872 lt!2154415)))))

(assert (=> b!5257248 (=> (not res!2231015) (not e!3270480))))

(declare-fun b!5257249 () Bool)

(assert (=> b!5257249 (= e!3270479 e!3270478)))

(assert (=> b!5257249 (= c!909807 (is-Star!14872 lt!2154415))))

(declare-fun b!5257250 () Bool)

(declare-fun e!3270484 () Bool)

(assert (=> b!5257250 (= e!3270479 e!3270484)))

(declare-fun res!2231016 () Bool)

(assert (=> b!5257250 (= res!2231016 (matchRSpec!1975 (regOne!30257 lt!2154415) s!2326))))

(assert (=> b!5257250 (=> res!2231016 e!3270484)))

(declare-fun bm!372611 () Bool)

(assert (=> bm!372611 (= call!372616 (isEmpty!32737 s!2326))))

(declare-fun d!1692514 () Bool)

(declare-fun c!909809 () Bool)

(assert (=> d!1692514 (= c!909809 (is-EmptyExpr!14872 lt!2154415))))

(assert (=> d!1692514 (= (matchRSpec!1975 lt!2154415 s!2326) e!3270483)))

(declare-fun b!5257251 () Bool)

(assert (=> b!5257251 (= e!3270484 (matchRSpec!1975 (regTwo!30257 lt!2154415) s!2326))))

(declare-fun b!5257252 () Bool)

(assert (=> b!5257252 (= e!3270483 call!372616)))

(assert (= (and d!1692514 c!909809) b!5257252))

(assert (= (and d!1692514 (not c!909809)) b!5257248))

(assert (= (and b!5257248 res!2231015) b!5257245))

(assert (= (and b!5257245 c!909808) b!5257244))

(assert (= (and b!5257245 (not c!909808)) b!5257243))

(assert (= (and b!5257243 c!909810) b!5257250))

(assert (= (and b!5257243 (not c!909810)) b!5257249))

(assert (= (and b!5257250 (not res!2231016)) b!5257251))

(assert (= (and b!5257249 c!909807) b!5257246))

(assert (= (and b!5257249 (not c!909807)) b!5257242))

(assert (= (and b!5257246 (not res!2231014)) b!5257247))

(assert (= (or b!5257247 b!5257242) bm!372610))

(assert (= (or b!5257252 b!5257246) bm!372611))

(declare-fun m!6299726 () Bool)

(assert (=> bm!372610 m!6299726))

(declare-fun m!6299728 () Bool)

(assert (=> b!5257250 m!6299728))

(declare-fun m!6299730 () Bool)

(assert (=> bm!372611 m!6299730))

(declare-fun m!6299732 () Bool)

(assert (=> b!5257251 m!6299732))

(assert (=> b!5256968 d!1692514))

(declare-fun b!5257299 () Bool)

(declare-fun res!2231049 () Bool)

(declare-fun e!3270516 () Bool)

(assert (=> b!5257299 (=> (not res!2231049) (not e!3270516))))

(assert (=> b!5257299 (= res!2231049 (isEmpty!32737 (tail!10369 s!2326)))))

(declare-fun b!5257300 () Bool)

(declare-fun e!3270517 () Bool)

(declare-fun lt!2154612 () Bool)

(declare-fun call!372621 () Bool)

(assert (=> b!5257300 (= e!3270517 (= lt!2154612 call!372621))))

(declare-fun b!5257301 () Bool)

(declare-fun res!2231046 () Bool)

(assert (=> b!5257301 (=> (not res!2231046) (not e!3270516))))

(assert (=> b!5257301 (= res!2231046 (not call!372621))))

(declare-fun d!1692518 () Bool)

(assert (=> d!1692518 e!3270517))

(declare-fun c!909821 () Bool)

(assert (=> d!1692518 (= c!909821 (is-EmptyExpr!14872 lt!2154415))))

(declare-fun e!3270518 () Bool)

(assert (=> d!1692518 (= lt!2154612 e!3270518)))

(declare-fun c!909823 () Bool)

(assert (=> d!1692518 (= c!909823 (isEmpty!32737 s!2326))))

(assert (=> d!1692518 (validRegex!6608 lt!2154415)))

(assert (=> d!1692518 (= (matchR!7057 lt!2154415 s!2326) lt!2154612)))

(declare-fun b!5257302 () Bool)

(declare-fun res!2231045 () Bool)

(declare-fun e!3270519 () Bool)

(assert (=> b!5257302 (=> res!2231045 e!3270519)))

(assert (=> b!5257302 (= res!2231045 e!3270516)))

(declare-fun res!2231047 () Bool)

(assert (=> b!5257302 (=> (not res!2231047) (not e!3270516))))

(assert (=> b!5257302 (= res!2231047 lt!2154612)))

(declare-fun b!5257303 () Bool)

(declare-fun derivativeStep!4098 (Regex!14872 C!30014) Regex!14872)

(assert (=> b!5257303 (= e!3270518 (matchR!7057 (derivativeStep!4098 lt!2154415 (head!11272 s!2326)) (tail!10369 s!2326)))))

(declare-fun bm!372614 () Bool)

(assert (=> bm!372614 (= call!372621 (isEmpty!32737 s!2326))))

(declare-fun b!5257304 () Bool)

(assert (=> b!5257304 (= e!3270518 (nullable!5041 lt!2154415))))

(declare-fun b!5257305 () Bool)

(declare-fun res!2231044 () Bool)

(assert (=> b!5257305 (=> res!2231044 e!3270519)))

(assert (=> b!5257305 (= res!2231044 (not (is-ElementMatch!14872 lt!2154415)))))

(declare-fun e!3270514 () Bool)

(assert (=> b!5257305 (= e!3270514 e!3270519)))

(declare-fun b!5257306 () Bool)

(declare-fun res!2231043 () Bool)

(declare-fun e!3270515 () Bool)

(assert (=> b!5257306 (=> res!2231043 e!3270515)))

(assert (=> b!5257306 (= res!2231043 (not (isEmpty!32737 (tail!10369 s!2326))))))

(declare-fun b!5257307 () Bool)

(declare-fun e!3270513 () Bool)

(assert (=> b!5257307 (= e!3270519 e!3270513)))

(declare-fun res!2231050 () Bool)

(assert (=> b!5257307 (=> (not res!2231050) (not e!3270513))))

(assert (=> b!5257307 (= res!2231050 (not lt!2154612))))

(declare-fun b!5257308 () Bool)

(assert (=> b!5257308 (= e!3270514 (not lt!2154612))))

(declare-fun b!5257309 () Bool)

(assert (=> b!5257309 (= e!3270513 e!3270515)))

(declare-fun res!2231048 () Bool)

(assert (=> b!5257309 (=> res!2231048 e!3270515)))

(assert (=> b!5257309 (= res!2231048 call!372621)))

(declare-fun b!5257310 () Bool)

(assert (=> b!5257310 (= e!3270516 (= (head!11272 s!2326) (c!909754 lt!2154415)))))

(declare-fun b!5257311 () Bool)

(assert (=> b!5257311 (= e!3270515 (not (= (head!11272 s!2326) (c!909754 lt!2154415))))))

(declare-fun b!5257312 () Bool)

(assert (=> b!5257312 (= e!3270517 e!3270514)))

(declare-fun c!909822 () Bool)

(assert (=> b!5257312 (= c!909822 (is-EmptyLang!14872 lt!2154415))))

(assert (= (and d!1692518 c!909823) b!5257304))

(assert (= (and d!1692518 (not c!909823)) b!5257303))

(assert (= (and d!1692518 c!909821) b!5257300))

(assert (= (and d!1692518 (not c!909821)) b!5257312))

(assert (= (and b!5257312 c!909822) b!5257308))

(assert (= (and b!5257312 (not c!909822)) b!5257305))

(assert (= (and b!5257305 (not res!2231044)) b!5257302))

(assert (= (and b!5257302 res!2231047) b!5257301))

(assert (= (and b!5257301 res!2231046) b!5257299))

(assert (= (and b!5257299 res!2231049) b!5257310))

(assert (= (and b!5257302 (not res!2231045)) b!5257307))

(assert (= (and b!5257307 res!2231050) b!5257309))

(assert (= (and b!5257309 (not res!2231048)) b!5257306))

(assert (= (and b!5257306 (not res!2231043)) b!5257311))

(assert (= (or b!5257300 b!5257301 b!5257309) bm!372614))

(assert (=> d!1692518 m!6299730))

(declare-fun m!6299736 () Bool)

(assert (=> d!1692518 m!6299736))

(declare-fun m!6299738 () Bool)

(assert (=> b!5257299 m!6299738))

(assert (=> b!5257299 m!6299738))

(declare-fun m!6299740 () Bool)

(assert (=> b!5257299 m!6299740))

(declare-fun m!6299742 () Bool)

(assert (=> b!5257310 m!6299742))

(assert (=> bm!372614 m!6299730))

(assert (=> b!5257311 m!6299742))

(declare-fun m!6299744 () Bool)

(assert (=> b!5257304 m!6299744))

(assert (=> b!5257306 m!6299738))

(assert (=> b!5257306 m!6299738))

(assert (=> b!5257306 m!6299740))

(assert (=> b!5257303 m!6299742))

(assert (=> b!5257303 m!6299742))

(declare-fun m!6299746 () Bool)

(assert (=> b!5257303 m!6299746))

(assert (=> b!5257303 m!6299738))

(assert (=> b!5257303 m!6299746))

(assert (=> b!5257303 m!6299738))

(declare-fun m!6299748 () Bool)

(assert (=> b!5257303 m!6299748))

(assert (=> b!5256968 d!1692518))

(declare-fun b!5257313 () Bool)

(declare-fun res!2231057 () Bool)

(declare-fun e!3270523 () Bool)

(assert (=> b!5257313 (=> (not res!2231057) (not e!3270523))))

(assert (=> b!5257313 (= res!2231057 (isEmpty!32737 (tail!10369 s!2326)))))

(declare-fun b!5257314 () Bool)

(declare-fun e!3270524 () Bool)

(declare-fun lt!2154613 () Bool)

(declare-fun call!372624 () Bool)

(assert (=> b!5257314 (= e!3270524 (= lt!2154613 call!372624))))

(declare-fun b!5257315 () Bool)

(declare-fun res!2231054 () Bool)

(assert (=> b!5257315 (=> (not res!2231054) (not e!3270523))))

(assert (=> b!5257315 (= res!2231054 (not call!372624))))

(declare-fun d!1692522 () Bool)

(assert (=> d!1692522 e!3270524))

(declare-fun c!909824 () Bool)

(assert (=> d!1692522 (= c!909824 (is-EmptyExpr!14872 lt!2154409))))

(declare-fun e!3270525 () Bool)

(assert (=> d!1692522 (= lt!2154613 e!3270525)))

(declare-fun c!909826 () Bool)

(assert (=> d!1692522 (= c!909826 (isEmpty!32737 s!2326))))

(assert (=> d!1692522 (validRegex!6608 lt!2154409)))

(assert (=> d!1692522 (= (matchR!7057 lt!2154409 s!2326) lt!2154613)))

(declare-fun b!5257316 () Bool)

(declare-fun res!2231053 () Bool)

(declare-fun e!3270526 () Bool)

(assert (=> b!5257316 (=> res!2231053 e!3270526)))

(assert (=> b!5257316 (= res!2231053 e!3270523)))

(declare-fun res!2231055 () Bool)

(assert (=> b!5257316 (=> (not res!2231055) (not e!3270523))))

(assert (=> b!5257316 (= res!2231055 lt!2154613)))

(declare-fun b!5257317 () Bool)

(assert (=> b!5257317 (= e!3270525 (matchR!7057 (derivativeStep!4098 lt!2154409 (head!11272 s!2326)) (tail!10369 s!2326)))))

(declare-fun bm!372619 () Bool)

(assert (=> bm!372619 (= call!372624 (isEmpty!32737 s!2326))))

(declare-fun b!5257318 () Bool)

(assert (=> b!5257318 (= e!3270525 (nullable!5041 lt!2154409))))

(declare-fun b!5257319 () Bool)

(declare-fun res!2231052 () Bool)

(assert (=> b!5257319 (=> res!2231052 e!3270526)))

(assert (=> b!5257319 (= res!2231052 (not (is-ElementMatch!14872 lt!2154409)))))

(declare-fun e!3270521 () Bool)

(assert (=> b!5257319 (= e!3270521 e!3270526)))

(declare-fun b!5257320 () Bool)

(declare-fun res!2231051 () Bool)

(declare-fun e!3270522 () Bool)

(assert (=> b!5257320 (=> res!2231051 e!3270522)))

(assert (=> b!5257320 (= res!2231051 (not (isEmpty!32737 (tail!10369 s!2326))))))

(declare-fun b!5257321 () Bool)

(declare-fun e!3270520 () Bool)

(assert (=> b!5257321 (= e!3270526 e!3270520)))

(declare-fun res!2231058 () Bool)

(assert (=> b!5257321 (=> (not res!2231058) (not e!3270520))))

(assert (=> b!5257321 (= res!2231058 (not lt!2154613))))

(declare-fun b!5257322 () Bool)

(assert (=> b!5257322 (= e!3270521 (not lt!2154613))))

(declare-fun b!5257323 () Bool)

(assert (=> b!5257323 (= e!3270520 e!3270522)))

(declare-fun res!2231056 () Bool)

(assert (=> b!5257323 (=> res!2231056 e!3270522)))

(assert (=> b!5257323 (= res!2231056 call!372624)))

(declare-fun b!5257324 () Bool)

(assert (=> b!5257324 (= e!3270523 (= (head!11272 s!2326) (c!909754 lt!2154409)))))

(declare-fun b!5257325 () Bool)

(assert (=> b!5257325 (= e!3270522 (not (= (head!11272 s!2326) (c!909754 lt!2154409))))))

(declare-fun b!5257326 () Bool)

(assert (=> b!5257326 (= e!3270524 e!3270521)))

(declare-fun c!909825 () Bool)

(assert (=> b!5257326 (= c!909825 (is-EmptyLang!14872 lt!2154409))))

(assert (= (and d!1692522 c!909826) b!5257318))

(assert (= (and d!1692522 (not c!909826)) b!5257317))

(assert (= (and d!1692522 c!909824) b!5257314))

(assert (= (and d!1692522 (not c!909824)) b!5257326))

(assert (= (and b!5257326 c!909825) b!5257322))

(assert (= (and b!5257326 (not c!909825)) b!5257319))

(assert (= (and b!5257319 (not res!2231052)) b!5257316))

(assert (= (and b!5257316 res!2231055) b!5257315))

(assert (= (and b!5257315 res!2231054) b!5257313))

(assert (= (and b!5257313 res!2231057) b!5257324))

(assert (= (and b!5257316 (not res!2231053)) b!5257321))

(assert (= (and b!5257321 res!2231058) b!5257323))

(assert (= (and b!5257323 (not res!2231056)) b!5257320))

(assert (= (and b!5257320 (not res!2231051)) b!5257325))

(assert (= (or b!5257314 b!5257315 b!5257323) bm!372619))

(assert (=> d!1692522 m!6299730))

(declare-fun m!6299750 () Bool)

(assert (=> d!1692522 m!6299750))

(assert (=> b!5257313 m!6299738))

(assert (=> b!5257313 m!6299738))

(assert (=> b!5257313 m!6299740))

(assert (=> b!5257324 m!6299742))

(assert (=> bm!372619 m!6299730))

(assert (=> b!5257325 m!6299742))

(declare-fun m!6299752 () Bool)

(assert (=> b!5257318 m!6299752))

(assert (=> b!5257320 m!6299738))

(assert (=> b!5257320 m!6299738))

(assert (=> b!5257320 m!6299740))

(assert (=> b!5257317 m!6299742))

(assert (=> b!5257317 m!6299742))

(declare-fun m!6299754 () Bool)

(assert (=> b!5257317 m!6299754))

(assert (=> b!5257317 m!6299738))

(assert (=> b!5257317 m!6299754))

(assert (=> b!5257317 m!6299738))

(declare-fun m!6299756 () Bool)

(assert (=> b!5257317 m!6299756))

(assert (=> b!5256968 d!1692522))

(declare-fun bs!1219117 () Bool)

(declare-fun b!5257332 () Bool)

(assert (= bs!1219117 (and b!5257332 b!5256960)))

(declare-fun lambda!264950 () Int)

(assert (=> bs!1219117 (not (= lambda!264950 lambda!264926))))

(assert (=> bs!1219117 (not (= lambda!264950 lambda!264927))))

(declare-fun bs!1219118 () Bool)

(assert (= bs!1219118 (and b!5257332 b!5257247)))

(assert (=> bs!1219118 (= (and (= (reg!15201 lt!2154409) (reg!15201 lt!2154415)) (= lt!2154409 lt!2154415)) (= lambda!264950 lambda!264948))))

(declare-fun bs!1219119 () Bool)

(assert (= bs!1219119 (and b!5257332 b!5257242)))

(assert (=> bs!1219119 (not (= lambda!264950 lambda!264949))))

(assert (=> b!5257332 true))

(assert (=> b!5257332 true))

(declare-fun bs!1219120 () Bool)

(declare-fun b!5257327 () Bool)

(assert (= bs!1219120 (and b!5257327 b!5257247)))

(declare-fun lambda!264951 () Int)

(assert (=> bs!1219120 (not (= lambda!264951 lambda!264948))))

(declare-fun bs!1219121 () Bool)

(assert (= bs!1219121 (and b!5257327 b!5257332)))

(assert (=> bs!1219121 (not (= lambda!264951 lambda!264950))))

(declare-fun bs!1219122 () Bool)

(assert (= bs!1219122 (and b!5257327 b!5256960)))

(assert (=> bs!1219122 (not (= lambda!264951 lambda!264926))))

(declare-fun bs!1219123 () Bool)

(assert (= bs!1219123 (and b!5257327 b!5257242)))

(assert (=> bs!1219123 (= (and (= (regOne!30256 lt!2154409) (regOne!30256 lt!2154415)) (= (regTwo!30256 lt!2154409) (regTwo!30256 lt!2154415))) (= lambda!264951 lambda!264949))))

(assert (=> bs!1219122 (= (and (= (regOne!30256 lt!2154409) (regOne!30256 r!7292)) (= (regTwo!30256 lt!2154409) (regTwo!30256 r!7292))) (= lambda!264951 lambda!264927))))

(assert (=> b!5257327 true))

(assert (=> b!5257327 true))

(declare-fun e!3270527 () Bool)

(declare-fun call!372627 () Bool)

(assert (=> b!5257327 (= e!3270527 call!372627)))

(declare-fun b!5257328 () Bool)

(declare-fun c!909830 () Bool)

(assert (=> b!5257328 (= c!909830 (is-Union!14872 lt!2154409))))

(declare-fun e!3270531 () Bool)

(declare-fun e!3270528 () Bool)

(assert (=> b!5257328 (= e!3270531 e!3270528)))

(declare-fun c!909827 () Bool)

(declare-fun bm!372622 () Bool)

(assert (=> bm!372622 (= call!372627 (Exists!2053 (ite c!909827 lambda!264950 lambda!264951)))))

(declare-fun b!5257329 () Bool)

(assert (=> b!5257329 (= e!3270531 (= s!2326 (Cons!60791 (c!909754 lt!2154409) Nil!60791)))))

(declare-fun b!5257330 () Bool)

(declare-fun c!909828 () Bool)

(assert (=> b!5257330 (= c!909828 (is-ElementMatch!14872 lt!2154409))))

(declare-fun e!3270529 () Bool)

(assert (=> b!5257330 (= e!3270529 e!3270531)))

(declare-fun b!5257331 () Bool)

(declare-fun res!2231059 () Bool)

(declare-fun e!3270530 () Bool)

(assert (=> b!5257331 (=> res!2231059 e!3270530)))

(declare-fun call!372628 () Bool)

(assert (=> b!5257331 (= res!2231059 call!372628)))

(assert (=> b!5257331 (= e!3270527 e!3270530)))

(assert (=> b!5257332 (= e!3270530 call!372627)))

(declare-fun b!5257333 () Bool)

(declare-fun e!3270532 () Bool)

(assert (=> b!5257333 (= e!3270532 e!3270529)))

(declare-fun res!2231060 () Bool)

(assert (=> b!5257333 (= res!2231060 (not (is-EmptyLang!14872 lt!2154409)))))

(assert (=> b!5257333 (=> (not res!2231060) (not e!3270529))))

(declare-fun b!5257334 () Bool)

(assert (=> b!5257334 (= e!3270528 e!3270527)))

(assert (=> b!5257334 (= c!909827 (is-Star!14872 lt!2154409))))

(declare-fun b!5257335 () Bool)

(declare-fun e!3270533 () Bool)

(assert (=> b!5257335 (= e!3270528 e!3270533)))

(declare-fun res!2231061 () Bool)

(assert (=> b!5257335 (= res!2231061 (matchRSpec!1975 (regOne!30257 lt!2154409) s!2326))))

(assert (=> b!5257335 (=> res!2231061 e!3270533)))

(declare-fun bm!372623 () Bool)

(assert (=> bm!372623 (= call!372628 (isEmpty!32737 s!2326))))

(declare-fun d!1692524 () Bool)

(declare-fun c!909829 () Bool)

(assert (=> d!1692524 (= c!909829 (is-EmptyExpr!14872 lt!2154409))))

(assert (=> d!1692524 (= (matchRSpec!1975 lt!2154409 s!2326) e!3270532)))

(declare-fun b!5257336 () Bool)

(assert (=> b!5257336 (= e!3270533 (matchRSpec!1975 (regTwo!30257 lt!2154409) s!2326))))

(declare-fun b!5257337 () Bool)

(assert (=> b!5257337 (= e!3270532 call!372628)))

(assert (= (and d!1692524 c!909829) b!5257337))

(assert (= (and d!1692524 (not c!909829)) b!5257333))

(assert (= (and b!5257333 res!2231060) b!5257330))

(assert (= (and b!5257330 c!909828) b!5257329))

(assert (= (and b!5257330 (not c!909828)) b!5257328))

(assert (= (and b!5257328 c!909830) b!5257335))

(assert (= (and b!5257328 (not c!909830)) b!5257334))

(assert (= (and b!5257335 (not res!2231061)) b!5257336))

(assert (= (and b!5257334 c!909827) b!5257331))

(assert (= (and b!5257334 (not c!909827)) b!5257327))

(assert (= (and b!5257331 (not res!2231059)) b!5257332))

(assert (= (or b!5257332 b!5257327) bm!372622))

(assert (= (or b!5257337 b!5257331) bm!372623))

(declare-fun m!6299758 () Bool)

(assert (=> bm!372622 m!6299758))

(declare-fun m!6299760 () Bool)

(assert (=> b!5257335 m!6299760))

(assert (=> bm!372623 m!6299730))

(declare-fun m!6299762 () Bool)

(assert (=> b!5257336 m!6299762))

(assert (=> b!5256968 d!1692524))

(declare-fun d!1692526 () Bool)

(assert (=> d!1692526 (= (matchR!7057 lt!2154415 s!2326) (matchRSpec!1975 lt!2154415 s!2326))))

(declare-fun lt!2154616 () Unit!152990)

(declare-fun choose!39203 (Regex!14872 List!60915) Unit!152990)

(assert (=> d!1692526 (= lt!2154616 (choose!39203 lt!2154415 s!2326))))

(assert (=> d!1692526 (validRegex!6608 lt!2154415)))

(assert (=> d!1692526 (= (mainMatchTheorem!1975 lt!2154415 s!2326) lt!2154616)))

(declare-fun bs!1219124 () Bool)

(assert (= bs!1219124 d!1692526))

(assert (=> bs!1219124 m!6299486))

(assert (=> bs!1219124 m!6299484))

(declare-fun m!6299764 () Bool)

(assert (=> bs!1219124 m!6299764))

(assert (=> bs!1219124 m!6299736))

(assert (=> b!5256968 d!1692526))

(declare-fun d!1692528 () Bool)

(assert (=> d!1692528 (= (matchR!7057 lt!2154409 s!2326) (matchRSpec!1975 lt!2154409 s!2326))))

(declare-fun lt!2154617 () Unit!152990)

(assert (=> d!1692528 (= lt!2154617 (choose!39203 lt!2154409 s!2326))))

(assert (=> d!1692528 (validRegex!6608 lt!2154409)))

(assert (=> d!1692528 (= (mainMatchTheorem!1975 lt!2154409 s!2326) lt!2154617)))

(declare-fun bs!1219125 () Bool)

(assert (= bs!1219125 d!1692528))

(assert (=> bs!1219125 m!6299490))

(assert (=> bs!1219125 m!6299482))

(declare-fun m!6299766 () Bool)

(assert (=> bs!1219125 m!6299766))

(assert (=> bs!1219125 m!6299750))

(assert (=> b!5256968 d!1692528))

(declare-fun d!1692530 () Bool)

(assert (=> d!1692530 (= (matchR!7057 (Concat!23717 (Union!14872 (regOne!30257 (regOne!30256 r!7292)) (regTwo!30257 (regOne!30256 r!7292))) (regTwo!30256 r!7292)) s!2326) (matchR!7057 (Union!14872 (Concat!23717 (regOne!30257 (regOne!30256 r!7292)) (regTwo!30256 r!7292)) (Concat!23717 (regTwo!30257 (regOne!30256 r!7292)) (regTwo!30256 r!7292))) s!2326))))

(declare-fun lt!2154620 () Unit!152990)

(declare-fun choose!39204 (Regex!14872 Regex!14872 Regex!14872 List!60915) Unit!152990)

(assert (=> d!1692530 (= lt!2154620 (choose!39204 (regOne!30257 (regOne!30256 r!7292)) (regTwo!30257 (regOne!30256 r!7292)) (regTwo!30256 r!7292) s!2326))))

(assert (=> d!1692530 (validRegex!6608 (regOne!30257 (regOne!30256 r!7292)))))

(assert (=> d!1692530 (= (lemmaConcatDistributesInUnion!17 (regOne!30257 (regOne!30256 r!7292)) (regTwo!30257 (regOne!30256 r!7292)) (regTwo!30256 r!7292) s!2326) lt!2154620)))

(declare-fun bs!1219126 () Bool)

(assert (= bs!1219126 d!1692530))

(declare-fun m!6299774 () Bool)

(assert (=> bs!1219126 m!6299774))

(declare-fun m!6299776 () Bool)

(assert (=> bs!1219126 m!6299776))

(declare-fun m!6299778 () Bool)

(assert (=> bs!1219126 m!6299778))

(declare-fun m!6299780 () Bool)

(assert (=> bs!1219126 m!6299780))

(assert (=> b!5256968 d!1692530))

(declare-fun b!5257370 () Bool)

(declare-fun e!3270558 () Bool)

(declare-fun call!372640 () Bool)

(assert (=> b!5257370 (= e!3270558 call!372640)))

(declare-fun bm!372633 () Bool)

(declare-fun call!372639 () Bool)

(assert (=> bm!372633 (= call!372639 call!372640)))

(declare-fun b!5257371 () Bool)

(declare-fun e!3270563 () Bool)

(assert (=> b!5257371 (= e!3270563 e!3270558)))

(declare-fun res!2231078 () Bool)

(assert (=> b!5257371 (= res!2231078 (not (nullable!5041 (reg!15201 r!7292))))))

(assert (=> b!5257371 (=> (not res!2231078) (not e!3270558))))

(declare-fun b!5257372 () Bool)

(declare-fun e!3270562 () Bool)

(assert (=> b!5257372 (= e!3270562 call!372639)))

(declare-fun b!5257373 () Bool)

(declare-fun e!3270561 () Bool)

(assert (=> b!5257373 (= e!3270561 e!3270563)))

(declare-fun c!909840 () Bool)

(assert (=> b!5257373 (= c!909840 (is-Star!14872 r!7292))))

(declare-fun d!1692534 () Bool)

(declare-fun res!2231081 () Bool)

(assert (=> d!1692534 (=> res!2231081 e!3270561)))

(assert (=> d!1692534 (= res!2231081 (is-ElementMatch!14872 r!7292))))

(assert (=> d!1692534 (= (validRegex!6608 r!7292) e!3270561)))

(declare-fun b!5257369 () Bool)

(declare-fun e!3270560 () Bool)

(assert (=> b!5257369 (= e!3270563 e!3270560)))

(declare-fun c!909839 () Bool)

(assert (=> b!5257369 (= c!909839 (is-Union!14872 r!7292))))

(declare-fun bm!372634 () Bool)

(assert (=> bm!372634 (= call!372640 (validRegex!6608 (ite c!909840 (reg!15201 r!7292) (ite c!909839 (regTwo!30257 r!7292) (regTwo!30256 r!7292)))))))

(declare-fun b!5257374 () Bool)

(declare-fun e!3270557 () Bool)

(assert (=> b!5257374 (= e!3270557 call!372639)))

(declare-fun b!5257375 () Bool)

(declare-fun e!3270559 () Bool)

(assert (=> b!5257375 (= e!3270559 e!3270557)))

(declare-fun res!2231079 () Bool)

(assert (=> b!5257375 (=> (not res!2231079) (not e!3270557))))

(declare-fun call!372638 () Bool)

(assert (=> b!5257375 (= res!2231079 call!372638)))

(declare-fun b!5257376 () Bool)

(declare-fun res!2231080 () Bool)

(assert (=> b!5257376 (=> res!2231080 e!3270559)))

(assert (=> b!5257376 (= res!2231080 (not (is-Concat!23717 r!7292)))))

(assert (=> b!5257376 (= e!3270560 e!3270559)))

(declare-fun b!5257377 () Bool)

(declare-fun res!2231077 () Bool)

(assert (=> b!5257377 (=> (not res!2231077) (not e!3270562))))

(assert (=> b!5257377 (= res!2231077 call!372638)))

(assert (=> b!5257377 (= e!3270560 e!3270562)))

(declare-fun bm!372635 () Bool)

(assert (=> bm!372635 (= call!372638 (validRegex!6608 (ite c!909839 (regOne!30257 r!7292) (regOne!30256 r!7292))))))

(assert (= (and d!1692534 (not res!2231081)) b!5257373))

(assert (= (and b!5257373 c!909840) b!5257371))

(assert (= (and b!5257373 (not c!909840)) b!5257369))

(assert (= (and b!5257371 res!2231078) b!5257370))

(assert (= (and b!5257369 c!909839) b!5257377))

(assert (= (and b!5257369 (not c!909839)) b!5257376))

(assert (= (and b!5257377 res!2231077) b!5257372))

(assert (= (and b!5257376 (not res!2231080)) b!5257375))

(assert (= (and b!5257375 res!2231079) b!5257374))

(assert (= (or b!5257372 b!5257374) bm!372633))

(assert (= (or b!5257377 b!5257375) bm!372635))

(assert (= (or b!5257370 bm!372633) bm!372634))

(declare-fun m!6299782 () Bool)

(assert (=> b!5257371 m!6299782))

(declare-fun m!6299784 () Bool)

(assert (=> bm!372634 m!6299784))

(declare-fun m!6299786 () Bool)

(assert (=> bm!372635 m!6299786))

(assert (=> start!555284 d!1692534))

(declare-fun d!1692536 () Bool)

(declare-fun lambda!264954 () Int)

(declare-fun forall!14286 (List!60916 Int) Bool)

(assert (=> d!1692536 (= (inv!80428 (h!67241 zl!343)) (forall!14286 (exprs!4756 (h!67241 zl!343)) lambda!264954))))

(declare-fun bs!1219127 () Bool)

(assert (= bs!1219127 d!1692536))

(declare-fun m!6299788 () Bool)

(assert (=> bs!1219127 m!6299788))

(assert (=> b!5256967 d!1692536))

(declare-fun d!1692538 () Bool)

(declare-fun nullableFct!1429 (Regex!14872) Bool)

(assert (=> d!1692538 (= (nullable!5041 (h!67240 (exprs!4756 (h!67241 zl!343)))) (nullableFct!1429 (h!67240 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun bs!1219128 () Bool)

(assert (= bs!1219128 d!1692538))

(declare-fun m!6299790 () Bool)

(assert (=> bs!1219128 m!6299790))

(assert (=> b!5256976 d!1692538))

(declare-fun b!5257406 () Bool)

(declare-fun call!372655 () (Set Context!8512))

(declare-fun e!3270581 () (Set Context!8512))

(assert (=> b!5257406 (= e!3270581 (set.union call!372655 (derivationStepZipperUp!244 (Context!8513 (t!374099 (exprs!4756 (Context!8513 (Cons!60792 (h!67240 (exprs!4756 (h!67241 zl!343))) (t!374099 (exprs!4756 (h!67241 zl!343)))))))) (h!67239 s!2326))))))

(declare-fun b!5257407 () Bool)

(declare-fun e!3270580 () (Set Context!8512))

(assert (=> b!5257407 (= e!3270581 e!3270580)))

(declare-fun c!909853 () Bool)

(assert (=> b!5257407 (= c!909853 (is-Cons!60792 (exprs!4756 (Context!8513 (Cons!60792 (h!67240 (exprs!4756 (h!67241 zl!343))) (t!374099 (exprs!4756 (h!67241 zl!343))))))))))

(declare-fun bm!372650 () Bool)

(assert (=> bm!372650 (= call!372655 (derivationStepZipperDown!320 (h!67240 (exprs!4756 (Context!8513 (Cons!60792 (h!67240 (exprs!4756 (h!67241 zl!343))) (t!374099 (exprs!4756 (h!67241 zl!343))))))) (Context!8513 (t!374099 (exprs!4756 (Context!8513 (Cons!60792 (h!67240 (exprs!4756 (h!67241 zl!343))) (t!374099 (exprs!4756 (h!67241 zl!343)))))))) (h!67239 s!2326)))))

(declare-fun b!5257408 () Bool)

(assert (=> b!5257408 (= e!3270580 (as set.empty (Set Context!8512)))))

(declare-fun d!1692540 () Bool)

(declare-fun c!909854 () Bool)

(declare-fun e!3270582 () Bool)

(assert (=> d!1692540 (= c!909854 e!3270582)))

(declare-fun res!2231086 () Bool)

(assert (=> d!1692540 (=> (not res!2231086) (not e!3270582))))

(assert (=> d!1692540 (= res!2231086 (is-Cons!60792 (exprs!4756 (Context!8513 (Cons!60792 (h!67240 (exprs!4756 (h!67241 zl!343))) (t!374099 (exprs!4756 (h!67241 zl!343))))))))))

(assert (=> d!1692540 (= (derivationStepZipperUp!244 (Context!8513 (Cons!60792 (h!67240 (exprs!4756 (h!67241 zl!343))) (t!374099 (exprs!4756 (h!67241 zl!343))))) (h!67239 s!2326)) e!3270581)))

(declare-fun b!5257409 () Bool)

(assert (=> b!5257409 (= e!3270582 (nullable!5041 (h!67240 (exprs!4756 (Context!8513 (Cons!60792 (h!67240 (exprs!4756 (h!67241 zl!343))) (t!374099 (exprs!4756 (h!67241 zl!343)))))))))))

(declare-fun b!5257410 () Bool)

(assert (=> b!5257410 (= e!3270580 call!372655)))

(assert (= (and d!1692540 res!2231086) b!5257409))

(assert (= (and d!1692540 c!909854) b!5257406))

(assert (= (and d!1692540 (not c!909854)) b!5257407))

(assert (= (and b!5257407 c!909853) b!5257410))

(assert (= (and b!5257407 (not c!909853)) b!5257408))

(assert (= (or b!5257406 b!5257410) bm!372650))

(declare-fun m!6299792 () Bool)

(assert (=> b!5257406 m!6299792))

(declare-fun m!6299794 () Bool)

(assert (=> bm!372650 m!6299794))

(declare-fun m!6299796 () Bool)

(assert (=> b!5257409 m!6299796))

(assert (=> b!5256976 d!1692540))

(declare-fun b!5257411 () Bool)

(declare-fun call!372656 () (Set Context!8512))

(declare-fun e!3270584 () (Set Context!8512))

(assert (=> b!5257411 (= e!3270584 (set.union call!372656 (derivationStepZipperUp!244 (Context!8513 (t!374099 (exprs!4756 lt!2154413))) (h!67239 s!2326))))))

(declare-fun b!5257412 () Bool)

(declare-fun e!3270583 () (Set Context!8512))

(assert (=> b!5257412 (= e!3270584 e!3270583)))

(declare-fun c!909855 () Bool)

(assert (=> b!5257412 (= c!909855 (is-Cons!60792 (exprs!4756 lt!2154413)))))

(declare-fun bm!372651 () Bool)

(assert (=> bm!372651 (= call!372656 (derivationStepZipperDown!320 (h!67240 (exprs!4756 lt!2154413)) (Context!8513 (t!374099 (exprs!4756 lt!2154413))) (h!67239 s!2326)))))

(declare-fun b!5257413 () Bool)

(assert (=> b!5257413 (= e!3270583 (as set.empty (Set Context!8512)))))

(declare-fun d!1692542 () Bool)

(declare-fun c!909856 () Bool)

(declare-fun e!3270585 () Bool)

(assert (=> d!1692542 (= c!909856 e!3270585)))

(declare-fun res!2231087 () Bool)

(assert (=> d!1692542 (=> (not res!2231087) (not e!3270585))))

(assert (=> d!1692542 (= res!2231087 (is-Cons!60792 (exprs!4756 lt!2154413)))))

(assert (=> d!1692542 (= (derivationStepZipperUp!244 lt!2154413 (h!67239 s!2326)) e!3270584)))

(declare-fun b!5257414 () Bool)

(assert (=> b!5257414 (= e!3270585 (nullable!5041 (h!67240 (exprs!4756 lt!2154413))))))

(declare-fun b!5257415 () Bool)

(assert (=> b!5257415 (= e!3270583 call!372656)))

(assert (= (and d!1692542 res!2231087) b!5257414))

(assert (= (and d!1692542 c!909856) b!5257411))

(assert (= (and d!1692542 (not c!909856)) b!5257412))

(assert (= (and b!5257412 c!909855) b!5257415))

(assert (= (and b!5257412 (not c!909855)) b!5257413))

(assert (= (or b!5257411 b!5257415) bm!372651))

(declare-fun m!6299798 () Bool)

(assert (=> b!5257411 m!6299798))

(declare-fun m!6299800 () Bool)

(assert (=> bm!372651 m!6299800))

(declare-fun m!6299802 () Bool)

(assert (=> b!5257414 m!6299802))

(assert (=> b!5256976 d!1692542))

(declare-fun call!372657 () (Set Context!8512))

(declare-fun b!5257416 () Bool)

(declare-fun e!3270587 () (Set Context!8512))

(assert (=> b!5257416 (= e!3270587 (set.union call!372657 (derivationStepZipperUp!244 (Context!8513 (t!374099 (exprs!4756 (h!67241 zl!343)))) (h!67239 s!2326))))))

(declare-fun b!5257417 () Bool)

(declare-fun e!3270586 () (Set Context!8512))

(assert (=> b!5257417 (= e!3270587 e!3270586)))

(declare-fun c!909857 () Bool)

(assert (=> b!5257417 (= c!909857 (is-Cons!60792 (exprs!4756 (h!67241 zl!343))))))

(declare-fun bm!372652 () Bool)

(assert (=> bm!372652 (= call!372657 (derivationStepZipperDown!320 (h!67240 (exprs!4756 (h!67241 zl!343))) (Context!8513 (t!374099 (exprs!4756 (h!67241 zl!343)))) (h!67239 s!2326)))))

(declare-fun b!5257418 () Bool)

(assert (=> b!5257418 (= e!3270586 (as set.empty (Set Context!8512)))))

(declare-fun d!1692544 () Bool)

(declare-fun c!909858 () Bool)

(declare-fun e!3270588 () Bool)

(assert (=> d!1692544 (= c!909858 e!3270588)))

(declare-fun res!2231088 () Bool)

(assert (=> d!1692544 (=> (not res!2231088) (not e!3270588))))

(assert (=> d!1692544 (= res!2231088 (is-Cons!60792 (exprs!4756 (h!67241 zl!343))))))

(assert (=> d!1692544 (= (derivationStepZipperUp!244 (h!67241 zl!343) (h!67239 s!2326)) e!3270587)))

(declare-fun b!5257419 () Bool)

(assert (=> b!5257419 (= e!3270588 (nullable!5041 (h!67240 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257420 () Bool)

(assert (=> b!5257420 (= e!3270586 call!372657)))

(assert (= (and d!1692544 res!2231088) b!5257419))

(assert (= (and d!1692544 c!909858) b!5257416))

(assert (= (and d!1692544 (not c!909858)) b!5257417))

(assert (= (and b!5257417 c!909857) b!5257420))

(assert (= (and b!5257417 (not c!909857)) b!5257418))

(assert (= (or b!5257416 b!5257420) bm!372652))

(declare-fun m!6299804 () Bool)

(assert (=> b!5257416 m!6299804))

(declare-fun m!6299806 () Bool)

(assert (=> bm!372652 m!6299806))

(assert (=> b!5257419 m!6299414))

(assert (=> b!5256976 d!1692544))

(declare-fun bm!372653 () Bool)

(declare-fun call!372660 () (Set Context!8512))

(declare-fun call!372661 () (Set Context!8512))

(assert (=> bm!372653 (= call!372660 call!372661)))

(declare-fun bm!372654 () Bool)

(declare-fun call!372662 () List!60916)

(declare-fun c!909863 () Bool)

(declare-fun c!909859 () Bool)

(assert (=> bm!372654 (= call!372662 ($colon$colon!1327 (exprs!4756 lt!2154413) (ite (or c!909863 c!909859) (regTwo!30256 (h!67240 (exprs!4756 (h!67241 zl!343)))) (h!67240 (exprs!4756 (h!67241 zl!343))))))))

(declare-fun bm!372655 () Bool)

(declare-fun call!372659 () List!60916)

(assert (=> bm!372655 (= call!372659 call!372662)))

(declare-fun c!909860 () Bool)

(declare-fun bm!372656 () Bool)

(assert (=> bm!372656 (= call!372661 (derivationStepZipperDown!320 (ite c!909860 (regOne!30257 (h!67240 (exprs!4756 (h!67241 zl!343)))) (ite c!909863 (regTwo!30256 (h!67240 (exprs!4756 (h!67241 zl!343)))) (ite c!909859 (regOne!30256 (h!67240 (exprs!4756 (h!67241 zl!343)))) (reg!15201 (h!67240 (exprs!4756 (h!67241 zl!343))))))) (ite (or c!909860 c!909863) lt!2154413 (Context!8513 call!372659)) (h!67239 s!2326)))))

(declare-fun call!372663 () (Set Context!8512))

(declare-fun bm!372657 () Bool)

(assert (=> bm!372657 (= call!372663 (derivationStepZipperDown!320 (ite c!909860 (regTwo!30257 (h!67240 (exprs!4756 (h!67241 zl!343)))) (regOne!30256 (h!67240 (exprs!4756 (h!67241 zl!343))))) (ite c!909860 lt!2154413 (Context!8513 call!372662)) (h!67239 s!2326)))))

(declare-fun b!5257422 () Bool)

(declare-fun e!3270592 () (Set Context!8512))

(assert (=> b!5257422 (= e!3270592 (as set.empty (Set Context!8512)))))

(declare-fun b!5257423 () Bool)

(declare-fun e!3270594 () (Set Context!8512))

(assert (=> b!5257423 (= e!3270594 (set.union call!372663 call!372660))))

(declare-fun b!5257424 () Bool)

(declare-fun e!3270590 () (Set Context!8512))

(declare-fun call!372658 () (Set Context!8512))

(assert (=> b!5257424 (= e!3270590 call!372658)))

(declare-fun b!5257425 () Bool)

(assert (=> b!5257425 (= e!3270592 call!372658)))

(declare-fun d!1692546 () Bool)

(declare-fun c!909861 () Bool)

(assert (=> d!1692546 (= c!909861 (and (is-ElementMatch!14872 (h!67240 (exprs!4756 (h!67241 zl!343)))) (= (c!909754 (h!67240 (exprs!4756 (h!67241 zl!343)))) (h!67239 s!2326))))))

(declare-fun e!3270593 () (Set Context!8512))

(assert (=> d!1692546 (= (derivationStepZipperDown!320 (h!67240 (exprs!4756 (h!67241 zl!343))) lt!2154413 (h!67239 s!2326)) e!3270593)))

(declare-fun b!5257421 () Bool)

(declare-fun e!3270591 () Bool)

(assert (=> b!5257421 (= e!3270591 (nullable!5041 (regOne!30256 (h!67240 (exprs!4756 (h!67241 zl!343))))))))

(declare-fun b!5257426 () Bool)

(assert (=> b!5257426 (= e!3270594 e!3270590)))

(assert (=> b!5257426 (= c!909859 (is-Concat!23717 (h!67240 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257427 () Bool)

(assert (=> b!5257427 (= e!3270593 (set.insert lt!2154413 (as set.empty (Set Context!8512))))))

(declare-fun b!5257428 () Bool)

(declare-fun e!3270589 () (Set Context!8512))

(assert (=> b!5257428 (= e!3270589 (set.union call!372661 call!372663))))

(declare-fun bm!372658 () Bool)

(assert (=> bm!372658 (= call!372658 call!372660)))

(declare-fun b!5257429 () Bool)

(assert (=> b!5257429 (= e!3270593 e!3270589)))

(assert (=> b!5257429 (= c!909860 (is-Union!14872 (h!67240 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257430 () Bool)

(declare-fun c!909862 () Bool)

(assert (=> b!5257430 (= c!909862 (is-Star!14872 (h!67240 (exprs!4756 (h!67241 zl!343)))))))

(assert (=> b!5257430 (= e!3270590 e!3270592)))

(declare-fun b!5257431 () Bool)

(assert (=> b!5257431 (= c!909863 e!3270591)))

(declare-fun res!2231089 () Bool)

(assert (=> b!5257431 (=> (not res!2231089) (not e!3270591))))

(assert (=> b!5257431 (= res!2231089 (is-Concat!23717 (h!67240 (exprs!4756 (h!67241 zl!343)))))))

(assert (=> b!5257431 (= e!3270589 e!3270594)))

(assert (= (and d!1692546 c!909861) b!5257427))

(assert (= (and d!1692546 (not c!909861)) b!5257429))

(assert (= (and b!5257429 c!909860) b!5257428))

(assert (= (and b!5257429 (not c!909860)) b!5257431))

(assert (= (and b!5257431 res!2231089) b!5257421))

(assert (= (and b!5257431 c!909863) b!5257423))

(assert (= (and b!5257431 (not c!909863)) b!5257426))

(assert (= (and b!5257426 c!909859) b!5257424))

(assert (= (and b!5257426 (not c!909859)) b!5257430))

(assert (= (and b!5257430 c!909862) b!5257425))

(assert (= (and b!5257430 (not c!909862)) b!5257422))

(assert (= (or b!5257424 b!5257425) bm!372655))

(assert (= (or b!5257424 b!5257425) bm!372658))

(assert (= (or b!5257423 bm!372655) bm!372654))

(assert (= (or b!5257423 bm!372658) bm!372653))

(assert (= (or b!5257428 b!5257423) bm!372657))

(assert (= (or b!5257428 bm!372653) bm!372656))

(declare-fun m!6299808 () Bool)

(assert (=> b!5257421 m!6299808))

(assert (=> b!5257427 m!6299690))

(declare-fun m!6299810 () Bool)

(assert (=> bm!372657 m!6299810))

(declare-fun m!6299812 () Bool)

(assert (=> bm!372656 m!6299812))

(declare-fun m!6299814 () Bool)

(assert (=> bm!372654 m!6299814))

(assert (=> b!5256976 d!1692546))

(declare-fun d!1692548 () Bool)

(declare-fun choose!39205 ((Set Context!8512) Int) (Set Context!8512))

(assert (=> d!1692548 (= (flatMap!599 z!1189 lambda!264928) (choose!39205 z!1189 lambda!264928))))

(declare-fun bs!1219129 () Bool)

(assert (= bs!1219129 d!1692548))

(declare-fun m!6299816 () Bool)

(assert (=> bs!1219129 m!6299816))

(assert (=> b!5256976 d!1692548))

(declare-fun d!1692550 () Bool)

(declare-fun dynLambda!24020 (Int Context!8512) (Set Context!8512))

(assert (=> d!1692550 (= (flatMap!599 z!1189 lambda!264928) (dynLambda!24020 lambda!264928 (h!67241 zl!343)))))

(declare-fun lt!2154623 () Unit!152990)

(declare-fun choose!39206 ((Set Context!8512) Context!8512 Int) Unit!152990)

(assert (=> d!1692550 (= lt!2154623 (choose!39206 z!1189 (h!67241 zl!343) lambda!264928))))

(assert (=> d!1692550 (= z!1189 (set.insert (h!67241 zl!343) (as set.empty (Set Context!8512))))))

(assert (=> d!1692550 (= (lemmaFlatMapOnSingletonSet!131 z!1189 (h!67241 zl!343) lambda!264928) lt!2154623)))

(declare-fun b_lambda!202925 () Bool)

(assert (=> (not b_lambda!202925) (not d!1692550)))

(declare-fun bs!1219130 () Bool)

(assert (= bs!1219130 d!1692550))

(assert (=> bs!1219130 m!6299412))

(declare-fun m!6299818 () Bool)

(assert (=> bs!1219130 m!6299818))

(declare-fun m!6299820 () Bool)

(assert (=> bs!1219130 m!6299820))

(declare-fun m!6299822 () Bool)

(assert (=> bs!1219130 m!6299822))

(assert (=> b!5256976 d!1692550))

(declare-fun d!1692552 () Bool)

(declare-fun lt!2154624 () Int)

(assert (=> d!1692552 (>= lt!2154624 0)))

(declare-fun e!3270595 () Int)

(assert (=> d!1692552 (= lt!2154624 e!3270595)))

(declare-fun c!909864 () Bool)

(assert (=> d!1692552 (= c!909864 (is-Cons!60793 lt!2154434))))

(assert (=> d!1692552 (= (zipperDepthTotal!53 lt!2154434) lt!2154624)))

(declare-fun b!5257432 () Bool)

(assert (=> b!5257432 (= e!3270595 (+ (contextDepthTotal!35 (h!67241 lt!2154434)) (zipperDepthTotal!53 (t!374100 lt!2154434))))))

(declare-fun b!5257433 () Bool)

(assert (=> b!5257433 (= e!3270595 0)))

(assert (= (and d!1692552 c!909864) b!5257432))

(assert (= (and d!1692552 (not c!909864)) b!5257433))

(declare-fun m!6299824 () Bool)

(assert (=> b!5257432 m!6299824))

(declare-fun m!6299826 () Bool)

(assert (=> b!5257432 m!6299826))

(assert (=> b!5256974 d!1692552))

(declare-fun bs!1219131 () Bool)

(declare-fun d!1692554 () Bool)

(assert (= bs!1219131 (and d!1692554 d!1692536)))

(declare-fun lambda!264957 () Int)

(assert (=> bs!1219131 (= lambda!264957 lambda!264954)))

(declare-fun b!5257476 () Bool)

(declare-fun e!3270624 () Regex!14872)

(assert (=> b!5257476 (= e!3270624 (Concat!23717 (h!67240 (t!374099 (exprs!4756 (h!67241 zl!343)))) (generalisedConcat!541 (t!374099 (t!374099 (exprs!4756 (h!67241 zl!343)))))))))

(declare-fun b!5257477 () Bool)

(declare-fun e!3270625 () Regex!14872)

(assert (=> b!5257477 (= e!3270625 e!3270624)))

(declare-fun c!909884 () Bool)

(assert (=> b!5257477 (= c!909884 (is-Cons!60792 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257478 () Bool)

(declare-fun e!3270623 () Bool)

(declare-fun lt!2154627 () Regex!14872)

(declare-fun isEmptyExpr!812 (Regex!14872) Bool)

(assert (=> b!5257478 (= e!3270623 (isEmptyExpr!812 lt!2154627))))

(declare-fun b!5257479 () Bool)

(declare-fun e!3270622 () Bool)

(declare-fun head!11273 (List!60916) Regex!14872)

(assert (=> b!5257479 (= e!3270622 (= lt!2154627 (head!11273 (t!374099 (exprs!4756 (h!67241 zl!343))))))))

(declare-fun b!5257480 () Bool)

(assert (=> b!5257480 (= e!3270624 EmptyExpr!14872)))

(declare-fun e!3270620 () Bool)

(assert (=> d!1692554 e!3270620))

(declare-fun res!2231096 () Bool)

(assert (=> d!1692554 (=> (not res!2231096) (not e!3270620))))

(assert (=> d!1692554 (= res!2231096 (validRegex!6608 lt!2154627))))

(assert (=> d!1692554 (= lt!2154627 e!3270625)))

(declare-fun c!909883 () Bool)

(declare-fun e!3270621 () Bool)

(assert (=> d!1692554 (= c!909883 e!3270621)))

(declare-fun res!2231097 () Bool)

(assert (=> d!1692554 (=> (not res!2231097) (not e!3270621))))

(assert (=> d!1692554 (= res!2231097 (is-Cons!60792 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(assert (=> d!1692554 (forall!14286 (t!374099 (exprs!4756 (h!67241 zl!343))) lambda!264957)))

(assert (=> d!1692554 (= (generalisedConcat!541 (t!374099 (exprs!4756 (h!67241 zl!343)))) lt!2154627)))

(declare-fun b!5257481 () Bool)

(declare-fun isConcat!335 (Regex!14872) Bool)

(assert (=> b!5257481 (= e!3270622 (isConcat!335 lt!2154627))))

(declare-fun b!5257482 () Bool)

(assert (=> b!5257482 (= e!3270620 e!3270623)))

(declare-fun c!909886 () Bool)

(assert (=> b!5257482 (= c!909886 (isEmpty!32733 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257483 () Bool)

(assert (=> b!5257483 (= e!3270621 (isEmpty!32733 (t!374099 (t!374099 (exprs!4756 (h!67241 zl!343))))))))

(declare-fun b!5257484 () Bool)

(assert (=> b!5257484 (= e!3270623 e!3270622)))

(declare-fun c!909885 () Bool)

(declare-fun tail!10370 (List!60916) List!60916)

(assert (=> b!5257484 (= c!909885 (isEmpty!32733 (tail!10370 (t!374099 (exprs!4756 (h!67241 zl!343))))))))

(declare-fun b!5257485 () Bool)

(assert (=> b!5257485 (= e!3270625 (h!67240 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(assert (= (and d!1692554 res!2231097) b!5257483))

(assert (= (and d!1692554 c!909883) b!5257485))

(assert (= (and d!1692554 (not c!909883)) b!5257477))

(assert (= (and b!5257477 c!909884) b!5257476))

(assert (= (and b!5257477 (not c!909884)) b!5257480))

(assert (= (and d!1692554 res!2231096) b!5257482))

(assert (= (and b!5257482 c!909886) b!5257478))

(assert (= (and b!5257482 (not c!909886)) b!5257484))

(assert (= (and b!5257484 c!909885) b!5257479))

(assert (= (and b!5257484 (not c!909885)) b!5257481))

(declare-fun m!6299846 () Bool)

(assert (=> b!5257476 m!6299846))

(declare-fun m!6299848 () Bool)

(assert (=> b!5257484 m!6299848))

(assert (=> b!5257484 m!6299848))

(declare-fun m!6299850 () Bool)

(assert (=> b!5257484 m!6299850))

(declare-fun m!6299852 () Bool)

(assert (=> b!5257481 m!6299852))

(declare-fun m!6299854 () Bool)

(assert (=> b!5257478 m!6299854))

(assert (=> b!5257482 m!6299392))

(declare-fun m!6299856 () Bool)

(assert (=> b!5257483 m!6299856))

(declare-fun m!6299858 () Bool)

(assert (=> d!1692554 m!6299858))

(declare-fun m!6299860 () Bool)

(assert (=> d!1692554 m!6299860))

(declare-fun m!6299862 () Bool)

(assert (=> b!5257479 m!6299862))

(assert (=> b!5256996 d!1692554))

(declare-fun d!1692560 () Bool)

(declare-fun c!909887 () Bool)

(assert (=> d!1692560 (= c!909887 (isEmpty!32737 (t!374098 s!2326)))))

(declare-fun e!3270626 () Bool)

(assert (=> d!1692560 (= (matchZipper!1116 lt!2154393 (t!374098 s!2326)) e!3270626)))

(declare-fun b!5257486 () Bool)

(assert (=> b!5257486 (= e!3270626 (nullableZipper!1277 lt!2154393))))

(declare-fun b!5257487 () Bool)

(assert (=> b!5257487 (= e!3270626 (matchZipper!1116 (derivationStepZipper!1121 lt!2154393 (head!11272 (t!374098 s!2326))) (tail!10369 (t!374098 s!2326))))))

(assert (= (and d!1692560 c!909887) b!5257486))

(assert (= (and d!1692560 (not c!909887)) b!5257487))

(assert (=> d!1692560 m!6299714))

(declare-fun m!6299864 () Bool)

(assert (=> b!5257486 m!6299864))

(assert (=> b!5257487 m!6299718))

(assert (=> b!5257487 m!6299718))

(declare-fun m!6299866 () Bool)

(assert (=> b!5257487 m!6299866))

(assert (=> b!5257487 m!6299722))

(assert (=> b!5257487 m!6299866))

(assert (=> b!5257487 m!6299722))

(declare-fun m!6299868 () Bool)

(assert (=> b!5257487 m!6299868))

(assert (=> b!5256975 d!1692560))

(declare-fun bs!1219132 () Bool)

(declare-fun b!5257493 () Bool)

(assert (= bs!1219132 (and b!5257493 b!5257247)))

(declare-fun lambda!264958 () Int)

(assert (=> bs!1219132 (= (and (= (reg!15201 r!7292) (reg!15201 lt!2154415)) (= r!7292 lt!2154415)) (= lambda!264958 lambda!264948))))

(declare-fun bs!1219133 () Bool)

(assert (= bs!1219133 (and b!5257493 b!5257332)))

(assert (=> bs!1219133 (= (and (= (reg!15201 r!7292) (reg!15201 lt!2154409)) (= r!7292 lt!2154409)) (= lambda!264958 lambda!264950))))

(declare-fun bs!1219134 () Bool)

(assert (= bs!1219134 (and b!5257493 b!5256960)))

(assert (=> bs!1219134 (not (= lambda!264958 lambda!264926))))

(declare-fun bs!1219135 () Bool)

(assert (= bs!1219135 (and b!5257493 b!5257327)))

(assert (=> bs!1219135 (not (= lambda!264958 lambda!264951))))

(declare-fun bs!1219136 () Bool)

(assert (= bs!1219136 (and b!5257493 b!5257242)))

(assert (=> bs!1219136 (not (= lambda!264958 lambda!264949))))

(assert (=> bs!1219134 (not (= lambda!264958 lambda!264927))))

(assert (=> b!5257493 true))

(assert (=> b!5257493 true))

(declare-fun bs!1219137 () Bool)

(declare-fun b!5257488 () Bool)

(assert (= bs!1219137 (and b!5257488 b!5257247)))

(declare-fun lambda!264961 () Int)

(assert (=> bs!1219137 (not (= lambda!264961 lambda!264948))))

(declare-fun bs!1219138 () Bool)

(assert (= bs!1219138 (and b!5257488 b!5257332)))

(assert (=> bs!1219138 (not (= lambda!264961 lambda!264950))))

(declare-fun bs!1219139 () Bool)

(assert (= bs!1219139 (and b!5257488 b!5256960)))

(assert (=> bs!1219139 (not (= lambda!264961 lambda!264926))))

(declare-fun bs!1219141 () Bool)

(assert (= bs!1219141 (and b!5257488 b!5257327)))

(assert (=> bs!1219141 (= (and (= (regOne!30256 r!7292) (regOne!30256 lt!2154409)) (= (regTwo!30256 r!7292) (regTwo!30256 lt!2154409))) (= lambda!264961 lambda!264951))))

(declare-fun bs!1219142 () Bool)

(assert (= bs!1219142 (and b!5257488 b!5257242)))

(assert (=> bs!1219142 (= (and (= (regOne!30256 r!7292) (regOne!30256 lt!2154415)) (= (regTwo!30256 r!7292) (regTwo!30256 lt!2154415))) (= lambda!264961 lambda!264949))))

(assert (=> bs!1219139 (= lambda!264961 lambda!264927)))

(declare-fun bs!1219143 () Bool)

(assert (= bs!1219143 (and b!5257488 b!5257493)))

(assert (=> bs!1219143 (not (= lambda!264961 lambda!264958))))

(assert (=> b!5257488 true))

(assert (=> b!5257488 true))

(declare-fun e!3270627 () Bool)

(declare-fun call!372676 () Bool)

(assert (=> b!5257488 (= e!3270627 call!372676)))

(declare-fun b!5257489 () Bool)

(declare-fun c!909891 () Bool)

(assert (=> b!5257489 (= c!909891 (is-Union!14872 r!7292))))

(declare-fun e!3270631 () Bool)

(declare-fun e!3270628 () Bool)

(assert (=> b!5257489 (= e!3270631 e!3270628)))

(declare-fun bm!372671 () Bool)

(declare-fun c!909888 () Bool)

(assert (=> bm!372671 (= call!372676 (Exists!2053 (ite c!909888 lambda!264958 lambda!264961)))))

(declare-fun b!5257490 () Bool)

(assert (=> b!5257490 (= e!3270631 (= s!2326 (Cons!60791 (c!909754 r!7292) Nil!60791)))))

(declare-fun b!5257491 () Bool)

(declare-fun c!909889 () Bool)

(assert (=> b!5257491 (= c!909889 (is-ElementMatch!14872 r!7292))))

(declare-fun e!3270629 () Bool)

(assert (=> b!5257491 (= e!3270629 e!3270631)))

(declare-fun b!5257492 () Bool)

(declare-fun res!2231098 () Bool)

(declare-fun e!3270630 () Bool)

(assert (=> b!5257492 (=> res!2231098 e!3270630)))

(declare-fun call!372677 () Bool)

(assert (=> b!5257492 (= res!2231098 call!372677)))

(assert (=> b!5257492 (= e!3270627 e!3270630)))

(assert (=> b!5257493 (= e!3270630 call!372676)))

(declare-fun b!5257494 () Bool)

(declare-fun e!3270632 () Bool)

(assert (=> b!5257494 (= e!3270632 e!3270629)))

(declare-fun res!2231099 () Bool)

(assert (=> b!5257494 (= res!2231099 (not (is-EmptyLang!14872 r!7292)))))

(assert (=> b!5257494 (=> (not res!2231099) (not e!3270629))))

(declare-fun b!5257495 () Bool)

(assert (=> b!5257495 (= e!3270628 e!3270627)))

(assert (=> b!5257495 (= c!909888 (is-Star!14872 r!7292))))

(declare-fun b!5257496 () Bool)

(declare-fun e!3270633 () Bool)

(assert (=> b!5257496 (= e!3270628 e!3270633)))

(declare-fun res!2231100 () Bool)

(assert (=> b!5257496 (= res!2231100 (matchRSpec!1975 (regOne!30257 r!7292) s!2326))))

(assert (=> b!5257496 (=> res!2231100 e!3270633)))

(declare-fun bm!372672 () Bool)

(assert (=> bm!372672 (= call!372677 (isEmpty!32737 s!2326))))

(declare-fun d!1692562 () Bool)

(declare-fun c!909890 () Bool)

(assert (=> d!1692562 (= c!909890 (is-EmptyExpr!14872 r!7292))))

(assert (=> d!1692562 (= (matchRSpec!1975 r!7292 s!2326) e!3270632)))

(declare-fun b!5257497 () Bool)

(assert (=> b!5257497 (= e!3270633 (matchRSpec!1975 (regTwo!30257 r!7292) s!2326))))

(declare-fun b!5257498 () Bool)

(assert (=> b!5257498 (= e!3270632 call!372677)))

(assert (= (and d!1692562 c!909890) b!5257498))

(assert (= (and d!1692562 (not c!909890)) b!5257494))

(assert (= (and b!5257494 res!2231099) b!5257491))

(assert (= (and b!5257491 c!909889) b!5257490))

(assert (= (and b!5257491 (not c!909889)) b!5257489))

(assert (= (and b!5257489 c!909891) b!5257496))

(assert (= (and b!5257489 (not c!909891)) b!5257495))

(assert (= (and b!5257496 (not res!2231100)) b!5257497))

(assert (= (and b!5257495 c!909888) b!5257492))

(assert (= (and b!5257495 (not c!909888)) b!5257488))

(assert (= (and b!5257492 (not res!2231098)) b!5257493))

(assert (= (or b!5257493 b!5257488) bm!372671))

(assert (= (or b!5257498 b!5257492) bm!372672))

(declare-fun m!6299872 () Bool)

(assert (=> bm!372671 m!6299872))

(declare-fun m!6299874 () Bool)

(assert (=> b!5257496 m!6299874))

(assert (=> bm!372672 m!6299730))

(declare-fun m!6299876 () Bool)

(assert (=> b!5257497 m!6299876))

(assert (=> b!5256973 d!1692562))

(declare-fun b!5257499 () Bool)

(declare-fun res!2231107 () Bool)

(declare-fun e!3270637 () Bool)

(assert (=> b!5257499 (=> (not res!2231107) (not e!3270637))))

(assert (=> b!5257499 (= res!2231107 (isEmpty!32737 (tail!10369 s!2326)))))

(declare-fun b!5257500 () Bool)

(declare-fun e!3270638 () Bool)

(declare-fun lt!2154628 () Bool)

(declare-fun call!372678 () Bool)

(assert (=> b!5257500 (= e!3270638 (= lt!2154628 call!372678))))

(declare-fun b!5257501 () Bool)

(declare-fun res!2231104 () Bool)

(assert (=> b!5257501 (=> (not res!2231104) (not e!3270637))))

(assert (=> b!5257501 (= res!2231104 (not call!372678))))

(declare-fun d!1692566 () Bool)

(assert (=> d!1692566 e!3270638))

(declare-fun c!909892 () Bool)

(assert (=> d!1692566 (= c!909892 (is-EmptyExpr!14872 r!7292))))

(declare-fun e!3270639 () Bool)

(assert (=> d!1692566 (= lt!2154628 e!3270639)))

(declare-fun c!909894 () Bool)

(assert (=> d!1692566 (= c!909894 (isEmpty!32737 s!2326))))

(assert (=> d!1692566 (validRegex!6608 r!7292)))

(assert (=> d!1692566 (= (matchR!7057 r!7292 s!2326) lt!2154628)))

(declare-fun b!5257502 () Bool)

(declare-fun res!2231103 () Bool)

(declare-fun e!3270640 () Bool)

(assert (=> b!5257502 (=> res!2231103 e!3270640)))

(assert (=> b!5257502 (= res!2231103 e!3270637)))

(declare-fun res!2231105 () Bool)

(assert (=> b!5257502 (=> (not res!2231105) (not e!3270637))))

(assert (=> b!5257502 (= res!2231105 lt!2154628)))

(declare-fun b!5257503 () Bool)

(assert (=> b!5257503 (= e!3270639 (matchR!7057 (derivativeStep!4098 r!7292 (head!11272 s!2326)) (tail!10369 s!2326)))))

(declare-fun bm!372673 () Bool)

(assert (=> bm!372673 (= call!372678 (isEmpty!32737 s!2326))))

(declare-fun b!5257504 () Bool)

(assert (=> b!5257504 (= e!3270639 (nullable!5041 r!7292))))

(declare-fun b!5257505 () Bool)

(declare-fun res!2231102 () Bool)

(assert (=> b!5257505 (=> res!2231102 e!3270640)))

(assert (=> b!5257505 (= res!2231102 (not (is-ElementMatch!14872 r!7292)))))

(declare-fun e!3270635 () Bool)

(assert (=> b!5257505 (= e!3270635 e!3270640)))

(declare-fun b!5257506 () Bool)

(declare-fun res!2231101 () Bool)

(declare-fun e!3270636 () Bool)

(assert (=> b!5257506 (=> res!2231101 e!3270636)))

(assert (=> b!5257506 (= res!2231101 (not (isEmpty!32737 (tail!10369 s!2326))))))

(declare-fun b!5257507 () Bool)

(declare-fun e!3270634 () Bool)

(assert (=> b!5257507 (= e!3270640 e!3270634)))

(declare-fun res!2231108 () Bool)

(assert (=> b!5257507 (=> (not res!2231108) (not e!3270634))))

(assert (=> b!5257507 (= res!2231108 (not lt!2154628))))

(declare-fun b!5257508 () Bool)

(assert (=> b!5257508 (= e!3270635 (not lt!2154628))))

(declare-fun b!5257509 () Bool)

(assert (=> b!5257509 (= e!3270634 e!3270636)))

(declare-fun res!2231106 () Bool)

(assert (=> b!5257509 (=> res!2231106 e!3270636)))

(assert (=> b!5257509 (= res!2231106 call!372678)))

(declare-fun b!5257510 () Bool)

(assert (=> b!5257510 (= e!3270637 (= (head!11272 s!2326) (c!909754 r!7292)))))

(declare-fun b!5257511 () Bool)

(assert (=> b!5257511 (= e!3270636 (not (= (head!11272 s!2326) (c!909754 r!7292))))))

(declare-fun b!5257512 () Bool)

(assert (=> b!5257512 (= e!3270638 e!3270635)))

(declare-fun c!909893 () Bool)

(assert (=> b!5257512 (= c!909893 (is-EmptyLang!14872 r!7292))))

(assert (= (and d!1692566 c!909894) b!5257504))

(assert (= (and d!1692566 (not c!909894)) b!5257503))

(assert (= (and d!1692566 c!909892) b!5257500))

(assert (= (and d!1692566 (not c!909892)) b!5257512))

(assert (= (and b!5257512 c!909893) b!5257508))

(assert (= (and b!5257512 (not c!909893)) b!5257505))

(assert (= (and b!5257505 (not res!2231102)) b!5257502))

(assert (= (and b!5257502 res!2231105) b!5257501))

(assert (= (and b!5257501 res!2231104) b!5257499))

(assert (= (and b!5257499 res!2231107) b!5257510))

(assert (= (and b!5257502 (not res!2231103)) b!5257507))

(assert (= (and b!5257507 res!2231108) b!5257509))

(assert (= (and b!5257509 (not res!2231106)) b!5257506))

(assert (= (and b!5257506 (not res!2231101)) b!5257511))

(assert (= (or b!5257500 b!5257501 b!5257509) bm!372673))

(assert (=> d!1692566 m!6299730))

(assert (=> d!1692566 m!6299446))

(assert (=> b!5257499 m!6299738))

(assert (=> b!5257499 m!6299738))

(assert (=> b!5257499 m!6299740))

(assert (=> b!5257510 m!6299742))

(assert (=> bm!372673 m!6299730))

(assert (=> b!5257511 m!6299742))

(declare-fun m!6299878 () Bool)

(assert (=> b!5257504 m!6299878))

(assert (=> b!5257506 m!6299738))

(assert (=> b!5257506 m!6299738))

(assert (=> b!5257506 m!6299740))

(assert (=> b!5257503 m!6299742))

(assert (=> b!5257503 m!6299742))

(declare-fun m!6299880 () Bool)

(assert (=> b!5257503 m!6299880))

(assert (=> b!5257503 m!6299738))

(assert (=> b!5257503 m!6299880))

(assert (=> b!5257503 m!6299738))

(declare-fun m!6299882 () Bool)

(assert (=> b!5257503 m!6299882))

(assert (=> b!5256973 d!1692566))

(declare-fun d!1692568 () Bool)

(assert (=> d!1692568 (= (matchR!7057 r!7292 s!2326) (matchRSpec!1975 r!7292 s!2326))))

(declare-fun lt!2154629 () Unit!152990)

(assert (=> d!1692568 (= lt!2154629 (choose!39203 r!7292 s!2326))))

(assert (=> d!1692568 (validRegex!6608 r!7292)))

(assert (=> d!1692568 (= (mainMatchTheorem!1975 r!7292 s!2326) lt!2154629)))

(declare-fun bs!1219144 () Bool)

(assert (= bs!1219144 d!1692568))

(assert (=> bs!1219144 m!6299464))

(assert (=> bs!1219144 m!6299462))

(declare-fun m!6299884 () Bool)

(assert (=> bs!1219144 m!6299884))

(assert (=> bs!1219144 m!6299446))

(assert (=> b!5256973 d!1692568))

(declare-fun bs!1219145 () Bool)

(declare-fun d!1692570 () Bool)

(assert (= bs!1219145 (and d!1692570 d!1692536)))

(declare-fun lambda!264965 () Int)

(assert (=> bs!1219145 (= lambda!264965 lambda!264954)))

(declare-fun bs!1219146 () Bool)

(assert (= bs!1219146 (and d!1692570 d!1692554)))

(assert (=> bs!1219146 (= lambda!264965 lambda!264957)))

(declare-fun b!5257533 () Bool)

(declare-fun e!3270656 () Regex!14872)

(declare-fun e!3270653 () Regex!14872)

(assert (=> b!5257533 (= e!3270656 e!3270653)))

(declare-fun c!909905 () Bool)

(assert (=> b!5257533 (= c!909905 (is-Cons!60792 (unfocusZipperList!314 zl!343)))))

(declare-fun b!5257534 () Bool)

(assert (=> b!5257534 (= e!3270656 (h!67240 (unfocusZipperList!314 zl!343)))))

(declare-fun e!3270655 () Bool)

(assert (=> d!1692570 e!3270655))

(declare-fun res!2231113 () Bool)

(assert (=> d!1692570 (=> (not res!2231113) (not e!3270655))))

(declare-fun lt!2154632 () Regex!14872)

(assert (=> d!1692570 (= res!2231113 (validRegex!6608 lt!2154632))))

(assert (=> d!1692570 (= lt!2154632 e!3270656)))

(declare-fun c!909903 () Bool)

(declare-fun e!3270658 () Bool)

(assert (=> d!1692570 (= c!909903 e!3270658)))

(declare-fun res!2231114 () Bool)

(assert (=> d!1692570 (=> (not res!2231114) (not e!3270658))))

(assert (=> d!1692570 (= res!2231114 (is-Cons!60792 (unfocusZipperList!314 zl!343)))))

(assert (=> d!1692570 (forall!14286 (unfocusZipperList!314 zl!343) lambda!264965)))

(assert (=> d!1692570 (= (generalisedUnion!801 (unfocusZipperList!314 zl!343)) lt!2154632)))

(declare-fun b!5257535 () Bool)

(declare-fun e!3270657 () Bool)

(declare-fun e!3270654 () Bool)

(assert (=> b!5257535 (= e!3270657 e!3270654)))

(declare-fun c!909906 () Bool)

(assert (=> b!5257535 (= c!909906 (isEmpty!32733 (tail!10370 (unfocusZipperList!314 zl!343))))))

(declare-fun b!5257536 () Bool)

(assert (=> b!5257536 (= e!3270653 EmptyLang!14872)))

(declare-fun b!5257537 () Bool)

(assert (=> b!5257537 (= e!3270658 (isEmpty!32733 (t!374099 (unfocusZipperList!314 zl!343))))))

(declare-fun b!5257538 () Bool)

(declare-fun isEmptyLang!820 (Regex!14872) Bool)

(assert (=> b!5257538 (= e!3270657 (isEmptyLang!820 lt!2154632))))

(declare-fun b!5257539 () Bool)

(assert (=> b!5257539 (= e!3270654 (= lt!2154632 (head!11273 (unfocusZipperList!314 zl!343))))))

(declare-fun b!5257540 () Bool)

(declare-fun isUnion!252 (Regex!14872) Bool)

(assert (=> b!5257540 (= e!3270654 (isUnion!252 lt!2154632))))

(declare-fun b!5257541 () Bool)

(assert (=> b!5257541 (= e!3270655 e!3270657)))

(declare-fun c!909904 () Bool)

(assert (=> b!5257541 (= c!909904 (isEmpty!32733 (unfocusZipperList!314 zl!343)))))

(declare-fun b!5257542 () Bool)

(assert (=> b!5257542 (= e!3270653 (Union!14872 (h!67240 (unfocusZipperList!314 zl!343)) (generalisedUnion!801 (t!374099 (unfocusZipperList!314 zl!343)))))))

(assert (= (and d!1692570 res!2231114) b!5257537))

(assert (= (and d!1692570 c!909903) b!5257534))

(assert (= (and d!1692570 (not c!909903)) b!5257533))

(assert (= (and b!5257533 c!909905) b!5257542))

(assert (= (and b!5257533 (not c!909905)) b!5257536))

(assert (= (and d!1692570 res!2231113) b!5257541))

(assert (= (and b!5257541 c!909904) b!5257538))

(assert (= (and b!5257541 (not c!909904)) b!5257535))

(assert (= (and b!5257535 c!909906) b!5257539))

(assert (= (and b!5257535 (not c!909906)) b!5257540))

(assert (=> b!5257535 m!6299452))

(declare-fun m!6299886 () Bool)

(assert (=> b!5257535 m!6299886))

(assert (=> b!5257535 m!6299886))

(declare-fun m!6299888 () Bool)

(assert (=> b!5257535 m!6299888))

(assert (=> b!5257539 m!6299452))

(declare-fun m!6299890 () Bool)

(assert (=> b!5257539 m!6299890))

(assert (=> b!5257541 m!6299452))

(declare-fun m!6299892 () Bool)

(assert (=> b!5257541 m!6299892))

(declare-fun m!6299894 () Bool)

(assert (=> d!1692570 m!6299894))

(assert (=> d!1692570 m!6299452))

(declare-fun m!6299896 () Bool)

(assert (=> d!1692570 m!6299896))

(declare-fun m!6299898 () Bool)

(assert (=> b!5257540 m!6299898))

(declare-fun m!6299900 () Bool)

(assert (=> b!5257537 m!6299900))

(declare-fun m!6299902 () Bool)

(assert (=> b!5257542 m!6299902))

(declare-fun m!6299904 () Bool)

(assert (=> b!5257538 m!6299904))

(assert (=> b!5256995 d!1692570))

(declare-fun bs!1219147 () Bool)

(declare-fun d!1692572 () Bool)

(assert (= bs!1219147 (and d!1692572 d!1692536)))

(declare-fun lambda!264969 () Int)

(assert (=> bs!1219147 (= lambda!264969 lambda!264954)))

(declare-fun bs!1219148 () Bool)

(assert (= bs!1219148 (and d!1692572 d!1692554)))

(assert (=> bs!1219148 (= lambda!264969 lambda!264957)))

(declare-fun bs!1219149 () Bool)

(assert (= bs!1219149 (and d!1692572 d!1692570)))

(assert (=> bs!1219149 (= lambda!264969 lambda!264965)))

(declare-fun lt!2154635 () List!60916)

(assert (=> d!1692572 (forall!14286 lt!2154635 lambda!264969)))

(declare-fun e!3270675 () List!60916)

(assert (=> d!1692572 (= lt!2154635 e!3270675)))

(declare-fun c!909917 () Bool)

(assert (=> d!1692572 (= c!909917 (is-Cons!60793 zl!343))))

(assert (=> d!1692572 (= (unfocusZipperList!314 zl!343) lt!2154635)))

(declare-fun b!5257569 () Bool)

(assert (=> b!5257569 (= e!3270675 (Cons!60792 (generalisedConcat!541 (exprs!4756 (h!67241 zl!343))) (unfocusZipperList!314 (t!374100 zl!343))))))

(declare-fun b!5257570 () Bool)

(assert (=> b!5257570 (= e!3270675 Nil!60792)))

(assert (= (and d!1692572 c!909917) b!5257569))

(assert (= (and d!1692572 (not c!909917)) b!5257570))

(declare-fun m!6299906 () Bool)

(assert (=> d!1692572 m!6299906))

(assert (=> b!5257569 m!6299388))

(declare-fun m!6299908 () Bool)

(assert (=> b!5257569 m!6299908))

(assert (=> b!5256995 d!1692572))

(declare-fun d!1692574 () Bool)

(declare-fun lt!2154638 () Regex!14872)

(assert (=> d!1692574 (validRegex!6608 lt!2154638)))

(assert (=> d!1692574 (= lt!2154638 (generalisedUnion!801 (unfocusZipperList!314 zl!343)))))

(assert (=> d!1692574 (= (unfocusZipper!614 zl!343) lt!2154638)))

(declare-fun bs!1219150 () Bool)

(assert (= bs!1219150 d!1692574))

(declare-fun m!6299910 () Bool)

(assert (=> bs!1219150 m!6299910))

(assert (=> bs!1219150 m!6299452))

(assert (=> bs!1219150 m!6299452))

(assert (=> bs!1219150 m!6299454))

(assert (=> b!5257001 d!1692574))

(declare-fun d!1692576 () Bool)

(declare-fun c!909918 () Bool)

(assert (=> d!1692576 (= c!909918 (isEmpty!32737 s!2326))))

(declare-fun e!3270678 () Bool)

(assert (=> d!1692576 (= (matchZipper!1116 lt!2154410 s!2326) e!3270678)))

(declare-fun b!5257577 () Bool)

(assert (=> b!5257577 (= e!3270678 (nullableZipper!1277 lt!2154410))))

(declare-fun b!5257578 () Bool)

(assert (=> b!5257578 (= e!3270678 (matchZipper!1116 (derivationStepZipper!1121 lt!2154410 (head!11272 s!2326)) (tail!10369 s!2326)))))

(assert (= (and d!1692576 c!909918) b!5257577))

(assert (= (and d!1692576 (not c!909918)) b!5257578))

(assert (=> d!1692576 m!6299730))

(declare-fun m!6299912 () Bool)

(assert (=> b!5257577 m!6299912))

(assert (=> b!5257578 m!6299742))

(assert (=> b!5257578 m!6299742))

(declare-fun m!6299914 () Bool)

(assert (=> b!5257578 m!6299914))

(assert (=> b!5257578 m!6299738))

(assert (=> b!5257578 m!6299914))

(assert (=> b!5257578 m!6299738))

(declare-fun m!6299916 () Bool)

(assert (=> b!5257578 m!6299916))

(assert (=> b!5256981 d!1692576))

(declare-fun bs!1219151 () Bool)

(declare-fun b!5257584 () Bool)

(assert (= bs!1219151 (and b!5257584 b!5257247)))

(declare-fun lambda!264971 () Int)

(assert (=> bs!1219151 (= (and (= (reg!15201 lt!2154423) (reg!15201 lt!2154415)) (= lt!2154423 lt!2154415)) (= lambda!264971 lambda!264948))))

(declare-fun bs!1219152 () Bool)

(assert (= bs!1219152 (and b!5257584 b!5257488)))

(assert (=> bs!1219152 (not (= lambda!264971 lambda!264961))))

(declare-fun bs!1219153 () Bool)

(assert (= bs!1219153 (and b!5257584 b!5257332)))

(assert (=> bs!1219153 (= (and (= (reg!15201 lt!2154423) (reg!15201 lt!2154409)) (= lt!2154423 lt!2154409)) (= lambda!264971 lambda!264950))))

(declare-fun bs!1219154 () Bool)

(assert (= bs!1219154 (and b!5257584 b!5256960)))

(assert (=> bs!1219154 (not (= lambda!264971 lambda!264926))))

(declare-fun bs!1219155 () Bool)

(assert (= bs!1219155 (and b!5257584 b!5257327)))

(assert (=> bs!1219155 (not (= lambda!264971 lambda!264951))))

(declare-fun bs!1219156 () Bool)

(assert (= bs!1219156 (and b!5257584 b!5257242)))

(assert (=> bs!1219156 (not (= lambda!264971 lambda!264949))))

(assert (=> bs!1219154 (not (= lambda!264971 lambda!264927))))

(declare-fun bs!1219157 () Bool)

(assert (= bs!1219157 (and b!5257584 b!5257493)))

(assert (=> bs!1219157 (= (and (= (reg!15201 lt!2154423) (reg!15201 r!7292)) (= lt!2154423 r!7292)) (= lambda!264971 lambda!264958))))

(assert (=> b!5257584 true))

(assert (=> b!5257584 true))

(declare-fun bs!1219158 () Bool)

(declare-fun b!5257579 () Bool)

(assert (= bs!1219158 (and b!5257579 b!5257247)))

(declare-fun lambda!264973 () Int)

(assert (=> bs!1219158 (not (= lambda!264973 lambda!264948))))

(declare-fun bs!1219159 () Bool)

(assert (= bs!1219159 (and b!5257579 b!5257488)))

(assert (=> bs!1219159 (= (and (= (regOne!30256 lt!2154423) (regOne!30256 r!7292)) (= (regTwo!30256 lt!2154423) (regTwo!30256 r!7292))) (= lambda!264973 lambda!264961))))

(declare-fun bs!1219160 () Bool)

(assert (= bs!1219160 (and b!5257579 b!5257332)))

(assert (=> bs!1219160 (not (= lambda!264973 lambda!264950))))

(declare-fun bs!1219161 () Bool)

(assert (= bs!1219161 (and b!5257579 b!5256960)))

(assert (=> bs!1219161 (not (= lambda!264973 lambda!264926))))

(declare-fun bs!1219162 () Bool)

(assert (= bs!1219162 (and b!5257579 b!5257327)))

(assert (=> bs!1219162 (= (and (= (regOne!30256 lt!2154423) (regOne!30256 lt!2154409)) (= (regTwo!30256 lt!2154423) (regTwo!30256 lt!2154409))) (= lambda!264973 lambda!264951))))

(declare-fun bs!1219163 () Bool)

(assert (= bs!1219163 (and b!5257579 b!5257242)))

(assert (=> bs!1219163 (= (and (= (regOne!30256 lt!2154423) (regOne!30256 lt!2154415)) (= (regTwo!30256 lt!2154423) (regTwo!30256 lt!2154415))) (= lambda!264973 lambda!264949))))

(assert (=> bs!1219161 (= (and (= (regOne!30256 lt!2154423) (regOne!30256 r!7292)) (= (regTwo!30256 lt!2154423) (regTwo!30256 r!7292))) (= lambda!264973 lambda!264927))))

(declare-fun bs!1219164 () Bool)

(assert (= bs!1219164 (and b!5257579 b!5257493)))

(assert (=> bs!1219164 (not (= lambda!264973 lambda!264958))))

(declare-fun bs!1219165 () Bool)

(assert (= bs!1219165 (and b!5257579 b!5257584)))

(assert (=> bs!1219165 (not (= lambda!264973 lambda!264971))))

(assert (=> b!5257579 true))

(assert (=> b!5257579 true))

(declare-fun e!3270679 () Bool)

(declare-fun call!372679 () Bool)

(assert (=> b!5257579 (= e!3270679 call!372679)))

(declare-fun b!5257580 () Bool)

(declare-fun c!909922 () Bool)

(assert (=> b!5257580 (= c!909922 (is-Union!14872 lt!2154423))))

(declare-fun e!3270683 () Bool)

(declare-fun e!3270680 () Bool)

(assert (=> b!5257580 (= e!3270683 e!3270680)))

(declare-fun bm!372674 () Bool)

(declare-fun c!909919 () Bool)

(assert (=> bm!372674 (= call!372679 (Exists!2053 (ite c!909919 lambda!264971 lambda!264973)))))

(declare-fun b!5257581 () Bool)

(assert (=> b!5257581 (= e!3270683 (= s!2326 (Cons!60791 (c!909754 lt!2154423) Nil!60791)))))

(declare-fun b!5257582 () Bool)

(declare-fun c!909920 () Bool)

(assert (=> b!5257582 (= c!909920 (is-ElementMatch!14872 lt!2154423))))

(declare-fun e!3270681 () Bool)

(assert (=> b!5257582 (= e!3270681 e!3270683)))

(declare-fun b!5257583 () Bool)

(declare-fun res!2231127 () Bool)

(declare-fun e!3270682 () Bool)

(assert (=> b!5257583 (=> res!2231127 e!3270682)))

(declare-fun call!372680 () Bool)

(assert (=> b!5257583 (= res!2231127 call!372680)))

(assert (=> b!5257583 (= e!3270679 e!3270682)))

(assert (=> b!5257584 (= e!3270682 call!372679)))

(declare-fun b!5257585 () Bool)

(declare-fun e!3270684 () Bool)

(assert (=> b!5257585 (= e!3270684 e!3270681)))

(declare-fun res!2231128 () Bool)

(assert (=> b!5257585 (= res!2231128 (not (is-EmptyLang!14872 lt!2154423)))))

(assert (=> b!5257585 (=> (not res!2231128) (not e!3270681))))

(declare-fun b!5257586 () Bool)

(assert (=> b!5257586 (= e!3270680 e!3270679)))

(assert (=> b!5257586 (= c!909919 (is-Star!14872 lt!2154423))))

(declare-fun b!5257587 () Bool)

(declare-fun e!3270685 () Bool)

(assert (=> b!5257587 (= e!3270680 e!3270685)))

(declare-fun res!2231129 () Bool)

(assert (=> b!5257587 (= res!2231129 (matchRSpec!1975 (regOne!30257 lt!2154423) s!2326))))

(assert (=> b!5257587 (=> res!2231129 e!3270685)))

(declare-fun bm!372675 () Bool)

(assert (=> bm!372675 (= call!372680 (isEmpty!32737 s!2326))))

(declare-fun d!1692578 () Bool)

(declare-fun c!909921 () Bool)

(assert (=> d!1692578 (= c!909921 (is-EmptyExpr!14872 lt!2154423))))

(assert (=> d!1692578 (= (matchRSpec!1975 lt!2154423 s!2326) e!3270684)))

(declare-fun b!5257588 () Bool)

(assert (=> b!5257588 (= e!3270685 (matchRSpec!1975 (regTwo!30257 lt!2154423) s!2326))))

(declare-fun b!5257589 () Bool)

(assert (=> b!5257589 (= e!3270684 call!372680)))

(assert (= (and d!1692578 c!909921) b!5257589))

(assert (= (and d!1692578 (not c!909921)) b!5257585))

(assert (= (and b!5257585 res!2231128) b!5257582))

(assert (= (and b!5257582 c!909920) b!5257581))

(assert (= (and b!5257582 (not c!909920)) b!5257580))

(assert (= (and b!5257580 c!909922) b!5257587))

(assert (= (and b!5257580 (not c!909922)) b!5257586))

(assert (= (and b!5257587 (not res!2231129)) b!5257588))

(assert (= (and b!5257586 c!909919) b!5257583))

(assert (= (and b!5257586 (not c!909919)) b!5257579))

(assert (= (and b!5257583 (not res!2231127)) b!5257584))

(assert (= (or b!5257584 b!5257579) bm!372674))

(assert (= (or b!5257589 b!5257583) bm!372675))

(declare-fun m!6299918 () Bool)

(assert (=> bm!372674 m!6299918))

(declare-fun m!6299920 () Bool)

(assert (=> b!5257587 m!6299920))

(assert (=> bm!372675 m!6299730))

(declare-fun m!6299922 () Bool)

(assert (=> b!5257588 m!6299922))

(assert (=> b!5256961 d!1692578))

(declare-fun bs!1219166 () Bool)

(declare-fun d!1692580 () Bool)

(assert (= bs!1219166 (and d!1692580 d!1692536)))

(declare-fun lambda!264975 () Int)

(assert (=> bs!1219166 (= lambda!264975 lambda!264954)))

(declare-fun bs!1219167 () Bool)

(assert (= bs!1219167 (and d!1692580 d!1692554)))

(assert (=> bs!1219167 (= lambda!264975 lambda!264957)))

(declare-fun bs!1219168 () Bool)

(assert (= bs!1219168 (and d!1692580 d!1692570)))

(assert (=> bs!1219168 (= lambda!264975 lambda!264965)))

(declare-fun bs!1219169 () Bool)

(assert (= bs!1219169 (and d!1692580 d!1692572)))

(assert (=> bs!1219169 (= lambda!264975 lambda!264969)))

(declare-fun b!5257594 () Bool)

(declare-fun e!3270692 () Regex!14872)

(assert (=> b!5257594 (= e!3270692 (Concat!23717 (h!67240 lt!2154391) (generalisedConcat!541 (t!374099 lt!2154391))))))

(declare-fun b!5257595 () Bool)

(declare-fun e!3270693 () Regex!14872)

(assert (=> b!5257595 (= e!3270693 e!3270692)))

(declare-fun c!909924 () Bool)

(assert (=> b!5257595 (= c!909924 (is-Cons!60792 lt!2154391))))

(declare-fun b!5257596 () Bool)

(declare-fun e!3270691 () Bool)

(declare-fun lt!2154639 () Regex!14872)

(assert (=> b!5257596 (= e!3270691 (isEmptyExpr!812 lt!2154639))))

(declare-fun b!5257597 () Bool)

(declare-fun e!3270690 () Bool)

(assert (=> b!5257597 (= e!3270690 (= lt!2154639 (head!11273 lt!2154391)))))

(declare-fun b!5257598 () Bool)

(assert (=> b!5257598 (= e!3270692 EmptyExpr!14872)))

(declare-fun e!3270688 () Bool)

(assert (=> d!1692580 e!3270688))

(declare-fun res!2231134 () Bool)

(assert (=> d!1692580 (=> (not res!2231134) (not e!3270688))))

(assert (=> d!1692580 (= res!2231134 (validRegex!6608 lt!2154639))))

(assert (=> d!1692580 (= lt!2154639 e!3270693)))

(declare-fun c!909923 () Bool)

(declare-fun e!3270689 () Bool)

(assert (=> d!1692580 (= c!909923 e!3270689)))

(declare-fun res!2231135 () Bool)

(assert (=> d!1692580 (=> (not res!2231135) (not e!3270689))))

(assert (=> d!1692580 (= res!2231135 (is-Cons!60792 lt!2154391))))

(assert (=> d!1692580 (forall!14286 lt!2154391 lambda!264975)))

(assert (=> d!1692580 (= (generalisedConcat!541 lt!2154391) lt!2154639)))

(declare-fun b!5257599 () Bool)

(assert (=> b!5257599 (= e!3270690 (isConcat!335 lt!2154639))))

(declare-fun b!5257600 () Bool)

(assert (=> b!5257600 (= e!3270688 e!3270691)))

(declare-fun c!909926 () Bool)

(assert (=> b!5257600 (= c!909926 (isEmpty!32733 lt!2154391))))

(declare-fun b!5257601 () Bool)

(assert (=> b!5257601 (= e!3270689 (isEmpty!32733 (t!374099 lt!2154391)))))

(declare-fun b!5257602 () Bool)

(assert (=> b!5257602 (= e!3270691 e!3270690)))

(declare-fun c!909925 () Bool)

(assert (=> b!5257602 (= c!909925 (isEmpty!32733 (tail!10370 lt!2154391)))))

(declare-fun b!5257603 () Bool)

(assert (=> b!5257603 (= e!3270693 (h!67240 lt!2154391))))

(assert (= (and d!1692580 res!2231135) b!5257601))

(assert (= (and d!1692580 c!909923) b!5257603))

(assert (= (and d!1692580 (not c!909923)) b!5257595))

(assert (= (and b!5257595 c!909924) b!5257594))

(assert (= (and b!5257595 (not c!909924)) b!5257598))

(assert (= (and d!1692580 res!2231134) b!5257600))

(assert (= (and b!5257600 c!909926) b!5257596))

(assert (= (and b!5257600 (not c!909926)) b!5257602))

(assert (= (and b!5257602 c!909925) b!5257597))

(assert (= (and b!5257602 (not c!909925)) b!5257599))

(declare-fun m!6299924 () Bool)

(assert (=> b!5257594 m!6299924))

(declare-fun m!6299926 () Bool)

(assert (=> b!5257602 m!6299926))

(assert (=> b!5257602 m!6299926))

(declare-fun m!6299928 () Bool)

(assert (=> b!5257602 m!6299928))

(declare-fun m!6299930 () Bool)

(assert (=> b!5257599 m!6299930))

(declare-fun m!6299932 () Bool)

(assert (=> b!5257596 m!6299932))

(declare-fun m!6299934 () Bool)

(assert (=> b!5257600 m!6299934))

(declare-fun m!6299936 () Bool)

(assert (=> b!5257601 m!6299936))

(declare-fun m!6299938 () Bool)

(assert (=> d!1692580 m!6299938))

(declare-fun m!6299940 () Bool)

(assert (=> d!1692580 m!6299940))

(declare-fun m!6299942 () Bool)

(assert (=> b!5257597 m!6299942))

(assert (=> b!5256961 d!1692580))

(declare-fun bs!1219170 () Bool)

(declare-fun d!1692582 () Bool)

(assert (= bs!1219170 (and d!1692582 d!1692536)))

(declare-fun lambda!264976 () Int)

(assert (=> bs!1219170 (= lambda!264976 lambda!264954)))

(declare-fun bs!1219171 () Bool)

(assert (= bs!1219171 (and d!1692582 d!1692580)))

(assert (=> bs!1219171 (= lambda!264976 lambda!264975)))

(declare-fun bs!1219172 () Bool)

(assert (= bs!1219172 (and d!1692582 d!1692554)))

(assert (=> bs!1219172 (= lambda!264976 lambda!264957)))

(declare-fun bs!1219173 () Bool)

(assert (= bs!1219173 (and d!1692582 d!1692572)))

(assert (=> bs!1219173 (= lambda!264976 lambda!264969)))

(declare-fun bs!1219174 () Bool)

(assert (= bs!1219174 (and d!1692582 d!1692570)))

(assert (=> bs!1219174 (= lambda!264976 lambda!264965)))

(declare-fun b!5257604 () Bool)

(declare-fun e!3270698 () Regex!14872)

(assert (=> b!5257604 (= e!3270698 (Concat!23717 (h!67240 lt!2154411) (generalisedConcat!541 (t!374099 lt!2154411))))))

(declare-fun b!5257605 () Bool)

(declare-fun e!3270699 () Regex!14872)

(assert (=> b!5257605 (= e!3270699 e!3270698)))

(declare-fun c!909928 () Bool)

(assert (=> b!5257605 (= c!909928 (is-Cons!60792 lt!2154411))))

(declare-fun b!5257606 () Bool)

(declare-fun e!3270697 () Bool)

(declare-fun lt!2154640 () Regex!14872)

(assert (=> b!5257606 (= e!3270697 (isEmptyExpr!812 lt!2154640))))

(declare-fun b!5257607 () Bool)

(declare-fun e!3270696 () Bool)

(assert (=> b!5257607 (= e!3270696 (= lt!2154640 (head!11273 lt!2154411)))))

(declare-fun b!5257608 () Bool)

(assert (=> b!5257608 (= e!3270698 EmptyExpr!14872)))

(declare-fun e!3270694 () Bool)

(assert (=> d!1692582 e!3270694))

(declare-fun res!2231136 () Bool)

(assert (=> d!1692582 (=> (not res!2231136) (not e!3270694))))

(assert (=> d!1692582 (= res!2231136 (validRegex!6608 lt!2154640))))

(assert (=> d!1692582 (= lt!2154640 e!3270699)))

(declare-fun c!909927 () Bool)

(declare-fun e!3270695 () Bool)

(assert (=> d!1692582 (= c!909927 e!3270695)))

(declare-fun res!2231137 () Bool)

(assert (=> d!1692582 (=> (not res!2231137) (not e!3270695))))

(assert (=> d!1692582 (= res!2231137 (is-Cons!60792 lt!2154411))))

(assert (=> d!1692582 (forall!14286 lt!2154411 lambda!264976)))

(assert (=> d!1692582 (= (generalisedConcat!541 lt!2154411) lt!2154640)))

(declare-fun b!5257609 () Bool)

(assert (=> b!5257609 (= e!3270696 (isConcat!335 lt!2154640))))

(declare-fun b!5257610 () Bool)

(assert (=> b!5257610 (= e!3270694 e!3270697)))

(declare-fun c!909930 () Bool)

(assert (=> b!5257610 (= c!909930 (isEmpty!32733 lt!2154411))))

(declare-fun b!5257611 () Bool)

(assert (=> b!5257611 (= e!3270695 (isEmpty!32733 (t!374099 lt!2154411)))))

(declare-fun b!5257612 () Bool)

(assert (=> b!5257612 (= e!3270697 e!3270696)))

(declare-fun c!909929 () Bool)

(assert (=> b!5257612 (= c!909929 (isEmpty!32733 (tail!10370 lt!2154411)))))

(declare-fun b!5257613 () Bool)

(assert (=> b!5257613 (= e!3270699 (h!67240 lt!2154411))))

(assert (= (and d!1692582 res!2231137) b!5257611))

(assert (= (and d!1692582 c!909927) b!5257613))

(assert (= (and d!1692582 (not c!909927)) b!5257605))

(assert (= (and b!5257605 c!909928) b!5257604))

(assert (= (and b!5257605 (not c!909928)) b!5257608))

(assert (= (and d!1692582 res!2231136) b!5257610))

(assert (= (and b!5257610 c!909930) b!5257606))

(assert (= (and b!5257610 (not c!909930)) b!5257612))

(assert (= (and b!5257612 c!909929) b!5257607))

(assert (= (and b!5257612 (not c!909929)) b!5257609))

(declare-fun m!6299944 () Bool)

(assert (=> b!5257604 m!6299944))

(declare-fun m!6299946 () Bool)

(assert (=> b!5257612 m!6299946))

(assert (=> b!5257612 m!6299946))

(declare-fun m!6299948 () Bool)

(assert (=> b!5257612 m!6299948))

(declare-fun m!6299950 () Bool)

(assert (=> b!5257609 m!6299950))

(declare-fun m!6299952 () Bool)

(assert (=> b!5257606 m!6299952))

(declare-fun m!6299954 () Bool)

(assert (=> b!5257610 m!6299954))

(declare-fun m!6299956 () Bool)

(assert (=> b!5257611 m!6299956))

(declare-fun m!6299958 () Bool)

(assert (=> d!1692582 m!6299958))

(declare-fun m!6299960 () Bool)

(assert (=> d!1692582 m!6299960))

(declare-fun m!6299962 () Bool)

(assert (=> b!5257607 m!6299962))

(assert (=> b!5256961 d!1692582))

(declare-fun bs!1219175 () Bool)

(declare-fun b!5257619 () Bool)

(assert (= bs!1219175 (and b!5257619 b!5257247)))

(declare-fun lambda!264977 () Int)

(assert (=> bs!1219175 (= (and (= (reg!15201 lt!2154390) (reg!15201 lt!2154415)) (= lt!2154390 lt!2154415)) (= lambda!264977 lambda!264948))))

(declare-fun bs!1219176 () Bool)

(assert (= bs!1219176 (and b!5257619 b!5257488)))

(assert (=> bs!1219176 (not (= lambda!264977 lambda!264961))))

(declare-fun bs!1219177 () Bool)

(assert (= bs!1219177 (and b!5257619 b!5257332)))

(assert (=> bs!1219177 (= (and (= (reg!15201 lt!2154390) (reg!15201 lt!2154409)) (= lt!2154390 lt!2154409)) (= lambda!264977 lambda!264950))))

(declare-fun bs!1219178 () Bool)

(assert (= bs!1219178 (and b!5257619 b!5256960)))

(assert (=> bs!1219178 (not (= lambda!264977 lambda!264926))))

(declare-fun bs!1219179 () Bool)

(assert (= bs!1219179 (and b!5257619 b!5257327)))

(assert (=> bs!1219179 (not (= lambda!264977 lambda!264951))))

(declare-fun bs!1219180 () Bool)

(assert (= bs!1219180 (and b!5257619 b!5257579)))

(assert (=> bs!1219180 (not (= lambda!264977 lambda!264973))))

(declare-fun bs!1219181 () Bool)

(assert (= bs!1219181 (and b!5257619 b!5257242)))

(assert (=> bs!1219181 (not (= lambda!264977 lambda!264949))))

(assert (=> bs!1219178 (not (= lambda!264977 lambda!264927))))

(declare-fun bs!1219182 () Bool)

(assert (= bs!1219182 (and b!5257619 b!5257493)))

(assert (=> bs!1219182 (= (and (= (reg!15201 lt!2154390) (reg!15201 r!7292)) (= lt!2154390 r!7292)) (= lambda!264977 lambda!264958))))

(declare-fun bs!1219183 () Bool)

(assert (= bs!1219183 (and b!5257619 b!5257584)))

(assert (=> bs!1219183 (= (and (= (reg!15201 lt!2154390) (reg!15201 lt!2154423)) (= lt!2154390 lt!2154423)) (= lambda!264977 lambda!264971))))

(assert (=> b!5257619 true))

(assert (=> b!5257619 true))

(declare-fun bs!1219184 () Bool)

(declare-fun b!5257614 () Bool)

(assert (= bs!1219184 (and b!5257614 b!5257247)))

(declare-fun lambda!264978 () Int)

(assert (=> bs!1219184 (not (= lambda!264978 lambda!264948))))

(declare-fun bs!1219185 () Bool)

(assert (= bs!1219185 (and b!5257614 b!5257488)))

(assert (=> bs!1219185 (= (and (= (regOne!30256 lt!2154390) (regOne!30256 r!7292)) (= (regTwo!30256 lt!2154390) (regTwo!30256 r!7292))) (= lambda!264978 lambda!264961))))

(declare-fun bs!1219186 () Bool)

(assert (= bs!1219186 (and b!5257614 b!5257332)))

(assert (=> bs!1219186 (not (= lambda!264978 lambda!264950))))

(declare-fun bs!1219187 () Bool)

(assert (= bs!1219187 (and b!5257614 b!5256960)))

(assert (=> bs!1219187 (not (= lambda!264978 lambda!264926))))

(declare-fun bs!1219188 () Bool)

(assert (= bs!1219188 (and b!5257614 b!5257327)))

(assert (=> bs!1219188 (= (and (= (regOne!30256 lt!2154390) (regOne!30256 lt!2154409)) (= (regTwo!30256 lt!2154390) (regTwo!30256 lt!2154409))) (= lambda!264978 lambda!264951))))

(declare-fun bs!1219189 () Bool)

(assert (= bs!1219189 (and b!5257614 b!5257579)))

(assert (=> bs!1219189 (= (and (= (regOne!30256 lt!2154390) (regOne!30256 lt!2154423)) (= (regTwo!30256 lt!2154390) (regTwo!30256 lt!2154423))) (= lambda!264978 lambda!264973))))

(declare-fun bs!1219190 () Bool)

(assert (= bs!1219190 (and b!5257614 b!5257242)))

(assert (=> bs!1219190 (= (and (= (regOne!30256 lt!2154390) (regOne!30256 lt!2154415)) (= (regTwo!30256 lt!2154390) (regTwo!30256 lt!2154415))) (= lambda!264978 lambda!264949))))

(assert (=> bs!1219187 (= (and (= (regOne!30256 lt!2154390) (regOne!30256 r!7292)) (= (regTwo!30256 lt!2154390) (regTwo!30256 r!7292))) (= lambda!264978 lambda!264927))))

(declare-fun bs!1219191 () Bool)

(assert (= bs!1219191 (and b!5257614 b!5257493)))

(assert (=> bs!1219191 (not (= lambda!264978 lambda!264958))))

(declare-fun bs!1219192 () Bool)

(assert (= bs!1219192 (and b!5257614 b!5257584)))

(assert (=> bs!1219192 (not (= lambda!264978 lambda!264971))))

(declare-fun bs!1219193 () Bool)

(assert (= bs!1219193 (and b!5257614 b!5257619)))

(assert (=> bs!1219193 (not (= lambda!264978 lambda!264977))))

(assert (=> b!5257614 true))

(assert (=> b!5257614 true))

(declare-fun e!3270700 () Bool)

(declare-fun call!372683 () Bool)

(assert (=> b!5257614 (= e!3270700 call!372683)))

(declare-fun b!5257615 () Bool)

(declare-fun c!909934 () Bool)

(assert (=> b!5257615 (= c!909934 (is-Union!14872 lt!2154390))))

(declare-fun e!3270704 () Bool)

(declare-fun e!3270701 () Bool)

(assert (=> b!5257615 (= e!3270704 e!3270701)))

(declare-fun bm!372678 () Bool)

(declare-fun c!909931 () Bool)

(assert (=> bm!372678 (= call!372683 (Exists!2053 (ite c!909931 lambda!264977 lambda!264978)))))

(declare-fun b!5257616 () Bool)

(assert (=> b!5257616 (= e!3270704 (= s!2326 (Cons!60791 (c!909754 lt!2154390) Nil!60791)))))

(declare-fun b!5257617 () Bool)

(declare-fun c!909932 () Bool)

(assert (=> b!5257617 (= c!909932 (is-ElementMatch!14872 lt!2154390))))

(declare-fun e!3270702 () Bool)

(assert (=> b!5257617 (= e!3270702 e!3270704)))

(declare-fun b!5257618 () Bool)

(declare-fun res!2231138 () Bool)

(declare-fun e!3270703 () Bool)

(assert (=> b!5257618 (=> res!2231138 e!3270703)))

(declare-fun call!372684 () Bool)

(assert (=> b!5257618 (= res!2231138 call!372684)))

(assert (=> b!5257618 (= e!3270700 e!3270703)))

(assert (=> b!5257619 (= e!3270703 call!372683)))

(declare-fun b!5257620 () Bool)

(declare-fun e!3270705 () Bool)

(assert (=> b!5257620 (= e!3270705 e!3270702)))

(declare-fun res!2231139 () Bool)

(assert (=> b!5257620 (= res!2231139 (not (is-EmptyLang!14872 lt!2154390)))))

(assert (=> b!5257620 (=> (not res!2231139) (not e!3270702))))

(declare-fun b!5257621 () Bool)

(assert (=> b!5257621 (= e!3270701 e!3270700)))

(assert (=> b!5257621 (= c!909931 (is-Star!14872 lt!2154390))))

(declare-fun b!5257622 () Bool)

(declare-fun e!3270706 () Bool)

(assert (=> b!5257622 (= e!3270701 e!3270706)))

(declare-fun res!2231140 () Bool)

(assert (=> b!5257622 (= res!2231140 (matchRSpec!1975 (regOne!30257 lt!2154390) s!2326))))

(assert (=> b!5257622 (=> res!2231140 e!3270706)))

(declare-fun bm!372679 () Bool)

(assert (=> bm!372679 (= call!372684 (isEmpty!32737 s!2326))))

(declare-fun d!1692584 () Bool)

(declare-fun c!909933 () Bool)

(assert (=> d!1692584 (= c!909933 (is-EmptyExpr!14872 lt!2154390))))

(assert (=> d!1692584 (= (matchRSpec!1975 lt!2154390 s!2326) e!3270705)))

(declare-fun b!5257623 () Bool)

(assert (=> b!5257623 (= e!3270706 (matchRSpec!1975 (regTwo!30257 lt!2154390) s!2326))))

(declare-fun b!5257624 () Bool)

(assert (=> b!5257624 (= e!3270705 call!372684)))

(assert (= (and d!1692584 c!909933) b!5257624))

(assert (= (and d!1692584 (not c!909933)) b!5257620))

(assert (= (and b!5257620 res!2231139) b!5257617))

(assert (= (and b!5257617 c!909932) b!5257616))

(assert (= (and b!5257617 (not c!909932)) b!5257615))

(assert (= (and b!5257615 c!909934) b!5257622))

(assert (= (and b!5257615 (not c!909934)) b!5257621))

(assert (= (and b!5257622 (not res!2231140)) b!5257623))

(assert (= (and b!5257621 c!909931) b!5257618))

(assert (= (and b!5257621 (not c!909931)) b!5257614))

(assert (= (and b!5257618 (not res!2231138)) b!5257619))

(assert (= (or b!5257619 b!5257614) bm!372678))

(assert (= (or b!5257624 b!5257618) bm!372679))

(declare-fun m!6299964 () Bool)

(assert (=> bm!372678 m!6299964))

(declare-fun m!6299966 () Bool)

(assert (=> b!5257622 m!6299966))

(assert (=> bm!372679 m!6299730))

(declare-fun m!6299968 () Bool)

(assert (=> b!5257623 m!6299968))

(assert (=> b!5256961 d!1692584))

(declare-fun d!1692586 () Bool)

(assert (=> d!1692586 (= (matchR!7057 lt!2154390 s!2326) (matchZipper!1116 lt!2154410 s!2326))))

(declare-fun lt!2154643 () Unit!152990)

(declare-fun choose!39209 ((Set Context!8512) List!60917 Regex!14872 List!60915) Unit!152990)

(assert (=> d!1692586 (= lt!2154643 (choose!39209 lt!2154410 lt!2154434 lt!2154390 s!2326))))

(assert (=> d!1692586 (validRegex!6608 lt!2154390)))

(assert (=> d!1692586 (= (theoremZipperRegexEquiv!306 lt!2154410 lt!2154434 lt!2154390 s!2326) lt!2154643)))

(declare-fun bs!1219195 () Bool)

(assert (= bs!1219195 d!1692586))

(assert (=> bs!1219195 m!6299518))

(assert (=> bs!1219195 m!6299478))

(declare-fun m!6299970 () Bool)

(assert (=> bs!1219195 m!6299970))

(assert (=> bs!1219195 m!6299436))

(assert (=> b!5256961 d!1692586))

(declare-fun d!1692588 () Bool)

(assert (=> d!1692588 (= (matchR!7057 lt!2154423 s!2326) (matchZipper!1116 lt!2154405 s!2326))))

(declare-fun lt!2154644 () Unit!152990)

(assert (=> d!1692588 (= lt!2154644 (choose!39209 lt!2154405 lt!2154401 lt!2154423 s!2326))))

(assert (=> d!1692588 (validRegex!6608 lt!2154423)))

(assert (=> d!1692588 (= (theoremZipperRegexEquiv!306 lt!2154405 lt!2154401 lt!2154423 s!2326) lt!2154644)))

(declare-fun bs!1219196 () Bool)

(assert (= bs!1219196 d!1692588))

(assert (=> bs!1219196 m!6299536))

(assert (=> bs!1219196 m!6299514))

(declare-fun m!6299972 () Bool)

(assert (=> bs!1219196 m!6299972))

(declare-fun m!6299974 () Bool)

(assert (=> bs!1219196 m!6299974))

(assert (=> b!5256961 d!1692588))

(declare-fun b!5257636 () Bool)

(declare-fun res!2231150 () Bool)

(declare-fun e!3270717 () Bool)

(assert (=> b!5257636 (=> (not res!2231150) (not e!3270717))))

(assert (=> b!5257636 (= res!2231150 (isEmpty!32737 (tail!10369 s!2326)))))

(declare-fun b!5257637 () Bool)

(declare-fun e!3270718 () Bool)

(declare-fun lt!2154645 () Bool)

(declare-fun call!372689 () Bool)

(assert (=> b!5257637 (= e!3270718 (= lt!2154645 call!372689))))

(declare-fun b!5257638 () Bool)

(declare-fun res!2231147 () Bool)

(assert (=> b!5257638 (=> (not res!2231147) (not e!3270717))))

(assert (=> b!5257638 (= res!2231147 (not call!372689))))

(declare-fun d!1692590 () Bool)

(assert (=> d!1692590 e!3270718))

(declare-fun c!909939 () Bool)

(assert (=> d!1692590 (= c!909939 (is-EmptyExpr!14872 lt!2154390))))

(declare-fun e!3270719 () Bool)

(assert (=> d!1692590 (= lt!2154645 e!3270719)))

(declare-fun c!909941 () Bool)

(assert (=> d!1692590 (= c!909941 (isEmpty!32737 s!2326))))

(assert (=> d!1692590 (validRegex!6608 lt!2154390)))

(assert (=> d!1692590 (= (matchR!7057 lt!2154390 s!2326) lt!2154645)))

(declare-fun b!5257639 () Bool)

(declare-fun res!2231146 () Bool)

(declare-fun e!3270720 () Bool)

(assert (=> b!5257639 (=> res!2231146 e!3270720)))

(assert (=> b!5257639 (= res!2231146 e!3270717)))

(declare-fun res!2231148 () Bool)

(assert (=> b!5257639 (=> (not res!2231148) (not e!3270717))))

(assert (=> b!5257639 (= res!2231148 lt!2154645)))

(declare-fun b!5257640 () Bool)

(assert (=> b!5257640 (= e!3270719 (matchR!7057 (derivativeStep!4098 lt!2154390 (head!11272 s!2326)) (tail!10369 s!2326)))))

(declare-fun bm!372684 () Bool)

(assert (=> bm!372684 (= call!372689 (isEmpty!32737 s!2326))))

(declare-fun b!5257641 () Bool)

(assert (=> b!5257641 (= e!3270719 (nullable!5041 lt!2154390))))

(declare-fun b!5257642 () Bool)

(declare-fun res!2231145 () Bool)

(assert (=> b!5257642 (=> res!2231145 e!3270720)))

(assert (=> b!5257642 (= res!2231145 (not (is-ElementMatch!14872 lt!2154390)))))

(declare-fun e!3270715 () Bool)

(assert (=> b!5257642 (= e!3270715 e!3270720)))

(declare-fun b!5257643 () Bool)

(declare-fun res!2231144 () Bool)

(declare-fun e!3270716 () Bool)

(assert (=> b!5257643 (=> res!2231144 e!3270716)))

(assert (=> b!5257643 (= res!2231144 (not (isEmpty!32737 (tail!10369 s!2326))))))

(declare-fun b!5257644 () Bool)

(declare-fun e!3270714 () Bool)

(assert (=> b!5257644 (= e!3270720 e!3270714)))

(declare-fun res!2231151 () Bool)

(assert (=> b!5257644 (=> (not res!2231151) (not e!3270714))))

(assert (=> b!5257644 (= res!2231151 (not lt!2154645))))

(declare-fun b!5257645 () Bool)

(assert (=> b!5257645 (= e!3270715 (not lt!2154645))))

(declare-fun b!5257646 () Bool)

(assert (=> b!5257646 (= e!3270714 e!3270716)))

(declare-fun res!2231149 () Bool)

(assert (=> b!5257646 (=> res!2231149 e!3270716)))

(assert (=> b!5257646 (= res!2231149 call!372689)))

(declare-fun b!5257647 () Bool)

(assert (=> b!5257647 (= e!3270717 (= (head!11272 s!2326) (c!909754 lt!2154390)))))

(declare-fun b!5257648 () Bool)

(assert (=> b!5257648 (= e!3270716 (not (= (head!11272 s!2326) (c!909754 lt!2154390))))))

(declare-fun b!5257649 () Bool)

(assert (=> b!5257649 (= e!3270718 e!3270715)))

(declare-fun c!909940 () Bool)

(assert (=> b!5257649 (= c!909940 (is-EmptyLang!14872 lt!2154390))))

(assert (= (and d!1692590 c!909941) b!5257641))

(assert (= (and d!1692590 (not c!909941)) b!5257640))

(assert (= (and d!1692590 c!909939) b!5257637))

(assert (= (and d!1692590 (not c!909939)) b!5257649))

(assert (= (and b!5257649 c!909940) b!5257645))

(assert (= (and b!5257649 (not c!909940)) b!5257642))

(assert (= (and b!5257642 (not res!2231145)) b!5257639))

(assert (= (and b!5257639 res!2231148) b!5257638))

(assert (= (and b!5257638 res!2231147) b!5257636))

(assert (= (and b!5257636 res!2231150) b!5257647))

(assert (= (and b!5257639 (not res!2231146)) b!5257644))

(assert (= (and b!5257644 res!2231151) b!5257646))

(assert (= (and b!5257646 (not res!2231149)) b!5257643))

(assert (= (and b!5257643 (not res!2231144)) b!5257648))

(assert (= (or b!5257637 b!5257638 b!5257646) bm!372684))

(assert (=> d!1692590 m!6299730))

(assert (=> d!1692590 m!6299436))

(assert (=> b!5257636 m!6299738))

(assert (=> b!5257636 m!6299738))

(assert (=> b!5257636 m!6299740))

(assert (=> b!5257647 m!6299742))

(assert (=> bm!372684 m!6299730))

(assert (=> b!5257648 m!6299742))

(declare-fun m!6299976 () Bool)

(assert (=> b!5257641 m!6299976))

(assert (=> b!5257643 m!6299738))

(assert (=> b!5257643 m!6299738))

(assert (=> b!5257643 m!6299740))

(assert (=> b!5257640 m!6299742))

(assert (=> b!5257640 m!6299742))

(declare-fun m!6299978 () Bool)

(assert (=> b!5257640 m!6299978))

(assert (=> b!5257640 m!6299738))

(assert (=> b!5257640 m!6299978))

(assert (=> b!5257640 m!6299738))

(declare-fun m!6299980 () Bool)

(assert (=> b!5257640 m!6299980))

(assert (=> b!5256961 d!1692590))

(declare-fun d!1692592 () Bool)

(assert (=> d!1692592 (= (matchR!7057 lt!2154390 s!2326) (matchRSpec!1975 lt!2154390 s!2326))))

(declare-fun lt!2154646 () Unit!152990)

(assert (=> d!1692592 (= lt!2154646 (choose!39203 lt!2154390 s!2326))))

(assert (=> d!1692592 (validRegex!6608 lt!2154390)))

(assert (=> d!1692592 (= (mainMatchTheorem!1975 lt!2154390 s!2326) lt!2154646)))

(declare-fun bs!1219198 () Bool)

(assert (= bs!1219198 d!1692592))

(assert (=> bs!1219198 m!6299518))

(assert (=> bs!1219198 m!6299532))

(declare-fun m!6299982 () Bool)

(assert (=> bs!1219198 m!6299982))

(assert (=> bs!1219198 m!6299436))

(assert (=> b!5256961 d!1692592))

(declare-fun b!5257650 () Bool)

(declare-fun res!2231158 () Bool)

(declare-fun e!3270724 () Bool)

(assert (=> b!5257650 (=> (not res!2231158) (not e!3270724))))

(assert (=> b!5257650 (= res!2231158 (isEmpty!32737 (tail!10369 s!2326)))))

(declare-fun b!5257651 () Bool)

(declare-fun e!3270725 () Bool)

(declare-fun lt!2154647 () Bool)

(declare-fun call!372690 () Bool)

(assert (=> b!5257651 (= e!3270725 (= lt!2154647 call!372690))))

(declare-fun b!5257652 () Bool)

(declare-fun res!2231155 () Bool)

(assert (=> b!5257652 (=> (not res!2231155) (not e!3270724))))

(assert (=> b!5257652 (= res!2231155 (not call!372690))))

(declare-fun d!1692594 () Bool)

(assert (=> d!1692594 e!3270725))

(declare-fun c!909942 () Bool)

(assert (=> d!1692594 (= c!909942 (is-EmptyExpr!14872 lt!2154423))))

(declare-fun e!3270726 () Bool)

(assert (=> d!1692594 (= lt!2154647 e!3270726)))

(declare-fun c!909944 () Bool)

(assert (=> d!1692594 (= c!909944 (isEmpty!32737 s!2326))))

(assert (=> d!1692594 (validRegex!6608 lt!2154423)))

(assert (=> d!1692594 (= (matchR!7057 lt!2154423 s!2326) lt!2154647)))

(declare-fun b!5257653 () Bool)

(declare-fun res!2231154 () Bool)

(declare-fun e!3270727 () Bool)

(assert (=> b!5257653 (=> res!2231154 e!3270727)))

(assert (=> b!5257653 (= res!2231154 e!3270724)))

(declare-fun res!2231156 () Bool)

(assert (=> b!5257653 (=> (not res!2231156) (not e!3270724))))

(assert (=> b!5257653 (= res!2231156 lt!2154647)))

(declare-fun b!5257654 () Bool)

(assert (=> b!5257654 (= e!3270726 (matchR!7057 (derivativeStep!4098 lt!2154423 (head!11272 s!2326)) (tail!10369 s!2326)))))

(declare-fun bm!372685 () Bool)

(assert (=> bm!372685 (= call!372690 (isEmpty!32737 s!2326))))

(declare-fun b!5257655 () Bool)

(assert (=> b!5257655 (= e!3270726 (nullable!5041 lt!2154423))))

(declare-fun b!5257656 () Bool)

(declare-fun res!2231153 () Bool)

(assert (=> b!5257656 (=> res!2231153 e!3270727)))

(assert (=> b!5257656 (= res!2231153 (not (is-ElementMatch!14872 lt!2154423)))))

(declare-fun e!3270722 () Bool)

(assert (=> b!5257656 (= e!3270722 e!3270727)))

(declare-fun b!5257657 () Bool)

(declare-fun res!2231152 () Bool)

(declare-fun e!3270723 () Bool)

(assert (=> b!5257657 (=> res!2231152 e!3270723)))

(assert (=> b!5257657 (= res!2231152 (not (isEmpty!32737 (tail!10369 s!2326))))))

(declare-fun b!5257658 () Bool)

(declare-fun e!3270721 () Bool)

(assert (=> b!5257658 (= e!3270727 e!3270721)))

(declare-fun res!2231159 () Bool)

(assert (=> b!5257658 (=> (not res!2231159) (not e!3270721))))

(assert (=> b!5257658 (= res!2231159 (not lt!2154647))))

(declare-fun b!5257659 () Bool)

(assert (=> b!5257659 (= e!3270722 (not lt!2154647))))

(declare-fun b!5257660 () Bool)

(assert (=> b!5257660 (= e!3270721 e!3270723)))

(declare-fun res!2231157 () Bool)

(assert (=> b!5257660 (=> res!2231157 e!3270723)))

(assert (=> b!5257660 (= res!2231157 call!372690)))

(declare-fun b!5257661 () Bool)

(assert (=> b!5257661 (= e!3270724 (= (head!11272 s!2326) (c!909754 lt!2154423)))))

(declare-fun b!5257662 () Bool)

(assert (=> b!5257662 (= e!3270723 (not (= (head!11272 s!2326) (c!909754 lt!2154423))))))

(declare-fun b!5257663 () Bool)

(assert (=> b!5257663 (= e!3270725 e!3270722)))

(declare-fun c!909943 () Bool)

(assert (=> b!5257663 (= c!909943 (is-EmptyLang!14872 lt!2154423))))

(assert (= (and d!1692594 c!909944) b!5257655))

(assert (= (and d!1692594 (not c!909944)) b!5257654))

(assert (= (and d!1692594 c!909942) b!5257651))

(assert (= (and d!1692594 (not c!909942)) b!5257663))

(assert (= (and b!5257663 c!909943) b!5257659))

(assert (= (and b!5257663 (not c!909943)) b!5257656))

(assert (= (and b!5257656 (not res!2231153)) b!5257653))

(assert (= (and b!5257653 res!2231156) b!5257652))

(assert (= (and b!5257652 res!2231155) b!5257650))

(assert (= (and b!5257650 res!2231158) b!5257661))

(assert (= (and b!5257653 (not res!2231154)) b!5257658))

(assert (= (and b!5257658 res!2231159) b!5257660))

(assert (= (and b!5257660 (not res!2231157)) b!5257657))

(assert (= (and b!5257657 (not res!2231152)) b!5257662))

(assert (= (or b!5257651 b!5257652 b!5257660) bm!372685))

(assert (=> d!1692594 m!6299730))

(assert (=> d!1692594 m!6299974))

(assert (=> b!5257650 m!6299738))

(assert (=> b!5257650 m!6299738))

(assert (=> b!5257650 m!6299740))

(assert (=> b!5257661 m!6299742))

(assert (=> bm!372685 m!6299730))

(assert (=> b!5257662 m!6299742))

(declare-fun m!6299984 () Bool)

(assert (=> b!5257655 m!6299984))

(assert (=> b!5257657 m!6299738))

(assert (=> b!5257657 m!6299738))

(assert (=> b!5257657 m!6299740))

(assert (=> b!5257654 m!6299742))

(assert (=> b!5257654 m!6299742))

(declare-fun m!6299986 () Bool)

(assert (=> b!5257654 m!6299986))

(assert (=> b!5257654 m!6299738))

(assert (=> b!5257654 m!6299986))

(assert (=> b!5257654 m!6299738))

(declare-fun m!6299988 () Bool)

(assert (=> b!5257654 m!6299988))

(assert (=> b!5256961 d!1692594))

(declare-fun d!1692596 () Bool)

(assert (=> d!1692596 (= (matchR!7057 lt!2154423 s!2326) (matchRSpec!1975 lt!2154423 s!2326))))

(declare-fun lt!2154648 () Unit!152990)

(assert (=> d!1692596 (= lt!2154648 (choose!39203 lt!2154423 s!2326))))

(assert (=> d!1692596 (validRegex!6608 lt!2154423)))

(assert (=> d!1692596 (= (mainMatchTheorem!1975 lt!2154423 s!2326) lt!2154648)))

(declare-fun bs!1219200 () Bool)

(assert (= bs!1219200 d!1692596))

(assert (=> bs!1219200 m!6299536))

(assert (=> bs!1219200 m!6299526))

(declare-fun m!6299990 () Bool)

(assert (=> bs!1219200 m!6299990))

(assert (=> bs!1219200 m!6299974))

(assert (=> b!5256961 d!1692596))

(assert (=> b!5256961 d!1692576))

(declare-fun d!1692598 () Bool)

(assert (=> d!1692598 (= (isEmpty!32734 (t!374100 zl!343)) (is-Nil!60793 (t!374100 zl!343)))))

(assert (=> b!5256980 d!1692598))

(declare-fun b!5257682 () Bool)

(declare-fun res!2231174 () Bool)

(declare-fun e!3270741 () Bool)

(assert (=> b!5257682 (=> (not res!2231174) (not e!3270741))))

(declare-fun lt!2154660 () Option!14983)

(declare-fun get!20899 (Option!14983) tuple2!64142)

(assert (=> b!5257682 (= res!2231174 (matchR!7057 (regOne!30256 r!7292) (_1!35374 (get!20899 lt!2154660))))))

(declare-fun d!1692600 () Bool)

(declare-fun e!3270740 () Bool)

(assert (=> d!1692600 e!3270740))

(declare-fun res!2231172 () Bool)

(assert (=> d!1692600 (=> res!2231172 e!3270740)))

(assert (=> d!1692600 (= res!2231172 e!3270741)))

(declare-fun res!2231171 () Bool)

(assert (=> d!1692600 (=> (not res!2231171) (not e!3270741))))

(assert (=> d!1692600 (= res!2231171 (isDefined!11686 lt!2154660))))

(declare-fun e!3270739 () Option!14983)

(assert (=> d!1692600 (= lt!2154660 e!3270739)))

(declare-fun c!909950 () Bool)

(declare-fun e!3270742 () Bool)

(assert (=> d!1692600 (= c!909950 e!3270742)))

(declare-fun res!2231170 () Bool)

(assert (=> d!1692600 (=> (not res!2231170) (not e!3270742))))

(assert (=> d!1692600 (= res!2231170 (matchR!7057 (regOne!30256 r!7292) Nil!60791))))

(assert (=> d!1692600 (validRegex!6608 (regOne!30256 r!7292))))

(assert (=> d!1692600 (= (findConcatSeparation!1397 (regOne!30256 r!7292) (regTwo!30256 r!7292) Nil!60791 s!2326 s!2326) lt!2154660)))

(declare-fun b!5257683 () Bool)

(declare-fun res!2231173 () Bool)

(assert (=> b!5257683 (=> (not res!2231173) (not e!3270741))))

(assert (=> b!5257683 (= res!2231173 (matchR!7057 (regTwo!30256 r!7292) (_2!35374 (get!20899 lt!2154660))))))

(declare-fun b!5257684 () Bool)

(declare-fun lt!2154662 () Unit!152990)

(declare-fun lt!2154661 () Unit!152990)

(assert (=> b!5257684 (= lt!2154662 lt!2154661)))

(declare-fun ++!13257 (List!60915 List!60915) List!60915)

(assert (=> b!5257684 (= (++!13257 (++!13257 Nil!60791 (Cons!60791 (h!67239 s!2326) Nil!60791)) (t!374098 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1672 (List!60915 C!30014 List!60915 List!60915) Unit!152990)

(assert (=> b!5257684 (= lt!2154661 (lemmaMoveElementToOtherListKeepsConcatEq!1672 Nil!60791 (h!67239 s!2326) (t!374098 s!2326) s!2326))))

(declare-fun e!3270738 () Option!14983)

(assert (=> b!5257684 (= e!3270738 (findConcatSeparation!1397 (regOne!30256 r!7292) (regTwo!30256 r!7292) (++!13257 Nil!60791 (Cons!60791 (h!67239 s!2326) Nil!60791)) (t!374098 s!2326) s!2326))))

(declare-fun b!5257685 () Bool)

(assert (=> b!5257685 (= e!3270739 (Some!14982 (tuple2!64143 Nil!60791 s!2326)))))

(declare-fun b!5257686 () Bool)

(assert (=> b!5257686 (= e!3270742 (matchR!7057 (regTwo!30256 r!7292) s!2326))))

(declare-fun b!5257687 () Bool)

(assert (=> b!5257687 (= e!3270739 e!3270738)))

(declare-fun c!909949 () Bool)

(assert (=> b!5257687 (= c!909949 (is-Nil!60791 s!2326))))

(declare-fun b!5257688 () Bool)

(assert (=> b!5257688 (= e!3270741 (= (++!13257 (_1!35374 (get!20899 lt!2154660)) (_2!35374 (get!20899 lt!2154660))) s!2326))))

(declare-fun b!5257689 () Bool)

(assert (=> b!5257689 (= e!3270740 (not (isDefined!11686 lt!2154660)))))

(declare-fun b!5257690 () Bool)

(assert (=> b!5257690 (= e!3270738 None!14982)))

(assert (= (and d!1692600 res!2231170) b!5257686))

(assert (= (and d!1692600 c!909950) b!5257685))

(assert (= (and d!1692600 (not c!909950)) b!5257687))

(assert (= (and b!5257687 c!909949) b!5257690))

(assert (= (and b!5257687 (not c!909949)) b!5257684))

(assert (= (and d!1692600 res!2231171) b!5257682))

(assert (= (and b!5257682 res!2231174) b!5257683))

(assert (= (and b!5257683 res!2231173) b!5257688))

(assert (= (and d!1692600 (not res!2231172)) b!5257689))

(declare-fun m!6300012 () Bool)

(assert (=> b!5257684 m!6300012))

(assert (=> b!5257684 m!6300012))

(declare-fun m!6300014 () Bool)

(assert (=> b!5257684 m!6300014))

(declare-fun m!6300016 () Bool)

(assert (=> b!5257684 m!6300016))

(assert (=> b!5257684 m!6300012))

(declare-fun m!6300018 () Bool)

(assert (=> b!5257684 m!6300018))

(declare-fun m!6300020 () Bool)

(assert (=> b!5257688 m!6300020))

(declare-fun m!6300022 () Bool)

(assert (=> b!5257688 m!6300022))

(assert (=> b!5257683 m!6300020))

(declare-fun m!6300024 () Bool)

(assert (=> b!5257683 m!6300024))

(declare-fun m!6300026 () Bool)

(assert (=> b!5257686 m!6300026))

(declare-fun m!6300028 () Bool)

(assert (=> b!5257689 m!6300028))

(assert (=> b!5257682 m!6300020))

(declare-fun m!6300030 () Bool)

(assert (=> b!5257682 m!6300030))

(assert (=> d!1692600 m!6300028))

(declare-fun m!6300032 () Bool)

(assert (=> d!1692600 m!6300032))

(declare-fun m!6300034 () Bool)

(assert (=> d!1692600 m!6300034))

(assert (=> b!5256960 d!1692600))

(declare-fun d!1692608 () Bool)

(declare-fun choose!39210 (Int) Bool)

(assert (=> d!1692608 (= (Exists!2053 lambda!264927) (choose!39210 lambda!264927))))

(declare-fun bs!1219204 () Bool)

(assert (= bs!1219204 d!1692608))

(declare-fun m!6300036 () Bool)

(assert (=> bs!1219204 m!6300036))

(assert (=> b!5256960 d!1692608))

(declare-fun d!1692610 () Bool)

(assert (=> d!1692610 (= (Exists!2053 lambda!264926) (choose!39210 lambda!264926))))

(declare-fun bs!1219205 () Bool)

(assert (= bs!1219205 d!1692610))

(declare-fun m!6300038 () Bool)

(assert (=> bs!1219205 m!6300038))

(assert (=> b!5256960 d!1692610))

(declare-fun bs!1219213 () Bool)

(declare-fun d!1692612 () Bool)

(assert (= bs!1219213 (and d!1692612 b!5257247)))

(declare-fun lambda!264985 () Int)

(assert (=> bs!1219213 (not (= lambda!264985 lambda!264948))))

(declare-fun bs!1219214 () Bool)

(assert (= bs!1219214 (and d!1692612 b!5257488)))

(assert (=> bs!1219214 (not (= lambda!264985 lambda!264961))))

(declare-fun bs!1219215 () Bool)

(assert (= bs!1219215 (and d!1692612 b!5257332)))

(assert (=> bs!1219215 (not (= lambda!264985 lambda!264950))))

(declare-fun bs!1219216 () Bool)

(assert (= bs!1219216 (and d!1692612 b!5256960)))

(assert (=> bs!1219216 (= lambda!264985 lambda!264926)))

(declare-fun bs!1219217 () Bool)

(assert (= bs!1219217 (and d!1692612 b!5257327)))

(assert (=> bs!1219217 (not (= lambda!264985 lambda!264951))))

(declare-fun bs!1219218 () Bool)

(assert (= bs!1219218 (and d!1692612 b!5257579)))

(assert (=> bs!1219218 (not (= lambda!264985 lambda!264973))))

(declare-fun bs!1219219 () Bool)

(assert (= bs!1219219 (and d!1692612 b!5257242)))

(assert (=> bs!1219219 (not (= lambda!264985 lambda!264949))))

(assert (=> bs!1219216 (not (= lambda!264985 lambda!264927))))

(declare-fun bs!1219220 () Bool)

(assert (= bs!1219220 (and d!1692612 b!5257493)))

(assert (=> bs!1219220 (not (= lambda!264985 lambda!264958))))

(declare-fun bs!1219221 () Bool)

(assert (= bs!1219221 (and d!1692612 b!5257584)))

(assert (=> bs!1219221 (not (= lambda!264985 lambda!264971))))

(declare-fun bs!1219222 () Bool)

(assert (= bs!1219222 (and d!1692612 b!5257619)))

(assert (=> bs!1219222 (not (= lambda!264985 lambda!264977))))

(declare-fun bs!1219223 () Bool)

(assert (= bs!1219223 (and d!1692612 b!5257614)))

(assert (=> bs!1219223 (not (= lambda!264985 lambda!264978))))

(assert (=> d!1692612 true))

(assert (=> d!1692612 true))

(assert (=> d!1692612 true))

(assert (=> d!1692612 (= (isDefined!11686 (findConcatSeparation!1397 (regOne!30256 r!7292) (regTwo!30256 r!7292) Nil!60791 s!2326 s!2326)) (Exists!2053 lambda!264985))))

(declare-fun lt!2154667 () Unit!152990)

(declare-fun choose!39211 (Regex!14872 Regex!14872 List!60915) Unit!152990)

(assert (=> d!1692612 (= lt!2154667 (choose!39211 (regOne!30256 r!7292) (regTwo!30256 r!7292) s!2326))))

(assert (=> d!1692612 (validRegex!6608 (regOne!30256 r!7292))))

(assert (=> d!1692612 (= (lemmaFindConcatSeparationEquivalentToExists!1161 (regOne!30256 r!7292) (regTwo!30256 r!7292) s!2326) lt!2154667)))

(declare-fun bs!1219224 () Bool)

(assert (= bs!1219224 d!1692612))

(declare-fun m!6300050 () Bool)

(assert (=> bs!1219224 m!6300050))

(assert (=> bs!1219224 m!6299424))

(assert (=> bs!1219224 m!6300034))

(assert (=> bs!1219224 m!6299424))

(assert (=> bs!1219224 m!6299426))

(declare-fun m!6300052 () Bool)

(assert (=> bs!1219224 m!6300052))

(assert (=> b!5256960 d!1692612))

(declare-fun bs!1219225 () Bool)

(declare-fun d!1692618 () Bool)

(assert (= bs!1219225 (and d!1692618 b!5257247)))

(declare-fun lambda!264990 () Int)

(assert (=> bs!1219225 (not (= lambda!264990 lambda!264948))))

(declare-fun bs!1219226 () Bool)

(assert (= bs!1219226 (and d!1692618 b!5257488)))

(assert (=> bs!1219226 (not (= lambda!264990 lambda!264961))))

(declare-fun bs!1219227 () Bool)

(assert (= bs!1219227 (and d!1692618 b!5257332)))

(assert (=> bs!1219227 (not (= lambda!264990 lambda!264950))))

(declare-fun bs!1219228 () Bool)

(assert (= bs!1219228 (and d!1692618 b!5256960)))

(assert (=> bs!1219228 (= lambda!264990 lambda!264926)))

(declare-fun bs!1219229 () Bool)

(assert (= bs!1219229 (and d!1692618 b!5257327)))

(assert (=> bs!1219229 (not (= lambda!264990 lambda!264951))))

(declare-fun bs!1219230 () Bool)

(assert (= bs!1219230 (and d!1692618 b!5257579)))

(assert (=> bs!1219230 (not (= lambda!264990 lambda!264973))))

(declare-fun bs!1219231 () Bool)

(assert (= bs!1219231 (and d!1692618 b!5257242)))

(assert (=> bs!1219231 (not (= lambda!264990 lambda!264949))))

(assert (=> bs!1219228 (not (= lambda!264990 lambda!264927))))

(declare-fun bs!1219232 () Bool)

(assert (= bs!1219232 (and d!1692618 b!5257493)))

(assert (=> bs!1219232 (not (= lambda!264990 lambda!264958))))

(declare-fun bs!1219233 () Bool)

(assert (= bs!1219233 (and d!1692618 b!5257584)))

(assert (=> bs!1219233 (not (= lambda!264990 lambda!264971))))

(declare-fun bs!1219234 () Bool)

(assert (= bs!1219234 (and d!1692618 b!5257619)))

(assert (=> bs!1219234 (not (= lambda!264990 lambda!264977))))

(declare-fun bs!1219235 () Bool)

(assert (= bs!1219235 (and d!1692618 d!1692612)))

(assert (=> bs!1219235 (= lambda!264990 lambda!264985)))

(declare-fun bs!1219236 () Bool)

(assert (= bs!1219236 (and d!1692618 b!5257614)))

(assert (=> bs!1219236 (not (= lambda!264990 lambda!264978))))

(assert (=> d!1692618 true))

(assert (=> d!1692618 true))

(assert (=> d!1692618 true))

(declare-fun lambda!264991 () Int)

(assert (=> bs!1219225 (not (= lambda!264991 lambda!264948))))

(assert (=> bs!1219227 (not (= lambda!264991 lambda!264950))))

(assert (=> bs!1219228 (not (= lambda!264991 lambda!264926))))

(assert (=> bs!1219229 (= (and (= (regOne!30256 r!7292) (regOne!30256 lt!2154409)) (= (regTwo!30256 r!7292) (regTwo!30256 lt!2154409))) (= lambda!264991 lambda!264951))))

(assert (=> bs!1219230 (= (and (= (regOne!30256 r!7292) (regOne!30256 lt!2154423)) (= (regTwo!30256 r!7292) (regTwo!30256 lt!2154423))) (= lambda!264991 lambda!264973))))

(assert (=> bs!1219231 (= (and (= (regOne!30256 r!7292) (regOne!30256 lt!2154415)) (= (regTwo!30256 r!7292) (regTwo!30256 lt!2154415))) (= lambda!264991 lambda!264949))))

(assert (=> bs!1219228 (= lambda!264991 lambda!264927)))

(assert (=> bs!1219232 (not (= lambda!264991 lambda!264958))))

(assert (=> bs!1219233 (not (= lambda!264991 lambda!264971))))

(assert (=> bs!1219234 (not (= lambda!264991 lambda!264977))))

(assert (=> bs!1219226 (= lambda!264991 lambda!264961)))

(declare-fun bs!1219237 () Bool)

(assert (= bs!1219237 d!1692618))

(assert (=> bs!1219237 (not (= lambda!264991 lambda!264990))))

(assert (=> bs!1219235 (not (= lambda!264991 lambda!264985))))

(assert (=> bs!1219236 (= (and (= (regOne!30256 r!7292) (regOne!30256 lt!2154390)) (= (regTwo!30256 r!7292) (regTwo!30256 lt!2154390))) (= lambda!264991 lambda!264978))))

(assert (=> d!1692618 true))

(assert (=> d!1692618 true))

(assert (=> d!1692618 true))

(assert (=> d!1692618 (= (Exists!2053 lambda!264990) (Exists!2053 lambda!264991))))

(declare-fun lt!2154672 () Unit!152990)

(declare-fun choose!39213 (Regex!14872 Regex!14872 List!60915) Unit!152990)

(assert (=> d!1692618 (= lt!2154672 (choose!39213 (regOne!30256 r!7292) (regTwo!30256 r!7292) s!2326))))

(assert (=> d!1692618 (validRegex!6608 (regOne!30256 r!7292))))

(assert (=> d!1692618 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!707 (regOne!30256 r!7292) (regTwo!30256 r!7292) s!2326) lt!2154672)))

(declare-fun m!6300054 () Bool)

(assert (=> bs!1219237 m!6300054))

(declare-fun m!6300056 () Bool)

(assert (=> bs!1219237 m!6300056))

(declare-fun m!6300058 () Bool)

(assert (=> bs!1219237 m!6300058))

(assert (=> bs!1219237 m!6300034))

(assert (=> b!5256960 d!1692618))

(declare-fun d!1692620 () Bool)

(declare-fun isEmpty!32739 (Option!14983) Bool)

(assert (=> d!1692620 (= (isDefined!11686 (findConcatSeparation!1397 (regOne!30256 r!7292) (regTwo!30256 r!7292) Nil!60791 s!2326 s!2326)) (not (isEmpty!32739 (findConcatSeparation!1397 (regOne!30256 r!7292) (regTwo!30256 r!7292) Nil!60791 s!2326 s!2326))))))

(declare-fun bs!1219238 () Bool)

(assert (= bs!1219238 d!1692620))

(assert (=> bs!1219238 m!6299424))

(declare-fun m!6300060 () Bool)

(assert (=> bs!1219238 m!6300060))

(assert (=> b!5256960 d!1692620))

(assert (=> b!5256978 d!1692512))

(declare-fun bs!1219239 () Bool)

(declare-fun d!1692622 () Bool)

(assert (= bs!1219239 (and d!1692622 d!1692536)))

(declare-fun lambda!264992 () Int)

(assert (=> bs!1219239 (= lambda!264992 lambda!264954)))

(declare-fun bs!1219240 () Bool)

(assert (= bs!1219240 (and d!1692622 d!1692580)))

(assert (=> bs!1219240 (= lambda!264992 lambda!264975)))

(declare-fun bs!1219241 () Bool)

(assert (= bs!1219241 (and d!1692622 d!1692572)))

(assert (=> bs!1219241 (= lambda!264992 lambda!264969)))

(declare-fun bs!1219242 () Bool)

(assert (= bs!1219242 (and d!1692622 d!1692570)))

(assert (=> bs!1219242 (= lambda!264992 lambda!264965)))

(declare-fun bs!1219243 () Bool)

(assert (= bs!1219243 (and d!1692622 d!1692582)))

(assert (=> bs!1219243 (= lambda!264992 lambda!264976)))

(declare-fun bs!1219244 () Bool)

(assert (= bs!1219244 (and d!1692622 d!1692554)))

(assert (=> bs!1219244 (= lambda!264992 lambda!264957)))

(assert (=> d!1692622 (= (inv!80428 setElem!33590) (forall!14286 (exprs!4756 setElem!33590) lambda!264992))))

(declare-fun bs!1219245 () Bool)

(assert (= bs!1219245 d!1692622))

(declare-fun m!6300062 () Bool)

(assert (=> bs!1219245 m!6300062))

(assert (=> setNonEmpty!33590 d!1692622))

(declare-fun b!5257756 () Bool)

(declare-fun e!3270778 () (Set Context!8512))

(declare-fun call!372696 () (Set Context!8512))

(assert (=> b!5257756 (= e!3270778 (set.union call!372696 (derivationStepZipperUp!244 (Context!8513 (t!374099 (exprs!4756 lt!2154429))) (h!67239 s!2326))))))

(declare-fun b!5257757 () Bool)

(declare-fun e!3270777 () (Set Context!8512))

(assert (=> b!5257757 (= e!3270778 e!3270777)))

(declare-fun c!909964 () Bool)

(assert (=> b!5257757 (= c!909964 (is-Cons!60792 (exprs!4756 lt!2154429)))))

(declare-fun bm!372691 () Bool)

(assert (=> bm!372691 (= call!372696 (derivationStepZipperDown!320 (h!67240 (exprs!4756 lt!2154429)) (Context!8513 (t!374099 (exprs!4756 lt!2154429))) (h!67239 s!2326)))))

(declare-fun b!5257758 () Bool)

(assert (=> b!5257758 (= e!3270777 (as set.empty (Set Context!8512)))))

(declare-fun d!1692624 () Bool)

(declare-fun c!909965 () Bool)

(declare-fun e!3270779 () Bool)

(assert (=> d!1692624 (= c!909965 e!3270779)))

(declare-fun res!2231214 () Bool)

(assert (=> d!1692624 (=> (not res!2231214) (not e!3270779))))

(assert (=> d!1692624 (= res!2231214 (is-Cons!60792 (exprs!4756 lt!2154429)))))

(assert (=> d!1692624 (= (derivationStepZipperUp!244 lt!2154429 (h!67239 s!2326)) e!3270778)))

(declare-fun b!5257759 () Bool)

(assert (=> b!5257759 (= e!3270779 (nullable!5041 (h!67240 (exprs!4756 lt!2154429))))))

(declare-fun b!5257760 () Bool)

(assert (=> b!5257760 (= e!3270777 call!372696)))

(assert (= (and d!1692624 res!2231214) b!5257759))

(assert (= (and d!1692624 c!909965) b!5257756))

(assert (= (and d!1692624 (not c!909965)) b!5257757))

(assert (= (and b!5257757 c!909964) b!5257760))

(assert (= (and b!5257757 (not c!909964)) b!5257758))

(assert (= (or b!5257756 b!5257760) bm!372691))

(declare-fun m!6300076 () Bool)

(assert (=> b!5257756 m!6300076))

(declare-fun m!6300078 () Bool)

(assert (=> bm!372691 m!6300078))

(declare-fun m!6300080 () Bool)

(assert (=> b!5257759 m!6300080))

(assert (=> b!5256979 d!1692624))

(declare-fun d!1692628 () Bool)

(assert (=> d!1692628 (= (nullable!5041 (regTwo!30257 (regOne!30256 r!7292))) (nullableFct!1429 (regTwo!30257 (regOne!30256 r!7292))))))

(declare-fun bs!1219246 () Bool)

(assert (= bs!1219246 d!1692628))

(declare-fun m!6300082 () Bool)

(assert (=> bs!1219246 m!6300082))

(assert (=> b!5256979 d!1692628))

(declare-fun e!3270788 () (Set Context!8512))

(declare-fun b!5257775 () Bool)

(declare-fun call!372698 () (Set Context!8512))

(assert (=> b!5257775 (= e!3270788 (set.union call!372698 (derivationStepZipperUp!244 (Context!8513 (t!374099 (exprs!4756 lt!2154430))) (h!67239 s!2326))))))

(declare-fun b!5257776 () Bool)

(declare-fun e!3270787 () (Set Context!8512))

(assert (=> b!5257776 (= e!3270788 e!3270787)))

(declare-fun c!909969 () Bool)

(assert (=> b!5257776 (= c!909969 (is-Cons!60792 (exprs!4756 lt!2154430)))))

(declare-fun bm!372693 () Bool)

(assert (=> bm!372693 (= call!372698 (derivationStepZipperDown!320 (h!67240 (exprs!4756 lt!2154430)) (Context!8513 (t!374099 (exprs!4756 lt!2154430))) (h!67239 s!2326)))))

(declare-fun b!5257777 () Bool)

(assert (=> b!5257777 (= e!3270787 (as set.empty (Set Context!8512)))))

(declare-fun d!1692630 () Bool)

(declare-fun c!909970 () Bool)

(declare-fun e!3270789 () Bool)

(assert (=> d!1692630 (= c!909970 e!3270789)))

(declare-fun res!2231223 () Bool)

(assert (=> d!1692630 (=> (not res!2231223) (not e!3270789))))

(assert (=> d!1692630 (= res!2231223 (is-Cons!60792 (exprs!4756 lt!2154430)))))

(assert (=> d!1692630 (= (derivationStepZipperUp!244 lt!2154430 (h!67239 s!2326)) e!3270788)))

(declare-fun b!5257778 () Bool)

(assert (=> b!5257778 (= e!3270789 (nullable!5041 (h!67240 (exprs!4756 lt!2154430))))))

(declare-fun b!5257779 () Bool)

(assert (=> b!5257779 (= e!3270787 call!372698)))

(assert (= (and d!1692630 res!2231223) b!5257778))

(assert (= (and d!1692630 c!909970) b!5257775))

(assert (= (and d!1692630 (not c!909970)) b!5257776))

(assert (= (and b!5257776 c!909969) b!5257779))

(assert (= (and b!5257776 (not c!909969)) b!5257777))

(assert (= (or b!5257775 b!5257779) bm!372693))

(declare-fun m!6300084 () Bool)

(assert (=> b!5257775 m!6300084))

(declare-fun m!6300086 () Bool)

(assert (=> bm!372693 m!6300086))

(declare-fun m!6300088 () Bool)

(assert (=> b!5257778 m!6300088))

(assert (=> b!5256979 d!1692630))

(declare-fun d!1692632 () Bool)

(declare-fun c!909971 () Bool)

(assert (=> d!1692632 (= c!909971 (isEmpty!32737 s!2326))))

(declare-fun e!3270790 () Bool)

(assert (=> d!1692632 (= (matchZipper!1116 lt!2154405 s!2326) e!3270790)))

(declare-fun b!5257780 () Bool)

(assert (=> b!5257780 (= e!3270790 (nullableZipper!1277 lt!2154405))))

(declare-fun b!5257781 () Bool)

(assert (=> b!5257781 (= e!3270790 (matchZipper!1116 (derivationStepZipper!1121 lt!2154405 (head!11272 s!2326)) (tail!10369 s!2326)))))

(assert (= (and d!1692632 c!909971) b!5257780))

(assert (= (and d!1692632 (not c!909971)) b!5257781))

(assert (=> d!1692632 m!6299730))

(declare-fun m!6300090 () Bool)

(assert (=> b!5257780 m!6300090))

(assert (=> b!5257781 m!6299742))

(assert (=> b!5257781 m!6299742))

(declare-fun m!6300092 () Bool)

(assert (=> b!5257781 m!6300092))

(assert (=> b!5257781 m!6299738))

(assert (=> b!5257781 m!6300092))

(assert (=> b!5257781 m!6299738))

(declare-fun m!6300094 () Bool)

(assert (=> b!5257781 m!6300094))

(assert (=> b!5256979 d!1692632))

(declare-fun d!1692634 () Bool)

(declare-fun c!909972 () Bool)

(assert (=> d!1692634 (= c!909972 (isEmpty!32737 s!2326))))

(declare-fun e!3270791 () Bool)

(assert (=> d!1692634 (= (matchZipper!1116 z!1189 s!2326) e!3270791)))

(declare-fun b!5257782 () Bool)

(assert (=> b!5257782 (= e!3270791 (nullableZipper!1277 z!1189))))

(declare-fun b!5257783 () Bool)

(assert (=> b!5257783 (= e!3270791 (matchZipper!1116 (derivationStepZipper!1121 z!1189 (head!11272 s!2326)) (tail!10369 s!2326)))))

(assert (= (and d!1692634 c!909972) b!5257782))

(assert (= (and d!1692634 (not c!909972)) b!5257783))

(assert (=> d!1692634 m!6299730))

(declare-fun m!6300096 () Bool)

(assert (=> b!5257782 m!6300096))

(assert (=> b!5257783 m!6299742))

(assert (=> b!5257783 m!6299742))

(declare-fun m!6300098 () Bool)

(assert (=> b!5257783 m!6300098))

(assert (=> b!5257783 m!6299738))

(assert (=> b!5257783 m!6300098))

(assert (=> b!5257783 m!6299738))

(declare-fun m!6300100 () Bool)

(assert (=> b!5257783 m!6300100))

(assert (=> b!5256979 d!1692634))

(declare-fun d!1692636 () Bool)

(assert (=> d!1692636 (= (flatMap!599 lt!2154410 lambda!264928) (choose!39205 lt!2154410 lambda!264928))))

(declare-fun bs!1219247 () Bool)

(assert (= bs!1219247 d!1692636))

(declare-fun m!6300104 () Bool)

(assert (=> bs!1219247 m!6300104))

(assert (=> b!5256979 d!1692636))

(declare-fun d!1692638 () Bool)

(assert (=> d!1692638 (= (flatMap!599 lt!2154410 lambda!264928) (dynLambda!24020 lambda!264928 lt!2154430))))

(declare-fun lt!2154675 () Unit!152990)

(assert (=> d!1692638 (= lt!2154675 (choose!39206 lt!2154410 lt!2154430 lambda!264928))))

(assert (=> d!1692638 (= lt!2154410 (set.insert lt!2154430 (as set.empty (Set Context!8512))))))

(assert (=> d!1692638 (= (lemmaFlatMapOnSingletonSet!131 lt!2154410 lt!2154430 lambda!264928) lt!2154675)))

(declare-fun b_lambda!202927 () Bool)

(assert (=> (not b_lambda!202927) (not d!1692638)))

(declare-fun bs!1219248 () Bool)

(assert (= bs!1219248 d!1692638))

(assert (=> bs!1219248 m!6299502))

(declare-fun m!6300108 () Bool)

(assert (=> bs!1219248 m!6300108))

(declare-fun m!6300110 () Bool)

(assert (=> bs!1219248 m!6300110))

(assert (=> bs!1219248 m!6299498))

(assert (=> b!5256979 d!1692638))

(declare-fun d!1692640 () Bool)

(assert (=> d!1692640 (= (nullable!5041 (regOne!30257 (regOne!30256 r!7292))) (nullableFct!1429 (regOne!30257 (regOne!30256 r!7292))))))

(declare-fun bs!1219249 () Bool)

(assert (= bs!1219249 d!1692640))

(declare-fun m!6300114 () Bool)

(assert (=> bs!1219249 m!6300114))

(assert (=> b!5256979 d!1692640))

(declare-fun d!1692644 () Bool)

(assert (=> d!1692644 (= (flatMap!599 lt!2154405 lambda!264928) (choose!39205 lt!2154405 lambda!264928))))

(declare-fun bs!1219250 () Bool)

(assert (= bs!1219250 d!1692644))

(declare-fun m!6300116 () Bool)

(assert (=> bs!1219250 m!6300116))

(assert (=> b!5256979 d!1692644))

(declare-fun d!1692646 () Bool)

(assert (=> d!1692646 (= (flatMap!599 lt!2154405 lambda!264928) (dynLambda!24020 lambda!264928 lt!2154429))))

(declare-fun lt!2154676 () Unit!152990)

(assert (=> d!1692646 (= lt!2154676 (choose!39206 lt!2154405 lt!2154429 lambda!264928))))

(assert (=> d!1692646 (= lt!2154405 (set.insert lt!2154429 (as set.empty (Set Context!8512))))))

(assert (=> d!1692646 (= (lemmaFlatMapOnSingletonSet!131 lt!2154405 lt!2154429 lambda!264928) lt!2154676)))

(declare-fun b_lambda!202929 () Bool)

(assert (=> (not b_lambda!202929) (not d!1692646)))

(declare-fun bs!1219252 () Bool)

(assert (= bs!1219252 d!1692646))

(assert (=> bs!1219252 m!6299510))

(declare-fun m!6300118 () Bool)

(assert (=> bs!1219252 m!6300118))

(declare-fun m!6300120 () Bool)

(assert (=> bs!1219252 m!6300120))

(assert (=> bs!1219252 m!6299504))

(assert (=> b!5256979 d!1692646))

(assert (=> b!5256998 d!1692512))

(declare-fun d!1692648 () Bool)

(declare-fun e!3270794 () Bool)

(assert (=> d!1692648 (= (matchZipper!1116 (set.union lt!2154393 lt!2154396) (t!374098 s!2326)) e!3270794)))

(declare-fun res!2231226 () Bool)

(assert (=> d!1692648 (=> res!2231226 e!3270794)))

(assert (=> d!1692648 (= res!2231226 (matchZipper!1116 lt!2154393 (t!374098 s!2326)))))

(declare-fun lt!2154679 () Unit!152990)

(declare-fun choose!39215 ((Set Context!8512) (Set Context!8512) List!60915) Unit!152990)

(assert (=> d!1692648 (= lt!2154679 (choose!39215 lt!2154393 lt!2154396 (t!374098 s!2326)))))

(assert (=> d!1692648 (= (lemmaZipperConcatMatchesSameAsBothZippers!109 lt!2154393 lt!2154396 (t!374098 s!2326)) lt!2154679)))

(declare-fun b!5257786 () Bool)

(assert (=> b!5257786 (= e!3270794 (matchZipper!1116 lt!2154396 (t!374098 s!2326)))))

(assert (= (and d!1692648 (not res!2231226)) b!5257786))

(assert (=> d!1692648 m!6299444))

(assert (=> d!1692648 m!6299442))

(declare-fun m!6300124 () Bool)

(assert (=> d!1692648 m!6300124))

(assert (=> b!5257786 m!6299390))

(assert (=> b!5256977 d!1692648))

(assert (=> b!5256977 d!1692560))

(declare-fun d!1692652 () Bool)

(declare-fun c!909973 () Bool)

(assert (=> d!1692652 (= c!909973 (isEmpty!32737 (t!374098 s!2326)))))

(declare-fun e!3270795 () Bool)

(assert (=> d!1692652 (= (matchZipper!1116 (set.union lt!2154393 lt!2154396) (t!374098 s!2326)) e!3270795)))

(declare-fun b!5257787 () Bool)

(assert (=> b!5257787 (= e!3270795 (nullableZipper!1277 (set.union lt!2154393 lt!2154396)))))

(declare-fun b!5257788 () Bool)

(assert (=> b!5257788 (= e!3270795 (matchZipper!1116 (derivationStepZipper!1121 (set.union lt!2154393 lt!2154396) (head!11272 (t!374098 s!2326))) (tail!10369 (t!374098 s!2326))))))

(assert (= (and d!1692652 c!909973) b!5257787))

(assert (= (and d!1692652 (not c!909973)) b!5257788))

(assert (=> d!1692652 m!6299714))

(declare-fun m!6300126 () Bool)

(assert (=> b!5257787 m!6300126))

(assert (=> b!5257788 m!6299718))

(assert (=> b!5257788 m!6299718))

(declare-fun m!6300128 () Bool)

(assert (=> b!5257788 m!6300128))

(assert (=> b!5257788 m!6299722))

(assert (=> b!5257788 m!6300128))

(assert (=> b!5257788 m!6299722))

(declare-fun m!6300130 () Bool)

(assert (=> b!5257788 m!6300130))

(assert (=> b!5256977 d!1692652))

(declare-fun b!5257790 () Bool)

(declare-fun e!3270797 () Bool)

(declare-fun call!372701 () Bool)

(assert (=> b!5257790 (= e!3270797 call!372701)))

(declare-fun bm!372694 () Bool)

(declare-fun call!372700 () Bool)

(assert (=> bm!372694 (= call!372700 call!372701)))

(declare-fun b!5257791 () Bool)

(declare-fun e!3270802 () Bool)

(assert (=> b!5257791 (= e!3270802 e!3270797)))

(declare-fun res!2231228 () Bool)

(assert (=> b!5257791 (= res!2231228 (not (nullable!5041 (reg!15201 lt!2154390))))))

(assert (=> b!5257791 (=> (not res!2231228) (not e!3270797))))

(declare-fun b!5257792 () Bool)

(declare-fun e!3270801 () Bool)

(assert (=> b!5257792 (= e!3270801 call!372700)))

(declare-fun b!5257793 () Bool)

(declare-fun e!3270800 () Bool)

(assert (=> b!5257793 (= e!3270800 e!3270802)))

(declare-fun c!909975 () Bool)

(assert (=> b!5257793 (= c!909975 (is-Star!14872 lt!2154390))))

(declare-fun d!1692654 () Bool)

(declare-fun res!2231231 () Bool)

(assert (=> d!1692654 (=> res!2231231 e!3270800)))

(assert (=> d!1692654 (= res!2231231 (is-ElementMatch!14872 lt!2154390))))

(assert (=> d!1692654 (= (validRegex!6608 lt!2154390) e!3270800)))

(declare-fun b!5257789 () Bool)

(declare-fun e!3270799 () Bool)

(assert (=> b!5257789 (= e!3270802 e!3270799)))

(declare-fun c!909974 () Bool)

(assert (=> b!5257789 (= c!909974 (is-Union!14872 lt!2154390))))

(declare-fun bm!372695 () Bool)

(assert (=> bm!372695 (= call!372701 (validRegex!6608 (ite c!909975 (reg!15201 lt!2154390) (ite c!909974 (regTwo!30257 lt!2154390) (regTwo!30256 lt!2154390)))))))

(declare-fun b!5257794 () Bool)

(declare-fun e!3270796 () Bool)

(assert (=> b!5257794 (= e!3270796 call!372700)))

(declare-fun b!5257795 () Bool)

(declare-fun e!3270798 () Bool)

(assert (=> b!5257795 (= e!3270798 e!3270796)))

(declare-fun res!2231229 () Bool)

(assert (=> b!5257795 (=> (not res!2231229) (not e!3270796))))

(declare-fun call!372699 () Bool)

(assert (=> b!5257795 (= res!2231229 call!372699)))

(declare-fun b!5257796 () Bool)

(declare-fun res!2231230 () Bool)

(assert (=> b!5257796 (=> res!2231230 e!3270798)))

(assert (=> b!5257796 (= res!2231230 (not (is-Concat!23717 lt!2154390)))))

(assert (=> b!5257796 (= e!3270799 e!3270798)))

(declare-fun b!5257797 () Bool)

(declare-fun res!2231227 () Bool)

(assert (=> b!5257797 (=> (not res!2231227) (not e!3270801))))

(assert (=> b!5257797 (= res!2231227 call!372699)))

(assert (=> b!5257797 (= e!3270799 e!3270801)))

(declare-fun bm!372696 () Bool)

(assert (=> bm!372696 (= call!372699 (validRegex!6608 (ite c!909974 (regOne!30257 lt!2154390) (regOne!30256 lt!2154390))))))

(assert (= (and d!1692654 (not res!2231231)) b!5257793))

(assert (= (and b!5257793 c!909975) b!5257791))

(assert (= (and b!5257793 (not c!909975)) b!5257789))

(assert (= (and b!5257791 res!2231228) b!5257790))

(assert (= (and b!5257789 c!909974) b!5257797))

(assert (= (and b!5257789 (not c!909974)) b!5257796))

(assert (= (and b!5257797 res!2231227) b!5257792))

(assert (= (and b!5257796 (not res!2231230)) b!5257795))

(assert (= (and b!5257795 res!2231229) b!5257794))

(assert (= (or b!5257792 b!5257794) bm!372694))

(assert (= (or b!5257797 b!5257795) bm!372696))

(assert (= (or b!5257790 bm!372694) bm!372695))

(declare-fun m!6300132 () Bool)

(assert (=> b!5257791 m!6300132))

(declare-fun m!6300134 () Bool)

(assert (=> bm!372695 m!6300134))

(declare-fun m!6300136 () Bool)

(assert (=> bm!372696 m!6300136))

(assert (=> b!5256999 d!1692654))

(declare-fun e!3270803 () Bool)

(declare-fun d!1692656 () Bool)

(assert (=> d!1692656 (= (matchZipper!1116 (set.union lt!2154416 lt!2154396) (t!374098 s!2326)) e!3270803)))

(declare-fun res!2231232 () Bool)

(assert (=> d!1692656 (=> res!2231232 e!3270803)))

(assert (=> d!1692656 (= res!2231232 (matchZipper!1116 lt!2154416 (t!374098 s!2326)))))

(declare-fun lt!2154680 () Unit!152990)

(assert (=> d!1692656 (= lt!2154680 (choose!39215 lt!2154416 lt!2154396 (t!374098 s!2326)))))

(assert (=> d!1692656 (= (lemmaZipperConcatMatchesSameAsBothZippers!109 lt!2154416 lt!2154396 (t!374098 s!2326)) lt!2154680)))

(declare-fun b!5257798 () Bool)

(assert (=> b!5257798 (= e!3270803 (matchZipper!1116 lt!2154396 (t!374098 s!2326)))))

(assert (= (and d!1692656 (not res!2231232)) b!5257798))

(assert (=> d!1692656 m!6299422))

(assert (=> d!1692656 m!6299398))

(declare-fun m!6300138 () Bool)

(assert (=> d!1692656 m!6300138))

(assert (=> b!5257798 m!6299390))

(assert (=> b!5256986 d!1692656))

(declare-fun d!1692658 () Bool)

(declare-fun c!909976 () Bool)

(assert (=> d!1692658 (= c!909976 (isEmpty!32737 (t!374098 s!2326)))))

(declare-fun e!3270804 () Bool)

(assert (=> d!1692658 (= (matchZipper!1116 (set.union lt!2154416 lt!2154396) (t!374098 s!2326)) e!3270804)))

(declare-fun b!5257799 () Bool)

(assert (=> b!5257799 (= e!3270804 (nullableZipper!1277 (set.union lt!2154416 lt!2154396)))))

(declare-fun b!5257800 () Bool)

(assert (=> b!5257800 (= e!3270804 (matchZipper!1116 (derivationStepZipper!1121 (set.union lt!2154416 lt!2154396) (head!11272 (t!374098 s!2326))) (tail!10369 (t!374098 s!2326))))))

(assert (= (and d!1692658 c!909976) b!5257799))

(assert (= (and d!1692658 (not c!909976)) b!5257800))

(assert (=> d!1692658 m!6299714))

(declare-fun m!6300140 () Bool)

(assert (=> b!5257799 m!6300140))

(assert (=> b!5257800 m!6299718))

(assert (=> b!5257800 m!6299718))

(declare-fun m!6300142 () Bool)

(assert (=> b!5257800 m!6300142))

(assert (=> b!5257800 m!6299722))

(assert (=> b!5257800 m!6300142))

(assert (=> b!5257800 m!6299722))

(declare-fun m!6300144 () Bool)

(assert (=> b!5257800 m!6300144))

(assert (=> b!5256986 d!1692658))

(declare-fun d!1692660 () Bool)

(assert (=> d!1692660 (= (isEmpty!32733 (t!374099 (exprs!4756 (h!67241 zl!343)))) (is-Nil!60792 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(assert (=> b!5256965 d!1692660))

(declare-fun d!1692662 () Bool)

(declare-fun c!909977 () Bool)

(assert (=> d!1692662 (= c!909977 (isEmpty!32737 (t!374098 s!2326)))))

(declare-fun e!3270805 () Bool)

(assert (=> d!1692662 (= (matchZipper!1116 lt!2154412 (t!374098 s!2326)) e!3270805)))

(declare-fun b!5257801 () Bool)

(assert (=> b!5257801 (= e!3270805 (nullableZipper!1277 lt!2154412))))

(declare-fun b!5257802 () Bool)

(assert (=> b!5257802 (= e!3270805 (matchZipper!1116 (derivationStepZipper!1121 lt!2154412 (head!11272 (t!374098 s!2326))) (tail!10369 (t!374098 s!2326))))))

(assert (= (and d!1692662 c!909977) b!5257801))

(assert (= (and d!1692662 (not c!909977)) b!5257802))

(assert (=> d!1692662 m!6299714))

(declare-fun m!6300146 () Bool)

(assert (=> b!5257801 m!6300146))

(assert (=> b!5257802 m!6299718))

(assert (=> b!5257802 m!6299718))

(declare-fun m!6300148 () Bool)

(assert (=> b!5257802 m!6300148))

(assert (=> b!5257802 m!6299722))

(assert (=> b!5257802 m!6300148))

(assert (=> b!5257802 m!6299722))

(declare-fun m!6300150 () Bool)

(assert (=> b!5257802 m!6300150))

(assert (=> b!5256987 d!1692662))

(declare-fun d!1692664 () Bool)

(declare-fun c!909978 () Bool)

(assert (=> d!1692664 (= c!909978 (isEmpty!32737 (t!374098 s!2326)))))

(declare-fun e!3270806 () Bool)

(assert (=> d!1692664 (= (matchZipper!1116 lt!2154414 (t!374098 s!2326)) e!3270806)))

(declare-fun b!5257803 () Bool)

(assert (=> b!5257803 (= e!3270806 (nullableZipper!1277 lt!2154414))))

(declare-fun b!5257804 () Bool)

(assert (=> b!5257804 (= e!3270806 (matchZipper!1116 (derivationStepZipper!1121 lt!2154414 (head!11272 (t!374098 s!2326))) (tail!10369 (t!374098 s!2326))))))

(assert (= (and d!1692664 c!909978) b!5257803))

(assert (= (and d!1692664 (not c!909978)) b!5257804))

(assert (=> d!1692664 m!6299714))

(declare-fun m!6300152 () Bool)

(assert (=> b!5257803 m!6300152))

(assert (=> b!5257804 m!6299718))

(assert (=> b!5257804 m!6299718))

(declare-fun m!6300154 () Bool)

(assert (=> b!5257804 m!6300154))

(assert (=> b!5257804 m!6299722))

(assert (=> b!5257804 m!6300154))

(assert (=> b!5257804 m!6299722))

(declare-fun m!6300156 () Bool)

(assert (=> b!5257804 m!6300156))

(assert (=> b!5256987 d!1692664))

(declare-fun d!1692666 () Bool)

(declare-fun c!909979 () Bool)

(assert (=> d!1692666 (= c!909979 (isEmpty!32737 (t!374098 s!2326)))))

(declare-fun e!3270807 () Bool)

(assert (=> d!1692666 (= (matchZipper!1116 lt!2154416 (t!374098 s!2326)) e!3270807)))

(declare-fun b!5257805 () Bool)

(assert (=> b!5257805 (= e!3270807 (nullableZipper!1277 lt!2154416))))

(declare-fun b!5257806 () Bool)

(assert (=> b!5257806 (= e!3270807 (matchZipper!1116 (derivationStepZipper!1121 lt!2154416 (head!11272 (t!374098 s!2326))) (tail!10369 (t!374098 s!2326))))))

(assert (= (and d!1692666 c!909979) b!5257805))

(assert (= (and d!1692666 (not c!909979)) b!5257806))

(assert (=> d!1692666 m!6299714))

(declare-fun m!6300158 () Bool)

(assert (=> b!5257805 m!6300158))

(assert (=> b!5257806 m!6299718))

(assert (=> b!5257806 m!6299718))

(declare-fun m!6300160 () Bool)

(assert (=> b!5257806 m!6300160))

(assert (=> b!5257806 m!6299722))

(assert (=> b!5257806 m!6300160))

(assert (=> b!5257806 m!6299722))

(declare-fun m!6300162 () Bool)

(assert (=> b!5257806 m!6300162))

(assert (=> b!5256987 d!1692666))

(declare-fun e!3270808 () Bool)

(declare-fun d!1692668 () Bool)

(assert (=> d!1692668 (= (matchZipper!1116 (set.union lt!2154416 lt!2154393) (t!374098 s!2326)) e!3270808)))

(declare-fun res!2231233 () Bool)

(assert (=> d!1692668 (=> res!2231233 e!3270808)))

(assert (=> d!1692668 (= res!2231233 (matchZipper!1116 lt!2154416 (t!374098 s!2326)))))

(declare-fun lt!2154681 () Unit!152990)

(assert (=> d!1692668 (= lt!2154681 (choose!39215 lt!2154416 lt!2154393 (t!374098 s!2326)))))

(assert (=> d!1692668 (= (lemmaZipperConcatMatchesSameAsBothZippers!109 lt!2154416 lt!2154393 (t!374098 s!2326)) lt!2154681)))

(declare-fun b!5257807 () Bool)

(assert (=> b!5257807 (= e!3270808 (matchZipper!1116 lt!2154393 (t!374098 s!2326)))))

(assert (= (and d!1692668 (not res!2231233)) b!5257807))

(declare-fun m!6300164 () Bool)

(assert (=> d!1692668 m!6300164))

(assert (=> d!1692668 m!6299398))

(declare-fun m!6300166 () Bool)

(assert (=> d!1692668 m!6300166))

(assert (=> b!5257807 m!6299442))

(assert (=> b!5256987 d!1692668))

(assert (=> b!5256964 d!1692560))

(declare-fun d!1692670 () Bool)

(declare-fun e!3270809 () Bool)

(assert (=> d!1692670 (= (matchZipper!1116 (set.union lt!2154412 lt!2154396) (t!374098 s!2326)) e!3270809)))

(declare-fun res!2231234 () Bool)

(assert (=> d!1692670 (=> res!2231234 e!3270809)))

(assert (=> d!1692670 (= res!2231234 (matchZipper!1116 lt!2154412 (t!374098 s!2326)))))

(declare-fun lt!2154682 () Unit!152990)

(assert (=> d!1692670 (= lt!2154682 (choose!39215 lt!2154412 lt!2154396 (t!374098 s!2326)))))

(assert (=> d!1692670 (= (lemmaZipperConcatMatchesSameAsBothZippers!109 lt!2154412 lt!2154396 (t!374098 s!2326)) lt!2154682)))

(declare-fun b!5257808 () Bool)

(assert (=> b!5257808 (= e!3270809 (matchZipper!1116 lt!2154396 (t!374098 s!2326)))))

(assert (= (and d!1692670 (not res!2231234)) b!5257808))

(assert (=> d!1692670 m!6299458))

(assert (=> d!1692670 m!6299394))

(declare-fun m!6300168 () Bool)

(assert (=> d!1692670 m!6300168))

(assert (=> b!5257808 m!6299390))

(assert (=> b!5256984 d!1692670))

(assert (=> b!5256984 d!1692662))

(declare-fun d!1692672 () Bool)

(declare-fun c!909980 () Bool)

(assert (=> d!1692672 (= c!909980 (isEmpty!32737 (t!374098 s!2326)))))

(declare-fun e!3270810 () Bool)

(assert (=> d!1692672 (= (matchZipper!1116 (set.union lt!2154412 lt!2154396) (t!374098 s!2326)) e!3270810)))

(declare-fun b!5257811 () Bool)

(assert (=> b!5257811 (= e!3270810 (nullableZipper!1277 (set.union lt!2154412 lt!2154396)))))

(declare-fun b!5257812 () Bool)

(assert (=> b!5257812 (= e!3270810 (matchZipper!1116 (derivationStepZipper!1121 (set.union lt!2154412 lt!2154396) (head!11272 (t!374098 s!2326))) (tail!10369 (t!374098 s!2326))))))

(assert (= (and d!1692672 c!909980) b!5257811))

(assert (= (and d!1692672 (not c!909980)) b!5257812))

(assert (=> d!1692672 m!6299714))

(declare-fun m!6300170 () Bool)

(assert (=> b!5257811 m!6300170))

(assert (=> b!5257812 m!6299718))

(assert (=> b!5257812 m!6299718))

(declare-fun m!6300172 () Bool)

(assert (=> b!5257812 m!6300172))

(assert (=> b!5257812 m!6299722))

(assert (=> b!5257812 m!6300172))

(assert (=> b!5257812 m!6299722))

(declare-fun m!6300174 () Bool)

(assert (=> b!5257812 m!6300174))

(assert (=> b!5256984 d!1692672))

(declare-fun d!1692674 () Bool)

(declare-fun e!3270825 () Bool)

(assert (=> d!1692674 e!3270825))

(declare-fun res!2231241 () Bool)

(assert (=> d!1692674 (=> (not res!2231241) (not e!3270825))))

(declare-fun lt!2154687 () List!60917)

(declare-fun noDuplicate!1233 (List!60917) Bool)

(assert (=> d!1692674 (= res!2231241 (noDuplicate!1233 lt!2154687))))

(declare-fun choose!39216 ((Set Context!8512)) List!60917)

(assert (=> d!1692674 (= lt!2154687 (choose!39216 z!1189))))

(assert (=> d!1692674 (= (toList!8656 z!1189) lt!2154687)))

(declare-fun b!5257833 () Bool)

(declare-fun content!10800 (List!60917) (Set Context!8512))

(assert (=> b!5257833 (= e!3270825 (= (content!10800 lt!2154687) z!1189))))

(assert (= (and d!1692674 res!2231241) b!5257833))

(declare-fun m!6300176 () Bool)

(assert (=> d!1692674 m!6300176))

(declare-fun m!6300178 () Bool)

(assert (=> d!1692674 m!6300178))

(declare-fun m!6300180 () Bool)

(assert (=> b!5257833 m!6300180))

(assert (=> b!5256962 d!1692674))

(declare-fun bs!1219254 () Bool)

(declare-fun d!1692676 () Bool)

(assert (= bs!1219254 (and d!1692676 d!1692536)))

(declare-fun lambda!264996 () Int)

(assert (=> bs!1219254 (= lambda!264996 lambda!264954)))

(declare-fun bs!1219255 () Bool)

(assert (= bs!1219255 (and d!1692676 d!1692572)))

(assert (=> bs!1219255 (= lambda!264996 lambda!264969)))

(declare-fun bs!1219256 () Bool)

(assert (= bs!1219256 (and d!1692676 d!1692570)))

(assert (=> bs!1219256 (= lambda!264996 lambda!264965)))

(declare-fun bs!1219257 () Bool)

(assert (= bs!1219257 (and d!1692676 d!1692622)))

(assert (=> bs!1219257 (= lambda!264996 lambda!264992)))

(declare-fun bs!1219258 () Bool)

(assert (= bs!1219258 (and d!1692676 d!1692580)))

(assert (=> bs!1219258 (= lambda!264996 lambda!264975)))

(declare-fun bs!1219259 () Bool)

(assert (= bs!1219259 (and d!1692676 d!1692582)))

(assert (=> bs!1219259 (= lambda!264996 lambda!264976)))

(declare-fun bs!1219260 () Bool)

(assert (= bs!1219260 (and d!1692676 d!1692554)))

(assert (=> bs!1219260 (= lambda!264996 lambda!264957)))

(declare-fun b!5257834 () Bool)

(declare-fun e!3270830 () Regex!14872)

(assert (=> b!5257834 (= e!3270830 (Concat!23717 (h!67240 (exprs!4756 (h!67241 zl!343))) (generalisedConcat!541 (t!374099 (exprs!4756 (h!67241 zl!343))))))))

(declare-fun b!5257835 () Bool)

(declare-fun e!3270831 () Regex!14872)

(assert (=> b!5257835 (= e!3270831 e!3270830)))

(declare-fun c!909990 () Bool)

(assert (=> b!5257835 (= c!909990 (is-Cons!60792 (exprs!4756 (h!67241 zl!343))))))

(declare-fun b!5257836 () Bool)

(declare-fun e!3270829 () Bool)

(declare-fun lt!2154688 () Regex!14872)

(assert (=> b!5257836 (= e!3270829 (isEmptyExpr!812 lt!2154688))))

(declare-fun b!5257837 () Bool)

(declare-fun e!3270828 () Bool)

(assert (=> b!5257837 (= e!3270828 (= lt!2154688 (head!11273 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257838 () Bool)

(assert (=> b!5257838 (= e!3270830 EmptyExpr!14872)))

(declare-fun e!3270826 () Bool)

(assert (=> d!1692676 e!3270826))

(declare-fun res!2231242 () Bool)

(assert (=> d!1692676 (=> (not res!2231242) (not e!3270826))))

(assert (=> d!1692676 (= res!2231242 (validRegex!6608 lt!2154688))))

(assert (=> d!1692676 (= lt!2154688 e!3270831)))

(declare-fun c!909989 () Bool)

(declare-fun e!3270827 () Bool)

(assert (=> d!1692676 (= c!909989 e!3270827)))

(declare-fun res!2231243 () Bool)

(assert (=> d!1692676 (=> (not res!2231243) (not e!3270827))))

(assert (=> d!1692676 (= res!2231243 (is-Cons!60792 (exprs!4756 (h!67241 zl!343))))))

(assert (=> d!1692676 (forall!14286 (exprs!4756 (h!67241 zl!343)) lambda!264996)))

(assert (=> d!1692676 (= (generalisedConcat!541 (exprs!4756 (h!67241 zl!343))) lt!2154688)))

(declare-fun b!5257839 () Bool)

(assert (=> b!5257839 (= e!3270828 (isConcat!335 lt!2154688))))

(declare-fun b!5257840 () Bool)

(assert (=> b!5257840 (= e!3270826 e!3270829)))

(declare-fun c!909992 () Bool)

(assert (=> b!5257840 (= c!909992 (isEmpty!32733 (exprs!4756 (h!67241 zl!343))))))

(declare-fun b!5257841 () Bool)

(assert (=> b!5257841 (= e!3270827 (isEmpty!32733 (t!374099 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257842 () Bool)

(assert (=> b!5257842 (= e!3270829 e!3270828)))

(declare-fun c!909991 () Bool)

(assert (=> b!5257842 (= c!909991 (isEmpty!32733 (tail!10370 (exprs!4756 (h!67241 zl!343)))))))

(declare-fun b!5257843 () Bool)

(assert (=> b!5257843 (= e!3270831 (h!67240 (exprs!4756 (h!67241 zl!343))))))

(assert (= (and d!1692676 res!2231243) b!5257841))

(assert (= (and d!1692676 c!909989) b!5257843))

(assert (= (and d!1692676 (not c!909989)) b!5257835))

(assert (= (and b!5257835 c!909990) b!5257834))

(assert (= (and b!5257835 (not c!909990)) b!5257838))

(assert (= (and d!1692676 res!2231242) b!5257840))

(assert (= (and b!5257840 c!909992) b!5257836))

(assert (= (and b!5257840 (not c!909992)) b!5257842))

(assert (= (and b!5257842 c!909991) b!5257837))

(assert (= (and b!5257842 (not c!909991)) b!5257839))

(assert (=> b!5257834 m!6299476))

(declare-fun m!6300182 () Bool)

(assert (=> b!5257842 m!6300182))

(assert (=> b!5257842 m!6300182))

(declare-fun m!6300184 () Bool)

(assert (=> b!5257842 m!6300184))

(declare-fun m!6300186 () Bool)

(assert (=> b!5257839 m!6300186))

(declare-fun m!6300188 () Bool)

(assert (=> b!5257836 m!6300188))

(declare-fun m!6300190 () Bool)

(assert (=> b!5257840 m!6300190))

(assert (=> b!5257841 m!6299392))

(declare-fun m!6300192 () Bool)

(assert (=> d!1692676 m!6300192))

(declare-fun m!6300194 () Bool)

(assert (=> d!1692676 m!6300194))

(declare-fun m!6300196 () Bool)

(assert (=> b!5257837 m!6300196))

(assert (=> b!5256983 d!1692676))

(declare-fun b!5257848 () Bool)

(declare-fun e!3270834 () Bool)

(declare-fun tp!1470002 () Bool)

(declare-fun tp!1470003 () Bool)

(assert (=> b!5257848 (= e!3270834 (and tp!1470002 tp!1470003))))

(assert (=> b!5256992 (= tp!1469962 e!3270834)))

(assert (= (and b!5256992 (is-Cons!60792 (exprs!4756 setElem!33590))) b!5257848))

(declare-fun e!3270837 () Bool)

(assert (=> b!5256990 (= tp!1469958 e!3270837)))

(declare-fun b!5257860 () Bool)

(declare-fun tp!1470015 () Bool)

(declare-fun tp!1470014 () Bool)

(assert (=> b!5257860 (= e!3270837 (and tp!1470015 tp!1470014))))

(declare-fun b!5257861 () Bool)

(declare-fun tp!1470017 () Bool)

(assert (=> b!5257861 (= e!3270837 tp!1470017)))

(declare-fun b!5257859 () Bool)

(assert (=> b!5257859 (= e!3270837 tp_is_empty!38997)))

(declare-fun b!5257862 () Bool)

(declare-fun tp!1470016 () Bool)

(declare-fun tp!1470018 () Bool)

(assert (=> b!5257862 (= e!3270837 (and tp!1470016 tp!1470018))))

(assert (= (and b!5256990 (is-ElementMatch!14872 (regOne!30256 r!7292))) b!5257859))

(assert (= (and b!5256990 (is-Concat!23717 (regOne!30256 r!7292))) b!5257860))

(assert (= (and b!5256990 (is-Star!14872 (regOne!30256 r!7292))) b!5257861))

(assert (= (and b!5256990 (is-Union!14872 (regOne!30256 r!7292))) b!5257862))

(declare-fun e!3270838 () Bool)

(assert (=> b!5256990 (= tp!1469966 e!3270838)))

(declare-fun b!5257864 () Bool)

(declare-fun tp!1470020 () Bool)

(declare-fun tp!1470019 () Bool)

(assert (=> b!5257864 (= e!3270838 (and tp!1470020 tp!1470019))))

(declare-fun b!5257865 () Bool)

(declare-fun tp!1470022 () Bool)

(assert (=> b!5257865 (= e!3270838 tp!1470022)))

(declare-fun b!5257863 () Bool)

(assert (=> b!5257863 (= e!3270838 tp_is_empty!38997)))

(declare-fun b!5257866 () Bool)

(declare-fun tp!1470021 () Bool)

(declare-fun tp!1470023 () Bool)

(assert (=> b!5257866 (= e!3270838 (and tp!1470021 tp!1470023))))

(assert (= (and b!5256990 (is-ElementMatch!14872 (regTwo!30256 r!7292))) b!5257863))

(assert (= (and b!5256990 (is-Concat!23717 (regTwo!30256 r!7292))) b!5257864))

(assert (= (and b!5256990 (is-Star!14872 (regTwo!30256 r!7292))) b!5257865))

(assert (= (and b!5256990 (is-Union!14872 (regTwo!30256 r!7292))) b!5257866))

(declare-fun b!5257875 () Bool)

(declare-fun e!3270845 () Bool)

(declare-fun tp!1470024 () Bool)

(declare-fun tp!1470025 () Bool)

(assert (=> b!5257875 (= e!3270845 (and tp!1470024 tp!1470025))))

(assert (=> b!5256963 (= tp!1469965 e!3270845)))

(assert (= (and b!5256963 (is-Cons!60792 (exprs!4756 (h!67241 zl!343)))) b!5257875))

(declare-fun e!3270846 () Bool)

(assert (=> b!5256994 (= tp!1469964 e!3270846)))

(declare-fun b!5257879 () Bool)

(declare-fun tp!1470027 () Bool)

(declare-fun tp!1470026 () Bool)

(assert (=> b!5257879 (= e!3270846 (and tp!1470027 tp!1470026))))

(declare-fun b!5257880 () Bool)

(declare-fun tp!1470029 () Bool)

(assert (=> b!5257880 (= e!3270846 tp!1470029)))

(declare-fun b!5257878 () Bool)

(assert (=> b!5257878 (= e!3270846 tp_is_empty!38997)))

(declare-fun b!5257881 () Bool)

(declare-fun tp!1470028 () Bool)

(declare-fun tp!1470030 () Bool)

(assert (=> b!5257881 (= e!3270846 (and tp!1470028 tp!1470030))))

(assert (= (and b!5256994 (is-ElementMatch!14872 (reg!15201 r!7292))) b!5257878))

(assert (= (and b!5256994 (is-Concat!23717 (reg!15201 r!7292))) b!5257879))

(assert (= (and b!5256994 (is-Star!14872 (reg!15201 r!7292))) b!5257880))

(assert (= (and b!5256994 (is-Union!14872 (reg!15201 r!7292))) b!5257881))

(declare-fun condSetEmpty!33596 () Bool)

(assert (=> setNonEmpty!33590 (= condSetEmpty!33596 (= setRest!33590 (as set.empty (Set Context!8512))))))

(declare-fun setRes!33596 () Bool)

(assert (=> setNonEmpty!33590 (= tp!1469961 setRes!33596)))

(declare-fun setIsEmpty!33596 () Bool)

(assert (=> setIsEmpty!33596 setRes!33596))

(declare-fun setNonEmpty!33596 () Bool)

(declare-fun e!3270849 () Bool)

(declare-fun tp!1470036 () Bool)

(declare-fun setElem!33596 () Context!8512)

(assert (=> setNonEmpty!33596 (= setRes!33596 (and tp!1470036 (inv!80428 setElem!33596) e!3270849))))

(declare-fun setRest!33596 () (Set Context!8512))

(assert (=> setNonEmpty!33596 (= setRest!33590 (set.union (set.insert setElem!33596 (as set.empty (Set Context!8512))) setRest!33596))))

(declare-fun b!5257886 () Bool)

(declare-fun tp!1470035 () Bool)

(assert (=> b!5257886 (= e!3270849 tp!1470035)))

(assert (= (and setNonEmpty!33590 condSetEmpty!33596) setIsEmpty!33596))

(assert (= (and setNonEmpty!33590 (not condSetEmpty!33596)) setNonEmpty!33596))

(assert (= setNonEmpty!33596 b!5257886))

(declare-fun m!6300216 () Bool)

(assert (=> setNonEmpty!33596 m!6300216))

(declare-fun e!3270850 () Bool)

(assert (=> b!5256966 (= tp!1469967 e!3270850)))

(declare-fun b!5257888 () Bool)

(declare-fun tp!1470038 () Bool)

(declare-fun tp!1470037 () Bool)

(assert (=> b!5257888 (= e!3270850 (and tp!1470038 tp!1470037))))

(declare-fun b!5257889 () Bool)

(declare-fun tp!1470040 () Bool)

(assert (=> b!5257889 (= e!3270850 tp!1470040)))

(declare-fun b!5257887 () Bool)

(assert (=> b!5257887 (= e!3270850 tp_is_empty!38997)))

(declare-fun b!5257890 () Bool)

(declare-fun tp!1470039 () Bool)

(declare-fun tp!1470041 () Bool)

(assert (=> b!5257890 (= e!3270850 (and tp!1470039 tp!1470041))))

(assert (= (and b!5256966 (is-ElementMatch!14872 (regOne!30257 r!7292))) b!5257887))

(assert (= (and b!5256966 (is-Concat!23717 (regOne!30257 r!7292))) b!5257888))

(assert (= (and b!5256966 (is-Star!14872 (regOne!30257 r!7292))) b!5257889))

(assert (= (and b!5256966 (is-Union!14872 (regOne!30257 r!7292))) b!5257890))

(declare-fun e!3270851 () Bool)

(assert (=> b!5256966 (= tp!1469959 e!3270851)))

(declare-fun b!5257892 () Bool)

(declare-fun tp!1470043 () Bool)

(declare-fun tp!1470042 () Bool)

(assert (=> b!5257892 (= e!3270851 (and tp!1470043 tp!1470042))))

(declare-fun b!5257893 () Bool)

(declare-fun tp!1470045 () Bool)

(assert (=> b!5257893 (= e!3270851 tp!1470045)))

(declare-fun b!5257891 () Bool)

(assert (=> b!5257891 (= e!3270851 tp_is_empty!38997)))

(declare-fun b!5257894 () Bool)

(declare-fun tp!1470044 () Bool)

(declare-fun tp!1470046 () Bool)

(assert (=> b!5257894 (= e!3270851 (and tp!1470044 tp!1470046))))

(assert (= (and b!5256966 (is-ElementMatch!14872 (regTwo!30257 r!7292))) b!5257891))

(assert (= (and b!5256966 (is-Concat!23717 (regTwo!30257 r!7292))) b!5257892))

(assert (= (and b!5256966 (is-Star!14872 (regTwo!30257 r!7292))) b!5257893))

(assert (= (and b!5256966 (is-Union!14872 (regTwo!30257 r!7292))) b!5257894))

(declare-fun b!5257899 () Bool)

(declare-fun e!3270854 () Bool)

(declare-fun tp!1470049 () Bool)

(assert (=> b!5257899 (= e!3270854 (and tp_is_empty!38997 tp!1470049))))

(assert (=> b!5256972 (= tp!1469963 e!3270854)))

(assert (= (and b!5256972 (is-Cons!60791 (t!374098 s!2326))) b!5257899))

(declare-fun b!5257907 () Bool)

(declare-fun e!3270860 () Bool)

(declare-fun tp!1470054 () Bool)

(assert (=> b!5257907 (= e!3270860 tp!1470054)))

(declare-fun b!5257906 () Bool)

(declare-fun tp!1470055 () Bool)

(declare-fun e!3270859 () Bool)

(assert (=> b!5257906 (= e!3270859 (and (inv!80428 (h!67241 (t!374100 zl!343))) e!3270860 tp!1470055))))

(assert (=> b!5256967 (= tp!1469960 e!3270859)))

(assert (= b!5257906 b!5257907))

(assert (= (and b!5256967 (is-Cons!60793 (t!374100 zl!343))) b!5257906))

(declare-fun m!6300218 () Bool)

(assert (=> b!5257906 m!6300218))

(declare-fun b_lambda!202931 () Bool)

(assert (= b_lambda!202929 (or b!5256976 b_lambda!202931)))

(declare-fun bs!1219263 () Bool)

(declare-fun d!1692680 () Bool)

(assert (= bs!1219263 (and d!1692680 b!5256976)))

(assert (=> bs!1219263 (= (dynLambda!24020 lambda!264928 lt!2154429) (derivationStepZipperUp!244 lt!2154429 (h!67239 s!2326)))))

(assert (=> bs!1219263 m!6299516))

(assert (=> d!1692646 d!1692680))

(declare-fun b_lambda!202933 () Bool)

(assert (= b_lambda!202927 (or b!5256976 b_lambda!202933)))

(declare-fun bs!1219264 () Bool)

(declare-fun d!1692682 () Bool)

(assert (= bs!1219264 (and d!1692682 b!5256976)))

(assert (=> bs!1219264 (= (dynLambda!24020 lambda!264928 lt!2154430) (derivationStepZipperUp!244 lt!2154430 (h!67239 s!2326)))))

(assert (=> bs!1219264 m!6299512))

(assert (=> d!1692638 d!1692682))

(declare-fun b_lambda!202935 () Bool)

(assert (= b_lambda!202925 (or b!5256976 b_lambda!202935)))

(declare-fun bs!1219265 () Bool)

(declare-fun d!1692684 () Bool)

(assert (= bs!1219265 (and d!1692684 b!5256976)))

(assert (=> bs!1219265 (= (dynLambda!24020 lambda!264928 (h!67241 zl!343)) (derivationStepZipperUp!244 (h!67241 zl!343) (h!67239 s!2326)))))

(assert (=> bs!1219265 m!6299408))

(assert (=> d!1692550 d!1692684))

(push 1)

(assert (not b!5257800))

(assert (not d!1692528))

(assert (not b!5257840))

(assert (not b!5257610))

(assert (not bm!372651))

(assert (not b!5257406))

(assert (not b!5257622))

(assert (not b!5257486))

(assert (not bs!1219265))

(assert (not bm!372673))

(assert (not b!5257842))

(assert (not b!5257250))

(assert (not b!5257540))

(assert (not setNonEmpty!33596))

(assert (not b!5257303))

(assert (not b!5257421))

(assert (not b!5257787))

(assert (not d!1692594))

(assert (not b!5257202))

(assert (not b!5257506))

(assert (not d!1692572))

(assert (not b!5257601))

(assert (not b!5257899))

(assert (not bm!372672))

(assert (not b!5257864))

(assert (not b!5257409))

(assert (not b!5257537))

(assert (not b!5257803))

(assert (not b!5257657))

(assert (not d!1692620))

(assert (not bm!372610))

(assert (not d!1692518))

(assert (not b!5257906))

(assert (not b!5257484))

(assert (not b!5257683))

(assert (not bm!372650))

(assert (not b!5257801))

(assert (not b_lambda!202931))

(assert (not b!5257650))

(assert (not d!1692640))

(assert (not d!1692672))

(assert (not b_lambda!202935))

(assert (not b!5257313))

(assert (not b!5257609))

(assert (not bm!372622))

(assert (not b!5257569))

(assert (not b!5257481))

(assert (not d!1692554))

(assert (not bm!372696))

(assert (not bm!372695))

(assert (not d!1692662))

(assert (not d!1692674))

(assert (not b!5257643))

(assert (not b!5257799))

(assert (not b!5257648))

(assert (not bm!372604))

(assert (not bm!372614))

(assert (not b!5257588))

(assert (not b!5257542))

(assert (not b!5257174))

(assert (not bm!372652))

(assert (not b!5257647))

(assert (not d!1692608))

(assert (not b!5257600))

(assert (not b!5257892))

(assert (not bm!372675))

(assert (not d!1692612))

(assert (not b!5257865))

(assert (not b!5257371))

(assert (not b!5257311))

(assert (not b!5257335))

(assert (not b!5257875))

(assert (not b!5257325))

(assert (not b!5257478))

(assert (not b!5257597))

(assert (not b!5257880))

(assert (not bm!372619))

(assert (not b!5257866))

(assert (not d!1692652))

(assert (not b!5257604))

(assert (not b!5257476))

(assert (not d!1692676))

(assert (not b!5257783))

(assert (not d!1692512))

(assert (not d!1692536))

(assert (not b!5257535))

(assert (not b!5257209))

(assert (not d!1692550))

(assert (not d!1692592))

(assert (not b!5257879))

(assert (not d!1692670))

(assert (not b!5257503))

(assert (not bm!372601))

(assert (not bm!372693))

(assert (not bm!372634))

(assert (not b!5257662))

(assert (not d!1692522))

(assert (not d!1692618))

(assert (not b!5257778))

(assert (not b!5257808))

(assert (not bm!372674))

(assert (not b!5257839))

(assert (not b!5257317))

(assert (not b!5257511))

(assert (not b!5257499))

(assert (not b!5257310))

(assert (not b!5257504))

(assert (not d!1692526))

(assert (not d!1692644))

(assert (not d!1692610))

(assert (not b!5257812))

(assert (not d!1692646))

(assert (not d!1692580))

(assert (not b!5257419))

(assert (not d!1692590))

(assert (not d!1692586))

(assert (not b!5257686))

(assert (not b!5257578))

(assert (not bm!372654))

(assert (not d!1692548))

(assert (not b!5257890))

(assert (not b!5257782))

(assert (not b!5257837))

(assert (not b!5257881))

(assert (not b!5257684))

(assert (not d!1692648))

(assert (not b!5257200))

(assert (not b!5257324))

(assert (not b!5257798))

(assert (not d!1692658))

(assert (not b!5257577))

(assert (not b!5257596))

(assert (not b!5257640))

(assert (not b!5257836))

(assert (not d!1692570))

(assert (not b!5257888))

(assert (not bm!372635))

(assert (not b!5257599))

(assert (not b!5257496))

(assert (not bm!372623))

(assert (not b!5257416))

(assert (not d!1692560))

(assert (not b!5257251))

(assert (not d!1692664))

(assert (not b!5257602))

(assert (not b!5257907))

(assert (not b!5257806))

(assert (not b_lambda!202933))

(assert (not b!5257791))

(assert (not d!1692568))

(assert (not d!1692636))

(assert (not bm!372603))

(assert (not bm!372685))

(assert (not bm!372671))

(assert (not b!5257607))

(assert (not b!5257894))

(assert (not d!1692668))

(assert (not b!5257780))

(assert (not b!5257539))

(assert (not d!1692666))

(assert (not b!5257661))

(assert (not b!5257889))

(assert (not bs!1219264))

(assert (not d!1692656))

(assert (not b!5257641))

(assert (not bm!372657))

(assert (not b!5257306))

(assert (not b!5257862))

(assert (not b!5257805))

(assert (not d!1692596))

(assert (not b!5257411))

(assert (not b!5257860))

(assert (not b!5257786))

(assert (not b!5257841))

(assert (not b!5257612))

(assert (not b!5257807))

(assert (not b!5257848))

(assert (not bm!372678))

(assert (not b!5257654))

(assert (not b!5257756))

(assert (not d!1692622))

(assert (not b!5257886))

(assert (not b!5257623))

(assert (not d!1692574))

(assert (not b!5257688))

(assert (not b!5257775))

(assert (not b!5257432))

(assert (not b!5257802))

(assert (not bm!372597))

(assert (not b!5257788))

(assert (not b!5257208))

(assert (not b!5257682))

(assert (not d!1692628))

(assert (not b!5257414))

(assert (not b!5257320))

(assert tp_is_empty!38997)

(assert (not b!5257834))

(assert (not d!1692576))

(assert (not b!5257587))

(assert (not b!5257655))

(assert (not b!5257636))

(assert (not b!5257479))

(assert (not b!5257781))

(assert (not d!1692600))

(assert (not bm!372611))

(assert (not b!5257510))

(assert (not d!1692530))

(assert (not b!5257833))

(assert (not b!5257299))

(assert (not b!5257594))

(assert (not bs!1219263))

(assert (not b!5257538))

(assert (not b!5257611))

(assert (not bm!372656))

(assert (not b!5257861))

(assert (not b!5257811))

(assert (not bm!372595))

(assert (not b!5257893))

(assert (not b!5257689))

(assert (not b!5257804))

(assert (not d!1692638))

(assert (not b!5257606))

(assert (not b!5257304))

(assert (not b!5257759))

(assert (not b!5257541))

(assert (not bm!372691))

(assert (not d!1692566))

(assert (not d!1692634))

(assert (not b!5257483))

(assert (not b!5257497))

(assert (not b!5257487))

(assert (not d!1692582))

(assert (not bm!372598))

(assert (not d!1692588))

(assert (not bm!372679))

(assert (not b!5257336))

(assert (not b!5257318))

(assert (not bm!372684))

(assert (not b!5257185))

(assert (not d!1692538))

(assert (not b!5257482))

(assert (not d!1692632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

