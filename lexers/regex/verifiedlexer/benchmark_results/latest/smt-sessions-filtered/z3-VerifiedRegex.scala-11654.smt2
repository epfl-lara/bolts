; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!652396 () Bool)

(assert start!652396)

(declare-fun b!6727590 () Bool)

(assert (=> b!6727590 true))

(assert (=> b!6727590 true))

(declare-fun lambda!377479 () Int)

(declare-fun lambda!377478 () Int)

(assert (=> b!6727590 (not (= lambda!377479 lambda!377478))))

(assert (=> b!6727590 true))

(assert (=> b!6727590 true))

(declare-fun lambda!377480 () Int)

(assert (=> b!6727590 (not (= lambda!377480 lambda!377478))))

(assert (=> b!6727590 (not (= lambda!377480 lambda!377479))))

(assert (=> b!6727590 true))

(assert (=> b!6727590 true))

(declare-fun b!6727573 () Bool)

(assert (=> b!6727573 true))

(declare-fun b!6727567 () Bool)

(declare-fun res!2752514 () Bool)

(declare-fun e!4064500 () Bool)

(assert (=> b!6727567 (=> res!2752514 e!4064500)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33380 0))(
  ( (C!33381 (val!26392 Int)) )
))
(declare-datatypes ((Regex!16555 0))(
  ( (ElementMatch!16555 (c!1247365 C!33380)) (Concat!25400 (regOne!33622 Regex!16555) (regTwo!33622 Regex!16555)) (EmptyExpr!16555) (Star!16555 (reg!16884 Regex!16555)) (EmptyLang!16555) (Union!16555 (regOne!33623 Regex!16555) (regTwo!33623 Regex!16555)) )
))
(declare-datatypes ((List!65964 0))(
  ( (Nil!65840) (Cons!65840 (h!72288 Regex!16555) (t!379649 List!65964)) )
))
(declare-datatypes ((Context!11878 0))(
  ( (Context!11879 (exprs!6439 List!65964)) )
))
(declare-fun lt!2437420 () (InoxSet Context!11878))

(declare-datatypes ((List!65965 0))(
  ( (Nil!65841) (Cons!65841 (h!72289 C!33380) (t!379650 List!65965)) )
))
(declare-fun s!2326 () List!65965)

(declare-fun matchZipper!2541 ((InoxSet Context!11878) List!65965) Bool)

(declare-fun derivationStepZipper!2499 ((InoxSet Context!11878) C!33380) (InoxSet Context!11878))

(assert (=> b!6727567 (= res!2752514 (not (= (matchZipper!2541 lt!2437420 s!2326) (matchZipper!2541 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) (t!379650 s!2326)))))))

(declare-fun e!4064504 () Bool)

(declare-fun e!4064499 () Bool)

(declare-fun b!6727568 () Bool)

(declare-fun tp!1844651 () Bool)

(declare-datatypes ((List!65966 0))(
  ( (Nil!65842) (Cons!65842 (h!72290 Context!11878) (t!379651 List!65966)) )
))
(declare-fun zl!343 () List!65966)

(declare-fun inv!84634 (Context!11878) Bool)

(assert (=> b!6727568 (= e!4064504 (and (inv!84634 (h!72290 zl!343)) e!4064499 tp!1844651))))

(declare-fun b!6727569 () Bool)

(declare-fun e!4064496 () Bool)

(declare-fun tp!1844649 () Bool)

(declare-fun tp!1844653 () Bool)

(assert (=> b!6727569 (= e!4064496 (and tp!1844649 tp!1844653))))

(declare-fun b!6727570 () Bool)

(declare-fun res!2752508 () Bool)

(declare-fun e!4064494 () Bool)

(assert (=> b!6727570 (=> res!2752508 e!4064494)))

(declare-fun r!7292 () Regex!16555)

(get-info :version)

(assert (=> b!6727570 (= res!2752508 (or ((_ is EmptyExpr!16555) r!7292) ((_ is EmptyLang!16555) r!7292) ((_ is ElementMatch!16555) r!7292) ((_ is Union!16555) r!7292) ((_ is Concat!25400) r!7292)))))

(declare-fun b!6727571 () Bool)

(declare-fun e!4064502 () Bool)

(assert (=> b!6727571 (= e!4064502 (not e!4064494))))

(declare-fun res!2752513 () Bool)

(assert (=> b!6727571 (=> res!2752513 e!4064494)))

(assert (=> b!6727571 (= res!2752513 (not ((_ is Cons!65842) zl!343)))))

(declare-fun lt!2437415 () Bool)

(declare-fun matchRSpec!3656 (Regex!16555 List!65965) Bool)

(assert (=> b!6727571 (= lt!2437415 (matchRSpec!3656 r!7292 s!2326))))

(declare-fun matchR!8738 (Regex!16555 List!65965) Bool)

(assert (=> b!6727571 (= lt!2437415 (matchR!8738 r!7292 s!2326))))

(declare-datatypes ((Unit!159801 0))(
  ( (Unit!159802) )
))
(declare-fun lt!2437410 () Unit!159801)

(declare-fun mainMatchTheorem!3656 (Regex!16555 List!65965) Unit!159801)

(assert (=> b!6727571 (= lt!2437410 (mainMatchTheorem!3656 r!7292 s!2326))))

(declare-fun setIsEmpty!45877 () Bool)

(declare-fun setRes!45877 () Bool)

(assert (=> setIsEmpty!45877 setRes!45877))

(declare-fun b!6727572 () Bool)

(declare-fun e!4064492 () Bool)

(declare-fun tp!1844647 () Bool)

(assert (=> b!6727572 (= e!4064492 tp!1844647)))

(declare-fun setElem!45877 () Context!11878)

(declare-fun tp!1844645 () Bool)

(declare-fun setNonEmpty!45877 () Bool)

(assert (=> setNonEmpty!45877 (= setRes!45877 (and tp!1844645 (inv!84634 setElem!45877) e!4064492))))

(declare-fun z!1189 () (InoxSet Context!11878))

(declare-fun setRest!45877 () (InoxSet Context!11878))

(assert (=> setNonEmpty!45877 (= z!1189 ((_ map or) (store ((as const (Array Context!11878 Bool)) false) setElem!45877 true) setRest!45877))))

(declare-fun e!4064503 () Bool)

(declare-fun e!4064501 () Bool)

(assert (=> b!6727573 (= e!4064503 e!4064501)))

(declare-fun res!2752520 () Bool)

(assert (=> b!6727573 (=> res!2752520 e!4064501)))

(declare-fun lt!2437407 () (InoxSet Context!11878))

(declare-fun lt!2437408 () (InoxSet Context!11878))

(assert (=> b!6727573 (= res!2752520 (not (= lt!2437407 lt!2437408)))))

(declare-fun lambda!377481 () Int)

(declare-fun flatMap!2036 ((InoxSet Context!11878) Int) (InoxSet Context!11878))

(declare-fun derivationStepZipperUp!1709 (Context!11878 C!33380) (InoxSet Context!11878))

(assert (=> b!6727573 (= (flatMap!2036 z!1189 lambda!377481) (derivationStepZipperUp!1709 (h!72290 zl!343) (h!72289 s!2326)))))

(declare-fun lt!2437421 () Unit!159801)

(declare-fun lemmaFlatMapOnSingletonSet!1562 ((InoxSet Context!11878) Context!11878 Int) Unit!159801)

(assert (=> b!6727573 (= lt!2437421 (lemmaFlatMapOnSingletonSet!1562 z!1189 (h!72290 zl!343) lambda!377481))))

(declare-fun b!6727574 () Bool)

(declare-fun e!4064495 () Bool)

(assert (=> b!6727574 (= e!4064495 e!4064502)))

(declare-fun res!2752517 () Bool)

(assert (=> b!6727574 (=> (not res!2752517) (not e!4064502))))

(declare-fun lt!2437416 () Regex!16555)

(assert (=> b!6727574 (= res!2752517 (= r!7292 lt!2437416))))

(declare-fun unfocusZipper!2297 (List!65966) Regex!16555)

(assert (=> b!6727574 (= lt!2437416 (unfocusZipper!2297 zl!343))))

(declare-fun res!2752515 () Bool)

(assert (=> start!652396 (=> (not res!2752515) (not e!4064495))))

(declare-fun validRegex!8291 (Regex!16555) Bool)

(assert (=> start!652396 (= res!2752515 (validRegex!8291 r!7292))))

(assert (=> start!652396 e!4064495))

(assert (=> start!652396 e!4064496))

(declare-fun condSetEmpty!45877 () Bool)

(assert (=> start!652396 (= condSetEmpty!45877 (= z!1189 ((as const (Array Context!11878 Bool)) false)))))

(assert (=> start!652396 setRes!45877))

(assert (=> start!652396 e!4064504))

(declare-fun e!4064498 () Bool)

(assert (=> start!652396 e!4064498))

(declare-fun b!6727575 () Bool)

(declare-fun res!2752519 () Bool)

(assert (=> b!6727575 (=> res!2752519 e!4064494)))

(declare-fun isEmpty!38169 (List!65966) Bool)

(assert (=> b!6727575 (= res!2752519 (not (isEmpty!38169 (t!379651 zl!343))))))

(declare-fun b!6727576 () Bool)

(declare-fun res!2752512 () Bool)

(assert (=> b!6727576 (=> res!2752512 e!4064494)))

(declare-fun generalisedUnion!2399 (List!65964) Regex!16555)

(declare-fun unfocusZipperList!1976 (List!65966) List!65964)

(assert (=> b!6727576 (= res!2752512 (not (= r!7292 (generalisedUnion!2399 (unfocusZipperList!1976 zl!343)))))))

(declare-fun b!6727577 () Bool)

(declare-fun res!2752511 () Bool)

(assert (=> b!6727577 (=> res!2752511 e!4064494)))

(declare-fun generalisedConcat!2152 (List!65964) Regex!16555)

(assert (=> b!6727577 (= res!2752511 (not (= r!7292 (generalisedConcat!2152 (exprs!6439 (h!72290 zl!343))))))))

(declare-fun b!6727578 () Bool)

(declare-fun tp_is_empty!42363 () Bool)

(assert (=> b!6727578 (= e!4064496 tp_is_empty!42363)))

(declare-fun b!6727579 () Bool)

(assert (=> b!6727579 (= e!4064501 e!4064500)))

(declare-fun res!2752505 () Bool)

(assert (=> b!6727579 (=> res!2752505 e!4064500)))

(declare-fun lt!2437418 () List!65964)

(declare-fun derivationStepZipperDown!1783 (Regex!16555 Context!11878 C!33380) (InoxSet Context!11878))

(assert (=> b!6727579 (= res!2752505 (not (= lt!2437407 (derivationStepZipperDown!1783 (reg!16884 r!7292) (Context!11879 lt!2437418) (h!72289 s!2326)))))))

(declare-fun lt!2437413 () Context!11878)

(assert (=> b!6727579 (= (flatMap!2036 lt!2437420 lambda!377481) (derivationStepZipperUp!1709 lt!2437413 (h!72289 s!2326)))))

(declare-fun lt!2437419 () Unit!159801)

(assert (=> b!6727579 (= lt!2437419 (lemmaFlatMapOnSingletonSet!1562 lt!2437420 lt!2437413 lambda!377481))))

(declare-fun lt!2437409 () (InoxSet Context!11878))

(assert (=> b!6727579 (= lt!2437409 (derivationStepZipperUp!1709 lt!2437413 (h!72289 s!2326)))))

(assert (=> b!6727579 (= lt!2437420 (store ((as const (Array Context!11878 Bool)) false) lt!2437413 true))))

(assert (=> b!6727579 (= lt!2437413 (Context!11879 (Cons!65840 (reg!16884 r!7292) lt!2437418)))))

(assert (=> b!6727579 (= lt!2437418 (Cons!65840 r!7292 Nil!65840))))

(declare-fun b!6727580 () Bool)

(declare-fun e!4064497 () Bool)

(declare-fun lt!2437411 () Bool)

(assert (=> b!6727580 (= e!4064497 lt!2437411)))

(declare-fun b!6727581 () Bool)

(declare-fun res!2752516 () Bool)

(assert (=> b!6727581 (=> (not res!2752516) (not e!4064495))))

(declare-fun toList!10339 ((InoxSet Context!11878)) List!65966)

(assert (=> b!6727581 (= res!2752516 (= (toList!10339 z!1189) zl!343))))

(declare-fun b!6727582 () Bool)

(declare-fun tp!1844650 () Bool)

(assert (=> b!6727582 (= e!4064496 tp!1844650)))

(declare-fun b!6727583 () Bool)

(declare-fun res!2752504 () Bool)

(assert (=> b!6727583 (=> res!2752504 e!4064494)))

(assert (=> b!6727583 (= res!2752504 (not ((_ is Cons!65840) (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6727584 () Bool)

(declare-fun tp!1844648 () Bool)

(declare-fun tp!1844644 () Bool)

(assert (=> b!6727584 (= e!4064496 (and tp!1844648 tp!1844644))))

(declare-fun b!6727585 () Bool)

(declare-fun tp!1844652 () Bool)

(assert (=> b!6727585 (= e!4064499 tp!1844652)))

(declare-fun b!6727586 () Bool)

(declare-fun tp!1844646 () Bool)

(assert (=> b!6727586 (= e!4064498 (and tp_is_empty!42363 tp!1844646))))

(declare-fun b!6727587 () Bool)

(declare-fun res!2752507 () Bool)

(assert (=> b!6727587 (=> res!2752507 e!4064500)))

(assert (=> b!6727587 (= res!2752507 (or (not (= lt!2437416 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6727588 () Bool)

(declare-fun e!4064493 () Bool)

(assert (=> b!6727588 (= e!4064493 e!4064503)))

(declare-fun res!2752510 () Bool)

(assert (=> b!6727588 (=> res!2752510 e!4064503)))

(declare-fun lt!2437417 () (InoxSet Context!11878))

(assert (=> b!6727588 (= res!2752510 (not (= lt!2437417 lt!2437408)))))

(assert (=> b!6727588 (= lt!2437408 (derivationStepZipperDown!1783 r!7292 (Context!11879 Nil!65840) (h!72289 s!2326)))))

(assert (=> b!6727588 (= lt!2437417 (derivationStepZipperUp!1709 (Context!11879 (Cons!65840 r!7292 Nil!65840)) (h!72289 s!2326)))))

(assert (=> b!6727588 (= lt!2437407 (derivationStepZipper!2499 z!1189 (h!72289 s!2326)))))

(declare-fun b!6727589 () Bool)

(declare-fun res!2752509 () Bool)

(assert (=> b!6727589 (=> res!2752509 e!4064493)))

(assert (=> b!6727589 (= res!2752509 ((_ is Nil!65841) s!2326))))

(assert (=> b!6727590 (= e!4064494 e!4064493)))

(declare-fun res!2752518 () Bool)

(assert (=> b!6727590 (=> res!2752518 e!4064493)))

(assert (=> b!6727590 (= res!2752518 (not (= lt!2437415 e!4064497)))))

(declare-fun res!2752506 () Bool)

(assert (=> b!6727590 (=> res!2752506 e!4064497)))

(declare-fun isEmpty!38170 (List!65965) Bool)

(assert (=> b!6727590 (= res!2752506 (isEmpty!38170 s!2326))))

(declare-fun Exists!3623 (Int) Bool)

(assert (=> b!6727590 (= (Exists!3623 lambda!377478) (Exists!3623 lambda!377480))))

(declare-fun lt!2437414 () Unit!159801)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2150 (Regex!16555 Regex!16555 List!65965) Unit!159801)

(assert (=> b!6727590 (= lt!2437414 (lemmaExistCutMatchRandMatchRSpecEquivalent!2150 (reg!16884 r!7292) r!7292 s!2326))))

(assert (=> b!6727590 (= (Exists!3623 lambda!377478) (Exists!3623 lambda!377479))))

(declare-fun lt!2437412 () Unit!159801)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!714 (Regex!16555 List!65965) Unit!159801)

(assert (=> b!6727590 (= lt!2437412 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!714 (reg!16884 r!7292) s!2326))))

(assert (=> b!6727590 (= lt!2437411 (Exists!3623 lambda!377478))))

(declare-datatypes ((tuple2!67060 0))(
  ( (tuple2!67061 (_1!36833 List!65965) (_2!36833 List!65965)) )
))
(declare-datatypes ((Option!16442 0))(
  ( (None!16441) (Some!16441 (v!52641 tuple2!67060)) )
))
(declare-fun isDefined!13145 (Option!16442) Bool)

(declare-fun findConcatSeparation!2856 (Regex!16555 Regex!16555 List!65965 List!65965 List!65965) Option!16442)

(assert (=> b!6727590 (= lt!2437411 (isDefined!13145 (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 Nil!65841 s!2326 s!2326)))))

(declare-fun lt!2437422 () Unit!159801)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2620 (Regex!16555 Regex!16555 List!65965) Unit!159801)

(assert (=> b!6727590 (= lt!2437422 (lemmaFindConcatSeparationEquivalentToExists!2620 (reg!16884 r!7292) r!7292 s!2326))))

(declare-fun b!6727591 () Bool)

(assert (=> b!6727591 (= e!4064500 (inv!84634 lt!2437413))))

(assert (= (and start!652396 res!2752515) b!6727581))

(assert (= (and b!6727581 res!2752516) b!6727574))

(assert (= (and b!6727574 res!2752517) b!6727571))

(assert (= (and b!6727571 (not res!2752513)) b!6727575))

(assert (= (and b!6727575 (not res!2752519)) b!6727577))

(assert (= (and b!6727577 (not res!2752511)) b!6727583))

(assert (= (and b!6727583 (not res!2752504)) b!6727576))

(assert (= (and b!6727576 (not res!2752512)) b!6727570))

(assert (= (and b!6727570 (not res!2752508)) b!6727590))

(assert (= (and b!6727590 (not res!2752506)) b!6727580))

(assert (= (and b!6727590 (not res!2752518)) b!6727589))

(assert (= (and b!6727589 (not res!2752509)) b!6727588))

(assert (= (and b!6727588 (not res!2752510)) b!6727573))

(assert (= (and b!6727573 (not res!2752520)) b!6727579))

(assert (= (and b!6727579 (not res!2752505)) b!6727567))

(assert (= (and b!6727567 (not res!2752514)) b!6727587))

(assert (= (and b!6727587 (not res!2752507)) b!6727591))

(assert (= (and start!652396 ((_ is ElementMatch!16555) r!7292)) b!6727578))

(assert (= (and start!652396 ((_ is Concat!25400) r!7292)) b!6727584))

(assert (= (and start!652396 ((_ is Star!16555) r!7292)) b!6727582))

(assert (= (and start!652396 ((_ is Union!16555) r!7292)) b!6727569))

(assert (= (and start!652396 condSetEmpty!45877) setIsEmpty!45877))

(assert (= (and start!652396 (not condSetEmpty!45877)) setNonEmpty!45877))

(assert (= setNonEmpty!45877 b!6727572))

(assert (= b!6727568 b!6727585))

(assert (= (and start!652396 ((_ is Cons!65842) zl!343)) b!6727568))

(assert (= (and start!652396 ((_ is Cons!65841) s!2326)) b!6727586))

(declare-fun m!7487024 () Bool)

(assert (=> b!6727588 m!7487024))

(declare-fun m!7487026 () Bool)

(assert (=> b!6727588 m!7487026))

(declare-fun m!7487028 () Bool)

(assert (=> b!6727588 m!7487028))

(declare-fun m!7487030 () Bool)

(assert (=> b!6727590 m!7487030))

(declare-fun m!7487032 () Bool)

(assert (=> b!6727590 m!7487032))

(declare-fun m!7487034 () Bool)

(assert (=> b!6727590 m!7487034))

(declare-fun m!7487036 () Bool)

(assert (=> b!6727590 m!7487036))

(declare-fun m!7487038 () Bool)

(assert (=> b!6727590 m!7487038))

(assert (=> b!6727590 m!7487038))

(declare-fun m!7487040 () Bool)

(assert (=> b!6727590 m!7487040))

(declare-fun m!7487042 () Bool)

(assert (=> b!6727590 m!7487042))

(assert (=> b!6727590 m!7487038))

(assert (=> b!6727590 m!7487042))

(declare-fun m!7487044 () Bool)

(assert (=> b!6727590 m!7487044))

(declare-fun m!7487046 () Bool)

(assert (=> b!6727590 m!7487046))

(declare-fun m!7487048 () Bool)

(assert (=> b!6727571 m!7487048))

(declare-fun m!7487050 () Bool)

(assert (=> b!6727571 m!7487050))

(declare-fun m!7487052 () Bool)

(assert (=> b!6727571 m!7487052))

(declare-fun m!7487054 () Bool)

(assert (=> b!6727591 m!7487054))

(declare-fun m!7487056 () Bool)

(assert (=> b!6727574 m!7487056))

(declare-fun m!7487058 () Bool)

(assert (=> b!6727573 m!7487058))

(declare-fun m!7487060 () Bool)

(assert (=> b!6727573 m!7487060))

(declare-fun m!7487062 () Bool)

(assert (=> b!6727573 m!7487062))

(declare-fun m!7487064 () Bool)

(assert (=> b!6727567 m!7487064))

(declare-fun m!7487066 () Bool)

(assert (=> b!6727567 m!7487066))

(assert (=> b!6727567 m!7487066))

(declare-fun m!7487068 () Bool)

(assert (=> b!6727567 m!7487068))

(declare-fun m!7487070 () Bool)

(assert (=> b!6727579 m!7487070))

(declare-fun m!7487072 () Bool)

(assert (=> b!6727579 m!7487072))

(declare-fun m!7487074 () Bool)

(assert (=> b!6727579 m!7487074))

(declare-fun m!7487076 () Bool)

(assert (=> b!6727579 m!7487076))

(declare-fun m!7487078 () Bool)

(assert (=> b!6727579 m!7487078))

(declare-fun m!7487080 () Bool)

(assert (=> start!652396 m!7487080))

(declare-fun m!7487082 () Bool)

(assert (=> b!6727576 m!7487082))

(assert (=> b!6727576 m!7487082))

(declare-fun m!7487084 () Bool)

(assert (=> b!6727576 m!7487084))

(declare-fun m!7487086 () Bool)

(assert (=> b!6727568 m!7487086))

(declare-fun m!7487088 () Bool)

(assert (=> setNonEmpty!45877 m!7487088))

(declare-fun m!7487090 () Bool)

(assert (=> b!6727577 m!7487090))

(declare-fun m!7487092 () Bool)

(assert (=> b!6727575 m!7487092))

(declare-fun m!7487094 () Bool)

(assert (=> b!6727581 m!7487094))

(check-sat (not b!6727590) (not b!6727567) (not b!6727581) (not b!6727568) tp_is_empty!42363 (not b!6727584) (not b!6727569) (not b!6727577) (not setNonEmpty!45877) (not b!6727586) (not start!652396) (not b!6727588) (not b!6727591) (not b!6727574) (not b!6727573) (not b!6727572) (not b!6727576) (not b!6727579) (not b!6727585) (not b!6727575) (not b!6727582) (not b!6727571))
(check-sat)
(get-model)

(declare-fun d!2113907 () Bool)

(declare-fun c!1247413 () Bool)

(assert (=> d!2113907 (= c!1247413 (and ((_ is ElementMatch!16555) (reg!16884 r!7292)) (= (c!1247365 (reg!16884 r!7292)) (h!72289 s!2326))))))

(declare-fun e!4064595 () (InoxSet Context!11878))

(assert (=> d!2113907 (= (derivationStepZipperDown!1783 (reg!16884 r!7292) (Context!11879 lt!2437418) (h!72289 s!2326)) e!4064595)))

(declare-fun b!6727753 () Bool)

(declare-fun e!4064597 () (InoxSet Context!11878))

(declare-fun call!607500 () (InoxSet Context!11878))

(declare-fun call!607498 () (InoxSet Context!11878))

(assert (=> b!6727753 (= e!4064597 ((_ map or) call!607500 call!607498))))

(declare-fun call!607499 () List!65964)

(declare-fun c!1247417 () Bool)

(declare-fun bm!607492 () Bool)

(assert (=> bm!607492 (= call!607498 (derivationStepZipperDown!1783 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292))) (ite c!1247417 (Context!11879 lt!2437418) (Context!11879 call!607499)) (h!72289 s!2326)))))

(declare-fun b!6727754 () Bool)

(declare-fun c!1247414 () Bool)

(declare-fun e!4064598 () Bool)

(assert (=> b!6727754 (= c!1247414 e!4064598)))

(declare-fun res!2752582 () Bool)

(assert (=> b!6727754 (=> (not res!2752582) (not e!4064598))))

(assert (=> b!6727754 (= res!2752582 ((_ is Concat!25400) (reg!16884 r!7292)))))

(declare-fun e!4064599 () (InoxSet Context!11878))

(assert (=> b!6727754 (= e!4064597 e!4064599)))

(declare-fun call!607502 () List!65964)

(declare-fun bm!607493 () Bool)

(declare-fun c!1247415 () Bool)

(assert (=> bm!607493 (= call!607500 (derivationStepZipperDown!1783 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292))))) (ite (or c!1247417 c!1247414) (Context!11879 lt!2437418) (Context!11879 call!607502)) (h!72289 s!2326)))))

(declare-fun b!6727755 () Bool)

(declare-fun c!1247416 () Bool)

(assert (=> b!6727755 (= c!1247416 ((_ is Star!16555) (reg!16884 r!7292)))))

(declare-fun e!4064596 () (InoxSet Context!11878))

(declare-fun e!4064600 () (InoxSet Context!11878))

(assert (=> b!6727755 (= e!4064596 e!4064600)))

(declare-fun b!6727756 () Bool)

(declare-fun nullable!6542 (Regex!16555) Bool)

(assert (=> b!6727756 (= e!4064598 (nullable!6542 (regOne!33622 (reg!16884 r!7292))))))

(declare-fun bm!607494 () Bool)

(declare-fun call!607497 () (InoxSet Context!11878))

(declare-fun call!607501 () (InoxSet Context!11878))

(assert (=> bm!607494 (= call!607497 call!607501)))

(declare-fun b!6727757 () Bool)

(assert (=> b!6727757 (= e!4064599 ((_ map or) call!607498 call!607501))))

(declare-fun bm!607495 () Bool)

(assert (=> bm!607495 (= call!607502 call!607499)))

(declare-fun b!6727758 () Bool)

(assert (=> b!6727758 (= e!4064595 e!4064597)))

(assert (=> b!6727758 (= c!1247417 ((_ is Union!16555) (reg!16884 r!7292)))))

(declare-fun bm!607496 () Bool)

(assert (=> bm!607496 (= call!607501 call!607500)))

(declare-fun b!6727759 () Bool)

(assert (=> b!6727759 (= e!4064599 e!4064596)))

(assert (=> b!6727759 (= c!1247415 ((_ is Concat!25400) (reg!16884 r!7292)))))

(declare-fun bm!607497 () Bool)

(declare-fun $colon$colon!2372 (List!65964 Regex!16555) List!65964)

(assert (=> bm!607497 (= call!607499 ($colon$colon!2372 (exprs!6439 (Context!11879 lt!2437418)) (ite (or c!1247414 c!1247415) (regTwo!33622 (reg!16884 r!7292)) (reg!16884 r!7292))))))

(declare-fun b!6727760 () Bool)

(assert (=> b!6727760 (= e!4064600 call!607497)))

(declare-fun b!6727761 () Bool)

(assert (=> b!6727761 (= e!4064596 call!607497)))

(declare-fun b!6727762 () Bool)

(assert (=> b!6727762 (= e!4064595 (store ((as const (Array Context!11878 Bool)) false) (Context!11879 lt!2437418) true))))

(declare-fun b!6727763 () Bool)

(assert (=> b!6727763 (= e!4064600 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2113907 c!1247413) b!6727762))

(assert (= (and d!2113907 (not c!1247413)) b!6727758))

(assert (= (and b!6727758 c!1247417) b!6727753))

(assert (= (and b!6727758 (not c!1247417)) b!6727754))

(assert (= (and b!6727754 res!2752582) b!6727756))

(assert (= (and b!6727754 c!1247414) b!6727757))

(assert (= (and b!6727754 (not c!1247414)) b!6727759))

(assert (= (and b!6727759 c!1247415) b!6727761))

(assert (= (and b!6727759 (not c!1247415)) b!6727755))

(assert (= (and b!6727755 c!1247416) b!6727760))

(assert (= (and b!6727755 (not c!1247416)) b!6727763))

(assert (= (or b!6727761 b!6727760) bm!607495))

(assert (= (or b!6727761 b!6727760) bm!607494))

(assert (= (or b!6727757 bm!607495) bm!607497))

(assert (= (or b!6727757 bm!607494) bm!607496))

(assert (= (or b!6727753 b!6727757) bm!607492))

(assert (= (or b!6727753 bm!607496) bm!607493))

(declare-fun m!7487142 () Bool)

(assert (=> bm!607492 m!7487142))

(declare-fun m!7487144 () Bool)

(assert (=> b!6727762 m!7487144))

(declare-fun m!7487146 () Bool)

(assert (=> b!6727756 m!7487146))

(declare-fun m!7487148 () Bool)

(assert (=> bm!607497 m!7487148))

(declare-fun m!7487150 () Bool)

(assert (=> bm!607493 m!7487150))

(assert (=> b!6727579 d!2113907))

(declare-fun d!2113919 () Bool)

(declare-fun choose!50131 ((InoxSet Context!11878) Int) (InoxSet Context!11878))

(assert (=> d!2113919 (= (flatMap!2036 lt!2437420 lambda!377481) (choose!50131 lt!2437420 lambda!377481))))

(declare-fun bs!1789380 () Bool)

(assert (= bs!1789380 d!2113919))

(declare-fun m!7487152 () Bool)

(assert (=> bs!1789380 m!7487152))

(assert (=> b!6727579 d!2113919))

(declare-fun b!6727816 () Bool)

(declare-fun e!4064634 () (InoxSet Context!11878))

(assert (=> b!6727816 (= e!4064634 ((as const (Array Context!11878 Bool)) false))))

(declare-fun e!4064633 () (InoxSet Context!11878))

(declare-fun call!607526 () (InoxSet Context!11878))

(declare-fun b!6727817 () Bool)

(assert (=> b!6727817 (= e!4064633 ((_ map or) call!607526 (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 lt!2437413))) (h!72289 s!2326))))))

(declare-fun b!6727818 () Bool)

(assert (=> b!6727818 (= e!4064634 call!607526)))

(declare-fun bm!607521 () Bool)

(assert (=> bm!607521 (= call!607526 (derivationStepZipperDown!1783 (h!72288 (exprs!6439 lt!2437413)) (Context!11879 (t!379649 (exprs!6439 lt!2437413))) (h!72289 s!2326)))))

(declare-fun d!2113921 () Bool)

(declare-fun c!1247439 () Bool)

(declare-fun e!4064632 () Bool)

(assert (=> d!2113921 (= c!1247439 e!4064632)))

(declare-fun res!2752593 () Bool)

(assert (=> d!2113921 (=> (not res!2752593) (not e!4064632))))

(assert (=> d!2113921 (= res!2752593 ((_ is Cons!65840) (exprs!6439 lt!2437413)))))

(assert (=> d!2113921 (= (derivationStepZipperUp!1709 lt!2437413 (h!72289 s!2326)) e!4064633)))

(declare-fun b!6727819 () Bool)

(assert (=> b!6727819 (= e!4064633 e!4064634)))

(declare-fun c!1247440 () Bool)

(assert (=> b!6727819 (= c!1247440 ((_ is Cons!65840) (exprs!6439 lt!2437413)))))

(declare-fun b!6727820 () Bool)

(assert (=> b!6727820 (= e!4064632 (nullable!6542 (h!72288 (exprs!6439 lt!2437413))))))

(assert (= (and d!2113921 res!2752593) b!6727820))

(assert (= (and d!2113921 c!1247439) b!6727817))

(assert (= (and d!2113921 (not c!1247439)) b!6727819))

(assert (= (and b!6727819 c!1247440) b!6727818))

(assert (= (and b!6727819 (not c!1247440)) b!6727816))

(assert (= (or b!6727817 b!6727818) bm!607521))

(declare-fun m!7487166 () Bool)

(assert (=> b!6727817 m!7487166))

(declare-fun m!7487168 () Bool)

(assert (=> bm!607521 m!7487168))

(declare-fun m!7487170 () Bool)

(assert (=> b!6727820 m!7487170))

(assert (=> b!6727579 d!2113921))

(declare-fun d!2113927 () Bool)

(declare-fun dynLambda!26260 (Int Context!11878) (InoxSet Context!11878))

(assert (=> d!2113927 (= (flatMap!2036 lt!2437420 lambda!377481) (dynLambda!26260 lambda!377481 lt!2437413))))

(declare-fun lt!2437437 () Unit!159801)

(declare-fun choose!50133 ((InoxSet Context!11878) Context!11878 Int) Unit!159801)

(assert (=> d!2113927 (= lt!2437437 (choose!50133 lt!2437420 lt!2437413 lambda!377481))))

(assert (=> d!2113927 (= lt!2437420 (store ((as const (Array Context!11878 Bool)) false) lt!2437413 true))))

(assert (=> d!2113927 (= (lemmaFlatMapOnSingletonSet!1562 lt!2437420 lt!2437413 lambda!377481) lt!2437437)))

(declare-fun b_lambda!253293 () Bool)

(assert (=> (not b_lambda!253293) (not d!2113927)))

(declare-fun bs!1789383 () Bool)

(assert (= bs!1789383 d!2113927))

(assert (=> bs!1789383 m!7487078))

(declare-fun m!7487182 () Bool)

(assert (=> bs!1789383 m!7487182))

(declare-fun m!7487184 () Bool)

(assert (=> bs!1789383 m!7487184))

(assert (=> bs!1789383 m!7487074))

(assert (=> b!6727579 d!2113927))

(declare-fun bs!1789401 () Bool)

(declare-fun b!6727947 () Bool)

(assert (= bs!1789401 (and b!6727947 b!6727590)))

(declare-fun lambda!377512 () Int)

(assert (=> bs!1789401 (not (= lambda!377512 lambda!377478))))

(assert (=> bs!1789401 (= lambda!377512 lambda!377479)))

(assert (=> bs!1789401 (not (= lambda!377512 lambda!377480))))

(assert (=> b!6727947 true))

(assert (=> b!6727947 true))

(declare-fun bs!1789404 () Bool)

(declare-fun b!6727945 () Bool)

(assert (= bs!1789404 (and b!6727945 b!6727590)))

(declare-fun lambda!377515 () Int)

(assert (=> bs!1789404 (not (= lambda!377515 lambda!377478))))

(assert (=> bs!1789404 (not (= lambda!377515 lambda!377479))))

(assert (=> bs!1789404 (= (and (= (regOne!33622 r!7292) (reg!16884 r!7292)) (= (regTwo!33622 r!7292) r!7292)) (= lambda!377515 lambda!377480))))

(declare-fun bs!1789405 () Bool)

(assert (= bs!1789405 (and b!6727945 b!6727947)))

(assert (=> bs!1789405 (not (= lambda!377515 lambda!377512))))

(assert (=> b!6727945 true))

(assert (=> b!6727945 true))

(declare-fun bm!607536 () Bool)

(declare-fun c!1247484 () Bool)

(declare-fun call!607542 () Bool)

(assert (=> bm!607536 (= call!607542 (Exists!3623 (ite c!1247484 lambda!377512 lambda!377515)))))

(declare-fun b!6727938 () Bool)

(declare-fun res!2752630 () Bool)

(declare-fun e!4064706 () Bool)

(assert (=> b!6727938 (=> res!2752630 e!4064706)))

(declare-fun call!607541 () Bool)

(assert (=> b!6727938 (= res!2752630 call!607541)))

(declare-fun e!4064701 () Bool)

(assert (=> b!6727938 (= e!4064701 e!4064706)))

(declare-fun bm!607537 () Bool)

(assert (=> bm!607537 (= call!607541 (isEmpty!38170 s!2326))))

(declare-fun b!6727940 () Bool)

(declare-fun e!4064700 () Bool)

(assert (=> b!6727940 (= e!4064700 (matchRSpec!3656 (regTwo!33623 r!7292) s!2326))))

(declare-fun b!6727941 () Bool)

(declare-fun e!4064705 () Bool)

(assert (=> b!6727941 (= e!4064705 e!4064701)))

(assert (=> b!6727941 (= c!1247484 ((_ is Star!16555) r!7292))))

(declare-fun b!6727942 () Bool)

(declare-fun c!1247486 () Bool)

(assert (=> b!6727942 (= c!1247486 ((_ is ElementMatch!16555) r!7292))))

(declare-fun e!4064702 () Bool)

(declare-fun e!4064703 () Bool)

(assert (=> b!6727942 (= e!4064702 e!4064703)))

(declare-fun b!6727943 () Bool)

(declare-fun e!4064704 () Bool)

(assert (=> b!6727943 (= e!4064704 e!4064702)))

(declare-fun res!2752629 () Bool)

(assert (=> b!6727943 (= res!2752629 (not ((_ is EmptyLang!16555) r!7292)))))

(assert (=> b!6727943 (=> (not res!2752629) (not e!4064702))))

(declare-fun b!6727944 () Bool)

(assert (=> b!6727944 (= e!4064703 (= s!2326 (Cons!65841 (c!1247365 r!7292) Nil!65841)))))

(assert (=> b!6727945 (= e!4064701 call!607542)))

(declare-fun b!6727946 () Bool)

(declare-fun c!1247483 () Bool)

(assert (=> b!6727946 (= c!1247483 ((_ is Union!16555) r!7292))))

(assert (=> b!6727946 (= e!4064703 e!4064705)))

(declare-fun b!6727939 () Bool)

(assert (=> b!6727939 (= e!4064704 call!607541)))

(declare-fun d!2113933 () Bool)

(declare-fun c!1247485 () Bool)

(assert (=> d!2113933 (= c!1247485 ((_ is EmptyExpr!16555) r!7292))))

(assert (=> d!2113933 (= (matchRSpec!3656 r!7292 s!2326) e!4064704)))

(assert (=> b!6727947 (= e!4064706 call!607542)))

(declare-fun b!6727948 () Bool)

(assert (=> b!6727948 (= e!4064705 e!4064700)))

(declare-fun res!2752631 () Bool)

(assert (=> b!6727948 (= res!2752631 (matchRSpec!3656 (regOne!33623 r!7292) s!2326))))

(assert (=> b!6727948 (=> res!2752631 e!4064700)))

(assert (= (and d!2113933 c!1247485) b!6727939))

(assert (= (and d!2113933 (not c!1247485)) b!6727943))

(assert (= (and b!6727943 res!2752629) b!6727942))

(assert (= (and b!6727942 c!1247486) b!6727944))

(assert (= (and b!6727942 (not c!1247486)) b!6727946))

(assert (= (and b!6727946 c!1247483) b!6727948))

(assert (= (and b!6727946 (not c!1247483)) b!6727941))

(assert (= (and b!6727948 (not res!2752631)) b!6727940))

(assert (= (and b!6727941 c!1247484) b!6727938))

(assert (= (and b!6727941 (not c!1247484)) b!6727945))

(assert (= (and b!6727938 (not res!2752630)) b!6727947))

(assert (= (or b!6727947 b!6727945) bm!607536))

(assert (= (or b!6727939 b!6727938) bm!607537))

(declare-fun m!7487264 () Bool)

(assert (=> bm!607536 m!7487264))

(assert (=> bm!607537 m!7487034))

(declare-fun m!7487266 () Bool)

(assert (=> b!6727940 m!7487266))

(declare-fun m!7487268 () Bool)

(assert (=> b!6727948 m!7487268))

(assert (=> b!6727571 d!2113933))

(declare-fun b!6727987 () Bool)

(declare-fun res!2752663 () Bool)

(declare-fun e!4064730 () Bool)

(assert (=> b!6727987 (=> res!2752663 e!4064730)))

(assert (=> b!6727987 (= res!2752663 (not ((_ is ElementMatch!16555) r!7292)))))

(declare-fun e!4064726 () Bool)

(assert (=> b!6727987 (= e!4064726 e!4064730)))

(declare-fun b!6727988 () Bool)

(declare-fun lt!2437455 () Bool)

(assert (=> b!6727988 (= e!4064726 (not lt!2437455))))

(declare-fun b!6727989 () Bool)

(declare-fun e!4064728 () Bool)

(assert (=> b!6727989 (= e!4064730 e!4064728)))

(declare-fun res!2752659 () Bool)

(assert (=> b!6727989 (=> (not res!2752659) (not e!4064728))))

(assert (=> b!6727989 (= res!2752659 (not lt!2437455))))

(declare-fun b!6727990 () Bool)

(declare-fun res!2752662 () Bool)

(assert (=> b!6727990 (=> res!2752662 e!4064730)))

(declare-fun e!4064731 () Bool)

(assert (=> b!6727990 (= res!2752662 e!4064731)))

(declare-fun res!2752664 () Bool)

(assert (=> b!6727990 (=> (not res!2752664) (not e!4064731))))

(assert (=> b!6727990 (= res!2752664 lt!2437455)))

(declare-fun b!6727991 () Bool)

(declare-fun res!2752658 () Bool)

(assert (=> b!6727991 (=> (not res!2752658) (not e!4064731))))

(declare-fun tail!12622 (List!65965) List!65965)

(assert (=> b!6727991 (= res!2752658 (isEmpty!38170 (tail!12622 s!2326)))))

(declare-fun b!6727992 () Bool)

(declare-fun e!4064725 () Bool)

(declare-fun head!13537 (List!65965) C!33380)

(assert (=> b!6727992 (= e!4064725 (not (= (head!13537 s!2326) (c!1247365 r!7292))))))

(declare-fun b!6727993 () Bool)

(declare-fun e!4064727 () Bool)

(declare-fun call!607545 () Bool)

(assert (=> b!6727993 (= e!4064727 (= lt!2437455 call!607545))))

(declare-fun b!6727994 () Bool)

(declare-fun e!4064729 () Bool)

(assert (=> b!6727994 (= e!4064729 (nullable!6542 r!7292))))

(declare-fun b!6727995 () Bool)

(assert (=> b!6727995 (= e!4064731 (= (head!13537 s!2326) (c!1247365 r!7292)))))

(declare-fun b!6727996 () Bool)

(declare-fun res!2752661 () Bool)

(assert (=> b!6727996 (=> res!2752661 e!4064725)))

(assert (=> b!6727996 (= res!2752661 (not (isEmpty!38170 (tail!12622 s!2326))))))

(declare-fun b!6727997 () Bool)

(declare-fun res!2752660 () Bool)

(assert (=> b!6727997 (=> (not res!2752660) (not e!4064731))))

(assert (=> b!6727997 (= res!2752660 (not call!607545))))

(declare-fun b!6727998 () Bool)

(assert (=> b!6727998 (= e!4064727 e!4064726)))

(declare-fun c!1247494 () Bool)

(assert (=> b!6727998 (= c!1247494 ((_ is EmptyLang!16555) r!7292))))

(declare-fun b!6727999 () Bool)

(declare-fun derivativeStep!5227 (Regex!16555 C!33380) Regex!16555)

(assert (=> b!6727999 (= e!4064729 (matchR!8738 (derivativeStep!5227 r!7292 (head!13537 s!2326)) (tail!12622 s!2326)))))

(declare-fun b!6728000 () Bool)

(assert (=> b!6728000 (= e!4064728 e!4064725)))

(declare-fun res!2752665 () Bool)

(assert (=> b!6728000 (=> res!2752665 e!4064725)))

(assert (=> b!6728000 (= res!2752665 call!607545)))

(declare-fun bm!607540 () Bool)

(assert (=> bm!607540 (= call!607545 (isEmpty!38170 s!2326))))

(declare-fun d!2113961 () Bool)

(assert (=> d!2113961 e!4064727))

(declare-fun c!1247495 () Bool)

(assert (=> d!2113961 (= c!1247495 ((_ is EmptyExpr!16555) r!7292))))

(assert (=> d!2113961 (= lt!2437455 e!4064729)))

(declare-fun c!1247493 () Bool)

(assert (=> d!2113961 (= c!1247493 (isEmpty!38170 s!2326))))

(assert (=> d!2113961 (validRegex!8291 r!7292)))

(assert (=> d!2113961 (= (matchR!8738 r!7292 s!2326) lt!2437455)))

(assert (= (and d!2113961 c!1247493) b!6727994))

(assert (= (and d!2113961 (not c!1247493)) b!6727999))

(assert (= (and d!2113961 c!1247495) b!6727993))

(assert (= (and d!2113961 (not c!1247495)) b!6727998))

(assert (= (and b!6727998 c!1247494) b!6727988))

(assert (= (and b!6727998 (not c!1247494)) b!6727987))

(assert (= (and b!6727987 (not res!2752663)) b!6727990))

(assert (= (and b!6727990 res!2752664) b!6727997))

(assert (= (and b!6727997 res!2752660) b!6727991))

(assert (= (and b!6727991 res!2752658) b!6727995))

(assert (= (and b!6727990 (not res!2752662)) b!6727989))

(assert (= (and b!6727989 res!2752659) b!6728000))

(assert (= (and b!6728000 (not res!2752665)) b!6727996))

(assert (= (and b!6727996 (not res!2752661)) b!6727992))

(assert (= (or b!6727993 b!6728000 b!6727997) bm!607540))

(declare-fun m!7487280 () Bool)

(assert (=> b!6727992 m!7487280))

(declare-fun m!7487282 () Bool)

(assert (=> b!6727996 m!7487282))

(assert (=> b!6727996 m!7487282))

(declare-fun m!7487284 () Bool)

(assert (=> b!6727996 m!7487284))

(assert (=> b!6727991 m!7487282))

(assert (=> b!6727991 m!7487282))

(assert (=> b!6727991 m!7487284))

(assert (=> bm!607540 m!7487034))

(assert (=> d!2113961 m!7487034))

(assert (=> d!2113961 m!7487080))

(assert (=> b!6727995 m!7487280))

(assert (=> b!6727999 m!7487280))

(assert (=> b!6727999 m!7487280))

(declare-fun m!7487286 () Bool)

(assert (=> b!6727999 m!7487286))

(assert (=> b!6727999 m!7487282))

(assert (=> b!6727999 m!7487286))

(assert (=> b!6727999 m!7487282))

(declare-fun m!7487288 () Bool)

(assert (=> b!6727999 m!7487288))

(declare-fun m!7487290 () Bool)

(assert (=> b!6727994 m!7487290))

(assert (=> b!6727571 d!2113961))

(declare-fun d!2113971 () Bool)

(assert (=> d!2113971 (= (matchR!8738 r!7292 s!2326) (matchRSpec!3656 r!7292 s!2326))))

(declare-fun lt!2437467 () Unit!159801)

(declare-fun choose!50136 (Regex!16555 List!65965) Unit!159801)

(assert (=> d!2113971 (= lt!2437467 (choose!50136 r!7292 s!2326))))

(assert (=> d!2113971 (validRegex!8291 r!7292)))

(assert (=> d!2113971 (= (mainMatchTheorem!3656 r!7292 s!2326) lt!2437467)))

(declare-fun bs!1789413 () Bool)

(assert (= bs!1789413 d!2113971))

(assert (=> bs!1789413 m!7487050))

(assert (=> bs!1789413 m!7487048))

(declare-fun m!7487292 () Bool)

(assert (=> bs!1789413 m!7487292))

(assert (=> bs!1789413 m!7487080))

(assert (=> b!6727571 d!2113971))

(declare-fun d!2113973 () Bool)

(declare-fun choose!50137 (Int) Bool)

(assert (=> d!2113973 (= (Exists!3623 lambda!377479) (choose!50137 lambda!377479))))

(declare-fun bs!1789414 () Bool)

(assert (= bs!1789414 d!2113973))

(declare-fun m!7487314 () Bool)

(assert (=> bs!1789414 m!7487314))

(assert (=> b!6727590 d!2113973))

(declare-fun d!2113977 () Bool)

(assert (=> d!2113977 (= (Exists!3623 lambda!377478) (choose!50137 lambda!377478))))

(declare-fun bs!1789415 () Bool)

(assert (= bs!1789415 d!2113977))

(declare-fun m!7487316 () Bool)

(assert (=> bs!1789415 m!7487316))

(assert (=> b!6727590 d!2113977))

(declare-fun d!2113979 () Bool)

(declare-fun isEmpty!38173 (Option!16442) Bool)

(assert (=> d!2113979 (= (isDefined!13145 (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 Nil!65841 s!2326 s!2326)) (not (isEmpty!38173 (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 Nil!65841 s!2326 s!2326))))))

(declare-fun bs!1789416 () Bool)

(assert (= bs!1789416 d!2113979))

(assert (=> bs!1789416 m!7487042))

(declare-fun m!7487318 () Bool)

(assert (=> bs!1789416 m!7487318))

(assert (=> b!6727590 d!2113979))

(declare-fun bs!1789436 () Bool)

(declare-fun d!2113981 () Bool)

(assert (= bs!1789436 (and d!2113981 b!6727945)))

(declare-fun lambda!377531 () Int)

(assert (=> bs!1789436 (not (= lambda!377531 lambda!377515))))

(declare-fun bs!1789437 () Bool)

(assert (= bs!1789437 (and d!2113981 b!6727947)))

(assert (=> bs!1789437 (not (= lambda!377531 lambda!377512))))

(declare-fun bs!1789438 () Bool)

(assert (= bs!1789438 (and d!2113981 b!6727590)))

(assert (=> bs!1789438 (not (= lambda!377531 lambda!377479))))

(assert (=> bs!1789438 (= lambda!377531 lambda!377478)))

(assert (=> bs!1789438 (not (= lambda!377531 lambda!377480))))

(assert (=> d!2113981 true))

(assert (=> d!2113981 true))

(assert (=> d!2113981 true))

(declare-fun lambda!377532 () Int)

(assert (=> bs!1789436 (= (and (= (reg!16884 r!7292) (regOne!33622 r!7292)) (= r!7292 (regTwo!33622 r!7292))) (= lambda!377532 lambda!377515))))

(assert (=> bs!1789437 (not (= lambda!377532 lambda!377512))))

(assert (=> bs!1789438 (not (= lambda!377532 lambda!377479))))

(declare-fun bs!1789441 () Bool)

(assert (= bs!1789441 d!2113981))

(assert (=> bs!1789441 (not (= lambda!377532 lambda!377531))))

(assert (=> bs!1789438 (not (= lambda!377532 lambda!377478))))

(assert (=> bs!1789438 (= lambda!377532 lambda!377480)))

(assert (=> d!2113981 true))

(assert (=> d!2113981 true))

(assert (=> d!2113981 true))

(assert (=> d!2113981 (= (Exists!3623 lambda!377531) (Exists!3623 lambda!377532))))

(declare-fun lt!2437477 () Unit!159801)

(declare-fun choose!50139 (Regex!16555 Regex!16555 List!65965) Unit!159801)

(assert (=> d!2113981 (= lt!2437477 (choose!50139 (reg!16884 r!7292) r!7292 s!2326))))

(assert (=> d!2113981 (validRegex!8291 (reg!16884 r!7292))))

(assert (=> d!2113981 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2150 (reg!16884 r!7292) r!7292 s!2326) lt!2437477)))

(declare-fun m!7487352 () Bool)

(assert (=> bs!1789441 m!7487352))

(declare-fun m!7487354 () Bool)

(assert (=> bs!1789441 m!7487354))

(declare-fun m!7487356 () Bool)

(assert (=> bs!1789441 m!7487356))

(declare-fun m!7487358 () Bool)

(assert (=> bs!1789441 m!7487358))

(assert (=> b!6727590 d!2113981))

(declare-fun d!2113999 () Bool)

(assert (=> d!2113999 (= (isEmpty!38170 s!2326) ((_ is Nil!65841) s!2326))))

(assert (=> b!6727590 d!2113999))

(declare-fun d!2114001 () Bool)

(assert (=> d!2114001 (= (Exists!3623 lambda!377480) (choose!50137 lambda!377480))))

(declare-fun bs!1789442 () Bool)

(assert (= bs!1789442 d!2114001))

(declare-fun m!7487360 () Bool)

(assert (=> bs!1789442 m!7487360))

(assert (=> b!6727590 d!2114001))

(declare-fun bs!1789443 () Bool)

(declare-fun d!2114003 () Bool)

(assert (= bs!1789443 (and d!2114003 b!6727945)))

(declare-fun lambda!377537 () Int)

(assert (=> bs!1789443 (not (= lambda!377537 lambda!377515))))

(declare-fun bs!1789444 () Bool)

(assert (= bs!1789444 (and d!2114003 b!6727947)))

(assert (=> bs!1789444 (not (= lambda!377537 lambda!377512))))

(declare-fun bs!1789445 () Bool)

(assert (= bs!1789445 (and d!2114003 d!2113981)))

(assert (=> bs!1789445 (not (= lambda!377537 lambda!377532))))

(declare-fun bs!1789446 () Bool)

(assert (= bs!1789446 (and d!2114003 b!6727590)))

(assert (=> bs!1789446 (not (= lambda!377537 lambda!377479))))

(assert (=> bs!1789445 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377537 lambda!377531))))

(assert (=> bs!1789446 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377537 lambda!377478))))

(assert (=> bs!1789446 (not (= lambda!377537 lambda!377480))))

(assert (=> d!2114003 true))

(assert (=> d!2114003 true))

(declare-fun lambda!377538 () Int)

(assert (=> bs!1789443 (not (= lambda!377538 lambda!377515))))

(assert (=> bs!1789444 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377538 lambda!377512))))

(assert (=> bs!1789445 (not (= lambda!377538 lambda!377532))))

(declare-fun bs!1789447 () Bool)

(assert (= bs!1789447 d!2114003))

(assert (=> bs!1789447 (not (= lambda!377538 lambda!377537))))

(assert (=> bs!1789446 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377538 lambda!377479))))

(assert (=> bs!1789445 (not (= lambda!377538 lambda!377531))))

(assert (=> bs!1789446 (not (= lambda!377538 lambda!377478))))

(assert (=> bs!1789446 (not (= lambda!377538 lambda!377480))))

(assert (=> d!2114003 true))

(assert (=> d!2114003 true))

(assert (=> d!2114003 (= (Exists!3623 lambda!377537) (Exists!3623 lambda!377538))))

(declare-fun lt!2437480 () Unit!159801)

(declare-fun choose!50140 (Regex!16555 List!65965) Unit!159801)

(assert (=> d!2114003 (= lt!2437480 (choose!50140 (reg!16884 r!7292) s!2326))))

(assert (=> d!2114003 (validRegex!8291 (reg!16884 r!7292))))

(assert (=> d!2114003 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!714 (reg!16884 r!7292) s!2326) lt!2437480)))

(declare-fun m!7487362 () Bool)

(assert (=> bs!1789447 m!7487362))

(declare-fun m!7487364 () Bool)

(assert (=> bs!1789447 m!7487364))

(declare-fun m!7487366 () Bool)

(assert (=> bs!1789447 m!7487366))

(assert (=> bs!1789447 m!7487358))

(assert (=> b!6727590 d!2114003))

(declare-fun b!6728130 () Bool)

(declare-fun e!4064798 () Option!16442)

(assert (=> b!6728130 (= e!4064798 (Some!16441 (tuple2!67061 Nil!65841 s!2326)))))

(declare-fun b!6728131 () Bool)

(declare-fun e!4064800 () Option!16442)

(assert (=> b!6728131 (= e!4064798 e!4064800)))

(declare-fun c!1247508 () Bool)

(assert (=> b!6728131 (= c!1247508 ((_ is Nil!65841) s!2326))))

(declare-fun b!6728132 () Bool)

(declare-fun e!4064799 () Bool)

(declare-fun lt!2437488 () Option!16442)

(declare-fun ++!14711 (List!65965 List!65965) List!65965)

(declare-fun get!22904 (Option!16442) tuple2!67060)

(assert (=> b!6728132 (= e!4064799 (= (++!14711 (_1!36833 (get!22904 lt!2437488)) (_2!36833 (get!22904 lt!2437488))) s!2326))))

(declare-fun d!2114005 () Bool)

(declare-fun e!4064797 () Bool)

(assert (=> d!2114005 e!4064797))

(declare-fun res!2752720 () Bool)

(assert (=> d!2114005 (=> res!2752720 e!4064797)))

(assert (=> d!2114005 (= res!2752720 e!4064799)))

(declare-fun res!2752718 () Bool)

(assert (=> d!2114005 (=> (not res!2752718) (not e!4064799))))

(assert (=> d!2114005 (= res!2752718 (isDefined!13145 lt!2437488))))

(assert (=> d!2114005 (= lt!2437488 e!4064798)))

(declare-fun c!1247509 () Bool)

(declare-fun e!4064796 () Bool)

(assert (=> d!2114005 (= c!1247509 e!4064796)))

(declare-fun res!2752717 () Bool)

(assert (=> d!2114005 (=> (not res!2752717) (not e!4064796))))

(assert (=> d!2114005 (= res!2752717 (matchR!8738 (reg!16884 r!7292) Nil!65841))))

(assert (=> d!2114005 (validRegex!8291 (reg!16884 r!7292))))

(assert (=> d!2114005 (= (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 Nil!65841 s!2326 s!2326) lt!2437488)))

(declare-fun b!6728133 () Bool)

(assert (=> b!6728133 (= e!4064800 None!16441)))

(declare-fun b!6728134 () Bool)

(assert (=> b!6728134 (= e!4064797 (not (isDefined!13145 lt!2437488)))))

(declare-fun b!6728135 () Bool)

(assert (=> b!6728135 (= e!4064796 (matchR!8738 r!7292 s!2326))))

(declare-fun b!6728136 () Bool)

(declare-fun res!2752719 () Bool)

(assert (=> b!6728136 (=> (not res!2752719) (not e!4064799))))

(assert (=> b!6728136 (= res!2752719 (matchR!8738 (reg!16884 r!7292) (_1!36833 (get!22904 lt!2437488))))))

(declare-fun b!6728137 () Bool)

(declare-fun lt!2437487 () Unit!159801)

(declare-fun lt!2437489 () Unit!159801)

(assert (=> b!6728137 (= lt!2437487 lt!2437489)))

(assert (=> b!6728137 (= (++!14711 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (t!379650 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2684 (List!65965 C!33380 List!65965 List!65965) Unit!159801)

(assert (=> b!6728137 (= lt!2437489 (lemmaMoveElementToOtherListKeepsConcatEq!2684 Nil!65841 (h!72289 s!2326) (t!379650 s!2326) s!2326))))

(assert (=> b!6728137 (= e!4064800 (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (t!379650 s!2326) s!2326))))

(declare-fun b!6728138 () Bool)

(declare-fun res!2752721 () Bool)

(assert (=> b!6728138 (=> (not res!2752721) (not e!4064799))))

(assert (=> b!6728138 (= res!2752721 (matchR!8738 r!7292 (_2!36833 (get!22904 lt!2437488))))))

(assert (= (and d!2114005 res!2752717) b!6728135))

(assert (= (and d!2114005 c!1247509) b!6728130))

(assert (= (and d!2114005 (not c!1247509)) b!6728131))

(assert (= (and b!6728131 c!1247508) b!6728133))

(assert (= (and b!6728131 (not c!1247508)) b!6728137))

(assert (= (and d!2114005 res!2752718) b!6728136))

(assert (= (and b!6728136 res!2752719) b!6728138))

(assert (= (and b!6728138 res!2752721) b!6728132))

(assert (= (and d!2114005 (not res!2752720)) b!6728134))

(declare-fun m!7487368 () Bool)

(assert (=> b!6728136 m!7487368))

(declare-fun m!7487370 () Bool)

(assert (=> b!6728136 m!7487370))

(declare-fun m!7487372 () Bool)

(assert (=> b!6728137 m!7487372))

(assert (=> b!6728137 m!7487372))

(declare-fun m!7487374 () Bool)

(assert (=> b!6728137 m!7487374))

(declare-fun m!7487376 () Bool)

(assert (=> b!6728137 m!7487376))

(assert (=> b!6728137 m!7487372))

(declare-fun m!7487378 () Bool)

(assert (=> b!6728137 m!7487378))

(declare-fun m!7487380 () Bool)

(assert (=> b!6728134 m!7487380))

(assert (=> b!6728138 m!7487368))

(declare-fun m!7487382 () Bool)

(assert (=> b!6728138 m!7487382))

(assert (=> d!2114005 m!7487380))

(declare-fun m!7487384 () Bool)

(assert (=> d!2114005 m!7487384))

(assert (=> d!2114005 m!7487358))

(assert (=> b!6728135 m!7487050))

(assert (=> b!6728132 m!7487368))

(declare-fun m!7487386 () Bool)

(assert (=> b!6728132 m!7487386))

(assert (=> b!6727590 d!2114005))

(declare-fun bs!1789448 () Bool)

(declare-fun d!2114007 () Bool)

(assert (= bs!1789448 (and d!2114007 b!6727945)))

(declare-fun lambda!377541 () Int)

(assert (=> bs!1789448 (not (= lambda!377541 lambda!377515))))

(declare-fun bs!1789449 () Bool)

(assert (= bs!1789449 (and d!2114007 d!2114003)))

(assert (=> bs!1789449 (not (= lambda!377541 lambda!377538))))

(declare-fun bs!1789450 () Bool)

(assert (= bs!1789450 (and d!2114007 b!6727947)))

(assert (=> bs!1789450 (not (= lambda!377541 lambda!377512))))

(declare-fun bs!1789451 () Bool)

(assert (= bs!1789451 (and d!2114007 d!2113981)))

(assert (=> bs!1789451 (not (= lambda!377541 lambda!377532))))

(assert (=> bs!1789449 (= (= r!7292 (Star!16555 (reg!16884 r!7292))) (= lambda!377541 lambda!377537))))

(declare-fun bs!1789452 () Bool)

(assert (= bs!1789452 (and d!2114007 b!6727590)))

(assert (=> bs!1789452 (not (= lambda!377541 lambda!377479))))

(assert (=> bs!1789451 (= lambda!377541 lambda!377531)))

(assert (=> bs!1789452 (= lambda!377541 lambda!377478)))

(assert (=> bs!1789452 (not (= lambda!377541 lambda!377480))))

(assert (=> d!2114007 true))

(assert (=> d!2114007 true))

(assert (=> d!2114007 true))

(assert (=> d!2114007 (= (isDefined!13145 (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 Nil!65841 s!2326 s!2326)) (Exists!3623 lambda!377541))))

(declare-fun lt!2437492 () Unit!159801)

(declare-fun choose!50141 (Regex!16555 Regex!16555 List!65965) Unit!159801)

(assert (=> d!2114007 (= lt!2437492 (choose!50141 (reg!16884 r!7292) r!7292 s!2326))))

(assert (=> d!2114007 (validRegex!8291 (reg!16884 r!7292))))

(assert (=> d!2114007 (= (lemmaFindConcatSeparationEquivalentToExists!2620 (reg!16884 r!7292) r!7292 s!2326) lt!2437492)))

(declare-fun bs!1789453 () Bool)

(assert (= bs!1789453 d!2114007))

(declare-fun m!7487388 () Bool)

(assert (=> bs!1789453 m!7487388))

(assert (=> bs!1789453 m!7487358))

(declare-fun m!7487390 () Bool)

(assert (=> bs!1789453 m!7487390))

(assert (=> bs!1789453 m!7487042))

(assert (=> bs!1789453 m!7487044))

(assert (=> bs!1789453 m!7487042))

(assert (=> b!6727590 d!2114007))

(declare-fun d!2114009 () Bool)

(declare-fun c!1247510 () Bool)

(assert (=> d!2114009 (= c!1247510 (and ((_ is ElementMatch!16555) r!7292) (= (c!1247365 r!7292) (h!72289 s!2326))))))

(declare-fun e!4064803 () (InoxSet Context!11878))

(assert (=> d!2114009 (= (derivationStepZipperDown!1783 r!7292 (Context!11879 Nil!65840) (h!72289 s!2326)) e!4064803)))

(declare-fun b!6728143 () Bool)

(declare-fun e!4064805 () (InoxSet Context!11878))

(declare-fun call!607550 () (InoxSet Context!11878))

(declare-fun call!607548 () (InoxSet Context!11878))

(assert (=> b!6728143 (= e!4064805 ((_ map or) call!607550 call!607548))))

(declare-fun bm!607542 () Bool)

(declare-fun c!1247514 () Bool)

(declare-fun call!607549 () List!65964)

(assert (=> bm!607542 (= call!607548 (derivationStepZipperDown!1783 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292)) (ite c!1247514 (Context!11879 Nil!65840) (Context!11879 call!607549)) (h!72289 s!2326)))))

(declare-fun b!6728144 () Bool)

(declare-fun c!1247511 () Bool)

(declare-fun e!4064806 () Bool)

(assert (=> b!6728144 (= c!1247511 e!4064806)))

(declare-fun res!2752726 () Bool)

(assert (=> b!6728144 (=> (not res!2752726) (not e!4064806))))

(assert (=> b!6728144 (= res!2752726 ((_ is Concat!25400) r!7292))))

(declare-fun e!4064807 () (InoxSet Context!11878))

(assert (=> b!6728144 (= e!4064805 e!4064807)))

(declare-fun call!607552 () List!65964)

(declare-fun bm!607543 () Bool)

(declare-fun c!1247512 () Bool)

(assert (=> bm!607543 (= call!607550 (derivationStepZipperDown!1783 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292)))) (ite (or c!1247514 c!1247511) (Context!11879 Nil!65840) (Context!11879 call!607552)) (h!72289 s!2326)))))

(declare-fun b!6728145 () Bool)

(declare-fun c!1247513 () Bool)

(assert (=> b!6728145 (= c!1247513 ((_ is Star!16555) r!7292))))

(declare-fun e!4064804 () (InoxSet Context!11878))

(declare-fun e!4064808 () (InoxSet Context!11878))

(assert (=> b!6728145 (= e!4064804 e!4064808)))

(declare-fun b!6728146 () Bool)

(assert (=> b!6728146 (= e!4064806 (nullable!6542 (regOne!33622 r!7292)))))

(declare-fun bm!607544 () Bool)

(declare-fun call!607547 () (InoxSet Context!11878))

(declare-fun call!607551 () (InoxSet Context!11878))

(assert (=> bm!607544 (= call!607547 call!607551)))

(declare-fun b!6728147 () Bool)

(assert (=> b!6728147 (= e!4064807 ((_ map or) call!607548 call!607551))))

(declare-fun bm!607545 () Bool)

(assert (=> bm!607545 (= call!607552 call!607549)))

(declare-fun b!6728148 () Bool)

(assert (=> b!6728148 (= e!4064803 e!4064805)))

(assert (=> b!6728148 (= c!1247514 ((_ is Union!16555) r!7292))))

(declare-fun bm!607546 () Bool)

(assert (=> bm!607546 (= call!607551 call!607550)))

(declare-fun b!6728149 () Bool)

(assert (=> b!6728149 (= e!4064807 e!4064804)))

(assert (=> b!6728149 (= c!1247512 ((_ is Concat!25400) r!7292))))

(declare-fun bm!607547 () Bool)

(assert (=> bm!607547 (= call!607549 ($colon$colon!2372 (exprs!6439 (Context!11879 Nil!65840)) (ite (or c!1247511 c!1247512) (regTwo!33622 r!7292) r!7292)))))

(declare-fun b!6728150 () Bool)

(assert (=> b!6728150 (= e!4064808 call!607547)))

(declare-fun b!6728151 () Bool)

(assert (=> b!6728151 (= e!4064804 call!607547)))

(declare-fun b!6728152 () Bool)

(assert (=> b!6728152 (= e!4064803 (store ((as const (Array Context!11878 Bool)) false) (Context!11879 Nil!65840) true))))

(declare-fun b!6728153 () Bool)

(assert (=> b!6728153 (= e!4064808 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2114009 c!1247510) b!6728152))

(assert (= (and d!2114009 (not c!1247510)) b!6728148))

(assert (= (and b!6728148 c!1247514) b!6728143))

(assert (= (and b!6728148 (not c!1247514)) b!6728144))

(assert (= (and b!6728144 res!2752726) b!6728146))

(assert (= (and b!6728144 c!1247511) b!6728147))

(assert (= (and b!6728144 (not c!1247511)) b!6728149))

(assert (= (and b!6728149 c!1247512) b!6728151))

(assert (= (and b!6728149 (not c!1247512)) b!6728145))

(assert (= (and b!6728145 c!1247513) b!6728150))

(assert (= (and b!6728145 (not c!1247513)) b!6728153))

(assert (= (or b!6728151 b!6728150) bm!607545))

(assert (= (or b!6728151 b!6728150) bm!607544))

(assert (= (or b!6728147 bm!607545) bm!607547))

(assert (= (or b!6728147 bm!607544) bm!607546))

(assert (= (or b!6728143 b!6728147) bm!607542))

(assert (= (or b!6728143 bm!607546) bm!607543))

(declare-fun m!7487392 () Bool)

(assert (=> bm!607542 m!7487392))

(declare-fun m!7487394 () Bool)

(assert (=> b!6728152 m!7487394))

(declare-fun m!7487396 () Bool)

(assert (=> b!6728146 m!7487396))

(declare-fun m!7487398 () Bool)

(assert (=> bm!607547 m!7487398))

(declare-fun m!7487400 () Bool)

(assert (=> bm!607543 m!7487400))

(assert (=> b!6727588 d!2114009))

(declare-fun b!6728154 () Bool)

(declare-fun e!4064811 () (InoxSet Context!11878))

(assert (=> b!6728154 (= e!4064811 ((as const (Array Context!11878 Bool)) false))))

(declare-fun e!4064810 () (InoxSet Context!11878))

(declare-fun call!607553 () (InoxSet Context!11878))

(declare-fun b!6728155 () Bool)

(assert (=> b!6728155 (= e!4064810 ((_ map or) call!607553 (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (h!72289 s!2326))))))

(declare-fun b!6728156 () Bool)

(assert (=> b!6728156 (= e!4064811 call!607553)))

(declare-fun bm!607548 () Bool)

(assert (=> bm!607548 (= call!607553 (derivationStepZipperDown!1783 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))) (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (h!72289 s!2326)))))

(declare-fun d!2114011 () Bool)

(declare-fun c!1247515 () Bool)

(declare-fun e!4064809 () Bool)

(assert (=> d!2114011 (= c!1247515 e!4064809)))

(declare-fun res!2752727 () Bool)

(assert (=> d!2114011 (=> (not res!2752727) (not e!4064809))))

(assert (=> d!2114011 (= res!2752727 ((_ is Cons!65840) (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))))

(assert (=> d!2114011 (= (derivationStepZipperUp!1709 (Context!11879 (Cons!65840 r!7292 Nil!65840)) (h!72289 s!2326)) e!4064810)))

(declare-fun b!6728157 () Bool)

(assert (=> b!6728157 (= e!4064810 e!4064811)))

(declare-fun c!1247516 () Bool)

(assert (=> b!6728157 (= c!1247516 ((_ is Cons!65840) (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))))

(declare-fun b!6728158 () Bool)

(assert (=> b!6728158 (= e!4064809 (nullable!6542 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))))

(assert (= (and d!2114011 res!2752727) b!6728158))

(assert (= (and d!2114011 c!1247515) b!6728155))

(assert (= (and d!2114011 (not c!1247515)) b!6728157))

(assert (= (and b!6728157 c!1247516) b!6728156))

(assert (= (and b!6728157 (not c!1247516)) b!6728154))

(assert (= (or b!6728155 b!6728156) bm!607548))

(declare-fun m!7487402 () Bool)

(assert (=> b!6728155 m!7487402))

(declare-fun m!7487404 () Bool)

(assert (=> bm!607548 m!7487404))

(declare-fun m!7487406 () Bool)

(assert (=> b!6728158 m!7487406))

(assert (=> b!6727588 d!2114011))

(declare-fun bs!1789454 () Bool)

(declare-fun d!2114013 () Bool)

(assert (= bs!1789454 (and d!2114013 b!6727573)))

(declare-fun lambda!377544 () Int)

(assert (=> bs!1789454 (= lambda!377544 lambda!377481)))

(assert (=> d!2114013 true))

(assert (=> d!2114013 (= (derivationStepZipper!2499 z!1189 (h!72289 s!2326)) (flatMap!2036 z!1189 lambda!377544))))

(declare-fun bs!1789455 () Bool)

(assert (= bs!1789455 d!2114013))

(declare-fun m!7487408 () Bool)

(assert (=> bs!1789455 m!7487408))

(assert (=> b!6727588 d!2114013))

(declare-fun d!2114015 () Bool)

(declare-fun e!4064829 () Bool)

(assert (=> d!2114015 e!4064829))

(declare-fun res!2752732 () Bool)

(assert (=> d!2114015 (=> (not res!2752732) (not e!4064829))))

(declare-fun lt!2437495 () Regex!16555)

(assert (=> d!2114015 (= res!2752732 (validRegex!8291 lt!2437495))))

(declare-fun e!4064825 () Regex!16555)

(assert (=> d!2114015 (= lt!2437495 e!4064825)))

(declare-fun c!1247527 () Bool)

(declare-fun e!4064824 () Bool)

(assert (=> d!2114015 (= c!1247527 e!4064824)))

(declare-fun res!2752733 () Bool)

(assert (=> d!2114015 (=> (not res!2752733) (not e!4064824))))

(assert (=> d!2114015 (= res!2752733 ((_ is Cons!65840) (unfocusZipperList!1976 zl!343)))))

(declare-fun lambda!377547 () Int)

(declare-fun forall!15755 (List!65964 Int) Bool)

(assert (=> d!2114015 (forall!15755 (unfocusZipperList!1976 zl!343) lambda!377547)))

(assert (=> d!2114015 (= (generalisedUnion!2399 (unfocusZipperList!1976 zl!343)) lt!2437495)))

(declare-fun b!6728181 () Bool)

(declare-fun e!4064828 () Regex!16555)

(assert (=> b!6728181 (= e!4064828 EmptyLang!16555)))

(declare-fun b!6728182 () Bool)

(assert (=> b!6728182 (= e!4064825 e!4064828)))

(declare-fun c!1247529 () Bool)

(assert (=> b!6728182 (= c!1247529 ((_ is Cons!65840) (unfocusZipperList!1976 zl!343)))))

(declare-fun b!6728183 () Bool)

(assert (=> b!6728183 (= e!4064828 (Union!16555 (h!72288 (unfocusZipperList!1976 zl!343)) (generalisedUnion!2399 (t!379649 (unfocusZipperList!1976 zl!343)))))))

(declare-fun b!6728184 () Bool)

(declare-fun e!4064827 () Bool)

(assert (=> b!6728184 (= e!4064829 e!4064827)))

(declare-fun c!1247530 () Bool)

(declare-fun isEmpty!38174 (List!65964) Bool)

(assert (=> b!6728184 (= c!1247530 (isEmpty!38174 (unfocusZipperList!1976 zl!343)))))

(declare-fun b!6728185 () Bool)

(assert (=> b!6728185 (= e!4064825 (h!72288 (unfocusZipperList!1976 zl!343)))))

(declare-fun b!6728186 () Bool)

(assert (=> b!6728186 (= e!4064824 (isEmpty!38174 (t!379649 (unfocusZipperList!1976 zl!343))))))

(declare-fun b!6728187 () Bool)

(declare-fun e!4064826 () Bool)

(declare-fun head!13538 (List!65964) Regex!16555)

(assert (=> b!6728187 (= e!4064826 (= lt!2437495 (head!13538 (unfocusZipperList!1976 zl!343))))))

(declare-fun b!6728188 () Bool)

(assert (=> b!6728188 (= e!4064827 e!4064826)))

(declare-fun c!1247528 () Bool)

(declare-fun tail!12623 (List!65964) List!65964)

(assert (=> b!6728188 (= c!1247528 (isEmpty!38174 (tail!12623 (unfocusZipperList!1976 zl!343))))))

(declare-fun b!6728189 () Bool)

(declare-fun isUnion!1359 (Regex!16555) Bool)

(assert (=> b!6728189 (= e!4064826 (isUnion!1359 lt!2437495))))

(declare-fun b!6728190 () Bool)

(declare-fun isEmptyLang!1929 (Regex!16555) Bool)

(assert (=> b!6728190 (= e!4064827 (isEmptyLang!1929 lt!2437495))))

(assert (= (and d!2114015 res!2752733) b!6728186))

(assert (= (and d!2114015 c!1247527) b!6728185))

(assert (= (and d!2114015 (not c!1247527)) b!6728182))

(assert (= (and b!6728182 c!1247529) b!6728183))

(assert (= (and b!6728182 (not c!1247529)) b!6728181))

(assert (= (and d!2114015 res!2752732) b!6728184))

(assert (= (and b!6728184 c!1247530) b!6728190))

(assert (= (and b!6728184 (not c!1247530)) b!6728188))

(assert (= (and b!6728188 c!1247528) b!6728187))

(assert (= (and b!6728188 (not c!1247528)) b!6728189))

(assert (=> b!6728187 m!7487082))

(declare-fun m!7487410 () Bool)

(assert (=> b!6728187 m!7487410))

(declare-fun m!7487412 () Bool)

(assert (=> b!6728189 m!7487412))

(declare-fun m!7487414 () Bool)

(assert (=> d!2114015 m!7487414))

(assert (=> d!2114015 m!7487082))

(declare-fun m!7487416 () Bool)

(assert (=> d!2114015 m!7487416))

(assert (=> b!6728188 m!7487082))

(declare-fun m!7487418 () Bool)

(assert (=> b!6728188 m!7487418))

(assert (=> b!6728188 m!7487418))

(declare-fun m!7487420 () Bool)

(assert (=> b!6728188 m!7487420))

(declare-fun m!7487422 () Bool)

(assert (=> b!6728186 m!7487422))

(declare-fun m!7487424 () Bool)

(assert (=> b!6728183 m!7487424))

(assert (=> b!6728184 m!7487082))

(declare-fun m!7487426 () Bool)

(assert (=> b!6728184 m!7487426))

(declare-fun m!7487428 () Bool)

(assert (=> b!6728190 m!7487428))

(assert (=> b!6727576 d!2114015))

(declare-fun bs!1789456 () Bool)

(declare-fun d!2114017 () Bool)

(assert (= bs!1789456 (and d!2114017 d!2114015)))

(declare-fun lambda!377550 () Int)

(assert (=> bs!1789456 (= lambda!377550 lambda!377547)))

(declare-fun lt!2437498 () List!65964)

(assert (=> d!2114017 (forall!15755 lt!2437498 lambda!377550)))

(declare-fun e!4064832 () List!65964)

(assert (=> d!2114017 (= lt!2437498 e!4064832)))

(declare-fun c!1247533 () Bool)

(assert (=> d!2114017 (= c!1247533 ((_ is Cons!65842) zl!343))))

(assert (=> d!2114017 (= (unfocusZipperList!1976 zl!343) lt!2437498)))

(declare-fun b!6728195 () Bool)

(assert (=> b!6728195 (= e!4064832 (Cons!65840 (generalisedConcat!2152 (exprs!6439 (h!72290 zl!343))) (unfocusZipperList!1976 (t!379651 zl!343))))))

(declare-fun b!6728196 () Bool)

(assert (=> b!6728196 (= e!4064832 Nil!65840)))

(assert (= (and d!2114017 c!1247533) b!6728195))

(assert (= (and d!2114017 (not c!1247533)) b!6728196))

(declare-fun m!7487430 () Bool)

(assert (=> d!2114017 m!7487430))

(assert (=> b!6728195 m!7487090))

(declare-fun m!7487432 () Bool)

(assert (=> b!6728195 m!7487432))

(assert (=> b!6727576 d!2114017))

(declare-fun bs!1789457 () Bool)

(declare-fun d!2114019 () Bool)

(assert (= bs!1789457 (and d!2114019 d!2114015)))

(declare-fun lambda!377553 () Int)

(assert (=> bs!1789457 (= lambda!377553 lambda!377547)))

(declare-fun bs!1789458 () Bool)

(assert (= bs!1789458 (and d!2114019 d!2114017)))

(assert (=> bs!1789458 (= lambda!377553 lambda!377550)))

(declare-fun b!6728217 () Bool)

(declare-fun e!4064848 () Bool)

(declare-fun e!4064846 () Bool)

(assert (=> b!6728217 (= e!4064848 e!4064846)))

(declare-fun c!1247544 () Bool)

(assert (=> b!6728217 (= c!1247544 (isEmpty!38174 (exprs!6439 (h!72290 zl!343))))))

(declare-fun b!6728219 () Bool)

(declare-fun e!4064847 () Bool)

(assert (=> b!6728219 (= e!4064846 e!4064847)))

(declare-fun c!1247543 () Bool)

(assert (=> b!6728219 (= c!1247543 (isEmpty!38174 (tail!12623 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6728220 () Bool)

(declare-fun lt!2437501 () Regex!16555)

(assert (=> b!6728220 (= e!4064847 (= lt!2437501 (head!13538 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6728221 () Bool)

(declare-fun e!4064850 () Bool)

(assert (=> b!6728221 (= e!4064850 (isEmpty!38174 (t!379649 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6728222 () Bool)

(declare-fun e!4064849 () Regex!16555)

(assert (=> b!6728222 (= e!4064849 (h!72288 (exprs!6439 (h!72290 zl!343))))))

(declare-fun b!6728223 () Bool)

(declare-fun e!4064845 () Regex!16555)

(assert (=> b!6728223 (= e!4064845 EmptyExpr!16555)))

(declare-fun b!6728224 () Bool)

(assert (=> b!6728224 (= e!4064849 e!4064845)))

(declare-fun c!1247542 () Bool)

(assert (=> b!6728224 (= c!1247542 ((_ is Cons!65840) (exprs!6439 (h!72290 zl!343))))))

(declare-fun b!6728218 () Bool)

(assert (=> b!6728218 (= e!4064845 (Concat!25400 (h!72288 (exprs!6439 (h!72290 zl!343))) (generalisedConcat!2152 (t!379649 (exprs!6439 (h!72290 zl!343))))))))

(assert (=> d!2114019 e!4064848))

(declare-fun res!2752739 () Bool)

(assert (=> d!2114019 (=> (not res!2752739) (not e!4064848))))

(assert (=> d!2114019 (= res!2752739 (validRegex!8291 lt!2437501))))

(assert (=> d!2114019 (= lt!2437501 e!4064849)))

(declare-fun c!1247545 () Bool)

(assert (=> d!2114019 (= c!1247545 e!4064850)))

(declare-fun res!2752738 () Bool)

(assert (=> d!2114019 (=> (not res!2752738) (not e!4064850))))

(assert (=> d!2114019 (= res!2752738 ((_ is Cons!65840) (exprs!6439 (h!72290 zl!343))))))

(assert (=> d!2114019 (forall!15755 (exprs!6439 (h!72290 zl!343)) lambda!377553)))

(assert (=> d!2114019 (= (generalisedConcat!2152 (exprs!6439 (h!72290 zl!343))) lt!2437501)))

(declare-fun b!6728225 () Bool)

(declare-fun isConcat!1444 (Regex!16555) Bool)

(assert (=> b!6728225 (= e!4064847 (isConcat!1444 lt!2437501))))

(declare-fun b!6728226 () Bool)

(declare-fun isEmptyExpr!1921 (Regex!16555) Bool)

(assert (=> b!6728226 (= e!4064846 (isEmptyExpr!1921 lt!2437501))))

(assert (= (and d!2114019 res!2752738) b!6728221))

(assert (= (and d!2114019 c!1247545) b!6728222))

(assert (= (and d!2114019 (not c!1247545)) b!6728224))

(assert (= (and b!6728224 c!1247542) b!6728218))

(assert (= (and b!6728224 (not c!1247542)) b!6728223))

(assert (= (and d!2114019 res!2752739) b!6728217))

(assert (= (and b!6728217 c!1247544) b!6728226))

(assert (= (and b!6728217 (not c!1247544)) b!6728219))

(assert (= (and b!6728219 c!1247543) b!6728220))

(assert (= (and b!6728219 (not c!1247543)) b!6728225))

(declare-fun m!7487434 () Bool)

(assert (=> b!6728226 m!7487434))

(declare-fun m!7487436 () Bool)

(assert (=> b!6728221 m!7487436))

(declare-fun m!7487438 () Bool)

(assert (=> b!6728217 m!7487438))

(declare-fun m!7487440 () Bool)

(assert (=> b!6728218 m!7487440))

(declare-fun m!7487442 () Bool)

(assert (=> b!6728220 m!7487442))

(declare-fun m!7487444 () Bool)

(assert (=> d!2114019 m!7487444))

(declare-fun m!7487446 () Bool)

(assert (=> d!2114019 m!7487446))

(declare-fun m!7487448 () Bool)

(assert (=> b!6728219 m!7487448))

(assert (=> b!6728219 m!7487448))

(declare-fun m!7487450 () Bool)

(assert (=> b!6728219 m!7487450))

(declare-fun m!7487452 () Bool)

(assert (=> b!6728225 m!7487452))

(assert (=> b!6727577 d!2114019))

(declare-fun bs!1789459 () Bool)

(declare-fun d!2114021 () Bool)

(assert (= bs!1789459 (and d!2114021 d!2114015)))

(declare-fun lambda!377556 () Int)

(assert (=> bs!1789459 (= lambda!377556 lambda!377547)))

(declare-fun bs!1789460 () Bool)

(assert (= bs!1789460 (and d!2114021 d!2114017)))

(assert (=> bs!1789460 (= lambda!377556 lambda!377550)))

(declare-fun bs!1789461 () Bool)

(assert (= bs!1789461 (and d!2114021 d!2114019)))

(assert (=> bs!1789461 (= lambda!377556 lambda!377553)))

(assert (=> d!2114021 (= (inv!84634 (h!72290 zl!343)) (forall!15755 (exprs!6439 (h!72290 zl!343)) lambda!377556))))

(declare-fun bs!1789462 () Bool)

(assert (= bs!1789462 d!2114021))

(declare-fun m!7487454 () Bool)

(assert (=> bs!1789462 m!7487454))

(assert (=> b!6727568 d!2114021))

(declare-fun d!2114023 () Bool)

(assert (=> d!2114023 (= (isEmpty!38169 (t!379651 zl!343)) ((_ is Nil!65842) (t!379651 zl!343)))))

(assert (=> b!6727575 d!2114023))

(declare-fun d!2114025 () Bool)

(declare-fun c!1247548 () Bool)

(assert (=> d!2114025 (= c!1247548 (isEmpty!38170 s!2326))))

(declare-fun e!4064853 () Bool)

(assert (=> d!2114025 (= (matchZipper!2541 lt!2437420 s!2326) e!4064853)))

(declare-fun b!6728231 () Bool)

(declare-fun nullableZipper!2270 ((InoxSet Context!11878)) Bool)

(assert (=> b!6728231 (= e!4064853 (nullableZipper!2270 lt!2437420))))

(declare-fun b!6728232 () Bool)

(assert (=> b!6728232 (= e!4064853 (matchZipper!2541 (derivationStepZipper!2499 lt!2437420 (head!13537 s!2326)) (tail!12622 s!2326)))))

(assert (= (and d!2114025 c!1247548) b!6728231))

(assert (= (and d!2114025 (not c!1247548)) b!6728232))

(assert (=> d!2114025 m!7487034))

(declare-fun m!7487456 () Bool)

(assert (=> b!6728231 m!7487456))

(assert (=> b!6728232 m!7487280))

(assert (=> b!6728232 m!7487280))

(declare-fun m!7487458 () Bool)

(assert (=> b!6728232 m!7487458))

(assert (=> b!6728232 m!7487282))

(assert (=> b!6728232 m!7487458))

(assert (=> b!6728232 m!7487282))

(declare-fun m!7487460 () Bool)

(assert (=> b!6728232 m!7487460))

(assert (=> b!6727567 d!2114025))

(declare-fun d!2114027 () Bool)

(declare-fun c!1247549 () Bool)

(assert (=> d!2114027 (= c!1247549 (isEmpty!38170 (t!379650 s!2326)))))

(declare-fun e!4064854 () Bool)

(assert (=> d!2114027 (= (matchZipper!2541 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) (t!379650 s!2326)) e!4064854)))

(declare-fun b!6728233 () Bool)

(assert (=> b!6728233 (= e!4064854 (nullableZipper!2270 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326))))))

(declare-fun b!6728234 () Bool)

(assert (=> b!6728234 (= e!4064854 (matchZipper!2541 (derivationStepZipper!2499 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) (head!13537 (t!379650 s!2326))) (tail!12622 (t!379650 s!2326))))))

(assert (= (and d!2114027 c!1247549) b!6728233))

(assert (= (and d!2114027 (not c!1247549)) b!6728234))

(declare-fun m!7487462 () Bool)

(assert (=> d!2114027 m!7487462))

(assert (=> b!6728233 m!7487066))

(declare-fun m!7487464 () Bool)

(assert (=> b!6728233 m!7487464))

(declare-fun m!7487466 () Bool)

(assert (=> b!6728234 m!7487466))

(assert (=> b!6728234 m!7487066))

(assert (=> b!6728234 m!7487466))

(declare-fun m!7487468 () Bool)

(assert (=> b!6728234 m!7487468))

(declare-fun m!7487470 () Bool)

(assert (=> b!6728234 m!7487470))

(assert (=> b!6728234 m!7487468))

(assert (=> b!6728234 m!7487470))

(declare-fun m!7487472 () Bool)

(assert (=> b!6728234 m!7487472))

(assert (=> b!6727567 d!2114027))

(declare-fun bs!1789463 () Bool)

(declare-fun d!2114029 () Bool)

(assert (= bs!1789463 (and d!2114029 b!6727573)))

(declare-fun lambda!377557 () Int)

(assert (=> bs!1789463 (= lambda!377557 lambda!377481)))

(declare-fun bs!1789464 () Bool)

(assert (= bs!1789464 (and d!2114029 d!2114013)))

(assert (=> bs!1789464 (= lambda!377557 lambda!377544)))

(assert (=> d!2114029 true))

(assert (=> d!2114029 (= (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) (flatMap!2036 lt!2437420 lambda!377557))))

(declare-fun bs!1789465 () Bool)

(assert (= bs!1789465 d!2114029))

(declare-fun m!7487474 () Bool)

(assert (=> bs!1789465 m!7487474))

(assert (=> b!6727567 d!2114029))

(declare-fun d!2114031 () Bool)

(declare-fun lt!2437504 () Regex!16555)

(assert (=> d!2114031 (validRegex!8291 lt!2437504)))

(assert (=> d!2114031 (= lt!2437504 (generalisedUnion!2399 (unfocusZipperList!1976 zl!343)))))

(assert (=> d!2114031 (= (unfocusZipper!2297 zl!343) lt!2437504)))

(declare-fun bs!1789466 () Bool)

(assert (= bs!1789466 d!2114031))

(declare-fun m!7487476 () Bool)

(assert (=> bs!1789466 m!7487476))

(assert (=> bs!1789466 m!7487082))

(assert (=> bs!1789466 m!7487082))

(assert (=> bs!1789466 m!7487084))

(assert (=> b!6727574 d!2114031))

(declare-fun b!6728253 () Bool)

(declare-fun e!4064873 () Bool)

(declare-fun e!4064872 () Bool)

(assert (=> b!6728253 (= e!4064873 e!4064872)))

(declare-fun c!1247554 () Bool)

(assert (=> b!6728253 (= c!1247554 ((_ is Star!16555) r!7292))))

(declare-fun b!6728254 () Bool)

(declare-fun e!4064871 () Bool)

(assert (=> b!6728254 (= e!4064872 e!4064871)))

(declare-fun c!1247555 () Bool)

(assert (=> b!6728254 (= c!1247555 ((_ is Union!16555) r!7292))))

(declare-fun d!2114033 () Bool)

(declare-fun res!2752751 () Bool)

(assert (=> d!2114033 (=> res!2752751 e!4064873)))

(assert (=> d!2114033 (= res!2752751 ((_ is ElementMatch!16555) r!7292))))

(assert (=> d!2114033 (= (validRegex!8291 r!7292) e!4064873)))

(declare-fun b!6728255 () Bool)

(declare-fun res!2752753 () Bool)

(declare-fun e!4064869 () Bool)

(assert (=> b!6728255 (=> (not res!2752753) (not e!4064869))))

(declare-fun call!607560 () Bool)

(assert (=> b!6728255 (= res!2752753 call!607560)))

(assert (=> b!6728255 (= e!4064871 e!4064869)))

(declare-fun b!6728256 () Bool)

(declare-fun e!4064870 () Bool)

(declare-fun call!607561 () Bool)

(assert (=> b!6728256 (= e!4064870 call!607561)))

(declare-fun b!6728257 () Bool)

(declare-fun e!4064874 () Bool)

(declare-fun e!4064875 () Bool)

(assert (=> b!6728257 (= e!4064874 e!4064875)))

(declare-fun res!2752754 () Bool)

(assert (=> b!6728257 (=> (not res!2752754) (not e!4064875))))

(assert (=> b!6728257 (= res!2752754 call!607560)))

(declare-fun b!6728258 () Bool)

(assert (=> b!6728258 (= e!4064872 e!4064870)))

(declare-fun res!2752752 () Bool)

(assert (=> b!6728258 (= res!2752752 (not (nullable!6542 (reg!16884 r!7292))))))

(assert (=> b!6728258 (=> (not res!2752752) (not e!4064870))))

(declare-fun bm!607555 () Bool)

(assert (=> bm!607555 (= call!607560 (validRegex!8291 (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))))))

(declare-fun bm!607556 () Bool)

(declare-fun call!607562 () Bool)

(assert (=> bm!607556 (= call!607562 call!607561)))

(declare-fun b!6728259 () Bool)

(assert (=> b!6728259 (= e!4064875 call!607562)))

(declare-fun b!6728260 () Bool)

(assert (=> b!6728260 (= e!4064869 call!607562)))

(declare-fun bm!607557 () Bool)

(assert (=> bm!607557 (= call!607561 (validRegex!8291 (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))))))

(declare-fun b!6728261 () Bool)

(declare-fun res!2752750 () Bool)

(assert (=> b!6728261 (=> res!2752750 e!4064874)))

(assert (=> b!6728261 (= res!2752750 (not ((_ is Concat!25400) r!7292)))))

(assert (=> b!6728261 (= e!4064871 e!4064874)))

(assert (= (and d!2114033 (not res!2752751)) b!6728253))

(assert (= (and b!6728253 c!1247554) b!6728258))

(assert (= (and b!6728253 (not c!1247554)) b!6728254))

(assert (= (and b!6728258 res!2752752) b!6728256))

(assert (= (and b!6728254 c!1247555) b!6728255))

(assert (= (and b!6728254 (not c!1247555)) b!6728261))

(assert (= (and b!6728255 res!2752753) b!6728260))

(assert (= (and b!6728261 (not res!2752750)) b!6728257))

(assert (= (and b!6728257 res!2752754) b!6728259))

(assert (= (or b!6728260 b!6728259) bm!607556))

(assert (= (or b!6728255 b!6728257) bm!607555))

(assert (= (or b!6728256 bm!607556) bm!607557))

(declare-fun m!7487478 () Bool)

(assert (=> b!6728258 m!7487478))

(declare-fun m!7487480 () Bool)

(assert (=> bm!607555 m!7487480))

(declare-fun m!7487482 () Bool)

(assert (=> bm!607557 m!7487482))

(assert (=> start!652396 d!2114033))

(declare-fun bs!1789467 () Bool)

(declare-fun d!2114035 () Bool)

(assert (= bs!1789467 (and d!2114035 d!2114015)))

(declare-fun lambda!377558 () Int)

(assert (=> bs!1789467 (= lambda!377558 lambda!377547)))

(declare-fun bs!1789468 () Bool)

(assert (= bs!1789468 (and d!2114035 d!2114017)))

(assert (=> bs!1789468 (= lambda!377558 lambda!377550)))

(declare-fun bs!1789469 () Bool)

(assert (= bs!1789469 (and d!2114035 d!2114019)))

(assert (=> bs!1789469 (= lambda!377558 lambda!377553)))

(declare-fun bs!1789470 () Bool)

(assert (= bs!1789470 (and d!2114035 d!2114021)))

(assert (=> bs!1789470 (= lambda!377558 lambda!377556)))

(assert (=> d!2114035 (= (inv!84634 setElem!45877) (forall!15755 (exprs!6439 setElem!45877) lambda!377558))))

(declare-fun bs!1789471 () Bool)

(assert (= bs!1789471 d!2114035))

(declare-fun m!7487484 () Bool)

(assert (=> bs!1789471 m!7487484))

(assert (=> setNonEmpty!45877 d!2114035))

(declare-fun d!2114037 () Bool)

(assert (=> d!2114037 (= (flatMap!2036 z!1189 lambda!377481) (choose!50131 z!1189 lambda!377481))))

(declare-fun bs!1789472 () Bool)

(assert (= bs!1789472 d!2114037))

(declare-fun m!7487486 () Bool)

(assert (=> bs!1789472 m!7487486))

(assert (=> b!6727573 d!2114037))

(declare-fun b!6728262 () Bool)

(declare-fun e!4064878 () (InoxSet Context!11878))

(assert (=> b!6728262 (= e!4064878 ((as const (Array Context!11878 Bool)) false))))

(declare-fun call!607563 () (InoxSet Context!11878))

(declare-fun b!6728263 () Bool)

(declare-fun e!4064877 () (InoxSet Context!11878))

(assert (=> b!6728263 (= e!4064877 ((_ map or) call!607563 (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))) (h!72289 s!2326))))))

(declare-fun b!6728264 () Bool)

(assert (=> b!6728264 (= e!4064878 call!607563)))

(declare-fun bm!607558 () Bool)

(assert (=> bm!607558 (= call!607563 (derivationStepZipperDown!1783 (h!72288 (exprs!6439 (h!72290 zl!343))) (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))) (h!72289 s!2326)))))

(declare-fun d!2114039 () Bool)

(declare-fun c!1247556 () Bool)

(declare-fun e!4064876 () Bool)

(assert (=> d!2114039 (= c!1247556 e!4064876)))

(declare-fun res!2752755 () Bool)

(assert (=> d!2114039 (=> (not res!2752755) (not e!4064876))))

(assert (=> d!2114039 (= res!2752755 ((_ is Cons!65840) (exprs!6439 (h!72290 zl!343))))))

(assert (=> d!2114039 (= (derivationStepZipperUp!1709 (h!72290 zl!343) (h!72289 s!2326)) e!4064877)))

(declare-fun b!6728265 () Bool)

(assert (=> b!6728265 (= e!4064877 e!4064878)))

(declare-fun c!1247557 () Bool)

(assert (=> b!6728265 (= c!1247557 ((_ is Cons!65840) (exprs!6439 (h!72290 zl!343))))))

(declare-fun b!6728266 () Bool)

(assert (=> b!6728266 (= e!4064876 (nullable!6542 (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(assert (= (and d!2114039 res!2752755) b!6728266))

(assert (= (and d!2114039 c!1247556) b!6728263))

(assert (= (and d!2114039 (not c!1247556)) b!6728265))

(assert (= (and b!6728265 c!1247557) b!6728264))

(assert (= (and b!6728265 (not c!1247557)) b!6728262))

(assert (= (or b!6728263 b!6728264) bm!607558))

(declare-fun m!7487488 () Bool)

(assert (=> b!6728263 m!7487488))

(declare-fun m!7487490 () Bool)

(assert (=> bm!607558 m!7487490))

(declare-fun m!7487492 () Bool)

(assert (=> b!6728266 m!7487492))

(assert (=> b!6727573 d!2114039))

(declare-fun d!2114041 () Bool)

(assert (=> d!2114041 (= (flatMap!2036 z!1189 lambda!377481) (dynLambda!26260 lambda!377481 (h!72290 zl!343)))))

(declare-fun lt!2437505 () Unit!159801)

(assert (=> d!2114041 (= lt!2437505 (choose!50133 z!1189 (h!72290 zl!343) lambda!377481))))

(assert (=> d!2114041 (= z!1189 (store ((as const (Array Context!11878 Bool)) false) (h!72290 zl!343) true))))

(assert (=> d!2114041 (= (lemmaFlatMapOnSingletonSet!1562 z!1189 (h!72290 zl!343) lambda!377481) lt!2437505)))

(declare-fun b_lambda!253301 () Bool)

(assert (=> (not b_lambda!253301) (not d!2114041)))

(declare-fun bs!1789473 () Bool)

(assert (= bs!1789473 d!2114041))

(assert (=> bs!1789473 m!7487058))

(declare-fun m!7487494 () Bool)

(assert (=> bs!1789473 m!7487494))

(declare-fun m!7487496 () Bool)

(assert (=> bs!1789473 m!7487496))

(declare-fun m!7487498 () Bool)

(assert (=> bs!1789473 m!7487498))

(assert (=> b!6727573 d!2114041))

(declare-fun bs!1789474 () Bool)

(declare-fun d!2114043 () Bool)

(assert (= bs!1789474 (and d!2114043 d!2114035)))

(declare-fun lambda!377559 () Int)

(assert (=> bs!1789474 (= lambda!377559 lambda!377558)))

(declare-fun bs!1789475 () Bool)

(assert (= bs!1789475 (and d!2114043 d!2114019)))

(assert (=> bs!1789475 (= lambda!377559 lambda!377553)))

(declare-fun bs!1789476 () Bool)

(assert (= bs!1789476 (and d!2114043 d!2114015)))

(assert (=> bs!1789476 (= lambda!377559 lambda!377547)))

(declare-fun bs!1789477 () Bool)

(assert (= bs!1789477 (and d!2114043 d!2114021)))

(assert (=> bs!1789477 (= lambda!377559 lambda!377556)))

(declare-fun bs!1789478 () Bool)

(assert (= bs!1789478 (and d!2114043 d!2114017)))

(assert (=> bs!1789478 (= lambda!377559 lambda!377550)))

(assert (=> d!2114043 (= (inv!84634 lt!2437413) (forall!15755 (exprs!6439 lt!2437413) lambda!377559))))

(declare-fun bs!1789479 () Bool)

(assert (= bs!1789479 d!2114043))

(declare-fun m!7487500 () Bool)

(assert (=> bs!1789479 m!7487500))

(assert (=> b!6727591 d!2114043))

(declare-fun d!2114045 () Bool)

(declare-fun e!4064881 () Bool)

(assert (=> d!2114045 e!4064881))

(declare-fun res!2752758 () Bool)

(assert (=> d!2114045 (=> (not res!2752758) (not e!4064881))))

(declare-fun lt!2437508 () List!65966)

(declare-fun noDuplicate!2348 (List!65966) Bool)

(assert (=> d!2114045 (= res!2752758 (noDuplicate!2348 lt!2437508))))

(declare-fun choose!50142 ((InoxSet Context!11878)) List!65966)

(assert (=> d!2114045 (= lt!2437508 (choose!50142 z!1189))))

(assert (=> d!2114045 (= (toList!10339 z!1189) lt!2437508)))

(declare-fun b!6728269 () Bool)

(declare-fun content!12779 (List!65966) (InoxSet Context!11878))

(assert (=> b!6728269 (= e!4064881 (= (content!12779 lt!2437508) z!1189))))

(assert (= (and d!2114045 res!2752758) b!6728269))

(declare-fun m!7487502 () Bool)

(assert (=> d!2114045 m!7487502))

(declare-fun m!7487504 () Bool)

(assert (=> d!2114045 m!7487504))

(declare-fun m!7487506 () Bool)

(assert (=> b!6728269 m!7487506))

(assert (=> b!6727581 d!2114045))

(declare-fun b!6728281 () Bool)

(declare-fun e!4064884 () Bool)

(declare-fun tp!1844725 () Bool)

(declare-fun tp!1844722 () Bool)

(assert (=> b!6728281 (= e!4064884 (and tp!1844725 tp!1844722))))

(assert (=> b!6727584 (= tp!1844648 e!4064884)))

(declare-fun b!6728283 () Bool)

(declare-fun tp!1844724 () Bool)

(declare-fun tp!1844726 () Bool)

(assert (=> b!6728283 (= e!4064884 (and tp!1844724 tp!1844726))))

(declare-fun b!6728282 () Bool)

(declare-fun tp!1844723 () Bool)

(assert (=> b!6728282 (= e!4064884 tp!1844723)))

(declare-fun b!6728280 () Bool)

(assert (=> b!6728280 (= e!4064884 tp_is_empty!42363)))

(assert (= (and b!6727584 ((_ is ElementMatch!16555) (regOne!33622 r!7292))) b!6728280))

(assert (= (and b!6727584 ((_ is Concat!25400) (regOne!33622 r!7292))) b!6728281))

(assert (= (and b!6727584 ((_ is Star!16555) (regOne!33622 r!7292))) b!6728282))

(assert (= (and b!6727584 ((_ is Union!16555) (regOne!33622 r!7292))) b!6728283))

(declare-fun b!6728285 () Bool)

(declare-fun e!4064885 () Bool)

(declare-fun tp!1844730 () Bool)

(declare-fun tp!1844727 () Bool)

(assert (=> b!6728285 (= e!4064885 (and tp!1844730 tp!1844727))))

(assert (=> b!6727584 (= tp!1844644 e!4064885)))

(declare-fun b!6728287 () Bool)

(declare-fun tp!1844729 () Bool)

(declare-fun tp!1844731 () Bool)

(assert (=> b!6728287 (= e!4064885 (and tp!1844729 tp!1844731))))

(declare-fun b!6728286 () Bool)

(declare-fun tp!1844728 () Bool)

(assert (=> b!6728286 (= e!4064885 tp!1844728)))

(declare-fun b!6728284 () Bool)

(assert (=> b!6728284 (= e!4064885 tp_is_empty!42363)))

(assert (= (and b!6727584 ((_ is ElementMatch!16555) (regTwo!33622 r!7292))) b!6728284))

(assert (= (and b!6727584 ((_ is Concat!25400) (regTwo!33622 r!7292))) b!6728285))

(assert (= (and b!6727584 ((_ is Star!16555) (regTwo!33622 r!7292))) b!6728286))

(assert (= (and b!6727584 ((_ is Union!16555) (regTwo!33622 r!7292))) b!6728287))

(declare-fun b!6728292 () Bool)

(declare-fun e!4064888 () Bool)

(declare-fun tp!1844736 () Bool)

(declare-fun tp!1844737 () Bool)

(assert (=> b!6728292 (= e!4064888 (and tp!1844736 tp!1844737))))

(assert (=> b!6727585 (= tp!1844652 e!4064888)))

(assert (= (and b!6727585 ((_ is Cons!65840) (exprs!6439 (h!72290 zl!343)))) b!6728292))

(declare-fun b!6728294 () Bool)

(declare-fun e!4064889 () Bool)

(declare-fun tp!1844741 () Bool)

(declare-fun tp!1844738 () Bool)

(assert (=> b!6728294 (= e!4064889 (and tp!1844741 tp!1844738))))

(assert (=> b!6727569 (= tp!1844649 e!4064889)))

(declare-fun b!6728296 () Bool)

(declare-fun tp!1844740 () Bool)

(declare-fun tp!1844742 () Bool)

(assert (=> b!6728296 (= e!4064889 (and tp!1844740 tp!1844742))))

(declare-fun b!6728295 () Bool)

(declare-fun tp!1844739 () Bool)

(assert (=> b!6728295 (= e!4064889 tp!1844739)))

(declare-fun b!6728293 () Bool)

(assert (=> b!6728293 (= e!4064889 tp_is_empty!42363)))

(assert (= (and b!6727569 ((_ is ElementMatch!16555) (regOne!33623 r!7292))) b!6728293))

(assert (= (and b!6727569 ((_ is Concat!25400) (regOne!33623 r!7292))) b!6728294))

(assert (= (and b!6727569 ((_ is Star!16555) (regOne!33623 r!7292))) b!6728295))

(assert (= (and b!6727569 ((_ is Union!16555) (regOne!33623 r!7292))) b!6728296))

(declare-fun b!6728298 () Bool)

(declare-fun e!4064890 () Bool)

(declare-fun tp!1844746 () Bool)

(declare-fun tp!1844743 () Bool)

(assert (=> b!6728298 (= e!4064890 (and tp!1844746 tp!1844743))))

(assert (=> b!6727569 (= tp!1844653 e!4064890)))

(declare-fun b!6728300 () Bool)

(declare-fun tp!1844745 () Bool)

(declare-fun tp!1844747 () Bool)

(assert (=> b!6728300 (= e!4064890 (and tp!1844745 tp!1844747))))

(declare-fun b!6728299 () Bool)

(declare-fun tp!1844744 () Bool)

(assert (=> b!6728299 (= e!4064890 tp!1844744)))

(declare-fun b!6728297 () Bool)

(assert (=> b!6728297 (= e!4064890 tp_is_empty!42363)))

(assert (= (and b!6727569 ((_ is ElementMatch!16555) (regTwo!33623 r!7292))) b!6728297))

(assert (= (and b!6727569 ((_ is Concat!25400) (regTwo!33623 r!7292))) b!6728298))

(assert (= (and b!6727569 ((_ is Star!16555) (regTwo!33623 r!7292))) b!6728299))

(assert (= (and b!6727569 ((_ is Union!16555) (regTwo!33623 r!7292))) b!6728300))

(declare-fun condSetEmpty!45883 () Bool)

(assert (=> setNonEmpty!45877 (= condSetEmpty!45883 (= setRest!45877 ((as const (Array Context!11878 Bool)) false)))))

(declare-fun setRes!45883 () Bool)

(assert (=> setNonEmpty!45877 (= tp!1844645 setRes!45883)))

(declare-fun setIsEmpty!45883 () Bool)

(assert (=> setIsEmpty!45883 setRes!45883))

(declare-fun setNonEmpty!45883 () Bool)

(declare-fun setElem!45883 () Context!11878)

(declare-fun tp!1844753 () Bool)

(declare-fun e!4064893 () Bool)

(assert (=> setNonEmpty!45883 (= setRes!45883 (and tp!1844753 (inv!84634 setElem!45883) e!4064893))))

(declare-fun setRest!45883 () (InoxSet Context!11878))

(assert (=> setNonEmpty!45883 (= setRest!45877 ((_ map or) (store ((as const (Array Context!11878 Bool)) false) setElem!45883 true) setRest!45883))))

(declare-fun b!6728305 () Bool)

(declare-fun tp!1844752 () Bool)

(assert (=> b!6728305 (= e!4064893 tp!1844752)))

(assert (= (and setNonEmpty!45877 condSetEmpty!45883) setIsEmpty!45883))

(assert (= (and setNonEmpty!45877 (not condSetEmpty!45883)) setNonEmpty!45883))

(assert (= setNonEmpty!45883 b!6728305))

(declare-fun m!7487508 () Bool)

(assert (=> setNonEmpty!45883 m!7487508))

(declare-fun b!6728306 () Bool)

(declare-fun e!4064894 () Bool)

(declare-fun tp!1844754 () Bool)

(declare-fun tp!1844755 () Bool)

(assert (=> b!6728306 (= e!4064894 (and tp!1844754 tp!1844755))))

(assert (=> b!6727572 (= tp!1844647 e!4064894)))

(assert (= (and b!6727572 ((_ is Cons!65840) (exprs!6439 setElem!45877))) b!6728306))

(declare-fun b!6728314 () Bool)

(declare-fun e!4064900 () Bool)

(declare-fun tp!1844760 () Bool)

(assert (=> b!6728314 (= e!4064900 tp!1844760)))

(declare-fun tp!1844761 () Bool)

(declare-fun e!4064899 () Bool)

(declare-fun b!6728313 () Bool)

(assert (=> b!6728313 (= e!4064899 (and (inv!84634 (h!72290 (t!379651 zl!343))) e!4064900 tp!1844761))))

(assert (=> b!6727568 (= tp!1844651 e!4064899)))

(assert (= b!6728313 b!6728314))

(assert (= (and b!6727568 ((_ is Cons!65842) (t!379651 zl!343))) b!6728313))

(declare-fun m!7487510 () Bool)

(assert (=> b!6728313 m!7487510))

(declare-fun b!6728316 () Bool)

(declare-fun e!4064901 () Bool)

(declare-fun tp!1844765 () Bool)

(declare-fun tp!1844762 () Bool)

(assert (=> b!6728316 (= e!4064901 (and tp!1844765 tp!1844762))))

(assert (=> b!6727582 (= tp!1844650 e!4064901)))

(declare-fun b!6728318 () Bool)

(declare-fun tp!1844764 () Bool)

(declare-fun tp!1844766 () Bool)

(assert (=> b!6728318 (= e!4064901 (and tp!1844764 tp!1844766))))

(declare-fun b!6728317 () Bool)

(declare-fun tp!1844763 () Bool)

(assert (=> b!6728317 (= e!4064901 tp!1844763)))

(declare-fun b!6728315 () Bool)

(assert (=> b!6728315 (= e!4064901 tp_is_empty!42363)))

(assert (= (and b!6727582 ((_ is ElementMatch!16555) (reg!16884 r!7292))) b!6728315))

(assert (= (and b!6727582 ((_ is Concat!25400) (reg!16884 r!7292))) b!6728316))

(assert (= (and b!6727582 ((_ is Star!16555) (reg!16884 r!7292))) b!6728317))

(assert (= (and b!6727582 ((_ is Union!16555) (reg!16884 r!7292))) b!6728318))

(declare-fun b!6728323 () Bool)

(declare-fun e!4064904 () Bool)

(declare-fun tp!1844769 () Bool)

(assert (=> b!6728323 (= e!4064904 (and tp_is_empty!42363 tp!1844769))))

(assert (=> b!6727586 (= tp!1844646 e!4064904)))

(assert (= (and b!6727586 ((_ is Cons!65841) (t!379650 s!2326))) b!6728323))

(declare-fun b_lambda!253303 () Bool)

(assert (= b_lambda!253293 (or b!6727573 b_lambda!253303)))

(declare-fun bs!1789480 () Bool)

(declare-fun d!2114047 () Bool)

(assert (= bs!1789480 (and d!2114047 b!6727573)))

(assert (=> bs!1789480 (= (dynLambda!26260 lambda!377481 lt!2437413) (derivationStepZipperUp!1709 lt!2437413 (h!72289 s!2326)))))

(assert (=> bs!1789480 m!7487072))

(assert (=> d!2113927 d!2114047))

(declare-fun b_lambda!253305 () Bool)

(assert (= b_lambda!253301 (or b!6727573 b_lambda!253305)))

(declare-fun bs!1789481 () Bool)

(declare-fun d!2114049 () Bool)

(assert (= bs!1789481 (and d!2114049 b!6727573)))

(assert (=> bs!1789481 (= (dynLambda!26260 lambda!377481 (h!72290 zl!343)) (derivationStepZipperUp!1709 (h!72290 zl!343) (h!72289 s!2326)))))

(assert (=> bs!1789481 m!7487060))

(assert (=> d!2114041 d!2114049))

(check-sat (not bs!1789480) (not b!6728318) (not d!2113973) (not bm!607543) (not d!2113979) (not b!6728285) (not d!2114005) (not d!2113971) (not b!6728134) (not bm!607557) (not b!6728225) (not b!6728296) (not b!6728187) (not b!6728132) (not bm!607540) (not b!6727995) (not b!6728137) (not b!6728146) (not d!2113977) (not d!2114035) (not b!6727817) (not d!2114041) (not b!6728190) (not b!6728300) (not b!6727940) (not b!6728155) (not b!6728195) (not d!2114045) (not bm!607547) (not b!6728138) (not b!6728217) (not d!2114003) (not b!6727948) (not d!2114013) (not b!6728136) (not d!2114001) (not b!6728258) (not b!6728306) (not d!2113981) (not b!6727756) (not b!6728298) (not b!6727820) (not b!6728218) (not b!6728287) (not b!6728283) (not b!6728158) (not bm!607521) (not bm!607492) (not b!6728305) (not bm!607555) (not b!6728295) (not b!6728263) (not b!6728219) (not b!6728221) (not b!6728234) (not b!6728188) (not b!6728282) (not b!6727996) (not b!6728183) (not setNonEmpty!45883) (not b!6728232) (not bm!607493) (not b!6728269) (not b!6728186) (not b_lambda!253303) (not b!6727994) (not b!6728313) (not b!6728226) (not bm!607537) (not b!6728135) (not b!6728281) (not bm!607497) (not b!6728286) (not d!2114015) (not b!6728299) (not b!6728189) (not d!2114017) (not bs!1789481) (not b!6728316) (not d!2114025) (not bm!607536) (not b!6728184) (not d!2113919) (not b!6728292) (not d!2114029) (not bm!607542) (not bm!607548) (not b!6728317) (not d!2113961) (not d!2114007) (not b!6728233) (not d!2114027) (not d!2114037) tp_is_empty!42363 (not d!2114031) (not d!2114021) (not b!6727999) (not d!2114019) (not b!6728220) (not b_lambda!253305) (not b!6728266) (not bm!607558) (not b!6727992) (not b!6727991) (not d!2113927) (not b!6728231) (not b!6728294) (not d!2114043) (not b!6728323) (not b!6728314))
(check-sat)
(get-model)

(declare-fun b!6728502 () Bool)

(declare-fun res!2752830 () Bool)

(declare-fun e!4065011 () Bool)

(assert (=> b!6728502 (=> (not res!2752830) (not e!4065011))))

(declare-fun lt!2437525 () List!65965)

(declare-fun size!40605 (List!65965) Int)

(assert (=> b!6728502 (= res!2752830 (= (size!40605 lt!2437525) (+ (size!40605 (_1!36833 (get!22904 lt!2437488))) (size!40605 (_2!36833 (get!22904 lt!2437488))))))))

(declare-fun b!6728500 () Bool)

(declare-fun e!4065010 () List!65965)

(assert (=> b!6728500 (= e!4065010 (_2!36833 (get!22904 lt!2437488)))))

(declare-fun d!2114115 () Bool)

(assert (=> d!2114115 e!4065011))

(declare-fun res!2752831 () Bool)

(assert (=> d!2114115 (=> (not res!2752831) (not e!4065011))))

(declare-fun content!12781 (List!65965) (InoxSet C!33380))

(assert (=> d!2114115 (= res!2752831 (= (content!12781 lt!2437525) ((_ map or) (content!12781 (_1!36833 (get!22904 lt!2437488))) (content!12781 (_2!36833 (get!22904 lt!2437488))))))))

(assert (=> d!2114115 (= lt!2437525 e!4065010)))

(declare-fun c!1247614 () Bool)

(assert (=> d!2114115 (= c!1247614 ((_ is Nil!65841) (_1!36833 (get!22904 lt!2437488))))))

(assert (=> d!2114115 (= (++!14711 (_1!36833 (get!22904 lt!2437488)) (_2!36833 (get!22904 lt!2437488))) lt!2437525)))

(declare-fun b!6728501 () Bool)

(assert (=> b!6728501 (= e!4065010 (Cons!65841 (h!72289 (_1!36833 (get!22904 lt!2437488))) (++!14711 (t!379650 (_1!36833 (get!22904 lt!2437488))) (_2!36833 (get!22904 lt!2437488)))))))

(declare-fun b!6728503 () Bool)

(assert (=> b!6728503 (= e!4065011 (or (not (= (_2!36833 (get!22904 lt!2437488)) Nil!65841)) (= lt!2437525 (_1!36833 (get!22904 lt!2437488)))))))

(assert (= (and d!2114115 c!1247614) b!6728500))

(assert (= (and d!2114115 (not c!1247614)) b!6728501))

(assert (= (and d!2114115 res!2752831) b!6728502))

(assert (= (and b!6728502 res!2752830) b!6728503))

(declare-fun m!7487718 () Bool)

(assert (=> b!6728502 m!7487718))

(declare-fun m!7487722 () Bool)

(assert (=> b!6728502 m!7487722))

(declare-fun m!7487726 () Bool)

(assert (=> b!6728502 m!7487726))

(declare-fun m!7487728 () Bool)

(assert (=> d!2114115 m!7487728))

(declare-fun m!7487730 () Bool)

(assert (=> d!2114115 m!7487730))

(declare-fun m!7487732 () Bool)

(assert (=> d!2114115 m!7487732))

(declare-fun m!7487736 () Bool)

(assert (=> b!6728501 m!7487736))

(assert (=> b!6728132 d!2114115))

(declare-fun d!2114137 () Bool)

(assert (=> d!2114137 (= (get!22904 lt!2437488) (v!52641 lt!2437488))))

(assert (=> b!6728132 d!2114137))

(declare-fun b!6728513 () Bool)

(declare-fun e!4065021 () (InoxSet Context!11878))

(assert (=> b!6728513 (= e!4065021 ((as const (Array Context!11878 Bool)) false))))

(declare-fun b!6728514 () Bool)

(declare-fun e!4065020 () (InoxSet Context!11878))

(declare-fun call!607603 () (InoxSet Context!11878))

(assert (=> b!6728514 (= e!4065020 ((_ map or) call!607603 (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))))) (h!72289 s!2326))))))

(declare-fun b!6728515 () Bool)

(assert (=> b!6728515 (= e!4065021 call!607603)))

(declare-fun bm!607598 () Bool)

(assert (=> bm!607598 (= call!607603 (derivationStepZipperDown!1783 (h!72288 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))) (Context!11879 (t!379649 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))))) (h!72289 s!2326)))))

(declare-fun d!2114141 () Bool)

(declare-fun c!1247617 () Bool)

(declare-fun e!4065019 () Bool)

(assert (=> d!2114141 (= c!1247617 e!4065019)))

(declare-fun res!2752837 () Bool)

(assert (=> d!2114141 (=> (not res!2752837) (not e!4065019))))

(assert (=> d!2114141 (= res!2752837 ((_ is Cons!65840) (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))))))

(assert (=> d!2114141 (= (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (h!72289 s!2326)) e!4065020)))

(declare-fun b!6728516 () Bool)

(assert (=> b!6728516 (= e!4065020 e!4065021)))

(declare-fun c!1247618 () Bool)

(assert (=> b!6728516 (= c!1247618 ((_ is Cons!65840) (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))))))

(declare-fun b!6728517 () Bool)

(assert (=> b!6728517 (= e!4065019 (nullable!6542 (h!72288 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))))))))

(assert (= (and d!2114141 res!2752837) b!6728517))

(assert (= (and d!2114141 c!1247617) b!6728514))

(assert (= (and d!2114141 (not c!1247617)) b!6728516))

(assert (= (and b!6728516 c!1247618) b!6728515))

(assert (= (and b!6728516 (not c!1247618)) b!6728513))

(assert (= (or b!6728514 b!6728515) bm!607598))

(declare-fun m!7487752 () Bool)

(assert (=> b!6728514 m!7487752))

(declare-fun m!7487754 () Bool)

(assert (=> bm!607598 m!7487754))

(declare-fun m!7487756 () Bool)

(assert (=> b!6728517 m!7487756))

(assert (=> b!6728155 d!2114141))

(declare-fun d!2114147 () Bool)

(assert (=> d!2114147 (= (isEmpty!38170 (t!379650 s!2326)) ((_ is Nil!65841) (t!379650 s!2326)))))

(assert (=> d!2114027 d!2114147))

(declare-fun bs!1789556 () Bool)

(declare-fun d!2114149 () Bool)

(assert (= bs!1789556 (and d!2114149 d!2114035)))

(declare-fun lambda!377577 () Int)

(assert (=> bs!1789556 (= lambda!377577 lambda!377558)))

(declare-fun bs!1789557 () Bool)

(assert (= bs!1789557 (and d!2114149 d!2114019)))

(assert (=> bs!1789557 (= lambda!377577 lambda!377553)))

(declare-fun bs!1789558 () Bool)

(assert (= bs!1789558 (and d!2114149 d!2114015)))

(assert (=> bs!1789558 (= lambda!377577 lambda!377547)))

(declare-fun bs!1789559 () Bool)

(assert (= bs!1789559 (and d!2114149 d!2114021)))

(assert (=> bs!1789559 (= lambda!377577 lambda!377556)))

(declare-fun bs!1789560 () Bool)

(assert (= bs!1789560 (and d!2114149 d!2114017)))

(assert (=> bs!1789560 (= lambda!377577 lambda!377550)))

(declare-fun bs!1789561 () Bool)

(assert (= bs!1789561 (and d!2114149 d!2114043)))

(assert (=> bs!1789561 (= lambda!377577 lambda!377559)))

(assert (=> d!2114149 (= (inv!84634 (h!72290 (t!379651 zl!343))) (forall!15755 (exprs!6439 (h!72290 (t!379651 zl!343))) lambda!377577))))

(declare-fun bs!1789562 () Bool)

(assert (= bs!1789562 d!2114149))

(declare-fun m!7487758 () Bool)

(assert (=> bs!1789562 m!7487758))

(assert (=> b!6728313 d!2114149))

(assert (=> d!2114041 d!2114037))

(declare-fun d!2114151 () Bool)

(assert (=> d!2114151 (= (flatMap!2036 z!1189 lambda!377481) (dynLambda!26260 lambda!377481 (h!72290 zl!343)))))

(assert (=> d!2114151 true))

(declare-fun _$13!4029 () Unit!159801)

(assert (=> d!2114151 (= (choose!50133 z!1189 (h!72290 zl!343) lambda!377481) _$13!4029)))

(declare-fun b_lambda!253315 () Bool)

(assert (=> (not b_lambda!253315) (not d!2114151)))

(declare-fun bs!1789563 () Bool)

(assert (= bs!1789563 d!2114151))

(assert (=> bs!1789563 m!7487058))

(assert (=> bs!1789563 m!7487494))

(assert (=> d!2114041 d!2114151))

(declare-fun d!2114155 () Bool)

(assert (=> d!2114155 (= ($colon$colon!2372 (exprs!6439 (Context!11879 Nil!65840)) (ite (or c!1247511 c!1247512) (regTwo!33622 r!7292) r!7292)) (Cons!65840 (ite (or c!1247511 c!1247512) (regTwo!33622 r!7292) r!7292) (exprs!6439 (Context!11879 Nil!65840))))))

(assert (=> bm!607547 d!2114155))

(assert (=> bs!1789481 d!2114039))

(declare-fun b!6728542 () Bool)

(declare-fun res!2752855 () Bool)

(declare-fun e!4065045 () Bool)

(assert (=> b!6728542 (=> res!2752855 e!4065045)))

(assert (=> b!6728542 (= res!2752855 (not ((_ is ElementMatch!16555) (derivativeStep!5227 r!7292 (head!13537 s!2326)))))))

(declare-fun e!4065041 () Bool)

(assert (=> b!6728542 (= e!4065041 e!4065045)))

(declare-fun b!6728543 () Bool)

(declare-fun lt!2437526 () Bool)

(assert (=> b!6728543 (= e!4065041 (not lt!2437526))))

(declare-fun b!6728544 () Bool)

(declare-fun e!4065043 () Bool)

(assert (=> b!6728544 (= e!4065045 e!4065043)))

(declare-fun res!2752851 () Bool)

(assert (=> b!6728544 (=> (not res!2752851) (not e!4065043))))

(assert (=> b!6728544 (= res!2752851 (not lt!2437526))))

(declare-fun b!6728545 () Bool)

(declare-fun res!2752854 () Bool)

(assert (=> b!6728545 (=> res!2752854 e!4065045)))

(declare-fun e!4065046 () Bool)

(assert (=> b!6728545 (= res!2752854 e!4065046)))

(declare-fun res!2752856 () Bool)

(assert (=> b!6728545 (=> (not res!2752856) (not e!4065046))))

(assert (=> b!6728545 (= res!2752856 lt!2437526)))

(declare-fun b!6728546 () Bool)

(declare-fun res!2752850 () Bool)

(assert (=> b!6728546 (=> (not res!2752850) (not e!4065046))))

(assert (=> b!6728546 (= res!2752850 (isEmpty!38170 (tail!12622 (tail!12622 s!2326))))))

(declare-fun b!6728547 () Bool)

(declare-fun e!4065040 () Bool)

(assert (=> b!6728547 (= e!4065040 (not (= (head!13537 (tail!12622 s!2326)) (c!1247365 (derivativeStep!5227 r!7292 (head!13537 s!2326))))))))

(declare-fun b!6728548 () Bool)

(declare-fun e!4065042 () Bool)

(declare-fun call!607609 () Bool)

(assert (=> b!6728548 (= e!4065042 (= lt!2437526 call!607609))))

(declare-fun b!6728549 () Bool)

(declare-fun e!4065044 () Bool)

(assert (=> b!6728549 (= e!4065044 (nullable!6542 (derivativeStep!5227 r!7292 (head!13537 s!2326))))))

(declare-fun b!6728550 () Bool)

(assert (=> b!6728550 (= e!4065046 (= (head!13537 (tail!12622 s!2326)) (c!1247365 (derivativeStep!5227 r!7292 (head!13537 s!2326)))))))

(declare-fun b!6728551 () Bool)

(declare-fun res!2752853 () Bool)

(assert (=> b!6728551 (=> res!2752853 e!4065040)))

(assert (=> b!6728551 (= res!2752853 (not (isEmpty!38170 (tail!12622 (tail!12622 s!2326)))))))

(declare-fun b!6728552 () Bool)

(declare-fun res!2752852 () Bool)

(assert (=> b!6728552 (=> (not res!2752852) (not e!4065046))))

(assert (=> b!6728552 (= res!2752852 (not call!607609))))

(declare-fun b!6728553 () Bool)

(assert (=> b!6728553 (= e!4065042 e!4065041)))

(declare-fun c!1247626 () Bool)

(assert (=> b!6728553 (= c!1247626 ((_ is EmptyLang!16555) (derivativeStep!5227 r!7292 (head!13537 s!2326))))))

(declare-fun b!6728554 () Bool)

(assert (=> b!6728554 (= e!4065044 (matchR!8738 (derivativeStep!5227 (derivativeStep!5227 r!7292 (head!13537 s!2326)) (head!13537 (tail!12622 s!2326))) (tail!12622 (tail!12622 s!2326))))))

(declare-fun b!6728555 () Bool)

(assert (=> b!6728555 (= e!4065043 e!4065040)))

(declare-fun res!2752857 () Bool)

(assert (=> b!6728555 (=> res!2752857 e!4065040)))

(assert (=> b!6728555 (= res!2752857 call!607609)))

(declare-fun bm!607604 () Bool)

(assert (=> bm!607604 (= call!607609 (isEmpty!38170 (tail!12622 s!2326)))))

(declare-fun d!2114161 () Bool)

(assert (=> d!2114161 e!4065042))

(declare-fun c!1247627 () Bool)

(assert (=> d!2114161 (= c!1247627 ((_ is EmptyExpr!16555) (derivativeStep!5227 r!7292 (head!13537 s!2326))))))

(assert (=> d!2114161 (= lt!2437526 e!4065044)))

(declare-fun c!1247625 () Bool)

(assert (=> d!2114161 (= c!1247625 (isEmpty!38170 (tail!12622 s!2326)))))

(assert (=> d!2114161 (validRegex!8291 (derivativeStep!5227 r!7292 (head!13537 s!2326)))))

(assert (=> d!2114161 (= (matchR!8738 (derivativeStep!5227 r!7292 (head!13537 s!2326)) (tail!12622 s!2326)) lt!2437526)))

(assert (= (and d!2114161 c!1247625) b!6728549))

(assert (= (and d!2114161 (not c!1247625)) b!6728554))

(assert (= (and d!2114161 c!1247627) b!6728548))

(assert (= (and d!2114161 (not c!1247627)) b!6728553))

(assert (= (and b!6728553 c!1247626) b!6728543))

(assert (= (and b!6728553 (not c!1247626)) b!6728542))

(assert (= (and b!6728542 (not res!2752855)) b!6728545))

(assert (= (and b!6728545 res!2752856) b!6728552))

(assert (= (and b!6728552 res!2752852) b!6728546))

(assert (= (and b!6728546 res!2752850) b!6728550))

(assert (= (and b!6728545 (not res!2752854)) b!6728544))

(assert (= (and b!6728544 res!2752851) b!6728555))

(assert (= (and b!6728555 (not res!2752857)) b!6728551))

(assert (= (and b!6728551 (not res!2752853)) b!6728547))

(assert (= (or b!6728548 b!6728555 b!6728552) bm!607604))

(assert (=> b!6728547 m!7487282))

(declare-fun m!7487780 () Bool)

(assert (=> b!6728547 m!7487780))

(assert (=> b!6728551 m!7487282))

(declare-fun m!7487782 () Bool)

(assert (=> b!6728551 m!7487782))

(assert (=> b!6728551 m!7487782))

(declare-fun m!7487784 () Bool)

(assert (=> b!6728551 m!7487784))

(assert (=> b!6728546 m!7487282))

(assert (=> b!6728546 m!7487782))

(assert (=> b!6728546 m!7487782))

(assert (=> b!6728546 m!7487784))

(assert (=> bm!607604 m!7487282))

(assert (=> bm!607604 m!7487284))

(assert (=> d!2114161 m!7487282))

(assert (=> d!2114161 m!7487284))

(assert (=> d!2114161 m!7487286))

(declare-fun m!7487786 () Bool)

(assert (=> d!2114161 m!7487786))

(assert (=> b!6728550 m!7487282))

(assert (=> b!6728550 m!7487780))

(assert (=> b!6728554 m!7487282))

(assert (=> b!6728554 m!7487780))

(assert (=> b!6728554 m!7487286))

(assert (=> b!6728554 m!7487780))

(declare-fun m!7487788 () Bool)

(assert (=> b!6728554 m!7487788))

(assert (=> b!6728554 m!7487282))

(assert (=> b!6728554 m!7487782))

(assert (=> b!6728554 m!7487788))

(assert (=> b!6728554 m!7487782))

(declare-fun m!7487792 () Bool)

(assert (=> b!6728554 m!7487792))

(assert (=> b!6728549 m!7487286))

(declare-fun m!7487794 () Bool)

(assert (=> b!6728549 m!7487794))

(assert (=> b!6727999 d!2114161))

(declare-fun c!1247643 () Bool)

(declare-fun bm!607616 () Bool)

(declare-fun call!607624 () Regex!16555)

(assert (=> bm!607616 (= call!607624 (derivativeStep!5227 (ite c!1247643 (regOne!33623 r!7292) (regOne!33622 r!7292)) (head!13537 s!2326)))))

(declare-fun d!2114167 () Bool)

(declare-fun lt!2437529 () Regex!16555)

(assert (=> d!2114167 (validRegex!8291 lt!2437529)))

(declare-fun e!4065068 () Regex!16555)

(assert (=> d!2114167 (= lt!2437529 e!4065068)))

(declare-fun c!1247642 () Bool)

(assert (=> d!2114167 (= c!1247642 (or ((_ is EmptyExpr!16555) r!7292) ((_ is EmptyLang!16555) r!7292)))))

(assert (=> d!2114167 (validRegex!8291 r!7292)))

(assert (=> d!2114167 (= (derivativeStep!5227 r!7292 (head!13537 s!2326)) lt!2437529)))

(declare-fun b!6728593 () Bool)

(declare-fun e!4065071 () Regex!16555)

(declare-fun call!607623 () Regex!16555)

(assert (=> b!6728593 (= e!4065071 (Union!16555 call!607624 call!607623))))

(declare-fun b!6728594 () Bool)

(declare-fun e!4065070 () Regex!16555)

(assert (=> b!6728594 (= e!4065070 (ite (= (head!13537 s!2326) (c!1247365 r!7292)) EmptyExpr!16555 EmptyLang!16555))))

(declare-fun b!6728595 () Bool)

(assert (=> b!6728595 (= e!4065068 EmptyLang!16555)))

(declare-fun bm!607617 () Bool)

(declare-fun call!607621 () Regex!16555)

(assert (=> bm!607617 (= call!607621 call!607623)))

(declare-fun call!607622 () Regex!16555)

(declare-fun b!6728596 () Bool)

(declare-fun e!4065069 () Regex!16555)

(assert (=> b!6728596 (= e!4065069 (Union!16555 (Concat!25400 call!607624 (regTwo!33622 r!7292)) call!607622))))

(declare-fun b!6728597 () Bool)

(declare-fun c!1247644 () Bool)

(assert (=> b!6728597 (= c!1247644 (nullable!6542 (regOne!33622 r!7292)))))

(declare-fun e!4065072 () Regex!16555)

(assert (=> b!6728597 (= e!4065072 e!4065069)))

(declare-fun b!6728598 () Bool)

(assert (=> b!6728598 (= e!4065071 e!4065072)))

(declare-fun c!1247646 () Bool)

(assert (=> b!6728598 (= c!1247646 ((_ is Star!16555) r!7292))))

(declare-fun bm!607618 () Bool)

(assert (=> bm!607618 (= call!607623 (derivativeStep!5227 (ite c!1247643 (regTwo!33623 r!7292) (ite c!1247646 (reg!16884 r!7292) (ite c!1247644 (regTwo!33622 r!7292) (regOne!33622 r!7292)))) (head!13537 s!2326)))))

(declare-fun b!6728599 () Bool)

(assert (=> b!6728599 (= c!1247643 ((_ is Union!16555) r!7292))))

(assert (=> b!6728599 (= e!4065070 e!4065071)))

(declare-fun b!6728600 () Bool)

(assert (=> b!6728600 (= e!4065068 e!4065070)))

(declare-fun c!1247645 () Bool)

(assert (=> b!6728600 (= c!1247645 ((_ is ElementMatch!16555) r!7292))))

(declare-fun b!6728601 () Bool)

(assert (=> b!6728601 (= e!4065069 (Union!16555 (Concat!25400 call!607622 (regTwo!33622 r!7292)) EmptyLang!16555))))

(declare-fun b!6728602 () Bool)

(assert (=> b!6728602 (= e!4065072 (Concat!25400 call!607621 r!7292))))

(declare-fun bm!607619 () Bool)

(assert (=> bm!607619 (= call!607622 call!607621)))

(assert (= (and d!2114167 c!1247642) b!6728595))

(assert (= (and d!2114167 (not c!1247642)) b!6728600))

(assert (= (and b!6728600 c!1247645) b!6728594))

(assert (= (and b!6728600 (not c!1247645)) b!6728599))

(assert (= (and b!6728599 c!1247643) b!6728593))

(assert (= (and b!6728599 (not c!1247643)) b!6728598))

(assert (= (and b!6728598 c!1247646) b!6728602))

(assert (= (and b!6728598 (not c!1247646)) b!6728597))

(assert (= (and b!6728597 c!1247644) b!6728596))

(assert (= (and b!6728597 (not c!1247644)) b!6728601))

(assert (= (or b!6728596 b!6728601) bm!607619))

(assert (= (or b!6728602 bm!607619) bm!607617))

(assert (= (or b!6728593 bm!607617) bm!607618))

(assert (= (or b!6728593 b!6728596) bm!607616))

(assert (=> bm!607616 m!7487280))

(declare-fun m!7487814 () Bool)

(assert (=> bm!607616 m!7487814))

(declare-fun m!7487816 () Bool)

(assert (=> d!2114167 m!7487816))

(assert (=> d!2114167 m!7487080))

(assert (=> b!6728597 m!7487396))

(assert (=> bm!607618 m!7487280))

(declare-fun m!7487818 () Bool)

(assert (=> bm!607618 m!7487818))

(assert (=> b!6727999 d!2114167))

(declare-fun d!2114183 () Bool)

(assert (=> d!2114183 (= (head!13537 s!2326) (h!72289 s!2326))))

(assert (=> b!6727999 d!2114183))

(declare-fun d!2114185 () Bool)

(assert (=> d!2114185 (= (tail!12622 s!2326) (t!379650 s!2326))))

(assert (=> b!6727999 d!2114185))

(declare-fun d!2114187 () Bool)

(assert (=> d!2114187 (= (Exists!3623 lambda!377531) (choose!50137 lambda!377531))))

(declare-fun bs!1789580 () Bool)

(assert (= bs!1789580 d!2114187))

(declare-fun m!7487820 () Bool)

(assert (=> bs!1789580 m!7487820))

(assert (=> d!2113981 d!2114187))

(declare-fun d!2114189 () Bool)

(assert (=> d!2114189 (= (Exists!3623 lambda!377532) (choose!50137 lambda!377532))))

(declare-fun bs!1789581 () Bool)

(assert (= bs!1789581 d!2114189))

(declare-fun m!7487822 () Bool)

(assert (=> bs!1789581 m!7487822))

(assert (=> d!2113981 d!2114189))

(declare-fun bs!1789587 () Bool)

(declare-fun d!2114191 () Bool)

(assert (= bs!1789587 (and d!2114191 b!6727945)))

(declare-fun lambda!377590 () Int)

(assert (=> bs!1789587 (not (= lambda!377590 lambda!377515))))

(declare-fun bs!1789589 () Bool)

(assert (= bs!1789589 (and d!2114191 d!2114003)))

(assert (=> bs!1789589 (not (= lambda!377590 lambda!377538))))

(declare-fun bs!1789591 () Bool)

(assert (= bs!1789591 (and d!2114191 b!6727947)))

(assert (=> bs!1789591 (not (= lambda!377590 lambda!377512))))

(declare-fun bs!1789593 () Bool)

(assert (= bs!1789593 (and d!2114191 d!2113981)))

(assert (=> bs!1789593 (not (= lambda!377590 lambda!377532))))

(declare-fun bs!1789595 () Bool)

(assert (= bs!1789595 (and d!2114191 d!2114007)))

(assert (=> bs!1789595 (= lambda!377590 lambda!377541)))

(assert (=> bs!1789589 (= (= r!7292 (Star!16555 (reg!16884 r!7292))) (= lambda!377590 lambda!377537))))

(declare-fun bs!1789597 () Bool)

(assert (= bs!1789597 (and d!2114191 b!6727590)))

(assert (=> bs!1789597 (not (= lambda!377590 lambda!377479))))

(assert (=> bs!1789593 (= lambda!377590 lambda!377531)))

(assert (=> bs!1789597 (= lambda!377590 lambda!377478)))

(assert (=> bs!1789597 (not (= lambda!377590 lambda!377480))))

(assert (=> d!2114191 true))

(assert (=> d!2114191 true))

(assert (=> d!2114191 true))

(declare-fun lambda!377591 () Int)

(assert (=> bs!1789587 (= (and (= (reg!16884 r!7292) (regOne!33622 r!7292)) (= r!7292 (regTwo!33622 r!7292))) (= lambda!377591 lambda!377515))))

(assert (=> bs!1789589 (not (= lambda!377591 lambda!377538))))

(assert (=> bs!1789591 (not (= lambda!377591 lambda!377512))))

(assert (=> bs!1789595 (not (= lambda!377591 lambda!377541))))

(assert (=> bs!1789589 (not (= lambda!377591 lambda!377537))))

(assert (=> bs!1789597 (not (= lambda!377591 lambda!377479))))

(assert (=> bs!1789593 (not (= lambda!377591 lambda!377531))))

(assert (=> bs!1789597 (not (= lambda!377591 lambda!377478))))

(assert (=> bs!1789597 (= lambda!377591 lambda!377480)))

(declare-fun bs!1789601 () Bool)

(assert (= bs!1789601 d!2114191))

(assert (=> bs!1789601 (not (= lambda!377591 lambda!377590))))

(assert (=> bs!1789593 (= lambda!377591 lambda!377532)))

(assert (=> d!2114191 true))

(assert (=> d!2114191 true))

(assert (=> d!2114191 true))

(assert (=> d!2114191 (= (Exists!3623 lambda!377590) (Exists!3623 lambda!377591))))

(assert (=> d!2114191 true))

(declare-fun _$90!2566 () Unit!159801)

(assert (=> d!2114191 (= (choose!50139 (reg!16884 r!7292) r!7292 s!2326) _$90!2566)))

(declare-fun m!7487824 () Bool)

(assert (=> bs!1789601 m!7487824))

(declare-fun m!7487826 () Bool)

(assert (=> bs!1789601 m!7487826))

(assert (=> d!2113981 d!2114191))

(declare-fun b!6728623 () Bool)

(declare-fun e!4065086 () Bool)

(declare-fun e!4065085 () Bool)

(assert (=> b!6728623 (= e!4065086 e!4065085)))

(declare-fun c!1247648 () Bool)

(assert (=> b!6728623 (= c!1247648 ((_ is Star!16555) (reg!16884 r!7292)))))

(declare-fun b!6728624 () Bool)

(declare-fun e!4065084 () Bool)

(assert (=> b!6728624 (= e!4065085 e!4065084)))

(declare-fun c!1247649 () Bool)

(assert (=> b!6728624 (= c!1247649 ((_ is Union!16555) (reg!16884 r!7292)))))

(declare-fun d!2114193 () Bool)

(declare-fun res!2752886 () Bool)

(assert (=> d!2114193 (=> res!2752886 e!4065086)))

(assert (=> d!2114193 (= res!2752886 ((_ is ElementMatch!16555) (reg!16884 r!7292)))))

(assert (=> d!2114193 (= (validRegex!8291 (reg!16884 r!7292)) e!4065086)))

(declare-fun b!6728625 () Bool)

(declare-fun res!2752888 () Bool)

(declare-fun e!4065082 () Bool)

(assert (=> b!6728625 (=> (not res!2752888) (not e!4065082))))

(declare-fun call!607625 () Bool)

(assert (=> b!6728625 (= res!2752888 call!607625)))

(assert (=> b!6728625 (= e!4065084 e!4065082)))

(declare-fun b!6728626 () Bool)

(declare-fun e!4065083 () Bool)

(declare-fun call!607626 () Bool)

(assert (=> b!6728626 (= e!4065083 call!607626)))

(declare-fun b!6728627 () Bool)

(declare-fun e!4065087 () Bool)

(declare-fun e!4065088 () Bool)

(assert (=> b!6728627 (= e!4065087 e!4065088)))

(declare-fun res!2752889 () Bool)

(assert (=> b!6728627 (=> (not res!2752889) (not e!4065088))))

(assert (=> b!6728627 (= res!2752889 call!607625)))

(declare-fun b!6728628 () Bool)

(assert (=> b!6728628 (= e!4065085 e!4065083)))

(declare-fun res!2752887 () Bool)

(assert (=> b!6728628 (= res!2752887 (not (nullable!6542 (reg!16884 (reg!16884 r!7292)))))))

(assert (=> b!6728628 (=> (not res!2752887) (not e!4065083))))

(declare-fun bm!607620 () Bool)

(assert (=> bm!607620 (= call!607625 (validRegex!8291 (ite c!1247649 (regOne!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))))))

(declare-fun bm!607621 () Bool)

(declare-fun call!607627 () Bool)

(assert (=> bm!607621 (= call!607627 call!607626)))

(declare-fun b!6728629 () Bool)

(assert (=> b!6728629 (= e!4065088 call!607627)))

(declare-fun b!6728630 () Bool)

(assert (=> b!6728630 (= e!4065082 call!607627)))

(declare-fun bm!607622 () Bool)

(assert (=> bm!607622 (= call!607626 (validRegex!8291 (ite c!1247648 (reg!16884 (reg!16884 r!7292)) (ite c!1247649 (regTwo!33623 (reg!16884 r!7292)) (regTwo!33622 (reg!16884 r!7292))))))))

(declare-fun b!6728631 () Bool)

(declare-fun res!2752885 () Bool)

(assert (=> b!6728631 (=> res!2752885 e!4065087)))

(assert (=> b!6728631 (= res!2752885 (not ((_ is Concat!25400) (reg!16884 r!7292))))))

(assert (=> b!6728631 (= e!4065084 e!4065087)))

(assert (= (and d!2114193 (not res!2752886)) b!6728623))

(assert (= (and b!6728623 c!1247648) b!6728628))

(assert (= (and b!6728623 (not c!1247648)) b!6728624))

(assert (= (and b!6728628 res!2752887) b!6728626))

(assert (= (and b!6728624 c!1247649) b!6728625))

(assert (= (and b!6728624 (not c!1247649)) b!6728631))

(assert (= (and b!6728625 res!2752888) b!6728630))

(assert (= (and b!6728631 (not res!2752885)) b!6728627))

(assert (= (and b!6728627 res!2752889) b!6728629))

(assert (= (or b!6728630 b!6728629) bm!607621))

(assert (= (or b!6728625 b!6728627) bm!607620))

(assert (= (or b!6728626 bm!607621) bm!607622))

(declare-fun m!7487832 () Bool)

(assert (=> b!6728628 m!7487832))

(declare-fun m!7487834 () Bool)

(assert (=> bm!607620 m!7487834))

(declare-fun m!7487836 () Bool)

(assert (=> bm!607622 m!7487836))

(assert (=> d!2113981 d!2114193))

(declare-fun d!2114197 () Bool)

(assert (=> d!2114197 (= (isEmpty!38174 (exprs!6439 (h!72290 zl!343))) ((_ is Nil!65840) (exprs!6439 (h!72290 zl!343))))))

(assert (=> b!6728217 d!2114197))

(declare-fun d!2114205 () Bool)

(assert (=> d!2114205 (= (isEmpty!38174 (t!379649 (unfocusZipperList!1976 zl!343))) ((_ is Nil!65840) (t!379649 (unfocusZipperList!1976 zl!343))))))

(assert (=> b!6728186 d!2114205))

(declare-fun c!1247650 () Bool)

(declare-fun d!2114207 () Bool)

(assert (=> d!2114207 (= c!1247650 (and ((_ is ElementMatch!16555) (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))) (= (c!1247365 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))) (h!72289 s!2326))))))

(declare-fun e!4065093 () (InoxSet Context!11878))

(assert (=> d!2114207 (= (derivationStepZipperDown!1783 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292)) (ite c!1247514 (Context!11879 Nil!65840) (Context!11879 call!607549)) (h!72289 s!2326)) e!4065093)))

(declare-fun b!6728636 () Bool)

(declare-fun e!4065095 () (InoxSet Context!11878))

(declare-fun call!607631 () (InoxSet Context!11878))

(declare-fun call!607629 () (InoxSet Context!11878))

(assert (=> b!6728636 (= e!4065095 ((_ map or) call!607631 call!607629))))

(declare-fun bm!607623 () Bool)

(declare-fun c!1247654 () Bool)

(declare-fun call!607630 () List!65964)

(assert (=> bm!607623 (= call!607629 (derivationStepZipperDown!1783 (ite c!1247654 (regTwo!33623 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))) (regOne!33622 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292)))) (ite c!1247654 (ite c!1247514 (Context!11879 Nil!65840) (Context!11879 call!607549)) (Context!11879 call!607630)) (h!72289 s!2326)))))

(declare-fun b!6728637 () Bool)

(declare-fun c!1247651 () Bool)

(declare-fun e!4065096 () Bool)

(assert (=> b!6728637 (= c!1247651 e!4065096)))

(declare-fun res!2752895 () Bool)

(assert (=> b!6728637 (=> (not res!2752895) (not e!4065096))))

(assert (=> b!6728637 (= res!2752895 ((_ is Concat!25400) (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))))))

(declare-fun e!4065097 () (InoxSet Context!11878))

(assert (=> b!6728637 (= e!4065095 e!4065097)))

(declare-fun call!607633 () List!65964)

(declare-fun c!1247652 () Bool)

(declare-fun bm!607624 () Bool)

(assert (=> bm!607624 (= call!607631 (derivationStepZipperDown!1783 (ite c!1247654 (regOne!33623 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))) (ite c!1247651 (regTwo!33622 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))) (ite c!1247652 (regOne!33622 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))) (reg!16884 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292)))))) (ite (or c!1247654 c!1247651) (ite c!1247514 (Context!11879 Nil!65840) (Context!11879 call!607549)) (Context!11879 call!607633)) (h!72289 s!2326)))))

(declare-fun b!6728638 () Bool)

(declare-fun c!1247653 () Bool)

(assert (=> b!6728638 (= c!1247653 ((_ is Star!16555) (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))))))

(declare-fun e!4065094 () (InoxSet Context!11878))

(declare-fun e!4065098 () (InoxSet Context!11878))

(assert (=> b!6728638 (= e!4065094 e!4065098)))

(declare-fun b!6728639 () Bool)

(assert (=> b!6728639 (= e!4065096 (nullable!6542 (regOne!33622 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292)))))))

(declare-fun bm!607625 () Bool)

(declare-fun call!607628 () (InoxSet Context!11878))

(declare-fun call!607632 () (InoxSet Context!11878))

(assert (=> bm!607625 (= call!607628 call!607632)))

(declare-fun b!6728640 () Bool)

(assert (=> b!6728640 (= e!4065097 ((_ map or) call!607629 call!607632))))

(declare-fun bm!607626 () Bool)

(assert (=> bm!607626 (= call!607633 call!607630)))

(declare-fun b!6728641 () Bool)

(assert (=> b!6728641 (= e!4065093 e!4065095)))

(assert (=> b!6728641 (= c!1247654 ((_ is Union!16555) (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))))))

(declare-fun bm!607627 () Bool)

(assert (=> bm!607627 (= call!607632 call!607631)))

(declare-fun b!6728642 () Bool)

(assert (=> b!6728642 (= e!4065097 e!4065094)))

(assert (=> b!6728642 (= c!1247652 ((_ is Concat!25400) (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))))))

(declare-fun bm!607628 () Bool)

(assert (=> bm!607628 (= call!607630 ($colon$colon!2372 (exprs!6439 (ite c!1247514 (Context!11879 Nil!65840) (Context!11879 call!607549))) (ite (or c!1247651 c!1247652) (regTwo!33622 (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292))) (ite c!1247514 (regTwo!33623 r!7292) (regOne!33622 r!7292)))))))

(declare-fun b!6728643 () Bool)

(assert (=> b!6728643 (= e!4065098 call!607628)))

(declare-fun b!6728644 () Bool)

(assert (=> b!6728644 (= e!4065094 call!607628)))

(declare-fun b!6728645 () Bool)

(assert (=> b!6728645 (= e!4065093 (store ((as const (Array Context!11878 Bool)) false) (ite c!1247514 (Context!11879 Nil!65840) (Context!11879 call!607549)) true))))

(declare-fun b!6728646 () Bool)

(assert (=> b!6728646 (= e!4065098 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2114207 c!1247650) b!6728645))

(assert (= (and d!2114207 (not c!1247650)) b!6728641))

(assert (= (and b!6728641 c!1247654) b!6728636))

(assert (= (and b!6728641 (not c!1247654)) b!6728637))

(assert (= (and b!6728637 res!2752895) b!6728639))

(assert (= (and b!6728637 c!1247651) b!6728640))

(assert (= (and b!6728637 (not c!1247651)) b!6728642))

(assert (= (and b!6728642 c!1247652) b!6728644))

(assert (= (and b!6728642 (not c!1247652)) b!6728638))

(assert (= (and b!6728638 c!1247653) b!6728643))

(assert (= (and b!6728638 (not c!1247653)) b!6728646))

(assert (= (or b!6728644 b!6728643) bm!607626))

(assert (= (or b!6728644 b!6728643) bm!607625))

(assert (= (or b!6728640 bm!607626) bm!607628))

(assert (= (or b!6728640 bm!607625) bm!607627))

(assert (= (or b!6728636 b!6728640) bm!607623))

(assert (= (or b!6728636 bm!607627) bm!607624))

(declare-fun m!7487846 () Bool)

(assert (=> bm!607623 m!7487846))

(declare-fun m!7487848 () Bool)

(assert (=> b!6728645 m!7487848))

(declare-fun m!7487850 () Bool)

(assert (=> b!6728639 m!7487850))

(declare-fun m!7487852 () Bool)

(assert (=> bm!607628 m!7487852))

(declare-fun m!7487854 () Bool)

(assert (=> bm!607624 m!7487854))

(assert (=> bm!607542 d!2114207))

(declare-fun d!2114211 () Bool)

(assert (=> d!2114211 (= (isEmpty!38174 (tail!12623 (exprs!6439 (h!72290 zl!343)))) ((_ is Nil!65840) (tail!12623 (exprs!6439 (h!72290 zl!343)))))))

(assert (=> b!6728219 d!2114211))

(declare-fun d!2114213 () Bool)

(assert (=> d!2114213 (= (tail!12623 (exprs!6439 (h!72290 zl!343))) (t!379649 (exprs!6439 (h!72290 zl!343))))))

(assert (=> b!6728219 d!2114213))

(declare-fun d!2114215 () Bool)

(assert (=> d!2114215 (= (isEmpty!38174 (tail!12623 (unfocusZipperList!1976 zl!343))) ((_ is Nil!65840) (tail!12623 (unfocusZipperList!1976 zl!343))))))

(assert (=> b!6728188 d!2114215))

(declare-fun d!2114217 () Bool)

(assert (=> d!2114217 (= (tail!12623 (unfocusZipperList!1976 zl!343)) (t!379649 (unfocusZipperList!1976 zl!343)))))

(assert (=> b!6728188 d!2114217))

(declare-fun d!2114219 () Bool)

(assert (=> d!2114219 true))

(assert (=> d!2114219 true))

(declare-fun res!2752906 () Bool)

(assert (=> d!2114219 (= (choose!50137 lambda!377478) res!2752906)))

(assert (=> d!2113977 d!2114219))

(declare-fun b!6728661 () Bool)

(declare-fun res!2752912 () Bool)

(declare-fun e!4065111 () Bool)

(assert (=> b!6728661 (=> res!2752912 e!4065111)))

(assert (=> b!6728661 (= res!2752912 (not ((_ is ElementMatch!16555) r!7292)))))

(declare-fun e!4065107 () Bool)

(assert (=> b!6728661 (= e!4065107 e!4065111)))

(declare-fun b!6728662 () Bool)

(declare-fun lt!2437531 () Bool)

(assert (=> b!6728662 (= e!4065107 (not lt!2437531))))

(declare-fun b!6728663 () Bool)

(declare-fun e!4065109 () Bool)

(assert (=> b!6728663 (= e!4065111 e!4065109)))

(declare-fun res!2752908 () Bool)

(assert (=> b!6728663 (=> (not res!2752908) (not e!4065109))))

(assert (=> b!6728663 (= res!2752908 (not lt!2437531))))

(declare-fun b!6728664 () Bool)

(declare-fun res!2752911 () Bool)

(assert (=> b!6728664 (=> res!2752911 e!4065111)))

(declare-fun e!4065112 () Bool)

(assert (=> b!6728664 (= res!2752911 e!4065112)))

(declare-fun res!2752913 () Bool)

(assert (=> b!6728664 (=> (not res!2752913) (not e!4065112))))

(assert (=> b!6728664 (= res!2752913 lt!2437531)))

(declare-fun b!6728665 () Bool)

(declare-fun res!2752907 () Bool)

(assert (=> b!6728665 (=> (not res!2752907) (not e!4065112))))

(assert (=> b!6728665 (= res!2752907 (isEmpty!38170 (tail!12622 (_2!36833 (get!22904 lt!2437488)))))))

(declare-fun b!6728666 () Bool)

(declare-fun e!4065106 () Bool)

(assert (=> b!6728666 (= e!4065106 (not (= (head!13537 (_2!36833 (get!22904 lt!2437488))) (c!1247365 r!7292))))))

(declare-fun b!6728667 () Bool)

(declare-fun e!4065108 () Bool)

(declare-fun call!607635 () Bool)

(assert (=> b!6728667 (= e!4065108 (= lt!2437531 call!607635))))

(declare-fun b!6728668 () Bool)

(declare-fun e!4065110 () Bool)

(assert (=> b!6728668 (= e!4065110 (nullable!6542 r!7292))))

(declare-fun b!6728669 () Bool)

(assert (=> b!6728669 (= e!4065112 (= (head!13537 (_2!36833 (get!22904 lt!2437488))) (c!1247365 r!7292)))))

(declare-fun b!6728670 () Bool)

(declare-fun res!2752910 () Bool)

(assert (=> b!6728670 (=> res!2752910 e!4065106)))

(assert (=> b!6728670 (= res!2752910 (not (isEmpty!38170 (tail!12622 (_2!36833 (get!22904 lt!2437488))))))))

(declare-fun b!6728671 () Bool)

(declare-fun res!2752909 () Bool)

(assert (=> b!6728671 (=> (not res!2752909) (not e!4065112))))

(assert (=> b!6728671 (= res!2752909 (not call!607635))))

(declare-fun b!6728672 () Bool)

(assert (=> b!6728672 (= e!4065108 e!4065107)))

(declare-fun c!1247659 () Bool)

(assert (=> b!6728672 (= c!1247659 ((_ is EmptyLang!16555) r!7292))))

(declare-fun b!6728673 () Bool)

(assert (=> b!6728673 (= e!4065110 (matchR!8738 (derivativeStep!5227 r!7292 (head!13537 (_2!36833 (get!22904 lt!2437488)))) (tail!12622 (_2!36833 (get!22904 lt!2437488)))))))

(declare-fun b!6728674 () Bool)

(assert (=> b!6728674 (= e!4065109 e!4065106)))

(declare-fun res!2752914 () Bool)

(assert (=> b!6728674 (=> res!2752914 e!4065106)))

(assert (=> b!6728674 (= res!2752914 call!607635)))

(declare-fun bm!607630 () Bool)

(assert (=> bm!607630 (= call!607635 (isEmpty!38170 (_2!36833 (get!22904 lt!2437488))))))

(declare-fun d!2114223 () Bool)

(assert (=> d!2114223 e!4065108))

(declare-fun c!1247660 () Bool)

(assert (=> d!2114223 (= c!1247660 ((_ is EmptyExpr!16555) r!7292))))

(assert (=> d!2114223 (= lt!2437531 e!4065110)))

(declare-fun c!1247658 () Bool)

(assert (=> d!2114223 (= c!1247658 (isEmpty!38170 (_2!36833 (get!22904 lt!2437488))))))

(assert (=> d!2114223 (validRegex!8291 r!7292)))

(assert (=> d!2114223 (= (matchR!8738 r!7292 (_2!36833 (get!22904 lt!2437488))) lt!2437531)))

(assert (= (and d!2114223 c!1247658) b!6728668))

(assert (= (and d!2114223 (not c!1247658)) b!6728673))

(assert (= (and d!2114223 c!1247660) b!6728667))

(assert (= (and d!2114223 (not c!1247660)) b!6728672))

(assert (= (and b!6728672 c!1247659) b!6728662))

(assert (= (and b!6728672 (not c!1247659)) b!6728661))

(assert (= (and b!6728661 (not res!2752912)) b!6728664))

(assert (= (and b!6728664 res!2752913) b!6728671))

(assert (= (and b!6728671 res!2752909) b!6728665))

(assert (= (and b!6728665 res!2752907) b!6728669))

(assert (= (and b!6728664 (not res!2752911)) b!6728663))

(assert (= (and b!6728663 res!2752908) b!6728674))

(assert (= (and b!6728674 (not res!2752914)) b!6728670))

(assert (= (and b!6728670 (not res!2752910)) b!6728666))

(assert (= (or b!6728667 b!6728674 b!6728671) bm!607630))

(declare-fun m!7487868 () Bool)

(assert (=> b!6728666 m!7487868))

(declare-fun m!7487870 () Bool)

(assert (=> b!6728670 m!7487870))

(assert (=> b!6728670 m!7487870))

(declare-fun m!7487872 () Bool)

(assert (=> b!6728670 m!7487872))

(assert (=> b!6728665 m!7487870))

(assert (=> b!6728665 m!7487870))

(assert (=> b!6728665 m!7487872))

(declare-fun m!7487874 () Bool)

(assert (=> bm!607630 m!7487874))

(assert (=> d!2114223 m!7487874))

(assert (=> d!2114223 m!7487080))

(assert (=> b!6728669 m!7487868))

(assert (=> b!6728673 m!7487868))

(assert (=> b!6728673 m!7487868))

(declare-fun m!7487878 () Bool)

(assert (=> b!6728673 m!7487878))

(assert (=> b!6728673 m!7487870))

(assert (=> b!6728673 m!7487878))

(assert (=> b!6728673 m!7487870))

(declare-fun m!7487880 () Bool)

(assert (=> b!6728673 m!7487880))

(assert (=> b!6728668 m!7487290))

(assert (=> b!6728138 d!2114223))

(assert (=> b!6728138 d!2114137))

(declare-fun d!2114231 () Bool)

(assert (=> d!2114231 (= (isEmpty!38174 (unfocusZipperList!1976 zl!343)) ((_ is Nil!65840) (unfocusZipperList!1976 zl!343)))))

(assert (=> b!6728184 d!2114231))

(declare-fun d!2114233 () Bool)

(assert (=> d!2114233 true))

(declare-fun setRes!45889 () Bool)

(assert (=> d!2114233 setRes!45889))

(declare-fun condSetEmpty!45889 () Bool)

(declare-fun res!2752917 () (InoxSet Context!11878))

(assert (=> d!2114233 (= condSetEmpty!45889 (= res!2752917 ((as const (Array Context!11878 Bool)) false)))))

(assert (=> d!2114233 (= (choose!50131 lt!2437420 lambda!377481) res!2752917)))

(declare-fun setIsEmpty!45889 () Bool)

(assert (=> setIsEmpty!45889 setRes!45889))

(declare-fun e!4065117 () Bool)

(declare-fun setElem!45889 () Context!11878)

(declare-fun tp!1844781 () Bool)

(declare-fun setNonEmpty!45889 () Bool)

(assert (=> setNonEmpty!45889 (= setRes!45889 (and tp!1844781 (inv!84634 setElem!45889) e!4065117))))

(declare-fun setRest!45889 () (InoxSet Context!11878))

(assert (=> setNonEmpty!45889 (= res!2752917 ((_ map or) (store ((as const (Array Context!11878 Bool)) false) setElem!45889 true) setRest!45889))))

(declare-fun b!6728679 () Bool)

(declare-fun tp!1844780 () Bool)

(assert (=> b!6728679 (= e!4065117 tp!1844780)))

(assert (= (and d!2114233 condSetEmpty!45889) setIsEmpty!45889))

(assert (= (and d!2114233 (not condSetEmpty!45889)) setNonEmpty!45889))

(assert (= setNonEmpty!45889 b!6728679))

(declare-fun m!7487884 () Bool)

(assert (=> setNonEmpty!45889 m!7487884))

(assert (=> d!2113919 d!2114233))

(declare-fun d!2114241 () Bool)

(assert (=> d!2114241 (= (isDefined!13145 lt!2437488) (not (isEmpty!38173 lt!2437488)))))

(declare-fun bs!1789605 () Bool)

(assert (= bs!1789605 d!2114241))

(declare-fun m!7487886 () Bool)

(assert (=> bs!1789605 m!7487886))

(assert (=> b!6728134 d!2114241))

(declare-fun d!2114243 () Bool)

(declare-fun c!1247661 () Bool)

(assert (=> d!2114243 (= c!1247661 (and ((_ is ElementMatch!16555) (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (= (c!1247365 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (h!72289 s!2326))))))

(declare-fun e!4065120 () (InoxSet Context!11878))

(assert (=> d!2114243 (= (derivationStepZipperDown!1783 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))) (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (h!72289 s!2326)) e!4065120)))

(declare-fun b!6728682 () Bool)

(declare-fun e!4065122 () (InoxSet Context!11878))

(declare-fun call!607639 () (InoxSet Context!11878))

(declare-fun call!607637 () (InoxSet Context!11878))

(assert (=> b!6728682 (= e!4065122 ((_ map or) call!607639 call!607637))))

(declare-fun bm!607631 () Bool)

(declare-fun call!607638 () List!65964)

(declare-fun c!1247665 () Bool)

(assert (=> bm!607631 (= call!607637 (derivationStepZipperDown!1783 (ite c!1247665 (regTwo!33623 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (regOne!33622 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))) (ite c!1247665 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (Context!11879 call!607638)) (h!72289 s!2326)))))

(declare-fun b!6728683 () Bool)

(declare-fun c!1247662 () Bool)

(declare-fun e!4065123 () Bool)

(assert (=> b!6728683 (= c!1247662 e!4065123)))

(declare-fun res!2752922 () Bool)

(assert (=> b!6728683 (=> (not res!2752922) (not e!4065123))))

(assert (=> b!6728683 (= res!2752922 ((_ is Concat!25400) (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))))

(declare-fun e!4065124 () (InoxSet Context!11878))

(assert (=> b!6728683 (= e!4065122 e!4065124)))

(declare-fun bm!607632 () Bool)

(declare-fun c!1247663 () Bool)

(declare-fun call!607641 () List!65964)

(assert (=> bm!607632 (= call!607639 (derivationStepZipperDown!1783 (ite c!1247665 (regOne!33623 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (ite c!1247662 (regTwo!33622 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (ite c!1247663 (regOne!33622 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (reg!16884 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))))) (ite (or c!1247665 c!1247662) (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (Context!11879 call!607641)) (h!72289 s!2326)))))

(declare-fun b!6728684 () Bool)

(declare-fun c!1247664 () Bool)

(assert (=> b!6728684 (= c!1247664 ((_ is Star!16555) (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))))

(declare-fun e!4065121 () (InoxSet Context!11878))

(declare-fun e!4065125 () (InoxSet Context!11878))

(assert (=> b!6728684 (= e!4065121 e!4065125)))

(declare-fun b!6728685 () Bool)

(assert (=> b!6728685 (= e!4065123 (nullable!6542 (regOne!33622 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))))))

(declare-fun bm!607633 () Bool)

(declare-fun call!607636 () (InoxSet Context!11878))

(declare-fun call!607640 () (InoxSet Context!11878))

(assert (=> bm!607633 (= call!607636 call!607640)))

(declare-fun b!6728686 () Bool)

(assert (=> b!6728686 (= e!4065124 ((_ map or) call!607637 call!607640))))

(declare-fun bm!607634 () Bool)

(assert (=> bm!607634 (= call!607641 call!607638)))

(declare-fun b!6728687 () Bool)

(assert (=> b!6728687 (= e!4065120 e!4065122)))

(assert (=> b!6728687 (= c!1247665 ((_ is Union!16555) (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))))

(declare-fun bm!607635 () Bool)

(assert (=> bm!607635 (= call!607640 call!607639)))

(declare-fun b!6728688 () Bool)

(assert (=> b!6728688 (= e!4065124 e!4065121)))

(assert (=> b!6728688 (= c!1247663 ((_ is Concat!25400) (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))))

(declare-fun bm!607636 () Bool)

(assert (=> bm!607636 (= call!607638 ($colon$colon!2372 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))) (ite (or c!1247662 c!1247663) (regTwo!33622 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840)))))))))

(declare-fun b!6728689 () Bool)

(assert (=> b!6728689 (= e!4065125 call!607636)))

(declare-fun b!6728690 () Bool)

(assert (=> b!6728690 (= e!4065121 call!607636)))

(declare-fun b!6728691 () Bool)

(assert (=> b!6728691 (= e!4065120 (store ((as const (Array Context!11878 Bool)) false) (Context!11879 (t!379649 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) true))))

(declare-fun b!6728692 () Bool)

(assert (=> b!6728692 (= e!4065125 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2114243 c!1247661) b!6728691))

(assert (= (and d!2114243 (not c!1247661)) b!6728687))

(assert (= (and b!6728687 c!1247665) b!6728682))

(assert (= (and b!6728687 (not c!1247665)) b!6728683))

(assert (= (and b!6728683 res!2752922) b!6728685))

(assert (= (and b!6728683 c!1247662) b!6728686))

(assert (= (and b!6728683 (not c!1247662)) b!6728688))

(assert (= (and b!6728688 c!1247663) b!6728690))

(assert (= (and b!6728688 (not c!1247663)) b!6728684))

(assert (= (and b!6728684 c!1247664) b!6728689))

(assert (= (and b!6728684 (not c!1247664)) b!6728692))

(assert (= (or b!6728690 b!6728689) bm!607634))

(assert (= (or b!6728690 b!6728689) bm!607633))

(assert (= (or b!6728686 bm!607634) bm!607636))

(assert (= (or b!6728686 bm!607633) bm!607635))

(assert (= (or b!6728682 b!6728686) bm!607631))

(assert (= (or b!6728682 bm!607635) bm!607632))

(declare-fun m!7487892 () Bool)

(assert (=> bm!607631 m!7487892))

(declare-fun m!7487894 () Bool)

(assert (=> b!6728691 m!7487894))

(declare-fun m!7487896 () Bool)

(assert (=> b!6728685 m!7487896))

(declare-fun m!7487898 () Bool)

(assert (=> bm!607636 m!7487898))

(declare-fun m!7487900 () Bool)

(assert (=> bm!607632 m!7487900))

(assert (=> bm!607548 d!2114243))

(declare-fun d!2114247 () Bool)

(declare-fun res!2752936 () Bool)

(declare-fun e!4065147 () Bool)

(assert (=> d!2114247 (=> res!2752936 e!4065147)))

(assert (=> d!2114247 (= res!2752936 ((_ is Nil!65842) lt!2437508))))

(assert (=> d!2114247 (= (noDuplicate!2348 lt!2437508) e!4065147)))

(declare-fun b!6728719 () Bool)

(declare-fun e!4065148 () Bool)

(assert (=> b!6728719 (= e!4065147 e!4065148)))

(declare-fun res!2752937 () Bool)

(assert (=> b!6728719 (=> (not res!2752937) (not e!4065148))))

(declare-fun contains!20252 (List!65966 Context!11878) Bool)

(assert (=> b!6728719 (= res!2752937 (not (contains!20252 (t!379651 lt!2437508) (h!72290 lt!2437508))))))

(declare-fun b!6728720 () Bool)

(assert (=> b!6728720 (= e!4065148 (noDuplicate!2348 (t!379651 lt!2437508)))))

(assert (= (and d!2114247 (not res!2752936)) b!6728719))

(assert (= (and b!6728719 res!2752937) b!6728720))

(declare-fun m!7487908 () Bool)

(assert (=> b!6728719 m!7487908))

(declare-fun m!7487910 () Bool)

(assert (=> b!6728720 m!7487910))

(assert (=> d!2114045 d!2114247))

(declare-fun d!2114251 () Bool)

(declare-fun e!4065156 () Bool)

(assert (=> d!2114251 e!4065156))

(declare-fun res!2752943 () Bool)

(assert (=> d!2114251 (=> (not res!2752943) (not e!4065156))))

(declare-fun res!2752942 () List!65966)

(assert (=> d!2114251 (= res!2752943 (noDuplicate!2348 res!2752942))))

(declare-fun e!4065158 () Bool)

(assert (=> d!2114251 e!4065158))

(assert (=> d!2114251 (= (choose!50142 z!1189) res!2752942)))

(declare-fun b!6728730 () Bool)

(declare-fun e!4065157 () Bool)

(declare-fun tp!1844793 () Bool)

(assert (=> b!6728730 (= e!4065157 tp!1844793)))

(declare-fun b!6728729 () Bool)

(declare-fun tp!1844792 () Bool)

(assert (=> b!6728729 (= e!4065158 (and (inv!84634 (h!72290 res!2752942)) e!4065157 tp!1844792))))

(declare-fun b!6728731 () Bool)

(assert (=> b!6728731 (= e!4065156 (= (content!12779 res!2752942) z!1189))))

(assert (= b!6728729 b!6728730))

(assert (= (and d!2114251 ((_ is Cons!65842) res!2752942)) b!6728729))

(assert (= (and d!2114251 res!2752943) b!6728731))

(declare-fun m!7487936 () Bool)

(assert (=> d!2114251 m!7487936))

(declare-fun m!7487938 () Bool)

(assert (=> b!6728729 m!7487938))

(declare-fun m!7487940 () Bool)

(assert (=> b!6728731 m!7487940))

(assert (=> d!2114045 d!2114251))

(declare-fun b!6728732 () Bool)

(declare-fun res!2752950 () Bool)

(declare-fun e!4065164 () Bool)

(assert (=> b!6728732 (=> res!2752950 e!4065164)))

(assert (=> b!6728732 (= res!2752950 (not ((_ is ElementMatch!16555) (reg!16884 r!7292))))))

(declare-fun e!4065160 () Bool)

(assert (=> b!6728732 (= e!4065160 e!4065164)))

(declare-fun b!6728733 () Bool)

(declare-fun lt!2437532 () Bool)

(assert (=> b!6728733 (= e!4065160 (not lt!2437532))))

(declare-fun b!6728734 () Bool)

(declare-fun e!4065162 () Bool)

(assert (=> b!6728734 (= e!4065164 e!4065162)))

(declare-fun res!2752945 () Bool)

(assert (=> b!6728734 (=> (not res!2752945) (not e!4065162))))

(assert (=> b!6728734 (= res!2752945 (not lt!2437532))))

(declare-fun b!6728735 () Bool)

(declare-fun res!2752948 () Bool)

(assert (=> b!6728735 (=> res!2752948 e!4065164)))

(declare-fun e!4065166 () Bool)

(assert (=> b!6728735 (= res!2752948 e!4065166)))

(declare-fun res!2752951 () Bool)

(assert (=> b!6728735 (=> (not res!2752951) (not e!4065166))))

(assert (=> b!6728735 (= res!2752951 lt!2437532)))

(declare-fun b!6728736 () Bool)

(declare-fun res!2752944 () Bool)

(assert (=> b!6728736 (=> (not res!2752944) (not e!4065166))))

(assert (=> b!6728736 (= res!2752944 (isEmpty!38170 (tail!12622 (_1!36833 (get!22904 lt!2437488)))))))

(declare-fun b!6728737 () Bool)

(declare-fun e!4065159 () Bool)

(assert (=> b!6728737 (= e!4065159 (not (= (head!13537 (_1!36833 (get!22904 lt!2437488))) (c!1247365 (reg!16884 r!7292)))))))

(declare-fun b!6728738 () Bool)

(declare-fun e!4065161 () Bool)

(declare-fun call!607648 () Bool)

(assert (=> b!6728738 (= e!4065161 (= lt!2437532 call!607648))))

(declare-fun b!6728739 () Bool)

(declare-fun e!4065163 () Bool)

(assert (=> b!6728739 (= e!4065163 (nullable!6542 (reg!16884 r!7292)))))

(declare-fun b!6728740 () Bool)

(assert (=> b!6728740 (= e!4065166 (= (head!13537 (_1!36833 (get!22904 lt!2437488))) (c!1247365 (reg!16884 r!7292))))))

(declare-fun b!6728741 () Bool)

(declare-fun res!2752947 () Bool)

(assert (=> b!6728741 (=> res!2752947 e!4065159)))

(assert (=> b!6728741 (= res!2752947 (not (isEmpty!38170 (tail!12622 (_1!36833 (get!22904 lt!2437488))))))))

(declare-fun b!6728742 () Bool)

(declare-fun res!2752946 () Bool)

(assert (=> b!6728742 (=> (not res!2752946) (not e!4065166))))

(assert (=> b!6728742 (= res!2752946 (not call!607648))))

(declare-fun b!6728743 () Bool)

(assert (=> b!6728743 (= e!4065161 e!4065160)))

(declare-fun c!1247673 () Bool)

(assert (=> b!6728743 (= c!1247673 ((_ is EmptyLang!16555) (reg!16884 r!7292)))))

(declare-fun b!6728746 () Bool)

(assert (=> b!6728746 (= e!4065163 (matchR!8738 (derivativeStep!5227 (reg!16884 r!7292) (head!13537 (_1!36833 (get!22904 lt!2437488)))) (tail!12622 (_1!36833 (get!22904 lt!2437488)))))))

(declare-fun b!6728748 () Bool)

(assert (=> b!6728748 (= e!4065162 e!4065159)))

(declare-fun res!2752952 () Bool)

(assert (=> b!6728748 (=> res!2752952 e!4065159)))

(assert (=> b!6728748 (= res!2752952 call!607648)))

(declare-fun bm!607643 () Bool)

(assert (=> bm!607643 (= call!607648 (isEmpty!38170 (_1!36833 (get!22904 lt!2437488))))))

(declare-fun d!2114265 () Bool)

(assert (=> d!2114265 e!4065161))

(declare-fun c!1247674 () Bool)

(assert (=> d!2114265 (= c!1247674 ((_ is EmptyExpr!16555) (reg!16884 r!7292)))))

(assert (=> d!2114265 (= lt!2437532 e!4065163)))

(declare-fun c!1247672 () Bool)

(assert (=> d!2114265 (= c!1247672 (isEmpty!38170 (_1!36833 (get!22904 lt!2437488))))))

(assert (=> d!2114265 (validRegex!8291 (reg!16884 r!7292))))

(assert (=> d!2114265 (= (matchR!8738 (reg!16884 r!7292) (_1!36833 (get!22904 lt!2437488))) lt!2437532)))

(assert (= (and d!2114265 c!1247672) b!6728739))

(assert (= (and d!2114265 (not c!1247672)) b!6728746))

(assert (= (and d!2114265 c!1247674) b!6728738))

(assert (= (and d!2114265 (not c!1247674)) b!6728743))

(assert (= (and b!6728743 c!1247673) b!6728733))

(assert (= (and b!6728743 (not c!1247673)) b!6728732))

(assert (= (and b!6728732 (not res!2752950)) b!6728735))

(assert (= (and b!6728735 res!2752951) b!6728742))

(assert (= (and b!6728742 res!2752946) b!6728736))

(assert (= (and b!6728736 res!2752944) b!6728740))

(assert (= (and b!6728735 (not res!2752948)) b!6728734))

(assert (= (and b!6728734 res!2752945) b!6728748))

(assert (= (and b!6728748 (not res!2752952)) b!6728741))

(assert (= (and b!6728741 (not res!2752947)) b!6728737))

(assert (= (or b!6728738 b!6728748 b!6728742) bm!607643))

(declare-fun m!7487942 () Bool)

(assert (=> b!6728737 m!7487942))

(declare-fun m!7487946 () Bool)

(assert (=> b!6728741 m!7487946))

(assert (=> b!6728741 m!7487946))

(declare-fun m!7487952 () Bool)

(assert (=> b!6728741 m!7487952))

(assert (=> b!6728736 m!7487946))

(assert (=> b!6728736 m!7487946))

(assert (=> b!6728736 m!7487952))

(declare-fun m!7487956 () Bool)

(assert (=> bm!607643 m!7487956))

(assert (=> d!2114265 m!7487956))

(assert (=> d!2114265 m!7487358))

(assert (=> b!6728740 m!7487942))

(assert (=> b!6728746 m!7487942))

(assert (=> b!6728746 m!7487942))

(declare-fun m!7487960 () Bool)

(assert (=> b!6728746 m!7487960))

(assert (=> b!6728746 m!7487946))

(assert (=> b!6728746 m!7487960))

(assert (=> b!6728746 m!7487946))

(declare-fun m!7487964 () Bool)

(assert (=> b!6728746 m!7487964))

(assert (=> b!6728739 m!7487478))

(assert (=> b!6728136 d!2114265))

(assert (=> b!6728136 d!2114137))

(declare-fun d!2114269 () Bool)

(declare-fun nullableFct!2456 (Regex!16555) Bool)

(assert (=> d!2114269 (= (nullable!6542 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))) (nullableFct!2456 (h!72288 (exprs!6439 (Context!11879 (Cons!65840 r!7292 Nil!65840))))))))

(declare-fun bs!1789610 () Bool)

(assert (= bs!1789610 d!2114269))

(declare-fun m!7487968 () Bool)

(assert (=> bs!1789610 m!7487968))

(assert (=> b!6728158 d!2114269))

(declare-fun d!2114273 () Bool)

(declare-fun c!1247678 () Bool)

(assert (=> d!2114273 (= c!1247678 (isEmpty!38170 (tail!12622 (t!379650 s!2326))))))

(declare-fun e!4065173 () Bool)

(assert (=> d!2114273 (= (matchZipper!2541 (derivationStepZipper!2499 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) (head!13537 (t!379650 s!2326))) (tail!12622 (t!379650 s!2326))) e!4065173)))

(declare-fun b!6728760 () Bool)

(assert (=> b!6728760 (= e!4065173 (nullableZipper!2270 (derivationStepZipper!2499 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) (head!13537 (t!379650 s!2326)))))))

(declare-fun b!6728761 () Bool)

(assert (=> b!6728761 (= e!4065173 (matchZipper!2541 (derivationStepZipper!2499 (derivationStepZipper!2499 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) (head!13537 (t!379650 s!2326))) (head!13537 (tail!12622 (t!379650 s!2326)))) (tail!12622 (tail!12622 (t!379650 s!2326)))))))

(assert (= (and d!2114273 c!1247678) b!6728760))

(assert (= (and d!2114273 (not c!1247678)) b!6728761))

(assert (=> d!2114273 m!7487470))

(declare-fun m!7487970 () Bool)

(assert (=> d!2114273 m!7487970))

(assert (=> b!6728760 m!7487468))

(declare-fun m!7487972 () Bool)

(assert (=> b!6728760 m!7487972))

(assert (=> b!6728761 m!7487470))

(declare-fun m!7487974 () Bool)

(assert (=> b!6728761 m!7487974))

(assert (=> b!6728761 m!7487468))

(assert (=> b!6728761 m!7487974))

(declare-fun m!7487976 () Bool)

(assert (=> b!6728761 m!7487976))

(assert (=> b!6728761 m!7487470))

(declare-fun m!7487978 () Bool)

(assert (=> b!6728761 m!7487978))

(assert (=> b!6728761 m!7487976))

(assert (=> b!6728761 m!7487978))

(declare-fun m!7487980 () Bool)

(assert (=> b!6728761 m!7487980))

(assert (=> b!6728234 d!2114273))

(declare-fun bs!1789611 () Bool)

(declare-fun d!2114275 () Bool)

(assert (= bs!1789611 (and d!2114275 b!6727573)))

(declare-fun lambda!377594 () Int)

(assert (=> bs!1789611 (= (= (head!13537 (t!379650 s!2326)) (h!72289 s!2326)) (= lambda!377594 lambda!377481))))

(declare-fun bs!1789612 () Bool)

(assert (= bs!1789612 (and d!2114275 d!2114013)))

(assert (=> bs!1789612 (= (= (head!13537 (t!379650 s!2326)) (h!72289 s!2326)) (= lambda!377594 lambda!377544))))

(declare-fun bs!1789613 () Bool)

(assert (= bs!1789613 (and d!2114275 d!2114029)))

(assert (=> bs!1789613 (= (= (head!13537 (t!379650 s!2326)) (h!72289 s!2326)) (= lambda!377594 lambda!377557))))

(assert (=> d!2114275 true))

(assert (=> d!2114275 (= (derivationStepZipper!2499 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) (head!13537 (t!379650 s!2326))) (flatMap!2036 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) lambda!377594))))

(declare-fun bs!1789614 () Bool)

(assert (= bs!1789614 d!2114275))

(assert (=> bs!1789614 m!7487066))

(declare-fun m!7487982 () Bool)

(assert (=> bs!1789614 m!7487982))

(assert (=> b!6728234 d!2114275))

(declare-fun d!2114277 () Bool)

(assert (=> d!2114277 (= (head!13537 (t!379650 s!2326)) (h!72289 (t!379650 s!2326)))))

(assert (=> b!6728234 d!2114277))

(declare-fun d!2114279 () Bool)

(assert (=> d!2114279 (= (tail!12622 (t!379650 s!2326)) (t!379650 (t!379650 s!2326)))))

(assert (=> b!6728234 d!2114279))

(assert (=> d!2113927 d!2113919))

(declare-fun d!2114281 () Bool)

(assert (=> d!2114281 (= (flatMap!2036 lt!2437420 lambda!377481) (dynLambda!26260 lambda!377481 lt!2437413))))

(assert (=> d!2114281 true))

(declare-fun _$13!4030 () Unit!159801)

(assert (=> d!2114281 (= (choose!50133 lt!2437420 lt!2437413 lambda!377481) _$13!4030)))

(declare-fun b_lambda!253321 () Bool)

(assert (=> (not b_lambda!253321) (not d!2114281)))

(declare-fun bs!1789615 () Bool)

(assert (= bs!1789615 d!2114281))

(assert (=> bs!1789615 m!7487078))

(assert (=> bs!1789615 m!7487182))

(assert (=> d!2113927 d!2114281))

(assert (=> b!6728195 d!2114019))

(declare-fun bs!1789616 () Bool)

(declare-fun d!2114283 () Bool)

(assert (= bs!1789616 (and d!2114283 d!2114035)))

(declare-fun lambda!377595 () Int)

(assert (=> bs!1789616 (= lambda!377595 lambda!377558)))

(declare-fun bs!1789617 () Bool)

(assert (= bs!1789617 (and d!2114283 d!2114019)))

(assert (=> bs!1789617 (= lambda!377595 lambda!377553)))

(declare-fun bs!1789618 () Bool)

(assert (= bs!1789618 (and d!2114283 d!2114015)))

(assert (=> bs!1789618 (= lambda!377595 lambda!377547)))

(declare-fun bs!1789619 () Bool)

(assert (= bs!1789619 (and d!2114283 d!2114021)))

(assert (=> bs!1789619 (= lambda!377595 lambda!377556)))

(declare-fun bs!1789620 () Bool)

(assert (= bs!1789620 (and d!2114283 d!2114017)))

(assert (=> bs!1789620 (= lambda!377595 lambda!377550)))

(declare-fun bs!1789621 () Bool)

(assert (= bs!1789621 (and d!2114283 d!2114149)))

(assert (=> bs!1789621 (= lambda!377595 lambda!377577)))

(declare-fun bs!1789622 () Bool)

(assert (= bs!1789622 (and d!2114283 d!2114043)))

(assert (=> bs!1789622 (= lambda!377595 lambda!377559)))

(declare-fun lt!2437534 () List!65964)

(assert (=> d!2114283 (forall!15755 lt!2437534 lambda!377595)))

(declare-fun e!4065174 () List!65964)

(assert (=> d!2114283 (= lt!2437534 e!4065174)))

(declare-fun c!1247679 () Bool)

(assert (=> d!2114283 (= c!1247679 ((_ is Cons!65842) (t!379651 zl!343)))))

(assert (=> d!2114283 (= (unfocusZipperList!1976 (t!379651 zl!343)) lt!2437534)))

(declare-fun b!6728762 () Bool)

(assert (=> b!6728762 (= e!4065174 (Cons!65840 (generalisedConcat!2152 (exprs!6439 (h!72290 (t!379651 zl!343)))) (unfocusZipperList!1976 (t!379651 (t!379651 zl!343)))))))

(declare-fun b!6728763 () Bool)

(assert (=> b!6728763 (= e!4065174 Nil!65840)))

(assert (= (and d!2114283 c!1247679) b!6728762))

(assert (= (and d!2114283 (not c!1247679)) b!6728763))

(declare-fun m!7487984 () Bool)

(assert (=> d!2114283 m!7487984))

(declare-fun m!7487986 () Bool)

(assert (=> b!6728762 m!7487986))

(declare-fun m!7487988 () Bool)

(assert (=> b!6728762 m!7487988))

(assert (=> b!6728195 d!2114283))

(declare-fun b!6728764 () Bool)

(declare-fun e!4065177 () (InoxSet Context!11878))

(assert (=> b!6728764 (= e!4065177 ((as const (Array Context!11878 Bool)) false))))

(declare-fun e!4065176 () (InoxSet Context!11878))

(declare-fun call!607650 () (InoxSet Context!11878))

(declare-fun b!6728765 () Bool)

(assert (=> b!6728765 (= e!4065176 ((_ map or) call!607650 (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343))))))) (h!72289 s!2326))))))

(declare-fun b!6728766 () Bool)

(assert (=> b!6728766 (= e!4065177 call!607650)))

(declare-fun bm!607645 () Bool)

(assert (=> bm!607645 (= call!607650 (derivationStepZipperDown!1783 (h!72288 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))))) (Context!11879 (t!379649 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343))))))) (h!72289 s!2326)))))

(declare-fun d!2114285 () Bool)

(declare-fun c!1247680 () Bool)

(declare-fun e!4065175 () Bool)

(assert (=> d!2114285 (= c!1247680 e!4065175)))

(declare-fun res!2752960 () Bool)

(assert (=> d!2114285 (=> (not res!2752960) (not e!4065175))))

(assert (=> d!2114285 (= res!2752960 ((_ is Cons!65840) (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))))))))

(assert (=> d!2114285 (= (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))) (h!72289 s!2326)) e!4065176)))

(declare-fun b!6728767 () Bool)

(assert (=> b!6728767 (= e!4065176 e!4065177)))

(declare-fun c!1247681 () Bool)

(assert (=> b!6728767 (= c!1247681 ((_ is Cons!65840) (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))))))))

(declare-fun b!6728768 () Bool)

(assert (=> b!6728768 (= e!4065175 (nullable!6542 (h!72288 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343))))))))))

(assert (= (and d!2114285 res!2752960) b!6728768))

(assert (= (and d!2114285 c!1247680) b!6728765))

(assert (= (and d!2114285 (not c!1247680)) b!6728767))

(assert (= (and b!6728767 c!1247681) b!6728766))

(assert (= (and b!6728767 (not c!1247681)) b!6728764))

(assert (= (or b!6728765 b!6728766) bm!607645))

(declare-fun m!7487990 () Bool)

(assert (=> b!6728765 m!7487990))

(declare-fun m!7487992 () Bool)

(assert (=> bm!607645 m!7487992))

(declare-fun m!7487994 () Bool)

(assert (=> b!6728768 m!7487994))

(assert (=> b!6728263 d!2114285))

(declare-fun b!6728769 () Bool)

(declare-fun e!4065180 () (InoxSet Context!11878))

(assert (=> b!6728769 (= e!4065180 ((as const (Array Context!11878 Bool)) false))))

(declare-fun call!607651 () (InoxSet Context!11878))

(declare-fun b!6728770 () Bool)

(declare-fun e!4065179 () (InoxSet Context!11878))

(assert (=> b!6728770 (= e!4065179 ((_ map or) call!607651 (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 lt!2437413)))))) (h!72289 s!2326))))))

(declare-fun b!6728771 () Bool)

(assert (=> b!6728771 (= e!4065180 call!607651)))

(declare-fun bm!607646 () Bool)

(assert (=> bm!607646 (= call!607651 (derivationStepZipperDown!1783 (h!72288 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 lt!2437413))))) (Context!11879 (t!379649 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 lt!2437413)))))) (h!72289 s!2326)))))

(declare-fun d!2114287 () Bool)

(declare-fun c!1247682 () Bool)

(declare-fun e!4065178 () Bool)

(assert (=> d!2114287 (= c!1247682 e!4065178)))

(declare-fun res!2752961 () Bool)

(assert (=> d!2114287 (=> (not res!2752961) (not e!4065178))))

(assert (=> d!2114287 (= res!2752961 ((_ is Cons!65840) (exprs!6439 (Context!11879 (t!379649 (exprs!6439 lt!2437413))))))))

(assert (=> d!2114287 (= (derivationStepZipperUp!1709 (Context!11879 (t!379649 (exprs!6439 lt!2437413))) (h!72289 s!2326)) e!4065179)))

(declare-fun b!6728772 () Bool)

(assert (=> b!6728772 (= e!4065179 e!4065180)))

(declare-fun c!1247683 () Bool)

(assert (=> b!6728772 (= c!1247683 ((_ is Cons!65840) (exprs!6439 (Context!11879 (t!379649 (exprs!6439 lt!2437413))))))))

(declare-fun b!6728773 () Bool)

(assert (=> b!6728773 (= e!4065178 (nullable!6542 (h!72288 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 lt!2437413)))))))))

(assert (= (and d!2114287 res!2752961) b!6728773))

(assert (= (and d!2114287 c!1247682) b!6728770))

(assert (= (and d!2114287 (not c!1247682)) b!6728772))

(assert (= (and b!6728772 c!1247683) b!6728771))

(assert (= (and b!6728772 (not c!1247683)) b!6728769))

(assert (= (or b!6728770 b!6728771) bm!607646))

(declare-fun m!7487996 () Bool)

(assert (=> b!6728770 m!7487996))

(declare-fun m!7487998 () Bool)

(assert (=> bm!607646 m!7487998))

(declare-fun m!7488000 () Bool)

(assert (=> b!6728773 m!7488000))

(assert (=> b!6727817 d!2114287))

(declare-fun d!2114289 () Bool)

(declare-fun c!1247684 () Bool)

(assert (=> d!2114289 (= c!1247684 (and ((_ is ElementMatch!16555) (h!72288 (exprs!6439 (h!72290 zl!343)))) (= (c!1247365 (h!72288 (exprs!6439 (h!72290 zl!343)))) (h!72289 s!2326))))))

(declare-fun e!4065181 () (InoxSet Context!11878))

(assert (=> d!2114289 (= (derivationStepZipperDown!1783 (h!72288 (exprs!6439 (h!72290 zl!343))) (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))) (h!72289 s!2326)) e!4065181)))

(declare-fun b!6728774 () Bool)

(declare-fun e!4065183 () (InoxSet Context!11878))

(declare-fun call!607655 () (InoxSet Context!11878))

(declare-fun call!607653 () (InoxSet Context!11878))

(assert (=> b!6728774 (= e!4065183 ((_ map or) call!607655 call!607653))))

(declare-fun c!1247688 () Bool)

(declare-fun bm!607647 () Bool)

(declare-fun call!607654 () List!65964)

(assert (=> bm!607647 (= call!607653 (derivationStepZipperDown!1783 (ite c!1247688 (regTwo!33623 (h!72288 (exprs!6439 (h!72290 zl!343)))) (regOne!33622 (h!72288 (exprs!6439 (h!72290 zl!343))))) (ite c!1247688 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))) (Context!11879 call!607654)) (h!72289 s!2326)))))

(declare-fun b!6728775 () Bool)

(declare-fun c!1247685 () Bool)

(declare-fun e!4065184 () Bool)

(assert (=> b!6728775 (= c!1247685 e!4065184)))

(declare-fun res!2752962 () Bool)

(assert (=> b!6728775 (=> (not res!2752962) (not e!4065184))))

(assert (=> b!6728775 (= res!2752962 ((_ is Concat!25400) (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun e!4065185 () (InoxSet Context!11878))

(assert (=> b!6728775 (= e!4065183 e!4065185)))

(declare-fun bm!607648 () Bool)

(declare-fun c!1247686 () Bool)

(declare-fun call!607657 () List!65964)

(assert (=> bm!607648 (= call!607655 (derivationStepZipperDown!1783 (ite c!1247688 (regOne!33623 (h!72288 (exprs!6439 (h!72290 zl!343)))) (ite c!1247685 (regTwo!33622 (h!72288 (exprs!6439 (h!72290 zl!343)))) (ite c!1247686 (regOne!33622 (h!72288 (exprs!6439 (h!72290 zl!343)))) (reg!16884 (h!72288 (exprs!6439 (h!72290 zl!343))))))) (ite (or c!1247688 c!1247685) (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))) (Context!11879 call!607657)) (h!72289 s!2326)))))

(declare-fun b!6728776 () Bool)

(declare-fun c!1247687 () Bool)

(assert (=> b!6728776 (= c!1247687 ((_ is Star!16555) (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun e!4065182 () (InoxSet Context!11878))

(declare-fun e!4065186 () (InoxSet Context!11878))

(assert (=> b!6728776 (= e!4065182 e!4065186)))

(declare-fun b!6728777 () Bool)

(assert (=> b!6728777 (= e!4065184 (nullable!6542 (regOne!33622 (h!72288 (exprs!6439 (h!72290 zl!343))))))))

(declare-fun bm!607649 () Bool)

(declare-fun call!607652 () (InoxSet Context!11878))

(declare-fun call!607656 () (InoxSet Context!11878))

(assert (=> bm!607649 (= call!607652 call!607656)))

(declare-fun b!6728778 () Bool)

(assert (=> b!6728778 (= e!4065185 ((_ map or) call!607653 call!607656))))

(declare-fun bm!607650 () Bool)

(assert (=> bm!607650 (= call!607657 call!607654)))

(declare-fun b!6728779 () Bool)

(assert (=> b!6728779 (= e!4065181 e!4065183)))

(assert (=> b!6728779 (= c!1247688 ((_ is Union!16555) (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun bm!607651 () Bool)

(assert (=> bm!607651 (= call!607656 call!607655)))

(declare-fun b!6728780 () Bool)

(assert (=> b!6728780 (= e!4065185 e!4065182)))

(assert (=> b!6728780 (= c!1247686 ((_ is Concat!25400) (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun bm!607652 () Bool)

(assert (=> bm!607652 (= call!607654 ($colon$colon!2372 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343))))) (ite (or c!1247685 c!1247686) (regTwo!33622 (h!72288 (exprs!6439 (h!72290 zl!343)))) (h!72288 (exprs!6439 (h!72290 zl!343))))))))

(declare-fun b!6728781 () Bool)

(assert (=> b!6728781 (= e!4065186 call!607652)))

(declare-fun b!6728782 () Bool)

(assert (=> b!6728782 (= e!4065182 call!607652)))

(declare-fun b!6728783 () Bool)

(assert (=> b!6728783 (= e!4065181 (store ((as const (Array Context!11878 Bool)) false) (Context!11879 (t!379649 (exprs!6439 (h!72290 zl!343)))) true))))

(declare-fun b!6728784 () Bool)

(assert (=> b!6728784 (= e!4065186 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2114289 c!1247684) b!6728783))

(assert (= (and d!2114289 (not c!1247684)) b!6728779))

(assert (= (and b!6728779 c!1247688) b!6728774))

(assert (= (and b!6728779 (not c!1247688)) b!6728775))

(assert (= (and b!6728775 res!2752962) b!6728777))

(assert (= (and b!6728775 c!1247685) b!6728778))

(assert (= (and b!6728775 (not c!1247685)) b!6728780))

(assert (= (and b!6728780 c!1247686) b!6728782))

(assert (= (and b!6728780 (not c!1247686)) b!6728776))

(assert (= (and b!6728776 c!1247687) b!6728781))

(assert (= (and b!6728776 (not c!1247687)) b!6728784))

(assert (= (or b!6728782 b!6728781) bm!607650))

(assert (= (or b!6728782 b!6728781) bm!607649))

(assert (= (or b!6728778 bm!607650) bm!607652))

(assert (= (or b!6728778 bm!607649) bm!607651))

(assert (= (or b!6728774 b!6728778) bm!607647))

(assert (= (or b!6728774 bm!607651) bm!607648))

(declare-fun m!7488002 () Bool)

(assert (=> bm!607647 m!7488002))

(declare-fun m!7488004 () Bool)

(assert (=> b!6728783 m!7488004))

(declare-fun m!7488006 () Bool)

(assert (=> b!6728777 m!7488006))

(declare-fun m!7488008 () Bool)

(assert (=> bm!607652 m!7488008))

(declare-fun m!7488010 () Bool)

(assert (=> bm!607648 m!7488010))

(assert (=> bm!607558 d!2114289))

(assert (=> b!6727992 d!2114183))

(declare-fun d!2114291 () Bool)

(assert (=> d!2114291 (= (isEmpty!38173 (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 Nil!65841 s!2326 s!2326)) (not ((_ is Some!16441) (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 Nil!65841 s!2326 s!2326))))))

(assert (=> d!2113979 d!2114291))

(declare-fun d!2114293 () Bool)

(assert (=> d!2114293 (= (isUnion!1359 lt!2437495) ((_ is Union!16555) lt!2437495))))

(assert (=> b!6728189 d!2114293))

(declare-fun d!2114295 () Bool)

(assert (=> d!2114295 (= (head!13538 (exprs!6439 (h!72290 zl!343))) (h!72288 (exprs!6439 (h!72290 zl!343))))))

(assert (=> b!6728220 d!2114295))

(declare-fun d!2114297 () Bool)

(assert (=> d!2114297 (= (nullable!6542 (regOne!33622 (reg!16884 r!7292))) (nullableFct!2456 (regOne!33622 (reg!16884 r!7292))))))

(declare-fun bs!1789623 () Bool)

(assert (= bs!1789623 d!2114297))

(declare-fun m!7488012 () Bool)

(assert (=> bs!1789623 m!7488012))

(assert (=> b!6727756 d!2114297))

(assert (=> b!6727995 d!2114183))

(declare-fun d!2114299 () Bool)

(declare-fun c!1247701 () Bool)

(assert (=> d!2114299 (= c!1247701 ((_ is Nil!65842) lt!2437508))))

(declare-fun e!4065199 () (InoxSet Context!11878))

(assert (=> d!2114299 (= (content!12779 lt!2437508) e!4065199)))

(declare-fun b!6728809 () Bool)

(assert (=> b!6728809 (= e!4065199 ((as const (Array Context!11878 Bool)) false))))

(declare-fun b!6728810 () Bool)

(assert (=> b!6728810 (= e!4065199 ((_ map or) (store ((as const (Array Context!11878 Bool)) false) (h!72290 lt!2437508) true) (content!12779 (t!379651 lt!2437508))))))

(assert (= (and d!2114299 c!1247701) b!6728809))

(assert (= (and d!2114299 (not c!1247701)) b!6728810))

(declare-fun m!7488014 () Bool)

(assert (=> b!6728810 m!7488014))

(declare-fun m!7488016 () Bool)

(assert (=> b!6728810 m!7488016))

(assert (=> b!6728269 d!2114299))

(declare-fun d!2114301 () Bool)

(assert (=> d!2114301 (= (nullable!6542 (h!72288 (exprs!6439 lt!2437413))) (nullableFct!2456 (h!72288 (exprs!6439 lt!2437413))))))

(declare-fun bs!1789624 () Bool)

(assert (= bs!1789624 d!2114301))

(declare-fun m!7488018 () Bool)

(assert (=> bs!1789624 m!7488018))

(assert (=> b!6727820 d!2114301))

(assert (=> d!2113971 d!2113961))

(assert (=> d!2113971 d!2113933))

(declare-fun d!2114303 () Bool)

(assert (=> d!2114303 (= (matchR!8738 r!7292 s!2326) (matchRSpec!3656 r!7292 s!2326))))

(assert (=> d!2114303 true))

(declare-fun _$88!5468 () Unit!159801)

(assert (=> d!2114303 (= (choose!50136 r!7292 s!2326) _$88!5468)))

(declare-fun bs!1789625 () Bool)

(assert (= bs!1789625 d!2114303))

(assert (=> bs!1789625 m!7487050))

(assert (=> bs!1789625 m!7487048))

(assert (=> d!2113971 d!2114303))

(assert (=> d!2113971 d!2114033))

(declare-fun d!2114305 () Bool)

(declare-fun c!1247707 () Bool)

(assert (=> d!2114305 (= c!1247707 (and ((_ is ElementMatch!16555) (h!72288 (exprs!6439 lt!2437413))) (= (c!1247365 (h!72288 (exprs!6439 lt!2437413))) (h!72289 s!2326))))))

(declare-fun e!4065205 () (InoxSet Context!11878))

(assert (=> d!2114305 (= (derivationStepZipperDown!1783 (h!72288 (exprs!6439 lt!2437413)) (Context!11879 (t!379649 (exprs!6439 lt!2437413))) (h!72289 s!2326)) e!4065205)))

(declare-fun b!6728821 () Bool)

(declare-fun e!4065207 () (InoxSet Context!11878))

(declare-fun call!607673 () (InoxSet Context!11878))

(declare-fun call!607671 () (InoxSet Context!11878))

(assert (=> b!6728821 (= e!4065207 ((_ map or) call!607673 call!607671))))

(declare-fun bm!607665 () Bool)

(declare-fun c!1247711 () Bool)

(declare-fun call!607672 () List!65964)

(assert (=> bm!607665 (= call!607671 (derivationStepZipperDown!1783 (ite c!1247711 (regTwo!33623 (h!72288 (exprs!6439 lt!2437413))) (regOne!33622 (h!72288 (exprs!6439 lt!2437413)))) (ite c!1247711 (Context!11879 (t!379649 (exprs!6439 lt!2437413))) (Context!11879 call!607672)) (h!72289 s!2326)))))

(declare-fun b!6728822 () Bool)

(declare-fun c!1247708 () Bool)

(declare-fun e!4065208 () Bool)

(assert (=> b!6728822 (= c!1247708 e!4065208)))

(declare-fun res!2752963 () Bool)

(assert (=> b!6728822 (=> (not res!2752963) (not e!4065208))))

(assert (=> b!6728822 (= res!2752963 ((_ is Concat!25400) (h!72288 (exprs!6439 lt!2437413))))))

(declare-fun e!4065209 () (InoxSet Context!11878))

(assert (=> b!6728822 (= e!4065207 e!4065209)))

(declare-fun c!1247709 () Bool)

(declare-fun call!607675 () List!65964)

(declare-fun bm!607666 () Bool)

(assert (=> bm!607666 (= call!607673 (derivationStepZipperDown!1783 (ite c!1247711 (regOne!33623 (h!72288 (exprs!6439 lt!2437413))) (ite c!1247708 (regTwo!33622 (h!72288 (exprs!6439 lt!2437413))) (ite c!1247709 (regOne!33622 (h!72288 (exprs!6439 lt!2437413))) (reg!16884 (h!72288 (exprs!6439 lt!2437413)))))) (ite (or c!1247711 c!1247708) (Context!11879 (t!379649 (exprs!6439 lt!2437413))) (Context!11879 call!607675)) (h!72289 s!2326)))))

(declare-fun b!6728823 () Bool)

(declare-fun c!1247710 () Bool)

(assert (=> b!6728823 (= c!1247710 ((_ is Star!16555) (h!72288 (exprs!6439 lt!2437413))))))

(declare-fun e!4065206 () (InoxSet Context!11878))

(declare-fun e!4065210 () (InoxSet Context!11878))

(assert (=> b!6728823 (= e!4065206 e!4065210)))

(declare-fun b!6728824 () Bool)

(assert (=> b!6728824 (= e!4065208 (nullable!6542 (regOne!33622 (h!72288 (exprs!6439 lt!2437413)))))))

(declare-fun bm!607667 () Bool)

(declare-fun call!607670 () (InoxSet Context!11878))

(declare-fun call!607674 () (InoxSet Context!11878))

(assert (=> bm!607667 (= call!607670 call!607674)))

(declare-fun b!6728825 () Bool)

(assert (=> b!6728825 (= e!4065209 ((_ map or) call!607671 call!607674))))

(declare-fun bm!607668 () Bool)

(assert (=> bm!607668 (= call!607675 call!607672)))

(declare-fun b!6728826 () Bool)

(assert (=> b!6728826 (= e!4065205 e!4065207)))

(assert (=> b!6728826 (= c!1247711 ((_ is Union!16555) (h!72288 (exprs!6439 lt!2437413))))))

(declare-fun bm!607669 () Bool)

(assert (=> bm!607669 (= call!607674 call!607673)))

(declare-fun b!6728827 () Bool)

(assert (=> b!6728827 (= e!4065209 e!4065206)))

(assert (=> b!6728827 (= c!1247709 ((_ is Concat!25400) (h!72288 (exprs!6439 lt!2437413))))))

(declare-fun bm!607670 () Bool)

(assert (=> bm!607670 (= call!607672 ($colon$colon!2372 (exprs!6439 (Context!11879 (t!379649 (exprs!6439 lt!2437413)))) (ite (or c!1247708 c!1247709) (regTwo!33622 (h!72288 (exprs!6439 lt!2437413))) (h!72288 (exprs!6439 lt!2437413)))))))

(declare-fun b!6728828 () Bool)

(assert (=> b!6728828 (= e!4065210 call!607670)))

(declare-fun b!6728829 () Bool)

(assert (=> b!6728829 (= e!4065206 call!607670)))

(declare-fun b!6728830 () Bool)

(assert (=> b!6728830 (= e!4065205 (store ((as const (Array Context!11878 Bool)) false) (Context!11879 (t!379649 (exprs!6439 lt!2437413))) true))))

(declare-fun b!6728831 () Bool)

(assert (=> b!6728831 (= e!4065210 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2114305 c!1247707) b!6728830))

(assert (= (and d!2114305 (not c!1247707)) b!6728826))

(assert (= (and b!6728826 c!1247711) b!6728821))

(assert (= (and b!6728826 (not c!1247711)) b!6728822))

(assert (= (and b!6728822 res!2752963) b!6728824))

(assert (= (and b!6728822 c!1247708) b!6728825))

(assert (= (and b!6728822 (not c!1247708)) b!6728827))

(assert (= (and b!6728827 c!1247709) b!6728829))

(assert (= (and b!6728827 (not c!1247709)) b!6728823))

(assert (= (and b!6728823 c!1247710) b!6728828))

(assert (= (and b!6728823 (not c!1247710)) b!6728831))

(assert (= (or b!6728829 b!6728828) bm!607668))

(assert (= (or b!6728829 b!6728828) bm!607667))

(assert (= (or b!6728825 bm!607668) bm!607670))

(assert (= (or b!6728825 bm!607667) bm!607669))

(assert (= (or b!6728821 b!6728825) bm!607665))

(assert (= (or b!6728821 bm!607669) bm!607666))

(declare-fun m!7488026 () Bool)

(assert (=> bm!607665 m!7488026))

(declare-fun m!7488028 () Bool)

(assert (=> b!6728830 m!7488028))

(declare-fun m!7488030 () Bool)

(assert (=> b!6728824 m!7488030))

(declare-fun m!7488032 () Bool)

(assert (=> bm!607670 m!7488032))

(declare-fun m!7488034 () Bool)

(assert (=> bm!607666 m!7488034))

(assert (=> bm!607521 d!2114305))

(declare-fun d!2114311 () Bool)

(assert (=> d!2114311 (= (isEmptyExpr!1921 lt!2437501) ((_ is EmptyExpr!16555) lt!2437501))))

(assert (=> b!6728226 d!2114311))

(declare-fun b!6728834 () Bool)

(declare-fun e!4065216 () Bool)

(declare-fun e!4065215 () Bool)

(assert (=> b!6728834 (= e!4065216 e!4065215)))

(declare-fun c!1247713 () Bool)

(assert (=> b!6728834 (= c!1247713 ((_ is Star!16555) lt!2437495))))

(declare-fun b!6728835 () Bool)

(declare-fun e!4065214 () Bool)

(assert (=> b!6728835 (= e!4065215 e!4065214)))

(declare-fun c!1247714 () Bool)

(assert (=> b!6728835 (= c!1247714 ((_ is Union!16555) lt!2437495))))

(declare-fun d!2114315 () Bool)

(declare-fun res!2752965 () Bool)

(assert (=> d!2114315 (=> res!2752965 e!4065216)))

(assert (=> d!2114315 (= res!2752965 ((_ is ElementMatch!16555) lt!2437495))))

(assert (=> d!2114315 (= (validRegex!8291 lt!2437495) e!4065216)))

(declare-fun b!6728836 () Bool)

(declare-fun res!2752967 () Bool)

(declare-fun e!4065212 () Bool)

(assert (=> b!6728836 (=> (not res!2752967) (not e!4065212))))

(declare-fun call!607676 () Bool)

(assert (=> b!6728836 (= res!2752967 call!607676)))

(assert (=> b!6728836 (= e!4065214 e!4065212)))

(declare-fun b!6728837 () Bool)

(declare-fun e!4065213 () Bool)

(declare-fun call!607677 () Bool)

(assert (=> b!6728837 (= e!4065213 call!607677)))

(declare-fun b!6728838 () Bool)

(declare-fun e!4065217 () Bool)

(declare-fun e!4065218 () Bool)

(assert (=> b!6728838 (= e!4065217 e!4065218)))

(declare-fun res!2752968 () Bool)

(assert (=> b!6728838 (=> (not res!2752968) (not e!4065218))))

(assert (=> b!6728838 (= res!2752968 call!607676)))

(declare-fun b!6728839 () Bool)

(assert (=> b!6728839 (= e!4065215 e!4065213)))

(declare-fun res!2752966 () Bool)

(assert (=> b!6728839 (= res!2752966 (not (nullable!6542 (reg!16884 lt!2437495))))))

(assert (=> b!6728839 (=> (not res!2752966) (not e!4065213))))

(declare-fun bm!607671 () Bool)

(assert (=> bm!607671 (= call!607676 (validRegex!8291 (ite c!1247714 (regOne!33623 lt!2437495) (regOne!33622 lt!2437495))))))

(declare-fun bm!607672 () Bool)

(declare-fun call!607678 () Bool)

(assert (=> bm!607672 (= call!607678 call!607677)))

(declare-fun b!6728840 () Bool)

(assert (=> b!6728840 (= e!4065218 call!607678)))

(declare-fun b!6728841 () Bool)

(assert (=> b!6728841 (= e!4065212 call!607678)))

(declare-fun bm!607673 () Bool)

(assert (=> bm!607673 (= call!607677 (validRegex!8291 (ite c!1247713 (reg!16884 lt!2437495) (ite c!1247714 (regTwo!33623 lt!2437495) (regTwo!33622 lt!2437495)))))))

(declare-fun b!6728842 () Bool)

(declare-fun res!2752964 () Bool)

(assert (=> b!6728842 (=> res!2752964 e!4065217)))

(assert (=> b!6728842 (= res!2752964 (not ((_ is Concat!25400) lt!2437495)))))

(assert (=> b!6728842 (= e!4065214 e!4065217)))

(assert (= (and d!2114315 (not res!2752965)) b!6728834))

(assert (= (and b!6728834 c!1247713) b!6728839))

(assert (= (and b!6728834 (not c!1247713)) b!6728835))

(assert (= (and b!6728839 res!2752966) b!6728837))

(assert (= (and b!6728835 c!1247714) b!6728836))

(assert (= (and b!6728835 (not c!1247714)) b!6728842))

(assert (= (and b!6728836 res!2752967) b!6728841))

(assert (= (and b!6728842 (not res!2752964)) b!6728838))

(assert (= (and b!6728838 res!2752968) b!6728840))

(assert (= (or b!6728841 b!6728840) bm!607672))

(assert (= (or b!6728836 b!6728838) bm!607671))

(assert (= (or b!6728837 bm!607672) bm!607673))

(declare-fun m!7488038 () Bool)

(assert (=> b!6728839 m!7488038))

(declare-fun m!7488040 () Bool)

(assert (=> bm!607671 m!7488040))

(declare-fun m!7488042 () Bool)

(assert (=> bm!607673 m!7488042))

(assert (=> d!2114015 d!2114315))

(declare-fun d!2114317 () Bool)

(declare-fun res!2752981 () Bool)

(declare-fun e!4065230 () Bool)

(assert (=> d!2114317 (=> res!2752981 e!4065230)))

(assert (=> d!2114317 (= res!2752981 ((_ is Nil!65840) (unfocusZipperList!1976 zl!343)))))

(assert (=> d!2114317 (= (forall!15755 (unfocusZipperList!1976 zl!343) lambda!377547) e!4065230)))

(declare-fun b!6728861 () Bool)

(declare-fun e!4065231 () Bool)

(assert (=> b!6728861 (= e!4065230 e!4065231)))

(declare-fun res!2752982 () Bool)

(assert (=> b!6728861 (=> (not res!2752982) (not e!4065231))))

(declare-fun dynLambda!26262 (Int Regex!16555) Bool)

(assert (=> b!6728861 (= res!2752982 (dynLambda!26262 lambda!377547 (h!72288 (unfocusZipperList!1976 zl!343))))))

(declare-fun b!6728862 () Bool)

(assert (=> b!6728862 (= e!4065231 (forall!15755 (t!379649 (unfocusZipperList!1976 zl!343)) lambda!377547))))

(assert (= (and d!2114317 (not res!2752981)) b!6728861))

(assert (= (and b!6728861 res!2752982) b!6728862))

(declare-fun b_lambda!253325 () Bool)

(assert (=> (not b_lambda!253325) (not b!6728861)))

(declare-fun m!7488062 () Bool)

(assert (=> b!6728861 m!7488062))

(declare-fun m!7488064 () Bool)

(assert (=> b!6728862 m!7488064))

(assert (=> d!2114015 d!2114317))

(declare-fun d!2114323 () Bool)

(declare-fun c!1247719 () Bool)

(assert (=> d!2114323 (= c!1247719 (isEmpty!38170 (tail!12622 s!2326)))))

(declare-fun e!4065233 () Bool)

(assert (=> d!2114323 (= (matchZipper!2541 (derivationStepZipper!2499 lt!2437420 (head!13537 s!2326)) (tail!12622 s!2326)) e!4065233)))

(declare-fun b!6728865 () Bool)

(assert (=> b!6728865 (= e!4065233 (nullableZipper!2270 (derivationStepZipper!2499 lt!2437420 (head!13537 s!2326))))))

(declare-fun b!6728866 () Bool)

(assert (=> b!6728866 (= e!4065233 (matchZipper!2541 (derivationStepZipper!2499 (derivationStepZipper!2499 lt!2437420 (head!13537 s!2326)) (head!13537 (tail!12622 s!2326))) (tail!12622 (tail!12622 s!2326))))))

(assert (= (and d!2114323 c!1247719) b!6728865))

(assert (= (and d!2114323 (not c!1247719)) b!6728866))

(assert (=> d!2114323 m!7487282))

(assert (=> d!2114323 m!7487284))

(assert (=> b!6728865 m!7487458))

(declare-fun m!7488072 () Bool)

(assert (=> b!6728865 m!7488072))

(assert (=> b!6728866 m!7487282))

(assert (=> b!6728866 m!7487780))

(assert (=> b!6728866 m!7487458))

(assert (=> b!6728866 m!7487780))

(declare-fun m!7488074 () Bool)

(assert (=> b!6728866 m!7488074))

(assert (=> b!6728866 m!7487282))

(assert (=> b!6728866 m!7487782))

(assert (=> b!6728866 m!7488074))

(assert (=> b!6728866 m!7487782))

(declare-fun m!7488076 () Bool)

(assert (=> b!6728866 m!7488076))

(assert (=> b!6728232 d!2114323))

(declare-fun bs!1789651 () Bool)

(declare-fun d!2114327 () Bool)

(assert (= bs!1789651 (and d!2114327 b!6727573)))

(declare-fun lambda!377599 () Int)

(assert (=> bs!1789651 (= (= (head!13537 s!2326) (h!72289 s!2326)) (= lambda!377599 lambda!377481))))

(declare-fun bs!1789653 () Bool)

(assert (= bs!1789653 (and d!2114327 d!2114013)))

(assert (=> bs!1789653 (= (= (head!13537 s!2326) (h!72289 s!2326)) (= lambda!377599 lambda!377544))))

(declare-fun bs!1789654 () Bool)

(assert (= bs!1789654 (and d!2114327 d!2114029)))

(assert (=> bs!1789654 (= (= (head!13537 s!2326) (h!72289 s!2326)) (= lambda!377599 lambda!377557))))

(declare-fun bs!1789655 () Bool)

(assert (= bs!1789655 (and d!2114327 d!2114275)))

(assert (=> bs!1789655 (= (= (head!13537 s!2326) (head!13537 (t!379650 s!2326))) (= lambda!377599 lambda!377594))))

(assert (=> d!2114327 true))

(assert (=> d!2114327 (= (derivationStepZipper!2499 lt!2437420 (head!13537 s!2326)) (flatMap!2036 lt!2437420 lambda!377599))))

(declare-fun bs!1789656 () Bool)

(assert (= bs!1789656 d!2114327))

(declare-fun m!7488080 () Bool)

(assert (=> bs!1789656 m!7488080))

(assert (=> b!6728232 d!2114327))

(assert (=> b!6728232 d!2114183))

(assert (=> b!6728232 d!2114185))

(declare-fun d!2114331 () Bool)

(assert (=> d!2114331 (= (nullable!6542 (reg!16884 r!7292)) (nullableFct!2456 (reg!16884 r!7292)))))

(declare-fun bs!1789657 () Bool)

(assert (= bs!1789657 d!2114331))

(declare-fun m!7488082 () Bool)

(assert (=> bs!1789657 m!7488082))

(assert (=> b!6728258 d!2114331))

(declare-fun d!2114333 () Bool)

(assert (=> d!2114333 (= (nullable!6542 (h!72288 (exprs!6439 (h!72290 zl!343)))) (nullableFct!2456 (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun bs!1789658 () Bool)

(assert (= bs!1789658 d!2114333))

(declare-fun m!7488084 () Bool)

(assert (=> bs!1789658 m!7488084))

(assert (=> b!6728266 d!2114333))

(declare-fun bs!1789659 () Bool)

(declare-fun d!2114335 () Bool)

(assert (= bs!1789659 (and d!2114335 d!2114035)))

(declare-fun lambda!377600 () Int)

(assert (=> bs!1789659 (= lambda!377600 lambda!377558)))

(declare-fun bs!1789660 () Bool)

(assert (= bs!1789660 (and d!2114335 d!2114019)))

(assert (=> bs!1789660 (= lambda!377600 lambda!377553)))

(declare-fun bs!1789661 () Bool)

(assert (= bs!1789661 (and d!2114335 d!2114015)))

(assert (=> bs!1789661 (= lambda!377600 lambda!377547)))

(declare-fun bs!1789662 () Bool)

(assert (= bs!1789662 (and d!2114335 d!2114021)))

(assert (=> bs!1789662 (= lambda!377600 lambda!377556)))

(declare-fun bs!1789663 () Bool)

(assert (= bs!1789663 (and d!2114335 d!2114017)))

(assert (=> bs!1789663 (= lambda!377600 lambda!377550)))

(declare-fun bs!1789664 () Bool)

(assert (= bs!1789664 (and d!2114335 d!2114149)))

(assert (=> bs!1789664 (= lambda!377600 lambda!377577)))

(declare-fun bs!1789665 () Bool)

(assert (= bs!1789665 (and d!2114335 d!2114043)))

(assert (=> bs!1789665 (= lambda!377600 lambda!377559)))

(declare-fun bs!1789666 () Bool)

(assert (= bs!1789666 (and d!2114335 d!2114283)))

(assert (=> bs!1789666 (= lambda!377600 lambda!377595)))

(declare-fun e!4065245 () Bool)

(assert (=> d!2114335 e!4065245))

(declare-fun res!2752984 () Bool)

(assert (=> d!2114335 (=> (not res!2752984) (not e!4065245))))

(declare-fun lt!2437540 () Regex!16555)

(assert (=> d!2114335 (= res!2752984 (validRegex!8291 lt!2437540))))

(declare-fun e!4065241 () Regex!16555)

(assert (=> d!2114335 (= lt!2437540 e!4065241)))

(declare-fun c!1247725 () Bool)

(declare-fun e!4065240 () Bool)

(assert (=> d!2114335 (= c!1247725 e!4065240)))

(declare-fun res!2752985 () Bool)

(assert (=> d!2114335 (=> (not res!2752985) (not e!4065240))))

(assert (=> d!2114335 (= res!2752985 ((_ is Cons!65840) (t!379649 (unfocusZipperList!1976 zl!343))))))

(assert (=> d!2114335 (forall!15755 (t!379649 (unfocusZipperList!1976 zl!343)) lambda!377600)))

(assert (=> d!2114335 (= (generalisedUnion!2399 (t!379649 (unfocusZipperList!1976 zl!343))) lt!2437540)))

(declare-fun b!6728878 () Bool)

(declare-fun e!4065244 () Regex!16555)

(assert (=> b!6728878 (= e!4065244 EmptyLang!16555)))

(declare-fun b!6728879 () Bool)

(assert (=> b!6728879 (= e!4065241 e!4065244)))

(declare-fun c!1247727 () Bool)

(assert (=> b!6728879 (= c!1247727 ((_ is Cons!65840) (t!379649 (unfocusZipperList!1976 zl!343))))))

(declare-fun b!6728880 () Bool)

(assert (=> b!6728880 (= e!4065244 (Union!16555 (h!72288 (t!379649 (unfocusZipperList!1976 zl!343))) (generalisedUnion!2399 (t!379649 (t!379649 (unfocusZipperList!1976 zl!343))))))))

(declare-fun b!6728881 () Bool)

(declare-fun e!4065243 () Bool)

(assert (=> b!6728881 (= e!4065245 e!4065243)))

(declare-fun c!1247728 () Bool)

(assert (=> b!6728881 (= c!1247728 (isEmpty!38174 (t!379649 (unfocusZipperList!1976 zl!343))))))

(declare-fun b!6728882 () Bool)

(assert (=> b!6728882 (= e!4065241 (h!72288 (t!379649 (unfocusZipperList!1976 zl!343))))))

(declare-fun b!6728883 () Bool)

(assert (=> b!6728883 (= e!4065240 (isEmpty!38174 (t!379649 (t!379649 (unfocusZipperList!1976 zl!343)))))))

(declare-fun b!6728884 () Bool)

(declare-fun e!4065242 () Bool)

(assert (=> b!6728884 (= e!4065242 (= lt!2437540 (head!13538 (t!379649 (unfocusZipperList!1976 zl!343)))))))

(declare-fun b!6728885 () Bool)

(assert (=> b!6728885 (= e!4065243 e!4065242)))

(declare-fun c!1247726 () Bool)

(assert (=> b!6728885 (= c!1247726 (isEmpty!38174 (tail!12623 (t!379649 (unfocusZipperList!1976 zl!343)))))))

(declare-fun b!6728886 () Bool)

(assert (=> b!6728886 (= e!4065242 (isUnion!1359 lt!2437540))))

(declare-fun b!6728887 () Bool)

(assert (=> b!6728887 (= e!4065243 (isEmptyLang!1929 lt!2437540))))

(assert (= (and d!2114335 res!2752985) b!6728883))

(assert (= (and d!2114335 c!1247725) b!6728882))

(assert (= (and d!2114335 (not c!1247725)) b!6728879))

(assert (= (and b!6728879 c!1247727) b!6728880))

(assert (= (and b!6728879 (not c!1247727)) b!6728878))

(assert (= (and d!2114335 res!2752984) b!6728881))

(assert (= (and b!6728881 c!1247728) b!6728887))

(assert (= (and b!6728881 (not c!1247728)) b!6728885))

(assert (= (and b!6728885 c!1247726) b!6728884))

(assert (= (and b!6728885 (not c!1247726)) b!6728886))

(declare-fun m!7488098 () Bool)

(assert (=> b!6728884 m!7488098))

(declare-fun m!7488100 () Bool)

(assert (=> b!6728886 m!7488100))

(declare-fun m!7488102 () Bool)

(assert (=> d!2114335 m!7488102))

(declare-fun m!7488104 () Bool)

(assert (=> d!2114335 m!7488104))

(declare-fun m!7488106 () Bool)

(assert (=> b!6728885 m!7488106))

(assert (=> b!6728885 m!7488106))

(declare-fun m!7488108 () Bool)

(assert (=> b!6728885 m!7488108))

(declare-fun m!7488110 () Bool)

(assert (=> b!6728883 m!7488110))

(declare-fun m!7488112 () Bool)

(assert (=> b!6728880 m!7488112))

(assert (=> b!6728881 m!7487422))

(declare-fun m!7488114 () Bool)

(assert (=> b!6728887 m!7488114))

(assert (=> b!6728183 d!2114335))

(assert (=> d!2114025 d!2113999))

(declare-fun bs!1789668 () Bool)

(declare-fun b!6728908 () Bool)

(assert (= bs!1789668 (and b!6728908 d!2114191)))

(declare-fun lambda!377601 () Int)

(assert (=> bs!1789668 (not (= lambda!377601 lambda!377591))))

(declare-fun bs!1789669 () Bool)

(assert (= bs!1789669 (and b!6728908 b!6727945)))

(assert (=> bs!1789669 (not (= lambda!377601 lambda!377515))))

(declare-fun bs!1789670 () Bool)

(assert (= bs!1789670 (and b!6728908 d!2114003)))

(assert (=> bs!1789670 (= (and (= (reg!16884 (regOne!33623 r!7292)) (reg!16884 r!7292)) (= (regOne!33623 r!7292) (Star!16555 (reg!16884 r!7292)))) (= lambda!377601 lambda!377538))))

(declare-fun bs!1789671 () Bool)

(assert (= bs!1789671 (and b!6728908 b!6727947)))

(assert (=> bs!1789671 (= (and (= (reg!16884 (regOne!33623 r!7292)) (reg!16884 r!7292)) (= (regOne!33623 r!7292) r!7292)) (= lambda!377601 lambda!377512))))

(declare-fun bs!1789672 () Bool)

(assert (= bs!1789672 (and b!6728908 d!2114007)))

(assert (=> bs!1789672 (not (= lambda!377601 lambda!377541))))

(assert (=> bs!1789670 (not (= lambda!377601 lambda!377537))))

(declare-fun bs!1789673 () Bool)

(assert (= bs!1789673 (and b!6728908 b!6727590)))

(assert (=> bs!1789673 (= (and (= (reg!16884 (regOne!33623 r!7292)) (reg!16884 r!7292)) (= (regOne!33623 r!7292) r!7292)) (= lambda!377601 lambda!377479))))

(declare-fun bs!1789674 () Bool)

(assert (= bs!1789674 (and b!6728908 d!2113981)))

(assert (=> bs!1789674 (not (= lambda!377601 lambda!377531))))

(assert (=> bs!1789673 (not (= lambda!377601 lambda!377478))))

(assert (=> bs!1789673 (not (= lambda!377601 lambda!377480))))

(assert (=> bs!1789668 (not (= lambda!377601 lambda!377590))))

(assert (=> bs!1789674 (not (= lambda!377601 lambda!377532))))

(assert (=> b!6728908 true))

(assert (=> b!6728908 true))

(declare-fun bs!1789678 () Bool)

(declare-fun b!6728906 () Bool)

(assert (= bs!1789678 (and b!6728906 d!2114191)))

(declare-fun lambda!377602 () Int)

(assert (=> bs!1789678 (= (and (= (regOne!33622 (regOne!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33622 (regOne!33623 r!7292)) r!7292)) (= lambda!377602 lambda!377591))))

(declare-fun bs!1789679 () Bool)

(assert (= bs!1789679 (and b!6728906 b!6727945)))

(assert (=> bs!1789679 (= (and (= (regOne!33622 (regOne!33623 r!7292)) (regOne!33622 r!7292)) (= (regTwo!33622 (regOne!33623 r!7292)) (regTwo!33622 r!7292))) (= lambda!377602 lambda!377515))))

(declare-fun bs!1789680 () Bool)

(assert (= bs!1789680 (and b!6728906 d!2114003)))

(assert (=> bs!1789680 (not (= lambda!377602 lambda!377538))))

(declare-fun bs!1789681 () Bool)

(assert (= bs!1789681 (and b!6728906 b!6727947)))

(assert (=> bs!1789681 (not (= lambda!377602 lambda!377512))))

(declare-fun bs!1789682 () Bool)

(assert (= bs!1789682 (and b!6728906 d!2114007)))

(assert (=> bs!1789682 (not (= lambda!377602 lambda!377541))))

(assert (=> bs!1789680 (not (= lambda!377602 lambda!377537))))

(declare-fun bs!1789683 () Bool)

(assert (= bs!1789683 (and b!6728906 b!6727590)))

(assert (=> bs!1789683 (not (= lambda!377602 lambda!377479))))

(assert (=> bs!1789683 (not (= lambda!377602 lambda!377478))))

(assert (=> bs!1789683 (= (and (= (regOne!33622 (regOne!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33622 (regOne!33623 r!7292)) r!7292)) (= lambda!377602 lambda!377480))))

(assert (=> bs!1789678 (not (= lambda!377602 lambda!377590))))

(declare-fun bs!1789684 () Bool)

(assert (= bs!1789684 (and b!6728906 d!2113981)))

(assert (=> bs!1789684 (= (and (= (regOne!33622 (regOne!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33622 (regOne!33623 r!7292)) r!7292)) (= lambda!377602 lambda!377532))))

(assert (=> bs!1789684 (not (= lambda!377602 lambda!377531))))

(declare-fun bs!1789685 () Bool)

(assert (= bs!1789685 (and b!6728906 b!6728908)))

(assert (=> bs!1789685 (not (= lambda!377602 lambda!377601))))

(assert (=> b!6728906 true))

(assert (=> b!6728906 true))

(declare-fun call!607693 () Bool)

(declare-fun c!1247735 () Bool)

(declare-fun bm!607687 () Bool)

(assert (=> bm!607687 (= call!607693 (Exists!3623 (ite c!1247735 lambda!377601 lambda!377602)))))

(declare-fun b!6728899 () Bool)

(declare-fun res!2752988 () Bool)

(declare-fun e!4065258 () Bool)

(assert (=> b!6728899 (=> res!2752988 e!4065258)))

(declare-fun call!607692 () Bool)

(assert (=> b!6728899 (= res!2752988 call!607692)))

(declare-fun e!4065253 () Bool)

(assert (=> b!6728899 (= e!4065253 e!4065258)))

(declare-fun bm!607688 () Bool)

(assert (=> bm!607688 (= call!607692 (isEmpty!38170 s!2326))))

(declare-fun b!6728901 () Bool)

(declare-fun e!4065252 () Bool)

(assert (=> b!6728901 (= e!4065252 (matchRSpec!3656 (regTwo!33623 (regOne!33623 r!7292)) s!2326))))

(declare-fun b!6728902 () Bool)

(declare-fun e!4065257 () Bool)

(assert (=> b!6728902 (= e!4065257 e!4065253)))

(assert (=> b!6728902 (= c!1247735 ((_ is Star!16555) (regOne!33623 r!7292)))))

(declare-fun b!6728903 () Bool)

(declare-fun c!1247737 () Bool)

(assert (=> b!6728903 (= c!1247737 ((_ is ElementMatch!16555) (regOne!33623 r!7292)))))

(declare-fun e!4065254 () Bool)

(declare-fun e!4065255 () Bool)

(assert (=> b!6728903 (= e!4065254 e!4065255)))

(declare-fun b!6728904 () Bool)

(declare-fun e!4065256 () Bool)

(assert (=> b!6728904 (= e!4065256 e!4065254)))

(declare-fun res!2752987 () Bool)

(assert (=> b!6728904 (= res!2752987 (not ((_ is EmptyLang!16555) (regOne!33623 r!7292))))))

(assert (=> b!6728904 (=> (not res!2752987) (not e!4065254))))

(declare-fun b!6728905 () Bool)

(assert (=> b!6728905 (= e!4065255 (= s!2326 (Cons!65841 (c!1247365 (regOne!33623 r!7292)) Nil!65841)))))

(assert (=> b!6728906 (= e!4065253 call!607693)))

(declare-fun b!6728907 () Bool)

(declare-fun c!1247734 () Bool)

(assert (=> b!6728907 (= c!1247734 ((_ is Union!16555) (regOne!33623 r!7292)))))

(assert (=> b!6728907 (= e!4065255 e!4065257)))

(declare-fun b!6728900 () Bool)

(assert (=> b!6728900 (= e!4065256 call!607692)))

(declare-fun d!2114343 () Bool)

(declare-fun c!1247736 () Bool)

(assert (=> d!2114343 (= c!1247736 ((_ is EmptyExpr!16555) (regOne!33623 r!7292)))))

(assert (=> d!2114343 (= (matchRSpec!3656 (regOne!33623 r!7292) s!2326) e!4065256)))

(assert (=> b!6728908 (= e!4065258 call!607693)))

(declare-fun b!6728909 () Bool)

(assert (=> b!6728909 (= e!4065257 e!4065252)))

(declare-fun res!2752989 () Bool)

(assert (=> b!6728909 (= res!2752989 (matchRSpec!3656 (regOne!33623 (regOne!33623 r!7292)) s!2326))))

(assert (=> b!6728909 (=> res!2752989 e!4065252)))

(assert (= (and d!2114343 c!1247736) b!6728900))

(assert (= (and d!2114343 (not c!1247736)) b!6728904))

(assert (= (and b!6728904 res!2752987) b!6728903))

(assert (= (and b!6728903 c!1247737) b!6728905))

(assert (= (and b!6728903 (not c!1247737)) b!6728907))

(assert (= (and b!6728907 c!1247734) b!6728909))

(assert (= (and b!6728907 (not c!1247734)) b!6728902))

(assert (= (and b!6728909 (not res!2752989)) b!6728901))

(assert (= (and b!6728902 c!1247735) b!6728899))

(assert (= (and b!6728902 (not c!1247735)) b!6728906))

(assert (= (and b!6728899 (not res!2752988)) b!6728908))

(assert (= (or b!6728908 b!6728906) bm!607687))

(assert (= (or b!6728900 b!6728899) bm!607688))

(declare-fun m!7488144 () Bool)

(assert (=> bm!607687 m!7488144))

(assert (=> bm!607688 m!7487034))

(declare-fun m!7488146 () Bool)

(assert (=> b!6728901 m!7488146))

(declare-fun m!7488148 () Bool)

(assert (=> b!6728909 m!7488148))

(assert (=> b!6727948 d!2114343))

(declare-fun d!2114365 () Bool)

(declare-fun res!2752999 () Bool)

(declare-fun e!4065279 () Bool)

(assert (=> d!2114365 (=> res!2752999 e!4065279)))

(assert (=> d!2114365 (= res!2752999 ((_ is Nil!65840) (exprs!6439 (h!72290 zl!343))))))

(assert (=> d!2114365 (= (forall!15755 (exprs!6439 (h!72290 zl!343)) lambda!377556) e!4065279)))

(declare-fun b!6728956 () Bool)

(declare-fun e!4065280 () Bool)

(assert (=> b!6728956 (= e!4065279 e!4065280)))

(declare-fun res!2753000 () Bool)

(assert (=> b!6728956 (=> (not res!2753000) (not e!4065280))))

(assert (=> b!6728956 (= res!2753000 (dynLambda!26262 lambda!377556 (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6728957 () Bool)

(assert (=> b!6728957 (= e!4065280 (forall!15755 (t!379649 (exprs!6439 (h!72290 zl!343))) lambda!377556))))

(assert (= (and d!2114365 (not res!2752999)) b!6728956))

(assert (= (and b!6728956 res!2753000) b!6728957))

(declare-fun b_lambda!253329 () Bool)

(assert (=> (not b_lambda!253329) (not b!6728956)))

(declare-fun m!7488150 () Bool)

(assert (=> b!6728956 m!7488150))

(declare-fun m!7488152 () Bool)

(assert (=> b!6728957 m!7488152))

(assert (=> d!2114021 d!2114365))

(declare-fun b!6728967 () Bool)

(declare-fun e!4065288 () Bool)

(declare-fun e!4065287 () Bool)

(assert (=> b!6728967 (= e!4065288 e!4065287)))

(declare-fun c!1247740 () Bool)

(assert (=> b!6728967 (= c!1247740 ((_ is Star!16555) lt!2437501))))

(declare-fun b!6728968 () Bool)

(declare-fun e!4065286 () Bool)

(assert (=> b!6728968 (= e!4065287 e!4065286)))

(declare-fun c!1247741 () Bool)

(assert (=> b!6728968 (= c!1247741 ((_ is Union!16555) lt!2437501))))

(declare-fun d!2114367 () Bool)

(declare-fun res!2753002 () Bool)

(assert (=> d!2114367 (=> res!2753002 e!4065288)))

(assert (=> d!2114367 (= res!2753002 ((_ is ElementMatch!16555) lt!2437501))))

(assert (=> d!2114367 (= (validRegex!8291 lt!2437501) e!4065288)))

(declare-fun b!6728969 () Bool)

(declare-fun res!2753004 () Bool)

(declare-fun e!4065284 () Bool)

(assert (=> b!6728969 (=> (not res!2753004) (not e!4065284))))

(declare-fun call!607697 () Bool)

(assert (=> b!6728969 (= res!2753004 call!607697)))

(assert (=> b!6728969 (= e!4065286 e!4065284)))

(declare-fun b!6728970 () Bool)

(declare-fun e!4065285 () Bool)

(declare-fun call!607698 () Bool)

(assert (=> b!6728970 (= e!4065285 call!607698)))

(declare-fun b!6728971 () Bool)

(declare-fun e!4065289 () Bool)

(declare-fun e!4065290 () Bool)

(assert (=> b!6728971 (= e!4065289 e!4065290)))

(declare-fun res!2753005 () Bool)

(assert (=> b!6728971 (=> (not res!2753005) (not e!4065290))))

(assert (=> b!6728971 (= res!2753005 call!607697)))

(declare-fun b!6728972 () Bool)

(assert (=> b!6728972 (= e!4065287 e!4065285)))

(declare-fun res!2753003 () Bool)

(assert (=> b!6728972 (= res!2753003 (not (nullable!6542 (reg!16884 lt!2437501))))))

(assert (=> b!6728972 (=> (not res!2753003) (not e!4065285))))

(declare-fun bm!607692 () Bool)

(assert (=> bm!607692 (= call!607697 (validRegex!8291 (ite c!1247741 (regOne!33623 lt!2437501) (regOne!33622 lt!2437501))))))

(declare-fun bm!607693 () Bool)

(declare-fun call!607699 () Bool)

(assert (=> bm!607693 (= call!607699 call!607698)))

(declare-fun b!6728973 () Bool)

(assert (=> b!6728973 (= e!4065290 call!607699)))

(declare-fun b!6728974 () Bool)

(assert (=> b!6728974 (= e!4065284 call!607699)))

(declare-fun bm!607694 () Bool)

(assert (=> bm!607694 (= call!607698 (validRegex!8291 (ite c!1247740 (reg!16884 lt!2437501) (ite c!1247741 (regTwo!33623 lt!2437501) (regTwo!33622 lt!2437501)))))))

(declare-fun b!6728975 () Bool)

(declare-fun res!2753001 () Bool)

(assert (=> b!6728975 (=> res!2753001 e!4065289)))

(assert (=> b!6728975 (= res!2753001 (not ((_ is Concat!25400) lt!2437501)))))

(assert (=> b!6728975 (= e!4065286 e!4065289)))

(assert (= (and d!2114367 (not res!2753002)) b!6728967))

(assert (= (and b!6728967 c!1247740) b!6728972))

(assert (= (and b!6728967 (not c!1247740)) b!6728968))

(assert (= (and b!6728972 res!2753003) b!6728970))

(assert (= (and b!6728968 c!1247741) b!6728969))

(assert (= (and b!6728968 (not c!1247741)) b!6728975))

(assert (= (and b!6728969 res!2753004) b!6728974))

(assert (= (and b!6728975 (not res!2753001)) b!6728971))

(assert (= (and b!6728971 res!2753005) b!6728973))

(assert (= (or b!6728974 b!6728973) bm!607693))

(assert (= (or b!6728969 b!6728971) bm!607692))

(assert (= (or b!6728970 bm!607693) bm!607694))

(declare-fun m!7488154 () Bool)

(assert (=> b!6728972 m!7488154))

(declare-fun m!7488156 () Bool)

(assert (=> bm!607692 m!7488156))

(declare-fun m!7488158 () Bool)

(assert (=> bm!607694 m!7488158))

(assert (=> d!2114019 d!2114367))

(declare-fun d!2114369 () Bool)

(declare-fun res!2753006 () Bool)

(declare-fun e!4065295 () Bool)

(assert (=> d!2114369 (=> res!2753006 e!4065295)))

(assert (=> d!2114369 (= res!2753006 ((_ is Nil!65840) (exprs!6439 (h!72290 zl!343))))))

(assert (=> d!2114369 (= (forall!15755 (exprs!6439 (h!72290 zl!343)) lambda!377553) e!4065295)))

(declare-fun b!6728986 () Bool)

(declare-fun e!4065296 () Bool)

(assert (=> b!6728986 (= e!4065295 e!4065296)))

(declare-fun res!2753007 () Bool)

(assert (=> b!6728986 (=> (not res!2753007) (not e!4065296))))

(assert (=> b!6728986 (= res!2753007 (dynLambda!26262 lambda!377553 (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6728987 () Bool)

(assert (=> b!6728987 (= e!4065296 (forall!15755 (t!379649 (exprs!6439 (h!72290 zl!343))) lambda!377553))))

(assert (= (and d!2114369 (not res!2753006)) b!6728986))

(assert (= (and b!6728986 res!2753007) b!6728987))

(declare-fun b_lambda!253331 () Bool)

(assert (=> (not b_lambda!253331) (not b!6728986)))

(declare-fun m!7488162 () Bool)

(assert (=> b!6728986 m!7488162))

(declare-fun m!7488164 () Bool)

(assert (=> b!6728987 m!7488164))

(assert (=> d!2114019 d!2114369))

(declare-fun d!2114371 () Bool)

(assert (=> d!2114371 true))

(assert (=> d!2114371 true))

(declare-fun res!2753008 () Bool)

(assert (=> d!2114371 (= (choose!50137 lambda!377479) res!2753008)))

(assert (=> d!2113973 d!2114371))

(declare-fun b!6728994 () Bool)

(declare-fun e!4065304 () Bool)

(declare-fun e!4065303 () Bool)

(assert (=> b!6728994 (= e!4065304 e!4065303)))

(declare-fun c!1247742 () Bool)

(assert (=> b!6728994 (= c!1247742 ((_ is Star!16555) (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))))))

(declare-fun b!6728995 () Bool)

(declare-fun e!4065302 () Bool)

(assert (=> b!6728995 (= e!4065303 e!4065302)))

(declare-fun c!1247743 () Bool)

(assert (=> b!6728995 (= c!1247743 ((_ is Union!16555) (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))))))

(declare-fun d!2114373 () Bool)

(declare-fun res!2753010 () Bool)

(assert (=> d!2114373 (=> res!2753010 e!4065304)))

(assert (=> d!2114373 (= res!2753010 ((_ is ElementMatch!16555) (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))))))

(assert (=> d!2114373 (= (validRegex!8291 (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))) e!4065304)))

(declare-fun b!6728996 () Bool)

(declare-fun res!2753012 () Bool)

(declare-fun e!4065299 () Bool)

(assert (=> b!6728996 (=> (not res!2753012) (not e!4065299))))

(declare-fun call!607700 () Bool)

(assert (=> b!6728996 (= res!2753012 call!607700)))

(assert (=> b!6728996 (= e!4065302 e!4065299)))

(declare-fun b!6728997 () Bool)

(declare-fun e!4065301 () Bool)

(declare-fun call!607701 () Bool)

(assert (=> b!6728997 (= e!4065301 call!607701)))

(declare-fun b!6728998 () Bool)

(declare-fun e!4065305 () Bool)

(declare-fun e!4065306 () Bool)

(assert (=> b!6728998 (= e!4065305 e!4065306)))

(declare-fun res!2753013 () Bool)

(assert (=> b!6728998 (=> (not res!2753013) (not e!4065306))))

(assert (=> b!6728998 (= res!2753013 call!607700)))

(declare-fun b!6728999 () Bool)

(assert (=> b!6728999 (= e!4065303 e!4065301)))

(declare-fun res!2753011 () Bool)

(assert (=> b!6728999 (= res!2753011 (not (nullable!6542 (reg!16884 (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))))))))

(assert (=> b!6728999 (=> (not res!2753011) (not e!4065301))))

(declare-fun bm!607695 () Bool)

(assert (=> bm!607695 (= call!607700 (validRegex!8291 (ite c!1247743 (regOne!33623 (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))) (regOne!33622 (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))))))))

(declare-fun bm!607696 () Bool)

(declare-fun call!607702 () Bool)

(assert (=> bm!607696 (= call!607702 call!607701)))

(declare-fun b!6729000 () Bool)

(assert (=> b!6729000 (= e!4065306 call!607702)))

(declare-fun b!6729001 () Bool)

(assert (=> b!6729001 (= e!4065299 call!607702)))

(declare-fun bm!607697 () Bool)

(assert (=> bm!607697 (= call!607701 (validRegex!8291 (ite c!1247742 (reg!16884 (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))) (ite c!1247743 (regTwo!33623 (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292)))) (regTwo!33622 (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292))))))))))

(declare-fun b!6729002 () Bool)

(declare-fun res!2753009 () Bool)

(assert (=> b!6729002 (=> res!2753009 e!4065305)))

(assert (=> b!6729002 (= res!2753009 (not ((_ is Concat!25400) (ite c!1247554 (reg!16884 r!7292) (ite c!1247555 (regTwo!33623 r!7292) (regTwo!33622 r!7292))))))))

(assert (=> b!6729002 (= e!4065302 e!4065305)))

(assert (= (and d!2114373 (not res!2753010)) b!6728994))

(assert (= (and b!6728994 c!1247742) b!6728999))

(assert (= (and b!6728994 (not c!1247742)) b!6728995))

(assert (= (and b!6728999 res!2753011) b!6728997))

(assert (= (and b!6728995 c!1247743) b!6728996))

(assert (= (and b!6728995 (not c!1247743)) b!6729002))

(assert (= (and b!6728996 res!2753012) b!6729001))

(assert (= (and b!6729002 (not res!2753009)) b!6728998))

(assert (= (and b!6728998 res!2753013) b!6729000))

(assert (= (or b!6729001 b!6729000) bm!607696))

(assert (= (or b!6728996 b!6728998) bm!607695))

(assert (= (or b!6728997 bm!607696) bm!607697))

(declare-fun m!7488168 () Bool)

(assert (=> b!6728999 m!7488168))

(declare-fun m!7488170 () Bool)

(assert (=> bm!607695 m!7488170))

(declare-fun m!7488172 () Bool)

(assert (=> bm!607697 m!7488172))

(assert (=> bm!607557 d!2114373))

(declare-fun c!1247744 () Bool)

(declare-fun d!2114375 () Bool)

(assert (=> d!2114375 (= c!1247744 (and ((_ is ElementMatch!16555) (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))) (= (c!1247365 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))) (h!72289 s!2326))))))

(declare-fun e!4065311 () (InoxSet Context!11878))

(assert (=> d!2114375 (= (derivationStepZipperDown!1783 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292))))) (ite (or c!1247417 c!1247414) (Context!11879 lt!2437418) (Context!11879 call!607502)) (h!72289 s!2326)) e!4065311)))

(declare-fun b!6729019 () Bool)

(declare-fun e!4065313 () (InoxSet Context!11878))

(declare-fun call!607706 () (InoxSet Context!11878))

(declare-fun call!607704 () (InoxSet Context!11878))

(assert (=> b!6729019 (= e!4065313 ((_ map or) call!607706 call!607704))))

(declare-fun c!1247748 () Bool)

(declare-fun bm!607698 () Bool)

(declare-fun call!607705 () List!65964)

(assert (=> bm!607698 (= call!607704 (derivationStepZipperDown!1783 (ite c!1247748 (regTwo!33623 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))) (regOne!33622 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292))))))) (ite c!1247748 (ite (or c!1247417 c!1247414) (Context!11879 lt!2437418) (Context!11879 call!607502)) (Context!11879 call!607705)) (h!72289 s!2326)))))

(declare-fun b!6729020 () Bool)

(declare-fun c!1247745 () Bool)

(declare-fun e!4065314 () Bool)

(assert (=> b!6729020 (= c!1247745 e!4065314)))

(declare-fun res!2753014 () Bool)

(assert (=> b!6729020 (=> (not res!2753014) (not e!4065314))))

(assert (=> b!6729020 (= res!2753014 ((_ is Concat!25400) (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))))))

(declare-fun e!4065315 () (InoxSet Context!11878))

(assert (=> b!6729020 (= e!4065313 e!4065315)))

(declare-fun call!607708 () List!65964)

(declare-fun c!1247746 () Bool)

(declare-fun bm!607699 () Bool)

(assert (=> bm!607699 (= call!607706 (derivationStepZipperDown!1783 (ite c!1247748 (regOne!33623 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))) (ite c!1247745 (regTwo!33622 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))) (ite c!1247746 (regOne!33622 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))) (reg!16884 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292))))))))) (ite (or c!1247748 c!1247745) (ite (or c!1247417 c!1247414) (Context!11879 lt!2437418) (Context!11879 call!607502)) (Context!11879 call!607708)) (h!72289 s!2326)))))

(declare-fun c!1247747 () Bool)

(declare-fun b!6729021 () Bool)

(assert (=> b!6729021 (= c!1247747 ((_ is Star!16555) (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))))))

(declare-fun e!4065312 () (InoxSet Context!11878))

(declare-fun e!4065316 () (InoxSet Context!11878))

(assert (=> b!6729021 (= e!4065312 e!4065316)))

(declare-fun b!6729022 () Bool)

(assert (=> b!6729022 (= e!4065314 (nullable!6542 (regOne!33622 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292))))))))))

(declare-fun bm!607700 () Bool)

(declare-fun call!607703 () (InoxSet Context!11878))

(declare-fun call!607707 () (InoxSet Context!11878))

(assert (=> bm!607700 (= call!607703 call!607707)))

(declare-fun b!6729023 () Bool)

(assert (=> b!6729023 (= e!4065315 ((_ map or) call!607704 call!607707))))

(declare-fun bm!607701 () Bool)

(assert (=> bm!607701 (= call!607708 call!607705)))

(declare-fun b!6729024 () Bool)

(assert (=> b!6729024 (= e!4065311 e!4065313)))

(assert (=> b!6729024 (= c!1247748 ((_ is Union!16555) (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))))))

(declare-fun bm!607702 () Bool)

(assert (=> bm!607702 (= call!607707 call!607706)))

(declare-fun b!6729025 () Bool)

(assert (=> b!6729025 (= e!4065315 e!4065312)))

(assert (=> b!6729025 (= c!1247746 ((_ is Concat!25400) (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))))))

(declare-fun bm!607703 () Bool)

(assert (=> bm!607703 (= call!607705 ($colon$colon!2372 (exprs!6439 (ite (or c!1247417 c!1247414) (Context!11879 lt!2437418) (Context!11879 call!607502))) (ite (or c!1247745 c!1247746) (regTwo!33622 (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292)))))) (ite c!1247417 (regOne!33623 (reg!16884 r!7292)) (ite c!1247414 (regTwo!33622 (reg!16884 r!7292)) (ite c!1247415 (regOne!33622 (reg!16884 r!7292)) (reg!16884 (reg!16884 r!7292))))))))))

(declare-fun b!6729026 () Bool)

(assert (=> b!6729026 (= e!4065316 call!607703)))

(declare-fun b!6729027 () Bool)

(assert (=> b!6729027 (= e!4065312 call!607703)))

(declare-fun b!6729030 () Bool)

(assert (=> b!6729030 (= e!4065311 (store ((as const (Array Context!11878 Bool)) false) (ite (or c!1247417 c!1247414) (Context!11879 lt!2437418) (Context!11879 call!607502)) true))))

(declare-fun b!6729033 () Bool)

(assert (=> b!6729033 (= e!4065316 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2114375 c!1247744) b!6729030))

(assert (= (and d!2114375 (not c!1247744)) b!6729024))

(assert (= (and b!6729024 c!1247748) b!6729019))

(assert (= (and b!6729024 (not c!1247748)) b!6729020))

(assert (= (and b!6729020 res!2753014) b!6729022))

(assert (= (and b!6729020 c!1247745) b!6729023))

(assert (= (and b!6729020 (not c!1247745)) b!6729025))

(assert (= (and b!6729025 c!1247746) b!6729027))

(assert (= (and b!6729025 (not c!1247746)) b!6729021))

(assert (= (and b!6729021 c!1247747) b!6729026))

(assert (= (and b!6729021 (not c!1247747)) b!6729033))

(assert (= (or b!6729027 b!6729026) bm!607701))

(assert (= (or b!6729027 b!6729026) bm!607700))

(assert (= (or b!6729023 bm!607701) bm!607703))

(assert (= (or b!6729023 bm!607700) bm!607702))

(assert (= (or b!6729019 b!6729023) bm!607698))

(assert (= (or b!6729019 bm!607702) bm!607699))

(declare-fun m!7488174 () Bool)

(assert (=> bm!607698 m!7488174))

(declare-fun m!7488176 () Bool)

(assert (=> b!6729030 m!7488176))

(declare-fun m!7488178 () Bool)

(assert (=> b!6729022 m!7488178))

(declare-fun m!7488180 () Bool)

(assert (=> bm!607703 m!7488180))

(declare-fun m!7488182 () Bool)

(assert (=> bm!607699 m!7488182))

(assert (=> bm!607493 d!2114375))

(declare-fun d!2114377 () Bool)

(assert (=> d!2114377 (= (head!13538 (unfocusZipperList!1976 zl!343)) (h!72288 (unfocusZipperList!1976 zl!343)))))

(assert (=> b!6728187 d!2114377))

(declare-fun b!6729065 () Bool)

(declare-fun res!2753015 () Bool)

(declare-fun e!4065327 () Bool)

(assert (=> b!6729065 (=> (not res!2753015) (not e!4065327))))

(declare-fun lt!2437541 () List!65965)

(assert (=> b!6729065 (= res!2753015 (= (size!40605 lt!2437541) (+ (size!40605 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841))) (size!40605 (t!379650 s!2326)))))))

(declare-fun b!6729063 () Bool)

(declare-fun e!4065326 () List!65965)

(assert (=> b!6729063 (= e!4065326 (t!379650 s!2326))))

(declare-fun d!2114379 () Bool)

(assert (=> d!2114379 e!4065327))

(declare-fun res!2753016 () Bool)

(assert (=> d!2114379 (=> (not res!2753016) (not e!4065327))))

(assert (=> d!2114379 (= res!2753016 (= (content!12781 lt!2437541) ((_ map or) (content!12781 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841))) (content!12781 (t!379650 s!2326)))))))

(assert (=> d!2114379 (= lt!2437541 e!4065326)))

(declare-fun c!1247749 () Bool)

(assert (=> d!2114379 (= c!1247749 ((_ is Nil!65841) (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841))))))

(assert (=> d!2114379 (= (++!14711 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (t!379650 s!2326)) lt!2437541)))

(declare-fun b!6729064 () Bool)

(assert (=> b!6729064 (= e!4065326 (Cons!65841 (h!72289 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841))) (++!14711 (t!379650 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841))) (t!379650 s!2326))))))

(declare-fun b!6729066 () Bool)

(assert (=> b!6729066 (= e!4065327 (or (not (= (t!379650 s!2326) Nil!65841)) (= lt!2437541 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)))))))

(assert (= (and d!2114379 c!1247749) b!6729063))

(assert (= (and d!2114379 (not c!1247749)) b!6729064))

(assert (= (and d!2114379 res!2753016) b!6729065))

(assert (= (and b!6729065 res!2753015) b!6729066))

(declare-fun m!7488184 () Bool)

(assert (=> b!6729065 m!7488184))

(assert (=> b!6729065 m!7487372))

(declare-fun m!7488186 () Bool)

(assert (=> b!6729065 m!7488186))

(declare-fun m!7488188 () Bool)

(assert (=> b!6729065 m!7488188))

(declare-fun m!7488190 () Bool)

(assert (=> d!2114379 m!7488190))

(assert (=> d!2114379 m!7487372))

(declare-fun m!7488192 () Bool)

(assert (=> d!2114379 m!7488192))

(declare-fun m!7488194 () Bool)

(assert (=> d!2114379 m!7488194))

(declare-fun m!7488196 () Bool)

(assert (=> b!6729064 m!7488196))

(assert (=> b!6728137 d!2114379))

(declare-fun b!6729077 () Bool)

(declare-fun res!2753017 () Bool)

(declare-fun e!4065331 () Bool)

(assert (=> b!6729077 (=> (not res!2753017) (not e!4065331))))

(declare-fun lt!2437542 () List!65965)

(assert (=> b!6729077 (= res!2753017 (= (size!40605 lt!2437542) (+ (size!40605 Nil!65841) (size!40605 (Cons!65841 (h!72289 s!2326) Nil!65841)))))))

(declare-fun b!6729075 () Bool)

(declare-fun e!4065330 () List!65965)

(assert (=> b!6729075 (= e!4065330 (Cons!65841 (h!72289 s!2326) Nil!65841))))

(declare-fun d!2114381 () Bool)

(assert (=> d!2114381 e!4065331))

(declare-fun res!2753018 () Bool)

(assert (=> d!2114381 (=> (not res!2753018) (not e!4065331))))

(assert (=> d!2114381 (= res!2753018 (= (content!12781 lt!2437542) ((_ map or) (content!12781 Nil!65841) (content!12781 (Cons!65841 (h!72289 s!2326) Nil!65841)))))))

(assert (=> d!2114381 (= lt!2437542 e!4065330)))

(declare-fun c!1247750 () Bool)

(assert (=> d!2114381 (= c!1247750 ((_ is Nil!65841) Nil!65841))))

(assert (=> d!2114381 (= (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) lt!2437542)))

(declare-fun b!6729076 () Bool)

(assert (=> b!6729076 (= e!4065330 (Cons!65841 (h!72289 Nil!65841) (++!14711 (t!379650 Nil!65841) (Cons!65841 (h!72289 s!2326) Nil!65841))))))

(declare-fun b!6729078 () Bool)

(assert (=> b!6729078 (= e!4065331 (or (not (= (Cons!65841 (h!72289 s!2326) Nil!65841) Nil!65841)) (= lt!2437542 Nil!65841)))))

(assert (= (and d!2114381 c!1247750) b!6729075))

(assert (= (and d!2114381 (not c!1247750)) b!6729076))

(assert (= (and d!2114381 res!2753018) b!6729077))

(assert (= (and b!6729077 res!2753017) b!6729078))

(declare-fun m!7488200 () Bool)

(assert (=> b!6729077 m!7488200))

(declare-fun m!7488202 () Bool)

(assert (=> b!6729077 m!7488202))

(declare-fun m!7488204 () Bool)

(assert (=> b!6729077 m!7488204))

(declare-fun m!7488208 () Bool)

(assert (=> d!2114381 m!7488208))

(declare-fun m!7488210 () Bool)

(assert (=> d!2114381 m!7488210))

(declare-fun m!7488212 () Bool)

(assert (=> d!2114381 m!7488212))

(declare-fun m!7488214 () Bool)

(assert (=> b!6729076 m!7488214))

(assert (=> b!6728137 d!2114381))

(declare-fun d!2114391 () Bool)

(assert (=> d!2114391 (= (++!14711 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (t!379650 s!2326)) s!2326)))

(declare-fun lt!2437545 () Unit!159801)

(declare-fun choose!50144 (List!65965 C!33380 List!65965 List!65965) Unit!159801)

(assert (=> d!2114391 (= lt!2437545 (choose!50144 Nil!65841 (h!72289 s!2326) (t!379650 s!2326) s!2326))))

(assert (=> d!2114391 (= (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) (t!379650 s!2326))) s!2326)))

(assert (=> d!2114391 (= (lemmaMoveElementToOtherListKeepsConcatEq!2684 Nil!65841 (h!72289 s!2326) (t!379650 s!2326) s!2326) lt!2437545)))

(declare-fun bs!1789692 () Bool)

(assert (= bs!1789692 d!2114391))

(assert (=> bs!1789692 m!7487372))

(assert (=> bs!1789692 m!7487372))

(assert (=> bs!1789692 m!7487374))

(declare-fun m!7488222 () Bool)

(assert (=> bs!1789692 m!7488222))

(declare-fun m!7488224 () Bool)

(assert (=> bs!1789692 m!7488224))

(assert (=> b!6728137 d!2114391))

(declare-fun b!6729079 () Bool)

(declare-fun e!4065334 () Option!16442)

(assert (=> b!6729079 (= e!4065334 (Some!16441 (tuple2!67061 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (t!379650 s!2326))))))

(declare-fun b!6729080 () Bool)

(declare-fun e!4065336 () Option!16442)

(assert (=> b!6729080 (= e!4065334 e!4065336)))

(declare-fun c!1247751 () Bool)

(assert (=> b!6729080 (= c!1247751 ((_ is Nil!65841) (t!379650 s!2326)))))

(declare-fun b!6729081 () Bool)

(declare-fun e!4065335 () Bool)

(declare-fun lt!2437547 () Option!16442)

(assert (=> b!6729081 (= e!4065335 (= (++!14711 (_1!36833 (get!22904 lt!2437547)) (_2!36833 (get!22904 lt!2437547))) s!2326))))

(declare-fun d!2114397 () Bool)

(declare-fun e!4065333 () Bool)

(assert (=> d!2114397 e!4065333))

(declare-fun res!2753022 () Bool)

(assert (=> d!2114397 (=> res!2753022 e!4065333)))

(assert (=> d!2114397 (= res!2753022 e!4065335)))

(declare-fun res!2753020 () Bool)

(assert (=> d!2114397 (=> (not res!2753020) (not e!4065335))))

(assert (=> d!2114397 (= res!2753020 (isDefined!13145 lt!2437547))))

(assert (=> d!2114397 (= lt!2437547 e!4065334)))

(declare-fun c!1247752 () Bool)

(declare-fun e!4065332 () Bool)

(assert (=> d!2114397 (= c!1247752 e!4065332)))

(declare-fun res!2753019 () Bool)

(assert (=> d!2114397 (=> (not res!2753019) (not e!4065332))))

(assert (=> d!2114397 (= res!2753019 (matchR!8738 (reg!16884 r!7292) (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841))))))

(assert (=> d!2114397 (validRegex!8291 (reg!16884 r!7292))))

(assert (=> d!2114397 (= (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (t!379650 s!2326) s!2326) lt!2437547)))

(declare-fun b!6729082 () Bool)

(assert (=> b!6729082 (= e!4065336 None!16441)))

(declare-fun b!6729083 () Bool)

(assert (=> b!6729083 (= e!4065333 (not (isDefined!13145 lt!2437547)))))

(declare-fun b!6729084 () Bool)

(assert (=> b!6729084 (= e!4065332 (matchR!8738 r!7292 (t!379650 s!2326)))))

(declare-fun b!6729085 () Bool)

(declare-fun res!2753021 () Bool)

(assert (=> b!6729085 (=> (not res!2753021) (not e!4065335))))

(assert (=> b!6729085 (= res!2753021 (matchR!8738 (reg!16884 r!7292) (_1!36833 (get!22904 lt!2437547))))))

(declare-fun b!6729086 () Bool)

(declare-fun lt!2437546 () Unit!159801)

(declare-fun lt!2437548 () Unit!159801)

(assert (=> b!6729086 (= lt!2437546 lt!2437548)))

(assert (=> b!6729086 (= (++!14711 (++!14711 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (Cons!65841 (h!72289 (t!379650 s!2326)) Nil!65841)) (t!379650 (t!379650 s!2326))) s!2326)))

(assert (=> b!6729086 (= lt!2437548 (lemmaMoveElementToOtherListKeepsConcatEq!2684 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (h!72289 (t!379650 s!2326)) (t!379650 (t!379650 s!2326)) s!2326))))

(assert (=> b!6729086 (= e!4065336 (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 (++!14711 (++!14711 Nil!65841 (Cons!65841 (h!72289 s!2326) Nil!65841)) (Cons!65841 (h!72289 (t!379650 s!2326)) Nil!65841)) (t!379650 (t!379650 s!2326)) s!2326))))

(declare-fun b!6729087 () Bool)

(declare-fun res!2753023 () Bool)

(assert (=> b!6729087 (=> (not res!2753023) (not e!4065335))))

(assert (=> b!6729087 (= res!2753023 (matchR!8738 r!7292 (_2!36833 (get!22904 lt!2437547))))))

(assert (= (and d!2114397 res!2753019) b!6729084))

(assert (= (and d!2114397 c!1247752) b!6729079))

(assert (= (and d!2114397 (not c!1247752)) b!6729080))

(assert (= (and b!6729080 c!1247751) b!6729082))

(assert (= (and b!6729080 (not c!1247751)) b!6729086))

(assert (= (and d!2114397 res!2753020) b!6729085))

(assert (= (and b!6729085 res!2753021) b!6729087))

(assert (= (and b!6729087 res!2753023) b!6729081))

(assert (= (and d!2114397 (not res!2753022)) b!6729083))

(declare-fun m!7488226 () Bool)

(assert (=> b!6729085 m!7488226))

(declare-fun m!7488228 () Bool)

(assert (=> b!6729085 m!7488228))

(assert (=> b!6729086 m!7487372))

(declare-fun m!7488230 () Bool)

(assert (=> b!6729086 m!7488230))

(assert (=> b!6729086 m!7488230))

(declare-fun m!7488232 () Bool)

(assert (=> b!6729086 m!7488232))

(assert (=> b!6729086 m!7487372))

(declare-fun m!7488234 () Bool)

(assert (=> b!6729086 m!7488234))

(assert (=> b!6729086 m!7488230))

(declare-fun m!7488236 () Bool)

(assert (=> b!6729086 m!7488236))

(declare-fun m!7488238 () Bool)

(assert (=> b!6729083 m!7488238))

(assert (=> b!6729087 m!7488226))

(declare-fun m!7488240 () Bool)

(assert (=> b!6729087 m!7488240))

(assert (=> d!2114397 m!7488238))

(assert (=> d!2114397 m!7487372))

(declare-fun m!7488242 () Bool)

(assert (=> d!2114397 m!7488242))

(assert (=> d!2114397 m!7487358))

(declare-fun m!7488244 () Bool)

(assert (=> b!6729084 m!7488244))

(assert (=> b!6729081 m!7488226))

(declare-fun m!7488246 () Bool)

(assert (=> b!6729081 m!7488246))

(assert (=> b!6728137 d!2114397))

(declare-fun bs!1789693 () Bool)

(declare-fun d!2114399 () Bool)

(assert (= bs!1789693 (and d!2114399 d!2114035)))

(declare-fun lambda!377603 () Int)

(assert (=> bs!1789693 (= lambda!377603 lambda!377558)))

(declare-fun bs!1789694 () Bool)

(assert (= bs!1789694 (and d!2114399 d!2114019)))

(assert (=> bs!1789694 (= lambda!377603 lambda!377553)))

(declare-fun bs!1789695 () Bool)

(assert (= bs!1789695 (and d!2114399 d!2114335)))

(assert (=> bs!1789695 (= lambda!377603 lambda!377600)))

(declare-fun bs!1789696 () Bool)

(assert (= bs!1789696 (and d!2114399 d!2114015)))

(assert (=> bs!1789696 (= lambda!377603 lambda!377547)))

(declare-fun bs!1789697 () Bool)

(assert (= bs!1789697 (and d!2114399 d!2114021)))

(assert (=> bs!1789697 (= lambda!377603 lambda!377556)))

(declare-fun bs!1789698 () Bool)

(assert (= bs!1789698 (and d!2114399 d!2114017)))

(assert (=> bs!1789698 (= lambda!377603 lambda!377550)))

(declare-fun bs!1789699 () Bool)

(assert (= bs!1789699 (and d!2114399 d!2114149)))

(assert (=> bs!1789699 (= lambda!377603 lambda!377577)))

(declare-fun bs!1789700 () Bool)

(assert (= bs!1789700 (and d!2114399 d!2114043)))

(assert (=> bs!1789700 (= lambda!377603 lambda!377559)))

(declare-fun bs!1789701 () Bool)

(assert (= bs!1789701 (and d!2114399 d!2114283)))

(assert (=> bs!1789701 (= lambda!377603 lambda!377595)))

(declare-fun b!6729088 () Bool)

(declare-fun e!4065340 () Bool)

(declare-fun e!4065338 () Bool)

(assert (=> b!6729088 (= e!4065340 e!4065338)))

(declare-fun c!1247755 () Bool)

(assert (=> b!6729088 (= c!1247755 (isEmpty!38174 (t!379649 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6729090 () Bool)

(declare-fun e!4065339 () Bool)

(assert (=> b!6729090 (= e!4065338 e!4065339)))

(declare-fun c!1247754 () Bool)

(assert (=> b!6729090 (= c!1247754 (isEmpty!38174 (tail!12623 (t!379649 (exprs!6439 (h!72290 zl!343))))))))

(declare-fun b!6729091 () Bool)

(declare-fun lt!2437549 () Regex!16555)

(assert (=> b!6729091 (= e!4065339 (= lt!2437549 (head!13538 (t!379649 (exprs!6439 (h!72290 zl!343))))))))

(declare-fun b!6729092 () Bool)

(declare-fun e!4065342 () Bool)

(assert (=> b!6729092 (= e!4065342 (isEmpty!38174 (t!379649 (t!379649 (exprs!6439 (h!72290 zl!343))))))))

(declare-fun b!6729093 () Bool)

(declare-fun e!4065341 () Regex!16555)

(assert (=> b!6729093 (= e!4065341 (h!72288 (t!379649 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6729094 () Bool)

(declare-fun e!4065337 () Regex!16555)

(assert (=> b!6729094 (= e!4065337 EmptyExpr!16555)))

(declare-fun b!6729095 () Bool)

(assert (=> b!6729095 (= e!4065341 e!4065337)))

(declare-fun c!1247753 () Bool)

(assert (=> b!6729095 (= c!1247753 ((_ is Cons!65840) (t!379649 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun b!6729089 () Bool)

(assert (=> b!6729089 (= e!4065337 (Concat!25400 (h!72288 (t!379649 (exprs!6439 (h!72290 zl!343)))) (generalisedConcat!2152 (t!379649 (t!379649 (exprs!6439 (h!72290 zl!343)))))))))

(assert (=> d!2114399 e!4065340))

(declare-fun res!2753025 () Bool)

(assert (=> d!2114399 (=> (not res!2753025) (not e!4065340))))

(assert (=> d!2114399 (= res!2753025 (validRegex!8291 lt!2437549))))

(assert (=> d!2114399 (= lt!2437549 e!4065341)))

(declare-fun c!1247756 () Bool)

(assert (=> d!2114399 (= c!1247756 e!4065342)))

(declare-fun res!2753024 () Bool)

(assert (=> d!2114399 (=> (not res!2753024) (not e!4065342))))

(assert (=> d!2114399 (= res!2753024 ((_ is Cons!65840) (t!379649 (exprs!6439 (h!72290 zl!343)))))))

(assert (=> d!2114399 (forall!15755 (t!379649 (exprs!6439 (h!72290 zl!343))) lambda!377603)))

(assert (=> d!2114399 (= (generalisedConcat!2152 (t!379649 (exprs!6439 (h!72290 zl!343)))) lt!2437549)))

(declare-fun b!6729096 () Bool)

(assert (=> b!6729096 (= e!4065339 (isConcat!1444 lt!2437549))))

(declare-fun b!6729097 () Bool)

(assert (=> b!6729097 (= e!4065338 (isEmptyExpr!1921 lt!2437549))))

(assert (= (and d!2114399 res!2753024) b!6729092))

(assert (= (and d!2114399 c!1247756) b!6729093))

(assert (= (and d!2114399 (not c!1247756)) b!6729095))

(assert (= (and b!6729095 c!1247753) b!6729089))

(assert (= (and b!6729095 (not c!1247753)) b!6729094))

(assert (= (and d!2114399 res!2753025) b!6729088))

(assert (= (and b!6729088 c!1247755) b!6729097))

(assert (= (and b!6729088 (not c!1247755)) b!6729090))

(assert (= (and b!6729090 c!1247754) b!6729091))

(assert (= (and b!6729090 (not c!1247754)) b!6729096))

(declare-fun m!7488248 () Bool)

(assert (=> b!6729097 m!7488248))

(declare-fun m!7488250 () Bool)

(assert (=> b!6729092 m!7488250))

(assert (=> b!6729088 m!7487436))

(declare-fun m!7488252 () Bool)

(assert (=> b!6729089 m!7488252))

(declare-fun m!7488254 () Bool)

(assert (=> b!6729091 m!7488254))

(declare-fun m!7488256 () Bool)

(assert (=> d!2114399 m!7488256))

(declare-fun m!7488258 () Bool)

(assert (=> d!2114399 m!7488258))

(declare-fun m!7488260 () Bool)

(assert (=> b!6729090 m!7488260))

(assert (=> b!6729090 m!7488260))

(declare-fun m!7488262 () Bool)

(assert (=> b!6729090 m!7488262))

(declare-fun m!7488264 () Bool)

(assert (=> b!6729096 m!7488264))

(assert (=> b!6728218 d!2114399))

(declare-fun d!2114401 () Bool)

(declare-fun c!1247757 () Bool)

(assert (=> d!2114401 (= c!1247757 (and ((_ is ElementMatch!16555) (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))) (= (c!1247365 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))) (h!72289 s!2326))))))

(declare-fun e!4065343 () (InoxSet Context!11878))

(assert (=> d!2114401 (= (derivationStepZipperDown!1783 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292))) (ite c!1247417 (Context!11879 lt!2437418) (Context!11879 call!607499)) (h!72289 s!2326)) e!4065343)))

(declare-fun b!6729098 () Bool)

(declare-fun e!4065345 () (InoxSet Context!11878))

(declare-fun call!607712 () (InoxSet Context!11878))

(declare-fun call!607710 () (InoxSet Context!11878))

(assert (=> b!6729098 (= e!4065345 ((_ map or) call!607712 call!607710))))

(declare-fun bm!607704 () Bool)

(declare-fun c!1247761 () Bool)

(declare-fun call!607711 () List!65964)

(assert (=> bm!607704 (= call!607710 (derivationStepZipperDown!1783 (ite c!1247761 (regTwo!33623 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))) (regOne!33622 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292))))) (ite c!1247761 (ite c!1247417 (Context!11879 lt!2437418) (Context!11879 call!607499)) (Context!11879 call!607711)) (h!72289 s!2326)))))

(declare-fun b!6729099 () Bool)

(declare-fun c!1247758 () Bool)

(declare-fun e!4065346 () Bool)

(assert (=> b!6729099 (= c!1247758 e!4065346)))

(declare-fun res!2753026 () Bool)

(assert (=> b!6729099 (=> (not res!2753026) (not e!4065346))))

(assert (=> b!6729099 (= res!2753026 ((_ is Concat!25400) (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))))))

(declare-fun e!4065347 () (InoxSet Context!11878))

(assert (=> b!6729099 (= e!4065345 e!4065347)))

(declare-fun bm!607705 () Bool)

(declare-fun c!1247759 () Bool)

(declare-fun call!607714 () List!65964)

(assert (=> bm!607705 (= call!607712 (derivationStepZipperDown!1783 (ite c!1247761 (regOne!33623 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))) (ite c!1247758 (regTwo!33622 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))) (ite c!1247759 (regOne!33622 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))) (reg!16884 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292))))))) (ite (or c!1247761 c!1247758) (ite c!1247417 (Context!11879 lt!2437418) (Context!11879 call!607499)) (Context!11879 call!607714)) (h!72289 s!2326)))))

(declare-fun b!6729100 () Bool)

(declare-fun c!1247760 () Bool)

(assert (=> b!6729100 (= c!1247760 ((_ is Star!16555) (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))))))

(declare-fun e!4065344 () (InoxSet Context!11878))

(declare-fun e!4065348 () (InoxSet Context!11878))

(assert (=> b!6729100 (= e!4065344 e!4065348)))

(declare-fun b!6729101 () Bool)

(assert (=> b!6729101 (= e!4065346 (nullable!6542 (regOne!33622 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292))))))))

(declare-fun bm!607706 () Bool)

(declare-fun call!607709 () (InoxSet Context!11878))

(declare-fun call!607713 () (InoxSet Context!11878))

(assert (=> bm!607706 (= call!607709 call!607713)))

(declare-fun b!6729102 () Bool)

(assert (=> b!6729102 (= e!4065347 ((_ map or) call!607710 call!607713))))

(declare-fun bm!607707 () Bool)

(assert (=> bm!607707 (= call!607714 call!607711)))

(declare-fun b!6729103 () Bool)

(assert (=> b!6729103 (= e!4065343 e!4065345)))

(assert (=> b!6729103 (= c!1247761 ((_ is Union!16555) (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))))))

(declare-fun bm!607708 () Bool)

(assert (=> bm!607708 (= call!607713 call!607712)))

(declare-fun b!6729104 () Bool)

(assert (=> b!6729104 (= e!4065347 e!4065344)))

(assert (=> b!6729104 (= c!1247759 ((_ is Concat!25400) (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))))))

(declare-fun bm!607709 () Bool)

(assert (=> bm!607709 (= call!607711 ($colon$colon!2372 (exprs!6439 (ite c!1247417 (Context!11879 lt!2437418) (Context!11879 call!607499))) (ite (or c!1247758 c!1247759) (regTwo!33622 (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292)))) (ite c!1247417 (regTwo!33623 (reg!16884 r!7292)) (regOne!33622 (reg!16884 r!7292))))))))

(declare-fun b!6729105 () Bool)

(assert (=> b!6729105 (= e!4065348 call!607709)))

(declare-fun b!6729106 () Bool)

(assert (=> b!6729106 (= e!4065344 call!607709)))

(declare-fun b!6729107 () Bool)

(assert (=> b!6729107 (= e!4065343 (store ((as const (Array Context!11878 Bool)) false) (ite c!1247417 (Context!11879 lt!2437418) (Context!11879 call!607499)) true))))

(declare-fun b!6729108 () Bool)

(assert (=> b!6729108 (= e!4065348 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2114401 c!1247757) b!6729107))

(assert (= (and d!2114401 (not c!1247757)) b!6729103))

(assert (= (and b!6729103 c!1247761) b!6729098))

(assert (= (and b!6729103 (not c!1247761)) b!6729099))

(assert (= (and b!6729099 res!2753026) b!6729101))

(assert (= (and b!6729099 c!1247758) b!6729102))

(assert (= (and b!6729099 (not c!1247758)) b!6729104))

(assert (= (and b!6729104 c!1247759) b!6729106))

(assert (= (and b!6729104 (not c!1247759)) b!6729100))

(assert (= (and b!6729100 c!1247760) b!6729105))

(assert (= (and b!6729100 (not c!1247760)) b!6729108))

(assert (= (or b!6729106 b!6729105) bm!607707))

(assert (= (or b!6729106 b!6729105) bm!607706))

(assert (= (or b!6729102 bm!607707) bm!607709))

(assert (= (or b!6729102 bm!607706) bm!607708))

(assert (= (or b!6729098 b!6729102) bm!607704))

(assert (= (or b!6729098 bm!607708) bm!607705))

(declare-fun m!7488266 () Bool)

(assert (=> bm!607704 m!7488266))

(declare-fun m!7488268 () Bool)

(assert (=> b!6729107 m!7488268))

(declare-fun m!7488270 () Bool)

(assert (=> b!6729101 m!7488270))

(declare-fun m!7488272 () Bool)

(assert (=> bm!607709 m!7488272))

(declare-fun m!7488274 () Bool)

(assert (=> bm!607705 m!7488274))

(assert (=> bm!607492 d!2114401))

(declare-fun d!2114403 () Bool)

(declare-fun lambda!377606 () Int)

(declare-fun exists!2689 ((InoxSet Context!11878) Int) Bool)

(assert (=> d!2114403 (= (nullableZipper!2270 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326))) (exists!2689 (derivationStepZipper!2499 lt!2437420 (h!72289 s!2326)) lambda!377606))))

(declare-fun bs!1789702 () Bool)

(assert (= bs!1789702 d!2114403))

(assert (=> bs!1789702 m!7487066))

(declare-fun m!7488276 () Bool)

(assert (=> bs!1789702 m!7488276))

(assert (=> b!6728233 d!2114403))

(declare-fun b!6729109 () Bool)

(declare-fun e!4065353 () Bool)

(declare-fun e!4065352 () Bool)

(assert (=> b!6729109 (= e!4065353 e!4065352)))

(declare-fun c!1247764 () Bool)

(assert (=> b!6729109 (= c!1247764 ((_ is Star!16555) lt!2437504))))

(declare-fun b!6729110 () Bool)

(declare-fun e!4065351 () Bool)

(assert (=> b!6729110 (= e!4065352 e!4065351)))

(declare-fun c!1247765 () Bool)

(assert (=> b!6729110 (= c!1247765 ((_ is Union!16555) lt!2437504))))

(declare-fun d!2114405 () Bool)

(declare-fun res!2753028 () Bool)

(assert (=> d!2114405 (=> res!2753028 e!4065353)))

(assert (=> d!2114405 (= res!2753028 ((_ is ElementMatch!16555) lt!2437504))))

(assert (=> d!2114405 (= (validRegex!8291 lt!2437504) e!4065353)))

(declare-fun b!6729111 () Bool)

(declare-fun res!2753030 () Bool)

(declare-fun e!4065349 () Bool)

(assert (=> b!6729111 (=> (not res!2753030) (not e!4065349))))

(declare-fun call!607715 () Bool)

(assert (=> b!6729111 (= res!2753030 call!607715)))

(assert (=> b!6729111 (= e!4065351 e!4065349)))

(declare-fun b!6729112 () Bool)

(declare-fun e!4065350 () Bool)

(declare-fun call!607716 () Bool)

(assert (=> b!6729112 (= e!4065350 call!607716)))

(declare-fun b!6729113 () Bool)

(declare-fun e!4065354 () Bool)

(declare-fun e!4065355 () Bool)

(assert (=> b!6729113 (= e!4065354 e!4065355)))

(declare-fun res!2753031 () Bool)

(assert (=> b!6729113 (=> (not res!2753031) (not e!4065355))))

(assert (=> b!6729113 (= res!2753031 call!607715)))

(declare-fun b!6729114 () Bool)

(assert (=> b!6729114 (= e!4065352 e!4065350)))

(declare-fun res!2753029 () Bool)

(assert (=> b!6729114 (= res!2753029 (not (nullable!6542 (reg!16884 lt!2437504))))))

(assert (=> b!6729114 (=> (not res!2753029) (not e!4065350))))

(declare-fun bm!607710 () Bool)

(assert (=> bm!607710 (= call!607715 (validRegex!8291 (ite c!1247765 (regOne!33623 lt!2437504) (regOne!33622 lt!2437504))))))

(declare-fun bm!607711 () Bool)

(declare-fun call!607717 () Bool)

(assert (=> bm!607711 (= call!607717 call!607716)))

(declare-fun b!6729115 () Bool)

(assert (=> b!6729115 (= e!4065355 call!607717)))

(declare-fun b!6729116 () Bool)

(assert (=> b!6729116 (= e!4065349 call!607717)))

(declare-fun bm!607712 () Bool)

(assert (=> bm!607712 (= call!607716 (validRegex!8291 (ite c!1247764 (reg!16884 lt!2437504) (ite c!1247765 (regTwo!33623 lt!2437504) (regTwo!33622 lt!2437504)))))))

(declare-fun b!6729117 () Bool)

(declare-fun res!2753027 () Bool)

(assert (=> b!6729117 (=> res!2753027 e!4065354)))

(assert (=> b!6729117 (= res!2753027 (not ((_ is Concat!25400) lt!2437504)))))

(assert (=> b!6729117 (= e!4065351 e!4065354)))

(assert (= (and d!2114405 (not res!2753028)) b!6729109))

(assert (= (and b!6729109 c!1247764) b!6729114))

(assert (= (and b!6729109 (not c!1247764)) b!6729110))

(assert (= (and b!6729114 res!2753029) b!6729112))

(assert (= (and b!6729110 c!1247765) b!6729111))

(assert (= (and b!6729110 (not c!1247765)) b!6729117))

(assert (= (and b!6729111 res!2753030) b!6729116))

(assert (= (and b!6729117 (not res!2753027)) b!6729113))

(assert (= (and b!6729113 res!2753031) b!6729115))

(assert (= (or b!6729116 b!6729115) bm!607711))

(assert (= (or b!6729111 b!6729113) bm!607710))

(assert (= (or b!6729112 bm!607711) bm!607712))

(declare-fun m!7488278 () Bool)

(assert (=> b!6729114 m!7488278))

(declare-fun m!7488280 () Bool)

(assert (=> bm!607710 m!7488280))

(declare-fun m!7488282 () Bool)

(assert (=> bm!607712 m!7488282))

(assert (=> d!2114031 d!2114405))

(assert (=> d!2114031 d!2114015))

(assert (=> d!2114031 d!2114017))

(declare-fun d!2114407 () Bool)

(assert (=> d!2114407 true))

(assert (=> d!2114407 true))

(declare-fun res!2753032 () Bool)

(assert (=> d!2114407 (= (choose!50137 lambda!377480) res!2753032)))

(assert (=> d!2114001 d!2114407))

(assert (=> b!6728135 d!2113961))

(declare-fun d!2114409 () Bool)

(assert (=> d!2114409 (= (nullable!6542 (regOne!33622 r!7292)) (nullableFct!2456 (regOne!33622 r!7292)))))

(declare-fun bs!1789703 () Bool)

(assert (= bs!1789703 d!2114409))

(declare-fun m!7488284 () Bool)

(assert (=> bs!1789703 m!7488284))

(assert (=> b!6728146 d!2114409))

(declare-fun d!2114411 () Bool)

(assert (=> d!2114411 (= (isEmpty!38170 (tail!12622 s!2326)) ((_ is Nil!65841) (tail!12622 s!2326)))))

(assert (=> b!6727991 d!2114411))

(assert (=> b!6727991 d!2114185))

(declare-fun d!2114413 () Bool)

(declare-fun res!2753033 () Bool)

(declare-fun e!4065356 () Bool)

(assert (=> d!2114413 (=> res!2753033 e!4065356)))

(assert (=> d!2114413 (= res!2753033 ((_ is Nil!65840) lt!2437498))))

(assert (=> d!2114413 (= (forall!15755 lt!2437498 lambda!377550) e!4065356)))

(declare-fun b!6729118 () Bool)

(declare-fun e!4065357 () Bool)

(assert (=> b!6729118 (= e!4065356 e!4065357)))

(declare-fun res!2753034 () Bool)

(assert (=> b!6729118 (=> (not res!2753034) (not e!4065357))))

(assert (=> b!6729118 (= res!2753034 (dynLambda!26262 lambda!377550 (h!72288 lt!2437498)))))

(declare-fun b!6729119 () Bool)

(assert (=> b!6729119 (= e!4065357 (forall!15755 (t!379649 lt!2437498) lambda!377550))))

(assert (= (and d!2114413 (not res!2753033)) b!6729118))

(assert (= (and b!6729118 res!2753034) b!6729119))

(declare-fun b_lambda!253349 () Bool)

(assert (=> (not b_lambda!253349) (not b!6729118)))

(declare-fun m!7488286 () Bool)

(assert (=> b!6729118 m!7488286))

(declare-fun m!7488288 () Bool)

(assert (=> b!6729119 m!7488288))

(assert (=> d!2114017 d!2114413))

(declare-fun bs!1789704 () Bool)

(declare-fun b!6729129 () Bool)

(assert (= bs!1789704 (and b!6729129 d!2114191)))

(declare-fun lambda!377607 () Int)

(assert (=> bs!1789704 (not (= lambda!377607 lambda!377591))))

(declare-fun bs!1789705 () Bool)

(assert (= bs!1789705 (and b!6729129 b!6727945)))

(assert (=> bs!1789705 (not (= lambda!377607 lambda!377515))))

(declare-fun bs!1789706 () Bool)

(assert (= bs!1789706 (and b!6729129 b!6727947)))

(assert (=> bs!1789706 (= (and (= (reg!16884 (regTwo!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33623 r!7292) r!7292)) (= lambda!377607 lambda!377512))))

(declare-fun bs!1789707 () Bool)

(assert (= bs!1789707 (and b!6729129 d!2114007)))

(assert (=> bs!1789707 (not (= lambda!377607 lambda!377541))))

(declare-fun bs!1789708 () Bool)

(assert (= bs!1789708 (and b!6729129 d!2114003)))

(assert (=> bs!1789708 (not (= lambda!377607 lambda!377537))))

(declare-fun bs!1789709 () Bool)

(assert (= bs!1789709 (and b!6729129 b!6727590)))

(assert (=> bs!1789709 (= (and (= (reg!16884 (regTwo!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33623 r!7292) r!7292)) (= lambda!377607 lambda!377479))))

(declare-fun bs!1789710 () Bool)

(assert (= bs!1789710 (and b!6729129 b!6728906)))

(assert (=> bs!1789710 (not (= lambda!377607 lambda!377602))))

(assert (=> bs!1789708 (= (and (= (reg!16884 (regTwo!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33623 r!7292) (Star!16555 (reg!16884 r!7292)))) (= lambda!377607 lambda!377538))))

(assert (=> bs!1789709 (not (= lambda!377607 lambda!377478))))

(assert (=> bs!1789709 (not (= lambda!377607 lambda!377480))))

(assert (=> bs!1789704 (not (= lambda!377607 lambda!377590))))

(declare-fun bs!1789711 () Bool)

(assert (= bs!1789711 (and b!6729129 d!2113981)))

(assert (=> bs!1789711 (not (= lambda!377607 lambda!377532))))

(assert (=> bs!1789711 (not (= lambda!377607 lambda!377531))))

(declare-fun bs!1789712 () Bool)

(assert (= bs!1789712 (and b!6729129 b!6728908)))

(assert (=> bs!1789712 (= (and (= (reg!16884 (regTwo!33623 r!7292)) (reg!16884 (regOne!33623 r!7292))) (= (regTwo!33623 r!7292) (regOne!33623 r!7292))) (= lambda!377607 lambda!377601))))

(assert (=> b!6729129 true))

(assert (=> b!6729129 true))

(declare-fun bs!1789713 () Bool)

(declare-fun b!6729127 () Bool)

(assert (= bs!1789713 (and b!6729127 d!2114191)))

(declare-fun lambda!377608 () Int)

(assert (=> bs!1789713 (= (and (= (regOne!33622 (regTwo!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33622 (regTwo!33623 r!7292)) r!7292)) (= lambda!377608 lambda!377591))))

(declare-fun bs!1789714 () Bool)

(assert (= bs!1789714 (and b!6729127 b!6727945)))

(assert (=> bs!1789714 (= (and (= (regOne!33622 (regTwo!33623 r!7292)) (regOne!33622 r!7292)) (= (regTwo!33622 (regTwo!33623 r!7292)) (regTwo!33622 r!7292))) (= lambda!377608 lambda!377515))))

(declare-fun bs!1789715 () Bool)

(assert (= bs!1789715 (and b!6729127 b!6727947)))

(assert (=> bs!1789715 (not (= lambda!377608 lambda!377512))))

(declare-fun bs!1789716 () Bool)

(assert (= bs!1789716 (and b!6729127 d!2114007)))

(assert (=> bs!1789716 (not (= lambda!377608 lambda!377541))))

(declare-fun bs!1789717 () Bool)

(assert (= bs!1789717 (and b!6729127 d!2114003)))

(assert (=> bs!1789717 (not (= lambda!377608 lambda!377537))))

(declare-fun bs!1789718 () Bool)

(assert (= bs!1789718 (and b!6729127 b!6727590)))

(assert (=> bs!1789718 (not (= lambda!377608 lambda!377479))))

(declare-fun bs!1789719 () Bool)

(assert (= bs!1789719 (and b!6729127 b!6728906)))

(assert (=> bs!1789719 (= (and (= (regOne!33622 (regTwo!33623 r!7292)) (regOne!33622 (regOne!33623 r!7292))) (= (regTwo!33622 (regTwo!33623 r!7292)) (regTwo!33622 (regOne!33623 r!7292)))) (= lambda!377608 lambda!377602))))

(assert (=> bs!1789717 (not (= lambda!377608 lambda!377538))))

(assert (=> bs!1789718 (not (= lambda!377608 lambda!377478))))

(assert (=> bs!1789718 (= (and (= (regOne!33622 (regTwo!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33622 (regTwo!33623 r!7292)) r!7292)) (= lambda!377608 lambda!377480))))

(assert (=> bs!1789713 (not (= lambda!377608 lambda!377590))))

(declare-fun bs!1789720 () Bool)

(assert (= bs!1789720 (and b!6729127 b!6729129)))

(assert (=> bs!1789720 (not (= lambda!377608 lambda!377607))))

(declare-fun bs!1789721 () Bool)

(assert (= bs!1789721 (and b!6729127 d!2113981)))

(assert (=> bs!1789721 (= (and (= (regOne!33622 (regTwo!33623 r!7292)) (reg!16884 r!7292)) (= (regTwo!33622 (regTwo!33623 r!7292)) r!7292)) (= lambda!377608 lambda!377532))))

(assert (=> bs!1789721 (not (= lambda!377608 lambda!377531))))

(declare-fun bs!1789722 () Bool)

(assert (= bs!1789722 (and b!6729127 b!6728908)))

(assert (=> bs!1789722 (not (= lambda!377608 lambda!377601))))

(assert (=> b!6729127 true))

(assert (=> b!6729127 true))

(declare-fun c!1247767 () Bool)

(declare-fun call!607719 () Bool)

(declare-fun bm!607713 () Bool)

(assert (=> bm!607713 (= call!607719 (Exists!3623 (ite c!1247767 lambda!377607 lambda!377608)))))

(declare-fun b!6729120 () Bool)

(declare-fun res!2753036 () Bool)

(declare-fun e!4065364 () Bool)

(assert (=> b!6729120 (=> res!2753036 e!4065364)))

(declare-fun call!607718 () Bool)

(assert (=> b!6729120 (= res!2753036 call!607718)))

(declare-fun e!4065359 () Bool)

(assert (=> b!6729120 (= e!4065359 e!4065364)))

(declare-fun bm!607714 () Bool)

(assert (=> bm!607714 (= call!607718 (isEmpty!38170 s!2326))))

(declare-fun b!6729122 () Bool)

(declare-fun e!4065358 () Bool)

(assert (=> b!6729122 (= e!4065358 (matchRSpec!3656 (regTwo!33623 (regTwo!33623 r!7292)) s!2326))))

(declare-fun b!6729123 () Bool)

(declare-fun e!4065363 () Bool)

(assert (=> b!6729123 (= e!4065363 e!4065359)))

(assert (=> b!6729123 (= c!1247767 ((_ is Star!16555) (regTwo!33623 r!7292)))))

(declare-fun b!6729124 () Bool)

(declare-fun c!1247769 () Bool)

(assert (=> b!6729124 (= c!1247769 ((_ is ElementMatch!16555) (regTwo!33623 r!7292)))))

(declare-fun e!4065360 () Bool)

(declare-fun e!4065361 () Bool)

(assert (=> b!6729124 (= e!4065360 e!4065361)))

(declare-fun b!6729125 () Bool)

(declare-fun e!4065362 () Bool)

(assert (=> b!6729125 (= e!4065362 e!4065360)))

(declare-fun res!2753035 () Bool)

(assert (=> b!6729125 (= res!2753035 (not ((_ is EmptyLang!16555) (regTwo!33623 r!7292))))))

(assert (=> b!6729125 (=> (not res!2753035) (not e!4065360))))

(declare-fun b!6729126 () Bool)

(assert (=> b!6729126 (= e!4065361 (= s!2326 (Cons!65841 (c!1247365 (regTwo!33623 r!7292)) Nil!65841)))))

(assert (=> b!6729127 (= e!4065359 call!607719)))

(declare-fun b!6729128 () Bool)

(declare-fun c!1247766 () Bool)

(assert (=> b!6729128 (= c!1247766 ((_ is Union!16555) (regTwo!33623 r!7292)))))

(assert (=> b!6729128 (= e!4065361 e!4065363)))

(declare-fun b!6729121 () Bool)

(assert (=> b!6729121 (= e!4065362 call!607718)))

(declare-fun d!2114415 () Bool)

(declare-fun c!1247768 () Bool)

(assert (=> d!2114415 (= c!1247768 ((_ is EmptyExpr!16555) (regTwo!33623 r!7292)))))

(assert (=> d!2114415 (= (matchRSpec!3656 (regTwo!33623 r!7292) s!2326) e!4065362)))

(assert (=> b!6729129 (= e!4065364 call!607719)))

(declare-fun b!6729130 () Bool)

(assert (=> b!6729130 (= e!4065363 e!4065358)))

(declare-fun res!2753037 () Bool)

(assert (=> b!6729130 (= res!2753037 (matchRSpec!3656 (regOne!33623 (regTwo!33623 r!7292)) s!2326))))

(assert (=> b!6729130 (=> res!2753037 e!4065358)))

(assert (= (and d!2114415 c!1247768) b!6729121))

(assert (= (and d!2114415 (not c!1247768)) b!6729125))

(assert (= (and b!6729125 res!2753035) b!6729124))

(assert (= (and b!6729124 c!1247769) b!6729126))

(assert (= (and b!6729124 (not c!1247769)) b!6729128))

(assert (= (and b!6729128 c!1247766) b!6729130))

(assert (= (and b!6729128 (not c!1247766)) b!6729123))

(assert (= (and b!6729130 (not res!2753037)) b!6729122))

(assert (= (and b!6729123 c!1247767) b!6729120))

(assert (= (and b!6729123 (not c!1247767)) b!6729127))

(assert (= (and b!6729120 (not res!2753036)) b!6729129))

(assert (= (or b!6729129 b!6729127) bm!607713))

(assert (= (or b!6729121 b!6729120) bm!607714))

(declare-fun m!7488290 () Bool)

(assert (=> bm!607713 m!7488290))

(assert (=> bm!607714 m!7487034))

(declare-fun m!7488292 () Bool)

(assert (=> b!6729122 m!7488292))

(declare-fun m!7488294 () Bool)

(assert (=> b!6729130 m!7488294))

(assert (=> b!6727940 d!2114415))

(declare-fun d!2114417 () Bool)

(assert (=> d!2114417 (= (flatMap!2036 z!1189 lambda!377544) (choose!50131 z!1189 lambda!377544))))

(declare-fun bs!1789723 () Bool)

(assert (= bs!1789723 d!2114417))

(declare-fun m!7488296 () Bool)

(assert (=> bs!1789723 m!7488296))

(assert (=> d!2114013 d!2114417))

(assert (=> bm!607537 d!2113999))

(declare-fun bs!1789724 () Bool)

(declare-fun d!2114419 () Bool)

(assert (= bs!1789724 (and d!2114419 d!2114403)))

(declare-fun lambda!377609 () Int)

(assert (=> bs!1789724 (= lambda!377609 lambda!377606)))

(assert (=> d!2114419 (= (nullableZipper!2270 lt!2437420) (exists!2689 lt!2437420 lambda!377609))))

(declare-fun bs!1789725 () Bool)

(assert (= bs!1789725 d!2114419))

(declare-fun m!7488298 () Bool)

(assert (=> bs!1789725 m!7488298))

(assert (=> b!6728231 d!2114419))

(assert (=> d!2114007 d!2113979))

(declare-fun bs!1789726 () Bool)

(declare-fun d!2114421 () Bool)

(assert (= bs!1789726 (and d!2114421 d!2114191)))

(declare-fun lambda!377612 () Int)

(assert (=> bs!1789726 (not (= lambda!377612 lambda!377591))))

(declare-fun bs!1789727 () Bool)

(assert (= bs!1789727 (and d!2114421 b!6727945)))

(assert (=> bs!1789727 (not (= lambda!377612 lambda!377515))))

(declare-fun bs!1789728 () Bool)

(assert (= bs!1789728 (and d!2114421 b!6727947)))

(assert (=> bs!1789728 (not (= lambda!377612 lambda!377512))))

(declare-fun bs!1789729 () Bool)

(assert (= bs!1789729 (and d!2114421 d!2114007)))

(assert (=> bs!1789729 (= lambda!377612 lambda!377541)))

(declare-fun bs!1789730 () Bool)

(assert (= bs!1789730 (and d!2114421 d!2114003)))

(assert (=> bs!1789730 (= (= r!7292 (Star!16555 (reg!16884 r!7292))) (= lambda!377612 lambda!377537))))

(declare-fun bs!1789731 () Bool)

(assert (= bs!1789731 (and d!2114421 b!6729127)))

(assert (=> bs!1789731 (not (= lambda!377612 lambda!377608))))

(declare-fun bs!1789732 () Bool)

(assert (= bs!1789732 (and d!2114421 b!6727590)))

(assert (=> bs!1789732 (not (= lambda!377612 lambda!377479))))

(declare-fun bs!1789733 () Bool)

(assert (= bs!1789733 (and d!2114421 b!6728906)))

(assert (=> bs!1789733 (not (= lambda!377612 lambda!377602))))

(assert (=> bs!1789730 (not (= lambda!377612 lambda!377538))))

(assert (=> bs!1789732 (= lambda!377612 lambda!377478)))

(assert (=> bs!1789732 (not (= lambda!377612 lambda!377480))))

(assert (=> bs!1789726 (= lambda!377612 lambda!377590)))

(declare-fun bs!1789734 () Bool)

(assert (= bs!1789734 (and d!2114421 b!6729129)))

(assert (=> bs!1789734 (not (= lambda!377612 lambda!377607))))

(declare-fun bs!1789735 () Bool)

(assert (= bs!1789735 (and d!2114421 d!2113981)))

(assert (=> bs!1789735 (not (= lambda!377612 lambda!377532))))

(assert (=> bs!1789735 (= lambda!377612 lambda!377531)))

(declare-fun bs!1789736 () Bool)

(assert (= bs!1789736 (and d!2114421 b!6728908)))

(assert (=> bs!1789736 (not (= lambda!377612 lambda!377601))))

(assert (=> d!2114421 true))

(assert (=> d!2114421 true))

(assert (=> d!2114421 true))

(assert (=> d!2114421 (= (isDefined!13145 (findConcatSeparation!2856 (reg!16884 r!7292) r!7292 Nil!65841 s!2326 s!2326)) (Exists!3623 lambda!377612))))

(assert (=> d!2114421 true))

(declare-fun _$89!2944 () Unit!159801)

(assert (=> d!2114421 (= (choose!50141 (reg!16884 r!7292) r!7292 s!2326) _$89!2944)))

(declare-fun bs!1789737 () Bool)

(assert (= bs!1789737 d!2114421))

(assert (=> bs!1789737 m!7487042))

(assert (=> bs!1789737 m!7487042))

(assert (=> bs!1789737 m!7487044))

(declare-fun m!7488300 () Bool)

(assert (=> bs!1789737 m!7488300))

(assert (=> d!2114007 d!2114421))

(declare-fun d!2114423 () Bool)

(assert (=> d!2114423 (= (Exists!3623 lambda!377541) (choose!50137 lambda!377541))))

(declare-fun bs!1789738 () Bool)

(assert (= bs!1789738 d!2114423))

(declare-fun m!7488302 () Bool)

(assert (=> bs!1789738 m!7488302))

(assert (=> d!2114007 d!2114423))

(assert (=> d!2114007 d!2114005))

(assert (=> d!2114007 d!2114193))

(assert (=> d!2114005 d!2114241))

(declare-fun b!6729135 () Bool)

(declare-fun res!2753047 () Bool)

(declare-fun e!4065372 () Bool)

(assert (=> b!6729135 (=> res!2753047 e!4065372)))

(assert (=> b!6729135 (= res!2753047 (not ((_ is ElementMatch!16555) (reg!16884 r!7292))))))

(declare-fun e!4065368 () Bool)

(assert (=> b!6729135 (= e!4065368 e!4065372)))

(declare-fun b!6729136 () Bool)

(declare-fun lt!2437550 () Bool)

(assert (=> b!6729136 (= e!4065368 (not lt!2437550))))

(declare-fun b!6729137 () Bool)

(declare-fun e!4065370 () Bool)

(assert (=> b!6729137 (= e!4065372 e!4065370)))

(declare-fun res!2753043 () Bool)

(assert (=> b!6729137 (=> (not res!2753043) (not e!4065370))))

(assert (=> b!6729137 (= res!2753043 (not lt!2437550))))

(declare-fun b!6729138 () Bool)

(declare-fun res!2753046 () Bool)

(assert (=> b!6729138 (=> res!2753046 e!4065372)))

(declare-fun e!4065373 () Bool)

(assert (=> b!6729138 (= res!2753046 e!4065373)))

(declare-fun res!2753048 () Bool)

(assert (=> b!6729138 (=> (not res!2753048) (not e!4065373))))

(assert (=> b!6729138 (= res!2753048 lt!2437550)))

(declare-fun b!6729139 () Bool)

(declare-fun res!2753042 () Bool)

(assert (=> b!6729139 (=> (not res!2753042) (not e!4065373))))

(assert (=> b!6729139 (= res!2753042 (isEmpty!38170 (tail!12622 Nil!65841)))))

(declare-fun b!6729140 () Bool)

(declare-fun e!4065367 () Bool)

(assert (=> b!6729140 (= e!4065367 (not (= (head!13537 Nil!65841) (c!1247365 (reg!16884 r!7292)))))))

(declare-fun b!6729141 () Bool)

(declare-fun e!4065369 () Bool)

(declare-fun call!607720 () Bool)

(assert (=> b!6729141 (= e!4065369 (= lt!2437550 call!607720))))

(declare-fun b!6729142 () Bool)

(declare-fun e!4065371 () Bool)

(assert (=> b!6729142 (= e!4065371 (nullable!6542 (reg!16884 r!7292)))))

(declare-fun b!6729143 () Bool)

(assert (=> b!6729143 (= e!4065373 (= (head!13537 Nil!65841) (c!1247365 (reg!16884 r!7292))))))

(declare-fun b!6729144 () Bool)

(declare-fun res!2753045 () Bool)

(assert (=> b!6729144 (=> res!2753045 e!4065367)))

(assert (=> b!6729144 (= res!2753045 (not (isEmpty!38170 (tail!12622 Nil!65841))))))

(declare-fun b!6729145 () Bool)

(declare-fun res!2753044 () Bool)

(assert (=> b!6729145 (=> (not res!2753044) (not e!4065373))))

(assert (=> b!6729145 (= res!2753044 (not call!607720))))

(declare-fun b!6729146 () Bool)

(assert (=> b!6729146 (= e!4065369 e!4065368)))

(declare-fun c!1247771 () Bool)

(assert (=> b!6729146 (= c!1247771 ((_ is EmptyLang!16555) (reg!16884 r!7292)))))

(declare-fun b!6729147 () Bool)

(assert (=> b!6729147 (= e!4065371 (matchR!8738 (derivativeStep!5227 (reg!16884 r!7292) (head!13537 Nil!65841)) (tail!12622 Nil!65841)))))

(declare-fun b!6729148 () Bool)

(assert (=> b!6729148 (= e!4065370 e!4065367)))

(declare-fun res!2753049 () Bool)

(assert (=> b!6729148 (=> res!2753049 e!4065367)))

(assert (=> b!6729148 (= res!2753049 call!607720)))

(declare-fun bm!607715 () Bool)

(assert (=> bm!607715 (= call!607720 (isEmpty!38170 Nil!65841))))

(declare-fun d!2114425 () Bool)

(assert (=> d!2114425 e!4065369))

(declare-fun c!1247772 () Bool)

(assert (=> d!2114425 (= c!1247772 ((_ is EmptyExpr!16555) (reg!16884 r!7292)))))

(assert (=> d!2114425 (= lt!2437550 e!4065371)))

(declare-fun c!1247770 () Bool)

(assert (=> d!2114425 (= c!1247770 (isEmpty!38170 Nil!65841))))

(assert (=> d!2114425 (validRegex!8291 (reg!16884 r!7292))))

(assert (=> d!2114425 (= (matchR!8738 (reg!16884 r!7292) Nil!65841) lt!2437550)))

(assert (= (and d!2114425 c!1247770) b!6729142))

(assert (= (and d!2114425 (not c!1247770)) b!6729147))

(assert (= (and d!2114425 c!1247772) b!6729141))

(assert (= (and d!2114425 (not c!1247772)) b!6729146))

(assert (= (and b!6729146 c!1247771) b!6729136))

(assert (= (and b!6729146 (not c!1247771)) b!6729135))

(assert (= (and b!6729135 (not res!2753047)) b!6729138))

(assert (= (and b!6729138 res!2753048) b!6729145))

(assert (= (and b!6729145 res!2753044) b!6729139))

(assert (= (and b!6729139 res!2753042) b!6729143))

(assert (= (and b!6729138 (not res!2753046)) b!6729137))

(assert (= (and b!6729137 res!2753043) b!6729148))

(assert (= (and b!6729148 (not res!2753049)) b!6729144))

(assert (= (and b!6729144 (not res!2753045)) b!6729140))

(assert (= (or b!6729141 b!6729148 b!6729145) bm!607715))

(declare-fun m!7488304 () Bool)

(assert (=> b!6729140 m!7488304))

(declare-fun m!7488306 () Bool)

(assert (=> b!6729144 m!7488306))

(assert (=> b!6729144 m!7488306))

(declare-fun m!7488308 () Bool)

(assert (=> b!6729144 m!7488308))

(assert (=> b!6729139 m!7488306))

(assert (=> b!6729139 m!7488306))

(assert (=> b!6729139 m!7488308))

(declare-fun m!7488310 () Bool)

(assert (=> bm!607715 m!7488310))

(assert (=> d!2114425 m!7488310))

(assert (=> d!2114425 m!7487358))

(assert (=> b!6729143 m!7488304))

(assert (=> b!6729147 m!7488304))

(assert (=> b!6729147 m!7488304))

(declare-fun m!7488312 () Bool)

(assert (=> b!6729147 m!7488312))

(assert (=> b!6729147 m!7488306))

(assert (=> b!6729147 m!7488312))

(assert (=> b!6729147 m!7488306))

(declare-fun m!7488314 () Bool)

(assert (=> b!6729147 m!7488314))

(assert (=> b!6729142 m!7487478))

(assert (=> d!2114005 d!2114425))

(assert (=> d!2114005 d!2114193))

(declare-fun d!2114427 () Bool)

(declare-fun res!2753050 () Bool)

(declare-fun e!4065374 () Bool)

(assert (=> d!2114427 (=> res!2753050 e!4065374)))

(assert (=> d!2114427 (= res!2753050 ((_ is Nil!65840) (exprs!6439 setElem!45877)))))

(assert (=> d!2114427 (= (forall!15755 (exprs!6439 setElem!45877) lambda!377558) e!4065374)))

(declare-fun b!6729149 () Bool)

(declare-fun e!4065375 () Bool)

(assert (=> b!6729149 (= e!4065374 e!4065375)))

(declare-fun res!2753051 () Bool)

(assert (=> b!6729149 (=> (not res!2753051) (not e!4065375))))

(assert (=> b!6729149 (= res!2753051 (dynLambda!26262 lambda!377558 (h!72288 (exprs!6439 setElem!45877))))))

(declare-fun b!6729150 () Bool)

(assert (=> b!6729150 (= e!4065375 (forall!15755 (t!379649 (exprs!6439 setElem!45877)) lambda!377558))))

(assert (= (and d!2114427 (not res!2753050)) b!6729149))

(assert (= (and b!6729149 res!2753051) b!6729150))

(declare-fun b_lambda!253351 () Bool)

(assert (=> (not b_lambda!253351) (not b!6729149)))

(declare-fun m!7488316 () Bool)

(assert (=> b!6729149 m!7488316))

(declare-fun m!7488318 () Bool)

(assert (=> b!6729150 m!7488318))

(assert (=> d!2114035 d!2114427))

(assert (=> d!2113961 d!2113999))

(assert (=> d!2113961 d!2114033))

(declare-fun d!2114429 () Bool)

(declare-fun c!1247773 () Bool)

(assert (=> d!2114429 (= c!1247773 (and ((_ is ElementMatch!16555) (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))) (= (c!1247365 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))) (h!72289 s!2326))))))

(declare-fun e!4065376 () (InoxSet Context!11878))

(assert (=> d!2114429 (= (derivationStepZipperDown!1783 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292)))) (ite (or c!1247514 c!1247511) (Context!11879 Nil!65840) (Context!11879 call!607552)) (h!72289 s!2326)) e!4065376)))

(declare-fun b!6729151 () Bool)

(declare-fun e!4065378 () (InoxSet Context!11878))

(declare-fun call!607724 () (InoxSet Context!11878))

(declare-fun call!607722 () (InoxSet Context!11878))

(assert (=> b!6729151 (= e!4065378 ((_ map or) call!607724 call!607722))))

(declare-fun call!607723 () List!65964)

(declare-fun bm!607716 () Bool)

(declare-fun c!1247777 () Bool)

(assert (=> bm!607716 (= call!607722 (derivationStepZipperDown!1783 (ite c!1247777 (regTwo!33623 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))) (regOne!33622 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292)))))) (ite c!1247777 (ite (or c!1247514 c!1247511) (Context!11879 Nil!65840) (Context!11879 call!607552)) (Context!11879 call!607723)) (h!72289 s!2326)))))

(declare-fun b!6729152 () Bool)

(declare-fun c!1247774 () Bool)

(declare-fun e!4065379 () Bool)

(assert (=> b!6729152 (= c!1247774 e!4065379)))

(declare-fun res!2753052 () Bool)

(assert (=> b!6729152 (=> (not res!2753052) (not e!4065379))))

(assert (=> b!6729152 (= res!2753052 ((_ is Concat!25400) (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))))))

(declare-fun e!4065380 () (InoxSet Context!11878))

(assert (=> b!6729152 (= e!4065378 e!4065380)))

(declare-fun call!607726 () List!65964)

(declare-fun c!1247775 () Bool)

(declare-fun bm!607717 () Bool)

(assert (=> bm!607717 (= call!607724 (derivationStepZipperDown!1783 (ite c!1247777 (regOne!33623 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))) (ite c!1247774 (regTwo!33622 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))) (ite c!1247775 (regOne!33622 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))) (reg!16884 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292)))))))) (ite (or c!1247777 c!1247774) (ite (or c!1247514 c!1247511) (Context!11879 Nil!65840) (Context!11879 call!607552)) (Context!11879 call!607726)) (h!72289 s!2326)))))

(declare-fun c!1247776 () Bool)

(declare-fun b!6729153 () Bool)

(assert (=> b!6729153 (= c!1247776 ((_ is Star!16555) (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))))))

(declare-fun e!4065377 () (InoxSet Context!11878))

(declare-fun e!4065381 () (InoxSet Context!11878))

(assert (=> b!6729153 (= e!4065377 e!4065381)))

(declare-fun b!6729154 () Bool)

(assert (=> b!6729154 (= e!4065379 (nullable!6542 (regOne!33622 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292)))))))))

(declare-fun bm!607718 () Bool)

(declare-fun call!607721 () (InoxSet Context!11878))

(declare-fun call!607725 () (InoxSet Context!11878))

(assert (=> bm!607718 (= call!607721 call!607725)))

(declare-fun b!6729155 () Bool)

(assert (=> b!6729155 (= e!4065380 ((_ map or) call!607722 call!607725))))

(declare-fun bm!607719 () Bool)

(assert (=> bm!607719 (= call!607726 call!607723)))

(declare-fun b!6729156 () Bool)

(assert (=> b!6729156 (= e!4065376 e!4065378)))

(assert (=> b!6729156 (= c!1247777 ((_ is Union!16555) (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))))))

(declare-fun bm!607720 () Bool)

(assert (=> bm!607720 (= call!607725 call!607724)))

(declare-fun b!6729157 () Bool)

(assert (=> b!6729157 (= e!4065380 e!4065377)))

(assert (=> b!6729157 (= c!1247775 ((_ is Concat!25400) (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))))))

(declare-fun bm!607721 () Bool)

(assert (=> bm!607721 (= call!607723 ($colon$colon!2372 (exprs!6439 (ite (or c!1247514 c!1247511) (Context!11879 Nil!65840) (Context!11879 call!607552))) (ite (or c!1247774 c!1247775) (regTwo!33622 (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292))))) (ite c!1247514 (regOne!33623 r!7292) (ite c!1247511 (regTwo!33622 r!7292) (ite c!1247512 (regOne!33622 r!7292) (reg!16884 r!7292)))))))))

(declare-fun b!6729158 () Bool)

(assert (=> b!6729158 (= e!4065381 call!607721)))

(declare-fun b!6729159 () Bool)

(assert (=> b!6729159 (= e!4065377 call!607721)))

(declare-fun b!6729160 () Bool)

(assert (=> b!6729160 (= e!4065376 (store ((as const (Array Context!11878 Bool)) false) (ite (or c!1247514 c!1247511) (Context!11879 Nil!65840) (Context!11879 call!607552)) true))))

(declare-fun b!6729161 () Bool)

(assert (=> b!6729161 (= e!4065381 ((as const (Array Context!11878 Bool)) false))))

(assert (= (and d!2114429 c!1247773) b!6729160))

(assert (= (and d!2114429 (not c!1247773)) b!6729156))

(assert (= (and b!6729156 c!1247777) b!6729151))

(assert (= (and b!6729156 (not c!1247777)) b!6729152))

(assert (= (and b!6729152 res!2753052) b!6729154))

(assert (= (and b!6729152 c!1247774) b!6729155))

(assert (= (and b!6729152 (not c!1247774)) b!6729157))

(assert (= (and b!6729157 c!1247775) b!6729159))

(assert (= (and b!6729157 (not c!1247775)) b!6729153))

(assert (= (and b!6729153 c!1247776) b!6729158))

(assert (= (and b!6729153 (not c!1247776)) b!6729161))

(assert (= (or b!6729159 b!6729158) bm!607719))

(assert (= (or b!6729159 b!6729158) bm!607718))

(assert (= (or b!6729155 bm!607719) bm!607721))

(assert (= (or b!6729155 bm!607718) bm!607720))

(assert (= (or b!6729151 b!6729155) bm!607716))

(assert (= (or b!6729151 bm!607720) bm!607717))

(declare-fun m!7488320 () Bool)

(assert (=> bm!607716 m!7488320))

(declare-fun m!7488322 () Bool)

(assert (=> b!6729160 m!7488322))

(declare-fun m!7488324 () Bool)

(assert (=> b!6729154 m!7488324))

(declare-fun m!7488326 () Bool)

(assert (=> bm!607721 m!7488326))

(declare-fun m!7488328 () Bool)

(assert (=> bm!607717 m!7488328))

(assert (=> bm!607543 d!2114429))

(declare-fun d!2114431 () Bool)

(assert (=> d!2114431 (= (isEmpty!38174 (t!379649 (exprs!6439 (h!72290 zl!343)))) ((_ is Nil!65840) (t!379649 (exprs!6439 (h!72290 zl!343)))))))

(assert (=> b!6728221 d!2114431))

(declare-fun d!2114433 () Bool)

(assert (=> d!2114433 (= (Exists!3623 (ite c!1247484 lambda!377512 lambda!377515)) (choose!50137 (ite c!1247484 lambda!377512 lambda!377515)))))

(declare-fun bs!1789739 () Bool)

(assert (= bs!1789739 d!2114433))

(declare-fun m!7488330 () Bool)

(assert (=> bs!1789739 m!7488330))

(assert (=> bm!607536 d!2114433))

(declare-fun d!2114435 () Bool)

(assert (=> d!2114435 (= (Exists!3623 lambda!377537) (choose!50137 lambda!377537))))

(declare-fun bs!1789740 () Bool)

(assert (= bs!1789740 d!2114435))

(declare-fun m!7488332 () Bool)

(assert (=> bs!1789740 m!7488332))

(assert (=> d!2114003 d!2114435))

(declare-fun d!2114437 () Bool)

(assert (=> d!2114437 (= (Exists!3623 lambda!377538) (choose!50137 lambda!377538))))

(declare-fun bs!1789741 () Bool)

(assert (= bs!1789741 d!2114437))

(declare-fun m!7488334 () Bool)

(assert (=> bs!1789741 m!7488334))

(assert (=> d!2114003 d!2114437))

(declare-fun bs!1789742 () Bool)

(declare-fun d!2114439 () Bool)

(assert (= bs!1789742 (and d!2114439 d!2114191)))

(declare-fun lambda!377617 () Int)

(assert (=> bs!1789742 (not (= lambda!377617 lambda!377591))))

(declare-fun bs!1789743 () Bool)

(assert (= bs!1789743 (and d!2114439 b!6727945)))

(assert (=> bs!1789743 (not (= lambda!377617 lambda!377515))))

(declare-fun bs!1789744 () Bool)

(assert (= bs!1789744 (and d!2114439 b!6727947)))

(assert (=> bs!1789744 (not (= lambda!377617 lambda!377512))))

(declare-fun bs!1789745 () Bool)

(assert (= bs!1789745 (and d!2114439 d!2114007)))

(assert (=> bs!1789745 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377617 lambda!377541))))

(declare-fun bs!1789746 () Bool)

(assert (= bs!1789746 (and d!2114439 d!2114003)))

(assert (=> bs!1789746 (= lambda!377617 lambda!377537)))

(declare-fun bs!1789747 () Bool)

(assert (= bs!1789747 (and d!2114439 d!2114421)))

(assert (=> bs!1789747 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377617 lambda!377612))))

(declare-fun bs!1789748 () Bool)

(assert (= bs!1789748 (and d!2114439 b!6729127)))

(assert (=> bs!1789748 (not (= lambda!377617 lambda!377608))))

(declare-fun bs!1789749 () Bool)

(assert (= bs!1789749 (and d!2114439 b!6727590)))

(assert (=> bs!1789749 (not (= lambda!377617 lambda!377479))))

(declare-fun bs!1789750 () Bool)

(assert (= bs!1789750 (and d!2114439 b!6728906)))

(assert (=> bs!1789750 (not (= lambda!377617 lambda!377602))))

(assert (=> bs!1789746 (not (= lambda!377617 lambda!377538))))

(assert (=> bs!1789749 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377617 lambda!377478))))

(assert (=> bs!1789749 (not (= lambda!377617 lambda!377480))))

(assert (=> bs!1789742 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377617 lambda!377590))))

(declare-fun bs!1789751 () Bool)

(assert (= bs!1789751 (and d!2114439 b!6729129)))

(assert (=> bs!1789751 (not (= lambda!377617 lambda!377607))))

(declare-fun bs!1789752 () Bool)

(assert (= bs!1789752 (and d!2114439 d!2113981)))

(assert (=> bs!1789752 (not (= lambda!377617 lambda!377532))))

(assert (=> bs!1789752 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377617 lambda!377531))))

(declare-fun bs!1789753 () Bool)

(assert (= bs!1789753 (and d!2114439 b!6728908)))

(assert (=> bs!1789753 (not (= lambda!377617 lambda!377601))))

(assert (=> d!2114439 true))

(assert (=> d!2114439 true))

(declare-fun lambda!377618 () Int)

(assert (=> bs!1789742 (not (= lambda!377618 lambda!377591))))

(assert (=> bs!1789743 (not (= lambda!377618 lambda!377515))))

(assert (=> bs!1789744 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377618 lambda!377512))))

(assert (=> bs!1789745 (not (= lambda!377618 lambda!377541))))

(assert (=> bs!1789746 (not (= lambda!377618 lambda!377537))))

(assert (=> bs!1789747 (not (= lambda!377618 lambda!377612))))

(assert (=> bs!1789748 (not (= lambda!377618 lambda!377608))))

(assert (=> bs!1789749 (= (= (Star!16555 (reg!16884 r!7292)) r!7292) (= lambda!377618 lambda!377479))))

(assert (=> bs!1789750 (not (= lambda!377618 lambda!377602))))

(assert (=> bs!1789746 (= lambda!377618 lambda!377538)))

(assert (=> bs!1789749 (not (= lambda!377618 lambda!377478))))

(assert (=> bs!1789749 (not (= lambda!377618 lambda!377480))))

(declare-fun bs!1789754 () Bool)

(assert (= bs!1789754 d!2114439))

(assert (=> bs!1789754 (not (= lambda!377618 lambda!377617))))

(assert (=> bs!1789742 (not (= lambda!377618 lambda!377590))))

(assert (=> bs!1789751 (= (and (= (reg!16884 r!7292) (reg!16884 (regTwo!33623 r!7292))) (= (Star!16555 (reg!16884 r!7292)) (regTwo!33623 r!7292))) (= lambda!377618 lambda!377607))))

(assert (=> bs!1789752 (not (= lambda!377618 lambda!377532))))

(assert (=> bs!1789752 (not (= lambda!377618 lambda!377531))))

(assert (=> bs!1789753 (= (and (= (reg!16884 r!7292) (reg!16884 (regOne!33623 r!7292))) (= (Star!16555 (reg!16884 r!7292)) (regOne!33623 r!7292))) (= lambda!377618 lambda!377601))))

(assert (=> d!2114439 true))

(assert (=> d!2114439 true))

(assert (=> d!2114439 (= (Exists!3623 lambda!377617) (Exists!3623 lambda!377618))))

(assert (=> d!2114439 true))

(declare-fun _$91!686 () Unit!159801)

(assert (=> d!2114439 (= (choose!50140 (reg!16884 r!7292) s!2326) _$91!686)))

(declare-fun m!7488336 () Bool)

(assert (=> bs!1789754 m!7488336))

(declare-fun m!7488338 () Bool)

(assert (=> bs!1789754 m!7488338))

(assert (=> d!2114003 d!2114439))

(assert (=> d!2114003 d!2114193))

(declare-fun d!2114441 () Bool)

(assert (=> d!2114441 (= (isEmptyLang!1929 lt!2437495) ((_ is EmptyLang!16555) lt!2437495))))

(assert (=> b!6728190 d!2114441))

(assert (=> bs!1789480 d!2113921))

(declare-fun b!6729172 () Bool)

(declare-fun e!4065390 () Bool)

(declare-fun e!4065389 () Bool)

(assert (=> b!6729172 (= e!4065390 e!4065389)))

(declare-fun c!1247778 () Bool)

(assert (=> b!6729172 (= c!1247778 ((_ is Star!16555) (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))))))

(declare-fun b!6729173 () Bool)

(declare-fun e!4065388 () Bool)

(assert (=> b!6729173 (= e!4065389 e!4065388)))

(declare-fun c!1247779 () Bool)

(assert (=> b!6729173 (= c!1247779 ((_ is Union!16555) (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))))))

(declare-fun d!2114443 () Bool)

(declare-fun res!2753064 () Bool)

(assert (=> d!2114443 (=> res!2753064 e!4065390)))

(assert (=> d!2114443 (= res!2753064 ((_ is ElementMatch!16555) (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))))))

(assert (=> d!2114443 (= (validRegex!8291 (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))) e!4065390)))

(declare-fun b!6729174 () Bool)

(declare-fun res!2753066 () Bool)

(declare-fun e!4065386 () Bool)

(assert (=> b!6729174 (=> (not res!2753066) (not e!4065386))))

(declare-fun call!607727 () Bool)

(assert (=> b!6729174 (= res!2753066 call!607727)))

(assert (=> b!6729174 (= e!4065388 e!4065386)))

(declare-fun b!6729175 () Bool)

(declare-fun e!4065387 () Bool)

(declare-fun call!607728 () Bool)

(assert (=> b!6729175 (= e!4065387 call!607728)))

(declare-fun b!6729176 () Bool)

(declare-fun e!4065391 () Bool)

(declare-fun e!4065392 () Bool)

(assert (=> b!6729176 (= e!4065391 e!4065392)))

(declare-fun res!2753067 () Bool)

(assert (=> b!6729176 (=> (not res!2753067) (not e!4065392))))

(assert (=> b!6729176 (= res!2753067 call!607727)))

(declare-fun b!6729177 () Bool)

(assert (=> b!6729177 (= e!4065389 e!4065387)))

(declare-fun res!2753065 () Bool)

(assert (=> b!6729177 (= res!2753065 (not (nullable!6542 (reg!16884 (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))))))))

(assert (=> b!6729177 (=> (not res!2753065) (not e!4065387))))

(declare-fun bm!607722 () Bool)

(assert (=> bm!607722 (= call!607727 (validRegex!8291 (ite c!1247779 (regOne!33623 (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))) (regOne!33622 (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))))))))

(declare-fun bm!607723 () Bool)

(declare-fun call!607729 () Bool)

(assert (=> bm!607723 (= call!607729 call!607728)))

(declare-fun b!6729178 () Bool)

(assert (=> b!6729178 (= e!4065392 call!607729)))

(declare-fun b!6729179 () Bool)

(assert (=> b!6729179 (= e!4065386 call!607729)))

(declare-fun bm!607724 () Bool)

(assert (=> bm!607724 (= call!607728 (validRegex!8291 (ite c!1247778 (reg!16884 (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))) (ite c!1247779 (regTwo!33623 (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292))) (regTwo!33622 (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292)))))))))

(declare-fun b!6729180 () Bool)

(declare-fun res!2753063 () Bool)

(assert (=> b!6729180 (=> res!2753063 e!4065391)))

(assert (=> b!6729180 (= res!2753063 (not ((_ is Concat!25400) (ite c!1247555 (regOne!33623 r!7292) (regOne!33622 r!7292)))))))

(assert (=> b!6729180 (= e!4065388 e!4065391)))

(assert (= (and d!2114443 (not res!2753064)) b!6729172))

(assert (= (and b!6729172 c!1247778) b!6729177))

(assert (= (and b!6729172 (not c!1247778)) b!6729173))

(assert (= (and b!6729177 res!2753065) b!6729175))

(assert (= (and b!6729173 c!1247779) b!6729174))

(assert (= (and b!6729173 (not c!1247779)) b!6729180))

(assert (= (and b!6729174 res!2753066) b!6729179))

(assert (= (and b!6729180 (not res!2753063)) b!6729176))

(assert (= (and b!6729176 res!2753067) b!6729178))

(assert (= (or b!6729179 b!6729178) bm!607723))

(assert (= (or b!6729174 b!6729176) bm!607722))

(assert (= (or b!6729175 bm!607723) bm!607724))

(declare-fun m!7488340 () Bool)

(assert (=> b!6729177 m!7488340))

(declare-fun m!7488342 () Bool)

(assert (=> bm!607722 m!7488342))

(declare-fun m!7488344 () Bool)

(assert (=> bm!607724 m!7488344))

(assert (=> bm!607555 d!2114443))

(declare-fun d!2114445 () Bool)

(assert (=> d!2114445 (= (flatMap!2036 lt!2437420 lambda!377557) (choose!50131 lt!2437420 lambda!377557))))

(declare-fun bs!1789755 () Bool)

(assert (= bs!1789755 d!2114445))

(declare-fun m!7488346 () Bool)

(assert (=> bs!1789755 m!7488346))

(assert (=> d!2114029 d!2114445))

(declare-fun d!2114447 () Bool)

(assert (=> d!2114447 true))

(declare-fun setRes!45892 () Bool)

(assert (=> d!2114447 setRes!45892))

(declare-fun condSetEmpty!45892 () Bool)

(declare-fun res!2753068 () (InoxSet Context!11878))

(assert (=> d!2114447 (= condSetEmpty!45892 (= res!2753068 ((as const (Array Context!11878 Bool)) false)))))

(assert (=> d!2114447 (= (choose!50131 z!1189 lambda!377481) res!2753068)))

(declare-fun setIsEmpty!45892 () Bool)

(assert (=> setIsEmpty!45892 setRes!45892))

(declare-fun setElem!45892 () Context!11878)

(declare-fun setNonEmpty!45892 () Bool)

(declare-fun e!4065393 () Bool)

(declare-fun tp!1844945 () Bool)

(assert (=> setNonEmpty!45892 (= setRes!45892 (and tp!1844945 (inv!84634 setElem!45892) e!4065393))))

(declare-fun setRest!45892 () (InoxSet Context!11878))

(assert (=> setNonEmpty!45892 (= res!2753068 ((_ map or) (store ((as const (Array Context!11878 Bool)) false) setElem!45892 true) setRest!45892))))

(declare-fun b!6729181 () Bool)

(declare-fun tp!1844944 () Bool)

(assert (=> b!6729181 (= e!4065393 tp!1844944)))

(assert (= (and d!2114447 condSetEmpty!45892) setIsEmpty!45892))

(assert (= (and d!2114447 (not condSetEmpty!45892)) setNonEmpty!45892))

(assert (= setNonEmpty!45892 b!6729181))

(declare-fun m!7488348 () Bool)

(assert (=> setNonEmpty!45892 m!7488348))

(assert (=> d!2114037 d!2114447))

(assert (=> b!6727996 d!2114411))

(assert (=> b!6727996 d!2114185))

(assert (=> bm!607540 d!2113999))

(declare-fun d!2114449 () Bool)

(assert (=> d!2114449 (= (isConcat!1444 lt!2437501) ((_ is Concat!25400) lt!2437501))))

(assert (=> b!6728225 d!2114449))

(declare-fun d!2114451 () Bool)

(declare-fun res!2753069 () Bool)

(declare-fun e!4065394 () Bool)

(assert (=> d!2114451 (=> res!2753069 e!4065394)))

(assert (=> d!2114451 (= res!2753069 ((_ is Nil!65840) (exprs!6439 lt!2437413)))))

(assert (=> d!2114451 (= (forall!15755 (exprs!6439 lt!2437413) lambda!377559) e!4065394)))

(declare-fun b!6729182 () Bool)

(declare-fun e!4065395 () Bool)

(assert (=> b!6729182 (= e!4065394 e!4065395)))

(declare-fun res!2753070 () Bool)

(assert (=> b!6729182 (=> (not res!2753070) (not e!4065395))))

(assert (=> b!6729182 (= res!2753070 (dynLambda!26262 lambda!377559 (h!72288 (exprs!6439 lt!2437413))))))

(declare-fun b!6729183 () Bool)

(assert (=> b!6729183 (= e!4065395 (forall!15755 (t!379649 (exprs!6439 lt!2437413)) lambda!377559))))

(assert (= (and d!2114451 (not res!2753069)) b!6729182))

(assert (= (and b!6729182 res!2753070) b!6729183))

(declare-fun b_lambda!253353 () Bool)

(assert (=> (not b_lambda!253353) (not b!6729182)))

(declare-fun m!7488350 () Bool)

(assert (=> b!6729182 m!7488350))

(declare-fun m!7488352 () Bool)

(assert (=> b!6729183 m!7488352))

(assert (=> d!2114043 d!2114451))

(declare-fun d!2114453 () Bool)

(assert (=> d!2114453 (= ($colon$colon!2372 (exprs!6439 (Context!11879 lt!2437418)) (ite (or c!1247414 c!1247415) (regTwo!33622 (reg!16884 r!7292)) (reg!16884 r!7292))) (Cons!65840 (ite (or c!1247414 c!1247415) (regTwo!33622 (reg!16884 r!7292)) (reg!16884 r!7292)) (exprs!6439 (Context!11879 lt!2437418))))))

(assert (=> bm!607497 d!2114453))

(declare-fun d!2114455 () Bool)

(assert (=> d!2114455 (= (nullable!6542 r!7292) (nullableFct!2456 r!7292))))

(declare-fun bs!1789756 () Bool)

(assert (= bs!1789756 d!2114455))

(declare-fun m!7488354 () Bool)

(assert (=> bs!1789756 m!7488354))

(assert (=> b!6727994 d!2114455))

(declare-fun bs!1789757 () Bool)

(declare-fun d!2114457 () Bool)

(assert (= bs!1789757 (and d!2114457 d!2114035)))

(declare-fun lambda!377619 () Int)

(assert (=> bs!1789757 (= lambda!377619 lambda!377558)))

(declare-fun bs!1789758 () Bool)

(assert (= bs!1789758 (and d!2114457 d!2114399)))

(assert (=> bs!1789758 (= lambda!377619 lambda!377603)))

(declare-fun bs!1789759 () Bool)

(assert (= bs!1789759 (and d!2114457 d!2114019)))

(assert (=> bs!1789759 (= lambda!377619 lambda!377553)))

(declare-fun bs!1789760 () Bool)

(assert (= bs!1789760 (and d!2114457 d!2114335)))

(assert (=> bs!1789760 (= lambda!377619 lambda!377600)))

(declare-fun bs!1789761 () Bool)

(assert (= bs!1789761 (and d!2114457 d!2114015)))

(assert (=> bs!1789761 (= lambda!377619 lambda!377547)))

(declare-fun bs!1789762 () Bool)

(assert (= bs!1789762 (and d!2114457 d!2114021)))

(assert (=> bs!1789762 (= lambda!377619 lambda!377556)))

(declare-fun bs!1789763 () Bool)

(assert (= bs!1789763 (and d!2114457 d!2114017)))

(assert (=> bs!1789763 (= lambda!377619 lambda!377550)))

(declare-fun bs!1789764 () Bool)

(assert (= bs!1789764 (and d!2114457 d!2114149)))

(assert (=> bs!1789764 (= lambda!377619 lambda!377577)))

(declare-fun bs!1789765 () Bool)

(assert (= bs!1789765 (and d!2114457 d!2114043)))

(assert (=> bs!1789765 (= lambda!377619 lambda!377559)))

(declare-fun bs!1789766 () Bool)

(assert (= bs!1789766 (and d!2114457 d!2114283)))

(assert (=> bs!1789766 (= lambda!377619 lambda!377595)))

(assert (=> d!2114457 (= (inv!84634 setElem!45883) (forall!15755 (exprs!6439 setElem!45883) lambda!377619))))

(declare-fun bs!1789767 () Bool)

(assert (= bs!1789767 d!2114457))

(declare-fun m!7488356 () Bool)

(assert (=> bs!1789767 m!7488356))

(assert (=> setNonEmpty!45883 d!2114457))

(declare-fun b!6729185 () Bool)

(declare-fun e!4065396 () Bool)

(declare-fun tp!1844949 () Bool)

(declare-fun tp!1844946 () Bool)

(assert (=> b!6729185 (= e!4065396 (and tp!1844949 tp!1844946))))

(assert (=> b!6728306 (= tp!1844754 e!4065396)))

(declare-fun b!6729187 () Bool)

(declare-fun tp!1844948 () Bool)

(declare-fun tp!1844950 () Bool)

(assert (=> b!6729187 (= e!4065396 (and tp!1844948 tp!1844950))))

(declare-fun b!6729186 () Bool)

(declare-fun tp!1844947 () Bool)

(assert (=> b!6729186 (= e!4065396 tp!1844947)))

(declare-fun b!6729184 () Bool)

(assert (=> b!6729184 (= e!4065396 tp_is_empty!42363)))

(assert (= (and b!6728306 ((_ is ElementMatch!16555) (h!72288 (exprs!6439 setElem!45877)))) b!6729184))

(assert (= (and b!6728306 ((_ is Concat!25400) (h!72288 (exprs!6439 setElem!45877)))) b!6729185))

(assert (= (and b!6728306 ((_ is Star!16555) (h!72288 (exprs!6439 setElem!45877)))) b!6729186))

(assert (= (and b!6728306 ((_ is Union!16555) (h!72288 (exprs!6439 setElem!45877)))) b!6729187))

(declare-fun b!6729188 () Bool)

(declare-fun e!4065397 () Bool)

(declare-fun tp!1844951 () Bool)

(declare-fun tp!1844952 () Bool)

(assert (=> b!6729188 (= e!4065397 (and tp!1844951 tp!1844952))))

(assert (=> b!6728306 (= tp!1844755 e!4065397)))

(assert (= (and b!6728306 ((_ is Cons!65840) (t!379649 (exprs!6439 setElem!45877)))) b!6729188))

(declare-fun b!6729190 () Bool)

(declare-fun e!4065398 () Bool)

(declare-fun tp!1844956 () Bool)

(declare-fun tp!1844953 () Bool)

(assert (=> b!6729190 (= e!4065398 (and tp!1844956 tp!1844953))))

(assert (=> b!6728299 (= tp!1844744 e!4065398)))

(declare-fun b!6729192 () Bool)

(declare-fun tp!1844955 () Bool)

(declare-fun tp!1844957 () Bool)

(assert (=> b!6729192 (= e!4065398 (and tp!1844955 tp!1844957))))

(declare-fun b!6729191 () Bool)

(declare-fun tp!1844954 () Bool)

(assert (=> b!6729191 (= e!4065398 tp!1844954)))

(declare-fun b!6729189 () Bool)

(assert (=> b!6729189 (= e!4065398 tp_is_empty!42363)))

(assert (= (and b!6728299 ((_ is ElementMatch!16555) (reg!16884 (regTwo!33623 r!7292)))) b!6729189))

(assert (= (and b!6728299 ((_ is Concat!25400) (reg!16884 (regTwo!33623 r!7292)))) b!6729190))

(assert (= (and b!6728299 ((_ is Star!16555) (reg!16884 (regTwo!33623 r!7292)))) b!6729191))

(assert (= (and b!6728299 ((_ is Union!16555) (reg!16884 (regTwo!33623 r!7292)))) b!6729192))

(declare-fun b!6729194 () Bool)

(declare-fun e!4065400 () Bool)

(declare-fun tp!1844958 () Bool)

(assert (=> b!6729194 (= e!4065400 tp!1844958)))

(declare-fun e!4065399 () Bool)

(declare-fun tp!1844959 () Bool)

(declare-fun b!6729193 () Bool)

(assert (=> b!6729193 (= e!4065399 (and (inv!84634 (h!72290 (t!379651 (t!379651 zl!343)))) e!4065400 tp!1844959))))

(assert (=> b!6728313 (= tp!1844761 e!4065399)))

(assert (= b!6729193 b!6729194))

(assert (= (and b!6728313 ((_ is Cons!65842) (t!379651 (t!379651 zl!343)))) b!6729193))

(declare-fun m!7488358 () Bool)

(assert (=> b!6729193 m!7488358))

(declare-fun b!6729196 () Bool)

(declare-fun e!4065401 () Bool)

(declare-fun tp!1844963 () Bool)

(declare-fun tp!1844960 () Bool)

(assert (=> b!6729196 (= e!4065401 (and tp!1844963 tp!1844960))))

(assert (=> b!6728300 (= tp!1844745 e!4065401)))

(declare-fun b!6729198 () Bool)

(declare-fun tp!1844962 () Bool)

(declare-fun tp!1844964 () Bool)

(assert (=> b!6729198 (= e!4065401 (and tp!1844962 tp!1844964))))

(declare-fun b!6729197 () Bool)

(declare-fun tp!1844961 () Bool)

(assert (=> b!6729197 (= e!4065401 tp!1844961)))

(declare-fun b!6729195 () Bool)

(assert (=> b!6729195 (= e!4065401 tp_is_empty!42363)))

(assert (= (and b!6728300 ((_ is ElementMatch!16555) (regOne!33623 (regTwo!33623 r!7292)))) b!6729195))

(assert (= (and b!6728300 ((_ is Concat!25400) (regOne!33623 (regTwo!33623 r!7292)))) b!6729196))

(assert (= (and b!6728300 ((_ is Star!16555) (regOne!33623 (regTwo!33623 r!7292)))) b!6729197))

(assert (= (and b!6728300 ((_ is Union!16555) (regOne!33623 (regTwo!33623 r!7292)))) b!6729198))

(declare-fun b!6729200 () Bool)

(declare-fun e!4065402 () Bool)

(declare-fun tp!1844968 () Bool)

(declare-fun tp!1844965 () Bool)

(assert (=> b!6729200 (= e!4065402 (and tp!1844968 tp!1844965))))

(assert (=> b!6728300 (= tp!1844747 e!4065402)))

(declare-fun b!6729202 () Bool)

(declare-fun tp!1844967 () Bool)

(declare-fun tp!1844969 () Bool)

(assert (=> b!6729202 (= e!4065402 (and tp!1844967 tp!1844969))))

(declare-fun b!6729201 () Bool)

(declare-fun tp!1844966 () Bool)

(assert (=> b!6729201 (= e!4065402 tp!1844966)))

(declare-fun b!6729199 () Bool)

(assert (=> b!6729199 (= e!4065402 tp_is_empty!42363)))

(assert (= (and b!6728300 ((_ is ElementMatch!16555) (regTwo!33623 (regTwo!33623 r!7292)))) b!6729199))

(assert (= (and b!6728300 ((_ is Concat!25400) (regTwo!33623 (regTwo!33623 r!7292)))) b!6729200))

(assert (= (and b!6728300 ((_ is Star!16555) (regTwo!33623 (regTwo!33623 r!7292)))) b!6729201))

(assert (= (and b!6728300 ((_ is Union!16555) (regTwo!33623 (regTwo!33623 r!7292)))) b!6729202))

(declare-fun b!6729204 () Bool)

(declare-fun e!4065403 () Bool)

(declare-fun tp!1844973 () Bool)

(declare-fun tp!1844970 () Bool)

(assert (=> b!6729204 (= e!4065403 (and tp!1844973 tp!1844970))))

(assert (=> b!6728298 (= tp!1844746 e!4065403)))

(declare-fun b!6729206 () Bool)

(declare-fun tp!1844972 () Bool)

(declare-fun tp!1844974 () Bool)

(assert (=> b!6729206 (= e!4065403 (and tp!1844972 tp!1844974))))

(declare-fun b!6729205 () Bool)

(declare-fun tp!1844971 () Bool)

(assert (=> b!6729205 (= e!4065403 tp!1844971)))

(declare-fun b!6729203 () Bool)

(assert (=> b!6729203 (= e!4065403 tp_is_empty!42363)))

(assert (= (and b!6728298 ((_ is ElementMatch!16555) (regOne!33622 (regTwo!33623 r!7292)))) b!6729203))

(assert (= (and b!6728298 ((_ is Concat!25400) (regOne!33622 (regTwo!33623 r!7292)))) b!6729204))

(assert (= (and b!6728298 ((_ is Star!16555) (regOne!33622 (regTwo!33623 r!7292)))) b!6729205))

(assert (= (and b!6728298 ((_ is Union!16555) (regOne!33622 (regTwo!33623 r!7292)))) b!6729206))

(declare-fun b!6729208 () Bool)

(declare-fun e!4065404 () Bool)

(declare-fun tp!1844978 () Bool)

(declare-fun tp!1844975 () Bool)

(assert (=> b!6729208 (= e!4065404 (and tp!1844978 tp!1844975))))

(assert (=> b!6728298 (= tp!1844743 e!4065404)))

(declare-fun b!6729210 () Bool)

(declare-fun tp!1844977 () Bool)

(declare-fun tp!1844979 () Bool)

(assert (=> b!6729210 (= e!4065404 (and tp!1844977 tp!1844979))))

(declare-fun b!6729209 () Bool)

(declare-fun tp!1844976 () Bool)

(assert (=> b!6729209 (= e!4065404 tp!1844976)))

(declare-fun b!6729207 () Bool)

(assert (=> b!6729207 (= e!4065404 tp_is_empty!42363)))

(assert (= (and b!6728298 ((_ is ElementMatch!16555) (regTwo!33622 (regTwo!33623 r!7292)))) b!6729207))

(assert (= (and b!6728298 ((_ is Concat!25400) (regTwo!33622 (regTwo!33623 r!7292)))) b!6729208))

(assert (= (and b!6728298 ((_ is Star!16555) (regTwo!33622 (regTwo!33623 r!7292)))) b!6729209))

(assert (= (and b!6728298 ((_ is Union!16555) (regTwo!33622 (regTwo!33623 r!7292)))) b!6729210))

(declare-fun b!6729212 () Bool)

(declare-fun e!4065405 () Bool)

(declare-fun tp!1844983 () Bool)

(declare-fun tp!1844980 () Bool)

(assert (=> b!6729212 (= e!4065405 (and tp!1844983 tp!1844980))))

(assert (=> b!6728287 (= tp!1844729 e!4065405)))

(declare-fun b!6729214 () Bool)

(declare-fun tp!1844982 () Bool)

(declare-fun tp!1844984 () Bool)

(assert (=> b!6729214 (= e!4065405 (and tp!1844982 tp!1844984))))

(declare-fun b!6729213 () Bool)

(declare-fun tp!1844981 () Bool)

(assert (=> b!6729213 (= e!4065405 tp!1844981)))

(declare-fun b!6729211 () Bool)

(assert (=> b!6729211 (= e!4065405 tp_is_empty!42363)))

(assert (= (and b!6728287 ((_ is ElementMatch!16555) (regOne!33623 (regTwo!33622 r!7292)))) b!6729211))

(assert (= (and b!6728287 ((_ is Concat!25400) (regOne!33623 (regTwo!33622 r!7292)))) b!6729212))

(assert (= (and b!6728287 ((_ is Star!16555) (regOne!33623 (regTwo!33622 r!7292)))) b!6729213))

(assert (= (and b!6728287 ((_ is Union!16555) (regOne!33623 (regTwo!33622 r!7292)))) b!6729214))

(declare-fun b!6729216 () Bool)

(declare-fun e!4065406 () Bool)

(declare-fun tp!1844988 () Bool)

(declare-fun tp!1844985 () Bool)

(assert (=> b!6729216 (= e!4065406 (and tp!1844988 tp!1844985))))

(assert (=> b!6728287 (= tp!1844731 e!4065406)))

(declare-fun b!6729218 () Bool)

(declare-fun tp!1844987 () Bool)

(declare-fun tp!1844989 () Bool)

(assert (=> b!6729218 (= e!4065406 (and tp!1844987 tp!1844989))))

(declare-fun b!6729217 () Bool)

(declare-fun tp!1844986 () Bool)

(assert (=> b!6729217 (= e!4065406 tp!1844986)))

(declare-fun b!6729215 () Bool)

(assert (=> b!6729215 (= e!4065406 tp_is_empty!42363)))

(assert (= (and b!6728287 ((_ is ElementMatch!16555) (regTwo!33623 (regTwo!33622 r!7292)))) b!6729215))

(assert (= (and b!6728287 ((_ is Concat!25400) (regTwo!33623 (regTwo!33622 r!7292)))) b!6729216))

(assert (= (and b!6728287 ((_ is Star!16555) (regTwo!33623 (regTwo!33622 r!7292)))) b!6729217))

(assert (= (and b!6728287 ((_ is Union!16555) (regTwo!33623 (regTwo!33622 r!7292)))) b!6729218))

(declare-fun b!6729219 () Bool)

(declare-fun e!4065407 () Bool)

(declare-fun tp!1844990 () Bool)

(declare-fun tp!1844991 () Bool)

(assert (=> b!6729219 (= e!4065407 (and tp!1844990 tp!1844991))))

(assert (=> b!6728314 (= tp!1844760 e!4065407)))

(assert (= (and b!6728314 ((_ is Cons!65840) (exprs!6439 (h!72290 (t!379651 zl!343))))) b!6729219))

(declare-fun b!6729221 () Bool)

(declare-fun e!4065408 () Bool)

(declare-fun tp!1844995 () Bool)

(declare-fun tp!1844992 () Bool)

(assert (=> b!6729221 (= e!4065408 (and tp!1844995 tp!1844992))))

(assert (=> b!6728292 (= tp!1844736 e!4065408)))

(declare-fun b!6729223 () Bool)

(declare-fun tp!1844994 () Bool)

(declare-fun tp!1844996 () Bool)

(assert (=> b!6729223 (= e!4065408 (and tp!1844994 tp!1844996))))

(declare-fun b!6729222 () Bool)

(declare-fun tp!1844993 () Bool)

(assert (=> b!6729222 (= e!4065408 tp!1844993)))

(declare-fun b!6729220 () Bool)

(assert (=> b!6729220 (= e!4065408 tp_is_empty!42363)))

(assert (= (and b!6728292 ((_ is ElementMatch!16555) (h!72288 (exprs!6439 (h!72290 zl!343))))) b!6729220))

(assert (= (and b!6728292 ((_ is Concat!25400) (h!72288 (exprs!6439 (h!72290 zl!343))))) b!6729221))

(assert (= (and b!6728292 ((_ is Star!16555) (h!72288 (exprs!6439 (h!72290 zl!343))))) b!6729222))

(assert (= (and b!6728292 ((_ is Union!16555) (h!72288 (exprs!6439 (h!72290 zl!343))))) b!6729223))

(declare-fun b!6729224 () Bool)

(declare-fun e!4065409 () Bool)

(declare-fun tp!1844997 () Bool)

(declare-fun tp!1844998 () Bool)

(assert (=> b!6729224 (= e!4065409 (and tp!1844997 tp!1844998))))

(assert (=> b!6728292 (= tp!1844737 e!4065409)))

(assert (= (and b!6728292 ((_ is Cons!65840) (t!379649 (exprs!6439 (h!72290 zl!343))))) b!6729224))

(declare-fun b!6729226 () Bool)

(declare-fun e!4065410 () Bool)

(declare-fun tp!1845002 () Bool)

(declare-fun tp!1844999 () Bool)

(assert (=> b!6729226 (= e!4065410 (and tp!1845002 tp!1844999))))

(assert (=> b!6728286 (= tp!1844728 e!4065410)))

(declare-fun b!6729228 () Bool)

(declare-fun tp!1845001 () Bool)

(declare-fun tp!1845003 () Bool)

(assert (=> b!6729228 (= e!4065410 (and tp!1845001 tp!1845003))))

(declare-fun b!6729227 () Bool)

(declare-fun tp!1845000 () Bool)

(assert (=> b!6729227 (= e!4065410 tp!1845000)))

(declare-fun b!6729225 () Bool)

(assert (=> b!6729225 (= e!4065410 tp_is_empty!42363)))

(assert (= (and b!6728286 ((_ is ElementMatch!16555) (reg!16884 (regTwo!33622 r!7292)))) b!6729225))

(assert (= (and b!6728286 ((_ is Concat!25400) (reg!16884 (regTwo!33622 r!7292)))) b!6729226))

(assert (= (and b!6728286 ((_ is Star!16555) (reg!16884 (regTwo!33622 r!7292)))) b!6729227))

(assert (= (and b!6728286 ((_ is Union!16555) (reg!16884 (regTwo!33622 r!7292)))) b!6729228))

(declare-fun b!6729230 () Bool)

(declare-fun e!4065411 () Bool)

(declare-fun tp!1845007 () Bool)

(declare-fun tp!1845004 () Bool)

(assert (=> b!6729230 (= e!4065411 (and tp!1845007 tp!1845004))))

(assert (=> b!6728285 (= tp!1844730 e!4065411)))

(declare-fun b!6729232 () Bool)

(declare-fun tp!1845006 () Bool)

(declare-fun tp!1845008 () Bool)

(assert (=> b!6729232 (= e!4065411 (and tp!1845006 tp!1845008))))

(declare-fun b!6729231 () Bool)

(declare-fun tp!1845005 () Bool)

(assert (=> b!6729231 (= e!4065411 tp!1845005)))

(declare-fun b!6729229 () Bool)

(assert (=> b!6729229 (= e!4065411 tp_is_empty!42363)))

(assert (= (and b!6728285 ((_ is ElementMatch!16555) (regOne!33622 (regTwo!33622 r!7292)))) b!6729229))

(assert (= (and b!6728285 ((_ is Concat!25400) (regOne!33622 (regTwo!33622 r!7292)))) b!6729230))

(assert (= (and b!6728285 ((_ is Star!16555) (regOne!33622 (regTwo!33622 r!7292)))) b!6729231))

(assert (= (and b!6728285 ((_ is Union!16555) (regOne!33622 (regTwo!33622 r!7292)))) b!6729232))

(declare-fun b!6729234 () Bool)

(declare-fun e!4065412 () Bool)

(declare-fun tp!1845012 () Bool)

(declare-fun tp!1845009 () Bool)

(assert (=> b!6729234 (= e!4065412 (and tp!1845012 tp!1845009))))

(assert (=> b!6728285 (= tp!1844727 e!4065412)))

(declare-fun b!6729236 () Bool)

(declare-fun tp!1845011 () Bool)

(declare-fun tp!1845013 () Bool)

(assert (=> b!6729236 (= e!4065412 (and tp!1845011 tp!1845013))))

(declare-fun b!6729235 () Bool)

(declare-fun tp!1845010 () Bool)

(assert (=> b!6729235 (= e!4065412 tp!1845010)))

(declare-fun b!6729233 () Bool)

(assert (=> b!6729233 (= e!4065412 tp_is_empty!42363)))

(assert (= (and b!6728285 ((_ is ElementMatch!16555) (regTwo!33622 (regTwo!33622 r!7292)))) b!6729233))

(assert (= (and b!6728285 ((_ is Concat!25400) (regTwo!33622 (regTwo!33622 r!7292)))) b!6729234))

(assert (= (and b!6728285 ((_ is Star!16555) (regTwo!33622 (regTwo!33622 r!7292)))) b!6729235))

(assert (= (and b!6728285 ((_ is Union!16555) (regTwo!33622 (regTwo!33622 r!7292)))) b!6729236))

(declare-fun b!6729238 () Bool)

(declare-fun e!4065413 () Bool)

(declare-fun tp!1845017 () Bool)

(declare-fun tp!1845014 () Bool)

(assert (=> b!6729238 (= e!4065413 (and tp!1845017 tp!1845014))))

(assert (=> b!6728295 (= tp!1844739 e!4065413)))

(declare-fun b!6729240 () Bool)

(declare-fun tp!1845016 () Bool)

(declare-fun tp!1845018 () Bool)

(assert (=> b!6729240 (= e!4065413 (and tp!1845016 tp!1845018))))

(declare-fun b!6729239 () Bool)

(declare-fun tp!1845015 () Bool)

(assert (=> b!6729239 (= e!4065413 tp!1845015)))

(declare-fun b!6729237 () Bool)

(assert (=> b!6729237 (= e!4065413 tp_is_empty!42363)))

(assert (= (and b!6728295 ((_ is ElementMatch!16555) (reg!16884 (regOne!33623 r!7292)))) b!6729237))

(assert (= (and b!6728295 ((_ is Concat!25400) (reg!16884 (regOne!33623 r!7292)))) b!6729238))

(assert (= (and b!6728295 ((_ is Star!16555) (reg!16884 (regOne!33623 r!7292)))) b!6729239))

(assert (= (and b!6728295 ((_ is Union!16555) (reg!16884 (regOne!33623 r!7292)))) b!6729240))

(declare-fun b!6729242 () Bool)

(declare-fun e!4065414 () Bool)

(declare-fun tp!1845022 () Bool)

(declare-fun tp!1845019 () Bool)

(assert (=> b!6729242 (= e!4065414 (and tp!1845022 tp!1845019))))

(assert (=> b!6728294 (= tp!1844741 e!4065414)))

(declare-fun b!6729244 () Bool)

(declare-fun tp!1845021 () Bool)

(declare-fun tp!1845023 () Bool)

(assert (=> b!6729244 (= e!4065414 (and tp!1845021 tp!1845023))))

(declare-fun b!6729243 () Bool)

(declare-fun tp!1845020 () Bool)

(assert (=> b!6729243 (= e!4065414 tp!1845020)))

(declare-fun b!6729241 () Bool)

(assert (=> b!6729241 (= e!4065414 tp_is_empty!42363)))

(assert (= (and b!6728294 ((_ is ElementMatch!16555) (regOne!33622 (regOne!33623 r!7292)))) b!6729241))

(assert (= (and b!6728294 ((_ is Concat!25400) (regOne!33622 (regOne!33623 r!7292)))) b!6729242))

(assert (= (and b!6728294 ((_ is Star!16555) (regOne!33622 (regOne!33623 r!7292)))) b!6729243))

(assert (= (and b!6728294 ((_ is Union!16555) (regOne!33622 (regOne!33623 r!7292)))) b!6729244))

(declare-fun b!6729246 () Bool)

(declare-fun e!4065415 () Bool)

(declare-fun tp!1845027 () Bool)

(declare-fun tp!1845024 () Bool)

(assert (=> b!6729246 (= e!4065415 (and tp!1845027 tp!1845024))))

(assert (=> b!6728294 (= tp!1844738 e!4065415)))

(declare-fun b!6729248 () Bool)

(declare-fun tp!1845026 () Bool)

(declare-fun tp!1845028 () Bool)

(assert (=> b!6729248 (= e!4065415 (and tp!1845026 tp!1845028))))

(declare-fun b!6729247 () Bool)

(declare-fun tp!1845025 () Bool)

(assert (=> b!6729247 (= e!4065415 tp!1845025)))

(declare-fun b!6729245 () Bool)

(assert (=> b!6729245 (= e!4065415 tp_is_empty!42363)))

(assert (= (and b!6728294 ((_ is ElementMatch!16555) (regTwo!33622 (regOne!33623 r!7292)))) b!6729245))

(assert (= (and b!6728294 ((_ is Concat!25400) (regTwo!33622 (regOne!33623 r!7292)))) b!6729246))

(assert (= (and b!6728294 ((_ is Star!16555) (regTwo!33622 (regOne!33623 r!7292)))) b!6729247))

(assert (= (and b!6728294 ((_ is Union!16555) (regTwo!33622 (regOne!33623 r!7292)))) b!6729248))

(declare-fun b!6729250 () Bool)

(declare-fun e!4065416 () Bool)

(declare-fun tp!1845032 () Bool)

(declare-fun tp!1845029 () Bool)

(assert (=> b!6729250 (= e!4065416 (and tp!1845032 tp!1845029))))

(assert (=> b!6728296 (= tp!1844740 e!4065416)))

(declare-fun b!6729252 () Bool)

(declare-fun tp!1845031 () Bool)

(declare-fun tp!1845033 () Bool)

(assert (=> b!6729252 (= e!4065416 (and tp!1845031 tp!1845033))))

(declare-fun b!6729251 () Bool)

(declare-fun tp!1845030 () Bool)

(assert (=> b!6729251 (= e!4065416 tp!1845030)))

(declare-fun b!6729249 () Bool)

(assert (=> b!6729249 (= e!4065416 tp_is_empty!42363)))

(assert (= (and b!6728296 ((_ is ElementMatch!16555) (regOne!33623 (regOne!33623 r!7292)))) b!6729249))

(assert (= (and b!6728296 ((_ is Concat!25400) (regOne!33623 (regOne!33623 r!7292)))) b!6729250))

(assert (= (and b!6728296 ((_ is Star!16555) (regOne!33623 (regOne!33623 r!7292)))) b!6729251))

(assert (= (and b!6728296 ((_ is Union!16555) (regOne!33623 (regOne!33623 r!7292)))) b!6729252))

(declare-fun b!6729254 () Bool)

(declare-fun e!4065417 () Bool)

(declare-fun tp!1845037 () Bool)

(declare-fun tp!1845034 () Bool)

(assert (=> b!6729254 (= e!4065417 (and tp!1845037 tp!1845034))))

(assert (=> b!6728296 (= tp!1844742 e!4065417)))

(declare-fun b!6729256 () Bool)

(declare-fun tp!1845036 () Bool)

(declare-fun tp!1845038 () Bool)

(assert (=> b!6729256 (= e!4065417 (and tp!1845036 tp!1845038))))

(declare-fun b!6729255 () Bool)

(declare-fun tp!1845035 () Bool)

(assert (=> b!6729255 (= e!4065417 tp!1845035)))

(declare-fun b!6729253 () Bool)

(assert (=> b!6729253 (= e!4065417 tp_is_empty!42363)))

(assert (= (and b!6728296 ((_ is ElementMatch!16555) (regTwo!33623 (regOne!33623 r!7292)))) b!6729253))

(assert (= (and b!6728296 ((_ is Concat!25400) (regTwo!33623 (regOne!33623 r!7292)))) b!6729254))

(assert (= (and b!6728296 ((_ is Star!16555) (regTwo!33623 (regOne!33623 r!7292)))) b!6729255))

(assert (= (and b!6728296 ((_ is Union!16555) (regTwo!33623 (regOne!33623 r!7292)))) b!6729256))

(declare-fun b!6729257 () Bool)

(declare-fun e!4065418 () Bool)

(declare-fun tp!1845039 () Bool)

(assert (=> b!6729257 (= e!4065418 (and tp_is_empty!42363 tp!1845039))))

(assert (=> b!6728323 (= tp!1844769 e!4065418)))

(assert (= (and b!6728323 ((_ is Cons!65841) (t!379650 (t!379650 s!2326)))) b!6729257))

(declare-fun b!6729258 () Bool)

(declare-fun e!4065419 () Bool)

(declare-fun tp!1845040 () Bool)

(declare-fun tp!1845041 () Bool)

(assert (=> b!6729258 (= e!4065419 (and tp!1845040 tp!1845041))))

(assert (=> b!6728305 (= tp!1844752 e!4065419)))

(assert (= (and b!6728305 ((_ is Cons!65840) (exprs!6439 setElem!45883))) b!6729258))

(declare-fun b!6729260 () Bool)

(declare-fun e!4065420 () Bool)

(declare-fun tp!1845045 () Bool)

(declare-fun tp!1845042 () Bool)

(assert (=> b!6729260 (= e!4065420 (and tp!1845045 tp!1845042))))

(assert (=> b!6728282 (= tp!1844723 e!4065420)))

(declare-fun b!6729262 () Bool)

(declare-fun tp!1845044 () Bool)

(declare-fun tp!1845046 () Bool)

(assert (=> b!6729262 (= e!4065420 (and tp!1845044 tp!1845046))))

(declare-fun b!6729261 () Bool)

(declare-fun tp!1845043 () Bool)

(assert (=> b!6729261 (= e!4065420 tp!1845043)))

(declare-fun b!6729259 () Bool)

(assert (=> b!6729259 (= e!4065420 tp_is_empty!42363)))

(assert (= (and b!6728282 ((_ is ElementMatch!16555) (reg!16884 (regOne!33622 r!7292)))) b!6729259))

(assert (= (and b!6728282 ((_ is Concat!25400) (reg!16884 (regOne!33622 r!7292)))) b!6729260))

(assert (= (and b!6728282 ((_ is Star!16555) (reg!16884 (regOne!33622 r!7292)))) b!6729261))

(assert (= (and b!6728282 ((_ is Union!16555) (reg!16884 (regOne!33622 r!7292)))) b!6729262))

(declare-fun b!6729264 () Bool)

(declare-fun e!4065421 () Bool)

(declare-fun tp!1845050 () Bool)

(declare-fun tp!1845047 () Bool)

(assert (=> b!6729264 (= e!4065421 (and tp!1845050 tp!1845047))))

(assert (=> b!6728283 (= tp!1844724 e!4065421)))

(declare-fun b!6729266 () Bool)

(declare-fun tp!1845049 () Bool)

(declare-fun tp!1845051 () Bool)

(assert (=> b!6729266 (= e!4065421 (and tp!1845049 tp!1845051))))

(declare-fun b!6729265 () Bool)

(declare-fun tp!1845048 () Bool)

(assert (=> b!6729265 (= e!4065421 tp!1845048)))

(declare-fun b!6729263 () Bool)

(assert (=> b!6729263 (= e!4065421 tp_is_empty!42363)))

(assert (= (and b!6728283 ((_ is ElementMatch!16555) (regOne!33623 (regOne!33622 r!7292)))) b!6729263))

(assert (= (and b!6728283 ((_ is Concat!25400) (regOne!33623 (regOne!33622 r!7292)))) b!6729264))

(assert (= (and b!6728283 ((_ is Star!16555) (regOne!33623 (regOne!33622 r!7292)))) b!6729265))

(assert (= (and b!6728283 ((_ is Union!16555) (regOne!33623 (regOne!33622 r!7292)))) b!6729266))

(declare-fun b!6729268 () Bool)

(declare-fun e!4065422 () Bool)

(declare-fun tp!1845055 () Bool)

(declare-fun tp!1845052 () Bool)

(assert (=> b!6729268 (= e!4065422 (and tp!1845055 tp!1845052))))

(assert (=> b!6728283 (= tp!1844726 e!4065422)))

(declare-fun b!6729270 () Bool)

(declare-fun tp!1845054 () Bool)

(declare-fun tp!1845056 () Bool)

(assert (=> b!6729270 (= e!4065422 (and tp!1845054 tp!1845056))))

(declare-fun b!6729269 () Bool)

(declare-fun tp!1845053 () Bool)

(assert (=> b!6729269 (= e!4065422 tp!1845053)))

(declare-fun b!6729267 () Bool)

(assert (=> b!6729267 (= e!4065422 tp_is_empty!42363)))

(assert (= (and b!6728283 ((_ is ElementMatch!16555) (regTwo!33623 (regOne!33622 r!7292)))) b!6729267))

(assert (= (and b!6728283 ((_ is Concat!25400) (regTwo!33623 (regOne!33622 r!7292)))) b!6729268))

(assert (= (and b!6728283 ((_ is Star!16555) (regTwo!33623 (regOne!33622 r!7292)))) b!6729269))

(assert (= (and b!6728283 ((_ is Union!16555) (regTwo!33623 (regOne!33622 r!7292)))) b!6729270))

(declare-fun b!6729272 () Bool)

(declare-fun e!4065423 () Bool)

(declare-fun tp!1845060 () Bool)

(declare-fun tp!1845057 () Bool)

(assert (=> b!6729272 (= e!4065423 (and tp!1845060 tp!1845057))))

(assert (=> b!6728317 (= tp!1844763 e!4065423)))

(declare-fun b!6729274 () Bool)

(declare-fun tp!1845059 () Bool)

(declare-fun tp!1845061 () Bool)

(assert (=> b!6729274 (= e!4065423 (and tp!1845059 tp!1845061))))

(declare-fun b!6729273 () Bool)

(declare-fun tp!1845058 () Bool)

(assert (=> b!6729273 (= e!4065423 tp!1845058)))

(declare-fun b!6729271 () Bool)

(assert (=> b!6729271 (= e!4065423 tp_is_empty!42363)))

(assert (= (and b!6728317 ((_ is ElementMatch!16555) (reg!16884 (reg!16884 r!7292)))) b!6729271))

(assert (= (and b!6728317 ((_ is Concat!25400) (reg!16884 (reg!16884 r!7292)))) b!6729272))

(assert (= (and b!6728317 ((_ is Star!16555) (reg!16884 (reg!16884 r!7292)))) b!6729273))

(assert (= (and b!6728317 ((_ is Union!16555) (reg!16884 (reg!16884 r!7292)))) b!6729274))

(declare-fun b!6729276 () Bool)

(declare-fun e!4065424 () Bool)

(declare-fun tp!1845065 () Bool)

(declare-fun tp!1845062 () Bool)

(assert (=> b!6729276 (= e!4065424 (and tp!1845065 tp!1845062))))

(assert (=> b!6728316 (= tp!1844765 e!4065424)))

(declare-fun b!6729278 () Bool)

(declare-fun tp!1845064 () Bool)

(declare-fun tp!1845066 () Bool)

(assert (=> b!6729278 (= e!4065424 (and tp!1845064 tp!1845066))))

(declare-fun b!6729277 () Bool)

(declare-fun tp!1845063 () Bool)

(assert (=> b!6729277 (= e!4065424 tp!1845063)))

(declare-fun b!6729275 () Bool)

(assert (=> b!6729275 (= e!4065424 tp_is_empty!42363)))

(assert (= (and b!6728316 ((_ is ElementMatch!16555) (regOne!33622 (reg!16884 r!7292)))) b!6729275))

(assert (= (and b!6728316 ((_ is Concat!25400) (regOne!33622 (reg!16884 r!7292)))) b!6729276))

(assert (= (and b!6728316 ((_ is Star!16555) (regOne!33622 (reg!16884 r!7292)))) b!6729277))

(assert (= (and b!6728316 ((_ is Union!16555) (regOne!33622 (reg!16884 r!7292)))) b!6729278))

(declare-fun b!6729280 () Bool)

(declare-fun e!4065425 () Bool)

(declare-fun tp!1845070 () Bool)

(declare-fun tp!1845067 () Bool)

(assert (=> b!6729280 (= e!4065425 (and tp!1845070 tp!1845067))))

(assert (=> b!6728316 (= tp!1844762 e!4065425)))

(declare-fun b!6729282 () Bool)

(declare-fun tp!1845069 () Bool)

(declare-fun tp!1845071 () Bool)

(assert (=> b!6729282 (= e!4065425 (and tp!1845069 tp!1845071))))

(declare-fun b!6729281 () Bool)

(declare-fun tp!1845068 () Bool)

(assert (=> b!6729281 (= e!4065425 tp!1845068)))

(declare-fun b!6729279 () Bool)

(assert (=> b!6729279 (= e!4065425 tp_is_empty!42363)))

(assert (= (and b!6728316 ((_ is ElementMatch!16555) (regTwo!33622 (reg!16884 r!7292)))) b!6729279))

(assert (= (and b!6728316 ((_ is Concat!25400) (regTwo!33622 (reg!16884 r!7292)))) b!6729280))

(assert (= (and b!6728316 ((_ is Star!16555) (regTwo!33622 (reg!16884 r!7292)))) b!6729281))

(assert (= (and b!6728316 ((_ is Union!16555) (regTwo!33622 (reg!16884 r!7292)))) b!6729282))

(declare-fun b!6729284 () Bool)

(declare-fun e!4065426 () Bool)

(declare-fun tp!1845075 () Bool)

(declare-fun tp!1845072 () Bool)

(assert (=> b!6729284 (= e!4065426 (and tp!1845075 tp!1845072))))

(assert (=> b!6728318 (= tp!1844764 e!4065426)))

(declare-fun b!6729286 () Bool)

(declare-fun tp!1845074 () Bool)

(declare-fun tp!1845076 () Bool)

(assert (=> b!6729286 (= e!4065426 (and tp!1845074 tp!1845076))))

(declare-fun b!6729285 () Bool)

(declare-fun tp!1845073 () Bool)

(assert (=> b!6729285 (= e!4065426 tp!1845073)))

(declare-fun b!6729283 () Bool)

(assert (=> b!6729283 (= e!4065426 tp_is_empty!42363)))

(assert (= (and b!6728318 ((_ is ElementMatch!16555) (regOne!33623 (reg!16884 r!7292)))) b!6729283))

(assert (= (and b!6728318 ((_ is Concat!25400) (regOne!33623 (reg!16884 r!7292)))) b!6729284))

(assert (= (and b!6728318 ((_ is Star!16555) (regOne!33623 (reg!16884 r!7292)))) b!6729285))

(assert (= (and b!6728318 ((_ is Union!16555) (regOne!33623 (reg!16884 r!7292)))) b!6729286))

(declare-fun b!6729288 () Bool)

(declare-fun e!4065427 () Bool)

(declare-fun tp!1845080 () Bool)

(declare-fun tp!1845077 () Bool)

(assert (=> b!6729288 (= e!4065427 (and tp!1845080 tp!1845077))))

(assert (=> b!6728318 (= tp!1844766 e!4065427)))

(declare-fun b!6729290 () Bool)

(declare-fun tp!1845079 () Bool)

(declare-fun tp!1845081 () Bool)

(assert (=> b!6729290 (= e!4065427 (and tp!1845079 tp!1845081))))

(declare-fun b!6729289 () Bool)

(declare-fun tp!1845078 () Bool)

(assert (=> b!6729289 (= e!4065427 tp!1845078)))

(declare-fun b!6729287 () Bool)

(assert (=> b!6729287 (= e!4065427 tp_is_empty!42363)))

(assert (= (and b!6728318 ((_ is ElementMatch!16555) (regTwo!33623 (reg!16884 r!7292)))) b!6729287))

(assert (= (and b!6728318 ((_ is Concat!25400) (regTwo!33623 (reg!16884 r!7292)))) b!6729288))

(assert (= (and b!6728318 ((_ is Star!16555) (regTwo!33623 (reg!16884 r!7292)))) b!6729289))

(assert (= (and b!6728318 ((_ is Union!16555) (regTwo!33623 (reg!16884 r!7292)))) b!6729290))

(declare-fun b!6729292 () Bool)

(declare-fun e!4065428 () Bool)

(declare-fun tp!1845085 () Bool)

(declare-fun tp!1845082 () Bool)

(assert (=> b!6729292 (= e!4065428 (and tp!1845085 tp!1845082))))

(assert (=> b!6728281 (= tp!1844725 e!4065428)))

(declare-fun b!6729294 () Bool)

(declare-fun tp!1845084 () Bool)

(declare-fun tp!1845086 () Bool)

(assert (=> b!6729294 (= e!4065428 (and tp!1845084 tp!1845086))))

(declare-fun b!6729293 () Bool)

(declare-fun tp!1845083 () Bool)

(assert (=> b!6729293 (= e!4065428 tp!1845083)))

(declare-fun b!6729291 () Bool)

(assert (=> b!6729291 (= e!4065428 tp_is_empty!42363)))

(assert (= (and b!6728281 ((_ is ElementMatch!16555) (regOne!33622 (regOne!33622 r!7292)))) b!6729291))

(assert (= (and b!6728281 ((_ is Concat!25400) (regOne!33622 (regOne!33622 r!7292)))) b!6729292))

(assert (= (and b!6728281 ((_ is Star!16555) (regOne!33622 (regOne!33622 r!7292)))) b!6729293))

(assert (= (and b!6728281 ((_ is Union!16555) (regOne!33622 (regOne!33622 r!7292)))) b!6729294))

(declare-fun b!6729296 () Bool)

(declare-fun e!4065429 () Bool)

(declare-fun tp!1845090 () Bool)

(declare-fun tp!1845087 () Bool)

(assert (=> b!6729296 (= e!4065429 (and tp!1845090 tp!1845087))))

(assert (=> b!6728281 (= tp!1844722 e!4065429)))

(declare-fun b!6729298 () Bool)

(declare-fun tp!1845089 () Bool)

(declare-fun tp!1845091 () Bool)

(assert (=> b!6729298 (= e!4065429 (and tp!1845089 tp!1845091))))

(declare-fun b!6729297 () Bool)

(declare-fun tp!1845088 () Bool)

(assert (=> b!6729297 (= e!4065429 tp!1845088)))

(declare-fun b!6729295 () Bool)

(assert (=> b!6729295 (= e!4065429 tp_is_empty!42363)))

(assert (= (and b!6728281 ((_ is ElementMatch!16555) (regTwo!33622 (regOne!33622 r!7292)))) b!6729295))

(assert (= (and b!6728281 ((_ is Concat!25400) (regTwo!33622 (regOne!33622 r!7292)))) b!6729296))

(assert (= (and b!6728281 ((_ is Star!16555) (regTwo!33622 (regOne!33622 r!7292)))) b!6729297))

(assert (= (and b!6728281 ((_ is Union!16555) (regTwo!33622 (regOne!33622 r!7292)))) b!6729298))

(declare-fun condSetEmpty!45893 () Bool)

(assert (=> setNonEmpty!45883 (= condSetEmpty!45893 (= setRest!45883 ((as const (Array Context!11878 Bool)) false)))))

(declare-fun setRes!45893 () Bool)

(assert (=> setNonEmpty!45883 (= tp!1844753 setRes!45893)))

(declare-fun setIsEmpty!45893 () Bool)

(assert (=> setIsEmpty!45893 setRes!45893))

(declare-fun e!4065430 () Bool)

(declare-fun setElem!45893 () Context!11878)

(declare-fun setNonEmpty!45893 () Bool)

(declare-fun tp!1845093 () Bool)

(assert (=> setNonEmpty!45893 (= setRes!45893 (and tp!1845093 (inv!84634 setElem!45893) e!4065430))))

(declare-fun setRest!45893 () (InoxSet Context!11878))

(assert (=> setNonEmpty!45893 (= setRest!45883 ((_ map or) (store ((as const (Array Context!11878 Bool)) false) setElem!45893 true) setRest!45893))))

(declare-fun b!6729299 () Bool)

(declare-fun tp!1845092 () Bool)

(assert (=> b!6729299 (= e!4065430 tp!1845092)))

(assert (= (and setNonEmpty!45883 condSetEmpty!45893) setIsEmpty!45893))

(assert (= (and setNonEmpty!45883 (not condSetEmpty!45893)) setNonEmpty!45893))

(assert (= setNonEmpty!45893 b!6729299))

(declare-fun m!7488360 () Bool)

(assert (=> setNonEmpty!45893 m!7488360))

(declare-fun b_lambda!253355 () Bool)

(assert (= b_lambda!253349 (or d!2114017 b_lambda!253355)))

(declare-fun bs!1789768 () Bool)

(declare-fun d!2114459 () Bool)

(assert (= bs!1789768 (and d!2114459 d!2114017)))

(assert (=> bs!1789768 (= (dynLambda!26262 lambda!377550 (h!72288 lt!2437498)) (validRegex!8291 (h!72288 lt!2437498)))))

(declare-fun m!7488362 () Bool)

(assert (=> bs!1789768 m!7488362))

(assert (=> b!6729118 d!2114459))

(declare-fun b_lambda!253357 () Bool)

(assert (= b_lambda!253329 (or d!2114021 b_lambda!253357)))

(declare-fun bs!1789769 () Bool)

(declare-fun d!2114461 () Bool)

(assert (= bs!1789769 (and d!2114461 d!2114021)))

(assert (=> bs!1789769 (= (dynLambda!26262 lambda!377556 (h!72288 (exprs!6439 (h!72290 zl!343)))) (validRegex!8291 (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(declare-fun m!7488364 () Bool)

(assert (=> bs!1789769 m!7488364))

(assert (=> b!6728956 d!2114461))

(declare-fun b_lambda!253359 () Bool)

(assert (= b_lambda!253325 (or d!2114015 b_lambda!253359)))

(declare-fun bs!1789770 () Bool)

(declare-fun d!2114463 () Bool)

(assert (= bs!1789770 (and d!2114463 d!2114015)))

(assert (=> bs!1789770 (= (dynLambda!26262 lambda!377547 (h!72288 (unfocusZipperList!1976 zl!343))) (validRegex!8291 (h!72288 (unfocusZipperList!1976 zl!343))))))

(declare-fun m!7488366 () Bool)

(assert (=> bs!1789770 m!7488366))

(assert (=> b!6728861 d!2114463))

(declare-fun b_lambda!253361 () Bool)

(assert (= b_lambda!253351 (or d!2114035 b_lambda!253361)))

(declare-fun bs!1789771 () Bool)

(declare-fun d!2114465 () Bool)

(assert (= bs!1789771 (and d!2114465 d!2114035)))

(assert (=> bs!1789771 (= (dynLambda!26262 lambda!377558 (h!72288 (exprs!6439 setElem!45877))) (validRegex!8291 (h!72288 (exprs!6439 setElem!45877))))))

(declare-fun m!7488368 () Bool)

(assert (=> bs!1789771 m!7488368))

(assert (=> b!6729149 d!2114465))

(declare-fun b_lambda!253363 () Bool)

(assert (= b_lambda!253331 (or d!2114019 b_lambda!253363)))

(declare-fun bs!1789772 () Bool)

(declare-fun d!2114467 () Bool)

(assert (= bs!1789772 (and d!2114467 d!2114019)))

(assert (=> bs!1789772 (= (dynLambda!26262 lambda!377553 (h!72288 (exprs!6439 (h!72290 zl!343)))) (validRegex!8291 (h!72288 (exprs!6439 (h!72290 zl!343)))))))

(assert (=> bs!1789772 m!7488364))

(assert (=> b!6728986 d!2114467))

(declare-fun b_lambda!253365 () Bool)

(assert (= b_lambda!253321 (or b!6727573 b_lambda!253365)))

(assert (=> d!2114281 d!2114047))

(declare-fun b_lambda!253367 () Bool)

(assert (= b_lambda!253353 (or d!2114043 b_lambda!253367)))

(declare-fun bs!1789773 () Bool)

(declare-fun d!2114469 () Bool)

(assert (= bs!1789773 (and d!2114469 d!2114043)))

(assert (=> bs!1789773 (= (dynLambda!26262 lambda!377559 (h!72288 (exprs!6439 lt!2437413))) (validRegex!8291 (h!72288 (exprs!6439 lt!2437413))))))

(declare-fun m!7488370 () Bool)

(assert (=> bs!1789773 m!7488370))

(assert (=> b!6729182 d!2114469))

(declare-fun b_lambda!253369 () Bool)

(assert (= b_lambda!253315 (or b!6727573 b_lambda!253369)))

(assert (=> d!2114151 d!2114049))

(check-sat (not bm!607688) (not d!2114403) (not b!6729194) (not b!6728501) (not b!6729022) (not b!6729101) (not b!6728887) (not b!6729065) (not bm!607624) (not b!6729226) (not b!6728865) (not bm!607705) (not b!6729150) (not bm!607698) (not bs!1789773) (not b_lambda!253359) (not d!2114435) (not d!2114323) (not b!6729256) (not b!6729250) (not d!2114379) (not d!2114425) (not b!6729085) (not b_lambda!253363) (not setNonEmpty!45892) (not b!6729247) (not b!6728884) (not b!6729077) (not b!6728502) (not b!6728549) (not b!6729285) (not d!2114187) (not b!6729206) (not b!6729183) (not d!2114167) (not bm!607643) (not bm!607646) (not d!2114275) (not d!2114265) (not d!2114381) (not b!6729222) (not b!6729252) (not d!2114417) (not b!6729299) (not b!6729201) (not b!6729214) (not b!6728901) (not b!6728770) (not bm!607721) (not b!6729197) (not bm!607623) (not b!6729064) (not b!6729242) (not b!6728885) (not d!2114149) (not bm!607632) (not b!6728517) (not b!6728720) (not d!2114445) (not b!6729205) (not bm!607616) (not bm!607694) (not b!6729144) (not b!6729270) (not b!6728670) (not bm!607673) (not b!6729223) (not d!2114151) (not b!6728777) (not b!6729217) (not b!6729089) (not b!6729081) (not b!6729181) (not b!6729246) (not d!2114439) (not d!2114241) (not b!6729262) (not bm!607604) (not b!6728839) (not b!6729260) (not b!6729084) (not b!6728761) (not b!6728810) (not b!6729234) (not b!6729293) (not bm!607628) (not b!6728546) (not b!6729083) (not b!6729114) (not b!6729298) (not b!6729243) (not b!6728987) (not b!6729257) (not b!6728880) (not d!2114397) (not b!6729140) (not b!6729244) (not b!6729236) (not b_lambda!253369) (not b!6729232) (not b!6728881) (not b!6729097) (not b!6729191) (not b!6729192) (not b!6728514) (not d!2114409) (not b_lambda!253355) (not b!6728666) (not b!6728729) (not bm!607710) (not bm!607652) (not b!6729213) (not bs!1789772) (not b!6728740) (not b!6729177) (not b!6728768) (not bm!607648) (not b!6729261) (not d!2114191) (not bm!607598) (not b!6729258) (not b!6729092) (not b!6728741) (not b!6729091) (not b!6728762) (not b!6729235) (not b!6729190) (not bs!1789768) (not d!2114419) (not b_lambda!253357) (not b!6729193) (not b!6729212) (not b!6729296) (not b!6728746) (not b!6728972) (not b!6729288) (not bm!607703) (not b!6728668) (not b!6729204) (not b!6729227) (not bm!607645) (not b!6729282) (not bm!607722) (not bs!1789770) (not bm!607636) (not d!2114437) (not b!6729268) (not b!6729274) (not b!6729198) (not b!6728824) (not b!6728597) (not b!6729294) (not b_lambda!253303) (not d!2114281) (not b!6729219) (not bm!607671) (not b!6729284) (not b!6729248) (not b!6729278) (not bm!607620) (not b!6729196) (not b!6728673) (not b!6728862) (not b!6729200) (not b!6729096) (not b!6728883) (not b!6729086) (not b_lambda!253367) (not bm!607687) (not bm!607717) (not d!2114251) (not b!6728628) (not b!6729286) (not b!6728760) (not d!2114161) (not b!6729088) (not bs!1789771) (not b!6728679) (not b!6729265) (not b!6728886) (not bm!607709) (not b!6729186) (not b!6729266) (not b!6728719) (not bm!607695) (not b!6729216) (not d!2114223) (not b!6728547) (not b_lambda!253365) (not b!6728731) (not d!2114189) (not d!2114333) (not b!6729269) (not d!2114455) (not bm!607724) (not b!6729188) (not b!6729289) (not bm!607665) (not b!6728551) (not bm!607715) (not b!6729277) (not d!2114423) (not bm!607631) (not b!6729142) (not bm!607716) (not b!6729187) (not b!6728739) (not b!6728639) (not b!6728866) (not d!2114297) (not d!2114391) (not b!6729272) (not b!6729218) (not b!6729228) (not setNonEmpty!45889) (not bm!607713) (not b!6728736) (not b_lambda!253361) (not bm!607714) (not d!2114301) (not b!6729292) (not b!6729230) (not d!2114331) (not b!6728685) (not b!6729276) (not b!6729139) (not b!6729254) (not bm!607618) (not b!6729255) (not b!6729240) (not b!6729221) (not bm!607692) (not bm!607670) (not d!2114303) (not b!6728665) tp_is_empty!42363 (not setNonEmpty!45893) (not b!6729209) (not b!6728765) (not bm!607630) (not d!2114421) (not bm!607712) (not d!2114433) (not d!2114335) (not b!6729122) (not b!6729238) (not b!6729185) (not b!6729090) (not bm!607704) (not b!6729281) (not b!6729251) (not b!6729087) (not b!6729210) (not b_lambda!253305) (not bs!1789769) (not bm!607699) (not b!6729208) (not b!6728957) (not bm!607622) (not b!6728999) (not d!2114327) (not b!6729239) (not b!6729224) (not b!6728737) (not b!6729273) (not b!6729297) (not bm!607666) (not b!6728730) (not d!2114283) (not b!6729076) (not d!2114269) (not b!6728554) (not b!6728773) (not b!6729119) (not b!6729202) (not b!6729147) (not b!6729290) (not b!6729264) (not b!6728909) (not d!2114399) (not b!6729280) (not b!6728550) (not d!2114273) (not bm!607647) (not d!2114457) (not bm!607697) (not b!6729130) (not d!2114115) (not b!6729231) (not b!6729143) (not b!6729154) (not b!6728669))
(check-sat)
