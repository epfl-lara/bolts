; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!556488 () Bool)

(assert start!556488)

(declare-fun b!5269153 () Bool)

(assert (=> b!5269153 true))

(assert (=> b!5269153 true))

(declare-fun lambda!265799 () Int)

(declare-fun lambda!265798 () Int)

(assert (=> b!5269153 (not (= lambda!265799 lambda!265798))))

(assert (=> b!5269153 true))

(assert (=> b!5269153 true))

(declare-fun b!5269181 () Bool)

(assert (=> b!5269181 true))

(declare-fun b!5269152 () Bool)

(declare-fun e!3277089 () Bool)

(declare-datatypes ((C!30050 0))(
  ( (C!30051 (val!24727 Int)) )
))
(declare-datatypes ((Regex!14890 0))(
  ( (ElementMatch!14890 (c!912522 C!30050)) (Concat!23735 (regOne!30292 Regex!14890) (regTwo!30292 Regex!14890)) (EmptyExpr!14890) (Star!14890 (reg!15219 Regex!14890)) (EmptyLang!14890) (Union!14890 (regOne!30293 Regex!14890) (regTwo!30293 Regex!14890)) )
))
(declare-datatypes ((List!60969 0))(
  ( (Nil!60845) (Cons!60845 (h!67293 Regex!14890) (t!374162 List!60969)) )
))
(declare-datatypes ((Context!8548 0))(
  ( (Context!8549 (exprs!4774 List!60969)) )
))
(declare-fun lt!2156453 () (Set Context!8548))

(declare-datatypes ((List!60970 0))(
  ( (Nil!60846) (Cons!60846 (h!67294 C!30050) (t!374163 List!60970)) )
))
(declare-fun s!2326 () List!60970)

(declare-fun matchZipper!1134 ((Set Context!8548) List!60970) Bool)

(assert (=> b!5269152 (= e!3277089 (matchZipper!1134 lt!2156453 (t!374163 s!2326)))))

(declare-fun setRes!33722 () Bool)

(declare-fun setElem!33722 () Context!8548)

(declare-fun setNonEmpty!33722 () Bool)

(declare-fun tp!1472803 () Bool)

(declare-fun e!3277085 () Bool)

(declare-fun inv!80473 (Context!8548) Bool)

(assert (=> setNonEmpty!33722 (= setRes!33722 (and tp!1472803 (inv!80473 setElem!33722) e!3277085))))

(declare-fun z!1189 () (Set Context!8548))

(declare-fun setRest!33722 () (Set Context!8548))

(assert (=> setNonEmpty!33722 (= z!1189 (set.union (set.insert setElem!33722 (as set.empty (Set Context!8548))) setRest!33722))))

(declare-fun e!3277087 () Bool)

(declare-fun e!3277092 () Bool)

(assert (=> b!5269153 (= e!3277087 e!3277092)))

(declare-fun res!2235442 () Bool)

(assert (=> b!5269153 (=> res!2235442 e!3277092)))

(declare-fun lt!2156462 () Bool)

(declare-fun lt!2156439 () Bool)

(assert (=> b!5269153 (= res!2235442 (or (not (= lt!2156462 lt!2156439)) (is-Nil!60846 s!2326)))))

(declare-fun Exists!2071 (Int) Bool)

(assert (=> b!5269153 (= (Exists!2071 lambda!265798) (Exists!2071 lambda!265799))))

(declare-datatypes ((Unit!153078 0))(
  ( (Unit!153079) )
))
(declare-fun lt!2156450 () Unit!153078)

(declare-fun r!7292 () Regex!14890)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!725 (Regex!14890 Regex!14890 List!60970) Unit!153078)

(assert (=> b!5269153 (= lt!2156450 (lemmaExistCutMatchRandMatchRSpecEquivalent!725 (regOne!30292 r!7292) (regTwo!30292 r!7292) s!2326))))

(assert (=> b!5269153 (= lt!2156439 (Exists!2071 lambda!265798))))

(declare-datatypes ((tuple2!64178 0))(
  ( (tuple2!64179 (_1!35392 List!60970) (_2!35392 List!60970)) )
))
(declare-datatypes ((Option!15001 0))(
  ( (None!15000) (Some!15000 (v!51029 tuple2!64178)) )
))
(declare-fun isDefined!11704 (Option!15001) Bool)

(declare-fun findConcatSeparation!1415 (Regex!14890 Regex!14890 List!60970 List!60970 List!60970) Option!15001)

(assert (=> b!5269153 (= lt!2156439 (isDefined!11704 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) Nil!60846 s!2326 s!2326)))))

(declare-fun lt!2156447 () Unit!153078)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1179 (Regex!14890 Regex!14890 List!60970) Unit!153078)

(assert (=> b!5269153 (= lt!2156447 (lemmaFindConcatSeparationEquivalentToExists!1179 (regOne!30292 r!7292) (regTwo!30292 r!7292) s!2326))))

(declare-fun b!5269154 () Bool)

(declare-fun e!3277086 () Bool)

(declare-fun e!3277093 () Bool)

(assert (=> b!5269154 (= e!3277086 e!3277093)))

(declare-fun res!2235437 () Bool)

(assert (=> b!5269154 (=> res!2235437 e!3277093)))

(declare-fun e!3277081 () Bool)

(assert (=> b!5269154 (= res!2235437 e!3277081)))

(declare-fun res!2235447 () Bool)

(assert (=> b!5269154 (=> (not res!2235447) (not e!3277081))))

(declare-fun lt!2156443 () (Set Context!8548))

(declare-fun lt!2156446 () Bool)

(assert (=> b!5269154 (= res!2235447 (not (= (matchZipper!1134 lt!2156443 (t!374163 s!2326)) lt!2156446)))))

(declare-fun lt!2156441 () (Set Context!8548))

(declare-fun e!3277094 () Bool)

(assert (=> b!5269154 (= (matchZipper!1134 lt!2156441 (t!374163 s!2326)) e!3277094)))

(declare-fun res!2235440 () Bool)

(assert (=> b!5269154 (=> res!2235440 e!3277094)))

(assert (=> b!5269154 (= res!2235440 lt!2156446)))

(declare-fun lt!2156440 () (Set Context!8548))

(assert (=> b!5269154 (= lt!2156446 (matchZipper!1134 lt!2156440 (t!374163 s!2326)))))

(declare-fun lt!2156458 () Unit!153078)

(declare-fun lt!2156461 () (Set Context!8548))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!127 ((Set Context!8548) (Set Context!8548) List!60970) Unit!153078)

(assert (=> b!5269154 (= lt!2156458 (lemmaZipperConcatMatchesSameAsBothZippers!127 lt!2156440 lt!2156461 (t!374163 s!2326)))))

(declare-fun b!5269155 () Bool)

(declare-fun res!2235438 () Bool)

(declare-fun e!3277079 () Bool)

(assert (=> b!5269155 (=> (not res!2235438) (not e!3277079))))

(declare-datatypes ((List!60971 0))(
  ( (Nil!60847) (Cons!60847 (h!67295 Context!8548) (t!374164 List!60971)) )
))
(declare-fun zl!343 () List!60971)

(declare-fun unfocusZipper!632 (List!60971) Regex!14890)

(assert (=> b!5269155 (= res!2235438 (= r!7292 (unfocusZipper!632 zl!343)))))

(declare-fun b!5269156 () Bool)

(declare-fun e!3277082 () Bool)

(declare-fun tp!1472805 () Bool)

(assert (=> b!5269156 (= e!3277082 tp!1472805)))

(declare-fun b!5269157 () Bool)

(declare-fun e!3277080 () Bool)

(declare-fun tp!1472801 () Bool)

(declare-fun tp!1472799 () Bool)

(assert (=> b!5269157 (= e!3277080 (and tp!1472801 tp!1472799))))

(declare-fun b!5269158 () Bool)

(declare-fun res!2235454 () Bool)

(assert (=> b!5269158 (=> res!2235454 e!3277087)))

(assert (=> b!5269158 (= res!2235454 (or (is-EmptyExpr!14890 r!7292) (is-EmptyLang!14890 r!7292) (is-ElementMatch!14890 r!7292) (is-Union!14890 r!7292) (not (is-Concat!23735 r!7292))))))

(declare-fun b!5269159 () Bool)

(declare-fun res!2235443 () Bool)

(assert (=> b!5269159 (=> res!2235443 e!3277087)))

(declare-fun isEmpty!32793 (List!60971) Bool)

(assert (=> b!5269159 (= res!2235443 (not (isEmpty!32793 (t!374164 zl!343))))))

(declare-fun b!5269160 () Bool)

(declare-fun res!2235445 () Bool)

(assert (=> b!5269160 (=> res!2235445 e!3277087)))

(assert (=> b!5269160 (= res!2235445 (not (is-Cons!60845 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269161 () Bool)

(declare-fun tp!1472798 () Bool)

(assert (=> b!5269161 (= e!3277085 tp!1472798)))

(declare-fun b!5269162 () Bool)

(declare-fun e!3277091 () Bool)

(declare-fun validRegex!6626 (Regex!14890) Bool)

(assert (=> b!5269162 (= e!3277091 (validRegex!6626 (regTwo!30292 (regOne!30292 r!7292))))))

(declare-fun b!5269163 () Bool)

(declare-fun e!3277095 () Bool)

(assert (=> b!5269163 (= e!3277093 e!3277095)))

(declare-fun res!2235446 () Bool)

(assert (=> b!5269163 (=> res!2235446 e!3277095)))

(declare-fun lt!2156459 () (Set Context!8548))

(declare-fun lt!2156445 () Context!8548)

(declare-fun derivationStepZipper!1133 ((Set Context!8548) C!30050) (Set Context!8548))

(declare-fun derivationStepZipperUp!262 (Context!8548 C!30050) (Set Context!8548))

(assert (=> b!5269163 (= res!2235446 (not (= (derivationStepZipper!1133 lt!2156459 (h!67294 s!2326)) (set.union lt!2156440 (derivationStepZipperUp!262 lt!2156445 (h!67294 s!2326))))))))

(declare-fun lambda!265800 () Int)

(declare-fun lt!2156457 () Context!8548)

(declare-fun flatMap!617 ((Set Context!8548) Int) (Set Context!8548))

(assert (=> b!5269163 (= (flatMap!617 lt!2156459 lambda!265800) (derivationStepZipperUp!262 lt!2156457 (h!67294 s!2326)))))

(declare-fun lt!2156448 () Unit!153078)

(declare-fun lemmaFlatMapOnSingletonSet!149 ((Set Context!8548) Context!8548 Int) Unit!153078)

(assert (=> b!5269163 (= lt!2156448 (lemmaFlatMapOnSingletonSet!149 lt!2156459 lt!2156457 lambda!265800))))

(declare-fun lt!2156454 () (Set Context!8548))

(assert (=> b!5269163 (= lt!2156454 (derivationStepZipperUp!262 lt!2156457 (h!67294 s!2326)))))

(declare-fun lt!2156463 () (Set Context!8548))

(assert (=> b!5269163 (= lt!2156463 (set.insert lt!2156445 (as set.empty (Set Context!8548))))))

(assert (=> b!5269163 (= lt!2156459 (set.insert lt!2156457 (as set.empty (Set Context!8548))))))

(declare-fun lt!2156449 () List!60969)

(assert (=> b!5269163 (= lt!2156457 (Context!8549 (Cons!60845 (regOne!30292 (regOne!30292 r!7292)) lt!2156449)))))

(declare-fun b!5269164 () Bool)

(declare-fun e!3277090 () Bool)

(declare-fun tp!1472800 () Bool)

(assert (=> b!5269164 (= e!3277090 (and (inv!80473 (h!67295 zl!343)) e!3277082 tp!1472800))))

(declare-fun b!5269165 () Bool)

(declare-fun e!3277088 () Unit!153078)

(declare-fun Unit!153080 () Unit!153078)

(assert (=> b!5269165 (= e!3277088 Unit!153080)))

(declare-fun b!5269166 () Bool)

(assert (=> b!5269166 (= e!3277081 (not (matchZipper!1134 lt!2156461 (t!374163 s!2326))))))

(declare-fun res!2235436 () Bool)

(assert (=> start!556488 (=> (not res!2235436) (not e!3277079))))

(assert (=> start!556488 (= res!2235436 (validRegex!6626 r!7292))))

(assert (=> start!556488 e!3277079))

(assert (=> start!556488 e!3277080))

(declare-fun condSetEmpty!33722 () Bool)

(assert (=> start!556488 (= condSetEmpty!33722 (= z!1189 (as set.empty (Set Context!8548))))))

(assert (=> start!556488 setRes!33722))

(assert (=> start!556488 e!3277090))

(declare-fun e!3277083 () Bool)

(assert (=> start!556488 e!3277083))

(declare-fun setIsEmpty!33722 () Bool)

(assert (=> setIsEmpty!33722 setRes!33722))

(declare-fun b!5269167 () Bool)

(declare-fun res!2235448 () Bool)

(assert (=> b!5269167 (=> (not res!2235448) (not e!3277079))))

(declare-fun toList!8674 ((Set Context!8548)) List!60971)

(assert (=> b!5269167 (= res!2235448 (= (toList!8674 z!1189) zl!343))))

(declare-fun b!5269168 () Bool)

(declare-fun res!2235452 () Bool)

(assert (=> b!5269168 (=> res!2235452 e!3277087)))

(declare-fun generalisedUnion!819 (List!60969) Regex!14890)

(declare-fun unfocusZipperList!332 (List!60971) List!60969)

(assert (=> b!5269168 (= res!2235452 (not (= r!7292 (generalisedUnion!819 (unfocusZipperList!332 zl!343)))))))

(declare-fun b!5269169 () Bool)

(declare-fun tp_is_empty!39033 () Bool)

(assert (=> b!5269169 (= e!3277080 tp_is_empty!39033)))

(declare-fun b!5269170 () Bool)

(declare-fun res!2235455 () Bool)

(declare-fun e!3277084 () Bool)

(assert (=> b!5269170 (=> res!2235455 e!3277084)))

(declare-fun nullable!5059 (Regex!14890) Bool)

(assert (=> b!5269170 (= res!2235455 (not (nullable!5059 (regOne!30292 (regOne!30292 r!7292)))))))

(declare-fun b!5269171 () Bool)

(declare-fun Unit!153081 () Unit!153078)

(assert (=> b!5269171 (= e!3277088 Unit!153081)))

(declare-fun lt!2156442 () Unit!153078)

(assert (=> b!5269171 (= lt!2156442 (lemmaZipperConcatMatchesSameAsBothZippers!127 lt!2156443 lt!2156453 (t!374163 s!2326)))))

(declare-fun res!2235441 () Bool)

(assert (=> b!5269171 (= res!2235441 (matchZipper!1134 lt!2156443 (t!374163 s!2326)))))

(assert (=> b!5269171 (=> res!2235441 e!3277089)))

(assert (=> b!5269171 (= (matchZipper!1134 (set.union lt!2156443 lt!2156453) (t!374163 s!2326)) e!3277089)))

(declare-fun b!5269172 () Bool)

(declare-fun res!2235449 () Bool)

(assert (=> b!5269172 (=> res!2235449 e!3277087)))

(declare-fun generalisedConcat!559 (List!60969) Regex!14890)

(assert (=> b!5269172 (= res!2235449 (not (= r!7292 (generalisedConcat!559 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun b!5269173 () Bool)

(declare-fun tp!1472807 () Bool)

(declare-fun tp!1472802 () Bool)

(assert (=> b!5269173 (= e!3277080 (and tp!1472807 tp!1472802))))

(declare-fun b!5269174 () Bool)

(assert (=> b!5269174 (= e!3277094 (matchZipper!1134 lt!2156461 (t!374163 s!2326)))))

(declare-fun b!5269175 () Bool)

(declare-fun res!2235444 () Bool)

(assert (=> b!5269175 (=> res!2235444 e!3277092)))

(declare-fun isEmpty!32794 (List!60969) Bool)

(assert (=> b!5269175 (= res!2235444 (isEmpty!32794 (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269176 () Bool)

(declare-fun tp!1472806 () Bool)

(assert (=> b!5269176 (= e!3277080 tp!1472806)))

(declare-fun b!5269177 () Bool)

(assert (=> b!5269177 (= e!3277095 e!3277091)))

(declare-fun res!2235453 () Bool)

(assert (=> b!5269177 (=> res!2235453 e!3277091)))

(assert (=> b!5269177 (= res!2235453 (not (nullable!5059 (regTwo!30292 (regOne!30292 r!7292)))))))

(assert (=> b!5269177 (= (flatMap!617 lt!2156463 lambda!265800) (derivationStepZipperUp!262 lt!2156445 (h!67294 s!2326)))))

(declare-fun lt!2156455 () Unit!153078)

(assert (=> b!5269177 (= lt!2156455 (lemmaFlatMapOnSingletonSet!149 lt!2156463 lt!2156445 lambda!265800))))

(declare-fun b!5269178 () Bool)

(assert (=> b!5269178 (= e!3277084 e!3277086)))

(declare-fun res!2235439 () Bool)

(assert (=> b!5269178 (=> res!2235439 e!3277086)))

(assert (=> b!5269178 (= res!2235439 (not (= lt!2156443 lt!2156441)))))

(assert (=> b!5269178 (= lt!2156441 (set.union lt!2156440 lt!2156461))))

(declare-fun lt!2156452 () Context!8548)

(declare-fun derivationStepZipperDown!338 (Regex!14890 Context!8548 C!30050) (Set Context!8548))

(assert (=> b!5269178 (= lt!2156461 (derivationStepZipperDown!338 (regTwo!30292 (regOne!30292 r!7292)) lt!2156452 (h!67294 s!2326)))))

(assert (=> b!5269178 (= lt!2156440 (derivationStepZipperDown!338 (regOne!30292 (regOne!30292 r!7292)) lt!2156445 (h!67294 s!2326)))))

(assert (=> b!5269178 (= lt!2156445 (Context!8549 lt!2156449))))

(assert (=> b!5269178 (= lt!2156449 (Cons!60845 (regTwo!30292 (regOne!30292 r!7292)) (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269179 () Bool)

(declare-fun tp!1472804 () Bool)

(assert (=> b!5269179 (= e!3277083 (and tp_is_empty!39033 tp!1472804))))

(declare-fun b!5269180 () Bool)

(assert (=> b!5269180 (= e!3277079 (not e!3277087))))

(declare-fun res!2235451 () Bool)

(assert (=> b!5269180 (=> res!2235451 e!3277087)))

(assert (=> b!5269180 (= res!2235451 (not (is-Cons!60847 zl!343)))))

(declare-fun matchRSpec!1993 (Regex!14890 List!60970) Bool)

(assert (=> b!5269180 (= lt!2156462 (matchRSpec!1993 r!7292 s!2326))))

(declare-fun matchR!7075 (Regex!14890 List!60970) Bool)

(assert (=> b!5269180 (= lt!2156462 (matchR!7075 r!7292 s!2326))))

(declare-fun lt!2156444 () Unit!153078)

(declare-fun mainMatchTheorem!1993 (Regex!14890 List!60970) Unit!153078)

(assert (=> b!5269180 (= lt!2156444 (mainMatchTheorem!1993 r!7292 s!2326))))

(assert (=> b!5269181 (= e!3277092 e!3277084)))

(declare-fun res!2235450 () Bool)

(assert (=> b!5269181 (=> res!2235450 e!3277084)))

(assert (=> b!5269181 (= res!2235450 (or (and (is-ElementMatch!14890 (regOne!30292 r!7292)) (= (c!912522 (regOne!30292 r!7292)) (h!67294 s!2326))) (is-Union!14890 (regOne!30292 r!7292)) (not (is-Concat!23735 (regOne!30292 r!7292)))))))

(declare-fun lt!2156456 () Unit!153078)

(assert (=> b!5269181 (= lt!2156456 e!3277088)))

(declare-fun c!912521 () Bool)

(assert (=> b!5269181 (= c!912521 (nullable!5059 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(assert (=> b!5269181 (= (flatMap!617 z!1189 lambda!265800) (derivationStepZipperUp!262 (h!67295 zl!343) (h!67294 s!2326)))))

(declare-fun lt!2156451 () Unit!153078)

(assert (=> b!5269181 (= lt!2156451 (lemmaFlatMapOnSingletonSet!149 z!1189 (h!67295 zl!343) lambda!265800))))

(assert (=> b!5269181 (= lt!2156453 (derivationStepZipperUp!262 lt!2156452 (h!67294 s!2326)))))

(assert (=> b!5269181 (= lt!2156443 (derivationStepZipperDown!338 (h!67293 (exprs!4774 (h!67295 zl!343))) lt!2156452 (h!67294 s!2326)))))

(assert (=> b!5269181 (= lt!2156452 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun lt!2156460 () (Set Context!8548))

(assert (=> b!5269181 (= lt!2156460 (derivationStepZipperUp!262 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))) (h!67294 s!2326)))))

(assert (= (and start!556488 res!2235436) b!5269167))

(assert (= (and b!5269167 res!2235448) b!5269155))

(assert (= (and b!5269155 res!2235438) b!5269180))

(assert (= (and b!5269180 (not res!2235451)) b!5269159))

(assert (= (and b!5269159 (not res!2235443)) b!5269172))

(assert (= (and b!5269172 (not res!2235449)) b!5269160))

(assert (= (and b!5269160 (not res!2235445)) b!5269168))

(assert (= (and b!5269168 (not res!2235452)) b!5269158))

(assert (= (and b!5269158 (not res!2235454)) b!5269153))

(assert (= (and b!5269153 (not res!2235442)) b!5269175))

(assert (= (and b!5269175 (not res!2235444)) b!5269181))

(assert (= (and b!5269181 c!912521) b!5269171))

(assert (= (and b!5269181 (not c!912521)) b!5269165))

(assert (= (and b!5269171 (not res!2235441)) b!5269152))

(assert (= (and b!5269181 (not res!2235450)) b!5269170))

(assert (= (and b!5269170 (not res!2235455)) b!5269178))

(assert (= (and b!5269178 (not res!2235439)) b!5269154))

(assert (= (and b!5269154 (not res!2235440)) b!5269174))

(assert (= (and b!5269154 res!2235447) b!5269166))

(assert (= (and b!5269154 (not res!2235437)) b!5269163))

(assert (= (and b!5269163 (not res!2235446)) b!5269177))

(assert (= (and b!5269177 (not res!2235453)) b!5269162))

(assert (= (and start!556488 (is-ElementMatch!14890 r!7292)) b!5269169))

(assert (= (and start!556488 (is-Concat!23735 r!7292)) b!5269173))

(assert (= (and start!556488 (is-Star!14890 r!7292)) b!5269176))

(assert (= (and start!556488 (is-Union!14890 r!7292)) b!5269157))

(assert (= (and start!556488 condSetEmpty!33722) setIsEmpty!33722))

(assert (= (and start!556488 (not condSetEmpty!33722)) setNonEmpty!33722))

(assert (= setNonEmpty!33722 b!5269161))

(assert (= b!5269164 b!5269156))

(assert (= (and start!556488 (is-Cons!60847 zl!343)) b!5269164))

(assert (= (and start!556488 (is-Cons!60846 s!2326)) b!5269179))

(declare-fun m!6308644 () Bool)

(assert (=> b!5269153 m!6308644))

(declare-fun m!6308646 () Bool)

(assert (=> b!5269153 m!6308646))

(declare-fun m!6308648 () Bool)

(assert (=> b!5269153 m!6308648))

(declare-fun m!6308650 () Bool)

(assert (=> b!5269153 m!6308650))

(assert (=> b!5269153 m!6308646))

(declare-fun m!6308652 () Bool)

(assert (=> b!5269153 m!6308652))

(declare-fun m!6308654 () Bool)

(assert (=> b!5269153 m!6308654))

(assert (=> b!5269153 m!6308644))

(declare-fun m!6308656 () Bool)

(assert (=> b!5269174 m!6308656))

(declare-fun m!6308658 () Bool)

(assert (=> b!5269152 m!6308658))

(declare-fun m!6308660 () Bool)

(assert (=> b!5269162 m!6308660))

(declare-fun m!6308662 () Bool)

(assert (=> b!5269177 m!6308662))

(declare-fun m!6308664 () Bool)

(assert (=> b!5269177 m!6308664))

(declare-fun m!6308666 () Bool)

(assert (=> b!5269177 m!6308666))

(declare-fun m!6308668 () Bool)

(assert (=> b!5269177 m!6308668))

(declare-fun m!6308670 () Bool)

(assert (=> b!5269163 m!6308670))

(declare-fun m!6308672 () Bool)

(assert (=> b!5269163 m!6308672))

(declare-fun m!6308674 () Bool)

(assert (=> b!5269163 m!6308674))

(declare-fun m!6308676 () Bool)

(assert (=> b!5269163 m!6308676))

(assert (=> b!5269163 m!6308666))

(declare-fun m!6308678 () Bool)

(assert (=> b!5269163 m!6308678))

(declare-fun m!6308680 () Bool)

(assert (=> b!5269163 m!6308680))

(declare-fun m!6308682 () Bool)

(assert (=> b!5269159 m!6308682))

(declare-fun m!6308684 () Bool)

(assert (=> b!5269171 m!6308684))

(declare-fun m!6308686 () Bool)

(assert (=> b!5269171 m!6308686))

(declare-fun m!6308688 () Bool)

(assert (=> b!5269171 m!6308688))

(declare-fun m!6308690 () Bool)

(assert (=> b!5269172 m!6308690))

(declare-fun m!6308692 () Bool)

(assert (=> b!5269170 m!6308692))

(declare-fun m!6308694 () Bool)

(assert (=> b!5269181 m!6308694))

(declare-fun m!6308696 () Bool)

(assert (=> b!5269181 m!6308696))

(declare-fun m!6308698 () Bool)

(assert (=> b!5269181 m!6308698))

(declare-fun m!6308700 () Bool)

(assert (=> b!5269181 m!6308700))

(declare-fun m!6308702 () Bool)

(assert (=> b!5269181 m!6308702))

(declare-fun m!6308704 () Bool)

(assert (=> b!5269181 m!6308704))

(declare-fun m!6308706 () Bool)

(assert (=> b!5269181 m!6308706))

(declare-fun m!6308708 () Bool)

(assert (=> setNonEmpty!33722 m!6308708))

(assert (=> b!5269154 m!6308686))

(declare-fun m!6308710 () Bool)

(assert (=> b!5269154 m!6308710))

(declare-fun m!6308712 () Bool)

(assert (=> b!5269154 m!6308712))

(declare-fun m!6308714 () Bool)

(assert (=> b!5269154 m!6308714))

(declare-fun m!6308716 () Bool)

(assert (=> b!5269164 m!6308716))

(declare-fun m!6308718 () Bool)

(assert (=> b!5269175 m!6308718))

(assert (=> b!5269166 m!6308656))

(declare-fun m!6308720 () Bool)

(assert (=> start!556488 m!6308720))

(declare-fun m!6308722 () Bool)

(assert (=> b!5269168 m!6308722))

(assert (=> b!5269168 m!6308722))

(declare-fun m!6308724 () Bool)

(assert (=> b!5269168 m!6308724))

(declare-fun m!6308726 () Bool)

(assert (=> b!5269155 m!6308726))

(declare-fun m!6308728 () Bool)

(assert (=> b!5269178 m!6308728))

(declare-fun m!6308730 () Bool)

(assert (=> b!5269178 m!6308730))

(declare-fun m!6308732 () Bool)

(assert (=> b!5269167 m!6308732))

(declare-fun m!6308734 () Bool)

(assert (=> b!5269180 m!6308734))

(declare-fun m!6308736 () Bool)

(assert (=> b!5269180 m!6308736))

(declare-fun m!6308738 () Bool)

(assert (=> b!5269180 m!6308738))

(push 1)

(assert (not b!5269172))

(assert (not b!5269154))

(assert (not b!5269164))

(assert (not b!5269170))

(assert (not b!5269167))

(assert (not b!5269155))

(assert (not b!5269173))

(assert tp_is_empty!39033)

(assert (not b!5269174))

(assert (not b!5269153))

(assert (not b!5269166))

(assert (not b!5269175))

(assert (not b!5269162))

(assert (not b!5269156))

(assert (not b!5269179))

(assert (not b!5269163))

(assert (not b!5269180))

(assert (not start!556488))

(assert (not b!5269168))

(assert (not b!5269177))

(assert (not b!5269152))

(assert (not b!5269159))

(assert (not b!5269178))

(assert (not b!5269161))

(assert (not b!5269171))

(assert (not b!5269176))

(assert (not b!5269181))

(assert (not setNonEmpty!33722))

(assert (not b!5269157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5269314 () Bool)

(declare-fun e!3277173 () Bool)

(declare-fun call!374266 () Bool)

(assert (=> b!5269314 (= e!3277173 call!374266)))

(declare-fun b!5269315 () Bool)

(declare-fun e!3277170 () Bool)

(declare-fun e!3277172 () Bool)

(assert (=> b!5269315 (= e!3277170 e!3277172)))

(declare-fun c!912538 () Bool)

(assert (=> b!5269315 (= c!912538 (is-Star!14890 (regTwo!30292 (regOne!30292 r!7292))))))

(declare-fun b!5269316 () Bool)

(declare-fun res!2235539 () Bool)

(declare-fun e!3277169 () Bool)

(assert (=> b!5269316 (=> res!2235539 e!3277169)))

(assert (=> b!5269316 (= res!2235539 (not (is-Concat!23735 (regTwo!30292 (regOne!30292 r!7292)))))))

(declare-fun e!3277168 () Bool)

(assert (=> b!5269316 (= e!3277168 e!3277169)))

(declare-fun b!5269317 () Bool)

(declare-fun e!3277167 () Bool)

(assert (=> b!5269317 (= e!3277167 call!374266)))

(declare-fun bm!374260 () Bool)

(declare-fun call!374265 () Bool)

(declare-fun call!374267 () Bool)

(assert (=> bm!374260 (= call!374265 call!374267)))

(declare-fun b!5269318 () Bool)

(declare-fun e!3277171 () Bool)

(assert (=> b!5269318 (= e!3277171 call!374267)))

(declare-fun b!5269319 () Bool)

(assert (=> b!5269319 (= e!3277169 e!3277173)))

(declare-fun res!2235538 () Bool)

(assert (=> b!5269319 (=> (not res!2235538) (not e!3277173))))

(assert (=> b!5269319 (= res!2235538 call!374265)))

(declare-fun b!5269320 () Bool)

(assert (=> b!5269320 (= e!3277172 e!3277171)))

(declare-fun res!2235542 () Bool)

(assert (=> b!5269320 (= res!2235542 (not (nullable!5059 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))))

(assert (=> b!5269320 (=> (not res!2235542) (not e!3277171))))

(declare-fun bm!374262 () Bool)

(declare-fun c!912539 () Bool)

(assert (=> bm!374262 (= call!374266 (validRegex!6626 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(declare-fun bm!374261 () Bool)

(assert (=> bm!374261 (= call!374267 (validRegex!6626 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))

(declare-fun d!1695693 () Bool)

(declare-fun res!2235541 () Bool)

(assert (=> d!1695693 (=> res!2235541 e!3277170)))

(assert (=> d!1695693 (= res!2235541 (is-ElementMatch!14890 (regTwo!30292 (regOne!30292 r!7292))))))

(assert (=> d!1695693 (= (validRegex!6626 (regTwo!30292 (regOne!30292 r!7292))) e!3277170)))

(declare-fun b!5269321 () Bool)

(declare-fun res!2235540 () Bool)

(assert (=> b!5269321 (=> (not res!2235540) (not e!3277167))))

(assert (=> b!5269321 (= res!2235540 call!374265)))

(assert (=> b!5269321 (= e!3277168 e!3277167)))

(declare-fun b!5269322 () Bool)

(assert (=> b!5269322 (= e!3277172 e!3277168)))

(assert (=> b!5269322 (= c!912539 (is-Union!14890 (regTwo!30292 (regOne!30292 r!7292))))))

(assert (= (and d!1695693 (not res!2235541)) b!5269315))

(assert (= (and b!5269315 c!912538) b!5269320))

(assert (= (and b!5269315 (not c!912538)) b!5269322))

(assert (= (and b!5269320 res!2235542) b!5269318))

(assert (= (and b!5269322 c!912539) b!5269321))

(assert (= (and b!5269322 (not c!912539)) b!5269316))

(assert (= (and b!5269321 res!2235540) b!5269317))

(assert (= (and b!5269316 (not res!2235539)) b!5269319))

(assert (= (and b!5269319 res!2235538) b!5269314))

(assert (= (or b!5269317 b!5269314) bm!374262))

(assert (= (or b!5269321 b!5269319) bm!374260))

(assert (= (or b!5269318 bm!374260) bm!374261))

(declare-fun m!6308836 () Bool)

(assert (=> b!5269320 m!6308836))

(declare-fun m!6308838 () Bool)

(assert (=> bm!374262 m!6308838))

(declare-fun m!6308840 () Bool)

(assert (=> bm!374261 m!6308840))

(assert (=> b!5269162 d!1695693))

(declare-fun b!5269343 () Bool)

(declare-fun e!3277188 () Regex!14890)

(declare-fun e!3277187 () Regex!14890)

(assert (=> b!5269343 (= e!3277188 e!3277187)))

(declare-fun c!912551 () Bool)

(assert (=> b!5269343 (= c!912551 (is-Cons!60845 (exprs!4774 (h!67295 zl!343))))))

(declare-fun b!5269344 () Bool)

(assert (=> b!5269344 (= e!3277187 (Concat!23735 (h!67293 (exprs!4774 (h!67295 zl!343))) (generalisedConcat!559 (t!374162 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun b!5269345 () Bool)

(declare-fun e!3277189 () Bool)

(declare-fun lt!2156541 () Regex!14890)

(declare-fun head!11296 (List!60969) Regex!14890)

(assert (=> b!5269345 (= e!3277189 (= lt!2156541 (head!11296 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269346 () Bool)

(declare-fun e!3277190 () Bool)

(declare-fun e!3277191 () Bool)

(assert (=> b!5269346 (= e!3277190 e!3277191)))

(declare-fun c!912550 () Bool)

(assert (=> b!5269346 (= c!912550 (isEmpty!32794 (exprs!4774 (h!67295 zl!343))))))

(declare-fun b!5269347 () Bool)

(assert (=> b!5269347 (= e!3277191 e!3277189)))

(declare-fun c!912548 () Bool)

(declare-fun tail!10393 (List!60969) List!60969)

(assert (=> b!5269347 (= c!912548 (isEmpty!32794 (tail!10393 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269348 () Bool)

(declare-fun e!3277186 () Bool)

(assert (=> b!5269348 (= e!3277186 (isEmpty!32794 (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269349 () Bool)

(assert (=> b!5269349 (= e!3277188 (h!67293 (exprs!4774 (h!67295 zl!343))))))

(declare-fun b!5269350 () Bool)

(declare-fun isConcat!347 (Regex!14890) Bool)

(assert (=> b!5269350 (= e!3277189 (isConcat!347 lt!2156541))))

(declare-fun d!1695695 () Bool)

(assert (=> d!1695695 e!3277190))

(declare-fun res!2235548 () Bool)

(assert (=> d!1695695 (=> (not res!2235548) (not e!3277190))))

(assert (=> d!1695695 (= res!2235548 (validRegex!6626 lt!2156541))))

(assert (=> d!1695695 (= lt!2156541 e!3277188)))

(declare-fun c!912549 () Bool)

(assert (=> d!1695695 (= c!912549 e!3277186)))

(declare-fun res!2235547 () Bool)

(assert (=> d!1695695 (=> (not res!2235547) (not e!3277186))))

(assert (=> d!1695695 (= res!2235547 (is-Cons!60845 (exprs!4774 (h!67295 zl!343))))))

(declare-fun lambda!265818 () Int)

(declare-fun forall!14298 (List!60969 Int) Bool)

(assert (=> d!1695695 (forall!14298 (exprs!4774 (h!67295 zl!343)) lambda!265818)))

(assert (=> d!1695695 (= (generalisedConcat!559 (exprs!4774 (h!67295 zl!343))) lt!2156541)))

(declare-fun b!5269351 () Bool)

(declare-fun isEmptyExpr!824 (Regex!14890) Bool)

(assert (=> b!5269351 (= e!3277191 (isEmptyExpr!824 lt!2156541))))

(declare-fun b!5269352 () Bool)

(assert (=> b!5269352 (= e!3277187 EmptyExpr!14890)))

(assert (= (and d!1695695 res!2235547) b!5269348))

(assert (= (and d!1695695 c!912549) b!5269349))

(assert (= (and d!1695695 (not c!912549)) b!5269343))

(assert (= (and b!5269343 c!912551) b!5269344))

(assert (= (and b!5269343 (not c!912551)) b!5269352))

(assert (= (and d!1695695 res!2235548) b!5269346))

(assert (= (and b!5269346 c!912550) b!5269351))

(assert (= (and b!5269346 (not c!912550)) b!5269347))

(assert (= (and b!5269347 c!912548) b!5269345))

(assert (= (and b!5269347 (not c!912548)) b!5269350))

(declare-fun m!6308842 () Bool)

(assert (=> b!5269346 m!6308842))

(declare-fun m!6308844 () Bool)

(assert (=> b!5269351 m!6308844))

(declare-fun m!6308846 () Bool)

(assert (=> b!5269345 m!6308846))

(assert (=> b!5269348 m!6308718))

(declare-fun m!6308848 () Bool)

(assert (=> d!1695695 m!6308848))

(declare-fun m!6308850 () Bool)

(assert (=> d!1695695 m!6308850))

(declare-fun m!6308852 () Bool)

(assert (=> b!5269344 m!6308852))

(declare-fun m!6308854 () Bool)

(assert (=> b!5269350 m!6308854))

(declare-fun m!6308856 () Bool)

(assert (=> b!5269347 m!6308856))

(assert (=> b!5269347 m!6308856))

(declare-fun m!6308858 () Bool)

(assert (=> b!5269347 m!6308858))

(assert (=> b!5269172 d!1695695))

(declare-fun bs!1221007 () Bool)

(declare-fun d!1695697 () Bool)

(assert (= bs!1221007 (and d!1695697 d!1695695)))

(declare-fun lambda!265821 () Int)

(assert (=> bs!1221007 (= lambda!265821 lambda!265818)))

(assert (=> d!1695697 (= (inv!80473 setElem!33722) (forall!14298 (exprs!4774 setElem!33722) lambda!265821))))

(declare-fun bs!1221008 () Bool)

(assert (= bs!1221008 d!1695697))

(declare-fun m!6308860 () Bool)

(assert (=> bs!1221008 m!6308860))

(assert (=> setNonEmpty!33722 d!1695697))

(declare-fun b!5269353 () Bool)

(declare-fun e!3277198 () Bool)

(declare-fun call!374269 () Bool)

(assert (=> b!5269353 (= e!3277198 call!374269)))

(declare-fun b!5269354 () Bool)

(declare-fun e!3277195 () Bool)

(declare-fun e!3277197 () Bool)

(assert (=> b!5269354 (= e!3277195 e!3277197)))

(declare-fun c!912552 () Bool)

(assert (=> b!5269354 (= c!912552 (is-Star!14890 r!7292))))

(declare-fun b!5269355 () Bool)

(declare-fun res!2235550 () Bool)

(declare-fun e!3277194 () Bool)

(assert (=> b!5269355 (=> res!2235550 e!3277194)))

(assert (=> b!5269355 (= res!2235550 (not (is-Concat!23735 r!7292)))))

(declare-fun e!3277193 () Bool)

(assert (=> b!5269355 (= e!3277193 e!3277194)))

(declare-fun b!5269356 () Bool)

(declare-fun e!3277192 () Bool)

(assert (=> b!5269356 (= e!3277192 call!374269)))

(declare-fun bm!374263 () Bool)

(declare-fun call!374268 () Bool)

(declare-fun call!374270 () Bool)

(assert (=> bm!374263 (= call!374268 call!374270)))

(declare-fun b!5269357 () Bool)

(declare-fun e!3277196 () Bool)

(assert (=> b!5269357 (= e!3277196 call!374270)))

(declare-fun b!5269358 () Bool)

(assert (=> b!5269358 (= e!3277194 e!3277198)))

(declare-fun res!2235549 () Bool)

(assert (=> b!5269358 (=> (not res!2235549) (not e!3277198))))

(assert (=> b!5269358 (= res!2235549 call!374268)))

(declare-fun b!5269359 () Bool)

(assert (=> b!5269359 (= e!3277197 e!3277196)))

(declare-fun res!2235553 () Bool)

(assert (=> b!5269359 (= res!2235553 (not (nullable!5059 (reg!15219 r!7292))))))

(assert (=> b!5269359 (=> (not res!2235553) (not e!3277196))))

(declare-fun bm!374265 () Bool)

(declare-fun c!912553 () Bool)

(assert (=> bm!374265 (= call!374269 (validRegex!6626 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))))))

(declare-fun bm!374264 () Bool)

(assert (=> bm!374264 (= call!374270 (validRegex!6626 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))))))

(declare-fun d!1695699 () Bool)

(declare-fun res!2235552 () Bool)

(assert (=> d!1695699 (=> res!2235552 e!3277195)))

(assert (=> d!1695699 (= res!2235552 (is-ElementMatch!14890 r!7292))))

(assert (=> d!1695699 (= (validRegex!6626 r!7292) e!3277195)))

(declare-fun b!5269360 () Bool)

(declare-fun res!2235551 () Bool)

(assert (=> b!5269360 (=> (not res!2235551) (not e!3277192))))

(assert (=> b!5269360 (= res!2235551 call!374268)))

(assert (=> b!5269360 (= e!3277193 e!3277192)))

(declare-fun b!5269361 () Bool)

(assert (=> b!5269361 (= e!3277197 e!3277193)))

(assert (=> b!5269361 (= c!912553 (is-Union!14890 r!7292))))

(assert (= (and d!1695699 (not res!2235552)) b!5269354))

(assert (= (and b!5269354 c!912552) b!5269359))

(assert (= (and b!5269354 (not c!912552)) b!5269361))

(assert (= (and b!5269359 res!2235553) b!5269357))

(assert (= (and b!5269361 c!912553) b!5269360))

(assert (= (and b!5269361 (not c!912553)) b!5269355))

(assert (= (and b!5269360 res!2235551) b!5269356))

(assert (= (and b!5269355 (not res!2235550)) b!5269358))

(assert (= (and b!5269358 res!2235549) b!5269353))

(assert (= (or b!5269356 b!5269353) bm!374265))

(assert (= (or b!5269360 b!5269358) bm!374263))

(assert (= (or b!5269357 bm!374263) bm!374264))

(declare-fun m!6308862 () Bool)

(assert (=> b!5269359 m!6308862))

(declare-fun m!6308864 () Bool)

(assert (=> bm!374265 m!6308864))

(declare-fun m!6308866 () Bool)

(assert (=> bm!374264 m!6308866))

(assert (=> start!556488 d!1695699))

(declare-fun d!1695701 () Bool)

(declare-fun c!912556 () Bool)

(declare-fun isEmpty!32797 (List!60970) Bool)

(assert (=> d!1695701 (= c!912556 (isEmpty!32797 (t!374163 s!2326)))))

(declare-fun e!3277201 () Bool)

(assert (=> d!1695701 (= (matchZipper!1134 lt!2156453 (t!374163 s!2326)) e!3277201)))

(declare-fun b!5269366 () Bool)

(declare-fun nullableZipper!1289 ((Set Context!8548)) Bool)

(assert (=> b!5269366 (= e!3277201 (nullableZipper!1289 lt!2156453))))

(declare-fun b!5269367 () Bool)

(declare-fun head!11297 (List!60970) C!30050)

(declare-fun tail!10394 (List!60970) List!60970)

(assert (=> b!5269367 (= e!3277201 (matchZipper!1134 (derivationStepZipper!1133 lt!2156453 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))))))

(assert (= (and d!1695701 c!912556) b!5269366))

(assert (= (and d!1695701 (not c!912556)) b!5269367))

(declare-fun m!6308868 () Bool)

(assert (=> d!1695701 m!6308868))

(declare-fun m!6308870 () Bool)

(assert (=> b!5269366 m!6308870))

(declare-fun m!6308872 () Bool)

(assert (=> b!5269367 m!6308872))

(assert (=> b!5269367 m!6308872))

(declare-fun m!6308874 () Bool)

(assert (=> b!5269367 m!6308874))

(declare-fun m!6308876 () Bool)

(assert (=> b!5269367 m!6308876))

(assert (=> b!5269367 m!6308874))

(assert (=> b!5269367 m!6308876))

(declare-fun m!6308878 () Bool)

(assert (=> b!5269367 m!6308878))

(assert (=> b!5269152 d!1695701))

(declare-fun e!3277204 () Bool)

(declare-fun d!1695703 () Bool)

(assert (=> d!1695703 (= (matchZipper!1134 (set.union lt!2156443 lt!2156453) (t!374163 s!2326)) e!3277204)))

(declare-fun res!2235556 () Bool)

(assert (=> d!1695703 (=> res!2235556 e!3277204)))

(assert (=> d!1695703 (= res!2235556 (matchZipper!1134 lt!2156443 (t!374163 s!2326)))))

(declare-fun lt!2156544 () Unit!153078)

(declare-fun choose!39311 ((Set Context!8548) (Set Context!8548) List!60970) Unit!153078)

(assert (=> d!1695703 (= lt!2156544 (choose!39311 lt!2156443 lt!2156453 (t!374163 s!2326)))))

(assert (=> d!1695703 (= (lemmaZipperConcatMatchesSameAsBothZippers!127 lt!2156443 lt!2156453 (t!374163 s!2326)) lt!2156544)))

(declare-fun b!5269370 () Bool)

(assert (=> b!5269370 (= e!3277204 (matchZipper!1134 lt!2156453 (t!374163 s!2326)))))

(assert (= (and d!1695703 (not res!2235556)) b!5269370))

(assert (=> d!1695703 m!6308688))

(assert (=> d!1695703 m!6308686))

(declare-fun m!6308880 () Bool)

(assert (=> d!1695703 m!6308880))

(assert (=> b!5269370 m!6308658))

(assert (=> b!5269171 d!1695703))

(declare-fun d!1695705 () Bool)

(declare-fun c!912557 () Bool)

(assert (=> d!1695705 (= c!912557 (isEmpty!32797 (t!374163 s!2326)))))

(declare-fun e!3277205 () Bool)

(assert (=> d!1695705 (= (matchZipper!1134 lt!2156443 (t!374163 s!2326)) e!3277205)))

(declare-fun b!5269371 () Bool)

(assert (=> b!5269371 (= e!3277205 (nullableZipper!1289 lt!2156443))))

(declare-fun b!5269372 () Bool)

(assert (=> b!5269372 (= e!3277205 (matchZipper!1134 (derivationStepZipper!1133 lt!2156443 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))))))

(assert (= (and d!1695705 c!912557) b!5269371))

(assert (= (and d!1695705 (not c!912557)) b!5269372))

(assert (=> d!1695705 m!6308868))

(declare-fun m!6308882 () Bool)

(assert (=> b!5269371 m!6308882))

(assert (=> b!5269372 m!6308872))

(assert (=> b!5269372 m!6308872))

(declare-fun m!6308884 () Bool)

(assert (=> b!5269372 m!6308884))

(assert (=> b!5269372 m!6308876))

(assert (=> b!5269372 m!6308884))

(assert (=> b!5269372 m!6308876))

(declare-fun m!6308886 () Bool)

(assert (=> b!5269372 m!6308886))

(assert (=> b!5269171 d!1695705))

(declare-fun d!1695707 () Bool)

(declare-fun c!912558 () Bool)

(assert (=> d!1695707 (= c!912558 (isEmpty!32797 (t!374163 s!2326)))))

(declare-fun e!3277206 () Bool)

(assert (=> d!1695707 (= (matchZipper!1134 (set.union lt!2156443 lt!2156453) (t!374163 s!2326)) e!3277206)))

(declare-fun b!5269373 () Bool)

(assert (=> b!5269373 (= e!3277206 (nullableZipper!1289 (set.union lt!2156443 lt!2156453)))))

(declare-fun b!5269374 () Bool)

(assert (=> b!5269374 (= e!3277206 (matchZipper!1134 (derivationStepZipper!1133 (set.union lt!2156443 lt!2156453) (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))))))

(assert (= (and d!1695707 c!912558) b!5269373))

(assert (= (and d!1695707 (not c!912558)) b!5269374))

(assert (=> d!1695707 m!6308868))

(declare-fun m!6308888 () Bool)

(assert (=> b!5269373 m!6308888))

(assert (=> b!5269374 m!6308872))

(assert (=> b!5269374 m!6308872))

(declare-fun m!6308890 () Bool)

(assert (=> b!5269374 m!6308890))

(assert (=> b!5269374 m!6308876))

(assert (=> b!5269374 m!6308890))

(assert (=> b!5269374 m!6308876))

(declare-fun m!6308892 () Bool)

(assert (=> b!5269374 m!6308892))

(assert (=> b!5269171 d!1695707))

(declare-fun d!1695709 () Bool)

(declare-fun lt!2156547 () Regex!14890)

(assert (=> d!1695709 (validRegex!6626 lt!2156547)))

(assert (=> d!1695709 (= lt!2156547 (generalisedUnion!819 (unfocusZipperList!332 zl!343)))))

(assert (=> d!1695709 (= (unfocusZipper!632 zl!343) lt!2156547)))

(declare-fun bs!1221009 () Bool)

(assert (= bs!1221009 d!1695709))

(declare-fun m!6308894 () Bool)

(assert (=> bs!1221009 m!6308894))

(assert (=> bs!1221009 m!6308722))

(assert (=> bs!1221009 m!6308722))

(assert (=> bs!1221009 m!6308724))

(assert (=> b!5269155 d!1695709))

(declare-fun bs!1221010 () Bool)

(declare-fun d!1695711 () Bool)

(assert (= bs!1221010 (and d!1695711 d!1695695)))

(declare-fun lambda!265822 () Int)

(assert (=> bs!1221010 (= lambda!265822 lambda!265818)))

(declare-fun bs!1221011 () Bool)

(assert (= bs!1221011 (and d!1695711 d!1695697)))

(assert (=> bs!1221011 (= lambda!265822 lambda!265821)))

(assert (=> d!1695711 (= (inv!80473 (h!67295 zl!343)) (forall!14298 (exprs!4774 (h!67295 zl!343)) lambda!265822))))

(declare-fun bs!1221012 () Bool)

(assert (= bs!1221012 d!1695711))

(declare-fun m!6308896 () Bool)

(assert (=> bs!1221012 m!6308896))

(assert (=> b!5269164 d!1695711))

(declare-fun d!1695713 () Bool)

(assert (=> d!1695713 (= (isEmpty!32794 (t!374162 (exprs!4774 (h!67295 zl!343)))) (is-Nil!60845 (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(assert (=> b!5269175 d!1695713))

(declare-fun d!1695715 () Bool)

(declare-fun c!912559 () Bool)

(assert (=> d!1695715 (= c!912559 (isEmpty!32797 (t!374163 s!2326)))))

(declare-fun e!3277207 () Bool)

(assert (=> d!1695715 (= (matchZipper!1134 lt!2156461 (t!374163 s!2326)) e!3277207)))

(declare-fun b!5269375 () Bool)

(assert (=> b!5269375 (= e!3277207 (nullableZipper!1289 lt!2156461))))

(declare-fun b!5269376 () Bool)

(assert (=> b!5269376 (= e!3277207 (matchZipper!1134 (derivationStepZipper!1133 lt!2156461 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))))))

(assert (= (and d!1695715 c!912559) b!5269375))

(assert (= (and d!1695715 (not c!912559)) b!5269376))

(assert (=> d!1695715 m!6308868))

(declare-fun m!6308898 () Bool)

(assert (=> b!5269375 m!6308898))

(assert (=> b!5269376 m!6308872))

(assert (=> b!5269376 m!6308872))

(declare-fun m!6308900 () Bool)

(assert (=> b!5269376 m!6308900))

(assert (=> b!5269376 m!6308876))

(assert (=> b!5269376 m!6308900))

(assert (=> b!5269376 m!6308876))

(declare-fun m!6308902 () Bool)

(assert (=> b!5269376 m!6308902))

(assert (=> b!5269174 d!1695715))

(assert (=> b!5269154 d!1695705))

(declare-fun d!1695717 () Bool)

(declare-fun c!912560 () Bool)

(assert (=> d!1695717 (= c!912560 (isEmpty!32797 (t!374163 s!2326)))))

(declare-fun e!3277208 () Bool)

(assert (=> d!1695717 (= (matchZipper!1134 lt!2156441 (t!374163 s!2326)) e!3277208)))

(declare-fun b!5269377 () Bool)

(assert (=> b!5269377 (= e!3277208 (nullableZipper!1289 lt!2156441))))

(declare-fun b!5269378 () Bool)

(assert (=> b!5269378 (= e!3277208 (matchZipper!1134 (derivationStepZipper!1133 lt!2156441 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))))))

(assert (= (and d!1695717 c!912560) b!5269377))

(assert (= (and d!1695717 (not c!912560)) b!5269378))

(assert (=> d!1695717 m!6308868))

(declare-fun m!6308904 () Bool)

(assert (=> b!5269377 m!6308904))

(assert (=> b!5269378 m!6308872))

(assert (=> b!5269378 m!6308872))

(declare-fun m!6308906 () Bool)

(assert (=> b!5269378 m!6308906))

(assert (=> b!5269378 m!6308876))

(assert (=> b!5269378 m!6308906))

(assert (=> b!5269378 m!6308876))

(declare-fun m!6308908 () Bool)

(assert (=> b!5269378 m!6308908))

(assert (=> b!5269154 d!1695717))

(declare-fun d!1695719 () Bool)

(declare-fun c!912561 () Bool)

(assert (=> d!1695719 (= c!912561 (isEmpty!32797 (t!374163 s!2326)))))

(declare-fun e!3277209 () Bool)

(assert (=> d!1695719 (= (matchZipper!1134 lt!2156440 (t!374163 s!2326)) e!3277209)))

(declare-fun b!5269379 () Bool)

(assert (=> b!5269379 (= e!3277209 (nullableZipper!1289 lt!2156440))))

(declare-fun b!5269380 () Bool)

(assert (=> b!5269380 (= e!3277209 (matchZipper!1134 (derivationStepZipper!1133 lt!2156440 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))))))

(assert (= (and d!1695719 c!912561) b!5269379))

(assert (= (and d!1695719 (not c!912561)) b!5269380))

(assert (=> d!1695719 m!6308868))

(declare-fun m!6308910 () Bool)

(assert (=> b!5269379 m!6308910))

(assert (=> b!5269380 m!6308872))

(assert (=> b!5269380 m!6308872))

(declare-fun m!6308912 () Bool)

(assert (=> b!5269380 m!6308912))

(assert (=> b!5269380 m!6308876))

(assert (=> b!5269380 m!6308912))

(assert (=> b!5269380 m!6308876))

(declare-fun m!6308914 () Bool)

(assert (=> b!5269380 m!6308914))

(assert (=> b!5269154 d!1695719))

(declare-fun d!1695721 () Bool)

(declare-fun e!3277210 () Bool)

(assert (=> d!1695721 (= (matchZipper!1134 (set.union lt!2156440 lt!2156461) (t!374163 s!2326)) e!3277210)))

(declare-fun res!2235557 () Bool)

(assert (=> d!1695721 (=> res!2235557 e!3277210)))

(assert (=> d!1695721 (= res!2235557 (matchZipper!1134 lt!2156440 (t!374163 s!2326)))))

(declare-fun lt!2156548 () Unit!153078)

(assert (=> d!1695721 (= lt!2156548 (choose!39311 lt!2156440 lt!2156461 (t!374163 s!2326)))))

(assert (=> d!1695721 (= (lemmaZipperConcatMatchesSameAsBothZippers!127 lt!2156440 lt!2156461 (t!374163 s!2326)) lt!2156548)))

(declare-fun b!5269381 () Bool)

(assert (=> b!5269381 (= e!3277210 (matchZipper!1134 lt!2156461 (t!374163 s!2326)))))

(assert (= (and d!1695721 (not res!2235557)) b!5269381))

(declare-fun m!6308916 () Bool)

(assert (=> d!1695721 m!6308916))

(assert (=> d!1695721 m!6308712))

(declare-fun m!6308918 () Bool)

(assert (=> d!1695721 m!6308918))

(assert (=> b!5269381 m!6308656))

(assert (=> b!5269154 d!1695721))

(declare-fun b!5269400 () Bool)

(declare-fun res!2235572 () Bool)

(declare-fun e!3277221 () Bool)

(assert (=> b!5269400 (=> (not res!2235572) (not e!3277221))))

(declare-fun lt!2156556 () Option!15001)

(declare-fun get!20920 (Option!15001) tuple2!64178)

(assert (=> b!5269400 (= res!2235572 (matchR!7075 (regTwo!30292 r!7292) (_2!35392 (get!20920 lt!2156556))))))

(declare-fun b!5269401 () Bool)

(declare-fun e!3277223 () Option!15001)

(assert (=> b!5269401 (= e!3277223 (Some!15000 (tuple2!64179 Nil!60846 s!2326)))))

(declare-fun b!5269402 () Bool)

(declare-fun res!2235570 () Bool)

(assert (=> b!5269402 (=> (not res!2235570) (not e!3277221))))

(assert (=> b!5269402 (= res!2235570 (matchR!7075 (regOne!30292 r!7292) (_1!35392 (get!20920 lt!2156556))))))

(declare-fun b!5269403 () Bool)

(declare-fun lt!2156555 () Unit!153078)

(declare-fun lt!2156557 () Unit!153078)

(assert (=> b!5269403 (= lt!2156555 lt!2156557)))

(declare-fun ++!13269 (List!60970 List!60970) List!60970)

(assert (=> b!5269403 (= (++!13269 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (t!374163 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1684 (List!60970 C!30050 List!60970 List!60970) Unit!153078)

(assert (=> b!5269403 (= lt!2156557 (lemmaMoveElementToOtherListKeepsConcatEq!1684 Nil!60846 (h!67294 s!2326) (t!374163 s!2326) s!2326))))

(declare-fun e!3277225 () Option!15001)

(assert (=> b!5269403 (= e!3277225 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (t!374163 s!2326) s!2326))))

(declare-fun b!5269404 () Bool)

(declare-fun e!3277224 () Bool)

(assert (=> b!5269404 (= e!3277224 (matchR!7075 (regTwo!30292 r!7292) s!2326))))

(declare-fun b!5269405 () Bool)

(assert (=> b!5269405 (= e!3277221 (= (++!13269 (_1!35392 (get!20920 lt!2156556)) (_2!35392 (get!20920 lt!2156556))) s!2326))))

(declare-fun b!5269406 () Bool)

(declare-fun e!3277222 () Bool)

(assert (=> b!5269406 (= e!3277222 (not (isDefined!11704 lt!2156556)))))

(declare-fun d!1695723 () Bool)

(assert (=> d!1695723 e!3277222))

(declare-fun res!2235568 () Bool)

(assert (=> d!1695723 (=> res!2235568 e!3277222)))

(assert (=> d!1695723 (= res!2235568 e!3277221)))

(declare-fun res!2235569 () Bool)

(assert (=> d!1695723 (=> (not res!2235569) (not e!3277221))))

(assert (=> d!1695723 (= res!2235569 (isDefined!11704 lt!2156556))))

(assert (=> d!1695723 (= lt!2156556 e!3277223)))

(declare-fun c!912567 () Bool)

(assert (=> d!1695723 (= c!912567 e!3277224)))

(declare-fun res!2235571 () Bool)

(assert (=> d!1695723 (=> (not res!2235571) (not e!3277224))))

(assert (=> d!1695723 (= res!2235571 (matchR!7075 (regOne!30292 r!7292) Nil!60846))))

(assert (=> d!1695723 (validRegex!6626 (regOne!30292 r!7292))))

(assert (=> d!1695723 (= (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) Nil!60846 s!2326 s!2326) lt!2156556)))

(declare-fun b!5269407 () Bool)

(assert (=> b!5269407 (= e!3277223 e!3277225)))

(declare-fun c!912566 () Bool)

(assert (=> b!5269407 (= c!912566 (is-Nil!60846 s!2326))))

(declare-fun b!5269408 () Bool)

(assert (=> b!5269408 (= e!3277225 None!15000)))

(assert (= (and d!1695723 res!2235571) b!5269404))

(assert (= (and d!1695723 c!912567) b!5269401))

(assert (= (and d!1695723 (not c!912567)) b!5269407))

(assert (= (and b!5269407 c!912566) b!5269408))

(assert (= (and b!5269407 (not c!912566)) b!5269403))

(assert (= (and d!1695723 res!2235569) b!5269402))

(assert (= (and b!5269402 res!2235570) b!5269400))

(assert (= (and b!5269400 res!2235572) b!5269405))

(assert (= (and d!1695723 (not res!2235568)) b!5269406))

(declare-fun m!6308920 () Bool)

(assert (=> d!1695723 m!6308920))

(declare-fun m!6308922 () Bool)

(assert (=> d!1695723 m!6308922))

(declare-fun m!6308924 () Bool)

(assert (=> d!1695723 m!6308924))

(declare-fun m!6308926 () Bool)

(assert (=> b!5269402 m!6308926))

(declare-fun m!6308928 () Bool)

(assert (=> b!5269402 m!6308928))

(declare-fun m!6308930 () Bool)

(assert (=> b!5269403 m!6308930))

(assert (=> b!5269403 m!6308930))

(declare-fun m!6308932 () Bool)

(assert (=> b!5269403 m!6308932))

(declare-fun m!6308934 () Bool)

(assert (=> b!5269403 m!6308934))

(assert (=> b!5269403 m!6308930))

(declare-fun m!6308936 () Bool)

(assert (=> b!5269403 m!6308936))

(assert (=> b!5269406 m!6308920))

(declare-fun m!6308938 () Bool)

(assert (=> b!5269404 m!6308938))

(assert (=> b!5269400 m!6308926))

(declare-fun m!6308940 () Bool)

(assert (=> b!5269400 m!6308940))

(assert (=> b!5269405 m!6308926))

(declare-fun m!6308942 () Bool)

(assert (=> b!5269405 m!6308942))

(assert (=> b!5269153 d!1695723))

(declare-fun d!1695725 () Bool)

(declare-fun choose!39312 (Int) Bool)

(assert (=> d!1695725 (= (Exists!2071 lambda!265799) (choose!39312 lambda!265799))))

(declare-fun bs!1221013 () Bool)

(assert (= bs!1221013 d!1695725))

(declare-fun m!6308944 () Bool)

(assert (=> bs!1221013 m!6308944))

(assert (=> b!5269153 d!1695725))

(declare-fun d!1695727 () Bool)

(assert (=> d!1695727 (= (Exists!2071 lambda!265798) (choose!39312 lambda!265798))))

(declare-fun bs!1221014 () Bool)

(assert (= bs!1221014 d!1695727))

(declare-fun m!6308946 () Bool)

(assert (=> bs!1221014 m!6308946))

(assert (=> b!5269153 d!1695727))

(declare-fun bs!1221015 () Bool)

(declare-fun d!1695729 () Bool)

(assert (= bs!1221015 (and d!1695729 b!5269153)))

(declare-fun lambda!265825 () Int)

(assert (=> bs!1221015 (= lambda!265825 lambda!265798)))

(assert (=> bs!1221015 (not (= lambda!265825 lambda!265799))))

(assert (=> d!1695729 true))

(assert (=> d!1695729 true))

(assert (=> d!1695729 true))

(assert (=> d!1695729 (= (isDefined!11704 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) Nil!60846 s!2326 s!2326)) (Exists!2071 lambda!265825))))

(declare-fun lt!2156560 () Unit!153078)

(declare-fun choose!39313 (Regex!14890 Regex!14890 List!60970) Unit!153078)

(assert (=> d!1695729 (= lt!2156560 (choose!39313 (regOne!30292 r!7292) (regTwo!30292 r!7292) s!2326))))

(assert (=> d!1695729 (validRegex!6626 (regOne!30292 r!7292))))

(assert (=> d!1695729 (= (lemmaFindConcatSeparationEquivalentToExists!1179 (regOne!30292 r!7292) (regTwo!30292 r!7292) s!2326) lt!2156560)))

(declare-fun bs!1221016 () Bool)

(assert (= bs!1221016 d!1695729))

(assert (=> bs!1221016 m!6308646))

(assert (=> bs!1221016 m!6308648))

(declare-fun m!6308948 () Bool)

(assert (=> bs!1221016 m!6308948))

(assert (=> bs!1221016 m!6308924))

(declare-fun m!6308950 () Bool)

(assert (=> bs!1221016 m!6308950))

(assert (=> bs!1221016 m!6308646))

(assert (=> b!5269153 d!1695729))

(declare-fun bs!1221017 () Bool)

(declare-fun d!1695731 () Bool)

(assert (= bs!1221017 (and d!1695731 b!5269153)))

(declare-fun lambda!265830 () Int)

(assert (=> bs!1221017 (= lambda!265830 lambda!265798)))

(assert (=> bs!1221017 (not (= lambda!265830 lambda!265799))))

(declare-fun bs!1221018 () Bool)

(assert (= bs!1221018 (and d!1695731 d!1695729)))

(assert (=> bs!1221018 (= lambda!265830 lambda!265825)))

(assert (=> d!1695731 true))

(assert (=> d!1695731 true))

(assert (=> d!1695731 true))

(declare-fun lambda!265831 () Int)

(assert (=> bs!1221017 (not (= lambda!265831 lambda!265798))))

(assert (=> bs!1221017 (= lambda!265831 lambda!265799)))

(assert (=> bs!1221018 (not (= lambda!265831 lambda!265825))))

(declare-fun bs!1221019 () Bool)

(assert (= bs!1221019 d!1695731))

(assert (=> bs!1221019 (not (= lambda!265831 lambda!265830))))

(assert (=> d!1695731 true))

(assert (=> d!1695731 true))

(assert (=> d!1695731 true))

(assert (=> d!1695731 (= (Exists!2071 lambda!265830) (Exists!2071 lambda!265831))))

(declare-fun lt!2156563 () Unit!153078)

(declare-fun choose!39314 (Regex!14890 Regex!14890 List!60970) Unit!153078)

(assert (=> d!1695731 (= lt!2156563 (choose!39314 (regOne!30292 r!7292) (regTwo!30292 r!7292) s!2326))))

(assert (=> d!1695731 (validRegex!6626 (regOne!30292 r!7292))))

(assert (=> d!1695731 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!725 (regOne!30292 r!7292) (regTwo!30292 r!7292) s!2326) lt!2156563)))

(declare-fun m!6308952 () Bool)

(assert (=> bs!1221019 m!6308952))

(declare-fun m!6308954 () Bool)

(assert (=> bs!1221019 m!6308954))

(declare-fun m!6308956 () Bool)

(assert (=> bs!1221019 m!6308956))

(assert (=> bs!1221019 m!6308924))

(assert (=> b!5269153 d!1695731))

(declare-fun d!1695733 () Bool)

(declare-fun isEmpty!32798 (Option!15001) Bool)

(assert (=> d!1695733 (= (isDefined!11704 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) Nil!60846 s!2326 s!2326)) (not (isEmpty!32798 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) Nil!60846 s!2326 s!2326))))))

(declare-fun bs!1221020 () Bool)

(assert (= bs!1221020 d!1695733))

(assert (=> bs!1221020 m!6308646))

(declare-fun m!6308958 () Bool)

(assert (=> bs!1221020 m!6308958))

(assert (=> b!5269153 d!1695733))

(declare-fun b!5269431 () Bool)

(declare-fun e!3277238 () (Set Context!8548))

(declare-fun call!374273 () (Set Context!8548))

(assert (=> b!5269431 (= e!3277238 call!374273)))

(declare-fun b!5269432 () Bool)

(declare-fun e!3277239 () (Set Context!8548))

(assert (=> b!5269432 (= e!3277239 e!3277238)))

(declare-fun c!912572 () Bool)

(assert (=> b!5269432 (= c!912572 (is-Cons!60845 (exprs!4774 lt!2156445)))))

(declare-fun d!1695735 () Bool)

(declare-fun c!912573 () Bool)

(declare-fun e!3277240 () Bool)

(assert (=> d!1695735 (= c!912573 e!3277240)))

(declare-fun res!2235587 () Bool)

(assert (=> d!1695735 (=> (not res!2235587) (not e!3277240))))

(assert (=> d!1695735 (= res!2235587 (is-Cons!60845 (exprs!4774 lt!2156445)))))

(assert (=> d!1695735 (= (derivationStepZipperUp!262 lt!2156445 (h!67294 s!2326)) e!3277239)))

(declare-fun b!5269433 () Bool)

(assert (=> b!5269433 (= e!3277238 (as set.empty (Set Context!8548)))))

(declare-fun bm!374268 () Bool)

(assert (=> bm!374268 (= call!374273 (derivationStepZipperDown!338 (h!67293 (exprs!4774 lt!2156445)) (Context!8549 (t!374162 (exprs!4774 lt!2156445))) (h!67294 s!2326)))))

(declare-fun b!5269434 () Bool)

(assert (=> b!5269434 (= e!3277240 (nullable!5059 (h!67293 (exprs!4774 lt!2156445))))))

(declare-fun b!5269435 () Bool)

(assert (=> b!5269435 (= e!3277239 (set.union call!374273 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 lt!2156445))) (h!67294 s!2326))))))

(assert (= (and d!1695735 res!2235587) b!5269434))

(assert (= (and d!1695735 c!912573) b!5269435))

(assert (= (and d!1695735 (not c!912573)) b!5269432))

(assert (= (and b!5269432 c!912572) b!5269431))

(assert (= (and b!5269432 (not c!912572)) b!5269433))

(assert (= (or b!5269435 b!5269431) bm!374268))

(declare-fun m!6308960 () Bool)

(assert (=> bm!374268 m!6308960))

(declare-fun m!6308962 () Bool)

(assert (=> b!5269434 m!6308962))

(declare-fun m!6308964 () Bool)

(assert (=> b!5269435 m!6308964))

(assert (=> b!5269163 d!1695735))

(declare-fun d!1695737 () Bool)

(declare-fun choose!39315 ((Set Context!8548) Int) (Set Context!8548))

(assert (=> d!1695737 (= (flatMap!617 lt!2156459 lambda!265800) (choose!39315 lt!2156459 lambda!265800))))

(declare-fun bs!1221021 () Bool)

(assert (= bs!1221021 d!1695737))

(declare-fun m!6308966 () Bool)

(assert (=> bs!1221021 m!6308966))

(assert (=> b!5269163 d!1695737))

(declare-fun b!5269436 () Bool)

(declare-fun e!3277241 () (Set Context!8548))

(declare-fun call!374274 () (Set Context!8548))

(assert (=> b!5269436 (= e!3277241 call!374274)))

(declare-fun b!5269437 () Bool)

(declare-fun e!3277242 () (Set Context!8548))

(assert (=> b!5269437 (= e!3277242 e!3277241)))

(declare-fun c!912574 () Bool)

(assert (=> b!5269437 (= c!912574 (is-Cons!60845 (exprs!4774 lt!2156457)))))

(declare-fun d!1695739 () Bool)

(declare-fun c!912575 () Bool)

(declare-fun e!3277243 () Bool)

(assert (=> d!1695739 (= c!912575 e!3277243)))

(declare-fun res!2235588 () Bool)

(assert (=> d!1695739 (=> (not res!2235588) (not e!3277243))))

(assert (=> d!1695739 (= res!2235588 (is-Cons!60845 (exprs!4774 lt!2156457)))))

(assert (=> d!1695739 (= (derivationStepZipperUp!262 lt!2156457 (h!67294 s!2326)) e!3277242)))

(declare-fun b!5269438 () Bool)

(assert (=> b!5269438 (= e!3277241 (as set.empty (Set Context!8548)))))

(declare-fun bm!374269 () Bool)

(assert (=> bm!374269 (= call!374274 (derivationStepZipperDown!338 (h!67293 (exprs!4774 lt!2156457)) (Context!8549 (t!374162 (exprs!4774 lt!2156457))) (h!67294 s!2326)))))

(declare-fun b!5269439 () Bool)

(assert (=> b!5269439 (= e!3277243 (nullable!5059 (h!67293 (exprs!4774 lt!2156457))))))

(declare-fun b!5269440 () Bool)

(assert (=> b!5269440 (= e!3277242 (set.union call!374274 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 lt!2156457))) (h!67294 s!2326))))))

(assert (= (and d!1695739 res!2235588) b!5269439))

(assert (= (and d!1695739 c!912575) b!5269440))

(assert (= (and d!1695739 (not c!912575)) b!5269437))

(assert (= (and b!5269437 c!912574) b!5269436))

(assert (= (and b!5269437 (not c!912574)) b!5269438))

(assert (= (or b!5269440 b!5269436) bm!374269))

(declare-fun m!6308968 () Bool)

(assert (=> bm!374269 m!6308968))

(declare-fun m!6308970 () Bool)

(assert (=> b!5269439 m!6308970))

(declare-fun m!6308972 () Bool)

(assert (=> b!5269440 m!6308972))

(assert (=> b!5269163 d!1695739))

(declare-fun d!1695741 () Bool)

(declare-fun dynLambda!24042 (Int Context!8548) (Set Context!8548))

(assert (=> d!1695741 (= (flatMap!617 lt!2156459 lambda!265800) (dynLambda!24042 lambda!265800 lt!2156457))))

(declare-fun lt!2156566 () Unit!153078)

(declare-fun choose!39316 ((Set Context!8548) Context!8548 Int) Unit!153078)

(assert (=> d!1695741 (= lt!2156566 (choose!39316 lt!2156459 lt!2156457 lambda!265800))))

(assert (=> d!1695741 (= lt!2156459 (set.insert lt!2156457 (as set.empty (Set Context!8548))))))

(assert (=> d!1695741 (= (lemmaFlatMapOnSingletonSet!149 lt!2156459 lt!2156457 lambda!265800) lt!2156566)))

(declare-fun b_lambda!203245 () Bool)

(assert (=> (not b_lambda!203245) (not d!1695741)))

(declare-fun bs!1221022 () Bool)

(assert (= bs!1221022 d!1695741))

(assert (=> bs!1221022 m!6308678))

(declare-fun m!6308974 () Bool)

(assert (=> bs!1221022 m!6308974))

(declare-fun m!6308976 () Bool)

(assert (=> bs!1221022 m!6308976))

(assert (=> bs!1221022 m!6308680))

(assert (=> b!5269163 d!1695741))

(declare-fun bs!1221023 () Bool)

(declare-fun d!1695743 () Bool)

(assert (= bs!1221023 (and d!1695743 b!5269181)))

(declare-fun lambda!265834 () Int)

(assert (=> bs!1221023 (= lambda!265834 lambda!265800)))

(assert (=> d!1695743 true))

(assert (=> d!1695743 (= (derivationStepZipper!1133 lt!2156459 (h!67294 s!2326)) (flatMap!617 lt!2156459 lambda!265834))))

(declare-fun bs!1221024 () Bool)

(assert (= bs!1221024 d!1695743))

(declare-fun m!6308978 () Bool)

(assert (=> bs!1221024 m!6308978))

(assert (=> b!5269163 d!1695743))

(declare-fun bm!374282 () Bool)

(declare-fun call!374288 () (Set Context!8548))

(declare-fun call!374289 () (Set Context!8548))

(assert (=> bm!374282 (= call!374288 call!374289)))

(declare-fun b!5269465 () Bool)

(declare-fun e!3277259 () (Set Context!8548))

(declare-fun call!374292 () (Set Context!8548))

(assert (=> b!5269465 (= e!3277259 (set.union call!374292 call!374289))))

(declare-fun bm!374283 () Bool)

(declare-fun c!912589 () Bool)

(declare-fun c!912591 () Bool)

(declare-fun call!374291 () List!60969)

(declare-fun $colon$colon!1339 (List!60969 Regex!14890) List!60969)

(assert (=> bm!374283 (= call!374291 ($colon$colon!1339 (exprs!4774 lt!2156452) (ite (or c!912591 c!912589) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regOne!30292 r!7292)))))))

(declare-fun bm!374284 () Bool)

(declare-fun call!374290 () List!60969)

(assert (=> bm!374284 (= call!374290 call!374291)))

(declare-fun b!5269466 () Bool)

(declare-fun e!3277258 () Bool)

(assert (=> b!5269466 (= e!3277258 (nullable!5059 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))

(declare-fun c!912588 () Bool)

(declare-fun bm!374285 () Bool)

(assert (=> bm!374285 (= call!374292 (derivationStepZipperDown!338 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))) (ite c!912588 lt!2156452 (Context!8549 call!374291)) (h!67294 s!2326)))))

(declare-fun d!1695745 () Bool)

(declare-fun c!912592 () Bool)

(assert (=> d!1695745 (= c!912592 (and (is-ElementMatch!14890 (regTwo!30292 (regOne!30292 r!7292))) (= (c!912522 (regTwo!30292 (regOne!30292 r!7292))) (h!67294 s!2326))))))

(declare-fun e!3277256 () (Set Context!8548))

(assert (=> d!1695745 (= (derivationStepZipperDown!338 (regTwo!30292 (regOne!30292 r!7292)) lt!2156452 (h!67294 s!2326)) e!3277256)))

(declare-fun b!5269467 () Bool)

(declare-fun c!912590 () Bool)

(assert (=> b!5269467 (= c!912590 (is-Star!14890 (regTwo!30292 (regOne!30292 r!7292))))))

(declare-fun e!3277260 () (Set Context!8548))

(declare-fun e!3277257 () (Set Context!8548))

(assert (=> b!5269467 (= e!3277260 e!3277257)))

(declare-fun b!5269468 () Bool)

(assert (=> b!5269468 (= e!3277257 call!374288)))

(declare-fun b!5269469 () Bool)

(declare-fun e!3277261 () (Set Context!8548))

(assert (=> b!5269469 (= e!3277256 e!3277261)))

(assert (=> b!5269469 (= c!912588 (is-Union!14890 (regTwo!30292 (regOne!30292 r!7292))))))

(declare-fun b!5269470 () Bool)

(declare-fun call!374287 () (Set Context!8548))

(assert (=> b!5269470 (= e!3277261 (set.union call!374292 call!374287))))

(declare-fun b!5269471 () Bool)

(assert (=> b!5269471 (= c!912591 e!3277258)))

(declare-fun res!2235591 () Bool)

(assert (=> b!5269471 (=> (not res!2235591) (not e!3277258))))

(assert (=> b!5269471 (= res!2235591 (is-Concat!23735 (regTwo!30292 (regOne!30292 r!7292))))))

(assert (=> b!5269471 (= e!3277261 e!3277259)))

(declare-fun b!5269472 () Bool)

(assert (=> b!5269472 (= e!3277257 (as set.empty (Set Context!8548)))))

(declare-fun b!5269473 () Bool)

(assert (=> b!5269473 (= e!3277259 e!3277260)))

(assert (=> b!5269473 (= c!912589 (is-Concat!23735 (regTwo!30292 (regOne!30292 r!7292))))))

(declare-fun b!5269474 () Bool)

(assert (=> b!5269474 (= e!3277256 (set.insert lt!2156452 (as set.empty (Set Context!8548))))))

(declare-fun bm!374286 () Bool)

(assert (=> bm!374286 (= call!374289 call!374287)))

(declare-fun b!5269475 () Bool)

(assert (=> b!5269475 (= e!3277260 call!374288)))

(declare-fun bm!374287 () Bool)

(assert (=> bm!374287 (= call!374287 (derivationStepZipperDown!338 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292)))))) (ite (or c!912588 c!912591) lt!2156452 (Context!8549 call!374290)) (h!67294 s!2326)))))

(assert (= (and d!1695745 c!912592) b!5269474))

(assert (= (and d!1695745 (not c!912592)) b!5269469))

(assert (= (and b!5269469 c!912588) b!5269470))

(assert (= (and b!5269469 (not c!912588)) b!5269471))

(assert (= (and b!5269471 res!2235591) b!5269466))

(assert (= (and b!5269471 c!912591) b!5269465))

(assert (= (and b!5269471 (not c!912591)) b!5269473))

(assert (= (and b!5269473 c!912589) b!5269475))

(assert (= (and b!5269473 (not c!912589)) b!5269467))

(assert (= (and b!5269467 c!912590) b!5269468))

(assert (= (and b!5269467 (not c!912590)) b!5269472))

(assert (= (or b!5269475 b!5269468) bm!374284))

(assert (= (or b!5269475 b!5269468) bm!374282))

(assert (= (or b!5269465 bm!374284) bm!374283))

(assert (= (or b!5269465 bm!374282) bm!374286))

(assert (= (or b!5269470 bm!374286) bm!374287))

(assert (= (or b!5269470 b!5269465) bm!374285))

(declare-fun m!6308980 () Bool)

(assert (=> bm!374285 m!6308980))

(declare-fun m!6308982 () Bool)

(assert (=> bm!374287 m!6308982))

(declare-fun m!6308984 () Bool)

(assert (=> b!5269474 m!6308984))

(declare-fun m!6308986 () Bool)

(assert (=> bm!374283 m!6308986))

(declare-fun m!6308988 () Bool)

(assert (=> b!5269466 m!6308988))

(assert (=> b!5269178 d!1695745))

(declare-fun bm!374288 () Bool)

(declare-fun call!374294 () (Set Context!8548))

(declare-fun call!374295 () (Set Context!8548))

(assert (=> bm!374288 (= call!374294 call!374295)))

(declare-fun b!5269476 () Bool)

(declare-fun e!3277265 () (Set Context!8548))

(declare-fun call!374298 () (Set Context!8548))

(assert (=> b!5269476 (= e!3277265 (set.union call!374298 call!374295))))

(declare-fun call!374297 () List!60969)

(declare-fun bm!374289 () Bool)

(declare-fun c!912596 () Bool)

(declare-fun c!912594 () Bool)

(assert (=> bm!374289 (= call!374297 ($colon$colon!1339 (exprs!4774 lt!2156445) (ite (or c!912596 c!912594) (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 r!7292)))))))

(declare-fun bm!374290 () Bool)

(declare-fun call!374296 () List!60969)

(assert (=> bm!374290 (= call!374296 call!374297)))

(declare-fun b!5269477 () Bool)

(declare-fun e!3277264 () Bool)

(assert (=> b!5269477 (= e!3277264 (nullable!5059 (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))))))

(declare-fun c!912593 () Bool)

(declare-fun bm!374291 () Bool)

(assert (=> bm!374291 (= call!374298 (derivationStepZipperDown!338 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))) (ite c!912593 lt!2156445 (Context!8549 call!374297)) (h!67294 s!2326)))))

(declare-fun d!1695747 () Bool)

(declare-fun c!912597 () Bool)

(assert (=> d!1695747 (= c!912597 (and (is-ElementMatch!14890 (regOne!30292 (regOne!30292 r!7292))) (= (c!912522 (regOne!30292 (regOne!30292 r!7292))) (h!67294 s!2326))))))

(declare-fun e!3277262 () (Set Context!8548))

(assert (=> d!1695747 (= (derivationStepZipperDown!338 (regOne!30292 (regOne!30292 r!7292)) lt!2156445 (h!67294 s!2326)) e!3277262)))

(declare-fun b!5269478 () Bool)

(declare-fun c!912595 () Bool)

(assert (=> b!5269478 (= c!912595 (is-Star!14890 (regOne!30292 (regOne!30292 r!7292))))))

(declare-fun e!3277266 () (Set Context!8548))

(declare-fun e!3277263 () (Set Context!8548))

(assert (=> b!5269478 (= e!3277266 e!3277263)))

(declare-fun b!5269479 () Bool)

(assert (=> b!5269479 (= e!3277263 call!374294)))

(declare-fun b!5269480 () Bool)

(declare-fun e!3277267 () (Set Context!8548))

(assert (=> b!5269480 (= e!3277262 e!3277267)))

(assert (=> b!5269480 (= c!912593 (is-Union!14890 (regOne!30292 (regOne!30292 r!7292))))))

(declare-fun b!5269481 () Bool)

(declare-fun call!374293 () (Set Context!8548))

(assert (=> b!5269481 (= e!3277267 (set.union call!374298 call!374293))))

(declare-fun b!5269482 () Bool)

(assert (=> b!5269482 (= c!912596 e!3277264)))

(declare-fun res!2235592 () Bool)

(assert (=> b!5269482 (=> (not res!2235592) (not e!3277264))))

(assert (=> b!5269482 (= res!2235592 (is-Concat!23735 (regOne!30292 (regOne!30292 r!7292))))))

(assert (=> b!5269482 (= e!3277267 e!3277265)))

(declare-fun b!5269483 () Bool)

(assert (=> b!5269483 (= e!3277263 (as set.empty (Set Context!8548)))))

(declare-fun b!5269484 () Bool)

(assert (=> b!5269484 (= e!3277265 e!3277266)))

(assert (=> b!5269484 (= c!912594 (is-Concat!23735 (regOne!30292 (regOne!30292 r!7292))))))

(declare-fun b!5269485 () Bool)

(assert (=> b!5269485 (= e!3277262 (set.insert lt!2156445 (as set.empty (Set Context!8548))))))

(declare-fun bm!374292 () Bool)

(assert (=> bm!374292 (= call!374295 call!374293)))

(declare-fun b!5269486 () Bool)

(assert (=> b!5269486 (= e!3277266 call!374294)))

(declare-fun bm!374293 () Bool)

(assert (=> bm!374293 (= call!374293 (derivationStepZipperDown!338 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292)))))) (ite (or c!912593 c!912596) lt!2156445 (Context!8549 call!374296)) (h!67294 s!2326)))))

(assert (= (and d!1695747 c!912597) b!5269485))

(assert (= (and d!1695747 (not c!912597)) b!5269480))

(assert (= (and b!5269480 c!912593) b!5269481))

(assert (= (and b!5269480 (not c!912593)) b!5269482))

(assert (= (and b!5269482 res!2235592) b!5269477))

(assert (= (and b!5269482 c!912596) b!5269476))

(assert (= (and b!5269482 (not c!912596)) b!5269484))

(assert (= (and b!5269484 c!912594) b!5269486))

(assert (= (and b!5269484 (not c!912594)) b!5269478))

(assert (= (and b!5269478 c!912595) b!5269479))

(assert (= (and b!5269478 (not c!912595)) b!5269483))

(assert (= (or b!5269486 b!5269479) bm!374290))

(assert (= (or b!5269486 b!5269479) bm!374288))

(assert (= (or b!5269476 bm!374290) bm!374289))

(assert (= (or b!5269476 bm!374288) bm!374292))

(assert (= (or b!5269481 bm!374292) bm!374293))

(assert (= (or b!5269481 b!5269476) bm!374291))

(declare-fun m!6308990 () Bool)

(assert (=> bm!374291 m!6308990))

(declare-fun m!6308992 () Bool)

(assert (=> bm!374293 m!6308992))

(assert (=> b!5269485 m!6308670))

(declare-fun m!6308994 () Bool)

(assert (=> bm!374289 m!6308994))

(declare-fun m!6308996 () Bool)

(assert (=> b!5269477 m!6308996))

(assert (=> b!5269178 d!1695747))

(declare-fun d!1695749 () Bool)

(declare-fun e!3277270 () Bool)

(assert (=> d!1695749 e!3277270))

(declare-fun res!2235595 () Bool)

(assert (=> d!1695749 (=> (not res!2235595) (not e!3277270))))

(declare-fun lt!2156569 () List!60971)

(declare-fun noDuplicate!1244 (List!60971) Bool)

(assert (=> d!1695749 (= res!2235595 (noDuplicate!1244 lt!2156569))))

(declare-fun choose!39317 ((Set Context!8548)) List!60971)

(assert (=> d!1695749 (= lt!2156569 (choose!39317 z!1189))))

(assert (=> d!1695749 (= (toList!8674 z!1189) lt!2156569)))

(declare-fun b!5269489 () Bool)

(declare-fun content!10820 (List!60971) (Set Context!8548))

(assert (=> b!5269489 (= e!3277270 (= (content!10820 lt!2156569) z!1189))))

(assert (= (and d!1695749 res!2235595) b!5269489))

(declare-fun m!6308998 () Bool)

(assert (=> d!1695749 m!6308998))

(declare-fun m!6309000 () Bool)

(assert (=> d!1695749 m!6309000))

(declare-fun m!6309002 () Bool)

(assert (=> b!5269489 m!6309002))

(assert (=> b!5269167 d!1695749))

(assert (=> b!5269166 d!1695715))

(declare-fun d!1695751 () Bool)

(declare-fun nullableFct!1441 (Regex!14890) Bool)

(assert (=> d!1695751 (= (nullable!5059 (regTwo!30292 (regOne!30292 r!7292))) (nullableFct!1441 (regTwo!30292 (regOne!30292 r!7292))))))

(declare-fun bs!1221025 () Bool)

(assert (= bs!1221025 d!1695751))

(declare-fun m!6309004 () Bool)

(assert (=> bs!1221025 m!6309004))

(assert (=> b!5269177 d!1695751))

(declare-fun d!1695753 () Bool)

(assert (=> d!1695753 (= (flatMap!617 lt!2156463 lambda!265800) (choose!39315 lt!2156463 lambda!265800))))

(declare-fun bs!1221026 () Bool)

(assert (= bs!1221026 d!1695753))

(declare-fun m!6309006 () Bool)

(assert (=> bs!1221026 m!6309006))

(assert (=> b!5269177 d!1695753))

(assert (=> b!5269177 d!1695735))

(declare-fun d!1695755 () Bool)

(assert (=> d!1695755 (= (flatMap!617 lt!2156463 lambda!265800) (dynLambda!24042 lambda!265800 lt!2156445))))

(declare-fun lt!2156570 () Unit!153078)

(assert (=> d!1695755 (= lt!2156570 (choose!39316 lt!2156463 lt!2156445 lambda!265800))))

(assert (=> d!1695755 (= lt!2156463 (set.insert lt!2156445 (as set.empty (Set Context!8548))))))

(assert (=> d!1695755 (= (lemmaFlatMapOnSingletonSet!149 lt!2156463 lt!2156445 lambda!265800) lt!2156570)))

(declare-fun b_lambda!203247 () Bool)

(assert (=> (not b_lambda!203247) (not d!1695755)))

(declare-fun bs!1221027 () Bool)

(assert (= bs!1221027 d!1695755))

(assert (=> bs!1221027 m!6308664))

(declare-fun m!6309008 () Bool)

(assert (=> bs!1221027 m!6309008))

(declare-fun m!6309010 () Bool)

(assert (=> bs!1221027 m!6309010))

(assert (=> bs!1221027 m!6308670))

(assert (=> b!5269177 d!1695755))

(declare-fun d!1695757 () Bool)

(assert (=> d!1695757 (= (nullable!5059 (regOne!30292 (regOne!30292 r!7292))) (nullableFct!1441 (regOne!30292 (regOne!30292 r!7292))))))

(declare-fun bs!1221028 () Bool)

(assert (= bs!1221028 d!1695757))

(declare-fun m!6309012 () Bool)

(assert (=> bs!1221028 m!6309012))

(assert (=> b!5269170 d!1695757))

(declare-fun d!1695759 () Bool)

(assert (=> d!1695759 (= (nullable!5059 (h!67293 (exprs!4774 (h!67295 zl!343)))) (nullableFct!1441 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun bs!1221029 () Bool)

(assert (= bs!1221029 d!1695759))

(declare-fun m!6309014 () Bool)

(assert (=> bs!1221029 m!6309014))

(assert (=> b!5269181 d!1695759))

(declare-fun b!5269490 () Bool)

(declare-fun e!3277271 () (Set Context!8548))

(declare-fun call!374299 () (Set Context!8548))

(assert (=> b!5269490 (= e!3277271 call!374299)))

(declare-fun b!5269491 () Bool)

(declare-fun e!3277272 () (Set Context!8548))

(assert (=> b!5269491 (= e!3277272 e!3277271)))

(declare-fun c!912598 () Bool)

(assert (=> b!5269491 (= c!912598 (is-Cons!60845 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))))

(declare-fun d!1695761 () Bool)

(declare-fun c!912599 () Bool)

(declare-fun e!3277273 () Bool)

(assert (=> d!1695761 (= c!912599 e!3277273)))

(declare-fun res!2235596 () Bool)

(assert (=> d!1695761 (=> (not res!2235596) (not e!3277273))))

(assert (=> d!1695761 (= res!2235596 (is-Cons!60845 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))))

(assert (=> d!1695761 (= (derivationStepZipperUp!262 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))) (h!67294 s!2326)) e!3277272)))

(declare-fun b!5269492 () Bool)

(assert (=> b!5269492 (= e!3277271 (as set.empty (Set Context!8548)))))

(declare-fun bm!374294 () Bool)

(assert (=> bm!374294 (= call!374299 (derivationStepZipperDown!338 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))) (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (h!67294 s!2326)))))

(declare-fun b!5269493 () Bool)

(assert (=> b!5269493 (= e!3277273 (nullable!5059 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))))

(declare-fun b!5269494 () Bool)

(assert (=> b!5269494 (= e!3277272 (set.union call!374299 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (h!67294 s!2326))))))

(assert (= (and d!1695761 res!2235596) b!5269493))

(assert (= (and d!1695761 c!912599) b!5269494))

(assert (= (and d!1695761 (not c!912599)) b!5269491))

(assert (= (and b!5269491 c!912598) b!5269490))

(assert (= (and b!5269491 (not c!912598)) b!5269492))

(assert (= (or b!5269494 b!5269490) bm!374294))

(declare-fun m!6309016 () Bool)

(assert (=> bm!374294 m!6309016))

(declare-fun m!6309018 () Bool)

(assert (=> b!5269493 m!6309018))

(declare-fun m!6309020 () Bool)

(assert (=> b!5269494 m!6309020))

(assert (=> b!5269181 d!1695761))

(declare-fun b!5269495 () Bool)

(declare-fun e!3277274 () (Set Context!8548))

(declare-fun call!374300 () (Set Context!8548))

(assert (=> b!5269495 (= e!3277274 call!374300)))

(declare-fun b!5269496 () Bool)

(declare-fun e!3277275 () (Set Context!8548))

(assert (=> b!5269496 (= e!3277275 e!3277274)))

(declare-fun c!912600 () Bool)

(assert (=> b!5269496 (= c!912600 (is-Cons!60845 (exprs!4774 (h!67295 zl!343))))))

(declare-fun d!1695763 () Bool)

(declare-fun c!912601 () Bool)

(declare-fun e!3277276 () Bool)

(assert (=> d!1695763 (= c!912601 e!3277276)))

(declare-fun res!2235597 () Bool)

(assert (=> d!1695763 (=> (not res!2235597) (not e!3277276))))

(assert (=> d!1695763 (= res!2235597 (is-Cons!60845 (exprs!4774 (h!67295 zl!343))))))

(assert (=> d!1695763 (= (derivationStepZipperUp!262 (h!67295 zl!343) (h!67294 s!2326)) e!3277275)))

(declare-fun b!5269497 () Bool)

(assert (=> b!5269497 (= e!3277274 (as set.empty (Set Context!8548)))))

(declare-fun bm!374295 () Bool)

(assert (=> bm!374295 (= call!374300 (derivationStepZipperDown!338 (h!67293 (exprs!4774 (h!67295 zl!343))) (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))) (h!67294 s!2326)))))

(declare-fun b!5269498 () Bool)

(assert (=> b!5269498 (= e!3277276 (nullable!5059 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269499 () Bool)

(assert (=> b!5269499 (= e!3277275 (set.union call!374300 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))) (h!67294 s!2326))))))

(assert (= (and d!1695763 res!2235597) b!5269498))

(assert (= (and d!1695763 c!912601) b!5269499))

(assert (= (and d!1695763 (not c!912601)) b!5269496))

(assert (= (and b!5269496 c!912600) b!5269495))

(assert (= (and b!5269496 (not c!912600)) b!5269497))

(assert (= (or b!5269499 b!5269495) bm!374295))

(declare-fun m!6309022 () Bool)

(assert (=> bm!374295 m!6309022))

(assert (=> b!5269498 m!6308702))

(declare-fun m!6309024 () Bool)

(assert (=> b!5269499 m!6309024))

(assert (=> b!5269181 d!1695763))

(declare-fun d!1695765 () Bool)

(assert (=> d!1695765 (= (flatMap!617 z!1189 lambda!265800) (choose!39315 z!1189 lambda!265800))))

(declare-fun bs!1221030 () Bool)

(assert (= bs!1221030 d!1695765))

(declare-fun m!6309026 () Bool)

(assert (=> bs!1221030 m!6309026))

(assert (=> b!5269181 d!1695765))

(declare-fun bm!374296 () Bool)

(declare-fun call!374302 () (Set Context!8548))

(declare-fun call!374303 () (Set Context!8548))

(assert (=> bm!374296 (= call!374302 call!374303)))

(declare-fun b!5269500 () Bool)

(declare-fun e!3277280 () (Set Context!8548))

(declare-fun call!374306 () (Set Context!8548))

(assert (=> b!5269500 (= e!3277280 (set.union call!374306 call!374303))))

(declare-fun bm!374297 () Bool)

(declare-fun c!912603 () Bool)

(declare-fun c!912605 () Bool)

(declare-fun call!374305 () List!60969)

(assert (=> bm!374297 (= call!374305 ($colon$colon!1339 (exprs!4774 lt!2156452) (ite (or c!912605 c!912603) (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (h!67293 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun bm!374298 () Bool)

(declare-fun call!374304 () List!60969)

(assert (=> bm!374298 (= call!374304 call!374305)))

(declare-fun b!5269501 () Bool)

(declare-fun e!3277279 () Bool)

(assert (=> b!5269501 (= e!3277279 (nullable!5059 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun bm!374299 () Bool)

(declare-fun c!912602 () Bool)

(assert (=> bm!374299 (= call!374306 (derivationStepZipperDown!338 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))) (ite c!912602 lt!2156452 (Context!8549 call!374305)) (h!67294 s!2326)))))

(declare-fun d!1695767 () Bool)

(declare-fun c!912606 () Bool)

(assert (=> d!1695767 (= c!912606 (and (is-ElementMatch!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))) (= (c!912522 (h!67293 (exprs!4774 (h!67295 zl!343)))) (h!67294 s!2326))))))

(declare-fun e!3277277 () (Set Context!8548))

(assert (=> d!1695767 (= (derivationStepZipperDown!338 (h!67293 (exprs!4774 (h!67295 zl!343))) lt!2156452 (h!67294 s!2326)) e!3277277)))

(declare-fun b!5269502 () Bool)

(declare-fun c!912604 () Bool)

(assert (=> b!5269502 (= c!912604 (is-Star!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun e!3277281 () (Set Context!8548))

(declare-fun e!3277278 () (Set Context!8548))

(assert (=> b!5269502 (= e!3277281 e!3277278)))

(declare-fun b!5269503 () Bool)

(assert (=> b!5269503 (= e!3277278 call!374302)))

(declare-fun b!5269504 () Bool)

(declare-fun e!3277282 () (Set Context!8548))

(assert (=> b!5269504 (= e!3277277 e!3277282)))

(assert (=> b!5269504 (= c!912602 (is-Union!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269505 () Bool)

(declare-fun call!374301 () (Set Context!8548))

(assert (=> b!5269505 (= e!3277282 (set.union call!374306 call!374301))))

(declare-fun b!5269506 () Bool)

(assert (=> b!5269506 (= c!912605 e!3277279)))

(declare-fun res!2235598 () Bool)

(assert (=> b!5269506 (=> (not res!2235598) (not e!3277279))))

(assert (=> b!5269506 (= res!2235598 (is-Concat!23735 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(assert (=> b!5269506 (= e!3277282 e!3277280)))

(declare-fun b!5269507 () Bool)

(assert (=> b!5269507 (= e!3277278 (as set.empty (Set Context!8548)))))

(declare-fun b!5269508 () Bool)

(assert (=> b!5269508 (= e!3277280 e!3277281)))

(assert (=> b!5269508 (= c!912603 (is-Concat!23735 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5269509 () Bool)

(assert (=> b!5269509 (= e!3277277 (set.insert lt!2156452 (as set.empty (Set Context!8548))))))

(declare-fun bm!374300 () Bool)

(assert (=> bm!374300 (= call!374303 call!374301)))

(declare-fun b!5269510 () Bool)

(assert (=> b!5269510 (= e!3277281 call!374302)))

(declare-fun bm!374301 () Bool)

(assert (=> bm!374301 (= call!374301 (derivationStepZipperDown!338 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343))))))) (ite (or c!912602 c!912605) lt!2156452 (Context!8549 call!374304)) (h!67294 s!2326)))))

(assert (= (and d!1695767 c!912606) b!5269509))

(assert (= (and d!1695767 (not c!912606)) b!5269504))

(assert (= (and b!5269504 c!912602) b!5269505))

(assert (= (and b!5269504 (not c!912602)) b!5269506))

(assert (= (and b!5269506 res!2235598) b!5269501))

(assert (= (and b!5269506 c!912605) b!5269500))

(assert (= (and b!5269506 (not c!912605)) b!5269508))

(assert (= (and b!5269508 c!912603) b!5269510))

(assert (= (and b!5269508 (not c!912603)) b!5269502))

(assert (= (and b!5269502 c!912604) b!5269503))

(assert (= (and b!5269502 (not c!912604)) b!5269507))

(assert (= (or b!5269510 b!5269503) bm!374298))

(assert (= (or b!5269510 b!5269503) bm!374296))

(assert (= (or b!5269500 bm!374298) bm!374297))

(assert (= (or b!5269500 bm!374296) bm!374300))

(assert (= (or b!5269505 bm!374300) bm!374301))

(assert (= (or b!5269505 b!5269500) bm!374299))

(declare-fun m!6309028 () Bool)

(assert (=> bm!374299 m!6309028))

(declare-fun m!6309030 () Bool)

(assert (=> bm!374301 m!6309030))

(assert (=> b!5269509 m!6308984))

(declare-fun m!6309032 () Bool)

(assert (=> bm!374297 m!6309032))

(declare-fun m!6309034 () Bool)

(assert (=> b!5269501 m!6309034))

(assert (=> b!5269181 d!1695767))

(declare-fun d!1695769 () Bool)

(assert (=> d!1695769 (= (flatMap!617 z!1189 lambda!265800) (dynLambda!24042 lambda!265800 (h!67295 zl!343)))))

(declare-fun lt!2156571 () Unit!153078)

(assert (=> d!1695769 (= lt!2156571 (choose!39316 z!1189 (h!67295 zl!343) lambda!265800))))

(assert (=> d!1695769 (= z!1189 (set.insert (h!67295 zl!343) (as set.empty (Set Context!8548))))))

(assert (=> d!1695769 (= (lemmaFlatMapOnSingletonSet!149 z!1189 (h!67295 zl!343) lambda!265800) lt!2156571)))

(declare-fun b_lambda!203249 () Bool)

(assert (=> (not b_lambda!203249) (not d!1695769)))

(declare-fun bs!1221031 () Bool)

(assert (= bs!1221031 d!1695769))

(assert (=> bs!1221031 m!6308696))

(declare-fun m!6309036 () Bool)

(assert (=> bs!1221031 m!6309036))

(declare-fun m!6309038 () Bool)

(assert (=> bs!1221031 m!6309038))

(declare-fun m!6309040 () Bool)

(assert (=> bs!1221031 m!6309040))

(assert (=> b!5269181 d!1695769))

(declare-fun b!5269511 () Bool)

(declare-fun e!3277283 () (Set Context!8548))

(declare-fun call!374307 () (Set Context!8548))

(assert (=> b!5269511 (= e!3277283 call!374307)))

(declare-fun b!5269512 () Bool)

(declare-fun e!3277284 () (Set Context!8548))

(assert (=> b!5269512 (= e!3277284 e!3277283)))

(declare-fun c!912607 () Bool)

(assert (=> b!5269512 (= c!912607 (is-Cons!60845 (exprs!4774 lt!2156452)))))

(declare-fun d!1695771 () Bool)

(declare-fun c!912608 () Bool)

(declare-fun e!3277285 () Bool)

(assert (=> d!1695771 (= c!912608 e!3277285)))

(declare-fun res!2235599 () Bool)

(assert (=> d!1695771 (=> (not res!2235599) (not e!3277285))))

(assert (=> d!1695771 (= res!2235599 (is-Cons!60845 (exprs!4774 lt!2156452)))))

(assert (=> d!1695771 (= (derivationStepZipperUp!262 lt!2156452 (h!67294 s!2326)) e!3277284)))

(declare-fun b!5269513 () Bool)

(assert (=> b!5269513 (= e!3277283 (as set.empty (Set Context!8548)))))

(declare-fun bm!374302 () Bool)

(assert (=> bm!374302 (= call!374307 (derivationStepZipperDown!338 (h!67293 (exprs!4774 lt!2156452)) (Context!8549 (t!374162 (exprs!4774 lt!2156452))) (h!67294 s!2326)))))

(declare-fun b!5269514 () Bool)

(assert (=> b!5269514 (= e!3277285 (nullable!5059 (h!67293 (exprs!4774 lt!2156452))))))

(declare-fun b!5269515 () Bool)

(assert (=> b!5269515 (= e!3277284 (set.union call!374307 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 lt!2156452))) (h!67294 s!2326))))))

(assert (= (and d!1695771 res!2235599) b!5269514))

(assert (= (and d!1695771 c!912608) b!5269515))

(assert (= (and d!1695771 (not c!912608)) b!5269512))

(assert (= (and b!5269512 c!912607) b!5269511))

(assert (= (and b!5269512 (not c!912607)) b!5269513))

(assert (= (or b!5269515 b!5269511) bm!374302))

(declare-fun m!6309042 () Bool)

(assert (=> bm!374302 m!6309042))

(declare-fun m!6309044 () Bool)

(assert (=> b!5269514 m!6309044))

(declare-fun m!6309046 () Bool)

(assert (=> b!5269515 m!6309046))

(assert (=> b!5269181 d!1695771))

(declare-fun bs!1221032 () Bool)

(declare-fun b!5269548 () Bool)

(assert (= bs!1221032 (and b!5269548 d!1695729)))

(declare-fun lambda!265839 () Int)

(assert (=> bs!1221032 (not (= lambda!265839 lambda!265825))))

(declare-fun bs!1221033 () Bool)

(assert (= bs!1221033 (and b!5269548 d!1695731)))

(assert (=> bs!1221033 (not (= lambda!265839 lambda!265831))))

(declare-fun bs!1221034 () Bool)

(assert (= bs!1221034 (and b!5269548 b!5269153)))

(assert (=> bs!1221034 (not (= lambda!265839 lambda!265798))))

(assert (=> bs!1221034 (not (= lambda!265839 lambda!265799))))

(assert (=> bs!1221033 (not (= lambda!265839 lambda!265830))))

(assert (=> b!5269548 true))

(assert (=> b!5269548 true))

(declare-fun bs!1221035 () Bool)

(declare-fun b!5269556 () Bool)

(assert (= bs!1221035 (and b!5269556 d!1695729)))

(declare-fun lambda!265840 () Int)

(assert (=> bs!1221035 (not (= lambda!265840 lambda!265825))))

(declare-fun bs!1221036 () Bool)

(assert (= bs!1221036 (and b!5269556 b!5269548)))

(assert (=> bs!1221036 (not (= lambda!265840 lambda!265839))))

(declare-fun bs!1221037 () Bool)

(assert (= bs!1221037 (and b!5269556 d!1695731)))

(assert (=> bs!1221037 (= lambda!265840 lambda!265831)))

(declare-fun bs!1221038 () Bool)

(assert (= bs!1221038 (and b!5269556 b!5269153)))

(assert (=> bs!1221038 (not (= lambda!265840 lambda!265798))))

(assert (=> bs!1221038 (= lambda!265840 lambda!265799)))

(assert (=> bs!1221037 (not (= lambda!265840 lambda!265830))))

(assert (=> b!5269556 true))

(assert (=> b!5269556 true))

(declare-fun e!3277306 () Bool)

(declare-fun call!374312 () Bool)

(assert (=> b!5269548 (= e!3277306 call!374312)))

(declare-fun b!5269549 () Bool)

(declare-fun e!3277305 () Bool)

(declare-fun e!3277307 () Bool)

(assert (=> b!5269549 (= e!3277305 e!3277307)))

(declare-fun c!912620 () Bool)

(assert (=> b!5269549 (= c!912620 (is-Star!14890 r!7292))))

(declare-fun b!5269550 () Bool)

(declare-fun e!3277310 () Bool)

(assert (=> b!5269550 (= e!3277305 e!3277310)))

(declare-fun res!2235618 () Bool)

(assert (=> b!5269550 (= res!2235618 (matchRSpec!1993 (regOne!30293 r!7292) s!2326))))

(assert (=> b!5269550 (=> res!2235618 e!3277310)))

(declare-fun bm!374307 () Bool)

(declare-fun call!374313 () Bool)

(assert (=> bm!374307 (= call!374313 (isEmpty!32797 s!2326))))

(declare-fun b!5269551 () Bool)

(assert (=> b!5269551 (= e!3277310 (matchRSpec!1993 (regTwo!30293 r!7292) s!2326))))

(declare-fun b!5269552 () Bool)

(declare-fun e!3277308 () Bool)

(declare-fun e!3277304 () Bool)

(assert (=> b!5269552 (= e!3277308 e!3277304)))

(declare-fun res!2235617 () Bool)

(assert (=> b!5269552 (= res!2235617 (not (is-EmptyLang!14890 r!7292)))))

(assert (=> b!5269552 (=> (not res!2235617) (not e!3277304))))

(declare-fun b!5269553 () Bool)

(declare-fun res!2235616 () Bool)

(assert (=> b!5269553 (=> res!2235616 e!3277306)))

(assert (=> b!5269553 (= res!2235616 call!374313)))

(assert (=> b!5269553 (= e!3277307 e!3277306)))

(declare-fun b!5269554 () Bool)

(declare-fun c!912619 () Bool)

(assert (=> b!5269554 (= c!912619 (is-Union!14890 r!7292))))

(declare-fun e!3277309 () Bool)

(assert (=> b!5269554 (= e!3277309 e!3277305)))

(declare-fun b!5269555 () Bool)

(assert (=> b!5269555 (= e!3277309 (= s!2326 (Cons!60846 (c!912522 r!7292) Nil!60846)))))

(assert (=> b!5269556 (= e!3277307 call!374312)))

(declare-fun b!5269557 () Bool)

(declare-fun c!912618 () Bool)

(assert (=> b!5269557 (= c!912618 (is-ElementMatch!14890 r!7292))))

(assert (=> b!5269557 (= e!3277304 e!3277309)))

(declare-fun b!5269558 () Bool)

(assert (=> b!5269558 (= e!3277308 call!374313)))

(declare-fun bm!374308 () Bool)

(assert (=> bm!374308 (= call!374312 (Exists!2071 (ite c!912620 lambda!265839 lambda!265840)))))

(declare-fun d!1695773 () Bool)

(declare-fun c!912617 () Bool)

(assert (=> d!1695773 (= c!912617 (is-EmptyExpr!14890 r!7292))))

(assert (=> d!1695773 (= (matchRSpec!1993 r!7292 s!2326) e!3277308)))

(assert (= (and d!1695773 c!912617) b!5269558))

(assert (= (and d!1695773 (not c!912617)) b!5269552))

(assert (= (and b!5269552 res!2235617) b!5269557))

(assert (= (and b!5269557 c!912618) b!5269555))

(assert (= (and b!5269557 (not c!912618)) b!5269554))

(assert (= (and b!5269554 c!912619) b!5269550))

(assert (= (and b!5269554 (not c!912619)) b!5269549))

(assert (= (and b!5269550 (not res!2235618)) b!5269551))

(assert (= (and b!5269549 c!912620) b!5269553))

(assert (= (and b!5269549 (not c!912620)) b!5269556))

(assert (= (and b!5269553 (not res!2235616)) b!5269548))

(assert (= (or b!5269548 b!5269556) bm!374308))

(assert (= (or b!5269558 b!5269553) bm!374307))

(declare-fun m!6309048 () Bool)

(assert (=> b!5269550 m!6309048))

(declare-fun m!6309050 () Bool)

(assert (=> bm!374307 m!6309050))

(declare-fun m!6309052 () Bool)

(assert (=> b!5269551 m!6309052))

(declare-fun m!6309054 () Bool)

(assert (=> bm!374308 m!6309054))

(assert (=> b!5269180 d!1695773))

(declare-fun b!5269587 () Bool)

(declare-fun res!2235637 () Bool)

(declare-fun e!3277328 () Bool)

(assert (=> b!5269587 (=> res!2235637 e!3277328)))

(assert (=> b!5269587 (= res!2235637 (not (is-ElementMatch!14890 r!7292)))))

(declare-fun e!3277329 () Bool)

(assert (=> b!5269587 (= e!3277329 e!3277328)))

(declare-fun b!5269588 () Bool)

(declare-fun e!3277326 () Bool)

(declare-fun derivativeStep!4110 (Regex!14890 C!30050) Regex!14890)

(assert (=> b!5269588 (= e!3277326 (matchR!7075 (derivativeStep!4110 r!7292 (head!11297 s!2326)) (tail!10394 s!2326)))))

(declare-fun b!5269589 () Bool)

(declare-fun e!3277325 () Bool)

(declare-fun e!3277327 () Bool)

(assert (=> b!5269589 (= e!3277325 e!3277327)))

(declare-fun res!2235635 () Bool)

(assert (=> b!5269589 (=> res!2235635 e!3277327)))

(declare-fun call!374316 () Bool)

(assert (=> b!5269589 (= res!2235635 call!374316)))

(declare-fun b!5269590 () Bool)

(assert (=> b!5269590 (= e!3277328 e!3277325)))

(declare-fun res!2235640 () Bool)

(assert (=> b!5269590 (=> (not res!2235640) (not e!3277325))))

(declare-fun lt!2156574 () Bool)

(assert (=> b!5269590 (= res!2235640 (not lt!2156574))))

(declare-fun b!5269591 () Bool)

(declare-fun e!3277331 () Bool)

(assert (=> b!5269591 (= e!3277331 (= lt!2156574 call!374316))))

(declare-fun b!5269592 () Bool)

(assert (=> b!5269592 (= e!3277331 e!3277329)))

(declare-fun c!912629 () Bool)

(assert (=> b!5269592 (= c!912629 (is-EmptyLang!14890 r!7292))))

(declare-fun b!5269593 () Bool)

(assert (=> b!5269593 (= e!3277327 (not (= (head!11297 s!2326) (c!912522 r!7292))))))

(declare-fun b!5269594 () Bool)

(declare-fun res!2235636 () Bool)

(declare-fun e!3277330 () Bool)

(assert (=> b!5269594 (=> (not res!2235636) (not e!3277330))))

(assert (=> b!5269594 (= res!2235636 (not call!374316))))

(declare-fun b!5269596 () Bool)

(declare-fun res!2235639 () Bool)

(assert (=> b!5269596 (=> (not res!2235639) (not e!3277330))))

(assert (=> b!5269596 (= res!2235639 (isEmpty!32797 (tail!10394 s!2326)))))

(declare-fun b!5269597 () Bool)

(declare-fun res!2235641 () Bool)

(assert (=> b!5269597 (=> res!2235641 e!3277328)))

(assert (=> b!5269597 (= res!2235641 e!3277330)))

(declare-fun res!2235638 () Bool)

(assert (=> b!5269597 (=> (not res!2235638) (not e!3277330))))

(assert (=> b!5269597 (= res!2235638 lt!2156574)))

(declare-fun b!5269598 () Bool)

(assert (=> b!5269598 (= e!3277330 (= (head!11297 s!2326) (c!912522 r!7292)))))

(declare-fun b!5269599 () Bool)

(assert (=> b!5269599 (= e!3277326 (nullable!5059 r!7292))))

(declare-fun b!5269595 () Bool)

(assert (=> b!5269595 (= e!3277329 (not lt!2156574))))

(declare-fun d!1695775 () Bool)

(assert (=> d!1695775 e!3277331))

(declare-fun c!912628 () Bool)

(assert (=> d!1695775 (= c!912628 (is-EmptyExpr!14890 r!7292))))

(assert (=> d!1695775 (= lt!2156574 e!3277326)))

(declare-fun c!912627 () Bool)

(assert (=> d!1695775 (= c!912627 (isEmpty!32797 s!2326))))

(assert (=> d!1695775 (validRegex!6626 r!7292)))

(assert (=> d!1695775 (= (matchR!7075 r!7292 s!2326) lt!2156574)))

(declare-fun b!5269600 () Bool)

(declare-fun res!2235642 () Bool)

(assert (=> b!5269600 (=> res!2235642 e!3277327)))

(assert (=> b!5269600 (= res!2235642 (not (isEmpty!32797 (tail!10394 s!2326))))))

(declare-fun bm!374311 () Bool)

(assert (=> bm!374311 (= call!374316 (isEmpty!32797 s!2326))))

(assert (= (and d!1695775 c!912627) b!5269599))

(assert (= (and d!1695775 (not c!912627)) b!5269588))

(assert (= (and d!1695775 c!912628) b!5269591))

(assert (= (and d!1695775 (not c!912628)) b!5269592))

(assert (= (and b!5269592 c!912629) b!5269595))

(assert (= (and b!5269592 (not c!912629)) b!5269587))

(assert (= (and b!5269587 (not res!2235637)) b!5269597))

(assert (= (and b!5269597 res!2235638) b!5269594))

(assert (= (and b!5269594 res!2235636) b!5269596))

(assert (= (and b!5269596 res!2235639) b!5269598))

(assert (= (and b!5269597 (not res!2235641)) b!5269590))

(assert (= (and b!5269590 res!2235640) b!5269589))

(assert (= (and b!5269589 (not res!2235635)) b!5269600))

(assert (= (and b!5269600 (not res!2235642)) b!5269593))

(assert (= (or b!5269591 b!5269589 b!5269594) bm!374311))

(declare-fun m!6309056 () Bool)

(assert (=> b!5269598 m!6309056))

(declare-fun m!6309058 () Bool)

(assert (=> b!5269599 m!6309058))

(declare-fun m!6309060 () Bool)

(assert (=> b!5269596 m!6309060))

(assert (=> b!5269596 m!6309060))

(declare-fun m!6309062 () Bool)

(assert (=> b!5269596 m!6309062))

(assert (=> b!5269588 m!6309056))

(assert (=> b!5269588 m!6309056))

(declare-fun m!6309064 () Bool)

(assert (=> b!5269588 m!6309064))

(assert (=> b!5269588 m!6309060))

(assert (=> b!5269588 m!6309064))

(assert (=> b!5269588 m!6309060))

(declare-fun m!6309066 () Bool)

(assert (=> b!5269588 m!6309066))

(assert (=> bm!374311 m!6309050))

(assert (=> b!5269593 m!6309056))

(assert (=> d!1695775 m!6309050))

(assert (=> d!1695775 m!6308720))

(assert (=> b!5269600 m!6309060))

(assert (=> b!5269600 m!6309060))

(assert (=> b!5269600 m!6309062))

(assert (=> b!5269180 d!1695775))

(declare-fun d!1695777 () Bool)

(assert (=> d!1695777 (= (matchR!7075 r!7292 s!2326) (matchRSpec!1993 r!7292 s!2326))))

(declare-fun lt!2156577 () Unit!153078)

(declare-fun choose!39318 (Regex!14890 List!60970) Unit!153078)

(assert (=> d!1695777 (= lt!2156577 (choose!39318 r!7292 s!2326))))

(assert (=> d!1695777 (validRegex!6626 r!7292)))

(assert (=> d!1695777 (= (mainMatchTheorem!1993 r!7292 s!2326) lt!2156577)))

(declare-fun bs!1221039 () Bool)

(assert (= bs!1221039 d!1695777))

(assert (=> bs!1221039 m!6308736))

(assert (=> bs!1221039 m!6308734))

(declare-fun m!6309068 () Bool)

(assert (=> bs!1221039 m!6309068))

(assert (=> bs!1221039 m!6308720))

(assert (=> b!5269180 d!1695777))

(declare-fun d!1695779 () Bool)

(assert (=> d!1695779 (= (isEmpty!32793 (t!374164 zl!343)) (is-Nil!60847 (t!374164 zl!343)))))

(assert (=> b!5269159 d!1695779))

(declare-fun bs!1221040 () Bool)

(declare-fun d!1695781 () Bool)

(assert (= bs!1221040 (and d!1695781 d!1695695)))

(declare-fun lambda!265843 () Int)

(assert (=> bs!1221040 (= lambda!265843 lambda!265818)))

(declare-fun bs!1221041 () Bool)

(assert (= bs!1221041 (and d!1695781 d!1695697)))

(assert (=> bs!1221041 (= lambda!265843 lambda!265821)))

(declare-fun bs!1221042 () Bool)

(assert (= bs!1221042 (and d!1695781 d!1695711)))

(assert (=> bs!1221042 (= lambda!265843 lambda!265822)))

(declare-fun b!5269621 () Bool)

(declare-fun e!3277347 () Bool)

(declare-fun lt!2156580 () Regex!14890)

(declare-fun isUnion!264 (Regex!14890) Bool)

(assert (=> b!5269621 (= e!3277347 (isUnion!264 lt!2156580))))

(declare-fun b!5269622 () Bool)

(declare-fun e!3277344 () Bool)

(declare-fun isEmptyLang!832 (Regex!14890) Bool)

(assert (=> b!5269622 (= e!3277344 (isEmptyLang!832 lt!2156580))))

(declare-fun b!5269623 () Bool)

(assert (=> b!5269623 (= e!3277347 (= lt!2156580 (head!11296 (unfocusZipperList!332 zl!343))))))

(declare-fun b!5269624 () Bool)

(declare-fun e!3277348 () Regex!14890)

(declare-fun e!3277345 () Regex!14890)

(assert (=> b!5269624 (= e!3277348 e!3277345)))

(declare-fun c!912640 () Bool)

(assert (=> b!5269624 (= c!912640 (is-Cons!60845 (unfocusZipperList!332 zl!343)))))

(declare-fun b!5269625 () Bool)

(assert (=> b!5269625 (= e!3277345 EmptyLang!14890)))

(declare-fun b!5269626 () Bool)

(assert (=> b!5269626 (= e!3277348 (h!67293 (unfocusZipperList!332 zl!343)))))

(declare-fun b!5269627 () Bool)

(assert (=> b!5269627 (= e!3277345 (Union!14890 (h!67293 (unfocusZipperList!332 zl!343)) (generalisedUnion!819 (t!374162 (unfocusZipperList!332 zl!343)))))))

(declare-fun b!5269629 () Bool)

(declare-fun e!3277349 () Bool)

(assert (=> b!5269629 (= e!3277349 (isEmpty!32794 (t!374162 (unfocusZipperList!332 zl!343))))))

(declare-fun b!5269630 () Bool)

(assert (=> b!5269630 (= e!3277344 e!3277347)))

(declare-fun c!912641 () Bool)

(assert (=> b!5269630 (= c!912641 (isEmpty!32794 (tail!10393 (unfocusZipperList!332 zl!343))))))

(declare-fun e!3277346 () Bool)

(assert (=> d!1695781 e!3277346))

(declare-fun res!2235648 () Bool)

(assert (=> d!1695781 (=> (not res!2235648) (not e!3277346))))

(assert (=> d!1695781 (= res!2235648 (validRegex!6626 lt!2156580))))

(assert (=> d!1695781 (= lt!2156580 e!3277348)))

(declare-fun c!912639 () Bool)

(assert (=> d!1695781 (= c!912639 e!3277349)))

(declare-fun res!2235647 () Bool)

(assert (=> d!1695781 (=> (not res!2235647) (not e!3277349))))

(assert (=> d!1695781 (= res!2235647 (is-Cons!60845 (unfocusZipperList!332 zl!343)))))

(assert (=> d!1695781 (forall!14298 (unfocusZipperList!332 zl!343) lambda!265843)))

(assert (=> d!1695781 (= (generalisedUnion!819 (unfocusZipperList!332 zl!343)) lt!2156580)))

(declare-fun b!5269628 () Bool)

(assert (=> b!5269628 (= e!3277346 e!3277344)))

(declare-fun c!912638 () Bool)

(assert (=> b!5269628 (= c!912638 (isEmpty!32794 (unfocusZipperList!332 zl!343)))))

(assert (= (and d!1695781 res!2235647) b!5269629))

(assert (= (and d!1695781 c!912639) b!5269626))

(assert (= (and d!1695781 (not c!912639)) b!5269624))

(assert (= (and b!5269624 c!912640) b!5269627))

(assert (= (and b!5269624 (not c!912640)) b!5269625))

(assert (= (and d!1695781 res!2235648) b!5269628))

(assert (= (and b!5269628 c!912638) b!5269622))

(assert (= (and b!5269628 (not c!912638)) b!5269630))

(assert (= (and b!5269630 c!912641) b!5269623))

(assert (= (and b!5269630 (not c!912641)) b!5269621))

(assert (=> b!5269630 m!6308722))

(declare-fun m!6309070 () Bool)

(assert (=> b!5269630 m!6309070))

(assert (=> b!5269630 m!6309070))

(declare-fun m!6309072 () Bool)

(assert (=> b!5269630 m!6309072))

(declare-fun m!6309074 () Bool)

(assert (=> b!5269621 m!6309074))

(assert (=> b!5269628 m!6308722))

(declare-fun m!6309076 () Bool)

(assert (=> b!5269628 m!6309076))

(declare-fun m!6309078 () Bool)

(assert (=> b!5269629 m!6309078))

(declare-fun m!6309080 () Bool)

(assert (=> b!5269627 m!6309080))

(assert (=> b!5269623 m!6308722))

(declare-fun m!6309082 () Bool)

(assert (=> b!5269623 m!6309082))

(declare-fun m!6309084 () Bool)

(assert (=> b!5269622 m!6309084))

(declare-fun m!6309086 () Bool)

(assert (=> d!1695781 m!6309086))

(assert (=> d!1695781 m!6308722))

(declare-fun m!6309088 () Bool)

(assert (=> d!1695781 m!6309088))

(assert (=> b!5269168 d!1695781))

(declare-fun bs!1221043 () Bool)

(declare-fun d!1695783 () Bool)

(assert (= bs!1221043 (and d!1695783 d!1695695)))

(declare-fun lambda!265846 () Int)

(assert (=> bs!1221043 (= lambda!265846 lambda!265818)))

(declare-fun bs!1221044 () Bool)

(assert (= bs!1221044 (and d!1695783 d!1695697)))

(assert (=> bs!1221044 (= lambda!265846 lambda!265821)))

(declare-fun bs!1221045 () Bool)

(assert (= bs!1221045 (and d!1695783 d!1695711)))

(assert (=> bs!1221045 (= lambda!265846 lambda!265822)))

(declare-fun bs!1221046 () Bool)

(assert (= bs!1221046 (and d!1695783 d!1695781)))

(assert (=> bs!1221046 (= lambda!265846 lambda!265843)))

(declare-fun lt!2156583 () List!60969)

(assert (=> d!1695783 (forall!14298 lt!2156583 lambda!265846)))

(declare-fun e!3277352 () List!60969)

(assert (=> d!1695783 (= lt!2156583 e!3277352)))

(declare-fun c!912644 () Bool)

(assert (=> d!1695783 (= c!912644 (is-Cons!60847 zl!343))))

(assert (=> d!1695783 (= (unfocusZipperList!332 zl!343) lt!2156583)))

(declare-fun b!5269635 () Bool)

(assert (=> b!5269635 (= e!3277352 (Cons!60845 (generalisedConcat!559 (exprs!4774 (h!67295 zl!343))) (unfocusZipperList!332 (t!374164 zl!343))))))

(declare-fun b!5269636 () Bool)

(assert (=> b!5269636 (= e!3277352 Nil!60845)))

(assert (= (and d!1695783 c!912644) b!5269635))

(assert (= (and d!1695783 (not c!912644)) b!5269636))

(declare-fun m!6309090 () Bool)

(assert (=> d!1695783 m!6309090))

(assert (=> b!5269635 m!6308690))

(declare-fun m!6309092 () Bool)

(assert (=> b!5269635 m!6309092))

(assert (=> b!5269168 d!1695783))

(declare-fun b!5269650 () Bool)

(declare-fun e!3277355 () Bool)

(declare-fun tp!1472849 () Bool)

(declare-fun tp!1472850 () Bool)

(assert (=> b!5269650 (= e!3277355 (and tp!1472849 tp!1472850))))

(declare-fun b!5269647 () Bool)

(assert (=> b!5269647 (= e!3277355 tp_is_empty!39033)))

(assert (=> b!5269157 (= tp!1472801 e!3277355)))

(declare-fun b!5269648 () Bool)

(declare-fun tp!1472852 () Bool)

(declare-fun tp!1472851 () Bool)

(assert (=> b!5269648 (= e!3277355 (and tp!1472852 tp!1472851))))

(declare-fun b!5269649 () Bool)

(declare-fun tp!1472848 () Bool)

(assert (=> b!5269649 (= e!3277355 tp!1472848)))

(assert (= (and b!5269157 (is-ElementMatch!14890 (regOne!30293 r!7292))) b!5269647))

(assert (= (and b!5269157 (is-Concat!23735 (regOne!30293 r!7292))) b!5269648))

(assert (= (and b!5269157 (is-Star!14890 (regOne!30293 r!7292))) b!5269649))

(assert (= (and b!5269157 (is-Union!14890 (regOne!30293 r!7292))) b!5269650))

(declare-fun b!5269654 () Bool)

(declare-fun e!3277356 () Bool)

(declare-fun tp!1472854 () Bool)

(declare-fun tp!1472855 () Bool)

(assert (=> b!5269654 (= e!3277356 (and tp!1472854 tp!1472855))))

(declare-fun b!5269651 () Bool)

(assert (=> b!5269651 (= e!3277356 tp_is_empty!39033)))

(assert (=> b!5269157 (= tp!1472799 e!3277356)))

(declare-fun b!5269652 () Bool)

(declare-fun tp!1472857 () Bool)

(declare-fun tp!1472856 () Bool)

(assert (=> b!5269652 (= e!3277356 (and tp!1472857 tp!1472856))))

(declare-fun b!5269653 () Bool)

(declare-fun tp!1472853 () Bool)

(assert (=> b!5269653 (= e!3277356 tp!1472853)))

(assert (= (and b!5269157 (is-ElementMatch!14890 (regTwo!30293 r!7292))) b!5269651))

(assert (= (and b!5269157 (is-Concat!23735 (regTwo!30293 r!7292))) b!5269652))

(assert (= (and b!5269157 (is-Star!14890 (regTwo!30293 r!7292))) b!5269653))

(assert (= (and b!5269157 (is-Union!14890 (regTwo!30293 r!7292))) b!5269654))

(declare-fun b!5269658 () Bool)

(declare-fun e!3277357 () Bool)

(declare-fun tp!1472859 () Bool)

(declare-fun tp!1472860 () Bool)

(assert (=> b!5269658 (= e!3277357 (and tp!1472859 tp!1472860))))

(declare-fun b!5269655 () Bool)

(assert (=> b!5269655 (= e!3277357 tp_is_empty!39033)))

(assert (=> b!5269173 (= tp!1472807 e!3277357)))

(declare-fun b!5269656 () Bool)

(declare-fun tp!1472862 () Bool)

(declare-fun tp!1472861 () Bool)

(assert (=> b!5269656 (= e!3277357 (and tp!1472862 tp!1472861))))

(declare-fun b!5269657 () Bool)

(declare-fun tp!1472858 () Bool)

(assert (=> b!5269657 (= e!3277357 tp!1472858)))

(assert (= (and b!5269173 (is-ElementMatch!14890 (regOne!30292 r!7292))) b!5269655))

(assert (= (and b!5269173 (is-Concat!23735 (regOne!30292 r!7292))) b!5269656))

(assert (= (and b!5269173 (is-Star!14890 (regOne!30292 r!7292))) b!5269657))

(assert (= (and b!5269173 (is-Union!14890 (regOne!30292 r!7292))) b!5269658))

(declare-fun b!5269662 () Bool)

(declare-fun e!3277358 () Bool)

(declare-fun tp!1472864 () Bool)

(declare-fun tp!1472865 () Bool)

(assert (=> b!5269662 (= e!3277358 (and tp!1472864 tp!1472865))))

(declare-fun b!5269659 () Bool)

(assert (=> b!5269659 (= e!3277358 tp_is_empty!39033)))

(assert (=> b!5269173 (= tp!1472802 e!3277358)))

(declare-fun b!5269660 () Bool)

(declare-fun tp!1472867 () Bool)

(declare-fun tp!1472866 () Bool)

(assert (=> b!5269660 (= e!3277358 (and tp!1472867 tp!1472866))))

(declare-fun b!5269661 () Bool)

(declare-fun tp!1472863 () Bool)

(assert (=> b!5269661 (= e!3277358 tp!1472863)))

(assert (= (and b!5269173 (is-ElementMatch!14890 (regTwo!30292 r!7292))) b!5269659))

(assert (= (and b!5269173 (is-Concat!23735 (regTwo!30292 r!7292))) b!5269660))

(assert (= (and b!5269173 (is-Star!14890 (regTwo!30292 r!7292))) b!5269661))

(assert (= (and b!5269173 (is-Union!14890 (regTwo!30292 r!7292))) b!5269662))

(declare-fun b!5269667 () Bool)

(declare-fun e!3277361 () Bool)

(declare-fun tp!1472872 () Bool)

(declare-fun tp!1472873 () Bool)

(assert (=> b!5269667 (= e!3277361 (and tp!1472872 tp!1472873))))

(assert (=> b!5269156 (= tp!1472805 e!3277361)))

(assert (= (and b!5269156 (is-Cons!60845 (exprs!4774 (h!67295 zl!343)))) b!5269667))

(declare-fun condSetEmpty!33728 () Bool)

(assert (=> setNonEmpty!33722 (= condSetEmpty!33728 (= setRest!33722 (as set.empty (Set Context!8548))))))

(declare-fun setRes!33728 () Bool)

(assert (=> setNonEmpty!33722 (= tp!1472803 setRes!33728)))

(declare-fun setIsEmpty!33728 () Bool)

(assert (=> setIsEmpty!33728 setRes!33728))

(declare-fun setNonEmpty!33728 () Bool)

(declare-fun setElem!33728 () Context!8548)

(declare-fun e!3277364 () Bool)

(declare-fun tp!1472878 () Bool)

(assert (=> setNonEmpty!33728 (= setRes!33728 (and tp!1472878 (inv!80473 setElem!33728) e!3277364))))

(declare-fun setRest!33728 () (Set Context!8548))

(assert (=> setNonEmpty!33728 (= setRest!33722 (set.union (set.insert setElem!33728 (as set.empty (Set Context!8548))) setRest!33728))))

(declare-fun b!5269672 () Bool)

(declare-fun tp!1472879 () Bool)

(assert (=> b!5269672 (= e!3277364 tp!1472879)))

(assert (= (and setNonEmpty!33722 condSetEmpty!33728) setIsEmpty!33728))

(assert (= (and setNonEmpty!33722 (not condSetEmpty!33728)) setNonEmpty!33728))

(assert (= setNonEmpty!33728 b!5269672))

(declare-fun m!6309094 () Bool)

(assert (=> setNonEmpty!33728 m!6309094))

(declare-fun b!5269673 () Bool)

(declare-fun e!3277365 () Bool)

(declare-fun tp!1472880 () Bool)

(declare-fun tp!1472881 () Bool)

(assert (=> b!5269673 (= e!3277365 (and tp!1472880 tp!1472881))))

(assert (=> b!5269161 (= tp!1472798 e!3277365)))

(assert (= (and b!5269161 (is-Cons!60845 (exprs!4774 setElem!33722))) b!5269673))

(declare-fun b!5269677 () Bool)

(declare-fun e!3277366 () Bool)

(declare-fun tp!1472883 () Bool)

(declare-fun tp!1472884 () Bool)

(assert (=> b!5269677 (= e!3277366 (and tp!1472883 tp!1472884))))

(declare-fun b!5269674 () Bool)

(assert (=> b!5269674 (= e!3277366 tp_is_empty!39033)))

(assert (=> b!5269176 (= tp!1472806 e!3277366)))

(declare-fun b!5269675 () Bool)

(declare-fun tp!1472886 () Bool)

(declare-fun tp!1472885 () Bool)

(assert (=> b!5269675 (= e!3277366 (and tp!1472886 tp!1472885))))

(declare-fun b!5269676 () Bool)

(declare-fun tp!1472882 () Bool)

(assert (=> b!5269676 (= e!3277366 tp!1472882)))

(assert (= (and b!5269176 (is-ElementMatch!14890 (reg!15219 r!7292))) b!5269674))

(assert (= (and b!5269176 (is-Concat!23735 (reg!15219 r!7292))) b!5269675))

(assert (= (and b!5269176 (is-Star!14890 (reg!15219 r!7292))) b!5269676))

(assert (= (and b!5269176 (is-Union!14890 (reg!15219 r!7292))) b!5269677))

(declare-fun b!5269685 () Bool)

(declare-fun e!3277372 () Bool)

(declare-fun tp!1472891 () Bool)

(assert (=> b!5269685 (= e!3277372 tp!1472891)))

(declare-fun tp!1472892 () Bool)

(declare-fun b!5269684 () Bool)

(declare-fun e!3277371 () Bool)

(assert (=> b!5269684 (= e!3277371 (and (inv!80473 (h!67295 (t!374164 zl!343))) e!3277372 tp!1472892))))

(assert (=> b!5269164 (= tp!1472800 e!3277371)))

(assert (= b!5269684 b!5269685))

(assert (= (and b!5269164 (is-Cons!60847 (t!374164 zl!343))) b!5269684))

(declare-fun m!6309096 () Bool)

(assert (=> b!5269684 m!6309096))

(declare-fun b!5269690 () Bool)

(declare-fun e!3277375 () Bool)

(declare-fun tp!1472895 () Bool)

(assert (=> b!5269690 (= e!3277375 (and tp_is_empty!39033 tp!1472895))))

(assert (=> b!5269179 (= tp!1472804 e!3277375)))

(assert (= (and b!5269179 (is-Cons!60846 (t!374163 s!2326))) b!5269690))

(declare-fun b_lambda!203251 () Bool)

(assert (= b_lambda!203249 (or b!5269181 b_lambda!203251)))

(declare-fun bs!1221047 () Bool)

(declare-fun d!1695785 () Bool)

(assert (= bs!1221047 (and d!1695785 b!5269181)))

(assert (=> bs!1221047 (= (dynLambda!24042 lambda!265800 (h!67295 zl!343)) (derivationStepZipperUp!262 (h!67295 zl!343) (h!67294 s!2326)))))

(assert (=> bs!1221047 m!6308698))

(assert (=> d!1695769 d!1695785))

(declare-fun b_lambda!203253 () Bool)

(assert (= b_lambda!203245 (or b!5269181 b_lambda!203253)))

(declare-fun bs!1221048 () Bool)

(declare-fun d!1695787 () Bool)

(assert (= bs!1221048 (and d!1695787 b!5269181)))

(assert (=> bs!1221048 (= (dynLambda!24042 lambda!265800 lt!2156457) (derivationStepZipperUp!262 lt!2156457 (h!67294 s!2326)))))

(assert (=> bs!1221048 m!6308676))

(assert (=> d!1695741 d!1695787))

(declare-fun b_lambda!203255 () Bool)

(assert (= b_lambda!203247 (or b!5269181 b_lambda!203255)))

(declare-fun bs!1221049 () Bool)

(declare-fun d!1695789 () Bool)

(assert (= bs!1221049 (and d!1695789 b!5269181)))

(assert (=> bs!1221049 (= (dynLambda!24042 lambda!265800 lt!2156445) (derivationStepZipperUp!262 lt!2156445 (h!67294 s!2326)))))

(assert (=> bs!1221049 m!6308666))

(assert (=> d!1695755 d!1695789))

(push 1)

(assert (not bm!374264))

(assert (not b!5269434))

(assert (not b!5269344))

(assert (not d!1695743))

(assert (not b!5269493))

(assert (not b!5269550))

(assert (not d!1695741))

(assert (not b!5269376))

(assert (not bm!374268))

(assert (not b!5269477))

(assert (not b!5269672))

(assert (not b!5269372))

(assert (not b!5269657))

(assert (not bm!374308))

(assert (not b!5269598))

(assert (not bm!374293))

(assert (not bm!374265))

(assert (not b!5269635))

(assert (not b!5269347))

(assert (not b!5269588))

(assert (not b!5269370))

(assert (not b!5269406))

(assert (not d!1695729))

(assert (not b!5269379))

(assert (not d!1695751))

(assert (not b!5269630))

(assert (not b!5269648))

(assert (not b!5269673))

(assert (not d!1695705))

(assert (not b!5269515))

(assert (not d!1695723))

(assert (not b!5269378))

(assert (not b!5269654))

(assert (not d!1695717))

(assert (not b!5269650))

(assert (not b!5269627))

(assert (not b!5269367))

(assert (not bm!374269))

(assert (not b!5269371))

(assert (not bs!1221049))

(assert (not b!5269405))

(assert (not d!1695759))

(assert (not b!5269658))

(assert (not b!5269596))

(assert (not b!5269501))

(assert (not b!5269514))

(assert (not d!1695697))

(assert (not b!5269466))

(assert (not bm!374307))

(assert (not d!1695721))

(assert (not b_lambda!203255))

(assert (not b!5269649))

(assert (not d!1695711))

(assert (not b!5269350))

(assert (not b!5269599))

(assert (not b!5269366))

(assert (not bm!374311))

(assert (not b!5269359))

(assert (not b!5269348))

(assert (not d!1695757))

(assert (not b!5269402))

(assert (not b!5269593))

(assert (not b!5269677))

(assert (not bm!374291))

(assert (not b!5269439))

(assert (not d!1695719))

(assert (not b!5269656))

(assert (not b!5269685))

(assert (not d!1695775))

(assert (not d!1695727))

(assert (not b!5269346))

(assert (not b!5269676))

(assert (not d!1695755))

(assert (not b!5269660))

(assert (not d!1695737))

(assert (not b!5269380))

(assert (not d!1695783))

(assert (not b!5269374))

(assert (not d!1695715))

(assert (not bs!1221048))

(assert (not bm!374262))

(assert (not b!5269494))

(assert (not d!1695765))

(assert (not d!1695709))

(assert (not b!5269652))

(assert (not b!5269675))

(assert tp_is_empty!39033)

(assert (not d!1695769))

(assert (not b!5269320))

(assert (not d!1695749))

(assert (not b!5269600))

(assert (not d!1695731))

(assert (not d!1695725))

(assert (not b!5269400))

(assert (not b!5269377))

(assert (not bm!374299))

(assert (not b!5269498))

(assert (not b!5269661))

(assert (not b!5269351))

(assert (not d!1695707))

(assert (not bm!374302))

(assert (not bm!374261))

(assert (not b!5269403))

(assert (not b!5269622))

(assert (not d!1695753))

(assert (not d!1695781))

(assert (not b!5269373))

(assert (not b!5269435))

(assert (not b!5269621))

(assert (not bm!374285))

(assert (not b!5269653))

(assert (not b!5269684))

(assert (not d!1695695))

(assert (not b!5269690))

(assert (not b!5269628))

(assert (not b!5269667))

(assert (not b!5269375))

(assert (not d!1695701))

(assert (not b!5269499))

(assert (not b_lambda!203253))

(assert (not bm!374301))

(assert (not bm!374289))

(assert (not b!5269662))

(assert (not b_lambda!203251))

(assert (not b!5269404))

(assert (not b!5269489))

(assert (not bm!374287))

(assert (not b!5269623))

(assert (not setNonEmpty!33728))

(assert (not b!5269551))

(assert (not bm!374297))

(assert (not b!5269440))

(assert (not b!5269345))

(assert (not bs!1221047))

(assert (not d!1695703))

(assert (not b!5269381))

(assert (not d!1695733))

(assert (not bm!374295))

(assert (not bm!374283))

(assert (not bm!374294))

(assert (not d!1695777))

(assert (not b!5269629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5270086 () Bool)

(declare-fun e!3277605 () Bool)

(declare-fun call!374376 () Bool)

(assert (=> b!5270086 (= e!3277605 call!374376)))

(declare-fun b!5270087 () Bool)

(declare-fun e!3277602 () Bool)

(declare-fun e!3277604 () Bool)

(assert (=> b!5270087 (= e!3277602 e!3277604)))

(declare-fun c!912756 () Bool)

(assert (=> b!5270087 (= c!912756 (is-Star!14890 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))

(declare-fun b!5270088 () Bool)

(declare-fun res!2235771 () Bool)

(declare-fun e!3277601 () Bool)

(assert (=> b!5270088 (=> res!2235771 e!3277601)))

(assert (=> b!5270088 (= res!2235771 (not (is-Concat!23735 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))))))))

(declare-fun e!3277600 () Bool)

(assert (=> b!5270088 (= e!3277600 e!3277601)))

(declare-fun b!5270089 () Bool)

(declare-fun e!3277599 () Bool)

(assert (=> b!5270089 (= e!3277599 call!374376)))

(declare-fun bm!374370 () Bool)

(declare-fun call!374375 () Bool)

(declare-fun call!374377 () Bool)

(assert (=> bm!374370 (= call!374375 call!374377)))

(declare-fun b!5270090 () Bool)

(declare-fun e!3277603 () Bool)

(assert (=> b!5270090 (= e!3277603 call!374377)))

(declare-fun b!5270091 () Bool)

(assert (=> b!5270091 (= e!3277601 e!3277605)))

(declare-fun res!2235770 () Bool)

(assert (=> b!5270091 (=> (not res!2235770) (not e!3277605))))

(assert (=> b!5270091 (= res!2235770 call!374375)))

(declare-fun b!5270092 () Bool)

(assert (=> b!5270092 (= e!3277604 e!3277603)))

(declare-fun res!2235774 () Bool)

(assert (=> b!5270092 (= res!2235774 (not (nullable!5059 (reg!15219 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))))

(assert (=> b!5270092 (=> (not res!2235774) (not e!3277603))))

(declare-fun bm!374372 () Bool)

(declare-fun c!912757 () Bool)

(assert (=> bm!374372 (= call!374376 (validRegex!6626 (ite c!912757 (regTwo!30293 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))) (regTwo!30292 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))))

(declare-fun bm!374371 () Bool)

(assert (=> bm!374371 (= call!374377 (validRegex!6626 (ite c!912756 (reg!15219 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))) (ite c!912757 (regOne!30293 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))) (regOne!30292 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))))))))))

(declare-fun d!1695889 () Bool)

(declare-fun res!2235773 () Bool)

(assert (=> d!1695889 (=> res!2235773 e!3277602)))

(assert (=> d!1695889 (= res!2235773 (is-ElementMatch!14890 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))

(assert (=> d!1695889 (= (validRegex!6626 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))) e!3277602)))

(declare-fun b!5270093 () Bool)

(declare-fun res!2235772 () Bool)

(assert (=> b!5270093 (=> (not res!2235772) (not e!3277599))))

(assert (=> b!5270093 (= res!2235772 call!374375)))

(assert (=> b!5270093 (= e!3277600 e!3277599)))

(declare-fun b!5270094 () Bool)

(assert (=> b!5270094 (= e!3277604 e!3277600)))

(assert (=> b!5270094 (= c!912757 (is-Union!14890 (ite c!912538 (reg!15219 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912539 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))

(assert (= (and d!1695889 (not res!2235773)) b!5270087))

(assert (= (and b!5270087 c!912756) b!5270092))

(assert (= (and b!5270087 (not c!912756)) b!5270094))

(assert (= (and b!5270092 res!2235774) b!5270090))

(assert (= (and b!5270094 c!912757) b!5270093))

(assert (= (and b!5270094 (not c!912757)) b!5270088))

(assert (= (and b!5270093 res!2235772) b!5270089))

(assert (= (and b!5270088 (not res!2235771)) b!5270091))

(assert (= (and b!5270091 res!2235770) b!5270086))

(assert (= (or b!5270089 b!5270086) bm!374372))

(assert (= (or b!5270093 b!5270091) bm!374370))

(assert (= (or b!5270090 bm!374370) bm!374371))

(declare-fun m!6309360 () Bool)

(assert (=> b!5270092 m!6309360))

(declare-fun m!6309362 () Bool)

(assert (=> bm!374372 m!6309362))

(declare-fun m!6309364 () Bool)

(assert (=> bm!374371 m!6309364))

(assert (=> bm!374261 d!1695889))

(declare-fun d!1695891 () Bool)

(assert (=> d!1695891 (= (isEmpty!32797 (t!374163 s!2326)) (is-Nil!60846 (t!374163 s!2326)))))

(assert (=> d!1695717 d!1695891))

(declare-fun b!5270095 () Bool)

(declare-fun res!2235777 () Bool)

(declare-fun e!3277609 () Bool)

(assert (=> b!5270095 (=> res!2235777 e!3277609)))

(assert (=> b!5270095 (= res!2235777 (not (is-ElementMatch!14890 (regTwo!30292 r!7292))))))

(declare-fun e!3277610 () Bool)

(assert (=> b!5270095 (= e!3277610 e!3277609)))

(declare-fun b!5270096 () Bool)

(declare-fun e!3277607 () Bool)

(assert (=> b!5270096 (= e!3277607 (matchR!7075 (derivativeStep!4110 (regTwo!30292 r!7292) (head!11297 (_2!35392 (get!20920 lt!2156556)))) (tail!10394 (_2!35392 (get!20920 lt!2156556)))))))

(declare-fun b!5270097 () Bool)

(declare-fun e!3277606 () Bool)

(declare-fun e!3277608 () Bool)

(assert (=> b!5270097 (= e!3277606 e!3277608)))

(declare-fun res!2235775 () Bool)

(assert (=> b!5270097 (=> res!2235775 e!3277608)))

(declare-fun call!374378 () Bool)

(assert (=> b!5270097 (= res!2235775 call!374378)))

(declare-fun b!5270098 () Bool)

(assert (=> b!5270098 (= e!3277609 e!3277606)))

(declare-fun res!2235780 () Bool)

(assert (=> b!5270098 (=> (not res!2235780) (not e!3277606))))

(declare-fun lt!2156629 () Bool)

(assert (=> b!5270098 (= res!2235780 (not lt!2156629))))

(declare-fun b!5270099 () Bool)

(declare-fun e!3277612 () Bool)

(assert (=> b!5270099 (= e!3277612 (= lt!2156629 call!374378))))

(declare-fun b!5270100 () Bool)

(assert (=> b!5270100 (= e!3277612 e!3277610)))

(declare-fun c!912760 () Bool)

(assert (=> b!5270100 (= c!912760 (is-EmptyLang!14890 (regTwo!30292 r!7292)))))

(declare-fun b!5270101 () Bool)

(assert (=> b!5270101 (= e!3277608 (not (= (head!11297 (_2!35392 (get!20920 lt!2156556))) (c!912522 (regTwo!30292 r!7292)))))))

(declare-fun b!5270102 () Bool)

(declare-fun res!2235776 () Bool)

(declare-fun e!3277611 () Bool)

(assert (=> b!5270102 (=> (not res!2235776) (not e!3277611))))

(assert (=> b!5270102 (= res!2235776 (not call!374378))))

(declare-fun b!5270104 () Bool)

(declare-fun res!2235779 () Bool)

(assert (=> b!5270104 (=> (not res!2235779) (not e!3277611))))

(assert (=> b!5270104 (= res!2235779 (isEmpty!32797 (tail!10394 (_2!35392 (get!20920 lt!2156556)))))))

(declare-fun b!5270105 () Bool)

(declare-fun res!2235781 () Bool)

(assert (=> b!5270105 (=> res!2235781 e!3277609)))

(assert (=> b!5270105 (= res!2235781 e!3277611)))

(declare-fun res!2235778 () Bool)

(assert (=> b!5270105 (=> (not res!2235778) (not e!3277611))))

(assert (=> b!5270105 (= res!2235778 lt!2156629)))

(declare-fun b!5270106 () Bool)

(assert (=> b!5270106 (= e!3277611 (= (head!11297 (_2!35392 (get!20920 lt!2156556))) (c!912522 (regTwo!30292 r!7292))))))

(declare-fun b!5270107 () Bool)

(assert (=> b!5270107 (= e!3277607 (nullable!5059 (regTwo!30292 r!7292)))))

(declare-fun b!5270103 () Bool)

(assert (=> b!5270103 (= e!3277610 (not lt!2156629))))

(declare-fun d!1695893 () Bool)

(assert (=> d!1695893 e!3277612))

(declare-fun c!912759 () Bool)

(assert (=> d!1695893 (= c!912759 (is-EmptyExpr!14890 (regTwo!30292 r!7292)))))

(assert (=> d!1695893 (= lt!2156629 e!3277607)))

(declare-fun c!912758 () Bool)

(assert (=> d!1695893 (= c!912758 (isEmpty!32797 (_2!35392 (get!20920 lt!2156556))))))

(assert (=> d!1695893 (validRegex!6626 (regTwo!30292 r!7292))))

(assert (=> d!1695893 (= (matchR!7075 (regTwo!30292 r!7292) (_2!35392 (get!20920 lt!2156556))) lt!2156629)))

(declare-fun b!5270108 () Bool)

(declare-fun res!2235782 () Bool)

(assert (=> b!5270108 (=> res!2235782 e!3277608)))

(assert (=> b!5270108 (= res!2235782 (not (isEmpty!32797 (tail!10394 (_2!35392 (get!20920 lt!2156556))))))))

(declare-fun bm!374373 () Bool)

(assert (=> bm!374373 (= call!374378 (isEmpty!32797 (_2!35392 (get!20920 lt!2156556))))))

(assert (= (and d!1695893 c!912758) b!5270107))

(assert (= (and d!1695893 (not c!912758)) b!5270096))

(assert (= (and d!1695893 c!912759) b!5270099))

(assert (= (and d!1695893 (not c!912759)) b!5270100))

(assert (= (and b!5270100 c!912760) b!5270103))

(assert (= (and b!5270100 (not c!912760)) b!5270095))

(assert (= (and b!5270095 (not res!2235777)) b!5270105))

(assert (= (and b!5270105 res!2235778) b!5270102))

(assert (= (and b!5270102 res!2235776) b!5270104))

(assert (= (and b!5270104 res!2235779) b!5270106))

(assert (= (and b!5270105 (not res!2235781)) b!5270098))

(assert (= (and b!5270098 res!2235780) b!5270097))

(assert (= (and b!5270097 (not res!2235775)) b!5270108))

(assert (= (and b!5270108 (not res!2235782)) b!5270101))

(assert (= (or b!5270099 b!5270097 b!5270102) bm!374373))

(declare-fun m!6309366 () Bool)

(assert (=> b!5270106 m!6309366))

(declare-fun m!6309368 () Bool)

(assert (=> b!5270107 m!6309368))

(declare-fun m!6309370 () Bool)

(assert (=> b!5270104 m!6309370))

(assert (=> b!5270104 m!6309370))

(declare-fun m!6309372 () Bool)

(assert (=> b!5270104 m!6309372))

(assert (=> b!5270096 m!6309366))

(assert (=> b!5270096 m!6309366))

(declare-fun m!6309374 () Bool)

(assert (=> b!5270096 m!6309374))

(assert (=> b!5270096 m!6309370))

(assert (=> b!5270096 m!6309374))

(assert (=> b!5270096 m!6309370))

(declare-fun m!6309376 () Bool)

(assert (=> b!5270096 m!6309376))

(declare-fun m!6309378 () Bool)

(assert (=> bm!374373 m!6309378))

(assert (=> b!5270101 m!6309366))

(assert (=> d!1695893 m!6309378))

(declare-fun m!6309380 () Bool)

(assert (=> d!1695893 m!6309380))

(assert (=> b!5270108 m!6309370))

(assert (=> b!5270108 m!6309370))

(assert (=> b!5270108 m!6309372))

(assert (=> b!5269400 d!1695893))

(declare-fun d!1695895 () Bool)

(assert (=> d!1695895 (= (get!20920 lt!2156556) (v!51029 lt!2156556))))

(assert (=> b!5269400 d!1695895))

(declare-fun b!5270109 () Bool)

(declare-fun e!3277613 () (Set Context!8548))

(declare-fun call!374379 () (Set Context!8548))

(assert (=> b!5270109 (= e!3277613 call!374379)))

(declare-fun b!5270110 () Bool)

(declare-fun e!3277614 () (Set Context!8548))

(assert (=> b!5270110 (= e!3277614 e!3277613)))

(declare-fun c!912761 () Bool)

(assert (=> b!5270110 (= c!912761 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))))))

(declare-fun d!1695897 () Bool)

(declare-fun c!912762 () Bool)

(declare-fun e!3277615 () Bool)

(assert (=> d!1695897 (= c!912762 e!3277615)))

(declare-fun res!2235783 () Bool)

(assert (=> d!1695897 (=> (not res!2235783) (not e!3277615))))

(assert (=> d!1695897 (= res!2235783 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))))))

(assert (=> d!1695897 (= (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (h!67294 s!2326)) e!3277614)))

(declare-fun b!5270111 () Bool)

(assert (=> b!5270111 (= e!3277613 (as set.empty (Set Context!8548)))))

(declare-fun bm!374374 () Bool)

(assert (=> bm!374374 (= call!374379 (derivationStepZipperDown!338 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))) (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))))) (h!67294 s!2326)))))

(declare-fun b!5270112 () Bool)

(assert (=> b!5270112 (= e!3277615 (nullable!5059 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))))))))

(declare-fun b!5270113 () Bool)

(assert (=> b!5270113 (= e!3277614 (set.union call!374379 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))))) (h!67294 s!2326))))))

(assert (= (and d!1695897 res!2235783) b!5270112))

(assert (= (and d!1695897 c!912762) b!5270113))

(assert (= (and d!1695897 (not c!912762)) b!5270110))

(assert (= (and b!5270110 c!912761) b!5270109))

(assert (= (and b!5270110 (not c!912761)) b!5270111))

(assert (= (or b!5270113 b!5270109) bm!374374))

(declare-fun m!6309382 () Bool)

(assert (=> bm!374374 m!6309382))

(declare-fun m!6309384 () Bool)

(assert (=> b!5270112 m!6309384))

(declare-fun m!6309386 () Bool)

(assert (=> b!5270113 m!6309386))

(assert (=> b!5269494 d!1695897))

(declare-fun b!5270114 () Bool)

(declare-fun e!3277616 () (Set Context!8548))

(declare-fun call!374380 () (Set Context!8548))

(assert (=> b!5270114 (= e!3277616 call!374380)))

(declare-fun b!5270115 () Bool)

(declare-fun e!3277617 () (Set Context!8548))

(assert (=> b!5270115 (= e!3277617 e!3277616)))

(declare-fun c!912763 () Bool)

(assert (=> b!5270115 (= c!912763 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))))))))

(declare-fun d!1695899 () Bool)

(declare-fun c!912764 () Bool)

(declare-fun e!3277618 () Bool)

(assert (=> d!1695899 (= c!912764 e!3277618)))

(declare-fun res!2235784 () Bool)

(assert (=> d!1695899 (=> (not res!2235784) (not e!3277618))))

(assert (=> d!1695899 (= res!2235784 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))))))))

(assert (=> d!1695899 (= (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))) (h!67294 s!2326)) e!3277617)))

(declare-fun b!5270116 () Bool)

(assert (=> b!5270116 (= e!3277616 (as set.empty (Set Context!8548)))))

(declare-fun bm!374375 () Bool)

(assert (=> bm!374375 (= call!374380 (derivationStepZipperDown!338 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))))) (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343))))))) (h!67294 s!2326)))))

(declare-fun b!5270117 () Bool)

(assert (=> b!5270117 (= e!3277618 (nullable!5059 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343))))))))))

(declare-fun b!5270118 () Bool)

(assert (=> b!5270118 (= e!3277617 (set.union call!374380 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343))))))) (h!67294 s!2326))))))

(assert (= (and d!1695899 res!2235784) b!5270117))

(assert (= (and d!1695899 c!912764) b!5270118))

(assert (= (and d!1695899 (not c!912764)) b!5270115))

(assert (= (and b!5270115 c!912763) b!5270114))

(assert (= (and b!5270115 (not c!912763)) b!5270116))

(assert (= (or b!5270118 b!5270114) bm!374375))

(declare-fun m!6309388 () Bool)

(assert (=> bm!374375 m!6309388))

(declare-fun m!6309390 () Bool)

(assert (=> b!5270117 m!6309390))

(declare-fun m!6309392 () Bool)

(assert (=> b!5270118 m!6309392))

(assert (=> b!5269499 d!1695899))

(declare-fun b!5270119 () Bool)

(declare-fun res!2235787 () Bool)

(declare-fun e!3277622 () Bool)

(assert (=> b!5270119 (=> res!2235787 e!3277622)))

(assert (=> b!5270119 (= res!2235787 (not (is-ElementMatch!14890 (regTwo!30292 r!7292))))))

(declare-fun e!3277623 () Bool)

(assert (=> b!5270119 (= e!3277623 e!3277622)))

(declare-fun b!5270120 () Bool)

(declare-fun e!3277620 () Bool)

(assert (=> b!5270120 (= e!3277620 (matchR!7075 (derivativeStep!4110 (regTwo!30292 r!7292) (head!11297 s!2326)) (tail!10394 s!2326)))))

(declare-fun b!5270121 () Bool)

(declare-fun e!3277619 () Bool)

(declare-fun e!3277621 () Bool)

(assert (=> b!5270121 (= e!3277619 e!3277621)))

(declare-fun res!2235785 () Bool)

(assert (=> b!5270121 (=> res!2235785 e!3277621)))

(declare-fun call!374381 () Bool)

(assert (=> b!5270121 (= res!2235785 call!374381)))

(declare-fun b!5270122 () Bool)

(assert (=> b!5270122 (= e!3277622 e!3277619)))

(declare-fun res!2235790 () Bool)

(assert (=> b!5270122 (=> (not res!2235790) (not e!3277619))))

(declare-fun lt!2156630 () Bool)

(assert (=> b!5270122 (= res!2235790 (not lt!2156630))))

(declare-fun b!5270123 () Bool)

(declare-fun e!3277625 () Bool)

(assert (=> b!5270123 (= e!3277625 (= lt!2156630 call!374381))))

(declare-fun b!5270124 () Bool)

(assert (=> b!5270124 (= e!3277625 e!3277623)))

(declare-fun c!912767 () Bool)

(assert (=> b!5270124 (= c!912767 (is-EmptyLang!14890 (regTwo!30292 r!7292)))))

(declare-fun b!5270125 () Bool)

(assert (=> b!5270125 (= e!3277621 (not (= (head!11297 s!2326) (c!912522 (regTwo!30292 r!7292)))))))

(declare-fun b!5270126 () Bool)

(declare-fun res!2235786 () Bool)

(declare-fun e!3277624 () Bool)

(assert (=> b!5270126 (=> (not res!2235786) (not e!3277624))))

(assert (=> b!5270126 (= res!2235786 (not call!374381))))

(declare-fun b!5270128 () Bool)

(declare-fun res!2235789 () Bool)

(assert (=> b!5270128 (=> (not res!2235789) (not e!3277624))))

(assert (=> b!5270128 (= res!2235789 (isEmpty!32797 (tail!10394 s!2326)))))

(declare-fun b!5270129 () Bool)

(declare-fun res!2235791 () Bool)

(assert (=> b!5270129 (=> res!2235791 e!3277622)))

(assert (=> b!5270129 (= res!2235791 e!3277624)))

(declare-fun res!2235788 () Bool)

(assert (=> b!5270129 (=> (not res!2235788) (not e!3277624))))

(assert (=> b!5270129 (= res!2235788 lt!2156630)))

(declare-fun b!5270130 () Bool)

(assert (=> b!5270130 (= e!3277624 (= (head!11297 s!2326) (c!912522 (regTwo!30292 r!7292))))))

(declare-fun b!5270131 () Bool)

(assert (=> b!5270131 (= e!3277620 (nullable!5059 (regTwo!30292 r!7292)))))

(declare-fun b!5270127 () Bool)

(assert (=> b!5270127 (= e!3277623 (not lt!2156630))))

(declare-fun d!1695901 () Bool)

(assert (=> d!1695901 e!3277625))

(declare-fun c!912766 () Bool)

(assert (=> d!1695901 (= c!912766 (is-EmptyExpr!14890 (regTwo!30292 r!7292)))))

(assert (=> d!1695901 (= lt!2156630 e!3277620)))

(declare-fun c!912765 () Bool)

(assert (=> d!1695901 (= c!912765 (isEmpty!32797 s!2326))))

(assert (=> d!1695901 (validRegex!6626 (regTwo!30292 r!7292))))

(assert (=> d!1695901 (= (matchR!7075 (regTwo!30292 r!7292) s!2326) lt!2156630)))

(declare-fun b!5270132 () Bool)

(declare-fun res!2235792 () Bool)

(assert (=> b!5270132 (=> res!2235792 e!3277621)))

(assert (=> b!5270132 (= res!2235792 (not (isEmpty!32797 (tail!10394 s!2326))))))

(declare-fun bm!374376 () Bool)

(assert (=> bm!374376 (= call!374381 (isEmpty!32797 s!2326))))

(assert (= (and d!1695901 c!912765) b!5270131))

(assert (= (and d!1695901 (not c!912765)) b!5270120))

(assert (= (and d!1695901 c!912766) b!5270123))

(assert (= (and d!1695901 (not c!912766)) b!5270124))

(assert (= (and b!5270124 c!912767) b!5270127))

(assert (= (and b!5270124 (not c!912767)) b!5270119))

(assert (= (and b!5270119 (not res!2235787)) b!5270129))

(assert (= (and b!5270129 res!2235788) b!5270126))

(assert (= (and b!5270126 res!2235786) b!5270128))

(assert (= (and b!5270128 res!2235789) b!5270130))

(assert (= (and b!5270129 (not res!2235791)) b!5270122))

(assert (= (and b!5270122 res!2235790) b!5270121))

(assert (= (and b!5270121 (not res!2235785)) b!5270132))

(assert (= (and b!5270132 (not res!2235792)) b!5270125))

(assert (= (or b!5270123 b!5270121 b!5270126) bm!374376))

(assert (=> b!5270130 m!6309056))

(assert (=> b!5270131 m!6309368))

(assert (=> b!5270128 m!6309060))

(assert (=> b!5270128 m!6309060))

(assert (=> b!5270128 m!6309062))

(assert (=> b!5270120 m!6309056))

(assert (=> b!5270120 m!6309056))

(declare-fun m!6309394 () Bool)

(assert (=> b!5270120 m!6309394))

(assert (=> b!5270120 m!6309060))

(assert (=> b!5270120 m!6309394))

(assert (=> b!5270120 m!6309060))

(declare-fun m!6309396 () Bool)

(assert (=> b!5270120 m!6309396))

(assert (=> bm!374376 m!6309050))

(assert (=> b!5270125 m!6309056))

(assert (=> d!1695901 m!6309050))

(assert (=> d!1695901 m!6309380))

(assert (=> b!5270132 m!6309060))

(assert (=> b!5270132 m!6309060))

(assert (=> b!5270132 m!6309062))

(assert (=> b!5269404 d!1695901))

(declare-fun d!1695903 () Bool)

(assert (=> d!1695903 (= (isEmpty!32794 (exprs!4774 (h!67295 zl!343))) (is-Nil!60845 (exprs!4774 (h!67295 zl!343))))))

(assert (=> b!5269346 d!1695903))

(declare-fun d!1695905 () Bool)

(assert (=> d!1695905 true))

(declare-fun setRes!33734 () Bool)

(assert (=> d!1695905 setRes!33734))

(declare-fun condSetEmpty!33734 () Bool)

(declare-fun res!2235795 () (Set Context!8548))

(assert (=> d!1695905 (= condSetEmpty!33734 (= res!2235795 (as set.empty (Set Context!8548))))))

(assert (=> d!1695905 (= (choose!39315 lt!2156463 lambda!265800) res!2235795)))

(declare-fun setIsEmpty!33734 () Bool)

(assert (=> setIsEmpty!33734 setRes!33734))

(declare-fun tp!1472958 () Bool)

(declare-fun setNonEmpty!33734 () Bool)

(declare-fun setElem!33734 () Context!8548)

(declare-fun e!3277628 () Bool)

(assert (=> setNonEmpty!33734 (= setRes!33734 (and tp!1472958 (inv!80473 setElem!33734) e!3277628))))

(declare-fun setRest!33734 () (Set Context!8548))

(assert (=> setNonEmpty!33734 (= res!2235795 (set.union (set.insert setElem!33734 (as set.empty (Set Context!8548))) setRest!33734))))

(declare-fun b!5270135 () Bool)

(declare-fun tp!1472959 () Bool)

(assert (=> b!5270135 (= e!3277628 tp!1472959)))

(assert (= (and d!1695905 condSetEmpty!33734) setIsEmpty!33734))

(assert (= (and d!1695905 (not condSetEmpty!33734)) setNonEmpty!33734))

(assert (= setNonEmpty!33734 b!5270135))

(declare-fun m!6309398 () Bool)

(assert (=> setNonEmpty!33734 m!6309398))

(assert (=> d!1695753 d!1695905))

(declare-fun d!1695907 () Bool)

(assert (=> d!1695907 (= (isEmpty!32794 (tail!10393 (unfocusZipperList!332 zl!343))) (is-Nil!60845 (tail!10393 (unfocusZipperList!332 zl!343))))))

(assert (=> b!5269630 d!1695907))

(declare-fun d!1695909 () Bool)

(assert (=> d!1695909 (= (tail!10393 (unfocusZipperList!332 zl!343)) (t!374162 (unfocusZipperList!332 zl!343)))))

(assert (=> b!5269630 d!1695909))

(declare-fun d!1695911 () Bool)

(assert (=> d!1695911 (= (nullable!5059 r!7292) (nullableFct!1441 r!7292))))

(declare-fun bs!1221093 () Bool)

(assert (= bs!1221093 d!1695911))

(declare-fun m!6309400 () Bool)

(assert (=> bs!1221093 m!6309400))

(assert (=> b!5269599 d!1695911))

(declare-fun bm!374377 () Bool)

(declare-fun call!374383 () (Set Context!8548))

(declare-fun call!374384 () (Set Context!8548))

(assert (=> bm!374377 (= call!374383 call!374384)))

(declare-fun b!5270136 () Bool)

(declare-fun e!3277632 () (Set Context!8548))

(declare-fun call!374387 () (Set Context!8548))

(assert (=> b!5270136 (= e!3277632 (set.union call!374387 call!374384))))

(declare-fun bm!374378 () Bool)

(declare-fun call!374386 () List!60969)

(declare-fun c!912771 () Bool)

(declare-fun c!912769 () Bool)

(assert (=> bm!374378 (= call!374386 ($colon$colon!1339 (exprs!4774 (ite (or c!912602 c!912605) lt!2156452 (Context!8549 call!374304))) (ite (or c!912771 c!912769) (regTwo!30292 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))) (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343))))))))))))

(declare-fun bm!374379 () Bool)

(declare-fun call!374385 () List!60969)

(assert (=> bm!374379 (= call!374385 call!374386)))

(declare-fun e!3277631 () Bool)

(declare-fun b!5270137 () Bool)

(assert (=> b!5270137 (= e!3277631 (nullable!5059 (regOne!30292 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343))))))))))))

(declare-fun bm!374380 () Bool)

(declare-fun c!912768 () Bool)

(assert (=> bm!374380 (= call!374387 (derivationStepZipperDown!338 (ite c!912768 (regOne!30293 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))) (regOne!30292 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343))))))))) (ite c!912768 (ite (or c!912602 c!912605) lt!2156452 (Context!8549 call!374304)) (Context!8549 call!374386)) (h!67294 s!2326)))))

(declare-fun c!912772 () Bool)

(declare-fun d!1695913 () Bool)

(assert (=> d!1695913 (= c!912772 (and (is-ElementMatch!14890 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))) (= (c!912522 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))) (h!67294 s!2326))))))

(declare-fun e!3277629 () (Set Context!8548))

(assert (=> d!1695913 (= (derivationStepZipperDown!338 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343))))))) (ite (or c!912602 c!912605) lt!2156452 (Context!8549 call!374304)) (h!67294 s!2326)) e!3277629)))

(declare-fun b!5270138 () Bool)

(declare-fun c!912770 () Bool)

(assert (=> b!5270138 (= c!912770 (is-Star!14890 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))))

(declare-fun e!3277633 () (Set Context!8548))

(declare-fun e!3277630 () (Set Context!8548))

(assert (=> b!5270138 (= e!3277633 e!3277630)))

(declare-fun b!5270139 () Bool)

(assert (=> b!5270139 (= e!3277630 call!374383)))

(declare-fun b!5270140 () Bool)

(declare-fun e!3277634 () (Set Context!8548))

(assert (=> b!5270140 (= e!3277629 e!3277634)))

(assert (=> b!5270140 (= c!912768 (is-Union!14890 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))))

(declare-fun b!5270141 () Bool)

(declare-fun call!374382 () (Set Context!8548))

(assert (=> b!5270141 (= e!3277634 (set.union call!374387 call!374382))))

(declare-fun b!5270142 () Bool)

(assert (=> b!5270142 (= c!912771 e!3277631)))

(declare-fun res!2235796 () Bool)

(assert (=> b!5270142 (=> (not res!2235796) (not e!3277631))))

(assert (=> b!5270142 (= res!2235796 (is-Concat!23735 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))))

(assert (=> b!5270142 (= e!3277634 e!3277632)))

(declare-fun b!5270143 () Bool)

(assert (=> b!5270143 (= e!3277630 (as set.empty (Set Context!8548)))))

(declare-fun b!5270144 () Bool)

(assert (=> b!5270144 (= e!3277632 e!3277633)))

(assert (=> b!5270144 (= c!912769 (is-Concat!23735 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))))

(declare-fun b!5270145 () Bool)

(assert (=> b!5270145 (= e!3277629 (set.insert (ite (or c!912602 c!912605) lt!2156452 (Context!8549 call!374304)) (as set.empty (Set Context!8548))))))

(declare-fun bm!374381 () Bool)

(assert (=> bm!374381 (= call!374384 call!374382)))

(declare-fun b!5270146 () Bool)

(assert (=> b!5270146 (= e!3277633 call!374383)))

(declare-fun bm!374382 () Bool)

(assert (=> bm!374382 (= call!374382 (derivationStepZipperDown!338 (ite c!912768 (regTwo!30293 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))) (ite c!912771 (regTwo!30292 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))) (ite c!912769 (regOne!30292 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343)))))))) (reg!15219 (ite c!912602 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912605 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912603 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343))))))))))) (ite (or c!912768 c!912771) (ite (or c!912602 c!912605) lt!2156452 (Context!8549 call!374304)) (Context!8549 call!374385)) (h!67294 s!2326)))))

(assert (= (and d!1695913 c!912772) b!5270145))

(assert (= (and d!1695913 (not c!912772)) b!5270140))

(assert (= (and b!5270140 c!912768) b!5270141))

(assert (= (and b!5270140 (not c!912768)) b!5270142))

(assert (= (and b!5270142 res!2235796) b!5270137))

(assert (= (and b!5270142 c!912771) b!5270136))

(assert (= (and b!5270142 (not c!912771)) b!5270144))

(assert (= (and b!5270144 c!912769) b!5270146))

(assert (= (and b!5270144 (not c!912769)) b!5270138))

(assert (= (and b!5270138 c!912770) b!5270139))

(assert (= (and b!5270138 (not c!912770)) b!5270143))

(assert (= (or b!5270146 b!5270139) bm!374379))

(assert (= (or b!5270146 b!5270139) bm!374377))

(assert (= (or b!5270136 bm!374379) bm!374378))

(assert (= (or b!5270136 bm!374377) bm!374381))

(assert (= (or b!5270141 bm!374381) bm!374382))

(assert (= (or b!5270141 b!5270136) bm!374380))

(declare-fun m!6309402 () Bool)

(assert (=> bm!374380 m!6309402))

(declare-fun m!6309404 () Bool)

(assert (=> bm!374382 m!6309404))

(declare-fun m!6309406 () Bool)

(assert (=> b!5270145 m!6309406))

(declare-fun m!6309408 () Bool)

(assert (=> bm!374378 m!6309408))

(declare-fun m!6309410 () Bool)

(assert (=> b!5270137 m!6309410))

(assert (=> bm!374301 d!1695913))

(declare-fun b!5270161 () Bool)

(declare-fun e!3277650 () Bool)

(declare-fun e!3277649 () Bool)

(assert (=> b!5270161 (= e!3277650 e!3277649)))

(declare-fun res!2235808 () Bool)

(assert (=> b!5270161 (=> res!2235808 e!3277649)))

(assert (=> b!5270161 (= res!2235808 (is-Star!14890 (regTwo!30292 (regOne!30292 r!7292))))))

(declare-fun b!5270162 () Bool)

(declare-fun e!3277647 () Bool)

(declare-fun call!374393 () Bool)

(assert (=> b!5270162 (= e!3277647 call!374393)))

(declare-fun bm!374387 () Bool)

(declare-fun c!912775 () Bool)

(assert (=> bm!374387 (= call!374393 (nullable!5059 (ite c!912775 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(declare-fun b!5270163 () Bool)

(declare-fun e!3277652 () Bool)

(assert (=> b!5270163 (= e!3277649 e!3277652)))

(assert (=> b!5270163 (= c!912775 (is-Union!14890 (regTwo!30292 (regOne!30292 r!7292))))))

(declare-fun b!5270164 () Bool)

(declare-fun e!3277648 () Bool)

(assert (=> b!5270164 (= e!3277648 call!374393)))

(declare-fun b!5270165 () Bool)

(assert (=> b!5270165 (= e!3277652 e!3277648)))

(declare-fun res!2235810 () Bool)

(declare-fun call!374392 () Bool)

(assert (=> b!5270165 (= res!2235810 call!374392)))

(assert (=> b!5270165 (=> (not res!2235810) (not e!3277648))))

(declare-fun b!5270166 () Bool)

(assert (=> b!5270166 (= e!3277652 e!3277647)))

(declare-fun res!2235807 () Bool)

(assert (=> b!5270166 (= res!2235807 call!374392)))

(assert (=> b!5270166 (=> res!2235807 e!3277647)))

(declare-fun d!1695915 () Bool)

(declare-fun res!2235811 () Bool)

(declare-fun e!3277651 () Bool)

(assert (=> d!1695915 (=> res!2235811 e!3277651)))

(assert (=> d!1695915 (= res!2235811 (is-EmptyExpr!14890 (regTwo!30292 (regOne!30292 r!7292))))))

(assert (=> d!1695915 (= (nullableFct!1441 (regTwo!30292 (regOne!30292 r!7292))) e!3277651)))

(declare-fun b!5270167 () Bool)

(assert (=> b!5270167 (= e!3277651 e!3277650)))

(declare-fun res!2235809 () Bool)

(assert (=> b!5270167 (=> (not res!2235809) (not e!3277650))))

(assert (=> b!5270167 (= res!2235809 (and (not (is-EmptyLang!14890 (regTwo!30292 (regOne!30292 r!7292)))) (not (is-ElementMatch!14890 (regTwo!30292 (regOne!30292 r!7292))))))))

(declare-fun bm!374388 () Bool)

(assert (=> bm!374388 (= call!374392 (nullable!5059 (ite c!912775 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(assert (= (and d!1695915 (not res!2235811)) b!5270167))

(assert (= (and b!5270167 res!2235809) b!5270161))

(assert (= (and b!5270161 (not res!2235808)) b!5270163))

(assert (= (and b!5270163 c!912775) b!5270166))

(assert (= (and b!5270163 (not c!912775)) b!5270165))

(assert (= (and b!5270166 (not res!2235807)) b!5270162))

(assert (= (and b!5270165 res!2235810) b!5270164))

(assert (= (or b!5270162 b!5270164) bm!374387))

(assert (= (or b!5270166 b!5270165) bm!374388))

(declare-fun m!6309412 () Bool)

(assert (=> bm!374387 m!6309412))

(declare-fun m!6309414 () Bool)

(assert (=> bm!374388 m!6309414))

(assert (=> d!1695751 d!1695915))

(declare-fun d!1695917 () Bool)

(assert (=> d!1695917 (= (Exists!2071 (ite c!912620 lambda!265839 lambda!265840)) (choose!39312 (ite c!912620 lambda!265839 lambda!265840)))))

(declare-fun bs!1221094 () Bool)

(assert (= bs!1221094 d!1695917))

(declare-fun m!6309416 () Bool)

(assert (=> bs!1221094 m!6309416))

(assert (=> bm!374308 d!1695917))

(declare-fun d!1695919 () Bool)

(assert (=> d!1695919 (= (isEmptyLang!832 lt!2156580) (is-EmptyLang!14890 lt!2156580))))

(assert (=> b!5269622 d!1695919))

(declare-fun d!1695921 () Bool)

(assert (=> d!1695921 (= (nullable!5059 (h!67293 (exprs!4774 lt!2156452))) (nullableFct!1441 (h!67293 (exprs!4774 lt!2156452))))))

(declare-fun bs!1221095 () Bool)

(assert (= bs!1221095 d!1695921))

(declare-fun m!6309418 () Bool)

(assert (=> bs!1221095 m!6309418))

(assert (=> b!5269514 d!1695921))

(declare-fun d!1695923 () Bool)

(assert (=> d!1695923 true))

(assert (=> d!1695923 true))

(declare-fun res!2235814 () Bool)

(assert (=> d!1695923 (= (choose!39312 lambda!265798) res!2235814)))

(assert (=> d!1695727 d!1695923))

(declare-fun d!1695925 () Bool)

(declare-fun res!2235819 () Bool)

(declare-fun e!3277657 () Bool)

(assert (=> d!1695925 (=> res!2235819 e!3277657)))

(assert (=> d!1695925 (= res!2235819 (is-Nil!60845 (exprs!4774 (h!67295 zl!343))))))

(assert (=> d!1695925 (= (forall!14298 (exprs!4774 (h!67295 zl!343)) lambda!265822) e!3277657)))

(declare-fun b!5270172 () Bool)

(declare-fun e!3277658 () Bool)

(assert (=> b!5270172 (= e!3277657 e!3277658)))

(declare-fun res!2235820 () Bool)

(assert (=> b!5270172 (=> (not res!2235820) (not e!3277658))))

(declare-fun dynLambda!24044 (Int Regex!14890) Bool)

(assert (=> b!5270172 (= res!2235820 (dynLambda!24044 lambda!265822 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270173 () Bool)

(assert (=> b!5270173 (= e!3277658 (forall!14298 (t!374162 (exprs!4774 (h!67295 zl!343))) lambda!265822))))

(assert (= (and d!1695925 (not res!2235819)) b!5270172))

(assert (= (and b!5270172 res!2235820) b!5270173))

(declare-fun b_lambda!203269 () Bool)

(assert (=> (not b_lambda!203269) (not b!5270172)))

(declare-fun m!6309420 () Bool)

(assert (=> b!5270172 m!6309420))

(declare-fun m!6309422 () Bool)

(assert (=> b!5270173 m!6309422))

(assert (=> d!1695711 d!1695925))

(declare-fun bm!374389 () Bool)

(declare-fun call!374395 () (Set Context!8548))

(declare-fun call!374396 () (Set Context!8548))

(assert (=> bm!374389 (= call!374395 call!374396)))

(declare-fun b!5270174 () Bool)

(declare-fun e!3277662 () (Set Context!8548))

(declare-fun call!374399 () (Set Context!8548))

(assert (=> b!5270174 (= e!3277662 (set.union call!374399 call!374396))))

(declare-fun bm!374390 () Bool)

(declare-fun call!374398 () List!60969)

(declare-fun c!912777 () Bool)

(declare-fun c!912779 () Bool)

(assert (=> bm!374390 (= call!374398 ($colon$colon!1339 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156452)))) (ite (or c!912779 c!912777) (regTwo!30292 (h!67293 (exprs!4774 lt!2156452))) (h!67293 (exprs!4774 lt!2156452)))))))

(declare-fun bm!374391 () Bool)

(declare-fun call!374397 () List!60969)

(assert (=> bm!374391 (= call!374397 call!374398)))

(declare-fun b!5270175 () Bool)

(declare-fun e!3277661 () Bool)

(assert (=> b!5270175 (= e!3277661 (nullable!5059 (regOne!30292 (h!67293 (exprs!4774 lt!2156452)))))))

(declare-fun bm!374392 () Bool)

(declare-fun c!912776 () Bool)

(assert (=> bm!374392 (= call!374399 (derivationStepZipperDown!338 (ite c!912776 (regOne!30293 (h!67293 (exprs!4774 lt!2156452))) (regOne!30292 (h!67293 (exprs!4774 lt!2156452)))) (ite c!912776 (Context!8549 (t!374162 (exprs!4774 lt!2156452))) (Context!8549 call!374398)) (h!67294 s!2326)))))

(declare-fun d!1695927 () Bool)

(declare-fun c!912780 () Bool)

(assert (=> d!1695927 (= c!912780 (and (is-ElementMatch!14890 (h!67293 (exprs!4774 lt!2156452))) (= (c!912522 (h!67293 (exprs!4774 lt!2156452))) (h!67294 s!2326))))))

(declare-fun e!3277659 () (Set Context!8548))

(assert (=> d!1695927 (= (derivationStepZipperDown!338 (h!67293 (exprs!4774 lt!2156452)) (Context!8549 (t!374162 (exprs!4774 lt!2156452))) (h!67294 s!2326)) e!3277659)))

(declare-fun b!5270176 () Bool)

(declare-fun c!912778 () Bool)

(assert (=> b!5270176 (= c!912778 (is-Star!14890 (h!67293 (exprs!4774 lt!2156452))))))

(declare-fun e!3277663 () (Set Context!8548))

(declare-fun e!3277660 () (Set Context!8548))

(assert (=> b!5270176 (= e!3277663 e!3277660)))

(declare-fun b!5270177 () Bool)

(assert (=> b!5270177 (= e!3277660 call!374395)))

(declare-fun b!5270178 () Bool)

(declare-fun e!3277664 () (Set Context!8548))

(assert (=> b!5270178 (= e!3277659 e!3277664)))

(assert (=> b!5270178 (= c!912776 (is-Union!14890 (h!67293 (exprs!4774 lt!2156452))))))

(declare-fun b!5270179 () Bool)

(declare-fun call!374394 () (Set Context!8548))

(assert (=> b!5270179 (= e!3277664 (set.union call!374399 call!374394))))

(declare-fun b!5270180 () Bool)

(assert (=> b!5270180 (= c!912779 e!3277661)))

(declare-fun res!2235821 () Bool)

(assert (=> b!5270180 (=> (not res!2235821) (not e!3277661))))

(assert (=> b!5270180 (= res!2235821 (is-Concat!23735 (h!67293 (exprs!4774 lt!2156452))))))

(assert (=> b!5270180 (= e!3277664 e!3277662)))

(declare-fun b!5270181 () Bool)

(assert (=> b!5270181 (= e!3277660 (as set.empty (Set Context!8548)))))

(declare-fun b!5270182 () Bool)

(assert (=> b!5270182 (= e!3277662 e!3277663)))

(assert (=> b!5270182 (= c!912777 (is-Concat!23735 (h!67293 (exprs!4774 lt!2156452))))))

(declare-fun b!5270183 () Bool)

(assert (=> b!5270183 (= e!3277659 (set.insert (Context!8549 (t!374162 (exprs!4774 lt!2156452))) (as set.empty (Set Context!8548))))))

(declare-fun bm!374393 () Bool)

(assert (=> bm!374393 (= call!374396 call!374394)))

(declare-fun b!5270184 () Bool)

(assert (=> b!5270184 (= e!3277663 call!374395)))

(declare-fun bm!374394 () Bool)

(assert (=> bm!374394 (= call!374394 (derivationStepZipperDown!338 (ite c!912776 (regTwo!30293 (h!67293 (exprs!4774 lt!2156452))) (ite c!912779 (regTwo!30292 (h!67293 (exprs!4774 lt!2156452))) (ite c!912777 (regOne!30292 (h!67293 (exprs!4774 lt!2156452))) (reg!15219 (h!67293 (exprs!4774 lt!2156452)))))) (ite (or c!912776 c!912779) (Context!8549 (t!374162 (exprs!4774 lt!2156452))) (Context!8549 call!374397)) (h!67294 s!2326)))))

(assert (= (and d!1695927 c!912780) b!5270183))

(assert (= (and d!1695927 (not c!912780)) b!5270178))

(assert (= (and b!5270178 c!912776) b!5270179))

(assert (= (and b!5270178 (not c!912776)) b!5270180))

(assert (= (and b!5270180 res!2235821) b!5270175))

(assert (= (and b!5270180 c!912779) b!5270174))

(assert (= (and b!5270180 (not c!912779)) b!5270182))

(assert (= (and b!5270182 c!912777) b!5270184))

(assert (= (and b!5270182 (not c!912777)) b!5270176))

(assert (= (and b!5270176 c!912778) b!5270177))

(assert (= (and b!5270176 (not c!912778)) b!5270181))

(assert (= (or b!5270184 b!5270177) bm!374391))

(assert (= (or b!5270184 b!5270177) bm!374389))

(assert (= (or b!5270174 bm!374391) bm!374390))

(assert (= (or b!5270174 bm!374389) bm!374393))

(assert (= (or b!5270179 bm!374393) bm!374394))

(assert (= (or b!5270179 b!5270174) bm!374392))

(declare-fun m!6309424 () Bool)

(assert (=> bm!374392 m!6309424))

(declare-fun m!6309426 () Bool)

(assert (=> bm!374394 m!6309426))

(declare-fun m!6309428 () Bool)

(assert (=> b!5270183 m!6309428))

(declare-fun m!6309430 () Bool)

(assert (=> bm!374390 m!6309430))

(declare-fun m!6309432 () Bool)

(assert (=> b!5270175 m!6309432))

(assert (=> bm!374302 d!1695927))

(assert (=> bs!1221047 d!1695763))

(declare-fun d!1695929 () Bool)

(declare-fun lambda!265880 () Int)

(declare-fun exists!1992 ((Set Context!8548) Int) Bool)

(assert (=> d!1695929 (= (nullableZipper!1289 lt!2156461) (exists!1992 lt!2156461 lambda!265880))))

(declare-fun bs!1221096 () Bool)

(assert (= bs!1221096 d!1695929))

(declare-fun m!6309434 () Bool)

(assert (=> bs!1221096 m!6309434))

(assert (=> b!5269375 d!1695929))

(assert (=> d!1695719 d!1695891))

(declare-fun b!5270185 () Bool)

(declare-fun e!3277671 () Bool)

(declare-fun call!374401 () Bool)

(assert (=> b!5270185 (= e!3277671 call!374401)))

(declare-fun b!5270186 () Bool)

(declare-fun e!3277668 () Bool)

(declare-fun e!3277670 () Bool)

(assert (=> b!5270186 (= e!3277668 e!3277670)))

(declare-fun c!912783 () Bool)

(assert (=> b!5270186 (= c!912783 (is-Star!14890 lt!2156580))))

(declare-fun b!5270187 () Bool)

(declare-fun res!2235823 () Bool)

(declare-fun e!3277667 () Bool)

(assert (=> b!5270187 (=> res!2235823 e!3277667)))

(assert (=> b!5270187 (= res!2235823 (not (is-Concat!23735 lt!2156580)))))

(declare-fun e!3277666 () Bool)

(assert (=> b!5270187 (= e!3277666 e!3277667)))

(declare-fun b!5270188 () Bool)

(declare-fun e!3277665 () Bool)

(assert (=> b!5270188 (= e!3277665 call!374401)))

(declare-fun bm!374395 () Bool)

(declare-fun call!374400 () Bool)

(declare-fun call!374402 () Bool)

(assert (=> bm!374395 (= call!374400 call!374402)))

(declare-fun b!5270189 () Bool)

(declare-fun e!3277669 () Bool)

(assert (=> b!5270189 (= e!3277669 call!374402)))

(declare-fun b!5270190 () Bool)

(assert (=> b!5270190 (= e!3277667 e!3277671)))

(declare-fun res!2235822 () Bool)

(assert (=> b!5270190 (=> (not res!2235822) (not e!3277671))))

(assert (=> b!5270190 (= res!2235822 call!374400)))

(declare-fun b!5270191 () Bool)

(assert (=> b!5270191 (= e!3277670 e!3277669)))

(declare-fun res!2235826 () Bool)

(assert (=> b!5270191 (= res!2235826 (not (nullable!5059 (reg!15219 lt!2156580))))))

(assert (=> b!5270191 (=> (not res!2235826) (not e!3277669))))

(declare-fun bm!374397 () Bool)

(declare-fun c!912784 () Bool)

(assert (=> bm!374397 (= call!374401 (validRegex!6626 (ite c!912784 (regTwo!30293 lt!2156580) (regTwo!30292 lt!2156580))))))

(declare-fun bm!374396 () Bool)

(assert (=> bm!374396 (= call!374402 (validRegex!6626 (ite c!912783 (reg!15219 lt!2156580) (ite c!912784 (regOne!30293 lt!2156580) (regOne!30292 lt!2156580)))))))

(declare-fun d!1695931 () Bool)

(declare-fun res!2235825 () Bool)

(assert (=> d!1695931 (=> res!2235825 e!3277668)))

(assert (=> d!1695931 (= res!2235825 (is-ElementMatch!14890 lt!2156580))))

(assert (=> d!1695931 (= (validRegex!6626 lt!2156580) e!3277668)))

(declare-fun b!5270192 () Bool)

(declare-fun res!2235824 () Bool)

(assert (=> b!5270192 (=> (not res!2235824) (not e!3277665))))

(assert (=> b!5270192 (= res!2235824 call!374400)))

(assert (=> b!5270192 (= e!3277666 e!3277665)))

(declare-fun b!5270193 () Bool)

(assert (=> b!5270193 (= e!3277670 e!3277666)))

(assert (=> b!5270193 (= c!912784 (is-Union!14890 lt!2156580))))

(assert (= (and d!1695931 (not res!2235825)) b!5270186))

(assert (= (and b!5270186 c!912783) b!5270191))

(assert (= (and b!5270186 (not c!912783)) b!5270193))

(assert (= (and b!5270191 res!2235826) b!5270189))

(assert (= (and b!5270193 c!912784) b!5270192))

(assert (= (and b!5270193 (not c!912784)) b!5270187))

(assert (= (and b!5270192 res!2235824) b!5270188))

(assert (= (and b!5270187 (not res!2235823)) b!5270190))

(assert (= (and b!5270190 res!2235822) b!5270185))

(assert (= (or b!5270188 b!5270185) bm!374397))

(assert (= (or b!5270192 b!5270190) bm!374395))

(assert (= (or b!5270189 bm!374395) bm!374396))

(declare-fun m!6309436 () Bool)

(assert (=> b!5270191 m!6309436))

(declare-fun m!6309438 () Bool)

(assert (=> bm!374397 m!6309438))

(declare-fun m!6309440 () Bool)

(assert (=> bm!374396 m!6309440))

(assert (=> d!1695781 d!1695931))

(declare-fun d!1695933 () Bool)

(declare-fun res!2235827 () Bool)

(declare-fun e!3277672 () Bool)

(assert (=> d!1695933 (=> res!2235827 e!3277672)))

(assert (=> d!1695933 (= res!2235827 (is-Nil!60845 (unfocusZipperList!332 zl!343)))))

(assert (=> d!1695933 (= (forall!14298 (unfocusZipperList!332 zl!343) lambda!265843) e!3277672)))

(declare-fun b!5270194 () Bool)

(declare-fun e!3277673 () Bool)

(assert (=> b!5270194 (= e!3277672 e!3277673)))

(declare-fun res!2235828 () Bool)

(assert (=> b!5270194 (=> (not res!2235828) (not e!3277673))))

(assert (=> b!5270194 (= res!2235828 (dynLambda!24044 lambda!265843 (h!67293 (unfocusZipperList!332 zl!343))))))

(declare-fun b!5270195 () Bool)

(assert (=> b!5270195 (= e!3277673 (forall!14298 (t!374162 (unfocusZipperList!332 zl!343)) lambda!265843))))

(assert (= (and d!1695933 (not res!2235827)) b!5270194))

(assert (= (and b!5270194 res!2235828) b!5270195))

(declare-fun b_lambda!203271 () Bool)

(assert (=> (not b_lambda!203271) (not b!5270194)))

(declare-fun m!6309442 () Bool)

(assert (=> b!5270194 m!6309442))

(declare-fun m!6309444 () Bool)

(assert (=> b!5270195 m!6309444))

(assert (=> d!1695781 d!1695933))

(declare-fun b!5270196 () Bool)

(declare-fun e!3277680 () Bool)

(declare-fun call!374404 () Bool)

(assert (=> b!5270196 (= e!3277680 call!374404)))

(declare-fun b!5270197 () Bool)

(declare-fun e!3277677 () Bool)

(declare-fun e!3277679 () Bool)

(assert (=> b!5270197 (= e!3277677 e!3277679)))

(declare-fun c!912785 () Bool)

(assert (=> b!5270197 (= c!912785 (is-Star!14890 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(declare-fun b!5270198 () Bool)

(declare-fun res!2235830 () Bool)

(declare-fun e!3277676 () Bool)

(assert (=> b!5270198 (=> res!2235830 e!3277676)))

(assert (=> b!5270198 (= res!2235830 (not (is-Concat!23735 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))

(declare-fun e!3277675 () Bool)

(assert (=> b!5270198 (= e!3277675 e!3277676)))

(declare-fun b!5270199 () Bool)

(declare-fun e!3277674 () Bool)

(assert (=> b!5270199 (= e!3277674 call!374404)))

(declare-fun bm!374398 () Bool)

(declare-fun call!374403 () Bool)

(declare-fun call!374405 () Bool)

(assert (=> bm!374398 (= call!374403 call!374405)))

(declare-fun b!5270200 () Bool)

(declare-fun e!3277678 () Bool)

(assert (=> b!5270200 (= e!3277678 call!374405)))

(declare-fun b!5270201 () Bool)

(assert (=> b!5270201 (= e!3277676 e!3277680)))

(declare-fun res!2235829 () Bool)

(assert (=> b!5270201 (=> (not res!2235829) (not e!3277680))))

(assert (=> b!5270201 (= res!2235829 call!374403)))

(declare-fun b!5270202 () Bool)

(assert (=> b!5270202 (= e!3277679 e!3277678)))

(declare-fun res!2235833 () Bool)

(assert (=> b!5270202 (= res!2235833 (not (nullable!5059 (reg!15219 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))))))))

(assert (=> b!5270202 (=> (not res!2235833) (not e!3277678))))

(declare-fun c!912786 () Bool)

(declare-fun bm!374400 () Bool)

(assert (=> bm!374400 (= call!374404 (validRegex!6626 (ite c!912786 (regTwo!30293 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))) (regTwo!30292 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))))))))

(declare-fun bm!374399 () Bool)

(assert (=> bm!374399 (= call!374405 (validRegex!6626 (ite c!912785 (reg!15219 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))) (ite c!912786 (regOne!30293 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))) (regOne!30292 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))))

(declare-fun d!1695935 () Bool)

(declare-fun res!2235832 () Bool)

(assert (=> d!1695935 (=> res!2235832 e!3277677)))

(assert (=> d!1695935 (= res!2235832 (is-ElementMatch!14890 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(assert (=> d!1695935 (= (validRegex!6626 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))) e!3277677)))

(declare-fun b!5270203 () Bool)

(declare-fun res!2235831 () Bool)

(assert (=> b!5270203 (=> (not res!2235831) (not e!3277674))))

(assert (=> b!5270203 (= res!2235831 call!374403)))

(assert (=> b!5270203 (= e!3277675 e!3277674)))

(declare-fun b!5270204 () Bool)

(assert (=> b!5270204 (= e!3277679 e!3277675)))

(assert (=> b!5270204 (= c!912786 (is-Union!14890 (ite c!912539 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(assert (= (and d!1695935 (not res!2235832)) b!5270197))

(assert (= (and b!5270197 c!912785) b!5270202))

(assert (= (and b!5270197 (not c!912785)) b!5270204))

(assert (= (and b!5270202 res!2235833) b!5270200))

(assert (= (and b!5270204 c!912786) b!5270203))

(assert (= (and b!5270204 (not c!912786)) b!5270198))

(assert (= (and b!5270203 res!2235831) b!5270199))

(assert (= (and b!5270198 (not res!2235830)) b!5270201))

(assert (= (and b!5270201 res!2235829) b!5270196))

(assert (= (or b!5270199 b!5270196) bm!374400))

(assert (= (or b!5270203 b!5270201) bm!374398))

(assert (= (or b!5270200 bm!374398) bm!374399))

(declare-fun m!6309446 () Bool)

(assert (=> b!5270202 m!6309446))

(declare-fun m!6309448 () Bool)

(assert (=> bm!374400 m!6309448))

(declare-fun m!6309450 () Bool)

(assert (=> bm!374399 m!6309450))

(assert (=> bm!374262 d!1695935))

(declare-fun d!1695937 () Bool)

(declare-fun c!912787 () Bool)

(assert (=> d!1695937 (= c!912787 (isEmpty!32797 (tail!10394 (t!374163 s!2326))))))

(declare-fun e!3277681 () Bool)

(assert (=> d!1695937 (= (matchZipper!1134 (derivationStepZipper!1133 lt!2156441 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))) e!3277681)))

(declare-fun b!5270205 () Bool)

(assert (=> b!5270205 (= e!3277681 (nullableZipper!1289 (derivationStepZipper!1133 lt!2156441 (head!11297 (t!374163 s!2326)))))))

(declare-fun b!5270206 () Bool)

(assert (=> b!5270206 (= e!3277681 (matchZipper!1134 (derivationStepZipper!1133 (derivationStepZipper!1133 lt!2156441 (head!11297 (t!374163 s!2326))) (head!11297 (tail!10394 (t!374163 s!2326)))) (tail!10394 (tail!10394 (t!374163 s!2326)))))))

(assert (= (and d!1695937 c!912787) b!5270205))

(assert (= (and d!1695937 (not c!912787)) b!5270206))

(assert (=> d!1695937 m!6308876))

(declare-fun m!6309452 () Bool)

(assert (=> d!1695937 m!6309452))

(assert (=> b!5270205 m!6308906))

(declare-fun m!6309454 () Bool)

(assert (=> b!5270205 m!6309454))

(assert (=> b!5270206 m!6308876))

(declare-fun m!6309456 () Bool)

(assert (=> b!5270206 m!6309456))

(assert (=> b!5270206 m!6308906))

(assert (=> b!5270206 m!6309456))

(declare-fun m!6309458 () Bool)

(assert (=> b!5270206 m!6309458))

(assert (=> b!5270206 m!6308876))

(declare-fun m!6309460 () Bool)

(assert (=> b!5270206 m!6309460))

(assert (=> b!5270206 m!6309458))

(assert (=> b!5270206 m!6309460))

(declare-fun m!6309462 () Bool)

(assert (=> b!5270206 m!6309462))

(assert (=> b!5269378 d!1695937))

(declare-fun bs!1221097 () Bool)

(declare-fun d!1695939 () Bool)

(assert (= bs!1221097 (and d!1695939 b!5269181)))

(declare-fun lambda!265881 () Int)

(assert (=> bs!1221097 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265881 lambda!265800))))

(declare-fun bs!1221098 () Bool)

(assert (= bs!1221098 (and d!1695939 d!1695743)))

(assert (=> bs!1221098 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265881 lambda!265834))))

(assert (=> d!1695939 true))

(assert (=> d!1695939 (= (derivationStepZipper!1133 lt!2156441 (head!11297 (t!374163 s!2326))) (flatMap!617 lt!2156441 lambda!265881))))

(declare-fun bs!1221099 () Bool)

(assert (= bs!1221099 d!1695939))

(declare-fun m!6309464 () Bool)

(assert (=> bs!1221099 m!6309464))

(assert (=> b!5269378 d!1695939))

(declare-fun d!1695941 () Bool)

(assert (=> d!1695941 (= (head!11297 (t!374163 s!2326)) (h!67294 (t!374163 s!2326)))))

(assert (=> b!5269378 d!1695941))

(declare-fun d!1695943 () Bool)

(assert (=> d!1695943 (= (tail!10394 (t!374163 s!2326)) (t!374163 (t!374163 s!2326)))))

(assert (=> b!5269378 d!1695943))

(declare-fun d!1695945 () Bool)

(assert (=> d!1695945 (= ($colon$colon!1339 (exprs!4774 lt!2156445) (ite (or c!912596 c!912594) (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 r!7292)))) (Cons!60845 (ite (or c!912596 c!912594) (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 r!7292))) (exprs!4774 lt!2156445)))))

(assert (=> bm!374289 d!1695945))

(declare-fun bs!1221100 () Bool)

(declare-fun d!1695947 () Bool)

(assert (= bs!1221100 (and d!1695947 d!1695783)))

(declare-fun lambda!265882 () Int)

(assert (=> bs!1221100 (= lambda!265882 lambda!265846)))

(declare-fun bs!1221101 () Bool)

(assert (= bs!1221101 (and d!1695947 d!1695697)))

(assert (=> bs!1221101 (= lambda!265882 lambda!265821)))

(declare-fun bs!1221102 () Bool)

(assert (= bs!1221102 (and d!1695947 d!1695711)))

(assert (=> bs!1221102 (= lambda!265882 lambda!265822)))

(declare-fun bs!1221103 () Bool)

(assert (= bs!1221103 (and d!1695947 d!1695781)))

(assert (=> bs!1221103 (= lambda!265882 lambda!265843)))

(declare-fun bs!1221104 () Bool)

(assert (= bs!1221104 (and d!1695947 d!1695695)))

(assert (=> bs!1221104 (= lambda!265882 lambda!265818)))

(assert (=> d!1695947 (= (inv!80473 setElem!33728) (forall!14298 (exprs!4774 setElem!33728) lambda!265882))))

(declare-fun bs!1221105 () Bool)

(assert (= bs!1221105 d!1695947))

(declare-fun m!6309466 () Bool)

(assert (=> bs!1221105 m!6309466))

(assert (=> setNonEmpty!33728 d!1695947))

(declare-fun d!1695949 () Bool)

(assert (=> d!1695949 (= (nullable!5059 (reg!15219 r!7292)) (nullableFct!1441 (reg!15219 r!7292)))))

(declare-fun bs!1221106 () Bool)

(assert (= bs!1221106 d!1695949))

(declare-fun m!6309468 () Bool)

(assert (=> bs!1221106 m!6309468))

(assert (=> b!5269359 d!1695949))

(declare-fun d!1695951 () Bool)

(assert (=> d!1695951 (= (isConcat!347 lt!2156541) (is-Concat!23735 lt!2156541))))

(assert (=> b!5269350 d!1695951))

(declare-fun bs!1221107 () Bool)

(declare-fun d!1695953 () Bool)

(assert (= bs!1221107 (and d!1695953 d!1695947)))

(declare-fun lambda!265883 () Int)

(assert (=> bs!1221107 (= lambda!265883 lambda!265882)))

(declare-fun bs!1221108 () Bool)

(assert (= bs!1221108 (and d!1695953 d!1695783)))

(assert (=> bs!1221108 (= lambda!265883 lambda!265846)))

(declare-fun bs!1221109 () Bool)

(assert (= bs!1221109 (and d!1695953 d!1695697)))

(assert (=> bs!1221109 (= lambda!265883 lambda!265821)))

(declare-fun bs!1221110 () Bool)

(assert (= bs!1221110 (and d!1695953 d!1695711)))

(assert (=> bs!1221110 (= lambda!265883 lambda!265822)))

(declare-fun bs!1221111 () Bool)

(assert (= bs!1221111 (and d!1695953 d!1695781)))

(assert (=> bs!1221111 (= lambda!265883 lambda!265843)))

(declare-fun bs!1221112 () Bool)

(assert (= bs!1221112 (and d!1695953 d!1695695)))

(assert (=> bs!1221112 (= lambda!265883 lambda!265818)))

(declare-fun b!5270207 () Bool)

(declare-fun e!3277685 () Bool)

(declare-fun lt!2156631 () Regex!14890)

(assert (=> b!5270207 (= e!3277685 (isUnion!264 lt!2156631))))

(declare-fun b!5270208 () Bool)

(declare-fun e!3277682 () Bool)

(assert (=> b!5270208 (= e!3277682 (isEmptyLang!832 lt!2156631))))

(declare-fun b!5270209 () Bool)

(assert (=> b!5270209 (= e!3277685 (= lt!2156631 (head!11296 (t!374162 (unfocusZipperList!332 zl!343)))))))

(declare-fun b!5270210 () Bool)

(declare-fun e!3277686 () Regex!14890)

(declare-fun e!3277683 () Regex!14890)

(assert (=> b!5270210 (= e!3277686 e!3277683)))

(declare-fun c!912790 () Bool)

(assert (=> b!5270210 (= c!912790 (is-Cons!60845 (t!374162 (unfocusZipperList!332 zl!343))))))

(declare-fun b!5270211 () Bool)

(assert (=> b!5270211 (= e!3277683 EmptyLang!14890)))

(declare-fun b!5270212 () Bool)

(assert (=> b!5270212 (= e!3277686 (h!67293 (t!374162 (unfocusZipperList!332 zl!343))))))

(declare-fun b!5270213 () Bool)

(assert (=> b!5270213 (= e!3277683 (Union!14890 (h!67293 (t!374162 (unfocusZipperList!332 zl!343))) (generalisedUnion!819 (t!374162 (t!374162 (unfocusZipperList!332 zl!343))))))))

(declare-fun b!5270215 () Bool)

(declare-fun e!3277687 () Bool)

(assert (=> b!5270215 (= e!3277687 (isEmpty!32794 (t!374162 (t!374162 (unfocusZipperList!332 zl!343)))))))

(declare-fun b!5270216 () Bool)

(assert (=> b!5270216 (= e!3277682 e!3277685)))

(declare-fun c!912791 () Bool)

(assert (=> b!5270216 (= c!912791 (isEmpty!32794 (tail!10393 (t!374162 (unfocusZipperList!332 zl!343)))))))

(declare-fun e!3277684 () Bool)

(assert (=> d!1695953 e!3277684))

(declare-fun res!2235835 () Bool)

(assert (=> d!1695953 (=> (not res!2235835) (not e!3277684))))

(assert (=> d!1695953 (= res!2235835 (validRegex!6626 lt!2156631))))

(assert (=> d!1695953 (= lt!2156631 e!3277686)))

(declare-fun c!912789 () Bool)

(assert (=> d!1695953 (= c!912789 e!3277687)))

(declare-fun res!2235834 () Bool)

(assert (=> d!1695953 (=> (not res!2235834) (not e!3277687))))

(assert (=> d!1695953 (= res!2235834 (is-Cons!60845 (t!374162 (unfocusZipperList!332 zl!343))))))

(assert (=> d!1695953 (forall!14298 (t!374162 (unfocusZipperList!332 zl!343)) lambda!265883)))

(assert (=> d!1695953 (= (generalisedUnion!819 (t!374162 (unfocusZipperList!332 zl!343))) lt!2156631)))

(declare-fun b!5270214 () Bool)

(assert (=> b!5270214 (= e!3277684 e!3277682)))

(declare-fun c!912788 () Bool)

(assert (=> b!5270214 (= c!912788 (isEmpty!32794 (t!374162 (unfocusZipperList!332 zl!343))))))

(assert (= (and d!1695953 res!2235834) b!5270215))

(assert (= (and d!1695953 c!912789) b!5270212))

(assert (= (and d!1695953 (not c!912789)) b!5270210))

(assert (= (and b!5270210 c!912790) b!5270213))

(assert (= (and b!5270210 (not c!912790)) b!5270211))

(assert (= (and d!1695953 res!2235835) b!5270214))

(assert (= (and b!5270214 c!912788) b!5270208))

(assert (= (and b!5270214 (not c!912788)) b!5270216))

(assert (= (and b!5270216 c!912791) b!5270209))

(assert (= (and b!5270216 (not c!912791)) b!5270207))

(declare-fun m!6309470 () Bool)

(assert (=> b!5270216 m!6309470))

(assert (=> b!5270216 m!6309470))

(declare-fun m!6309472 () Bool)

(assert (=> b!5270216 m!6309472))

(declare-fun m!6309474 () Bool)

(assert (=> b!5270207 m!6309474))

(assert (=> b!5270214 m!6309078))

(declare-fun m!6309476 () Bool)

(assert (=> b!5270215 m!6309476))

(declare-fun m!6309478 () Bool)

(assert (=> b!5270213 m!6309478))

(declare-fun m!6309480 () Bool)

(assert (=> b!5270209 m!6309480))

(declare-fun m!6309482 () Bool)

(assert (=> b!5270208 m!6309482))

(declare-fun m!6309484 () Bool)

(assert (=> d!1695953 m!6309484))

(declare-fun m!6309486 () Bool)

(assert (=> d!1695953 m!6309486))

(assert (=> b!5269627 d!1695953))

(declare-fun bm!374401 () Bool)

(declare-fun call!374407 () (Set Context!8548))

(declare-fun call!374408 () (Set Context!8548))

(assert (=> bm!374401 (= call!374407 call!374408)))

(declare-fun b!5270217 () Bool)

(declare-fun e!3277691 () (Set Context!8548))

(declare-fun call!374411 () (Set Context!8548))

(assert (=> b!5270217 (= e!3277691 (set.union call!374411 call!374408))))

(declare-fun call!374410 () List!60969)

(declare-fun bm!374402 () Bool)

(declare-fun c!912795 () Bool)

(declare-fun c!912793 () Bool)

(assert (=> bm!374402 (= call!374410 ($colon$colon!1339 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156457)))) (ite (or c!912795 c!912793) (regTwo!30292 (h!67293 (exprs!4774 lt!2156457))) (h!67293 (exprs!4774 lt!2156457)))))))

(declare-fun bm!374403 () Bool)

(declare-fun call!374409 () List!60969)

(assert (=> bm!374403 (= call!374409 call!374410)))

(declare-fun b!5270218 () Bool)

(declare-fun e!3277690 () Bool)

(assert (=> b!5270218 (= e!3277690 (nullable!5059 (regOne!30292 (h!67293 (exprs!4774 lt!2156457)))))))

(declare-fun bm!374404 () Bool)

(declare-fun c!912792 () Bool)

(assert (=> bm!374404 (= call!374411 (derivationStepZipperDown!338 (ite c!912792 (regOne!30293 (h!67293 (exprs!4774 lt!2156457))) (regOne!30292 (h!67293 (exprs!4774 lt!2156457)))) (ite c!912792 (Context!8549 (t!374162 (exprs!4774 lt!2156457))) (Context!8549 call!374410)) (h!67294 s!2326)))))

(declare-fun d!1695955 () Bool)

(declare-fun c!912796 () Bool)

(assert (=> d!1695955 (= c!912796 (and (is-ElementMatch!14890 (h!67293 (exprs!4774 lt!2156457))) (= (c!912522 (h!67293 (exprs!4774 lt!2156457))) (h!67294 s!2326))))))

(declare-fun e!3277688 () (Set Context!8548))

(assert (=> d!1695955 (= (derivationStepZipperDown!338 (h!67293 (exprs!4774 lt!2156457)) (Context!8549 (t!374162 (exprs!4774 lt!2156457))) (h!67294 s!2326)) e!3277688)))

(declare-fun b!5270219 () Bool)

(declare-fun c!912794 () Bool)

(assert (=> b!5270219 (= c!912794 (is-Star!14890 (h!67293 (exprs!4774 lt!2156457))))))

(declare-fun e!3277692 () (Set Context!8548))

(declare-fun e!3277689 () (Set Context!8548))

(assert (=> b!5270219 (= e!3277692 e!3277689)))

(declare-fun b!5270220 () Bool)

(assert (=> b!5270220 (= e!3277689 call!374407)))

(declare-fun b!5270221 () Bool)

(declare-fun e!3277693 () (Set Context!8548))

(assert (=> b!5270221 (= e!3277688 e!3277693)))

(assert (=> b!5270221 (= c!912792 (is-Union!14890 (h!67293 (exprs!4774 lt!2156457))))))

(declare-fun b!5270222 () Bool)

(declare-fun call!374406 () (Set Context!8548))

(assert (=> b!5270222 (= e!3277693 (set.union call!374411 call!374406))))

(declare-fun b!5270223 () Bool)

(assert (=> b!5270223 (= c!912795 e!3277690)))

(declare-fun res!2235836 () Bool)

(assert (=> b!5270223 (=> (not res!2235836) (not e!3277690))))

(assert (=> b!5270223 (= res!2235836 (is-Concat!23735 (h!67293 (exprs!4774 lt!2156457))))))

(assert (=> b!5270223 (= e!3277693 e!3277691)))

(declare-fun b!5270224 () Bool)

(assert (=> b!5270224 (= e!3277689 (as set.empty (Set Context!8548)))))

(declare-fun b!5270225 () Bool)

(assert (=> b!5270225 (= e!3277691 e!3277692)))

(assert (=> b!5270225 (= c!912793 (is-Concat!23735 (h!67293 (exprs!4774 lt!2156457))))))

(declare-fun b!5270226 () Bool)

(assert (=> b!5270226 (= e!3277688 (set.insert (Context!8549 (t!374162 (exprs!4774 lt!2156457))) (as set.empty (Set Context!8548))))))

(declare-fun bm!374405 () Bool)

(assert (=> bm!374405 (= call!374408 call!374406)))

(declare-fun b!5270227 () Bool)

(assert (=> b!5270227 (= e!3277692 call!374407)))

(declare-fun bm!374406 () Bool)

(assert (=> bm!374406 (= call!374406 (derivationStepZipperDown!338 (ite c!912792 (regTwo!30293 (h!67293 (exprs!4774 lt!2156457))) (ite c!912795 (regTwo!30292 (h!67293 (exprs!4774 lt!2156457))) (ite c!912793 (regOne!30292 (h!67293 (exprs!4774 lt!2156457))) (reg!15219 (h!67293 (exprs!4774 lt!2156457)))))) (ite (or c!912792 c!912795) (Context!8549 (t!374162 (exprs!4774 lt!2156457))) (Context!8549 call!374409)) (h!67294 s!2326)))))

(assert (= (and d!1695955 c!912796) b!5270226))

(assert (= (and d!1695955 (not c!912796)) b!5270221))

(assert (= (and b!5270221 c!912792) b!5270222))

(assert (= (and b!5270221 (not c!912792)) b!5270223))

(assert (= (and b!5270223 res!2235836) b!5270218))

(assert (= (and b!5270223 c!912795) b!5270217))

(assert (= (and b!5270223 (not c!912795)) b!5270225))

(assert (= (and b!5270225 c!912793) b!5270227))

(assert (= (and b!5270225 (not c!912793)) b!5270219))

(assert (= (and b!5270219 c!912794) b!5270220))

(assert (= (and b!5270219 (not c!912794)) b!5270224))

(assert (= (or b!5270227 b!5270220) bm!374403))

(assert (= (or b!5270227 b!5270220) bm!374401))

(assert (= (or b!5270217 bm!374403) bm!374402))

(assert (= (or b!5270217 bm!374401) bm!374405))

(assert (= (or b!5270222 bm!374405) bm!374406))

(assert (= (or b!5270222 b!5270217) bm!374404))

(declare-fun m!6309488 () Bool)

(assert (=> bm!374404 m!6309488))

(declare-fun m!6309490 () Bool)

(assert (=> bm!374406 m!6309490))

(declare-fun m!6309492 () Bool)

(assert (=> b!5270226 m!6309492))

(declare-fun m!6309494 () Bool)

(assert (=> bm!374402 m!6309494))

(declare-fun m!6309496 () Bool)

(assert (=> b!5270218 m!6309496))

(assert (=> bm!374269 d!1695955))

(declare-fun b!5270228 () Bool)

(declare-fun e!3277700 () Bool)

(declare-fun call!374413 () Bool)

(assert (=> b!5270228 (= e!3277700 call!374413)))

(declare-fun b!5270229 () Bool)

(declare-fun e!3277697 () Bool)

(declare-fun e!3277699 () Bool)

(assert (=> b!5270229 (= e!3277697 e!3277699)))

(declare-fun c!912797 () Bool)

(assert (=> b!5270229 (= c!912797 (is-Star!14890 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))))))

(declare-fun b!5270230 () Bool)

(declare-fun res!2235838 () Bool)

(declare-fun e!3277696 () Bool)

(assert (=> b!5270230 (=> res!2235838 e!3277696)))

(assert (=> b!5270230 (= res!2235838 (not (is-Concat!23735 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292))))))))

(declare-fun e!3277695 () Bool)

(assert (=> b!5270230 (= e!3277695 e!3277696)))

(declare-fun b!5270231 () Bool)

(declare-fun e!3277694 () Bool)

(assert (=> b!5270231 (= e!3277694 call!374413)))

(declare-fun bm!374407 () Bool)

(declare-fun call!374412 () Bool)

(declare-fun call!374414 () Bool)

(assert (=> bm!374407 (= call!374412 call!374414)))

(declare-fun b!5270232 () Bool)

(declare-fun e!3277698 () Bool)

(assert (=> b!5270232 (= e!3277698 call!374414)))

(declare-fun b!5270233 () Bool)

(assert (=> b!5270233 (= e!3277696 e!3277700)))

(declare-fun res!2235837 () Bool)

(assert (=> b!5270233 (=> (not res!2235837) (not e!3277700))))

(assert (=> b!5270233 (= res!2235837 call!374412)))

(declare-fun b!5270234 () Bool)

(assert (=> b!5270234 (= e!3277699 e!3277698)))

(declare-fun res!2235841 () Bool)

(assert (=> b!5270234 (= res!2235841 (not (nullable!5059 (reg!15219 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))))))))

(assert (=> b!5270234 (=> (not res!2235841) (not e!3277698))))

(declare-fun bm!374409 () Bool)

(declare-fun c!912798 () Bool)

(assert (=> bm!374409 (= call!374413 (validRegex!6626 (ite c!912798 (regTwo!30293 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))) (regTwo!30292 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))))))))

(declare-fun bm!374408 () Bool)

(assert (=> bm!374408 (= call!374414 (validRegex!6626 (ite c!912797 (reg!15219 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))) (ite c!912798 (regOne!30293 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))) (regOne!30292 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292))))))))))

(declare-fun d!1695957 () Bool)

(declare-fun res!2235840 () Bool)

(assert (=> d!1695957 (=> res!2235840 e!3277697)))

(assert (=> d!1695957 (= res!2235840 (is-ElementMatch!14890 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))))))

(assert (=> d!1695957 (= (validRegex!6626 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))) e!3277697)))

(declare-fun b!5270235 () Bool)

(declare-fun res!2235839 () Bool)

(assert (=> b!5270235 (=> (not res!2235839) (not e!3277694))))

(assert (=> b!5270235 (= res!2235839 call!374412)))

(assert (=> b!5270235 (= e!3277695 e!3277694)))

(declare-fun b!5270236 () Bool)

(assert (=> b!5270236 (= e!3277699 e!3277695)))

(assert (=> b!5270236 (= c!912798 (is-Union!14890 (ite c!912552 (reg!15219 r!7292) (ite c!912553 (regOne!30293 r!7292) (regOne!30292 r!7292)))))))

(assert (= (and d!1695957 (not res!2235840)) b!5270229))

(assert (= (and b!5270229 c!912797) b!5270234))

(assert (= (and b!5270229 (not c!912797)) b!5270236))

(assert (= (and b!5270234 res!2235841) b!5270232))

(assert (= (and b!5270236 c!912798) b!5270235))

(assert (= (and b!5270236 (not c!912798)) b!5270230))

(assert (= (and b!5270235 res!2235839) b!5270231))

(assert (= (and b!5270230 (not res!2235838)) b!5270233))

(assert (= (and b!5270233 res!2235837) b!5270228))

(assert (= (or b!5270231 b!5270228) bm!374409))

(assert (= (or b!5270235 b!5270233) bm!374407))

(assert (= (or b!5270232 bm!374407) bm!374408))

(declare-fun m!6309498 () Bool)

(assert (=> b!5270234 m!6309498))

(declare-fun m!6309500 () Bool)

(assert (=> bm!374409 m!6309500))

(declare-fun m!6309502 () Bool)

(assert (=> bm!374408 m!6309502))

(assert (=> bm!374264 d!1695957))

(assert (=> d!1695729 d!1695723))

(declare-fun b!5270237 () Bool)

(declare-fun e!3277707 () Bool)

(declare-fun call!374416 () Bool)

(assert (=> b!5270237 (= e!3277707 call!374416)))

(declare-fun b!5270238 () Bool)

(declare-fun e!3277704 () Bool)

(declare-fun e!3277706 () Bool)

(assert (=> b!5270238 (= e!3277704 e!3277706)))

(declare-fun c!912799 () Bool)

(assert (=> b!5270238 (= c!912799 (is-Star!14890 (regOne!30292 r!7292)))))

(declare-fun b!5270239 () Bool)

(declare-fun res!2235843 () Bool)

(declare-fun e!3277703 () Bool)

(assert (=> b!5270239 (=> res!2235843 e!3277703)))

(assert (=> b!5270239 (= res!2235843 (not (is-Concat!23735 (regOne!30292 r!7292))))))

(declare-fun e!3277702 () Bool)

(assert (=> b!5270239 (= e!3277702 e!3277703)))

(declare-fun b!5270240 () Bool)

(declare-fun e!3277701 () Bool)

(assert (=> b!5270240 (= e!3277701 call!374416)))

(declare-fun bm!374410 () Bool)

(declare-fun call!374415 () Bool)

(declare-fun call!374417 () Bool)

(assert (=> bm!374410 (= call!374415 call!374417)))

(declare-fun b!5270241 () Bool)

(declare-fun e!3277705 () Bool)

(assert (=> b!5270241 (= e!3277705 call!374417)))

(declare-fun b!5270242 () Bool)

(assert (=> b!5270242 (= e!3277703 e!3277707)))

(declare-fun res!2235842 () Bool)

(assert (=> b!5270242 (=> (not res!2235842) (not e!3277707))))

(assert (=> b!5270242 (= res!2235842 call!374415)))

(declare-fun b!5270243 () Bool)

(assert (=> b!5270243 (= e!3277706 e!3277705)))

(declare-fun res!2235846 () Bool)

(assert (=> b!5270243 (= res!2235846 (not (nullable!5059 (reg!15219 (regOne!30292 r!7292)))))))

(assert (=> b!5270243 (=> (not res!2235846) (not e!3277705))))

(declare-fun bm!374412 () Bool)

(declare-fun c!912800 () Bool)

(assert (=> bm!374412 (= call!374416 (validRegex!6626 (ite c!912800 (regTwo!30293 (regOne!30292 r!7292)) (regTwo!30292 (regOne!30292 r!7292)))))))

(declare-fun bm!374411 () Bool)

(assert (=> bm!374411 (= call!374417 (validRegex!6626 (ite c!912799 (reg!15219 (regOne!30292 r!7292)) (ite c!912800 (regOne!30293 (regOne!30292 r!7292)) (regOne!30292 (regOne!30292 r!7292))))))))

(declare-fun d!1695959 () Bool)

(declare-fun res!2235845 () Bool)

(assert (=> d!1695959 (=> res!2235845 e!3277704)))

(assert (=> d!1695959 (= res!2235845 (is-ElementMatch!14890 (regOne!30292 r!7292)))))

(assert (=> d!1695959 (= (validRegex!6626 (regOne!30292 r!7292)) e!3277704)))

(declare-fun b!5270244 () Bool)

(declare-fun res!2235844 () Bool)

(assert (=> b!5270244 (=> (not res!2235844) (not e!3277701))))

(assert (=> b!5270244 (= res!2235844 call!374415)))

(assert (=> b!5270244 (= e!3277702 e!3277701)))

(declare-fun b!5270245 () Bool)

(assert (=> b!5270245 (= e!3277706 e!3277702)))

(assert (=> b!5270245 (= c!912800 (is-Union!14890 (regOne!30292 r!7292)))))

(assert (= (and d!1695959 (not res!2235845)) b!5270238))

(assert (= (and b!5270238 c!912799) b!5270243))

(assert (= (and b!5270238 (not c!912799)) b!5270245))

(assert (= (and b!5270243 res!2235846) b!5270241))

(assert (= (and b!5270245 c!912800) b!5270244))

(assert (= (and b!5270245 (not c!912800)) b!5270239))

(assert (= (and b!5270244 res!2235844) b!5270240))

(assert (= (and b!5270239 (not res!2235843)) b!5270242))

(assert (= (and b!5270242 res!2235842) b!5270237))

(assert (= (or b!5270240 b!5270237) bm!374412))

(assert (= (or b!5270244 b!5270242) bm!374410))

(assert (= (or b!5270241 bm!374410) bm!374411))

(declare-fun m!6309504 () Bool)

(assert (=> b!5270243 m!6309504))

(declare-fun m!6309506 () Bool)

(assert (=> bm!374412 m!6309506))

(declare-fun m!6309508 () Bool)

(assert (=> bm!374411 m!6309508))

(assert (=> d!1695729 d!1695959))

(assert (=> d!1695729 d!1695733))

(declare-fun d!1695961 () Bool)

(assert (=> d!1695961 (= (Exists!2071 lambda!265825) (choose!39312 lambda!265825))))

(declare-fun bs!1221113 () Bool)

(assert (= bs!1221113 d!1695961))

(declare-fun m!6309510 () Bool)

(assert (=> bs!1221113 m!6309510))

(assert (=> d!1695729 d!1695961))

(declare-fun bs!1221114 () Bool)

(declare-fun d!1695963 () Bool)

(assert (= bs!1221114 (and d!1695963 d!1695729)))

(declare-fun lambda!265886 () Int)

(assert (=> bs!1221114 (= lambda!265886 lambda!265825)))

(declare-fun bs!1221115 () Bool)

(assert (= bs!1221115 (and d!1695963 b!5269548)))

(assert (=> bs!1221115 (not (= lambda!265886 lambda!265839))))

(declare-fun bs!1221116 () Bool)

(assert (= bs!1221116 (and d!1695963 d!1695731)))

(assert (=> bs!1221116 (not (= lambda!265886 lambda!265831))))

(declare-fun bs!1221117 () Bool)

(assert (= bs!1221117 (and d!1695963 b!5269153)))

(assert (=> bs!1221117 (= lambda!265886 lambda!265798)))

(assert (=> bs!1221117 (not (= lambda!265886 lambda!265799))))

(declare-fun bs!1221118 () Bool)

(assert (= bs!1221118 (and d!1695963 b!5269556)))

(assert (=> bs!1221118 (not (= lambda!265886 lambda!265840))))

(assert (=> bs!1221116 (= lambda!265886 lambda!265830)))

(assert (=> d!1695963 true))

(assert (=> d!1695963 true))

(assert (=> d!1695963 true))

(assert (=> d!1695963 (= (isDefined!11704 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) Nil!60846 s!2326 s!2326)) (Exists!2071 lambda!265886))))

(assert (=> d!1695963 true))

(declare-fun _$89!1463 () Unit!153078)

(assert (=> d!1695963 (= (choose!39313 (regOne!30292 r!7292) (regTwo!30292 r!7292) s!2326) _$89!1463)))

(declare-fun bs!1221119 () Bool)

(assert (= bs!1221119 d!1695963))

(assert (=> bs!1221119 m!6308646))

(assert (=> bs!1221119 m!6308646))

(assert (=> bs!1221119 m!6308648))

(declare-fun m!6309512 () Bool)

(assert (=> bs!1221119 m!6309512))

(assert (=> d!1695729 d!1695963))

(declare-fun bm!374413 () Bool)

(declare-fun call!374419 () (Set Context!8548))

(declare-fun call!374420 () (Set Context!8548))

(assert (=> bm!374413 (= call!374419 call!374420)))

(declare-fun b!5270250 () Bool)

(declare-fun e!3277713 () (Set Context!8548))

(declare-fun call!374423 () (Set Context!8548))

(assert (=> b!5270250 (= e!3277713 (set.union call!374423 call!374420))))

(declare-fun c!912804 () Bool)

(declare-fun call!374422 () List!60969)

(declare-fun bm!374414 () Bool)

(declare-fun c!912802 () Bool)

(assert (=> bm!374414 (= call!374422 ($colon$colon!1339 (exprs!4774 (ite (or c!912593 c!912596) lt!2156445 (Context!8549 call!374296))) (ite (or c!912804 c!912802) (regTwo!30292 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))) (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292)))))))))))

(declare-fun bm!374415 () Bool)

(declare-fun call!374421 () List!60969)

(assert (=> bm!374415 (= call!374421 call!374422)))

(declare-fun e!3277712 () Bool)

(declare-fun b!5270251 () Bool)

(assert (=> b!5270251 (= e!3277712 (nullable!5059 (regOne!30292 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292)))))))))))

(declare-fun bm!374416 () Bool)

(declare-fun c!912801 () Bool)

(assert (=> bm!374416 (= call!374423 (derivationStepZipperDown!338 (ite c!912801 (regOne!30293 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))) (regOne!30292 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292)))))))) (ite c!912801 (ite (or c!912593 c!912596) lt!2156445 (Context!8549 call!374296)) (Context!8549 call!374422)) (h!67294 s!2326)))))

(declare-fun d!1695965 () Bool)

(declare-fun c!912805 () Bool)

(assert (=> d!1695965 (= c!912805 (and (is-ElementMatch!14890 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))) (= (c!912522 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))) (h!67294 s!2326))))))

(declare-fun e!3277710 () (Set Context!8548))

(assert (=> d!1695965 (= (derivationStepZipperDown!338 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292)))))) (ite (or c!912593 c!912596) lt!2156445 (Context!8549 call!374296)) (h!67294 s!2326)) e!3277710)))

(declare-fun c!912803 () Bool)

(declare-fun b!5270252 () Bool)

(assert (=> b!5270252 (= c!912803 (is-Star!14890 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))))))

(declare-fun e!3277714 () (Set Context!8548))

(declare-fun e!3277711 () (Set Context!8548))

(assert (=> b!5270252 (= e!3277714 e!3277711)))

(declare-fun b!5270253 () Bool)

(assert (=> b!5270253 (= e!3277711 call!374419)))

(declare-fun b!5270254 () Bool)

(declare-fun e!3277715 () (Set Context!8548))

(assert (=> b!5270254 (= e!3277710 e!3277715)))

(assert (=> b!5270254 (= c!912801 (is-Union!14890 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))))))

(declare-fun b!5270255 () Bool)

(declare-fun call!374418 () (Set Context!8548))

(assert (=> b!5270255 (= e!3277715 (set.union call!374423 call!374418))))

(declare-fun b!5270256 () Bool)

(assert (=> b!5270256 (= c!912804 e!3277712)))

(declare-fun res!2235851 () Bool)

(assert (=> b!5270256 (=> (not res!2235851) (not e!3277712))))

(assert (=> b!5270256 (= res!2235851 (is-Concat!23735 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))))))

(assert (=> b!5270256 (= e!3277715 e!3277713)))

(declare-fun b!5270257 () Bool)

(assert (=> b!5270257 (= e!3277711 (as set.empty (Set Context!8548)))))

(declare-fun b!5270258 () Bool)

(assert (=> b!5270258 (= e!3277713 e!3277714)))

(assert (=> b!5270258 (= c!912802 (is-Concat!23735 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))))))

(declare-fun b!5270259 () Bool)

(assert (=> b!5270259 (= e!3277710 (set.insert (ite (or c!912593 c!912596) lt!2156445 (Context!8549 call!374296)) (as set.empty (Set Context!8548))))))

(declare-fun bm!374417 () Bool)

(assert (=> bm!374417 (= call!374420 call!374418)))

(declare-fun b!5270260 () Bool)

(assert (=> b!5270260 (= e!3277714 call!374419)))

(declare-fun bm!374418 () Bool)

(assert (=> bm!374418 (= call!374418 (derivationStepZipperDown!338 (ite c!912801 (regTwo!30293 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))) (ite c!912804 (regTwo!30292 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))) (ite c!912802 (regOne!30292 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292))))))) (reg!15219 (ite c!912593 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (ite c!912596 (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))) (ite c!912594 (regOne!30292 (regOne!30292 (regOne!30292 r!7292))) (reg!15219 (regOne!30292 (regOne!30292 r!7292)))))))))) (ite (or c!912801 c!912804) (ite (or c!912593 c!912596) lt!2156445 (Context!8549 call!374296)) (Context!8549 call!374421)) (h!67294 s!2326)))))

(assert (= (and d!1695965 c!912805) b!5270259))

(assert (= (and d!1695965 (not c!912805)) b!5270254))

(assert (= (and b!5270254 c!912801) b!5270255))

(assert (= (and b!5270254 (not c!912801)) b!5270256))

(assert (= (and b!5270256 res!2235851) b!5270251))

(assert (= (and b!5270256 c!912804) b!5270250))

(assert (= (and b!5270256 (not c!912804)) b!5270258))

(assert (= (and b!5270258 c!912802) b!5270260))

(assert (= (and b!5270258 (not c!912802)) b!5270252))

(assert (= (and b!5270252 c!912803) b!5270253))

(assert (= (and b!5270252 (not c!912803)) b!5270257))

(assert (= (or b!5270260 b!5270253) bm!374415))

(assert (= (or b!5270260 b!5270253) bm!374413))

(assert (= (or b!5270250 bm!374415) bm!374414))

(assert (= (or b!5270250 bm!374413) bm!374417))

(assert (= (or b!5270255 bm!374417) bm!374418))

(assert (= (or b!5270255 b!5270250) bm!374416))

(declare-fun m!6309514 () Bool)

(assert (=> bm!374416 m!6309514))

(declare-fun m!6309516 () Bool)

(assert (=> bm!374418 m!6309516))

(declare-fun m!6309518 () Bool)

(assert (=> b!5270259 m!6309518))

(declare-fun m!6309520 () Bool)

(assert (=> bm!374414 m!6309520))

(declare-fun m!6309522 () Bool)

(assert (=> b!5270251 m!6309522))

(assert (=> bm!374293 d!1695965))

(declare-fun d!1695967 () Bool)

(assert (=> d!1695967 (= (nullable!5059 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))) (nullableFct!1441 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))

(declare-fun bs!1221120 () Bool)

(assert (= bs!1221120 d!1695967))

(declare-fun m!6309524 () Bool)

(assert (=> bs!1221120 m!6309524))

(assert (=> b!5269466 d!1695967))

(declare-fun d!1695969 () Bool)

(assert (=> d!1695969 (= (isEmpty!32797 (tail!10394 s!2326)) (is-Nil!60846 (tail!10394 s!2326)))))

(assert (=> b!5269600 d!1695969))

(declare-fun d!1695971 () Bool)

(assert (=> d!1695971 (= (tail!10394 s!2326) (t!374163 s!2326))))

(assert (=> b!5269600 d!1695971))

(declare-fun d!1695973 () Bool)

(assert (=> d!1695973 (= (Exists!2071 lambda!265830) (choose!39312 lambda!265830))))

(declare-fun bs!1221121 () Bool)

(assert (= bs!1221121 d!1695973))

(declare-fun m!6309526 () Bool)

(assert (=> bs!1221121 m!6309526))

(assert (=> d!1695731 d!1695973))

(declare-fun d!1695975 () Bool)

(assert (=> d!1695975 (= (Exists!2071 lambda!265831) (choose!39312 lambda!265831))))

(declare-fun bs!1221122 () Bool)

(assert (= bs!1221122 d!1695975))

(declare-fun m!6309528 () Bool)

(assert (=> bs!1221122 m!6309528))

(assert (=> d!1695731 d!1695975))

(declare-fun bs!1221123 () Bool)

(declare-fun d!1695977 () Bool)

(assert (= bs!1221123 (and d!1695977 d!1695729)))

(declare-fun lambda!265891 () Int)

(assert (=> bs!1221123 (= lambda!265891 lambda!265825)))

(declare-fun bs!1221124 () Bool)

(assert (= bs!1221124 (and d!1695977 d!1695963)))

(assert (=> bs!1221124 (= lambda!265891 lambda!265886)))

(declare-fun bs!1221125 () Bool)

(assert (= bs!1221125 (and d!1695977 b!5269548)))

(assert (=> bs!1221125 (not (= lambda!265891 lambda!265839))))

(declare-fun bs!1221126 () Bool)

(assert (= bs!1221126 (and d!1695977 d!1695731)))

(assert (=> bs!1221126 (not (= lambda!265891 lambda!265831))))

(declare-fun bs!1221127 () Bool)

(assert (= bs!1221127 (and d!1695977 b!5269153)))

(assert (=> bs!1221127 (= lambda!265891 lambda!265798)))

(assert (=> bs!1221127 (not (= lambda!265891 lambda!265799))))

(declare-fun bs!1221128 () Bool)

(assert (= bs!1221128 (and d!1695977 b!5269556)))

(assert (=> bs!1221128 (not (= lambda!265891 lambda!265840))))

(assert (=> bs!1221126 (= lambda!265891 lambda!265830)))

(assert (=> d!1695977 true))

(assert (=> d!1695977 true))

(assert (=> d!1695977 true))

(declare-fun lambda!265892 () Int)

(assert (=> bs!1221123 (not (= lambda!265892 lambda!265825))))

(assert (=> bs!1221124 (not (= lambda!265892 lambda!265886))))

(assert (=> bs!1221125 (not (= lambda!265892 lambda!265839))))

(assert (=> bs!1221126 (= lambda!265892 lambda!265831)))

(assert (=> bs!1221127 (= lambda!265892 lambda!265799)))

(assert (=> bs!1221128 (= lambda!265892 lambda!265840)))

(assert (=> bs!1221126 (not (= lambda!265892 lambda!265830))))

(declare-fun bs!1221129 () Bool)

(assert (= bs!1221129 d!1695977))

(assert (=> bs!1221129 (not (= lambda!265892 lambda!265891))))

(assert (=> bs!1221127 (not (= lambda!265892 lambda!265798))))

(assert (=> d!1695977 true))

(assert (=> d!1695977 true))

(assert (=> d!1695977 true))

(assert (=> d!1695977 (= (Exists!2071 lambda!265891) (Exists!2071 lambda!265892))))

(assert (=> d!1695977 true))

(declare-fun _$90!1087 () Unit!153078)

(assert (=> d!1695977 (= (choose!39314 (regOne!30292 r!7292) (regTwo!30292 r!7292) s!2326) _$90!1087)))

(declare-fun m!6309530 () Bool)

(assert (=> bs!1221129 m!6309530))

(declare-fun m!6309532 () Bool)

(assert (=> bs!1221129 m!6309532))

(assert (=> d!1695731 d!1695977))

(assert (=> d!1695731 d!1695959))

(declare-fun b!5270269 () Bool)

(declare-fun e!3277726 () Bool)

(declare-fun call!374425 () Bool)

(assert (=> b!5270269 (= e!3277726 call!374425)))

(declare-fun b!5270270 () Bool)

(declare-fun e!3277723 () Bool)

(declare-fun e!3277725 () Bool)

(assert (=> b!5270270 (= e!3277723 e!3277725)))

(declare-fun c!912806 () Bool)

(assert (=> b!5270270 (= c!912806 (is-Star!14890 lt!2156541))))

(declare-fun b!5270271 () Bool)

(declare-fun res!2235861 () Bool)

(declare-fun e!3277722 () Bool)

(assert (=> b!5270271 (=> res!2235861 e!3277722)))

(assert (=> b!5270271 (= res!2235861 (not (is-Concat!23735 lt!2156541)))))

(declare-fun e!3277721 () Bool)

(assert (=> b!5270271 (= e!3277721 e!3277722)))

(declare-fun b!5270272 () Bool)

(declare-fun e!3277720 () Bool)

(assert (=> b!5270272 (= e!3277720 call!374425)))

(declare-fun bm!374419 () Bool)

(declare-fun call!374424 () Bool)

(declare-fun call!374426 () Bool)

(assert (=> bm!374419 (= call!374424 call!374426)))

(declare-fun b!5270273 () Bool)

(declare-fun e!3277724 () Bool)

(assert (=> b!5270273 (= e!3277724 call!374426)))

(declare-fun b!5270274 () Bool)

(assert (=> b!5270274 (= e!3277722 e!3277726)))

(declare-fun res!2235860 () Bool)

(assert (=> b!5270274 (=> (not res!2235860) (not e!3277726))))

(assert (=> b!5270274 (= res!2235860 call!374424)))

(declare-fun b!5270275 () Bool)

(assert (=> b!5270275 (= e!3277725 e!3277724)))

(declare-fun res!2235864 () Bool)

(assert (=> b!5270275 (= res!2235864 (not (nullable!5059 (reg!15219 lt!2156541))))))

(assert (=> b!5270275 (=> (not res!2235864) (not e!3277724))))

(declare-fun bm!374421 () Bool)

(declare-fun c!912807 () Bool)

(assert (=> bm!374421 (= call!374425 (validRegex!6626 (ite c!912807 (regTwo!30293 lt!2156541) (regTwo!30292 lt!2156541))))))

(declare-fun bm!374420 () Bool)

(assert (=> bm!374420 (= call!374426 (validRegex!6626 (ite c!912806 (reg!15219 lt!2156541) (ite c!912807 (regOne!30293 lt!2156541) (regOne!30292 lt!2156541)))))))

(declare-fun d!1695979 () Bool)

(declare-fun res!2235863 () Bool)

(assert (=> d!1695979 (=> res!2235863 e!3277723)))

(assert (=> d!1695979 (= res!2235863 (is-ElementMatch!14890 lt!2156541))))

(assert (=> d!1695979 (= (validRegex!6626 lt!2156541) e!3277723)))

(declare-fun b!5270276 () Bool)

(declare-fun res!2235862 () Bool)

(assert (=> b!5270276 (=> (not res!2235862) (not e!3277720))))

(assert (=> b!5270276 (= res!2235862 call!374424)))

(assert (=> b!5270276 (= e!3277721 e!3277720)))

(declare-fun b!5270277 () Bool)

(assert (=> b!5270277 (= e!3277725 e!3277721)))

(assert (=> b!5270277 (= c!912807 (is-Union!14890 lt!2156541))))

(assert (= (and d!1695979 (not res!2235863)) b!5270270))

(assert (= (and b!5270270 c!912806) b!5270275))

(assert (= (and b!5270270 (not c!912806)) b!5270277))

(assert (= (and b!5270275 res!2235864) b!5270273))

(assert (= (and b!5270277 c!912807) b!5270276))

(assert (= (and b!5270277 (not c!912807)) b!5270271))

(assert (= (and b!5270276 res!2235862) b!5270272))

(assert (= (and b!5270271 (not res!2235861)) b!5270274))

(assert (= (and b!5270274 res!2235860) b!5270269))

(assert (= (or b!5270272 b!5270269) bm!374421))

(assert (= (or b!5270276 b!5270274) bm!374419))

(assert (= (or b!5270273 bm!374419) bm!374420))

(declare-fun m!6309534 () Bool)

(assert (=> b!5270275 m!6309534))

(declare-fun m!6309536 () Bool)

(assert (=> bm!374421 m!6309536))

(declare-fun m!6309538 () Bool)

(assert (=> bm!374420 m!6309538))

(assert (=> d!1695695 d!1695979))

(declare-fun d!1695981 () Bool)

(declare-fun res!2235865 () Bool)

(declare-fun e!3277727 () Bool)

(assert (=> d!1695981 (=> res!2235865 e!3277727)))

(assert (=> d!1695981 (= res!2235865 (is-Nil!60845 (exprs!4774 (h!67295 zl!343))))))

(assert (=> d!1695981 (= (forall!14298 (exprs!4774 (h!67295 zl!343)) lambda!265818) e!3277727)))

(declare-fun b!5270278 () Bool)

(declare-fun e!3277728 () Bool)

(assert (=> b!5270278 (= e!3277727 e!3277728)))

(declare-fun res!2235866 () Bool)

(assert (=> b!5270278 (=> (not res!2235866) (not e!3277728))))

(assert (=> b!5270278 (= res!2235866 (dynLambda!24044 lambda!265818 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270279 () Bool)

(assert (=> b!5270279 (= e!3277728 (forall!14298 (t!374162 (exprs!4774 (h!67295 zl!343))) lambda!265818))))

(assert (= (and d!1695981 (not res!2235865)) b!5270278))

(assert (= (and b!5270278 res!2235866) b!5270279))

(declare-fun b_lambda!203273 () Bool)

(assert (=> (not b_lambda!203273) (not b!5270278)))

(declare-fun m!6309540 () Bool)

(assert (=> b!5270278 m!6309540))

(declare-fun m!6309542 () Bool)

(assert (=> b!5270279 m!6309542))

(assert (=> d!1695695 d!1695981))

(declare-fun b!5270280 () Bool)

(declare-fun e!3277729 () (Set Context!8548))

(declare-fun call!374427 () (Set Context!8548))

(assert (=> b!5270280 (= e!3277729 call!374427)))

(declare-fun b!5270281 () Bool)

(declare-fun e!3277730 () (Set Context!8548))

(assert (=> b!5270281 (= e!3277730 e!3277729)))

(declare-fun c!912808 () Bool)

(assert (=> b!5270281 (= c!912808 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156452))))))))

(declare-fun d!1695983 () Bool)

(declare-fun c!912809 () Bool)

(declare-fun e!3277731 () Bool)

(assert (=> d!1695983 (= c!912809 e!3277731)))

(declare-fun res!2235867 () Bool)

(assert (=> d!1695983 (=> (not res!2235867) (not e!3277731))))

(assert (=> d!1695983 (= res!2235867 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156452))))))))

(assert (=> d!1695983 (= (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 lt!2156452))) (h!67294 s!2326)) e!3277730)))

(declare-fun b!5270282 () Bool)

(assert (=> b!5270282 (= e!3277729 (as set.empty (Set Context!8548)))))

(declare-fun bm!374422 () Bool)

(assert (=> bm!374422 (= call!374427 (derivationStepZipperDown!338 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156452))))) (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156452)))))) (h!67294 s!2326)))))

(declare-fun b!5270283 () Bool)

(assert (=> b!5270283 (= e!3277731 (nullable!5059 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156452)))))))))

(declare-fun b!5270284 () Bool)

(assert (=> b!5270284 (= e!3277730 (set.union call!374427 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156452)))))) (h!67294 s!2326))))))

(assert (= (and d!1695983 res!2235867) b!5270283))

(assert (= (and d!1695983 c!912809) b!5270284))

(assert (= (and d!1695983 (not c!912809)) b!5270281))

(assert (= (and b!5270281 c!912808) b!5270280))

(assert (= (and b!5270281 (not c!912808)) b!5270282))

(assert (= (or b!5270284 b!5270280) bm!374422))

(declare-fun m!6309544 () Bool)

(assert (=> bm!374422 m!6309544))

(declare-fun m!6309546 () Bool)

(assert (=> b!5270283 m!6309546))

(declare-fun m!6309548 () Bool)

(assert (=> b!5270284 m!6309548))

(assert (=> b!5269515 d!1695983))

(declare-fun bs!1221130 () Bool)

(declare-fun d!1695985 () Bool)

(assert (= bs!1221130 (and d!1695985 d!1695929)))

(declare-fun lambda!265893 () Int)

(assert (=> bs!1221130 (= lambda!265893 lambda!265880)))

(assert (=> d!1695985 (= (nullableZipper!1289 (set.union lt!2156443 lt!2156453)) (exists!1992 (set.union lt!2156443 lt!2156453) lambda!265893))))

(declare-fun bs!1221131 () Bool)

(assert (= bs!1221131 d!1695985))

(declare-fun m!6309550 () Bool)

(assert (=> bs!1221131 m!6309550))

(assert (=> b!5269373 d!1695985))

(assert (=> b!5269596 d!1695969))

(assert (=> b!5269596 d!1695971))

(declare-fun bs!1221132 () Bool)

(declare-fun b!5270285 () Bool)

(assert (= bs!1221132 (and b!5270285 d!1695977)))

(declare-fun lambda!265894 () Int)

(assert (=> bs!1221132 (not (= lambda!265894 lambda!265892))))

(declare-fun bs!1221133 () Bool)

(assert (= bs!1221133 (and b!5270285 d!1695729)))

(assert (=> bs!1221133 (not (= lambda!265894 lambda!265825))))

(declare-fun bs!1221134 () Bool)

(assert (= bs!1221134 (and b!5270285 d!1695963)))

(assert (=> bs!1221134 (not (= lambda!265894 lambda!265886))))

(declare-fun bs!1221135 () Bool)

(assert (= bs!1221135 (and b!5270285 b!5269548)))

(assert (=> bs!1221135 (= (and (= (reg!15219 (regTwo!30293 r!7292)) (reg!15219 r!7292)) (= (regTwo!30293 r!7292) r!7292)) (= lambda!265894 lambda!265839))))

(declare-fun bs!1221136 () Bool)

(assert (= bs!1221136 (and b!5270285 d!1695731)))

(assert (=> bs!1221136 (not (= lambda!265894 lambda!265831))))

(declare-fun bs!1221137 () Bool)

(assert (= bs!1221137 (and b!5270285 b!5269153)))

(assert (=> bs!1221137 (not (= lambda!265894 lambda!265799))))

(declare-fun bs!1221138 () Bool)

(assert (= bs!1221138 (and b!5270285 b!5269556)))

(assert (=> bs!1221138 (not (= lambda!265894 lambda!265840))))

(assert (=> bs!1221136 (not (= lambda!265894 lambda!265830))))

(assert (=> bs!1221132 (not (= lambda!265894 lambda!265891))))

(assert (=> bs!1221137 (not (= lambda!265894 lambda!265798))))

(assert (=> b!5270285 true))

(assert (=> b!5270285 true))

(declare-fun bs!1221139 () Bool)

(declare-fun b!5270293 () Bool)

(assert (= bs!1221139 (and b!5270293 d!1695977)))

(declare-fun lambda!265895 () Int)

(assert (=> bs!1221139 (= (and (= (regOne!30292 (regTwo!30293 r!7292)) (regOne!30292 r!7292)) (= (regTwo!30292 (regTwo!30293 r!7292)) (regTwo!30292 r!7292))) (= lambda!265895 lambda!265892))))

(declare-fun bs!1221140 () Bool)

(assert (= bs!1221140 (and b!5270293 d!1695729)))

(assert (=> bs!1221140 (not (= lambda!265895 lambda!265825))))

(declare-fun bs!1221141 () Bool)

(assert (= bs!1221141 (and b!5270293 d!1695963)))

(assert (=> bs!1221141 (not (= lambda!265895 lambda!265886))))

(declare-fun bs!1221142 () Bool)

(assert (= bs!1221142 (and b!5270293 b!5269548)))

(assert (=> bs!1221142 (not (= lambda!265895 lambda!265839))))

(declare-fun bs!1221143 () Bool)

(assert (= bs!1221143 (and b!5270293 d!1695731)))

(assert (=> bs!1221143 (= (and (= (regOne!30292 (regTwo!30293 r!7292)) (regOne!30292 r!7292)) (= (regTwo!30292 (regTwo!30293 r!7292)) (regTwo!30292 r!7292))) (= lambda!265895 lambda!265831))))

(declare-fun bs!1221144 () Bool)

(assert (= bs!1221144 (and b!5270293 b!5269153)))

(assert (=> bs!1221144 (= (and (= (regOne!30292 (regTwo!30293 r!7292)) (regOne!30292 r!7292)) (= (regTwo!30292 (regTwo!30293 r!7292)) (regTwo!30292 r!7292))) (= lambda!265895 lambda!265799))))

(declare-fun bs!1221145 () Bool)

(assert (= bs!1221145 (and b!5270293 b!5270285)))

(assert (=> bs!1221145 (not (= lambda!265895 lambda!265894))))

(declare-fun bs!1221146 () Bool)

(assert (= bs!1221146 (and b!5270293 b!5269556)))

(assert (=> bs!1221146 (= (and (= (regOne!30292 (regTwo!30293 r!7292)) (regOne!30292 r!7292)) (= (regTwo!30292 (regTwo!30293 r!7292)) (regTwo!30292 r!7292))) (= lambda!265895 lambda!265840))))

(assert (=> bs!1221143 (not (= lambda!265895 lambda!265830))))

(assert (=> bs!1221139 (not (= lambda!265895 lambda!265891))))

(assert (=> bs!1221144 (not (= lambda!265895 lambda!265798))))

(assert (=> b!5270293 true))

(assert (=> b!5270293 true))

(declare-fun e!3277734 () Bool)

(declare-fun call!374428 () Bool)

(assert (=> b!5270285 (= e!3277734 call!374428)))

(declare-fun b!5270286 () Bool)

(declare-fun e!3277733 () Bool)

(declare-fun e!3277735 () Bool)

(assert (=> b!5270286 (= e!3277733 e!3277735)))

(declare-fun c!912813 () Bool)

(assert (=> b!5270286 (= c!912813 (is-Star!14890 (regTwo!30293 r!7292)))))

(declare-fun b!5270287 () Bool)

(declare-fun e!3277738 () Bool)

(assert (=> b!5270287 (= e!3277733 e!3277738)))

(declare-fun res!2235870 () Bool)

(assert (=> b!5270287 (= res!2235870 (matchRSpec!1993 (regOne!30293 (regTwo!30293 r!7292)) s!2326))))

(assert (=> b!5270287 (=> res!2235870 e!3277738)))

(declare-fun bm!374423 () Bool)

(declare-fun call!374429 () Bool)

(assert (=> bm!374423 (= call!374429 (isEmpty!32797 s!2326))))

(declare-fun b!5270288 () Bool)

(assert (=> b!5270288 (= e!3277738 (matchRSpec!1993 (regTwo!30293 (regTwo!30293 r!7292)) s!2326))))

(declare-fun b!5270289 () Bool)

(declare-fun e!3277736 () Bool)

(declare-fun e!3277732 () Bool)

(assert (=> b!5270289 (= e!3277736 e!3277732)))

(declare-fun res!2235869 () Bool)

(assert (=> b!5270289 (= res!2235869 (not (is-EmptyLang!14890 (regTwo!30293 r!7292))))))

(assert (=> b!5270289 (=> (not res!2235869) (not e!3277732))))

(declare-fun b!5270290 () Bool)

(declare-fun res!2235868 () Bool)

(assert (=> b!5270290 (=> res!2235868 e!3277734)))

(assert (=> b!5270290 (= res!2235868 call!374429)))

(assert (=> b!5270290 (= e!3277735 e!3277734)))

(declare-fun b!5270291 () Bool)

(declare-fun c!912812 () Bool)

(assert (=> b!5270291 (= c!912812 (is-Union!14890 (regTwo!30293 r!7292)))))

(declare-fun e!3277737 () Bool)

(assert (=> b!5270291 (= e!3277737 e!3277733)))

(declare-fun b!5270292 () Bool)

(assert (=> b!5270292 (= e!3277737 (= s!2326 (Cons!60846 (c!912522 (regTwo!30293 r!7292)) Nil!60846)))))

(assert (=> b!5270293 (= e!3277735 call!374428)))

(declare-fun b!5270294 () Bool)

(declare-fun c!912811 () Bool)

(assert (=> b!5270294 (= c!912811 (is-ElementMatch!14890 (regTwo!30293 r!7292)))))

(assert (=> b!5270294 (= e!3277732 e!3277737)))

(declare-fun b!5270295 () Bool)

(assert (=> b!5270295 (= e!3277736 call!374429)))

(declare-fun bm!374424 () Bool)

(assert (=> bm!374424 (= call!374428 (Exists!2071 (ite c!912813 lambda!265894 lambda!265895)))))

(declare-fun d!1695987 () Bool)

(declare-fun c!912810 () Bool)

(assert (=> d!1695987 (= c!912810 (is-EmptyExpr!14890 (regTwo!30293 r!7292)))))

(assert (=> d!1695987 (= (matchRSpec!1993 (regTwo!30293 r!7292) s!2326) e!3277736)))

(assert (= (and d!1695987 c!912810) b!5270295))

(assert (= (and d!1695987 (not c!912810)) b!5270289))

(assert (= (and b!5270289 res!2235869) b!5270294))

(assert (= (and b!5270294 c!912811) b!5270292))

(assert (= (and b!5270294 (not c!912811)) b!5270291))

(assert (= (and b!5270291 c!912812) b!5270287))

(assert (= (and b!5270291 (not c!912812)) b!5270286))

(assert (= (and b!5270287 (not res!2235870)) b!5270288))

(assert (= (and b!5270286 c!912813) b!5270290))

(assert (= (and b!5270286 (not c!912813)) b!5270293))

(assert (= (and b!5270290 (not res!2235868)) b!5270285))

(assert (= (or b!5270285 b!5270293) bm!374424))

(assert (= (or b!5270295 b!5270290) bm!374423))

(declare-fun m!6309552 () Bool)

(assert (=> b!5270287 m!6309552))

(assert (=> bm!374423 m!6309050))

(declare-fun m!6309554 () Bool)

(assert (=> b!5270288 m!6309554))

(declare-fun m!6309556 () Bool)

(assert (=> bm!374424 m!6309556))

(assert (=> b!5269551 d!1695987))

(declare-fun d!1695989 () Bool)

(assert (=> d!1695989 (= (head!11296 (unfocusZipperList!332 zl!343)) (h!67293 (unfocusZipperList!332 zl!343)))))

(assert (=> b!5269623 d!1695989))

(assert (=> bs!1221049 d!1695735))

(declare-fun d!1695991 () Bool)

(assert (=> d!1695991 true))

(assert (=> d!1695991 true))

(declare-fun res!2235871 () Bool)

(assert (=> d!1695991 (= (choose!39312 lambda!265799) res!2235871)))

(assert (=> d!1695725 d!1695991))

(declare-fun bs!1221147 () Bool)

(declare-fun d!1695993 () Bool)

(assert (= bs!1221147 (and d!1695993 d!1695929)))

(declare-fun lambda!265896 () Int)

(assert (=> bs!1221147 (= lambda!265896 lambda!265880)))

(declare-fun bs!1221148 () Bool)

(assert (= bs!1221148 (and d!1695993 d!1695985)))

(assert (=> bs!1221148 (= lambda!265896 lambda!265893)))

(assert (=> d!1695993 (= (nullableZipper!1289 lt!2156453) (exists!1992 lt!2156453 lambda!265896))))

(declare-fun bs!1221149 () Bool)

(assert (= bs!1221149 d!1695993))

(declare-fun m!6309558 () Bool)

(assert (=> bs!1221149 m!6309558))

(assert (=> b!5269366 d!1695993))

(declare-fun d!1695995 () Bool)

(assert (=> d!1695995 (= (nullable!5059 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))) (nullableFct!1441 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun bs!1221150 () Bool)

(assert (= bs!1221150 d!1695995))

(declare-fun m!6309560 () Bool)

(assert (=> bs!1221150 m!6309560))

(assert (=> b!5269501 d!1695995))

(assert (=> d!1695715 d!1695891))

(declare-fun d!1695997 () Bool)

(assert (=> d!1695997 (= (isDefined!11704 lt!2156556) (not (isEmpty!32798 lt!2156556)))))

(declare-fun bs!1221151 () Bool)

(assert (= bs!1221151 d!1695997))

(declare-fun m!6309562 () Bool)

(assert (=> bs!1221151 m!6309562))

(assert (=> d!1695723 d!1695997))

(declare-fun b!5270296 () Bool)

(declare-fun res!2235874 () Bool)

(declare-fun e!3277742 () Bool)

(assert (=> b!5270296 (=> res!2235874 e!3277742)))

(assert (=> b!5270296 (= res!2235874 (not (is-ElementMatch!14890 (regOne!30292 r!7292))))))

(declare-fun e!3277743 () Bool)

(assert (=> b!5270296 (= e!3277743 e!3277742)))

(declare-fun b!5270297 () Bool)

(declare-fun e!3277740 () Bool)

(assert (=> b!5270297 (= e!3277740 (matchR!7075 (derivativeStep!4110 (regOne!30292 r!7292) (head!11297 Nil!60846)) (tail!10394 Nil!60846)))))

(declare-fun b!5270298 () Bool)

(declare-fun e!3277739 () Bool)

(declare-fun e!3277741 () Bool)

(assert (=> b!5270298 (= e!3277739 e!3277741)))

(declare-fun res!2235872 () Bool)

(assert (=> b!5270298 (=> res!2235872 e!3277741)))

(declare-fun call!374430 () Bool)

(assert (=> b!5270298 (= res!2235872 call!374430)))

(declare-fun b!5270299 () Bool)

(assert (=> b!5270299 (= e!3277742 e!3277739)))

(declare-fun res!2235877 () Bool)

(assert (=> b!5270299 (=> (not res!2235877) (not e!3277739))))

(declare-fun lt!2156632 () Bool)

(assert (=> b!5270299 (= res!2235877 (not lt!2156632))))

(declare-fun b!5270300 () Bool)

(declare-fun e!3277745 () Bool)

(assert (=> b!5270300 (= e!3277745 (= lt!2156632 call!374430))))

(declare-fun b!5270301 () Bool)

(assert (=> b!5270301 (= e!3277745 e!3277743)))

(declare-fun c!912816 () Bool)

(assert (=> b!5270301 (= c!912816 (is-EmptyLang!14890 (regOne!30292 r!7292)))))

(declare-fun b!5270302 () Bool)

(assert (=> b!5270302 (= e!3277741 (not (= (head!11297 Nil!60846) (c!912522 (regOne!30292 r!7292)))))))

(declare-fun b!5270303 () Bool)

(declare-fun res!2235873 () Bool)

(declare-fun e!3277744 () Bool)

(assert (=> b!5270303 (=> (not res!2235873) (not e!3277744))))

(assert (=> b!5270303 (= res!2235873 (not call!374430))))

(declare-fun b!5270305 () Bool)

(declare-fun res!2235876 () Bool)

(assert (=> b!5270305 (=> (not res!2235876) (not e!3277744))))

(assert (=> b!5270305 (= res!2235876 (isEmpty!32797 (tail!10394 Nil!60846)))))

(declare-fun b!5270306 () Bool)

(declare-fun res!2235878 () Bool)

(assert (=> b!5270306 (=> res!2235878 e!3277742)))

(assert (=> b!5270306 (= res!2235878 e!3277744)))

(declare-fun res!2235875 () Bool)

(assert (=> b!5270306 (=> (not res!2235875) (not e!3277744))))

(assert (=> b!5270306 (= res!2235875 lt!2156632)))

(declare-fun b!5270307 () Bool)

(assert (=> b!5270307 (= e!3277744 (= (head!11297 Nil!60846) (c!912522 (regOne!30292 r!7292))))))

(declare-fun b!5270308 () Bool)

(assert (=> b!5270308 (= e!3277740 (nullable!5059 (regOne!30292 r!7292)))))

(declare-fun b!5270304 () Bool)

(assert (=> b!5270304 (= e!3277743 (not lt!2156632))))

(declare-fun d!1695999 () Bool)

(assert (=> d!1695999 e!3277745))

(declare-fun c!912815 () Bool)

(assert (=> d!1695999 (= c!912815 (is-EmptyExpr!14890 (regOne!30292 r!7292)))))

(assert (=> d!1695999 (= lt!2156632 e!3277740)))

(declare-fun c!912814 () Bool)

(assert (=> d!1695999 (= c!912814 (isEmpty!32797 Nil!60846))))

(assert (=> d!1695999 (validRegex!6626 (regOne!30292 r!7292))))

(assert (=> d!1695999 (= (matchR!7075 (regOne!30292 r!7292) Nil!60846) lt!2156632)))

(declare-fun b!5270309 () Bool)

(declare-fun res!2235879 () Bool)

(assert (=> b!5270309 (=> res!2235879 e!3277741)))

(assert (=> b!5270309 (= res!2235879 (not (isEmpty!32797 (tail!10394 Nil!60846))))))

(declare-fun bm!374425 () Bool)

(assert (=> bm!374425 (= call!374430 (isEmpty!32797 Nil!60846))))

(assert (= (and d!1695999 c!912814) b!5270308))

(assert (= (and d!1695999 (not c!912814)) b!5270297))

(assert (= (and d!1695999 c!912815) b!5270300))

(assert (= (and d!1695999 (not c!912815)) b!5270301))

(assert (= (and b!5270301 c!912816) b!5270304))

(assert (= (and b!5270301 (not c!912816)) b!5270296))

(assert (= (and b!5270296 (not res!2235874)) b!5270306))

(assert (= (and b!5270306 res!2235875) b!5270303))

(assert (= (and b!5270303 res!2235873) b!5270305))

(assert (= (and b!5270305 res!2235876) b!5270307))

(assert (= (and b!5270306 (not res!2235878)) b!5270299))

(assert (= (and b!5270299 res!2235877) b!5270298))

(assert (= (and b!5270298 (not res!2235872)) b!5270309))

(assert (= (and b!5270309 (not res!2235879)) b!5270302))

(assert (= (or b!5270300 b!5270298 b!5270303) bm!374425))

(declare-fun m!6309564 () Bool)

(assert (=> b!5270307 m!6309564))

(declare-fun m!6309566 () Bool)

(assert (=> b!5270308 m!6309566))

(declare-fun m!6309568 () Bool)

(assert (=> b!5270305 m!6309568))

(assert (=> b!5270305 m!6309568))

(declare-fun m!6309570 () Bool)

(assert (=> b!5270305 m!6309570))

(assert (=> b!5270297 m!6309564))

(assert (=> b!5270297 m!6309564))

(declare-fun m!6309572 () Bool)

(assert (=> b!5270297 m!6309572))

(assert (=> b!5270297 m!6309568))

(assert (=> b!5270297 m!6309572))

(assert (=> b!5270297 m!6309568))

(declare-fun m!6309574 () Bool)

(assert (=> b!5270297 m!6309574))

(declare-fun m!6309576 () Bool)

(assert (=> bm!374425 m!6309576))

(assert (=> b!5270302 m!6309564))

(assert (=> d!1695999 m!6309576))

(assert (=> d!1695999 m!6308924))

(assert (=> b!5270309 m!6309568))

(assert (=> b!5270309 m!6309568))

(assert (=> b!5270309 m!6309570))

(assert (=> d!1695723 d!1695999))

(assert (=> d!1695723 d!1695959))

(declare-fun bm!374426 () Bool)

(declare-fun call!374432 () (Set Context!8548))

(declare-fun call!374433 () (Set Context!8548))

(assert (=> bm!374426 (= call!374432 call!374433)))

(declare-fun b!5270310 () Bool)

(declare-fun e!3277749 () (Set Context!8548))

(declare-fun call!374436 () (Set Context!8548))

(assert (=> b!5270310 (= e!3277749 (set.union call!374436 call!374433))))

(declare-fun call!374435 () List!60969)

(declare-fun bm!374427 () Bool)

(declare-fun c!912818 () Bool)

(declare-fun c!912820 () Bool)

(assert (=> bm!374427 (= call!374435 ($colon$colon!1339 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156445)))) (ite (or c!912820 c!912818) (regTwo!30292 (h!67293 (exprs!4774 lt!2156445))) (h!67293 (exprs!4774 lt!2156445)))))))

(declare-fun bm!374428 () Bool)

(declare-fun call!374434 () List!60969)

(assert (=> bm!374428 (= call!374434 call!374435)))

(declare-fun b!5270311 () Bool)

(declare-fun e!3277748 () Bool)

(assert (=> b!5270311 (= e!3277748 (nullable!5059 (regOne!30292 (h!67293 (exprs!4774 lt!2156445)))))))

(declare-fun bm!374429 () Bool)

(declare-fun c!912817 () Bool)

(assert (=> bm!374429 (= call!374436 (derivationStepZipperDown!338 (ite c!912817 (regOne!30293 (h!67293 (exprs!4774 lt!2156445))) (regOne!30292 (h!67293 (exprs!4774 lt!2156445)))) (ite c!912817 (Context!8549 (t!374162 (exprs!4774 lt!2156445))) (Context!8549 call!374435)) (h!67294 s!2326)))))

(declare-fun d!1696001 () Bool)

(declare-fun c!912821 () Bool)

(assert (=> d!1696001 (= c!912821 (and (is-ElementMatch!14890 (h!67293 (exprs!4774 lt!2156445))) (= (c!912522 (h!67293 (exprs!4774 lt!2156445))) (h!67294 s!2326))))))

(declare-fun e!3277746 () (Set Context!8548))

(assert (=> d!1696001 (= (derivationStepZipperDown!338 (h!67293 (exprs!4774 lt!2156445)) (Context!8549 (t!374162 (exprs!4774 lt!2156445))) (h!67294 s!2326)) e!3277746)))

(declare-fun b!5270312 () Bool)

(declare-fun c!912819 () Bool)

(assert (=> b!5270312 (= c!912819 (is-Star!14890 (h!67293 (exprs!4774 lt!2156445))))))

(declare-fun e!3277750 () (Set Context!8548))

(declare-fun e!3277747 () (Set Context!8548))

(assert (=> b!5270312 (= e!3277750 e!3277747)))

(declare-fun b!5270313 () Bool)

(assert (=> b!5270313 (= e!3277747 call!374432)))

(declare-fun b!5270314 () Bool)

(declare-fun e!3277751 () (Set Context!8548))

(assert (=> b!5270314 (= e!3277746 e!3277751)))

(assert (=> b!5270314 (= c!912817 (is-Union!14890 (h!67293 (exprs!4774 lt!2156445))))))

(declare-fun b!5270315 () Bool)

(declare-fun call!374431 () (Set Context!8548))

(assert (=> b!5270315 (= e!3277751 (set.union call!374436 call!374431))))

(declare-fun b!5270316 () Bool)

(assert (=> b!5270316 (= c!912820 e!3277748)))

(declare-fun res!2235880 () Bool)

(assert (=> b!5270316 (=> (not res!2235880) (not e!3277748))))

(assert (=> b!5270316 (= res!2235880 (is-Concat!23735 (h!67293 (exprs!4774 lt!2156445))))))

(assert (=> b!5270316 (= e!3277751 e!3277749)))

(declare-fun b!5270317 () Bool)

(assert (=> b!5270317 (= e!3277747 (as set.empty (Set Context!8548)))))

(declare-fun b!5270318 () Bool)

(assert (=> b!5270318 (= e!3277749 e!3277750)))

(assert (=> b!5270318 (= c!912818 (is-Concat!23735 (h!67293 (exprs!4774 lt!2156445))))))

(declare-fun b!5270319 () Bool)

(assert (=> b!5270319 (= e!3277746 (set.insert (Context!8549 (t!374162 (exprs!4774 lt!2156445))) (as set.empty (Set Context!8548))))))

(declare-fun bm!374430 () Bool)

(assert (=> bm!374430 (= call!374433 call!374431)))

(declare-fun b!5270320 () Bool)

(assert (=> b!5270320 (= e!3277750 call!374432)))

(declare-fun bm!374431 () Bool)

(assert (=> bm!374431 (= call!374431 (derivationStepZipperDown!338 (ite c!912817 (regTwo!30293 (h!67293 (exprs!4774 lt!2156445))) (ite c!912820 (regTwo!30292 (h!67293 (exprs!4774 lt!2156445))) (ite c!912818 (regOne!30292 (h!67293 (exprs!4774 lt!2156445))) (reg!15219 (h!67293 (exprs!4774 lt!2156445)))))) (ite (or c!912817 c!912820) (Context!8549 (t!374162 (exprs!4774 lt!2156445))) (Context!8549 call!374434)) (h!67294 s!2326)))))

(assert (= (and d!1696001 c!912821) b!5270319))

(assert (= (and d!1696001 (not c!912821)) b!5270314))

(assert (= (and b!5270314 c!912817) b!5270315))

(assert (= (and b!5270314 (not c!912817)) b!5270316))

(assert (= (and b!5270316 res!2235880) b!5270311))

(assert (= (and b!5270316 c!912820) b!5270310))

(assert (= (and b!5270316 (not c!912820)) b!5270318))

(assert (= (and b!5270318 c!912818) b!5270320))

(assert (= (and b!5270318 (not c!912818)) b!5270312))

(assert (= (and b!5270312 c!912819) b!5270313))

(assert (= (and b!5270312 (not c!912819)) b!5270317))

(assert (= (or b!5270320 b!5270313) bm!374428))

(assert (= (or b!5270320 b!5270313) bm!374426))

(assert (= (or b!5270310 bm!374428) bm!374427))

(assert (= (or b!5270310 bm!374426) bm!374430))

(assert (= (or b!5270315 bm!374430) bm!374431))

(assert (= (or b!5270315 b!5270310) bm!374429))

(declare-fun m!6309578 () Bool)

(assert (=> bm!374429 m!6309578))

(declare-fun m!6309580 () Bool)

(assert (=> bm!374431 m!6309580))

(declare-fun m!6309582 () Bool)

(assert (=> b!5270319 m!6309582))

(declare-fun m!6309584 () Bool)

(assert (=> bm!374427 m!6309584))

(declare-fun m!6309586 () Bool)

(assert (=> b!5270311 m!6309586))

(assert (=> bm!374268 d!1696001))

(declare-fun bm!374432 () Bool)

(declare-fun call!374438 () (Set Context!8548))

(declare-fun call!374439 () (Set Context!8548))

(assert (=> bm!374432 (= call!374438 call!374439)))

(declare-fun b!5270321 () Bool)

(declare-fun e!3277755 () (Set Context!8548))

(declare-fun call!374442 () (Set Context!8548))

(assert (=> b!5270321 (= e!3277755 (set.union call!374442 call!374439))))

(declare-fun c!912825 () Bool)

(declare-fun c!912823 () Bool)

(declare-fun call!374441 () List!60969)

(declare-fun bm!374433 () Bool)

(assert (=> bm!374433 (= call!374441 ($colon$colon!1339 (exprs!4774 (ite (or c!912588 c!912591) lt!2156452 (Context!8549 call!374290))) (ite (or c!912825 c!912823) (regTwo!30292 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))) (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292)))))))))))

(declare-fun bm!374434 () Bool)

(declare-fun call!374440 () List!60969)

(assert (=> bm!374434 (= call!374440 call!374441)))

(declare-fun e!3277754 () Bool)

(declare-fun b!5270322 () Bool)

(assert (=> b!5270322 (= e!3277754 (nullable!5059 (regOne!30292 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292)))))))))))

(declare-fun bm!374435 () Bool)

(declare-fun c!912822 () Bool)

(assert (=> bm!374435 (= call!374442 (derivationStepZipperDown!338 (ite c!912822 (regOne!30293 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))) (regOne!30292 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292)))))))) (ite c!912822 (ite (or c!912588 c!912591) lt!2156452 (Context!8549 call!374290)) (Context!8549 call!374441)) (h!67294 s!2326)))))

(declare-fun c!912826 () Bool)

(declare-fun d!1696003 () Bool)

(assert (=> d!1696003 (= c!912826 (and (is-ElementMatch!14890 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))) (= (c!912522 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))) (h!67294 s!2326))))))

(declare-fun e!3277752 () (Set Context!8548))

(assert (=> d!1696003 (= (derivationStepZipperDown!338 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292)))))) (ite (or c!912588 c!912591) lt!2156452 (Context!8549 call!374290)) (h!67294 s!2326)) e!3277752)))

(declare-fun b!5270323 () Bool)

(declare-fun c!912824 () Bool)

(assert (=> b!5270323 (= c!912824 (is-Star!14890 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))))))

(declare-fun e!3277756 () (Set Context!8548))

(declare-fun e!3277753 () (Set Context!8548))

(assert (=> b!5270323 (= e!3277756 e!3277753)))

(declare-fun b!5270324 () Bool)

(assert (=> b!5270324 (= e!3277753 call!374438)))

(declare-fun b!5270325 () Bool)

(declare-fun e!3277757 () (Set Context!8548))

(assert (=> b!5270325 (= e!3277752 e!3277757)))

(assert (=> b!5270325 (= c!912822 (is-Union!14890 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))))))

(declare-fun b!5270326 () Bool)

(declare-fun call!374437 () (Set Context!8548))

(assert (=> b!5270326 (= e!3277757 (set.union call!374442 call!374437))))

(declare-fun b!5270327 () Bool)

(assert (=> b!5270327 (= c!912825 e!3277754)))

(declare-fun res!2235881 () Bool)

(assert (=> b!5270327 (=> (not res!2235881) (not e!3277754))))

(assert (=> b!5270327 (= res!2235881 (is-Concat!23735 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))))))

(assert (=> b!5270327 (= e!3277757 e!3277755)))

(declare-fun b!5270328 () Bool)

(assert (=> b!5270328 (= e!3277753 (as set.empty (Set Context!8548)))))

(declare-fun b!5270329 () Bool)

(assert (=> b!5270329 (= e!3277755 e!3277756)))

(assert (=> b!5270329 (= c!912823 (is-Concat!23735 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))))))

(declare-fun b!5270330 () Bool)

(assert (=> b!5270330 (= e!3277752 (set.insert (ite (or c!912588 c!912591) lt!2156452 (Context!8549 call!374290)) (as set.empty (Set Context!8548))))))

(declare-fun bm!374436 () Bool)

(assert (=> bm!374436 (= call!374439 call!374437)))

(declare-fun b!5270331 () Bool)

(assert (=> b!5270331 (= e!3277756 call!374438)))

(declare-fun bm!374437 () Bool)

(assert (=> bm!374437 (= call!374437 (derivationStepZipperDown!338 (ite c!912822 (regTwo!30293 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))) (ite c!912825 (regTwo!30292 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))) (ite c!912823 (regOne!30292 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292))))))) (reg!15219 (ite c!912588 (regTwo!30293 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912591 (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (ite c!912589 (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))) (reg!15219 (regTwo!30292 (regOne!30292 r!7292)))))))))) (ite (or c!912822 c!912825) (ite (or c!912588 c!912591) lt!2156452 (Context!8549 call!374290)) (Context!8549 call!374440)) (h!67294 s!2326)))))

(assert (= (and d!1696003 c!912826) b!5270330))

(assert (= (and d!1696003 (not c!912826)) b!5270325))

(assert (= (and b!5270325 c!912822) b!5270326))

(assert (= (and b!5270325 (not c!912822)) b!5270327))

(assert (= (and b!5270327 res!2235881) b!5270322))

(assert (= (and b!5270327 c!912825) b!5270321))

(assert (= (and b!5270327 (not c!912825)) b!5270329))

(assert (= (and b!5270329 c!912823) b!5270331))

(assert (= (and b!5270329 (not c!912823)) b!5270323))

(assert (= (and b!5270323 c!912824) b!5270324))

(assert (= (and b!5270323 (not c!912824)) b!5270328))

(assert (= (or b!5270331 b!5270324) bm!374434))

(assert (= (or b!5270331 b!5270324) bm!374432))

(assert (= (or b!5270321 bm!374434) bm!374433))

(assert (= (or b!5270321 bm!374432) bm!374436))

(assert (= (or b!5270326 bm!374436) bm!374437))

(assert (= (or b!5270326 b!5270321) bm!374435))

(declare-fun m!6309588 () Bool)

(assert (=> bm!374435 m!6309588))

(declare-fun m!6309590 () Bool)

(assert (=> bm!374437 m!6309590))

(declare-fun m!6309592 () Bool)

(assert (=> b!5270330 m!6309592))

(declare-fun m!6309594 () Bool)

(assert (=> bm!374433 m!6309594))

(declare-fun m!6309596 () Bool)

(assert (=> b!5270322 m!6309596))

(assert (=> bm!374287 d!1696003))

(declare-fun d!1696005 () Bool)

(declare-fun c!912827 () Bool)

(assert (=> d!1696005 (= c!912827 (isEmpty!32797 (tail!10394 (t!374163 s!2326))))))

(declare-fun e!3277758 () Bool)

(assert (=> d!1696005 (= (matchZipper!1134 (derivationStepZipper!1133 lt!2156461 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))) e!3277758)))

(declare-fun b!5270332 () Bool)

(assert (=> b!5270332 (= e!3277758 (nullableZipper!1289 (derivationStepZipper!1133 lt!2156461 (head!11297 (t!374163 s!2326)))))))

(declare-fun b!5270333 () Bool)

(assert (=> b!5270333 (= e!3277758 (matchZipper!1134 (derivationStepZipper!1133 (derivationStepZipper!1133 lt!2156461 (head!11297 (t!374163 s!2326))) (head!11297 (tail!10394 (t!374163 s!2326)))) (tail!10394 (tail!10394 (t!374163 s!2326)))))))

(assert (= (and d!1696005 c!912827) b!5270332))

(assert (= (and d!1696005 (not c!912827)) b!5270333))

(assert (=> d!1696005 m!6308876))

(assert (=> d!1696005 m!6309452))

(assert (=> b!5270332 m!6308900))

(declare-fun m!6309598 () Bool)

(assert (=> b!5270332 m!6309598))

(assert (=> b!5270333 m!6308876))

(assert (=> b!5270333 m!6309456))

(assert (=> b!5270333 m!6308900))

(assert (=> b!5270333 m!6309456))

(declare-fun m!6309600 () Bool)

(assert (=> b!5270333 m!6309600))

(assert (=> b!5270333 m!6308876))

(assert (=> b!5270333 m!6309460))

(assert (=> b!5270333 m!6309600))

(assert (=> b!5270333 m!6309460))

(declare-fun m!6309602 () Bool)

(assert (=> b!5270333 m!6309602))

(assert (=> b!5269376 d!1696005))

(declare-fun bs!1221152 () Bool)

(declare-fun d!1696007 () Bool)

(assert (= bs!1221152 (and d!1696007 b!5269181)))

(declare-fun lambda!265897 () Int)

(assert (=> bs!1221152 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265897 lambda!265800))))

(declare-fun bs!1221153 () Bool)

(assert (= bs!1221153 (and d!1696007 d!1695743)))

(assert (=> bs!1221153 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265897 lambda!265834))))

(declare-fun bs!1221154 () Bool)

(assert (= bs!1221154 (and d!1696007 d!1695939)))

(assert (=> bs!1221154 (= lambda!265897 lambda!265881)))

(assert (=> d!1696007 true))

(assert (=> d!1696007 (= (derivationStepZipper!1133 lt!2156461 (head!11297 (t!374163 s!2326))) (flatMap!617 lt!2156461 lambda!265897))))

(declare-fun bs!1221155 () Bool)

(assert (= bs!1221155 d!1696007))

(declare-fun m!6309604 () Bool)

(assert (=> bs!1221155 m!6309604))

(assert (=> b!5269376 d!1696007))

(assert (=> b!5269376 d!1695941))

(assert (=> b!5269376 d!1695943))

(declare-fun b!5270344 () Bool)

(declare-fun res!2235887 () Bool)

(declare-fun e!3277763 () Bool)

(assert (=> b!5270344 (=> (not res!2235887) (not e!3277763))))

(declare-fun lt!2156635 () List!60970)

(declare-fun size!39746 (List!60970) Int)

(assert (=> b!5270344 (= res!2235887 (= (size!39746 lt!2156635) (+ (size!39746 (_1!35392 (get!20920 lt!2156556))) (size!39746 (_2!35392 (get!20920 lt!2156556))))))))

(declare-fun b!5270342 () Bool)

(declare-fun e!3277764 () List!60970)

(assert (=> b!5270342 (= e!3277764 (_2!35392 (get!20920 lt!2156556)))))

(declare-fun d!1696009 () Bool)

(assert (=> d!1696009 e!3277763))

(declare-fun res!2235886 () Bool)

(assert (=> d!1696009 (=> (not res!2235886) (not e!3277763))))

(declare-fun content!10822 (List!60970) (Set C!30050))

(assert (=> d!1696009 (= res!2235886 (= (content!10822 lt!2156635) (set.union (content!10822 (_1!35392 (get!20920 lt!2156556))) (content!10822 (_2!35392 (get!20920 lt!2156556))))))))

(assert (=> d!1696009 (= lt!2156635 e!3277764)))

(declare-fun c!912830 () Bool)

(assert (=> d!1696009 (= c!912830 (is-Nil!60846 (_1!35392 (get!20920 lt!2156556))))))

(assert (=> d!1696009 (= (++!13269 (_1!35392 (get!20920 lt!2156556)) (_2!35392 (get!20920 lt!2156556))) lt!2156635)))

(declare-fun b!5270343 () Bool)

(assert (=> b!5270343 (= e!3277764 (Cons!60846 (h!67294 (_1!35392 (get!20920 lt!2156556))) (++!13269 (t!374163 (_1!35392 (get!20920 lt!2156556))) (_2!35392 (get!20920 lt!2156556)))))))

(declare-fun b!5270345 () Bool)

(assert (=> b!5270345 (= e!3277763 (or (not (= (_2!35392 (get!20920 lt!2156556)) Nil!60846)) (= lt!2156635 (_1!35392 (get!20920 lt!2156556)))))))

(assert (= (and d!1696009 c!912830) b!5270342))

(assert (= (and d!1696009 (not c!912830)) b!5270343))

(assert (= (and d!1696009 res!2235886) b!5270344))

(assert (= (and b!5270344 res!2235887) b!5270345))

(declare-fun m!6309606 () Bool)

(assert (=> b!5270344 m!6309606))

(declare-fun m!6309608 () Bool)

(assert (=> b!5270344 m!6309608))

(declare-fun m!6309610 () Bool)

(assert (=> b!5270344 m!6309610))

(declare-fun m!6309612 () Bool)

(assert (=> d!1696009 m!6309612))

(declare-fun m!6309614 () Bool)

(assert (=> d!1696009 m!6309614))

(declare-fun m!6309616 () Bool)

(assert (=> d!1696009 m!6309616))

(declare-fun m!6309618 () Bool)

(assert (=> b!5270343 m!6309618))

(assert (=> b!5269405 d!1696009))

(assert (=> b!5269405 d!1695895))

(declare-fun d!1696011 () Bool)

(assert (=> d!1696011 (= (isEmpty!32794 (tail!10393 (exprs!4774 (h!67295 zl!343)))) (is-Nil!60845 (tail!10393 (exprs!4774 (h!67295 zl!343)))))))

(assert (=> b!5269347 d!1696011))

(declare-fun d!1696013 () Bool)

(assert (=> d!1696013 (= (tail!10393 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))

(assert (=> b!5269347 d!1696013))

(assert (=> b!5269635 d!1695695))

(declare-fun bs!1221156 () Bool)

(declare-fun d!1696015 () Bool)

(assert (= bs!1221156 (and d!1696015 d!1695947)))

(declare-fun lambda!265898 () Int)

(assert (=> bs!1221156 (= lambda!265898 lambda!265882)))

(declare-fun bs!1221157 () Bool)

(assert (= bs!1221157 (and d!1696015 d!1695953)))

(assert (=> bs!1221157 (= lambda!265898 lambda!265883)))

(declare-fun bs!1221158 () Bool)

(assert (= bs!1221158 (and d!1696015 d!1695783)))

(assert (=> bs!1221158 (= lambda!265898 lambda!265846)))

(declare-fun bs!1221159 () Bool)

(assert (= bs!1221159 (and d!1696015 d!1695697)))

(assert (=> bs!1221159 (= lambda!265898 lambda!265821)))

(declare-fun bs!1221160 () Bool)

(assert (= bs!1221160 (and d!1696015 d!1695711)))

(assert (=> bs!1221160 (= lambda!265898 lambda!265822)))

(declare-fun bs!1221161 () Bool)

(assert (= bs!1221161 (and d!1696015 d!1695781)))

(assert (=> bs!1221161 (= lambda!265898 lambda!265843)))

(declare-fun bs!1221162 () Bool)

(assert (= bs!1221162 (and d!1696015 d!1695695)))

(assert (=> bs!1221162 (= lambda!265898 lambda!265818)))

(declare-fun lt!2156636 () List!60969)

(assert (=> d!1696015 (forall!14298 lt!2156636 lambda!265898)))

(declare-fun e!3277765 () List!60969)

(assert (=> d!1696015 (= lt!2156636 e!3277765)))

(declare-fun c!912831 () Bool)

(assert (=> d!1696015 (= c!912831 (is-Cons!60847 (t!374164 zl!343)))))

(assert (=> d!1696015 (= (unfocusZipperList!332 (t!374164 zl!343)) lt!2156636)))

(declare-fun b!5270346 () Bool)

(assert (=> b!5270346 (= e!3277765 (Cons!60845 (generalisedConcat!559 (exprs!4774 (h!67295 (t!374164 zl!343)))) (unfocusZipperList!332 (t!374164 (t!374164 zl!343)))))))

(declare-fun b!5270347 () Bool)

(assert (=> b!5270347 (= e!3277765 Nil!60845)))

(assert (= (and d!1696015 c!912831) b!5270346))

(assert (= (and d!1696015 (not c!912831)) b!5270347))

(declare-fun m!6309620 () Bool)

(assert (=> d!1696015 m!6309620))

(declare-fun m!6309622 () Bool)

(assert (=> b!5270346 m!6309622))

(declare-fun m!6309624 () Bool)

(assert (=> b!5270346 m!6309624))

(assert (=> b!5269635 d!1696015))

(declare-fun d!1696017 () Bool)

(declare-fun res!2235888 () Bool)

(declare-fun e!3277766 () Bool)

(assert (=> d!1696017 (=> res!2235888 e!3277766)))

(assert (=> d!1696017 (= res!2235888 (is-Nil!60845 lt!2156583))))

(assert (=> d!1696017 (= (forall!14298 lt!2156583 lambda!265846) e!3277766)))

(declare-fun b!5270348 () Bool)

(declare-fun e!3277767 () Bool)

(assert (=> b!5270348 (= e!3277766 e!3277767)))

(declare-fun res!2235889 () Bool)

(assert (=> b!5270348 (=> (not res!2235889) (not e!3277767))))

(assert (=> b!5270348 (= res!2235889 (dynLambda!24044 lambda!265846 (h!67293 lt!2156583)))))

(declare-fun b!5270349 () Bool)

(assert (=> b!5270349 (= e!3277767 (forall!14298 (t!374162 lt!2156583) lambda!265846))))

(assert (= (and d!1696017 (not res!2235888)) b!5270348))

(assert (= (and b!5270348 res!2235889) b!5270349))

(declare-fun b_lambda!203275 () Bool)

(assert (=> (not b_lambda!203275) (not b!5270348)))

(declare-fun m!6309626 () Bool)

(assert (=> b!5270348 m!6309626))

(declare-fun m!6309628 () Bool)

(assert (=> b!5270349 m!6309628))

(assert (=> d!1695783 d!1696017))

(declare-fun d!1696019 () Bool)

(declare-fun c!912834 () Bool)

(assert (=> d!1696019 (= c!912834 (is-Nil!60847 lt!2156569))))

(declare-fun e!3277770 () (Set Context!8548))

(assert (=> d!1696019 (= (content!10820 lt!2156569) e!3277770)))

(declare-fun b!5270354 () Bool)

(assert (=> b!5270354 (= e!3277770 (as set.empty (Set Context!8548)))))

(declare-fun b!5270355 () Bool)

(assert (=> b!5270355 (= e!3277770 (set.union (set.insert (h!67295 lt!2156569) (as set.empty (Set Context!8548))) (content!10820 (t!374164 lt!2156569))))))

(assert (= (and d!1696019 c!912834) b!5270354))

(assert (= (and d!1696019 (not c!912834)) b!5270355))

(declare-fun m!6309630 () Bool)

(assert (=> b!5270355 m!6309630))

(declare-fun m!6309632 () Bool)

(assert (=> b!5270355 m!6309632))

(assert (=> b!5269489 d!1696019))

(declare-fun d!1696021 () Bool)

(assert (=> d!1696021 (= (isEmptyExpr!824 lt!2156541) (is-EmptyExpr!14890 lt!2156541))))

(assert (=> b!5269351 d!1696021))

(assert (=> d!1695755 d!1695753))

(declare-fun d!1696023 () Bool)

(assert (=> d!1696023 (= (flatMap!617 lt!2156463 lambda!265800) (dynLambda!24042 lambda!265800 lt!2156445))))

(assert (=> d!1696023 true))

(declare-fun _$13!1813 () Unit!153078)

(assert (=> d!1696023 (= (choose!39316 lt!2156463 lt!2156445 lambda!265800) _$13!1813)))

(declare-fun b_lambda!203277 () Bool)

(assert (=> (not b_lambda!203277) (not d!1696023)))

(declare-fun bs!1221163 () Bool)

(assert (= bs!1221163 d!1696023))

(assert (=> bs!1221163 m!6308664))

(assert (=> bs!1221163 m!6309008))

(assert (=> d!1695755 d!1696023))

(declare-fun b!5270356 () Bool)

(declare-fun e!3277777 () Bool)

(declare-fun call!374444 () Bool)

(assert (=> b!5270356 (= e!3277777 call!374444)))

(declare-fun b!5270357 () Bool)

(declare-fun e!3277774 () Bool)

(declare-fun e!3277776 () Bool)

(assert (=> b!5270357 (= e!3277774 e!3277776)))

(declare-fun c!912835 () Bool)

(assert (=> b!5270357 (= c!912835 (is-Star!14890 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))))))

(declare-fun b!5270358 () Bool)

(declare-fun res!2235891 () Bool)

(declare-fun e!3277773 () Bool)

(assert (=> b!5270358 (=> res!2235891 e!3277773)))

(assert (=> b!5270358 (= res!2235891 (not (is-Concat!23735 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292)))))))

(declare-fun e!3277772 () Bool)

(assert (=> b!5270358 (= e!3277772 e!3277773)))

(declare-fun b!5270359 () Bool)

(declare-fun e!3277771 () Bool)

(assert (=> b!5270359 (= e!3277771 call!374444)))

(declare-fun bm!374438 () Bool)

(declare-fun call!374443 () Bool)

(declare-fun call!374445 () Bool)

(assert (=> bm!374438 (= call!374443 call!374445)))

(declare-fun b!5270360 () Bool)

(declare-fun e!3277775 () Bool)

(assert (=> b!5270360 (= e!3277775 call!374445)))

(declare-fun b!5270361 () Bool)

(assert (=> b!5270361 (= e!3277773 e!3277777)))

(declare-fun res!2235890 () Bool)

(assert (=> b!5270361 (=> (not res!2235890) (not e!3277777))))

(assert (=> b!5270361 (= res!2235890 call!374443)))

(declare-fun b!5270362 () Bool)

(assert (=> b!5270362 (= e!3277776 e!3277775)))

(declare-fun res!2235894 () Bool)

(assert (=> b!5270362 (= res!2235894 (not (nullable!5059 (reg!15219 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))))))))

(assert (=> b!5270362 (=> (not res!2235894) (not e!3277775))))

(declare-fun c!912836 () Bool)

(declare-fun bm!374440 () Bool)

(assert (=> bm!374440 (= call!374444 (validRegex!6626 (ite c!912836 (regTwo!30293 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))) (regTwo!30292 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))))))))

(declare-fun bm!374439 () Bool)

(assert (=> bm!374439 (= call!374445 (validRegex!6626 (ite c!912835 (reg!15219 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))) (ite c!912836 (regOne!30293 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))) (regOne!30292 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292)))))))))

(declare-fun d!1696025 () Bool)

(declare-fun res!2235893 () Bool)

(assert (=> d!1696025 (=> res!2235893 e!3277774)))

(assert (=> d!1696025 (= res!2235893 (is-ElementMatch!14890 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))))))

(assert (=> d!1696025 (= (validRegex!6626 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))) e!3277774)))

(declare-fun b!5270363 () Bool)

(declare-fun res!2235892 () Bool)

(assert (=> b!5270363 (=> (not res!2235892) (not e!3277771))))

(assert (=> b!5270363 (= res!2235892 call!374443)))

(assert (=> b!5270363 (= e!3277772 e!3277771)))

(declare-fun b!5270364 () Bool)

(assert (=> b!5270364 (= e!3277776 e!3277772)))

(assert (=> b!5270364 (= c!912836 (is-Union!14890 (ite c!912553 (regTwo!30293 r!7292) (regTwo!30292 r!7292))))))

(assert (= (and d!1696025 (not res!2235893)) b!5270357))

(assert (= (and b!5270357 c!912835) b!5270362))

(assert (= (and b!5270357 (not c!912835)) b!5270364))

(assert (= (and b!5270362 res!2235894) b!5270360))

(assert (= (and b!5270364 c!912836) b!5270363))

(assert (= (and b!5270364 (not c!912836)) b!5270358))

(assert (= (and b!5270363 res!2235892) b!5270359))

(assert (= (and b!5270358 (not res!2235891)) b!5270361))

(assert (= (and b!5270361 res!2235890) b!5270356))

(assert (= (or b!5270359 b!5270356) bm!374440))

(assert (= (or b!5270363 b!5270361) bm!374438))

(assert (= (or b!5270360 bm!374438) bm!374439))

(declare-fun m!6309634 () Bool)

(assert (=> b!5270362 m!6309634))

(declare-fun m!6309636 () Bool)

(assert (=> bm!374440 m!6309636))

(declare-fun m!6309638 () Bool)

(assert (=> bm!374439 m!6309638))

(assert (=> bm!374265 d!1696025))

(declare-fun b!5270365 () Bool)

(declare-fun res!2235897 () Bool)

(declare-fun e!3277781 () Bool)

(assert (=> b!5270365 (=> res!2235897 e!3277781)))

(assert (=> b!5270365 (= res!2235897 (not (is-ElementMatch!14890 (regOne!30292 r!7292))))))

(declare-fun e!3277782 () Bool)

(assert (=> b!5270365 (= e!3277782 e!3277781)))

(declare-fun b!5270366 () Bool)

(declare-fun e!3277779 () Bool)

(assert (=> b!5270366 (= e!3277779 (matchR!7075 (derivativeStep!4110 (regOne!30292 r!7292) (head!11297 (_1!35392 (get!20920 lt!2156556)))) (tail!10394 (_1!35392 (get!20920 lt!2156556)))))))

(declare-fun b!5270367 () Bool)

(declare-fun e!3277778 () Bool)

(declare-fun e!3277780 () Bool)

(assert (=> b!5270367 (= e!3277778 e!3277780)))

(declare-fun res!2235895 () Bool)

(assert (=> b!5270367 (=> res!2235895 e!3277780)))

(declare-fun call!374446 () Bool)

(assert (=> b!5270367 (= res!2235895 call!374446)))

(declare-fun b!5270368 () Bool)

(assert (=> b!5270368 (= e!3277781 e!3277778)))

(declare-fun res!2235900 () Bool)

(assert (=> b!5270368 (=> (not res!2235900) (not e!3277778))))

(declare-fun lt!2156637 () Bool)

(assert (=> b!5270368 (= res!2235900 (not lt!2156637))))

(declare-fun b!5270369 () Bool)

(declare-fun e!3277784 () Bool)

(assert (=> b!5270369 (= e!3277784 (= lt!2156637 call!374446))))

(declare-fun b!5270370 () Bool)

(assert (=> b!5270370 (= e!3277784 e!3277782)))

(declare-fun c!912839 () Bool)

(assert (=> b!5270370 (= c!912839 (is-EmptyLang!14890 (regOne!30292 r!7292)))))

(declare-fun b!5270371 () Bool)

(assert (=> b!5270371 (= e!3277780 (not (= (head!11297 (_1!35392 (get!20920 lt!2156556))) (c!912522 (regOne!30292 r!7292)))))))

(declare-fun b!5270372 () Bool)

(declare-fun res!2235896 () Bool)

(declare-fun e!3277783 () Bool)

(assert (=> b!5270372 (=> (not res!2235896) (not e!3277783))))

(assert (=> b!5270372 (= res!2235896 (not call!374446))))

(declare-fun b!5270374 () Bool)

(declare-fun res!2235899 () Bool)

(assert (=> b!5270374 (=> (not res!2235899) (not e!3277783))))

(assert (=> b!5270374 (= res!2235899 (isEmpty!32797 (tail!10394 (_1!35392 (get!20920 lt!2156556)))))))

(declare-fun b!5270375 () Bool)

(declare-fun res!2235901 () Bool)

(assert (=> b!5270375 (=> res!2235901 e!3277781)))

(assert (=> b!5270375 (= res!2235901 e!3277783)))

(declare-fun res!2235898 () Bool)

(assert (=> b!5270375 (=> (not res!2235898) (not e!3277783))))

(assert (=> b!5270375 (= res!2235898 lt!2156637)))

(declare-fun b!5270376 () Bool)

(assert (=> b!5270376 (= e!3277783 (= (head!11297 (_1!35392 (get!20920 lt!2156556))) (c!912522 (regOne!30292 r!7292))))))

(declare-fun b!5270377 () Bool)

(assert (=> b!5270377 (= e!3277779 (nullable!5059 (regOne!30292 r!7292)))))

(declare-fun b!5270373 () Bool)

(assert (=> b!5270373 (= e!3277782 (not lt!2156637))))

(declare-fun d!1696027 () Bool)

(assert (=> d!1696027 e!3277784))

(declare-fun c!912838 () Bool)

(assert (=> d!1696027 (= c!912838 (is-EmptyExpr!14890 (regOne!30292 r!7292)))))

(assert (=> d!1696027 (= lt!2156637 e!3277779)))

(declare-fun c!912837 () Bool)

(assert (=> d!1696027 (= c!912837 (isEmpty!32797 (_1!35392 (get!20920 lt!2156556))))))

(assert (=> d!1696027 (validRegex!6626 (regOne!30292 r!7292))))

(assert (=> d!1696027 (= (matchR!7075 (regOne!30292 r!7292) (_1!35392 (get!20920 lt!2156556))) lt!2156637)))

(declare-fun b!5270378 () Bool)

(declare-fun res!2235902 () Bool)

(assert (=> b!5270378 (=> res!2235902 e!3277780)))

(assert (=> b!5270378 (= res!2235902 (not (isEmpty!32797 (tail!10394 (_1!35392 (get!20920 lt!2156556))))))))

(declare-fun bm!374441 () Bool)

(assert (=> bm!374441 (= call!374446 (isEmpty!32797 (_1!35392 (get!20920 lt!2156556))))))

(assert (= (and d!1696027 c!912837) b!5270377))

(assert (= (and d!1696027 (not c!912837)) b!5270366))

(assert (= (and d!1696027 c!912838) b!5270369))

(assert (= (and d!1696027 (not c!912838)) b!5270370))

(assert (= (and b!5270370 c!912839) b!5270373))

(assert (= (and b!5270370 (not c!912839)) b!5270365))

(assert (= (and b!5270365 (not res!2235897)) b!5270375))

(assert (= (and b!5270375 res!2235898) b!5270372))

(assert (= (and b!5270372 res!2235896) b!5270374))

(assert (= (and b!5270374 res!2235899) b!5270376))

(assert (= (and b!5270375 (not res!2235901)) b!5270368))

(assert (= (and b!5270368 res!2235900) b!5270367))

(assert (= (and b!5270367 (not res!2235895)) b!5270378))

(assert (= (and b!5270378 (not res!2235902)) b!5270371))

(assert (= (or b!5270369 b!5270367 b!5270372) bm!374441))

(declare-fun m!6309640 () Bool)

(assert (=> b!5270376 m!6309640))

(assert (=> b!5270377 m!6309566))

(declare-fun m!6309642 () Bool)

(assert (=> b!5270374 m!6309642))

(assert (=> b!5270374 m!6309642))

(declare-fun m!6309644 () Bool)

(assert (=> b!5270374 m!6309644))

(assert (=> b!5270366 m!6309640))

(assert (=> b!5270366 m!6309640))

(declare-fun m!6309646 () Bool)

(assert (=> b!5270366 m!6309646))

(assert (=> b!5270366 m!6309642))

(assert (=> b!5270366 m!6309646))

(assert (=> b!5270366 m!6309642))

(declare-fun m!6309648 () Bool)

(assert (=> b!5270366 m!6309648))

(declare-fun m!6309650 () Bool)

(assert (=> bm!374441 m!6309650))

(assert (=> b!5270371 m!6309640))

(assert (=> d!1696027 m!6309650))

(assert (=> d!1696027 m!6308924))

(assert (=> b!5270378 m!6309642))

(assert (=> b!5270378 m!6309642))

(assert (=> b!5270378 m!6309644))

(assert (=> b!5269402 d!1696027))

(assert (=> b!5269402 d!1695895))

(declare-fun d!1696029 () Bool)

(assert (=> d!1696029 (= (isEmpty!32797 s!2326) (is-Nil!60846 s!2326))))

(assert (=> d!1695775 d!1696029))

(assert (=> d!1695775 d!1695699))

(declare-fun d!1696031 () Bool)

(declare-fun c!912840 () Bool)

(assert (=> d!1696031 (= c!912840 (isEmpty!32797 (tail!10394 (t!374163 s!2326))))))

(declare-fun e!3277785 () Bool)

(assert (=> d!1696031 (= (matchZipper!1134 (derivationStepZipper!1133 (set.union lt!2156443 lt!2156453) (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))) e!3277785)))

(declare-fun b!5270379 () Bool)

(assert (=> b!5270379 (= e!3277785 (nullableZipper!1289 (derivationStepZipper!1133 (set.union lt!2156443 lt!2156453) (head!11297 (t!374163 s!2326)))))))

(declare-fun b!5270380 () Bool)

(assert (=> b!5270380 (= e!3277785 (matchZipper!1134 (derivationStepZipper!1133 (derivationStepZipper!1133 (set.union lt!2156443 lt!2156453) (head!11297 (t!374163 s!2326))) (head!11297 (tail!10394 (t!374163 s!2326)))) (tail!10394 (tail!10394 (t!374163 s!2326)))))))

(assert (= (and d!1696031 c!912840) b!5270379))

(assert (= (and d!1696031 (not c!912840)) b!5270380))

(assert (=> d!1696031 m!6308876))

(assert (=> d!1696031 m!6309452))

(assert (=> b!5270379 m!6308890))

(declare-fun m!6309652 () Bool)

(assert (=> b!5270379 m!6309652))

(assert (=> b!5270380 m!6308876))

(assert (=> b!5270380 m!6309456))

(assert (=> b!5270380 m!6308890))

(assert (=> b!5270380 m!6309456))

(declare-fun m!6309654 () Bool)

(assert (=> b!5270380 m!6309654))

(assert (=> b!5270380 m!6308876))

(assert (=> b!5270380 m!6309460))

(assert (=> b!5270380 m!6309654))

(assert (=> b!5270380 m!6309460))

(declare-fun m!6309656 () Bool)

(assert (=> b!5270380 m!6309656))

(assert (=> b!5269374 d!1696031))

(declare-fun bs!1221164 () Bool)

(declare-fun d!1696033 () Bool)

(assert (= bs!1221164 (and d!1696033 b!5269181)))

(declare-fun lambda!265899 () Int)

(assert (=> bs!1221164 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265899 lambda!265800))))

(declare-fun bs!1221165 () Bool)

(assert (= bs!1221165 (and d!1696033 d!1695743)))

(assert (=> bs!1221165 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265899 lambda!265834))))

(declare-fun bs!1221166 () Bool)

(assert (= bs!1221166 (and d!1696033 d!1695939)))

(assert (=> bs!1221166 (= lambda!265899 lambda!265881)))

(declare-fun bs!1221167 () Bool)

(assert (= bs!1221167 (and d!1696033 d!1696007)))

(assert (=> bs!1221167 (= lambda!265899 lambda!265897)))

(assert (=> d!1696033 true))

(assert (=> d!1696033 (= (derivationStepZipper!1133 (set.union lt!2156443 lt!2156453) (head!11297 (t!374163 s!2326))) (flatMap!617 (set.union lt!2156443 lt!2156453) lambda!265899))))

(declare-fun bs!1221168 () Bool)

(assert (= bs!1221168 d!1696033))

(declare-fun m!6309658 () Bool)

(assert (=> bs!1221168 m!6309658))

(assert (=> b!5269374 d!1696033))

(assert (=> b!5269374 d!1695941))

(assert (=> b!5269374 d!1695943))

(assert (=> bm!374311 d!1696029))

(declare-fun bm!374442 () Bool)

(declare-fun call!374448 () (Set Context!8548))

(declare-fun call!374449 () (Set Context!8548))

(assert (=> bm!374442 (= call!374448 call!374449)))

(declare-fun b!5270381 () Bool)

(declare-fun e!3277789 () (Set Context!8548))

(declare-fun call!374452 () (Set Context!8548))

(assert (=> b!5270381 (= e!3277789 (set.union call!374452 call!374449))))

(declare-fun call!374451 () List!60969)

(declare-fun c!912842 () Bool)

(declare-fun bm!374443 () Bool)

(declare-fun c!912844 () Bool)

(assert (=> bm!374443 (= call!374451 ($colon$colon!1339 (exprs!4774 (ite c!912588 lt!2156452 (Context!8549 call!374291))) (ite (or c!912844 c!912842) (regTwo!30292 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))) (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))

(declare-fun bm!374444 () Bool)

(declare-fun call!374450 () List!60969)

(assert (=> bm!374444 (= call!374450 call!374451)))

(declare-fun b!5270382 () Bool)

(declare-fun e!3277788 () Bool)

(assert (=> b!5270382 (= e!3277788 (nullable!5059 (regOne!30292 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))))

(declare-fun bm!374445 () Bool)

(declare-fun c!912841 () Bool)

(assert (=> bm!374445 (= call!374452 (derivationStepZipperDown!338 (ite c!912841 (regOne!30293 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))) (regOne!30292 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))) (ite c!912841 (ite c!912588 lt!2156452 (Context!8549 call!374291)) (Context!8549 call!374451)) (h!67294 s!2326)))))

(declare-fun c!912845 () Bool)

(declare-fun d!1696035 () Bool)

(assert (=> d!1696035 (= c!912845 (and (is-ElementMatch!14890 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))) (= (c!912522 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))) (h!67294 s!2326))))))

(declare-fun e!3277786 () (Set Context!8548))

(assert (=> d!1696035 (= (derivationStepZipperDown!338 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))) (ite c!912588 lt!2156452 (Context!8549 call!374291)) (h!67294 s!2326)) e!3277786)))

(declare-fun b!5270383 () Bool)

(declare-fun c!912843 () Bool)

(assert (=> b!5270383 (= c!912843 (is-Star!14890 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(declare-fun e!3277790 () (Set Context!8548))

(declare-fun e!3277787 () (Set Context!8548))

(assert (=> b!5270383 (= e!3277790 e!3277787)))

(declare-fun b!5270384 () Bool)

(assert (=> b!5270384 (= e!3277787 call!374448)))

(declare-fun b!5270385 () Bool)

(declare-fun e!3277791 () (Set Context!8548))

(assert (=> b!5270385 (= e!3277786 e!3277791)))

(assert (=> b!5270385 (= c!912841 (is-Union!14890 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(declare-fun b!5270386 () Bool)

(declare-fun call!374447 () (Set Context!8548))

(assert (=> b!5270386 (= e!3277791 (set.union call!374452 call!374447))))

(declare-fun b!5270387 () Bool)

(assert (=> b!5270387 (= c!912844 e!3277788)))

(declare-fun res!2235903 () Bool)

(assert (=> b!5270387 (=> (not res!2235903) (not e!3277788))))

(assert (=> b!5270387 (= res!2235903 (is-Concat!23735 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(assert (=> b!5270387 (= e!3277791 e!3277789)))

(declare-fun b!5270388 () Bool)

(assert (=> b!5270388 (= e!3277787 (as set.empty (Set Context!8548)))))

(declare-fun b!5270389 () Bool)

(assert (=> b!5270389 (= e!3277789 e!3277790)))

(assert (=> b!5270389 (= c!912842 (is-Concat!23735 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))))))

(declare-fun b!5270390 () Bool)

(assert (=> b!5270390 (= e!3277786 (set.insert (ite c!912588 lt!2156452 (Context!8549 call!374291)) (as set.empty (Set Context!8548))))))

(declare-fun bm!374446 () Bool)

(assert (=> bm!374446 (= call!374449 call!374447)))

(declare-fun b!5270391 () Bool)

(assert (=> b!5270391 (= e!3277790 call!374448)))

(declare-fun bm!374447 () Bool)

(assert (=> bm!374447 (= call!374447 (derivationStepZipperDown!338 (ite c!912841 (regTwo!30293 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))) (ite c!912844 (regTwo!30292 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))) (ite c!912842 (regOne!30292 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292))))) (reg!15219 (ite c!912588 (regOne!30293 (regTwo!30292 (regOne!30292 r!7292))) (regOne!30292 (regTwo!30292 (regOne!30292 r!7292)))))))) (ite (or c!912841 c!912844) (ite c!912588 lt!2156452 (Context!8549 call!374291)) (Context!8549 call!374450)) (h!67294 s!2326)))))

(assert (= (and d!1696035 c!912845) b!5270390))

(assert (= (and d!1696035 (not c!912845)) b!5270385))

(assert (= (and b!5270385 c!912841) b!5270386))

(assert (= (and b!5270385 (not c!912841)) b!5270387))

(assert (= (and b!5270387 res!2235903) b!5270382))

(assert (= (and b!5270387 c!912844) b!5270381))

(assert (= (and b!5270387 (not c!912844)) b!5270389))

(assert (= (and b!5270389 c!912842) b!5270391))

(assert (= (and b!5270389 (not c!912842)) b!5270383))

(assert (= (and b!5270383 c!912843) b!5270384))

(assert (= (and b!5270383 (not c!912843)) b!5270388))

(assert (= (or b!5270391 b!5270384) bm!374444))

(assert (= (or b!5270391 b!5270384) bm!374442))

(assert (= (or b!5270381 bm!374444) bm!374443))

(assert (= (or b!5270381 bm!374442) bm!374446))

(assert (= (or b!5270386 bm!374446) bm!374447))

(assert (= (or b!5270386 b!5270381) bm!374445))

(declare-fun m!6309660 () Bool)

(assert (=> bm!374445 m!6309660))

(declare-fun m!6309662 () Bool)

(assert (=> bm!374447 m!6309662))

(declare-fun m!6309664 () Bool)

(assert (=> b!5270390 m!6309664))

(declare-fun m!6309666 () Bool)

(assert (=> bm!374443 m!6309666))

(declare-fun m!6309668 () Bool)

(assert (=> b!5270382 m!6309668))

(assert (=> bm!374285 d!1696035))

(declare-fun bs!1221169 () Bool)

(declare-fun d!1696037 () Bool)

(assert (= bs!1221169 (and d!1696037 d!1696015)))

(declare-fun lambda!265900 () Int)

(assert (=> bs!1221169 (= lambda!265900 lambda!265898)))

(declare-fun bs!1221170 () Bool)

(assert (= bs!1221170 (and d!1696037 d!1695947)))

(assert (=> bs!1221170 (= lambda!265900 lambda!265882)))

(declare-fun bs!1221171 () Bool)

(assert (= bs!1221171 (and d!1696037 d!1695953)))

(assert (=> bs!1221171 (= lambda!265900 lambda!265883)))

(declare-fun bs!1221172 () Bool)

(assert (= bs!1221172 (and d!1696037 d!1695783)))

(assert (=> bs!1221172 (= lambda!265900 lambda!265846)))

(declare-fun bs!1221173 () Bool)

(assert (= bs!1221173 (and d!1696037 d!1695697)))

(assert (=> bs!1221173 (= lambda!265900 lambda!265821)))

(declare-fun bs!1221174 () Bool)

(assert (= bs!1221174 (and d!1696037 d!1695711)))

(assert (=> bs!1221174 (= lambda!265900 lambda!265822)))

(declare-fun bs!1221175 () Bool)

(assert (= bs!1221175 (and d!1696037 d!1695781)))

(assert (=> bs!1221175 (= lambda!265900 lambda!265843)))

(declare-fun bs!1221176 () Bool)

(assert (= bs!1221176 (and d!1696037 d!1695695)))

(assert (=> bs!1221176 (= lambda!265900 lambda!265818)))

(declare-fun b!5270392 () Bool)

(declare-fun e!3277794 () Regex!14890)

(declare-fun e!3277793 () Regex!14890)

(assert (=> b!5270392 (= e!3277794 e!3277793)))

(declare-fun c!912849 () Bool)

(assert (=> b!5270392 (= c!912849 (is-Cons!60845 (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270393 () Bool)

(assert (=> b!5270393 (= e!3277793 (Concat!23735 (h!67293 (t!374162 (exprs!4774 (h!67295 zl!343)))) (generalisedConcat!559 (t!374162 (t!374162 (exprs!4774 (h!67295 zl!343)))))))))

(declare-fun b!5270394 () Bool)

(declare-fun e!3277795 () Bool)

(declare-fun lt!2156638 () Regex!14890)

(assert (=> b!5270394 (= e!3277795 (= lt!2156638 (head!11296 (t!374162 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun b!5270395 () Bool)

(declare-fun e!3277796 () Bool)

(declare-fun e!3277797 () Bool)

(assert (=> b!5270395 (= e!3277796 e!3277797)))

(declare-fun c!912848 () Bool)

(assert (=> b!5270395 (= c!912848 (isEmpty!32794 (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270396 () Bool)

(assert (=> b!5270396 (= e!3277797 e!3277795)))

(declare-fun c!912846 () Bool)

(assert (=> b!5270396 (= c!912846 (isEmpty!32794 (tail!10393 (t!374162 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun b!5270397 () Bool)

(declare-fun e!3277792 () Bool)

(assert (=> b!5270397 (= e!3277792 (isEmpty!32794 (t!374162 (t!374162 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun b!5270398 () Bool)

(assert (=> b!5270398 (= e!3277794 (h!67293 (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270399 () Bool)

(assert (=> b!5270399 (= e!3277795 (isConcat!347 lt!2156638))))

(assert (=> d!1696037 e!3277796))

(declare-fun res!2235905 () Bool)

(assert (=> d!1696037 (=> (not res!2235905) (not e!3277796))))

(assert (=> d!1696037 (= res!2235905 (validRegex!6626 lt!2156638))))

(assert (=> d!1696037 (= lt!2156638 e!3277794)))

(declare-fun c!912847 () Bool)

(assert (=> d!1696037 (= c!912847 e!3277792)))

(declare-fun res!2235904 () Bool)

(assert (=> d!1696037 (=> (not res!2235904) (not e!3277792))))

(assert (=> d!1696037 (= res!2235904 (is-Cons!60845 (t!374162 (exprs!4774 (h!67295 zl!343)))))))

(assert (=> d!1696037 (forall!14298 (t!374162 (exprs!4774 (h!67295 zl!343))) lambda!265900)))

(assert (=> d!1696037 (= (generalisedConcat!559 (t!374162 (exprs!4774 (h!67295 zl!343)))) lt!2156638)))

(declare-fun b!5270400 () Bool)

(assert (=> b!5270400 (= e!3277797 (isEmptyExpr!824 lt!2156638))))

(declare-fun b!5270401 () Bool)

(assert (=> b!5270401 (= e!3277793 EmptyExpr!14890)))

(assert (= (and d!1696037 res!2235904) b!5270397))

(assert (= (and d!1696037 c!912847) b!5270398))

(assert (= (and d!1696037 (not c!912847)) b!5270392))

(assert (= (and b!5270392 c!912849) b!5270393))

(assert (= (and b!5270392 (not c!912849)) b!5270401))

(assert (= (and d!1696037 res!2235905) b!5270395))

(assert (= (and b!5270395 c!912848) b!5270400))

(assert (= (and b!5270395 (not c!912848)) b!5270396))

(assert (= (and b!5270396 c!912846) b!5270394))

(assert (= (and b!5270396 (not c!912846)) b!5270399))

(assert (=> b!5270395 m!6308718))

(declare-fun m!6309670 () Bool)

(assert (=> b!5270400 m!6309670))

(declare-fun m!6309672 () Bool)

(assert (=> b!5270394 m!6309672))

(declare-fun m!6309674 () Bool)

(assert (=> b!5270397 m!6309674))

(declare-fun m!6309676 () Bool)

(assert (=> d!1696037 m!6309676))

(declare-fun m!6309678 () Bool)

(assert (=> d!1696037 m!6309678))

(declare-fun m!6309680 () Bool)

(assert (=> b!5270393 m!6309680))

(declare-fun m!6309682 () Bool)

(assert (=> b!5270399 m!6309682))

(declare-fun m!6309684 () Bool)

(assert (=> b!5270396 m!6309684))

(assert (=> b!5270396 m!6309684))

(declare-fun m!6309686 () Bool)

(assert (=> b!5270396 m!6309686))

(assert (=> b!5269344 d!1696037))

(declare-fun d!1696039 () Bool)

(assert (=> d!1696039 (= (nullable!5059 (h!67293 (exprs!4774 lt!2156457))) (nullableFct!1441 (h!67293 (exprs!4774 lt!2156457))))))

(declare-fun bs!1221177 () Bool)

(assert (= bs!1221177 d!1696039))

(declare-fun m!6309688 () Bool)

(assert (=> bs!1221177 m!6309688))

(assert (=> b!5269439 d!1696039))

(declare-fun d!1696041 () Bool)

(assert (=> d!1696041 (= (isEmpty!32794 (unfocusZipperList!332 zl!343)) (is-Nil!60845 (unfocusZipperList!332 zl!343)))))

(assert (=> b!5269628 d!1696041))

(declare-fun d!1696043 () Bool)

(assert (=> d!1696043 true))

(declare-fun setRes!33735 () Bool)

(assert (=> d!1696043 setRes!33735))

(declare-fun condSetEmpty!33735 () Bool)

(declare-fun res!2235906 () (Set Context!8548))

(assert (=> d!1696043 (= condSetEmpty!33735 (= res!2235906 (as set.empty (Set Context!8548))))))

(assert (=> d!1696043 (= (choose!39315 lt!2156459 lambda!265800) res!2235906)))

(declare-fun setIsEmpty!33735 () Bool)

(assert (=> setIsEmpty!33735 setRes!33735))

(declare-fun setNonEmpty!33735 () Bool)

(declare-fun tp!1472960 () Bool)

(declare-fun e!3277798 () Bool)

(declare-fun setElem!33735 () Context!8548)

(assert (=> setNonEmpty!33735 (= setRes!33735 (and tp!1472960 (inv!80473 setElem!33735) e!3277798))))

(declare-fun setRest!33735 () (Set Context!8548))

(assert (=> setNonEmpty!33735 (= res!2235906 (set.union (set.insert setElem!33735 (as set.empty (Set Context!8548))) setRest!33735))))

(declare-fun b!5270402 () Bool)

(declare-fun tp!1472961 () Bool)

(assert (=> b!5270402 (= e!3277798 tp!1472961)))

(assert (= (and d!1696043 condSetEmpty!33735) setIsEmpty!33735))

(assert (= (and d!1696043 (not condSetEmpty!33735)) setNonEmpty!33735))

(assert (= setNonEmpty!33735 b!5270402))

(declare-fun m!6309690 () Bool)

(assert (=> setNonEmpty!33735 m!6309690))

(assert (=> d!1695737 d!1696043))

(declare-fun d!1696045 () Bool)

(assert (=> d!1696045 (= (head!11297 s!2326) (h!67294 s!2326))))

(assert (=> b!5269593 d!1696045))

(assert (=> d!1695707 d!1695891))

(declare-fun bs!1221178 () Bool)

(declare-fun b!5270403 () Bool)

(assert (= bs!1221178 (and b!5270403 b!5270293)))

(declare-fun lambda!265901 () Int)

(assert (=> bs!1221178 (not (= lambda!265901 lambda!265895))))

(declare-fun bs!1221179 () Bool)

(assert (= bs!1221179 (and b!5270403 d!1695977)))

(assert (=> bs!1221179 (not (= lambda!265901 lambda!265892))))

(declare-fun bs!1221180 () Bool)

(assert (= bs!1221180 (and b!5270403 d!1695729)))

(assert (=> bs!1221180 (not (= lambda!265901 lambda!265825))))

(declare-fun bs!1221181 () Bool)

(assert (= bs!1221181 (and b!5270403 d!1695963)))

(assert (=> bs!1221181 (not (= lambda!265901 lambda!265886))))

(declare-fun bs!1221182 () Bool)

(assert (= bs!1221182 (and b!5270403 b!5269548)))

(assert (=> bs!1221182 (= (and (= (reg!15219 (regOne!30293 r!7292)) (reg!15219 r!7292)) (= (regOne!30293 r!7292) r!7292)) (= lambda!265901 lambda!265839))))

(declare-fun bs!1221183 () Bool)

(assert (= bs!1221183 (and b!5270403 d!1695731)))

(assert (=> bs!1221183 (not (= lambda!265901 lambda!265831))))

(declare-fun bs!1221184 () Bool)

(assert (= bs!1221184 (and b!5270403 b!5269153)))

(assert (=> bs!1221184 (not (= lambda!265901 lambda!265799))))

(declare-fun bs!1221185 () Bool)

(assert (= bs!1221185 (and b!5270403 b!5270285)))

(assert (=> bs!1221185 (= (and (= (reg!15219 (regOne!30293 r!7292)) (reg!15219 (regTwo!30293 r!7292))) (= (regOne!30293 r!7292) (regTwo!30293 r!7292))) (= lambda!265901 lambda!265894))))

(declare-fun bs!1221186 () Bool)

(assert (= bs!1221186 (and b!5270403 b!5269556)))

(assert (=> bs!1221186 (not (= lambda!265901 lambda!265840))))

(assert (=> bs!1221183 (not (= lambda!265901 lambda!265830))))

(assert (=> bs!1221179 (not (= lambda!265901 lambda!265891))))

(assert (=> bs!1221184 (not (= lambda!265901 lambda!265798))))

(assert (=> b!5270403 true))

(assert (=> b!5270403 true))

(declare-fun bs!1221187 () Bool)

(declare-fun b!5270411 () Bool)

(assert (= bs!1221187 (and b!5270411 b!5270293)))

(declare-fun lambda!265902 () Int)

(assert (=> bs!1221187 (= (and (= (regOne!30292 (regOne!30293 r!7292)) (regOne!30292 (regTwo!30293 r!7292))) (= (regTwo!30292 (regOne!30293 r!7292)) (regTwo!30292 (regTwo!30293 r!7292)))) (= lambda!265902 lambda!265895))))

(declare-fun bs!1221188 () Bool)

(assert (= bs!1221188 (and b!5270411 d!1695977)))

(assert (=> bs!1221188 (= (and (= (regOne!30292 (regOne!30293 r!7292)) (regOne!30292 r!7292)) (= (regTwo!30292 (regOne!30293 r!7292)) (regTwo!30292 r!7292))) (= lambda!265902 lambda!265892))))

(declare-fun bs!1221189 () Bool)

(assert (= bs!1221189 (and b!5270411 d!1695729)))

(assert (=> bs!1221189 (not (= lambda!265902 lambda!265825))))

(declare-fun bs!1221190 () Bool)

(assert (= bs!1221190 (and b!5270411 d!1695963)))

(assert (=> bs!1221190 (not (= lambda!265902 lambda!265886))))

(declare-fun bs!1221191 () Bool)

(assert (= bs!1221191 (and b!5270411 b!5269548)))

(assert (=> bs!1221191 (not (= lambda!265902 lambda!265839))))

(declare-fun bs!1221192 () Bool)

(assert (= bs!1221192 (and b!5270411 d!1695731)))

(assert (=> bs!1221192 (= (and (= (regOne!30292 (regOne!30293 r!7292)) (regOne!30292 r!7292)) (= (regTwo!30292 (regOne!30293 r!7292)) (regTwo!30292 r!7292))) (= lambda!265902 lambda!265831))))

(declare-fun bs!1221193 () Bool)

(assert (= bs!1221193 (and b!5270411 b!5269153)))

(assert (=> bs!1221193 (= (and (= (regOne!30292 (regOne!30293 r!7292)) (regOne!30292 r!7292)) (= (regTwo!30292 (regOne!30293 r!7292)) (regTwo!30292 r!7292))) (= lambda!265902 lambda!265799))))

(declare-fun bs!1221194 () Bool)

(assert (= bs!1221194 (and b!5270411 b!5270285)))

(assert (=> bs!1221194 (not (= lambda!265902 lambda!265894))))

(assert (=> bs!1221192 (not (= lambda!265902 lambda!265830))))

(assert (=> bs!1221188 (not (= lambda!265902 lambda!265891))))

(assert (=> bs!1221193 (not (= lambda!265902 lambda!265798))))

(declare-fun bs!1221195 () Bool)

(assert (= bs!1221195 (and b!5270411 b!5269556)))

(assert (=> bs!1221195 (= (and (= (regOne!30292 (regOne!30293 r!7292)) (regOne!30292 r!7292)) (= (regTwo!30292 (regOne!30293 r!7292)) (regTwo!30292 r!7292))) (= lambda!265902 lambda!265840))))

(declare-fun bs!1221196 () Bool)

(assert (= bs!1221196 (and b!5270411 b!5270403)))

(assert (=> bs!1221196 (not (= lambda!265902 lambda!265901))))

(assert (=> b!5270411 true))

(assert (=> b!5270411 true))

(declare-fun e!3277801 () Bool)

(declare-fun call!374453 () Bool)

(assert (=> b!5270403 (= e!3277801 call!374453)))

(declare-fun b!5270404 () Bool)

(declare-fun e!3277800 () Bool)

(declare-fun e!3277802 () Bool)

(assert (=> b!5270404 (= e!3277800 e!3277802)))

(declare-fun c!912853 () Bool)

(assert (=> b!5270404 (= c!912853 (is-Star!14890 (regOne!30293 r!7292)))))

(declare-fun b!5270405 () Bool)

(declare-fun e!3277805 () Bool)

(assert (=> b!5270405 (= e!3277800 e!3277805)))

(declare-fun res!2235909 () Bool)

(assert (=> b!5270405 (= res!2235909 (matchRSpec!1993 (regOne!30293 (regOne!30293 r!7292)) s!2326))))

(assert (=> b!5270405 (=> res!2235909 e!3277805)))

(declare-fun bm!374448 () Bool)

(declare-fun call!374454 () Bool)

(assert (=> bm!374448 (= call!374454 (isEmpty!32797 s!2326))))

(declare-fun b!5270406 () Bool)

(assert (=> b!5270406 (= e!3277805 (matchRSpec!1993 (regTwo!30293 (regOne!30293 r!7292)) s!2326))))

(declare-fun b!5270407 () Bool)

(declare-fun e!3277803 () Bool)

(declare-fun e!3277799 () Bool)

(assert (=> b!5270407 (= e!3277803 e!3277799)))

(declare-fun res!2235908 () Bool)

(assert (=> b!5270407 (= res!2235908 (not (is-EmptyLang!14890 (regOne!30293 r!7292))))))

(assert (=> b!5270407 (=> (not res!2235908) (not e!3277799))))

(declare-fun b!5270408 () Bool)

(declare-fun res!2235907 () Bool)

(assert (=> b!5270408 (=> res!2235907 e!3277801)))

(assert (=> b!5270408 (= res!2235907 call!374454)))

(assert (=> b!5270408 (= e!3277802 e!3277801)))

(declare-fun b!5270409 () Bool)

(declare-fun c!912852 () Bool)

(assert (=> b!5270409 (= c!912852 (is-Union!14890 (regOne!30293 r!7292)))))

(declare-fun e!3277804 () Bool)

(assert (=> b!5270409 (= e!3277804 e!3277800)))

(declare-fun b!5270410 () Bool)

(assert (=> b!5270410 (= e!3277804 (= s!2326 (Cons!60846 (c!912522 (regOne!30293 r!7292)) Nil!60846)))))

(assert (=> b!5270411 (= e!3277802 call!374453)))

(declare-fun b!5270412 () Bool)

(declare-fun c!912851 () Bool)

(assert (=> b!5270412 (= c!912851 (is-ElementMatch!14890 (regOne!30293 r!7292)))))

(assert (=> b!5270412 (= e!3277799 e!3277804)))

(declare-fun b!5270413 () Bool)

(assert (=> b!5270413 (= e!3277803 call!374454)))

(declare-fun bm!374449 () Bool)

(assert (=> bm!374449 (= call!374453 (Exists!2071 (ite c!912853 lambda!265901 lambda!265902)))))

(declare-fun d!1696047 () Bool)

(declare-fun c!912850 () Bool)

(assert (=> d!1696047 (= c!912850 (is-EmptyExpr!14890 (regOne!30293 r!7292)))))

(assert (=> d!1696047 (= (matchRSpec!1993 (regOne!30293 r!7292) s!2326) e!3277803)))

(assert (= (and d!1696047 c!912850) b!5270413))

(assert (= (and d!1696047 (not c!912850)) b!5270407))

(assert (= (and b!5270407 res!2235908) b!5270412))

(assert (= (and b!5270412 c!912851) b!5270410))

(assert (= (and b!5270412 (not c!912851)) b!5270409))

(assert (= (and b!5270409 c!912852) b!5270405))

(assert (= (and b!5270409 (not c!912852)) b!5270404))

(assert (= (and b!5270405 (not res!2235909)) b!5270406))

(assert (= (and b!5270404 c!912853) b!5270408))

(assert (= (and b!5270404 (not c!912853)) b!5270411))

(assert (= (and b!5270408 (not res!2235907)) b!5270403))

(assert (= (or b!5270403 b!5270411) bm!374449))

(assert (= (or b!5270413 b!5270408) bm!374448))

(declare-fun m!6309692 () Bool)

(assert (=> b!5270405 m!6309692))

(assert (=> bm!374448 m!6309050))

(declare-fun m!6309694 () Bool)

(assert (=> b!5270406 m!6309694))

(declare-fun m!6309696 () Bool)

(assert (=> bm!374449 m!6309696))

(assert (=> b!5269550 d!1696047))

(assert (=> bs!1221048 d!1695739))

(declare-fun bs!1221197 () Bool)

(declare-fun d!1696049 () Bool)

(assert (= bs!1221197 (and d!1696049 d!1695929)))

(declare-fun lambda!265903 () Int)

(assert (=> bs!1221197 (= lambda!265903 lambda!265880)))

(declare-fun bs!1221198 () Bool)

(assert (= bs!1221198 (and d!1696049 d!1695985)))

(assert (=> bs!1221198 (= lambda!265903 lambda!265893)))

(declare-fun bs!1221199 () Bool)

(assert (= bs!1221199 (and d!1696049 d!1695993)))

(assert (=> bs!1221199 (= lambda!265903 lambda!265896)))

(assert (=> d!1696049 (= (nullableZipper!1289 lt!2156440) (exists!1992 lt!2156440 lambda!265903))))

(declare-fun bs!1221200 () Bool)

(assert (= bs!1221200 d!1696049))

(declare-fun m!6309698 () Bool)

(assert (=> bs!1221200 m!6309698))

(assert (=> b!5269379 d!1696049))

(declare-fun d!1696051 () Bool)

(declare-fun res!2235914 () Bool)

(declare-fun e!3277810 () Bool)

(assert (=> d!1696051 (=> res!2235914 e!3277810)))

(assert (=> d!1696051 (= res!2235914 (is-Nil!60847 lt!2156569))))

(assert (=> d!1696051 (= (noDuplicate!1244 lt!2156569) e!3277810)))

(declare-fun b!5270418 () Bool)

(declare-fun e!3277811 () Bool)

(assert (=> b!5270418 (= e!3277810 e!3277811)))

(declare-fun res!2235915 () Bool)

(assert (=> b!5270418 (=> (not res!2235915) (not e!3277811))))

(declare-fun contains!19693 (List!60971 Context!8548) Bool)

(assert (=> b!5270418 (= res!2235915 (not (contains!19693 (t!374164 lt!2156569) (h!67295 lt!2156569))))))

(declare-fun b!5270419 () Bool)

(assert (=> b!5270419 (= e!3277811 (noDuplicate!1244 (t!374164 lt!2156569)))))

(assert (= (and d!1696051 (not res!2235914)) b!5270418))

(assert (= (and b!5270418 res!2235915) b!5270419))

(declare-fun m!6309700 () Bool)

(assert (=> b!5270418 m!6309700))

(declare-fun m!6309702 () Bool)

(assert (=> b!5270419 m!6309702))

(assert (=> d!1695749 d!1696051))

(declare-fun d!1696053 () Bool)

(declare-fun e!3277818 () Bool)

(assert (=> d!1696053 e!3277818))

(declare-fun res!2235921 () Bool)

(assert (=> d!1696053 (=> (not res!2235921) (not e!3277818))))

(declare-fun res!2235920 () List!60971)

(assert (=> d!1696053 (= res!2235921 (noDuplicate!1244 res!2235920))))

(declare-fun e!3277819 () Bool)

(assert (=> d!1696053 e!3277819))

(assert (=> d!1696053 (= (choose!39317 z!1189) res!2235920)))

(declare-fun b!5270427 () Bool)

(declare-fun e!3277820 () Bool)

(declare-fun tp!1472967 () Bool)

(assert (=> b!5270427 (= e!3277820 tp!1472967)))

(declare-fun b!5270426 () Bool)

(declare-fun tp!1472966 () Bool)

(assert (=> b!5270426 (= e!3277819 (and (inv!80473 (h!67295 res!2235920)) e!3277820 tp!1472966))))

(declare-fun b!5270428 () Bool)

(assert (=> b!5270428 (= e!3277818 (= (content!10820 res!2235920) z!1189))))

(assert (= b!5270426 b!5270427))

(assert (= (and d!1696053 (is-Cons!60847 res!2235920)) b!5270426))

(assert (= (and d!1696053 res!2235921) b!5270428))

(declare-fun m!6309704 () Bool)

(assert (=> d!1696053 m!6309704))

(declare-fun m!6309706 () Bool)

(assert (=> b!5270426 m!6309706))

(declare-fun m!6309708 () Bool)

(assert (=> b!5270428 m!6309708))

(assert (=> d!1695749 d!1696053))

(declare-fun b!5270429 () Bool)

(declare-fun e!3277821 () (Set Context!8548))

(declare-fun call!374455 () (Set Context!8548))

(assert (=> b!5270429 (= e!3277821 call!374455)))

(declare-fun b!5270430 () Bool)

(declare-fun e!3277822 () (Set Context!8548))

(assert (=> b!5270430 (= e!3277822 e!3277821)))

(declare-fun c!912854 () Bool)

(assert (=> b!5270430 (= c!912854 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156445))))))))

(declare-fun d!1696055 () Bool)

(declare-fun c!912855 () Bool)

(declare-fun e!3277823 () Bool)

(assert (=> d!1696055 (= c!912855 e!3277823)))

(declare-fun res!2235922 () Bool)

(assert (=> d!1696055 (=> (not res!2235922) (not e!3277823))))

(assert (=> d!1696055 (= res!2235922 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156445))))))))

(assert (=> d!1696055 (= (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 lt!2156445))) (h!67294 s!2326)) e!3277822)))

(declare-fun b!5270431 () Bool)

(assert (=> b!5270431 (= e!3277821 (as set.empty (Set Context!8548)))))

(declare-fun bm!374450 () Bool)

(assert (=> bm!374450 (= call!374455 (derivationStepZipperDown!338 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156445))))) (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156445)))))) (h!67294 s!2326)))))

(declare-fun b!5270432 () Bool)

(assert (=> b!5270432 (= e!3277823 (nullable!5059 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156445)))))))))

(declare-fun b!5270433 () Bool)

(assert (=> b!5270433 (= e!3277822 (set.union call!374455 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156445)))))) (h!67294 s!2326))))))

(assert (= (and d!1696055 res!2235922) b!5270432))

(assert (= (and d!1696055 c!912855) b!5270433))

(assert (= (and d!1696055 (not c!912855)) b!5270430))

(assert (= (and b!5270430 c!912854) b!5270429))

(assert (= (and b!5270430 (not c!912854)) b!5270431))

(assert (= (or b!5270433 b!5270429) bm!374450))

(declare-fun m!6309710 () Bool)

(assert (=> bm!374450 m!6309710))

(declare-fun m!6309712 () Bool)

(assert (=> b!5270432 m!6309712))

(declare-fun m!6309714 () Bool)

(assert (=> b!5270433 m!6309714))

(assert (=> b!5269435 d!1696055))

(declare-fun b!5270434 () Bool)

(declare-fun e!3277827 () Bool)

(declare-fun e!3277826 () Bool)

(assert (=> b!5270434 (= e!3277827 e!3277826)))

(declare-fun res!2235924 () Bool)

(assert (=> b!5270434 (=> res!2235924 e!3277826)))

(assert (=> b!5270434 (= res!2235924 (is-Star!14890 (regOne!30292 (regOne!30292 r!7292))))))

(declare-fun b!5270435 () Bool)

(declare-fun e!3277824 () Bool)

(declare-fun call!374457 () Bool)

(assert (=> b!5270435 (= e!3277824 call!374457)))

(declare-fun bm!374451 () Bool)

(declare-fun c!912856 () Bool)

(assert (=> bm!374451 (= call!374457 (nullable!5059 (ite c!912856 (regTwo!30293 (regOne!30292 (regOne!30292 r!7292))) (regTwo!30292 (regOne!30292 (regOne!30292 r!7292))))))))

(declare-fun b!5270436 () Bool)

(declare-fun e!3277829 () Bool)

(assert (=> b!5270436 (= e!3277826 e!3277829)))

(assert (=> b!5270436 (= c!912856 (is-Union!14890 (regOne!30292 (regOne!30292 r!7292))))))

(declare-fun b!5270437 () Bool)

(declare-fun e!3277825 () Bool)

(assert (=> b!5270437 (= e!3277825 call!374457)))

(declare-fun b!5270438 () Bool)

(assert (=> b!5270438 (= e!3277829 e!3277825)))

(declare-fun res!2235926 () Bool)

(declare-fun call!374456 () Bool)

(assert (=> b!5270438 (= res!2235926 call!374456)))

(assert (=> b!5270438 (=> (not res!2235926) (not e!3277825))))

(declare-fun b!5270439 () Bool)

(assert (=> b!5270439 (= e!3277829 e!3277824)))

(declare-fun res!2235923 () Bool)

(assert (=> b!5270439 (= res!2235923 call!374456)))

(assert (=> b!5270439 (=> res!2235923 e!3277824)))

(declare-fun d!1696057 () Bool)

(declare-fun res!2235927 () Bool)

(declare-fun e!3277828 () Bool)

(assert (=> d!1696057 (=> res!2235927 e!3277828)))

(assert (=> d!1696057 (= res!2235927 (is-EmptyExpr!14890 (regOne!30292 (regOne!30292 r!7292))))))

(assert (=> d!1696057 (= (nullableFct!1441 (regOne!30292 (regOne!30292 r!7292))) e!3277828)))

(declare-fun b!5270440 () Bool)

(assert (=> b!5270440 (= e!3277828 e!3277827)))

(declare-fun res!2235925 () Bool)

(assert (=> b!5270440 (=> (not res!2235925) (not e!3277827))))

(assert (=> b!5270440 (= res!2235925 (and (not (is-EmptyLang!14890 (regOne!30292 (regOne!30292 r!7292)))) (not (is-ElementMatch!14890 (regOne!30292 (regOne!30292 r!7292))))))))

(declare-fun bm!374452 () Bool)

(assert (=> bm!374452 (= call!374456 (nullable!5059 (ite c!912856 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))))))

(assert (= (and d!1696057 (not res!2235927)) b!5270440))

(assert (= (and b!5270440 res!2235925) b!5270434))

(assert (= (and b!5270434 (not res!2235924)) b!5270436))

(assert (= (and b!5270436 c!912856) b!5270439))

(assert (= (and b!5270436 (not c!912856)) b!5270438))

(assert (= (and b!5270439 (not res!2235923)) b!5270435))

(assert (= (and b!5270438 res!2235926) b!5270437))

(assert (= (or b!5270435 b!5270437) bm!374451))

(assert (= (or b!5270439 b!5270438) bm!374452))

(declare-fun m!6309716 () Bool)

(assert (=> bm!374451 m!6309716))

(declare-fun m!6309718 () Bool)

(assert (=> bm!374452 m!6309718))

(assert (=> d!1695757 d!1696057))

(assert (=> d!1695701 d!1695891))

(declare-fun bm!374453 () Bool)

(declare-fun call!374459 () (Set Context!8548))

(declare-fun call!374460 () (Set Context!8548))

(assert (=> bm!374453 (= call!374459 call!374460)))

(declare-fun b!5270441 () Bool)

(declare-fun e!3277833 () (Set Context!8548))

(declare-fun call!374463 () (Set Context!8548))

(assert (=> b!5270441 (= e!3277833 (set.union call!374463 call!374460))))

(declare-fun bm!374454 () Bool)

(declare-fun c!912860 () Bool)

(declare-fun c!912858 () Bool)

(declare-fun call!374462 () List!60969)

(assert (=> bm!374454 (= call!374462 ($colon$colon!1339 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))) (ite (or c!912860 c!912858) (regTwo!30292 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))))))

(declare-fun bm!374455 () Bool)

(declare-fun call!374461 () List!60969)

(assert (=> bm!374455 (= call!374461 call!374462)))

(declare-fun b!5270442 () Bool)

(declare-fun e!3277832 () Bool)

(assert (=> b!5270442 (= e!3277832 (nullable!5059 (regOne!30292 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))))))

(declare-fun bm!374456 () Bool)

(declare-fun c!912857 () Bool)

(assert (=> bm!374456 (= call!374463 (derivationStepZipperDown!338 (ite c!912857 (regOne!30293 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (regOne!30292 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))) (ite c!912857 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (Context!8549 call!374462)) (h!67294 s!2326)))))

(declare-fun d!1696059 () Bool)

(declare-fun c!912861 () Bool)

(assert (=> d!1696059 (= c!912861 (and (is-ElementMatch!14890 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (= (c!912522 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (h!67294 s!2326))))))

(declare-fun e!3277830 () (Set Context!8548))

(assert (=> d!1696059 (= (derivationStepZipperDown!338 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))) (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (h!67294 s!2326)) e!3277830)))

(declare-fun b!5270443 () Bool)

(declare-fun c!912859 () Bool)

(assert (=> b!5270443 (= c!912859 (is-Star!14890 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))))

(declare-fun e!3277834 () (Set Context!8548))

(declare-fun e!3277831 () (Set Context!8548))

(assert (=> b!5270443 (= e!3277834 e!3277831)))

(declare-fun b!5270444 () Bool)

(assert (=> b!5270444 (= e!3277831 call!374459)))

(declare-fun b!5270445 () Bool)

(declare-fun e!3277835 () (Set Context!8548))

(assert (=> b!5270445 (= e!3277830 e!3277835)))

(assert (=> b!5270445 (= c!912857 (is-Union!14890 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))))

(declare-fun b!5270446 () Bool)

(declare-fun call!374458 () (Set Context!8548))

(assert (=> b!5270446 (= e!3277835 (set.union call!374463 call!374458))))

(declare-fun b!5270447 () Bool)

(assert (=> b!5270447 (= c!912860 e!3277832)))

(declare-fun res!2235928 () Bool)

(assert (=> b!5270447 (=> (not res!2235928) (not e!3277832))))

(assert (=> b!5270447 (= res!2235928 (is-Concat!23735 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))))

(assert (=> b!5270447 (= e!3277835 e!3277833)))

(declare-fun b!5270448 () Bool)

(assert (=> b!5270448 (= e!3277831 (as set.empty (Set Context!8548)))))

(declare-fun b!5270449 () Bool)

(assert (=> b!5270449 (= e!3277833 e!3277834)))

(assert (=> b!5270449 (= c!912858 (is-Concat!23735 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))))

(declare-fun b!5270450 () Bool)

(assert (=> b!5270450 (= e!3277830 (set.insert (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (as set.empty (Set Context!8548))))))

(declare-fun bm!374457 () Bool)

(assert (=> bm!374457 (= call!374460 call!374458)))

(declare-fun b!5270451 () Bool)

(assert (=> b!5270451 (= e!3277834 call!374459)))

(declare-fun bm!374458 () Bool)

(assert (=> bm!374458 (= call!374458 (derivationStepZipperDown!338 (ite c!912857 (regTwo!30293 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (ite c!912860 (regTwo!30292 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (ite c!912858 (regOne!30292 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (reg!15219 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343))))))))))) (ite (or c!912857 c!912860) (Context!8549 (t!374162 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (Context!8549 call!374461)) (h!67294 s!2326)))))

(assert (= (and d!1696059 c!912861) b!5270450))

(assert (= (and d!1696059 (not c!912861)) b!5270445))

(assert (= (and b!5270445 c!912857) b!5270446))

(assert (= (and b!5270445 (not c!912857)) b!5270447))

(assert (= (and b!5270447 res!2235928) b!5270442))

(assert (= (and b!5270447 c!912860) b!5270441))

(assert (= (and b!5270447 (not c!912860)) b!5270449))

(assert (= (and b!5270449 c!912858) b!5270451))

(assert (= (and b!5270449 (not c!912858)) b!5270443))

(assert (= (and b!5270443 c!912859) b!5270444))

(assert (= (and b!5270443 (not c!912859)) b!5270448))

(assert (= (or b!5270451 b!5270444) bm!374455))

(assert (= (or b!5270451 b!5270444) bm!374453))

(assert (= (or b!5270441 bm!374455) bm!374454))

(assert (= (or b!5270441 bm!374453) bm!374457))

(assert (= (or b!5270446 bm!374457) bm!374458))

(assert (= (or b!5270446 b!5270441) bm!374456))

(declare-fun m!6309720 () Bool)

(assert (=> bm!374456 m!6309720))

(declare-fun m!6309722 () Bool)

(assert (=> bm!374458 m!6309722))

(declare-fun m!6309724 () Bool)

(assert (=> b!5270450 m!6309724))

(declare-fun m!6309726 () Bool)

(assert (=> bm!374454 m!6309726))

(declare-fun m!6309728 () Bool)

(assert (=> b!5270442 m!6309728))

(assert (=> bm!374294 d!1696059))

(declare-fun bm!374459 () Bool)

(declare-fun call!374465 () (Set Context!8548))

(declare-fun call!374466 () (Set Context!8548))

(assert (=> bm!374459 (= call!374465 call!374466)))

(declare-fun b!5270452 () Bool)

(declare-fun e!3277839 () (Set Context!8548))

(declare-fun call!374469 () (Set Context!8548))

(assert (=> b!5270452 (= e!3277839 (set.union call!374469 call!374466))))

(declare-fun bm!374460 () Bool)

(declare-fun call!374468 () List!60969)

(declare-fun c!912863 () Bool)

(declare-fun c!912865 () Bool)

(assert (=> bm!374460 (= call!374468 ($colon$colon!1339 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343))))) (ite (or c!912865 c!912863) (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (h!67293 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun bm!374461 () Bool)

(declare-fun call!374467 () List!60969)

(assert (=> bm!374461 (= call!374467 call!374468)))

(declare-fun b!5270453 () Bool)

(declare-fun e!3277838 () Bool)

(assert (=> b!5270453 (= e!3277838 (nullable!5059 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))))))

(declare-fun c!912862 () Bool)

(declare-fun bm!374462 () Bool)

(assert (=> bm!374462 (= call!374469 (derivationStepZipperDown!338 (ite c!912862 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))) (ite c!912862 (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))) (Context!8549 call!374468)) (h!67294 s!2326)))))

(declare-fun d!1696061 () Bool)

(declare-fun c!912866 () Bool)

(assert (=> d!1696061 (= c!912866 (and (is-ElementMatch!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))) (= (c!912522 (h!67293 (exprs!4774 (h!67295 zl!343)))) (h!67294 s!2326))))))

(declare-fun e!3277836 () (Set Context!8548))

(assert (=> d!1696061 (= (derivationStepZipperDown!338 (h!67293 (exprs!4774 (h!67295 zl!343))) (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))) (h!67294 s!2326)) e!3277836)))

(declare-fun b!5270454 () Bool)

(declare-fun c!912864 () Bool)

(assert (=> b!5270454 (= c!912864 (is-Star!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun e!3277840 () (Set Context!8548))

(declare-fun e!3277837 () (Set Context!8548))

(assert (=> b!5270454 (= e!3277840 e!3277837)))

(declare-fun b!5270455 () Bool)

(assert (=> b!5270455 (= e!3277837 call!374465)))

(declare-fun b!5270456 () Bool)

(declare-fun e!3277841 () (Set Context!8548))

(assert (=> b!5270456 (= e!3277836 e!3277841)))

(assert (=> b!5270456 (= c!912862 (is-Union!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270457 () Bool)

(declare-fun call!374464 () (Set Context!8548))

(assert (=> b!5270457 (= e!3277841 (set.union call!374469 call!374464))))

(declare-fun b!5270458 () Bool)

(assert (=> b!5270458 (= c!912865 e!3277838)))

(declare-fun res!2235929 () Bool)

(assert (=> b!5270458 (=> (not res!2235929) (not e!3277838))))

(assert (=> b!5270458 (= res!2235929 (is-Concat!23735 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(assert (=> b!5270458 (= e!3277841 e!3277839)))

(declare-fun b!5270459 () Bool)

(assert (=> b!5270459 (= e!3277837 (as set.empty (Set Context!8548)))))

(declare-fun b!5270460 () Bool)

(assert (=> b!5270460 (= e!3277839 e!3277840)))

(assert (=> b!5270460 (= c!912863 (is-Concat!23735 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270461 () Bool)

(assert (=> b!5270461 (= e!3277836 (set.insert (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))) (as set.empty (Set Context!8548))))))

(declare-fun bm!374463 () Bool)

(assert (=> bm!374463 (= call!374466 call!374464)))

(declare-fun b!5270462 () Bool)

(assert (=> b!5270462 (= e!3277840 call!374465)))

(declare-fun bm!374464 () Bool)

(assert (=> bm!374464 (= call!374464 (derivationStepZipperDown!338 (ite c!912862 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912865 (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (ite c!912863 (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (reg!15219 (h!67293 (exprs!4774 (h!67295 zl!343))))))) (ite (or c!912862 c!912865) (Context!8549 (t!374162 (exprs!4774 (h!67295 zl!343)))) (Context!8549 call!374467)) (h!67294 s!2326)))))

(assert (= (and d!1696061 c!912866) b!5270461))

(assert (= (and d!1696061 (not c!912866)) b!5270456))

(assert (= (and b!5270456 c!912862) b!5270457))

(assert (= (and b!5270456 (not c!912862)) b!5270458))

(assert (= (and b!5270458 res!2235929) b!5270453))

(assert (= (and b!5270458 c!912865) b!5270452))

(assert (= (and b!5270458 (not c!912865)) b!5270460))

(assert (= (and b!5270460 c!912863) b!5270462))

(assert (= (and b!5270460 (not c!912863)) b!5270454))

(assert (= (and b!5270454 c!912864) b!5270455))

(assert (= (and b!5270454 (not c!912864)) b!5270459))

(assert (= (or b!5270462 b!5270455) bm!374461))

(assert (= (or b!5270462 b!5270455) bm!374459))

(assert (= (or b!5270452 bm!374461) bm!374460))

(assert (= (or b!5270452 bm!374459) bm!374463))

(assert (= (or b!5270457 bm!374463) bm!374464))

(assert (= (or b!5270457 b!5270452) bm!374462))

(declare-fun m!6309730 () Bool)

(assert (=> bm!374462 m!6309730))

(declare-fun m!6309732 () Bool)

(assert (=> bm!374464 m!6309732))

(declare-fun m!6309734 () Bool)

(assert (=> b!5270461 m!6309734))

(declare-fun m!6309736 () Bool)

(assert (=> bm!374460 m!6309736))

(assert (=> b!5270453 m!6309034))

(assert (=> bm!374295 d!1696061))

(declare-fun d!1696063 () Bool)

(assert (=> d!1696063 (= (nullable!5059 (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))) (nullableFct!1441 (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))))))

(declare-fun bs!1221201 () Bool)

(assert (= bs!1221201 d!1696063))

(declare-fun m!6309738 () Bool)

(assert (=> bs!1221201 m!6309738))

(assert (=> b!5269477 d!1696063))

(declare-fun b!5270463 () Bool)

(declare-fun res!2235932 () Bool)

(declare-fun e!3277845 () Bool)

(assert (=> b!5270463 (=> res!2235932 e!3277845)))

(assert (=> b!5270463 (= res!2235932 (not (is-ElementMatch!14890 (derivativeStep!4110 r!7292 (head!11297 s!2326)))))))

(declare-fun e!3277846 () Bool)

(assert (=> b!5270463 (= e!3277846 e!3277845)))

(declare-fun b!5270464 () Bool)

(declare-fun e!3277843 () Bool)

(assert (=> b!5270464 (= e!3277843 (matchR!7075 (derivativeStep!4110 (derivativeStep!4110 r!7292 (head!11297 s!2326)) (head!11297 (tail!10394 s!2326))) (tail!10394 (tail!10394 s!2326))))))

(declare-fun b!5270465 () Bool)

(declare-fun e!3277842 () Bool)

(declare-fun e!3277844 () Bool)

(assert (=> b!5270465 (= e!3277842 e!3277844)))

(declare-fun res!2235930 () Bool)

(assert (=> b!5270465 (=> res!2235930 e!3277844)))

(declare-fun call!374470 () Bool)

(assert (=> b!5270465 (= res!2235930 call!374470)))

(declare-fun b!5270466 () Bool)

(assert (=> b!5270466 (= e!3277845 e!3277842)))

(declare-fun res!2235935 () Bool)

(assert (=> b!5270466 (=> (not res!2235935) (not e!3277842))))

(declare-fun lt!2156639 () Bool)

(assert (=> b!5270466 (= res!2235935 (not lt!2156639))))

(declare-fun b!5270467 () Bool)

(declare-fun e!3277848 () Bool)

(assert (=> b!5270467 (= e!3277848 (= lt!2156639 call!374470))))

(declare-fun b!5270468 () Bool)

(assert (=> b!5270468 (= e!3277848 e!3277846)))

(declare-fun c!912869 () Bool)

(assert (=> b!5270468 (= c!912869 (is-EmptyLang!14890 (derivativeStep!4110 r!7292 (head!11297 s!2326))))))

(declare-fun b!5270469 () Bool)

(assert (=> b!5270469 (= e!3277844 (not (= (head!11297 (tail!10394 s!2326)) (c!912522 (derivativeStep!4110 r!7292 (head!11297 s!2326))))))))

(declare-fun b!5270470 () Bool)

(declare-fun res!2235931 () Bool)

(declare-fun e!3277847 () Bool)

(assert (=> b!5270470 (=> (not res!2235931) (not e!3277847))))

(assert (=> b!5270470 (= res!2235931 (not call!374470))))

(declare-fun b!5270472 () Bool)

(declare-fun res!2235934 () Bool)

(assert (=> b!5270472 (=> (not res!2235934) (not e!3277847))))

(assert (=> b!5270472 (= res!2235934 (isEmpty!32797 (tail!10394 (tail!10394 s!2326))))))

(declare-fun b!5270473 () Bool)

(declare-fun res!2235936 () Bool)

(assert (=> b!5270473 (=> res!2235936 e!3277845)))

(assert (=> b!5270473 (= res!2235936 e!3277847)))

(declare-fun res!2235933 () Bool)

(assert (=> b!5270473 (=> (not res!2235933) (not e!3277847))))

(assert (=> b!5270473 (= res!2235933 lt!2156639)))

(declare-fun b!5270474 () Bool)

(assert (=> b!5270474 (= e!3277847 (= (head!11297 (tail!10394 s!2326)) (c!912522 (derivativeStep!4110 r!7292 (head!11297 s!2326)))))))

(declare-fun b!5270475 () Bool)

(assert (=> b!5270475 (= e!3277843 (nullable!5059 (derivativeStep!4110 r!7292 (head!11297 s!2326))))))

(declare-fun b!5270471 () Bool)

(assert (=> b!5270471 (= e!3277846 (not lt!2156639))))

(declare-fun d!1696065 () Bool)

(assert (=> d!1696065 e!3277848))

(declare-fun c!912868 () Bool)

(assert (=> d!1696065 (= c!912868 (is-EmptyExpr!14890 (derivativeStep!4110 r!7292 (head!11297 s!2326))))))

(assert (=> d!1696065 (= lt!2156639 e!3277843)))

(declare-fun c!912867 () Bool)

(assert (=> d!1696065 (= c!912867 (isEmpty!32797 (tail!10394 s!2326)))))

(assert (=> d!1696065 (validRegex!6626 (derivativeStep!4110 r!7292 (head!11297 s!2326)))))

(assert (=> d!1696065 (= (matchR!7075 (derivativeStep!4110 r!7292 (head!11297 s!2326)) (tail!10394 s!2326)) lt!2156639)))

(declare-fun b!5270476 () Bool)

(declare-fun res!2235937 () Bool)

(assert (=> b!5270476 (=> res!2235937 e!3277844)))

(assert (=> b!5270476 (= res!2235937 (not (isEmpty!32797 (tail!10394 (tail!10394 s!2326)))))))

(declare-fun bm!374465 () Bool)

(assert (=> bm!374465 (= call!374470 (isEmpty!32797 (tail!10394 s!2326)))))

(assert (= (and d!1696065 c!912867) b!5270475))

(assert (= (and d!1696065 (not c!912867)) b!5270464))

(assert (= (and d!1696065 c!912868) b!5270467))

(assert (= (and d!1696065 (not c!912868)) b!5270468))

(assert (= (and b!5270468 c!912869) b!5270471))

(assert (= (and b!5270468 (not c!912869)) b!5270463))

(assert (= (and b!5270463 (not res!2235932)) b!5270473))

(assert (= (and b!5270473 res!2235933) b!5270470))

(assert (= (and b!5270470 res!2235931) b!5270472))

(assert (= (and b!5270472 res!2235934) b!5270474))

(assert (= (and b!5270473 (not res!2235936)) b!5270466))

(assert (= (and b!5270466 res!2235935) b!5270465))

(assert (= (and b!5270465 (not res!2235930)) b!5270476))

(assert (= (and b!5270476 (not res!2235937)) b!5270469))

(assert (= (or b!5270467 b!5270465 b!5270470) bm!374465))

(assert (=> b!5270474 m!6309060))

(declare-fun m!6309740 () Bool)

(assert (=> b!5270474 m!6309740))

(assert (=> b!5270475 m!6309064))

(declare-fun m!6309742 () Bool)

(assert (=> b!5270475 m!6309742))

(assert (=> b!5270472 m!6309060))

(declare-fun m!6309744 () Bool)

(assert (=> b!5270472 m!6309744))

(assert (=> b!5270472 m!6309744))

(declare-fun m!6309746 () Bool)

(assert (=> b!5270472 m!6309746))

(assert (=> b!5270464 m!6309060))

(assert (=> b!5270464 m!6309740))

(assert (=> b!5270464 m!6309064))

(assert (=> b!5270464 m!6309740))

(declare-fun m!6309748 () Bool)

(assert (=> b!5270464 m!6309748))

(assert (=> b!5270464 m!6309060))

(assert (=> b!5270464 m!6309744))

(assert (=> b!5270464 m!6309748))

(assert (=> b!5270464 m!6309744))

(declare-fun m!6309750 () Bool)

(assert (=> b!5270464 m!6309750))

(assert (=> bm!374465 m!6309060))

(assert (=> bm!374465 m!6309062))

(assert (=> b!5270469 m!6309060))

(assert (=> b!5270469 m!6309740))

(assert (=> d!1696065 m!6309060))

(assert (=> d!1696065 m!6309062))

(assert (=> d!1696065 m!6309064))

(declare-fun m!6309752 () Bool)

(assert (=> d!1696065 m!6309752))

(assert (=> b!5270476 m!6309060))

(assert (=> b!5270476 m!6309744))

(assert (=> b!5270476 m!6309744))

(assert (=> b!5270476 m!6309746))

(assert (=> b!5269588 d!1696065))

(declare-fun c!912882 () Bool)

(declare-fun bm!374474 () Bool)

(declare-fun call!374482 () Regex!14890)

(assert (=> bm!374474 (= call!374482 (derivativeStep!4110 (ite c!912882 (regTwo!30293 r!7292) (regOne!30292 r!7292)) (head!11297 s!2326)))))

(declare-fun e!3277860 () Regex!14890)

(declare-fun b!5270497 () Bool)

(declare-fun call!374481 () Regex!14890)

(assert (=> b!5270497 (= e!3277860 (Union!14890 (Concat!23735 call!374482 (regTwo!30292 r!7292)) call!374481))))

(declare-fun b!5270498 () Bool)

(declare-fun e!3277862 () Regex!14890)

(declare-fun call!374480 () Regex!14890)

(assert (=> b!5270498 (= e!3277862 (Concat!23735 call!374480 r!7292))))

(declare-fun b!5270499 () Bool)

(assert (=> b!5270499 (= c!912882 (is-Union!14890 r!7292))))

(declare-fun e!3277863 () Regex!14890)

(declare-fun e!3277861 () Regex!14890)

(assert (=> b!5270499 (= e!3277863 e!3277861)))

(declare-fun b!5270500 () Bool)

(declare-fun c!912884 () Bool)

(assert (=> b!5270500 (= c!912884 (nullable!5059 (regOne!30292 r!7292)))))

(assert (=> b!5270500 (= e!3277862 e!3277860)))

(declare-fun b!5270501 () Bool)

(declare-fun call!374479 () Regex!14890)

(assert (=> b!5270501 (= e!3277861 (Union!14890 call!374479 call!374482))))

(declare-fun bm!374475 () Bool)

(assert (=> bm!374475 (= call!374481 call!374480)))

(declare-fun b!5270502 () Bool)

(assert (=> b!5270502 (= e!3277860 (Union!14890 (Concat!23735 call!374481 (regTwo!30292 r!7292)) EmptyLang!14890))))

(declare-fun bm!374476 () Bool)

(assert (=> bm!374476 (= call!374480 call!374479)))

(declare-fun d!1696067 () Bool)

(declare-fun lt!2156642 () Regex!14890)

(assert (=> d!1696067 (validRegex!6626 lt!2156642)))

(declare-fun e!3277859 () Regex!14890)

(assert (=> d!1696067 (= lt!2156642 e!3277859)))

(declare-fun c!912880 () Bool)

(assert (=> d!1696067 (= c!912880 (or (is-EmptyExpr!14890 r!7292) (is-EmptyLang!14890 r!7292)))))

(assert (=> d!1696067 (validRegex!6626 r!7292)))

(assert (=> d!1696067 (= (derivativeStep!4110 r!7292 (head!11297 s!2326)) lt!2156642)))

(declare-fun b!5270503 () Bool)

(assert (=> b!5270503 (= e!3277863 (ite (= (head!11297 s!2326) (c!912522 r!7292)) EmptyExpr!14890 EmptyLang!14890))))

(declare-fun b!5270504 () Bool)

(assert (=> b!5270504 (= e!3277859 EmptyLang!14890)))

(declare-fun b!5270505 () Bool)

(assert (=> b!5270505 (= e!3277859 e!3277863)))

(declare-fun c!912881 () Bool)

(assert (=> b!5270505 (= c!912881 (is-ElementMatch!14890 r!7292))))

(declare-fun b!5270506 () Bool)

(assert (=> b!5270506 (= e!3277861 e!3277862)))

(declare-fun c!912883 () Bool)

(assert (=> b!5270506 (= c!912883 (is-Star!14890 r!7292))))

(declare-fun bm!374477 () Bool)

(assert (=> bm!374477 (= call!374479 (derivativeStep!4110 (ite c!912882 (regOne!30293 r!7292) (ite c!912883 (reg!15219 r!7292) (ite c!912884 (regTwo!30292 r!7292) (regOne!30292 r!7292)))) (head!11297 s!2326)))))

(assert (= (and d!1696067 c!912880) b!5270504))

(assert (= (and d!1696067 (not c!912880)) b!5270505))

(assert (= (and b!5270505 c!912881) b!5270503))

(assert (= (and b!5270505 (not c!912881)) b!5270499))

(assert (= (and b!5270499 c!912882) b!5270501))

(assert (= (and b!5270499 (not c!912882)) b!5270506))

(assert (= (and b!5270506 c!912883) b!5270498))

(assert (= (and b!5270506 (not c!912883)) b!5270500))

(assert (= (and b!5270500 c!912884) b!5270497))

(assert (= (and b!5270500 (not c!912884)) b!5270502))

(assert (= (or b!5270497 b!5270502) bm!374475))

(assert (= (or b!5270498 bm!374475) bm!374476))

(assert (= (or b!5270501 b!5270497) bm!374474))

(assert (= (or b!5270501 bm!374476) bm!374477))

(assert (=> bm!374474 m!6309056))

(declare-fun m!6309754 () Bool)

(assert (=> bm!374474 m!6309754))

(assert (=> b!5270500 m!6309566))

(declare-fun m!6309756 () Bool)

(assert (=> d!1696067 m!6309756))

(assert (=> d!1696067 m!6308720))

(assert (=> bm!374477 m!6309056))

(declare-fun m!6309758 () Bool)

(assert (=> bm!374477 m!6309758))

(assert (=> b!5269588 d!1696067))

(assert (=> b!5269588 d!1696045))

(assert (=> b!5269588 d!1695971))

(declare-fun d!1696069 () Bool)

(declare-fun res!2235938 () Bool)

(declare-fun e!3277864 () Bool)

(assert (=> d!1696069 (=> res!2235938 e!3277864)))

(assert (=> d!1696069 (= res!2235938 (is-Nil!60845 (exprs!4774 setElem!33722)))))

(assert (=> d!1696069 (= (forall!14298 (exprs!4774 setElem!33722) lambda!265821) e!3277864)))

(declare-fun b!5270507 () Bool)

(declare-fun e!3277865 () Bool)

(assert (=> b!5270507 (= e!3277864 e!3277865)))

(declare-fun res!2235939 () Bool)

(assert (=> b!5270507 (=> (not res!2235939) (not e!3277865))))

(assert (=> b!5270507 (= res!2235939 (dynLambda!24044 lambda!265821 (h!67293 (exprs!4774 setElem!33722))))))

(declare-fun b!5270508 () Bool)

(assert (=> b!5270508 (= e!3277865 (forall!14298 (t!374162 (exprs!4774 setElem!33722)) lambda!265821))))

(assert (= (and d!1696069 (not res!2235938)) b!5270507))

(assert (= (and b!5270507 res!2235939) b!5270508))

(declare-fun b_lambda!203279 () Bool)

(assert (=> (not b_lambda!203279) (not b!5270507)))

(declare-fun m!6309760 () Bool)

(assert (=> b!5270507 m!6309760))

(declare-fun m!6309762 () Bool)

(assert (=> b!5270508 m!6309762))

(assert (=> d!1695697 d!1696069))

(declare-fun d!1696071 () Bool)

(assert (=> d!1696071 (= (nullable!5059 (h!67293 (exprs!4774 lt!2156445))) (nullableFct!1441 (h!67293 (exprs!4774 lt!2156445))))))

(declare-fun bs!1221202 () Bool)

(assert (= bs!1221202 d!1696071))

(declare-fun m!6309764 () Bool)

(assert (=> bs!1221202 m!6309764))

(assert (=> b!5269434 d!1696071))

(declare-fun d!1696073 () Bool)

(declare-fun c!912885 () Bool)

(assert (=> d!1696073 (= c!912885 (isEmpty!32797 (tail!10394 (t!374163 s!2326))))))

(declare-fun e!3277866 () Bool)

(assert (=> d!1696073 (= (matchZipper!1134 (derivationStepZipper!1133 lt!2156453 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))) e!3277866)))

(declare-fun b!5270509 () Bool)

(assert (=> b!5270509 (= e!3277866 (nullableZipper!1289 (derivationStepZipper!1133 lt!2156453 (head!11297 (t!374163 s!2326)))))))

(declare-fun b!5270510 () Bool)

(assert (=> b!5270510 (= e!3277866 (matchZipper!1134 (derivationStepZipper!1133 (derivationStepZipper!1133 lt!2156453 (head!11297 (t!374163 s!2326))) (head!11297 (tail!10394 (t!374163 s!2326)))) (tail!10394 (tail!10394 (t!374163 s!2326)))))))

(assert (= (and d!1696073 c!912885) b!5270509))

(assert (= (and d!1696073 (not c!912885)) b!5270510))

(assert (=> d!1696073 m!6308876))

(assert (=> d!1696073 m!6309452))

(assert (=> b!5270509 m!6308874))

(declare-fun m!6309766 () Bool)

(assert (=> b!5270509 m!6309766))

(assert (=> b!5270510 m!6308876))

(assert (=> b!5270510 m!6309456))

(assert (=> b!5270510 m!6308874))

(assert (=> b!5270510 m!6309456))

(declare-fun m!6309768 () Bool)

(assert (=> b!5270510 m!6309768))

(assert (=> b!5270510 m!6308876))

(assert (=> b!5270510 m!6309460))

(assert (=> b!5270510 m!6309768))

(assert (=> b!5270510 m!6309460))

(declare-fun m!6309770 () Bool)

(assert (=> b!5270510 m!6309770))

(assert (=> b!5269367 d!1696073))

(declare-fun bs!1221203 () Bool)

(declare-fun d!1696075 () Bool)

(assert (= bs!1221203 (and d!1696075 d!1696033)))

(declare-fun lambda!265904 () Int)

(assert (=> bs!1221203 (= lambda!265904 lambda!265899)))

(declare-fun bs!1221204 () Bool)

(assert (= bs!1221204 (and d!1696075 d!1695939)))

(assert (=> bs!1221204 (= lambda!265904 lambda!265881)))

(declare-fun bs!1221205 () Bool)

(assert (= bs!1221205 (and d!1696075 b!5269181)))

(assert (=> bs!1221205 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265904 lambda!265800))))

(declare-fun bs!1221206 () Bool)

(assert (= bs!1221206 (and d!1696075 d!1695743)))

(assert (=> bs!1221206 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265904 lambda!265834))))

(declare-fun bs!1221207 () Bool)

(assert (= bs!1221207 (and d!1696075 d!1696007)))

(assert (=> bs!1221207 (= lambda!265904 lambda!265897)))

(assert (=> d!1696075 true))

(assert (=> d!1696075 (= (derivationStepZipper!1133 lt!2156453 (head!11297 (t!374163 s!2326))) (flatMap!617 lt!2156453 lambda!265904))))

(declare-fun bs!1221208 () Bool)

(assert (= bs!1221208 d!1696075))

(declare-fun m!6309772 () Bool)

(assert (=> bs!1221208 m!6309772))

(assert (=> b!5269367 d!1696075))

(assert (=> b!5269367 d!1695941))

(assert (=> b!5269367 d!1695943))

(declare-fun bm!374478 () Bool)

(declare-fun call!374484 () (Set Context!8548))

(declare-fun call!374485 () (Set Context!8548))

(assert (=> bm!374478 (= call!374484 call!374485)))

(declare-fun b!5270511 () Bool)

(declare-fun e!3277870 () (Set Context!8548))

(declare-fun call!374488 () (Set Context!8548))

(assert (=> b!5270511 (= e!3277870 (set.union call!374488 call!374485))))

(declare-fun c!912889 () Bool)

(declare-fun bm!374479 () Bool)

(declare-fun c!912887 () Bool)

(declare-fun call!374487 () List!60969)

(assert (=> bm!374479 (= call!374487 ($colon$colon!1339 (exprs!4774 (ite c!912602 lt!2156452 (Context!8549 call!374305))) (ite (or c!912889 c!912887) (regTwo!30292 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))) (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))))))))

(declare-fun bm!374480 () Bool)

(declare-fun call!374486 () List!60969)

(assert (=> bm!374480 (= call!374486 call!374487)))

(declare-fun b!5270512 () Bool)

(declare-fun e!3277869 () Bool)

(assert (=> b!5270512 (= e!3277869 (nullable!5059 (regOne!30292 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))))))))

(declare-fun c!912886 () Bool)

(declare-fun bm!374481 () Bool)

(assert (=> bm!374481 (= call!374488 (derivationStepZipperDown!338 (ite c!912886 (regOne!30293 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))) (regOne!30292 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))))) (ite c!912886 (ite c!912602 lt!2156452 (Context!8549 call!374305)) (Context!8549 call!374487)) (h!67294 s!2326)))))

(declare-fun c!912890 () Bool)

(declare-fun d!1696077 () Bool)

(assert (=> d!1696077 (= c!912890 (and (is-ElementMatch!14890 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))) (= (c!912522 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))) (h!67294 s!2326))))))

(declare-fun e!3277867 () (Set Context!8548))

(assert (=> d!1696077 (= (derivationStepZipperDown!338 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))) (ite c!912602 lt!2156452 (Context!8549 call!374305)) (h!67294 s!2326)) e!3277867)))

(declare-fun b!5270513 () Bool)

(declare-fun c!912888 () Bool)

(assert (=> b!5270513 (= c!912888 (is-Star!14890 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))

(declare-fun e!3277871 () (Set Context!8548))

(declare-fun e!3277868 () (Set Context!8548))

(assert (=> b!5270513 (= e!3277871 e!3277868)))

(declare-fun b!5270514 () Bool)

(assert (=> b!5270514 (= e!3277868 call!374484)))

(declare-fun b!5270515 () Bool)

(declare-fun e!3277872 () (Set Context!8548))

(assert (=> b!5270515 (= e!3277867 e!3277872)))

(assert (=> b!5270515 (= c!912886 (is-Union!14890 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))

(declare-fun b!5270516 () Bool)

(declare-fun call!374483 () (Set Context!8548))

(assert (=> b!5270516 (= e!3277872 (set.union call!374488 call!374483))))

(declare-fun b!5270517 () Bool)

(assert (=> b!5270517 (= c!912889 e!3277869)))

(declare-fun res!2235940 () Bool)

(assert (=> b!5270517 (=> (not res!2235940) (not e!3277869))))

(assert (=> b!5270517 (= res!2235940 (is-Concat!23735 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))

(assert (=> b!5270517 (= e!3277872 e!3277870)))

(declare-fun b!5270518 () Bool)

(assert (=> b!5270518 (= e!3277868 (as set.empty (Set Context!8548)))))

(declare-fun b!5270519 () Bool)

(assert (=> b!5270519 (= e!3277870 e!3277871)))

(assert (=> b!5270519 (= c!912887 (is-Concat!23735 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))

(declare-fun b!5270520 () Bool)

(assert (=> b!5270520 (= e!3277867 (set.insert (ite c!912602 lt!2156452 (Context!8549 call!374305)) (as set.empty (Set Context!8548))))))

(declare-fun bm!374482 () Bool)

(assert (=> bm!374482 (= call!374485 call!374483)))

(declare-fun b!5270521 () Bool)

(assert (=> b!5270521 (= e!3277871 call!374484)))

(declare-fun bm!374483 () Bool)

(assert (=> bm!374483 (= call!374483 (derivationStepZipperDown!338 (ite c!912886 (regTwo!30293 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))) (ite c!912889 (regTwo!30292 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))) (ite c!912887 (regOne!30292 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))) (reg!15219 (ite c!912602 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343))))))))) (ite (or c!912886 c!912889) (ite c!912602 lt!2156452 (Context!8549 call!374305)) (Context!8549 call!374486)) (h!67294 s!2326)))))

(assert (= (and d!1696077 c!912890) b!5270520))

(assert (= (and d!1696077 (not c!912890)) b!5270515))

(assert (= (and b!5270515 c!912886) b!5270516))

(assert (= (and b!5270515 (not c!912886)) b!5270517))

(assert (= (and b!5270517 res!2235940) b!5270512))

(assert (= (and b!5270517 c!912889) b!5270511))

(assert (= (and b!5270517 (not c!912889)) b!5270519))

(assert (= (and b!5270519 c!912887) b!5270521))

(assert (= (and b!5270519 (not c!912887)) b!5270513))

(assert (= (and b!5270513 c!912888) b!5270514))

(assert (= (and b!5270513 (not c!912888)) b!5270518))

(assert (= (or b!5270521 b!5270514) bm!374480))

(assert (= (or b!5270521 b!5270514) bm!374478))

(assert (= (or b!5270511 bm!374480) bm!374479))

(assert (= (or b!5270511 bm!374478) bm!374482))

(assert (= (or b!5270516 bm!374482) bm!374483))

(assert (= (or b!5270516 b!5270511) bm!374481))

(declare-fun m!6309774 () Bool)

(assert (=> bm!374481 m!6309774))

(declare-fun m!6309776 () Bool)

(assert (=> bm!374483 m!6309776))

(declare-fun m!6309778 () Bool)

(assert (=> b!5270520 m!6309778))

(declare-fun m!6309780 () Bool)

(assert (=> bm!374479 m!6309780))

(declare-fun m!6309782 () Bool)

(assert (=> b!5270512 m!6309782))

(assert (=> bm!374299 d!1696077))

(assert (=> d!1695769 d!1695765))

(declare-fun d!1696079 () Bool)

(assert (=> d!1696079 (= (flatMap!617 z!1189 lambda!265800) (dynLambda!24042 lambda!265800 (h!67295 zl!343)))))

(assert (=> d!1696079 true))

(declare-fun _$13!1814 () Unit!153078)

(assert (=> d!1696079 (= (choose!39316 z!1189 (h!67295 zl!343) lambda!265800) _$13!1814)))

(declare-fun b_lambda!203281 () Bool)

(assert (=> (not b_lambda!203281) (not d!1696079)))

(declare-fun bs!1221209 () Bool)

(assert (= bs!1221209 d!1696079))

(assert (=> bs!1221209 m!6308696))

(assert (=> bs!1221209 m!6309036))

(assert (=> d!1695769 d!1696079))

(assert (=> b!5269348 d!1695713))

(declare-fun bs!1221210 () Bool)

(declare-fun d!1696081 () Bool)

(assert (= bs!1221210 (and d!1696081 d!1696015)))

(declare-fun lambda!265905 () Int)

(assert (=> bs!1221210 (= lambda!265905 lambda!265898)))

(declare-fun bs!1221211 () Bool)

(assert (= bs!1221211 (and d!1696081 d!1695947)))

(assert (=> bs!1221211 (= lambda!265905 lambda!265882)))

(declare-fun bs!1221212 () Bool)

(assert (= bs!1221212 (and d!1696081 d!1696037)))

(assert (=> bs!1221212 (= lambda!265905 lambda!265900)))

(declare-fun bs!1221213 () Bool)

(assert (= bs!1221213 (and d!1696081 d!1695953)))

(assert (=> bs!1221213 (= lambda!265905 lambda!265883)))

(declare-fun bs!1221214 () Bool)

(assert (= bs!1221214 (and d!1696081 d!1695783)))

(assert (=> bs!1221214 (= lambda!265905 lambda!265846)))

(declare-fun bs!1221215 () Bool)

(assert (= bs!1221215 (and d!1696081 d!1695697)))

(assert (=> bs!1221215 (= lambda!265905 lambda!265821)))

(declare-fun bs!1221216 () Bool)

(assert (= bs!1221216 (and d!1696081 d!1695711)))

(assert (=> bs!1221216 (= lambda!265905 lambda!265822)))

(declare-fun bs!1221217 () Bool)

(assert (= bs!1221217 (and d!1696081 d!1695781)))

(assert (=> bs!1221217 (= lambda!265905 lambda!265843)))

(declare-fun bs!1221218 () Bool)

(assert (= bs!1221218 (and d!1696081 d!1695695)))

(assert (=> bs!1221218 (= lambda!265905 lambda!265818)))

(assert (=> d!1696081 (= (inv!80473 (h!67295 (t!374164 zl!343))) (forall!14298 (exprs!4774 (h!67295 (t!374164 zl!343))) lambda!265905))))

(declare-fun bs!1221219 () Bool)

(assert (= bs!1221219 d!1696081))

(declare-fun m!6309784 () Bool)

(assert (=> bs!1221219 m!6309784))

(assert (=> b!5269684 d!1696081))

(assert (=> b!5269406 d!1695997))

(declare-fun d!1696083 () Bool)

(assert (=> d!1696083 true))

(declare-fun setRes!33736 () Bool)

(assert (=> d!1696083 setRes!33736))

(declare-fun condSetEmpty!33736 () Bool)

(declare-fun res!2235941 () (Set Context!8548))

(assert (=> d!1696083 (= condSetEmpty!33736 (= res!2235941 (as set.empty (Set Context!8548))))))

(assert (=> d!1696083 (= (choose!39315 z!1189 lambda!265800) res!2235941)))

(declare-fun setIsEmpty!33736 () Bool)

(assert (=> setIsEmpty!33736 setRes!33736))

(declare-fun setElem!33736 () Context!8548)

(declare-fun tp!1472968 () Bool)

(declare-fun e!3277873 () Bool)

(declare-fun setNonEmpty!33736 () Bool)

(assert (=> setNonEmpty!33736 (= setRes!33736 (and tp!1472968 (inv!80473 setElem!33736) e!3277873))))

(declare-fun setRest!33736 () (Set Context!8548))

(assert (=> setNonEmpty!33736 (= res!2235941 (set.union (set.insert setElem!33736 (as set.empty (Set Context!8548))) setRest!33736))))

(declare-fun b!5270522 () Bool)

(declare-fun tp!1472969 () Bool)

(assert (=> b!5270522 (= e!3277873 tp!1472969)))

(assert (= (and d!1696083 condSetEmpty!33736) setIsEmpty!33736))

(assert (= (and d!1696083 (not condSetEmpty!33736)) setNonEmpty!33736))

(assert (= setNonEmpty!33736 b!5270522))

(declare-fun m!6309786 () Bool)

(assert (=> setNonEmpty!33736 m!6309786))

(assert (=> d!1695765 d!1696083))

(declare-fun d!1696085 () Bool)

(assert (=> d!1696085 (= (isEmpty!32798 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) Nil!60846 s!2326 s!2326)) (not (is-Some!15000 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) Nil!60846 s!2326 s!2326))))))

(assert (=> d!1695733 d!1696085))

(declare-fun bs!1221220 () Bool)

(declare-fun d!1696087 () Bool)

(assert (= bs!1221220 (and d!1696087 d!1695929)))

(declare-fun lambda!265906 () Int)

(assert (=> bs!1221220 (= lambda!265906 lambda!265880)))

(declare-fun bs!1221221 () Bool)

(assert (= bs!1221221 (and d!1696087 d!1695985)))

(assert (=> bs!1221221 (= lambda!265906 lambda!265893)))

(declare-fun bs!1221222 () Bool)

(assert (= bs!1221222 (and d!1696087 d!1695993)))

(assert (=> bs!1221222 (= lambda!265906 lambda!265896)))

(declare-fun bs!1221223 () Bool)

(assert (= bs!1221223 (and d!1696087 d!1696049)))

(assert (=> bs!1221223 (= lambda!265906 lambda!265903)))

(assert (=> d!1696087 (= (nullableZipper!1289 lt!2156443) (exists!1992 lt!2156443 lambda!265906))))

(declare-fun bs!1221224 () Bool)

(assert (= bs!1221224 d!1696087))

(declare-fun m!6309788 () Bool)

(assert (=> bs!1221224 m!6309788))

(assert (=> b!5269371 d!1696087))

(declare-fun b!5270523 () Bool)

(declare-fun e!3277880 () Bool)

(declare-fun call!374490 () Bool)

(assert (=> b!5270523 (= e!3277880 call!374490)))

(declare-fun b!5270524 () Bool)

(declare-fun e!3277877 () Bool)

(declare-fun e!3277879 () Bool)

(assert (=> b!5270524 (= e!3277877 e!3277879)))

(declare-fun c!912891 () Bool)

(assert (=> b!5270524 (= c!912891 (is-Star!14890 lt!2156547))))

(declare-fun b!5270525 () Bool)

(declare-fun res!2235943 () Bool)

(declare-fun e!3277876 () Bool)

(assert (=> b!5270525 (=> res!2235943 e!3277876)))

(assert (=> b!5270525 (= res!2235943 (not (is-Concat!23735 lt!2156547)))))

(declare-fun e!3277875 () Bool)

(assert (=> b!5270525 (= e!3277875 e!3277876)))

(declare-fun b!5270526 () Bool)

(declare-fun e!3277874 () Bool)

(assert (=> b!5270526 (= e!3277874 call!374490)))

(declare-fun bm!374484 () Bool)

(declare-fun call!374489 () Bool)

(declare-fun call!374491 () Bool)

(assert (=> bm!374484 (= call!374489 call!374491)))

(declare-fun b!5270527 () Bool)

(declare-fun e!3277878 () Bool)

(assert (=> b!5270527 (= e!3277878 call!374491)))

(declare-fun b!5270528 () Bool)

(assert (=> b!5270528 (= e!3277876 e!3277880)))

(declare-fun res!2235942 () Bool)

(assert (=> b!5270528 (=> (not res!2235942) (not e!3277880))))

(assert (=> b!5270528 (= res!2235942 call!374489)))

(declare-fun b!5270529 () Bool)

(assert (=> b!5270529 (= e!3277879 e!3277878)))

(declare-fun res!2235946 () Bool)

(assert (=> b!5270529 (= res!2235946 (not (nullable!5059 (reg!15219 lt!2156547))))))

(assert (=> b!5270529 (=> (not res!2235946) (not e!3277878))))

(declare-fun bm!374486 () Bool)

(declare-fun c!912892 () Bool)

(assert (=> bm!374486 (= call!374490 (validRegex!6626 (ite c!912892 (regTwo!30293 lt!2156547) (regTwo!30292 lt!2156547))))))

(declare-fun bm!374485 () Bool)

(assert (=> bm!374485 (= call!374491 (validRegex!6626 (ite c!912891 (reg!15219 lt!2156547) (ite c!912892 (regOne!30293 lt!2156547) (regOne!30292 lt!2156547)))))))

(declare-fun d!1696089 () Bool)

(declare-fun res!2235945 () Bool)

(assert (=> d!1696089 (=> res!2235945 e!3277877)))

(assert (=> d!1696089 (= res!2235945 (is-ElementMatch!14890 lt!2156547))))

(assert (=> d!1696089 (= (validRegex!6626 lt!2156547) e!3277877)))

(declare-fun b!5270530 () Bool)

(declare-fun res!2235944 () Bool)

(assert (=> b!5270530 (=> (not res!2235944) (not e!3277874))))

(assert (=> b!5270530 (= res!2235944 call!374489)))

(assert (=> b!5270530 (= e!3277875 e!3277874)))

(declare-fun b!5270531 () Bool)

(assert (=> b!5270531 (= e!3277879 e!3277875)))

(assert (=> b!5270531 (= c!912892 (is-Union!14890 lt!2156547))))

(assert (= (and d!1696089 (not res!2235945)) b!5270524))

(assert (= (and b!5270524 c!912891) b!5270529))

(assert (= (and b!5270524 (not c!912891)) b!5270531))

(assert (= (and b!5270529 res!2235946) b!5270527))

(assert (= (and b!5270531 c!912892) b!5270530))

(assert (= (and b!5270531 (not c!912892)) b!5270525))

(assert (= (and b!5270530 res!2235944) b!5270526))

(assert (= (and b!5270525 (not res!2235943)) b!5270528))

(assert (= (and b!5270528 res!2235942) b!5270523))

(assert (= (or b!5270526 b!5270523) bm!374486))

(assert (= (or b!5270530 b!5270528) bm!374484))

(assert (= (or b!5270527 bm!374484) bm!374485))

(declare-fun m!6309790 () Bool)

(assert (=> b!5270529 m!6309790))

(declare-fun m!6309792 () Bool)

(assert (=> bm!374486 m!6309792))

(declare-fun m!6309794 () Bool)

(assert (=> bm!374485 m!6309794))

(assert (=> d!1695709 d!1696089))

(assert (=> d!1695709 d!1695781))

(assert (=> d!1695709 d!1695783))

(declare-fun d!1696091 () Bool)

(assert (=> d!1696091 (= ($colon$colon!1339 (exprs!4774 lt!2156452) (ite (or c!912591 c!912589) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regOne!30292 r!7292)))) (Cons!60845 (ite (or c!912591 c!912589) (regTwo!30292 (regTwo!30292 (regOne!30292 r!7292))) (regTwo!30292 (regOne!30292 r!7292))) (exprs!4774 lt!2156452)))))

(assert (=> bm!374283 d!1696091))

(assert (=> b!5269598 d!1696045))

(assert (=> b!5269370 d!1695701))

(declare-fun d!1696093 () Bool)

(assert (=> d!1696093 (= (isEmpty!32794 (t!374162 (unfocusZipperList!332 zl!343))) (is-Nil!60845 (t!374162 (unfocusZipperList!332 zl!343))))))

(assert (=> b!5269629 d!1696093))

(declare-fun d!1696095 () Bool)

(assert (=> d!1696095 (= (head!11296 (exprs!4774 (h!67295 zl!343))) (h!67293 (exprs!4774 (h!67295 zl!343))))))

(assert (=> b!5269345 d!1696095))

(declare-fun b!5270532 () Bool)

(declare-fun e!3277881 () (Set Context!8548))

(declare-fun call!374492 () (Set Context!8548))

(assert (=> b!5270532 (= e!3277881 call!374492)))

(declare-fun b!5270533 () Bool)

(declare-fun e!3277882 () (Set Context!8548))

(assert (=> b!5270533 (= e!3277882 e!3277881)))

(declare-fun c!912893 () Bool)

(assert (=> b!5270533 (= c!912893 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156457))))))))

(declare-fun d!1696097 () Bool)

(declare-fun c!912894 () Bool)

(declare-fun e!3277883 () Bool)

(assert (=> d!1696097 (= c!912894 e!3277883)))

(declare-fun res!2235947 () Bool)

(assert (=> d!1696097 (=> (not res!2235947) (not e!3277883))))

(assert (=> d!1696097 (= res!2235947 (is-Cons!60845 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156457))))))))

(assert (=> d!1696097 (= (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 lt!2156457))) (h!67294 s!2326)) e!3277882)))

(declare-fun b!5270534 () Bool)

(assert (=> b!5270534 (= e!3277881 (as set.empty (Set Context!8548)))))

(declare-fun bm!374487 () Bool)

(assert (=> bm!374487 (= call!374492 (derivationStepZipperDown!338 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156457))))) (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156457)))))) (h!67294 s!2326)))))

(declare-fun b!5270535 () Bool)

(assert (=> b!5270535 (= e!3277883 (nullable!5059 (h!67293 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156457)))))))))

(declare-fun b!5270536 () Bool)

(assert (=> b!5270536 (= e!3277882 (set.union call!374492 (derivationStepZipperUp!262 (Context!8549 (t!374162 (exprs!4774 (Context!8549 (t!374162 (exprs!4774 lt!2156457)))))) (h!67294 s!2326))))))

(assert (= (and d!1696097 res!2235947) b!5270535))

(assert (= (and d!1696097 c!912894) b!5270536))

(assert (= (and d!1696097 (not c!912894)) b!5270533))

(assert (= (and b!5270533 c!912893) b!5270532))

(assert (= (and b!5270533 (not c!912893)) b!5270534))

(assert (= (or b!5270536 b!5270532) bm!374487))

(declare-fun m!6309796 () Bool)

(assert (=> bm!374487 m!6309796))

(declare-fun m!6309798 () Bool)

(assert (=> b!5270535 m!6309798))

(declare-fun m!6309800 () Bool)

(assert (=> b!5270536 m!6309800))

(assert (=> b!5269440 d!1696097))

(declare-fun bs!1221225 () Bool)

(declare-fun d!1696099 () Bool)

(assert (= bs!1221225 (and d!1696099 d!1695993)))

(declare-fun lambda!265907 () Int)

(assert (=> bs!1221225 (= lambda!265907 lambda!265896)))

(declare-fun bs!1221226 () Bool)

(assert (= bs!1221226 (and d!1696099 d!1696087)))

(assert (=> bs!1221226 (= lambda!265907 lambda!265906)))

(declare-fun bs!1221227 () Bool)

(assert (= bs!1221227 (and d!1696099 d!1695929)))

(assert (=> bs!1221227 (= lambda!265907 lambda!265880)))

(declare-fun bs!1221228 () Bool)

(assert (= bs!1221228 (and d!1696099 d!1696049)))

(assert (=> bs!1221228 (= lambda!265907 lambda!265903)))

(declare-fun bs!1221229 () Bool)

(assert (= bs!1221229 (and d!1696099 d!1695985)))

(assert (=> bs!1221229 (= lambda!265907 lambda!265893)))

(assert (=> d!1696099 (= (nullableZipper!1289 lt!2156441) (exists!1992 lt!2156441 lambda!265907))))

(declare-fun bs!1221230 () Bool)

(assert (= bs!1221230 d!1696099))

(declare-fun m!6309802 () Bool)

(assert (=> bs!1221230 m!6309802))

(assert (=> b!5269377 d!1696099))

(declare-fun d!1696101 () Bool)

(declare-fun c!912895 () Bool)

(assert (=> d!1696101 (= c!912895 (isEmpty!32797 (t!374163 s!2326)))))

(declare-fun e!3277884 () Bool)

(assert (=> d!1696101 (= (matchZipper!1134 (set.union lt!2156440 lt!2156461) (t!374163 s!2326)) e!3277884)))

(declare-fun b!5270537 () Bool)

(assert (=> b!5270537 (= e!3277884 (nullableZipper!1289 (set.union lt!2156440 lt!2156461)))))

(declare-fun b!5270538 () Bool)

(assert (=> b!5270538 (= e!3277884 (matchZipper!1134 (derivationStepZipper!1133 (set.union lt!2156440 lt!2156461) (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))))))

(assert (= (and d!1696101 c!912895) b!5270537))

(assert (= (and d!1696101 (not c!912895)) b!5270538))

(assert (=> d!1696101 m!6308868))

(declare-fun m!6309804 () Bool)

(assert (=> b!5270537 m!6309804))

(assert (=> b!5270538 m!6308872))

(assert (=> b!5270538 m!6308872))

(declare-fun m!6309806 () Bool)

(assert (=> b!5270538 m!6309806))

(assert (=> b!5270538 m!6308876))

(assert (=> b!5270538 m!6309806))

(assert (=> b!5270538 m!6308876))

(declare-fun m!6309808 () Bool)

(assert (=> b!5270538 m!6309808))

(assert (=> d!1695721 d!1696101))

(assert (=> d!1695721 d!1695719))

(declare-fun d!1696103 () Bool)

(declare-fun e!3277887 () Bool)

(assert (=> d!1696103 (= (matchZipper!1134 (set.union lt!2156440 lt!2156461) (t!374163 s!2326)) e!3277887)))

(declare-fun res!2235950 () Bool)

(assert (=> d!1696103 (=> res!2235950 e!3277887)))

(assert (=> d!1696103 (= res!2235950 (matchZipper!1134 lt!2156440 (t!374163 s!2326)))))

(assert (=> d!1696103 true))

(declare-fun _$48!925 () Unit!153078)

(assert (=> d!1696103 (= (choose!39311 lt!2156440 lt!2156461 (t!374163 s!2326)) _$48!925)))

(declare-fun b!5270541 () Bool)

(assert (=> b!5270541 (= e!3277887 (matchZipper!1134 lt!2156461 (t!374163 s!2326)))))

(assert (= (and d!1696103 (not res!2235950)) b!5270541))

(assert (=> d!1696103 m!6308916))

(assert (=> d!1696103 m!6308712))

(assert (=> b!5270541 m!6308656))

(assert (=> d!1695721 d!1696103))

(declare-fun b!5270542 () Bool)

(declare-fun e!3277891 () Bool)

(declare-fun e!3277890 () Bool)

(assert (=> b!5270542 (= e!3277891 e!3277890)))

(declare-fun res!2235952 () Bool)

(assert (=> b!5270542 (=> res!2235952 e!3277890)))

(assert (=> b!5270542 (= res!2235952 (is-Star!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270543 () Bool)

(declare-fun e!3277888 () Bool)

(declare-fun call!374494 () Bool)

(assert (=> b!5270543 (= e!3277888 call!374494)))

(declare-fun bm!374488 () Bool)

(declare-fun c!912896 () Bool)

(assert (=> bm!374488 (= call!374494 (nullable!5059 (ite c!912896 (regTwo!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))

(declare-fun b!5270544 () Bool)

(declare-fun e!3277893 () Bool)

(assert (=> b!5270544 (= e!3277890 e!3277893)))

(assert (=> b!5270544 (= c!912896 (is-Union!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun b!5270545 () Bool)

(declare-fun e!3277889 () Bool)

(assert (=> b!5270545 (= e!3277889 call!374494)))

(declare-fun b!5270546 () Bool)

(assert (=> b!5270546 (= e!3277893 e!3277889)))

(declare-fun res!2235954 () Bool)

(declare-fun call!374493 () Bool)

(assert (=> b!5270546 (= res!2235954 call!374493)))

(assert (=> b!5270546 (=> (not res!2235954) (not e!3277889))))

(declare-fun b!5270547 () Bool)

(assert (=> b!5270547 (= e!3277893 e!3277888)))

(declare-fun res!2235951 () Bool)

(assert (=> b!5270547 (= res!2235951 call!374493)))

(assert (=> b!5270547 (=> res!2235951 e!3277888)))

(declare-fun d!1696105 () Bool)

(declare-fun res!2235955 () Bool)

(declare-fun e!3277892 () Bool)

(assert (=> d!1696105 (=> res!2235955 e!3277892)))

(assert (=> d!1696105 (= res!2235955 (is-EmptyExpr!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(assert (=> d!1696105 (= (nullableFct!1441 (h!67293 (exprs!4774 (h!67295 zl!343)))) e!3277892)))

(declare-fun b!5270548 () Bool)

(assert (=> b!5270548 (= e!3277892 e!3277891)))

(declare-fun res!2235953 () Bool)

(assert (=> b!5270548 (=> (not res!2235953) (not e!3277891))))

(assert (=> b!5270548 (= res!2235953 (and (not (is-EmptyLang!14890 (h!67293 (exprs!4774 (h!67295 zl!343))))) (not (is-ElementMatch!14890 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))

(declare-fun bm!374489 () Bool)

(assert (=> bm!374489 (= call!374493 (nullable!5059 (ite c!912896 (regOne!30293 (h!67293 (exprs!4774 (h!67295 zl!343)))) (regOne!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))))))))

(assert (= (and d!1696105 (not res!2235955)) b!5270548))

(assert (= (and b!5270548 res!2235953) b!5270542))

(assert (= (and b!5270542 (not res!2235952)) b!5270544))

(assert (= (and b!5270544 c!912896) b!5270547))

(assert (= (and b!5270544 (not c!912896)) b!5270546))

(assert (= (and b!5270547 (not res!2235951)) b!5270543))

(assert (= (and b!5270546 res!2235954) b!5270545))

(assert (= (or b!5270543 b!5270545) bm!374488))

(assert (= (or b!5270547 b!5270546) bm!374489))

(declare-fun m!6309810 () Bool)

(assert (=> bm!374488 m!6309810))

(declare-fun m!6309812 () Bool)

(assert (=> bm!374489 m!6309812))

(assert (=> d!1695759 d!1696105))

(declare-fun b!5270551 () Bool)

(declare-fun res!2235957 () Bool)

(declare-fun e!3277894 () Bool)

(assert (=> b!5270551 (=> (not res!2235957) (not e!3277894))))

(declare-fun lt!2156643 () List!60970)

(assert (=> b!5270551 (= res!2235957 (= (size!39746 lt!2156643) (+ (size!39746 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846))) (size!39746 (t!374163 s!2326)))))))

(declare-fun b!5270549 () Bool)

(declare-fun e!3277895 () List!60970)

(assert (=> b!5270549 (= e!3277895 (t!374163 s!2326))))

(declare-fun d!1696107 () Bool)

(assert (=> d!1696107 e!3277894))

(declare-fun res!2235956 () Bool)

(assert (=> d!1696107 (=> (not res!2235956) (not e!3277894))))

(assert (=> d!1696107 (= res!2235956 (= (content!10822 lt!2156643) (set.union (content!10822 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846))) (content!10822 (t!374163 s!2326)))))))

(assert (=> d!1696107 (= lt!2156643 e!3277895)))

(declare-fun c!912897 () Bool)

(assert (=> d!1696107 (= c!912897 (is-Nil!60846 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846))))))

(assert (=> d!1696107 (= (++!13269 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (t!374163 s!2326)) lt!2156643)))

(declare-fun b!5270550 () Bool)

(assert (=> b!5270550 (= e!3277895 (Cons!60846 (h!67294 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846))) (++!13269 (t!374163 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846))) (t!374163 s!2326))))))

(declare-fun b!5270552 () Bool)

(assert (=> b!5270552 (= e!3277894 (or (not (= (t!374163 s!2326) Nil!60846)) (= lt!2156643 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)))))))

(assert (= (and d!1696107 c!912897) b!5270549))

(assert (= (and d!1696107 (not c!912897)) b!5270550))

(assert (= (and d!1696107 res!2235956) b!5270551))

(assert (= (and b!5270551 res!2235957) b!5270552))

(declare-fun m!6309814 () Bool)

(assert (=> b!5270551 m!6309814))

(assert (=> b!5270551 m!6308930))

(declare-fun m!6309816 () Bool)

(assert (=> b!5270551 m!6309816))

(declare-fun m!6309818 () Bool)

(assert (=> b!5270551 m!6309818))

(declare-fun m!6309820 () Bool)

(assert (=> d!1696107 m!6309820))

(assert (=> d!1696107 m!6308930))

(declare-fun m!6309822 () Bool)

(assert (=> d!1696107 m!6309822))

(declare-fun m!6309824 () Bool)

(assert (=> d!1696107 m!6309824))

(declare-fun m!6309826 () Bool)

(assert (=> b!5270550 m!6309826))

(assert (=> b!5269403 d!1696107))

(declare-fun b!5270555 () Bool)

(declare-fun res!2235959 () Bool)

(declare-fun e!3277896 () Bool)

(assert (=> b!5270555 (=> (not res!2235959) (not e!3277896))))

(declare-fun lt!2156644 () List!60970)

(assert (=> b!5270555 (= res!2235959 (= (size!39746 lt!2156644) (+ (size!39746 Nil!60846) (size!39746 (Cons!60846 (h!67294 s!2326) Nil!60846)))))))

(declare-fun b!5270553 () Bool)

(declare-fun e!3277897 () List!60970)

(assert (=> b!5270553 (= e!3277897 (Cons!60846 (h!67294 s!2326) Nil!60846))))

(declare-fun d!1696109 () Bool)

(assert (=> d!1696109 e!3277896))

(declare-fun res!2235958 () Bool)

(assert (=> d!1696109 (=> (not res!2235958) (not e!3277896))))

(assert (=> d!1696109 (= res!2235958 (= (content!10822 lt!2156644) (set.union (content!10822 Nil!60846) (content!10822 (Cons!60846 (h!67294 s!2326) Nil!60846)))))))

(assert (=> d!1696109 (= lt!2156644 e!3277897)))

(declare-fun c!912898 () Bool)

(assert (=> d!1696109 (= c!912898 (is-Nil!60846 Nil!60846))))

(assert (=> d!1696109 (= (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) lt!2156644)))

(declare-fun b!5270554 () Bool)

(assert (=> b!5270554 (= e!3277897 (Cons!60846 (h!67294 Nil!60846) (++!13269 (t!374163 Nil!60846) (Cons!60846 (h!67294 s!2326) Nil!60846))))))

(declare-fun b!5270556 () Bool)

(assert (=> b!5270556 (= e!3277896 (or (not (= (Cons!60846 (h!67294 s!2326) Nil!60846) Nil!60846)) (= lt!2156644 Nil!60846)))))

(assert (= (and d!1696109 c!912898) b!5270553))

(assert (= (and d!1696109 (not c!912898)) b!5270554))

(assert (= (and d!1696109 res!2235958) b!5270555))

(assert (= (and b!5270555 res!2235959) b!5270556))

(declare-fun m!6309828 () Bool)

(assert (=> b!5270555 m!6309828))

(declare-fun m!6309830 () Bool)

(assert (=> b!5270555 m!6309830))

(declare-fun m!6309832 () Bool)

(assert (=> b!5270555 m!6309832))

(declare-fun m!6309834 () Bool)

(assert (=> d!1696109 m!6309834))

(declare-fun m!6309836 () Bool)

(assert (=> d!1696109 m!6309836))

(declare-fun m!6309838 () Bool)

(assert (=> d!1696109 m!6309838))

(declare-fun m!6309840 () Bool)

(assert (=> b!5270554 m!6309840))

(assert (=> b!5269403 d!1696109))

(declare-fun d!1696111 () Bool)

(assert (=> d!1696111 (= (++!13269 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (t!374163 s!2326)) s!2326)))

(declare-fun lt!2156647 () Unit!153078)

(declare-fun choose!39327 (List!60970 C!30050 List!60970 List!60970) Unit!153078)

(assert (=> d!1696111 (= lt!2156647 (choose!39327 Nil!60846 (h!67294 s!2326) (t!374163 s!2326) s!2326))))

(assert (=> d!1696111 (= (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) (t!374163 s!2326))) s!2326)))

(assert (=> d!1696111 (= (lemmaMoveElementToOtherListKeepsConcatEq!1684 Nil!60846 (h!67294 s!2326) (t!374163 s!2326) s!2326) lt!2156647)))

(declare-fun bs!1221231 () Bool)

(assert (= bs!1221231 d!1696111))

(assert (=> bs!1221231 m!6308930))

(assert (=> bs!1221231 m!6308930))

(assert (=> bs!1221231 m!6308932))

(declare-fun m!6309842 () Bool)

(assert (=> bs!1221231 m!6309842))

(declare-fun m!6309844 () Bool)

(assert (=> bs!1221231 m!6309844))

(assert (=> b!5269403 d!1696111))

(declare-fun b!5270557 () Bool)

(declare-fun res!2235964 () Bool)

(declare-fun e!3277898 () Bool)

(assert (=> b!5270557 (=> (not res!2235964) (not e!3277898))))

(declare-fun lt!2156649 () Option!15001)

(assert (=> b!5270557 (= res!2235964 (matchR!7075 (regTwo!30292 r!7292) (_2!35392 (get!20920 lt!2156649))))))

(declare-fun b!5270558 () Bool)

(declare-fun e!3277900 () Option!15001)

(assert (=> b!5270558 (= e!3277900 (Some!15000 (tuple2!64179 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (t!374163 s!2326))))))

(declare-fun b!5270559 () Bool)

(declare-fun res!2235962 () Bool)

(assert (=> b!5270559 (=> (not res!2235962) (not e!3277898))))

(assert (=> b!5270559 (= res!2235962 (matchR!7075 (regOne!30292 r!7292) (_1!35392 (get!20920 lt!2156649))))))

(declare-fun b!5270560 () Bool)

(declare-fun lt!2156648 () Unit!153078)

(declare-fun lt!2156650 () Unit!153078)

(assert (=> b!5270560 (= lt!2156648 lt!2156650)))

(assert (=> b!5270560 (= (++!13269 (++!13269 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (Cons!60846 (h!67294 (t!374163 s!2326)) Nil!60846)) (t!374163 (t!374163 s!2326))) s!2326)))

(assert (=> b!5270560 (= lt!2156650 (lemmaMoveElementToOtherListKeepsConcatEq!1684 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (h!67294 (t!374163 s!2326)) (t!374163 (t!374163 s!2326)) s!2326))))

(declare-fun e!3277902 () Option!15001)

(assert (=> b!5270560 (= e!3277902 (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) (++!13269 (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (Cons!60846 (h!67294 (t!374163 s!2326)) Nil!60846)) (t!374163 (t!374163 s!2326)) s!2326))))

(declare-fun b!5270561 () Bool)

(declare-fun e!3277901 () Bool)

(assert (=> b!5270561 (= e!3277901 (matchR!7075 (regTwo!30292 r!7292) (t!374163 s!2326)))))

(declare-fun b!5270562 () Bool)

(assert (=> b!5270562 (= e!3277898 (= (++!13269 (_1!35392 (get!20920 lt!2156649)) (_2!35392 (get!20920 lt!2156649))) s!2326))))

(declare-fun b!5270563 () Bool)

(declare-fun e!3277899 () Bool)

(assert (=> b!5270563 (= e!3277899 (not (isDefined!11704 lt!2156649)))))

(declare-fun d!1696113 () Bool)

(assert (=> d!1696113 e!3277899))

(declare-fun res!2235960 () Bool)

(assert (=> d!1696113 (=> res!2235960 e!3277899)))

(assert (=> d!1696113 (= res!2235960 e!3277898)))

(declare-fun res!2235961 () Bool)

(assert (=> d!1696113 (=> (not res!2235961) (not e!3277898))))

(assert (=> d!1696113 (= res!2235961 (isDefined!11704 lt!2156649))))

(assert (=> d!1696113 (= lt!2156649 e!3277900)))

(declare-fun c!912900 () Bool)

(assert (=> d!1696113 (= c!912900 e!3277901)))

(declare-fun res!2235963 () Bool)

(assert (=> d!1696113 (=> (not res!2235963) (not e!3277901))))

(assert (=> d!1696113 (= res!2235963 (matchR!7075 (regOne!30292 r!7292) (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846))))))

(assert (=> d!1696113 (validRegex!6626 (regOne!30292 r!7292))))

(assert (=> d!1696113 (= (findConcatSeparation!1415 (regOne!30292 r!7292) (regTwo!30292 r!7292) (++!13269 Nil!60846 (Cons!60846 (h!67294 s!2326) Nil!60846)) (t!374163 s!2326) s!2326) lt!2156649)))

(declare-fun b!5270564 () Bool)

(assert (=> b!5270564 (= e!3277900 e!3277902)))

(declare-fun c!912899 () Bool)

(assert (=> b!5270564 (= c!912899 (is-Nil!60846 (t!374163 s!2326)))))

(declare-fun b!5270565 () Bool)

(assert (=> b!5270565 (= e!3277902 None!15000)))

(assert (= (and d!1696113 res!2235963) b!5270561))

(assert (= (and d!1696113 c!912900) b!5270558))

(assert (= (and d!1696113 (not c!912900)) b!5270564))

(assert (= (and b!5270564 c!912899) b!5270565))

(assert (= (and b!5270564 (not c!912899)) b!5270560))

(assert (= (and d!1696113 res!2235961) b!5270559))

(assert (= (and b!5270559 res!2235962) b!5270557))

(assert (= (and b!5270557 res!2235964) b!5270562))

(assert (= (and d!1696113 (not res!2235960)) b!5270563))

(declare-fun m!6309846 () Bool)

(assert (=> d!1696113 m!6309846))

(assert (=> d!1696113 m!6308930))

(declare-fun m!6309848 () Bool)

(assert (=> d!1696113 m!6309848))

(assert (=> d!1696113 m!6308924))

(declare-fun m!6309850 () Bool)

(assert (=> b!5270559 m!6309850))

(declare-fun m!6309852 () Bool)

(assert (=> b!5270559 m!6309852))

(assert (=> b!5270560 m!6308930))

(declare-fun m!6309854 () Bool)

(assert (=> b!5270560 m!6309854))

(assert (=> b!5270560 m!6309854))

(declare-fun m!6309856 () Bool)

(assert (=> b!5270560 m!6309856))

(assert (=> b!5270560 m!6308930))

(declare-fun m!6309858 () Bool)

(assert (=> b!5270560 m!6309858))

(assert (=> b!5270560 m!6309854))

(declare-fun m!6309860 () Bool)

(assert (=> b!5270560 m!6309860))

(assert (=> b!5270563 m!6309846))

(declare-fun m!6309862 () Bool)

(assert (=> b!5270561 m!6309862))

(assert (=> b!5270557 m!6309850))

(declare-fun m!6309864 () Bool)

(assert (=> b!5270557 m!6309864))

(assert (=> b!5270562 m!6309850))

(declare-fun m!6309866 () Bool)

(assert (=> b!5270562 m!6309866))

(assert (=> b!5269403 d!1696113))

(declare-fun d!1696115 () Bool)

(assert (=> d!1696115 (= (isUnion!264 lt!2156580) (is-Union!14890 lt!2156580))))

(assert (=> b!5269621 d!1696115))

(declare-fun d!1696117 () Bool)

(declare-fun c!912901 () Bool)

(assert (=> d!1696117 (= c!912901 (isEmpty!32797 (tail!10394 (t!374163 s!2326))))))

(declare-fun e!3277903 () Bool)

(assert (=> d!1696117 (= (matchZipper!1134 (derivationStepZipper!1133 lt!2156440 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))) e!3277903)))

(declare-fun b!5270566 () Bool)

(assert (=> b!5270566 (= e!3277903 (nullableZipper!1289 (derivationStepZipper!1133 lt!2156440 (head!11297 (t!374163 s!2326)))))))

(declare-fun b!5270567 () Bool)

(assert (=> b!5270567 (= e!3277903 (matchZipper!1134 (derivationStepZipper!1133 (derivationStepZipper!1133 lt!2156440 (head!11297 (t!374163 s!2326))) (head!11297 (tail!10394 (t!374163 s!2326)))) (tail!10394 (tail!10394 (t!374163 s!2326)))))))

(assert (= (and d!1696117 c!912901) b!5270566))

(assert (= (and d!1696117 (not c!912901)) b!5270567))

(assert (=> d!1696117 m!6308876))

(assert (=> d!1696117 m!6309452))

(assert (=> b!5270566 m!6308912))

(declare-fun m!6309868 () Bool)

(assert (=> b!5270566 m!6309868))

(assert (=> b!5270567 m!6308876))

(assert (=> b!5270567 m!6309456))

(assert (=> b!5270567 m!6308912))

(assert (=> b!5270567 m!6309456))

(declare-fun m!6309870 () Bool)

(assert (=> b!5270567 m!6309870))

(assert (=> b!5270567 m!6308876))

(assert (=> b!5270567 m!6309460))

(assert (=> b!5270567 m!6309870))

(assert (=> b!5270567 m!6309460))

(declare-fun m!6309872 () Bool)

(assert (=> b!5270567 m!6309872))

(assert (=> b!5269380 d!1696117))

(declare-fun bs!1221232 () Bool)

(declare-fun d!1696119 () Bool)

(assert (= bs!1221232 (and d!1696119 d!1696033)))

(declare-fun lambda!265908 () Int)

(assert (=> bs!1221232 (= lambda!265908 lambda!265899)))

(declare-fun bs!1221233 () Bool)

(assert (= bs!1221233 (and d!1696119 d!1696075)))

(assert (=> bs!1221233 (= lambda!265908 lambda!265904)))

(declare-fun bs!1221234 () Bool)

(assert (= bs!1221234 (and d!1696119 d!1695939)))

(assert (=> bs!1221234 (= lambda!265908 lambda!265881)))

(declare-fun bs!1221235 () Bool)

(assert (= bs!1221235 (and d!1696119 b!5269181)))

(assert (=> bs!1221235 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265908 lambda!265800))))

(declare-fun bs!1221236 () Bool)

(assert (= bs!1221236 (and d!1696119 d!1695743)))

(assert (=> bs!1221236 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265908 lambda!265834))))

(declare-fun bs!1221237 () Bool)

(assert (= bs!1221237 (and d!1696119 d!1696007)))

(assert (=> bs!1221237 (= lambda!265908 lambda!265897)))

(assert (=> d!1696119 true))

(assert (=> d!1696119 (= (derivationStepZipper!1133 lt!2156440 (head!11297 (t!374163 s!2326))) (flatMap!617 lt!2156440 lambda!265908))))

(declare-fun bs!1221238 () Bool)

(assert (= bs!1221238 d!1696119))

(declare-fun m!6309874 () Bool)

(assert (=> bs!1221238 m!6309874))

(assert (=> b!5269380 d!1696119))

(assert (=> b!5269380 d!1695941))

(assert (=> b!5269380 d!1695943))

(assert (=> bm!374307 d!1696029))

(assert (=> b!5269498 d!1695759))

(declare-fun d!1696121 () Bool)

(assert (=> d!1696121 (= (nullable!5059 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))) (nullableFct!1441 (h!67293 (exprs!4774 (Context!8549 (Cons!60845 (h!67293 (exprs!4774 (h!67295 zl!343))) (t!374162 (exprs!4774 (h!67295 zl!343)))))))))))

(declare-fun bs!1221239 () Bool)

(assert (= bs!1221239 d!1696121))

(declare-fun m!6309876 () Bool)

(assert (=> bs!1221239 m!6309876))

(assert (=> b!5269493 d!1696121))

(assert (=> d!1695777 d!1695775))

(assert (=> d!1695777 d!1695773))

(declare-fun d!1696123 () Bool)

(assert (=> d!1696123 (= (matchR!7075 r!7292 s!2326) (matchRSpec!1993 r!7292 s!2326))))

(assert (=> d!1696123 true))

(declare-fun _$88!3559 () Unit!153078)

(assert (=> d!1696123 (= (choose!39318 r!7292 s!2326) _$88!3559)))

(declare-fun bs!1221240 () Bool)

(assert (= bs!1221240 d!1696123))

(assert (=> bs!1221240 m!6308736))

(assert (=> bs!1221240 m!6308734))

(assert (=> d!1695777 d!1696123))

(assert (=> d!1695777 d!1695699))

(assert (=> d!1695741 d!1695737))

(declare-fun d!1696125 () Bool)

(assert (=> d!1696125 (= (flatMap!617 lt!2156459 lambda!265800) (dynLambda!24042 lambda!265800 lt!2156457))))

(assert (=> d!1696125 true))

(declare-fun _$13!1815 () Unit!153078)

(assert (=> d!1696125 (= (choose!39316 lt!2156459 lt!2156457 lambda!265800) _$13!1815)))

(declare-fun b_lambda!203283 () Bool)

(assert (=> (not b_lambda!203283) (not d!1696125)))

(declare-fun bs!1221241 () Bool)

(assert (= bs!1221241 d!1696125))

(assert (=> bs!1221241 m!6308678))

(assert (=> bs!1221241 m!6308974))

(assert (=> d!1695741 d!1696125))

(declare-fun bm!374490 () Bool)

(declare-fun call!374496 () (Set Context!8548))

(declare-fun call!374497 () (Set Context!8548))

(assert (=> bm!374490 (= call!374496 call!374497)))

(declare-fun b!5270568 () Bool)

(declare-fun e!3277907 () (Set Context!8548))

(declare-fun call!374500 () (Set Context!8548))

(assert (=> b!5270568 (= e!3277907 (set.union call!374500 call!374497))))

(declare-fun call!374499 () List!60969)

(declare-fun c!912905 () Bool)

(declare-fun bm!374491 () Bool)

(declare-fun c!912903 () Bool)

(assert (=> bm!374491 (= call!374499 ($colon$colon!1339 (exprs!4774 (ite c!912593 lt!2156445 (Context!8549 call!374297))) (ite (or c!912905 c!912903) (regTwo!30292 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))) (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))))))))

(declare-fun bm!374492 () Bool)

(declare-fun call!374498 () List!60969)

(assert (=> bm!374492 (= call!374498 call!374499)))

(declare-fun b!5270569 () Bool)

(declare-fun e!3277906 () Bool)

(assert (=> b!5270569 (= e!3277906 (nullable!5059 (regOne!30292 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))))))))

(declare-fun bm!374493 () Bool)

(declare-fun c!912902 () Bool)

(assert (=> bm!374493 (= call!374500 (derivationStepZipperDown!338 (ite c!912902 (regOne!30293 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))) (regOne!30292 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))))) (ite c!912902 (ite c!912593 lt!2156445 (Context!8549 call!374297)) (Context!8549 call!374499)) (h!67294 s!2326)))))

(declare-fun c!912906 () Bool)

(declare-fun d!1696127 () Bool)

(assert (=> d!1696127 (= c!912906 (and (is-ElementMatch!14890 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))) (= (c!912522 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))) (h!67294 s!2326))))))

(declare-fun e!3277904 () (Set Context!8548))

(assert (=> d!1696127 (= (derivationStepZipperDown!338 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))) (ite c!912593 lt!2156445 (Context!8549 call!374297)) (h!67294 s!2326)) e!3277904)))

(declare-fun b!5270570 () Bool)

(declare-fun c!912904 () Bool)

(assert (=> b!5270570 (= c!912904 (is-Star!14890 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))))))

(declare-fun e!3277908 () (Set Context!8548))

(declare-fun e!3277905 () (Set Context!8548))

(assert (=> b!5270570 (= e!3277908 e!3277905)))

(declare-fun b!5270571 () Bool)

(assert (=> b!5270571 (= e!3277905 call!374496)))

(declare-fun b!5270572 () Bool)

(declare-fun e!3277909 () (Set Context!8548))

(assert (=> b!5270572 (= e!3277904 e!3277909)))

(assert (=> b!5270572 (= c!912902 (is-Union!14890 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))))))

(declare-fun b!5270573 () Bool)

(declare-fun call!374495 () (Set Context!8548))

(assert (=> b!5270573 (= e!3277909 (set.union call!374500 call!374495))))

(declare-fun b!5270574 () Bool)

(assert (=> b!5270574 (= c!912905 e!3277906)))

(declare-fun res!2235965 () Bool)

(assert (=> b!5270574 (=> (not res!2235965) (not e!3277906))))

(assert (=> b!5270574 (= res!2235965 (is-Concat!23735 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))))))

(assert (=> b!5270574 (= e!3277909 e!3277907)))

(declare-fun b!5270575 () Bool)

(assert (=> b!5270575 (= e!3277905 (as set.empty (Set Context!8548)))))

(declare-fun b!5270576 () Bool)

(assert (=> b!5270576 (= e!3277907 e!3277908)))

(assert (=> b!5270576 (= c!912903 (is-Concat!23735 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))))))

(declare-fun b!5270577 () Bool)

(assert (=> b!5270577 (= e!3277904 (set.insert (ite c!912593 lt!2156445 (Context!8549 call!374297)) (as set.empty (Set Context!8548))))))

(declare-fun bm!374494 () Bool)

(assert (=> bm!374494 (= call!374497 call!374495)))

(declare-fun b!5270578 () Bool)

(assert (=> b!5270578 (= e!3277908 call!374496)))

(declare-fun bm!374495 () Bool)

(assert (=> bm!374495 (= call!374495 (derivationStepZipperDown!338 (ite c!912902 (regTwo!30293 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))) (ite c!912905 (regTwo!30292 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))) (ite c!912903 (regOne!30292 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292))))) (reg!15219 (ite c!912593 (regOne!30293 (regOne!30292 (regOne!30292 r!7292))) (regOne!30292 (regOne!30292 (regOne!30292 r!7292)))))))) (ite (or c!912902 c!912905) (ite c!912593 lt!2156445 (Context!8549 call!374297)) (Context!8549 call!374498)) (h!67294 s!2326)))))

(assert (= (and d!1696127 c!912906) b!5270577))

(assert (= (and d!1696127 (not c!912906)) b!5270572))

(assert (= (and b!5270572 c!912902) b!5270573))

(assert (= (and b!5270572 (not c!912902)) b!5270574))

(assert (= (and b!5270574 res!2235965) b!5270569))

(assert (= (and b!5270574 c!912905) b!5270568))

(assert (= (and b!5270574 (not c!912905)) b!5270576))

(assert (= (and b!5270576 c!912903) b!5270578))

(assert (= (and b!5270576 (not c!912903)) b!5270570))

(assert (= (and b!5270570 c!912904) b!5270571))

(assert (= (and b!5270570 (not c!912904)) b!5270575))

(assert (= (or b!5270578 b!5270571) bm!374492))

(assert (= (or b!5270578 b!5270571) bm!374490))

(assert (= (or b!5270568 bm!374492) bm!374491))

(assert (= (or b!5270568 bm!374490) bm!374494))

(assert (= (or b!5270573 bm!374494) bm!374495))

(assert (= (or b!5270573 b!5270568) bm!374493))

(declare-fun m!6309878 () Bool)

(assert (=> bm!374493 m!6309878))

(declare-fun m!6309880 () Bool)

(assert (=> bm!374495 m!6309880))

(declare-fun m!6309882 () Bool)

(assert (=> b!5270577 m!6309882))

(declare-fun m!6309884 () Bool)

(assert (=> bm!374491 m!6309884))

(declare-fun m!6309886 () Bool)

(assert (=> b!5270569 m!6309886))

(assert (=> bm!374291 d!1696127))

(declare-fun d!1696129 () Bool)

(assert (=> d!1696129 (= ($colon$colon!1339 (exprs!4774 lt!2156452) (ite (or c!912605 c!912603) (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (h!67293 (exprs!4774 (h!67295 zl!343))))) (Cons!60845 (ite (or c!912605 c!912603) (regTwo!30292 (h!67293 (exprs!4774 (h!67295 zl!343)))) (h!67293 (exprs!4774 (h!67295 zl!343)))) (exprs!4774 lt!2156452)))))

(assert (=> bm!374297 d!1696129))

(declare-fun d!1696131 () Bool)

(assert (=> d!1696131 (= (flatMap!617 lt!2156459 lambda!265834) (choose!39315 lt!2156459 lambda!265834))))

(declare-fun bs!1221242 () Bool)

(assert (= bs!1221242 d!1696131))

(declare-fun m!6309888 () Bool)

(assert (=> bs!1221242 m!6309888))

(assert (=> d!1695743 d!1696131))

(declare-fun d!1696133 () Bool)

(assert (=> d!1696133 (= (nullable!5059 (reg!15219 (regTwo!30292 (regOne!30292 r!7292)))) (nullableFct!1441 (reg!15219 (regTwo!30292 (regOne!30292 r!7292)))))))

(declare-fun bs!1221243 () Bool)

(assert (= bs!1221243 d!1696133))

(declare-fun m!6309890 () Bool)

(assert (=> bs!1221243 m!6309890))

(assert (=> b!5269320 d!1696133))

(assert (=> d!1695703 d!1695707))

(assert (=> d!1695703 d!1695705))

(declare-fun e!3277910 () Bool)

(declare-fun d!1696135 () Bool)

(assert (=> d!1696135 (= (matchZipper!1134 (set.union lt!2156443 lt!2156453) (t!374163 s!2326)) e!3277910)))

(declare-fun res!2235966 () Bool)

(assert (=> d!1696135 (=> res!2235966 e!3277910)))

(assert (=> d!1696135 (= res!2235966 (matchZipper!1134 lt!2156443 (t!374163 s!2326)))))

(assert (=> d!1696135 true))

(declare-fun _$48!926 () Unit!153078)

(assert (=> d!1696135 (= (choose!39311 lt!2156443 lt!2156453 (t!374163 s!2326)) _$48!926)))

(declare-fun b!5270579 () Bool)

(assert (=> b!5270579 (= e!3277910 (matchZipper!1134 lt!2156453 (t!374163 s!2326)))))

(assert (= (and d!1696135 (not res!2235966)) b!5270579))

(assert (=> d!1696135 m!6308688))

(assert (=> d!1696135 m!6308686))

(assert (=> b!5270579 m!6308658))

(assert (=> d!1695703 d!1696135))

(assert (=> d!1695705 d!1695891))

(declare-fun d!1696137 () Bool)

(declare-fun c!912907 () Bool)

(assert (=> d!1696137 (= c!912907 (isEmpty!32797 (tail!10394 (t!374163 s!2326))))))

(declare-fun e!3277911 () Bool)

(assert (=> d!1696137 (= (matchZipper!1134 (derivationStepZipper!1133 lt!2156443 (head!11297 (t!374163 s!2326))) (tail!10394 (t!374163 s!2326))) e!3277911)))

(declare-fun b!5270580 () Bool)

(assert (=> b!5270580 (= e!3277911 (nullableZipper!1289 (derivationStepZipper!1133 lt!2156443 (head!11297 (t!374163 s!2326)))))))

(declare-fun b!5270581 () Bool)

(assert (=> b!5270581 (= e!3277911 (matchZipper!1134 (derivationStepZipper!1133 (derivationStepZipper!1133 lt!2156443 (head!11297 (t!374163 s!2326))) (head!11297 (tail!10394 (t!374163 s!2326)))) (tail!10394 (tail!10394 (t!374163 s!2326)))))))

(assert (= (and d!1696137 c!912907) b!5270580))

(assert (= (and d!1696137 (not c!912907)) b!5270581))

(assert (=> d!1696137 m!6308876))

(assert (=> d!1696137 m!6309452))

(assert (=> b!5270580 m!6308884))

(declare-fun m!6309892 () Bool)

(assert (=> b!5270580 m!6309892))

(assert (=> b!5270581 m!6308876))

(assert (=> b!5270581 m!6309456))

(assert (=> b!5270581 m!6308884))

(assert (=> b!5270581 m!6309456))

(declare-fun m!6309894 () Bool)

(assert (=> b!5270581 m!6309894))

(assert (=> b!5270581 m!6308876))

(assert (=> b!5270581 m!6309460))

(assert (=> b!5270581 m!6309894))

(assert (=> b!5270581 m!6309460))

(declare-fun m!6309896 () Bool)

(assert (=> b!5270581 m!6309896))

(assert (=> b!5269372 d!1696137))

(declare-fun bs!1221244 () Bool)

(declare-fun d!1696139 () Bool)

(assert (= bs!1221244 (and d!1696139 d!1696033)))

(declare-fun lambda!265909 () Int)

(assert (=> bs!1221244 (= lambda!265909 lambda!265899)))

(declare-fun bs!1221245 () Bool)

(assert (= bs!1221245 (and d!1696139 d!1696075)))

(assert (=> bs!1221245 (= lambda!265909 lambda!265904)))

(declare-fun bs!1221246 () Bool)

(assert (= bs!1221246 (and d!1696139 d!1696119)))

(assert (=> bs!1221246 (= lambda!265909 lambda!265908)))

(declare-fun bs!1221247 () Bool)

(assert (= bs!1221247 (and d!1696139 d!1695939)))

(assert (=> bs!1221247 (= lambda!265909 lambda!265881)))

(declare-fun bs!1221248 () Bool)

(assert (= bs!1221248 (and d!1696139 b!5269181)))

(assert (=> bs!1221248 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265909 lambda!265800))))

(declare-fun bs!1221249 () Bool)

(assert (= bs!1221249 (and d!1696139 d!1695743)))

(assert (=> bs!1221249 (= (= (head!11297 (t!374163 s!2326)) (h!67294 s!2326)) (= lambda!265909 lambda!265834))))

(declare-fun bs!1221250 () Bool)

(assert (= bs!1221250 (and d!1696139 d!1696007)))

(assert (=> bs!1221250 (= lambda!265909 lambda!265897)))

(assert (=> d!1696139 true))

(assert (=> d!1696139 (= (derivationStepZipper!1133 lt!2156443 (head!11297 (t!374163 s!2326))) (flatMap!617 lt!2156443 lambda!265909))))

(declare-fun bs!1221251 () Bool)

(assert (= bs!1221251 d!1696139))

(declare-fun m!6309898 () Bool)

(assert (=> bs!1221251 m!6309898))

(assert (=> b!5269372 d!1696139))

(assert (=> b!5269372 d!1695941))

(assert (=> b!5269372 d!1695943))

(assert (=> b!5269381 d!1695715))

(declare-fun b!5270585 () Bool)

(declare-fun e!3277912 () Bool)

(declare-fun tp!1472971 () Bool)

(declare-fun tp!1472972 () Bool)

(assert (=> b!5270585 (= e!3277912 (and tp!1472971 tp!1472972))))

(declare-fun b!5270582 () Bool)

(assert (=> b!5270582 (= e!3277912 tp_is_empty!39033)))

(assert (=> b!5269654 (= tp!1472854 e!3277912)))

(declare-fun b!5270583 () Bool)

(declare-fun tp!1472974 () Bool)

(declare-fun tp!1472973 () Bool)

(assert (=> b!5270583 (= e!3277912 (and tp!1472974 tp!1472973))))

(declare-fun b!5270584 () Bool)

(declare-fun tp!1472970 () Bool)

(assert (=> b!5270584 (= e!3277912 tp!1472970)))

(assert (= (and b!5269654 (is-ElementMatch!14890 (regOne!30293 (regTwo!30293 r!7292)))) b!5270582))

(assert (= (and b!5269654 (is-Concat!23735 (regOne!30293 (regTwo!30293 r!7292)))) b!5270583))

(assert (= (and b!5269654 (is-Star!14890 (regOne!30293 (regTwo!30293 r!7292)))) b!5270584))

(assert (= (and b!5269654 (is-Union!14890 (regOne!30293 (regTwo!30293 r!7292)))) b!5270585))

(declare-fun b!5270589 () Bool)

(declare-fun e!3277913 () Bool)

(declare-fun tp!1472976 () Bool)

(declare-fun tp!1472977 () Bool)

(assert (=> b!5270589 (= e!3277913 (and tp!1472976 tp!1472977))))

(declare-fun b!5270586 () Bool)

(assert (=> b!5270586 (= e!3277913 tp_is_empty!39033)))

(assert (=> b!5269654 (= tp!1472855 e!3277913)))

(declare-fun b!5270587 () Bool)

(declare-fun tp!1472979 () Bool)

(declare-fun tp!1472978 () Bool)

(assert (=> b!5270587 (= e!3277913 (and tp!1472979 tp!1472978))))

(declare-fun b!5270588 () Bool)

(declare-fun tp!1472975 () Bool)

(assert (=> b!5270588 (= e!3277913 tp!1472975)))

(assert (= (and b!5269654 (is-ElementMatch!14890 (regTwo!30293 (regTwo!30293 r!7292)))) b!5270586))

(assert (= (and b!5269654 (is-Concat!23735 (regTwo!30293 (regTwo!30293 r!7292)))) b!5270587))

(assert (= (and b!5269654 (is-Star!14890 (regTwo!30293 (regTwo!30293 r!7292)))) b!5270588))

(assert (= (and b!5269654 (is-Union!14890 (regTwo!30293 (regTwo!30293 r!7292)))) b!5270589))

(declare-fun b!5270593 () Bool)

(declare-fun e!3277914 () Bool)

(declare-fun tp!1472981 () Bool)

(declare-fun tp!1472982 () Bool)

(assert (=> b!5270593 (= e!3277914 (and tp!1472981 tp!1472982))))

(declare-fun b!5270590 () Bool)

(assert (=> b!5270590 (= e!3277914 tp_is_empty!39033)))

(assert (=> b!5269662 (= tp!1472864 e!3277914)))

(declare-fun b!5270591 () Bool)

(declare-fun tp!1472984 () Bool)

(declare-fun tp!1472983 () Bool)

(assert (=> b!5270591 (= e!3277914 (and tp!1472984 tp!1472983))))

(declare-fun b!5270592 () Bool)

(declare-fun tp!1472980 () Bool)

(assert (=> b!5270592 (= e!3277914 tp!1472980)))

(assert (= (and b!5269662 (is-ElementMatch!14890 (regOne!30293 (regTwo!30292 r!7292)))) b!5270590))

(assert (= (and b!5269662 (is-Concat!23735 (regOne!30293 (regTwo!30292 r!7292)))) b!5270591))

(assert (= (and b!5269662 (is-Star!14890 (regOne!30293 (regTwo!30292 r!7292)))) b!5270592))

(assert (= (and b!5269662 (is-Union!14890 (regOne!30293 (regTwo!30292 r!7292)))) b!5270593))

(declare-fun b!5270597 () Bool)

(declare-fun e!3277915 () Bool)

(declare-fun tp!1472986 () Bool)

(declare-fun tp!1472987 () Bool)

(assert (=> b!5270597 (= e!3277915 (and tp!1472986 tp!1472987))))

(declare-fun b!5270594 () Bool)

(assert (=> b!5270594 (= e!3277915 tp_is_empty!39033)))

(assert (=> b!5269662 (= tp!1472865 e!3277915)))

(declare-fun b!5270595 () Bool)

(declare-fun tp!1472989 () Bool)

(declare-fun tp!1472988 () Bool)

(assert (=> b!5270595 (= e!3277915 (and tp!1472989 tp!1472988))))

(declare-fun b!5270596 () Bool)

(declare-fun tp!1472985 () Bool)

(assert (=> b!5270596 (= e!3277915 tp!1472985)))

(assert (= (and b!5269662 (is-ElementMatch!14890 (regTwo!30293 (regTwo!30292 r!7292)))) b!5270594))

(assert (= (and b!5269662 (is-Concat!23735 (regTwo!30293 (regTwo!30292 r!7292)))) b!5270595))

(assert (= (and b!5269662 (is-Star!14890 (regTwo!30293 (regTwo!30292 r!7292)))) b!5270596))

(assert (= (and b!5269662 (is-Union!14890 (regTwo!30293 (regTwo!30292 r!7292)))) b!5270597))

(declare-fun b!5270601 () Bool)

(declare-fun e!3277916 () Bool)

(declare-fun tp!1472991 () Bool)

(declare-fun tp!1472992 () Bool)

(assert (=> b!5270601 (= e!3277916 (and tp!1472991 tp!1472992))))

(declare-fun b!5270598 () Bool)

(assert (=> b!5270598 (= e!3277916 tp_is_empty!39033)))

(assert (=> b!5269653 (= tp!1472853 e!3277916)))

(declare-fun b!5270599 () Bool)

(declare-fun tp!1472994 () Bool)

(declare-fun tp!1472993 () Bool)

(assert (=> b!5270599 (= e!3277916 (and tp!1472994 tp!1472993))))

(declare-fun b!5270600 () Bool)

(declare-fun tp!1472990 () Bool)

(assert (=> b!5270600 (= e!3277916 tp!1472990)))

(assert (= (and b!5269653 (is-ElementMatch!14890 (reg!15219 (regTwo!30293 r!7292)))) b!5270598))

(assert (= (and b!5269653 (is-Concat!23735 (reg!15219 (regTwo!30293 r!7292)))) b!5270599))

(assert (= (and b!5269653 (is-Star!14890 (reg!15219 (regTwo!30293 r!7292)))) b!5270600))

(assert (= (and b!5269653 (is-Union!14890 (reg!15219 (regTwo!30293 r!7292)))) b!5270601))

(declare-fun b!5270605 () Bool)

(declare-fun e!3277917 () Bool)

(declare-fun tp!1472996 () Bool)

(declare-fun tp!1472997 () Bool)

(assert (=> b!5270605 (= e!3277917 (and tp!1472996 tp!1472997))))

(declare-fun b!5270602 () Bool)

(assert (=> b!5270602 (= e!3277917 tp_is_empty!39033)))

(assert (=> b!5269675 (= tp!1472886 e!3277917)))

(declare-fun b!5270603 () Bool)

(declare-fun tp!1472999 () Bool)

(declare-fun tp!1472998 () Bool)

(assert (=> b!5270603 (= e!3277917 (and tp!1472999 tp!1472998))))

(declare-fun b!5270604 () Bool)

(declare-fun tp!1472995 () Bool)

(assert (=> b!5270604 (= e!3277917 tp!1472995)))

(assert (= (and b!5269675 (is-ElementMatch!14890 (regOne!30292 (reg!15219 r!7292)))) b!5270602))

(assert (= (and b!5269675 (is-Concat!23735 (regOne!30292 (reg!15219 r!7292)))) b!5270603))

(assert (= (and b!5269675 (is-Star!14890 (regOne!30292 (reg!15219 r!7292)))) b!5270604))

(assert (= (and b!5269675 (is-Union!14890 (regOne!30292 (reg!15219 r!7292)))) b!5270605))

(declare-fun b!5270609 () Bool)

(declare-fun e!3277918 () Bool)

(declare-fun tp!1473001 () Bool)

(declare-fun tp!1473002 () Bool)

(assert (=> b!5270609 (= e!3277918 (and tp!1473001 tp!1473002))))

(declare-fun b!5270606 () Bool)

(assert (=> b!5270606 (= e!3277918 tp_is_empty!39033)))

(assert (=> b!5269675 (= tp!1472885 e!3277918)))

(declare-fun b!5270607 () Bool)

(declare-fun tp!1473004 () Bool)

(declare-fun tp!1473003 () Bool)

(assert (=> b!5270607 (= e!3277918 (and tp!1473004 tp!1473003))))

(declare-fun b!5270608 () Bool)

(declare-fun tp!1473000 () Bool)

(assert (=> b!5270608 (= e!3277918 tp!1473000)))

(assert (= (and b!5269675 (is-ElementMatch!14890 (regTwo!30292 (reg!15219 r!7292)))) b!5270606))

(assert (= (and b!5269675 (is-Concat!23735 (regTwo!30292 (reg!15219 r!7292)))) b!5270607))

(assert (= (and b!5269675 (is-Star!14890 (regTwo!30292 (reg!15219 r!7292)))) b!5270608))

(assert (= (and b!5269675 (is-Union!14890 (regTwo!30292 (reg!15219 r!7292)))) b!5270609))

(declare-fun b!5270610 () Bool)

(declare-fun e!3277919 () Bool)

(declare-fun tp!1473005 () Bool)

(assert (=> b!5270610 (= e!3277919 (and tp_is_empty!39033 tp!1473005))))

(assert (=> b!5269690 (= tp!1472895 e!3277919)))

(assert (= (and b!5269690 (is-Cons!60846 (t!374163 (t!374163 s!2326)))) b!5270610))

(declare-fun b!5270614 () Bool)

(declare-fun e!3277920 () Bool)

(declare-fun tp!1473007 () Bool)

(declare-fun tp!1473008 () Bool)

(assert (=> b!5270614 (= e!3277920 (and tp!1473007 tp!1473008))))

(declare-fun b!5270611 () Bool)

(assert (=> b!5270611 (= e!3277920 tp_is_empty!39033)))

(assert (=> b!5269676 (= tp!1472882 e!3277920)))

(declare-fun b!5270612 () Bool)

(declare-fun tp!1473010 () Bool)

(declare-fun tp!1473009 () Bool)

(assert (=> b!5270612 (= e!3277920 (and tp!1473010 tp!1473009))))

(declare-fun b!5270613 () Bool)

(declare-fun tp!1473006 () Bool)

(assert (=> b!5270613 (= e!3277920 tp!1473006)))

(assert (= (and b!5269676 (is-ElementMatch!14890 (reg!15219 (reg!15219 r!7292)))) b!5270611))

(assert (= (and b!5269676 (is-Concat!23735 (reg!15219 (reg!15219 r!7292)))) b!5270612))

(assert (= (and b!5269676 (is-Star!14890 (reg!15219 (reg!15219 r!7292)))) b!5270613))

(assert (= (and b!5269676 (is-Union!14890 (reg!15219 (reg!15219 r!7292)))) b!5270614))

(declare-fun b!5270618 () Bool)

(declare-fun e!3277921 () Bool)

(declare-fun tp!1473012 () Bool)

(declare-fun tp!1473013 () Bool)

(assert (=> b!5270618 (= e!3277921 (and tp!1473012 tp!1473013))))

(declare-fun b!5270615 () Bool)

(assert (=> b!5270615 (= e!3277921 tp_is_empty!39033)))

(assert (=> b!5269673 (= tp!1472880 e!3277921)))

(declare-fun b!5270616 () Bool)

(declare-fun tp!1473015 () Bool)

(declare-fun tp!1473014 () Bool)

(assert (=> b!5270616 (= e!3277921 (and tp!1473015 tp!1473014))))

(declare-fun b!5270617 () Bool)

(declare-fun tp!1473011 () Bool)

(assert (=> b!5270617 (= e!3277921 tp!1473011)))

(assert (= (and b!5269673 (is-ElementMatch!14890 (h!67293 (exprs!4774 setElem!33722)))) b!5270615))

(assert (= (and b!5269673 (is-Concat!23735 (h!67293 (exprs!4774 setElem!33722)))) b!5270616))

(assert (= (and b!5269673 (is-Star!14890 (h!67293 (exprs!4774 setElem!33722)))) b!5270617))

(assert (= (and b!5269673 (is-Union!14890 (h!67293 (exprs!4774 setElem!33722)))) b!5270618))

(declare-fun b!5270619 () Bool)

(declare-fun e!3277922 () Bool)

(declare-fun tp!1473016 () Bool)

(declare-fun tp!1473017 () Bool)

(assert (=> b!5270619 (= e!3277922 (and tp!1473016 tp!1473017))))

(assert (=> b!5269673 (= tp!1472881 e!3277922)))

(assert (= (and b!5269673 (is-Cons!60845 (t!374162 (exprs!4774 setElem!33722)))) b!5270619))

(declare-fun b!5270623 () Bool)

(declare-fun e!3277923 () Bool)

(declare-fun tp!1473019 () Bool)

(declare-fun tp!1473020 () Bool)

(assert (=> b!5270623 (= e!3277923 (and tp!1473019 tp!1473020))))

(declare-fun b!5270620 () Bool)

(assert (=> b!5270620 (= e!3277923 tp_is_empty!39033)))

(assert (=> b!5269667 (= tp!1472872 e!3277923)))

(declare-fun b!5270621 () Bool)

(declare-fun tp!1473022 () Bool)

(declare-fun tp!1473021 () Bool)

(assert (=> b!5270621 (= e!3277923 (and tp!1473022 tp!1473021))))

(declare-fun b!5270622 () Bool)

(declare-fun tp!1473018 () Bool)

(assert (=> b!5270622 (= e!3277923 tp!1473018)))

(assert (= (and b!5269667 (is-ElementMatch!14890 (h!67293 (exprs!4774 (h!67295 zl!343))))) b!5270620))

(assert (= (and b!5269667 (is-Concat!23735 (h!67293 (exprs!4774 (h!67295 zl!343))))) b!5270621))

(assert (= (and b!5269667 (is-Star!14890 (h!67293 (exprs!4774 (h!67295 zl!343))))) b!5270622))

(assert (= (and b!5269667 (is-Union!14890 (h!67293 (exprs!4774 (h!67295 zl!343))))) b!5270623))

(declare-fun b!5270624 () Bool)

(declare-fun e!3277924 () Bool)

(declare-fun tp!1473023 () Bool)

(declare-fun tp!1473024 () Bool)

(assert (=> b!5270624 (= e!3277924 (and tp!1473023 tp!1473024))))

(assert (=> b!5269667 (= tp!1472873 e!3277924)))

(assert (= (and b!5269667 (is-Cons!60845 (t!374162 (exprs!4774 (h!67295 zl!343))))) b!5270624))

(declare-fun b!5270628 () Bool)

(declare-fun e!3277925 () Bool)

(declare-fun tp!1473026 () Bool)

(declare-fun tp!1473027 () Bool)

(assert (=> b!5270628 (= e!3277925 (and tp!1473026 tp!1473027))))

(declare-fun b!5270625 () Bool)

(assert (=> b!5270625 (= e!3277925 tp_is_empty!39033)))

(assert (=> b!5269661 (= tp!1472863 e!3277925)))

(declare-fun b!5270626 () Bool)

(declare-fun tp!1473029 () Bool)

(declare-fun tp!1473028 () Bool)

(assert (=> b!5270626 (= e!3277925 (and tp!1473029 tp!1473028))))

(declare-fun b!5270627 () Bool)

(declare-fun tp!1473025 () Bool)

(assert (=> b!5270627 (= e!3277925 tp!1473025)))

(assert (= (and b!5269661 (is-ElementMatch!14890 (reg!15219 (regTwo!30292 r!7292)))) b!5270625))

(assert (= (and b!5269661 (is-Concat!23735 (reg!15219 (regTwo!30292 r!7292)))) b!5270626))

(assert (= (and b!5269661 (is-Star!14890 (reg!15219 (regTwo!30292 r!7292)))) b!5270627))

(assert (= (and b!5269661 (is-Union!14890 (reg!15219 (regTwo!30292 r!7292)))) b!5270628))

(declare-fun b!5270632 () Bool)

(declare-fun e!3277926 () Bool)

(declare-fun tp!1473031 () Bool)

(declare-fun tp!1473032 () Bool)

(assert (=> b!5270632 (= e!3277926 (and tp!1473031 tp!1473032))))

(declare-fun b!5270629 () Bool)

(assert (=> b!5270629 (= e!3277926 tp_is_empty!39033)))

(assert (=> b!5269652 (= tp!1472857 e!3277926)))

(declare-fun b!5270630 () Bool)

(declare-fun tp!1473034 () Bool)

(declare-fun tp!1473033 () Bool)

(assert (=> b!5270630 (= e!3277926 (and tp!1473034 tp!1473033))))

(declare-fun b!5270631 () Bool)

(declare-fun tp!1473030 () Bool)

(assert (=> b!5270631 (= e!3277926 tp!1473030)))

(assert (= (and b!5269652 (is-ElementMatch!14890 (regOne!30292 (regTwo!30293 r!7292)))) b!5270629))

(assert (= (and b!5269652 (is-Concat!23735 (regOne!30292 (regTwo!30293 r!7292)))) b!5270630))

(assert (= (and b!5269652 (is-Star!14890 (regOne!30292 (regTwo!30293 r!7292)))) b!5270631))

(assert (= (and b!5269652 (is-Union!14890 (regOne!30292 (regTwo!30293 r!7292)))) b!5270632))

(declare-fun b!5270636 () Bool)

(declare-fun e!3277927 () Bool)

(declare-fun tp!1473036 () Bool)

(declare-fun tp!1473037 () Bool)

(assert (=> b!5270636 (= e!3277927 (and tp!1473036 tp!1473037))))

(declare-fun b!5270633 () Bool)

(assert (=> b!5270633 (= e!3277927 tp_is_empty!39033)))

(assert (=> b!5269652 (= tp!1472856 e!3277927)))

(declare-fun b!5270634 () Bool)

(declare-fun tp!1473039 () Bool)

(declare-fun tp!1473038 () Bool)

(assert (=> b!5270634 (= e!3277927 (and tp!1473039 tp!1473038))))

(declare-fun b!5270635 () Bool)

(declare-fun tp!1473035 () Bool)

(assert (=> b!5270635 (= e!3277927 tp!1473035)))

(assert (= (and b!5269652 (is-ElementMatch!14890 (regTwo!30292 (regTwo!30293 r!7292)))) b!5270633))

(assert (= (and b!5269652 (is-Concat!23735 (regTwo!30292 (regTwo!30293 r!7292)))) b!5270634))

(assert (= (and b!5269652 (is-Star!14890 (regTwo!30292 (regTwo!30293 r!7292)))) b!5270635))

(assert (= (and b!5269652 (is-Union!14890 (regTwo!30292 (regTwo!30293 r!7292)))) b!5270636))

(declare-fun b!5270640 () Bool)

(declare-fun e!3277928 () Bool)

(declare-fun tp!1473041 () Bool)

(declare-fun tp!1473042 () Bool)

(assert (=> b!5270640 (= e!3277928 (and tp!1473041 tp!1473042))))

(declare-fun b!5270637 () Bool)

(assert (=> b!5270637 (= e!3277928 tp_is_empty!39033)))

(assert (=> b!5269660 (= tp!1472867 e!3277928)))

(declare-fun b!5270638 () Bool)

(declare-fun tp!1473044 () Bool)

(declare-fun tp!1473043 () Bool)

(assert (=> b!5270638 (= e!3277928 (and tp!1473044 tp!1473043))))

(declare-fun b!5270639 () Bool)

(declare-fun tp!1473040 () Bool)

(assert (=> b!5270639 (= e!3277928 tp!1473040)))

(assert (= (and b!5269660 (is-ElementMatch!14890 (regOne!30292 (regTwo!30292 r!7292)))) b!5270637))

(assert (= (and b!5269660 (is-Concat!23735 (regOne!30292 (regTwo!30292 r!7292)))) b!5270638))

(assert (= (and b!5269660 (is-Star!14890 (regOne!30292 (regTwo!30292 r!7292)))) b!5270639))

(assert (= (and b!5269660 (is-Union!14890 (regOne!30292 (regTwo!30292 r!7292)))) b!5270640))

(declare-fun b!5270644 () Bool)

(declare-fun e!3277929 () Bool)

(declare-fun tp!1473046 () Bool)

(declare-fun tp!1473047 () Bool)

(assert (=> b!5270644 (= e!3277929 (and tp!1473046 tp!1473047))))

(declare-fun b!5270641 () Bool)

(assert (=> b!5270641 (= e!3277929 tp_is_empty!39033)))

(assert (=> b!5269660 (= tp!1472866 e!3277929)))

(declare-fun b!5270642 () Bool)

(declare-fun tp!1473049 () Bool)

(declare-fun tp!1473048 () Bool)

(assert (=> b!5270642 (= e!3277929 (and tp!1473049 tp!1473048))))

(declare-fun b!5270643 () Bool)

(declare-fun tp!1473045 () Bool)

(assert (=> b!5270643 (= e!3277929 tp!1473045)))

(assert (= (and b!5269660 (is-ElementMatch!14890 (regTwo!30292 (regTwo!30292 r!7292)))) b!5270641))

(assert (= (and b!5269660 (is-Concat!23735 (regTwo!30292 (regTwo!30292 r!7292)))) b!5270642))

(assert (= (and b!5269660 (is-Star!14890 (regTwo!30292 (regTwo!30292 r!7292)))) b!5270643))

(assert (= (and b!5269660 (is-Union!14890 (regTwo!30292 (regTwo!30292 r!7292)))) b!5270644))

(declare-fun b!5270648 () Bool)

(declare-fun e!3277930 () Bool)

(declare-fun tp!1473051 () Bool)

(declare-fun tp!1473052 () Bool)

(assert (=> b!5270648 (= e!3277930 (and tp!1473051 tp!1473052))))

(declare-fun b!5270645 () Bool)

(assert (=> b!5270645 (= e!3277930 tp_is_empty!39033)))

(assert (=> b!5269650 (= tp!1472849 e!3277930)))

(declare-fun b!5270646 () Bool)

(declare-fun tp!1473054 () Bool)

(declare-fun tp!1473053 () Bool)

(assert (=> b!5270646 (= e!3277930 (and tp!1473054 tp!1473053))))

(declare-fun b!5270647 () Bool)

(declare-fun tp!1473050 () Bool)

(assert (=> b!5270647 (= e!3277930 tp!1473050)))

(assert (= (and b!5269650 (is-ElementMatch!14890 (regOne!30293 (regOne!30293 r!7292)))) b!5270645))

(assert (= (and b!5269650 (is-Concat!23735 (regOne!30293 (regOne!30293 r!7292)))) b!5270646))

(assert (= (and b!5269650 (is-Star!14890 (regOne!30293 (regOne!30293 r!7292)))) b!5270647))

(assert (= (and b!5269650 (is-Union!14890 (regOne!30293 (regOne!30293 r!7292)))) b!5270648))

(declare-fun b!5270652 () Bool)

(declare-fun e!3277931 () Bool)

(declare-fun tp!1473056 () Bool)

(declare-fun tp!1473057 () Bool)

(assert (=> b!5270652 (= e!3277931 (and tp!1473056 tp!1473057))))

(declare-fun b!5270649 () Bool)

(assert (=> b!5270649 (= e!3277931 tp_is_empty!39033)))

(assert (=> b!5269650 (= tp!1472850 e!3277931)))

(declare-fun b!5270650 () Bool)

(declare-fun tp!1473059 () Bool)

(declare-fun tp!1473058 () Bool)

(assert (=> b!5270650 (= e!3277931 (and tp!1473059 tp!1473058))))

(declare-fun b!5270651 () Bool)

(declare-fun tp!1473055 () Bool)

(assert (=> b!5270651 (= e!3277931 tp!1473055)))

(assert (= (and b!5269650 (is-ElementMatch!14890 (regTwo!30293 (regOne!30293 r!7292)))) b!5270649))

(assert (= (and b!5269650 (is-Concat!23735 (regTwo!30293 (regOne!30293 r!7292)))) b!5270650))

(assert (= (and b!5269650 (is-Star!14890 (regTwo!30293 (regOne!30293 r!7292)))) b!5270651))

(assert (= (and b!5269650 (is-Union!14890 (regTwo!30293 (regOne!30293 r!7292)))) b!5270652))

(declare-fun b!5270656 () Bool)

(declare-fun e!3277932 () Bool)

(declare-fun tp!1473061 () Bool)

(declare-fun tp!1473062 () Bool)

(assert (=> b!5270656 (= e!3277932 (and tp!1473061 tp!1473062))))

(declare-fun b!5270653 () Bool)

(assert (=> b!5270653 (= e!3277932 tp_is_empty!39033)))

(assert (=> b!5269648 (= tp!1472852 e!3277932)))

(declare-fun b!5270654 () Bool)

(declare-fun tp!1473064 () Bool)

(declare-fun tp!1473063 () Bool)

(assert (=> b!5270654 (= e!3277932 (and tp!1473064 tp!1473063))))

(declare-fun b!5270655 () Bool)

(declare-fun tp!1473060 () Bool)

(assert (=> b!5270655 (= e!3277932 tp!1473060)))

(assert (= (and b!5269648 (is-ElementMatch!14890 (regOne!30292 (regOne!30293 r!7292)))) b!5270653))

(assert (= (and b!5269648 (is-Concat!23735 (regOne!30292 (regOne!30293 r!7292)))) b!5270654))

(assert (= (and b!5269648 (is-Star!14890 (regOne!30292 (regOne!30293 r!7292)))) b!5270655))

(assert (= (and b!5269648 (is-Union!14890 (regOne!30292 (regOne!30293 r!7292)))) b!5270656))

(declare-fun b!5270660 () Bool)

(declare-fun e!3277933 () Bool)

(declare-fun tp!1473066 () Bool)

(declare-fun tp!1473067 () Bool)

(assert (=> b!5270660 (= e!3277933 (and tp!1473066 tp!1473067))))

(declare-fun b!5270657 () Bool)

(assert (=> b!5270657 (= e!3277933 tp_is_empty!39033)))

(assert (=> b!5269648 (= tp!1472851 e!3277933)))

(declare-fun b!5270658 () Bool)

(declare-fun tp!1473069 () Bool)

(declare-fun tp!1473068 () Bool)

(assert (=> b!5270658 (= e!3277933 (and tp!1473069 tp!1473068))))

(declare-fun b!5270659 () Bool)

(declare-fun tp!1473065 () Bool)

(assert (=> b!5270659 (= e!3277933 tp!1473065)))

(assert (= (and b!5269648 (is-ElementMatch!14890 (regTwo!30292 (regOne!30293 r!7292)))) b!5270657))

(assert (= (and b!5269648 (is-Concat!23735 (regTwo!30292 (regOne!30293 r!7292)))) b!5270658))

(assert (= (and b!5269648 (is-Star!14890 (regTwo!30292 (regOne!30293 r!7292)))) b!5270659))

(assert (= (and b!5269648 (is-Union!14890 (regTwo!30292 (regOne!30293 r!7292)))) b!5270660))

(declare-fun b!5270664 () Bool)

(declare-fun e!3277934 () Bool)

(declare-fun tp!1473071 () Bool)

(declare-fun tp!1473072 () Bool)

(assert (=> b!5270664 (= e!3277934 (and tp!1473071 tp!1473072))))

(declare-fun b!5270661 () Bool)

(assert (=> b!5270661 (= e!3277934 tp_is_empty!39033)))

(assert (=> b!5269658 (= tp!1472859 e!3277934)))

(declare-fun b!5270662 () Bool)

(declare-fun tp!1473074 () Bool)

(declare-fun tp!1473073 () Bool)

(assert (=> b!5270662 (= e!3277934 (and tp!1473074 tp!1473073))))

(declare-fun b!5270663 () Bool)

(declare-fun tp!1473070 () Bool)

(assert (=> b!5270663 (= e!3277934 tp!1473070)))

(assert (= (and b!5269658 (is-ElementMatch!14890 (regOne!30293 (regOne!30292 r!7292)))) b!5270661))

(assert (= (and b!5269658 (is-Concat!23735 (regOne!30293 (regOne!30292 r!7292)))) b!5270662))

(assert (= (and b!5269658 (is-Star!14890 (regOne!30293 (regOne!30292 r!7292)))) b!5270663))

(assert (= (and b!5269658 (is-Union!14890 (regOne!30293 (regOne!30292 r!7292)))) b!5270664))

(declare-fun b!5270668 () Bool)

(declare-fun e!3277935 () Bool)

(declare-fun tp!1473076 () Bool)

(declare-fun tp!1473077 () Bool)

(assert (=> b!5270668 (= e!3277935 (and tp!1473076 tp!1473077))))

(declare-fun b!5270665 () Bool)

(assert (=> b!5270665 (= e!3277935 tp_is_empty!39033)))

(assert (=> b!5269658 (= tp!1472860 e!3277935)))

(declare-fun b!5270666 () Bool)

(declare-fun tp!1473079 () Bool)

(declare-fun tp!1473078 () Bool)

(assert (=> b!5270666 (= e!3277935 (and tp!1473079 tp!1473078))))

(declare-fun b!5270667 () Bool)

(declare-fun tp!1473075 () Bool)

(assert (=> b!5270667 (= e!3277935 tp!1473075)))

(assert (= (and b!5269658 (is-ElementMatch!14890 (regTwo!30293 (regOne!30292 r!7292)))) b!5270665))

(assert (= (and b!5269658 (is-Concat!23735 (regTwo!30293 (regOne!30292 r!7292)))) b!5270666))

(assert (= (and b!5269658 (is-Star!14890 (regTwo!30293 (regOne!30292 r!7292)))) b!5270667))

(assert (= (and b!5269658 (is-Union!14890 (regTwo!30293 (regOne!30292 r!7292)))) b!5270668))

(declare-fun b!5270669 () Bool)

(declare-fun e!3277936 () Bool)

(declare-fun tp!1473080 () Bool)

(declare-fun tp!1473081 () Bool)

(assert (=> b!5270669 (= e!3277936 (and tp!1473080 tp!1473081))))

(assert (=> b!5269672 (= tp!1472879 e!3277936)))

(assert (= (and b!5269672 (is-Cons!60845 (exprs!4774 setElem!33728))) b!5270669))

(declare-fun b!5270673 () Bool)

(declare-fun e!3277937 () Bool)

(declare-fun tp!1473083 () Bool)

(declare-fun tp!1473084 () Bool)

(assert (=> b!5270673 (= e!3277937 (and tp!1473083 tp!1473084))))

(declare-fun b!5270670 () Bool)

(assert (=> b!5270670 (= e!3277937 tp_is_empty!39033)))

(assert (=> b!5269649 (= tp!1472848 e!3277937)))

(declare-fun b!5270671 () Bool)

(declare-fun tp!1473086 () Bool)

(declare-fun tp!1473085 () Bool)

(assert (=> b!5270671 (= e!3277937 (and tp!1473086 tp!1473085))))

(declare-fun b!5270672 () Bool)

(declare-fun tp!1473082 () Bool)

(assert (=> b!5270672 (= e!3277937 tp!1473082)))

(assert (= (and b!5269649 (is-ElementMatch!14890 (reg!15219 (regOne!30293 r!7292)))) b!5270670))

(assert (= (and b!5269649 (is-Concat!23735 (reg!15219 (regOne!30293 r!7292)))) b!5270671))

(assert (= (and b!5269649 (is-Star!14890 (reg!15219 (regOne!30293 r!7292)))) b!5270672))

(assert (= (and b!5269649 (is-Union!14890 (reg!15219 (regOne!30293 r!7292)))) b!5270673))

(declare-fun b!5270675 () Bool)

(declare-fun e!3277939 () Bool)

(declare-fun tp!1473087 () Bool)

(assert (=> b!5270675 (= e!3277939 tp!1473087)))

(declare-fun e!3277938 () Bool)

(declare-fun b!5270674 () Bool)

(declare-fun tp!1473088 () Bool)

(assert (=> b!5270674 (= e!3277938 (and (inv!80473 (h!67295 (t!374164 (t!374164 zl!343)))) e!3277939 tp!1473088))))

(assert (=> b!5269684 (= tp!1472892 e!3277938)))

(assert (= b!5270674 b!5270675))

(assert (= (and b!5269684 (is-Cons!60847 (t!374164 (t!374164 zl!343)))) b!5270674))

(declare-fun m!6309900 () Bool)

(assert (=> b!5270674 m!6309900))

(declare-fun b!5270679 () Bool)

(declare-fun e!3277940 () Bool)

(declare-fun tp!1473090 () Bool)

(declare-fun tp!1473091 () Bool)

(assert (=> b!5270679 (= e!3277940 (and tp!1473090 tp!1473091))))

(declare-fun b!5270676 () Bool)

(assert (=> b!5270676 (= e!3277940 tp_is_empty!39033)))

(assert (=> b!5269677 (= tp!1472883 e!3277940)))

(declare-fun b!5270677 () Bool)

(declare-fun tp!1473093 () Bool)

(declare-fun tp!1473092 () Bool)

(assert (=> b!5270677 (= e!3277940 (and tp!1473093 tp!1473092))))

(declare-fun b!5270678 () Bool)

(declare-fun tp!1473089 () Bool)

(assert (=> b!5270678 (= e!3277940 tp!1473089)))

(assert (= (and b!5269677 (is-ElementMatch!14890 (regOne!30293 (reg!15219 r!7292)))) b!5270676))

(assert (= (and b!5269677 (is-Concat!23735 (regOne!30293 (reg!15219 r!7292)))) b!5270677))

(assert (= (and b!5269677 (is-Star!14890 (regOne!30293 (reg!15219 r!7292)))) b!5270678))

(assert (= (and b!5269677 (is-Union!14890 (regOne!30293 (reg!15219 r!7292)))) b!5270679))

(declare-fun b!5270683 () Bool)

(declare-fun e!3277941 () Bool)

(declare-fun tp!1473095 () Bool)

(declare-fun tp!1473096 () Bool)

(assert (=> b!5270683 (= e!3277941 (and tp!1473095 tp!1473096))))

(declare-fun b!5270680 () Bool)

(assert (=> b!5270680 (= e!3277941 tp_is_empty!39033)))

(assert (=> b!5269677 (= tp!1472884 e!3277941)))

(declare-fun b!5270681 () Bool)

(declare-fun tp!1473098 () Bool)

(declare-fun tp!1473097 () Bool)

(assert (=> b!5270681 (= e!3277941 (and tp!1473098 tp!1473097))))

(declare-fun b!5270682 () Bool)

(declare-fun tp!1473094 () Bool)

(assert (=> b!5270682 (= e!3277941 tp!1473094)))

(assert (= (and b!5269677 (is-ElementMatch!14890 (regTwo!30293 (reg!15219 r!7292)))) b!5270680))

(assert (= (and b!5269677 (is-Concat!23735 (regTwo!30293 (reg!15219 r!7292)))) b!5270681))

(assert (= (and b!5269677 (is-Star!14890 (regTwo!30293 (reg!15219 r!7292)))) b!5270682))

(assert (= (and b!5269677 (is-Union!14890 (regTwo!30293 (reg!15219 r!7292)))) b!5270683))

(declare-fun b!5270687 () Bool)

(declare-fun e!3277942 () Bool)

(declare-fun tp!1473100 () Bool)

(declare-fun tp!1473101 () Bool)

(assert (=> b!5270687 (= e!3277942 (and tp!1473100 tp!1473101))))

(declare-fun b!5270684 () Bool)

(assert (=> b!5270684 (= e!3277942 tp_is_empty!39033)))

(assert (=> b!5269656 (= tp!1472862 e!3277942)))

(declare-fun b!5270685 () Bool)

(declare-fun tp!1473103 () Bool)

(declare-fun tp!1473102 () Bool)

(assert (=> b!5270685 (= e!3277942 (and tp!1473103 tp!1473102))))

(declare-fun b!5270686 () Bool)

(declare-fun tp!1473099 () Bool)

(assert (=> b!5270686 (= e!3277942 tp!1473099)))

(assert (= (and b!5269656 (is-ElementMatch!14890 (regOne!30292 (regOne!30292 r!7292)))) b!5270684))

(assert (= (and b!5269656 (is-Concat!23735 (regOne!30292 (regOne!30292 r!7292)))) b!5270685))

(assert (= (and b!5269656 (is-Star!14890 (regOne!30292 (regOne!30292 r!7292)))) b!5270686))

(assert (= (and b!5269656 (is-Union!14890 (regOne!30292 (regOne!30292 r!7292)))) b!5270687))

(declare-fun b!5270691 () Bool)

(declare-fun e!3277943 () Bool)

(declare-fun tp!1473105 () Bool)

(declare-fun tp!1473106 () Bool)

(assert (=> b!5270691 (= e!3277943 (and tp!1473105 tp!1473106))))

(declare-fun b!5270688 () Bool)

(assert (=> b!5270688 (= e!3277943 tp_is_empty!39033)))

(assert (=> b!5269656 (= tp!1472861 e!3277943)))

(declare-fun b!5270689 () Bool)

(declare-fun tp!1473108 () Bool)

(declare-fun tp!1473107 () Bool)

(assert (=> b!5270689 (= e!3277943 (and tp!1473108 tp!1473107))))

(declare-fun b!5270690 () Bool)

(declare-fun tp!1473104 () Bool)

(assert (=> b!5270690 (= e!3277943 tp!1473104)))

(assert (= (and b!5269656 (is-ElementMatch!14890 (regTwo!30292 (regOne!30292 r!7292)))) b!5270688))

(assert (= (and b!5269656 (is-Concat!23735 (regTwo!30292 (regOne!30292 r!7292)))) b!5270689))

(assert (= (and b!5269656 (is-Star!14890 (regTwo!30292 (regOne!30292 r!7292)))) b!5270690))

(assert (= (and b!5269656 (is-Union!14890 (regTwo!30292 (regOne!30292 r!7292)))) b!5270691))

(declare-fun b!5270695 () Bool)

(declare-fun e!3277944 () Bool)

(declare-fun tp!1473110 () Bool)

(declare-fun tp!1473111 () Bool)

(assert (=> b!5270695 (= e!3277944 (and tp!1473110 tp!1473111))))

(declare-fun b!5270692 () Bool)

(assert (=> b!5270692 (= e!3277944 tp_is_empty!39033)))

(assert (=> b!5269657 (= tp!1472858 e!3277944)))

(declare-fun b!5270693 () Bool)

(declare-fun tp!1473113 () Bool)

(declare-fun tp!1473112 () Bool)

(assert (=> b!5270693 (= e!3277944 (and tp!1473113 tp!1473112))))

(declare-fun b!5270694 () Bool)

(declare-fun tp!1473109 () Bool)

(assert (=> b!5270694 (= e!3277944 tp!1473109)))

(assert (= (and b!5269657 (is-ElementMatch!14890 (reg!15219 (regOne!30292 r!7292)))) b!5270692))

(assert (= (and b!5269657 (is-Concat!23735 (reg!15219 (regOne!30292 r!7292)))) b!5270693))

(assert (= (and b!5269657 (is-Star!14890 (reg!15219 (regOne!30292 r!7292)))) b!5270694))

(assert (= (and b!5269657 (is-Union!14890 (reg!15219 (regOne!30292 r!7292)))) b!5270695))

(declare-fun condSetEmpty!33737 () Bool)

(assert (=> setNonEmpty!33728 (= condSetEmpty!33737 (= setRest!33728 (as set.empty (Set Context!8548))))))

(declare-fun setRes!33737 () Bool)

(assert (=> setNonEmpty!33728 (= tp!1472878 setRes!33737)))

(declare-fun setIsEmpty!33737 () Bool)

(assert (=> setIsEmpty!33737 setRes!33737))

(declare-fun e!3277945 () Bool)

(declare-fun setNonEmpty!33737 () Bool)

(declare-fun setElem!33737 () Context!8548)

(declare-fun tp!1473114 () Bool)

(assert (=> setNonEmpty!33737 (= setRes!33737 (and tp!1473114 (inv!80473 setElem!33737) e!3277945))))

(declare-fun setRest!33737 () (Set Context!8548))

(assert (=> setNonEmpty!33737 (= setRest!33728 (set.union (set.insert setElem!33737 (as set.empty (Set Context!8548))) setRest!33737))))

(declare-fun b!5270696 () Bool)

(declare-fun tp!1473115 () Bool)

(assert (=> b!5270696 (= e!3277945 tp!1473115)))

(assert (= (and setNonEmpty!33728 condSetEmpty!33737) setIsEmpty!33737))

(assert (= (and setNonEmpty!33728 (not condSetEmpty!33737)) setNonEmpty!33737))

(assert (= setNonEmpty!33737 b!5270696))

(declare-fun m!6309902 () Bool)

(assert (=> setNonEmpty!33737 m!6309902))

(declare-fun b!5270697 () Bool)

(declare-fun e!3277946 () Bool)

(declare-fun tp!1473116 () Bool)

(declare-fun tp!1473117 () Bool)

(assert (=> b!5270697 (= e!3277946 (and tp!1473116 tp!1473117))))

(assert (=> b!5269685 (= tp!1472891 e!3277946)))

(assert (= (and b!5269685 (is-Cons!60845 (exprs!4774 (h!67295 (t!374164 zl!343))))) b!5270697))

(declare-fun b_lambda!203285 () Bool)

(assert (= b_lambda!203273 (or d!1695695 b_lambda!203285)))

(declare-fun bs!1221252 () Bool)

(declare-fun d!1696141 () Bool)

(assert (= bs!1221252 (and d!1696141 d!1695695)))

(assert (=> bs!1221252 (= (dynLambda!24044 lambda!265818 (h!67293 (exprs!4774 (h!67295 zl!343)))) (validRegex!6626 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(declare-fun m!6309904 () Bool)

(assert (=> bs!1221252 m!6309904))

(assert (=> b!5270278 d!1696141))

(declare-fun b_lambda!203287 () Bool)

(assert (= b_lambda!203277 (or b!5269181 b_lambda!203287)))

(assert (=> d!1696023 d!1695789))

(declare-fun b_lambda!203289 () Bool)

(assert (= b_lambda!203283 (or b!5269181 b_lambda!203289)))

(assert (=> d!1696125 d!1695787))

(declare-fun b_lambda!203291 () Bool)

(assert (= b_lambda!203275 (or d!1695783 b_lambda!203291)))

(declare-fun bs!1221253 () Bool)

(declare-fun d!1696143 () Bool)

(assert (= bs!1221253 (and d!1696143 d!1695783)))

(assert (=> bs!1221253 (= (dynLambda!24044 lambda!265846 (h!67293 lt!2156583)) (validRegex!6626 (h!67293 lt!2156583)))))

(declare-fun m!6309906 () Bool)

(assert (=> bs!1221253 m!6309906))

(assert (=> b!5270348 d!1696143))

(declare-fun b_lambda!203293 () Bool)

(assert (= b_lambda!203281 (or b!5269181 b_lambda!203293)))

(assert (=> d!1696079 d!1695785))

(declare-fun b_lambda!203295 () Bool)

(assert (= b_lambda!203271 (or d!1695781 b_lambda!203295)))

(declare-fun bs!1221254 () Bool)

(declare-fun d!1696145 () Bool)

(assert (= bs!1221254 (and d!1696145 d!1695781)))

(assert (=> bs!1221254 (= (dynLambda!24044 lambda!265843 (h!67293 (unfocusZipperList!332 zl!343))) (validRegex!6626 (h!67293 (unfocusZipperList!332 zl!343))))))

(declare-fun m!6309908 () Bool)

(assert (=> bs!1221254 m!6309908))

(assert (=> b!5270194 d!1696145))

(declare-fun b_lambda!203297 () Bool)

(assert (= b_lambda!203269 (or d!1695711 b_lambda!203297)))

(declare-fun bs!1221255 () Bool)

(declare-fun d!1696147 () Bool)

(assert (= bs!1221255 (and d!1696147 d!1695711)))

(assert (=> bs!1221255 (= (dynLambda!24044 lambda!265822 (h!67293 (exprs!4774 (h!67295 zl!343)))) (validRegex!6626 (h!67293 (exprs!4774 (h!67295 zl!343)))))))

(assert (=> bs!1221255 m!6309904))

(assert (=> b!5270172 d!1696147))

(declare-fun b_lambda!203299 () Bool)

(assert (= b_lambda!203279 (or d!1695697 b_lambda!203299)))

(declare-fun bs!1221256 () Bool)

(declare-fun d!1696149 () Bool)

(assert (= bs!1221256 (and d!1696149 d!1695697)))

(assert (=> bs!1221256 (= (dynLambda!24044 lambda!265821 (h!67293 (exprs!4774 setElem!33722))) (validRegex!6626 (h!67293 (exprs!4774 setElem!33722))))))

(declare-fun m!6309910 () Bool)

(assert (=> bs!1221256 m!6309910))

(assert (=> b!5270507 d!1696149))

(push 1)

(assert (not b!5270108))

(assert (not b!5270214))

(assert (not b!5270623))

(assert (not setNonEmpty!33735))

(assert (not bm!374445))

(assert (not bm!374397))

(assert (not bm!374390))

(assert (not b!5270209))

(assert (not b!5270476))

(assert (not b!5270560))

(assert (not b!5270659))

(assert (not b!5270566))

(assert (not b!5270569))

(assert (not bm!374400))

(assert (not b!5270682))

(assert (not b!5270675))

(assert (not bm!374431))

(assert (not d!1696039))

(assert (not b!5270355))

(assert (not b!5270275))

(assert (not b!5270563))

(assert (not d!1695947))

(assert (not d!1695993))

(assert (not b!5270686))

(assert (not b!5270215))

(assert (not d!1696125))

(assert (not b!5270651))

(assert (not d!1696015))

(assert (not b!5270656))

(assert (not b!5270663))

(assert (not b!5270690))

(assert (not b!5270377))

(assert (not b!5270376))

(assert (not b!5270205))

(assert (not bm!374439))

(assert (not d!1696087))

(assert (not b_lambda!203287))

(assert (not b!5270589))

(assert (not b_lambda!203293))

(assert (not d!1695973))

(assert (not d!1696119))

(assert (not d!1696139))

(assert (not bm!374435))

(assert (not b!5270418))

(assert (not bm!374392))

(assert (not bm!374423))

(assert (not d!1696053))

(assert (not bm!374422))

(assert (not b_lambda!203297))

(assert (not b_lambda!203285))

(assert (not b!5270613))

(assert (not b!5270555))

(assert (not d!1695995))

(assert (not b!5270464))

(assert (not b!5270658))

(assert (not d!1696037))

(assert (not b!5270344))

(assert (not setNonEmpty!33736))

(assert (not b!5270399))

(assert (not d!1696099))

(assert (not b!5270610))

(assert (not b!5270308))

(assert (not b!5270371))

(assert (not bm!374486))

(assert (not d!1695893))

(assert (not bm!374433))

(assert (not b!5270113))

(assert (not d!1696005))

(assert (not b!5270635))

(assert (not b_lambda!203291))

(assert (not b!5270550))

(assert (not d!1696121))

(assert (not b!5270307))

(assert (not b!5270631))

(assert (not b!5270472))

(assert (not b!5270559))

(assert (not bm!374487))

(assert (not bm!374409))

(assert (not b!5270660))

(assert (not b!5270432))

(assert (not bm!374373))

(assert (not bm!374399))

(assert (not bm!374387))

(assert (not b!5270579))

(assert (not d!1695921))

(assert (not b!5270696))

(assert (not b!5270669))

(assert (not bm!374396))

(assert (not d!1696103))

(assert (not bm!374421))

(assert (not b!5270208))

(assert (not bm!374495))

(assert (not b!5270096))

(assert (not b!5270311))

(assert (not b!5270600))

(assert (not b!5270678))

(assert (not b!5270396))

(assert (not d!1696075))

(assert (not bs!1221253))

(assert (not bm!374464))

(assert (not d!1696107))

(assert (not b!5270638))

(assert (not bm!374449))

(assert (not b!5270624))

(assert (not b!5270251))

(assert (not b!5270671))

(assert (not d!1696063))

(assert (not bm!374443))

(assert (not bs!1221255))

(assert (not bm!374404))

(assert (not b!5270137))

(assert (not bm!374456))

(assert (not b!5270092))

(assert (not bm!374477))

(assert (not bm!374488))

(assert (not b!5270567))

(assert (not bm!374458))

(assert (not b!5270627))

(assert (not bm!374394))

(assert (not setNonEmpty!33737))

(assert (not b!5270453))

(assert (not b!5270617))

(assert (not b!5270581))

(assert (not b!5270402))

(assert (not d!1695937))

(assert (not d!1695901))

(assert (not b_lambda!203255))

(assert (not d!1696049))

(assert (not bm!374493))

(assert (not b!5270587))

(assert (not b!5270619))

(assert (not b!5270135))

(assert (not b!5270616))

(assert (not d!1696031))

(assert (not b!5270305))

(assert (not b!5270428))

(assert (not d!1696067))

(assert (not b!5270234))

(assert (not bm!374380))

(assert (not b!5270433))

(assert (not d!1696007))

(assert (not b!5270655))

(assert (not bm!374371))

(assert (not b!5270117))

(assert (not b!5270609))

(assert (not b!5270206))

(assert (not b!5270634))

(assert (not d!1696117))

(assert (not b!5270674))

(assert (not b!5270683))

(assert (not bm!374450))

(assert (not b!5270580))

(assert (not b!5270132))

(assert (not b!5270216))

(assert (not d!1695949))

(assert (not b!5270668))

(assert (not b!5270601))

(assert (not b!5270612))

(assert (not b!5270687))

(assert (not bs!1221252))

(assert (not bm!374491))

(assert (not b!5270585))

(assert (not d!1695975))

(assert (not b!5270322))

(assert (not d!1695953))

(assert (not b!5270175))

(assert (not d!1696073))

(assert (not bm!374437))

(assert (not d!1695961))

(assert (not b!5270475))

(assert (not bm!374425))

(assert (not d!1696133))

(assert (not b!5270284))

(assert (not d!1696131))

(assert (not b_lambda!203295))

(assert (not b!5270614))

(assert (not bm!374408))

(assert (not b!5270522))

(assert (not b!5270405))

(assert (not b!5270243))

(assert (not b!5270288))

(assert (not b!5270125))

(assert (not bm!374448))

(assert (not b_lambda!203289))

(assert (not b!5270648))

(assert (not d!1696009))

(assert (not bm!374424))

(assert (not b!5270593))

(assert (not b!5270297))

(assert (not b!5270362))

(assert (not b!5270283))

(assert (not d!1695929))

(assert (not setNonEmpty!33734))

(assert (not b!5270664))

(assert (not bm!374376))

(assert (not b!5270426))

(assert (not b!5270654))

(assert (not b!5270607))

(assert (not b!5270378))

(assert (not b!5270621))

(assert (not b!5270538))

(assert (not b!5270592))

(assert (not bm!374402))

(assert (not bm!374454))

(assert (not bm!374382))

(assert (not b!5270469))

(assert (not bm!374414))

(assert (not b!5270695))

(assert (not bm!374388))

(assert (not bm!374429))

(assert (not b!5270333))

(assert (not b!5270603))

(assert (not d!1696111))

(assert (not b!5270509))

(assert (not bm!374372))

(assert (not b!5270693))

(assert (not b!5270666))

(assert (not b!5270101))

(assert (not b!5270213))

(assert (not b!5270279))

(assert (not b!5270191))

(assert (not b!5270640))

(assert tp_is_empty!39033)

(assert (not b!5270374))

(assert (not bm!374460))

(assert (not b!5270400))

(assert (not b!5270218))

(assert (not d!1695967))

(assert (not b!5270679))

(assert (not bm!374441))

(assert (not b!5270500))

(assert (not b!5270639))

(assert (not b!5270681))

(assert (not b!5270588))

(assert (not b!5270427))

(assert (not b!5270583))

(assert (not b!5270667))

(assert (not b!5270395))

(assert (not b!5270207))

(assert (not b!5270332))

(assert (not b!5270394))

(assert (not bm!374416))

(assert (not b!5270597))

(assert (not d!1696027))

(assert (not b!5270130))

(assert (not b!5270104))

(assert (not bm!374406))

(assert (not b!5270406))

(assert (not bm!374378))

(assert (not b!5270677))

(assert (not b!5270382))

(assert (not bs!1221256))

(assert (not bm!374440))

(assert (not b!5270584))

(assert (not b!5270632))

(assert (not b!5270628))

(assert (not d!1696101))

(assert (not b!5270393))

(assert (not b!5270694))

(assert (not bm!374465))

(assert (not b!5270195))

(assert (not b!5270541))

(assert (not bm!374374))

(assert (not b!5270652))

(assert (not b!5270346))

(assert (not b!5270685))

(assert (not b!5270604))

(assert (not bm!374479))

(assert (not b!5270474))

(assert (not b!5270689))

(assert (not b!5270118))

(assert (not b!5270112))

(assert (not d!1695977))

(assert (not d!1695917))

(assert (not b!5270287))

(assert (not b!5270644))

(assert (not d!1695911))

(assert (not b!5270551))

(assert (not b!5270419))

(assert (not b!5270630))

(assert (not bm!374481))

(assert (not d!1696113))

(assert (not b!5270554))

(assert (not b!5270626))

(assert (not bm!374462))

(assert (not b!5270529))

(assert (not b!5270379))

(assert (not b!5270561))

(assert (not bm!374447))

(assert (not b!5270673))

(assert (not b!5270605))

(assert (not b!5270595))

(assert (not b!5270557))

(assert (not b!5270106))

(assert (not b!5270643))

(assert (not bm!374474))

(assert (not b!5270599))

(assert (not bm!374411))

(assert (not b!5270366))

(assert (not b_lambda!203253))

(assert (not b!5270107))

(assert (not b!5270510))

(assert (not d!1696137))

(assert (not d!1696023))

(assert (not d!1695999))

(assert (not d!1695939))

(assert (not b!5270618))

(assert (not b!5270562))

(assert (not bs!1221254))

(assert (not bm!374412))

(assert (not b!5270591))

(assert (not b!5270650))

(assert (not d!1696123))

(assert (not b!5270302))

(assert (not b!5270596))

(assert (not b_lambda!203251))

(assert (not d!1696135))

(assert (not bm!374451))

(assert (not b!5270131))

(assert (not b!5270691))

(assert (not bm!374452))

(assert (not d!1695997))

(assert (not b!5270642))

(assert (not b!5270128))

(assert (not b!5270535))

(assert (not b!5270608))

(assert (not d!1695963))

(assert (not b!5270343))

(assert (not b!5270647))

(assert (not b!5270202))

(assert (not bm!374489))

(assert (not d!1696071))

(assert (not d!1696081))

(assert (not bm!374420))

(assert (not d!1696079))

(assert (not bm!374485))

(assert (not bm!374418))

(assert (not b!5270173))

(assert (not b!5270120))

(assert (not b!5270380))

(assert (not d!1695985))

(assert (not b!5270622))

(assert (not b!5270349))

(assert (not b!5270309))

(assert (not b!5270662))

(assert (not b!5270536))

(assert (not b!5270442))

(assert (not b!5270397))

(assert (not b_lambda!203299))

(assert (not b!5270512))

(assert (not b!5270636))

(assert (not b!5270508))

(assert (not d!1696065))

(assert (not b!5270537))

(assert (not bm!374375))

(assert (not bm!374483))

(assert (not b!5270646))

(assert (not d!1696033))

(assert (not b!5270697))

(assert (not bm!374427))

(assert (not b!5270672))

(assert (not d!1696109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

