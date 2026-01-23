; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!599186 () Bool)

(assert start!599186)

(declare-fun b!5857591 () Bool)

(assert (=> b!5857591 true))

(declare-fun b!5857571 () Bool)

(declare-fun res!2465245 () Bool)

(declare-fun e!3591710 () Bool)

(assert (=> b!5857571 (=> (not res!2465245) (not e!3591710))))

(declare-datatypes ((C!32118 0))(
  ( (C!32119 (val!25761 Int)) )
))
(declare-datatypes ((Regex!15924 0))(
  ( (ElementMatch!15924 (c!1038857 C!32118)) (Concat!24769 (regOne!32360 Regex!15924) (regTwo!32360 Regex!15924)) (EmptyExpr!15924) (Star!15924 (reg!16253 Regex!15924)) (EmptyLang!15924) (Union!15924 (regOne!32361 Regex!15924) (regTwo!32361 Regex!15924)) )
))
(declare-fun r!7292 () Regex!15924)

(declare-datatypes ((List!64071 0))(
  ( (Nil!63947) (Cons!63947 (h!70395 Regex!15924) (t!377440 List!64071)) )
))
(declare-datatypes ((Context!10616 0))(
  ( (Context!10617 (exprs!5808 List!64071)) )
))
(declare-datatypes ((List!64072 0))(
  ( (Nil!63948) (Cons!63948 (h!70396 Context!10616) (t!377441 List!64072)) )
))
(declare-fun zl!343 () List!64072)

(declare-fun unfocusZipper!1666 (List!64072) Regex!15924)

(assert (=> b!5857571 (= res!2465245 (= r!7292 (unfocusZipper!1666 zl!343)))))

(declare-fun b!5857572 () Bool)

(declare-fun e!3591709 () Bool)

(declare-fun e!3591702 () Bool)

(assert (=> b!5857572 (= e!3591709 e!3591702)))

(declare-fun res!2465242 () Bool)

(assert (=> b!5857572 (=> res!2465242 e!3591702)))

(declare-datatypes ((List!64073 0))(
  ( (Nil!63949) (Cons!63949 (h!70397 C!32118) (t!377442 List!64073)) )
))
(declare-fun s!2326 () List!64073)

(declare-fun lt!2305047 () Bool)

(declare-fun lt!2305060 () Bool)

(declare-fun lt!2305048 () Bool)

(assert (=> b!5857572 (= res!2465242 (or (not (= lt!2305047 (or lt!2305048 lt!2305060))) (is-Nil!63949 s!2326)))))

(declare-fun matchRSpec!3025 (Regex!15924 List!64073) Bool)

(assert (=> b!5857572 (= lt!2305060 (matchRSpec!3025 (regTwo!32361 r!7292) s!2326))))

(declare-fun matchR!8107 (Regex!15924 List!64073) Bool)

(assert (=> b!5857572 (= lt!2305060 (matchR!8107 (regTwo!32361 r!7292) s!2326))))

(declare-datatypes ((Unit!157119 0))(
  ( (Unit!157120) )
))
(declare-fun lt!2305056 () Unit!157119)

(declare-fun mainMatchTheorem!3025 (Regex!15924 List!64073) Unit!157119)

(assert (=> b!5857572 (= lt!2305056 (mainMatchTheorem!3025 (regTwo!32361 r!7292) s!2326))))

(assert (=> b!5857572 (= lt!2305048 (matchRSpec!3025 (regOne!32361 r!7292) s!2326))))

(assert (=> b!5857572 (= lt!2305048 (matchR!8107 (regOne!32361 r!7292) s!2326))))

(declare-fun lt!2305050 () Unit!157119)

(assert (=> b!5857572 (= lt!2305050 (mainMatchTheorem!3025 (regOne!32361 r!7292) s!2326))))

(declare-fun b!5857573 () Bool)

(declare-fun res!2465254 () Bool)

(assert (=> b!5857573 (=> res!2465254 e!3591709)))

(declare-fun generalisedUnion!1768 (List!64071) Regex!15924)

(declare-fun unfocusZipperList!1345 (List!64072) List!64071)

(assert (=> b!5857573 (= res!2465254 (not (= r!7292 (generalisedUnion!1768 (unfocusZipperList!1345 zl!343)))))))

(declare-fun b!5857574 () Bool)

(declare-fun res!2465255 () Bool)

(assert (=> b!5857574 (=> (not res!2465255) (not e!3591710))))

(declare-fun z!1189 () (Set Context!10616))

(declare-fun toList!9708 ((Set Context!10616)) List!64072)

(assert (=> b!5857574 (= res!2465255 (= (toList!9708 z!1189) zl!343))))

(declare-fun b!5857575 () Bool)

(assert (=> b!5857575 (= e!3591710 (not e!3591709))))

(declare-fun res!2465249 () Bool)

(assert (=> b!5857575 (=> res!2465249 e!3591709)))

(assert (=> b!5857575 (= res!2465249 (not (is-Cons!63948 zl!343)))))

(assert (=> b!5857575 (= lt!2305047 (matchRSpec!3025 r!7292 s!2326))))

(assert (=> b!5857575 (= lt!2305047 (matchR!8107 r!7292 s!2326))))

(declare-fun lt!2305062 () Unit!157119)

(assert (=> b!5857575 (= lt!2305062 (mainMatchTheorem!3025 r!7292 s!2326))))

(declare-fun b!5857576 () Bool)

(declare-fun e!3591699 () Bool)

(declare-fun tp!1620389 () Bool)

(assert (=> b!5857576 (= e!3591699 tp!1620389)))

(declare-fun b!5857577 () Bool)

(declare-fun e!3591704 () Bool)

(declare-fun tp!1620392 () Bool)

(declare-fun tp!1620385 () Bool)

(assert (=> b!5857577 (= e!3591704 (and tp!1620392 tp!1620385))))

(declare-fun e!3591700 () Bool)

(declare-fun tp!1620393 () Bool)

(declare-fun b!5857578 () Bool)

(declare-fun inv!83058 (Context!10616) Bool)

(assert (=> b!5857578 (= e!3591700 (and (inv!83058 (h!70396 zl!343)) e!3591699 tp!1620393))))

(declare-fun b!5857579 () Bool)

(declare-fun res!2465243 () Bool)

(assert (=> b!5857579 (=> res!2465243 e!3591709)))

(assert (=> b!5857579 (= res!2465243 (or (is-EmptyExpr!15924 r!7292) (is-EmptyLang!15924 r!7292) (is-ElementMatch!15924 r!7292) (not (is-Union!15924 r!7292))))))

(declare-fun b!5857580 () Bool)

(declare-fun tp!1620388 () Bool)

(declare-fun tp!1620391 () Bool)

(assert (=> b!5857580 (= e!3591704 (and tp!1620388 tp!1620391))))

(declare-fun b!5857581 () Bool)

(declare-fun res!2465241 () Bool)

(assert (=> b!5857581 (=> res!2465241 e!3591709)))

(assert (=> b!5857581 (= res!2465241 (not (is-Cons!63947 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5857583 () Bool)

(declare-fun res!2465248 () Bool)

(assert (=> b!5857583 (=> res!2465248 e!3591709)))

(declare-fun isEmpty!35807 (List!64072) Bool)

(assert (=> b!5857583 (= res!2465248 (not (isEmpty!35807 (t!377441 zl!343))))))

(declare-fun b!5857584 () Bool)

(declare-fun e!3591701 () Bool)

(declare-fun lt!2305051 () Context!10616)

(assert (=> b!5857584 (= e!3591701 (inv!83058 lt!2305051))))

(declare-fun lambda!320275 () Int)

(declare-fun lt!2305054 () (Set Context!10616))

(declare-fun lt!2305055 () Context!10616)

(declare-fun flatMap!1455 ((Set Context!10616) Int) (Set Context!10616))

(declare-fun derivationStepZipperUp!1116 (Context!10616 C!32118) (Set Context!10616))

(assert (=> b!5857584 (= (flatMap!1455 lt!2305054 lambda!320275) (derivationStepZipperUp!1116 lt!2305055 (h!70397 s!2326)))))

(declare-fun lt!2305061 () Unit!157119)

(declare-fun lemmaFlatMapOnSingletonSet!983 ((Set Context!10616) Context!10616 Int) Unit!157119)

(assert (=> b!5857584 (= lt!2305061 (lemmaFlatMapOnSingletonSet!983 lt!2305054 lt!2305055 lambda!320275))))

(declare-fun lt!2305059 () (Set Context!10616))

(assert (=> b!5857584 (= lt!2305059 (derivationStepZipperUp!1116 lt!2305051 (h!70397 s!2326)))))

(declare-fun lt!2305043 () (Set Context!10616))

(assert (=> b!5857584 (= lt!2305043 (derivationStepZipperUp!1116 lt!2305055 (h!70397 s!2326)))))

(assert (=> b!5857584 (= lt!2305051 (Context!10617 (Cons!63947 (regTwo!32361 r!7292) Nil!63947)))))

(assert (=> b!5857584 (= lt!2305054 (set.insert lt!2305055 (as set.empty (Set Context!10616))))))

(assert (=> b!5857584 (= lt!2305055 (Context!10617 (Cons!63947 (regOne!32361 r!7292) Nil!63947)))))

(declare-fun b!5857585 () Bool)

(declare-fun e!3591711 () Bool)

(assert (=> b!5857585 (= e!3591711 e!3591701)))

(declare-fun res!2465251 () Bool)

(assert (=> b!5857585 (=> res!2465251 e!3591701)))

(declare-fun lt!2305058 () Bool)

(declare-fun lt!2305049 () Bool)

(declare-fun lt!2305063 () Bool)

(assert (=> b!5857585 (= res!2465251 (or (not (= lt!2305049 lt!2305058)) (not (= lt!2305049 lt!2305063))))))

(assert (=> b!5857585 (= lt!2305058 lt!2305049)))

(declare-fun e!3591703 () Bool)

(assert (=> b!5857585 (= lt!2305049 e!3591703)))

(declare-fun res!2465250 () Bool)

(assert (=> b!5857585 (=> res!2465250 e!3591703)))

(declare-fun lt!2305053 () (Set Context!10616))

(declare-fun matchZipper!1990 ((Set Context!10616) List!64073) Bool)

(assert (=> b!5857585 (= res!2465250 (matchZipper!1990 lt!2305053 (t!377442 s!2326)))))

(declare-fun lt!2305042 () (Set Context!10616))

(declare-fun lt!2305045 () Unit!157119)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!825 ((Set Context!10616) (Set Context!10616) List!64073) Unit!157119)

(assert (=> b!5857585 (= lt!2305045 (lemmaZipperConcatMatchesSameAsBothZippers!825 lt!2305053 lt!2305042 (t!377442 s!2326)))))

(declare-fun b!5857586 () Bool)

(declare-fun e!3591705 () Bool)

(assert (=> b!5857586 (= e!3591702 e!3591705)))

(declare-fun res!2465246 () Bool)

(assert (=> b!5857586 (=> res!2465246 e!3591705)))

(declare-fun lt!2305052 () (Set Context!10616))

(declare-fun lt!2305046 () (Set Context!10616))

(assert (=> b!5857586 (= res!2465246 (not (= lt!2305052 lt!2305046)))))

(declare-fun lt!2305057 () Context!10616)

(declare-fun derivationStepZipperDown!1190 (Regex!15924 Context!10616 C!32118) (Set Context!10616))

(assert (=> b!5857586 (= lt!2305046 (derivationStepZipperDown!1190 r!7292 lt!2305057 (h!70397 s!2326)))))

(assert (=> b!5857586 (= lt!2305057 (Context!10617 Nil!63947))))

(assert (=> b!5857586 (= lt!2305052 (derivationStepZipperUp!1116 (Context!10617 (Cons!63947 r!7292 Nil!63947)) (h!70397 s!2326)))))

(declare-fun setElem!39707 () Context!10616)

(declare-fun e!3591706 () Bool)

(declare-fun tp!1620390 () Bool)

(declare-fun setNonEmpty!39707 () Bool)

(declare-fun setRes!39707 () Bool)

(assert (=> setNonEmpty!39707 (= setRes!39707 (and tp!1620390 (inv!83058 setElem!39707) e!3591706))))

(declare-fun setRest!39707 () (Set Context!10616))

(assert (=> setNonEmpty!39707 (= z!1189 (set.union (set.insert setElem!39707 (as set.empty (Set Context!10616))) setRest!39707))))

(declare-fun b!5857587 () Bool)

(declare-fun e!3591707 () Bool)

(assert (=> b!5857587 (= e!3591705 e!3591707)))

(declare-fun res!2465256 () Bool)

(assert (=> b!5857587 (=> res!2465256 e!3591707)))

(declare-fun lt!2305041 () (Set Context!10616))

(assert (=> b!5857587 (= res!2465256 (not (= lt!2305046 lt!2305041)))))

(assert (=> b!5857587 (= lt!2305041 (set.union lt!2305053 lt!2305042))))

(assert (=> b!5857587 (= lt!2305042 (derivationStepZipperDown!1190 (regTwo!32361 r!7292) lt!2305057 (h!70397 s!2326)))))

(assert (=> b!5857587 (= lt!2305053 (derivationStepZipperDown!1190 (regOne!32361 r!7292) lt!2305057 (h!70397 s!2326)))))

(declare-fun b!5857588 () Bool)

(assert (=> b!5857588 (= e!3591703 (matchZipper!1990 lt!2305042 (t!377442 s!2326)))))

(declare-fun b!5857589 () Bool)

(declare-fun tp_is_empty!41101 () Bool)

(assert (=> b!5857589 (= e!3591704 tp_is_empty!41101)))

(declare-fun b!5857590 () Bool)

(declare-fun tp!1620387 () Bool)

(assert (=> b!5857590 (= e!3591704 tp!1620387)))

(declare-fun e!3591698 () Bool)

(assert (=> b!5857591 (= e!3591707 e!3591698)))

(declare-fun res!2465253 () Bool)

(assert (=> b!5857591 (=> res!2465253 e!3591698)))

(declare-fun derivationStepZipper!1923 ((Set Context!10616) C!32118) (Set Context!10616))

(assert (=> b!5857591 (= res!2465253 (not (= (derivationStepZipper!1923 z!1189 (h!70397 s!2326)) lt!2305041)))))

(assert (=> b!5857591 (= (flatMap!1455 z!1189 lambda!320275) (derivationStepZipperUp!1116 (h!70396 zl!343) (h!70397 s!2326)))))

(declare-fun lt!2305044 () Unit!157119)

(assert (=> b!5857591 (= lt!2305044 (lemmaFlatMapOnSingletonSet!983 z!1189 (h!70396 zl!343) lambda!320275))))

(declare-fun b!5857592 () Bool)

(assert (=> b!5857592 (= e!3591698 e!3591711)))

(declare-fun res!2465247 () Bool)

(assert (=> b!5857592 (=> res!2465247 e!3591711)))

(assert (=> b!5857592 (= res!2465247 (not (= lt!2305058 lt!2305063)))))

(assert (=> b!5857592 (= lt!2305063 (matchZipper!1990 z!1189 s!2326))))

(assert (=> b!5857592 (= lt!2305058 (matchZipper!1990 lt!2305041 (t!377442 s!2326)))))

(declare-fun b!5857593 () Bool)

(declare-fun res!2465244 () Bool)

(assert (=> b!5857593 (=> res!2465244 e!3591709)))

(declare-fun generalisedConcat!1521 (List!64071) Regex!15924)

(assert (=> b!5857593 (= res!2465244 (not (= r!7292 (generalisedConcat!1521 (exprs!5808 (h!70396 zl!343))))))))

(declare-fun b!5857582 () Bool)

(declare-fun e!3591708 () Bool)

(declare-fun tp!1620394 () Bool)

(assert (=> b!5857582 (= e!3591708 (and tp_is_empty!41101 tp!1620394))))

(declare-fun res!2465252 () Bool)

(assert (=> start!599186 (=> (not res!2465252) (not e!3591710))))

(declare-fun validRegex!7660 (Regex!15924) Bool)

(assert (=> start!599186 (= res!2465252 (validRegex!7660 r!7292))))

(assert (=> start!599186 e!3591710))

(assert (=> start!599186 e!3591704))

(declare-fun condSetEmpty!39707 () Bool)

(assert (=> start!599186 (= condSetEmpty!39707 (= z!1189 (as set.empty (Set Context!10616))))))

(assert (=> start!599186 setRes!39707))

(assert (=> start!599186 e!3591700))

(assert (=> start!599186 e!3591708))

(declare-fun b!5857594 () Bool)

(declare-fun tp!1620386 () Bool)

(assert (=> b!5857594 (= e!3591706 tp!1620386)))

(declare-fun setIsEmpty!39707 () Bool)

(assert (=> setIsEmpty!39707 setRes!39707))

(assert (= (and start!599186 res!2465252) b!5857574))

(assert (= (and b!5857574 res!2465255) b!5857571))

(assert (= (and b!5857571 res!2465245) b!5857575))

(assert (= (and b!5857575 (not res!2465249)) b!5857583))

(assert (= (and b!5857583 (not res!2465248)) b!5857593))

(assert (= (and b!5857593 (not res!2465244)) b!5857581))

(assert (= (and b!5857581 (not res!2465241)) b!5857573))

(assert (= (and b!5857573 (not res!2465254)) b!5857579))

(assert (= (and b!5857579 (not res!2465243)) b!5857572))

(assert (= (and b!5857572 (not res!2465242)) b!5857586))

(assert (= (and b!5857586 (not res!2465246)) b!5857587))

(assert (= (and b!5857587 (not res!2465256)) b!5857591))

(assert (= (and b!5857591 (not res!2465253)) b!5857592))

(assert (= (and b!5857592 (not res!2465247)) b!5857585))

(assert (= (and b!5857585 (not res!2465250)) b!5857588))

(assert (= (and b!5857585 (not res!2465251)) b!5857584))

(assert (= (and start!599186 (is-ElementMatch!15924 r!7292)) b!5857589))

(assert (= (and start!599186 (is-Concat!24769 r!7292)) b!5857580))

(assert (= (and start!599186 (is-Star!15924 r!7292)) b!5857590))

(assert (= (and start!599186 (is-Union!15924 r!7292)) b!5857577))

(assert (= (and start!599186 condSetEmpty!39707) setIsEmpty!39707))

(assert (= (and start!599186 (not condSetEmpty!39707)) setNonEmpty!39707))

(assert (= setNonEmpty!39707 b!5857594))

(assert (= b!5857578 b!5857576))

(assert (= (and start!599186 (is-Cons!63948 zl!343)) b!5857578))

(assert (= (and start!599186 (is-Cons!63949 s!2326)) b!5857582))

(declare-fun m!6775512 () Bool)

(assert (=> b!5857587 m!6775512))

(declare-fun m!6775514 () Bool)

(assert (=> b!5857587 m!6775514))

(declare-fun m!6775516 () Bool)

(assert (=> b!5857575 m!6775516))

(declare-fun m!6775518 () Bool)

(assert (=> b!5857575 m!6775518))

(declare-fun m!6775520 () Bool)

(assert (=> b!5857575 m!6775520))

(declare-fun m!6775522 () Bool)

(assert (=> b!5857588 m!6775522))

(declare-fun m!6775524 () Bool)

(assert (=> b!5857585 m!6775524))

(declare-fun m!6775526 () Bool)

(assert (=> b!5857585 m!6775526))

(declare-fun m!6775528 () Bool)

(assert (=> b!5857578 m!6775528))

(declare-fun m!6775530 () Bool)

(assert (=> setNonEmpty!39707 m!6775530))

(declare-fun m!6775532 () Bool)

(assert (=> b!5857572 m!6775532))

(declare-fun m!6775534 () Bool)

(assert (=> b!5857572 m!6775534))

(declare-fun m!6775536 () Bool)

(assert (=> b!5857572 m!6775536))

(declare-fun m!6775538 () Bool)

(assert (=> b!5857572 m!6775538))

(declare-fun m!6775540 () Bool)

(assert (=> b!5857572 m!6775540))

(declare-fun m!6775542 () Bool)

(assert (=> b!5857572 m!6775542))

(declare-fun m!6775544 () Bool)

(assert (=> b!5857584 m!6775544))

(declare-fun m!6775546 () Bool)

(assert (=> b!5857584 m!6775546))

(declare-fun m!6775548 () Bool)

(assert (=> b!5857584 m!6775548))

(declare-fun m!6775550 () Bool)

(assert (=> b!5857584 m!6775550))

(declare-fun m!6775552 () Bool)

(assert (=> b!5857584 m!6775552))

(declare-fun m!6775554 () Bool)

(assert (=> b!5857584 m!6775554))

(declare-fun m!6775556 () Bool)

(assert (=> b!5857583 m!6775556))

(declare-fun m!6775558 () Bool)

(assert (=> start!599186 m!6775558))

(declare-fun m!6775560 () Bool)

(assert (=> b!5857592 m!6775560))

(declare-fun m!6775562 () Bool)

(assert (=> b!5857592 m!6775562))

(declare-fun m!6775564 () Bool)

(assert (=> b!5857573 m!6775564))

(assert (=> b!5857573 m!6775564))

(declare-fun m!6775566 () Bool)

(assert (=> b!5857573 m!6775566))

(declare-fun m!6775568 () Bool)

(assert (=> b!5857593 m!6775568))

(declare-fun m!6775570 () Bool)

(assert (=> b!5857591 m!6775570))

(declare-fun m!6775572 () Bool)

(assert (=> b!5857591 m!6775572))

(declare-fun m!6775574 () Bool)

(assert (=> b!5857591 m!6775574))

(declare-fun m!6775576 () Bool)

(assert (=> b!5857591 m!6775576))

(declare-fun m!6775578 () Bool)

(assert (=> b!5857574 m!6775578))

(declare-fun m!6775580 () Bool)

(assert (=> b!5857586 m!6775580))

(declare-fun m!6775582 () Bool)

(assert (=> b!5857586 m!6775582))

(declare-fun m!6775584 () Bool)

(assert (=> b!5857571 m!6775584))

(push 1)

(assert (not b!5857591))

(assert (not b!5857584))

(assert (not b!5857577))

(assert (not b!5857586))

(assert tp_is_empty!41101)

(assert (not b!5857573))

(assert (not b!5857587))

(assert (not b!5857588))

(assert (not setNonEmpty!39707))

(assert (not start!599186))

(assert (not b!5857585))

(assert (not b!5857592))

(assert (not b!5857583))

(assert (not b!5857572))

(assert (not b!5857594))

(assert (not b!5857590))

(assert (not b!5857582))

(assert (not b!5857576))

(assert (not b!5857574))

(assert (not b!5857575))

(assert (not b!5857580))

(assert (not b!5857578))

(assert (not b!5857593))

(assert (not b!5857571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1839594 () Bool)

(declare-fun c!1038866 () Bool)

(declare-fun isEmpty!35809 (List!64073) Bool)

(assert (=> d!1839594 (= c!1038866 (isEmpty!35809 s!2326))))

(declare-fun e!3591756 () Bool)

(assert (=> d!1839594 (= (matchZipper!1990 z!1189 s!2326) e!3591756)))

(declare-fun b!5857675 () Bool)

(declare-fun nullableZipper!1763 ((Set Context!10616)) Bool)

(assert (=> b!5857675 (= e!3591756 (nullableZipper!1763 z!1189))))

(declare-fun b!5857676 () Bool)

(declare-fun head!12402 (List!64073) C!32118)

(declare-fun tail!11487 (List!64073) List!64073)

(assert (=> b!5857676 (= e!3591756 (matchZipper!1990 (derivationStepZipper!1923 z!1189 (head!12402 s!2326)) (tail!11487 s!2326)))))

(assert (= (and d!1839594 c!1038866) b!5857675))

(assert (= (and d!1839594 (not c!1038866)) b!5857676))

(declare-fun m!6775660 () Bool)

(assert (=> d!1839594 m!6775660))

(declare-fun m!6775662 () Bool)

(assert (=> b!5857675 m!6775662))

(declare-fun m!6775664 () Bool)

(assert (=> b!5857676 m!6775664))

(assert (=> b!5857676 m!6775664))

(declare-fun m!6775666 () Bool)

(assert (=> b!5857676 m!6775666))

(declare-fun m!6775668 () Bool)

(assert (=> b!5857676 m!6775668))

(assert (=> b!5857676 m!6775666))

(assert (=> b!5857676 m!6775668))

(declare-fun m!6775670 () Bool)

(assert (=> b!5857676 m!6775670))

(assert (=> b!5857592 d!1839594))

(declare-fun d!1839596 () Bool)

(declare-fun c!1038867 () Bool)

(assert (=> d!1839596 (= c!1038867 (isEmpty!35809 (t!377442 s!2326)))))

(declare-fun e!3591757 () Bool)

(assert (=> d!1839596 (= (matchZipper!1990 lt!2305041 (t!377442 s!2326)) e!3591757)))

(declare-fun b!5857677 () Bool)

(assert (=> b!5857677 (= e!3591757 (nullableZipper!1763 lt!2305041))))

(declare-fun b!5857678 () Bool)

(assert (=> b!5857678 (= e!3591757 (matchZipper!1990 (derivationStepZipper!1923 lt!2305041 (head!12402 (t!377442 s!2326))) (tail!11487 (t!377442 s!2326))))))

(assert (= (and d!1839596 c!1038867) b!5857677))

(assert (= (and d!1839596 (not c!1038867)) b!5857678))

(declare-fun m!6775672 () Bool)

(assert (=> d!1839596 m!6775672))

(declare-fun m!6775674 () Bool)

(assert (=> b!5857677 m!6775674))

(declare-fun m!6775676 () Bool)

(assert (=> b!5857678 m!6775676))

(assert (=> b!5857678 m!6775676))

(declare-fun m!6775678 () Bool)

(assert (=> b!5857678 m!6775678))

(declare-fun m!6775680 () Bool)

(assert (=> b!5857678 m!6775680))

(assert (=> b!5857678 m!6775678))

(assert (=> b!5857678 m!6775680))

(declare-fun m!6775682 () Bool)

(assert (=> b!5857678 m!6775682))

(assert (=> b!5857592 d!1839596))

(declare-fun b!5857718 () Bool)

(assert (=> b!5857718 true))

(assert (=> b!5857718 true))

(declare-fun bs!1380160 () Bool)

(declare-fun b!5857713 () Bool)

(assert (= bs!1380160 (and b!5857713 b!5857718)))

(declare-fun lambda!320286 () Int)

(declare-fun lambda!320285 () Int)

(assert (=> bs!1380160 (not (= lambda!320286 lambda!320285))))

(assert (=> b!5857713 true))

(assert (=> b!5857713 true))

(declare-fun b!5857711 () Bool)

(declare-fun e!3591782 () Bool)

(declare-fun e!3591777 () Bool)

(assert (=> b!5857711 (= e!3591782 e!3591777)))

(declare-fun c!1038879 () Bool)

(assert (=> b!5857711 (= c!1038879 (is-Star!15924 (regTwo!32361 r!7292)))))

(declare-fun bm!459030 () Bool)

(declare-fun call!459036 () Bool)

(declare-fun Exists!2996 (Int) Bool)

(assert (=> bm!459030 (= call!459036 (Exists!2996 (ite c!1038879 lambda!320285 lambda!320286)))))

(declare-fun b!5857712 () Bool)

(declare-fun c!1038877 () Bool)

(assert (=> b!5857712 (= c!1038877 (is-Union!15924 (regTwo!32361 r!7292)))))

(declare-fun e!3591779 () Bool)

(assert (=> b!5857712 (= e!3591779 e!3591782)))

(assert (=> b!5857713 (= e!3591777 call!459036)))

(declare-fun b!5857714 () Bool)

(declare-fun res!2465322 () Bool)

(declare-fun e!3591778 () Bool)

(assert (=> b!5857714 (=> res!2465322 e!3591778)))

(declare-fun call!459035 () Bool)

(assert (=> b!5857714 (= res!2465322 call!459035)))

(assert (=> b!5857714 (= e!3591777 e!3591778)))

(declare-fun b!5857716 () Bool)

(declare-fun e!3591776 () Bool)

(assert (=> b!5857716 (= e!3591776 (matchRSpec!3025 (regTwo!32361 (regTwo!32361 r!7292)) s!2326))))

(declare-fun bm!459031 () Bool)

(assert (=> bm!459031 (= call!459035 (isEmpty!35809 s!2326))))

(declare-fun b!5857717 () Bool)

(assert (=> b!5857717 (= e!3591779 (= s!2326 (Cons!63949 (c!1038857 (regTwo!32361 r!7292)) Nil!63949)))))

(assert (=> b!5857718 (= e!3591778 call!459036)))

(declare-fun b!5857719 () Bool)

(assert (=> b!5857719 (= e!3591782 e!3591776)))

(declare-fun res!2465323 () Bool)

(assert (=> b!5857719 (= res!2465323 (matchRSpec!3025 (regOne!32361 (regTwo!32361 r!7292)) s!2326))))

(assert (=> b!5857719 (=> res!2465323 e!3591776)))

(declare-fun b!5857715 () Bool)

(declare-fun c!1038878 () Bool)

(assert (=> b!5857715 (= c!1038878 (is-ElementMatch!15924 (regTwo!32361 r!7292)))))

(declare-fun e!3591781 () Bool)

(assert (=> b!5857715 (= e!3591781 e!3591779)))

(declare-fun d!1839598 () Bool)

(declare-fun c!1038876 () Bool)

(assert (=> d!1839598 (= c!1038876 (is-EmptyExpr!15924 (regTwo!32361 r!7292)))))

(declare-fun e!3591780 () Bool)

(assert (=> d!1839598 (= (matchRSpec!3025 (regTwo!32361 r!7292) s!2326) e!3591780)))

(declare-fun b!5857720 () Bool)

(assert (=> b!5857720 (= e!3591780 e!3591781)))

(declare-fun res!2465321 () Bool)

(assert (=> b!5857720 (= res!2465321 (not (is-EmptyLang!15924 (regTwo!32361 r!7292))))))

(assert (=> b!5857720 (=> (not res!2465321) (not e!3591781))))

(declare-fun b!5857721 () Bool)

(assert (=> b!5857721 (= e!3591780 call!459035)))

(assert (= (and d!1839598 c!1038876) b!5857721))

(assert (= (and d!1839598 (not c!1038876)) b!5857720))

(assert (= (and b!5857720 res!2465321) b!5857715))

(assert (= (and b!5857715 c!1038878) b!5857717))

(assert (= (and b!5857715 (not c!1038878)) b!5857712))

(assert (= (and b!5857712 c!1038877) b!5857719))

(assert (= (and b!5857712 (not c!1038877)) b!5857711))

(assert (= (and b!5857719 (not res!2465323)) b!5857716))

(assert (= (and b!5857711 c!1038879) b!5857714))

(assert (= (and b!5857711 (not c!1038879)) b!5857713))

(assert (= (and b!5857714 (not res!2465322)) b!5857718))

(assert (= (or b!5857718 b!5857713) bm!459030))

(assert (= (or b!5857721 b!5857714) bm!459031))

(declare-fun m!6775684 () Bool)

(assert (=> bm!459030 m!6775684))

(declare-fun m!6775686 () Bool)

(assert (=> b!5857716 m!6775686))

(assert (=> bm!459031 m!6775660))

(declare-fun m!6775688 () Bool)

(assert (=> b!5857719 m!6775688))

(assert (=> b!5857572 d!1839598))

(declare-fun d!1839600 () Bool)

(assert (=> d!1839600 (= (matchR!8107 (regOne!32361 r!7292) s!2326) (matchRSpec!3025 (regOne!32361 r!7292) s!2326))))

(declare-fun lt!2305135 () Unit!157119)

(declare-fun choose!44412 (Regex!15924 List!64073) Unit!157119)

(assert (=> d!1839600 (= lt!2305135 (choose!44412 (regOne!32361 r!7292) s!2326))))

(assert (=> d!1839600 (validRegex!7660 (regOne!32361 r!7292))))

(assert (=> d!1839600 (= (mainMatchTheorem!3025 (regOne!32361 r!7292) s!2326) lt!2305135)))

(declare-fun bs!1380161 () Bool)

(assert (= bs!1380161 d!1839600))

(assert (=> bs!1380161 m!6775542))

(assert (=> bs!1380161 m!6775538))

(declare-fun m!6775690 () Bool)

(assert (=> bs!1380161 m!6775690))

(declare-fun m!6775692 () Bool)

(assert (=> bs!1380161 m!6775692))

(assert (=> b!5857572 d!1839600))

(declare-fun b!5857754 () Bool)

(declare-fun res!2465341 () Bool)

(declare-fun e!3591799 () Bool)

(assert (=> b!5857754 (=> (not res!2465341) (not e!3591799))))

(declare-fun call!459039 () Bool)

(assert (=> b!5857754 (= res!2465341 (not call!459039))))

(declare-fun b!5857755 () Bool)

(declare-fun e!3591800 () Bool)

(declare-fun nullable!5924 (Regex!15924) Bool)

(assert (=> b!5857755 (= e!3591800 (nullable!5924 (regTwo!32361 r!7292)))))

(declare-fun b!5857756 () Bool)

(declare-fun res!2465344 () Bool)

(declare-fun e!3591803 () Bool)

(assert (=> b!5857756 (=> res!2465344 e!3591803)))

(assert (=> b!5857756 (= res!2465344 (not (is-ElementMatch!15924 (regTwo!32361 r!7292))))))

(declare-fun e!3591797 () Bool)

(assert (=> b!5857756 (= e!3591797 e!3591803)))

(declare-fun b!5857757 () Bool)

(declare-fun e!3591802 () Bool)

(assert (=> b!5857757 (= e!3591802 (not (= (head!12402 s!2326) (c!1038857 (regTwo!32361 r!7292)))))))

(declare-fun b!5857759 () Bool)

(declare-fun res!2465347 () Bool)

(assert (=> b!5857759 (=> res!2465347 e!3591802)))

(assert (=> b!5857759 (= res!2465347 (not (isEmpty!35809 (tail!11487 s!2326))))))

(declare-fun b!5857760 () Bool)

(declare-fun e!3591798 () Bool)

(assert (=> b!5857760 (= e!3591798 e!3591802)))

(declare-fun res!2465342 () Bool)

(assert (=> b!5857760 (=> res!2465342 e!3591802)))

(assert (=> b!5857760 (= res!2465342 call!459039)))

(declare-fun b!5857761 () Bool)

(assert (=> b!5857761 (= e!3591799 (= (head!12402 s!2326) (c!1038857 (regTwo!32361 r!7292))))))

(declare-fun b!5857762 () Bool)

(declare-fun lt!2305138 () Bool)

(assert (=> b!5857762 (= e!3591797 (not lt!2305138))))

(declare-fun b!5857763 () Bool)

(declare-fun e!3591801 () Bool)

(assert (=> b!5857763 (= e!3591801 (= lt!2305138 call!459039))))

(declare-fun b!5857764 () Bool)

(declare-fun res!2465346 () Bool)

(assert (=> b!5857764 (=> res!2465346 e!3591803)))

(assert (=> b!5857764 (= res!2465346 e!3591799)))

(declare-fun res!2465340 () Bool)

(assert (=> b!5857764 (=> (not res!2465340) (not e!3591799))))

(assert (=> b!5857764 (= res!2465340 lt!2305138)))

(declare-fun b!5857765 () Bool)

(assert (=> b!5857765 (= e!3591801 e!3591797)))

(declare-fun c!1038886 () Bool)

(assert (=> b!5857765 (= c!1038886 (is-EmptyLang!15924 (regTwo!32361 r!7292)))))

(declare-fun b!5857766 () Bool)

(declare-fun derivativeStep!4662 (Regex!15924 C!32118) Regex!15924)

(assert (=> b!5857766 (= e!3591800 (matchR!8107 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326)) (tail!11487 s!2326)))))

(declare-fun d!1839602 () Bool)

(assert (=> d!1839602 e!3591801))

(declare-fun c!1038887 () Bool)

(assert (=> d!1839602 (= c!1038887 (is-EmptyExpr!15924 (regTwo!32361 r!7292)))))

(assert (=> d!1839602 (= lt!2305138 e!3591800)))

(declare-fun c!1038888 () Bool)

(assert (=> d!1839602 (= c!1038888 (isEmpty!35809 s!2326))))

(assert (=> d!1839602 (validRegex!7660 (regTwo!32361 r!7292))))

(assert (=> d!1839602 (= (matchR!8107 (regTwo!32361 r!7292) s!2326) lt!2305138)))

(declare-fun b!5857758 () Bool)

(declare-fun res!2465345 () Bool)

(assert (=> b!5857758 (=> (not res!2465345) (not e!3591799))))

(assert (=> b!5857758 (= res!2465345 (isEmpty!35809 (tail!11487 s!2326)))))

(declare-fun bm!459034 () Bool)

(assert (=> bm!459034 (= call!459039 (isEmpty!35809 s!2326))))

(declare-fun b!5857767 () Bool)

(assert (=> b!5857767 (= e!3591803 e!3591798)))

(declare-fun res!2465343 () Bool)

(assert (=> b!5857767 (=> (not res!2465343) (not e!3591798))))

(assert (=> b!5857767 (= res!2465343 (not lt!2305138))))

(assert (= (and d!1839602 c!1038888) b!5857755))

(assert (= (and d!1839602 (not c!1038888)) b!5857766))

(assert (= (and d!1839602 c!1038887) b!5857763))

(assert (= (and d!1839602 (not c!1038887)) b!5857765))

(assert (= (and b!5857765 c!1038886) b!5857762))

(assert (= (and b!5857765 (not c!1038886)) b!5857756))

(assert (= (and b!5857756 (not res!2465344)) b!5857764))

(assert (= (and b!5857764 res!2465340) b!5857754))

(assert (= (and b!5857754 res!2465341) b!5857758))

(assert (= (and b!5857758 res!2465345) b!5857761))

(assert (= (and b!5857764 (not res!2465346)) b!5857767))

(assert (= (and b!5857767 res!2465343) b!5857760))

(assert (= (and b!5857760 (not res!2465342)) b!5857759))

(assert (= (and b!5857759 (not res!2465347)) b!5857757))

(assert (= (or b!5857763 b!5857754 b!5857760) bm!459034))

(assert (=> bm!459034 m!6775660))

(declare-fun m!6775694 () Bool)

(assert (=> b!5857755 m!6775694))

(assert (=> b!5857757 m!6775664))

(assert (=> b!5857766 m!6775664))

(assert (=> b!5857766 m!6775664))

(declare-fun m!6775696 () Bool)

(assert (=> b!5857766 m!6775696))

(assert (=> b!5857766 m!6775668))

(assert (=> b!5857766 m!6775696))

(assert (=> b!5857766 m!6775668))

(declare-fun m!6775698 () Bool)

(assert (=> b!5857766 m!6775698))

(assert (=> b!5857759 m!6775668))

(assert (=> b!5857759 m!6775668))

(declare-fun m!6775700 () Bool)

(assert (=> b!5857759 m!6775700))

(assert (=> d!1839602 m!6775660))

(declare-fun m!6775702 () Bool)

(assert (=> d!1839602 m!6775702))

(assert (=> b!5857761 m!6775664))

(assert (=> b!5857758 m!6775668))

(assert (=> b!5857758 m!6775668))

(assert (=> b!5857758 m!6775700))

(assert (=> b!5857572 d!1839602))

(declare-fun d!1839604 () Bool)

(assert (=> d!1839604 (= (matchR!8107 (regTwo!32361 r!7292) s!2326) (matchRSpec!3025 (regTwo!32361 r!7292) s!2326))))

(declare-fun lt!2305139 () Unit!157119)

(assert (=> d!1839604 (= lt!2305139 (choose!44412 (regTwo!32361 r!7292) s!2326))))

(assert (=> d!1839604 (validRegex!7660 (regTwo!32361 r!7292))))

(assert (=> d!1839604 (= (mainMatchTheorem!3025 (regTwo!32361 r!7292) s!2326) lt!2305139)))

(declare-fun bs!1380162 () Bool)

(assert (= bs!1380162 d!1839604))

(assert (=> bs!1380162 m!6775536))

(assert (=> bs!1380162 m!6775532))

(declare-fun m!6775704 () Bool)

(assert (=> bs!1380162 m!6775704))

(assert (=> bs!1380162 m!6775702))

(assert (=> b!5857572 d!1839604))

(declare-fun bs!1380163 () Bool)

(declare-fun b!5857775 () Bool)

(assert (= bs!1380163 (and b!5857775 b!5857718)))

(declare-fun lambda!320287 () Int)

(assert (=> bs!1380163 (= (and (= (reg!16253 (regOne!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292))) (= (regOne!32361 r!7292) (regTwo!32361 r!7292))) (= lambda!320287 lambda!320285))))

(declare-fun bs!1380164 () Bool)

(assert (= bs!1380164 (and b!5857775 b!5857713)))

(assert (=> bs!1380164 (not (= lambda!320287 lambda!320286))))

(assert (=> b!5857775 true))

(assert (=> b!5857775 true))

(declare-fun bs!1380165 () Bool)

(declare-fun b!5857770 () Bool)

(assert (= bs!1380165 (and b!5857770 b!5857718)))

(declare-fun lambda!320288 () Int)

(assert (=> bs!1380165 (not (= lambda!320288 lambda!320285))))

(declare-fun bs!1380166 () Bool)

(assert (= bs!1380166 (and b!5857770 b!5857713)))

(assert (=> bs!1380166 (= (and (= (regOne!32360 (regOne!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292))) (= (regTwo!32360 (regOne!32361 r!7292)) (regTwo!32360 (regTwo!32361 r!7292)))) (= lambda!320288 lambda!320286))))

(declare-fun bs!1380167 () Bool)

(assert (= bs!1380167 (and b!5857770 b!5857775)))

(assert (=> bs!1380167 (not (= lambda!320288 lambda!320287))))

(assert (=> b!5857770 true))

(assert (=> b!5857770 true))

(declare-fun b!5857768 () Bool)

(declare-fun e!3591810 () Bool)

(declare-fun e!3591805 () Bool)

(assert (=> b!5857768 (= e!3591810 e!3591805)))

(declare-fun c!1038892 () Bool)

(assert (=> b!5857768 (= c!1038892 (is-Star!15924 (regOne!32361 r!7292)))))

(declare-fun call!459041 () Bool)

(declare-fun bm!459035 () Bool)

(assert (=> bm!459035 (= call!459041 (Exists!2996 (ite c!1038892 lambda!320287 lambda!320288)))))

(declare-fun b!5857769 () Bool)

(declare-fun c!1038890 () Bool)

(assert (=> b!5857769 (= c!1038890 (is-Union!15924 (regOne!32361 r!7292)))))

(declare-fun e!3591807 () Bool)

(assert (=> b!5857769 (= e!3591807 e!3591810)))

(assert (=> b!5857770 (= e!3591805 call!459041)))

(declare-fun b!5857771 () Bool)

(declare-fun res!2465349 () Bool)

(declare-fun e!3591806 () Bool)

(assert (=> b!5857771 (=> res!2465349 e!3591806)))

(declare-fun call!459040 () Bool)

(assert (=> b!5857771 (= res!2465349 call!459040)))

(assert (=> b!5857771 (= e!3591805 e!3591806)))

(declare-fun b!5857773 () Bool)

(declare-fun e!3591804 () Bool)

(assert (=> b!5857773 (= e!3591804 (matchRSpec!3025 (regTwo!32361 (regOne!32361 r!7292)) s!2326))))

(declare-fun bm!459036 () Bool)

(assert (=> bm!459036 (= call!459040 (isEmpty!35809 s!2326))))

(declare-fun b!5857774 () Bool)

(assert (=> b!5857774 (= e!3591807 (= s!2326 (Cons!63949 (c!1038857 (regOne!32361 r!7292)) Nil!63949)))))

(assert (=> b!5857775 (= e!3591806 call!459041)))

(declare-fun b!5857776 () Bool)

(assert (=> b!5857776 (= e!3591810 e!3591804)))

(declare-fun res!2465350 () Bool)

(assert (=> b!5857776 (= res!2465350 (matchRSpec!3025 (regOne!32361 (regOne!32361 r!7292)) s!2326))))

(assert (=> b!5857776 (=> res!2465350 e!3591804)))

(declare-fun b!5857772 () Bool)

(declare-fun c!1038891 () Bool)

(assert (=> b!5857772 (= c!1038891 (is-ElementMatch!15924 (regOne!32361 r!7292)))))

(declare-fun e!3591809 () Bool)

(assert (=> b!5857772 (= e!3591809 e!3591807)))

(declare-fun d!1839606 () Bool)

(declare-fun c!1038889 () Bool)

(assert (=> d!1839606 (= c!1038889 (is-EmptyExpr!15924 (regOne!32361 r!7292)))))

(declare-fun e!3591808 () Bool)

(assert (=> d!1839606 (= (matchRSpec!3025 (regOne!32361 r!7292) s!2326) e!3591808)))

(declare-fun b!5857777 () Bool)

(assert (=> b!5857777 (= e!3591808 e!3591809)))

(declare-fun res!2465348 () Bool)

(assert (=> b!5857777 (= res!2465348 (not (is-EmptyLang!15924 (regOne!32361 r!7292))))))

(assert (=> b!5857777 (=> (not res!2465348) (not e!3591809))))

(declare-fun b!5857778 () Bool)

(assert (=> b!5857778 (= e!3591808 call!459040)))

(assert (= (and d!1839606 c!1038889) b!5857778))

(assert (= (and d!1839606 (not c!1038889)) b!5857777))

(assert (= (and b!5857777 res!2465348) b!5857772))

(assert (= (and b!5857772 c!1038891) b!5857774))

(assert (= (and b!5857772 (not c!1038891)) b!5857769))

(assert (= (and b!5857769 c!1038890) b!5857776))

(assert (= (and b!5857769 (not c!1038890)) b!5857768))

(assert (= (and b!5857776 (not res!2465350)) b!5857773))

(assert (= (and b!5857768 c!1038892) b!5857771))

(assert (= (and b!5857768 (not c!1038892)) b!5857770))

(assert (= (and b!5857771 (not res!2465349)) b!5857775))

(assert (= (or b!5857775 b!5857770) bm!459035))

(assert (= (or b!5857778 b!5857771) bm!459036))

(declare-fun m!6775706 () Bool)

(assert (=> bm!459035 m!6775706))

(declare-fun m!6775708 () Bool)

(assert (=> b!5857773 m!6775708))

(assert (=> bm!459036 m!6775660))

(declare-fun m!6775710 () Bool)

(assert (=> b!5857776 m!6775710))

(assert (=> b!5857572 d!1839606))

(declare-fun b!5857779 () Bool)

(declare-fun res!2465352 () Bool)

(declare-fun e!3591813 () Bool)

(assert (=> b!5857779 (=> (not res!2465352) (not e!3591813))))

(declare-fun call!459042 () Bool)

(assert (=> b!5857779 (= res!2465352 (not call!459042))))

(declare-fun b!5857780 () Bool)

(declare-fun e!3591814 () Bool)

(assert (=> b!5857780 (= e!3591814 (nullable!5924 (regOne!32361 r!7292)))))

(declare-fun b!5857781 () Bool)

(declare-fun res!2465355 () Bool)

(declare-fun e!3591817 () Bool)

(assert (=> b!5857781 (=> res!2465355 e!3591817)))

(assert (=> b!5857781 (= res!2465355 (not (is-ElementMatch!15924 (regOne!32361 r!7292))))))

(declare-fun e!3591811 () Bool)

(assert (=> b!5857781 (= e!3591811 e!3591817)))

(declare-fun b!5857782 () Bool)

(declare-fun e!3591816 () Bool)

(assert (=> b!5857782 (= e!3591816 (not (= (head!12402 s!2326) (c!1038857 (regOne!32361 r!7292)))))))

(declare-fun b!5857784 () Bool)

(declare-fun res!2465358 () Bool)

(assert (=> b!5857784 (=> res!2465358 e!3591816)))

(assert (=> b!5857784 (= res!2465358 (not (isEmpty!35809 (tail!11487 s!2326))))))

(declare-fun b!5857785 () Bool)

(declare-fun e!3591812 () Bool)

(assert (=> b!5857785 (= e!3591812 e!3591816)))

(declare-fun res!2465353 () Bool)

(assert (=> b!5857785 (=> res!2465353 e!3591816)))

(assert (=> b!5857785 (= res!2465353 call!459042)))

(declare-fun b!5857786 () Bool)

(assert (=> b!5857786 (= e!3591813 (= (head!12402 s!2326) (c!1038857 (regOne!32361 r!7292))))))

(declare-fun b!5857787 () Bool)

(declare-fun lt!2305140 () Bool)

(assert (=> b!5857787 (= e!3591811 (not lt!2305140))))

(declare-fun b!5857788 () Bool)

(declare-fun e!3591815 () Bool)

(assert (=> b!5857788 (= e!3591815 (= lt!2305140 call!459042))))

(declare-fun b!5857789 () Bool)

(declare-fun res!2465357 () Bool)

(assert (=> b!5857789 (=> res!2465357 e!3591817)))

(assert (=> b!5857789 (= res!2465357 e!3591813)))

(declare-fun res!2465351 () Bool)

(assert (=> b!5857789 (=> (not res!2465351) (not e!3591813))))

(assert (=> b!5857789 (= res!2465351 lt!2305140)))

(declare-fun b!5857790 () Bool)

(assert (=> b!5857790 (= e!3591815 e!3591811)))

(declare-fun c!1038893 () Bool)

(assert (=> b!5857790 (= c!1038893 (is-EmptyLang!15924 (regOne!32361 r!7292)))))

(declare-fun b!5857791 () Bool)

(assert (=> b!5857791 (= e!3591814 (matchR!8107 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326)) (tail!11487 s!2326)))))

(declare-fun d!1839608 () Bool)

(assert (=> d!1839608 e!3591815))

(declare-fun c!1038894 () Bool)

(assert (=> d!1839608 (= c!1038894 (is-EmptyExpr!15924 (regOne!32361 r!7292)))))

(assert (=> d!1839608 (= lt!2305140 e!3591814)))

(declare-fun c!1038895 () Bool)

(assert (=> d!1839608 (= c!1038895 (isEmpty!35809 s!2326))))

(assert (=> d!1839608 (validRegex!7660 (regOne!32361 r!7292))))

(assert (=> d!1839608 (= (matchR!8107 (regOne!32361 r!7292) s!2326) lt!2305140)))

(declare-fun b!5857783 () Bool)

(declare-fun res!2465356 () Bool)

(assert (=> b!5857783 (=> (not res!2465356) (not e!3591813))))

(assert (=> b!5857783 (= res!2465356 (isEmpty!35809 (tail!11487 s!2326)))))

(declare-fun bm!459037 () Bool)

(assert (=> bm!459037 (= call!459042 (isEmpty!35809 s!2326))))

(declare-fun b!5857792 () Bool)

(assert (=> b!5857792 (= e!3591817 e!3591812)))

(declare-fun res!2465354 () Bool)

(assert (=> b!5857792 (=> (not res!2465354) (not e!3591812))))

(assert (=> b!5857792 (= res!2465354 (not lt!2305140))))

(assert (= (and d!1839608 c!1038895) b!5857780))

(assert (= (and d!1839608 (not c!1038895)) b!5857791))

(assert (= (and d!1839608 c!1038894) b!5857788))

(assert (= (and d!1839608 (not c!1038894)) b!5857790))

(assert (= (and b!5857790 c!1038893) b!5857787))

(assert (= (and b!5857790 (not c!1038893)) b!5857781))

(assert (= (and b!5857781 (not res!2465355)) b!5857789))

(assert (= (and b!5857789 res!2465351) b!5857779))

(assert (= (and b!5857779 res!2465352) b!5857783))

(assert (= (and b!5857783 res!2465356) b!5857786))

(assert (= (and b!5857789 (not res!2465357)) b!5857792))

(assert (= (and b!5857792 res!2465354) b!5857785))

(assert (= (and b!5857785 (not res!2465353)) b!5857784))

(assert (= (and b!5857784 (not res!2465358)) b!5857782))

(assert (= (or b!5857788 b!5857779 b!5857785) bm!459037))

(assert (=> bm!459037 m!6775660))

(declare-fun m!6775712 () Bool)

(assert (=> b!5857780 m!6775712))

(assert (=> b!5857782 m!6775664))

(assert (=> b!5857791 m!6775664))

(assert (=> b!5857791 m!6775664))

(declare-fun m!6775714 () Bool)

(assert (=> b!5857791 m!6775714))

(assert (=> b!5857791 m!6775668))

(assert (=> b!5857791 m!6775714))

(assert (=> b!5857791 m!6775668))

(declare-fun m!6775716 () Bool)

(assert (=> b!5857791 m!6775716))

(assert (=> b!5857784 m!6775668))

(assert (=> b!5857784 m!6775668))

(assert (=> b!5857784 m!6775700))

(assert (=> d!1839608 m!6775660))

(assert (=> d!1839608 m!6775692))

(assert (=> b!5857786 m!6775664))

(assert (=> b!5857783 m!6775668))

(assert (=> b!5857783 m!6775668))

(assert (=> b!5857783 m!6775700))

(assert (=> b!5857572 d!1839608))

(declare-fun d!1839610 () Bool)

(declare-fun lt!2305143 () Regex!15924)

(assert (=> d!1839610 (validRegex!7660 lt!2305143)))

(assert (=> d!1839610 (= lt!2305143 (generalisedUnion!1768 (unfocusZipperList!1345 zl!343)))))

(assert (=> d!1839610 (= (unfocusZipper!1666 zl!343) lt!2305143)))

(declare-fun bs!1380168 () Bool)

(assert (= bs!1380168 d!1839610))

(declare-fun m!6775718 () Bool)

(assert (=> bs!1380168 m!6775718))

(assert (=> bs!1380168 m!6775564))

(assert (=> bs!1380168 m!6775564))

(assert (=> bs!1380168 m!6775566))

(assert (=> b!5857571 d!1839610))

(declare-fun b!5857813 () Bool)

(declare-fun e!3591830 () Regex!15924)

(assert (=> b!5857813 (= e!3591830 (h!70395 (unfocusZipperList!1345 zl!343)))))

(declare-fun b!5857814 () Bool)

(declare-fun e!3591832 () Regex!15924)

(assert (=> b!5857814 (= e!3591832 EmptyLang!15924)))

(declare-fun d!1839612 () Bool)

(declare-fun e!3591835 () Bool)

(assert (=> d!1839612 e!3591835))

(declare-fun res!2465363 () Bool)

(assert (=> d!1839612 (=> (not res!2465363) (not e!3591835))))

(declare-fun lt!2305146 () Regex!15924)

(assert (=> d!1839612 (= res!2465363 (validRegex!7660 lt!2305146))))

(assert (=> d!1839612 (= lt!2305146 e!3591830)))

(declare-fun c!1038906 () Bool)

(declare-fun e!3591831 () Bool)

(assert (=> d!1839612 (= c!1038906 e!3591831)))

(declare-fun res!2465364 () Bool)

(assert (=> d!1839612 (=> (not res!2465364) (not e!3591831))))

(assert (=> d!1839612 (= res!2465364 (is-Cons!63947 (unfocusZipperList!1345 zl!343)))))

(declare-fun lambda!320291 () Int)

(declare-fun forall!15011 (List!64071 Int) Bool)

(assert (=> d!1839612 (forall!15011 (unfocusZipperList!1345 zl!343) lambda!320291)))

(assert (=> d!1839612 (= (generalisedUnion!1768 (unfocusZipperList!1345 zl!343)) lt!2305146)))

(declare-fun b!5857815 () Bool)

(declare-fun e!3591833 () Bool)

(declare-fun isUnion!797 (Regex!15924) Bool)

(assert (=> b!5857815 (= e!3591833 (isUnion!797 lt!2305146))))

(declare-fun b!5857816 () Bool)

(declare-fun e!3591834 () Bool)

(assert (=> b!5857816 (= e!3591835 e!3591834)))

(declare-fun c!1038907 () Bool)

(declare-fun isEmpty!35810 (List!64071) Bool)

(assert (=> b!5857816 (= c!1038907 (isEmpty!35810 (unfocusZipperList!1345 zl!343)))))

(declare-fun b!5857817 () Bool)

(declare-fun head!12403 (List!64071) Regex!15924)

(assert (=> b!5857817 (= e!3591833 (= lt!2305146 (head!12403 (unfocusZipperList!1345 zl!343))))))

(declare-fun b!5857818 () Bool)

(assert (=> b!5857818 (= e!3591830 e!3591832)))

(declare-fun c!1038904 () Bool)

(assert (=> b!5857818 (= c!1038904 (is-Cons!63947 (unfocusZipperList!1345 zl!343)))))

(declare-fun b!5857819 () Bool)

(assert (=> b!5857819 (= e!3591834 e!3591833)))

(declare-fun c!1038905 () Bool)

(declare-fun tail!11488 (List!64071) List!64071)

(assert (=> b!5857819 (= c!1038905 (isEmpty!35810 (tail!11488 (unfocusZipperList!1345 zl!343))))))

(declare-fun b!5857820 () Bool)

(declare-fun isEmptyLang!1367 (Regex!15924) Bool)

(assert (=> b!5857820 (= e!3591834 (isEmptyLang!1367 lt!2305146))))

(declare-fun b!5857821 () Bool)

(assert (=> b!5857821 (= e!3591832 (Union!15924 (h!70395 (unfocusZipperList!1345 zl!343)) (generalisedUnion!1768 (t!377440 (unfocusZipperList!1345 zl!343)))))))

(declare-fun b!5857822 () Bool)

(assert (=> b!5857822 (= e!3591831 (isEmpty!35810 (t!377440 (unfocusZipperList!1345 zl!343))))))

(assert (= (and d!1839612 res!2465364) b!5857822))

(assert (= (and d!1839612 c!1038906) b!5857813))

(assert (= (and d!1839612 (not c!1038906)) b!5857818))

(assert (= (and b!5857818 c!1038904) b!5857821))

(assert (= (and b!5857818 (not c!1038904)) b!5857814))

(assert (= (and d!1839612 res!2465363) b!5857816))

(assert (= (and b!5857816 c!1038907) b!5857820))

(assert (= (and b!5857816 (not c!1038907)) b!5857819))

(assert (= (and b!5857819 c!1038905) b!5857817))

(assert (= (and b!5857819 (not c!1038905)) b!5857815))

(declare-fun m!6775720 () Bool)

(assert (=> d!1839612 m!6775720))

(assert (=> d!1839612 m!6775564))

(declare-fun m!6775722 () Bool)

(assert (=> d!1839612 m!6775722))

(declare-fun m!6775724 () Bool)

(assert (=> b!5857821 m!6775724))

(declare-fun m!6775726 () Bool)

(assert (=> b!5857815 m!6775726))

(assert (=> b!5857816 m!6775564))

(declare-fun m!6775728 () Bool)

(assert (=> b!5857816 m!6775728))

(assert (=> b!5857819 m!6775564))

(declare-fun m!6775730 () Bool)

(assert (=> b!5857819 m!6775730))

(assert (=> b!5857819 m!6775730))

(declare-fun m!6775732 () Bool)

(assert (=> b!5857819 m!6775732))

(declare-fun m!6775734 () Bool)

(assert (=> b!5857820 m!6775734))

(declare-fun m!6775736 () Bool)

(assert (=> b!5857822 m!6775736))

(assert (=> b!5857817 m!6775564))

(declare-fun m!6775738 () Bool)

(assert (=> b!5857817 m!6775738))

(assert (=> b!5857573 d!1839612))

(declare-fun bs!1380169 () Bool)

(declare-fun d!1839614 () Bool)

(assert (= bs!1380169 (and d!1839614 d!1839612)))

(declare-fun lambda!320294 () Int)

(assert (=> bs!1380169 (= lambda!320294 lambda!320291)))

(declare-fun lt!2305149 () List!64071)

(assert (=> d!1839614 (forall!15011 lt!2305149 lambda!320294)))

(declare-fun e!3591838 () List!64071)

(assert (=> d!1839614 (= lt!2305149 e!3591838)))

(declare-fun c!1038910 () Bool)

(assert (=> d!1839614 (= c!1038910 (is-Cons!63948 zl!343))))

(assert (=> d!1839614 (= (unfocusZipperList!1345 zl!343) lt!2305149)))

(declare-fun b!5857827 () Bool)

(assert (=> b!5857827 (= e!3591838 (Cons!63947 (generalisedConcat!1521 (exprs!5808 (h!70396 zl!343))) (unfocusZipperList!1345 (t!377441 zl!343))))))

(declare-fun b!5857828 () Bool)

(assert (=> b!5857828 (= e!3591838 Nil!63947)))

(assert (= (and d!1839614 c!1038910) b!5857827))

(assert (= (and d!1839614 (not c!1038910)) b!5857828))

(declare-fun m!6775740 () Bool)

(assert (=> d!1839614 m!6775740))

(assert (=> b!5857827 m!6775568))

(declare-fun m!6775742 () Bool)

(assert (=> b!5857827 m!6775742))

(assert (=> b!5857573 d!1839614))

(declare-fun bs!1380170 () Bool)

(declare-fun d!1839616 () Bool)

(assert (= bs!1380170 (and d!1839616 d!1839612)))

(declare-fun lambda!320297 () Int)

(assert (=> bs!1380170 (= lambda!320297 lambda!320291)))

(declare-fun bs!1380171 () Bool)

(assert (= bs!1380171 (and d!1839616 d!1839614)))

(assert (=> bs!1380171 (= lambda!320297 lambda!320294)))

(assert (=> d!1839616 (= (inv!83058 lt!2305051) (forall!15011 (exprs!5808 lt!2305051) lambda!320297))))

(declare-fun bs!1380172 () Bool)

(assert (= bs!1380172 d!1839616))

(declare-fun m!6775744 () Bool)

(assert (=> bs!1380172 m!6775744))

(assert (=> b!5857584 d!1839616))

(declare-fun d!1839618 () Bool)

(declare-fun dynLambda!25003 (Int Context!10616) (Set Context!10616))

(assert (=> d!1839618 (= (flatMap!1455 lt!2305054 lambda!320275) (dynLambda!25003 lambda!320275 lt!2305055))))

(declare-fun lt!2305152 () Unit!157119)

(declare-fun choose!44413 ((Set Context!10616) Context!10616 Int) Unit!157119)

(assert (=> d!1839618 (= lt!2305152 (choose!44413 lt!2305054 lt!2305055 lambda!320275))))

(assert (=> d!1839618 (= lt!2305054 (set.insert lt!2305055 (as set.empty (Set Context!10616))))))

(assert (=> d!1839618 (= (lemmaFlatMapOnSingletonSet!983 lt!2305054 lt!2305055 lambda!320275) lt!2305152)))

(declare-fun b_lambda!220477 () Bool)

(assert (=> (not b_lambda!220477) (not d!1839618)))

(declare-fun bs!1380173 () Bool)

(assert (= bs!1380173 d!1839618))

(assert (=> bs!1380173 m!6775552))

(declare-fun m!6775746 () Bool)

(assert (=> bs!1380173 m!6775746))

(declare-fun m!6775748 () Bool)

(assert (=> bs!1380173 m!6775748))

(assert (=> bs!1380173 m!6775550))

(assert (=> b!5857584 d!1839618))

(declare-fun b!5857839 () Bool)

(declare-fun e!3591847 () Bool)

(assert (=> b!5857839 (= e!3591847 (nullable!5924 (h!70395 (exprs!5808 lt!2305051))))))

(declare-fun b!5857840 () Bool)

(declare-fun e!3591846 () (Set Context!10616))

(declare-fun e!3591845 () (Set Context!10616))

(assert (=> b!5857840 (= e!3591846 e!3591845)))

(declare-fun c!1038915 () Bool)

(assert (=> b!5857840 (= c!1038915 (is-Cons!63947 (exprs!5808 lt!2305051)))))

(declare-fun call!459045 () (Set Context!10616))

(declare-fun b!5857841 () Bool)

(assert (=> b!5857841 (= e!3591846 (set.union call!459045 (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 lt!2305051))) (h!70397 s!2326))))))

(declare-fun d!1839620 () Bool)

(declare-fun c!1038916 () Bool)

(assert (=> d!1839620 (= c!1038916 e!3591847)))

(declare-fun res!2465367 () Bool)

(assert (=> d!1839620 (=> (not res!2465367) (not e!3591847))))

(assert (=> d!1839620 (= res!2465367 (is-Cons!63947 (exprs!5808 lt!2305051)))))

(assert (=> d!1839620 (= (derivationStepZipperUp!1116 lt!2305051 (h!70397 s!2326)) e!3591846)))

(declare-fun bm!459040 () Bool)

(assert (=> bm!459040 (= call!459045 (derivationStepZipperDown!1190 (h!70395 (exprs!5808 lt!2305051)) (Context!10617 (t!377440 (exprs!5808 lt!2305051))) (h!70397 s!2326)))))

(declare-fun b!5857842 () Bool)

(assert (=> b!5857842 (= e!3591845 call!459045)))

(declare-fun b!5857843 () Bool)

(assert (=> b!5857843 (= e!3591845 (as set.empty (Set Context!10616)))))

(assert (= (and d!1839620 res!2465367) b!5857839))

(assert (= (and d!1839620 c!1038916) b!5857841))

(assert (= (and d!1839620 (not c!1038916)) b!5857840))

(assert (= (and b!5857840 c!1038915) b!5857842))

(assert (= (and b!5857840 (not c!1038915)) b!5857843))

(assert (= (or b!5857841 b!5857842) bm!459040))

(declare-fun m!6775750 () Bool)

(assert (=> b!5857839 m!6775750))

(declare-fun m!6775752 () Bool)

(assert (=> b!5857841 m!6775752))

(declare-fun m!6775754 () Bool)

(assert (=> bm!459040 m!6775754))

(assert (=> b!5857584 d!1839620))

(declare-fun b!5857844 () Bool)

(declare-fun e!3591850 () Bool)

(assert (=> b!5857844 (= e!3591850 (nullable!5924 (h!70395 (exprs!5808 lt!2305055))))))

(declare-fun b!5857845 () Bool)

(declare-fun e!3591849 () (Set Context!10616))

(declare-fun e!3591848 () (Set Context!10616))

(assert (=> b!5857845 (= e!3591849 e!3591848)))

(declare-fun c!1038917 () Bool)

(assert (=> b!5857845 (= c!1038917 (is-Cons!63947 (exprs!5808 lt!2305055)))))

(declare-fun call!459046 () (Set Context!10616))

(declare-fun b!5857846 () Bool)

(assert (=> b!5857846 (= e!3591849 (set.union call!459046 (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 lt!2305055))) (h!70397 s!2326))))))

(declare-fun d!1839622 () Bool)

(declare-fun c!1038918 () Bool)

(assert (=> d!1839622 (= c!1038918 e!3591850)))

(declare-fun res!2465368 () Bool)

(assert (=> d!1839622 (=> (not res!2465368) (not e!3591850))))

(assert (=> d!1839622 (= res!2465368 (is-Cons!63947 (exprs!5808 lt!2305055)))))

(assert (=> d!1839622 (= (derivationStepZipperUp!1116 lt!2305055 (h!70397 s!2326)) e!3591849)))

(declare-fun bm!459041 () Bool)

(assert (=> bm!459041 (= call!459046 (derivationStepZipperDown!1190 (h!70395 (exprs!5808 lt!2305055)) (Context!10617 (t!377440 (exprs!5808 lt!2305055))) (h!70397 s!2326)))))

(declare-fun b!5857847 () Bool)

(assert (=> b!5857847 (= e!3591848 call!459046)))

(declare-fun b!5857848 () Bool)

(assert (=> b!5857848 (= e!3591848 (as set.empty (Set Context!10616)))))

(assert (= (and d!1839622 res!2465368) b!5857844))

(assert (= (and d!1839622 c!1038918) b!5857846))

(assert (= (and d!1839622 (not c!1038918)) b!5857845))

(assert (= (and b!5857845 c!1038917) b!5857847))

(assert (= (and b!5857845 (not c!1038917)) b!5857848))

(assert (= (or b!5857846 b!5857847) bm!459041))

(declare-fun m!6775756 () Bool)

(assert (=> b!5857844 m!6775756))

(declare-fun m!6775758 () Bool)

(assert (=> b!5857846 m!6775758))

(declare-fun m!6775760 () Bool)

(assert (=> bm!459041 m!6775760))

(assert (=> b!5857584 d!1839622))

(declare-fun d!1839624 () Bool)

(declare-fun choose!44414 ((Set Context!10616) Int) (Set Context!10616))

(assert (=> d!1839624 (= (flatMap!1455 lt!2305054 lambda!320275) (choose!44414 lt!2305054 lambda!320275))))

(declare-fun bs!1380174 () Bool)

(assert (= bs!1380174 d!1839624))

(declare-fun m!6775762 () Bool)

(assert (=> bs!1380174 m!6775762))

(assert (=> b!5857584 d!1839624))

(declare-fun d!1839626 () Bool)

(assert (=> d!1839626 (= (isEmpty!35807 (t!377441 zl!343)) (is-Nil!63948 (t!377441 zl!343)))))

(assert (=> b!5857583 d!1839626))

(declare-fun bs!1380175 () Bool)

(declare-fun d!1839628 () Bool)

(assert (= bs!1380175 (and d!1839628 d!1839612)))

(declare-fun lambda!320300 () Int)

(assert (=> bs!1380175 (= lambda!320300 lambda!320291)))

(declare-fun bs!1380176 () Bool)

(assert (= bs!1380176 (and d!1839628 d!1839614)))

(assert (=> bs!1380176 (= lambda!320300 lambda!320294)))

(declare-fun bs!1380177 () Bool)

(assert (= bs!1380177 (and d!1839628 d!1839616)))

(assert (=> bs!1380177 (= lambda!320300 lambda!320297)))

(declare-fun e!3591866 () Bool)

(assert (=> d!1839628 e!3591866))

(declare-fun res!2465374 () Bool)

(assert (=> d!1839628 (=> (not res!2465374) (not e!3591866))))

(declare-fun lt!2305155 () Regex!15924)

(assert (=> d!1839628 (= res!2465374 (validRegex!7660 lt!2305155))))

(declare-fun e!3591867 () Regex!15924)

(assert (=> d!1839628 (= lt!2305155 e!3591867)))

(declare-fun c!1038928 () Bool)

(declare-fun e!3591865 () Bool)

(assert (=> d!1839628 (= c!1038928 e!3591865)))

(declare-fun res!2465373 () Bool)

(assert (=> d!1839628 (=> (not res!2465373) (not e!3591865))))

(assert (=> d!1839628 (= res!2465373 (is-Cons!63947 (exprs!5808 (h!70396 zl!343))))))

(assert (=> d!1839628 (forall!15011 (exprs!5808 (h!70396 zl!343)) lambda!320300)))

(assert (=> d!1839628 (= (generalisedConcat!1521 (exprs!5808 (h!70396 zl!343))) lt!2305155)))

(declare-fun b!5857869 () Bool)

(declare-fun e!3591868 () Bool)

(assert (=> b!5857869 (= e!3591866 e!3591868)))

(declare-fun c!1038929 () Bool)

(assert (=> b!5857869 (= c!1038929 (isEmpty!35810 (exprs!5808 (h!70396 zl!343))))))

(declare-fun b!5857870 () Bool)

(declare-fun e!3591864 () Bool)

(declare-fun isConcat!882 (Regex!15924) Bool)

(assert (=> b!5857870 (= e!3591864 (isConcat!882 lt!2305155))))

(declare-fun b!5857871 () Bool)

(declare-fun e!3591863 () Regex!15924)

(assert (=> b!5857871 (= e!3591863 (Concat!24769 (h!70395 (exprs!5808 (h!70396 zl!343))) (generalisedConcat!1521 (t!377440 (exprs!5808 (h!70396 zl!343))))))))

(declare-fun b!5857872 () Bool)

(assert (=> b!5857872 (= e!3591863 EmptyExpr!15924)))

(declare-fun b!5857873 () Bool)

(assert (=> b!5857873 (= e!3591867 (h!70395 (exprs!5808 (h!70396 zl!343))))))

(declare-fun b!5857874 () Bool)

(declare-fun isEmptyExpr!1359 (Regex!15924) Bool)

(assert (=> b!5857874 (= e!3591868 (isEmptyExpr!1359 lt!2305155))))

(declare-fun b!5857875 () Bool)

(assert (=> b!5857875 (= e!3591867 e!3591863)))

(declare-fun c!1038930 () Bool)

(assert (=> b!5857875 (= c!1038930 (is-Cons!63947 (exprs!5808 (h!70396 zl!343))))))

(declare-fun b!5857876 () Bool)

(assert (=> b!5857876 (= e!3591868 e!3591864)))

(declare-fun c!1038927 () Bool)

(assert (=> b!5857876 (= c!1038927 (isEmpty!35810 (tail!11488 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5857877 () Bool)

(assert (=> b!5857877 (= e!3591865 (isEmpty!35810 (t!377440 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5857878 () Bool)

(assert (=> b!5857878 (= e!3591864 (= lt!2305155 (head!12403 (exprs!5808 (h!70396 zl!343)))))))

(assert (= (and d!1839628 res!2465373) b!5857877))

(assert (= (and d!1839628 c!1038928) b!5857873))

(assert (= (and d!1839628 (not c!1038928)) b!5857875))

(assert (= (and b!5857875 c!1038930) b!5857871))

(assert (= (and b!5857875 (not c!1038930)) b!5857872))

(assert (= (and d!1839628 res!2465374) b!5857869))

(assert (= (and b!5857869 c!1038929) b!5857874))

(assert (= (and b!5857869 (not c!1038929)) b!5857876))

(assert (= (and b!5857876 c!1038927) b!5857878))

(assert (= (and b!5857876 (not c!1038927)) b!5857870))

(declare-fun m!6775764 () Bool)

(assert (=> b!5857871 m!6775764))

(declare-fun m!6775766 () Bool)

(assert (=> b!5857874 m!6775766))

(declare-fun m!6775768 () Bool)

(assert (=> b!5857878 m!6775768))

(declare-fun m!6775770 () Bool)

(assert (=> b!5857876 m!6775770))

(assert (=> b!5857876 m!6775770))

(declare-fun m!6775772 () Bool)

(assert (=> b!5857876 m!6775772))

(declare-fun m!6775774 () Bool)

(assert (=> b!5857869 m!6775774))

(declare-fun m!6775776 () Bool)

(assert (=> b!5857877 m!6775776))

(declare-fun m!6775778 () Bool)

(assert (=> d!1839628 m!6775778))

(declare-fun m!6775780 () Bool)

(assert (=> d!1839628 m!6775780))

(declare-fun m!6775782 () Bool)

(assert (=> b!5857870 m!6775782))

(assert (=> b!5857593 d!1839628))

(declare-fun bs!1380178 () Bool)

(declare-fun d!1839632 () Bool)

(assert (= bs!1380178 (and d!1839632 b!5857591)))

(declare-fun lambda!320303 () Int)

(assert (=> bs!1380178 (= lambda!320303 lambda!320275)))

(assert (=> d!1839632 true))

(assert (=> d!1839632 (= (derivationStepZipper!1923 z!1189 (h!70397 s!2326)) (flatMap!1455 z!1189 lambda!320303))))

(declare-fun bs!1380179 () Bool)

(assert (= bs!1380179 d!1839632))

(declare-fun m!6775784 () Bool)

(assert (=> bs!1380179 m!6775784))

(assert (=> b!5857591 d!1839632))

(declare-fun d!1839634 () Bool)

(assert (=> d!1839634 (= (flatMap!1455 z!1189 lambda!320275) (choose!44414 z!1189 lambda!320275))))

(declare-fun bs!1380180 () Bool)

(assert (= bs!1380180 d!1839634))

(declare-fun m!6775786 () Bool)

(assert (=> bs!1380180 m!6775786))

(assert (=> b!5857591 d!1839634))

(declare-fun b!5857881 () Bool)

(declare-fun e!3591871 () Bool)

(assert (=> b!5857881 (= e!3591871 (nullable!5924 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5857882 () Bool)

(declare-fun e!3591870 () (Set Context!10616))

(declare-fun e!3591869 () (Set Context!10616))

(assert (=> b!5857882 (= e!3591870 e!3591869)))

(declare-fun c!1038933 () Bool)

(assert (=> b!5857882 (= c!1038933 (is-Cons!63947 (exprs!5808 (h!70396 zl!343))))))

(declare-fun call!459047 () (Set Context!10616))

(declare-fun b!5857883 () Bool)

(assert (=> b!5857883 (= e!3591870 (set.union call!459047 (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))) (h!70397 s!2326))))))

(declare-fun d!1839636 () Bool)

(declare-fun c!1038934 () Bool)

(assert (=> d!1839636 (= c!1038934 e!3591871)))

(declare-fun res!2465375 () Bool)

(assert (=> d!1839636 (=> (not res!2465375) (not e!3591871))))

(assert (=> d!1839636 (= res!2465375 (is-Cons!63947 (exprs!5808 (h!70396 zl!343))))))

(assert (=> d!1839636 (= (derivationStepZipperUp!1116 (h!70396 zl!343) (h!70397 s!2326)) e!3591870)))

(declare-fun bm!459042 () Bool)

(assert (=> bm!459042 (= call!459047 (derivationStepZipperDown!1190 (h!70395 (exprs!5808 (h!70396 zl!343))) (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))) (h!70397 s!2326)))))

(declare-fun b!5857884 () Bool)

(assert (=> b!5857884 (= e!3591869 call!459047)))

(declare-fun b!5857885 () Bool)

(assert (=> b!5857885 (= e!3591869 (as set.empty (Set Context!10616)))))

(assert (= (and d!1839636 res!2465375) b!5857881))

(assert (= (and d!1839636 c!1038934) b!5857883))

(assert (= (and d!1839636 (not c!1038934)) b!5857882))

(assert (= (and b!5857882 c!1038933) b!5857884))

(assert (= (and b!5857882 (not c!1038933)) b!5857885))

(assert (= (or b!5857883 b!5857884) bm!459042))

(declare-fun m!6775788 () Bool)

(assert (=> b!5857881 m!6775788))

(declare-fun m!6775790 () Bool)

(assert (=> b!5857883 m!6775790))

(declare-fun m!6775792 () Bool)

(assert (=> bm!459042 m!6775792))

(assert (=> b!5857591 d!1839636))

(declare-fun d!1839638 () Bool)

(assert (=> d!1839638 (= (flatMap!1455 z!1189 lambda!320275) (dynLambda!25003 lambda!320275 (h!70396 zl!343)))))

(declare-fun lt!2305156 () Unit!157119)

(assert (=> d!1839638 (= lt!2305156 (choose!44413 z!1189 (h!70396 zl!343) lambda!320275))))

(assert (=> d!1839638 (= z!1189 (set.insert (h!70396 zl!343) (as set.empty (Set Context!10616))))))

(assert (=> d!1839638 (= (lemmaFlatMapOnSingletonSet!983 z!1189 (h!70396 zl!343) lambda!320275) lt!2305156)))

(declare-fun b_lambda!220479 () Bool)

(assert (=> (not b_lambda!220479) (not d!1839638)))

(declare-fun bs!1380181 () Bool)

(assert (= bs!1380181 d!1839638))

(assert (=> bs!1380181 m!6775572))

(declare-fun m!6775794 () Bool)

(assert (=> bs!1380181 m!6775794))

(declare-fun m!6775796 () Bool)

(assert (=> bs!1380181 m!6775796))

(declare-fun m!6775798 () Bool)

(assert (=> bs!1380181 m!6775798))

(assert (=> b!5857591 d!1839638))

(declare-fun b!5857904 () Bool)

(declare-fun e!3591891 () Bool)

(declare-fun call!459055 () Bool)

(assert (=> b!5857904 (= e!3591891 call!459055)))

(declare-fun bm!459049 () Bool)

(declare-fun c!1038939 () Bool)

(assert (=> bm!459049 (= call!459055 (validRegex!7660 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))))))

(declare-fun b!5857905 () Bool)

(declare-fun e!3591888 () Bool)

(assert (=> b!5857905 (= e!3591888 e!3591891)))

(declare-fun res!2465390 () Bool)

(assert (=> b!5857905 (=> (not res!2465390) (not e!3591891))))

(declare-fun call!459056 () Bool)

(assert (=> b!5857905 (= res!2465390 call!459056)))

(declare-fun b!5857906 () Bool)

(declare-fun e!3591890 () Bool)

(declare-fun e!3591887 () Bool)

(assert (=> b!5857906 (= e!3591890 e!3591887)))

(declare-fun res!2465389 () Bool)

(assert (=> b!5857906 (= res!2465389 (not (nullable!5924 (reg!16253 r!7292))))))

(assert (=> b!5857906 (=> (not res!2465389) (not e!3591887))))

(declare-fun b!5857907 () Bool)

(declare-fun res!2465388 () Bool)

(assert (=> b!5857907 (=> res!2465388 e!3591888)))

(assert (=> b!5857907 (= res!2465388 (not (is-Concat!24769 r!7292)))))

(declare-fun e!3591892 () Bool)

(assert (=> b!5857907 (= e!3591892 e!3591888)))

(declare-fun b!5857908 () Bool)

(declare-fun call!459054 () Bool)

(assert (=> b!5857908 (= e!3591887 call!459054)))

(declare-fun bm!459050 () Bool)

(assert (=> bm!459050 (= call!459056 call!459054)))

(declare-fun b!5857909 () Bool)

(assert (=> b!5857909 (= e!3591890 e!3591892)))

(assert (=> b!5857909 (= c!1038939 (is-Union!15924 r!7292))))

(declare-fun b!5857910 () Bool)

(declare-fun res!2465387 () Bool)

(declare-fun e!3591889 () Bool)

(assert (=> b!5857910 (=> (not res!2465387) (not e!3591889))))

(assert (=> b!5857910 (= res!2465387 call!459056)))

(assert (=> b!5857910 (= e!3591892 e!3591889)))

(declare-fun bm!459051 () Bool)

(declare-fun c!1038940 () Bool)

(assert (=> bm!459051 (= call!459054 (validRegex!7660 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))))))

(declare-fun b!5857911 () Bool)

(assert (=> b!5857911 (= e!3591889 call!459055)))

(declare-fun b!5857912 () Bool)

(declare-fun e!3591886 () Bool)

(assert (=> b!5857912 (= e!3591886 e!3591890)))

(assert (=> b!5857912 (= c!1038940 (is-Star!15924 r!7292))))

(declare-fun d!1839640 () Bool)

(declare-fun res!2465386 () Bool)

(assert (=> d!1839640 (=> res!2465386 e!3591886)))

(assert (=> d!1839640 (= res!2465386 (is-ElementMatch!15924 r!7292))))

(assert (=> d!1839640 (= (validRegex!7660 r!7292) e!3591886)))

(assert (= (and d!1839640 (not res!2465386)) b!5857912))

(assert (= (and b!5857912 c!1038940) b!5857906))

(assert (= (and b!5857912 (not c!1038940)) b!5857909))

(assert (= (and b!5857906 res!2465389) b!5857908))

(assert (= (and b!5857909 c!1038939) b!5857910))

(assert (= (and b!5857909 (not c!1038939)) b!5857907))

(assert (= (and b!5857910 res!2465387) b!5857911))

(assert (= (and b!5857907 (not res!2465388)) b!5857905))

(assert (= (and b!5857905 res!2465390) b!5857904))

(assert (= (or b!5857911 b!5857904) bm!459049))

(assert (= (or b!5857910 b!5857905) bm!459050))

(assert (= (or b!5857908 bm!459050) bm!459051))

(declare-fun m!6775800 () Bool)

(assert (=> bm!459049 m!6775800))

(declare-fun m!6775802 () Bool)

(assert (=> b!5857906 m!6775802))

(declare-fun m!6775804 () Bool)

(assert (=> bm!459051 m!6775804))

(assert (=> start!599186 d!1839640))

(declare-fun b!5857963 () Bool)

(declare-fun e!3591922 () (Set Context!10616))

(assert (=> b!5857963 (= e!3591922 (set.insert lt!2305057 (as set.empty (Set Context!10616))))))

(declare-fun b!5857964 () Bool)

(declare-fun e!3591925 () (Set Context!10616))

(declare-fun call!459070 () (Set Context!10616))

(declare-fun call!459074 () (Set Context!10616))

(assert (=> b!5857964 (= e!3591925 (set.union call!459070 call!459074))))

(declare-fun c!1038959 () Bool)

(declare-fun c!1038960 () Bool)

(declare-fun bm!459064 () Bool)

(declare-fun call!459069 () List!64071)

(declare-fun c!1038962 () Bool)

(assert (=> bm!459064 (= call!459074 (derivationStepZipperDown!1190 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292))))) (ite (or c!1038960 c!1038962) lt!2305057 (Context!10617 call!459069)) (h!70397 s!2326)))))

(declare-fun call!459071 () List!64071)

(declare-fun bm!459065 () Bool)

(assert (=> bm!459065 (= call!459070 (derivationStepZipperDown!1190 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292))) (ite c!1038960 lt!2305057 (Context!10617 call!459071)) (h!70397 s!2326)))))

(declare-fun bm!459066 () Bool)

(declare-fun $colon$colon!1829 (List!64071 Regex!15924) List!64071)

(assert (=> bm!459066 (= call!459071 ($colon$colon!1829 (exprs!5808 lt!2305057) (ite (or c!1038962 c!1038959) (regTwo!32360 (regTwo!32361 r!7292)) (regTwo!32361 r!7292))))))

(declare-fun b!5857966 () Bool)

(declare-fun e!3591926 () (Set Context!10616))

(declare-fun call!459072 () (Set Context!10616))

(assert (=> b!5857966 (= e!3591926 call!459072)))

(declare-fun bm!459067 () Bool)

(declare-fun call!459073 () (Set Context!10616))

(assert (=> bm!459067 (= call!459072 call!459073)))

(declare-fun bm!459068 () Bool)

(assert (=> bm!459068 (= call!459073 call!459074)))

(declare-fun b!5857967 () Bool)

(declare-fun e!3591921 () (Set Context!10616))

(declare-fun e!3591923 () (Set Context!10616))

(assert (=> b!5857967 (= e!3591921 e!3591923)))

(assert (=> b!5857967 (= c!1038959 (is-Concat!24769 (regTwo!32361 r!7292)))))

(declare-fun b!5857968 () Bool)

(assert (=> b!5857968 (= e!3591923 call!459072)))

(declare-fun b!5857969 () Bool)

(assert (=> b!5857969 (= e!3591926 (as set.empty (Set Context!10616)))))

(declare-fun b!5857970 () Bool)

(assert (=> b!5857970 (= e!3591921 (set.union call!459070 call!459073))))

(declare-fun b!5857971 () Bool)

(declare-fun e!3591924 () Bool)

(assert (=> b!5857971 (= c!1038962 e!3591924)))

(declare-fun res!2465405 () Bool)

(assert (=> b!5857971 (=> (not res!2465405) (not e!3591924))))

(assert (=> b!5857971 (= res!2465405 (is-Concat!24769 (regTwo!32361 r!7292)))))

(assert (=> b!5857971 (= e!3591925 e!3591921)))

(declare-fun b!5857972 () Bool)

(assert (=> b!5857972 (= e!3591922 e!3591925)))

(assert (=> b!5857972 (= c!1038960 (is-Union!15924 (regTwo!32361 r!7292)))))

(declare-fun bm!459069 () Bool)

(assert (=> bm!459069 (= call!459069 call!459071)))

(declare-fun b!5857973 () Bool)

(declare-fun c!1038963 () Bool)

(assert (=> b!5857973 (= c!1038963 (is-Star!15924 (regTwo!32361 r!7292)))))

(assert (=> b!5857973 (= e!3591923 e!3591926)))

(declare-fun b!5857965 () Bool)

(assert (=> b!5857965 (= e!3591924 (nullable!5924 (regOne!32360 (regTwo!32361 r!7292))))))

(declare-fun d!1839642 () Bool)

(declare-fun c!1038961 () Bool)

(assert (=> d!1839642 (= c!1038961 (and (is-ElementMatch!15924 (regTwo!32361 r!7292)) (= (c!1038857 (regTwo!32361 r!7292)) (h!70397 s!2326))))))

(assert (=> d!1839642 (= (derivationStepZipperDown!1190 (regTwo!32361 r!7292) lt!2305057 (h!70397 s!2326)) e!3591922)))

(assert (= (and d!1839642 c!1038961) b!5857963))

(assert (= (and d!1839642 (not c!1038961)) b!5857972))

(assert (= (and b!5857972 c!1038960) b!5857964))

(assert (= (and b!5857972 (not c!1038960)) b!5857971))

(assert (= (and b!5857971 res!2465405) b!5857965))

(assert (= (and b!5857971 c!1038962) b!5857970))

(assert (= (and b!5857971 (not c!1038962)) b!5857967))

(assert (= (and b!5857967 c!1038959) b!5857968))

(assert (= (and b!5857967 (not c!1038959)) b!5857973))

(assert (= (and b!5857973 c!1038963) b!5857966))

(assert (= (and b!5857973 (not c!1038963)) b!5857969))

(assert (= (or b!5857968 b!5857966) bm!459069))

(assert (= (or b!5857968 b!5857966) bm!459067))

(assert (= (or b!5857970 bm!459069) bm!459066))

(assert (= (or b!5857970 bm!459067) bm!459068))

(assert (= (or b!5857964 bm!459068) bm!459064))

(assert (= (or b!5857964 b!5857970) bm!459065))

(declare-fun m!6775806 () Bool)

(assert (=> b!5857965 m!6775806))

(declare-fun m!6775808 () Bool)

(assert (=> bm!459066 m!6775808))

(declare-fun m!6775810 () Bool)

(assert (=> b!5857963 m!6775810))

(declare-fun m!6775812 () Bool)

(assert (=> bm!459064 m!6775812))

(declare-fun m!6775814 () Bool)

(assert (=> bm!459065 m!6775814))

(assert (=> b!5857587 d!1839642))

(declare-fun b!5857974 () Bool)

(declare-fun e!3591928 () (Set Context!10616))

(assert (=> b!5857974 (= e!3591928 (set.insert lt!2305057 (as set.empty (Set Context!10616))))))

(declare-fun b!5857975 () Bool)

(declare-fun e!3591931 () (Set Context!10616))

(declare-fun call!459076 () (Set Context!10616))

(declare-fun call!459080 () (Set Context!10616))

(assert (=> b!5857975 (= e!3591931 (set.union call!459076 call!459080))))

(declare-fun c!1038964 () Bool)

(declare-fun c!1038965 () Bool)

(declare-fun call!459075 () List!64071)

(declare-fun c!1038967 () Bool)

(declare-fun bm!459070 () Bool)

(assert (=> bm!459070 (= call!459080 (derivationStepZipperDown!1190 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292))))) (ite (or c!1038965 c!1038967) lt!2305057 (Context!10617 call!459075)) (h!70397 s!2326)))))

(declare-fun call!459077 () List!64071)

(declare-fun bm!459071 () Bool)

(assert (=> bm!459071 (= call!459076 (derivationStepZipperDown!1190 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292))) (ite c!1038965 lt!2305057 (Context!10617 call!459077)) (h!70397 s!2326)))))

(declare-fun bm!459072 () Bool)

(assert (=> bm!459072 (= call!459077 ($colon$colon!1829 (exprs!5808 lt!2305057) (ite (or c!1038967 c!1038964) (regTwo!32360 (regOne!32361 r!7292)) (regOne!32361 r!7292))))))

(declare-fun b!5857977 () Bool)

(declare-fun e!3591932 () (Set Context!10616))

(declare-fun call!459078 () (Set Context!10616))

(assert (=> b!5857977 (= e!3591932 call!459078)))

(declare-fun bm!459073 () Bool)

(declare-fun call!459079 () (Set Context!10616))

(assert (=> bm!459073 (= call!459078 call!459079)))

(declare-fun bm!459074 () Bool)

(assert (=> bm!459074 (= call!459079 call!459080)))

(declare-fun b!5857978 () Bool)

(declare-fun e!3591927 () (Set Context!10616))

(declare-fun e!3591929 () (Set Context!10616))

(assert (=> b!5857978 (= e!3591927 e!3591929)))

(assert (=> b!5857978 (= c!1038964 (is-Concat!24769 (regOne!32361 r!7292)))))

(declare-fun b!5857979 () Bool)

(assert (=> b!5857979 (= e!3591929 call!459078)))

(declare-fun b!5857980 () Bool)

(assert (=> b!5857980 (= e!3591932 (as set.empty (Set Context!10616)))))

(declare-fun b!5857981 () Bool)

(assert (=> b!5857981 (= e!3591927 (set.union call!459076 call!459079))))

(declare-fun b!5857982 () Bool)

(declare-fun e!3591930 () Bool)

(assert (=> b!5857982 (= c!1038967 e!3591930)))

(declare-fun res!2465406 () Bool)

(assert (=> b!5857982 (=> (not res!2465406) (not e!3591930))))

(assert (=> b!5857982 (= res!2465406 (is-Concat!24769 (regOne!32361 r!7292)))))

(assert (=> b!5857982 (= e!3591931 e!3591927)))

(declare-fun b!5857983 () Bool)

(assert (=> b!5857983 (= e!3591928 e!3591931)))

(assert (=> b!5857983 (= c!1038965 (is-Union!15924 (regOne!32361 r!7292)))))

(declare-fun bm!459075 () Bool)

(assert (=> bm!459075 (= call!459075 call!459077)))

(declare-fun b!5857984 () Bool)

(declare-fun c!1038968 () Bool)

(assert (=> b!5857984 (= c!1038968 (is-Star!15924 (regOne!32361 r!7292)))))

(assert (=> b!5857984 (= e!3591929 e!3591932)))

(declare-fun b!5857976 () Bool)

(assert (=> b!5857976 (= e!3591930 (nullable!5924 (regOne!32360 (regOne!32361 r!7292))))))

(declare-fun d!1839644 () Bool)

(declare-fun c!1038966 () Bool)

(assert (=> d!1839644 (= c!1038966 (and (is-ElementMatch!15924 (regOne!32361 r!7292)) (= (c!1038857 (regOne!32361 r!7292)) (h!70397 s!2326))))))

(assert (=> d!1839644 (= (derivationStepZipperDown!1190 (regOne!32361 r!7292) lt!2305057 (h!70397 s!2326)) e!3591928)))

(assert (= (and d!1839644 c!1038966) b!5857974))

(assert (= (and d!1839644 (not c!1038966)) b!5857983))

(assert (= (and b!5857983 c!1038965) b!5857975))

(assert (= (and b!5857983 (not c!1038965)) b!5857982))

(assert (= (and b!5857982 res!2465406) b!5857976))

(assert (= (and b!5857982 c!1038967) b!5857981))

(assert (= (and b!5857982 (not c!1038967)) b!5857978))

(assert (= (and b!5857978 c!1038964) b!5857979))

(assert (= (and b!5857978 (not c!1038964)) b!5857984))

(assert (= (and b!5857984 c!1038968) b!5857977))

(assert (= (and b!5857984 (not c!1038968)) b!5857980))

(assert (= (or b!5857979 b!5857977) bm!459075))

(assert (= (or b!5857979 b!5857977) bm!459073))

(assert (= (or b!5857981 bm!459075) bm!459072))

(assert (= (or b!5857981 bm!459073) bm!459074))

(assert (= (or b!5857975 bm!459074) bm!459070))

(assert (= (or b!5857975 b!5857981) bm!459071))

(declare-fun m!6775816 () Bool)

(assert (=> b!5857976 m!6775816))

(declare-fun m!6775818 () Bool)

(assert (=> bm!459072 m!6775818))

(assert (=> b!5857974 m!6775810))

(declare-fun m!6775820 () Bool)

(assert (=> bm!459070 m!6775820))

(declare-fun m!6775822 () Bool)

(assert (=> bm!459071 m!6775822))

(assert (=> b!5857587 d!1839644))

(declare-fun bs!1380182 () Bool)

(declare-fun d!1839646 () Bool)

(assert (= bs!1380182 (and d!1839646 d!1839612)))

(declare-fun lambda!320307 () Int)

(assert (=> bs!1380182 (= lambda!320307 lambda!320291)))

(declare-fun bs!1380183 () Bool)

(assert (= bs!1380183 (and d!1839646 d!1839614)))

(assert (=> bs!1380183 (= lambda!320307 lambda!320294)))

(declare-fun bs!1380184 () Bool)

(assert (= bs!1380184 (and d!1839646 d!1839616)))

(assert (=> bs!1380184 (= lambda!320307 lambda!320297)))

(declare-fun bs!1380185 () Bool)

(assert (= bs!1380185 (and d!1839646 d!1839628)))

(assert (=> bs!1380185 (= lambda!320307 lambda!320300)))

(assert (=> d!1839646 (= (inv!83058 setElem!39707) (forall!15011 (exprs!5808 setElem!39707) lambda!320307))))

(declare-fun bs!1380186 () Bool)

(assert (= bs!1380186 d!1839646))

(declare-fun m!6775824 () Bool)

(assert (=> bs!1380186 m!6775824))

(assert (=> setNonEmpty!39707 d!1839646))

(declare-fun d!1839648 () Bool)

(declare-fun c!1038969 () Bool)

(assert (=> d!1839648 (= c!1038969 (isEmpty!35809 (t!377442 s!2326)))))

(declare-fun e!3591935 () Bool)

(assert (=> d!1839648 (= (matchZipper!1990 lt!2305042 (t!377442 s!2326)) e!3591935)))

(declare-fun b!5857989 () Bool)

(assert (=> b!5857989 (= e!3591935 (nullableZipper!1763 lt!2305042))))

(declare-fun b!5857990 () Bool)

(assert (=> b!5857990 (= e!3591935 (matchZipper!1990 (derivationStepZipper!1923 lt!2305042 (head!12402 (t!377442 s!2326))) (tail!11487 (t!377442 s!2326))))))

(assert (= (and d!1839648 c!1038969) b!5857989))

(assert (= (and d!1839648 (not c!1038969)) b!5857990))

(assert (=> d!1839648 m!6775672))

(declare-fun m!6775826 () Bool)

(assert (=> b!5857989 m!6775826))

(assert (=> b!5857990 m!6775676))

(assert (=> b!5857990 m!6775676))

(declare-fun m!6775828 () Bool)

(assert (=> b!5857990 m!6775828))

(assert (=> b!5857990 m!6775680))

(assert (=> b!5857990 m!6775828))

(assert (=> b!5857990 m!6775680))

(declare-fun m!6775830 () Bool)

(assert (=> b!5857990 m!6775830))

(assert (=> b!5857588 d!1839648))

(declare-fun bs!1380187 () Bool)

(declare-fun d!1839650 () Bool)

(assert (= bs!1380187 (and d!1839650 d!1839614)))

(declare-fun lambda!320309 () Int)

(assert (=> bs!1380187 (= lambda!320309 lambda!320294)))

(declare-fun bs!1380188 () Bool)

(assert (= bs!1380188 (and d!1839650 d!1839616)))

(assert (=> bs!1380188 (= lambda!320309 lambda!320297)))

(declare-fun bs!1380189 () Bool)

(assert (= bs!1380189 (and d!1839650 d!1839612)))

(assert (=> bs!1380189 (= lambda!320309 lambda!320291)))

(declare-fun bs!1380190 () Bool)

(assert (= bs!1380190 (and d!1839650 d!1839628)))

(assert (=> bs!1380190 (= lambda!320309 lambda!320300)))

(declare-fun bs!1380191 () Bool)

(assert (= bs!1380191 (and d!1839650 d!1839646)))

(assert (=> bs!1380191 (= lambda!320309 lambda!320307)))

(assert (=> d!1839650 (= (inv!83058 (h!70396 zl!343)) (forall!15011 (exprs!5808 (h!70396 zl!343)) lambda!320309))))

(declare-fun bs!1380192 () Bool)

(assert (= bs!1380192 d!1839650))

(declare-fun m!6775832 () Bool)

(assert (=> bs!1380192 m!6775832))

(assert (=> b!5857578 d!1839650))

(declare-fun d!1839652 () Bool)

(declare-fun c!1038970 () Bool)

(assert (=> d!1839652 (= c!1038970 (isEmpty!35809 (t!377442 s!2326)))))

(declare-fun e!3591936 () Bool)

(assert (=> d!1839652 (= (matchZipper!1990 lt!2305053 (t!377442 s!2326)) e!3591936)))

(declare-fun b!5857991 () Bool)

(assert (=> b!5857991 (= e!3591936 (nullableZipper!1763 lt!2305053))))

(declare-fun b!5857992 () Bool)

(assert (=> b!5857992 (= e!3591936 (matchZipper!1990 (derivationStepZipper!1923 lt!2305053 (head!12402 (t!377442 s!2326))) (tail!11487 (t!377442 s!2326))))))

(assert (= (and d!1839652 c!1038970) b!5857991))

(assert (= (and d!1839652 (not c!1038970)) b!5857992))

(assert (=> d!1839652 m!6775672))

(declare-fun m!6775834 () Bool)

(assert (=> b!5857991 m!6775834))

(assert (=> b!5857992 m!6775676))

(assert (=> b!5857992 m!6775676))

(declare-fun m!6775836 () Bool)

(assert (=> b!5857992 m!6775836))

(assert (=> b!5857992 m!6775680))

(assert (=> b!5857992 m!6775836))

(assert (=> b!5857992 m!6775680))

(declare-fun m!6775838 () Bool)

(assert (=> b!5857992 m!6775838))

(assert (=> b!5857585 d!1839652))

(declare-fun d!1839654 () Bool)

(declare-fun e!3591939 () Bool)

(assert (=> d!1839654 (= (matchZipper!1990 (set.union lt!2305053 lt!2305042) (t!377442 s!2326)) e!3591939)))

(declare-fun res!2465413 () Bool)

(assert (=> d!1839654 (=> res!2465413 e!3591939)))

(assert (=> d!1839654 (= res!2465413 (matchZipper!1990 lt!2305053 (t!377442 s!2326)))))

(declare-fun lt!2305159 () Unit!157119)

(declare-fun choose!44415 ((Set Context!10616) (Set Context!10616) List!64073) Unit!157119)

(assert (=> d!1839654 (= lt!2305159 (choose!44415 lt!2305053 lt!2305042 (t!377442 s!2326)))))

(assert (=> d!1839654 (= (lemmaZipperConcatMatchesSameAsBothZippers!825 lt!2305053 lt!2305042 (t!377442 s!2326)) lt!2305159)))

(declare-fun b!5857995 () Bool)

(assert (=> b!5857995 (= e!3591939 (matchZipper!1990 lt!2305042 (t!377442 s!2326)))))

(assert (= (and d!1839654 (not res!2465413)) b!5857995))

(declare-fun m!6775840 () Bool)

(assert (=> d!1839654 m!6775840))

(assert (=> d!1839654 m!6775524))

(declare-fun m!6775842 () Bool)

(assert (=> d!1839654 m!6775842))

(assert (=> b!5857995 m!6775522))

(assert (=> b!5857585 d!1839654))

(declare-fun d!1839656 () Bool)

(declare-fun e!3591942 () Bool)

(assert (=> d!1839656 e!3591942))

(declare-fun res!2465416 () Bool)

(assert (=> d!1839656 (=> (not res!2465416) (not e!3591942))))

(declare-fun lt!2305162 () List!64072)

(declare-fun noDuplicate!1789 (List!64072) Bool)

(assert (=> d!1839656 (= res!2465416 (noDuplicate!1789 lt!2305162))))

(declare-fun choose!44416 ((Set Context!10616)) List!64072)

(assert (=> d!1839656 (= lt!2305162 (choose!44416 z!1189))))

(assert (=> d!1839656 (= (toList!9708 z!1189) lt!2305162)))

(declare-fun b!5857998 () Bool)

(declare-fun content!11754 (List!64072) (Set Context!10616))

(assert (=> b!5857998 (= e!3591942 (= (content!11754 lt!2305162) z!1189))))

(assert (= (and d!1839656 res!2465416) b!5857998))

(declare-fun m!6775844 () Bool)

(assert (=> d!1839656 m!6775844))

(declare-fun m!6775846 () Bool)

(assert (=> d!1839656 m!6775846))

(declare-fun m!6775848 () Bool)

(assert (=> b!5857998 m!6775848))

(assert (=> b!5857574 d!1839656))

(declare-fun bs!1380193 () Bool)

(declare-fun b!5858006 () Bool)

(assert (= bs!1380193 (and b!5858006 b!5857718)))

(declare-fun lambda!320310 () Int)

(assert (=> bs!1380193 (= (and (= (reg!16253 r!7292) (reg!16253 (regTwo!32361 r!7292))) (= r!7292 (regTwo!32361 r!7292))) (= lambda!320310 lambda!320285))))

(declare-fun bs!1380194 () Bool)

(assert (= bs!1380194 (and b!5858006 b!5857713)))

(assert (=> bs!1380194 (not (= lambda!320310 lambda!320286))))

(declare-fun bs!1380195 () Bool)

(assert (= bs!1380195 (and b!5858006 b!5857775)))

(assert (=> bs!1380195 (= (and (= (reg!16253 r!7292) (reg!16253 (regOne!32361 r!7292))) (= r!7292 (regOne!32361 r!7292))) (= lambda!320310 lambda!320287))))

(declare-fun bs!1380196 () Bool)

(assert (= bs!1380196 (and b!5858006 b!5857770)))

(assert (=> bs!1380196 (not (= lambda!320310 lambda!320288))))

(assert (=> b!5858006 true))

(assert (=> b!5858006 true))

(declare-fun bs!1380197 () Bool)

(declare-fun b!5858001 () Bool)

(assert (= bs!1380197 (and b!5858001 b!5857718)))

(declare-fun lambda!320311 () Int)

(assert (=> bs!1380197 (not (= lambda!320311 lambda!320285))))

(declare-fun bs!1380198 () Bool)

(assert (= bs!1380198 (and b!5858001 b!5857713)))

(assert (=> bs!1380198 (= (and (= (regOne!32360 r!7292) (regOne!32360 (regTwo!32361 r!7292))) (= (regTwo!32360 r!7292) (regTwo!32360 (regTwo!32361 r!7292)))) (= lambda!320311 lambda!320286))))

(declare-fun bs!1380199 () Bool)

(assert (= bs!1380199 (and b!5858001 b!5857770)))

(assert (=> bs!1380199 (= (and (= (regOne!32360 r!7292) (regOne!32360 (regOne!32361 r!7292))) (= (regTwo!32360 r!7292) (regTwo!32360 (regOne!32361 r!7292)))) (= lambda!320311 lambda!320288))))

(declare-fun bs!1380200 () Bool)

(assert (= bs!1380200 (and b!5858001 b!5857775)))

(assert (=> bs!1380200 (not (= lambda!320311 lambda!320287))))

(declare-fun bs!1380201 () Bool)

(assert (= bs!1380201 (and b!5858001 b!5858006)))

(assert (=> bs!1380201 (not (= lambda!320311 lambda!320310))))

(assert (=> b!5858001 true))

(assert (=> b!5858001 true))

(declare-fun b!5857999 () Bool)

(declare-fun e!3591949 () Bool)

(declare-fun e!3591944 () Bool)

(assert (=> b!5857999 (= e!3591949 e!3591944)))

(declare-fun c!1038974 () Bool)

(assert (=> b!5857999 (= c!1038974 (is-Star!15924 r!7292))))

(declare-fun call!459086 () Bool)

(declare-fun bm!459080 () Bool)

(assert (=> bm!459080 (= call!459086 (Exists!2996 (ite c!1038974 lambda!320310 lambda!320311)))))

(declare-fun b!5858000 () Bool)

(declare-fun c!1038972 () Bool)

(assert (=> b!5858000 (= c!1038972 (is-Union!15924 r!7292))))

(declare-fun e!3591946 () Bool)

(assert (=> b!5858000 (= e!3591946 e!3591949)))

(assert (=> b!5858001 (= e!3591944 call!459086)))

(declare-fun b!5858002 () Bool)

(declare-fun res!2465418 () Bool)

(declare-fun e!3591945 () Bool)

(assert (=> b!5858002 (=> res!2465418 e!3591945)))

(declare-fun call!459085 () Bool)

(assert (=> b!5858002 (= res!2465418 call!459085)))

(assert (=> b!5858002 (= e!3591944 e!3591945)))

(declare-fun b!5858004 () Bool)

(declare-fun e!3591943 () Bool)

(assert (=> b!5858004 (= e!3591943 (matchRSpec!3025 (regTwo!32361 r!7292) s!2326))))

(declare-fun bm!459081 () Bool)

(assert (=> bm!459081 (= call!459085 (isEmpty!35809 s!2326))))

(declare-fun b!5858005 () Bool)

(assert (=> b!5858005 (= e!3591946 (= s!2326 (Cons!63949 (c!1038857 r!7292) Nil!63949)))))

(assert (=> b!5858006 (= e!3591945 call!459086)))

(declare-fun b!5858007 () Bool)

(assert (=> b!5858007 (= e!3591949 e!3591943)))

(declare-fun res!2465419 () Bool)

(assert (=> b!5858007 (= res!2465419 (matchRSpec!3025 (regOne!32361 r!7292) s!2326))))

(assert (=> b!5858007 (=> res!2465419 e!3591943)))

(declare-fun b!5858003 () Bool)

(declare-fun c!1038973 () Bool)

(assert (=> b!5858003 (= c!1038973 (is-ElementMatch!15924 r!7292))))

(declare-fun e!3591948 () Bool)

(assert (=> b!5858003 (= e!3591948 e!3591946)))

(declare-fun d!1839658 () Bool)

(declare-fun c!1038971 () Bool)

(assert (=> d!1839658 (= c!1038971 (is-EmptyExpr!15924 r!7292))))

(declare-fun e!3591947 () Bool)

(assert (=> d!1839658 (= (matchRSpec!3025 r!7292 s!2326) e!3591947)))

(declare-fun b!5858008 () Bool)

(assert (=> b!5858008 (= e!3591947 e!3591948)))

(declare-fun res!2465417 () Bool)

(assert (=> b!5858008 (= res!2465417 (not (is-EmptyLang!15924 r!7292)))))

(assert (=> b!5858008 (=> (not res!2465417) (not e!3591948))))

(declare-fun b!5858009 () Bool)

(assert (=> b!5858009 (= e!3591947 call!459085)))

(assert (= (and d!1839658 c!1038971) b!5858009))

(assert (= (and d!1839658 (not c!1038971)) b!5858008))

(assert (= (and b!5858008 res!2465417) b!5858003))

(assert (= (and b!5858003 c!1038973) b!5858005))

(assert (= (and b!5858003 (not c!1038973)) b!5858000))

(assert (= (and b!5858000 c!1038972) b!5858007))

(assert (= (and b!5858000 (not c!1038972)) b!5857999))

(assert (= (and b!5858007 (not res!2465419)) b!5858004))

(assert (= (and b!5857999 c!1038974) b!5858002))

(assert (= (and b!5857999 (not c!1038974)) b!5858001))

(assert (= (and b!5858002 (not res!2465418)) b!5858006))

(assert (= (or b!5858006 b!5858001) bm!459080))

(assert (= (or b!5858009 b!5858002) bm!459081))

(declare-fun m!6775850 () Bool)

(assert (=> bm!459080 m!6775850))

(assert (=> b!5858004 m!6775532))

(assert (=> bm!459081 m!6775660))

(assert (=> b!5858007 m!6775538))

(assert (=> b!5857575 d!1839658))

(declare-fun b!5858010 () Bool)

(declare-fun res!2465421 () Bool)

(declare-fun e!3591952 () Bool)

(assert (=> b!5858010 (=> (not res!2465421) (not e!3591952))))

(declare-fun call!459087 () Bool)

(assert (=> b!5858010 (= res!2465421 (not call!459087))))

(declare-fun b!5858011 () Bool)

(declare-fun e!3591953 () Bool)

(assert (=> b!5858011 (= e!3591953 (nullable!5924 r!7292))))

(declare-fun b!5858012 () Bool)

(declare-fun res!2465424 () Bool)

(declare-fun e!3591956 () Bool)

(assert (=> b!5858012 (=> res!2465424 e!3591956)))

(assert (=> b!5858012 (= res!2465424 (not (is-ElementMatch!15924 r!7292)))))

(declare-fun e!3591950 () Bool)

(assert (=> b!5858012 (= e!3591950 e!3591956)))

(declare-fun b!5858013 () Bool)

(declare-fun e!3591955 () Bool)

(assert (=> b!5858013 (= e!3591955 (not (= (head!12402 s!2326) (c!1038857 r!7292))))))

(declare-fun b!5858015 () Bool)

(declare-fun res!2465427 () Bool)

(assert (=> b!5858015 (=> res!2465427 e!3591955)))

(assert (=> b!5858015 (= res!2465427 (not (isEmpty!35809 (tail!11487 s!2326))))))

(declare-fun b!5858016 () Bool)

(declare-fun e!3591951 () Bool)

(assert (=> b!5858016 (= e!3591951 e!3591955)))

(declare-fun res!2465422 () Bool)

(assert (=> b!5858016 (=> res!2465422 e!3591955)))

(assert (=> b!5858016 (= res!2465422 call!459087)))

(declare-fun b!5858017 () Bool)

(assert (=> b!5858017 (= e!3591952 (= (head!12402 s!2326) (c!1038857 r!7292)))))

(declare-fun b!5858018 () Bool)

(declare-fun lt!2305163 () Bool)

(assert (=> b!5858018 (= e!3591950 (not lt!2305163))))

(declare-fun b!5858019 () Bool)

(declare-fun e!3591954 () Bool)

(assert (=> b!5858019 (= e!3591954 (= lt!2305163 call!459087))))

(declare-fun b!5858020 () Bool)

(declare-fun res!2465426 () Bool)

(assert (=> b!5858020 (=> res!2465426 e!3591956)))

(assert (=> b!5858020 (= res!2465426 e!3591952)))

(declare-fun res!2465420 () Bool)

(assert (=> b!5858020 (=> (not res!2465420) (not e!3591952))))

(assert (=> b!5858020 (= res!2465420 lt!2305163)))

(declare-fun b!5858021 () Bool)

(assert (=> b!5858021 (= e!3591954 e!3591950)))

(declare-fun c!1038975 () Bool)

(assert (=> b!5858021 (= c!1038975 (is-EmptyLang!15924 r!7292))))

(declare-fun b!5858022 () Bool)

(assert (=> b!5858022 (= e!3591953 (matchR!8107 (derivativeStep!4662 r!7292 (head!12402 s!2326)) (tail!11487 s!2326)))))

(declare-fun d!1839660 () Bool)

(assert (=> d!1839660 e!3591954))

(declare-fun c!1038976 () Bool)

(assert (=> d!1839660 (= c!1038976 (is-EmptyExpr!15924 r!7292))))

(assert (=> d!1839660 (= lt!2305163 e!3591953)))

(declare-fun c!1038977 () Bool)

(assert (=> d!1839660 (= c!1038977 (isEmpty!35809 s!2326))))

(assert (=> d!1839660 (validRegex!7660 r!7292)))

(assert (=> d!1839660 (= (matchR!8107 r!7292 s!2326) lt!2305163)))

(declare-fun b!5858014 () Bool)

(declare-fun res!2465425 () Bool)

(assert (=> b!5858014 (=> (not res!2465425) (not e!3591952))))

(assert (=> b!5858014 (= res!2465425 (isEmpty!35809 (tail!11487 s!2326)))))

(declare-fun bm!459082 () Bool)

(assert (=> bm!459082 (= call!459087 (isEmpty!35809 s!2326))))

(declare-fun b!5858023 () Bool)

(assert (=> b!5858023 (= e!3591956 e!3591951)))

(declare-fun res!2465423 () Bool)

(assert (=> b!5858023 (=> (not res!2465423) (not e!3591951))))

(assert (=> b!5858023 (= res!2465423 (not lt!2305163))))

(assert (= (and d!1839660 c!1038977) b!5858011))

(assert (= (and d!1839660 (not c!1038977)) b!5858022))

(assert (= (and d!1839660 c!1038976) b!5858019))

(assert (= (and d!1839660 (not c!1038976)) b!5858021))

(assert (= (and b!5858021 c!1038975) b!5858018))

(assert (= (and b!5858021 (not c!1038975)) b!5858012))

(assert (= (and b!5858012 (not res!2465424)) b!5858020))

(assert (= (and b!5858020 res!2465420) b!5858010))

(assert (= (and b!5858010 res!2465421) b!5858014))

(assert (= (and b!5858014 res!2465425) b!5858017))

(assert (= (and b!5858020 (not res!2465426)) b!5858023))

(assert (= (and b!5858023 res!2465423) b!5858016))

(assert (= (and b!5858016 (not res!2465422)) b!5858015))

(assert (= (and b!5858015 (not res!2465427)) b!5858013))

(assert (= (or b!5858019 b!5858010 b!5858016) bm!459082))

(assert (=> bm!459082 m!6775660))

(declare-fun m!6775852 () Bool)

(assert (=> b!5858011 m!6775852))

(assert (=> b!5858013 m!6775664))

(assert (=> b!5858022 m!6775664))

(assert (=> b!5858022 m!6775664))

(declare-fun m!6775854 () Bool)

(assert (=> b!5858022 m!6775854))

(assert (=> b!5858022 m!6775668))

(assert (=> b!5858022 m!6775854))

(assert (=> b!5858022 m!6775668))

(declare-fun m!6775856 () Bool)

(assert (=> b!5858022 m!6775856))

(assert (=> b!5858015 m!6775668))

(assert (=> b!5858015 m!6775668))

(assert (=> b!5858015 m!6775700))

(assert (=> d!1839660 m!6775660))

(assert (=> d!1839660 m!6775558))

(assert (=> b!5858017 m!6775664))

(assert (=> b!5858014 m!6775668))

(assert (=> b!5858014 m!6775668))

(assert (=> b!5858014 m!6775700))

(assert (=> b!5857575 d!1839660))

(declare-fun d!1839662 () Bool)

(assert (=> d!1839662 (= (matchR!8107 r!7292 s!2326) (matchRSpec!3025 r!7292 s!2326))))

(declare-fun lt!2305164 () Unit!157119)

(assert (=> d!1839662 (= lt!2305164 (choose!44412 r!7292 s!2326))))

(assert (=> d!1839662 (validRegex!7660 r!7292)))

(assert (=> d!1839662 (= (mainMatchTheorem!3025 r!7292 s!2326) lt!2305164)))

(declare-fun bs!1380202 () Bool)

(assert (= bs!1380202 d!1839662))

(assert (=> bs!1380202 m!6775518))

(assert (=> bs!1380202 m!6775516))

(declare-fun m!6775858 () Bool)

(assert (=> bs!1380202 m!6775858))

(assert (=> bs!1380202 m!6775558))

(assert (=> b!5857575 d!1839662))

(declare-fun b!5858035 () Bool)

(declare-fun e!3591965 () (Set Context!10616))

(assert (=> b!5858035 (= e!3591965 (set.insert lt!2305057 (as set.empty (Set Context!10616))))))

(declare-fun b!5858036 () Bool)

(declare-fun e!3591968 () (Set Context!10616))

(declare-fun call!459091 () (Set Context!10616))

(declare-fun call!459095 () (Set Context!10616))

(assert (=> b!5858036 (= e!3591968 (set.union call!459091 call!459095))))

(declare-fun c!1038982 () Bool)

(declare-fun c!1038985 () Bool)

(declare-fun bm!459085 () Bool)

(declare-fun call!459090 () List!64071)

(declare-fun c!1038983 () Bool)

(assert (=> bm!459085 (= call!459095 (derivationStepZipperDown!1190 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292)))) (ite (or c!1038983 c!1038985) lt!2305057 (Context!10617 call!459090)) (h!70397 s!2326)))))

(declare-fun call!459092 () List!64071)

(declare-fun bm!459086 () Bool)

(assert (=> bm!459086 (= call!459091 (derivationStepZipperDown!1190 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292)) (ite c!1038983 lt!2305057 (Context!10617 call!459092)) (h!70397 s!2326)))))

(declare-fun bm!459087 () Bool)

(assert (=> bm!459087 (= call!459092 ($colon$colon!1829 (exprs!5808 lt!2305057) (ite (or c!1038985 c!1038982) (regTwo!32360 r!7292) r!7292)))))

(declare-fun b!5858038 () Bool)

(declare-fun e!3591969 () (Set Context!10616))

(declare-fun call!459093 () (Set Context!10616))

(assert (=> b!5858038 (= e!3591969 call!459093)))

(declare-fun bm!459088 () Bool)

(declare-fun call!459094 () (Set Context!10616))

(assert (=> bm!459088 (= call!459093 call!459094)))

(declare-fun bm!459089 () Bool)

(assert (=> bm!459089 (= call!459094 call!459095)))

(declare-fun b!5858039 () Bool)

(declare-fun e!3591964 () (Set Context!10616))

(declare-fun e!3591966 () (Set Context!10616))

(assert (=> b!5858039 (= e!3591964 e!3591966)))

(assert (=> b!5858039 (= c!1038982 (is-Concat!24769 r!7292))))

(declare-fun b!5858040 () Bool)

(assert (=> b!5858040 (= e!3591966 call!459093)))

(declare-fun b!5858041 () Bool)

(assert (=> b!5858041 (= e!3591969 (as set.empty (Set Context!10616)))))

(declare-fun b!5858042 () Bool)

(assert (=> b!5858042 (= e!3591964 (set.union call!459091 call!459094))))

(declare-fun b!5858043 () Bool)

(declare-fun e!3591967 () Bool)

(assert (=> b!5858043 (= c!1038985 e!3591967)))

(declare-fun res!2465431 () Bool)

(assert (=> b!5858043 (=> (not res!2465431) (not e!3591967))))

(assert (=> b!5858043 (= res!2465431 (is-Concat!24769 r!7292))))

(assert (=> b!5858043 (= e!3591968 e!3591964)))

(declare-fun b!5858044 () Bool)

(assert (=> b!5858044 (= e!3591965 e!3591968)))

(assert (=> b!5858044 (= c!1038983 (is-Union!15924 r!7292))))

(declare-fun bm!459090 () Bool)

(assert (=> bm!459090 (= call!459090 call!459092)))

(declare-fun b!5858045 () Bool)

(declare-fun c!1038986 () Bool)

(assert (=> b!5858045 (= c!1038986 (is-Star!15924 r!7292))))

(assert (=> b!5858045 (= e!3591966 e!3591969)))

(declare-fun b!5858037 () Bool)

(assert (=> b!5858037 (= e!3591967 (nullable!5924 (regOne!32360 r!7292)))))

(declare-fun d!1839664 () Bool)

(declare-fun c!1038984 () Bool)

(assert (=> d!1839664 (= c!1038984 (and (is-ElementMatch!15924 r!7292) (= (c!1038857 r!7292) (h!70397 s!2326))))))

(assert (=> d!1839664 (= (derivationStepZipperDown!1190 r!7292 lt!2305057 (h!70397 s!2326)) e!3591965)))

(assert (= (and d!1839664 c!1038984) b!5858035))

(assert (= (and d!1839664 (not c!1038984)) b!5858044))

(assert (= (and b!5858044 c!1038983) b!5858036))

(assert (= (and b!5858044 (not c!1038983)) b!5858043))

(assert (= (and b!5858043 res!2465431) b!5858037))

(assert (= (and b!5858043 c!1038985) b!5858042))

(assert (= (and b!5858043 (not c!1038985)) b!5858039))

(assert (= (and b!5858039 c!1038982) b!5858040))

(assert (= (and b!5858039 (not c!1038982)) b!5858045))

(assert (= (and b!5858045 c!1038986) b!5858038))

(assert (= (and b!5858045 (not c!1038986)) b!5858041))

(assert (= (or b!5858040 b!5858038) bm!459090))

(assert (= (or b!5858040 b!5858038) bm!459088))

(assert (= (or b!5858042 bm!459090) bm!459087))

(assert (= (or b!5858042 bm!459088) bm!459089))

(assert (= (or b!5858036 bm!459089) bm!459085))

(assert (= (or b!5858036 b!5858042) bm!459086))

(declare-fun m!6775860 () Bool)

(assert (=> b!5858037 m!6775860))

(declare-fun m!6775862 () Bool)

(assert (=> bm!459087 m!6775862))

(assert (=> b!5858035 m!6775810))

(declare-fun m!6775864 () Bool)

(assert (=> bm!459085 m!6775864))

(declare-fun m!6775866 () Bool)

(assert (=> bm!459086 m!6775866))

(assert (=> b!5857586 d!1839664))

(declare-fun b!5858048 () Bool)

(declare-fun e!3591972 () Bool)

(assert (=> b!5858048 (= e!3591972 (nullable!5924 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))))

(declare-fun b!5858049 () Bool)

(declare-fun e!3591971 () (Set Context!10616))

(declare-fun e!3591970 () (Set Context!10616))

(assert (=> b!5858049 (= e!3591971 e!3591970)))

(declare-fun c!1038987 () Bool)

(assert (=> b!5858049 (= c!1038987 (is-Cons!63947 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))))

(declare-fun b!5858050 () Bool)

(declare-fun call!459096 () (Set Context!10616))

(assert (=> b!5858050 (= e!3591971 (set.union call!459096 (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (h!70397 s!2326))))))

(declare-fun d!1839666 () Bool)

(declare-fun c!1038988 () Bool)

(assert (=> d!1839666 (= c!1038988 e!3591972)))

(declare-fun res!2465432 () Bool)

(assert (=> d!1839666 (=> (not res!2465432) (not e!3591972))))

(assert (=> d!1839666 (= res!2465432 (is-Cons!63947 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))))

(assert (=> d!1839666 (= (derivationStepZipperUp!1116 (Context!10617 (Cons!63947 r!7292 Nil!63947)) (h!70397 s!2326)) e!3591971)))

(declare-fun bm!459091 () Bool)

(assert (=> bm!459091 (= call!459096 (derivationStepZipperDown!1190 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))) (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (h!70397 s!2326)))))

(declare-fun b!5858051 () Bool)

(assert (=> b!5858051 (= e!3591970 call!459096)))

(declare-fun b!5858052 () Bool)

(assert (=> b!5858052 (= e!3591970 (as set.empty (Set Context!10616)))))

(assert (= (and d!1839666 res!2465432) b!5858048))

(assert (= (and d!1839666 c!1038988) b!5858050))

(assert (= (and d!1839666 (not c!1038988)) b!5858049))

(assert (= (and b!5858049 c!1038987) b!5858051))

(assert (= (and b!5858049 (not c!1038987)) b!5858052))

(assert (= (or b!5858050 b!5858051) bm!459091))

(declare-fun m!6775868 () Bool)

(assert (=> b!5858048 m!6775868))

(declare-fun m!6775870 () Bool)

(assert (=> b!5858050 m!6775870))

(declare-fun m!6775872 () Bool)

(assert (=> bm!459091 m!6775872))

(assert (=> b!5857586 d!1839666))

(declare-fun b!5858068 () Bool)

(declare-fun e!3591975 () Bool)

(declare-fun tp!1620439 () Bool)

(declare-fun tp!1620438 () Bool)

(assert (=> b!5858068 (= e!3591975 (and tp!1620439 tp!1620438))))

(declare-fun b!5858067 () Bool)

(declare-fun tp!1620435 () Bool)

(assert (=> b!5858067 (= e!3591975 tp!1620435)))

(assert (=> b!5857577 (= tp!1620392 e!3591975)))

(declare-fun b!5858065 () Bool)

(assert (=> b!5858065 (= e!3591975 tp_is_empty!41101)))

(declare-fun b!5858066 () Bool)

(declare-fun tp!1620436 () Bool)

(declare-fun tp!1620437 () Bool)

(assert (=> b!5858066 (= e!3591975 (and tp!1620436 tp!1620437))))

(assert (= (and b!5857577 (is-ElementMatch!15924 (regOne!32361 r!7292))) b!5858065))

(assert (= (and b!5857577 (is-Concat!24769 (regOne!32361 r!7292))) b!5858066))

(assert (= (and b!5857577 (is-Star!15924 (regOne!32361 r!7292))) b!5858067))

(assert (= (and b!5857577 (is-Union!15924 (regOne!32361 r!7292))) b!5858068))

(declare-fun b!5858072 () Bool)

(declare-fun e!3591976 () Bool)

(declare-fun tp!1620444 () Bool)

(declare-fun tp!1620443 () Bool)

(assert (=> b!5858072 (= e!3591976 (and tp!1620444 tp!1620443))))

(declare-fun b!5858071 () Bool)

(declare-fun tp!1620440 () Bool)

(assert (=> b!5858071 (= e!3591976 tp!1620440)))

(assert (=> b!5857577 (= tp!1620385 e!3591976)))

(declare-fun b!5858069 () Bool)

(assert (=> b!5858069 (= e!3591976 tp_is_empty!41101)))

(declare-fun b!5858070 () Bool)

(declare-fun tp!1620441 () Bool)

(declare-fun tp!1620442 () Bool)

(assert (=> b!5858070 (= e!3591976 (and tp!1620441 tp!1620442))))

(assert (= (and b!5857577 (is-ElementMatch!15924 (regTwo!32361 r!7292))) b!5858069))

(assert (= (and b!5857577 (is-Concat!24769 (regTwo!32361 r!7292))) b!5858070))

(assert (= (and b!5857577 (is-Star!15924 (regTwo!32361 r!7292))) b!5858071))

(assert (= (and b!5857577 (is-Union!15924 (regTwo!32361 r!7292))) b!5858072))

(declare-fun condSetEmpty!39713 () Bool)

(assert (=> setNonEmpty!39707 (= condSetEmpty!39713 (= setRest!39707 (as set.empty (Set Context!10616))))))

(declare-fun setRes!39713 () Bool)

(assert (=> setNonEmpty!39707 (= tp!1620390 setRes!39713)))

(declare-fun setIsEmpty!39713 () Bool)

(assert (=> setIsEmpty!39713 setRes!39713))

(declare-fun setNonEmpty!39713 () Bool)

(declare-fun setElem!39713 () Context!10616)

(declare-fun e!3591979 () Bool)

(declare-fun tp!1620450 () Bool)

(assert (=> setNonEmpty!39713 (= setRes!39713 (and tp!1620450 (inv!83058 setElem!39713) e!3591979))))

(declare-fun setRest!39713 () (Set Context!10616))

(assert (=> setNonEmpty!39713 (= setRest!39707 (set.union (set.insert setElem!39713 (as set.empty (Set Context!10616))) setRest!39713))))

(declare-fun b!5858077 () Bool)

(declare-fun tp!1620449 () Bool)

(assert (=> b!5858077 (= e!3591979 tp!1620449)))

(assert (= (and setNonEmpty!39707 condSetEmpty!39713) setIsEmpty!39713))

(assert (= (and setNonEmpty!39707 (not condSetEmpty!39713)) setNonEmpty!39713))

(assert (= setNonEmpty!39713 b!5858077))

(declare-fun m!6775874 () Bool)

(assert (=> setNonEmpty!39713 m!6775874))

(declare-fun b!5858082 () Bool)

(declare-fun e!3591982 () Bool)

(declare-fun tp!1620453 () Bool)

(assert (=> b!5858082 (= e!3591982 (and tp_is_empty!41101 tp!1620453))))

(assert (=> b!5857582 (= tp!1620394 e!3591982)))

(assert (= (and b!5857582 (is-Cons!63949 (t!377442 s!2326))) b!5858082))

(declare-fun b!5858090 () Bool)

(declare-fun e!3591988 () Bool)

(declare-fun tp!1620458 () Bool)

(assert (=> b!5858090 (= e!3591988 tp!1620458)))

(declare-fun b!5858089 () Bool)

(declare-fun e!3591987 () Bool)

(declare-fun tp!1620459 () Bool)

(assert (=> b!5858089 (= e!3591987 (and (inv!83058 (h!70396 (t!377441 zl!343))) e!3591988 tp!1620459))))

(assert (=> b!5857578 (= tp!1620393 e!3591987)))

(assert (= b!5858089 b!5858090))

(assert (= (and b!5857578 (is-Cons!63948 (t!377441 zl!343))) b!5858089))

(declare-fun m!6775880 () Bool)

(assert (=> b!5858089 m!6775880))

(declare-fun b!5858094 () Bool)

(declare-fun e!3591989 () Bool)

(declare-fun tp!1620464 () Bool)

(declare-fun tp!1620463 () Bool)

(assert (=> b!5858094 (= e!3591989 (and tp!1620464 tp!1620463))))

(declare-fun b!5858093 () Bool)

(declare-fun tp!1620460 () Bool)

(assert (=> b!5858093 (= e!3591989 tp!1620460)))

(assert (=> b!5857580 (= tp!1620388 e!3591989)))

(declare-fun b!5858091 () Bool)

(assert (=> b!5858091 (= e!3591989 tp_is_empty!41101)))

(declare-fun b!5858092 () Bool)

(declare-fun tp!1620461 () Bool)

(declare-fun tp!1620462 () Bool)

(assert (=> b!5858092 (= e!3591989 (and tp!1620461 tp!1620462))))

(assert (= (and b!5857580 (is-ElementMatch!15924 (regOne!32360 r!7292))) b!5858091))

(assert (= (and b!5857580 (is-Concat!24769 (regOne!32360 r!7292))) b!5858092))

(assert (= (and b!5857580 (is-Star!15924 (regOne!32360 r!7292))) b!5858093))

(assert (= (and b!5857580 (is-Union!15924 (regOne!32360 r!7292))) b!5858094))

(declare-fun b!5858098 () Bool)

(declare-fun e!3591990 () Bool)

(declare-fun tp!1620469 () Bool)

(declare-fun tp!1620468 () Bool)

(assert (=> b!5858098 (= e!3591990 (and tp!1620469 tp!1620468))))

(declare-fun b!5858097 () Bool)

(declare-fun tp!1620465 () Bool)

(assert (=> b!5858097 (= e!3591990 tp!1620465)))

(assert (=> b!5857580 (= tp!1620391 e!3591990)))

(declare-fun b!5858095 () Bool)

(assert (=> b!5858095 (= e!3591990 tp_is_empty!41101)))

(declare-fun b!5858096 () Bool)

(declare-fun tp!1620466 () Bool)

(declare-fun tp!1620467 () Bool)

(assert (=> b!5858096 (= e!3591990 (and tp!1620466 tp!1620467))))

(assert (= (and b!5857580 (is-ElementMatch!15924 (regTwo!32360 r!7292))) b!5858095))

(assert (= (and b!5857580 (is-Concat!24769 (regTwo!32360 r!7292))) b!5858096))

(assert (= (and b!5857580 (is-Star!15924 (regTwo!32360 r!7292))) b!5858097))

(assert (= (and b!5857580 (is-Union!15924 (regTwo!32360 r!7292))) b!5858098))

(declare-fun b!5858103 () Bool)

(declare-fun e!3591993 () Bool)

(declare-fun tp!1620474 () Bool)

(declare-fun tp!1620475 () Bool)

(assert (=> b!5858103 (= e!3591993 (and tp!1620474 tp!1620475))))

(assert (=> b!5857594 (= tp!1620386 e!3591993)))

(assert (= (and b!5857594 (is-Cons!63947 (exprs!5808 setElem!39707))) b!5858103))

(declare-fun b!5858104 () Bool)

(declare-fun e!3591994 () Bool)

(declare-fun tp!1620476 () Bool)

(declare-fun tp!1620477 () Bool)

(assert (=> b!5858104 (= e!3591994 (and tp!1620476 tp!1620477))))

(assert (=> b!5857576 (= tp!1620389 e!3591994)))

(assert (= (and b!5857576 (is-Cons!63947 (exprs!5808 (h!70396 zl!343)))) b!5858104))

(declare-fun b!5858108 () Bool)

(declare-fun e!3591995 () Bool)

(declare-fun tp!1620482 () Bool)

(declare-fun tp!1620481 () Bool)

(assert (=> b!5858108 (= e!3591995 (and tp!1620482 tp!1620481))))

(declare-fun b!5858107 () Bool)

(declare-fun tp!1620478 () Bool)

(assert (=> b!5858107 (= e!3591995 tp!1620478)))

(assert (=> b!5857590 (= tp!1620387 e!3591995)))

(declare-fun b!5858105 () Bool)

(assert (=> b!5858105 (= e!3591995 tp_is_empty!41101)))

(declare-fun b!5858106 () Bool)

(declare-fun tp!1620479 () Bool)

(declare-fun tp!1620480 () Bool)

(assert (=> b!5858106 (= e!3591995 (and tp!1620479 tp!1620480))))

(assert (= (and b!5857590 (is-ElementMatch!15924 (reg!16253 r!7292))) b!5858105))

(assert (= (and b!5857590 (is-Concat!24769 (reg!16253 r!7292))) b!5858106))

(assert (= (and b!5857590 (is-Star!15924 (reg!16253 r!7292))) b!5858107))

(assert (= (and b!5857590 (is-Union!15924 (reg!16253 r!7292))) b!5858108))

(declare-fun b_lambda!220481 () Bool)

(assert (= b_lambda!220477 (or b!5857591 b_lambda!220481)))

(declare-fun bs!1380204 () Bool)

(declare-fun d!1839670 () Bool)

(assert (= bs!1380204 (and d!1839670 b!5857591)))

(assert (=> bs!1380204 (= (dynLambda!25003 lambda!320275 lt!2305055) (derivationStepZipperUp!1116 lt!2305055 (h!70397 s!2326)))))

(assert (=> bs!1380204 m!6775554))

(assert (=> d!1839618 d!1839670))

(declare-fun b_lambda!220483 () Bool)

(assert (= b_lambda!220479 (or b!5857591 b_lambda!220483)))

(declare-fun bs!1380205 () Bool)

(declare-fun d!1839672 () Bool)

(assert (= bs!1380205 (and d!1839672 b!5857591)))

(assert (=> bs!1380205 (= (dynLambda!25003 lambda!320275 (h!70396 zl!343)) (derivationStepZipperUp!1116 (h!70396 zl!343) (h!70397 s!2326)))))

(assert (=> bs!1380205 m!6775574))

(assert (=> d!1839638 d!1839672))

(push 1)

(assert (not b!5857991))

(assert (not d!1839614))

(assert (not bm!459086))

(assert (not b!5857869))

(assert (not bm!459051))

(assert (not bm!459087))

(assert (not b!5857783))

(assert (not bm!459085))

(assert (not b!5857874))

(assert (not d!1839628))

(assert (not b!5857989))

(assert (not b!5857822))

(assert (not d!1839650))

(assert (not b!5858104))

(assert (not b!5858071))

(assert (not b!5857780))

(assert (not b!5857675))

(assert (not b_lambda!220481))

(assert (not b!5858090))

(assert (not d!1839656))

(assert (not d!1839604))

(assert (not bm!459071))

(assert (not b!5857881))

(assert (not b!5857759))

(assert (not b!5857676))

(assert (not d!1839634))

(assert (not b!5858048))

(assert (not d!1839600))

(assert (not b!5858068))

(assert (not b!5857821))

(assert (not b!5858050))

(assert (not b!5858106))

(assert (not b!5857995))

(assert (not b!5858089))

(assert (not b!5858098))

(assert (not b!5857766))

(assert (not b!5857877))

(assert (not b!5857773))

(assert (not bm!459066))

(assert (not b!5857757))

(assert tp_is_empty!41101)

(assert (not d!1839646))

(assert (not d!1839660))

(assert (not b!5858013))

(assert (not b!5857786))

(assert (not b!5858093))

(assert (not bm!459049))

(assert (not d!1839624))

(assert (not b!5858077))

(assert (not bm!459064))

(assert (not bm!459070))

(assert (not d!1839654))

(assert (not b_lambda!220483))

(assert (not b!5858108))

(assert (not b!5857782))

(assert (not b!5857791))

(assert (not d!1839596))

(assert (not b!5857870))

(assert (not b!5858014))

(assert (not b!5857906))

(assert (not b!5857755))

(assert (not bm!459091))

(assert (not d!1839632))

(assert (not bm!459072))

(assert (not bs!1380204))

(assert (not b!5857815))

(assert (not bm!459082))

(assert (not b!5857965))

(assert (not b!5857817))

(assert (not bm!459034))

(assert (not b!5857784))

(assert (not bm!459081))

(assert (not b!5857876))

(assert (not bm!459080))

(assert (not b!5857871))

(assert (not bm!459036))

(assert (not b!5858097))

(assert (not d!1839662))

(assert (not d!1839608))

(assert (not b!5858096))

(assert (not b!5857844))

(assert (not b!5858070))

(assert (not bm!459035))

(assert (not d!1839618))

(assert (not b!5857677))

(assert (not b!5857758))

(assert (not b!5857716))

(assert (not b!5858103))

(assert (not b!5858004))

(assert (not setNonEmpty!39713))

(assert (not d!1839652))

(assert (not b!5857998))

(assert (not b!5858011))

(assert (not b!5857816))

(assert (not bm!459030))

(assert (not bs!1380205))

(assert (not bm!459037))

(assert (not b!5857841))

(assert (not b!5857992))

(assert (not b!5857878))

(assert (not b!5857776))

(assert (not b!5857846))

(assert (not b!5858092))

(assert (not b!5858107))

(assert (not bm!459041))

(assert (not b!5857976))

(assert (not b!5858017))

(assert (not b!5857839))

(assert (not b!5857761))

(assert (not d!1839610))

(assert (not bm!459031))

(assert (not bm!459040))

(assert (not d!1839616))

(assert (not bm!459042))

(assert (not b!5858067))

(assert (not d!1839594))

(assert (not b!5858022))

(assert (not bm!459065))

(assert (not b!5858066))

(assert (not b!5858007))

(assert (not b!5857719))

(assert (not b!5858072))

(assert (not d!1839648))

(assert (not b!5857827))

(assert (not d!1839638))

(assert (not b!5857820))

(assert (not b!5858015))

(assert (not b!5857883))

(assert (not b!5857990))

(assert (not b!5858082))

(assert (not b!5857819))

(assert (not b!5858037))

(assert (not d!1839602))

(assert (not b!5858094))

(assert (not b!5857678))

(assert (not d!1839612))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5858453 () Bool)

(declare-fun e!3592189 () (Set Context!10616))

(assert (=> b!5858453 (= e!3592189 (set.insert (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))) (as set.empty (Set Context!10616))))))

(declare-fun b!5858454 () Bool)

(declare-fun e!3592192 () (Set Context!10616))

(declare-fun call!459152 () (Set Context!10616))

(declare-fun call!459156 () (Set Context!10616))

(assert (=> b!5858454 (= e!3592192 (set.union call!459152 call!459156))))

(declare-fun c!1039091 () Bool)

(declare-fun c!1039090 () Bool)

(declare-fun c!1039093 () Bool)

(declare-fun bm!459146 () Bool)

(declare-fun call!459151 () List!64071)

(assert (=> bm!459146 (= call!459156 (derivationStepZipperDown!1190 (ite c!1039091 (regTwo!32361 (h!70395 (exprs!5808 (h!70396 zl!343)))) (ite c!1039093 (regTwo!32360 (h!70395 (exprs!5808 (h!70396 zl!343)))) (ite c!1039090 (regOne!32360 (h!70395 (exprs!5808 (h!70396 zl!343)))) (reg!16253 (h!70395 (exprs!5808 (h!70396 zl!343))))))) (ite (or c!1039091 c!1039093) (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))) (Context!10617 call!459151)) (h!70397 s!2326)))))

(declare-fun call!459153 () List!64071)

(declare-fun bm!459147 () Bool)

(assert (=> bm!459147 (= call!459152 (derivationStepZipperDown!1190 (ite c!1039091 (regOne!32361 (h!70395 (exprs!5808 (h!70396 zl!343)))) (regOne!32360 (h!70395 (exprs!5808 (h!70396 zl!343))))) (ite c!1039091 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))) (Context!10617 call!459153)) (h!70397 s!2326)))))

(declare-fun bm!459148 () Bool)

(assert (=> bm!459148 (= call!459153 ($colon$colon!1829 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343))))) (ite (or c!1039093 c!1039090) (regTwo!32360 (h!70395 (exprs!5808 (h!70396 zl!343)))) (h!70395 (exprs!5808 (h!70396 zl!343))))))))

(declare-fun b!5858456 () Bool)

(declare-fun e!3592193 () (Set Context!10616))

(declare-fun call!459154 () (Set Context!10616))

(assert (=> b!5858456 (= e!3592193 call!459154)))

(declare-fun bm!459149 () Bool)

(declare-fun call!459155 () (Set Context!10616))

(assert (=> bm!459149 (= call!459154 call!459155)))

(declare-fun bm!459150 () Bool)

(assert (=> bm!459150 (= call!459155 call!459156)))

(declare-fun b!5858457 () Bool)

(declare-fun e!3592188 () (Set Context!10616))

(declare-fun e!3592190 () (Set Context!10616))

(assert (=> b!5858457 (= e!3592188 e!3592190)))

(assert (=> b!5858457 (= c!1039090 (is-Concat!24769 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5858458 () Bool)

(assert (=> b!5858458 (= e!3592190 call!459154)))

(declare-fun b!5858459 () Bool)

(assert (=> b!5858459 (= e!3592193 (as set.empty (Set Context!10616)))))

(declare-fun b!5858460 () Bool)

(assert (=> b!5858460 (= e!3592188 (set.union call!459152 call!459155))))

(declare-fun b!5858461 () Bool)

(declare-fun e!3592191 () Bool)

(assert (=> b!5858461 (= c!1039093 e!3592191)))

(declare-fun res!2465523 () Bool)

(assert (=> b!5858461 (=> (not res!2465523) (not e!3592191))))

(assert (=> b!5858461 (= res!2465523 (is-Concat!24769 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(assert (=> b!5858461 (= e!3592192 e!3592188)))

(declare-fun b!5858462 () Bool)

(assert (=> b!5858462 (= e!3592189 e!3592192)))

(assert (=> b!5858462 (= c!1039091 (is-Union!15924 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun bm!459151 () Bool)

(assert (=> bm!459151 (= call!459151 call!459153)))

(declare-fun b!5858463 () Bool)

(declare-fun c!1039094 () Bool)

(assert (=> b!5858463 (= c!1039094 (is-Star!15924 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(assert (=> b!5858463 (= e!3592190 e!3592193)))

(declare-fun b!5858455 () Bool)

(assert (=> b!5858455 (= e!3592191 (nullable!5924 (regOne!32360 (h!70395 (exprs!5808 (h!70396 zl!343))))))))

(declare-fun d!1839746 () Bool)

(declare-fun c!1039092 () Bool)

(assert (=> d!1839746 (= c!1039092 (and (is-ElementMatch!15924 (h!70395 (exprs!5808 (h!70396 zl!343)))) (= (c!1038857 (h!70395 (exprs!5808 (h!70396 zl!343)))) (h!70397 s!2326))))))

(assert (=> d!1839746 (= (derivationStepZipperDown!1190 (h!70395 (exprs!5808 (h!70396 zl!343))) (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))) (h!70397 s!2326)) e!3592189)))

(assert (= (and d!1839746 c!1039092) b!5858453))

(assert (= (and d!1839746 (not c!1039092)) b!5858462))

(assert (= (and b!5858462 c!1039091) b!5858454))

(assert (= (and b!5858462 (not c!1039091)) b!5858461))

(assert (= (and b!5858461 res!2465523) b!5858455))

(assert (= (and b!5858461 c!1039093) b!5858460))

(assert (= (and b!5858461 (not c!1039093)) b!5858457))

(assert (= (and b!5858457 c!1039090) b!5858458))

(assert (= (and b!5858457 (not c!1039090)) b!5858463))

(assert (= (and b!5858463 c!1039094) b!5858456))

(assert (= (and b!5858463 (not c!1039094)) b!5858459))

(assert (= (or b!5858458 b!5858456) bm!459151))

(assert (= (or b!5858458 b!5858456) bm!459149))

(assert (= (or b!5858460 bm!459151) bm!459148))

(assert (= (or b!5858460 bm!459149) bm!459150))

(assert (= (or b!5858454 bm!459150) bm!459146))

(assert (= (or b!5858454 b!5858460) bm!459147))

(declare-fun m!6776096 () Bool)

(assert (=> b!5858455 m!6776096))

(declare-fun m!6776098 () Bool)

(assert (=> bm!459148 m!6776098))

(declare-fun m!6776100 () Bool)

(assert (=> b!5858453 m!6776100))

(declare-fun m!6776102 () Bool)

(assert (=> bm!459146 m!6776102))

(declare-fun m!6776104 () Bool)

(assert (=> bm!459147 m!6776104))

(assert (=> bm!459042 d!1839746))

(declare-fun d!1839748 () Bool)

(declare-fun c!1039095 () Bool)

(assert (=> d!1839748 (= c!1039095 (isEmpty!35809 (tail!11487 (t!377442 s!2326))))))

(declare-fun e!3592194 () Bool)

(assert (=> d!1839748 (= (matchZipper!1990 (derivationStepZipper!1923 lt!2305041 (head!12402 (t!377442 s!2326))) (tail!11487 (t!377442 s!2326))) e!3592194)))

(declare-fun b!5858464 () Bool)

(assert (=> b!5858464 (= e!3592194 (nullableZipper!1763 (derivationStepZipper!1923 lt!2305041 (head!12402 (t!377442 s!2326)))))))

(declare-fun b!5858465 () Bool)

(assert (=> b!5858465 (= e!3592194 (matchZipper!1990 (derivationStepZipper!1923 (derivationStepZipper!1923 lt!2305041 (head!12402 (t!377442 s!2326))) (head!12402 (tail!11487 (t!377442 s!2326)))) (tail!11487 (tail!11487 (t!377442 s!2326)))))))

(assert (= (and d!1839748 c!1039095) b!5858464))

(assert (= (and d!1839748 (not c!1039095)) b!5858465))

(assert (=> d!1839748 m!6775680))

(declare-fun m!6776106 () Bool)

(assert (=> d!1839748 m!6776106))

(assert (=> b!5858464 m!6775678))

(declare-fun m!6776108 () Bool)

(assert (=> b!5858464 m!6776108))

(assert (=> b!5858465 m!6775680))

(declare-fun m!6776110 () Bool)

(assert (=> b!5858465 m!6776110))

(assert (=> b!5858465 m!6775678))

(assert (=> b!5858465 m!6776110))

(declare-fun m!6776112 () Bool)

(assert (=> b!5858465 m!6776112))

(assert (=> b!5858465 m!6775680))

(declare-fun m!6776114 () Bool)

(assert (=> b!5858465 m!6776114))

(assert (=> b!5858465 m!6776112))

(assert (=> b!5858465 m!6776114))

(declare-fun m!6776116 () Bool)

(assert (=> b!5858465 m!6776116))

(assert (=> b!5857678 d!1839748))

(declare-fun bs!1380250 () Bool)

(declare-fun d!1839750 () Bool)

(assert (= bs!1380250 (and d!1839750 b!5857591)))

(declare-fun lambda!320335 () Int)

(assert (=> bs!1380250 (= (= (head!12402 (t!377442 s!2326)) (h!70397 s!2326)) (= lambda!320335 lambda!320275))))

(declare-fun bs!1380251 () Bool)

(assert (= bs!1380251 (and d!1839750 d!1839632)))

(assert (=> bs!1380251 (= (= (head!12402 (t!377442 s!2326)) (h!70397 s!2326)) (= lambda!320335 lambda!320303))))

(assert (=> d!1839750 true))

(assert (=> d!1839750 (= (derivationStepZipper!1923 lt!2305041 (head!12402 (t!377442 s!2326))) (flatMap!1455 lt!2305041 lambda!320335))))

(declare-fun bs!1380252 () Bool)

(assert (= bs!1380252 d!1839750))

(declare-fun m!6776118 () Bool)

(assert (=> bs!1380252 m!6776118))

(assert (=> b!5857678 d!1839750))

(declare-fun d!1839752 () Bool)

(assert (=> d!1839752 (= (head!12402 (t!377442 s!2326)) (h!70397 (t!377442 s!2326)))))

(assert (=> b!5857678 d!1839752))

(declare-fun d!1839754 () Bool)

(assert (=> d!1839754 (= (tail!11487 (t!377442 s!2326)) (t!377442 (t!377442 s!2326)))))

(assert (=> b!5857678 d!1839754))

(declare-fun d!1839756 () Bool)

(declare-fun c!1039096 () Bool)

(assert (=> d!1839756 (= c!1039096 (isEmpty!35809 (t!377442 s!2326)))))

(declare-fun e!3592195 () Bool)

(assert (=> d!1839756 (= (matchZipper!1990 (set.union lt!2305053 lt!2305042) (t!377442 s!2326)) e!3592195)))

(declare-fun b!5858466 () Bool)

(assert (=> b!5858466 (= e!3592195 (nullableZipper!1763 (set.union lt!2305053 lt!2305042)))))

(declare-fun b!5858467 () Bool)

(assert (=> b!5858467 (= e!3592195 (matchZipper!1990 (derivationStepZipper!1923 (set.union lt!2305053 lt!2305042) (head!12402 (t!377442 s!2326))) (tail!11487 (t!377442 s!2326))))))

(assert (= (and d!1839756 c!1039096) b!5858466))

(assert (= (and d!1839756 (not c!1039096)) b!5858467))

(assert (=> d!1839756 m!6775672))

(declare-fun m!6776120 () Bool)

(assert (=> b!5858466 m!6776120))

(assert (=> b!5858467 m!6775676))

(assert (=> b!5858467 m!6775676))

(declare-fun m!6776122 () Bool)

(assert (=> b!5858467 m!6776122))

(assert (=> b!5858467 m!6775680))

(assert (=> b!5858467 m!6776122))

(assert (=> b!5858467 m!6775680))

(declare-fun m!6776124 () Bool)

(assert (=> b!5858467 m!6776124))

(assert (=> d!1839654 d!1839756))

(assert (=> d!1839654 d!1839652))

(declare-fun d!1839758 () Bool)

(declare-fun e!3592198 () Bool)

(assert (=> d!1839758 (= (matchZipper!1990 (set.union lt!2305053 lt!2305042) (t!377442 s!2326)) e!3592198)))

(declare-fun res!2465526 () Bool)

(assert (=> d!1839758 (=> res!2465526 e!3592198)))

(assert (=> d!1839758 (= res!2465526 (matchZipper!1990 lt!2305053 (t!377442 s!2326)))))

(assert (=> d!1839758 true))

(declare-fun _$48!1428 () Unit!157119)

(assert (=> d!1839758 (= (choose!44415 lt!2305053 lt!2305042 (t!377442 s!2326)) _$48!1428)))

(declare-fun b!5858470 () Bool)

(assert (=> b!5858470 (= e!3592198 (matchZipper!1990 lt!2305042 (t!377442 s!2326)))))

(assert (= (and d!1839758 (not res!2465526)) b!5858470))

(assert (=> d!1839758 m!6775840))

(assert (=> d!1839758 m!6775524))

(assert (=> b!5858470 m!6775522))

(assert (=> d!1839654 d!1839758))

(declare-fun d!1839760 () Bool)

(assert (=> d!1839760 (= (isEmptyLang!1367 lt!2305146) (is-EmptyLang!15924 lt!2305146))))

(assert (=> b!5857820 d!1839760))

(declare-fun d!1839762 () Bool)

(assert (=> d!1839762 (= (isEmpty!35810 (unfocusZipperList!1345 zl!343)) (is-Nil!63947 (unfocusZipperList!1345 zl!343)))))

(assert (=> b!5857816 d!1839762))

(declare-fun d!1839764 () Bool)

(assert (=> d!1839764 (= (isEmpty!35810 (t!377440 (exprs!5808 (h!70396 zl!343)))) (is-Nil!63947 (t!377440 (exprs!5808 (h!70396 zl!343)))))))

(assert (=> b!5857877 d!1839764))

(assert (=> bs!1380204 d!1839622))

(declare-fun d!1839766 () Bool)

(assert (=> d!1839766 (= ($colon$colon!1829 (exprs!5808 lt!2305057) (ite (or c!1038962 c!1038959) (regTwo!32360 (regTwo!32361 r!7292)) (regTwo!32361 r!7292))) (Cons!63947 (ite (or c!1038962 c!1038959) (regTwo!32360 (regTwo!32361 r!7292)) (regTwo!32361 r!7292)) (exprs!5808 lt!2305057)))))

(assert (=> bm!459066 d!1839766))

(declare-fun d!1839768 () Bool)

(assert (=> d!1839768 (= (head!12402 s!2326) (h!70397 s!2326))))

(assert (=> b!5858017 d!1839768))

(assert (=> b!5857995 d!1839648))

(declare-fun b!5858471 () Bool)

(declare-fun e!3592200 () (Set Context!10616))

(assert (=> b!5858471 (= e!3592200 (set.insert (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (as set.empty (Set Context!10616))))))

(declare-fun b!5858472 () Bool)

(declare-fun e!3592203 () (Set Context!10616))

(declare-fun call!459158 () (Set Context!10616))

(declare-fun call!459162 () (Set Context!10616))

(assert (=> b!5858472 (= e!3592203 (set.union call!459158 call!459162))))

(declare-fun c!1039097 () Bool)

(declare-fun call!459157 () List!64071)

(declare-fun c!1039098 () Bool)

(declare-fun c!1039100 () Bool)

(declare-fun bm!459152 () Bool)

(assert (=> bm!459152 (= call!459162 (derivationStepZipperDown!1190 (ite c!1039098 (regTwo!32361 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (ite c!1039100 (regTwo!32360 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (ite c!1039097 (regOne!32360 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (reg!16253 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))))) (ite (or c!1039098 c!1039100) (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (Context!10617 call!459157)) (h!70397 s!2326)))))

(declare-fun call!459159 () List!64071)

(declare-fun bm!459153 () Bool)

(assert (=> bm!459153 (= call!459158 (derivationStepZipperDown!1190 (ite c!1039098 (regOne!32361 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (regOne!32360 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))) (ite c!1039098 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (Context!10617 call!459159)) (h!70397 s!2326)))))

(declare-fun bm!459154 () Bool)

(assert (=> bm!459154 (= call!459159 ($colon$colon!1829 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))) (ite (or c!1039100 c!1039097) (regTwo!32360 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))))))

(declare-fun b!5858474 () Bool)

(declare-fun e!3592204 () (Set Context!10616))

(declare-fun call!459160 () (Set Context!10616))

(assert (=> b!5858474 (= e!3592204 call!459160)))

(declare-fun bm!459155 () Bool)

(declare-fun call!459161 () (Set Context!10616))

(assert (=> bm!459155 (= call!459160 call!459161)))

(declare-fun bm!459156 () Bool)

(assert (=> bm!459156 (= call!459161 call!459162)))

(declare-fun b!5858475 () Bool)

(declare-fun e!3592199 () (Set Context!10616))

(declare-fun e!3592201 () (Set Context!10616))

(assert (=> b!5858475 (= e!3592199 e!3592201)))

(assert (=> b!5858475 (= c!1039097 (is-Concat!24769 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))))

(declare-fun b!5858476 () Bool)

(assert (=> b!5858476 (= e!3592201 call!459160)))

(declare-fun b!5858477 () Bool)

(assert (=> b!5858477 (= e!3592204 (as set.empty (Set Context!10616)))))

(declare-fun b!5858478 () Bool)

(assert (=> b!5858478 (= e!3592199 (set.union call!459158 call!459161))))

(declare-fun b!5858479 () Bool)

(declare-fun e!3592202 () Bool)

(assert (=> b!5858479 (= c!1039100 e!3592202)))

(declare-fun res!2465527 () Bool)

(assert (=> b!5858479 (=> (not res!2465527) (not e!3592202))))

(assert (=> b!5858479 (= res!2465527 (is-Concat!24769 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))))

(assert (=> b!5858479 (= e!3592203 e!3592199)))

(declare-fun b!5858480 () Bool)

(assert (=> b!5858480 (= e!3592200 e!3592203)))

(assert (=> b!5858480 (= c!1039098 (is-Union!15924 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))))

(declare-fun bm!459157 () Bool)

(assert (=> bm!459157 (= call!459157 call!459159)))

(declare-fun b!5858481 () Bool)

(declare-fun c!1039101 () Bool)

(assert (=> b!5858481 (= c!1039101 (is-Star!15924 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))))

(assert (=> b!5858481 (= e!3592201 e!3592204)))

(declare-fun b!5858473 () Bool)

(assert (=> b!5858473 (= e!3592202 (nullable!5924 (regOne!32360 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))))))

(declare-fun d!1839770 () Bool)

(declare-fun c!1039099 () Bool)

(assert (=> d!1839770 (= c!1039099 (and (is-ElementMatch!15924 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (= (c!1038857 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (h!70397 s!2326))))))

(assert (=> d!1839770 (= (derivationStepZipperDown!1190 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))) (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (h!70397 s!2326)) e!3592200)))

(assert (= (and d!1839770 c!1039099) b!5858471))

(assert (= (and d!1839770 (not c!1039099)) b!5858480))

(assert (= (and b!5858480 c!1039098) b!5858472))

(assert (= (and b!5858480 (not c!1039098)) b!5858479))

(assert (= (and b!5858479 res!2465527) b!5858473))

(assert (= (and b!5858479 c!1039100) b!5858478))

(assert (= (and b!5858479 (not c!1039100)) b!5858475))

(assert (= (and b!5858475 c!1039097) b!5858476))

(assert (= (and b!5858475 (not c!1039097)) b!5858481))

(assert (= (and b!5858481 c!1039101) b!5858474))

(assert (= (and b!5858481 (not c!1039101)) b!5858477))

(assert (= (or b!5858476 b!5858474) bm!459157))

(assert (= (or b!5858476 b!5858474) bm!459155))

(assert (= (or b!5858478 bm!459157) bm!459154))

(assert (= (or b!5858478 bm!459155) bm!459156))

(assert (= (or b!5858472 bm!459156) bm!459152))

(assert (= (or b!5858472 b!5858478) bm!459153))

(declare-fun m!6776126 () Bool)

(assert (=> b!5858473 m!6776126))

(declare-fun m!6776128 () Bool)

(assert (=> bm!459154 m!6776128))

(declare-fun m!6776130 () Bool)

(assert (=> b!5858471 m!6776130))

(declare-fun m!6776132 () Bool)

(assert (=> bm!459152 m!6776132))

(declare-fun m!6776134 () Bool)

(assert (=> bm!459153 m!6776134))

(assert (=> bm!459091 d!1839770))

(declare-fun e!3592206 () (Set Context!10616))

(declare-fun b!5858482 () Bool)

(assert (=> b!5858482 (= e!3592206 (set.insert (ite (or c!1038983 c!1038985) lt!2305057 (Context!10617 call!459090)) (as set.empty (Set Context!10616))))))

(declare-fun b!5858483 () Bool)

(declare-fun e!3592209 () (Set Context!10616))

(declare-fun call!459164 () (Set Context!10616))

(declare-fun call!459168 () (Set Context!10616))

(assert (=> b!5858483 (= e!3592209 (set.union call!459164 call!459168))))

(declare-fun call!459163 () List!64071)

(declare-fun c!1039102 () Bool)

(declare-fun bm!459158 () Bool)

(declare-fun c!1039105 () Bool)

(declare-fun c!1039103 () Bool)

(assert (=> bm!459158 (= call!459168 (derivationStepZipperDown!1190 (ite c!1039103 (regTwo!32361 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))) (ite c!1039105 (regTwo!32360 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))) (ite c!1039102 (regOne!32360 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))) (reg!16253 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292)))))))) (ite (or c!1039103 c!1039105) (ite (or c!1038983 c!1038985) lt!2305057 (Context!10617 call!459090)) (Context!10617 call!459163)) (h!70397 s!2326)))))

(declare-fun bm!459159 () Bool)

(declare-fun call!459165 () List!64071)

(assert (=> bm!459159 (= call!459164 (derivationStepZipperDown!1190 (ite c!1039103 (regOne!32361 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))) (regOne!32360 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292)))))) (ite c!1039103 (ite (or c!1038983 c!1038985) lt!2305057 (Context!10617 call!459090)) (Context!10617 call!459165)) (h!70397 s!2326)))))

(declare-fun bm!459160 () Bool)

(assert (=> bm!459160 (= call!459165 ($colon$colon!1829 (exprs!5808 (ite (or c!1038983 c!1038985) lt!2305057 (Context!10617 call!459090))) (ite (or c!1039105 c!1039102) (regTwo!32360 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))) (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292)))))))))

(declare-fun b!5858485 () Bool)

(declare-fun e!3592210 () (Set Context!10616))

(declare-fun call!459166 () (Set Context!10616))

(assert (=> b!5858485 (= e!3592210 call!459166)))

(declare-fun bm!459161 () Bool)

(declare-fun call!459167 () (Set Context!10616))

(assert (=> bm!459161 (= call!459166 call!459167)))

(declare-fun bm!459162 () Bool)

(assert (=> bm!459162 (= call!459167 call!459168)))

(declare-fun b!5858486 () Bool)

(declare-fun e!3592205 () (Set Context!10616))

(declare-fun e!3592207 () (Set Context!10616))

(assert (=> b!5858486 (= e!3592205 e!3592207)))

(assert (=> b!5858486 (= c!1039102 (is-Concat!24769 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))))))

(declare-fun b!5858487 () Bool)

(assert (=> b!5858487 (= e!3592207 call!459166)))

(declare-fun b!5858488 () Bool)

(assert (=> b!5858488 (= e!3592210 (as set.empty (Set Context!10616)))))

(declare-fun b!5858489 () Bool)

(assert (=> b!5858489 (= e!3592205 (set.union call!459164 call!459167))))

(declare-fun b!5858490 () Bool)

(declare-fun e!3592208 () Bool)

(assert (=> b!5858490 (= c!1039105 e!3592208)))

(declare-fun res!2465528 () Bool)

(assert (=> b!5858490 (=> (not res!2465528) (not e!3592208))))

(assert (=> b!5858490 (= res!2465528 (is-Concat!24769 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))))))

(assert (=> b!5858490 (= e!3592209 e!3592205)))

(declare-fun b!5858491 () Bool)

(assert (=> b!5858491 (= e!3592206 e!3592209)))

(assert (=> b!5858491 (= c!1039103 (is-Union!15924 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))))))

(declare-fun bm!459163 () Bool)

(assert (=> bm!459163 (= call!459163 call!459165)))

(declare-fun b!5858492 () Bool)

(declare-fun c!1039106 () Bool)

(assert (=> b!5858492 (= c!1039106 (is-Star!15924 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))))))

(assert (=> b!5858492 (= e!3592207 e!3592210)))

(declare-fun b!5858484 () Bool)

(assert (=> b!5858484 (= e!3592208 (nullable!5924 (regOne!32360 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292)))))))))

(declare-fun d!1839772 () Bool)

(declare-fun c!1039104 () Bool)

(assert (=> d!1839772 (= c!1039104 (and (is-ElementMatch!15924 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))) (= (c!1038857 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292))))) (h!70397 s!2326))))))

(assert (=> d!1839772 (= (derivationStepZipperDown!1190 (ite c!1038983 (regTwo!32361 r!7292) (ite c!1038985 (regTwo!32360 r!7292) (ite c!1038982 (regOne!32360 r!7292) (reg!16253 r!7292)))) (ite (or c!1038983 c!1038985) lt!2305057 (Context!10617 call!459090)) (h!70397 s!2326)) e!3592206)))

(assert (= (and d!1839772 c!1039104) b!5858482))

(assert (= (and d!1839772 (not c!1039104)) b!5858491))

(assert (= (and b!5858491 c!1039103) b!5858483))

(assert (= (and b!5858491 (not c!1039103)) b!5858490))

(assert (= (and b!5858490 res!2465528) b!5858484))

(assert (= (and b!5858490 c!1039105) b!5858489))

(assert (= (and b!5858490 (not c!1039105)) b!5858486))

(assert (= (and b!5858486 c!1039102) b!5858487))

(assert (= (and b!5858486 (not c!1039102)) b!5858492))

(assert (= (and b!5858492 c!1039106) b!5858485))

(assert (= (and b!5858492 (not c!1039106)) b!5858488))

(assert (= (or b!5858487 b!5858485) bm!459163))

(assert (= (or b!5858487 b!5858485) bm!459161))

(assert (= (or b!5858489 bm!459163) bm!459160))

(assert (= (or b!5858489 bm!459161) bm!459162))

(assert (= (or b!5858483 bm!459162) bm!459158))

(assert (= (or b!5858483 b!5858489) bm!459159))

(declare-fun m!6776136 () Bool)

(assert (=> b!5858484 m!6776136))

(declare-fun m!6776138 () Bool)

(assert (=> bm!459160 m!6776138))

(declare-fun m!6776140 () Bool)

(assert (=> b!5858482 m!6776140))

(declare-fun m!6776142 () Bool)

(assert (=> bm!459158 m!6776142))

(declare-fun m!6776144 () Bool)

(assert (=> bm!459159 m!6776144))

(assert (=> bm!459085 d!1839772))

(declare-fun b!5858493 () Bool)

(declare-fun e!3592212 () (Set Context!10616))

(assert (=> b!5858493 (= e!3592212 (set.insert (ite (or c!1038965 c!1038967) lt!2305057 (Context!10617 call!459075)) (as set.empty (Set Context!10616))))))

(declare-fun b!5858494 () Bool)

(declare-fun e!3592215 () (Set Context!10616))

(declare-fun call!459170 () (Set Context!10616))

(declare-fun call!459174 () (Set Context!10616))

(assert (=> b!5858494 (= e!3592215 (set.union call!459170 call!459174))))

(declare-fun c!1039107 () Bool)

(declare-fun c!1039108 () Bool)

(declare-fun c!1039110 () Bool)

(declare-fun call!459169 () List!64071)

(declare-fun bm!459164 () Bool)

(assert (=> bm!459164 (= call!459174 (derivationStepZipperDown!1190 (ite c!1039108 (regTwo!32361 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))) (ite c!1039110 (regTwo!32360 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))) (ite c!1039107 (regOne!32360 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))) (reg!16253 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292))))))))) (ite (or c!1039108 c!1039110) (ite (or c!1038965 c!1038967) lt!2305057 (Context!10617 call!459075)) (Context!10617 call!459169)) (h!70397 s!2326)))))

(declare-fun call!459171 () List!64071)

(declare-fun bm!459165 () Bool)

(assert (=> bm!459165 (= call!459170 (derivationStepZipperDown!1190 (ite c!1039108 (regOne!32361 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))) (regOne!32360 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292))))))) (ite c!1039108 (ite (or c!1038965 c!1038967) lt!2305057 (Context!10617 call!459075)) (Context!10617 call!459171)) (h!70397 s!2326)))))

(declare-fun bm!459166 () Bool)

(assert (=> bm!459166 (= call!459171 ($colon$colon!1829 (exprs!5808 (ite (or c!1038965 c!1038967) lt!2305057 (Context!10617 call!459075))) (ite (or c!1039110 c!1039107) (regTwo!32360 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))) (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292))))))))))

(declare-fun b!5858496 () Bool)

(declare-fun e!3592216 () (Set Context!10616))

(declare-fun call!459172 () (Set Context!10616))

(assert (=> b!5858496 (= e!3592216 call!459172)))

(declare-fun bm!459167 () Bool)

(declare-fun call!459173 () (Set Context!10616))

(assert (=> bm!459167 (= call!459172 call!459173)))

(declare-fun bm!459168 () Bool)

(assert (=> bm!459168 (= call!459173 call!459174)))

(declare-fun b!5858497 () Bool)

(declare-fun e!3592211 () (Set Context!10616))

(declare-fun e!3592213 () (Set Context!10616))

(assert (=> b!5858497 (= e!3592211 e!3592213)))

(assert (=> b!5858497 (= c!1039107 (is-Concat!24769 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))))))

(declare-fun b!5858498 () Bool)

(assert (=> b!5858498 (= e!3592213 call!459172)))

(declare-fun b!5858499 () Bool)

(assert (=> b!5858499 (= e!3592216 (as set.empty (Set Context!10616)))))

(declare-fun b!5858500 () Bool)

(assert (=> b!5858500 (= e!3592211 (set.union call!459170 call!459173))))

(declare-fun b!5858501 () Bool)

(declare-fun e!3592214 () Bool)

(assert (=> b!5858501 (= c!1039110 e!3592214)))

(declare-fun res!2465529 () Bool)

(assert (=> b!5858501 (=> (not res!2465529) (not e!3592214))))

(assert (=> b!5858501 (= res!2465529 (is-Concat!24769 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))))))

(assert (=> b!5858501 (= e!3592215 e!3592211)))

(declare-fun b!5858502 () Bool)

(assert (=> b!5858502 (= e!3592212 e!3592215)))

(assert (=> b!5858502 (= c!1039108 (is-Union!15924 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))))))

(declare-fun bm!459169 () Bool)

(assert (=> bm!459169 (= call!459169 call!459171)))

(declare-fun b!5858503 () Bool)

(declare-fun c!1039111 () Bool)

(assert (=> b!5858503 (= c!1039111 (is-Star!15924 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))))))

(assert (=> b!5858503 (= e!3592213 e!3592216)))

(declare-fun b!5858495 () Bool)

(assert (=> b!5858495 (= e!3592214 (nullable!5924 (regOne!32360 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292))))))))))

(declare-fun d!1839774 () Bool)

(declare-fun c!1039109 () Bool)

(assert (=> d!1839774 (= c!1039109 (and (is-ElementMatch!15924 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))) (= (c!1038857 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292)))))) (h!70397 s!2326))))))

(assert (=> d!1839774 (= (derivationStepZipperDown!1190 (ite c!1038965 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1038967 (regTwo!32360 (regOne!32361 r!7292)) (ite c!1038964 (regOne!32360 (regOne!32361 r!7292)) (reg!16253 (regOne!32361 r!7292))))) (ite (or c!1038965 c!1038967) lt!2305057 (Context!10617 call!459075)) (h!70397 s!2326)) e!3592212)))

(assert (= (and d!1839774 c!1039109) b!5858493))

(assert (= (and d!1839774 (not c!1039109)) b!5858502))

(assert (= (and b!5858502 c!1039108) b!5858494))

(assert (= (and b!5858502 (not c!1039108)) b!5858501))

(assert (= (and b!5858501 res!2465529) b!5858495))

(assert (= (and b!5858501 c!1039110) b!5858500))

(assert (= (and b!5858501 (not c!1039110)) b!5858497))

(assert (= (and b!5858497 c!1039107) b!5858498))

(assert (= (and b!5858497 (not c!1039107)) b!5858503))

(assert (= (and b!5858503 c!1039111) b!5858496))

(assert (= (and b!5858503 (not c!1039111)) b!5858499))

(assert (= (or b!5858498 b!5858496) bm!459169))

(assert (= (or b!5858498 b!5858496) bm!459167))

(assert (= (or b!5858500 bm!459169) bm!459166))

(assert (= (or b!5858500 bm!459167) bm!459168))

(assert (= (or b!5858494 bm!459168) bm!459164))

(assert (= (or b!5858494 b!5858500) bm!459165))

(declare-fun m!6776146 () Bool)

(assert (=> b!5858495 m!6776146))

(declare-fun m!6776148 () Bool)

(assert (=> bm!459166 m!6776148))

(declare-fun m!6776150 () Bool)

(assert (=> b!5858493 m!6776150))

(declare-fun m!6776152 () Bool)

(assert (=> bm!459164 m!6776152))

(declare-fun m!6776154 () Bool)

(assert (=> bm!459165 m!6776154))

(assert (=> bm!459070 d!1839774))

(declare-fun d!1839776 () Bool)

(declare-fun res!2465534 () Bool)

(declare-fun e!3592221 () Bool)

(assert (=> d!1839776 (=> res!2465534 e!3592221)))

(assert (=> d!1839776 (= res!2465534 (is-Nil!63947 lt!2305149))))

(assert (=> d!1839776 (= (forall!15011 lt!2305149 lambda!320294) e!3592221)))

(declare-fun b!5858508 () Bool)

(declare-fun e!3592222 () Bool)

(assert (=> b!5858508 (= e!3592221 e!3592222)))

(declare-fun res!2465535 () Bool)

(assert (=> b!5858508 (=> (not res!2465535) (not e!3592222))))

(declare-fun dynLambda!25005 (Int Regex!15924) Bool)

(assert (=> b!5858508 (= res!2465535 (dynLambda!25005 lambda!320294 (h!70395 lt!2305149)))))

(declare-fun b!5858509 () Bool)

(assert (=> b!5858509 (= e!3592222 (forall!15011 (t!377440 lt!2305149) lambda!320294))))

(assert (= (and d!1839776 (not res!2465534)) b!5858508))

(assert (= (and b!5858508 res!2465535) b!5858509))

(declare-fun b_lambda!220493 () Bool)

(assert (=> (not b_lambda!220493) (not b!5858508)))

(declare-fun m!6776156 () Bool)

(assert (=> b!5858508 m!6776156))

(declare-fun m!6776158 () Bool)

(assert (=> b!5858509 m!6776158))

(assert (=> d!1839614 d!1839776))

(declare-fun d!1839778 () Bool)

(assert (=> d!1839778 (= (flatMap!1455 z!1189 lambda!320303) (choose!44414 z!1189 lambda!320303))))

(declare-fun bs!1380253 () Bool)

(assert (= bs!1380253 d!1839778))

(declare-fun m!6776160 () Bool)

(assert (=> bs!1380253 m!6776160))

(assert (=> d!1839632 d!1839778))

(assert (=> b!5857827 d!1839628))

(declare-fun bs!1380254 () Bool)

(declare-fun d!1839780 () Bool)

(assert (= bs!1380254 (and d!1839780 d!1839614)))

(declare-fun lambda!320336 () Int)

(assert (=> bs!1380254 (= lambda!320336 lambda!320294)))

(declare-fun bs!1380255 () Bool)

(assert (= bs!1380255 (and d!1839780 d!1839616)))

(assert (=> bs!1380255 (= lambda!320336 lambda!320297)))

(declare-fun bs!1380256 () Bool)

(assert (= bs!1380256 (and d!1839780 d!1839612)))

(assert (=> bs!1380256 (= lambda!320336 lambda!320291)))

(declare-fun bs!1380257 () Bool)

(assert (= bs!1380257 (and d!1839780 d!1839646)))

(assert (=> bs!1380257 (= lambda!320336 lambda!320307)))

(declare-fun bs!1380258 () Bool)

(assert (= bs!1380258 (and d!1839780 d!1839628)))

(assert (=> bs!1380258 (= lambda!320336 lambda!320300)))

(declare-fun bs!1380259 () Bool)

(assert (= bs!1380259 (and d!1839780 d!1839650)))

(assert (=> bs!1380259 (= lambda!320336 lambda!320309)))

(declare-fun lt!2305197 () List!64071)

(assert (=> d!1839780 (forall!15011 lt!2305197 lambda!320336)))

(declare-fun e!3592223 () List!64071)

(assert (=> d!1839780 (= lt!2305197 e!3592223)))

(declare-fun c!1039112 () Bool)

(assert (=> d!1839780 (= c!1039112 (is-Cons!63948 (t!377441 zl!343)))))

(assert (=> d!1839780 (= (unfocusZipperList!1345 (t!377441 zl!343)) lt!2305197)))

(declare-fun b!5858510 () Bool)

(assert (=> b!5858510 (= e!3592223 (Cons!63947 (generalisedConcat!1521 (exprs!5808 (h!70396 (t!377441 zl!343)))) (unfocusZipperList!1345 (t!377441 (t!377441 zl!343)))))))

(declare-fun b!5858511 () Bool)

(assert (=> b!5858511 (= e!3592223 Nil!63947)))

(assert (= (and d!1839780 c!1039112) b!5858510))

(assert (= (and d!1839780 (not c!1039112)) b!5858511))

(declare-fun m!6776162 () Bool)

(assert (=> d!1839780 m!6776162))

(declare-fun m!6776164 () Bool)

(assert (=> b!5858510 m!6776164))

(declare-fun m!6776166 () Bool)

(assert (=> b!5858510 m!6776166))

(assert (=> b!5857827 d!1839780))

(declare-fun d!1839782 () Bool)

(declare-fun c!1039115 () Bool)

(assert (=> d!1839782 (= c!1039115 (is-Nil!63948 lt!2305162))))

(declare-fun e!3592226 () (Set Context!10616))

(assert (=> d!1839782 (= (content!11754 lt!2305162) e!3592226)))

(declare-fun b!5858516 () Bool)

(assert (=> b!5858516 (= e!3592226 (as set.empty (Set Context!10616)))))

(declare-fun b!5858517 () Bool)

(assert (=> b!5858517 (= e!3592226 (set.union (set.insert (h!70396 lt!2305162) (as set.empty (Set Context!10616))) (content!11754 (t!377441 lt!2305162))))))

(assert (= (and d!1839782 c!1039115) b!5858516))

(assert (= (and d!1839782 (not c!1039115)) b!5858517))

(declare-fun m!6776168 () Bool)

(assert (=> b!5858517 m!6776168))

(declare-fun m!6776170 () Bool)

(assert (=> b!5858517 m!6776170))

(assert (=> b!5857998 d!1839782))

(declare-fun d!1839784 () Bool)

(assert (=> d!1839784 (= (isEmpty!35809 s!2326) (is-Nil!63949 s!2326))))

(assert (=> d!1839594 d!1839784))

(declare-fun d!1839786 () Bool)

(assert (=> d!1839786 (= (isUnion!797 lt!2305146) (is-Union!15924 lt!2305146))))

(assert (=> b!5857815 d!1839786))

(declare-fun d!1839788 () Bool)

(assert (=> d!1839788 (= (isEmpty!35810 (tail!11488 (exprs!5808 (h!70396 zl!343)))) (is-Nil!63947 (tail!11488 (exprs!5808 (h!70396 zl!343)))))))

(assert (=> b!5857876 d!1839788))

(declare-fun d!1839790 () Bool)

(assert (=> d!1839790 (= (tail!11488 (exprs!5808 (h!70396 zl!343))) (t!377440 (exprs!5808 (h!70396 zl!343))))))

(assert (=> b!5857876 d!1839790))

(assert (=> d!1839602 d!1839784))

(declare-fun b!5858518 () Bool)

(declare-fun e!3592232 () Bool)

(declare-fun call!459176 () Bool)

(assert (=> b!5858518 (= e!3592232 call!459176)))

(declare-fun bm!459170 () Bool)

(declare-fun c!1039116 () Bool)

(assert (=> bm!459170 (= call!459176 (validRegex!7660 (ite c!1039116 (regTwo!32361 (regTwo!32361 r!7292)) (regTwo!32360 (regTwo!32361 r!7292)))))))

(declare-fun b!5858519 () Bool)

(declare-fun e!3592229 () Bool)

(assert (=> b!5858519 (= e!3592229 e!3592232)))

(declare-fun res!2465540 () Bool)

(assert (=> b!5858519 (=> (not res!2465540) (not e!3592232))))

(declare-fun call!459177 () Bool)

(assert (=> b!5858519 (= res!2465540 call!459177)))

(declare-fun b!5858520 () Bool)

(declare-fun e!3592231 () Bool)

(declare-fun e!3592228 () Bool)

(assert (=> b!5858520 (= e!3592231 e!3592228)))

(declare-fun res!2465539 () Bool)

(assert (=> b!5858520 (= res!2465539 (not (nullable!5924 (reg!16253 (regTwo!32361 r!7292)))))))

(assert (=> b!5858520 (=> (not res!2465539) (not e!3592228))))

(declare-fun b!5858521 () Bool)

(declare-fun res!2465538 () Bool)

(assert (=> b!5858521 (=> res!2465538 e!3592229)))

(assert (=> b!5858521 (= res!2465538 (not (is-Concat!24769 (regTwo!32361 r!7292))))))

(declare-fun e!3592233 () Bool)

(assert (=> b!5858521 (= e!3592233 e!3592229)))

(declare-fun b!5858522 () Bool)

(declare-fun call!459175 () Bool)

(assert (=> b!5858522 (= e!3592228 call!459175)))

(declare-fun bm!459171 () Bool)

(assert (=> bm!459171 (= call!459177 call!459175)))

(declare-fun b!5858523 () Bool)

(assert (=> b!5858523 (= e!3592231 e!3592233)))

(assert (=> b!5858523 (= c!1039116 (is-Union!15924 (regTwo!32361 r!7292)))))

(declare-fun b!5858524 () Bool)

(declare-fun res!2465537 () Bool)

(declare-fun e!3592230 () Bool)

(assert (=> b!5858524 (=> (not res!2465537) (not e!3592230))))

(assert (=> b!5858524 (= res!2465537 call!459177)))

(assert (=> b!5858524 (= e!3592233 e!3592230)))

(declare-fun bm!459172 () Bool)

(declare-fun c!1039117 () Bool)

(assert (=> bm!459172 (= call!459175 (validRegex!7660 (ite c!1039117 (reg!16253 (regTwo!32361 r!7292)) (ite c!1039116 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292))))))))

(declare-fun b!5858525 () Bool)

(assert (=> b!5858525 (= e!3592230 call!459176)))

(declare-fun b!5858526 () Bool)

(declare-fun e!3592227 () Bool)

(assert (=> b!5858526 (= e!3592227 e!3592231)))

(assert (=> b!5858526 (= c!1039117 (is-Star!15924 (regTwo!32361 r!7292)))))

(declare-fun d!1839792 () Bool)

(declare-fun res!2465536 () Bool)

(assert (=> d!1839792 (=> res!2465536 e!3592227)))

(assert (=> d!1839792 (= res!2465536 (is-ElementMatch!15924 (regTwo!32361 r!7292)))))

(assert (=> d!1839792 (= (validRegex!7660 (regTwo!32361 r!7292)) e!3592227)))

(assert (= (and d!1839792 (not res!2465536)) b!5858526))

(assert (= (and b!5858526 c!1039117) b!5858520))

(assert (= (and b!5858526 (not c!1039117)) b!5858523))

(assert (= (and b!5858520 res!2465539) b!5858522))

(assert (= (and b!5858523 c!1039116) b!5858524))

(assert (= (and b!5858523 (not c!1039116)) b!5858521))

(assert (= (and b!5858524 res!2465537) b!5858525))

(assert (= (and b!5858521 (not res!2465538)) b!5858519))

(assert (= (and b!5858519 res!2465540) b!5858518))

(assert (= (or b!5858525 b!5858518) bm!459170))

(assert (= (or b!5858524 b!5858519) bm!459171))

(assert (= (or b!5858522 bm!459171) bm!459172))

(declare-fun m!6776172 () Bool)

(assert (=> bm!459170 m!6776172))

(declare-fun m!6776174 () Bool)

(assert (=> b!5858520 m!6776174))

(declare-fun m!6776176 () Bool)

(assert (=> bm!459172 m!6776176))

(assert (=> d!1839602 d!1839792))

(declare-fun d!1839794 () Bool)

(declare-fun lambda!320339 () Int)

(declare-fun exists!2308 ((Set Context!10616) Int) Bool)

(assert (=> d!1839794 (= (nullableZipper!1763 lt!2305053) (exists!2308 lt!2305053 lambda!320339))))

(declare-fun bs!1380260 () Bool)

(assert (= bs!1380260 d!1839794))

(declare-fun m!6776178 () Bool)

(assert (=> bs!1380260 m!6776178))

(assert (=> b!5857991 d!1839794))

(declare-fun d!1839796 () Bool)

(assert (=> d!1839796 true))

(declare-fun setRes!39719 () Bool)

(assert (=> d!1839796 setRes!39719))

(declare-fun condSetEmpty!39719 () Bool)

(declare-fun res!2465543 () (Set Context!10616))

(assert (=> d!1839796 (= condSetEmpty!39719 (= res!2465543 (as set.empty (Set Context!10616))))))

(assert (=> d!1839796 (= (choose!44414 lt!2305054 lambda!320275) res!2465543)))

(declare-fun setIsEmpty!39719 () Bool)

(assert (=> setIsEmpty!39719 setRes!39719))

(declare-fun setElem!39719 () Context!10616)

(declare-fun setNonEmpty!39719 () Bool)

(declare-fun tp!1620545 () Bool)

(declare-fun e!3592236 () Bool)

(assert (=> setNonEmpty!39719 (= setRes!39719 (and tp!1620545 (inv!83058 setElem!39719) e!3592236))))

(declare-fun setRest!39719 () (Set Context!10616))

(assert (=> setNonEmpty!39719 (= res!2465543 (set.union (set.insert setElem!39719 (as set.empty (Set Context!10616))) setRest!39719))))

(declare-fun b!5858529 () Bool)

(declare-fun tp!1620546 () Bool)

(assert (=> b!5858529 (= e!3592236 tp!1620546)))

(assert (= (and d!1839796 condSetEmpty!39719) setIsEmpty!39719))

(assert (= (and d!1839796 (not condSetEmpty!39719)) setNonEmpty!39719))

(assert (= setNonEmpty!39719 b!5858529))

(declare-fun m!6776180 () Bool)

(assert (=> setNonEmpty!39719 m!6776180))

(assert (=> d!1839624 d!1839796))

(declare-fun d!1839798 () Bool)

(assert (=> d!1839798 (= (isEmpty!35810 (tail!11488 (unfocusZipperList!1345 zl!343))) (is-Nil!63947 (tail!11488 (unfocusZipperList!1345 zl!343))))))

(assert (=> b!5857819 d!1839798))

(declare-fun d!1839800 () Bool)

(assert (=> d!1839800 (= (tail!11488 (unfocusZipperList!1345 zl!343)) (t!377440 (unfocusZipperList!1345 zl!343)))))

(assert (=> b!5857819 d!1839800))

(declare-fun bs!1380261 () Bool)

(declare-fun d!1839802 () Bool)

(assert (= bs!1380261 (and d!1839802 d!1839794)))

(declare-fun lambda!320340 () Int)

(assert (=> bs!1380261 (= lambda!320340 lambda!320339)))

(assert (=> d!1839802 (= (nullableZipper!1763 lt!2305041) (exists!2308 lt!2305041 lambda!320340))))

(declare-fun bs!1380262 () Bool)

(assert (= bs!1380262 d!1839802))

(declare-fun m!6776182 () Bool)

(assert (=> bs!1380262 m!6776182))

(assert (=> b!5857677 d!1839802))

(assert (=> bs!1380205 d!1839636))

(declare-fun d!1839804 () Bool)

(declare-fun nullableFct!1911 (Regex!15924) Bool)

(assert (=> d!1839804 (= (nullable!5924 (h!70395 (exprs!5808 lt!2305051))) (nullableFct!1911 (h!70395 (exprs!5808 lt!2305051))))))

(declare-fun bs!1380263 () Bool)

(assert (= bs!1380263 d!1839804))

(declare-fun m!6776184 () Bool)

(assert (=> bs!1380263 m!6776184))

(assert (=> b!5857839 d!1839804))

(declare-fun d!1839806 () Bool)

(assert (=> d!1839806 (= (nullable!5924 (h!70395 (exprs!5808 lt!2305055))) (nullableFct!1911 (h!70395 (exprs!5808 lt!2305055))))))

(declare-fun bs!1380264 () Bool)

(assert (= bs!1380264 d!1839806))

(declare-fun m!6776186 () Bool)

(assert (=> bs!1380264 m!6776186))

(assert (=> b!5857844 d!1839806))

(declare-fun d!1839808 () Bool)

(assert (=> d!1839808 (= (isEmpty!35809 (tail!11487 s!2326)) (is-Nil!63949 (tail!11487 s!2326)))))

(assert (=> b!5857784 d!1839808))

(declare-fun d!1839810 () Bool)

(assert (=> d!1839810 (= (tail!11487 s!2326) (t!377442 s!2326))))

(assert (=> b!5857784 d!1839810))

(declare-fun b!5858530 () Bool)

(declare-fun e!3592242 () Bool)

(declare-fun call!459179 () Bool)

(assert (=> b!5858530 (= e!3592242 call!459179)))

(declare-fun bm!459173 () Bool)

(declare-fun c!1039120 () Bool)

(assert (=> bm!459173 (= call!459179 (validRegex!7660 (ite c!1039120 (regTwo!32361 lt!2305143) (regTwo!32360 lt!2305143))))))

(declare-fun b!5858531 () Bool)

(declare-fun e!3592239 () Bool)

(assert (=> b!5858531 (= e!3592239 e!3592242)))

(declare-fun res!2465548 () Bool)

(assert (=> b!5858531 (=> (not res!2465548) (not e!3592242))))

(declare-fun call!459180 () Bool)

(assert (=> b!5858531 (= res!2465548 call!459180)))

(declare-fun b!5858532 () Bool)

(declare-fun e!3592241 () Bool)

(declare-fun e!3592238 () Bool)

(assert (=> b!5858532 (= e!3592241 e!3592238)))

(declare-fun res!2465547 () Bool)

(assert (=> b!5858532 (= res!2465547 (not (nullable!5924 (reg!16253 lt!2305143))))))

(assert (=> b!5858532 (=> (not res!2465547) (not e!3592238))))

(declare-fun b!5858533 () Bool)

(declare-fun res!2465546 () Bool)

(assert (=> b!5858533 (=> res!2465546 e!3592239)))

(assert (=> b!5858533 (= res!2465546 (not (is-Concat!24769 lt!2305143)))))

(declare-fun e!3592243 () Bool)

(assert (=> b!5858533 (= e!3592243 e!3592239)))

(declare-fun b!5858534 () Bool)

(declare-fun call!459178 () Bool)

(assert (=> b!5858534 (= e!3592238 call!459178)))

(declare-fun bm!459174 () Bool)

(assert (=> bm!459174 (= call!459180 call!459178)))

(declare-fun b!5858535 () Bool)

(assert (=> b!5858535 (= e!3592241 e!3592243)))

(assert (=> b!5858535 (= c!1039120 (is-Union!15924 lt!2305143))))

(declare-fun b!5858536 () Bool)

(declare-fun res!2465545 () Bool)

(declare-fun e!3592240 () Bool)

(assert (=> b!5858536 (=> (not res!2465545) (not e!3592240))))

(assert (=> b!5858536 (= res!2465545 call!459180)))

(assert (=> b!5858536 (= e!3592243 e!3592240)))

(declare-fun bm!459175 () Bool)

(declare-fun c!1039121 () Bool)

(assert (=> bm!459175 (= call!459178 (validRegex!7660 (ite c!1039121 (reg!16253 lt!2305143) (ite c!1039120 (regOne!32361 lt!2305143) (regOne!32360 lt!2305143)))))))

(declare-fun b!5858537 () Bool)

(assert (=> b!5858537 (= e!3592240 call!459179)))

(declare-fun b!5858538 () Bool)

(declare-fun e!3592237 () Bool)

(assert (=> b!5858538 (= e!3592237 e!3592241)))

(assert (=> b!5858538 (= c!1039121 (is-Star!15924 lt!2305143))))

(declare-fun d!1839812 () Bool)

(declare-fun res!2465544 () Bool)

(assert (=> d!1839812 (=> res!2465544 e!3592237)))

(assert (=> d!1839812 (= res!2465544 (is-ElementMatch!15924 lt!2305143))))

(assert (=> d!1839812 (= (validRegex!7660 lt!2305143) e!3592237)))

(assert (= (and d!1839812 (not res!2465544)) b!5858538))

(assert (= (and b!5858538 c!1039121) b!5858532))

(assert (= (and b!5858538 (not c!1039121)) b!5858535))

(assert (= (and b!5858532 res!2465547) b!5858534))

(assert (= (and b!5858535 c!1039120) b!5858536))

(assert (= (and b!5858535 (not c!1039120)) b!5858533))

(assert (= (and b!5858536 res!2465545) b!5858537))

(assert (= (and b!5858533 (not res!2465546)) b!5858531))

(assert (= (and b!5858531 res!2465548) b!5858530))

(assert (= (or b!5858537 b!5858530) bm!459173))

(assert (= (or b!5858536 b!5858531) bm!459174))

(assert (= (or b!5858534 bm!459174) bm!459175))

(declare-fun m!6776188 () Bool)

(assert (=> bm!459173 m!6776188))

(declare-fun m!6776190 () Bool)

(assert (=> b!5858532 m!6776190))

(declare-fun m!6776192 () Bool)

(assert (=> bm!459175 m!6776192))

(assert (=> d!1839610 d!1839812))

(assert (=> d!1839610 d!1839612))

(assert (=> d!1839610 d!1839614))

(declare-fun d!1839814 () Bool)

(assert (=> d!1839814 (= (nullable!5924 (reg!16253 r!7292)) (nullableFct!1911 (reg!16253 r!7292)))))

(declare-fun bs!1380265 () Bool)

(assert (= bs!1380265 d!1839814))

(declare-fun m!6776194 () Bool)

(assert (=> bs!1380265 m!6776194))

(assert (=> b!5857906 d!1839814))

(assert (=> bm!459031 d!1839784))

(declare-fun d!1839816 () Bool)

(assert (=> d!1839816 (= (nullable!5924 (regOne!32361 r!7292)) (nullableFct!1911 (regOne!32361 r!7292)))))

(declare-fun bs!1380266 () Bool)

(assert (= bs!1380266 d!1839816))

(declare-fun m!6776196 () Bool)

(assert (=> bs!1380266 m!6776196))

(assert (=> b!5857780 d!1839816))

(assert (=> bm!459036 d!1839784))

(declare-fun d!1839818 () Bool)

(assert (=> d!1839818 (= (nullable!5924 (regOne!32360 (regTwo!32361 r!7292))) (nullableFct!1911 (regOne!32360 (regTwo!32361 r!7292))))))

(declare-fun bs!1380267 () Bool)

(assert (= bs!1380267 d!1839818))

(declare-fun m!6776198 () Bool)

(assert (=> bs!1380267 m!6776198))

(assert (=> b!5857965 d!1839818))

(declare-fun b!5858539 () Bool)

(declare-fun e!3592246 () Bool)

(assert (=> b!5858539 (= e!3592246 (nullable!5924 (h!70395 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343))))))))))

(declare-fun b!5858540 () Bool)

(declare-fun e!3592245 () (Set Context!10616))

(declare-fun e!3592244 () (Set Context!10616))

(assert (=> b!5858540 (= e!3592245 e!3592244)))

(declare-fun c!1039122 () Bool)

(assert (=> b!5858540 (= c!1039122 (is-Cons!63947 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))))))))

(declare-fun b!5858541 () Bool)

(declare-fun call!459181 () (Set Context!10616))

(assert (=> b!5858541 (= e!3592245 (set.union call!459181 (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343))))))) (h!70397 s!2326))))))

(declare-fun d!1839820 () Bool)

(declare-fun c!1039123 () Bool)

(assert (=> d!1839820 (= c!1039123 e!3592246)))

(declare-fun res!2465549 () Bool)

(assert (=> d!1839820 (=> (not res!2465549) (not e!3592246))))

(assert (=> d!1839820 (= res!2465549 (is-Cons!63947 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))))))))

(assert (=> d!1839820 (= (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))) (h!70397 s!2326)) e!3592245)))

(declare-fun bm!459176 () Bool)

(assert (=> bm!459176 (= call!459181 (derivationStepZipperDown!1190 (h!70395 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343)))))) (Context!10617 (t!377440 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (h!70396 zl!343))))))) (h!70397 s!2326)))))

(declare-fun b!5858542 () Bool)

(assert (=> b!5858542 (= e!3592244 call!459181)))

(declare-fun b!5858543 () Bool)

(assert (=> b!5858543 (= e!3592244 (as set.empty (Set Context!10616)))))

(assert (= (and d!1839820 res!2465549) b!5858539))

(assert (= (and d!1839820 c!1039123) b!5858541))

(assert (= (and d!1839820 (not c!1039123)) b!5858540))

(assert (= (and b!5858540 c!1039122) b!5858542))

(assert (= (and b!5858540 (not c!1039122)) b!5858543))

(assert (= (or b!5858541 b!5858542) bm!459176))

(declare-fun m!6776200 () Bool)

(assert (=> b!5858539 m!6776200))

(declare-fun m!6776202 () Bool)

(assert (=> b!5858541 m!6776202))

(declare-fun m!6776204 () Bool)

(assert (=> bm!459176 m!6776204))

(assert (=> b!5857883 d!1839820))

(declare-fun d!1839822 () Bool)

(assert (=> d!1839822 (= ($colon$colon!1829 (exprs!5808 lt!2305057) (ite (or c!1038967 c!1038964) (regTwo!32360 (regOne!32361 r!7292)) (regOne!32361 r!7292))) (Cons!63947 (ite (or c!1038967 c!1038964) (regTwo!32360 (regOne!32361 r!7292)) (regOne!32361 r!7292)) (exprs!5808 lt!2305057)))))

(assert (=> bm!459072 d!1839822))

(declare-fun d!1839824 () Bool)

(assert (=> d!1839824 (= (nullable!5924 (regTwo!32361 r!7292)) (nullableFct!1911 (regTwo!32361 r!7292)))))

(declare-fun bs!1380268 () Bool)

(assert (= bs!1380268 d!1839824))

(declare-fun m!6776206 () Bool)

(assert (=> bs!1380268 m!6776206))

(assert (=> b!5857755 d!1839824))

(assert (=> d!1839618 d!1839624))

(declare-fun d!1839826 () Bool)

(assert (=> d!1839826 (= (flatMap!1455 lt!2305054 lambda!320275) (dynLambda!25003 lambda!320275 lt!2305055))))

(assert (=> d!1839826 true))

(declare-fun _$13!2574 () Unit!157119)

(assert (=> d!1839826 (= (choose!44413 lt!2305054 lt!2305055 lambda!320275) _$13!2574)))

(declare-fun b_lambda!220495 () Bool)

(assert (=> (not b_lambda!220495) (not d!1839826)))

(declare-fun bs!1380269 () Bool)

(assert (= bs!1380269 d!1839826))

(assert (=> bs!1380269 m!6775552))

(assert (=> bs!1380269 m!6775746))

(assert (=> d!1839618 d!1839826))

(declare-fun d!1839828 () Bool)

(declare-fun c!1039124 () Bool)

(assert (=> d!1839828 (= c!1039124 (isEmpty!35809 (tail!11487 s!2326)))))

(declare-fun e!3592247 () Bool)

(assert (=> d!1839828 (= (matchZipper!1990 (derivationStepZipper!1923 z!1189 (head!12402 s!2326)) (tail!11487 s!2326)) e!3592247)))

(declare-fun b!5858544 () Bool)

(assert (=> b!5858544 (= e!3592247 (nullableZipper!1763 (derivationStepZipper!1923 z!1189 (head!12402 s!2326))))))

(declare-fun b!5858545 () Bool)

(assert (=> b!5858545 (= e!3592247 (matchZipper!1990 (derivationStepZipper!1923 (derivationStepZipper!1923 z!1189 (head!12402 s!2326)) (head!12402 (tail!11487 s!2326))) (tail!11487 (tail!11487 s!2326))))))

(assert (= (and d!1839828 c!1039124) b!5858544))

(assert (= (and d!1839828 (not c!1039124)) b!5858545))

(assert (=> d!1839828 m!6775668))

(assert (=> d!1839828 m!6775700))

(assert (=> b!5858544 m!6775666))

(declare-fun m!6776208 () Bool)

(assert (=> b!5858544 m!6776208))

(assert (=> b!5858545 m!6775668))

(declare-fun m!6776210 () Bool)

(assert (=> b!5858545 m!6776210))

(assert (=> b!5858545 m!6775666))

(assert (=> b!5858545 m!6776210))

(declare-fun m!6776212 () Bool)

(assert (=> b!5858545 m!6776212))

(assert (=> b!5858545 m!6775668))

(declare-fun m!6776214 () Bool)

(assert (=> b!5858545 m!6776214))

(assert (=> b!5858545 m!6776212))

(assert (=> b!5858545 m!6776214))

(declare-fun m!6776216 () Bool)

(assert (=> b!5858545 m!6776216))

(assert (=> b!5857676 d!1839828))

(declare-fun bs!1380270 () Bool)

(declare-fun d!1839830 () Bool)

(assert (= bs!1380270 (and d!1839830 b!5857591)))

(declare-fun lambda!320341 () Int)

(assert (=> bs!1380270 (= (= (head!12402 s!2326) (h!70397 s!2326)) (= lambda!320341 lambda!320275))))

(declare-fun bs!1380271 () Bool)

(assert (= bs!1380271 (and d!1839830 d!1839632)))

(assert (=> bs!1380271 (= (= (head!12402 s!2326) (h!70397 s!2326)) (= lambda!320341 lambda!320303))))

(declare-fun bs!1380272 () Bool)

(assert (= bs!1380272 (and d!1839830 d!1839750)))

(assert (=> bs!1380272 (= (= (head!12402 s!2326) (head!12402 (t!377442 s!2326))) (= lambda!320341 lambda!320335))))

(assert (=> d!1839830 true))

(assert (=> d!1839830 (= (derivationStepZipper!1923 z!1189 (head!12402 s!2326)) (flatMap!1455 z!1189 lambda!320341))))

(declare-fun bs!1380273 () Bool)

(assert (= bs!1380273 d!1839830))

(declare-fun m!6776218 () Bool)

(assert (=> bs!1380273 m!6776218))

(assert (=> b!5857676 d!1839830))

(assert (=> b!5857676 d!1839768))

(assert (=> b!5857676 d!1839810))

(declare-fun b!5858546 () Bool)

(declare-fun e!3592250 () Bool)

(assert (=> b!5858546 (= e!3592250 (nullable!5924 (h!70395 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))))))))

(declare-fun b!5858547 () Bool)

(declare-fun e!3592249 () (Set Context!10616))

(declare-fun e!3592248 () (Set Context!10616))

(assert (=> b!5858547 (= e!3592249 e!3592248)))

(declare-fun c!1039125 () Bool)

(assert (=> b!5858547 (= c!1039125 (is-Cons!63947 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))))))

(declare-fun call!459182 () (Set Context!10616))

(declare-fun b!5858548 () Bool)

(assert (=> b!5858548 (= e!3592249 (set.union call!459182 (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))))) (h!70397 s!2326))))))

(declare-fun d!1839832 () Bool)

(declare-fun c!1039126 () Bool)

(assert (=> d!1839832 (= c!1039126 e!3592250)))

(declare-fun res!2465550 () Bool)

(assert (=> d!1839832 (=> (not res!2465550) (not e!3592250))))

(assert (=> d!1839832 (= res!2465550 (is-Cons!63947 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))))))

(assert (=> d!1839832 (= (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (h!70397 s!2326)) e!3592249)))

(declare-fun bm!459177 () Bool)

(assert (=> bm!459177 (= call!459182 (derivationStepZipperDown!1190 (h!70395 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))) (Context!10617 (t!377440 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947)))))))) (h!70397 s!2326)))))

(declare-fun b!5858549 () Bool)

(assert (=> b!5858549 (= e!3592248 call!459182)))

(declare-fun b!5858550 () Bool)

(assert (=> b!5858550 (= e!3592248 (as set.empty (Set Context!10616)))))

(assert (= (and d!1839832 res!2465550) b!5858546))

(assert (= (and d!1839832 c!1039126) b!5858548))

(assert (= (and d!1839832 (not c!1039126)) b!5858547))

(assert (= (and b!5858547 c!1039125) b!5858549))

(assert (= (and b!5858547 (not c!1039125)) b!5858550))

(assert (= (or b!5858548 b!5858549) bm!459177))

(declare-fun m!6776220 () Bool)

(assert (=> b!5858546 m!6776220))

(declare-fun m!6776222 () Bool)

(assert (=> b!5858548 m!6776222))

(declare-fun m!6776224 () Bool)

(assert (=> bm!459177 m!6776224))

(assert (=> b!5858050 d!1839832))

(assert (=> b!5857759 d!1839808))

(assert (=> b!5857759 d!1839810))

(assert (=> d!1839604 d!1839602))

(assert (=> d!1839604 d!1839598))

(declare-fun d!1839834 () Bool)

(assert (=> d!1839834 (= (matchR!8107 (regTwo!32361 r!7292) s!2326) (matchRSpec!3025 (regTwo!32361 r!7292) s!2326))))

(assert (=> d!1839834 true))

(declare-fun _$88!4283 () Unit!157119)

(assert (=> d!1839834 (= (choose!44412 (regTwo!32361 r!7292) s!2326) _$88!4283)))

(declare-fun bs!1380274 () Bool)

(assert (= bs!1380274 d!1839834))

(assert (=> bs!1380274 m!6775536))

(assert (=> bs!1380274 m!6775532))

(assert (=> d!1839604 d!1839834))

(assert (=> d!1839604 d!1839792))

(declare-fun bs!1380275 () Bool)

(declare-fun d!1839836 () Bool)

(assert (= bs!1380275 (and d!1839836 d!1839614)))

(declare-fun lambda!320342 () Int)

(assert (=> bs!1380275 (= lambda!320342 lambda!320294)))

(declare-fun bs!1380276 () Bool)

(assert (= bs!1380276 (and d!1839836 d!1839616)))

(assert (=> bs!1380276 (= lambda!320342 lambda!320297)))

(declare-fun bs!1380277 () Bool)

(assert (= bs!1380277 (and d!1839836 d!1839612)))

(assert (=> bs!1380277 (= lambda!320342 lambda!320291)))

(declare-fun bs!1380278 () Bool)

(assert (= bs!1380278 (and d!1839836 d!1839780)))

(assert (=> bs!1380278 (= lambda!320342 lambda!320336)))

(declare-fun bs!1380279 () Bool)

(assert (= bs!1380279 (and d!1839836 d!1839646)))

(assert (=> bs!1380279 (= lambda!320342 lambda!320307)))

(declare-fun bs!1380280 () Bool)

(assert (= bs!1380280 (and d!1839836 d!1839628)))

(assert (=> bs!1380280 (= lambda!320342 lambda!320300)))

(declare-fun bs!1380281 () Bool)

(assert (= bs!1380281 (and d!1839836 d!1839650)))

(assert (=> bs!1380281 (= lambda!320342 lambda!320309)))

(declare-fun e!3592254 () Bool)

(assert (=> d!1839836 e!3592254))

(declare-fun res!2465552 () Bool)

(assert (=> d!1839836 (=> (not res!2465552) (not e!3592254))))

(declare-fun lt!2305198 () Regex!15924)

(assert (=> d!1839836 (= res!2465552 (validRegex!7660 lt!2305198))))

(declare-fun e!3592255 () Regex!15924)

(assert (=> d!1839836 (= lt!2305198 e!3592255)))

(declare-fun c!1039128 () Bool)

(declare-fun e!3592253 () Bool)

(assert (=> d!1839836 (= c!1039128 e!3592253)))

(declare-fun res!2465551 () Bool)

(assert (=> d!1839836 (=> (not res!2465551) (not e!3592253))))

(assert (=> d!1839836 (= res!2465551 (is-Cons!63947 (t!377440 (exprs!5808 (h!70396 zl!343)))))))

(assert (=> d!1839836 (forall!15011 (t!377440 (exprs!5808 (h!70396 zl!343))) lambda!320342)))

(assert (=> d!1839836 (= (generalisedConcat!1521 (t!377440 (exprs!5808 (h!70396 zl!343)))) lt!2305198)))

(declare-fun b!5858551 () Bool)

(declare-fun e!3592256 () Bool)

(assert (=> b!5858551 (= e!3592254 e!3592256)))

(declare-fun c!1039129 () Bool)

(assert (=> b!5858551 (= c!1039129 (isEmpty!35810 (t!377440 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5858552 () Bool)

(declare-fun e!3592252 () Bool)

(assert (=> b!5858552 (= e!3592252 (isConcat!882 lt!2305198))))

(declare-fun b!5858553 () Bool)

(declare-fun e!3592251 () Regex!15924)

(assert (=> b!5858553 (= e!3592251 (Concat!24769 (h!70395 (t!377440 (exprs!5808 (h!70396 zl!343)))) (generalisedConcat!1521 (t!377440 (t!377440 (exprs!5808 (h!70396 zl!343)))))))))

(declare-fun b!5858554 () Bool)

(assert (=> b!5858554 (= e!3592251 EmptyExpr!15924)))

(declare-fun b!5858555 () Bool)

(assert (=> b!5858555 (= e!3592255 (h!70395 (t!377440 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5858556 () Bool)

(assert (=> b!5858556 (= e!3592256 (isEmptyExpr!1359 lt!2305198))))

(declare-fun b!5858557 () Bool)

(assert (=> b!5858557 (= e!3592255 e!3592251)))

(declare-fun c!1039130 () Bool)

(assert (=> b!5858557 (= c!1039130 (is-Cons!63947 (t!377440 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5858558 () Bool)

(assert (=> b!5858558 (= e!3592256 e!3592252)))

(declare-fun c!1039127 () Bool)

(assert (=> b!5858558 (= c!1039127 (isEmpty!35810 (tail!11488 (t!377440 (exprs!5808 (h!70396 zl!343))))))))

(declare-fun b!5858559 () Bool)

(assert (=> b!5858559 (= e!3592253 (isEmpty!35810 (t!377440 (t!377440 (exprs!5808 (h!70396 zl!343))))))))

(declare-fun b!5858560 () Bool)

(assert (=> b!5858560 (= e!3592252 (= lt!2305198 (head!12403 (t!377440 (exprs!5808 (h!70396 zl!343))))))))

(assert (= (and d!1839836 res!2465551) b!5858559))

(assert (= (and d!1839836 c!1039128) b!5858555))

(assert (= (and d!1839836 (not c!1039128)) b!5858557))

(assert (= (and b!5858557 c!1039130) b!5858553))

(assert (= (and b!5858557 (not c!1039130)) b!5858554))

(assert (= (and d!1839836 res!2465552) b!5858551))

(assert (= (and b!5858551 c!1039129) b!5858556))

(assert (= (and b!5858551 (not c!1039129)) b!5858558))

(assert (= (and b!5858558 c!1039127) b!5858560))

(assert (= (and b!5858558 (not c!1039127)) b!5858552))

(declare-fun m!6776226 () Bool)

(assert (=> b!5858553 m!6776226))

(declare-fun m!6776228 () Bool)

(assert (=> b!5858556 m!6776228))

(declare-fun m!6776230 () Bool)

(assert (=> b!5858560 m!6776230))

(declare-fun m!6776232 () Bool)

(assert (=> b!5858558 m!6776232))

(assert (=> b!5858558 m!6776232))

(declare-fun m!6776234 () Bool)

(assert (=> b!5858558 m!6776234))

(assert (=> b!5858551 m!6775776))

(declare-fun m!6776236 () Bool)

(assert (=> b!5858559 m!6776236))

(declare-fun m!6776238 () Bool)

(assert (=> d!1839836 m!6776238))

(declare-fun m!6776240 () Bool)

(assert (=> d!1839836 m!6776240))

(declare-fun m!6776242 () Bool)

(assert (=> b!5858552 m!6776242))

(assert (=> b!5857871 d!1839836))

(declare-fun d!1839838 () Bool)

(assert (=> d!1839838 (= (isEmpty!35809 (t!377442 s!2326)) (is-Nil!63949 (t!377442 s!2326)))))

(assert (=> d!1839648 d!1839838))

(declare-fun d!1839840 () Bool)

(assert (=> d!1839840 (= ($colon$colon!1829 (exprs!5808 lt!2305057) (ite (or c!1038985 c!1038982) (regTwo!32360 r!7292) r!7292)) (Cons!63947 (ite (or c!1038985 c!1038982) (regTwo!32360 r!7292) r!7292) (exprs!5808 lt!2305057)))))

(assert (=> bm!459087 d!1839840))

(assert (=> bm!459037 d!1839784))

(declare-fun bs!1380282 () Bool)

(declare-fun b!5858568 () Bool)

(assert (= bs!1380282 (and b!5858568 b!5857718)))

(declare-fun lambda!320343 () Int)

(assert (=> bs!1380282 (= (and (= (reg!16253 (regTwo!32361 (regTwo!32361 r!7292))) (reg!16253 (regTwo!32361 r!7292))) (= (regTwo!32361 (regTwo!32361 r!7292)) (regTwo!32361 r!7292))) (= lambda!320343 lambda!320285))))

(declare-fun bs!1380283 () Bool)

(assert (= bs!1380283 (and b!5858568 b!5858001)))

(assert (=> bs!1380283 (not (= lambda!320343 lambda!320311))))

(declare-fun bs!1380284 () Bool)

(assert (= bs!1380284 (and b!5858568 b!5857713)))

(assert (=> bs!1380284 (not (= lambda!320343 lambda!320286))))

(declare-fun bs!1380285 () Bool)

(assert (= bs!1380285 (and b!5858568 b!5857770)))

(assert (=> bs!1380285 (not (= lambda!320343 lambda!320288))))

(declare-fun bs!1380286 () Bool)

(assert (= bs!1380286 (and b!5858568 b!5857775)))

(assert (=> bs!1380286 (= (and (= (reg!16253 (regTwo!32361 (regTwo!32361 r!7292))) (reg!16253 (regOne!32361 r!7292))) (= (regTwo!32361 (regTwo!32361 r!7292)) (regOne!32361 r!7292))) (= lambda!320343 lambda!320287))))

(declare-fun bs!1380287 () Bool)

(assert (= bs!1380287 (and b!5858568 b!5858006)))

(assert (=> bs!1380287 (= (and (= (reg!16253 (regTwo!32361 (regTwo!32361 r!7292))) (reg!16253 r!7292)) (= (regTwo!32361 (regTwo!32361 r!7292)) r!7292)) (= lambda!320343 lambda!320310))))

(assert (=> b!5858568 true))

(assert (=> b!5858568 true))

(declare-fun bs!1380288 () Bool)

(declare-fun b!5858563 () Bool)

(assert (= bs!1380288 (and b!5858563 b!5857718)))

(declare-fun lambda!320344 () Int)

(assert (=> bs!1380288 (not (= lambda!320344 lambda!320285))))

(declare-fun bs!1380289 () Bool)

(assert (= bs!1380289 (and b!5858563 b!5858568)))

(assert (=> bs!1380289 (not (= lambda!320344 lambda!320343))))

(declare-fun bs!1380290 () Bool)

(assert (= bs!1380290 (and b!5858563 b!5858001)))

(assert (=> bs!1380290 (= (and (= (regOne!32360 (regTwo!32361 (regTwo!32361 r!7292))) (regOne!32360 r!7292)) (= (regTwo!32360 (regTwo!32361 (regTwo!32361 r!7292))) (regTwo!32360 r!7292))) (= lambda!320344 lambda!320311))))

(declare-fun bs!1380291 () Bool)

(assert (= bs!1380291 (and b!5858563 b!5857713)))

(assert (=> bs!1380291 (= (and (= (regOne!32360 (regTwo!32361 (regTwo!32361 r!7292))) (regOne!32360 (regTwo!32361 r!7292))) (= (regTwo!32360 (regTwo!32361 (regTwo!32361 r!7292))) (regTwo!32360 (regTwo!32361 r!7292)))) (= lambda!320344 lambda!320286))))

(declare-fun bs!1380292 () Bool)

(assert (= bs!1380292 (and b!5858563 b!5857770)))

(assert (=> bs!1380292 (= (and (= (regOne!32360 (regTwo!32361 (regTwo!32361 r!7292))) (regOne!32360 (regOne!32361 r!7292))) (= (regTwo!32360 (regTwo!32361 (regTwo!32361 r!7292))) (regTwo!32360 (regOne!32361 r!7292)))) (= lambda!320344 lambda!320288))))

(declare-fun bs!1380293 () Bool)

(assert (= bs!1380293 (and b!5858563 b!5857775)))

(assert (=> bs!1380293 (not (= lambda!320344 lambda!320287))))

(declare-fun bs!1380294 () Bool)

(assert (= bs!1380294 (and b!5858563 b!5858006)))

(assert (=> bs!1380294 (not (= lambda!320344 lambda!320310))))

(assert (=> b!5858563 true))

(assert (=> b!5858563 true))

(declare-fun b!5858561 () Bool)

(declare-fun e!3592263 () Bool)

(declare-fun e!3592258 () Bool)

(assert (=> b!5858561 (= e!3592263 e!3592258)))

(declare-fun c!1039134 () Bool)

(assert (=> b!5858561 (= c!1039134 (is-Star!15924 (regTwo!32361 (regTwo!32361 r!7292))))))

(declare-fun call!459184 () Bool)

(declare-fun bm!459178 () Bool)

(assert (=> bm!459178 (= call!459184 (Exists!2996 (ite c!1039134 lambda!320343 lambda!320344)))))

(declare-fun b!5858562 () Bool)

(declare-fun c!1039132 () Bool)

(assert (=> b!5858562 (= c!1039132 (is-Union!15924 (regTwo!32361 (regTwo!32361 r!7292))))))

(declare-fun e!3592260 () Bool)

(assert (=> b!5858562 (= e!3592260 e!3592263)))

(assert (=> b!5858563 (= e!3592258 call!459184)))

(declare-fun b!5858564 () Bool)

(declare-fun res!2465554 () Bool)

(declare-fun e!3592259 () Bool)

(assert (=> b!5858564 (=> res!2465554 e!3592259)))

(declare-fun call!459183 () Bool)

(assert (=> b!5858564 (= res!2465554 call!459183)))

(assert (=> b!5858564 (= e!3592258 e!3592259)))

(declare-fun b!5858566 () Bool)

(declare-fun e!3592257 () Bool)

(assert (=> b!5858566 (= e!3592257 (matchRSpec!3025 (regTwo!32361 (regTwo!32361 (regTwo!32361 r!7292))) s!2326))))

(declare-fun bm!459179 () Bool)

(assert (=> bm!459179 (= call!459183 (isEmpty!35809 s!2326))))

(declare-fun b!5858567 () Bool)

(assert (=> b!5858567 (= e!3592260 (= s!2326 (Cons!63949 (c!1038857 (regTwo!32361 (regTwo!32361 r!7292))) Nil!63949)))))

(assert (=> b!5858568 (= e!3592259 call!459184)))

(declare-fun b!5858569 () Bool)

(assert (=> b!5858569 (= e!3592263 e!3592257)))

(declare-fun res!2465555 () Bool)

(assert (=> b!5858569 (= res!2465555 (matchRSpec!3025 (regOne!32361 (regTwo!32361 (regTwo!32361 r!7292))) s!2326))))

(assert (=> b!5858569 (=> res!2465555 e!3592257)))

(declare-fun b!5858565 () Bool)

(declare-fun c!1039133 () Bool)

(assert (=> b!5858565 (= c!1039133 (is-ElementMatch!15924 (regTwo!32361 (regTwo!32361 r!7292))))))

(declare-fun e!3592262 () Bool)

(assert (=> b!5858565 (= e!3592262 e!3592260)))

(declare-fun d!1839842 () Bool)

(declare-fun c!1039131 () Bool)

(assert (=> d!1839842 (= c!1039131 (is-EmptyExpr!15924 (regTwo!32361 (regTwo!32361 r!7292))))))

(declare-fun e!3592261 () Bool)

(assert (=> d!1839842 (= (matchRSpec!3025 (regTwo!32361 (regTwo!32361 r!7292)) s!2326) e!3592261)))

(declare-fun b!5858570 () Bool)

(assert (=> b!5858570 (= e!3592261 e!3592262)))

(declare-fun res!2465553 () Bool)

(assert (=> b!5858570 (= res!2465553 (not (is-EmptyLang!15924 (regTwo!32361 (regTwo!32361 r!7292)))))))

(assert (=> b!5858570 (=> (not res!2465553) (not e!3592262))))

(declare-fun b!5858571 () Bool)

(assert (=> b!5858571 (= e!3592261 call!459183)))

(assert (= (and d!1839842 c!1039131) b!5858571))

(assert (= (and d!1839842 (not c!1039131)) b!5858570))

(assert (= (and b!5858570 res!2465553) b!5858565))

(assert (= (and b!5858565 c!1039133) b!5858567))

(assert (= (and b!5858565 (not c!1039133)) b!5858562))

(assert (= (and b!5858562 c!1039132) b!5858569))

(assert (= (and b!5858562 (not c!1039132)) b!5858561))

(assert (= (and b!5858569 (not res!2465555)) b!5858566))

(assert (= (and b!5858561 c!1039134) b!5858564))

(assert (= (and b!5858561 (not c!1039134)) b!5858563))

(assert (= (and b!5858564 (not res!2465554)) b!5858568))

(assert (= (or b!5858568 b!5858563) bm!459178))

(assert (= (or b!5858571 b!5858564) bm!459179))

(declare-fun m!6776244 () Bool)

(assert (=> bm!459178 m!6776244))

(declare-fun m!6776246 () Bool)

(assert (=> b!5858566 m!6776246))

(assert (=> bm!459179 m!6775660))

(declare-fun m!6776248 () Bool)

(assert (=> b!5858569 m!6776248))

(assert (=> b!5857716 d!1839842))

(declare-fun d!1839844 () Bool)

(declare-fun c!1039135 () Bool)

(assert (=> d!1839844 (= c!1039135 (isEmpty!35809 (tail!11487 (t!377442 s!2326))))))

(declare-fun e!3592264 () Bool)

(assert (=> d!1839844 (= (matchZipper!1990 (derivationStepZipper!1923 lt!2305042 (head!12402 (t!377442 s!2326))) (tail!11487 (t!377442 s!2326))) e!3592264)))

(declare-fun b!5858572 () Bool)

(assert (=> b!5858572 (= e!3592264 (nullableZipper!1763 (derivationStepZipper!1923 lt!2305042 (head!12402 (t!377442 s!2326)))))))

(declare-fun b!5858573 () Bool)

(assert (=> b!5858573 (= e!3592264 (matchZipper!1990 (derivationStepZipper!1923 (derivationStepZipper!1923 lt!2305042 (head!12402 (t!377442 s!2326))) (head!12402 (tail!11487 (t!377442 s!2326)))) (tail!11487 (tail!11487 (t!377442 s!2326)))))))

(assert (= (and d!1839844 c!1039135) b!5858572))

(assert (= (and d!1839844 (not c!1039135)) b!5858573))

(assert (=> d!1839844 m!6775680))

(assert (=> d!1839844 m!6776106))

(assert (=> b!5858572 m!6775828))

(declare-fun m!6776250 () Bool)

(assert (=> b!5858572 m!6776250))

(assert (=> b!5858573 m!6775680))

(assert (=> b!5858573 m!6776110))

(assert (=> b!5858573 m!6775828))

(assert (=> b!5858573 m!6776110))

(declare-fun m!6776252 () Bool)

(assert (=> b!5858573 m!6776252))

(assert (=> b!5858573 m!6775680))

(assert (=> b!5858573 m!6776114))

(assert (=> b!5858573 m!6776252))

(assert (=> b!5858573 m!6776114))

(declare-fun m!6776254 () Bool)

(assert (=> b!5858573 m!6776254))

(assert (=> b!5857990 d!1839844))

(declare-fun bs!1380295 () Bool)

(declare-fun d!1839846 () Bool)

(assert (= bs!1380295 (and d!1839846 b!5857591)))

(declare-fun lambda!320345 () Int)

(assert (=> bs!1380295 (= (= (head!12402 (t!377442 s!2326)) (h!70397 s!2326)) (= lambda!320345 lambda!320275))))

(declare-fun bs!1380296 () Bool)

(assert (= bs!1380296 (and d!1839846 d!1839632)))

(assert (=> bs!1380296 (= (= (head!12402 (t!377442 s!2326)) (h!70397 s!2326)) (= lambda!320345 lambda!320303))))

(declare-fun bs!1380297 () Bool)

(assert (= bs!1380297 (and d!1839846 d!1839750)))

(assert (=> bs!1380297 (= lambda!320345 lambda!320335)))

(declare-fun bs!1380298 () Bool)

(assert (= bs!1380298 (and d!1839846 d!1839830)))

(assert (=> bs!1380298 (= (= (head!12402 (t!377442 s!2326)) (head!12402 s!2326)) (= lambda!320345 lambda!320341))))

(assert (=> d!1839846 true))

(assert (=> d!1839846 (= (derivationStepZipper!1923 lt!2305042 (head!12402 (t!377442 s!2326))) (flatMap!1455 lt!2305042 lambda!320345))))

(declare-fun bs!1380299 () Bool)

(assert (= bs!1380299 d!1839846))

(declare-fun m!6776256 () Bool)

(assert (=> bs!1380299 m!6776256))

(assert (=> b!5857990 d!1839846))

(assert (=> b!5857990 d!1839752))

(assert (=> b!5857990 d!1839754))

(declare-fun d!1839848 () Bool)

(assert (=> d!1839848 (= (nullable!5924 r!7292) (nullableFct!1911 r!7292))))

(declare-fun bs!1380300 () Bool)

(assert (= bs!1380300 d!1839848))

(declare-fun m!6776258 () Bool)

(assert (=> bs!1380300 m!6776258))

(assert (=> b!5858011 d!1839848))

(assert (=> bm!459081 d!1839784))

(declare-fun bs!1380301 () Bool)

(declare-fun b!5858581 () Bool)

(assert (= bs!1380301 (and b!5858581 b!5857718)))

(declare-fun lambda!320346 () Int)

(assert (=> bs!1380301 (= (and (= (reg!16253 (regOne!32361 (regTwo!32361 r!7292))) (reg!16253 (regTwo!32361 r!7292))) (= (regOne!32361 (regTwo!32361 r!7292)) (regTwo!32361 r!7292))) (= lambda!320346 lambda!320285))))

(declare-fun bs!1380302 () Bool)

(assert (= bs!1380302 (and b!5858581 b!5858568)))

(assert (=> bs!1380302 (= (and (= (reg!16253 (regOne!32361 (regTwo!32361 r!7292))) (reg!16253 (regTwo!32361 (regTwo!32361 r!7292)))) (= (regOne!32361 (regTwo!32361 r!7292)) (regTwo!32361 (regTwo!32361 r!7292)))) (= lambda!320346 lambda!320343))))

(declare-fun bs!1380303 () Bool)

(assert (= bs!1380303 (and b!5858581 b!5858001)))

(assert (=> bs!1380303 (not (= lambda!320346 lambda!320311))))

(declare-fun bs!1380304 () Bool)

(assert (= bs!1380304 (and b!5858581 b!5858563)))

(assert (=> bs!1380304 (not (= lambda!320346 lambda!320344))))

(declare-fun bs!1380305 () Bool)

(assert (= bs!1380305 (and b!5858581 b!5857713)))

(assert (=> bs!1380305 (not (= lambda!320346 lambda!320286))))

(declare-fun bs!1380306 () Bool)

(assert (= bs!1380306 (and b!5858581 b!5857770)))

(assert (=> bs!1380306 (not (= lambda!320346 lambda!320288))))

(declare-fun bs!1380307 () Bool)

(assert (= bs!1380307 (and b!5858581 b!5857775)))

(assert (=> bs!1380307 (= (and (= (reg!16253 (regOne!32361 (regTwo!32361 r!7292))) (reg!16253 (regOne!32361 r!7292))) (= (regOne!32361 (regTwo!32361 r!7292)) (regOne!32361 r!7292))) (= lambda!320346 lambda!320287))))

(declare-fun bs!1380308 () Bool)

(assert (= bs!1380308 (and b!5858581 b!5858006)))

(assert (=> bs!1380308 (= (and (= (reg!16253 (regOne!32361 (regTwo!32361 r!7292))) (reg!16253 r!7292)) (= (regOne!32361 (regTwo!32361 r!7292)) r!7292)) (= lambda!320346 lambda!320310))))

(assert (=> b!5858581 true))

(assert (=> b!5858581 true))

(declare-fun bs!1380309 () Bool)

(declare-fun b!5858576 () Bool)

(assert (= bs!1380309 (and b!5858576 b!5857718)))

(declare-fun lambda!320347 () Int)

(assert (=> bs!1380309 (not (= lambda!320347 lambda!320285))))

(declare-fun bs!1380310 () Bool)

(assert (= bs!1380310 (and b!5858576 b!5858568)))

(assert (=> bs!1380310 (not (= lambda!320347 lambda!320343))))

(declare-fun bs!1380311 () Bool)

(assert (= bs!1380311 (and b!5858576 b!5858581)))

(assert (=> bs!1380311 (not (= lambda!320347 lambda!320346))))

(declare-fun bs!1380312 () Bool)

(assert (= bs!1380312 (and b!5858576 b!5858001)))

(assert (=> bs!1380312 (= (and (= (regOne!32360 (regOne!32361 (regTwo!32361 r!7292))) (regOne!32360 r!7292)) (= (regTwo!32360 (regOne!32361 (regTwo!32361 r!7292))) (regTwo!32360 r!7292))) (= lambda!320347 lambda!320311))))

(declare-fun bs!1380313 () Bool)

(assert (= bs!1380313 (and b!5858576 b!5858563)))

(assert (=> bs!1380313 (= (and (= (regOne!32360 (regOne!32361 (regTwo!32361 r!7292))) (regOne!32360 (regTwo!32361 (regTwo!32361 r!7292)))) (= (regTwo!32360 (regOne!32361 (regTwo!32361 r!7292))) (regTwo!32360 (regTwo!32361 (regTwo!32361 r!7292))))) (= lambda!320347 lambda!320344))))

(declare-fun bs!1380314 () Bool)

(assert (= bs!1380314 (and b!5858576 b!5857713)))

(assert (=> bs!1380314 (= (and (= (regOne!32360 (regOne!32361 (regTwo!32361 r!7292))) (regOne!32360 (regTwo!32361 r!7292))) (= (regTwo!32360 (regOne!32361 (regTwo!32361 r!7292))) (regTwo!32360 (regTwo!32361 r!7292)))) (= lambda!320347 lambda!320286))))

(declare-fun bs!1380315 () Bool)

(assert (= bs!1380315 (and b!5858576 b!5857770)))

(assert (=> bs!1380315 (= (and (= (regOne!32360 (regOne!32361 (regTwo!32361 r!7292))) (regOne!32360 (regOne!32361 r!7292))) (= (regTwo!32360 (regOne!32361 (regTwo!32361 r!7292))) (regTwo!32360 (regOne!32361 r!7292)))) (= lambda!320347 lambda!320288))))

(declare-fun bs!1380316 () Bool)

(assert (= bs!1380316 (and b!5858576 b!5857775)))

(assert (=> bs!1380316 (not (= lambda!320347 lambda!320287))))

(declare-fun bs!1380317 () Bool)

(assert (= bs!1380317 (and b!5858576 b!5858006)))

(assert (=> bs!1380317 (not (= lambda!320347 lambda!320310))))

(assert (=> b!5858576 true))

(assert (=> b!5858576 true))

(declare-fun b!5858574 () Bool)

(declare-fun e!3592271 () Bool)

(declare-fun e!3592266 () Bool)

(assert (=> b!5858574 (= e!3592271 e!3592266)))

(declare-fun c!1039139 () Bool)

(assert (=> b!5858574 (= c!1039139 (is-Star!15924 (regOne!32361 (regTwo!32361 r!7292))))))

(declare-fun bm!459180 () Bool)

(declare-fun call!459186 () Bool)

(assert (=> bm!459180 (= call!459186 (Exists!2996 (ite c!1039139 lambda!320346 lambda!320347)))))

(declare-fun b!5858575 () Bool)

(declare-fun c!1039137 () Bool)

(assert (=> b!5858575 (= c!1039137 (is-Union!15924 (regOne!32361 (regTwo!32361 r!7292))))))

(declare-fun e!3592268 () Bool)

(assert (=> b!5858575 (= e!3592268 e!3592271)))

(assert (=> b!5858576 (= e!3592266 call!459186)))

(declare-fun b!5858577 () Bool)

(declare-fun res!2465557 () Bool)

(declare-fun e!3592267 () Bool)

(assert (=> b!5858577 (=> res!2465557 e!3592267)))

(declare-fun call!459185 () Bool)

(assert (=> b!5858577 (= res!2465557 call!459185)))

(assert (=> b!5858577 (= e!3592266 e!3592267)))

(declare-fun b!5858579 () Bool)

(declare-fun e!3592265 () Bool)

(assert (=> b!5858579 (= e!3592265 (matchRSpec!3025 (regTwo!32361 (regOne!32361 (regTwo!32361 r!7292))) s!2326))))

(declare-fun bm!459181 () Bool)

(assert (=> bm!459181 (= call!459185 (isEmpty!35809 s!2326))))

(declare-fun b!5858580 () Bool)

(assert (=> b!5858580 (= e!3592268 (= s!2326 (Cons!63949 (c!1038857 (regOne!32361 (regTwo!32361 r!7292))) Nil!63949)))))

(assert (=> b!5858581 (= e!3592267 call!459186)))

(declare-fun b!5858582 () Bool)

(assert (=> b!5858582 (= e!3592271 e!3592265)))

(declare-fun res!2465558 () Bool)

(assert (=> b!5858582 (= res!2465558 (matchRSpec!3025 (regOne!32361 (regOne!32361 (regTwo!32361 r!7292))) s!2326))))

(assert (=> b!5858582 (=> res!2465558 e!3592265)))

(declare-fun b!5858578 () Bool)

(declare-fun c!1039138 () Bool)

(assert (=> b!5858578 (= c!1039138 (is-ElementMatch!15924 (regOne!32361 (regTwo!32361 r!7292))))))

(declare-fun e!3592270 () Bool)

(assert (=> b!5858578 (= e!3592270 e!3592268)))

(declare-fun d!1839850 () Bool)

(declare-fun c!1039136 () Bool)

(assert (=> d!1839850 (= c!1039136 (is-EmptyExpr!15924 (regOne!32361 (regTwo!32361 r!7292))))))

(declare-fun e!3592269 () Bool)

(assert (=> d!1839850 (= (matchRSpec!3025 (regOne!32361 (regTwo!32361 r!7292)) s!2326) e!3592269)))

(declare-fun b!5858583 () Bool)

(assert (=> b!5858583 (= e!3592269 e!3592270)))

(declare-fun res!2465556 () Bool)

(assert (=> b!5858583 (= res!2465556 (not (is-EmptyLang!15924 (regOne!32361 (regTwo!32361 r!7292)))))))

(assert (=> b!5858583 (=> (not res!2465556) (not e!3592270))))

(declare-fun b!5858584 () Bool)

(assert (=> b!5858584 (= e!3592269 call!459185)))

(assert (= (and d!1839850 c!1039136) b!5858584))

(assert (= (and d!1839850 (not c!1039136)) b!5858583))

(assert (= (and b!5858583 res!2465556) b!5858578))

(assert (= (and b!5858578 c!1039138) b!5858580))

(assert (= (and b!5858578 (not c!1039138)) b!5858575))

(assert (= (and b!5858575 c!1039137) b!5858582))

(assert (= (and b!5858575 (not c!1039137)) b!5858574))

(assert (= (and b!5858582 (not res!2465558)) b!5858579))

(assert (= (and b!5858574 c!1039139) b!5858577))

(assert (= (and b!5858574 (not c!1039139)) b!5858576))

(assert (= (and b!5858577 (not res!2465557)) b!5858581))

(assert (= (or b!5858581 b!5858576) bm!459180))

(assert (= (or b!5858584 b!5858577) bm!459181))

(declare-fun m!6776260 () Bool)

(assert (=> bm!459180 m!6776260))

(declare-fun m!6776262 () Bool)

(assert (=> b!5858579 m!6776262))

(assert (=> bm!459181 m!6775660))

(declare-fun m!6776264 () Bool)

(assert (=> b!5858582 m!6776264))

(assert (=> b!5857719 d!1839850))

(declare-fun d!1839852 () Bool)

(declare-fun res!2465559 () Bool)

(declare-fun e!3592272 () Bool)

(assert (=> d!1839852 (=> res!2465559 e!3592272)))

(assert (=> d!1839852 (= res!2465559 (is-Nil!63947 (exprs!5808 (h!70396 zl!343))))))

(assert (=> d!1839852 (= (forall!15011 (exprs!5808 (h!70396 zl!343)) lambda!320309) e!3592272)))

(declare-fun b!5858585 () Bool)

(declare-fun e!3592273 () Bool)

(assert (=> b!5858585 (= e!3592272 e!3592273)))

(declare-fun res!2465560 () Bool)

(assert (=> b!5858585 (=> (not res!2465560) (not e!3592273))))

(assert (=> b!5858585 (= res!2465560 (dynLambda!25005 lambda!320309 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5858586 () Bool)

(assert (=> b!5858586 (= e!3592273 (forall!15011 (t!377440 (exprs!5808 (h!70396 zl!343))) lambda!320309))))

(assert (= (and d!1839852 (not res!2465559)) b!5858585))

(assert (= (and b!5858585 res!2465560) b!5858586))

(declare-fun b_lambda!220497 () Bool)

(assert (=> (not b_lambda!220497) (not b!5858585)))

(declare-fun m!6776266 () Bool)

(assert (=> b!5858585 m!6776266))

(declare-fun m!6776268 () Bool)

(assert (=> b!5858586 m!6776268))

(assert (=> d!1839650 d!1839852))

(assert (=> b!5857783 d!1839808))

(assert (=> b!5857783 d!1839810))

(assert (=> d!1839662 d!1839660))

(assert (=> d!1839662 d!1839658))

(declare-fun d!1839854 () Bool)

(assert (=> d!1839854 (= (matchR!8107 r!7292 s!2326) (matchRSpec!3025 r!7292 s!2326))))

(assert (=> d!1839854 true))

(declare-fun _$88!4284 () Unit!157119)

(assert (=> d!1839854 (= (choose!44412 r!7292 s!2326) _$88!4284)))

(declare-fun bs!1380318 () Bool)

(assert (= bs!1380318 d!1839854))

(assert (=> bs!1380318 m!6775518))

(assert (=> bs!1380318 m!6775516))

(assert (=> d!1839662 d!1839854))

(assert (=> d!1839662 d!1839640))

(declare-fun bs!1380319 () Bool)

(declare-fun b!5858594 () Bool)

(assert (= bs!1380319 (and b!5858594 b!5858576)))

(declare-fun lambda!320348 () Int)

(assert (=> bs!1380319 (not (= lambda!320348 lambda!320347))))

(declare-fun bs!1380320 () Bool)

(assert (= bs!1380320 (and b!5858594 b!5857718)))

(assert (=> bs!1380320 (= (and (= (reg!16253 (regOne!32361 (regOne!32361 r!7292))) (reg!16253 (regTwo!32361 r!7292))) (= (regOne!32361 (regOne!32361 r!7292)) (regTwo!32361 r!7292))) (= lambda!320348 lambda!320285))))

(declare-fun bs!1380321 () Bool)

(assert (= bs!1380321 (and b!5858594 b!5858568)))

(assert (=> bs!1380321 (= (and (= (reg!16253 (regOne!32361 (regOne!32361 r!7292))) (reg!16253 (regTwo!32361 (regTwo!32361 r!7292)))) (= (regOne!32361 (regOne!32361 r!7292)) (regTwo!32361 (regTwo!32361 r!7292)))) (= lambda!320348 lambda!320343))))

(declare-fun bs!1380322 () Bool)

(assert (= bs!1380322 (and b!5858594 b!5858581)))

(assert (=> bs!1380322 (= (and (= (reg!16253 (regOne!32361 (regOne!32361 r!7292))) (reg!16253 (regOne!32361 (regTwo!32361 r!7292)))) (= (regOne!32361 (regOne!32361 r!7292)) (regOne!32361 (regTwo!32361 r!7292)))) (= lambda!320348 lambda!320346))))

(declare-fun bs!1380323 () Bool)

(assert (= bs!1380323 (and b!5858594 b!5858001)))

(assert (=> bs!1380323 (not (= lambda!320348 lambda!320311))))

(declare-fun bs!1380324 () Bool)

(assert (= bs!1380324 (and b!5858594 b!5858563)))

(assert (=> bs!1380324 (not (= lambda!320348 lambda!320344))))

(declare-fun bs!1380325 () Bool)

(assert (= bs!1380325 (and b!5858594 b!5857713)))

(assert (=> bs!1380325 (not (= lambda!320348 lambda!320286))))

(declare-fun bs!1380326 () Bool)

(assert (= bs!1380326 (and b!5858594 b!5857770)))

(assert (=> bs!1380326 (not (= lambda!320348 lambda!320288))))

(declare-fun bs!1380327 () Bool)

(assert (= bs!1380327 (and b!5858594 b!5857775)))

(assert (=> bs!1380327 (= (and (= (reg!16253 (regOne!32361 (regOne!32361 r!7292))) (reg!16253 (regOne!32361 r!7292))) (= (regOne!32361 (regOne!32361 r!7292)) (regOne!32361 r!7292))) (= lambda!320348 lambda!320287))))

(declare-fun bs!1380328 () Bool)

(assert (= bs!1380328 (and b!5858594 b!5858006)))

(assert (=> bs!1380328 (= (and (= (reg!16253 (regOne!32361 (regOne!32361 r!7292))) (reg!16253 r!7292)) (= (regOne!32361 (regOne!32361 r!7292)) r!7292)) (= lambda!320348 lambda!320310))))

(assert (=> b!5858594 true))

(assert (=> b!5858594 true))

(declare-fun bs!1380329 () Bool)

(declare-fun b!5858589 () Bool)

(assert (= bs!1380329 (and b!5858589 b!5858594)))

(declare-fun lambda!320349 () Int)

(assert (=> bs!1380329 (not (= lambda!320349 lambda!320348))))

(declare-fun bs!1380330 () Bool)

(assert (= bs!1380330 (and b!5858589 b!5858576)))

(assert (=> bs!1380330 (= (and (= (regOne!32360 (regOne!32361 (regOne!32361 r!7292))) (regOne!32360 (regOne!32361 (regTwo!32361 r!7292)))) (= (regTwo!32360 (regOne!32361 (regOne!32361 r!7292))) (regTwo!32360 (regOne!32361 (regTwo!32361 r!7292))))) (= lambda!320349 lambda!320347))))

(declare-fun bs!1380331 () Bool)

(assert (= bs!1380331 (and b!5858589 b!5857718)))

(assert (=> bs!1380331 (not (= lambda!320349 lambda!320285))))

(declare-fun bs!1380332 () Bool)

(assert (= bs!1380332 (and b!5858589 b!5858568)))

(assert (=> bs!1380332 (not (= lambda!320349 lambda!320343))))

(declare-fun bs!1380333 () Bool)

(assert (= bs!1380333 (and b!5858589 b!5858581)))

(assert (=> bs!1380333 (not (= lambda!320349 lambda!320346))))

(declare-fun bs!1380334 () Bool)

(assert (= bs!1380334 (and b!5858589 b!5858001)))

(assert (=> bs!1380334 (= (and (= (regOne!32360 (regOne!32361 (regOne!32361 r!7292))) (regOne!32360 r!7292)) (= (regTwo!32360 (regOne!32361 (regOne!32361 r!7292))) (regTwo!32360 r!7292))) (= lambda!320349 lambda!320311))))

(declare-fun bs!1380335 () Bool)

(assert (= bs!1380335 (and b!5858589 b!5858563)))

(assert (=> bs!1380335 (= (and (= (regOne!32360 (regOne!32361 (regOne!32361 r!7292))) (regOne!32360 (regTwo!32361 (regTwo!32361 r!7292)))) (= (regTwo!32360 (regOne!32361 (regOne!32361 r!7292))) (regTwo!32360 (regTwo!32361 (regTwo!32361 r!7292))))) (= lambda!320349 lambda!320344))))

(declare-fun bs!1380336 () Bool)

(assert (= bs!1380336 (and b!5858589 b!5857713)))

(assert (=> bs!1380336 (= (and (= (regOne!32360 (regOne!32361 (regOne!32361 r!7292))) (regOne!32360 (regTwo!32361 r!7292))) (= (regTwo!32360 (regOne!32361 (regOne!32361 r!7292))) (regTwo!32360 (regTwo!32361 r!7292)))) (= lambda!320349 lambda!320286))))

(declare-fun bs!1380337 () Bool)

(assert (= bs!1380337 (and b!5858589 b!5857770)))

(assert (=> bs!1380337 (= (and (= (regOne!32360 (regOne!32361 (regOne!32361 r!7292))) (regOne!32360 (regOne!32361 r!7292))) (= (regTwo!32360 (regOne!32361 (regOne!32361 r!7292))) (regTwo!32360 (regOne!32361 r!7292)))) (= lambda!320349 lambda!320288))))

(declare-fun bs!1380338 () Bool)

(assert (= bs!1380338 (and b!5858589 b!5857775)))

(assert (=> bs!1380338 (not (= lambda!320349 lambda!320287))))

(declare-fun bs!1380339 () Bool)

(assert (= bs!1380339 (and b!5858589 b!5858006)))

(assert (=> bs!1380339 (not (= lambda!320349 lambda!320310))))

(assert (=> b!5858589 true))

(assert (=> b!5858589 true))

(declare-fun b!5858587 () Bool)

(declare-fun e!3592280 () Bool)

(declare-fun e!3592275 () Bool)

(assert (=> b!5858587 (= e!3592280 e!3592275)))

(declare-fun c!1039143 () Bool)

(assert (=> b!5858587 (= c!1039143 (is-Star!15924 (regOne!32361 (regOne!32361 r!7292))))))

(declare-fun bm!459182 () Bool)

(declare-fun call!459188 () Bool)

(assert (=> bm!459182 (= call!459188 (Exists!2996 (ite c!1039143 lambda!320348 lambda!320349)))))

(declare-fun b!5858588 () Bool)

(declare-fun c!1039141 () Bool)

(assert (=> b!5858588 (= c!1039141 (is-Union!15924 (regOne!32361 (regOne!32361 r!7292))))))

(declare-fun e!3592277 () Bool)

(assert (=> b!5858588 (= e!3592277 e!3592280)))

(assert (=> b!5858589 (= e!3592275 call!459188)))

(declare-fun b!5858590 () Bool)

(declare-fun res!2465562 () Bool)

(declare-fun e!3592276 () Bool)

(assert (=> b!5858590 (=> res!2465562 e!3592276)))

(declare-fun call!459187 () Bool)

(assert (=> b!5858590 (= res!2465562 call!459187)))

(assert (=> b!5858590 (= e!3592275 e!3592276)))

(declare-fun b!5858592 () Bool)

(declare-fun e!3592274 () Bool)

(assert (=> b!5858592 (= e!3592274 (matchRSpec!3025 (regTwo!32361 (regOne!32361 (regOne!32361 r!7292))) s!2326))))

(declare-fun bm!459183 () Bool)

(assert (=> bm!459183 (= call!459187 (isEmpty!35809 s!2326))))

(declare-fun b!5858593 () Bool)

(assert (=> b!5858593 (= e!3592277 (= s!2326 (Cons!63949 (c!1038857 (regOne!32361 (regOne!32361 r!7292))) Nil!63949)))))

(assert (=> b!5858594 (= e!3592276 call!459188)))

(declare-fun b!5858595 () Bool)

(assert (=> b!5858595 (= e!3592280 e!3592274)))

(declare-fun res!2465563 () Bool)

(assert (=> b!5858595 (= res!2465563 (matchRSpec!3025 (regOne!32361 (regOne!32361 (regOne!32361 r!7292))) s!2326))))

(assert (=> b!5858595 (=> res!2465563 e!3592274)))

(declare-fun b!5858591 () Bool)

(declare-fun c!1039142 () Bool)

(assert (=> b!5858591 (= c!1039142 (is-ElementMatch!15924 (regOne!32361 (regOne!32361 r!7292))))))

(declare-fun e!3592279 () Bool)

(assert (=> b!5858591 (= e!3592279 e!3592277)))

(declare-fun d!1839856 () Bool)

(declare-fun c!1039140 () Bool)

(assert (=> d!1839856 (= c!1039140 (is-EmptyExpr!15924 (regOne!32361 (regOne!32361 r!7292))))))

(declare-fun e!3592278 () Bool)

(assert (=> d!1839856 (= (matchRSpec!3025 (regOne!32361 (regOne!32361 r!7292)) s!2326) e!3592278)))

(declare-fun b!5858596 () Bool)

(assert (=> b!5858596 (= e!3592278 e!3592279)))

(declare-fun res!2465561 () Bool)

(assert (=> b!5858596 (= res!2465561 (not (is-EmptyLang!15924 (regOne!32361 (regOne!32361 r!7292)))))))

(assert (=> b!5858596 (=> (not res!2465561) (not e!3592279))))

(declare-fun b!5858597 () Bool)

(assert (=> b!5858597 (= e!3592278 call!459187)))

(assert (= (and d!1839856 c!1039140) b!5858597))

(assert (= (and d!1839856 (not c!1039140)) b!5858596))

(assert (= (and b!5858596 res!2465561) b!5858591))

(assert (= (and b!5858591 c!1039142) b!5858593))

(assert (= (and b!5858591 (not c!1039142)) b!5858588))

(assert (= (and b!5858588 c!1039141) b!5858595))

(assert (= (and b!5858588 (not c!1039141)) b!5858587))

(assert (= (and b!5858595 (not res!2465563)) b!5858592))

(assert (= (and b!5858587 c!1039143) b!5858590))

(assert (= (and b!5858587 (not c!1039143)) b!5858589))

(assert (= (and b!5858590 (not res!2465562)) b!5858594))

(assert (= (or b!5858594 b!5858589) bm!459182))

(assert (= (or b!5858597 b!5858590) bm!459183))

(declare-fun m!6776270 () Bool)

(assert (=> bm!459182 m!6776270))

(declare-fun m!6776272 () Bool)

(assert (=> b!5858592 m!6776272))

(assert (=> bm!459183 m!6775660))

(declare-fun m!6776274 () Bool)

(assert (=> b!5858595 m!6776274))

(assert (=> b!5857776 d!1839856))

(declare-fun bs!1380340 () Bool)

(declare-fun b!5858605 () Bool)

(assert (= bs!1380340 (and b!5858605 b!5858594)))

(declare-fun lambda!320350 () Int)

(assert (=> bs!1380340 (= (and (= (reg!16253 (regTwo!32361 (regOne!32361 r!7292))) (reg!16253 (regOne!32361 (regOne!32361 r!7292)))) (= (regTwo!32361 (regOne!32361 r!7292)) (regOne!32361 (regOne!32361 r!7292)))) (= lambda!320350 lambda!320348))))

(declare-fun bs!1380341 () Bool)

(assert (= bs!1380341 (and b!5858605 b!5858576)))

(assert (=> bs!1380341 (not (= lambda!320350 lambda!320347))))

(declare-fun bs!1380342 () Bool)

(assert (= bs!1380342 (and b!5858605 b!5857718)))

(assert (=> bs!1380342 (= (and (= (reg!16253 (regTwo!32361 (regOne!32361 r!7292))) (reg!16253 (regTwo!32361 r!7292))) (= (regTwo!32361 (regOne!32361 r!7292)) (regTwo!32361 r!7292))) (= lambda!320350 lambda!320285))))

(declare-fun bs!1380343 () Bool)

(assert (= bs!1380343 (and b!5858605 b!5858568)))

(assert (=> bs!1380343 (= (and (= (reg!16253 (regTwo!32361 (regOne!32361 r!7292))) (reg!16253 (regTwo!32361 (regTwo!32361 r!7292)))) (= (regTwo!32361 (regOne!32361 r!7292)) (regTwo!32361 (regTwo!32361 r!7292)))) (= lambda!320350 lambda!320343))))

(declare-fun bs!1380344 () Bool)

(assert (= bs!1380344 (and b!5858605 b!5858581)))

(assert (=> bs!1380344 (= (and (= (reg!16253 (regTwo!32361 (regOne!32361 r!7292))) (reg!16253 (regOne!32361 (regTwo!32361 r!7292)))) (= (regTwo!32361 (regOne!32361 r!7292)) (regOne!32361 (regTwo!32361 r!7292)))) (= lambda!320350 lambda!320346))))

(declare-fun bs!1380345 () Bool)

(assert (= bs!1380345 (and b!5858605 b!5858589)))

(assert (=> bs!1380345 (not (= lambda!320350 lambda!320349))))

(declare-fun bs!1380346 () Bool)

(assert (= bs!1380346 (and b!5858605 b!5858001)))

(assert (=> bs!1380346 (not (= lambda!320350 lambda!320311))))

(declare-fun bs!1380347 () Bool)

(assert (= bs!1380347 (and b!5858605 b!5858563)))

(assert (=> bs!1380347 (not (= lambda!320350 lambda!320344))))

(declare-fun bs!1380348 () Bool)

(assert (= bs!1380348 (and b!5858605 b!5857713)))

(assert (=> bs!1380348 (not (= lambda!320350 lambda!320286))))

(declare-fun bs!1380349 () Bool)

(assert (= bs!1380349 (and b!5858605 b!5857770)))

(assert (=> bs!1380349 (not (= lambda!320350 lambda!320288))))

(declare-fun bs!1380350 () Bool)

(assert (= bs!1380350 (and b!5858605 b!5857775)))

(assert (=> bs!1380350 (= (and (= (reg!16253 (regTwo!32361 (regOne!32361 r!7292))) (reg!16253 (regOne!32361 r!7292))) (= (regTwo!32361 (regOne!32361 r!7292)) (regOne!32361 r!7292))) (= lambda!320350 lambda!320287))))

(declare-fun bs!1380351 () Bool)

(assert (= bs!1380351 (and b!5858605 b!5858006)))

(assert (=> bs!1380351 (= (and (= (reg!16253 (regTwo!32361 (regOne!32361 r!7292))) (reg!16253 r!7292)) (= (regTwo!32361 (regOne!32361 r!7292)) r!7292)) (= lambda!320350 lambda!320310))))

(assert (=> b!5858605 true))

(assert (=> b!5858605 true))

(declare-fun bs!1380352 () Bool)

(declare-fun b!5858600 () Bool)

(assert (= bs!1380352 (and b!5858600 b!5858594)))

(declare-fun lambda!320351 () Int)

(assert (=> bs!1380352 (not (= lambda!320351 lambda!320348))))

(declare-fun bs!1380353 () Bool)

(assert (= bs!1380353 (and b!5858600 b!5858576)))

(assert (=> bs!1380353 (= (and (= (regOne!32360 (regTwo!32361 (regOne!32361 r!7292))) (regOne!32360 (regOne!32361 (regTwo!32361 r!7292)))) (= (regTwo!32360 (regTwo!32361 (regOne!32361 r!7292))) (regTwo!32360 (regOne!32361 (regTwo!32361 r!7292))))) (= lambda!320351 lambda!320347))))

(declare-fun bs!1380354 () Bool)

(assert (= bs!1380354 (and b!5858600 b!5857718)))

(assert (=> bs!1380354 (not (= lambda!320351 lambda!320285))))

(declare-fun bs!1380355 () Bool)

(assert (= bs!1380355 (and b!5858600 b!5858568)))

(assert (=> bs!1380355 (not (= lambda!320351 lambda!320343))))

(declare-fun bs!1380356 () Bool)

(assert (= bs!1380356 (and b!5858600 b!5858581)))

(assert (=> bs!1380356 (not (= lambda!320351 lambda!320346))))

(declare-fun bs!1380357 () Bool)

(assert (= bs!1380357 (and b!5858600 b!5858605)))

(assert (=> bs!1380357 (not (= lambda!320351 lambda!320350))))

(declare-fun bs!1380358 () Bool)

(assert (= bs!1380358 (and b!5858600 b!5858589)))

(assert (=> bs!1380358 (= (and (= (regOne!32360 (regTwo!32361 (regOne!32361 r!7292))) (regOne!32360 (regOne!32361 (regOne!32361 r!7292)))) (= (regTwo!32360 (regTwo!32361 (regOne!32361 r!7292))) (regTwo!32360 (regOne!32361 (regOne!32361 r!7292))))) (= lambda!320351 lambda!320349))))

(declare-fun bs!1380359 () Bool)

(assert (= bs!1380359 (and b!5858600 b!5858001)))

(assert (=> bs!1380359 (= (and (= (regOne!32360 (regTwo!32361 (regOne!32361 r!7292))) (regOne!32360 r!7292)) (= (regTwo!32360 (regTwo!32361 (regOne!32361 r!7292))) (regTwo!32360 r!7292))) (= lambda!320351 lambda!320311))))

(declare-fun bs!1380360 () Bool)

(assert (= bs!1380360 (and b!5858600 b!5858563)))

(assert (=> bs!1380360 (= (and (= (regOne!32360 (regTwo!32361 (regOne!32361 r!7292))) (regOne!32360 (regTwo!32361 (regTwo!32361 r!7292)))) (= (regTwo!32360 (regTwo!32361 (regOne!32361 r!7292))) (regTwo!32360 (regTwo!32361 (regTwo!32361 r!7292))))) (= lambda!320351 lambda!320344))))

(declare-fun bs!1380361 () Bool)

(assert (= bs!1380361 (and b!5858600 b!5857713)))

(assert (=> bs!1380361 (= (and (= (regOne!32360 (regTwo!32361 (regOne!32361 r!7292))) (regOne!32360 (regTwo!32361 r!7292))) (= (regTwo!32360 (regTwo!32361 (regOne!32361 r!7292))) (regTwo!32360 (regTwo!32361 r!7292)))) (= lambda!320351 lambda!320286))))

(declare-fun bs!1380362 () Bool)

(assert (= bs!1380362 (and b!5858600 b!5857770)))

(assert (=> bs!1380362 (= (and (= (regOne!32360 (regTwo!32361 (regOne!32361 r!7292))) (regOne!32360 (regOne!32361 r!7292))) (= (regTwo!32360 (regTwo!32361 (regOne!32361 r!7292))) (regTwo!32360 (regOne!32361 r!7292)))) (= lambda!320351 lambda!320288))))

(declare-fun bs!1380363 () Bool)

(assert (= bs!1380363 (and b!5858600 b!5857775)))

(assert (=> bs!1380363 (not (= lambda!320351 lambda!320287))))

(declare-fun bs!1380364 () Bool)

(assert (= bs!1380364 (and b!5858600 b!5858006)))

(assert (=> bs!1380364 (not (= lambda!320351 lambda!320310))))

(assert (=> b!5858600 true))

(assert (=> b!5858600 true))

(declare-fun b!5858598 () Bool)

(declare-fun e!3592287 () Bool)

(declare-fun e!3592282 () Bool)

(assert (=> b!5858598 (= e!3592287 e!3592282)))

(declare-fun c!1039147 () Bool)

(assert (=> b!5858598 (= c!1039147 (is-Star!15924 (regTwo!32361 (regOne!32361 r!7292))))))

(declare-fun call!459190 () Bool)

(declare-fun bm!459184 () Bool)

(assert (=> bm!459184 (= call!459190 (Exists!2996 (ite c!1039147 lambda!320350 lambda!320351)))))

(declare-fun b!5858599 () Bool)

(declare-fun c!1039145 () Bool)

(assert (=> b!5858599 (= c!1039145 (is-Union!15924 (regTwo!32361 (regOne!32361 r!7292))))))

(declare-fun e!3592284 () Bool)

(assert (=> b!5858599 (= e!3592284 e!3592287)))

(assert (=> b!5858600 (= e!3592282 call!459190)))

(declare-fun b!5858601 () Bool)

(declare-fun res!2465565 () Bool)

(declare-fun e!3592283 () Bool)

(assert (=> b!5858601 (=> res!2465565 e!3592283)))

(declare-fun call!459189 () Bool)

(assert (=> b!5858601 (= res!2465565 call!459189)))

(assert (=> b!5858601 (= e!3592282 e!3592283)))

(declare-fun b!5858603 () Bool)

(declare-fun e!3592281 () Bool)

(assert (=> b!5858603 (= e!3592281 (matchRSpec!3025 (regTwo!32361 (regTwo!32361 (regOne!32361 r!7292))) s!2326))))

(declare-fun bm!459185 () Bool)

(assert (=> bm!459185 (= call!459189 (isEmpty!35809 s!2326))))

(declare-fun b!5858604 () Bool)

(assert (=> b!5858604 (= e!3592284 (= s!2326 (Cons!63949 (c!1038857 (regTwo!32361 (regOne!32361 r!7292))) Nil!63949)))))

(assert (=> b!5858605 (= e!3592283 call!459190)))

(declare-fun b!5858606 () Bool)

(assert (=> b!5858606 (= e!3592287 e!3592281)))

(declare-fun res!2465566 () Bool)

(assert (=> b!5858606 (= res!2465566 (matchRSpec!3025 (regOne!32361 (regTwo!32361 (regOne!32361 r!7292))) s!2326))))

(assert (=> b!5858606 (=> res!2465566 e!3592281)))

(declare-fun b!5858602 () Bool)

(declare-fun c!1039146 () Bool)

(assert (=> b!5858602 (= c!1039146 (is-ElementMatch!15924 (regTwo!32361 (regOne!32361 r!7292))))))

(declare-fun e!3592286 () Bool)

(assert (=> b!5858602 (= e!3592286 e!3592284)))

(declare-fun d!1839858 () Bool)

(declare-fun c!1039144 () Bool)

(assert (=> d!1839858 (= c!1039144 (is-EmptyExpr!15924 (regTwo!32361 (regOne!32361 r!7292))))))

(declare-fun e!3592285 () Bool)

(assert (=> d!1839858 (= (matchRSpec!3025 (regTwo!32361 (regOne!32361 r!7292)) s!2326) e!3592285)))

(declare-fun b!5858607 () Bool)

(assert (=> b!5858607 (= e!3592285 e!3592286)))

(declare-fun res!2465564 () Bool)

(assert (=> b!5858607 (= res!2465564 (not (is-EmptyLang!15924 (regTwo!32361 (regOne!32361 r!7292)))))))

(assert (=> b!5858607 (=> (not res!2465564) (not e!3592286))))

(declare-fun b!5858608 () Bool)

(assert (=> b!5858608 (= e!3592285 call!459189)))

(assert (= (and d!1839858 c!1039144) b!5858608))

(assert (= (and d!1839858 (not c!1039144)) b!5858607))

(assert (= (and b!5858607 res!2465564) b!5858602))

(assert (= (and b!5858602 c!1039146) b!5858604))

(assert (= (and b!5858602 (not c!1039146)) b!5858599))

(assert (= (and b!5858599 c!1039145) b!5858606))

(assert (= (and b!5858599 (not c!1039145)) b!5858598))

(assert (= (and b!5858606 (not res!2465566)) b!5858603))

(assert (= (and b!5858598 c!1039147) b!5858601))

(assert (= (and b!5858598 (not c!1039147)) b!5858600))

(assert (= (and b!5858601 (not res!2465565)) b!5858605))

(assert (= (or b!5858605 b!5858600) bm!459184))

(assert (= (or b!5858608 b!5858601) bm!459185))

(declare-fun m!6776276 () Bool)

(assert (=> bm!459184 m!6776276))

(declare-fun m!6776278 () Bool)

(assert (=> b!5858603 m!6776278))

(assert (=> bm!459185 m!6775660))

(declare-fun m!6776280 () Bool)

(assert (=> b!5858606 m!6776280))

(assert (=> b!5857773 d!1839858))

(declare-fun b!5858609 () Bool)

(declare-fun e!3592289 () (Set Context!10616))

(assert (=> b!5858609 (= e!3592289 (set.insert (ite c!1038960 lt!2305057 (Context!10617 call!459071)) (as set.empty (Set Context!10616))))))

(declare-fun b!5858610 () Bool)

(declare-fun e!3592292 () (Set Context!10616))

(declare-fun call!459192 () (Set Context!10616))

(declare-fun call!459196 () (Set Context!10616))

(assert (=> b!5858610 (= e!3592292 (set.union call!459192 call!459196))))

(declare-fun c!1039148 () Bool)

(declare-fun bm!459186 () Bool)

(declare-fun call!459191 () List!64071)

(declare-fun c!1039149 () Bool)

(declare-fun c!1039151 () Bool)

(assert (=> bm!459186 (= call!459196 (derivationStepZipperDown!1190 (ite c!1039149 (regTwo!32361 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (ite c!1039151 (regTwo!32360 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (ite c!1039148 (regOne!32360 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (reg!16253 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292))))))) (ite (or c!1039149 c!1039151) (ite c!1038960 lt!2305057 (Context!10617 call!459071)) (Context!10617 call!459191)) (h!70397 s!2326)))))

(declare-fun call!459193 () List!64071)

(declare-fun bm!459187 () Bool)

(assert (=> bm!459187 (= call!459192 (derivationStepZipperDown!1190 (ite c!1039149 (regOne!32361 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (regOne!32360 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292))))) (ite c!1039149 (ite c!1038960 lt!2305057 (Context!10617 call!459071)) (Context!10617 call!459193)) (h!70397 s!2326)))))

(declare-fun bm!459188 () Bool)

(assert (=> bm!459188 (= call!459193 ($colon$colon!1829 (exprs!5808 (ite c!1038960 lt!2305057 (Context!10617 call!459071))) (ite (or c!1039151 c!1039148) (regTwo!32360 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292))))))))

(declare-fun b!5858612 () Bool)

(declare-fun e!3592293 () (Set Context!10616))

(declare-fun call!459194 () (Set Context!10616))

(assert (=> b!5858612 (= e!3592293 call!459194)))

(declare-fun bm!459189 () Bool)

(declare-fun call!459195 () (Set Context!10616))

(assert (=> bm!459189 (= call!459194 call!459195)))

(declare-fun bm!459190 () Bool)

(assert (=> bm!459190 (= call!459195 call!459196)))

(declare-fun b!5858613 () Bool)

(declare-fun e!3592288 () (Set Context!10616))

(declare-fun e!3592290 () (Set Context!10616))

(assert (=> b!5858613 (= e!3592288 e!3592290)))

(assert (=> b!5858613 (= c!1039148 (is-Concat!24769 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))))))

(declare-fun b!5858614 () Bool)

(assert (=> b!5858614 (= e!3592290 call!459194)))

(declare-fun b!5858615 () Bool)

(assert (=> b!5858615 (= e!3592293 (as set.empty (Set Context!10616)))))

(declare-fun b!5858616 () Bool)

(assert (=> b!5858616 (= e!3592288 (set.union call!459192 call!459195))))

(declare-fun b!5858617 () Bool)

(declare-fun e!3592291 () Bool)

(assert (=> b!5858617 (= c!1039151 e!3592291)))

(declare-fun res!2465567 () Bool)

(assert (=> b!5858617 (=> (not res!2465567) (not e!3592291))))

(assert (=> b!5858617 (= res!2465567 (is-Concat!24769 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))))))

(assert (=> b!5858617 (= e!3592292 e!3592288)))

(declare-fun b!5858618 () Bool)

(assert (=> b!5858618 (= e!3592289 e!3592292)))

(assert (=> b!5858618 (= c!1039149 (is-Union!15924 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))))))

(declare-fun bm!459191 () Bool)

(assert (=> bm!459191 (= call!459191 call!459193)))

(declare-fun b!5858619 () Bool)

(declare-fun c!1039152 () Bool)

(assert (=> b!5858619 (= c!1039152 (is-Star!15924 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))))))

(assert (=> b!5858619 (= e!3592290 e!3592293)))

(declare-fun b!5858611 () Bool)

(assert (=> b!5858611 (= e!3592291 (nullable!5924 (regOne!32360 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292))))))))

(declare-fun c!1039150 () Bool)

(declare-fun d!1839860 () Bool)

(assert (=> d!1839860 (= c!1039150 (and (is-ElementMatch!15924 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (= (c!1038857 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (h!70397 s!2326))))))

(assert (=> d!1839860 (= (derivationStepZipperDown!1190 (ite c!1038960 (regOne!32361 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292))) (ite c!1038960 lt!2305057 (Context!10617 call!459071)) (h!70397 s!2326)) e!3592289)))

(assert (= (and d!1839860 c!1039150) b!5858609))

(assert (= (and d!1839860 (not c!1039150)) b!5858618))

(assert (= (and b!5858618 c!1039149) b!5858610))

(assert (= (and b!5858618 (not c!1039149)) b!5858617))

(assert (= (and b!5858617 res!2465567) b!5858611))

(assert (= (and b!5858617 c!1039151) b!5858616))

(assert (= (and b!5858617 (not c!1039151)) b!5858613))

(assert (= (and b!5858613 c!1039148) b!5858614))

(assert (= (and b!5858613 (not c!1039148)) b!5858619))

(assert (= (and b!5858619 c!1039152) b!5858612))

(assert (= (and b!5858619 (not c!1039152)) b!5858615))

(assert (= (or b!5858614 b!5858612) bm!459191))

(assert (= (or b!5858614 b!5858612) bm!459189))

(assert (= (or b!5858616 bm!459191) bm!459188))

(assert (= (or b!5858616 bm!459189) bm!459190))

(assert (= (or b!5858610 bm!459190) bm!459186))

(assert (= (or b!5858610 b!5858616) bm!459187))

(declare-fun m!6776282 () Bool)

(assert (=> b!5858611 m!6776282))

(declare-fun m!6776284 () Bool)

(assert (=> bm!459188 m!6776284))

(declare-fun m!6776286 () Bool)

(assert (=> b!5858609 m!6776286))

(declare-fun m!6776288 () Bool)

(assert (=> bm!459186 m!6776288))

(declare-fun m!6776290 () Bool)

(assert (=> bm!459187 m!6776290))

(assert (=> bm!459065 d!1839860))

(assert (=> d!1839608 d!1839784))

(declare-fun b!5858620 () Bool)

(declare-fun e!3592299 () Bool)

(declare-fun call!459198 () Bool)

(assert (=> b!5858620 (= e!3592299 call!459198)))

(declare-fun bm!459192 () Bool)

(declare-fun c!1039153 () Bool)

(assert (=> bm!459192 (= call!459198 (validRegex!7660 (ite c!1039153 (regTwo!32361 (regOne!32361 r!7292)) (regTwo!32360 (regOne!32361 r!7292)))))))

(declare-fun b!5858621 () Bool)

(declare-fun e!3592296 () Bool)

(assert (=> b!5858621 (= e!3592296 e!3592299)))

(declare-fun res!2465572 () Bool)

(assert (=> b!5858621 (=> (not res!2465572) (not e!3592299))))

(declare-fun call!459199 () Bool)

(assert (=> b!5858621 (= res!2465572 call!459199)))

(declare-fun b!5858622 () Bool)

(declare-fun e!3592298 () Bool)

(declare-fun e!3592295 () Bool)

(assert (=> b!5858622 (= e!3592298 e!3592295)))

(declare-fun res!2465571 () Bool)

(assert (=> b!5858622 (= res!2465571 (not (nullable!5924 (reg!16253 (regOne!32361 r!7292)))))))

(assert (=> b!5858622 (=> (not res!2465571) (not e!3592295))))

(declare-fun b!5858623 () Bool)

(declare-fun res!2465570 () Bool)

(assert (=> b!5858623 (=> res!2465570 e!3592296)))

(assert (=> b!5858623 (= res!2465570 (not (is-Concat!24769 (regOne!32361 r!7292))))))

(declare-fun e!3592300 () Bool)

(assert (=> b!5858623 (= e!3592300 e!3592296)))

(declare-fun b!5858624 () Bool)

(declare-fun call!459197 () Bool)

(assert (=> b!5858624 (= e!3592295 call!459197)))

(declare-fun bm!459193 () Bool)

(assert (=> bm!459193 (= call!459199 call!459197)))

(declare-fun b!5858625 () Bool)

(assert (=> b!5858625 (= e!3592298 e!3592300)))

(assert (=> b!5858625 (= c!1039153 (is-Union!15924 (regOne!32361 r!7292)))))

(declare-fun b!5858626 () Bool)

(declare-fun res!2465569 () Bool)

(declare-fun e!3592297 () Bool)

(assert (=> b!5858626 (=> (not res!2465569) (not e!3592297))))

(assert (=> b!5858626 (= res!2465569 call!459199)))

(assert (=> b!5858626 (= e!3592300 e!3592297)))

(declare-fun c!1039154 () Bool)

(declare-fun bm!459194 () Bool)

(assert (=> bm!459194 (= call!459197 (validRegex!7660 (ite c!1039154 (reg!16253 (regOne!32361 r!7292)) (ite c!1039153 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292))))))))

(declare-fun b!5858627 () Bool)

(assert (=> b!5858627 (= e!3592297 call!459198)))

(declare-fun b!5858628 () Bool)

(declare-fun e!3592294 () Bool)

(assert (=> b!5858628 (= e!3592294 e!3592298)))

(assert (=> b!5858628 (= c!1039154 (is-Star!15924 (regOne!32361 r!7292)))))

(declare-fun d!1839862 () Bool)

(declare-fun res!2465568 () Bool)

(assert (=> d!1839862 (=> res!2465568 e!3592294)))

(assert (=> d!1839862 (= res!2465568 (is-ElementMatch!15924 (regOne!32361 r!7292)))))

(assert (=> d!1839862 (= (validRegex!7660 (regOne!32361 r!7292)) e!3592294)))

(assert (= (and d!1839862 (not res!2465568)) b!5858628))

(assert (= (and b!5858628 c!1039154) b!5858622))

(assert (= (and b!5858628 (not c!1039154)) b!5858625))

(assert (= (and b!5858622 res!2465571) b!5858624))

(assert (= (and b!5858625 c!1039153) b!5858626))

(assert (= (and b!5858625 (not c!1039153)) b!5858623))

(assert (= (and b!5858626 res!2465569) b!5858627))

(assert (= (and b!5858623 (not res!2465570)) b!5858621))

(assert (= (and b!5858621 res!2465572) b!5858620))

(assert (= (or b!5858627 b!5858620) bm!459192))

(assert (= (or b!5858626 b!5858621) bm!459193))

(assert (= (or b!5858624 bm!459193) bm!459194))

(declare-fun m!6776292 () Bool)

(assert (=> bm!459192 m!6776292))

(declare-fun m!6776294 () Bool)

(assert (=> b!5858622 m!6776294))

(declare-fun m!6776296 () Bool)

(assert (=> bm!459194 m!6776296))

(assert (=> d!1839608 d!1839862))

(assert (=> b!5858015 d!1839808))

(assert (=> b!5858015 d!1839810))

(assert (=> bm!459034 d!1839784))

(declare-fun b!5858629 () Bool)

(declare-fun e!3592302 () (Set Context!10616))

(assert (=> b!5858629 (= e!3592302 (set.insert (Context!10617 (t!377440 (exprs!5808 lt!2305051))) (as set.empty (Set Context!10616))))))

(declare-fun b!5858630 () Bool)

(declare-fun e!3592305 () (Set Context!10616))

(declare-fun call!459201 () (Set Context!10616))

(declare-fun call!459205 () (Set Context!10616))

(assert (=> b!5858630 (= e!3592305 (set.union call!459201 call!459205))))

(declare-fun bm!459195 () Bool)

(declare-fun c!1039158 () Bool)

(declare-fun c!1039156 () Bool)

(declare-fun c!1039155 () Bool)

(declare-fun call!459200 () List!64071)

(assert (=> bm!459195 (= call!459205 (derivationStepZipperDown!1190 (ite c!1039156 (regTwo!32361 (h!70395 (exprs!5808 lt!2305051))) (ite c!1039158 (regTwo!32360 (h!70395 (exprs!5808 lt!2305051))) (ite c!1039155 (regOne!32360 (h!70395 (exprs!5808 lt!2305051))) (reg!16253 (h!70395 (exprs!5808 lt!2305051)))))) (ite (or c!1039156 c!1039158) (Context!10617 (t!377440 (exprs!5808 lt!2305051))) (Context!10617 call!459200)) (h!70397 s!2326)))))

(declare-fun bm!459196 () Bool)

(declare-fun call!459202 () List!64071)

(assert (=> bm!459196 (= call!459201 (derivationStepZipperDown!1190 (ite c!1039156 (regOne!32361 (h!70395 (exprs!5808 lt!2305051))) (regOne!32360 (h!70395 (exprs!5808 lt!2305051)))) (ite c!1039156 (Context!10617 (t!377440 (exprs!5808 lt!2305051))) (Context!10617 call!459202)) (h!70397 s!2326)))))

(declare-fun bm!459197 () Bool)

(assert (=> bm!459197 (= call!459202 ($colon$colon!1829 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305051)))) (ite (or c!1039158 c!1039155) (regTwo!32360 (h!70395 (exprs!5808 lt!2305051))) (h!70395 (exprs!5808 lt!2305051)))))))

(declare-fun b!5858632 () Bool)

(declare-fun e!3592306 () (Set Context!10616))

(declare-fun call!459203 () (Set Context!10616))

(assert (=> b!5858632 (= e!3592306 call!459203)))

(declare-fun bm!459198 () Bool)

(declare-fun call!459204 () (Set Context!10616))

(assert (=> bm!459198 (= call!459203 call!459204)))

(declare-fun bm!459199 () Bool)

(assert (=> bm!459199 (= call!459204 call!459205)))

(declare-fun b!5858633 () Bool)

(declare-fun e!3592301 () (Set Context!10616))

(declare-fun e!3592303 () (Set Context!10616))

(assert (=> b!5858633 (= e!3592301 e!3592303)))

(assert (=> b!5858633 (= c!1039155 (is-Concat!24769 (h!70395 (exprs!5808 lt!2305051))))))

(declare-fun b!5858634 () Bool)

(assert (=> b!5858634 (= e!3592303 call!459203)))

(declare-fun b!5858635 () Bool)

(assert (=> b!5858635 (= e!3592306 (as set.empty (Set Context!10616)))))

(declare-fun b!5858636 () Bool)

(assert (=> b!5858636 (= e!3592301 (set.union call!459201 call!459204))))

(declare-fun b!5858637 () Bool)

(declare-fun e!3592304 () Bool)

(assert (=> b!5858637 (= c!1039158 e!3592304)))

(declare-fun res!2465573 () Bool)

(assert (=> b!5858637 (=> (not res!2465573) (not e!3592304))))

(assert (=> b!5858637 (= res!2465573 (is-Concat!24769 (h!70395 (exprs!5808 lt!2305051))))))

(assert (=> b!5858637 (= e!3592305 e!3592301)))

(declare-fun b!5858638 () Bool)

(assert (=> b!5858638 (= e!3592302 e!3592305)))

(assert (=> b!5858638 (= c!1039156 (is-Union!15924 (h!70395 (exprs!5808 lt!2305051))))))

(declare-fun bm!459200 () Bool)

(assert (=> bm!459200 (= call!459200 call!459202)))

(declare-fun b!5858639 () Bool)

(declare-fun c!1039159 () Bool)

(assert (=> b!5858639 (= c!1039159 (is-Star!15924 (h!70395 (exprs!5808 lt!2305051))))))

(assert (=> b!5858639 (= e!3592303 e!3592306)))

(declare-fun b!5858631 () Bool)

(assert (=> b!5858631 (= e!3592304 (nullable!5924 (regOne!32360 (h!70395 (exprs!5808 lt!2305051)))))))

(declare-fun d!1839864 () Bool)

(declare-fun c!1039157 () Bool)

(assert (=> d!1839864 (= c!1039157 (and (is-ElementMatch!15924 (h!70395 (exprs!5808 lt!2305051))) (= (c!1038857 (h!70395 (exprs!5808 lt!2305051))) (h!70397 s!2326))))))

(assert (=> d!1839864 (= (derivationStepZipperDown!1190 (h!70395 (exprs!5808 lt!2305051)) (Context!10617 (t!377440 (exprs!5808 lt!2305051))) (h!70397 s!2326)) e!3592302)))

(assert (= (and d!1839864 c!1039157) b!5858629))

(assert (= (and d!1839864 (not c!1039157)) b!5858638))

(assert (= (and b!5858638 c!1039156) b!5858630))

(assert (= (and b!5858638 (not c!1039156)) b!5858637))

(assert (= (and b!5858637 res!2465573) b!5858631))

(assert (= (and b!5858637 c!1039158) b!5858636))

(assert (= (and b!5858637 (not c!1039158)) b!5858633))

(assert (= (and b!5858633 c!1039155) b!5858634))

(assert (= (and b!5858633 (not c!1039155)) b!5858639))

(assert (= (and b!5858639 c!1039159) b!5858632))

(assert (= (and b!5858639 (not c!1039159)) b!5858635))

(assert (= (or b!5858634 b!5858632) bm!459200))

(assert (= (or b!5858634 b!5858632) bm!459198))

(assert (= (or b!5858636 bm!459200) bm!459197))

(assert (= (or b!5858636 bm!459198) bm!459199))

(assert (= (or b!5858630 bm!459199) bm!459195))

(assert (= (or b!5858630 b!5858636) bm!459196))

(declare-fun m!6776298 () Bool)

(assert (=> b!5858631 m!6776298))

(declare-fun m!6776300 () Bool)

(assert (=> bm!459197 m!6776300))

(declare-fun m!6776302 () Bool)

(assert (=> b!5858629 m!6776302))

(declare-fun m!6776304 () Bool)

(assert (=> bm!459195 m!6776304))

(declare-fun m!6776306 () Bool)

(assert (=> bm!459196 m!6776306))

(assert (=> bm!459040 d!1839864))

(assert (=> bm!459082 d!1839784))

(declare-fun bs!1380365 () Bool)

(declare-fun d!1839866 () Bool)

(assert (= bs!1380365 (and d!1839866 d!1839794)))

(declare-fun lambda!320352 () Int)

(assert (=> bs!1380365 (= lambda!320352 lambda!320339)))

(declare-fun bs!1380366 () Bool)

(assert (= bs!1380366 (and d!1839866 d!1839802)))

(assert (=> bs!1380366 (= lambda!320352 lambda!320340)))

(assert (=> d!1839866 (= (nullableZipper!1763 z!1189) (exists!2308 z!1189 lambda!320352))))

(declare-fun bs!1380367 () Bool)

(assert (= bs!1380367 d!1839866))

(declare-fun m!6776308 () Bool)

(assert (=> bs!1380367 m!6776308))

(assert (=> b!5857675 d!1839866))

(declare-fun d!1839868 () Bool)

(assert (=> d!1839868 (= (isEmpty!35810 (t!377440 (unfocusZipperList!1345 zl!343))) (is-Nil!63947 (t!377440 (unfocusZipperList!1345 zl!343))))))

(assert (=> b!5857822 d!1839868))

(assert (=> d!1839600 d!1839608))

(assert (=> d!1839600 d!1839606))

(declare-fun d!1839870 () Bool)

(assert (=> d!1839870 (= (matchR!8107 (regOne!32361 r!7292) s!2326) (matchRSpec!3025 (regOne!32361 r!7292) s!2326))))

(assert (=> d!1839870 true))

(declare-fun _$88!4285 () Unit!157119)

(assert (=> d!1839870 (= (choose!44412 (regOne!32361 r!7292) s!2326) _$88!4285)))

(declare-fun bs!1380368 () Bool)

(assert (= bs!1380368 d!1839870))

(assert (=> bs!1380368 m!6775542))

(assert (=> bs!1380368 m!6775538))

(assert (=> d!1839600 d!1839870))

(assert (=> d!1839600 d!1839862))

(declare-fun b!5858640 () Bool)

(declare-fun e!3592308 () (Set Context!10616))

(assert (=> b!5858640 (= e!3592308 (set.insert (Context!10617 (t!377440 (exprs!5808 lt!2305055))) (as set.empty (Set Context!10616))))))

(declare-fun b!5858641 () Bool)

(declare-fun e!3592311 () (Set Context!10616))

(declare-fun call!459207 () (Set Context!10616))

(declare-fun call!459211 () (Set Context!10616))

(assert (=> b!5858641 (= e!3592311 (set.union call!459207 call!459211))))

(declare-fun c!1039161 () Bool)

(declare-fun c!1039160 () Bool)

(declare-fun call!459206 () List!64071)

(declare-fun c!1039163 () Bool)

(declare-fun bm!459201 () Bool)

(assert (=> bm!459201 (= call!459211 (derivationStepZipperDown!1190 (ite c!1039161 (regTwo!32361 (h!70395 (exprs!5808 lt!2305055))) (ite c!1039163 (regTwo!32360 (h!70395 (exprs!5808 lt!2305055))) (ite c!1039160 (regOne!32360 (h!70395 (exprs!5808 lt!2305055))) (reg!16253 (h!70395 (exprs!5808 lt!2305055)))))) (ite (or c!1039161 c!1039163) (Context!10617 (t!377440 (exprs!5808 lt!2305055))) (Context!10617 call!459206)) (h!70397 s!2326)))))

(declare-fun bm!459202 () Bool)

(declare-fun call!459208 () List!64071)

(assert (=> bm!459202 (= call!459207 (derivationStepZipperDown!1190 (ite c!1039161 (regOne!32361 (h!70395 (exprs!5808 lt!2305055))) (regOne!32360 (h!70395 (exprs!5808 lt!2305055)))) (ite c!1039161 (Context!10617 (t!377440 (exprs!5808 lt!2305055))) (Context!10617 call!459208)) (h!70397 s!2326)))))

(declare-fun bm!459203 () Bool)

(assert (=> bm!459203 (= call!459208 ($colon$colon!1829 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305055)))) (ite (or c!1039163 c!1039160) (regTwo!32360 (h!70395 (exprs!5808 lt!2305055))) (h!70395 (exprs!5808 lt!2305055)))))))

(declare-fun b!5858643 () Bool)

(declare-fun e!3592312 () (Set Context!10616))

(declare-fun call!459209 () (Set Context!10616))

(assert (=> b!5858643 (= e!3592312 call!459209)))

(declare-fun bm!459204 () Bool)

(declare-fun call!459210 () (Set Context!10616))

(assert (=> bm!459204 (= call!459209 call!459210)))

(declare-fun bm!459205 () Bool)

(assert (=> bm!459205 (= call!459210 call!459211)))

(declare-fun b!5858644 () Bool)

(declare-fun e!3592307 () (Set Context!10616))

(declare-fun e!3592309 () (Set Context!10616))

(assert (=> b!5858644 (= e!3592307 e!3592309)))

(assert (=> b!5858644 (= c!1039160 (is-Concat!24769 (h!70395 (exprs!5808 lt!2305055))))))

(declare-fun b!5858645 () Bool)

(assert (=> b!5858645 (= e!3592309 call!459209)))

(declare-fun b!5858646 () Bool)

(assert (=> b!5858646 (= e!3592312 (as set.empty (Set Context!10616)))))

(declare-fun b!5858647 () Bool)

(assert (=> b!5858647 (= e!3592307 (set.union call!459207 call!459210))))

(declare-fun b!5858648 () Bool)

(declare-fun e!3592310 () Bool)

(assert (=> b!5858648 (= c!1039163 e!3592310)))

(declare-fun res!2465574 () Bool)

(assert (=> b!5858648 (=> (not res!2465574) (not e!3592310))))

(assert (=> b!5858648 (= res!2465574 (is-Concat!24769 (h!70395 (exprs!5808 lt!2305055))))))

(assert (=> b!5858648 (= e!3592311 e!3592307)))

(declare-fun b!5858649 () Bool)

(assert (=> b!5858649 (= e!3592308 e!3592311)))

(assert (=> b!5858649 (= c!1039161 (is-Union!15924 (h!70395 (exprs!5808 lt!2305055))))))

(declare-fun bm!459206 () Bool)

(assert (=> bm!459206 (= call!459206 call!459208)))

(declare-fun b!5858650 () Bool)

(declare-fun c!1039164 () Bool)

(assert (=> b!5858650 (= c!1039164 (is-Star!15924 (h!70395 (exprs!5808 lt!2305055))))))

(assert (=> b!5858650 (= e!3592309 e!3592312)))

(declare-fun b!5858642 () Bool)

(assert (=> b!5858642 (= e!3592310 (nullable!5924 (regOne!32360 (h!70395 (exprs!5808 lt!2305055)))))))

(declare-fun d!1839872 () Bool)

(declare-fun c!1039162 () Bool)

(assert (=> d!1839872 (= c!1039162 (and (is-ElementMatch!15924 (h!70395 (exprs!5808 lt!2305055))) (= (c!1038857 (h!70395 (exprs!5808 lt!2305055))) (h!70397 s!2326))))))

(assert (=> d!1839872 (= (derivationStepZipperDown!1190 (h!70395 (exprs!5808 lt!2305055)) (Context!10617 (t!377440 (exprs!5808 lt!2305055))) (h!70397 s!2326)) e!3592308)))

(assert (= (and d!1839872 c!1039162) b!5858640))

(assert (= (and d!1839872 (not c!1039162)) b!5858649))

(assert (= (and b!5858649 c!1039161) b!5858641))

(assert (= (and b!5858649 (not c!1039161)) b!5858648))

(assert (= (and b!5858648 res!2465574) b!5858642))

(assert (= (and b!5858648 c!1039163) b!5858647))

(assert (= (and b!5858648 (not c!1039163)) b!5858644))

(assert (= (and b!5858644 c!1039160) b!5858645))

(assert (= (and b!5858644 (not c!1039160)) b!5858650))

(assert (= (and b!5858650 c!1039164) b!5858643))

(assert (= (and b!5858650 (not c!1039164)) b!5858646))

(assert (= (or b!5858645 b!5858643) bm!459206))

(assert (= (or b!5858645 b!5858643) bm!459204))

(assert (= (or b!5858647 bm!459206) bm!459203))

(assert (= (or b!5858647 bm!459204) bm!459205))

(assert (= (or b!5858641 bm!459205) bm!459201))

(assert (= (or b!5858641 b!5858647) bm!459202))

(declare-fun m!6776310 () Bool)

(assert (=> b!5858642 m!6776310))

(declare-fun m!6776312 () Bool)

(assert (=> bm!459203 m!6776312))

(declare-fun m!6776314 () Bool)

(assert (=> b!5858640 m!6776314))

(declare-fun m!6776316 () Bool)

(assert (=> bm!459201 m!6776316))

(declare-fun m!6776318 () Bool)

(assert (=> bm!459202 m!6776318))

(assert (=> bm!459041 d!1839872))

(declare-fun d!1839874 () Bool)

(assert (=> d!1839874 (= (nullable!5924 (regOne!32360 (regOne!32361 r!7292))) (nullableFct!1911 (regOne!32360 (regOne!32361 r!7292))))))

(declare-fun bs!1380369 () Bool)

(assert (= bs!1380369 d!1839874))

(declare-fun m!6776320 () Bool)

(assert (=> bs!1380369 m!6776320))

(assert (=> b!5857976 d!1839874))

(assert (=> b!5857758 d!1839808))

(assert (=> b!5857758 d!1839810))

(declare-fun d!1839876 () Bool)

(assert (=> d!1839876 (= (isConcat!882 lt!2305155) (is-Concat!24769 lt!2305155))))

(assert (=> b!5857870 d!1839876))

(declare-fun d!1839878 () Bool)

(declare-fun res!2465579 () Bool)

(declare-fun e!3592317 () Bool)

(assert (=> d!1839878 (=> res!2465579 e!3592317)))

(assert (=> d!1839878 (= res!2465579 (is-Nil!63948 lt!2305162))))

(assert (=> d!1839878 (= (noDuplicate!1789 lt!2305162) e!3592317)))

(declare-fun b!5858655 () Bool)

(declare-fun e!3592318 () Bool)

(assert (=> b!5858655 (= e!3592317 e!3592318)))

(declare-fun res!2465580 () Bool)

(assert (=> b!5858655 (=> (not res!2465580) (not e!3592318))))

(declare-fun contains!19930 (List!64072 Context!10616) Bool)

(assert (=> b!5858655 (= res!2465580 (not (contains!19930 (t!377441 lt!2305162) (h!70396 lt!2305162))))))

(declare-fun b!5858656 () Bool)

(assert (=> b!5858656 (= e!3592318 (noDuplicate!1789 (t!377441 lt!2305162)))))

(assert (= (and d!1839878 (not res!2465579)) b!5858655))

(assert (= (and b!5858655 res!2465580) b!5858656))

(declare-fun m!6776322 () Bool)

(assert (=> b!5858655 m!6776322))

(declare-fun m!6776324 () Bool)

(assert (=> b!5858656 m!6776324))

(assert (=> d!1839656 d!1839878))

(declare-fun d!1839880 () Bool)

(declare-fun e!3592326 () Bool)

(assert (=> d!1839880 e!3592326))

(declare-fun res!2465585 () Bool)

(assert (=> d!1839880 (=> (not res!2465585) (not e!3592326))))

(declare-fun res!2465586 () List!64072)

(assert (=> d!1839880 (= res!2465585 (noDuplicate!1789 res!2465586))))

(declare-fun e!3592325 () Bool)

(assert (=> d!1839880 e!3592325))

(assert (=> d!1839880 (= (choose!44416 z!1189) res!2465586)))

(declare-fun b!5858664 () Bool)

(declare-fun e!3592327 () Bool)

(declare-fun tp!1620551 () Bool)

(assert (=> b!5858664 (= e!3592327 tp!1620551)))

(declare-fun tp!1620552 () Bool)

(declare-fun b!5858663 () Bool)

(assert (=> b!5858663 (= e!3592325 (and (inv!83058 (h!70396 res!2465586)) e!3592327 tp!1620552))))

(declare-fun b!5858665 () Bool)

(assert (=> b!5858665 (= e!3592326 (= (content!11754 res!2465586) z!1189))))

(assert (= b!5858663 b!5858664))

(assert (= (and d!1839880 (is-Cons!63948 res!2465586)) b!5858663))

(assert (= (and d!1839880 res!2465585) b!5858665))

(declare-fun m!6776326 () Bool)

(assert (=> d!1839880 m!6776326))

(declare-fun m!6776328 () Bool)

(assert (=> b!5858663 m!6776328))

(declare-fun m!6776330 () Bool)

(assert (=> b!5858665 m!6776330))

(assert (=> d!1839656 d!1839880))

(declare-fun bs!1380370 () Bool)

(declare-fun d!1839882 () Bool)

(assert (= bs!1380370 (and d!1839882 d!1839794)))

(declare-fun lambda!320353 () Int)

(assert (=> bs!1380370 (= lambda!320353 lambda!320339)))

(declare-fun bs!1380371 () Bool)

(assert (= bs!1380371 (and d!1839882 d!1839802)))

(assert (=> bs!1380371 (= lambda!320353 lambda!320340)))

(declare-fun bs!1380372 () Bool)

(assert (= bs!1380372 (and d!1839882 d!1839866)))

(assert (=> bs!1380372 (= lambda!320353 lambda!320352)))

(assert (=> d!1839882 (= (nullableZipper!1763 lt!2305042) (exists!2308 lt!2305042 lambda!320353))))

(declare-fun bs!1380373 () Bool)

(assert (= bs!1380373 d!1839882))

(declare-fun m!6776332 () Bool)

(assert (=> bs!1380373 m!6776332))

(assert (=> b!5857989 d!1839882))

(declare-fun d!1839884 () Bool)

(declare-fun choose!44422 (Int) Bool)

(assert (=> d!1839884 (= (Exists!2996 (ite c!1038879 lambda!320285 lambda!320286)) (choose!44422 (ite c!1038879 lambda!320285 lambda!320286)))))

(declare-fun bs!1380374 () Bool)

(assert (= bs!1380374 d!1839884))

(declare-fun m!6776334 () Bool)

(assert (=> bs!1380374 m!6776334))

(assert (=> bm!459030 d!1839884))

(declare-fun b!5858666 () Bool)

(declare-fun res!2465588 () Bool)

(declare-fun e!3592330 () Bool)

(assert (=> b!5858666 (=> (not res!2465588) (not e!3592330))))

(declare-fun call!459212 () Bool)

(assert (=> b!5858666 (= res!2465588 (not call!459212))))

(declare-fun b!5858667 () Bool)

(declare-fun e!3592331 () Bool)

(assert (=> b!5858667 (= e!3592331 (nullable!5924 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326))))))

(declare-fun b!5858668 () Bool)

(declare-fun res!2465591 () Bool)

(declare-fun e!3592334 () Bool)

(assert (=> b!5858668 (=> res!2465591 e!3592334)))

(assert (=> b!5858668 (= res!2465591 (not (is-ElementMatch!15924 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326)))))))

(declare-fun e!3592328 () Bool)

(assert (=> b!5858668 (= e!3592328 e!3592334)))

(declare-fun b!5858669 () Bool)

(declare-fun e!3592333 () Bool)

(assert (=> b!5858669 (= e!3592333 (not (= (head!12402 (tail!11487 s!2326)) (c!1038857 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326))))))))

(declare-fun b!5858671 () Bool)

(declare-fun res!2465594 () Bool)

(assert (=> b!5858671 (=> res!2465594 e!3592333)))

(assert (=> b!5858671 (= res!2465594 (not (isEmpty!35809 (tail!11487 (tail!11487 s!2326)))))))

(declare-fun b!5858672 () Bool)

(declare-fun e!3592329 () Bool)

(assert (=> b!5858672 (= e!3592329 e!3592333)))

(declare-fun res!2465589 () Bool)

(assert (=> b!5858672 (=> res!2465589 e!3592333)))

(assert (=> b!5858672 (= res!2465589 call!459212)))

(declare-fun b!5858673 () Bool)

(assert (=> b!5858673 (= e!3592330 (= (head!12402 (tail!11487 s!2326)) (c!1038857 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326)))))))

(declare-fun b!5858674 () Bool)

(declare-fun lt!2305199 () Bool)

(assert (=> b!5858674 (= e!3592328 (not lt!2305199))))

(declare-fun b!5858675 () Bool)

(declare-fun e!3592332 () Bool)

(assert (=> b!5858675 (= e!3592332 (= lt!2305199 call!459212))))

(declare-fun b!5858676 () Bool)

(declare-fun res!2465593 () Bool)

(assert (=> b!5858676 (=> res!2465593 e!3592334)))

(assert (=> b!5858676 (= res!2465593 e!3592330)))

(declare-fun res!2465587 () Bool)

(assert (=> b!5858676 (=> (not res!2465587) (not e!3592330))))

(assert (=> b!5858676 (= res!2465587 lt!2305199)))

(declare-fun b!5858677 () Bool)

(assert (=> b!5858677 (= e!3592332 e!3592328)))

(declare-fun c!1039165 () Bool)

(assert (=> b!5858677 (= c!1039165 (is-EmptyLang!15924 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326))))))

(declare-fun b!5858678 () Bool)

(assert (=> b!5858678 (= e!3592331 (matchR!8107 (derivativeStep!4662 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326)) (head!12402 (tail!11487 s!2326))) (tail!11487 (tail!11487 s!2326))))))

(declare-fun d!1839886 () Bool)

(assert (=> d!1839886 e!3592332))

(declare-fun c!1039166 () Bool)

(assert (=> d!1839886 (= c!1039166 (is-EmptyExpr!15924 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326))))))

(assert (=> d!1839886 (= lt!2305199 e!3592331)))

(declare-fun c!1039167 () Bool)

(assert (=> d!1839886 (= c!1039167 (isEmpty!35809 (tail!11487 s!2326)))))

(assert (=> d!1839886 (validRegex!7660 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326)))))

(assert (=> d!1839886 (= (matchR!8107 (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326)) (tail!11487 s!2326)) lt!2305199)))

(declare-fun b!5858670 () Bool)

(declare-fun res!2465592 () Bool)

(assert (=> b!5858670 (=> (not res!2465592) (not e!3592330))))

(assert (=> b!5858670 (= res!2465592 (isEmpty!35809 (tail!11487 (tail!11487 s!2326))))))

(declare-fun bm!459207 () Bool)

(assert (=> bm!459207 (= call!459212 (isEmpty!35809 (tail!11487 s!2326)))))

(declare-fun b!5858679 () Bool)

(assert (=> b!5858679 (= e!3592334 e!3592329)))

(declare-fun res!2465590 () Bool)

(assert (=> b!5858679 (=> (not res!2465590) (not e!3592329))))

(assert (=> b!5858679 (= res!2465590 (not lt!2305199))))

(assert (= (and d!1839886 c!1039167) b!5858667))

(assert (= (and d!1839886 (not c!1039167)) b!5858678))

(assert (= (and d!1839886 c!1039166) b!5858675))

(assert (= (and d!1839886 (not c!1039166)) b!5858677))

(assert (= (and b!5858677 c!1039165) b!5858674))

(assert (= (and b!5858677 (not c!1039165)) b!5858668))

(assert (= (and b!5858668 (not res!2465591)) b!5858676))

(assert (= (and b!5858676 res!2465587) b!5858666))

(assert (= (and b!5858666 res!2465588) b!5858670))

(assert (= (and b!5858670 res!2465592) b!5858673))

(assert (= (and b!5858676 (not res!2465593)) b!5858679))

(assert (= (and b!5858679 res!2465590) b!5858672))

(assert (= (and b!5858672 (not res!2465589)) b!5858671))

(assert (= (and b!5858671 (not res!2465594)) b!5858669))

(assert (= (or b!5858675 b!5858666 b!5858672) bm!459207))

(assert (=> bm!459207 m!6775668))

(assert (=> bm!459207 m!6775700))

(assert (=> b!5858667 m!6775714))

(declare-fun m!6776336 () Bool)

(assert (=> b!5858667 m!6776336))

(assert (=> b!5858669 m!6775668))

(assert (=> b!5858669 m!6776210))

(assert (=> b!5858678 m!6775668))

(assert (=> b!5858678 m!6776210))

(assert (=> b!5858678 m!6775714))

(assert (=> b!5858678 m!6776210))

(declare-fun m!6776338 () Bool)

(assert (=> b!5858678 m!6776338))

(assert (=> b!5858678 m!6775668))

(assert (=> b!5858678 m!6776214))

(assert (=> b!5858678 m!6776338))

(assert (=> b!5858678 m!6776214))

(declare-fun m!6776340 () Bool)

(assert (=> b!5858678 m!6776340))

(assert (=> b!5858671 m!6775668))

(assert (=> b!5858671 m!6776214))

(assert (=> b!5858671 m!6776214))

(declare-fun m!6776342 () Bool)

(assert (=> b!5858671 m!6776342))

(assert (=> d!1839886 m!6775668))

(assert (=> d!1839886 m!6775700))

(assert (=> d!1839886 m!6775714))

(declare-fun m!6776344 () Bool)

(assert (=> d!1839886 m!6776344))

(assert (=> b!5858673 m!6775668))

(assert (=> b!5858673 m!6776210))

(assert (=> b!5858670 m!6775668))

(assert (=> b!5858670 m!6776214))

(assert (=> b!5858670 m!6776214))

(assert (=> b!5858670 m!6776342))

(assert (=> b!5857791 d!1839886))

(declare-fun b!5858700 () Bool)

(declare-fun c!1039180 () Bool)

(assert (=> b!5858700 (= c!1039180 (is-Union!15924 (regOne!32361 r!7292)))))

(declare-fun e!3592346 () Regex!15924)

(declare-fun e!3592347 () Regex!15924)

(assert (=> b!5858700 (= e!3592346 e!3592347)))

(declare-fun bm!459216 () Bool)

(declare-fun call!459223 () Regex!15924)

(declare-fun call!459221 () Regex!15924)

(assert (=> bm!459216 (= call!459223 call!459221)))

(declare-fun b!5858701 () Bool)

(declare-fun c!1039181 () Bool)

(assert (=> b!5858701 (= c!1039181 (nullable!5924 (regOne!32360 (regOne!32361 r!7292))))))

(declare-fun e!3592345 () Regex!15924)

(declare-fun e!3592348 () Regex!15924)

(assert (=> b!5858701 (= e!3592345 e!3592348)))

(declare-fun b!5858702 () Bool)

(assert (=> b!5858702 (= e!3592347 e!3592345)))

(declare-fun c!1039178 () Bool)

(assert (=> b!5858702 (= c!1039178 (is-Star!15924 (regOne!32361 r!7292)))))

(declare-fun bm!459217 () Bool)

(assert (=> bm!459217 (= call!459221 (derivativeStep!4662 (ite c!1039180 (regTwo!32361 (regOne!32361 r!7292)) (ite c!1039178 (reg!16253 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (head!12402 s!2326)))))

(declare-fun b!5858703 () Bool)

(declare-fun e!3592349 () Regex!15924)

(assert (=> b!5858703 (= e!3592349 EmptyLang!15924)))

(declare-fun b!5858704 () Bool)

(declare-fun call!459222 () Regex!15924)

(assert (=> b!5858704 (= e!3592348 (Union!15924 (Concat!24769 call!459223 (regTwo!32360 (regOne!32361 r!7292))) call!459222))))

(declare-fun b!5858706 () Bool)

(declare-fun call!459224 () Regex!15924)

(assert (=> b!5858706 (= e!3592347 (Union!15924 call!459224 call!459221))))

(declare-fun b!5858707 () Bool)

(assert (=> b!5858707 (= e!3592348 (Union!15924 (Concat!24769 call!459222 (regTwo!32360 (regOne!32361 r!7292))) EmptyLang!15924))))

(declare-fun bm!459218 () Bool)

(assert (=> bm!459218 (= call!459224 (derivativeStep!4662 (ite c!1039180 (regOne!32361 (regOne!32361 r!7292)) (ite c!1039181 (regTwo!32360 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (head!12402 s!2326)))))

(declare-fun b!5858708 () Bool)

(assert (=> b!5858708 (= e!3592345 (Concat!24769 call!459223 (regOne!32361 r!7292)))))

(declare-fun bm!459219 () Bool)

(assert (=> bm!459219 (= call!459222 call!459224)))

(declare-fun b!5858709 () Bool)

(assert (=> b!5858709 (= e!3592346 (ite (= (head!12402 s!2326) (c!1038857 (regOne!32361 r!7292))) EmptyExpr!15924 EmptyLang!15924))))

(declare-fun d!1839888 () Bool)

(declare-fun lt!2305202 () Regex!15924)

(assert (=> d!1839888 (validRegex!7660 lt!2305202)))

(assert (=> d!1839888 (= lt!2305202 e!3592349)))

(declare-fun c!1039179 () Bool)

(assert (=> d!1839888 (= c!1039179 (or (is-EmptyExpr!15924 (regOne!32361 r!7292)) (is-EmptyLang!15924 (regOne!32361 r!7292))))))

(assert (=> d!1839888 (validRegex!7660 (regOne!32361 r!7292))))

(assert (=> d!1839888 (= (derivativeStep!4662 (regOne!32361 r!7292) (head!12402 s!2326)) lt!2305202)))

(declare-fun b!5858705 () Bool)

(assert (=> b!5858705 (= e!3592349 e!3592346)))

(declare-fun c!1039182 () Bool)

(assert (=> b!5858705 (= c!1039182 (is-ElementMatch!15924 (regOne!32361 r!7292)))))

(assert (= (and d!1839888 c!1039179) b!5858703))

(assert (= (and d!1839888 (not c!1039179)) b!5858705))

(assert (= (and b!5858705 c!1039182) b!5858709))

(assert (= (and b!5858705 (not c!1039182)) b!5858700))

(assert (= (and b!5858700 c!1039180) b!5858706))

(assert (= (and b!5858700 (not c!1039180)) b!5858702))

(assert (= (and b!5858702 c!1039178) b!5858708))

(assert (= (and b!5858702 (not c!1039178)) b!5858701))

(assert (= (and b!5858701 c!1039181) b!5858704))

(assert (= (and b!5858701 (not c!1039181)) b!5858707))

(assert (= (or b!5858704 b!5858707) bm!459219))

(assert (= (or b!5858708 b!5858704) bm!459216))

(assert (= (or b!5858706 bm!459216) bm!459217))

(assert (= (or b!5858706 bm!459219) bm!459218))

(assert (=> b!5858701 m!6775816))

(assert (=> bm!459217 m!6775664))

(declare-fun m!6776346 () Bool)

(assert (=> bm!459217 m!6776346))

(assert (=> bm!459218 m!6775664))

(declare-fun m!6776348 () Bool)

(assert (=> bm!459218 m!6776348))

(declare-fun m!6776350 () Bool)

(assert (=> d!1839888 m!6776350))

(assert (=> d!1839888 m!6775692))

(assert (=> b!5857791 d!1839888))

(assert (=> b!5857791 d!1839768))

(assert (=> b!5857791 d!1839810))

(declare-fun d!1839890 () Bool)

(assert (=> d!1839890 (= (nullable!5924 (regOne!32360 r!7292)) (nullableFct!1911 (regOne!32360 r!7292)))))

(declare-fun bs!1380375 () Bool)

(assert (= bs!1380375 d!1839890))

(declare-fun m!6776352 () Bool)

(assert (=> bs!1380375 m!6776352))

(assert (=> b!5858037 d!1839890))

(declare-fun b!5858710 () Bool)

(declare-fun e!3592355 () Bool)

(declare-fun call!459226 () Bool)

(assert (=> b!5858710 (= e!3592355 call!459226)))

(declare-fun bm!459220 () Bool)

(declare-fun c!1039183 () Bool)

(assert (=> bm!459220 (= call!459226 (validRegex!7660 (ite c!1039183 (regTwo!32361 lt!2305146) (regTwo!32360 lt!2305146))))))

(declare-fun b!5858711 () Bool)

(declare-fun e!3592352 () Bool)

(assert (=> b!5858711 (= e!3592352 e!3592355)))

(declare-fun res!2465599 () Bool)

(assert (=> b!5858711 (=> (not res!2465599) (not e!3592355))))

(declare-fun call!459227 () Bool)

(assert (=> b!5858711 (= res!2465599 call!459227)))

(declare-fun b!5858712 () Bool)

(declare-fun e!3592354 () Bool)

(declare-fun e!3592351 () Bool)

(assert (=> b!5858712 (= e!3592354 e!3592351)))

(declare-fun res!2465598 () Bool)

(assert (=> b!5858712 (= res!2465598 (not (nullable!5924 (reg!16253 lt!2305146))))))

(assert (=> b!5858712 (=> (not res!2465598) (not e!3592351))))

(declare-fun b!5858713 () Bool)

(declare-fun res!2465597 () Bool)

(assert (=> b!5858713 (=> res!2465597 e!3592352)))

(assert (=> b!5858713 (= res!2465597 (not (is-Concat!24769 lt!2305146)))))

(declare-fun e!3592356 () Bool)

(assert (=> b!5858713 (= e!3592356 e!3592352)))

(declare-fun b!5858714 () Bool)

(declare-fun call!459225 () Bool)

(assert (=> b!5858714 (= e!3592351 call!459225)))

(declare-fun bm!459221 () Bool)

(assert (=> bm!459221 (= call!459227 call!459225)))

(declare-fun b!5858715 () Bool)

(assert (=> b!5858715 (= e!3592354 e!3592356)))

(assert (=> b!5858715 (= c!1039183 (is-Union!15924 lt!2305146))))

(declare-fun b!5858716 () Bool)

(declare-fun res!2465596 () Bool)

(declare-fun e!3592353 () Bool)

(assert (=> b!5858716 (=> (not res!2465596) (not e!3592353))))

(assert (=> b!5858716 (= res!2465596 call!459227)))

(assert (=> b!5858716 (= e!3592356 e!3592353)))

(declare-fun c!1039184 () Bool)

(declare-fun bm!459222 () Bool)

(assert (=> bm!459222 (= call!459225 (validRegex!7660 (ite c!1039184 (reg!16253 lt!2305146) (ite c!1039183 (regOne!32361 lt!2305146) (regOne!32360 lt!2305146)))))))

(declare-fun b!5858717 () Bool)

(assert (=> b!5858717 (= e!3592353 call!459226)))

(declare-fun b!5858718 () Bool)

(declare-fun e!3592350 () Bool)

(assert (=> b!5858718 (= e!3592350 e!3592354)))

(assert (=> b!5858718 (= c!1039184 (is-Star!15924 lt!2305146))))

(declare-fun d!1839892 () Bool)

(declare-fun res!2465595 () Bool)

(assert (=> d!1839892 (=> res!2465595 e!3592350)))

(assert (=> d!1839892 (= res!2465595 (is-ElementMatch!15924 lt!2305146))))

(assert (=> d!1839892 (= (validRegex!7660 lt!2305146) e!3592350)))

(assert (= (and d!1839892 (not res!2465595)) b!5858718))

(assert (= (and b!5858718 c!1039184) b!5858712))

(assert (= (and b!5858718 (not c!1039184)) b!5858715))

(assert (= (and b!5858712 res!2465598) b!5858714))

(assert (= (and b!5858715 c!1039183) b!5858716))

(assert (= (and b!5858715 (not c!1039183)) b!5858713))

(assert (= (and b!5858716 res!2465596) b!5858717))

(assert (= (and b!5858713 (not res!2465597)) b!5858711))

(assert (= (and b!5858711 res!2465599) b!5858710))

(assert (= (or b!5858717 b!5858710) bm!459220))

(assert (= (or b!5858716 b!5858711) bm!459221))

(assert (= (or b!5858714 bm!459221) bm!459222))

(declare-fun m!6776354 () Bool)

(assert (=> bm!459220 m!6776354))

(declare-fun m!6776356 () Bool)

(assert (=> b!5858712 m!6776356))

(declare-fun m!6776358 () Bool)

(assert (=> bm!459222 m!6776358))

(assert (=> d!1839612 d!1839892))

(declare-fun d!1839894 () Bool)

(declare-fun res!2465600 () Bool)

(declare-fun e!3592357 () Bool)

(assert (=> d!1839894 (=> res!2465600 e!3592357)))

(assert (=> d!1839894 (= res!2465600 (is-Nil!63947 (unfocusZipperList!1345 zl!343)))))

(assert (=> d!1839894 (= (forall!15011 (unfocusZipperList!1345 zl!343) lambda!320291) e!3592357)))

(declare-fun b!5858719 () Bool)

(declare-fun e!3592358 () Bool)

(assert (=> b!5858719 (= e!3592357 e!3592358)))

(declare-fun res!2465601 () Bool)

(assert (=> b!5858719 (=> (not res!2465601) (not e!3592358))))

(assert (=> b!5858719 (= res!2465601 (dynLambda!25005 lambda!320291 (h!70395 (unfocusZipperList!1345 zl!343))))))

(declare-fun b!5858720 () Bool)

(assert (=> b!5858720 (= e!3592358 (forall!15011 (t!377440 (unfocusZipperList!1345 zl!343)) lambda!320291))))

(assert (= (and d!1839894 (not res!2465600)) b!5858719))

(assert (= (and b!5858719 res!2465601) b!5858720))

(declare-fun b_lambda!220499 () Bool)

(assert (=> (not b_lambda!220499) (not b!5858719)))

(declare-fun m!6776360 () Bool)

(assert (=> b!5858719 m!6776360))

(declare-fun m!6776362 () Bool)

(assert (=> b!5858720 m!6776362))

(assert (=> d!1839612 d!1839894))

(declare-fun d!1839896 () Bool)

(declare-fun res!2465602 () Bool)

(declare-fun e!3592359 () Bool)

(assert (=> d!1839896 (=> res!2465602 e!3592359)))

(assert (=> d!1839896 (= res!2465602 (is-Nil!63947 (exprs!5808 setElem!39707)))))

(assert (=> d!1839896 (= (forall!15011 (exprs!5808 setElem!39707) lambda!320307) e!3592359)))

(declare-fun b!5858721 () Bool)

(declare-fun e!3592360 () Bool)

(assert (=> b!5858721 (= e!3592359 e!3592360)))

(declare-fun res!2465603 () Bool)

(assert (=> b!5858721 (=> (not res!2465603) (not e!3592360))))

(assert (=> b!5858721 (= res!2465603 (dynLambda!25005 lambda!320307 (h!70395 (exprs!5808 setElem!39707))))))

(declare-fun b!5858722 () Bool)

(assert (=> b!5858722 (= e!3592360 (forall!15011 (t!377440 (exprs!5808 setElem!39707)) lambda!320307))))

(assert (= (and d!1839896 (not res!2465602)) b!5858721))

(assert (= (and b!5858721 res!2465603) b!5858722))

(declare-fun b_lambda!220501 () Bool)

(assert (=> (not b_lambda!220501) (not b!5858721)))

(declare-fun m!6776364 () Bool)

(assert (=> b!5858721 m!6776364))

(declare-fun m!6776366 () Bool)

(assert (=> b!5858722 m!6776366))

(assert (=> d!1839646 d!1839896))

(assert (=> d!1839638 d!1839634))

(declare-fun d!1839898 () Bool)

(assert (=> d!1839898 (= (flatMap!1455 z!1189 lambda!320275) (dynLambda!25003 lambda!320275 (h!70396 zl!343)))))

(assert (=> d!1839898 true))

(declare-fun _$13!2575 () Unit!157119)

(assert (=> d!1839898 (= (choose!44413 z!1189 (h!70396 zl!343) lambda!320275) _$13!2575)))

(declare-fun b_lambda!220503 () Bool)

(assert (=> (not b_lambda!220503) (not d!1839898)))

(declare-fun bs!1380376 () Bool)

(assert (= bs!1380376 d!1839898))

(assert (=> bs!1380376 m!6775572))

(assert (=> bs!1380376 m!6775794))

(assert (=> d!1839638 d!1839898))

(declare-fun b!5858723 () Bool)

(declare-fun e!3592366 () Bool)

(declare-fun call!459229 () Bool)

(assert (=> b!5858723 (= e!3592366 call!459229)))

(declare-fun bm!459223 () Bool)

(declare-fun c!1039185 () Bool)

(assert (=> bm!459223 (= call!459229 (validRegex!7660 (ite c!1039185 (regTwo!32361 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))) (regTwo!32360 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))))))))

(declare-fun b!5858724 () Bool)

(declare-fun e!3592363 () Bool)

(assert (=> b!5858724 (= e!3592363 e!3592366)))

(declare-fun res!2465608 () Bool)

(assert (=> b!5858724 (=> (not res!2465608) (not e!3592366))))

(declare-fun call!459230 () Bool)

(assert (=> b!5858724 (= res!2465608 call!459230)))

(declare-fun b!5858725 () Bool)

(declare-fun e!3592365 () Bool)

(declare-fun e!3592362 () Bool)

(assert (=> b!5858725 (= e!3592365 e!3592362)))

(declare-fun res!2465607 () Bool)

(assert (=> b!5858725 (= res!2465607 (not (nullable!5924 (reg!16253 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))))))))

(assert (=> b!5858725 (=> (not res!2465607) (not e!3592362))))

(declare-fun b!5858726 () Bool)

(declare-fun res!2465606 () Bool)

(assert (=> b!5858726 (=> res!2465606 e!3592363)))

(assert (=> b!5858726 (= res!2465606 (not (is-Concat!24769 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292)))))))

(declare-fun e!3592367 () Bool)

(assert (=> b!5858726 (= e!3592367 e!3592363)))

(declare-fun b!5858727 () Bool)

(declare-fun call!459228 () Bool)

(assert (=> b!5858727 (= e!3592362 call!459228)))

(declare-fun bm!459224 () Bool)

(assert (=> bm!459224 (= call!459230 call!459228)))

(declare-fun b!5858728 () Bool)

(assert (=> b!5858728 (= e!3592365 e!3592367)))

(assert (=> b!5858728 (= c!1039185 (is-Union!15924 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))))))

(declare-fun b!5858729 () Bool)

(declare-fun res!2465605 () Bool)

(declare-fun e!3592364 () Bool)

(assert (=> b!5858729 (=> (not res!2465605) (not e!3592364))))

(assert (=> b!5858729 (= res!2465605 call!459230)))

(assert (=> b!5858729 (= e!3592367 e!3592364)))

(declare-fun c!1039186 () Bool)

(declare-fun bm!459225 () Bool)

(assert (=> bm!459225 (= call!459228 (validRegex!7660 (ite c!1039186 (reg!16253 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))) (ite c!1039185 (regOne!32361 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))) (regOne!32360 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292)))))))))

(declare-fun b!5858730 () Bool)

(assert (=> b!5858730 (= e!3592364 call!459229)))

(declare-fun b!5858731 () Bool)

(declare-fun e!3592361 () Bool)

(assert (=> b!5858731 (= e!3592361 e!3592365)))

(assert (=> b!5858731 (= c!1039186 (is-Star!15924 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))))))

(declare-fun d!1839900 () Bool)

(declare-fun res!2465604 () Bool)

(assert (=> d!1839900 (=> res!2465604 e!3592361)))

(assert (=> d!1839900 (= res!2465604 (is-ElementMatch!15924 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))))))

(assert (=> d!1839900 (= (validRegex!7660 (ite c!1038939 (regTwo!32361 r!7292) (regTwo!32360 r!7292))) e!3592361)))

(assert (= (and d!1839900 (not res!2465604)) b!5858731))

(assert (= (and b!5858731 c!1039186) b!5858725))

(assert (= (and b!5858731 (not c!1039186)) b!5858728))

(assert (= (and b!5858725 res!2465607) b!5858727))

(assert (= (and b!5858728 c!1039185) b!5858729))

(assert (= (and b!5858728 (not c!1039185)) b!5858726))

(assert (= (and b!5858729 res!2465605) b!5858730))

(assert (= (and b!5858726 (not res!2465606)) b!5858724))

(assert (= (and b!5858724 res!2465608) b!5858723))

(assert (= (or b!5858730 b!5858723) bm!459223))

(assert (= (or b!5858729 b!5858724) bm!459224))

(assert (= (or b!5858727 bm!459224) bm!459225))

(declare-fun m!6776368 () Bool)

(assert (=> bm!459223 m!6776368))

(declare-fun m!6776370 () Bool)

(assert (=> b!5858725 m!6776370))

(declare-fun m!6776372 () Bool)

(assert (=> bm!459225 m!6776372))

(assert (=> bm!459049 d!1839900))

(assert (=> b!5858014 d!1839808))

(assert (=> b!5858014 d!1839810))

(declare-fun e!3592369 () (Set Context!10616))

(declare-fun b!5858732 () Bool)

(assert (=> b!5858732 (= e!3592369 (set.insert (ite (or c!1038960 c!1038962) lt!2305057 (Context!10617 call!459069)) (as set.empty (Set Context!10616))))))

(declare-fun b!5858733 () Bool)

(declare-fun e!3592372 () (Set Context!10616))

(declare-fun call!459232 () (Set Context!10616))

(declare-fun call!459236 () (Set Context!10616))

(assert (=> b!5858733 (= e!3592372 (set.union call!459232 call!459236))))

(declare-fun call!459231 () List!64071)

(declare-fun bm!459226 () Bool)

(declare-fun c!1039187 () Bool)

(declare-fun c!1039188 () Bool)

(declare-fun c!1039190 () Bool)

(assert (=> bm!459226 (= call!459236 (derivationStepZipperDown!1190 (ite c!1039188 (regTwo!32361 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))) (ite c!1039190 (regTwo!32360 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))) (ite c!1039187 (regOne!32360 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))) (reg!16253 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292))))))))) (ite (or c!1039188 c!1039190) (ite (or c!1038960 c!1038962) lt!2305057 (Context!10617 call!459069)) (Context!10617 call!459231)) (h!70397 s!2326)))))

(declare-fun call!459233 () List!64071)

(declare-fun bm!459227 () Bool)

(assert (=> bm!459227 (= call!459232 (derivationStepZipperDown!1190 (ite c!1039188 (regOne!32361 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))) (regOne!32360 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292))))))) (ite c!1039188 (ite (or c!1038960 c!1038962) lt!2305057 (Context!10617 call!459069)) (Context!10617 call!459233)) (h!70397 s!2326)))))

(declare-fun bm!459228 () Bool)

(assert (=> bm!459228 (= call!459233 ($colon$colon!1829 (exprs!5808 (ite (or c!1038960 c!1038962) lt!2305057 (Context!10617 call!459069))) (ite (or c!1039190 c!1039187) (regTwo!32360 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))) (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292))))))))))

(declare-fun b!5858735 () Bool)

(declare-fun e!3592373 () (Set Context!10616))

(declare-fun call!459234 () (Set Context!10616))

(assert (=> b!5858735 (= e!3592373 call!459234)))

(declare-fun bm!459229 () Bool)

(declare-fun call!459235 () (Set Context!10616))

(assert (=> bm!459229 (= call!459234 call!459235)))

(declare-fun bm!459230 () Bool)

(assert (=> bm!459230 (= call!459235 call!459236)))

(declare-fun b!5858736 () Bool)

(declare-fun e!3592368 () (Set Context!10616))

(declare-fun e!3592370 () (Set Context!10616))

(assert (=> b!5858736 (= e!3592368 e!3592370)))

(assert (=> b!5858736 (= c!1039187 (is-Concat!24769 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))))))

(declare-fun b!5858737 () Bool)

(assert (=> b!5858737 (= e!3592370 call!459234)))

(declare-fun b!5858738 () Bool)

(assert (=> b!5858738 (= e!3592373 (as set.empty (Set Context!10616)))))

(declare-fun b!5858739 () Bool)

(assert (=> b!5858739 (= e!3592368 (set.union call!459232 call!459235))))

(declare-fun b!5858740 () Bool)

(declare-fun e!3592371 () Bool)

(assert (=> b!5858740 (= c!1039190 e!3592371)))

(declare-fun res!2465609 () Bool)

(assert (=> b!5858740 (=> (not res!2465609) (not e!3592371))))

(assert (=> b!5858740 (= res!2465609 (is-Concat!24769 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))))))

(assert (=> b!5858740 (= e!3592372 e!3592368)))

(declare-fun b!5858741 () Bool)

(assert (=> b!5858741 (= e!3592369 e!3592372)))

(assert (=> b!5858741 (= c!1039188 (is-Union!15924 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))))))

(declare-fun bm!459231 () Bool)

(assert (=> bm!459231 (= call!459231 call!459233)))

(declare-fun c!1039191 () Bool)

(declare-fun b!5858742 () Bool)

(assert (=> b!5858742 (= c!1039191 (is-Star!15924 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))))))

(assert (=> b!5858742 (= e!3592370 e!3592373)))

(declare-fun b!5858734 () Bool)

(assert (=> b!5858734 (= e!3592371 (nullable!5924 (regOne!32360 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292))))))))))

(declare-fun d!1839902 () Bool)

(declare-fun c!1039189 () Bool)

(assert (=> d!1839902 (= c!1039189 (and (is-ElementMatch!15924 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))) (= (c!1038857 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292)))))) (h!70397 s!2326))))))

(assert (=> d!1839902 (= (derivationStepZipperDown!1190 (ite c!1038960 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1038962 (regTwo!32360 (regTwo!32361 r!7292)) (ite c!1038959 (regOne!32360 (regTwo!32361 r!7292)) (reg!16253 (regTwo!32361 r!7292))))) (ite (or c!1038960 c!1038962) lt!2305057 (Context!10617 call!459069)) (h!70397 s!2326)) e!3592369)))

(assert (= (and d!1839902 c!1039189) b!5858732))

(assert (= (and d!1839902 (not c!1039189)) b!5858741))

(assert (= (and b!5858741 c!1039188) b!5858733))

(assert (= (and b!5858741 (not c!1039188)) b!5858740))

(assert (= (and b!5858740 res!2465609) b!5858734))

(assert (= (and b!5858740 c!1039190) b!5858739))

(assert (= (and b!5858740 (not c!1039190)) b!5858736))

(assert (= (and b!5858736 c!1039187) b!5858737))

(assert (= (and b!5858736 (not c!1039187)) b!5858742))

(assert (= (and b!5858742 c!1039191) b!5858735))

(assert (= (and b!5858742 (not c!1039191)) b!5858738))

(assert (= (or b!5858737 b!5858735) bm!459231))

(assert (= (or b!5858737 b!5858735) bm!459229))

(assert (= (or b!5858739 bm!459231) bm!459228))

(assert (= (or b!5858739 bm!459229) bm!459230))

(assert (= (or b!5858733 bm!459230) bm!459226))

(assert (= (or b!5858733 b!5858739) bm!459227))

(declare-fun m!6776374 () Bool)

(assert (=> b!5858734 m!6776374))

(declare-fun m!6776376 () Bool)

(assert (=> bm!459228 m!6776376))

(declare-fun m!6776378 () Bool)

(assert (=> b!5858732 m!6776378))

(declare-fun m!6776380 () Bool)

(assert (=> bm!459226 m!6776380))

(declare-fun m!6776382 () Bool)

(assert (=> bm!459227 m!6776382))

(assert (=> bm!459064 d!1839902))

(declare-fun d!1839904 () Bool)

(assert (=> d!1839904 (= (Exists!2996 (ite c!1038892 lambda!320287 lambda!320288)) (choose!44422 (ite c!1038892 lambda!320287 lambda!320288)))))

(declare-fun bs!1380377 () Bool)

(assert (= bs!1380377 d!1839904))

(declare-fun m!6776384 () Bool)

(assert (=> bs!1380377 m!6776384))

(assert (=> bm!459035 d!1839904))

(assert (=> d!1839660 d!1839784))

(assert (=> d!1839660 d!1839640))

(assert (=> b!5858004 d!1839598))

(declare-fun d!1839906 () Bool)

(assert (=> d!1839906 (= (isEmptyExpr!1359 lt!2305155) (is-EmptyExpr!15924 lt!2305155))))

(assert (=> b!5857874 d!1839906))

(assert (=> b!5857782 d!1839768))

(declare-fun bs!1380378 () Bool)

(declare-fun d!1839908 () Bool)

(assert (= bs!1380378 (and d!1839908 d!1839614)))

(declare-fun lambda!320354 () Int)

(assert (=> bs!1380378 (= lambda!320354 lambda!320294)))

(declare-fun bs!1380379 () Bool)

(assert (= bs!1380379 (and d!1839908 d!1839616)))

(assert (=> bs!1380379 (= lambda!320354 lambda!320297)))

(declare-fun bs!1380380 () Bool)

(assert (= bs!1380380 (and d!1839908 d!1839612)))

(assert (=> bs!1380380 (= lambda!320354 lambda!320291)))

(declare-fun bs!1380381 () Bool)

(assert (= bs!1380381 (and d!1839908 d!1839780)))

(assert (=> bs!1380381 (= lambda!320354 lambda!320336)))

(declare-fun bs!1380382 () Bool)

(assert (= bs!1380382 (and d!1839908 d!1839646)))

(assert (=> bs!1380382 (= lambda!320354 lambda!320307)))

(declare-fun bs!1380383 () Bool)

(assert (= bs!1380383 (and d!1839908 d!1839836)))

(assert (=> bs!1380383 (= lambda!320354 lambda!320342)))

(declare-fun bs!1380384 () Bool)

(assert (= bs!1380384 (and d!1839908 d!1839628)))

(assert (=> bs!1380384 (= lambda!320354 lambda!320300)))

(declare-fun bs!1380385 () Bool)

(assert (= bs!1380385 (and d!1839908 d!1839650)))

(assert (=> bs!1380385 (= lambda!320354 lambda!320309)))

(assert (=> d!1839908 (= (inv!83058 (h!70396 (t!377441 zl!343))) (forall!15011 (exprs!5808 (h!70396 (t!377441 zl!343))) lambda!320354))))

(declare-fun bs!1380386 () Bool)

(assert (= bs!1380386 d!1839908))

(declare-fun m!6776386 () Bool)

(assert (=> bs!1380386 m!6776386))

(assert (=> b!5858089 d!1839908))

(declare-fun bs!1380387 () Bool)

(declare-fun d!1839910 () Bool)

(assert (= bs!1380387 (and d!1839910 d!1839614)))

(declare-fun lambda!320355 () Int)

(assert (=> bs!1380387 (= lambda!320355 lambda!320294)))

(declare-fun bs!1380388 () Bool)

(assert (= bs!1380388 (and d!1839910 d!1839616)))

(assert (=> bs!1380388 (= lambda!320355 lambda!320297)))

(declare-fun bs!1380389 () Bool)

(assert (= bs!1380389 (and d!1839910 d!1839612)))

(assert (=> bs!1380389 (= lambda!320355 lambda!320291)))

(declare-fun bs!1380390 () Bool)

(assert (= bs!1380390 (and d!1839910 d!1839780)))

(assert (=> bs!1380390 (= lambda!320355 lambda!320336)))

(declare-fun bs!1380391 () Bool)

(assert (= bs!1380391 (and d!1839910 d!1839908)))

(assert (=> bs!1380391 (= lambda!320355 lambda!320354)))

(declare-fun bs!1380392 () Bool)

(assert (= bs!1380392 (and d!1839910 d!1839646)))

(assert (=> bs!1380392 (= lambda!320355 lambda!320307)))

(declare-fun bs!1380393 () Bool)

(assert (= bs!1380393 (and d!1839910 d!1839836)))

(assert (=> bs!1380393 (= lambda!320355 lambda!320342)))

(declare-fun bs!1380394 () Bool)

(assert (= bs!1380394 (and d!1839910 d!1839628)))

(assert (=> bs!1380394 (= lambda!320355 lambda!320300)))

(declare-fun bs!1380395 () Bool)

(assert (= bs!1380395 (and d!1839910 d!1839650)))

(assert (=> bs!1380395 (= lambda!320355 lambda!320309)))

(declare-fun b!5858743 () Bool)

(declare-fun e!3592374 () Regex!15924)

(assert (=> b!5858743 (= e!3592374 (h!70395 (t!377440 (unfocusZipperList!1345 zl!343))))))

(declare-fun b!5858744 () Bool)

(declare-fun e!3592376 () Regex!15924)

(assert (=> b!5858744 (= e!3592376 EmptyLang!15924)))

(declare-fun e!3592379 () Bool)

(assert (=> d!1839910 e!3592379))

(declare-fun res!2465610 () Bool)

(assert (=> d!1839910 (=> (not res!2465610) (not e!3592379))))

(declare-fun lt!2305203 () Regex!15924)

(assert (=> d!1839910 (= res!2465610 (validRegex!7660 lt!2305203))))

(assert (=> d!1839910 (= lt!2305203 e!3592374)))

(declare-fun c!1039194 () Bool)

(declare-fun e!3592375 () Bool)

(assert (=> d!1839910 (= c!1039194 e!3592375)))

(declare-fun res!2465611 () Bool)

(assert (=> d!1839910 (=> (not res!2465611) (not e!3592375))))

(assert (=> d!1839910 (= res!2465611 (is-Cons!63947 (t!377440 (unfocusZipperList!1345 zl!343))))))

(assert (=> d!1839910 (forall!15011 (t!377440 (unfocusZipperList!1345 zl!343)) lambda!320355)))

(assert (=> d!1839910 (= (generalisedUnion!1768 (t!377440 (unfocusZipperList!1345 zl!343))) lt!2305203)))

(declare-fun b!5858745 () Bool)

(declare-fun e!3592377 () Bool)

(assert (=> b!5858745 (= e!3592377 (isUnion!797 lt!2305203))))

(declare-fun b!5858746 () Bool)

(declare-fun e!3592378 () Bool)

(assert (=> b!5858746 (= e!3592379 e!3592378)))

(declare-fun c!1039195 () Bool)

(assert (=> b!5858746 (= c!1039195 (isEmpty!35810 (t!377440 (unfocusZipperList!1345 zl!343))))))

(declare-fun b!5858747 () Bool)

(assert (=> b!5858747 (= e!3592377 (= lt!2305203 (head!12403 (t!377440 (unfocusZipperList!1345 zl!343)))))))

(declare-fun b!5858748 () Bool)

(assert (=> b!5858748 (= e!3592374 e!3592376)))

(declare-fun c!1039192 () Bool)

(assert (=> b!5858748 (= c!1039192 (is-Cons!63947 (t!377440 (unfocusZipperList!1345 zl!343))))))

(declare-fun b!5858749 () Bool)

(assert (=> b!5858749 (= e!3592378 e!3592377)))

(declare-fun c!1039193 () Bool)

(assert (=> b!5858749 (= c!1039193 (isEmpty!35810 (tail!11488 (t!377440 (unfocusZipperList!1345 zl!343)))))))

(declare-fun b!5858750 () Bool)

(assert (=> b!5858750 (= e!3592378 (isEmptyLang!1367 lt!2305203))))

(declare-fun b!5858751 () Bool)

(assert (=> b!5858751 (= e!3592376 (Union!15924 (h!70395 (t!377440 (unfocusZipperList!1345 zl!343))) (generalisedUnion!1768 (t!377440 (t!377440 (unfocusZipperList!1345 zl!343))))))))

(declare-fun b!5858752 () Bool)

(assert (=> b!5858752 (= e!3592375 (isEmpty!35810 (t!377440 (t!377440 (unfocusZipperList!1345 zl!343)))))))

(assert (= (and d!1839910 res!2465611) b!5858752))

(assert (= (and d!1839910 c!1039194) b!5858743))

(assert (= (and d!1839910 (not c!1039194)) b!5858748))

(assert (= (and b!5858748 c!1039192) b!5858751))

(assert (= (and b!5858748 (not c!1039192)) b!5858744))

(assert (= (and d!1839910 res!2465610) b!5858746))

(assert (= (and b!5858746 c!1039195) b!5858750))

(assert (= (and b!5858746 (not c!1039195)) b!5858749))

(assert (= (and b!5858749 c!1039193) b!5858747))

(assert (= (and b!5858749 (not c!1039193)) b!5858745))

(declare-fun m!6776388 () Bool)

(assert (=> d!1839910 m!6776388))

(declare-fun m!6776390 () Bool)

(assert (=> d!1839910 m!6776390))

(declare-fun m!6776392 () Bool)

(assert (=> b!5858751 m!6776392))

(declare-fun m!6776394 () Bool)

(assert (=> b!5858745 m!6776394))

(assert (=> b!5858746 m!6775736))

(declare-fun m!6776396 () Bool)

(assert (=> b!5858749 m!6776396))

(assert (=> b!5858749 m!6776396))

(declare-fun m!6776398 () Bool)

(assert (=> b!5858749 m!6776398))

(declare-fun m!6776400 () Bool)

(assert (=> b!5858750 m!6776400))

(declare-fun m!6776402 () Bool)

(assert (=> b!5858752 m!6776402))

(declare-fun m!6776404 () Bool)

(assert (=> b!5858747 m!6776404))

(assert (=> b!5857821 d!1839910))

(assert (=> b!5858007 d!1839606))

(declare-fun b!5858753 () Bool)

(declare-fun res!2465613 () Bool)

(declare-fun e!3592382 () Bool)

(assert (=> b!5858753 (=> (not res!2465613) (not e!3592382))))

(declare-fun call!459237 () Bool)

(assert (=> b!5858753 (= res!2465613 (not call!459237))))

(declare-fun b!5858754 () Bool)

(declare-fun e!3592383 () Bool)

(assert (=> b!5858754 (= e!3592383 (nullable!5924 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326))))))

(declare-fun b!5858755 () Bool)

(declare-fun res!2465616 () Bool)

(declare-fun e!3592386 () Bool)

(assert (=> b!5858755 (=> res!2465616 e!3592386)))

(assert (=> b!5858755 (= res!2465616 (not (is-ElementMatch!15924 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326)))))))

(declare-fun e!3592380 () Bool)

(assert (=> b!5858755 (= e!3592380 e!3592386)))

(declare-fun b!5858756 () Bool)

(declare-fun e!3592385 () Bool)

(assert (=> b!5858756 (= e!3592385 (not (= (head!12402 (tail!11487 s!2326)) (c!1038857 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326))))))))

(declare-fun b!5858758 () Bool)

(declare-fun res!2465619 () Bool)

(assert (=> b!5858758 (=> res!2465619 e!3592385)))

(assert (=> b!5858758 (= res!2465619 (not (isEmpty!35809 (tail!11487 (tail!11487 s!2326)))))))

(declare-fun b!5858759 () Bool)

(declare-fun e!3592381 () Bool)

(assert (=> b!5858759 (= e!3592381 e!3592385)))

(declare-fun res!2465614 () Bool)

(assert (=> b!5858759 (=> res!2465614 e!3592385)))

(assert (=> b!5858759 (= res!2465614 call!459237)))

(declare-fun b!5858760 () Bool)

(assert (=> b!5858760 (= e!3592382 (= (head!12402 (tail!11487 s!2326)) (c!1038857 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326)))))))

(declare-fun b!5858761 () Bool)

(declare-fun lt!2305204 () Bool)

(assert (=> b!5858761 (= e!3592380 (not lt!2305204))))

(declare-fun b!5858762 () Bool)

(declare-fun e!3592384 () Bool)

(assert (=> b!5858762 (= e!3592384 (= lt!2305204 call!459237))))

(declare-fun b!5858763 () Bool)

(declare-fun res!2465618 () Bool)

(assert (=> b!5858763 (=> res!2465618 e!3592386)))

(assert (=> b!5858763 (= res!2465618 e!3592382)))

(declare-fun res!2465612 () Bool)

(assert (=> b!5858763 (=> (not res!2465612) (not e!3592382))))

(assert (=> b!5858763 (= res!2465612 lt!2305204)))

(declare-fun b!5858764 () Bool)

(assert (=> b!5858764 (= e!3592384 e!3592380)))

(declare-fun c!1039196 () Bool)

(assert (=> b!5858764 (= c!1039196 (is-EmptyLang!15924 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326))))))

(declare-fun b!5858765 () Bool)

(assert (=> b!5858765 (= e!3592383 (matchR!8107 (derivativeStep!4662 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326)) (head!12402 (tail!11487 s!2326))) (tail!11487 (tail!11487 s!2326))))))

(declare-fun d!1839912 () Bool)

(assert (=> d!1839912 e!3592384))

(declare-fun c!1039197 () Bool)

(assert (=> d!1839912 (= c!1039197 (is-EmptyExpr!15924 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326))))))

(assert (=> d!1839912 (= lt!2305204 e!3592383)))

(declare-fun c!1039198 () Bool)

(assert (=> d!1839912 (= c!1039198 (isEmpty!35809 (tail!11487 s!2326)))))

(assert (=> d!1839912 (validRegex!7660 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326)))))

(assert (=> d!1839912 (= (matchR!8107 (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326)) (tail!11487 s!2326)) lt!2305204)))

(declare-fun b!5858757 () Bool)

(declare-fun res!2465617 () Bool)

(assert (=> b!5858757 (=> (not res!2465617) (not e!3592382))))

(assert (=> b!5858757 (= res!2465617 (isEmpty!35809 (tail!11487 (tail!11487 s!2326))))))

(declare-fun bm!459232 () Bool)

(assert (=> bm!459232 (= call!459237 (isEmpty!35809 (tail!11487 s!2326)))))

(declare-fun b!5858766 () Bool)

(assert (=> b!5858766 (= e!3592386 e!3592381)))

(declare-fun res!2465615 () Bool)

(assert (=> b!5858766 (=> (not res!2465615) (not e!3592381))))

(assert (=> b!5858766 (= res!2465615 (not lt!2305204))))

(assert (= (and d!1839912 c!1039198) b!5858754))

(assert (= (and d!1839912 (not c!1039198)) b!5858765))

(assert (= (and d!1839912 c!1039197) b!5858762))

(assert (= (and d!1839912 (not c!1039197)) b!5858764))

(assert (= (and b!5858764 c!1039196) b!5858761))

(assert (= (and b!5858764 (not c!1039196)) b!5858755))

(assert (= (and b!5858755 (not res!2465616)) b!5858763))

(assert (= (and b!5858763 res!2465612) b!5858753))

(assert (= (and b!5858753 res!2465613) b!5858757))

(assert (= (and b!5858757 res!2465617) b!5858760))

(assert (= (and b!5858763 (not res!2465618)) b!5858766))

(assert (= (and b!5858766 res!2465615) b!5858759))

(assert (= (and b!5858759 (not res!2465614)) b!5858758))

(assert (= (and b!5858758 (not res!2465619)) b!5858756))

(assert (= (or b!5858762 b!5858753 b!5858759) bm!459232))

(assert (=> bm!459232 m!6775668))

(assert (=> bm!459232 m!6775700))

(assert (=> b!5858754 m!6775696))

(declare-fun m!6776406 () Bool)

(assert (=> b!5858754 m!6776406))

(assert (=> b!5858756 m!6775668))

(assert (=> b!5858756 m!6776210))

(assert (=> b!5858765 m!6775668))

(assert (=> b!5858765 m!6776210))

(assert (=> b!5858765 m!6775696))

(assert (=> b!5858765 m!6776210))

(declare-fun m!6776408 () Bool)

(assert (=> b!5858765 m!6776408))

(assert (=> b!5858765 m!6775668))

(assert (=> b!5858765 m!6776214))

(assert (=> b!5858765 m!6776408))

(assert (=> b!5858765 m!6776214))

(declare-fun m!6776410 () Bool)

(assert (=> b!5858765 m!6776410))

(assert (=> b!5858758 m!6775668))

(assert (=> b!5858758 m!6776214))

(assert (=> b!5858758 m!6776214))

(assert (=> b!5858758 m!6776342))

(assert (=> d!1839912 m!6775668))

(assert (=> d!1839912 m!6775700))

(assert (=> d!1839912 m!6775696))

(declare-fun m!6776412 () Bool)

(assert (=> d!1839912 m!6776412))

(assert (=> b!5858760 m!6775668))

(assert (=> b!5858760 m!6776210))

(assert (=> b!5858757 m!6775668))

(assert (=> b!5858757 m!6776214))

(assert (=> b!5858757 m!6776214))

(assert (=> b!5858757 m!6776342))

(assert (=> b!5857766 d!1839912))

(declare-fun b!5858767 () Bool)

(declare-fun c!1039201 () Bool)

(assert (=> b!5858767 (= c!1039201 (is-Union!15924 (regTwo!32361 r!7292)))))

(declare-fun e!3592388 () Regex!15924)

(declare-fun e!3592389 () Regex!15924)

(assert (=> b!5858767 (= e!3592388 e!3592389)))

(declare-fun bm!459233 () Bool)

(declare-fun call!459240 () Regex!15924)

(declare-fun call!459238 () Regex!15924)

(assert (=> bm!459233 (= call!459240 call!459238)))

(declare-fun b!5858768 () Bool)

(declare-fun c!1039202 () Bool)

(assert (=> b!5858768 (= c!1039202 (nullable!5924 (regOne!32360 (regTwo!32361 r!7292))))))

(declare-fun e!3592387 () Regex!15924)

(declare-fun e!3592390 () Regex!15924)

(assert (=> b!5858768 (= e!3592387 e!3592390)))

(declare-fun b!5858769 () Bool)

(assert (=> b!5858769 (= e!3592389 e!3592387)))

(declare-fun c!1039199 () Bool)

(assert (=> b!5858769 (= c!1039199 (is-Star!15924 (regTwo!32361 r!7292)))))

(declare-fun bm!459234 () Bool)

(assert (=> bm!459234 (= call!459238 (derivativeStep!4662 (ite c!1039201 (regTwo!32361 (regTwo!32361 r!7292)) (ite c!1039199 (reg!16253 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (head!12402 s!2326)))))

(declare-fun b!5858770 () Bool)

(declare-fun e!3592391 () Regex!15924)

(assert (=> b!5858770 (= e!3592391 EmptyLang!15924)))

(declare-fun call!459239 () Regex!15924)

(declare-fun b!5858771 () Bool)

(assert (=> b!5858771 (= e!3592390 (Union!15924 (Concat!24769 call!459240 (regTwo!32360 (regTwo!32361 r!7292))) call!459239))))

(declare-fun b!5858773 () Bool)

(declare-fun call!459241 () Regex!15924)

(assert (=> b!5858773 (= e!3592389 (Union!15924 call!459241 call!459238))))

(declare-fun b!5858774 () Bool)

(assert (=> b!5858774 (= e!3592390 (Union!15924 (Concat!24769 call!459239 (regTwo!32360 (regTwo!32361 r!7292))) EmptyLang!15924))))

(declare-fun bm!459235 () Bool)

(assert (=> bm!459235 (= call!459241 (derivativeStep!4662 (ite c!1039201 (regOne!32361 (regTwo!32361 r!7292)) (ite c!1039202 (regTwo!32360 (regTwo!32361 r!7292)) (regOne!32360 (regTwo!32361 r!7292)))) (head!12402 s!2326)))))

(declare-fun b!5858775 () Bool)

(assert (=> b!5858775 (= e!3592387 (Concat!24769 call!459240 (regTwo!32361 r!7292)))))

(declare-fun bm!459236 () Bool)

(assert (=> bm!459236 (= call!459239 call!459241)))

(declare-fun b!5858776 () Bool)

(assert (=> b!5858776 (= e!3592388 (ite (= (head!12402 s!2326) (c!1038857 (regTwo!32361 r!7292))) EmptyExpr!15924 EmptyLang!15924))))

(declare-fun d!1839914 () Bool)

(declare-fun lt!2305205 () Regex!15924)

(assert (=> d!1839914 (validRegex!7660 lt!2305205)))

(assert (=> d!1839914 (= lt!2305205 e!3592391)))

(declare-fun c!1039200 () Bool)

(assert (=> d!1839914 (= c!1039200 (or (is-EmptyExpr!15924 (regTwo!32361 r!7292)) (is-EmptyLang!15924 (regTwo!32361 r!7292))))))

(assert (=> d!1839914 (validRegex!7660 (regTwo!32361 r!7292))))

(assert (=> d!1839914 (= (derivativeStep!4662 (regTwo!32361 r!7292) (head!12402 s!2326)) lt!2305205)))

(declare-fun b!5858772 () Bool)

(assert (=> b!5858772 (= e!3592391 e!3592388)))

(declare-fun c!1039203 () Bool)

(assert (=> b!5858772 (= c!1039203 (is-ElementMatch!15924 (regTwo!32361 r!7292)))))

(assert (= (and d!1839914 c!1039200) b!5858770))

(assert (= (and d!1839914 (not c!1039200)) b!5858772))

(assert (= (and b!5858772 c!1039203) b!5858776))

(assert (= (and b!5858772 (not c!1039203)) b!5858767))

(assert (= (and b!5858767 c!1039201) b!5858773))

(assert (= (and b!5858767 (not c!1039201)) b!5858769))

(assert (= (and b!5858769 c!1039199) b!5858775))

(assert (= (and b!5858769 (not c!1039199)) b!5858768))

(assert (= (and b!5858768 c!1039202) b!5858771))

(assert (= (and b!5858768 (not c!1039202)) b!5858774))

(assert (= (or b!5858771 b!5858774) bm!459236))

(assert (= (or b!5858775 b!5858771) bm!459233))

(assert (= (or b!5858773 bm!459233) bm!459234))

(assert (= (or b!5858773 bm!459236) bm!459235))

(assert (=> b!5858768 m!6775806))

(assert (=> bm!459234 m!6775664))

(declare-fun m!6776414 () Bool)

(assert (=> bm!459234 m!6776414))

(assert (=> bm!459235 m!6775664))

(declare-fun m!6776416 () Bool)

(assert (=> bm!459235 m!6776416))

(declare-fun m!6776418 () Bool)

(assert (=> d!1839914 m!6776418))

(assert (=> d!1839914 m!6775702))

(assert (=> b!5857766 d!1839914))

(assert (=> b!5857766 d!1839768))

(assert (=> b!5857766 d!1839810))

(declare-fun d!1839916 () Bool)

(assert (=> d!1839916 (= (nullable!5924 (h!70395 (exprs!5808 (h!70396 zl!343)))) (nullableFct!1911 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun bs!1380396 () Bool)

(assert (= bs!1380396 d!1839916))

(declare-fun m!6776420 () Bool)

(assert (=> bs!1380396 m!6776420))

(assert (=> b!5857881 d!1839916))

(declare-fun d!1839918 () Bool)

(assert (=> d!1839918 (= (head!12403 (unfocusZipperList!1345 zl!343)) (h!70395 (unfocusZipperList!1345 zl!343)))))

(assert (=> b!5857817 d!1839918))

(declare-fun d!1839920 () Bool)

(assert (=> d!1839920 (= (head!12403 (exprs!5808 (h!70396 zl!343))) (h!70395 (exprs!5808 (h!70396 zl!343))))))

(assert (=> b!5857878 d!1839920))

(declare-fun d!1839922 () Bool)

(assert (=> d!1839922 true))

(declare-fun setRes!39720 () Bool)

(assert (=> d!1839922 setRes!39720))

(declare-fun condSetEmpty!39720 () Bool)

(declare-fun res!2465620 () (Set Context!10616))

(assert (=> d!1839922 (= condSetEmpty!39720 (= res!2465620 (as set.empty (Set Context!10616))))))

(assert (=> d!1839922 (= (choose!44414 z!1189 lambda!320275) res!2465620)))

(declare-fun setIsEmpty!39720 () Bool)

(assert (=> setIsEmpty!39720 setRes!39720))

(declare-fun e!3592392 () Bool)

(declare-fun setNonEmpty!39720 () Bool)

(declare-fun setElem!39720 () Context!10616)

(declare-fun tp!1620553 () Bool)

(assert (=> setNonEmpty!39720 (= setRes!39720 (and tp!1620553 (inv!83058 setElem!39720) e!3592392))))

(declare-fun setRest!39720 () (Set Context!10616))

(assert (=> setNonEmpty!39720 (= res!2465620 (set.union (set.insert setElem!39720 (as set.empty (Set Context!10616))) setRest!39720))))

(declare-fun b!5858777 () Bool)

(declare-fun tp!1620554 () Bool)

(assert (=> b!5858777 (= e!3592392 tp!1620554)))

(assert (= (and d!1839922 condSetEmpty!39720) setIsEmpty!39720))

(assert (= (and d!1839922 (not condSetEmpty!39720)) setNonEmpty!39720))

(assert (= setNonEmpty!39720 b!5858777))

(declare-fun m!6776422 () Bool)

(assert (=> setNonEmpty!39720 m!6776422))

(assert (=> d!1839634 d!1839922))

(declare-fun b!5858778 () Bool)

(declare-fun e!3592398 () Bool)

(declare-fun call!459243 () Bool)

(assert (=> b!5858778 (= e!3592398 call!459243)))

(declare-fun bm!459237 () Bool)

(declare-fun c!1039204 () Bool)

(assert (=> bm!459237 (= call!459243 (validRegex!7660 (ite c!1039204 (regTwo!32361 lt!2305155) (regTwo!32360 lt!2305155))))))

(declare-fun b!5858779 () Bool)

(declare-fun e!3592395 () Bool)

(assert (=> b!5858779 (= e!3592395 e!3592398)))

(declare-fun res!2465625 () Bool)

(assert (=> b!5858779 (=> (not res!2465625) (not e!3592398))))

(declare-fun call!459244 () Bool)

(assert (=> b!5858779 (= res!2465625 call!459244)))

(declare-fun b!5858780 () Bool)

(declare-fun e!3592397 () Bool)

(declare-fun e!3592394 () Bool)

(assert (=> b!5858780 (= e!3592397 e!3592394)))

(declare-fun res!2465624 () Bool)

(assert (=> b!5858780 (= res!2465624 (not (nullable!5924 (reg!16253 lt!2305155))))))

(assert (=> b!5858780 (=> (not res!2465624) (not e!3592394))))

(declare-fun b!5858781 () Bool)

(declare-fun res!2465623 () Bool)

(assert (=> b!5858781 (=> res!2465623 e!3592395)))

(assert (=> b!5858781 (= res!2465623 (not (is-Concat!24769 lt!2305155)))))

(declare-fun e!3592399 () Bool)

(assert (=> b!5858781 (= e!3592399 e!3592395)))

(declare-fun b!5858782 () Bool)

(declare-fun call!459242 () Bool)

(assert (=> b!5858782 (= e!3592394 call!459242)))

(declare-fun bm!459238 () Bool)

(assert (=> bm!459238 (= call!459244 call!459242)))

(declare-fun b!5858783 () Bool)

(assert (=> b!5858783 (= e!3592397 e!3592399)))

(assert (=> b!5858783 (= c!1039204 (is-Union!15924 lt!2305155))))

(declare-fun b!5858784 () Bool)

(declare-fun res!2465622 () Bool)

(declare-fun e!3592396 () Bool)

(assert (=> b!5858784 (=> (not res!2465622) (not e!3592396))))

(assert (=> b!5858784 (= res!2465622 call!459244)))

(assert (=> b!5858784 (= e!3592399 e!3592396)))

(declare-fun bm!459239 () Bool)

(declare-fun c!1039205 () Bool)

(assert (=> bm!459239 (= call!459242 (validRegex!7660 (ite c!1039205 (reg!16253 lt!2305155) (ite c!1039204 (regOne!32361 lt!2305155) (regOne!32360 lt!2305155)))))))

(declare-fun b!5858785 () Bool)

(assert (=> b!5858785 (= e!3592396 call!459243)))

(declare-fun b!5858786 () Bool)

(declare-fun e!3592393 () Bool)

(assert (=> b!5858786 (= e!3592393 e!3592397)))

(assert (=> b!5858786 (= c!1039205 (is-Star!15924 lt!2305155))))

(declare-fun d!1839924 () Bool)

(declare-fun res!2465621 () Bool)

(assert (=> d!1839924 (=> res!2465621 e!3592393)))

(assert (=> d!1839924 (= res!2465621 (is-ElementMatch!15924 lt!2305155))))

(assert (=> d!1839924 (= (validRegex!7660 lt!2305155) e!3592393)))

(assert (= (and d!1839924 (not res!2465621)) b!5858786))

(assert (= (and b!5858786 c!1039205) b!5858780))

(assert (= (and b!5858786 (not c!1039205)) b!5858783))

(assert (= (and b!5858780 res!2465624) b!5858782))

(assert (= (and b!5858783 c!1039204) b!5858784))

(assert (= (and b!5858783 (not c!1039204)) b!5858781))

(assert (= (and b!5858784 res!2465622) b!5858785))

(assert (= (and b!5858781 (not res!2465623)) b!5858779))

(assert (= (and b!5858779 res!2465625) b!5858778))

(assert (= (or b!5858785 b!5858778) bm!459237))

(assert (= (or b!5858784 b!5858779) bm!459238))

(assert (= (or b!5858782 bm!459238) bm!459239))

(declare-fun m!6776424 () Bool)

(assert (=> bm!459237 m!6776424))

(declare-fun m!6776426 () Bool)

(assert (=> b!5858780 m!6776426))

(declare-fun m!6776428 () Bool)

(assert (=> bm!459239 m!6776428))

(assert (=> d!1839628 d!1839924))

(declare-fun d!1839926 () Bool)

(declare-fun res!2465626 () Bool)

(declare-fun e!3592400 () Bool)

(assert (=> d!1839926 (=> res!2465626 e!3592400)))

(assert (=> d!1839926 (= res!2465626 (is-Nil!63947 (exprs!5808 (h!70396 zl!343))))))

(assert (=> d!1839926 (= (forall!15011 (exprs!5808 (h!70396 zl!343)) lambda!320300) e!3592400)))

(declare-fun b!5858787 () Bool)

(declare-fun e!3592401 () Bool)

(assert (=> b!5858787 (= e!3592400 e!3592401)))

(declare-fun res!2465627 () Bool)

(assert (=> b!5858787 (=> (not res!2465627) (not e!3592401))))

(assert (=> b!5858787 (= res!2465627 (dynLambda!25005 lambda!320300 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun b!5858788 () Bool)

(assert (=> b!5858788 (= e!3592401 (forall!15011 (t!377440 (exprs!5808 (h!70396 zl!343))) lambda!320300))))

(assert (= (and d!1839926 (not res!2465626)) b!5858787))

(assert (= (and b!5858787 res!2465627) b!5858788))

(declare-fun b_lambda!220505 () Bool)

(assert (=> (not b_lambda!220505) (not b!5858787)))

(declare-fun m!6776430 () Bool)

(assert (=> b!5858787 m!6776430))

(declare-fun m!6776432 () Bool)

(assert (=> b!5858788 m!6776432))

(assert (=> d!1839628 d!1839926))

(declare-fun b!5858789 () Bool)

(declare-fun e!3592403 () (Set Context!10616))

(assert (=> b!5858789 (= e!3592403 (set.insert (ite c!1038983 lt!2305057 (Context!10617 call!459092)) (as set.empty (Set Context!10616))))))

(declare-fun b!5858790 () Bool)

(declare-fun e!3592406 () (Set Context!10616))

(declare-fun call!459246 () (Set Context!10616))

(declare-fun call!459250 () (Set Context!10616))

(assert (=> b!5858790 (= e!3592406 (set.union call!459246 call!459250))))

(declare-fun c!1039207 () Bool)

(declare-fun c!1039209 () Bool)

(declare-fun call!459245 () List!64071)

(declare-fun bm!459240 () Bool)

(declare-fun c!1039206 () Bool)

(assert (=> bm!459240 (= call!459250 (derivationStepZipperDown!1190 (ite c!1039207 (regTwo!32361 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))) (ite c!1039209 (regTwo!32360 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))) (ite c!1039206 (regOne!32360 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))) (reg!16253 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292)))))) (ite (or c!1039207 c!1039209) (ite c!1038983 lt!2305057 (Context!10617 call!459092)) (Context!10617 call!459245)) (h!70397 s!2326)))))

(declare-fun call!459247 () List!64071)

(declare-fun bm!459241 () Bool)

(assert (=> bm!459241 (= call!459246 (derivationStepZipperDown!1190 (ite c!1039207 (regOne!32361 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))) (regOne!32360 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292)))) (ite c!1039207 (ite c!1038983 lt!2305057 (Context!10617 call!459092)) (Context!10617 call!459247)) (h!70397 s!2326)))))

(declare-fun bm!459242 () Bool)

(assert (=> bm!459242 (= call!459247 ($colon$colon!1829 (exprs!5808 (ite c!1038983 lt!2305057 (Context!10617 call!459092))) (ite (or c!1039209 c!1039206) (regTwo!32360 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))) (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292)))))))

(declare-fun b!5858792 () Bool)

(declare-fun e!3592407 () (Set Context!10616))

(declare-fun call!459248 () (Set Context!10616))

(assert (=> b!5858792 (= e!3592407 call!459248)))

(declare-fun bm!459243 () Bool)

(declare-fun call!459249 () (Set Context!10616))

(assert (=> bm!459243 (= call!459248 call!459249)))

(declare-fun bm!459244 () Bool)

(assert (=> bm!459244 (= call!459249 call!459250)))

(declare-fun b!5858793 () Bool)

(declare-fun e!3592402 () (Set Context!10616))

(declare-fun e!3592404 () (Set Context!10616))

(assert (=> b!5858793 (= e!3592402 e!3592404)))

(assert (=> b!5858793 (= c!1039206 (is-Concat!24769 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))))))

(declare-fun b!5858794 () Bool)

(assert (=> b!5858794 (= e!3592404 call!459248)))

(declare-fun b!5858795 () Bool)

(assert (=> b!5858795 (= e!3592407 (as set.empty (Set Context!10616)))))

(declare-fun b!5858796 () Bool)

(assert (=> b!5858796 (= e!3592402 (set.union call!459246 call!459249))))

(declare-fun b!5858797 () Bool)

(declare-fun e!3592405 () Bool)

(assert (=> b!5858797 (= c!1039209 e!3592405)))

(declare-fun res!2465628 () Bool)

(assert (=> b!5858797 (=> (not res!2465628) (not e!3592405))))

(assert (=> b!5858797 (= res!2465628 (is-Concat!24769 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))))))

(assert (=> b!5858797 (= e!3592406 e!3592402)))

(declare-fun b!5858798 () Bool)

(assert (=> b!5858798 (= e!3592403 e!3592406)))

(assert (=> b!5858798 (= c!1039207 (is-Union!15924 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))))))

(declare-fun bm!459245 () Bool)

(assert (=> bm!459245 (= call!459245 call!459247)))

(declare-fun b!5858799 () Bool)

(declare-fun c!1039210 () Bool)

(assert (=> b!5858799 (= c!1039210 (is-Star!15924 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))))))

(assert (=> b!5858799 (= e!3592404 e!3592407)))

(declare-fun b!5858791 () Bool)

(assert (=> b!5858791 (= e!3592405 (nullable!5924 (regOne!32360 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292)))))))

(declare-fun d!1839928 () Bool)

(declare-fun c!1039208 () Bool)

(assert (=> d!1839928 (= c!1039208 (and (is-ElementMatch!15924 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))) (= (c!1038857 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292))) (h!70397 s!2326))))))

(assert (=> d!1839928 (= (derivationStepZipperDown!1190 (ite c!1038983 (regOne!32361 r!7292) (regOne!32360 r!7292)) (ite c!1038983 lt!2305057 (Context!10617 call!459092)) (h!70397 s!2326)) e!3592403)))

(assert (= (and d!1839928 c!1039208) b!5858789))

(assert (= (and d!1839928 (not c!1039208)) b!5858798))

(assert (= (and b!5858798 c!1039207) b!5858790))

(assert (= (and b!5858798 (not c!1039207)) b!5858797))

(assert (= (and b!5858797 res!2465628) b!5858791))

(assert (= (and b!5858797 c!1039209) b!5858796))

(assert (= (and b!5858797 (not c!1039209)) b!5858793))

(assert (= (and b!5858793 c!1039206) b!5858794))

(assert (= (and b!5858793 (not c!1039206)) b!5858799))

(assert (= (and b!5858799 c!1039210) b!5858792))

(assert (= (and b!5858799 (not c!1039210)) b!5858795))

(assert (= (or b!5858794 b!5858792) bm!459245))

(assert (= (or b!5858794 b!5858792) bm!459243))

(assert (= (or b!5858796 bm!459245) bm!459242))

(assert (= (or b!5858796 bm!459243) bm!459244))

(assert (= (or b!5858790 bm!459244) bm!459240))

(assert (= (or b!5858790 b!5858796) bm!459241))

(declare-fun m!6776434 () Bool)

(assert (=> b!5858791 m!6776434))

(declare-fun m!6776436 () Bool)

(assert (=> bm!459242 m!6776436))

(declare-fun m!6776438 () Bool)

(assert (=> b!5858789 m!6776438))

(declare-fun m!6776440 () Bool)

(assert (=> bm!459240 m!6776440))

(declare-fun m!6776442 () Bool)

(assert (=> bm!459241 m!6776442))

(assert (=> bm!459086 d!1839928))

(declare-fun d!1839930 () Bool)

(assert (=> d!1839930 (= (nullable!5924 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))) (nullableFct!1911 (h!70395 (exprs!5808 (Context!10617 (Cons!63947 r!7292 Nil!63947))))))))

(declare-fun bs!1380397 () Bool)

(assert (= bs!1380397 d!1839930))

(declare-fun m!6776444 () Bool)

(assert (=> bs!1380397 m!6776444))

(assert (=> b!5858048 d!1839930))

(declare-fun b!5858800 () Bool)

(declare-fun e!3592413 () Bool)

(declare-fun call!459252 () Bool)

(assert (=> b!5858800 (= e!3592413 call!459252)))

(declare-fun bm!459246 () Bool)

(declare-fun c!1039211 () Bool)

(assert (=> bm!459246 (= call!459252 (validRegex!7660 (ite c!1039211 (regTwo!32361 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))) (regTwo!32360 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))))))))

(declare-fun b!5858801 () Bool)

(declare-fun e!3592410 () Bool)

(assert (=> b!5858801 (= e!3592410 e!3592413)))

(declare-fun res!2465633 () Bool)

(assert (=> b!5858801 (=> (not res!2465633) (not e!3592413))))

(declare-fun call!459253 () Bool)

(assert (=> b!5858801 (= res!2465633 call!459253)))

(declare-fun b!5858802 () Bool)

(declare-fun e!3592412 () Bool)

(declare-fun e!3592409 () Bool)

(assert (=> b!5858802 (= e!3592412 e!3592409)))

(declare-fun res!2465632 () Bool)

(assert (=> b!5858802 (= res!2465632 (not (nullable!5924 (reg!16253 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))))))))

(assert (=> b!5858802 (=> (not res!2465632) (not e!3592409))))

(declare-fun b!5858803 () Bool)

(declare-fun res!2465631 () Bool)

(assert (=> b!5858803 (=> res!2465631 e!3592410)))

(assert (=> b!5858803 (= res!2465631 (not (is-Concat!24769 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292))))))))

(declare-fun e!3592414 () Bool)

(assert (=> b!5858803 (= e!3592414 e!3592410)))

(declare-fun b!5858804 () Bool)

(declare-fun call!459251 () Bool)

(assert (=> b!5858804 (= e!3592409 call!459251)))

(declare-fun bm!459247 () Bool)

(assert (=> bm!459247 (= call!459253 call!459251)))

(declare-fun b!5858805 () Bool)

(assert (=> b!5858805 (= e!3592412 e!3592414)))

(assert (=> b!5858805 (= c!1039211 (is-Union!15924 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))))))

(declare-fun b!5858806 () Bool)

(declare-fun res!2465630 () Bool)

(declare-fun e!3592411 () Bool)

(assert (=> b!5858806 (=> (not res!2465630) (not e!3592411))))

(assert (=> b!5858806 (= res!2465630 call!459253)))

(assert (=> b!5858806 (= e!3592414 e!3592411)))

(declare-fun c!1039212 () Bool)

(declare-fun bm!459248 () Bool)

(assert (=> bm!459248 (= call!459251 (validRegex!7660 (ite c!1039212 (reg!16253 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))) (ite c!1039211 (regOne!32361 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))) (regOne!32360 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292))))))))))

(declare-fun b!5858807 () Bool)

(assert (=> b!5858807 (= e!3592411 call!459252)))

(declare-fun b!5858808 () Bool)

(declare-fun e!3592408 () Bool)

(assert (=> b!5858808 (= e!3592408 e!3592412)))

(assert (=> b!5858808 (= c!1039212 (is-Star!15924 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))))))

(declare-fun d!1839932 () Bool)

(declare-fun res!2465629 () Bool)

(assert (=> d!1839932 (=> res!2465629 e!3592408)))

(assert (=> d!1839932 (= res!2465629 (is-ElementMatch!15924 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))))))

(assert (=> d!1839932 (= (validRegex!7660 (ite c!1038940 (reg!16253 r!7292) (ite c!1038939 (regOne!32361 r!7292) (regOne!32360 r!7292)))) e!3592408)))

(assert (= (and d!1839932 (not res!2465629)) b!5858808))

(assert (= (and b!5858808 c!1039212) b!5858802))

(assert (= (and b!5858808 (not c!1039212)) b!5858805))

(assert (= (and b!5858802 res!2465632) b!5858804))

(assert (= (and b!5858805 c!1039211) b!5858806))

(assert (= (and b!5858805 (not c!1039211)) b!5858803))

(assert (= (and b!5858806 res!2465630) b!5858807))

(assert (= (and b!5858803 (not res!2465631)) b!5858801))

(assert (= (and b!5858801 res!2465633) b!5858800))

(assert (= (or b!5858807 b!5858800) bm!459246))

(assert (= (or b!5858806 b!5858801) bm!459247))

(assert (= (or b!5858804 bm!459247) bm!459248))

(declare-fun m!6776446 () Bool)

(assert (=> bm!459246 m!6776446))

(declare-fun m!6776448 () Bool)

(assert (=> b!5858802 m!6776448))

(declare-fun m!6776450 () Bool)

(assert (=> bm!459248 m!6776450))

(assert (=> bm!459051 d!1839932))

(declare-fun b!5858809 () Bool)

(declare-fun e!3592417 () Bool)

(assert (=> b!5858809 (= e!3592417 (nullable!5924 (h!70395 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305051)))))))))

(declare-fun b!5858810 () Bool)

(declare-fun e!3592416 () (Set Context!10616))

(declare-fun e!3592415 () (Set Context!10616))

(assert (=> b!5858810 (= e!3592416 e!3592415)))

(declare-fun c!1039213 () Bool)

(assert (=> b!5858810 (= c!1039213 (is-Cons!63947 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305051))))))))

(declare-fun call!459254 () (Set Context!10616))

(declare-fun b!5858811 () Bool)

(assert (=> b!5858811 (= e!3592416 (set.union call!459254 (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305051)))))) (h!70397 s!2326))))))

(declare-fun d!1839934 () Bool)

(declare-fun c!1039214 () Bool)

(assert (=> d!1839934 (= c!1039214 e!3592417)))

(declare-fun res!2465634 () Bool)

(assert (=> d!1839934 (=> (not res!2465634) (not e!3592417))))

(assert (=> d!1839934 (= res!2465634 (is-Cons!63947 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305051))))))))

(assert (=> d!1839934 (= (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 lt!2305051))) (h!70397 s!2326)) e!3592416)))

(declare-fun bm!459249 () Bool)

(assert (=> bm!459249 (= call!459254 (derivationStepZipperDown!1190 (h!70395 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305051))))) (Context!10617 (t!377440 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305051)))))) (h!70397 s!2326)))))

(declare-fun b!5858812 () Bool)

(assert (=> b!5858812 (= e!3592415 call!459254)))

(declare-fun b!5858813 () Bool)

(assert (=> b!5858813 (= e!3592415 (as set.empty (Set Context!10616)))))

(assert (= (and d!1839934 res!2465634) b!5858809))

(assert (= (and d!1839934 c!1039214) b!5858811))

(assert (= (and d!1839934 (not c!1039214)) b!5858810))

(assert (= (and b!5858810 c!1039213) b!5858812))

(assert (= (and b!5858810 (not c!1039213)) b!5858813))

(assert (= (or b!5858811 b!5858812) bm!459249))

(declare-fun m!6776452 () Bool)

(assert (=> b!5858809 m!6776452))

(declare-fun m!6776454 () Bool)

(assert (=> b!5858811 m!6776454))

(declare-fun m!6776456 () Bool)

(assert (=> bm!459249 m!6776456))

(assert (=> b!5857841 d!1839934))

(declare-fun b!5858814 () Bool)

(declare-fun e!3592420 () Bool)

(assert (=> b!5858814 (= e!3592420 (nullable!5924 (h!70395 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305055)))))))))

(declare-fun b!5858815 () Bool)

(declare-fun e!3592419 () (Set Context!10616))

(declare-fun e!3592418 () (Set Context!10616))

(assert (=> b!5858815 (= e!3592419 e!3592418)))

(declare-fun c!1039215 () Bool)

(assert (=> b!5858815 (= c!1039215 (is-Cons!63947 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305055))))))))

(declare-fun call!459255 () (Set Context!10616))

(declare-fun b!5858816 () Bool)

(assert (=> b!5858816 (= e!3592419 (set.union call!459255 (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305055)))))) (h!70397 s!2326))))))

(declare-fun d!1839936 () Bool)

(declare-fun c!1039216 () Bool)

(assert (=> d!1839936 (= c!1039216 e!3592420)))

(declare-fun res!2465635 () Bool)

(assert (=> d!1839936 (=> (not res!2465635) (not e!3592420))))

(assert (=> d!1839936 (= res!2465635 (is-Cons!63947 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305055))))))))

(assert (=> d!1839936 (= (derivationStepZipperUp!1116 (Context!10617 (t!377440 (exprs!5808 lt!2305055))) (h!70397 s!2326)) e!3592419)))

(declare-fun bm!459250 () Bool)

(assert (=> bm!459250 (= call!459255 (derivationStepZipperDown!1190 (h!70395 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305055))))) (Context!10617 (t!377440 (exprs!5808 (Context!10617 (t!377440 (exprs!5808 lt!2305055)))))) (h!70397 s!2326)))))

(declare-fun b!5858817 () Bool)

(assert (=> b!5858817 (= e!3592418 call!459255)))

(declare-fun b!5858818 () Bool)

(assert (=> b!5858818 (= e!3592418 (as set.empty (Set Context!10616)))))

(assert (= (and d!1839936 res!2465635) b!5858814))

(assert (= (and d!1839936 c!1039216) b!5858816))

(assert (= (and d!1839936 (not c!1039216)) b!5858815))

(assert (= (and b!5858815 c!1039215) b!5858817))

(assert (= (and b!5858815 (not c!1039215)) b!5858818))

(assert (= (or b!5858816 b!5858817) bm!459250))

(declare-fun m!6776458 () Bool)

(assert (=> b!5858814 m!6776458))

(declare-fun m!6776460 () Bool)

(assert (=> b!5858816 m!6776460))

(declare-fun m!6776462 () Bool)

(assert (=> bm!459250 m!6776462))

(assert (=> b!5857846 d!1839936))

(assert (=> b!5857786 d!1839768))

(declare-fun b!5858819 () Bool)

(declare-fun e!3592422 () (Set Context!10616))

(assert (=> b!5858819 (= e!3592422 (set.insert (ite c!1038965 lt!2305057 (Context!10617 call!459077)) (as set.empty (Set Context!10616))))))

(declare-fun b!5858820 () Bool)

(declare-fun e!3592425 () (Set Context!10616))

(declare-fun call!459257 () (Set Context!10616))

(declare-fun call!459261 () (Set Context!10616))

(assert (=> b!5858820 (= e!3592425 (set.union call!459257 call!459261))))

(declare-fun c!1039218 () Bool)

(declare-fun bm!459251 () Bool)

(declare-fun c!1039220 () Bool)

(declare-fun call!459256 () List!64071)

(declare-fun c!1039217 () Bool)

(assert (=> bm!459251 (= call!459261 (derivationStepZipperDown!1190 (ite c!1039218 (regTwo!32361 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (ite c!1039220 (regTwo!32360 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (ite c!1039217 (regOne!32360 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (reg!16253 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292))))))) (ite (or c!1039218 c!1039220) (ite c!1038965 lt!2305057 (Context!10617 call!459077)) (Context!10617 call!459256)) (h!70397 s!2326)))))

(declare-fun bm!459252 () Bool)

(declare-fun call!459258 () List!64071)

(assert (=> bm!459252 (= call!459257 (derivationStepZipperDown!1190 (ite c!1039218 (regOne!32361 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (regOne!32360 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292))))) (ite c!1039218 (ite c!1038965 lt!2305057 (Context!10617 call!459077)) (Context!10617 call!459258)) (h!70397 s!2326)))))

(declare-fun bm!459253 () Bool)

(assert (=> bm!459253 (= call!459258 ($colon$colon!1829 (exprs!5808 (ite c!1038965 lt!2305057 (Context!10617 call!459077))) (ite (or c!1039220 c!1039217) (regTwo!32360 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292))))))))

(declare-fun b!5858822 () Bool)

(declare-fun e!3592426 () (Set Context!10616))

(declare-fun call!459259 () (Set Context!10616))

(assert (=> b!5858822 (= e!3592426 call!459259)))

(declare-fun bm!459254 () Bool)

(declare-fun call!459260 () (Set Context!10616))

(assert (=> bm!459254 (= call!459259 call!459260)))

(declare-fun bm!459255 () Bool)

(assert (=> bm!459255 (= call!459260 call!459261)))

(declare-fun b!5858823 () Bool)

(declare-fun e!3592421 () (Set Context!10616))

(declare-fun e!3592423 () (Set Context!10616))

(assert (=> b!5858823 (= e!3592421 e!3592423)))

(assert (=> b!5858823 (= c!1039217 (is-Concat!24769 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))))))

(declare-fun b!5858824 () Bool)

(assert (=> b!5858824 (= e!3592423 call!459259)))

(declare-fun b!5858825 () Bool)

(assert (=> b!5858825 (= e!3592426 (as set.empty (Set Context!10616)))))

(declare-fun b!5858826 () Bool)

(assert (=> b!5858826 (= e!3592421 (set.union call!459257 call!459260))))

(declare-fun b!5858827 () Bool)

(declare-fun e!3592424 () Bool)

(assert (=> b!5858827 (= c!1039220 e!3592424)))

(declare-fun res!2465636 () Bool)

(assert (=> b!5858827 (=> (not res!2465636) (not e!3592424))))

(assert (=> b!5858827 (= res!2465636 (is-Concat!24769 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))))))

(assert (=> b!5858827 (= e!3592425 e!3592421)))

(declare-fun b!5858828 () Bool)

(assert (=> b!5858828 (= e!3592422 e!3592425)))

(assert (=> b!5858828 (= c!1039218 (is-Union!15924 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))))))

(declare-fun bm!459256 () Bool)

(assert (=> bm!459256 (= call!459256 call!459258)))

(declare-fun b!5858829 () Bool)

(declare-fun c!1039221 () Bool)

(assert (=> b!5858829 (= c!1039221 (is-Star!15924 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))))))

(assert (=> b!5858829 (= e!3592423 e!3592426)))

(declare-fun b!5858821 () Bool)

(assert (=> b!5858821 (= e!3592424 (nullable!5924 (regOne!32360 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292))))))))

(declare-fun c!1039219 () Bool)

(declare-fun d!1839938 () Bool)

(assert (=> d!1839938 (= c!1039219 (and (is-ElementMatch!15924 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (= (c!1038857 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292)))) (h!70397 s!2326))))))

(assert (=> d!1839938 (= (derivationStepZipperDown!1190 (ite c!1038965 (regOne!32361 (regOne!32361 r!7292)) (regOne!32360 (regOne!32361 r!7292))) (ite c!1038965 lt!2305057 (Context!10617 call!459077)) (h!70397 s!2326)) e!3592422)))

(assert (= (and d!1839938 c!1039219) b!5858819))

(assert (= (and d!1839938 (not c!1039219)) b!5858828))

(assert (= (and b!5858828 c!1039218) b!5858820))

(assert (= (and b!5858828 (not c!1039218)) b!5858827))

(assert (= (and b!5858827 res!2465636) b!5858821))

(assert (= (and b!5858827 c!1039220) b!5858826))

(assert (= (and b!5858827 (not c!1039220)) b!5858823))

(assert (= (and b!5858823 c!1039217) b!5858824))

(assert (= (and b!5858823 (not c!1039217)) b!5858829))

(assert (= (and b!5858829 c!1039221) b!5858822))

(assert (= (and b!5858829 (not c!1039221)) b!5858825))

(assert (= (or b!5858824 b!5858822) bm!459256))

(assert (= (or b!5858824 b!5858822) bm!459254))

(assert (= (or b!5858826 bm!459256) bm!459253))

(assert (= (or b!5858826 bm!459254) bm!459255))

(assert (= (or b!5858820 bm!459255) bm!459251))

(assert (= (or b!5858820 b!5858826) bm!459252))

(declare-fun m!6776464 () Bool)

(assert (=> b!5858821 m!6776464))

(declare-fun m!6776466 () Bool)

(assert (=> bm!459253 m!6776466))

(declare-fun m!6776468 () Bool)

(assert (=> b!5858819 m!6776468))

(declare-fun m!6776470 () Bool)

(assert (=> bm!459251 m!6776470))

(declare-fun m!6776472 () Bool)

(assert (=> bm!459252 m!6776472))

(assert (=> bm!459071 d!1839938))

(declare-fun b!5858830 () Bool)

(declare-fun res!2465638 () Bool)

(declare-fun e!3592429 () Bool)

(assert (=> b!5858830 (=> (not res!2465638) (not e!3592429))))

(declare-fun call!459262 () Bool)

(assert (=> b!5858830 (= res!2465638 (not call!459262))))

(declare-fun b!5858831 () Bool)

(declare-fun e!3592430 () Bool)

(assert (=> b!5858831 (= e!3592430 (nullable!5924 (derivativeStep!4662 r!7292 (head!12402 s!2326))))))

(declare-fun b!5858832 () Bool)

(declare-fun res!2465641 () Bool)

(declare-fun e!3592433 () Bool)

(assert (=> b!5858832 (=> res!2465641 e!3592433)))

(assert (=> b!5858832 (= res!2465641 (not (is-ElementMatch!15924 (derivativeStep!4662 r!7292 (head!12402 s!2326)))))))

(declare-fun e!3592427 () Bool)

(assert (=> b!5858832 (= e!3592427 e!3592433)))

(declare-fun b!5858833 () Bool)

(declare-fun e!3592432 () Bool)

(assert (=> b!5858833 (= e!3592432 (not (= (head!12402 (tail!11487 s!2326)) (c!1038857 (derivativeStep!4662 r!7292 (head!12402 s!2326))))))))

(declare-fun b!5858835 () Bool)

(declare-fun res!2465644 () Bool)

(assert (=> b!5858835 (=> res!2465644 e!3592432)))

(assert (=> b!5858835 (= res!2465644 (not (isEmpty!35809 (tail!11487 (tail!11487 s!2326)))))))

(declare-fun b!5858836 () Bool)

(declare-fun e!3592428 () Bool)

(assert (=> b!5858836 (= e!3592428 e!3592432)))

(declare-fun res!2465639 () Bool)

(assert (=> b!5858836 (=> res!2465639 e!3592432)))

(assert (=> b!5858836 (= res!2465639 call!459262)))

(declare-fun b!5858837 () Bool)

(assert (=> b!5858837 (= e!3592429 (= (head!12402 (tail!11487 s!2326)) (c!1038857 (derivativeStep!4662 r!7292 (head!12402 s!2326)))))))

(declare-fun b!5858838 () Bool)

(declare-fun lt!2305206 () Bool)

(assert (=> b!5858838 (= e!3592427 (not lt!2305206))))

(declare-fun b!5858839 () Bool)

(declare-fun e!3592431 () Bool)

(assert (=> b!5858839 (= e!3592431 (= lt!2305206 call!459262))))

(declare-fun b!5858840 () Bool)

(declare-fun res!2465643 () Bool)

(assert (=> b!5858840 (=> res!2465643 e!3592433)))

(assert (=> b!5858840 (= res!2465643 e!3592429)))

(declare-fun res!2465637 () Bool)

(assert (=> b!5858840 (=> (not res!2465637) (not e!3592429))))

(assert (=> b!5858840 (= res!2465637 lt!2305206)))

(declare-fun b!5858841 () Bool)

(assert (=> b!5858841 (= e!3592431 e!3592427)))

(declare-fun c!1039222 () Bool)

(assert (=> b!5858841 (= c!1039222 (is-EmptyLang!15924 (derivativeStep!4662 r!7292 (head!12402 s!2326))))))

(declare-fun b!5858842 () Bool)

(assert (=> b!5858842 (= e!3592430 (matchR!8107 (derivativeStep!4662 (derivativeStep!4662 r!7292 (head!12402 s!2326)) (head!12402 (tail!11487 s!2326))) (tail!11487 (tail!11487 s!2326))))))

(declare-fun d!1839940 () Bool)

(assert (=> d!1839940 e!3592431))

(declare-fun c!1039223 () Bool)

(assert (=> d!1839940 (= c!1039223 (is-EmptyExpr!15924 (derivativeStep!4662 r!7292 (head!12402 s!2326))))))

(assert (=> d!1839940 (= lt!2305206 e!3592430)))

(declare-fun c!1039224 () Bool)

(assert (=> d!1839940 (= c!1039224 (isEmpty!35809 (tail!11487 s!2326)))))

(assert (=> d!1839940 (validRegex!7660 (derivativeStep!4662 r!7292 (head!12402 s!2326)))))

(assert (=> d!1839940 (= (matchR!8107 (derivativeStep!4662 r!7292 (head!12402 s!2326)) (tail!11487 s!2326)) lt!2305206)))

(declare-fun b!5858834 () Bool)

(declare-fun res!2465642 () Bool)

(assert (=> b!5858834 (=> (not res!2465642) (not e!3592429))))

(assert (=> b!5858834 (= res!2465642 (isEmpty!35809 (tail!11487 (tail!11487 s!2326))))))

(declare-fun bm!459257 () Bool)

(assert (=> bm!459257 (= call!459262 (isEmpty!35809 (tail!11487 s!2326)))))

(declare-fun b!5858843 () Bool)

(assert (=> b!5858843 (= e!3592433 e!3592428)))

(declare-fun res!2465640 () Bool)

(assert (=> b!5858843 (=> (not res!2465640) (not e!3592428))))

(assert (=> b!5858843 (= res!2465640 (not lt!2305206))))

(assert (= (and d!1839940 c!1039224) b!5858831))

(assert (= (and d!1839940 (not c!1039224)) b!5858842))

(assert (= (and d!1839940 c!1039223) b!5858839))

(assert (= (and d!1839940 (not c!1039223)) b!5858841))

(assert (= (and b!5858841 c!1039222) b!5858838))

(assert (= (and b!5858841 (not c!1039222)) b!5858832))

(assert (= (and b!5858832 (not res!2465641)) b!5858840))

(assert (= (and b!5858840 res!2465637) b!5858830))

(assert (= (and b!5858830 res!2465638) b!5858834))

(assert (= (and b!5858834 res!2465642) b!5858837))

(assert (= (and b!5858840 (not res!2465643)) b!5858843))

(assert (= (and b!5858843 res!2465640) b!5858836))

(assert (= (and b!5858836 (not res!2465639)) b!5858835))

(assert (= (and b!5858835 (not res!2465644)) b!5858833))

(assert (= (or b!5858839 b!5858830 b!5858836) bm!459257))

(assert (=> bm!459257 m!6775668))

(assert (=> bm!459257 m!6775700))

(assert (=> b!5858831 m!6775854))

(declare-fun m!6776474 () Bool)

(assert (=> b!5858831 m!6776474))

(assert (=> b!5858833 m!6775668))

(assert (=> b!5858833 m!6776210))

(assert (=> b!5858842 m!6775668))

(assert (=> b!5858842 m!6776210))

(assert (=> b!5858842 m!6775854))

(assert (=> b!5858842 m!6776210))

(declare-fun m!6776476 () Bool)

(assert (=> b!5858842 m!6776476))

(assert (=> b!5858842 m!6775668))

(assert (=> b!5858842 m!6776214))

(assert (=> b!5858842 m!6776476))

(assert (=> b!5858842 m!6776214))

(declare-fun m!6776478 () Bool)

(assert (=> b!5858842 m!6776478))

(assert (=> b!5858835 m!6775668))

(assert (=> b!5858835 m!6776214))

(assert (=> b!5858835 m!6776214))

(assert (=> b!5858835 m!6776342))

(assert (=> d!1839940 m!6775668))

(assert (=> d!1839940 m!6775700))

(assert (=> d!1839940 m!6775854))

(declare-fun m!6776480 () Bool)

(assert (=> d!1839940 m!6776480))

(assert (=> b!5858837 m!6775668))

(assert (=> b!5858837 m!6776210))

(assert (=> b!5858834 m!6775668))

(assert (=> b!5858834 m!6776214))

(assert (=> b!5858834 m!6776214))

(assert (=> b!5858834 m!6776342))

(assert (=> b!5858022 d!1839940))

(declare-fun b!5858844 () Bool)

(declare-fun c!1039227 () Bool)

(assert (=> b!5858844 (= c!1039227 (is-Union!15924 r!7292))))

(declare-fun e!3592435 () Regex!15924)

(declare-fun e!3592436 () Regex!15924)

(assert (=> b!5858844 (= e!3592435 e!3592436)))

(declare-fun bm!459258 () Bool)

(declare-fun call!459265 () Regex!15924)

(declare-fun call!459263 () Regex!15924)

(assert (=> bm!459258 (= call!459265 call!459263)))

(declare-fun b!5858845 () Bool)

(declare-fun c!1039228 () Bool)

(assert (=> b!5858845 (= c!1039228 (nullable!5924 (regOne!32360 r!7292)))))

(declare-fun e!3592434 () Regex!15924)

(declare-fun e!3592437 () Regex!15924)

(assert (=> b!5858845 (= e!3592434 e!3592437)))

(declare-fun b!5858846 () Bool)

(assert (=> b!5858846 (= e!3592436 e!3592434)))

(declare-fun c!1039225 () Bool)

(assert (=> b!5858846 (= c!1039225 (is-Star!15924 r!7292))))

(declare-fun bm!459259 () Bool)

(assert (=> bm!459259 (= call!459263 (derivativeStep!4662 (ite c!1039227 (regTwo!32361 r!7292) (ite c!1039225 (reg!16253 r!7292) (regOne!32360 r!7292))) (head!12402 s!2326)))))

(declare-fun b!5858847 () Bool)

(declare-fun e!3592438 () Regex!15924)

(assert (=> b!5858847 (= e!3592438 EmptyLang!15924)))

(declare-fun b!5858848 () Bool)

(declare-fun call!459264 () Regex!15924)

(assert (=> b!5858848 (= e!3592437 (Union!15924 (Concat!24769 call!459265 (regTwo!32360 r!7292)) call!459264))))

(declare-fun b!5858850 () Bool)

(declare-fun call!459266 () Regex!15924)

(assert (=> b!5858850 (= e!3592436 (Union!15924 call!459266 call!459263))))

(declare-fun b!5858851 () Bool)

(assert (=> b!5858851 (= e!3592437 (Union!15924 (Concat!24769 call!459264 (regTwo!32360 r!7292)) EmptyLang!15924))))

(declare-fun bm!459260 () Bool)

(assert (=> bm!459260 (= call!459266 (derivativeStep!4662 (ite c!1039227 (regOne!32361 r!7292) (ite c!1039228 (regTwo!32360 r!7292) (regOne!32360 r!7292))) (head!12402 s!2326)))))

(declare-fun b!5858852 () Bool)

(assert (=> b!5858852 (= e!3592434 (Concat!24769 call!459265 r!7292))))

(declare-fun bm!459261 () Bool)

(assert (=> bm!459261 (= call!459264 call!459266)))

(declare-fun b!5858853 () Bool)

(assert (=> b!5858853 (= e!3592435 (ite (= (head!12402 s!2326) (c!1038857 r!7292)) EmptyExpr!15924 EmptyLang!15924))))

(declare-fun d!1839942 () Bool)

(declare-fun lt!2305207 () Regex!15924)

(assert (=> d!1839942 (validRegex!7660 lt!2305207)))

(assert (=> d!1839942 (= lt!2305207 e!3592438)))

(declare-fun c!1039226 () Bool)

(assert (=> d!1839942 (= c!1039226 (or (is-EmptyExpr!15924 r!7292) (is-EmptyLang!15924 r!7292)))))

(assert (=> d!1839942 (validRegex!7660 r!7292)))

(assert (=> d!1839942 (= (derivativeStep!4662 r!7292 (head!12402 s!2326)) lt!2305207)))

(declare-fun b!5858849 () Bool)

(assert (=> b!5858849 (= e!3592438 e!3592435)))

(declare-fun c!1039229 () Bool)

(assert (=> b!5858849 (= c!1039229 (is-ElementMatch!15924 r!7292))))

(assert (= (and d!1839942 c!1039226) b!5858847))

(assert (= (and d!1839942 (not c!1039226)) b!5858849))

(assert (= (and b!5858849 c!1039229) b!5858853))

(assert (= (and b!5858849 (not c!1039229)) b!5858844))

(assert (= (and b!5858844 c!1039227) b!5858850))

(assert (= (and b!5858844 (not c!1039227)) b!5858846))

(assert (= (and b!5858846 c!1039225) b!5858852))

(assert (= (and b!5858846 (not c!1039225)) b!5858845))

(assert (= (and b!5858845 c!1039228) b!5858848))

(assert (= (and b!5858845 (not c!1039228)) b!5858851))

(assert (= (or b!5858848 b!5858851) bm!459261))

(assert (= (or b!5858852 b!5858848) bm!459258))

(assert (= (or b!5858850 bm!459258) bm!459259))

(assert (= (or b!5858850 bm!459261) bm!459260))

(assert (=> b!5858845 m!6775860))

(assert (=> bm!459259 m!6775664))

(declare-fun m!6776482 () Bool)

(assert (=> bm!459259 m!6776482))

(assert (=> bm!459260 m!6775664))

(declare-fun m!6776484 () Bool)

(assert (=> bm!459260 m!6776484))

(declare-fun m!6776486 () Bool)

(assert (=> d!1839942 m!6776486))

(assert (=> d!1839942 m!6775558))

(assert (=> b!5858022 d!1839942))

(assert (=> b!5858022 d!1839768))

(assert (=> b!5858022 d!1839810))

(assert (=> d!1839652 d!1839838))

(declare-fun d!1839944 () Bool)

(assert (=> d!1839944 (= (isEmpty!35810 (exprs!5808 (h!70396 zl!343))) (is-Nil!63947 (exprs!5808 (h!70396 zl!343))))))

(assert (=> b!5857869 d!1839944))

(assert (=> b!5857757 d!1839768))

(declare-fun d!1839946 () Bool)

(assert (=> d!1839946 (= (Exists!2996 (ite c!1038974 lambda!320310 lambda!320311)) (choose!44422 (ite c!1038974 lambda!320310 lambda!320311)))))

(declare-fun bs!1380398 () Bool)

(assert (= bs!1380398 d!1839946))

(declare-fun m!6776488 () Bool)

(assert (=> bs!1380398 m!6776488))

(assert (=> bm!459080 d!1839946))

(assert (=> b!5858013 d!1839768))

(assert (=> d!1839596 d!1839838))

(declare-fun bs!1380399 () Bool)

(declare-fun d!1839948 () Bool)

(assert (= bs!1380399 (and d!1839948 d!1839614)))

(declare-fun lambda!320356 () Int)

(assert (=> bs!1380399 (= lambda!320356 lambda!320294)))

(declare-fun bs!1380400 () Bool)

(assert (= bs!1380400 (and d!1839948 d!1839616)))

(assert (=> bs!1380400 (= lambda!320356 lambda!320297)))

(declare-fun bs!1380401 () Bool)

(assert (= bs!1380401 (and d!1839948 d!1839910)))

(assert (=> bs!1380401 (= lambda!320356 lambda!320355)))

(declare-fun bs!1380402 () Bool)

(assert (= bs!1380402 (and d!1839948 d!1839612)))

(assert (=> bs!1380402 (= lambda!320356 lambda!320291)))

(declare-fun bs!1380403 () Bool)

(assert (= bs!1380403 (and d!1839948 d!1839780)))

(assert (=> bs!1380403 (= lambda!320356 lambda!320336)))

(declare-fun bs!1380404 () Bool)

(assert (= bs!1380404 (and d!1839948 d!1839908)))

(assert (=> bs!1380404 (= lambda!320356 lambda!320354)))

(declare-fun bs!1380405 () Bool)

(assert (= bs!1380405 (and d!1839948 d!1839646)))

(assert (=> bs!1380405 (= lambda!320356 lambda!320307)))

(declare-fun bs!1380406 () Bool)

(assert (= bs!1380406 (and d!1839948 d!1839836)))

(assert (=> bs!1380406 (= lambda!320356 lambda!320342)))

(declare-fun bs!1380407 () Bool)

(assert (= bs!1380407 (and d!1839948 d!1839628)))

(assert (=> bs!1380407 (= lambda!320356 lambda!320300)))

(declare-fun bs!1380408 () Bool)

(assert (= bs!1380408 (and d!1839948 d!1839650)))

(assert (=> bs!1380408 (= lambda!320356 lambda!320309)))

(assert (=> d!1839948 (= (inv!83058 setElem!39713) (forall!15011 (exprs!5808 setElem!39713) lambda!320356))))

(declare-fun bs!1380409 () Bool)

(assert (= bs!1380409 d!1839948))

(declare-fun m!6776490 () Bool)

(assert (=> bs!1380409 m!6776490))

(assert (=> setNonEmpty!39713 d!1839948))

(declare-fun d!1839950 () Bool)

(declare-fun res!2465645 () Bool)

(declare-fun e!3592439 () Bool)

(assert (=> d!1839950 (=> res!2465645 e!3592439)))

(assert (=> d!1839950 (= res!2465645 (is-Nil!63947 (exprs!5808 lt!2305051)))))

(assert (=> d!1839950 (= (forall!15011 (exprs!5808 lt!2305051) lambda!320297) e!3592439)))

(declare-fun b!5858854 () Bool)

(declare-fun e!3592440 () Bool)

(assert (=> b!5858854 (= e!3592439 e!3592440)))

(declare-fun res!2465646 () Bool)

(assert (=> b!5858854 (=> (not res!2465646) (not e!3592440))))

(assert (=> b!5858854 (= res!2465646 (dynLambda!25005 lambda!320297 (h!70395 (exprs!5808 lt!2305051))))))

(declare-fun b!5858855 () Bool)

(assert (=> b!5858855 (= e!3592440 (forall!15011 (t!377440 (exprs!5808 lt!2305051)) lambda!320297))))

(assert (= (and d!1839950 (not res!2465645)) b!5858854))

(assert (= (and b!5858854 res!2465646) b!5858855))

(declare-fun b_lambda!220507 () Bool)

(assert (=> (not b_lambda!220507) (not b!5858854)))

(declare-fun m!6776492 () Bool)

(assert (=> b!5858854 m!6776492))

(declare-fun m!6776494 () Bool)

(assert (=> b!5858855 m!6776494))

(assert (=> d!1839616 d!1839950))

(assert (=> b!5857761 d!1839768))

(declare-fun d!1839952 () Bool)

(declare-fun c!1039230 () Bool)

(assert (=> d!1839952 (= c!1039230 (isEmpty!35809 (tail!11487 (t!377442 s!2326))))))

(declare-fun e!3592441 () Bool)

(assert (=> d!1839952 (= (matchZipper!1990 (derivationStepZipper!1923 lt!2305053 (head!12402 (t!377442 s!2326))) (tail!11487 (t!377442 s!2326))) e!3592441)))

(declare-fun b!5858856 () Bool)

(assert (=> b!5858856 (= e!3592441 (nullableZipper!1763 (derivationStepZipper!1923 lt!2305053 (head!12402 (t!377442 s!2326)))))))

(declare-fun b!5858857 () Bool)

(assert (=> b!5858857 (= e!3592441 (matchZipper!1990 (derivationStepZipper!1923 (derivationStepZipper!1923 lt!2305053 (head!12402 (t!377442 s!2326))) (head!12402 (tail!11487 (t!377442 s!2326)))) (tail!11487 (tail!11487 (t!377442 s!2326)))))))

(assert (= (and d!1839952 c!1039230) b!5858856))

(assert (= (and d!1839952 (not c!1039230)) b!5858857))

(assert (=> d!1839952 m!6775680))

(assert (=> d!1839952 m!6776106))

(assert (=> b!5858856 m!6775836))

(declare-fun m!6776496 () Bool)

(assert (=> b!5858856 m!6776496))

(assert (=> b!5858857 m!6775680))

(assert (=> b!5858857 m!6776110))

(assert (=> b!5858857 m!6775836))

(assert (=> b!5858857 m!6776110))

(declare-fun m!6776498 () Bool)

(assert (=> b!5858857 m!6776498))

(assert (=> b!5858857 m!6775680))

(assert (=> b!5858857 m!6776114))

(assert (=> b!5858857 m!6776498))

(assert (=> b!5858857 m!6776114))

(declare-fun m!6776500 () Bool)

(assert (=> b!5858857 m!6776500))

(assert (=> b!5857992 d!1839952))

(declare-fun bs!1380410 () Bool)

(declare-fun d!1839954 () Bool)

(assert (= bs!1380410 (and d!1839954 d!1839750)))

(declare-fun lambda!320357 () Int)

(assert (=> bs!1380410 (= lambda!320357 lambda!320335)))

(declare-fun bs!1380411 () Bool)

(assert (= bs!1380411 (and d!1839954 d!1839846)))

(assert (=> bs!1380411 (= lambda!320357 lambda!320345)))

(declare-fun bs!1380412 () Bool)

(assert (= bs!1380412 (and d!1839954 d!1839830)))

(assert (=> bs!1380412 (= (= (head!12402 (t!377442 s!2326)) (head!12402 s!2326)) (= lambda!320357 lambda!320341))))

(declare-fun bs!1380413 () Bool)

(assert (= bs!1380413 (and d!1839954 d!1839632)))

(assert (=> bs!1380413 (= (= (head!12402 (t!377442 s!2326)) (h!70397 s!2326)) (= lambda!320357 lambda!320303))))

(declare-fun bs!1380414 () Bool)

(assert (= bs!1380414 (and d!1839954 b!5857591)))

(assert (=> bs!1380414 (= (= (head!12402 (t!377442 s!2326)) (h!70397 s!2326)) (= lambda!320357 lambda!320275))))

(assert (=> d!1839954 true))

(assert (=> d!1839954 (= (derivationStepZipper!1923 lt!2305053 (head!12402 (t!377442 s!2326))) (flatMap!1455 lt!2305053 lambda!320357))))

(declare-fun bs!1380415 () Bool)

(assert (= bs!1380415 d!1839954))

(declare-fun m!6776502 () Bool)

(assert (=> bs!1380415 m!6776502))

(assert (=> b!5857992 d!1839954))

(assert (=> b!5857992 d!1839752))

(assert (=> b!5857992 d!1839754))

(declare-fun b!5858861 () Bool)

(declare-fun e!3592442 () Bool)

(declare-fun tp!1620559 () Bool)

(declare-fun tp!1620558 () Bool)

(assert (=> b!5858861 (= e!3592442 (and tp!1620559 tp!1620558))))

(declare-fun b!5858860 () Bool)

(declare-fun tp!1620555 () Bool)

(assert (=> b!5858860 (= e!3592442 tp!1620555)))

(assert (=> b!5858096 (= tp!1620466 e!3592442)))

(declare-fun b!5858858 () Bool)

(assert (=> b!5858858 (= e!3592442 tp_is_empty!41101)))

(declare-fun b!5858859 () Bool)

(declare-fun tp!1620556 () Bool)

(declare-fun tp!1620557 () Bool)

(assert (=> b!5858859 (= e!3592442 (and tp!1620556 tp!1620557))))

(assert (= (and b!5858096 (is-ElementMatch!15924 (regOne!32360 (regTwo!32360 r!7292)))) b!5858858))

(assert (= (and b!5858096 (is-Concat!24769 (regOne!32360 (regTwo!32360 r!7292)))) b!5858859))

(assert (= (and b!5858096 (is-Star!15924 (regOne!32360 (regTwo!32360 r!7292)))) b!5858860))

(assert (= (and b!5858096 (is-Union!15924 (regOne!32360 (regTwo!32360 r!7292)))) b!5858861))

(declare-fun b!5858865 () Bool)

(declare-fun e!3592443 () Bool)

(declare-fun tp!1620564 () Bool)

(declare-fun tp!1620563 () Bool)

(assert (=> b!5858865 (= e!3592443 (and tp!1620564 tp!1620563))))

(declare-fun b!5858864 () Bool)

(declare-fun tp!1620560 () Bool)

(assert (=> b!5858864 (= e!3592443 tp!1620560)))

(assert (=> b!5858096 (= tp!1620467 e!3592443)))

(declare-fun b!5858862 () Bool)

(assert (=> b!5858862 (= e!3592443 tp_is_empty!41101)))

(declare-fun b!5858863 () Bool)

(declare-fun tp!1620561 () Bool)

(declare-fun tp!1620562 () Bool)

(assert (=> b!5858863 (= e!3592443 (and tp!1620561 tp!1620562))))

(assert (= (and b!5858096 (is-ElementMatch!15924 (regTwo!32360 (regTwo!32360 r!7292)))) b!5858862))

(assert (= (and b!5858096 (is-Concat!24769 (regTwo!32360 (regTwo!32360 r!7292)))) b!5858863))

(assert (= (and b!5858096 (is-Star!15924 (regTwo!32360 (regTwo!32360 r!7292)))) b!5858864))

(assert (= (and b!5858096 (is-Union!15924 (regTwo!32360 (regTwo!32360 r!7292)))) b!5858865))

(declare-fun b!5858867 () Bool)

(declare-fun e!3592445 () Bool)

(declare-fun tp!1620565 () Bool)

(assert (=> b!5858867 (= e!3592445 tp!1620565)))

(declare-fun b!5858866 () Bool)

(declare-fun e!3592444 () Bool)

(declare-fun tp!1620566 () Bool)

(assert (=> b!5858866 (= e!3592444 (and (inv!83058 (h!70396 (t!377441 (t!377441 zl!343)))) e!3592445 tp!1620566))))

(assert (=> b!5858089 (= tp!1620459 e!3592444)))

(assert (= b!5858866 b!5858867))

(assert (= (and b!5858089 (is-Cons!63948 (t!377441 (t!377441 zl!343)))) b!5858866))

(declare-fun m!6776504 () Bool)

(assert (=> b!5858866 m!6776504))

(declare-fun b!5858871 () Bool)

(declare-fun e!3592446 () Bool)

(declare-fun tp!1620571 () Bool)

(declare-fun tp!1620570 () Bool)

(assert (=> b!5858871 (= e!3592446 (and tp!1620571 tp!1620570))))

(declare-fun b!5858870 () Bool)

(declare-fun tp!1620567 () Bool)

(assert (=> b!5858870 (= e!3592446 tp!1620567)))

(assert (=> b!5858097 (= tp!1620465 e!3592446)))

(declare-fun b!5858868 () Bool)

(assert (=> b!5858868 (= e!3592446 tp_is_empty!41101)))

(declare-fun b!5858869 () Bool)

(declare-fun tp!1620568 () Bool)

(declare-fun tp!1620569 () Bool)

(assert (=> b!5858869 (= e!3592446 (and tp!1620568 tp!1620569))))

(assert (= (and b!5858097 (is-ElementMatch!15924 (reg!16253 (regTwo!32360 r!7292)))) b!5858868))

(assert (= (and b!5858097 (is-Concat!24769 (reg!16253 (regTwo!32360 r!7292)))) b!5858869))

(assert (= (and b!5858097 (is-Star!15924 (reg!16253 (regTwo!32360 r!7292)))) b!5858870))

(assert (= (and b!5858097 (is-Union!15924 (reg!16253 (regTwo!32360 r!7292)))) b!5858871))

(declare-fun b!5858872 () Bool)

(declare-fun e!3592447 () Bool)

(declare-fun tp!1620572 () Bool)

(declare-fun tp!1620573 () Bool)

(assert (=> b!5858872 (= e!3592447 (and tp!1620572 tp!1620573))))

(assert (=> b!5858090 (= tp!1620458 e!3592447)))

(assert (= (and b!5858090 (is-Cons!63947 (exprs!5808 (h!70396 (t!377441 zl!343))))) b!5858872))

(declare-fun b!5858876 () Bool)

(declare-fun e!3592448 () Bool)

(declare-fun tp!1620578 () Bool)

(declare-fun tp!1620577 () Bool)

(assert (=> b!5858876 (= e!3592448 (and tp!1620578 tp!1620577))))

(declare-fun b!5858875 () Bool)

(declare-fun tp!1620574 () Bool)

(assert (=> b!5858875 (= e!3592448 tp!1620574)))

(assert (=> b!5858070 (= tp!1620441 e!3592448)))

(declare-fun b!5858873 () Bool)

(assert (=> b!5858873 (= e!3592448 tp_is_empty!41101)))

(declare-fun b!5858874 () Bool)

(declare-fun tp!1620575 () Bool)

(declare-fun tp!1620576 () Bool)

(assert (=> b!5858874 (= e!3592448 (and tp!1620575 tp!1620576))))

(assert (= (and b!5858070 (is-ElementMatch!15924 (regOne!32360 (regTwo!32361 r!7292)))) b!5858873))

(assert (= (and b!5858070 (is-Concat!24769 (regOne!32360 (regTwo!32361 r!7292)))) b!5858874))

(assert (= (and b!5858070 (is-Star!15924 (regOne!32360 (regTwo!32361 r!7292)))) b!5858875))

(assert (= (and b!5858070 (is-Union!15924 (regOne!32360 (regTwo!32361 r!7292)))) b!5858876))

(declare-fun b!5858880 () Bool)

(declare-fun e!3592449 () Bool)

(declare-fun tp!1620583 () Bool)

(declare-fun tp!1620582 () Bool)

(assert (=> b!5858880 (= e!3592449 (and tp!1620583 tp!1620582))))

(declare-fun b!5858879 () Bool)

(declare-fun tp!1620579 () Bool)

(assert (=> b!5858879 (= e!3592449 tp!1620579)))

(assert (=> b!5858070 (= tp!1620442 e!3592449)))

(declare-fun b!5858877 () Bool)

(assert (=> b!5858877 (= e!3592449 tp_is_empty!41101)))

(declare-fun b!5858878 () Bool)

(declare-fun tp!1620580 () Bool)

(declare-fun tp!1620581 () Bool)

(assert (=> b!5858878 (= e!3592449 (and tp!1620580 tp!1620581))))

(assert (= (and b!5858070 (is-ElementMatch!15924 (regTwo!32360 (regTwo!32361 r!7292)))) b!5858877))

(assert (= (and b!5858070 (is-Concat!24769 (regTwo!32360 (regTwo!32361 r!7292)))) b!5858878))

(assert (= (and b!5858070 (is-Star!15924 (regTwo!32360 (regTwo!32361 r!7292)))) b!5858879))

(assert (= (and b!5858070 (is-Union!15924 (regTwo!32360 (regTwo!32361 r!7292)))) b!5858880))

(declare-fun b!5858884 () Bool)

(declare-fun e!3592450 () Bool)

(declare-fun tp!1620588 () Bool)

(declare-fun tp!1620587 () Bool)

(assert (=> b!5858884 (= e!3592450 (and tp!1620588 tp!1620587))))

(declare-fun b!5858883 () Bool)

(declare-fun tp!1620584 () Bool)

(assert (=> b!5858883 (= e!3592450 tp!1620584)))

(assert (=> b!5858098 (= tp!1620469 e!3592450)))

(declare-fun b!5858881 () Bool)

(assert (=> b!5858881 (= e!3592450 tp_is_empty!41101)))

(declare-fun b!5858882 () Bool)

(declare-fun tp!1620585 () Bool)

(declare-fun tp!1620586 () Bool)

(assert (=> b!5858882 (= e!3592450 (and tp!1620585 tp!1620586))))

(assert (= (and b!5858098 (is-ElementMatch!15924 (regOne!32361 (regTwo!32360 r!7292)))) b!5858881))

(assert (= (and b!5858098 (is-Concat!24769 (regOne!32361 (regTwo!32360 r!7292)))) b!5858882))

(assert (= (and b!5858098 (is-Star!15924 (regOne!32361 (regTwo!32360 r!7292)))) b!5858883))

(assert (= (and b!5858098 (is-Union!15924 (regOne!32361 (regTwo!32360 r!7292)))) b!5858884))

(declare-fun b!5858888 () Bool)

(declare-fun e!3592451 () Bool)

(declare-fun tp!1620593 () Bool)

(declare-fun tp!1620592 () Bool)

(assert (=> b!5858888 (= e!3592451 (and tp!1620593 tp!1620592))))

(declare-fun b!5858887 () Bool)

(declare-fun tp!1620589 () Bool)

(assert (=> b!5858887 (= e!3592451 tp!1620589)))

(assert (=> b!5858098 (= tp!1620468 e!3592451)))

(declare-fun b!5858885 () Bool)

(assert (=> b!5858885 (= e!3592451 tp_is_empty!41101)))

(declare-fun b!5858886 () Bool)

(declare-fun tp!1620590 () Bool)

(declare-fun tp!1620591 () Bool)

(assert (=> b!5858886 (= e!3592451 (and tp!1620590 tp!1620591))))

(assert (= (and b!5858098 (is-ElementMatch!15924 (regTwo!32361 (regTwo!32360 r!7292)))) b!5858885))

(assert (= (and b!5858098 (is-Concat!24769 (regTwo!32361 (regTwo!32360 r!7292)))) b!5858886))

(assert (= (and b!5858098 (is-Star!15924 (regTwo!32361 (regTwo!32360 r!7292)))) b!5858887))

(assert (= (and b!5858098 (is-Union!15924 (regTwo!32361 (regTwo!32360 r!7292)))) b!5858888))

(declare-fun b!5858889 () Bool)

(declare-fun e!3592452 () Bool)

(declare-fun tp!1620594 () Bool)

(declare-fun tp!1620595 () Bool)

(assert (=> b!5858889 (= e!3592452 (and tp!1620594 tp!1620595))))

(assert (=> b!5858077 (= tp!1620449 e!3592452)))

(assert (= (and b!5858077 (is-Cons!63947 (exprs!5808 setElem!39713))) b!5858889))

(declare-fun b!5858893 () Bool)

(declare-fun e!3592453 () Bool)

(declare-fun tp!1620600 () Bool)

(declare-fun tp!1620599 () Bool)

(assert (=> b!5858893 (= e!3592453 (and tp!1620600 tp!1620599))))

(declare-fun b!5858892 () Bool)

(declare-fun tp!1620596 () Bool)

(assert (=> b!5858892 (= e!3592453 tp!1620596)))

(assert (=> b!5858103 (= tp!1620474 e!3592453)))

(declare-fun b!5858890 () Bool)

(assert (=> b!5858890 (= e!3592453 tp_is_empty!41101)))

(declare-fun b!5858891 () Bool)

(declare-fun tp!1620597 () Bool)

(declare-fun tp!1620598 () Bool)

(assert (=> b!5858891 (= e!3592453 (and tp!1620597 tp!1620598))))

(assert (= (and b!5858103 (is-ElementMatch!15924 (h!70395 (exprs!5808 setElem!39707)))) b!5858890))

(assert (= (and b!5858103 (is-Concat!24769 (h!70395 (exprs!5808 setElem!39707)))) b!5858891))

(assert (= (and b!5858103 (is-Star!15924 (h!70395 (exprs!5808 setElem!39707)))) b!5858892))

(assert (= (and b!5858103 (is-Union!15924 (h!70395 (exprs!5808 setElem!39707)))) b!5858893))

(declare-fun b!5858894 () Bool)

(declare-fun e!3592454 () Bool)

(declare-fun tp!1620601 () Bool)

(declare-fun tp!1620602 () Bool)

(assert (=> b!5858894 (= e!3592454 (and tp!1620601 tp!1620602))))

(assert (=> b!5858103 (= tp!1620475 e!3592454)))

(assert (= (and b!5858103 (is-Cons!63947 (t!377440 (exprs!5808 setElem!39707)))) b!5858894))

(declare-fun b!5858898 () Bool)

(declare-fun e!3592455 () Bool)

(declare-fun tp!1620607 () Bool)

(declare-fun tp!1620606 () Bool)

(assert (=> b!5858898 (= e!3592455 (and tp!1620607 tp!1620606))))

(declare-fun b!5858897 () Bool)

(declare-fun tp!1620603 () Bool)

(assert (=> b!5858897 (= e!3592455 tp!1620603)))

(assert (=> b!5858104 (= tp!1620476 e!3592455)))

(declare-fun b!5858895 () Bool)

(assert (=> b!5858895 (= e!3592455 tp_is_empty!41101)))

(declare-fun b!5858896 () Bool)

(declare-fun tp!1620604 () Bool)

(declare-fun tp!1620605 () Bool)

(assert (=> b!5858896 (= e!3592455 (and tp!1620604 tp!1620605))))

(assert (= (and b!5858104 (is-ElementMatch!15924 (h!70395 (exprs!5808 (h!70396 zl!343))))) b!5858895))

(assert (= (and b!5858104 (is-Concat!24769 (h!70395 (exprs!5808 (h!70396 zl!343))))) b!5858896))

(assert (= (and b!5858104 (is-Star!15924 (h!70395 (exprs!5808 (h!70396 zl!343))))) b!5858897))

(assert (= (and b!5858104 (is-Union!15924 (h!70395 (exprs!5808 (h!70396 zl!343))))) b!5858898))

(declare-fun b!5858899 () Bool)

(declare-fun e!3592456 () Bool)

(declare-fun tp!1620608 () Bool)

(declare-fun tp!1620609 () Bool)

(assert (=> b!5858899 (= e!3592456 (and tp!1620608 tp!1620609))))

(assert (=> b!5858104 (= tp!1620477 e!3592456)))

(assert (= (and b!5858104 (is-Cons!63947 (t!377440 (exprs!5808 (h!70396 zl!343))))) b!5858899))

(declare-fun b!5858903 () Bool)

(declare-fun e!3592457 () Bool)

(declare-fun tp!1620614 () Bool)

(declare-fun tp!1620613 () Bool)

(assert (=> b!5858903 (= e!3592457 (and tp!1620614 tp!1620613))))

(declare-fun b!5858902 () Bool)

(declare-fun tp!1620610 () Bool)

(assert (=> b!5858902 (= e!3592457 tp!1620610)))

(assert (=> b!5858071 (= tp!1620440 e!3592457)))

(declare-fun b!5858900 () Bool)

(assert (=> b!5858900 (= e!3592457 tp_is_empty!41101)))

(declare-fun b!5858901 () Bool)

(declare-fun tp!1620611 () Bool)

(declare-fun tp!1620612 () Bool)

(assert (=> b!5858901 (= e!3592457 (and tp!1620611 tp!1620612))))

(assert (= (and b!5858071 (is-ElementMatch!15924 (reg!16253 (regTwo!32361 r!7292)))) b!5858900))

(assert (= (and b!5858071 (is-Concat!24769 (reg!16253 (regTwo!32361 r!7292)))) b!5858901))

(assert (= (and b!5858071 (is-Star!15924 (reg!16253 (regTwo!32361 r!7292)))) b!5858902))

(assert (= (and b!5858071 (is-Union!15924 (reg!16253 (regTwo!32361 r!7292)))) b!5858903))

(declare-fun b!5858907 () Bool)

(declare-fun e!3592458 () Bool)

(declare-fun tp!1620619 () Bool)

(declare-fun tp!1620618 () Bool)

(assert (=> b!5858907 (= e!3592458 (and tp!1620619 tp!1620618))))

(declare-fun b!5858906 () Bool)

(declare-fun tp!1620615 () Bool)

(assert (=> b!5858906 (= e!3592458 tp!1620615)))

(assert (=> b!5858072 (= tp!1620444 e!3592458)))

(declare-fun b!5858904 () Bool)

(assert (=> b!5858904 (= e!3592458 tp_is_empty!41101)))

(declare-fun b!5858905 () Bool)

(declare-fun tp!1620616 () Bool)

(declare-fun tp!1620617 () Bool)

(assert (=> b!5858905 (= e!3592458 (and tp!1620616 tp!1620617))))

(assert (= (and b!5858072 (is-ElementMatch!15924 (regOne!32361 (regTwo!32361 r!7292)))) b!5858904))

(assert (= (and b!5858072 (is-Concat!24769 (regOne!32361 (regTwo!32361 r!7292)))) b!5858905))

(assert (= (and b!5858072 (is-Star!15924 (regOne!32361 (regTwo!32361 r!7292)))) b!5858906))

(assert (= (and b!5858072 (is-Union!15924 (regOne!32361 (regTwo!32361 r!7292)))) b!5858907))

(declare-fun b!5858911 () Bool)

(declare-fun e!3592459 () Bool)

(declare-fun tp!1620624 () Bool)

(declare-fun tp!1620623 () Bool)

(assert (=> b!5858911 (= e!3592459 (and tp!1620624 tp!1620623))))

(declare-fun b!5858910 () Bool)

(declare-fun tp!1620620 () Bool)

(assert (=> b!5858910 (= e!3592459 tp!1620620)))

(assert (=> b!5858072 (= tp!1620443 e!3592459)))

(declare-fun b!5858908 () Bool)

(assert (=> b!5858908 (= e!3592459 tp_is_empty!41101)))

(declare-fun b!5858909 () Bool)

(declare-fun tp!1620621 () Bool)

(declare-fun tp!1620622 () Bool)

(assert (=> b!5858909 (= e!3592459 (and tp!1620621 tp!1620622))))

(assert (= (and b!5858072 (is-ElementMatch!15924 (regTwo!32361 (regTwo!32361 r!7292)))) b!5858908))

(assert (= (and b!5858072 (is-Concat!24769 (regTwo!32361 (regTwo!32361 r!7292)))) b!5858909))

(assert (= (and b!5858072 (is-Star!15924 (regTwo!32361 (regTwo!32361 r!7292)))) b!5858910))

(assert (= (and b!5858072 (is-Union!15924 (regTwo!32361 (regTwo!32361 r!7292)))) b!5858911))

(declare-fun b!5858915 () Bool)

(declare-fun e!3592460 () Bool)

(declare-fun tp!1620629 () Bool)

(declare-fun tp!1620628 () Bool)

(assert (=> b!5858915 (= e!3592460 (and tp!1620629 tp!1620628))))

(declare-fun b!5858914 () Bool)

(declare-fun tp!1620625 () Bool)

(assert (=> b!5858914 (= e!3592460 tp!1620625)))

(assert (=> b!5858106 (= tp!1620479 e!3592460)))

(declare-fun b!5858912 () Bool)

(assert (=> b!5858912 (= e!3592460 tp_is_empty!41101)))

(declare-fun b!5858913 () Bool)

(declare-fun tp!1620626 () Bool)

(declare-fun tp!1620627 () Bool)

(assert (=> b!5858913 (= e!3592460 (and tp!1620626 tp!1620627))))

(assert (= (and b!5858106 (is-ElementMatch!15924 (regOne!32360 (reg!16253 r!7292)))) b!5858912))

(assert (= (and b!5858106 (is-Concat!24769 (regOne!32360 (reg!16253 r!7292)))) b!5858913))

(assert (= (and b!5858106 (is-Star!15924 (regOne!32360 (reg!16253 r!7292)))) b!5858914))

(assert (= (and b!5858106 (is-Union!15924 (regOne!32360 (reg!16253 r!7292)))) b!5858915))

(declare-fun b!5858919 () Bool)

(declare-fun e!3592461 () Bool)

(declare-fun tp!1620634 () Bool)

(declare-fun tp!1620633 () Bool)

(assert (=> b!5858919 (= e!3592461 (and tp!1620634 tp!1620633))))

(declare-fun b!5858918 () Bool)

(declare-fun tp!1620630 () Bool)

(assert (=> b!5858918 (= e!3592461 tp!1620630)))

(assert (=> b!5858106 (= tp!1620480 e!3592461)))

(declare-fun b!5858916 () Bool)

(assert (=> b!5858916 (= e!3592461 tp_is_empty!41101)))

(declare-fun b!5858917 () Bool)

(declare-fun tp!1620631 () Bool)

(declare-fun tp!1620632 () Bool)

(assert (=> b!5858917 (= e!3592461 (and tp!1620631 tp!1620632))))

(assert (= (and b!5858106 (is-ElementMatch!15924 (regTwo!32360 (reg!16253 r!7292)))) b!5858916))

(assert (= (and b!5858106 (is-Concat!24769 (regTwo!32360 (reg!16253 r!7292)))) b!5858917))

(assert (= (and b!5858106 (is-Star!15924 (regTwo!32360 (reg!16253 r!7292)))) b!5858918))

(assert (= (and b!5858106 (is-Union!15924 (regTwo!32360 (reg!16253 r!7292)))) b!5858919))

(declare-fun b!5858923 () Bool)

(declare-fun e!3592462 () Bool)

(declare-fun tp!1620639 () Bool)

(declare-fun tp!1620638 () Bool)

(assert (=> b!5858923 (= e!3592462 (and tp!1620639 tp!1620638))))

(declare-fun b!5858922 () Bool)

(declare-fun tp!1620635 () Bool)

(assert (=> b!5858922 (= e!3592462 tp!1620635)))

(assert (=> b!5858092 (= tp!1620461 e!3592462)))

(declare-fun b!5858920 () Bool)

(assert (=> b!5858920 (= e!3592462 tp_is_empty!41101)))

(declare-fun b!5858921 () Bool)

(declare-fun tp!1620636 () Bool)

(declare-fun tp!1620637 () Bool)

(assert (=> b!5858921 (= e!3592462 (and tp!1620636 tp!1620637))))

(assert (= (and b!5858092 (is-ElementMatch!15924 (regOne!32360 (regOne!32360 r!7292)))) b!5858920))

(assert (= (and b!5858092 (is-Concat!24769 (regOne!32360 (regOne!32360 r!7292)))) b!5858921))

(assert (= (and b!5858092 (is-Star!15924 (regOne!32360 (regOne!32360 r!7292)))) b!5858922))

(assert (= (and b!5858092 (is-Union!15924 (regOne!32360 (regOne!32360 r!7292)))) b!5858923))

(declare-fun b!5858927 () Bool)

(declare-fun e!3592463 () Bool)

(declare-fun tp!1620644 () Bool)

(declare-fun tp!1620643 () Bool)

(assert (=> b!5858927 (= e!3592463 (and tp!1620644 tp!1620643))))

(declare-fun b!5858926 () Bool)

(declare-fun tp!1620640 () Bool)

(assert (=> b!5858926 (= e!3592463 tp!1620640)))

(assert (=> b!5858092 (= tp!1620462 e!3592463)))

(declare-fun b!5858924 () Bool)

(assert (=> b!5858924 (= e!3592463 tp_is_empty!41101)))

(declare-fun b!5858925 () Bool)

(declare-fun tp!1620641 () Bool)

(declare-fun tp!1620642 () Bool)

(assert (=> b!5858925 (= e!3592463 (and tp!1620641 tp!1620642))))

(assert (= (and b!5858092 (is-ElementMatch!15924 (regTwo!32360 (regOne!32360 r!7292)))) b!5858924))

(assert (= (and b!5858092 (is-Concat!24769 (regTwo!32360 (regOne!32360 r!7292)))) b!5858925))

(assert (= (and b!5858092 (is-Star!15924 (regTwo!32360 (regOne!32360 r!7292)))) b!5858926))

(assert (= (and b!5858092 (is-Union!15924 (regTwo!32360 (regOne!32360 r!7292)))) b!5858927))

(declare-fun b!5858931 () Bool)

(declare-fun e!3592464 () Bool)

(declare-fun tp!1620649 () Bool)

(declare-fun tp!1620648 () Bool)

(assert (=> b!5858931 (= e!3592464 (and tp!1620649 tp!1620648))))

(declare-fun b!5858930 () Bool)

(declare-fun tp!1620645 () Bool)

(assert (=> b!5858930 (= e!3592464 tp!1620645)))

(assert (=> b!5858107 (= tp!1620478 e!3592464)))

(declare-fun b!5858928 () Bool)

(assert (=> b!5858928 (= e!3592464 tp_is_empty!41101)))

(declare-fun b!5858929 () Bool)

(declare-fun tp!1620646 () Bool)

(declare-fun tp!1620647 () Bool)

(assert (=> b!5858929 (= e!3592464 (and tp!1620646 tp!1620647))))

(assert (= (and b!5858107 (is-ElementMatch!15924 (reg!16253 (reg!16253 r!7292)))) b!5858928))

(assert (= (and b!5858107 (is-Concat!24769 (reg!16253 (reg!16253 r!7292)))) b!5858929))

(assert (= (and b!5858107 (is-Star!15924 (reg!16253 (reg!16253 r!7292)))) b!5858930))

(assert (= (and b!5858107 (is-Union!15924 (reg!16253 (reg!16253 r!7292)))) b!5858931))

(declare-fun b!5858935 () Bool)

(declare-fun e!3592465 () Bool)

(declare-fun tp!1620654 () Bool)

(declare-fun tp!1620653 () Bool)

(assert (=> b!5858935 (= e!3592465 (and tp!1620654 tp!1620653))))

(declare-fun b!5858934 () Bool)

(declare-fun tp!1620650 () Bool)

(assert (=> b!5858934 (= e!3592465 tp!1620650)))

(assert (=> b!5858066 (= tp!1620436 e!3592465)))

(declare-fun b!5858932 () Bool)

(assert (=> b!5858932 (= e!3592465 tp_is_empty!41101)))

(declare-fun b!5858933 () Bool)

(declare-fun tp!1620651 () Bool)

(declare-fun tp!1620652 () Bool)

(assert (=> b!5858933 (= e!3592465 (and tp!1620651 tp!1620652))))

(assert (= (and b!5858066 (is-ElementMatch!15924 (regOne!32360 (regOne!32361 r!7292)))) b!5858932))

(assert (= (and b!5858066 (is-Concat!24769 (regOne!32360 (regOne!32361 r!7292)))) b!5858933))

(assert (= (and b!5858066 (is-Star!15924 (regOne!32360 (regOne!32361 r!7292)))) b!5858934))

(assert (= (and b!5858066 (is-Union!15924 (regOne!32360 (regOne!32361 r!7292)))) b!5858935))

(declare-fun b!5858939 () Bool)

(declare-fun e!3592466 () Bool)

(declare-fun tp!1620659 () Bool)

(declare-fun tp!1620658 () Bool)

(assert (=> b!5858939 (= e!3592466 (and tp!1620659 tp!1620658))))

(declare-fun b!5858938 () Bool)

(declare-fun tp!1620655 () Bool)

(assert (=> b!5858938 (= e!3592466 tp!1620655)))

(assert (=> b!5858066 (= tp!1620437 e!3592466)))

(declare-fun b!5858936 () Bool)

(assert (=> b!5858936 (= e!3592466 tp_is_empty!41101)))

(declare-fun b!5858937 () Bool)

(declare-fun tp!1620656 () Bool)

(declare-fun tp!1620657 () Bool)

(assert (=> b!5858937 (= e!3592466 (and tp!1620656 tp!1620657))))

(assert (= (and b!5858066 (is-ElementMatch!15924 (regTwo!32360 (regOne!32361 r!7292)))) b!5858936))

(assert (= (and b!5858066 (is-Concat!24769 (regTwo!32360 (regOne!32361 r!7292)))) b!5858937))

(assert (= (and b!5858066 (is-Star!15924 (regTwo!32360 (regOne!32361 r!7292)))) b!5858938))

(assert (= (and b!5858066 (is-Union!15924 (regTwo!32360 (regOne!32361 r!7292)))) b!5858939))

(declare-fun b!5858943 () Bool)

(declare-fun e!3592467 () Bool)

(declare-fun tp!1620664 () Bool)

(declare-fun tp!1620663 () Bool)

(assert (=> b!5858943 (= e!3592467 (and tp!1620664 tp!1620663))))

(declare-fun b!5858942 () Bool)

(declare-fun tp!1620660 () Bool)

(assert (=> b!5858942 (= e!3592467 tp!1620660)))

(assert (=> b!5858093 (= tp!1620460 e!3592467)))

(declare-fun b!5858940 () Bool)

(assert (=> b!5858940 (= e!3592467 tp_is_empty!41101)))

(declare-fun b!5858941 () Bool)

(declare-fun tp!1620661 () Bool)

(declare-fun tp!1620662 () Bool)

(assert (=> b!5858941 (= e!3592467 (and tp!1620661 tp!1620662))))

(assert (= (and b!5858093 (is-ElementMatch!15924 (reg!16253 (regOne!32360 r!7292)))) b!5858940))

(assert (= (and b!5858093 (is-Concat!24769 (reg!16253 (regOne!32360 r!7292)))) b!5858941))

(assert (= (and b!5858093 (is-Star!15924 (reg!16253 (regOne!32360 r!7292)))) b!5858942))

(assert (= (and b!5858093 (is-Union!15924 (reg!16253 (regOne!32360 r!7292)))) b!5858943))

(declare-fun b!5858947 () Bool)

(declare-fun e!3592468 () Bool)

(declare-fun tp!1620669 () Bool)

(declare-fun tp!1620668 () Bool)

(assert (=> b!5858947 (= e!3592468 (and tp!1620669 tp!1620668))))

(declare-fun b!5858946 () Bool)

(declare-fun tp!1620665 () Bool)

(assert (=> b!5858946 (= e!3592468 tp!1620665)))

(assert (=> b!5858108 (= tp!1620482 e!3592468)))

(declare-fun b!5858944 () Bool)

(assert (=> b!5858944 (= e!3592468 tp_is_empty!41101)))

(declare-fun b!5858945 () Bool)

(declare-fun tp!1620666 () Bool)

(declare-fun tp!1620667 () Bool)

(assert (=> b!5858945 (= e!3592468 (and tp!1620666 tp!1620667))))

(assert (= (and b!5858108 (is-ElementMatch!15924 (regOne!32361 (reg!16253 r!7292)))) b!5858944))

(assert (= (and b!5858108 (is-Concat!24769 (regOne!32361 (reg!16253 r!7292)))) b!5858945))

(assert (= (and b!5858108 (is-Star!15924 (regOne!32361 (reg!16253 r!7292)))) b!5858946))

(assert (= (and b!5858108 (is-Union!15924 (regOne!32361 (reg!16253 r!7292)))) b!5858947))

(declare-fun b!5858951 () Bool)

(declare-fun e!3592469 () Bool)

(declare-fun tp!1620674 () Bool)

(declare-fun tp!1620673 () Bool)

(assert (=> b!5858951 (= e!3592469 (and tp!1620674 tp!1620673))))

(declare-fun b!5858950 () Bool)

(declare-fun tp!1620670 () Bool)

(assert (=> b!5858950 (= e!3592469 tp!1620670)))

(assert (=> b!5858108 (= tp!1620481 e!3592469)))

(declare-fun b!5858948 () Bool)

(assert (=> b!5858948 (= e!3592469 tp_is_empty!41101)))

(declare-fun b!5858949 () Bool)

(declare-fun tp!1620671 () Bool)

(declare-fun tp!1620672 () Bool)

(assert (=> b!5858949 (= e!3592469 (and tp!1620671 tp!1620672))))

(assert (= (and b!5858108 (is-ElementMatch!15924 (regTwo!32361 (reg!16253 r!7292)))) b!5858948))

(assert (= (and b!5858108 (is-Concat!24769 (regTwo!32361 (reg!16253 r!7292)))) b!5858949))

(assert (= (and b!5858108 (is-Star!15924 (regTwo!32361 (reg!16253 r!7292)))) b!5858950))

(assert (= (and b!5858108 (is-Union!15924 (regTwo!32361 (reg!16253 r!7292)))) b!5858951))

(declare-fun condSetEmpty!39721 () Bool)

(assert (=> setNonEmpty!39713 (= condSetEmpty!39721 (= setRest!39713 (as set.empty (Set Context!10616))))))

(declare-fun setRes!39721 () Bool)

(assert (=> setNonEmpty!39713 (= tp!1620450 setRes!39721)))

(declare-fun setIsEmpty!39721 () Bool)

(assert (=> setIsEmpty!39721 setRes!39721))

(declare-fun e!3592470 () Bool)

(declare-fun setNonEmpty!39721 () Bool)

(declare-fun setElem!39721 () Context!10616)

(declare-fun tp!1620676 () Bool)

(assert (=> setNonEmpty!39721 (= setRes!39721 (and tp!1620676 (inv!83058 setElem!39721) e!3592470))))

(declare-fun setRest!39721 () (Set Context!10616))

(assert (=> setNonEmpty!39721 (= setRest!39713 (set.union (set.insert setElem!39721 (as set.empty (Set Context!10616))) setRest!39721))))

(declare-fun b!5858952 () Bool)

(declare-fun tp!1620675 () Bool)

(assert (=> b!5858952 (= e!3592470 tp!1620675)))

(assert (= (and setNonEmpty!39713 condSetEmpty!39721) setIsEmpty!39721))

(assert (= (and setNonEmpty!39713 (not condSetEmpty!39721)) setNonEmpty!39721))

(assert (= setNonEmpty!39721 b!5858952))

(declare-fun m!6776506 () Bool)

(assert (=> setNonEmpty!39721 m!6776506))

(declare-fun b!5858953 () Bool)

(declare-fun e!3592471 () Bool)

(declare-fun tp!1620677 () Bool)

(assert (=> b!5858953 (= e!3592471 (and tp_is_empty!41101 tp!1620677))))

(assert (=> b!5858082 (= tp!1620453 e!3592471)))

(assert (= (and b!5858082 (is-Cons!63949 (t!377442 (t!377442 s!2326)))) b!5858953))

(declare-fun b!5858957 () Bool)

(declare-fun e!3592472 () Bool)

(declare-fun tp!1620682 () Bool)

(declare-fun tp!1620681 () Bool)

(assert (=> b!5858957 (= e!3592472 (and tp!1620682 tp!1620681))))

(declare-fun b!5858956 () Bool)

(declare-fun tp!1620678 () Bool)

(assert (=> b!5858956 (= e!3592472 tp!1620678)))

(assert (=> b!5858067 (= tp!1620435 e!3592472)))

(declare-fun b!5858954 () Bool)

(assert (=> b!5858954 (= e!3592472 tp_is_empty!41101)))

(declare-fun b!5858955 () Bool)

(declare-fun tp!1620679 () Bool)

(declare-fun tp!1620680 () Bool)

(assert (=> b!5858955 (= e!3592472 (and tp!1620679 tp!1620680))))

(assert (= (and b!5858067 (is-ElementMatch!15924 (reg!16253 (regOne!32361 r!7292)))) b!5858954))

(assert (= (and b!5858067 (is-Concat!24769 (reg!16253 (regOne!32361 r!7292)))) b!5858955))

(assert (= (and b!5858067 (is-Star!15924 (reg!16253 (regOne!32361 r!7292)))) b!5858956))

(assert (= (and b!5858067 (is-Union!15924 (reg!16253 (regOne!32361 r!7292)))) b!5858957))

(declare-fun b!5858961 () Bool)

(declare-fun e!3592473 () Bool)

(declare-fun tp!1620687 () Bool)

(declare-fun tp!1620686 () Bool)

(assert (=> b!5858961 (= e!3592473 (and tp!1620687 tp!1620686))))

(declare-fun b!5858960 () Bool)

(declare-fun tp!1620683 () Bool)

(assert (=> b!5858960 (= e!3592473 tp!1620683)))

(assert (=> b!5858094 (= tp!1620464 e!3592473)))

(declare-fun b!5858958 () Bool)

(assert (=> b!5858958 (= e!3592473 tp_is_empty!41101)))

(declare-fun b!5858959 () Bool)

(declare-fun tp!1620684 () Bool)

(declare-fun tp!1620685 () Bool)

(assert (=> b!5858959 (= e!3592473 (and tp!1620684 tp!1620685))))

(assert (= (and b!5858094 (is-ElementMatch!15924 (regOne!32361 (regOne!32360 r!7292)))) b!5858958))

(assert (= (and b!5858094 (is-Concat!24769 (regOne!32361 (regOne!32360 r!7292)))) b!5858959))

(assert (= (and b!5858094 (is-Star!15924 (regOne!32361 (regOne!32360 r!7292)))) b!5858960))

(assert (= (and b!5858094 (is-Union!15924 (regOne!32361 (regOne!32360 r!7292)))) b!5858961))

(declare-fun b!5858965 () Bool)

(declare-fun e!3592474 () Bool)

(declare-fun tp!1620692 () Bool)

(declare-fun tp!1620691 () Bool)

(assert (=> b!5858965 (= e!3592474 (and tp!1620692 tp!1620691))))

(declare-fun b!5858964 () Bool)

(declare-fun tp!1620688 () Bool)

(assert (=> b!5858964 (= e!3592474 tp!1620688)))

(assert (=> b!5858094 (= tp!1620463 e!3592474)))

(declare-fun b!5858962 () Bool)

(assert (=> b!5858962 (= e!3592474 tp_is_empty!41101)))

(declare-fun b!5858963 () Bool)

(declare-fun tp!1620689 () Bool)

(declare-fun tp!1620690 () Bool)

(assert (=> b!5858963 (= e!3592474 (and tp!1620689 tp!1620690))))

(assert (= (and b!5858094 (is-ElementMatch!15924 (regTwo!32361 (regOne!32360 r!7292)))) b!5858962))

(assert (= (and b!5858094 (is-Concat!24769 (regTwo!32361 (regOne!32360 r!7292)))) b!5858963))

(assert (= (and b!5858094 (is-Star!15924 (regTwo!32361 (regOne!32360 r!7292)))) b!5858964))

(assert (= (and b!5858094 (is-Union!15924 (regTwo!32361 (regOne!32360 r!7292)))) b!5858965))

(declare-fun b!5858969 () Bool)

(declare-fun e!3592475 () Bool)

(declare-fun tp!1620697 () Bool)

(declare-fun tp!1620696 () Bool)

(assert (=> b!5858969 (= e!3592475 (and tp!1620697 tp!1620696))))

(declare-fun b!5858968 () Bool)

(declare-fun tp!1620693 () Bool)

(assert (=> b!5858968 (= e!3592475 tp!1620693)))

(assert (=> b!5858068 (= tp!1620439 e!3592475)))

(declare-fun b!5858966 () Bool)

(assert (=> b!5858966 (= e!3592475 tp_is_empty!41101)))

(declare-fun b!5858967 () Bool)

(declare-fun tp!1620694 () Bool)

(declare-fun tp!1620695 () Bool)

(assert (=> b!5858967 (= e!3592475 (and tp!1620694 tp!1620695))))

(assert (= (and b!5858068 (is-ElementMatch!15924 (regOne!32361 (regOne!32361 r!7292)))) b!5858966))

(assert (= (and b!5858068 (is-Concat!24769 (regOne!32361 (regOne!32361 r!7292)))) b!5858967))

(assert (= (and b!5858068 (is-Star!15924 (regOne!32361 (regOne!32361 r!7292)))) b!5858968))

(assert (= (and b!5858068 (is-Union!15924 (regOne!32361 (regOne!32361 r!7292)))) b!5858969))

(declare-fun b!5858973 () Bool)

(declare-fun e!3592476 () Bool)

(declare-fun tp!1620702 () Bool)

(declare-fun tp!1620701 () Bool)

(assert (=> b!5858973 (= e!3592476 (and tp!1620702 tp!1620701))))

(declare-fun b!5858972 () Bool)

(declare-fun tp!1620698 () Bool)

(assert (=> b!5858972 (= e!3592476 tp!1620698)))

(assert (=> b!5858068 (= tp!1620438 e!3592476)))

(declare-fun b!5858970 () Bool)

(assert (=> b!5858970 (= e!3592476 tp_is_empty!41101)))

(declare-fun b!5858971 () Bool)

(declare-fun tp!1620699 () Bool)

(declare-fun tp!1620700 () Bool)

(assert (=> b!5858971 (= e!3592476 (and tp!1620699 tp!1620700))))

(assert (= (and b!5858068 (is-ElementMatch!15924 (regTwo!32361 (regOne!32361 r!7292)))) b!5858970))

(assert (= (and b!5858068 (is-Concat!24769 (regTwo!32361 (regOne!32361 r!7292)))) b!5858971))

(assert (= (and b!5858068 (is-Star!15924 (regTwo!32361 (regOne!32361 r!7292)))) b!5858972))

(assert (= (and b!5858068 (is-Union!15924 (regTwo!32361 (regOne!32361 r!7292)))) b!5858973))

(declare-fun b_lambda!220509 () Bool)

(assert (= b_lambda!220495 (or b!5857591 b_lambda!220509)))

(assert (=> d!1839826 d!1839670))

(declare-fun b_lambda!220511 () Bool)

(assert (= b_lambda!220507 (or d!1839616 b_lambda!220511)))

(declare-fun bs!1380416 () Bool)

(declare-fun d!1839956 () Bool)

(assert (= bs!1380416 (and d!1839956 d!1839616)))

(assert (=> bs!1380416 (= (dynLambda!25005 lambda!320297 (h!70395 (exprs!5808 lt!2305051))) (validRegex!7660 (h!70395 (exprs!5808 lt!2305051))))))

(declare-fun m!6776508 () Bool)

(assert (=> bs!1380416 m!6776508))

(assert (=> b!5858854 d!1839956))

(declare-fun b_lambda!220513 () Bool)

(assert (= b_lambda!220493 (or d!1839614 b_lambda!220513)))

(declare-fun bs!1380417 () Bool)

(declare-fun d!1839958 () Bool)

(assert (= bs!1380417 (and d!1839958 d!1839614)))

(assert (=> bs!1380417 (= (dynLambda!25005 lambda!320294 (h!70395 lt!2305149)) (validRegex!7660 (h!70395 lt!2305149)))))

(declare-fun m!6776510 () Bool)

(assert (=> bs!1380417 m!6776510))

(assert (=> b!5858508 d!1839958))

(declare-fun b_lambda!220515 () Bool)

(assert (= b_lambda!220499 (or d!1839612 b_lambda!220515)))

(declare-fun bs!1380418 () Bool)

(declare-fun d!1839960 () Bool)

(assert (= bs!1380418 (and d!1839960 d!1839612)))

(assert (=> bs!1380418 (= (dynLambda!25005 lambda!320291 (h!70395 (unfocusZipperList!1345 zl!343))) (validRegex!7660 (h!70395 (unfocusZipperList!1345 zl!343))))))

(declare-fun m!6776512 () Bool)

(assert (=> bs!1380418 m!6776512))

(assert (=> b!5858719 d!1839960))

(declare-fun b_lambda!220517 () Bool)

(assert (= b_lambda!220497 (or d!1839650 b_lambda!220517)))

(declare-fun bs!1380419 () Bool)

(declare-fun d!1839962 () Bool)

(assert (= bs!1380419 (and d!1839962 d!1839650)))

(assert (=> bs!1380419 (= (dynLambda!25005 lambda!320309 (h!70395 (exprs!5808 (h!70396 zl!343)))) (validRegex!7660 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(declare-fun m!6776514 () Bool)

(assert (=> bs!1380419 m!6776514))

(assert (=> b!5858585 d!1839962))

(declare-fun b_lambda!220519 () Bool)

(assert (= b_lambda!220501 (or d!1839646 b_lambda!220519)))

(declare-fun bs!1380420 () Bool)

(declare-fun d!1839964 () Bool)

(assert (= bs!1380420 (and d!1839964 d!1839646)))

(assert (=> bs!1380420 (= (dynLambda!25005 lambda!320307 (h!70395 (exprs!5808 setElem!39707))) (validRegex!7660 (h!70395 (exprs!5808 setElem!39707))))))

(declare-fun m!6776516 () Bool)

(assert (=> bs!1380420 m!6776516))

(assert (=> b!5858721 d!1839964))

(declare-fun b_lambda!220521 () Bool)

(assert (= b_lambda!220503 (or b!5857591 b_lambda!220521)))

(assert (=> d!1839898 d!1839672))

(declare-fun b_lambda!220523 () Bool)

(assert (= b_lambda!220505 (or d!1839628 b_lambda!220523)))

(declare-fun bs!1380421 () Bool)

(declare-fun d!1839966 () Bool)

(assert (= bs!1380421 (and d!1839966 d!1839628)))

(assert (=> bs!1380421 (= (dynLambda!25005 lambda!320300 (h!70395 (exprs!5808 (h!70396 zl!343)))) (validRegex!7660 (h!70395 (exprs!5808 (h!70396 zl!343)))))))

(assert (=> bs!1380421 m!6776514))

(assert (=> b!5858787 d!1839966))

(push 1)

(assert (not bm!459220))

(assert (not b!5858961))

(assert (not b!5858878))

(assert (not bm!459253))

(assert (not bm!459196))

(assert (not b_lambda!220519))

(assert (not b!5858831))

(assert (not b!5858788))

(assert (not b!5858560))

(assert (not bm!459252))

(assert (not b!5858942))

(assert (not b!5858746))

(assert (not bm!459246))

(assert (not d!1839910))

(assert (not b!5858768))

(assert (not b_lambda!220513))

(assert (not b!5858947))

(assert (not b!5858863))

(assert (not b!5858931))

(assert (not b!5858671))

(assert (not b!5858918))

(assert (not bm!459241))

(assert (not b!5858925))

(assert (not bm!459226))

(assert (not bm!459225))

(assert (not d!1839884))

(assert (not b!5858967))

(assert (not b!5858464))

(assert (not b!5858946))

(assert (not b!5858968))

(assert (not d!1839814))

(assert (not b!5858867))

(assert (not b!5858837))

(assert (not b!5858949))

(assert (not b!5858897))

(assert (not b!5858673))

(assert (not b!5858964))

(assert (not b!5858592))

(assert (not bm!459176))

(assert (not b!5858821))

(assert (not bm!459234))

(assert (not b_lambda!220481))

(assert (not b!5858495))

(assert (not bm!459170))

(assert (not b!5858678))

(assert (not b!5858902))

(assert (not bm!459194))

(assert (not d!1839882))

(assert (not b!5858956))

(assert (not bm!459186))

(assert (not b!5858548))

(assert (not b!5858910))

(assert (not b!5858579))

(assert (not b!5858722))

(assert (not bm!459147))

(assert (not b!5858926))

(assert (not b!5858887))

(assert (not d!1839844))

(assert (not b!5858765))

(assert (not b!5858553))

(assert (not bm!459249))

(assert (not b!5858869))

(assert (not b!5858791))

(assert (not bm!459146))

(assert (not b!5858834))

(assert (not b!5858833))

(assert (not b!5858903))

(assert (not bm!459248))

(assert (not d!1839804))

(assert (not setNonEmpty!39719))

(assert (not b!5858745))

(assert (not b!5858816))

(assert (not b!5858582))

(assert (not d!1839898))

(assert (not b!5858865))

(assert (not bm!459260))

(assert (not b!5858529))

(assert (not setNonEmpty!39720))

(assert (not b!5858866))

(assert (not b!5858556))

(assert (not b!5858914))

(assert (not d!1839940))

(assert (not bm!459181))

(assert (not b!5858913))

(assert (not b!5858905))

(assert (not b!5858935))

(assert (not bm!459178))

(assert (not b!5858945))

(assert (not b!5858655))

(assert (not b_lambda!220515))

(assert (not b!5858532))

(assert (not bm!459177))

(assert (not b_lambda!220521))

(assert (not d!1839758))

(assert tp_is_empty!41101)

(assert (not d!1839826))

(assert (not b!5858622))

(assert (not bm!459184))

(assert (not b!5858455))

(assert (not b!5858586))

(assert (not b!5858922))

(assert (not b!5858892))

(assert (not b!5858857))

(assert (not bm!459222))

(assert (not b!5858973))

(assert (not d!1839828))

(assert (not b!5858898))

(assert (not b!5858780))

(assert (not b!5858811))

(assert (not d!1839874))

(assert (not bm!459195))

(assert (not b!5858937))

(assert (not d!1839912))

(assert (not bm!459179))

(assert (not b!5858943))

(assert (not bm!459203))

(assert (not b!5858777))

(assert (not b_lambda!220483))

(assert (not b!5858965))

(assert (not d!1839794))

(assert (not bs!1380421))

(assert (not setNonEmpty!39721))

(assert (not bm!459164))

(assert (not b_lambda!220517))

(assert (not b!5858915))

(assert (not b!5858466))

(assert (not b!5858929))

(assert (not b!5858606))

(assert (not d!1839846))

(assert (not b!5858842))

(assert (not d!1839916))

(assert (not b!5858927))

(assert (not b!5858611))

(assert (not d!1839948))

(assert (not b!5858667))

(assert (not b!5858859))

(assert (not d!1839904))

(assert (not bm!459166))

(assert (not bm!459259))

(assert (not bm!459148))

(assert (not b!5858934))

(assert (not b!5858559))

(assert (not b!5858955))

(assert (not bs!1380417))

(assert (not b!5858551))

(assert (not b!5858889))

(assert (not bm!459197))

(assert (not b!5858864))

(assert (not d!1839866))

(assert (not b!5858883))

(assert (not bm!459165))

(assert (not b!5858875))

(assert (not b!5858919))

(assert (not bs!1380420))

(assert (not b!5858951))

(assert (not d!1839888))

(assert (not b!5858930))

(assert (not b!5858669))

(assert (not b!5858670))

(assert (not d!1839802))

(assert (not b!5858510))

(assert (not bm!459173))

(assert (not b!5858520))

(assert (not b!5858906))

(assert (not b!5858923))

(assert (not b!5858880))

(assert (not d!1839854))

(assert (not bm!459257))

(assert (not b!5858517))

(assert (not bm!459172))

(assert (not bm!459239))

(assert (not b!5858856))

(assert (not b!5858959))

(assert (not bs!1380418))

(assert (not b!5858860))

(assert (not bm!459237))

(assert (not b!5858969))

(assert (not b!5858663))

(assert (not d!1839834))

(assert (not b!5858896))

(assert (not d!1839946))

(assert (not b!5858566))

(assert (not b!5858544))

(assert (not b!5858872))

(assert (not bs!1380419))

(assert (not b!5858960))

(assert (not d!1839954))

(assert (not bm!459228))

(assert (not bm!459188))

(assert (not b!5858888))

(assert (not d!1839756))

(assert (not b_lambda!220509))

(assert (not b!5858558))

(assert (not d!1839818))

(assert (not d!1839748))

(assert (not b!5858552))

(assert (not bm!459227))

(assert (not b!5858756))

(assert (not d!1839778))

(assert (not b!5858899))

(assert (not b!5858894))

(assert (not b!5858569))

(assert (not b!5858509))

(assert (not b!5858470))

(assert (not b!5858963))

(assert (not b!5858835))

(assert (not bm!459152))

(assert (not b!5858664))

(assert (not b!5858802))

(assert (not d!1839806))

(assert (not b!5858971))

(assert (not b!5858751))

(assert (not b!5858939))

(assert (not b!5858809))

(assert (not b!5858950))

(assert (not b!5858757))

(assert (not bm!459240))

(assert (not b!5858917))

(assert (not d!1839930))

(assert (not b!5858545))

(assert (not b!5858603))

(assert (not b!5858911))

(assert (not d!1839942))

(assert (not b!5858893))

(assert (not b!5858871))

(assert (not b!5858938))

(assert (not bm!459175))

(assert (not b!5858760))

(assert (not b!5858876))

(assert (not b_lambda!220523))

(assert (not bm!459192))

(assert (not b!5858874))

(assert (not b!5858572))

(assert (not b!5858725))

(assert (not b!5858467))

(assert (not b!5858758))

(assert (not bm!459180))

(assert (not bm!459160))

(assert (not b!5858909))

(assert (not bm!459207))

(assert (not d!1839830))

(assert (not bm!459154))

(assert (not b!5858861))

(assert (not bm!459159))

(assert (not b!5858473))

(assert (not b!5858879))

(assert (not b!5858712))

(assert (not b!5858953))

(assert (not bm!459223))

(assert (not b!5858972))

(assert (not b!5858750))

(assert (not d!1839780))

(assert (not b!5858720))

(assert (not d!1839914))

(assert (not bm!459217))

(assert (not bm!459187))

(assert (not b!5858952))

(assert (not d!1839816))

(assert (not d!1839848))

(assert (not b!5858901))

(assert (not b!5858870))

(assert (not b!5858941))

(assert (not b!5858665))

(assert (not bm!459182))

(assert (not b!5858884))

(assert (not bm!459232))

(assert (not d!1839870))

(assert (not b!5858845))

(assert (not d!1839750))

(assert (not bm!459235))

(assert (not d!1839886))

(assert (not b!5858747))

(assert (not bm!459218))

(assert (not b!5858891))

(assert (not bm!459201))

(assert (not bm!459251))

(assert (not d!1839952))

(assert (not d!1839824))

(assert (not bm!459153))

(assert (not b!5858907))

(assert (not d!1839836))

(assert (not b!5858749))

(assert (not b!5858656))

(assert (not b!5858855))

(assert (not b!5858573))

(assert (not b!5858933))

(assert (not bm!459202))

(assert (not d!1839880))

(assert (not b!5858595))

(assert (not b!5858957))

(assert (not d!1839908))

(assert (not b!5858546))

(assert (not b!5858642))

(assert (not b!5858484))

(assert (not b!5858882))

(assert (not bm!459250))

(assert (not b!5858921))

(assert (not bm!459183))

(assert (not bm!459185))

(assert (not bm!459242))

(assert (not b!5858541))

(assert (not b!5858814))

(assert (not bm!459158))

(assert (not d!1839890))

(assert (not bs!1380416))

(assert (not b!5858701))

(assert (not b!5858752))

(assert (not b!5858465))

(assert (not b!5858754))

(assert (not b!5858734))

(assert (not b!5858539))

(assert (not b!5858886))

(assert (not b_lambda!220511))

(assert (not b!5858631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

