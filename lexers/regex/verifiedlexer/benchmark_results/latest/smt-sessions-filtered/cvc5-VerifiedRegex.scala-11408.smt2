; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!611080 () Bool)

(assert start!611080)

(declare-fun b!6113606 () Bool)

(assert (=> b!6113606 true))

(assert (=> b!6113606 true))

(declare-fun lambda!333077 () Int)

(declare-fun lambda!333076 () Int)

(assert (=> b!6113606 (not (= lambda!333077 lambda!333076))))

(assert (=> b!6113606 true))

(assert (=> b!6113606 true))

(declare-fun b!6113608 () Bool)

(assert (=> b!6113608 true))

(declare-fun b!6113594 () Bool)

(declare-fun e!3727639 () Bool)

(declare-fun tp!1707656 () Bool)

(declare-fun tp!1707649 () Bool)

(assert (=> b!6113594 (= e!3727639 (and tp!1707656 tp!1707649))))

(declare-fun b!6113595 () Bool)

(declare-fun res!2535499 () Bool)

(declare-fun e!3727633 () Bool)

(assert (=> b!6113595 (=> res!2535499 e!3727633)))

(declare-datatypes ((C!32394 0))(
  ( (C!32395 (val!25899 Int)) )
))
(declare-datatypes ((Regex!16062 0))(
  ( (ElementMatch!16062 (c!1098472 C!32394)) (Concat!24907 (regOne!32636 Regex!16062) (regTwo!32636 Regex!16062)) (EmptyExpr!16062) (Star!16062 (reg!16391 Regex!16062)) (EmptyLang!16062) (Union!16062 (regOne!32637 Regex!16062) (regTwo!32637 Regex!16062)) )
))
(declare-datatypes ((List!64485 0))(
  ( (Nil!64361) (Cons!64361 (h!70809 Regex!16062) (t!377944 List!64485)) )
))
(declare-datatypes ((Context!10892 0))(
  ( (Context!10893 (exprs!5946 List!64485)) )
))
(declare-datatypes ((List!64486 0))(
  ( (Nil!64362) (Cons!64362 (h!70810 Context!10892) (t!377945 List!64486)) )
))
(declare-fun zl!343 () List!64486)

(assert (=> b!6113595 (= res!2535499 (not (is-Cons!64361 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun setIsEmpty!41313 () Bool)

(declare-fun setRes!41313 () Bool)

(assert (=> setIsEmpty!41313 setRes!41313))

(declare-fun e!3727638 () Bool)

(declare-fun tp!1707648 () Bool)

(declare-fun e!3727632 () Bool)

(declare-fun b!6113596 () Bool)

(declare-fun inv!83403 (Context!10892) Bool)

(assert (=> b!6113596 (= e!3727638 (and (inv!83403 (h!70810 zl!343)) e!3727632 tp!1707648))))

(declare-fun b!6113597 () Bool)

(declare-fun e!3727641 () Bool)

(declare-fun tp_is_empty!41377 () Bool)

(declare-fun tp!1707650 () Bool)

(assert (=> b!6113597 (= e!3727641 (and tp_is_empty!41377 tp!1707650))))

(declare-fun b!6113598 () Bool)

(declare-fun res!2535502 () Bool)

(declare-fun e!3727642 () Bool)

(assert (=> b!6113598 (=> (not res!2535502) (not e!3727642))))

(declare-fun r!7292 () Regex!16062)

(declare-fun unfocusZipper!1804 (List!64486) Regex!16062)

(assert (=> b!6113598 (= res!2535502 (= r!7292 (unfocusZipper!1804 zl!343)))))

(declare-fun res!2535501 () Bool)

(assert (=> start!611080 (=> (not res!2535501) (not e!3727642))))

(declare-fun validRegex!7798 (Regex!16062) Bool)

(assert (=> start!611080 (= res!2535501 (validRegex!7798 r!7292))))

(assert (=> start!611080 e!3727642))

(assert (=> start!611080 e!3727639))

(declare-fun condSetEmpty!41313 () Bool)

(declare-fun z!1189 () (Set Context!10892))

(assert (=> start!611080 (= condSetEmpty!41313 (= z!1189 (as set.empty (Set Context!10892))))))

(assert (=> start!611080 setRes!41313))

(assert (=> start!611080 e!3727638))

(assert (=> start!611080 e!3727641))

(declare-fun b!6113599 () Bool)

(declare-fun res!2535500 () Bool)

(assert (=> b!6113599 (=> res!2535500 e!3727633)))

(assert (=> b!6113599 (= res!2535500 (or (is-EmptyExpr!16062 r!7292) (is-EmptyLang!16062 r!7292) (is-ElementMatch!16062 r!7292) (is-Union!16062 r!7292) (not (is-Concat!24907 r!7292))))))

(declare-fun b!6113600 () Bool)

(declare-datatypes ((Unit!157403 0))(
  ( (Unit!157404) )
))
(declare-fun e!3727634 () Unit!157403)

(declare-fun Unit!157405 () Unit!157403)

(assert (=> b!6113600 (= e!3727634 Unit!157405)))

(declare-fun b!6113601 () Bool)

(declare-fun res!2535494 () Bool)

(declare-fun e!3727640 () Bool)

(assert (=> b!6113601 (=> res!2535494 e!3727640)))

(declare-fun isEmpty!36291 (List!64485) Bool)

(assert (=> b!6113601 (= res!2535494 (isEmpty!36291 (t!377944 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6113602 () Bool)

(declare-fun Unit!157406 () Unit!157403)

(assert (=> b!6113602 (= e!3727634 Unit!157406)))

(declare-datatypes ((List!64487 0))(
  ( (Nil!64363) (Cons!64363 (h!70811 C!32394) (t!377946 List!64487)) )
))
(declare-fun s!2326 () List!64487)

(declare-fun lt!2330318 () (Set Context!10892))

(declare-fun lt!2330324 () (Set Context!10892))

(declare-fun lt!2330316 () Unit!157403)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!893 ((Set Context!10892) (Set Context!10892) List!64487) Unit!157403)

(assert (=> b!6113602 (= lt!2330316 (lemmaZipperConcatMatchesSameAsBothZippers!893 lt!2330324 lt!2330318 (t!377946 s!2326)))))

(declare-fun res!2535497 () Bool)

(declare-fun matchZipper!2074 ((Set Context!10892) List!64487) Bool)

(assert (=> b!6113602 (= res!2535497 (matchZipper!2074 lt!2330324 (t!377946 s!2326)))))

(declare-fun e!3727635 () Bool)

(assert (=> b!6113602 (=> res!2535497 e!3727635)))

(assert (=> b!6113602 (= (matchZipper!2074 (set.union lt!2330324 lt!2330318) (t!377946 s!2326)) e!3727635)))

(declare-fun b!6113603 () Bool)

(declare-fun tp!1707652 () Bool)

(assert (=> b!6113603 (= e!3727632 tp!1707652)))

(declare-fun b!6113604 () Bool)

(declare-fun tp!1707655 () Bool)

(assert (=> b!6113604 (= e!3727639 tp!1707655)))

(declare-fun b!6113605 () Bool)

(assert (=> b!6113605 (= e!3727635 (matchZipper!2074 lt!2330318 (t!377946 s!2326)))))

(declare-fun tp!1707651 () Bool)

(declare-fun e!3727637 () Bool)

(declare-fun setNonEmpty!41313 () Bool)

(declare-fun setElem!41313 () Context!10892)

(assert (=> setNonEmpty!41313 (= setRes!41313 (and tp!1707651 (inv!83403 setElem!41313) e!3727637))))

(declare-fun setRest!41313 () (Set Context!10892))

(assert (=> setNonEmpty!41313 (= z!1189 (set.union (set.insert setElem!41313 (as set.empty (Set Context!10892))) setRest!41313))))

(assert (=> b!6113606 (= e!3727633 e!3727640)))

(declare-fun res!2535496 () Bool)

(assert (=> b!6113606 (=> res!2535496 e!3727640)))

(declare-fun lt!2330322 () Bool)

(declare-fun lt!2330320 () Bool)

(assert (=> b!6113606 (= res!2535496 (or (not (= lt!2330320 lt!2330322)) (is-Nil!64363 s!2326)))))

(declare-fun Exists!3132 (Int) Bool)

(assert (=> b!6113606 (= (Exists!3132 lambda!333076) (Exists!3132 lambda!333077))))

(declare-fun lt!2330321 () Unit!157403)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1669 (Regex!16062 Regex!16062 List!64487) Unit!157403)

(assert (=> b!6113606 (= lt!2330321 (lemmaExistCutMatchRandMatchRSpecEquivalent!1669 (regOne!32636 r!7292) (regTwo!32636 r!7292) s!2326))))

(assert (=> b!6113606 (= lt!2330322 (Exists!3132 lambda!333076))))

(declare-datatypes ((tuple2!66082 0))(
  ( (tuple2!66083 (_1!36344 List!64487) (_2!36344 List!64487)) )
))
(declare-datatypes ((Option!15953 0))(
  ( (None!15952) (Some!15952 (v!52087 tuple2!66082)) )
))
(declare-fun isDefined!12656 (Option!15953) Bool)

(declare-fun findConcatSeparation!2367 (Regex!16062 Regex!16062 List!64487 List!64487 List!64487) Option!15953)

(assert (=> b!6113606 (= lt!2330322 (isDefined!12656 (findConcatSeparation!2367 (regOne!32636 r!7292) (regTwo!32636 r!7292) Nil!64363 s!2326 s!2326)))))

(declare-fun lt!2330319 () Unit!157403)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2131 (Regex!16062 Regex!16062 List!64487) Unit!157403)

(assert (=> b!6113606 (= lt!2330319 (lemmaFindConcatSeparationEquivalentToExists!2131 (regOne!32636 r!7292) (regTwo!32636 r!7292) s!2326))))

(declare-fun b!6113607 () Bool)

(assert (=> b!6113607 (= e!3727642 (not e!3727633))))

(declare-fun res!2535495 () Bool)

(assert (=> b!6113607 (=> res!2535495 e!3727633)))

(assert (=> b!6113607 (= res!2535495 (not (is-Cons!64362 zl!343)))))

(declare-fun matchRSpec!3163 (Regex!16062 List!64487) Bool)

(assert (=> b!6113607 (= lt!2330320 (matchRSpec!3163 r!7292 s!2326))))

(declare-fun matchR!8245 (Regex!16062 List!64487) Bool)

(assert (=> b!6113607 (= lt!2330320 (matchR!8245 r!7292 s!2326))))

(declare-fun lt!2330317 () Unit!157403)

(declare-fun mainMatchTheorem!3163 (Regex!16062 List!64487) Unit!157403)

(assert (=> b!6113607 (= lt!2330317 (mainMatchTheorem!3163 r!7292 s!2326))))

(declare-fun e!3727636 () Bool)

(assert (=> b!6113608 (= e!3727640 e!3727636)))

(declare-fun res!2535506 () Bool)

(assert (=> b!6113608 (=> res!2535506 e!3727636)))

(declare-fun lt!2330325 () Context!10892)

(assert (=> b!6113608 (= res!2535506 (or (not (is-ElementMatch!16062 (regOne!32636 r!7292))) (not (= (c!1098472 (regOne!32636 r!7292)) (h!70811 s!2326))) (not (= lt!2330324 (set.insert lt!2330325 (as set.empty (Set Context!10892)))))))))

(declare-fun lt!2330315 () Unit!157403)

(assert (=> b!6113608 (= lt!2330315 e!3727634)))

(declare-fun c!1098471 () Bool)

(declare-fun nullable!6055 (Regex!16062) Bool)

(assert (=> b!6113608 (= c!1098471 (nullable!6055 (h!70809 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun lambda!333078 () Int)

(declare-fun flatMap!1567 ((Set Context!10892) Int) (Set Context!10892))

(declare-fun derivationStepZipperUp!1236 (Context!10892 C!32394) (Set Context!10892))

(assert (=> b!6113608 (= (flatMap!1567 z!1189 lambda!333078) (derivationStepZipperUp!1236 (h!70810 zl!343) (h!70811 s!2326)))))

(declare-fun lt!2330326 () Unit!157403)

(declare-fun lemmaFlatMapOnSingletonSet!1093 ((Set Context!10892) Context!10892 Int) Unit!157403)

(assert (=> b!6113608 (= lt!2330326 (lemmaFlatMapOnSingletonSet!1093 z!1189 (h!70810 zl!343) lambda!333078))))

(assert (=> b!6113608 (= lt!2330318 (derivationStepZipperUp!1236 lt!2330325 (h!70811 s!2326)))))

(declare-fun derivationStepZipperDown!1310 (Regex!16062 Context!10892 C!32394) (Set Context!10892))

(assert (=> b!6113608 (= lt!2330324 (derivationStepZipperDown!1310 (h!70809 (exprs!5946 (h!70810 zl!343))) lt!2330325 (h!70811 s!2326)))))

(assert (=> b!6113608 (= lt!2330325 (Context!10893 (t!377944 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun lt!2330323 () (Set Context!10892))

(assert (=> b!6113608 (= lt!2330323 (derivationStepZipperUp!1236 (Context!10893 (Cons!64361 (h!70809 (exprs!5946 (h!70810 zl!343))) (t!377944 (exprs!5946 (h!70810 zl!343))))) (h!70811 s!2326)))))

(declare-fun b!6113609 () Bool)

(declare-fun tp!1707654 () Bool)

(assert (=> b!6113609 (= e!3727637 tp!1707654)))

(declare-fun b!6113610 () Bool)

(declare-fun tp!1707647 () Bool)

(declare-fun tp!1707653 () Bool)

(assert (=> b!6113610 (= e!3727639 (and tp!1707647 tp!1707653))))

(declare-fun b!6113611 () Bool)

(assert (=> b!6113611 (= e!3727639 tp_is_empty!41377)))

(declare-fun b!6113612 () Bool)

(declare-fun res!2535504 () Bool)

(assert (=> b!6113612 (=> res!2535504 e!3727633)))

(declare-fun generalisedConcat!1659 (List!64485) Regex!16062)

(assert (=> b!6113612 (= res!2535504 (not (= r!7292 (generalisedConcat!1659 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun b!6113613 () Bool)

(declare-fun res!2535505 () Bool)

(assert (=> b!6113613 (=> res!2535505 e!3727633)))

(declare-fun isEmpty!36292 (List!64486) Bool)

(assert (=> b!6113613 (= res!2535505 (not (isEmpty!36292 (t!377945 zl!343))))))

(declare-fun b!6113614 () Bool)

(assert (=> b!6113614 (= e!3727636 (validRegex!7798 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun b!6113615 () Bool)

(declare-fun res!2535503 () Bool)

(assert (=> b!6113615 (=> res!2535503 e!3727633)))

(declare-fun generalisedUnion!1906 (List!64485) Regex!16062)

(declare-fun unfocusZipperList!1483 (List!64486) List!64485)

(assert (=> b!6113615 (= res!2535503 (not (= r!7292 (generalisedUnion!1906 (unfocusZipperList!1483 zl!343)))))))

(declare-fun b!6113616 () Bool)

(declare-fun res!2535498 () Bool)

(assert (=> b!6113616 (=> (not res!2535498) (not e!3727642))))

(declare-fun toList!9846 ((Set Context!10892)) List!64486)

(assert (=> b!6113616 (= res!2535498 (= (toList!9846 z!1189) zl!343))))

(assert (= (and start!611080 res!2535501) b!6113616))

(assert (= (and b!6113616 res!2535498) b!6113598))

(assert (= (and b!6113598 res!2535502) b!6113607))

(assert (= (and b!6113607 (not res!2535495)) b!6113613))

(assert (= (and b!6113613 (not res!2535505)) b!6113612))

(assert (= (and b!6113612 (not res!2535504)) b!6113595))

(assert (= (and b!6113595 (not res!2535499)) b!6113615))

(assert (= (and b!6113615 (not res!2535503)) b!6113599))

(assert (= (and b!6113599 (not res!2535500)) b!6113606))

(assert (= (and b!6113606 (not res!2535496)) b!6113601))

(assert (= (and b!6113601 (not res!2535494)) b!6113608))

(assert (= (and b!6113608 c!1098471) b!6113602))

(assert (= (and b!6113608 (not c!1098471)) b!6113600))

(assert (= (and b!6113602 (not res!2535497)) b!6113605))

(assert (= (and b!6113608 (not res!2535506)) b!6113614))

(assert (= (and start!611080 (is-ElementMatch!16062 r!7292)) b!6113611))

(assert (= (and start!611080 (is-Concat!24907 r!7292)) b!6113594))

(assert (= (and start!611080 (is-Star!16062 r!7292)) b!6113604))

(assert (= (and start!611080 (is-Union!16062 r!7292)) b!6113610))

(assert (= (and start!611080 condSetEmpty!41313) setIsEmpty!41313))

(assert (= (and start!611080 (not condSetEmpty!41313)) setNonEmpty!41313))

(assert (= setNonEmpty!41313 b!6113609))

(assert (= b!6113596 b!6113603))

(assert (= (and start!611080 (is-Cons!64362 zl!343)) b!6113596))

(assert (= (and start!611080 (is-Cons!64363 s!2326)) b!6113597))

(declare-fun m!6962024 () Bool)

(assert (=> start!611080 m!6962024))

(declare-fun m!6962026 () Bool)

(assert (=> b!6113613 m!6962026))

(declare-fun m!6962028 () Bool)

(assert (=> b!6113601 m!6962028))

(declare-fun m!6962030 () Bool)

(assert (=> b!6113616 m!6962030))

(declare-fun m!6962032 () Bool)

(assert (=> b!6113614 m!6962032))

(assert (=> b!6113614 m!6962032))

(declare-fun m!6962034 () Bool)

(assert (=> b!6113614 m!6962034))

(declare-fun m!6962036 () Bool)

(assert (=> b!6113612 m!6962036))

(declare-fun m!6962038 () Bool)

(assert (=> b!6113615 m!6962038))

(assert (=> b!6113615 m!6962038))

(declare-fun m!6962040 () Bool)

(assert (=> b!6113615 m!6962040))

(declare-fun m!6962042 () Bool)

(assert (=> b!6113606 m!6962042))

(declare-fun m!6962044 () Bool)

(assert (=> b!6113606 m!6962044))

(declare-fun m!6962046 () Bool)

(assert (=> b!6113606 m!6962046))

(assert (=> b!6113606 m!6962042))

(declare-fun m!6962048 () Bool)

(assert (=> b!6113606 m!6962048))

(declare-fun m!6962050 () Bool)

(assert (=> b!6113606 m!6962050))

(assert (=> b!6113606 m!6962044))

(declare-fun m!6962052 () Bool)

(assert (=> b!6113606 m!6962052))

(declare-fun m!6962054 () Bool)

(assert (=> b!6113608 m!6962054))

(declare-fun m!6962056 () Bool)

(assert (=> b!6113608 m!6962056))

(declare-fun m!6962058 () Bool)

(assert (=> b!6113608 m!6962058))

(declare-fun m!6962060 () Bool)

(assert (=> b!6113608 m!6962060))

(declare-fun m!6962062 () Bool)

(assert (=> b!6113608 m!6962062))

(declare-fun m!6962064 () Bool)

(assert (=> b!6113608 m!6962064))

(declare-fun m!6962066 () Bool)

(assert (=> b!6113608 m!6962066))

(declare-fun m!6962068 () Bool)

(assert (=> b!6113608 m!6962068))

(declare-fun m!6962070 () Bool)

(assert (=> b!6113598 m!6962070))

(declare-fun m!6962072 () Bool)

(assert (=> b!6113605 m!6962072))

(declare-fun m!6962074 () Bool)

(assert (=> b!6113602 m!6962074))

(declare-fun m!6962076 () Bool)

(assert (=> b!6113602 m!6962076))

(declare-fun m!6962078 () Bool)

(assert (=> b!6113602 m!6962078))

(declare-fun m!6962080 () Bool)

(assert (=> setNonEmpty!41313 m!6962080))

(declare-fun m!6962082 () Bool)

(assert (=> b!6113596 m!6962082))

(declare-fun m!6962084 () Bool)

(assert (=> b!6113607 m!6962084))

(declare-fun m!6962086 () Bool)

(assert (=> b!6113607 m!6962086))

(declare-fun m!6962088 () Bool)

(assert (=> b!6113607 m!6962088))

(push 1)

(assert (not b!6113607))

(assert (not b!6113609))

(assert (not b!6113604))

(assert (not b!6113596))

(assert (not b!6113602))

(assert (not b!6113616))

(assert (not b!6113612))

(assert (not b!6113610))

(assert (not b!6113615))

(assert (not b!6113598))

(assert (not b!6113606))

(assert (not b!6113601))

(assert (not b!6113603))

(assert (not b!6113605))

(assert (not b!6113597))

(assert (not b!6113613))

(assert (not b!6113594))

(assert (not start!611080))

(assert (not b!6113608))

(assert (not setNonEmpty!41313))

(assert (not b!6113614))

(assert tp_is_empty!41377)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6113728 () Bool)

(declare-fun e!3727697 () Bool)

(declare-fun e!3727702 () Bool)

(assert (=> b!6113728 (= e!3727697 e!3727702)))

(declare-fun c!1098485 () Bool)

(assert (=> b!6113728 (= c!1098485 (is-Union!16062 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun b!6113729 () Bool)

(declare-fun res!2535568 () Bool)

(declare-fun e!3727700 () Bool)

(assert (=> b!6113729 (=> res!2535568 e!3727700)))

(assert (=> b!6113729 (= res!2535568 (not (is-Concat!24907 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343)))))))))

(assert (=> b!6113729 (= e!3727702 e!3727700)))

(declare-fun d!1915815 () Bool)

(declare-fun res!2535571 () Bool)

(declare-fun e!3727699 () Bool)

(assert (=> d!1915815 (=> res!2535571 e!3727699)))

(assert (=> d!1915815 (= res!2535571 (is-ElementMatch!16062 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))))))

(assert (=> d!1915815 (= (validRegex!7798 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))) e!3727699)))

(declare-fun call!506020 () Bool)

(declare-fun c!1098484 () Bool)

(declare-fun bm!506014 () Bool)

(assert (=> bm!506014 (= call!506020 (validRegex!7798 (ite c!1098484 (reg!16391 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))) (ite c!1098485 (regOne!32637 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))) (regOne!32636 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343)))))))))))

(declare-fun b!6113730 () Bool)

(declare-fun e!3727696 () Bool)

(assert (=> b!6113730 (= e!3727696 call!506020)))

(declare-fun b!6113731 () Bool)

(declare-fun e!3727698 () Bool)

(declare-fun call!506019 () Bool)

(assert (=> b!6113731 (= e!3727698 call!506019)))

(declare-fun b!6113732 () Bool)

(assert (=> b!6113732 (= e!3727699 e!3727697)))

(assert (=> b!6113732 (= c!1098484 (is-Star!16062 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun bm!506015 () Bool)

(declare-fun call!506021 () Bool)

(assert (=> bm!506015 (= call!506021 call!506020)))

(declare-fun bm!506016 () Bool)

(assert (=> bm!506016 (= call!506019 (validRegex!7798 (ite c!1098485 (regTwo!32637 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))) (regTwo!32636 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))))))))

(declare-fun b!6113733 () Bool)

(assert (=> b!6113733 (= e!3727697 e!3727696)))

(declare-fun res!2535572 () Bool)

(assert (=> b!6113733 (= res!2535572 (not (nullable!6055 (reg!16391 (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))))))))

(assert (=> b!6113733 (=> (not res!2535572) (not e!3727696))))

(declare-fun b!6113734 () Bool)

(declare-fun res!2535570 () Bool)

(assert (=> b!6113734 (=> (not res!2535570) (not e!3727698))))

(assert (=> b!6113734 (= res!2535570 call!506021)))

(assert (=> b!6113734 (= e!3727702 e!3727698)))

(declare-fun b!6113735 () Bool)

(declare-fun e!3727701 () Bool)

(assert (=> b!6113735 (= e!3727701 call!506019)))

(declare-fun b!6113736 () Bool)

(assert (=> b!6113736 (= e!3727700 e!3727701)))

(declare-fun res!2535569 () Bool)

(assert (=> b!6113736 (=> (not res!2535569) (not e!3727701))))

(assert (=> b!6113736 (= res!2535569 call!506021)))

(assert (= (and d!1915815 (not res!2535571)) b!6113732))

(assert (= (and b!6113732 c!1098484) b!6113733))

(assert (= (and b!6113732 (not c!1098484)) b!6113728))

(assert (= (and b!6113733 res!2535572) b!6113730))

(assert (= (and b!6113728 c!1098485) b!6113734))

(assert (= (and b!6113728 (not c!1098485)) b!6113729))

(assert (= (and b!6113734 res!2535570) b!6113731))

(assert (= (and b!6113729 (not res!2535568)) b!6113736))

(assert (= (and b!6113736 res!2535569) b!6113735))

(assert (= (or b!6113731 b!6113735) bm!506016))

(assert (= (or b!6113734 b!6113736) bm!506015))

(assert (= (or b!6113730 bm!506015) bm!506014))

(declare-fun m!6962156 () Bool)

(assert (=> bm!506014 m!6962156))

(declare-fun m!6962158 () Bool)

(assert (=> bm!506016 m!6962158))

(declare-fun m!6962160 () Bool)

(assert (=> b!6113733 m!6962160))

(assert (=> b!6113614 d!1915815))

(declare-fun b!6113757 () Bool)

(declare-fun e!3727717 () Bool)

(declare-fun lt!2330365 () Regex!16062)

(declare-fun head!12645 (List!64485) Regex!16062)

(assert (=> b!6113757 (= e!3727717 (= lt!2330365 (head!12645 (t!377944 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun b!6113759 () Bool)

(declare-fun e!3727719 () Bool)

(assert (=> b!6113759 (= e!3727719 (isEmpty!36291 (t!377944 (t!377944 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun b!6113760 () Bool)

(declare-fun e!3727720 () Bool)

(assert (=> b!6113760 (= e!3727720 e!3727717)))

(declare-fun c!1098494 () Bool)

(declare-fun tail!11730 (List!64485) List!64485)

(assert (=> b!6113760 (= c!1098494 (isEmpty!36291 (tail!11730 (t!377944 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun b!6113761 () Bool)

(declare-fun e!3727716 () Regex!16062)

(declare-fun e!3727718 () Regex!16062)

(assert (=> b!6113761 (= e!3727716 e!3727718)))

(declare-fun c!1098496 () Bool)

(assert (=> b!6113761 (= c!1098496 (is-Cons!64361 (t!377944 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6113762 () Bool)

(assert (=> b!6113762 (= e!3727716 (h!70809 (t!377944 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6113758 () Bool)

(declare-fun isEmptyExpr!1479 (Regex!16062) Bool)

(assert (=> b!6113758 (= e!3727720 (isEmptyExpr!1479 lt!2330365))))

(declare-fun d!1915817 () Bool)

(declare-fun e!3727715 () Bool)

(assert (=> d!1915817 e!3727715))

(declare-fun res!2535577 () Bool)

(assert (=> d!1915817 (=> (not res!2535577) (not e!3727715))))

(assert (=> d!1915817 (= res!2535577 (validRegex!7798 lt!2330365))))

(assert (=> d!1915817 (= lt!2330365 e!3727716)))

(declare-fun c!1098497 () Bool)

(assert (=> d!1915817 (= c!1098497 e!3727719)))

(declare-fun res!2535578 () Bool)

(assert (=> d!1915817 (=> (not res!2535578) (not e!3727719))))

(assert (=> d!1915817 (= res!2535578 (is-Cons!64361 (t!377944 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun lambda!333092 () Int)

(declare-fun forall!15183 (List!64485 Int) Bool)

(assert (=> d!1915817 (forall!15183 (t!377944 (exprs!5946 (h!70810 zl!343))) lambda!333092)))

(assert (=> d!1915817 (= (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343)))) lt!2330365)))

(declare-fun b!6113763 () Bool)

(assert (=> b!6113763 (= e!3727718 EmptyExpr!16062)))

(declare-fun b!6113764 () Bool)

(declare-fun isConcat!1002 (Regex!16062) Bool)

(assert (=> b!6113764 (= e!3727717 (isConcat!1002 lt!2330365))))

(declare-fun b!6113765 () Bool)

(assert (=> b!6113765 (= e!3727718 (Concat!24907 (h!70809 (t!377944 (exprs!5946 (h!70810 zl!343)))) (generalisedConcat!1659 (t!377944 (t!377944 (exprs!5946 (h!70810 zl!343)))))))))

(declare-fun b!6113766 () Bool)

(assert (=> b!6113766 (= e!3727715 e!3727720)))

(declare-fun c!1098495 () Bool)

(assert (=> b!6113766 (= c!1098495 (isEmpty!36291 (t!377944 (exprs!5946 (h!70810 zl!343)))))))

(assert (= (and d!1915817 res!2535578) b!6113759))

(assert (= (and d!1915817 c!1098497) b!6113762))

(assert (= (and d!1915817 (not c!1098497)) b!6113761))

(assert (= (and b!6113761 c!1098496) b!6113765))

(assert (= (and b!6113761 (not c!1098496)) b!6113763))

(assert (= (and d!1915817 res!2535577) b!6113766))

(assert (= (and b!6113766 c!1098495) b!6113758))

(assert (= (and b!6113766 (not c!1098495)) b!6113760))

(assert (= (and b!6113760 c!1098494) b!6113757))

(assert (= (and b!6113760 (not c!1098494)) b!6113764))

(declare-fun m!6962162 () Bool)

(assert (=> b!6113760 m!6962162))

(assert (=> b!6113760 m!6962162))

(declare-fun m!6962164 () Bool)

(assert (=> b!6113760 m!6962164))

(declare-fun m!6962166 () Bool)

(assert (=> d!1915817 m!6962166))

(declare-fun m!6962168 () Bool)

(assert (=> d!1915817 m!6962168))

(declare-fun m!6962170 () Bool)

(assert (=> b!6113759 m!6962170))

(declare-fun m!6962172 () Bool)

(assert (=> b!6113758 m!6962172))

(assert (=> b!6113766 m!6962028))

(declare-fun m!6962174 () Bool)

(assert (=> b!6113765 m!6962174))

(declare-fun m!6962176 () Bool)

(assert (=> b!6113757 m!6962176))

(declare-fun m!6962178 () Bool)

(assert (=> b!6113764 m!6962178))

(assert (=> b!6113614 d!1915817))

(declare-fun d!1915819 () Bool)

(declare-fun c!1098500 () Bool)

(declare-fun isEmpty!36295 (List!64487) Bool)

(assert (=> d!1915819 (= c!1098500 (isEmpty!36295 (t!377946 s!2326)))))

(declare-fun e!3727723 () Bool)

(assert (=> d!1915819 (= (matchZipper!2074 lt!2330318 (t!377946 s!2326)) e!3727723)))

(declare-fun b!6113771 () Bool)

(declare-fun nullableZipper!1843 ((Set Context!10892)) Bool)

(assert (=> b!6113771 (= e!3727723 (nullableZipper!1843 lt!2330318))))

(declare-fun b!6113772 () Bool)

(declare-fun derivationStepZipper!2035 ((Set Context!10892) C!32394) (Set Context!10892))

(declare-fun head!12646 (List!64487) C!32394)

(declare-fun tail!11731 (List!64487) List!64487)

(assert (=> b!6113772 (= e!3727723 (matchZipper!2074 (derivationStepZipper!2035 lt!2330318 (head!12646 (t!377946 s!2326))) (tail!11731 (t!377946 s!2326))))))

(assert (= (and d!1915819 c!1098500) b!6113771))

(assert (= (and d!1915819 (not c!1098500)) b!6113772))

(declare-fun m!6962180 () Bool)

(assert (=> d!1915819 m!6962180))

(declare-fun m!6962182 () Bool)

(assert (=> b!6113771 m!6962182))

(declare-fun m!6962184 () Bool)

(assert (=> b!6113772 m!6962184))

(assert (=> b!6113772 m!6962184))

(declare-fun m!6962186 () Bool)

(assert (=> b!6113772 m!6962186))

(declare-fun m!6962188 () Bool)

(assert (=> b!6113772 m!6962188))

(assert (=> b!6113772 m!6962186))

(assert (=> b!6113772 m!6962188))

(declare-fun m!6962190 () Bool)

(assert (=> b!6113772 m!6962190))

(assert (=> b!6113605 d!1915819))

(declare-fun bs!1517367 () Bool)

(declare-fun d!1915821 () Bool)

(assert (= bs!1517367 (and d!1915821 d!1915817)))

(declare-fun lambda!333095 () Int)

(assert (=> bs!1517367 (= lambda!333095 lambda!333092)))

(declare-fun b!6113793 () Bool)

(declare-fun e!3727740 () Regex!16062)

(assert (=> b!6113793 (= e!3727740 (Union!16062 (h!70809 (unfocusZipperList!1483 zl!343)) (generalisedUnion!1906 (t!377944 (unfocusZipperList!1483 zl!343)))))))

(declare-fun b!6113794 () Bool)

(declare-fun e!3727737 () Regex!16062)

(assert (=> b!6113794 (= e!3727737 (h!70809 (unfocusZipperList!1483 zl!343)))))

(declare-fun b!6113795 () Bool)

(declare-fun e!3727741 () Bool)

(declare-fun e!3727739 () Bool)

(assert (=> b!6113795 (= e!3727741 e!3727739)))

(declare-fun c!1098510 () Bool)

(assert (=> b!6113795 (= c!1098510 (isEmpty!36291 (tail!11730 (unfocusZipperList!1483 zl!343))))))

(declare-fun e!3727738 () Bool)

(assert (=> d!1915821 e!3727738))

(declare-fun res!2535584 () Bool)

(assert (=> d!1915821 (=> (not res!2535584) (not e!3727738))))

(declare-fun lt!2330368 () Regex!16062)

(assert (=> d!1915821 (= res!2535584 (validRegex!7798 lt!2330368))))

(assert (=> d!1915821 (= lt!2330368 e!3727737)))

(declare-fun c!1098511 () Bool)

(declare-fun e!3727736 () Bool)

(assert (=> d!1915821 (= c!1098511 e!3727736)))

(declare-fun res!2535583 () Bool)

(assert (=> d!1915821 (=> (not res!2535583) (not e!3727736))))

(assert (=> d!1915821 (= res!2535583 (is-Cons!64361 (unfocusZipperList!1483 zl!343)))))

(assert (=> d!1915821 (forall!15183 (unfocusZipperList!1483 zl!343) lambda!333095)))

(assert (=> d!1915821 (= (generalisedUnion!1906 (unfocusZipperList!1483 zl!343)) lt!2330368)))

(declare-fun b!6113796 () Bool)

(assert (=> b!6113796 (= e!3727740 EmptyLang!16062)))

(declare-fun b!6113797 () Bool)

(assert (=> b!6113797 (= e!3727737 e!3727740)))

(declare-fun c!1098512 () Bool)

(assert (=> b!6113797 (= c!1098512 (is-Cons!64361 (unfocusZipperList!1483 zl!343)))))

(declare-fun b!6113798 () Bool)

(declare-fun isUnion!919 (Regex!16062) Bool)

(assert (=> b!6113798 (= e!3727739 (isUnion!919 lt!2330368))))

(declare-fun b!6113799 () Bool)

(assert (=> b!6113799 (= e!3727739 (= lt!2330368 (head!12645 (unfocusZipperList!1483 zl!343))))))

(declare-fun b!6113800 () Bool)

(assert (=> b!6113800 (= e!3727738 e!3727741)))

(declare-fun c!1098509 () Bool)

(assert (=> b!6113800 (= c!1098509 (isEmpty!36291 (unfocusZipperList!1483 zl!343)))))

(declare-fun b!6113801 () Bool)

(declare-fun isEmptyLang!1489 (Regex!16062) Bool)

(assert (=> b!6113801 (= e!3727741 (isEmptyLang!1489 lt!2330368))))

(declare-fun b!6113802 () Bool)

(assert (=> b!6113802 (= e!3727736 (isEmpty!36291 (t!377944 (unfocusZipperList!1483 zl!343))))))

(assert (= (and d!1915821 res!2535583) b!6113802))

(assert (= (and d!1915821 c!1098511) b!6113794))

(assert (= (and d!1915821 (not c!1098511)) b!6113797))

(assert (= (and b!6113797 c!1098512) b!6113793))

(assert (= (and b!6113797 (not c!1098512)) b!6113796))

(assert (= (and d!1915821 res!2535584) b!6113800))

(assert (= (and b!6113800 c!1098509) b!6113801))

(assert (= (and b!6113800 (not c!1098509)) b!6113795))

(assert (= (and b!6113795 c!1098510) b!6113799))

(assert (= (and b!6113795 (not c!1098510)) b!6113798))

(declare-fun m!6962192 () Bool)

(assert (=> b!6113798 m!6962192))

(assert (=> b!6113800 m!6962038))

(declare-fun m!6962194 () Bool)

(assert (=> b!6113800 m!6962194))

(assert (=> b!6113799 m!6962038))

(declare-fun m!6962196 () Bool)

(assert (=> b!6113799 m!6962196))

(assert (=> b!6113795 m!6962038))

(declare-fun m!6962198 () Bool)

(assert (=> b!6113795 m!6962198))

(assert (=> b!6113795 m!6962198))

(declare-fun m!6962200 () Bool)

(assert (=> b!6113795 m!6962200))

(declare-fun m!6962202 () Bool)

(assert (=> b!6113793 m!6962202))

(declare-fun m!6962204 () Bool)

(assert (=> b!6113801 m!6962204))

(declare-fun m!6962206 () Bool)

(assert (=> b!6113802 m!6962206))

(declare-fun m!6962208 () Bool)

(assert (=> d!1915821 m!6962208))

(assert (=> d!1915821 m!6962038))

(declare-fun m!6962210 () Bool)

(assert (=> d!1915821 m!6962210))

(assert (=> b!6113615 d!1915821))

(declare-fun bs!1517368 () Bool)

(declare-fun d!1915823 () Bool)

(assert (= bs!1517368 (and d!1915823 d!1915817)))

(declare-fun lambda!333098 () Int)

(assert (=> bs!1517368 (= lambda!333098 lambda!333092)))

(declare-fun bs!1517369 () Bool)

(assert (= bs!1517369 (and d!1915823 d!1915821)))

(assert (=> bs!1517369 (= lambda!333098 lambda!333095)))

(declare-fun lt!2330371 () List!64485)

(assert (=> d!1915823 (forall!15183 lt!2330371 lambda!333098)))

(declare-fun e!3727744 () List!64485)

(assert (=> d!1915823 (= lt!2330371 e!3727744)))

(declare-fun c!1098515 () Bool)

(assert (=> d!1915823 (= c!1098515 (is-Cons!64362 zl!343))))

(assert (=> d!1915823 (= (unfocusZipperList!1483 zl!343) lt!2330371)))

(declare-fun b!6113807 () Bool)

(assert (=> b!6113807 (= e!3727744 (Cons!64361 (generalisedConcat!1659 (exprs!5946 (h!70810 zl!343))) (unfocusZipperList!1483 (t!377945 zl!343))))))

(declare-fun b!6113808 () Bool)

(assert (=> b!6113808 (= e!3727744 Nil!64361)))

(assert (= (and d!1915823 c!1098515) b!6113807))

(assert (= (and d!1915823 (not c!1098515)) b!6113808))

(declare-fun m!6962212 () Bool)

(assert (=> d!1915823 m!6962212))

(assert (=> b!6113807 m!6962036))

(declare-fun m!6962214 () Bool)

(assert (=> b!6113807 m!6962214))

(assert (=> b!6113615 d!1915823))

(declare-fun bs!1517370 () Bool)

(declare-fun d!1915825 () Bool)

(assert (= bs!1517370 (and d!1915825 d!1915817)))

(declare-fun lambda!333101 () Int)

(assert (=> bs!1517370 (= lambda!333101 lambda!333092)))

(declare-fun bs!1517371 () Bool)

(assert (= bs!1517371 (and d!1915825 d!1915821)))

(assert (=> bs!1517371 (= lambda!333101 lambda!333095)))

(declare-fun bs!1517372 () Bool)

(assert (= bs!1517372 (and d!1915825 d!1915823)))

(assert (=> bs!1517372 (= lambda!333101 lambda!333098)))

(assert (=> d!1915825 (= (inv!83403 setElem!41313) (forall!15183 (exprs!5946 setElem!41313) lambda!333101))))

(declare-fun bs!1517373 () Bool)

(assert (= bs!1517373 d!1915825))

(declare-fun m!6962216 () Bool)

(assert (=> bs!1517373 m!6962216))

(assert (=> setNonEmpty!41313 d!1915825))

(declare-fun d!1915827 () Bool)

(declare-fun e!3727747 () Bool)

(assert (=> d!1915827 e!3727747))

(declare-fun res!2535587 () Bool)

(assert (=> d!1915827 (=> (not res!2535587) (not e!3727747))))

(declare-fun lt!2330374 () List!64486)

(declare-fun noDuplicate!1909 (List!64486) Bool)

(assert (=> d!1915827 (= res!2535587 (noDuplicate!1909 lt!2330374))))

(declare-fun choose!45437 ((Set Context!10892)) List!64486)

(assert (=> d!1915827 (= lt!2330374 (choose!45437 z!1189))))

(assert (=> d!1915827 (= (toList!9846 z!1189) lt!2330374)))

(declare-fun b!6113811 () Bool)

(declare-fun content!11950 (List!64486) (Set Context!10892))

(assert (=> b!6113811 (= e!3727747 (= (content!11950 lt!2330374) z!1189))))

(assert (= (and d!1915827 res!2535587) b!6113811))

(declare-fun m!6962218 () Bool)

(assert (=> d!1915827 m!6962218))

(declare-fun m!6962220 () Bool)

(assert (=> d!1915827 m!6962220))

(declare-fun m!6962222 () Bool)

(assert (=> b!6113811 m!6962222))

(assert (=> b!6113616 d!1915827))

(declare-fun bs!1517374 () Bool)

(declare-fun d!1915829 () Bool)

(assert (= bs!1517374 (and d!1915829 d!1915817)))

(declare-fun lambda!333102 () Int)

(assert (=> bs!1517374 (= lambda!333102 lambda!333092)))

(declare-fun bs!1517375 () Bool)

(assert (= bs!1517375 (and d!1915829 d!1915821)))

(assert (=> bs!1517375 (= lambda!333102 lambda!333095)))

(declare-fun bs!1517376 () Bool)

(assert (= bs!1517376 (and d!1915829 d!1915823)))

(assert (=> bs!1517376 (= lambda!333102 lambda!333098)))

(declare-fun bs!1517377 () Bool)

(assert (= bs!1517377 (and d!1915829 d!1915825)))

(assert (=> bs!1517377 (= lambda!333102 lambda!333101)))

(assert (=> d!1915829 (= (inv!83403 (h!70810 zl!343)) (forall!15183 (exprs!5946 (h!70810 zl!343)) lambda!333102))))

(declare-fun bs!1517378 () Bool)

(assert (= bs!1517378 d!1915829))

(declare-fun m!6962224 () Bool)

(assert (=> bs!1517378 m!6962224))

(assert (=> b!6113596 d!1915829))

(declare-fun d!1915831 () Bool)

(declare-fun e!3727750 () Bool)

(assert (=> d!1915831 (= (matchZipper!2074 (set.union lt!2330324 lt!2330318) (t!377946 s!2326)) e!3727750)))

(declare-fun res!2535590 () Bool)

(assert (=> d!1915831 (=> res!2535590 e!3727750)))

(assert (=> d!1915831 (= res!2535590 (matchZipper!2074 lt!2330324 (t!377946 s!2326)))))

(declare-fun lt!2330377 () Unit!157403)

(declare-fun choose!45438 ((Set Context!10892) (Set Context!10892) List!64487) Unit!157403)

(assert (=> d!1915831 (= lt!2330377 (choose!45438 lt!2330324 lt!2330318 (t!377946 s!2326)))))

(assert (=> d!1915831 (= (lemmaZipperConcatMatchesSameAsBothZippers!893 lt!2330324 lt!2330318 (t!377946 s!2326)) lt!2330377)))

(declare-fun b!6113814 () Bool)

(assert (=> b!6113814 (= e!3727750 (matchZipper!2074 lt!2330318 (t!377946 s!2326)))))

(assert (= (and d!1915831 (not res!2535590)) b!6113814))

(assert (=> d!1915831 m!6962078))

(assert (=> d!1915831 m!6962076))

(declare-fun m!6962226 () Bool)

(assert (=> d!1915831 m!6962226))

(assert (=> b!6113814 m!6962072))

(assert (=> b!6113602 d!1915831))

(declare-fun d!1915833 () Bool)

(declare-fun c!1098516 () Bool)

(assert (=> d!1915833 (= c!1098516 (isEmpty!36295 (t!377946 s!2326)))))

(declare-fun e!3727751 () Bool)

(assert (=> d!1915833 (= (matchZipper!2074 lt!2330324 (t!377946 s!2326)) e!3727751)))

(declare-fun b!6113815 () Bool)

(assert (=> b!6113815 (= e!3727751 (nullableZipper!1843 lt!2330324))))

(declare-fun b!6113816 () Bool)

(assert (=> b!6113816 (= e!3727751 (matchZipper!2074 (derivationStepZipper!2035 lt!2330324 (head!12646 (t!377946 s!2326))) (tail!11731 (t!377946 s!2326))))))

(assert (= (and d!1915833 c!1098516) b!6113815))

(assert (= (and d!1915833 (not c!1098516)) b!6113816))

(assert (=> d!1915833 m!6962180))

(declare-fun m!6962228 () Bool)

(assert (=> b!6113815 m!6962228))

(assert (=> b!6113816 m!6962184))

(assert (=> b!6113816 m!6962184))

(declare-fun m!6962230 () Bool)

(assert (=> b!6113816 m!6962230))

(assert (=> b!6113816 m!6962188))

(assert (=> b!6113816 m!6962230))

(assert (=> b!6113816 m!6962188))

(declare-fun m!6962232 () Bool)

(assert (=> b!6113816 m!6962232))

(assert (=> b!6113602 d!1915833))

(declare-fun d!1915835 () Bool)

(declare-fun c!1098517 () Bool)

(assert (=> d!1915835 (= c!1098517 (isEmpty!36295 (t!377946 s!2326)))))

(declare-fun e!3727752 () Bool)

(assert (=> d!1915835 (= (matchZipper!2074 (set.union lt!2330324 lt!2330318) (t!377946 s!2326)) e!3727752)))

(declare-fun b!6113817 () Bool)

(assert (=> b!6113817 (= e!3727752 (nullableZipper!1843 (set.union lt!2330324 lt!2330318)))))

(declare-fun b!6113818 () Bool)

(assert (=> b!6113818 (= e!3727752 (matchZipper!2074 (derivationStepZipper!2035 (set.union lt!2330324 lt!2330318) (head!12646 (t!377946 s!2326))) (tail!11731 (t!377946 s!2326))))))

(assert (= (and d!1915835 c!1098517) b!6113817))

(assert (= (and d!1915835 (not c!1098517)) b!6113818))

(assert (=> d!1915835 m!6962180))

(declare-fun m!6962234 () Bool)

(assert (=> b!6113817 m!6962234))

(assert (=> b!6113818 m!6962184))

(assert (=> b!6113818 m!6962184))

(declare-fun m!6962236 () Bool)

(assert (=> b!6113818 m!6962236))

(assert (=> b!6113818 m!6962188))

(assert (=> b!6113818 m!6962236))

(assert (=> b!6113818 m!6962188))

(declare-fun m!6962238 () Bool)

(assert (=> b!6113818 m!6962238))

(assert (=> b!6113602 d!1915835))

(declare-fun bs!1517379 () Bool)

(declare-fun d!1915837 () Bool)

(assert (= bs!1517379 (and d!1915837 d!1915829)))

(declare-fun lambda!333103 () Int)

(assert (=> bs!1517379 (= lambda!333103 lambda!333102)))

(declare-fun bs!1517380 () Bool)

(assert (= bs!1517380 (and d!1915837 d!1915823)))

(assert (=> bs!1517380 (= lambda!333103 lambda!333098)))

(declare-fun bs!1517381 () Bool)

(assert (= bs!1517381 (and d!1915837 d!1915825)))

(assert (=> bs!1517381 (= lambda!333103 lambda!333101)))

(declare-fun bs!1517382 () Bool)

(assert (= bs!1517382 (and d!1915837 d!1915817)))

(assert (=> bs!1517382 (= lambda!333103 lambda!333092)))

(declare-fun bs!1517383 () Bool)

(assert (= bs!1517383 (and d!1915837 d!1915821)))

(assert (=> bs!1517383 (= lambda!333103 lambda!333095)))

(declare-fun b!6113819 () Bool)

(declare-fun e!3727755 () Bool)

(declare-fun lt!2330378 () Regex!16062)

(assert (=> b!6113819 (= e!3727755 (= lt!2330378 (head!12645 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6113821 () Bool)

(declare-fun e!3727757 () Bool)

(assert (=> b!6113821 (= e!3727757 (isEmpty!36291 (t!377944 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6113822 () Bool)

(declare-fun e!3727758 () Bool)

(assert (=> b!6113822 (= e!3727758 e!3727755)))

(declare-fun c!1098518 () Bool)

(assert (=> b!6113822 (= c!1098518 (isEmpty!36291 (tail!11730 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6113823 () Bool)

(declare-fun e!3727754 () Regex!16062)

(declare-fun e!3727756 () Regex!16062)

(assert (=> b!6113823 (= e!3727754 e!3727756)))

(declare-fun c!1098520 () Bool)

(assert (=> b!6113823 (= c!1098520 (is-Cons!64361 (exprs!5946 (h!70810 zl!343))))))

(declare-fun b!6113824 () Bool)

(assert (=> b!6113824 (= e!3727754 (h!70809 (exprs!5946 (h!70810 zl!343))))))

(declare-fun b!6113820 () Bool)

(assert (=> b!6113820 (= e!3727758 (isEmptyExpr!1479 lt!2330378))))

(declare-fun e!3727753 () Bool)

(assert (=> d!1915837 e!3727753))

(declare-fun res!2535591 () Bool)

(assert (=> d!1915837 (=> (not res!2535591) (not e!3727753))))

(assert (=> d!1915837 (= res!2535591 (validRegex!7798 lt!2330378))))

(assert (=> d!1915837 (= lt!2330378 e!3727754)))

(declare-fun c!1098521 () Bool)

(assert (=> d!1915837 (= c!1098521 e!3727757)))

(declare-fun res!2535592 () Bool)

(assert (=> d!1915837 (=> (not res!2535592) (not e!3727757))))

(assert (=> d!1915837 (= res!2535592 (is-Cons!64361 (exprs!5946 (h!70810 zl!343))))))

(assert (=> d!1915837 (forall!15183 (exprs!5946 (h!70810 zl!343)) lambda!333103)))

(assert (=> d!1915837 (= (generalisedConcat!1659 (exprs!5946 (h!70810 zl!343))) lt!2330378)))

(declare-fun b!6113825 () Bool)

(assert (=> b!6113825 (= e!3727756 EmptyExpr!16062)))

(declare-fun b!6113826 () Bool)

(assert (=> b!6113826 (= e!3727755 (isConcat!1002 lt!2330378))))

(declare-fun b!6113827 () Bool)

(assert (=> b!6113827 (= e!3727756 (Concat!24907 (h!70809 (exprs!5946 (h!70810 zl!343))) (generalisedConcat!1659 (t!377944 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun b!6113828 () Bool)

(assert (=> b!6113828 (= e!3727753 e!3727758)))

(declare-fun c!1098519 () Bool)

(assert (=> b!6113828 (= c!1098519 (isEmpty!36291 (exprs!5946 (h!70810 zl!343))))))

(assert (= (and d!1915837 res!2535592) b!6113821))

(assert (= (and d!1915837 c!1098521) b!6113824))

(assert (= (and d!1915837 (not c!1098521)) b!6113823))

(assert (= (and b!6113823 c!1098520) b!6113827))

(assert (= (and b!6113823 (not c!1098520)) b!6113825))

(assert (= (and d!1915837 res!2535591) b!6113828))

(assert (= (and b!6113828 c!1098519) b!6113820))

(assert (= (and b!6113828 (not c!1098519)) b!6113822))

(assert (= (and b!6113822 c!1098518) b!6113819))

(assert (= (and b!6113822 (not c!1098518)) b!6113826))

(declare-fun m!6962240 () Bool)

(assert (=> b!6113822 m!6962240))

(assert (=> b!6113822 m!6962240))

(declare-fun m!6962242 () Bool)

(assert (=> b!6113822 m!6962242))

(declare-fun m!6962244 () Bool)

(assert (=> d!1915837 m!6962244))

(declare-fun m!6962246 () Bool)

(assert (=> d!1915837 m!6962246))

(assert (=> b!6113821 m!6962028))

(declare-fun m!6962248 () Bool)

(assert (=> b!6113820 m!6962248))

(declare-fun m!6962250 () Bool)

(assert (=> b!6113828 m!6962250))

(assert (=> b!6113827 m!6962032))

(declare-fun m!6962252 () Bool)

(assert (=> b!6113819 m!6962252))

(declare-fun m!6962254 () Bool)

(assert (=> b!6113826 m!6962254))

(assert (=> b!6113612 d!1915837))

(declare-fun d!1915841 () Bool)

(assert (=> d!1915841 (= (isEmpty!36292 (t!377945 zl!343)) (is-Nil!64362 (t!377945 zl!343)))))

(assert (=> b!6113613 d!1915841))

(declare-fun b!6113829 () Bool)

(declare-fun e!3727760 () Bool)

(declare-fun e!3727765 () Bool)

(assert (=> b!6113829 (= e!3727760 e!3727765)))

(declare-fun c!1098523 () Bool)

(assert (=> b!6113829 (= c!1098523 (is-Union!16062 r!7292))))

(declare-fun b!6113830 () Bool)

(declare-fun res!2535593 () Bool)

(declare-fun e!3727763 () Bool)

(assert (=> b!6113830 (=> res!2535593 e!3727763)))

(assert (=> b!6113830 (= res!2535593 (not (is-Concat!24907 r!7292)))))

(assert (=> b!6113830 (= e!3727765 e!3727763)))

(declare-fun d!1915843 () Bool)

(declare-fun res!2535596 () Bool)

(declare-fun e!3727762 () Bool)

(assert (=> d!1915843 (=> res!2535596 e!3727762)))

(assert (=> d!1915843 (= res!2535596 (is-ElementMatch!16062 r!7292))))

(assert (=> d!1915843 (= (validRegex!7798 r!7292) e!3727762)))

(declare-fun call!506023 () Bool)

(declare-fun c!1098522 () Bool)

(declare-fun bm!506017 () Bool)

(assert (=> bm!506017 (= call!506023 (validRegex!7798 (ite c!1098522 (reg!16391 r!7292) (ite c!1098523 (regOne!32637 r!7292) (regOne!32636 r!7292)))))))

(declare-fun b!6113831 () Bool)

(declare-fun e!3727759 () Bool)

(assert (=> b!6113831 (= e!3727759 call!506023)))

(declare-fun b!6113832 () Bool)

(declare-fun e!3727761 () Bool)

(declare-fun call!506022 () Bool)

(assert (=> b!6113832 (= e!3727761 call!506022)))

(declare-fun b!6113833 () Bool)

(assert (=> b!6113833 (= e!3727762 e!3727760)))

(assert (=> b!6113833 (= c!1098522 (is-Star!16062 r!7292))))

(declare-fun bm!506018 () Bool)

(declare-fun call!506024 () Bool)

(assert (=> bm!506018 (= call!506024 call!506023)))

(declare-fun bm!506019 () Bool)

(assert (=> bm!506019 (= call!506022 (validRegex!7798 (ite c!1098523 (regTwo!32637 r!7292) (regTwo!32636 r!7292))))))

(declare-fun b!6113834 () Bool)

(assert (=> b!6113834 (= e!3727760 e!3727759)))

(declare-fun res!2535597 () Bool)

(assert (=> b!6113834 (= res!2535597 (not (nullable!6055 (reg!16391 r!7292))))))

(assert (=> b!6113834 (=> (not res!2535597) (not e!3727759))))

(declare-fun b!6113835 () Bool)

(declare-fun res!2535595 () Bool)

(assert (=> b!6113835 (=> (not res!2535595) (not e!3727761))))

(assert (=> b!6113835 (= res!2535595 call!506024)))

(assert (=> b!6113835 (= e!3727765 e!3727761)))

(declare-fun b!6113836 () Bool)

(declare-fun e!3727764 () Bool)

(assert (=> b!6113836 (= e!3727764 call!506022)))

(declare-fun b!6113837 () Bool)

(assert (=> b!6113837 (= e!3727763 e!3727764)))

(declare-fun res!2535594 () Bool)

(assert (=> b!6113837 (=> (not res!2535594) (not e!3727764))))

(assert (=> b!6113837 (= res!2535594 call!506024)))

(assert (= (and d!1915843 (not res!2535596)) b!6113833))

(assert (= (and b!6113833 c!1098522) b!6113834))

(assert (= (and b!6113833 (not c!1098522)) b!6113829))

(assert (= (and b!6113834 res!2535597) b!6113831))

(assert (= (and b!6113829 c!1098523) b!6113835))

(assert (= (and b!6113829 (not c!1098523)) b!6113830))

(assert (= (and b!6113835 res!2535595) b!6113832))

(assert (= (and b!6113830 (not res!2535593)) b!6113837))

(assert (= (and b!6113837 res!2535594) b!6113836))

(assert (= (or b!6113832 b!6113836) bm!506019))

(assert (= (or b!6113835 b!6113837) bm!506018))

(assert (= (or b!6113831 bm!506018) bm!506017))

(declare-fun m!6962256 () Bool)

(assert (=> bm!506017 m!6962256))

(declare-fun m!6962258 () Bool)

(assert (=> bm!506019 m!6962258))

(declare-fun m!6962260 () Bool)

(assert (=> b!6113834 m!6962260))

(assert (=> start!611080 d!1915843))

(declare-fun d!1915845 () Bool)

(assert (=> d!1915845 (= (isEmpty!36291 (t!377944 (exprs!5946 (h!70810 zl!343)))) (is-Nil!64361 (t!377944 (exprs!5946 (h!70810 zl!343)))))))

(assert (=> b!6113601 d!1915845))

(declare-fun b!6113864 () Bool)

(declare-fun e!3727781 () Bool)

(assert (=> b!6113864 (= e!3727781 (matchR!8245 (regTwo!32636 r!7292) s!2326))))

(declare-fun b!6113865 () Bool)

(declare-fun res!2535614 () Bool)

(declare-fun e!3727783 () Bool)

(assert (=> b!6113865 (=> (not res!2535614) (not e!3727783))))

(declare-fun lt!2330388 () Option!15953)

(declare-fun get!22196 (Option!15953) tuple2!66082)

(assert (=> b!6113865 (= res!2535614 (matchR!8245 (regTwo!32636 r!7292) (_2!36344 (get!22196 lt!2330388))))))

(declare-fun b!6113866 () Bool)

(declare-fun e!3727782 () Option!15953)

(declare-fun e!3727785 () Option!15953)

(assert (=> b!6113866 (= e!3727782 e!3727785)))

(declare-fun c!1098530 () Bool)

(assert (=> b!6113866 (= c!1098530 (is-Nil!64363 s!2326))))

(declare-fun b!6113867 () Bool)

(declare-fun lt!2330389 () Unit!157403)

(declare-fun lt!2330390 () Unit!157403)

(assert (=> b!6113867 (= lt!2330389 lt!2330390)))

(declare-fun ++!14149 (List!64487 List!64487) List!64487)

(assert (=> b!6113867 (= (++!14149 (++!14149 Nil!64363 (Cons!64363 (h!70811 s!2326) Nil!64363)) (t!377946 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2244 (List!64487 C!32394 List!64487 List!64487) Unit!157403)

(assert (=> b!6113867 (= lt!2330390 (lemmaMoveElementToOtherListKeepsConcatEq!2244 Nil!64363 (h!70811 s!2326) (t!377946 s!2326) s!2326))))

(assert (=> b!6113867 (= e!3727785 (findConcatSeparation!2367 (regOne!32636 r!7292) (regTwo!32636 r!7292) (++!14149 Nil!64363 (Cons!64363 (h!70811 s!2326) Nil!64363)) (t!377946 s!2326) s!2326))))

(declare-fun b!6113868 () Bool)

(declare-fun e!3727784 () Bool)

(assert (=> b!6113868 (= e!3727784 (not (isDefined!12656 lt!2330388)))))

(declare-fun b!6113869 () Bool)

(assert (=> b!6113869 (= e!3727782 (Some!15952 (tuple2!66083 Nil!64363 s!2326)))))

(declare-fun d!1915847 () Bool)

(assert (=> d!1915847 e!3727784))

(declare-fun res!2535613 () Bool)

(assert (=> d!1915847 (=> res!2535613 e!3727784)))

(assert (=> d!1915847 (= res!2535613 e!3727783)))

(declare-fun res!2535612 () Bool)

(assert (=> d!1915847 (=> (not res!2535612) (not e!3727783))))

(assert (=> d!1915847 (= res!2535612 (isDefined!12656 lt!2330388))))

(assert (=> d!1915847 (= lt!2330388 e!3727782)))

(declare-fun c!1098531 () Bool)

(assert (=> d!1915847 (= c!1098531 e!3727781)))

(declare-fun res!2535615 () Bool)

(assert (=> d!1915847 (=> (not res!2535615) (not e!3727781))))

(assert (=> d!1915847 (= res!2535615 (matchR!8245 (regOne!32636 r!7292) Nil!64363))))

(assert (=> d!1915847 (validRegex!7798 (regOne!32636 r!7292))))

(assert (=> d!1915847 (= (findConcatSeparation!2367 (regOne!32636 r!7292) (regTwo!32636 r!7292) Nil!64363 s!2326 s!2326) lt!2330388)))

(declare-fun b!6113863 () Bool)

(declare-fun res!2535611 () Bool)

(assert (=> b!6113863 (=> (not res!2535611) (not e!3727783))))

(assert (=> b!6113863 (= res!2535611 (matchR!8245 (regOne!32636 r!7292) (_1!36344 (get!22196 lt!2330388))))))

(declare-fun b!6113870 () Bool)

(assert (=> b!6113870 (= e!3727785 None!15952)))

(declare-fun b!6113871 () Bool)

(assert (=> b!6113871 (= e!3727783 (= (++!14149 (_1!36344 (get!22196 lt!2330388)) (_2!36344 (get!22196 lt!2330388))) s!2326))))

(assert (= (and d!1915847 res!2535615) b!6113864))

(assert (= (and d!1915847 c!1098531) b!6113869))

(assert (= (and d!1915847 (not c!1098531)) b!6113866))

(assert (= (and b!6113866 c!1098530) b!6113870))

(assert (= (and b!6113866 (not c!1098530)) b!6113867))

(assert (= (and d!1915847 res!2535612) b!6113863))

(assert (= (and b!6113863 res!2535611) b!6113865))

(assert (= (and b!6113865 res!2535614) b!6113871))

(assert (= (and d!1915847 (not res!2535613)) b!6113868))

(declare-fun m!6962276 () Bool)

(assert (=> d!1915847 m!6962276))

(declare-fun m!6962278 () Bool)

(assert (=> d!1915847 m!6962278))

(declare-fun m!6962280 () Bool)

(assert (=> d!1915847 m!6962280))

(declare-fun m!6962282 () Bool)

(assert (=> b!6113863 m!6962282))

(declare-fun m!6962284 () Bool)

(assert (=> b!6113863 m!6962284))

(assert (=> b!6113868 m!6962276))

(declare-fun m!6962286 () Bool)

(assert (=> b!6113867 m!6962286))

(assert (=> b!6113867 m!6962286))

(declare-fun m!6962288 () Bool)

(assert (=> b!6113867 m!6962288))

(declare-fun m!6962290 () Bool)

(assert (=> b!6113867 m!6962290))

(assert (=> b!6113867 m!6962286))

(declare-fun m!6962294 () Bool)

(assert (=> b!6113867 m!6962294))

(declare-fun m!6962296 () Bool)

(assert (=> b!6113864 m!6962296))

(assert (=> b!6113871 m!6962282))

(declare-fun m!6962300 () Bool)

(assert (=> b!6113871 m!6962300))

(assert (=> b!6113865 m!6962282))

(declare-fun m!6962302 () Bool)

(assert (=> b!6113865 m!6962302))

(assert (=> b!6113606 d!1915847))

(declare-fun d!1915853 () Bool)

(declare-fun choose!45439 (Int) Bool)

(assert (=> d!1915853 (= (Exists!3132 lambda!333077) (choose!45439 lambda!333077))))

(declare-fun bs!1517384 () Bool)

(assert (= bs!1517384 d!1915853))

(declare-fun m!6962306 () Bool)

(assert (=> bs!1517384 m!6962306))

(assert (=> b!6113606 d!1915853))

(declare-fun d!1915857 () Bool)

(assert (=> d!1915857 (= (Exists!3132 lambda!333076) (choose!45439 lambda!333076))))

(declare-fun bs!1517385 () Bool)

(assert (= bs!1517385 d!1915857))

(declare-fun m!6962308 () Bool)

(assert (=> bs!1517385 m!6962308))

(assert (=> b!6113606 d!1915857))

(declare-fun bs!1517386 () Bool)

(declare-fun d!1915859 () Bool)

(assert (= bs!1517386 (and d!1915859 b!6113606)))

(declare-fun lambda!333108 () Int)

(assert (=> bs!1517386 (= lambda!333108 lambda!333076)))

(assert (=> bs!1517386 (not (= lambda!333108 lambda!333077))))

(assert (=> d!1915859 true))

(assert (=> d!1915859 true))

(assert (=> d!1915859 true))

(assert (=> d!1915859 (= (isDefined!12656 (findConcatSeparation!2367 (regOne!32636 r!7292) (regTwo!32636 r!7292) Nil!64363 s!2326 s!2326)) (Exists!3132 lambda!333108))))

(declare-fun lt!2330393 () Unit!157403)

(declare-fun choose!45440 (Regex!16062 Regex!16062 List!64487) Unit!157403)

(assert (=> d!1915859 (= lt!2330393 (choose!45440 (regOne!32636 r!7292) (regTwo!32636 r!7292) s!2326))))

(assert (=> d!1915859 (validRegex!7798 (regOne!32636 r!7292))))

(assert (=> d!1915859 (= (lemmaFindConcatSeparationEquivalentToExists!2131 (regOne!32636 r!7292) (regTwo!32636 r!7292) s!2326) lt!2330393)))

(declare-fun bs!1517387 () Bool)

(assert (= bs!1517387 d!1915859))

(assert (=> bs!1517387 m!6962280))

(declare-fun m!6962310 () Bool)

(assert (=> bs!1517387 m!6962310))

(declare-fun m!6962312 () Bool)

(assert (=> bs!1517387 m!6962312))

(assert (=> bs!1517387 m!6962044))

(assert (=> bs!1517387 m!6962046))

(assert (=> bs!1517387 m!6962044))

(assert (=> b!6113606 d!1915859))

(declare-fun bs!1517388 () Bool)

(declare-fun d!1915861 () Bool)

(assert (= bs!1517388 (and d!1915861 b!6113606)))

(declare-fun lambda!333114 () Int)

(assert (=> bs!1517388 (= lambda!333114 lambda!333076)))

(assert (=> bs!1517388 (not (= lambda!333114 lambda!333077))))

(declare-fun bs!1517389 () Bool)

(assert (= bs!1517389 (and d!1915861 d!1915859)))

(assert (=> bs!1517389 (= lambda!333114 lambda!333108)))

(assert (=> d!1915861 true))

(assert (=> d!1915861 true))

(assert (=> d!1915861 true))

(declare-fun lambda!333115 () Int)

(assert (=> bs!1517388 (not (= lambda!333115 lambda!333076))))

(assert (=> bs!1517388 (= lambda!333115 lambda!333077)))

(assert (=> bs!1517389 (not (= lambda!333115 lambda!333108))))

(declare-fun bs!1517390 () Bool)

(assert (= bs!1517390 d!1915861))

(assert (=> bs!1517390 (not (= lambda!333115 lambda!333114))))

(assert (=> d!1915861 true))

(assert (=> d!1915861 true))

(assert (=> d!1915861 true))

(assert (=> d!1915861 (= (Exists!3132 lambda!333114) (Exists!3132 lambda!333115))))

(declare-fun lt!2330399 () Unit!157403)

(declare-fun choose!45441 (Regex!16062 Regex!16062 List!64487) Unit!157403)

(assert (=> d!1915861 (= lt!2330399 (choose!45441 (regOne!32636 r!7292) (regTwo!32636 r!7292) s!2326))))

(assert (=> d!1915861 (validRegex!7798 (regOne!32636 r!7292))))

(assert (=> d!1915861 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1669 (regOne!32636 r!7292) (regTwo!32636 r!7292) s!2326) lt!2330399)))

(declare-fun m!6962334 () Bool)

(assert (=> bs!1517390 m!6962334))

(declare-fun m!6962336 () Bool)

(assert (=> bs!1517390 m!6962336))

(declare-fun m!6962338 () Bool)

(assert (=> bs!1517390 m!6962338))

(assert (=> bs!1517390 m!6962280))

(assert (=> b!6113606 d!1915861))

(declare-fun d!1915865 () Bool)

(declare-fun isEmpty!36296 (Option!15953) Bool)

(assert (=> d!1915865 (= (isDefined!12656 (findConcatSeparation!2367 (regOne!32636 r!7292) (regTwo!32636 r!7292) Nil!64363 s!2326 s!2326)) (not (isEmpty!36296 (findConcatSeparation!2367 (regOne!32636 r!7292) (regTwo!32636 r!7292) Nil!64363 s!2326 s!2326))))))

(declare-fun bs!1517391 () Bool)

(assert (= bs!1517391 d!1915865))

(assert (=> bs!1517391 m!6962044))

(declare-fun m!6962340 () Bool)

(assert (=> bs!1517391 m!6962340))

(assert (=> b!6113606 d!1915865))

(declare-fun bs!1517396 () Bool)

(declare-fun b!6113982 () Bool)

(assert (= bs!1517396 (and b!6113982 b!6113606)))

(declare-fun lambda!333126 () Int)

(assert (=> bs!1517396 (not (= lambda!333126 lambda!333076))))

(declare-fun bs!1517397 () Bool)

(assert (= bs!1517397 (and b!6113982 d!1915859)))

(assert (=> bs!1517397 (not (= lambda!333126 lambda!333108))))

(declare-fun bs!1517398 () Bool)

(assert (= bs!1517398 (and b!6113982 d!1915861)))

(assert (=> bs!1517398 (not (= lambda!333126 lambda!333114))))

(assert (=> bs!1517398 (not (= lambda!333126 lambda!333115))))

(assert (=> bs!1517396 (not (= lambda!333126 lambda!333077))))

(assert (=> b!6113982 true))

(assert (=> b!6113982 true))

(declare-fun bs!1517399 () Bool)

(declare-fun b!6113980 () Bool)

(assert (= bs!1517399 (and b!6113980 b!6113606)))

(declare-fun lambda!333127 () Int)

(assert (=> bs!1517399 (not (= lambda!333127 lambda!333076))))

(declare-fun bs!1517400 () Bool)

(assert (= bs!1517400 (and b!6113980 d!1915859)))

(assert (=> bs!1517400 (not (= lambda!333127 lambda!333108))))

(declare-fun bs!1517401 () Bool)

(assert (= bs!1517401 (and b!6113980 d!1915861)))

(assert (=> bs!1517401 (not (= lambda!333127 lambda!333114))))

(assert (=> bs!1517399 (= lambda!333127 lambda!333077)))

(declare-fun bs!1517402 () Bool)

(assert (= bs!1517402 (and b!6113980 b!6113982)))

(assert (=> bs!1517402 (not (= lambda!333127 lambda!333126))))

(assert (=> bs!1517401 (= lambda!333127 lambda!333115)))

(assert (=> b!6113980 true))

(assert (=> b!6113980 true))

(declare-fun b!6113974 () Bool)

(declare-fun e!3727850 () Bool)

(declare-fun e!3727852 () Bool)

(assert (=> b!6113974 (= e!3727850 e!3727852)))

(declare-fun res!2535660 () Bool)

(assert (=> b!6113974 (= res!2535660 (not (is-EmptyLang!16062 r!7292)))))

(assert (=> b!6113974 (=> (not res!2535660) (not e!3727852))))

(declare-fun b!6113975 () Bool)

(declare-fun c!1098561 () Bool)

(assert (=> b!6113975 (= c!1098561 (is-ElementMatch!16062 r!7292))))

(declare-fun e!3727851 () Bool)

(assert (=> b!6113975 (= e!3727852 e!3727851)))

(declare-fun b!6113976 () Bool)

(declare-fun e!3727848 () Bool)

(declare-fun e!3727847 () Bool)

(assert (=> b!6113976 (= e!3727848 e!3727847)))

(declare-fun c!1098563 () Bool)

(assert (=> b!6113976 (= c!1098563 (is-Star!16062 r!7292))))

(declare-fun b!6113977 () Bool)

(assert (=> b!6113977 (= e!3727851 (= s!2326 (Cons!64363 (c!1098472 r!7292) Nil!64363)))))

(declare-fun b!6113978 () Bool)

(declare-fun e!3727853 () Bool)

(assert (=> b!6113978 (= e!3727848 e!3727853)))

(declare-fun res!2535661 () Bool)

(assert (=> b!6113978 (= res!2535661 (matchRSpec!3163 (regOne!32637 r!7292) s!2326))))

(assert (=> b!6113978 (=> res!2535661 e!3727853)))

(declare-fun call!506035 () Bool)

(declare-fun bm!506030 () Bool)

(assert (=> bm!506030 (= call!506035 (Exists!3132 (ite c!1098563 lambda!333126 lambda!333127)))))

(declare-fun d!1915867 () Bool)

(declare-fun c!1098562 () Bool)

(assert (=> d!1915867 (= c!1098562 (is-EmptyExpr!16062 r!7292))))

(assert (=> d!1915867 (= (matchRSpec!3163 r!7292 s!2326) e!3727850)))

(declare-fun b!6113979 () Bool)

(declare-fun res!2535662 () Bool)

(declare-fun e!3727849 () Bool)

(assert (=> b!6113979 (=> res!2535662 e!3727849)))

(declare-fun call!506036 () Bool)

(assert (=> b!6113979 (= res!2535662 call!506036)))

(assert (=> b!6113979 (= e!3727847 e!3727849)))

(assert (=> b!6113980 (= e!3727847 call!506035)))

(declare-fun b!6113981 () Bool)

(assert (=> b!6113981 (= e!3727850 call!506036)))

(assert (=> b!6113982 (= e!3727849 call!506035)))

(declare-fun b!6113983 () Bool)

(assert (=> b!6113983 (= e!3727853 (matchRSpec!3163 (regTwo!32637 r!7292) s!2326))))

(declare-fun b!6113984 () Bool)

(declare-fun c!1098564 () Bool)

(assert (=> b!6113984 (= c!1098564 (is-Union!16062 r!7292))))

(assert (=> b!6113984 (= e!3727851 e!3727848)))

(declare-fun bm!506031 () Bool)

(assert (=> bm!506031 (= call!506036 (isEmpty!36295 s!2326))))

(assert (= (and d!1915867 c!1098562) b!6113981))

(assert (= (and d!1915867 (not c!1098562)) b!6113974))

(assert (= (and b!6113974 res!2535660) b!6113975))

(assert (= (and b!6113975 c!1098561) b!6113977))

(assert (= (and b!6113975 (not c!1098561)) b!6113984))

(assert (= (and b!6113984 c!1098564) b!6113978))

(assert (= (and b!6113984 (not c!1098564)) b!6113976))

(assert (= (and b!6113978 (not res!2535661)) b!6113983))

(assert (= (and b!6113976 c!1098563) b!6113979))

(assert (= (and b!6113976 (not c!1098563)) b!6113980))

(assert (= (and b!6113979 (not res!2535662)) b!6113982))

(assert (= (or b!6113982 b!6113980) bm!506030))

(assert (= (or b!6113981 b!6113979) bm!506031))

(declare-fun m!6962348 () Bool)

(assert (=> b!6113978 m!6962348))

(declare-fun m!6962350 () Bool)

(assert (=> bm!506030 m!6962350))

(declare-fun m!6962352 () Bool)

(assert (=> b!6113983 m!6962352))

(declare-fun m!6962354 () Bool)

(assert (=> bm!506031 m!6962354))

(assert (=> b!6113607 d!1915867))

(declare-fun bm!506037 () Bool)

(declare-fun call!506042 () Bool)

(assert (=> bm!506037 (= call!506042 (isEmpty!36295 s!2326))))

(declare-fun b!6114022 () Bool)

(declare-fun res!2535685 () Bool)

(declare-fun e!3727881 () Bool)

(assert (=> b!6114022 (=> (not res!2535685) (not e!3727881))))

(assert (=> b!6114022 (= res!2535685 (isEmpty!36295 (tail!11731 s!2326)))))

(declare-fun b!6114023 () Bool)

(declare-fun e!3727878 () Bool)

(assert (=> b!6114023 (= e!3727878 (not (= (head!12646 s!2326) (c!1098472 r!7292))))))

(declare-fun b!6114024 () Bool)

(declare-fun e!3727879 () Bool)

(assert (=> b!6114024 (= e!3727879 e!3727878)))

(declare-fun res!2535687 () Bool)

(assert (=> b!6114024 (=> res!2535687 e!3727878)))

(assert (=> b!6114024 (= res!2535687 call!506042)))

(declare-fun b!6114025 () Bool)

(declare-fun e!3727875 () Bool)

(declare-fun derivativeStep!4783 (Regex!16062 C!32394) Regex!16062)

(assert (=> b!6114025 (= e!3727875 (matchR!8245 (derivativeStep!4783 r!7292 (head!12646 s!2326)) (tail!11731 s!2326)))))

(declare-fun b!6114026 () Bool)

(assert (=> b!6114026 (= e!3727881 (= (head!12646 s!2326) (c!1098472 r!7292)))))

(declare-fun b!6114027 () Bool)

(declare-fun res!2535690 () Bool)

(assert (=> b!6114027 (=> (not res!2535690) (not e!3727881))))

(assert (=> b!6114027 (= res!2535690 (not call!506042))))

(declare-fun b!6114028 () Bool)

(declare-fun res!2535691 () Bool)

(declare-fun e!3727880 () Bool)

(assert (=> b!6114028 (=> res!2535691 e!3727880)))

(assert (=> b!6114028 (= res!2535691 (not (is-ElementMatch!16062 r!7292)))))

(declare-fun e!3727877 () Bool)

(assert (=> b!6114028 (= e!3727877 e!3727880)))

(declare-fun b!6114029 () Bool)

(declare-fun e!3727876 () Bool)

(assert (=> b!6114029 (= e!3727876 e!3727877)))

(declare-fun c!1098573 () Bool)

(assert (=> b!6114029 (= c!1098573 (is-EmptyLang!16062 r!7292))))

(declare-fun d!1915875 () Bool)

(assert (=> d!1915875 e!3727876))

(declare-fun c!1098575 () Bool)

(assert (=> d!1915875 (= c!1098575 (is-EmptyExpr!16062 r!7292))))

(declare-fun lt!2330405 () Bool)

(assert (=> d!1915875 (= lt!2330405 e!3727875)))

(declare-fun c!1098574 () Bool)

(assert (=> d!1915875 (= c!1098574 (isEmpty!36295 s!2326))))

(assert (=> d!1915875 (validRegex!7798 r!7292)))

(assert (=> d!1915875 (= (matchR!8245 r!7292 s!2326) lt!2330405)))

(declare-fun b!6114030 () Bool)

(declare-fun res!2535686 () Bool)

(assert (=> b!6114030 (=> res!2535686 e!3727880)))

(assert (=> b!6114030 (= res!2535686 e!3727881)))

(declare-fun res!2535688 () Bool)

(assert (=> b!6114030 (=> (not res!2535688) (not e!3727881))))

(assert (=> b!6114030 (= res!2535688 lt!2330405)))

(declare-fun b!6114031 () Bool)

(assert (=> b!6114031 (= e!3727877 (not lt!2330405))))

(declare-fun b!6114032 () Bool)

(assert (=> b!6114032 (= e!3727875 (nullable!6055 r!7292))))

(declare-fun b!6114033 () Bool)

(declare-fun res!2535689 () Bool)

(assert (=> b!6114033 (=> res!2535689 e!3727878)))

(assert (=> b!6114033 (= res!2535689 (not (isEmpty!36295 (tail!11731 s!2326))))))

(declare-fun b!6114034 () Bool)

(assert (=> b!6114034 (= e!3727876 (= lt!2330405 call!506042))))

(declare-fun b!6114035 () Bool)

(assert (=> b!6114035 (= e!3727880 e!3727879)))

(declare-fun res!2535684 () Bool)

(assert (=> b!6114035 (=> (not res!2535684) (not e!3727879))))

(assert (=> b!6114035 (= res!2535684 (not lt!2330405))))

(assert (= (and d!1915875 c!1098574) b!6114032))

(assert (= (and d!1915875 (not c!1098574)) b!6114025))

(assert (= (and d!1915875 c!1098575) b!6114034))

(assert (= (and d!1915875 (not c!1098575)) b!6114029))

(assert (= (and b!6114029 c!1098573) b!6114031))

(assert (= (and b!6114029 (not c!1098573)) b!6114028))

(assert (= (and b!6114028 (not res!2535691)) b!6114030))

(assert (= (and b!6114030 res!2535688) b!6114027))

(assert (= (and b!6114027 res!2535690) b!6114022))

(assert (= (and b!6114022 res!2535685) b!6114026))

(assert (= (and b!6114030 (not res!2535686)) b!6114035))

(assert (= (and b!6114035 res!2535684) b!6114024))

(assert (= (and b!6114024 (not res!2535687)) b!6114033))

(assert (= (and b!6114033 (not res!2535689)) b!6114023))

(assert (= (or b!6114034 b!6114024 b!6114027) bm!506037))

(declare-fun m!6962362 () Bool)

(assert (=> b!6114032 m!6962362))

(assert (=> d!1915875 m!6962354))

(assert (=> d!1915875 m!6962024))

(declare-fun m!6962364 () Bool)

(assert (=> b!6114025 m!6962364))

(assert (=> b!6114025 m!6962364))

(declare-fun m!6962366 () Bool)

(assert (=> b!6114025 m!6962366))

(declare-fun m!6962368 () Bool)

(assert (=> b!6114025 m!6962368))

(assert (=> b!6114025 m!6962366))

(assert (=> b!6114025 m!6962368))

(declare-fun m!6962370 () Bool)

(assert (=> b!6114025 m!6962370))

(assert (=> b!6114026 m!6962364))

(assert (=> b!6114022 m!6962368))

(assert (=> b!6114022 m!6962368))

(declare-fun m!6962372 () Bool)

(assert (=> b!6114022 m!6962372))

(assert (=> b!6114033 m!6962368))

(assert (=> b!6114033 m!6962368))

(assert (=> b!6114033 m!6962372))

(assert (=> bm!506037 m!6962354))

(assert (=> b!6114023 m!6962364))

(assert (=> b!6113607 d!1915875))

(declare-fun d!1915879 () Bool)

(assert (=> d!1915879 (= (matchR!8245 r!7292 s!2326) (matchRSpec!3163 r!7292 s!2326))))

(declare-fun lt!2330410 () Unit!157403)

(declare-fun choose!45442 (Regex!16062 List!64487) Unit!157403)

(assert (=> d!1915879 (= lt!2330410 (choose!45442 r!7292 s!2326))))

(assert (=> d!1915879 (validRegex!7798 r!7292)))

(assert (=> d!1915879 (= (mainMatchTheorem!3163 r!7292 s!2326) lt!2330410)))

(declare-fun bs!1517403 () Bool)

(assert (= bs!1517403 d!1915879))

(assert (=> bs!1517403 m!6962086))

(assert (=> bs!1517403 m!6962084))

(declare-fun m!6962374 () Bool)

(assert (=> bs!1517403 m!6962374))

(assert (=> bs!1517403 m!6962024))

(assert (=> b!6113607 d!1915879))

(declare-fun d!1915881 () Bool)

(declare-fun lt!2330413 () Regex!16062)

(assert (=> d!1915881 (validRegex!7798 lt!2330413)))

(assert (=> d!1915881 (= lt!2330413 (generalisedUnion!1906 (unfocusZipperList!1483 zl!343)))))

(assert (=> d!1915881 (= (unfocusZipper!1804 zl!343) lt!2330413)))

(declare-fun bs!1517404 () Bool)

(assert (= bs!1517404 d!1915881))

(declare-fun m!6962376 () Bool)

(assert (=> bs!1517404 m!6962376))

(assert (=> bs!1517404 m!6962038))

(assert (=> bs!1517404 m!6962038))

(assert (=> bs!1517404 m!6962040))

(assert (=> b!6113598 d!1915881))

(declare-fun call!506045 () (Set Context!10892))

(declare-fun e!3727914 () (Set Context!10892))

(declare-fun b!6114088 () Bool)

(assert (=> b!6114088 (= e!3727914 (set.union call!506045 (derivationStepZipperUp!1236 (Context!10893 (t!377944 (exprs!5946 lt!2330325))) (h!70811 s!2326))))))

(declare-fun b!6114089 () Bool)

(declare-fun e!3727913 () (Set Context!10892))

(assert (=> b!6114089 (= e!3727913 (as set.empty (Set Context!10892)))))

(declare-fun d!1915883 () Bool)

(declare-fun c!1098598 () Bool)

(declare-fun e!3727915 () Bool)

(assert (=> d!1915883 (= c!1098598 e!3727915)))

(declare-fun res!2535702 () Bool)

(assert (=> d!1915883 (=> (not res!2535702) (not e!3727915))))

(assert (=> d!1915883 (= res!2535702 (is-Cons!64361 (exprs!5946 lt!2330325)))))

(assert (=> d!1915883 (= (derivationStepZipperUp!1236 lt!2330325 (h!70811 s!2326)) e!3727914)))

(declare-fun b!6114090 () Bool)

(assert (=> b!6114090 (= e!3727915 (nullable!6055 (h!70809 (exprs!5946 lt!2330325))))))

(declare-fun b!6114091 () Bool)

(assert (=> b!6114091 (= e!3727913 call!506045)))

(declare-fun b!6114092 () Bool)

(assert (=> b!6114092 (= e!3727914 e!3727913)))

(declare-fun c!1098597 () Bool)

(assert (=> b!6114092 (= c!1098597 (is-Cons!64361 (exprs!5946 lt!2330325)))))

(declare-fun bm!506040 () Bool)

(assert (=> bm!506040 (= call!506045 (derivationStepZipperDown!1310 (h!70809 (exprs!5946 lt!2330325)) (Context!10893 (t!377944 (exprs!5946 lt!2330325))) (h!70811 s!2326)))))

(assert (= (and d!1915883 res!2535702) b!6114090))

(assert (= (and d!1915883 c!1098598) b!6114088))

(assert (= (and d!1915883 (not c!1098598)) b!6114092))

(assert (= (and b!6114092 c!1098597) b!6114091))

(assert (= (and b!6114092 (not c!1098597)) b!6114089))

(assert (= (or b!6114088 b!6114091) bm!506040))

(declare-fun m!6962402 () Bool)

(assert (=> b!6114088 m!6962402))

(declare-fun m!6962404 () Bool)

(assert (=> b!6114090 m!6962404))

(declare-fun m!6962406 () Bool)

(assert (=> bm!506040 m!6962406))

(assert (=> b!6113608 d!1915883))

(declare-fun d!1915889 () Bool)

(declare-fun dynLambda!25347 (Int Context!10892) (Set Context!10892))

(assert (=> d!1915889 (= (flatMap!1567 z!1189 lambda!333078) (dynLambda!25347 lambda!333078 (h!70810 zl!343)))))

(declare-fun lt!2330418 () Unit!157403)

(declare-fun choose!45443 ((Set Context!10892) Context!10892 Int) Unit!157403)

(assert (=> d!1915889 (= lt!2330418 (choose!45443 z!1189 (h!70810 zl!343) lambda!333078))))

(assert (=> d!1915889 (= z!1189 (set.insert (h!70810 zl!343) (as set.empty (Set Context!10892))))))

(assert (=> d!1915889 (= (lemmaFlatMapOnSingletonSet!1093 z!1189 (h!70810 zl!343) lambda!333078) lt!2330418)))

(declare-fun b_lambda!232857 () Bool)

(assert (=> (not b_lambda!232857) (not d!1915889)))

(declare-fun bs!1517413 () Bool)

(assert (= bs!1517413 d!1915889))

(assert (=> bs!1517413 m!6962068))

(declare-fun m!6962426 () Bool)

(assert (=> bs!1517413 m!6962426))

(declare-fun m!6962428 () Bool)

(assert (=> bs!1517413 m!6962428))

(declare-fun m!6962430 () Bool)

(assert (=> bs!1517413 m!6962430))

(assert (=> b!6113608 d!1915889))

(declare-fun d!1915895 () Bool)

(declare-fun nullableFct!2019 (Regex!16062) Bool)

(assert (=> d!1915895 (= (nullable!6055 (h!70809 (exprs!5946 (h!70810 zl!343)))) (nullableFct!2019 (h!70809 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun bs!1517415 () Bool)

(assert (= bs!1517415 d!1915895))

(declare-fun m!6962434 () Bool)

(assert (=> bs!1517415 m!6962434))

(assert (=> b!6113608 d!1915895))

(declare-fun call!506046 () (Set Context!10892))

(declare-fun e!3727917 () (Set Context!10892))

(declare-fun b!6114093 () Bool)

(assert (=> b!6114093 (= e!3727917 (set.union call!506046 (derivationStepZipperUp!1236 (Context!10893 (t!377944 (exprs!5946 (Context!10893 (Cons!64361 (h!70809 (exprs!5946 (h!70810 zl!343))) (t!377944 (exprs!5946 (h!70810 zl!343)))))))) (h!70811 s!2326))))))

(declare-fun b!6114094 () Bool)

(declare-fun e!3727916 () (Set Context!10892))

(assert (=> b!6114094 (= e!3727916 (as set.empty (Set Context!10892)))))

(declare-fun d!1915899 () Bool)

(declare-fun c!1098600 () Bool)

(declare-fun e!3727918 () Bool)

(assert (=> d!1915899 (= c!1098600 e!3727918)))

(declare-fun res!2535703 () Bool)

(assert (=> d!1915899 (=> (not res!2535703) (not e!3727918))))

(assert (=> d!1915899 (= res!2535703 (is-Cons!64361 (exprs!5946 (Context!10893 (Cons!64361 (h!70809 (exprs!5946 (h!70810 zl!343))) (t!377944 (exprs!5946 (h!70810 zl!343))))))))))

(assert (=> d!1915899 (= (derivationStepZipperUp!1236 (Context!10893 (Cons!64361 (h!70809 (exprs!5946 (h!70810 zl!343))) (t!377944 (exprs!5946 (h!70810 zl!343))))) (h!70811 s!2326)) e!3727917)))

(declare-fun b!6114095 () Bool)

(assert (=> b!6114095 (= e!3727918 (nullable!6055 (h!70809 (exprs!5946 (Context!10893 (Cons!64361 (h!70809 (exprs!5946 (h!70810 zl!343))) (t!377944 (exprs!5946 (h!70810 zl!343)))))))))))

(declare-fun b!6114096 () Bool)

(assert (=> b!6114096 (= e!3727916 call!506046)))

(declare-fun b!6114097 () Bool)

(assert (=> b!6114097 (= e!3727917 e!3727916)))

(declare-fun c!1098599 () Bool)

(assert (=> b!6114097 (= c!1098599 (is-Cons!64361 (exprs!5946 (Context!10893 (Cons!64361 (h!70809 (exprs!5946 (h!70810 zl!343))) (t!377944 (exprs!5946 (h!70810 zl!343))))))))))

(declare-fun bm!506041 () Bool)

(assert (=> bm!506041 (= call!506046 (derivationStepZipperDown!1310 (h!70809 (exprs!5946 (Context!10893 (Cons!64361 (h!70809 (exprs!5946 (h!70810 zl!343))) (t!377944 (exprs!5946 (h!70810 zl!343))))))) (Context!10893 (t!377944 (exprs!5946 (Context!10893 (Cons!64361 (h!70809 (exprs!5946 (h!70810 zl!343))) (t!377944 (exprs!5946 (h!70810 zl!343)))))))) (h!70811 s!2326)))))

(assert (= (and d!1915899 res!2535703) b!6114095))

(assert (= (and d!1915899 c!1098600) b!6114093))

(assert (= (and d!1915899 (not c!1098600)) b!6114097))

(assert (= (and b!6114097 c!1098599) b!6114096))

(assert (= (and b!6114097 (not c!1098599)) b!6114094))

(assert (= (or b!6114093 b!6114096) bm!506041))

(declare-fun m!6962436 () Bool)

(assert (=> b!6114093 m!6962436))

(declare-fun m!6962438 () Bool)

(assert (=> b!6114095 m!6962438))

(declare-fun m!6962440 () Bool)

(assert (=> bm!506041 m!6962440))

(assert (=> b!6113608 d!1915899))

(declare-fun b!6114098 () Bool)

(declare-fun call!506047 () (Set Context!10892))

(declare-fun e!3727920 () (Set Context!10892))

(assert (=> b!6114098 (= e!3727920 (set.union call!506047 (derivationStepZipperUp!1236 (Context!10893 (t!377944 (exprs!5946 (h!70810 zl!343)))) (h!70811 s!2326))))))

(declare-fun b!6114099 () Bool)

(declare-fun e!3727919 () (Set Context!10892))

(assert (=> b!6114099 (= e!3727919 (as set.empty (Set Context!10892)))))

(declare-fun d!1915901 () Bool)

(declare-fun c!1098602 () Bool)

(declare-fun e!3727921 () Bool)

(assert (=> d!1915901 (= c!1098602 e!3727921)))

(declare-fun res!2535704 () Bool)

(assert (=> d!1915901 (=> (not res!2535704) (not e!3727921))))

(assert (=> d!1915901 (= res!2535704 (is-Cons!64361 (exprs!5946 (h!70810 zl!343))))))

(assert (=> d!1915901 (= (derivationStepZipperUp!1236 (h!70810 zl!343) (h!70811 s!2326)) e!3727920)))

(declare-fun b!6114100 () Bool)

(assert (=> b!6114100 (= e!3727921 (nullable!6055 (h!70809 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6114101 () Bool)

(assert (=> b!6114101 (= e!3727919 call!506047)))

(declare-fun b!6114102 () Bool)

(assert (=> b!6114102 (= e!3727920 e!3727919)))

(declare-fun c!1098601 () Bool)

(assert (=> b!6114102 (= c!1098601 (is-Cons!64361 (exprs!5946 (h!70810 zl!343))))))

(declare-fun bm!506042 () Bool)

(assert (=> bm!506042 (= call!506047 (derivationStepZipperDown!1310 (h!70809 (exprs!5946 (h!70810 zl!343))) (Context!10893 (t!377944 (exprs!5946 (h!70810 zl!343)))) (h!70811 s!2326)))))

(assert (= (and d!1915901 res!2535704) b!6114100))

(assert (= (and d!1915901 c!1098602) b!6114098))

(assert (= (and d!1915901 (not c!1098602)) b!6114102))

(assert (= (and b!6114102 c!1098601) b!6114101))

(assert (= (and b!6114102 (not c!1098601)) b!6114099))

(assert (= (or b!6114098 b!6114101) bm!506042))

(declare-fun m!6962442 () Bool)

(assert (=> b!6114098 m!6962442))

(assert (=> b!6114100 m!6962066))

(declare-fun m!6962444 () Bool)

(assert (=> bm!506042 m!6962444))

(assert (=> b!6113608 d!1915901))

(declare-fun bm!506058 () Bool)

(declare-fun call!506068 () List!64485)

(declare-fun call!506064 () List!64485)

(assert (=> bm!506058 (= call!506068 call!506064)))

(declare-fun d!1915903 () Bool)

(declare-fun c!1098621 () Bool)

(assert (=> d!1915903 (= c!1098621 (and (is-ElementMatch!16062 (h!70809 (exprs!5946 (h!70810 zl!343)))) (= (c!1098472 (h!70809 (exprs!5946 (h!70810 zl!343)))) (h!70811 s!2326))))))

(declare-fun e!3727947 () (Set Context!10892))

(assert (=> d!1915903 (= (derivationStepZipperDown!1310 (h!70809 (exprs!5946 (h!70810 zl!343))) lt!2330325 (h!70811 s!2326)) e!3727947)))

(declare-fun b!6114140 () Bool)

(declare-fun e!3727943 () (Set Context!10892))

(assert (=> b!6114140 (= e!3727947 e!3727943)))

(declare-fun c!1098620 () Bool)

(assert (=> b!6114140 (= c!1098620 (is-Union!16062 (h!70809 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6114141 () Bool)

(assert (=> b!6114141 (= e!3727947 (set.insert lt!2330325 (as set.empty (Set Context!10892))))))

(declare-fun b!6114142 () Bool)

(declare-fun e!3727946 () (Set Context!10892))

(declare-fun call!506066 () (Set Context!10892))

(assert (=> b!6114142 (= e!3727946 call!506066)))

(declare-fun call!506067 () (Set Context!10892))

(declare-fun bm!506059 () Bool)

(assert (=> bm!506059 (= call!506067 (derivationStepZipperDown!1310 (ite c!1098620 (regOne!32637 (h!70809 (exprs!5946 (h!70810 zl!343)))) (regOne!32636 (h!70809 (exprs!5946 (h!70810 zl!343))))) (ite c!1098620 lt!2330325 (Context!10893 call!506064)) (h!70811 s!2326)))))

(declare-fun b!6114143 () Bool)

(declare-fun e!3727944 () Bool)

(assert (=> b!6114143 (= e!3727944 (nullable!6055 (regOne!32636 (h!70809 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun b!6114144 () Bool)

(declare-fun c!1098622 () Bool)

(assert (=> b!6114144 (= c!1098622 (is-Star!16062 (h!70809 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun e!3727945 () (Set Context!10892))

(assert (=> b!6114144 (= e!3727945 e!3727946)))

(declare-fun bm!506060 () Bool)

(declare-fun call!506063 () (Set Context!10892))

(declare-fun call!506065 () (Set Context!10892))

(assert (=> bm!506060 (= call!506063 call!506065)))

(declare-fun b!6114145 () Bool)

(assert (=> b!6114145 (= e!3727945 call!506066)))

(declare-fun b!6114146 () Bool)

(declare-fun e!3727948 () (Set Context!10892))

(assert (=> b!6114146 (= e!3727948 e!3727945)))

(declare-fun c!1098619 () Bool)

(assert (=> b!6114146 (= c!1098619 (is-Concat!24907 (h!70809 (exprs!5946 (h!70810 zl!343)))))))

(declare-fun b!6114147 () Bool)

(assert (=> b!6114147 (= e!3727946 (as set.empty (Set Context!10892)))))

(declare-fun b!6114148 () Bool)

(assert (=> b!6114148 (= e!3727948 (set.union call!506067 call!506063))))

(declare-fun bm!506061 () Bool)

(assert (=> bm!506061 (= call!506066 call!506063)))

(declare-fun b!6114149 () Bool)

(declare-fun c!1098623 () Bool)

(assert (=> b!6114149 (= c!1098623 e!3727944)))

(declare-fun res!2535710 () Bool)

(assert (=> b!6114149 (=> (not res!2535710) (not e!3727944))))

(assert (=> b!6114149 (= res!2535710 (is-Concat!24907 (h!70809 (exprs!5946 (h!70810 zl!343)))))))

(assert (=> b!6114149 (= e!3727943 e!3727948)))

(declare-fun b!6114150 () Bool)

(assert (=> b!6114150 (= e!3727943 (set.union call!506067 call!506065))))

(declare-fun bm!506062 () Bool)

(declare-fun $colon$colon!1939 (List!64485 Regex!16062) List!64485)

(assert (=> bm!506062 (= call!506064 ($colon$colon!1939 (exprs!5946 lt!2330325) (ite (or c!1098623 c!1098619) (regTwo!32636 (h!70809 (exprs!5946 (h!70810 zl!343)))) (h!70809 (exprs!5946 (h!70810 zl!343))))))))

(declare-fun bm!506063 () Bool)

(assert (=> bm!506063 (= call!506065 (derivationStepZipperDown!1310 (ite c!1098620 (regTwo!32637 (h!70809 (exprs!5946 (h!70810 zl!343)))) (ite c!1098623 (regTwo!32636 (h!70809 (exprs!5946 (h!70810 zl!343)))) (ite c!1098619 (regOne!32636 (h!70809 (exprs!5946 (h!70810 zl!343)))) (reg!16391 (h!70809 (exprs!5946 (h!70810 zl!343))))))) (ite (or c!1098620 c!1098623) lt!2330325 (Context!10893 call!506068)) (h!70811 s!2326)))))

(assert (= (and d!1915903 c!1098621) b!6114141))

(assert (= (and d!1915903 (not c!1098621)) b!6114140))

(assert (= (and b!6114140 c!1098620) b!6114150))

(assert (= (and b!6114140 (not c!1098620)) b!6114149))

(assert (= (and b!6114149 res!2535710) b!6114143))

(assert (= (and b!6114149 c!1098623) b!6114148))

(assert (= (and b!6114149 (not c!1098623)) b!6114146))

(assert (= (and b!6114146 c!1098619) b!6114145))

(assert (= (and b!6114146 (not c!1098619)) b!6114144))

(assert (= (and b!6114144 c!1098622) b!6114142))

(assert (= (and b!6114144 (not c!1098622)) b!6114147))

(assert (= (or b!6114145 b!6114142) bm!506058))

(assert (= (or b!6114145 b!6114142) bm!506061))

(assert (= (or b!6114148 bm!506058) bm!506062))

(assert (= (or b!6114148 bm!506061) bm!506060))

(assert (= (or b!6114150 bm!506060) bm!506063))

(assert (= (or b!6114150 b!6114148) bm!506059))

(declare-fun m!6962452 () Bool)

(assert (=> bm!506062 m!6962452))

(assert (=> b!6114141 m!6962062))

(declare-fun m!6962454 () Bool)

(assert (=> bm!506063 m!6962454))

(declare-fun m!6962456 () Bool)

(assert (=> bm!506059 m!6962456))

(declare-fun m!6962458 () Bool)

(assert (=> b!6114143 m!6962458))

(assert (=> b!6113608 d!1915903))

(declare-fun d!1915907 () Bool)

(declare-fun choose!45445 ((Set Context!10892) Int) (Set Context!10892))

(assert (=> d!1915907 (= (flatMap!1567 z!1189 lambda!333078) (choose!45445 z!1189 lambda!333078))))

(declare-fun bs!1517417 () Bool)

(assert (= bs!1517417 d!1915907))

(declare-fun m!6962466 () Bool)

(assert (=> bs!1517417 m!6962466))

(assert (=> b!6113608 d!1915907))

(declare-fun b!6114160 () Bool)

(declare-fun e!3727954 () Bool)

(declare-fun tp!1707691 () Bool)

(declare-fun tp!1707692 () Bool)

(assert (=> b!6114160 (= e!3727954 (and tp!1707691 tp!1707692))))

(assert (=> b!6113609 (= tp!1707654 e!3727954)))

(assert (= (and b!6113609 (is-Cons!64361 (exprs!5946 setElem!41313))) b!6114160))

(declare-fun b!6114179 () Bool)

(declare-fun e!3727960 () Bool)

(declare-fun tp!1707704 () Bool)

(declare-fun tp!1707706 () Bool)

(assert (=> b!6114179 (= e!3727960 (and tp!1707704 tp!1707706))))

(declare-fun b!6114177 () Bool)

(declare-fun tp!1707703 () Bool)

(declare-fun tp!1707705 () Bool)

(assert (=> b!6114177 (= e!3727960 (and tp!1707703 tp!1707705))))

(declare-fun b!6114176 () Bool)

(assert (=> b!6114176 (= e!3727960 tp_is_empty!41377)))

(declare-fun b!6114178 () Bool)

(declare-fun tp!1707707 () Bool)

(assert (=> b!6114178 (= e!3727960 tp!1707707)))

(assert (=> b!6113610 (= tp!1707647 e!3727960)))

(assert (= (and b!6113610 (is-ElementMatch!16062 (regOne!32637 r!7292))) b!6114176))

(assert (= (and b!6113610 (is-Concat!24907 (regOne!32637 r!7292))) b!6114177))

(assert (= (and b!6113610 (is-Star!16062 (regOne!32637 r!7292))) b!6114178))

(assert (= (and b!6113610 (is-Union!16062 (regOne!32637 r!7292))) b!6114179))

(declare-fun b!6114183 () Bool)

(declare-fun e!3727961 () Bool)

(declare-fun tp!1707709 () Bool)

(declare-fun tp!1707711 () Bool)

(assert (=> b!6114183 (= e!3727961 (and tp!1707709 tp!1707711))))

(declare-fun b!6114181 () Bool)

(declare-fun tp!1707708 () Bool)

(declare-fun tp!1707710 () Bool)

(assert (=> b!6114181 (= e!3727961 (and tp!1707708 tp!1707710))))

(declare-fun b!6114180 () Bool)

(assert (=> b!6114180 (= e!3727961 tp_is_empty!41377)))

(declare-fun b!6114182 () Bool)

(declare-fun tp!1707712 () Bool)

(assert (=> b!6114182 (= e!3727961 tp!1707712)))

(assert (=> b!6113610 (= tp!1707653 e!3727961)))

(assert (= (and b!6113610 (is-ElementMatch!16062 (regTwo!32637 r!7292))) b!6114180))

(assert (= (and b!6113610 (is-Concat!24907 (regTwo!32637 r!7292))) b!6114181))

(assert (= (and b!6113610 (is-Star!16062 (regTwo!32637 r!7292))) b!6114182))

(assert (= (and b!6113610 (is-Union!16062 (regTwo!32637 r!7292))) b!6114183))

(declare-fun condSetEmpty!41319 () Bool)

(assert (=> setNonEmpty!41313 (= condSetEmpty!41319 (= setRest!41313 (as set.empty (Set Context!10892))))))

(declare-fun setRes!41319 () Bool)

(assert (=> setNonEmpty!41313 (= tp!1707651 setRes!41319)))

(declare-fun setIsEmpty!41319 () Bool)

(assert (=> setIsEmpty!41319 setRes!41319))

(declare-fun e!3727964 () Bool)

(declare-fun setElem!41319 () Context!10892)

(declare-fun tp!1707717 () Bool)

(declare-fun setNonEmpty!41319 () Bool)

(assert (=> setNonEmpty!41319 (= setRes!41319 (and tp!1707717 (inv!83403 setElem!41319) e!3727964))))

(declare-fun setRest!41319 () (Set Context!10892))

(assert (=> setNonEmpty!41319 (= setRest!41313 (set.union (set.insert setElem!41319 (as set.empty (Set Context!10892))) setRest!41319))))

(declare-fun b!6114188 () Bool)

(declare-fun tp!1707718 () Bool)

(assert (=> b!6114188 (= e!3727964 tp!1707718)))

(assert (= (and setNonEmpty!41313 condSetEmpty!41319) setIsEmpty!41319))

(assert (= (and setNonEmpty!41313 (not condSetEmpty!41319)) setNonEmpty!41319))

(assert (= setNonEmpty!41319 b!6114188))

(declare-fun m!6962478 () Bool)

(assert (=> setNonEmpty!41319 m!6962478))

(declare-fun b!6114196 () Bool)

(declare-fun e!3727970 () Bool)

(declare-fun tp!1707723 () Bool)

(assert (=> b!6114196 (= e!3727970 tp!1707723)))

(declare-fun tp!1707724 () Bool)

(declare-fun b!6114195 () Bool)

(declare-fun e!3727969 () Bool)

(assert (=> b!6114195 (= e!3727969 (and (inv!83403 (h!70810 (t!377945 zl!343))) e!3727970 tp!1707724))))

(assert (=> b!6113596 (= tp!1707648 e!3727969)))

(assert (= b!6114195 b!6114196))

(assert (= (and b!6113596 (is-Cons!64362 (t!377945 zl!343))) b!6114195))

(declare-fun m!6962480 () Bool)

(assert (=> b!6114195 m!6962480))

(declare-fun b!6114201 () Bool)

(declare-fun e!3727973 () Bool)

(declare-fun tp!1707727 () Bool)

(assert (=> b!6114201 (= e!3727973 (and tp_is_empty!41377 tp!1707727))))

(assert (=> b!6113597 (= tp!1707650 e!3727973)))

(assert (= (and b!6113597 (is-Cons!64363 (t!377946 s!2326))) b!6114201))

(declare-fun b!6114202 () Bool)

(declare-fun e!3727974 () Bool)

(declare-fun tp!1707728 () Bool)

(declare-fun tp!1707729 () Bool)

(assert (=> b!6114202 (= e!3727974 (and tp!1707728 tp!1707729))))

(assert (=> b!6113603 (= tp!1707652 e!3727974)))

(assert (= (and b!6113603 (is-Cons!64361 (exprs!5946 (h!70810 zl!343)))) b!6114202))

(declare-fun b!6114206 () Bool)

(declare-fun e!3727975 () Bool)

(declare-fun tp!1707731 () Bool)

(declare-fun tp!1707733 () Bool)

(assert (=> b!6114206 (= e!3727975 (and tp!1707731 tp!1707733))))

(declare-fun b!6114204 () Bool)

(declare-fun tp!1707730 () Bool)

(declare-fun tp!1707732 () Bool)

(assert (=> b!6114204 (= e!3727975 (and tp!1707730 tp!1707732))))

(declare-fun b!6114203 () Bool)

(assert (=> b!6114203 (= e!3727975 tp_is_empty!41377)))

(declare-fun b!6114205 () Bool)

(declare-fun tp!1707734 () Bool)

(assert (=> b!6114205 (= e!3727975 tp!1707734)))

(assert (=> b!6113594 (= tp!1707656 e!3727975)))

(assert (= (and b!6113594 (is-ElementMatch!16062 (regOne!32636 r!7292))) b!6114203))

(assert (= (and b!6113594 (is-Concat!24907 (regOne!32636 r!7292))) b!6114204))

(assert (= (and b!6113594 (is-Star!16062 (regOne!32636 r!7292))) b!6114205))

(assert (= (and b!6113594 (is-Union!16062 (regOne!32636 r!7292))) b!6114206))

(declare-fun b!6114210 () Bool)

(declare-fun e!3727976 () Bool)

(declare-fun tp!1707736 () Bool)

(declare-fun tp!1707738 () Bool)

(assert (=> b!6114210 (= e!3727976 (and tp!1707736 tp!1707738))))

(declare-fun b!6114208 () Bool)

(declare-fun tp!1707735 () Bool)

(declare-fun tp!1707737 () Bool)

(assert (=> b!6114208 (= e!3727976 (and tp!1707735 tp!1707737))))

(declare-fun b!6114207 () Bool)

(assert (=> b!6114207 (= e!3727976 tp_is_empty!41377)))

(declare-fun b!6114209 () Bool)

(declare-fun tp!1707739 () Bool)

(assert (=> b!6114209 (= e!3727976 tp!1707739)))

(assert (=> b!6113594 (= tp!1707649 e!3727976)))

(assert (= (and b!6113594 (is-ElementMatch!16062 (regTwo!32636 r!7292))) b!6114207))

(assert (= (and b!6113594 (is-Concat!24907 (regTwo!32636 r!7292))) b!6114208))

(assert (= (and b!6113594 (is-Star!16062 (regTwo!32636 r!7292))) b!6114209))

(assert (= (and b!6113594 (is-Union!16062 (regTwo!32636 r!7292))) b!6114210))

(declare-fun b!6114214 () Bool)

(declare-fun e!3727977 () Bool)

(declare-fun tp!1707741 () Bool)

(declare-fun tp!1707743 () Bool)

(assert (=> b!6114214 (= e!3727977 (and tp!1707741 tp!1707743))))

(declare-fun b!6114212 () Bool)

(declare-fun tp!1707740 () Bool)

(declare-fun tp!1707742 () Bool)

(assert (=> b!6114212 (= e!3727977 (and tp!1707740 tp!1707742))))

(declare-fun b!6114211 () Bool)

(assert (=> b!6114211 (= e!3727977 tp_is_empty!41377)))

(declare-fun b!6114213 () Bool)

(declare-fun tp!1707744 () Bool)

(assert (=> b!6114213 (= e!3727977 tp!1707744)))

(assert (=> b!6113604 (= tp!1707655 e!3727977)))

(assert (= (and b!6113604 (is-ElementMatch!16062 (reg!16391 r!7292))) b!6114211))

(assert (= (and b!6113604 (is-Concat!24907 (reg!16391 r!7292))) b!6114212))

(assert (= (and b!6113604 (is-Star!16062 (reg!16391 r!7292))) b!6114213))

(assert (= (and b!6113604 (is-Union!16062 (reg!16391 r!7292))) b!6114214))

(declare-fun b_lambda!232861 () Bool)

(assert (= b_lambda!232857 (or b!6113608 b_lambda!232861)))

(declare-fun bs!1517418 () Bool)

(declare-fun d!1915915 () Bool)

(assert (= bs!1517418 (and d!1915915 b!6113608)))

(assert (=> bs!1517418 (= (dynLambda!25347 lambda!333078 (h!70810 zl!343)) (derivationStepZipperUp!1236 (h!70810 zl!343) (h!70811 s!2326)))))

(assert (=> bs!1517418 m!6962060))

(assert (=> d!1915889 d!1915915))

(push 1)

(assert (not b!6114212))

(assert (not b!6113733))

(assert (not b!6114025))

(assert (not d!1915837))

(assert (not b!6114213))

(assert (not b!6113760))

(assert (not bm!506017))

(assert (not bm!506037))

(assert (not bm!506040))

(assert (not b!6113819))

(assert (not b!6114210))

(assert (not b!6114098))

(assert (not b!6113828))

(assert (not b!6114209))

(assert (not d!1915881))

(assert (not bm!506031))

(assert (not b!6114095))

(assert (not d!1915817))

(assert (not b!6113864))

(assert (not b!6114201))

(assert (not b!6113822))

(assert (not b!6114204))

(assert (not b!6113802))

(assert (not bm!506042))

(assert (not b!6114088))

(assert (not b!6114160))

(assert (not b!6113798))

(assert (not b!6114206))

(assert (not b!6113793))

(assert (not b!6113827))

(assert (not b!6114195))

(assert (not b!6113818))

(assert (not bm!506041))

(assert (not d!1915835))

(assert (not b!6113826))

(assert (not b!6113800))

(assert (not d!1915857))

(assert (not bm!506062))

(assert (not b!6114093))

(assert (not bm!506014))

(assert (not b!6114208))

(assert (not d!1915823))

(assert (not b!6113816))

(assert (not b!6114214))

(assert (not b!6113863))

(assert (not bm!506016))

(assert (not setNonEmpty!41319))

(assert (not b!6113795))

(assert (not d!1915829))

(assert (not b!6113757))

(assert (not b!6113821))

(assert (not d!1915865))

(assert (not b!6113759))

(assert (not b!6113814))

(assert (not bm!506059))

(assert (not b!6114033))

(assert (not b!6113815))

(assert (not b_lambda!232861))

(assert (not bm!506030))

(assert (not b!6114143))

(assert (not d!1915859))

(assert (not b!6113817))

(assert (not b!6113865))

(assert (not bm!506063))

(assert (not b!6114100))

(assert (not b!6114181))

(assert (not b!6114023))

(assert (not b!6114188))

(assert (not b!6113801))

(assert (not b!6114022))

(assert (not d!1915875))

(assert (not d!1915827))

(assert (not d!1915847))

(assert (not b!6114196))

(assert (not d!1915895))

(assert (not b!6113868))

(assert (not d!1915853))

(assert (not b!6113765))

(assert (not d!1915879))

(assert (not b!6113834))

(assert (not b!6114183))

(assert (not b!6113978))

(assert (not b!6113799))

(assert (not b!6114178))

(assert (not d!1915907))

(assert (not bm!506019))

(assert (not b!6114177))

(assert (not b!6113764))

(assert (not b!6114090))

(assert (not bs!1517418))

(assert (not b!6114182))

(assert (not d!1915831))

(assert tp_is_empty!41377)

(assert (not b!6113811))

(assert (not d!1915819))

(assert (not b!6114205))

(assert (not b!6113983))

(assert (not b!6113771))

(assert (not b!6114032))

(assert (not b!6113867))

(assert (not b!6114179))

(assert (not b!6113758))

(assert (not b!6113766))

(assert (not d!1915889))

(assert (not d!1915821))

(assert (not d!1915833))

(assert (not b!6114202))

(assert (not b!6113772))

(assert (not b!6113807))

(assert (not d!1915861))

(assert (not b!6113820))

(assert (not b!6114026))

(assert (not b!6113871))

(assert (not d!1915825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

