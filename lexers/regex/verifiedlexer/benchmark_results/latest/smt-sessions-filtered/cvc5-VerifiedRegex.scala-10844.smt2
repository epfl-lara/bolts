; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!558916 () Bool)

(assert start!558916)

(declare-fun b!5296731 () Bool)

(assert (=> b!5296731 true))

(assert (=> b!5296731 true))

(declare-fun lambda!268637 () Int)

(declare-fun lambda!268636 () Int)

(assert (=> b!5296731 (not (= lambda!268637 lambda!268636))))

(assert (=> b!5296731 true))

(assert (=> b!5296731 true))

(declare-fun b!5296743 () Bool)

(assert (=> b!5296743 true))

(declare-fun bs!1228537 () Bool)

(declare-fun b!5296748 () Bool)

(assert (= bs!1228537 (and b!5296748 b!5296731)))

(declare-fun lambda!268639 () Int)

(declare-datatypes ((C!30138 0))(
  ( (C!30139 (val!24771 Int)) )
))
(declare-datatypes ((Regex!14934 0))(
  ( (ElementMatch!14934 (c!919246 C!30138)) (Concat!23779 (regOne!30380 Regex!14934) (regTwo!30380 Regex!14934)) (EmptyExpr!14934) (Star!14934 (reg!15263 Regex!14934)) (EmptyLang!14934) (Union!14934 (regOne!30381 Regex!14934) (regTwo!30381 Regex!14934)) )
))
(declare-fun r!7292 () Regex!14934)

(declare-fun lt!2164117 () Regex!14934)

(assert (=> bs!1228537 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164117 (regTwo!30380 r!7292))) (= lambda!268639 lambda!268636))))

(assert (=> bs!1228537 (not (= lambda!268639 lambda!268637))))

(assert (=> b!5296748 true))

(assert (=> b!5296748 true))

(assert (=> b!5296748 true))

(declare-fun lambda!268640 () Int)

(assert (=> bs!1228537 (not (= lambda!268640 lambda!268636))))

(assert (=> bs!1228537 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164117 (regTwo!30380 r!7292))) (= lambda!268640 lambda!268637))))

(assert (=> b!5296748 (not (= lambda!268640 lambda!268639))))

(assert (=> b!5296748 true))

(assert (=> b!5296748 true))

(assert (=> b!5296748 true))

(declare-fun lambda!268641 () Int)

(declare-fun lt!2164085 () Regex!14934)

(assert (=> bs!1228537 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164085 (regTwo!30380 r!7292))) (= lambda!268641 lambda!268636))))

(assert (=> bs!1228537 (not (= lambda!268641 lambda!268637))))

(assert (=> b!5296748 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 (regOne!30380 r!7292))) (= lt!2164085 lt!2164117)) (= lambda!268641 lambda!268639))))

(assert (=> b!5296748 (not (= lambda!268641 lambda!268640))))

(assert (=> b!5296748 true))

(assert (=> b!5296748 true))

(assert (=> b!5296748 true))

(declare-fun lambda!268642 () Int)

(assert (=> b!5296748 (not (= lambda!268642 lambda!268639))))

(assert (=> bs!1228537 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164085 (regTwo!30380 r!7292))) (= lambda!268642 lambda!268637))))

(assert (=> b!5296748 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 (regOne!30380 r!7292))) (= lt!2164085 lt!2164117)) (= lambda!268642 lambda!268640))))

(assert (=> bs!1228537 (not (= lambda!268642 lambda!268636))))

(assert (=> b!5296748 (not (= lambda!268642 lambda!268641))))

(assert (=> b!5296748 true))

(assert (=> b!5296748 true))

(assert (=> b!5296748 true))

(declare-fun b!5296720 () Bool)

(declare-fun res!2246434 () Bool)

(declare-fun e!3292426 () Bool)

(assert (=> b!5296720 (=> res!2246434 e!3292426)))

(declare-datatypes ((List!61101 0))(
  ( (Nil!60977) (Cons!60977 (h!67425 Regex!14934) (t!374306 List!61101)) )
))
(declare-datatypes ((Context!8636 0))(
  ( (Context!8637 (exprs!4818 List!61101)) )
))
(declare-datatypes ((List!61102 0))(
  ( (Nil!60978) (Cons!60978 (h!67426 Context!8636) (t!374307 List!61102)) )
))
(declare-fun lt!2164122 () List!61102)

(declare-fun zl!343 () List!61102)

(declare-fun zipperDepth!51 (List!61102) Int)

(assert (=> b!5296720 (= res!2246434 (> (zipperDepth!51 lt!2164122) (zipperDepth!51 zl!343)))))

(declare-fun b!5296721 () Bool)

(declare-datatypes ((Unit!153254 0))(
  ( (Unit!153255) )
))
(declare-fun e!3292411 () Unit!153254)

(declare-fun Unit!153256 () Unit!153254)

(assert (=> b!5296721 (= e!3292411 Unit!153256)))

(declare-fun e!3292414 () Bool)

(declare-fun e!3292407 () Bool)

(declare-fun tp!1477717 () Bool)

(declare-fun b!5296722 () Bool)

(declare-fun inv!80583 (Context!8636) Bool)

(assert (=> b!5296722 (= e!3292407 (and (inv!80583 (h!67426 zl!343)) e!3292414 tp!1477717))))

(declare-fun b!5296723 () Bool)

(declare-fun e!3292410 () Bool)

(declare-fun e!3292418 () Bool)

(assert (=> b!5296723 (= e!3292410 (not e!3292418))))

(declare-fun res!2246442 () Bool)

(assert (=> b!5296723 (=> res!2246442 e!3292418)))

(assert (=> b!5296723 (= res!2246442 (not (is-Cons!60978 zl!343)))))

(declare-fun lt!2164130 () Bool)

(declare-datatypes ((List!61103 0))(
  ( (Nil!60979) (Cons!60979 (h!67427 C!30138) (t!374308 List!61103)) )
))
(declare-fun s!2326 () List!61103)

(declare-fun matchRSpec!2037 (Regex!14934 List!61103) Bool)

(assert (=> b!5296723 (= lt!2164130 (matchRSpec!2037 r!7292 s!2326))))

(declare-fun matchR!7119 (Regex!14934 List!61103) Bool)

(assert (=> b!5296723 (= lt!2164130 (matchR!7119 r!7292 s!2326))))

(declare-fun lt!2164101 () Unit!153254)

(declare-fun mainMatchTheorem!2037 (Regex!14934 List!61103) Unit!153254)

(assert (=> b!5296723 (= lt!2164101 (mainMatchTheorem!2037 r!7292 s!2326))))

(declare-fun b!5296724 () Bool)

(declare-fun res!2246425 () Bool)

(assert (=> b!5296724 (=> res!2246425 e!3292418)))

(declare-fun generalisedUnion!863 (List!61101) Regex!14934)

(declare-fun unfocusZipperList!376 (List!61102) List!61101)

(assert (=> b!5296724 (= res!2246425 (not (= r!7292 (generalisedUnion!863 (unfocusZipperList!376 zl!343)))))))

(declare-fun b!5296725 () Bool)

(declare-fun e!3292413 () Bool)

(declare-fun tp!1477718 () Bool)

(declare-fun tp!1477710 () Bool)

(assert (=> b!5296725 (= e!3292413 (and tp!1477718 tp!1477710))))

(declare-fun b!5296726 () Bool)

(declare-fun e!3292416 () Bool)

(declare-fun tp_is_empty!39121 () Bool)

(declare-fun tp!1477714 () Bool)

(assert (=> b!5296726 (= e!3292416 (and tp_is_empty!39121 tp!1477714))))

(declare-fun b!5296727 () Bool)

(declare-fun e!3292419 () Bool)

(declare-fun lt!2164131 () (Set Context!8636))

(declare-fun matchZipper!1178 ((Set Context!8636) List!61103) Bool)

(assert (=> b!5296727 (= e!3292419 (not (matchZipper!1178 lt!2164131 (t!374308 s!2326))))))

(declare-fun b!5296728 () Bool)

(declare-fun tp!1477719 () Bool)

(assert (=> b!5296728 (= e!3292414 tp!1477719)))

(declare-fun b!5296729 () Bool)

(declare-fun e!3292424 () Bool)

(declare-fun lt!2164119 () (Set Context!8636))

(assert (=> b!5296729 (= e!3292424 (matchZipper!1178 lt!2164119 (t!374308 s!2326)))))

(declare-fun b!5296730 () Bool)

(declare-fun e!3292425 () Bool)

(assert (=> b!5296730 (= e!3292425 (matchZipper!1178 lt!2164131 (t!374308 s!2326)))))

(declare-fun b!5296732 () Bool)

(assert (=> b!5296732 (= e!3292413 tp_is_empty!39121)))

(declare-fun b!5296733 () Bool)

(declare-fun e!3292415 () Bool)

(declare-fun e!3292422 () Bool)

(assert (=> b!5296733 (= e!3292415 e!3292422)))

(declare-fun res!2246420 () Bool)

(assert (=> b!5296733 (=> res!2246420 e!3292422)))

(declare-fun lt!2164120 () (Set Context!8636))

(declare-fun lt!2164100 () (Set Context!8636))

(assert (=> b!5296733 (= res!2246420 (not (= lt!2164120 lt!2164100)))))

(declare-fun lt!2164127 () (Set Context!8636))

(assert (=> b!5296733 (= lt!2164100 (set.union lt!2164127 lt!2164131))))

(declare-fun lt!2164094 () Context!8636)

(declare-fun derivationStepZipperDown!382 (Regex!14934 Context!8636 C!30138) (Set Context!8636))

(assert (=> b!5296733 (= lt!2164131 (derivationStepZipperDown!382 (regTwo!30380 (regOne!30380 r!7292)) lt!2164094 (h!67427 s!2326)))))

(declare-fun lt!2164121 () Context!8636)

(assert (=> b!5296733 (= lt!2164127 (derivationStepZipperDown!382 (regOne!30380 (regOne!30380 r!7292)) lt!2164121 (h!67427 s!2326)))))

(declare-fun lt!2164089 () List!61101)

(assert (=> b!5296733 (= lt!2164121 (Context!8637 lt!2164089))))

(assert (=> b!5296733 (= lt!2164089 (Cons!60977 (regTwo!30380 (regOne!30380 r!7292)) (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun b!5296734 () Bool)

(declare-fun e!3292417 () Bool)

(assert (=> b!5296734 (= e!3292422 e!3292417)))

(declare-fun res!2246441 () Bool)

(assert (=> b!5296734 (=> res!2246441 e!3292417)))

(assert (=> b!5296734 (= res!2246441 e!3292419)))

(declare-fun res!2246422 () Bool)

(assert (=> b!5296734 (=> (not res!2246422) (not e!3292419))))

(declare-fun lt!2164105 () Bool)

(declare-fun lt!2164091 () Bool)

(assert (=> b!5296734 (= res!2246422 (not (= lt!2164105 lt!2164091)))))

(assert (=> b!5296734 (= lt!2164105 (matchZipper!1178 lt!2164120 (t!374308 s!2326)))))

(assert (=> b!5296734 (= (matchZipper!1178 lt!2164100 (t!374308 s!2326)) e!3292425)))

(declare-fun res!2246446 () Bool)

(assert (=> b!5296734 (=> res!2246446 e!3292425)))

(assert (=> b!5296734 (= res!2246446 lt!2164091)))

(assert (=> b!5296734 (= lt!2164091 (matchZipper!1178 lt!2164127 (t!374308 s!2326)))))

(declare-fun lt!2164111 () Unit!153254)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!171 ((Set Context!8636) (Set Context!8636) List!61103) Unit!153254)

(assert (=> b!5296734 (= lt!2164111 (lemmaZipperConcatMatchesSameAsBothZippers!171 lt!2164127 lt!2164131 (t!374308 s!2326)))))

(declare-fun b!5296735 () Bool)

(declare-fun e!3292408 () Bool)

(declare-fun lt!2164088 () (Set Context!8636))

(declare-fun derivationStepZipper!1177 ((Set Context!8636) C!30138) (Set Context!8636))

(assert (=> b!5296735 (= e!3292408 (not (matchZipper!1178 (derivationStepZipper!1177 lt!2164088 (h!67427 s!2326)) (t!374308 s!2326))))))

(declare-fun b!5296736 () Bool)

(declare-fun res!2246421 () Bool)

(assert (=> b!5296736 (=> (not res!2246421) (not e!3292410))))

(declare-fun unfocusZipper!676 (List!61102) Regex!14934)

(assert (=> b!5296736 (= res!2246421 (= r!7292 (unfocusZipper!676 zl!343)))))

(declare-fun b!5296737 () Bool)

(declare-fun res!2246445 () Bool)

(assert (=> b!5296737 (=> res!2246445 e!3292418)))

(declare-fun isEmpty!32937 (List!61102) Bool)

(assert (=> b!5296737 (= res!2246445 (not (isEmpty!32937 (t!374307 zl!343))))))

(declare-fun b!5296738 () Bool)

(declare-fun res!2246429 () Bool)

(declare-fun e!3292427 () Bool)

(assert (=> b!5296738 (=> res!2246429 e!3292427)))

(declare-fun isEmpty!32938 (List!61101) Bool)

(assert (=> b!5296738 (= res!2246429 (isEmpty!32938 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun b!5296739 () Bool)

(declare-fun e!3292423 () Bool)

(declare-fun validRegex!6670 (Regex!14934) Bool)

(assert (=> b!5296739 (= e!3292423 (validRegex!6670 lt!2164117))))

(declare-fun b!5296740 () Bool)

(declare-fun res!2246423 () Bool)

(assert (=> b!5296740 (=> res!2246423 e!3292418)))

(assert (=> b!5296740 (= res!2246423 (or (is-EmptyExpr!14934 r!7292) (is-EmptyLang!14934 r!7292) (is-ElementMatch!14934 r!7292) (is-Union!14934 r!7292) (not (is-Concat!23779 r!7292))))))

(declare-fun b!5296741 () Bool)

(declare-fun e!3292409 () Bool)

(declare-fun lt!2164114 () (Set Context!8636))

(assert (=> b!5296741 (= e!3292409 (matchZipper!1178 lt!2164114 (t!374308 s!2326)))))

(declare-fun b!5296742 () Bool)

(declare-fun res!2246424 () Bool)

(assert (=> b!5296742 (=> (not res!2246424) (not e!3292410))))

(declare-fun z!1189 () (Set Context!8636))

(declare-fun toList!8718 ((Set Context!8636)) List!61102)

(assert (=> b!5296742 (= res!2246424 (= (toList!8718 z!1189) zl!343))))

(declare-fun setIsEmpty!34010 () Bool)

(declare-fun setRes!34010 () Bool)

(assert (=> setIsEmpty!34010 setRes!34010))

(assert (=> b!5296743 (= e!3292427 e!3292415)))

(declare-fun res!2246430 () Bool)

(assert (=> b!5296743 (=> res!2246430 e!3292415)))

(assert (=> b!5296743 (= res!2246430 (or (and (is-ElementMatch!14934 (regOne!30380 r!7292)) (= (c!919246 (regOne!30380 r!7292)) (h!67427 s!2326))) (is-Union!14934 (regOne!30380 r!7292)) (not (is-Concat!23779 (regOne!30380 r!7292)))))))

(declare-fun lt!2164102 () Unit!153254)

(assert (=> b!5296743 (= lt!2164102 e!3292411)))

(declare-fun c!919245 () Bool)

(declare-fun nullable!5103 (Regex!14934) Bool)

(assert (=> b!5296743 (= c!919245 (nullable!5103 (h!67425 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun lambda!268638 () Int)

(declare-fun flatMap!661 ((Set Context!8636) Int) (Set Context!8636))

(declare-fun derivationStepZipperUp!306 (Context!8636 C!30138) (Set Context!8636))

(assert (=> b!5296743 (= (flatMap!661 z!1189 lambda!268638) (derivationStepZipperUp!306 (h!67426 zl!343) (h!67427 s!2326)))))

(declare-fun lt!2164113 () Unit!153254)

(declare-fun lemmaFlatMapOnSingletonSet!193 ((Set Context!8636) Context!8636 Int) Unit!153254)

(assert (=> b!5296743 (= lt!2164113 (lemmaFlatMapOnSingletonSet!193 z!1189 (h!67426 zl!343) lambda!268638))))

(assert (=> b!5296743 (= lt!2164119 (derivationStepZipperUp!306 lt!2164094 (h!67427 s!2326)))))

(assert (=> b!5296743 (= lt!2164120 (derivationStepZipperDown!382 (h!67425 (exprs!4818 (h!67426 zl!343))) lt!2164094 (h!67427 s!2326)))))

(assert (=> b!5296743 (= lt!2164094 (Context!8637 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun lt!2164124 () (Set Context!8636))

(assert (=> b!5296743 (= lt!2164124 (derivationStepZipperUp!306 (Context!8637 (Cons!60977 (h!67425 (exprs!4818 (h!67426 zl!343))) (t!374306 (exprs!4818 (h!67426 zl!343))))) (h!67427 s!2326)))))

(declare-fun b!5296744 () Bool)

(declare-fun tp!1477713 () Bool)

(assert (=> b!5296744 (= e!3292413 tp!1477713)))

(declare-fun b!5296745 () Bool)

(declare-fun res!2246436 () Bool)

(assert (=> b!5296745 (=> res!2246436 e!3292415)))

(assert (=> b!5296745 (= res!2246436 (not (nullable!5103 (regOne!30380 (regOne!30380 r!7292)))))))

(declare-fun b!5296746 () Bool)

(declare-fun Unit!153257 () Unit!153254)

(assert (=> b!5296746 (= e!3292411 Unit!153257)))

(declare-fun lt!2164098 () Unit!153254)

(assert (=> b!5296746 (= lt!2164098 (lemmaZipperConcatMatchesSameAsBothZippers!171 lt!2164120 lt!2164119 (t!374308 s!2326)))))

(declare-fun res!2246433 () Bool)

(assert (=> b!5296746 (= res!2246433 (matchZipper!1178 lt!2164120 (t!374308 s!2326)))))

(assert (=> b!5296746 (=> res!2246433 e!3292424)))

(assert (=> b!5296746 (= (matchZipper!1178 (set.union lt!2164120 lt!2164119) (t!374308 s!2326)) e!3292424)))

(declare-fun b!5296747 () Bool)

(declare-fun e!3292412 () Bool)

(assert (=> b!5296747 (= e!3292417 e!3292412)))

(declare-fun res!2246444 () Bool)

(assert (=> b!5296747 (=> res!2246444 e!3292412)))

(declare-fun lt!2164108 () (Set Context!8636))

(declare-fun lt!2164104 () (Set Context!8636))

(assert (=> b!5296747 (= res!2246444 (not (= lt!2164108 lt!2164104)))))

(assert (=> b!5296747 (= lt!2164104 (set.union lt!2164127 lt!2164114))))

(assert (=> b!5296747 (= lt!2164114 (derivationStepZipperUp!306 lt!2164121 (h!67427 s!2326)))))

(declare-fun lt!2164107 () (Set Context!8636))

(declare-fun lt!2164129 () Context!8636)

(assert (=> b!5296747 (= (flatMap!661 lt!2164107 lambda!268638) (derivationStepZipperUp!306 lt!2164129 (h!67427 s!2326)))))

(declare-fun lt!2164116 () Unit!153254)

(assert (=> b!5296747 (= lt!2164116 (lemmaFlatMapOnSingletonSet!193 lt!2164107 lt!2164129 lambda!268638))))

(declare-fun lt!2164106 () (Set Context!8636))

(assert (=> b!5296747 (= lt!2164106 (derivationStepZipperUp!306 lt!2164129 (h!67427 s!2326)))))

(assert (=> b!5296747 (= lt!2164108 (derivationStepZipper!1177 lt!2164107 (h!67427 s!2326)))))

(assert (=> b!5296747 (= lt!2164088 (set.insert lt!2164121 (as set.empty (Set Context!8636))))))

(assert (=> b!5296747 (= lt!2164107 (set.insert lt!2164129 (as set.empty (Set Context!8636))))))

(declare-fun lt!2164096 () List!61101)

(assert (=> b!5296747 (= lt!2164129 (Context!8637 lt!2164096))))

(assert (=> b!5296747 (= lt!2164096 (Cons!60977 (regOne!30380 (regOne!30380 r!7292)) lt!2164089))))

(assert (=> b!5296748 (= e!3292426 e!3292423)))

(declare-fun res!2246438 () Bool)

(assert (=> b!5296748 (=> res!2246438 e!3292423)))

(declare-fun lt!2164112 () Bool)

(declare-fun lt!2164103 () Bool)

(assert (=> b!5296748 (= res!2246438 (not (= (matchZipper!1178 z!1189 s!2326) (or lt!2164103 lt!2164112))))))

(declare-fun Exists!2115 (Int) Bool)

(assert (=> b!5296748 (= (Exists!2115 lambda!268641) (Exists!2115 lambda!268642))))

(declare-fun lt!2164087 () Unit!153254)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!769 (Regex!14934 Regex!14934 List!61103) Unit!153254)

(assert (=> b!5296748 (= lt!2164087 (lemmaExistCutMatchRandMatchRSpecEquivalent!769 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 s!2326))))

(declare-datatypes ((tuple2!64266 0))(
  ( (tuple2!64267 (_1!35436 List!61103) (_2!35436 List!61103)) )
))
(declare-datatypes ((Option!15045 0))(
  ( (None!15044) (Some!15044 (v!51073 tuple2!64266)) )
))
(declare-fun isDefined!11748 (Option!15045) Bool)

(declare-fun findConcatSeparation!1459 (Regex!14934 Regex!14934 List!61103 List!61103 List!61103) Option!15045)

(assert (=> b!5296748 (= (isDefined!11748 (findConcatSeparation!1459 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 Nil!60979 s!2326 s!2326)) (Exists!2115 lambda!268641))))

(declare-fun lt!2164123 () Unit!153254)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1223 (Regex!14934 Regex!14934 List!61103) Unit!153254)

(assert (=> b!5296748 (= lt!2164123 (lemmaFindConcatSeparationEquivalentToExists!1223 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 s!2326))))

(declare-fun generalisedConcat!603 (List!61101) Regex!14934)

(assert (=> b!5296748 (= lt!2164085 (generalisedConcat!603 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun lt!2164093 () Bool)

(assert (=> b!5296748 (= lt!2164093 (matchRSpec!2037 lt!2164117 s!2326))))

(declare-fun lt!2164099 () Unit!153254)

(assert (=> b!5296748 (= lt!2164099 (mainMatchTheorem!2037 lt!2164117 s!2326))))

(assert (=> b!5296748 (= (Exists!2115 lambda!268639) (Exists!2115 lambda!268640))))

(declare-fun lt!2164125 () Unit!153254)

(assert (=> b!5296748 (= lt!2164125 (lemmaExistCutMatchRandMatchRSpecEquivalent!769 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 s!2326))))

(assert (=> b!5296748 (= (isDefined!11748 (findConcatSeparation!1459 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 Nil!60979 s!2326 s!2326)) (Exists!2115 lambda!268639))))

(declare-fun lt!2164118 () Unit!153254)

(assert (=> b!5296748 (= lt!2164118 (lemmaFindConcatSeparationEquivalentToExists!1223 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 s!2326))))

(declare-fun lt!2164128 () Bool)

(declare-fun lt!2164092 () Regex!14934)

(assert (=> b!5296748 (= lt!2164128 (matchRSpec!2037 lt!2164092 s!2326))))

(declare-fun lt!2164097 () Unit!153254)

(assert (=> b!5296748 (= lt!2164097 (mainMatchTheorem!2037 lt!2164092 s!2326))))

(assert (=> b!5296748 (= lt!2164093 lt!2164112)))

(assert (=> b!5296748 (= lt!2164112 (matchZipper!1178 lt!2164088 s!2326))))

(assert (=> b!5296748 (= lt!2164093 (matchR!7119 lt!2164117 s!2326))))

(declare-fun lt!2164086 () Unit!153254)

(declare-fun theoremZipperRegexEquiv!344 ((Set Context!8636) List!61102 Regex!14934 List!61103) Unit!153254)

(assert (=> b!5296748 (= lt!2164086 (theoremZipperRegexEquiv!344 lt!2164088 (Cons!60978 lt!2164121 Nil!60978) lt!2164117 s!2326))))

(assert (=> b!5296748 (= lt!2164117 (generalisedConcat!603 lt!2164089))))

(assert (=> b!5296748 (= lt!2164128 lt!2164103)))

(assert (=> b!5296748 (= lt!2164103 (matchZipper!1178 lt!2164107 s!2326))))

(assert (=> b!5296748 (= lt!2164128 (matchR!7119 lt!2164092 s!2326))))

(declare-fun lt!2164095 () Unit!153254)

(assert (=> b!5296748 (= lt!2164095 (theoremZipperRegexEquiv!344 lt!2164107 lt!2164122 lt!2164092 s!2326))))

(assert (=> b!5296748 (= lt!2164092 (generalisedConcat!603 lt!2164096))))

(declare-fun b!5296749 () Bool)

(declare-fun tp!1477711 () Bool)

(declare-fun tp!1477715 () Bool)

(assert (=> b!5296749 (= e!3292413 (and tp!1477711 tp!1477715))))

(declare-fun b!5296750 () Bool)

(declare-fun res!2246432 () Bool)

(declare-fun e!3292420 () Bool)

(assert (=> b!5296750 (=> res!2246432 e!3292420)))

(assert (=> b!5296750 (= res!2246432 (not (= (exprs!4818 (h!67426 zl!343)) (Cons!60977 (Concat!23779 (regOne!30380 (regOne!30380 r!7292)) (regTwo!30380 (regOne!30380 r!7292))) (t!374306 (exprs!4818 (h!67426 zl!343)))))))))

(declare-fun b!5296751 () Bool)

(assert (=> b!5296751 (= e!3292420 e!3292426)))

(declare-fun res!2246437 () Bool)

(assert (=> b!5296751 (=> res!2246437 e!3292426)))

(declare-fun zipperDepthTotal!95 (List!61102) Int)

(assert (=> b!5296751 (= res!2246437 (>= (zipperDepthTotal!95 lt!2164122) (zipperDepthTotal!95 zl!343)))))

(assert (=> b!5296751 (= lt!2164122 (Cons!60978 lt!2164129 Nil!60978))))

(declare-fun res!2246439 () Bool)

(assert (=> start!558916 (=> (not res!2246439) (not e!3292410))))

(assert (=> start!558916 (= res!2246439 (validRegex!6670 r!7292))))

(assert (=> start!558916 e!3292410))

(assert (=> start!558916 e!3292413))

(declare-fun condSetEmpty!34010 () Bool)

(assert (=> start!558916 (= condSetEmpty!34010 (= z!1189 (as set.empty (Set Context!8636))))))

(assert (=> start!558916 setRes!34010))

(assert (=> start!558916 e!3292407))

(assert (=> start!558916 e!3292416))

(assert (=> b!5296731 (= e!3292418 e!3292427)))

(declare-fun res!2246440 () Bool)

(assert (=> b!5296731 (=> res!2246440 e!3292427)))

(declare-fun lt!2164115 () Bool)

(assert (=> b!5296731 (= res!2246440 (or (not (= lt!2164130 lt!2164115)) (is-Nil!60979 s!2326)))))

(assert (=> b!5296731 (= (Exists!2115 lambda!268636) (Exists!2115 lambda!268637))))

(declare-fun lt!2164090 () Unit!153254)

(assert (=> b!5296731 (= lt!2164090 (lemmaExistCutMatchRandMatchRSpecEquivalent!769 (regOne!30380 r!7292) (regTwo!30380 r!7292) s!2326))))

(assert (=> b!5296731 (= lt!2164115 (Exists!2115 lambda!268636))))

(assert (=> b!5296731 (= lt!2164115 (isDefined!11748 (findConcatSeparation!1459 (regOne!30380 r!7292) (regTwo!30380 r!7292) Nil!60979 s!2326 s!2326)))))

(declare-fun lt!2164110 () Unit!153254)

(assert (=> b!5296731 (= lt!2164110 (lemmaFindConcatSeparationEquivalentToExists!1223 (regOne!30380 r!7292) (regTwo!30380 r!7292) s!2326))))

(declare-fun b!5296752 () Bool)

(assert (=> b!5296752 (= e!3292412 e!3292420)))

(declare-fun res!2246443 () Bool)

(assert (=> b!5296752 (=> res!2246443 e!3292420)))

(assert (=> b!5296752 (= res!2246443 e!3292408)))

(declare-fun res!2246426 () Bool)

(assert (=> b!5296752 (=> (not res!2246426) (not e!3292408))))

(assert (=> b!5296752 (= res!2246426 (not (= lt!2164105 (matchZipper!1178 lt!2164108 (t!374308 s!2326)))))))

(assert (=> b!5296752 (= (matchZipper!1178 lt!2164104 (t!374308 s!2326)) e!3292409)))

(declare-fun res!2246427 () Bool)

(assert (=> b!5296752 (=> res!2246427 e!3292409)))

(assert (=> b!5296752 (= res!2246427 lt!2164091)))

(declare-fun lt!2164126 () Unit!153254)

(assert (=> b!5296752 (= lt!2164126 (lemmaZipperConcatMatchesSameAsBothZippers!171 lt!2164127 lt!2164114 (t!374308 s!2326)))))

(assert (=> b!5296752 (= (flatMap!661 lt!2164088 lambda!268638) (derivationStepZipperUp!306 lt!2164121 (h!67427 s!2326)))))

(declare-fun lt!2164109 () Unit!153254)

(assert (=> b!5296752 (= lt!2164109 (lemmaFlatMapOnSingletonSet!193 lt!2164088 lt!2164121 lambda!268638))))

(declare-fun b!5296753 () Bool)

(declare-fun res!2246435 () Bool)

(assert (=> b!5296753 (=> res!2246435 e!3292420)))

(declare-fun contextDepthTotal!75 (Context!8636) Int)

(assert (=> b!5296753 (= res!2246435 (>= (contextDepthTotal!75 lt!2164129) (contextDepthTotal!75 (h!67426 zl!343))))))

(declare-fun b!5296754 () Bool)

(declare-fun e!3292421 () Bool)

(declare-fun tp!1477716 () Bool)

(assert (=> b!5296754 (= e!3292421 tp!1477716)))

(declare-fun b!5296755 () Bool)

(declare-fun res!2246431 () Bool)

(assert (=> b!5296755 (=> res!2246431 e!3292418)))

(assert (=> b!5296755 (= res!2246431 (not (is-Cons!60977 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun setElem!34010 () Context!8636)

(declare-fun setNonEmpty!34010 () Bool)

(declare-fun tp!1477712 () Bool)

(assert (=> setNonEmpty!34010 (= setRes!34010 (and tp!1477712 (inv!80583 setElem!34010) e!3292421))))

(declare-fun setRest!34010 () (Set Context!8636))

(assert (=> setNonEmpty!34010 (= z!1189 (set.union (set.insert setElem!34010 (as set.empty (Set Context!8636))) setRest!34010))))

(declare-fun b!5296756 () Bool)

(declare-fun res!2246428 () Bool)

(assert (=> b!5296756 (=> res!2246428 e!3292423)))

(assert (=> b!5296756 (= res!2246428 lt!2164128)))

(declare-fun b!5296757 () Bool)

(declare-fun res!2246447 () Bool)

(assert (=> b!5296757 (=> res!2246447 e!3292418)))

(assert (=> b!5296757 (= res!2246447 (not (= r!7292 (generalisedConcat!603 (exprs!4818 (h!67426 zl!343))))))))

(assert (= (and start!558916 res!2246439) b!5296742))

(assert (= (and b!5296742 res!2246424) b!5296736))

(assert (= (and b!5296736 res!2246421) b!5296723))

(assert (= (and b!5296723 (not res!2246442)) b!5296737))

(assert (= (and b!5296737 (not res!2246445)) b!5296757))

(assert (= (and b!5296757 (not res!2246447)) b!5296755))

(assert (= (and b!5296755 (not res!2246431)) b!5296724))

(assert (= (and b!5296724 (not res!2246425)) b!5296740))

(assert (= (and b!5296740 (not res!2246423)) b!5296731))

(assert (= (and b!5296731 (not res!2246440)) b!5296738))

(assert (= (and b!5296738 (not res!2246429)) b!5296743))

(assert (= (and b!5296743 c!919245) b!5296746))

(assert (= (and b!5296743 (not c!919245)) b!5296721))

(assert (= (and b!5296746 (not res!2246433)) b!5296729))

(assert (= (and b!5296743 (not res!2246430)) b!5296745))

(assert (= (and b!5296745 (not res!2246436)) b!5296733))

(assert (= (and b!5296733 (not res!2246420)) b!5296734))

(assert (= (and b!5296734 (not res!2246446)) b!5296730))

(assert (= (and b!5296734 res!2246422) b!5296727))

(assert (= (and b!5296734 (not res!2246441)) b!5296747))

(assert (= (and b!5296747 (not res!2246444)) b!5296752))

(assert (= (and b!5296752 (not res!2246427)) b!5296741))

(assert (= (and b!5296752 res!2246426) b!5296735))

(assert (= (and b!5296752 (not res!2246443)) b!5296750))

(assert (= (and b!5296750 (not res!2246432)) b!5296753))

(assert (= (and b!5296753 (not res!2246435)) b!5296751))

(assert (= (and b!5296751 (not res!2246437)) b!5296720))

(assert (= (and b!5296720 (not res!2246434)) b!5296748))

(assert (= (and b!5296748 (not res!2246438)) b!5296756))

(assert (= (and b!5296756 (not res!2246428)) b!5296739))

(assert (= (and start!558916 (is-ElementMatch!14934 r!7292)) b!5296732))

(assert (= (and start!558916 (is-Concat!23779 r!7292)) b!5296725))

(assert (= (and start!558916 (is-Star!14934 r!7292)) b!5296744))

(assert (= (and start!558916 (is-Union!14934 r!7292)) b!5296749))

(assert (= (and start!558916 condSetEmpty!34010) setIsEmpty!34010))

(assert (= (and start!558916 (not condSetEmpty!34010)) setNonEmpty!34010))

(assert (= setNonEmpty!34010 b!5296754))

(assert (= b!5296722 b!5296728))

(assert (= (and start!558916 (is-Cons!60978 zl!343)) b!5296722))

(assert (= (and start!558916 (is-Cons!60979 s!2326)) b!5296726))

(declare-fun m!6334032 () Bool)

(assert (=> setNonEmpty!34010 m!6334032))

(declare-fun m!6334034 () Bool)

(assert (=> b!5296730 m!6334034))

(declare-fun m!6334036 () Bool)

(assert (=> b!5296720 m!6334036))

(declare-fun m!6334038 () Bool)

(assert (=> b!5296720 m!6334038))

(declare-fun m!6334040 () Bool)

(assert (=> start!558916 m!6334040))

(declare-fun m!6334042 () Bool)

(assert (=> b!5296746 m!6334042))

(declare-fun m!6334044 () Bool)

(assert (=> b!5296746 m!6334044))

(declare-fun m!6334046 () Bool)

(assert (=> b!5296746 m!6334046))

(declare-fun m!6334048 () Bool)

(assert (=> b!5296747 m!6334048))

(declare-fun m!6334050 () Bool)

(assert (=> b!5296747 m!6334050))

(declare-fun m!6334052 () Bool)

(assert (=> b!5296747 m!6334052))

(declare-fun m!6334054 () Bool)

(assert (=> b!5296747 m!6334054))

(declare-fun m!6334056 () Bool)

(assert (=> b!5296747 m!6334056))

(declare-fun m!6334058 () Bool)

(assert (=> b!5296747 m!6334058))

(declare-fun m!6334060 () Bool)

(assert (=> b!5296747 m!6334060))

(declare-fun m!6334062 () Bool)

(assert (=> b!5296722 m!6334062))

(declare-fun m!6334064 () Bool)

(assert (=> b!5296733 m!6334064))

(declare-fun m!6334066 () Bool)

(assert (=> b!5296733 m!6334066))

(declare-fun m!6334068 () Bool)

(assert (=> b!5296743 m!6334068))

(declare-fun m!6334070 () Bool)

(assert (=> b!5296743 m!6334070))

(declare-fun m!6334072 () Bool)

(assert (=> b!5296743 m!6334072))

(declare-fun m!6334074 () Bool)

(assert (=> b!5296743 m!6334074))

(declare-fun m!6334076 () Bool)

(assert (=> b!5296743 m!6334076))

(declare-fun m!6334078 () Bool)

(assert (=> b!5296743 m!6334078))

(declare-fun m!6334080 () Bool)

(assert (=> b!5296743 m!6334080))

(declare-fun m!6334082 () Bool)

(assert (=> b!5296751 m!6334082))

(declare-fun m!6334084 () Bool)

(assert (=> b!5296751 m!6334084))

(declare-fun m!6334086 () Bool)

(assert (=> b!5296741 m!6334086))

(assert (=> b!5296734 m!6334044))

(declare-fun m!6334088 () Bool)

(assert (=> b!5296734 m!6334088))

(declare-fun m!6334090 () Bool)

(assert (=> b!5296734 m!6334090))

(declare-fun m!6334092 () Bool)

(assert (=> b!5296734 m!6334092))

(declare-fun m!6334094 () Bool)

(assert (=> b!5296752 m!6334094))

(declare-fun m!6334096 () Bool)

(assert (=> b!5296752 m!6334096))

(declare-fun m!6334098 () Bool)

(assert (=> b!5296752 m!6334098))

(declare-fun m!6334100 () Bool)

(assert (=> b!5296752 m!6334100))

(assert (=> b!5296752 m!6334054))

(declare-fun m!6334102 () Bool)

(assert (=> b!5296752 m!6334102))

(declare-fun m!6334104 () Bool)

(assert (=> b!5296737 m!6334104))

(declare-fun m!6334106 () Bool)

(assert (=> b!5296757 m!6334106))

(declare-fun m!6334108 () Bool)

(assert (=> b!5296736 m!6334108))

(assert (=> b!5296727 m!6334034))

(declare-fun m!6334110 () Bool)

(assert (=> b!5296742 m!6334110))

(declare-fun m!6334112 () Bool)

(assert (=> b!5296748 m!6334112))

(declare-fun m!6334114 () Bool)

(assert (=> b!5296748 m!6334114))

(declare-fun m!6334116 () Bool)

(assert (=> b!5296748 m!6334116))

(declare-fun m!6334118 () Bool)

(assert (=> b!5296748 m!6334118))

(declare-fun m!6334120 () Bool)

(assert (=> b!5296748 m!6334120))

(declare-fun m!6334122 () Bool)

(assert (=> b!5296748 m!6334122))

(declare-fun m!6334124 () Bool)

(assert (=> b!5296748 m!6334124))

(assert (=> b!5296748 m!6334120))

(declare-fun m!6334126 () Bool)

(assert (=> b!5296748 m!6334126))

(declare-fun m!6334128 () Bool)

(assert (=> b!5296748 m!6334128))

(declare-fun m!6334130 () Bool)

(assert (=> b!5296748 m!6334130))

(declare-fun m!6334132 () Bool)

(assert (=> b!5296748 m!6334132))

(declare-fun m!6334134 () Bool)

(assert (=> b!5296748 m!6334134))

(declare-fun m!6334136 () Bool)

(assert (=> b!5296748 m!6334136))

(declare-fun m!6334138 () Bool)

(assert (=> b!5296748 m!6334138))

(declare-fun m!6334140 () Bool)

(assert (=> b!5296748 m!6334140))

(declare-fun m!6334142 () Bool)

(assert (=> b!5296748 m!6334142))

(declare-fun m!6334144 () Bool)

(assert (=> b!5296748 m!6334144))

(declare-fun m!6334146 () Bool)

(assert (=> b!5296748 m!6334146))

(declare-fun m!6334148 () Bool)

(assert (=> b!5296748 m!6334148))

(declare-fun m!6334150 () Bool)

(assert (=> b!5296748 m!6334150))

(assert (=> b!5296748 m!6334150))

(assert (=> b!5296748 m!6334116))

(declare-fun m!6334152 () Bool)

(assert (=> b!5296748 m!6334152))

(declare-fun m!6334154 () Bool)

(assert (=> b!5296748 m!6334154))

(declare-fun m!6334156 () Bool)

(assert (=> b!5296748 m!6334156))

(assert (=> b!5296748 m!6334132))

(declare-fun m!6334158 () Bool)

(assert (=> b!5296748 m!6334158))

(declare-fun m!6334160 () Bool)

(assert (=> b!5296748 m!6334160))

(declare-fun m!6334162 () Bool)

(assert (=> b!5296748 m!6334162))

(declare-fun m!6334164 () Bool)

(assert (=> b!5296729 m!6334164))

(declare-fun m!6334166 () Bool)

(assert (=> b!5296753 m!6334166))

(declare-fun m!6334168 () Bool)

(assert (=> b!5296753 m!6334168))

(declare-fun m!6334170 () Bool)

(assert (=> b!5296731 m!6334170))

(declare-fun m!6334172 () Bool)

(assert (=> b!5296731 m!6334172))

(declare-fun m!6334174 () Bool)

(assert (=> b!5296731 m!6334174))

(assert (=> b!5296731 m!6334170))

(declare-fun m!6334176 () Bool)

(assert (=> b!5296731 m!6334176))

(declare-fun m!6334178 () Bool)

(assert (=> b!5296731 m!6334178))

(assert (=> b!5296731 m!6334176))

(declare-fun m!6334180 () Bool)

(assert (=> b!5296731 m!6334180))

(declare-fun m!6334182 () Bool)

(assert (=> b!5296723 m!6334182))

(declare-fun m!6334184 () Bool)

(assert (=> b!5296723 m!6334184))

(declare-fun m!6334186 () Bool)

(assert (=> b!5296723 m!6334186))

(declare-fun m!6334188 () Bool)

(assert (=> b!5296739 m!6334188))

(declare-fun m!6334190 () Bool)

(assert (=> b!5296745 m!6334190))

(declare-fun m!6334192 () Bool)

(assert (=> b!5296735 m!6334192))

(assert (=> b!5296735 m!6334192))

(declare-fun m!6334194 () Bool)

(assert (=> b!5296735 m!6334194))

(declare-fun m!6334196 () Bool)

(assert (=> b!5296738 m!6334196))

(declare-fun m!6334198 () Bool)

(assert (=> b!5296724 m!6334198))

(assert (=> b!5296724 m!6334198))

(declare-fun m!6334200 () Bool)

(assert (=> b!5296724 m!6334200))

(push 1)

(assert (not b!5296722))

(assert (not b!5296748))

(assert (not b!5296753))

(assert tp_is_empty!39121)

(assert (not b!5296749))

(assert (not b!5296741))

(assert (not b!5296739))

(assert (not b!5296736))

(assert (not b!5296745))

(assert (not b!5296743))

(assert (not b!5296726))

(assert (not start!558916))

(assert (not b!5296737))

(assert (not b!5296738))

(assert (not b!5296728))

(assert (not b!5296734))

(assert (not b!5296724))

(assert (not b!5296751))

(assert (not b!5296747))

(assert (not b!5296733))

(assert (not b!5296730))

(assert (not b!5296752))

(assert (not b!5296720))

(assert (not setNonEmpty!34010))

(assert (not b!5296731))

(assert (not b!5296742))

(assert (not b!5296746))

(assert (not b!5296725))

(assert (not b!5296757))

(assert (not b!5296754))

(assert (not b!5296727))

(assert (not b!5296723))

(assert (not b!5296735))

(assert (not b!5296729))

(assert (not b!5296744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5296942 () Bool)

(declare-fun e!3292526 () (Set Context!8636))

(declare-fun e!3292521 () (Set Context!8636))

(assert (=> b!5296942 (= e!3292526 e!3292521)))

(declare-fun c!919269 () Bool)

(assert (=> b!5296942 (= c!919269 (is-Union!14934 (h!67425 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun b!5296943 () Bool)

(declare-fun e!3292523 () (Set Context!8636))

(declare-fun call!377569 () (Set Context!8636))

(assert (=> b!5296943 (= e!3292523 call!377569)))

(declare-fun b!5296944 () Bool)

(declare-fun e!3292522 () (Set Context!8636))

(declare-fun call!377572 () (Set Context!8636))

(declare-fun call!377573 () (Set Context!8636))

(assert (=> b!5296944 (= e!3292522 (set.union call!377572 call!377573))))

(declare-fun c!919271 () Bool)

(declare-fun c!919268 () Bool)

(declare-fun call!377574 () List!61101)

(declare-fun call!377570 () (Set Context!8636))

(declare-fun bm!377564 () Bool)

(assert (=> bm!377564 (= call!377570 (derivationStepZipperDown!382 (ite c!919269 (regTwo!30381 (h!67425 (exprs!4818 (h!67426 zl!343)))) (ite c!919268 (regTwo!30380 (h!67425 (exprs!4818 (h!67426 zl!343)))) (ite c!919271 (regOne!30380 (h!67425 (exprs!4818 (h!67426 zl!343)))) (reg!15263 (h!67425 (exprs!4818 (h!67426 zl!343))))))) (ite (or c!919269 c!919268) lt!2164094 (Context!8637 call!377574)) (h!67427 s!2326)))))

(declare-fun bm!377565 () Bool)

(declare-fun call!377571 () List!61101)

(assert (=> bm!377565 (= call!377574 call!377571)))

(declare-fun b!5296945 () Bool)

(assert (=> b!5296945 (= e!3292521 (set.union call!377572 call!377570))))

(declare-fun bm!377566 () Bool)

(assert (=> bm!377566 (= call!377569 call!377573)))

(declare-fun b!5296946 () Bool)

(declare-fun e!3292525 () (Set Context!8636))

(assert (=> b!5296946 (= e!3292525 (as set.empty (Set Context!8636)))))

(declare-fun b!5296947 () Bool)

(assert (=> b!5296947 (= e!3292525 call!377569)))

(declare-fun b!5296948 () Bool)

(assert (=> b!5296948 (= e!3292522 e!3292523)))

(assert (=> b!5296948 (= c!919271 (is-Concat!23779 (h!67425 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun b!5296949 () Bool)

(assert (=> b!5296949 (= e!3292526 (set.insert lt!2164094 (as set.empty (Set Context!8636))))))

(declare-fun d!1703571 () Bool)

(declare-fun c!919270 () Bool)

(assert (=> d!1703571 (= c!919270 (and (is-ElementMatch!14934 (h!67425 (exprs!4818 (h!67426 zl!343)))) (= (c!919246 (h!67425 (exprs!4818 (h!67426 zl!343)))) (h!67427 s!2326))))))

(assert (=> d!1703571 (= (derivationStepZipperDown!382 (h!67425 (exprs!4818 (h!67426 zl!343))) lt!2164094 (h!67427 s!2326)) e!3292526)))

(declare-fun b!5296950 () Bool)

(declare-fun e!3292524 () Bool)

(assert (=> b!5296950 (= c!919268 e!3292524)))

(declare-fun res!2246570 () Bool)

(assert (=> b!5296950 (=> (not res!2246570) (not e!3292524))))

(assert (=> b!5296950 (= res!2246570 (is-Concat!23779 (h!67425 (exprs!4818 (h!67426 zl!343)))))))

(assert (=> b!5296950 (= e!3292521 e!3292522)))

(declare-fun bm!377567 () Bool)

(assert (=> bm!377567 (= call!377573 call!377570)))

(declare-fun bm!377568 () Bool)

(declare-fun $colon$colon!1367 (List!61101 Regex!14934) List!61101)

(assert (=> bm!377568 (= call!377571 ($colon$colon!1367 (exprs!4818 lt!2164094) (ite (or c!919268 c!919271) (regTwo!30380 (h!67425 (exprs!4818 (h!67426 zl!343)))) (h!67425 (exprs!4818 (h!67426 zl!343))))))))

(declare-fun b!5296951 () Bool)

(assert (=> b!5296951 (= e!3292524 (nullable!5103 (regOne!30380 (h!67425 (exprs!4818 (h!67426 zl!343))))))))

(declare-fun b!5296952 () Bool)

(declare-fun c!919272 () Bool)

(assert (=> b!5296952 (= c!919272 (is-Star!14934 (h!67425 (exprs!4818 (h!67426 zl!343)))))))

(assert (=> b!5296952 (= e!3292523 e!3292525)))

(declare-fun bm!377569 () Bool)

(assert (=> bm!377569 (= call!377572 (derivationStepZipperDown!382 (ite c!919269 (regOne!30381 (h!67425 (exprs!4818 (h!67426 zl!343)))) (regOne!30380 (h!67425 (exprs!4818 (h!67426 zl!343))))) (ite c!919269 lt!2164094 (Context!8637 call!377571)) (h!67427 s!2326)))))

(assert (= (and d!1703571 c!919270) b!5296949))

(assert (= (and d!1703571 (not c!919270)) b!5296942))

(assert (= (and b!5296942 c!919269) b!5296945))

(assert (= (and b!5296942 (not c!919269)) b!5296950))

(assert (= (and b!5296950 res!2246570) b!5296951))

(assert (= (and b!5296950 c!919268) b!5296944))

(assert (= (and b!5296950 (not c!919268)) b!5296948))

(assert (= (and b!5296948 c!919271) b!5296943))

(assert (= (and b!5296948 (not c!919271)) b!5296952))

(assert (= (and b!5296952 c!919272) b!5296947))

(assert (= (and b!5296952 (not c!919272)) b!5296946))

(assert (= (or b!5296943 b!5296947) bm!377565))

(assert (= (or b!5296943 b!5296947) bm!377566))

(assert (= (or b!5296944 bm!377565) bm!377568))

(assert (= (or b!5296944 bm!377566) bm!377567))

(assert (= (or b!5296945 bm!377567) bm!377564))

(assert (= (or b!5296945 b!5296944) bm!377569))

(declare-fun m!6334372 () Bool)

(assert (=> bm!377568 m!6334372))

(declare-fun m!6334374 () Bool)

(assert (=> bm!377564 m!6334374))

(declare-fun m!6334376 () Bool)

(assert (=> bm!377569 m!6334376))

(declare-fun m!6334378 () Bool)

(assert (=> b!5296949 m!6334378))

(declare-fun m!6334380 () Bool)

(assert (=> b!5296951 m!6334380))

(assert (=> b!5296743 d!1703571))

(declare-fun d!1703573 () Bool)

(declare-fun nullableFct!1469 (Regex!14934) Bool)

(assert (=> d!1703573 (= (nullable!5103 (h!67425 (exprs!4818 (h!67426 zl!343)))) (nullableFct!1469 (h!67425 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun bs!1228539 () Bool)

(assert (= bs!1228539 d!1703573))

(declare-fun m!6334382 () Bool)

(assert (=> bs!1228539 m!6334382))

(assert (=> b!5296743 d!1703573))

(declare-fun call!377577 () (Set Context!8636))

(declare-fun e!3292533 () (Set Context!8636))

(declare-fun b!5296963 () Bool)

(assert (=> b!5296963 (= e!3292533 (set.union call!377577 (derivationStepZipperUp!306 (Context!8637 (t!374306 (exprs!4818 (Context!8637 (Cons!60977 (h!67425 (exprs!4818 (h!67426 zl!343))) (t!374306 (exprs!4818 (h!67426 zl!343)))))))) (h!67427 s!2326))))))

(declare-fun b!5296964 () Bool)

(declare-fun e!3292535 () Bool)

(assert (=> b!5296964 (= e!3292535 (nullable!5103 (h!67425 (exprs!4818 (Context!8637 (Cons!60977 (h!67425 (exprs!4818 (h!67426 zl!343))) (t!374306 (exprs!4818 (h!67426 zl!343)))))))))))

(declare-fun d!1703575 () Bool)

(declare-fun c!919277 () Bool)

(assert (=> d!1703575 (= c!919277 e!3292535)))

(declare-fun res!2246573 () Bool)

(assert (=> d!1703575 (=> (not res!2246573) (not e!3292535))))

(assert (=> d!1703575 (= res!2246573 (is-Cons!60977 (exprs!4818 (Context!8637 (Cons!60977 (h!67425 (exprs!4818 (h!67426 zl!343))) (t!374306 (exprs!4818 (h!67426 zl!343))))))))))

(assert (=> d!1703575 (= (derivationStepZipperUp!306 (Context!8637 (Cons!60977 (h!67425 (exprs!4818 (h!67426 zl!343))) (t!374306 (exprs!4818 (h!67426 zl!343))))) (h!67427 s!2326)) e!3292533)))

(declare-fun b!5296965 () Bool)

(declare-fun e!3292534 () (Set Context!8636))

(assert (=> b!5296965 (= e!3292533 e!3292534)))

(declare-fun c!919278 () Bool)

(assert (=> b!5296965 (= c!919278 (is-Cons!60977 (exprs!4818 (Context!8637 (Cons!60977 (h!67425 (exprs!4818 (h!67426 zl!343))) (t!374306 (exprs!4818 (h!67426 zl!343))))))))))

(declare-fun bm!377572 () Bool)

(assert (=> bm!377572 (= call!377577 (derivationStepZipperDown!382 (h!67425 (exprs!4818 (Context!8637 (Cons!60977 (h!67425 (exprs!4818 (h!67426 zl!343))) (t!374306 (exprs!4818 (h!67426 zl!343))))))) (Context!8637 (t!374306 (exprs!4818 (Context!8637 (Cons!60977 (h!67425 (exprs!4818 (h!67426 zl!343))) (t!374306 (exprs!4818 (h!67426 zl!343)))))))) (h!67427 s!2326)))))

(declare-fun b!5296966 () Bool)

(assert (=> b!5296966 (= e!3292534 (as set.empty (Set Context!8636)))))

(declare-fun b!5296967 () Bool)

(assert (=> b!5296967 (= e!3292534 call!377577)))

(assert (= (and d!1703575 res!2246573) b!5296964))

(assert (= (and d!1703575 c!919277) b!5296963))

(assert (= (and d!1703575 (not c!919277)) b!5296965))

(assert (= (and b!5296965 c!919278) b!5296967))

(assert (= (and b!5296965 (not c!919278)) b!5296966))

(assert (= (or b!5296963 b!5296967) bm!377572))

(declare-fun m!6334384 () Bool)

(assert (=> b!5296963 m!6334384))

(declare-fun m!6334386 () Bool)

(assert (=> b!5296964 m!6334386))

(declare-fun m!6334388 () Bool)

(assert (=> bm!377572 m!6334388))

(assert (=> b!5296743 d!1703575))

(declare-fun call!377578 () (Set Context!8636))

(declare-fun b!5296968 () Bool)

(declare-fun e!3292536 () (Set Context!8636))

(assert (=> b!5296968 (= e!3292536 (set.union call!377578 (derivationStepZipperUp!306 (Context!8637 (t!374306 (exprs!4818 (h!67426 zl!343)))) (h!67427 s!2326))))))

(declare-fun b!5296969 () Bool)

(declare-fun e!3292538 () Bool)

(assert (=> b!5296969 (= e!3292538 (nullable!5103 (h!67425 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun d!1703577 () Bool)

(declare-fun c!919279 () Bool)

(assert (=> d!1703577 (= c!919279 e!3292538)))

(declare-fun res!2246574 () Bool)

(assert (=> d!1703577 (=> (not res!2246574) (not e!3292538))))

(assert (=> d!1703577 (= res!2246574 (is-Cons!60977 (exprs!4818 (h!67426 zl!343))))))

(assert (=> d!1703577 (= (derivationStepZipperUp!306 (h!67426 zl!343) (h!67427 s!2326)) e!3292536)))

(declare-fun b!5296970 () Bool)

(declare-fun e!3292537 () (Set Context!8636))

(assert (=> b!5296970 (= e!3292536 e!3292537)))

(declare-fun c!919280 () Bool)

(assert (=> b!5296970 (= c!919280 (is-Cons!60977 (exprs!4818 (h!67426 zl!343))))))

(declare-fun bm!377573 () Bool)

(assert (=> bm!377573 (= call!377578 (derivationStepZipperDown!382 (h!67425 (exprs!4818 (h!67426 zl!343))) (Context!8637 (t!374306 (exprs!4818 (h!67426 zl!343)))) (h!67427 s!2326)))))

(declare-fun b!5296971 () Bool)

(assert (=> b!5296971 (= e!3292537 (as set.empty (Set Context!8636)))))

(declare-fun b!5296972 () Bool)

(assert (=> b!5296972 (= e!3292537 call!377578)))

(assert (= (and d!1703577 res!2246574) b!5296969))

(assert (= (and d!1703577 c!919279) b!5296968))

(assert (= (and d!1703577 (not c!919279)) b!5296970))

(assert (= (and b!5296970 c!919280) b!5296972))

(assert (= (and b!5296970 (not c!919280)) b!5296971))

(assert (= (or b!5296968 b!5296972) bm!377573))

(declare-fun m!6334390 () Bool)

(assert (=> b!5296968 m!6334390))

(assert (=> b!5296969 m!6334076))

(declare-fun m!6334392 () Bool)

(assert (=> bm!377573 m!6334392))

(assert (=> b!5296743 d!1703577))

(declare-fun call!377579 () (Set Context!8636))

(declare-fun e!3292539 () (Set Context!8636))

(declare-fun b!5296973 () Bool)

(assert (=> b!5296973 (= e!3292539 (set.union call!377579 (derivationStepZipperUp!306 (Context!8637 (t!374306 (exprs!4818 lt!2164094))) (h!67427 s!2326))))))

(declare-fun b!5296974 () Bool)

(declare-fun e!3292541 () Bool)

(assert (=> b!5296974 (= e!3292541 (nullable!5103 (h!67425 (exprs!4818 lt!2164094))))))

(declare-fun d!1703579 () Bool)

(declare-fun c!919281 () Bool)

(assert (=> d!1703579 (= c!919281 e!3292541)))

(declare-fun res!2246575 () Bool)

(assert (=> d!1703579 (=> (not res!2246575) (not e!3292541))))

(assert (=> d!1703579 (= res!2246575 (is-Cons!60977 (exprs!4818 lt!2164094)))))

(assert (=> d!1703579 (= (derivationStepZipperUp!306 lt!2164094 (h!67427 s!2326)) e!3292539)))

(declare-fun b!5296975 () Bool)

(declare-fun e!3292540 () (Set Context!8636))

(assert (=> b!5296975 (= e!3292539 e!3292540)))

(declare-fun c!919282 () Bool)

(assert (=> b!5296975 (= c!919282 (is-Cons!60977 (exprs!4818 lt!2164094)))))

(declare-fun bm!377574 () Bool)

(assert (=> bm!377574 (= call!377579 (derivationStepZipperDown!382 (h!67425 (exprs!4818 lt!2164094)) (Context!8637 (t!374306 (exprs!4818 lt!2164094))) (h!67427 s!2326)))))

(declare-fun b!5296976 () Bool)

(assert (=> b!5296976 (= e!3292540 (as set.empty (Set Context!8636)))))

(declare-fun b!5296977 () Bool)

(assert (=> b!5296977 (= e!3292540 call!377579)))

(assert (= (and d!1703579 res!2246575) b!5296974))

(assert (= (and d!1703579 c!919281) b!5296973))

(assert (= (and d!1703579 (not c!919281)) b!5296975))

(assert (= (and b!5296975 c!919282) b!5296977))

(assert (= (and b!5296975 (not c!919282)) b!5296976))

(assert (= (or b!5296973 b!5296977) bm!377574))

(declare-fun m!6334394 () Bool)

(assert (=> b!5296973 m!6334394))

(declare-fun m!6334396 () Bool)

(assert (=> b!5296974 m!6334396))

(declare-fun m!6334398 () Bool)

(assert (=> bm!377574 m!6334398))

(assert (=> b!5296743 d!1703579))

(declare-fun d!1703581 () Bool)

(declare-fun dynLambda!24114 (Int Context!8636) (Set Context!8636))

(assert (=> d!1703581 (= (flatMap!661 z!1189 lambda!268638) (dynLambda!24114 lambda!268638 (h!67426 zl!343)))))

(declare-fun lt!2164275 () Unit!153254)

(declare-fun choose!39573 ((Set Context!8636) Context!8636 Int) Unit!153254)

(assert (=> d!1703581 (= lt!2164275 (choose!39573 z!1189 (h!67426 zl!343) lambda!268638))))

(assert (=> d!1703581 (= z!1189 (set.insert (h!67426 zl!343) (as set.empty (Set Context!8636))))))

(assert (=> d!1703581 (= (lemmaFlatMapOnSingletonSet!193 z!1189 (h!67426 zl!343) lambda!268638) lt!2164275)))

(declare-fun b_lambda!204189 () Bool)

(assert (=> (not b_lambda!204189) (not d!1703581)))

(declare-fun bs!1228540 () Bool)

(assert (= bs!1228540 d!1703581))

(assert (=> bs!1228540 m!6334080))

(declare-fun m!6334400 () Bool)

(assert (=> bs!1228540 m!6334400))

(declare-fun m!6334402 () Bool)

(assert (=> bs!1228540 m!6334402))

(declare-fun m!6334404 () Bool)

(assert (=> bs!1228540 m!6334404))

(assert (=> b!5296743 d!1703581))

(declare-fun d!1703583 () Bool)

(declare-fun choose!39574 ((Set Context!8636) Int) (Set Context!8636))

(assert (=> d!1703583 (= (flatMap!661 z!1189 lambda!268638) (choose!39574 z!1189 lambda!268638))))

(declare-fun bs!1228541 () Bool)

(assert (= bs!1228541 d!1703583))

(declare-fun m!6334406 () Bool)

(assert (=> bs!1228541 m!6334406))

(assert (=> b!5296743 d!1703583))

(declare-fun bs!1228542 () Bool)

(declare-fun b!5297016 () Bool)

(assert (= bs!1228542 (and b!5297016 b!5296748)))

(declare-fun lambda!268678 () Int)

(assert (=> bs!1228542 (not (= lambda!268678 lambda!268642))))

(assert (=> bs!1228542 (not (= lambda!268678 lambda!268639))))

(declare-fun bs!1228543 () Bool)

(assert (= bs!1228543 (and b!5297016 b!5296731)))

(assert (=> bs!1228543 (not (= lambda!268678 lambda!268637))))

(assert (=> bs!1228542 (not (= lambda!268678 lambda!268640))))

(assert (=> bs!1228543 (not (= lambda!268678 lambda!268636))))

(assert (=> bs!1228542 (not (= lambda!268678 lambda!268641))))

(assert (=> b!5297016 true))

(assert (=> b!5297016 true))

(declare-fun bs!1228544 () Bool)

(declare-fun b!5297013 () Bool)

(assert (= bs!1228544 (and b!5297013 b!5297016)))

(declare-fun lambda!268679 () Int)

(assert (=> bs!1228544 (not (= lambda!268679 lambda!268678))))

(declare-fun bs!1228545 () Bool)

(assert (= bs!1228545 (and b!5297013 b!5296748)))

(assert (=> bs!1228545 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268679 lambda!268642))))

(assert (=> bs!1228545 (not (= lambda!268679 lambda!268639))))

(declare-fun bs!1228546 () Bool)

(assert (= bs!1228546 (and b!5297013 b!5296731)))

(assert (=> bs!1228546 (= lambda!268679 lambda!268637)))

(assert (=> bs!1228545 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268679 lambda!268640))))

(assert (=> bs!1228546 (not (= lambda!268679 lambda!268636))))

(assert (=> bs!1228545 (not (= lambda!268679 lambda!268641))))

(assert (=> b!5297013 true))

(assert (=> b!5297013 true))

(declare-fun c!919294 () Bool)

(declare-fun bm!377579 () Bool)

(declare-fun call!377584 () Bool)

(assert (=> bm!377579 (= call!377584 (Exists!2115 (ite c!919294 lambda!268678 lambda!268679)))))

(declare-fun b!5297010 () Bool)

(declare-fun e!3292563 () Bool)

(assert (=> b!5297010 (= e!3292563 (= s!2326 (Cons!60979 (c!919246 r!7292) Nil!60979)))))

(declare-fun b!5297011 () Bool)

(declare-fun e!3292565 () Bool)

(declare-fun call!377585 () Bool)

(assert (=> b!5297011 (= e!3292565 call!377585)))

(declare-fun b!5297012 () Bool)

(declare-fun e!3292561 () Bool)

(assert (=> b!5297012 (= e!3292565 e!3292561)))

(declare-fun res!2246593 () Bool)

(assert (=> b!5297012 (= res!2246593 (not (is-EmptyLang!14934 r!7292)))))

(assert (=> b!5297012 (=> (not res!2246593) (not e!3292561))))

(declare-fun e!3292562 () Bool)

(assert (=> b!5297013 (= e!3292562 call!377584)))

(declare-fun b!5297014 () Bool)

(declare-fun e!3292566 () Bool)

(assert (=> b!5297014 (= e!3292566 e!3292562)))

(assert (=> b!5297014 (= c!919294 (is-Star!14934 r!7292))))

(declare-fun d!1703585 () Bool)

(declare-fun c!919291 () Bool)

(assert (=> d!1703585 (= c!919291 (is-EmptyExpr!14934 r!7292))))

(assert (=> d!1703585 (= (matchRSpec!2037 r!7292 s!2326) e!3292565)))

(declare-fun b!5297015 () Bool)

(declare-fun c!919293 () Bool)

(assert (=> b!5297015 (= c!919293 (is-Union!14934 r!7292))))

(assert (=> b!5297015 (= e!3292563 e!3292566)))

(declare-fun e!3292560 () Bool)

(assert (=> b!5297016 (= e!3292560 call!377584)))

(declare-fun b!5297017 () Bool)

(declare-fun c!919292 () Bool)

(assert (=> b!5297017 (= c!919292 (is-ElementMatch!14934 r!7292))))

(assert (=> b!5297017 (= e!3292561 e!3292563)))

(declare-fun b!5297018 () Bool)

(declare-fun res!2246594 () Bool)

(assert (=> b!5297018 (=> res!2246594 e!3292560)))

(assert (=> b!5297018 (= res!2246594 call!377585)))

(assert (=> b!5297018 (= e!3292562 e!3292560)))

(declare-fun bm!377580 () Bool)

(declare-fun isEmpty!32941 (List!61103) Bool)

(assert (=> bm!377580 (= call!377585 (isEmpty!32941 s!2326))))

(declare-fun b!5297019 () Bool)

(declare-fun e!3292564 () Bool)

(assert (=> b!5297019 (= e!3292564 (matchRSpec!2037 (regTwo!30381 r!7292) s!2326))))

(declare-fun b!5297020 () Bool)

(assert (=> b!5297020 (= e!3292566 e!3292564)))

(declare-fun res!2246592 () Bool)

(assert (=> b!5297020 (= res!2246592 (matchRSpec!2037 (regOne!30381 r!7292) s!2326))))

(assert (=> b!5297020 (=> res!2246592 e!3292564)))

(assert (= (and d!1703585 c!919291) b!5297011))

(assert (= (and d!1703585 (not c!919291)) b!5297012))

(assert (= (and b!5297012 res!2246593) b!5297017))

(assert (= (and b!5297017 c!919292) b!5297010))

(assert (= (and b!5297017 (not c!919292)) b!5297015))

(assert (= (and b!5297015 c!919293) b!5297020))

(assert (= (and b!5297015 (not c!919293)) b!5297014))

(assert (= (and b!5297020 (not res!2246592)) b!5297019))

(assert (= (and b!5297014 c!919294) b!5297018))

(assert (= (and b!5297014 (not c!919294)) b!5297013))

(assert (= (and b!5297018 (not res!2246594)) b!5297016))

(assert (= (or b!5297016 b!5297013) bm!377579))

(assert (= (or b!5297011 b!5297018) bm!377580))

(declare-fun m!6334408 () Bool)

(assert (=> bm!377579 m!6334408))

(declare-fun m!6334410 () Bool)

(assert (=> bm!377580 m!6334410))

(declare-fun m!6334412 () Bool)

(assert (=> b!5297019 m!6334412))

(declare-fun m!6334414 () Bool)

(assert (=> b!5297020 m!6334414))

(assert (=> b!5296723 d!1703585))

(declare-fun d!1703587 () Bool)

(declare-fun e!3292584 () Bool)

(assert (=> d!1703587 e!3292584))

(declare-fun c!919302 () Bool)

(assert (=> d!1703587 (= c!919302 (is-EmptyExpr!14934 r!7292))))

(declare-fun lt!2164278 () Bool)

(declare-fun e!3292587 () Bool)

(assert (=> d!1703587 (= lt!2164278 e!3292587)))

(declare-fun c!919301 () Bool)

(assert (=> d!1703587 (= c!919301 (isEmpty!32941 s!2326))))

(assert (=> d!1703587 (validRegex!6670 r!7292)))

(assert (=> d!1703587 (= (matchR!7119 r!7292 s!2326) lt!2164278)))

(declare-fun b!5297049 () Bool)

(declare-fun e!3292585 () Bool)

(declare-fun e!3292581 () Bool)

(assert (=> b!5297049 (= e!3292585 e!3292581)))

(declare-fun res!2246613 () Bool)

(assert (=> b!5297049 (=> (not res!2246613) (not e!3292581))))

(assert (=> b!5297049 (= res!2246613 (not lt!2164278))))

(declare-fun b!5297050 () Bool)

(declare-fun res!2246616 () Bool)

(assert (=> b!5297050 (=> res!2246616 e!3292585)))

(assert (=> b!5297050 (= res!2246616 (not (is-ElementMatch!14934 r!7292)))))

(declare-fun e!3292586 () Bool)

(assert (=> b!5297050 (= e!3292586 e!3292585)))

(declare-fun b!5297051 () Bool)

(declare-fun res!2246615 () Bool)

(declare-fun e!3292583 () Bool)

(assert (=> b!5297051 (=> (not res!2246615) (not e!3292583))))

(declare-fun tail!10449 (List!61103) List!61103)

(assert (=> b!5297051 (= res!2246615 (isEmpty!32941 (tail!10449 s!2326)))))

(declare-fun b!5297052 () Bool)

(declare-fun call!377588 () Bool)

(assert (=> b!5297052 (= e!3292584 (= lt!2164278 call!377588))))

(declare-fun b!5297053 () Bool)

(assert (=> b!5297053 (= e!3292584 e!3292586)))

(declare-fun c!919303 () Bool)

(assert (=> b!5297053 (= c!919303 (is-EmptyLang!14934 r!7292))))

(declare-fun b!5297054 () Bool)

(declare-fun e!3292582 () Bool)

(assert (=> b!5297054 (= e!3292581 e!3292582)))

(declare-fun res!2246614 () Bool)

(assert (=> b!5297054 (=> res!2246614 e!3292582)))

(assert (=> b!5297054 (= res!2246614 call!377588)))

(declare-fun b!5297055 () Bool)

(declare-fun head!11352 (List!61103) C!30138)

(assert (=> b!5297055 (= e!3292582 (not (= (head!11352 s!2326) (c!919246 r!7292))))))

(declare-fun b!5297056 () Bool)

(declare-fun res!2246611 () Bool)

(assert (=> b!5297056 (=> res!2246611 e!3292585)))

(assert (=> b!5297056 (= res!2246611 e!3292583)))

(declare-fun res!2246618 () Bool)

(assert (=> b!5297056 (=> (not res!2246618) (not e!3292583))))

(assert (=> b!5297056 (= res!2246618 lt!2164278)))

(declare-fun b!5297057 () Bool)

(assert (=> b!5297057 (= e!3292586 (not lt!2164278))))

(declare-fun b!5297058 () Bool)

(assert (=> b!5297058 (= e!3292583 (= (head!11352 s!2326) (c!919246 r!7292)))))

(declare-fun b!5297059 () Bool)

(declare-fun res!2246617 () Bool)

(assert (=> b!5297059 (=> (not res!2246617) (not e!3292583))))

(assert (=> b!5297059 (= res!2246617 (not call!377588))))

(declare-fun b!5297060 () Bool)

(declare-fun derivativeStep!4138 (Regex!14934 C!30138) Regex!14934)

(assert (=> b!5297060 (= e!3292587 (matchR!7119 (derivativeStep!4138 r!7292 (head!11352 s!2326)) (tail!10449 s!2326)))))

(declare-fun b!5297061 () Bool)

(assert (=> b!5297061 (= e!3292587 (nullable!5103 r!7292))))

(declare-fun b!5297062 () Bool)

(declare-fun res!2246612 () Bool)

(assert (=> b!5297062 (=> res!2246612 e!3292582)))

(assert (=> b!5297062 (= res!2246612 (not (isEmpty!32941 (tail!10449 s!2326))))))

(declare-fun bm!377583 () Bool)

(assert (=> bm!377583 (= call!377588 (isEmpty!32941 s!2326))))

(assert (= (and d!1703587 c!919301) b!5297061))

(assert (= (and d!1703587 (not c!919301)) b!5297060))

(assert (= (and d!1703587 c!919302) b!5297052))

(assert (= (and d!1703587 (not c!919302)) b!5297053))

(assert (= (and b!5297053 c!919303) b!5297057))

(assert (= (and b!5297053 (not c!919303)) b!5297050))

(assert (= (and b!5297050 (not res!2246616)) b!5297056))

(assert (= (and b!5297056 res!2246618) b!5297059))

(assert (= (and b!5297059 res!2246617) b!5297051))

(assert (= (and b!5297051 res!2246615) b!5297058))

(assert (= (and b!5297056 (not res!2246611)) b!5297049))

(assert (= (and b!5297049 res!2246613) b!5297054))

(assert (= (and b!5297054 (not res!2246614)) b!5297062))

(assert (= (and b!5297062 (not res!2246612)) b!5297055))

(assert (= (or b!5297052 b!5297054 b!5297059) bm!377583))

(declare-fun m!6334416 () Bool)

(assert (=> b!5297058 m!6334416))

(declare-fun m!6334418 () Bool)

(assert (=> b!5297061 m!6334418))

(assert (=> bm!377583 m!6334410))

(declare-fun m!6334420 () Bool)

(assert (=> b!5297051 m!6334420))

(assert (=> b!5297051 m!6334420))

(declare-fun m!6334422 () Bool)

(assert (=> b!5297051 m!6334422))

(assert (=> b!5297062 m!6334420))

(assert (=> b!5297062 m!6334420))

(assert (=> b!5297062 m!6334422))

(assert (=> b!5297055 m!6334416))

(assert (=> b!5297060 m!6334416))

(assert (=> b!5297060 m!6334416))

(declare-fun m!6334424 () Bool)

(assert (=> b!5297060 m!6334424))

(assert (=> b!5297060 m!6334420))

(assert (=> b!5297060 m!6334424))

(assert (=> b!5297060 m!6334420))

(declare-fun m!6334426 () Bool)

(assert (=> b!5297060 m!6334426))

(assert (=> d!1703587 m!6334410))

(assert (=> d!1703587 m!6334040))

(assert (=> b!5296723 d!1703587))

(declare-fun d!1703589 () Bool)

(assert (=> d!1703589 (= (matchR!7119 r!7292 s!2326) (matchRSpec!2037 r!7292 s!2326))))

(declare-fun lt!2164281 () Unit!153254)

(declare-fun choose!39575 (Regex!14934 List!61103) Unit!153254)

(assert (=> d!1703589 (= lt!2164281 (choose!39575 r!7292 s!2326))))

(assert (=> d!1703589 (validRegex!6670 r!7292)))

(assert (=> d!1703589 (= (mainMatchTheorem!2037 r!7292 s!2326) lt!2164281)))

(declare-fun bs!1228547 () Bool)

(assert (= bs!1228547 d!1703589))

(assert (=> bs!1228547 m!6334184))

(assert (=> bs!1228547 m!6334182))

(declare-fun m!6334428 () Bool)

(assert (=> bs!1228547 m!6334428))

(assert (=> bs!1228547 m!6334040))

(assert (=> b!5296723 d!1703589))

(declare-fun d!1703591 () Bool)

(declare-fun e!3292600 () Bool)

(assert (=> d!1703591 e!3292600))

(declare-fun res!2246624 () Bool)

(assert (=> d!1703591 (=> (not res!2246624) (not e!3292600))))

(declare-fun lt!2164284 () Regex!14934)

(assert (=> d!1703591 (= res!2246624 (validRegex!6670 lt!2164284))))

(declare-fun e!3292603 () Regex!14934)

(assert (=> d!1703591 (= lt!2164284 e!3292603)))

(declare-fun c!919313 () Bool)

(declare-fun e!3292602 () Bool)

(assert (=> d!1703591 (= c!919313 e!3292602)))

(declare-fun res!2246623 () Bool)

(assert (=> d!1703591 (=> (not res!2246623) (not e!3292602))))

(assert (=> d!1703591 (= res!2246623 (is-Cons!60977 (unfocusZipperList!376 zl!343)))))

(declare-fun lambda!268682 () Int)

(declare-fun forall!14348 (List!61101 Int) Bool)

(assert (=> d!1703591 (forall!14348 (unfocusZipperList!376 zl!343) lambda!268682)))

(assert (=> d!1703591 (= (generalisedUnion!863 (unfocusZipperList!376 zl!343)) lt!2164284)))

(declare-fun b!5297083 () Bool)

(assert (=> b!5297083 (= e!3292602 (isEmpty!32938 (t!374306 (unfocusZipperList!376 zl!343))))))

(declare-fun b!5297084 () Bool)

(declare-fun e!3292604 () Bool)

(declare-fun head!11353 (List!61101) Regex!14934)

(assert (=> b!5297084 (= e!3292604 (= lt!2164284 (head!11353 (unfocusZipperList!376 zl!343))))))

(declare-fun b!5297085 () Bool)

(declare-fun e!3292605 () Bool)

(declare-fun isEmptyLang!860 (Regex!14934) Bool)

(assert (=> b!5297085 (= e!3292605 (isEmptyLang!860 lt!2164284))))

(declare-fun b!5297086 () Bool)

(declare-fun e!3292601 () Regex!14934)

(assert (=> b!5297086 (= e!3292601 (Union!14934 (h!67425 (unfocusZipperList!376 zl!343)) (generalisedUnion!863 (t!374306 (unfocusZipperList!376 zl!343)))))))

(declare-fun b!5297087 () Bool)

(assert (=> b!5297087 (= e!3292605 e!3292604)))

(declare-fun c!919314 () Bool)

(declare-fun tail!10450 (List!61101) List!61101)

(assert (=> b!5297087 (= c!919314 (isEmpty!32938 (tail!10450 (unfocusZipperList!376 zl!343))))))

(declare-fun b!5297088 () Bool)

(assert (=> b!5297088 (= e!3292603 e!3292601)))

(declare-fun c!919312 () Bool)

(assert (=> b!5297088 (= c!919312 (is-Cons!60977 (unfocusZipperList!376 zl!343)))))

(declare-fun b!5297089 () Bool)

(assert (=> b!5297089 (= e!3292600 e!3292605)))

(declare-fun c!919315 () Bool)

(assert (=> b!5297089 (= c!919315 (isEmpty!32938 (unfocusZipperList!376 zl!343)))))

(declare-fun b!5297090 () Bool)

(assert (=> b!5297090 (= e!3292601 EmptyLang!14934)))

(declare-fun b!5297091 () Bool)

(assert (=> b!5297091 (= e!3292603 (h!67425 (unfocusZipperList!376 zl!343)))))

(declare-fun b!5297092 () Bool)

(declare-fun isUnion!292 (Regex!14934) Bool)

(assert (=> b!5297092 (= e!3292604 (isUnion!292 lt!2164284))))

(assert (= (and d!1703591 res!2246623) b!5297083))

(assert (= (and d!1703591 c!919313) b!5297091))

(assert (= (and d!1703591 (not c!919313)) b!5297088))

(assert (= (and b!5297088 c!919312) b!5297086))

(assert (= (and b!5297088 (not c!919312)) b!5297090))

(assert (= (and d!1703591 res!2246624) b!5297089))

(assert (= (and b!5297089 c!919315) b!5297085))

(assert (= (and b!5297089 (not c!919315)) b!5297087))

(assert (= (and b!5297087 c!919314) b!5297084))

(assert (= (and b!5297087 (not c!919314)) b!5297092))

(declare-fun m!6334430 () Bool)

(assert (=> d!1703591 m!6334430))

(assert (=> d!1703591 m!6334198))

(declare-fun m!6334432 () Bool)

(assert (=> d!1703591 m!6334432))

(assert (=> b!5297084 m!6334198))

(declare-fun m!6334434 () Bool)

(assert (=> b!5297084 m!6334434))

(declare-fun m!6334436 () Bool)

(assert (=> b!5297083 m!6334436))

(declare-fun m!6334438 () Bool)

(assert (=> b!5297092 m!6334438))

(declare-fun m!6334440 () Bool)

(assert (=> b!5297086 m!6334440))

(assert (=> b!5297089 m!6334198))

(declare-fun m!6334442 () Bool)

(assert (=> b!5297089 m!6334442))

(declare-fun m!6334444 () Bool)

(assert (=> b!5297085 m!6334444))

(assert (=> b!5297087 m!6334198))

(declare-fun m!6334446 () Bool)

(assert (=> b!5297087 m!6334446))

(assert (=> b!5297087 m!6334446))

(declare-fun m!6334448 () Bool)

(assert (=> b!5297087 m!6334448))

(assert (=> b!5296724 d!1703591))

(declare-fun bs!1228548 () Bool)

(declare-fun d!1703593 () Bool)

(assert (= bs!1228548 (and d!1703593 d!1703591)))

(declare-fun lambda!268685 () Int)

(assert (=> bs!1228548 (= lambda!268685 lambda!268682)))

(declare-fun lt!2164287 () List!61101)

(assert (=> d!1703593 (forall!14348 lt!2164287 lambda!268685)))

(declare-fun e!3292608 () List!61101)

(assert (=> d!1703593 (= lt!2164287 e!3292608)))

(declare-fun c!919318 () Bool)

(assert (=> d!1703593 (= c!919318 (is-Cons!60978 zl!343))))

(assert (=> d!1703593 (= (unfocusZipperList!376 zl!343) lt!2164287)))

(declare-fun b!5297097 () Bool)

(assert (=> b!5297097 (= e!3292608 (Cons!60977 (generalisedConcat!603 (exprs!4818 (h!67426 zl!343))) (unfocusZipperList!376 (t!374307 zl!343))))))

(declare-fun b!5297098 () Bool)

(assert (=> b!5297098 (= e!3292608 Nil!60977)))

(assert (= (and d!1703593 c!919318) b!5297097))

(assert (= (and d!1703593 (not c!919318)) b!5297098))

(declare-fun m!6334450 () Bool)

(assert (=> d!1703593 m!6334450))

(assert (=> b!5297097 m!6334106))

(declare-fun m!6334452 () Bool)

(assert (=> b!5297097 m!6334452))

(assert (=> b!5296724 d!1703593))

(declare-fun b!5297117 () Bool)

(declare-fun e!3292627 () Bool)

(declare-fun e!3292623 () Bool)

(assert (=> b!5297117 (= e!3292627 e!3292623)))

(declare-fun c!919324 () Bool)

(assert (=> b!5297117 (= c!919324 (is-Star!14934 r!7292))))

(declare-fun bm!377590 () Bool)

(declare-fun call!377596 () Bool)

(declare-fun c!919323 () Bool)

(assert (=> bm!377590 (= call!377596 (validRegex!6670 (ite c!919323 (regOne!30381 r!7292) (regOne!30380 r!7292))))))

(declare-fun b!5297118 () Bool)

(declare-fun e!3292628 () Bool)

(declare-fun call!377597 () Bool)

(assert (=> b!5297118 (= e!3292628 call!377597)))

(declare-fun b!5297119 () Bool)

(declare-fun res!2246636 () Bool)

(declare-fun e!3292629 () Bool)

(assert (=> b!5297119 (=> (not res!2246636) (not e!3292629))))

(assert (=> b!5297119 (= res!2246636 call!377596)))

(declare-fun e!3292625 () Bool)

(assert (=> b!5297119 (= e!3292625 e!3292629)))

(declare-fun bm!377591 () Bool)

(declare-fun call!377595 () Bool)

(assert (=> bm!377591 (= call!377597 call!377595)))

(declare-fun b!5297120 () Bool)

(assert (=> b!5297120 (= e!3292629 call!377597)))

(declare-fun b!5297121 () Bool)

(assert (=> b!5297121 (= e!3292623 e!3292625)))

(assert (=> b!5297121 (= c!919323 (is-Union!14934 r!7292))))

(declare-fun d!1703595 () Bool)

(declare-fun res!2246639 () Bool)

(assert (=> d!1703595 (=> res!2246639 e!3292627)))

(assert (=> d!1703595 (= res!2246639 (is-ElementMatch!14934 r!7292))))

(assert (=> d!1703595 (= (validRegex!6670 r!7292) e!3292627)))

(declare-fun b!5297122 () Bool)

(declare-fun e!3292624 () Bool)

(assert (=> b!5297122 (= e!3292624 call!377595)))

(declare-fun bm!377592 () Bool)

(assert (=> bm!377592 (= call!377595 (validRegex!6670 (ite c!919324 (reg!15263 r!7292) (ite c!919323 (regTwo!30381 r!7292) (regTwo!30380 r!7292)))))))

(declare-fun b!5297123 () Bool)

(assert (=> b!5297123 (= e!3292623 e!3292624)))

(declare-fun res!2246637 () Bool)

(assert (=> b!5297123 (= res!2246637 (not (nullable!5103 (reg!15263 r!7292))))))

(assert (=> b!5297123 (=> (not res!2246637) (not e!3292624))))

(declare-fun b!5297124 () Bool)

(declare-fun res!2246635 () Bool)

(declare-fun e!3292626 () Bool)

(assert (=> b!5297124 (=> res!2246635 e!3292626)))

(assert (=> b!5297124 (= res!2246635 (not (is-Concat!23779 r!7292)))))

(assert (=> b!5297124 (= e!3292625 e!3292626)))

(declare-fun b!5297125 () Bool)

(assert (=> b!5297125 (= e!3292626 e!3292628)))

(declare-fun res!2246638 () Bool)

(assert (=> b!5297125 (=> (not res!2246638) (not e!3292628))))

(assert (=> b!5297125 (= res!2246638 call!377596)))

(assert (= (and d!1703595 (not res!2246639)) b!5297117))

(assert (= (and b!5297117 c!919324) b!5297123))

(assert (= (and b!5297117 (not c!919324)) b!5297121))

(assert (= (and b!5297123 res!2246637) b!5297122))

(assert (= (and b!5297121 c!919323) b!5297119))

(assert (= (and b!5297121 (not c!919323)) b!5297124))

(assert (= (and b!5297119 res!2246636) b!5297120))

(assert (= (and b!5297124 (not res!2246635)) b!5297125))

(assert (= (and b!5297125 res!2246638) b!5297118))

(assert (= (or b!5297120 b!5297118) bm!377591))

(assert (= (or b!5297119 b!5297125) bm!377590))

(assert (= (or b!5297122 bm!377591) bm!377592))

(declare-fun m!6334454 () Bool)

(assert (=> bm!377590 m!6334454))

(declare-fun m!6334456 () Bool)

(assert (=> bm!377592 m!6334456))

(declare-fun m!6334458 () Bool)

(assert (=> b!5297123 m!6334458))

(assert (=> start!558916 d!1703595))

(declare-fun d!1703597 () Bool)

(assert (=> d!1703597 (= (nullable!5103 (regOne!30380 (regOne!30380 r!7292))) (nullableFct!1469 (regOne!30380 (regOne!30380 r!7292))))))

(declare-fun bs!1228549 () Bool)

(assert (= bs!1228549 d!1703597))

(declare-fun m!6334460 () Bool)

(assert (=> bs!1228549 m!6334460))

(assert (=> b!5296745 d!1703597))

(declare-fun e!3292632 () Bool)

(declare-fun d!1703599 () Bool)

(assert (=> d!1703599 (= (matchZipper!1178 (set.union lt!2164120 lt!2164119) (t!374308 s!2326)) e!3292632)))

(declare-fun res!2246642 () Bool)

(assert (=> d!1703599 (=> res!2246642 e!3292632)))

(assert (=> d!1703599 (= res!2246642 (matchZipper!1178 lt!2164120 (t!374308 s!2326)))))

(declare-fun lt!2164290 () Unit!153254)

(declare-fun choose!39576 ((Set Context!8636) (Set Context!8636) List!61103) Unit!153254)

(assert (=> d!1703599 (= lt!2164290 (choose!39576 lt!2164120 lt!2164119 (t!374308 s!2326)))))

(assert (=> d!1703599 (= (lemmaZipperConcatMatchesSameAsBothZippers!171 lt!2164120 lt!2164119 (t!374308 s!2326)) lt!2164290)))

(declare-fun b!5297128 () Bool)

(assert (=> b!5297128 (= e!3292632 (matchZipper!1178 lt!2164119 (t!374308 s!2326)))))

(assert (= (and d!1703599 (not res!2246642)) b!5297128))

(assert (=> d!1703599 m!6334046))

(assert (=> d!1703599 m!6334044))

(declare-fun m!6334462 () Bool)

(assert (=> d!1703599 m!6334462))

(assert (=> b!5297128 m!6334164))

(assert (=> b!5296746 d!1703599))

(declare-fun d!1703601 () Bool)

(declare-fun c!919327 () Bool)

(assert (=> d!1703601 (= c!919327 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292635 () Bool)

(assert (=> d!1703601 (= (matchZipper!1178 lt!2164120 (t!374308 s!2326)) e!3292635)))

(declare-fun b!5297133 () Bool)

(declare-fun nullableZipper!1317 ((Set Context!8636)) Bool)

(assert (=> b!5297133 (= e!3292635 (nullableZipper!1317 lt!2164120))))

(declare-fun b!5297134 () Bool)

(assert (=> b!5297134 (= e!3292635 (matchZipper!1178 (derivationStepZipper!1177 lt!2164120 (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703601 c!919327) b!5297133))

(assert (= (and d!1703601 (not c!919327)) b!5297134))

(declare-fun m!6334464 () Bool)

(assert (=> d!1703601 m!6334464))

(declare-fun m!6334466 () Bool)

(assert (=> b!5297133 m!6334466))

(declare-fun m!6334468 () Bool)

(assert (=> b!5297134 m!6334468))

(assert (=> b!5297134 m!6334468))

(declare-fun m!6334470 () Bool)

(assert (=> b!5297134 m!6334470))

(declare-fun m!6334472 () Bool)

(assert (=> b!5297134 m!6334472))

(assert (=> b!5297134 m!6334470))

(assert (=> b!5297134 m!6334472))

(declare-fun m!6334474 () Bool)

(assert (=> b!5297134 m!6334474))

(assert (=> b!5296746 d!1703601))

(declare-fun d!1703603 () Bool)

(declare-fun c!919328 () Bool)

(assert (=> d!1703603 (= c!919328 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292636 () Bool)

(assert (=> d!1703603 (= (matchZipper!1178 (set.union lt!2164120 lt!2164119) (t!374308 s!2326)) e!3292636)))

(declare-fun b!5297135 () Bool)

(assert (=> b!5297135 (= e!3292636 (nullableZipper!1317 (set.union lt!2164120 lt!2164119)))))

(declare-fun b!5297136 () Bool)

(assert (=> b!5297136 (= e!3292636 (matchZipper!1178 (derivationStepZipper!1177 (set.union lt!2164120 lt!2164119) (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703603 c!919328) b!5297135))

(assert (= (and d!1703603 (not c!919328)) b!5297136))

(assert (=> d!1703603 m!6334464))

(declare-fun m!6334476 () Bool)

(assert (=> b!5297135 m!6334476))

(assert (=> b!5297136 m!6334468))

(assert (=> b!5297136 m!6334468))

(declare-fun m!6334478 () Bool)

(assert (=> b!5297136 m!6334478))

(assert (=> b!5297136 m!6334472))

(assert (=> b!5297136 m!6334478))

(assert (=> b!5297136 m!6334472))

(declare-fun m!6334480 () Bool)

(assert (=> b!5297136 m!6334480))

(assert (=> b!5296746 d!1703603))

(declare-fun d!1703605 () Bool)

(assert (=> d!1703605 (= (flatMap!661 lt!2164107 lambda!268638) (dynLambda!24114 lambda!268638 lt!2164129))))

(declare-fun lt!2164291 () Unit!153254)

(assert (=> d!1703605 (= lt!2164291 (choose!39573 lt!2164107 lt!2164129 lambda!268638))))

(assert (=> d!1703605 (= lt!2164107 (set.insert lt!2164129 (as set.empty (Set Context!8636))))))

(assert (=> d!1703605 (= (lemmaFlatMapOnSingletonSet!193 lt!2164107 lt!2164129 lambda!268638) lt!2164291)))

(declare-fun b_lambda!204191 () Bool)

(assert (=> (not b_lambda!204191) (not d!1703605)))

(declare-fun bs!1228550 () Bool)

(assert (= bs!1228550 d!1703605))

(assert (=> bs!1228550 m!6334060))

(declare-fun m!6334482 () Bool)

(assert (=> bs!1228550 m!6334482))

(declare-fun m!6334484 () Bool)

(assert (=> bs!1228550 m!6334484))

(assert (=> bs!1228550 m!6334056))

(assert (=> b!5296747 d!1703605))

(declare-fun b!5297137 () Bool)

(declare-fun call!377598 () (Set Context!8636))

(declare-fun e!3292637 () (Set Context!8636))

(assert (=> b!5297137 (= e!3292637 (set.union call!377598 (derivationStepZipperUp!306 (Context!8637 (t!374306 (exprs!4818 lt!2164129))) (h!67427 s!2326))))))

(declare-fun b!5297138 () Bool)

(declare-fun e!3292639 () Bool)

(assert (=> b!5297138 (= e!3292639 (nullable!5103 (h!67425 (exprs!4818 lt!2164129))))))

(declare-fun d!1703607 () Bool)

(declare-fun c!919329 () Bool)

(assert (=> d!1703607 (= c!919329 e!3292639)))

(declare-fun res!2246643 () Bool)

(assert (=> d!1703607 (=> (not res!2246643) (not e!3292639))))

(assert (=> d!1703607 (= res!2246643 (is-Cons!60977 (exprs!4818 lt!2164129)))))

(assert (=> d!1703607 (= (derivationStepZipperUp!306 lt!2164129 (h!67427 s!2326)) e!3292637)))

(declare-fun b!5297139 () Bool)

(declare-fun e!3292638 () (Set Context!8636))

(assert (=> b!5297139 (= e!3292637 e!3292638)))

(declare-fun c!919330 () Bool)

(assert (=> b!5297139 (= c!919330 (is-Cons!60977 (exprs!4818 lt!2164129)))))

(declare-fun bm!377593 () Bool)

(assert (=> bm!377593 (= call!377598 (derivationStepZipperDown!382 (h!67425 (exprs!4818 lt!2164129)) (Context!8637 (t!374306 (exprs!4818 lt!2164129))) (h!67427 s!2326)))))

(declare-fun b!5297140 () Bool)

(assert (=> b!5297140 (= e!3292638 (as set.empty (Set Context!8636)))))

(declare-fun b!5297141 () Bool)

(assert (=> b!5297141 (= e!3292638 call!377598)))

(assert (= (and d!1703607 res!2246643) b!5297138))

(assert (= (and d!1703607 c!919329) b!5297137))

(assert (= (and d!1703607 (not c!919329)) b!5297139))

(assert (= (and b!5297139 c!919330) b!5297141))

(assert (= (and b!5297139 (not c!919330)) b!5297140))

(assert (= (or b!5297137 b!5297141) bm!377593))

(declare-fun m!6334486 () Bool)

(assert (=> b!5297137 m!6334486))

(declare-fun m!6334488 () Bool)

(assert (=> b!5297138 m!6334488))

(declare-fun m!6334490 () Bool)

(assert (=> bm!377593 m!6334490))

(assert (=> b!5296747 d!1703607))

(declare-fun d!1703609 () Bool)

(assert (=> d!1703609 (= (flatMap!661 lt!2164107 lambda!268638) (choose!39574 lt!2164107 lambda!268638))))

(declare-fun bs!1228551 () Bool)

(assert (= bs!1228551 d!1703609))

(declare-fun m!6334492 () Bool)

(assert (=> bs!1228551 m!6334492))

(assert (=> b!5296747 d!1703609))

(declare-fun bs!1228552 () Bool)

(declare-fun d!1703611 () Bool)

(assert (= bs!1228552 (and d!1703611 b!5296743)))

(declare-fun lambda!268688 () Int)

(assert (=> bs!1228552 (= lambda!268688 lambda!268638)))

(assert (=> d!1703611 true))

(assert (=> d!1703611 (= (derivationStepZipper!1177 lt!2164107 (h!67427 s!2326)) (flatMap!661 lt!2164107 lambda!268688))))

(declare-fun bs!1228553 () Bool)

(assert (= bs!1228553 d!1703611))

(declare-fun m!6334494 () Bool)

(assert (=> bs!1228553 m!6334494))

(assert (=> b!5296747 d!1703611))

(declare-fun b!5297144 () Bool)

(declare-fun call!377599 () (Set Context!8636))

(declare-fun e!3292640 () (Set Context!8636))

(assert (=> b!5297144 (= e!3292640 (set.union call!377599 (derivationStepZipperUp!306 (Context!8637 (t!374306 (exprs!4818 lt!2164121))) (h!67427 s!2326))))))

(declare-fun b!5297145 () Bool)

(declare-fun e!3292642 () Bool)

(assert (=> b!5297145 (= e!3292642 (nullable!5103 (h!67425 (exprs!4818 lt!2164121))))))

(declare-fun d!1703613 () Bool)

(declare-fun c!919333 () Bool)

(assert (=> d!1703613 (= c!919333 e!3292642)))

(declare-fun res!2246644 () Bool)

(assert (=> d!1703613 (=> (not res!2246644) (not e!3292642))))

(assert (=> d!1703613 (= res!2246644 (is-Cons!60977 (exprs!4818 lt!2164121)))))

(assert (=> d!1703613 (= (derivationStepZipperUp!306 lt!2164121 (h!67427 s!2326)) e!3292640)))

(declare-fun b!5297146 () Bool)

(declare-fun e!3292641 () (Set Context!8636))

(assert (=> b!5297146 (= e!3292640 e!3292641)))

(declare-fun c!919334 () Bool)

(assert (=> b!5297146 (= c!919334 (is-Cons!60977 (exprs!4818 lt!2164121)))))

(declare-fun bm!377594 () Bool)

(assert (=> bm!377594 (= call!377599 (derivationStepZipperDown!382 (h!67425 (exprs!4818 lt!2164121)) (Context!8637 (t!374306 (exprs!4818 lt!2164121))) (h!67427 s!2326)))))

(declare-fun b!5297147 () Bool)

(assert (=> b!5297147 (= e!3292641 (as set.empty (Set Context!8636)))))

(declare-fun b!5297148 () Bool)

(assert (=> b!5297148 (= e!3292641 call!377599)))

(assert (= (and d!1703613 res!2246644) b!5297145))

(assert (= (and d!1703613 c!919333) b!5297144))

(assert (= (and d!1703613 (not c!919333)) b!5297146))

(assert (= (and b!5297146 c!919334) b!5297148))

(assert (= (and b!5297146 (not c!919334)) b!5297147))

(assert (= (or b!5297144 b!5297148) bm!377594))

(declare-fun m!6334496 () Bool)

(assert (=> b!5297144 m!6334496))

(declare-fun m!6334498 () Bool)

(assert (=> b!5297145 m!6334498))

(declare-fun m!6334500 () Bool)

(assert (=> bm!377594 m!6334500))

(assert (=> b!5296747 d!1703613))

(declare-fun d!1703615 () Bool)

(declare-fun c!919335 () Bool)

(assert (=> d!1703615 (= c!919335 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292643 () Bool)

(assert (=> d!1703615 (= (matchZipper!1178 lt!2164131 (t!374308 s!2326)) e!3292643)))

(declare-fun b!5297149 () Bool)

(assert (=> b!5297149 (= e!3292643 (nullableZipper!1317 lt!2164131))))

(declare-fun b!5297150 () Bool)

(assert (=> b!5297150 (= e!3292643 (matchZipper!1178 (derivationStepZipper!1177 lt!2164131 (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703615 c!919335) b!5297149))

(assert (= (and d!1703615 (not c!919335)) b!5297150))

(assert (=> d!1703615 m!6334464))

(declare-fun m!6334502 () Bool)

(assert (=> b!5297149 m!6334502))

(assert (=> b!5297150 m!6334468))

(assert (=> b!5297150 m!6334468))

(declare-fun m!6334504 () Bool)

(assert (=> b!5297150 m!6334504))

(assert (=> b!5297150 m!6334472))

(assert (=> b!5297150 m!6334504))

(assert (=> b!5297150 m!6334472))

(declare-fun m!6334506 () Bool)

(assert (=> b!5297150 m!6334506))

(assert (=> b!5296727 d!1703615))

(declare-fun b!5297169 () Bool)

(declare-fun res!2246659 () Bool)

(declare-fun e!3292658 () Bool)

(assert (=> b!5297169 (=> (not res!2246659) (not e!3292658))))

(declare-fun lt!2164300 () Option!15045)

(declare-fun get!20970 (Option!15045) tuple2!64266)

(assert (=> b!5297169 (= res!2246659 (matchR!7119 lt!2164117 (_2!35436 (get!20970 lt!2164300))))))

(declare-fun b!5297170 () Bool)

(declare-fun e!3292657 () Bool)

(assert (=> b!5297170 (= e!3292657 (matchR!7119 lt!2164117 s!2326))))

(declare-fun b!5297171 () Bool)

(declare-fun ++!13297 (List!61103 List!61103) List!61103)

(assert (=> b!5297171 (= e!3292658 (= (++!13297 (_1!35436 (get!20970 lt!2164300)) (_2!35436 (get!20970 lt!2164300))) s!2326))))

(declare-fun b!5297172 () Bool)

(declare-fun e!3292655 () Option!15045)

(declare-fun e!3292656 () Option!15045)

(assert (=> b!5297172 (= e!3292655 e!3292656)))

(declare-fun c!919341 () Bool)

(assert (=> b!5297172 (= c!919341 (is-Nil!60979 s!2326))))

(declare-fun b!5297173 () Bool)

(declare-fun e!3292654 () Bool)

(assert (=> b!5297173 (= e!3292654 (not (isDefined!11748 lt!2164300)))))

(declare-fun b!5297175 () Bool)

(declare-fun res!2246657 () Bool)

(assert (=> b!5297175 (=> (not res!2246657) (not e!3292658))))

(assert (=> b!5297175 (= res!2246657 (matchR!7119 (regOne!30380 (regOne!30380 r!7292)) (_1!35436 (get!20970 lt!2164300))))))

(declare-fun b!5297176 () Bool)

(assert (=> b!5297176 (= e!3292656 None!15044)))

(declare-fun b!5297177 () Bool)

(declare-fun lt!2164298 () Unit!153254)

(declare-fun lt!2164299 () Unit!153254)

(assert (=> b!5297177 (= lt!2164298 lt!2164299)))

(assert (=> b!5297177 (= (++!13297 (++!13297 Nil!60979 (Cons!60979 (h!67427 s!2326) Nil!60979)) (t!374308 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1712 (List!61103 C!30138 List!61103 List!61103) Unit!153254)

(assert (=> b!5297177 (= lt!2164299 (lemmaMoveElementToOtherListKeepsConcatEq!1712 Nil!60979 (h!67427 s!2326) (t!374308 s!2326) s!2326))))

(assert (=> b!5297177 (= e!3292656 (findConcatSeparation!1459 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 (++!13297 Nil!60979 (Cons!60979 (h!67427 s!2326) Nil!60979)) (t!374308 s!2326) s!2326))))

(declare-fun d!1703617 () Bool)

(assert (=> d!1703617 e!3292654))

(declare-fun res!2246658 () Bool)

(assert (=> d!1703617 (=> res!2246658 e!3292654)))

(assert (=> d!1703617 (= res!2246658 e!3292658)))

(declare-fun res!2246656 () Bool)

(assert (=> d!1703617 (=> (not res!2246656) (not e!3292658))))

(assert (=> d!1703617 (= res!2246656 (isDefined!11748 lt!2164300))))

(assert (=> d!1703617 (= lt!2164300 e!3292655)))

(declare-fun c!919340 () Bool)

(assert (=> d!1703617 (= c!919340 e!3292657)))

(declare-fun res!2246655 () Bool)

(assert (=> d!1703617 (=> (not res!2246655) (not e!3292657))))

(assert (=> d!1703617 (= res!2246655 (matchR!7119 (regOne!30380 (regOne!30380 r!7292)) Nil!60979))))

(assert (=> d!1703617 (validRegex!6670 (regOne!30380 (regOne!30380 r!7292)))))

(assert (=> d!1703617 (= (findConcatSeparation!1459 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 Nil!60979 s!2326 s!2326) lt!2164300)))

(declare-fun b!5297174 () Bool)

(assert (=> b!5297174 (= e!3292655 (Some!15044 (tuple2!64267 Nil!60979 s!2326)))))

(assert (= (and d!1703617 res!2246655) b!5297170))

(assert (= (and d!1703617 c!919340) b!5297174))

(assert (= (and d!1703617 (not c!919340)) b!5297172))

(assert (= (and b!5297172 c!919341) b!5297176))

(assert (= (and b!5297172 (not c!919341)) b!5297177))

(assert (= (and d!1703617 res!2246656) b!5297175))

(assert (= (and b!5297175 res!2246657) b!5297169))

(assert (= (and b!5297169 res!2246659) b!5297171))

(assert (= (and d!1703617 (not res!2246658)) b!5297173))

(declare-fun m!6334508 () Bool)

(assert (=> b!5297169 m!6334508))

(declare-fun m!6334510 () Bool)

(assert (=> b!5297169 m!6334510))

(assert (=> b!5297170 m!6334112))

(declare-fun m!6334512 () Bool)

(assert (=> b!5297177 m!6334512))

(assert (=> b!5297177 m!6334512))

(declare-fun m!6334514 () Bool)

(assert (=> b!5297177 m!6334514))

(declare-fun m!6334516 () Bool)

(assert (=> b!5297177 m!6334516))

(assert (=> b!5297177 m!6334512))

(declare-fun m!6334518 () Bool)

(assert (=> b!5297177 m!6334518))

(assert (=> b!5297175 m!6334508))

(declare-fun m!6334520 () Bool)

(assert (=> b!5297175 m!6334520))

(declare-fun m!6334522 () Bool)

(assert (=> d!1703617 m!6334522))

(declare-fun m!6334524 () Bool)

(assert (=> d!1703617 m!6334524))

(declare-fun m!6334526 () Bool)

(assert (=> d!1703617 m!6334526))

(assert (=> b!5297173 m!6334522))

(assert (=> b!5297171 m!6334508))

(declare-fun m!6334528 () Bool)

(assert (=> b!5297171 m!6334528))

(assert (=> b!5296748 d!1703617))

(declare-fun d!1703619 () Bool)

(declare-fun c!919342 () Bool)

(assert (=> d!1703619 (= c!919342 (isEmpty!32941 s!2326))))

(declare-fun e!3292659 () Bool)

(assert (=> d!1703619 (= (matchZipper!1178 z!1189 s!2326) e!3292659)))

(declare-fun b!5297178 () Bool)

(assert (=> b!5297178 (= e!3292659 (nullableZipper!1317 z!1189))))

(declare-fun b!5297179 () Bool)

(assert (=> b!5297179 (= e!3292659 (matchZipper!1178 (derivationStepZipper!1177 z!1189 (head!11352 s!2326)) (tail!10449 s!2326)))))

(assert (= (and d!1703619 c!919342) b!5297178))

(assert (= (and d!1703619 (not c!919342)) b!5297179))

(assert (=> d!1703619 m!6334410))

(declare-fun m!6334530 () Bool)

(assert (=> b!5297178 m!6334530))

(assert (=> b!5297179 m!6334416))

(assert (=> b!5297179 m!6334416))

(declare-fun m!6334532 () Bool)

(assert (=> b!5297179 m!6334532))

(assert (=> b!5297179 m!6334420))

(assert (=> b!5297179 m!6334532))

(assert (=> b!5297179 m!6334420))

(declare-fun m!6334534 () Bool)

(assert (=> b!5297179 m!6334534))

(assert (=> b!5296748 d!1703619))

(declare-fun d!1703621 () Bool)

(assert (=> d!1703621 (= (matchR!7119 lt!2164117 s!2326) (matchRSpec!2037 lt!2164117 s!2326))))

(declare-fun lt!2164301 () Unit!153254)

(assert (=> d!1703621 (= lt!2164301 (choose!39575 lt!2164117 s!2326))))

(assert (=> d!1703621 (validRegex!6670 lt!2164117)))

(assert (=> d!1703621 (= (mainMatchTheorem!2037 lt!2164117 s!2326) lt!2164301)))

(declare-fun bs!1228554 () Bool)

(assert (= bs!1228554 d!1703621))

(assert (=> bs!1228554 m!6334112))

(assert (=> bs!1228554 m!6334136))

(declare-fun m!6334536 () Bool)

(assert (=> bs!1228554 m!6334536))

(assert (=> bs!1228554 m!6334188))

(assert (=> b!5296748 d!1703621))

(declare-fun bs!1228555 () Bool)

(declare-fun d!1703623 () Bool)

(assert (= bs!1228555 (and d!1703623 b!5297016)))

(declare-fun lambda!268693 () Int)

(assert (=> bs!1228555 (not (= lambda!268693 lambda!268678))))

(declare-fun bs!1228556 () Bool)

(assert (= bs!1228556 (and d!1703623 b!5297013)))

(assert (=> bs!1228556 (not (= lambda!268693 lambda!268679))))

(declare-fun bs!1228557 () Bool)

(assert (= bs!1228557 (and d!1703623 b!5296748)))

(assert (=> bs!1228557 (not (= lambda!268693 lambda!268642))))

(assert (=> bs!1228557 (= lambda!268693 lambda!268639)))

(declare-fun bs!1228558 () Bool)

(assert (= bs!1228558 (and d!1703623 b!5296731)))

(assert (=> bs!1228558 (not (= lambda!268693 lambda!268637))))

(assert (=> bs!1228557 (not (= lambda!268693 lambda!268640))))

(assert (=> bs!1228558 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164117 (regTwo!30380 r!7292))) (= lambda!268693 lambda!268636))))

(assert (=> bs!1228557 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regTwo!30380 (regOne!30380 r!7292))) (= lt!2164117 lt!2164085)) (= lambda!268693 lambda!268641))))

(assert (=> d!1703623 true))

(assert (=> d!1703623 true))

(assert (=> d!1703623 true))

(declare-fun bs!1228559 () Bool)

(assert (= bs!1228559 d!1703623))

(declare-fun lambda!268694 () Int)

(assert (=> bs!1228559 (not (= lambda!268694 lambda!268693))))

(assert (=> bs!1228555 (not (= lambda!268694 lambda!268678))))

(assert (=> bs!1228556 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164117 (regTwo!30380 r!7292))) (= lambda!268694 lambda!268679))))

(assert (=> bs!1228557 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regTwo!30380 (regOne!30380 r!7292))) (= lt!2164117 lt!2164085)) (= lambda!268694 lambda!268642))))

(assert (=> bs!1228557 (not (= lambda!268694 lambda!268639))))

(assert (=> bs!1228558 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164117 (regTwo!30380 r!7292))) (= lambda!268694 lambda!268637))))

(assert (=> bs!1228557 (= lambda!268694 lambda!268640)))

(assert (=> bs!1228558 (not (= lambda!268694 lambda!268636))))

(assert (=> bs!1228557 (not (= lambda!268694 lambda!268641))))

(assert (=> d!1703623 true))

(assert (=> d!1703623 true))

(assert (=> d!1703623 true))

(assert (=> d!1703623 (= (Exists!2115 lambda!268693) (Exists!2115 lambda!268694))))

(declare-fun lt!2164304 () Unit!153254)

(declare-fun choose!39577 (Regex!14934 Regex!14934 List!61103) Unit!153254)

(assert (=> d!1703623 (= lt!2164304 (choose!39577 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 s!2326))))

(assert (=> d!1703623 (validRegex!6670 (regOne!30380 (regOne!30380 r!7292)))))

(assert (=> d!1703623 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!769 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 s!2326) lt!2164304)))

(declare-fun m!6334538 () Bool)

(assert (=> bs!1228559 m!6334538))

(declare-fun m!6334540 () Bool)

(assert (=> bs!1228559 m!6334540))

(declare-fun m!6334542 () Bool)

(assert (=> bs!1228559 m!6334542))

(assert (=> bs!1228559 m!6334526))

(assert (=> b!5296748 d!1703623))

(declare-fun d!1703625 () Bool)

(declare-fun e!3292667 () Bool)

(assert (=> d!1703625 e!3292667))

(declare-fun c!919344 () Bool)

(assert (=> d!1703625 (= c!919344 (is-EmptyExpr!14934 lt!2164092))))

(declare-fun lt!2164305 () Bool)

(declare-fun e!3292670 () Bool)

(assert (=> d!1703625 (= lt!2164305 e!3292670)))

(declare-fun c!919343 () Bool)

(assert (=> d!1703625 (= c!919343 (isEmpty!32941 s!2326))))

(assert (=> d!1703625 (validRegex!6670 lt!2164092)))

(assert (=> d!1703625 (= (matchR!7119 lt!2164092 s!2326) lt!2164305)))

(declare-fun b!5297188 () Bool)

(declare-fun e!3292668 () Bool)

(declare-fun e!3292664 () Bool)

(assert (=> b!5297188 (= e!3292668 e!3292664)))

(declare-fun res!2246670 () Bool)

(assert (=> b!5297188 (=> (not res!2246670) (not e!3292664))))

(assert (=> b!5297188 (= res!2246670 (not lt!2164305))))

(declare-fun b!5297189 () Bool)

(declare-fun res!2246673 () Bool)

(assert (=> b!5297189 (=> res!2246673 e!3292668)))

(assert (=> b!5297189 (= res!2246673 (not (is-ElementMatch!14934 lt!2164092)))))

(declare-fun e!3292669 () Bool)

(assert (=> b!5297189 (= e!3292669 e!3292668)))

(declare-fun b!5297190 () Bool)

(declare-fun res!2246672 () Bool)

(declare-fun e!3292666 () Bool)

(assert (=> b!5297190 (=> (not res!2246672) (not e!3292666))))

(assert (=> b!5297190 (= res!2246672 (isEmpty!32941 (tail!10449 s!2326)))))

(declare-fun b!5297191 () Bool)

(declare-fun call!377600 () Bool)

(assert (=> b!5297191 (= e!3292667 (= lt!2164305 call!377600))))

(declare-fun b!5297192 () Bool)

(assert (=> b!5297192 (= e!3292667 e!3292669)))

(declare-fun c!919345 () Bool)

(assert (=> b!5297192 (= c!919345 (is-EmptyLang!14934 lt!2164092))))

(declare-fun b!5297193 () Bool)

(declare-fun e!3292665 () Bool)

(assert (=> b!5297193 (= e!3292664 e!3292665)))

(declare-fun res!2246671 () Bool)

(assert (=> b!5297193 (=> res!2246671 e!3292665)))

(assert (=> b!5297193 (= res!2246671 call!377600)))

(declare-fun b!5297194 () Bool)

(assert (=> b!5297194 (= e!3292665 (not (= (head!11352 s!2326) (c!919246 lt!2164092))))))

(declare-fun b!5297195 () Bool)

(declare-fun res!2246668 () Bool)

(assert (=> b!5297195 (=> res!2246668 e!3292668)))

(assert (=> b!5297195 (= res!2246668 e!3292666)))

(declare-fun res!2246675 () Bool)

(assert (=> b!5297195 (=> (not res!2246675) (not e!3292666))))

(assert (=> b!5297195 (= res!2246675 lt!2164305)))

(declare-fun b!5297196 () Bool)

(assert (=> b!5297196 (= e!3292669 (not lt!2164305))))

(declare-fun b!5297197 () Bool)

(assert (=> b!5297197 (= e!3292666 (= (head!11352 s!2326) (c!919246 lt!2164092)))))

(declare-fun b!5297198 () Bool)

(declare-fun res!2246674 () Bool)

(assert (=> b!5297198 (=> (not res!2246674) (not e!3292666))))

(assert (=> b!5297198 (= res!2246674 (not call!377600))))

(declare-fun b!5297199 () Bool)

(assert (=> b!5297199 (= e!3292670 (matchR!7119 (derivativeStep!4138 lt!2164092 (head!11352 s!2326)) (tail!10449 s!2326)))))

(declare-fun b!5297200 () Bool)

(assert (=> b!5297200 (= e!3292670 (nullable!5103 lt!2164092))))

(declare-fun b!5297201 () Bool)

(declare-fun res!2246669 () Bool)

(assert (=> b!5297201 (=> res!2246669 e!3292665)))

(assert (=> b!5297201 (= res!2246669 (not (isEmpty!32941 (tail!10449 s!2326))))))

(declare-fun bm!377595 () Bool)

(assert (=> bm!377595 (= call!377600 (isEmpty!32941 s!2326))))

(assert (= (and d!1703625 c!919343) b!5297200))

(assert (= (and d!1703625 (not c!919343)) b!5297199))

(assert (= (and d!1703625 c!919344) b!5297191))

(assert (= (and d!1703625 (not c!919344)) b!5297192))

(assert (= (and b!5297192 c!919345) b!5297196))

(assert (= (and b!5297192 (not c!919345)) b!5297189))

(assert (= (and b!5297189 (not res!2246673)) b!5297195))

(assert (= (and b!5297195 res!2246675) b!5297198))

(assert (= (and b!5297198 res!2246674) b!5297190))

(assert (= (and b!5297190 res!2246672) b!5297197))

(assert (= (and b!5297195 (not res!2246668)) b!5297188))

(assert (= (and b!5297188 res!2246670) b!5297193))

(assert (= (and b!5297193 (not res!2246671)) b!5297201))

(assert (= (and b!5297201 (not res!2246669)) b!5297194))

(assert (= (or b!5297191 b!5297193 b!5297198) bm!377595))

(assert (=> b!5297197 m!6334416))

(declare-fun m!6334544 () Bool)

(assert (=> b!5297200 m!6334544))

(assert (=> bm!377595 m!6334410))

(assert (=> b!5297190 m!6334420))

(assert (=> b!5297190 m!6334420))

(assert (=> b!5297190 m!6334422))

(assert (=> b!5297201 m!6334420))

(assert (=> b!5297201 m!6334420))

(assert (=> b!5297201 m!6334422))

(assert (=> b!5297194 m!6334416))

(assert (=> b!5297199 m!6334416))

(assert (=> b!5297199 m!6334416))

(declare-fun m!6334546 () Bool)

(assert (=> b!5297199 m!6334546))

(assert (=> b!5297199 m!6334420))

(assert (=> b!5297199 m!6334546))

(assert (=> b!5297199 m!6334420))

(declare-fun m!6334548 () Bool)

(assert (=> b!5297199 m!6334548))

(assert (=> d!1703625 m!6334410))

(declare-fun m!6334550 () Bool)

(assert (=> d!1703625 m!6334550))

(assert (=> b!5296748 d!1703625))

(declare-fun d!1703627 () Bool)

(assert (=> d!1703627 (= (matchR!7119 lt!2164092 s!2326) (matchZipper!1178 lt!2164107 s!2326))))

(declare-fun lt!2164308 () Unit!153254)

(declare-fun choose!39578 ((Set Context!8636) List!61102 Regex!14934 List!61103) Unit!153254)

(assert (=> d!1703627 (= lt!2164308 (choose!39578 lt!2164107 lt!2164122 lt!2164092 s!2326))))

(assert (=> d!1703627 (validRegex!6670 lt!2164092)))

(assert (=> d!1703627 (= (theoremZipperRegexEquiv!344 lt!2164107 lt!2164122 lt!2164092 s!2326) lt!2164308)))

(declare-fun bs!1228560 () Bool)

(assert (= bs!1228560 d!1703627))

(assert (=> bs!1228560 m!6334130))

(assert (=> bs!1228560 m!6334142))

(declare-fun m!6334552 () Bool)

(assert (=> bs!1228560 m!6334552))

(assert (=> bs!1228560 m!6334550))

(assert (=> b!5296748 d!1703627))

(declare-fun bs!1228561 () Bool)

(declare-fun d!1703629 () Bool)

(assert (= bs!1228561 (and d!1703629 d!1703623)))

(declare-fun lambda!268695 () Int)

(assert (=> bs!1228561 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 (regOne!30380 r!7292))) (= lt!2164085 lt!2164117)) (= lambda!268695 lambda!268693))))

(declare-fun bs!1228562 () Bool)

(assert (= bs!1228562 (and d!1703629 b!5297016)))

(assert (=> bs!1228562 (not (= lambda!268695 lambda!268678))))

(declare-fun bs!1228563 () Bool)

(assert (= bs!1228563 (and d!1703629 b!5297013)))

(assert (=> bs!1228563 (not (= lambda!268695 lambda!268679))))

(declare-fun bs!1228564 () Bool)

(assert (= bs!1228564 (and d!1703629 b!5296748)))

(assert (=> bs!1228564 (not (= lambda!268695 lambda!268642))))

(assert (=> bs!1228564 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 (regOne!30380 r!7292))) (= lt!2164085 lt!2164117)) (= lambda!268695 lambda!268639))))

(declare-fun bs!1228565 () Bool)

(assert (= bs!1228565 (and d!1703629 b!5296731)))

(assert (=> bs!1228565 (not (= lambda!268695 lambda!268637))))

(assert (=> bs!1228564 (not (= lambda!268695 lambda!268640))))

(assert (=> bs!1228565 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164085 (regTwo!30380 r!7292))) (= lambda!268695 lambda!268636))))

(assert (=> bs!1228564 (= lambda!268695 lambda!268641)))

(assert (=> bs!1228561 (not (= lambda!268695 lambda!268694))))

(assert (=> d!1703629 true))

(assert (=> d!1703629 true))

(assert (=> d!1703629 true))

(declare-fun lambda!268696 () Int)

(assert (=> bs!1228561 (not (= lambda!268696 lambda!268693))))

(assert (=> bs!1228562 (not (= lambda!268696 lambda!268678))))

(assert (=> bs!1228563 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164085 (regTwo!30380 r!7292))) (= lambda!268696 lambda!268679))))

(assert (=> bs!1228564 (= lambda!268696 lambda!268642)))

(assert (=> bs!1228564 (not (= lambda!268696 lambda!268639))))

(assert (=> bs!1228565 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164085 (regTwo!30380 r!7292))) (= lambda!268696 lambda!268637))))

(assert (=> bs!1228564 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 (regOne!30380 r!7292))) (= lt!2164085 lt!2164117)) (= lambda!268696 lambda!268640))))

(assert (=> bs!1228565 (not (= lambda!268696 lambda!268636))))

(assert (=> bs!1228561 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 (regOne!30380 r!7292))) (= lt!2164085 lt!2164117)) (= lambda!268696 lambda!268694))))

(assert (=> bs!1228564 (not (= lambda!268696 lambda!268641))))

(declare-fun bs!1228566 () Bool)

(assert (= bs!1228566 d!1703629))

(assert (=> bs!1228566 (not (= lambda!268696 lambda!268695))))

(assert (=> d!1703629 true))

(assert (=> d!1703629 true))

(assert (=> d!1703629 true))

(assert (=> d!1703629 (= (Exists!2115 lambda!268695) (Exists!2115 lambda!268696))))

(declare-fun lt!2164309 () Unit!153254)

(assert (=> d!1703629 (= lt!2164309 (choose!39577 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 s!2326))))

(assert (=> d!1703629 (validRegex!6670 (regTwo!30380 (regOne!30380 r!7292)))))

(assert (=> d!1703629 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!769 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 s!2326) lt!2164309)))

(declare-fun m!6334554 () Bool)

(assert (=> bs!1228566 m!6334554))

(declare-fun m!6334556 () Bool)

(assert (=> bs!1228566 m!6334556))

(declare-fun m!6334558 () Bool)

(assert (=> bs!1228566 m!6334558))

(declare-fun m!6334560 () Bool)

(assert (=> bs!1228566 m!6334560))

(assert (=> b!5296748 d!1703629))

(declare-fun bs!1228567 () Bool)

(declare-fun d!1703631 () Bool)

(assert (= bs!1228567 (and d!1703631 d!1703591)))

(declare-fun lambda!268699 () Int)

(assert (=> bs!1228567 (= lambda!268699 lambda!268682)))

(declare-fun bs!1228568 () Bool)

(assert (= bs!1228568 (and d!1703631 d!1703593)))

(assert (=> bs!1228568 (= lambda!268699 lambda!268685)))

(declare-fun b!5297222 () Bool)

(declare-fun e!3292683 () Regex!14934)

(assert (=> b!5297222 (= e!3292683 (h!67425 lt!2164089))))

(declare-fun b!5297223 () Bool)

(declare-fun e!3292684 () Bool)

(declare-fun lt!2164312 () Regex!14934)

(declare-fun isEmptyExpr!852 (Regex!14934) Bool)

(assert (=> b!5297223 (= e!3292684 (isEmptyExpr!852 lt!2164312))))

(declare-fun b!5297224 () Bool)

(declare-fun e!3292687 () Bool)

(declare-fun isConcat!375 (Regex!14934) Bool)

(assert (=> b!5297224 (= e!3292687 (isConcat!375 lt!2164312))))

(declare-fun b!5297225 () Bool)

(assert (=> b!5297225 (= e!3292687 (= lt!2164312 (head!11353 lt!2164089)))))

(declare-fun e!3292686 () Bool)

(assert (=> d!1703631 e!3292686))

(declare-fun res!2246681 () Bool)

(assert (=> d!1703631 (=> (not res!2246681) (not e!3292686))))

(assert (=> d!1703631 (= res!2246681 (validRegex!6670 lt!2164312))))

(assert (=> d!1703631 (= lt!2164312 e!3292683)))

(declare-fun c!919357 () Bool)

(declare-fun e!3292688 () Bool)

(assert (=> d!1703631 (= c!919357 e!3292688)))

(declare-fun res!2246680 () Bool)

(assert (=> d!1703631 (=> (not res!2246680) (not e!3292688))))

(assert (=> d!1703631 (= res!2246680 (is-Cons!60977 lt!2164089))))

(assert (=> d!1703631 (forall!14348 lt!2164089 lambda!268699)))

(assert (=> d!1703631 (= (generalisedConcat!603 lt!2164089) lt!2164312)))

(declare-fun b!5297226 () Bool)

(assert (=> b!5297226 (= e!3292688 (isEmpty!32938 (t!374306 lt!2164089)))))

(declare-fun b!5297227 () Bool)

(declare-fun e!3292685 () Regex!14934)

(assert (=> b!5297227 (= e!3292685 (Concat!23779 (h!67425 lt!2164089) (generalisedConcat!603 (t!374306 lt!2164089))))))

(declare-fun b!5297228 () Bool)

(assert (=> b!5297228 (= e!3292686 e!3292684)))

(declare-fun c!919356 () Bool)

(assert (=> b!5297228 (= c!919356 (isEmpty!32938 lt!2164089))))

(declare-fun b!5297229 () Bool)

(assert (=> b!5297229 (= e!3292684 e!3292687)))

(declare-fun c!919354 () Bool)

(assert (=> b!5297229 (= c!919354 (isEmpty!32938 (tail!10450 lt!2164089)))))

(declare-fun b!5297230 () Bool)

(assert (=> b!5297230 (= e!3292685 EmptyExpr!14934)))

(declare-fun b!5297231 () Bool)

(assert (=> b!5297231 (= e!3292683 e!3292685)))

(declare-fun c!919355 () Bool)

(assert (=> b!5297231 (= c!919355 (is-Cons!60977 lt!2164089))))

(assert (= (and d!1703631 res!2246680) b!5297226))

(assert (= (and d!1703631 c!919357) b!5297222))

(assert (= (and d!1703631 (not c!919357)) b!5297231))

(assert (= (and b!5297231 c!919355) b!5297227))

(assert (= (and b!5297231 (not c!919355)) b!5297230))

(assert (= (and d!1703631 res!2246681) b!5297228))

(assert (= (and b!5297228 c!919356) b!5297223))

(assert (= (and b!5297228 (not c!919356)) b!5297229))

(assert (= (and b!5297229 c!919354) b!5297225))

(assert (= (and b!5297229 (not c!919354)) b!5297224))

(declare-fun m!6334562 () Bool)

(assert (=> b!5297225 m!6334562))

(declare-fun m!6334564 () Bool)

(assert (=> b!5297224 m!6334564))

(declare-fun m!6334566 () Bool)

(assert (=> b!5297223 m!6334566))

(declare-fun m!6334568 () Bool)

(assert (=> b!5297227 m!6334568))

(declare-fun m!6334570 () Bool)

(assert (=> b!5297226 m!6334570))

(declare-fun m!6334572 () Bool)

(assert (=> b!5297229 m!6334572))

(assert (=> b!5297229 m!6334572))

(declare-fun m!6334574 () Bool)

(assert (=> b!5297229 m!6334574))

(declare-fun m!6334576 () Bool)

(assert (=> b!5297228 m!6334576))

(declare-fun m!6334578 () Bool)

(assert (=> d!1703631 m!6334578))

(declare-fun m!6334580 () Bool)

(assert (=> d!1703631 m!6334580))

(assert (=> b!5296748 d!1703631))

(declare-fun d!1703633 () Bool)

(declare-fun c!919358 () Bool)

(assert (=> d!1703633 (= c!919358 (isEmpty!32941 s!2326))))

(declare-fun e!3292689 () Bool)

(assert (=> d!1703633 (= (matchZipper!1178 lt!2164107 s!2326) e!3292689)))

(declare-fun b!5297232 () Bool)

(assert (=> b!5297232 (= e!3292689 (nullableZipper!1317 lt!2164107))))

(declare-fun b!5297233 () Bool)

(assert (=> b!5297233 (= e!3292689 (matchZipper!1178 (derivationStepZipper!1177 lt!2164107 (head!11352 s!2326)) (tail!10449 s!2326)))))

(assert (= (and d!1703633 c!919358) b!5297232))

(assert (= (and d!1703633 (not c!919358)) b!5297233))

(assert (=> d!1703633 m!6334410))

(declare-fun m!6334582 () Bool)

(assert (=> b!5297232 m!6334582))

(assert (=> b!5297233 m!6334416))

(assert (=> b!5297233 m!6334416))

(declare-fun m!6334584 () Bool)

(assert (=> b!5297233 m!6334584))

(assert (=> b!5297233 m!6334420))

(assert (=> b!5297233 m!6334584))

(assert (=> b!5297233 m!6334420))

(declare-fun m!6334586 () Bool)

(assert (=> b!5297233 m!6334586))

(assert (=> b!5296748 d!1703633))

(declare-fun b!5297234 () Bool)

(declare-fun res!2246686 () Bool)

(declare-fun e!3292694 () Bool)

(assert (=> b!5297234 (=> (not res!2246686) (not e!3292694))))

(declare-fun lt!2164315 () Option!15045)

(assert (=> b!5297234 (= res!2246686 (matchR!7119 lt!2164085 (_2!35436 (get!20970 lt!2164315))))))

(declare-fun b!5297235 () Bool)

(declare-fun e!3292693 () Bool)

(assert (=> b!5297235 (= e!3292693 (matchR!7119 lt!2164085 s!2326))))

(declare-fun b!5297236 () Bool)

(assert (=> b!5297236 (= e!3292694 (= (++!13297 (_1!35436 (get!20970 lt!2164315)) (_2!35436 (get!20970 lt!2164315))) s!2326))))

(declare-fun b!5297237 () Bool)

(declare-fun e!3292691 () Option!15045)

(declare-fun e!3292692 () Option!15045)

(assert (=> b!5297237 (= e!3292691 e!3292692)))

(declare-fun c!919360 () Bool)

(assert (=> b!5297237 (= c!919360 (is-Nil!60979 s!2326))))

(declare-fun b!5297238 () Bool)

(declare-fun e!3292690 () Bool)

(assert (=> b!5297238 (= e!3292690 (not (isDefined!11748 lt!2164315)))))

(declare-fun b!5297240 () Bool)

(declare-fun res!2246684 () Bool)

(assert (=> b!5297240 (=> (not res!2246684) (not e!3292694))))

(assert (=> b!5297240 (= res!2246684 (matchR!7119 (regTwo!30380 (regOne!30380 r!7292)) (_1!35436 (get!20970 lt!2164315))))))

(declare-fun b!5297241 () Bool)

(assert (=> b!5297241 (= e!3292692 None!15044)))

(declare-fun b!5297242 () Bool)

(declare-fun lt!2164313 () Unit!153254)

(declare-fun lt!2164314 () Unit!153254)

(assert (=> b!5297242 (= lt!2164313 lt!2164314)))

(assert (=> b!5297242 (= (++!13297 (++!13297 Nil!60979 (Cons!60979 (h!67427 s!2326) Nil!60979)) (t!374308 s!2326)) s!2326)))

(assert (=> b!5297242 (= lt!2164314 (lemmaMoveElementToOtherListKeepsConcatEq!1712 Nil!60979 (h!67427 s!2326) (t!374308 s!2326) s!2326))))

(assert (=> b!5297242 (= e!3292692 (findConcatSeparation!1459 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 (++!13297 Nil!60979 (Cons!60979 (h!67427 s!2326) Nil!60979)) (t!374308 s!2326) s!2326))))

(declare-fun d!1703635 () Bool)

(assert (=> d!1703635 e!3292690))

(declare-fun res!2246685 () Bool)

(assert (=> d!1703635 (=> res!2246685 e!3292690)))

(assert (=> d!1703635 (= res!2246685 e!3292694)))

(declare-fun res!2246683 () Bool)

(assert (=> d!1703635 (=> (not res!2246683) (not e!3292694))))

(assert (=> d!1703635 (= res!2246683 (isDefined!11748 lt!2164315))))

(assert (=> d!1703635 (= lt!2164315 e!3292691)))

(declare-fun c!919359 () Bool)

(assert (=> d!1703635 (= c!919359 e!3292693)))

(declare-fun res!2246682 () Bool)

(assert (=> d!1703635 (=> (not res!2246682) (not e!3292693))))

(assert (=> d!1703635 (= res!2246682 (matchR!7119 (regTwo!30380 (regOne!30380 r!7292)) Nil!60979))))

(assert (=> d!1703635 (validRegex!6670 (regTwo!30380 (regOne!30380 r!7292)))))

(assert (=> d!1703635 (= (findConcatSeparation!1459 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 Nil!60979 s!2326 s!2326) lt!2164315)))

(declare-fun b!5297239 () Bool)

(assert (=> b!5297239 (= e!3292691 (Some!15044 (tuple2!64267 Nil!60979 s!2326)))))

(assert (= (and d!1703635 res!2246682) b!5297235))

(assert (= (and d!1703635 c!919359) b!5297239))

(assert (= (and d!1703635 (not c!919359)) b!5297237))

(assert (= (and b!5297237 c!919360) b!5297241))

(assert (= (and b!5297237 (not c!919360)) b!5297242))

(assert (= (and d!1703635 res!2246683) b!5297240))

(assert (= (and b!5297240 res!2246684) b!5297234))

(assert (= (and b!5297234 res!2246686) b!5297236))

(assert (= (and d!1703635 (not res!2246685)) b!5297238))

(declare-fun m!6334588 () Bool)

(assert (=> b!5297234 m!6334588))

(declare-fun m!6334590 () Bool)

(assert (=> b!5297234 m!6334590))

(declare-fun m!6334592 () Bool)

(assert (=> b!5297235 m!6334592))

(assert (=> b!5297242 m!6334512))

(assert (=> b!5297242 m!6334512))

(assert (=> b!5297242 m!6334514))

(assert (=> b!5297242 m!6334516))

(assert (=> b!5297242 m!6334512))

(declare-fun m!6334594 () Bool)

(assert (=> b!5297242 m!6334594))

(assert (=> b!5297240 m!6334588))

(declare-fun m!6334596 () Bool)

(assert (=> b!5297240 m!6334596))

(declare-fun m!6334598 () Bool)

(assert (=> d!1703635 m!6334598))

(declare-fun m!6334600 () Bool)

(assert (=> d!1703635 m!6334600))

(assert (=> d!1703635 m!6334560))

(assert (=> b!5297238 m!6334598))

(assert (=> b!5297236 m!6334588))

(declare-fun m!6334602 () Bool)

(assert (=> b!5297236 m!6334602))

(assert (=> b!5296748 d!1703635))

(declare-fun d!1703637 () Bool)

(assert (=> d!1703637 (= (matchR!7119 lt!2164092 s!2326) (matchRSpec!2037 lt!2164092 s!2326))))

(declare-fun lt!2164316 () Unit!153254)

(assert (=> d!1703637 (= lt!2164316 (choose!39575 lt!2164092 s!2326))))

(assert (=> d!1703637 (validRegex!6670 lt!2164092)))

(assert (=> d!1703637 (= (mainMatchTheorem!2037 lt!2164092 s!2326) lt!2164316)))

(declare-fun bs!1228569 () Bool)

(assert (= bs!1228569 d!1703637))

(assert (=> bs!1228569 m!6334130))

(assert (=> bs!1228569 m!6334144))

(declare-fun m!6334604 () Bool)

(assert (=> bs!1228569 m!6334604))

(assert (=> bs!1228569 m!6334550))

(assert (=> b!5296748 d!1703637))

(declare-fun bs!1228570 () Bool)

(declare-fun b!5297249 () Bool)

(assert (= bs!1228570 (and b!5297249 d!1703629)))

(declare-fun lambda!268700 () Int)

(assert (=> bs!1228570 (not (= lambda!268700 lambda!268696))))

(declare-fun bs!1228571 () Bool)

(assert (= bs!1228571 (and b!5297249 d!1703623)))

(assert (=> bs!1228571 (not (= lambda!268700 lambda!268693))))

(declare-fun bs!1228572 () Bool)

(assert (= bs!1228572 (and b!5297249 b!5297016)))

(assert (=> bs!1228572 (= (and (= (reg!15263 lt!2164117) (reg!15263 r!7292)) (= lt!2164117 r!7292)) (= lambda!268700 lambda!268678))))

(declare-fun bs!1228573 () Bool)

(assert (= bs!1228573 (and b!5297249 b!5297013)))

(assert (=> bs!1228573 (not (= lambda!268700 lambda!268679))))

(declare-fun bs!1228574 () Bool)

(assert (= bs!1228574 (and b!5297249 b!5296748)))

(assert (=> bs!1228574 (not (= lambda!268700 lambda!268642))))

(assert (=> bs!1228574 (not (= lambda!268700 lambda!268639))))

(declare-fun bs!1228575 () Bool)

(assert (= bs!1228575 (and b!5297249 b!5296731)))

(assert (=> bs!1228575 (not (= lambda!268700 lambda!268637))))

(assert (=> bs!1228574 (not (= lambda!268700 lambda!268640))))

(assert (=> bs!1228575 (not (= lambda!268700 lambda!268636))))

(assert (=> bs!1228571 (not (= lambda!268700 lambda!268694))))

(assert (=> bs!1228574 (not (= lambda!268700 lambda!268641))))

(assert (=> bs!1228570 (not (= lambda!268700 lambda!268695))))

(assert (=> b!5297249 true))

(assert (=> b!5297249 true))

(declare-fun bs!1228576 () Bool)

(declare-fun b!5297246 () Bool)

(assert (= bs!1228576 (and b!5297246 d!1703629)))

(declare-fun lambda!268701 () Int)

(assert (=> bs!1228576 (= (and (= (regOne!30380 lt!2164117) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 lt!2164117) lt!2164085)) (= lambda!268701 lambda!268696))))

(declare-fun bs!1228577 () Bool)

(assert (= bs!1228577 (and b!5297246 d!1703623)))

(assert (=> bs!1228577 (not (= lambda!268701 lambda!268693))))

(declare-fun bs!1228578 () Bool)

(assert (= bs!1228578 (and b!5297246 b!5297016)))

(assert (=> bs!1228578 (not (= lambda!268701 lambda!268678))))

(declare-fun bs!1228579 () Bool)

(assert (= bs!1228579 (and b!5297246 b!5297013)))

(assert (=> bs!1228579 (= (and (= (regOne!30380 lt!2164117) (regOne!30380 r!7292)) (= (regTwo!30380 lt!2164117) (regTwo!30380 r!7292))) (= lambda!268701 lambda!268679))))

(declare-fun bs!1228580 () Bool)

(assert (= bs!1228580 (and b!5297246 b!5296748)))

(assert (=> bs!1228580 (= (and (= (regOne!30380 lt!2164117) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 lt!2164117) lt!2164085)) (= lambda!268701 lambda!268642))))

(assert (=> bs!1228580 (not (= lambda!268701 lambda!268639))))

(declare-fun bs!1228581 () Bool)

(assert (= bs!1228581 (and b!5297246 b!5296731)))

(assert (=> bs!1228581 (= (and (= (regOne!30380 lt!2164117) (regOne!30380 r!7292)) (= (regTwo!30380 lt!2164117) (regTwo!30380 r!7292))) (= lambda!268701 lambda!268637))))

(declare-fun bs!1228582 () Bool)

(assert (= bs!1228582 (and b!5297246 b!5297249)))

(assert (=> bs!1228582 (not (= lambda!268701 lambda!268700))))

(assert (=> bs!1228580 (= (and (= (regOne!30380 lt!2164117) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 lt!2164117) lt!2164117)) (= lambda!268701 lambda!268640))))

(assert (=> bs!1228581 (not (= lambda!268701 lambda!268636))))

(assert (=> bs!1228577 (= (and (= (regOne!30380 lt!2164117) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 lt!2164117) lt!2164117)) (= lambda!268701 lambda!268694))))

(assert (=> bs!1228580 (not (= lambda!268701 lambda!268641))))

(assert (=> bs!1228576 (not (= lambda!268701 lambda!268695))))

(assert (=> b!5297246 true))

(assert (=> b!5297246 true))

(declare-fun bm!377596 () Bool)

(declare-fun call!377601 () Bool)

(declare-fun c!919364 () Bool)

(assert (=> bm!377596 (= call!377601 (Exists!2115 (ite c!919364 lambda!268700 lambda!268701)))))

(declare-fun b!5297243 () Bool)

(declare-fun e!3292698 () Bool)

(assert (=> b!5297243 (= e!3292698 (= s!2326 (Cons!60979 (c!919246 lt!2164117) Nil!60979)))))

(declare-fun b!5297244 () Bool)

(declare-fun e!3292700 () Bool)

(declare-fun call!377602 () Bool)

(assert (=> b!5297244 (= e!3292700 call!377602)))

(declare-fun b!5297245 () Bool)

(declare-fun e!3292696 () Bool)

(assert (=> b!5297245 (= e!3292700 e!3292696)))

(declare-fun res!2246688 () Bool)

(assert (=> b!5297245 (= res!2246688 (not (is-EmptyLang!14934 lt!2164117)))))

(assert (=> b!5297245 (=> (not res!2246688) (not e!3292696))))

(declare-fun e!3292697 () Bool)

(assert (=> b!5297246 (= e!3292697 call!377601)))

(declare-fun b!5297247 () Bool)

(declare-fun e!3292701 () Bool)

(assert (=> b!5297247 (= e!3292701 e!3292697)))

(assert (=> b!5297247 (= c!919364 (is-Star!14934 lt!2164117))))

(declare-fun d!1703639 () Bool)

(declare-fun c!919361 () Bool)

(assert (=> d!1703639 (= c!919361 (is-EmptyExpr!14934 lt!2164117))))

(assert (=> d!1703639 (= (matchRSpec!2037 lt!2164117 s!2326) e!3292700)))

(declare-fun b!5297248 () Bool)

(declare-fun c!919363 () Bool)

(assert (=> b!5297248 (= c!919363 (is-Union!14934 lt!2164117))))

(assert (=> b!5297248 (= e!3292698 e!3292701)))

(declare-fun e!3292695 () Bool)

(assert (=> b!5297249 (= e!3292695 call!377601)))

(declare-fun b!5297250 () Bool)

(declare-fun c!919362 () Bool)

(assert (=> b!5297250 (= c!919362 (is-ElementMatch!14934 lt!2164117))))

(assert (=> b!5297250 (= e!3292696 e!3292698)))

(declare-fun b!5297251 () Bool)

(declare-fun res!2246689 () Bool)

(assert (=> b!5297251 (=> res!2246689 e!3292695)))

(assert (=> b!5297251 (= res!2246689 call!377602)))

(assert (=> b!5297251 (= e!3292697 e!3292695)))

(declare-fun bm!377597 () Bool)

(assert (=> bm!377597 (= call!377602 (isEmpty!32941 s!2326))))

(declare-fun b!5297252 () Bool)

(declare-fun e!3292699 () Bool)

(assert (=> b!5297252 (= e!3292699 (matchRSpec!2037 (regTwo!30381 lt!2164117) s!2326))))

(declare-fun b!5297253 () Bool)

(assert (=> b!5297253 (= e!3292701 e!3292699)))

(declare-fun res!2246687 () Bool)

(assert (=> b!5297253 (= res!2246687 (matchRSpec!2037 (regOne!30381 lt!2164117) s!2326))))

(assert (=> b!5297253 (=> res!2246687 e!3292699)))

(assert (= (and d!1703639 c!919361) b!5297244))

(assert (= (and d!1703639 (not c!919361)) b!5297245))

(assert (= (and b!5297245 res!2246688) b!5297250))

(assert (= (and b!5297250 c!919362) b!5297243))

(assert (= (and b!5297250 (not c!919362)) b!5297248))

(assert (= (and b!5297248 c!919363) b!5297253))

(assert (= (and b!5297248 (not c!919363)) b!5297247))

(assert (= (and b!5297253 (not res!2246687)) b!5297252))

(assert (= (and b!5297247 c!919364) b!5297251))

(assert (= (and b!5297247 (not c!919364)) b!5297246))

(assert (= (and b!5297251 (not res!2246689)) b!5297249))

(assert (= (or b!5297249 b!5297246) bm!377596))

(assert (= (or b!5297244 b!5297251) bm!377597))

(declare-fun m!6334606 () Bool)

(assert (=> bm!377596 m!6334606))

(assert (=> bm!377597 m!6334410))

(declare-fun m!6334608 () Bool)

(assert (=> b!5297252 m!6334608))

(declare-fun m!6334610 () Bool)

(assert (=> b!5297253 m!6334610))

(assert (=> b!5296748 d!1703639))

(declare-fun bs!1228583 () Bool)

(declare-fun d!1703641 () Bool)

(assert (= bs!1228583 (and d!1703641 d!1703629)))

(declare-fun lambda!268704 () Int)

(assert (=> bs!1228583 (not (= lambda!268704 lambda!268696))))

(declare-fun bs!1228584 () Bool)

(assert (= bs!1228584 (and d!1703641 d!1703623)))

(assert (=> bs!1228584 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 (regOne!30380 r!7292))) (= lt!2164085 lt!2164117)) (= lambda!268704 lambda!268693))))

(declare-fun bs!1228585 () Bool)

(assert (= bs!1228585 (and d!1703641 b!5297016)))

(assert (=> bs!1228585 (not (= lambda!268704 lambda!268678))))

(declare-fun bs!1228586 () Bool)

(assert (= bs!1228586 (and d!1703641 b!5297013)))

(assert (=> bs!1228586 (not (= lambda!268704 lambda!268679))))

(declare-fun bs!1228587 () Bool)

(assert (= bs!1228587 (and d!1703641 b!5296748)))

(assert (=> bs!1228587 (not (= lambda!268704 lambda!268642))))

(assert (=> bs!1228587 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 (regOne!30380 r!7292))) (= lt!2164085 lt!2164117)) (= lambda!268704 lambda!268639))))

(declare-fun bs!1228588 () Bool)

(assert (= bs!1228588 (and d!1703641 b!5296731)))

(assert (=> bs!1228588 (not (= lambda!268704 lambda!268637))))

(declare-fun bs!1228589 () Bool)

(assert (= bs!1228589 (and d!1703641 b!5297249)))

(assert (=> bs!1228589 (not (= lambda!268704 lambda!268700))))

(assert (=> bs!1228587 (not (= lambda!268704 lambda!268640))))

(declare-fun bs!1228590 () Bool)

(assert (= bs!1228590 (and d!1703641 b!5297246)))

(assert (=> bs!1228590 (not (= lambda!268704 lambda!268701))))

(assert (=> bs!1228588 (= (and (= (regTwo!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164085 (regTwo!30380 r!7292))) (= lambda!268704 lambda!268636))))

(assert (=> bs!1228584 (not (= lambda!268704 lambda!268694))))

(assert (=> bs!1228587 (= lambda!268704 lambda!268641)))

(assert (=> bs!1228583 (= lambda!268704 lambda!268695)))

(assert (=> d!1703641 true))

(assert (=> d!1703641 true))

(assert (=> d!1703641 true))

(assert (=> d!1703641 (= (isDefined!11748 (findConcatSeparation!1459 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 Nil!60979 s!2326 s!2326)) (Exists!2115 lambda!268704))))

(declare-fun lt!2164319 () Unit!153254)

(declare-fun choose!39579 (Regex!14934 Regex!14934 List!61103) Unit!153254)

(assert (=> d!1703641 (= lt!2164319 (choose!39579 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 s!2326))))

(assert (=> d!1703641 (validRegex!6670 (regTwo!30380 (regOne!30380 r!7292)))))

(assert (=> d!1703641 (= (lemmaFindConcatSeparationEquivalentToExists!1223 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 s!2326) lt!2164319)))

(declare-fun bs!1228591 () Bool)

(assert (= bs!1228591 d!1703641))

(assert (=> bs!1228591 m!6334560))

(assert (=> bs!1228591 m!6334132))

(declare-fun m!6334612 () Bool)

(assert (=> bs!1228591 m!6334612))

(declare-fun m!6334614 () Bool)

(assert (=> bs!1228591 m!6334614))

(assert (=> bs!1228591 m!6334132))

(assert (=> bs!1228591 m!6334158))

(assert (=> b!5296748 d!1703641))

(declare-fun bs!1228592 () Bool)

(declare-fun d!1703643 () Bool)

(assert (= bs!1228592 (and d!1703643 d!1703591)))

(declare-fun lambda!268705 () Int)

(assert (=> bs!1228592 (= lambda!268705 lambda!268682)))

(declare-fun bs!1228593 () Bool)

(assert (= bs!1228593 (and d!1703643 d!1703593)))

(assert (=> bs!1228593 (= lambda!268705 lambda!268685)))

(declare-fun bs!1228594 () Bool)

(assert (= bs!1228594 (and d!1703643 d!1703631)))

(assert (=> bs!1228594 (= lambda!268705 lambda!268699)))

(declare-fun b!5297258 () Bool)

(declare-fun e!3292704 () Regex!14934)

(assert (=> b!5297258 (= e!3292704 (h!67425 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun b!5297259 () Bool)

(declare-fun e!3292705 () Bool)

(declare-fun lt!2164320 () Regex!14934)

(assert (=> b!5297259 (= e!3292705 (isEmptyExpr!852 lt!2164320))))

(declare-fun b!5297260 () Bool)

(declare-fun e!3292708 () Bool)

(assert (=> b!5297260 (= e!3292708 (isConcat!375 lt!2164320))))

(declare-fun b!5297261 () Bool)

(assert (=> b!5297261 (= e!3292708 (= lt!2164320 (head!11353 (t!374306 (exprs!4818 (h!67426 zl!343))))))))

(declare-fun e!3292707 () Bool)

(assert (=> d!1703643 e!3292707))

(declare-fun res!2246695 () Bool)

(assert (=> d!1703643 (=> (not res!2246695) (not e!3292707))))

(assert (=> d!1703643 (= res!2246695 (validRegex!6670 lt!2164320))))

(assert (=> d!1703643 (= lt!2164320 e!3292704)))

(declare-fun c!919368 () Bool)

(declare-fun e!3292709 () Bool)

(assert (=> d!1703643 (= c!919368 e!3292709)))

(declare-fun res!2246694 () Bool)

(assert (=> d!1703643 (=> (not res!2246694) (not e!3292709))))

(assert (=> d!1703643 (= res!2246694 (is-Cons!60977 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(assert (=> d!1703643 (forall!14348 (t!374306 (exprs!4818 (h!67426 zl!343))) lambda!268705)))

(assert (=> d!1703643 (= (generalisedConcat!603 (t!374306 (exprs!4818 (h!67426 zl!343)))) lt!2164320)))

(declare-fun b!5297262 () Bool)

(assert (=> b!5297262 (= e!3292709 (isEmpty!32938 (t!374306 (t!374306 (exprs!4818 (h!67426 zl!343))))))))

(declare-fun b!5297263 () Bool)

(declare-fun e!3292706 () Regex!14934)

(assert (=> b!5297263 (= e!3292706 (Concat!23779 (h!67425 (t!374306 (exprs!4818 (h!67426 zl!343)))) (generalisedConcat!603 (t!374306 (t!374306 (exprs!4818 (h!67426 zl!343)))))))))

(declare-fun b!5297264 () Bool)

(assert (=> b!5297264 (= e!3292707 e!3292705)))

(declare-fun c!919367 () Bool)

(assert (=> b!5297264 (= c!919367 (isEmpty!32938 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun b!5297265 () Bool)

(assert (=> b!5297265 (= e!3292705 e!3292708)))

(declare-fun c!919365 () Bool)

(assert (=> b!5297265 (= c!919365 (isEmpty!32938 (tail!10450 (t!374306 (exprs!4818 (h!67426 zl!343))))))))

(declare-fun b!5297266 () Bool)

(assert (=> b!5297266 (= e!3292706 EmptyExpr!14934)))

(declare-fun b!5297267 () Bool)

(assert (=> b!5297267 (= e!3292704 e!3292706)))

(declare-fun c!919366 () Bool)

(assert (=> b!5297267 (= c!919366 (is-Cons!60977 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(assert (= (and d!1703643 res!2246694) b!5297262))

(assert (= (and d!1703643 c!919368) b!5297258))

(assert (= (and d!1703643 (not c!919368)) b!5297267))

(assert (= (and b!5297267 c!919366) b!5297263))

(assert (= (and b!5297267 (not c!919366)) b!5297266))

(assert (= (and d!1703643 res!2246695) b!5297264))

(assert (= (and b!5297264 c!919367) b!5297259))

(assert (= (and b!5297264 (not c!919367)) b!5297265))

(assert (= (and b!5297265 c!919365) b!5297261))

(assert (= (and b!5297265 (not c!919365)) b!5297260))

(declare-fun m!6334616 () Bool)

(assert (=> b!5297261 m!6334616))

(declare-fun m!6334618 () Bool)

(assert (=> b!5297260 m!6334618))

(declare-fun m!6334620 () Bool)

(assert (=> b!5297259 m!6334620))

(declare-fun m!6334622 () Bool)

(assert (=> b!5297263 m!6334622))

(declare-fun m!6334624 () Bool)

(assert (=> b!5297262 m!6334624))

(declare-fun m!6334626 () Bool)

(assert (=> b!5297265 m!6334626))

(assert (=> b!5297265 m!6334626))

(declare-fun m!6334628 () Bool)

(assert (=> b!5297265 m!6334628))

(assert (=> b!5297264 m!6334196))

(declare-fun m!6334630 () Bool)

(assert (=> d!1703643 m!6334630))

(declare-fun m!6334632 () Bool)

(assert (=> d!1703643 m!6334632))

(assert (=> b!5296748 d!1703643))

(declare-fun bs!1228595 () Bool)

(declare-fun b!5297274 () Bool)

(assert (= bs!1228595 (and b!5297274 d!1703629)))

(declare-fun lambda!268706 () Int)

(assert (=> bs!1228595 (not (= lambda!268706 lambda!268696))))

(declare-fun bs!1228596 () Bool)

(assert (= bs!1228596 (and b!5297274 d!1703623)))

(assert (=> bs!1228596 (not (= lambda!268706 lambda!268693))))

(declare-fun bs!1228597 () Bool)

(assert (= bs!1228597 (and b!5297274 b!5297016)))

(assert (=> bs!1228597 (= (and (= (reg!15263 lt!2164092) (reg!15263 r!7292)) (= lt!2164092 r!7292)) (= lambda!268706 lambda!268678))))

(declare-fun bs!1228598 () Bool)

(assert (= bs!1228598 (and b!5297274 b!5297013)))

(assert (=> bs!1228598 (not (= lambda!268706 lambda!268679))))

(declare-fun bs!1228599 () Bool)

(assert (= bs!1228599 (and b!5297274 d!1703641)))

(assert (=> bs!1228599 (not (= lambda!268706 lambda!268704))))

(declare-fun bs!1228600 () Bool)

(assert (= bs!1228600 (and b!5297274 b!5296748)))

(assert (=> bs!1228600 (not (= lambda!268706 lambda!268642))))

(assert (=> bs!1228600 (not (= lambda!268706 lambda!268639))))

(declare-fun bs!1228601 () Bool)

(assert (= bs!1228601 (and b!5297274 b!5296731)))

(assert (=> bs!1228601 (not (= lambda!268706 lambda!268637))))

(declare-fun bs!1228602 () Bool)

(assert (= bs!1228602 (and b!5297274 b!5297249)))

(assert (=> bs!1228602 (= (and (= (reg!15263 lt!2164092) (reg!15263 lt!2164117)) (= lt!2164092 lt!2164117)) (= lambda!268706 lambda!268700))))

(assert (=> bs!1228600 (not (= lambda!268706 lambda!268640))))

(declare-fun bs!1228603 () Bool)

(assert (= bs!1228603 (and b!5297274 b!5297246)))

(assert (=> bs!1228603 (not (= lambda!268706 lambda!268701))))

(assert (=> bs!1228601 (not (= lambda!268706 lambda!268636))))

(assert (=> bs!1228596 (not (= lambda!268706 lambda!268694))))

(assert (=> bs!1228600 (not (= lambda!268706 lambda!268641))))

(assert (=> bs!1228595 (not (= lambda!268706 lambda!268695))))

(assert (=> b!5297274 true))

(assert (=> b!5297274 true))

(declare-fun bs!1228604 () Bool)

(declare-fun b!5297271 () Bool)

(assert (= bs!1228604 (and b!5297271 d!1703629)))

(declare-fun lambda!268707 () Int)

(assert (=> bs!1228604 (= (and (= (regOne!30380 lt!2164092) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 lt!2164092) lt!2164085)) (= lambda!268707 lambda!268696))))

(declare-fun bs!1228605 () Bool)

(assert (= bs!1228605 (and b!5297271 d!1703623)))

(assert (=> bs!1228605 (not (= lambda!268707 lambda!268693))))

(declare-fun bs!1228606 () Bool)

(assert (= bs!1228606 (and b!5297271 b!5297013)))

(assert (=> bs!1228606 (= (and (= (regOne!30380 lt!2164092) (regOne!30380 r!7292)) (= (regTwo!30380 lt!2164092) (regTwo!30380 r!7292))) (= lambda!268707 lambda!268679))))

(declare-fun bs!1228607 () Bool)

(assert (= bs!1228607 (and b!5297271 d!1703641)))

(assert (=> bs!1228607 (not (= lambda!268707 lambda!268704))))

(declare-fun bs!1228608 () Bool)

(assert (= bs!1228608 (and b!5297271 b!5296748)))

(assert (=> bs!1228608 (= (and (= (regOne!30380 lt!2164092) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 lt!2164092) lt!2164085)) (= lambda!268707 lambda!268642))))

(assert (=> bs!1228608 (not (= lambda!268707 lambda!268639))))

(declare-fun bs!1228609 () Bool)

(assert (= bs!1228609 (and b!5297271 b!5296731)))

(assert (=> bs!1228609 (= (and (= (regOne!30380 lt!2164092) (regOne!30380 r!7292)) (= (regTwo!30380 lt!2164092) (regTwo!30380 r!7292))) (= lambda!268707 lambda!268637))))

(declare-fun bs!1228610 () Bool)

(assert (= bs!1228610 (and b!5297271 b!5297249)))

(assert (=> bs!1228610 (not (= lambda!268707 lambda!268700))))

(assert (=> bs!1228608 (= (and (= (regOne!30380 lt!2164092) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 lt!2164092) lt!2164117)) (= lambda!268707 lambda!268640))))

(declare-fun bs!1228611 () Bool)

(assert (= bs!1228611 (and b!5297271 b!5297246)))

(assert (=> bs!1228611 (= (and (= (regOne!30380 lt!2164092) (regOne!30380 lt!2164117)) (= (regTwo!30380 lt!2164092) (regTwo!30380 lt!2164117))) (= lambda!268707 lambda!268701))))

(assert (=> bs!1228609 (not (= lambda!268707 lambda!268636))))

(assert (=> bs!1228605 (= (and (= (regOne!30380 lt!2164092) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 lt!2164092) lt!2164117)) (= lambda!268707 lambda!268694))))

(declare-fun bs!1228612 () Bool)

(assert (= bs!1228612 (and b!5297271 b!5297274)))

(assert (=> bs!1228612 (not (= lambda!268707 lambda!268706))))

(declare-fun bs!1228613 () Bool)

(assert (= bs!1228613 (and b!5297271 b!5297016)))

(assert (=> bs!1228613 (not (= lambda!268707 lambda!268678))))

(assert (=> bs!1228608 (not (= lambda!268707 lambda!268641))))

(assert (=> bs!1228604 (not (= lambda!268707 lambda!268695))))

(assert (=> b!5297271 true))

(assert (=> b!5297271 true))

(declare-fun bm!377598 () Bool)

(declare-fun c!919372 () Bool)

(declare-fun call!377603 () Bool)

(assert (=> bm!377598 (= call!377603 (Exists!2115 (ite c!919372 lambda!268706 lambda!268707)))))

(declare-fun b!5297268 () Bool)

(declare-fun e!3292713 () Bool)

(assert (=> b!5297268 (= e!3292713 (= s!2326 (Cons!60979 (c!919246 lt!2164092) Nil!60979)))))

(declare-fun b!5297269 () Bool)

(declare-fun e!3292715 () Bool)

(declare-fun call!377604 () Bool)

(assert (=> b!5297269 (= e!3292715 call!377604)))

(declare-fun b!5297270 () Bool)

(declare-fun e!3292711 () Bool)

(assert (=> b!5297270 (= e!3292715 e!3292711)))

(declare-fun res!2246697 () Bool)

(assert (=> b!5297270 (= res!2246697 (not (is-EmptyLang!14934 lt!2164092)))))

(assert (=> b!5297270 (=> (not res!2246697) (not e!3292711))))

(declare-fun e!3292712 () Bool)

(assert (=> b!5297271 (= e!3292712 call!377603)))

(declare-fun b!5297272 () Bool)

(declare-fun e!3292716 () Bool)

(assert (=> b!5297272 (= e!3292716 e!3292712)))

(assert (=> b!5297272 (= c!919372 (is-Star!14934 lt!2164092))))

(declare-fun d!1703645 () Bool)

(declare-fun c!919369 () Bool)

(assert (=> d!1703645 (= c!919369 (is-EmptyExpr!14934 lt!2164092))))

(assert (=> d!1703645 (= (matchRSpec!2037 lt!2164092 s!2326) e!3292715)))

(declare-fun b!5297273 () Bool)

(declare-fun c!919371 () Bool)

(assert (=> b!5297273 (= c!919371 (is-Union!14934 lt!2164092))))

(assert (=> b!5297273 (= e!3292713 e!3292716)))

(declare-fun e!3292710 () Bool)

(assert (=> b!5297274 (= e!3292710 call!377603)))

(declare-fun b!5297275 () Bool)

(declare-fun c!919370 () Bool)

(assert (=> b!5297275 (= c!919370 (is-ElementMatch!14934 lt!2164092))))

(assert (=> b!5297275 (= e!3292711 e!3292713)))

(declare-fun b!5297276 () Bool)

(declare-fun res!2246698 () Bool)

(assert (=> b!5297276 (=> res!2246698 e!3292710)))

(assert (=> b!5297276 (= res!2246698 call!377604)))

(assert (=> b!5297276 (= e!3292712 e!3292710)))

(declare-fun bm!377599 () Bool)

(assert (=> bm!377599 (= call!377604 (isEmpty!32941 s!2326))))

(declare-fun b!5297277 () Bool)

(declare-fun e!3292714 () Bool)

(assert (=> b!5297277 (= e!3292714 (matchRSpec!2037 (regTwo!30381 lt!2164092) s!2326))))

(declare-fun b!5297278 () Bool)

(assert (=> b!5297278 (= e!3292716 e!3292714)))

(declare-fun res!2246696 () Bool)

(assert (=> b!5297278 (= res!2246696 (matchRSpec!2037 (regOne!30381 lt!2164092) s!2326))))

(assert (=> b!5297278 (=> res!2246696 e!3292714)))

(assert (= (and d!1703645 c!919369) b!5297269))

(assert (= (and d!1703645 (not c!919369)) b!5297270))

(assert (= (and b!5297270 res!2246697) b!5297275))

(assert (= (and b!5297275 c!919370) b!5297268))

(assert (= (and b!5297275 (not c!919370)) b!5297273))

(assert (= (and b!5297273 c!919371) b!5297278))

(assert (= (and b!5297273 (not c!919371)) b!5297272))

(assert (= (and b!5297278 (not res!2246696)) b!5297277))

(assert (= (and b!5297272 c!919372) b!5297276))

(assert (= (and b!5297272 (not c!919372)) b!5297271))

(assert (= (and b!5297276 (not res!2246698)) b!5297274))

(assert (= (or b!5297274 b!5297271) bm!377598))

(assert (= (or b!5297269 b!5297276) bm!377599))

(declare-fun m!6334634 () Bool)

(assert (=> bm!377598 m!6334634))

(assert (=> bm!377599 m!6334410))

(declare-fun m!6334636 () Bool)

(assert (=> b!5297277 m!6334636))

(declare-fun m!6334638 () Bool)

(assert (=> b!5297278 m!6334638))

(assert (=> b!5296748 d!1703645))

(declare-fun d!1703647 () Bool)

(declare-fun choose!39580 (Int) Bool)

(assert (=> d!1703647 (= (Exists!2115 lambda!268641) (choose!39580 lambda!268641))))

(declare-fun bs!1228614 () Bool)

(assert (= bs!1228614 d!1703647))

(declare-fun m!6334640 () Bool)

(assert (=> bs!1228614 m!6334640))

(assert (=> b!5296748 d!1703647))

(declare-fun bs!1228615 () Bool)

(declare-fun d!1703649 () Bool)

(assert (= bs!1228615 (and d!1703649 d!1703629)))

(declare-fun lambda!268708 () Int)

(assert (=> bs!1228615 (not (= lambda!268708 lambda!268696))))

(declare-fun bs!1228616 () Bool)

(assert (= bs!1228616 (and d!1703649 b!5297271)))

(assert (=> bs!1228616 (not (= lambda!268708 lambda!268707))))

(declare-fun bs!1228617 () Bool)

(assert (= bs!1228617 (and d!1703649 d!1703623)))

(assert (=> bs!1228617 (= lambda!268708 lambda!268693)))

(declare-fun bs!1228618 () Bool)

(assert (= bs!1228618 (and d!1703649 b!5297013)))

(assert (=> bs!1228618 (not (= lambda!268708 lambda!268679))))

(declare-fun bs!1228619 () Bool)

(assert (= bs!1228619 (and d!1703649 d!1703641)))

(assert (=> bs!1228619 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regTwo!30380 (regOne!30380 r!7292))) (= lt!2164117 lt!2164085)) (= lambda!268708 lambda!268704))))

(declare-fun bs!1228620 () Bool)

(assert (= bs!1228620 (and d!1703649 b!5296748)))

(assert (=> bs!1228620 (not (= lambda!268708 lambda!268642))))

(assert (=> bs!1228620 (= lambda!268708 lambda!268639)))

(declare-fun bs!1228621 () Bool)

(assert (= bs!1228621 (and d!1703649 b!5296731)))

(assert (=> bs!1228621 (not (= lambda!268708 lambda!268637))))

(declare-fun bs!1228622 () Bool)

(assert (= bs!1228622 (and d!1703649 b!5297249)))

(assert (=> bs!1228622 (not (= lambda!268708 lambda!268700))))

(assert (=> bs!1228620 (not (= lambda!268708 lambda!268640))))

(declare-fun bs!1228623 () Bool)

(assert (= bs!1228623 (and d!1703649 b!5297246)))

(assert (=> bs!1228623 (not (= lambda!268708 lambda!268701))))

(assert (=> bs!1228621 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regOne!30380 r!7292)) (= lt!2164117 (regTwo!30380 r!7292))) (= lambda!268708 lambda!268636))))

(assert (=> bs!1228617 (not (= lambda!268708 lambda!268694))))

(declare-fun bs!1228624 () Bool)

(assert (= bs!1228624 (and d!1703649 b!5297274)))

(assert (=> bs!1228624 (not (= lambda!268708 lambda!268706))))

(declare-fun bs!1228625 () Bool)

(assert (= bs!1228625 (and d!1703649 b!5297016)))

(assert (=> bs!1228625 (not (= lambda!268708 lambda!268678))))

(assert (=> bs!1228620 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regTwo!30380 (regOne!30380 r!7292))) (= lt!2164117 lt!2164085)) (= lambda!268708 lambda!268641))))

(assert (=> bs!1228615 (= (and (= (regOne!30380 (regOne!30380 r!7292)) (regTwo!30380 (regOne!30380 r!7292))) (= lt!2164117 lt!2164085)) (= lambda!268708 lambda!268695))))

(assert (=> d!1703649 true))

(assert (=> d!1703649 true))

(assert (=> d!1703649 true))

(assert (=> d!1703649 (= (isDefined!11748 (findConcatSeparation!1459 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 Nil!60979 s!2326 s!2326)) (Exists!2115 lambda!268708))))

(declare-fun lt!2164321 () Unit!153254)

(assert (=> d!1703649 (= lt!2164321 (choose!39579 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 s!2326))))

(assert (=> d!1703649 (validRegex!6670 (regOne!30380 (regOne!30380 r!7292)))))

(assert (=> d!1703649 (= (lemmaFindConcatSeparationEquivalentToExists!1223 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 s!2326) lt!2164321)))

(declare-fun bs!1228626 () Bool)

(assert (= bs!1228626 d!1703649))

(assert (=> bs!1228626 m!6334526))

(assert (=> bs!1228626 m!6334116))

(declare-fun m!6334642 () Bool)

(assert (=> bs!1228626 m!6334642))

(declare-fun m!6334644 () Bool)

(assert (=> bs!1228626 m!6334644))

(assert (=> bs!1228626 m!6334116))

(assert (=> bs!1228626 m!6334118))

(assert (=> b!5296748 d!1703649))

(declare-fun d!1703651 () Bool)

(assert (=> d!1703651 (= (Exists!2115 lambda!268640) (choose!39580 lambda!268640))))

(declare-fun bs!1228627 () Bool)

(assert (= bs!1228627 d!1703651))

(declare-fun m!6334646 () Bool)

(assert (=> bs!1228627 m!6334646))

(assert (=> b!5296748 d!1703651))

(declare-fun d!1703653 () Bool)

(declare-fun isEmpty!32942 (Option!15045) Bool)

(assert (=> d!1703653 (= (isDefined!11748 (findConcatSeparation!1459 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 Nil!60979 s!2326 s!2326)) (not (isEmpty!32942 (findConcatSeparation!1459 (regTwo!30380 (regOne!30380 r!7292)) lt!2164085 Nil!60979 s!2326 s!2326))))))

(declare-fun bs!1228628 () Bool)

(assert (= bs!1228628 d!1703653))

(assert (=> bs!1228628 m!6334132))

(declare-fun m!6334648 () Bool)

(assert (=> bs!1228628 m!6334648))

(assert (=> b!5296748 d!1703653))

(declare-fun d!1703655 () Bool)

(declare-fun e!3292720 () Bool)

(assert (=> d!1703655 e!3292720))

(declare-fun c!919374 () Bool)

(assert (=> d!1703655 (= c!919374 (is-EmptyExpr!14934 lt!2164117))))

(declare-fun lt!2164322 () Bool)

(declare-fun e!3292723 () Bool)

(assert (=> d!1703655 (= lt!2164322 e!3292723)))

(declare-fun c!919373 () Bool)

(assert (=> d!1703655 (= c!919373 (isEmpty!32941 s!2326))))

(assert (=> d!1703655 (validRegex!6670 lt!2164117)))

(assert (=> d!1703655 (= (matchR!7119 lt!2164117 s!2326) lt!2164322)))

(declare-fun b!5297279 () Bool)

(declare-fun e!3292721 () Bool)

(declare-fun e!3292717 () Bool)

(assert (=> b!5297279 (= e!3292721 e!3292717)))

(declare-fun res!2246701 () Bool)

(assert (=> b!5297279 (=> (not res!2246701) (not e!3292717))))

(assert (=> b!5297279 (= res!2246701 (not lt!2164322))))

(declare-fun b!5297280 () Bool)

(declare-fun res!2246704 () Bool)

(assert (=> b!5297280 (=> res!2246704 e!3292721)))

(assert (=> b!5297280 (= res!2246704 (not (is-ElementMatch!14934 lt!2164117)))))

(declare-fun e!3292722 () Bool)

(assert (=> b!5297280 (= e!3292722 e!3292721)))

(declare-fun b!5297281 () Bool)

(declare-fun res!2246703 () Bool)

(declare-fun e!3292719 () Bool)

(assert (=> b!5297281 (=> (not res!2246703) (not e!3292719))))

(assert (=> b!5297281 (= res!2246703 (isEmpty!32941 (tail!10449 s!2326)))))

(declare-fun b!5297282 () Bool)

(declare-fun call!377605 () Bool)

(assert (=> b!5297282 (= e!3292720 (= lt!2164322 call!377605))))

(declare-fun b!5297283 () Bool)

(assert (=> b!5297283 (= e!3292720 e!3292722)))

(declare-fun c!919375 () Bool)

(assert (=> b!5297283 (= c!919375 (is-EmptyLang!14934 lt!2164117))))

(declare-fun b!5297284 () Bool)

(declare-fun e!3292718 () Bool)

(assert (=> b!5297284 (= e!3292717 e!3292718)))

(declare-fun res!2246702 () Bool)

(assert (=> b!5297284 (=> res!2246702 e!3292718)))

(assert (=> b!5297284 (= res!2246702 call!377605)))

(declare-fun b!5297285 () Bool)

(assert (=> b!5297285 (= e!3292718 (not (= (head!11352 s!2326) (c!919246 lt!2164117))))))

(declare-fun b!5297286 () Bool)

(declare-fun res!2246699 () Bool)

(assert (=> b!5297286 (=> res!2246699 e!3292721)))

(assert (=> b!5297286 (= res!2246699 e!3292719)))

(declare-fun res!2246706 () Bool)

(assert (=> b!5297286 (=> (not res!2246706) (not e!3292719))))

(assert (=> b!5297286 (= res!2246706 lt!2164322)))

(declare-fun b!5297287 () Bool)

(assert (=> b!5297287 (= e!3292722 (not lt!2164322))))

(declare-fun b!5297288 () Bool)

(assert (=> b!5297288 (= e!3292719 (= (head!11352 s!2326) (c!919246 lt!2164117)))))

(declare-fun b!5297289 () Bool)

(declare-fun res!2246705 () Bool)

(assert (=> b!5297289 (=> (not res!2246705) (not e!3292719))))

(assert (=> b!5297289 (= res!2246705 (not call!377605))))

(declare-fun b!5297290 () Bool)

(assert (=> b!5297290 (= e!3292723 (matchR!7119 (derivativeStep!4138 lt!2164117 (head!11352 s!2326)) (tail!10449 s!2326)))))

(declare-fun b!5297291 () Bool)

(assert (=> b!5297291 (= e!3292723 (nullable!5103 lt!2164117))))

(declare-fun b!5297292 () Bool)

(declare-fun res!2246700 () Bool)

(assert (=> b!5297292 (=> res!2246700 e!3292718)))

(assert (=> b!5297292 (= res!2246700 (not (isEmpty!32941 (tail!10449 s!2326))))))

(declare-fun bm!377600 () Bool)

(assert (=> bm!377600 (= call!377605 (isEmpty!32941 s!2326))))

(assert (= (and d!1703655 c!919373) b!5297291))

(assert (= (and d!1703655 (not c!919373)) b!5297290))

(assert (= (and d!1703655 c!919374) b!5297282))

(assert (= (and d!1703655 (not c!919374)) b!5297283))

(assert (= (and b!5297283 c!919375) b!5297287))

(assert (= (and b!5297283 (not c!919375)) b!5297280))

(assert (= (and b!5297280 (not res!2246704)) b!5297286))

(assert (= (and b!5297286 res!2246706) b!5297289))

(assert (= (and b!5297289 res!2246705) b!5297281))

(assert (= (and b!5297281 res!2246703) b!5297288))

(assert (= (and b!5297286 (not res!2246699)) b!5297279))

(assert (= (and b!5297279 res!2246701) b!5297284))

(assert (= (and b!5297284 (not res!2246702)) b!5297292))

(assert (= (and b!5297292 (not res!2246700)) b!5297285))

(assert (= (or b!5297282 b!5297284 b!5297289) bm!377600))

(assert (=> b!5297288 m!6334416))

(declare-fun m!6334650 () Bool)

(assert (=> b!5297291 m!6334650))

(assert (=> bm!377600 m!6334410))

(assert (=> b!5297281 m!6334420))

(assert (=> b!5297281 m!6334420))

(assert (=> b!5297281 m!6334422))

(assert (=> b!5297292 m!6334420))

(assert (=> b!5297292 m!6334420))

(assert (=> b!5297292 m!6334422))

(assert (=> b!5297285 m!6334416))

(assert (=> b!5297290 m!6334416))

(assert (=> b!5297290 m!6334416))

(declare-fun m!6334652 () Bool)

(assert (=> b!5297290 m!6334652))

(assert (=> b!5297290 m!6334420))

(assert (=> b!5297290 m!6334652))

(assert (=> b!5297290 m!6334420))

(declare-fun m!6334654 () Bool)

(assert (=> b!5297290 m!6334654))

(assert (=> d!1703655 m!6334410))

(assert (=> d!1703655 m!6334188))

(assert (=> b!5296748 d!1703655))

(declare-fun bs!1228629 () Bool)

(declare-fun d!1703657 () Bool)

(assert (= bs!1228629 (and d!1703657 d!1703591)))

(declare-fun lambda!268709 () Int)

(assert (=> bs!1228629 (= lambda!268709 lambda!268682)))

(declare-fun bs!1228630 () Bool)

(assert (= bs!1228630 (and d!1703657 d!1703593)))

(assert (=> bs!1228630 (= lambda!268709 lambda!268685)))

(declare-fun bs!1228631 () Bool)

(assert (= bs!1228631 (and d!1703657 d!1703631)))

(assert (=> bs!1228631 (= lambda!268709 lambda!268699)))

(declare-fun bs!1228632 () Bool)

(assert (= bs!1228632 (and d!1703657 d!1703643)))

(assert (=> bs!1228632 (= lambda!268709 lambda!268705)))

(declare-fun b!5297293 () Bool)

(declare-fun e!3292724 () Regex!14934)

(assert (=> b!5297293 (= e!3292724 (h!67425 lt!2164096))))

(declare-fun b!5297294 () Bool)

(declare-fun e!3292725 () Bool)

(declare-fun lt!2164323 () Regex!14934)

(assert (=> b!5297294 (= e!3292725 (isEmptyExpr!852 lt!2164323))))

(declare-fun b!5297295 () Bool)

(declare-fun e!3292728 () Bool)

(assert (=> b!5297295 (= e!3292728 (isConcat!375 lt!2164323))))

(declare-fun b!5297296 () Bool)

(assert (=> b!5297296 (= e!3292728 (= lt!2164323 (head!11353 lt!2164096)))))

(declare-fun e!3292727 () Bool)

(assert (=> d!1703657 e!3292727))

(declare-fun res!2246708 () Bool)

(assert (=> d!1703657 (=> (not res!2246708) (not e!3292727))))

(assert (=> d!1703657 (= res!2246708 (validRegex!6670 lt!2164323))))

(assert (=> d!1703657 (= lt!2164323 e!3292724)))

(declare-fun c!919379 () Bool)

(declare-fun e!3292729 () Bool)

(assert (=> d!1703657 (= c!919379 e!3292729)))

(declare-fun res!2246707 () Bool)

(assert (=> d!1703657 (=> (not res!2246707) (not e!3292729))))

(assert (=> d!1703657 (= res!2246707 (is-Cons!60977 lt!2164096))))

(assert (=> d!1703657 (forall!14348 lt!2164096 lambda!268709)))

(assert (=> d!1703657 (= (generalisedConcat!603 lt!2164096) lt!2164323)))

(declare-fun b!5297297 () Bool)

(assert (=> b!5297297 (= e!3292729 (isEmpty!32938 (t!374306 lt!2164096)))))

(declare-fun b!5297298 () Bool)

(declare-fun e!3292726 () Regex!14934)

(assert (=> b!5297298 (= e!3292726 (Concat!23779 (h!67425 lt!2164096) (generalisedConcat!603 (t!374306 lt!2164096))))))

(declare-fun b!5297299 () Bool)

(assert (=> b!5297299 (= e!3292727 e!3292725)))

(declare-fun c!919378 () Bool)

(assert (=> b!5297299 (= c!919378 (isEmpty!32938 lt!2164096))))

(declare-fun b!5297300 () Bool)

(assert (=> b!5297300 (= e!3292725 e!3292728)))

(declare-fun c!919376 () Bool)

(assert (=> b!5297300 (= c!919376 (isEmpty!32938 (tail!10450 lt!2164096)))))

(declare-fun b!5297301 () Bool)

(assert (=> b!5297301 (= e!3292726 EmptyExpr!14934)))

(declare-fun b!5297302 () Bool)

(assert (=> b!5297302 (= e!3292724 e!3292726)))

(declare-fun c!919377 () Bool)

(assert (=> b!5297302 (= c!919377 (is-Cons!60977 lt!2164096))))

(assert (= (and d!1703657 res!2246707) b!5297297))

(assert (= (and d!1703657 c!919379) b!5297293))

(assert (= (and d!1703657 (not c!919379)) b!5297302))

(assert (= (and b!5297302 c!919377) b!5297298))

(assert (= (and b!5297302 (not c!919377)) b!5297301))

(assert (= (and d!1703657 res!2246708) b!5297299))

(assert (= (and b!5297299 c!919378) b!5297294))

(assert (= (and b!5297299 (not c!919378)) b!5297300))

(assert (= (and b!5297300 c!919376) b!5297296))

(assert (= (and b!5297300 (not c!919376)) b!5297295))

(declare-fun m!6334656 () Bool)

(assert (=> b!5297296 m!6334656))

(declare-fun m!6334658 () Bool)

(assert (=> b!5297295 m!6334658))

(declare-fun m!6334660 () Bool)

(assert (=> b!5297294 m!6334660))

(declare-fun m!6334662 () Bool)

(assert (=> b!5297298 m!6334662))

(declare-fun m!6334664 () Bool)

(assert (=> b!5297297 m!6334664))

(declare-fun m!6334666 () Bool)

(assert (=> b!5297300 m!6334666))

(assert (=> b!5297300 m!6334666))

(declare-fun m!6334668 () Bool)

(assert (=> b!5297300 m!6334668))

(declare-fun m!6334670 () Bool)

(assert (=> b!5297299 m!6334670))

(declare-fun m!6334672 () Bool)

(assert (=> d!1703657 m!6334672))

(declare-fun m!6334674 () Bool)

(assert (=> d!1703657 m!6334674))

(assert (=> b!5296748 d!1703657))

(declare-fun d!1703659 () Bool)

(assert (=> d!1703659 (= (Exists!2115 lambda!268639) (choose!39580 lambda!268639))))

(declare-fun bs!1228633 () Bool)

(assert (= bs!1228633 d!1703659))

(declare-fun m!6334676 () Bool)

(assert (=> bs!1228633 m!6334676))

(assert (=> b!5296748 d!1703659))

(declare-fun d!1703661 () Bool)

(assert (=> d!1703661 (= (matchR!7119 lt!2164117 s!2326) (matchZipper!1178 lt!2164088 s!2326))))

(declare-fun lt!2164324 () Unit!153254)

(assert (=> d!1703661 (= lt!2164324 (choose!39578 lt!2164088 (Cons!60978 lt!2164121 Nil!60978) lt!2164117 s!2326))))

(assert (=> d!1703661 (validRegex!6670 lt!2164117)))

(assert (=> d!1703661 (= (theoremZipperRegexEquiv!344 lt!2164088 (Cons!60978 lt!2164121 Nil!60978) lt!2164117 s!2326) lt!2164324)))

(declare-fun bs!1228634 () Bool)

(assert (= bs!1228634 d!1703661))

(assert (=> bs!1228634 m!6334112))

(assert (=> bs!1228634 m!6334162))

(declare-fun m!6334678 () Bool)

(assert (=> bs!1228634 m!6334678))

(assert (=> bs!1228634 m!6334188))

(assert (=> b!5296748 d!1703661))

(declare-fun d!1703663 () Bool)

(assert (=> d!1703663 (= (Exists!2115 lambda!268642) (choose!39580 lambda!268642))))

(declare-fun bs!1228635 () Bool)

(assert (= bs!1228635 d!1703663))

(declare-fun m!6334680 () Bool)

(assert (=> bs!1228635 m!6334680))

(assert (=> b!5296748 d!1703663))

(declare-fun d!1703665 () Bool)

(assert (=> d!1703665 (= (isDefined!11748 (findConcatSeparation!1459 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 Nil!60979 s!2326 s!2326)) (not (isEmpty!32942 (findConcatSeparation!1459 (regOne!30380 (regOne!30380 r!7292)) lt!2164117 Nil!60979 s!2326 s!2326))))))

(declare-fun bs!1228636 () Bool)

(assert (= bs!1228636 d!1703665))

(assert (=> bs!1228636 m!6334116))

(declare-fun m!6334682 () Bool)

(assert (=> bs!1228636 m!6334682))

(assert (=> b!5296748 d!1703665))

(declare-fun d!1703667 () Bool)

(declare-fun c!919380 () Bool)

(assert (=> d!1703667 (= c!919380 (isEmpty!32941 s!2326))))

(declare-fun e!3292730 () Bool)

(assert (=> d!1703667 (= (matchZipper!1178 lt!2164088 s!2326) e!3292730)))

(declare-fun b!5297303 () Bool)

(assert (=> b!5297303 (= e!3292730 (nullableZipper!1317 lt!2164088))))

(declare-fun b!5297304 () Bool)

(assert (=> b!5297304 (= e!3292730 (matchZipper!1178 (derivationStepZipper!1177 lt!2164088 (head!11352 s!2326)) (tail!10449 s!2326)))))

(assert (= (and d!1703667 c!919380) b!5297303))

(assert (= (and d!1703667 (not c!919380)) b!5297304))

(assert (=> d!1703667 m!6334410))

(declare-fun m!6334684 () Bool)

(assert (=> b!5297303 m!6334684))

(assert (=> b!5297304 m!6334416))

(assert (=> b!5297304 m!6334416))

(declare-fun m!6334686 () Bool)

(assert (=> b!5297304 m!6334686))

(assert (=> b!5297304 m!6334420))

(assert (=> b!5297304 m!6334686))

(assert (=> b!5297304 m!6334420))

(declare-fun m!6334688 () Bool)

(assert (=> b!5297304 m!6334688))

(assert (=> b!5296748 d!1703667))

(declare-fun b!5297305 () Bool)

(declare-fun e!3292735 () Bool)

(declare-fun e!3292731 () Bool)

(assert (=> b!5297305 (= e!3292735 e!3292731)))

(declare-fun c!919382 () Bool)

(assert (=> b!5297305 (= c!919382 (is-Star!14934 lt!2164117))))

(declare-fun bm!377601 () Bool)

(declare-fun call!377607 () Bool)

(declare-fun c!919381 () Bool)

(assert (=> bm!377601 (= call!377607 (validRegex!6670 (ite c!919381 (regOne!30381 lt!2164117) (regOne!30380 lt!2164117))))))

(declare-fun b!5297306 () Bool)

(declare-fun e!3292736 () Bool)

(declare-fun call!377608 () Bool)

(assert (=> b!5297306 (= e!3292736 call!377608)))

(declare-fun b!5297307 () Bool)

(declare-fun res!2246710 () Bool)

(declare-fun e!3292737 () Bool)

(assert (=> b!5297307 (=> (not res!2246710) (not e!3292737))))

(assert (=> b!5297307 (= res!2246710 call!377607)))

(declare-fun e!3292733 () Bool)

(assert (=> b!5297307 (= e!3292733 e!3292737)))

(declare-fun bm!377602 () Bool)

(declare-fun call!377606 () Bool)

(assert (=> bm!377602 (= call!377608 call!377606)))

(declare-fun b!5297308 () Bool)

(assert (=> b!5297308 (= e!3292737 call!377608)))

(declare-fun b!5297309 () Bool)

(assert (=> b!5297309 (= e!3292731 e!3292733)))

(assert (=> b!5297309 (= c!919381 (is-Union!14934 lt!2164117))))

(declare-fun d!1703669 () Bool)

(declare-fun res!2246713 () Bool)

(assert (=> d!1703669 (=> res!2246713 e!3292735)))

(assert (=> d!1703669 (= res!2246713 (is-ElementMatch!14934 lt!2164117))))

(assert (=> d!1703669 (= (validRegex!6670 lt!2164117) e!3292735)))

(declare-fun b!5297310 () Bool)

(declare-fun e!3292732 () Bool)

(assert (=> b!5297310 (= e!3292732 call!377606)))

(declare-fun bm!377603 () Bool)

(assert (=> bm!377603 (= call!377606 (validRegex!6670 (ite c!919382 (reg!15263 lt!2164117) (ite c!919381 (regTwo!30381 lt!2164117) (regTwo!30380 lt!2164117)))))))

(declare-fun b!5297311 () Bool)

(assert (=> b!5297311 (= e!3292731 e!3292732)))

(declare-fun res!2246711 () Bool)

(assert (=> b!5297311 (= res!2246711 (not (nullable!5103 (reg!15263 lt!2164117))))))

(assert (=> b!5297311 (=> (not res!2246711) (not e!3292732))))

(declare-fun b!5297312 () Bool)

(declare-fun res!2246709 () Bool)

(declare-fun e!3292734 () Bool)

(assert (=> b!5297312 (=> res!2246709 e!3292734)))

(assert (=> b!5297312 (= res!2246709 (not (is-Concat!23779 lt!2164117)))))

(assert (=> b!5297312 (= e!3292733 e!3292734)))

(declare-fun b!5297313 () Bool)

(assert (=> b!5297313 (= e!3292734 e!3292736)))

(declare-fun res!2246712 () Bool)

(assert (=> b!5297313 (=> (not res!2246712) (not e!3292736))))

(assert (=> b!5297313 (= res!2246712 call!377607)))

(assert (= (and d!1703669 (not res!2246713)) b!5297305))

(assert (= (and b!5297305 c!919382) b!5297311))

(assert (= (and b!5297305 (not c!919382)) b!5297309))

(assert (= (and b!5297311 res!2246711) b!5297310))

(assert (= (and b!5297309 c!919381) b!5297307))

(assert (= (and b!5297309 (not c!919381)) b!5297312))

(assert (= (and b!5297307 res!2246710) b!5297308))

(assert (= (and b!5297312 (not res!2246709)) b!5297313))

(assert (= (and b!5297313 res!2246712) b!5297306))

(assert (= (or b!5297308 b!5297306) bm!377602))

(assert (= (or b!5297307 b!5297313) bm!377601))

(assert (= (or b!5297310 bm!377602) bm!377603))

(declare-fun m!6334690 () Bool)

(assert (=> bm!377601 m!6334690))

(declare-fun m!6334692 () Bool)

(assert (=> bm!377603 m!6334692))

(declare-fun m!6334694 () Bool)

(assert (=> b!5297311 m!6334694))

(assert (=> b!5296739 d!1703669))

(declare-fun d!1703671 () Bool)

(declare-fun c!919383 () Bool)

(assert (=> d!1703671 (= c!919383 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292738 () Bool)

(assert (=> d!1703671 (= (matchZipper!1178 lt!2164114 (t!374308 s!2326)) e!3292738)))

(declare-fun b!5297314 () Bool)

(assert (=> b!5297314 (= e!3292738 (nullableZipper!1317 lt!2164114))))

(declare-fun b!5297315 () Bool)

(assert (=> b!5297315 (= e!3292738 (matchZipper!1178 (derivationStepZipper!1177 lt!2164114 (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703671 c!919383) b!5297314))

(assert (= (and d!1703671 (not c!919383)) b!5297315))

(assert (=> d!1703671 m!6334464))

(declare-fun m!6334696 () Bool)

(assert (=> b!5297314 m!6334696))

(assert (=> b!5297315 m!6334468))

(assert (=> b!5297315 m!6334468))

(declare-fun m!6334698 () Bool)

(assert (=> b!5297315 m!6334698))

(assert (=> b!5297315 m!6334472))

(assert (=> b!5297315 m!6334698))

(assert (=> b!5297315 m!6334472))

(declare-fun m!6334700 () Bool)

(assert (=> b!5297315 m!6334700))

(assert (=> b!5296741 d!1703671))

(declare-fun b!5297322 () Bool)

(assert (=> b!5297322 true))

(declare-fun bs!1228637 () Bool)

(declare-fun b!5297324 () Bool)

(assert (= bs!1228637 (and b!5297324 b!5297322)))

(declare-fun lt!2164336 () Int)

(declare-fun lambda!268718 () Int)

(declare-fun lambda!268717 () Int)

(declare-fun lt!2164334 () Int)

(assert (=> bs!1228637 (= (= lt!2164334 lt!2164336) (= lambda!268718 lambda!268717))))

(assert (=> b!5297324 true))

(declare-fun d!1703673 () Bool)

(declare-fun e!3292744 () Bool)

(assert (=> d!1703673 e!3292744))

(declare-fun res!2246716 () Bool)

(assert (=> d!1703673 (=> (not res!2246716) (not e!3292744))))

(assert (=> d!1703673 (= res!2246716 (>= lt!2164334 0))))

(declare-fun e!3292743 () Int)

(assert (=> d!1703673 (= lt!2164334 e!3292743)))

(declare-fun c!919392 () Bool)

(assert (=> d!1703673 (= c!919392 (is-Cons!60978 lt!2164122))))

(assert (=> d!1703673 (= (zipperDepth!51 lt!2164122) lt!2164334)))

(assert (=> b!5297322 (= e!3292743 lt!2164336)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!29 (Context!8636) Int)

(assert (=> b!5297322 (= lt!2164336 (maxBigInt!0 (contextDepth!29 (h!67426 lt!2164122)) (zipperDepth!51 (t!374307 lt!2164122))))))

(declare-fun lambda!268716 () Int)

(declare-fun lt!2164335 () Unit!153254)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!23 (List!61102 Int Int Int) Unit!153254)

(assert (=> b!5297322 (= lt!2164335 (lemmaForallContextDepthBiggerThanTransitive!23 (t!374307 lt!2164122) lt!2164336 (zipperDepth!51 (t!374307 lt!2164122)) lambda!268716))))

(declare-fun forall!14349 (List!61102 Int) Bool)

(assert (=> b!5297322 (forall!14349 (t!374307 lt!2164122) lambda!268717)))

(declare-fun lt!2164333 () Unit!153254)

(assert (=> b!5297322 (= lt!2164333 lt!2164335)))

(declare-fun b!5297323 () Bool)

(assert (=> b!5297323 (= e!3292743 0)))

(assert (=> b!5297324 (= e!3292744 (forall!14349 lt!2164122 lambda!268718))))

(assert (= (and d!1703673 c!919392) b!5297322))

(assert (= (and d!1703673 (not c!919392)) b!5297323))

(assert (= (and d!1703673 res!2246716) b!5297324))

(declare-fun m!6334702 () Bool)

(assert (=> b!5297322 m!6334702))

(declare-fun m!6334704 () Bool)

(assert (=> b!5297322 m!6334704))

(assert (=> b!5297322 m!6334702))

(declare-fun m!6334706 () Bool)

(assert (=> b!5297322 m!6334706))

(declare-fun m!6334708 () Bool)

(assert (=> b!5297322 m!6334708))

(assert (=> b!5297322 m!6334706))

(declare-fun m!6334710 () Bool)

(assert (=> b!5297322 m!6334710))

(assert (=> b!5297322 m!6334706))

(declare-fun m!6334712 () Bool)

(assert (=> b!5297324 m!6334712))

(assert (=> b!5296720 d!1703673))

(declare-fun bs!1228638 () Bool)

(declare-fun b!5297327 () Bool)

(assert (= bs!1228638 (and b!5297327 b!5297322)))

(declare-fun lambda!268719 () Int)

(assert (=> bs!1228638 (= lambda!268719 lambda!268716)))

(declare-fun lambda!268720 () Int)

(declare-fun lt!2164340 () Int)

(assert (=> bs!1228638 (= (= lt!2164340 lt!2164336) (= lambda!268720 lambda!268717))))

(declare-fun bs!1228639 () Bool)

(assert (= bs!1228639 (and b!5297327 b!5297324)))

(assert (=> bs!1228639 (= (= lt!2164340 lt!2164334) (= lambda!268720 lambda!268718))))

(assert (=> b!5297327 true))

(declare-fun bs!1228640 () Bool)

(declare-fun b!5297329 () Bool)

(assert (= bs!1228640 (and b!5297329 b!5297322)))

(declare-fun lambda!268721 () Int)

(declare-fun lt!2164338 () Int)

(assert (=> bs!1228640 (= (= lt!2164338 lt!2164336) (= lambda!268721 lambda!268717))))

(declare-fun bs!1228641 () Bool)

(assert (= bs!1228641 (and b!5297329 b!5297324)))

(assert (=> bs!1228641 (= (= lt!2164338 lt!2164334) (= lambda!268721 lambda!268718))))

(declare-fun bs!1228642 () Bool)

(assert (= bs!1228642 (and b!5297329 b!5297327)))

(assert (=> bs!1228642 (= (= lt!2164338 lt!2164340) (= lambda!268721 lambda!268720))))

(assert (=> b!5297329 true))

(declare-fun d!1703675 () Bool)

(declare-fun e!3292746 () Bool)

(assert (=> d!1703675 e!3292746))

(declare-fun res!2246717 () Bool)

(assert (=> d!1703675 (=> (not res!2246717) (not e!3292746))))

(assert (=> d!1703675 (= res!2246717 (>= lt!2164338 0))))

(declare-fun e!3292745 () Int)

(assert (=> d!1703675 (= lt!2164338 e!3292745)))

(declare-fun c!919393 () Bool)

(assert (=> d!1703675 (= c!919393 (is-Cons!60978 zl!343))))

(assert (=> d!1703675 (= (zipperDepth!51 zl!343) lt!2164338)))

(assert (=> b!5297327 (= e!3292745 lt!2164340)))

(assert (=> b!5297327 (= lt!2164340 (maxBigInt!0 (contextDepth!29 (h!67426 zl!343)) (zipperDepth!51 (t!374307 zl!343))))))

(declare-fun lt!2164339 () Unit!153254)

(assert (=> b!5297327 (= lt!2164339 (lemmaForallContextDepthBiggerThanTransitive!23 (t!374307 zl!343) lt!2164340 (zipperDepth!51 (t!374307 zl!343)) lambda!268719))))

(assert (=> b!5297327 (forall!14349 (t!374307 zl!343) lambda!268720)))

(declare-fun lt!2164337 () Unit!153254)

(assert (=> b!5297327 (= lt!2164337 lt!2164339)))

(declare-fun b!5297328 () Bool)

(assert (=> b!5297328 (= e!3292745 0)))

(assert (=> b!5297329 (= e!3292746 (forall!14349 zl!343 lambda!268721))))

(assert (= (and d!1703675 c!919393) b!5297327))

(assert (= (and d!1703675 (not c!919393)) b!5297328))

(assert (= (and d!1703675 res!2246717) b!5297329))

(declare-fun m!6334714 () Bool)

(assert (=> b!5297327 m!6334714))

(declare-fun m!6334716 () Bool)

(assert (=> b!5297327 m!6334716))

(assert (=> b!5297327 m!6334714))

(declare-fun m!6334718 () Bool)

(assert (=> b!5297327 m!6334718))

(declare-fun m!6334720 () Bool)

(assert (=> b!5297327 m!6334720))

(assert (=> b!5297327 m!6334718))

(declare-fun m!6334722 () Bool)

(assert (=> b!5297327 m!6334722))

(assert (=> b!5297327 m!6334718))

(declare-fun m!6334724 () Bool)

(assert (=> b!5297329 m!6334724))

(assert (=> b!5296720 d!1703675))

(declare-fun d!1703677 () Bool)

(declare-fun e!3292749 () Bool)

(assert (=> d!1703677 e!3292749))

(declare-fun res!2246720 () Bool)

(assert (=> d!1703677 (=> (not res!2246720) (not e!3292749))))

(declare-fun lt!2164343 () List!61102)

(declare-fun noDuplicate!1272 (List!61102) Bool)

(assert (=> d!1703677 (= res!2246720 (noDuplicate!1272 lt!2164343))))

(declare-fun choose!39581 ((Set Context!8636)) List!61102)

(assert (=> d!1703677 (= lt!2164343 (choose!39581 z!1189))))

(assert (=> d!1703677 (= (toList!8718 z!1189) lt!2164343)))

(declare-fun b!5297332 () Bool)

(declare-fun content!10860 (List!61102) (Set Context!8636))

(assert (=> b!5297332 (= e!3292749 (= (content!10860 lt!2164343) z!1189))))

(assert (= (and d!1703677 res!2246720) b!5297332))

(declare-fun m!6334726 () Bool)

(assert (=> d!1703677 m!6334726))

(declare-fun m!6334728 () Bool)

(assert (=> d!1703677 m!6334728))

(declare-fun m!6334730 () Bool)

(assert (=> b!5297332 m!6334730))

(assert (=> b!5296742 d!1703677))

(declare-fun bs!1228643 () Bool)

(declare-fun d!1703679 () Bool)

(assert (= bs!1228643 (and d!1703679 d!1703591)))

(declare-fun lambda!268724 () Int)

(assert (=> bs!1228643 (= lambda!268724 lambda!268682)))

(declare-fun bs!1228644 () Bool)

(assert (= bs!1228644 (and d!1703679 d!1703631)))

(assert (=> bs!1228644 (= lambda!268724 lambda!268699)))

(declare-fun bs!1228645 () Bool)

(assert (= bs!1228645 (and d!1703679 d!1703593)))

(assert (=> bs!1228645 (= lambda!268724 lambda!268685)))

(declare-fun bs!1228646 () Bool)

(assert (= bs!1228646 (and d!1703679 d!1703643)))

(assert (=> bs!1228646 (= lambda!268724 lambda!268705)))

(declare-fun bs!1228647 () Bool)

(assert (= bs!1228647 (and d!1703679 d!1703657)))

(assert (=> bs!1228647 (= lambda!268724 lambda!268709)))

(assert (=> d!1703679 (= (inv!80583 (h!67426 zl!343)) (forall!14348 (exprs!4818 (h!67426 zl!343)) lambda!268724))))

(declare-fun bs!1228648 () Bool)

(assert (= bs!1228648 d!1703679))

(declare-fun m!6334732 () Bool)

(assert (=> bs!1228648 m!6334732))

(assert (=> b!5296722 d!1703679))

(assert (=> b!5296734 d!1703601))

(declare-fun d!1703681 () Bool)

(declare-fun c!919394 () Bool)

(assert (=> d!1703681 (= c!919394 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292750 () Bool)

(assert (=> d!1703681 (= (matchZipper!1178 lt!2164100 (t!374308 s!2326)) e!3292750)))

(declare-fun b!5297333 () Bool)

(assert (=> b!5297333 (= e!3292750 (nullableZipper!1317 lt!2164100))))

(declare-fun b!5297334 () Bool)

(assert (=> b!5297334 (= e!3292750 (matchZipper!1178 (derivationStepZipper!1177 lt!2164100 (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703681 c!919394) b!5297333))

(assert (= (and d!1703681 (not c!919394)) b!5297334))

(assert (=> d!1703681 m!6334464))

(declare-fun m!6334734 () Bool)

(assert (=> b!5297333 m!6334734))

(assert (=> b!5297334 m!6334468))

(assert (=> b!5297334 m!6334468))

(declare-fun m!6334736 () Bool)

(assert (=> b!5297334 m!6334736))

(assert (=> b!5297334 m!6334472))

(assert (=> b!5297334 m!6334736))

(assert (=> b!5297334 m!6334472))

(declare-fun m!6334738 () Bool)

(assert (=> b!5297334 m!6334738))

(assert (=> b!5296734 d!1703681))

(declare-fun d!1703683 () Bool)

(declare-fun c!919395 () Bool)

(assert (=> d!1703683 (= c!919395 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292751 () Bool)

(assert (=> d!1703683 (= (matchZipper!1178 lt!2164127 (t!374308 s!2326)) e!3292751)))

(declare-fun b!5297335 () Bool)

(assert (=> b!5297335 (= e!3292751 (nullableZipper!1317 lt!2164127))))

(declare-fun b!5297336 () Bool)

(assert (=> b!5297336 (= e!3292751 (matchZipper!1178 (derivationStepZipper!1177 lt!2164127 (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703683 c!919395) b!5297335))

(assert (= (and d!1703683 (not c!919395)) b!5297336))

(assert (=> d!1703683 m!6334464))

(declare-fun m!6334740 () Bool)

(assert (=> b!5297335 m!6334740))

(assert (=> b!5297336 m!6334468))

(assert (=> b!5297336 m!6334468))

(declare-fun m!6334742 () Bool)

(assert (=> b!5297336 m!6334742))

(assert (=> b!5297336 m!6334472))

(assert (=> b!5297336 m!6334742))

(assert (=> b!5297336 m!6334472))

(declare-fun m!6334744 () Bool)

(assert (=> b!5297336 m!6334744))

(assert (=> b!5296734 d!1703683))

(declare-fun e!3292752 () Bool)

(declare-fun d!1703685 () Bool)

(assert (=> d!1703685 (= (matchZipper!1178 (set.union lt!2164127 lt!2164131) (t!374308 s!2326)) e!3292752)))

(declare-fun res!2246721 () Bool)

(assert (=> d!1703685 (=> res!2246721 e!3292752)))

(assert (=> d!1703685 (= res!2246721 (matchZipper!1178 lt!2164127 (t!374308 s!2326)))))

(declare-fun lt!2164344 () Unit!153254)

(assert (=> d!1703685 (= lt!2164344 (choose!39576 lt!2164127 lt!2164131 (t!374308 s!2326)))))

(assert (=> d!1703685 (= (lemmaZipperConcatMatchesSameAsBothZippers!171 lt!2164127 lt!2164131 (t!374308 s!2326)) lt!2164344)))

(declare-fun b!5297337 () Bool)

(assert (=> b!5297337 (= e!3292752 (matchZipper!1178 lt!2164131 (t!374308 s!2326)))))

(assert (= (and d!1703685 (not res!2246721)) b!5297337))

(declare-fun m!6334746 () Bool)

(assert (=> d!1703685 m!6334746))

(assert (=> d!1703685 m!6334090))

(declare-fun m!6334748 () Bool)

(assert (=> d!1703685 m!6334748))

(assert (=> b!5297337 m!6334034))

(assert (=> b!5296734 d!1703685))

(declare-fun d!1703687 () Bool)

(declare-fun c!919396 () Bool)

(assert (=> d!1703687 (= c!919396 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292753 () Bool)

(assert (=> d!1703687 (= (matchZipper!1178 (derivationStepZipper!1177 lt!2164088 (h!67427 s!2326)) (t!374308 s!2326)) e!3292753)))

(declare-fun b!5297338 () Bool)

(assert (=> b!5297338 (= e!3292753 (nullableZipper!1317 (derivationStepZipper!1177 lt!2164088 (h!67427 s!2326))))))

(declare-fun b!5297339 () Bool)

(assert (=> b!5297339 (= e!3292753 (matchZipper!1178 (derivationStepZipper!1177 (derivationStepZipper!1177 lt!2164088 (h!67427 s!2326)) (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703687 c!919396) b!5297338))

(assert (= (and d!1703687 (not c!919396)) b!5297339))

(assert (=> d!1703687 m!6334464))

(assert (=> b!5297338 m!6334192))

(declare-fun m!6334750 () Bool)

(assert (=> b!5297338 m!6334750))

(assert (=> b!5297339 m!6334468))

(assert (=> b!5297339 m!6334192))

(assert (=> b!5297339 m!6334468))

(declare-fun m!6334752 () Bool)

(assert (=> b!5297339 m!6334752))

(assert (=> b!5297339 m!6334472))

(assert (=> b!5297339 m!6334752))

(assert (=> b!5297339 m!6334472))

(declare-fun m!6334754 () Bool)

(assert (=> b!5297339 m!6334754))

(assert (=> b!5296735 d!1703687))

(declare-fun bs!1228649 () Bool)

(declare-fun d!1703689 () Bool)

(assert (= bs!1228649 (and d!1703689 b!5296743)))

(declare-fun lambda!268725 () Int)

(assert (=> bs!1228649 (= lambda!268725 lambda!268638)))

(declare-fun bs!1228650 () Bool)

(assert (= bs!1228650 (and d!1703689 d!1703611)))

(assert (=> bs!1228650 (= lambda!268725 lambda!268688)))

(assert (=> d!1703689 true))

(assert (=> d!1703689 (= (derivationStepZipper!1177 lt!2164088 (h!67427 s!2326)) (flatMap!661 lt!2164088 lambda!268725))))

(declare-fun bs!1228651 () Bool)

(assert (= bs!1228651 d!1703689))

(declare-fun m!6334756 () Bool)

(assert (=> bs!1228651 m!6334756))

(assert (=> b!5296735 d!1703689))

(declare-fun bs!1228652 () Bool)

(declare-fun d!1703691 () Bool)

(assert (= bs!1228652 (and d!1703691 d!1703591)))

(declare-fun lambda!268726 () Int)

(assert (=> bs!1228652 (= lambda!268726 lambda!268682)))

(declare-fun bs!1228653 () Bool)

(assert (= bs!1228653 (and d!1703691 d!1703631)))

(assert (=> bs!1228653 (= lambda!268726 lambda!268699)))

(declare-fun bs!1228654 () Bool)

(assert (= bs!1228654 (and d!1703691 d!1703593)))

(assert (=> bs!1228654 (= lambda!268726 lambda!268685)))

(declare-fun bs!1228655 () Bool)

(assert (= bs!1228655 (and d!1703691 d!1703679)))

(assert (=> bs!1228655 (= lambda!268726 lambda!268724)))

(declare-fun bs!1228656 () Bool)

(assert (= bs!1228656 (and d!1703691 d!1703643)))

(assert (=> bs!1228656 (= lambda!268726 lambda!268705)))

(declare-fun bs!1228657 () Bool)

(assert (= bs!1228657 (and d!1703691 d!1703657)))

(assert (=> bs!1228657 (= lambda!268726 lambda!268709)))

(assert (=> d!1703691 (= (inv!80583 setElem!34010) (forall!14348 (exprs!4818 setElem!34010) lambda!268726))))

(declare-fun bs!1228658 () Bool)

(assert (= bs!1228658 d!1703691))

(declare-fun m!6334758 () Bool)

(assert (=> bs!1228658 m!6334758))

(assert (=> setNonEmpty!34010 d!1703691))

(declare-fun d!1703693 () Bool)

(declare-fun lt!2164347 () Regex!14934)

(assert (=> d!1703693 (validRegex!6670 lt!2164347)))

(assert (=> d!1703693 (= lt!2164347 (generalisedUnion!863 (unfocusZipperList!376 zl!343)))))

(assert (=> d!1703693 (= (unfocusZipper!676 zl!343) lt!2164347)))

(declare-fun bs!1228659 () Bool)

(assert (= bs!1228659 d!1703693))

(declare-fun m!6334760 () Bool)

(assert (=> bs!1228659 m!6334760))

(assert (=> bs!1228659 m!6334198))

(assert (=> bs!1228659 m!6334198))

(assert (=> bs!1228659 m!6334200))

(assert (=> b!5296736 d!1703693))

(declare-fun d!1703695 () Bool)

(assert (=> d!1703695 (= (isEmpty!32937 (t!374307 zl!343)) (is-Nil!60978 (t!374307 zl!343)))))

(assert (=> b!5296737 d!1703695))

(declare-fun bs!1228660 () Bool)

(declare-fun d!1703697 () Bool)

(assert (= bs!1228660 (and d!1703697 d!1703591)))

(declare-fun lambda!268727 () Int)

(assert (=> bs!1228660 (= lambda!268727 lambda!268682)))

(declare-fun bs!1228661 () Bool)

(assert (= bs!1228661 (and d!1703697 d!1703631)))

(assert (=> bs!1228661 (= lambda!268727 lambda!268699)))

(declare-fun bs!1228662 () Bool)

(assert (= bs!1228662 (and d!1703697 d!1703691)))

(assert (=> bs!1228662 (= lambda!268727 lambda!268726)))

(declare-fun bs!1228663 () Bool)

(assert (= bs!1228663 (and d!1703697 d!1703593)))

(assert (=> bs!1228663 (= lambda!268727 lambda!268685)))

(declare-fun bs!1228664 () Bool)

(assert (= bs!1228664 (and d!1703697 d!1703679)))

(assert (=> bs!1228664 (= lambda!268727 lambda!268724)))

(declare-fun bs!1228665 () Bool)

(assert (= bs!1228665 (and d!1703697 d!1703643)))

(assert (=> bs!1228665 (= lambda!268727 lambda!268705)))

(declare-fun bs!1228666 () Bool)

(assert (= bs!1228666 (and d!1703697 d!1703657)))

(assert (=> bs!1228666 (= lambda!268727 lambda!268709)))

(declare-fun b!5297340 () Bool)

(declare-fun e!3292754 () Regex!14934)

(assert (=> b!5297340 (= e!3292754 (h!67425 (exprs!4818 (h!67426 zl!343))))))

(declare-fun b!5297341 () Bool)

(declare-fun e!3292755 () Bool)

(declare-fun lt!2164348 () Regex!14934)

(assert (=> b!5297341 (= e!3292755 (isEmptyExpr!852 lt!2164348))))

(declare-fun b!5297342 () Bool)

(declare-fun e!3292758 () Bool)

(assert (=> b!5297342 (= e!3292758 (isConcat!375 lt!2164348))))

(declare-fun b!5297343 () Bool)

(assert (=> b!5297343 (= e!3292758 (= lt!2164348 (head!11353 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun e!3292757 () Bool)

(assert (=> d!1703697 e!3292757))

(declare-fun res!2246723 () Bool)

(assert (=> d!1703697 (=> (not res!2246723) (not e!3292757))))

(assert (=> d!1703697 (= res!2246723 (validRegex!6670 lt!2164348))))

(assert (=> d!1703697 (= lt!2164348 e!3292754)))

(declare-fun c!919400 () Bool)

(declare-fun e!3292759 () Bool)

(assert (=> d!1703697 (= c!919400 e!3292759)))

(declare-fun res!2246722 () Bool)

(assert (=> d!1703697 (=> (not res!2246722) (not e!3292759))))

(assert (=> d!1703697 (= res!2246722 (is-Cons!60977 (exprs!4818 (h!67426 zl!343))))))

(assert (=> d!1703697 (forall!14348 (exprs!4818 (h!67426 zl!343)) lambda!268727)))

(assert (=> d!1703697 (= (generalisedConcat!603 (exprs!4818 (h!67426 zl!343))) lt!2164348)))

(declare-fun b!5297344 () Bool)

(assert (=> b!5297344 (= e!3292759 (isEmpty!32938 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun b!5297345 () Bool)

(declare-fun e!3292756 () Regex!14934)

(assert (=> b!5297345 (= e!3292756 (Concat!23779 (h!67425 (exprs!4818 (h!67426 zl!343))) (generalisedConcat!603 (t!374306 (exprs!4818 (h!67426 zl!343))))))))

(declare-fun b!5297346 () Bool)

(assert (=> b!5297346 (= e!3292757 e!3292755)))

(declare-fun c!919399 () Bool)

(assert (=> b!5297346 (= c!919399 (isEmpty!32938 (exprs!4818 (h!67426 zl!343))))))

(declare-fun b!5297347 () Bool)

(assert (=> b!5297347 (= e!3292755 e!3292758)))

(declare-fun c!919397 () Bool)

(assert (=> b!5297347 (= c!919397 (isEmpty!32938 (tail!10450 (exprs!4818 (h!67426 zl!343)))))))

(declare-fun b!5297348 () Bool)

(assert (=> b!5297348 (= e!3292756 EmptyExpr!14934)))

(declare-fun b!5297349 () Bool)

(assert (=> b!5297349 (= e!3292754 e!3292756)))

(declare-fun c!919398 () Bool)

(assert (=> b!5297349 (= c!919398 (is-Cons!60977 (exprs!4818 (h!67426 zl!343))))))

(assert (= (and d!1703697 res!2246722) b!5297344))

(assert (= (and d!1703697 c!919400) b!5297340))

(assert (= (and d!1703697 (not c!919400)) b!5297349))

(assert (= (and b!5297349 c!919398) b!5297345))

(assert (= (and b!5297349 (not c!919398)) b!5297348))

(assert (= (and d!1703697 res!2246723) b!5297346))

(assert (= (and b!5297346 c!919399) b!5297341))

(assert (= (and b!5297346 (not c!919399)) b!5297347))

(assert (= (and b!5297347 c!919397) b!5297343))

(assert (= (and b!5297347 (not c!919397)) b!5297342))

(declare-fun m!6334762 () Bool)

(assert (=> b!5297343 m!6334762))

(declare-fun m!6334764 () Bool)

(assert (=> b!5297342 m!6334764))

(declare-fun m!6334766 () Bool)

(assert (=> b!5297341 m!6334766))

(assert (=> b!5297345 m!6334128))

(assert (=> b!5297344 m!6334196))

(declare-fun m!6334768 () Bool)

(assert (=> b!5297347 m!6334768))

(assert (=> b!5297347 m!6334768))

(declare-fun m!6334770 () Bool)

(assert (=> b!5297347 m!6334770))

(declare-fun m!6334772 () Bool)

(assert (=> b!5297346 m!6334772))

(declare-fun m!6334774 () Bool)

(assert (=> d!1703697 m!6334774))

(declare-fun m!6334776 () Bool)

(assert (=> d!1703697 m!6334776))

(assert (=> b!5296757 d!1703697))

(declare-fun d!1703699 () Bool)

(assert (=> d!1703699 (= (isEmpty!32938 (t!374306 (exprs!4818 (h!67426 zl!343)))) (is-Nil!60977 (t!374306 (exprs!4818 (h!67426 zl!343)))))))

(assert (=> b!5296738 d!1703699))

(declare-fun d!1703701 () Bool)

(declare-fun c!919401 () Bool)

(assert (=> d!1703701 (= c!919401 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292760 () Bool)

(assert (=> d!1703701 (= (matchZipper!1178 lt!2164119 (t!374308 s!2326)) e!3292760)))

(declare-fun b!5297350 () Bool)

(assert (=> b!5297350 (= e!3292760 (nullableZipper!1317 lt!2164119))))

(declare-fun b!5297351 () Bool)

(assert (=> b!5297351 (= e!3292760 (matchZipper!1178 (derivationStepZipper!1177 lt!2164119 (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703701 c!919401) b!5297350))

(assert (= (and d!1703701 (not c!919401)) b!5297351))

(assert (=> d!1703701 m!6334464))

(declare-fun m!6334778 () Bool)

(assert (=> b!5297350 m!6334778))

(assert (=> b!5297351 m!6334468))

(assert (=> b!5297351 m!6334468))

(declare-fun m!6334780 () Bool)

(assert (=> b!5297351 m!6334780))

(assert (=> b!5297351 m!6334472))

(assert (=> b!5297351 m!6334780))

(assert (=> b!5297351 m!6334472))

(declare-fun m!6334782 () Bool)

(assert (=> b!5297351 m!6334782))

(assert (=> b!5296729 d!1703701))

(assert (=> b!5296730 d!1703615))

(declare-fun d!1703703 () Bool)

(declare-fun lt!2164351 () Int)

(assert (=> d!1703703 (>= lt!2164351 0)))

(declare-fun e!3292763 () Int)

(assert (=> d!1703703 (= lt!2164351 e!3292763)))

(declare-fun c!919404 () Bool)

(assert (=> d!1703703 (= c!919404 (is-Cons!60978 lt!2164122))))

(assert (=> d!1703703 (= (zipperDepthTotal!95 lt!2164122) lt!2164351)))

(declare-fun b!5297356 () Bool)

(assert (=> b!5297356 (= e!3292763 (+ (contextDepthTotal!75 (h!67426 lt!2164122)) (zipperDepthTotal!95 (t!374307 lt!2164122))))))

(declare-fun b!5297357 () Bool)

(assert (=> b!5297357 (= e!3292763 0)))

(assert (= (and d!1703703 c!919404) b!5297356))

(assert (= (and d!1703703 (not c!919404)) b!5297357))

(declare-fun m!6334784 () Bool)

(assert (=> b!5297356 m!6334784))

(declare-fun m!6334786 () Bool)

(assert (=> b!5297356 m!6334786))

(assert (=> b!5296751 d!1703703))

(declare-fun d!1703705 () Bool)

(declare-fun lt!2164352 () Int)

(assert (=> d!1703705 (>= lt!2164352 0)))

(declare-fun e!3292764 () Int)

(assert (=> d!1703705 (= lt!2164352 e!3292764)))

(declare-fun c!919405 () Bool)

(assert (=> d!1703705 (= c!919405 (is-Cons!60978 zl!343))))

(assert (=> d!1703705 (= (zipperDepthTotal!95 zl!343) lt!2164352)))

(declare-fun b!5297358 () Bool)

(assert (=> b!5297358 (= e!3292764 (+ (contextDepthTotal!75 (h!67426 zl!343)) (zipperDepthTotal!95 (t!374307 zl!343))))))

(declare-fun b!5297359 () Bool)

(assert (=> b!5297359 (= e!3292764 0)))

(assert (= (and d!1703705 c!919405) b!5297358))

(assert (= (and d!1703705 (not c!919405)) b!5297359))

(assert (=> b!5297358 m!6334168))

(declare-fun m!6334788 () Bool)

(assert (=> b!5297358 m!6334788))

(assert (=> b!5296751 d!1703705))

(declare-fun b!5297360 () Bool)

(declare-fun res!2246728 () Bool)

(declare-fun e!3292769 () Bool)

(assert (=> b!5297360 (=> (not res!2246728) (not e!3292769))))

(declare-fun lt!2164355 () Option!15045)

(assert (=> b!5297360 (= res!2246728 (matchR!7119 (regTwo!30380 r!7292) (_2!35436 (get!20970 lt!2164355))))))

(declare-fun b!5297361 () Bool)

(declare-fun e!3292768 () Bool)

(assert (=> b!5297361 (= e!3292768 (matchR!7119 (regTwo!30380 r!7292) s!2326))))

(declare-fun b!5297362 () Bool)

(assert (=> b!5297362 (= e!3292769 (= (++!13297 (_1!35436 (get!20970 lt!2164355)) (_2!35436 (get!20970 lt!2164355))) s!2326))))

(declare-fun b!5297363 () Bool)

(declare-fun e!3292766 () Option!15045)

(declare-fun e!3292767 () Option!15045)

(assert (=> b!5297363 (= e!3292766 e!3292767)))

(declare-fun c!919407 () Bool)

(assert (=> b!5297363 (= c!919407 (is-Nil!60979 s!2326))))

(declare-fun b!5297364 () Bool)

(declare-fun e!3292765 () Bool)

(assert (=> b!5297364 (= e!3292765 (not (isDefined!11748 lt!2164355)))))

(declare-fun b!5297366 () Bool)

(declare-fun res!2246726 () Bool)

(assert (=> b!5297366 (=> (not res!2246726) (not e!3292769))))

(assert (=> b!5297366 (= res!2246726 (matchR!7119 (regOne!30380 r!7292) (_1!35436 (get!20970 lt!2164355))))))

(declare-fun b!5297367 () Bool)

(assert (=> b!5297367 (= e!3292767 None!15044)))

(declare-fun b!5297368 () Bool)

(declare-fun lt!2164353 () Unit!153254)

(declare-fun lt!2164354 () Unit!153254)

(assert (=> b!5297368 (= lt!2164353 lt!2164354)))

(assert (=> b!5297368 (= (++!13297 (++!13297 Nil!60979 (Cons!60979 (h!67427 s!2326) Nil!60979)) (t!374308 s!2326)) s!2326)))

(assert (=> b!5297368 (= lt!2164354 (lemmaMoveElementToOtherListKeepsConcatEq!1712 Nil!60979 (h!67427 s!2326) (t!374308 s!2326) s!2326))))

(assert (=> b!5297368 (= e!3292767 (findConcatSeparation!1459 (regOne!30380 r!7292) (regTwo!30380 r!7292) (++!13297 Nil!60979 (Cons!60979 (h!67427 s!2326) Nil!60979)) (t!374308 s!2326) s!2326))))

(declare-fun d!1703707 () Bool)

(assert (=> d!1703707 e!3292765))

(declare-fun res!2246727 () Bool)

(assert (=> d!1703707 (=> res!2246727 e!3292765)))

(assert (=> d!1703707 (= res!2246727 e!3292769)))

(declare-fun res!2246725 () Bool)

(assert (=> d!1703707 (=> (not res!2246725) (not e!3292769))))

(assert (=> d!1703707 (= res!2246725 (isDefined!11748 lt!2164355))))

(assert (=> d!1703707 (= lt!2164355 e!3292766)))

(declare-fun c!919406 () Bool)

(assert (=> d!1703707 (= c!919406 e!3292768)))

(declare-fun res!2246724 () Bool)

(assert (=> d!1703707 (=> (not res!2246724) (not e!3292768))))

(assert (=> d!1703707 (= res!2246724 (matchR!7119 (regOne!30380 r!7292) Nil!60979))))

(assert (=> d!1703707 (validRegex!6670 (regOne!30380 r!7292))))

(assert (=> d!1703707 (= (findConcatSeparation!1459 (regOne!30380 r!7292) (regTwo!30380 r!7292) Nil!60979 s!2326 s!2326) lt!2164355)))

(declare-fun b!5297365 () Bool)

(assert (=> b!5297365 (= e!3292766 (Some!15044 (tuple2!64267 Nil!60979 s!2326)))))

(assert (= (and d!1703707 res!2246724) b!5297361))

(assert (= (and d!1703707 c!919406) b!5297365))

(assert (= (and d!1703707 (not c!919406)) b!5297363))

(assert (= (and b!5297363 c!919407) b!5297367))

(assert (= (and b!5297363 (not c!919407)) b!5297368))

(assert (= (and d!1703707 res!2246725) b!5297366))

(assert (= (and b!5297366 res!2246726) b!5297360))

(assert (= (and b!5297360 res!2246728) b!5297362))

(assert (= (and d!1703707 (not res!2246727)) b!5297364))

(declare-fun m!6334790 () Bool)

(assert (=> b!5297360 m!6334790))

(declare-fun m!6334792 () Bool)

(assert (=> b!5297360 m!6334792))

(declare-fun m!6334794 () Bool)

(assert (=> b!5297361 m!6334794))

(assert (=> b!5297368 m!6334512))

(assert (=> b!5297368 m!6334512))

(assert (=> b!5297368 m!6334514))

(assert (=> b!5297368 m!6334516))

(assert (=> b!5297368 m!6334512))

(declare-fun m!6334796 () Bool)

(assert (=> b!5297368 m!6334796))

(assert (=> b!5297366 m!6334790))

(declare-fun m!6334798 () Bool)

(assert (=> b!5297366 m!6334798))

(declare-fun m!6334800 () Bool)

(assert (=> d!1703707 m!6334800))

(declare-fun m!6334802 () Bool)

(assert (=> d!1703707 m!6334802))

(declare-fun m!6334804 () Bool)

(assert (=> d!1703707 m!6334804))

(assert (=> b!5297364 m!6334800))

(assert (=> b!5297362 m!6334790))

(declare-fun m!6334806 () Bool)

(assert (=> b!5297362 m!6334806))

(assert (=> b!5296731 d!1703707))

(declare-fun d!1703709 () Bool)

(assert (=> d!1703709 (= (Exists!2115 lambda!268636) (choose!39580 lambda!268636))))

(declare-fun bs!1228667 () Bool)

(assert (= bs!1228667 d!1703709))

(declare-fun m!6334808 () Bool)

(assert (=> bs!1228667 m!6334808))

(assert (=> b!5296731 d!1703709))

(declare-fun bs!1228668 () Bool)

(declare-fun d!1703711 () Bool)

(assert (= bs!1228668 (and d!1703711 d!1703629)))

(declare-fun lambda!268728 () Int)

(assert (=> bs!1228668 (not (= lambda!268728 lambda!268696))))

(declare-fun bs!1228669 () Bool)

(assert (= bs!1228669 (and d!1703711 b!5297271)))

(assert (=> bs!1228669 (not (= lambda!268728 lambda!268707))))

(declare-fun bs!1228670 () Bool)

(assert (= bs!1228670 (and d!1703711 d!1703623)))

(assert (=> bs!1228670 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268728 lambda!268693))))

(declare-fun bs!1228671 () Bool)

(assert (= bs!1228671 (and d!1703711 b!5297013)))

(assert (=> bs!1228671 (not (= lambda!268728 lambda!268679))))

(declare-fun bs!1228672 () Bool)

(assert (= bs!1228672 (and d!1703711 d!1703641)))

(assert (=> bs!1228672 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268728 lambda!268704))))

(declare-fun bs!1228673 () Bool)

(assert (= bs!1228673 (and d!1703711 b!5296748)))

(assert (=> bs!1228673 (not (= lambda!268728 lambda!268642))))

(assert (=> bs!1228673 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268728 lambda!268639))))

(declare-fun bs!1228674 () Bool)

(assert (= bs!1228674 (and d!1703711 b!5296731)))

(assert (=> bs!1228674 (not (= lambda!268728 lambda!268637))))

(declare-fun bs!1228675 () Bool)

(assert (= bs!1228675 (and d!1703711 b!5297249)))

(assert (=> bs!1228675 (not (= lambda!268728 lambda!268700))))

(assert (=> bs!1228673 (not (= lambda!268728 lambda!268640))))

(declare-fun bs!1228676 () Bool)

(assert (= bs!1228676 (and d!1703711 b!5297246)))

(assert (=> bs!1228676 (not (= lambda!268728 lambda!268701))))

(declare-fun bs!1228677 () Bool)

(assert (= bs!1228677 (and d!1703711 d!1703649)))

(assert (=> bs!1228677 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268728 lambda!268708))))

(assert (=> bs!1228674 (= lambda!268728 lambda!268636)))

(assert (=> bs!1228670 (not (= lambda!268728 lambda!268694))))

(declare-fun bs!1228678 () Bool)

(assert (= bs!1228678 (and d!1703711 b!5297274)))

(assert (=> bs!1228678 (not (= lambda!268728 lambda!268706))))

(declare-fun bs!1228679 () Bool)

(assert (= bs!1228679 (and d!1703711 b!5297016)))

(assert (=> bs!1228679 (not (= lambda!268728 lambda!268678))))

(assert (=> bs!1228673 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268728 lambda!268641))))

(assert (=> bs!1228668 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268728 lambda!268695))))

(assert (=> d!1703711 true))

(assert (=> d!1703711 true))

(assert (=> d!1703711 true))

(assert (=> d!1703711 (= (isDefined!11748 (findConcatSeparation!1459 (regOne!30380 r!7292) (regTwo!30380 r!7292) Nil!60979 s!2326 s!2326)) (Exists!2115 lambda!268728))))

(declare-fun lt!2164356 () Unit!153254)

(assert (=> d!1703711 (= lt!2164356 (choose!39579 (regOne!30380 r!7292) (regTwo!30380 r!7292) s!2326))))

(assert (=> d!1703711 (validRegex!6670 (regOne!30380 r!7292))))

(assert (=> d!1703711 (= (lemmaFindConcatSeparationEquivalentToExists!1223 (regOne!30380 r!7292) (regTwo!30380 r!7292) s!2326) lt!2164356)))

(declare-fun bs!1228680 () Bool)

(assert (= bs!1228680 d!1703711))

(assert (=> bs!1228680 m!6334804))

(assert (=> bs!1228680 m!6334176))

(declare-fun m!6334810 () Bool)

(assert (=> bs!1228680 m!6334810))

(declare-fun m!6334812 () Bool)

(assert (=> bs!1228680 m!6334812))

(assert (=> bs!1228680 m!6334176))

(assert (=> bs!1228680 m!6334178))

(assert (=> b!5296731 d!1703711))

(declare-fun d!1703713 () Bool)

(assert (=> d!1703713 (= (Exists!2115 lambda!268637) (choose!39580 lambda!268637))))

(declare-fun bs!1228681 () Bool)

(assert (= bs!1228681 d!1703713))

(declare-fun m!6334814 () Bool)

(assert (=> bs!1228681 m!6334814))

(assert (=> b!5296731 d!1703713))

(declare-fun bs!1228682 () Bool)

(declare-fun d!1703715 () Bool)

(assert (= bs!1228682 (and d!1703715 d!1703629)))

(declare-fun lambda!268729 () Int)

(assert (=> bs!1228682 (not (= lambda!268729 lambda!268696))))

(declare-fun bs!1228683 () Bool)

(assert (= bs!1228683 (and d!1703715 b!5297271)))

(assert (=> bs!1228683 (not (= lambda!268729 lambda!268707))))

(declare-fun bs!1228684 () Bool)

(assert (= bs!1228684 (and d!1703715 d!1703623)))

(assert (=> bs!1228684 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268729 lambda!268693))))

(declare-fun bs!1228685 () Bool)

(assert (= bs!1228685 (and d!1703715 b!5297013)))

(assert (=> bs!1228685 (not (= lambda!268729 lambda!268679))))

(declare-fun bs!1228686 () Bool)

(assert (= bs!1228686 (and d!1703715 d!1703641)))

(assert (=> bs!1228686 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268729 lambda!268704))))

(declare-fun bs!1228687 () Bool)

(assert (= bs!1228687 (and d!1703715 b!5296748)))

(assert (=> bs!1228687 (not (= lambda!268729 lambda!268642))))

(assert (=> bs!1228687 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268729 lambda!268639))))

(declare-fun bs!1228688 () Bool)

(assert (= bs!1228688 (and d!1703715 b!5296731)))

(assert (=> bs!1228688 (not (= lambda!268729 lambda!268637))))

(declare-fun bs!1228689 () Bool)

(assert (= bs!1228689 (and d!1703715 b!5297249)))

(assert (=> bs!1228689 (not (= lambda!268729 lambda!268700))))

(assert (=> bs!1228687 (not (= lambda!268729 lambda!268640))))

(declare-fun bs!1228690 () Bool)

(assert (= bs!1228690 (and d!1703715 b!5297246)))

(assert (=> bs!1228690 (not (= lambda!268729 lambda!268701))))

(declare-fun bs!1228691 () Bool)

(assert (= bs!1228691 (and d!1703715 d!1703649)))

(assert (=> bs!1228691 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268729 lambda!268708))))

(assert (=> bs!1228688 (= lambda!268729 lambda!268636)))

(assert (=> bs!1228684 (not (= lambda!268729 lambda!268694))))

(declare-fun bs!1228692 () Bool)

(assert (= bs!1228692 (and d!1703715 b!5297274)))

(assert (=> bs!1228692 (not (= lambda!268729 lambda!268706))))

(declare-fun bs!1228693 () Bool)

(assert (= bs!1228693 (and d!1703715 b!5297016)))

(assert (=> bs!1228693 (not (= lambda!268729 lambda!268678))))

(assert (=> bs!1228687 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268729 lambda!268641))))

(declare-fun bs!1228694 () Bool)

(assert (= bs!1228694 (and d!1703715 d!1703711)))

(assert (=> bs!1228694 (= lambda!268729 lambda!268728)))

(assert (=> bs!1228682 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268729 lambda!268695))))

(assert (=> d!1703715 true))

(assert (=> d!1703715 true))

(assert (=> d!1703715 true))

(declare-fun lambda!268730 () Int)

(assert (=> bs!1228682 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268730 lambda!268696))))

(assert (=> bs!1228683 (= (and (= (regOne!30380 r!7292) (regOne!30380 lt!2164092)) (= (regTwo!30380 r!7292) (regTwo!30380 lt!2164092))) (= lambda!268730 lambda!268707))))

(assert (=> bs!1228684 (not (= lambda!268730 lambda!268693))))

(assert (=> bs!1228685 (= lambda!268730 lambda!268679)))

(assert (=> bs!1228686 (not (= lambda!268730 lambda!268704))))

(assert (=> bs!1228687 (not (= lambda!268730 lambda!268639))))

(assert (=> bs!1228688 (= lambda!268730 lambda!268637)))

(assert (=> bs!1228689 (not (= lambda!268730 lambda!268700))))

(assert (=> bs!1228687 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268730 lambda!268640))))

(assert (=> bs!1228690 (= (and (= (regOne!30380 r!7292) (regOne!30380 lt!2164117)) (= (regTwo!30380 r!7292) (regTwo!30380 lt!2164117))) (= lambda!268730 lambda!268701))))

(assert (=> bs!1228691 (not (= lambda!268730 lambda!268708))))

(assert (=> bs!1228688 (not (= lambda!268730 lambda!268636))))

(assert (=> bs!1228684 (= (and (= (regOne!30380 r!7292) (regOne!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164117)) (= lambda!268730 lambda!268694))))

(assert (=> bs!1228692 (not (= lambda!268730 lambda!268706))))

(assert (=> bs!1228693 (not (= lambda!268730 lambda!268678))))

(declare-fun bs!1228695 () Bool)

(assert (= bs!1228695 d!1703715))

(assert (=> bs!1228695 (not (= lambda!268730 lambda!268729))))

(assert (=> bs!1228687 (= (and (= (regOne!30380 r!7292) (regTwo!30380 (regOne!30380 r!7292))) (= (regTwo!30380 r!7292) lt!2164085)) (= lambda!268730 lambda!268642))))

(assert (=> bs!1228687 (not (= lambda!268730 lambda!268641))))

(assert (=> bs!1228694 (not (= lambda!268730 lambda!268728))))

(assert (=> bs!1228682 (not (= lambda!268730 lambda!268695))))

(assert (=> d!1703715 true))

(assert (=> d!1703715 true))

(assert (=> d!1703715 true))

(assert (=> d!1703715 (= (Exists!2115 lambda!268729) (Exists!2115 lambda!268730))))

(declare-fun lt!2164357 () Unit!153254)

(assert (=> d!1703715 (= lt!2164357 (choose!39577 (regOne!30380 r!7292) (regTwo!30380 r!7292) s!2326))))

(assert (=> d!1703715 (validRegex!6670 (regOne!30380 r!7292))))

(assert (=> d!1703715 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!769 (regOne!30380 r!7292) (regTwo!30380 r!7292) s!2326) lt!2164357)))

(declare-fun m!6334816 () Bool)

(assert (=> bs!1228695 m!6334816))

(declare-fun m!6334818 () Bool)

(assert (=> bs!1228695 m!6334818))

(declare-fun m!6334820 () Bool)

(assert (=> bs!1228695 m!6334820))

(assert (=> bs!1228695 m!6334804))

(assert (=> b!5296731 d!1703715))

(declare-fun d!1703717 () Bool)

(assert (=> d!1703717 (= (isDefined!11748 (findConcatSeparation!1459 (regOne!30380 r!7292) (regTwo!30380 r!7292) Nil!60979 s!2326 s!2326)) (not (isEmpty!32942 (findConcatSeparation!1459 (regOne!30380 r!7292) (regTwo!30380 r!7292) Nil!60979 s!2326 s!2326))))))

(declare-fun bs!1228696 () Bool)

(assert (= bs!1228696 d!1703717))

(assert (=> bs!1228696 m!6334176))

(declare-fun m!6334822 () Bool)

(assert (=> bs!1228696 m!6334822))

(assert (=> b!5296731 d!1703717))

(declare-fun d!1703719 () Bool)

(declare-fun c!919408 () Bool)

(assert (=> d!1703719 (= c!919408 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292770 () Bool)

(assert (=> d!1703719 (= (matchZipper!1178 lt!2164108 (t!374308 s!2326)) e!3292770)))

(declare-fun b!5297369 () Bool)

(assert (=> b!5297369 (= e!3292770 (nullableZipper!1317 lt!2164108))))

(declare-fun b!5297370 () Bool)

(assert (=> b!5297370 (= e!3292770 (matchZipper!1178 (derivationStepZipper!1177 lt!2164108 (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703719 c!919408) b!5297369))

(assert (= (and d!1703719 (not c!919408)) b!5297370))

(assert (=> d!1703719 m!6334464))

(declare-fun m!6334824 () Bool)

(assert (=> b!5297369 m!6334824))

(assert (=> b!5297370 m!6334468))

(assert (=> b!5297370 m!6334468))

(declare-fun m!6334826 () Bool)

(assert (=> b!5297370 m!6334826))

(assert (=> b!5297370 m!6334472))

(assert (=> b!5297370 m!6334826))

(assert (=> b!5297370 m!6334472))

(declare-fun m!6334828 () Bool)

(assert (=> b!5297370 m!6334828))

(assert (=> b!5296752 d!1703719))

(declare-fun d!1703721 () Bool)

(assert (=> d!1703721 (= (flatMap!661 lt!2164088 lambda!268638) (dynLambda!24114 lambda!268638 lt!2164121))))

(declare-fun lt!2164358 () Unit!153254)

(assert (=> d!1703721 (= lt!2164358 (choose!39573 lt!2164088 lt!2164121 lambda!268638))))

(assert (=> d!1703721 (= lt!2164088 (set.insert lt!2164121 (as set.empty (Set Context!8636))))))

(assert (=> d!1703721 (= (lemmaFlatMapOnSingletonSet!193 lt!2164088 lt!2164121 lambda!268638) lt!2164358)))

(declare-fun b_lambda!204193 () Bool)

(assert (=> (not b_lambda!204193) (not d!1703721)))

(declare-fun bs!1228697 () Bool)

(assert (= bs!1228697 d!1703721))

(assert (=> bs!1228697 m!6334098))

(declare-fun m!6334830 () Bool)

(assert (=> bs!1228697 m!6334830))

(declare-fun m!6334832 () Bool)

(assert (=> bs!1228697 m!6334832))

(assert (=> bs!1228697 m!6334050))

(assert (=> b!5296752 d!1703721))

(declare-fun e!3292771 () Bool)

(declare-fun d!1703723 () Bool)

(assert (=> d!1703723 (= (matchZipper!1178 (set.union lt!2164127 lt!2164114) (t!374308 s!2326)) e!3292771)))

(declare-fun res!2246729 () Bool)

(assert (=> d!1703723 (=> res!2246729 e!3292771)))

(assert (=> d!1703723 (= res!2246729 (matchZipper!1178 lt!2164127 (t!374308 s!2326)))))

(declare-fun lt!2164359 () Unit!153254)

(assert (=> d!1703723 (= lt!2164359 (choose!39576 lt!2164127 lt!2164114 (t!374308 s!2326)))))

(assert (=> d!1703723 (= (lemmaZipperConcatMatchesSameAsBothZippers!171 lt!2164127 lt!2164114 (t!374308 s!2326)) lt!2164359)))

(declare-fun b!5297371 () Bool)

(assert (=> b!5297371 (= e!3292771 (matchZipper!1178 lt!2164114 (t!374308 s!2326)))))

(assert (= (and d!1703723 (not res!2246729)) b!5297371))

(declare-fun m!6334834 () Bool)

(assert (=> d!1703723 m!6334834))

(assert (=> d!1703723 m!6334090))

(declare-fun m!6334836 () Bool)

(assert (=> d!1703723 m!6334836))

(assert (=> b!5297371 m!6334086))

(assert (=> b!5296752 d!1703723))

(declare-fun d!1703725 () Bool)

(declare-fun c!919409 () Bool)

(assert (=> d!1703725 (= c!919409 (isEmpty!32941 (t!374308 s!2326)))))

(declare-fun e!3292772 () Bool)

(assert (=> d!1703725 (= (matchZipper!1178 lt!2164104 (t!374308 s!2326)) e!3292772)))

(declare-fun b!5297372 () Bool)

(assert (=> b!5297372 (= e!3292772 (nullableZipper!1317 lt!2164104))))

(declare-fun b!5297373 () Bool)

(assert (=> b!5297373 (= e!3292772 (matchZipper!1178 (derivationStepZipper!1177 lt!2164104 (head!11352 (t!374308 s!2326))) (tail!10449 (t!374308 s!2326))))))

(assert (= (and d!1703725 c!919409) b!5297372))

(assert (= (and d!1703725 (not c!919409)) b!5297373))

(assert (=> d!1703725 m!6334464))

(declare-fun m!6334838 () Bool)

(assert (=> b!5297372 m!6334838))

(assert (=> b!5297373 m!6334468))

(assert (=> b!5297373 m!6334468))

(declare-fun m!6334840 () Bool)

(assert (=> b!5297373 m!6334840))

(assert (=> b!5297373 m!6334472))

(assert (=> b!5297373 m!6334840))

(assert (=> b!5297373 m!6334472))

(declare-fun m!6334842 () Bool)

(assert (=> b!5297373 m!6334842))

(assert (=> b!5296752 d!1703725))

(assert (=> b!5296752 d!1703613))

(declare-fun d!1703727 () Bool)

(assert (=> d!1703727 (= (flatMap!661 lt!2164088 lambda!268638) (choose!39574 lt!2164088 lambda!268638))))

(declare-fun bs!1228698 () Bool)

(assert (= bs!1228698 d!1703727))

(declare-fun m!6334844 () Bool)

(assert (=> bs!1228698 m!6334844))

(assert (=> b!5296752 d!1703727))

(declare-fun d!1703729 () Bool)

(declare-fun lt!2164362 () Int)

(assert (=> d!1703729 (>= lt!2164362 0)))

(declare-fun e!3292775 () Int)

(assert (=> d!1703729 (= lt!2164362 e!3292775)))

(declare-fun c!919413 () Bool)

(assert (=> d!1703729 (= c!919413 (is-Cons!60977 (exprs!4818 lt!2164129)))))

(assert (=> d!1703729 (= (contextDepthTotal!75 lt!2164129) lt!2164362)))

(declare-fun b!5297378 () Bool)

(declare-fun regexDepthTotal!30 (Regex!14934) Int)

(assert (=> b!5297378 (= e!3292775 (+ (regexDepthTotal!30 (h!67425 (exprs!4818 lt!2164129))) (contextDepthTotal!75 (Context!8637 (t!374306 (exprs!4818 lt!2164129))))))))

(declare-fun b!5297379 () Bool)

(assert (=> b!5297379 (= e!3292775 1)))

(assert (= (and d!1703729 c!919413) b!5297378))

(assert (= (and d!1703729 (not c!919413)) b!5297379))

(declare-fun m!6334846 () Bool)

(assert (=> b!5297378 m!6334846))

(declare-fun m!6334848 () Bool)

(assert (=> b!5297378 m!6334848))

(assert (=> b!5296753 d!1703729))

(declare-fun d!1703731 () Bool)

(declare-fun lt!2164363 () Int)

(assert (=> d!1703731 (>= lt!2164363 0)))

(declare-fun e!3292776 () Int)

(assert (=> d!1703731 (= lt!2164363 e!3292776)))

(declare-fun c!919414 () Bool)

(assert (=> d!1703731 (= c!919414 (is-Cons!60977 (exprs!4818 (h!67426 zl!343))))))

(assert (=> d!1703731 (= (contextDepthTotal!75 (h!67426 zl!343)) lt!2164363)))

(declare-fun b!5297380 () Bool)

(assert (=> b!5297380 (= e!3292776 (+ (regexDepthTotal!30 (h!67425 (exprs!4818 (h!67426 zl!343)))) (contextDepthTotal!75 (Context!8637 (t!374306 (exprs!4818 (h!67426 zl!343)))))))))

(declare-fun b!5297381 () Bool)

(assert (=> b!5297381 (= e!3292776 1)))

(assert (= (and d!1703731 c!919414) b!5297380))

(assert (= (and d!1703731 (not c!919414)) b!5297381))

(declare-fun m!6334850 () Bool)

(assert (=> b!5297380 m!6334850))

(declare-fun m!6334852 () Bool)

(assert (=> b!5297380 m!6334852))

(assert (=> b!5296753 d!1703731))

(declare-fun b!5297382 () Bool)

(declare-fun e!3292782 () (Set Context!8636))

(declare-fun e!3292777 () (Set Context!8636))

(assert (=> b!5297382 (= e!3292782 e!3292777)))

(declare-fun c!919416 () Bool)

(assert (=> b!5297382 (= c!919416 (is-Union!14934 (regTwo!30380 (regOne!30380 r!7292))))))

(declare-fun b!5297383 () Bool)

(declare-fun e!3292779 () (Set Context!8636))

(declare-fun call!377609 () (Set Context!8636))

(assert (=> b!5297383 (= e!3292779 call!377609)))

(declare-fun b!5297384 () Bool)

(declare-fun e!3292778 () (Set Context!8636))

(declare-fun call!377612 () (Set Context!8636))

(declare-fun call!377613 () (Set Context!8636))

(assert (=> b!5297384 (= e!3292778 (set.union call!377612 call!377613))))

(declare-fun c!919418 () Bool)

(declare-fun c!919415 () Bool)

(declare-fun bm!377604 () Bool)

(declare-fun call!377614 () List!61101)

(declare-fun call!377610 () (Set Context!8636))

(assert (=> bm!377604 (= call!377610 (derivationStepZipperDown!382 (ite c!919416 (regTwo!30381 (regTwo!30380 (regOne!30380 r!7292))) (ite c!919415 (regTwo!30380 (regTwo!30380 (regOne!30380 r!7292))) (ite c!919418 (regOne!30380 (regTwo!30380 (regOne!30380 r!7292))) (reg!15263 (regTwo!30380 (regOne!30380 r!7292)))))) (ite (or c!919416 c!919415) lt!2164094 (Context!8637 call!377614)) (h!67427 s!2326)))))

(declare-fun bm!377605 () Bool)

(declare-fun call!377611 () List!61101)

(assert (=> bm!377605 (= call!377614 call!377611)))

(declare-fun b!5297385 () Bool)

(assert (=> b!5297385 (= e!3292777 (set.union call!377612 call!377610))))

(declare-fun bm!377606 () Bool)

(assert (=> bm!377606 (= call!377609 call!377613)))

(declare-fun b!5297386 () Bool)

(declare-fun e!3292781 () (Set Context!8636))

(assert (=> b!5297386 (= e!3292781 (as set.empty (Set Context!8636)))))

(declare-fun b!5297387 () Bool)

(assert (=> b!5297387 (= e!3292781 call!377609)))

(declare-fun b!5297388 () Bool)

(assert (=> b!5297388 (= e!3292778 e!3292779)))

(assert (=> b!5297388 (= c!919418 (is-Concat!23779 (regTwo!30380 (regOne!30380 r!7292))))))

(declare-fun b!5297389 () Bool)

(assert (=> b!5297389 (= e!3292782 (set.insert lt!2164094 (as set.empty (Set Context!8636))))))

(declare-fun d!1703733 () Bool)

(declare-fun c!919417 () Bool)

(assert (=> d!1703733 (= c!919417 (and (is-ElementMatch!14934 (regTwo!30380 (regOne!30380 r!7292))) (= (c!919246 (regTwo!30380 (regOne!30380 r!7292))) (h!67427 s!2326))))))

(assert (=> d!1703733 (= (derivationStepZipperDown!382 (regTwo!30380 (regOne!30380 r!7292)) lt!2164094 (h!67427 s!2326)) e!3292782)))

(declare-fun b!5297390 () Bool)

(declare-fun e!3292780 () Bool)

(assert (=> b!5297390 (= c!919415 e!3292780)))

(declare-fun res!2246730 () Bool)

(assert (=> b!5297390 (=> (not res!2246730) (not e!3292780))))

(assert (=> b!5297390 (= res!2246730 (is-Concat!23779 (regTwo!30380 (regOne!30380 r!7292))))))

(assert (=> b!5297390 (= e!3292777 e!3292778)))

(declare-fun bm!377607 () Bool)

(assert (=> bm!377607 (= call!377613 call!377610)))

(declare-fun bm!377608 () Bool)

(assert (=> bm!377608 (= call!377611 ($colon$colon!1367 (exprs!4818 lt!2164094) (ite (or c!919415 c!919418) (regTwo!30380 (regTwo!30380 (regOne!30380 r!7292))) (regTwo!30380 (regOne!30380 r!7292)))))))

(declare-fun b!5297391 () Bool)

(assert (=> b!5297391 (= e!3292780 (nullable!5103 (regOne!30380 (regTwo!30380 (regOne!30380 r!7292)))))))

(declare-fun b!5297392 () Bool)

(declare-fun c!919419 () Bool)

(assert (=> b!5297392 (= c!919419 (is-Star!14934 (regTwo!30380 (regOne!30380 r!7292))))))

(assert (=> b!5297392 (= e!3292779 e!3292781)))

(declare-fun bm!377609 () Bool)

(assert (=> bm!377609 (= call!377612 (derivationStepZipperDown!382 (ite c!919416 (regOne!30381 (regTwo!30380 (regOne!30380 r!7292))) (regOne!30380 (regTwo!30380 (regOne!30380 r!7292)))) (ite c!919416 lt!2164094 (Context!8637 call!377611)) (h!67427 s!2326)))))

(assert (= (and d!1703733 c!919417) b!5297389))

(assert (= (and d!1703733 (not c!919417)) b!5297382))

(assert (= (and b!5297382 c!919416) b!5297385))

(assert (= (and b!5297382 (not c!919416)) b!5297390))

(assert (= (and b!5297390 res!2246730) b!5297391))

(assert (= (and b!5297390 c!919415) b!5297384))

(assert (= (and b!5297390 (not c!919415)) b!5297388))

(assert (= (and b!5297388 c!919418) b!5297383))

(assert (= (and b!5297388 (not c!919418)) b!5297392))

(assert (= (and b!5297392 c!919419) b!5297387))

(assert (= (and b!5297392 (not c!919419)) b!5297386))

(assert (= (or b!5297383 b!5297387) bm!377605))

(assert (= (or b!5297383 b!5297387) bm!377606))

(assert (= (or b!5297384 bm!377605) bm!377608))

(assert (= (or b!5297384 bm!377606) bm!377607))

(assert (= (or b!5297385 bm!377607) bm!377604))

(assert (= (or b!5297385 b!5297384) bm!377609))

(declare-fun m!6334854 () Bool)

(assert (=> bm!377608 m!6334854))

(declare-fun m!6334856 () Bool)

(assert (=> bm!377604 m!6334856))

(declare-fun m!6334858 () Bool)

(assert (=> bm!377609 m!6334858))

(assert (=> b!5297389 m!6334378))

(declare-fun m!6334860 () Bool)

(assert (=> b!5297391 m!6334860))

(assert (=> b!5296733 d!1703733))

(declare-fun b!5297393 () Bool)

(declare-fun e!3292788 () (Set Context!8636))

(declare-fun e!3292783 () (Set Context!8636))

(assert (=> b!5297393 (= e!3292788 e!3292783)))

(declare-fun c!919421 () Bool)

(assert (=> b!5297393 (= c!919421 (is-Union!14934 (regOne!30380 (regOne!30380 r!7292))))))

(declare-fun b!5297394 () Bool)

(declare-fun e!3292785 () (Set Context!8636))

(declare-fun call!377615 () (Set Context!8636))

(assert (=> b!5297394 (= e!3292785 call!377615)))

(declare-fun b!5297395 () Bool)

(declare-fun e!3292784 () (Set Context!8636))

(declare-fun call!377618 () (Set Context!8636))

(declare-fun call!377619 () (Set Context!8636))

(assert (=> b!5297395 (= e!3292784 (set.union call!377618 call!377619))))

(declare-fun c!919420 () Bool)

(declare-fun bm!377610 () Bool)

(declare-fun c!919423 () Bool)

(declare-fun call!377616 () (Set Context!8636))

(declare-fun call!377620 () List!61101)

(assert (=> bm!377610 (= call!377616 (derivationStepZipperDown!382 (ite c!919421 (regTwo!30381 (regOne!30380 (regOne!30380 r!7292))) (ite c!919420 (regTwo!30380 (regOne!30380 (regOne!30380 r!7292))) (ite c!919423 (regOne!30380 (regOne!30380 (regOne!30380 r!7292))) (reg!15263 (regOne!30380 (regOne!30380 r!7292)))))) (ite (or c!919421 c!919420) lt!2164121 (Context!8637 call!377620)) (h!67427 s!2326)))))

(declare-fun bm!377611 () Bool)

(declare-fun call!377617 () List!61101)

(assert (=> bm!377611 (= call!377620 call!377617)))

(declare-fun b!5297396 () Bool)

(assert (=> b!5297396 (= e!3292783 (set.union call!377618 call!377616))))

(declare-fun bm!377612 () Bool)

(assert (=> bm!377612 (= call!377615 call!377619)))

(declare-fun b!5297397 () Bool)

(declare-fun e!3292787 () (Set Context!8636))

(assert (=> b!5297397 (= e!3292787 (as set.empty (Set Context!8636)))))

(declare-fun b!5297398 () Bool)

(assert (=> b!5297398 (= e!3292787 call!377615)))

(declare-fun b!5297399 () Bool)

(assert (=> b!5297399 (= e!3292784 e!3292785)))

(assert (=> b!5297399 (= c!919423 (is-Concat!23779 (regOne!30380 (regOne!30380 r!7292))))))

(declare-fun b!5297400 () Bool)

(assert (=> b!5297400 (= e!3292788 (set.insert lt!2164121 (as set.empty (Set Context!8636))))))

(declare-fun d!1703735 () Bool)

(declare-fun c!919422 () Bool)

(assert (=> d!1703735 (= c!919422 (and (is-ElementMatch!14934 (regOne!30380 (regOne!30380 r!7292))) (= (c!919246 (regOne!30380 (regOne!30380 r!7292))) (h!67427 s!2326))))))

(assert (=> d!1703735 (= (derivationStepZipperDown!382 (regOne!30380 (regOne!30380 r!7292)) lt!2164121 (h!67427 s!2326)) e!3292788)))

(declare-fun b!5297401 () Bool)

(declare-fun e!3292786 () Bool)

(assert (=> b!5297401 (= c!919420 e!3292786)))

(declare-fun res!2246731 () Bool)

(assert (=> b!5297401 (=> (not res!2246731) (not e!3292786))))

(assert (=> b!5297401 (= res!2246731 (is-Concat!23779 (regOne!30380 (regOne!30380 r!7292))))))

(assert (=> b!5297401 (= e!3292783 e!3292784)))

(declare-fun bm!377613 () Bool)

(assert (=> bm!377613 (= call!377619 call!377616)))

(declare-fun bm!377614 () Bool)

(assert (=> bm!377614 (= call!377617 ($colon$colon!1367 (exprs!4818 lt!2164121) (ite (or c!919420 c!919423) (regTwo!30380 (regOne!30380 (regOne!30380 r!7292))) (regOne!30380 (regOne!30380 r!7292)))))))

(declare-fun b!5297402 () Bool)

(assert (=> b!5297402 (= e!3292786 (nullable!5103 (regOne!30380 (regOne!30380 (regOne!30380 r!7292)))))))

(declare-fun b!5297403 () Bool)

(declare-fun c!919424 () Bool)

(assert (=> b!5297403 (= c!919424 (is-Star!14934 (regOne!30380 (regOne!30380 r!7292))))))

(assert (=> b!5297403 (= e!3292785 e!3292787)))

(declare-fun bm!377615 () Bool)

(assert (=> bm!377615 (= call!377618 (derivationStepZipperDown!382 (ite c!919421 (regOne!30381 (regOne!30380 (regOne!30380 r!7292))) (regOne!30380 (regOne!30380 (regOne!30380 r!7292)))) (ite c!919421 lt!2164121 (Context!8637 call!377617)) (h!67427 s!2326)))))

(assert (= (and d!1703735 c!919422) b!5297400))

(assert (= (and d!1703735 (not c!919422)) b!5297393))

(assert (= (and b!5297393 c!919421) b!5297396))

(assert (= (and b!5297393 (not c!919421)) b!5297401))

(assert (= (and b!5297401 res!2246731) b!5297402))

(assert (= (and b!5297401 c!919420) b!5297395))

(assert (= (and b!5297401 (not c!919420)) b!5297399))

(assert (= (and b!5297399 c!919423) b!5297394))

(assert (= (and b!5297399 (not c!919423)) b!5297403))

(assert (= (and b!5297403 c!919424) b!5297398))

(assert (= (and b!5297403 (not c!919424)) b!5297397))

(assert (= (or b!5297394 b!5297398) bm!377611))

(assert (= (or b!5297394 b!5297398) bm!377612))

(assert (= (or b!5297395 bm!377611) bm!377614))

(assert (= (or b!5297395 bm!377612) bm!377613))

(assert (= (or b!5297396 bm!377613) bm!377610))

(assert (= (or b!5297396 b!5297395) bm!377615))

(declare-fun m!6334862 () Bool)

(assert (=> bm!377614 m!6334862))

(declare-fun m!6334864 () Bool)

(assert (=> bm!377610 m!6334864))

(declare-fun m!6334866 () Bool)

(assert (=> bm!377615 m!6334866))

(assert (=> b!5297400 m!6334050))

(declare-fun m!6334868 () Bool)

(assert (=> b!5297402 m!6334868))

(assert (=> b!5296733 d!1703735))

(declare-fun b!5297408 () Bool)

(declare-fun e!3292791 () Bool)

(declare-fun tp!1477754 () Bool)

(declare-fun tp!1477755 () Bool)

(assert (=> b!5297408 (= e!3292791 (and tp!1477754 tp!1477755))))

(assert (=> b!5296728 (= tp!1477719 e!3292791)))

(assert (= (and b!5296728 (is-Cons!60977 (exprs!4818 (h!67426 zl!343)))) b!5297408))

(declare-fun b!5297409 () Bool)

(declare-fun e!3292792 () Bool)

(declare-fun tp!1477756 () Bool)

(declare-fun tp!1477757 () Bool)

(assert (=> b!5297409 (= e!3292792 (and tp!1477756 tp!1477757))))

(assert (=> b!5296754 (= tp!1477716 e!3292792)))

(assert (= (and b!5296754 (is-Cons!60977 (exprs!4818 setElem!34010))) b!5297409))

(declare-fun b!5297421 () Bool)

(declare-fun e!3292795 () Bool)

(declare-fun tp!1477768 () Bool)

(declare-fun tp!1477770 () Bool)

(assert (=> b!5297421 (= e!3292795 (and tp!1477768 tp!1477770))))

(declare-fun b!5297422 () Bool)

(declare-fun tp!1477772 () Bool)

(assert (=> b!5297422 (= e!3292795 tp!1477772)))

(assert (=> b!5296749 (= tp!1477711 e!3292795)))

(declare-fun b!5297420 () Bool)

(assert (=> b!5297420 (= e!3292795 tp_is_empty!39121)))

(declare-fun b!5297423 () Bool)

(declare-fun tp!1477771 () Bool)

(declare-fun tp!1477769 () Bool)

(assert (=> b!5297423 (= e!3292795 (and tp!1477771 tp!1477769))))

(assert (= (and b!5296749 (is-ElementMatch!14934 (regOne!30381 r!7292))) b!5297420))

(assert (= (and b!5296749 (is-Concat!23779 (regOne!30381 r!7292))) b!5297421))

(assert (= (and b!5296749 (is-Star!14934 (regOne!30381 r!7292))) b!5297422))

(assert (= (and b!5296749 (is-Union!14934 (regOne!30381 r!7292))) b!5297423))

(declare-fun b!5297425 () Bool)

(declare-fun e!3292796 () Bool)

(declare-fun tp!1477773 () Bool)

(declare-fun tp!1477775 () Bool)

(assert (=> b!5297425 (= e!3292796 (and tp!1477773 tp!1477775))))

(declare-fun b!5297426 () Bool)

(declare-fun tp!1477777 () Bool)

(assert (=> b!5297426 (= e!3292796 tp!1477777)))

(assert (=> b!5296749 (= tp!1477715 e!3292796)))

(declare-fun b!5297424 () Bool)

(assert (=> b!5297424 (= e!3292796 tp_is_empty!39121)))

(declare-fun b!5297427 () Bool)

(declare-fun tp!1477776 () Bool)

(declare-fun tp!1477774 () Bool)

(assert (=> b!5297427 (= e!3292796 (and tp!1477776 tp!1477774))))

(assert (= (and b!5296749 (is-ElementMatch!14934 (regTwo!30381 r!7292))) b!5297424))

(assert (= (and b!5296749 (is-Concat!23779 (regTwo!30381 r!7292))) b!5297425))

(assert (= (and b!5296749 (is-Star!14934 (regTwo!30381 r!7292))) b!5297426))

(assert (= (and b!5296749 (is-Union!14934 (regTwo!30381 r!7292))) b!5297427))

(declare-fun b!5297429 () Bool)

(declare-fun e!3292797 () Bool)

(declare-fun tp!1477778 () Bool)

(declare-fun tp!1477780 () Bool)

(assert (=> b!5297429 (= e!3292797 (and tp!1477778 tp!1477780))))

(declare-fun b!5297430 () Bool)

(declare-fun tp!1477782 () Bool)

(assert (=> b!5297430 (= e!3292797 tp!1477782)))

(assert (=> b!5296744 (= tp!1477713 e!3292797)))

(declare-fun b!5297428 () Bool)

(assert (=> b!5297428 (= e!3292797 tp_is_empty!39121)))

(declare-fun b!5297431 () Bool)

(declare-fun tp!1477781 () Bool)

(declare-fun tp!1477779 () Bool)

(assert (=> b!5297431 (= e!3292797 (and tp!1477781 tp!1477779))))

(assert (= (and b!5296744 (is-ElementMatch!14934 (reg!15263 r!7292))) b!5297428))

(assert (= (and b!5296744 (is-Concat!23779 (reg!15263 r!7292))) b!5297429))

(assert (= (and b!5296744 (is-Star!14934 (reg!15263 r!7292))) b!5297430))

(assert (= (and b!5296744 (is-Union!14934 (reg!15263 r!7292))) b!5297431))

(declare-fun condSetEmpty!34016 () Bool)

(assert (=> setNonEmpty!34010 (= condSetEmpty!34016 (= setRest!34010 (as set.empty (Set Context!8636))))))

(declare-fun setRes!34016 () Bool)

(assert (=> setNonEmpty!34010 (= tp!1477712 setRes!34016)))

(declare-fun setIsEmpty!34016 () Bool)

(assert (=> setIsEmpty!34016 setRes!34016))

(declare-fun setNonEmpty!34016 () Bool)

(declare-fun tp!1477787 () Bool)

(declare-fun setElem!34016 () Context!8636)

(declare-fun e!3292800 () Bool)

(assert (=> setNonEmpty!34016 (= setRes!34016 (and tp!1477787 (inv!80583 setElem!34016) e!3292800))))

(declare-fun setRest!34016 () (Set Context!8636))

(assert (=> setNonEmpty!34016 (= setRest!34010 (set.union (set.insert setElem!34016 (as set.empty (Set Context!8636))) setRest!34016))))

(declare-fun b!5297436 () Bool)

(declare-fun tp!1477788 () Bool)

(assert (=> b!5297436 (= e!3292800 tp!1477788)))

(assert (= (and setNonEmpty!34010 condSetEmpty!34016) setIsEmpty!34016))

(assert (= (and setNonEmpty!34010 (not condSetEmpty!34016)) setNonEmpty!34016))

(assert (= setNonEmpty!34016 b!5297436))

(declare-fun m!6334870 () Bool)

(assert (=> setNonEmpty!34016 m!6334870))

(declare-fun b!5297438 () Bool)

(declare-fun e!3292801 () Bool)

(declare-fun tp!1477789 () Bool)

(declare-fun tp!1477791 () Bool)

(assert (=> b!5297438 (= e!3292801 (and tp!1477789 tp!1477791))))

(declare-fun b!5297439 () Bool)

(declare-fun tp!1477793 () Bool)

(assert (=> b!5297439 (= e!3292801 tp!1477793)))

(assert (=> b!5296725 (= tp!1477718 e!3292801)))

(declare-fun b!5297437 () Bool)

(assert (=> b!5297437 (= e!3292801 tp_is_empty!39121)))

(declare-fun b!5297440 () Bool)

(declare-fun tp!1477792 () Bool)

(declare-fun tp!1477790 () Bool)

(assert (=> b!5297440 (= e!3292801 (and tp!1477792 tp!1477790))))

(assert (= (and b!5296725 (is-ElementMatch!14934 (regOne!30380 r!7292))) b!5297437))

(assert (= (and b!5296725 (is-Concat!23779 (regOne!30380 r!7292))) b!5297438))

(assert (= (and b!5296725 (is-Star!14934 (regOne!30380 r!7292))) b!5297439))

(assert (= (and b!5296725 (is-Union!14934 (regOne!30380 r!7292))) b!5297440))

(declare-fun b!5297442 () Bool)

(declare-fun e!3292802 () Bool)

(declare-fun tp!1477794 () Bool)

(declare-fun tp!1477796 () Bool)

(assert (=> b!5297442 (= e!3292802 (and tp!1477794 tp!1477796))))

(declare-fun b!5297443 () Bool)

(declare-fun tp!1477798 () Bool)

(assert (=> b!5297443 (= e!3292802 tp!1477798)))

(assert (=> b!5296725 (= tp!1477710 e!3292802)))

(declare-fun b!5297441 () Bool)

(assert (=> b!5297441 (= e!3292802 tp_is_empty!39121)))

(declare-fun b!5297444 () Bool)

(declare-fun tp!1477797 () Bool)

(declare-fun tp!1477795 () Bool)

(assert (=> b!5297444 (= e!3292802 (and tp!1477797 tp!1477795))))

(assert (= (and b!5296725 (is-ElementMatch!14934 (regTwo!30380 r!7292))) b!5297441))

(assert (= (and b!5296725 (is-Concat!23779 (regTwo!30380 r!7292))) b!5297442))

(assert (= (and b!5296725 (is-Star!14934 (regTwo!30380 r!7292))) b!5297443))

(assert (= (and b!5296725 (is-Union!14934 (regTwo!30380 r!7292))) b!5297444))

(declare-fun b!5297449 () Bool)

(declare-fun e!3292805 () Bool)

(declare-fun tp!1477801 () Bool)

(assert (=> b!5297449 (= e!3292805 (and tp_is_empty!39121 tp!1477801))))

(assert (=> b!5296726 (= tp!1477714 e!3292805)))

(assert (= (and b!5296726 (is-Cons!60979 (t!374308 s!2326))) b!5297449))

(declare-fun b!5297457 () Bool)

(declare-fun e!3292811 () Bool)

(declare-fun tp!1477806 () Bool)

(assert (=> b!5297457 (= e!3292811 tp!1477806)))

(declare-fun tp!1477807 () Bool)

(declare-fun e!3292810 () Bool)

(declare-fun b!5297456 () Bool)

(assert (=> b!5297456 (= e!3292810 (and (inv!80583 (h!67426 (t!374307 zl!343))) e!3292811 tp!1477807))))

(assert (=> b!5296722 (= tp!1477717 e!3292810)))

(assert (= b!5297456 b!5297457))

(assert (= (and b!5296722 (is-Cons!60978 (t!374307 zl!343))) b!5297456))

(declare-fun m!6334872 () Bool)

(assert (=> b!5297456 m!6334872))

(declare-fun b_lambda!204195 () Bool)

(assert (= b_lambda!204193 (or b!5296743 b_lambda!204195)))

(declare-fun bs!1228699 () Bool)

(declare-fun d!1703737 () Bool)

(assert (= bs!1228699 (and d!1703737 b!5296743)))

(assert (=> bs!1228699 (= (dynLambda!24114 lambda!268638 lt!2164121) (derivationStepZipperUp!306 lt!2164121 (h!67427 s!2326)))))

(assert (=> bs!1228699 m!6334054))

(assert (=> d!1703721 d!1703737))

(declare-fun b_lambda!204197 () Bool)

(assert (= b_lambda!204189 (or b!5296743 b_lambda!204197)))

(declare-fun bs!1228700 () Bool)

(declare-fun d!1703739 () Bool)

(assert (= bs!1228700 (and d!1703739 b!5296743)))

(assert (=> bs!1228700 (= (dynLambda!24114 lambda!268638 (h!67426 zl!343)) (derivationStepZipperUp!306 (h!67426 zl!343) (h!67427 s!2326)))))

(assert (=> bs!1228700 m!6334072))

(assert (=> d!1703581 d!1703739))

(declare-fun b_lambda!204199 () Bool)

(assert (= b_lambda!204191 (or b!5296743 b_lambda!204199)))

(declare-fun bs!1228701 () Bool)

(declare-fun d!1703741 () Bool)

(assert (= bs!1228701 (and d!1703741 b!5296743)))

(assert (=> bs!1228701 (= (dynLambda!24114 lambda!268638 lt!2164129) (derivationStepZipperUp!306 lt!2164129 (h!67427 s!2326)))))

(assert (=> bs!1228701 m!6334052))

(assert (=> d!1703605 d!1703741))

(push 1)

(assert (not b!5297285))

(assert (not d!1703719))

(assert (not b!5297356))

(assert (not b!5297439))

(assert (not d!1703591))

(assert (not b!5296969))

(assert (not b!5297225))

(assert (not b!5296974))

(assert (not b_lambda!204197))

(assert (not b!5297346))

(assert (not b!5297260))

(assert (not b!5297134))

(assert (not b!5297421))

(assert (not b!5296951))

(assert (not bm!377597))

(assert (not b!5296973))

(assert (not d!1703619))

(assert (not b!5297429))

(assert (not b!5297456))

(assert (not b!5297262))

(assert (not b!5297136))

(assert (not b!5297304))

(assert (not b!5297337))

(assert (not d!1703667))

(assert (not bm!377599))

(assert (not b_lambda!204195))

(assert (not b!5297171))

(assert (not bm!377596))

(assert (not b!5297084))

(assert (not bm!377598))

(assert (not b!5297443))

(assert (not d!1703707))

(assert (not d!1703697))

(assert (not d!1703715))

(assert (not b!5297224))

(assert (not bm!377583))

(assert (not bm!377615))

(assert (not bm!377569))

(assert (not bm!377609))

(assert (not bm!377568))

(assert (not b!5297368))

(assert (not d!1703679))

(assert (not b!5297324))

(assert (not b!5297295))

(assert (not bm!377593))

(assert (not b!5297347))

(assert (not b!5297128))

(assert (not d!1703689))

(assert (not b!5297145))

(assert (not b!5297197))

(assert (not b!5297019))

(assert (not d!1703603))

(assert (not b!5297334))

(assert (not b!5297438))

(assert (not d!1703727))

(assert (not b!5297175))

(assert (not b!5297097))

(assert (not b!5297264))

(assert (not d!1703635))

(assert (not d!1703721))

(assert (not b!5297179))

(assert (not bm!377614))

(assert (not d!1703659))

(assert (not bm!377601))

(assert (not d!1703691))

(assert (not d!1703623))

(assert (not bm!377604))

(assert (not b!5297253))

(assert (not b!5297369))

(assert (not d!1703657))

(assert (not b!5297427))

(assert (not d!1703683))

(assert (not b!5297058))

(assert (not d!1703581))

(assert (not b!5297290))

(assert (not d!1703637))

(assert (not bm!377594))

(assert (not b!5297303))

(assert (not b!5297298))

(assert (not b!5297341))

(assert (not b!5297339))

(assert (not b!5297329))

(assert (not b!5297092))

(assert (not d!1703605))

(assert (not b!5297062))

(assert (not b!5297358))

(assert (not d!1703625))

(assert (not b!5297051))

(assert (not b!5297343))

(assert (not b!5297265))

(assert (not d!1703701))

(assert (not d!1703589))

(assert (not b!5297281))

(assert (not b!5297314))

(assert (not d!1703601))

(assert (not b!5297457))

(assert (not d!1703617))

(assert (not b!5297234))

(assert (not d!1703651))

(assert (not b!5297236))

(assert (not b!5297297))

(assert (not b!5297436))

(assert (not b!5297138))

(assert (not b!5297149))

(assert (not b!5297233))

(assert (not b!5297366))

(assert (not b!5297442))

(assert (not d!1703677))

(assert (not b!5297422))

(assert tp_is_empty!39121)

(assert (not b!5297240))

(assert (not bm!377590))

(assert (not b!5297426))

(assert (not d!1703693))

(assert (not b!5297322))

(assert (not bm!377572))

(assert (not b!5297350))

(assert (not d!1703597))

(assert (not d!1703653))

(assert (not b!5297238))

(assert (not b!5297380))

(assert (not b!5297242))

(assert (not d!1703573))

(assert (not b!5297199))

(assert (not b!5297137))

(assert (not b!5297170))

(assert (not b!5297402))

(assert (not b!5297315))

(assert (not b!5297409))

(assert (not b!5297086))

(assert (not b!5297228))

(assert (not b!5297178))

(assert (not d!1703633))

(assert (not b!5297061))

(assert (not d!1703665))

(assert (not b!5297060))

(assert (not b!5297431))

(assert (not d!1703615))

(assert (not b!5297449))

(assert (not b!5296968))

(assert (not d!1703583))

(assert (not b!5296964))

(assert (not b!5297292))

(assert (not d!1703709))

(assert (not d!1703647))

(assert (not d!1703671))

(assert (not b!5297335))

(assert (not d!1703641))

(assert (not b!5297169))

(assert (not b!5297085))

(assert (not b!5297294))

(assert (not b!5297299))

(assert (not d!1703627))

(assert (not b!5297144))

(assert (not bm!377600))

(assert (not bs!1228699))

(assert (not b!5297342))

(assert (not b!5297361))

(assert (not b!5297083))

(assert (not d!1703587))

(assert (not b!5297378))

(assert (not bm!377603))

(assert (not b!5297336))

(assert (not d!1703725))

(assert (not d!1703685))

(assert (not d!1703681))

(assert (not b!5297123))

(assert (not bm!377580))

(assert (not b!5297327))

(assert (not b!5297227))

(assert (not d!1703631))

(assert (not b!5297430))

(assert (not b!5297194))

(assert (not b!5297288))

(assert (not b!5297229))

(assert (not b!5297364))

(assert (not bm!377592))

(assert (not b!5297089))

(assert (not bm!377610))

(assert (not b!5297177))

(assert (not b!5297345))

(assert (not b!5297252))

(assert (not b!5296963))

(assert (not d!1703723))

(assert (not d!1703717))

(assert (not b!5297201))

(assert (not b!5297263))

(assert (not bs!1228700))

(assert (not setNonEmpty!34016))

(assert (not d!1703711))

(assert (not b!5297055))

(assert (not bm!377573))

(assert (not b!5297344))

(assert (not b!5297291))

(assert (not b!5297391))

(assert (not bm!377608))

(assert (not bm!377574))

(assert (not b!5297444))

(assert (not b!5297351))

(assert (not b!5297296))

(assert (not d!1703649))

(assert (not b_lambda!204199))

(assert (not d!1703609))

(assert (not b!5297259))

(assert (not b!5297135))

(assert (not bs!1228701))

(assert (not b!5297373))

(assert (not b!5297362))

(assert (not d!1703661))

(assert (not b!5297300))

(assert (not d!1703629))

(assert (not b!5297133))

(assert (not d!1703621))

(assert (not b!5297226))

(assert (not b!5297190))

(assert (not b!5297278))

(assert (not b!5297333))

(assert (not d!1703593))

(assert (not b!5297235))

(assert (not d!1703687))

(assert (not b!5297370))

(assert (not d!1703663))

(assert (not b!5297425))

(assert (not b!5297360))

(assert (not d!1703643))

(assert (not b!5297371))

(assert (not bm!377579))

(assert (not b!5297150))

(assert (not bm!377564))

(assert (not b!5297408))

(assert (not bm!377595))

(assert (not b!5297020))

(assert (not b!5297332))

(assert (not b!5297223))

(assert (not b!5297440))

(assert (not b!5297200))

(assert (not b!5297277))

(assert (not b!5297311))

(assert (not d!1703655))

(assert (not b!5297232))

(assert (not d!1703599))

(assert (not b!5297423))

(assert (not b!5297261))

(assert (not b!5297087))

(assert (not b!5297372))

(assert (not b!5297173))

(assert (not d!1703713))

(assert (not d!1703611))

(assert (not b!5297338))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

