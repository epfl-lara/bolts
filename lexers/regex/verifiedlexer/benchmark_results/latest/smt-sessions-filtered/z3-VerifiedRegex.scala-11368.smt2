; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!603276 () Bool)

(assert start!603276)

(declare-fun b!5936450 () Bool)

(assert (=> b!5936450 true))

(assert (=> b!5936450 true))

(declare-fun lambda!323765 () Int)

(declare-fun lambda!323764 () Int)

(assert (=> b!5936450 (not (= lambda!323765 lambda!323764))))

(assert (=> b!5936450 true))

(assert (=> b!5936450 true))

(declare-fun b!5936462 () Bool)

(assert (=> b!5936462 true))

(declare-fun b!5936444 () Bool)

(declare-fun res!2486719 () Bool)

(declare-fun e!3632819 () Bool)

(assert (=> b!5936444 (=> (not res!2486719) (not e!3632819))))

(declare-datatypes ((C!32236 0))(
  ( (C!32237 (val!25820 Int)) )
))
(declare-datatypes ((Regex!15983 0))(
  ( (ElementMatch!15983 (c!1055457 C!32236)) (Concat!24828 (regOne!32478 Regex!15983) (regTwo!32478 Regex!15983)) (EmptyExpr!15983) (Star!15983 (reg!16312 Regex!15983)) (EmptyLang!15983) (Union!15983 (regOne!32479 Regex!15983) (regTwo!32479 Regex!15983)) )
))
(declare-fun r!7292 () Regex!15983)

(declare-datatypes ((List!64248 0))(
  ( (Nil!64124) (Cons!64124 (h!70572 Regex!15983) (t!377651 List!64248)) )
))
(declare-datatypes ((Context!10734 0))(
  ( (Context!10735 (exprs!5867 List!64248)) )
))
(declare-datatypes ((List!64249 0))(
  ( (Nil!64125) (Cons!64125 (h!70573 Context!10734) (t!377652 List!64249)) )
))
(declare-fun zl!343 () List!64249)

(declare-fun unfocusZipper!1725 (List!64249) Regex!15983)

(assert (=> b!5936444 (= res!2486719 (= r!7292 (unfocusZipper!1725 zl!343)))))

(declare-fun b!5936445 () Bool)

(declare-fun e!3632814 () Bool)

(declare-fun tp!1651655 () Bool)

(declare-fun e!3632818 () Bool)

(declare-fun inv!83204 (Context!10734) Bool)

(assert (=> b!5936445 (= e!3632818 (and (inv!83204 (h!70573 zl!343)) e!3632814 tp!1651655))))

(declare-fun b!5936446 () Bool)

(declare-fun res!2486729 () Bool)

(declare-fun e!3632815 () Bool)

(assert (=> b!5936446 (=> res!2486729 e!3632815)))

(get-info :version)

(assert (=> b!5936446 (= res!2486729 (or ((_ is EmptyExpr!15983) r!7292) ((_ is EmptyLang!15983) r!7292) ((_ is ElementMatch!15983) r!7292) ((_ is Union!15983) r!7292) (not ((_ is Concat!24828) r!7292))))))

(declare-fun b!5936447 () Bool)

(declare-fun e!3632817 () Bool)

(declare-fun tp_is_empty!41219 () Bool)

(assert (=> b!5936447 (= e!3632817 tp_is_empty!41219)))

(declare-fun b!5936448 () Bool)

(declare-fun res!2486726 () Bool)

(assert (=> b!5936448 (=> res!2486726 e!3632815)))

(assert (=> b!5936448 (= res!2486726 (not ((_ is Cons!64124) (exprs!5867 (h!70573 zl!343)))))))

(declare-fun e!3632813 () Bool)

(declare-fun tp!1651657 () Bool)

(declare-fun setElem!40314 () Context!10734)

(declare-fun setRes!40314 () Bool)

(declare-fun setNonEmpty!40314 () Bool)

(assert (=> setNonEmpty!40314 (= setRes!40314 (and tp!1651657 (inv!83204 setElem!40314) e!3632813))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10734))

(declare-fun setRest!40314 () (InoxSet Context!10734))

(assert (=> setNonEmpty!40314 (= z!1189 ((_ map or) (store ((as const (Array Context!10734 Bool)) false) setElem!40314 true) setRest!40314))))

(declare-fun b!5936449 () Bool)

(declare-fun tp!1651650 () Bool)

(assert (=> b!5936449 (= e!3632814 tp!1651650)))

(declare-fun e!3632812 () Bool)

(assert (=> b!5936450 (= e!3632815 e!3632812)))

(declare-fun res!2486728 () Bool)

(assert (=> b!5936450 (=> res!2486728 e!3632812)))

(declare-datatypes ((List!64250 0))(
  ( (Nil!64126) (Cons!64126 (h!70574 C!32236) (t!377653 List!64250)) )
))
(declare-fun s!2326 () List!64250)

(declare-fun lt!2311320 () Bool)

(declare-fun lt!2311321 () Bool)

(assert (=> b!5936450 (= res!2486728 (or (not (= lt!2311321 lt!2311320)) ((_ is Nil!64126) s!2326)))))

(declare-fun Exists!3053 (Int) Bool)

(assert (=> b!5936450 (= (Exists!3053 lambda!323764) (Exists!3053 lambda!323765))))

(declare-datatypes ((Unit!157237 0))(
  ( (Unit!157238) )
))
(declare-fun lt!2311334 () Unit!157237)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1590 (Regex!15983 Regex!15983 List!64250) Unit!157237)

(assert (=> b!5936450 (= lt!2311334 (lemmaExistCutMatchRandMatchRSpecEquivalent!1590 (regOne!32478 r!7292) (regTwo!32478 r!7292) s!2326))))

(assert (=> b!5936450 (= lt!2311320 (Exists!3053 lambda!323764))))

(declare-datatypes ((tuple2!65924 0))(
  ( (tuple2!65925 (_1!36265 List!64250) (_2!36265 List!64250)) )
))
(declare-datatypes ((Option!15874 0))(
  ( (None!15873) (Some!15873 (v!51973 tuple2!65924)) )
))
(declare-fun isDefined!12577 (Option!15874) Bool)

(declare-fun findConcatSeparation!2288 (Regex!15983 Regex!15983 List!64250 List!64250 List!64250) Option!15874)

(assert (=> b!5936450 (= lt!2311320 (isDefined!12577 (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) Nil!64126 s!2326 s!2326)))))

(declare-fun lt!2311338 () Unit!157237)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2052 (Regex!15983 Regex!15983 List!64250) Unit!157237)

(assert (=> b!5936450 (= lt!2311338 (lemmaFindConcatSeparationEquivalentToExists!2052 (regOne!32478 r!7292) (regTwo!32478 r!7292) s!2326))))

(declare-fun b!5936451 () Bool)

(declare-fun tp!1651649 () Bool)

(assert (=> b!5936451 (= e!3632813 tp!1651649)))

(declare-fun b!5936452 () Bool)

(declare-fun tp!1651653 () Bool)

(assert (=> b!5936452 (= e!3632817 tp!1651653)))

(declare-fun b!5936453 () Bool)

(declare-fun res!2486721 () Bool)

(assert (=> b!5936453 (=> (not res!2486721) (not e!3632819))))

(declare-fun toList!9767 ((InoxSet Context!10734)) List!64249)

(assert (=> b!5936453 (= res!2486721 (= (toList!9767 z!1189) zl!343))))

(declare-fun b!5936454 () Bool)

(declare-fun e!3632810 () Bool)

(declare-fun lt!2311329 () Context!10734)

(assert (=> b!5936454 (= e!3632810 (inv!83204 lt!2311329))))

(declare-fun lt!2311327 () Context!10734)

(declare-fun lt!2311322 () (InoxSet Context!10734))

(declare-fun derivationStepZipperDown!1233 (Regex!15983 Context!10734 C!32236) (InoxSet Context!10734))

(assert (=> b!5936454 (= lt!2311322 (derivationStepZipperDown!1233 (regOne!32478 r!7292) lt!2311327 (h!70574 s!2326)))))

(declare-fun lambda!323766 () Int)

(declare-fun lt!2311333 () (InoxSet Context!10734))

(declare-fun flatMap!1496 ((InoxSet Context!10734) Int) (InoxSet Context!10734))

(declare-fun derivationStepZipperUp!1159 (Context!10734 C!32236) (InoxSet Context!10734))

(assert (=> b!5936454 (= (flatMap!1496 lt!2311333 lambda!323766) (derivationStepZipperUp!1159 lt!2311327 (h!70574 s!2326)))))

(declare-fun lt!2311325 () Unit!157237)

(declare-fun lemmaFlatMapOnSingletonSet!1022 ((InoxSet Context!10734) Context!10734 Int) Unit!157237)

(assert (=> b!5936454 (= lt!2311325 (lemmaFlatMapOnSingletonSet!1022 lt!2311333 lt!2311327 lambda!323766))))

(declare-fun lt!2311332 () (InoxSet Context!10734))

(declare-fun lt!2311326 () Context!10734)

(assert (=> b!5936454 (= (flatMap!1496 lt!2311332 lambda!323766) (derivationStepZipperUp!1159 lt!2311326 (h!70574 s!2326)))))

(declare-fun lt!2311335 () Unit!157237)

(assert (=> b!5936454 (= lt!2311335 (lemmaFlatMapOnSingletonSet!1022 lt!2311332 lt!2311326 lambda!323766))))

(declare-fun lt!2311328 () (InoxSet Context!10734))

(assert (=> b!5936454 (= lt!2311328 (derivationStepZipperUp!1159 lt!2311327 (h!70574 s!2326)))))

(declare-fun lt!2311336 () (InoxSet Context!10734))

(assert (=> b!5936454 (= lt!2311336 (derivationStepZipperUp!1159 lt!2311326 (h!70574 s!2326)))))

(assert (=> b!5936454 (= lt!2311333 (store ((as const (Array Context!10734 Bool)) false) lt!2311327 true))))

(declare-fun lt!2311324 () List!64248)

(assert (=> b!5936454 (= lt!2311327 (Context!10735 lt!2311324))))

(assert (=> b!5936454 (= lt!2311332 (store ((as const (Array Context!10734 Bool)) false) lt!2311326 true))))

(assert (=> b!5936454 (= lt!2311326 (Context!10735 (Cons!64124 (regOne!32478 r!7292) lt!2311324)))))

(assert (=> b!5936454 (= lt!2311324 (Cons!64124 (regTwo!32478 r!7292) Nil!64124))))

(declare-fun b!5936455 () Bool)

(declare-fun res!2486725 () Bool)

(assert (=> b!5936455 (=> res!2486725 e!3632815)))

(declare-fun generalisedConcat!1580 (List!64248) Regex!15983)

(assert (=> b!5936455 (= res!2486725 (not (= r!7292 (generalisedConcat!1580 (exprs!5867 (h!70573 zl!343))))))))

(declare-fun b!5936456 () Bool)

(assert (=> b!5936456 (= e!3632819 (not e!3632815))))

(declare-fun res!2486727 () Bool)

(assert (=> b!5936456 (=> res!2486727 e!3632815)))

(assert (=> b!5936456 (= res!2486727 (not ((_ is Cons!64125) zl!343)))))

(declare-fun matchRSpec!3084 (Regex!15983 List!64250) Bool)

(assert (=> b!5936456 (= lt!2311321 (matchRSpec!3084 r!7292 s!2326))))

(declare-fun matchR!8166 (Regex!15983 List!64250) Bool)

(assert (=> b!5936456 (= lt!2311321 (matchR!8166 r!7292 s!2326))))

(declare-fun lt!2311323 () Unit!157237)

(declare-fun mainMatchTheorem!3084 (Regex!15983 List!64250) Unit!157237)

(assert (=> b!5936456 (= lt!2311323 (mainMatchTheorem!3084 r!7292 s!2326))))

(declare-fun b!5936457 () Bool)

(declare-fun e!3632816 () Bool)

(declare-fun tp!1651656 () Bool)

(assert (=> b!5936457 (= e!3632816 (and tp_is_empty!41219 tp!1651656))))

(declare-fun res!2486723 () Bool)

(assert (=> start!603276 (=> (not res!2486723) (not e!3632819))))

(declare-fun validRegex!7719 (Regex!15983) Bool)

(assert (=> start!603276 (= res!2486723 (validRegex!7719 r!7292))))

(assert (=> start!603276 e!3632819))

(assert (=> start!603276 e!3632817))

(declare-fun condSetEmpty!40314 () Bool)

(assert (=> start!603276 (= condSetEmpty!40314 (= z!1189 ((as const (Array Context!10734 Bool)) false)))))

(assert (=> start!603276 setRes!40314))

(assert (=> start!603276 e!3632818))

(assert (=> start!603276 e!3632816))

(declare-fun b!5936458 () Bool)

(declare-fun res!2486720 () Bool)

(assert (=> b!5936458 (=> res!2486720 e!3632812)))

(declare-fun isEmpty!35993 (List!64248) Bool)

(assert (=> b!5936458 (= res!2486720 (not (isEmpty!35993 (t!377651 (exprs!5867 (h!70573 zl!343))))))))

(declare-fun b!5936459 () Bool)

(declare-fun tp!1651654 () Bool)

(declare-fun tp!1651652 () Bool)

(assert (=> b!5936459 (= e!3632817 (and tp!1651654 tp!1651652))))

(declare-fun b!5936460 () Bool)

(declare-fun res!2486724 () Bool)

(assert (=> b!5936460 (=> res!2486724 e!3632815)))

(declare-fun isEmpty!35994 (List!64249) Bool)

(assert (=> b!5936460 (= res!2486724 (not (isEmpty!35994 (t!377652 zl!343))))))

(declare-fun b!5936461 () Bool)

(declare-fun e!3632811 () Bool)

(assert (=> b!5936461 (= e!3632812 e!3632811)))

(declare-fun res!2486730 () Bool)

(assert (=> b!5936461 (=> res!2486730 e!3632811)))

(declare-fun lt!2311331 () (InoxSet Context!10734))

(declare-fun lt!2311330 () (InoxSet Context!10734))

(assert (=> b!5936461 (= res!2486730 (not (= lt!2311331 lt!2311330)))))

(assert (=> b!5936461 (= lt!2311330 (derivationStepZipperDown!1233 r!7292 lt!2311329 (h!70574 s!2326)))))

(assert (=> b!5936461 (= lt!2311329 (Context!10735 Nil!64124))))

(assert (=> b!5936461 (= lt!2311331 (derivationStepZipperUp!1159 (Context!10735 (Cons!64124 r!7292 Nil!64124)) (h!70574 s!2326)))))

(assert (=> b!5936462 (= e!3632811 e!3632810)))

(declare-fun res!2486718 () Bool)

(assert (=> b!5936462 (=> res!2486718 e!3632810)))

(declare-fun derivationStepZipper!1964 ((InoxSet Context!10734) C!32236) (InoxSet Context!10734))

(assert (=> b!5936462 (= res!2486718 (not (= (derivationStepZipper!1964 z!1189 (h!70574 s!2326)) lt!2311330)))))

(assert (=> b!5936462 (= (flatMap!1496 z!1189 lambda!323766) (derivationStepZipperUp!1159 (h!70573 zl!343) (h!70574 s!2326)))))

(declare-fun lt!2311337 () Unit!157237)

(assert (=> b!5936462 (= lt!2311337 (lemmaFlatMapOnSingletonSet!1022 z!1189 (h!70573 zl!343) lambda!323766))))

(declare-fun b!5936463 () Bool)

(declare-fun tp!1651651 () Bool)

(declare-fun tp!1651658 () Bool)

(assert (=> b!5936463 (= e!3632817 (and tp!1651651 tp!1651658))))

(declare-fun b!5936464 () Bool)

(declare-fun res!2486722 () Bool)

(assert (=> b!5936464 (=> res!2486722 e!3632815)))

(declare-fun generalisedUnion!1827 (List!64248) Regex!15983)

(declare-fun unfocusZipperList!1404 (List!64249) List!64248)

(assert (=> b!5936464 (= res!2486722 (not (= r!7292 (generalisedUnion!1827 (unfocusZipperList!1404 zl!343)))))))

(declare-fun setIsEmpty!40314 () Bool)

(assert (=> setIsEmpty!40314 setRes!40314))

(assert (= (and start!603276 res!2486723) b!5936453))

(assert (= (and b!5936453 res!2486721) b!5936444))

(assert (= (and b!5936444 res!2486719) b!5936456))

(assert (= (and b!5936456 (not res!2486727)) b!5936460))

(assert (= (and b!5936460 (not res!2486724)) b!5936455))

(assert (= (and b!5936455 (not res!2486725)) b!5936448))

(assert (= (and b!5936448 (not res!2486726)) b!5936464))

(assert (= (and b!5936464 (not res!2486722)) b!5936446))

(assert (= (and b!5936446 (not res!2486729)) b!5936450))

(assert (= (and b!5936450 (not res!2486728)) b!5936458))

(assert (= (and b!5936458 (not res!2486720)) b!5936461))

(assert (= (and b!5936461 (not res!2486730)) b!5936462))

(assert (= (and b!5936462 (not res!2486718)) b!5936454))

(assert (= (and start!603276 ((_ is ElementMatch!15983) r!7292)) b!5936447))

(assert (= (and start!603276 ((_ is Concat!24828) r!7292)) b!5936463))

(assert (= (and start!603276 ((_ is Star!15983) r!7292)) b!5936452))

(assert (= (and start!603276 ((_ is Union!15983) r!7292)) b!5936459))

(assert (= (and start!603276 condSetEmpty!40314) setIsEmpty!40314))

(assert (= (and start!603276 (not condSetEmpty!40314)) setNonEmpty!40314))

(assert (= setNonEmpty!40314 b!5936451))

(assert (= b!5936445 b!5936449))

(assert (= (and start!603276 ((_ is Cons!64125) zl!343)) b!5936445))

(assert (= (and start!603276 ((_ is Cons!64126) s!2326)) b!5936457))

(declare-fun m!6827134 () Bool)

(assert (=> b!5936462 m!6827134))

(declare-fun m!6827136 () Bool)

(assert (=> b!5936462 m!6827136))

(declare-fun m!6827138 () Bool)

(assert (=> b!5936462 m!6827138))

(declare-fun m!6827140 () Bool)

(assert (=> b!5936462 m!6827140))

(declare-fun m!6827142 () Bool)

(assert (=> b!5936460 m!6827142))

(declare-fun m!6827144 () Bool)

(assert (=> setNonEmpty!40314 m!6827144))

(declare-fun m!6827146 () Bool)

(assert (=> b!5936453 m!6827146))

(declare-fun m!6827148 () Bool)

(assert (=> b!5936445 m!6827148))

(declare-fun m!6827150 () Bool)

(assert (=> b!5936456 m!6827150))

(declare-fun m!6827152 () Bool)

(assert (=> b!5936456 m!6827152))

(declare-fun m!6827154 () Bool)

(assert (=> b!5936456 m!6827154))

(declare-fun m!6827156 () Bool)

(assert (=> b!5936454 m!6827156))

(declare-fun m!6827158 () Bool)

(assert (=> b!5936454 m!6827158))

(declare-fun m!6827160 () Bool)

(assert (=> b!5936454 m!6827160))

(declare-fun m!6827162 () Bool)

(assert (=> b!5936454 m!6827162))

(declare-fun m!6827164 () Bool)

(assert (=> b!5936454 m!6827164))

(declare-fun m!6827166 () Bool)

(assert (=> b!5936454 m!6827166))

(declare-fun m!6827168 () Bool)

(assert (=> b!5936454 m!6827168))

(declare-fun m!6827170 () Bool)

(assert (=> b!5936454 m!6827170))

(declare-fun m!6827172 () Bool)

(assert (=> b!5936454 m!6827172))

(declare-fun m!6827174 () Bool)

(assert (=> b!5936454 m!6827174))

(declare-fun m!6827176 () Bool)

(assert (=> b!5936455 m!6827176))

(declare-fun m!6827178 () Bool)

(assert (=> start!603276 m!6827178))

(declare-fun m!6827180 () Bool)

(assert (=> b!5936444 m!6827180))

(declare-fun m!6827182 () Bool)

(assert (=> b!5936461 m!6827182))

(declare-fun m!6827184 () Bool)

(assert (=> b!5936461 m!6827184))

(declare-fun m!6827186 () Bool)

(assert (=> b!5936450 m!6827186))

(declare-fun m!6827188 () Bool)

(assert (=> b!5936450 m!6827188))

(declare-fun m!6827190 () Bool)

(assert (=> b!5936450 m!6827190))

(declare-fun m!6827192 () Bool)

(assert (=> b!5936450 m!6827192))

(declare-fun m!6827194 () Bool)

(assert (=> b!5936450 m!6827194))

(assert (=> b!5936450 m!6827194))

(assert (=> b!5936450 m!6827188))

(declare-fun m!6827196 () Bool)

(assert (=> b!5936450 m!6827196))

(declare-fun m!6827198 () Bool)

(assert (=> b!5936464 m!6827198))

(assert (=> b!5936464 m!6827198))

(declare-fun m!6827200 () Bool)

(assert (=> b!5936464 m!6827200))

(declare-fun m!6827202 () Bool)

(assert (=> b!5936458 m!6827202))

(check-sat (not b!5936457) (not b!5936458) (not b!5936456) (not b!5936459) (not b!5936449) (not b!5936460) (not b!5936462) (not b!5936451) tp_is_empty!41219 (not b!5936445) (not b!5936452) (not setNonEmpty!40314) (not b!5936444) (not b!5936455) (not b!5936454) (not start!603276) (not b!5936453) (not b!5936464) (not b!5936463) (not b!5936461) (not b!5936450))
(check-sat)
(get-model)

(declare-fun d!1860955 () Bool)

(declare-fun lambda!323769 () Int)

(declare-fun forall!15066 (List!64248 Int) Bool)

(assert (=> d!1860955 (= (inv!83204 setElem!40314) (forall!15066 (exprs!5867 setElem!40314) lambda!323769))))

(declare-fun bs!1404286 () Bool)

(assert (= bs!1404286 d!1860955))

(declare-fun m!6827204 () Bool)

(assert (=> bs!1404286 m!6827204))

(assert (=> setNonEmpty!40314 d!1860955))

(declare-fun d!1860957 () Bool)

(assert (=> d!1860957 (= (isEmpty!35993 (t!377651 (exprs!5867 (h!70573 zl!343)))) ((_ is Nil!64124) (t!377651 (exprs!5867 (h!70573 zl!343)))))))

(assert (=> b!5936458 d!1860957))

(declare-fun d!1860959 () Bool)

(assert (=> d!1860959 (= (isEmpty!35994 (t!377652 zl!343)) ((_ is Nil!64125) (t!377652 zl!343)))))

(assert (=> b!5936460 d!1860959))

(declare-fun b!5936503 () Bool)

(declare-fun c!1055475 () Bool)

(assert (=> b!5936503 (= c!1055475 ((_ is Star!15983) r!7292))))

(declare-fun e!3632840 () (InoxSet Context!10734))

(declare-fun e!3632839 () (InoxSet Context!10734))

(assert (=> b!5936503 (= e!3632840 e!3632839)))

(declare-fun bm!471586 () Bool)

(declare-fun call!471596 () (InoxSet Context!10734))

(declare-fun call!471594 () (InoxSet Context!10734))

(assert (=> bm!471586 (= call!471596 call!471594)))

(declare-fun b!5936504 () Bool)

(assert (=> b!5936504 (= e!3632839 call!471596)))

(declare-fun bm!471587 () Bool)

(declare-fun call!471591 () List!64248)

(declare-fun call!471593 () List!64248)

(assert (=> bm!471587 (= call!471591 call!471593)))

(declare-fun b!5936505 () Bool)

(declare-fun c!1055472 () Bool)

(declare-fun e!3632842 () Bool)

(assert (=> b!5936505 (= c!1055472 e!3632842)))

(declare-fun res!2486735 () Bool)

(assert (=> b!5936505 (=> (not res!2486735) (not e!3632842))))

(assert (=> b!5936505 (= res!2486735 ((_ is Concat!24828) r!7292))))

(declare-fun e!3632843 () (InoxSet Context!10734))

(declare-fun e!3632838 () (InoxSet Context!10734))

(assert (=> b!5936505 (= e!3632843 e!3632838)))

(declare-fun bm!471588 () Bool)

(declare-fun call!471592 () (InoxSet Context!10734))

(assert (=> bm!471588 (= call!471594 call!471592)))

(declare-fun d!1860961 () Bool)

(declare-fun c!1055474 () Bool)

(assert (=> d!1860961 (= c!1055474 (and ((_ is ElementMatch!15983) r!7292) (= (c!1055457 r!7292) (h!70574 s!2326))))))

(declare-fun e!3632841 () (InoxSet Context!10734))

(assert (=> d!1860961 (= (derivationStepZipperDown!1233 r!7292 lt!2311329 (h!70574 s!2326)) e!3632841)))

(declare-fun c!1055473 () Bool)

(declare-fun c!1055476 () Bool)

(declare-fun bm!471589 () Bool)

(assert (=> bm!471589 (= call!471592 (derivationStepZipperDown!1233 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292)))) (ite (or c!1055473 c!1055472) lt!2311329 (Context!10735 call!471591)) (h!70574 s!2326)))))

(declare-fun bm!471590 () Bool)

(declare-fun call!471595 () (InoxSet Context!10734))

(assert (=> bm!471590 (= call!471595 (derivationStepZipperDown!1233 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292)) (ite c!1055473 lt!2311329 (Context!10735 call!471593)) (h!70574 s!2326)))))

(declare-fun b!5936506 () Bool)

(assert (=> b!5936506 (= e!3632840 call!471596)))

(declare-fun b!5936507 () Bool)

(assert (=> b!5936507 (= e!3632838 e!3632840)))

(assert (=> b!5936507 (= c!1055476 ((_ is Concat!24828) r!7292))))

(declare-fun b!5936508 () Bool)

(assert (=> b!5936508 (= e!3632843 ((_ map or) call!471592 call!471595))))

(declare-fun b!5936509 () Bool)

(assert (=> b!5936509 (= e!3632839 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5936510 () Bool)

(assert (=> b!5936510 (= e!3632841 (store ((as const (Array Context!10734 Bool)) false) lt!2311329 true))))

(declare-fun b!5936511 () Bool)

(declare-fun nullable!5978 (Regex!15983) Bool)

(assert (=> b!5936511 (= e!3632842 (nullable!5978 (regOne!32478 r!7292)))))

(declare-fun b!5936512 () Bool)

(assert (=> b!5936512 (= e!3632841 e!3632843)))

(assert (=> b!5936512 (= c!1055473 ((_ is Union!15983) r!7292))))

(declare-fun bm!471591 () Bool)

(declare-fun $colon$colon!1870 (List!64248 Regex!15983) List!64248)

(assert (=> bm!471591 (= call!471593 ($colon$colon!1870 (exprs!5867 lt!2311329) (ite (or c!1055472 c!1055476) (regTwo!32478 r!7292) r!7292)))))

(declare-fun b!5936513 () Bool)

(assert (=> b!5936513 (= e!3632838 ((_ map or) call!471595 call!471594))))

(assert (= (and d!1860961 c!1055474) b!5936510))

(assert (= (and d!1860961 (not c!1055474)) b!5936512))

(assert (= (and b!5936512 c!1055473) b!5936508))

(assert (= (and b!5936512 (not c!1055473)) b!5936505))

(assert (= (and b!5936505 res!2486735) b!5936511))

(assert (= (and b!5936505 c!1055472) b!5936513))

(assert (= (and b!5936505 (not c!1055472)) b!5936507))

(assert (= (and b!5936507 c!1055476) b!5936506))

(assert (= (and b!5936507 (not c!1055476)) b!5936503))

(assert (= (and b!5936503 c!1055475) b!5936504))

(assert (= (and b!5936503 (not c!1055475)) b!5936509))

(assert (= (or b!5936506 b!5936504) bm!471587))

(assert (= (or b!5936506 b!5936504) bm!471586))

(assert (= (or b!5936513 bm!471587) bm!471591))

(assert (= (or b!5936513 bm!471586) bm!471588))

(assert (= (or b!5936508 b!5936513) bm!471590))

(assert (= (or b!5936508 bm!471588) bm!471589))

(declare-fun m!6827206 () Bool)

(assert (=> bm!471590 m!6827206))

(declare-fun m!6827208 () Bool)

(assert (=> b!5936510 m!6827208))

(declare-fun m!6827210 () Bool)

(assert (=> b!5936511 m!6827210))

(declare-fun m!6827212 () Bool)

(assert (=> bm!471589 m!6827212))

(declare-fun m!6827214 () Bool)

(assert (=> bm!471591 m!6827214))

(assert (=> b!5936461 d!1860961))

(declare-fun b!5936566 () Bool)

(declare-fun e!3632877 () Bool)

(assert (=> b!5936566 (= e!3632877 (nullable!5978 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))))

(declare-fun b!5936567 () Bool)

(declare-fun e!3632876 () (InoxSet Context!10734))

(declare-fun call!471599 () (InoxSet Context!10734))

(assert (=> b!5936567 (= e!3632876 call!471599)))

(declare-fun bm!471594 () Bool)

(assert (=> bm!471594 (= call!471599 (derivationStepZipperDown!1233 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))) (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (h!70574 s!2326)))))

(declare-fun b!5936568 () Bool)

(assert (=> b!5936568 (= e!3632876 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5936569 () Bool)

(declare-fun e!3632878 () (InoxSet Context!10734))

(assert (=> b!5936569 (= e!3632878 ((_ map or) call!471599 (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (h!70574 s!2326))))))

(declare-fun b!5936570 () Bool)

(assert (=> b!5936570 (= e!3632878 e!3632876)))

(declare-fun c!1055498 () Bool)

(assert (=> b!5936570 (= c!1055498 ((_ is Cons!64124) (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))))

(declare-fun d!1860967 () Bool)

(declare-fun c!1055497 () Bool)

(assert (=> d!1860967 (= c!1055497 e!3632877)))

(declare-fun res!2486748 () Bool)

(assert (=> d!1860967 (=> (not res!2486748) (not e!3632877))))

(assert (=> d!1860967 (= res!2486748 ((_ is Cons!64124) (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))))

(assert (=> d!1860967 (= (derivationStepZipperUp!1159 (Context!10735 (Cons!64124 r!7292 Nil!64124)) (h!70574 s!2326)) e!3632878)))

(assert (= (and d!1860967 res!2486748) b!5936566))

(assert (= (and d!1860967 c!1055497) b!5936569))

(assert (= (and d!1860967 (not c!1055497)) b!5936570))

(assert (= (and b!5936570 c!1055498) b!5936567))

(assert (= (and b!5936570 (not c!1055498)) b!5936568))

(assert (= (or b!5936569 b!5936567) bm!471594))

(declare-fun m!6827236 () Bool)

(assert (=> b!5936566 m!6827236))

(declare-fun m!6827238 () Bool)

(assert (=> bm!471594 m!6827238))

(declare-fun m!6827240 () Bool)

(assert (=> b!5936569 m!6827240))

(assert (=> b!5936461 d!1860967))

(declare-fun d!1860973 () Bool)

(declare-fun e!3632931 () Bool)

(assert (=> d!1860973 e!3632931))

(declare-fun res!2486798 () Bool)

(assert (=> d!1860973 (=> res!2486798 e!3632931)))

(declare-fun e!3632930 () Bool)

(assert (=> d!1860973 (= res!2486798 e!3632930)))

(declare-fun res!2486800 () Bool)

(assert (=> d!1860973 (=> (not res!2486800) (not e!3632930))))

(declare-fun lt!2311355 () Option!15874)

(assert (=> d!1860973 (= res!2486800 (isDefined!12577 lt!2311355))))

(declare-fun e!3632927 () Option!15874)

(assert (=> d!1860973 (= lt!2311355 e!3632927)))

(declare-fun c!1055522 () Bool)

(declare-fun e!3632928 () Bool)

(assert (=> d!1860973 (= c!1055522 e!3632928)))

(declare-fun res!2486799 () Bool)

(assert (=> d!1860973 (=> (not res!2486799) (not e!3632928))))

(assert (=> d!1860973 (= res!2486799 (matchR!8166 (regOne!32478 r!7292) Nil!64126))))

(assert (=> d!1860973 (validRegex!7719 (regOne!32478 r!7292))))

(assert (=> d!1860973 (= (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) Nil!64126 s!2326 s!2326) lt!2311355)))

(declare-fun b!5936664 () Bool)

(assert (=> b!5936664 (= e!3632928 (matchR!8166 (regTwo!32478 r!7292) s!2326))))

(declare-fun b!5936665 () Bool)

(declare-fun e!3632929 () Option!15874)

(assert (=> b!5936665 (= e!3632929 None!15873)))

(declare-fun b!5936666 () Bool)

(assert (=> b!5936666 (= e!3632927 e!3632929)))

(declare-fun c!1055523 () Bool)

(assert (=> b!5936666 (= c!1055523 ((_ is Nil!64126) s!2326))))

(declare-fun b!5936667 () Bool)

(assert (=> b!5936667 (= e!3632927 (Some!15873 (tuple2!65925 Nil!64126 s!2326)))))

(declare-fun b!5936668 () Bool)

(declare-fun res!2486801 () Bool)

(assert (=> b!5936668 (=> (not res!2486801) (not e!3632930))))

(declare-fun get!22086 (Option!15874) tuple2!65924)

(assert (=> b!5936668 (= res!2486801 (matchR!8166 (regTwo!32478 r!7292) (_2!36265 (get!22086 lt!2311355))))))

(declare-fun b!5936669 () Bool)

(declare-fun ++!14079 (List!64250 List!64250) List!64250)

(assert (=> b!5936669 (= e!3632930 (= (++!14079 (_1!36265 (get!22086 lt!2311355)) (_2!36265 (get!22086 lt!2311355))) s!2326))))

(declare-fun b!5936670 () Bool)

(assert (=> b!5936670 (= e!3632931 (not (isDefined!12577 lt!2311355)))))

(declare-fun b!5936671 () Bool)

(declare-fun lt!2311354 () Unit!157237)

(declare-fun lt!2311356 () Unit!157237)

(assert (=> b!5936671 (= lt!2311354 lt!2311356)))

(assert (=> b!5936671 (= (++!14079 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (t!377653 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2174 (List!64250 C!32236 List!64250 List!64250) Unit!157237)

(assert (=> b!5936671 (= lt!2311356 (lemmaMoveElementToOtherListKeepsConcatEq!2174 Nil!64126 (h!70574 s!2326) (t!377653 s!2326) s!2326))))

(assert (=> b!5936671 (= e!3632929 (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (t!377653 s!2326) s!2326))))

(declare-fun b!5936672 () Bool)

(declare-fun res!2486802 () Bool)

(assert (=> b!5936672 (=> (not res!2486802) (not e!3632930))))

(assert (=> b!5936672 (= res!2486802 (matchR!8166 (regOne!32478 r!7292) (_1!36265 (get!22086 lt!2311355))))))

(assert (= (and d!1860973 res!2486799) b!5936664))

(assert (= (and d!1860973 c!1055522) b!5936667))

(assert (= (and d!1860973 (not c!1055522)) b!5936666))

(assert (= (and b!5936666 c!1055523) b!5936665))

(assert (= (and b!5936666 (not c!1055523)) b!5936671))

(assert (= (and d!1860973 res!2486800) b!5936672))

(assert (= (and b!5936672 res!2486802) b!5936668))

(assert (= (and b!5936668 res!2486801) b!5936669))

(assert (= (and d!1860973 (not res!2486798)) b!5936670))

(declare-fun m!6827274 () Bool)

(assert (=> b!5936670 m!6827274))

(declare-fun m!6827276 () Bool)

(assert (=> b!5936664 m!6827276))

(declare-fun m!6827278 () Bool)

(assert (=> b!5936669 m!6827278))

(declare-fun m!6827280 () Bool)

(assert (=> b!5936669 m!6827280))

(assert (=> d!1860973 m!6827274))

(declare-fun m!6827282 () Bool)

(assert (=> d!1860973 m!6827282))

(declare-fun m!6827284 () Bool)

(assert (=> d!1860973 m!6827284))

(assert (=> b!5936672 m!6827278))

(declare-fun m!6827286 () Bool)

(assert (=> b!5936672 m!6827286))

(assert (=> b!5936668 m!6827278))

(declare-fun m!6827288 () Bool)

(assert (=> b!5936668 m!6827288))

(declare-fun m!6827290 () Bool)

(assert (=> b!5936671 m!6827290))

(assert (=> b!5936671 m!6827290))

(declare-fun m!6827292 () Bool)

(assert (=> b!5936671 m!6827292))

(declare-fun m!6827294 () Bool)

(assert (=> b!5936671 m!6827294))

(assert (=> b!5936671 m!6827290))

(declare-fun m!6827296 () Bool)

(assert (=> b!5936671 m!6827296))

(assert (=> b!5936450 d!1860973))

(declare-fun d!1860987 () Bool)

(declare-fun choose!44742 (Int) Bool)

(assert (=> d!1860987 (= (Exists!3053 lambda!323765) (choose!44742 lambda!323765))))

(declare-fun bs!1404297 () Bool)

(assert (= bs!1404297 d!1860987))

(declare-fun m!6827304 () Bool)

(assert (=> bs!1404297 m!6827304))

(assert (=> b!5936450 d!1860987))

(declare-fun d!1860991 () Bool)

(assert (=> d!1860991 (= (Exists!3053 lambda!323764) (choose!44742 lambda!323764))))

(declare-fun bs!1404298 () Bool)

(assert (= bs!1404298 d!1860991))

(declare-fun m!6827306 () Bool)

(assert (=> bs!1404298 m!6827306))

(assert (=> b!5936450 d!1860991))

(declare-fun bs!1404300 () Bool)

(declare-fun d!1860993 () Bool)

(assert (= bs!1404300 (and d!1860993 b!5936450)))

(declare-fun lambda!323787 () Int)

(assert (=> bs!1404300 (= lambda!323787 lambda!323764)))

(assert (=> bs!1404300 (not (= lambda!323787 lambda!323765))))

(assert (=> d!1860993 true))

(assert (=> d!1860993 true))

(assert (=> d!1860993 true))

(assert (=> d!1860993 (= (isDefined!12577 (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) Nil!64126 s!2326 s!2326)) (Exists!3053 lambda!323787))))

(declare-fun lt!2311365 () Unit!157237)

(declare-fun choose!44743 (Regex!15983 Regex!15983 List!64250) Unit!157237)

(assert (=> d!1860993 (= lt!2311365 (choose!44743 (regOne!32478 r!7292) (regTwo!32478 r!7292) s!2326))))

(assert (=> d!1860993 (validRegex!7719 (regOne!32478 r!7292))))

(assert (=> d!1860993 (= (lemmaFindConcatSeparationEquivalentToExists!2052 (regOne!32478 r!7292) (regTwo!32478 r!7292) s!2326) lt!2311365)))

(declare-fun bs!1404301 () Bool)

(assert (= bs!1404301 d!1860993))

(declare-fun m!6827326 () Bool)

(assert (=> bs!1404301 m!6827326))

(assert (=> bs!1404301 m!6827284))

(assert (=> bs!1404301 m!6827188))

(assert (=> bs!1404301 m!6827190))

(declare-fun m!6827328 () Bool)

(assert (=> bs!1404301 m!6827328))

(assert (=> bs!1404301 m!6827188))

(assert (=> b!5936450 d!1860993))

(declare-fun bs!1404307 () Bool)

(declare-fun d!1861001 () Bool)

(assert (= bs!1404307 (and d!1861001 b!5936450)))

(declare-fun lambda!323798 () Int)

(assert (=> bs!1404307 (= lambda!323798 lambda!323764)))

(assert (=> bs!1404307 (not (= lambda!323798 lambda!323765))))

(declare-fun bs!1404308 () Bool)

(assert (= bs!1404308 (and d!1861001 d!1860993)))

(assert (=> bs!1404308 (= lambda!323798 lambda!323787)))

(assert (=> d!1861001 true))

(assert (=> d!1861001 true))

(assert (=> d!1861001 true))

(declare-fun lambda!323799 () Int)

(assert (=> bs!1404307 (not (= lambda!323799 lambda!323764))))

(assert (=> bs!1404307 (= lambda!323799 lambda!323765)))

(assert (=> bs!1404308 (not (= lambda!323799 lambda!323787))))

(declare-fun bs!1404309 () Bool)

(assert (= bs!1404309 d!1861001))

(assert (=> bs!1404309 (not (= lambda!323799 lambda!323798))))

(assert (=> d!1861001 true))

(assert (=> d!1861001 true))

(assert (=> d!1861001 true))

(assert (=> d!1861001 (= (Exists!3053 lambda!323798) (Exists!3053 lambda!323799))))

(declare-fun lt!2311374 () Unit!157237)

(declare-fun choose!44744 (Regex!15983 Regex!15983 List!64250) Unit!157237)

(assert (=> d!1861001 (= lt!2311374 (choose!44744 (regOne!32478 r!7292) (regTwo!32478 r!7292) s!2326))))

(assert (=> d!1861001 (validRegex!7719 (regOne!32478 r!7292))))

(assert (=> d!1861001 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1590 (regOne!32478 r!7292) (regTwo!32478 r!7292) s!2326) lt!2311374)))

(declare-fun m!6827354 () Bool)

(assert (=> bs!1404309 m!6827354))

(declare-fun m!6827356 () Bool)

(assert (=> bs!1404309 m!6827356))

(declare-fun m!6827358 () Bool)

(assert (=> bs!1404309 m!6827358))

(assert (=> bs!1404309 m!6827284))

(assert (=> b!5936450 d!1861001))

(declare-fun d!1861007 () Bool)

(declare-fun isEmpty!35996 (Option!15874) Bool)

(assert (=> d!1861007 (= (isDefined!12577 (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) Nil!64126 s!2326 s!2326)) (not (isEmpty!35996 (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) Nil!64126 s!2326 s!2326))))))

(declare-fun bs!1404310 () Bool)

(assert (= bs!1404310 d!1861007))

(assert (=> bs!1404310 m!6827188))

(declare-fun m!6827360 () Bool)

(assert (=> bs!1404310 m!6827360))

(assert (=> b!5936450 d!1861007))

(declare-fun b!5936809 () Bool)

(declare-fun e!3633017 () Bool)

(declare-fun call!471637 () Bool)

(assert (=> b!5936809 (= e!3633017 call!471637)))

(declare-fun b!5936810 () Bool)

(declare-fun e!3633016 () Bool)

(declare-fun e!3633013 () Bool)

(assert (=> b!5936810 (= e!3633016 e!3633013)))

(declare-fun res!2486851 () Bool)

(assert (=> b!5936810 (= res!2486851 (not (nullable!5978 (reg!16312 r!7292))))))

(assert (=> b!5936810 (=> (not res!2486851) (not e!3633013))))

(declare-fun b!5936811 () Bool)

(declare-fun e!3633018 () Bool)

(assert (=> b!5936811 (= e!3633016 e!3633018)))

(declare-fun c!1055568 () Bool)

(assert (=> b!5936811 (= c!1055568 ((_ is Union!15983) r!7292))))

(declare-fun b!5936812 () Bool)

(declare-fun call!471638 () Bool)

(assert (=> b!5936812 (= e!3633013 call!471638)))

(declare-fun bm!471632 () Bool)

(declare-fun call!471639 () Bool)

(assert (=> bm!471632 (= call!471639 (validRegex!7719 (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))))))

(declare-fun b!5936814 () Bool)

(declare-fun res!2486853 () Bool)

(declare-fun e!3633012 () Bool)

(assert (=> b!5936814 (=> (not res!2486853) (not e!3633012))))

(assert (=> b!5936814 (= res!2486853 call!471639)))

(assert (=> b!5936814 (= e!3633018 e!3633012)))

(declare-fun c!1055569 () Bool)

(declare-fun bm!471633 () Bool)

(assert (=> bm!471633 (= call!471638 (validRegex!7719 (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))))))

(declare-fun b!5936815 () Bool)

(assert (=> b!5936815 (= e!3633012 call!471637)))

(declare-fun bm!471634 () Bool)

(assert (=> bm!471634 (= call!471637 call!471638)))

(declare-fun b!5936816 () Bool)

(declare-fun res!2486852 () Bool)

(declare-fun e!3633014 () Bool)

(assert (=> b!5936816 (=> res!2486852 e!3633014)))

(assert (=> b!5936816 (= res!2486852 (not ((_ is Concat!24828) r!7292)))))

(assert (=> b!5936816 (= e!3633018 e!3633014)))

(declare-fun b!5936817 () Bool)

(assert (=> b!5936817 (= e!3633014 e!3633017)))

(declare-fun res!2486854 () Bool)

(assert (=> b!5936817 (=> (not res!2486854) (not e!3633017))))

(assert (=> b!5936817 (= res!2486854 call!471639)))

(declare-fun d!1861009 () Bool)

(declare-fun res!2486855 () Bool)

(declare-fun e!3633015 () Bool)

(assert (=> d!1861009 (=> res!2486855 e!3633015)))

(assert (=> d!1861009 (= res!2486855 ((_ is ElementMatch!15983) r!7292))))

(assert (=> d!1861009 (= (validRegex!7719 r!7292) e!3633015)))

(declare-fun b!5936813 () Bool)

(assert (=> b!5936813 (= e!3633015 e!3633016)))

(assert (=> b!5936813 (= c!1055569 ((_ is Star!15983) r!7292))))

(assert (= (and d!1861009 (not res!2486855)) b!5936813))

(assert (= (and b!5936813 c!1055569) b!5936810))

(assert (= (and b!5936813 (not c!1055569)) b!5936811))

(assert (= (and b!5936810 res!2486851) b!5936812))

(assert (= (and b!5936811 c!1055568) b!5936814))

(assert (= (and b!5936811 (not c!1055568)) b!5936816))

(assert (= (and b!5936814 res!2486853) b!5936815))

(assert (= (and b!5936816 (not res!2486852)) b!5936817))

(assert (= (and b!5936817 res!2486854) b!5936809))

(assert (= (or b!5936815 b!5936809) bm!471634))

(assert (= (or b!5936814 b!5936817) bm!471632))

(assert (= (or b!5936812 bm!471634) bm!471633))

(declare-fun m!6827390 () Bool)

(assert (=> b!5936810 m!6827390))

(declare-fun m!6827392 () Bool)

(assert (=> bm!471632 m!6827392))

(declare-fun m!6827394 () Bool)

(assert (=> bm!471633 m!6827394))

(assert (=> start!603276 d!1861009))

(declare-fun bs!1404317 () Bool)

(declare-fun d!1861017 () Bool)

(assert (= bs!1404317 (and d!1861017 b!5936462)))

(declare-fun lambda!323805 () Int)

(assert (=> bs!1404317 (= lambda!323805 lambda!323766)))

(assert (=> d!1861017 true))

(assert (=> d!1861017 (= (derivationStepZipper!1964 z!1189 (h!70574 s!2326)) (flatMap!1496 z!1189 lambda!323805))))

(declare-fun bs!1404318 () Bool)

(assert (= bs!1404318 d!1861017))

(declare-fun m!6827400 () Bool)

(assert (=> bs!1404318 m!6827400))

(assert (=> b!5936462 d!1861017))

(declare-fun d!1861021 () Bool)

(declare-fun choose!44745 ((InoxSet Context!10734) Int) (InoxSet Context!10734))

(assert (=> d!1861021 (= (flatMap!1496 z!1189 lambda!323766) (choose!44745 z!1189 lambda!323766))))

(declare-fun bs!1404319 () Bool)

(assert (= bs!1404319 d!1861021))

(declare-fun m!6827402 () Bool)

(assert (=> bs!1404319 m!6827402))

(assert (=> b!5936462 d!1861021))

(declare-fun b!5936824 () Bool)

(declare-fun e!3633022 () Bool)

(assert (=> b!5936824 (= e!3633022 (nullable!5978 (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5936825 () Bool)

(declare-fun e!3633021 () (InoxSet Context!10734))

(declare-fun call!471640 () (InoxSet Context!10734))

(assert (=> b!5936825 (= e!3633021 call!471640)))

(declare-fun bm!471635 () Bool)

(assert (=> bm!471635 (= call!471640 (derivationStepZipperDown!1233 (h!70572 (exprs!5867 (h!70573 zl!343))) (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))) (h!70574 s!2326)))))

(declare-fun b!5936826 () Bool)

(assert (=> b!5936826 (= e!3633021 ((as const (Array Context!10734 Bool)) false))))

(declare-fun e!3633023 () (InoxSet Context!10734))

(declare-fun b!5936827 () Bool)

(assert (=> b!5936827 (= e!3633023 ((_ map or) call!471640 (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))) (h!70574 s!2326))))))

(declare-fun b!5936828 () Bool)

(assert (=> b!5936828 (= e!3633023 e!3633021)))

(declare-fun c!1055573 () Bool)

(assert (=> b!5936828 (= c!1055573 ((_ is Cons!64124) (exprs!5867 (h!70573 zl!343))))))

(declare-fun d!1861023 () Bool)

(declare-fun c!1055572 () Bool)

(assert (=> d!1861023 (= c!1055572 e!3633022)))

(declare-fun res!2486860 () Bool)

(assert (=> d!1861023 (=> (not res!2486860) (not e!3633022))))

(assert (=> d!1861023 (= res!2486860 ((_ is Cons!64124) (exprs!5867 (h!70573 zl!343))))))

(assert (=> d!1861023 (= (derivationStepZipperUp!1159 (h!70573 zl!343) (h!70574 s!2326)) e!3633023)))

(assert (= (and d!1861023 res!2486860) b!5936824))

(assert (= (and d!1861023 c!1055572) b!5936827))

(assert (= (and d!1861023 (not c!1055572)) b!5936828))

(assert (= (and b!5936828 c!1055573) b!5936825))

(assert (= (and b!5936828 (not c!1055573)) b!5936826))

(assert (= (or b!5936827 b!5936825) bm!471635))

(declare-fun m!6827404 () Bool)

(assert (=> b!5936824 m!6827404))

(declare-fun m!6827406 () Bool)

(assert (=> bm!471635 m!6827406))

(declare-fun m!6827408 () Bool)

(assert (=> b!5936827 m!6827408))

(assert (=> b!5936462 d!1861023))

(declare-fun d!1861025 () Bool)

(declare-fun dynLambda!25080 (Int Context!10734) (InoxSet Context!10734))

(assert (=> d!1861025 (= (flatMap!1496 z!1189 lambda!323766) (dynLambda!25080 lambda!323766 (h!70573 zl!343)))))

(declare-fun lt!2311391 () Unit!157237)

(declare-fun choose!44746 ((InoxSet Context!10734) Context!10734 Int) Unit!157237)

(assert (=> d!1861025 (= lt!2311391 (choose!44746 z!1189 (h!70573 zl!343) lambda!323766))))

(assert (=> d!1861025 (= z!1189 (store ((as const (Array Context!10734 Bool)) false) (h!70573 zl!343) true))))

(assert (=> d!1861025 (= (lemmaFlatMapOnSingletonSet!1022 z!1189 (h!70573 zl!343) lambda!323766) lt!2311391)))

(declare-fun b_lambda!222991 () Bool)

(assert (=> (not b_lambda!222991) (not d!1861025)))

(declare-fun bs!1404320 () Bool)

(assert (= bs!1404320 d!1861025))

(assert (=> bs!1404320 m!6827136))

(declare-fun m!6827410 () Bool)

(assert (=> bs!1404320 m!6827410))

(declare-fun m!6827412 () Bool)

(assert (=> bs!1404320 m!6827412))

(declare-fun m!6827414 () Bool)

(assert (=> bs!1404320 m!6827414))

(assert (=> b!5936462 d!1861025))

(declare-fun bs!1404327 () Bool)

(declare-fun d!1861027 () Bool)

(assert (= bs!1404327 (and d!1861027 d!1860955)))

(declare-fun lambda!323814 () Int)

(assert (=> bs!1404327 (= lambda!323814 lambda!323769)))

(declare-fun b!5936875 () Bool)

(declare-fun e!3633057 () Regex!15983)

(assert (=> b!5936875 (= e!3633057 (Union!15983 (h!70572 (unfocusZipperList!1404 zl!343)) (generalisedUnion!1827 (t!377651 (unfocusZipperList!1404 zl!343)))))))

(declare-fun b!5936876 () Bool)

(declare-fun e!3633054 () Bool)

(assert (=> b!5936876 (= e!3633054 (isEmpty!35993 (t!377651 (unfocusZipperList!1404 zl!343))))))

(declare-fun b!5936877 () Bool)

(declare-fun e!3633058 () Bool)

(declare-fun lt!2311395 () Regex!15983)

(declare-fun isEmptyLang!1420 (Regex!15983) Bool)

(assert (=> b!5936877 (= e!3633058 (isEmptyLang!1420 lt!2311395))))

(declare-fun b!5936878 () Bool)

(declare-fun e!3633055 () Bool)

(declare-fun isUnion!850 (Regex!15983) Bool)

(assert (=> b!5936878 (= e!3633055 (isUnion!850 lt!2311395))))

(declare-fun b!5936880 () Bool)

(declare-fun e!3633059 () Regex!15983)

(assert (=> b!5936880 (= e!3633059 (h!70572 (unfocusZipperList!1404 zl!343)))))

(declare-fun b!5936881 () Bool)

(assert (=> b!5936881 (= e!3633057 EmptyLang!15983)))

(declare-fun b!5936882 () Bool)

(declare-fun head!12507 (List!64248) Regex!15983)

(assert (=> b!5936882 (= e!3633055 (= lt!2311395 (head!12507 (unfocusZipperList!1404 zl!343))))))

(declare-fun b!5936879 () Bool)

(assert (=> b!5936879 (= e!3633059 e!3633057)))

(declare-fun c!1055588 () Bool)

(assert (=> b!5936879 (= c!1055588 ((_ is Cons!64124) (unfocusZipperList!1404 zl!343)))))

(declare-fun e!3633056 () Bool)

(assert (=> d!1861027 e!3633056))

(declare-fun res!2486884 () Bool)

(assert (=> d!1861027 (=> (not res!2486884) (not e!3633056))))

(assert (=> d!1861027 (= res!2486884 (validRegex!7719 lt!2311395))))

(assert (=> d!1861027 (= lt!2311395 e!3633059)))

(declare-fun c!1055589 () Bool)

(assert (=> d!1861027 (= c!1055589 e!3633054)))

(declare-fun res!2486883 () Bool)

(assert (=> d!1861027 (=> (not res!2486883) (not e!3633054))))

(assert (=> d!1861027 (= res!2486883 ((_ is Cons!64124) (unfocusZipperList!1404 zl!343)))))

(assert (=> d!1861027 (forall!15066 (unfocusZipperList!1404 zl!343) lambda!323814)))

(assert (=> d!1861027 (= (generalisedUnion!1827 (unfocusZipperList!1404 zl!343)) lt!2311395)))

(declare-fun b!5936883 () Bool)

(assert (=> b!5936883 (= e!3633056 e!3633058)))

(declare-fun c!1055586 () Bool)

(assert (=> b!5936883 (= c!1055586 (isEmpty!35993 (unfocusZipperList!1404 zl!343)))))

(declare-fun b!5936884 () Bool)

(assert (=> b!5936884 (= e!3633058 e!3633055)))

(declare-fun c!1055587 () Bool)

(declare-fun tail!11592 (List!64248) List!64248)

(assert (=> b!5936884 (= c!1055587 (isEmpty!35993 (tail!11592 (unfocusZipperList!1404 zl!343))))))

(assert (= (and d!1861027 res!2486883) b!5936876))

(assert (= (and d!1861027 c!1055589) b!5936880))

(assert (= (and d!1861027 (not c!1055589)) b!5936879))

(assert (= (and b!5936879 c!1055588) b!5936875))

(assert (= (and b!5936879 (not c!1055588)) b!5936881))

(assert (= (and d!1861027 res!2486884) b!5936883))

(assert (= (and b!5936883 c!1055586) b!5936877))

(assert (= (and b!5936883 (not c!1055586)) b!5936884))

(assert (= (and b!5936884 c!1055587) b!5936882))

(assert (= (and b!5936884 (not c!1055587)) b!5936878))

(assert (=> b!5936883 m!6827198))

(declare-fun m!6827424 () Bool)

(assert (=> b!5936883 m!6827424))

(declare-fun m!6827426 () Bool)

(assert (=> b!5936878 m!6827426))

(declare-fun m!6827428 () Bool)

(assert (=> b!5936876 m!6827428))

(assert (=> b!5936882 m!6827198))

(declare-fun m!6827430 () Bool)

(assert (=> b!5936882 m!6827430))

(declare-fun m!6827432 () Bool)

(assert (=> d!1861027 m!6827432))

(assert (=> d!1861027 m!6827198))

(declare-fun m!6827434 () Bool)

(assert (=> d!1861027 m!6827434))

(assert (=> b!5936884 m!6827198))

(declare-fun m!6827436 () Bool)

(assert (=> b!5936884 m!6827436))

(assert (=> b!5936884 m!6827436))

(declare-fun m!6827438 () Bool)

(assert (=> b!5936884 m!6827438))

(declare-fun m!6827440 () Bool)

(assert (=> b!5936875 m!6827440))

(declare-fun m!6827442 () Bool)

(assert (=> b!5936877 m!6827442))

(assert (=> b!5936464 d!1861027))

(declare-fun bs!1404336 () Bool)

(declare-fun d!1861033 () Bool)

(assert (= bs!1404336 (and d!1861033 d!1860955)))

(declare-fun lambda!323818 () Int)

(assert (=> bs!1404336 (= lambda!323818 lambda!323769)))

(declare-fun bs!1404337 () Bool)

(assert (= bs!1404337 (and d!1861033 d!1861027)))

(assert (=> bs!1404337 (= lambda!323818 lambda!323814)))

(declare-fun lt!2311399 () List!64248)

(assert (=> d!1861033 (forall!15066 lt!2311399 lambda!323818)))

(declare-fun e!3633078 () List!64248)

(assert (=> d!1861033 (= lt!2311399 e!3633078)))

(declare-fun c!1055601 () Bool)

(assert (=> d!1861033 (= c!1055601 ((_ is Cons!64125) zl!343))))

(assert (=> d!1861033 (= (unfocusZipperList!1404 zl!343) lt!2311399)))

(declare-fun b!5936914 () Bool)

(assert (=> b!5936914 (= e!3633078 (Cons!64124 (generalisedConcat!1580 (exprs!5867 (h!70573 zl!343))) (unfocusZipperList!1404 (t!377652 zl!343))))))

(declare-fun b!5936915 () Bool)

(assert (=> b!5936915 (= e!3633078 Nil!64124)))

(assert (= (and d!1861033 c!1055601) b!5936914))

(assert (= (and d!1861033 (not c!1055601)) b!5936915))

(declare-fun m!6827474 () Bool)

(assert (=> d!1861033 m!6827474))

(assert (=> b!5936914 m!6827176))

(declare-fun m!6827478 () Bool)

(assert (=> b!5936914 m!6827478))

(assert (=> b!5936464 d!1861033))

(declare-fun d!1861049 () Bool)

(declare-fun e!3633084 () Bool)

(assert (=> d!1861049 e!3633084))

(declare-fun res!2486895 () Bool)

(assert (=> d!1861049 (=> (not res!2486895) (not e!3633084))))

(declare-fun lt!2311403 () List!64249)

(declare-fun noDuplicate!1840 (List!64249) Bool)

(assert (=> d!1861049 (= res!2486895 (noDuplicate!1840 lt!2311403))))

(declare-fun choose!44749 ((InoxSet Context!10734)) List!64249)

(assert (=> d!1861049 (= lt!2311403 (choose!44749 z!1189))))

(assert (=> d!1861049 (= (toList!9767 z!1189) lt!2311403)))

(declare-fun b!5936923 () Bool)

(declare-fun content!11823 (List!64249) (InoxSet Context!10734))

(assert (=> b!5936923 (= e!3633084 (= (content!11823 lt!2311403) z!1189))))

(assert (= (and d!1861049 res!2486895) b!5936923))

(declare-fun m!6827490 () Bool)

(assert (=> d!1861049 m!6827490))

(declare-fun m!6827492 () Bool)

(assert (=> d!1861049 m!6827492))

(declare-fun m!6827494 () Bool)

(assert (=> b!5936923 m!6827494))

(assert (=> b!5936453 d!1861049))

(declare-fun bs!1404345 () Bool)

(declare-fun d!1861057 () Bool)

(assert (= bs!1404345 (and d!1861057 d!1860955)))

(declare-fun lambda!323820 () Int)

(assert (=> bs!1404345 (= lambda!323820 lambda!323769)))

(declare-fun bs!1404346 () Bool)

(assert (= bs!1404346 (and d!1861057 d!1861027)))

(assert (=> bs!1404346 (= lambda!323820 lambda!323814)))

(declare-fun bs!1404347 () Bool)

(assert (= bs!1404347 (and d!1861057 d!1861033)))

(assert (=> bs!1404347 (= lambda!323820 lambda!323818)))

(assert (=> d!1861057 (= (inv!83204 (h!70573 zl!343)) (forall!15066 (exprs!5867 (h!70573 zl!343)) lambda!323820))))

(declare-fun bs!1404348 () Bool)

(assert (= bs!1404348 d!1861057))

(declare-fun m!6827496 () Bool)

(assert (=> bs!1404348 m!6827496))

(assert (=> b!5936445 d!1861057))

(declare-fun d!1861059 () Bool)

(assert (=> d!1861059 (= (flatMap!1496 lt!2311332 lambda!323766) (choose!44745 lt!2311332 lambda!323766))))

(declare-fun bs!1404349 () Bool)

(assert (= bs!1404349 d!1861059))

(declare-fun m!6827498 () Bool)

(assert (=> bs!1404349 m!6827498))

(assert (=> b!5936454 d!1861059))

(declare-fun d!1861061 () Bool)

(assert (=> d!1861061 (= (flatMap!1496 lt!2311333 lambda!323766) (choose!44745 lt!2311333 lambda!323766))))

(declare-fun bs!1404350 () Bool)

(assert (= bs!1404350 d!1861061))

(declare-fun m!6827500 () Bool)

(assert (=> bs!1404350 m!6827500))

(assert (=> b!5936454 d!1861061))

(declare-fun d!1861063 () Bool)

(assert (=> d!1861063 (= (flatMap!1496 lt!2311333 lambda!323766) (dynLambda!25080 lambda!323766 lt!2311327))))

(declare-fun lt!2311407 () Unit!157237)

(assert (=> d!1861063 (= lt!2311407 (choose!44746 lt!2311333 lt!2311327 lambda!323766))))

(assert (=> d!1861063 (= lt!2311333 (store ((as const (Array Context!10734 Bool)) false) lt!2311327 true))))

(assert (=> d!1861063 (= (lemmaFlatMapOnSingletonSet!1022 lt!2311333 lt!2311327 lambda!323766) lt!2311407)))

(declare-fun b_lambda!222997 () Bool)

(assert (=> (not b_lambda!222997) (not d!1861063)))

(declare-fun bs!1404351 () Bool)

(assert (= bs!1404351 d!1861063))

(assert (=> bs!1404351 m!6827170))

(declare-fun m!6827508 () Bool)

(assert (=> bs!1404351 m!6827508))

(declare-fun m!6827510 () Bool)

(assert (=> bs!1404351 m!6827510))

(assert (=> bs!1404351 m!6827172))

(assert (=> b!5936454 d!1861063))

(declare-fun bs!1404352 () Bool)

(declare-fun d!1861067 () Bool)

(assert (= bs!1404352 (and d!1861067 d!1860955)))

(declare-fun lambda!323821 () Int)

(assert (=> bs!1404352 (= lambda!323821 lambda!323769)))

(declare-fun bs!1404353 () Bool)

(assert (= bs!1404353 (and d!1861067 d!1861027)))

(assert (=> bs!1404353 (= lambda!323821 lambda!323814)))

(declare-fun bs!1404354 () Bool)

(assert (= bs!1404354 (and d!1861067 d!1861033)))

(assert (=> bs!1404354 (= lambda!323821 lambda!323818)))

(declare-fun bs!1404355 () Bool)

(assert (= bs!1404355 (and d!1861067 d!1861057)))

(assert (=> bs!1404355 (= lambda!323821 lambda!323820)))

(assert (=> d!1861067 (= (inv!83204 lt!2311329) (forall!15066 (exprs!5867 lt!2311329) lambda!323821))))

(declare-fun bs!1404356 () Bool)

(assert (= bs!1404356 d!1861067))

(declare-fun m!6827512 () Bool)

(assert (=> bs!1404356 m!6827512))

(assert (=> b!5936454 d!1861067))

(declare-fun b!5936935 () Bool)

(declare-fun c!1055607 () Bool)

(assert (=> b!5936935 (= c!1055607 ((_ is Star!15983) (regOne!32478 r!7292)))))

(declare-fun e!3633092 () (InoxSet Context!10734))

(declare-fun e!3633091 () (InoxSet Context!10734))

(assert (=> b!5936935 (= e!3633092 e!3633091)))

(declare-fun bm!471653 () Bool)

(declare-fun call!471663 () (InoxSet Context!10734))

(declare-fun call!471661 () (InoxSet Context!10734))

(assert (=> bm!471653 (= call!471663 call!471661)))

(declare-fun b!5936936 () Bool)

(assert (=> b!5936936 (= e!3633091 call!471663)))

(declare-fun bm!471654 () Bool)

(declare-fun call!471658 () List!64248)

(declare-fun call!471660 () List!64248)

(assert (=> bm!471654 (= call!471658 call!471660)))

(declare-fun b!5936937 () Bool)

(declare-fun c!1055604 () Bool)

(declare-fun e!3633094 () Bool)

(assert (=> b!5936937 (= c!1055604 e!3633094)))

(declare-fun res!2486899 () Bool)

(assert (=> b!5936937 (=> (not res!2486899) (not e!3633094))))

(assert (=> b!5936937 (= res!2486899 ((_ is Concat!24828) (regOne!32478 r!7292)))))

(declare-fun e!3633095 () (InoxSet Context!10734))

(declare-fun e!3633090 () (InoxSet Context!10734))

(assert (=> b!5936937 (= e!3633095 e!3633090)))

(declare-fun bm!471655 () Bool)

(declare-fun call!471659 () (InoxSet Context!10734))

(assert (=> bm!471655 (= call!471661 call!471659)))

(declare-fun d!1861069 () Bool)

(declare-fun c!1055606 () Bool)

(assert (=> d!1861069 (= c!1055606 (and ((_ is ElementMatch!15983) (regOne!32478 r!7292)) (= (c!1055457 (regOne!32478 r!7292)) (h!70574 s!2326))))))

(declare-fun e!3633093 () (InoxSet Context!10734))

(assert (=> d!1861069 (= (derivationStepZipperDown!1233 (regOne!32478 r!7292) lt!2311327 (h!70574 s!2326)) e!3633093)))

(declare-fun c!1055608 () Bool)

(declare-fun bm!471656 () Bool)

(declare-fun c!1055605 () Bool)

(assert (=> bm!471656 (= call!471659 (derivationStepZipperDown!1233 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292))))) (ite (or c!1055605 c!1055604) lt!2311327 (Context!10735 call!471658)) (h!70574 s!2326)))))

(declare-fun call!471662 () (InoxSet Context!10734))

(declare-fun bm!471657 () Bool)

(assert (=> bm!471657 (= call!471662 (derivationStepZipperDown!1233 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292))) (ite c!1055605 lt!2311327 (Context!10735 call!471660)) (h!70574 s!2326)))))

(declare-fun b!5936938 () Bool)

(assert (=> b!5936938 (= e!3633092 call!471663)))

(declare-fun b!5936939 () Bool)

(assert (=> b!5936939 (= e!3633090 e!3633092)))

(assert (=> b!5936939 (= c!1055608 ((_ is Concat!24828) (regOne!32478 r!7292)))))

(declare-fun b!5936942 () Bool)

(assert (=> b!5936942 (= e!3633095 ((_ map or) call!471659 call!471662))))

(declare-fun b!5936943 () Bool)

(assert (=> b!5936943 (= e!3633091 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5936944 () Bool)

(assert (=> b!5936944 (= e!3633093 (store ((as const (Array Context!10734 Bool)) false) lt!2311327 true))))

(declare-fun b!5936945 () Bool)

(assert (=> b!5936945 (= e!3633094 (nullable!5978 (regOne!32478 (regOne!32478 r!7292))))))

(declare-fun b!5936946 () Bool)

(assert (=> b!5936946 (= e!3633093 e!3633095)))

(assert (=> b!5936946 (= c!1055605 ((_ is Union!15983) (regOne!32478 r!7292)))))

(declare-fun bm!471658 () Bool)

(assert (=> bm!471658 (= call!471660 ($colon$colon!1870 (exprs!5867 lt!2311327) (ite (or c!1055604 c!1055608) (regTwo!32478 (regOne!32478 r!7292)) (regOne!32478 r!7292))))))

(declare-fun b!5936947 () Bool)

(assert (=> b!5936947 (= e!3633090 ((_ map or) call!471662 call!471661))))

(assert (= (and d!1861069 c!1055606) b!5936944))

(assert (= (and d!1861069 (not c!1055606)) b!5936946))

(assert (= (and b!5936946 c!1055605) b!5936942))

(assert (= (and b!5936946 (not c!1055605)) b!5936937))

(assert (= (and b!5936937 res!2486899) b!5936945))

(assert (= (and b!5936937 c!1055604) b!5936947))

(assert (= (and b!5936937 (not c!1055604)) b!5936939))

(assert (= (and b!5936939 c!1055608) b!5936938))

(assert (= (and b!5936939 (not c!1055608)) b!5936935))

(assert (= (and b!5936935 c!1055607) b!5936936))

(assert (= (and b!5936935 (not c!1055607)) b!5936943))

(assert (= (or b!5936938 b!5936936) bm!471654))

(assert (= (or b!5936938 b!5936936) bm!471653))

(assert (= (or b!5936947 bm!471654) bm!471658))

(assert (= (or b!5936947 bm!471653) bm!471655))

(assert (= (or b!5936942 b!5936947) bm!471657))

(assert (= (or b!5936942 bm!471655) bm!471656))

(declare-fun m!6827514 () Bool)

(assert (=> bm!471657 m!6827514))

(assert (=> b!5936944 m!6827172))

(declare-fun m!6827516 () Bool)

(assert (=> b!5936945 m!6827516))

(declare-fun m!6827518 () Bool)

(assert (=> bm!471656 m!6827518))

(declare-fun m!6827520 () Bool)

(assert (=> bm!471658 m!6827520))

(assert (=> b!5936454 d!1861069))

(declare-fun b!5936957 () Bool)

(declare-fun e!3633101 () Bool)

(assert (=> b!5936957 (= e!3633101 (nullable!5978 (h!70572 (exprs!5867 lt!2311326))))))

(declare-fun b!5936958 () Bool)

(declare-fun e!3633100 () (InoxSet Context!10734))

(declare-fun call!471664 () (InoxSet Context!10734))

(assert (=> b!5936958 (= e!3633100 call!471664)))

(declare-fun bm!471659 () Bool)

(assert (=> bm!471659 (= call!471664 (derivationStepZipperDown!1233 (h!70572 (exprs!5867 lt!2311326)) (Context!10735 (t!377651 (exprs!5867 lt!2311326))) (h!70574 s!2326)))))

(declare-fun b!5936959 () Bool)

(assert (=> b!5936959 (= e!3633100 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5936960 () Bool)

(declare-fun e!3633102 () (InoxSet Context!10734))

(assert (=> b!5936960 (= e!3633102 ((_ map or) call!471664 (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 lt!2311326))) (h!70574 s!2326))))))

(declare-fun b!5936961 () Bool)

(assert (=> b!5936961 (= e!3633102 e!3633100)))

(declare-fun c!1055610 () Bool)

(assert (=> b!5936961 (= c!1055610 ((_ is Cons!64124) (exprs!5867 lt!2311326)))))

(declare-fun d!1861071 () Bool)

(declare-fun c!1055609 () Bool)

(assert (=> d!1861071 (= c!1055609 e!3633101)))

(declare-fun res!2486900 () Bool)

(assert (=> d!1861071 (=> (not res!2486900) (not e!3633101))))

(assert (=> d!1861071 (= res!2486900 ((_ is Cons!64124) (exprs!5867 lt!2311326)))))

(assert (=> d!1861071 (= (derivationStepZipperUp!1159 lt!2311326 (h!70574 s!2326)) e!3633102)))

(assert (= (and d!1861071 res!2486900) b!5936957))

(assert (= (and d!1861071 c!1055609) b!5936960))

(assert (= (and d!1861071 (not c!1055609)) b!5936961))

(assert (= (and b!5936961 c!1055610) b!5936958))

(assert (= (and b!5936961 (not c!1055610)) b!5936959))

(assert (= (or b!5936960 b!5936958) bm!471659))

(declare-fun m!6827522 () Bool)

(assert (=> b!5936957 m!6827522))

(declare-fun m!6827524 () Bool)

(assert (=> bm!471659 m!6827524))

(declare-fun m!6827526 () Bool)

(assert (=> b!5936960 m!6827526))

(assert (=> b!5936454 d!1861071))

(declare-fun b!5936972 () Bool)

(declare-fun e!3633106 () Bool)

(assert (=> b!5936972 (= e!3633106 (nullable!5978 (h!70572 (exprs!5867 lt!2311327))))))

(declare-fun b!5936973 () Bool)

(declare-fun e!3633105 () (InoxSet Context!10734))

(declare-fun call!471665 () (InoxSet Context!10734))

(assert (=> b!5936973 (= e!3633105 call!471665)))

(declare-fun bm!471660 () Bool)

(assert (=> bm!471660 (= call!471665 (derivationStepZipperDown!1233 (h!70572 (exprs!5867 lt!2311327)) (Context!10735 (t!377651 (exprs!5867 lt!2311327))) (h!70574 s!2326)))))

(declare-fun b!5936974 () Bool)

(assert (=> b!5936974 (= e!3633105 ((as const (Array Context!10734 Bool)) false))))

(declare-fun e!3633107 () (InoxSet Context!10734))

(declare-fun b!5936975 () Bool)

(assert (=> b!5936975 (= e!3633107 ((_ map or) call!471665 (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 lt!2311327))) (h!70574 s!2326))))))

(declare-fun b!5936976 () Bool)

(assert (=> b!5936976 (= e!3633107 e!3633105)))

(declare-fun c!1055612 () Bool)

(assert (=> b!5936976 (= c!1055612 ((_ is Cons!64124) (exprs!5867 lt!2311327)))))

(declare-fun d!1861073 () Bool)

(declare-fun c!1055611 () Bool)

(assert (=> d!1861073 (= c!1055611 e!3633106)))

(declare-fun res!2486901 () Bool)

(assert (=> d!1861073 (=> (not res!2486901) (not e!3633106))))

(assert (=> d!1861073 (= res!2486901 ((_ is Cons!64124) (exprs!5867 lt!2311327)))))

(assert (=> d!1861073 (= (derivationStepZipperUp!1159 lt!2311327 (h!70574 s!2326)) e!3633107)))

(assert (= (and d!1861073 res!2486901) b!5936972))

(assert (= (and d!1861073 c!1055611) b!5936975))

(assert (= (and d!1861073 (not c!1055611)) b!5936976))

(assert (= (and b!5936976 c!1055612) b!5936973))

(assert (= (and b!5936976 (not c!1055612)) b!5936974))

(assert (= (or b!5936975 b!5936973) bm!471660))

(declare-fun m!6827528 () Bool)

(assert (=> b!5936972 m!6827528))

(declare-fun m!6827530 () Bool)

(assert (=> bm!471660 m!6827530))

(declare-fun m!6827532 () Bool)

(assert (=> b!5936975 m!6827532))

(assert (=> b!5936454 d!1861073))

(declare-fun d!1861075 () Bool)

(assert (=> d!1861075 (= (flatMap!1496 lt!2311332 lambda!323766) (dynLambda!25080 lambda!323766 lt!2311326))))

(declare-fun lt!2311408 () Unit!157237)

(assert (=> d!1861075 (= lt!2311408 (choose!44746 lt!2311332 lt!2311326 lambda!323766))))

(assert (=> d!1861075 (= lt!2311332 (store ((as const (Array Context!10734 Bool)) false) lt!2311326 true))))

(assert (=> d!1861075 (= (lemmaFlatMapOnSingletonSet!1022 lt!2311332 lt!2311326 lambda!323766) lt!2311408)))

(declare-fun b_lambda!222999 () Bool)

(assert (=> (not b_lambda!222999) (not d!1861075)))

(declare-fun bs!1404357 () Bool)

(assert (= bs!1404357 d!1861075))

(assert (=> bs!1404357 m!6827162))

(declare-fun m!6827534 () Bool)

(assert (=> bs!1404357 m!6827534))

(declare-fun m!6827536 () Bool)

(assert (=> bs!1404357 m!6827536))

(assert (=> bs!1404357 m!6827160))

(assert (=> b!5936454 d!1861075))

(declare-fun d!1861077 () Bool)

(declare-fun lt!2311411 () Regex!15983)

(assert (=> d!1861077 (validRegex!7719 lt!2311411)))

(assert (=> d!1861077 (= lt!2311411 (generalisedUnion!1827 (unfocusZipperList!1404 zl!343)))))

(assert (=> d!1861077 (= (unfocusZipper!1725 zl!343) lt!2311411)))

(declare-fun bs!1404359 () Bool)

(assert (= bs!1404359 d!1861077))

(declare-fun m!6827542 () Bool)

(assert (=> bs!1404359 m!6827542))

(assert (=> bs!1404359 m!6827198))

(assert (=> bs!1404359 m!6827198))

(assert (=> bs!1404359 m!6827200))

(assert (=> b!5936444 d!1861077))

(declare-fun bs!1404362 () Bool)

(declare-fun b!5937038 () Bool)

(assert (= bs!1404362 (and b!5937038 d!1860993)))

(declare-fun lambda!323826 () Int)

(assert (=> bs!1404362 (not (= lambda!323826 lambda!323787))))

(declare-fun bs!1404363 () Bool)

(assert (= bs!1404363 (and b!5937038 d!1861001)))

(assert (=> bs!1404363 (not (= lambda!323826 lambda!323799))))

(assert (=> bs!1404363 (not (= lambda!323826 lambda!323798))))

(declare-fun bs!1404364 () Bool)

(assert (= bs!1404364 (and b!5937038 b!5936450)))

(assert (=> bs!1404364 (not (= lambda!323826 lambda!323765))))

(assert (=> bs!1404364 (not (= lambda!323826 lambda!323764))))

(assert (=> b!5937038 true))

(assert (=> b!5937038 true))

(declare-fun bs!1404365 () Bool)

(declare-fun b!5937039 () Bool)

(assert (= bs!1404365 (and b!5937039 b!5937038)))

(declare-fun lambda!323827 () Int)

(assert (=> bs!1404365 (not (= lambda!323827 lambda!323826))))

(declare-fun bs!1404366 () Bool)

(assert (= bs!1404366 (and b!5937039 d!1860993)))

(assert (=> bs!1404366 (not (= lambda!323827 lambda!323787))))

(declare-fun bs!1404367 () Bool)

(assert (= bs!1404367 (and b!5937039 d!1861001)))

(assert (=> bs!1404367 (= lambda!323827 lambda!323799)))

(assert (=> bs!1404367 (not (= lambda!323827 lambda!323798))))

(declare-fun bs!1404368 () Bool)

(assert (= bs!1404368 (and b!5937039 b!5936450)))

(assert (=> bs!1404368 (= lambda!323827 lambda!323765)))

(assert (=> bs!1404368 (not (= lambda!323827 lambda!323764))))

(assert (=> b!5937039 true))

(assert (=> b!5937039 true))

(declare-fun bm!471665 () Bool)

(declare-fun call!471671 () Bool)

(declare-fun isEmpty!35998 (List!64250) Bool)

(assert (=> bm!471665 (= call!471671 (isEmpty!35998 s!2326))))

(declare-fun b!5937034 () Bool)

(declare-fun e!3633141 () Bool)

(assert (=> b!5937034 (= e!3633141 (matchRSpec!3084 (regTwo!32479 r!7292) s!2326))))

(declare-fun b!5937035 () Bool)

(declare-fun e!3633146 () Bool)

(assert (=> b!5937035 (= e!3633146 e!3633141)))

(declare-fun res!2486920 () Bool)

(assert (=> b!5937035 (= res!2486920 (matchRSpec!3084 (regOne!32479 r!7292) s!2326))))

(assert (=> b!5937035 (=> res!2486920 e!3633141)))

(declare-fun b!5937036 () Bool)

(declare-fun c!1055622 () Bool)

(assert (=> b!5937036 (= c!1055622 ((_ is Union!15983) r!7292))))

(declare-fun e!3633145 () Bool)

(assert (=> b!5937036 (= e!3633145 e!3633146)))

(declare-fun c!1055621 () Bool)

(declare-fun call!471670 () Bool)

(declare-fun bm!471666 () Bool)

(assert (=> bm!471666 (= call!471670 (Exists!3053 (ite c!1055621 lambda!323826 lambda!323827)))))

(declare-fun b!5937037 () Bool)

(declare-fun e!3633142 () Bool)

(assert (=> b!5937037 (= e!3633146 e!3633142)))

(assert (=> b!5937037 (= c!1055621 ((_ is Star!15983) r!7292))))

(declare-fun e!3633147 () Bool)

(assert (=> b!5937038 (= e!3633147 call!471670)))

(assert (=> b!5937039 (= e!3633142 call!471670)))

(declare-fun d!1861083 () Bool)

(declare-fun c!1055624 () Bool)

(assert (=> d!1861083 (= c!1055624 ((_ is EmptyExpr!15983) r!7292))))

(declare-fun e!3633143 () Bool)

(assert (=> d!1861083 (= (matchRSpec!3084 r!7292 s!2326) e!3633143)))

(declare-fun b!5937040 () Bool)

(assert (=> b!5937040 (= e!3633145 (= s!2326 (Cons!64126 (c!1055457 r!7292) Nil!64126)))))

(declare-fun b!5937041 () Bool)

(declare-fun c!1055623 () Bool)

(assert (=> b!5937041 (= c!1055623 ((_ is ElementMatch!15983) r!7292))))

(declare-fun e!3633144 () Bool)

(assert (=> b!5937041 (= e!3633144 e!3633145)))

(declare-fun b!5937042 () Bool)

(assert (=> b!5937042 (= e!3633143 call!471671)))

(declare-fun b!5937043 () Bool)

(assert (=> b!5937043 (= e!3633143 e!3633144)))

(declare-fun res!2486918 () Bool)

(assert (=> b!5937043 (= res!2486918 (not ((_ is EmptyLang!15983) r!7292)))))

(assert (=> b!5937043 (=> (not res!2486918) (not e!3633144))))

(declare-fun b!5937044 () Bool)

(declare-fun res!2486919 () Bool)

(assert (=> b!5937044 (=> res!2486919 e!3633147)))

(assert (=> b!5937044 (= res!2486919 call!471671)))

(assert (=> b!5937044 (= e!3633142 e!3633147)))

(assert (= (and d!1861083 c!1055624) b!5937042))

(assert (= (and d!1861083 (not c!1055624)) b!5937043))

(assert (= (and b!5937043 res!2486918) b!5937041))

(assert (= (and b!5937041 c!1055623) b!5937040))

(assert (= (and b!5937041 (not c!1055623)) b!5937036))

(assert (= (and b!5937036 c!1055622) b!5937035))

(assert (= (and b!5937036 (not c!1055622)) b!5937037))

(assert (= (and b!5937035 (not res!2486920)) b!5937034))

(assert (= (and b!5937037 c!1055621) b!5937044))

(assert (= (and b!5937037 (not c!1055621)) b!5937039))

(assert (= (and b!5937044 (not res!2486919)) b!5937038))

(assert (= (or b!5937038 b!5937039) bm!471666))

(assert (= (or b!5937042 b!5937044) bm!471665))

(declare-fun m!6827544 () Bool)

(assert (=> bm!471665 m!6827544))

(declare-fun m!6827546 () Bool)

(assert (=> b!5937034 m!6827546))

(declare-fun m!6827548 () Bool)

(assert (=> b!5937035 m!6827548))

(declare-fun m!6827550 () Bool)

(assert (=> bm!471666 m!6827550))

(assert (=> b!5936456 d!1861083))

(declare-fun bm!471669 () Bool)

(declare-fun call!471674 () Bool)

(assert (=> bm!471669 (= call!471674 (isEmpty!35998 s!2326))))

(declare-fun b!5937073 () Bool)

(declare-fun res!2486941 () Bool)

(declare-fun e!3633162 () Bool)

(assert (=> b!5937073 (=> res!2486941 e!3633162)))

(declare-fun tail!11593 (List!64250) List!64250)

(assert (=> b!5937073 (= res!2486941 (not (isEmpty!35998 (tail!11593 s!2326))))))

(declare-fun b!5937074 () Bool)

(declare-fun e!3633166 () Bool)

(assert (=> b!5937074 (= e!3633166 (nullable!5978 r!7292))))

(declare-fun b!5937075 () Bool)

(declare-fun e!3633167 () Bool)

(declare-fun e!3633164 () Bool)

(assert (=> b!5937075 (= e!3633167 e!3633164)))

(declare-fun c!1055633 () Bool)

(assert (=> b!5937075 (= c!1055633 ((_ is EmptyLang!15983) r!7292))))

(declare-fun b!5937076 () Bool)

(declare-fun e!3633163 () Bool)

(declare-fun e!3633165 () Bool)

(assert (=> b!5937076 (= e!3633163 e!3633165)))

(declare-fun res!2486939 () Bool)

(assert (=> b!5937076 (=> (not res!2486939) (not e!3633165))))

(declare-fun lt!2311414 () Bool)

(assert (=> b!5937076 (= res!2486939 (not lt!2311414))))

(declare-fun b!5937077 () Bool)

(declare-fun res!2486938 () Bool)

(declare-fun e!3633168 () Bool)

(assert (=> b!5937077 (=> (not res!2486938) (not e!3633168))))

(assert (=> b!5937077 (= res!2486938 (isEmpty!35998 (tail!11593 s!2326)))))

(declare-fun b!5937078 () Bool)

(assert (=> b!5937078 (= e!3633167 (= lt!2311414 call!471674))))

(declare-fun b!5937079 () Bool)

(declare-fun res!2486943 () Bool)

(assert (=> b!5937079 (=> (not res!2486943) (not e!3633168))))

(assert (=> b!5937079 (= res!2486943 (not call!471674))))

(declare-fun b!5937080 () Bool)

(assert (=> b!5937080 (= e!3633164 (not lt!2311414))))

(declare-fun b!5937081 () Bool)

(declare-fun res!2486942 () Bool)

(assert (=> b!5937081 (=> res!2486942 e!3633163)))

(assert (=> b!5937081 (= res!2486942 e!3633168)))

(declare-fun res!2486944 () Bool)

(assert (=> b!5937081 (=> (not res!2486944) (not e!3633168))))

(assert (=> b!5937081 (= res!2486944 lt!2311414)))

(declare-fun b!5937082 () Bool)

(declare-fun head!12508 (List!64250) C!32236)

(assert (=> b!5937082 (= e!3633168 (= (head!12508 s!2326) (c!1055457 r!7292)))))

(declare-fun b!5937083 () Bool)

(assert (=> b!5937083 (= e!3633162 (not (= (head!12508 s!2326) (c!1055457 r!7292))))))

(declare-fun b!5937084 () Bool)

(assert (=> b!5937084 (= e!3633165 e!3633162)))

(declare-fun res!2486937 () Bool)

(assert (=> b!5937084 (=> res!2486937 e!3633162)))

(assert (=> b!5937084 (= res!2486937 call!471674)))

(declare-fun d!1861087 () Bool)

(assert (=> d!1861087 e!3633167))

(declare-fun c!1055631 () Bool)

(assert (=> d!1861087 (= c!1055631 ((_ is EmptyExpr!15983) r!7292))))

(assert (=> d!1861087 (= lt!2311414 e!3633166)))

(declare-fun c!1055632 () Bool)

(assert (=> d!1861087 (= c!1055632 (isEmpty!35998 s!2326))))

(assert (=> d!1861087 (validRegex!7719 r!7292)))

(assert (=> d!1861087 (= (matchR!8166 r!7292 s!2326) lt!2311414)))

(declare-fun b!5937085 () Bool)

(declare-fun derivativeStep!4714 (Regex!15983 C!32236) Regex!15983)

(assert (=> b!5937085 (= e!3633166 (matchR!8166 (derivativeStep!4714 r!7292 (head!12508 s!2326)) (tail!11593 s!2326)))))

(declare-fun b!5937086 () Bool)

(declare-fun res!2486940 () Bool)

(assert (=> b!5937086 (=> res!2486940 e!3633163)))

(assert (=> b!5937086 (= res!2486940 (not ((_ is ElementMatch!15983) r!7292)))))

(assert (=> b!5937086 (= e!3633164 e!3633163)))

(assert (= (and d!1861087 c!1055632) b!5937074))

(assert (= (and d!1861087 (not c!1055632)) b!5937085))

(assert (= (and d!1861087 c!1055631) b!5937078))

(assert (= (and d!1861087 (not c!1055631)) b!5937075))

(assert (= (and b!5937075 c!1055633) b!5937080))

(assert (= (and b!5937075 (not c!1055633)) b!5937086))

(assert (= (and b!5937086 (not res!2486940)) b!5937081))

(assert (= (and b!5937081 res!2486944) b!5937079))

(assert (= (and b!5937079 res!2486943) b!5937077))

(assert (= (and b!5937077 res!2486938) b!5937082))

(assert (= (and b!5937081 (not res!2486942)) b!5937076))

(assert (= (and b!5937076 res!2486939) b!5937084))

(assert (= (and b!5937084 (not res!2486937)) b!5937073))

(assert (= (and b!5937073 (not res!2486941)) b!5937083))

(assert (= (or b!5937078 b!5937079 b!5937084) bm!471669))

(declare-fun m!6827552 () Bool)

(assert (=> b!5937073 m!6827552))

(assert (=> b!5937073 m!6827552))

(declare-fun m!6827554 () Bool)

(assert (=> b!5937073 m!6827554))

(assert (=> bm!471669 m!6827544))

(declare-fun m!6827556 () Bool)

(assert (=> b!5937074 m!6827556))

(declare-fun m!6827558 () Bool)

(assert (=> b!5937082 m!6827558))

(assert (=> d!1861087 m!6827544))

(assert (=> d!1861087 m!6827178))

(assert (=> b!5937083 m!6827558))

(assert (=> b!5937077 m!6827552))

(assert (=> b!5937077 m!6827552))

(assert (=> b!5937077 m!6827554))

(assert (=> b!5937085 m!6827558))

(assert (=> b!5937085 m!6827558))

(declare-fun m!6827560 () Bool)

(assert (=> b!5937085 m!6827560))

(assert (=> b!5937085 m!6827552))

(assert (=> b!5937085 m!6827560))

(assert (=> b!5937085 m!6827552))

(declare-fun m!6827562 () Bool)

(assert (=> b!5937085 m!6827562))

(assert (=> b!5936456 d!1861087))

(declare-fun d!1861089 () Bool)

(assert (=> d!1861089 (= (matchR!8166 r!7292 s!2326) (matchRSpec!3084 r!7292 s!2326))))

(declare-fun lt!2311417 () Unit!157237)

(declare-fun choose!44751 (Regex!15983 List!64250) Unit!157237)

(assert (=> d!1861089 (= lt!2311417 (choose!44751 r!7292 s!2326))))

(assert (=> d!1861089 (validRegex!7719 r!7292)))

(assert (=> d!1861089 (= (mainMatchTheorem!3084 r!7292 s!2326) lt!2311417)))

(declare-fun bs!1404369 () Bool)

(assert (= bs!1404369 d!1861089))

(assert (=> bs!1404369 m!6827152))

(assert (=> bs!1404369 m!6827150))

(declare-fun m!6827564 () Bool)

(assert (=> bs!1404369 m!6827564))

(assert (=> bs!1404369 m!6827178))

(assert (=> b!5936456 d!1861089))

(declare-fun bs!1404370 () Bool)

(declare-fun d!1861091 () Bool)

(assert (= bs!1404370 (and d!1861091 d!1861033)))

(declare-fun lambda!323830 () Int)

(assert (=> bs!1404370 (= lambda!323830 lambda!323818)))

(declare-fun bs!1404371 () Bool)

(assert (= bs!1404371 (and d!1861091 d!1860955)))

(assert (=> bs!1404371 (= lambda!323830 lambda!323769)))

(declare-fun bs!1404372 () Bool)

(assert (= bs!1404372 (and d!1861091 d!1861027)))

(assert (=> bs!1404372 (= lambda!323830 lambda!323814)))

(declare-fun bs!1404373 () Bool)

(assert (= bs!1404373 (and d!1861091 d!1861057)))

(assert (=> bs!1404373 (= lambda!323830 lambda!323820)))

(declare-fun bs!1404374 () Bool)

(assert (= bs!1404374 (and d!1861091 d!1861067)))

(assert (=> bs!1404374 (= lambda!323830 lambda!323821)))

(declare-fun b!5937107 () Bool)

(declare-fun e!3633185 () Bool)

(assert (=> b!5937107 (= e!3633185 (isEmpty!35993 (t!377651 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5937108 () Bool)

(declare-fun e!3633184 () Bool)

(declare-fun lt!2311420 () Regex!15983)

(declare-fun isConcat!934 (Regex!15983) Bool)

(assert (=> b!5937108 (= e!3633184 (isConcat!934 lt!2311420))))

(declare-fun e!3633183 () Bool)

(assert (=> d!1861091 e!3633183))

(declare-fun res!2486950 () Bool)

(assert (=> d!1861091 (=> (not res!2486950) (not e!3633183))))

(assert (=> d!1861091 (= res!2486950 (validRegex!7719 lt!2311420))))

(declare-fun e!3633181 () Regex!15983)

(assert (=> d!1861091 (= lt!2311420 e!3633181)))

(declare-fun c!1055645 () Bool)

(assert (=> d!1861091 (= c!1055645 e!3633185)))

(declare-fun res!2486949 () Bool)

(assert (=> d!1861091 (=> (not res!2486949) (not e!3633185))))

(assert (=> d!1861091 (= res!2486949 ((_ is Cons!64124) (exprs!5867 (h!70573 zl!343))))))

(assert (=> d!1861091 (forall!15066 (exprs!5867 (h!70573 zl!343)) lambda!323830)))

(assert (=> d!1861091 (= (generalisedConcat!1580 (exprs!5867 (h!70573 zl!343))) lt!2311420)))

(declare-fun b!5937109 () Bool)

(declare-fun e!3633186 () Regex!15983)

(assert (=> b!5937109 (= e!3633181 e!3633186)))

(declare-fun c!1055642 () Bool)

(assert (=> b!5937109 (= c!1055642 ((_ is Cons!64124) (exprs!5867 (h!70573 zl!343))))))

(declare-fun b!5937110 () Bool)

(assert (=> b!5937110 (= e!3633184 (= lt!2311420 (head!12507 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5937111 () Bool)

(declare-fun e!3633182 () Bool)

(assert (=> b!5937111 (= e!3633182 e!3633184)))

(declare-fun c!1055644 () Bool)

(assert (=> b!5937111 (= c!1055644 (isEmpty!35993 (tail!11592 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5937112 () Bool)

(assert (=> b!5937112 (= e!3633186 (Concat!24828 (h!70572 (exprs!5867 (h!70573 zl!343))) (generalisedConcat!1580 (t!377651 (exprs!5867 (h!70573 zl!343))))))))

(declare-fun b!5937113 () Bool)

(declare-fun isEmptyExpr!1411 (Regex!15983) Bool)

(assert (=> b!5937113 (= e!3633182 (isEmptyExpr!1411 lt!2311420))))

(declare-fun b!5937114 () Bool)

(assert (=> b!5937114 (= e!3633181 (h!70572 (exprs!5867 (h!70573 zl!343))))))

(declare-fun b!5937115 () Bool)

(assert (=> b!5937115 (= e!3633186 EmptyExpr!15983)))

(declare-fun b!5937116 () Bool)

(assert (=> b!5937116 (= e!3633183 e!3633182)))

(declare-fun c!1055643 () Bool)

(assert (=> b!5937116 (= c!1055643 (isEmpty!35993 (exprs!5867 (h!70573 zl!343))))))

(assert (= (and d!1861091 res!2486949) b!5937107))

(assert (= (and d!1861091 c!1055645) b!5937114))

(assert (= (and d!1861091 (not c!1055645)) b!5937109))

(assert (= (and b!5937109 c!1055642) b!5937112))

(assert (= (and b!5937109 (not c!1055642)) b!5937115))

(assert (= (and d!1861091 res!2486950) b!5937116))

(assert (= (and b!5937116 c!1055643) b!5937113))

(assert (= (and b!5937116 (not c!1055643)) b!5937111))

(assert (= (and b!5937111 c!1055644) b!5937110))

(assert (= (and b!5937111 (not c!1055644)) b!5937108))

(declare-fun m!6827566 () Bool)

(assert (=> b!5937116 m!6827566))

(declare-fun m!6827568 () Bool)

(assert (=> b!5937113 m!6827568))

(assert (=> b!5937107 m!6827202))

(declare-fun m!6827570 () Bool)

(assert (=> b!5937110 m!6827570))

(declare-fun m!6827572 () Bool)

(assert (=> b!5937108 m!6827572))

(declare-fun m!6827574 () Bool)

(assert (=> b!5937112 m!6827574))

(declare-fun m!6827576 () Bool)

(assert (=> b!5937111 m!6827576))

(assert (=> b!5937111 m!6827576))

(declare-fun m!6827578 () Bool)

(assert (=> b!5937111 m!6827578))

(declare-fun m!6827580 () Bool)

(assert (=> d!1861091 m!6827580))

(declare-fun m!6827582 () Bool)

(assert (=> d!1861091 m!6827582))

(assert (=> b!5936455 d!1861091))

(declare-fun condSetEmpty!40320 () Bool)

(assert (=> setNonEmpty!40314 (= condSetEmpty!40320 (= setRest!40314 ((as const (Array Context!10734 Bool)) false)))))

(declare-fun setRes!40320 () Bool)

(assert (=> setNonEmpty!40314 (= tp!1651657 setRes!40320)))

(declare-fun setIsEmpty!40320 () Bool)

(assert (=> setIsEmpty!40320 setRes!40320))

(declare-fun setNonEmpty!40320 () Bool)

(declare-fun e!3633189 () Bool)

(declare-fun tp!1651722 () Bool)

(declare-fun setElem!40320 () Context!10734)

(assert (=> setNonEmpty!40320 (= setRes!40320 (and tp!1651722 (inv!83204 setElem!40320) e!3633189))))

(declare-fun setRest!40320 () (InoxSet Context!10734))

(assert (=> setNonEmpty!40320 (= setRest!40314 ((_ map or) (store ((as const (Array Context!10734 Bool)) false) setElem!40320 true) setRest!40320))))

(declare-fun b!5937121 () Bool)

(declare-fun tp!1651721 () Bool)

(assert (=> b!5937121 (= e!3633189 tp!1651721)))

(assert (= (and setNonEmpty!40314 condSetEmpty!40320) setIsEmpty!40320))

(assert (= (and setNonEmpty!40314 (not condSetEmpty!40320)) setNonEmpty!40320))

(assert (= setNonEmpty!40320 b!5937121))

(declare-fun m!6827584 () Bool)

(assert (=> setNonEmpty!40320 m!6827584))

(declare-fun e!3633192 () Bool)

(assert (=> b!5936463 (= tp!1651651 e!3633192)))

(declare-fun b!5937133 () Bool)

(declare-fun tp!1651737 () Bool)

(declare-fun tp!1651733 () Bool)

(assert (=> b!5937133 (= e!3633192 (and tp!1651737 tp!1651733))))

(declare-fun b!5937132 () Bool)

(assert (=> b!5937132 (= e!3633192 tp_is_empty!41219)))

(declare-fun b!5937135 () Bool)

(declare-fun tp!1651736 () Bool)

(declare-fun tp!1651734 () Bool)

(assert (=> b!5937135 (= e!3633192 (and tp!1651736 tp!1651734))))

(declare-fun b!5937134 () Bool)

(declare-fun tp!1651735 () Bool)

(assert (=> b!5937134 (= e!3633192 tp!1651735)))

(assert (= (and b!5936463 ((_ is ElementMatch!15983) (regOne!32478 r!7292))) b!5937132))

(assert (= (and b!5936463 ((_ is Concat!24828) (regOne!32478 r!7292))) b!5937133))

(assert (= (and b!5936463 ((_ is Star!15983) (regOne!32478 r!7292))) b!5937134))

(assert (= (and b!5936463 ((_ is Union!15983) (regOne!32478 r!7292))) b!5937135))

(declare-fun e!3633193 () Bool)

(assert (=> b!5936463 (= tp!1651658 e!3633193)))

(declare-fun b!5937137 () Bool)

(declare-fun tp!1651742 () Bool)

(declare-fun tp!1651738 () Bool)

(assert (=> b!5937137 (= e!3633193 (and tp!1651742 tp!1651738))))

(declare-fun b!5937136 () Bool)

(assert (=> b!5937136 (= e!3633193 tp_is_empty!41219)))

(declare-fun b!5937139 () Bool)

(declare-fun tp!1651741 () Bool)

(declare-fun tp!1651739 () Bool)

(assert (=> b!5937139 (= e!3633193 (and tp!1651741 tp!1651739))))

(declare-fun b!5937138 () Bool)

(declare-fun tp!1651740 () Bool)

(assert (=> b!5937138 (= e!3633193 tp!1651740)))

(assert (= (and b!5936463 ((_ is ElementMatch!15983) (regTwo!32478 r!7292))) b!5937136))

(assert (= (and b!5936463 ((_ is Concat!24828) (regTwo!32478 r!7292))) b!5937137))

(assert (= (and b!5936463 ((_ is Star!15983) (regTwo!32478 r!7292))) b!5937138))

(assert (= (and b!5936463 ((_ is Union!15983) (regTwo!32478 r!7292))) b!5937139))

(declare-fun b!5937147 () Bool)

(declare-fun e!3633199 () Bool)

(declare-fun tp!1651747 () Bool)

(assert (=> b!5937147 (= e!3633199 tp!1651747)))

(declare-fun e!3633198 () Bool)

(declare-fun b!5937146 () Bool)

(declare-fun tp!1651748 () Bool)

(assert (=> b!5937146 (= e!3633198 (and (inv!83204 (h!70573 (t!377652 zl!343))) e!3633199 tp!1651748))))

(assert (=> b!5936445 (= tp!1651655 e!3633198)))

(assert (= b!5937146 b!5937147))

(assert (= (and b!5936445 ((_ is Cons!64125) (t!377652 zl!343))) b!5937146))

(declare-fun m!6827586 () Bool)

(assert (=> b!5937146 m!6827586))

(declare-fun b!5937152 () Bool)

(declare-fun e!3633202 () Bool)

(declare-fun tp!1651753 () Bool)

(declare-fun tp!1651754 () Bool)

(assert (=> b!5937152 (= e!3633202 (and tp!1651753 tp!1651754))))

(assert (=> b!5936449 (= tp!1651650 e!3633202)))

(assert (= (and b!5936449 ((_ is Cons!64124) (exprs!5867 (h!70573 zl!343)))) b!5937152))

(declare-fun e!3633203 () Bool)

(assert (=> b!5936459 (= tp!1651654 e!3633203)))

(declare-fun b!5937154 () Bool)

(declare-fun tp!1651759 () Bool)

(declare-fun tp!1651755 () Bool)

(assert (=> b!5937154 (= e!3633203 (and tp!1651759 tp!1651755))))

(declare-fun b!5937153 () Bool)

(assert (=> b!5937153 (= e!3633203 tp_is_empty!41219)))

(declare-fun b!5937156 () Bool)

(declare-fun tp!1651758 () Bool)

(declare-fun tp!1651756 () Bool)

(assert (=> b!5937156 (= e!3633203 (and tp!1651758 tp!1651756))))

(declare-fun b!5937155 () Bool)

(declare-fun tp!1651757 () Bool)

(assert (=> b!5937155 (= e!3633203 tp!1651757)))

(assert (= (and b!5936459 ((_ is ElementMatch!15983) (regOne!32479 r!7292))) b!5937153))

(assert (= (and b!5936459 ((_ is Concat!24828) (regOne!32479 r!7292))) b!5937154))

(assert (= (and b!5936459 ((_ is Star!15983) (regOne!32479 r!7292))) b!5937155))

(assert (= (and b!5936459 ((_ is Union!15983) (regOne!32479 r!7292))) b!5937156))

(declare-fun e!3633204 () Bool)

(assert (=> b!5936459 (= tp!1651652 e!3633204)))

(declare-fun b!5937158 () Bool)

(declare-fun tp!1651764 () Bool)

(declare-fun tp!1651760 () Bool)

(assert (=> b!5937158 (= e!3633204 (and tp!1651764 tp!1651760))))

(declare-fun b!5937157 () Bool)

(assert (=> b!5937157 (= e!3633204 tp_is_empty!41219)))

(declare-fun b!5937160 () Bool)

(declare-fun tp!1651763 () Bool)

(declare-fun tp!1651761 () Bool)

(assert (=> b!5937160 (= e!3633204 (and tp!1651763 tp!1651761))))

(declare-fun b!5937159 () Bool)

(declare-fun tp!1651762 () Bool)

(assert (=> b!5937159 (= e!3633204 tp!1651762)))

(assert (= (and b!5936459 ((_ is ElementMatch!15983) (regTwo!32479 r!7292))) b!5937157))

(assert (= (and b!5936459 ((_ is Concat!24828) (regTwo!32479 r!7292))) b!5937158))

(assert (= (and b!5936459 ((_ is Star!15983) (regTwo!32479 r!7292))) b!5937159))

(assert (= (and b!5936459 ((_ is Union!15983) (regTwo!32479 r!7292))) b!5937160))

(declare-fun e!3633205 () Bool)

(assert (=> b!5936452 (= tp!1651653 e!3633205)))

(declare-fun b!5937162 () Bool)

(declare-fun tp!1651769 () Bool)

(declare-fun tp!1651765 () Bool)

(assert (=> b!5937162 (= e!3633205 (and tp!1651769 tp!1651765))))

(declare-fun b!5937161 () Bool)

(assert (=> b!5937161 (= e!3633205 tp_is_empty!41219)))

(declare-fun b!5937164 () Bool)

(declare-fun tp!1651768 () Bool)

(declare-fun tp!1651766 () Bool)

(assert (=> b!5937164 (= e!3633205 (and tp!1651768 tp!1651766))))

(declare-fun b!5937163 () Bool)

(declare-fun tp!1651767 () Bool)

(assert (=> b!5937163 (= e!3633205 tp!1651767)))

(assert (= (and b!5936452 ((_ is ElementMatch!15983) (reg!16312 r!7292))) b!5937161))

(assert (= (and b!5936452 ((_ is Concat!24828) (reg!16312 r!7292))) b!5937162))

(assert (= (and b!5936452 ((_ is Star!15983) (reg!16312 r!7292))) b!5937163))

(assert (= (and b!5936452 ((_ is Union!15983) (reg!16312 r!7292))) b!5937164))

(declare-fun b!5937169 () Bool)

(declare-fun e!3633208 () Bool)

(declare-fun tp!1651772 () Bool)

(assert (=> b!5937169 (= e!3633208 (and tp_is_empty!41219 tp!1651772))))

(assert (=> b!5936457 (= tp!1651656 e!3633208)))

(assert (= (and b!5936457 ((_ is Cons!64126) (t!377653 s!2326))) b!5937169))

(declare-fun b!5937170 () Bool)

(declare-fun e!3633209 () Bool)

(declare-fun tp!1651773 () Bool)

(declare-fun tp!1651774 () Bool)

(assert (=> b!5937170 (= e!3633209 (and tp!1651773 tp!1651774))))

(assert (=> b!5936451 (= tp!1651649 e!3633209)))

(assert (= (and b!5936451 ((_ is Cons!64124) (exprs!5867 setElem!40314))) b!5937170))

(declare-fun b_lambda!223007 () Bool)

(assert (= b_lambda!222991 (or b!5936462 b_lambda!223007)))

(declare-fun bs!1404375 () Bool)

(declare-fun d!1861093 () Bool)

(assert (= bs!1404375 (and d!1861093 b!5936462)))

(assert (=> bs!1404375 (= (dynLambda!25080 lambda!323766 (h!70573 zl!343)) (derivationStepZipperUp!1159 (h!70573 zl!343) (h!70574 s!2326)))))

(assert (=> bs!1404375 m!6827138))

(assert (=> d!1861025 d!1861093))

(declare-fun b_lambda!223009 () Bool)

(assert (= b_lambda!222997 (or b!5936462 b_lambda!223009)))

(declare-fun bs!1404376 () Bool)

(declare-fun d!1861095 () Bool)

(assert (= bs!1404376 (and d!1861095 b!5936462)))

(assert (=> bs!1404376 (= (dynLambda!25080 lambda!323766 lt!2311327) (derivationStepZipperUp!1159 lt!2311327 (h!70574 s!2326)))))

(assert (=> bs!1404376 m!6827166))

(assert (=> d!1861063 d!1861095))

(declare-fun b_lambda!223011 () Bool)

(assert (= b_lambda!222999 (or b!5936462 b_lambda!223011)))

(declare-fun bs!1404377 () Bool)

(declare-fun d!1861097 () Bool)

(assert (= bs!1404377 (and d!1861097 b!5936462)))

(assert (=> bs!1404377 (= (dynLambda!25080 lambda!323766 lt!2311326) (derivationStepZipperUp!1159 lt!2311326 (h!70574 s!2326)))))

(assert (=> bs!1404377 m!6827168))

(assert (=> d!1861075 d!1861097))

(check-sat (not b!5936875) (not b!5937147) (not b!5936972) (not b!5936923) (not b!5937163) (not b!5936957) (not d!1861067) (not bm!471591) (not b!5937116) (not d!1861017) (not b!5937035) (not b!5937083) (not b!5936878) (not b!5937158) (not bm!471590) (not b!5936669) (not bm!471594) (not b!5937134) (not bm!471635) (not b!5937135) (not d!1861059) (not bm!471666) (not d!1861033) (not b!5937108) (not d!1861075) (not bs!1404375) (not b!5937159) (not d!1861025) (not bs!1404377) (not b!5937169) (not b!5936960) (not b!5936668) (not b!5937113) (not b!5936884) (not d!1860955) (not d!1861049) (not setNonEmpty!40320) (not b!5937111) (not bm!471657) (not b!5936810) (not b_lambda!223009) (not d!1861057) (not bm!471665) (not b!5936566) (not b!5936671) (not d!1861007) (not b!5936883) (not b!5937164) (not b!5937162) (not bs!1404376) (not b!5936876) (not b!5937110) tp_is_empty!41219 (not bm!471659) (not b!5937138) (not b!5936827) (not d!1861061) (not b!5936945) (not b!5937156) (not b!5937152) (not d!1861077) (not d!1860973) (not b!5937160) (not b!5937074) (not d!1861001) (not b_lambda!223011) (not b!5936569) (not b!5937154) (not b!5937137) (not b!5937112) (not b!5936914) (not b!5937170) (not b!5937133) (not bm!471660) (not bm!471669) (not d!1861087) (not b!5936824) (not b!5937082) (not d!1861063) (not d!1860991) (not b!5936511) (not bm!471656) (not b!5936672) (not d!1861027) (not b!5936975) (not b!5936670) (not d!1861091) (not b!5936664) (not d!1860987) (not bm!471658) (not b!5937146) (not d!1861021) (not b!5937139) (not bm!471589) (not d!1861089) (not b!5937121) (not b!5937073) (not b!5937085) (not b!5936877) (not bm!471633) (not b!5937077) (not b!5937155) (not d!1860993) (not b!5937034) (not b_lambda!223007) (not b!5936882) (not b!5937107) (not bm!471632))
(check-sat)
(get-model)

(declare-fun bm!471670 () Bool)

(declare-fun call!471675 () Bool)

(assert (=> bm!471670 (= call!471675 (isEmpty!35998 s!2326))))

(declare-fun b!5937171 () Bool)

(declare-fun res!2486955 () Bool)

(declare-fun e!3633210 () Bool)

(assert (=> b!5937171 (=> res!2486955 e!3633210)))

(assert (=> b!5937171 (= res!2486955 (not (isEmpty!35998 (tail!11593 s!2326))))))

(declare-fun b!5937172 () Bool)

(declare-fun e!3633214 () Bool)

(assert (=> b!5937172 (= e!3633214 (nullable!5978 (regTwo!32478 r!7292)))))

(declare-fun b!5937173 () Bool)

(declare-fun e!3633215 () Bool)

(declare-fun e!3633212 () Bool)

(assert (=> b!5937173 (= e!3633215 e!3633212)))

(declare-fun c!1055648 () Bool)

(assert (=> b!5937173 (= c!1055648 ((_ is EmptyLang!15983) (regTwo!32478 r!7292)))))

(declare-fun b!5937174 () Bool)

(declare-fun e!3633211 () Bool)

(declare-fun e!3633213 () Bool)

(assert (=> b!5937174 (= e!3633211 e!3633213)))

(declare-fun res!2486953 () Bool)

(assert (=> b!5937174 (=> (not res!2486953) (not e!3633213))))

(declare-fun lt!2311421 () Bool)

(assert (=> b!5937174 (= res!2486953 (not lt!2311421))))

(declare-fun b!5937175 () Bool)

(declare-fun res!2486952 () Bool)

(declare-fun e!3633216 () Bool)

(assert (=> b!5937175 (=> (not res!2486952) (not e!3633216))))

(assert (=> b!5937175 (= res!2486952 (isEmpty!35998 (tail!11593 s!2326)))))

(declare-fun b!5937176 () Bool)

(assert (=> b!5937176 (= e!3633215 (= lt!2311421 call!471675))))

(declare-fun b!5937177 () Bool)

(declare-fun res!2486957 () Bool)

(assert (=> b!5937177 (=> (not res!2486957) (not e!3633216))))

(assert (=> b!5937177 (= res!2486957 (not call!471675))))

(declare-fun b!5937178 () Bool)

(assert (=> b!5937178 (= e!3633212 (not lt!2311421))))

(declare-fun b!5937179 () Bool)

(declare-fun res!2486956 () Bool)

(assert (=> b!5937179 (=> res!2486956 e!3633211)))

(assert (=> b!5937179 (= res!2486956 e!3633216)))

(declare-fun res!2486958 () Bool)

(assert (=> b!5937179 (=> (not res!2486958) (not e!3633216))))

(assert (=> b!5937179 (= res!2486958 lt!2311421)))

(declare-fun b!5937180 () Bool)

(assert (=> b!5937180 (= e!3633216 (= (head!12508 s!2326) (c!1055457 (regTwo!32478 r!7292))))))

(declare-fun b!5937181 () Bool)

(assert (=> b!5937181 (= e!3633210 (not (= (head!12508 s!2326) (c!1055457 (regTwo!32478 r!7292)))))))

(declare-fun b!5937182 () Bool)

(assert (=> b!5937182 (= e!3633213 e!3633210)))

(declare-fun res!2486951 () Bool)

(assert (=> b!5937182 (=> res!2486951 e!3633210)))

(assert (=> b!5937182 (= res!2486951 call!471675)))

(declare-fun d!1861099 () Bool)

(assert (=> d!1861099 e!3633215))

(declare-fun c!1055646 () Bool)

(assert (=> d!1861099 (= c!1055646 ((_ is EmptyExpr!15983) (regTwo!32478 r!7292)))))

(assert (=> d!1861099 (= lt!2311421 e!3633214)))

(declare-fun c!1055647 () Bool)

(assert (=> d!1861099 (= c!1055647 (isEmpty!35998 s!2326))))

(assert (=> d!1861099 (validRegex!7719 (regTwo!32478 r!7292))))

(assert (=> d!1861099 (= (matchR!8166 (regTwo!32478 r!7292) s!2326) lt!2311421)))

(declare-fun b!5937183 () Bool)

(assert (=> b!5937183 (= e!3633214 (matchR!8166 (derivativeStep!4714 (regTwo!32478 r!7292) (head!12508 s!2326)) (tail!11593 s!2326)))))

(declare-fun b!5937184 () Bool)

(declare-fun res!2486954 () Bool)

(assert (=> b!5937184 (=> res!2486954 e!3633211)))

(assert (=> b!5937184 (= res!2486954 (not ((_ is ElementMatch!15983) (regTwo!32478 r!7292))))))

(assert (=> b!5937184 (= e!3633212 e!3633211)))

(assert (= (and d!1861099 c!1055647) b!5937172))

(assert (= (and d!1861099 (not c!1055647)) b!5937183))

(assert (= (and d!1861099 c!1055646) b!5937176))

(assert (= (and d!1861099 (not c!1055646)) b!5937173))

(assert (= (and b!5937173 c!1055648) b!5937178))

(assert (= (and b!5937173 (not c!1055648)) b!5937184))

(assert (= (and b!5937184 (not res!2486954)) b!5937179))

(assert (= (and b!5937179 res!2486958) b!5937177))

(assert (= (and b!5937177 res!2486957) b!5937175))

(assert (= (and b!5937175 res!2486952) b!5937180))

(assert (= (and b!5937179 (not res!2486956)) b!5937174))

(assert (= (and b!5937174 res!2486953) b!5937182))

(assert (= (and b!5937182 (not res!2486951)) b!5937171))

(assert (= (and b!5937171 (not res!2486955)) b!5937181))

(assert (= (or b!5937176 b!5937177 b!5937182) bm!471670))

(assert (=> b!5937171 m!6827552))

(assert (=> b!5937171 m!6827552))

(assert (=> b!5937171 m!6827554))

(assert (=> bm!471670 m!6827544))

(declare-fun m!6827588 () Bool)

(assert (=> b!5937172 m!6827588))

(assert (=> b!5937180 m!6827558))

(assert (=> d!1861099 m!6827544))

(declare-fun m!6827590 () Bool)

(assert (=> d!1861099 m!6827590))

(assert (=> b!5937181 m!6827558))

(assert (=> b!5937175 m!6827552))

(assert (=> b!5937175 m!6827552))

(assert (=> b!5937175 m!6827554))

(assert (=> b!5937183 m!6827558))

(assert (=> b!5937183 m!6827558))

(declare-fun m!6827592 () Bool)

(assert (=> b!5937183 m!6827592))

(assert (=> b!5937183 m!6827552))

(assert (=> b!5937183 m!6827592))

(assert (=> b!5937183 m!6827552))

(declare-fun m!6827594 () Bool)

(assert (=> b!5937183 m!6827594))

(assert (=> b!5936664 d!1861099))

(declare-fun d!1861101 () Bool)

(declare-fun res!2486963 () Bool)

(declare-fun e!3633221 () Bool)

(assert (=> d!1861101 (=> res!2486963 e!3633221)))

(assert (=> d!1861101 (= res!2486963 ((_ is Nil!64124) (exprs!5867 lt!2311329)))))

(assert (=> d!1861101 (= (forall!15066 (exprs!5867 lt!2311329) lambda!323821) e!3633221)))

(declare-fun b!5937189 () Bool)

(declare-fun e!3633222 () Bool)

(assert (=> b!5937189 (= e!3633221 e!3633222)))

(declare-fun res!2486964 () Bool)

(assert (=> b!5937189 (=> (not res!2486964) (not e!3633222))))

(declare-fun dynLambda!25081 (Int Regex!15983) Bool)

(assert (=> b!5937189 (= res!2486964 (dynLambda!25081 lambda!323821 (h!70572 (exprs!5867 lt!2311329))))))

(declare-fun b!5937190 () Bool)

(assert (=> b!5937190 (= e!3633222 (forall!15066 (t!377651 (exprs!5867 lt!2311329)) lambda!323821))))

(assert (= (and d!1861101 (not res!2486963)) b!5937189))

(assert (= (and b!5937189 res!2486964) b!5937190))

(declare-fun b_lambda!223013 () Bool)

(assert (=> (not b_lambda!223013) (not b!5937189)))

(declare-fun m!6827596 () Bool)

(assert (=> b!5937189 m!6827596))

(declare-fun m!6827598 () Bool)

(assert (=> b!5937190 m!6827598))

(assert (=> d!1861067 d!1861101))

(assert (=> bs!1404375 d!1861023))

(declare-fun d!1861103 () Bool)

(declare-fun res!2486965 () Bool)

(declare-fun e!3633223 () Bool)

(assert (=> d!1861103 (=> res!2486965 e!3633223)))

(assert (=> d!1861103 (= res!2486965 ((_ is Nil!64124) (exprs!5867 setElem!40314)))))

(assert (=> d!1861103 (= (forall!15066 (exprs!5867 setElem!40314) lambda!323769) e!3633223)))

(declare-fun b!5937191 () Bool)

(declare-fun e!3633224 () Bool)

(assert (=> b!5937191 (= e!3633223 e!3633224)))

(declare-fun res!2486966 () Bool)

(assert (=> b!5937191 (=> (not res!2486966) (not e!3633224))))

(assert (=> b!5937191 (= res!2486966 (dynLambda!25081 lambda!323769 (h!70572 (exprs!5867 setElem!40314))))))

(declare-fun b!5937192 () Bool)

(assert (=> b!5937192 (= e!3633224 (forall!15066 (t!377651 (exprs!5867 setElem!40314)) lambda!323769))))

(assert (= (and d!1861103 (not res!2486965)) b!5937191))

(assert (= (and b!5937191 res!2486966) b!5937192))

(declare-fun b_lambda!223015 () Bool)

(assert (=> (not b_lambda!223015) (not b!5937191)))

(declare-fun m!6827600 () Bool)

(assert (=> b!5937191 m!6827600))

(declare-fun m!6827602 () Bool)

(assert (=> b!5937192 m!6827602))

(assert (=> d!1860955 d!1861103))

(declare-fun bm!471671 () Bool)

(declare-fun call!471676 () Bool)

(assert (=> bm!471671 (= call!471676 (isEmpty!35998 (tail!11593 s!2326)))))

(declare-fun b!5937193 () Bool)

(declare-fun res!2486971 () Bool)

(declare-fun e!3633225 () Bool)

(assert (=> b!5937193 (=> res!2486971 e!3633225)))

(assert (=> b!5937193 (= res!2486971 (not (isEmpty!35998 (tail!11593 (tail!11593 s!2326)))))))

(declare-fun b!5937194 () Bool)

(declare-fun e!3633229 () Bool)

(assert (=> b!5937194 (= e!3633229 (nullable!5978 (derivativeStep!4714 r!7292 (head!12508 s!2326))))))

(declare-fun b!5937195 () Bool)

(declare-fun e!3633230 () Bool)

(declare-fun e!3633227 () Bool)

(assert (=> b!5937195 (= e!3633230 e!3633227)))

(declare-fun c!1055651 () Bool)

(assert (=> b!5937195 (= c!1055651 ((_ is EmptyLang!15983) (derivativeStep!4714 r!7292 (head!12508 s!2326))))))

(declare-fun b!5937196 () Bool)

(declare-fun e!3633226 () Bool)

(declare-fun e!3633228 () Bool)

(assert (=> b!5937196 (= e!3633226 e!3633228)))

(declare-fun res!2486969 () Bool)

(assert (=> b!5937196 (=> (not res!2486969) (not e!3633228))))

(declare-fun lt!2311422 () Bool)

(assert (=> b!5937196 (= res!2486969 (not lt!2311422))))

(declare-fun b!5937197 () Bool)

(declare-fun res!2486968 () Bool)

(declare-fun e!3633231 () Bool)

(assert (=> b!5937197 (=> (not res!2486968) (not e!3633231))))

(assert (=> b!5937197 (= res!2486968 (isEmpty!35998 (tail!11593 (tail!11593 s!2326))))))

(declare-fun b!5937198 () Bool)

(assert (=> b!5937198 (= e!3633230 (= lt!2311422 call!471676))))

(declare-fun b!5937199 () Bool)

(declare-fun res!2486973 () Bool)

(assert (=> b!5937199 (=> (not res!2486973) (not e!3633231))))

(assert (=> b!5937199 (= res!2486973 (not call!471676))))

(declare-fun b!5937200 () Bool)

(assert (=> b!5937200 (= e!3633227 (not lt!2311422))))

(declare-fun b!5937201 () Bool)

(declare-fun res!2486972 () Bool)

(assert (=> b!5937201 (=> res!2486972 e!3633226)))

(assert (=> b!5937201 (= res!2486972 e!3633231)))

(declare-fun res!2486974 () Bool)

(assert (=> b!5937201 (=> (not res!2486974) (not e!3633231))))

(assert (=> b!5937201 (= res!2486974 lt!2311422)))

(declare-fun b!5937202 () Bool)

(assert (=> b!5937202 (= e!3633231 (= (head!12508 (tail!11593 s!2326)) (c!1055457 (derivativeStep!4714 r!7292 (head!12508 s!2326)))))))

(declare-fun b!5937203 () Bool)

(assert (=> b!5937203 (= e!3633225 (not (= (head!12508 (tail!11593 s!2326)) (c!1055457 (derivativeStep!4714 r!7292 (head!12508 s!2326))))))))

(declare-fun b!5937204 () Bool)

(assert (=> b!5937204 (= e!3633228 e!3633225)))

(declare-fun res!2486967 () Bool)

(assert (=> b!5937204 (=> res!2486967 e!3633225)))

(assert (=> b!5937204 (= res!2486967 call!471676)))

(declare-fun d!1861105 () Bool)

(assert (=> d!1861105 e!3633230))

(declare-fun c!1055649 () Bool)

(assert (=> d!1861105 (= c!1055649 ((_ is EmptyExpr!15983) (derivativeStep!4714 r!7292 (head!12508 s!2326))))))

(assert (=> d!1861105 (= lt!2311422 e!3633229)))

(declare-fun c!1055650 () Bool)

(assert (=> d!1861105 (= c!1055650 (isEmpty!35998 (tail!11593 s!2326)))))

(assert (=> d!1861105 (validRegex!7719 (derivativeStep!4714 r!7292 (head!12508 s!2326)))))

(assert (=> d!1861105 (= (matchR!8166 (derivativeStep!4714 r!7292 (head!12508 s!2326)) (tail!11593 s!2326)) lt!2311422)))

(declare-fun b!5937205 () Bool)

(assert (=> b!5937205 (= e!3633229 (matchR!8166 (derivativeStep!4714 (derivativeStep!4714 r!7292 (head!12508 s!2326)) (head!12508 (tail!11593 s!2326))) (tail!11593 (tail!11593 s!2326))))))

(declare-fun b!5937206 () Bool)

(declare-fun res!2486970 () Bool)

(assert (=> b!5937206 (=> res!2486970 e!3633226)))

(assert (=> b!5937206 (= res!2486970 (not ((_ is ElementMatch!15983) (derivativeStep!4714 r!7292 (head!12508 s!2326)))))))

(assert (=> b!5937206 (= e!3633227 e!3633226)))

(assert (= (and d!1861105 c!1055650) b!5937194))

(assert (= (and d!1861105 (not c!1055650)) b!5937205))

(assert (= (and d!1861105 c!1055649) b!5937198))

(assert (= (and d!1861105 (not c!1055649)) b!5937195))

(assert (= (and b!5937195 c!1055651) b!5937200))

(assert (= (and b!5937195 (not c!1055651)) b!5937206))

(assert (= (and b!5937206 (not res!2486970)) b!5937201))

(assert (= (and b!5937201 res!2486974) b!5937199))

(assert (= (and b!5937199 res!2486973) b!5937197))

(assert (= (and b!5937197 res!2486968) b!5937202))

(assert (= (and b!5937201 (not res!2486972)) b!5937196))

(assert (= (and b!5937196 res!2486969) b!5937204))

(assert (= (and b!5937204 (not res!2486967)) b!5937193))

(assert (= (and b!5937193 (not res!2486971)) b!5937203))

(assert (= (or b!5937198 b!5937199 b!5937204) bm!471671))

(assert (=> b!5937193 m!6827552))

(declare-fun m!6827604 () Bool)

(assert (=> b!5937193 m!6827604))

(assert (=> b!5937193 m!6827604))

(declare-fun m!6827606 () Bool)

(assert (=> b!5937193 m!6827606))

(assert (=> bm!471671 m!6827552))

(assert (=> bm!471671 m!6827554))

(assert (=> b!5937194 m!6827560))

(declare-fun m!6827608 () Bool)

(assert (=> b!5937194 m!6827608))

(assert (=> b!5937202 m!6827552))

(declare-fun m!6827610 () Bool)

(assert (=> b!5937202 m!6827610))

(assert (=> d!1861105 m!6827552))

(assert (=> d!1861105 m!6827554))

(assert (=> d!1861105 m!6827560))

(declare-fun m!6827612 () Bool)

(assert (=> d!1861105 m!6827612))

(assert (=> b!5937203 m!6827552))

(assert (=> b!5937203 m!6827610))

(assert (=> b!5937197 m!6827552))

(assert (=> b!5937197 m!6827604))

(assert (=> b!5937197 m!6827604))

(assert (=> b!5937197 m!6827606))

(assert (=> b!5937205 m!6827552))

(assert (=> b!5937205 m!6827610))

(assert (=> b!5937205 m!6827560))

(assert (=> b!5937205 m!6827610))

(declare-fun m!6827614 () Bool)

(assert (=> b!5937205 m!6827614))

(assert (=> b!5937205 m!6827552))

(assert (=> b!5937205 m!6827604))

(assert (=> b!5937205 m!6827614))

(assert (=> b!5937205 m!6827604))

(declare-fun m!6827616 () Bool)

(assert (=> b!5937205 m!6827616))

(assert (=> b!5937085 d!1861105))

(declare-fun b!5937227 () Bool)

(declare-fun c!1055662 () Bool)

(assert (=> b!5937227 (= c!1055662 (nullable!5978 (regOne!32478 r!7292)))))

(declare-fun e!3633242 () Regex!15983)

(declare-fun e!3633246 () Regex!15983)

(assert (=> b!5937227 (= e!3633242 e!3633246)))

(declare-fun bm!471680 () Bool)

(declare-fun call!471685 () Regex!15983)

(declare-fun call!471687 () Regex!15983)

(assert (=> bm!471680 (= call!471685 call!471687)))

(declare-fun b!5937228 () Bool)

(declare-fun call!471688 () Regex!15983)

(assert (=> b!5937228 (= e!3633246 (Union!15983 (Concat!24828 call!471688 (regTwo!32478 r!7292)) call!471685))))

(declare-fun b!5937229 () Bool)

(declare-fun e!3633243 () Regex!15983)

(assert (=> b!5937229 (= e!3633243 (ite (= (head!12508 s!2326) (c!1055457 r!7292)) EmptyExpr!15983 EmptyLang!15983))))

(declare-fun bm!471682 () Bool)

(declare-fun call!471686 () Regex!15983)

(assert (=> bm!471682 (= call!471688 call!471686)))

(declare-fun b!5937230 () Bool)

(declare-fun c!1055666 () Bool)

(assert (=> b!5937230 (= c!1055666 ((_ is Union!15983) r!7292))))

(declare-fun e!3633245 () Regex!15983)

(assert (=> b!5937230 (= e!3633243 e!3633245)))

(declare-fun b!5937231 () Bool)

(assert (=> b!5937231 (= e!3633242 (Concat!24828 call!471688 r!7292))))

(declare-fun b!5937232 () Bool)

(assert (=> b!5937232 (= e!3633245 e!3633242)))

(declare-fun c!1055665 () Bool)

(assert (=> b!5937232 (= c!1055665 ((_ is Star!15983) r!7292))))

(declare-fun b!5937233 () Bool)

(declare-fun e!3633244 () Regex!15983)

(assert (=> b!5937233 (= e!3633244 EmptyLang!15983)))

(declare-fun b!5937234 () Bool)

(assert (=> b!5937234 (= e!3633246 (Union!15983 (Concat!24828 call!471685 (regTwo!32478 r!7292)) EmptyLang!15983))))

(declare-fun bm!471683 () Bool)

(assert (=> bm!471683 (= call!471686 (derivativeStep!4714 (ite c!1055666 (regTwo!32479 r!7292) (ite c!1055665 (reg!16312 r!7292) (regOne!32478 r!7292))) (head!12508 s!2326)))))

(declare-fun bm!471681 () Bool)

(assert (=> bm!471681 (= call!471687 (derivativeStep!4714 (ite c!1055666 (regOne!32479 r!7292) (ite c!1055662 (regTwo!32478 r!7292) (regOne!32478 r!7292))) (head!12508 s!2326)))))

(declare-fun d!1861107 () Bool)

(declare-fun lt!2311425 () Regex!15983)

(assert (=> d!1861107 (validRegex!7719 lt!2311425)))

(assert (=> d!1861107 (= lt!2311425 e!3633244)))

(declare-fun c!1055663 () Bool)

(assert (=> d!1861107 (= c!1055663 (or ((_ is EmptyExpr!15983) r!7292) ((_ is EmptyLang!15983) r!7292)))))

(assert (=> d!1861107 (validRegex!7719 r!7292)))

(assert (=> d!1861107 (= (derivativeStep!4714 r!7292 (head!12508 s!2326)) lt!2311425)))

(declare-fun b!5937235 () Bool)

(assert (=> b!5937235 (= e!3633244 e!3633243)))

(declare-fun c!1055664 () Bool)

(assert (=> b!5937235 (= c!1055664 ((_ is ElementMatch!15983) r!7292))))

(declare-fun b!5937236 () Bool)

(assert (=> b!5937236 (= e!3633245 (Union!15983 call!471687 call!471686))))

(assert (= (and d!1861107 c!1055663) b!5937233))

(assert (= (and d!1861107 (not c!1055663)) b!5937235))

(assert (= (and b!5937235 c!1055664) b!5937229))

(assert (= (and b!5937235 (not c!1055664)) b!5937230))

(assert (= (and b!5937230 c!1055666) b!5937236))

(assert (= (and b!5937230 (not c!1055666)) b!5937232))

(assert (= (and b!5937232 c!1055665) b!5937231))

(assert (= (and b!5937232 (not c!1055665)) b!5937227))

(assert (= (and b!5937227 c!1055662) b!5937228))

(assert (= (and b!5937227 (not c!1055662)) b!5937234))

(assert (= (or b!5937228 b!5937234) bm!471680))

(assert (= (or b!5937231 b!5937228) bm!471682))

(assert (= (or b!5937236 bm!471682) bm!471683))

(assert (= (or b!5937236 bm!471680) bm!471681))

(assert (=> b!5937227 m!6827210))

(assert (=> bm!471683 m!6827558))

(declare-fun m!6827618 () Bool)

(assert (=> bm!471683 m!6827618))

(assert (=> bm!471681 m!6827558))

(declare-fun m!6827620 () Bool)

(assert (=> bm!471681 m!6827620))

(declare-fun m!6827622 () Bool)

(assert (=> d!1861107 m!6827622))

(assert (=> d!1861107 m!6827178))

(assert (=> b!5937085 d!1861107))

(declare-fun d!1861109 () Bool)

(assert (=> d!1861109 (= (head!12508 s!2326) (h!70574 s!2326))))

(assert (=> b!5937085 d!1861109))

(declare-fun d!1861111 () Bool)

(assert (=> d!1861111 (= (tail!11593 s!2326) (t!377653 s!2326))))

(assert (=> b!5937085 d!1861111))

(declare-fun d!1861113 () Bool)

(assert (=> d!1861113 (= (isEmpty!35993 (exprs!5867 (h!70573 zl!343))) ((_ is Nil!64124) (exprs!5867 (h!70573 zl!343))))))

(assert (=> b!5937116 d!1861113))

(declare-fun b!5937237 () Bool)

(declare-fun e!3633252 () Bool)

(declare-fun call!471689 () Bool)

(assert (=> b!5937237 (= e!3633252 call!471689)))

(declare-fun b!5937238 () Bool)

(declare-fun e!3633251 () Bool)

(declare-fun e!3633248 () Bool)

(assert (=> b!5937238 (= e!3633251 e!3633248)))

(declare-fun res!2486975 () Bool)

(assert (=> b!5937238 (= res!2486975 (not (nullable!5978 (reg!16312 (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))))))))

(assert (=> b!5937238 (=> (not res!2486975) (not e!3633248))))

(declare-fun b!5937239 () Bool)

(declare-fun e!3633253 () Bool)

(assert (=> b!5937239 (= e!3633251 e!3633253)))

(declare-fun c!1055667 () Bool)

(assert (=> b!5937239 (= c!1055667 ((_ is Union!15983) (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))))))

(declare-fun b!5937240 () Bool)

(declare-fun call!471690 () Bool)

(assert (=> b!5937240 (= e!3633248 call!471690)))

(declare-fun call!471691 () Bool)

(declare-fun bm!471684 () Bool)

(assert (=> bm!471684 (= call!471691 (validRegex!7719 (ite c!1055667 (regOne!32479 (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))) (regOne!32478 (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))))))))

(declare-fun b!5937242 () Bool)

(declare-fun res!2486977 () Bool)

(declare-fun e!3633247 () Bool)

(assert (=> b!5937242 (=> (not res!2486977) (not e!3633247))))

(assert (=> b!5937242 (= res!2486977 call!471691)))

(assert (=> b!5937242 (= e!3633253 e!3633247)))

(declare-fun bm!471685 () Bool)

(declare-fun c!1055668 () Bool)

(assert (=> bm!471685 (= call!471690 (validRegex!7719 (ite c!1055668 (reg!16312 (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))) (ite c!1055667 (regTwo!32479 (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))) (regTwo!32478 (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292))))))))))

(declare-fun b!5937243 () Bool)

(assert (=> b!5937243 (= e!3633247 call!471689)))

(declare-fun bm!471686 () Bool)

(assert (=> bm!471686 (= call!471689 call!471690)))

(declare-fun b!5937244 () Bool)

(declare-fun res!2486976 () Bool)

(declare-fun e!3633249 () Bool)

(assert (=> b!5937244 (=> res!2486976 e!3633249)))

(assert (=> b!5937244 (= res!2486976 (not ((_ is Concat!24828) (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292))))))))

(assert (=> b!5937244 (= e!3633253 e!3633249)))

(declare-fun b!5937245 () Bool)

(assert (=> b!5937245 (= e!3633249 e!3633252)))

(declare-fun res!2486978 () Bool)

(assert (=> b!5937245 (=> (not res!2486978) (not e!3633252))))

(assert (=> b!5937245 (= res!2486978 call!471691)))

(declare-fun d!1861115 () Bool)

(declare-fun res!2486979 () Bool)

(declare-fun e!3633250 () Bool)

(assert (=> d!1861115 (=> res!2486979 e!3633250)))

(assert (=> d!1861115 (= res!2486979 ((_ is ElementMatch!15983) (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))))))

(assert (=> d!1861115 (= (validRegex!7719 (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))) e!3633250)))

(declare-fun b!5937241 () Bool)

(assert (=> b!5937241 (= e!3633250 e!3633251)))

(assert (=> b!5937241 (= c!1055668 ((_ is Star!15983) (ite c!1055569 (reg!16312 r!7292) (ite c!1055568 (regTwo!32479 r!7292) (regTwo!32478 r!7292)))))))

(assert (= (and d!1861115 (not res!2486979)) b!5937241))

(assert (= (and b!5937241 c!1055668) b!5937238))

(assert (= (and b!5937241 (not c!1055668)) b!5937239))

(assert (= (and b!5937238 res!2486975) b!5937240))

(assert (= (and b!5937239 c!1055667) b!5937242))

(assert (= (and b!5937239 (not c!1055667)) b!5937244))

(assert (= (and b!5937242 res!2486977) b!5937243))

(assert (= (and b!5937244 (not res!2486976)) b!5937245))

(assert (= (and b!5937245 res!2486978) b!5937237))

(assert (= (or b!5937243 b!5937237) bm!471686))

(assert (= (or b!5937242 b!5937245) bm!471684))

(assert (= (or b!5937240 bm!471686) bm!471685))

(declare-fun m!6827624 () Bool)

(assert (=> b!5937238 m!6827624))

(declare-fun m!6827626 () Bool)

(assert (=> bm!471684 m!6827626))

(declare-fun m!6827628 () Bool)

(assert (=> bm!471685 m!6827628))

(assert (=> bm!471633 d!1861115))

(declare-fun d!1861117 () Bool)

(declare-fun nullableFct!1949 (Regex!15983) Bool)

(assert (=> d!1861117 (= (nullable!5978 (regOne!32478 (regOne!32478 r!7292))) (nullableFct!1949 (regOne!32478 (regOne!32478 r!7292))))))

(declare-fun bs!1404378 () Bool)

(assert (= bs!1404378 d!1861117))

(declare-fun m!6827630 () Bool)

(assert (=> bs!1404378 m!6827630))

(assert (=> b!5936945 d!1861117))

(declare-fun bm!471687 () Bool)

(declare-fun call!471692 () Bool)

(assert (=> bm!471687 (= call!471692 (isEmpty!35998 (_2!36265 (get!22086 lt!2311355))))))

(declare-fun b!5937246 () Bool)

(declare-fun res!2486984 () Bool)

(declare-fun e!3633254 () Bool)

(assert (=> b!5937246 (=> res!2486984 e!3633254)))

(assert (=> b!5937246 (= res!2486984 (not (isEmpty!35998 (tail!11593 (_2!36265 (get!22086 lt!2311355))))))))

(declare-fun b!5937247 () Bool)

(declare-fun e!3633258 () Bool)

(assert (=> b!5937247 (= e!3633258 (nullable!5978 (regTwo!32478 r!7292)))))

(declare-fun b!5937248 () Bool)

(declare-fun e!3633259 () Bool)

(declare-fun e!3633256 () Bool)

(assert (=> b!5937248 (= e!3633259 e!3633256)))

(declare-fun c!1055671 () Bool)

(assert (=> b!5937248 (= c!1055671 ((_ is EmptyLang!15983) (regTwo!32478 r!7292)))))

(declare-fun b!5937249 () Bool)

(declare-fun e!3633255 () Bool)

(declare-fun e!3633257 () Bool)

(assert (=> b!5937249 (= e!3633255 e!3633257)))

(declare-fun res!2486982 () Bool)

(assert (=> b!5937249 (=> (not res!2486982) (not e!3633257))))

(declare-fun lt!2311426 () Bool)

(assert (=> b!5937249 (= res!2486982 (not lt!2311426))))

(declare-fun b!5937250 () Bool)

(declare-fun res!2486981 () Bool)

(declare-fun e!3633260 () Bool)

(assert (=> b!5937250 (=> (not res!2486981) (not e!3633260))))

(assert (=> b!5937250 (= res!2486981 (isEmpty!35998 (tail!11593 (_2!36265 (get!22086 lt!2311355)))))))

(declare-fun b!5937251 () Bool)

(assert (=> b!5937251 (= e!3633259 (= lt!2311426 call!471692))))

(declare-fun b!5937252 () Bool)

(declare-fun res!2486986 () Bool)

(assert (=> b!5937252 (=> (not res!2486986) (not e!3633260))))

(assert (=> b!5937252 (= res!2486986 (not call!471692))))

(declare-fun b!5937253 () Bool)

(assert (=> b!5937253 (= e!3633256 (not lt!2311426))))

(declare-fun b!5937254 () Bool)

(declare-fun res!2486985 () Bool)

(assert (=> b!5937254 (=> res!2486985 e!3633255)))

(assert (=> b!5937254 (= res!2486985 e!3633260)))

(declare-fun res!2486987 () Bool)

(assert (=> b!5937254 (=> (not res!2486987) (not e!3633260))))

(assert (=> b!5937254 (= res!2486987 lt!2311426)))

(declare-fun b!5937255 () Bool)

(assert (=> b!5937255 (= e!3633260 (= (head!12508 (_2!36265 (get!22086 lt!2311355))) (c!1055457 (regTwo!32478 r!7292))))))

(declare-fun b!5937256 () Bool)

(assert (=> b!5937256 (= e!3633254 (not (= (head!12508 (_2!36265 (get!22086 lt!2311355))) (c!1055457 (regTwo!32478 r!7292)))))))

(declare-fun b!5937257 () Bool)

(assert (=> b!5937257 (= e!3633257 e!3633254)))

(declare-fun res!2486980 () Bool)

(assert (=> b!5937257 (=> res!2486980 e!3633254)))

(assert (=> b!5937257 (= res!2486980 call!471692)))

(declare-fun d!1861119 () Bool)

(assert (=> d!1861119 e!3633259))

(declare-fun c!1055669 () Bool)

(assert (=> d!1861119 (= c!1055669 ((_ is EmptyExpr!15983) (regTwo!32478 r!7292)))))

(assert (=> d!1861119 (= lt!2311426 e!3633258)))

(declare-fun c!1055670 () Bool)

(assert (=> d!1861119 (= c!1055670 (isEmpty!35998 (_2!36265 (get!22086 lt!2311355))))))

(assert (=> d!1861119 (validRegex!7719 (regTwo!32478 r!7292))))

(assert (=> d!1861119 (= (matchR!8166 (regTwo!32478 r!7292) (_2!36265 (get!22086 lt!2311355))) lt!2311426)))

(declare-fun b!5937258 () Bool)

(assert (=> b!5937258 (= e!3633258 (matchR!8166 (derivativeStep!4714 (regTwo!32478 r!7292) (head!12508 (_2!36265 (get!22086 lt!2311355)))) (tail!11593 (_2!36265 (get!22086 lt!2311355)))))))

(declare-fun b!5937259 () Bool)

(declare-fun res!2486983 () Bool)

(assert (=> b!5937259 (=> res!2486983 e!3633255)))

(assert (=> b!5937259 (= res!2486983 (not ((_ is ElementMatch!15983) (regTwo!32478 r!7292))))))

(assert (=> b!5937259 (= e!3633256 e!3633255)))

(assert (= (and d!1861119 c!1055670) b!5937247))

(assert (= (and d!1861119 (not c!1055670)) b!5937258))

(assert (= (and d!1861119 c!1055669) b!5937251))

(assert (= (and d!1861119 (not c!1055669)) b!5937248))

(assert (= (and b!5937248 c!1055671) b!5937253))

(assert (= (and b!5937248 (not c!1055671)) b!5937259))

(assert (= (and b!5937259 (not res!2486983)) b!5937254))

(assert (= (and b!5937254 res!2486987) b!5937252))

(assert (= (and b!5937252 res!2486986) b!5937250))

(assert (= (and b!5937250 res!2486981) b!5937255))

(assert (= (and b!5937254 (not res!2486985)) b!5937249))

(assert (= (and b!5937249 res!2486982) b!5937257))

(assert (= (and b!5937257 (not res!2486980)) b!5937246))

(assert (= (and b!5937246 (not res!2486984)) b!5937256))

(assert (= (or b!5937251 b!5937252 b!5937257) bm!471687))

(declare-fun m!6827632 () Bool)

(assert (=> b!5937246 m!6827632))

(assert (=> b!5937246 m!6827632))

(declare-fun m!6827634 () Bool)

(assert (=> b!5937246 m!6827634))

(declare-fun m!6827636 () Bool)

(assert (=> bm!471687 m!6827636))

(assert (=> b!5937247 m!6827588))

(declare-fun m!6827638 () Bool)

(assert (=> b!5937255 m!6827638))

(assert (=> d!1861119 m!6827636))

(assert (=> d!1861119 m!6827590))

(assert (=> b!5937256 m!6827638))

(assert (=> b!5937250 m!6827632))

(assert (=> b!5937250 m!6827632))

(assert (=> b!5937250 m!6827634))

(assert (=> b!5937258 m!6827638))

(assert (=> b!5937258 m!6827638))

(declare-fun m!6827640 () Bool)

(assert (=> b!5937258 m!6827640))

(assert (=> b!5937258 m!6827632))

(assert (=> b!5937258 m!6827640))

(assert (=> b!5937258 m!6827632))

(declare-fun m!6827642 () Bool)

(assert (=> b!5937258 m!6827642))

(assert (=> b!5936668 d!1861119))

(declare-fun d!1861121 () Bool)

(assert (=> d!1861121 (= (get!22086 lt!2311355) (v!51973 lt!2311355))))

(assert (=> b!5936668 d!1861121))

(declare-fun d!1861123 () Bool)

(declare-fun res!2486988 () Bool)

(declare-fun e!3633261 () Bool)

(assert (=> d!1861123 (=> res!2486988 e!3633261)))

(assert (=> d!1861123 (= res!2486988 ((_ is Nil!64124) lt!2311399))))

(assert (=> d!1861123 (= (forall!15066 lt!2311399 lambda!323818) e!3633261)))

(declare-fun b!5937260 () Bool)

(declare-fun e!3633262 () Bool)

(assert (=> b!5937260 (= e!3633261 e!3633262)))

(declare-fun res!2486989 () Bool)

(assert (=> b!5937260 (=> (not res!2486989) (not e!3633262))))

(assert (=> b!5937260 (= res!2486989 (dynLambda!25081 lambda!323818 (h!70572 lt!2311399)))))

(declare-fun b!5937261 () Bool)

(assert (=> b!5937261 (= e!3633262 (forall!15066 (t!377651 lt!2311399) lambda!323818))))

(assert (= (and d!1861123 (not res!2486988)) b!5937260))

(assert (= (and b!5937260 res!2486989) b!5937261))

(declare-fun b_lambda!223017 () Bool)

(assert (=> (not b_lambda!223017) (not b!5937260)))

(declare-fun m!6827644 () Bool)

(assert (=> b!5937260 m!6827644))

(declare-fun m!6827646 () Bool)

(assert (=> b!5937261 m!6827646))

(assert (=> d!1861033 d!1861123))

(declare-fun d!1861125 () Bool)

(assert (=> d!1861125 (= (isDefined!12577 lt!2311355) (not (isEmpty!35996 lt!2311355)))))

(declare-fun bs!1404379 () Bool)

(assert (= bs!1404379 d!1861125))

(declare-fun m!6827648 () Bool)

(assert (=> bs!1404379 m!6827648))

(assert (=> d!1860973 d!1861125))

(declare-fun bm!471688 () Bool)

(declare-fun call!471693 () Bool)

(assert (=> bm!471688 (= call!471693 (isEmpty!35998 Nil!64126))))

(declare-fun b!5937262 () Bool)

(declare-fun res!2486994 () Bool)

(declare-fun e!3633263 () Bool)

(assert (=> b!5937262 (=> res!2486994 e!3633263)))

(assert (=> b!5937262 (= res!2486994 (not (isEmpty!35998 (tail!11593 Nil!64126))))))

(declare-fun b!5937263 () Bool)

(declare-fun e!3633267 () Bool)

(assert (=> b!5937263 (= e!3633267 (nullable!5978 (regOne!32478 r!7292)))))

(declare-fun b!5937264 () Bool)

(declare-fun e!3633268 () Bool)

(declare-fun e!3633265 () Bool)

(assert (=> b!5937264 (= e!3633268 e!3633265)))

(declare-fun c!1055674 () Bool)

(assert (=> b!5937264 (= c!1055674 ((_ is EmptyLang!15983) (regOne!32478 r!7292)))))

(declare-fun b!5937265 () Bool)

(declare-fun e!3633264 () Bool)

(declare-fun e!3633266 () Bool)

(assert (=> b!5937265 (= e!3633264 e!3633266)))

(declare-fun res!2486992 () Bool)

(assert (=> b!5937265 (=> (not res!2486992) (not e!3633266))))

(declare-fun lt!2311427 () Bool)

(assert (=> b!5937265 (= res!2486992 (not lt!2311427))))

(declare-fun b!5937266 () Bool)

(declare-fun res!2486991 () Bool)

(declare-fun e!3633269 () Bool)

(assert (=> b!5937266 (=> (not res!2486991) (not e!3633269))))

(assert (=> b!5937266 (= res!2486991 (isEmpty!35998 (tail!11593 Nil!64126)))))

(declare-fun b!5937267 () Bool)

(assert (=> b!5937267 (= e!3633268 (= lt!2311427 call!471693))))

(declare-fun b!5937268 () Bool)

(declare-fun res!2486996 () Bool)

(assert (=> b!5937268 (=> (not res!2486996) (not e!3633269))))

(assert (=> b!5937268 (= res!2486996 (not call!471693))))

(declare-fun b!5937269 () Bool)

(assert (=> b!5937269 (= e!3633265 (not lt!2311427))))

(declare-fun b!5937270 () Bool)

(declare-fun res!2486995 () Bool)

(assert (=> b!5937270 (=> res!2486995 e!3633264)))

(assert (=> b!5937270 (= res!2486995 e!3633269)))

(declare-fun res!2486997 () Bool)

(assert (=> b!5937270 (=> (not res!2486997) (not e!3633269))))

(assert (=> b!5937270 (= res!2486997 lt!2311427)))

(declare-fun b!5937271 () Bool)

(assert (=> b!5937271 (= e!3633269 (= (head!12508 Nil!64126) (c!1055457 (regOne!32478 r!7292))))))

(declare-fun b!5937272 () Bool)

(assert (=> b!5937272 (= e!3633263 (not (= (head!12508 Nil!64126) (c!1055457 (regOne!32478 r!7292)))))))

(declare-fun b!5937273 () Bool)

(assert (=> b!5937273 (= e!3633266 e!3633263)))

(declare-fun res!2486990 () Bool)

(assert (=> b!5937273 (=> res!2486990 e!3633263)))

(assert (=> b!5937273 (= res!2486990 call!471693)))

(declare-fun d!1861127 () Bool)

(assert (=> d!1861127 e!3633268))

(declare-fun c!1055672 () Bool)

(assert (=> d!1861127 (= c!1055672 ((_ is EmptyExpr!15983) (regOne!32478 r!7292)))))

(assert (=> d!1861127 (= lt!2311427 e!3633267)))

(declare-fun c!1055673 () Bool)

(assert (=> d!1861127 (= c!1055673 (isEmpty!35998 Nil!64126))))

(assert (=> d!1861127 (validRegex!7719 (regOne!32478 r!7292))))

(assert (=> d!1861127 (= (matchR!8166 (regOne!32478 r!7292) Nil!64126) lt!2311427)))

(declare-fun b!5937274 () Bool)

(assert (=> b!5937274 (= e!3633267 (matchR!8166 (derivativeStep!4714 (regOne!32478 r!7292) (head!12508 Nil!64126)) (tail!11593 Nil!64126)))))

(declare-fun b!5937275 () Bool)

(declare-fun res!2486993 () Bool)

(assert (=> b!5937275 (=> res!2486993 e!3633264)))

(assert (=> b!5937275 (= res!2486993 (not ((_ is ElementMatch!15983) (regOne!32478 r!7292))))))

(assert (=> b!5937275 (= e!3633265 e!3633264)))

(assert (= (and d!1861127 c!1055673) b!5937263))

(assert (= (and d!1861127 (not c!1055673)) b!5937274))

(assert (= (and d!1861127 c!1055672) b!5937267))

(assert (= (and d!1861127 (not c!1055672)) b!5937264))

(assert (= (and b!5937264 c!1055674) b!5937269))

(assert (= (and b!5937264 (not c!1055674)) b!5937275))

(assert (= (and b!5937275 (not res!2486993)) b!5937270))

(assert (= (and b!5937270 res!2486997) b!5937268))

(assert (= (and b!5937268 res!2486996) b!5937266))

(assert (= (and b!5937266 res!2486991) b!5937271))

(assert (= (and b!5937270 (not res!2486995)) b!5937265))

(assert (= (and b!5937265 res!2486992) b!5937273))

(assert (= (and b!5937273 (not res!2486990)) b!5937262))

(assert (= (and b!5937262 (not res!2486994)) b!5937272))

(assert (= (or b!5937267 b!5937268 b!5937273) bm!471688))

(declare-fun m!6827650 () Bool)

(assert (=> b!5937262 m!6827650))

(assert (=> b!5937262 m!6827650))

(declare-fun m!6827652 () Bool)

(assert (=> b!5937262 m!6827652))

(declare-fun m!6827654 () Bool)

(assert (=> bm!471688 m!6827654))

(assert (=> b!5937263 m!6827210))

(declare-fun m!6827656 () Bool)

(assert (=> b!5937271 m!6827656))

(assert (=> d!1861127 m!6827654))

(assert (=> d!1861127 m!6827284))

(assert (=> b!5937272 m!6827656))

(assert (=> b!5937266 m!6827650))

(assert (=> b!5937266 m!6827650))

(assert (=> b!5937266 m!6827652))

(assert (=> b!5937274 m!6827656))

(assert (=> b!5937274 m!6827656))

(declare-fun m!6827658 () Bool)

(assert (=> b!5937274 m!6827658))

(assert (=> b!5937274 m!6827650))

(assert (=> b!5937274 m!6827658))

(assert (=> b!5937274 m!6827650))

(declare-fun m!6827660 () Bool)

(assert (=> b!5937274 m!6827660))

(assert (=> d!1860973 d!1861127))

(declare-fun b!5937276 () Bool)

(declare-fun e!3633275 () Bool)

(declare-fun call!471694 () Bool)

(assert (=> b!5937276 (= e!3633275 call!471694)))

(declare-fun b!5937277 () Bool)

(declare-fun e!3633274 () Bool)

(declare-fun e!3633271 () Bool)

(assert (=> b!5937277 (= e!3633274 e!3633271)))

(declare-fun res!2486998 () Bool)

(assert (=> b!5937277 (= res!2486998 (not (nullable!5978 (reg!16312 (regOne!32478 r!7292)))))))

(assert (=> b!5937277 (=> (not res!2486998) (not e!3633271))))

(declare-fun b!5937278 () Bool)

(declare-fun e!3633276 () Bool)

(assert (=> b!5937278 (= e!3633274 e!3633276)))

(declare-fun c!1055675 () Bool)

(assert (=> b!5937278 (= c!1055675 ((_ is Union!15983) (regOne!32478 r!7292)))))

(declare-fun b!5937279 () Bool)

(declare-fun call!471695 () Bool)

(assert (=> b!5937279 (= e!3633271 call!471695)))

(declare-fun bm!471689 () Bool)

(declare-fun call!471696 () Bool)

(assert (=> bm!471689 (= call!471696 (validRegex!7719 (ite c!1055675 (regOne!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))))))

(declare-fun b!5937281 () Bool)

(declare-fun res!2487000 () Bool)

(declare-fun e!3633270 () Bool)

(assert (=> b!5937281 (=> (not res!2487000) (not e!3633270))))

(assert (=> b!5937281 (= res!2487000 call!471696)))

(assert (=> b!5937281 (= e!3633276 e!3633270)))

(declare-fun bm!471690 () Bool)

(declare-fun c!1055676 () Bool)

(assert (=> bm!471690 (= call!471695 (validRegex!7719 (ite c!1055676 (reg!16312 (regOne!32478 r!7292)) (ite c!1055675 (regTwo!32479 (regOne!32478 r!7292)) (regTwo!32478 (regOne!32478 r!7292))))))))

(declare-fun b!5937282 () Bool)

(assert (=> b!5937282 (= e!3633270 call!471694)))

(declare-fun bm!471691 () Bool)

(assert (=> bm!471691 (= call!471694 call!471695)))

(declare-fun b!5937283 () Bool)

(declare-fun res!2486999 () Bool)

(declare-fun e!3633272 () Bool)

(assert (=> b!5937283 (=> res!2486999 e!3633272)))

(assert (=> b!5937283 (= res!2486999 (not ((_ is Concat!24828) (regOne!32478 r!7292))))))

(assert (=> b!5937283 (= e!3633276 e!3633272)))

(declare-fun b!5937284 () Bool)

(assert (=> b!5937284 (= e!3633272 e!3633275)))

(declare-fun res!2487001 () Bool)

(assert (=> b!5937284 (=> (not res!2487001) (not e!3633275))))

(assert (=> b!5937284 (= res!2487001 call!471696)))

(declare-fun d!1861129 () Bool)

(declare-fun res!2487002 () Bool)

(declare-fun e!3633273 () Bool)

(assert (=> d!1861129 (=> res!2487002 e!3633273)))

(assert (=> d!1861129 (= res!2487002 ((_ is ElementMatch!15983) (regOne!32478 r!7292)))))

(assert (=> d!1861129 (= (validRegex!7719 (regOne!32478 r!7292)) e!3633273)))

(declare-fun b!5937280 () Bool)

(assert (=> b!5937280 (= e!3633273 e!3633274)))

(assert (=> b!5937280 (= c!1055676 ((_ is Star!15983) (regOne!32478 r!7292)))))

(assert (= (and d!1861129 (not res!2487002)) b!5937280))

(assert (= (and b!5937280 c!1055676) b!5937277))

(assert (= (and b!5937280 (not c!1055676)) b!5937278))

(assert (= (and b!5937277 res!2486998) b!5937279))

(assert (= (and b!5937278 c!1055675) b!5937281))

(assert (= (and b!5937278 (not c!1055675)) b!5937283))

(assert (= (and b!5937281 res!2487000) b!5937282))

(assert (= (and b!5937283 (not res!2486999)) b!5937284))

(assert (= (and b!5937284 res!2487001) b!5937276))

(assert (= (or b!5937282 b!5937276) bm!471691))

(assert (= (or b!5937281 b!5937284) bm!471689))

(assert (= (or b!5937279 bm!471691) bm!471690))

(declare-fun m!6827662 () Bool)

(assert (=> b!5937277 m!6827662))

(declare-fun m!6827664 () Bool)

(assert (=> bm!471689 m!6827664))

(declare-fun m!6827666 () Bool)

(assert (=> bm!471690 m!6827666))

(assert (=> d!1860973 d!1861129))

(assert (=> bs!1404377 d!1861071))

(declare-fun b!5937285 () Bool)

(declare-fun e!3633282 () Bool)

(declare-fun call!471697 () Bool)

(assert (=> b!5937285 (= e!3633282 call!471697)))

(declare-fun b!5937286 () Bool)

(declare-fun e!3633281 () Bool)

(declare-fun e!3633278 () Bool)

(assert (=> b!5937286 (= e!3633281 e!3633278)))

(declare-fun res!2487003 () Bool)

(assert (=> b!5937286 (= res!2487003 (not (nullable!5978 (reg!16312 lt!2311411))))))

(assert (=> b!5937286 (=> (not res!2487003) (not e!3633278))))

(declare-fun b!5937287 () Bool)

(declare-fun e!3633283 () Bool)

(assert (=> b!5937287 (= e!3633281 e!3633283)))

(declare-fun c!1055677 () Bool)

(assert (=> b!5937287 (= c!1055677 ((_ is Union!15983) lt!2311411))))

(declare-fun b!5937288 () Bool)

(declare-fun call!471698 () Bool)

(assert (=> b!5937288 (= e!3633278 call!471698)))

(declare-fun bm!471692 () Bool)

(declare-fun call!471699 () Bool)

(assert (=> bm!471692 (= call!471699 (validRegex!7719 (ite c!1055677 (regOne!32479 lt!2311411) (regOne!32478 lt!2311411))))))

(declare-fun b!5937290 () Bool)

(declare-fun res!2487005 () Bool)

(declare-fun e!3633277 () Bool)

(assert (=> b!5937290 (=> (not res!2487005) (not e!3633277))))

(assert (=> b!5937290 (= res!2487005 call!471699)))

(assert (=> b!5937290 (= e!3633283 e!3633277)))

(declare-fun bm!471693 () Bool)

(declare-fun c!1055678 () Bool)

(assert (=> bm!471693 (= call!471698 (validRegex!7719 (ite c!1055678 (reg!16312 lt!2311411) (ite c!1055677 (regTwo!32479 lt!2311411) (regTwo!32478 lt!2311411)))))))

(declare-fun b!5937291 () Bool)

(assert (=> b!5937291 (= e!3633277 call!471697)))

(declare-fun bm!471694 () Bool)

(assert (=> bm!471694 (= call!471697 call!471698)))

(declare-fun b!5937292 () Bool)

(declare-fun res!2487004 () Bool)

(declare-fun e!3633279 () Bool)

(assert (=> b!5937292 (=> res!2487004 e!3633279)))

(assert (=> b!5937292 (= res!2487004 (not ((_ is Concat!24828) lt!2311411)))))

(assert (=> b!5937292 (= e!3633283 e!3633279)))

(declare-fun b!5937293 () Bool)

(assert (=> b!5937293 (= e!3633279 e!3633282)))

(declare-fun res!2487006 () Bool)

(assert (=> b!5937293 (=> (not res!2487006) (not e!3633282))))

(assert (=> b!5937293 (= res!2487006 call!471699)))

(declare-fun d!1861131 () Bool)

(declare-fun res!2487007 () Bool)

(declare-fun e!3633280 () Bool)

(assert (=> d!1861131 (=> res!2487007 e!3633280)))

(assert (=> d!1861131 (= res!2487007 ((_ is ElementMatch!15983) lt!2311411))))

(assert (=> d!1861131 (= (validRegex!7719 lt!2311411) e!3633280)))

(declare-fun b!5937289 () Bool)

(assert (=> b!5937289 (= e!3633280 e!3633281)))

(assert (=> b!5937289 (= c!1055678 ((_ is Star!15983) lt!2311411))))

(assert (= (and d!1861131 (not res!2487007)) b!5937289))

(assert (= (and b!5937289 c!1055678) b!5937286))

(assert (= (and b!5937289 (not c!1055678)) b!5937287))

(assert (= (and b!5937286 res!2487003) b!5937288))

(assert (= (and b!5937287 c!1055677) b!5937290))

(assert (= (and b!5937287 (not c!1055677)) b!5937292))

(assert (= (and b!5937290 res!2487005) b!5937291))

(assert (= (and b!5937292 (not res!2487004)) b!5937293))

(assert (= (and b!5937293 res!2487006) b!5937285))

(assert (= (or b!5937291 b!5937285) bm!471694))

(assert (= (or b!5937290 b!5937293) bm!471692))

(assert (= (or b!5937288 bm!471694) bm!471693))

(declare-fun m!6827668 () Bool)

(assert (=> b!5937286 m!6827668))

(declare-fun m!6827670 () Bool)

(assert (=> bm!471692 m!6827670))

(declare-fun m!6827672 () Bool)

(assert (=> bm!471693 m!6827672))

(assert (=> d!1861077 d!1861131))

(assert (=> d!1861077 d!1861027))

(assert (=> d!1861077 d!1861033))

(assert (=> b!5936670 d!1861125))

(declare-fun d!1861133 () Bool)

(assert (=> d!1861133 (= (flatMap!1496 z!1189 lambda!323805) (choose!44745 z!1189 lambda!323805))))

(declare-fun bs!1404380 () Bool)

(assert (= bs!1404380 d!1861133))

(declare-fun m!6827674 () Bool)

(assert (=> bs!1404380 m!6827674))

(assert (=> d!1861017 d!1861133))

(declare-fun d!1861135 () Bool)

(assert (=> d!1861135 (= ($colon$colon!1870 (exprs!5867 lt!2311327) (ite (or c!1055604 c!1055608) (regTwo!32478 (regOne!32478 r!7292)) (regOne!32478 r!7292))) (Cons!64124 (ite (or c!1055604 c!1055608) (regTwo!32478 (regOne!32478 r!7292)) (regOne!32478 r!7292)) (exprs!5867 lt!2311327)))))

(assert (=> bm!471658 d!1861135))

(declare-fun d!1861137 () Bool)

(assert (=> d!1861137 (= (isEmpty!35993 (t!377651 (unfocusZipperList!1404 zl!343))) ((_ is Nil!64124) (t!377651 (unfocusZipperList!1404 zl!343))))))

(assert (=> b!5936876 d!1861137))

(declare-fun bm!471695 () Bool)

(declare-fun call!471700 () Bool)

(assert (=> bm!471695 (= call!471700 (isEmpty!35998 (_1!36265 (get!22086 lt!2311355))))))

(declare-fun b!5937294 () Bool)

(declare-fun res!2487012 () Bool)

(declare-fun e!3633284 () Bool)

(assert (=> b!5937294 (=> res!2487012 e!3633284)))

(assert (=> b!5937294 (= res!2487012 (not (isEmpty!35998 (tail!11593 (_1!36265 (get!22086 lt!2311355))))))))

(declare-fun b!5937295 () Bool)

(declare-fun e!3633288 () Bool)

(assert (=> b!5937295 (= e!3633288 (nullable!5978 (regOne!32478 r!7292)))))

(declare-fun b!5937296 () Bool)

(declare-fun e!3633289 () Bool)

(declare-fun e!3633286 () Bool)

(assert (=> b!5937296 (= e!3633289 e!3633286)))

(declare-fun c!1055681 () Bool)

(assert (=> b!5937296 (= c!1055681 ((_ is EmptyLang!15983) (regOne!32478 r!7292)))))

(declare-fun b!5937297 () Bool)

(declare-fun e!3633285 () Bool)

(declare-fun e!3633287 () Bool)

(assert (=> b!5937297 (= e!3633285 e!3633287)))

(declare-fun res!2487010 () Bool)

(assert (=> b!5937297 (=> (not res!2487010) (not e!3633287))))

(declare-fun lt!2311428 () Bool)

(assert (=> b!5937297 (= res!2487010 (not lt!2311428))))

(declare-fun b!5937298 () Bool)

(declare-fun res!2487009 () Bool)

(declare-fun e!3633290 () Bool)

(assert (=> b!5937298 (=> (not res!2487009) (not e!3633290))))

(assert (=> b!5937298 (= res!2487009 (isEmpty!35998 (tail!11593 (_1!36265 (get!22086 lt!2311355)))))))

(declare-fun b!5937299 () Bool)

(assert (=> b!5937299 (= e!3633289 (= lt!2311428 call!471700))))

(declare-fun b!5937300 () Bool)

(declare-fun res!2487014 () Bool)

(assert (=> b!5937300 (=> (not res!2487014) (not e!3633290))))

(assert (=> b!5937300 (= res!2487014 (not call!471700))))

(declare-fun b!5937301 () Bool)

(assert (=> b!5937301 (= e!3633286 (not lt!2311428))))

(declare-fun b!5937302 () Bool)

(declare-fun res!2487013 () Bool)

(assert (=> b!5937302 (=> res!2487013 e!3633285)))

(assert (=> b!5937302 (= res!2487013 e!3633290)))

(declare-fun res!2487015 () Bool)

(assert (=> b!5937302 (=> (not res!2487015) (not e!3633290))))

(assert (=> b!5937302 (= res!2487015 lt!2311428)))

(declare-fun b!5937303 () Bool)

(assert (=> b!5937303 (= e!3633290 (= (head!12508 (_1!36265 (get!22086 lt!2311355))) (c!1055457 (regOne!32478 r!7292))))))

(declare-fun b!5937304 () Bool)

(assert (=> b!5937304 (= e!3633284 (not (= (head!12508 (_1!36265 (get!22086 lt!2311355))) (c!1055457 (regOne!32478 r!7292)))))))

(declare-fun b!5937305 () Bool)

(assert (=> b!5937305 (= e!3633287 e!3633284)))

(declare-fun res!2487008 () Bool)

(assert (=> b!5937305 (=> res!2487008 e!3633284)))

(assert (=> b!5937305 (= res!2487008 call!471700)))

(declare-fun d!1861139 () Bool)

(assert (=> d!1861139 e!3633289))

(declare-fun c!1055679 () Bool)

(assert (=> d!1861139 (= c!1055679 ((_ is EmptyExpr!15983) (regOne!32478 r!7292)))))

(assert (=> d!1861139 (= lt!2311428 e!3633288)))

(declare-fun c!1055680 () Bool)

(assert (=> d!1861139 (= c!1055680 (isEmpty!35998 (_1!36265 (get!22086 lt!2311355))))))

(assert (=> d!1861139 (validRegex!7719 (regOne!32478 r!7292))))

(assert (=> d!1861139 (= (matchR!8166 (regOne!32478 r!7292) (_1!36265 (get!22086 lt!2311355))) lt!2311428)))

(declare-fun b!5937306 () Bool)

(assert (=> b!5937306 (= e!3633288 (matchR!8166 (derivativeStep!4714 (regOne!32478 r!7292) (head!12508 (_1!36265 (get!22086 lt!2311355)))) (tail!11593 (_1!36265 (get!22086 lt!2311355)))))))

(declare-fun b!5937307 () Bool)

(declare-fun res!2487011 () Bool)

(assert (=> b!5937307 (=> res!2487011 e!3633285)))

(assert (=> b!5937307 (= res!2487011 (not ((_ is ElementMatch!15983) (regOne!32478 r!7292))))))

(assert (=> b!5937307 (= e!3633286 e!3633285)))

(assert (= (and d!1861139 c!1055680) b!5937295))

(assert (= (and d!1861139 (not c!1055680)) b!5937306))

(assert (= (and d!1861139 c!1055679) b!5937299))

(assert (= (and d!1861139 (not c!1055679)) b!5937296))

(assert (= (and b!5937296 c!1055681) b!5937301))

(assert (= (and b!5937296 (not c!1055681)) b!5937307))

(assert (= (and b!5937307 (not res!2487011)) b!5937302))

(assert (= (and b!5937302 res!2487015) b!5937300))

(assert (= (and b!5937300 res!2487014) b!5937298))

(assert (= (and b!5937298 res!2487009) b!5937303))

(assert (= (and b!5937302 (not res!2487013)) b!5937297))

(assert (= (and b!5937297 res!2487010) b!5937305))

(assert (= (and b!5937305 (not res!2487008)) b!5937294))

(assert (= (and b!5937294 (not res!2487012)) b!5937304))

(assert (= (or b!5937299 b!5937300 b!5937305) bm!471695))

(declare-fun m!6827676 () Bool)

(assert (=> b!5937294 m!6827676))

(assert (=> b!5937294 m!6827676))

(declare-fun m!6827678 () Bool)

(assert (=> b!5937294 m!6827678))

(declare-fun m!6827680 () Bool)

(assert (=> bm!471695 m!6827680))

(assert (=> b!5937295 m!6827210))

(declare-fun m!6827682 () Bool)

(assert (=> b!5937303 m!6827682))

(assert (=> d!1861139 m!6827680))

(assert (=> d!1861139 m!6827284))

(assert (=> b!5937304 m!6827682))

(assert (=> b!5937298 m!6827676))

(assert (=> b!5937298 m!6827676))

(assert (=> b!5937298 m!6827678))

(assert (=> b!5937306 m!6827682))

(assert (=> b!5937306 m!6827682))

(declare-fun m!6827684 () Bool)

(assert (=> b!5937306 m!6827684))

(assert (=> b!5937306 m!6827676))

(assert (=> b!5937306 m!6827684))

(assert (=> b!5937306 m!6827676))

(declare-fun m!6827686 () Bool)

(assert (=> b!5937306 m!6827686))

(assert (=> b!5936672 d!1861139))

(assert (=> b!5936672 d!1861121))

(declare-fun b!5937308 () Bool)

(declare-fun e!3633296 () Bool)

(declare-fun call!471701 () Bool)

(assert (=> b!5937308 (= e!3633296 call!471701)))

(declare-fun b!5937309 () Bool)

(declare-fun e!3633295 () Bool)

(declare-fun e!3633292 () Bool)

(assert (=> b!5937309 (= e!3633295 e!3633292)))

(declare-fun res!2487016 () Bool)

(assert (=> b!5937309 (= res!2487016 (not (nullable!5978 (reg!16312 lt!2311420))))))

(assert (=> b!5937309 (=> (not res!2487016) (not e!3633292))))

(declare-fun b!5937310 () Bool)

(declare-fun e!3633297 () Bool)

(assert (=> b!5937310 (= e!3633295 e!3633297)))

(declare-fun c!1055682 () Bool)

(assert (=> b!5937310 (= c!1055682 ((_ is Union!15983) lt!2311420))))

(declare-fun b!5937311 () Bool)

(declare-fun call!471702 () Bool)

(assert (=> b!5937311 (= e!3633292 call!471702)))

(declare-fun bm!471696 () Bool)

(declare-fun call!471703 () Bool)

(assert (=> bm!471696 (= call!471703 (validRegex!7719 (ite c!1055682 (regOne!32479 lt!2311420) (regOne!32478 lt!2311420))))))

(declare-fun b!5937313 () Bool)

(declare-fun res!2487018 () Bool)

(declare-fun e!3633291 () Bool)

(assert (=> b!5937313 (=> (not res!2487018) (not e!3633291))))

(assert (=> b!5937313 (= res!2487018 call!471703)))

(assert (=> b!5937313 (= e!3633297 e!3633291)))

(declare-fun bm!471697 () Bool)

(declare-fun c!1055683 () Bool)

(assert (=> bm!471697 (= call!471702 (validRegex!7719 (ite c!1055683 (reg!16312 lt!2311420) (ite c!1055682 (regTwo!32479 lt!2311420) (regTwo!32478 lt!2311420)))))))

(declare-fun b!5937314 () Bool)

(assert (=> b!5937314 (= e!3633291 call!471701)))

(declare-fun bm!471698 () Bool)

(assert (=> bm!471698 (= call!471701 call!471702)))

(declare-fun b!5937315 () Bool)

(declare-fun res!2487017 () Bool)

(declare-fun e!3633293 () Bool)

(assert (=> b!5937315 (=> res!2487017 e!3633293)))

(assert (=> b!5937315 (= res!2487017 (not ((_ is Concat!24828) lt!2311420)))))

(assert (=> b!5937315 (= e!3633297 e!3633293)))

(declare-fun b!5937316 () Bool)

(assert (=> b!5937316 (= e!3633293 e!3633296)))

(declare-fun res!2487019 () Bool)

(assert (=> b!5937316 (=> (not res!2487019) (not e!3633296))))

(assert (=> b!5937316 (= res!2487019 call!471703)))

(declare-fun d!1861141 () Bool)

(declare-fun res!2487020 () Bool)

(declare-fun e!3633294 () Bool)

(assert (=> d!1861141 (=> res!2487020 e!3633294)))

(assert (=> d!1861141 (= res!2487020 ((_ is ElementMatch!15983) lt!2311420))))

(assert (=> d!1861141 (= (validRegex!7719 lt!2311420) e!3633294)))

(declare-fun b!5937312 () Bool)

(assert (=> b!5937312 (= e!3633294 e!3633295)))

(assert (=> b!5937312 (= c!1055683 ((_ is Star!15983) lt!2311420))))

(assert (= (and d!1861141 (not res!2487020)) b!5937312))

(assert (= (and b!5937312 c!1055683) b!5937309))

(assert (= (and b!5937312 (not c!1055683)) b!5937310))

(assert (= (and b!5937309 res!2487016) b!5937311))

(assert (= (and b!5937310 c!1055682) b!5937313))

(assert (= (and b!5937310 (not c!1055682)) b!5937315))

(assert (= (and b!5937313 res!2487018) b!5937314))

(assert (= (and b!5937315 (not res!2487017)) b!5937316))

(assert (= (and b!5937316 res!2487019) b!5937308))

(assert (= (or b!5937314 b!5937308) bm!471698))

(assert (= (or b!5937313 b!5937316) bm!471696))

(assert (= (or b!5937311 bm!471698) bm!471697))

(declare-fun m!6827688 () Bool)

(assert (=> b!5937309 m!6827688))

(declare-fun m!6827690 () Bool)

(assert (=> bm!471696 m!6827690))

(declare-fun m!6827692 () Bool)

(assert (=> bm!471697 m!6827692))

(assert (=> d!1861091 d!1861141))

(declare-fun d!1861143 () Bool)

(declare-fun res!2487021 () Bool)

(declare-fun e!3633298 () Bool)

(assert (=> d!1861143 (=> res!2487021 e!3633298)))

(assert (=> d!1861143 (= res!2487021 ((_ is Nil!64124) (exprs!5867 (h!70573 zl!343))))))

(assert (=> d!1861143 (= (forall!15066 (exprs!5867 (h!70573 zl!343)) lambda!323830) e!3633298)))

(declare-fun b!5937317 () Bool)

(declare-fun e!3633299 () Bool)

(assert (=> b!5937317 (= e!3633298 e!3633299)))

(declare-fun res!2487022 () Bool)

(assert (=> b!5937317 (=> (not res!2487022) (not e!3633299))))

(assert (=> b!5937317 (= res!2487022 (dynLambda!25081 lambda!323830 (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5937318 () Bool)

(assert (=> b!5937318 (= e!3633299 (forall!15066 (t!377651 (exprs!5867 (h!70573 zl!343))) lambda!323830))))

(assert (= (and d!1861143 (not res!2487021)) b!5937317))

(assert (= (and b!5937317 res!2487022) b!5937318))

(declare-fun b_lambda!223019 () Bool)

(assert (=> (not b_lambda!223019) (not b!5937317)))

(declare-fun m!6827694 () Bool)

(assert (=> b!5937317 m!6827694))

(declare-fun m!6827696 () Bool)

(assert (=> b!5937318 m!6827696))

(assert (=> d!1861091 d!1861143))

(declare-fun d!1861145 () Bool)

(assert (=> d!1861145 (= (isUnion!850 lt!2311395) ((_ is Union!15983) lt!2311395))))

(assert (=> b!5936878 d!1861145))

(declare-fun d!1861147 () Bool)

(assert (=> d!1861147 (= (isEmpty!35998 s!2326) ((_ is Nil!64126) s!2326))))

(assert (=> bm!471669 d!1861147))

(declare-fun bs!1404381 () Bool)

(declare-fun b!5937323 () Bool)

(assert (= bs!1404381 (and b!5937323 b!5937038)))

(declare-fun lambda!323831 () Int)

(assert (=> bs!1404381 (= (and (= (reg!16312 (regTwo!32479 r!7292)) (reg!16312 r!7292)) (= (regTwo!32479 r!7292) r!7292)) (= lambda!323831 lambda!323826))))

(declare-fun bs!1404382 () Bool)

(assert (= bs!1404382 (and b!5937323 d!1860993)))

(assert (=> bs!1404382 (not (= lambda!323831 lambda!323787))))

(declare-fun bs!1404383 () Bool)

(assert (= bs!1404383 (and b!5937323 d!1861001)))

(assert (=> bs!1404383 (not (= lambda!323831 lambda!323799))))

(declare-fun bs!1404384 () Bool)

(assert (= bs!1404384 (and b!5937323 b!5937039)))

(assert (=> bs!1404384 (not (= lambda!323831 lambda!323827))))

(assert (=> bs!1404383 (not (= lambda!323831 lambda!323798))))

(declare-fun bs!1404385 () Bool)

(assert (= bs!1404385 (and b!5937323 b!5936450)))

(assert (=> bs!1404385 (not (= lambda!323831 lambda!323765))))

(assert (=> bs!1404385 (not (= lambda!323831 lambda!323764))))

(assert (=> b!5937323 true))

(assert (=> b!5937323 true))

(declare-fun bs!1404386 () Bool)

(declare-fun b!5937324 () Bool)

(assert (= bs!1404386 (and b!5937324 b!5937038)))

(declare-fun lambda!323832 () Int)

(assert (=> bs!1404386 (not (= lambda!323832 lambda!323826))))

(declare-fun bs!1404387 () Bool)

(assert (= bs!1404387 (and b!5937324 d!1860993)))

(assert (=> bs!1404387 (not (= lambda!323832 lambda!323787))))

(declare-fun bs!1404388 () Bool)

(assert (= bs!1404388 (and b!5937324 d!1861001)))

(assert (=> bs!1404388 (= (and (= (regOne!32478 (regTwo!32479 r!7292)) (regOne!32478 r!7292)) (= (regTwo!32478 (regTwo!32479 r!7292)) (regTwo!32478 r!7292))) (= lambda!323832 lambda!323799))))

(declare-fun bs!1404389 () Bool)

(assert (= bs!1404389 (and b!5937324 b!5937039)))

(assert (=> bs!1404389 (= (and (= (regOne!32478 (regTwo!32479 r!7292)) (regOne!32478 r!7292)) (= (regTwo!32478 (regTwo!32479 r!7292)) (regTwo!32478 r!7292))) (= lambda!323832 lambda!323827))))

(assert (=> bs!1404388 (not (= lambda!323832 lambda!323798))))

(declare-fun bs!1404390 () Bool)

(assert (= bs!1404390 (and b!5937324 b!5936450)))

(assert (=> bs!1404390 (= (and (= (regOne!32478 (regTwo!32479 r!7292)) (regOne!32478 r!7292)) (= (regTwo!32478 (regTwo!32479 r!7292)) (regTwo!32478 r!7292))) (= lambda!323832 lambda!323765))))

(declare-fun bs!1404391 () Bool)

(assert (= bs!1404391 (and b!5937324 b!5937323)))

(assert (=> bs!1404391 (not (= lambda!323832 lambda!323831))))

(assert (=> bs!1404390 (not (= lambda!323832 lambda!323764))))

(assert (=> b!5937324 true))

(assert (=> b!5937324 true))

(declare-fun bm!471699 () Bool)

(declare-fun call!471705 () Bool)

(assert (=> bm!471699 (= call!471705 (isEmpty!35998 s!2326))))

(declare-fun b!5937319 () Bool)

(declare-fun e!3633300 () Bool)

(assert (=> b!5937319 (= e!3633300 (matchRSpec!3084 (regTwo!32479 (regTwo!32479 r!7292)) s!2326))))

(declare-fun b!5937320 () Bool)

(declare-fun e!3633305 () Bool)

(assert (=> b!5937320 (= e!3633305 e!3633300)))

(declare-fun res!2487025 () Bool)

(assert (=> b!5937320 (= res!2487025 (matchRSpec!3084 (regOne!32479 (regTwo!32479 r!7292)) s!2326))))

(assert (=> b!5937320 (=> res!2487025 e!3633300)))

(declare-fun b!5937321 () Bool)

(declare-fun c!1055685 () Bool)

(assert (=> b!5937321 (= c!1055685 ((_ is Union!15983) (regTwo!32479 r!7292)))))

(declare-fun e!3633304 () Bool)

(assert (=> b!5937321 (= e!3633304 e!3633305)))

(declare-fun bm!471700 () Bool)

(declare-fun call!471704 () Bool)

(declare-fun c!1055684 () Bool)

(assert (=> bm!471700 (= call!471704 (Exists!3053 (ite c!1055684 lambda!323831 lambda!323832)))))

(declare-fun b!5937322 () Bool)

(declare-fun e!3633301 () Bool)

(assert (=> b!5937322 (= e!3633305 e!3633301)))

(assert (=> b!5937322 (= c!1055684 ((_ is Star!15983) (regTwo!32479 r!7292)))))

(declare-fun e!3633306 () Bool)

(assert (=> b!5937323 (= e!3633306 call!471704)))

(assert (=> b!5937324 (= e!3633301 call!471704)))

(declare-fun d!1861149 () Bool)

(declare-fun c!1055687 () Bool)

(assert (=> d!1861149 (= c!1055687 ((_ is EmptyExpr!15983) (regTwo!32479 r!7292)))))

(declare-fun e!3633302 () Bool)

(assert (=> d!1861149 (= (matchRSpec!3084 (regTwo!32479 r!7292) s!2326) e!3633302)))

(declare-fun b!5937325 () Bool)

(assert (=> b!5937325 (= e!3633304 (= s!2326 (Cons!64126 (c!1055457 (regTwo!32479 r!7292)) Nil!64126)))))

(declare-fun b!5937326 () Bool)

(declare-fun c!1055686 () Bool)

(assert (=> b!5937326 (= c!1055686 ((_ is ElementMatch!15983) (regTwo!32479 r!7292)))))

(declare-fun e!3633303 () Bool)

(assert (=> b!5937326 (= e!3633303 e!3633304)))

(declare-fun b!5937327 () Bool)

(assert (=> b!5937327 (= e!3633302 call!471705)))

(declare-fun b!5937328 () Bool)

(assert (=> b!5937328 (= e!3633302 e!3633303)))

(declare-fun res!2487023 () Bool)

(assert (=> b!5937328 (= res!2487023 (not ((_ is EmptyLang!15983) (regTwo!32479 r!7292))))))

(assert (=> b!5937328 (=> (not res!2487023) (not e!3633303))))

(declare-fun b!5937329 () Bool)

(declare-fun res!2487024 () Bool)

(assert (=> b!5937329 (=> res!2487024 e!3633306)))

(assert (=> b!5937329 (= res!2487024 call!471705)))

(assert (=> b!5937329 (= e!3633301 e!3633306)))

(assert (= (and d!1861149 c!1055687) b!5937327))

(assert (= (and d!1861149 (not c!1055687)) b!5937328))

(assert (= (and b!5937328 res!2487023) b!5937326))

(assert (= (and b!5937326 c!1055686) b!5937325))

(assert (= (and b!5937326 (not c!1055686)) b!5937321))

(assert (= (and b!5937321 c!1055685) b!5937320))

(assert (= (and b!5937321 (not c!1055685)) b!5937322))

(assert (= (and b!5937320 (not res!2487025)) b!5937319))

(assert (= (and b!5937322 c!1055684) b!5937329))

(assert (= (and b!5937322 (not c!1055684)) b!5937324))

(assert (= (and b!5937329 (not res!2487024)) b!5937323))

(assert (= (or b!5937323 b!5937324) bm!471700))

(assert (= (or b!5937327 b!5937329) bm!471699))

(assert (=> bm!471699 m!6827544))

(declare-fun m!6827698 () Bool)

(assert (=> b!5937319 m!6827698))

(declare-fun m!6827700 () Bool)

(assert (=> b!5937320 m!6827700))

(declare-fun m!6827702 () Bool)

(assert (=> bm!471700 m!6827702))

(assert (=> b!5937034 d!1861149))

(declare-fun b!5937330 () Bool)

(declare-fun e!3633312 () Bool)

(declare-fun call!471706 () Bool)

(assert (=> b!5937330 (= e!3633312 call!471706)))

(declare-fun b!5937331 () Bool)

(declare-fun e!3633311 () Bool)

(declare-fun e!3633308 () Bool)

(assert (=> b!5937331 (= e!3633311 e!3633308)))

(declare-fun res!2487026 () Bool)

(assert (=> b!5937331 (= res!2487026 (not (nullable!5978 (reg!16312 lt!2311395))))))

(assert (=> b!5937331 (=> (not res!2487026) (not e!3633308))))

(declare-fun b!5937332 () Bool)

(declare-fun e!3633313 () Bool)

(assert (=> b!5937332 (= e!3633311 e!3633313)))

(declare-fun c!1055688 () Bool)

(assert (=> b!5937332 (= c!1055688 ((_ is Union!15983) lt!2311395))))

(declare-fun b!5937333 () Bool)

(declare-fun call!471707 () Bool)

(assert (=> b!5937333 (= e!3633308 call!471707)))

(declare-fun bm!471701 () Bool)

(declare-fun call!471708 () Bool)

(assert (=> bm!471701 (= call!471708 (validRegex!7719 (ite c!1055688 (regOne!32479 lt!2311395) (regOne!32478 lt!2311395))))))

(declare-fun b!5937335 () Bool)

(declare-fun res!2487028 () Bool)

(declare-fun e!3633307 () Bool)

(assert (=> b!5937335 (=> (not res!2487028) (not e!3633307))))

(assert (=> b!5937335 (= res!2487028 call!471708)))

(assert (=> b!5937335 (= e!3633313 e!3633307)))

(declare-fun c!1055689 () Bool)

(declare-fun bm!471702 () Bool)

(assert (=> bm!471702 (= call!471707 (validRegex!7719 (ite c!1055689 (reg!16312 lt!2311395) (ite c!1055688 (regTwo!32479 lt!2311395) (regTwo!32478 lt!2311395)))))))

(declare-fun b!5937336 () Bool)

(assert (=> b!5937336 (= e!3633307 call!471706)))

(declare-fun bm!471703 () Bool)

(assert (=> bm!471703 (= call!471706 call!471707)))

(declare-fun b!5937337 () Bool)

(declare-fun res!2487027 () Bool)

(declare-fun e!3633309 () Bool)

(assert (=> b!5937337 (=> res!2487027 e!3633309)))

(assert (=> b!5937337 (= res!2487027 (not ((_ is Concat!24828) lt!2311395)))))

(assert (=> b!5937337 (= e!3633313 e!3633309)))

(declare-fun b!5937338 () Bool)

(assert (=> b!5937338 (= e!3633309 e!3633312)))

(declare-fun res!2487029 () Bool)

(assert (=> b!5937338 (=> (not res!2487029) (not e!3633312))))

(assert (=> b!5937338 (= res!2487029 call!471708)))

(declare-fun d!1861151 () Bool)

(declare-fun res!2487030 () Bool)

(declare-fun e!3633310 () Bool)

(assert (=> d!1861151 (=> res!2487030 e!3633310)))

(assert (=> d!1861151 (= res!2487030 ((_ is ElementMatch!15983) lt!2311395))))

(assert (=> d!1861151 (= (validRegex!7719 lt!2311395) e!3633310)))

(declare-fun b!5937334 () Bool)

(assert (=> b!5937334 (= e!3633310 e!3633311)))

(assert (=> b!5937334 (= c!1055689 ((_ is Star!15983) lt!2311395))))

(assert (= (and d!1861151 (not res!2487030)) b!5937334))

(assert (= (and b!5937334 c!1055689) b!5937331))

(assert (= (and b!5937334 (not c!1055689)) b!5937332))

(assert (= (and b!5937331 res!2487026) b!5937333))

(assert (= (and b!5937332 c!1055688) b!5937335))

(assert (= (and b!5937332 (not c!1055688)) b!5937337))

(assert (= (and b!5937335 res!2487028) b!5937336))

(assert (= (and b!5937337 (not res!2487027)) b!5937338))

(assert (= (and b!5937338 res!2487029) b!5937330))

(assert (= (or b!5937336 b!5937330) bm!471703))

(assert (= (or b!5937335 b!5937338) bm!471701))

(assert (= (or b!5937333 bm!471703) bm!471702))

(declare-fun m!6827704 () Bool)

(assert (=> b!5937331 m!6827704))

(declare-fun m!6827706 () Bool)

(assert (=> bm!471701 m!6827706))

(declare-fun m!6827708 () Bool)

(assert (=> bm!471702 m!6827708))

(assert (=> d!1861027 d!1861151))

(declare-fun d!1861153 () Bool)

(declare-fun res!2487031 () Bool)

(declare-fun e!3633314 () Bool)

(assert (=> d!1861153 (=> res!2487031 e!3633314)))

(assert (=> d!1861153 (= res!2487031 ((_ is Nil!64124) (unfocusZipperList!1404 zl!343)))))

(assert (=> d!1861153 (= (forall!15066 (unfocusZipperList!1404 zl!343) lambda!323814) e!3633314)))

(declare-fun b!5937339 () Bool)

(declare-fun e!3633315 () Bool)

(assert (=> b!5937339 (= e!3633314 e!3633315)))

(declare-fun res!2487032 () Bool)

(assert (=> b!5937339 (=> (not res!2487032) (not e!3633315))))

(assert (=> b!5937339 (= res!2487032 (dynLambda!25081 lambda!323814 (h!70572 (unfocusZipperList!1404 zl!343))))))

(declare-fun b!5937340 () Bool)

(assert (=> b!5937340 (= e!3633315 (forall!15066 (t!377651 (unfocusZipperList!1404 zl!343)) lambda!323814))))

(assert (= (and d!1861153 (not res!2487031)) b!5937339))

(assert (= (and b!5937339 res!2487032) b!5937340))

(declare-fun b_lambda!223021 () Bool)

(assert (=> (not b_lambda!223021) (not b!5937339)))

(declare-fun m!6827710 () Bool)

(assert (=> b!5937339 m!6827710))

(declare-fun m!6827712 () Bool)

(assert (=> b!5937340 m!6827712))

(assert (=> d!1861027 d!1861153))

(declare-fun d!1861155 () Bool)

(assert (=> d!1861155 true))

(declare-fun setRes!40323 () Bool)

(assert (=> d!1861155 setRes!40323))

(declare-fun condSetEmpty!40323 () Bool)

(declare-fun res!2487035 () (InoxSet Context!10734))

(assert (=> d!1861155 (= condSetEmpty!40323 (= res!2487035 ((as const (Array Context!10734 Bool)) false)))))

(assert (=> d!1861155 (= (choose!44745 lt!2311332 lambda!323766) res!2487035)))

(declare-fun setIsEmpty!40323 () Bool)

(assert (=> setIsEmpty!40323 setRes!40323))

(declare-fun setElem!40323 () Context!10734)

(declare-fun setNonEmpty!40323 () Bool)

(declare-fun e!3633318 () Bool)

(declare-fun tp!1651779 () Bool)

(assert (=> setNonEmpty!40323 (= setRes!40323 (and tp!1651779 (inv!83204 setElem!40323) e!3633318))))

(declare-fun setRest!40323 () (InoxSet Context!10734))

(assert (=> setNonEmpty!40323 (= res!2487035 ((_ map or) (store ((as const (Array Context!10734 Bool)) false) setElem!40323 true) setRest!40323))))

(declare-fun b!5937343 () Bool)

(declare-fun tp!1651780 () Bool)

(assert (=> b!5937343 (= e!3633318 tp!1651780)))

(assert (= (and d!1861155 condSetEmpty!40323) setIsEmpty!40323))

(assert (= (and d!1861155 (not condSetEmpty!40323)) setNonEmpty!40323))

(assert (= setNonEmpty!40323 b!5937343))

(declare-fun m!6827714 () Bool)

(assert (=> setNonEmpty!40323 m!6827714))

(assert (=> d!1861059 d!1861155))

(declare-fun d!1861157 () Bool)

(assert (=> d!1861157 (= (nullable!5978 r!7292) (nullableFct!1949 r!7292))))

(declare-fun bs!1404392 () Bool)

(assert (= bs!1404392 d!1861157))

(declare-fun m!6827716 () Bool)

(assert (=> bs!1404392 m!6827716))

(assert (=> b!5937074 d!1861157))

(declare-fun d!1861159 () Bool)

(assert (=> d!1861159 (= (head!12507 (unfocusZipperList!1404 zl!343)) (h!70572 (unfocusZipperList!1404 zl!343)))))

(assert (=> b!5936882 d!1861159))

(assert (=> b!5937107 d!1860957))

(declare-fun b!5937344 () Bool)

(declare-fun c!1055693 () Bool)

(assert (=> b!5937344 (= c!1055693 ((_ is Star!15983) (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))))))

(declare-fun e!3633321 () (InoxSet Context!10734))

(declare-fun e!3633320 () (InoxSet Context!10734))

(assert (=> b!5937344 (= e!3633321 e!3633320)))

(declare-fun bm!471704 () Bool)

(declare-fun call!471714 () (InoxSet Context!10734))

(declare-fun call!471712 () (InoxSet Context!10734))

(assert (=> bm!471704 (= call!471714 call!471712)))

(declare-fun b!5937345 () Bool)

(assert (=> b!5937345 (= e!3633320 call!471714)))

(declare-fun bm!471705 () Bool)

(declare-fun call!471709 () List!64248)

(declare-fun call!471711 () List!64248)

(assert (=> bm!471705 (= call!471709 call!471711)))

(declare-fun b!5937346 () Bool)

(declare-fun c!1055690 () Bool)

(declare-fun e!3633323 () Bool)

(assert (=> b!5937346 (= c!1055690 e!3633323)))

(declare-fun res!2487036 () Bool)

(assert (=> b!5937346 (=> (not res!2487036) (not e!3633323))))

(assert (=> b!5937346 (= res!2487036 ((_ is Concat!24828) (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))))))

(declare-fun e!3633324 () (InoxSet Context!10734))

(declare-fun e!3633319 () (InoxSet Context!10734))

(assert (=> b!5937346 (= e!3633324 e!3633319)))

(declare-fun bm!471706 () Bool)

(declare-fun call!471710 () (InoxSet Context!10734))

(assert (=> bm!471706 (= call!471712 call!471710)))

(declare-fun c!1055692 () Bool)

(declare-fun d!1861161 () Bool)

(assert (=> d!1861161 (= c!1055692 (and ((_ is ElementMatch!15983) (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))) (= (c!1055457 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))) (h!70574 s!2326))))))

(declare-fun e!3633322 () (InoxSet Context!10734))

(assert (=> d!1861161 (= (derivationStepZipperDown!1233 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292)) (ite c!1055473 lt!2311329 (Context!10735 call!471593)) (h!70574 s!2326)) e!3633322)))

(declare-fun c!1055694 () Bool)

(declare-fun c!1055691 () Bool)

(declare-fun bm!471707 () Bool)

(assert (=> bm!471707 (= call!471710 (derivationStepZipperDown!1233 (ite c!1055691 (regOne!32479 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))) (ite c!1055690 (regTwo!32478 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))) (ite c!1055694 (regOne!32478 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))) (reg!16312 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292)))))) (ite (or c!1055691 c!1055690) (ite c!1055473 lt!2311329 (Context!10735 call!471593)) (Context!10735 call!471709)) (h!70574 s!2326)))))

(declare-fun call!471713 () (InoxSet Context!10734))

(declare-fun bm!471708 () Bool)

(assert (=> bm!471708 (= call!471713 (derivationStepZipperDown!1233 (ite c!1055691 (regTwo!32479 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))) (regOne!32478 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292)))) (ite c!1055691 (ite c!1055473 lt!2311329 (Context!10735 call!471593)) (Context!10735 call!471711)) (h!70574 s!2326)))))

(declare-fun b!5937347 () Bool)

(assert (=> b!5937347 (= e!3633321 call!471714)))

(declare-fun b!5937348 () Bool)

(assert (=> b!5937348 (= e!3633319 e!3633321)))

(assert (=> b!5937348 (= c!1055694 ((_ is Concat!24828) (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))))))

(declare-fun b!5937349 () Bool)

(assert (=> b!5937349 (= e!3633324 ((_ map or) call!471710 call!471713))))

(declare-fun b!5937350 () Bool)

(assert (=> b!5937350 (= e!3633320 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937351 () Bool)

(assert (=> b!5937351 (= e!3633322 (store ((as const (Array Context!10734 Bool)) false) (ite c!1055473 lt!2311329 (Context!10735 call!471593)) true))))

(declare-fun b!5937352 () Bool)

(assert (=> b!5937352 (= e!3633323 (nullable!5978 (regOne!32478 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292)))))))

(declare-fun b!5937353 () Bool)

(assert (=> b!5937353 (= e!3633322 e!3633324)))

(assert (=> b!5937353 (= c!1055691 ((_ is Union!15983) (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))))))

(declare-fun bm!471709 () Bool)

(assert (=> bm!471709 (= call!471711 ($colon$colon!1870 (exprs!5867 (ite c!1055473 lt!2311329 (Context!10735 call!471593))) (ite (or c!1055690 c!1055694) (regTwo!32478 (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292))) (ite c!1055473 (regTwo!32479 r!7292) (regOne!32478 r!7292)))))))

(declare-fun b!5937354 () Bool)

(assert (=> b!5937354 (= e!3633319 ((_ map or) call!471713 call!471712))))

(assert (= (and d!1861161 c!1055692) b!5937351))

(assert (= (and d!1861161 (not c!1055692)) b!5937353))

(assert (= (and b!5937353 c!1055691) b!5937349))

(assert (= (and b!5937353 (not c!1055691)) b!5937346))

(assert (= (and b!5937346 res!2487036) b!5937352))

(assert (= (and b!5937346 c!1055690) b!5937354))

(assert (= (and b!5937346 (not c!1055690)) b!5937348))

(assert (= (and b!5937348 c!1055694) b!5937347))

(assert (= (and b!5937348 (not c!1055694)) b!5937344))

(assert (= (and b!5937344 c!1055693) b!5937345))

(assert (= (and b!5937344 (not c!1055693)) b!5937350))

(assert (= (or b!5937347 b!5937345) bm!471705))

(assert (= (or b!5937347 b!5937345) bm!471704))

(assert (= (or b!5937354 bm!471705) bm!471709))

(assert (= (or b!5937354 bm!471704) bm!471706))

(assert (= (or b!5937349 b!5937354) bm!471708))

(assert (= (or b!5937349 bm!471706) bm!471707))

(declare-fun m!6827718 () Bool)

(assert (=> bm!471708 m!6827718))

(declare-fun m!6827720 () Bool)

(assert (=> b!5937351 m!6827720))

(declare-fun m!6827722 () Bool)

(assert (=> b!5937352 m!6827722))

(declare-fun m!6827724 () Bool)

(assert (=> bm!471707 m!6827724))

(declare-fun m!6827726 () Bool)

(assert (=> bm!471709 m!6827726))

(assert (=> bm!471590 d!1861161))

(declare-fun c!1055698 () Bool)

(declare-fun b!5937355 () Bool)

(assert (=> b!5937355 (= c!1055698 ((_ is Star!15983) (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))))))

(declare-fun e!3633327 () (InoxSet Context!10734))

(declare-fun e!3633326 () (InoxSet Context!10734))

(assert (=> b!5937355 (= e!3633327 e!3633326)))

(declare-fun bm!471710 () Bool)

(declare-fun call!471720 () (InoxSet Context!10734))

(declare-fun call!471718 () (InoxSet Context!10734))

(assert (=> bm!471710 (= call!471720 call!471718)))

(declare-fun b!5937356 () Bool)

(assert (=> b!5937356 (= e!3633326 call!471720)))

(declare-fun bm!471711 () Bool)

(declare-fun call!471715 () List!64248)

(declare-fun call!471717 () List!64248)

(assert (=> bm!471711 (= call!471715 call!471717)))

(declare-fun b!5937357 () Bool)

(declare-fun c!1055695 () Bool)

(declare-fun e!3633329 () Bool)

(assert (=> b!5937357 (= c!1055695 e!3633329)))

(declare-fun res!2487037 () Bool)

(assert (=> b!5937357 (=> (not res!2487037) (not e!3633329))))

(assert (=> b!5937357 (= res!2487037 ((_ is Concat!24828) (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))))))

(declare-fun e!3633330 () (InoxSet Context!10734))

(declare-fun e!3633325 () (InoxSet Context!10734))

(assert (=> b!5937357 (= e!3633330 e!3633325)))

(declare-fun bm!471712 () Bool)

(declare-fun call!471716 () (InoxSet Context!10734))

(assert (=> bm!471712 (= call!471718 call!471716)))

(declare-fun c!1055697 () Bool)

(declare-fun d!1861163 () Bool)

(assert (=> d!1861163 (= c!1055697 (and ((_ is ElementMatch!15983) (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))) (= (c!1055457 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))) (h!70574 s!2326))))))

(declare-fun e!3633328 () (InoxSet Context!10734))

(assert (=> d!1861163 (= (derivationStepZipperDown!1233 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292))))) (ite (or c!1055605 c!1055604) lt!2311327 (Context!10735 call!471658)) (h!70574 s!2326)) e!3633328)))

(declare-fun bm!471713 () Bool)

(declare-fun c!1055699 () Bool)

(declare-fun c!1055696 () Bool)

(assert (=> bm!471713 (= call!471716 (derivationStepZipperDown!1233 (ite c!1055696 (regOne!32479 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))) (ite c!1055695 (regTwo!32478 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))) (ite c!1055699 (regOne!32478 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))) (reg!16312 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292))))))))) (ite (or c!1055696 c!1055695) (ite (or c!1055605 c!1055604) lt!2311327 (Context!10735 call!471658)) (Context!10735 call!471715)) (h!70574 s!2326)))))

(declare-fun bm!471714 () Bool)

(declare-fun call!471719 () (InoxSet Context!10734))

(assert (=> bm!471714 (= call!471719 (derivationStepZipperDown!1233 (ite c!1055696 (regTwo!32479 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))) (regOne!32478 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292))))))) (ite c!1055696 (ite (or c!1055605 c!1055604) lt!2311327 (Context!10735 call!471658)) (Context!10735 call!471717)) (h!70574 s!2326)))))

(declare-fun b!5937358 () Bool)

(assert (=> b!5937358 (= e!3633327 call!471720)))

(declare-fun b!5937359 () Bool)

(assert (=> b!5937359 (= e!3633325 e!3633327)))

(assert (=> b!5937359 (= c!1055699 ((_ is Concat!24828) (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))))))

(declare-fun b!5937360 () Bool)

(assert (=> b!5937360 (= e!3633330 ((_ map or) call!471716 call!471719))))

(declare-fun b!5937361 () Bool)

(assert (=> b!5937361 (= e!3633326 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937362 () Bool)

(assert (=> b!5937362 (= e!3633328 (store ((as const (Array Context!10734 Bool)) false) (ite (or c!1055605 c!1055604) lt!2311327 (Context!10735 call!471658)) true))))

(declare-fun b!5937363 () Bool)

(assert (=> b!5937363 (= e!3633329 (nullable!5978 (regOne!32478 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292))))))))))

(declare-fun b!5937364 () Bool)

(assert (=> b!5937364 (= e!3633328 e!3633330)))

(assert (=> b!5937364 (= c!1055696 ((_ is Union!15983) (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))))))

(declare-fun bm!471715 () Bool)

(assert (=> bm!471715 (= call!471717 ($colon$colon!1870 (exprs!5867 (ite (or c!1055605 c!1055604) lt!2311327 (Context!10735 call!471658))) (ite (or c!1055695 c!1055699) (regTwo!32478 (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292)))))) (ite c!1055605 (regOne!32479 (regOne!32478 r!7292)) (ite c!1055604 (regTwo!32478 (regOne!32478 r!7292)) (ite c!1055608 (regOne!32478 (regOne!32478 r!7292)) (reg!16312 (regOne!32478 r!7292))))))))))

(declare-fun b!5937365 () Bool)

(assert (=> b!5937365 (= e!3633325 ((_ map or) call!471719 call!471718))))

(assert (= (and d!1861163 c!1055697) b!5937362))

(assert (= (and d!1861163 (not c!1055697)) b!5937364))

(assert (= (and b!5937364 c!1055696) b!5937360))

(assert (= (and b!5937364 (not c!1055696)) b!5937357))

(assert (= (and b!5937357 res!2487037) b!5937363))

(assert (= (and b!5937357 c!1055695) b!5937365))

(assert (= (and b!5937357 (not c!1055695)) b!5937359))

(assert (= (and b!5937359 c!1055699) b!5937358))

(assert (= (and b!5937359 (not c!1055699)) b!5937355))

(assert (= (and b!5937355 c!1055698) b!5937356))

(assert (= (and b!5937355 (not c!1055698)) b!5937361))

(assert (= (or b!5937358 b!5937356) bm!471711))

(assert (= (or b!5937358 b!5937356) bm!471710))

(assert (= (or b!5937365 bm!471711) bm!471715))

(assert (= (or b!5937365 bm!471710) bm!471712))

(assert (= (or b!5937360 b!5937365) bm!471714))

(assert (= (or b!5937360 bm!471712) bm!471713))

(declare-fun m!6827728 () Bool)

(assert (=> bm!471714 m!6827728))

(declare-fun m!6827730 () Bool)

(assert (=> b!5937362 m!6827730))

(declare-fun m!6827732 () Bool)

(assert (=> b!5937363 m!6827732))

(declare-fun m!6827734 () Bool)

(assert (=> bm!471713 m!6827734))

(declare-fun m!6827736 () Bool)

(assert (=> bm!471715 m!6827736))

(assert (=> bm!471656 d!1861163))

(declare-fun d!1861165 () Bool)

(assert (=> d!1861165 (= (isEmpty!35993 (tail!11592 (unfocusZipperList!1404 zl!343))) ((_ is Nil!64124) (tail!11592 (unfocusZipperList!1404 zl!343))))))

(assert (=> b!5936884 d!1861165))

(declare-fun d!1861167 () Bool)

(assert (=> d!1861167 (= (tail!11592 (unfocusZipperList!1404 zl!343)) (t!377651 (unfocusZipperList!1404 zl!343)))))

(assert (=> b!5936884 d!1861167))

(declare-fun d!1861169 () Bool)

(assert (=> d!1861169 (= (nullable!5978 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (nullableFct!1949 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))))

(declare-fun bs!1404393 () Bool)

(assert (= bs!1404393 d!1861169))

(declare-fun m!6827738 () Bool)

(assert (=> bs!1404393 m!6827738))

(assert (=> b!5936566 d!1861169))

(declare-fun d!1861171 () Bool)

(assert (=> d!1861171 (= (isEmpty!35993 (tail!11592 (exprs!5867 (h!70573 zl!343)))) ((_ is Nil!64124) (tail!11592 (exprs!5867 (h!70573 zl!343)))))))

(assert (=> b!5937111 d!1861171))

(declare-fun d!1861173 () Bool)

(assert (=> d!1861173 (= (tail!11592 (exprs!5867 (h!70573 zl!343))) (t!377651 (exprs!5867 (h!70573 zl!343))))))

(assert (=> b!5937111 d!1861173))

(declare-fun d!1861175 () Bool)

(assert (=> d!1861175 (= (nullable!5978 (regOne!32478 r!7292)) (nullableFct!1949 (regOne!32478 r!7292)))))

(declare-fun bs!1404394 () Bool)

(assert (= bs!1404394 d!1861175))

(declare-fun m!6827740 () Bool)

(assert (=> bs!1404394 m!6827740))

(assert (=> b!5936511 d!1861175))

(declare-fun b!5937366 () Bool)

(declare-fun c!1055703 () Bool)

(assert (=> b!5937366 (= c!1055703 ((_ is Star!15983) (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))))

(declare-fun e!3633333 () (InoxSet Context!10734))

(declare-fun e!3633332 () (InoxSet Context!10734))

(assert (=> b!5937366 (= e!3633333 e!3633332)))

(declare-fun bm!471716 () Bool)

(declare-fun call!471726 () (InoxSet Context!10734))

(declare-fun call!471724 () (InoxSet Context!10734))

(assert (=> bm!471716 (= call!471726 call!471724)))

(declare-fun b!5937367 () Bool)

(assert (=> b!5937367 (= e!3633332 call!471726)))

(declare-fun bm!471717 () Bool)

(declare-fun call!471721 () List!64248)

(declare-fun call!471723 () List!64248)

(assert (=> bm!471717 (= call!471721 call!471723)))

(declare-fun b!5937368 () Bool)

(declare-fun c!1055700 () Bool)

(declare-fun e!3633335 () Bool)

(assert (=> b!5937368 (= c!1055700 e!3633335)))

(declare-fun res!2487038 () Bool)

(assert (=> b!5937368 (=> (not res!2487038) (not e!3633335))))

(assert (=> b!5937368 (= res!2487038 ((_ is Concat!24828) (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))))

(declare-fun e!3633336 () (InoxSet Context!10734))

(declare-fun e!3633331 () (InoxSet Context!10734))

(assert (=> b!5937368 (= e!3633336 e!3633331)))

(declare-fun bm!471718 () Bool)

(declare-fun call!471722 () (InoxSet Context!10734))

(assert (=> bm!471718 (= call!471724 call!471722)))

(declare-fun d!1861177 () Bool)

(declare-fun c!1055702 () Bool)

(assert (=> d!1861177 (= c!1055702 (and ((_ is ElementMatch!15983) (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (= (c!1055457 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (h!70574 s!2326))))))

(declare-fun e!3633334 () (InoxSet Context!10734))

(assert (=> d!1861177 (= (derivationStepZipperDown!1233 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))) (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (h!70574 s!2326)) e!3633334)))

(declare-fun c!1055701 () Bool)

(declare-fun c!1055704 () Bool)

(declare-fun bm!471719 () Bool)

(assert (=> bm!471719 (= call!471722 (derivationStepZipperDown!1233 (ite c!1055701 (regOne!32479 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (ite c!1055700 (regTwo!32478 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (ite c!1055704 (regOne!32478 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (reg!16312 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))))) (ite (or c!1055701 c!1055700) (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (Context!10735 call!471721)) (h!70574 s!2326)))))

(declare-fun call!471725 () (InoxSet Context!10734))

(declare-fun bm!471720 () Bool)

(assert (=> bm!471720 (= call!471725 (derivationStepZipperDown!1233 (ite c!1055701 (regTwo!32479 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (regOne!32478 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))) (ite c!1055701 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (Context!10735 call!471723)) (h!70574 s!2326)))))

(declare-fun b!5937369 () Bool)

(assert (=> b!5937369 (= e!3633333 call!471726)))

(declare-fun b!5937370 () Bool)

(assert (=> b!5937370 (= e!3633331 e!3633333)))

(assert (=> b!5937370 (= c!1055704 ((_ is Concat!24828) (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))))

(declare-fun b!5937371 () Bool)

(assert (=> b!5937371 (= e!3633336 ((_ map or) call!471722 call!471725))))

(declare-fun b!5937372 () Bool)

(assert (=> b!5937372 (= e!3633332 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937373 () Bool)

(assert (=> b!5937373 (= e!3633334 (store ((as const (Array Context!10734 Bool)) false) (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) true))))

(declare-fun b!5937374 () Bool)

(assert (=> b!5937374 (= e!3633335 (nullable!5978 (regOne!32478 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))))))

(declare-fun b!5937375 () Bool)

(assert (=> b!5937375 (= e!3633334 e!3633336)))

(assert (=> b!5937375 (= c!1055701 ((_ is Union!15983) (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))))

(declare-fun bm!471721 () Bool)

(assert (=> bm!471721 (= call!471723 ($colon$colon!1870 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))) (ite (or c!1055700 c!1055704) (regTwo!32478 (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (h!70572 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))))))

(declare-fun b!5937376 () Bool)

(assert (=> b!5937376 (= e!3633331 ((_ map or) call!471725 call!471724))))

(assert (= (and d!1861177 c!1055702) b!5937373))

(assert (= (and d!1861177 (not c!1055702)) b!5937375))

(assert (= (and b!5937375 c!1055701) b!5937371))

(assert (= (and b!5937375 (not c!1055701)) b!5937368))

(assert (= (and b!5937368 res!2487038) b!5937374))

(assert (= (and b!5937368 c!1055700) b!5937376))

(assert (= (and b!5937368 (not c!1055700)) b!5937370))

(assert (= (and b!5937370 c!1055704) b!5937369))

(assert (= (and b!5937370 (not c!1055704)) b!5937366))

(assert (= (and b!5937366 c!1055703) b!5937367))

(assert (= (and b!5937366 (not c!1055703)) b!5937372))

(assert (= (or b!5937369 b!5937367) bm!471717))

(assert (= (or b!5937369 b!5937367) bm!471716))

(assert (= (or b!5937376 bm!471717) bm!471721))

(assert (= (or b!5937376 bm!471716) bm!471718))

(assert (= (or b!5937371 b!5937376) bm!471720))

(assert (= (or b!5937371 bm!471718) bm!471719))

(declare-fun m!6827742 () Bool)

(assert (=> bm!471720 m!6827742))

(declare-fun m!6827744 () Bool)

(assert (=> b!5937373 m!6827744))

(declare-fun m!6827746 () Bool)

(assert (=> b!5937374 m!6827746))

(declare-fun m!6827748 () Bool)

(assert (=> bm!471719 m!6827748))

(declare-fun m!6827750 () Bool)

(assert (=> bm!471721 m!6827750))

(assert (=> bm!471594 d!1861177))

(assert (=> b!5937082 d!1861109))

(declare-fun b!5937377 () Bool)

(declare-fun e!3633338 () Bool)

(assert (=> b!5937377 (= e!3633338 (nullable!5978 (h!70572 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))))))))

(declare-fun b!5937378 () Bool)

(declare-fun e!3633337 () (InoxSet Context!10734))

(declare-fun call!471727 () (InoxSet Context!10734))

(assert (=> b!5937378 (= e!3633337 call!471727)))

(declare-fun bm!471722 () Bool)

(assert (=> bm!471722 (= call!471727 (derivationStepZipperDown!1233 (h!70572 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))) (Context!10735 (t!377651 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))))) (h!70574 s!2326)))))

(declare-fun b!5937379 () Bool)

(assert (=> b!5937379 (= e!3633337 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937380 () Bool)

(declare-fun e!3633339 () (InoxSet Context!10734))

(assert (=> b!5937380 (= e!3633339 ((_ map or) call!471727 (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124)))))))) (h!70574 s!2326))))))

(declare-fun b!5937381 () Bool)

(assert (=> b!5937381 (= e!3633339 e!3633337)))

(declare-fun c!1055706 () Bool)

(assert (=> b!5937381 (= c!1055706 ((_ is Cons!64124) (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))))))

(declare-fun d!1861179 () Bool)

(declare-fun c!1055705 () Bool)

(assert (=> d!1861179 (= c!1055705 e!3633338)))

(declare-fun res!2487039 () Bool)

(assert (=> d!1861179 (=> (not res!2487039) (not e!3633338))))

(assert (=> d!1861179 (= res!2487039 ((_ is Cons!64124) (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))))))))

(assert (=> d!1861179 (= (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (Cons!64124 r!7292 Nil!64124))))) (h!70574 s!2326)) e!3633339)))

(assert (= (and d!1861179 res!2487039) b!5937377))

(assert (= (and d!1861179 c!1055705) b!5937380))

(assert (= (and d!1861179 (not c!1055705)) b!5937381))

(assert (= (and b!5937381 c!1055706) b!5937378))

(assert (= (and b!5937381 (not c!1055706)) b!5937379))

(assert (= (or b!5937380 b!5937378) bm!471722))

(declare-fun m!6827752 () Bool)

(assert (=> b!5937377 m!6827752))

(declare-fun m!6827754 () Bool)

(assert (=> bm!471722 m!6827754))

(declare-fun m!6827756 () Bool)

(assert (=> b!5937380 m!6827756))

(assert (=> b!5936569 d!1861179))

(declare-fun b!5937382 () Bool)

(declare-fun e!3633345 () Bool)

(declare-fun call!471728 () Bool)

(assert (=> b!5937382 (= e!3633345 call!471728)))

(declare-fun b!5937383 () Bool)

(declare-fun e!3633344 () Bool)

(declare-fun e!3633341 () Bool)

(assert (=> b!5937383 (= e!3633344 e!3633341)))

(declare-fun res!2487040 () Bool)

(assert (=> b!5937383 (= res!2487040 (not (nullable!5978 (reg!16312 (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))))))))

(assert (=> b!5937383 (=> (not res!2487040) (not e!3633341))))

(declare-fun b!5937384 () Bool)

(declare-fun e!3633346 () Bool)

(assert (=> b!5937384 (= e!3633344 e!3633346)))

(declare-fun c!1055707 () Bool)

(assert (=> b!5937384 (= c!1055707 ((_ is Union!15983) (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))))))

(declare-fun b!5937385 () Bool)

(declare-fun call!471729 () Bool)

(assert (=> b!5937385 (= e!3633341 call!471729)))

(declare-fun call!471730 () Bool)

(declare-fun bm!471723 () Bool)

(assert (=> bm!471723 (= call!471730 (validRegex!7719 (ite c!1055707 (regOne!32479 (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))) (regOne!32478 (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))))))))

(declare-fun b!5937387 () Bool)

(declare-fun res!2487042 () Bool)

(declare-fun e!3633340 () Bool)

(assert (=> b!5937387 (=> (not res!2487042) (not e!3633340))))

(assert (=> b!5937387 (= res!2487042 call!471730)))

(assert (=> b!5937387 (= e!3633346 e!3633340)))

(declare-fun bm!471724 () Bool)

(declare-fun c!1055708 () Bool)

(assert (=> bm!471724 (= call!471729 (validRegex!7719 (ite c!1055708 (reg!16312 (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))) (ite c!1055707 (regTwo!32479 (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))) (regTwo!32478 (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292)))))))))

(declare-fun b!5937388 () Bool)

(assert (=> b!5937388 (= e!3633340 call!471728)))

(declare-fun bm!471725 () Bool)

(assert (=> bm!471725 (= call!471728 call!471729)))

(declare-fun b!5937389 () Bool)

(declare-fun res!2487041 () Bool)

(declare-fun e!3633342 () Bool)

(assert (=> b!5937389 (=> res!2487041 e!3633342)))

(assert (=> b!5937389 (= res!2487041 (not ((_ is Concat!24828) (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292)))))))

(assert (=> b!5937389 (= e!3633346 e!3633342)))

(declare-fun b!5937390 () Bool)

(assert (=> b!5937390 (= e!3633342 e!3633345)))

(declare-fun res!2487043 () Bool)

(assert (=> b!5937390 (=> (not res!2487043) (not e!3633345))))

(assert (=> b!5937390 (= res!2487043 call!471730)))

(declare-fun d!1861181 () Bool)

(declare-fun res!2487044 () Bool)

(declare-fun e!3633343 () Bool)

(assert (=> d!1861181 (=> res!2487044 e!3633343)))

(assert (=> d!1861181 (= res!2487044 ((_ is ElementMatch!15983) (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))))))

(assert (=> d!1861181 (= (validRegex!7719 (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))) e!3633343)))

(declare-fun b!5937386 () Bool)

(assert (=> b!5937386 (= e!3633343 e!3633344)))

(assert (=> b!5937386 (= c!1055708 ((_ is Star!15983) (ite c!1055568 (regOne!32479 r!7292) (regOne!32478 r!7292))))))

(assert (= (and d!1861181 (not res!2487044)) b!5937386))

(assert (= (and b!5937386 c!1055708) b!5937383))

(assert (= (and b!5937386 (not c!1055708)) b!5937384))

(assert (= (and b!5937383 res!2487040) b!5937385))

(assert (= (and b!5937384 c!1055707) b!5937387))

(assert (= (and b!5937384 (not c!1055707)) b!5937389))

(assert (= (and b!5937387 res!2487042) b!5937388))

(assert (= (and b!5937389 (not res!2487041)) b!5937390))

(assert (= (and b!5937390 res!2487043) b!5937382))

(assert (= (or b!5937388 b!5937382) bm!471725))

(assert (= (or b!5937387 b!5937390) bm!471723))

(assert (= (or b!5937385 bm!471725) bm!471724))

(declare-fun m!6827758 () Bool)

(assert (=> b!5937383 m!6827758))

(declare-fun m!6827760 () Bool)

(assert (=> bm!471723 m!6827760))

(declare-fun m!6827762 () Bool)

(assert (=> bm!471724 m!6827762))

(assert (=> bm!471632 d!1861181))

(declare-fun d!1861183 () Bool)

(assert (=> d!1861183 (= (isEmptyExpr!1411 lt!2311420) ((_ is EmptyExpr!15983) lt!2311420))))

(assert (=> b!5937113 d!1861183))

(declare-fun d!1861185 () Bool)

(assert (=> d!1861185 (= ($colon$colon!1870 (exprs!5867 lt!2311329) (ite (or c!1055472 c!1055476) (regTwo!32478 r!7292) r!7292)) (Cons!64124 (ite (or c!1055472 c!1055476) (regTwo!32478 r!7292) r!7292) (exprs!5867 lt!2311329)))))

(assert (=> bm!471591 d!1861185))

(assert (=> d!1860993 d!1860973))

(assert (=> d!1860993 d!1861129))

(assert (=> d!1860993 d!1861007))

(declare-fun bs!1404395 () Bool)

(declare-fun d!1861187 () Bool)

(assert (= bs!1404395 (and d!1861187 b!5937038)))

(declare-fun lambda!323835 () Int)

(assert (=> bs!1404395 (not (= lambda!323835 lambda!323826))))

(declare-fun bs!1404396 () Bool)

(assert (= bs!1404396 (and d!1861187 d!1860993)))

(assert (=> bs!1404396 (= lambda!323835 lambda!323787)))

(declare-fun bs!1404397 () Bool)

(assert (= bs!1404397 (and d!1861187 d!1861001)))

(assert (=> bs!1404397 (not (= lambda!323835 lambda!323799))))

(declare-fun bs!1404398 () Bool)

(assert (= bs!1404398 (and d!1861187 b!5937039)))

(assert (=> bs!1404398 (not (= lambda!323835 lambda!323827))))

(declare-fun bs!1404399 () Bool)

(assert (= bs!1404399 (and d!1861187 b!5936450)))

(assert (=> bs!1404399 (not (= lambda!323835 lambda!323765))))

(declare-fun bs!1404400 () Bool)

(assert (= bs!1404400 (and d!1861187 b!5937324)))

(assert (=> bs!1404400 (not (= lambda!323835 lambda!323832))))

(assert (=> bs!1404397 (= lambda!323835 lambda!323798)))

(declare-fun bs!1404401 () Bool)

(assert (= bs!1404401 (and d!1861187 b!5937323)))

(assert (=> bs!1404401 (not (= lambda!323835 lambda!323831))))

(assert (=> bs!1404399 (= lambda!323835 lambda!323764)))

(assert (=> d!1861187 true))

(assert (=> d!1861187 true))

(assert (=> d!1861187 true))

(assert (=> d!1861187 (= (isDefined!12577 (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) Nil!64126 s!2326 s!2326)) (Exists!3053 lambda!323835))))

(assert (=> d!1861187 true))

(declare-fun _$89!1999 () Unit!157237)

(assert (=> d!1861187 (= (choose!44743 (regOne!32478 r!7292) (regTwo!32478 r!7292) s!2326) _$89!1999)))

(declare-fun bs!1404402 () Bool)

(assert (= bs!1404402 d!1861187))

(assert (=> bs!1404402 m!6827188))

(assert (=> bs!1404402 m!6827188))

(assert (=> bs!1404402 m!6827190))

(declare-fun m!6827764 () Bool)

(assert (=> bs!1404402 m!6827764))

(assert (=> d!1860993 d!1861187))

(declare-fun d!1861189 () Bool)

(assert (=> d!1861189 (= (Exists!3053 lambda!323787) (choose!44742 lambda!323787))))

(declare-fun bs!1404403 () Bool)

(assert (= bs!1404403 d!1861189))

(declare-fun m!6827766 () Bool)

(assert (=> bs!1404403 m!6827766))

(assert (=> d!1860993 d!1861189))

(assert (=> d!1861063 d!1861061))

(declare-fun d!1861191 () Bool)

(assert (=> d!1861191 (= (flatMap!1496 lt!2311333 lambda!323766) (dynLambda!25080 lambda!323766 lt!2311327))))

(assert (=> d!1861191 true))

(declare-fun _$13!2714 () Unit!157237)

(assert (=> d!1861191 (= (choose!44746 lt!2311333 lt!2311327 lambda!323766) _$13!2714)))

(declare-fun b_lambda!223023 () Bool)

(assert (=> (not b_lambda!223023) (not d!1861191)))

(declare-fun bs!1404404 () Bool)

(assert (= bs!1404404 d!1861191))

(assert (=> bs!1404404 m!6827170))

(assert (=> bs!1404404 m!6827508))

(assert (=> d!1861063 d!1861191))

(assert (=> bs!1404376 d!1861073))

(declare-fun d!1861193 () Bool)

(declare-fun c!1055711 () Bool)

(assert (=> d!1861193 (= c!1055711 ((_ is Nil!64125) lt!2311403))))

(declare-fun e!3633351 () (InoxSet Context!10734))

(assert (=> d!1861193 (= (content!11823 lt!2311403) e!3633351)))

(declare-fun b!5937399 () Bool)

(assert (=> b!5937399 (= e!3633351 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937400 () Bool)

(assert (=> b!5937400 (= e!3633351 ((_ map or) (store ((as const (Array Context!10734 Bool)) false) (h!70573 lt!2311403) true) (content!11823 (t!377652 lt!2311403))))))

(assert (= (and d!1861193 c!1055711) b!5937399))

(assert (= (and d!1861193 (not c!1055711)) b!5937400))

(declare-fun m!6827768 () Bool)

(assert (=> b!5937400 m!6827768))

(declare-fun m!6827770 () Bool)

(assert (=> b!5937400 m!6827770))

(assert (=> b!5936923 d!1861193))

(declare-fun bs!1404405 () Bool)

(declare-fun d!1861195 () Bool)

(assert (= bs!1404405 (and d!1861195 d!1861033)))

(declare-fun lambda!323836 () Int)

(assert (=> bs!1404405 (= lambda!323836 lambda!323818)))

(declare-fun bs!1404406 () Bool)

(assert (= bs!1404406 (and d!1861195 d!1860955)))

(assert (=> bs!1404406 (= lambda!323836 lambda!323769)))

(declare-fun bs!1404407 () Bool)

(assert (= bs!1404407 (and d!1861195 d!1861091)))

(assert (=> bs!1404407 (= lambda!323836 lambda!323830)))

(declare-fun bs!1404408 () Bool)

(assert (= bs!1404408 (and d!1861195 d!1861027)))

(assert (=> bs!1404408 (= lambda!323836 lambda!323814)))

(declare-fun bs!1404409 () Bool)

(assert (= bs!1404409 (and d!1861195 d!1861057)))

(assert (=> bs!1404409 (= lambda!323836 lambda!323820)))

(declare-fun bs!1404410 () Bool)

(assert (= bs!1404410 (and d!1861195 d!1861067)))

(assert (=> bs!1404410 (= lambda!323836 lambda!323821)))

(declare-fun b!5937401 () Bool)

(declare-fun e!3633355 () Regex!15983)

(assert (=> b!5937401 (= e!3633355 (Union!15983 (h!70572 (t!377651 (unfocusZipperList!1404 zl!343))) (generalisedUnion!1827 (t!377651 (t!377651 (unfocusZipperList!1404 zl!343))))))))

(declare-fun b!5937402 () Bool)

(declare-fun e!3633352 () Bool)

(assert (=> b!5937402 (= e!3633352 (isEmpty!35993 (t!377651 (t!377651 (unfocusZipperList!1404 zl!343)))))))

(declare-fun b!5937403 () Bool)

(declare-fun e!3633356 () Bool)

(declare-fun lt!2311429 () Regex!15983)

(assert (=> b!5937403 (= e!3633356 (isEmptyLang!1420 lt!2311429))))

(declare-fun b!5937404 () Bool)

(declare-fun e!3633353 () Bool)

(assert (=> b!5937404 (= e!3633353 (isUnion!850 lt!2311429))))

(declare-fun b!5937406 () Bool)

(declare-fun e!3633357 () Regex!15983)

(assert (=> b!5937406 (= e!3633357 (h!70572 (t!377651 (unfocusZipperList!1404 zl!343))))))

(declare-fun b!5937407 () Bool)

(assert (=> b!5937407 (= e!3633355 EmptyLang!15983)))

(declare-fun b!5937408 () Bool)

(assert (=> b!5937408 (= e!3633353 (= lt!2311429 (head!12507 (t!377651 (unfocusZipperList!1404 zl!343)))))))

(declare-fun b!5937405 () Bool)

(assert (=> b!5937405 (= e!3633357 e!3633355)))

(declare-fun c!1055714 () Bool)

(assert (=> b!5937405 (= c!1055714 ((_ is Cons!64124) (t!377651 (unfocusZipperList!1404 zl!343))))))

(declare-fun e!3633354 () Bool)

(assert (=> d!1861195 e!3633354))

(declare-fun res!2487050 () Bool)

(assert (=> d!1861195 (=> (not res!2487050) (not e!3633354))))

(assert (=> d!1861195 (= res!2487050 (validRegex!7719 lt!2311429))))

(assert (=> d!1861195 (= lt!2311429 e!3633357)))

(declare-fun c!1055715 () Bool)

(assert (=> d!1861195 (= c!1055715 e!3633352)))

(declare-fun res!2487049 () Bool)

(assert (=> d!1861195 (=> (not res!2487049) (not e!3633352))))

(assert (=> d!1861195 (= res!2487049 ((_ is Cons!64124) (t!377651 (unfocusZipperList!1404 zl!343))))))

(assert (=> d!1861195 (forall!15066 (t!377651 (unfocusZipperList!1404 zl!343)) lambda!323836)))

(assert (=> d!1861195 (= (generalisedUnion!1827 (t!377651 (unfocusZipperList!1404 zl!343))) lt!2311429)))

(declare-fun b!5937409 () Bool)

(assert (=> b!5937409 (= e!3633354 e!3633356)))

(declare-fun c!1055712 () Bool)

(assert (=> b!5937409 (= c!1055712 (isEmpty!35993 (t!377651 (unfocusZipperList!1404 zl!343))))))

(declare-fun b!5937410 () Bool)

(assert (=> b!5937410 (= e!3633356 e!3633353)))

(declare-fun c!1055713 () Bool)

(assert (=> b!5937410 (= c!1055713 (isEmpty!35993 (tail!11592 (t!377651 (unfocusZipperList!1404 zl!343)))))))

(assert (= (and d!1861195 res!2487049) b!5937402))

(assert (= (and d!1861195 c!1055715) b!5937406))

(assert (= (and d!1861195 (not c!1055715)) b!5937405))

(assert (= (and b!5937405 c!1055714) b!5937401))

(assert (= (and b!5937405 (not c!1055714)) b!5937407))

(assert (= (and d!1861195 res!2487050) b!5937409))

(assert (= (and b!5937409 c!1055712) b!5937403))

(assert (= (and b!5937409 (not c!1055712)) b!5937410))

(assert (= (and b!5937410 c!1055713) b!5937408))

(assert (= (and b!5937410 (not c!1055713)) b!5937404))

(assert (=> b!5937409 m!6827428))

(declare-fun m!6827772 () Bool)

(assert (=> b!5937404 m!6827772))

(declare-fun m!6827774 () Bool)

(assert (=> b!5937402 m!6827774))

(declare-fun m!6827776 () Bool)

(assert (=> b!5937408 m!6827776))

(declare-fun m!6827778 () Bool)

(assert (=> d!1861195 m!6827778))

(declare-fun m!6827780 () Bool)

(assert (=> d!1861195 m!6827780))

(declare-fun m!6827782 () Bool)

(assert (=> b!5937410 m!6827782))

(assert (=> b!5937410 m!6827782))

(declare-fun m!6827784 () Bool)

(assert (=> b!5937410 m!6827784))

(declare-fun m!6827786 () Bool)

(assert (=> b!5937401 m!6827786))

(declare-fun m!6827788 () Bool)

(assert (=> b!5937403 m!6827788))

(assert (=> b!5936875 d!1861195))

(declare-fun b!5937420 () Bool)

(declare-fun e!3633363 () List!64250)

(assert (=> b!5937420 (= e!3633363 (Cons!64126 (h!70574 (_1!36265 (get!22086 lt!2311355))) (++!14079 (t!377653 (_1!36265 (get!22086 lt!2311355))) (_2!36265 (get!22086 lt!2311355)))))))

(declare-fun b!5937422 () Bool)

(declare-fun e!3633362 () Bool)

(declare-fun lt!2311432 () List!64250)

(assert (=> b!5937422 (= e!3633362 (or (not (= (_2!36265 (get!22086 lt!2311355)) Nil!64126)) (= lt!2311432 (_1!36265 (get!22086 lt!2311355)))))))

(declare-fun d!1861197 () Bool)

(assert (=> d!1861197 e!3633362))

(declare-fun res!2487056 () Bool)

(assert (=> d!1861197 (=> (not res!2487056) (not e!3633362))))

(declare-fun content!11825 (List!64250) (InoxSet C!32236))

(assert (=> d!1861197 (= res!2487056 (= (content!11825 lt!2311432) ((_ map or) (content!11825 (_1!36265 (get!22086 lt!2311355))) (content!11825 (_2!36265 (get!22086 lt!2311355))))))))

(assert (=> d!1861197 (= lt!2311432 e!3633363)))

(declare-fun c!1055718 () Bool)

(assert (=> d!1861197 (= c!1055718 ((_ is Nil!64126) (_1!36265 (get!22086 lt!2311355))))))

(assert (=> d!1861197 (= (++!14079 (_1!36265 (get!22086 lt!2311355)) (_2!36265 (get!22086 lt!2311355))) lt!2311432)))

(declare-fun b!5937421 () Bool)

(declare-fun res!2487055 () Bool)

(assert (=> b!5937421 (=> (not res!2487055) (not e!3633362))))

(declare-fun size!40149 (List!64250) Int)

(assert (=> b!5937421 (= res!2487055 (= (size!40149 lt!2311432) (+ (size!40149 (_1!36265 (get!22086 lt!2311355))) (size!40149 (_2!36265 (get!22086 lt!2311355))))))))

(declare-fun b!5937419 () Bool)

(assert (=> b!5937419 (= e!3633363 (_2!36265 (get!22086 lt!2311355)))))

(assert (= (and d!1861197 c!1055718) b!5937419))

(assert (= (and d!1861197 (not c!1055718)) b!5937420))

(assert (= (and d!1861197 res!2487056) b!5937421))

(assert (= (and b!5937421 res!2487055) b!5937422))

(declare-fun m!6827790 () Bool)

(assert (=> b!5937420 m!6827790))

(declare-fun m!6827792 () Bool)

(assert (=> d!1861197 m!6827792))

(declare-fun m!6827794 () Bool)

(assert (=> d!1861197 m!6827794))

(declare-fun m!6827796 () Bool)

(assert (=> d!1861197 m!6827796))

(declare-fun m!6827798 () Bool)

(assert (=> b!5937421 m!6827798))

(declare-fun m!6827800 () Bool)

(assert (=> b!5937421 m!6827800))

(declare-fun m!6827802 () Bool)

(assert (=> b!5937421 m!6827802))

(assert (=> b!5936669 d!1861197))

(assert (=> b!5936669 d!1861121))

(declare-fun d!1861199 () Bool)

(declare-fun res!2487061 () Bool)

(declare-fun e!3633368 () Bool)

(assert (=> d!1861199 (=> res!2487061 e!3633368)))

(assert (=> d!1861199 (= res!2487061 ((_ is Nil!64125) lt!2311403))))

(assert (=> d!1861199 (= (noDuplicate!1840 lt!2311403) e!3633368)))

(declare-fun b!5937427 () Bool)

(declare-fun e!3633369 () Bool)

(assert (=> b!5937427 (= e!3633368 e!3633369)))

(declare-fun res!2487062 () Bool)

(assert (=> b!5937427 (=> (not res!2487062) (not e!3633369))))

(declare-fun contains!19968 (List!64249 Context!10734) Bool)

(assert (=> b!5937427 (= res!2487062 (not (contains!19968 (t!377652 lt!2311403) (h!70573 lt!2311403))))))

(declare-fun b!5937428 () Bool)

(assert (=> b!5937428 (= e!3633369 (noDuplicate!1840 (t!377652 lt!2311403)))))

(assert (= (and d!1861199 (not res!2487061)) b!5937427))

(assert (= (and b!5937427 res!2487062) b!5937428))

(declare-fun m!6827804 () Bool)

(assert (=> b!5937427 m!6827804))

(declare-fun m!6827806 () Bool)

(assert (=> b!5937428 m!6827806))

(assert (=> d!1861049 d!1861199))

(declare-fun d!1861201 () Bool)

(declare-fun e!3633378 () Bool)

(assert (=> d!1861201 e!3633378))

(declare-fun res!2487067 () Bool)

(assert (=> d!1861201 (=> (not res!2487067) (not e!3633378))))

(declare-fun res!2487068 () List!64249)

(assert (=> d!1861201 (= res!2487067 (noDuplicate!1840 res!2487068))))

(declare-fun e!3633377 () Bool)

(assert (=> d!1861201 e!3633377))

(assert (=> d!1861201 (= (choose!44749 z!1189) res!2487068)))

(declare-fun b!5937436 () Bool)

(declare-fun e!3633376 () Bool)

(declare-fun tp!1651785 () Bool)

(assert (=> b!5937436 (= e!3633376 tp!1651785)))

(declare-fun tp!1651786 () Bool)

(declare-fun b!5937435 () Bool)

(assert (=> b!5937435 (= e!3633377 (and (inv!83204 (h!70573 res!2487068)) e!3633376 tp!1651786))))

(declare-fun b!5937437 () Bool)

(assert (=> b!5937437 (= e!3633378 (= (content!11823 res!2487068) z!1189))))

(assert (= b!5937435 b!5937436))

(assert (= (and d!1861201 ((_ is Cons!64125) res!2487068)) b!5937435))

(assert (= (and d!1861201 res!2487067) b!5937437))

(declare-fun m!6827808 () Bool)

(assert (=> d!1861201 m!6827808))

(declare-fun m!6827810 () Bool)

(assert (=> b!5937435 m!6827810))

(declare-fun m!6827812 () Bool)

(assert (=> b!5937437 m!6827812))

(assert (=> d!1861049 d!1861201))

(declare-fun bs!1404411 () Bool)

(declare-fun d!1861203 () Bool)

(assert (= bs!1404411 (and d!1861203 d!1861195)))

(declare-fun lambda!323837 () Int)

(assert (=> bs!1404411 (= lambda!323837 lambda!323836)))

(declare-fun bs!1404412 () Bool)

(assert (= bs!1404412 (and d!1861203 d!1861033)))

(assert (=> bs!1404412 (= lambda!323837 lambda!323818)))

(declare-fun bs!1404413 () Bool)

(assert (= bs!1404413 (and d!1861203 d!1860955)))

(assert (=> bs!1404413 (= lambda!323837 lambda!323769)))

(declare-fun bs!1404414 () Bool)

(assert (= bs!1404414 (and d!1861203 d!1861091)))

(assert (=> bs!1404414 (= lambda!323837 lambda!323830)))

(declare-fun bs!1404415 () Bool)

(assert (= bs!1404415 (and d!1861203 d!1861027)))

(assert (=> bs!1404415 (= lambda!323837 lambda!323814)))

(declare-fun bs!1404416 () Bool)

(assert (= bs!1404416 (and d!1861203 d!1861057)))

(assert (=> bs!1404416 (= lambda!323837 lambda!323820)))

(declare-fun bs!1404417 () Bool)

(assert (= bs!1404417 (and d!1861203 d!1861067)))

(assert (=> bs!1404417 (= lambda!323837 lambda!323821)))

(assert (=> d!1861203 (= (inv!83204 (h!70573 (t!377652 zl!343))) (forall!15066 (exprs!5867 (h!70573 (t!377652 zl!343))) lambda!323837))))

(declare-fun bs!1404418 () Bool)

(assert (= bs!1404418 d!1861203))

(declare-fun m!6827814 () Bool)

(assert (=> bs!1404418 m!6827814))

(assert (=> b!5937146 d!1861203))

(declare-fun b!5937439 () Bool)

(declare-fun e!3633380 () List!64250)

(assert (=> b!5937439 (= e!3633380 (Cons!64126 (h!70574 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126))) (++!14079 (t!377653 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126))) (t!377653 s!2326))))))

(declare-fun b!5937441 () Bool)

(declare-fun e!3633379 () Bool)

(declare-fun lt!2311433 () List!64250)

(assert (=> b!5937441 (= e!3633379 (or (not (= (t!377653 s!2326) Nil!64126)) (= lt!2311433 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)))))))

(declare-fun d!1861205 () Bool)

(assert (=> d!1861205 e!3633379))

(declare-fun res!2487070 () Bool)

(assert (=> d!1861205 (=> (not res!2487070) (not e!3633379))))

(assert (=> d!1861205 (= res!2487070 (= (content!11825 lt!2311433) ((_ map or) (content!11825 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126))) (content!11825 (t!377653 s!2326)))))))

(assert (=> d!1861205 (= lt!2311433 e!3633380)))

(declare-fun c!1055719 () Bool)

(assert (=> d!1861205 (= c!1055719 ((_ is Nil!64126) (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126))))))

(assert (=> d!1861205 (= (++!14079 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (t!377653 s!2326)) lt!2311433)))

(declare-fun b!5937440 () Bool)

(declare-fun res!2487069 () Bool)

(assert (=> b!5937440 (=> (not res!2487069) (not e!3633379))))

(assert (=> b!5937440 (= res!2487069 (= (size!40149 lt!2311433) (+ (size!40149 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126))) (size!40149 (t!377653 s!2326)))))))

(declare-fun b!5937438 () Bool)

(assert (=> b!5937438 (= e!3633380 (t!377653 s!2326))))

(assert (= (and d!1861205 c!1055719) b!5937438))

(assert (= (and d!1861205 (not c!1055719)) b!5937439))

(assert (= (and d!1861205 res!2487070) b!5937440))

(assert (= (and b!5937440 res!2487069) b!5937441))

(declare-fun m!6827816 () Bool)

(assert (=> b!5937439 m!6827816))

(declare-fun m!6827818 () Bool)

(assert (=> d!1861205 m!6827818))

(assert (=> d!1861205 m!6827290))

(declare-fun m!6827820 () Bool)

(assert (=> d!1861205 m!6827820))

(declare-fun m!6827822 () Bool)

(assert (=> d!1861205 m!6827822))

(declare-fun m!6827824 () Bool)

(assert (=> b!5937440 m!6827824))

(assert (=> b!5937440 m!6827290))

(declare-fun m!6827826 () Bool)

(assert (=> b!5937440 m!6827826))

(declare-fun m!6827828 () Bool)

(assert (=> b!5937440 m!6827828))

(assert (=> b!5936671 d!1861205))

(declare-fun b!5937443 () Bool)

(declare-fun e!3633382 () List!64250)

(assert (=> b!5937443 (= e!3633382 (Cons!64126 (h!70574 Nil!64126) (++!14079 (t!377653 Nil!64126) (Cons!64126 (h!70574 s!2326) Nil!64126))))))

(declare-fun b!5937445 () Bool)

(declare-fun e!3633381 () Bool)

(declare-fun lt!2311434 () List!64250)

(assert (=> b!5937445 (= e!3633381 (or (not (= (Cons!64126 (h!70574 s!2326) Nil!64126) Nil!64126)) (= lt!2311434 Nil!64126)))))

(declare-fun d!1861207 () Bool)

(assert (=> d!1861207 e!3633381))

(declare-fun res!2487072 () Bool)

(assert (=> d!1861207 (=> (not res!2487072) (not e!3633381))))

(assert (=> d!1861207 (= res!2487072 (= (content!11825 lt!2311434) ((_ map or) (content!11825 Nil!64126) (content!11825 (Cons!64126 (h!70574 s!2326) Nil!64126)))))))

(assert (=> d!1861207 (= lt!2311434 e!3633382)))

(declare-fun c!1055720 () Bool)

(assert (=> d!1861207 (= c!1055720 ((_ is Nil!64126) Nil!64126))))

(assert (=> d!1861207 (= (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) lt!2311434)))

(declare-fun b!5937444 () Bool)

(declare-fun res!2487071 () Bool)

(assert (=> b!5937444 (=> (not res!2487071) (not e!3633381))))

(assert (=> b!5937444 (= res!2487071 (= (size!40149 lt!2311434) (+ (size!40149 Nil!64126) (size!40149 (Cons!64126 (h!70574 s!2326) Nil!64126)))))))

(declare-fun b!5937442 () Bool)

(assert (=> b!5937442 (= e!3633382 (Cons!64126 (h!70574 s!2326) Nil!64126))))

(assert (= (and d!1861207 c!1055720) b!5937442))

(assert (= (and d!1861207 (not c!1055720)) b!5937443))

(assert (= (and d!1861207 res!2487072) b!5937444))

(assert (= (and b!5937444 res!2487071) b!5937445))

(declare-fun m!6827830 () Bool)

(assert (=> b!5937443 m!6827830))

(declare-fun m!6827832 () Bool)

(assert (=> d!1861207 m!6827832))

(declare-fun m!6827834 () Bool)

(assert (=> d!1861207 m!6827834))

(declare-fun m!6827836 () Bool)

(assert (=> d!1861207 m!6827836))

(declare-fun m!6827838 () Bool)

(assert (=> b!5937444 m!6827838))

(declare-fun m!6827840 () Bool)

(assert (=> b!5937444 m!6827840))

(declare-fun m!6827842 () Bool)

(assert (=> b!5937444 m!6827842))

(assert (=> b!5936671 d!1861207))

(declare-fun d!1861209 () Bool)

(assert (=> d!1861209 (= (++!14079 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (t!377653 s!2326)) s!2326)))

(declare-fun lt!2311437 () Unit!157237)

(declare-fun choose!44753 (List!64250 C!32236 List!64250 List!64250) Unit!157237)

(assert (=> d!1861209 (= lt!2311437 (choose!44753 Nil!64126 (h!70574 s!2326) (t!377653 s!2326) s!2326))))

(assert (=> d!1861209 (= (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) (t!377653 s!2326))) s!2326)))

(assert (=> d!1861209 (= (lemmaMoveElementToOtherListKeepsConcatEq!2174 Nil!64126 (h!70574 s!2326) (t!377653 s!2326) s!2326) lt!2311437)))

(declare-fun bs!1404419 () Bool)

(assert (= bs!1404419 d!1861209))

(assert (=> bs!1404419 m!6827290))

(assert (=> bs!1404419 m!6827290))

(assert (=> bs!1404419 m!6827292))

(declare-fun m!6827844 () Bool)

(assert (=> bs!1404419 m!6827844))

(declare-fun m!6827846 () Bool)

(assert (=> bs!1404419 m!6827846))

(assert (=> b!5936671 d!1861209))

(declare-fun d!1861211 () Bool)

(declare-fun e!3633387 () Bool)

(assert (=> d!1861211 e!3633387))

(declare-fun res!2487073 () Bool)

(assert (=> d!1861211 (=> res!2487073 e!3633387)))

(declare-fun e!3633386 () Bool)

(assert (=> d!1861211 (= res!2487073 e!3633386)))

(declare-fun res!2487075 () Bool)

(assert (=> d!1861211 (=> (not res!2487075) (not e!3633386))))

(declare-fun lt!2311439 () Option!15874)

(assert (=> d!1861211 (= res!2487075 (isDefined!12577 lt!2311439))))

(declare-fun e!3633383 () Option!15874)

(assert (=> d!1861211 (= lt!2311439 e!3633383)))

(declare-fun c!1055721 () Bool)

(declare-fun e!3633384 () Bool)

(assert (=> d!1861211 (= c!1055721 e!3633384)))

(declare-fun res!2487074 () Bool)

(assert (=> d!1861211 (=> (not res!2487074) (not e!3633384))))

(assert (=> d!1861211 (= res!2487074 (matchR!8166 (regOne!32478 r!7292) (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126))))))

(assert (=> d!1861211 (validRegex!7719 (regOne!32478 r!7292))))

(assert (=> d!1861211 (= (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (t!377653 s!2326) s!2326) lt!2311439)))

(declare-fun b!5937446 () Bool)

(assert (=> b!5937446 (= e!3633384 (matchR!8166 (regTwo!32478 r!7292) (t!377653 s!2326)))))

(declare-fun b!5937447 () Bool)

(declare-fun e!3633385 () Option!15874)

(assert (=> b!5937447 (= e!3633385 None!15873)))

(declare-fun b!5937448 () Bool)

(assert (=> b!5937448 (= e!3633383 e!3633385)))

(declare-fun c!1055722 () Bool)

(assert (=> b!5937448 (= c!1055722 ((_ is Nil!64126) (t!377653 s!2326)))))

(declare-fun b!5937449 () Bool)

(assert (=> b!5937449 (= e!3633383 (Some!15873 (tuple2!65925 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (t!377653 s!2326))))))

(declare-fun b!5937450 () Bool)

(declare-fun res!2487076 () Bool)

(assert (=> b!5937450 (=> (not res!2487076) (not e!3633386))))

(assert (=> b!5937450 (= res!2487076 (matchR!8166 (regTwo!32478 r!7292) (_2!36265 (get!22086 lt!2311439))))))

(declare-fun b!5937451 () Bool)

(assert (=> b!5937451 (= e!3633386 (= (++!14079 (_1!36265 (get!22086 lt!2311439)) (_2!36265 (get!22086 lt!2311439))) s!2326))))

(declare-fun b!5937452 () Bool)

(assert (=> b!5937452 (= e!3633387 (not (isDefined!12577 lt!2311439)))))

(declare-fun b!5937453 () Bool)

(declare-fun lt!2311438 () Unit!157237)

(declare-fun lt!2311440 () Unit!157237)

(assert (=> b!5937453 (= lt!2311438 lt!2311440)))

(assert (=> b!5937453 (= (++!14079 (++!14079 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (Cons!64126 (h!70574 (t!377653 s!2326)) Nil!64126)) (t!377653 (t!377653 s!2326))) s!2326)))

(assert (=> b!5937453 (= lt!2311440 (lemmaMoveElementToOtherListKeepsConcatEq!2174 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (h!70574 (t!377653 s!2326)) (t!377653 (t!377653 s!2326)) s!2326))))

(assert (=> b!5937453 (= e!3633385 (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) (++!14079 (++!14079 Nil!64126 (Cons!64126 (h!70574 s!2326) Nil!64126)) (Cons!64126 (h!70574 (t!377653 s!2326)) Nil!64126)) (t!377653 (t!377653 s!2326)) s!2326))))

(declare-fun b!5937454 () Bool)

(declare-fun res!2487077 () Bool)

(assert (=> b!5937454 (=> (not res!2487077) (not e!3633386))))

(assert (=> b!5937454 (= res!2487077 (matchR!8166 (regOne!32478 r!7292) (_1!36265 (get!22086 lt!2311439))))))

(assert (= (and d!1861211 res!2487074) b!5937446))

(assert (= (and d!1861211 c!1055721) b!5937449))

(assert (= (and d!1861211 (not c!1055721)) b!5937448))

(assert (= (and b!5937448 c!1055722) b!5937447))

(assert (= (and b!5937448 (not c!1055722)) b!5937453))

(assert (= (and d!1861211 res!2487075) b!5937454))

(assert (= (and b!5937454 res!2487077) b!5937450))

(assert (= (and b!5937450 res!2487076) b!5937451))

(assert (= (and d!1861211 (not res!2487073)) b!5937452))

(declare-fun m!6827848 () Bool)

(assert (=> b!5937452 m!6827848))

(declare-fun m!6827850 () Bool)

(assert (=> b!5937446 m!6827850))

(declare-fun m!6827852 () Bool)

(assert (=> b!5937451 m!6827852))

(declare-fun m!6827854 () Bool)

(assert (=> b!5937451 m!6827854))

(assert (=> d!1861211 m!6827848))

(assert (=> d!1861211 m!6827290))

(declare-fun m!6827856 () Bool)

(assert (=> d!1861211 m!6827856))

(assert (=> d!1861211 m!6827284))

(assert (=> b!5937454 m!6827852))

(declare-fun m!6827858 () Bool)

(assert (=> b!5937454 m!6827858))

(assert (=> b!5937450 m!6827852))

(declare-fun m!6827860 () Bool)

(assert (=> b!5937450 m!6827860))

(assert (=> b!5937453 m!6827290))

(declare-fun m!6827862 () Bool)

(assert (=> b!5937453 m!6827862))

(assert (=> b!5937453 m!6827862))

(declare-fun m!6827864 () Bool)

(assert (=> b!5937453 m!6827864))

(assert (=> b!5937453 m!6827290))

(declare-fun m!6827866 () Bool)

(assert (=> b!5937453 m!6827866))

(assert (=> b!5937453 m!6827862))

(declare-fun m!6827868 () Bool)

(assert (=> b!5937453 m!6827868))

(assert (=> b!5936671 d!1861211))

(assert (=> d!1861025 d!1861021))

(declare-fun d!1861213 () Bool)

(assert (=> d!1861213 (= (flatMap!1496 z!1189 lambda!323766) (dynLambda!25080 lambda!323766 (h!70573 zl!343)))))

(assert (=> d!1861213 true))

(declare-fun _$13!2715 () Unit!157237)

(assert (=> d!1861213 (= (choose!44746 z!1189 (h!70573 zl!343) lambda!323766) _$13!2715)))

(declare-fun b_lambda!223025 () Bool)

(assert (=> (not b_lambda!223025) (not d!1861213)))

(declare-fun bs!1404420 () Bool)

(assert (= bs!1404420 d!1861213))

(assert (=> bs!1404420 m!6827136))

(assert (=> bs!1404420 m!6827410))

(assert (=> d!1861025 d!1861213))

(assert (=> d!1861075 d!1861059))

(declare-fun d!1861215 () Bool)

(assert (=> d!1861215 (= (flatMap!1496 lt!2311332 lambda!323766) (dynLambda!25080 lambda!323766 lt!2311326))))

(assert (=> d!1861215 true))

(declare-fun _$13!2716 () Unit!157237)

(assert (=> d!1861215 (= (choose!44746 lt!2311332 lt!2311326 lambda!323766) _$13!2716)))

(declare-fun b_lambda!223027 () Bool)

(assert (=> (not b_lambda!223027) (not d!1861215)))

(declare-fun bs!1404421 () Bool)

(assert (= bs!1404421 d!1861215))

(assert (=> bs!1404421 m!6827162))

(assert (=> bs!1404421 m!6827534))

(assert (=> d!1861075 d!1861215))

(declare-fun d!1861217 () Bool)

(assert (=> d!1861217 (= (isEmptyLang!1420 lt!2311395) ((_ is EmptyLang!15983) lt!2311395))))

(assert (=> b!5936877 d!1861217))

(declare-fun d!1861219 () Bool)

(assert (=> d!1861219 (= (isEmpty!35996 (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) Nil!64126 s!2326 s!2326)) (not ((_ is Some!15873) (findConcatSeparation!2288 (regOne!32478 r!7292) (regTwo!32478 r!7292) Nil!64126 s!2326 s!2326))))))

(assert (=> d!1861007 d!1861219))

(assert (=> bm!471665 d!1861147))

(declare-fun d!1861221 () Bool)

(assert (=> d!1861221 (= (nullable!5978 (h!70572 (exprs!5867 lt!2311327))) (nullableFct!1949 (h!70572 (exprs!5867 lt!2311327))))))

(declare-fun bs!1404422 () Bool)

(assert (= bs!1404422 d!1861221))

(declare-fun m!6827870 () Bool)

(assert (=> bs!1404422 m!6827870))

(assert (=> b!5936972 d!1861221))

(declare-fun d!1861223 () Bool)

(assert (=> d!1861223 (= (isEmpty!35998 (tail!11593 s!2326)) ((_ is Nil!64126) (tail!11593 s!2326)))))

(assert (=> b!5937073 d!1861223))

(assert (=> b!5937073 d!1861111))

(declare-fun bs!1404423 () Bool)

(declare-fun b!5937459 () Bool)

(assert (= bs!1404423 (and b!5937459 b!5937038)))

(declare-fun lambda!323838 () Int)

(assert (=> bs!1404423 (= (and (= (reg!16312 (regOne!32479 r!7292)) (reg!16312 r!7292)) (= (regOne!32479 r!7292) r!7292)) (= lambda!323838 lambda!323826))))

(declare-fun bs!1404424 () Bool)

(assert (= bs!1404424 (and b!5937459 d!1860993)))

(assert (=> bs!1404424 (not (= lambda!323838 lambda!323787))))

(declare-fun bs!1404425 () Bool)

(assert (= bs!1404425 (and b!5937459 d!1861001)))

(assert (=> bs!1404425 (not (= lambda!323838 lambda!323799))))

(declare-fun bs!1404426 () Bool)

(assert (= bs!1404426 (and b!5937459 b!5937039)))

(assert (=> bs!1404426 (not (= lambda!323838 lambda!323827))))

(declare-fun bs!1404427 () Bool)

(assert (= bs!1404427 (and b!5937459 d!1861187)))

(assert (=> bs!1404427 (not (= lambda!323838 lambda!323835))))

(declare-fun bs!1404428 () Bool)

(assert (= bs!1404428 (and b!5937459 b!5936450)))

(assert (=> bs!1404428 (not (= lambda!323838 lambda!323765))))

(declare-fun bs!1404429 () Bool)

(assert (= bs!1404429 (and b!5937459 b!5937324)))

(assert (=> bs!1404429 (not (= lambda!323838 lambda!323832))))

(assert (=> bs!1404425 (not (= lambda!323838 lambda!323798))))

(declare-fun bs!1404430 () Bool)

(assert (= bs!1404430 (and b!5937459 b!5937323)))

(assert (=> bs!1404430 (= (and (= (reg!16312 (regOne!32479 r!7292)) (reg!16312 (regTwo!32479 r!7292))) (= (regOne!32479 r!7292) (regTwo!32479 r!7292))) (= lambda!323838 lambda!323831))))

(assert (=> bs!1404428 (not (= lambda!323838 lambda!323764))))

(assert (=> b!5937459 true))

(assert (=> b!5937459 true))

(declare-fun bs!1404431 () Bool)

(declare-fun b!5937460 () Bool)

(assert (= bs!1404431 (and b!5937460 b!5937038)))

(declare-fun lambda!323839 () Int)

(assert (=> bs!1404431 (not (= lambda!323839 lambda!323826))))

(declare-fun bs!1404432 () Bool)

(assert (= bs!1404432 (and b!5937460 d!1861001)))

(assert (=> bs!1404432 (= (and (= (regOne!32478 (regOne!32479 r!7292)) (regOne!32478 r!7292)) (= (regTwo!32478 (regOne!32479 r!7292)) (regTwo!32478 r!7292))) (= lambda!323839 lambda!323799))))

(declare-fun bs!1404433 () Bool)

(assert (= bs!1404433 (and b!5937460 b!5937039)))

(assert (=> bs!1404433 (= (and (= (regOne!32478 (regOne!32479 r!7292)) (regOne!32478 r!7292)) (= (regTwo!32478 (regOne!32479 r!7292)) (regTwo!32478 r!7292))) (= lambda!323839 lambda!323827))))

(declare-fun bs!1404434 () Bool)

(assert (= bs!1404434 (and b!5937460 d!1861187)))

(assert (=> bs!1404434 (not (= lambda!323839 lambda!323835))))

(declare-fun bs!1404435 () Bool)

(assert (= bs!1404435 (and b!5937460 b!5936450)))

(assert (=> bs!1404435 (= (and (= (regOne!32478 (regOne!32479 r!7292)) (regOne!32478 r!7292)) (= (regTwo!32478 (regOne!32479 r!7292)) (regTwo!32478 r!7292))) (= lambda!323839 lambda!323765))))

(declare-fun bs!1404436 () Bool)

(assert (= bs!1404436 (and b!5937460 d!1860993)))

(assert (=> bs!1404436 (not (= lambda!323839 lambda!323787))))

(declare-fun bs!1404437 () Bool)

(assert (= bs!1404437 (and b!5937460 b!5937459)))

(assert (=> bs!1404437 (not (= lambda!323839 lambda!323838))))

(declare-fun bs!1404438 () Bool)

(assert (= bs!1404438 (and b!5937460 b!5937324)))

(assert (=> bs!1404438 (= (and (= (regOne!32478 (regOne!32479 r!7292)) (regOne!32478 (regTwo!32479 r!7292))) (= (regTwo!32478 (regOne!32479 r!7292)) (regTwo!32478 (regTwo!32479 r!7292)))) (= lambda!323839 lambda!323832))))

(assert (=> bs!1404432 (not (= lambda!323839 lambda!323798))))

(declare-fun bs!1404439 () Bool)

(assert (= bs!1404439 (and b!5937460 b!5937323)))

(assert (=> bs!1404439 (not (= lambda!323839 lambda!323831))))

(assert (=> bs!1404435 (not (= lambda!323839 lambda!323764))))

(assert (=> b!5937460 true))

(assert (=> b!5937460 true))

(declare-fun bm!471726 () Bool)

(declare-fun call!471732 () Bool)

(assert (=> bm!471726 (= call!471732 (isEmpty!35998 s!2326))))

(declare-fun b!5937455 () Bool)

(declare-fun e!3633388 () Bool)

(assert (=> b!5937455 (= e!3633388 (matchRSpec!3084 (regTwo!32479 (regOne!32479 r!7292)) s!2326))))

(declare-fun b!5937456 () Bool)

(declare-fun e!3633393 () Bool)

(assert (=> b!5937456 (= e!3633393 e!3633388)))

(declare-fun res!2487080 () Bool)

(assert (=> b!5937456 (= res!2487080 (matchRSpec!3084 (regOne!32479 (regOne!32479 r!7292)) s!2326))))

(assert (=> b!5937456 (=> res!2487080 e!3633388)))

(declare-fun b!5937457 () Bool)

(declare-fun c!1055724 () Bool)

(assert (=> b!5937457 (= c!1055724 ((_ is Union!15983) (regOne!32479 r!7292)))))

(declare-fun e!3633392 () Bool)

(assert (=> b!5937457 (= e!3633392 e!3633393)))

(declare-fun bm!471727 () Bool)

(declare-fun c!1055723 () Bool)

(declare-fun call!471731 () Bool)

(assert (=> bm!471727 (= call!471731 (Exists!3053 (ite c!1055723 lambda!323838 lambda!323839)))))

(declare-fun b!5937458 () Bool)

(declare-fun e!3633389 () Bool)

(assert (=> b!5937458 (= e!3633393 e!3633389)))

(assert (=> b!5937458 (= c!1055723 ((_ is Star!15983) (regOne!32479 r!7292)))))

(declare-fun e!3633394 () Bool)

(assert (=> b!5937459 (= e!3633394 call!471731)))

(assert (=> b!5937460 (= e!3633389 call!471731)))

(declare-fun d!1861225 () Bool)

(declare-fun c!1055726 () Bool)

(assert (=> d!1861225 (= c!1055726 ((_ is EmptyExpr!15983) (regOne!32479 r!7292)))))

(declare-fun e!3633390 () Bool)

(assert (=> d!1861225 (= (matchRSpec!3084 (regOne!32479 r!7292) s!2326) e!3633390)))

(declare-fun b!5937461 () Bool)

(assert (=> b!5937461 (= e!3633392 (= s!2326 (Cons!64126 (c!1055457 (regOne!32479 r!7292)) Nil!64126)))))

(declare-fun b!5937462 () Bool)

(declare-fun c!1055725 () Bool)

(assert (=> b!5937462 (= c!1055725 ((_ is ElementMatch!15983) (regOne!32479 r!7292)))))

(declare-fun e!3633391 () Bool)

(assert (=> b!5937462 (= e!3633391 e!3633392)))

(declare-fun b!5937463 () Bool)

(assert (=> b!5937463 (= e!3633390 call!471732)))

(declare-fun b!5937464 () Bool)

(assert (=> b!5937464 (= e!3633390 e!3633391)))

(declare-fun res!2487078 () Bool)

(assert (=> b!5937464 (= res!2487078 (not ((_ is EmptyLang!15983) (regOne!32479 r!7292))))))

(assert (=> b!5937464 (=> (not res!2487078) (not e!3633391))))

(declare-fun b!5937465 () Bool)

(declare-fun res!2487079 () Bool)

(assert (=> b!5937465 (=> res!2487079 e!3633394)))

(assert (=> b!5937465 (= res!2487079 call!471732)))

(assert (=> b!5937465 (= e!3633389 e!3633394)))

(assert (= (and d!1861225 c!1055726) b!5937463))

(assert (= (and d!1861225 (not c!1055726)) b!5937464))

(assert (= (and b!5937464 res!2487078) b!5937462))

(assert (= (and b!5937462 c!1055725) b!5937461))

(assert (= (and b!5937462 (not c!1055725)) b!5937457))

(assert (= (and b!5937457 c!1055724) b!5937456))

(assert (= (and b!5937457 (not c!1055724)) b!5937458))

(assert (= (and b!5937456 (not res!2487080)) b!5937455))

(assert (= (and b!5937458 c!1055723) b!5937465))

(assert (= (and b!5937458 (not c!1055723)) b!5937460))

(assert (= (and b!5937465 (not res!2487079)) b!5937459))

(assert (= (or b!5937459 b!5937460) bm!471727))

(assert (= (or b!5937463 b!5937465) bm!471726))

(assert (=> bm!471726 m!6827544))

(declare-fun m!6827872 () Bool)

(assert (=> b!5937455 m!6827872))

(declare-fun m!6827874 () Bool)

(assert (=> b!5937456 m!6827874))

(declare-fun m!6827876 () Bool)

(assert (=> bm!471727 m!6827876))

(assert (=> b!5937035 d!1861225))

(declare-fun b!5937466 () Bool)

(declare-fun c!1055730 () Bool)

(assert (=> b!5937466 (= c!1055730 ((_ is Star!15983) (h!70572 (exprs!5867 lt!2311327))))))

(declare-fun e!3633397 () (InoxSet Context!10734))

(declare-fun e!3633396 () (InoxSet Context!10734))

(assert (=> b!5937466 (= e!3633397 e!3633396)))

(declare-fun bm!471728 () Bool)

(declare-fun call!471738 () (InoxSet Context!10734))

(declare-fun call!471736 () (InoxSet Context!10734))

(assert (=> bm!471728 (= call!471738 call!471736)))

(declare-fun b!5937467 () Bool)

(assert (=> b!5937467 (= e!3633396 call!471738)))

(declare-fun bm!471729 () Bool)

(declare-fun call!471733 () List!64248)

(declare-fun call!471735 () List!64248)

(assert (=> bm!471729 (= call!471733 call!471735)))

(declare-fun b!5937468 () Bool)

(declare-fun c!1055727 () Bool)

(declare-fun e!3633399 () Bool)

(assert (=> b!5937468 (= c!1055727 e!3633399)))

(declare-fun res!2487081 () Bool)

(assert (=> b!5937468 (=> (not res!2487081) (not e!3633399))))

(assert (=> b!5937468 (= res!2487081 ((_ is Concat!24828) (h!70572 (exprs!5867 lt!2311327))))))

(declare-fun e!3633400 () (InoxSet Context!10734))

(declare-fun e!3633395 () (InoxSet Context!10734))

(assert (=> b!5937468 (= e!3633400 e!3633395)))

(declare-fun bm!471730 () Bool)

(declare-fun call!471734 () (InoxSet Context!10734))

(assert (=> bm!471730 (= call!471736 call!471734)))

(declare-fun d!1861227 () Bool)

(declare-fun c!1055729 () Bool)

(assert (=> d!1861227 (= c!1055729 (and ((_ is ElementMatch!15983) (h!70572 (exprs!5867 lt!2311327))) (= (c!1055457 (h!70572 (exprs!5867 lt!2311327))) (h!70574 s!2326))))))

(declare-fun e!3633398 () (InoxSet Context!10734))

(assert (=> d!1861227 (= (derivationStepZipperDown!1233 (h!70572 (exprs!5867 lt!2311327)) (Context!10735 (t!377651 (exprs!5867 lt!2311327))) (h!70574 s!2326)) e!3633398)))

(declare-fun c!1055728 () Bool)

(declare-fun c!1055731 () Bool)

(declare-fun bm!471731 () Bool)

(assert (=> bm!471731 (= call!471734 (derivationStepZipperDown!1233 (ite c!1055728 (regOne!32479 (h!70572 (exprs!5867 lt!2311327))) (ite c!1055727 (regTwo!32478 (h!70572 (exprs!5867 lt!2311327))) (ite c!1055731 (regOne!32478 (h!70572 (exprs!5867 lt!2311327))) (reg!16312 (h!70572 (exprs!5867 lt!2311327)))))) (ite (or c!1055728 c!1055727) (Context!10735 (t!377651 (exprs!5867 lt!2311327))) (Context!10735 call!471733)) (h!70574 s!2326)))))

(declare-fun call!471737 () (InoxSet Context!10734))

(declare-fun bm!471732 () Bool)

(assert (=> bm!471732 (= call!471737 (derivationStepZipperDown!1233 (ite c!1055728 (regTwo!32479 (h!70572 (exprs!5867 lt!2311327))) (regOne!32478 (h!70572 (exprs!5867 lt!2311327)))) (ite c!1055728 (Context!10735 (t!377651 (exprs!5867 lt!2311327))) (Context!10735 call!471735)) (h!70574 s!2326)))))

(declare-fun b!5937469 () Bool)

(assert (=> b!5937469 (= e!3633397 call!471738)))

(declare-fun b!5937470 () Bool)

(assert (=> b!5937470 (= e!3633395 e!3633397)))

(assert (=> b!5937470 (= c!1055731 ((_ is Concat!24828) (h!70572 (exprs!5867 lt!2311327))))))

(declare-fun b!5937471 () Bool)

(assert (=> b!5937471 (= e!3633400 ((_ map or) call!471734 call!471737))))

(declare-fun b!5937472 () Bool)

(assert (=> b!5937472 (= e!3633396 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937473 () Bool)

(assert (=> b!5937473 (= e!3633398 (store ((as const (Array Context!10734 Bool)) false) (Context!10735 (t!377651 (exprs!5867 lt!2311327))) true))))

(declare-fun b!5937474 () Bool)

(assert (=> b!5937474 (= e!3633399 (nullable!5978 (regOne!32478 (h!70572 (exprs!5867 lt!2311327)))))))

(declare-fun b!5937475 () Bool)

(assert (=> b!5937475 (= e!3633398 e!3633400)))

(assert (=> b!5937475 (= c!1055728 ((_ is Union!15983) (h!70572 (exprs!5867 lt!2311327))))))

(declare-fun bm!471733 () Bool)

(assert (=> bm!471733 (= call!471735 ($colon$colon!1870 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311327)))) (ite (or c!1055727 c!1055731) (regTwo!32478 (h!70572 (exprs!5867 lt!2311327))) (h!70572 (exprs!5867 lt!2311327)))))))

(declare-fun b!5937476 () Bool)

(assert (=> b!5937476 (= e!3633395 ((_ map or) call!471737 call!471736))))

(assert (= (and d!1861227 c!1055729) b!5937473))

(assert (= (and d!1861227 (not c!1055729)) b!5937475))

(assert (= (and b!5937475 c!1055728) b!5937471))

(assert (= (and b!5937475 (not c!1055728)) b!5937468))

(assert (= (and b!5937468 res!2487081) b!5937474))

(assert (= (and b!5937468 c!1055727) b!5937476))

(assert (= (and b!5937468 (not c!1055727)) b!5937470))

(assert (= (and b!5937470 c!1055731) b!5937469))

(assert (= (and b!5937470 (not c!1055731)) b!5937466))

(assert (= (and b!5937466 c!1055730) b!5937467))

(assert (= (and b!5937466 (not c!1055730)) b!5937472))

(assert (= (or b!5937469 b!5937467) bm!471729))

(assert (= (or b!5937469 b!5937467) bm!471728))

(assert (= (or b!5937476 bm!471729) bm!471733))

(assert (= (or b!5937476 bm!471728) bm!471730))

(assert (= (or b!5937471 b!5937476) bm!471732))

(assert (= (or b!5937471 bm!471730) bm!471731))

(declare-fun m!6827878 () Bool)

(assert (=> bm!471732 m!6827878))

(declare-fun m!6827880 () Bool)

(assert (=> b!5937473 m!6827880))

(declare-fun m!6827882 () Bool)

(assert (=> b!5937474 m!6827882))

(declare-fun m!6827884 () Bool)

(assert (=> bm!471731 m!6827884))

(declare-fun m!6827886 () Bool)

(assert (=> bm!471733 m!6827886))

(assert (=> bm!471660 d!1861227))

(declare-fun b!5937477 () Bool)

(declare-fun c!1055735 () Bool)

(assert (=> b!5937477 (= c!1055735 ((_ is Star!15983) (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))))))

(declare-fun e!3633403 () (InoxSet Context!10734))

(declare-fun e!3633402 () (InoxSet Context!10734))

(assert (=> b!5937477 (= e!3633403 e!3633402)))

(declare-fun bm!471734 () Bool)

(declare-fun call!471744 () (InoxSet Context!10734))

(declare-fun call!471742 () (InoxSet Context!10734))

(assert (=> bm!471734 (= call!471744 call!471742)))

(declare-fun b!5937478 () Bool)

(assert (=> b!5937478 (= e!3633402 call!471744)))

(declare-fun bm!471735 () Bool)

(declare-fun call!471739 () List!64248)

(declare-fun call!471741 () List!64248)

(assert (=> bm!471735 (= call!471739 call!471741)))

(declare-fun b!5937479 () Bool)

(declare-fun c!1055732 () Bool)

(declare-fun e!3633405 () Bool)

(assert (=> b!5937479 (= c!1055732 e!3633405)))

(declare-fun res!2487082 () Bool)

(assert (=> b!5937479 (=> (not res!2487082) (not e!3633405))))

(assert (=> b!5937479 (= res!2487082 ((_ is Concat!24828) (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))))))

(declare-fun e!3633406 () (InoxSet Context!10734))

(declare-fun e!3633401 () (InoxSet Context!10734))

(assert (=> b!5937479 (= e!3633406 e!3633401)))

(declare-fun bm!471736 () Bool)

(declare-fun call!471740 () (InoxSet Context!10734))

(assert (=> bm!471736 (= call!471742 call!471740)))

(declare-fun c!1055734 () Bool)

(declare-fun d!1861229 () Bool)

(assert (=> d!1861229 (= c!1055734 (and ((_ is ElementMatch!15983) (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))) (= (c!1055457 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))) (h!70574 s!2326))))))

(declare-fun e!3633404 () (InoxSet Context!10734))

(assert (=> d!1861229 (= (derivationStepZipperDown!1233 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292)))) (ite (or c!1055473 c!1055472) lt!2311329 (Context!10735 call!471591)) (h!70574 s!2326)) e!3633404)))

(declare-fun c!1055733 () Bool)

(declare-fun c!1055736 () Bool)

(declare-fun bm!471737 () Bool)

(assert (=> bm!471737 (= call!471740 (derivationStepZipperDown!1233 (ite c!1055733 (regOne!32479 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))) (ite c!1055732 (regTwo!32478 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))) (ite c!1055736 (regOne!32478 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))) (reg!16312 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292)))))))) (ite (or c!1055733 c!1055732) (ite (or c!1055473 c!1055472) lt!2311329 (Context!10735 call!471591)) (Context!10735 call!471739)) (h!70574 s!2326)))))

(declare-fun bm!471738 () Bool)

(declare-fun call!471743 () (InoxSet Context!10734))

(assert (=> bm!471738 (= call!471743 (derivationStepZipperDown!1233 (ite c!1055733 (regTwo!32479 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))) (regOne!32478 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292)))))) (ite c!1055733 (ite (or c!1055473 c!1055472) lt!2311329 (Context!10735 call!471591)) (Context!10735 call!471741)) (h!70574 s!2326)))))

(declare-fun b!5937480 () Bool)

(assert (=> b!5937480 (= e!3633403 call!471744)))

(declare-fun b!5937481 () Bool)

(assert (=> b!5937481 (= e!3633401 e!3633403)))

(assert (=> b!5937481 (= c!1055736 ((_ is Concat!24828) (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))))))

(declare-fun b!5937482 () Bool)

(assert (=> b!5937482 (= e!3633406 ((_ map or) call!471740 call!471743))))

(declare-fun b!5937483 () Bool)

(assert (=> b!5937483 (= e!3633402 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937484 () Bool)

(assert (=> b!5937484 (= e!3633404 (store ((as const (Array Context!10734 Bool)) false) (ite (or c!1055473 c!1055472) lt!2311329 (Context!10735 call!471591)) true))))

(declare-fun b!5937485 () Bool)

(assert (=> b!5937485 (= e!3633405 (nullable!5978 (regOne!32478 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292)))))))))

(declare-fun b!5937486 () Bool)

(assert (=> b!5937486 (= e!3633404 e!3633406)))

(assert (=> b!5937486 (= c!1055733 ((_ is Union!15983) (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))))))

(declare-fun bm!471739 () Bool)

(assert (=> bm!471739 (= call!471741 ($colon$colon!1870 (exprs!5867 (ite (or c!1055473 c!1055472) lt!2311329 (Context!10735 call!471591))) (ite (or c!1055732 c!1055736) (regTwo!32478 (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292))))) (ite c!1055473 (regOne!32479 r!7292) (ite c!1055472 (regTwo!32478 r!7292) (ite c!1055476 (regOne!32478 r!7292) (reg!16312 r!7292)))))))))

(declare-fun b!5937487 () Bool)

(assert (=> b!5937487 (= e!3633401 ((_ map or) call!471743 call!471742))))

(assert (= (and d!1861229 c!1055734) b!5937484))

(assert (= (and d!1861229 (not c!1055734)) b!5937486))

(assert (= (and b!5937486 c!1055733) b!5937482))

(assert (= (and b!5937486 (not c!1055733)) b!5937479))

(assert (= (and b!5937479 res!2487082) b!5937485))

(assert (= (and b!5937479 c!1055732) b!5937487))

(assert (= (and b!5937479 (not c!1055732)) b!5937481))

(assert (= (and b!5937481 c!1055736) b!5937480))

(assert (= (and b!5937481 (not c!1055736)) b!5937477))

(assert (= (and b!5937477 c!1055735) b!5937478))

(assert (= (and b!5937477 (not c!1055735)) b!5937483))

(assert (= (or b!5937480 b!5937478) bm!471735))

(assert (= (or b!5937480 b!5937478) bm!471734))

(assert (= (or b!5937487 bm!471735) bm!471739))

(assert (= (or b!5937487 bm!471734) bm!471736))

(assert (= (or b!5937482 b!5937487) bm!471738))

(assert (= (or b!5937482 bm!471736) bm!471737))

(declare-fun m!6827888 () Bool)

(assert (=> bm!471738 m!6827888))

(declare-fun m!6827890 () Bool)

(assert (=> b!5937484 m!6827890))

(declare-fun m!6827892 () Bool)

(assert (=> b!5937485 m!6827892))

(declare-fun m!6827894 () Bool)

(assert (=> bm!471737 m!6827894))

(declare-fun m!6827896 () Bool)

(assert (=> bm!471739 m!6827896))

(assert (=> bm!471589 d!1861229))

(declare-fun d!1861231 () Bool)

(declare-fun res!2487083 () Bool)

(declare-fun e!3633407 () Bool)

(assert (=> d!1861231 (=> res!2487083 e!3633407)))

(assert (=> d!1861231 (= res!2487083 ((_ is Nil!64124) (exprs!5867 (h!70573 zl!343))))))

(assert (=> d!1861231 (= (forall!15066 (exprs!5867 (h!70573 zl!343)) lambda!323820) e!3633407)))

(declare-fun b!5937488 () Bool)

(declare-fun e!3633408 () Bool)

(assert (=> b!5937488 (= e!3633407 e!3633408)))

(declare-fun res!2487084 () Bool)

(assert (=> b!5937488 (=> (not res!2487084) (not e!3633408))))

(assert (=> b!5937488 (= res!2487084 (dynLambda!25081 lambda!323820 (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5937489 () Bool)

(assert (=> b!5937489 (= e!3633408 (forall!15066 (t!377651 (exprs!5867 (h!70573 zl!343))) lambda!323820))))

(assert (= (and d!1861231 (not res!2487083)) b!5937488))

(assert (= (and b!5937488 res!2487084) b!5937489))

(declare-fun b_lambda!223029 () Bool)

(assert (=> (not b_lambda!223029) (not b!5937488)))

(declare-fun m!6827898 () Bool)

(assert (=> b!5937488 m!6827898))

(declare-fun m!6827900 () Bool)

(assert (=> b!5937489 m!6827900))

(assert (=> d!1861057 d!1861231))

(declare-fun d!1861233 () Bool)

(assert (=> d!1861233 true))

(assert (=> d!1861233 true))

(declare-fun res!2487087 () Bool)

(assert (=> d!1861233 (= (choose!44742 lambda!323765) res!2487087)))

(assert (=> d!1860987 d!1861233))

(declare-fun d!1861235 () Bool)

(assert (=> d!1861235 (= (Exists!3053 (ite c!1055621 lambda!323826 lambda!323827)) (choose!44742 (ite c!1055621 lambda!323826 lambda!323827)))))

(declare-fun bs!1404440 () Bool)

(assert (= bs!1404440 d!1861235))

(declare-fun m!6827902 () Bool)

(assert (=> bs!1404440 m!6827902))

(assert (=> bm!471666 d!1861235))

(declare-fun b!5937490 () Bool)

(declare-fun e!3633410 () Bool)

(assert (=> b!5937490 (= e!3633410 (nullable!5978 (h!70572 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311327)))))))))

(declare-fun b!5937491 () Bool)

(declare-fun e!3633409 () (InoxSet Context!10734))

(declare-fun call!471745 () (InoxSet Context!10734))

(assert (=> b!5937491 (= e!3633409 call!471745)))

(declare-fun bm!471740 () Bool)

(assert (=> bm!471740 (= call!471745 (derivationStepZipperDown!1233 (h!70572 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311327))))) (Context!10735 (t!377651 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311327)))))) (h!70574 s!2326)))))

(declare-fun b!5937492 () Bool)

(assert (=> b!5937492 (= e!3633409 ((as const (Array Context!10734 Bool)) false))))

(declare-fun e!3633411 () (InoxSet Context!10734))

(declare-fun b!5937493 () Bool)

(assert (=> b!5937493 (= e!3633411 ((_ map or) call!471745 (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311327)))))) (h!70574 s!2326))))))

(declare-fun b!5937494 () Bool)

(assert (=> b!5937494 (= e!3633411 e!3633409)))

(declare-fun c!1055738 () Bool)

(assert (=> b!5937494 (= c!1055738 ((_ is Cons!64124) (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311327))))))))

(declare-fun d!1861237 () Bool)

(declare-fun c!1055737 () Bool)

(assert (=> d!1861237 (= c!1055737 e!3633410)))

(declare-fun res!2487088 () Bool)

(assert (=> d!1861237 (=> (not res!2487088) (not e!3633410))))

(assert (=> d!1861237 (= res!2487088 ((_ is Cons!64124) (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311327))))))))

(assert (=> d!1861237 (= (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 lt!2311327))) (h!70574 s!2326)) e!3633411)))

(assert (= (and d!1861237 res!2487088) b!5937490))

(assert (= (and d!1861237 c!1055737) b!5937493))

(assert (= (and d!1861237 (not c!1055737)) b!5937494))

(assert (= (and b!5937494 c!1055738) b!5937491))

(assert (= (and b!5937494 (not c!1055738)) b!5937492))

(assert (= (or b!5937493 b!5937491) bm!471740))

(declare-fun m!6827904 () Bool)

(assert (=> b!5937490 m!6827904))

(declare-fun m!6827906 () Bool)

(assert (=> bm!471740 m!6827906))

(declare-fun m!6827908 () Bool)

(assert (=> b!5937493 m!6827908))

(assert (=> b!5936975 d!1861237))

(declare-fun d!1861239 () Bool)

(assert (=> d!1861239 (= (nullable!5978 (h!70572 (exprs!5867 lt!2311326))) (nullableFct!1949 (h!70572 (exprs!5867 lt!2311326))))))

(declare-fun bs!1404441 () Bool)

(assert (= bs!1404441 d!1861239))

(declare-fun m!6827910 () Bool)

(assert (=> bs!1404441 m!6827910))

(assert (=> b!5936957 d!1861239))

(assert (=> b!5936914 d!1861091))

(declare-fun bs!1404442 () Bool)

(declare-fun d!1861241 () Bool)

(assert (= bs!1404442 (and d!1861241 d!1861195)))

(declare-fun lambda!323840 () Int)

(assert (=> bs!1404442 (= lambda!323840 lambda!323836)))

(declare-fun bs!1404443 () Bool)

(assert (= bs!1404443 (and d!1861241 d!1860955)))

(assert (=> bs!1404443 (= lambda!323840 lambda!323769)))

(declare-fun bs!1404444 () Bool)

(assert (= bs!1404444 (and d!1861241 d!1861091)))

(assert (=> bs!1404444 (= lambda!323840 lambda!323830)))

(declare-fun bs!1404445 () Bool)

(assert (= bs!1404445 (and d!1861241 d!1861027)))

(assert (=> bs!1404445 (= lambda!323840 lambda!323814)))

(declare-fun bs!1404446 () Bool)

(assert (= bs!1404446 (and d!1861241 d!1861057)))

(assert (=> bs!1404446 (= lambda!323840 lambda!323820)))

(declare-fun bs!1404447 () Bool)

(assert (= bs!1404447 (and d!1861241 d!1861067)))

(assert (=> bs!1404447 (= lambda!323840 lambda!323821)))

(declare-fun bs!1404448 () Bool)

(assert (= bs!1404448 (and d!1861241 d!1861033)))

(assert (=> bs!1404448 (= lambda!323840 lambda!323818)))

(declare-fun bs!1404449 () Bool)

(assert (= bs!1404449 (and d!1861241 d!1861203)))

(assert (=> bs!1404449 (= lambda!323840 lambda!323837)))

(declare-fun lt!2311441 () List!64248)

(assert (=> d!1861241 (forall!15066 lt!2311441 lambda!323840)))

(declare-fun e!3633412 () List!64248)

(assert (=> d!1861241 (= lt!2311441 e!3633412)))

(declare-fun c!1055739 () Bool)

(assert (=> d!1861241 (= c!1055739 ((_ is Cons!64125) (t!377652 zl!343)))))

(assert (=> d!1861241 (= (unfocusZipperList!1404 (t!377652 zl!343)) lt!2311441)))

(declare-fun b!5937495 () Bool)

(assert (=> b!5937495 (= e!3633412 (Cons!64124 (generalisedConcat!1580 (exprs!5867 (h!70573 (t!377652 zl!343)))) (unfocusZipperList!1404 (t!377652 (t!377652 zl!343)))))))

(declare-fun b!5937496 () Bool)

(assert (=> b!5937496 (= e!3633412 Nil!64124)))

(assert (= (and d!1861241 c!1055739) b!5937495))

(assert (= (and d!1861241 (not c!1055739)) b!5937496))

(declare-fun m!6827912 () Bool)

(assert (=> d!1861241 m!6827912))

(declare-fun m!6827914 () Bool)

(assert (=> b!5937495 m!6827914))

(declare-fun m!6827916 () Bool)

(assert (=> b!5937495 m!6827916))

(assert (=> b!5936914 d!1861241))

(declare-fun d!1861243 () Bool)

(assert (=> d!1861243 (= (isEmpty!35993 (unfocusZipperList!1404 zl!343)) ((_ is Nil!64124) (unfocusZipperList!1404 zl!343)))))

(assert (=> b!5936883 d!1861243))

(assert (=> b!5937077 d!1861223))

(assert (=> b!5937077 d!1861111))

(declare-fun d!1861245 () Bool)

(assert (=> d!1861245 (= (isConcat!934 lt!2311420) ((_ is Concat!24828) lt!2311420))))

(assert (=> b!5937108 d!1861245))

(declare-fun b!5937497 () Bool)

(declare-fun c!1055743 () Bool)

(assert (=> b!5937497 (= c!1055743 ((_ is Star!15983) (h!70572 (exprs!5867 lt!2311326))))))

(declare-fun e!3633415 () (InoxSet Context!10734))

(declare-fun e!3633414 () (InoxSet Context!10734))

(assert (=> b!5937497 (= e!3633415 e!3633414)))

(declare-fun bm!471741 () Bool)

(declare-fun call!471751 () (InoxSet Context!10734))

(declare-fun call!471749 () (InoxSet Context!10734))

(assert (=> bm!471741 (= call!471751 call!471749)))

(declare-fun b!5937498 () Bool)

(assert (=> b!5937498 (= e!3633414 call!471751)))

(declare-fun bm!471742 () Bool)

(declare-fun call!471746 () List!64248)

(declare-fun call!471748 () List!64248)

(assert (=> bm!471742 (= call!471746 call!471748)))

(declare-fun b!5937499 () Bool)

(declare-fun c!1055740 () Bool)

(declare-fun e!3633417 () Bool)

(assert (=> b!5937499 (= c!1055740 e!3633417)))

(declare-fun res!2487089 () Bool)

(assert (=> b!5937499 (=> (not res!2487089) (not e!3633417))))

(assert (=> b!5937499 (= res!2487089 ((_ is Concat!24828) (h!70572 (exprs!5867 lt!2311326))))))

(declare-fun e!3633418 () (InoxSet Context!10734))

(declare-fun e!3633413 () (InoxSet Context!10734))

(assert (=> b!5937499 (= e!3633418 e!3633413)))

(declare-fun bm!471743 () Bool)

(declare-fun call!471747 () (InoxSet Context!10734))

(assert (=> bm!471743 (= call!471749 call!471747)))

(declare-fun d!1861247 () Bool)

(declare-fun c!1055742 () Bool)

(assert (=> d!1861247 (= c!1055742 (and ((_ is ElementMatch!15983) (h!70572 (exprs!5867 lt!2311326))) (= (c!1055457 (h!70572 (exprs!5867 lt!2311326))) (h!70574 s!2326))))))

(declare-fun e!3633416 () (InoxSet Context!10734))

(assert (=> d!1861247 (= (derivationStepZipperDown!1233 (h!70572 (exprs!5867 lt!2311326)) (Context!10735 (t!377651 (exprs!5867 lt!2311326))) (h!70574 s!2326)) e!3633416)))

(declare-fun bm!471744 () Bool)

(declare-fun c!1055741 () Bool)

(declare-fun c!1055744 () Bool)

(assert (=> bm!471744 (= call!471747 (derivationStepZipperDown!1233 (ite c!1055741 (regOne!32479 (h!70572 (exprs!5867 lt!2311326))) (ite c!1055740 (regTwo!32478 (h!70572 (exprs!5867 lt!2311326))) (ite c!1055744 (regOne!32478 (h!70572 (exprs!5867 lt!2311326))) (reg!16312 (h!70572 (exprs!5867 lt!2311326)))))) (ite (or c!1055741 c!1055740) (Context!10735 (t!377651 (exprs!5867 lt!2311326))) (Context!10735 call!471746)) (h!70574 s!2326)))))

(declare-fun bm!471745 () Bool)

(declare-fun call!471750 () (InoxSet Context!10734))

(assert (=> bm!471745 (= call!471750 (derivationStepZipperDown!1233 (ite c!1055741 (regTwo!32479 (h!70572 (exprs!5867 lt!2311326))) (regOne!32478 (h!70572 (exprs!5867 lt!2311326)))) (ite c!1055741 (Context!10735 (t!377651 (exprs!5867 lt!2311326))) (Context!10735 call!471748)) (h!70574 s!2326)))))

(declare-fun b!5937500 () Bool)

(assert (=> b!5937500 (= e!3633415 call!471751)))

(declare-fun b!5937501 () Bool)

(assert (=> b!5937501 (= e!3633413 e!3633415)))

(assert (=> b!5937501 (= c!1055744 ((_ is Concat!24828) (h!70572 (exprs!5867 lt!2311326))))))

(declare-fun b!5937502 () Bool)

(assert (=> b!5937502 (= e!3633418 ((_ map or) call!471747 call!471750))))

(declare-fun b!5937503 () Bool)

(assert (=> b!5937503 (= e!3633414 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937504 () Bool)

(assert (=> b!5937504 (= e!3633416 (store ((as const (Array Context!10734 Bool)) false) (Context!10735 (t!377651 (exprs!5867 lt!2311326))) true))))

(declare-fun b!5937505 () Bool)

(assert (=> b!5937505 (= e!3633417 (nullable!5978 (regOne!32478 (h!70572 (exprs!5867 lt!2311326)))))))

(declare-fun b!5937506 () Bool)

(assert (=> b!5937506 (= e!3633416 e!3633418)))

(assert (=> b!5937506 (= c!1055741 ((_ is Union!15983) (h!70572 (exprs!5867 lt!2311326))))))

(declare-fun bm!471746 () Bool)

(assert (=> bm!471746 (= call!471748 ($colon$colon!1870 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311326)))) (ite (or c!1055740 c!1055744) (regTwo!32478 (h!70572 (exprs!5867 lt!2311326))) (h!70572 (exprs!5867 lt!2311326)))))))

(declare-fun b!5937507 () Bool)

(assert (=> b!5937507 (= e!3633413 ((_ map or) call!471750 call!471749))))

(assert (= (and d!1861247 c!1055742) b!5937504))

(assert (= (and d!1861247 (not c!1055742)) b!5937506))

(assert (= (and b!5937506 c!1055741) b!5937502))

(assert (= (and b!5937506 (not c!1055741)) b!5937499))

(assert (= (and b!5937499 res!2487089) b!5937505))

(assert (= (and b!5937499 c!1055740) b!5937507))

(assert (= (and b!5937499 (not c!1055740)) b!5937501))

(assert (= (and b!5937501 c!1055744) b!5937500))

(assert (= (and b!5937501 (not c!1055744)) b!5937497))

(assert (= (and b!5937497 c!1055743) b!5937498))

(assert (= (and b!5937497 (not c!1055743)) b!5937503))

(assert (= (or b!5937500 b!5937498) bm!471742))

(assert (= (or b!5937500 b!5937498) bm!471741))

(assert (= (or b!5937507 bm!471742) bm!471746))

(assert (= (or b!5937507 bm!471741) bm!471743))

(assert (= (or b!5937502 b!5937507) bm!471745))

(assert (= (or b!5937502 bm!471743) bm!471744))

(declare-fun m!6827918 () Bool)

(assert (=> bm!471745 m!6827918))

(declare-fun m!6827920 () Bool)

(assert (=> b!5937504 m!6827920))

(declare-fun m!6827922 () Bool)

(assert (=> b!5937505 m!6827922))

(declare-fun m!6827924 () Bool)

(assert (=> bm!471744 m!6827924))

(declare-fun m!6827926 () Bool)

(assert (=> bm!471746 m!6827926))

(assert (=> bm!471659 d!1861247))

(declare-fun d!1861249 () Bool)

(assert (=> d!1861249 (= (nullable!5978 (h!70572 (exprs!5867 (h!70573 zl!343)))) (nullableFct!1949 (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun bs!1404450 () Bool)

(assert (= bs!1404450 d!1861249))

(declare-fun m!6827928 () Bool)

(assert (=> bs!1404450 m!6827928))

(assert (=> b!5936824 d!1861249))

(declare-fun d!1861251 () Bool)

(assert (=> d!1861251 true))

(declare-fun setRes!40324 () Bool)

(assert (=> d!1861251 setRes!40324))

(declare-fun condSetEmpty!40324 () Bool)

(declare-fun res!2487090 () (InoxSet Context!10734))

(assert (=> d!1861251 (= condSetEmpty!40324 (= res!2487090 ((as const (Array Context!10734 Bool)) false)))))

(assert (=> d!1861251 (= (choose!44745 lt!2311333 lambda!323766) res!2487090)))

(declare-fun setIsEmpty!40324 () Bool)

(assert (=> setIsEmpty!40324 setRes!40324))

(declare-fun tp!1651787 () Bool)

(declare-fun setNonEmpty!40324 () Bool)

(declare-fun setElem!40324 () Context!10734)

(declare-fun e!3633419 () Bool)

(assert (=> setNonEmpty!40324 (= setRes!40324 (and tp!1651787 (inv!83204 setElem!40324) e!3633419))))

(declare-fun setRest!40324 () (InoxSet Context!10734))

(assert (=> setNonEmpty!40324 (= res!2487090 ((_ map or) (store ((as const (Array Context!10734 Bool)) false) setElem!40324 true) setRest!40324))))

(declare-fun b!5937508 () Bool)

(declare-fun tp!1651788 () Bool)

(assert (=> b!5937508 (= e!3633419 tp!1651788)))

(assert (= (and d!1861251 condSetEmpty!40324) setIsEmpty!40324))

(assert (= (and d!1861251 (not condSetEmpty!40324)) setNonEmpty!40324))

(assert (= setNonEmpty!40324 b!5937508))

(declare-fun m!6827930 () Bool)

(assert (=> setNonEmpty!40324 m!6827930))

(assert (=> d!1861061 d!1861251))

(declare-fun b!5937509 () Bool)

(declare-fun c!1055748 () Bool)

(assert (=> b!5937509 (= c!1055748 ((_ is Star!15983) (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))))))

(declare-fun e!3633422 () (InoxSet Context!10734))

(declare-fun e!3633421 () (InoxSet Context!10734))

(assert (=> b!5937509 (= e!3633422 e!3633421)))

(declare-fun bm!471747 () Bool)

(declare-fun call!471757 () (InoxSet Context!10734))

(declare-fun call!471755 () (InoxSet Context!10734))

(assert (=> bm!471747 (= call!471757 call!471755)))

(declare-fun b!5937510 () Bool)

(assert (=> b!5937510 (= e!3633421 call!471757)))

(declare-fun bm!471748 () Bool)

(declare-fun call!471752 () List!64248)

(declare-fun call!471754 () List!64248)

(assert (=> bm!471748 (= call!471752 call!471754)))

(declare-fun b!5937511 () Bool)

(declare-fun c!1055745 () Bool)

(declare-fun e!3633424 () Bool)

(assert (=> b!5937511 (= c!1055745 e!3633424)))

(declare-fun res!2487091 () Bool)

(assert (=> b!5937511 (=> (not res!2487091) (not e!3633424))))

(assert (=> b!5937511 (= res!2487091 ((_ is Concat!24828) (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))))))

(declare-fun e!3633425 () (InoxSet Context!10734))

(declare-fun e!3633420 () (InoxSet Context!10734))

(assert (=> b!5937511 (= e!3633425 e!3633420)))

(declare-fun bm!471749 () Bool)

(declare-fun call!471753 () (InoxSet Context!10734))

(assert (=> bm!471749 (= call!471755 call!471753)))

(declare-fun c!1055747 () Bool)

(declare-fun d!1861253 () Bool)

(assert (=> d!1861253 (= c!1055747 (and ((_ is ElementMatch!15983) (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))) (= (c!1055457 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))) (h!70574 s!2326))))))

(declare-fun e!3633423 () (InoxSet Context!10734))

(assert (=> d!1861253 (= (derivationStepZipperDown!1233 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292))) (ite c!1055605 lt!2311327 (Context!10735 call!471660)) (h!70574 s!2326)) e!3633423)))

(declare-fun c!1055749 () Bool)

(declare-fun c!1055746 () Bool)

(declare-fun bm!471750 () Bool)

(assert (=> bm!471750 (= call!471753 (derivationStepZipperDown!1233 (ite c!1055746 (regOne!32479 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))) (ite c!1055745 (regTwo!32478 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))) (ite c!1055749 (regOne!32478 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))) (reg!16312 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292))))))) (ite (or c!1055746 c!1055745) (ite c!1055605 lt!2311327 (Context!10735 call!471660)) (Context!10735 call!471752)) (h!70574 s!2326)))))

(declare-fun bm!471751 () Bool)

(declare-fun call!471756 () (InoxSet Context!10734))

(assert (=> bm!471751 (= call!471756 (derivationStepZipperDown!1233 (ite c!1055746 (regTwo!32479 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))) (regOne!32478 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292))))) (ite c!1055746 (ite c!1055605 lt!2311327 (Context!10735 call!471660)) (Context!10735 call!471754)) (h!70574 s!2326)))))

(declare-fun b!5937512 () Bool)

(assert (=> b!5937512 (= e!3633422 call!471757)))

(declare-fun b!5937513 () Bool)

(assert (=> b!5937513 (= e!3633420 e!3633422)))

(assert (=> b!5937513 (= c!1055749 ((_ is Concat!24828) (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))))))

(declare-fun b!5937514 () Bool)

(assert (=> b!5937514 (= e!3633425 ((_ map or) call!471753 call!471756))))

(declare-fun b!5937515 () Bool)

(assert (=> b!5937515 (= e!3633421 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937516 () Bool)

(assert (=> b!5937516 (= e!3633423 (store ((as const (Array Context!10734 Bool)) false) (ite c!1055605 lt!2311327 (Context!10735 call!471660)) true))))

(declare-fun b!5937517 () Bool)

(assert (=> b!5937517 (= e!3633424 (nullable!5978 (regOne!32478 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292))))))))

(declare-fun b!5937518 () Bool)

(assert (=> b!5937518 (= e!3633423 e!3633425)))

(assert (=> b!5937518 (= c!1055746 ((_ is Union!15983) (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))))))

(declare-fun bm!471752 () Bool)

(assert (=> bm!471752 (= call!471754 ($colon$colon!1870 (exprs!5867 (ite c!1055605 lt!2311327 (Context!10735 call!471660))) (ite (or c!1055745 c!1055749) (regTwo!32478 (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292)))) (ite c!1055605 (regTwo!32479 (regOne!32478 r!7292)) (regOne!32478 (regOne!32478 r!7292))))))))

(declare-fun b!5937519 () Bool)

(assert (=> b!5937519 (= e!3633420 ((_ map or) call!471756 call!471755))))

(assert (= (and d!1861253 c!1055747) b!5937516))

(assert (= (and d!1861253 (not c!1055747)) b!5937518))

(assert (= (and b!5937518 c!1055746) b!5937514))

(assert (= (and b!5937518 (not c!1055746)) b!5937511))

(assert (= (and b!5937511 res!2487091) b!5937517))

(assert (= (and b!5937511 c!1055745) b!5937519))

(assert (= (and b!5937511 (not c!1055745)) b!5937513))

(assert (= (and b!5937513 c!1055749) b!5937512))

(assert (= (and b!5937513 (not c!1055749)) b!5937509))

(assert (= (and b!5937509 c!1055748) b!5937510))

(assert (= (and b!5937509 (not c!1055748)) b!5937515))

(assert (= (or b!5937512 b!5937510) bm!471748))

(assert (= (or b!5937512 b!5937510) bm!471747))

(assert (= (or b!5937519 bm!471748) bm!471752))

(assert (= (or b!5937519 bm!471747) bm!471749))

(assert (= (or b!5937514 b!5937519) bm!471751))

(assert (= (or b!5937514 bm!471749) bm!471750))

(declare-fun m!6827932 () Bool)

(assert (=> bm!471751 m!6827932))

(declare-fun m!6827934 () Bool)

(assert (=> b!5937516 m!6827934))

(declare-fun m!6827936 () Bool)

(assert (=> b!5937517 m!6827936))

(declare-fun m!6827938 () Bool)

(assert (=> bm!471750 m!6827938))

(declare-fun m!6827940 () Bool)

(assert (=> bm!471752 m!6827940))

(assert (=> bm!471657 d!1861253))

(declare-fun d!1861255 () Bool)

(assert (=> d!1861255 (= (head!12507 (exprs!5867 (h!70573 zl!343))) (h!70572 (exprs!5867 (h!70573 zl!343))))))

(assert (=> b!5937110 d!1861255))

(declare-fun b!5937520 () Bool)

(declare-fun e!3633427 () Bool)

(assert (=> b!5937520 (= e!3633427 (nullable!5978 (h!70572 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311326)))))))))

(declare-fun b!5937521 () Bool)

(declare-fun e!3633426 () (InoxSet Context!10734))

(declare-fun call!471758 () (InoxSet Context!10734))

(assert (=> b!5937521 (= e!3633426 call!471758)))

(declare-fun bm!471753 () Bool)

(assert (=> bm!471753 (= call!471758 (derivationStepZipperDown!1233 (h!70572 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311326))))) (Context!10735 (t!377651 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311326)))))) (h!70574 s!2326)))))

(declare-fun b!5937522 () Bool)

(assert (=> b!5937522 (= e!3633426 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937523 () Bool)

(declare-fun e!3633428 () (InoxSet Context!10734))

(assert (=> b!5937523 (= e!3633428 ((_ map or) call!471758 (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311326)))))) (h!70574 s!2326))))))

(declare-fun b!5937524 () Bool)

(assert (=> b!5937524 (= e!3633428 e!3633426)))

(declare-fun c!1055751 () Bool)

(assert (=> b!5937524 (= c!1055751 ((_ is Cons!64124) (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311326))))))))

(declare-fun d!1861257 () Bool)

(declare-fun c!1055750 () Bool)

(assert (=> d!1861257 (= c!1055750 e!3633427)))

(declare-fun res!2487092 () Bool)

(assert (=> d!1861257 (=> (not res!2487092) (not e!3633427))))

(assert (=> d!1861257 (= res!2487092 ((_ is Cons!64124) (exprs!5867 (Context!10735 (t!377651 (exprs!5867 lt!2311326))))))))

(assert (=> d!1861257 (= (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 lt!2311326))) (h!70574 s!2326)) e!3633428)))

(assert (= (and d!1861257 res!2487092) b!5937520))

(assert (= (and d!1861257 c!1055750) b!5937523))

(assert (= (and d!1861257 (not c!1055750)) b!5937524))

(assert (= (and b!5937524 c!1055751) b!5937521))

(assert (= (and b!5937524 (not c!1055751)) b!5937522))

(assert (= (or b!5937523 b!5937521) bm!471753))

(declare-fun m!6827942 () Bool)

(assert (=> b!5937520 m!6827942))

(declare-fun m!6827944 () Bool)

(assert (=> bm!471753 m!6827944))

(declare-fun m!6827946 () Bool)

(assert (=> b!5937523 m!6827946))

(assert (=> b!5936960 d!1861257))

(declare-fun d!1861259 () Bool)

(assert (=> d!1861259 (= (nullable!5978 (reg!16312 r!7292)) (nullableFct!1949 (reg!16312 r!7292)))))

(declare-fun bs!1404451 () Bool)

(assert (= bs!1404451 d!1861259))

(declare-fun m!6827948 () Bool)

(assert (=> bs!1404451 m!6827948))

(assert (=> b!5936810 d!1861259))

(declare-fun bs!1404452 () Bool)

(declare-fun d!1861261 () Bool)

(assert (= bs!1404452 (and d!1861261 d!1861195)))

(declare-fun lambda!323841 () Int)

(assert (=> bs!1404452 (= lambda!323841 lambda!323836)))

(declare-fun bs!1404453 () Bool)

(assert (= bs!1404453 (and d!1861261 d!1861091)))

(assert (=> bs!1404453 (= lambda!323841 lambda!323830)))

(declare-fun bs!1404454 () Bool)

(assert (= bs!1404454 (and d!1861261 d!1861027)))

(assert (=> bs!1404454 (= lambda!323841 lambda!323814)))

(declare-fun bs!1404455 () Bool)

(assert (= bs!1404455 (and d!1861261 d!1861057)))

(assert (=> bs!1404455 (= lambda!323841 lambda!323820)))

(declare-fun bs!1404456 () Bool)

(assert (= bs!1404456 (and d!1861261 d!1861067)))

(assert (=> bs!1404456 (= lambda!323841 lambda!323821)))

(declare-fun bs!1404457 () Bool)

(assert (= bs!1404457 (and d!1861261 d!1861033)))

(assert (=> bs!1404457 (= lambda!323841 lambda!323818)))

(declare-fun bs!1404458 () Bool)

(assert (= bs!1404458 (and d!1861261 d!1861203)))

(assert (=> bs!1404458 (= lambda!323841 lambda!323837)))

(declare-fun bs!1404459 () Bool)

(assert (= bs!1404459 (and d!1861261 d!1861241)))

(assert (=> bs!1404459 (= lambda!323841 lambda!323840)))

(declare-fun bs!1404460 () Bool)

(assert (= bs!1404460 (and d!1861261 d!1860955)))

(assert (=> bs!1404460 (= lambda!323841 lambda!323769)))

(assert (=> d!1861261 (= (inv!83204 setElem!40320) (forall!15066 (exprs!5867 setElem!40320) lambda!323841))))

(declare-fun bs!1404461 () Bool)

(assert (= bs!1404461 d!1861261))

(declare-fun m!6827950 () Bool)

(assert (=> bs!1404461 m!6827950))

(assert (=> setNonEmpty!40320 d!1861261))

(declare-fun b!5937525 () Bool)

(declare-fun c!1055755 () Bool)

(assert (=> b!5937525 (= c!1055755 ((_ is Star!15983) (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun e!3633431 () (InoxSet Context!10734))

(declare-fun e!3633430 () (InoxSet Context!10734))

(assert (=> b!5937525 (= e!3633431 e!3633430)))

(declare-fun bm!471754 () Bool)

(declare-fun call!471764 () (InoxSet Context!10734))

(declare-fun call!471762 () (InoxSet Context!10734))

(assert (=> bm!471754 (= call!471764 call!471762)))

(declare-fun b!5937526 () Bool)

(assert (=> b!5937526 (= e!3633430 call!471764)))

(declare-fun bm!471755 () Bool)

(declare-fun call!471759 () List!64248)

(declare-fun call!471761 () List!64248)

(assert (=> bm!471755 (= call!471759 call!471761)))

(declare-fun b!5937527 () Bool)

(declare-fun c!1055752 () Bool)

(declare-fun e!3633433 () Bool)

(assert (=> b!5937527 (= c!1055752 e!3633433)))

(declare-fun res!2487093 () Bool)

(assert (=> b!5937527 (=> (not res!2487093) (not e!3633433))))

(assert (=> b!5937527 (= res!2487093 ((_ is Concat!24828) (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun e!3633434 () (InoxSet Context!10734))

(declare-fun e!3633429 () (InoxSet Context!10734))

(assert (=> b!5937527 (= e!3633434 e!3633429)))

(declare-fun bm!471756 () Bool)

(declare-fun call!471760 () (InoxSet Context!10734))

(assert (=> bm!471756 (= call!471762 call!471760)))

(declare-fun d!1861263 () Bool)

(declare-fun c!1055754 () Bool)

(assert (=> d!1861263 (= c!1055754 (and ((_ is ElementMatch!15983) (h!70572 (exprs!5867 (h!70573 zl!343)))) (= (c!1055457 (h!70572 (exprs!5867 (h!70573 zl!343)))) (h!70574 s!2326))))))

(declare-fun e!3633432 () (InoxSet Context!10734))

(assert (=> d!1861263 (= (derivationStepZipperDown!1233 (h!70572 (exprs!5867 (h!70573 zl!343))) (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))) (h!70574 s!2326)) e!3633432)))

(declare-fun c!1055756 () Bool)

(declare-fun bm!471757 () Bool)

(declare-fun c!1055753 () Bool)

(assert (=> bm!471757 (= call!471760 (derivationStepZipperDown!1233 (ite c!1055753 (regOne!32479 (h!70572 (exprs!5867 (h!70573 zl!343)))) (ite c!1055752 (regTwo!32478 (h!70572 (exprs!5867 (h!70573 zl!343)))) (ite c!1055756 (regOne!32478 (h!70572 (exprs!5867 (h!70573 zl!343)))) (reg!16312 (h!70572 (exprs!5867 (h!70573 zl!343))))))) (ite (or c!1055753 c!1055752) (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))) (Context!10735 call!471759)) (h!70574 s!2326)))))

(declare-fun call!471763 () (InoxSet Context!10734))

(declare-fun bm!471758 () Bool)

(assert (=> bm!471758 (= call!471763 (derivationStepZipperDown!1233 (ite c!1055753 (regTwo!32479 (h!70572 (exprs!5867 (h!70573 zl!343)))) (regOne!32478 (h!70572 (exprs!5867 (h!70573 zl!343))))) (ite c!1055753 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))) (Context!10735 call!471761)) (h!70574 s!2326)))))

(declare-fun b!5937528 () Bool)

(assert (=> b!5937528 (= e!3633431 call!471764)))

(declare-fun b!5937529 () Bool)

(assert (=> b!5937529 (= e!3633429 e!3633431)))

(assert (=> b!5937529 (= c!1055756 ((_ is Concat!24828) (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5937530 () Bool)

(assert (=> b!5937530 (= e!3633434 ((_ map or) call!471760 call!471763))))

(declare-fun b!5937531 () Bool)

(assert (=> b!5937531 (= e!3633430 ((as const (Array Context!10734 Bool)) false))))

(declare-fun b!5937532 () Bool)

(assert (=> b!5937532 (= e!3633432 (store ((as const (Array Context!10734 Bool)) false) (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))) true))))

(declare-fun b!5937533 () Bool)

(assert (=> b!5937533 (= e!3633433 (nullable!5978 (regOne!32478 (h!70572 (exprs!5867 (h!70573 zl!343))))))))

(declare-fun b!5937534 () Bool)

(assert (=> b!5937534 (= e!3633432 e!3633434)))

(assert (=> b!5937534 (= c!1055753 ((_ is Union!15983) (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun bm!471759 () Bool)

(assert (=> bm!471759 (= call!471761 ($colon$colon!1870 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343))))) (ite (or c!1055752 c!1055756) (regTwo!32478 (h!70572 (exprs!5867 (h!70573 zl!343)))) (h!70572 (exprs!5867 (h!70573 zl!343))))))))

(declare-fun b!5937535 () Bool)

(assert (=> b!5937535 (= e!3633429 ((_ map or) call!471763 call!471762))))

(assert (= (and d!1861263 c!1055754) b!5937532))

(assert (= (and d!1861263 (not c!1055754)) b!5937534))

(assert (= (and b!5937534 c!1055753) b!5937530))

(assert (= (and b!5937534 (not c!1055753)) b!5937527))

(assert (= (and b!5937527 res!2487093) b!5937533))

(assert (= (and b!5937527 c!1055752) b!5937535))

(assert (= (and b!5937527 (not c!1055752)) b!5937529))

(assert (= (and b!5937529 c!1055756) b!5937528))

(assert (= (and b!5937529 (not c!1055756)) b!5937525))

(assert (= (and b!5937525 c!1055755) b!5937526))

(assert (= (and b!5937525 (not c!1055755)) b!5937531))

(assert (= (or b!5937528 b!5937526) bm!471755))

(assert (= (or b!5937528 b!5937526) bm!471754))

(assert (= (or b!5937535 bm!471755) bm!471759))

(assert (= (or b!5937535 bm!471754) bm!471756))

(assert (= (or b!5937530 b!5937535) bm!471758))

(assert (= (or b!5937530 bm!471756) bm!471757))

(declare-fun m!6827952 () Bool)

(assert (=> bm!471758 m!6827952))

(declare-fun m!6827954 () Bool)

(assert (=> b!5937532 m!6827954))

(declare-fun m!6827956 () Bool)

(assert (=> b!5937533 m!6827956))

(declare-fun m!6827958 () Bool)

(assert (=> bm!471757 m!6827958))

(declare-fun m!6827960 () Bool)

(assert (=> bm!471759 m!6827960))

(assert (=> bm!471635 d!1861263))

(assert (=> d!1861089 d!1861087))

(assert (=> d!1861089 d!1861083))

(declare-fun d!1861265 () Bool)

(assert (=> d!1861265 (= (matchR!8166 r!7292 s!2326) (matchRSpec!3084 r!7292 s!2326))))

(assert (=> d!1861265 true))

(declare-fun _$88!4437 () Unit!157237)

(assert (=> d!1861265 (= (choose!44751 r!7292 s!2326) _$88!4437)))

(declare-fun bs!1404462 () Bool)

(assert (= bs!1404462 d!1861265))

(assert (=> bs!1404462 m!6827152))

(assert (=> bs!1404462 m!6827150))

(assert (=> d!1861089 d!1861265))

(assert (=> d!1861089 d!1861009))

(assert (=> d!1861087 d!1861147))

(assert (=> d!1861087 d!1861009))

(declare-fun d!1861267 () Bool)

(assert (=> d!1861267 (= (Exists!3053 lambda!323798) (choose!44742 lambda!323798))))

(declare-fun bs!1404463 () Bool)

(assert (= bs!1404463 d!1861267))

(declare-fun m!6827962 () Bool)

(assert (=> bs!1404463 m!6827962))

(assert (=> d!1861001 d!1861267))

(declare-fun d!1861269 () Bool)

(assert (=> d!1861269 (= (Exists!3053 lambda!323799) (choose!44742 lambda!323799))))

(declare-fun bs!1404464 () Bool)

(assert (= bs!1404464 d!1861269))

(declare-fun m!6827964 () Bool)

(assert (=> bs!1404464 m!6827964))

(assert (=> d!1861001 d!1861269))

(declare-fun bs!1404465 () Bool)

(declare-fun d!1861271 () Bool)

(assert (= bs!1404465 (and d!1861271 b!5937038)))

(declare-fun lambda!323846 () Int)

(assert (=> bs!1404465 (not (= lambda!323846 lambda!323826))))

(declare-fun bs!1404466 () Bool)

(assert (= bs!1404466 (and d!1861271 d!1861001)))

(assert (=> bs!1404466 (not (= lambda!323846 lambda!323799))))

(declare-fun bs!1404467 () Bool)

(assert (= bs!1404467 (and d!1861271 b!5937039)))

(assert (=> bs!1404467 (not (= lambda!323846 lambda!323827))))

(declare-fun bs!1404468 () Bool)

(assert (= bs!1404468 (and d!1861271 b!5937460)))

(assert (=> bs!1404468 (not (= lambda!323846 lambda!323839))))

(declare-fun bs!1404469 () Bool)

(assert (= bs!1404469 (and d!1861271 d!1861187)))

(assert (=> bs!1404469 (= lambda!323846 lambda!323835)))

(declare-fun bs!1404470 () Bool)

(assert (= bs!1404470 (and d!1861271 b!5936450)))

(assert (=> bs!1404470 (not (= lambda!323846 lambda!323765))))

(declare-fun bs!1404471 () Bool)

(assert (= bs!1404471 (and d!1861271 d!1860993)))

(assert (=> bs!1404471 (= lambda!323846 lambda!323787)))

(declare-fun bs!1404472 () Bool)

(assert (= bs!1404472 (and d!1861271 b!5937459)))

(assert (=> bs!1404472 (not (= lambda!323846 lambda!323838))))

(declare-fun bs!1404473 () Bool)

(assert (= bs!1404473 (and d!1861271 b!5937324)))

(assert (=> bs!1404473 (not (= lambda!323846 lambda!323832))))

(assert (=> bs!1404466 (= lambda!323846 lambda!323798)))

(declare-fun bs!1404474 () Bool)

(assert (= bs!1404474 (and d!1861271 b!5937323)))

(assert (=> bs!1404474 (not (= lambda!323846 lambda!323831))))

(assert (=> bs!1404470 (= lambda!323846 lambda!323764)))

(assert (=> d!1861271 true))

(assert (=> d!1861271 true))

(assert (=> d!1861271 true))

(declare-fun lambda!323847 () Int)

(assert (=> bs!1404465 (not (= lambda!323847 lambda!323826))))

(assert (=> bs!1404466 (= lambda!323847 lambda!323799)))

(assert (=> bs!1404467 (= lambda!323847 lambda!323827)))

(assert (=> bs!1404468 (= (and (= (regOne!32478 r!7292) (regOne!32478 (regOne!32479 r!7292))) (= (regTwo!32478 r!7292) (regTwo!32478 (regOne!32479 r!7292)))) (= lambda!323847 lambda!323839))))

(assert (=> bs!1404469 (not (= lambda!323847 lambda!323835))))

(declare-fun bs!1404475 () Bool)

(assert (= bs!1404475 d!1861271))

(assert (=> bs!1404475 (not (= lambda!323847 lambda!323846))))

(assert (=> bs!1404470 (= lambda!323847 lambda!323765)))

(assert (=> bs!1404471 (not (= lambda!323847 lambda!323787))))

(assert (=> bs!1404472 (not (= lambda!323847 lambda!323838))))

(assert (=> bs!1404473 (= (and (= (regOne!32478 r!7292) (regOne!32478 (regTwo!32479 r!7292))) (= (regTwo!32478 r!7292) (regTwo!32478 (regTwo!32479 r!7292)))) (= lambda!323847 lambda!323832))))

(assert (=> bs!1404466 (not (= lambda!323847 lambda!323798))))

(assert (=> bs!1404474 (not (= lambda!323847 lambda!323831))))

(assert (=> bs!1404470 (not (= lambda!323847 lambda!323764))))

(assert (=> d!1861271 true))

(assert (=> d!1861271 true))

(assert (=> d!1861271 true))

(assert (=> d!1861271 (= (Exists!3053 lambda!323846) (Exists!3053 lambda!323847))))

(assert (=> d!1861271 true))

(declare-fun _$90!1623 () Unit!157237)

(assert (=> d!1861271 (= (choose!44744 (regOne!32478 r!7292) (regTwo!32478 r!7292) s!2326) _$90!1623)))

(declare-fun m!6827966 () Bool)

(assert (=> bs!1404475 m!6827966))

(declare-fun m!6827968 () Bool)

(assert (=> bs!1404475 m!6827968))

(assert (=> d!1861001 d!1861271))

(assert (=> d!1861001 d!1861129))

(declare-fun bs!1404476 () Bool)

(declare-fun d!1861273 () Bool)

(assert (= bs!1404476 (and d!1861273 d!1861195)))

(declare-fun lambda!323848 () Int)

(assert (=> bs!1404476 (= lambda!323848 lambda!323836)))

(declare-fun bs!1404477 () Bool)

(assert (= bs!1404477 (and d!1861273 d!1861027)))

(assert (=> bs!1404477 (= lambda!323848 lambda!323814)))

(declare-fun bs!1404478 () Bool)

(assert (= bs!1404478 (and d!1861273 d!1861057)))

(assert (=> bs!1404478 (= lambda!323848 lambda!323820)))

(declare-fun bs!1404479 () Bool)

(assert (= bs!1404479 (and d!1861273 d!1861067)))

(assert (=> bs!1404479 (= lambda!323848 lambda!323821)))

(declare-fun bs!1404480 () Bool)

(assert (= bs!1404480 (and d!1861273 d!1861033)))

(assert (=> bs!1404480 (= lambda!323848 lambda!323818)))

(declare-fun bs!1404481 () Bool)

(assert (= bs!1404481 (and d!1861273 d!1861203)))

(assert (=> bs!1404481 (= lambda!323848 lambda!323837)))

(declare-fun bs!1404482 () Bool)

(assert (= bs!1404482 (and d!1861273 d!1861241)))

(assert (=> bs!1404482 (= lambda!323848 lambda!323840)))

(declare-fun bs!1404483 () Bool)

(assert (= bs!1404483 (and d!1861273 d!1860955)))

(assert (=> bs!1404483 (= lambda!323848 lambda!323769)))

(declare-fun bs!1404484 () Bool)

(assert (= bs!1404484 (and d!1861273 d!1861091)))

(assert (=> bs!1404484 (= lambda!323848 lambda!323830)))

(declare-fun bs!1404485 () Bool)

(assert (= bs!1404485 (and d!1861273 d!1861261)))

(assert (=> bs!1404485 (= lambda!323848 lambda!323841)))

(declare-fun b!5937544 () Bool)

(declare-fun e!3633443 () Bool)

(assert (=> b!5937544 (= e!3633443 (isEmpty!35993 (t!377651 (t!377651 (exprs!5867 (h!70573 zl!343))))))))

(declare-fun b!5937545 () Bool)

(declare-fun e!3633442 () Bool)

(declare-fun lt!2311442 () Regex!15983)

(assert (=> b!5937545 (= e!3633442 (isConcat!934 lt!2311442))))

(declare-fun e!3633441 () Bool)

(assert (=> d!1861273 e!3633441))

(declare-fun res!2487103 () Bool)

(assert (=> d!1861273 (=> (not res!2487103) (not e!3633441))))

(assert (=> d!1861273 (= res!2487103 (validRegex!7719 lt!2311442))))

(declare-fun e!3633439 () Regex!15983)

(assert (=> d!1861273 (= lt!2311442 e!3633439)))

(declare-fun c!1055760 () Bool)

(assert (=> d!1861273 (= c!1055760 e!3633443)))

(declare-fun res!2487102 () Bool)

(assert (=> d!1861273 (=> (not res!2487102) (not e!3633443))))

(assert (=> d!1861273 (= res!2487102 ((_ is Cons!64124) (t!377651 (exprs!5867 (h!70573 zl!343)))))))

(assert (=> d!1861273 (forall!15066 (t!377651 (exprs!5867 (h!70573 zl!343))) lambda!323848)))

(assert (=> d!1861273 (= (generalisedConcat!1580 (t!377651 (exprs!5867 (h!70573 zl!343)))) lt!2311442)))

(declare-fun b!5937546 () Bool)

(declare-fun e!3633444 () Regex!15983)

(assert (=> b!5937546 (= e!3633439 e!3633444)))

(declare-fun c!1055757 () Bool)

(assert (=> b!5937546 (= c!1055757 ((_ is Cons!64124) (t!377651 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5937547 () Bool)

(assert (=> b!5937547 (= e!3633442 (= lt!2311442 (head!12507 (t!377651 (exprs!5867 (h!70573 zl!343))))))))

(declare-fun b!5937548 () Bool)

(declare-fun e!3633440 () Bool)

(assert (=> b!5937548 (= e!3633440 e!3633442)))

(declare-fun c!1055759 () Bool)

(assert (=> b!5937548 (= c!1055759 (isEmpty!35993 (tail!11592 (t!377651 (exprs!5867 (h!70573 zl!343))))))))

(declare-fun b!5937549 () Bool)

(assert (=> b!5937549 (= e!3633444 (Concat!24828 (h!70572 (t!377651 (exprs!5867 (h!70573 zl!343)))) (generalisedConcat!1580 (t!377651 (t!377651 (exprs!5867 (h!70573 zl!343)))))))))

(declare-fun b!5937550 () Bool)

(assert (=> b!5937550 (= e!3633440 (isEmptyExpr!1411 lt!2311442))))

(declare-fun b!5937551 () Bool)

(assert (=> b!5937551 (= e!3633439 (h!70572 (t!377651 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun b!5937552 () Bool)

(assert (=> b!5937552 (= e!3633444 EmptyExpr!15983)))

(declare-fun b!5937553 () Bool)

(assert (=> b!5937553 (= e!3633441 e!3633440)))

(declare-fun c!1055758 () Bool)

(assert (=> b!5937553 (= c!1055758 (isEmpty!35993 (t!377651 (exprs!5867 (h!70573 zl!343)))))))

(assert (= (and d!1861273 res!2487102) b!5937544))

(assert (= (and d!1861273 c!1055760) b!5937551))

(assert (= (and d!1861273 (not c!1055760)) b!5937546))

(assert (= (and b!5937546 c!1055757) b!5937549))

(assert (= (and b!5937546 (not c!1055757)) b!5937552))

(assert (= (and d!1861273 res!2487103) b!5937553))

(assert (= (and b!5937553 c!1055758) b!5937550))

(assert (= (and b!5937553 (not c!1055758)) b!5937548))

(assert (= (and b!5937548 c!1055759) b!5937547))

(assert (= (and b!5937548 (not c!1055759)) b!5937545))

(assert (=> b!5937553 m!6827202))

(declare-fun m!6827970 () Bool)

(assert (=> b!5937550 m!6827970))

(declare-fun m!6827972 () Bool)

(assert (=> b!5937544 m!6827972))

(declare-fun m!6827974 () Bool)

(assert (=> b!5937547 m!6827974))

(declare-fun m!6827976 () Bool)

(assert (=> b!5937545 m!6827976))

(declare-fun m!6827978 () Bool)

(assert (=> b!5937549 m!6827978))

(declare-fun m!6827980 () Bool)

(assert (=> b!5937548 m!6827980))

(assert (=> b!5937548 m!6827980))

(declare-fun m!6827982 () Bool)

(assert (=> b!5937548 m!6827982))

(declare-fun m!6827984 () Bool)

(assert (=> d!1861273 m!6827984))

(declare-fun m!6827986 () Bool)

(assert (=> d!1861273 m!6827986))

(assert (=> b!5937112 d!1861273))

(declare-fun d!1861275 () Bool)

(assert (=> d!1861275 true))

(assert (=> d!1861275 true))

(declare-fun res!2487104 () Bool)

(assert (=> d!1861275 (= (choose!44742 lambda!323764) res!2487104)))

(assert (=> d!1860991 d!1861275))

(declare-fun d!1861277 () Bool)

(assert (=> d!1861277 true))

(declare-fun setRes!40325 () Bool)

(assert (=> d!1861277 setRes!40325))

(declare-fun condSetEmpty!40325 () Bool)

(declare-fun res!2487105 () (InoxSet Context!10734))

(assert (=> d!1861277 (= condSetEmpty!40325 (= res!2487105 ((as const (Array Context!10734 Bool)) false)))))

(assert (=> d!1861277 (= (choose!44745 z!1189 lambda!323766) res!2487105)))

(declare-fun setIsEmpty!40325 () Bool)

(assert (=> setIsEmpty!40325 setRes!40325))

(declare-fun setNonEmpty!40325 () Bool)

(declare-fun e!3633445 () Bool)

(declare-fun tp!1651789 () Bool)

(declare-fun setElem!40325 () Context!10734)

(assert (=> setNonEmpty!40325 (= setRes!40325 (and tp!1651789 (inv!83204 setElem!40325) e!3633445))))

(declare-fun setRest!40325 () (InoxSet Context!10734))

(assert (=> setNonEmpty!40325 (= res!2487105 ((_ map or) (store ((as const (Array Context!10734 Bool)) false) setElem!40325 true) setRest!40325))))

(declare-fun b!5937554 () Bool)

(declare-fun tp!1651790 () Bool)

(assert (=> b!5937554 (= e!3633445 tp!1651790)))

(assert (= (and d!1861277 condSetEmpty!40325) setIsEmpty!40325))

(assert (= (and d!1861277 (not condSetEmpty!40325)) setNonEmpty!40325))

(assert (= setNonEmpty!40325 b!5937554))

(declare-fun m!6827988 () Bool)

(assert (=> setNonEmpty!40325 m!6827988))

(assert (=> d!1861021 d!1861277))

(declare-fun b!5937555 () Bool)

(declare-fun e!3633447 () Bool)

(assert (=> b!5937555 (= e!3633447 (nullable!5978 (h!70572 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343))))))))))

(declare-fun b!5937556 () Bool)

(declare-fun e!3633446 () (InoxSet Context!10734))

(declare-fun call!471765 () (InoxSet Context!10734))

(assert (=> b!5937556 (= e!3633446 call!471765)))

(declare-fun bm!471760 () Bool)

(assert (=> bm!471760 (= call!471765 (derivationStepZipperDown!1233 (h!70572 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))))) (Context!10735 (t!377651 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343))))))) (h!70574 s!2326)))))

(declare-fun b!5937557 () Bool)

(assert (=> b!5937557 (= e!3633446 ((as const (Array Context!10734 Bool)) false))))

(declare-fun e!3633448 () (InoxSet Context!10734))

(declare-fun b!5937558 () Bool)

(assert (=> b!5937558 (= e!3633448 ((_ map or) call!471765 (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343))))))) (h!70574 s!2326))))))

(declare-fun b!5937559 () Bool)

(assert (=> b!5937559 (= e!3633448 e!3633446)))

(declare-fun c!1055762 () Bool)

(assert (=> b!5937559 (= c!1055762 ((_ is Cons!64124) (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))))))))

(declare-fun d!1861279 () Bool)

(declare-fun c!1055761 () Bool)

(assert (=> d!1861279 (= c!1055761 e!3633447)))

(declare-fun res!2487106 () Bool)

(assert (=> d!1861279 (=> (not res!2487106) (not e!3633447))))

(assert (=> d!1861279 (= res!2487106 ((_ is Cons!64124) (exprs!5867 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))))))))

(assert (=> d!1861279 (= (derivationStepZipperUp!1159 (Context!10735 (t!377651 (exprs!5867 (h!70573 zl!343)))) (h!70574 s!2326)) e!3633448)))

(assert (= (and d!1861279 res!2487106) b!5937555))

(assert (= (and d!1861279 c!1055761) b!5937558))

(assert (= (and d!1861279 (not c!1055761)) b!5937559))

(assert (= (and b!5937559 c!1055762) b!5937556))

(assert (= (and b!5937559 (not c!1055762)) b!5937557))

(assert (= (or b!5937558 b!5937556) bm!471760))

(declare-fun m!6827990 () Bool)

(assert (=> b!5937555 m!6827990))

(declare-fun m!6827992 () Bool)

(assert (=> bm!471760 m!6827992))

(declare-fun m!6827994 () Bool)

(assert (=> b!5937558 m!6827994))

(assert (=> b!5936827 d!1861279))

(assert (=> b!5937083 d!1861109))

(declare-fun e!3633449 () Bool)

(assert (=> b!5937158 (= tp!1651764 e!3633449)))

(declare-fun b!5937561 () Bool)

(declare-fun tp!1651795 () Bool)

(declare-fun tp!1651791 () Bool)

(assert (=> b!5937561 (= e!3633449 (and tp!1651795 tp!1651791))))

(declare-fun b!5937560 () Bool)

(assert (=> b!5937560 (= e!3633449 tp_is_empty!41219)))

(declare-fun b!5937563 () Bool)

(declare-fun tp!1651794 () Bool)

(declare-fun tp!1651792 () Bool)

(assert (=> b!5937563 (= e!3633449 (and tp!1651794 tp!1651792))))

(declare-fun b!5937562 () Bool)

(declare-fun tp!1651793 () Bool)

(assert (=> b!5937562 (= e!3633449 tp!1651793)))

(assert (= (and b!5937158 ((_ is ElementMatch!15983) (regOne!32478 (regTwo!32479 r!7292)))) b!5937560))

(assert (= (and b!5937158 ((_ is Concat!24828) (regOne!32478 (regTwo!32479 r!7292)))) b!5937561))

(assert (= (and b!5937158 ((_ is Star!15983) (regOne!32478 (regTwo!32479 r!7292)))) b!5937562))

(assert (= (and b!5937158 ((_ is Union!15983) (regOne!32478 (regTwo!32479 r!7292)))) b!5937563))

(declare-fun e!3633450 () Bool)

(assert (=> b!5937158 (= tp!1651760 e!3633450)))

(declare-fun b!5937565 () Bool)

(declare-fun tp!1651800 () Bool)

(declare-fun tp!1651796 () Bool)

(assert (=> b!5937565 (= e!3633450 (and tp!1651800 tp!1651796))))

(declare-fun b!5937564 () Bool)

(assert (=> b!5937564 (= e!3633450 tp_is_empty!41219)))

(declare-fun b!5937567 () Bool)

(declare-fun tp!1651799 () Bool)

(declare-fun tp!1651797 () Bool)

(assert (=> b!5937567 (= e!3633450 (and tp!1651799 tp!1651797))))

(declare-fun b!5937566 () Bool)

(declare-fun tp!1651798 () Bool)

(assert (=> b!5937566 (= e!3633450 tp!1651798)))

(assert (= (and b!5937158 ((_ is ElementMatch!15983) (regTwo!32478 (regTwo!32479 r!7292)))) b!5937564))

(assert (= (and b!5937158 ((_ is Concat!24828) (regTwo!32478 (regTwo!32479 r!7292)))) b!5937565))

(assert (= (and b!5937158 ((_ is Star!15983) (regTwo!32478 (regTwo!32479 r!7292)))) b!5937566))

(assert (= (and b!5937158 ((_ is Union!15983) (regTwo!32478 (regTwo!32479 r!7292)))) b!5937567))

(declare-fun e!3633451 () Bool)

(assert (=> b!5937137 (= tp!1651742 e!3633451)))

(declare-fun b!5937569 () Bool)

(declare-fun tp!1651805 () Bool)

(declare-fun tp!1651801 () Bool)

(assert (=> b!5937569 (= e!3633451 (and tp!1651805 tp!1651801))))

(declare-fun b!5937568 () Bool)

(assert (=> b!5937568 (= e!3633451 tp_is_empty!41219)))

(declare-fun b!5937571 () Bool)

(declare-fun tp!1651804 () Bool)

(declare-fun tp!1651802 () Bool)

(assert (=> b!5937571 (= e!3633451 (and tp!1651804 tp!1651802))))

(declare-fun b!5937570 () Bool)

(declare-fun tp!1651803 () Bool)

(assert (=> b!5937570 (= e!3633451 tp!1651803)))

(assert (= (and b!5937137 ((_ is ElementMatch!15983) (regOne!32478 (regTwo!32478 r!7292)))) b!5937568))

(assert (= (and b!5937137 ((_ is Concat!24828) (regOne!32478 (regTwo!32478 r!7292)))) b!5937569))

(assert (= (and b!5937137 ((_ is Star!15983) (regOne!32478 (regTwo!32478 r!7292)))) b!5937570))

(assert (= (and b!5937137 ((_ is Union!15983) (regOne!32478 (regTwo!32478 r!7292)))) b!5937571))

(declare-fun e!3633452 () Bool)

(assert (=> b!5937137 (= tp!1651738 e!3633452)))

(declare-fun b!5937573 () Bool)

(declare-fun tp!1651810 () Bool)

(declare-fun tp!1651806 () Bool)

(assert (=> b!5937573 (= e!3633452 (and tp!1651810 tp!1651806))))

(declare-fun b!5937572 () Bool)

(assert (=> b!5937572 (= e!3633452 tp_is_empty!41219)))

(declare-fun b!5937575 () Bool)

(declare-fun tp!1651809 () Bool)

(declare-fun tp!1651807 () Bool)

(assert (=> b!5937575 (= e!3633452 (and tp!1651809 tp!1651807))))

(declare-fun b!5937574 () Bool)

(declare-fun tp!1651808 () Bool)

(assert (=> b!5937574 (= e!3633452 tp!1651808)))

(assert (= (and b!5937137 ((_ is ElementMatch!15983) (regTwo!32478 (regTwo!32478 r!7292)))) b!5937572))

(assert (= (and b!5937137 ((_ is Concat!24828) (regTwo!32478 (regTwo!32478 r!7292)))) b!5937573))

(assert (= (and b!5937137 ((_ is Star!15983) (regTwo!32478 (regTwo!32478 r!7292)))) b!5937574))

(assert (= (and b!5937137 ((_ is Union!15983) (regTwo!32478 (regTwo!32478 r!7292)))) b!5937575))

(declare-fun e!3633453 () Bool)

(assert (=> b!5937159 (= tp!1651762 e!3633453)))

(declare-fun b!5937577 () Bool)

(declare-fun tp!1651815 () Bool)

(declare-fun tp!1651811 () Bool)

(assert (=> b!5937577 (= e!3633453 (and tp!1651815 tp!1651811))))

(declare-fun b!5937576 () Bool)

(assert (=> b!5937576 (= e!3633453 tp_is_empty!41219)))

(declare-fun b!5937579 () Bool)

(declare-fun tp!1651814 () Bool)

(declare-fun tp!1651812 () Bool)

(assert (=> b!5937579 (= e!3633453 (and tp!1651814 tp!1651812))))

(declare-fun b!5937578 () Bool)

(declare-fun tp!1651813 () Bool)

(assert (=> b!5937578 (= e!3633453 tp!1651813)))

(assert (= (and b!5937159 ((_ is ElementMatch!15983) (reg!16312 (regTwo!32479 r!7292)))) b!5937576))

(assert (= (and b!5937159 ((_ is Concat!24828) (reg!16312 (regTwo!32479 r!7292)))) b!5937577))

(assert (= (and b!5937159 ((_ is Star!15983) (reg!16312 (regTwo!32479 r!7292)))) b!5937578))

(assert (= (and b!5937159 ((_ is Union!15983) (reg!16312 (regTwo!32479 r!7292)))) b!5937579))

(declare-fun e!3633454 () Bool)

(assert (=> b!5937138 (= tp!1651740 e!3633454)))

(declare-fun b!5937581 () Bool)

(declare-fun tp!1651820 () Bool)

(declare-fun tp!1651816 () Bool)

(assert (=> b!5937581 (= e!3633454 (and tp!1651820 tp!1651816))))

(declare-fun b!5937580 () Bool)

(assert (=> b!5937580 (= e!3633454 tp_is_empty!41219)))

(declare-fun b!5937583 () Bool)

(declare-fun tp!1651819 () Bool)

(declare-fun tp!1651817 () Bool)

(assert (=> b!5937583 (= e!3633454 (and tp!1651819 tp!1651817))))

(declare-fun b!5937582 () Bool)

(declare-fun tp!1651818 () Bool)

(assert (=> b!5937582 (= e!3633454 tp!1651818)))

(assert (= (and b!5937138 ((_ is ElementMatch!15983) (reg!16312 (regTwo!32478 r!7292)))) b!5937580))

(assert (= (and b!5937138 ((_ is Concat!24828) (reg!16312 (regTwo!32478 r!7292)))) b!5937581))

(assert (= (and b!5937138 ((_ is Star!15983) (reg!16312 (regTwo!32478 r!7292)))) b!5937582))

(assert (= (and b!5937138 ((_ is Union!15983) (reg!16312 (regTwo!32478 r!7292)))) b!5937583))

(declare-fun e!3633455 () Bool)

(assert (=> b!5937160 (= tp!1651763 e!3633455)))

(declare-fun b!5937585 () Bool)

(declare-fun tp!1651825 () Bool)

(declare-fun tp!1651821 () Bool)

(assert (=> b!5937585 (= e!3633455 (and tp!1651825 tp!1651821))))

(declare-fun b!5937584 () Bool)

(assert (=> b!5937584 (= e!3633455 tp_is_empty!41219)))

(declare-fun b!5937587 () Bool)

(declare-fun tp!1651824 () Bool)

(declare-fun tp!1651822 () Bool)

(assert (=> b!5937587 (= e!3633455 (and tp!1651824 tp!1651822))))

(declare-fun b!5937586 () Bool)

(declare-fun tp!1651823 () Bool)

(assert (=> b!5937586 (= e!3633455 tp!1651823)))

(assert (= (and b!5937160 ((_ is ElementMatch!15983) (regOne!32479 (regTwo!32479 r!7292)))) b!5937584))

(assert (= (and b!5937160 ((_ is Concat!24828) (regOne!32479 (regTwo!32479 r!7292)))) b!5937585))

(assert (= (and b!5937160 ((_ is Star!15983) (regOne!32479 (regTwo!32479 r!7292)))) b!5937586))

(assert (= (and b!5937160 ((_ is Union!15983) (regOne!32479 (regTwo!32479 r!7292)))) b!5937587))

(declare-fun e!3633456 () Bool)

(assert (=> b!5937160 (= tp!1651761 e!3633456)))

(declare-fun b!5937589 () Bool)

(declare-fun tp!1651830 () Bool)

(declare-fun tp!1651826 () Bool)

(assert (=> b!5937589 (= e!3633456 (and tp!1651830 tp!1651826))))

(declare-fun b!5937588 () Bool)

(assert (=> b!5937588 (= e!3633456 tp_is_empty!41219)))

(declare-fun b!5937591 () Bool)

(declare-fun tp!1651829 () Bool)

(declare-fun tp!1651827 () Bool)

(assert (=> b!5937591 (= e!3633456 (and tp!1651829 tp!1651827))))

(declare-fun b!5937590 () Bool)

(declare-fun tp!1651828 () Bool)

(assert (=> b!5937590 (= e!3633456 tp!1651828)))

(assert (= (and b!5937160 ((_ is ElementMatch!15983) (regTwo!32479 (regTwo!32479 r!7292)))) b!5937588))

(assert (= (and b!5937160 ((_ is Concat!24828) (regTwo!32479 (regTwo!32479 r!7292)))) b!5937589))

(assert (= (and b!5937160 ((_ is Star!15983) (regTwo!32479 (regTwo!32479 r!7292)))) b!5937590))

(assert (= (and b!5937160 ((_ is Union!15983) (regTwo!32479 (regTwo!32479 r!7292)))) b!5937591))

(declare-fun e!3633457 () Bool)

(assert (=> b!5937139 (= tp!1651741 e!3633457)))

(declare-fun b!5937593 () Bool)

(declare-fun tp!1651835 () Bool)

(declare-fun tp!1651831 () Bool)

(assert (=> b!5937593 (= e!3633457 (and tp!1651835 tp!1651831))))

(declare-fun b!5937592 () Bool)

(assert (=> b!5937592 (= e!3633457 tp_is_empty!41219)))

(declare-fun b!5937595 () Bool)

(declare-fun tp!1651834 () Bool)

(declare-fun tp!1651832 () Bool)

(assert (=> b!5937595 (= e!3633457 (and tp!1651834 tp!1651832))))

(declare-fun b!5937594 () Bool)

(declare-fun tp!1651833 () Bool)

(assert (=> b!5937594 (= e!3633457 tp!1651833)))

(assert (= (and b!5937139 ((_ is ElementMatch!15983) (regOne!32479 (regTwo!32478 r!7292)))) b!5937592))

(assert (= (and b!5937139 ((_ is Concat!24828) (regOne!32479 (regTwo!32478 r!7292)))) b!5937593))

(assert (= (and b!5937139 ((_ is Star!15983) (regOne!32479 (regTwo!32478 r!7292)))) b!5937594))

(assert (= (and b!5937139 ((_ is Union!15983) (regOne!32479 (regTwo!32478 r!7292)))) b!5937595))

(declare-fun e!3633458 () Bool)

(assert (=> b!5937139 (= tp!1651739 e!3633458)))

(declare-fun b!5937597 () Bool)

(declare-fun tp!1651840 () Bool)

(declare-fun tp!1651836 () Bool)

(assert (=> b!5937597 (= e!3633458 (and tp!1651840 tp!1651836))))

(declare-fun b!5937596 () Bool)

(assert (=> b!5937596 (= e!3633458 tp_is_empty!41219)))

(declare-fun b!5937599 () Bool)

(declare-fun tp!1651839 () Bool)

(declare-fun tp!1651837 () Bool)

(assert (=> b!5937599 (= e!3633458 (and tp!1651839 tp!1651837))))

(declare-fun b!5937598 () Bool)

(declare-fun tp!1651838 () Bool)

(assert (=> b!5937598 (= e!3633458 tp!1651838)))

(assert (= (and b!5937139 ((_ is ElementMatch!15983) (regTwo!32479 (regTwo!32478 r!7292)))) b!5937596))

(assert (= (and b!5937139 ((_ is Concat!24828) (regTwo!32479 (regTwo!32478 r!7292)))) b!5937597))

(assert (= (and b!5937139 ((_ is Star!15983) (regTwo!32479 (regTwo!32478 r!7292)))) b!5937598))

(assert (= (and b!5937139 ((_ is Union!15983) (regTwo!32479 (regTwo!32478 r!7292)))) b!5937599))

(declare-fun e!3633459 () Bool)

(assert (=> b!5937152 (= tp!1651753 e!3633459)))

(declare-fun b!5937601 () Bool)

(declare-fun tp!1651845 () Bool)

(declare-fun tp!1651841 () Bool)

(assert (=> b!5937601 (= e!3633459 (and tp!1651845 tp!1651841))))

(declare-fun b!5937600 () Bool)

(assert (=> b!5937600 (= e!3633459 tp_is_empty!41219)))

(declare-fun b!5937603 () Bool)

(declare-fun tp!1651844 () Bool)

(declare-fun tp!1651842 () Bool)

(assert (=> b!5937603 (= e!3633459 (and tp!1651844 tp!1651842))))

(declare-fun b!5937602 () Bool)

(declare-fun tp!1651843 () Bool)

(assert (=> b!5937602 (= e!3633459 tp!1651843)))

(assert (= (and b!5937152 ((_ is ElementMatch!15983) (h!70572 (exprs!5867 (h!70573 zl!343))))) b!5937600))

(assert (= (and b!5937152 ((_ is Concat!24828) (h!70572 (exprs!5867 (h!70573 zl!343))))) b!5937601))

(assert (= (and b!5937152 ((_ is Star!15983) (h!70572 (exprs!5867 (h!70573 zl!343))))) b!5937602))

(assert (= (and b!5937152 ((_ is Union!15983) (h!70572 (exprs!5867 (h!70573 zl!343))))) b!5937603))

(declare-fun b!5937604 () Bool)

(declare-fun e!3633460 () Bool)

(declare-fun tp!1651846 () Bool)

(declare-fun tp!1651847 () Bool)

(assert (=> b!5937604 (= e!3633460 (and tp!1651846 tp!1651847))))

(assert (=> b!5937152 (= tp!1651754 e!3633460)))

(assert (= (and b!5937152 ((_ is Cons!64124) (t!377651 (exprs!5867 (h!70573 zl!343))))) b!5937604))

(declare-fun b!5937606 () Bool)

(declare-fun e!3633462 () Bool)

(declare-fun tp!1651848 () Bool)

(assert (=> b!5937606 (= e!3633462 tp!1651848)))

(declare-fun tp!1651849 () Bool)

(declare-fun b!5937605 () Bool)

(declare-fun e!3633461 () Bool)

(assert (=> b!5937605 (= e!3633461 (and (inv!83204 (h!70573 (t!377652 (t!377652 zl!343)))) e!3633462 tp!1651849))))

(assert (=> b!5937146 (= tp!1651748 e!3633461)))

(assert (= b!5937605 b!5937606))

(assert (= (and b!5937146 ((_ is Cons!64125) (t!377652 (t!377652 zl!343)))) b!5937605))

(declare-fun m!6827996 () Bool)

(assert (=> b!5937605 m!6827996))

(declare-fun b!5937607 () Bool)

(declare-fun e!3633463 () Bool)

(declare-fun tp!1651850 () Bool)

(declare-fun tp!1651851 () Bool)

(assert (=> b!5937607 (= e!3633463 (and tp!1651850 tp!1651851))))

(assert (=> b!5937147 (= tp!1651747 e!3633463)))

(assert (= (and b!5937147 ((_ is Cons!64124) (exprs!5867 (h!70573 (t!377652 zl!343))))) b!5937607))

(declare-fun b!5937608 () Bool)

(declare-fun e!3633464 () Bool)

(declare-fun tp!1651852 () Bool)

(assert (=> b!5937608 (= e!3633464 (and tp_is_empty!41219 tp!1651852))))

(assert (=> b!5937169 (= tp!1651772 e!3633464)))

(assert (= (and b!5937169 ((_ is Cons!64126) (t!377653 (t!377653 s!2326)))) b!5937608))

(declare-fun e!3633465 () Bool)

(assert (=> b!5937170 (= tp!1651773 e!3633465)))

(declare-fun b!5937610 () Bool)

(declare-fun tp!1651857 () Bool)

(declare-fun tp!1651853 () Bool)

(assert (=> b!5937610 (= e!3633465 (and tp!1651857 tp!1651853))))

(declare-fun b!5937609 () Bool)

(assert (=> b!5937609 (= e!3633465 tp_is_empty!41219)))

(declare-fun b!5937612 () Bool)

(declare-fun tp!1651856 () Bool)

(declare-fun tp!1651854 () Bool)

(assert (=> b!5937612 (= e!3633465 (and tp!1651856 tp!1651854))))

(declare-fun b!5937611 () Bool)

(declare-fun tp!1651855 () Bool)

(assert (=> b!5937611 (= e!3633465 tp!1651855)))

(assert (= (and b!5937170 ((_ is ElementMatch!15983) (h!70572 (exprs!5867 setElem!40314)))) b!5937609))

(assert (= (and b!5937170 ((_ is Concat!24828) (h!70572 (exprs!5867 setElem!40314)))) b!5937610))

(assert (= (and b!5937170 ((_ is Star!15983) (h!70572 (exprs!5867 setElem!40314)))) b!5937611))

(assert (= (and b!5937170 ((_ is Union!15983) (h!70572 (exprs!5867 setElem!40314)))) b!5937612))

(declare-fun b!5937613 () Bool)

(declare-fun e!3633466 () Bool)

(declare-fun tp!1651858 () Bool)

(declare-fun tp!1651859 () Bool)

(assert (=> b!5937613 (= e!3633466 (and tp!1651858 tp!1651859))))

(assert (=> b!5937170 (= tp!1651774 e!3633466)))

(assert (= (and b!5937170 ((_ is Cons!64124) (t!377651 (exprs!5867 setElem!40314)))) b!5937613))

(declare-fun e!3633467 () Bool)

(assert (=> b!5937162 (= tp!1651769 e!3633467)))

(declare-fun b!5937615 () Bool)

(declare-fun tp!1651864 () Bool)

(declare-fun tp!1651860 () Bool)

(assert (=> b!5937615 (= e!3633467 (and tp!1651864 tp!1651860))))

(declare-fun b!5937614 () Bool)

(assert (=> b!5937614 (= e!3633467 tp_is_empty!41219)))

(declare-fun b!5937617 () Bool)

(declare-fun tp!1651863 () Bool)

(declare-fun tp!1651861 () Bool)

(assert (=> b!5937617 (= e!3633467 (and tp!1651863 tp!1651861))))

(declare-fun b!5937616 () Bool)

(declare-fun tp!1651862 () Bool)

(assert (=> b!5937616 (= e!3633467 tp!1651862)))

(assert (= (and b!5937162 ((_ is ElementMatch!15983) (regOne!32478 (reg!16312 r!7292)))) b!5937614))

(assert (= (and b!5937162 ((_ is Concat!24828) (regOne!32478 (reg!16312 r!7292)))) b!5937615))

(assert (= (and b!5937162 ((_ is Star!15983) (regOne!32478 (reg!16312 r!7292)))) b!5937616))

(assert (= (and b!5937162 ((_ is Union!15983) (regOne!32478 (reg!16312 r!7292)))) b!5937617))

(declare-fun e!3633468 () Bool)

(assert (=> b!5937162 (= tp!1651765 e!3633468)))

(declare-fun b!5937619 () Bool)

(declare-fun tp!1651869 () Bool)

(declare-fun tp!1651865 () Bool)

(assert (=> b!5937619 (= e!3633468 (and tp!1651869 tp!1651865))))

(declare-fun b!5937618 () Bool)

(assert (=> b!5937618 (= e!3633468 tp_is_empty!41219)))

(declare-fun b!5937621 () Bool)

(declare-fun tp!1651868 () Bool)

(declare-fun tp!1651866 () Bool)

(assert (=> b!5937621 (= e!3633468 (and tp!1651868 tp!1651866))))

(declare-fun b!5937620 () Bool)

(declare-fun tp!1651867 () Bool)

(assert (=> b!5937620 (= e!3633468 tp!1651867)))

(assert (= (and b!5937162 ((_ is ElementMatch!15983) (regTwo!32478 (reg!16312 r!7292)))) b!5937618))

(assert (= (and b!5937162 ((_ is Concat!24828) (regTwo!32478 (reg!16312 r!7292)))) b!5937619))

(assert (= (and b!5937162 ((_ is Star!15983) (regTwo!32478 (reg!16312 r!7292)))) b!5937620))

(assert (= (and b!5937162 ((_ is Union!15983) (regTwo!32478 (reg!16312 r!7292)))) b!5937621))

(declare-fun e!3633469 () Bool)

(assert (=> b!5937133 (= tp!1651737 e!3633469)))

(declare-fun b!5937623 () Bool)

(declare-fun tp!1651874 () Bool)

(declare-fun tp!1651870 () Bool)

(assert (=> b!5937623 (= e!3633469 (and tp!1651874 tp!1651870))))

(declare-fun b!5937622 () Bool)

(assert (=> b!5937622 (= e!3633469 tp_is_empty!41219)))

(declare-fun b!5937625 () Bool)

(declare-fun tp!1651873 () Bool)

(declare-fun tp!1651871 () Bool)

(assert (=> b!5937625 (= e!3633469 (and tp!1651873 tp!1651871))))

(declare-fun b!5937624 () Bool)

(declare-fun tp!1651872 () Bool)

(assert (=> b!5937624 (= e!3633469 tp!1651872)))

(assert (= (and b!5937133 ((_ is ElementMatch!15983) (regOne!32478 (regOne!32478 r!7292)))) b!5937622))

(assert (= (and b!5937133 ((_ is Concat!24828) (regOne!32478 (regOne!32478 r!7292)))) b!5937623))

(assert (= (and b!5937133 ((_ is Star!15983) (regOne!32478 (regOne!32478 r!7292)))) b!5937624))

(assert (= (and b!5937133 ((_ is Union!15983) (regOne!32478 (regOne!32478 r!7292)))) b!5937625))

(declare-fun e!3633470 () Bool)

(assert (=> b!5937133 (= tp!1651733 e!3633470)))

(declare-fun b!5937627 () Bool)

(declare-fun tp!1651879 () Bool)

(declare-fun tp!1651875 () Bool)

(assert (=> b!5937627 (= e!3633470 (and tp!1651879 tp!1651875))))

(declare-fun b!5937626 () Bool)

(assert (=> b!5937626 (= e!3633470 tp_is_empty!41219)))

(declare-fun b!5937629 () Bool)

(declare-fun tp!1651878 () Bool)

(declare-fun tp!1651876 () Bool)

(assert (=> b!5937629 (= e!3633470 (and tp!1651878 tp!1651876))))

(declare-fun b!5937628 () Bool)

(declare-fun tp!1651877 () Bool)

(assert (=> b!5937628 (= e!3633470 tp!1651877)))

(assert (= (and b!5937133 ((_ is ElementMatch!15983) (regTwo!32478 (regOne!32478 r!7292)))) b!5937626))

(assert (= (and b!5937133 ((_ is Concat!24828) (regTwo!32478 (regOne!32478 r!7292)))) b!5937627))

(assert (= (and b!5937133 ((_ is Star!15983) (regTwo!32478 (regOne!32478 r!7292)))) b!5937628))

(assert (= (and b!5937133 ((_ is Union!15983) (regTwo!32478 (regOne!32478 r!7292)))) b!5937629))

(declare-fun e!3633471 () Bool)

(assert (=> b!5937163 (= tp!1651767 e!3633471)))

(declare-fun b!5937631 () Bool)

(declare-fun tp!1651884 () Bool)

(declare-fun tp!1651880 () Bool)

(assert (=> b!5937631 (= e!3633471 (and tp!1651884 tp!1651880))))

(declare-fun b!5937630 () Bool)

(assert (=> b!5937630 (= e!3633471 tp_is_empty!41219)))

(declare-fun b!5937633 () Bool)

(declare-fun tp!1651883 () Bool)

(declare-fun tp!1651881 () Bool)

(assert (=> b!5937633 (= e!3633471 (and tp!1651883 tp!1651881))))

(declare-fun b!5937632 () Bool)

(declare-fun tp!1651882 () Bool)

(assert (=> b!5937632 (= e!3633471 tp!1651882)))

(assert (= (and b!5937163 ((_ is ElementMatch!15983) (reg!16312 (reg!16312 r!7292)))) b!5937630))

(assert (= (and b!5937163 ((_ is Concat!24828) (reg!16312 (reg!16312 r!7292)))) b!5937631))

(assert (= (and b!5937163 ((_ is Star!15983) (reg!16312 (reg!16312 r!7292)))) b!5937632))

(assert (= (and b!5937163 ((_ is Union!15983) (reg!16312 (reg!16312 r!7292)))) b!5937633))

(declare-fun e!3633472 () Bool)

(assert (=> b!5937154 (= tp!1651759 e!3633472)))

(declare-fun b!5937635 () Bool)

(declare-fun tp!1651889 () Bool)

(declare-fun tp!1651885 () Bool)

(assert (=> b!5937635 (= e!3633472 (and tp!1651889 tp!1651885))))

(declare-fun b!5937634 () Bool)

(assert (=> b!5937634 (= e!3633472 tp_is_empty!41219)))

(declare-fun b!5937637 () Bool)

(declare-fun tp!1651888 () Bool)

(declare-fun tp!1651886 () Bool)

(assert (=> b!5937637 (= e!3633472 (and tp!1651888 tp!1651886))))

(declare-fun b!5937636 () Bool)

(declare-fun tp!1651887 () Bool)

(assert (=> b!5937636 (= e!3633472 tp!1651887)))

(assert (= (and b!5937154 ((_ is ElementMatch!15983) (regOne!32478 (regOne!32479 r!7292)))) b!5937634))

(assert (= (and b!5937154 ((_ is Concat!24828) (regOne!32478 (regOne!32479 r!7292)))) b!5937635))

(assert (= (and b!5937154 ((_ is Star!15983) (regOne!32478 (regOne!32479 r!7292)))) b!5937636))

(assert (= (and b!5937154 ((_ is Union!15983) (regOne!32478 (regOne!32479 r!7292)))) b!5937637))

(declare-fun e!3633473 () Bool)

(assert (=> b!5937154 (= tp!1651755 e!3633473)))

(declare-fun b!5937639 () Bool)

(declare-fun tp!1651894 () Bool)

(declare-fun tp!1651890 () Bool)

(assert (=> b!5937639 (= e!3633473 (and tp!1651894 tp!1651890))))

(declare-fun b!5937638 () Bool)

(assert (=> b!5937638 (= e!3633473 tp_is_empty!41219)))

(declare-fun b!5937641 () Bool)

(declare-fun tp!1651893 () Bool)

(declare-fun tp!1651891 () Bool)

(assert (=> b!5937641 (= e!3633473 (and tp!1651893 tp!1651891))))

(declare-fun b!5937640 () Bool)

(declare-fun tp!1651892 () Bool)

(assert (=> b!5937640 (= e!3633473 tp!1651892)))

(assert (= (and b!5937154 ((_ is ElementMatch!15983) (regTwo!32478 (regOne!32479 r!7292)))) b!5937638))

(assert (= (and b!5937154 ((_ is Concat!24828) (regTwo!32478 (regOne!32479 r!7292)))) b!5937639))

(assert (= (and b!5937154 ((_ is Star!15983) (regTwo!32478 (regOne!32479 r!7292)))) b!5937640))

(assert (= (and b!5937154 ((_ is Union!15983) (regTwo!32478 (regOne!32479 r!7292)))) b!5937641))

(declare-fun e!3633474 () Bool)

(assert (=> b!5937134 (= tp!1651735 e!3633474)))

(declare-fun b!5937643 () Bool)

(declare-fun tp!1651899 () Bool)

(declare-fun tp!1651895 () Bool)

(assert (=> b!5937643 (= e!3633474 (and tp!1651899 tp!1651895))))

(declare-fun b!5937642 () Bool)

(assert (=> b!5937642 (= e!3633474 tp_is_empty!41219)))

(declare-fun b!5937645 () Bool)

(declare-fun tp!1651898 () Bool)

(declare-fun tp!1651896 () Bool)

(assert (=> b!5937645 (= e!3633474 (and tp!1651898 tp!1651896))))

(declare-fun b!5937644 () Bool)

(declare-fun tp!1651897 () Bool)

(assert (=> b!5937644 (= e!3633474 tp!1651897)))

(assert (= (and b!5937134 ((_ is ElementMatch!15983) (reg!16312 (regOne!32478 r!7292)))) b!5937642))

(assert (= (and b!5937134 ((_ is Concat!24828) (reg!16312 (regOne!32478 r!7292)))) b!5937643))

(assert (= (and b!5937134 ((_ is Star!15983) (reg!16312 (regOne!32478 r!7292)))) b!5937644))

(assert (= (and b!5937134 ((_ is Union!15983) (reg!16312 (regOne!32478 r!7292)))) b!5937645))

(declare-fun e!3633475 () Bool)

(assert (=> b!5937164 (= tp!1651768 e!3633475)))

(declare-fun b!5937647 () Bool)

(declare-fun tp!1651904 () Bool)

(declare-fun tp!1651900 () Bool)

(assert (=> b!5937647 (= e!3633475 (and tp!1651904 tp!1651900))))

(declare-fun b!5937646 () Bool)

(assert (=> b!5937646 (= e!3633475 tp_is_empty!41219)))

(declare-fun b!5937649 () Bool)

(declare-fun tp!1651903 () Bool)

(declare-fun tp!1651901 () Bool)

(assert (=> b!5937649 (= e!3633475 (and tp!1651903 tp!1651901))))

(declare-fun b!5937648 () Bool)

(declare-fun tp!1651902 () Bool)

(assert (=> b!5937648 (= e!3633475 tp!1651902)))

(assert (= (and b!5937164 ((_ is ElementMatch!15983) (regOne!32479 (reg!16312 r!7292)))) b!5937646))

(assert (= (and b!5937164 ((_ is Concat!24828) (regOne!32479 (reg!16312 r!7292)))) b!5937647))

(assert (= (and b!5937164 ((_ is Star!15983) (regOne!32479 (reg!16312 r!7292)))) b!5937648))

(assert (= (and b!5937164 ((_ is Union!15983) (regOne!32479 (reg!16312 r!7292)))) b!5937649))

(declare-fun e!3633476 () Bool)

(assert (=> b!5937164 (= tp!1651766 e!3633476)))

(declare-fun b!5937651 () Bool)

(declare-fun tp!1651909 () Bool)

(declare-fun tp!1651905 () Bool)

(assert (=> b!5937651 (= e!3633476 (and tp!1651909 tp!1651905))))

(declare-fun b!5937650 () Bool)

(assert (=> b!5937650 (= e!3633476 tp_is_empty!41219)))

(declare-fun b!5937653 () Bool)

(declare-fun tp!1651908 () Bool)

(declare-fun tp!1651906 () Bool)

(assert (=> b!5937653 (= e!3633476 (and tp!1651908 tp!1651906))))

(declare-fun b!5937652 () Bool)

(declare-fun tp!1651907 () Bool)

(assert (=> b!5937652 (= e!3633476 tp!1651907)))

(assert (= (and b!5937164 ((_ is ElementMatch!15983) (regTwo!32479 (reg!16312 r!7292)))) b!5937650))

(assert (= (and b!5937164 ((_ is Concat!24828) (regTwo!32479 (reg!16312 r!7292)))) b!5937651))

(assert (= (and b!5937164 ((_ is Star!15983) (regTwo!32479 (reg!16312 r!7292)))) b!5937652))

(assert (= (and b!5937164 ((_ is Union!15983) (regTwo!32479 (reg!16312 r!7292)))) b!5937653))

(declare-fun e!3633477 () Bool)

(assert (=> b!5937155 (= tp!1651757 e!3633477)))

(declare-fun b!5937655 () Bool)

(declare-fun tp!1651914 () Bool)

(declare-fun tp!1651910 () Bool)

(assert (=> b!5937655 (= e!3633477 (and tp!1651914 tp!1651910))))

(declare-fun b!5937654 () Bool)

(assert (=> b!5937654 (= e!3633477 tp_is_empty!41219)))

(declare-fun b!5937657 () Bool)

(declare-fun tp!1651913 () Bool)

(declare-fun tp!1651911 () Bool)

(assert (=> b!5937657 (= e!3633477 (and tp!1651913 tp!1651911))))

(declare-fun b!5937656 () Bool)

(declare-fun tp!1651912 () Bool)

(assert (=> b!5937656 (= e!3633477 tp!1651912)))

(assert (= (and b!5937155 ((_ is ElementMatch!15983) (reg!16312 (regOne!32479 r!7292)))) b!5937654))

(assert (= (and b!5937155 ((_ is Concat!24828) (reg!16312 (regOne!32479 r!7292)))) b!5937655))

(assert (= (and b!5937155 ((_ is Star!15983) (reg!16312 (regOne!32479 r!7292)))) b!5937656))

(assert (= (and b!5937155 ((_ is Union!15983) (reg!16312 (regOne!32479 r!7292)))) b!5937657))

(declare-fun e!3633478 () Bool)

(assert (=> b!5937135 (= tp!1651736 e!3633478)))

(declare-fun b!5937659 () Bool)

(declare-fun tp!1651919 () Bool)

(declare-fun tp!1651915 () Bool)

(assert (=> b!5937659 (= e!3633478 (and tp!1651919 tp!1651915))))

(declare-fun b!5937658 () Bool)

(assert (=> b!5937658 (= e!3633478 tp_is_empty!41219)))

(declare-fun b!5937661 () Bool)

(declare-fun tp!1651918 () Bool)

(declare-fun tp!1651916 () Bool)

(assert (=> b!5937661 (= e!3633478 (and tp!1651918 tp!1651916))))

(declare-fun b!5937660 () Bool)

(declare-fun tp!1651917 () Bool)

(assert (=> b!5937660 (= e!3633478 tp!1651917)))

(assert (= (and b!5937135 ((_ is ElementMatch!15983) (regOne!32479 (regOne!32478 r!7292)))) b!5937658))

(assert (= (and b!5937135 ((_ is Concat!24828) (regOne!32479 (regOne!32478 r!7292)))) b!5937659))

(assert (= (and b!5937135 ((_ is Star!15983) (regOne!32479 (regOne!32478 r!7292)))) b!5937660))

(assert (= (and b!5937135 ((_ is Union!15983) (regOne!32479 (regOne!32478 r!7292)))) b!5937661))

(declare-fun e!3633479 () Bool)

(assert (=> b!5937135 (= tp!1651734 e!3633479)))

(declare-fun b!5937663 () Bool)

(declare-fun tp!1651924 () Bool)

(declare-fun tp!1651920 () Bool)

(assert (=> b!5937663 (= e!3633479 (and tp!1651924 tp!1651920))))

(declare-fun b!5937662 () Bool)

(assert (=> b!5937662 (= e!3633479 tp_is_empty!41219)))

(declare-fun b!5937665 () Bool)

(declare-fun tp!1651923 () Bool)

(declare-fun tp!1651921 () Bool)

(assert (=> b!5937665 (= e!3633479 (and tp!1651923 tp!1651921))))

(declare-fun b!5937664 () Bool)

(declare-fun tp!1651922 () Bool)

(assert (=> b!5937664 (= e!3633479 tp!1651922)))

(assert (= (and b!5937135 ((_ is ElementMatch!15983) (regTwo!32479 (regOne!32478 r!7292)))) b!5937662))

(assert (= (and b!5937135 ((_ is Concat!24828) (regTwo!32479 (regOne!32478 r!7292)))) b!5937663))

(assert (= (and b!5937135 ((_ is Star!15983) (regTwo!32479 (regOne!32478 r!7292)))) b!5937664))

(assert (= (and b!5937135 ((_ is Union!15983) (regTwo!32479 (regOne!32478 r!7292)))) b!5937665))

(declare-fun e!3633480 () Bool)

(assert (=> b!5937156 (= tp!1651758 e!3633480)))

(declare-fun b!5937667 () Bool)

(declare-fun tp!1651929 () Bool)

(declare-fun tp!1651925 () Bool)

(assert (=> b!5937667 (= e!3633480 (and tp!1651929 tp!1651925))))

(declare-fun b!5937666 () Bool)

(assert (=> b!5937666 (= e!3633480 tp_is_empty!41219)))

(declare-fun b!5937669 () Bool)

(declare-fun tp!1651928 () Bool)

(declare-fun tp!1651926 () Bool)

(assert (=> b!5937669 (= e!3633480 (and tp!1651928 tp!1651926))))

(declare-fun b!5937668 () Bool)

(declare-fun tp!1651927 () Bool)

(assert (=> b!5937668 (= e!3633480 tp!1651927)))

(assert (= (and b!5937156 ((_ is ElementMatch!15983) (regOne!32479 (regOne!32479 r!7292)))) b!5937666))

(assert (= (and b!5937156 ((_ is Concat!24828) (regOne!32479 (regOne!32479 r!7292)))) b!5937667))

(assert (= (and b!5937156 ((_ is Star!15983) (regOne!32479 (regOne!32479 r!7292)))) b!5937668))

(assert (= (and b!5937156 ((_ is Union!15983) (regOne!32479 (regOne!32479 r!7292)))) b!5937669))

(declare-fun e!3633481 () Bool)

(assert (=> b!5937156 (= tp!1651756 e!3633481)))

(declare-fun b!5937671 () Bool)

(declare-fun tp!1651934 () Bool)

(declare-fun tp!1651930 () Bool)

(assert (=> b!5937671 (= e!3633481 (and tp!1651934 tp!1651930))))

(declare-fun b!5937670 () Bool)

(assert (=> b!5937670 (= e!3633481 tp_is_empty!41219)))

(declare-fun b!5937673 () Bool)

(declare-fun tp!1651933 () Bool)

(declare-fun tp!1651931 () Bool)

(assert (=> b!5937673 (= e!3633481 (and tp!1651933 tp!1651931))))

(declare-fun b!5937672 () Bool)

(declare-fun tp!1651932 () Bool)

(assert (=> b!5937672 (= e!3633481 tp!1651932)))

(assert (= (and b!5937156 ((_ is ElementMatch!15983) (regTwo!32479 (regOne!32479 r!7292)))) b!5937670))

(assert (= (and b!5937156 ((_ is Concat!24828) (regTwo!32479 (regOne!32479 r!7292)))) b!5937671))

(assert (= (and b!5937156 ((_ is Star!15983) (regTwo!32479 (regOne!32479 r!7292)))) b!5937672))

(assert (= (and b!5937156 ((_ is Union!15983) (regTwo!32479 (regOne!32479 r!7292)))) b!5937673))

(declare-fun condSetEmpty!40326 () Bool)

(assert (=> setNonEmpty!40320 (= condSetEmpty!40326 (= setRest!40320 ((as const (Array Context!10734 Bool)) false)))))

(declare-fun setRes!40326 () Bool)

(assert (=> setNonEmpty!40320 (= tp!1651722 setRes!40326)))

(declare-fun setIsEmpty!40326 () Bool)

(assert (=> setIsEmpty!40326 setRes!40326))

(declare-fun setNonEmpty!40326 () Bool)

(declare-fun tp!1651936 () Bool)

(declare-fun e!3633482 () Bool)

(declare-fun setElem!40326 () Context!10734)

(assert (=> setNonEmpty!40326 (= setRes!40326 (and tp!1651936 (inv!83204 setElem!40326) e!3633482))))

(declare-fun setRest!40326 () (InoxSet Context!10734))

(assert (=> setNonEmpty!40326 (= setRest!40320 ((_ map or) (store ((as const (Array Context!10734 Bool)) false) setElem!40326 true) setRest!40326))))

(declare-fun b!5937674 () Bool)

(declare-fun tp!1651935 () Bool)

(assert (=> b!5937674 (= e!3633482 tp!1651935)))

(assert (= (and setNonEmpty!40320 condSetEmpty!40326) setIsEmpty!40326))

(assert (= (and setNonEmpty!40320 (not condSetEmpty!40326)) setNonEmpty!40326))

(assert (= setNonEmpty!40326 b!5937674))

(declare-fun m!6827998 () Bool)

(assert (=> setNonEmpty!40326 m!6827998))

(declare-fun b!5937675 () Bool)

(declare-fun e!3633483 () Bool)

(declare-fun tp!1651937 () Bool)

(declare-fun tp!1651938 () Bool)

(assert (=> b!5937675 (= e!3633483 (and tp!1651937 tp!1651938))))

(assert (=> b!5937121 (= tp!1651721 e!3633483)))

(assert (= (and b!5937121 ((_ is Cons!64124) (exprs!5867 setElem!40320))) b!5937675))

(declare-fun b_lambda!223031 () Bool)

(assert (= b_lambda!223015 (or d!1860955 b_lambda!223031)))

(declare-fun bs!1404486 () Bool)

(declare-fun d!1861281 () Bool)

(assert (= bs!1404486 (and d!1861281 d!1860955)))

(assert (=> bs!1404486 (= (dynLambda!25081 lambda!323769 (h!70572 (exprs!5867 setElem!40314))) (validRegex!7719 (h!70572 (exprs!5867 setElem!40314))))))

(declare-fun m!6828000 () Bool)

(assert (=> bs!1404486 m!6828000))

(assert (=> b!5937191 d!1861281))

(declare-fun b_lambda!223033 () Bool)

(assert (= b_lambda!223013 (or d!1861067 b_lambda!223033)))

(declare-fun bs!1404487 () Bool)

(declare-fun d!1861283 () Bool)

(assert (= bs!1404487 (and d!1861283 d!1861067)))

(assert (=> bs!1404487 (= (dynLambda!25081 lambda!323821 (h!70572 (exprs!5867 lt!2311329))) (validRegex!7719 (h!70572 (exprs!5867 lt!2311329))))))

(declare-fun m!6828002 () Bool)

(assert (=> bs!1404487 m!6828002))

(assert (=> b!5937189 d!1861283))

(declare-fun b_lambda!223035 () Bool)

(assert (= b_lambda!223027 (or b!5936462 b_lambda!223035)))

(assert (=> d!1861215 d!1861097))

(declare-fun b_lambda!223037 () Bool)

(assert (= b_lambda!223025 (or b!5936462 b_lambda!223037)))

(assert (=> d!1861213 d!1861093))

(declare-fun b_lambda!223039 () Bool)

(assert (= b_lambda!223017 (or d!1861033 b_lambda!223039)))

(declare-fun bs!1404488 () Bool)

(declare-fun d!1861285 () Bool)

(assert (= bs!1404488 (and d!1861285 d!1861033)))

(assert (=> bs!1404488 (= (dynLambda!25081 lambda!323818 (h!70572 lt!2311399)) (validRegex!7719 (h!70572 lt!2311399)))))

(declare-fun m!6828004 () Bool)

(assert (=> bs!1404488 m!6828004))

(assert (=> b!5937260 d!1861285))

(declare-fun b_lambda!223041 () Bool)

(assert (= b_lambda!223029 (or d!1861057 b_lambda!223041)))

(declare-fun bs!1404489 () Bool)

(declare-fun d!1861287 () Bool)

(assert (= bs!1404489 (and d!1861287 d!1861057)))

(assert (=> bs!1404489 (= (dynLambda!25081 lambda!323820 (h!70572 (exprs!5867 (h!70573 zl!343)))) (validRegex!7719 (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(declare-fun m!6828006 () Bool)

(assert (=> bs!1404489 m!6828006))

(assert (=> b!5937488 d!1861287))

(declare-fun b_lambda!223043 () Bool)

(assert (= b_lambda!223019 (or d!1861091 b_lambda!223043)))

(declare-fun bs!1404490 () Bool)

(declare-fun d!1861289 () Bool)

(assert (= bs!1404490 (and d!1861289 d!1861091)))

(assert (=> bs!1404490 (= (dynLambda!25081 lambda!323830 (h!70572 (exprs!5867 (h!70573 zl!343)))) (validRegex!7719 (h!70572 (exprs!5867 (h!70573 zl!343)))))))

(assert (=> bs!1404490 m!6828006))

(assert (=> b!5937317 d!1861289))

(declare-fun b_lambda!223045 () Bool)

(assert (= b_lambda!223021 (or d!1861027 b_lambda!223045)))

(declare-fun bs!1404491 () Bool)

(declare-fun d!1861291 () Bool)

(assert (= bs!1404491 (and d!1861291 d!1861027)))

(assert (=> bs!1404491 (= (dynLambda!25081 lambda!323814 (h!70572 (unfocusZipperList!1404 zl!343))) (validRegex!7719 (h!70572 (unfocusZipperList!1404 zl!343))))))

(declare-fun m!6828008 () Bool)

(assert (=> bs!1404491 m!6828008))

(assert (=> b!5937339 d!1861291))

(declare-fun b_lambda!223047 () Bool)

(assert (= b_lambda!223023 (or b!5936462 b_lambda!223047)))

(assert (=> d!1861191 d!1861095))

(check-sat (not bm!471751) (not b!5937408) (not b_lambda!223035) (not b!5937400) (not b!5937674) (not bm!471697) (not b!5937175) (not b!5937652) (not b!5937615) (not b!5937635) (not b!5937436) (not b!5937574) (not d!1861127) (not b!5937643) (not b!5937620) (not b!5937262) (not b!5937583) (not d!1861221) (not b!5937550) (not d!1861211) (not b!5937402) (not bm!471731) (not b!5937567) (not b!5937591) (not b!5937663) (not d!1861267) (not b!5937553) (not b!5937363) (not d!1861235) (not b!5937490) (not b!5937589) (not b!5937664) (not setNonEmpty!40326) (not b!5937566) (not b!5937633) (not setNonEmpty!40323) (not b!5937637) (not b!5937607) (not setNonEmpty!40325) (not b!5937597) (not b!5937202) (not b!5937495) (not b!5937489) (not b!5937545) (not b_lambda!223041) (not b!5937410) (not b!5937587) (not b!5937403) (not b!5937227) (not b!5937665) (not d!1861259) (not b!5937303) (not b!5937420) (not b!5937659) (not bm!471685) (not b!5937555) (not b!5937374) (not b!5937294) (not b!5937319) (not d!1861205) (not b!5937661) (not d!1861197) (not d!1861271) (not b!5937585) (not b!5937440) (not b!5937612) (not d!1861249) (not b!5937450) (not bs!1404489) (not bm!471693) (not b!5937401) (not bm!471709) (not b!5937641) (not bm!471757) (not b!5937627) (not bm!471671) (not b!5937563) (not b!5937505) (not b!5937409) (not b_lambda!223009) (not b!5937428) (not b!5937565) (not b!5937599) (not d!1861105) (not b!5937660) (not b!5937286) (not bm!471746) (not b!5937508) (not d!1861261) (not d!1861191) (not b!5937203) (not b!5937595) (not b!5937318) (not b!5937331) (not bm!471683) (not b!5937298) (not b!5937624) (not b!5937655) (not bm!471758) (not b!5937474) (not b!5937606) (not b!5937452) (not b!5937636) (not d!1861195) (not b!5937266) (not d!1861239) (not b!5937604) (not b!5937261) (not b!5937554) (not b!5937621) (not d!1861099) (not b!5937581) (not b!5937570) (not bm!471723) (not b!5937205) (not bm!471708) (not b!5937653) (not b_lambda!223039) (not d!1861189) (not b_lambda!223031) tp_is_empty!41219 (not b!5937238) (not d!1861169) (not b!5937171) (not b!5937602) (not b!5937562) (not bm!471689) (not b!5937446) (not d!1861241) (not b!5937577) (not bs!1404486) (not b!5937404) (not b_lambda!223037) (not b!5937558) (not b_lambda!223047) (not bm!471696) (not b!5937421) (not b!5937611) (not b!5937453) (not b!5937651) (not b!5937352) (not b!5937639) (not d!1861273) (not b!5937193) (not b!5937277) (not bm!471752) (not bm!471738) (not bm!471720) (not d!1861269) (not b!5937517) (not setNonEmpty!40324) (not d!1861207) (not bs!1404488) (not b!5937533) (not bm!471760) (not b!5937439) (not b!5937610) (not b!5937427) (not d!1861187) (not b!5937575) (not b!5937520) (not b!5937640) (not d!1861139) (not b!5937272) (not b!5937656) (not d!1861201) (not b!5937181) (not b_lambda!223011) (not b!5937258) (not bm!471719) (not b!5937619) (not b!5937675) (not b!5937625) (not b!5937648) (not bm!471745) (not b!5937190) (not b!5937263) (not bm!471700) (not bm!471715) (not bm!471727) (not bm!471753) (not b!5937631) (not b!5937582) (not b!5937649) (not bm!471699) (not bm!471726) (not b!5937304) (not b!5937617) (not b!5937657) (not b!5937380) (not d!1861133) (not bm!471721) (not b!5937645) (not b!5937306) (not b!5937594) (not b!5937197) (not b!5937605) (not b!5937586) (not bm!471714) (not b!5937673) (not bm!471702) (not bm!471739) (not b!5937571) (not d!1861209) (not bm!471713) (not b!5937437) (not b!5937443) (not b_lambda!223043) (not b!5937250) (not bm!471722) (not b_lambda!223045) (not bs!1404490) (not bm!471744) (not bm!471732) (not b!5937172) (not b!5937590) (not b!5937255) (not d!1861265) (not bm!471701) (not d!1861203) (not b!5937548) (not d!1861125) (not b!5937343) (not d!1861213) (not bm!471737) (not d!1861119) (not b!5937628) (not b!5937456) (not b!5937578) (not bs!1404491) (not b!5937523) (not b!5937601) (not b!5937671) (not b!5937579) (not b!5937271) (not bm!471688) (not bm!471690) (not b!5937569) (not bm!471684) (not b!5937485) (not d!1861157) (not b!5937672) (not b!5937180) (not b!5937668) (not b!5937454) (not b!5937309) (not b!5937603) (not b!5937340) (not b!5937573) (not d!1861175) (not b!5937183) (not b!5937493) (not b!5937667) (not bm!471670) (not bm!471695) (not b!5937194) (not b!5937608) (not b!5937246) (not b!5937669) (not bm!471750) (not b!5937320) (not b!5937451) (not bm!471687) (not b!5937561) (not b!5937547) (not d!1861215) (not bm!471740) (not b!5937616) (not b!5937247) (not b!5937623) (not b!5937192) (not b!5937435) (not bm!471733) (not bm!471707) (not bm!471724) (not b!5937593) (not bs!1404487) (not b!5937632) (not b!5937544) (not bm!471759) (not b!5937444) (not b!5937295) (not b!5937549) (not b!5937613) (not b!5937383) (not b!5937274) (not b!5937377) (not b!5937647) (not b!5937455) (not b_lambda!223033) (not b!5937629) (not b!5937644) (not d!1861107) (not b!5937256) (not d!1861117) (not bm!471692) (not b_lambda!223007) (not bm!471681) (not b!5937598))
(check-sat)
