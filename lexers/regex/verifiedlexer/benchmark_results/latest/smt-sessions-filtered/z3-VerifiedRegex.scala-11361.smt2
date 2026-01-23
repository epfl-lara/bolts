; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601864 () Bool)

(assert start!601864)

(declare-fun b!5916342 () Bool)

(assert (=> b!5916342 true))

(assert (=> b!5916342 true))

(declare-fun lambda!322806 () Int)

(declare-fun lambda!322805 () Int)

(assert (=> b!5916342 (not (= lambda!322806 lambda!322805))))

(assert (=> b!5916342 true))

(assert (=> b!5916342 true))

(declare-fun b!5916327 () Bool)

(declare-fun res!2480652 () Bool)

(declare-fun e!3622459 () Bool)

(assert (=> b!5916327 (=> res!2480652 e!3622459)))

(declare-datatypes ((C!32208 0))(
  ( (C!32209 (val!25806 Int)) )
))
(declare-datatypes ((Regex!15969 0))(
  ( (ElementMatch!15969 (c!1051439 C!32208)) (Concat!24814 (regOne!32450 Regex!15969) (regTwo!32450 Regex!15969)) (EmptyExpr!15969) (Star!15969 (reg!16298 Regex!15969)) (EmptyLang!15969) (Union!15969 (regOne!32451 Regex!15969) (regTwo!32451 Regex!15969)) )
))
(declare-datatypes ((List!64206 0))(
  ( (Nil!64082) (Cons!64082 (h!70530 Regex!15969) (t!377595 List!64206)) )
))
(declare-datatypes ((Context!10706 0))(
  ( (Context!10707 (exprs!5853 List!64206)) )
))
(declare-datatypes ((List!64207 0))(
  ( (Nil!64083) (Cons!64083 (h!70531 Context!10706) (t!377596 List!64207)) )
))
(declare-fun zl!343 () List!64207)

(declare-fun isEmpty!35937 (List!64207) Bool)

(assert (=> b!5916327 (= res!2480652 (not (isEmpty!35937 (t!377596 zl!343))))))

(declare-fun b!5916328 () Bool)

(declare-fun e!3622456 () Bool)

(declare-fun tp!1643860 () Bool)

(assert (=> b!5916328 (= e!3622456 tp!1643860)))

(declare-fun b!5916329 () Bool)

(declare-fun tp_is_empty!41191 () Bool)

(assert (=> b!5916329 (= e!3622456 tp_is_empty!41191)))

(declare-fun b!5916330 () Bool)

(declare-fun tp!1643864 () Bool)

(declare-fun tp!1643866 () Bool)

(assert (=> b!5916330 (= e!3622456 (and tp!1643864 tp!1643866))))

(declare-fun b!5916332 () Bool)

(declare-fun e!3622458 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10706))

(assert (=> b!5916332 (= e!3622458 (= z!1189 (store ((as const (Array Context!10706 Bool)) false) (h!70531 zl!343) true)))))

(declare-fun b!5916333 () Bool)

(declare-fun e!3622461 () Bool)

(declare-fun tp!1643861 () Bool)

(assert (=> b!5916333 (= e!3622461 tp!1643861)))

(declare-fun b!5916334 () Bool)

(declare-fun res!2480643 () Bool)

(assert (=> b!5916334 (=> res!2480643 e!3622458)))

(declare-fun isEmpty!35938 (List!64206) Bool)

(assert (=> b!5916334 (= res!2480643 (not (isEmpty!35938 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5916335 () Bool)

(declare-fun e!3622460 () Bool)

(declare-fun tp!1643859 () Bool)

(assert (=> b!5916335 (= e!3622460 tp!1643859)))

(declare-fun b!5916336 () Bool)

(declare-fun res!2480644 () Bool)

(assert (=> b!5916336 (=> res!2480644 e!3622459)))

(declare-fun r!7292 () Regex!15969)

(declare-fun generalisedUnion!1813 (List!64206) Regex!15969)

(declare-fun unfocusZipperList!1390 (List!64207) List!64206)

(assert (=> b!5916336 (= res!2480644 (not (= r!7292 (generalisedUnion!1813 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5916337 () Bool)

(declare-fun tp!1643857 () Bool)

(declare-fun tp!1643858 () Bool)

(assert (=> b!5916337 (= e!3622456 (and tp!1643857 tp!1643858))))

(declare-fun b!5916338 () Bool)

(declare-fun res!2480649 () Bool)

(assert (=> b!5916338 (=> res!2480649 e!3622459)))

(get-info :version)

(assert (=> b!5916338 (= res!2480649 (or ((_ is EmptyExpr!15969) r!7292) ((_ is EmptyLang!15969) r!7292) ((_ is ElementMatch!15969) r!7292) ((_ is Union!15969) r!7292) (not ((_ is Concat!24814) r!7292))))))

(declare-fun b!5916339 () Bool)

(declare-fun e!3622462 () Bool)

(assert (=> b!5916339 (= e!3622462 (not e!3622459))))

(declare-fun res!2480646 () Bool)

(assert (=> b!5916339 (=> res!2480646 e!3622459)))

(assert (=> b!5916339 (= res!2480646 (not ((_ is Cons!64083) zl!343)))))

(declare-fun lt!2309694 () Bool)

(declare-datatypes ((List!64208 0))(
  ( (Nil!64084) (Cons!64084 (h!70532 C!32208) (t!377597 List!64208)) )
))
(declare-fun s!2326 () List!64208)

(declare-fun matchRSpec!3070 (Regex!15969 List!64208) Bool)

(assert (=> b!5916339 (= lt!2309694 (matchRSpec!3070 r!7292 s!2326))))

(declare-fun matchR!8152 (Regex!15969 List!64208) Bool)

(assert (=> b!5916339 (= lt!2309694 (matchR!8152 r!7292 s!2326))))

(declare-datatypes ((Unit!157209 0))(
  ( (Unit!157210) )
))
(declare-fun lt!2309698 () Unit!157209)

(declare-fun mainMatchTheorem!3070 (Regex!15969 List!64208) Unit!157209)

(assert (=> b!5916339 (= lt!2309698 (mainMatchTheorem!3070 r!7292 s!2326))))

(declare-fun setIsEmpty!40160 () Bool)

(declare-fun setRes!40160 () Bool)

(assert (=> setIsEmpty!40160 setRes!40160))

(declare-fun b!5916340 () Bool)

(declare-fun e!3622457 () Bool)

(declare-fun tp!1643863 () Bool)

(assert (=> b!5916340 (= e!3622457 (and tp_is_empty!41191 tp!1643863))))

(declare-fun b!5916341 () Bool)

(declare-fun res!2480654 () Bool)

(assert (=> b!5916341 (=> res!2480654 e!3622459)))

(assert (=> b!5916341 (= res!2480654 (not ((_ is Cons!64082) (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5916331 () Bool)

(declare-fun res!2480645 () Bool)

(assert (=> b!5916331 (=> res!2480645 e!3622459)))

(declare-fun generalisedConcat!1566 (List!64206) Regex!15969)

(assert (=> b!5916331 (= res!2480645 (not (= r!7292 (generalisedConcat!1566 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun res!2480653 () Bool)

(assert (=> start!601864 (=> (not res!2480653) (not e!3622462))))

(declare-fun validRegex!7705 (Regex!15969) Bool)

(assert (=> start!601864 (= res!2480653 (validRegex!7705 r!7292))))

(assert (=> start!601864 e!3622462))

(assert (=> start!601864 e!3622456))

(declare-fun condSetEmpty!40160 () Bool)

(assert (=> start!601864 (= condSetEmpty!40160 (= z!1189 ((as const (Array Context!10706 Bool)) false)))))

(assert (=> start!601864 setRes!40160))

(declare-fun e!3622463 () Bool)

(assert (=> start!601864 e!3622463))

(assert (=> start!601864 e!3622457))

(assert (=> b!5916342 (= e!3622459 e!3622458)))

(declare-fun res!2480651 () Bool)

(assert (=> b!5916342 (=> res!2480651 e!3622458)))

(declare-fun lt!2309696 () Bool)

(assert (=> b!5916342 (= res!2480651 (or (not (= lt!2309694 lt!2309696)) ((_ is Nil!64084) s!2326)))))

(declare-fun Exists!3039 (Int) Bool)

(assert (=> b!5916342 (= (Exists!3039 lambda!322805) (Exists!3039 lambda!322806))))

(declare-fun lt!2309695 () Unit!157209)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1576 (Regex!15969 Regex!15969 List!64208) Unit!157209)

(assert (=> b!5916342 (= lt!2309695 (lemmaExistCutMatchRandMatchRSpecEquivalent!1576 (regOne!32450 r!7292) (regTwo!32450 r!7292) s!2326))))

(assert (=> b!5916342 (= lt!2309696 (Exists!3039 lambda!322805))))

(declare-datatypes ((tuple2!65896 0))(
  ( (tuple2!65897 (_1!36251 List!64208) (_2!36251 List!64208)) )
))
(declare-datatypes ((Option!15860 0))(
  ( (None!15859) (Some!15859 (v!51953 tuple2!65896)) )
))
(declare-fun isDefined!12563 (Option!15860) Bool)

(declare-fun findConcatSeparation!2274 (Regex!15969 Regex!15969 List!64208 List!64208 List!64208) Option!15860)

(assert (=> b!5916342 (= lt!2309696 (isDefined!12563 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) Nil!64084 s!2326 s!2326)))))

(declare-fun lt!2309697 () Unit!157209)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2038 (Regex!15969 Regex!15969 List!64208) Unit!157209)

(assert (=> b!5916342 (= lt!2309697 (lemmaFindConcatSeparationEquivalentToExists!2038 (regOne!32450 r!7292) (regTwo!32450 r!7292) s!2326))))

(declare-fun b!5916343 () Bool)

(declare-fun res!2480650 () Bool)

(assert (=> b!5916343 (=> (not res!2480650) (not e!3622462))))

(declare-fun unfocusZipper!1711 (List!64207) Regex!15969)

(assert (=> b!5916343 (= res!2480650 (= r!7292 (unfocusZipper!1711 zl!343)))))

(declare-fun tp!1643865 () Bool)

(declare-fun b!5916344 () Bool)

(declare-fun inv!83169 (Context!10706) Bool)

(assert (=> b!5916344 (= e!3622463 (and (inv!83169 (h!70531 zl!343)) e!3622461 tp!1643865))))

(declare-fun b!5916345 () Bool)

(declare-fun res!2480647 () Bool)

(assert (=> b!5916345 (=> res!2480647 e!3622458)))

(declare-fun derivationStepZipperUp!1145 (Context!10706 C!32208) (InoxSet Context!10706))

(declare-fun derivationStepZipperDown!1219 (Regex!15969 Context!10706 C!32208) (InoxSet Context!10706))

(assert (=> b!5916345 (= res!2480647 (not (= (derivationStepZipperUp!1145 (Context!10707 (Cons!64082 r!7292 Nil!64082)) (h!70532 s!2326)) (derivationStepZipperDown!1219 r!7292 (Context!10707 Nil!64082) (h!70532 s!2326)))))))

(declare-fun setElem!40160 () Context!10706)

(declare-fun setNonEmpty!40160 () Bool)

(declare-fun tp!1643862 () Bool)

(assert (=> setNonEmpty!40160 (= setRes!40160 (and tp!1643862 (inv!83169 setElem!40160) e!3622460))))

(declare-fun setRest!40160 () (InoxSet Context!10706))

(assert (=> setNonEmpty!40160 (= z!1189 ((_ map or) (store ((as const (Array Context!10706 Bool)) false) setElem!40160 true) setRest!40160))))

(declare-fun b!5916346 () Bool)

(declare-fun res!2480648 () Bool)

(assert (=> b!5916346 (=> (not res!2480648) (not e!3622462))))

(declare-fun toList!9753 ((InoxSet Context!10706)) List!64207)

(assert (=> b!5916346 (= res!2480648 (= (toList!9753 z!1189) zl!343))))

(assert (= (and start!601864 res!2480653) b!5916346))

(assert (= (and b!5916346 res!2480648) b!5916343))

(assert (= (and b!5916343 res!2480650) b!5916339))

(assert (= (and b!5916339 (not res!2480646)) b!5916327))

(assert (= (and b!5916327 (not res!2480652)) b!5916331))

(assert (= (and b!5916331 (not res!2480645)) b!5916341))

(assert (= (and b!5916341 (not res!2480654)) b!5916336))

(assert (= (and b!5916336 (not res!2480644)) b!5916338))

(assert (= (and b!5916338 (not res!2480649)) b!5916342))

(assert (= (and b!5916342 (not res!2480651)) b!5916334))

(assert (= (and b!5916334 (not res!2480643)) b!5916345))

(assert (= (and b!5916345 (not res!2480647)) b!5916332))

(assert (= (and start!601864 ((_ is ElementMatch!15969) r!7292)) b!5916329))

(assert (= (and start!601864 ((_ is Concat!24814) r!7292)) b!5916337))

(assert (= (and start!601864 ((_ is Star!15969) r!7292)) b!5916328))

(assert (= (and start!601864 ((_ is Union!15969) r!7292)) b!5916330))

(assert (= (and start!601864 condSetEmpty!40160) setIsEmpty!40160))

(assert (= (and start!601864 (not condSetEmpty!40160)) setNonEmpty!40160))

(assert (= setNonEmpty!40160 b!5916335))

(assert (= b!5916344 b!5916333))

(assert (= (and start!601864 ((_ is Cons!64083) zl!343)) b!5916344))

(assert (= (and start!601864 ((_ is Cons!64084) s!2326)) b!5916340))

(declare-fun m!6814100 () Bool)

(assert (=> b!5916339 m!6814100))

(declare-fun m!6814102 () Bool)

(assert (=> b!5916339 m!6814102))

(declare-fun m!6814104 () Bool)

(assert (=> b!5916339 m!6814104))

(declare-fun m!6814106 () Bool)

(assert (=> b!5916344 m!6814106))

(declare-fun m!6814108 () Bool)

(assert (=> b!5916331 m!6814108))

(declare-fun m!6814110 () Bool)

(assert (=> b!5916336 m!6814110))

(assert (=> b!5916336 m!6814110))

(declare-fun m!6814112 () Bool)

(assert (=> b!5916336 m!6814112))

(declare-fun m!6814114 () Bool)

(assert (=> b!5916332 m!6814114))

(declare-fun m!6814116 () Bool)

(assert (=> b!5916342 m!6814116))

(declare-fun m!6814118 () Bool)

(assert (=> b!5916342 m!6814118))

(declare-fun m!6814120 () Bool)

(assert (=> b!5916342 m!6814120))

(declare-fun m!6814122 () Bool)

(assert (=> b!5916342 m!6814122))

(declare-fun m!6814124 () Bool)

(assert (=> b!5916342 m!6814124))

(assert (=> b!5916342 m!6814116))

(assert (=> b!5916342 m!6814122))

(declare-fun m!6814126 () Bool)

(assert (=> b!5916342 m!6814126))

(declare-fun m!6814128 () Bool)

(assert (=> b!5916343 m!6814128))

(declare-fun m!6814130 () Bool)

(assert (=> start!601864 m!6814130))

(declare-fun m!6814132 () Bool)

(assert (=> b!5916346 m!6814132))

(declare-fun m!6814134 () Bool)

(assert (=> b!5916345 m!6814134))

(declare-fun m!6814136 () Bool)

(assert (=> b!5916345 m!6814136))

(declare-fun m!6814138 () Bool)

(assert (=> setNonEmpty!40160 m!6814138))

(declare-fun m!6814140 () Bool)

(assert (=> b!5916327 m!6814140))

(declare-fun m!6814142 () Bool)

(assert (=> b!5916334 m!6814142))

(check-sat (not b!5916335) (not b!5916344) (not b!5916343) (not b!5916336) (not b!5916340) (not b!5916339) (not b!5916330) (not b!5916331) (not b!5916345) (not b!5916337) (not b!5916346) tp_is_empty!41191 (not b!5916328) (not b!5916333) (not start!601864) (not b!5916334) (not b!5916342) (not setNonEmpty!40160) (not b!5916327))
(check-sat)
(get-model)

(declare-fun d!1855580 () Bool)

(declare-fun lambda!322809 () Int)

(declare-fun forall!15051 (List!64206 Int) Bool)

(assert (=> d!1855580 (= (inv!83169 setElem!40160) (forall!15051 (exprs!5853 setElem!40160) lambda!322809))))

(declare-fun bs!1400624 () Bool)

(assert (= bs!1400624 d!1855580))

(declare-fun m!6814144 () Bool)

(assert (=> bs!1400624 m!6814144))

(assert (=> setNonEmpty!40160 d!1855580))

(declare-fun bs!1400625 () Bool)

(declare-fun d!1855584 () Bool)

(assert (= bs!1400625 (and d!1855584 d!1855580)))

(declare-fun lambda!322812 () Int)

(assert (=> bs!1400625 (= lambda!322812 lambda!322809)))

(declare-fun b!5916386 () Bool)

(declare-fun e!3622488 () Bool)

(assert (=> b!5916386 (= e!3622488 (isEmpty!35938 (t!377595 (unfocusZipperList!1390 zl!343))))))

(declare-fun b!5916387 () Bool)

(declare-fun e!3622487 () Regex!15969)

(assert (=> b!5916387 (= e!3622487 (h!70530 (unfocusZipperList!1390 zl!343)))))

(declare-fun b!5916388 () Bool)

(declare-fun e!3622489 () Bool)

(declare-fun lt!2309701 () Regex!15969)

(declare-fun isEmptyLang!1405 (Regex!15969) Bool)

(assert (=> b!5916388 (= e!3622489 (isEmptyLang!1405 lt!2309701))))

(declare-fun b!5916389 () Bool)

(declare-fun e!3622485 () Bool)

(declare-fun head!12477 (List!64206) Regex!15969)

(assert (=> b!5916389 (= e!3622485 (= lt!2309701 (head!12477 (unfocusZipperList!1390 zl!343))))))

(declare-fun b!5916391 () Bool)

(assert (=> b!5916391 (= e!3622489 e!3622485)))

(declare-fun c!1051454 () Bool)

(declare-fun tail!11562 (List!64206) List!64206)

(assert (=> b!5916391 (= c!1051454 (isEmpty!35938 (tail!11562 (unfocusZipperList!1390 zl!343))))))

(declare-fun b!5916392 () Bool)

(declare-fun isUnion!835 (Regex!15969) Bool)

(assert (=> b!5916392 (= e!3622485 (isUnion!835 lt!2309701))))

(declare-fun b!5916393 () Bool)

(declare-fun e!3622486 () Regex!15969)

(assert (=> b!5916393 (= e!3622487 e!3622486)))

(declare-fun c!1051457 () Bool)

(assert (=> b!5916393 (= c!1051457 ((_ is Cons!64082) (unfocusZipperList!1390 zl!343)))))

(declare-fun b!5916394 () Bool)

(assert (=> b!5916394 (= e!3622486 (Union!15969 (h!70530 (unfocusZipperList!1390 zl!343)) (generalisedUnion!1813 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5916395 () Bool)

(assert (=> b!5916395 (= e!3622486 EmptyLang!15969)))

(declare-fun b!5916390 () Bool)

(declare-fun e!3622490 () Bool)

(assert (=> b!5916390 (= e!3622490 e!3622489)))

(declare-fun c!1051455 () Bool)

(assert (=> b!5916390 (= c!1051455 (isEmpty!35938 (unfocusZipperList!1390 zl!343)))))

(assert (=> d!1855584 e!3622490))

(declare-fun res!2480663 () Bool)

(assert (=> d!1855584 (=> (not res!2480663) (not e!3622490))))

(assert (=> d!1855584 (= res!2480663 (validRegex!7705 lt!2309701))))

(assert (=> d!1855584 (= lt!2309701 e!3622487)))

(declare-fun c!1051456 () Bool)

(assert (=> d!1855584 (= c!1051456 e!3622488)))

(declare-fun res!2480662 () Bool)

(assert (=> d!1855584 (=> (not res!2480662) (not e!3622488))))

(assert (=> d!1855584 (= res!2480662 ((_ is Cons!64082) (unfocusZipperList!1390 zl!343)))))

(assert (=> d!1855584 (forall!15051 (unfocusZipperList!1390 zl!343) lambda!322812)))

(assert (=> d!1855584 (= (generalisedUnion!1813 (unfocusZipperList!1390 zl!343)) lt!2309701)))

(assert (= (and d!1855584 res!2480662) b!5916386))

(assert (= (and d!1855584 c!1051456) b!5916387))

(assert (= (and d!1855584 (not c!1051456)) b!5916393))

(assert (= (and b!5916393 c!1051457) b!5916394))

(assert (= (and b!5916393 (not c!1051457)) b!5916395))

(assert (= (and d!1855584 res!2480663) b!5916390))

(assert (= (and b!5916390 c!1051455) b!5916388))

(assert (= (and b!5916390 (not c!1051455)) b!5916391))

(assert (= (and b!5916391 c!1051454) b!5916389))

(assert (= (and b!5916391 (not c!1051454)) b!5916392))

(assert (=> b!5916389 m!6814110))

(declare-fun m!6814152 () Bool)

(assert (=> b!5916389 m!6814152))

(declare-fun m!6814154 () Bool)

(assert (=> b!5916392 m!6814154))

(declare-fun m!6814156 () Bool)

(assert (=> d!1855584 m!6814156))

(assert (=> d!1855584 m!6814110))

(declare-fun m!6814158 () Bool)

(assert (=> d!1855584 m!6814158))

(assert (=> b!5916390 m!6814110))

(declare-fun m!6814160 () Bool)

(assert (=> b!5916390 m!6814160))

(declare-fun m!6814162 () Bool)

(assert (=> b!5916388 m!6814162))

(assert (=> b!5916391 m!6814110))

(declare-fun m!6814164 () Bool)

(assert (=> b!5916391 m!6814164))

(assert (=> b!5916391 m!6814164))

(declare-fun m!6814166 () Bool)

(assert (=> b!5916391 m!6814166))

(declare-fun m!6814168 () Bool)

(assert (=> b!5916394 m!6814168))

(declare-fun m!6814170 () Bool)

(assert (=> b!5916386 m!6814170))

(assert (=> b!5916336 d!1855584))

(declare-fun bs!1400626 () Bool)

(declare-fun d!1855588 () Bool)

(assert (= bs!1400626 (and d!1855588 d!1855580)))

(declare-fun lambda!322815 () Int)

(assert (=> bs!1400626 (= lambda!322815 lambda!322809)))

(declare-fun bs!1400627 () Bool)

(assert (= bs!1400627 (and d!1855588 d!1855584)))

(assert (=> bs!1400627 (= lambda!322815 lambda!322812)))

(declare-fun lt!2309704 () List!64206)

(assert (=> d!1855588 (forall!15051 lt!2309704 lambda!322815)))

(declare-fun e!3622505 () List!64206)

(assert (=> d!1855588 (= lt!2309704 e!3622505)))

(declare-fun c!1051470 () Bool)

(assert (=> d!1855588 (= c!1051470 ((_ is Cons!64083) zl!343))))

(assert (=> d!1855588 (= (unfocusZipperList!1390 zl!343) lt!2309704)))

(declare-fun b!5916422 () Bool)

(assert (=> b!5916422 (= e!3622505 (Cons!64082 (generalisedConcat!1566 (exprs!5853 (h!70531 zl!343))) (unfocusZipperList!1390 (t!377596 zl!343))))))

(declare-fun b!5916423 () Bool)

(assert (=> b!5916423 (= e!3622505 Nil!64082)))

(assert (= (and d!1855588 c!1051470) b!5916422))

(assert (= (and d!1855588 (not c!1051470)) b!5916423))

(declare-fun m!6814172 () Bool)

(assert (=> d!1855588 m!6814172))

(assert (=> b!5916422 m!6814108))

(declare-fun m!6814174 () Bool)

(assert (=> b!5916422 m!6814174))

(assert (=> b!5916336 d!1855588))

(declare-fun bm!468903 () Bool)

(declare-fun call!468908 () (InoxSet Context!10706))

(assert (=> bm!468903 (= call!468908 (derivationStepZipperDown!1219 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (h!70532 s!2326)))))

(declare-fun b!5916446 () Bool)

(declare-fun e!3622519 () Bool)

(declare-fun nullable!5964 (Regex!15969) Bool)

(assert (=> b!5916446 (= e!3622519 (nullable!5964 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(declare-fun b!5916447 () Bool)

(declare-fun e!3622518 () (InoxSet Context!10706))

(assert (=> b!5916447 (= e!3622518 call!468908)))

(declare-fun b!5916448 () Bool)

(declare-fun e!3622520 () (InoxSet Context!10706))

(assert (=> b!5916448 (= e!3622520 e!3622518)))

(declare-fun c!1051481 () Bool)

(assert (=> b!5916448 (= c!1051481 ((_ is Cons!64082) (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))

(declare-fun b!5916449 () Bool)

(assert (=> b!5916449 (= e!3622520 ((_ map or) call!468908 (derivationStepZipperUp!1145 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (h!70532 s!2326))))))

(declare-fun d!1855590 () Bool)

(declare-fun c!1051480 () Bool)

(assert (=> d!1855590 (= c!1051480 e!3622519)))

(declare-fun res!2480669 () Bool)

(assert (=> d!1855590 (=> (not res!2480669) (not e!3622519))))

(assert (=> d!1855590 (= res!2480669 ((_ is Cons!64082) (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))

(assert (=> d!1855590 (= (derivationStepZipperUp!1145 (Context!10707 (Cons!64082 r!7292 Nil!64082)) (h!70532 s!2326)) e!3622520)))

(declare-fun b!5916445 () Bool)

(assert (=> b!5916445 (= e!3622518 ((as const (Array Context!10706 Bool)) false))))

(assert (= (and d!1855590 res!2480669) b!5916446))

(assert (= (and d!1855590 c!1051480) b!5916449))

(assert (= (and d!1855590 (not c!1051480)) b!5916448))

(assert (= (and b!5916448 c!1051481) b!5916447))

(assert (= (and b!5916448 (not c!1051481)) b!5916445))

(assert (= (or b!5916449 b!5916447) bm!468903))

(declare-fun m!6814186 () Bool)

(assert (=> bm!468903 m!6814186))

(declare-fun m!6814188 () Bool)

(assert (=> b!5916446 m!6814188))

(declare-fun m!6814190 () Bool)

(assert (=> b!5916449 m!6814190))

(assert (=> b!5916345 d!1855590))

(declare-fun b!5916504 () Bool)

(declare-fun e!3622556 () (InoxSet Context!10706))

(declare-fun call!468929 () (InoxSet Context!10706))

(declare-fun call!468930 () (InoxSet Context!10706))

(assert (=> b!5916504 (= e!3622556 ((_ map or) call!468929 call!468930))))

(declare-fun bm!468920 () Bool)

(declare-fun call!468927 () (InoxSet Context!10706))

(assert (=> bm!468920 (= call!468927 call!468929)))

(declare-fun bm!468921 () Bool)

(declare-fun call!468925 () List!64206)

(declare-fun call!468926 () List!64206)

(assert (=> bm!468921 (= call!468925 call!468926)))

(declare-fun b!5916505 () Bool)

(declare-fun e!3622555 () (InoxSet Context!10706))

(declare-fun call!468928 () (InoxSet Context!10706))

(assert (=> b!5916505 (= e!3622555 call!468928)))

(declare-fun bm!468922 () Bool)

(declare-fun c!1051500 () Bool)

(declare-fun c!1051502 () Bool)

(declare-fun $colon$colon!1856 (List!64206 Regex!15969) List!64206)

(assert (=> bm!468922 (= call!468926 ($colon$colon!1856 (exprs!5853 (Context!10707 Nil!64082)) (ite (or c!1051502 c!1051500) (regTwo!32450 r!7292) r!7292)))))

(declare-fun b!5916506 () Bool)

(assert (=> b!5916506 (= e!3622555 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5916507 () Bool)

(declare-fun e!3622552 () (InoxSet Context!10706))

(assert (=> b!5916507 (= e!3622552 ((_ map or) call!468930 call!468927))))

(declare-fun b!5916508 () Bool)

(declare-fun c!1051501 () Bool)

(assert (=> b!5916508 (= c!1051501 ((_ is Star!15969) r!7292))))

(declare-fun e!3622553 () (InoxSet Context!10706))

(assert (=> b!5916508 (= e!3622553 e!3622555)))

(declare-fun d!1855594 () Bool)

(declare-fun c!1051504 () Bool)

(assert (=> d!1855594 (= c!1051504 (and ((_ is ElementMatch!15969) r!7292) (= (c!1051439 r!7292) (h!70532 s!2326))))))

(declare-fun e!3622554 () (InoxSet Context!10706))

(assert (=> d!1855594 (= (derivationStepZipperDown!1219 r!7292 (Context!10707 Nil!64082) (h!70532 s!2326)) e!3622554)))

(declare-fun c!1051503 () Bool)

(declare-fun bm!468923 () Bool)

(assert (=> bm!468923 (= call!468930 (derivationStepZipperDown!1219 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (h!70532 s!2326)))))

(declare-fun b!5916509 () Bool)

(assert (=> b!5916509 (= e!3622554 (store ((as const (Array Context!10706 Bool)) false) (Context!10707 Nil!64082) true))))

(declare-fun bm!468924 () Bool)

(assert (=> bm!468924 (= call!468929 (derivationStepZipperDown!1219 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (h!70532 s!2326)))))

(declare-fun b!5916510 () Bool)

(declare-fun e!3622551 () Bool)

(assert (=> b!5916510 (= c!1051502 e!3622551)))

(declare-fun res!2480688 () Bool)

(assert (=> b!5916510 (=> (not res!2480688) (not e!3622551))))

(assert (=> b!5916510 (= res!2480688 ((_ is Concat!24814) r!7292))))

(assert (=> b!5916510 (= e!3622556 e!3622552)))

(declare-fun b!5916511 () Bool)

(assert (=> b!5916511 (= e!3622553 call!468928)))

(declare-fun b!5916512 () Bool)

(assert (=> b!5916512 (= e!3622552 e!3622553)))

(assert (=> b!5916512 (= c!1051500 ((_ is Concat!24814) r!7292))))

(declare-fun b!5916513 () Bool)

(assert (=> b!5916513 (= e!3622554 e!3622556)))

(assert (=> b!5916513 (= c!1051503 ((_ is Union!15969) r!7292))))

(declare-fun bm!468925 () Bool)

(assert (=> bm!468925 (= call!468928 call!468927)))

(declare-fun b!5916514 () Bool)

(assert (=> b!5916514 (= e!3622551 (nullable!5964 (regOne!32450 r!7292)))))

(assert (= (and d!1855594 c!1051504) b!5916509))

(assert (= (and d!1855594 (not c!1051504)) b!5916513))

(assert (= (and b!5916513 c!1051503) b!5916504))

(assert (= (and b!5916513 (not c!1051503)) b!5916510))

(assert (= (and b!5916510 res!2480688) b!5916514))

(assert (= (and b!5916510 c!1051502) b!5916507))

(assert (= (and b!5916510 (not c!1051502)) b!5916512))

(assert (= (and b!5916512 c!1051500) b!5916511))

(assert (= (and b!5916512 (not c!1051500)) b!5916508))

(assert (= (and b!5916508 c!1051501) b!5916505))

(assert (= (and b!5916508 (not c!1051501)) b!5916506))

(assert (= (or b!5916511 b!5916505) bm!468921))

(assert (= (or b!5916511 b!5916505) bm!468925))

(assert (= (or b!5916507 bm!468921) bm!468922))

(assert (= (or b!5916507 bm!468925) bm!468920))

(assert (= (or b!5916504 b!5916507) bm!468923))

(assert (= (or b!5916504 bm!468920) bm!468924))

(declare-fun m!6814192 () Bool)

(assert (=> b!5916509 m!6814192))

(declare-fun m!6814194 () Bool)

(assert (=> bm!468923 m!6814194))

(declare-fun m!6814196 () Bool)

(assert (=> bm!468924 m!6814196))

(declare-fun m!6814198 () Bool)

(assert (=> b!5916514 m!6814198))

(declare-fun m!6814200 () Bool)

(assert (=> bm!468922 m!6814200))

(assert (=> b!5916345 d!1855594))

(declare-fun bs!1400631 () Bool)

(declare-fun b!5916600 () Bool)

(assert (= bs!1400631 (and b!5916600 b!5916342)))

(declare-fun lambda!322826 () Int)

(assert (=> bs!1400631 (not (= lambda!322826 lambda!322805))))

(assert (=> bs!1400631 (not (= lambda!322826 lambda!322806))))

(assert (=> b!5916600 true))

(assert (=> b!5916600 true))

(declare-fun bs!1400633 () Bool)

(declare-fun b!5916603 () Bool)

(assert (= bs!1400633 (and b!5916603 b!5916342)))

(declare-fun lambda!322827 () Int)

(assert (=> bs!1400633 (not (= lambda!322827 lambda!322805))))

(assert (=> bs!1400633 (= lambda!322827 lambda!322806)))

(declare-fun bs!1400634 () Bool)

(assert (= bs!1400634 (and b!5916603 b!5916600)))

(assert (=> bs!1400634 (not (= lambda!322827 lambda!322826))))

(assert (=> b!5916603 true))

(assert (=> b!5916603 true))

(declare-fun e!3622607 () Bool)

(declare-fun call!468941 () Bool)

(assert (=> b!5916600 (= e!3622607 call!468941)))

(declare-fun b!5916601 () Bool)

(declare-fun e!3622606 () Bool)

(declare-fun e!3622609 () Bool)

(assert (=> b!5916601 (= e!3622606 e!3622609)))

(declare-fun c!1051526 () Bool)

(assert (=> b!5916601 (= c!1051526 ((_ is Star!15969) r!7292))))

(declare-fun b!5916602 () Bool)

(declare-fun c!1051528 () Bool)

(assert (=> b!5916602 (= c!1051528 ((_ is Union!15969) r!7292))))

(declare-fun e!3622604 () Bool)

(assert (=> b!5916602 (= e!3622604 e!3622606)))

(assert (=> b!5916603 (= e!3622609 call!468941)))

(declare-fun bm!468935 () Bool)

(assert (=> bm!468935 (= call!468941 (Exists!3039 (ite c!1051526 lambda!322826 lambda!322827)))))

(declare-fun b!5916604 () Bool)

(declare-fun res!2480733 () Bool)

(assert (=> b!5916604 (=> res!2480733 e!3622607)))

(declare-fun call!468940 () Bool)

(assert (=> b!5916604 (= res!2480733 call!468940)))

(assert (=> b!5916604 (= e!3622609 e!3622607)))

(declare-fun d!1855596 () Bool)

(declare-fun c!1051527 () Bool)

(assert (=> d!1855596 (= c!1051527 ((_ is EmptyExpr!15969) r!7292))))

(declare-fun e!3622605 () Bool)

(assert (=> d!1855596 (= (matchRSpec!3070 r!7292 s!2326) e!3622605)))

(declare-fun b!5916605 () Bool)

(declare-fun e!3622608 () Bool)

(assert (=> b!5916605 (= e!3622608 (matchRSpec!3070 (regTwo!32451 r!7292) s!2326))))

(declare-fun b!5916606 () Bool)

(assert (=> b!5916606 (= e!3622604 (= s!2326 (Cons!64084 (c!1051439 r!7292) Nil!64084)))))

(declare-fun b!5916607 () Bool)

(declare-fun e!3622603 () Bool)

(assert (=> b!5916607 (= e!3622605 e!3622603)))

(declare-fun res!2480732 () Bool)

(assert (=> b!5916607 (= res!2480732 (not ((_ is EmptyLang!15969) r!7292)))))

(assert (=> b!5916607 (=> (not res!2480732) (not e!3622603))))

(declare-fun b!5916608 () Bool)

(declare-fun c!1051529 () Bool)

(assert (=> b!5916608 (= c!1051529 ((_ is ElementMatch!15969) r!7292))))

(assert (=> b!5916608 (= e!3622603 e!3622604)))

(declare-fun b!5916609 () Bool)

(assert (=> b!5916609 (= e!3622605 call!468940)))

(declare-fun b!5916610 () Bool)

(assert (=> b!5916610 (= e!3622606 e!3622608)))

(declare-fun res!2480734 () Bool)

(assert (=> b!5916610 (= res!2480734 (matchRSpec!3070 (regOne!32451 r!7292) s!2326))))

(assert (=> b!5916610 (=> res!2480734 e!3622608)))

(declare-fun bm!468936 () Bool)

(declare-fun isEmpty!35940 (List!64208) Bool)

(assert (=> bm!468936 (= call!468940 (isEmpty!35940 s!2326))))

(assert (= (and d!1855596 c!1051527) b!5916609))

(assert (= (and d!1855596 (not c!1051527)) b!5916607))

(assert (= (and b!5916607 res!2480732) b!5916608))

(assert (= (and b!5916608 c!1051529) b!5916606))

(assert (= (and b!5916608 (not c!1051529)) b!5916602))

(assert (= (and b!5916602 c!1051528) b!5916610))

(assert (= (and b!5916602 (not c!1051528)) b!5916601))

(assert (= (and b!5916610 (not res!2480734)) b!5916605))

(assert (= (and b!5916601 c!1051526) b!5916604))

(assert (= (and b!5916601 (not c!1051526)) b!5916603))

(assert (= (and b!5916604 (not res!2480733)) b!5916600))

(assert (= (or b!5916600 b!5916603) bm!468935))

(assert (= (or b!5916609 b!5916604) bm!468936))

(declare-fun m!6814224 () Bool)

(assert (=> bm!468935 m!6814224))

(declare-fun m!6814226 () Bool)

(assert (=> b!5916605 m!6814226))

(declare-fun m!6814228 () Bool)

(assert (=> b!5916610 m!6814228))

(declare-fun m!6814230 () Bool)

(assert (=> bm!468936 m!6814230))

(assert (=> b!5916339 d!1855596))

(declare-fun d!1855604 () Bool)

(declare-fun e!3622651 () Bool)

(assert (=> d!1855604 e!3622651))

(declare-fun c!1051542 () Bool)

(assert (=> d!1855604 (= c!1051542 ((_ is EmptyExpr!15969) r!7292))))

(declare-fun lt!2309716 () Bool)

(declare-fun e!3622650 () Bool)

(assert (=> d!1855604 (= lt!2309716 e!3622650)))

(declare-fun c!1051543 () Bool)

(assert (=> d!1855604 (= c!1051543 (isEmpty!35940 s!2326))))

(assert (=> d!1855604 (validRegex!7705 r!7292)))

(assert (=> d!1855604 (= (matchR!8152 r!7292 s!2326) lt!2309716)))

(declare-fun b!5916666 () Bool)

(assert (=> b!5916666 (= e!3622650 (nullable!5964 r!7292))))

(declare-fun b!5916667 () Bool)

(declare-fun call!468953 () Bool)

(assert (=> b!5916667 (= e!3622651 (= lt!2309716 call!468953))))

(declare-fun b!5916668 () Bool)

(declare-fun derivativeStep!4700 (Regex!15969 C!32208) Regex!15969)

(declare-fun head!12479 (List!64208) C!32208)

(declare-fun tail!11564 (List!64208) List!64208)

(assert (=> b!5916668 (= e!3622650 (matchR!8152 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (tail!11564 s!2326)))))

(declare-fun b!5916669 () Bool)

(declare-fun res!2480768 () Bool)

(declare-fun e!3622649 () Bool)

(assert (=> b!5916669 (=> (not res!2480768) (not e!3622649))))

(assert (=> b!5916669 (= res!2480768 (not call!468953))))

(declare-fun b!5916670 () Bool)

(declare-fun e!3622647 () Bool)

(declare-fun e!3622646 () Bool)

(assert (=> b!5916670 (= e!3622647 e!3622646)))

(declare-fun res!2480770 () Bool)

(assert (=> b!5916670 (=> res!2480770 e!3622646)))

(assert (=> b!5916670 (= res!2480770 call!468953)))

(declare-fun b!5916671 () Bool)

(declare-fun e!3622645 () Bool)

(assert (=> b!5916671 (= e!3622645 (not lt!2309716))))

(declare-fun b!5916672 () Bool)

(assert (=> b!5916672 (= e!3622649 (= (head!12479 s!2326) (c!1051439 r!7292)))))

(declare-fun b!5916673 () Bool)

(declare-fun e!3622648 () Bool)

(assert (=> b!5916673 (= e!3622648 e!3622647)))

(declare-fun res!2480771 () Bool)

(assert (=> b!5916673 (=> (not res!2480771) (not e!3622647))))

(assert (=> b!5916673 (= res!2480771 (not lt!2309716))))

(declare-fun b!5916674 () Bool)

(assert (=> b!5916674 (= e!3622646 (not (= (head!12479 s!2326) (c!1051439 r!7292))))))

(declare-fun b!5916675 () Bool)

(declare-fun res!2480769 () Bool)

(assert (=> b!5916675 (=> res!2480769 e!3622648)))

(assert (=> b!5916675 (= res!2480769 e!3622649)))

(declare-fun res!2480773 () Bool)

(assert (=> b!5916675 (=> (not res!2480773) (not e!3622649))))

(assert (=> b!5916675 (= res!2480773 lt!2309716)))

(declare-fun b!5916676 () Bool)

(declare-fun res!2480766 () Bool)

(assert (=> b!5916676 (=> res!2480766 e!3622648)))

(assert (=> b!5916676 (= res!2480766 (not ((_ is ElementMatch!15969) r!7292)))))

(assert (=> b!5916676 (= e!3622645 e!3622648)))

(declare-fun b!5916677 () Bool)

(assert (=> b!5916677 (= e!3622651 e!3622645)))

(declare-fun c!1051544 () Bool)

(assert (=> b!5916677 (= c!1051544 ((_ is EmptyLang!15969) r!7292))))

(declare-fun bm!468948 () Bool)

(assert (=> bm!468948 (= call!468953 (isEmpty!35940 s!2326))))

(declare-fun b!5916678 () Bool)

(declare-fun res!2480767 () Bool)

(assert (=> b!5916678 (=> res!2480767 e!3622646)))

(assert (=> b!5916678 (= res!2480767 (not (isEmpty!35940 (tail!11564 s!2326))))))

(declare-fun b!5916679 () Bool)

(declare-fun res!2480772 () Bool)

(assert (=> b!5916679 (=> (not res!2480772) (not e!3622649))))

(assert (=> b!5916679 (= res!2480772 (isEmpty!35940 (tail!11564 s!2326)))))

(assert (= (and d!1855604 c!1051543) b!5916666))

(assert (= (and d!1855604 (not c!1051543)) b!5916668))

(assert (= (and d!1855604 c!1051542) b!5916667))

(assert (= (and d!1855604 (not c!1051542)) b!5916677))

(assert (= (and b!5916677 c!1051544) b!5916671))

(assert (= (and b!5916677 (not c!1051544)) b!5916676))

(assert (= (and b!5916676 (not res!2480766)) b!5916675))

(assert (= (and b!5916675 res!2480773) b!5916669))

(assert (= (and b!5916669 res!2480768) b!5916679))

(assert (= (and b!5916679 res!2480772) b!5916672))

(assert (= (and b!5916675 (not res!2480769)) b!5916673))

(assert (= (and b!5916673 res!2480771) b!5916670))

(assert (= (and b!5916670 (not res!2480770)) b!5916678))

(assert (= (and b!5916678 (not res!2480767)) b!5916674))

(assert (= (or b!5916667 b!5916669 b!5916670) bm!468948))

(declare-fun m!6814244 () Bool)

(assert (=> b!5916666 m!6814244))

(declare-fun m!6814246 () Bool)

(assert (=> b!5916678 m!6814246))

(assert (=> b!5916678 m!6814246))

(declare-fun m!6814248 () Bool)

(assert (=> b!5916678 m!6814248))

(assert (=> b!5916679 m!6814246))

(assert (=> b!5916679 m!6814246))

(assert (=> b!5916679 m!6814248))

(declare-fun m!6814250 () Bool)

(assert (=> b!5916668 m!6814250))

(assert (=> b!5916668 m!6814250))

(declare-fun m!6814252 () Bool)

(assert (=> b!5916668 m!6814252))

(assert (=> b!5916668 m!6814246))

(assert (=> b!5916668 m!6814252))

(assert (=> b!5916668 m!6814246))

(declare-fun m!6814254 () Bool)

(assert (=> b!5916668 m!6814254))

(assert (=> d!1855604 m!6814230))

(assert (=> d!1855604 m!6814130))

(assert (=> b!5916674 m!6814250))

(assert (=> b!5916672 m!6814250))

(assert (=> bm!468948 m!6814230))

(assert (=> b!5916339 d!1855604))

(declare-fun d!1855618 () Bool)

(assert (=> d!1855618 (= (matchR!8152 r!7292 s!2326) (matchRSpec!3070 r!7292 s!2326))))

(declare-fun lt!2309721 () Unit!157209)

(declare-fun choose!44633 (Regex!15969 List!64208) Unit!157209)

(assert (=> d!1855618 (= lt!2309721 (choose!44633 r!7292 s!2326))))

(assert (=> d!1855618 (validRegex!7705 r!7292)))

(assert (=> d!1855618 (= (mainMatchTheorem!3070 r!7292 s!2326) lt!2309721)))

(declare-fun bs!1400639 () Bool)

(assert (= bs!1400639 d!1855618))

(assert (=> bs!1400639 m!6814102))

(assert (=> bs!1400639 m!6814100))

(declare-fun m!6814256 () Bool)

(assert (=> bs!1400639 m!6814256))

(assert (=> bs!1400639 m!6814130))

(assert (=> b!5916339 d!1855618))

(declare-fun d!1855620 () Bool)

(assert (=> d!1855620 (= (isEmpty!35937 (t!377596 zl!343)) ((_ is Nil!64083) (t!377596 zl!343)))))

(assert (=> b!5916327 d!1855620))

(declare-fun d!1855622 () Bool)

(declare-fun e!3622666 () Bool)

(assert (=> d!1855622 e!3622666))

(declare-fun res!2480780 () Bool)

(assert (=> d!1855622 (=> (not res!2480780) (not e!3622666))))

(declare-fun lt!2309724 () List!64207)

(declare-fun noDuplicate!1826 (List!64207) Bool)

(assert (=> d!1855622 (= res!2480780 (noDuplicate!1826 lt!2309724))))

(declare-fun choose!44634 ((InoxSet Context!10706)) List!64207)

(assert (=> d!1855622 (= lt!2309724 (choose!44634 z!1189))))

(assert (=> d!1855622 (= (toList!9753 z!1189) lt!2309724)))

(declare-fun b!5916702 () Bool)

(declare-fun content!11795 (List!64207) (InoxSet Context!10706))

(assert (=> b!5916702 (= e!3622666 (= (content!11795 lt!2309724) z!1189))))

(assert (= (and d!1855622 res!2480780) b!5916702))

(declare-fun m!6814258 () Bool)

(assert (=> d!1855622 m!6814258))

(declare-fun m!6814260 () Bool)

(assert (=> d!1855622 m!6814260))

(declare-fun m!6814262 () Bool)

(assert (=> b!5916702 m!6814262))

(assert (=> b!5916346 d!1855622))

(declare-fun bs!1400642 () Bool)

(declare-fun d!1855624 () Bool)

(assert (= bs!1400642 (and d!1855624 d!1855580)))

(declare-fun lambda!322837 () Int)

(assert (=> bs!1400642 (= lambda!322837 lambda!322809)))

(declare-fun bs!1400643 () Bool)

(assert (= bs!1400643 (and d!1855624 d!1855584)))

(assert (=> bs!1400643 (= lambda!322837 lambda!322812)))

(declare-fun bs!1400644 () Bool)

(assert (= bs!1400644 (and d!1855624 d!1855588)))

(assert (=> bs!1400644 (= lambda!322837 lambda!322815)))

(declare-fun b!5916733 () Bool)

(declare-fun e!3622689 () Regex!15969)

(assert (=> b!5916733 (= e!3622689 (h!70530 (exprs!5853 (h!70531 zl!343))))))

(declare-fun b!5916734 () Bool)

(declare-fun e!3622686 () Bool)

(declare-fun lt!2309728 () Regex!15969)

(declare-fun isConcat!920 (Regex!15969) Bool)

(assert (=> b!5916734 (= e!3622686 (isConcat!920 lt!2309728))))

(declare-fun b!5916735 () Bool)

(declare-fun e!3622687 () Bool)

(assert (=> b!5916735 (= e!3622687 e!3622686)))

(declare-fun c!1051565 () Bool)

(assert (=> b!5916735 (= c!1051565 (isEmpty!35938 (tail!11562 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5916736 () Bool)

(declare-fun isEmptyExpr!1397 (Regex!15969) Bool)

(assert (=> b!5916736 (= e!3622687 (isEmptyExpr!1397 lt!2309728))))

(declare-fun e!3622685 () Bool)

(assert (=> d!1855624 e!3622685))

(declare-fun res!2480788 () Bool)

(assert (=> d!1855624 (=> (not res!2480788) (not e!3622685))))

(assert (=> d!1855624 (= res!2480788 (validRegex!7705 lt!2309728))))

(assert (=> d!1855624 (= lt!2309728 e!3622689)))

(declare-fun c!1051567 () Bool)

(declare-fun e!3622688 () Bool)

(assert (=> d!1855624 (= c!1051567 e!3622688)))

(declare-fun res!2480787 () Bool)

(assert (=> d!1855624 (=> (not res!2480787) (not e!3622688))))

(assert (=> d!1855624 (= res!2480787 ((_ is Cons!64082) (exprs!5853 (h!70531 zl!343))))))

(assert (=> d!1855624 (forall!15051 (exprs!5853 (h!70531 zl!343)) lambda!322837)))

(assert (=> d!1855624 (= (generalisedConcat!1566 (exprs!5853 (h!70531 zl!343))) lt!2309728)))

(declare-fun b!5916737 () Bool)

(declare-fun e!3622690 () Regex!15969)

(assert (=> b!5916737 (= e!3622689 e!3622690)))

(declare-fun c!1051566 () Bool)

(assert (=> b!5916737 (= c!1051566 ((_ is Cons!64082) (exprs!5853 (h!70531 zl!343))))))

(declare-fun b!5916738 () Bool)

(assert (=> b!5916738 (= e!3622690 EmptyExpr!15969)))

(declare-fun b!5916739 () Bool)

(assert (=> b!5916739 (= e!3622686 (= lt!2309728 (head!12477 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5916740 () Bool)

(assert (=> b!5916740 (= e!3622688 (isEmpty!35938 (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5916741 () Bool)

(assert (=> b!5916741 (= e!3622690 (Concat!24814 (h!70530 (exprs!5853 (h!70531 zl!343))) (generalisedConcat!1566 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5916742 () Bool)

(assert (=> b!5916742 (= e!3622685 e!3622687)))

(declare-fun c!1051568 () Bool)

(assert (=> b!5916742 (= c!1051568 (isEmpty!35938 (exprs!5853 (h!70531 zl!343))))))

(assert (= (and d!1855624 res!2480787) b!5916740))

(assert (= (and d!1855624 c!1051567) b!5916733))

(assert (= (and d!1855624 (not c!1051567)) b!5916737))

(assert (= (and b!5916737 c!1051566) b!5916741))

(assert (= (and b!5916737 (not c!1051566)) b!5916738))

(assert (= (and d!1855624 res!2480788) b!5916742))

(assert (= (and b!5916742 c!1051568) b!5916736))

(assert (= (and b!5916742 (not c!1051568)) b!5916735))

(assert (= (and b!5916735 c!1051565) b!5916739))

(assert (= (and b!5916735 (not c!1051565)) b!5916734))

(assert (=> b!5916740 m!6814142))

(declare-fun m!6814282 () Bool)

(assert (=> d!1855624 m!6814282))

(declare-fun m!6814284 () Bool)

(assert (=> d!1855624 m!6814284))

(declare-fun m!6814286 () Bool)

(assert (=> b!5916742 m!6814286))

(declare-fun m!6814288 () Bool)

(assert (=> b!5916741 m!6814288))

(declare-fun m!6814290 () Bool)

(assert (=> b!5916736 m!6814290))

(declare-fun m!6814292 () Bool)

(assert (=> b!5916739 m!6814292))

(declare-fun m!6814294 () Bool)

(assert (=> b!5916734 m!6814294))

(declare-fun m!6814296 () Bool)

(assert (=> b!5916735 m!6814296))

(assert (=> b!5916735 m!6814296))

(declare-fun m!6814298 () Bool)

(assert (=> b!5916735 m!6814298))

(assert (=> b!5916331 d!1855624))

(declare-fun d!1855628 () Bool)

(declare-fun lt!2309737 () Regex!15969)

(assert (=> d!1855628 (validRegex!7705 lt!2309737)))

(assert (=> d!1855628 (= lt!2309737 (generalisedUnion!1813 (unfocusZipperList!1390 zl!343)))))

(assert (=> d!1855628 (= (unfocusZipper!1711 zl!343) lt!2309737)))

(declare-fun bs!1400645 () Bool)

(assert (= bs!1400645 d!1855628))

(declare-fun m!6814300 () Bool)

(assert (=> bs!1400645 m!6814300))

(assert (=> bs!1400645 m!6814110))

(assert (=> bs!1400645 m!6814110))

(assert (=> bs!1400645 m!6814112))

(assert (=> b!5916343 d!1855628))

(declare-fun bs!1400646 () Bool)

(declare-fun d!1855630 () Bool)

(assert (= bs!1400646 (and d!1855630 d!1855580)))

(declare-fun lambda!322838 () Int)

(assert (=> bs!1400646 (= lambda!322838 lambda!322809)))

(declare-fun bs!1400647 () Bool)

(assert (= bs!1400647 (and d!1855630 d!1855584)))

(assert (=> bs!1400647 (= lambda!322838 lambda!322812)))

(declare-fun bs!1400648 () Bool)

(assert (= bs!1400648 (and d!1855630 d!1855588)))

(assert (=> bs!1400648 (= lambda!322838 lambda!322815)))

(declare-fun bs!1400649 () Bool)

(assert (= bs!1400649 (and d!1855630 d!1855624)))

(assert (=> bs!1400649 (= lambda!322838 lambda!322837)))

(assert (=> d!1855630 (= (inv!83169 (h!70531 zl!343)) (forall!15051 (exprs!5853 (h!70531 zl!343)) lambda!322838))))

(declare-fun bs!1400650 () Bool)

(assert (= bs!1400650 d!1855630))

(declare-fun m!6814302 () Bool)

(assert (=> bs!1400650 m!6814302))

(assert (=> b!5916344 d!1855630))

(declare-fun d!1855632 () Bool)

(assert (=> d!1855632 (= (isEmpty!35938 (t!377595 (exprs!5853 (h!70531 zl!343)))) ((_ is Nil!64082) (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> b!5916334 d!1855632))

(declare-fun b!5916792 () Bool)

(declare-fun e!3622719 () Bool)

(declare-fun lt!2309750 () Option!15860)

(assert (=> b!5916792 (= e!3622719 (not (isDefined!12563 lt!2309750)))))

(declare-fun b!5916793 () Bool)

(declare-fun e!3622720 () Option!15860)

(assert (=> b!5916793 (= e!3622720 None!15859)))

(declare-fun d!1855634 () Bool)

(assert (=> d!1855634 e!3622719))

(declare-fun res!2480822 () Bool)

(assert (=> d!1855634 (=> res!2480822 e!3622719)))

(declare-fun e!3622721 () Bool)

(assert (=> d!1855634 (= res!2480822 e!3622721)))

(declare-fun res!2480819 () Bool)

(assert (=> d!1855634 (=> (not res!2480819) (not e!3622721))))

(assert (=> d!1855634 (= res!2480819 (isDefined!12563 lt!2309750))))

(declare-fun e!3622722 () Option!15860)

(assert (=> d!1855634 (= lt!2309750 e!3622722)))

(declare-fun c!1051579 () Bool)

(declare-fun e!3622718 () Bool)

(assert (=> d!1855634 (= c!1051579 e!3622718)))

(declare-fun res!2480821 () Bool)

(assert (=> d!1855634 (=> (not res!2480821) (not e!3622718))))

(assert (=> d!1855634 (= res!2480821 (matchR!8152 (regOne!32450 r!7292) Nil!64084))))

(assert (=> d!1855634 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1855634 (= (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) Nil!64084 s!2326 s!2326) lt!2309750)))

(declare-fun b!5916794 () Bool)

(assert (=> b!5916794 (= e!3622722 (Some!15859 (tuple2!65897 Nil!64084 s!2326)))))

(declare-fun b!5916795 () Bool)

(assert (=> b!5916795 (= e!3622722 e!3622720)))

(declare-fun c!1051580 () Bool)

(assert (=> b!5916795 (= c!1051580 ((_ is Nil!64084) s!2326))))

(declare-fun b!5916796 () Bool)

(declare-fun res!2480820 () Bool)

(assert (=> b!5916796 (=> (not res!2480820) (not e!3622721))))

(declare-fun get!22066 (Option!15860) tuple2!65896)

(assert (=> b!5916796 (= res!2480820 (matchR!8152 (regOne!32450 r!7292) (_1!36251 (get!22066 lt!2309750))))))

(declare-fun b!5916797 () Bool)

(declare-fun lt!2309752 () Unit!157209)

(declare-fun lt!2309751 () Unit!157209)

(assert (=> b!5916797 (= lt!2309752 lt!2309751)))

(declare-fun ++!14066 (List!64208 List!64208) List!64208)

(assert (=> b!5916797 (= (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (t!377597 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2161 (List!64208 C!32208 List!64208 List!64208) Unit!157209)

(assert (=> b!5916797 (= lt!2309751 (lemmaMoveElementToOtherListKeepsConcatEq!2161 Nil!64084 (h!70532 s!2326) (t!377597 s!2326) s!2326))))

(assert (=> b!5916797 (= e!3622720 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (t!377597 s!2326) s!2326))))

(declare-fun b!5916798 () Bool)

(declare-fun res!2480818 () Bool)

(assert (=> b!5916798 (=> (not res!2480818) (not e!3622721))))

(assert (=> b!5916798 (= res!2480818 (matchR!8152 (regTwo!32450 r!7292) (_2!36251 (get!22066 lt!2309750))))))

(declare-fun b!5916799 () Bool)

(assert (=> b!5916799 (= e!3622718 (matchR!8152 (regTwo!32450 r!7292) s!2326))))

(declare-fun b!5916800 () Bool)

(assert (=> b!5916800 (= e!3622721 (= (++!14066 (_1!36251 (get!22066 lt!2309750)) (_2!36251 (get!22066 lt!2309750))) s!2326))))

(assert (= (and d!1855634 res!2480821) b!5916799))

(assert (= (and d!1855634 c!1051579) b!5916794))

(assert (= (and d!1855634 (not c!1051579)) b!5916795))

(assert (= (and b!5916795 c!1051580) b!5916793))

(assert (= (and b!5916795 (not c!1051580)) b!5916797))

(assert (= (and d!1855634 res!2480819) b!5916796))

(assert (= (and b!5916796 res!2480820) b!5916798))

(assert (= (and b!5916798 res!2480818) b!5916800))

(assert (= (and d!1855634 (not res!2480822)) b!5916792))

(declare-fun m!6814336 () Bool)

(assert (=> b!5916792 m!6814336))

(assert (=> d!1855634 m!6814336))

(declare-fun m!6814338 () Bool)

(assert (=> d!1855634 m!6814338))

(declare-fun m!6814340 () Bool)

(assert (=> d!1855634 m!6814340))

(declare-fun m!6814342 () Bool)

(assert (=> b!5916796 m!6814342))

(declare-fun m!6814344 () Bool)

(assert (=> b!5916796 m!6814344))

(declare-fun m!6814346 () Bool)

(assert (=> b!5916797 m!6814346))

(assert (=> b!5916797 m!6814346))

(declare-fun m!6814348 () Bool)

(assert (=> b!5916797 m!6814348))

(declare-fun m!6814350 () Bool)

(assert (=> b!5916797 m!6814350))

(assert (=> b!5916797 m!6814346))

(declare-fun m!6814352 () Bool)

(assert (=> b!5916797 m!6814352))

(assert (=> b!5916798 m!6814342))

(declare-fun m!6814354 () Bool)

(assert (=> b!5916798 m!6814354))

(assert (=> b!5916800 m!6814342))

(declare-fun m!6814356 () Bool)

(assert (=> b!5916800 m!6814356))

(declare-fun m!6814358 () Bool)

(assert (=> b!5916799 m!6814358))

(assert (=> b!5916342 d!1855634))

(declare-fun d!1855644 () Bool)

(declare-fun choose!44639 (Int) Bool)

(assert (=> d!1855644 (= (Exists!3039 lambda!322805) (choose!44639 lambda!322805))))

(declare-fun bs!1400657 () Bool)

(assert (= bs!1400657 d!1855644))

(declare-fun m!6814360 () Bool)

(assert (=> bs!1400657 m!6814360))

(assert (=> b!5916342 d!1855644))

(declare-fun d!1855646 () Bool)

(assert (=> d!1855646 (= (Exists!3039 lambda!322806) (choose!44639 lambda!322806))))

(declare-fun bs!1400658 () Bool)

(assert (= bs!1400658 d!1855646))

(declare-fun m!6814362 () Bool)

(assert (=> bs!1400658 m!6814362))

(assert (=> b!5916342 d!1855646))

(declare-fun bs!1400664 () Bool)

(declare-fun d!1855648 () Bool)

(assert (= bs!1400664 (and d!1855648 b!5916342)))

(declare-fun lambda!322850 () Int)

(assert (=> bs!1400664 (= lambda!322850 lambda!322805)))

(assert (=> bs!1400664 (not (= lambda!322850 lambda!322806))))

(declare-fun bs!1400665 () Bool)

(assert (= bs!1400665 (and d!1855648 b!5916600)))

(assert (=> bs!1400665 (not (= lambda!322850 lambda!322826))))

(declare-fun bs!1400666 () Bool)

(assert (= bs!1400666 (and d!1855648 b!5916603)))

(assert (=> bs!1400666 (not (= lambda!322850 lambda!322827))))

(assert (=> d!1855648 true))

(assert (=> d!1855648 true))

(assert (=> d!1855648 true))

(assert (=> d!1855648 (= (isDefined!12563 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) Nil!64084 s!2326 s!2326)) (Exists!3039 lambda!322850))))

(declare-fun lt!2309758 () Unit!157209)

(declare-fun choose!44640 (Regex!15969 Regex!15969 List!64208) Unit!157209)

(assert (=> d!1855648 (= lt!2309758 (choose!44640 (regOne!32450 r!7292) (regTwo!32450 r!7292) s!2326))))

(assert (=> d!1855648 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1855648 (= (lemmaFindConcatSeparationEquivalentToExists!2038 (regOne!32450 r!7292) (regTwo!32450 r!7292) s!2326) lt!2309758)))

(declare-fun bs!1400667 () Bool)

(assert (= bs!1400667 d!1855648))

(assert (=> bs!1400667 m!6814122))

(assert (=> bs!1400667 m!6814122))

(assert (=> bs!1400667 m!6814124))

(assert (=> bs!1400667 m!6814340))

(declare-fun m!6814370 () Bool)

(assert (=> bs!1400667 m!6814370))

(declare-fun m!6814372 () Bool)

(assert (=> bs!1400667 m!6814372))

(assert (=> b!5916342 d!1855648))

(declare-fun bs!1400669 () Bool)

(declare-fun d!1855652 () Bool)

(assert (= bs!1400669 (and d!1855652 b!5916342)))

(declare-fun lambda!322857 () Int)

(assert (=> bs!1400669 (not (= lambda!322857 lambda!322806))))

(declare-fun bs!1400670 () Bool)

(assert (= bs!1400670 (and d!1855652 b!5916600)))

(assert (=> bs!1400670 (not (= lambda!322857 lambda!322826))))

(assert (=> bs!1400669 (= lambda!322857 lambda!322805)))

(declare-fun bs!1400671 () Bool)

(assert (= bs!1400671 (and d!1855652 d!1855648)))

(assert (=> bs!1400671 (= lambda!322857 lambda!322850)))

(declare-fun bs!1400672 () Bool)

(assert (= bs!1400672 (and d!1855652 b!5916603)))

(assert (=> bs!1400672 (not (= lambda!322857 lambda!322827))))

(assert (=> d!1855652 true))

(assert (=> d!1855652 true))

(assert (=> d!1855652 true))

(declare-fun bs!1400676 () Bool)

(assert (= bs!1400676 d!1855652))

(declare-fun lambda!322859 () Int)

(assert (=> bs!1400676 (not (= lambda!322859 lambda!322857))))

(assert (=> bs!1400669 (= lambda!322859 lambda!322806)))

(assert (=> bs!1400670 (not (= lambda!322859 lambda!322826))))

(assert (=> bs!1400669 (not (= lambda!322859 lambda!322805))))

(assert (=> bs!1400671 (not (= lambda!322859 lambda!322850))))

(assert (=> bs!1400672 (= lambda!322859 lambda!322827)))

(assert (=> d!1855652 true))

(assert (=> d!1855652 true))

(assert (=> d!1855652 true))

(assert (=> d!1855652 (= (Exists!3039 lambda!322857) (Exists!3039 lambda!322859))))

(declare-fun lt!2309766 () Unit!157209)

(declare-fun choose!44641 (Regex!15969 Regex!15969 List!64208) Unit!157209)

(assert (=> d!1855652 (= lt!2309766 (choose!44641 (regOne!32450 r!7292) (regTwo!32450 r!7292) s!2326))))

(assert (=> d!1855652 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1855652 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1576 (regOne!32450 r!7292) (regTwo!32450 r!7292) s!2326) lt!2309766)))

(declare-fun m!6814394 () Bool)

(assert (=> bs!1400676 m!6814394))

(declare-fun m!6814398 () Bool)

(assert (=> bs!1400676 m!6814398))

(declare-fun m!6814404 () Bool)

(assert (=> bs!1400676 m!6814404))

(assert (=> bs!1400676 m!6814340))

(assert (=> b!5916342 d!1855652))

(declare-fun d!1855660 () Bool)

(declare-fun isEmpty!35942 (Option!15860) Bool)

(assert (=> d!1855660 (= (isDefined!12563 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) Nil!64084 s!2326 s!2326)) (not (isEmpty!35942 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) Nil!64084 s!2326 s!2326))))))

(declare-fun bs!1400677 () Bool)

(assert (= bs!1400677 d!1855660))

(assert (=> bs!1400677 m!6814122))

(declare-fun m!6814408 () Bool)

(assert (=> bs!1400677 m!6814408))

(assert (=> b!5916342 d!1855660))

(declare-fun b!5916903 () Bool)

(declare-fun e!3622786 () Bool)

(declare-fun e!3622781 () Bool)

(assert (=> b!5916903 (= e!3622786 e!3622781)))

(declare-fun c!1051601 () Bool)

(assert (=> b!5916903 (= c!1051601 ((_ is Union!15969) r!7292))))

(declare-fun b!5916904 () Bool)

(declare-fun e!3622785 () Bool)

(declare-fun call!468961 () Bool)

(assert (=> b!5916904 (= e!3622785 call!468961)))

(declare-fun d!1855662 () Bool)

(declare-fun res!2480864 () Bool)

(declare-fun e!3622787 () Bool)

(assert (=> d!1855662 (=> res!2480864 e!3622787)))

(assert (=> d!1855662 (= res!2480864 ((_ is ElementMatch!15969) r!7292))))

(assert (=> d!1855662 (= (validRegex!7705 r!7292) e!3622787)))

(declare-fun b!5916905 () Bool)

(declare-fun e!3622782 () Bool)

(declare-fun call!468962 () Bool)

(assert (=> b!5916905 (= e!3622782 call!468962)))

(declare-fun b!5916906 () Bool)

(declare-fun res!2480863 () Bool)

(declare-fun e!3622783 () Bool)

(assert (=> b!5916906 (=> (not res!2480863) (not e!3622783))))

(declare-fun call!468960 () Bool)

(assert (=> b!5916906 (= res!2480863 call!468960)))

(assert (=> b!5916906 (= e!3622781 e!3622783)))

(declare-fun b!5916907 () Bool)

(declare-fun e!3622784 () Bool)

(assert (=> b!5916907 (= e!3622784 e!3622785)))

(declare-fun res!2480865 () Bool)

(assert (=> b!5916907 (=> (not res!2480865) (not e!3622785))))

(assert (=> b!5916907 (= res!2480865 call!468960)))

(declare-fun b!5916908 () Bool)

(assert (=> b!5916908 (= e!3622786 e!3622782)))

(declare-fun res!2480866 () Bool)

(assert (=> b!5916908 (= res!2480866 (not (nullable!5964 (reg!16298 r!7292))))))

(assert (=> b!5916908 (=> (not res!2480866) (not e!3622782))))

(declare-fun bm!468955 () Bool)

(assert (=> bm!468955 (= call!468960 (validRegex!7705 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))

(declare-fun b!5916909 () Bool)

(declare-fun res!2480862 () Bool)

(assert (=> b!5916909 (=> res!2480862 e!3622784)))

(assert (=> b!5916909 (= res!2480862 (not ((_ is Concat!24814) r!7292)))))

(assert (=> b!5916909 (= e!3622781 e!3622784)))

(declare-fun b!5916910 () Bool)

(assert (=> b!5916910 (= e!3622787 e!3622786)))

(declare-fun c!1051600 () Bool)

(assert (=> b!5916910 (= c!1051600 ((_ is Star!15969) r!7292))))

(declare-fun b!5916911 () Bool)

(assert (=> b!5916911 (= e!3622783 call!468961)))

(declare-fun bm!468956 () Bool)

(assert (=> bm!468956 (= call!468961 call!468962)))

(declare-fun bm!468957 () Bool)

(assert (=> bm!468957 (= call!468962 (validRegex!7705 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))

(assert (= (and d!1855662 (not res!2480864)) b!5916910))

(assert (= (and b!5916910 c!1051600) b!5916908))

(assert (= (and b!5916910 (not c!1051600)) b!5916903))

(assert (= (and b!5916908 res!2480866) b!5916905))

(assert (= (and b!5916903 c!1051601) b!5916906))

(assert (= (and b!5916903 (not c!1051601)) b!5916909))

(assert (= (and b!5916906 res!2480863) b!5916911))

(assert (= (and b!5916909 (not res!2480862)) b!5916907))

(assert (= (and b!5916907 res!2480865) b!5916904))

(assert (= (or b!5916911 b!5916904) bm!468956))

(assert (= (or b!5916906 b!5916907) bm!468955))

(assert (= (or b!5916905 bm!468956) bm!468957))

(declare-fun m!6814414 () Bool)

(assert (=> b!5916908 m!6814414))

(declare-fun m!6814416 () Bool)

(assert (=> bm!468955 m!6814416))

(declare-fun m!6814418 () Bool)

(assert (=> bm!468957 m!6814418))

(assert (=> start!601864 d!1855662))

(declare-fun condSetEmpty!40166 () Bool)

(assert (=> setNonEmpty!40160 (= condSetEmpty!40166 (= setRest!40160 ((as const (Array Context!10706 Bool)) false)))))

(declare-fun setRes!40166 () Bool)

(assert (=> setNonEmpty!40160 (= tp!1643862 setRes!40166)))

(declare-fun setIsEmpty!40166 () Bool)

(assert (=> setIsEmpty!40166 setRes!40166))

(declare-fun e!3622799 () Bool)

(declare-fun setNonEmpty!40166 () Bool)

(declare-fun setElem!40166 () Context!10706)

(declare-fun tp!1643910 () Bool)

(assert (=> setNonEmpty!40166 (= setRes!40166 (and tp!1643910 (inv!83169 setElem!40166) e!3622799))))

(declare-fun setRest!40166 () (InoxSet Context!10706))

(assert (=> setNonEmpty!40166 (= setRest!40160 ((_ map or) (store ((as const (Array Context!10706 Bool)) false) setElem!40166 true) setRest!40166))))

(declare-fun b!5916929 () Bool)

(declare-fun tp!1643909 () Bool)

(assert (=> b!5916929 (= e!3622799 tp!1643909)))

(assert (= (and setNonEmpty!40160 condSetEmpty!40166) setIsEmpty!40166))

(assert (= (and setNonEmpty!40160 (not condSetEmpty!40166)) setNonEmpty!40166))

(assert (= setNonEmpty!40166 b!5916929))

(declare-fun m!6814424 () Bool)

(assert (=> setNonEmpty!40166 m!6814424))

(declare-fun b!5916956 () Bool)

(declare-fun e!3622806 () Bool)

(assert (=> b!5916956 (= e!3622806 tp_is_empty!41191)))

(declare-fun b!5916957 () Bool)

(declare-fun tp!1643942 () Bool)

(declare-fun tp!1643944 () Bool)

(assert (=> b!5916957 (= e!3622806 (and tp!1643942 tp!1643944))))

(declare-fun b!5916959 () Bool)

(declare-fun tp!1643943 () Bool)

(declare-fun tp!1643945 () Bool)

(assert (=> b!5916959 (= e!3622806 (and tp!1643943 tp!1643945))))

(assert (=> b!5916337 (= tp!1643857 e!3622806)))

(declare-fun b!5916958 () Bool)

(declare-fun tp!1643941 () Bool)

(assert (=> b!5916958 (= e!3622806 tp!1643941)))

(assert (= (and b!5916337 ((_ is ElementMatch!15969) (regOne!32450 r!7292))) b!5916956))

(assert (= (and b!5916337 ((_ is Concat!24814) (regOne!32450 r!7292))) b!5916957))

(assert (= (and b!5916337 ((_ is Star!15969) (regOne!32450 r!7292))) b!5916958))

(assert (= (and b!5916337 ((_ is Union!15969) (regOne!32450 r!7292))) b!5916959))

(declare-fun b!5916960 () Bool)

(declare-fun e!3622807 () Bool)

(assert (=> b!5916960 (= e!3622807 tp_is_empty!41191)))

(declare-fun b!5916961 () Bool)

(declare-fun tp!1643947 () Bool)

(declare-fun tp!1643949 () Bool)

(assert (=> b!5916961 (= e!3622807 (and tp!1643947 tp!1643949))))

(declare-fun b!5916963 () Bool)

(declare-fun tp!1643948 () Bool)

(declare-fun tp!1643950 () Bool)

(assert (=> b!5916963 (= e!3622807 (and tp!1643948 tp!1643950))))

(assert (=> b!5916337 (= tp!1643858 e!3622807)))

(declare-fun b!5916962 () Bool)

(declare-fun tp!1643946 () Bool)

(assert (=> b!5916962 (= e!3622807 tp!1643946)))

(assert (= (and b!5916337 ((_ is ElementMatch!15969) (regTwo!32450 r!7292))) b!5916960))

(assert (= (and b!5916337 ((_ is Concat!24814) (regTwo!32450 r!7292))) b!5916961))

(assert (= (and b!5916337 ((_ is Star!15969) (regTwo!32450 r!7292))) b!5916962))

(assert (= (and b!5916337 ((_ is Union!15969) (regTwo!32450 r!7292))) b!5916963))

(declare-fun b!5916968 () Bool)

(declare-fun e!3622810 () Bool)

(declare-fun tp!1643955 () Bool)

(declare-fun tp!1643956 () Bool)

(assert (=> b!5916968 (= e!3622810 (and tp!1643955 tp!1643956))))

(assert (=> b!5916335 (= tp!1643859 e!3622810)))

(assert (= (and b!5916335 ((_ is Cons!64082) (exprs!5853 setElem!40160))) b!5916968))

(declare-fun b!5916973 () Bool)

(declare-fun e!3622813 () Bool)

(declare-fun tp!1643959 () Bool)

(assert (=> b!5916973 (= e!3622813 (and tp_is_empty!41191 tp!1643959))))

(assert (=> b!5916340 (= tp!1643863 e!3622813)))

(assert (= (and b!5916340 ((_ is Cons!64084) (t!377597 s!2326))) b!5916973))

(declare-fun b!5916974 () Bool)

(declare-fun e!3622814 () Bool)

(assert (=> b!5916974 (= e!3622814 tp_is_empty!41191)))

(declare-fun b!5916975 () Bool)

(declare-fun tp!1643961 () Bool)

(declare-fun tp!1643963 () Bool)

(assert (=> b!5916975 (= e!3622814 (and tp!1643961 tp!1643963))))

(declare-fun b!5916977 () Bool)

(declare-fun tp!1643962 () Bool)

(declare-fun tp!1643964 () Bool)

(assert (=> b!5916977 (= e!3622814 (and tp!1643962 tp!1643964))))

(assert (=> b!5916330 (= tp!1643864 e!3622814)))

(declare-fun b!5916976 () Bool)

(declare-fun tp!1643960 () Bool)

(assert (=> b!5916976 (= e!3622814 tp!1643960)))

(assert (= (and b!5916330 ((_ is ElementMatch!15969) (regOne!32451 r!7292))) b!5916974))

(assert (= (and b!5916330 ((_ is Concat!24814) (regOne!32451 r!7292))) b!5916975))

(assert (= (and b!5916330 ((_ is Star!15969) (regOne!32451 r!7292))) b!5916976))

(assert (= (and b!5916330 ((_ is Union!15969) (regOne!32451 r!7292))) b!5916977))

(declare-fun b!5916978 () Bool)

(declare-fun e!3622815 () Bool)

(assert (=> b!5916978 (= e!3622815 tp_is_empty!41191)))

(declare-fun b!5916979 () Bool)

(declare-fun tp!1643966 () Bool)

(declare-fun tp!1643968 () Bool)

(assert (=> b!5916979 (= e!3622815 (and tp!1643966 tp!1643968))))

(declare-fun b!5916981 () Bool)

(declare-fun tp!1643967 () Bool)

(declare-fun tp!1643969 () Bool)

(assert (=> b!5916981 (= e!3622815 (and tp!1643967 tp!1643969))))

(assert (=> b!5916330 (= tp!1643866 e!3622815)))

(declare-fun b!5916980 () Bool)

(declare-fun tp!1643965 () Bool)

(assert (=> b!5916980 (= e!3622815 tp!1643965)))

(assert (= (and b!5916330 ((_ is ElementMatch!15969) (regTwo!32451 r!7292))) b!5916978))

(assert (= (and b!5916330 ((_ is Concat!24814) (regTwo!32451 r!7292))) b!5916979))

(assert (= (and b!5916330 ((_ is Star!15969) (regTwo!32451 r!7292))) b!5916980))

(assert (= (and b!5916330 ((_ is Union!15969) (regTwo!32451 r!7292))) b!5916981))

(declare-fun b!5916982 () Bool)

(declare-fun e!3622816 () Bool)

(assert (=> b!5916982 (= e!3622816 tp_is_empty!41191)))

(declare-fun b!5916983 () Bool)

(declare-fun tp!1643971 () Bool)

(declare-fun tp!1643973 () Bool)

(assert (=> b!5916983 (= e!3622816 (and tp!1643971 tp!1643973))))

(declare-fun b!5916985 () Bool)

(declare-fun tp!1643972 () Bool)

(declare-fun tp!1643974 () Bool)

(assert (=> b!5916985 (= e!3622816 (and tp!1643972 tp!1643974))))

(assert (=> b!5916328 (= tp!1643860 e!3622816)))

(declare-fun b!5916984 () Bool)

(declare-fun tp!1643970 () Bool)

(assert (=> b!5916984 (= e!3622816 tp!1643970)))

(assert (= (and b!5916328 ((_ is ElementMatch!15969) (reg!16298 r!7292))) b!5916982))

(assert (= (and b!5916328 ((_ is Concat!24814) (reg!16298 r!7292))) b!5916983))

(assert (= (and b!5916328 ((_ is Star!15969) (reg!16298 r!7292))) b!5916984))

(assert (= (and b!5916328 ((_ is Union!15969) (reg!16298 r!7292))) b!5916985))

(declare-fun b!5916993 () Bool)

(declare-fun e!3622822 () Bool)

(declare-fun tp!1643979 () Bool)

(assert (=> b!5916993 (= e!3622822 tp!1643979)))

(declare-fun tp!1643980 () Bool)

(declare-fun e!3622821 () Bool)

(declare-fun b!5916992 () Bool)

(assert (=> b!5916992 (= e!3622821 (and (inv!83169 (h!70531 (t!377596 zl!343))) e!3622822 tp!1643980))))

(assert (=> b!5916344 (= tp!1643865 e!3622821)))

(assert (= b!5916992 b!5916993))

(assert (= (and b!5916344 ((_ is Cons!64083) (t!377596 zl!343))) b!5916992))

(declare-fun m!6814426 () Bool)

(assert (=> b!5916992 m!6814426))

(declare-fun b!5916994 () Bool)

(declare-fun e!3622823 () Bool)

(declare-fun tp!1643981 () Bool)

(declare-fun tp!1643982 () Bool)

(assert (=> b!5916994 (= e!3622823 (and tp!1643981 tp!1643982))))

(assert (=> b!5916333 (= tp!1643861 e!3622823)))

(assert (= (and b!5916333 ((_ is Cons!64082) (exprs!5853 (h!70531 zl!343)))) b!5916994))

(check-sat (not b!5916740) (not setNonEmpty!40166) (not d!1855624) (not d!1855660) (not bm!468922) (not b!5916679) (not b!5916800) (not b!5916741) (not b!5916968) (not bm!468948) (not d!1855652) (not bm!468924) (not b!5916610) (not b!5916959) (not b!5916446) (not b!5916666) (not bm!468935) (not b!5916976) (not b!5916980) (not b!5916388) (not b!5916739) (not d!1855588) (not b!5916449) (not b!5916514) (not d!1855604) (not b!5916797) (not b!5916992) (not b!5916963) (not d!1855644) (not d!1855630) (not b!5916961) (not bm!468955) (not b!5916979) (not b!5916908) (not b!5916958) (not d!1855618) (not b!5916792) (not bm!468936) (not b!5916983) tp_is_empty!41191 (not b!5916390) (not b!5916386) (not b!5916973) (not b!5916736) (not b!5916672) (not b!5916962) (not d!1855628) (not d!1855622) (not d!1855634) (not b!5916985) (not b!5916668) (not d!1855648) (not b!5916391) (not d!1855646) (not b!5916674) (not b!5916977) (not bm!468923) (not b!5916742) (not b!5916678) (not b!5916994) (not b!5916957) (not b!5916389) (not d!1855584) (not b!5916799) (not b!5916796) (not b!5916975) (not b!5916422) (not b!5916993) (not b!5916702) (not b!5916981) (not b!5916984) (not b!5916394) (not b!5916735) (not b!5916929) (not b!5916734) (not d!1855580) (not bm!468903) (not bm!468957) (not b!5916605) (not b!5916392) (not b!5916798))
(check-sat)
(get-model)

(declare-fun d!1855664 () Bool)

(assert (=> d!1855664 (= (isEmpty!35940 s!2326) ((_ is Nil!64084) s!2326))))

(assert (=> d!1855604 d!1855664))

(assert (=> d!1855604 d!1855662))

(declare-fun d!1855666 () Bool)

(assert (=> d!1855666 (= (isDefined!12563 lt!2309750) (not (isEmpty!35942 lt!2309750)))))

(declare-fun bs!1400682 () Bool)

(assert (= bs!1400682 d!1855666))

(declare-fun m!6814428 () Bool)

(assert (=> bs!1400682 m!6814428))

(assert (=> d!1855634 d!1855666))

(declare-fun d!1855668 () Bool)

(declare-fun e!3622830 () Bool)

(assert (=> d!1855668 e!3622830))

(declare-fun c!1051602 () Bool)

(assert (=> d!1855668 (= c!1051602 ((_ is EmptyExpr!15969) (regOne!32450 r!7292)))))

(declare-fun lt!2309771 () Bool)

(declare-fun e!3622829 () Bool)

(assert (=> d!1855668 (= lt!2309771 e!3622829)))

(declare-fun c!1051603 () Bool)

(assert (=> d!1855668 (= c!1051603 (isEmpty!35940 Nil!64084))))

(assert (=> d!1855668 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1855668 (= (matchR!8152 (regOne!32450 r!7292) Nil!64084) lt!2309771)))

(declare-fun b!5916995 () Bool)

(assert (=> b!5916995 (= e!3622829 (nullable!5964 (regOne!32450 r!7292)))))

(declare-fun b!5916996 () Bool)

(declare-fun call!468963 () Bool)

(assert (=> b!5916996 (= e!3622830 (= lt!2309771 call!468963))))

(declare-fun b!5916997 () Bool)

(assert (=> b!5916997 (= e!3622829 (matchR!8152 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 Nil!64084)) (tail!11564 Nil!64084)))))

(declare-fun b!5916998 () Bool)

(declare-fun res!2480869 () Bool)

(declare-fun e!3622828 () Bool)

(assert (=> b!5916998 (=> (not res!2480869) (not e!3622828))))

(assert (=> b!5916998 (= res!2480869 (not call!468963))))

(declare-fun b!5916999 () Bool)

(declare-fun e!3622826 () Bool)

(declare-fun e!3622825 () Bool)

(assert (=> b!5916999 (= e!3622826 e!3622825)))

(declare-fun res!2480871 () Bool)

(assert (=> b!5916999 (=> res!2480871 e!3622825)))

(assert (=> b!5916999 (= res!2480871 call!468963)))

(declare-fun b!5917000 () Bool)

(declare-fun e!3622824 () Bool)

(assert (=> b!5917000 (= e!3622824 (not lt!2309771))))

(declare-fun b!5917001 () Bool)

(assert (=> b!5917001 (= e!3622828 (= (head!12479 Nil!64084) (c!1051439 (regOne!32450 r!7292))))))

(declare-fun b!5917002 () Bool)

(declare-fun e!3622827 () Bool)

(assert (=> b!5917002 (= e!3622827 e!3622826)))

(declare-fun res!2480872 () Bool)

(assert (=> b!5917002 (=> (not res!2480872) (not e!3622826))))

(assert (=> b!5917002 (= res!2480872 (not lt!2309771))))

(declare-fun b!5917003 () Bool)

(assert (=> b!5917003 (= e!3622825 (not (= (head!12479 Nil!64084) (c!1051439 (regOne!32450 r!7292)))))))

(declare-fun b!5917004 () Bool)

(declare-fun res!2480870 () Bool)

(assert (=> b!5917004 (=> res!2480870 e!3622827)))

(assert (=> b!5917004 (= res!2480870 e!3622828)))

(declare-fun res!2480874 () Bool)

(assert (=> b!5917004 (=> (not res!2480874) (not e!3622828))))

(assert (=> b!5917004 (= res!2480874 lt!2309771)))

(declare-fun b!5917005 () Bool)

(declare-fun res!2480867 () Bool)

(assert (=> b!5917005 (=> res!2480867 e!3622827)))

(assert (=> b!5917005 (= res!2480867 (not ((_ is ElementMatch!15969) (regOne!32450 r!7292))))))

(assert (=> b!5917005 (= e!3622824 e!3622827)))

(declare-fun b!5917006 () Bool)

(assert (=> b!5917006 (= e!3622830 e!3622824)))

(declare-fun c!1051604 () Bool)

(assert (=> b!5917006 (= c!1051604 ((_ is EmptyLang!15969) (regOne!32450 r!7292)))))

(declare-fun bm!468958 () Bool)

(assert (=> bm!468958 (= call!468963 (isEmpty!35940 Nil!64084))))

(declare-fun b!5917007 () Bool)

(declare-fun res!2480868 () Bool)

(assert (=> b!5917007 (=> res!2480868 e!3622825)))

(assert (=> b!5917007 (= res!2480868 (not (isEmpty!35940 (tail!11564 Nil!64084))))))

(declare-fun b!5917008 () Bool)

(declare-fun res!2480873 () Bool)

(assert (=> b!5917008 (=> (not res!2480873) (not e!3622828))))

(assert (=> b!5917008 (= res!2480873 (isEmpty!35940 (tail!11564 Nil!64084)))))

(assert (= (and d!1855668 c!1051603) b!5916995))

(assert (= (and d!1855668 (not c!1051603)) b!5916997))

(assert (= (and d!1855668 c!1051602) b!5916996))

(assert (= (and d!1855668 (not c!1051602)) b!5917006))

(assert (= (and b!5917006 c!1051604) b!5917000))

(assert (= (and b!5917006 (not c!1051604)) b!5917005))

(assert (= (and b!5917005 (not res!2480867)) b!5917004))

(assert (= (and b!5917004 res!2480874) b!5916998))

(assert (= (and b!5916998 res!2480869) b!5917008))

(assert (= (and b!5917008 res!2480873) b!5917001))

(assert (= (and b!5917004 (not res!2480870)) b!5917002))

(assert (= (and b!5917002 res!2480872) b!5916999))

(assert (= (and b!5916999 (not res!2480871)) b!5917007))

(assert (= (and b!5917007 (not res!2480868)) b!5917003))

(assert (= (or b!5916996 b!5916998 b!5916999) bm!468958))

(assert (=> b!5916995 m!6814198))

(declare-fun m!6814430 () Bool)

(assert (=> b!5917007 m!6814430))

(assert (=> b!5917007 m!6814430))

(declare-fun m!6814432 () Bool)

(assert (=> b!5917007 m!6814432))

(assert (=> b!5917008 m!6814430))

(assert (=> b!5917008 m!6814430))

(assert (=> b!5917008 m!6814432))

(declare-fun m!6814434 () Bool)

(assert (=> b!5916997 m!6814434))

(assert (=> b!5916997 m!6814434))

(declare-fun m!6814436 () Bool)

(assert (=> b!5916997 m!6814436))

(assert (=> b!5916997 m!6814430))

(assert (=> b!5916997 m!6814436))

(assert (=> b!5916997 m!6814430))

(declare-fun m!6814438 () Bool)

(assert (=> b!5916997 m!6814438))

(declare-fun m!6814440 () Bool)

(assert (=> d!1855668 m!6814440))

(assert (=> d!1855668 m!6814340))

(assert (=> b!5917003 m!6814434))

(assert (=> b!5917001 m!6814434))

(assert (=> bm!468958 m!6814440))

(assert (=> d!1855634 d!1855668))

(declare-fun b!5917009 () Bool)

(declare-fun e!3622836 () Bool)

(declare-fun e!3622831 () Bool)

(assert (=> b!5917009 (= e!3622836 e!3622831)))

(declare-fun c!1051606 () Bool)

(assert (=> b!5917009 (= c!1051606 ((_ is Union!15969) (regOne!32450 r!7292)))))

(declare-fun b!5917010 () Bool)

(declare-fun e!3622835 () Bool)

(declare-fun call!468965 () Bool)

(assert (=> b!5917010 (= e!3622835 call!468965)))

(declare-fun d!1855670 () Bool)

(declare-fun res!2480877 () Bool)

(declare-fun e!3622837 () Bool)

(assert (=> d!1855670 (=> res!2480877 e!3622837)))

(assert (=> d!1855670 (= res!2480877 ((_ is ElementMatch!15969) (regOne!32450 r!7292)))))

(assert (=> d!1855670 (= (validRegex!7705 (regOne!32450 r!7292)) e!3622837)))

(declare-fun b!5917011 () Bool)

(declare-fun e!3622832 () Bool)

(declare-fun call!468966 () Bool)

(assert (=> b!5917011 (= e!3622832 call!468966)))

(declare-fun b!5917012 () Bool)

(declare-fun res!2480876 () Bool)

(declare-fun e!3622833 () Bool)

(assert (=> b!5917012 (=> (not res!2480876) (not e!3622833))))

(declare-fun call!468964 () Bool)

(assert (=> b!5917012 (= res!2480876 call!468964)))

(assert (=> b!5917012 (= e!3622831 e!3622833)))

(declare-fun b!5917013 () Bool)

(declare-fun e!3622834 () Bool)

(assert (=> b!5917013 (= e!3622834 e!3622835)))

(declare-fun res!2480878 () Bool)

(assert (=> b!5917013 (=> (not res!2480878) (not e!3622835))))

(assert (=> b!5917013 (= res!2480878 call!468964)))

(declare-fun b!5917014 () Bool)

(assert (=> b!5917014 (= e!3622836 e!3622832)))

(declare-fun res!2480879 () Bool)

(assert (=> b!5917014 (= res!2480879 (not (nullable!5964 (reg!16298 (regOne!32450 r!7292)))))))

(assert (=> b!5917014 (=> (not res!2480879) (not e!3622832))))

(declare-fun bm!468959 () Bool)

(assert (=> bm!468959 (= call!468964 (validRegex!7705 (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))))))

(declare-fun b!5917015 () Bool)

(declare-fun res!2480875 () Bool)

(assert (=> b!5917015 (=> res!2480875 e!3622834)))

(assert (=> b!5917015 (= res!2480875 (not ((_ is Concat!24814) (regOne!32450 r!7292))))))

(assert (=> b!5917015 (= e!3622831 e!3622834)))

(declare-fun b!5917016 () Bool)

(assert (=> b!5917016 (= e!3622837 e!3622836)))

(declare-fun c!1051605 () Bool)

(assert (=> b!5917016 (= c!1051605 ((_ is Star!15969) (regOne!32450 r!7292)))))

(declare-fun b!5917017 () Bool)

(assert (=> b!5917017 (= e!3622833 call!468965)))

(declare-fun bm!468960 () Bool)

(assert (=> bm!468960 (= call!468965 call!468966)))

(declare-fun bm!468961 () Bool)

(assert (=> bm!468961 (= call!468966 (validRegex!7705 (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))))))

(assert (= (and d!1855670 (not res!2480877)) b!5917016))

(assert (= (and b!5917016 c!1051605) b!5917014))

(assert (= (and b!5917016 (not c!1051605)) b!5917009))

(assert (= (and b!5917014 res!2480879) b!5917011))

(assert (= (and b!5917009 c!1051606) b!5917012))

(assert (= (and b!5917009 (not c!1051606)) b!5917015))

(assert (= (and b!5917012 res!2480876) b!5917017))

(assert (= (and b!5917015 (not res!2480875)) b!5917013))

(assert (= (and b!5917013 res!2480878) b!5917010))

(assert (= (or b!5917017 b!5917010) bm!468960))

(assert (= (or b!5917012 b!5917013) bm!468959))

(assert (= (or b!5917011 bm!468960) bm!468961))

(declare-fun m!6814442 () Bool)

(assert (=> b!5917014 m!6814442))

(declare-fun m!6814444 () Bool)

(assert (=> bm!468959 m!6814444))

(declare-fun m!6814446 () Bool)

(assert (=> bm!468961 m!6814446))

(assert (=> d!1855634 d!1855670))

(declare-fun b!5917018 () Bool)

(declare-fun e!3622843 () Bool)

(declare-fun e!3622838 () Bool)

(assert (=> b!5917018 (= e!3622843 e!3622838)))

(declare-fun c!1051608 () Bool)

(assert (=> b!5917018 (= c!1051608 ((_ is Union!15969) lt!2309701))))

(declare-fun b!5917019 () Bool)

(declare-fun e!3622842 () Bool)

(declare-fun call!468968 () Bool)

(assert (=> b!5917019 (= e!3622842 call!468968)))

(declare-fun d!1855672 () Bool)

(declare-fun res!2480882 () Bool)

(declare-fun e!3622844 () Bool)

(assert (=> d!1855672 (=> res!2480882 e!3622844)))

(assert (=> d!1855672 (= res!2480882 ((_ is ElementMatch!15969) lt!2309701))))

(assert (=> d!1855672 (= (validRegex!7705 lt!2309701) e!3622844)))

(declare-fun b!5917020 () Bool)

(declare-fun e!3622839 () Bool)

(declare-fun call!468969 () Bool)

(assert (=> b!5917020 (= e!3622839 call!468969)))

(declare-fun b!5917021 () Bool)

(declare-fun res!2480881 () Bool)

(declare-fun e!3622840 () Bool)

(assert (=> b!5917021 (=> (not res!2480881) (not e!3622840))))

(declare-fun call!468967 () Bool)

(assert (=> b!5917021 (= res!2480881 call!468967)))

(assert (=> b!5917021 (= e!3622838 e!3622840)))

(declare-fun b!5917022 () Bool)

(declare-fun e!3622841 () Bool)

(assert (=> b!5917022 (= e!3622841 e!3622842)))

(declare-fun res!2480883 () Bool)

(assert (=> b!5917022 (=> (not res!2480883) (not e!3622842))))

(assert (=> b!5917022 (= res!2480883 call!468967)))

(declare-fun b!5917023 () Bool)

(assert (=> b!5917023 (= e!3622843 e!3622839)))

(declare-fun res!2480884 () Bool)

(assert (=> b!5917023 (= res!2480884 (not (nullable!5964 (reg!16298 lt!2309701))))))

(assert (=> b!5917023 (=> (not res!2480884) (not e!3622839))))

(declare-fun bm!468962 () Bool)

(assert (=> bm!468962 (= call!468967 (validRegex!7705 (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))))))

(declare-fun b!5917024 () Bool)

(declare-fun res!2480880 () Bool)

(assert (=> b!5917024 (=> res!2480880 e!3622841)))

(assert (=> b!5917024 (= res!2480880 (not ((_ is Concat!24814) lt!2309701)))))

(assert (=> b!5917024 (= e!3622838 e!3622841)))

(declare-fun b!5917025 () Bool)

(assert (=> b!5917025 (= e!3622844 e!3622843)))

(declare-fun c!1051607 () Bool)

(assert (=> b!5917025 (= c!1051607 ((_ is Star!15969) lt!2309701))))

(declare-fun b!5917026 () Bool)

(assert (=> b!5917026 (= e!3622840 call!468968)))

(declare-fun bm!468963 () Bool)

(assert (=> bm!468963 (= call!468968 call!468969)))

(declare-fun bm!468964 () Bool)

(assert (=> bm!468964 (= call!468969 (validRegex!7705 (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))))))

(assert (= (and d!1855672 (not res!2480882)) b!5917025))

(assert (= (and b!5917025 c!1051607) b!5917023))

(assert (= (and b!5917025 (not c!1051607)) b!5917018))

(assert (= (and b!5917023 res!2480884) b!5917020))

(assert (= (and b!5917018 c!1051608) b!5917021))

(assert (= (and b!5917018 (not c!1051608)) b!5917024))

(assert (= (and b!5917021 res!2480881) b!5917026))

(assert (= (and b!5917024 (not res!2480880)) b!5917022))

(assert (= (and b!5917022 res!2480883) b!5917019))

(assert (= (or b!5917026 b!5917019) bm!468963))

(assert (= (or b!5917021 b!5917022) bm!468962))

(assert (= (or b!5917020 bm!468963) bm!468964))

(declare-fun m!6814448 () Bool)

(assert (=> b!5917023 m!6814448))

(declare-fun m!6814450 () Bool)

(assert (=> bm!468962 m!6814450))

(declare-fun m!6814452 () Bool)

(assert (=> bm!468964 m!6814452))

(assert (=> d!1855584 d!1855672))

(declare-fun d!1855674 () Bool)

(declare-fun res!2480889 () Bool)

(declare-fun e!3622849 () Bool)

(assert (=> d!1855674 (=> res!2480889 e!3622849)))

(assert (=> d!1855674 (= res!2480889 ((_ is Nil!64082) (unfocusZipperList!1390 zl!343)))))

(assert (=> d!1855674 (= (forall!15051 (unfocusZipperList!1390 zl!343) lambda!322812) e!3622849)))

(declare-fun b!5917031 () Bool)

(declare-fun e!3622850 () Bool)

(assert (=> b!5917031 (= e!3622849 e!3622850)))

(declare-fun res!2480890 () Bool)

(assert (=> b!5917031 (=> (not res!2480890) (not e!3622850))))

(declare-fun dynLambda!25053 (Int Regex!15969) Bool)

(assert (=> b!5917031 (= res!2480890 (dynLambda!25053 lambda!322812 (h!70530 (unfocusZipperList!1390 zl!343))))))

(declare-fun b!5917032 () Bool)

(assert (=> b!5917032 (= e!3622850 (forall!15051 (t!377595 (unfocusZipperList!1390 zl!343)) lambda!322812))))

(assert (= (and d!1855674 (not res!2480889)) b!5917031))

(assert (= (and b!5917031 res!2480890) b!5917032))

(declare-fun b_lambda!222261 () Bool)

(assert (=> (not b_lambda!222261) (not b!5917031)))

(declare-fun m!6814454 () Bool)

(assert (=> b!5917031 m!6814454))

(declare-fun m!6814456 () Bool)

(assert (=> b!5917032 m!6814456))

(assert (=> d!1855584 d!1855674))

(assert (=> b!5916740 d!1855632))

(declare-fun d!1855676 () Bool)

(declare-fun c!1051611 () Bool)

(assert (=> d!1855676 (= c!1051611 ((_ is Nil!64083) lt!2309724))))

(declare-fun e!3622853 () (InoxSet Context!10706))

(assert (=> d!1855676 (= (content!11795 lt!2309724) e!3622853)))

(declare-fun b!5917037 () Bool)

(assert (=> b!5917037 (= e!3622853 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5917038 () Bool)

(assert (=> b!5917038 (= e!3622853 ((_ map or) (store ((as const (Array Context!10706 Bool)) false) (h!70531 lt!2309724) true) (content!11795 (t!377596 lt!2309724))))))

(assert (= (and d!1855676 c!1051611) b!5917037))

(assert (= (and d!1855676 (not c!1051611)) b!5917038))

(declare-fun m!6814458 () Bool)

(assert (=> b!5917038 m!6814458))

(declare-fun m!6814460 () Bool)

(assert (=> b!5917038 m!6814460))

(assert (=> b!5916702 d!1855676))

(declare-fun d!1855678 () Bool)

(assert (=> d!1855678 (= (head!12479 s!2326) (h!70532 s!2326))))

(assert (=> b!5916672 d!1855678))

(assert (=> b!5916792 d!1855666))

(declare-fun d!1855680 () Bool)

(assert (=> d!1855680 (= (isEmpty!35938 (tail!11562 (unfocusZipperList!1390 zl!343))) ((_ is Nil!64082) (tail!11562 (unfocusZipperList!1390 zl!343))))))

(assert (=> b!5916391 d!1855680))

(declare-fun d!1855682 () Bool)

(assert (=> d!1855682 (= (tail!11562 (unfocusZipperList!1390 zl!343)) (t!377595 (unfocusZipperList!1390 zl!343)))))

(assert (=> b!5916391 d!1855682))

(declare-fun d!1855684 () Bool)

(assert (=> d!1855684 (= (isEmpty!35938 (exprs!5853 (h!70531 zl!343))) ((_ is Nil!64082) (exprs!5853 (h!70531 zl!343))))))

(assert (=> b!5916742 d!1855684))

(declare-fun bs!1400683 () Bool)

(declare-fun b!5917039 () Bool)

(assert (= bs!1400683 (and b!5917039 d!1855652)))

(declare-fun lambda!322863 () Int)

(assert (=> bs!1400683 (not (= lambda!322863 lambda!322859))))

(assert (=> bs!1400683 (not (= lambda!322863 lambda!322857))))

(declare-fun bs!1400684 () Bool)

(assert (= bs!1400684 (and b!5917039 b!5916342)))

(assert (=> bs!1400684 (not (= lambda!322863 lambda!322806))))

(declare-fun bs!1400685 () Bool)

(assert (= bs!1400685 (and b!5917039 b!5916600)))

(assert (=> bs!1400685 (= (and (= (reg!16298 (regTwo!32451 r!7292)) (reg!16298 r!7292)) (= (regTwo!32451 r!7292) r!7292)) (= lambda!322863 lambda!322826))))

(assert (=> bs!1400684 (not (= lambda!322863 lambda!322805))))

(declare-fun bs!1400686 () Bool)

(assert (= bs!1400686 (and b!5917039 d!1855648)))

(assert (=> bs!1400686 (not (= lambda!322863 lambda!322850))))

(declare-fun bs!1400687 () Bool)

(assert (= bs!1400687 (and b!5917039 b!5916603)))

(assert (=> bs!1400687 (not (= lambda!322863 lambda!322827))))

(assert (=> b!5917039 true))

(assert (=> b!5917039 true))

(declare-fun bs!1400688 () Bool)

(declare-fun b!5917042 () Bool)

(assert (= bs!1400688 (and b!5917042 d!1855652)))

(declare-fun lambda!322864 () Int)

(assert (=> bs!1400688 (= (and (= (regOne!32450 (regTwo!32451 r!7292)) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 r!7292)) (regTwo!32450 r!7292))) (= lambda!322864 lambda!322859))))

(assert (=> bs!1400688 (not (= lambda!322864 lambda!322857))))

(declare-fun bs!1400689 () Bool)

(assert (= bs!1400689 (and b!5917042 b!5916342)))

(assert (=> bs!1400689 (= (and (= (regOne!32450 (regTwo!32451 r!7292)) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 r!7292)) (regTwo!32450 r!7292))) (= lambda!322864 lambda!322806))))

(declare-fun bs!1400690 () Bool)

(assert (= bs!1400690 (and b!5917042 b!5916600)))

(assert (=> bs!1400690 (not (= lambda!322864 lambda!322826))))

(declare-fun bs!1400691 () Bool)

(assert (= bs!1400691 (and b!5917042 d!1855648)))

(assert (=> bs!1400691 (not (= lambda!322864 lambda!322850))))

(declare-fun bs!1400692 () Bool)

(assert (= bs!1400692 (and b!5917042 b!5916603)))

(assert (=> bs!1400692 (= (and (= (regOne!32450 (regTwo!32451 r!7292)) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 r!7292)) (regTwo!32450 r!7292))) (= lambda!322864 lambda!322827))))

(declare-fun bs!1400693 () Bool)

(assert (= bs!1400693 (and b!5917042 b!5917039)))

(assert (=> bs!1400693 (not (= lambda!322864 lambda!322863))))

(assert (=> bs!1400689 (not (= lambda!322864 lambda!322805))))

(assert (=> b!5917042 true))

(assert (=> b!5917042 true))

(declare-fun e!3622858 () Bool)

(declare-fun call!468971 () Bool)

(assert (=> b!5917039 (= e!3622858 call!468971)))

(declare-fun b!5917040 () Bool)

(declare-fun e!3622857 () Bool)

(declare-fun e!3622860 () Bool)

(assert (=> b!5917040 (= e!3622857 e!3622860)))

(declare-fun c!1051612 () Bool)

(assert (=> b!5917040 (= c!1051612 ((_ is Star!15969) (regTwo!32451 r!7292)))))

(declare-fun b!5917041 () Bool)

(declare-fun c!1051614 () Bool)

(assert (=> b!5917041 (= c!1051614 ((_ is Union!15969) (regTwo!32451 r!7292)))))

(declare-fun e!3622855 () Bool)

(assert (=> b!5917041 (= e!3622855 e!3622857)))

(assert (=> b!5917042 (= e!3622860 call!468971)))

(declare-fun bm!468965 () Bool)

(assert (=> bm!468965 (= call!468971 (Exists!3039 (ite c!1051612 lambda!322863 lambda!322864)))))

(declare-fun b!5917043 () Bool)

(declare-fun res!2480892 () Bool)

(assert (=> b!5917043 (=> res!2480892 e!3622858)))

(declare-fun call!468970 () Bool)

(assert (=> b!5917043 (= res!2480892 call!468970)))

(assert (=> b!5917043 (= e!3622860 e!3622858)))

(declare-fun d!1855686 () Bool)

(declare-fun c!1051613 () Bool)

(assert (=> d!1855686 (= c!1051613 ((_ is EmptyExpr!15969) (regTwo!32451 r!7292)))))

(declare-fun e!3622856 () Bool)

(assert (=> d!1855686 (= (matchRSpec!3070 (regTwo!32451 r!7292) s!2326) e!3622856)))

(declare-fun b!5917044 () Bool)

(declare-fun e!3622859 () Bool)

(assert (=> b!5917044 (= e!3622859 (matchRSpec!3070 (regTwo!32451 (regTwo!32451 r!7292)) s!2326))))

(declare-fun b!5917045 () Bool)

(assert (=> b!5917045 (= e!3622855 (= s!2326 (Cons!64084 (c!1051439 (regTwo!32451 r!7292)) Nil!64084)))))

(declare-fun b!5917046 () Bool)

(declare-fun e!3622854 () Bool)

(assert (=> b!5917046 (= e!3622856 e!3622854)))

(declare-fun res!2480891 () Bool)

(assert (=> b!5917046 (= res!2480891 (not ((_ is EmptyLang!15969) (regTwo!32451 r!7292))))))

(assert (=> b!5917046 (=> (not res!2480891) (not e!3622854))))

(declare-fun b!5917047 () Bool)

(declare-fun c!1051615 () Bool)

(assert (=> b!5917047 (= c!1051615 ((_ is ElementMatch!15969) (regTwo!32451 r!7292)))))

(assert (=> b!5917047 (= e!3622854 e!3622855)))

(declare-fun b!5917048 () Bool)

(assert (=> b!5917048 (= e!3622856 call!468970)))

(declare-fun b!5917049 () Bool)

(assert (=> b!5917049 (= e!3622857 e!3622859)))

(declare-fun res!2480893 () Bool)

(assert (=> b!5917049 (= res!2480893 (matchRSpec!3070 (regOne!32451 (regTwo!32451 r!7292)) s!2326))))

(assert (=> b!5917049 (=> res!2480893 e!3622859)))

(declare-fun bm!468966 () Bool)

(assert (=> bm!468966 (= call!468970 (isEmpty!35940 s!2326))))

(assert (= (and d!1855686 c!1051613) b!5917048))

(assert (= (and d!1855686 (not c!1051613)) b!5917046))

(assert (= (and b!5917046 res!2480891) b!5917047))

(assert (= (and b!5917047 c!1051615) b!5917045))

(assert (= (and b!5917047 (not c!1051615)) b!5917041))

(assert (= (and b!5917041 c!1051614) b!5917049))

(assert (= (and b!5917041 (not c!1051614)) b!5917040))

(assert (= (and b!5917049 (not res!2480893)) b!5917044))

(assert (= (and b!5917040 c!1051612) b!5917043))

(assert (= (and b!5917040 (not c!1051612)) b!5917042))

(assert (= (and b!5917043 (not res!2480892)) b!5917039))

(assert (= (or b!5917039 b!5917042) bm!468965))

(assert (= (or b!5917048 b!5917043) bm!468966))

(declare-fun m!6814462 () Bool)

(assert (=> bm!468965 m!6814462))

(declare-fun m!6814464 () Bool)

(assert (=> b!5917044 m!6814464))

(declare-fun m!6814466 () Bool)

(assert (=> b!5917049 m!6814466))

(assert (=> bm!468966 m!6814230))

(assert (=> b!5916605 d!1855686))

(assert (=> b!5916674 d!1855678))

(declare-fun d!1855688 () Bool)

(declare-fun res!2480894 () Bool)

(declare-fun e!3622861 () Bool)

(assert (=> d!1855688 (=> res!2480894 e!3622861)))

(assert (=> d!1855688 (= res!2480894 ((_ is Nil!64082) (exprs!5853 setElem!40160)))))

(assert (=> d!1855688 (= (forall!15051 (exprs!5853 setElem!40160) lambda!322809) e!3622861)))

(declare-fun b!5917050 () Bool)

(declare-fun e!3622862 () Bool)

(assert (=> b!5917050 (= e!3622861 e!3622862)))

(declare-fun res!2480895 () Bool)

(assert (=> b!5917050 (=> (not res!2480895) (not e!3622862))))

(assert (=> b!5917050 (= res!2480895 (dynLambda!25053 lambda!322809 (h!70530 (exprs!5853 setElem!40160))))))

(declare-fun b!5917051 () Bool)

(assert (=> b!5917051 (= e!3622862 (forall!15051 (t!377595 (exprs!5853 setElem!40160)) lambda!322809))))

(assert (= (and d!1855688 (not res!2480894)) b!5917050))

(assert (= (and b!5917050 res!2480895) b!5917051))

(declare-fun b_lambda!222263 () Bool)

(assert (=> (not b_lambda!222263) (not b!5917050)))

(declare-fun m!6814468 () Bool)

(assert (=> b!5917050 m!6814468))

(declare-fun m!6814470 () Bool)

(assert (=> b!5917051 m!6814470))

(assert (=> d!1855580 d!1855688))

(declare-fun d!1855690 () Bool)

(declare-fun e!3622869 () Bool)

(assert (=> d!1855690 e!3622869))

(declare-fun c!1051616 () Bool)

(assert (=> d!1855690 (= c!1051616 ((_ is EmptyExpr!15969) (regOne!32450 r!7292)))))

(declare-fun lt!2309772 () Bool)

(declare-fun e!3622868 () Bool)

(assert (=> d!1855690 (= lt!2309772 e!3622868)))

(declare-fun c!1051617 () Bool)

(assert (=> d!1855690 (= c!1051617 (isEmpty!35940 (_1!36251 (get!22066 lt!2309750))))))

(assert (=> d!1855690 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1855690 (= (matchR!8152 (regOne!32450 r!7292) (_1!36251 (get!22066 lt!2309750))) lt!2309772)))

(declare-fun b!5917052 () Bool)

(assert (=> b!5917052 (= e!3622868 (nullable!5964 (regOne!32450 r!7292)))))

(declare-fun b!5917053 () Bool)

(declare-fun call!468972 () Bool)

(assert (=> b!5917053 (= e!3622869 (= lt!2309772 call!468972))))

(declare-fun b!5917054 () Bool)

(assert (=> b!5917054 (= e!3622868 (matchR!8152 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750)))) (tail!11564 (_1!36251 (get!22066 lt!2309750)))))))

(declare-fun b!5917055 () Bool)

(declare-fun res!2480898 () Bool)

(declare-fun e!3622867 () Bool)

(assert (=> b!5917055 (=> (not res!2480898) (not e!3622867))))

(assert (=> b!5917055 (= res!2480898 (not call!468972))))

(declare-fun b!5917056 () Bool)

(declare-fun e!3622865 () Bool)

(declare-fun e!3622864 () Bool)

(assert (=> b!5917056 (= e!3622865 e!3622864)))

(declare-fun res!2480900 () Bool)

(assert (=> b!5917056 (=> res!2480900 e!3622864)))

(assert (=> b!5917056 (= res!2480900 call!468972)))

(declare-fun b!5917057 () Bool)

(declare-fun e!3622863 () Bool)

(assert (=> b!5917057 (= e!3622863 (not lt!2309772))))

(declare-fun b!5917058 () Bool)

(assert (=> b!5917058 (= e!3622867 (= (head!12479 (_1!36251 (get!22066 lt!2309750))) (c!1051439 (regOne!32450 r!7292))))))

(declare-fun b!5917059 () Bool)

(declare-fun e!3622866 () Bool)

(assert (=> b!5917059 (= e!3622866 e!3622865)))

(declare-fun res!2480901 () Bool)

(assert (=> b!5917059 (=> (not res!2480901) (not e!3622865))))

(assert (=> b!5917059 (= res!2480901 (not lt!2309772))))

(declare-fun b!5917060 () Bool)

(assert (=> b!5917060 (= e!3622864 (not (= (head!12479 (_1!36251 (get!22066 lt!2309750))) (c!1051439 (regOne!32450 r!7292)))))))

(declare-fun b!5917061 () Bool)

(declare-fun res!2480899 () Bool)

(assert (=> b!5917061 (=> res!2480899 e!3622866)))

(assert (=> b!5917061 (= res!2480899 e!3622867)))

(declare-fun res!2480903 () Bool)

(assert (=> b!5917061 (=> (not res!2480903) (not e!3622867))))

(assert (=> b!5917061 (= res!2480903 lt!2309772)))

(declare-fun b!5917062 () Bool)

(declare-fun res!2480896 () Bool)

(assert (=> b!5917062 (=> res!2480896 e!3622866)))

(assert (=> b!5917062 (= res!2480896 (not ((_ is ElementMatch!15969) (regOne!32450 r!7292))))))

(assert (=> b!5917062 (= e!3622863 e!3622866)))

(declare-fun b!5917063 () Bool)

(assert (=> b!5917063 (= e!3622869 e!3622863)))

(declare-fun c!1051618 () Bool)

(assert (=> b!5917063 (= c!1051618 ((_ is EmptyLang!15969) (regOne!32450 r!7292)))))

(declare-fun bm!468967 () Bool)

(assert (=> bm!468967 (= call!468972 (isEmpty!35940 (_1!36251 (get!22066 lt!2309750))))))

(declare-fun b!5917064 () Bool)

(declare-fun res!2480897 () Bool)

(assert (=> b!5917064 (=> res!2480897 e!3622864)))

(assert (=> b!5917064 (= res!2480897 (not (isEmpty!35940 (tail!11564 (_1!36251 (get!22066 lt!2309750))))))))

(declare-fun b!5917065 () Bool)

(declare-fun res!2480902 () Bool)

(assert (=> b!5917065 (=> (not res!2480902) (not e!3622867))))

(assert (=> b!5917065 (= res!2480902 (isEmpty!35940 (tail!11564 (_1!36251 (get!22066 lt!2309750)))))))

(assert (= (and d!1855690 c!1051617) b!5917052))

(assert (= (and d!1855690 (not c!1051617)) b!5917054))

(assert (= (and d!1855690 c!1051616) b!5917053))

(assert (= (and d!1855690 (not c!1051616)) b!5917063))

(assert (= (and b!5917063 c!1051618) b!5917057))

(assert (= (and b!5917063 (not c!1051618)) b!5917062))

(assert (= (and b!5917062 (not res!2480896)) b!5917061))

(assert (= (and b!5917061 res!2480903) b!5917055))

(assert (= (and b!5917055 res!2480898) b!5917065))

(assert (= (and b!5917065 res!2480902) b!5917058))

(assert (= (and b!5917061 (not res!2480899)) b!5917059))

(assert (= (and b!5917059 res!2480901) b!5917056))

(assert (= (and b!5917056 (not res!2480900)) b!5917064))

(assert (= (and b!5917064 (not res!2480897)) b!5917060))

(assert (= (or b!5917053 b!5917055 b!5917056) bm!468967))

(assert (=> b!5917052 m!6814198))

(declare-fun m!6814472 () Bool)

(assert (=> b!5917064 m!6814472))

(assert (=> b!5917064 m!6814472))

(declare-fun m!6814474 () Bool)

(assert (=> b!5917064 m!6814474))

(assert (=> b!5917065 m!6814472))

(assert (=> b!5917065 m!6814472))

(assert (=> b!5917065 m!6814474))

(declare-fun m!6814476 () Bool)

(assert (=> b!5917054 m!6814476))

(assert (=> b!5917054 m!6814476))

(declare-fun m!6814478 () Bool)

(assert (=> b!5917054 m!6814478))

(assert (=> b!5917054 m!6814472))

(assert (=> b!5917054 m!6814478))

(assert (=> b!5917054 m!6814472))

(declare-fun m!6814480 () Bool)

(assert (=> b!5917054 m!6814480))

(declare-fun m!6814482 () Bool)

(assert (=> d!1855690 m!6814482))

(assert (=> d!1855690 m!6814340))

(assert (=> b!5917060 m!6814476))

(assert (=> b!5917058 m!6814476))

(assert (=> bm!468967 m!6814482))

(assert (=> b!5916796 d!1855690))

(declare-fun d!1855692 () Bool)

(assert (=> d!1855692 (= (get!22066 lt!2309750) (v!51953 lt!2309750))))

(assert (=> b!5916796 d!1855692))

(assert (=> b!5916422 d!1855624))

(declare-fun bs!1400694 () Bool)

(declare-fun d!1855694 () Bool)

(assert (= bs!1400694 (and d!1855694 d!1855588)))

(declare-fun lambda!322865 () Int)

(assert (=> bs!1400694 (= lambda!322865 lambda!322815)))

(declare-fun bs!1400695 () Bool)

(assert (= bs!1400695 (and d!1855694 d!1855580)))

(assert (=> bs!1400695 (= lambda!322865 lambda!322809)))

(declare-fun bs!1400696 () Bool)

(assert (= bs!1400696 (and d!1855694 d!1855624)))

(assert (=> bs!1400696 (= lambda!322865 lambda!322837)))

(declare-fun bs!1400697 () Bool)

(assert (= bs!1400697 (and d!1855694 d!1855584)))

(assert (=> bs!1400697 (= lambda!322865 lambda!322812)))

(declare-fun bs!1400698 () Bool)

(assert (= bs!1400698 (and d!1855694 d!1855630)))

(assert (=> bs!1400698 (= lambda!322865 lambda!322838)))

(declare-fun lt!2309773 () List!64206)

(assert (=> d!1855694 (forall!15051 lt!2309773 lambda!322865)))

(declare-fun e!3622870 () List!64206)

(assert (=> d!1855694 (= lt!2309773 e!3622870)))

(declare-fun c!1051619 () Bool)

(assert (=> d!1855694 (= c!1051619 ((_ is Cons!64083) (t!377596 zl!343)))))

(assert (=> d!1855694 (= (unfocusZipperList!1390 (t!377596 zl!343)) lt!2309773)))

(declare-fun b!5917066 () Bool)

(assert (=> b!5917066 (= e!3622870 (Cons!64082 (generalisedConcat!1566 (exprs!5853 (h!70531 (t!377596 zl!343)))) (unfocusZipperList!1390 (t!377596 (t!377596 zl!343)))))))

(declare-fun b!5917067 () Bool)

(assert (=> b!5917067 (= e!3622870 Nil!64082)))

(assert (= (and d!1855694 c!1051619) b!5917066))

(assert (= (and d!1855694 (not c!1051619)) b!5917067))

(declare-fun m!6814484 () Bool)

(assert (=> d!1855694 m!6814484))

(declare-fun m!6814486 () Bool)

(assert (=> b!5917066 m!6814486))

(declare-fun m!6814488 () Bool)

(assert (=> b!5917066 m!6814488))

(assert (=> b!5916422 d!1855694))

(declare-fun d!1855696 () Bool)

(declare-fun nullableFct!1935 (Regex!15969) Bool)

(assert (=> d!1855696 (= (nullable!5964 (regOne!32450 r!7292)) (nullableFct!1935 (regOne!32450 r!7292)))))

(declare-fun bs!1400699 () Bool)

(assert (= bs!1400699 d!1855696))

(declare-fun m!6814490 () Bool)

(assert (=> bs!1400699 m!6814490))

(assert (=> b!5916514 d!1855696))

(declare-fun d!1855698 () Bool)

(assert (=> d!1855698 (= (isEmptyExpr!1397 lt!2309728) ((_ is EmptyExpr!15969) lt!2309728))))

(assert (=> b!5916736 d!1855698))

(declare-fun d!1855700 () Bool)

(declare-fun e!3622877 () Bool)

(assert (=> d!1855700 e!3622877))

(declare-fun c!1051620 () Bool)

(assert (=> d!1855700 (= c!1051620 ((_ is EmptyExpr!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun lt!2309774 () Bool)

(declare-fun e!3622876 () Bool)

(assert (=> d!1855700 (= lt!2309774 e!3622876)))

(declare-fun c!1051621 () Bool)

(assert (=> d!1855700 (= c!1051621 (isEmpty!35940 (tail!11564 s!2326)))))

(assert (=> d!1855700 (validRegex!7705 (derivativeStep!4700 r!7292 (head!12479 s!2326)))))

(assert (=> d!1855700 (= (matchR!8152 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (tail!11564 s!2326)) lt!2309774)))

(declare-fun b!5917068 () Bool)

(assert (=> b!5917068 (= e!3622876 (nullable!5964 (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun b!5917069 () Bool)

(declare-fun call!468973 () Bool)

(assert (=> b!5917069 (= e!3622877 (= lt!2309774 call!468973))))

(declare-fun b!5917070 () Bool)

(assert (=> b!5917070 (= e!3622876 (matchR!8152 (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326))) (tail!11564 (tail!11564 s!2326))))))

(declare-fun b!5917071 () Bool)

(declare-fun res!2480906 () Bool)

(declare-fun e!3622875 () Bool)

(assert (=> b!5917071 (=> (not res!2480906) (not e!3622875))))

(assert (=> b!5917071 (= res!2480906 (not call!468973))))

(declare-fun b!5917072 () Bool)

(declare-fun e!3622873 () Bool)

(declare-fun e!3622872 () Bool)

(assert (=> b!5917072 (= e!3622873 e!3622872)))

(declare-fun res!2480908 () Bool)

(assert (=> b!5917072 (=> res!2480908 e!3622872)))

(assert (=> b!5917072 (= res!2480908 call!468973)))

(declare-fun b!5917073 () Bool)

(declare-fun e!3622871 () Bool)

(assert (=> b!5917073 (= e!3622871 (not lt!2309774))))

(declare-fun b!5917074 () Bool)

(assert (=> b!5917074 (= e!3622875 (= (head!12479 (tail!11564 s!2326)) (c!1051439 (derivativeStep!4700 r!7292 (head!12479 s!2326)))))))

(declare-fun b!5917075 () Bool)

(declare-fun e!3622874 () Bool)

(assert (=> b!5917075 (= e!3622874 e!3622873)))

(declare-fun res!2480909 () Bool)

(assert (=> b!5917075 (=> (not res!2480909) (not e!3622873))))

(assert (=> b!5917075 (= res!2480909 (not lt!2309774))))

(declare-fun b!5917076 () Bool)

(assert (=> b!5917076 (= e!3622872 (not (= (head!12479 (tail!11564 s!2326)) (c!1051439 (derivativeStep!4700 r!7292 (head!12479 s!2326))))))))

(declare-fun b!5917077 () Bool)

(declare-fun res!2480907 () Bool)

(assert (=> b!5917077 (=> res!2480907 e!3622874)))

(assert (=> b!5917077 (= res!2480907 e!3622875)))

(declare-fun res!2480911 () Bool)

(assert (=> b!5917077 (=> (not res!2480911) (not e!3622875))))

(assert (=> b!5917077 (= res!2480911 lt!2309774)))

(declare-fun b!5917078 () Bool)

(declare-fun res!2480904 () Bool)

(assert (=> b!5917078 (=> res!2480904 e!3622874)))

(assert (=> b!5917078 (= res!2480904 (not ((_ is ElementMatch!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326)))))))

(assert (=> b!5917078 (= e!3622871 e!3622874)))

(declare-fun b!5917079 () Bool)

(assert (=> b!5917079 (= e!3622877 e!3622871)))

(declare-fun c!1051622 () Bool)

(assert (=> b!5917079 (= c!1051622 ((_ is EmptyLang!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun bm!468968 () Bool)

(assert (=> bm!468968 (= call!468973 (isEmpty!35940 (tail!11564 s!2326)))))

(declare-fun b!5917080 () Bool)

(declare-fun res!2480905 () Bool)

(assert (=> b!5917080 (=> res!2480905 e!3622872)))

(assert (=> b!5917080 (= res!2480905 (not (isEmpty!35940 (tail!11564 (tail!11564 s!2326)))))))

(declare-fun b!5917081 () Bool)

(declare-fun res!2480910 () Bool)

(assert (=> b!5917081 (=> (not res!2480910) (not e!3622875))))

(assert (=> b!5917081 (= res!2480910 (isEmpty!35940 (tail!11564 (tail!11564 s!2326))))))

(assert (= (and d!1855700 c!1051621) b!5917068))

(assert (= (and d!1855700 (not c!1051621)) b!5917070))

(assert (= (and d!1855700 c!1051620) b!5917069))

(assert (= (and d!1855700 (not c!1051620)) b!5917079))

(assert (= (and b!5917079 c!1051622) b!5917073))

(assert (= (and b!5917079 (not c!1051622)) b!5917078))

(assert (= (and b!5917078 (not res!2480904)) b!5917077))

(assert (= (and b!5917077 res!2480911) b!5917071))

(assert (= (and b!5917071 res!2480906) b!5917081))

(assert (= (and b!5917081 res!2480910) b!5917074))

(assert (= (and b!5917077 (not res!2480907)) b!5917075))

(assert (= (and b!5917075 res!2480909) b!5917072))

(assert (= (and b!5917072 (not res!2480908)) b!5917080))

(assert (= (and b!5917080 (not res!2480905)) b!5917076))

(assert (= (or b!5917069 b!5917071 b!5917072) bm!468968))

(assert (=> b!5917068 m!6814252))

(declare-fun m!6814492 () Bool)

(assert (=> b!5917068 m!6814492))

(assert (=> b!5917080 m!6814246))

(declare-fun m!6814494 () Bool)

(assert (=> b!5917080 m!6814494))

(assert (=> b!5917080 m!6814494))

(declare-fun m!6814496 () Bool)

(assert (=> b!5917080 m!6814496))

(assert (=> b!5917081 m!6814246))

(assert (=> b!5917081 m!6814494))

(assert (=> b!5917081 m!6814494))

(assert (=> b!5917081 m!6814496))

(assert (=> b!5917070 m!6814246))

(declare-fun m!6814498 () Bool)

(assert (=> b!5917070 m!6814498))

(assert (=> b!5917070 m!6814252))

(assert (=> b!5917070 m!6814498))

(declare-fun m!6814500 () Bool)

(assert (=> b!5917070 m!6814500))

(assert (=> b!5917070 m!6814246))

(assert (=> b!5917070 m!6814494))

(assert (=> b!5917070 m!6814500))

(assert (=> b!5917070 m!6814494))

(declare-fun m!6814502 () Bool)

(assert (=> b!5917070 m!6814502))

(assert (=> d!1855700 m!6814246))

(assert (=> d!1855700 m!6814248))

(assert (=> d!1855700 m!6814252))

(declare-fun m!6814504 () Bool)

(assert (=> d!1855700 m!6814504))

(assert (=> b!5917076 m!6814246))

(assert (=> b!5917076 m!6814498))

(assert (=> b!5917074 m!6814246))

(assert (=> b!5917074 m!6814498))

(assert (=> bm!468968 m!6814246))

(assert (=> bm!468968 m!6814248))

(assert (=> b!5916668 d!1855700))

(declare-fun b!5917145 () Bool)

(declare-fun e!3622917 () Regex!15969)

(declare-fun call!468988 () Regex!15969)

(assert (=> b!5917145 (= e!3622917 (Concat!24814 call!468988 r!7292))))

(declare-fun b!5917146 () Bool)

(declare-fun e!3622918 () Regex!15969)

(declare-fun call!468985 () Regex!15969)

(declare-fun call!468986 () Regex!15969)

(assert (=> b!5917146 (= e!3622918 (Union!15969 call!468985 call!468986))))

(declare-fun b!5917147 () Bool)

(declare-fun c!1051645 () Bool)

(assert (=> b!5917147 (= c!1051645 ((_ is Union!15969) r!7292))))

(declare-fun e!3622914 () Regex!15969)

(assert (=> b!5917147 (= e!3622914 e!3622918)))

(declare-fun b!5917148 () Bool)

(declare-fun e!3622915 () Regex!15969)

(declare-fun call!468987 () Regex!15969)

(assert (=> b!5917148 (= e!3622915 (Union!15969 (Concat!24814 call!468987 (regTwo!32450 r!7292)) EmptyLang!15969))))

(declare-fun c!1051644 () Bool)

(declare-fun bm!468980 () Bool)

(assert (=> bm!468980 (= call!468986 (derivativeStep!4700 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292))) (head!12479 s!2326)))))

(declare-fun bm!468981 () Bool)

(assert (=> bm!468981 (= call!468988 call!468986)))

(declare-fun b!5917149 () Bool)

(assert (=> b!5917149 (= e!3622914 (ite (= (head!12479 s!2326) (c!1051439 r!7292)) EmptyExpr!15969 EmptyLang!15969))))

(declare-fun b!5917150 () Bool)

(assert (=> b!5917150 (= e!3622918 e!3622917)))

(assert (=> b!5917150 (= c!1051644 ((_ is Star!15969) r!7292))))

(declare-fun bm!468982 () Bool)

(assert (=> bm!468982 (= call!468987 call!468985)))

(declare-fun c!1051643 () Bool)

(declare-fun bm!468983 () Bool)

(assert (=> bm!468983 (= call!468985 (derivativeStep!4700 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292))) (head!12479 s!2326)))))

(declare-fun b!5917151 () Bool)

(assert (=> b!5917151 (= e!3622915 (Union!15969 (Concat!24814 call!468988 (regTwo!32450 r!7292)) call!468987))))

(declare-fun b!5917152 () Bool)

(assert (=> b!5917152 (= c!1051643 (nullable!5964 (regOne!32450 r!7292)))))

(assert (=> b!5917152 (= e!3622917 e!3622915)))

(declare-fun b!5917153 () Bool)

(declare-fun e!3622916 () Regex!15969)

(assert (=> b!5917153 (= e!3622916 e!3622914)))

(declare-fun c!1051646 () Bool)

(assert (=> b!5917153 (= c!1051646 ((_ is ElementMatch!15969) r!7292))))

(declare-fun d!1855704 () Bool)

(declare-fun lt!2309781 () Regex!15969)

(assert (=> d!1855704 (validRegex!7705 lt!2309781)))

(assert (=> d!1855704 (= lt!2309781 e!3622916)))

(declare-fun c!1051647 () Bool)

(assert (=> d!1855704 (= c!1051647 (or ((_ is EmptyExpr!15969) r!7292) ((_ is EmptyLang!15969) r!7292)))))

(assert (=> d!1855704 (validRegex!7705 r!7292)))

(assert (=> d!1855704 (= (derivativeStep!4700 r!7292 (head!12479 s!2326)) lt!2309781)))

(declare-fun b!5917154 () Bool)

(assert (=> b!5917154 (= e!3622916 EmptyLang!15969)))

(assert (= (and d!1855704 c!1051647) b!5917154))

(assert (= (and d!1855704 (not c!1051647)) b!5917153))

(assert (= (and b!5917153 c!1051646) b!5917149))

(assert (= (and b!5917153 (not c!1051646)) b!5917147))

(assert (= (and b!5917147 c!1051645) b!5917146))

(assert (= (and b!5917147 (not c!1051645)) b!5917150))

(assert (= (and b!5917150 c!1051644) b!5917145))

(assert (= (and b!5917150 (not c!1051644)) b!5917152))

(assert (= (and b!5917152 c!1051643) b!5917151))

(assert (= (and b!5917152 (not c!1051643)) b!5917148))

(assert (= (or b!5917151 b!5917148) bm!468982))

(assert (= (or b!5917145 b!5917151) bm!468981))

(assert (= (or b!5917146 bm!468981) bm!468980))

(assert (= (or b!5917146 bm!468982) bm!468983))

(assert (=> bm!468980 m!6814250))

(declare-fun m!6814532 () Bool)

(assert (=> bm!468980 m!6814532))

(assert (=> bm!468983 m!6814250))

(declare-fun m!6814534 () Bool)

(assert (=> bm!468983 m!6814534))

(assert (=> b!5917152 m!6814198))

(declare-fun m!6814536 () Bool)

(assert (=> d!1855704 m!6814536))

(assert (=> d!1855704 m!6814130))

(assert (=> b!5916668 d!1855704))

(assert (=> b!5916668 d!1855678))

(declare-fun d!1855720 () Bool)

(assert (=> d!1855720 (= (tail!11564 s!2326) (t!377597 s!2326))))

(assert (=> b!5916668 d!1855720))

(declare-fun d!1855722 () Bool)

(assert (=> d!1855722 true))

(assert (=> d!1855722 true))

(declare-fun res!2480937 () Bool)

(assert (=> d!1855722 (= (choose!44639 lambda!322806) res!2480937)))

(assert (=> d!1855646 d!1855722))

(declare-fun d!1855724 () Bool)

(assert (=> d!1855724 (= (head!12477 (unfocusZipperList!1390 zl!343)) (h!70530 (unfocusZipperList!1390 zl!343)))))

(assert (=> b!5916389 d!1855724))

(declare-fun d!1855726 () Bool)

(assert (=> d!1855726 (= (Exists!3039 (ite c!1051526 lambda!322826 lambda!322827)) (choose!44639 (ite c!1051526 lambda!322826 lambda!322827)))))

(declare-fun bs!1400711 () Bool)

(assert (= bs!1400711 d!1855726))

(declare-fun m!6814538 () Bool)

(assert (=> bs!1400711 m!6814538))

(assert (=> bm!468935 d!1855726))

(declare-fun bm!468984 () Bool)

(declare-fun call!468989 () (InoxSet Context!10706))

(assert (=> bm!468984 (= call!468989 (derivationStepZipperDown!1219 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (h!70532 s!2326)))))

(declare-fun b!5917156 () Bool)

(declare-fun e!3622920 () Bool)

(assert (=> b!5917156 (= e!3622920 (nullable!5964 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))

(declare-fun b!5917157 () Bool)

(declare-fun e!3622919 () (InoxSet Context!10706))

(assert (=> b!5917157 (= e!3622919 call!468989)))

(declare-fun b!5917158 () Bool)

(declare-fun e!3622921 () (InoxSet Context!10706))

(assert (=> b!5917158 (= e!3622921 e!3622919)))

(declare-fun c!1051649 () Bool)

(assert (=> b!5917158 (= c!1051649 ((_ is Cons!64082) (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(declare-fun b!5917159 () Bool)

(assert (=> b!5917159 (= e!3622921 ((_ map or) call!468989 (derivationStepZipperUp!1145 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (h!70532 s!2326))))))

(declare-fun d!1855728 () Bool)

(declare-fun c!1051648 () Bool)

(assert (=> d!1855728 (= c!1051648 e!3622920)))

(declare-fun res!2480938 () Bool)

(assert (=> d!1855728 (=> (not res!2480938) (not e!3622920))))

(assert (=> d!1855728 (= res!2480938 ((_ is Cons!64082) (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(assert (=> d!1855728 (= (derivationStepZipperUp!1145 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (h!70532 s!2326)) e!3622921)))

(declare-fun b!5917155 () Bool)

(assert (=> b!5917155 (= e!3622919 ((as const (Array Context!10706 Bool)) false))))

(assert (= (and d!1855728 res!2480938) b!5917156))

(assert (= (and d!1855728 c!1051648) b!5917159))

(assert (= (and d!1855728 (not c!1051648)) b!5917158))

(assert (= (and b!5917158 c!1051649) b!5917157))

(assert (= (and b!5917158 (not c!1051649)) b!5917155))

(assert (= (or b!5917159 b!5917157) bm!468984))

(declare-fun m!6814546 () Bool)

(assert (=> bm!468984 m!6814546))

(declare-fun m!6814548 () Bool)

(assert (=> b!5917156 m!6814548))

(declare-fun m!6814550 () Bool)

(assert (=> b!5917159 m!6814550))

(assert (=> b!5916449 d!1855728))

(declare-fun d!1855732 () Bool)

(assert (=> d!1855732 (= (nullable!5964 (reg!16298 r!7292)) (nullableFct!1935 (reg!16298 r!7292)))))

(declare-fun bs!1400712 () Bool)

(assert (= bs!1400712 d!1855732))

(declare-fun m!6814552 () Bool)

(assert (=> bs!1400712 m!6814552))

(assert (=> b!5916908 d!1855732))

(declare-fun d!1855734 () Bool)

(declare-fun res!2480939 () Bool)

(declare-fun e!3622922 () Bool)

(assert (=> d!1855734 (=> res!2480939 e!3622922)))

(assert (=> d!1855734 (= res!2480939 ((_ is Nil!64082) lt!2309704))))

(assert (=> d!1855734 (= (forall!15051 lt!2309704 lambda!322815) e!3622922)))

(declare-fun b!5917160 () Bool)

(declare-fun e!3622923 () Bool)

(assert (=> b!5917160 (= e!3622922 e!3622923)))

(declare-fun res!2480940 () Bool)

(assert (=> b!5917160 (=> (not res!2480940) (not e!3622923))))

(assert (=> b!5917160 (= res!2480940 (dynLambda!25053 lambda!322815 (h!70530 lt!2309704)))))

(declare-fun b!5917161 () Bool)

(assert (=> b!5917161 (= e!3622923 (forall!15051 (t!377595 lt!2309704) lambda!322815))))

(assert (= (and d!1855734 (not res!2480939)) b!5917160))

(assert (= (and b!5917160 res!2480940) b!5917161))

(declare-fun b_lambda!222267 () Bool)

(assert (=> (not b_lambda!222267) (not b!5917160)))

(declare-fun m!6814554 () Bool)

(assert (=> b!5917160 m!6814554))

(declare-fun m!6814556 () Bool)

(assert (=> b!5917161 m!6814556))

(assert (=> d!1855588 d!1855734))

(assert (=> bm!468948 d!1855664))

(declare-fun d!1855738 () Bool)

(declare-fun e!3622937 () Bool)

(assert (=> d!1855738 e!3622937))

(declare-fun c!1051652 () Bool)

(assert (=> d!1855738 (= c!1051652 ((_ is EmptyExpr!15969) (regTwo!32450 r!7292)))))

(declare-fun lt!2309782 () Bool)

(declare-fun e!3622936 () Bool)

(assert (=> d!1855738 (= lt!2309782 e!3622936)))

(declare-fun c!1051653 () Bool)

(assert (=> d!1855738 (= c!1051653 (isEmpty!35940 (_2!36251 (get!22066 lt!2309750))))))

(assert (=> d!1855738 (validRegex!7705 (regTwo!32450 r!7292))))

(assert (=> d!1855738 (= (matchR!8152 (regTwo!32450 r!7292) (_2!36251 (get!22066 lt!2309750))) lt!2309782)))

(declare-fun b!5917171 () Bool)

(assert (=> b!5917171 (= e!3622936 (nullable!5964 (regTwo!32450 r!7292)))))

(declare-fun b!5917172 () Bool)

(declare-fun call!468993 () Bool)

(assert (=> b!5917172 (= e!3622937 (= lt!2309782 call!468993))))

(declare-fun b!5917173 () Bool)

(assert (=> b!5917173 (= e!3622936 (matchR!8152 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750)))) (tail!11564 (_2!36251 (get!22066 lt!2309750)))))))

(declare-fun b!5917174 () Bool)

(declare-fun res!2480948 () Bool)

(declare-fun e!3622935 () Bool)

(assert (=> b!5917174 (=> (not res!2480948) (not e!3622935))))

(assert (=> b!5917174 (= res!2480948 (not call!468993))))

(declare-fun b!5917175 () Bool)

(declare-fun e!3622933 () Bool)

(declare-fun e!3622932 () Bool)

(assert (=> b!5917175 (= e!3622933 e!3622932)))

(declare-fun res!2480950 () Bool)

(assert (=> b!5917175 (=> res!2480950 e!3622932)))

(assert (=> b!5917175 (= res!2480950 call!468993)))

(declare-fun b!5917176 () Bool)

(declare-fun e!3622931 () Bool)

(assert (=> b!5917176 (= e!3622931 (not lt!2309782))))

(declare-fun b!5917177 () Bool)

(assert (=> b!5917177 (= e!3622935 (= (head!12479 (_2!36251 (get!22066 lt!2309750))) (c!1051439 (regTwo!32450 r!7292))))))

(declare-fun b!5917178 () Bool)

(declare-fun e!3622934 () Bool)

(assert (=> b!5917178 (= e!3622934 e!3622933)))

(declare-fun res!2480951 () Bool)

(assert (=> b!5917178 (=> (not res!2480951) (not e!3622933))))

(assert (=> b!5917178 (= res!2480951 (not lt!2309782))))

(declare-fun b!5917179 () Bool)

(assert (=> b!5917179 (= e!3622932 (not (= (head!12479 (_2!36251 (get!22066 lt!2309750))) (c!1051439 (regTwo!32450 r!7292)))))))

(declare-fun b!5917180 () Bool)

(declare-fun res!2480949 () Bool)

(assert (=> b!5917180 (=> res!2480949 e!3622934)))

(assert (=> b!5917180 (= res!2480949 e!3622935)))

(declare-fun res!2480953 () Bool)

(assert (=> b!5917180 (=> (not res!2480953) (not e!3622935))))

(assert (=> b!5917180 (= res!2480953 lt!2309782)))

(declare-fun b!5917181 () Bool)

(declare-fun res!2480946 () Bool)

(assert (=> b!5917181 (=> res!2480946 e!3622934)))

(assert (=> b!5917181 (= res!2480946 (not ((_ is ElementMatch!15969) (regTwo!32450 r!7292))))))

(assert (=> b!5917181 (= e!3622931 e!3622934)))

(declare-fun b!5917182 () Bool)

(assert (=> b!5917182 (= e!3622937 e!3622931)))

(declare-fun c!1051654 () Bool)

(assert (=> b!5917182 (= c!1051654 ((_ is EmptyLang!15969) (regTwo!32450 r!7292)))))

(declare-fun bm!468988 () Bool)

(assert (=> bm!468988 (= call!468993 (isEmpty!35940 (_2!36251 (get!22066 lt!2309750))))))

(declare-fun b!5917183 () Bool)

(declare-fun res!2480947 () Bool)

(assert (=> b!5917183 (=> res!2480947 e!3622932)))

(assert (=> b!5917183 (= res!2480947 (not (isEmpty!35940 (tail!11564 (_2!36251 (get!22066 lt!2309750))))))))

(declare-fun b!5917184 () Bool)

(declare-fun res!2480952 () Bool)

(assert (=> b!5917184 (=> (not res!2480952) (not e!3622935))))

(assert (=> b!5917184 (= res!2480952 (isEmpty!35940 (tail!11564 (_2!36251 (get!22066 lt!2309750)))))))

(assert (= (and d!1855738 c!1051653) b!5917171))

(assert (= (and d!1855738 (not c!1051653)) b!5917173))

(assert (= (and d!1855738 c!1051652) b!5917172))

(assert (= (and d!1855738 (not c!1051652)) b!5917182))

(assert (= (and b!5917182 c!1051654) b!5917176))

(assert (= (and b!5917182 (not c!1051654)) b!5917181))

(assert (= (and b!5917181 (not res!2480946)) b!5917180))

(assert (= (and b!5917180 res!2480953) b!5917174))

(assert (= (and b!5917174 res!2480948) b!5917184))

(assert (= (and b!5917184 res!2480952) b!5917177))

(assert (= (and b!5917180 (not res!2480949)) b!5917178))

(assert (= (and b!5917178 res!2480951) b!5917175))

(assert (= (and b!5917175 (not res!2480950)) b!5917183))

(assert (= (and b!5917183 (not res!2480947)) b!5917179))

(assert (= (or b!5917172 b!5917174 b!5917175) bm!468988))

(declare-fun m!6814564 () Bool)

(assert (=> b!5917171 m!6814564))

(declare-fun m!6814566 () Bool)

(assert (=> b!5917183 m!6814566))

(assert (=> b!5917183 m!6814566))

(declare-fun m!6814568 () Bool)

(assert (=> b!5917183 m!6814568))

(assert (=> b!5917184 m!6814566))

(assert (=> b!5917184 m!6814566))

(assert (=> b!5917184 m!6814568))

(declare-fun m!6814570 () Bool)

(assert (=> b!5917173 m!6814570))

(assert (=> b!5917173 m!6814570))

(declare-fun m!6814572 () Bool)

(assert (=> b!5917173 m!6814572))

(assert (=> b!5917173 m!6814566))

(assert (=> b!5917173 m!6814572))

(assert (=> b!5917173 m!6814566))

(declare-fun m!6814574 () Bool)

(assert (=> b!5917173 m!6814574))

(declare-fun m!6814576 () Bool)

(assert (=> d!1855738 m!6814576))

(declare-fun m!6814578 () Bool)

(assert (=> d!1855738 m!6814578))

(assert (=> b!5917179 m!6814570))

(assert (=> b!5917177 m!6814570))

(assert (=> bm!468988 m!6814576))

(assert (=> b!5916798 d!1855738))

(assert (=> b!5916798 d!1855692))

(declare-fun d!1855748 () Bool)

(declare-fun res!2480954 () Bool)

(declare-fun e!3622938 () Bool)

(assert (=> d!1855748 (=> res!2480954 e!3622938)))

(assert (=> d!1855748 (= res!2480954 ((_ is Nil!64082) (exprs!5853 (h!70531 zl!343))))))

(assert (=> d!1855748 (= (forall!15051 (exprs!5853 (h!70531 zl!343)) lambda!322838) e!3622938)))

(declare-fun b!5917185 () Bool)

(declare-fun e!3622939 () Bool)

(assert (=> b!5917185 (= e!3622938 e!3622939)))

(declare-fun res!2480955 () Bool)

(assert (=> b!5917185 (=> (not res!2480955) (not e!3622939))))

(assert (=> b!5917185 (= res!2480955 (dynLambda!25053 lambda!322838 (h!70530 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5917186 () Bool)

(assert (=> b!5917186 (= e!3622939 (forall!15051 (t!377595 (exprs!5853 (h!70531 zl!343))) lambda!322838))))

(assert (= (and d!1855748 (not res!2480954)) b!5917185))

(assert (= (and b!5917185 res!2480955) b!5917186))

(declare-fun b_lambda!222269 () Bool)

(assert (=> (not b_lambda!222269) (not b!5917185)))

(declare-fun m!6814580 () Bool)

(assert (=> b!5917185 m!6814580))

(declare-fun m!6814582 () Bool)

(assert (=> b!5917186 m!6814582))

(assert (=> d!1855630 d!1855748))

(assert (=> bm!468936 d!1855664))

(declare-fun d!1855750 () Bool)

(declare-fun res!2480961 () Bool)

(declare-fun e!3622945 () Bool)

(assert (=> d!1855750 (=> res!2480961 e!3622945)))

(assert (=> d!1855750 (= res!2480961 ((_ is Nil!64083) lt!2309724))))

(assert (=> d!1855750 (= (noDuplicate!1826 lt!2309724) e!3622945)))

(declare-fun b!5917191 () Bool)

(declare-fun e!3622946 () Bool)

(assert (=> b!5917191 (= e!3622945 e!3622946)))

(declare-fun res!2480962 () Bool)

(assert (=> b!5917191 (=> (not res!2480962) (not e!3622946))))

(declare-fun contains!19954 (List!64207 Context!10706) Bool)

(assert (=> b!5917191 (= res!2480962 (not (contains!19954 (t!377596 lt!2309724) (h!70531 lt!2309724))))))

(declare-fun b!5917192 () Bool)

(assert (=> b!5917192 (= e!3622946 (noDuplicate!1826 (t!377596 lt!2309724)))))

(assert (= (and d!1855750 (not res!2480961)) b!5917191))

(assert (= (and b!5917191 res!2480962) b!5917192))

(declare-fun m!6814584 () Bool)

(assert (=> b!5917191 m!6814584))

(declare-fun m!6814586 () Bool)

(assert (=> b!5917192 m!6814586))

(assert (=> d!1855622 d!1855750))

(declare-fun d!1855754 () Bool)

(declare-fun e!3622956 () Bool)

(assert (=> d!1855754 e!3622956))

(declare-fun res!2480971 () Bool)

(assert (=> d!1855754 (=> (not res!2480971) (not e!3622956))))

(declare-fun res!2480970 () List!64207)

(assert (=> d!1855754 (= res!2480971 (noDuplicate!1826 res!2480970))))

(declare-fun e!3622957 () Bool)

(assert (=> d!1855754 e!3622957))

(assert (=> d!1855754 (= (choose!44634 z!1189) res!2480970)))

(declare-fun b!5917208 () Bool)

(declare-fun e!3622958 () Bool)

(declare-fun tp!1643988 () Bool)

(assert (=> b!5917208 (= e!3622958 tp!1643988)))

(declare-fun b!5917207 () Bool)

(declare-fun tp!1643987 () Bool)

(assert (=> b!5917207 (= e!3622957 (and (inv!83169 (h!70531 res!2480970)) e!3622958 tp!1643987))))

(declare-fun b!5917209 () Bool)

(assert (=> b!5917209 (= e!3622956 (= (content!11795 res!2480970) z!1189))))

(assert (= b!5917207 b!5917208))

(assert (= (and d!1855754 ((_ is Cons!64083) res!2480970)) b!5917207))

(assert (= (and d!1855754 res!2480971) b!5917209))

(declare-fun m!6814616 () Bool)

(assert (=> d!1855754 m!6814616))

(declare-fun m!6814618 () Bool)

(assert (=> b!5917207 m!6814618))

(declare-fun m!6814620 () Bool)

(assert (=> b!5917209 m!6814620))

(assert (=> d!1855622 d!1855754))

(declare-fun d!1855760 () Bool)

(assert (=> d!1855760 (= (isEmpty!35940 (tail!11564 s!2326)) ((_ is Nil!64084) (tail!11564 s!2326)))))

(assert (=> b!5916679 d!1855760))

(assert (=> b!5916679 d!1855720))

(declare-fun b!5917229 () Bool)

(declare-fun res!2480981 () Bool)

(declare-fun e!3622968 () Bool)

(assert (=> b!5917229 (=> (not res!2480981) (not e!3622968))))

(declare-fun lt!2309793 () List!64208)

(declare-fun size!40136 (List!64208) Int)

(assert (=> b!5917229 (= res!2480981 (= (size!40136 lt!2309793) (+ (size!40136 (_1!36251 (get!22066 lt!2309750))) (size!40136 (_2!36251 (get!22066 lt!2309750))))))))

(declare-fun b!5917228 () Bool)

(declare-fun e!3622969 () List!64208)

(assert (=> b!5917228 (= e!3622969 (Cons!64084 (h!70532 (_1!36251 (get!22066 lt!2309750))) (++!14066 (t!377597 (_1!36251 (get!22066 lt!2309750))) (_2!36251 (get!22066 lt!2309750)))))))

(declare-fun b!5917230 () Bool)

(assert (=> b!5917230 (= e!3622968 (or (not (= (_2!36251 (get!22066 lt!2309750)) Nil!64084)) (= lt!2309793 (_1!36251 (get!22066 lt!2309750)))))))

(declare-fun d!1855762 () Bool)

(assert (=> d!1855762 e!3622968))

(declare-fun res!2480982 () Bool)

(assert (=> d!1855762 (=> (not res!2480982) (not e!3622968))))

(declare-fun content!11798 (List!64208) (InoxSet C!32208))

(assert (=> d!1855762 (= res!2480982 (= (content!11798 lt!2309793) ((_ map or) (content!11798 (_1!36251 (get!22066 lt!2309750))) (content!11798 (_2!36251 (get!22066 lt!2309750))))))))

(assert (=> d!1855762 (= lt!2309793 e!3622969)))

(declare-fun c!1051661 () Bool)

(assert (=> d!1855762 (= c!1051661 ((_ is Nil!64084) (_1!36251 (get!22066 lt!2309750))))))

(assert (=> d!1855762 (= (++!14066 (_1!36251 (get!22066 lt!2309750)) (_2!36251 (get!22066 lt!2309750))) lt!2309793)))

(declare-fun b!5917227 () Bool)

(assert (=> b!5917227 (= e!3622969 (_2!36251 (get!22066 lt!2309750)))))

(assert (= (and d!1855762 c!1051661) b!5917227))

(assert (= (and d!1855762 (not c!1051661)) b!5917228))

(assert (= (and d!1855762 res!2480982) b!5917229))

(assert (= (and b!5917229 res!2480981) b!5917230))

(declare-fun m!6814648 () Bool)

(assert (=> b!5917229 m!6814648))

(declare-fun m!6814650 () Bool)

(assert (=> b!5917229 m!6814650))

(declare-fun m!6814652 () Bool)

(assert (=> b!5917229 m!6814652))

(declare-fun m!6814654 () Bool)

(assert (=> b!5917228 m!6814654))

(declare-fun m!6814656 () Bool)

(assert (=> d!1855762 m!6814656))

(declare-fun m!6814658 () Bool)

(assert (=> d!1855762 m!6814658))

(declare-fun m!6814660 () Bool)

(assert (=> d!1855762 m!6814660))

(assert (=> b!5916800 d!1855762))

(assert (=> b!5916800 d!1855692))

(assert (=> d!1855618 d!1855604))

(assert (=> d!1855618 d!1855596))

(declare-fun d!1855770 () Bool)

(assert (=> d!1855770 (= (matchR!8152 r!7292 s!2326) (matchRSpec!3070 r!7292 s!2326))))

(assert (=> d!1855770 true))

(declare-fun _$88!4398 () Unit!157209)

(assert (=> d!1855770 (= (choose!44633 r!7292 s!2326) _$88!4398)))

(declare-fun bs!1400715 () Bool)

(assert (= bs!1400715 d!1855770))

(assert (=> bs!1400715 m!6814102))

(assert (=> bs!1400715 m!6814100))

(assert (=> d!1855618 d!1855770))

(assert (=> d!1855618 d!1855662))

(declare-fun bs!1400717 () Bool)

(declare-fun d!1855776 () Bool)

(assert (= bs!1400717 (and d!1855776 d!1855588)))

(declare-fun lambda!322868 () Int)

(assert (=> bs!1400717 (= lambda!322868 lambda!322815)))

(declare-fun bs!1400718 () Bool)

(assert (= bs!1400718 (and d!1855776 d!1855580)))

(assert (=> bs!1400718 (= lambda!322868 lambda!322809)))

(declare-fun bs!1400719 () Bool)

(assert (= bs!1400719 (and d!1855776 d!1855624)))

(assert (=> bs!1400719 (= lambda!322868 lambda!322837)))

(declare-fun bs!1400720 () Bool)

(assert (= bs!1400720 (and d!1855776 d!1855584)))

(assert (=> bs!1400720 (= lambda!322868 lambda!322812)))

(declare-fun bs!1400721 () Bool)

(assert (= bs!1400721 (and d!1855776 d!1855694)))

(assert (=> bs!1400721 (= lambda!322868 lambda!322865)))

(declare-fun bs!1400722 () Bool)

(assert (= bs!1400722 (and d!1855776 d!1855630)))

(assert (=> bs!1400722 (= lambda!322868 lambda!322838)))

(assert (=> d!1855776 (= (inv!83169 (h!70531 (t!377596 zl!343))) (forall!15051 (exprs!5853 (h!70531 (t!377596 zl!343))) lambda!322868))))

(declare-fun bs!1400723 () Bool)

(assert (= bs!1400723 d!1855776))

(declare-fun m!6814680 () Bool)

(assert (=> bs!1400723 m!6814680))

(assert (=> b!5916992 d!1855776))

(declare-fun d!1855780 () Bool)

(assert (=> d!1855780 (= (isUnion!835 lt!2309701) ((_ is Union!15969) lt!2309701))))

(assert (=> b!5916392 d!1855780))

(declare-fun bs!1400724 () Bool)

(declare-fun d!1855782 () Bool)

(assert (= bs!1400724 (and d!1855782 d!1855580)))

(declare-fun lambda!322869 () Int)

(assert (=> bs!1400724 (= lambda!322869 lambda!322809)))

(declare-fun bs!1400725 () Bool)

(assert (= bs!1400725 (and d!1855782 d!1855624)))

(assert (=> bs!1400725 (= lambda!322869 lambda!322837)))

(declare-fun bs!1400726 () Bool)

(assert (= bs!1400726 (and d!1855782 d!1855584)))

(assert (=> bs!1400726 (= lambda!322869 lambda!322812)))

(declare-fun bs!1400727 () Bool)

(assert (= bs!1400727 (and d!1855782 d!1855694)))

(assert (=> bs!1400727 (= lambda!322869 lambda!322865)))

(declare-fun bs!1400728 () Bool)

(assert (= bs!1400728 (and d!1855782 d!1855630)))

(assert (=> bs!1400728 (= lambda!322869 lambda!322838)))

(declare-fun bs!1400729 () Bool)

(assert (= bs!1400729 (and d!1855782 d!1855776)))

(assert (=> bs!1400729 (= lambda!322869 lambda!322868)))

(declare-fun bs!1400730 () Bool)

(assert (= bs!1400730 (and d!1855782 d!1855588)))

(assert (=> bs!1400730 (= lambda!322869 lambda!322815)))

(declare-fun b!5917251 () Bool)

(declare-fun e!3622987 () Regex!15969)

(assert (=> b!5917251 (= e!3622987 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5917252 () Bool)

(declare-fun e!3622984 () Bool)

(declare-fun lt!2309794 () Regex!15969)

(assert (=> b!5917252 (= e!3622984 (isConcat!920 lt!2309794))))

(declare-fun b!5917253 () Bool)

(declare-fun e!3622985 () Bool)

(assert (=> b!5917253 (= e!3622985 e!3622984)))

(declare-fun c!1051669 () Bool)

(assert (=> b!5917253 (= c!1051669 (isEmpty!35938 (tail!11562 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5917254 () Bool)

(assert (=> b!5917254 (= e!3622985 (isEmptyExpr!1397 lt!2309794))))

(declare-fun e!3622983 () Bool)

(assert (=> d!1855782 e!3622983))

(declare-fun res!2480990 () Bool)

(assert (=> d!1855782 (=> (not res!2480990) (not e!3622983))))

(assert (=> d!1855782 (= res!2480990 (validRegex!7705 lt!2309794))))

(assert (=> d!1855782 (= lt!2309794 e!3622987)))

(declare-fun c!1051671 () Bool)

(declare-fun e!3622986 () Bool)

(assert (=> d!1855782 (= c!1051671 e!3622986)))

(declare-fun res!2480989 () Bool)

(assert (=> d!1855782 (=> (not res!2480989) (not e!3622986))))

(assert (=> d!1855782 (= res!2480989 ((_ is Cons!64082) (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> d!1855782 (forall!15051 (t!377595 (exprs!5853 (h!70531 zl!343))) lambda!322869)))

(assert (=> d!1855782 (= (generalisedConcat!1566 (t!377595 (exprs!5853 (h!70531 zl!343)))) lt!2309794)))

(declare-fun b!5917255 () Bool)

(declare-fun e!3622988 () Regex!15969)

(assert (=> b!5917255 (= e!3622987 e!3622988)))

(declare-fun c!1051670 () Bool)

(assert (=> b!5917255 (= c!1051670 ((_ is Cons!64082) (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5917256 () Bool)

(assert (=> b!5917256 (= e!3622988 EmptyExpr!15969)))

(declare-fun b!5917257 () Bool)

(assert (=> b!5917257 (= e!3622984 (= lt!2309794 (head!12477 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5917258 () Bool)

(assert (=> b!5917258 (= e!3622986 (isEmpty!35938 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5917259 () Bool)

(assert (=> b!5917259 (= e!3622988 (Concat!24814 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343)))) (generalisedConcat!1566 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))))))))

(declare-fun b!5917260 () Bool)

(assert (=> b!5917260 (= e!3622983 e!3622985)))

(declare-fun c!1051672 () Bool)

(assert (=> b!5917260 (= c!1051672 (isEmpty!35938 (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(assert (= (and d!1855782 res!2480989) b!5917258))

(assert (= (and d!1855782 c!1051671) b!5917251))

(assert (= (and d!1855782 (not c!1051671)) b!5917255))

(assert (= (and b!5917255 c!1051670) b!5917259))

(assert (= (and b!5917255 (not c!1051670)) b!5917256))

(assert (= (and d!1855782 res!2480990) b!5917260))

(assert (= (and b!5917260 c!1051672) b!5917254))

(assert (= (and b!5917260 (not c!1051672)) b!5917253))

(assert (= (and b!5917253 c!1051669) b!5917257))

(assert (= (and b!5917253 (not c!1051669)) b!5917252))

(declare-fun m!6814682 () Bool)

(assert (=> b!5917258 m!6814682))

(declare-fun m!6814684 () Bool)

(assert (=> d!1855782 m!6814684))

(declare-fun m!6814686 () Bool)

(assert (=> d!1855782 m!6814686))

(assert (=> b!5917260 m!6814142))

(declare-fun m!6814688 () Bool)

(assert (=> b!5917259 m!6814688))

(declare-fun m!6814690 () Bool)

(assert (=> b!5917254 m!6814690))

(declare-fun m!6814692 () Bool)

(assert (=> b!5917257 m!6814692))

(declare-fun m!6814694 () Bool)

(assert (=> b!5917252 m!6814694))

(declare-fun m!6814696 () Bool)

(assert (=> b!5917253 m!6814696))

(assert (=> b!5917253 m!6814696))

(declare-fun m!6814698 () Bool)

(assert (=> b!5917253 m!6814698))

(assert (=> b!5916741 d!1855782))

(declare-fun b!5917261 () Bool)

(declare-fun e!3622994 () Bool)

(declare-fun e!3622989 () Bool)

(assert (=> b!5917261 (= e!3622994 e!3622989)))

(declare-fun c!1051674 () Bool)

(assert (=> b!5917261 (= c!1051674 ((_ is Union!15969) lt!2309737))))

(declare-fun b!5917262 () Bool)

(declare-fun e!3622993 () Bool)

(declare-fun call!469004 () Bool)

(assert (=> b!5917262 (= e!3622993 call!469004)))

(declare-fun d!1855784 () Bool)

(declare-fun res!2480993 () Bool)

(declare-fun e!3622995 () Bool)

(assert (=> d!1855784 (=> res!2480993 e!3622995)))

(assert (=> d!1855784 (= res!2480993 ((_ is ElementMatch!15969) lt!2309737))))

(assert (=> d!1855784 (= (validRegex!7705 lt!2309737) e!3622995)))

(declare-fun b!5917263 () Bool)

(declare-fun e!3622990 () Bool)

(declare-fun call!469005 () Bool)

(assert (=> b!5917263 (= e!3622990 call!469005)))

(declare-fun b!5917264 () Bool)

(declare-fun res!2480992 () Bool)

(declare-fun e!3622991 () Bool)

(assert (=> b!5917264 (=> (not res!2480992) (not e!3622991))))

(declare-fun call!469003 () Bool)

(assert (=> b!5917264 (= res!2480992 call!469003)))

(assert (=> b!5917264 (= e!3622989 e!3622991)))

(declare-fun b!5917265 () Bool)

(declare-fun e!3622992 () Bool)

(assert (=> b!5917265 (= e!3622992 e!3622993)))

(declare-fun res!2480994 () Bool)

(assert (=> b!5917265 (=> (not res!2480994) (not e!3622993))))

(assert (=> b!5917265 (= res!2480994 call!469003)))

(declare-fun b!5917266 () Bool)

(assert (=> b!5917266 (= e!3622994 e!3622990)))

(declare-fun res!2480995 () Bool)

(assert (=> b!5917266 (= res!2480995 (not (nullable!5964 (reg!16298 lt!2309737))))))

(assert (=> b!5917266 (=> (not res!2480995) (not e!3622990))))

(declare-fun bm!468998 () Bool)

(assert (=> bm!468998 (= call!469003 (validRegex!7705 (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))))))

(declare-fun b!5917267 () Bool)

(declare-fun res!2480991 () Bool)

(assert (=> b!5917267 (=> res!2480991 e!3622992)))

(assert (=> b!5917267 (= res!2480991 (not ((_ is Concat!24814) lt!2309737)))))

(assert (=> b!5917267 (= e!3622989 e!3622992)))

(declare-fun b!5917268 () Bool)

(assert (=> b!5917268 (= e!3622995 e!3622994)))

(declare-fun c!1051673 () Bool)

(assert (=> b!5917268 (= c!1051673 ((_ is Star!15969) lt!2309737))))

(declare-fun b!5917269 () Bool)

(assert (=> b!5917269 (= e!3622991 call!469004)))

(declare-fun bm!468999 () Bool)

(assert (=> bm!468999 (= call!469004 call!469005)))

(declare-fun bm!469000 () Bool)

(assert (=> bm!469000 (= call!469005 (validRegex!7705 (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))))))

(assert (= (and d!1855784 (not res!2480993)) b!5917268))

(assert (= (and b!5917268 c!1051673) b!5917266))

(assert (= (and b!5917268 (not c!1051673)) b!5917261))

(assert (= (and b!5917266 res!2480995) b!5917263))

(assert (= (and b!5917261 c!1051674) b!5917264))

(assert (= (and b!5917261 (not c!1051674)) b!5917267))

(assert (= (and b!5917264 res!2480992) b!5917269))

(assert (= (and b!5917267 (not res!2480991)) b!5917265))

(assert (= (and b!5917265 res!2480994) b!5917262))

(assert (= (or b!5917269 b!5917262) bm!468999))

(assert (= (or b!5917264 b!5917265) bm!468998))

(assert (= (or b!5917263 bm!468999) bm!469000))

(declare-fun m!6814700 () Bool)

(assert (=> b!5917266 m!6814700))

(declare-fun m!6814702 () Bool)

(assert (=> bm!468998 m!6814702))

(declare-fun m!6814704 () Bool)

(assert (=> bm!469000 m!6814704))

(assert (=> d!1855628 d!1855784))

(assert (=> d!1855628 d!1855584))

(assert (=> d!1855628 d!1855588))

(declare-fun b!5917272 () Bool)

(declare-fun res!2480996 () Bool)

(declare-fun e!3622996 () Bool)

(assert (=> b!5917272 (=> (not res!2480996) (not e!3622996))))

(declare-fun lt!2309795 () List!64208)

(assert (=> b!5917272 (= res!2480996 (= (size!40136 lt!2309795) (+ (size!40136 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (size!40136 (t!377597 s!2326)))))))

(declare-fun b!5917271 () Bool)

(declare-fun e!3622997 () List!64208)

(assert (=> b!5917271 (= e!3622997 (Cons!64084 (h!70532 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (++!14066 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (t!377597 s!2326))))))

(declare-fun b!5917273 () Bool)

(assert (=> b!5917273 (= e!3622996 (or (not (= (t!377597 s!2326) Nil!64084)) (= lt!2309795 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(declare-fun d!1855786 () Bool)

(assert (=> d!1855786 e!3622996))

(declare-fun res!2480997 () Bool)

(assert (=> d!1855786 (=> (not res!2480997) (not e!3622996))))

(assert (=> d!1855786 (= res!2480997 (= (content!11798 lt!2309795) ((_ map or) (content!11798 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (content!11798 (t!377597 s!2326)))))))

(assert (=> d!1855786 (= lt!2309795 e!3622997)))

(declare-fun c!1051675 () Bool)

(assert (=> d!1855786 (= c!1051675 ((_ is Nil!64084) (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))

(assert (=> d!1855786 (= (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (t!377597 s!2326)) lt!2309795)))

(declare-fun b!5917270 () Bool)

(assert (=> b!5917270 (= e!3622997 (t!377597 s!2326))))

(assert (= (and d!1855786 c!1051675) b!5917270))

(assert (= (and d!1855786 (not c!1051675)) b!5917271))

(assert (= (and d!1855786 res!2480997) b!5917272))

(assert (= (and b!5917272 res!2480996) b!5917273))

(declare-fun m!6814706 () Bool)

(assert (=> b!5917272 m!6814706))

(assert (=> b!5917272 m!6814346))

(declare-fun m!6814708 () Bool)

(assert (=> b!5917272 m!6814708))

(declare-fun m!6814710 () Bool)

(assert (=> b!5917272 m!6814710))

(declare-fun m!6814712 () Bool)

(assert (=> b!5917271 m!6814712))

(declare-fun m!6814714 () Bool)

(assert (=> d!1855786 m!6814714))

(assert (=> d!1855786 m!6814346))

(declare-fun m!6814716 () Bool)

(assert (=> d!1855786 m!6814716))

(declare-fun m!6814718 () Bool)

(assert (=> d!1855786 m!6814718))

(assert (=> b!5916797 d!1855786))

(declare-fun b!5917280 () Bool)

(declare-fun res!2481002 () Bool)

(declare-fun e!3623000 () Bool)

(assert (=> b!5917280 (=> (not res!2481002) (not e!3623000))))

(declare-fun lt!2309796 () List!64208)

(assert (=> b!5917280 (= res!2481002 (= (size!40136 lt!2309796) (+ (size!40136 Nil!64084) (size!40136 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(declare-fun b!5917279 () Bool)

(declare-fun e!3623001 () List!64208)

(assert (=> b!5917279 (= e!3623001 (Cons!64084 (h!70532 Nil!64084) (++!14066 (t!377597 Nil!64084) (Cons!64084 (h!70532 s!2326) Nil!64084))))))

(declare-fun b!5917281 () Bool)

(assert (=> b!5917281 (= e!3623000 (or (not (= (Cons!64084 (h!70532 s!2326) Nil!64084) Nil!64084)) (= lt!2309796 Nil!64084)))))

(declare-fun d!1855788 () Bool)

(assert (=> d!1855788 e!3623000))

(declare-fun res!2481003 () Bool)

(assert (=> d!1855788 (=> (not res!2481003) (not e!3623000))))

(assert (=> d!1855788 (= res!2481003 (= (content!11798 lt!2309796) ((_ map or) (content!11798 Nil!64084) (content!11798 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(assert (=> d!1855788 (= lt!2309796 e!3623001)))

(declare-fun c!1051676 () Bool)

(assert (=> d!1855788 (= c!1051676 ((_ is Nil!64084) Nil!64084))))

(assert (=> d!1855788 (= (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) lt!2309796)))

(declare-fun b!5917278 () Bool)

(assert (=> b!5917278 (= e!3623001 (Cons!64084 (h!70532 s!2326) Nil!64084))))

(assert (= (and d!1855788 c!1051676) b!5917278))

(assert (= (and d!1855788 (not c!1051676)) b!5917279))

(assert (= (and d!1855788 res!2481003) b!5917280))

(assert (= (and b!5917280 res!2481002) b!5917281))

(declare-fun m!6814720 () Bool)

(assert (=> b!5917280 m!6814720))

(declare-fun m!6814722 () Bool)

(assert (=> b!5917280 m!6814722))

(declare-fun m!6814724 () Bool)

(assert (=> b!5917280 m!6814724))

(declare-fun m!6814726 () Bool)

(assert (=> b!5917279 m!6814726))

(declare-fun m!6814728 () Bool)

(assert (=> d!1855788 m!6814728))

(declare-fun m!6814730 () Bool)

(assert (=> d!1855788 m!6814730))

(declare-fun m!6814732 () Bool)

(assert (=> d!1855788 m!6814732))

(assert (=> b!5916797 d!1855788))

(declare-fun d!1855790 () Bool)

(assert (=> d!1855790 (= (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (t!377597 s!2326)) s!2326)))

(declare-fun lt!2309799 () Unit!157209)

(declare-fun choose!44643 (List!64208 C!32208 List!64208 List!64208) Unit!157209)

(assert (=> d!1855790 (= lt!2309799 (choose!44643 Nil!64084 (h!70532 s!2326) (t!377597 s!2326) s!2326))))

(assert (=> d!1855790 (= (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) (t!377597 s!2326))) s!2326)))

(assert (=> d!1855790 (= (lemmaMoveElementToOtherListKeepsConcatEq!2161 Nil!64084 (h!70532 s!2326) (t!377597 s!2326) s!2326) lt!2309799)))

(declare-fun bs!1400740 () Bool)

(assert (= bs!1400740 d!1855790))

(assert (=> bs!1400740 m!6814346))

(assert (=> bs!1400740 m!6814346))

(assert (=> bs!1400740 m!6814348))

(declare-fun m!6814738 () Bool)

(assert (=> bs!1400740 m!6814738))

(declare-fun m!6814740 () Bool)

(assert (=> bs!1400740 m!6814740))

(assert (=> b!5916797 d!1855790))

(declare-fun b!5917296 () Bool)

(declare-fun e!3623010 () Bool)

(declare-fun lt!2309801 () Option!15860)

(assert (=> b!5917296 (= e!3623010 (not (isDefined!12563 lt!2309801)))))

(declare-fun b!5917297 () Bool)

(declare-fun e!3623011 () Option!15860)

(assert (=> b!5917297 (= e!3623011 None!15859)))

(declare-fun d!1855796 () Bool)

(assert (=> d!1855796 e!3623010))

(declare-fun res!2481016 () Bool)

(assert (=> d!1855796 (=> res!2481016 e!3623010)))

(declare-fun e!3623012 () Bool)

(assert (=> d!1855796 (= res!2481016 e!3623012)))

(declare-fun res!2481013 () Bool)

(assert (=> d!1855796 (=> (not res!2481013) (not e!3623012))))

(assert (=> d!1855796 (= res!2481013 (isDefined!12563 lt!2309801))))

(declare-fun e!3623013 () Option!15860)

(assert (=> d!1855796 (= lt!2309801 e!3623013)))

(declare-fun c!1051680 () Bool)

(declare-fun e!3623009 () Bool)

(assert (=> d!1855796 (= c!1051680 e!3623009)))

(declare-fun res!2481015 () Bool)

(assert (=> d!1855796 (=> (not res!2481015) (not e!3623009))))

(assert (=> d!1855796 (= res!2481015 (matchR!8152 (regOne!32450 r!7292) (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))

(assert (=> d!1855796 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1855796 (= (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (t!377597 s!2326) s!2326) lt!2309801)))

(declare-fun b!5917298 () Bool)

(assert (=> b!5917298 (= e!3623013 (Some!15859 (tuple2!65897 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (t!377597 s!2326))))))

(declare-fun b!5917299 () Bool)

(assert (=> b!5917299 (= e!3623013 e!3623011)))

(declare-fun c!1051681 () Bool)

(assert (=> b!5917299 (= c!1051681 ((_ is Nil!64084) (t!377597 s!2326)))))

(declare-fun b!5917300 () Bool)

(declare-fun res!2481014 () Bool)

(assert (=> b!5917300 (=> (not res!2481014) (not e!3623012))))

(assert (=> b!5917300 (= res!2481014 (matchR!8152 (regOne!32450 r!7292) (_1!36251 (get!22066 lt!2309801))))))

(declare-fun b!5917301 () Bool)

(declare-fun lt!2309803 () Unit!157209)

(declare-fun lt!2309802 () Unit!157209)

(assert (=> b!5917301 (= lt!2309803 lt!2309802)))

(assert (=> b!5917301 (= (++!14066 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (t!377597 (t!377597 s!2326))) s!2326)))

(assert (=> b!5917301 (= lt!2309802 (lemmaMoveElementToOtherListKeepsConcatEq!2161 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (h!70532 (t!377597 s!2326)) (t!377597 (t!377597 s!2326)) s!2326))))

(assert (=> b!5917301 (= e!3623011 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (t!377597 (t!377597 s!2326)) s!2326))))

(declare-fun b!5917302 () Bool)

(declare-fun res!2481012 () Bool)

(assert (=> b!5917302 (=> (not res!2481012) (not e!3623012))))

(assert (=> b!5917302 (= res!2481012 (matchR!8152 (regTwo!32450 r!7292) (_2!36251 (get!22066 lt!2309801))))))

(declare-fun b!5917303 () Bool)

(assert (=> b!5917303 (= e!3623009 (matchR!8152 (regTwo!32450 r!7292) (t!377597 s!2326)))))

(declare-fun b!5917304 () Bool)

(assert (=> b!5917304 (= e!3623012 (= (++!14066 (_1!36251 (get!22066 lt!2309801)) (_2!36251 (get!22066 lt!2309801))) s!2326))))

(assert (= (and d!1855796 res!2481015) b!5917303))

(assert (= (and d!1855796 c!1051680) b!5917298))

(assert (= (and d!1855796 (not c!1051680)) b!5917299))

(assert (= (and b!5917299 c!1051681) b!5917297))

(assert (= (and b!5917299 (not c!1051681)) b!5917301))

(assert (= (and d!1855796 res!2481013) b!5917300))

(assert (= (and b!5917300 res!2481014) b!5917302))

(assert (= (and b!5917302 res!2481012) b!5917304))

(assert (= (and d!1855796 (not res!2481016)) b!5917296))

(declare-fun m!6814754 () Bool)

(assert (=> b!5917296 m!6814754))

(assert (=> d!1855796 m!6814754))

(assert (=> d!1855796 m!6814346))

(declare-fun m!6814756 () Bool)

(assert (=> d!1855796 m!6814756))

(assert (=> d!1855796 m!6814340))

(declare-fun m!6814758 () Bool)

(assert (=> b!5917300 m!6814758))

(declare-fun m!6814760 () Bool)

(assert (=> b!5917300 m!6814760))

(assert (=> b!5917301 m!6814346))

(declare-fun m!6814762 () Bool)

(assert (=> b!5917301 m!6814762))

(assert (=> b!5917301 m!6814762))

(declare-fun m!6814764 () Bool)

(assert (=> b!5917301 m!6814764))

(assert (=> b!5917301 m!6814346))

(declare-fun m!6814766 () Bool)

(assert (=> b!5917301 m!6814766))

(assert (=> b!5917301 m!6814762))

(declare-fun m!6814768 () Bool)

(assert (=> b!5917301 m!6814768))

(assert (=> b!5917302 m!6814758))

(declare-fun m!6814770 () Bool)

(assert (=> b!5917302 m!6814770))

(assert (=> b!5917304 m!6814758))

(declare-fun m!6814772 () Bool)

(assert (=> b!5917304 m!6814772))

(declare-fun m!6814774 () Bool)

(assert (=> b!5917303 m!6814774))

(assert (=> b!5916797 d!1855796))

(declare-fun bs!1400741 () Bool)

(declare-fun d!1855806 () Bool)

(assert (= bs!1400741 (and d!1855806 d!1855580)))

(declare-fun lambda!322873 () Int)

(assert (=> bs!1400741 (= lambda!322873 lambda!322809)))

(declare-fun bs!1400742 () Bool)

(assert (= bs!1400742 (and d!1855806 d!1855624)))

(assert (=> bs!1400742 (= lambda!322873 lambda!322837)))

(declare-fun bs!1400743 () Bool)

(assert (= bs!1400743 (and d!1855806 d!1855584)))

(assert (=> bs!1400743 (= lambda!322873 lambda!322812)))

(declare-fun bs!1400744 () Bool)

(assert (= bs!1400744 (and d!1855806 d!1855694)))

(assert (=> bs!1400744 (= lambda!322873 lambda!322865)))

(declare-fun bs!1400745 () Bool)

(assert (= bs!1400745 (and d!1855806 d!1855782)))

(assert (=> bs!1400745 (= lambda!322873 lambda!322869)))

(declare-fun bs!1400746 () Bool)

(assert (= bs!1400746 (and d!1855806 d!1855630)))

(assert (=> bs!1400746 (= lambda!322873 lambda!322838)))

(declare-fun bs!1400747 () Bool)

(assert (= bs!1400747 (and d!1855806 d!1855776)))

(assert (=> bs!1400747 (= lambda!322873 lambda!322868)))

(declare-fun bs!1400748 () Bool)

(assert (= bs!1400748 (and d!1855806 d!1855588)))

(assert (=> bs!1400748 (= lambda!322873 lambda!322815)))

(declare-fun b!5917305 () Bool)

(declare-fun e!3623017 () Bool)

(assert (=> b!5917305 (= e!3623017 (isEmpty!35938 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5917306 () Bool)

(declare-fun e!3623016 () Regex!15969)

(assert (=> b!5917306 (= e!3623016 (h!70530 (t!377595 (unfocusZipperList!1390 zl!343))))))

(declare-fun b!5917307 () Bool)

(declare-fun e!3623018 () Bool)

(declare-fun lt!2309804 () Regex!15969)

(assert (=> b!5917307 (= e!3623018 (isEmptyLang!1405 lt!2309804))))

(declare-fun b!5917308 () Bool)

(declare-fun e!3623014 () Bool)

(assert (=> b!5917308 (= e!3623014 (= lt!2309804 (head!12477 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5917310 () Bool)

(assert (=> b!5917310 (= e!3623018 e!3623014)))

(declare-fun c!1051682 () Bool)

(assert (=> b!5917310 (= c!1051682 (isEmpty!35938 (tail!11562 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5917311 () Bool)

(assert (=> b!5917311 (= e!3623014 (isUnion!835 lt!2309804))))

(declare-fun b!5917312 () Bool)

(declare-fun e!3623015 () Regex!15969)

(assert (=> b!5917312 (= e!3623016 e!3623015)))

(declare-fun c!1051685 () Bool)

(assert (=> b!5917312 (= c!1051685 ((_ is Cons!64082) (t!377595 (unfocusZipperList!1390 zl!343))))))

(declare-fun b!5917313 () Bool)

(assert (=> b!5917313 (= e!3623015 (Union!15969 (h!70530 (t!377595 (unfocusZipperList!1390 zl!343))) (generalisedUnion!1813 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343))))))))

(declare-fun b!5917314 () Bool)

(assert (=> b!5917314 (= e!3623015 EmptyLang!15969)))

(declare-fun b!5917309 () Bool)

(declare-fun e!3623019 () Bool)

(assert (=> b!5917309 (= e!3623019 e!3623018)))

(declare-fun c!1051683 () Bool)

(assert (=> b!5917309 (= c!1051683 (isEmpty!35938 (t!377595 (unfocusZipperList!1390 zl!343))))))

(assert (=> d!1855806 e!3623019))

(declare-fun res!2481018 () Bool)

(assert (=> d!1855806 (=> (not res!2481018) (not e!3623019))))

(assert (=> d!1855806 (= res!2481018 (validRegex!7705 lt!2309804))))

(assert (=> d!1855806 (= lt!2309804 e!3623016)))

(declare-fun c!1051684 () Bool)

(assert (=> d!1855806 (= c!1051684 e!3623017)))

(declare-fun res!2481017 () Bool)

(assert (=> d!1855806 (=> (not res!2481017) (not e!3623017))))

(assert (=> d!1855806 (= res!2481017 ((_ is Cons!64082) (t!377595 (unfocusZipperList!1390 zl!343))))))

(assert (=> d!1855806 (forall!15051 (t!377595 (unfocusZipperList!1390 zl!343)) lambda!322873)))

(assert (=> d!1855806 (= (generalisedUnion!1813 (t!377595 (unfocusZipperList!1390 zl!343))) lt!2309804)))

(assert (= (and d!1855806 res!2481017) b!5917305))

(assert (= (and d!1855806 c!1051684) b!5917306))

(assert (= (and d!1855806 (not c!1051684)) b!5917312))

(assert (= (and b!5917312 c!1051685) b!5917313))

(assert (= (and b!5917312 (not c!1051685)) b!5917314))

(assert (= (and d!1855806 res!2481018) b!5917309))

(assert (= (and b!5917309 c!1051683) b!5917307))

(assert (= (and b!5917309 (not c!1051683)) b!5917310))

(assert (= (and b!5917310 c!1051682) b!5917308))

(assert (= (and b!5917310 (not c!1051682)) b!5917311))

(declare-fun m!6814780 () Bool)

(assert (=> b!5917308 m!6814780))

(declare-fun m!6814782 () Bool)

(assert (=> b!5917311 m!6814782))

(declare-fun m!6814784 () Bool)

(assert (=> d!1855806 m!6814784))

(declare-fun m!6814786 () Bool)

(assert (=> d!1855806 m!6814786))

(assert (=> b!5917309 m!6814170))

(declare-fun m!6814788 () Bool)

(assert (=> b!5917307 m!6814788))

(declare-fun m!6814790 () Bool)

(assert (=> b!5917310 m!6814790))

(assert (=> b!5917310 m!6814790))

(declare-fun m!6814792 () Bool)

(assert (=> b!5917310 m!6814792))

(declare-fun m!6814794 () Bool)

(assert (=> b!5917313 m!6814794))

(declare-fun m!6814796 () Bool)

(assert (=> b!5917305 m!6814796))

(assert (=> b!5916394 d!1855806))

(assert (=> d!1855648 d!1855634))

(assert (=> d!1855648 d!1855670))

(assert (=> d!1855648 d!1855660))

(declare-fun d!1855810 () Bool)

(assert (=> d!1855810 (= (Exists!3039 lambda!322850) (choose!44639 lambda!322850))))

(declare-fun bs!1400749 () Bool)

(assert (= bs!1400749 d!1855810))

(declare-fun m!6814798 () Bool)

(assert (=> bs!1400749 m!6814798))

(assert (=> d!1855648 d!1855810))

(declare-fun bs!1400770 () Bool)

(declare-fun d!1855812 () Bool)

(assert (= bs!1400770 (and d!1855812 d!1855652)))

(declare-fun lambda!322879 () Int)

(assert (=> bs!1400770 (not (= lambda!322879 lambda!322859))))

(assert (=> bs!1400770 (= lambda!322879 lambda!322857)))

(declare-fun bs!1400772 () Bool)

(assert (= bs!1400772 (and d!1855812 b!5916342)))

(assert (=> bs!1400772 (not (= lambda!322879 lambda!322806))))

(declare-fun bs!1400773 () Bool)

(assert (= bs!1400773 (and d!1855812 b!5916600)))

(assert (=> bs!1400773 (not (= lambda!322879 lambda!322826))))

(declare-fun bs!1400775 () Bool)

(assert (= bs!1400775 (and d!1855812 b!5917042)))

(assert (=> bs!1400775 (not (= lambda!322879 lambda!322864))))

(declare-fun bs!1400777 () Bool)

(assert (= bs!1400777 (and d!1855812 d!1855648)))

(assert (=> bs!1400777 (= lambda!322879 lambda!322850)))

(declare-fun bs!1400779 () Bool)

(assert (= bs!1400779 (and d!1855812 b!5916603)))

(assert (=> bs!1400779 (not (= lambda!322879 lambda!322827))))

(declare-fun bs!1400780 () Bool)

(assert (= bs!1400780 (and d!1855812 b!5917039)))

(assert (=> bs!1400780 (not (= lambda!322879 lambda!322863))))

(assert (=> bs!1400772 (= lambda!322879 lambda!322805)))

(assert (=> d!1855812 true))

(assert (=> d!1855812 true))

(assert (=> d!1855812 true))

(assert (=> d!1855812 (= (isDefined!12563 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) Nil!64084 s!2326 s!2326)) (Exists!3039 lambda!322879))))

(assert (=> d!1855812 true))

(declare-fun _$89!1960 () Unit!157209)

(assert (=> d!1855812 (= (choose!44640 (regOne!32450 r!7292) (regTwo!32450 r!7292) s!2326) _$89!1960)))

(declare-fun bs!1400781 () Bool)

(assert (= bs!1400781 d!1855812))

(assert (=> bs!1400781 m!6814122))

(assert (=> bs!1400781 m!6814122))

(assert (=> bs!1400781 m!6814124))

(declare-fun m!6814816 () Bool)

(assert (=> bs!1400781 m!6814816))

(assert (=> d!1855648 d!1855812))

(declare-fun d!1855828 () Bool)

(assert (=> d!1855828 (= (isEmpty!35938 (tail!11562 (exprs!5853 (h!70531 zl!343)))) ((_ is Nil!64082) (tail!11562 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> b!5916735 d!1855828))

(declare-fun d!1855830 () Bool)

(assert (=> d!1855830 (= (tail!11562 (exprs!5853 (h!70531 zl!343))) (t!377595 (exprs!5853 (h!70531 zl!343))))))

(assert (=> b!5916735 d!1855830))

(declare-fun d!1855832 () Bool)

(assert (=> d!1855832 (= (isEmptyLang!1405 lt!2309701) ((_ is EmptyLang!15969) lt!2309701))))

(assert (=> b!5916388 d!1855832))

(declare-fun bs!1400782 () Bool)

(declare-fun d!1855834 () Bool)

(assert (= bs!1400782 (and d!1855834 d!1855580)))

(declare-fun lambda!322880 () Int)

(assert (=> bs!1400782 (= lambda!322880 lambda!322809)))

(declare-fun bs!1400783 () Bool)

(assert (= bs!1400783 (and d!1855834 d!1855624)))

(assert (=> bs!1400783 (= lambda!322880 lambda!322837)))

(declare-fun bs!1400784 () Bool)

(assert (= bs!1400784 (and d!1855834 d!1855584)))

(assert (=> bs!1400784 (= lambda!322880 lambda!322812)))

(declare-fun bs!1400785 () Bool)

(assert (= bs!1400785 (and d!1855834 d!1855694)))

(assert (=> bs!1400785 (= lambda!322880 lambda!322865)))

(declare-fun bs!1400786 () Bool)

(assert (= bs!1400786 (and d!1855834 d!1855782)))

(assert (=> bs!1400786 (= lambda!322880 lambda!322869)))

(declare-fun bs!1400787 () Bool)

(assert (= bs!1400787 (and d!1855834 d!1855806)))

(assert (=> bs!1400787 (= lambda!322880 lambda!322873)))

(declare-fun bs!1400788 () Bool)

(assert (= bs!1400788 (and d!1855834 d!1855630)))

(assert (=> bs!1400788 (= lambda!322880 lambda!322838)))

(declare-fun bs!1400789 () Bool)

(assert (= bs!1400789 (and d!1855834 d!1855776)))

(assert (=> bs!1400789 (= lambda!322880 lambda!322868)))

(declare-fun bs!1400790 () Bool)

(assert (= bs!1400790 (and d!1855834 d!1855588)))

(assert (=> bs!1400790 (= lambda!322880 lambda!322815)))

(assert (=> d!1855834 (= (inv!83169 setElem!40166) (forall!15051 (exprs!5853 setElem!40166) lambda!322880))))

(declare-fun bs!1400791 () Bool)

(assert (= bs!1400791 d!1855834))

(declare-fun m!6814828 () Bool)

(assert (=> bs!1400791 m!6814828))

(assert (=> setNonEmpty!40166 d!1855834))

(declare-fun d!1855840 () Bool)

(assert (=> d!1855840 (= (isEmpty!35938 (t!377595 (unfocusZipperList!1390 zl!343))) ((_ is Nil!64082) (t!377595 (unfocusZipperList!1390 zl!343))))))

(assert (=> b!5916386 d!1855840))

(declare-fun d!1855842 () Bool)

(assert (=> d!1855842 (= (isEmpty!35938 (unfocusZipperList!1390 zl!343)) ((_ is Nil!64082) (unfocusZipperList!1390 zl!343)))))

(assert (=> b!5916390 d!1855842))

(declare-fun d!1855844 () Bool)

(assert (=> d!1855844 (= (head!12477 (exprs!5853 (h!70531 zl!343))) (h!70530 (exprs!5853 (h!70531 zl!343))))))

(assert (=> b!5916739 d!1855844))

(declare-fun b!5917365 () Bool)

(declare-fun e!3623060 () Bool)

(declare-fun e!3623055 () Bool)

(assert (=> b!5917365 (= e!3623060 e!3623055)))

(declare-fun c!1051700 () Bool)

(assert (=> b!5917365 (= c!1051700 ((_ is Union!15969) (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))

(declare-fun b!5917366 () Bool)

(declare-fun e!3623059 () Bool)

(declare-fun call!469019 () Bool)

(assert (=> b!5917366 (= e!3623059 call!469019)))

(declare-fun d!1855846 () Bool)

(declare-fun res!2481048 () Bool)

(declare-fun e!3623061 () Bool)

(assert (=> d!1855846 (=> res!2481048 e!3623061)))

(assert (=> d!1855846 (= res!2481048 ((_ is ElementMatch!15969) (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))

(assert (=> d!1855846 (= (validRegex!7705 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) e!3623061)))

(declare-fun b!5917367 () Bool)

(declare-fun e!3623056 () Bool)

(declare-fun call!469020 () Bool)

(assert (=> b!5917367 (= e!3623056 call!469020)))

(declare-fun b!5917368 () Bool)

(declare-fun res!2481047 () Bool)

(declare-fun e!3623057 () Bool)

(assert (=> b!5917368 (=> (not res!2481047) (not e!3623057))))

(declare-fun call!469018 () Bool)

(assert (=> b!5917368 (= res!2481047 call!469018)))

(assert (=> b!5917368 (= e!3623055 e!3623057)))

(declare-fun b!5917369 () Bool)

(declare-fun e!3623058 () Bool)

(assert (=> b!5917369 (= e!3623058 e!3623059)))

(declare-fun res!2481049 () Bool)

(assert (=> b!5917369 (=> (not res!2481049) (not e!3623059))))

(assert (=> b!5917369 (= res!2481049 call!469018)))

(declare-fun b!5917370 () Bool)

(assert (=> b!5917370 (= e!3623060 e!3623056)))

(declare-fun res!2481050 () Bool)

(assert (=> b!5917370 (= res!2481050 (not (nullable!5964 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))

(assert (=> b!5917370 (=> (not res!2481050) (not e!3623056))))

(declare-fun bm!469013 () Bool)

(assert (=> bm!469013 (= call!469018 (validRegex!7705 (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))

(declare-fun b!5917371 () Bool)

(declare-fun res!2481046 () Bool)

(assert (=> b!5917371 (=> res!2481046 e!3623058)))

(assert (=> b!5917371 (= res!2481046 (not ((_ is Concat!24814) (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))

(assert (=> b!5917371 (= e!3623055 e!3623058)))

(declare-fun b!5917372 () Bool)

(assert (=> b!5917372 (= e!3623061 e!3623060)))

(declare-fun c!1051699 () Bool)

(assert (=> b!5917372 (= c!1051699 ((_ is Star!15969) (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))

(declare-fun b!5917373 () Bool)

(assert (=> b!5917373 (= e!3623057 call!469019)))

(declare-fun bm!469014 () Bool)

(assert (=> bm!469014 (= call!469019 call!469020)))

(declare-fun bm!469015 () Bool)

(assert (=> bm!469015 (= call!469020 (validRegex!7705 (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))))

(assert (= (and d!1855846 (not res!2481048)) b!5917372))

(assert (= (and b!5917372 c!1051699) b!5917370))

(assert (= (and b!5917372 (not c!1051699)) b!5917365))

(assert (= (and b!5917370 res!2481050) b!5917367))

(assert (= (and b!5917365 c!1051700) b!5917368))

(assert (= (and b!5917365 (not c!1051700)) b!5917371))

(assert (= (and b!5917368 res!2481047) b!5917373))

(assert (= (and b!5917371 (not res!2481046)) b!5917369))

(assert (= (and b!5917369 res!2481049) b!5917366))

(assert (= (or b!5917373 b!5917366) bm!469014))

(assert (= (or b!5917368 b!5917369) bm!469013))

(assert (= (or b!5917367 bm!469014) bm!469015))

(declare-fun m!6814838 () Bool)

(assert (=> b!5917370 m!6814838))

(declare-fun m!6814840 () Bool)

(assert (=> bm!469013 m!6814840))

(declare-fun m!6814842 () Bool)

(assert (=> bm!469015 m!6814842))

(assert (=> bm!468957 d!1855846))

(declare-fun b!5917376 () Bool)

(declare-fun e!3623073 () (InoxSet Context!10706))

(declare-fun call!469029 () (InoxSet Context!10706))

(declare-fun call!469032 () (InoxSet Context!10706))

(assert (=> b!5917376 (= e!3623073 ((_ map or) call!469029 call!469032))))

(declare-fun bm!469017 () Bool)

(declare-fun call!469025 () (InoxSet Context!10706))

(assert (=> bm!469017 (= call!469025 call!469029)))

(declare-fun bm!469018 () Bool)

(declare-fun call!469022 () List!64206)

(declare-fun call!469023 () List!64206)

(assert (=> bm!469018 (= call!469022 call!469023)))

(declare-fun b!5917380 () Bool)

(declare-fun e!3623071 () (InoxSet Context!10706))

(declare-fun call!469027 () (InoxSet Context!10706))

(assert (=> b!5917380 (= e!3623071 call!469027)))

(declare-fun c!1051707 () Bool)

(declare-fun c!1051702 () Bool)

(declare-fun bm!469019 () Bool)

(assert (=> bm!469019 (= call!469023 ($colon$colon!1856 (exprs!5853 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925))) (ite (or c!1051707 c!1051702) (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))

(declare-fun b!5917383 () Bool)

(assert (=> b!5917383 (= e!3623071 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5917385 () Bool)

(declare-fun e!3623063 () (InoxSet Context!10706))

(assert (=> b!5917385 (= e!3623063 ((_ map or) call!469032 call!469025))))

(declare-fun c!1051703 () Bool)

(declare-fun b!5917386 () Bool)

(assert (=> b!5917386 (= c!1051703 ((_ is Star!15969) (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))

(declare-fun e!3623065 () (InoxSet Context!10706))

(assert (=> b!5917386 (= e!3623065 e!3623071)))

(declare-fun c!1051710 () Bool)

(declare-fun d!1855854 () Bool)

(assert (=> d!1855854 (= c!1051710 (and ((_ is ElementMatch!15969) (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (= (c!1051439 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (h!70532 s!2326))))))

(declare-fun e!3623069 () (InoxSet Context!10706))

(assert (=> d!1855854 (= (derivationStepZipperDown!1219 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (h!70532 s!2326)) e!3623069)))

(declare-fun bm!469022 () Bool)

(declare-fun c!1051708 () Bool)

(assert (=> bm!469022 (= call!469032 (derivationStepZipperDown!1219 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))) (ite c!1051708 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469023)) (h!70532 s!2326)))))

(declare-fun b!5917388 () Bool)

(assert (=> b!5917388 (= e!3623069 (store ((as const (Array Context!10706 Bool)) false) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) true))))

(declare-fun bm!469025 () Bool)

(assert (=> bm!469025 (= call!469029 (derivationStepZipperDown!1219 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))) (ite (or c!1051708 c!1051707) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469022)) (h!70532 s!2326)))))

(declare-fun b!5917391 () Bool)

(declare-fun e!3623062 () Bool)

(assert (=> b!5917391 (= c!1051707 e!3623062)))

(declare-fun res!2481052 () Bool)

(assert (=> b!5917391 (=> (not res!2481052) (not e!3623062))))

(assert (=> b!5917391 (= res!2481052 ((_ is Concat!24814) (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))

(assert (=> b!5917391 (= e!3623073 e!3623063)))

(declare-fun b!5917392 () Bool)

(assert (=> b!5917392 (= e!3623065 call!469027)))

(declare-fun b!5917393 () Bool)

(assert (=> b!5917393 (= e!3623063 e!3623065)))

(assert (=> b!5917393 (= c!1051702 ((_ is Concat!24814) (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))

(declare-fun b!5917394 () Bool)

(assert (=> b!5917394 (= e!3623069 e!3623073)))

(assert (=> b!5917394 (= c!1051708 ((_ is Union!15969) (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))

(declare-fun bm!469027 () Bool)

(assert (=> bm!469027 (= call!469027 call!469025)))

(declare-fun b!5917395 () Bool)

(assert (=> b!5917395 (= e!3623062 (nullable!5964 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))

(assert (= (and d!1855854 c!1051710) b!5917388))

(assert (= (and d!1855854 (not c!1051710)) b!5917394))

(assert (= (and b!5917394 c!1051708) b!5917376))

(assert (= (and b!5917394 (not c!1051708)) b!5917391))

(assert (= (and b!5917391 res!2481052) b!5917395))

(assert (= (and b!5917391 c!1051707) b!5917385))

(assert (= (and b!5917391 (not c!1051707)) b!5917393))

(assert (= (and b!5917393 c!1051702) b!5917392))

(assert (= (and b!5917393 (not c!1051702)) b!5917386))

(assert (= (and b!5917386 c!1051703) b!5917380))

(assert (= (and b!5917386 (not c!1051703)) b!5917383))

(assert (= (or b!5917392 b!5917380) bm!469018))

(assert (= (or b!5917392 b!5917380) bm!469027))

(assert (= (or b!5917385 bm!469018) bm!469019))

(assert (= (or b!5917385 bm!469027) bm!469017))

(assert (= (or b!5917376 b!5917385) bm!469022))

(assert (= (or b!5917376 bm!469017) bm!469025))

(declare-fun m!6814850 () Bool)

(assert (=> b!5917388 m!6814850))

(declare-fun m!6814854 () Bool)

(assert (=> bm!469022 m!6814854))

(declare-fun m!6814860 () Bool)

(assert (=> bm!469025 m!6814860))

(declare-fun m!6814862 () Bool)

(assert (=> b!5917395 m!6814862))

(declare-fun m!6814864 () Bool)

(assert (=> bm!469019 m!6814864))

(assert (=> bm!468924 d!1855854))

(declare-fun b!5917396 () Bool)

(declare-fun e!3623079 () Bool)

(declare-fun e!3623074 () Bool)

(assert (=> b!5917396 (= e!3623079 e!3623074)))

(declare-fun c!1051712 () Bool)

(assert (=> b!5917396 (= c!1051712 ((_ is Union!15969) lt!2309728))))

(declare-fun b!5917397 () Bool)

(declare-fun e!3623078 () Bool)

(declare-fun call!469034 () Bool)

(assert (=> b!5917397 (= e!3623078 call!469034)))

(declare-fun d!1855862 () Bool)

(declare-fun res!2481056 () Bool)

(declare-fun e!3623080 () Bool)

(assert (=> d!1855862 (=> res!2481056 e!3623080)))

(assert (=> d!1855862 (= res!2481056 ((_ is ElementMatch!15969) lt!2309728))))

(assert (=> d!1855862 (= (validRegex!7705 lt!2309728) e!3623080)))

(declare-fun b!5917398 () Bool)

(declare-fun e!3623075 () Bool)

(declare-fun call!469035 () Bool)

(assert (=> b!5917398 (= e!3623075 call!469035)))

(declare-fun b!5917399 () Bool)

(declare-fun res!2481055 () Bool)

(declare-fun e!3623076 () Bool)

(assert (=> b!5917399 (=> (not res!2481055) (not e!3623076))))

(declare-fun call!469033 () Bool)

(assert (=> b!5917399 (= res!2481055 call!469033)))

(assert (=> b!5917399 (= e!3623074 e!3623076)))

(declare-fun b!5917400 () Bool)

(declare-fun e!3623077 () Bool)

(assert (=> b!5917400 (= e!3623077 e!3623078)))

(declare-fun res!2481057 () Bool)

(assert (=> b!5917400 (=> (not res!2481057) (not e!3623078))))

(assert (=> b!5917400 (= res!2481057 call!469033)))

(declare-fun b!5917401 () Bool)

(assert (=> b!5917401 (= e!3623079 e!3623075)))

(declare-fun res!2481058 () Bool)

(assert (=> b!5917401 (= res!2481058 (not (nullable!5964 (reg!16298 lt!2309728))))))

(assert (=> b!5917401 (=> (not res!2481058) (not e!3623075))))

(declare-fun bm!469028 () Bool)

(assert (=> bm!469028 (= call!469033 (validRegex!7705 (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))))))

(declare-fun b!5917402 () Bool)

(declare-fun res!2481053 () Bool)

(assert (=> b!5917402 (=> res!2481053 e!3623077)))

(assert (=> b!5917402 (= res!2481053 (not ((_ is Concat!24814) lt!2309728)))))

(assert (=> b!5917402 (= e!3623074 e!3623077)))

(declare-fun b!5917403 () Bool)

(assert (=> b!5917403 (= e!3623080 e!3623079)))

(declare-fun c!1051711 () Bool)

(assert (=> b!5917403 (= c!1051711 ((_ is Star!15969) lt!2309728))))

(declare-fun b!5917404 () Bool)

(assert (=> b!5917404 (= e!3623076 call!469034)))

(declare-fun bm!469029 () Bool)

(assert (=> bm!469029 (= call!469034 call!469035)))

(declare-fun bm!469030 () Bool)

(assert (=> bm!469030 (= call!469035 (validRegex!7705 (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))))))

(assert (= (and d!1855862 (not res!2481056)) b!5917403))

(assert (= (and b!5917403 c!1051711) b!5917401))

(assert (= (and b!5917403 (not c!1051711)) b!5917396))

(assert (= (and b!5917401 res!2481058) b!5917398))

(assert (= (and b!5917396 c!1051712) b!5917399))

(assert (= (and b!5917396 (not c!1051712)) b!5917402))

(assert (= (and b!5917399 res!2481055) b!5917404))

(assert (= (and b!5917402 (not res!2481053)) b!5917400))

(assert (= (and b!5917400 res!2481057) b!5917397))

(assert (= (or b!5917404 b!5917397) bm!469029))

(assert (= (or b!5917399 b!5917400) bm!469028))

(assert (= (or b!5917398 bm!469029) bm!469030))

(declare-fun m!6814866 () Bool)

(assert (=> b!5917401 m!6814866))

(declare-fun m!6814868 () Bool)

(assert (=> bm!469028 m!6814868))

(declare-fun m!6814870 () Bool)

(assert (=> bm!469030 m!6814870))

(assert (=> d!1855624 d!1855862))

(declare-fun d!1855870 () Bool)

(declare-fun res!2481067 () Bool)

(declare-fun e!3623088 () Bool)

(assert (=> d!1855870 (=> res!2481067 e!3623088)))

(assert (=> d!1855870 (= res!2481067 ((_ is Nil!64082) (exprs!5853 (h!70531 zl!343))))))

(assert (=> d!1855870 (= (forall!15051 (exprs!5853 (h!70531 zl!343)) lambda!322837) e!3623088)))

(declare-fun b!5917419 () Bool)

(declare-fun e!3623089 () Bool)

(assert (=> b!5917419 (= e!3623088 e!3623089)))

(declare-fun res!2481068 () Bool)

(assert (=> b!5917419 (=> (not res!2481068) (not e!3623089))))

(assert (=> b!5917419 (= res!2481068 (dynLambda!25053 lambda!322837 (h!70530 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5917420 () Bool)

(assert (=> b!5917420 (= e!3623089 (forall!15051 (t!377595 (exprs!5853 (h!70531 zl!343))) lambda!322837))))

(assert (= (and d!1855870 (not res!2481067)) b!5917419))

(assert (= (and b!5917419 res!2481068) b!5917420))

(declare-fun b_lambda!222273 () Bool)

(assert (=> (not b_lambda!222273) (not b!5917419)))

(declare-fun m!6814872 () Bool)

(assert (=> b!5917419 m!6814872))

(declare-fun m!6814874 () Bool)

(assert (=> b!5917420 m!6814874))

(assert (=> d!1855624 d!1855870))

(declare-fun d!1855872 () Bool)

(assert (=> d!1855872 true))

(assert (=> d!1855872 true))

(declare-fun res!2481069 () Bool)

(assert (=> d!1855872 (= (choose!44639 lambda!322805) res!2481069)))

(assert (=> d!1855644 d!1855872))

(declare-fun d!1855874 () Bool)

(assert (=> d!1855874 (= (isConcat!920 lt!2309728) ((_ is Concat!24814) lt!2309728))))

(assert (=> b!5916734 d!1855874))

(declare-fun d!1855878 () Bool)

(assert (=> d!1855878 (= (nullable!5964 r!7292) (nullableFct!1935 r!7292))))

(declare-fun bs!1400794 () Bool)

(assert (= bs!1400794 d!1855878))

(declare-fun m!6814888 () Bool)

(assert (=> bs!1400794 m!6814888))

(assert (=> b!5916666 d!1855878))

(declare-fun d!1855880 () Bool)

(assert (=> d!1855880 (= (Exists!3039 lambda!322857) (choose!44639 lambda!322857))))

(declare-fun bs!1400795 () Bool)

(assert (= bs!1400795 d!1855880))

(declare-fun m!6814890 () Bool)

(assert (=> bs!1400795 m!6814890))

(assert (=> d!1855652 d!1855880))

(declare-fun d!1855882 () Bool)

(assert (=> d!1855882 (= (Exists!3039 lambda!322859) (choose!44639 lambda!322859))))

(declare-fun bs!1400796 () Bool)

(assert (= bs!1400796 d!1855882))

(declare-fun m!6814892 () Bool)

(assert (=> bs!1400796 m!6814892))

(assert (=> d!1855652 d!1855882))

(declare-fun bs!1400798 () Bool)

(declare-fun d!1855884 () Bool)

(assert (= bs!1400798 (and d!1855884 d!1855652)))

(declare-fun lambda!322885 () Int)

(assert (=> bs!1400798 (not (= lambda!322885 lambda!322859))))

(declare-fun bs!1400799 () Bool)

(assert (= bs!1400799 (and d!1855884 d!1855812)))

(assert (=> bs!1400799 (= lambda!322885 lambda!322879)))

(assert (=> bs!1400798 (= lambda!322885 lambda!322857)))

(declare-fun bs!1400800 () Bool)

(assert (= bs!1400800 (and d!1855884 b!5916342)))

(assert (=> bs!1400800 (not (= lambda!322885 lambda!322806))))

(declare-fun bs!1400802 () Bool)

(assert (= bs!1400802 (and d!1855884 b!5916600)))

(assert (=> bs!1400802 (not (= lambda!322885 lambda!322826))))

(declare-fun bs!1400805 () Bool)

(assert (= bs!1400805 (and d!1855884 b!5917042)))

(assert (=> bs!1400805 (not (= lambda!322885 lambda!322864))))

(declare-fun bs!1400807 () Bool)

(assert (= bs!1400807 (and d!1855884 d!1855648)))

(assert (=> bs!1400807 (= lambda!322885 lambda!322850)))

(declare-fun bs!1400810 () Bool)

(assert (= bs!1400810 (and d!1855884 b!5916603)))

(assert (=> bs!1400810 (not (= lambda!322885 lambda!322827))))

(declare-fun bs!1400811 () Bool)

(assert (= bs!1400811 (and d!1855884 b!5917039)))

(assert (=> bs!1400811 (not (= lambda!322885 lambda!322863))))

(assert (=> bs!1400800 (= lambda!322885 lambda!322805)))

(assert (=> d!1855884 true))

(assert (=> d!1855884 true))

(assert (=> d!1855884 true))

(declare-fun lambda!322888 () Int)

(assert (=> bs!1400798 (= lambda!322888 lambda!322859)))

(assert (=> bs!1400799 (not (= lambda!322888 lambda!322879))))

(assert (=> bs!1400798 (not (= lambda!322888 lambda!322857))))

(assert (=> bs!1400800 (= lambda!322888 lambda!322806)))

(assert (=> bs!1400802 (not (= lambda!322888 lambda!322826))))

(assert (=> bs!1400805 (= (and (= (regOne!32450 r!7292) (regOne!32450 (regTwo!32451 r!7292))) (= (regTwo!32450 r!7292) (regTwo!32450 (regTwo!32451 r!7292)))) (= lambda!322888 lambda!322864))))

(declare-fun bs!1400819 () Bool)

(assert (= bs!1400819 d!1855884))

(assert (=> bs!1400819 (not (= lambda!322888 lambda!322885))))

(assert (=> bs!1400807 (not (= lambda!322888 lambda!322850))))

(assert (=> bs!1400810 (= lambda!322888 lambda!322827)))

(assert (=> bs!1400811 (not (= lambda!322888 lambda!322863))))

(assert (=> bs!1400800 (not (= lambda!322888 lambda!322805))))

(assert (=> d!1855884 true))

(assert (=> d!1855884 true))

(assert (=> d!1855884 true))

(assert (=> d!1855884 (= (Exists!3039 lambda!322885) (Exists!3039 lambda!322888))))

(assert (=> d!1855884 true))

(declare-fun _$90!1581 () Unit!157209)

(assert (=> d!1855884 (= (choose!44641 (regOne!32450 r!7292) (regTwo!32450 r!7292) s!2326) _$90!1581)))

(declare-fun m!6814962 () Bool)

(assert (=> bs!1400819 m!6814962))

(declare-fun m!6814964 () Bool)

(assert (=> bs!1400819 m!6814964))

(assert (=> d!1855652 d!1855884))

(assert (=> d!1855652 d!1855670))

(declare-fun b!5917488 () Bool)

(declare-fun e!3623139 () Bool)

(declare-fun e!3623134 () Bool)

(assert (=> b!5917488 (= e!3623139 e!3623134)))

(declare-fun c!1051732 () Bool)

(assert (=> b!5917488 (= c!1051732 ((_ is Union!15969) (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))

(declare-fun b!5917489 () Bool)

(declare-fun e!3623138 () Bool)

(declare-fun call!469046 () Bool)

(assert (=> b!5917489 (= e!3623138 call!469046)))

(declare-fun d!1855904 () Bool)

(declare-fun res!2481106 () Bool)

(declare-fun e!3623140 () Bool)

(assert (=> d!1855904 (=> res!2481106 e!3623140)))

(assert (=> d!1855904 (= res!2481106 ((_ is ElementMatch!15969) (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))

(assert (=> d!1855904 (= (validRegex!7705 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) e!3623140)))

(declare-fun b!5917490 () Bool)

(declare-fun e!3623135 () Bool)

(declare-fun call!469047 () Bool)

(assert (=> b!5917490 (= e!3623135 call!469047)))

(declare-fun b!5917491 () Bool)

(declare-fun res!2481105 () Bool)

(declare-fun e!3623136 () Bool)

(assert (=> b!5917491 (=> (not res!2481105) (not e!3623136))))

(declare-fun call!469045 () Bool)

(assert (=> b!5917491 (= res!2481105 call!469045)))

(assert (=> b!5917491 (= e!3623134 e!3623136)))

(declare-fun b!5917492 () Bool)

(declare-fun e!3623137 () Bool)

(assert (=> b!5917492 (= e!3623137 e!3623138)))

(declare-fun res!2481107 () Bool)

(assert (=> b!5917492 (=> (not res!2481107) (not e!3623138))))

(assert (=> b!5917492 (= res!2481107 call!469045)))

(declare-fun b!5917493 () Bool)

(assert (=> b!5917493 (= e!3623139 e!3623135)))

(declare-fun res!2481108 () Bool)

(assert (=> b!5917493 (= res!2481108 (not (nullable!5964 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))

(assert (=> b!5917493 (=> (not res!2481108) (not e!3623135))))

(declare-fun bm!469040 () Bool)

(assert (=> bm!469040 (= call!469045 (validRegex!7705 (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))

(declare-fun b!5917494 () Bool)

(declare-fun res!2481104 () Bool)

(assert (=> b!5917494 (=> res!2481104 e!3623137)))

(assert (=> b!5917494 (= res!2481104 (not ((_ is Concat!24814) (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))

(assert (=> b!5917494 (= e!3623134 e!3623137)))

(declare-fun b!5917495 () Bool)

(assert (=> b!5917495 (= e!3623140 e!3623139)))

(declare-fun c!1051731 () Bool)

(assert (=> b!5917495 (= c!1051731 ((_ is Star!15969) (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))

(declare-fun b!5917496 () Bool)

(assert (=> b!5917496 (= e!3623136 call!469046)))

(declare-fun bm!469041 () Bool)

(assert (=> bm!469041 (= call!469046 call!469047)))

(declare-fun bm!469042 () Bool)

(assert (=> bm!469042 (= call!469047 (validRegex!7705 (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))))

(assert (= (and d!1855904 (not res!2481106)) b!5917495))

(assert (= (and b!5917495 c!1051731) b!5917493))

(assert (= (and b!5917495 (not c!1051731)) b!5917488))

(assert (= (and b!5917493 res!2481108) b!5917490))

(assert (= (and b!5917488 c!1051732) b!5917491))

(assert (= (and b!5917488 (not c!1051732)) b!5917494))

(assert (= (and b!5917491 res!2481105) b!5917496))

(assert (= (and b!5917494 (not res!2481104)) b!5917492))

(assert (= (and b!5917492 res!2481107) b!5917489))

(assert (= (or b!5917496 b!5917489) bm!469041))

(assert (= (or b!5917491 b!5917492) bm!469040))

(assert (= (or b!5917490 bm!469041) bm!469042))

(declare-fun m!6814966 () Bool)

(assert (=> b!5917493 m!6814966))

(declare-fun m!6814968 () Bool)

(assert (=> bm!469040 m!6814968))

(declare-fun m!6814970 () Bool)

(assert (=> bm!469042 m!6814970))

(assert (=> bm!468955 d!1855904))

(declare-fun d!1855908 () Bool)

(assert (=> d!1855908 (= (nullable!5964 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (nullableFct!1935 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(declare-fun bs!1400820 () Bool)

(assert (= bs!1400820 d!1855908))

(declare-fun m!6814978 () Bool)

(assert (=> bs!1400820 m!6814978))

(assert (=> b!5916446 d!1855908))

(declare-fun bs!1400825 () Bool)

(declare-fun b!5917508 () Bool)

(assert (= bs!1400825 (and b!5917508 d!1855652)))

(declare-fun lambda!322890 () Int)

(assert (=> bs!1400825 (not (= lambda!322890 lambda!322859))))

(declare-fun bs!1400828 () Bool)

(assert (= bs!1400828 (and b!5917508 d!1855812)))

(assert (=> bs!1400828 (not (= lambda!322890 lambda!322879))))

(assert (=> bs!1400825 (not (= lambda!322890 lambda!322857))))

(declare-fun bs!1400831 () Bool)

(assert (= bs!1400831 (and b!5917508 b!5916342)))

(assert (=> bs!1400831 (not (= lambda!322890 lambda!322806))))

(declare-fun bs!1400832 () Bool)

(assert (= bs!1400832 (and b!5917508 b!5916600)))

(assert (=> bs!1400832 (= (and (= (reg!16298 (regOne!32451 r!7292)) (reg!16298 r!7292)) (= (regOne!32451 r!7292) r!7292)) (= lambda!322890 lambda!322826))))

(declare-fun bs!1400833 () Bool)

(assert (= bs!1400833 (and b!5917508 b!5917042)))

(assert (=> bs!1400833 (not (= lambda!322890 lambda!322864))))

(declare-fun bs!1400834 () Bool)

(assert (= bs!1400834 (and b!5917508 d!1855884)))

(assert (=> bs!1400834 (not (= lambda!322890 lambda!322885))))

(assert (=> bs!1400834 (not (= lambda!322890 lambda!322888))))

(declare-fun bs!1400835 () Bool)

(assert (= bs!1400835 (and b!5917508 d!1855648)))

(assert (=> bs!1400835 (not (= lambda!322890 lambda!322850))))

(declare-fun bs!1400836 () Bool)

(assert (= bs!1400836 (and b!5917508 b!5916603)))

(assert (=> bs!1400836 (not (= lambda!322890 lambda!322827))))

(declare-fun bs!1400837 () Bool)

(assert (= bs!1400837 (and b!5917508 b!5917039)))

(assert (=> bs!1400837 (= (and (= (reg!16298 (regOne!32451 r!7292)) (reg!16298 (regTwo!32451 r!7292))) (= (regOne!32451 r!7292) (regTwo!32451 r!7292))) (= lambda!322890 lambda!322863))))

(assert (=> bs!1400831 (not (= lambda!322890 lambda!322805))))

(assert (=> b!5917508 true))

(assert (=> b!5917508 true))

(declare-fun bs!1400841 () Bool)

(declare-fun b!5917511 () Bool)

(assert (= bs!1400841 (and b!5917511 d!1855652)))

(declare-fun lambda!322891 () Int)

(assert (=> bs!1400841 (= (and (= (regOne!32450 (regOne!32451 r!7292)) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 r!7292)) (regTwo!32450 r!7292))) (= lambda!322891 lambda!322859))))

(declare-fun bs!1400842 () Bool)

(assert (= bs!1400842 (and b!5917511 d!1855812)))

(assert (=> bs!1400842 (not (= lambda!322891 lambda!322879))))

(assert (=> bs!1400841 (not (= lambda!322891 lambda!322857))))

(declare-fun bs!1400843 () Bool)

(assert (= bs!1400843 (and b!5917511 b!5916342)))

(assert (=> bs!1400843 (= (and (= (regOne!32450 (regOne!32451 r!7292)) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 r!7292)) (regTwo!32450 r!7292))) (= lambda!322891 lambda!322806))))

(declare-fun bs!1400844 () Bool)

(assert (= bs!1400844 (and b!5917511 b!5916600)))

(assert (=> bs!1400844 (not (= lambda!322891 lambda!322826))))

(declare-fun bs!1400845 () Bool)

(assert (= bs!1400845 (and b!5917511 b!5917042)))

(assert (=> bs!1400845 (= (and (= (regOne!32450 (regOne!32451 r!7292)) (regOne!32450 (regTwo!32451 r!7292))) (= (regTwo!32450 (regOne!32451 r!7292)) (regTwo!32450 (regTwo!32451 r!7292)))) (= lambda!322891 lambda!322864))))

(declare-fun bs!1400846 () Bool)

(assert (= bs!1400846 (and b!5917511 d!1855884)))

(assert (=> bs!1400846 (not (= lambda!322891 lambda!322885))))

(assert (=> bs!1400846 (= (and (= (regOne!32450 (regOne!32451 r!7292)) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 r!7292)) (regTwo!32450 r!7292))) (= lambda!322891 lambda!322888))))

(declare-fun bs!1400847 () Bool)

(assert (= bs!1400847 (and b!5917511 d!1855648)))

(assert (=> bs!1400847 (not (= lambda!322891 lambda!322850))))

(declare-fun bs!1400848 () Bool)

(assert (= bs!1400848 (and b!5917511 b!5916603)))

(assert (=> bs!1400848 (= (and (= (regOne!32450 (regOne!32451 r!7292)) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 r!7292)) (regTwo!32450 r!7292))) (= lambda!322891 lambda!322827))))

(declare-fun bs!1400849 () Bool)

(assert (= bs!1400849 (and b!5917511 b!5917508)))

(assert (=> bs!1400849 (not (= lambda!322891 lambda!322890))))

(declare-fun bs!1400850 () Bool)

(assert (= bs!1400850 (and b!5917511 b!5917039)))

(assert (=> bs!1400850 (not (= lambda!322891 lambda!322863))))

(assert (=> bs!1400843 (not (= lambda!322891 lambda!322805))))

(assert (=> b!5917511 true))

(assert (=> b!5917511 true))

(declare-fun e!3623154 () Bool)

(declare-fun call!469052 () Bool)

(assert (=> b!5917508 (= e!3623154 call!469052)))

(declare-fun b!5917509 () Bool)

(declare-fun e!3623153 () Bool)

(declare-fun e!3623156 () Bool)

(assert (=> b!5917509 (= e!3623153 e!3623156)))

(declare-fun c!1051735 () Bool)

(assert (=> b!5917509 (= c!1051735 ((_ is Star!15969) (regOne!32451 r!7292)))))

(declare-fun b!5917510 () Bool)

(declare-fun c!1051737 () Bool)

(assert (=> b!5917510 (= c!1051737 ((_ is Union!15969) (regOne!32451 r!7292)))))

(declare-fun e!3623151 () Bool)

(assert (=> b!5917510 (= e!3623151 e!3623153)))

(assert (=> b!5917511 (= e!3623156 call!469052)))

(declare-fun bm!469046 () Bool)

(assert (=> bm!469046 (= call!469052 (Exists!3039 (ite c!1051735 lambda!322890 lambda!322891)))))

(declare-fun b!5917512 () Bool)

(declare-fun res!2481117 () Bool)

(assert (=> b!5917512 (=> res!2481117 e!3623154)))

(declare-fun call!469051 () Bool)

(assert (=> b!5917512 (= res!2481117 call!469051)))

(assert (=> b!5917512 (= e!3623156 e!3623154)))

(declare-fun d!1855912 () Bool)

(declare-fun c!1051736 () Bool)

(assert (=> d!1855912 (= c!1051736 ((_ is EmptyExpr!15969) (regOne!32451 r!7292)))))

(declare-fun e!3623152 () Bool)

(assert (=> d!1855912 (= (matchRSpec!3070 (regOne!32451 r!7292) s!2326) e!3623152)))

(declare-fun b!5917513 () Bool)

(declare-fun e!3623155 () Bool)

(assert (=> b!5917513 (= e!3623155 (matchRSpec!3070 (regTwo!32451 (regOne!32451 r!7292)) s!2326))))

(declare-fun b!5917514 () Bool)

(assert (=> b!5917514 (= e!3623151 (= s!2326 (Cons!64084 (c!1051439 (regOne!32451 r!7292)) Nil!64084)))))

(declare-fun b!5917515 () Bool)

(declare-fun e!3623150 () Bool)

(assert (=> b!5917515 (= e!3623152 e!3623150)))

(declare-fun res!2481116 () Bool)

(assert (=> b!5917515 (= res!2481116 (not ((_ is EmptyLang!15969) (regOne!32451 r!7292))))))

(assert (=> b!5917515 (=> (not res!2481116) (not e!3623150))))

(declare-fun b!5917516 () Bool)

(declare-fun c!1051738 () Bool)

(assert (=> b!5917516 (= c!1051738 ((_ is ElementMatch!15969) (regOne!32451 r!7292)))))

(assert (=> b!5917516 (= e!3623150 e!3623151)))

(declare-fun b!5917517 () Bool)

(assert (=> b!5917517 (= e!3623152 call!469051)))

(declare-fun b!5917518 () Bool)

(assert (=> b!5917518 (= e!3623153 e!3623155)))

(declare-fun res!2481118 () Bool)

(assert (=> b!5917518 (= res!2481118 (matchRSpec!3070 (regOne!32451 (regOne!32451 r!7292)) s!2326))))

(assert (=> b!5917518 (=> res!2481118 e!3623155)))

(declare-fun bm!469047 () Bool)

(assert (=> bm!469047 (= call!469051 (isEmpty!35940 s!2326))))

(assert (= (and d!1855912 c!1051736) b!5917517))

(assert (= (and d!1855912 (not c!1051736)) b!5917515))

(assert (= (and b!5917515 res!2481116) b!5917516))

(assert (= (and b!5917516 c!1051738) b!5917514))

(assert (= (and b!5917516 (not c!1051738)) b!5917510))

(assert (= (and b!5917510 c!1051737) b!5917518))

(assert (= (and b!5917510 (not c!1051737)) b!5917509))

(assert (= (and b!5917518 (not res!2481118)) b!5917513))

(assert (= (and b!5917509 c!1051735) b!5917512))

(assert (= (and b!5917509 (not c!1051735)) b!5917511))

(assert (= (and b!5917512 (not res!2481117)) b!5917508))

(assert (= (or b!5917508 b!5917511) bm!469046))

(assert (= (or b!5917517 b!5917512) bm!469047))

(declare-fun m!6815008 () Bool)

(assert (=> bm!469046 m!6815008))

(declare-fun m!6815010 () Bool)

(assert (=> b!5917513 m!6815010))

(declare-fun m!6815012 () Bool)

(assert (=> b!5917518 m!6815012))

(assert (=> bm!469047 m!6814230))

(assert (=> b!5916610 d!1855912))

(declare-fun b!5917529 () Bool)

(declare-fun e!3623168 () (InoxSet Context!10706))

(declare-fun call!469057 () (InoxSet Context!10706))

(declare-fun call!469058 () (InoxSet Context!10706))

(assert (=> b!5917529 (= e!3623168 ((_ map or) call!469057 call!469058))))

(declare-fun bm!469048 () Bool)

(declare-fun call!469055 () (InoxSet Context!10706))

(assert (=> bm!469048 (= call!469055 call!469057)))

(declare-fun bm!469049 () Bool)

(declare-fun call!469053 () List!64206)

(declare-fun call!469054 () List!64206)

(assert (=> bm!469049 (= call!469053 call!469054)))

(declare-fun b!5917530 () Bool)

(declare-fun e!3623167 () (InoxSet Context!10706))

(declare-fun call!469056 () (InoxSet Context!10706))

(assert (=> b!5917530 (= e!3623167 call!469056)))

(declare-fun c!1051743 () Bool)

(declare-fun bm!469050 () Bool)

(declare-fun c!1051745 () Bool)

(assert (=> bm!469050 (= call!469054 ($colon$colon!1856 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))) (ite (or c!1051745 c!1051743) (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))

(declare-fun b!5917531 () Bool)

(assert (=> b!5917531 (= e!3623167 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5917532 () Bool)

(declare-fun e!3623164 () (InoxSet Context!10706))

(assert (=> b!5917532 (= e!3623164 ((_ map or) call!469058 call!469055))))

(declare-fun b!5917533 () Bool)

(declare-fun c!1051744 () Bool)

(assert (=> b!5917533 (= c!1051744 ((_ is Star!15969) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(declare-fun e!3623165 () (InoxSet Context!10706))

(assert (=> b!5917533 (= e!3623165 e!3623167)))

(declare-fun d!1855924 () Bool)

(declare-fun c!1051747 () Bool)

(assert (=> d!1855924 (= c!1051747 (and ((_ is ElementMatch!15969) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (= (c!1051439 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (h!70532 s!2326))))))

(declare-fun e!3623166 () (InoxSet Context!10706))

(assert (=> d!1855924 (= (derivationStepZipperDown!1219 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (h!70532 s!2326)) e!3623166)))

(declare-fun bm!469051 () Bool)

(declare-fun c!1051746 () Bool)

(assert (=> bm!469051 (= call!469058 (derivationStepZipperDown!1219 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))) (ite c!1051746 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469054)) (h!70532 s!2326)))))

(declare-fun b!5917534 () Bool)

(assert (=> b!5917534 (= e!3623166 (store ((as const (Array Context!10706 Bool)) false) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) true))))

(declare-fun bm!469052 () Bool)

(assert (=> bm!469052 (= call!469057 (derivationStepZipperDown!1219 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (ite (or c!1051746 c!1051745) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469053)) (h!70532 s!2326)))))

(declare-fun b!5917535 () Bool)

(declare-fun e!3623163 () Bool)

(assert (=> b!5917535 (= c!1051745 e!3623163)))

(declare-fun res!2481121 () Bool)

(assert (=> b!5917535 (=> (not res!2481121) (not e!3623163))))

(assert (=> b!5917535 (= res!2481121 ((_ is Concat!24814) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(assert (=> b!5917535 (= e!3623168 e!3623164)))

(declare-fun b!5917536 () Bool)

(assert (=> b!5917536 (= e!3623165 call!469056)))

(declare-fun b!5917537 () Bool)

(assert (=> b!5917537 (= e!3623164 e!3623165)))

(assert (=> b!5917537 (= c!1051743 ((_ is Concat!24814) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(declare-fun b!5917538 () Bool)

(assert (=> b!5917538 (= e!3623166 e!3623168)))

(assert (=> b!5917538 (= c!1051746 ((_ is Union!15969) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(declare-fun bm!469053 () Bool)

(assert (=> bm!469053 (= call!469056 call!469055)))

(declare-fun b!5917539 () Bool)

(assert (=> b!5917539 (= e!3623163 (nullable!5964 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))

(assert (= (and d!1855924 c!1051747) b!5917534))

(assert (= (and d!1855924 (not c!1051747)) b!5917538))

(assert (= (and b!5917538 c!1051746) b!5917529))

(assert (= (and b!5917538 (not c!1051746)) b!5917535))

(assert (= (and b!5917535 res!2481121) b!5917539))

(assert (= (and b!5917535 c!1051745) b!5917532))

(assert (= (and b!5917535 (not c!1051745)) b!5917537))

(assert (= (and b!5917537 c!1051743) b!5917536))

(assert (= (and b!5917537 (not c!1051743)) b!5917533))

(assert (= (and b!5917533 c!1051744) b!5917530))

(assert (= (and b!5917533 (not c!1051744)) b!5917531))

(assert (= (or b!5917536 b!5917530) bm!469049))

(assert (= (or b!5917536 b!5917530) bm!469053))

(assert (= (or b!5917532 bm!469049) bm!469050))

(assert (= (or b!5917532 bm!469053) bm!469048))

(assert (= (or b!5917529 b!5917532) bm!469051))

(assert (= (or b!5917529 bm!469048) bm!469052))

(declare-fun m!6815014 () Bool)

(assert (=> b!5917534 m!6815014))

(declare-fun m!6815016 () Bool)

(assert (=> bm!469051 m!6815016))

(declare-fun m!6815018 () Bool)

(assert (=> bm!469052 m!6815018))

(declare-fun m!6815020 () Bool)

(assert (=> b!5917539 m!6815020))

(declare-fun m!6815022 () Bool)

(assert (=> bm!469050 m!6815022))

(assert (=> bm!468903 d!1855924))

(assert (=> b!5916678 d!1855760))

(assert (=> b!5916678 d!1855720))

(declare-fun d!1855926 () Bool)

(declare-fun e!3623177 () Bool)

(assert (=> d!1855926 e!3623177))

(declare-fun c!1051748 () Bool)

(assert (=> d!1855926 (= c!1051748 ((_ is EmptyExpr!15969) (regTwo!32450 r!7292)))))

(declare-fun lt!2309810 () Bool)

(declare-fun e!3623176 () Bool)

(assert (=> d!1855926 (= lt!2309810 e!3623176)))

(declare-fun c!1051749 () Bool)

(assert (=> d!1855926 (= c!1051749 (isEmpty!35940 s!2326))))

(assert (=> d!1855926 (validRegex!7705 (regTwo!32450 r!7292))))

(assert (=> d!1855926 (= (matchR!8152 (regTwo!32450 r!7292) s!2326) lt!2309810)))

(declare-fun b!5917544 () Bool)

(assert (=> b!5917544 (= e!3623176 (nullable!5964 (regTwo!32450 r!7292)))))

(declare-fun b!5917545 () Bool)

(declare-fun call!469059 () Bool)

(assert (=> b!5917545 (= e!3623177 (= lt!2309810 call!469059))))

(declare-fun b!5917546 () Bool)

(assert (=> b!5917546 (= e!3623176 (matchR!8152 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326)) (tail!11564 s!2326)))))

(declare-fun b!5917547 () Bool)

(declare-fun res!2481128 () Bool)

(declare-fun e!3623175 () Bool)

(assert (=> b!5917547 (=> (not res!2481128) (not e!3623175))))

(assert (=> b!5917547 (= res!2481128 (not call!469059))))

(declare-fun b!5917548 () Bool)

(declare-fun e!3623173 () Bool)

(declare-fun e!3623172 () Bool)

(assert (=> b!5917548 (= e!3623173 e!3623172)))

(declare-fun res!2481130 () Bool)

(assert (=> b!5917548 (=> res!2481130 e!3623172)))

(assert (=> b!5917548 (= res!2481130 call!469059)))

(declare-fun b!5917549 () Bool)

(declare-fun e!3623171 () Bool)

(assert (=> b!5917549 (= e!3623171 (not lt!2309810))))

(declare-fun b!5917550 () Bool)

(assert (=> b!5917550 (= e!3623175 (= (head!12479 s!2326) (c!1051439 (regTwo!32450 r!7292))))))

(declare-fun b!5917551 () Bool)

(declare-fun e!3623174 () Bool)

(assert (=> b!5917551 (= e!3623174 e!3623173)))

(declare-fun res!2481131 () Bool)

(assert (=> b!5917551 (=> (not res!2481131) (not e!3623173))))

(assert (=> b!5917551 (= res!2481131 (not lt!2309810))))

(declare-fun b!5917552 () Bool)

(assert (=> b!5917552 (= e!3623172 (not (= (head!12479 s!2326) (c!1051439 (regTwo!32450 r!7292)))))))

(declare-fun b!5917553 () Bool)

(declare-fun res!2481129 () Bool)

(assert (=> b!5917553 (=> res!2481129 e!3623174)))

(assert (=> b!5917553 (= res!2481129 e!3623175)))

(declare-fun res!2481133 () Bool)

(assert (=> b!5917553 (=> (not res!2481133) (not e!3623175))))

(assert (=> b!5917553 (= res!2481133 lt!2309810)))

(declare-fun b!5917554 () Bool)

(declare-fun res!2481126 () Bool)

(assert (=> b!5917554 (=> res!2481126 e!3623174)))

(assert (=> b!5917554 (= res!2481126 (not ((_ is ElementMatch!15969) (regTwo!32450 r!7292))))))

(assert (=> b!5917554 (= e!3623171 e!3623174)))

(declare-fun b!5917555 () Bool)

(assert (=> b!5917555 (= e!3623177 e!3623171)))

(declare-fun c!1051750 () Bool)

(assert (=> b!5917555 (= c!1051750 ((_ is EmptyLang!15969) (regTwo!32450 r!7292)))))

(declare-fun bm!469054 () Bool)

(assert (=> bm!469054 (= call!469059 (isEmpty!35940 s!2326))))

(declare-fun b!5917556 () Bool)

(declare-fun res!2481127 () Bool)

(assert (=> b!5917556 (=> res!2481127 e!3623172)))

(assert (=> b!5917556 (= res!2481127 (not (isEmpty!35940 (tail!11564 s!2326))))))

(declare-fun b!5917557 () Bool)

(declare-fun res!2481132 () Bool)

(assert (=> b!5917557 (=> (not res!2481132) (not e!3623175))))

(assert (=> b!5917557 (= res!2481132 (isEmpty!35940 (tail!11564 s!2326)))))

(assert (= (and d!1855926 c!1051749) b!5917544))

(assert (= (and d!1855926 (not c!1051749)) b!5917546))

(assert (= (and d!1855926 c!1051748) b!5917545))

(assert (= (and d!1855926 (not c!1051748)) b!5917555))

(assert (= (and b!5917555 c!1051750) b!5917549))

(assert (= (and b!5917555 (not c!1051750)) b!5917554))

(assert (= (and b!5917554 (not res!2481126)) b!5917553))

(assert (= (and b!5917553 res!2481133) b!5917547))

(assert (= (and b!5917547 res!2481128) b!5917557))

(assert (= (and b!5917557 res!2481132) b!5917550))

(assert (= (and b!5917553 (not res!2481129)) b!5917551))

(assert (= (and b!5917551 res!2481131) b!5917548))

(assert (= (and b!5917548 (not res!2481130)) b!5917556))

(assert (= (and b!5917556 (not res!2481127)) b!5917552))

(assert (= (or b!5917545 b!5917547 b!5917548) bm!469054))

(assert (=> b!5917544 m!6814564))

(assert (=> b!5917556 m!6814246))

(assert (=> b!5917556 m!6814246))

(assert (=> b!5917556 m!6814248))

(assert (=> b!5917557 m!6814246))

(assert (=> b!5917557 m!6814246))

(assert (=> b!5917557 m!6814248))

(assert (=> b!5917546 m!6814250))

(assert (=> b!5917546 m!6814250))

(declare-fun m!6815024 () Bool)

(assert (=> b!5917546 m!6815024))

(assert (=> b!5917546 m!6814246))

(assert (=> b!5917546 m!6815024))

(assert (=> b!5917546 m!6814246))

(declare-fun m!6815026 () Bool)

(assert (=> b!5917546 m!6815026))

(assert (=> d!1855926 m!6814230))

(assert (=> d!1855926 m!6814578))

(assert (=> b!5917552 m!6814250))

(assert (=> b!5917550 m!6814250))

(assert (=> bm!469054 m!6814230))

(assert (=> b!5916799 d!1855926))

(declare-fun d!1855928 () Bool)

(assert (=> d!1855928 (= ($colon$colon!1856 (exprs!5853 (Context!10707 Nil!64082)) (ite (or c!1051502 c!1051500) (regTwo!32450 r!7292) r!7292)) (Cons!64082 (ite (or c!1051502 c!1051500) (regTwo!32450 r!7292) r!7292) (exprs!5853 (Context!10707 Nil!64082))))))

(assert (=> bm!468922 d!1855928))

(declare-fun b!5917562 () Bool)

(declare-fun e!3623185 () (InoxSet Context!10706))

(declare-fun call!469064 () (InoxSet Context!10706))

(declare-fun call!469065 () (InoxSet Context!10706))

(assert (=> b!5917562 (= e!3623185 ((_ map or) call!469064 call!469065))))

(declare-fun bm!469055 () Bool)

(declare-fun call!469062 () (InoxSet Context!10706))

(assert (=> bm!469055 (= call!469062 call!469064)))

(declare-fun bm!469056 () Bool)

(declare-fun call!469060 () List!64206)

(declare-fun call!469061 () List!64206)

(assert (=> bm!469056 (= call!469060 call!469061)))

(declare-fun b!5917563 () Bool)

(declare-fun e!3623184 () (InoxSet Context!10706))

(declare-fun call!469063 () (InoxSet Context!10706))

(assert (=> b!5917563 (= e!3623184 call!469063)))

(declare-fun bm!469057 () Bool)

(declare-fun c!1051751 () Bool)

(declare-fun c!1051753 () Bool)

(assert (=> bm!469057 (= call!469061 ($colon$colon!1856 (exprs!5853 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926))) (ite (or c!1051753 c!1051751) (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))

(declare-fun b!5917564 () Bool)

(assert (=> b!5917564 (= e!3623184 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5917565 () Bool)

(declare-fun e!3623181 () (InoxSet Context!10706))

(assert (=> b!5917565 (= e!3623181 ((_ map or) call!469065 call!469062))))

(declare-fun b!5917566 () Bool)

(declare-fun c!1051752 () Bool)

(assert (=> b!5917566 (= c!1051752 ((_ is Star!15969) (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))

(declare-fun e!3623182 () (InoxSet Context!10706))

(assert (=> b!5917566 (= e!3623182 e!3623184)))

(declare-fun d!1855930 () Bool)

(declare-fun c!1051755 () Bool)

(assert (=> d!1855930 (= c!1051755 (and ((_ is ElementMatch!15969) (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (= (c!1051439 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (h!70532 s!2326))))))

(declare-fun e!3623183 () (InoxSet Context!10706))

(assert (=> d!1855930 (= (derivationStepZipperDown!1219 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (h!70532 s!2326)) e!3623183)))

(declare-fun bm!469058 () Bool)

(declare-fun c!1051754 () Bool)

(assert (=> bm!469058 (= call!469065 (derivationStepZipperDown!1219 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))) (ite c!1051754 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469061)) (h!70532 s!2326)))))

(declare-fun b!5917567 () Bool)

(assert (=> b!5917567 (= e!3623183 (store ((as const (Array Context!10706 Bool)) false) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) true))))

(declare-fun bm!469059 () Bool)

(assert (=> bm!469059 (= call!469064 (derivationStepZipperDown!1219 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))) (ite (or c!1051754 c!1051753) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469060)) (h!70532 s!2326)))))

(declare-fun b!5917568 () Bool)

(declare-fun e!3623180 () Bool)

(assert (=> b!5917568 (= c!1051753 e!3623180)))

(declare-fun res!2481138 () Bool)

(assert (=> b!5917568 (=> (not res!2481138) (not e!3623180))))

(assert (=> b!5917568 (= res!2481138 ((_ is Concat!24814) (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))

(assert (=> b!5917568 (= e!3623185 e!3623181)))

(declare-fun b!5917569 () Bool)

(assert (=> b!5917569 (= e!3623182 call!469063)))

(declare-fun b!5917570 () Bool)

(assert (=> b!5917570 (= e!3623181 e!3623182)))

(assert (=> b!5917570 (= c!1051751 ((_ is Concat!24814) (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))

(declare-fun b!5917571 () Bool)

(assert (=> b!5917571 (= e!3623183 e!3623185)))

(assert (=> b!5917571 (= c!1051754 ((_ is Union!15969) (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))

(declare-fun bm!469060 () Bool)

(assert (=> bm!469060 (= call!469063 call!469062)))

(declare-fun b!5917572 () Bool)

(assert (=> b!5917572 (= e!3623180 (nullable!5964 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))

(assert (= (and d!1855930 c!1051755) b!5917567))

(assert (= (and d!1855930 (not c!1051755)) b!5917571))

(assert (= (and b!5917571 c!1051754) b!5917562))

(assert (= (and b!5917571 (not c!1051754)) b!5917568))

(assert (= (and b!5917568 res!2481138) b!5917572))

(assert (= (and b!5917568 c!1051753) b!5917565))

(assert (= (and b!5917568 (not c!1051753)) b!5917570))

(assert (= (and b!5917570 c!1051751) b!5917569))

(assert (= (and b!5917570 (not c!1051751)) b!5917566))

(assert (= (and b!5917566 c!1051752) b!5917563))

(assert (= (and b!5917566 (not c!1051752)) b!5917564))

(assert (= (or b!5917569 b!5917563) bm!469056))

(assert (= (or b!5917569 b!5917563) bm!469060))

(assert (= (or b!5917565 bm!469056) bm!469057))

(assert (= (or b!5917565 bm!469060) bm!469055))

(assert (= (or b!5917562 b!5917565) bm!469058))

(assert (= (or b!5917562 bm!469055) bm!469059))

(declare-fun m!6815028 () Bool)

(assert (=> b!5917567 m!6815028))

(declare-fun m!6815030 () Bool)

(assert (=> bm!469058 m!6815030))

(declare-fun m!6815032 () Bool)

(assert (=> bm!469059 m!6815032))

(declare-fun m!6815034 () Bool)

(assert (=> b!5917572 m!6815034))

(declare-fun m!6815036 () Bool)

(assert (=> bm!469057 m!6815036))

(assert (=> bm!468923 d!1855930))

(declare-fun d!1855932 () Bool)

(assert (=> d!1855932 (= (isEmpty!35942 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) Nil!64084 s!2326 s!2326)) (not ((_ is Some!15859) (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) Nil!64084 s!2326 s!2326))))))

(assert (=> d!1855660 d!1855932))

(declare-fun b!5917573 () Bool)

(declare-fun e!3623186 () Bool)

(assert (=> b!5917573 (= e!3623186 tp_is_empty!41191)))

(declare-fun b!5917574 () Bool)

(declare-fun tp!1643996 () Bool)

(declare-fun tp!1643998 () Bool)

(assert (=> b!5917574 (= e!3623186 (and tp!1643996 tp!1643998))))

(declare-fun b!5917576 () Bool)

(declare-fun tp!1643997 () Bool)

(declare-fun tp!1643999 () Bool)

(assert (=> b!5917576 (= e!3623186 (and tp!1643997 tp!1643999))))

(assert (=> b!5916963 (= tp!1643948 e!3623186)))

(declare-fun b!5917575 () Bool)

(declare-fun tp!1643995 () Bool)

(assert (=> b!5917575 (= e!3623186 tp!1643995)))

(assert (= (and b!5916963 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32450 r!7292)))) b!5917573))

(assert (= (and b!5916963 ((_ is Concat!24814) (regOne!32451 (regTwo!32450 r!7292)))) b!5917574))

(assert (= (and b!5916963 ((_ is Star!15969) (regOne!32451 (regTwo!32450 r!7292)))) b!5917575))

(assert (= (and b!5916963 ((_ is Union!15969) (regOne!32451 (regTwo!32450 r!7292)))) b!5917576))

(declare-fun b!5917577 () Bool)

(declare-fun e!3623187 () Bool)

(assert (=> b!5917577 (= e!3623187 tp_is_empty!41191)))

(declare-fun b!5917578 () Bool)

(declare-fun tp!1644001 () Bool)

(declare-fun tp!1644003 () Bool)

(assert (=> b!5917578 (= e!3623187 (and tp!1644001 tp!1644003))))

(declare-fun b!5917580 () Bool)

(declare-fun tp!1644002 () Bool)

(declare-fun tp!1644004 () Bool)

(assert (=> b!5917580 (= e!3623187 (and tp!1644002 tp!1644004))))

(assert (=> b!5916963 (= tp!1643950 e!3623187)))

(declare-fun b!5917579 () Bool)

(declare-fun tp!1644000 () Bool)

(assert (=> b!5917579 (= e!3623187 tp!1644000)))

(assert (= (and b!5916963 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32450 r!7292)))) b!5917577))

(assert (= (and b!5916963 ((_ is Concat!24814) (regTwo!32451 (regTwo!32450 r!7292)))) b!5917578))

(assert (= (and b!5916963 ((_ is Star!15969) (regTwo!32451 (regTwo!32450 r!7292)))) b!5917579))

(assert (= (and b!5916963 ((_ is Union!15969) (regTwo!32451 (regTwo!32450 r!7292)))) b!5917580))

(declare-fun b!5917581 () Bool)

(declare-fun e!3623188 () Bool)

(assert (=> b!5917581 (= e!3623188 tp_is_empty!41191)))

(declare-fun b!5917582 () Bool)

(declare-fun tp!1644006 () Bool)

(declare-fun tp!1644008 () Bool)

(assert (=> b!5917582 (= e!3623188 (and tp!1644006 tp!1644008))))

(declare-fun b!5917584 () Bool)

(declare-fun tp!1644007 () Bool)

(declare-fun tp!1644009 () Bool)

(assert (=> b!5917584 (= e!3623188 (and tp!1644007 tp!1644009))))

(assert (=> b!5916977 (= tp!1643962 e!3623188)))

(declare-fun b!5917583 () Bool)

(declare-fun tp!1644005 () Bool)

(assert (=> b!5917583 (= e!3623188 tp!1644005)))

(assert (= (and b!5916977 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32451 r!7292)))) b!5917581))

(assert (= (and b!5916977 ((_ is Concat!24814) (regOne!32451 (regOne!32451 r!7292)))) b!5917582))

(assert (= (and b!5916977 ((_ is Star!15969) (regOne!32451 (regOne!32451 r!7292)))) b!5917583))

(assert (= (and b!5916977 ((_ is Union!15969) (regOne!32451 (regOne!32451 r!7292)))) b!5917584))

(declare-fun b!5917585 () Bool)

(declare-fun e!3623189 () Bool)

(assert (=> b!5917585 (= e!3623189 tp_is_empty!41191)))

(declare-fun b!5917586 () Bool)

(declare-fun tp!1644011 () Bool)

(declare-fun tp!1644013 () Bool)

(assert (=> b!5917586 (= e!3623189 (and tp!1644011 tp!1644013))))

(declare-fun b!5917588 () Bool)

(declare-fun tp!1644012 () Bool)

(declare-fun tp!1644014 () Bool)

(assert (=> b!5917588 (= e!3623189 (and tp!1644012 tp!1644014))))

(assert (=> b!5916977 (= tp!1643964 e!3623189)))

(declare-fun b!5917587 () Bool)

(declare-fun tp!1644010 () Bool)

(assert (=> b!5917587 (= e!3623189 tp!1644010)))

(assert (= (and b!5916977 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32451 r!7292)))) b!5917585))

(assert (= (and b!5916977 ((_ is Concat!24814) (regTwo!32451 (regOne!32451 r!7292)))) b!5917586))

(assert (= (and b!5916977 ((_ is Star!15969) (regTwo!32451 (regOne!32451 r!7292)))) b!5917587))

(assert (= (and b!5916977 ((_ is Union!15969) (regTwo!32451 (regOne!32451 r!7292)))) b!5917588))

(declare-fun b!5917589 () Bool)

(declare-fun e!3623190 () Bool)

(assert (=> b!5917589 (= e!3623190 tp_is_empty!41191)))

(declare-fun b!5917590 () Bool)

(declare-fun tp!1644016 () Bool)

(declare-fun tp!1644018 () Bool)

(assert (=> b!5917590 (= e!3623190 (and tp!1644016 tp!1644018))))

(declare-fun b!5917592 () Bool)

(declare-fun tp!1644017 () Bool)

(declare-fun tp!1644019 () Bool)

(assert (=> b!5917592 (= e!3623190 (and tp!1644017 tp!1644019))))

(assert (=> b!5916976 (= tp!1643960 e!3623190)))

(declare-fun b!5917591 () Bool)

(declare-fun tp!1644015 () Bool)

(assert (=> b!5917591 (= e!3623190 tp!1644015)))

(assert (= (and b!5916976 ((_ is ElementMatch!15969) (reg!16298 (regOne!32451 r!7292)))) b!5917589))

(assert (= (and b!5916976 ((_ is Concat!24814) (reg!16298 (regOne!32451 r!7292)))) b!5917590))

(assert (= (and b!5916976 ((_ is Star!15969) (reg!16298 (regOne!32451 r!7292)))) b!5917591))

(assert (= (and b!5916976 ((_ is Union!15969) (reg!16298 (regOne!32451 r!7292)))) b!5917592))

(declare-fun b!5917594 () Bool)

(declare-fun e!3623192 () Bool)

(declare-fun tp!1644020 () Bool)

(assert (=> b!5917594 (= e!3623192 tp!1644020)))

(declare-fun e!3623191 () Bool)

(declare-fun tp!1644021 () Bool)

(declare-fun b!5917593 () Bool)

(assert (=> b!5917593 (= e!3623191 (and (inv!83169 (h!70531 (t!377596 (t!377596 zl!343)))) e!3623192 tp!1644021))))

(assert (=> b!5916992 (= tp!1643980 e!3623191)))

(assert (= b!5917593 b!5917594))

(assert (= (and b!5916992 ((_ is Cons!64083) (t!377596 (t!377596 zl!343)))) b!5917593))

(declare-fun m!6815038 () Bool)

(assert (=> b!5917593 m!6815038))

(declare-fun b!5917595 () Bool)

(declare-fun e!3623193 () Bool)

(declare-fun tp!1644022 () Bool)

(declare-fun tp!1644023 () Bool)

(assert (=> b!5917595 (= e!3623193 (and tp!1644022 tp!1644023))))

(assert (=> b!5916993 (= tp!1643979 e!3623193)))

(assert (= (and b!5916993 ((_ is Cons!64082) (exprs!5853 (h!70531 (t!377596 zl!343))))) b!5917595))

(declare-fun condSetEmpty!40167 () Bool)

(assert (=> setNonEmpty!40166 (= condSetEmpty!40167 (= setRest!40166 ((as const (Array Context!10706 Bool)) false)))))

(declare-fun setRes!40167 () Bool)

(assert (=> setNonEmpty!40166 (= tp!1643910 setRes!40167)))

(declare-fun setIsEmpty!40167 () Bool)

(assert (=> setIsEmpty!40167 setRes!40167))

(declare-fun e!3623194 () Bool)

(declare-fun setElem!40167 () Context!10706)

(declare-fun tp!1644025 () Bool)

(declare-fun setNonEmpty!40167 () Bool)

(assert (=> setNonEmpty!40167 (= setRes!40167 (and tp!1644025 (inv!83169 setElem!40167) e!3623194))))

(declare-fun setRest!40167 () (InoxSet Context!10706))

(assert (=> setNonEmpty!40167 (= setRest!40166 ((_ map or) (store ((as const (Array Context!10706 Bool)) false) setElem!40167 true) setRest!40167))))

(declare-fun b!5917596 () Bool)

(declare-fun tp!1644024 () Bool)

(assert (=> b!5917596 (= e!3623194 tp!1644024)))

(assert (= (and setNonEmpty!40166 condSetEmpty!40167) setIsEmpty!40167))

(assert (= (and setNonEmpty!40166 (not condSetEmpty!40167)) setNonEmpty!40167))

(assert (= setNonEmpty!40167 b!5917596))

(declare-fun m!6815040 () Bool)

(assert (=> setNonEmpty!40167 m!6815040))

(declare-fun b!5917597 () Bool)

(declare-fun e!3623195 () Bool)

(declare-fun tp!1644026 () Bool)

(declare-fun tp!1644027 () Bool)

(assert (=> b!5917597 (= e!3623195 (and tp!1644026 tp!1644027))))

(assert (=> b!5916929 (= tp!1643909 e!3623195)))

(assert (= (and b!5916929 ((_ is Cons!64082) (exprs!5853 setElem!40166))) b!5917597))

(declare-fun b!5917598 () Bool)

(declare-fun e!3623196 () Bool)

(assert (=> b!5917598 (= e!3623196 tp_is_empty!41191)))

(declare-fun b!5917599 () Bool)

(declare-fun tp!1644029 () Bool)

(declare-fun tp!1644031 () Bool)

(assert (=> b!5917599 (= e!3623196 (and tp!1644029 tp!1644031))))

(declare-fun b!5917601 () Bool)

(declare-fun tp!1644030 () Bool)

(declare-fun tp!1644032 () Bool)

(assert (=> b!5917601 (= e!3623196 (and tp!1644030 tp!1644032))))

(assert (=> b!5916968 (= tp!1643955 e!3623196)))

(declare-fun b!5917600 () Bool)

(declare-fun tp!1644028 () Bool)

(assert (=> b!5917600 (= e!3623196 tp!1644028)))

(assert (= (and b!5916968 ((_ is ElementMatch!15969) (h!70530 (exprs!5853 setElem!40160)))) b!5917598))

(assert (= (and b!5916968 ((_ is Concat!24814) (h!70530 (exprs!5853 setElem!40160)))) b!5917599))

(assert (= (and b!5916968 ((_ is Star!15969) (h!70530 (exprs!5853 setElem!40160)))) b!5917600))

(assert (= (and b!5916968 ((_ is Union!15969) (h!70530 (exprs!5853 setElem!40160)))) b!5917601))

(declare-fun b!5917602 () Bool)

(declare-fun e!3623197 () Bool)

(declare-fun tp!1644033 () Bool)

(declare-fun tp!1644034 () Bool)

(assert (=> b!5917602 (= e!3623197 (and tp!1644033 tp!1644034))))

(assert (=> b!5916968 (= tp!1643956 e!3623197)))

(assert (= (and b!5916968 ((_ is Cons!64082) (t!377595 (exprs!5853 setElem!40160)))) b!5917602))

(declare-fun b!5917603 () Bool)

(declare-fun e!3623198 () Bool)

(assert (=> b!5917603 (= e!3623198 tp_is_empty!41191)))

(declare-fun b!5917604 () Bool)

(declare-fun tp!1644036 () Bool)

(declare-fun tp!1644038 () Bool)

(assert (=> b!5917604 (= e!3623198 (and tp!1644036 tp!1644038))))

(declare-fun b!5917606 () Bool)

(declare-fun tp!1644037 () Bool)

(declare-fun tp!1644039 () Bool)

(assert (=> b!5917606 (= e!3623198 (and tp!1644037 tp!1644039))))

(assert (=> b!5916983 (= tp!1643971 e!3623198)))

(declare-fun b!5917605 () Bool)

(declare-fun tp!1644035 () Bool)

(assert (=> b!5917605 (= e!3623198 tp!1644035)))

(assert (= (and b!5916983 ((_ is ElementMatch!15969) (regOne!32450 (reg!16298 r!7292)))) b!5917603))

(assert (= (and b!5916983 ((_ is Concat!24814) (regOne!32450 (reg!16298 r!7292)))) b!5917604))

(assert (= (and b!5916983 ((_ is Star!15969) (regOne!32450 (reg!16298 r!7292)))) b!5917605))

(assert (= (and b!5916983 ((_ is Union!15969) (regOne!32450 (reg!16298 r!7292)))) b!5917606))

(declare-fun b!5917607 () Bool)

(declare-fun e!3623199 () Bool)

(assert (=> b!5917607 (= e!3623199 tp_is_empty!41191)))

(declare-fun b!5917608 () Bool)

(declare-fun tp!1644041 () Bool)

(declare-fun tp!1644043 () Bool)

(assert (=> b!5917608 (= e!3623199 (and tp!1644041 tp!1644043))))

(declare-fun b!5917610 () Bool)

(declare-fun tp!1644042 () Bool)

(declare-fun tp!1644044 () Bool)

(assert (=> b!5917610 (= e!3623199 (and tp!1644042 tp!1644044))))

(assert (=> b!5916983 (= tp!1643973 e!3623199)))

(declare-fun b!5917609 () Bool)

(declare-fun tp!1644040 () Bool)

(assert (=> b!5917609 (= e!3623199 tp!1644040)))

(assert (= (and b!5916983 ((_ is ElementMatch!15969) (regTwo!32450 (reg!16298 r!7292)))) b!5917607))

(assert (= (and b!5916983 ((_ is Concat!24814) (regTwo!32450 (reg!16298 r!7292)))) b!5917608))

(assert (= (and b!5916983 ((_ is Star!15969) (regTwo!32450 (reg!16298 r!7292)))) b!5917609))

(assert (= (and b!5916983 ((_ is Union!15969) (regTwo!32450 (reg!16298 r!7292)))) b!5917610))

(declare-fun b!5917611 () Bool)

(declare-fun e!3623200 () Bool)

(assert (=> b!5917611 (= e!3623200 tp_is_empty!41191)))

(declare-fun b!5917612 () Bool)

(declare-fun tp!1644046 () Bool)

(declare-fun tp!1644048 () Bool)

(assert (=> b!5917612 (= e!3623200 (and tp!1644046 tp!1644048))))

(declare-fun b!5917614 () Bool)

(declare-fun tp!1644047 () Bool)

(declare-fun tp!1644049 () Bool)

(assert (=> b!5917614 (= e!3623200 (and tp!1644047 tp!1644049))))

(assert (=> b!5916985 (= tp!1643972 e!3623200)))

(declare-fun b!5917613 () Bool)

(declare-fun tp!1644045 () Bool)

(assert (=> b!5917613 (= e!3623200 tp!1644045)))

(assert (= (and b!5916985 ((_ is ElementMatch!15969) (regOne!32451 (reg!16298 r!7292)))) b!5917611))

(assert (= (and b!5916985 ((_ is Concat!24814) (regOne!32451 (reg!16298 r!7292)))) b!5917612))

(assert (= (and b!5916985 ((_ is Star!15969) (regOne!32451 (reg!16298 r!7292)))) b!5917613))

(assert (= (and b!5916985 ((_ is Union!15969) (regOne!32451 (reg!16298 r!7292)))) b!5917614))

(declare-fun b!5917615 () Bool)

(declare-fun e!3623201 () Bool)

(assert (=> b!5917615 (= e!3623201 tp_is_empty!41191)))

(declare-fun b!5917616 () Bool)

(declare-fun tp!1644051 () Bool)

(declare-fun tp!1644053 () Bool)

(assert (=> b!5917616 (= e!3623201 (and tp!1644051 tp!1644053))))

(declare-fun b!5917618 () Bool)

(declare-fun tp!1644052 () Bool)

(declare-fun tp!1644054 () Bool)

(assert (=> b!5917618 (= e!3623201 (and tp!1644052 tp!1644054))))

(assert (=> b!5916985 (= tp!1643974 e!3623201)))

(declare-fun b!5917617 () Bool)

(declare-fun tp!1644050 () Bool)

(assert (=> b!5917617 (= e!3623201 tp!1644050)))

(assert (= (and b!5916985 ((_ is ElementMatch!15969) (regTwo!32451 (reg!16298 r!7292)))) b!5917615))

(assert (= (and b!5916985 ((_ is Concat!24814) (regTwo!32451 (reg!16298 r!7292)))) b!5917616))

(assert (= (and b!5916985 ((_ is Star!15969) (regTwo!32451 (reg!16298 r!7292)))) b!5917617))

(assert (= (and b!5916985 ((_ is Union!15969) (regTwo!32451 (reg!16298 r!7292)))) b!5917618))

(declare-fun b!5917619 () Bool)

(declare-fun e!3623202 () Bool)

(assert (=> b!5917619 (= e!3623202 tp_is_empty!41191)))

(declare-fun b!5917620 () Bool)

(declare-fun tp!1644056 () Bool)

(declare-fun tp!1644058 () Bool)

(assert (=> b!5917620 (= e!3623202 (and tp!1644056 tp!1644058))))

(declare-fun b!5917622 () Bool)

(declare-fun tp!1644057 () Bool)

(declare-fun tp!1644059 () Bool)

(assert (=> b!5917622 (= e!3623202 (and tp!1644057 tp!1644059))))

(assert (=> b!5916962 (= tp!1643946 e!3623202)))

(declare-fun b!5917621 () Bool)

(declare-fun tp!1644055 () Bool)

(assert (=> b!5917621 (= e!3623202 tp!1644055)))

(assert (= (and b!5916962 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32450 r!7292)))) b!5917619))

(assert (= (and b!5916962 ((_ is Concat!24814) (reg!16298 (regTwo!32450 r!7292)))) b!5917620))

(assert (= (and b!5916962 ((_ is Star!15969) (reg!16298 (regTwo!32450 r!7292)))) b!5917621))

(assert (= (and b!5916962 ((_ is Union!15969) (reg!16298 (regTwo!32450 r!7292)))) b!5917622))

(declare-fun b!5917635 () Bool)

(declare-fun e!3623210 () Bool)

(assert (=> b!5917635 (= e!3623210 tp_is_empty!41191)))

(declare-fun b!5917637 () Bool)

(declare-fun tp!1644061 () Bool)

(declare-fun tp!1644063 () Bool)

(assert (=> b!5917637 (= e!3623210 (and tp!1644061 tp!1644063))))

(declare-fun b!5917640 () Bool)

(declare-fun tp!1644062 () Bool)

(declare-fun tp!1644064 () Bool)

(assert (=> b!5917640 (= e!3623210 (and tp!1644062 tp!1644064))))

(assert (=> b!5916984 (= tp!1643970 e!3623210)))

(declare-fun b!5917639 () Bool)

(declare-fun tp!1644060 () Bool)

(assert (=> b!5917639 (= e!3623210 tp!1644060)))

(assert (= (and b!5916984 ((_ is ElementMatch!15969) (reg!16298 (reg!16298 r!7292)))) b!5917635))

(assert (= (and b!5916984 ((_ is Concat!24814) (reg!16298 (reg!16298 r!7292)))) b!5917637))

(assert (= (and b!5916984 ((_ is Star!15969) (reg!16298 (reg!16298 r!7292)))) b!5917639))

(assert (= (and b!5916984 ((_ is Union!15969) (reg!16298 (reg!16298 r!7292)))) b!5917640))

(declare-fun b!5917641 () Bool)

(declare-fun e!3623211 () Bool)

(assert (=> b!5917641 (= e!3623211 tp_is_empty!41191)))

(declare-fun b!5917642 () Bool)

(declare-fun tp!1644066 () Bool)

(declare-fun tp!1644068 () Bool)

(assert (=> b!5917642 (= e!3623211 (and tp!1644066 tp!1644068))))

(declare-fun b!5917644 () Bool)

(declare-fun tp!1644067 () Bool)

(declare-fun tp!1644069 () Bool)

(assert (=> b!5917644 (= e!3623211 (and tp!1644067 tp!1644069))))

(assert (=> b!5916961 (= tp!1643947 e!3623211)))

(declare-fun b!5917643 () Bool)

(declare-fun tp!1644065 () Bool)

(assert (=> b!5917643 (= e!3623211 tp!1644065)))

(assert (= (and b!5916961 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32450 r!7292)))) b!5917641))

(assert (= (and b!5916961 ((_ is Concat!24814) (regOne!32450 (regTwo!32450 r!7292)))) b!5917642))

(assert (= (and b!5916961 ((_ is Star!15969) (regOne!32450 (regTwo!32450 r!7292)))) b!5917643))

(assert (= (and b!5916961 ((_ is Union!15969) (regOne!32450 (regTwo!32450 r!7292)))) b!5917644))

(declare-fun b!5917645 () Bool)

(declare-fun e!3623212 () Bool)

(assert (=> b!5917645 (= e!3623212 tp_is_empty!41191)))

(declare-fun b!5917646 () Bool)

(declare-fun tp!1644071 () Bool)

(declare-fun tp!1644073 () Bool)

(assert (=> b!5917646 (= e!3623212 (and tp!1644071 tp!1644073))))

(declare-fun b!5917648 () Bool)

(declare-fun tp!1644072 () Bool)

(declare-fun tp!1644074 () Bool)

(assert (=> b!5917648 (= e!3623212 (and tp!1644072 tp!1644074))))

(assert (=> b!5916961 (= tp!1643949 e!3623212)))

(declare-fun b!5917647 () Bool)

(declare-fun tp!1644070 () Bool)

(assert (=> b!5917647 (= e!3623212 tp!1644070)))

(assert (= (and b!5916961 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32450 r!7292)))) b!5917645))

(assert (= (and b!5916961 ((_ is Concat!24814) (regTwo!32450 (regTwo!32450 r!7292)))) b!5917646))

(assert (= (and b!5916961 ((_ is Star!15969) (regTwo!32450 (regTwo!32450 r!7292)))) b!5917647))

(assert (= (and b!5916961 ((_ is Union!15969) (regTwo!32450 (regTwo!32450 r!7292)))) b!5917648))

(declare-fun b!5917649 () Bool)

(declare-fun e!3623213 () Bool)

(assert (=> b!5917649 (= e!3623213 tp_is_empty!41191)))

(declare-fun b!5917650 () Bool)

(declare-fun tp!1644076 () Bool)

(declare-fun tp!1644078 () Bool)

(assert (=> b!5917650 (= e!3623213 (and tp!1644076 tp!1644078))))

(declare-fun b!5917652 () Bool)

(declare-fun tp!1644077 () Bool)

(declare-fun tp!1644079 () Bool)

(assert (=> b!5917652 (= e!3623213 (and tp!1644077 tp!1644079))))

(assert (=> b!5916975 (= tp!1643961 e!3623213)))

(declare-fun b!5917651 () Bool)

(declare-fun tp!1644075 () Bool)

(assert (=> b!5917651 (= e!3623213 tp!1644075)))

(assert (= (and b!5916975 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32451 r!7292)))) b!5917649))

(assert (= (and b!5916975 ((_ is Concat!24814) (regOne!32450 (regOne!32451 r!7292)))) b!5917650))

(assert (= (and b!5916975 ((_ is Star!15969) (regOne!32450 (regOne!32451 r!7292)))) b!5917651))

(assert (= (and b!5916975 ((_ is Union!15969) (regOne!32450 (regOne!32451 r!7292)))) b!5917652))

(declare-fun b!5917653 () Bool)

(declare-fun e!3623214 () Bool)

(assert (=> b!5917653 (= e!3623214 tp_is_empty!41191)))

(declare-fun b!5917654 () Bool)

(declare-fun tp!1644081 () Bool)

(declare-fun tp!1644083 () Bool)

(assert (=> b!5917654 (= e!3623214 (and tp!1644081 tp!1644083))))

(declare-fun b!5917656 () Bool)

(declare-fun tp!1644082 () Bool)

(declare-fun tp!1644084 () Bool)

(assert (=> b!5917656 (= e!3623214 (and tp!1644082 tp!1644084))))

(assert (=> b!5916975 (= tp!1643963 e!3623214)))

(declare-fun b!5917655 () Bool)

(declare-fun tp!1644080 () Bool)

(assert (=> b!5917655 (= e!3623214 tp!1644080)))

(assert (= (and b!5916975 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32451 r!7292)))) b!5917653))

(assert (= (and b!5916975 ((_ is Concat!24814) (regTwo!32450 (regOne!32451 r!7292)))) b!5917654))

(assert (= (and b!5916975 ((_ is Star!15969) (regTwo!32450 (regOne!32451 r!7292)))) b!5917655))

(assert (= (and b!5916975 ((_ is Union!15969) (regTwo!32450 (regOne!32451 r!7292)))) b!5917656))

(declare-fun b!5917657 () Bool)

(declare-fun e!3623215 () Bool)

(assert (=> b!5917657 (= e!3623215 tp_is_empty!41191)))

(declare-fun b!5917658 () Bool)

(declare-fun tp!1644086 () Bool)

(declare-fun tp!1644088 () Bool)

(assert (=> b!5917658 (= e!3623215 (and tp!1644086 tp!1644088))))

(declare-fun b!5917660 () Bool)

(declare-fun tp!1644087 () Bool)

(declare-fun tp!1644089 () Bool)

(assert (=> b!5917660 (= e!3623215 (and tp!1644087 tp!1644089))))

(assert (=> b!5916981 (= tp!1643967 e!3623215)))

(declare-fun b!5917659 () Bool)

(declare-fun tp!1644085 () Bool)

(assert (=> b!5917659 (= e!3623215 tp!1644085)))

(assert (= (and b!5916981 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32451 r!7292)))) b!5917657))

(assert (= (and b!5916981 ((_ is Concat!24814) (regOne!32451 (regTwo!32451 r!7292)))) b!5917658))

(assert (= (and b!5916981 ((_ is Star!15969) (regOne!32451 (regTwo!32451 r!7292)))) b!5917659))

(assert (= (and b!5916981 ((_ is Union!15969) (regOne!32451 (regTwo!32451 r!7292)))) b!5917660))

(declare-fun b!5917661 () Bool)

(declare-fun e!3623216 () Bool)

(assert (=> b!5917661 (= e!3623216 tp_is_empty!41191)))

(declare-fun b!5917662 () Bool)

(declare-fun tp!1644091 () Bool)

(declare-fun tp!1644093 () Bool)

(assert (=> b!5917662 (= e!3623216 (and tp!1644091 tp!1644093))))

(declare-fun b!5917664 () Bool)

(declare-fun tp!1644092 () Bool)

(declare-fun tp!1644094 () Bool)

(assert (=> b!5917664 (= e!3623216 (and tp!1644092 tp!1644094))))

(assert (=> b!5916981 (= tp!1643969 e!3623216)))

(declare-fun b!5917663 () Bool)

(declare-fun tp!1644090 () Bool)

(assert (=> b!5917663 (= e!3623216 tp!1644090)))

(assert (= (and b!5916981 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32451 r!7292)))) b!5917661))

(assert (= (and b!5916981 ((_ is Concat!24814) (regTwo!32451 (regTwo!32451 r!7292)))) b!5917662))

(assert (= (and b!5916981 ((_ is Star!15969) (regTwo!32451 (regTwo!32451 r!7292)))) b!5917663))

(assert (= (and b!5916981 ((_ is Union!15969) (regTwo!32451 (regTwo!32451 r!7292)))) b!5917664))

(declare-fun b!5917665 () Bool)

(declare-fun e!3623217 () Bool)

(assert (=> b!5917665 (= e!3623217 tp_is_empty!41191)))

(declare-fun b!5917666 () Bool)

(declare-fun tp!1644096 () Bool)

(declare-fun tp!1644098 () Bool)

(assert (=> b!5917666 (= e!3623217 (and tp!1644096 tp!1644098))))

(declare-fun b!5917668 () Bool)

(declare-fun tp!1644097 () Bool)

(declare-fun tp!1644099 () Bool)

(assert (=> b!5917668 (= e!3623217 (and tp!1644097 tp!1644099))))

(assert (=> b!5916958 (= tp!1643941 e!3623217)))

(declare-fun b!5917667 () Bool)

(declare-fun tp!1644095 () Bool)

(assert (=> b!5917667 (= e!3623217 tp!1644095)))

(assert (= (and b!5916958 ((_ is ElementMatch!15969) (reg!16298 (regOne!32450 r!7292)))) b!5917665))

(assert (= (and b!5916958 ((_ is Concat!24814) (reg!16298 (regOne!32450 r!7292)))) b!5917666))

(assert (= (and b!5916958 ((_ is Star!15969) (reg!16298 (regOne!32450 r!7292)))) b!5917667))

(assert (= (and b!5916958 ((_ is Union!15969) (reg!16298 (regOne!32450 r!7292)))) b!5917668))

(declare-fun b!5917669 () Bool)

(declare-fun e!3623218 () Bool)

(assert (=> b!5917669 (= e!3623218 tp_is_empty!41191)))

(declare-fun b!5917670 () Bool)

(declare-fun tp!1644101 () Bool)

(declare-fun tp!1644103 () Bool)

(assert (=> b!5917670 (= e!3623218 (and tp!1644101 tp!1644103))))

(declare-fun b!5917672 () Bool)

(declare-fun tp!1644102 () Bool)

(declare-fun tp!1644104 () Bool)

(assert (=> b!5917672 (= e!3623218 (and tp!1644102 tp!1644104))))

(assert (=> b!5916959 (= tp!1643943 e!3623218)))

(declare-fun b!5917671 () Bool)

(declare-fun tp!1644100 () Bool)

(assert (=> b!5917671 (= e!3623218 tp!1644100)))

(assert (= (and b!5916959 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32450 r!7292)))) b!5917669))

(assert (= (and b!5916959 ((_ is Concat!24814) (regOne!32451 (regOne!32450 r!7292)))) b!5917670))

(assert (= (and b!5916959 ((_ is Star!15969) (regOne!32451 (regOne!32450 r!7292)))) b!5917671))

(assert (= (and b!5916959 ((_ is Union!15969) (regOne!32451 (regOne!32450 r!7292)))) b!5917672))

(declare-fun b!5917673 () Bool)

(declare-fun e!3623219 () Bool)

(assert (=> b!5917673 (= e!3623219 tp_is_empty!41191)))

(declare-fun b!5917674 () Bool)

(declare-fun tp!1644106 () Bool)

(declare-fun tp!1644108 () Bool)

(assert (=> b!5917674 (= e!3623219 (and tp!1644106 tp!1644108))))

(declare-fun b!5917676 () Bool)

(declare-fun tp!1644107 () Bool)

(declare-fun tp!1644109 () Bool)

(assert (=> b!5917676 (= e!3623219 (and tp!1644107 tp!1644109))))

(assert (=> b!5916959 (= tp!1643945 e!3623219)))

(declare-fun b!5917675 () Bool)

(declare-fun tp!1644105 () Bool)

(assert (=> b!5917675 (= e!3623219 tp!1644105)))

(assert (= (and b!5916959 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32450 r!7292)))) b!5917673))

(assert (= (and b!5916959 ((_ is Concat!24814) (regTwo!32451 (regOne!32450 r!7292)))) b!5917674))

(assert (= (and b!5916959 ((_ is Star!15969) (regTwo!32451 (regOne!32450 r!7292)))) b!5917675))

(assert (= (and b!5916959 ((_ is Union!15969) (regTwo!32451 (regOne!32450 r!7292)))) b!5917676))

(declare-fun b!5917677 () Bool)

(declare-fun e!3623220 () Bool)

(declare-fun tp!1644110 () Bool)

(assert (=> b!5917677 (= e!3623220 (and tp_is_empty!41191 tp!1644110))))

(assert (=> b!5916973 (= tp!1643959 e!3623220)))

(assert (= (and b!5916973 ((_ is Cons!64084) (t!377597 (t!377597 s!2326)))) b!5917677))

(declare-fun b!5917678 () Bool)

(declare-fun e!3623221 () Bool)

(assert (=> b!5917678 (= e!3623221 tp_is_empty!41191)))

(declare-fun b!5917679 () Bool)

(declare-fun tp!1644112 () Bool)

(declare-fun tp!1644114 () Bool)

(assert (=> b!5917679 (= e!3623221 (and tp!1644112 tp!1644114))))

(declare-fun b!5917681 () Bool)

(declare-fun tp!1644113 () Bool)

(declare-fun tp!1644115 () Bool)

(assert (=> b!5917681 (= e!3623221 (and tp!1644113 tp!1644115))))

(assert (=> b!5916979 (= tp!1643966 e!3623221)))

(declare-fun b!5917680 () Bool)

(declare-fun tp!1644111 () Bool)

(assert (=> b!5917680 (= e!3623221 tp!1644111)))

(assert (= (and b!5916979 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32451 r!7292)))) b!5917678))

(assert (= (and b!5916979 ((_ is Concat!24814) (regOne!32450 (regTwo!32451 r!7292)))) b!5917679))

(assert (= (and b!5916979 ((_ is Star!15969) (regOne!32450 (regTwo!32451 r!7292)))) b!5917680))

(assert (= (and b!5916979 ((_ is Union!15969) (regOne!32450 (regTwo!32451 r!7292)))) b!5917681))

(declare-fun b!5917682 () Bool)

(declare-fun e!3623222 () Bool)

(assert (=> b!5917682 (= e!3623222 tp_is_empty!41191)))

(declare-fun b!5917683 () Bool)

(declare-fun tp!1644117 () Bool)

(declare-fun tp!1644119 () Bool)

(assert (=> b!5917683 (= e!3623222 (and tp!1644117 tp!1644119))))

(declare-fun b!5917685 () Bool)

(declare-fun tp!1644118 () Bool)

(declare-fun tp!1644120 () Bool)

(assert (=> b!5917685 (= e!3623222 (and tp!1644118 tp!1644120))))

(assert (=> b!5916979 (= tp!1643968 e!3623222)))

(declare-fun b!5917684 () Bool)

(declare-fun tp!1644116 () Bool)

(assert (=> b!5917684 (= e!3623222 tp!1644116)))

(assert (= (and b!5916979 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32451 r!7292)))) b!5917682))

(assert (= (and b!5916979 ((_ is Concat!24814) (regTwo!32450 (regTwo!32451 r!7292)))) b!5917683))

(assert (= (and b!5916979 ((_ is Star!15969) (regTwo!32450 (regTwo!32451 r!7292)))) b!5917684))

(assert (= (and b!5916979 ((_ is Union!15969) (regTwo!32450 (regTwo!32451 r!7292)))) b!5917685))

(declare-fun b!5917686 () Bool)

(declare-fun e!3623223 () Bool)

(assert (=> b!5917686 (= e!3623223 tp_is_empty!41191)))

(declare-fun b!5917687 () Bool)

(declare-fun tp!1644122 () Bool)

(declare-fun tp!1644124 () Bool)

(assert (=> b!5917687 (= e!3623223 (and tp!1644122 tp!1644124))))

(declare-fun b!5917689 () Bool)

(declare-fun tp!1644123 () Bool)

(declare-fun tp!1644125 () Bool)

(assert (=> b!5917689 (= e!3623223 (and tp!1644123 tp!1644125))))

(assert (=> b!5916980 (= tp!1643965 e!3623223)))

(declare-fun b!5917688 () Bool)

(declare-fun tp!1644121 () Bool)

(assert (=> b!5917688 (= e!3623223 tp!1644121)))

(assert (= (and b!5916980 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32451 r!7292)))) b!5917686))

(assert (= (and b!5916980 ((_ is Concat!24814) (reg!16298 (regTwo!32451 r!7292)))) b!5917687))

(assert (= (and b!5916980 ((_ is Star!15969) (reg!16298 (regTwo!32451 r!7292)))) b!5917688))

(assert (= (and b!5916980 ((_ is Union!15969) (reg!16298 (regTwo!32451 r!7292)))) b!5917689))

(declare-fun b!5917690 () Bool)

(declare-fun e!3623224 () Bool)

(assert (=> b!5917690 (= e!3623224 tp_is_empty!41191)))

(declare-fun b!5917691 () Bool)

(declare-fun tp!1644127 () Bool)

(declare-fun tp!1644129 () Bool)

(assert (=> b!5917691 (= e!3623224 (and tp!1644127 tp!1644129))))

(declare-fun b!5917693 () Bool)

(declare-fun tp!1644128 () Bool)

(declare-fun tp!1644130 () Bool)

(assert (=> b!5917693 (= e!3623224 (and tp!1644128 tp!1644130))))

(assert (=> b!5916957 (= tp!1643942 e!3623224)))

(declare-fun b!5917692 () Bool)

(declare-fun tp!1644126 () Bool)

(assert (=> b!5917692 (= e!3623224 tp!1644126)))

(assert (= (and b!5916957 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32450 r!7292)))) b!5917690))

(assert (= (and b!5916957 ((_ is Concat!24814) (regOne!32450 (regOne!32450 r!7292)))) b!5917691))

(assert (= (and b!5916957 ((_ is Star!15969) (regOne!32450 (regOne!32450 r!7292)))) b!5917692))

(assert (= (and b!5916957 ((_ is Union!15969) (regOne!32450 (regOne!32450 r!7292)))) b!5917693))

(declare-fun b!5917694 () Bool)

(declare-fun e!3623225 () Bool)

(assert (=> b!5917694 (= e!3623225 tp_is_empty!41191)))

(declare-fun b!5917695 () Bool)

(declare-fun tp!1644132 () Bool)

(declare-fun tp!1644134 () Bool)

(assert (=> b!5917695 (= e!3623225 (and tp!1644132 tp!1644134))))

(declare-fun b!5917697 () Bool)

(declare-fun tp!1644133 () Bool)

(declare-fun tp!1644135 () Bool)

(assert (=> b!5917697 (= e!3623225 (and tp!1644133 tp!1644135))))

(assert (=> b!5916957 (= tp!1643944 e!3623225)))

(declare-fun b!5917696 () Bool)

(declare-fun tp!1644131 () Bool)

(assert (=> b!5917696 (= e!3623225 tp!1644131)))

(assert (= (and b!5916957 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32450 r!7292)))) b!5917694))

(assert (= (and b!5916957 ((_ is Concat!24814) (regTwo!32450 (regOne!32450 r!7292)))) b!5917695))

(assert (= (and b!5916957 ((_ is Star!15969) (regTwo!32450 (regOne!32450 r!7292)))) b!5917696))

(assert (= (and b!5916957 ((_ is Union!15969) (regTwo!32450 (regOne!32450 r!7292)))) b!5917697))

(declare-fun b!5917698 () Bool)

(declare-fun e!3623226 () Bool)

(assert (=> b!5917698 (= e!3623226 tp_is_empty!41191)))

(declare-fun b!5917699 () Bool)

(declare-fun tp!1644137 () Bool)

(declare-fun tp!1644139 () Bool)

(assert (=> b!5917699 (= e!3623226 (and tp!1644137 tp!1644139))))

(declare-fun b!5917701 () Bool)

(declare-fun tp!1644138 () Bool)

(declare-fun tp!1644140 () Bool)

(assert (=> b!5917701 (= e!3623226 (and tp!1644138 tp!1644140))))

(assert (=> b!5916994 (= tp!1643981 e!3623226)))

(declare-fun b!5917700 () Bool)

(declare-fun tp!1644136 () Bool)

(assert (=> b!5917700 (= e!3623226 tp!1644136)))

(assert (= (and b!5916994 ((_ is ElementMatch!15969) (h!70530 (exprs!5853 (h!70531 zl!343))))) b!5917698))

(assert (= (and b!5916994 ((_ is Concat!24814) (h!70530 (exprs!5853 (h!70531 zl!343))))) b!5917699))

(assert (= (and b!5916994 ((_ is Star!15969) (h!70530 (exprs!5853 (h!70531 zl!343))))) b!5917700))

(assert (= (and b!5916994 ((_ is Union!15969) (h!70530 (exprs!5853 (h!70531 zl!343))))) b!5917701))

(declare-fun b!5917702 () Bool)

(declare-fun e!3623227 () Bool)

(declare-fun tp!1644141 () Bool)

(declare-fun tp!1644142 () Bool)

(assert (=> b!5917702 (= e!3623227 (and tp!1644141 tp!1644142))))

(assert (=> b!5916994 (= tp!1643982 e!3623227)))

(assert (= (and b!5916994 ((_ is Cons!64082) (t!377595 (exprs!5853 (h!70531 zl!343))))) b!5917702))

(declare-fun b_lambda!222279 () Bool)

(assert (= b_lambda!222263 (or d!1855580 b_lambda!222279)))

(declare-fun bs!1400862 () Bool)

(declare-fun d!1855938 () Bool)

(assert (= bs!1400862 (and d!1855938 d!1855580)))

(assert (=> bs!1400862 (= (dynLambda!25053 lambda!322809 (h!70530 (exprs!5853 setElem!40160))) (validRegex!7705 (h!70530 (exprs!5853 setElem!40160))))))

(declare-fun m!6815060 () Bool)

(assert (=> bs!1400862 m!6815060))

(assert (=> b!5917050 d!1855938))

(declare-fun b_lambda!222281 () Bool)

(assert (= b_lambda!222267 (or d!1855588 b_lambda!222281)))

(declare-fun bs!1400863 () Bool)

(declare-fun d!1855940 () Bool)

(assert (= bs!1400863 (and d!1855940 d!1855588)))

(assert (=> bs!1400863 (= (dynLambda!25053 lambda!322815 (h!70530 lt!2309704)) (validRegex!7705 (h!70530 lt!2309704)))))

(declare-fun m!6815062 () Bool)

(assert (=> bs!1400863 m!6815062))

(assert (=> b!5917160 d!1855940))

(declare-fun b_lambda!222283 () Bool)

(assert (= b_lambda!222273 (or d!1855624 b_lambda!222283)))

(declare-fun bs!1400864 () Bool)

(declare-fun d!1855942 () Bool)

(assert (= bs!1400864 (and d!1855942 d!1855624)))

(assert (=> bs!1400864 (= (dynLambda!25053 lambda!322837 (h!70530 (exprs!5853 (h!70531 zl!343)))) (validRegex!7705 (h!70530 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun m!6815064 () Bool)

(assert (=> bs!1400864 m!6815064))

(assert (=> b!5917419 d!1855942))

(declare-fun b_lambda!222285 () Bool)

(assert (= b_lambda!222261 (or d!1855584 b_lambda!222285)))

(declare-fun bs!1400865 () Bool)

(declare-fun d!1855944 () Bool)

(assert (= bs!1400865 (and d!1855944 d!1855584)))

(assert (=> bs!1400865 (= (dynLambda!25053 lambda!322812 (h!70530 (unfocusZipperList!1390 zl!343))) (validRegex!7705 (h!70530 (unfocusZipperList!1390 zl!343))))))

(declare-fun m!6815066 () Bool)

(assert (=> bs!1400865 m!6815066))

(assert (=> b!5917031 d!1855944))

(declare-fun b_lambda!222287 () Bool)

(assert (= b_lambda!222269 (or d!1855630 b_lambda!222287)))

(declare-fun bs!1400866 () Bool)

(declare-fun d!1855946 () Bool)

(assert (= bs!1400866 (and d!1855946 d!1855630)))

(assert (=> bs!1400866 (= (dynLambda!25053 lambda!322838 (h!70530 (exprs!5853 (h!70531 zl!343)))) (validRegex!7705 (h!70530 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> bs!1400866 m!6815064))

(assert (=> b!5917185 d!1855946))

(check-sat (not b!5917301) (not d!1855754) (not b!5917582) (not b!5917640) (not bm!469051) (not d!1855884) (not d!1855776) (not b!5917604) (not b!5917156) (not b!5917051) (not b!5917699) (not b!5917591) (not bs!1400864) (not b!5917650) (not b!5917676) (not b!5917590) (not b!5917179) (not b!5917613) (not b!5917695) (not bm!469013) (not b!5917539) (not d!1855882) (not d!1855926) (not b!5917654) (not bm!469000) (not b!5917544) (not b!5917600) (not b_lambda!222283) (not b!5917307) (not b!5917161) (not b!5917308) (not b!5917660) (not d!1855704) (not bm!469040) (not bm!468968) (not bm!469052) (not d!1855668) (not bm!468980) (not bm!468961) (not bm!468959) (not b!5917191) (not b!5917052) (not bm!468962) (not bm!468988) (not b!5917070) (not b!5917311) (not bm!469030) (not b!5917696) (not bm!468984) (not setNonEmpty!40167) (not b_lambda!222285) (not b!5917302) (not b!5917680) (not b!5917076) (not b!5917580) (not b!5917060) (not b!5917655) (not b!5917054) (not b!5917647) (not b!5917639) (not d!1855834) (not b!5917177) (not b!5917601) (not b!5917513) (not b!5917557) (not b!5917605) (not b!5917672) (not b!5917662) (not d!1855696) (not b!5917578) (not b!5917587) (not b!5917259) (not b!5917271) tp_is_empty!41191 (not b!5917300) (not b!5917679) (not bm!468965) (not b!5917304) (not b!5917572) (not b!5917663) (not b!5917648) (not b!5917616) (not b!5917596) (not b!5917671) (not b!5917159) (not b!5917621) (not b!5917493) (not b!5917152) (not b!5917667) (not bm!468964) (not d!1855812) (not b!5917420) (not b!5917370) (not b!5917253) (not b!5917651) (not b!5917658) (not b!5917058) (not b!5917579) (not b!5917280) (not b!5917001) (not b!5917670) (not d!1855726) (not b!5917702) (not b!5917044) (not b!5917622) (not b!5917583) (not b!5917257) (not b!5917038) (not bm!469057) (not b!5917065) (not d!1855694) (not b!5917692) (not d!1855880) (not b!5917003) (not b!5917066) (not b!5917401) (not b!5917646) (not b!5917576) (not bm!468958) (not bm!468967) (not bs!1400862) (not b!5917689) (not b!5917171) (not b!5917574) (not b!5917677) (not b!5917700) (not d!1855796) (not bm!469058) (not b!5917687) (not bm!469022) (not bm!468983) (not bm!469054) (not bs!1400865) (not b!5917675) (not b!5917683) (not b!5917584) (not b_lambda!222287) (not b!5917186) (not b!5917296) (not b!5917681) (not b!5917209) (not b!5916995) (not b!5917518) (not d!1855666) (not b!5917550) (not b!5917688) (not bm!469015) (not b!5917659) (not d!1855700) (not b!5917008) (not d!1855788) (not b!5917310) (not b!5917080) (not bm!469059) (not b!5917592) (not b!5917173) (not b!5917192) (not b!5917546) (not b!5917656) (not b!5917586) (not b!5917064) (not d!1855762) (not b!5917595) (not b!5917260) (not b!5917309) (not b!5917610) (not bm!469019) (not b!5917614) (not b!5917266) (not b!5917609) (not b!5917599) (not bm!469042) (not bm!468998) (not d!1855806) (not b!5917254) (not b!5917618) (not d!1855790) (not b!5917049) (not b!5917701) (not d!1855738) (not bm!469028) (not d!1855786) (not b!5917685) (not b!5917697) (not b!5917258) (not b!5917612) (not b!5917184) (not b!5917644) (not b!5917556) (not d!1855690) (not b!5917608) (not b!5917691) (not b!5917229) (not d!1855810) (not b!5917014) (not bs!1400863) (not b!5917228) (not b!5917032) (not b!5917279) (not b!5917606) (not b!5917068) (not b!5917007) (not b!5917074) (not d!1855782) (not b!5917642) (not bm!468966) (not bm!469050) (not d!1855732) (not bm!469025) (not b!5917272) (not b!5917575) (not d!1855908) (not b!5917637) (not b!5916997) (not b!5917668) (not b!5917183) (not bm!469047) (not b!5917208) (not b!5917666) (not b!5917643) (not b!5917023) (not b_lambda!222281) (not b!5917620) (not bm!469046) (not b!5917593) (not b!5917303) (not b!5917305) (not b!5917588) (not b!5917313) (not b!5917674) (not b!5917395) (not b!5917552) (not b!5917617) (not b!5917664) (not b!5917652) (not d!1855770) (not b!5917081) (not b!5917693) (not d!1855878) (not b!5917602) (not b_lambda!222279) (not b!5917207) (not b!5917594) (not b!5917684) (not bs!1400866) (not b!5917252) (not b!5917597))
(check-sat)
(get-model)

(declare-fun b!5917865 () Bool)

(declare-fun e!3623296 () Bool)

(declare-fun e!3623295 () Bool)

(assert (=> b!5917865 (= e!3623296 e!3623295)))

(declare-fun res!2481163 () Bool)

(assert (=> b!5917865 (=> (not res!2481163) (not e!3623295))))

(assert (=> b!5917865 (= res!2481163 (and (not ((_ is EmptyLang!15969) (regOne!32450 r!7292))) (not ((_ is ElementMatch!15969) (regOne!32450 r!7292)))))))

(declare-fun b!5917866 () Bool)

(declare-fun e!3623297 () Bool)

(declare-fun call!469084 () Bool)

(assert (=> b!5917866 (= e!3623297 call!469084)))

(declare-fun b!5917867 () Bool)

(declare-fun e!3623294 () Bool)

(declare-fun e!3623293 () Bool)

(assert (=> b!5917867 (= e!3623294 e!3623293)))

(declare-fun c!1051776 () Bool)

(assert (=> b!5917867 (= c!1051776 ((_ is Union!15969) (regOne!32450 r!7292)))))

(declare-fun b!5917868 () Bool)

(assert (=> b!5917868 (= e!3623293 e!3623297)))

(declare-fun res!2481162 () Bool)

(declare-fun call!469083 () Bool)

(assert (=> b!5917868 (= res!2481162 call!469083)))

(assert (=> b!5917868 (=> (not res!2481162) (not e!3623297))))

(declare-fun d!1855964 () Bool)

(declare-fun res!2481160 () Bool)

(assert (=> d!1855964 (=> res!2481160 e!3623296)))

(assert (=> d!1855964 (= res!2481160 ((_ is EmptyExpr!15969) (regOne!32450 r!7292)))))

(assert (=> d!1855964 (= (nullableFct!1935 (regOne!32450 r!7292)) e!3623296)))

(declare-fun b!5917869 () Bool)

(declare-fun e!3623292 () Bool)

(assert (=> b!5917869 (= e!3623292 call!469084)))

(declare-fun b!5917870 () Bool)

(assert (=> b!5917870 (= e!3623295 e!3623294)))

(declare-fun res!2481159 () Bool)

(assert (=> b!5917870 (=> res!2481159 e!3623294)))

(assert (=> b!5917870 (= res!2481159 ((_ is Star!15969) (regOne!32450 r!7292)))))

(declare-fun bm!469078 () Bool)

(assert (=> bm!469078 (= call!469083 (nullable!5964 (ite c!1051776 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))))))

(declare-fun bm!469079 () Bool)

(assert (=> bm!469079 (= call!469084 (nullable!5964 (ite c!1051776 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292)))))))

(declare-fun b!5917871 () Bool)

(assert (=> b!5917871 (= e!3623293 e!3623292)))

(declare-fun res!2481161 () Bool)

(assert (=> b!5917871 (= res!2481161 call!469083)))

(assert (=> b!5917871 (=> res!2481161 e!3623292)))

(assert (= (and d!1855964 (not res!2481160)) b!5917865))

(assert (= (and b!5917865 res!2481163) b!5917870))

(assert (= (and b!5917870 (not res!2481159)) b!5917867))

(assert (= (and b!5917867 c!1051776) b!5917871))

(assert (= (and b!5917867 (not c!1051776)) b!5917868))

(assert (= (and b!5917871 (not res!2481161)) b!5917869))

(assert (= (and b!5917868 res!2481162) b!5917866))

(assert (= (or b!5917869 b!5917866) bm!469079))

(assert (= (or b!5917871 b!5917868) bm!469078))

(declare-fun m!6815092 () Bool)

(assert (=> bm!469078 m!6815092))

(declare-fun m!6815094 () Bool)

(assert (=> bm!469079 m!6815094))

(assert (=> d!1855696 d!1855964))

(declare-fun b!5917872 () Bool)

(declare-fun e!3623303 () Bool)

(declare-fun e!3623298 () Bool)

(assert (=> b!5917872 (= e!3623303 e!3623298)))

(declare-fun c!1051778 () Bool)

(assert (=> b!5917872 (= c!1051778 ((_ is Union!15969) lt!2309804))))

(declare-fun b!5917873 () Bool)

(declare-fun e!3623302 () Bool)

(declare-fun call!469086 () Bool)

(assert (=> b!5917873 (= e!3623302 call!469086)))

(declare-fun d!1855966 () Bool)

(declare-fun res!2481166 () Bool)

(declare-fun e!3623304 () Bool)

(assert (=> d!1855966 (=> res!2481166 e!3623304)))

(assert (=> d!1855966 (= res!2481166 ((_ is ElementMatch!15969) lt!2309804))))

(assert (=> d!1855966 (= (validRegex!7705 lt!2309804) e!3623304)))

(declare-fun b!5917874 () Bool)

(declare-fun e!3623299 () Bool)

(declare-fun call!469087 () Bool)

(assert (=> b!5917874 (= e!3623299 call!469087)))

(declare-fun b!5917875 () Bool)

(declare-fun res!2481165 () Bool)

(declare-fun e!3623300 () Bool)

(assert (=> b!5917875 (=> (not res!2481165) (not e!3623300))))

(declare-fun call!469085 () Bool)

(assert (=> b!5917875 (= res!2481165 call!469085)))

(assert (=> b!5917875 (= e!3623298 e!3623300)))

(declare-fun b!5917876 () Bool)

(declare-fun e!3623301 () Bool)

(assert (=> b!5917876 (= e!3623301 e!3623302)))

(declare-fun res!2481167 () Bool)

(assert (=> b!5917876 (=> (not res!2481167) (not e!3623302))))

(assert (=> b!5917876 (= res!2481167 call!469085)))

(declare-fun b!5917877 () Bool)

(assert (=> b!5917877 (= e!3623303 e!3623299)))

(declare-fun res!2481168 () Bool)

(assert (=> b!5917877 (= res!2481168 (not (nullable!5964 (reg!16298 lt!2309804))))))

(assert (=> b!5917877 (=> (not res!2481168) (not e!3623299))))

(declare-fun bm!469080 () Bool)

(assert (=> bm!469080 (= call!469085 (validRegex!7705 (ite c!1051778 (regOne!32451 lt!2309804) (regOne!32450 lt!2309804))))))

(declare-fun b!5917878 () Bool)

(declare-fun res!2481164 () Bool)

(assert (=> b!5917878 (=> res!2481164 e!3623301)))

(assert (=> b!5917878 (= res!2481164 (not ((_ is Concat!24814) lt!2309804)))))

(assert (=> b!5917878 (= e!3623298 e!3623301)))

(declare-fun b!5917879 () Bool)

(assert (=> b!5917879 (= e!3623304 e!3623303)))

(declare-fun c!1051777 () Bool)

(assert (=> b!5917879 (= c!1051777 ((_ is Star!15969) lt!2309804))))

(declare-fun b!5917880 () Bool)

(assert (=> b!5917880 (= e!3623300 call!469086)))

(declare-fun bm!469081 () Bool)

(assert (=> bm!469081 (= call!469086 call!469087)))

(declare-fun bm!469082 () Bool)

(assert (=> bm!469082 (= call!469087 (validRegex!7705 (ite c!1051777 (reg!16298 lt!2309804) (ite c!1051778 (regTwo!32451 lt!2309804) (regTwo!32450 lt!2309804)))))))

(assert (= (and d!1855966 (not res!2481166)) b!5917879))

(assert (= (and b!5917879 c!1051777) b!5917877))

(assert (= (and b!5917879 (not c!1051777)) b!5917872))

(assert (= (and b!5917877 res!2481168) b!5917874))

(assert (= (and b!5917872 c!1051778) b!5917875))

(assert (= (and b!5917872 (not c!1051778)) b!5917878))

(assert (= (and b!5917875 res!2481165) b!5917880))

(assert (= (and b!5917878 (not res!2481164)) b!5917876))

(assert (= (and b!5917876 res!2481167) b!5917873))

(assert (= (or b!5917880 b!5917873) bm!469081))

(assert (= (or b!5917875 b!5917876) bm!469080))

(assert (= (or b!5917874 bm!469081) bm!469082))

(declare-fun m!6815096 () Bool)

(assert (=> b!5917877 m!6815096))

(declare-fun m!6815098 () Bool)

(assert (=> bm!469080 m!6815098))

(declare-fun m!6815100 () Bool)

(assert (=> bm!469082 m!6815100))

(assert (=> d!1855806 d!1855966))

(declare-fun d!1855968 () Bool)

(declare-fun res!2481169 () Bool)

(declare-fun e!3623305 () Bool)

(assert (=> d!1855968 (=> res!2481169 e!3623305)))

(assert (=> d!1855968 (= res!2481169 ((_ is Nil!64082) (t!377595 (unfocusZipperList!1390 zl!343))))))

(assert (=> d!1855968 (= (forall!15051 (t!377595 (unfocusZipperList!1390 zl!343)) lambda!322873) e!3623305)))

(declare-fun b!5917881 () Bool)

(declare-fun e!3623306 () Bool)

(assert (=> b!5917881 (= e!3623305 e!3623306)))

(declare-fun res!2481170 () Bool)

(assert (=> b!5917881 (=> (not res!2481170) (not e!3623306))))

(assert (=> b!5917881 (= res!2481170 (dynLambda!25053 lambda!322873 (h!70530 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5917882 () Bool)

(assert (=> b!5917882 (= e!3623306 (forall!15051 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343))) lambda!322873))))

(assert (= (and d!1855968 (not res!2481169)) b!5917881))

(assert (= (and b!5917881 res!2481170) b!5917882))

(declare-fun b_lambda!222301 () Bool)

(assert (=> (not b_lambda!222301) (not b!5917881)))

(declare-fun m!6815102 () Bool)

(assert (=> b!5917881 m!6815102))

(declare-fun m!6815104 () Bool)

(assert (=> b!5917882 m!6815104))

(assert (=> d!1855806 d!1855968))

(declare-fun b!5917883 () Bool)

(declare-fun e!3623312 () (InoxSet Context!10706))

(declare-fun call!469092 () (InoxSet Context!10706))

(declare-fun call!469093 () (InoxSet Context!10706))

(assert (=> b!5917883 (= e!3623312 ((_ map or) call!469092 call!469093))))

(declare-fun bm!469083 () Bool)

(declare-fun call!469090 () (InoxSet Context!10706))

(assert (=> bm!469083 (= call!469090 call!469092)))

(declare-fun bm!469084 () Bool)

(declare-fun call!469088 () List!64206)

(declare-fun call!469089 () List!64206)

(assert (=> bm!469084 (= call!469088 call!469089)))

(declare-fun b!5917884 () Bool)

(declare-fun e!3623311 () (InoxSet Context!10706))

(declare-fun call!469091 () (InoxSet Context!10706))

(assert (=> b!5917884 (= e!3623311 call!469091)))

(declare-fun c!1051781 () Bool)

(declare-fun bm!469085 () Bool)

(declare-fun c!1051779 () Bool)

(assert (=> bm!469085 (= call!469089 ($colon$colon!1856 (exprs!5853 (ite c!1051708 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469023))) (ite (or c!1051781 c!1051779) (regTwo!32450 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))) (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))))

(declare-fun b!5917885 () Bool)

(assert (=> b!5917885 (= e!3623311 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5917886 () Bool)

(declare-fun e!3623308 () (InoxSet Context!10706))

(assert (=> b!5917886 (= e!3623308 ((_ map or) call!469093 call!469090))))

(declare-fun c!1051780 () Bool)

(declare-fun b!5917887 () Bool)

(assert (=> b!5917887 (= c!1051780 ((_ is Star!15969) (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))))

(declare-fun e!3623309 () (InoxSet Context!10706))

(assert (=> b!5917887 (= e!3623309 e!3623311)))

(declare-fun d!1855970 () Bool)

(declare-fun c!1051783 () Bool)

(assert (=> d!1855970 (= c!1051783 (and ((_ is ElementMatch!15969) (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))) (= (c!1051439 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))) (h!70532 s!2326))))))

(declare-fun e!3623310 () (InoxSet Context!10706))

(assert (=> d!1855970 (= (derivationStepZipperDown!1219 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))) (ite c!1051708 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469023)) (h!70532 s!2326)) e!3623310)))

(declare-fun bm!469086 () Bool)

(declare-fun c!1051782 () Bool)

(assert (=> bm!469086 (= call!469093 (derivationStepZipperDown!1219 (ite c!1051782 (regTwo!32451 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))) (regOne!32450 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))) (ite c!1051782 (ite c!1051708 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469023)) (Context!10707 call!469089)) (h!70532 s!2326)))))

(declare-fun b!5917888 () Bool)

(assert (=> b!5917888 (= e!3623310 (store ((as const (Array Context!10706 Bool)) false) (ite c!1051708 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469023)) true))))

(declare-fun bm!469087 () Bool)

(assert (=> bm!469087 (= call!469092 (derivationStepZipperDown!1219 (ite c!1051782 (regOne!32451 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))) (ite c!1051781 (regTwo!32450 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))) (ite c!1051779 (regOne!32450 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))) (reg!16298 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))) (ite (or c!1051782 c!1051781) (ite c!1051708 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469023)) (Context!10707 call!469088)) (h!70532 s!2326)))))

(declare-fun b!5917889 () Bool)

(declare-fun e!3623307 () Bool)

(assert (=> b!5917889 (= c!1051781 e!3623307)))

(declare-fun res!2481171 () Bool)

(assert (=> b!5917889 (=> (not res!2481171) (not e!3623307))))

(assert (=> b!5917889 (= res!2481171 ((_ is Concat!24814) (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))))

(assert (=> b!5917889 (= e!3623312 e!3623308)))

(declare-fun b!5917890 () Bool)

(assert (=> b!5917890 (= e!3623309 call!469091)))

(declare-fun b!5917891 () Bool)

(assert (=> b!5917891 (= e!3623308 e!3623309)))

(assert (=> b!5917891 (= c!1051779 ((_ is Concat!24814) (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))))

(declare-fun b!5917892 () Bool)

(assert (=> b!5917892 (= e!3623310 e!3623312)))

(assert (=> b!5917892 (= c!1051782 ((_ is Union!15969) (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))))

(declare-fun bm!469088 () Bool)

(assert (=> bm!469088 (= call!469091 call!469090)))

(declare-fun b!5917893 () Bool)

(assert (=> b!5917893 (= e!3623307 (nullable!5964 (regOne!32450 (ite c!1051708 (regTwo!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))))

(assert (= (and d!1855970 c!1051783) b!5917888))

(assert (= (and d!1855970 (not c!1051783)) b!5917892))

(assert (= (and b!5917892 c!1051782) b!5917883))

(assert (= (and b!5917892 (not c!1051782)) b!5917889))

(assert (= (and b!5917889 res!2481171) b!5917893))

(assert (= (and b!5917889 c!1051781) b!5917886))

(assert (= (and b!5917889 (not c!1051781)) b!5917891))

(assert (= (and b!5917891 c!1051779) b!5917890))

(assert (= (and b!5917891 (not c!1051779)) b!5917887))

(assert (= (and b!5917887 c!1051780) b!5917884))

(assert (= (and b!5917887 (not c!1051780)) b!5917885))

(assert (= (or b!5917890 b!5917884) bm!469084))

(assert (= (or b!5917890 b!5917884) bm!469088))

(assert (= (or b!5917886 bm!469084) bm!469085))

(assert (= (or b!5917886 bm!469088) bm!469083))

(assert (= (or b!5917883 b!5917886) bm!469086))

(assert (= (or b!5917883 bm!469083) bm!469087))

(declare-fun m!6815106 () Bool)

(assert (=> b!5917888 m!6815106))

(declare-fun m!6815108 () Bool)

(assert (=> bm!469086 m!6815108))

(declare-fun m!6815110 () Bool)

(assert (=> bm!469087 m!6815110))

(declare-fun m!6815112 () Bool)

(assert (=> b!5917893 m!6815112))

(declare-fun m!6815114 () Bool)

(assert (=> bm!469085 m!6815114))

(assert (=> bm!469022 d!1855970))

(assert (=> bm!468968 d!1855760))

(declare-fun d!1855972 () Bool)

(assert (=> d!1855972 (= (isEmpty!35940 (tail!11564 (_1!36251 (get!22066 lt!2309750)))) ((_ is Nil!64084) (tail!11564 (_1!36251 (get!22066 lt!2309750)))))))

(assert (=> b!5917065 d!1855972))

(declare-fun d!1855974 () Bool)

(assert (=> d!1855974 (= (tail!11564 (_1!36251 (get!22066 lt!2309750))) (t!377597 (_1!36251 (get!22066 lt!2309750))))))

(assert (=> b!5917065 d!1855974))

(declare-fun bs!1400882 () Bool)

(declare-fun b!5917894 () Bool)

(assert (= bs!1400882 (and b!5917894 d!1855652)))

(declare-fun lambda!322899 () Int)

(assert (=> bs!1400882 (not (= lambda!322899 lambda!322859))))

(declare-fun bs!1400883 () Bool)

(assert (= bs!1400883 (and b!5917894 d!1855812)))

(assert (=> bs!1400883 (not (= lambda!322899 lambda!322879))))

(assert (=> bs!1400882 (not (= lambda!322899 lambda!322857))))

(declare-fun bs!1400884 () Bool)

(assert (= bs!1400884 (and b!5917894 b!5916342)))

(assert (=> bs!1400884 (not (= lambda!322899 lambda!322806))))

(declare-fun bs!1400885 () Bool)

(assert (= bs!1400885 (and b!5917894 b!5916600)))

(assert (=> bs!1400885 (= (and (= (reg!16298 (regOne!32451 (regOne!32451 r!7292))) (reg!16298 r!7292)) (= (regOne!32451 (regOne!32451 r!7292)) r!7292)) (= lambda!322899 lambda!322826))))

(declare-fun bs!1400886 () Bool)

(assert (= bs!1400886 (and b!5917894 b!5917042)))

(assert (=> bs!1400886 (not (= lambda!322899 lambda!322864))))

(declare-fun bs!1400887 () Bool)

(assert (= bs!1400887 (and b!5917894 b!5917511)))

(assert (=> bs!1400887 (not (= lambda!322899 lambda!322891))))

(declare-fun bs!1400888 () Bool)

(assert (= bs!1400888 (and b!5917894 d!1855884)))

(assert (=> bs!1400888 (not (= lambda!322899 lambda!322885))))

(assert (=> bs!1400888 (not (= lambda!322899 lambda!322888))))

(declare-fun bs!1400889 () Bool)

(assert (= bs!1400889 (and b!5917894 d!1855648)))

(assert (=> bs!1400889 (not (= lambda!322899 lambda!322850))))

(declare-fun bs!1400890 () Bool)

(assert (= bs!1400890 (and b!5917894 b!5916603)))

(assert (=> bs!1400890 (not (= lambda!322899 lambda!322827))))

(declare-fun bs!1400891 () Bool)

(assert (= bs!1400891 (and b!5917894 b!5917508)))

(assert (=> bs!1400891 (= (and (= (reg!16298 (regOne!32451 (regOne!32451 r!7292))) (reg!16298 (regOne!32451 r!7292))) (= (regOne!32451 (regOne!32451 r!7292)) (regOne!32451 r!7292))) (= lambda!322899 lambda!322890))))

(declare-fun bs!1400892 () Bool)

(assert (= bs!1400892 (and b!5917894 b!5917039)))

(assert (=> bs!1400892 (= (and (= (reg!16298 (regOne!32451 (regOne!32451 r!7292))) (reg!16298 (regTwo!32451 r!7292))) (= (regOne!32451 (regOne!32451 r!7292)) (regTwo!32451 r!7292))) (= lambda!322899 lambda!322863))))

(assert (=> bs!1400884 (not (= lambda!322899 lambda!322805))))

(assert (=> b!5917894 true))

(assert (=> b!5917894 true))

(declare-fun bs!1400893 () Bool)

(declare-fun b!5917897 () Bool)

(assert (= bs!1400893 (and b!5917897 d!1855652)))

(declare-fun lambda!322900 () Int)

(assert (=> bs!1400893 (= (and (= (regOne!32450 (regOne!32451 (regOne!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322900 lambda!322859))))

(declare-fun bs!1400894 () Bool)

(assert (= bs!1400894 (and b!5917897 d!1855812)))

(assert (=> bs!1400894 (not (= lambda!322900 lambda!322879))))

(assert (=> bs!1400893 (not (= lambda!322900 lambda!322857))))

(declare-fun bs!1400895 () Bool)

(assert (= bs!1400895 (and b!5917897 b!5916342)))

(assert (=> bs!1400895 (= (and (= (regOne!32450 (regOne!32451 (regOne!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322900 lambda!322806))))

(declare-fun bs!1400896 () Bool)

(assert (= bs!1400896 (and b!5917897 b!5917894)))

(assert (=> bs!1400896 (not (= lambda!322900 lambda!322899))))

(declare-fun bs!1400897 () Bool)

(assert (= bs!1400897 (and b!5917897 b!5916600)))

(assert (=> bs!1400897 (not (= lambda!322900 lambda!322826))))

(declare-fun bs!1400898 () Bool)

(assert (= bs!1400898 (and b!5917897 b!5917042)))

(assert (=> bs!1400898 (= (and (= (regOne!32450 (regOne!32451 (regOne!32451 r!7292))) (regOne!32450 (regTwo!32451 r!7292))) (= (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))) (regTwo!32450 (regTwo!32451 r!7292)))) (= lambda!322900 lambda!322864))))

(declare-fun bs!1400899 () Bool)

(assert (= bs!1400899 (and b!5917897 b!5917511)))

(assert (=> bs!1400899 (= (and (= (regOne!32450 (regOne!32451 (regOne!32451 r!7292))) (regOne!32450 (regOne!32451 r!7292))) (= (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))) (regTwo!32450 (regOne!32451 r!7292)))) (= lambda!322900 lambda!322891))))

(declare-fun bs!1400900 () Bool)

(assert (= bs!1400900 (and b!5917897 d!1855884)))

(assert (=> bs!1400900 (not (= lambda!322900 lambda!322885))))

(assert (=> bs!1400900 (= (and (= (regOne!32450 (regOne!32451 (regOne!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322900 lambda!322888))))

(declare-fun bs!1400901 () Bool)

(assert (= bs!1400901 (and b!5917897 d!1855648)))

(assert (=> bs!1400901 (not (= lambda!322900 lambda!322850))))

(declare-fun bs!1400902 () Bool)

(assert (= bs!1400902 (and b!5917897 b!5916603)))

(assert (=> bs!1400902 (= (and (= (regOne!32450 (regOne!32451 (regOne!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322900 lambda!322827))))

(declare-fun bs!1400903 () Bool)

(assert (= bs!1400903 (and b!5917897 b!5917508)))

(assert (=> bs!1400903 (not (= lambda!322900 lambda!322890))))

(declare-fun bs!1400904 () Bool)

(assert (= bs!1400904 (and b!5917897 b!5917039)))

(assert (=> bs!1400904 (not (= lambda!322900 lambda!322863))))

(assert (=> bs!1400895 (not (= lambda!322900 lambda!322805))))

(assert (=> b!5917897 true))

(assert (=> b!5917897 true))

(declare-fun e!3623317 () Bool)

(declare-fun call!469095 () Bool)

(assert (=> b!5917894 (= e!3623317 call!469095)))

(declare-fun b!5917895 () Bool)

(declare-fun e!3623316 () Bool)

(declare-fun e!3623319 () Bool)

(assert (=> b!5917895 (= e!3623316 e!3623319)))

(declare-fun c!1051784 () Bool)

(assert (=> b!5917895 (= c!1051784 ((_ is Star!15969) (regOne!32451 (regOne!32451 r!7292))))))

(declare-fun b!5917896 () Bool)

(declare-fun c!1051786 () Bool)

(assert (=> b!5917896 (= c!1051786 ((_ is Union!15969) (regOne!32451 (regOne!32451 r!7292))))))

(declare-fun e!3623314 () Bool)

(assert (=> b!5917896 (= e!3623314 e!3623316)))

(assert (=> b!5917897 (= e!3623319 call!469095)))

(declare-fun bm!469089 () Bool)

(assert (=> bm!469089 (= call!469095 (Exists!3039 (ite c!1051784 lambda!322899 lambda!322900)))))

(declare-fun b!5917898 () Bool)

(declare-fun res!2481173 () Bool)

(assert (=> b!5917898 (=> res!2481173 e!3623317)))

(declare-fun call!469094 () Bool)

(assert (=> b!5917898 (= res!2481173 call!469094)))

(assert (=> b!5917898 (= e!3623319 e!3623317)))

(declare-fun d!1855976 () Bool)

(declare-fun c!1051785 () Bool)

(assert (=> d!1855976 (= c!1051785 ((_ is EmptyExpr!15969) (regOne!32451 (regOne!32451 r!7292))))))

(declare-fun e!3623315 () Bool)

(assert (=> d!1855976 (= (matchRSpec!3070 (regOne!32451 (regOne!32451 r!7292)) s!2326) e!3623315)))

(declare-fun b!5917899 () Bool)

(declare-fun e!3623318 () Bool)

(assert (=> b!5917899 (= e!3623318 (matchRSpec!3070 (regTwo!32451 (regOne!32451 (regOne!32451 r!7292))) s!2326))))

(declare-fun b!5917900 () Bool)

(assert (=> b!5917900 (= e!3623314 (= s!2326 (Cons!64084 (c!1051439 (regOne!32451 (regOne!32451 r!7292))) Nil!64084)))))

(declare-fun b!5917901 () Bool)

(declare-fun e!3623313 () Bool)

(assert (=> b!5917901 (= e!3623315 e!3623313)))

(declare-fun res!2481172 () Bool)

(assert (=> b!5917901 (= res!2481172 (not ((_ is EmptyLang!15969) (regOne!32451 (regOne!32451 r!7292)))))))

(assert (=> b!5917901 (=> (not res!2481172) (not e!3623313))))

(declare-fun b!5917902 () Bool)

(declare-fun c!1051787 () Bool)

(assert (=> b!5917902 (= c!1051787 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32451 r!7292))))))

(assert (=> b!5917902 (= e!3623313 e!3623314)))

(declare-fun b!5917903 () Bool)

(assert (=> b!5917903 (= e!3623315 call!469094)))

(declare-fun b!5917904 () Bool)

(assert (=> b!5917904 (= e!3623316 e!3623318)))

(declare-fun res!2481174 () Bool)

(assert (=> b!5917904 (= res!2481174 (matchRSpec!3070 (regOne!32451 (regOne!32451 (regOne!32451 r!7292))) s!2326))))

(assert (=> b!5917904 (=> res!2481174 e!3623318)))

(declare-fun bm!469090 () Bool)

(assert (=> bm!469090 (= call!469094 (isEmpty!35940 s!2326))))

(assert (= (and d!1855976 c!1051785) b!5917903))

(assert (= (and d!1855976 (not c!1051785)) b!5917901))

(assert (= (and b!5917901 res!2481172) b!5917902))

(assert (= (and b!5917902 c!1051787) b!5917900))

(assert (= (and b!5917902 (not c!1051787)) b!5917896))

(assert (= (and b!5917896 c!1051786) b!5917904))

(assert (= (and b!5917896 (not c!1051786)) b!5917895))

(assert (= (and b!5917904 (not res!2481174)) b!5917899))

(assert (= (and b!5917895 c!1051784) b!5917898))

(assert (= (and b!5917895 (not c!1051784)) b!5917897))

(assert (= (and b!5917898 (not res!2481173)) b!5917894))

(assert (= (or b!5917894 b!5917897) bm!469089))

(assert (= (or b!5917903 b!5917898) bm!469090))

(declare-fun m!6815116 () Bool)

(assert (=> bm!469089 m!6815116))

(declare-fun m!6815118 () Bool)

(assert (=> b!5917899 m!6815118))

(declare-fun m!6815120 () Bool)

(assert (=> b!5917904 m!6815120))

(assert (=> bm!469090 m!6814230))

(assert (=> b!5917518 d!1855976))

(declare-fun d!1855978 () Bool)

(assert (=> d!1855978 (= (head!12479 (_1!36251 (get!22066 lt!2309750))) (h!70532 (_1!36251 (get!22066 lt!2309750))))))

(assert (=> b!5917058 d!1855978))

(declare-fun d!1855980 () Bool)

(assert (not d!1855980))

(assert (=> b!5917008 d!1855980))

(declare-fun d!1855982 () Bool)

(assert (not d!1855982))

(assert (=> b!5917008 d!1855982))

(declare-fun d!1855984 () Bool)

(assert (=> d!1855984 (= (isEmpty!35940 (_2!36251 (get!22066 lt!2309750))) ((_ is Nil!64084) (_2!36251 (get!22066 lt!2309750))))))

(assert (=> bm!468988 d!1855984))

(declare-fun d!1855986 () Bool)

(assert (=> d!1855986 (= (head!12477 (t!377595 (unfocusZipperList!1390 zl!343))) (h!70530 (t!377595 (unfocusZipperList!1390 zl!343))))))

(assert (=> b!5917308 d!1855986))

(declare-fun d!1855988 () Bool)

(assert (=> d!1855988 (= (nullable!5964 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))) (nullableFct!1935 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))

(declare-fun bs!1400905 () Bool)

(assert (= bs!1400905 d!1855988))

(declare-fun m!6815122 () Bool)

(assert (=> bs!1400905 m!6815122))

(assert (=> b!5917493 d!1855988))

(declare-fun bs!1400906 () Bool)

(declare-fun d!1855990 () Bool)

(assert (= bs!1400906 (and d!1855990 d!1855580)))

(declare-fun lambda!322901 () Int)

(assert (=> bs!1400906 (= lambda!322901 lambda!322809)))

(declare-fun bs!1400907 () Bool)

(assert (= bs!1400907 (and d!1855990 d!1855834)))

(assert (=> bs!1400907 (= lambda!322901 lambda!322880)))

(declare-fun bs!1400908 () Bool)

(assert (= bs!1400908 (and d!1855990 d!1855624)))

(assert (=> bs!1400908 (= lambda!322901 lambda!322837)))

(declare-fun bs!1400909 () Bool)

(assert (= bs!1400909 (and d!1855990 d!1855584)))

(assert (=> bs!1400909 (= lambda!322901 lambda!322812)))

(declare-fun bs!1400910 () Bool)

(assert (= bs!1400910 (and d!1855990 d!1855694)))

(assert (=> bs!1400910 (= lambda!322901 lambda!322865)))

(declare-fun bs!1400911 () Bool)

(assert (= bs!1400911 (and d!1855990 d!1855782)))

(assert (=> bs!1400911 (= lambda!322901 lambda!322869)))

(declare-fun bs!1400912 () Bool)

(assert (= bs!1400912 (and d!1855990 d!1855806)))

(assert (=> bs!1400912 (= lambda!322901 lambda!322873)))

(declare-fun bs!1400913 () Bool)

(assert (= bs!1400913 (and d!1855990 d!1855630)))

(assert (=> bs!1400913 (= lambda!322901 lambda!322838)))

(declare-fun bs!1400914 () Bool)

(assert (= bs!1400914 (and d!1855990 d!1855776)))

(assert (=> bs!1400914 (= lambda!322901 lambda!322868)))

(declare-fun bs!1400915 () Bool)

(assert (= bs!1400915 (and d!1855990 d!1855588)))

(assert (=> bs!1400915 (= lambda!322901 lambda!322815)))

(assert (=> d!1855990 (= (inv!83169 (h!70531 (t!377596 (t!377596 zl!343)))) (forall!15051 (exprs!5853 (h!70531 (t!377596 (t!377596 zl!343)))) lambda!322901))))

(declare-fun bs!1400916 () Bool)

(assert (= bs!1400916 d!1855990))

(declare-fun m!6815124 () Bool)

(assert (=> bs!1400916 m!6815124))

(assert (=> b!5917593 d!1855990))

(declare-fun d!1855992 () Bool)

(assert (=> d!1855992 (= (nullable!5964 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))) (nullableFct!1935 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))

(declare-fun bs!1400917 () Bool)

(assert (= bs!1400917 d!1855992))

(declare-fun m!6815126 () Bool)

(assert (=> bs!1400917 m!6815126))

(assert (=> b!5917539 d!1855992))

(declare-fun d!1855994 () Bool)

(assert (=> d!1855994 (= (nullable!5964 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (nullableFct!1935 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))

(declare-fun bs!1400918 () Bool)

(assert (= bs!1400918 d!1855994))

(declare-fun m!6815128 () Bool)

(assert (=> bs!1400918 m!6815128))

(assert (=> b!5917156 d!1855994))

(declare-fun d!1855996 () Bool)

(assert (=> d!1855996 (= (head!12479 (tail!11564 s!2326)) (h!70532 (tail!11564 s!2326)))))

(assert (=> b!5917076 d!1855996))

(declare-fun d!1855998 () Bool)

(declare-fun res!2481175 () Bool)

(declare-fun e!3623320 () Bool)

(assert (=> d!1855998 (=> res!2481175 e!3623320)))

(assert (=> d!1855998 (= res!2481175 ((_ is Nil!64083) (t!377596 lt!2309724)))))

(assert (=> d!1855998 (= (noDuplicate!1826 (t!377596 lt!2309724)) e!3623320)))

(declare-fun b!5917905 () Bool)

(declare-fun e!3623321 () Bool)

(assert (=> b!5917905 (= e!3623320 e!3623321)))

(declare-fun res!2481176 () Bool)

(assert (=> b!5917905 (=> (not res!2481176) (not e!3623321))))

(assert (=> b!5917905 (= res!2481176 (not (contains!19954 (t!377596 (t!377596 lt!2309724)) (h!70531 (t!377596 lt!2309724)))))))

(declare-fun b!5917906 () Bool)

(assert (=> b!5917906 (= e!3623321 (noDuplicate!1826 (t!377596 (t!377596 lt!2309724))))))

(assert (= (and d!1855998 (not res!2481175)) b!5917905))

(assert (= (and b!5917905 res!2481176) b!5917906))

(declare-fun m!6815130 () Bool)

(assert (=> b!5917905 m!6815130))

(declare-fun m!6815132 () Bool)

(assert (=> b!5917906 m!6815132))

(assert (=> b!5917192 d!1855998))

(declare-fun call!469099 () Regex!15969)

(declare-fun b!5917907 () Bool)

(declare-fun e!3623325 () Regex!15969)

(assert (=> b!5917907 (= e!3623325 (Concat!24814 call!469099 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))))))

(declare-fun b!5917908 () Bool)

(declare-fun e!3623326 () Regex!15969)

(declare-fun call!469096 () Regex!15969)

(declare-fun call!469097 () Regex!15969)

(assert (=> b!5917908 (= e!3623326 (Union!15969 call!469096 call!469097))))

(declare-fun c!1051790 () Bool)

(declare-fun b!5917909 () Bool)

(assert (=> b!5917909 (= c!1051790 ((_ is Union!15969) (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))))))

(declare-fun e!3623322 () Regex!15969)

(assert (=> b!5917909 (= e!3623322 e!3623326)))

(declare-fun b!5917910 () Bool)

(declare-fun e!3623323 () Regex!15969)

(declare-fun call!469098 () Regex!15969)

(assert (=> b!5917910 (= e!3623323 (Union!15969 (Concat!24814 call!469098 (regTwo!32450 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292))))) EmptyLang!15969))))

(declare-fun bm!469091 () Bool)

(declare-fun c!1051789 () Bool)

(assert (=> bm!469091 (= call!469097 (derivativeStep!4700 (ite c!1051790 (regTwo!32451 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))) (ite c!1051789 (reg!16298 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))) (regOne!32450 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))))) (head!12479 s!2326)))))

(declare-fun bm!469092 () Bool)

(assert (=> bm!469092 (= call!469099 call!469097)))

(declare-fun b!5917911 () Bool)

(assert (=> b!5917911 (= e!3623322 (ite (= (head!12479 s!2326) (c!1051439 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292))))) EmptyExpr!15969 EmptyLang!15969))))

(declare-fun b!5917912 () Bool)

(assert (=> b!5917912 (= e!3623326 e!3623325)))

(assert (=> b!5917912 (= c!1051789 ((_ is Star!15969) (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))))))

(declare-fun bm!469093 () Bool)

(assert (=> bm!469093 (= call!469098 call!469096)))

(declare-fun c!1051788 () Bool)

(declare-fun bm!469094 () Bool)

(assert (=> bm!469094 (= call!469096 (derivativeStep!4700 (ite c!1051790 (regOne!32451 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))) (ite c!1051788 (regTwo!32450 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))) (regOne!32450 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))))) (head!12479 s!2326)))))

(declare-fun b!5917913 () Bool)

(assert (=> b!5917913 (= e!3623323 (Union!15969 (Concat!24814 call!469099 (regTwo!32450 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292))))) call!469098))))

(declare-fun b!5917914 () Bool)

(assert (=> b!5917914 (= c!1051788 (nullable!5964 (regOne!32450 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292))))))))

(assert (=> b!5917914 (= e!3623325 e!3623323)))

(declare-fun b!5917915 () Bool)

(declare-fun e!3623324 () Regex!15969)

(assert (=> b!5917915 (= e!3623324 e!3623322)))

(declare-fun c!1051791 () Bool)

(assert (=> b!5917915 (= c!1051791 ((_ is ElementMatch!15969) (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))))))

(declare-fun d!1856000 () Bool)

(declare-fun lt!2309815 () Regex!15969)

(assert (=> d!1856000 (validRegex!7705 lt!2309815)))

(assert (=> d!1856000 (= lt!2309815 e!3623324)))

(declare-fun c!1051792 () Bool)

(assert (=> d!1856000 (= c!1051792 (or ((_ is EmptyExpr!15969) (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292)))) ((_ is EmptyLang!15969) (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292))))))))

(assert (=> d!1856000 (validRegex!7705 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292))))))

(assert (=> d!1856000 (= (derivativeStep!4700 (ite c!1051645 (regTwo!32451 r!7292) (ite c!1051644 (reg!16298 r!7292) (regOne!32450 r!7292))) (head!12479 s!2326)) lt!2309815)))

(declare-fun b!5917916 () Bool)

(assert (=> b!5917916 (= e!3623324 EmptyLang!15969)))

(assert (= (and d!1856000 c!1051792) b!5917916))

(assert (= (and d!1856000 (not c!1051792)) b!5917915))

(assert (= (and b!5917915 c!1051791) b!5917911))

(assert (= (and b!5917915 (not c!1051791)) b!5917909))

(assert (= (and b!5917909 c!1051790) b!5917908))

(assert (= (and b!5917909 (not c!1051790)) b!5917912))

(assert (= (and b!5917912 c!1051789) b!5917907))

(assert (= (and b!5917912 (not c!1051789)) b!5917914))

(assert (= (and b!5917914 c!1051788) b!5917913))

(assert (= (and b!5917914 (not c!1051788)) b!5917910))

(assert (= (or b!5917913 b!5917910) bm!469093))

(assert (= (or b!5917907 b!5917913) bm!469092))

(assert (= (or b!5917908 bm!469092) bm!469091))

(assert (= (or b!5917908 bm!469093) bm!469094))

(assert (=> bm!469091 m!6814250))

(declare-fun m!6815134 () Bool)

(assert (=> bm!469091 m!6815134))

(assert (=> bm!469094 m!6814250))

(declare-fun m!6815136 () Bool)

(assert (=> bm!469094 m!6815136))

(declare-fun m!6815138 () Bool)

(assert (=> b!5917914 m!6815138))

(declare-fun m!6815140 () Bool)

(assert (=> d!1856000 m!6815140))

(declare-fun m!6815142 () Bool)

(assert (=> d!1856000 m!6815142))

(assert (=> bm!468980 d!1856000))

(declare-fun b!5917917 () Bool)

(declare-fun e!3623331 () Bool)

(declare-fun e!3623330 () Bool)

(assert (=> b!5917917 (= e!3623331 e!3623330)))

(declare-fun res!2481181 () Bool)

(assert (=> b!5917917 (=> (not res!2481181) (not e!3623330))))

(assert (=> b!5917917 (= res!2481181 (and (not ((_ is EmptyLang!15969) r!7292)) (not ((_ is ElementMatch!15969) r!7292))))))

(declare-fun b!5917918 () Bool)

(declare-fun e!3623332 () Bool)

(declare-fun call!469101 () Bool)

(assert (=> b!5917918 (= e!3623332 call!469101)))

(declare-fun b!5917919 () Bool)

(declare-fun e!3623329 () Bool)

(declare-fun e!3623328 () Bool)

(assert (=> b!5917919 (= e!3623329 e!3623328)))

(declare-fun c!1051793 () Bool)

(assert (=> b!5917919 (= c!1051793 ((_ is Union!15969) r!7292))))

(declare-fun b!5917920 () Bool)

(assert (=> b!5917920 (= e!3623328 e!3623332)))

(declare-fun res!2481180 () Bool)

(declare-fun call!469100 () Bool)

(assert (=> b!5917920 (= res!2481180 call!469100)))

(assert (=> b!5917920 (=> (not res!2481180) (not e!3623332))))

(declare-fun d!1856002 () Bool)

(declare-fun res!2481178 () Bool)

(assert (=> d!1856002 (=> res!2481178 e!3623331)))

(assert (=> d!1856002 (= res!2481178 ((_ is EmptyExpr!15969) r!7292))))

(assert (=> d!1856002 (= (nullableFct!1935 r!7292) e!3623331)))

(declare-fun b!5917921 () Bool)

(declare-fun e!3623327 () Bool)

(assert (=> b!5917921 (= e!3623327 call!469101)))

(declare-fun b!5917922 () Bool)

(assert (=> b!5917922 (= e!3623330 e!3623329)))

(declare-fun res!2481177 () Bool)

(assert (=> b!5917922 (=> res!2481177 e!3623329)))

(assert (=> b!5917922 (= res!2481177 ((_ is Star!15969) r!7292))))

(declare-fun bm!469095 () Bool)

(assert (=> bm!469095 (= call!469100 (nullable!5964 (ite c!1051793 (regOne!32451 r!7292) (regOne!32450 r!7292))))))

(declare-fun bm!469096 () Bool)

(assert (=> bm!469096 (= call!469101 (nullable!5964 (ite c!1051793 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))

(declare-fun b!5917923 () Bool)

(assert (=> b!5917923 (= e!3623328 e!3623327)))

(declare-fun res!2481179 () Bool)

(assert (=> b!5917923 (= res!2481179 call!469100)))

(assert (=> b!5917923 (=> res!2481179 e!3623327)))

(assert (= (and d!1856002 (not res!2481178)) b!5917917))

(assert (= (and b!5917917 res!2481181) b!5917922))

(assert (= (and b!5917922 (not res!2481177)) b!5917919))

(assert (= (and b!5917919 c!1051793) b!5917923))

(assert (= (and b!5917919 (not c!1051793)) b!5917920))

(assert (= (and b!5917923 (not res!2481179)) b!5917921))

(assert (= (and b!5917920 res!2481180) b!5917918))

(assert (= (or b!5917921 b!5917918) bm!469096))

(assert (= (or b!5917923 b!5917920) bm!469095))

(declare-fun m!6815144 () Bool)

(assert (=> bm!469095 m!6815144))

(declare-fun m!6815146 () Bool)

(assert (=> bm!469096 m!6815146))

(assert (=> d!1855878 d!1856002))

(declare-fun b!5917924 () Bool)

(declare-fun e!3623338 () Bool)

(declare-fun e!3623333 () Bool)

(assert (=> b!5917924 (= e!3623338 e!3623333)))

(declare-fun c!1051795 () Bool)

(assert (=> b!5917924 (= c!1051795 ((_ is Union!15969) (h!70530 (unfocusZipperList!1390 zl!343))))))

(declare-fun b!5917925 () Bool)

(declare-fun e!3623337 () Bool)

(declare-fun call!469103 () Bool)

(assert (=> b!5917925 (= e!3623337 call!469103)))

(declare-fun d!1856004 () Bool)

(declare-fun res!2481184 () Bool)

(declare-fun e!3623339 () Bool)

(assert (=> d!1856004 (=> res!2481184 e!3623339)))

(assert (=> d!1856004 (= res!2481184 ((_ is ElementMatch!15969) (h!70530 (unfocusZipperList!1390 zl!343))))))

(assert (=> d!1856004 (= (validRegex!7705 (h!70530 (unfocusZipperList!1390 zl!343))) e!3623339)))

(declare-fun b!5917926 () Bool)

(declare-fun e!3623334 () Bool)

(declare-fun call!469104 () Bool)

(assert (=> b!5917926 (= e!3623334 call!469104)))

(declare-fun b!5917927 () Bool)

(declare-fun res!2481183 () Bool)

(declare-fun e!3623335 () Bool)

(assert (=> b!5917927 (=> (not res!2481183) (not e!3623335))))

(declare-fun call!469102 () Bool)

(assert (=> b!5917927 (= res!2481183 call!469102)))

(assert (=> b!5917927 (= e!3623333 e!3623335)))

(declare-fun b!5917928 () Bool)

(declare-fun e!3623336 () Bool)

(assert (=> b!5917928 (= e!3623336 e!3623337)))

(declare-fun res!2481185 () Bool)

(assert (=> b!5917928 (=> (not res!2481185) (not e!3623337))))

(assert (=> b!5917928 (= res!2481185 call!469102)))

(declare-fun b!5917929 () Bool)

(assert (=> b!5917929 (= e!3623338 e!3623334)))

(declare-fun res!2481186 () Bool)

(assert (=> b!5917929 (= res!2481186 (not (nullable!5964 (reg!16298 (h!70530 (unfocusZipperList!1390 zl!343))))))))

(assert (=> b!5917929 (=> (not res!2481186) (not e!3623334))))

(declare-fun bm!469097 () Bool)

(assert (=> bm!469097 (= call!469102 (validRegex!7705 (ite c!1051795 (regOne!32451 (h!70530 (unfocusZipperList!1390 zl!343))) (regOne!32450 (h!70530 (unfocusZipperList!1390 zl!343))))))))

(declare-fun b!5917930 () Bool)

(declare-fun res!2481182 () Bool)

(assert (=> b!5917930 (=> res!2481182 e!3623336)))

(assert (=> b!5917930 (= res!2481182 (not ((_ is Concat!24814) (h!70530 (unfocusZipperList!1390 zl!343)))))))

(assert (=> b!5917930 (= e!3623333 e!3623336)))

(declare-fun b!5917931 () Bool)

(assert (=> b!5917931 (= e!3623339 e!3623338)))

(declare-fun c!1051794 () Bool)

(assert (=> b!5917931 (= c!1051794 ((_ is Star!15969) (h!70530 (unfocusZipperList!1390 zl!343))))))

(declare-fun b!5917932 () Bool)

(assert (=> b!5917932 (= e!3623335 call!469103)))

(declare-fun bm!469098 () Bool)

(assert (=> bm!469098 (= call!469103 call!469104)))

(declare-fun bm!469099 () Bool)

(assert (=> bm!469099 (= call!469104 (validRegex!7705 (ite c!1051794 (reg!16298 (h!70530 (unfocusZipperList!1390 zl!343))) (ite c!1051795 (regTwo!32451 (h!70530 (unfocusZipperList!1390 zl!343))) (regTwo!32450 (h!70530 (unfocusZipperList!1390 zl!343)))))))))

(assert (= (and d!1856004 (not res!2481184)) b!5917931))

(assert (= (and b!5917931 c!1051794) b!5917929))

(assert (= (and b!5917931 (not c!1051794)) b!5917924))

(assert (= (and b!5917929 res!2481186) b!5917926))

(assert (= (and b!5917924 c!1051795) b!5917927))

(assert (= (and b!5917924 (not c!1051795)) b!5917930))

(assert (= (and b!5917927 res!2481183) b!5917932))

(assert (= (and b!5917930 (not res!2481182)) b!5917928))

(assert (= (and b!5917928 res!2481185) b!5917925))

(assert (= (or b!5917932 b!5917925) bm!469098))

(assert (= (or b!5917927 b!5917928) bm!469097))

(assert (= (or b!5917926 bm!469098) bm!469099))

(declare-fun m!6815148 () Bool)

(assert (=> b!5917929 m!6815148))

(declare-fun m!6815150 () Bool)

(assert (=> bm!469097 m!6815150))

(declare-fun m!6815152 () Bool)

(assert (=> bm!469099 m!6815152))

(assert (=> bs!1400865 d!1856004))

(declare-fun d!1856006 () Bool)

(assert (=> d!1856006 (= (nullable!5964 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))) (nullableFct!1935 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))

(declare-fun bs!1400919 () Bool)

(assert (= bs!1400919 d!1856006))

(declare-fun m!6815154 () Bool)

(assert (=> bs!1400919 m!6815154))

(assert (=> b!5917370 d!1856006))

(assert (=> b!5917556 d!1855760))

(assert (=> b!5917556 d!1855720))

(assert (=> d!1855926 d!1855664))

(declare-fun b!5917933 () Bool)

(declare-fun e!3623345 () Bool)

(declare-fun e!3623340 () Bool)

(assert (=> b!5917933 (= e!3623345 e!3623340)))

(declare-fun c!1051797 () Bool)

(assert (=> b!5917933 (= c!1051797 ((_ is Union!15969) (regTwo!32450 r!7292)))))

(declare-fun b!5917934 () Bool)

(declare-fun e!3623344 () Bool)

(declare-fun call!469106 () Bool)

(assert (=> b!5917934 (= e!3623344 call!469106)))

(declare-fun d!1856008 () Bool)

(declare-fun res!2481189 () Bool)

(declare-fun e!3623346 () Bool)

(assert (=> d!1856008 (=> res!2481189 e!3623346)))

(assert (=> d!1856008 (= res!2481189 ((_ is ElementMatch!15969) (regTwo!32450 r!7292)))))

(assert (=> d!1856008 (= (validRegex!7705 (regTwo!32450 r!7292)) e!3623346)))

(declare-fun b!5917935 () Bool)

(declare-fun e!3623341 () Bool)

(declare-fun call!469107 () Bool)

(assert (=> b!5917935 (= e!3623341 call!469107)))

(declare-fun b!5917936 () Bool)

(declare-fun res!2481188 () Bool)

(declare-fun e!3623342 () Bool)

(assert (=> b!5917936 (=> (not res!2481188) (not e!3623342))))

(declare-fun call!469105 () Bool)

(assert (=> b!5917936 (= res!2481188 call!469105)))

(assert (=> b!5917936 (= e!3623340 e!3623342)))

(declare-fun b!5917937 () Bool)

(declare-fun e!3623343 () Bool)

(assert (=> b!5917937 (= e!3623343 e!3623344)))

(declare-fun res!2481190 () Bool)

(assert (=> b!5917937 (=> (not res!2481190) (not e!3623344))))

(assert (=> b!5917937 (= res!2481190 call!469105)))

(declare-fun b!5917938 () Bool)

(assert (=> b!5917938 (= e!3623345 e!3623341)))

(declare-fun res!2481191 () Bool)

(assert (=> b!5917938 (= res!2481191 (not (nullable!5964 (reg!16298 (regTwo!32450 r!7292)))))))

(assert (=> b!5917938 (=> (not res!2481191) (not e!3623341))))

(declare-fun bm!469100 () Bool)

(assert (=> bm!469100 (= call!469105 (validRegex!7705 (ite c!1051797 (regOne!32451 (regTwo!32450 r!7292)) (regOne!32450 (regTwo!32450 r!7292)))))))

(declare-fun b!5917939 () Bool)

(declare-fun res!2481187 () Bool)

(assert (=> b!5917939 (=> res!2481187 e!3623343)))

(assert (=> b!5917939 (= res!2481187 (not ((_ is Concat!24814) (regTwo!32450 r!7292))))))

(assert (=> b!5917939 (= e!3623340 e!3623343)))

(declare-fun b!5917940 () Bool)

(assert (=> b!5917940 (= e!3623346 e!3623345)))

(declare-fun c!1051796 () Bool)

(assert (=> b!5917940 (= c!1051796 ((_ is Star!15969) (regTwo!32450 r!7292)))))

(declare-fun b!5917941 () Bool)

(assert (=> b!5917941 (= e!3623342 call!469106)))

(declare-fun bm!469101 () Bool)

(assert (=> bm!469101 (= call!469106 call!469107)))

(declare-fun bm!469102 () Bool)

(assert (=> bm!469102 (= call!469107 (validRegex!7705 (ite c!1051796 (reg!16298 (regTwo!32450 r!7292)) (ite c!1051797 (regTwo!32451 (regTwo!32450 r!7292)) (regTwo!32450 (regTwo!32450 r!7292))))))))

(assert (= (and d!1856008 (not res!2481189)) b!5917940))

(assert (= (and b!5917940 c!1051796) b!5917938))

(assert (= (and b!5917940 (not c!1051796)) b!5917933))

(assert (= (and b!5917938 res!2481191) b!5917935))

(assert (= (and b!5917933 c!1051797) b!5917936))

(assert (= (and b!5917933 (not c!1051797)) b!5917939))

(assert (= (and b!5917936 res!2481188) b!5917941))

(assert (= (and b!5917939 (not res!2481187)) b!5917937))

(assert (= (and b!5917937 res!2481190) b!5917934))

(assert (= (or b!5917941 b!5917934) bm!469101))

(assert (= (or b!5917936 b!5917937) bm!469100))

(assert (= (or b!5917935 bm!469101) bm!469102))

(declare-fun m!6815156 () Bool)

(assert (=> b!5917938 m!6815156))

(declare-fun m!6815158 () Bool)

(assert (=> bm!469100 m!6815158))

(declare-fun m!6815160 () Bool)

(assert (=> bm!469102 m!6815160))

(assert (=> d!1855926 d!1856008))

(declare-fun d!1856010 () Bool)

(assert (=> d!1856010 (= (nullable!5964 (regTwo!32450 r!7292)) (nullableFct!1935 (regTwo!32450 r!7292)))))

(declare-fun bs!1400920 () Bool)

(assert (= bs!1400920 d!1856010))

(declare-fun m!6815162 () Bool)

(assert (=> bs!1400920 m!6815162))

(assert (=> b!5917544 d!1856010))

(declare-fun d!1856012 () Bool)

(assert (=> d!1856012 (= (nullable!5964 (reg!16298 (regOne!32450 r!7292))) (nullableFct!1935 (reg!16298 (regOne!32450 r!7292))))))

(declare-fun bs!1400921 () Bool)

(assert (= bs!1400921 d!1856012))

(declare-fun m!6815164 () Bool)

(assert (=> bs!1400921 m!6815164))

(assert (=> b!5917014 d!1856012))

(declare-fun bs!1400922 () Bool)

(declare-fun d!1856014 () Bool)

(assert (= bs!1400922 (and d!1856014 d!1855580)))

(declare-fun lambda!322902 () Int)

(assert (=> bs!1400922 (= lambda!322902 lambda!322809)))

(declare-fun bs!1400923 () Bool)

(assert (= bs!1400923 (and d!1856014 d!1855834)))

(assert (=> bs!1400923 (= lambda!322902 lambda!322880)))

(declare-fun bs!1400924 () Bool)

(assert (= bs!1400924 (and d!1856014 d!1855990)))

(assert (=> bs!1400924 (= lambda!322902 lambda!322901)))

(declare-fun bs!1400925 () Bool)

(assert (= bs!1400925 (and d!1856014 d!1855624)))

(assert (=> bs!1400925 (= lambda!322902 lambda!322837)))

(declare-fun bs!1400926 () Bool)

(assert (= bs!1400926 (and d!1856014 d!1855584)))

(assert (=> bs!1400926 (= lambda!322902 lambda!322812)))

(declare-fun bs!1400927 () Bool)

(assert (= bs!1400927 (and d!1856014 d!1855694)))

(assert (=> bs!1400927 (= lambda!322902 lambda!322865)))

(declare-fun bs!1400928 () Bool)

(assert (= bs!1400928 (and d!1856014 d!1855782)))

(assert (=> bs!1400928 (= lambda!322902 lambda!322869)))

(declare-fun bs!1400929 () Bool)

(assert (= bs!1400929 (and d!1856014 d!1855806)))

(assert (=> bs!1400929 (= lambda!322902 lambda!322873)))

(declare-fun bs!1400930 () Bool)

(assert (= bs!1400930 (and d!1856014 d!1855630)))

(assert (=> bs!1400930 (= lambda!322902 lambda!322838)))

(declare-fun bs!1400931 () Bool)

(assert (= bs!1400931 (and d!1856014 d!1855776)))

(assert (=> bs!1400931 (= lambda!322902 lambda!322868)))

(declare-fun bs!1400932 () Bool)

(assert (= bs!1400932 (and d!1856014 d!1855588)))

(assert (=> bs!1400932 (= lambda!322902 lambda!322815)))

(declare-fun b!5917942 () Bool)

(declare-fun e!3623351 () Regex!15969)

(assert (=> b!5917942 (= e!3623351 (h!70530 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5917943 () Bool)

(declare-fun e!3623348 () Bool)

(declare-fun lt!2309816 () Regex!15969)

(assert (=> b!5917943 (= e!3623348 (isConcat!920 lt!2309816))))

(declare-fun b!5917944 () Bool)

(declare-fun e!3623349 () Bool)

(assert (=> b!5917944 (= e!3623349 e!3623348)))

(declare-fun c!1051798 () Bool)

(assert (=> b!5917944 (= c!1051798 (isEmpty!35938 (tail!11562 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))))))))

(declare-fun b!5917945 () Bool)

(assert (=> b!5917945 (= e!3623349 (isEmptyExpr!1397 lt!2309816))))

(declare-fun e!3623347 () Bool)

(assert (=> d!1856014 e!3623347))

(declare-fun res!2481193 () Bool)

(assert (=> d!1856014 (=> (not res!2481193) (not e!3623347))))

(assert (=> d!1856014 (= res!2481193 (validRegex!7705 lt!2309816))))

(assert (=> d!1856014 (= lt!2309816 e!3623351)))

(declare-fun c!1051800 () Bool)

(declare-fun e!3623350 () Bool)

(assert (=> d!1856014 (= c!1051800 e!3623350)))

(declare-fun res!2481192 () Bool)

(assert (=> d!1856014 (=> (not res!2481192) (not e!3623350))))

(assert (=> d!1856014 (= res!2481192 ((_ is Cons!64082) (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(assert (=> d!1856014 (forall!15051 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))) lambda!322902)))

(assert (=> d!1856014 (= (generalisedConcat!1566 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))) lt!2309816)))

(declare-fun b!5917946 () Bool)

(declare-fun e!3623352 () Regex!15969)

(assert (=> b!5917946 (= e!3623351 e!3623352)))

(declare-fun c!1051799 () Bool)

(assert (=> b!5917946 (= c!1051799 ((_ is Cons!64082) (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5917947 () Bool)

(assert (=> b!5917947 (= e!3623352 EmptyExpr!15969)))

(declare-fun b!5917948 () Bool)

(assert (=> b!5917948 (= e!3623348 (= lt!2309816 (head!12477 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))))))))

(declare-fun b!5917949 () Bool)

(assert (=> b!5917949 (= e!3623350 (isEmpty!35938 (t!377595 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))))))))

(declare-fun b!5917950 () Bool)

(assert (=> b!5917950 (= e!3623352 (Concat!24814 (h!70530 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))) (generalisedConcat!1566 (t!377595 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))))))))

(declare-fun b!5917951 () Bool)

(assert (=> b!5917951 (= e!3623347 e!3623349)))

(declare-fun c!1051801 () Bool)

(assert (=> b!5917951 (= c!1051801 (isEmpty!35938 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(assert (= (and d!1856014 res!2481192) b!5917949))

(assert (= (and d!1856014 c!1051800) b!5917942))

(assert (= (and d!1856014 (not c!1051800)) b!5917946))

(assert (= (and b!5917946 c!1051799) b!5917950))

(assert (= (and b!5917946 (not c!1051799)) b!5917947))

(assert (= (and d!1856014 res!2481193) b!5917951))

(assert (= (and b!5917951 c!1051801) b!5917945))

(assert (= (and b!5917951 (not c!1051801)) b!5917944))

(assert (= (and b!5917944 c!1051798) b!5917948))

(assert (= (and b!5917944 (not c!1051798)) b!5917943))

(declare-fun m!6815166 () Bool)

(assert (=> b!5917949 m!6815166))

(declare-fun m!6815168 () Bool)

(assert (=> d!1856014 m!6815168))

(declare-fun m!6815170 () Bool)

(assert (=> d!1856014 m!6815170))

(assert (=> b!5917951 m!6814682))

(declare-fun m!6815172 () Bool)

(assert (=> b!5917950 m!6815172))

(declare-fun m!6815174 () Bool)

(assert (=> b!5917945 m!6815174))

(declare-fun m!6815176 () Bool)

(assert (=> b!5917948 m!6815176))

(declare-fun m!6815178 () Bool)

(assert (=> b!5917943 m!6815178))

(declare-fun m!6815180 () Bool)

(assert (=> b!5917944 m!6815180))

(assert (=> b!5917944 m!6815180))

(declare-fun m!6815182 () Bool)

(assert (=> b!5917944 m!6815182))

(assert (=> b!5917259 d!1856014))

(declare-fun d!1856016 () Bool)

(assert (=> d!1856016 (= ($colon$colon!1856 (exprs!5853 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925))) (ite (or c!1051707 c!1051702) (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))) (Cons!64082 (ite (or c!1051707 c!1051702) (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (exprs!5853 (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)))))))

(assert (=> bm!469019 d!1856016))

(declare-fun d!1856018 () Bool)

(declare-fun e!3623359 () Bool)

(assert (=> d!1856018 e!3623359))

(declare-fun c!1051802 () Bool)

(assert (=> d!1856018 (= c!1051802 ((_ is EmptyExpr!15969) (regTwo!32450 r!7292)))))

(declare-fun lt!2309817 () Bool)

(declare-fun e!3623358 () Bool)

(assert (=> d!1856018 (= lt!2309817 e!3623358)))

(declare-fun c!1051803 () Bool)

(assert (=> d!1856018 (= c!1051803 (isEmpty!35940 (t!377597 s!2326)))))

(assert (=> d!1856018 (validRegex!7705 (regTwo!32450 r!7292))))

(assert (=> d!1856018 (= (matchR!8152 (regTwo!32450 r!7292) (t!377597 s!2326)) lt!2309817)))

(declare-fun b!5917952 () Bool)

(assert (=> b!5917952 (= e!3623358 (nullable!5964 (regTwo!32450 r!7292)))))

(declare-fun b!5917953 () Bool)

(declare-fun call!469108 () Bool)

(assert (=> b!5917953 (= e!3623359 (= lt!2309817 call!469108))))

(declare-fun b!5917954 () Bool)

(assert (=> b!5917954 (= e!3623358 (matchR!8152 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (t!377597 s!2326))) (tail!11564 (t!377597 s!2326))))))

(declare-fun b!5917955 () Bool)

(declare-fun res!2481196 () Bool)

(declare-fun e!3623357 () Bool)

(assert (=> b!5917955 (=> (not res!2481196) (not e!3623357))))

(assert (=> b!5917955 (= res!2481196 (not call!469108))))

(declare-fun b!5917956 () Bool)

(declare-fun e!3623355 () Bool)

(declare-fun e!3623354 () Bool)

(assert (=> b!5917956 (= e!3623355 e!3623354)))

(declare-fun res!2481198 () Bool)

(assert (=> b!5917956 (=> res!2481198 e!3623354)))

(assert (=> b!5917956 (= res!2481198 call!469108)))

(declare-fun b!5917957 () Bool)

(declare-fun e!3623353 () Bool)

(assert (=> b!5917957 (= e!3623353 (not lt!2309817))))

(declare-fun b!5917958 () Bool)

(assert (=> b!5917958 (= e!3623357 (= (head!12479 (t!377597 s!2326)) (c!1051439 (regTwo!32450 r!7292))))))

(declare-fun b!5917959 () Bool)

(declare-fun e!3623356 () Bool)

(assert (=> b!5917959 (= e!3623356 e!3623355)))

(declare-fun res!2481199 () Bool)

(assert (=> b!5917959 (=> (not res!2481199) (not e!3623355))))

(assert (=> b!5917959 (= res!2481199 (not lt!2309817))))

(declare-fun b!5917960 () Bool)

(assert (=> b!5917960 (= e!3623354 (not (= (head!12479 (t!377597 s!2326)) (c!1051439 (regTwo!32450 r!7292)))))))

(declare-fun b!5917961 () Bool)

(declare-fun res!2481197 () Bool)

(assert (=> b!5917961 (=> res!2481197 e!3623356)))

(assert (=> b!5917961 (= res!2481197 e!3623357)))

(declare-fun res!2481201 () Bool)

(assert (=> b!5917961 (=> (not res!2481201) (not e!3623357))))

(assert (=> b!5917961 (= res!2481201 lt!2309817)))

(declare-fun b!5917962 () Bool)

(declare-fun res!2481194 () Bool)

(assert (=> b!5917962 (=> res!2481194 e!3623356)))

(assert (=> b!5917962 (= res!2481194 (not ((_ is ElementMatch!15969) (regTwo!32450 r!7292))))))

(assert (=> b!5917962 (= e!3623353 e!3623356)))

(declare-fun b!5917963 () Bool)

(assert (=> b!5917963 (= e!3623359 e!3623353)))

(declare-fun c!1051804 () Bool)

(assert (=> b!5917963 (= c!1051804 ((_ is EmptyLang!15969) (regTwo!32450 r!7292)))))

(declare-fun bm!469103 () Bool)

(assert (=> bm!469103 (= call!469108 (isEmpty!35940 (t!377597 s!2326)))))

(declare-fun b!5917964 () Bool)

(declare-fun res!2481195 () Bool)

(assert (=> b!5917964 (=> res!2481195 e!3623354)))

(assert (=> b!5917964 (= res!2481195 (not (isEmpty!35940 (tail!11564 (t!377597 s!2326)))))))

(declare-fun b!5917965 () Bool)

(declare-fun res!2481200 () Bool)

(assert (=> b!5917965 (=> (not res!2481200) (not e!3623357))))

(assert (=> b!5917965 (= res!2481200 (isEmpty!35940 (tail!11564 (t!377597 s!2326))))))

(assert (= (and d!1856018 c!1051803) b!5917952))

(assert (= (and d!1856018 (not c!1051803)) b!5917954))

(assert (= (and d!1856018 c!1051802) b!5917953))

(assert (= (and d!1856018 (not c!1051802)) b!5917963))

(assert (= (and b!5917963 c!1051804) b!5917957))

(assert (= (and b!5917963 (not c!1051804)) b!5917962))

(assert (= (and b!5917962 (not res!2481194)) b!5917961))

(assert (= (and b!5917961 res!2481201) b!5917955))

(assert (= (and b!5917955 res!2481196) b!5917965))

(assert (= (and b!5917965 res!2481200) b!5917958))

(assert (= (and b!5917961 (not res!2481197)) b!5917959))

(assert (= (and b!5917959 res!2481199) b!5917956))

(assert (= (and b!5917956 (not res!2481198)) b!5917964))

(assert (= (and b!5917964 (not res!2481195)) b!5917960))

(assert (= (or b!5917953 b!5917955 b!5917956) bm!469103))

(assert (=> b!5917952 m!6814564))

(declare-fun m!6815184 () Bool)

(assert (=> b!5917964 m!6815184))

(assert (=> b!5917964 m!6815184))

(declare-fun m!6815186 () Bool)

(assert (=> b!5917964 m!6815186))

(assert (=> b!5917965 m!6815184))

(assert (=> b!5917965 m!6815184))

(assert (=> b!5917965 m!6815186))

(declare-fun m!6815188 () Bool)

(assert (=> b!5917954 m!6815188))

(assert (=> b!5917954 m!6815188))

(declare-fun m!6815190 () Bool)

(assert (=> b!5917954 m!6815190))

(assert (=> b!5917954 m!6815184))

(assert (=> b!5917954 m!6815190))

(assert (=> b!5917954 m!6815184))

(declare-fun m!6815192 () Bool)

(assert (=> b!5917954 m!6815192))

(declare-fun m!6815194 () Bool)

(assert (=> d!1856018 m!6815194))

(assert (=> d!1856018 m!6814578))

(assert (=> b!5917960 m!6815188))

(assert (=> b!5917958 m!6815188))

(assert (=> bm!469103 m!6815194))

(assert (=> b!5917303 d!1856018))

(declare-fun b!5917966 () Bool)

(declare-fun e!3623365 () Bool)

(declare-fun e!3623360 () Bool)

(assert (=> b!5917966 (= e!3623365 e!3623360)))

(declare-fun c!1051806 () Bool)

(assert (=> b!5917966 (= c!1051806 ((_ is Union!15969) (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))))))

(declare-fun b!5917967 () Bool)

(declare-fun e!3623364 () Bool)

(declare-fun call!469110 () Bool)

(assert (=> b!5917967 (= e!3623364 call!469110)))

(declare-fun d!1856020 () Bool)

(declare-fun res!2481204 () Bool)

(declare-fun e!3623366 () Bool)

(assert (=> d!1856020 (=> res!2481204 e!3623366)))

(assert (=> d!1856020 (= res!2481204 ((_ is ElementMatch!15969) (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))))))

(assert (=> d!1856020 (= (validRegex!7705 (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))) e!3623366)))

(declare-fun b!5917968 () Bool)

(declare-fun e!3623361 () Bool)

(declare-fun call!469111 () Bool)

(assert (=> b!5917968 (= e!3623361 call!469111)))

(declare-fun b!5917969 () Bool)

(declare-fun res!2481203 () Bool)

(declare-fun e!3623362 () Bool)

(assert (=> b!5917969 (=> (not res!2481203) (not e!3623362))))

(declare-fun call!469109 () Bool)

(assert (=> b!5917969 (= res!2481203 call!469109)))

(assert (=> b!5917969 (= e!3623360 e!3623362)))

(declare-fun b!5917970 () Bool)

(declare-fun e!3623363 () Bool)

(assert (=> b!5917970 (= e!3623363 e!3623364)))

(declare-fun res!2481205 () Bool)

(assert (=> b!5917970 (=> (not res!2481205) (not e!3623364))))

(assert (=> b!5917970 (= res!2481205 call!469109)))

(declare-fun b!5917971 () Bool)

(assert (=> b!5917971 (= e!3623365 e!3623361)))

(declare-fun res!2481206 () Bool)

(assert (=> b!5917971 (= res!2481206 (not (nullable!5964 (reg!16298 (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))))))))

(assert (=> b!5917971 (=> (not res!2481206) (not e!3623361))))

(declare-fun bm!469104 () Bool)

(assert (=> bm!469104 (= call!469109 (validRegex!7705 (ite c!1051806 (regOne!32451 (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))) (regOne!32450 (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))))))))

(declare-fun b!5917972 () Bool)

(declare-fun res!2481202 () Bool)

(assert (=> b!5917972 (=> res!2481202 e!3623363)))

(assert (=> b!5917972 (= res!2481202 (not ((_ is Concat!24814) (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701)))))))

(assert (=> b!5917972 (= e!3623360 e!3623363)))

(declare-fun b!5917973 () Bool)

(assert (=> b!5917973 (= e!3623366 e!3623365)))

(declare-fun c!1051805 () Bool)

(assert (=> b!5917973 (= c!1051805 ((_ is Star!15969) (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))))))

(declare-fun b!5917974 () Bool)

(assert (=> b!5917974 (= e!3623362 call!469110)))

(declare-fun bm!469105 () Bool)

(assert (=> bm!469105 (= call!469110 call!469111)))

(declare-fun bm!469106 () Bool)

(assert (=> bm!469106 (= call!469111 (validRegex!7705 (ite c!1051805 (reg!16298 (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))) (ite c!1051806 (regTwo!32451 (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701))) (regTwo!32450 (ite c!1051608 (regOne!32451 lt!2309701) (regOne!32450 lt!2309701)))))))))

(assert (= (and d!1856020 (not res!2481204)) b!5917973))

(assert (= (and b!5917973 c!1051805) b!5917971))

(assert (= (and b!5917973 (not c!1051805)) b!5917966))

(assert (= (and b!5917971 res!2481206) b!5917968))

(assert (= (and b!5917966 c!1051806) b!5917969))

(assert (= (and b!5917966 (not c!1051806)) b!5917972))

(assert (= (and b!5917969 res!2481203) b!5917974))

(assert (= (and b!5917972 (not res!2481202)) b!5917970))

(assert (= (and b!5917970 res!2481205) b!5917967))

(assert (= (or b!5917974 b!5917967) bm!469105))

(assert (= (or b!5917969 b!5917970) bm!469104))

(assert (= (or b!5917968 bm!469105) bm!469106))

(declare-fun m!6815196 () Bool)

(assert (=> b!5917971 m!6815196))

(declare-fun m!6815198 () Bool)

(assert (=> bm!469104 m!6815198))

(declare-fun m!6815200 () Bool)

(assert (=> bm!469106 m!6815200))

(assert (=> bm!468962 d!1856020))

(declare-fun b!5917975 () Bool)

(declare-fun e!3623372 () Bool)

(declare-fun e!3623367 () Bool)

(assert (=> b!5917975 (= e!3623372 e!3623367)))

(declare-fun c!1051808 () Bool)

(assert (=> b!5917975 (= c!1051808 ((_ is Union!15969) (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))))

(declare-fun b!5917976 () Bool)

(declare-fun e!3623371 () Bool)

(declare-fun call!469113 () Bool)

(assert (=> b!5917976 (= e!3623371 call!469113)))

(declare-fun d!1856022 () Bool)

(declare-fun res!2481209 () Bool)

(declare-fun e!3623373 () Bool)

(assert (=> d!1856022 (=> res!2481209 e!3623373)))

(assert (=> d!1856022 (= res!2481209 ((_ is ElementMatch!15969) (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))))

(assert (=> d!1856022 (= (validRegex!7705 (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))) e!3623373)))

(declare-fun b!5917977 () Bool)

(declare-fun e!3623368 () Bool)

(declare-fun call!469114 () Bool)

(assert (=> b!5917977 (= e!3623368 call!469114)))

(declare-fun b!5917978 () Bool)

(declare-fun res!2481208 () Bool)

(declare-fun e!3623369 () Bool)

(assert (=> b!5917978 (=> (not res!2481208) (not e!3623369))))

(declare-fun call!469112 () Bool)

(assert (=> b!5917978 (= res!2481208 call!469112)))

(assert (=> b!5917978 (= e!3623367 e!3623369)))

(declare-fun b!5917979 () Bool)

(declare-fun e!3623370 () Bool)

(assert (=> b!5917979 (= e!3623370 e!3623371)))

(declare-fun res!2481210 () Bool)

(assert (=> b!5917979 (=> (not res!2481210) (not e!3623371))))

(assert (=> b!5917979 (= res!2481210 call!469112)))

(declare-fun b!5917980 () Bool)

(assert (=> b!5917980 (= e!3623372 e!3623368)))

(declare-fun res!2481211 () Bool)

(assert (=> b!5917980 (= res!2481211 (not (nullable!5964 (reg!16298 (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))))))

(assert (=> b!5917980 (=> (not res!2481211) (not e!3623368))))

(declare-fun bm!469107 () Bool)

(assert (=> bm!469107 (= call!469112 (validRegex!7705 (ite c!1051808 (regOne!32451 (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))) (regOne!32450 (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))))))

(declare-fun b!5917981 () Bool)

(declare-fun res!2481207 () Bool)

(assert (=> b!5917981 (=> res!2481207 e!3623370)))

(assert (=> b!5917981 (= res!2481207 (not ((_ is Concat!24814) (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))))

(assert (=> b!5917981 (= e!3623367 e!3623370)))

(declare-fun b!5917982 () Bool)

(assert (=> b!5917982 (= e!3623373 e!3623372)))

(declare-fun c!1051807 () Bool)

(assert (=> b!5917982 (= c!1051807 ((_ is Star!15969) (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))))

(declare-fun b!5917983 () Bool)

(assert (=> b!5917983 (= e!3623369 call!469113)))

(declare-fun bm!469108 () Bool)

(assert (=> bm!469108 (= call!469113 call!469114)))

(declare-fun bm!469109 () Bool)

(assert (=> bm!469109 (= call!469114 (validRegex!7705 (ite c!1051807 (reg!16298 (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))) (ite c!1051808 (regTwo!32451 (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))) (regTwo!32450 (ite c!1051699 (reg!16298 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (ite c!1051700 (regTwo!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regTwo!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))))))

(assert (= (and d!1856022 (not res!2481209)) b!5917982))

(assert (= (and b!5917982 c!1051807) b!5917980))

(assert (= (and b!5917982 (not c!1051807)) b!5917975))

(assert (= (and b!5917980 res!2481211) b!5917977))

(assert (= (and b!5917975 c!1051808) b!5917978))

(assert (= (and b!5917975 (not c!1051808)) b!5917981))

(assert (= (and b!5917978 res!2481208) b!5917983))

(assert (= (and b!5917981 (not res!2481207)) b!5917979))

(assert (= (and b!5917979 res!2481210) b!5917976))

(assert (= (or b!5917983 b!5917976) bm!469108))

(assert (= (or b!5917978 b!5917979) bm!469107))

(assert (= (or b!5917977 bm!469108) bm!469109))

(declare-fun m!6815202 () Bool)

(assert (=> b!5917980 m!6815202))

(declare-fun m!6815204 () Bool)

(assert (=> bm!469107 m!6815204))

(declare-fun m!6815206 () Bool)

(assert (=> bm!469109 m!6815206))

(assert (=> bm!469015 d!1856022))

(declare-fun b!5917984 () Bool)

(declare-fun e!3623379 () Bool)

(declare-fun e!3623374 () Bool)

(assert (=> b!5917984 (= e!3623379 e!3623374)))

(declare-fun c!1051810 () Bool)

(assert (=> b!5917984 (= c!1051810 ((_ is Union!15969) (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))))))

(declare-fun b!5917985 () Bool)

(declare-fun e!3623378 () Bool)

(declare-fun call!469116 () Bool)

(assert (=> b!5917985 (= e!3623378 call!469116)))

(declare-fun d!1856024 () Bool)

(declare-fun res!2481214 () Bool)

(declare-fun e!3623380 () Bool)

(assert (=> d!1856024 (=> res!2481214 e!3623380)))

(assert (=> d!1856024 (= res!2481214 ((_ is ElementMatch!15969) (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))))))

(assert (=> d!1856024 (= (validRegex!7705 (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))) e!3623380)))

(declare-fun b!5917986 () Bool)

(declare-fun e!3623375 () Bool)

(declare-fun call!469117 () Bool)

(assert (=> b!5917986 (= e!3623375 call!469117)))

(declare-fun b!5917987 () Bool)

(declare-fun res!2481213 () Bool)

(declare-fun e!3623376 () Bool)

(assert (=> b!5917987 (=> (not res!2481213) (not e!3623376))))

(declare-fun call!469115 () Bool)

(assert (=> b!5917987 (= res!2481213 call!469115)))

(assert (=> b!5917987 (= e!3623374 e!3623376)))

(declare-fun b!5917988 () Bool)

(declare-fun e!3623377 () Bool)

(assert (=> b!5917988 (= e!3623377 e!3623378)))

(declare-fun res!2481215 () Bool)

(assert (=> b!5917988 (=> (not res!2481215) (not e!3623378))))

(assert (=> b!5917988 (= res!2481215 call!469115)))

(declare-fun b!5917989 () Bool)

(assert (=> b!5917989 (= e!3623379 e!3623375)))

(declare-fun res!2481216 () Bool)

(assert (=> b!5917989 (= res!2481216 (not (nullable!5964 (reg!16298 (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))))))))

(assert (=> b!5917989 (=> (not res!2481216) (not e!3623375))))

(declare-fun bm!469110 () Bool)

(assert (=> bm!469110 (= call!469115 (validRegex!7705 (ite c!1051810 (regOne!32451 (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))) (regOne!32450 (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))))))))

(declare-fun b!5917990 () Bool)

(declare-fun res!2481212 () Bool)

(assert (=> b!5917990 (=> res!2481212 e!3623377)))

(assert (=> b!5917990 (= res!2481212 (not ((_ is Concat!24814) (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728))))))))

(assert (=> b!5917990 (= e!3623374 e!3623377)))

(declare-fun b!5917991 () Bool)

(assert (=> b!5917991 (= e!3623380 e!3623379)))

(declare-fun c!1051809 () Bool)

(assert (=> b!5917991 (= c!1051809 ((_ is Star!15969) (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))))))

(declare-fun b!5917992 () Bool)

(assert (=> b!5917992 (= e!3623376 call!469116)))

(declare-fun bm!469111 () Bool)

(assert (=> bm!469111 (= call!469116 call!469117)))

(declare-fun bm!469112 () Bool)

(assert (=> bm!469112 (= call!469117 (validRegex!7705 (ite c!1051809 (reg!16298 (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))) (ite c!1051810 (regTwo!32451 (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728)))) (regTwo!32450 (ite c!1051711 (reg!16298 lt!2309728) (ite c!1051712 (regTwo!32451 lt!2309728) (regTwo!32450 lt!2309728))))))))))

(assert (= (and d!1856024 (not res!2481214)) b!5917991))

(assert (= (and b!5917991 c!1051809) b!5917989))

(assert (= (and b!5917991 (not c!1051809)) b!5917984))

(assert (= (and b!5917989 res!2481216) b!5917986))

(assert (= (and b!5917984 c!1051810) b!5917987))

(assert (= (and b!5917984 (not c!1051810)) b!5917990))

(assert (= (and b!5917987 res!2481213) b!5917992))

(assert (= (and b!5917990 (not res!2481212)) b!5917988))

(assert (= (and b!5917988 res!2481215) b!5917985))

(assert (= (or b!5917992 b!5917985) bm!469111))

(assert (= (or b!5917987 b!5917988) bm!469110))

(assert (= (or b!5917986 bm!469111) bm!469112))

(declare-fun m!6815208 () Bool)

(assert (=> b!5917989 m!6815208))

(declare-fun m!6815210 () Bool)

(assert (=> bm!469110 m!6815210))

(declare-fun m!6815212 () Bool)

(assert (=> bm!469112 m!6815212))

(assert (=> bm!469030 d!1856024))

(declare-fun bs!1400933 () Bool)

(declare-fun b!5917993 () Bool)

(assert (= bs!1400933 (and b!5917993 b!5917897)))

(declare-fun lambda!322903 () Int)

(assert (=> bs!1400933 (not (= lambda!322903 lambda!322900))))

(declare-fun bs!1400934 () Bool)

(assert (= bs!1400934 (and b!5917993 d!1855652)))

(assert (=> bs!1400934 (not (= lambda!322903 lambda!322859))))

(declare-fun bs!1400935 () Bool)

(assert (= bs!1400935 (and b!5917993 d!1855812)))

(assert (=> bs!1400935 (not (= lambda!322903 lambda!322879))))

(assert (=> bs!1400934 (not (= lambda!322903 lambda!322857))))

(declare-fun bs!1400936 () Bool)

(assert (= bs!1400936 (and b!5917993 b!5916342)))

(assert (=> bs!1400936 (not (= lambda!322903 lambda!322806))))

(declare-fun bs!1400937 () Bool)

(assert (= bs!1400937 (and b!5917993 b!5917894)))

(assert (=> bs!1400937 (= (and (= (reg!16298 (regTwo!32451 (regTwo!32451 r!7292))) (reg!16298 (regOne!32451 (regOne!32451 r!7292)))) (= (regTwo!32451 (regTwo!32451 r!7292)) (regOne!32451 (regOne!32451 r!7292)))) (= lambda!322903 lambda!322899))))

(declare-fun bs!1400938 () Bool)

(assert (= bs!1400938 (and b!5917993 b!5916600)))

(assert (=> bs!1400938 (= (and (= (reg!16298 (regTwo!32451 (regTwo!32451 r!7292))) (reg!16298 r!7292)) (= (regTwo!32451 (regTwo!32451 r!7292)) r!7292)) (= lambda!322903 lambda!322826))))

(declare-fun bs!1400939 () Bool)

(assert (= bs!1400939 (and b!5917993 b!5917042)))

(assert (=> bs!1400939 (not (= lambda!322903 lambda!322864))))

(declare-fun bs!1400940 () Bool)

(assert (= bs!1400940 (and b!5917993 b!5917511)))

(assert (=> bs!1400940 (not (= lambda!322903 lambda!322891))))

(declare-fun bs!1400941 () Bool)

(assert (= bs!1400941 (and b!5917993 d!1855884)))

(assert (=> bs!1400941 (not (= lambda!322903 lambda!322885))))

(assert (=> bs!1400941 (not (= lambda!322903 lambda!322888))))

(declare-fun bs!1400942 () Bool)

(assert (= bs!1400942 (and b!5917993 d!1855648)))

(assert (=> bs!1400942 (not (= lambda!322903 lambda!322850))))

(declare-fun bs!1400943 () Bool)

(assert (= bs!1400943 (and b!5917993 b!5916603)))

(assert (=> bs!1400943 (not (= lambda!322903 lambda!322827))))

(declare-fun bs!1400944 () Bool)

(assert (= bs!1400944 (and b!5917993 b!5917508)))

(assert (=> bs!1400944 (= (and (= (reg!16298 (regTwo!32451 (regTwo!32451 r!7292))) (reg!16298 (regOne!32451 r!7292))) (= (regTwo!32451 (regTwo!32451 r!7292)) (regOne!32451 r!7292))) (= lambda!322903 lambda!322890))))

(declare-fun bs!1400945 () Bool)

(assert (= bs!1400945 (and b!5917993 b!5917039)))

(assert (=> bs!1400945 (= (and (= (reg!16298 (regTwo!32451 (regTwo!32451 r!7292))) (reg!16298 (regTwo!32451 r!7292))) (= (regTwo!32451 (regTwo!32451 r!7292)) (regTwo!32451 r!7292))) (= lambda!322903 lambda!322863))))

(assert (=> bs!1400936 (not (= lambda!322903 lambda!322805))))

(assert (=> b!5917993 true))

(assert (=> b!5917993 true))

(declare-fun bs!1400946 () Bool)

(declare-fun b!5917996 () Bool)

(assert (= bs!1400946 (and b!5917996 b!5917897)))

(declare-fun lambda!322904 () Int)

(assert (=> bs!1400946 (= (and (= (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regOne!32450 (regOne!32451 (regOne!32451 r!7292)))) (= (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))))) (= lambda!322904 lambda!322900))))

(declare-fun bs!1400947 () Bool)

(assert (= bs!1400947 (and b!5917996 d!1855652)))

(assert (=> bs!1400947 (= (and (= (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322904 lambda!322859))))

(declare-fun bs!1400948 () Bool)

(assert (= bs!1400948 (and b!5917996 d!1855812)))

(assert (=> bs!1400948 (not (= lambda!322904 lambda!322879))))

(assert (=> bs!1400947 (not (= lambda!322904 lambda!322857))))

(declare-fun bs!1400949 () Bool)

(assert (= bs!1400949 (and b!5917996 b!5916342)))

(assert (=> bs!1400949 (= (and (= (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322904 lambda!322806))))

(declare-fun bs!1400950 () Bool)

(assert (= bs!1400950 (and b!5917996 b!5917894)))

(assert (=> bs!1400950 (not (= lambda!322904 lambda!322899))))

(declare-fun bs!1400951 () Bool)

(assert (= bs!1400951 (and b!5917996 b!5917993)))

(assert (=> bs!1400951 (not (= lambda!322904 lambda!322903))))

(declare-fun bs!1400952 () Bool)

(assert (= bs!1400952 (and b!5917996 b!5916600)))

(assert (=> bs!1400952 (not (= lambda!322904 lambda!322826))))

(declare-fun bs!1400953 () Bool)

(assert (= bs!1400953 (and b!5917996 b!5917042)))

(assert (=> bs!1400953 (= (and (= (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regOne!32450 (regTwo!32451 r!7292))) (= (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regTwo!32450 (regTwo!32451 r!7292)))) (= lambda!322904 lambda!322864))))

(declare-fun bs!1400954 () Bool)

(assert (= bs!1400954 (and b!5917996 b!5917511)))

(assert (=> bs!1400954 (= (and (= (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regOne!32450 (regOne!32451 r!7292))) (= (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regTwo!32450 (regOne!32451 r!7292)))) (= lambda!322904 lambda!322891))))

(declare-fun bs!1400955 () Bool)

(assert (= bs!1400955 (and b!5917996 d!1855884)))

(assert (=> bs!1400955 (not (= lambda!322904 lambda!322885))))

(assert (=> bs!1400955 (= (and (= (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322904 lambda!322888))))

(declare-fun bs!1400956 () Bool)

(assert (= bs!1400956 (and b!5917996 d!1855648)))

(assert (=> bs!1400956 (not (= lambda!322904 lambda!322850))))

(declare-fun bs!1400957 () Bool)

(assert (= bs!1400957 (and b!5917996 b!5916603)))

(assert (=> bs!1400957 (= (and (= (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322904 lambda!322827))))

(declare-fun bs!1400958 () Bool)

(assert (= bs!1400958 (and b!5917996 b!5917508)))

(assert (=> bs!1400958 (not (= lambda!322904 lambda!322890))))

(declare-fun bs!1400959 () Bool)

(assert (= bs!1400959 (and b!5917996 b!5917039)))

(assert (=> bs!1400959 (not (= lambda!322904 lambda!322863))))

(assert (=> bs!1400949 (not (= lambda!322904 lambda!322805))))

(assert (=> b!5917996 true))

(assert (=> b!5917996 true))

(declare-fun e!3623385 () Bool)

(declare-fun call!469119 () Bool)

(assert (=> b!5917993 (= e!3623385 call!469119)))

(declare-fun b!5917994 () Bool)

(declare-fun e!3623384 () Bool)

(declare-fun e!3623387 () Bool)

(assert (=> b!5917994 (= e!3623384 e!3623387)))

(declare-fun c!1051811 () Bool)

(assert (=> b!5917994 (= c!1051811 ((_ is Star!15969) (regTwo!32451 (regTwo!32451 r!7292))))))

(declare-fun b!5917995 () Bool)

(declare-fun c!1051813 () Bool)

(assert (=> b!5917995 (= c!1051813 ((_ is Union!15969) (regTwo!32451 (regTwo!32451 r!7292))))))

(declare-fun e!3623382 () Bool)

(assert (=> b!5917995 (= e!3623382 e!3623384)))

(assert (=> b!5917996 (= e!3623387 call!469119)))

(declare-fun bm!469113 () Bool)

(assert (=> bm!469113 (= call!469119 (Exists!3039 (ite c!1051811 lambda!322903 lambda!322904)))))

(declare-fun b!5917997 () Bool)

(declare-fun res!2481218 () Bool)

(assert (=> b!5917997 (=> res!2481218 e!3623385)))

(declare-fun call!469118 () Bool)

(assert (=> b!5917997 (= res!2481218 call!469118)))

(assert (=> b!5917997 (= e!3623387 e!3623385)))

(declare-fun d!1856026 () Bool)

(declare-fun c!1051812 () Bool)

(assert (=> d!1856026 (= c!1051812 ((_ is EmptyExpr!15969) (regTwo!32451 (regTwo!32451 r!7292))))))

(declare-fun e!3623383 () Bool)

(assert (=> d!1856026 (= (matchRSpec!3070 (regTwo!32451 (regTwo!32451 r!7292)) s!2326) e!3623383)))

(declare-fun b!5917998 () Bool)

(declare-fun e!3623386 () Bool)

(assert (=> b!5917998 (= e!3623386 (matchRSpec!3070 (regTwo!32451 (regTwo!32451 (regTwo!32451 r!7292))) s!2326))))

(declare-fun b!5917999 () Bool)

(assert (=> b!5917999 (= e!3623382 (= s!2326 (Cons!64084 (c!1051439 (regTwo!32451 (regTwo!32451 r!7292))) Nil!64084)))))

(declare-fun b!5918000 () Bool)

(declare-fun e!3623381 () Bool)

(assert (=> b!5918000 (= e!3623383 e!3623381)))

(declare-fun res!2481217 () Bool)

(assert (=> b!5918000 (= res!2481217 (not ((_ is EmptyLang!15969) (regTwo!32451 (regTwo!32451 r!7292)))))))

(assert (=> b!5918000 (=> (not res!2481217) (not e!3623381))))

(declare-fun b!5918001 () Bool)

(declare-fun c!1051814 () Bool)

(assert (=> b!5918001 (= c!1051814 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32451 r!7292))))))

(assert (=> b!5918001 (= e!3623381 e!3623382)))

(declare-fun b!5918002 () Bool)

(assert (=> b!5918002 (= e!3623383 call!469118)))

(declare-fun b!5918003 () Bool)

(assert (=> b!5918003 (= e!3623384 e!3623386)))

(declare-fun res!2481219 () Bool)

(assert (=> b!5918003 (= res!2481219 (matchRSpec!3070 (regOne!32451 (regTwo!32451 (regTwo!32451 r!7292))) s!2326))))

(assert (=> b!5918003 (=> res!2481219 e!3623386)))

(declare-fun bm!469114 () Bool)

(assert (=> bm!469114 (= call!469118 (isEmpty!35940 s!2326))))

(assert (= (and d!1856026 c!1051812) b!5918002))

(assert (= (and d!1856026 (not c!1051812)) b!5918000))

(assert (= (and b!5918000 res!2481217) b!5918001))

(assert (= (and b!5918001 c!1051814) b!5917999))

(assert (= (and b!5918001 (not c!1051814)) b!5917995))

(assert (= (and b!5917995 c!1051813) b!5918003))

(assert (= (and b!5917995 (not c!1051813)) b!5917994))

(assert (= (and b!5918003 (not res!2481219)) b!5917998))

(assert (= (and b!5917994 c!1051811) b!5917997))

(assert (= (and b!5917994 (not c!1051811)) b!5917996))

(assert (= (and b!5917997 (not res!2481218)) b!5917993))

(assert (= (or b!5917993 b!5917996) bm!469113))

(assert (= (or b!5918002 b!5917997) bm!469114))

(declare-fun m!6815214 () Bool)

(assert (=> bm!469113 m!6815214))

(declare-fun m!6815216 () Bool)

(assert (=> b!5917998 m!6815216))

(declare-fun m!6815218 () Bool)

(assert (=> b!5918003 m!6815218))

(assert (=> bm!469114 m!6814230))

(assert (=> b!5917044 d!1856026))

(declare-fun d!1856028 () Bool)

(declare-fun res!2481220 () Bool)

(declare-fun e!3623388 () Bool)

(assert (=> d!1856028 (=> res!2481220 e!3623388)))

(assert (=> d!1856028 (= res!2481220 ((_ is Nil!64082) (t!377595 lt!2309704)))))

(assert (=> d!1856028 (= (forall!15051 (t!377595 lt!2309704) lambda!322815) e!3623388)))

(declare-fun b!5918004 () Bool)

(declare-fun e!3623389 () Bool)

(assert (=> b!5918004 (= e!3623388 e!3623389)))

(declare-fun res!2481221 () Bool)

(assert (=> b!5918004 (=> (not res!2481221) (not e!3623389))))

(assert (=> b!5918004 (= res!2481221 (dynLambda!25053 lambda!322815 (h!70530 (t!377595 lt!2309704))))))

(declare-fun b!5918005 () Bool)

(assert (=> b!5918005 (= e!3623389 (forall!15051 (t!377595 (t!377595 lt!2309704)) lambda!322815))))

(assert (= (and d!1856028 (not res!2481220)) b!5918004))

(assert (= (and b!5918004 res!2481221) b!5918005))

(declare-fun b_lambda!222303 () Bool)

(assert (=> (not b_lambda!222303) (not b!5918004)))

(declare-fun m!6815220 () Bool)

(assert (=> b!5918004 m!6815220))

(declare-fun m!6815222 () Bool)

(assert (=> b!5918005 m!6815222))

(assert (=> b!5917161 d!1856028))

(assert (=> bm!469054 d!1855664))

(declare-fun bm!469115 () Bool)

(declare-fun call!469120 () (InoxSet Context!10706))

(assert (=> bm!469115 (= call!469120 (derivationStepZipperDown!1219 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))) (h!70532 s!2326)))))

(declare-fun b!5918007 () Bool)

(declare-fun e!3623391 () Bool)

(assert (=> b!5918007 (= e!3623391 (nullable!5964 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))))))

(declare-fun b!5918008 () Bool)

(declare-fun e!3623390 () (InoxSet Context!10706))

(assert (=> b!5918008 (= e!3623390 call!469120)))

(declare-fun b!5918009 () Bool)

(declare-fun e!3623392 () (InoxSet Context!10706))

(assert (=> b!5918009 (= e!3623392 e!3623390)))

(declare-fun c!1051816 () Bool)

(assert (=> b!5918009 (= c!1051816 ((_ is Cons!64082) (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))))

(declare-fun b!5918010 () Bool)

(assert (=> b!5918010 (= e!3623392 ((_ map or) call!469120 (derivationStepZipperUp!1145 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))) (h!70532 s!2326))))))

(declare-fun d!1856030 () Bool)

(declare-fun c!1051815 () Bool)

(assert (=> d!1856030 (= c!1051815 e!3623391)))

(declare-fun res!2481222 () Bool)

(assert (=> d!1856030 (=> (not res!2481222) (not e!3623391))))

(assert (=> d!1856030 (= res!2481222 ((_ is Cons!64082) (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))))

(assert (=> d!1856030 (= (derivationStepZipperUp!1145 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (h!70532 s!2326)) e!3623392)))

(declare-fun b!5918006 () Bool)

(assert (=> b!5918006 (= e!3623390 ((as const (Array Context!10706 Bool)) false))))

(assert (= (and d!1856030 res!2481222) b!5918007))

(assert (= (and d!1856030 c!1051815) b!5918010))

(assert (= (and d!1856030 (not c!1051815)) b!5918009))

(assert (= (and b!5918009 c!1051816) b!5918008))

(assert (= (and b!5918009 (not c!1051816)) b!5918006))

(assert (= (or b!5918010 b!5918008) bm!469115))

(declare-fun m!6815224 () Bool)

(assert (=> bm!469115 m!6815224))

(declare-fun m!6815226 () Bool)

(assert (=> b!5918007 m!6815226))

(declare-fun m!6815228 () Bool)

(assert (=> b!5918010 m!6815228))

(assert (=> b!5917159 d!1856030))

(declare-fun b!5918011 () Bool)

(declare-fun e!3623398 () (InoxSet Context!10706))

(declare-fun call!469125 () (InoxSet Context!10706))

(declare-fun call!469126 () (InoxSet Context!10706))

(assert (=> b!5918011 (= e!3623398 ((_ map or) call!469125 call!469126))))

(declare-fun bm!469116 () Bool)

(declare-fun call!469123 () (InoxSet Context!10706))

(assert (=> bm!469116 (= call!469123 call!469125)))

(declare-fun bm!469117 () Bool)

(declare-fun call!469121 () List!64206)

(declare-fun call!469122 () List!64206)

(assert (=> bm!469117 (= call!469121 call!469122)))

(declare-fun b!5918012 () Bool)

(declare-fun e!3623397 () (InoxSet Context!10706))

(declare-fun call!469124 () (InoxSet Context!10706))

(assert (=> b!5918012 (= e!3623397 call!469124)))

(declare-fun c!1051817 () Bool)

(declare-fun bm!469118 () Bool)

(declare-fun c!1051819 () Bool)

(assert (=> bm!469118 (= call!469122 ($colon$colon!1856 (exprs!5853 (ite (or c!1051754 c!1051753) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469060))) (ite (or c!1051819 c!1051817) (regTwo!32450 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))) (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))))))

(declare-fun b!5918013 () Bool)

(assert (=> b!5918013 (= e!3623397 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5918014 () Bool)

(declare-fun e!3623394 () (InoxSet Context!10706))

(assert (=> b!5918014 (= e!3623394 ((_ map or) call!469126 call!469123))))

(declare-fun b!5918015 () Bool)

(declare-fun c!1051818 () Bool)

(assert (=> b!5918015 (= c!1051818 ((_ is Star!15969) (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))))))

(declare-fun e!3623395 () (InoxSet Context!10706))

(assert (=> b!5918015 (= e!3623395 e!3623397)))

(declare-fun c!1051821 () Bool)

(declare-fun d!1856032 () Bool)

(assert (=> d!1856032 (= c!1051821 (and ((_ is ElementMatch!15969) (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))) (= (c!1051439 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))) (h!70532 s!2326))))))

(declare-fun e!3623396 () (InoxSet Context!10706))

(assert (=> d!1856032 (= (derivationStepZipperDown!1219 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))) (ite (or c!1051754 c!1051753) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469060)) (h!70532 s!2326)) e!3623396)))

(declare-fun bm!469119 () Bool)

(declare-fun c!1051820 () Bool)

(assert (=> bm!469119 (= call!469126 (derivationStepZipperDown!1219 (ite c!1051820 (regTwo!32451 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))) (regOne!32450 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))) (ite c!1051820 (ite (or c!1051754 c!1051753) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469060)) (Context!10707 call!469122)) (h!70532 s!2326)))))

(declare-fun b!5918016 () Bool)

(assert (=> b!5918016 (= e!3623396 (store ((as const (Array Context!10706 Bool)) false) (ite (or c!1051754 c!1051753) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469060)) true))))

(declare-fun bm!469120 () Bool)

(assert (=> bm!469120 (= call!469125 (derivationStepZipperDown!1219 (ite c!1051820 (regOne!32451 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))) (ite c!1051819 (regTwo!32450 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))) (ite c!1051817 (regOne!32450 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))) (reg!16298 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))))) (ite (or c!1051820 c!1051819) (ite (or c!1051754 c!1051753) (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469060)) (Context!10707 call!469121)) (h!70532 s!2326)))))

(declare-fun b!5918017 () Bool)

(declare-fun e!3623393 () Bool)

(assert (=> b!5918017 (= c!1051819 e!3623393)))

(declare-fun res!2481223 () Bool)

(assert (=> b!5918017 (=> (not res!2481223) (not e!3623393))))

(assert (=> b!5918017 (= res!2481223 ((_ is Concat!24814) (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))))))

(assert (=> b!5918017 (= e!3623398 e!3623394)))

(declare-fun b!5918018 () Bool)

(assert (=> b!5918018 (= e!3623395 call!469124)))

(declare-fun b!5918019 () Bool)

(assert (=> b!5918019 (= e!3623394 e!3623395)))

(assert (=> b!5918019 (= c!1051817 ((_ is Concat!24814) (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))))))

(declare-fun b!5918020 () Bool)

(assert (=> b!5918020 (= e!3623396 e!3623398)))

(assert (=> b!5918020 (= c!1051820 ((_ is Union!15969) (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))))))

(declare-fun bm!469121 () Bool)

(assert (=> bm!469121 (= call!469124 call!469123)))

(declare-fun b!5918021 () Bool)

(assert (=> b!5918021 (= e!3623393 (nullable!5964 (regOne!32450 (ite c!1051754 (regOne!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051753 (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051751 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (reg!16298 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))))))

(assert (= (and d!1856032 c!1051821) b!5918016))

(assert (= (and d!1856032 (not c!1051821)) b!5918020))

(assert (= (and b!5918020 c!1051820) b!5918011))

(assert (= (and b!5918020 (not c!1051820)) b!5918017))

(assert (= (and b!5918017 res!2481223) b!5918021))

(assert (= (and b!5918017 c!1051819) b!5918014))

(assert (= (and b!5918017 (not c!1051819)) b!5918019))

(assert (= (and b!5918019 c!1051817) b!5918018))

(assert (= (and b!5918019 (not c!1051817)) b!5918015))

(assert (= (and b!5918015 c!1051818) b!5918012))

(assert (= (and b!5918015 (not c!1051818)) b!5918013))

(assert (= (or b!5918018 b!5918012) bm!469117))

(assert (= (or b!5918018 b!5918012) bm!469121))

(assert (= (or b!5918014 bm!469117) bm!469118))

(assert (= (or b!5918014 bm!469121) bm!469116))

(assert (= (or b!5918011 b!5918014) bm!469119))

(assert (= (or b!5918011 bm!469116) bm!469120))

(declare-fun m!6815230 () Bool)

(assert (=> b!5918016 m!6815230))

(declare-fun m!6815232 () Bool)

(assert (=> bm!469119 m!6815232))

(declare-fun m!6815234 () Bool)

(assert (=> bm!469120 m!6815234))

(declare-fun m!6815236 () Bool)

(assert (=> b!5918021 m!6815236))

(declare-fun m!6815238 () Bool)

(assert (=> bm!469118 m!6815238))

(assert (=> bm!469059 d!1856032))

(declare-fun d!1856034 () Bool)

(declare-fun c!1051822 () Bool)

(assert (=> d!1856034 (= c!1051822 ((_ is Nil!64083) (t!377596 lt!2309724)))))

(declare-fun e!3623399 () (InoxSet Context!10706))

(assert (=> d!1856034 (= (content!11795 (t!377596 lt!2309724)) e!3623399)))

(declare-fun b!5918022 () Bool)

(assert (=> b!5918022 (= e!3623399 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5918023 () Bool)

(assert (=> b!5918023 (= e!3623399 ((_ map or) (store ((as const (Array Context!10706 Bool)) false) (h!70531 (t!377596 lt!2309724)) true) (content!11795 (t!377596 (t!377596 lt!2309724)))))))

(assert (= (and d!1856034 c!1051822) b!5918022))

(assert (= (and d!1856034 (not c!1051822)) b!5918023))

(declare-fun m!6815240 () Bool)

(assert (=> b!5918023 m!6815240))

(declare-fun m!6815242 () Bool)

(assert (=> b!5918023 m!6815242))

(assert (=> b!5917038 d!1856034))

(declare-fun bs!1400960 () Bool)

(declare-fun d!1856036 () Bool)

(assert (= bs!1400960 (and d!1856036 d!1856014)))

(declare-fun lambda!322905 () Int)

(assert (=> bs!1400960 (= lambda!322905 lambda!322902)))

(declare-fun bs!1400961 () Bool)

(assert (= bs!1400961 (and d!1856036 d!1855580)))

(assert (=> bs!1400961 (= lambda!322905 lambda!322809)))

(declare-fun bs!1400962 () Bool)

(assert (= bs!1400962 (and d!1856036 d!1855834)))

(assert (=> bs!1400962 (= lambda!322905 lambda!322880)))

(declare-fun bs!1400963 () Bool)

(assert (= bs!1400963 (and d!1856036 d!1855990)))

(assert (=> bs!1400963 (= lambda!322905 lambda!322901)))

(declare-fun bs!1400964 () Bool)

(assert (= bs!1400964 (and d!1856036 d!1855624)))

(assert (=> bs!1400964 (= lambda!322905 lambda!322837)))

(declare-fun bs!1400965 () Bool)

(assert (= bs!1400965 (and d!1856036 d!1855584)))

(assert (=> bs!1400965 (= lambda!322905 lambda!322812)))

(declare-fun bs!1400966 () Bool)

(assert (= bs!1400966 (and d!1856036 d!1855694)))

(assert (=> bs!1400966 (= lambda!322905 lambda!322865)))

(declare-fun bs!1400967 () Bool)

(assert (= bs!1400967 (and d!1856036 d!1855782)))

(assert (=> bs!1400967 (= lambda!322905 lambda!322869)))

(declare-fun bs!1400968 () Bool)

(assert (= bs!1400968 (and d!1856036 d!1855806)))

(assert (=> bs!1400968 (= lambda!322905 lambda!322873)))

(declare-fun bs!1400969 () Bool)

(assert (= bs!1400969 (and d!1856036 d!1855630)))

(assert (=> bs!1400969 (= lambda!322905 lambda!322838)))

(declare-fun bs!1400970 () Bool)

(assert (= bs!1400970 (and d!1856036 d!1855776)))

(assert (=> bs!1400970 (= lambda!322905 lambda!322868)))

(declare-fun bs!1400971 () Bool)

(assert (= bs!1400971 (and d!1856036 d!1855588)))

(assert (=> bs!1400971 (= lambda!322905 lambda!322815)))

(assert (=> d!1856036 (= (inv!83169 setElem!40167) (forall!15051 (exprs!5853 setElem!40167) lambda!322905))))

(declare-fun bs!1400972 () Bool)

(assert (= bs!1400972 d!1856036))

(declare-fun m!6815244 () Bool)

(assert (=> bs!1400972 m!6815244))

(assert (=> setNonEmpty!40167 d!1856036))

(assert (=> b!5917064 d!1855972))

(assert (=> b!5917064 d!1855974))

(declare-fun b!5918024 () Bool)

(declare-fun e!3623405 () Bool)

(declare-fun e!3623400 () Bool)

(assert (=> b!5918024 (= e!3623405 e!3623400)))

(declare-fun c!1051824 () Bool)

(assert (=> b!5918024 (= c!1051824 ((_ is Union!15969) (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))))))

(declare-fun b!5918025 () Bool)

(declare-fun e!3623404 () Bool)

(declare-fun call!469128 () Bool)

(assert (=> b!5918025 (= e!3623404 call!469128)))

(declare-fun d!1856038 () Bool)

(declare-fun res!2481226 () Bool)

(declare-fun e!3623406 () Bool)

(assert (=> d!1856038 (=> res!2481226 e!3623406)))

(assert (=> d!1856038 (= res!2481226 ((_ is ElementMatch!15969) (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))))))

(assert (=> d!1856038 (= (validRegex!7705 (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))) e!3623406)))

(declare-fun b!5918026 () Bool)

(declare-fun e!3623401 () Bool)

(declare-fun call!469129 () Bool)

(assert (=> b!5918026 (= e!3623401 call!469129)))

(declare-fun b!5918027 () Bool)

(declare-fun res!2481225 () Bool)

(declare-fun e!3623402 () Bool)

(assert (=> b!5918027 (=> (not res!2481225) (not e!3623402))))

(declare-fun call!469127 () Bool)

(assert (=> b!5918027 (= res!2481225 call!469127)))

(assert (=> b!5918027 (= e!3623400 e!3623402)))

(declare-fun b!5918028 () Bool)

(declare-fun e!3623403 () Bool)

(assert (=> b!5918028 (= e!3623403 e!3623404)))

(declare-fun res!2481227 () Bool)

(assert (=> b!5918028 (=> (not res!2481227) (not e!3623404))))

(assert (=> b!5918028 (= res!2481227 call!469127)))

(declare-fun b!5918029 () Bool)

(assert (=> b!5918029 (= e!3623405 e!3623401)))

(declare-fun res!2481228 () Bool)

(assert (=> b!5918029 (= res!2481228 (not (nullable!5964 (reg!16298 (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))))))))

(assert (=> b!5918029 (=> (not res!2481228) (not e!3623401))))

(declare-fun bm!469122 () Bool)

(assert (=> bm!469122 (= call!469127 (validRegex!7705 (ite c!1051824 (regOne!32451 (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))) (regOne!32450 (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))))))))

(declare-fun b!5918030 () Bool)

(declare-fun res!2481224 () Bool)

(assert (=> b!5918030 (=> res!2481224 e!3623403)))

(assert (=> b!5918030 (= res!2481224 (not ((_ is Concat!24814) (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728)))))))

(assert (=> b!5918030 (= e!3623400 e!3623403)))

(declare-fun b!5918031 () Bool)

(assert (=> b!5918031 (= e!3623406 e!3623405)))

(declare-fun c!1051823 () Bool)

(assert (=> b!5918031 (= c!1051823 ((_ is Star!15969) (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))))))

(declare-fun b!5918032 () Bool)

(assert (=> b!5918032 (= e!3623402 call!469128)))

(declare-fun bm!469123 () Bool)

(assert (=> bm!469123 (= call!469128 call!469129)))

(declare-fun bm!469124 () Bool)

(assert (=> bm!469124 (= call!469129 (validRegex!7705 (ite c!1051823 (reg!16298 (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))) (ite c!1051824 (regTwo!32451 (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728))) (regTwo!32450 (ite c!1051712 (regOne!32451 lt!2309728) (regOne!32450 lt!2309728)))))))))

(assert (= (and d!1856038 (not res!2481226)) b!5918031))

(assert (= (and b!5918031 c!1051823) b!5918029))

(assert (= (and b!5918031 (not c!1051823)) b!5918024))

(assert (= (and b!5918029 res!2481228) b!5918026))

(assert (= (and b!5918024 c!1051824) b!5918027))

(assert (= (and b!5918024 (not c!1051824)) b!5918030))

(assert (= (and b!5918027 res!2481225) b!5918032))

(assert (= (and b!5918030 (not res!2481224)) b!5918028))

(assert (= (and b!5918028 res!2481227) b!5918025))

(assert (= (or b!5918032 b!5918025) bm!469123))

(assert (= (or b!5918027 b!5918028) bm!469122))

(assert (= (or b!5918026 bm!469123) bm!469124))

(declare-fun m!6815246 () Bool)

(assert (=> b!5918029 m!6815246))

(declare-fun m!6815248 () Bool)

(assert (=> bm!469122 m!6815248))

(declare-fun m!6815250 () Bool)

(assert (=> bm!469124 m!6815250))

(assert (=> bm!469028 d!1856038))

(declare-fun b!5918033 () Bool)

(declare-fun e!3623411 () Bool)

(declare-fun e!3623410 () Bool)

(assert (=> b!5918033 (= e!3623411 e!3623410)))

(declare-fun res!2481233 () Bool)

(assert (=> b!5918033 (=> (not res!2481233) (not e!3623410))))

(assert (=> b!5918033 (= res!2481233 (and (not ((_ is EmptyLang!15969) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))) (not ((_ is ElementMatch!15969) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(declare-fun b!5918034 () Bool)

(declare-fun e!3623412 () Bool)

(declare-fun call!469131 () Bool)

(assert (=> b!5918034 (= e!3623412 call!469131)))

(declare-fun b!5918035 () Bool)

(declare-fun e!3623409 () Bool)

(declare-fun e!3623408 () Bool)

(assert (=> b!5918035 (= e!3623409 e!3623408)))

(declare-fun c!1051825 () Bool)

(assert (=> b!5918035 (= c!1051825 ((_ is Union!15969) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(declare-fun b!5918036 () Bool)

(assert (=> b!5918036 (= e!3623408 e!3623412)))

(declare-fun res!2481232 () Bool)

(declare-fun call!469130 () Bool)

(assert (=> b!5918036 (= res!2481232 call!469130)))

(assert (=> b!5918036 (=> (not res!2481232) (not e!3623412))))

(declare-fun d!1856040 () Bool)

(declare-fun res!2481230 () Bool)

(assert (=> d!1856040 (=> res!2481230 e!3623411)))

(assert (=> d!1856040 (= res!2481230 ((_ is EmptyExpr!15969) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(assert (=> d!1856040 (= (nullableFct!1935 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) e!3623411)))

(declare-fun b!5918037 () Bool)

(declare-fun e!3623407 () Bool)

(assert (=> b!5918037 (= e!3623407 call!469131)))

(declare-fun b!5918038 () Bool)

(assert (=> b!5918038 (= e!3623410 e!3623409)))

(declare-fun res!2481229 () Bool)

(assert (=> b!5918038 (=> res!2481229 e!3623409)))

(assert (=> b!5918038 (= res!2481229 ((_ is Star!15969) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))

(declare-fun bm!469125 () Bool)

(assert (=> bm!469125 (= call!469130 (nullable!5964 (ite c!1051825 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(declare-fun bm!469126 () Bool)

(assert (=> bm!469126 (= call!469131 (nullable!5964 (ite c!1051825 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(declare-fun b!5918039 () Bool)

(assert (=> b!5918039 (= e!3623408 e!3623407)))

(declare-fun res!2481231 () Bool)

(assert (=> b!5918039 (= res!2481231 call!469130)))

(assert (=> b!5918039 (=> res!2481231 e!3623407)))

(assert (= (and d!1856040 (not res!2481230)) b!5918033))

(assert (= (and b!5918033 res!2481233) b!5918038))

(assert (= (and b!5918038 (not res!2481229)) b!5918035))

(assert (= (and b!5918035 c!1051825) b!5918039))

(assert (= (and b!5918035 (not c!1051825)) b!5918036))

(assert (= (and b!5918039 (not res!2481231)) b!5918037))

(assert (= (and b!5918036 res!2481232) b!5918034))

(assert (= (or b!5918037 b!5918034) bm!469126))

(assert (= (or b!5918039 b!5918036) bm!469125))

(declare-fun m!6815252 () Bool)

(assert (=> bm!469125 m!6815252))

(declare-fun m!6815254 () Bool)

(assert (=> bm!469126 m!6815254))

(assert (=> d!1855908 d!1856040))

(declare-fun b!5918040 () Bool)

(declare-fun e!3623418 () Bool)

(declare-fun e!3623413 () Bool)

(assert (=> b!5918040 (= e!3623418 e!3623413)))

(declare-fun c!1051827 () Bool)

(assert (=> b!5918040 (= c!1051827 ((_ is Union!15969) (h!70530 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5918041 () Bool)

(declare-fun e!3623417 () Bool)

(declare-fun call!469133 () Bool)

(assert (=> b!5918041 (= e!3623417 call!469133)))

(declare-fun d!1856042 () Bool)

(declare-fun res!2481236 () Bool)

(declare-fun e!3623419 () Bool)

(assert (=> d!1856042 (=> res!2481236 e!3623419)))

(assert (=> d!1856042 (= res!2481236 ((_ is ElementMatch!15969) (h!70530 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> d!1856042 (= (validRegex!7705 (h!70530 (exprs!5853 (h!70531 zl!343)))) e!3623419)))

(declare-fun b!5918042 () Bool)

(declare-fun e!3623414 () Bool)

(declare-fun call!469134 () Bool)

(assert (=> b!5918042 (= e!3623414 call!469134)))

(declare-fun b!5918043 () Bool)

(declare-fun res!2481235 () Bool)

(declare-fun e!3623415 () Bool)

(assert (=> b!5918043 (=> (not res!2481235) (not e!3623415))))

(declare-fun call!469132 () Bool)

(assert (=> b!5918043 (= res!2481235 call!469132)))

(assert (=> b!5918043 (= e!3623413 e!3623415)))

(declare-fun b!5918044 () Bool)

(declare-fun e!3623416 () Bool)

(assert (=> b!5918044 (= e!3623416 e!3623417)))

(declare-fun res!2481237 () Bool)

(assert (=> b!5918044 (=> (not res!2481237) (not e!3623417))))

(assert (=> b!5918044 (= res!2481237 call!469132)))

(declare-fun b!5918045 () Bool)

(assert (=> b!5918045 (= e!3623418 e!3623414)))

(declare-fun res!2481238 () Bool)

(assert (=> b!5918045 (= res!2481238 (not (nullable!5964 (reg!16298 (h!70530 (exprs!5853 (h!70531 zl!343)))))))))

(assert (=> b!5918045 (=> (not res!2481238) (not e!3623414))))

(declare-fun bm!469127 () Bool)

(assert (=> bm!469127 (= call!469132 (validRegex!7705 (ite c!1051827 (regOne!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))) (regOne!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))))))

(declare-fun b!5918046 () Bool)

(declare-fun res!2481234 () Bool)

(assert (=> b!5918046 (=> res!2481234 e!3623416)))

(assert (=> b!5918046 (= res!2481234 (not ((_ is Concat!24814) (h!70530 (exprs!5853 (h!70531 zl!343))))))))

(assert (=> b!5918046 (= e!3623413 e!3623416)))

(declare-fun b!5918047 () Bool)

(assert (=> b!5918047 (= e!3623419 e!3623418)))

(declare-fun c!1051826 () Bool)

(assert (=> b!5918047 (= c!1051826 ((_ is Star!15969) (h!70530 (exprs!5853 (h!70531 zl!343)))))))

(declare-fun b!5918048 () Bool)

(assert (=> b!5918048 (= e!3623415 call!469133)))

(declare-fun bm!469128 () Bool)

(assert (=> bm!469128 (= call!469133 call!469134)))

(declare-fun bm!469129 () Bool)

(assert (=> bm!469129 (= call!469134 (validRegex!7705 (ite c!1051826 (reg!16298 (h!70530 (exprs!5853 (h!70531 zl!343)))) (ite c!1051827 (regTwo!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))) (regTwo!32450 (h!70530 (exprs!5853 (h!70531 zl!343))))))))))

(assert (= (and d!1856042 (not res!2481236)) b!5918047))

(assert (= (and b!5918047 c!1051826) b!5918045))

(assert (= (and b!5918047 (not c!1051826)) b!5918040))

(assert (= (and b!5918045 res!2481238) b!5918042))

(assert (= (and b!5918040 c!1051827) b!5918043))

(assert (= (and b!5918040 (not c!1051827)) b!5918046))

(assert (= (and b!5918043 res!2481235) b!5918048))

(assert (= (and b!5918046 (not res!2481234)) b!5918044))

(assert (= (and b!5918044 res!2481237) b!5918041))

(assert (= (or b!5918048 b!5918041) bm!469128))

(assert (= (or b!5918043 b!5918044) bm!469127))

(assert (= (or b!5918042 bm!469128) bm!469129))

(declare-fun m!6815256 () Bool)

(assert (=> b!5918045 m!6815256))

(declare-fun m!6815258 () Bool)

(assert (=> bm!469127 m!6815258))

(declare-fun m!6815260 () Bool)

(assert (=> bm!469129 m!6815260))

(assert (=> bs!1400864 d!1856042))

(assert (=> b!5917552 d!1855678))

(assert (=> b!5916995 d!1855696))

(declare-fun d!1856044 () Bool)

(assert (=> d!1856044 (= (isEmpty!35940 Nil!64084) true)))

(assert (=> d!1855668 d!1856044))

(assert (=> d!1855668 d!1855670))

(declare-fun d!1856046 () Bool)

(declare-fun res!2481239 () Bool)

(declare-fun e!3623420 () Bool)

(assert (=> d!1856046 (=> res!2481239 e!3623420)))

(assert (=> d!1856046 (= res!2481239 ((_ is Nil!64082) (t!377595 (exprs!5853 setElem!40160))))))

(assert (=> d!1856046 (= (forall!15051 (t!377595 (exprs!5853 setElem!40160)) lambda!322809) e!3623420)))

(declare-fun b!5918049 () Bool)

(declare-fun e!3623421 () Bool)

(assert (=> b!5918049 (= e!3623420 e!3623421)))

(declare-fun res!2481240 () Bool)

(assert (=> b!5918049 (=> (not res!2481240) (not e!3623421))))

(assert (=> b!5918049 (= res!2481240 (dynLambda!25053 lambda!322809 (h!70530 (t!377595 (exprs!5853 setElem!40160)))))))

(declare-fun b!5918050 () Bool)

(assert (=> b!5918050 (= e!3623421 (forall!15051 (t!377595 (t!377595 (exprs!5853 setElem!40160))) lambda!322809))))

(assert (= (and d!1856046 (not res!2481239)) b!5918049))

(assert (= (and b!5918049 res!2481240) b!5918050))

(declare-fun b_lambda!222305 () Bool)

(assert (=> (not b_lambda!222305) (not b!5918049)))

(declare-fun m!6815262 () Bool)

(assert (=> b!5918049 m!6815262))

(declare-fun m!6815264 () Bool)

(assert (=> b!5918050 m!6815264))

(assert (=> b!5917051 d!1856046))

(declare-fun d!1856048 () Bool)

(declare-fun lt!2309820 () Int)

(assert (=> d!1856048 (>= lt!2309820 0)))

(declare-fun e!3623424 () Int)

(assert (=> d!1856048 (= lt!2309820 e!3623424)))

(declare-fun c!1051830 () Bool)

(assert (=> d!1856048 (= c!1051830 ((_ is Nil!64084) lt!2309795))))

(assert (=> d!1856048 (= (size!40136 lt!2309795) lt!2309820)))

(declare-fun b!5918055 () Bool)

(assert (=> b!5918055 (= e!3623424 0)))

(declare-fun b!5918056 () Bool)

(assert (=> b!5918056 (= e!3623424 (+ 1 (size!40136 (t!377597 lt!2309795))))))

(assert (= (and d!1856048 c!1051830) b!5918055))

(assert (= (and d!1856048 (not c!1051830)) b!5918056))

(declare-fun m!6815266 () Bool)

(assert (=> b!5918056 m!6815266))

(assert (=> b!5917272 d!1856048))

(declare-fun d!1856050 () Bool)

(declare-fun lt!2309821 () Int)

(assert (=> d!1856050 (>= lt!2309821 0)))

(declare-fun e!3623425 () Int)

(assert (=> d!1856050 (= lt!2309821 e!3623425)))

(declare-fun c!1051831 () Bool)

(assert (=> d!1856050 (= c!1051831 ((_ is Nil!64084) (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))

(assert (=> d!1856050 (= (size!40136 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) lt!2309821)))

(declare-fun b!5918057 () Bool)

(assert (=> b!5918057 (= e!3623425 0)))

(declare-fun b!5918058 () Bool)

(assert (=> b!5918058 (= e!3623425 (+ 1 (size!40136 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))))

(assert (= (and d!1856050 c!1051831) b!5918057))

(assert (= (and d!1856050 (not c!1051831)) b!5918058))

(declare-fun m!6815268 () Bool)

(assert (=> b!5918058 m!6815268))

(assert (=> b!5917272 d!1856050))

(declare-fun d!1856052 () Bool)

(declare-fun lt!2309822 () Int)

(assert (=> d!1856052 (>= lt!2309822 0)))

(declare-fun e!3623426 () Int)

(assert (=> d!1856052 (= lt!2309822 e!3623426)))

(declare-fun c!1051832 () Bool)

(assert (=> d!1856052 (= c!1051832 ((_ is Nil!64084) (t!377597 s!2326)))))

(assert (=> d!1856052 (= (size!40136 (t!377597 s!2326)) lt!2309822)))

(declare-fun b!5918059 () Bool)

(assert (=> b!5918059 (= e!3623426 0)))

(declare-fun b!5918060 () Bool)

(assert (=> b!5918060 (= e!3623426 (+ 1 (size!40136 (t!377597 (t!377597 s!2326)))))))

(assert (= (and d!1856052 c!1051832) b!5918059))

(assert (= (and d!1856052 (not c!1051832)) b!5918060))

(declare-fun m!6815270 () Bool)

(assert (=> b!5918060 m!6815270))

(assert (=> b!5917272 d!1856052))

(assert (=> b!5917007 d!1855980))

(assert (=> b!5917007 d!1855982))

(declare-fun d!1856054 () Bool)

(assert (=> d!1856054 (= (isEmptyLang!1405 lt!2309804) ((_ is EmptyLang!15969) lt!2309804))))

(assert (=> b!5917307 d!1856054))

(declare-fun b!5918061 () Bool)

(declare-fun e!3623432 () Bool)

(declare-fun e!3623427 () Bool)

(assert (=> b!5918061 (= e!3623432 e!3623427)))

(declare-fun c!1051834 () Bool)

(assert (=> b!5918061 (= c!1051834 ((_ is Union!15969) (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))))))

(declare-fun b!5918062 () Bool)

(declare-fun e!3623431 () Bool)

(declare-fun call!469136 () Bool)

(assert (=> b!5918062 (= e!3623431 call!469136)))

(declare-fun d!1856056 () Bool)

(declare-fun res!2481243 () Bool)

(declare-fun e!3623433 () Bool)

(assert (=> d!1856056 (=> res!2481243 e!3623433)))

(assert (=> d!1856056 (= res!2481243 ((_ is ElementMatch!15969) (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))))))

(assert (=> d!1856056 (= (validRegex!7705 (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))) e!3623433)))

(declare-fun b!5918063 () Bool)

(declare-fun e!3623428 () Bool)

(declare-fun call!469137 () Bool)

(assert (=> b!5918063 (= e!3623428 call!469137)))

(declare-fun b!5918064 () Bool)

(declare-fun res!2481242 () Bool)

(declare-fun e!3623429 () Bool)

(assert (=> b!5918064 (=> (not res!2481242) (not e!3623429))))

(declare-fun call!469135 () Bool)

(assert (=> b!5918064 (= res!2481242 call!469135)))

(assert (=> b!5918064 (= e!3623427 e!3623429)))

(declare-fun b!5918065 () Bool)

(declare-fun e!3623430 () Bool)

(assert (=> b!5918065 (= e!3623430 e!3623431)))

(declare-fun res!2481244 () Bool)

(assert (=> b!5918065 (=> (not res!2481244) (not e!3623431))))

(assert (=> b!5918065 (= res!2481244 call!469135)))

(declare-fun b!5918066 () Bool)

(assert (=> b!5918066 (= e!3623432 e!3623428)))

(declare-fun res!2481245 () Bool)

(assert (=> b!5918066 (= res!2481245 (not (nullable!5964 (reg!16298 (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))))))))

(assert (=> b!5918066 (=> (not res!2481245) (not e!3623428))))

(declare-fun bm!469130 () Bool)

(assert (=> bm!469130 (= call!469135 (validRegex!7705 (ite c!1051834 (regOne!32451 (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))) (regOne!32450 (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))))))))

(declare-fun b!5918067 () Bool)

(declare-fun res!2481241 () Bool)

(assert (=> b!5918067 (=> res!2481241 e!3623430)))

(assert (=> b!5918067 (= res!2481241 (not ((_ is Concat!24814) (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737))))))))

(assert (=> b!5918067 (= e!3623427 e!3623430)))

(declare-fun b!5918068 () Bool)

(assert (=> b!5918068 (= e!3623433 e!3623432)))

(declare-fun c!1051833 () Bool)

(assert (=> b!5918068 (= c!1051833 ((_ is Star!15969) (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))))))

(declare-fun b!5918069 () Bool)

(assert (=> b!5918069 (= e!3623429 call!469136)))

(declare-fun bm!469131 () Bool)

(assert (=> bm!469131 (= call!469136 call!469137)))

(declare-fun bm!469132 () Bool)

(assert (=> bm!469132 (= call!469137 (validRegex!7705 (ite c!1051833 (reg!16298 (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))) (ite c!1051834 (regTwo!32451 (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737)))) (regTwo!32450 (ite c!1051673 (reg!16298 lt!2309737) (ite c!1051674 (regTwo!32451 lt!2309737) (regTwo!32450 lt!2309737))))))))))

(assert (= (and d!1856056 (not res!2481243)) b!5918068))

(assert (= (and b!5918068 c!1051833) b!5918066))

(assert (= (and b!5918068 (not c!1051833)) b!5918061))

(assert (= (and b!5918066 res!2481245) b!5918063))

(assert (= (and b!5918061 c!1051834) b!5918064))

(assert (= (and b!5918061 (not c!1051834)) b!5918067))

(assert (= (and b!5918064 res!2481242) b!5918069))

(assert (= (and b!5918067 (not res!2481241)) b!5918065))

(assert (= (and b!5918065 res!2481244) b!5918062))

(assert (= (or b!5918069 b!5918062) bm!469131))

(assert (= (or b!5918064 b!5918065) bm!469130))

(assert (= (or b!5918063 bm!469131) bm!469132))

(declare-fun m!6815272 () Bool)

(assert (=> b!5918066 m!6815272))

(declare-fun m!6815274 () Bool)

(assert (=> bm!469130 m!6815274))

(declare-fun m!6815276 () Bool)

(assert (=> bm!469132 m!6815276))

(assert (=> bm!469000 d!1856056))

(declare-fun bs!1400973 () Bool)

(declare-fun d!1856058 () Bool)

(assert (= bs!1400973 (and d!1856058 d!1856014)))

(declare-fun lambda!322906 () Int)

(assert (=> bs!1400973 (= lambda!322906 lambda!322902)))

(declare-fun bs!1400974 () Bool)

(assert (= bs!1400974 (and d!1856058 d!1855580)))

(assert (=> bs!1400974 (= lambda!322906 lambda!322809)))

(declare-fun bs!1400975 () Bool)

(assert (= bs!1400975 (and d!1856058 d!1855834)))

(assert (=> bs!1400975 (= lambda!322906 lambda!322880)))

(declare-fun bs!1400976 () Bool)

(assert (= bs!1400976 (and d!1856058 d!1855990)))

(assert (=> bs!1400976 (= lambda!322906 lambda!322901)))

(declare-fun bs!1400977 () Bool)

(assert (= bs!1400977 (and d!1856058 d!1855584)))

(assert (=> bs!1400977 (= lambda!322906 lambda!322812)))

(declare-fun bs!1400978 () Bool)

(assert (= bs!1400978 (and d!1856058 d!1855694)))

(assert (=> bs!1400978 (= lambda!322906 lambda!322865)))

(declare-fun bs!1400979 () Bool)

(assert (= bs!1400979 (and d!1856058 d!1855782)))

(assert (=> bs!1400979 (= lambda!322906 lambda!322869)))

(declare-fun bs!1400980 () Bool)

(assert (= bs!1400980 (and d!1856058 d!1855806)))

(assert (=> bs!1400980 (= lambda!322906 lambda!322873)))

(declare-fun bs!1400981 () Bool)

(assert (= bs!1400981 (and d!1856058 d!1855630)))

(assert (=> bs!1400981 (= lambda!322906 lambda!322838)))

(declare-fun bs!1400982 () Bool)

(assert (= bs!1400982 (and d!1856058 d!1855776)))

(assert (=> bs!1400982 (= lambda!322906 lambda!322868)))

(declare-fun bs!1400983 () Bool)

(assert (= bs!1400983 (and d!1856058 d!1855588)))

(assert (=> bs!1400983 (= lambda!322906 lambda!322815)))

(declare-fun bs!1400984 () Bool)

(assert (= bs!1400984 (and d!1856058 d!1856036)))

(assert (=> bs!1400984 (= lambda!322906 lambda!322905)))

(declare-fun bs!1400985 () Bool)

(assert (= bs!1400985 (and d!1856058 d!1855624)))

(assert (=> bs!1400985 (= lambda!322906 lambda!322837)))

(assert (=> d!1856058 (= (inv!83169 (h!70531 res!2480970)) (forall!15051 (exprs!5853 (h!70531 res!2480970)) lambda!322906))))

(declare-fun bs!1400986 () Bool)

(assert (= bs!1400986 d!1856058))

(declare-fun m!6815278 () Bool)

(assert (=> bs!1400986 m!6815278))

(assert (=> b!5917207 d!1856058))

(declare-fun bs!1400987 () Bool)

(declare-fun b!5918070 () Bool)

(assert (= bs!1400987 (and b!5918070 b!5917897)))

(declare-fun lambda!322907 () Int)

(assert (=> bs!1400987 (not (= lambda!322907 lambda!322900))))

(declare-fun bs!1400988 () Bool)

(assert (= bs!1400988 (and b!5918070 d!1855652)))

(assert (=> bs!1400988 (not (= lambda!322907 lambda!322859))))

(declare-fun bs!1400989 () Bool)

(assert (= bs!1400989 (and b!5918070 d!1855812)))

(assert (=> bs!1400989 (not (= lambda!322907 lambda!322879))))

(assert (=> bs!1400988 (not (= lambda!322907 lambda!322857))))

(declare-fun bs!1400990 () Bool)

(assert (= bs!1400990 (and b!5918070 b!5916342)))

(assert (=> bs!1400990 (not (= lambda!322907 lambda!322806))))

(declare-fun bs!1400991 () Bool)

(assert (= bs!1400991 (and b!5918070 b!5917894)))

(assert (=> bs!1400991 (= (and (= (reg!16298 (regTwo!32451 (regOne!32451 r!7292))) (reg!16298 (regOne!32451 (regOne!32451 r!7292)))) (= (regTwo!32451 (regOne!32451 r!7292)) (regOne!32451 (regOne!32451 r!7292)))) (= lambda!322907 lambda!322899))))

(declare-fun bs!1400992 () Bool)

(assert (= bs!1400992 (and b!5918070 b!5917993)))

(assert (=> bs!1400992 (= (and (= (reg!16298 (regTwo!32451 (regOne!32451 r!7292))) (reg!16298 (regTwo!32451 (regTwo!32451 r!7292)))) (= (regTwo!32451 (regOne!32451 r!7292)) (regTwo!32451 (regTwo!32451 r!7292)))) (= lambda!322907 lambda!322903))))

(declare-fun bs!1400993 () Bool)

(assert (= bs!1400993 (and b!5918070 b!5916600)))

(assert (=> bs!1400993 (= (and (= (reg!16298 (regTwo!32451 (regOne!32451 r!7292))) (reg!16298 r!7292)) (= (regTwo!32451 (regOne!32451 r!7292)) r!7292)) (= lambda!322907 lambda!322826))))

(declare-fun bs!1400994 () Bool)

(assert (= bs!1400994 (and b!5918070 b!5917042)))

(assert (=> bs!1400994 (not (= lambda!322907 lambda!322864))))

(declare-fun bs!1400995 () Bool)

(assert (= bs!1400995 (and b!5918070 b!5917511)))

(assert (=> bs!1400995 (not (= lambda!322907 lambda!322891))))

(declare-fun bs!1400996 () Bool)

(assert (= bs!1400996 (and b!5918070 d!1855884)))

(assert (=> bs!1400996 (not (= lambda!322907 lambda!322885))))

(assert (=> bs!1400996 (not (= lambda!322907 lambda!322888))))

(declare-fun bs!1400997 () Bool)

(assert (= bs!1400997 (and b!5918070 b!5917996)))

(assert (=> bs!1400997 (not (= lambda!322907 lambda!322904))))

(declare-fun bs!1400998 () Bool)

(assert (= bs!1400998 (and b!5918070 d!1855648)))

(assert (=> bs!1400998 (not (= lambda!322907 lambda!322850))))

(declare-fun bs!1400999 () Bool)

(assert (= bs!1400999 (and b!5918070 b!5916603)))

(assert (=> bs!1400999 (not (= lambda!322907 lambda!322827))))

(declare-fun bs!1401000 () Bool)

(assert (= bs!1401000 (and b!5918070 b!5917508)))

(assert (=> bs!1401000 (= (and (= (reg!16298 (regTwo!32451 (regOne!32451 r!7292))) (reg!16298 (regOne!32451 r!7292))) (= (regTwo!32451 (regOne!32451 r!7292)) (regOne!32451 r!7292))) (= lambda!322907 lambda!322890))))

(declare-fun bs!1401001 () Bool)

(assert (= bs!1401001 (and b!5918070 b!5917039)))

(assert (=> bs!1401001 (= (and (= (reg!16298 (regTwo!32451 (regOne!32451 r!7292))) (reg!16298 (regTwo!32451 r!7292))) (= (regTwo!32451 (regOne!32451 r!7292)) (regTwo!32451 r!7292))) (= lambda!322907 lambda!322863))))

(assert (=> bs!1400990 (not (= lambda!322907 lambda!322805))))

(assert (=> b!5918070 true))

(assert (=> b!5918070 true))

(declare-fun bs!1401002 () Bool)

(declare-fun b!5918073 () Bool)

(assert (= bs!1401002 (and b!5918073 b!5917897)))

(declare-fun lambda!322908 () Int)

(assert (=> bs!1401002 (= (and (= (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))) (regOne!32450 (regOne!32451 (regOne!32451 r!7292)))) (= (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))) (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))))) (= lambda!322908 lambda!322900))))

(declare-fun bs!1401003 () Bool)

(assert (= bs!1401003 (and b!5918073 b!5918070)))

(assert (=> bs!1401003 (not (= lambda!322908 lambda!322907))))

(declare-fun bs!1401004 () Bool)

(assert (= bs!1401004 (and b!5918073 d!1855652)))

(assert (=> bs!1401004 (= (and (= (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322908 lambda!322859))))

(declare-fun bs!1401005 () Bool)

(assert (= bs!1401005 (and b!5918073 d!1855812)))

(assert (=> bs!1401005 (not (= lambda!322908 lambda!322879))))

(assert (=> bs!1401004 (not (= lambda!322908 lambda!322857))))

(declare-fun bs!1401006 () Bool)

(assert (= bs!1401006 (and b!5918073 b!5916342)))

(assert (=> bs!1401006 (= (and (= (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322908 lambda!322806))))

(declare-fun bs!1401007 () Bool)

(assert (= bs!1401007 (and b!5918073 b!5917894)))

(assert (=> bs!1401007 (not (= lambda!322908 lambda!322899))))

(declare-fun bs!1401008 () Bool)

(assert (= bs!1401008 (and b!5918073 b!5917993)))

(assert (=> bs!1401008 (not (= lambda!322908 lambda!322903))))

(declare-fun bs!1401009 () Bool)

(assert (= bs!1401009 (and b!5918073 b!5916600)))

(assert (=> bs!1401009 (not (= lambda!322908 lambda!322826))))

(declare-fun bs!1401010 () Bool)

(assert (= bs!1401010 (and b!5918073 b!5917042)))

(assert (=> bs!1401010 (= (and (= (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))) (regOne!32450 (regTwo!32451 r!7292))) (= (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))) (regTwo!32450 (regTwo!32451 r!7292)))) (= lambda!322908 lambda!322864))))

(declare-fun bs!1401011 () Bool)

(assert (= bs!1401011 (and b!5918073 b!5917511)))

(assert (=> bs!1401011 (= (and (= (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))) (regOne!32450 (regOne!32451 r!7292))) (= (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))) (regTwo!32450 (regOne!32451 r!7292)))) (= lambda!322908 lambda!322891))))

(declare-fun bs!1401012 () Bool)

(assert (= bs!1401012 (and b!5918073 d!1855884)))

(assert (=> bs!1401012 (not (= lambda!322908 lambda!322885))))

(assert (=> bs!1401012 (= (and (= (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322908 lambda!322888))))

(declare-fun bs!1401013 () Bool)

(assert (= bs!1401013 (and b!5918073 b!5917996)))

(assert (=> bs!1401013 (= (and (= (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))) (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292)))) (= (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))) (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))))) (= lambda!322908 lambda!322904))))

(declare-fun bs!1401014 () Bool)

(assert (= bs!1401014 (and b!5918073 d!1855648)))

(assert (=> bs!1401014 (not (= lambda!322908 lambda!322850))))

(declare-fun bs!1401015 () Bool)

(assert (= bs!1401015 (and b!5918073 b!5916603)))

(assert (=> bs!1401015 (= (and (= (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322908 lambda!322827))))

(declare-fun bs!1401016 () Bool)

(assert (= bs!1401016 (and b!5918073 b!5917508)))

(assert (=> bs!1401016 (not (= lambda!322908 lambda!322890))))

(declare-fun bs!1401017 () Bool)

(assert (= bs!1401017 (and b!5918073 b!5917039)))

(assert (=> bs!1401017 (not (= lambda!322908 lambda!322863))))

(assert (=> bs!1401006 (not (= lambda!322908 lambda!322805))))

(assert (=> b!5918073 true))

(assert (=> b!5918073 true))

(declare-fun e!3623438 () Bool)

(declare-fun call!469139 () Bool)

(assert (=> b!5918070 (= e!3623438 call!469139)))

(declare-fun b!5918071 () Bool)

(declare-fun e!3623437 () Bool)

(declare-fun e!3623440 () Bool)

(assert (=> b!5918071 (= e!3623437 e!3623440)))

(declare-fun c!1051835 () Bool)

(assert (=> b!5918071 (= c!1051835 ((_ is Star!15969) (regTwo!32451 (regOne!32451 r!7292))))))

(declare-fun b!5918072 () Bool)

(declare-fun c!1051837 () Bool)

(assert (=> b!5918072 (= c!1051837 ((_ is Union!15969) (regTwo!32451 (regOne!32451 r!7292))))))

(declare-fun e!3623435 () Bool)

(assert (=> b!5918072 (= e!3623435 e!3623437)))

(assert (=> b!5918073 (= e!3623440 call!469139)))

(declare-fun bm!469133 () Bool)

(assert (=> bm!469133 (= call!469139 (Exists!3039 (ite c!1051835 lambda!322907 lambda!322908)))))

(declare-fun b!5918074 () Bool)

(declare-fun res!2481247 () Bool)

(assert (=> b!5918074 (=> res!2481247 e!3623438)))

(declare-fun call!469138 () Bool)

(assert (=> b!5918074 (= res!2481247 call!469138)))

(assert (=> b!5918074 (= e!3623440 e!3623438)))

(declare-fun d!1856060 () Bool)

(declare-fun c!1051836 () Bool)

(assert (=> d!1856060 (= c!1051836 ((_ is EmptyExpr!15969) (regTwo!32451 (regOne!32451 r!7292))))))

(declare-fun e!3623436 () Bool)

(assert (=> d!1856060 (= (matchRSpec!3070 (regTwo!32451 (regOne!32451 r!7292)) s!2326) e!3623436)))

(declare-fun b!5918075 () Bool)

(declare-fun e!3623439 () Bool)

(assert (=> b!5918075 (= e!3623439 (matchRSpec!3070 (regTwo!32451 (regTwo!32451 (regOne!32451 r!7292))) s!2326))))

(declare-fun b!5918076 () Bool)

(assert (=> b!5918076 (= e!3623435 (= s!2326 (Cons!64084 (c!1051439 (regTwo!32451 (regOne!32451 r!7292))) Nil!64084)))))

(declare-fun b!5918077 () Bool)

(declare-fun e!3623434 () Bool)

(assert (=> b!5918077 (= e!3623436 e!3623434)))

(declare-fun res!2481246 () Bool)

(assert (=> b!5918077 (= res!2481246 (not ((_ is EmptyLang!15969) (regTwo!32451 (regOne!32451 r!7292)))))))

(assert (=> b!5918077 (=> (not res!2481246) (not e!3623434))))

(declare-fun b!5918078 () Bool)

(declare-fun c!1051838 () Bool)

(assert (=> b!5918078 (= c!1051838 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32451 r!7292))))))

(assert (=> b!5918078 (= e!3623434 e!3623435)))

(declare-fun b!5918079 () Bool)

(assert (=> b!5918079 (= e!3623436 call!469138)))

(declare-fun b!5918080 () Bool)

(assert (=> b!5918080 (= e!3623437 e!3623439)))

(declare-fun res!2481248 () Bool)

(assert (=> b!5918080 (= res!2481248 (matchRSpec!3070 (regOne!32451 (regTwo!32451 (regOne!32451 r!7292))) s!2326))))

(assert (=> b!5918080 (=> res!2481248 e!3623439)))

(declare-fun bm!469134 () Bool)

(assert (=> bm!469134 (= call!469138 (isEmpty!35940 s!2326))))

(assert (= (and d!1856060 c!1051836) b!5918079))

(assert (= (and d!1856060 (not c!1051836)) b!5918077))

(assert (= (and b!5918077 res!2481246) b!5918078))

(assert (= (and b!5918078 c!1051838) b!5918076))

(assert (= (and b!5918078 (not c!1051838)) b!5918072))

(assert (= (and b!5918072 c!1051837) b!5918080))

(assert (= (and b!5918072 (not c!1051837)) b!5918071))

(assert (= (and b!5918080 (not res!2481248)) b!5918075))

(assert (= (and b!5918071 c!1051835) b!5918074))

(assert (= (and b!5918071 (not c!1051835)) b!5918073))

(assert (= (and b!5918074 (not res!2481247)) b!5918070))

(assert (= (or b!5918070 b!5918073) bm!469133))

(assert (= (or b!5918079 b!5918074) bm!469134))

(declare-fun m!6815280 () Bool)

(assert (=> bm!469133 m!6815280))

(declare-fun m!6815282 () Bool)

(assert (=> b!5918075 m!6815282))

(declare-fun m!6815284 () Bool)

(assert (=> b!5918080 m!6815284))

(assert (=> bm!469134 m!6814230))

(assert (=> b!5917513 d!1856060))

(declare-fun d!1856062 () Bool)

(assert (=> d!1856062 (= (isUnion!835 lt!2309804) ((_ is Union!15969) lt!2309804))))

(assert (=> b!5917311 d!1856062))

(declare-fun d!1856064 () Bool)

(declare-fun lt!2309823 () Int)

(assert (=> d!1856064 (>= lt!2309823 0)))

(declare-fun e!3623441 () Int)

(assert (=> d!1856064 (= lt!2309823 e!3623441)))

(declare-fun c!1051839 () Bool)

(assert (=> d!1856064 (= c!1051839 ((_ is Nil!64084) lt!2309796))))

(assert (=> d!1856064 (= (size!40136 lt!2309796) lt!2309823)))

(declare-fun b!5918081 () Bool)

(assert (=> b!5918081 (= e!3623441 0)))

(declare-fun b!5918082 () Bool)

(assert (=> b!5918082 (= e!3623441 (+ 1 (size!40136 (t!377597 lt!2309796))))))

(assert (= (and d!1856064 c!1051839) b!5918081))

(assert (= (and d!1856064 (not c!1051839)) b!5918082))

(declare-fun m!6815286 () Bool)

(assert (=> b!5918082 m!6815286))

(assert (=> b!5917280 d!1856064))

(declare-fun d!1856066 () Bool)

(declare-fun lt!2309824 () Int)

(assert (=> d!1856066 (>= lt!2309824 0)))

(declare-fun e!3623442 () Int)

(assert (=> d!1856066 (= lt!2309824 e!3623442)))

(declare-fun c!1051840 () Bool)

(assert (=> d!1856066 (= c!1051840 ((_ is Nil!64084) Nil!64084))))

(assert (=> d!1856066 (= (size!40136 Nil!64084) lt!2309824)))

(declare-fun b!5918083 () Bool)

(assert (=> b!5918083 (= e!3623442 0)))

(declare-fun b!5918084 () Bool)

(assert (=> b!5918084 (= e!3623442 (+ 1 (size!40136 (t!377597 Nil!64084))))))

(assert (= (and d!1856066 c!1051840) b!5918083))

(assert (= (and d!1856066 (not c!1051840)) b!5918084))

(declare-fun m!6815288 () Bool)

(assert (=> b!5918084 m!6815288))

(assert (=> b!5917280 d!1856066))

(declare-fun d!1856068 () Bool)

(declare-fun lt!2309825 () Int)

(assert (=> d!1856068 (>= lt!2309825 0)))

(declare-fun e!3623443 () Int)

(assert (=> d!1856068 (= lt!2309825 e!3623443)))

(declare-fun c!1051841 () Bool)

(assert (=> d!1856068 (= c!1051841 ((_ is Nil!64084) (Cons!64084 (h!70532 s!2326) Nil!64084)))))

(assert (=> d!1856068 (= (size!40136 (Cons!64084 (h!70532 s!2326) Nil!64084)) lt!2309825)))

(declare-fun b!5918085 () Bool)

(assert (=> b!5918085 (= e!3623443 0)))

(declare-fun b!5918086 () Bool)

(assert (=> b!5918086 (= e!3623443 (+ 1 (size!40136 (t!377597 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(assert (= (and d!1856068 c!1051841) b!5918085))

(assert (= (and d!1856068 (not c!1051841)) b!5918086))

(declare-fun m!6815290 () Bool)

(assert (=> b!5918086 m!6815290))

(assert (=> b!5917280 d!1856068))

(declare-fun d!1856070 () Bool)

(assert (=> d!1856070 (= (head!12479 (_2!36251 (get!22066 lt!2309750))) (h!70532 (_2!36251 (get!22066 lt!2309750))))))

(assert (=> b!5917177 d!1856070))

(declare-fun b!5918087 () Bool)

(declare-fun e!3623449 () Bool)

(declare-fun e!3623444 () Bool)

(assert (=> b!5918087 (= e!3623449 e!3623444)))

(declare-fun c!1051843 () Bool)

(assert (=> b!5918087 (= c!1051843 ((_ is Union!15969) (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))))))

(declare-fun b!5918088 () Bool)

(declare-fun e!3623448 () Bool)

(declare-fun call!469141 () Bool)

(assert (=> b!5918088 (= e!3623448 call!469141)))

(declare-fun d!1856072 () Bool)

(declare-fun res!2481251 () Bool)

(declare-fun e!3623450 () Bool)

(assert (=> d!1856072 (=> res!2481251 e!3623450)))

(assert (=> d!1856072 (= res!2481251 ((_ is ElementMatch!15969) (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))))))

(assert (=> d!1856072 (= (validRegex!7705 (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))) e!3623450)))

(declare-fun b!5918089 () Bool)

(declare-fun e!3623445 () Bool)

(declare-fun call!469142 () Bool)

(assert (=> b!5918089 (= e!3623445 call!469142)))

(declare-fun b!5918090 () Bool)

(declare-fun res!2481250 () Bool)

(declare-fun e!3623446 () Bool)

(assert (=> b!5918090 (=> (not res!2481250) (not e!3623446))))

(declare-fun call!469140 () Bool)

(assert (=> b!5918090 (= res!2481250 call!469140)))

(assert (=> b!5918090 (= e!3623444 e!3623446)))

(declare-fun b!5918091 () Bool)

(declare-fun e!3623447 () Bool)

(assert (=> b!5918091 (= e!3623447 e!3623448)))

(declare-fun res!2481252 () Bool)

(assert (=> b!5918091 (=> (not res!2481252) (not e!3623448))))

(assert (=> b!5918091 (= res!2481252 call!469140)))

(declare-fun b!5918092 () Bool)

(assert (=> b!5918092 (= e!3623449 e!3623445)))

(declare-fun res!2481253 () Bool)

(assert (=> b!5918092 (= res!2481253 (not (nullable!5964 (reg!16298 (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))))))))

(assert (=> b!5918092 (=> (not res!2481253) (not e!3623445))))

(declare-fun bm!469135 () Bool)

(assert (=> bm!469135 (= call!469140 (validRegex!7705 (ite c!1051843 (regOne!32451 (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))) (regOne!32450 (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))))))))

(declare-fun b!5918093 () Bool)

(declare-fun res!2481249 () Bool)

(assert (=> b!5918093 (=> res!2481249 e!3623447)))

(assert (=> b!5918093 (= res!2481249 (not ((_ is Concat!24814) (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737)))))))

(assert (=> b!5918093 (= e!3623444 e!3623447)))

(declare-fun b!5918094 () Bool)

(assert (=> b!5918094 (= e!3623450 e!3623449)))

(declare-fun c!1051842 () Bool)

(assert (=> b!5918094 (= c!1051842 ((_ is Star!15969) (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))))))

(declare-fun b!5918095 () Bool)

(assert (=> b!5918095 (= e!3623446 call!469141)))

(declare-fun bm!469136 () Bool)

(assert (=> bm!469136 (= call!469141 call!469142)))

(declare-fun bm!469137 () Bool)

(assert (=> bm!469137 (= call!469142 (validRegex!7705 (ite c!1051842 (reg!16298 (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))) (ite c!1051843 (regTwo!32451 (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737))) (regTwo!32450 (ite c!1051674 (regOne!32451 lt!2309737) (regOne!32450 lt!2309737)))))))))

(assert (= (and d!1856072 (not res!2481251)) b!5918094))

(assert (= (and b!5918094 c!1051842) b!5918092))

(assert (= (and b!5918094 (not c!1051842)) b!5918087))

(assert (= (and b!5918092 res!2481253) b!5918089))

(assert (= (and b!5918087 c!1051843) b!5918090))

(assert (= (and b!5918087 (not c!1051843)) b!5918093))

(assert (= (and b!5918090 res!2481250) b!5918095))

(assert (= (and b!5918093 (not res!2481249)) b!5918091))

(assert (= (and b!5918091 res!2481252) b!5918088))

(assert (= (or b!5918095 b!5918088) bm!469136))

(assert (= (or b!5918090 b!5918091) bm!469135))

(assert (= (or b!5918089 bm!469136) bm!469137))

(declare-fun m!6815292 () Bool)

(assert (=> b!5918092 m!6815292))

(declare-fun m!6815294 () Bool)

(assert (=> bm!469135 m!6815294))

(declare-fun m!6815296 () Bool)

(assert (=> bm!469137 m!6815296))

(assert (=> bm!468998 d!1856072))

(assert (=> b!5917052 d!1855696))

(declare-fun d!1856074 () Bool)

(assert (not d!1856074))

(assert (=> b!5917003 d!1856074))

(declare-fun d!1856076 () Bool)

(declare-fun e!3623457 () Bool)

(assert (=> d!1856076 e!3623457))

(declare-fun c!1051844 () Bool)

(assert (=> d!1856076 (= c!1051844 ((_ is EmptyExpr!15969) (regTwo!32450 r!7292)))))

(declare-fun lt!2309826 () Bool)

(declare-fun e!3623456 () Bool)

(assert (=> d!1856076 (= lt!2309826 e!3623456)))

(declare-fun c!1051845 () Bool)

(assert (=> d!1856076 (= c!1051845 (isEmpty!35940 (_2!36251 (get!22066 lt!2309801))))))

(assert (=> d!1856076 (validRegex!7705 (regTwo!32450 r!7292))))

(assert (=> d!1856076 (= (matchR!8152 (regTwo!32450 r!7292) (_2!36251 (get!22066 lt!2309801))) lt!2309826)))

(declare-fun b!5918096 () Bool)

(assert (=> b!5918096 (= e!3623456 (nullable!5964 (regTwo!32450 r!7292)))))

(declare-fun b!5918097 () Bool)

(declare-fun call!469143 () Bool)

(assert (=> b!5918097 (= e!3623457 (= lt!2309826 call!469143))))

(declare-fun b!5918098 () Bool)

(assert (=> b!5918098 (= e!3623456 (matchR!8152 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309801)))) (tail!11564 (_2!36251 (get!22066 lt!2309801)))))))

(declare-fun b!5918099 () Bool)

(declare-fun res!2481256 () Bool)

(declare-fun e!3623455 () Bool)

(assert (=> b!5918099 (=> (not res!2481256) (not e!3623455))))

(assert (=> b!5918099 (= res!2481256 (not call!469143))))

(declare-fun b!5918100 () Bool)

(declare-fun e!3623453 () Bool)

(declare-fun e!3623452 () Bool)

(assert (=> b!5918100 (= e!3623453 e!3623452)))

(declare-fun res!2481258 () Bool)

(assert (=> b!5918100 (=> res!2481258 e!3623452)))

(assert (=> b!5918100 (= res!2481258 call!469143)))

(declare-fun b!5918101 () Bool)

(declare-fun e!3623451 () Bool)

(assert (=> b!5918101 (= e!3623451 (not lt!2309826))))

(declare-fun b!5918102 () Bool)

(assert (=> b!5918102 (= e!3623455 (= (head!12479 (_2!36251 (get!22066 lt!2309801))) (c!1051439 (regTwo!32450 r!7292))))))

(declare-fun b!5918103 () Bool)

(declare-fun e!3623454 () Bool)

(assert (=> b!5918103 (= e!3623454 e!3623453)))

(declare-fun res!2481259 () Bool)

(assert (=> b!5918103 (=> (not res!2481259) (not e!3623453))))

(assert (=> b!5918103 (= res!2481259 (not lt!2309826))))

(declare-fun b!5918104 () Bool)

(assert (=> b!5918104 (= e!3623452 (not (= (head!12479 (_2!36251 (get!22066 lt!2309801))) (c!1051439 (regTwo!32450 r!7292)))))))

(declare-fun b!5918105 () Bool)

(declare-fun res!2481257 () Bool)

(assert (=> b!5918105 (=> res!2481257 e!3623454)))

(assert (=> b!5918105 (= res!2481257 e!3623455)))

(declare-fun res!2481261 () Bool)

(assert (=> b!5918105 (=> (not res!2481261) (not e!3623455))))

(assert (=> b!5918105 (= res!2481261 lt!2309826)))

(declare-fun b!5918106 () Bool)

(declare-fun res!2481254 () Bool)

(assert (=> b!5918106 (=> res!2481254 e!3623454)))

(assert (=> b!5918106 (= res!2481254 (not ((_ is ElementMatch!15969) (regTwo!32450 r!7292))))))

(assert (=> b!5918106 (= e!3623451 e!3623454)))

(declare-fun b!5918107 () Bool)

(assert (=> b!5918107 (= e!3623457 e!3623451)))

(declare-fun c!1051846 () Bool)

(assert (=> b!5918107 (= c!1051846 ((_ is EmptyLang!15969) (regTwo!32450 r!7292)))))

(declare-fun bm!469138 () Bool)

(assert (=> bm!469138 (= call!469143 (isEmpty!35940 (_2!36251 (get!22066 lt!2309801))))))

(declare-fun b!5918108 () Bool)

(declare-fun res!2481255 () Bool)

(assert (=> b!5918108 (=> res!2481255 e!3623452)))

(assert (=> b!5918108 (= res!2481255 (not (isEmpty!35940 (tail!11564 (_2!36251 (get!22066 lt!2309801))))))))

(declare-fun b!5918109 () Bool)

(declare-fun res!2481260 () Bool)

(assert (=> b!5918109 (=> (not res!2481260) (not e!3623455))))

(assert (=> b!5918109 (= res!2481260 (isEmpty!35940 (tail!11564 (_2!36251 (get!22066 lt!2309801)))))))

(assert (= (and d!1856076 c!1051845) b!5918096))

(assert (= (and d!1856076 (not c!1051845)) b!5918098))

(assert (= (and d!1856076 c!1051844) b!5918097))

(assert (= (and d!1856076 (not c!1051844)) b!5918107))

(assert (= (and b!5918107 c!1051846) b!5918101))

(assert (= (and b!5918107 (not c!1051846)) b!5918106))

(assert (= (and b!5918106 (not res!2481254)) b!5918105))

(assert (= (and b!5918105 res!2481261) b!5918099))

(assert (= (and b!5918099 res!2481256) b!5918109))

(assert (= (and b!5918109 res!2481260) b!5918102))

(assert (= (and b!5918105 (not res!2481257)) b!5918103))

(assert (= (and b!5918103 res!2481259) b!5918100))

(assert (= (and b!5918100 (not res!2481258)) b!5918108))

(assert (= (and b!5918108 (not res!2481255)) b!5918104))

(assert (= (or b!5918097 b!5918099 b!5918100) bm!469138))

(assert (=> b!5918096 m!6814564))

(declare-fun m!6815298 () Bool)

(assert (=> b!5918108 m!6815298))

(assert (=> b!5918108 m!6815298))

(declare-fun m!6815300 () Bool)

(assert (=> b!5918108 m!6815300))

(assert (=> b!5918109 m!6815298))

(assert (=> b!5918109 m!6815298))

(assert (=> b!5918109 m!6815300))

(declare-fun m!6815302 () Bool)

(assert (=> b!5918098 m!6815302))

(assert (=> b!5918098 m!6815302))

(declare-fun m!6815304 () Bool)

(assert (=> b!5918098 m!6815304))

(assert (=> b!5918098 m!6815298))

(assert (=> b!5918098 m!6815304))

(assert (=> b!5918098 m!6815298))

(declare-fun m!6815306 () Bool)

(assert (=> b!5918098 m!6815306))

(declare-fun m!6815308 () Bool)

(assert (=> d!1856076 m!6815308))

(assert (=> d!1856076 m!6814578))

(assert (=> b!5918104 m!6815302))

(assert (=> b!5918102 m!6815302))

(assert (=> bm!469138 m!6815308))

(assert (=> b!5917302 d!1856076))

(declare-fun d!1856078 () Bool)

(assert (=> d!1856078 (= (get!22066 lt!2309801) (v!51953 lt!2309801))))

(assert (=> b!5917302 d!1856078))

(declare-fun b!5918110 () Bool)

(declare-fun e!3623463 () Bool)

(declare-fun e!3623458 () Bool)

(assert (=> b!5918110 (= e!3623463 e!3623458)))

(declare-fun c!1051848 () Bool)

(assert (=> b!5918110 (= c!1051848 ((_ is Union!15969) lt!2309794))))

(declare-fun b!5918111 () Bool)

(declare-fun e!3623462 () Bool)

(declare-fun call!469145 () Bool)

(assert (=> b!5918111 (= e!3623462 call!469145)))

(declare-fun d!1856080 () Bool)

(declare-fun res!2481264 () Bool)

(declare-fun e!3623464 () Bool)

(assert (=> d!1856080 (=> res!2481264 e!3623464)))

(assert (=> d!1856080 (= res!2481264 ((_ is ElementMatch!15969) lt!2309794))))

(assert (=> d!1856080 (= (validRegex!7705 lt!2309794) e!3623464)))

(declare-fun b!5918112 () Bool)

(declare-fun e!3623459 () Bool)

(declare-fun call!469146 () Bool)

(assert (=> b!5918112 (= e!3623459 call!469146)))

(declare-fun b!5918113 () Bool)

(declare-fun res!2481263 () Bool)

(declare-fun e!3623460 () Bool)

(assert (=> b!5918113 (=> (not res!2481263) (not e!3623460))))

(declare-fun call!469144 () Bool)

(assert (=> b!5918113 (= res!2481263 call!469144)))

(assert (=> b!5918113 (= e!3623458 e!3623460)))

(declare-fun b!5918114 () Bool)

(declare-fun e!3623461 () Bool)

(assert (=> b!5918114 (= e!3623461 e!3623462)))

(declare-fun res!2481265 () Bool)

(assert (=> b!5918114 (=> (not res!2481265) (not e!3623462))))

(assert (=> b!5918114 (= res!2481265 call!469144)))

(declare-fun b!5918115 () Bool)

(assert (=> b!5918115 (= e!3623463 e!3623459)))

(declare-fun res!2481266 () Bool)

(assert (=> b!5918115 (= res!2481266 (not (nullable!5964 (reg!16298 lt!2309794))))))

(assert (=> b!5918115 (=> (not res!2481266) (not e!3623459))))

(declare-fun bm!469139 () Bool)

(assert (=> bm!469139 (= call!469144 (validRegex!7705 (ite c!1051848 (regOne!32451 lt!2309794) (regOne!32450 lt!2309794))))))

(declare-fun b!5918116 () Bool)

(declare-fun res!2481262 () Bool)

(assert (=> b!5918116 (=> res!2481262 e!3623461)))

(assert (=> b!5918116 (= res!2481262 (not ((_ is Concat!24814) lt!2309794)))))

(assert (=> b!5918116 (= e!3623458 e!3623461)))

(declare-fun b!5918117 () Bool)

(assert (=> b!5918117 (= e!3623464 e!3623463)))

(declare-fun c!1051847 () Bool)

(assert (=> b!5918117 (= c!1051847 ((_ is Star!15969) lt!2309794))))

(declare-fun b!5918118 () Bool)

(assert (=> b!5918118 (= e!3623460 call!469145)))

(declare-fun bm!469140 () Bool)

(assert (=> bm!469140 (= call!469145 call!469146)))

(declare-fun bm!469141 () Bool)

(assert (=> bm!469141 (= call!469146 (validRegex!7705 (ite c!1051847 (reg!16298 lt!2309794) (ite c!1051848 (regTwo!32451 lt!2309794) (regTwo!32450 lt!2309794)))))))

(assert (= (and d!1856080 (not res!2481264)) b!5918117))

(assert (= (and b!5918117 c!1051847) b!5918115))

(assert (= (and b!5918117 (not c!1051847)) b!5918110))

(assert (= (and b!5918115 res!2481266) b!5918112))

(assert (= (and b!5918110 c!1051848) b!5918113))

(assert (= (and b!5918110 (not c!1051848)) b!5918116))

(assert (= (and b!5918113 res!2481263) b!5918118))

(assert (= (and b!5918116 (not res!2481262)) b!5918114))

(assert (= (and b!5918114 res!2481265) b!5918111))

(assert (= (or b!5918118 b!5918111) bm!469140))

(assert (= (or b!5918113 b!5918114) bm!469139))

(assert (= (or b!5918112 bm!469140) bm!469141))

(declare-fun m!6815310 () Bool)

(assert (=> b!5918115 m!6815310))

(declare-fun m!6815312 () Bool)

(assert (=> bm!469139 m!6815312))

(declare-fun m!6815314 () Bool)

(assert (=> bm!469141 m!6815314))

(assert (=> d!1855782 d!1856080))

(declare-fun d!1856082 () Bool)

(declare-fun res!2481267 () Bool)

(declare-fun e!3623465 () Bool)

(assert (=> d!1856082 (=> res!2481267 e!3623465)))

(assert (=> d!1856082 (= res!2481267 ((_ is Nil!64082) (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> d!1856082 (= (forall!15051 (t!377595 (exprs!5853 (h!70531 zl!343))) lambda!322869) e!3623465)))

(declare-fun b!5918119 () Bool)

(declare-fun e!3623466 () Bool)

(assert (=> b!5918119 (= e!3623465 e!3623466)))

(declare-fun res!2481268 () Bool)

(assert (=> b!5918119 (=> (not res!2481268) (not e!3623466))))

(assert (=> b!5918119 (= res!2481268 (dynLambda!25053 lambda!322869 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5918120 () Bool)

(assert (=> b!5918120 (= e!3623466 (forall!15051 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))) lambda!322869))))

(assert (= (and d!1856082 (not res!2481267)) b!5918119))

(assert (= (and b!5918119 res!2481268) b!5918120))

(declare-fun b_lambda!222307 () Bool)

(assert (=> (not b_lambda!222307) (not b!5918119)))

(declare-fun m!6815316 () Bool)

(assert (=> b!5918119 m!6815316))

(declare-fun m!6815318 () Bool)

(assert (=> b!5918120 m!6815318))

(assert (=> d!1855782 d!1856082))

(declare-fun d!1856084 () Bool)

(assert (=> d!1856084 (= (isEmpty!35940 (_1!36251 (get!22066 lt!2309750))) ((_ is Nil!64084) (_1!36251 (get!22066 lt!2309750))))))

(assert (=> d!1855690 d!1856084))

(assert (=> d!1855690 d!1855670))

(declare-fun d!1856086 () Bool)

(assert (=> d!1856086 (= (isEmpty!35938 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))) ((_ is Nil!64082) (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(assert (=> b!5917258 d!1856086))

(declare-fun d!1856088 () Bool)

(assert (=> d!1856088 (= (Exists!3039 lambda!322885) (choose!44639 lambda!322885))))

(declare-fun bs!1401018 () Bool)

(assert (= bs!1401018 d!1856088))

(declare-fun m!6815320 () Bool)

(assert (=> bs!1401018 m!6815320))

(assert (=> d!1855884 d!1856088))

(declare-fun d!1856090 () Bool)

(assert (=> d!1856090 (= (Exists!3039 lambda!322888) (choose!44639 lambda!322888))))

(declare-fun bs!1401019 () Bool)

(assert (= bs!1401019 d!1856090))

(declare-fun m!6815322 () Bool)

(assert (=> bs!1401019 m!6815322))

(assert (=> d!1855884 d!1856090))

(declare-fun d!1856092 () Bool)

(declare-fun e!3623473 () Bool)

(assert (=> d!1856092 e!3623473))

(declare-fun c!1051849 () Bool)

(assert (=> d!1856092 (= c!1051849 ((_ is EmptyExpr!15969) (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326)))))))

(declare-fun lt!2309827 () Bool)

(declare-fun e!3623472 () Bool)

(assert (=> d!1856092 (= lt!2309827 e!3623472)))

(declare-fun c!1051850 () Bool)

(assert (=> d!1856092 (= c!1051850 (isEmpty!35940 (tail!11564 (tail!11564 s!2326))))))

(assert (=> d!1856092 (validRegex!7705 (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326))))))

(assert (=> d!1856092 (= (matchR!8152 (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326))) (tail!11564 (tail!11564 s!2326))) lt!2309827)))

(declare-fun b!5918121 () Bool)

(assert (=> b!5918121 (= e!3623472 (nullable!5964 (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326)))))))

(declare-fun b!5918122 () Bool)

(declare-fun call!469147 () Bool)

(assert (=> b!5918122 (= e!3623473 (= lt!2309827 call!469147))))

(declare-fun b!5918123 () Bool)

(assert (=> b!5918123 (= e!3623472 (matchR!8152 (derivativeStep!4700 (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326))) (head!12479 (tail!11564 (tail!11564 s!2326)))) (tail!11564 (tail!11564 (tail!11564 s!2326)))))))

(declare-fun b!5918124 () Bool)

(declare-fun res!2481271 () Bool)

(declare-fun e!3623471 () Bool)

(assert (=> b!5918124 (=> (not res!2481271) (not e!3623471))))

(assert (=> b!5918124 (= res!2481271 (not call!469147))))

(declare-fun b!5918125 () Bool)

(declare-fun e!3623469 () Bool)

(declare-fun e!3623468 () Bool)

(assert (=> b!5918125 (= e!3623469 e!3623468)))

(declare-fun res!2481273 () Bool)

(assert (=> b!5918125 (=> res!2481273 e!3623468)))

(assert (=> b!5918125 (= res!2481273 call!469147)))

(declare-fun b!5918126 () Bool)

(declare-fun e!3623467 () Bool)

(assert (=> b!5918126 (= e!3623467 (not lt!2309827))))

(declare-fun b!5918127 () Bool)

(assert (=> b!5918127 (= e!3623471 (= (head!12479 (tail!11564 (tail!11564 s!2326))) (c!1051439 (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326))))))))

(declare-fun b!5918128 () Bool)

(declare-fun e!3623470 () Bool)

(assert (=> b!5918128 (= e!3623470 e!3623469)))

(declare-fun res!2481274 () Bool)

(assert (=> b!5918128 (=> (not res!2481274) (not e!3623469))))

(assert (=> b!5918128 (= res!2481274 (not lt!2309827))))

(declare-fun b!5918129 () Bool)

(assert (=> b!5918129 (= e!3623468 (not (= (head!12479 (tail!11564 (tail!11564 s!2326))) (c!1051439 (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326)))))))))

(declare-fun b!5918130 () Bool)

(declare-fun res!2481272 () Bool)

(assert (=> b!5918130 (=> res!2481272 e!3623470)))

(assert (=> b!5918130 (= res!2481272 e!3623471)))

(declare-fun res!2481276 () Bool)

(assert (=> b!5918130 (=> (not res!2481276) (not e!3623471))))

(assert (=> b!5918130 (= res!2481276 lt!2309827)))

(declare-fun b!5918131 () Bool)

(declare-fun res!2481269 () Bool)

(assert (=> b!5918131 (=> res!2481269 e!3623470)))

(assert (=> b!5918131 (= res!2481269 (not ((_ is ElementMatch!15969) (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326))))))))

(assert (=> b!5918131 (= e!3623467 e!3623470)))

(declare-fun b!5918132 () Bool)

(assert (=> b!5918132 (= e!3623473 e!3623467)))

(declare-fun c!1051851 () Bool)

(assert (=> b!5918132 (= c!1051851 ((_ is EmptyLang!15969) (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326)))))))

(declare-fun bm!469142 () Bool)

(assert (=> bm!469142 (= call!469147 (isEmpty!35940 (tail!11564 (tail!11564 s!2326))))))

(declare-fun b!5918133 () Bool)

(declare-fun res!2481270 () Bool)

(assert (=> b!5918133 (=> res!2481270 e!3623468)))

(assert (=> b!5918133 (= res!2481270 (not (isEmpty!35940 (tail!11564 (tail!11564 (tail!11564 s!2326))))))))

(declare-fun b!5918134 () Bool)

(declare-fun res!2481275 () Bool)

(assert (=> b!5918134 (=> (not res!2481275) (not e!3623471))))

(assert (=> b!5918134 (= res!2481275 (isEmpty!35940 (tail!11564 (tail!11564 (tail!11564 s!2326)))))))

(assert (= (and d!1856092 c!1051850) b!5918121))

(assert (= (and d!1856092 (not c!1051850)) b!5918123))

(assert (= (and d!1856092 c!1051849) b!5918122))

(assert (= (and d!1856092 (not c!1051849)) b!5918132))

(assert (= (and b!5918132 c!1051851) b!5918126))

(assert (= (and b!5918132 (not c!1051851)) b!5918131))

(assert (= (and b!5918131 (not res!2481269)) b!5918130))

(assert (= (and b!5918130 res!2481276) b!5918124))

(assert (= (and b!5918124 res!2481271) b!5918134))

(assert (= (and b!5918134 res!2481275) b!5918127))

(assert (= (and b!5918130 (not res!2481272)) b!5918128))

(assert (= (and b!5918128 res!2481274) b!5918125))

(assert (= (and b!5918125 (not res!2481273)) b!5918133))

(assert (= (and b!5918133 (not res!2481270)) b!5918129))

(assert (= (or b!5918122 b!5918124 b!5918125) bm!469142))

(assert (=> b!5918121 m!6814500))

(declare-fun m!6815324 () Bool)

(assert (=> b!5918121 m!6815324))

(assert (=> b!5918133 m!6814494))

(declare-fun m!6815326 () Bool)

(assert (=> b!5918133 m!6815326))

(assert (=> b!5918133 m!6815326))

(declare-fun m!6815328 () Bool)

(assert (=> b!5918133 m!6815328))

(assert (=> b!5918134 m!6814494))

(assert (=> b!5918134 m!6815326))

(assert (=> b!5918134 m!6815326))

(assert (=> b!5918134 m!6815328))

(assert (=> b!5918123 m!6814494))

(declare-fun m!6815330 () Bool)

(assert (=> b!5918123 m!6815330))

(assert (=> b!5918123 m!6814500))

(assert (=> b!5918123 m!6815330))

(declare-fun m!6815332 () Bool)

(assert (=> b!5918123 m!6815332))

(assert (=> b!5918123 m!6814494))

(assert (=> b!5918123 m!6815326))

(assert (=> b!5918123 m!6815332))

(assert (=> b!5918123 m!6815326))

(declare-fun m!6815334 () Bool)

(assert (=> b!5918123 m!6815334))

(assert (=> d!1856092 m!6814494))

(assert (=> d!1856092 m!6814496))

(assert (=> d!1856092 m!6814500))

(declare-fun m!6815336 () Bool)

(assert (=> d!1856092 m!6815336))

(assert (=> b!5918129 m!6814494))

(assert (=> b!5918129 m!6815330))

(assert (=> b!5918127 m!6814494))

(assert (=> b!5918127 m!6815330))

(assert (=> bm!469142 m!6814494))

(assert (=> bm!469142 m!6814496))

(assert (=> b!5917070 d!1856092))

(declare-fun b!5918135 () Bool)

(declare-fun e!3623477 () Regex!15969)

(declare-fun call!469151 () Regex!15969)

(assert (=> b!5918135 (= e!3623477 (Concat!24814 call!469151 (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun b!5918136 () Bool)

(declare-fun e!3623478 () Regex!15969)

(declare-fun call!469148 () Regex!15969)

(declare-fun call!469149 () Regex!15969)

(assert (=> b!5918136 (= e!3623478 (Union!15969 call!469148 call!469149))))

(declare-fun b!5918137 () Bool)

(declare-fun c!1051854 () Bool)

(assert (=> b!5918137 (= c!1051854 ((_ is Union!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun e!3623474 () Regex!15969)

(assert (=> b!5918137 (= e!3623474 e!3623478)))

(declare-fun b!5918138 () Bool)

(declare-fun call!469150 () Regex!15969)

(declare-fun e!3623475 () Regex!15969)

(assert (=> b!5918138 (= e!3623475 (Union!15969 (Concat!24814 call!469150 (regTwo!32450 (derivativeStep!4700 r!7292 (head!12479 s!2326)))) EmptyLang!15969))))

(declare-fun c!1051853 () Bool)

(declare-fun bm!469143 () Bool)

(assert (=> bm!469143 (= call!469149 (derivativeStep!4700 (ite c!1051854 (regTwo!32451 (derivativeStep!4700 r!7292 (head!12479 s!2326))) (ite c!1051853 (reg!16298 (derivativeStep!4700 r!7292 (head!12479 s!2326))) (regOne!32450 (derivativeStep!4700 r!7292 (head!12479 s!2326))))) (head!12479 (tail!11564 s!2326))))))

(declare-fun bm!469144 () Bool)

(assert (=> bm!469144 (= call!469151 call!469149)))

(declare-fun b!5918139 () Bool)

(assert (=> b!5918139 (= e!3623474 (ite (= (head!12479 (tail!11564 s!2326)) (c!1051439 (derivativeStep!4700 r!7292 (head!12479 s!2326)))) EmptyExpr!15969 EmptyLang!15969))))

(declare-fun b!5918140 () Bool)

(assert (=> b!5918140 (= e!3623478 e!3623477)))

(assert (=> b!5918140 (= c!1051853 ((_ is Star!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun bm!469145 () Bool)

(assert (=> bm!469145 (= call!469150 call!469148)))

(declare-fun c!1051852 () Bool)

(declare-fun bm!469146 () Bool)

(assert (=> bm!469146 (= call!469148 (derivativeStep!4700 (ite c!1051854 (regOne!32451 (derivativeStep!4700 r!7292 (head!12479 s!2326))) (ite c!1051852 (regTwo!32450 (derivativeStep!4700 r!7292 (head!12479 s!2326))) (regOne!32450 (derivativeStep!4700 r!7292 (head!12479 s!2326))))) (head!12479 (tail!11564 s!2326))))))

(declare-fun b!5918141 () Bool)

(assert (=> b!5918141 (= e!3623475 (Union!15969 (Concat!24814 call!469151 (regTwo!32450 (derivativeStep!4700 r!7292 (head!12479 s!2326)))) call!469150))))

(declare-fun b!5918142 () Bool)

(assert (=> b!5918142 (= c!1051852 (nullable!5964 (regOne!32450 (derivativeStep!4700 r!7292 (head!12479 s!2326)))))))

(assert (=> b!5918142 (= e!3623477 e!3623475)))

(declare-fun b!5918143 () Bool)

(declare-fun e!3623476 () Regex!15969)

(assert (=> b!5918143 (= e!3623476 e!3623474)))

(declare-fun c!1051855 () Bool)

(assert (=> b!5918143 (= c!1051855 ((_ is ElementMatch!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun d!1856094 () Bool)

(declare-fun lt!2309828 () Regex!15969)

(assert (=> d!1856094 (validRegex!7705 lt!2309828)))

(assert (=> d!1856094 (= lt!2309828 e!3623476)))

(declare-fun c!1051856 () Bool)

(assert (=> d!1856094 (= c!1051856 (or ((_ is EmptyExpr!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))) ((_ is EmptyLang!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326)))))))

(assert (=> d!1856094 (validRegex!7705 (derivativeStep!4700 r!7292 (head!12479 s!2326)))))

(assert (=> d!1856094 (= (derivativeStep!4700 (derivativeStep!4700 r!7292 (head!12479 s!2326)) (head!12479 (tail!11564 s!2326))) lt!2309828)))

(declare-fun b!5918144 () Bool)

(assert (=> b!5918144 (= e!3623476 EmptyLang!15969)))

(assert (= (and d!1856094 c!1051856) b!5918144))

(assert (= (and d!1856094 (not c!1051856)) b!5918143))

(assert (= (and b!5918143 c!1051855) b!5918139))

(assert (= (and b!5918143 (not c!1051855)) b!5918137))

(assert (= (and b!5918137 c!1051854) b!5918136))

(assert (= (and b!5918137 (not c!1051854)) b!5918140))

(assert (= (and b!5918140 c!1051853) b!5918135))

(assert (= (and b!5918140 (not c!1051853)) b!5918142))

(assert (= (and b!5918142 c!1051852) b!5918141))

(assert (= (and b!5918142 (not c!1051852)) b!5918138))

(assert (= (or b!5918141 b!5918138) bm!469145))

(assert (= (or b!5918135 b!5918141) bm!469144))

(assert (= (or b!5918136 bm!469144) bm!469143))

(assert (= (or b!5918136 bm!469145) bm!469146))

(assert (=> bm!469143 m!6814498))

(declare-fun m!6815338 () Bool)

(assert (=> bm!469143 m!6815338))

(assert (=> bm!469146 m!6814498))

(declare-fun m!6815340 () Bool)

(assert (=> bm!469146 m!6815340))

(declare-fun m!6815342 () Bool)

(assert (=> b!5918142 m!6815342))

(declare-fun m!6815344 () Bool)

(assert (=> d!1856094 m!6815344))

(assert (=> d!1856094 m!6814252))

(assert (=> d!1856094 m!6814504))

(assert (=> b!5917070 d!1856094))

(assert (=> b!5917070 d!1855996))

(declare-fun d!1856096 () Bool)

(assert (=> d!1856096 (= (tail!11564 (tail!11564 s!2326)) (t!377597 (tail!11564 s!2326)))))

(assert (=> b!5917070 d!1856096))

(declare-fun b!5918147 () Bool)

(declare-fun res!2481277 () Bool)

(declare-fun e!3623479 () Bool)

(assert (=> b!5918147 (=> (not res!2481277) (not e!3623479))))

(declare-fun lt!2309829 () List!64208)

(assert (=> b!5918147 (= res!2481277 (= (size!40136 lt!2309829) (+ (size!40136 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))) (size!40136 (t!377597 s!2326)))))))

(declare-fun b!5918146 () Bool)

(declare-fun e!3623480 () List!64208)

(assert (=> b!5918146 (= e!3623480 (Cons!64084 (h!70532 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))) (++!14066 (t!377597 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))) (t!377597 s!2326))))))

(declare-fun b!5918148 () Bool)

(assert (=> b!5918148 (= e!3623479 (or (not (= (t!377597 s!2326) Nil!64084)) (= lt!2309829 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))))

(declare-fun d!1856098 () Bool)

(assert (=> d!1856098 e!3623479))

(declare-fun res!2481278 () Bool)

(assert (=> d!1856098 (=> (not res!2481278) (not e!3623479))))

(assert (=> d!1856098 (= res!2481278 (= (content!11798 lt!2309829) ((_ map or) (content!11798 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))) (content!11798 (t!377597 s!2326)))))))

(assert (=> d!1856098 (= lt!2309829 e!3623480)))

(declare-fun c!1051857 () Bool)

(assert (=> d!1856098 (= c!1051857 ((_ is Nil!64084) (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(assert (=> d!1856098 (= (++!14066 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (t!377597 s!2326)) lt!2309829)))

(declare-fun b!5918145 () Bool)

(assert (=> b!5918145 (= e!3623480 (t!377597 s!2326))))

(assert (= (and d!1856098 c!1051857) b!5918145))

(assert (= (and d!1856098 (not c!1051857)) b!5918146))

(assert (= (and d!1856098 res!2481278) b!5918147))

(assert (= (and b!5918147 res!2481277) b!5918148))

(declare-fun m!6815346 () Bool)

(assert (=> b!5918147 m!6815346))

(assert (=> b!5918147 m!6815268))

(assert (=> b!5918147 m!6814710))

(declare-fun m!6815348 () Bool)

(assert (=> b!5918146 m!6815348))

(declare-fun m!6815350 () Bool)

(assert (=> d!1856098 m!6815350))

(declare-fun m!6815352 () Bool)

(assert (=> d!1856098 m!6815352))

(assert (=> d!1856098 m!6814718))

(assert (=> b!5917271 d!1856098))

(assert (=> d!1855790 d!1855786))

(assert (=> d!1855790 d!1855788))

(declare-fun d!1856100 () Bool)

(assert (=> d!1856100 (= (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (t!377597 s!2326)) s!2326)))

(assert (=> d!1856100 true))

(declare-fun _$68!991 () Unit!157209)

(assert (=> d!1856100 (= (choose!44643 Nil!64084 (h!70532 s!2326) (t!377597 s!2326) s!2326) _$68!991)))

(declare-fun bs!1401020 () Bool)

(assert (= bs!1401020 d!1856100))

(assert (=> bs!1401020 m!6814346))

(assert (=> bs!1401020 m!6814346))

(assert (=> bs!1401020 m!6814348))

(assert (=> d!1855790 d!1856100))

(declare-fun b!5918151 () Bool)

(declare-fun res!2481279 () Bool)

(declare-fun e!3623481 () Bool)

(assert (=> b!5918151 (=> (not res!2481279) (not e!3623481))))

(declare-fun lt!2309830 () List!64208)

(assert (=> b!5918151 (= res!2481279 (= (size!40136 lt!2309830) (+ (size!40136 Nil!64084) (size!40136 (Cons!64084 (h!70532 s!2326) (t!377597 s!2326))))))))

(declare-fun b!5918150 () Bool)

(declare-fun e!3623482 () List!64208)

(assert (=> b!5918150 (= e!3623482 (Cons!64084 (h!70532 Nil!64084) (++!14066 (t!377597 Nil!64084) (Cons!64084 (h!70532 s!2326) (t!377597 s!2326)))))))

(declare-fun b!5918152 () Bool)

(assert (=> b!5918152 (= e!3623481 (or (not (= (Cons!64084 (h!70532 s!2326) (t!377597 s!2326)) Nil!64084)) (= lt!2309830 Nil!64084)))))

(declare-fun d!1856102 () Bool)

(assert (=> d!1856102 e!3623481))

(declare-fun res!2481280 () Bool)

(assert (=> d!1856102 (=> (not res!2481280) (not e!3623481))))

(assert (=> d!1856102 (= res!2481280 (= (content!11798 lt!2309830) ((_ map or) (content!11798 Nil!64084) (content!11798 (Cons!64084 (h!70532 s!2326) (t!377597 s!2326))))))))

(assert (=> d!1856102 (= lt!2309830 e!3623482)))

(declare-fun c!1051858 () Bool)

(assert (=> d!1856102 (= c!1051858 ((_ is Nil!64084) Nil!64084))))

(assert (=> d!1856102 (= (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) (t!377597 s!2326))) lt!2309830)))

(declare-fun b!5918149 () Bool)

(assert (=> b!5918149 (= e!3623482 (Cons!64084 (h!70532 s!2326) (t!377597 s!2326)))))

(assert (= (and d!1856102 c!1051858) b!5918149))

(assert (= (and d!1856102 (not c!1051858)) b!5918150))

(assert (= (and d!1856102 res!2481280) b!5918151))

(assert (= (and b!5918151 res!2481279) b!5918152))

(declare-fun m!6815354 () Bool)

(assert (=> b!5918151 m!6815354))

(assert (=> b!5918151 m!6814722))

(declare-fun m!6815356 () Bool)

(assert (=> b!5918151 m!6815356))

(declare-fun m!6815358 () Bool)

(assert (=> b!5918150 m!6815358))

(declare-fun m!6815360 () Bool)

(assert (=> d!1856102 m!6815360))

(assert (=> d!1856102 m!6814730))

(declare-fun m!6815362 () Bool)

(assert (=> d!1856102 m!6815362))

(assert (=> d!1855790 d!1856102))

(assert (=> b!5917152 d!1855696))

(declare-fun d!1856104 () Bool)

(assert (=> d!1856104 (= (nullable!5964 (reg!16298 lt!2309701)) (nullableFct!1935 (reg!16298 lt!2309701)))))

(declare-fun bs!1401021 () Bool)

(assert (= bs!1401021 d!1856104))

(declare-fun m!6815364 () Bool)

(assert (=> bs!1401021 m!6815364))

(assert (=> b!5917023 d!1856104))

(declare-fun d!1856106 () Bool)

(declare-fun e!3623489 () Bool)

(assert (=> d!1856106 e!3623489))

(declare-fun c!1051859 () Bool)

(assert (=> d!1856106 (= c!1051859 ((_ is EmptyExpr!15969) (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750))))))))

(declare-fun lt!2309831 () Bool)

(declare-fun e!3623488 () Bool)

(assert (=> d!1856106 (= lt!2309831 e!3623488)))

(declare-fun c!1051860 () Bool)

(assert (=> d!1856106 (= c!1051860 (isEmpty!35940 (tail!11564 (_2!36251 (get!22066 lt!2309750)))))))

(assert (=> d!1856106 (validRegex!7705 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750)))))))

(assert (=> d!1856106 (= (matchR!8152 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750)))) (tail!11564 (_2!36251 (get!22066 lt!2309750)))) lt!2309831)))

(declare-fun b!5918153 () Bool)

(assert (=> b!5918153 (= e!3623488 (nullable!5964 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750))))))))

(declare-fun b!5918154 () Bool)

(declare-fun call!469152 () Bool)

(assert (=> b!5918154 (= e!3623489 (= lt!2309831 call!469152))))

(declare-fun b!5918155 () Bool)

(assert (=> b!5918155 (= e!3623488 (matchR!8152 (derivativeStep!4700 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750)))) (head!12479 (tail!11564 (_2!36251 (get!22066 lt!2309750))))) (tail!11564 (tail!11564 (_2!36251 (get!22066 lt!2309750))))))))

(declare-fun b!5918156 () Bool)

(declare-fun res!2481283 () Bool)

(declare-fun e!3623487 () Bool)

(assert (=> b!5918156 (=> (not res!2481283) (not e!3623487))))

(assert (=> b!5918156 (= res!2481283 (not call!469152))))

(declare-fun b!5918157 () Bool)

(declare-fun e!3623485 () Bool)

(declare-fun e!3623484 () Bool)

(assert (=> b!5918157 (= e!3623485 e!3623484)))

(declare-fun res!2481285 () Bool)

(assert (=> b!5918157 (=> res!2481285 e!3623484)))

(assert (=> b!5918157 (= res!2481285 call!469152)))

(declare-fun b!5918158 () Bool)

(declare-fun e!3623483 () Bool)

(assert (=> b!5918158 (= e!3623483 (not lt!2309831))))

(declare-fun b!5918159 () Bool)

(assert (=> b!5918159 (= e!3623487 (= (head!12479 (tail!11564 (_2!36251 (get!22066 lt!2309750)))) (c!1051439 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750)))))))))

(declare-fun b!5918160 () Bool)

(declare-fun e!3623486 () Bool)

(assert (=> b!5918160 (= e!3623486 e!3623485)))

(declare-fun res!2481286 () Bool)

(assert (=> b!5918160 (=> (not res!2481286) (not e!3623485))))

(assert (=> b!5918160 (= res!2481286 (not lt!2309831))))

(declare-fun b!5918161 () Bool)

(assert (=> b!5918161 (= e!3623484 (not (= (head!12479 (tail!11564 (_2!36251 (get!22066 lt!2309750)))) (c!1051439 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750))))))))))

(declare-fun b!5918162 () Bool)

(declare-fun res!2481284 () Bool)

(assert (=> b!5918162 (=> res!2481284 e!3623486)))

(assert (=> b!5918162 (= res!2481284 e!3623487)))

(declare-fun res!2481288 () Bool)

(assert (=> b!5918162 (=> (not res!2481288) (not e!3623487))))

(assert (=> b!5918162 (= res!2481288 lt!2309831)))

(declare-fun b!5918163 () Bool)

(declare-fun res!2481281 () Bool)

(assert (=> b!5918163 (=> res!2481281 e!3623486)))

(assert (=> b!5918163 (= res!2481281 (not ((_ is ElementMatch!15969) (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750)))))))))

(assert (=> b!5918163 (= e!3623483 e!3623486)))

(declare-fun b!5918164 () Bool)

(assert (=> b!5918164 (= e!3623489 e!3623483)))

(declare-fun c!1051861 () Bool)

(assert (=> b!5918164 (= c!1051861 ((_ is EmptyLang!15969) (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750))))))))

(declare-fun bm!469147 () Bool)

(assert (=> bm!469147 (= call!469152 (isEmpty!35940 (tail!11564 (_2!36251 (get!22066 lt!2309750)))))))

(declare-fun b!5918165 () Bool)

(declare-fun res!2481282 () Bool)

(assert (=> b!5918165 (=> res!2481282 e!3623484)))

(assert (=> b!5918165 (= res!2481282 (not (isEmpty!35940 (tail!11564 (tail!11564 (_2!36251 (get!22066 lt!2309750)))))))))

(declare-fun b!5918166 () Bool)

(declare-fun res!2481287 () Bool)

(assert (=> b!5918166 (=> (not res!2481287) (not e!3623487))))

(assert (=> b!5918166 (= res!2481287 (isEmpty!35940 (tail!11564 (tail!11564 (_2!36251 (get!22066 lt!2309750))))))))

(assert (= (and d!1856106 c!1051860) b!5918153))

(assert (= (and d!1856106 (not c!1051860)) b!5918155))

(assert (= (and d!1856106 c!1051859) b!5918154))

(assert (= (and d!1856106 (not c!1051859)) b!5918164))

(assert (= (and b!5918164 c!1051861) b!5918158))

(assert (= (and b!5918164 (not c!1051861)) b!5918163))

(assert (= (and b!5918163 (not res!2481281)) b!5918162))

(assert (= (and b!5918162 res!2481288) b!5918156))

(assert (= (and b!5918156 res!2481283) b!5918166))

(assert (= (and b!5918166 res!2481287) b!5918159))

(assert (= (and b!5918162 (not res!2481284)) b!5918160))

(assert (= (and b!5918160 res!2481286) b!5918157))

(assert (= (and b!5918157 (not res!2481285)) b!5918165))

(assert (= (and b!5918165 (not res!2481282)) b!5918161))

(assert (= (or b!5918154 b!5918156 b!5918157) bm!469147))

(assert (=> b!5918153 m!6814572))

(declare-fun m!6815366 () Bool)

(assert (=> b!5918153 m!6815366))

(assert (=> b!5918165 m!6814566))

(declare-fun m!6815368 () Bool)

(assert (=> b!5918165 m!6815368))

(assert (=> b!5918165 m!6815368))

(declare-fun m!6815370 () Bool)

(assert (=> b!5918165 m!6815370))

(assert (=> b!5918166 m!6814566))

(assert (=> b!5918166 m!6815368))

(assert (=> b!5918166 m!6815368))

(assert (=> b!5918166 m!6815370))

(assert (=> b!5918155 m!6814566))

(declare-fun m!6815372 () Bool)

(assert (=> b!5918155 m!6815372))

(assert (=> b!5918155 m!6814572))

(assert (=> b!5918155 m!6815372))

(declare-fun m!6815374 () Bool)

(assert (=> b!5918155 m!6815374))

(assert (=> b!5918155 m!6814566))

(assert (=> b!5918155 m!6815368))

(assert (=> b!5918155 m!6815374))

(assert (=> b!5918155 m!6815368))

(declare-fun m!6815376 () Bool)

(assert (=> b!5918155 m!6815376))

(assert (=> d!1856106 m!6814566))

(assert (=> d!1856106 m!6814568))

(assert (=> d!1856106 m!6814572))

(declare-fun m!6815378 () Bool)

(assert (=> d!1856106 m!6815378))

(assert (=> b!5918161 m!6814566))

(assert (=> b!5918161 m!6815372))

(assert (=> b!5918159 m!6814566))

(assert (=> b!5918159 m!6815372))

(assert (=> bm!469147 m!6814566))

(assert (=> bm!469147 m!6814568))

(assert (=> b!5917173 d!1856106))

(declare-fun b!5918167 () Bool)

(declare-fun e!3623493 () Regex!15969)

(declare-fun call!469156 () Regex!15969)

(assert (=> b!5918167 (= e!3623493 (Concat!24814 call!469156 (regTwo!32450 r!7292)))))

(declare-fun b!5918168 () Bool)

(declare-fun e!3623494 () Regex!15969)

(declare-fun call!469153 () Regex!15969)

(declare-fun call!469154 () Regex!15969)

(assert (=> b!5918168 (= e!3623494 (Union!15969 call!469153 call!469154))))

(declare-fun b!5918169 () Bool)

(declare-fun c!1051864 () Bool)

(assert (=> b!5918169 (= c!1051864 ((_ is Union!15969) (regTwo!32450 r!7292)))))

(declare-fun e!3623490 () Regex!15969)

(assert (=> b!5918169 (= e!3623490 e!3623494)))

(declare-fun b!5918170 () Bool)

(declare-fun e!3623491 () Regex!15969)

(declare-fun call!469155 () Regex!15969)

(assert (=> b!5918170 (= e!3623491 (Union!15969 (Concat!24814 call!469155 (regTwo!32450 (regTwo!32450 r!7292))) EmptyLang!15969))))

(declare-fun bm!469148 () Bool)

(declare-fun c!1051863 () Bool)

(assert (=> bm!469148 (= call!469154 (derivativeStep!4700 (ite c!1051864 (regTwo!32451 (regTwo!32450 r!7292)) (ite c!1051863 (reg!16298 (regTwo!32450 r!7292)) (regOne!32450 (regTwo!32450 r!7292)))) (head!12479 (_2!36251 (get!22066 lt!2309750)))))))

(declare-fun bm!469149 () Bool)

(assert (=> bm!469149 (= call!469156 call!469154)))

(declare-fun b!5918171 () Bool)

(assert (=> b!5918171 (= e!3623490 (ite (= (head!12479 (_2!36251 (get!22066 lt!2309750))) (c!1051439 (regTwo!32450 r!7292))) EmptyExpr!15969 EmptyLang!15969))))

(declare-fun b!5918172 () Bool)

(assert (=> b!5918172 (= e!3623494 e!3623493)))

(assert (=> b!5918172 (= c!1051863 ((_ is Star!15969) (regTwo!32450 r!7292)))))

(declare-fun bm!469150 () Bool)

(assert (=> bm!469150 (= call!469155 call!469153)))

(declare-fun bm!469151 () Bool)

(declare-fun c!1051862 () Bool)

(assert (=> bm!469151 (= call!469153 (derivativeStep!4700 (ite c!1051864 (regOne!32451 (regTwo!32450 r!7292)) (ite c!1051862 (regTwo!32450 (regTwo!32450 r!7292)) (regOne!32450 (regTwo!32450 r!7292)))) (head!12479 (_2!36251 (get!22066 lt!2309750)))))))

(declare-fun b!5918173 () Bool)

(assert (=> b!5918173 (= e!3623491 (Union!15969 (Concat!24814 call!469156 (regTwo!32450 (regTwo!32450 r!7292))) call!469155))))

(declare-fun b!5918174 () Bool)

(assert (=> b!5918174 (= c!1051862 (nullable!5964 (regOne!32450 (regTwo!32450 r!7292))))))

(assert (=> b!5918174 (= e!3623493 e!3623491)))

(declare-fun b!5918175 () Bool)

(declare-fun e!3623492 () Regex!15969)

(assert (=> b!5918175 (= e!3623492 e!3623490)))

(declare-fun c!1051865 () Bool)

(assert (=> b!5918175 (= c!1051865 ((_ is ElementMatch!15969) (regTwo!32450 r!7292)))))

(declare-fun d!1856108 () Bool)

(declare-fun lt!2309832 () Regex!15969)

(assert (=> d!1856108 (validRegex!7705 lt!2309832)))

(assert (=> d!1856108 (= lt!2309832 e!3623492)))

(declare-fun c!1051866 () Bool)

(assert (=> d!1856108 (= c!1051866 (or ((_ is EmptyExpr!15969) (regTwo!32450 r!7292)) ((_ is EmptyLang!15969) (regTwo!32450 r!7292))))))

(assert (=> d!1856108 (validRegex!7705 (regTwo!32450 r!7292))))

(assert (=> d!1856108 (= (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 (_2!36251 (get!22066 lt!2309750)))) lt!2309832)))

(declare-fun b!5918176 () Bool)

(assert (=> b!5918176 (= e!3623492 EmptyLang!15969)))

(assert (= (and d!1856108 c!1051866) b!5918176))

(assert (= (and d!1856108 (not c!1051866)) b!5918175))

(assert (= (and b!5918175 c!1051865) b!5918171))

(assert (= (and b!5918175 (not c!1051865)) b!5918169))

(assert (= (and b!5918169 c!1051864) b!5918168))

(assert (= (and b!5918169 (not c!1051864)) b!5918172))

(assert (= (and b!5918172 c!1051863) b!5918167))

(assert (= (and b!5918172 (not c!1051863)) b!5918174))

(assert (= (and b!5918174 c!1051862) b!5918173))

(assert (= (and b!5918174 (not c!1051862)) b!5918170))

(assert (= (or b!5918173 b!5918170) bm!469150))

(assert (= (or b!5918167 b!5918173) bm!469149))

(assert (= (or b!5918168 bm!469149) bm!469148))

(assert (= (or b!5918168 bm!469150) bm!469151))

(assert (=> bm!469148 m!6814570))

(declare-fun m!6815380 () Bool)

(assert (=> bm!469148 m!6815380))

(assert (=> bm!469151 m!6814570))

(declare-fun m!6815382 () Bool)

(assert (=> bm!469151 m!6815382))

(declare-fun m!6815384 () Bool)

(assert (=> b!5918174 m!6815384))

(declare-fun m!6815386 () Bool)

(assert (=> d!1856108 m!6815386))

(assert (=> d!1856108 m!6814578))

(assert (=> b!5917173 d!1856108))

(assert (=> b!5917173 d!1856070))

(declare-fun d!1856110 () Bool)

(assert (=> d!1856110 (= (tail!11564 (_2!36251 (get!22066 lt!2309750))) (t!377597 (_2!36251 (get!22066 lt!2309750))))))

(assert (=> b!5917173 d!1856110))

(declare-fun b!5918177 () Bool)

(declare-fun e!3623500 () Bool)

(declare-fun e!3623495 () Bool)

(assert (=> b!5918177 (= e!3623500 e!3623495)))

(declare-fun c!1051868 () Bool)

(assert (=> b!5918177 (= c!1051868 ((_ is Union!15969) (h!70530 lt!2309704)))))

(declare-fun b!5918178 () Bool)

(declare-fun e!3623499 () Bool)

(declare-fun call!469158 () Bool)

(assert (=> b!5918178 (= e!3623499 call!469158)))

(declare-fun d!1856112 () Bool)

(declare-fun res!2481291 () Bool)

(declare-fun e!3623501 () Bool)

(assert (=> d!1856112 (=> res!2481291 e!3623501)))

(assert (=> d!1856112 (= res!2481291 ((_ is ElementMatch!15969) (h!70530 lt!2309704)))))

(assert (=> d!1856112 (= (validRegex!7705 (h!70530 lt!2309704)) e!3623501)))

(declare-fun b!5918179 () Bool)

(declare-fun e!3623496 () Bool)

(declare-fun call!469159 () Bool)

(assert (=> b!5918179 (= e!3623496 call!469159)))

(declare-fun b!5918180 () Bool)

(declare-fun res!2481290 () Bool)

(declare-fun e!3623497 () Bool)

(assert (=> b!5918180 (=> (not res!2481290) (not e!3623497))))

(declare-fun call!469157 () Bool)

(assert (=> b!5918180 (= res!2481290 call!469157)))

(assert (=> b!5918180 (= e!3623495 e!3623497)))

(declare-fun b!5918181 () Bool)

(declare-fun e!3623498 () Bool)

(assert (=> b!5918181 (= e!3623498 e!3623499)))

(declare-fun res!2481292 () Bool)

(assert (=> b!5918181 (=> (not res!2481292) (not e!3623499))))

(assert (=> b!5918181 (= res!2481292 call!469157)))

(declare-fun b!5918182 () Bool)

(assert (=> b!5918182 (= e!3623500 e!3623496)))

(declare-fun res!2481293 () Bool)

(assert (=> b!5918182 (= res!2481293 (not (nullable!5964 (reg!16298 (h!70530 lt!2309704)))))))

(assert (=> b!5918182 (=> (not res!2481293) (not e!3623496))))

(declare-fun bm!469152 () Bool)

(assert (=> bm!469152 (= call!469157 (validRegex!7705 (ite c!1051868 (regOne!32451 (h!70530 lt!2309704)) (regOne!32450 (h!70530 lt!2309704)))))))

(declare-fun b!5918183 () Bool)

(declare-fun res!2481289 () Bool)

(assert (=> b!5918183 (=> res!2481289 e!3623498)))

(assert (=> b!5918183 (= res!2481289 (not ((_ is Concat!24814) (h!70530 lt!2309704))))))

(assert (=> b!5918183 (= e!3623495 e!3623498)))

(declare-fun b!5918184 () Bool)

(assert (=> b!5918184 (= e!3623501 e!3623500)))

(declare-fun c!1051867 () Bool)

(assert (=> b!5918184 (= c!1051867 ((_ is Star!15969) (h!70530 lt!2309704)))))

(declare-fun b!5918185 () Bool)

(assert (=> b!5918185 (= e!3623497 call!469158)))

(declare-fun bm!469153 () Bool)

(assert (=> bm!469153 (= call!469158 call!469159)))

(declare-fun bm!469154 () Bool)

(assert (=> bm!469154 (= call!469159 (validRegex!7705 (ite c!1051867 (reg!16298 (h!70530 lt!2309704)) (ite c!1051868 (regTwo!32451 (h!70530 lt!2309704)) (regTwo!32450 (h!70530 lt!2309704))))))))

(assert (= (and d!1856112 (not res!2481291)) b!5918184))

(assert (= (and b!5918184 c!1051867) b!5918182))

(assert (= (and b!5918184 (not c!1051867)) b!5918177))

(assert (= (and b!5918182 res!2481293) b!5918179))

(assert (= (and b!5918177 c!1051868) b!5918180))

(assert (= (and b!5918177 (not c!1051868)) b!5918183))

(assert (= (and b!5918180 res!2481290) b!5918185))

(assert (= (and b!5918183 (not res!2481289)) b!5918181))

(assert (= (and b!5918181 res!2481292) b!5918178))

(assert (= (or b!5918185 b!5918178) bm!469153))

(assert (= (or b!5918180 b!5918181) bm!469152))

(assert (= (or b!5918179 bm!469153) bm!469154))

(declare-fun m!6815388 () Bool)

(assert (=> b!5918182 m!6815388))

(declare-fun m!6815390 () Bool)

(assert (=> bm!469152 m!6815390))

(declare-fun m!6815392 () Bool)

(assert (=> bm!469154 m!6815392))

(assert (=> bs!1400863 d!1856112))

(declare-fun d!1856114 () Bool)

(declare-fun c!1051871 () Bool)

(assert (=> d!1856114 (= c!1051871 ((_ is Nil!64084) lt!2309793))))

(declare-fun e!3623504 () (InoxSet C!32208))

(assert (=> d!1856114 (= (content!11798 lt!2309793) e!3623504)))

(declare-fun b!5918190 () Bool)

(assert (=> b!5918190 (= e!3623504 ((as const (Array C!32208 Bool)) false))))

(declare-fun b!5918191 () Bool)

(assert (=> b!5918191 (= e!3623504 ((_ map or) (store ((as const (Array C!32208 Bool)) false) (h!70532 lt!2309793) true) (content!11798 (t!377597 lt!2309793))))))

(assert (= (and d!1856114 c!1051871) b!5918190))

(assert (= (and d!1856114 (not c!1051871)) b!5918191))

(declare-fun m!6815394 () Bool)

(assert (=> b!5918191 m!6815394))

(declare-fun m!6815396 () Bool)

(assert (=> b!5918191 m!6815396))

(assert (=> d!1855762 d!1856114))

(declare-fun d!1856116 () Bool)

(declare-fun c!1051872 () Bool)

(assert (=> d!1856116 (= c!1051872 ((_ is Nil!64084) (_1!36251 (get!22066 lt!2309750))))))

(declare-fun e!3623505 () (InoxSet C!32208))

(assert (=> d!1856116 (= (content!11798 (_1!36251 (get!22066 lt!2309750))) e!3623505)))

(declare-fun b!5918192 () Bool)

(assert (=> b!5918192 (= e!3623505 ((as const (Array C!32208 Bool)) false))))

(declare-fun b!5918193 () Bool)

(assert (=> b!5918193 (= e!3623505 ((_ map or) (store ((as const (Array C!32208 Bool)) false) (h!70532 (_1!36251 (get!22066 lt!2309750))) true) (content!11798 (t!377597 (_1!36251 (get!22066 lt!2309750))))))))

(assert (= (and d!1856116 c!1051872) b!5918192))

(assert (= (and d!1856116 (not c!1051872)) b!5918193))

(declare-fun m!6815398 () Bool)

(assert (=> b!5918193 m!6815398))

(declare-fun m!6815400 () Bool)

(assert (=> b!5918193 m!6815400))

(assert (=> d!1855762 d!1856116))

(declare-fun d!1856118 () Bool)

(declare-fun c!1051873 () Bool)

(assert (=> d!1856118 (= c!1051873 ((_ is Nil!64084) (_2!36251 (get!22066 lt!2309750))))))

(declare-fun e!3623506 () (InoxSet C!32208))

(assert (=> d!1856118 (= (content!11798 (_2!36251 (get!22066 lt!2309750))) e!3623506)))

(declare-fun b!5918194 () Bool)

(assert (=> b!5918194 (= e!3623506 ((as const (Array C!32208 Bool)) false))))

(declare-fun b!5918195 () Bool)

(assert (=> b!5918195 (= e!3623506 ((_ map or) (store ((as const (Array C!32208 Bool)) false) (h!70532 (_2!36251 (get!22066 lt!2309750))) true) (content!11798 (t!377597 (_2!36251 (get!22066 lt!2309750))))))))

(assert (= (and d!1856118 c!1051873) b!5918194))

(assert (= (and d!1856118 (not c!1051873)) b!5918195))

(declare-fun m!6815402 () Bool)

(assert (=> b!5918195 m!6815402))

(declare-fun m!6815404 () Bool)

(assert (=> b!5918195 m!6815404))

(assert (=> d!1855762 d!1856118))

(declare-fun d!1856120 () Bool)

(assert (=> d!1856120 (= (isEmptyExpr!1397 lt!2309794) ((_ is EmptyExpr!15969) lt!2309794))))

(assert (=> b!5917254 d!1856120))

(declare-fun d!1856122 () Bool)

(declare-fun c!1051874 () Bool)

(assert (=> d!1856122 (= c!1051874 ((_ is Nil!64084) lt!2309796))))

(declare-fun e!3623507 () (InoxSet C!32208))

(assert (=> d!1856122 (= (content!11798 lt!2309796) e!3623507)))

(declare-fun b!5918196 () Bool)

(assert (=> b!5918196 (= e!3623507 ((as const (Array C!32208 Bool)) false))))

(declare-fun b!5918197 () Bool)

(assert (=> b!5918197 (= e!3623507 ((_ map or) (store ((as const (Array C!32208 Bool)) false) (h!70532 lt!2309796) true) (content!11798 (t!377597 lt!2309796))))))

(assert (= (and d!1856122 c!1051874) b!5918196))

(assert (= (and d!1856122 (not c!1051874)) b!5918197))

(declare-fun m!6815406 () Bool)

(assert (=> b!5918197 m!6815406))

(declare-fun m!6815408 () Bool)

(assert (=> b!5918197 m!6815408))

(assert (=> d!1855788 d!1856122))

(declare-fun d!1856124 () Bool)

(assert (=> d!1856124 (= (content!11798 Nil!64084) ((as const (Array C!32208 Bool)) false))))

(assert (=> d!1855788 d!1856124))

(declare-fun d!1856126 () Bool)

(declare-fun c!1051875 () Bool)

(assert (=> d!1856126 (= c!1051875 ((_ is Nil!64084) (Cons!64084 (h!70532 s!2326) Nil!64084)))))

(declare-fun e!3623508 () (InoxSet C!32208))

(assert (=> d!1856126 (= (content!11798 (Cons!64084 (h!70532 s!2326) Nil!64084)) e!3623508)))

(declare-fun b!5918198 () Bool)

(assert (=> b!5918198 (= e!3623508 ((as const (Array C!32208 Bool)) false))))

(declare-fun b!5918199 () Bool)

(assert (=> b!5918199 (= e!3623508 ((_ map or) (store ((as const (Array C!32208 Bool)) false) (h!70532 (Cons!64084 (h!70532 s!2326) Nil!64084)) true) (content!11798 (t!377597 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(assert (= (and d!1856126 c!1051875) b!5918198))

(assert (= (and d!1856126 (not c!1051875)) b!5918199))

(declare-fun m!6815410 () Bool)

(assert (=> b!5918199 m!6815410))

(declare-fun m!6815412 () Bool)

(assert (=> b!5918199 m!6815412))

(assert (=> d!1855788 d!1856126))

(declare-fun d!1856128 () Bool)

(declare-fun res!2481294 () Bool)

(declare-fun e!3623509 () Bool)

(assert (=> d!1856128 (=> res!2481294 e!3623509)))

(assert (=> d!1856128 (= res!2481294 ((_ is Nil!64082) lt!2309773))))

(assert (=> d!1856128 (= (forall!15051 lt!2309773 lambda!322865) e!3623509)))

(declare-fun b!5918200 () Bool)

(declare-fun e!3623510 () Bool)

(assert (=> b!5918200 (= e!3623509 e!3623510)))

(declare-fun res!2481295 () Bool)

(assert (=> b!5918200 (=> (not res!2481295) (not e!3623510))))

(assert (=> b!5918200 (= res!2481295 (dynLambda!25053 lambda!322865 (h!70530 lt!2309773)))))

(declare-fun b!5918201 () Bool)

(assert (=> b!5918201 (= e!3623510 (forall!15051 (t!377595 lt!2309773) lambda!322865))))

(assert (= (and d!1856128 (not res!2481294)) b!5918200))

(assert (= (and b!5918200 res!2481295) b!5918201))

(declare-fun b_lambda!222309 () Bool)

(assert (=> (not b_lambda!222309) (not b!5918200)))

(declare-fun m!6815414 () Bool)

(assert (=> b!5918200 m!6815414))

(declare-fun m!6815416 () Bool)

(assert (=> b!5918201 m!6815416))

(assert (=> d!1855694 d!1856128))

(declare-fun d!1856130 () Bool)

(declare-fun lt!2309833 () Int)

(assert (=> d!1856130 (>= lt!2309833 0)))

(declare-fun e!3623511 () Int)

(assert (=> d!1856130 (= lt!2309833 e!3623511)))

(declare-fun c!1051876 () Bool)

(assert (=> d!1856130 (= c!1051876 ((_ is Nil!64084) lt!2309793))))

(assert (=> d!1856130 (= (size!40136 lt!2309793) lt!2309833)))

(declare-fun b!5918202 () Bool)

(assert (=> b!5918202 (= e!3623511 0)))

(declare-fun b!5918203 () Bool)

(assert (=> b!5918203 (= e!3623511 (+ 1 (size!40136 (t!377597 lt!2309793))))))

(assert (= (and d!1856130 c!1051876) b!5918202))

(assert (= (and d!1856130 (not c!1051876)) b!5918203))

(declare-fun m!6815418 () Bool)

(assert (=> b!5918203 m!6815418))

(assert (=> b!5917229 d!1856130))

(declare-fun d!1856132 () Bool)

(declare-fun lt!2309834 () Int)

(assert (=> d!1856132 (>= lt!2309834 0)))

(declare-fun e!3623512 () Int)

(assert (=> d!1856132 (= lt!2309834 e!3623512)))

(declare-fun c!1051877 () Bool)

(assert (=> d!1856132 (= c!1051877 ((_ is Nil!64084) (_1!36251 (get!22066 lt!2309750))))))

(assert (=> d!1856132 (= (size!40136 (_1!36251 (get!22066 lt!2309750))) lt!2309834)))

(declare-fun b!5918204 () Bool)

(assert (=> b!5918204 (= e!3623512 0)))

(declare-fun b!5918205 () Bool)

(assert (=> b!5918205 (= e!3623512 (+ 1 (size!40136 (t!377597 (_1!36251 (get!22066 lt!2309750))))))))

(assert (= (and d!1856132 c!1051877) b!5918204))

(assert (= (and d!1856132 (not c!1051877)) b!5918205))

(declare-fun m!6815420 () Bool)

(assert (=> b!5918205 m!6815420))

(assert (=> b!5917229 d!1856132))

(declare-fun d!1856134 () Bool)

(declare-fun lt!2309835 () Int)

(assert (=> d!1856134 (>= lt!2309835 0)))

(declare-fun e!3623513 () Int)

(assert (=> d!1856134 (= lt!2309835 e!3623513)))

(declare-fun c!1051878 () Bool)

(assert (=> d!1856134 (= c!1051878 ((_ is Nil!64084) (_2!36251 (get!22066 lt!2309750))))))

(assert (=> d!1856134 (= (size!40136 (_2!36251 (get!22066 lt!2309750))) lt!2309835)))

(declare-fun b!5918206 () Bool)

(assert (=> b!5918206 (= e!3623513 0)))

(declare-fun b!5918207 () Bool)

(assert (=> b!5918207 (= e!3623513 (+ 1 (size!40136 (t!377597 (_2!36251 (get!22066 lt!2309750))))))))

(assert (= (and d!1856134 c!1051878) b!5918206))

(assert (= (and d!1856134 (not c!1051878)) b!5918207))

(declare-fun m!6815422 () Bool)

(assert (=> b!5918207 m!6815422))

(assert (=> b!5917229 d!1856134))

(declare-fun d!1856136 () Bool)

(assert (=> d!1856136 (= (nullable!5964 (reg!16298 lt!2309728)) (nullableFct!1935 (reg!16298 lt!2309728)))))

(declare-fun bs!1401022 () Bool)

(assert (= bs!1401022 d!1856136))

(declare-fun m!6815424 () Bool)

(assert (=> bs!1401022 m!6815424))

(assert (=> b!5917401 d!1856136))

(assert (=> bm!468967 d!1856084))

(declare-fun b!5918208 () Bool)

(declare-fun e!3623519 () Bool)

(declare-fun e!3623514 () Bool)

(assert (=> b!5918208 (= e!3623519 e!3623514)))

(declare-fun c!1051880 () Bool)

(assert (=> b!5918208 (= c!1051880 ((_ is Union!15969) (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))))

(declare-fun b!5918209 () Bool)

(declare-fun e!3623518 () Bool)

(declare-fun call!469161 () Bool)

(assert (=> b!5918209 (= e!3623518 call!469161)))

(declare-fun d!1856138 () Bool)

(declare-fun res!2481298 () Bool)

(declare-fun e!3623520 () Bool)

(assert (=> d!1856138 (=> res!2481298 e!3623520)))

(assert (=> d!1856138 (= res!2481298 ((_ is ElementMatch!15969) (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))))

(assert (=> d!1856138 (= (validRegex!7705 (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))) e!3623520)))

(declare-fun b!5918210 () Bool)

(declare-fun e!3623515 () Bool)

(declare-fun call!469162 () Bool)

(assert (=> b!5918210 (= e!3623515 call!469162)))

(declare-fun b!5918211 () Bool)

(declare-fun res!2481297 () Bool)

(declare-fun e!3623516 () Bool)

(assert (=> b!5918211 (=> (not res!2481297) (not e!3623516))))

(declare-fun call!469160 () Bool)

(assert (=> b!5918211 (= res!2481297 call!469160)))

(assert (=> b!5918211 (= e!3623514 e!3623516)))

(declare-fun b!5918212 () Bool)

(declare-fun e!3623517 () Bool)

(assert (=> b!5918212 (= e!3623517 e!3623518)))

(declare-fun res!2481299 () Bool)

(assert (=> b!5918212 (=> (not res!2481299) (not e!3623518))))

(assert (=> b!5918212 (= res!2481299 call!469160)))

(declare-fun b!5918213 () Bool)

(assert (=> b!5918213 (= e!3623519 e!3623515)))

(declare-fun res!2481300 () Bool)

(assert (=> b!5918213 (= res!2481300 (not (nullable!5964 (reg!16298 (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))))))

(assert (=> b!5918213 (=> (not res!2481300) (not e!3623515))))

(declare-fun bm!469155 () Bool)

(assert (=> bm!469155 (= call!469160 (validRegex!7705 (ite c!1051880 (regOne!32451 (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))) (regOne!32450 (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))))))

(declare-fun b!5918214 () Bool)

(declare-fun res!2481296 () Bool)

(assert (=> b!5918214 (=> res!2481296 e!3623517)))

(assert (=> b!5918214 (= res!2481296 (not ((_ is Concat!24814) (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))))

(assert (=> b!5918214 (= e!3623514 e!3623517)))

(declare-fun b!5918215 () Bool)

(assert (=> b!5918215 (= e!3623520 e!3623519)))

(declare-fun c!1051879 () Bool)

(assert (=> b!5918215 (= c!1051879 ((_ is Star!15969) (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))))

(declare-fun b!5918216 () Bool)

(assert (=> b!5918216 (= e!3623516 call!469161)))

(declare-fun bm!469156 () Bool)

(assert (=> bm!469156 (= call!469161 call!469162)))

(declare-fun bm!469157 () Bool)

(assert (=> bm!469157 (= call!469162 (validRegex!7705 (ite c!1051879 (reg!16298 (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))) (ite c!1051880 (regTwo!32451 (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))) (regTwo!32450 (ite c!1051731 (reg!16298 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051732 (regTwo!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regTwo!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))))))

(assert (= (and d!1856138 (not res!2481298)) b!5918215))

(assert (= (and b!5918215 c!1051879) b!5918213))

(assert (= (and b!5918215 (not c!1051879)) b!5918208))

(assert (= (and b!5918213 res!2481300) b!5918210))

(assert (= (and b!5918208 c!1051880) b!5918211))

(assert (= (and b!5918208 (not c!1051880)) b!5918214))

(assert (= (and b!5918211 res!2481297) b!5918216))

(assert (= (and b!5918214 (not res!2481296)) b!5918212))

(assert (= (and b!5918212 res!2481299) b!5918209))

(assert (= (or b!5918216 b!5918209) bm!469156))

(assert (= (or b!5918211 b!5918212) bm!469155))

(assert (= (or b!5918210 bm!469156) bm!469157))

(declare-fun m!6815426 () Bool)

(assert (=> b!5918213 m!6815426))

(declare-fun m!6815428 () Bool)

(assert (=> bm!469155 m!6815428))

(declare-fun m!6815430 () Bool)

(assert (=> bm!469157 m!6815430))

(assert (=> bm!469042 d!1856138))

(declare-fun d!1856140 () Bool)

(assert (=> d!1856140 true))

(assert (=> d!1856140 true))

(declare-fun res!2481301 () Bool)

(assert (=> d!1856140 (= (choose!44639 (ite c!1051526 lambda!322826 lambda!322827)) res!2481301)))

(assert (=> d!1855726 d!1856140))

(declare-fun b!5918217 () Bool)

(declare-fun e!3623526 () (InoxSet Context!10706))

(declare-fun call!469167 () (InoxSet Context!10706))

(declare-fun call!469168 () (InoxSet Context!10706))

(assert (=> b!5918217 (= e!3623526 ((_ map or) call!469167 call!469168))))

(declare-fun bm!469158 () Bool)

(declare-fun call!469165 () (InoxSet Context!10706))

(assert (=> bm!469158 (= call!469165 call!469167)))

(declare-fun bm!469159 () Bool)

(declare-fun call!469163 () List!64206)

(declare-fun call!469164 () List!64206)

(assert (=> bm!469159 (= call!469163 call!469164)))

(declare-fun b!5918218 () Bool)

(declare-fun e!3623525 () (InoxSet Context!10706))

(declare-fun call!469166 () (InoxSet Context!10706))

(assert (=> b!5918218 (= e!3623525 call!469166)))

(declare-fun c!1051883 () Bool)

(declare-fun bm!469160 () Bool)

(declare-fun c!1051881 () Bool)

(assert (=> bm!469160 (= call!469164 ($colon$colon!1856 (exprs!5853 (ite (or c!1051746 c!1051745) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469053))) (ite (or c!1051883 c!1051881) (regTwo!32450 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))))

(declare-fun b!5918219 () Bool)

(assert (=> b!5918219 (= e!3623525 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5918220 () Bool)

(declare-fun e!3623522 () (InoxSet Context!10706))

(assert (=> b!5918220 (= e!3623522 ((_ map or) call!469168 call!469165))))

(declare-fun b!5918221 () Bool)

(declare-fun c!1051882 () Bool)

(assert (=> b!5918221 (= c!1051882 ((_ is Star!15969) (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))))

(declare-fun e!3623523 () (InoxSet Context!10706))

(assert (=> b!5918221 (= e!3623523 e!3623525)))

(declare-fun c!1051885 () Bool)

(declare-fun d!1856142 () Bool)

(assert (=> d!1856142 (= c!1051885 (and ((_ is ElementMatch!15969) (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (= (c!1051439 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (h!70532 s!2326))))))

(declare-fun e!3623524 () (InoxSet Context!10706))

(assert (=> d!1856142 (= (derivationStepZipperDown!1219 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (ite (or c!1051746 c!1051745) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469053)) (h!70532 s!2326)) e!3623524)))

(declare-fun bm!469161 () Bool)

(declare-fun c!1051884 () Bool)

(assert (=> bm!469161 (= call!469168 (derivationStepZipperDown!1219 (ite c!1051884 (regTwo!32451 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (regOne!32450 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))) (ite c!1051884 (ite (or c!1051746 c!1051745) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469053)) (Context!10707 call!469164)) (h!70532 s!2326)))))

(declare-fun b!5918222 () Bool)

(assert (=> b!5918222 (= e!3623524 (store ((as const (Array Context!10706 Bool)) false) (ite (or c!1051746 c!1051745) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469053)) true))))

(declare-fun bm!469162 () Bool)

(assert (=> bm!469162 (= call!469167 (derivationStepZipperDown!1219 (ite c!1051884 (regOne!32451 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (ite c!1051883 (regTwo!32450 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (ite c!1051881 (regOne!32450 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (reg!16298 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))) (ite (or c!1051884 c!1051883) (ite (or c!1051746 c!1051745) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469053)) (Context!10707 call!469163)) (h!70532 s!2326)))))

(declare-fun b!5918223 () Bool)

(declare-fun e!3623521 () Bool)

(assert (=> b!5918223 (= c!1051883 e!3623521)))

(declare-fun res!2481302 () Bool)

(assert (=> b!5918223 (=> (not res!2481302) (not e!3623521))))

(assert (=> b!5918223 (= res!2481302 ((_ is Concat!24814) (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))))

(assert (=> b!5918223 (= e!3623526 e!3623522)))

(declare-fun b!5918224 () Bool)

(assert (=> b!5918224 (= e!3623523 call!469166)))

(declare-fun b!5918225 () Bool)

(assert (=> b!5918225 (= e!3623522 e!3623523)))

(assert (=> b!5918225 (= c!1051881 ((_ is Concat!24814) (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))))

(declare-fun b!5918226 () Bool)

(assert (=> b!5918226 (= e!3623524 e!3623526)))

(assert (=> b!5918226 (= c!1051884 ((_ is Union!15969) (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))))

(declare-fun bm!469163 () Bool)

(assert (=> bm!469163 (= call!469166 call!469165)))

(declare-fun b!5918227 () Bool)

(assert (=> b!5918227 (= e!3623521 (nullable!5964 (regOne!32450 (ite c!1051746 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051745 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (ite c!1051743 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))))

(assert (= (and d!1856142 c!1051885) b!5918222))

(assert (= (and d!1856142 (not c!1051885)) b!5918226))

(assert (= (and b!5918226 c!1051884) b!5918217))

(assert (= (and b!5918226 (not c!1051884)) b!5918223))

(assert (= (and b!5918223 res!2481302) b!5918227))

(assert (= (and b!5918223 c!1051883) b!5918220))

(assert (= (and b!5918223 (not c!1051883)) b!5918225))

(assert (= (and b!5918225 c!1051881) b!5918224))

(assert (= (and b!5918225 (not c!1051881)) b!5918221))

(assert (= (and b!5918221 c!1051882) b!5918218))

(assert (= (and b!5918221 (not c!1051882)) b!5918219))

(assert (= (or b!5918224 b!5918218) bm!469159))

(assert (= (or b!5918224 b!5918218) bm!469163))

(assert (= (or b!5918220 bm!469159) bm!469160))

(assert (= (or b!5918220 bm!469163) bm!469158))

(assert (= (or b!5918217 b!5918220) bm!469161))

(assert (= (or b!5918217 bm!469158) bm!469162))

(declare-fun m!6815432 () Bool)

(assert (=> b!5918222 m!6815432))

(declare-fun m!6815434 () Bool)

(assert (=> bm!469161 m!6815434))

(declare-fun m!6815436 () Bool)

(assert (=> bm!469162 m!6815436))

(declare-fun m!6815438 () Bool)

(assert (=> b!5918227 m!6815438))

(declare-fun m!6815440 () Bool)

(assert (=> bm!469160 m!6815440))

(assert (=> bm!469052 d!1856142))

(assert (=> bm!468958 d!1856044))

(declare-fun b!5918228 () Bool)

(declare-fun e!3623532 () (InoxSet Context!10706))

(declare-fun call!469173 () (InoxSet Context!10706))

(declare-fun call!469174 () (InoxSet Context!10706))

(assert (=> b!5918228 (= e!3623532 ((_ map or) call!469173 call!469174))))

(declare-fun bm!469164 () Bool)

(declare-fun call!469171 () (InoxSet Context!10706))

(assert (=> bm!469164 (= call!469171 call!469173)))

(declare-fun bm!469165 () Bool)

(declare-fun call!469169 () List!64206)

(declare-fun call!469170 () List!64206)

(assert (=> bm!469165 (= call!469169 call!469170)))

(declare-fun b!5918229 () Bool)

(declare-fun e!3623531 () (InoxSet Context!10706))

(declare-fun call!469172 () (InoxSet Context!10706))

(assert (=> b!5918229 (= e!3623531 call!469172)))

(declare-fun c!1051888 () Bool)

(declare-fun c!1051886 () Bool)

(declare-fun bm!469166 () Bool)

(assert (=> bm!469166 (= call!469170 ($colon$colon!1856 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (ite (or c!1051888 c!1051886) (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))))

(declare-fun b!5918230 () Bool)

(assert (=> b!5918230 (= e!3623531 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5918231 () Bool)

(declare-fun e!3623528 () (InoxSet Context!10706))

(assert (=> b!5918231 (= e!3623528 ((_ map or) call!469174 call!469171))))

(declare-fun b!5918232 () Bool)

(declare-fun c!1051887 () Bool)

(assert (=> b!5918232 (= c!1051887 ((_ is Star!15969) (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))

(declare-fun e!3623529 () (InoxSet Context!10706))

(assert (=> b!5918232 (= e!3623529 e!3623531)))

(declare-fun d!1856144 () Bool)

(declare-fun c!1051890 () Bool)

(assert (=> d!1856144 (= c!1051890 (and ((_ is ElementMatch!15969) (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (= (c!1051439 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (h!70532 s!2326))))))

(declare-fun e!3623530 () (InoxSet Context!10706))

(assert (=> d!1856144 (= (derivationStepZipperDown!1219 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (h!70532 s!2326)) e!3623530)))

(declare-fun c!1051889 () Bool)

(declare-fun bm!469167 () Bool)

(assert (=> bm!469167 (= call!469174 (derivationStepZipperDown!1219 (ite c!1051889 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))) (ite c!1051889 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (Context!10707 call!469170)) (h!70532 s!2326)))))

(declare-fun b!5918233 () Bool)

(assert (=> b!5918233 (= e!3623530 (store ((as const (Array Context!10706 Bool)) false) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) true))))

(declare-fun bm!469168 () Bool)

(assert (=> bm!469168 (= call!469173 (derivationStepZipperDown!1219 (ite c!1051889 (regOne!32451 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (ite c!1051888 (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (ite c!1051886 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (reg!16298 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))) (ite (or c!1051889 c!1051888) (Context!10707 (t!377595 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (Context!10707 call!469169)) (h!70532 s!2326)))))

(declare-fun b!5918234 () Bool)

(declare-fun e!3623527 () Bool)

(assert (=> b!5918234 (= c!1051888 e!3623527)))

(declare-fun res!2481303 () Bool)

(assert (=> b!5918234 (=> (not res!2481303) (not e!3623527))))

(assert (=> b!5918234 (= res!2481303 ((_ is Concat!24814) (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))

(assert (=> b!5918234 (= e!3623532 e!3623528)))

(declare-fun b!5918235 () Bool)

(assert (=> b!5918235 (= e!3623529 call!469172)))

(declare-fun b!5918236 () Bool)

(assert (=> b!5918236 (= e!3623528 e!3623529)))

(assert (=> b!5918236 (= c!1051886 ((_ is Concat!24814) (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))

(declare-fun b!5918237 () Bool)

(assert (=> b!5918237 (= e!3623530 e!3623532)))

(assert (=> b!5918237 (= c!1051889 ((_ is Union!15969) (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))

(declare-fun bm!469169 () Bool)

(assert (=> bm!469169 (= call!469172 call!469171)))

(declare-fun b!5918238 () Bool)

(assert (=> b!5918238 (= e!3623527 (nullable!5964 (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))))

(assert (= (and d!1856144 c!1051890) b!5918233))

(assert (= (and d!1856144 (not c!1051890)) b!5918237))

(assert (= (and b!5918237 c!1051889) b!5918228))

(assert (= (and b!5918237 (not c!1051889)) b!5918234))

(assert (= (and b!5918234 res!2481303) b!5918238))

(assert (= (and b!5918234 c!1051888) b!5918231))

(assert (= (and b!5918234 (not c!1051888)) b!5918236))

(assert (= (and b!5918236 c!1051886) b!5918235))

(assert (= (and b!5918236 (not c!1051886)) b!5918232))

(assert (= (and b!5918232 c!1051887) b!5918229))

(assert (= (and b!5918232 (not c!1051887)) b!5918230))

(assert (= (or b!5918235 b!5918229) bm!469165))

(assert (= (or b!5918235 b!5918229) bm!469169))

(assert (= (or b!5918231 bm!469165) bm!469166))

(assert (= (or b!5918231 bm!469169) bm!469164))

(assert (= (or b!5918228 b!5918231) bm!469167))

(assert (= (or b!5918228 bm!469164) bm!469168))

(declare-fun m!6815442 () Bool)

(assert (=> b!5918233 m!6815442))

(declare-fun m!6815444 () Bool)

(assert (=> bm!469167 m!6815444))

(declare-fun m!6815446 () Bool)

(assert (=> bm!469168 m!6815446))

(declare-fun m!6815448 () Bool)

(assert (=> b!5918238 m!6815448))

(declare-fun m!6815450 () Bool)

(assert (=> bm!469166 m!6815450))

(assert (=> bm!468984 d!1856144))

(declare-fun d!1856146 () Bool)

(declare-fun lt!2309838 () Bool)

(assert (=> d!1856146 (= lt!2309838 (select (content!11795 (t!377596 lt!2309724)) (h!70531 lt!2309724)))))

(declare-fun e!3623538 () Bool)

(assert (=> d!1856146 (= lt!2309838 e!3623538)))

(declare-fun res!2481309 () Bool)

(assert (=> d!1856146 (=> (not res!2481309) (not e!3623538))))

(assert (=> d!1856146 (= res!2481309 ((_ is Cons!64083) (t!377596 lt!2309724)))))

(assert (=> d!1856146 (= (contains!19954 (t!377596 lt!2309724) (h!70531 lt!2309724)) lt!2309838)))

(declare-fun b!5918243 () Bool)

(declare-fun e!3623537 () Bool)

(assert (=> b!5918243 (= e!3623538 e!3623537)))

(declare-fun res!2481308 () Bool)

(assert (=> b!5918243 (=> res!2481308 e!3623537)))

(assert (=> b!5918243 (= res!2481308 (= (h!70531 (t!377596 lt!2309724)) (h!70531 lt!2309724)))))

(declare-fun b!5918244 () Bool)

(assert (=> b!5918244 (= e!3623537 (contains!19954 (t!377596 (t!377596 lt!2309724)) (h!70531 lt!2309724)))))

(assert (= (and d!1856146 res!2481309) b!5918243))

(assert (= (and b!5918243 (not res!2481308)) b!5918244))

(assert (=> d!1856146 m!6814460))

(declare-fun m!6815452 () Bool)

(assert (=> d!1856146 m!6815452))

(declare-fun m!6815454 () Bool)

(assert (=> b!5918244 m!6815454))

(assert (=> b!5917191 d!1856146))

(declare-fun d!1856148 () Bool)

(declare-fun res!2481310 () Bool)

(declare-fun e!3623539 () Bool)

(assert (=> d!1856148 (=> res!2481310 e!3623539)))

(assert (=> d!1856148 (= res!2481310 ((_ is Nil!64082) (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> d!1856148 (= (forall!15051 (t!377595 (exprs!5853 (h!70531 zl!343))) lambda!322837) e!3623539)))

(declare-fun b!5918245 () Bool)

(declare-fun e!3623540 () Bool)

(assert (=> b!5918245 (= e!3623539 e!3623540)))

(declare-fun res!2481311 () Bool)

(assert (=> b!5918245 (=> (not res!2481311) (not e!3623540))))

(assert (=> b!5918245 (= res!2481311 (dynLambda!25053 lambda!322837 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5918246 () Bool)

(assert (=> b!5918246 (= e!3623540 (forall!15051 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))) lambda!322837))))

(assert (= (and d!1856148 (not res!2481310)) b!5918245))

(assert (= (and b!5918245 res!2481311) b!5918246))

(declare-fun b_lambda!222311 () Bool)

(assert (=> (not b_lambda!222311) (not b!5918245)))

(declare-fun m!6815456 () Bool)

(assert (=> b!5918245 m!6815456))

(declare-fun m!6815458 () Bool)

(assert (=> b!5918246 m!6815458))

(assert (=> b!5917420 d!1856148))

(assert (=> b!5917074 d!1855996))

(declare-fun d!1856150 () Bool)

(assert (=> d!1856150 (= (isEmpty!35940 (tail!11564 (_2!36251 (get!22066 lt!2309750)))) ((_ is Nil!64084) (tail!11564 (_2!36251 (get!22066 lt!2309750)))))))

(assert (=> b!5917184 d!1856150))

(assert (=> b!5917184 d!1856110))

(declare-fun d!1856152 () Bool)

(assert (=> d!1856152 (= (isEmpty!35942 lt!2309750) (not ((_ is Some!15859) lt!2309750)))))

(assert (=> d!1855666 d!1856152))

(declare-fun d!1856154 () Bool)

(assert (=> d!1856154 (= (isEmpty!35938 (tail!11562 (t!377595 (unfocusZipperList!1390 zl!343)))) ((_ is Nil!64082) (tail!11562 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(assert (=> b!5917310 d!1856154))

(declare-fun d!1856156 () Bool)

(assert (=> d!1856156 (= (tail!11562 (t!377595 (unfocusZipperList!1390 zl!343))) (t!377595 (t!377595 (unfocusZipperList!1390 zl!343))))))

(assert (=> b!5917310 d!1856156))

(assert (=> b!5917060 d!1855978))

(declare-fun d!1856158 () Bool)

(declare-fun res!2481312 () Bool)

(declare-fun e!3623541 () Bool)

(assert (=> d!1856158 (=> res!2481312 e!3623541)))

(assert (=> d!1856158 (= res!2481312 ((_ is Nil!64082) (exprs!5853 setElem!40166)))))

(assert (=> d!1856158 (= (forall!15051 (exprs!5853 setElem!40166) lambda!322880) e!3623541)))

(declare-fun b!5918247 () Bool)

(declare-fun e!3623542 () Bool)

(assert (=> b!5918247 (= e!3623541 e!3623542)))

(declare-fun res!2481313 () Bool)

(assert (=> b!5918247 (=> (not res!2481313) (not e!3623542))))

(assert (=> b!5918247 (= res!2481313 (dynLambda!25053 lambda!322880 (h!70530 (exprs!5853 setElem!40166))))))

(declare-fun b!5918248 () Bool)

(assert (=> b!5918248 (= e!3623542 (forall!15051 (t!377595 (exprs!5853 setElem!40166)) lambda!322880))))

(assert (= (and d!1856158 (not res!2481312)) b!5918247))

(assert (= (and b!5918247 res!2481313) b!5918248))

(declare-fun b_lambda!222313 () Bool)

(assert (=> (not b_lambda!222313) (not b!5918247)))

(declare-fun m!6815460 () Bool)

(assert (=> b!5918247 m!6815460))

(declare-fun m!6815462 () Bool)

(assert (=> b!5918248 m!6815462))

(assert (=> d!1855834 d!1856158))

(declare-fun d!1856160 () Bool)

(assert (=> d!1856160 (= (nullable!5964 (reg!16298 lt!2309737)) (nullableFct!1935 (reg!16298 lt!2309737)))))

(declare-fun bs!1401023 () Bool)

(assert (= bs!1401023 d!1856160))

(declare-fun m!6815464 () Bool)

(assert (=> bs!1401023 m!6815464))

(assert (=> b!5917266 d!1856160))

(declare-fun d!1856162 () Bool)

(assert (=> d!1856162 (= (head!12477 (t!377595 (exprs!5853 (h!70531 zl!343)))) (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> b!5917257 d!1856162))

(declare-fun d!1856164 () Bool)

(assert (=> d!1856164 (= (isDefined!12563 lt!2309801) (not (isEmpty!35942 lt!2309801)))))

(declare-fun bs!1401024 () Bool)

(assert (= bs!1401024 d!1856164))

(declare-fun m!6815466 () Bool)

(assert (=> bs!1401024 m!6815466))

(assert (=> d!1855796 d!1856164))

(declare-fun d!1856166 () Bool)

(declare-fun e!3623549 () Bool)

(assert (=> d!1856166 e!3623549))

(declare-fun c!1051891 () Bool)

(assert (=> d!1856166 (= c!1051891 ((_ is EmptyExpr!15969) (regOne!32450 r!7292)))))

(declare-fun lt!2309839 () Bool)

(declare-fun e!3623548 () Bool)

(assert (=> d!1856166 (= lt!2309839 e!3623548)))

(declare-fun c!1051892 () Bool)

(assert (=> d!1856166 (= c!1051892 (isEmpty!35940 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))

(assert (=> d!1856166 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1856166 (= (matchR!8152 (regOne!32450 r!7292) (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) lt!2309839)))

(declare-fun b!5918249 () Bool)

(assert (=> b!5918249 (= e!3623548 (nullable!5964 (regOne!32450 r!7292)))))

(declare-fun b!5918250 () Bool)

(declare-fun call!469175 () Bool)

(assert (=> b!5918250 (= e!3623549 (= lt!2309839 call!469175))))

(declare-fun b!5918251 () Bool)

(assert (=> b!5918251 (= e!3623548 (matchR!8152 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))) (tail!11564 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(declare-fun b!5918252 () Bool)

(declare-fun res!2481316 () Bool)

(declare-fun e!3623547 () Bool)

(assert (=> b!5918252 (=> (not res!2481316) (not e!3623547))))

(assert (=> b!5918252 (= res!2481316 (not call!469175))))

(declare-fun b!5918253 () Bool)

(declare-fun e!3623545 () Bool)

(declare-fun e!3623544 () Bool)

(assert (=> b!5918253 (= e!3623545 e!3623544)))

(declare-fun res!2481318 () Bool)

(assert (=> b!5918253 (=> res!2481318 e!3623544)))

(assert (=> b!5918253 (= res!2481318 call!469175)))

(declare-fun b!5918254 () Bool)

(declare-fun e!3623543 () Bool)

(assert (=> b!5918254 (= e!3623543 (not lt!2309839))))

(declare-fun b!5918255 () Bool)

(assert (=> b!5918255 (= e!3623547 (= (head!12479 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (c!1051439 (regOne!32450 r!7292))))))

(declare-fun b!5918256 () Bool)

(declare-fun e!3623546 () Bool)

(assert (=> b!5918256 (= e!3623546 e!3623545)))

(declare-fun res!2481319 () Bool)

(assert (=> b!5918256 (=> (not res!2481319) (not e!3623545))))

(assert (=> b!5918256 (= res!2481319 (not lt!2309839))))

(declare-fun b!5918257 () Bool)

(assert (=> b!5918257 (= e!3623544 (not (= (head!12479 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (c!1051439 (regOne!32450 r!7292)))))))

(declare-fun b!5918258 () Bool)

(declare-fun res!2481317 () Bool)

(assert (=> b!5918258 (=> res!2481317 e!3623546)))

(assert (=> b!5918258 (= res!2481317 e!3623547)))

(declare-fun res!2481321 () Bool)

(assert (=> b!5918258 (=> (not res!2481321) (not e!3623547))))

(assert (=> b!5918258 (= res!2481321 lt!2309839)))

(declare-fun b!5918259 () Bool)

(declare-fun res!2481314 () Bool)

(assert (=> b!5918259 (=> res!2481314 e!3623546)))

(assert (=> b!5918259 (= res!2481314 (not ((_ is ElementMatch!15969) (regOne!32450 r!7292))))))

(assert (=> b!5918259 (= e!3623543 e!3623546)))

(declare-fun b!5918260 () Bool)

(assert (=> b!5918260 (= e!3623549 e!3623543)))

(declare-fun c!1051893 () Bool)

(assert (=> b!5918260 (= c!1051893 ((_ is EmptyLang!15969) (regOne!32450 r!7292)))))

(declare-fun bm!469170 () Bool)

(assert (=> bm!469170 (= call!469175 (isEmpty!35940 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))

(declare-fun b!5918261 () Bool)

(declare-fun res!2481315 () Bool)

(assert (=> b!5918261 (=> res!2481315 e!3623544)))

(assert (=> b!5918261 (= res!2481315 (not (isEmpty!35940 (tail!11564 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))))

(declare-fun b!5918262 () Bool)

(declare-fun res!2481320 () Bool)

(assert (=> b!5918262 (=> (not res!2481320) (not e!3623547))))

(assert (=> b!5918262 (= res!2481320 (isEmpty!35940 (tail!11564 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(assert (= (and d!1856166 c!1051892) b!5918249))

(assert (= (and d!1856166 (not c!1051892)) b!5918251))

(assert (= (and d!1856166 c!1051891) b!5918250))

(assert (= (and d!1856166 (not c!1051891)) b!5918260))

(assert (= (and b!5918260 c!1051893) b!5918254))

(assert (= (and b!5918260 (not c!1051893)) b!5918259))

(assert (= (and b!5918259 (not res!2481314)) b!5918258))

(assert (= (and b!5918258 res!2481321) b!5918252))

(assert (= (and b!5918252 res!2481316) b!5918262))

(assert (= (and b!5918262 res!2481320) b!5918255))

(assert (= (and b!5918258 (not res!2481317)) b!5918256))

(assert (= (and b!5918256 res!2481319) b!5918253))

(assert (= (and b!5918253 (not res!2481318)) b!5918261))

(assert (= (and b!5918261 (not res!2481315)) b!5918257))

(assert (= (or b!5918250 b!5918252 b!5918253) bm!469170))

(assert (=> b!5918249 m!6814198))

(assert (=> b!5918261 m!6814346))

(declare-fun m!6815468 () Bool)

(assert (=> b!5918261 m!6815468))

(assert (=> b!5918261 m!6815468))

(declare-fun m!6815470 () Bool)

(assert (=> b!5918261 m!6815470))

(assert (=> b!5918262 m!6814346))

(assert (=> b!5918262 m!6815468))

(assert (=> b!5918262 m!6815468))

(assert (=> b!5918262 m!6815470))

(assert (=> b!5918251 m!6814346))

(declare-fun m!6815472 () Bool)

(assert (=> b!5918251 m!6815472))

(assert (=> b!5918251 m!6815472))

(declare-fun m!6815474 () Bool)

(assert (=> b!5918251 m!6815474))

(assert (=> b!5918251 m!6814346))

(assert (=> b!5918251 m!6815468))

(assert (=> b!5918251 m!6815474))

(assert (=> b!5918251 m!6815468))

(declare-fun m!6815476 () Bool)

(assert (=> b!5918251 m!6815476))

(assert (=> d!1856166 m!6814346))

(declare-fun m!6815478 () Bool)

(assert (=> d!1856166 m!6815478))

(assert (=> d!1856166 m!6814340))

(assert (=> b!5918257 m!6814346))

(assert (=> b!5918257 m!6815472))

(assert (=> b!5918255 m!6814346))

(assert (=> b!5918255 m!6815472))

(assert (=> bm!469170 m!6814346))

(assert (=> bm!469170 m!6815478))

(assert (=> d!1855796 d!1856166))

(assert (=> d!1855796 d!1855670))

(declare-fun b!5918265 () Bool)

(declare-fun res!2481322 () Bool)

(declare-fun e!3623550 () Bool)

(assert (=> b!5918265 (=> (not res!2481322) (not e!3623550))))

(declare-fun lt!2309840 () List!64208)

(assert (=> b!5918265 (= res!2481322 (= (size!40136 lt!2309840) (+ (size!40136 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084))) (size!40136 (t!377597 (t!377597 s!2326))))))))

(declare-fun b!5918264 () Bool)

(declare-fun e!3623551 () List!64208)

(assert (=> b!5918264 (= e!3623551 (Cons!64084 (h!70532 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084))) (++!14066 (t!377597 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084))) (t!377597 (t!377597 s!2326)))))))

(declare-fun b!5918266 () Bool)

(assert (=> b!5918266 (= e!3623550 (or (not (= (t!377597 (t!377597 s!2326)) Nil!64084)) (= lt!2309840 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)))))))

(declare-fun d!1856168 () Bool)

(assert (=> d!1856168 e!3623550))

(declare-fun res!2481323 () Bool)

(assert (=> d!1856168 (=> (not res!2481323) (not e!3623550))))

(assert (=> d!1856168 (= res!2481323 (= (content!11798 lt!2309840) ((_ map or) (content!11798 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084))) (content!11798 (t!377597 (t!377597 s!2326))))))))

(assert (=> d!1856168 (= lt!2309840 e!3623551)))

(declare-fun c!1051894 () Bool)

(assert (=> d!1856168 (= c!1051894 ((_ is Nil!64084) (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084))))))

(assert (=> d!1856168 (= (++!14066 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (t!377597 (t!377597 s!2326))) lt!2309840)))

(declare-fun b!5918263 () Bool)

(assert (=> b!5918263 (= e!3623551 (t!377597 (t!377597 s!2326)))))

(assert (= (and d!1856168 c!1051894) b!5918263))

(assert (= (and d!1856168 (not c!1051894)) b!5918264))

(assert (= (and d!1856168 res!2481323) b!5918265))

(assert (= (and b!5918265 res!2481322) b!5918266))

(declare-fun m!6815480 () Bool)

(assert (=> b!5918265 m!6815480))

(assert (=> b!5918265 m!6814762))

(declare-fun m!6815482 () Bool)

(assert (=> b!5918265 m!6815482))

(assert (=> b!5918265 m!6815270))

(declare-fun m!6815484 () Bool)

(assert (=> b!5918264 m!6815484))

(declare-fun m!6815486 () Bool)

(assert (=> d!1856168 m!6815486))

(assert (=> d!1856168 m!6814762))

(declare-fun m!6815488 () Bool)

(assert (=> d!1856168 m!6815488))

(declare-fun m!6815490 () Bool)

(assert (=> d!1856168 m!6815490))

(assert (=> b!5917301 d!1856168))

(declare-fun b!5918269 () Bool)

(declare-fun res!2481324 () Bool)

(declare-fun e!3623552 () Bool)

(assert (=> b!5918269 (=> (not res!2481324) (not e!3623552))))

(declare-fun lt!2309841 () List!64208)

(assert (=> b!5918269 (= res!2481324 (= (size!40136 lt!2309841) (+ (size!40136 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (size!40136 (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)))))))

(declare-fun b!5918268 () Bool)

(declare-fun e!3623553 () List!64208)

(assert (=> b!5918268 (= e!3623553 (Cons!64084 (h!70532 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (++!14066 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084))))))

(declare-fun b!5918270 () Bool)

(assert (=> b!5918270 (= e!3623552 (or (not (= (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084) Nil!64084)) (= lt!2309841 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)))))))

(declare-fun d!1856170 () Bool)

(assert (=> d!1856170 e!3623552))

(declare-fun res!2481325 () Bool)

(assert (=> d!1856170 (=> (not res!2481325) (not e!3623552))))

(assert (=> d!1856170 (= res!2481325 (= (content!11798 lt!2309841) ((_ map or) (content!11798 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) (content!11798 (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)))))))

(assert (=> d!1856170 (= lt!2309841 e!3623553)))

(declare-fun c!1051895 () Bool)

(assert (=> d!1856170 (= c!1051895 ((_ is Nil!64084) (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))

(assert (=> d!1856170 (= (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) lt!2309841)))

(declare-fun b!5918267 () Bool)

(assert (=> b!5918267 (= e!3623553 (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084))))

(assert (= (and d!1856170 c!1051895) b!5918267))

(assert (= (and d!1856170 (not c!1051895)) b!5918268))

(assert (= (and d!1856170 res!2481325) b!5918269))

(assert (= (and b!5918269 res!2481324) b!5918270))

(declare-fun m!6815492 () Bool)

(assert (=> b!5918269 m!6815492))

(assert (=> b!5918269 m!6814346))

(assert (=> b!5918269 m!6814708))

(declare-fun m!6815494 () Bool)

(assert (=> b!5918269 m!6815494))

(declare-fun m!6815496 () Bool)

(assert (=> b!5918268 m!6815496))

(declare-fun m!6815498 () Bool)

(assert (=> d!1856170 m!6815498))

(assert (=> d!1856170 m!6814346))

(assert (=> d!1856170 m!6814716))

(declare-fun m!6815500 () Bool)

(assert (=> d!1856170 m!6815500))

(assert (=> b!5917301 d!1856170))

(declare-fun d!1856172 () Bool)

(assert (=> d!1856172 (= (++!14066 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (t!377597 (t!377597 s!2326))) s!2326)))

(declare-fun lt!2309842 () Unit!157209)

(assert (=> d!1856172 (= lt!2309842 (choose!44643 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (h!70532 (t!377597 s!2326)) (t!377597 (t!377597 s!2326)) s!2326))))

(assert (=> d!1856172 (= (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) (t!377597 (t!377597 s!2326)))) s!2326)))

(assert (=> d!1856172 (= (lemmaMoveElementToOtherListKeepsConcatEq!2161 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (h!70532 (t!377597 s!2326)) (t!377597 (t!377597 s!2326)) s!2326) lt!2309842)))

(declare-fun bs!1401025 () Bool)

(assert (= bs!1401025 d!1856172))

(assert (=> bs!1401025 m!6814346))

(assert (=> bs!1401025 m!6814762))

(assert (=> bs!1401025 m!6814762))

(assert (=> bs!1401025 m!6814764))

(assert (=> bs!1401025 m!6814346))

(declare-fun m!6815502 () Bool)

(assert (=> bs!1401025 m!6815502))

(assert (=> bs!1401025 m!6814346))

(declare-fun m!6815504 () Bool)

(assert (=> bs!1401025 m!6815504))

(assert (=> b!5917301 d!1856172))

(declare-fun b!5918271 () Bool)

(declare-fun e!3623555 () Bool)

(declare-fun lt!2309843 () Option!15860)

(assert (=> b!5918271 (= e!3623555 (not (isDefined!12563 lt!2309843)))))

(declare-fun b!5918272 () Bool)

(declare-fun e!3623556 () Option!15860)

(assert (=> b!5918272 (= e!3623556 None!15859)))

(declare-fun d!1856174 () Bool)

(assert (=> d!1856174 e!3623555))

(declare-fun res!2481330 () Bool)

(assert (=> d!1856174 (=> res!2481330 e!3623555)))

(declare-fun e!3623557 () Bool)

(assert (=> d!1856174 (= res!2481330 e!3623557)))

(declare-fun res!2481327 () Bool)

(assert (=> d!1856174 (=> (not res!2481327) (not e!3623557))))

(assert (=> d!1856174 (= res!2481327 (isDefined!12563 lt!2309843))))

(declare-fun e!3623558 () Option!15860)

(assert (=> d!1856174 (= lt!2309843 e!3623558)))

(declare-fun c!1051896 () Bool)

(declare-fun e!3623554 () Bool)

(assert (=> d!1856174 (= c!1051896 e!3623554)))

(declare-fun res!2481329 () Bool)

(assert (=> d!1856174 (=> (not res!2481329) (not e!3623554))))

(assert (=> d!1856174 (= res!2481329 (matchR!8152 (regOne!32450 r!7292) (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084))))))

(assert (=> d!1856174 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1856174 (= (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (t!377597 (t!377597 s!2326)) s!2326) lt!2309843)))

(declare-fun b!5918273 () Bool)

(assert (=> b!5918273 (= e!3623558 (Some!15859 (tuple2!65897 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (t!377597 (t!377597 s!2326)))))))

(declare-fun b!5918274 () Bool)

(assert (=> b!5918274 (= e!3623558 e!3623556)))

(declare-fun c!1051897 () Bool)

(assert (=> b!5918274 (= c!1051897 ((_ is Nil!64084) (t!377597 (t!377597 s!2326))))))

(declare-fun b!5918275 () Bool)

(declare-fun res!2481328 () Bool)

(assert (=> b!5918275 (=> (not res!2481328) (not e!3623557))))

(assert (=> b!5918275 (= res!2481328 (matchR!8152 (regOne!32450 r!7292) (_1!36251 (get!22066 lt!2309843))))))

(declare-fun b!5918276 () Bool)

(declare-fun lt!2309845 () Unit!157209)

(declare-fun lt!2309844 () Unit!157209)

(assert (=> b!5918276 (= lt!2309845 lt!2309844)))

(assert (=> b!5918276 (= (++!14066 (++!14066 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (Cons!64084 (h!70532 (t!377597 (t!377597 s!2326))) Nil!64084)) (t!377597 (t!377597 (t!377597 s!2326)))) s!2326)))

(assert (=> b!5918276 (= lt!2309844 (lemmaMoveElementToOtherListKeepsConcatEq!2161 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (h!70532 (t!377597 (t!377597 s!2326))) (t!377597 (t!377597 (t!377597 s!2326))) s!2326))))

(assert (=> b!5918276 (= e!3623556 (findConcatSeparation!2274 (regOne!32450 r!7292) (regTwo!32450 r!7292) (++!14066 (++!14066 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084)) (Cons!64084 (h!70532 (t!377597 s!2326)) Nil!64084)) (Cons!64084 (h!70532 (t!377597 (t!377597 s!2326))) Nil!64084)) (t!377597 (t!377597 (t!377597 s!2326))) s!2326))))

(declare-fun b!5918277 () Bool)

(declare-fun res!2481326 () Bool)

(assert (=> b!5918277 (=> (not res!2481326) (not e!3623557))))

(assert (=> b!5918277 (= res!2481326 (matchR!8152 (regTwo!32450 r!7292) (_2!36251 (get!22066 lt!2309843))))))

(declare-fun b!5918278 () Bool)

(assert (=> b!5918278 (= e!3623554 (matchR!8152 (regTwo!32450 r!7292) (t!377597 (t!377597 s!2326))))))

(declare-fun b!5918279 () Bool)

(assert (=> b!5918279 (= e!3623557 (= (++!14066 (_1!36251 (get!22066 lt!2309843)) (_2!36251 (get!22066 lt!2309843))) s!2326))))

(assert (= (and d!1856174 res!2481329) b!5918278))

(assert (= (and d!1856174 c!1051896) b!5918273))

(assert (= (and d!1856174 (not c!1051896)) b!5918274))

(assert (= (and b!5918274 c!1051897) b!5918272))

(assert (= (and b!5918274 (not c!1051897)) b!5918276))

(assert (= (and d!1856174 res!2481327) b!5918275))

(assert (= (and b!5918275 res!2481328) b!5918277))

(assert (= (and b!5918277 res!2481326) b!5918279))

(assert (= (and d!1856174 (not res!2481330)) b!5918271))

(declare-fun m!6815506 () Bool)

(assert (=> b!5918271 m!6815506))

(assert (=> d!1856174 m!6815506))

(assert (=> d!1856174 m!6814762))

(declare-fun m!6815508 () Bool)

(assert (=> d!1856174 m!6815508))

(assert (=> d!1856174 m!6814340))

(declare-fun m!6815510 () Bool)

(assert (=> b!5918275 m!6815510))

(declare-fun m!6815512 () Bool)

(assert (=> b!5918275 m!6815512))

(assert (=> b!5918276 m!6814762))

(declare-fun m!6815514 () Bool)

(assert (=> b!5918276 m!6815514))

(assert (=> b!5918276 m!6815514))

(declare-fun m!6815516 () Bool)

(assert (=> b!5918276 m!6815516))

(assert (=> b!5918276 m!6814762))

(declare-fun m!6815518 () Bool)

(assert (=> b!5918276 m!6815518))

(assert (=> b!5918276 m!6815514))

(declare-fun m!6815520 () Bool)

(assert (=> b!5918276 m!6815520))

(assert (=> b!5918277 m!6815510))

(declare-fun m!6815522 () Bool)

(assert (=> b!5918277 m!6815522))

(assert (=> b!5918279 m!6815510))

(declare-fun m!6815524 () Bool)

(assert (=> b!5918279 m!6815524))

(declare-fun m!6815526 () Bool)

(assert (=> b!5918278 m!6815526))

(assert (=> b!5917301 d!1856174))

(declare-fun b!5918280 () Bool)

(declare-fun e!3623564 () Bool)

(declare-fun e!3623559 () Bool)

(assert (=> b!5918280 (= e!3623564 e!3623559)))

(declare-fun c!1051899 () Bool)

(assert (=> b!5918280 (= c!1051899 ((_ is Union!15969) (h!70530 (exprs!5853 setElem!40160))))))

(declare-fun b!5918281 () Bool)

(declare-fun e!3623563 () Bool)

(declare-fun call!469177 () Bool)

(assert (=> b!5918281 (= e!3623563 call!469177)))

(declare-fun d!1856176 () Bool)

(declare-fun res!2481333 () Bool)

(declare-fun e!3623565 () Bool)

(assert (=> d!1856176 (=> res!2481333 e!3623565)))

(assert (=> d!1856176 (= res!2481333 ((_ is ElementMatch!15969) (h!70530 (exprs!5853 setElem!40160))))))

(assert (=> d!1856176 (= (validRegex!7705 (h!70530 (exprs!5853 setElem!40160))) e!3623565)))

(declare-fun b!5918282 () Bool)

(declare-fun e!3623560 () Bool)

(declare-fun call!469178 () Bool)

(assert (=> b!5918282 (= e!3623560 call!469178)))

(declare-fun b!5918283 () Bool)

(declare-fun res!2481332 () Bool)

(declare-fun e!3623561 () Bool)

(assert (=> b!5918283 (=> (not res!2481332) (not e!3623561))))

(declare-fun call!469176 () Bool)

(assert (=> b!5918283 (= res!2481332 call!469176)))

(assert (=> b!5918283 (= e!3623559 e!3623561)))

(declare-fun b!5918284 () Bool)

(declare-fun e!3623562 () Bool)

(assert (=> b!5918284 (= e!3623562 e!3623563)))

(declare-fun res!2481334 () Bool)

(assert (=> b!5918284 (=> (not res!2481334) (not e!3623563))))

(assert (=> b!5918284 (= res!2481334 call!469176)))

(declare-fun b!5918285 () Bool)

(assert (=> b!5918285 (= e!3623564 e!3623560)))

(declare-fun res!2481335 () Bool)

(assert (=> b!5918285 (= res!2481335 (not (nullable!5964 (reg!16298 (h!70530 (exprs!5853 setElem!40160))))))))

(assert (=> b!5918285 (=> (not res!2481335) (not e!3623560))))

(declare-fun bm!469171 () Bool)

(assert (=> bm!469171 (= call!469176 (validRegex!7705 (ite c!1051899 (regOne!32451 (h!70530 (exprs!5853 setElem!40160))) (regOne!32450 (h!70530 (exprs!5853 setElem!40160))))))))

(declare-fun b!5918286 () Bool)

(declare-fun res!2481331 () Bool)

(assert (=> b!5918286 (=> res!2481331 e!3623562)))

(assert (=> b!5918286 (= res!2481331 (not ((_ is Concat!24814) (h!70530 (exprs!5853 setElem!40160)))))))

(assert (=> b!5918286 (= e!3623559 e!3623562)))

(declare-fun b!5918287 () Bool)

(assert (=> b!5918287 (= e!3623565 e!3623564)))

(declare-fun c!1051898 () Bool)

(assert (=> b!5918287 (= c!1051898 ((_ is Star!15969) (h!70530 (exprs!5853 setElem!40160))))))

(declare-fun b!5918288 () Bool)

(assert (=> b!5918288 (= e!3623561 call!469177)))

(declare-fun bm!469172 () Bool)

(assert (=> bm!469172 (= call!469177 call!469178)))

(declare-fun bm!469173 () Bool)

(assert (=> bm!469173 (= call!469178 (validRegex!7705 (ite c!1051898 (reg!16298 (h!70530 (exprs!5853 setElem!40160))) (ite c!1051899 (regTwo!32451 (h!70530 (exprs!5853 setElem!40160))) (regTwo!32450 (h!70530 (exprs!5853 setElem!40160)))))))))

(assert (= (and d!1856176 (not res!2481333)) b!5918287))

(assert (= (and b!5918287 c!1051898) b!5918285))

(assert (= (and b!5918287 (not c!1051898)) b!5918280))

(assert (= (and b!5918285 res!2481335) b!5918282))

(assert (= (and b!5918280 c!1051899) b!5918283))

(assert (= (and b!5918280 (not c!1051899)) b!5918286))

(assert (= (and b!5918283 res!2481332) b!5918288))

(assert (= (and b!5918286 (not res!2481331)) b!5918284))

(assert (= (and b!5918284 res!2481334) b!5918281))

(assert (= (or b!5918288 b!5918281) bm!469172))

(assert (= (or b!5918283 b!5918284) bm!469171))

(assert (= (or b!5918282 bm!469172) bm!469173))

(declare-fun m!6815528 () Bool)

(assert (=> b!5918285 m!6815528))

(declare-fun m!6815530 () Bool)

(assert (=> bm!469171 m!6815530))

(declare-fun m!6815532 () Bool)

(assert (=> bm!469173 m!6815532))

(assert (=> bs!1400862 d!1856176))

(declare-fun d!1856180 () Bool)

(assert (=> d!1856180 (= (isEmpty!35938 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))) ((_ is Nil!64082) (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(assert (=> b!5917305 d!1856180))

(declare-fun bs!1401026 () Bool)

(declare-fun d!1856182 () Bool)

(assert (= bs!1401026 (and d!1856182 d!1856014)))

(declare-fun lambda!322909 () Int)

(assert (=> bs!1401026 (= lambda!322909 lambda!322902)))

(declare-fun bs!1401027 () Bool)

(assert (= bs!1401027 (and d!1856182 d!1855580)))

(assert (=> bs!1401027 (= lambda!322909 lambda!322809)))

(declare-fun bs!1401028 () Bool)

(assert (= bs!1401028 (and d!1856182 d!1855990)))

(assert (=> bs!1401028 (= lambda!322909 lambda!322901)))

(declare-fun bs!1401029 () Bool)

(assert (= bs!1401029 (and d!1856182 d!1855584)))

(assert (=> bs!1401029 (= lambda!322909 lambda!322812)))

(declare-fun bs!1401030 () Bool)

(assert (= bs!1401030 (and d!1856182 d!1855694)))

(assert (=> bs!1401030 (= lambda!322909 lambda!322865)))

(declare-fun bs!1401031 () Bool)

(assert (= bs!1401031 (and d!1856182 d!1855782)))

(assert (=> bs!1401031 (= lambda!322909 lambda!322869)))

(declare-fun bs!1401032 () Bool)

(assert (= bs!1401032 (and d!1856182 d!1855806)))

(assert (=> bs!1401032 (= lambda!322909 lambda!322873)))

(declare-fun bs!1401033 () Bool)

(assert (= bs!1401033 (and d!1856182 d!1855630)))

(assert (=> bs!1401033 (= lambda!322909 lambda!322838)))

(declare-fun bs!1401034 () Bool)

(assert (= bs!1401034 (and d!1856182 d!1855776)))

(assert (=> bs!1401034 (= lambda!322909 lambda!322868)))

(declare-fun bs!1401035 () Bool)

(assert (= bs!1401035 (and d!1856182 d!1855588)))

(assert (=> bs!1401035 (= lambda!322909 lambda!322815)))

(declare-fun bs!1401036 () Bool)

(assert (= bs!1401036 (and d!1856182 d!1855834)))

(assert (=> bs!1401036 (= lambda!322909 lambda!322880)))

(declare-fun bs!1401037 () Bool)

(assert (= bs!1401037 (and d!1856182 d!1856058)))

(assert (=> bs!1401037 (= lambda!322909 lambda!322906)))

(declare-fun bs!1401038 () Bool)

(assert (= bs!1401038 (and d!1856182 d!1856036)))

(assert (=> bs!1401038 (= lambda!322909 lambda!322905)))

(declare-fun bs!1401039 () Bool)

(assert (= bs!1401039 (and d!1856182 d!1855624)))

(assert (=> bs!1401039 (= lambda!322909 lambda!322837)))

(declare-fun b!5918289 () Bool)

(declare-fun e!3623570 () Regex!15969)

(assert (=> b!5918289 (= e!3623570 (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343)))))))

(declare-fun b!5918290 () Bool)

(declare-fun e!3623567 () Bool)

(declare-fun lt!2309846 () Regex!15969)

(assert (=> b!5918290 (= e!3623567 (isConcat!920 lt!2309846))))

(declare-fun b!5918291 () Bool)

(declare-fun e!3623568 () Bool)

(assert (=> b!5918291 (= e!3623568 e!3623567)))

(declare-fun c!1051900 () Bool)

(assert (=> b!5918291 (= c!1051900 (isEmpty!35938 (tail!11562 (exprs!5853 (h!70531 (t!377596 zl!343))))))))

(declare-fun b!5918292 () Bool)

(assert (=> b!5918292 (= e!3623568 (isEmptyExpr!1397 lt!2309846))))

(declare-fun e!3623566 () Bool)

(assert (=> d!1856182 e!3623566))

(declare-fun res!2481337 () Bool)

(assert (=> d!1856182 (=> (not res!2481337) (not e!3623566))))

(assert (=> d!1856182 (= res!2481337 (validRegex!7705 lt!2309846))))

(assert (=> d!1856182 (= lt!2309846 e!3623570)))

(declare-fun c!1051902 () Bool)

(declare-fun e!3623569 () Bool)

(assert (=> d!1856182 (= c!1051902 e!3623569)))

(declare-fun res!2481336 () Bool)

(assert (=> d!1856182 (=> (not res!2481336) (not e!3623569))))

(assert (=> d!1856182 (= res!2481336 ((_ is Cons!64082) (exprs!5853 (h!70531 (t!377596 zl!343)))))))

(assert (=> d!1856182 (forall!15051 (exprs!5853 (h!70531 (t!377596 zl!343))) lambda!322909)))

(assert (=> d!1856182 (= (generalisedConcat!1566 (exprs!5853 (h!70531 (t!377596 zl!343)))) lt!2309846)))

(declare-fun b!5918293 () Bool)

(declare-fun e!3623571 () Regex!15969)

(assert (=> b!5918293 (= e!3623570 e!3623571)))

(declare-fun c!1051901 () Bool)

(assert (=> b!5918293 (= c!1051901 ((_ is Cons!64082) (exprs!5853 (h!70531 (t!377596 zl!343)))))))

(declare-fun b!5918294 () Bool)

(assert (=> b!5918294 (= e!3623571 EmptyExpr!15969)))

(declare-fun b!5918295 () Bool)

(assert (=> b!5918295 (= e!3623567 (= lt!2309846 (head!12477 (exprs!5853 (h!70531 (t!377596 zl!343))))))))

(declare-fun b!5918296 () Bool)

(assert (=> b!5918296 (= e!3623569 (isEmpty!35938 (t!377595 (exprs!5853 (h!70531 (t!377596 zl!343))))))))

(declare-fun b!5918297 () Bool)

(assert (=> b!5918297 (= e!3623571 (Concat!24814 (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343)))) (generalisedConcat!1566 (t!377595 (exprs!5853 (h!70531 (t!377596 zl!343)))))))))

(declare-fun b!5918298 () Bool)

(assert (=> b!5918298 (= e!3623566 e!3623568)))

(declare-fun c!1051903 () Bool)

(assert (=> b!5918298 (= c!1051903 (isEmpty!35938 (exprs!5853 (h!70531 (t!377596 zl!343)))))))

(assert (= (and d!1856182 res!2481336) b!5918296))

(assert (= (and d!1856182 c!1051902) b!5918289))

(assert (= (and d!1856182 (not c!1051902)) b!5918293))

(assert (= (and b!5918293 c!1051901) b!5918297))

(assert (= (and b!5918293 (not c!1051901)) b!5918294))

(assert (= (and d!1856182 res!2481337) b!5918298))

(assert (= (and b!5918298 c!1051903) b!5918292))

(assert (= (and b!5918298 (not c!1051903)) b!5918291))

(assert (= (and b!5918291 c!1051900) b!5918295))

(assert (= (and b!5918291 (not c!1051900)) b!5918290))

(declare-fun m!6815542 () Bool)

(assert (=> b!5918296 m!6815542))

(declare-fun m!6815546 () Bool)

(assert (=> d!1856182 m!6815546))

(declare-fun m!6815548 () Bool)

(assert (=> d!1856182 m!6815548))

(declare-fun m!6815550 () Bool)

(assert (=> b!5918298 m!6815550))

(declare-fun m!6815552 () Bool)

(assert (=> b!5918297 m!6815552))

(declare-fun m!6815554 () Bool)

(assert (=> b!5918292 m!6815554))

(declare-fun m!6815556 () Bool)

(assert (=> b!5918295 m!6815556))

(declare-fun m!6815558 () Bool)

(assert (=> b!5918290 m!6815558))

(declare-fun m!6815560 () Bool)

(assert (=> b!5918291 m!6815560))

(assert (=> b!5918291 m!6815560))

(declare-fun m!6815562 () Bool)

(assert (=> b!5918291 m!6815562))

(assert (=> b!5917066 d!1856182))

(declare-fun bs!1401040 () Bool)

(declare-fun d!1856186 () Bool)

(assert (= bs!1401040 (and d!1856186 d!1856014)))

(declare-fun lambda!322910 () Int)

(assert (=> bs!1401040 (= lambda!322910 lambda!322902)))

(declare-fun bs!1401041 () Bool)

(assert (= bs!1401041 (and d!1856186 d!1855580)))

(assert (=> bs!1401041 (= lambda!322910 lambda!322809)))

(declare-fun bs!1401042 () Bool)

(assert (= bs!1401042 (and d!1856186 d!1855990)))

(assert (=> bs!1401042 (= lambda!322910 lambda!322901)))

(declare-fun bs!1401043 () Bool)

(assert (= bs!1401043 (and d!1856186 d!1856182)))

(assert (=> bs!1401043 (= lambda!322910 lambda!322909)))

(declare-fun bs!1401044 () Bool)

(assert (= bs!1401044 (and d!1856186 d!1855584)))

(assert (=> bs!1401044 (= lambda!322910 lambda!322812)))

(declare-fun bs!1401045 () Bool)

(assert (= bs!1401045 (and d!1856186 d!1855694)))

(assert (=> bs!1401045 (= lambda!322910 lambda!322865)))

(declare-fun bs!1401046 () Bool)

(assert (= bs!1401046 (and d!1856186 d!1855782)))

(assert (=> bs!1401046 (= lambda!322910 lambda!322869)))

(declare-fun bs!1401047 () Bool)

(assert (= bs!1401047 (and d!1856186 d!1855806)))

(assert (=> bs!1401047 (= lambda!322910 lambda!322873)))

(declare-fun bs!1401048 () Bool)

(assert (= bs!1401048 (and d!1856186 d!1855630)))

(assert (=> bs!1401048 (= lambda!322910 lambda!322838)))

(declare-fun bs!1401049 () Bool)

(assert (= bs!1401049 (and d!1856186 d!1855776)))

(assert (=> bs!1401049 (= lambda!322910 lambda!322868)))

(declare-fun bs!1401050 () Bool)

(assert (= bs!1401050 (and d!1856186 d!1855588)))

(assert (=> bs!1401050 (= lambda!322910 lambda!322815)))

(declare-fun bs!1401051 () Bool)

(assert (= bs!1401051 (and d!1856186 d!1855834)))

(assert (=> bs!1401051 (= lambda!322910 lambda!322880)))

(declare-fun bs!1401052 () Bool)

(assert (= bs!1401052 (and d!1856186 d!1856058)))

(assert (=> bs!1401052 (= lambda!322910 lambda!322906)))

(declare-fun bs!1401053 () Bool)

(assert (= bs!1401053 (and d!1856186 d!1856036)))

(assert (=> bs!1401053 (= lambda!322910 lambda!322905)))

(declare-fun bs!1401054 () Bool)

(assert (= bs!1401054 (and d!1856186 d!1855624)))

(assert (=> bs!1401054 (= lambda!322910 lambda!322837)))

(declare-fun lt!2309848 () List!64206)

(assert (=> d!1856186 (forall!15051 lt!2309848 lambda!322910)))

(declare-fun e!3623574 () List!64206)

(assert (=> d!1856186 (= lt!2309848 e!3623574)))

(declare-fun c!1051905 () Bool)

(assert (=> d!1856186 (= c!1051905 ((_ is Cons!64083) (t!377596 (t!377596 zl!343))))))

(assert (=> d!1856186 (= (unfocusZipperList!1390 (t!377596 (t!377596 zl!343))) lt!2309848)))

(declare-fun b!5918303 () Bool)

(assert (=> b!5918303 (= e!3623574 (Cons!64082 (generalisedConcat!1566 (exprs!5853 (h!70531 (t!377596 (t!377596 zl!343))))) (unfocusZipperList!1390 (t!377596 (t!377596 (t!377596 zl!343))))))))

(declare-fun b!5918304 () Bool)

(assert (=> b!5918304 (= e!3623574 Nil!64082)))

(assert (= (and d!1856186 c!1051905) b!5918303))

(assert (= (and d!1856186 (not c!1051905)) b!5918304))

(declare-fun m!6815568 () Bool)

(assert (=> d!1856186 m!6815568))

(declare-fun m!6815570 () Bool)

(assert (=> b!5918303 m!6815570))

(declare-fun m!6815574 () Bool)

(assert (=> b!5918303 m!6815574))

(assert (=> b!5917066 d!1856186))

(declare-fun d!1856192 () Bool)

(assert (=> d!1856192 (= (isEmpty!35940 (tail!11564 (tail!11564 s!2326))) ((_ is Nil!64084) (tail!11564 (tail!11564 s!2326))))))

(assert (=> b!5917081 d!1856192))

(assert (=> b!5917081 d!1856096))

(declare-fun d!1856194 () Bool)

(declare-fun c!1051907 () Bool)

(assert (=> d!1856194 (= c!1051907 ((_ is Nil!64084) lt!2309795))))

(declare-fun e!3623577 () (InoxSet C!32208))

(assert (=> d!1856194 (= (content!11798 lt!2309795) e!3623577)))

(declare-fun b!5918309 () Bool)

(assert (=> b!5918309 (= e!3623577 ((as const (Array C!32208 Bool)) false))))

(declare-fun b!5918310 () Bool)

(assert (=> b!5918310 (= e!3623577 ((_ map or) (store ((as const (Array C!32208 Bool)) false) (h!70532 lt!2309795) true) (content!11798 (t!377597 lt!2309795))))))

(assert (= (and d!1856194 c!1051907) b!5918309))

(assert (= (and d!1856194 (not c!1051907)) b!5918310))

(declare-fun m!6815584 () Bool)

(assert (=> b!5918310 m!6815584))

(declare-fun m!6815586 () Bool)

(assert (=> b!5918310 m!6815586))

(assert (=> d!1855786 d!1856194))

(declare-fun d!1856198 () Bool)

(declare-fun c!1051909 () Bool)

(assert (=> d!1856198 (= c!1051909 ((_ is Nil!64084) (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))

(declare-fun e!3623580 () (InoxSet C!32208))

(assert (=> d!1856198 (= (content!11798 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) e!3623580)))

(declare-fun b!5918315 () Bool)

(assert (=> b!5918315 (= e!3623580 ((as const (Array C!32208 Bool)) false))))

(declare-fun b!5918316 () Bool)

(assert (=> b!5918316 (= e!3623580 ((_ map or) (store ((as const (Array C!32208 Bool)) false) (h!70532 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))) true) (content!11798 (t!377597 (++!14066 Nil!64084 (Cons!64084 (h!70532 s!2326) Nil!64084))))))))

(assert (= (and d!1856198 c!1051909) b!5918315))

(assert (= (and d!1856198 (not c!1051909)) b!5918316))

(declare-fun m!6815588 () Bool)

(assert (=> b!5918316 m!6815588))

(assert (=> b!5918316 m!6815352))

(assert (=> d!1855786 d!1856198))

(declare-fun d!1856200 () Bool)

(declare-fun c!1051910 () Bool)

(assert (=> d!1856200 (= c!1051910 ((_ is Nil!64084) (t!377597 s!2326)))))

(declare-fun e!3623581 () (InoxSet C!32208))

(assert (=> d!1856200 (= (content!11798 (t!377597 s!2326)) e!3623581)))

(declare-fun b!5918317 () Bool)

(assert (=> b!5918317 (= e!3623581 ((as const (Array C!32208 Bool)) false))))

(declare-fun b!5918318 () Bool)

(assert (=> b!5918318 (= e!3623581 ((_ map or) (store ((as const (Array C!32208 Bool)) false) (h!70532 (t!377597 s!2326)) true) (content!11798 (t!377597 (t!377597 s!2326)))))))

(assert (= (and d!1856200 c!1051910) b!5918317))

(assert (= (and d!1856200 (not c!1051910)) b!5918318))

(declare-fun m!6815590 () Bool)

(assert (=> b!5918318 m!6815590))

(assert (=> b!5918318 m!6815490))

(assert (=> d!1855786 d!1856200))

(assert (=> b!5917550 d!1855678))

(declare-fun d!1856202 () Bool)

(assert (=> d!1856202 (= ($colon$colon!1856 (exprs!5853 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926))) (ite (or c!1051753 c!1051751) (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))) (Cons!64082 (ite (or c!1051753 c!1051751) (regTwo!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (exprs!5853 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)))))))

(assert (=> bm!469057 d!1856202))

(declare-fun d!1856204 () Bool)

(assert (=> d!1856204 (= (isEmpty!35938 (tail!11562 (t!377595 (exprs!5853 (h!70531 zl!343))))) ((_ is Nil!64082) (tail!11562 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(assert (=> b!5917253 d!1856204))

(declare-fun d!1856206 () Bool)

(assert (=> d!1856206 (= (tail!11562 (t!377595 (exprs!5853 (h!70531 zl!343)))) (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> b!5917253 d!1856206))

(declare-fun d!1856208 () Bool)

(assert (=> d!1856208 (= (Exists!3039 (ite c!1051612 lambda!322863 lambda!322864)) (choose!44639 (ite c!1051612 lambda!322863 lambda!322864)))))

(declare-fun bs!1401055 () Bool)

(assert (= bs!1401055 d!1856208))

(declare-fun m!6815600 () Bool)

(assert (=> bs!1401055 m!6815600))

(assert (=> bm!468965 d!1856208))

(declare-fun d!1856210 () Bool)

(declare-fun res!2481344 () Bool)

(declare-fun e!3623582 () Bool)

(assert (=> d!1856210 (=> res!2481344 e!3623582)))

(assert (=> d!1856210 (= res!2481344 ((_ is Nil!64083) res!2480970))))

(assert (=> d!1856210 (= (noDuplicate!1826 res!2480970) e!3623582)))

(declare-fun b!5918319 () Bool)

(declare-fun e!3623583 () Bool)

(assert (=> b!5918319 (= e!3623582 e!3623583)))

(declare-fun res!2481345 () Bool)

(assert (=> b!5918319 (=> (not res!2481345) (not e!3623583))))

(assert (=> b!5918319 (= res!2481345 (not (contains!19954 (t!377596 res!2480970) (h!70531 res!2480970))))))

(declare-fun b!5918320 () Bool)

(assert (=> b!5918320 (= e!3623583 (noDuplicate!1826 (t!377596 res!2480970)))))

(assert (= (and d!1856210 (not res!2481344)) b!5918319))

(assert (= (and b!5918319 res!2481345) b!5918320))

(declare-fun m!6815604 () Bool)

(assert (=> b!5918319 m!6815604))

(declare-fun m!6815606 () Bool)

(assert (=> b!5918320 m!6815606))

(assert (=> d!1855754 d!1856210))

(declare-fun d!1856214 () Bool)

(assert (=> d!1856214 true))

(assert (=> d!1856214 true))

(declare-fun res!2481346 () Bool)

(assert (=> d!1856214 (= (choose!44639 lambda!322859) res!2481346)))

(assert (=> d!1855882 d!1856214))

(declare-fun d!1856216 () Bool)

(assert (not d!1856216))

(assert (=> b!5917279 d!1856216))

(declare-fun d!1856218 () Bool)

(declare-fun e!3623590 () Bool)

(assert (=> d!1856218 e!3623590))

(declare-fun c!1051911 () Bool)

(assert (=> d!1856218 (= c!1051911 ((_ is EmptyExpr!15969) (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326))))))

(declare-fun lt!2309852 () Bool)

(declare-fun e!3623589 () Bool)

(assert (=> d!1856218 (= lt!2309852 e!3623589)))

(declare-fun c!1051912 () Bool)

(assert (=> d!1856218 (= c!1051912 (isEmpty!35940 (tail!11564 s!2326)))))

(assert (=> d!1856218 (validRegex!7705 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326)))))

(assert (=> d!1856218 (= (matchR!8152 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326)) (tail!11564 s!2326)) lt!2309852)))

(declare-fun b!5918321 () Bool)

(assert (=> b!5918321 (= e!3623589 (nullable!5964 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326))))))

(declare-fun b!5918322 () Bool)

(declare-fun call!469179 () Bool)

(assert (=> b!5918322 (= e!3623590 (= lt!2309852 call!469179))))

(declare-fun b!5918323 () Bool)

(assert (=> b!5918323 (= e!3623589 (matchR!8152 (derivativeStep!4700 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326)) (head!12479 (tail!11564 s!2326))) (tail!11564 (tail!11564 s!2326))))))

(declare-fun b!5918324 () Bool)

(declare-fun res!2481349 () Bool)

(declare-fun e!3623588 () Bool)

(assert (=> b!5918324 (=> (not res!2481349) (not e!3623588))))

(assert (=> b!5918324 (= res!2481349 (not call!469179))))

(declare-fun b!5918325 () Bool)

(declare-fun e!3623586 () Bool)

(declare-fun e!3623585 () Bool)

(assert (=> b!5918325 (= e!3623586 e!3623585)))

(declare-fun res!2481351 () Bool)

(assert (=> b!5918325 (=> res!2481351 e!3623585)))

(assert (=> b!5918325 (= res!2481351 call!469179)))

(declare-fun b!5918326 () Bool)

(declare-fun e!3623584 () Bool)

(assert (=> b!5918326 (= e!3623584 (not lt!2309852))))

(declare-fun b!5918327 () Bool)

(assert (=> b!5918327 (= e!3623588 (= (head!12479 (tail!11564 s!2326)) (c!1051439 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326)))))))

(declare-fun b!5918328 () Bool)

(declare-fun e!3623587 () Bool)

(assert (=> b!5918328 (= e!3623587 e!3623586)))

(declare-fun res!2481352 () Bool)

(assert (=> b!5918328 (=> (not res!2481352) (not e!3623586))))

(assert (=> b!5918328 (= res!2481352 (not lt!2309852))))

(declare-fun b!5918329 () Bool)

(assert (=> b!5918329 (= e!3623585 (not (= (head!12479 (tail!11564 s!2326)) (c!1051439 (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326))))))))

(declare-fun b!5918330 () Bool)

(declare-fun res!2481350 () Bool)

(assert (=> b!5918330 (=> res!2481350 e!3623587)))

(assert (=> b!5918330 (= res!2481350 e!3623588)))

(declare-fun res!2481354 () Bool)

(assert (=> b!5918330 (=> (not res!2481354) (not e!3623588))))

(assert (=> b!5918330 (= res!2481354 lt!2309852)))

(declare-fun b!5918331 () Bool)

(declare-fun res!2481347 () Bool)

(assert (=> b!5918331 (=> res!2481347 e!3623587)))

(assert (=> b!5918331 (= res!2481347 (not ((_ is ElementMatch!15969) (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326)))))))

(assert (=> b!5918331 (= e!3623584 e!3623587)))

(declare-fun b!5918332 () Bool)

(assert (=> b!5918332 (= e!3623590 e!3623584)))

(declare-fun c!1051913 () Bool)

(assert (=> b!5918332 (= c!1051913 ((_ is EmptyLang!15969) (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326))))))

(declare-fun bm!469174 () Bool)

(assert (=> bm!469174 (= call!469179 (isEmpty!35940 (tail!11564 s!2326)))))

(declare-fun b!5918333 () Bool)

(declare-fun res!2481348 () Bool)

(assert (=> b!5918333 (=> res!2481348 e!3623585)))

(assert (=> b!5918333 (= res!2481348 (not (isEmpty!35940 (tail!11564 (tail!11564 s!2326)))))))

(declare-fun b!5918334 () Bool)

(declare-fun res!2481353 () Bool)

(assert (=> b!5918334 (=> (not res!2481353) (not e!3623588))))

(assert (=> b!5918334 (= res!2481353 (isEmpty!35940 (tail!11564 (tail!11564 s!2326))))))

(assert (= (and d!1856218 c!1051912) b!5918321))

(assert (= (and d!1856218 (not c!1051912)) b!5918323))

(assert (= (and d!1856218 c!1051911) b!5918322))

(assert (= (and d!1856218 (not c!1051911)) b!5918332))

(assert (= (and b!5918332 c!1051913) b!5918326))

(assert (= (and b!5918332 (not c!1051913)) b!5918331))

(assert (= (and b!5918331 (not res!2481347)) b!5918330))

(assert (= (and b!5918330 res!2481354) b!5918324))

(assert (= (and b!5918324 res!2481349) b!5918334))

(assert (= (and b!5918334 res!2481353) b!5918327))

(assert (= (and b!5918330 (not res!2481350)) b!5918328))

(assert (= (and b!5918328 res!2481352) b!5918325))

(assert (= (and b!5918325 (not res!2481351)) b!5918333))

(assert (= (and b!5918333 (not res!2481348)) b!5918329))

(assert (= (or b!5918322 b!5918324 b!5918325) bm!469174))

(assert (=> b!5918321 m!6815024))

(declare-fun m!6815612 () Bool)

(assert (=> b!5918321 m!6815612))

(assert (=> b!5918333 m!6814246))

(assert (=> b!5918333 m!6814494))

(assert (=> b!5918333 m!6814494))

(assert (=> b!5918333 m!6814496))

(assert (=> b!5918334 m!6814246))

(assert (=> b!5918334 m!6814494))

(assert (=> b!5918334 m!6814494))

(assert (=> b!5918334 m!6814496))

(assert (=> b!5918323 m!6814246))

(assert (=> b!5918323 m!6814498))

(assert (=> b!5918323 m!6815024))

(assert (=> b!5918323 m!6814498))

(declare-fun m!6815614 () Bool)

(assert (=> b!5918323 m!6815614))

(assert (=> b!5918323 m!6814246))

(assert (=> b!5918323 m!6814494))

(assert (=> b!5918323 m!6815614))

(assert (=> b!5918323 m!6814494))

(declare-fun m!6815616 () Bool)

(assert (=> b!5918323 m!6815616))

(assert (=> d!1856218 m!6814246))

(assert (=> d!1856218 m!6814248))

(assert (=> d!1856218 m!6815024))

(declare-fun m!6815618 () Bool)

(assert (=> d!1856218 m!6815618))

(assert (=> b!5918329 m!6814246))

(assert (=> b!5918329 m!6814498))

(assert (=> b!5918327 m!6814246))

(assert (=> b!5918327 m!6814498))

(assert (=> bm!469174 m!6814246))

(assert (=> bm!469174 m!6814248))

(assert (=> b!5917546 d!1856218))

(declare-fun b!5918344 () Bool)

(declare-fun e!3623599 () Regex!15969)

(declare-fun call!469183 () Regex!15969)

(assert (=> b!5918344 (= e!3623599 (Concat!24814 call!469183 (regTwo!32450 r!7292)))))

(declare-fun b!5918345 () Bool)

(declare-fun e!3623600 () Regex!15969)

(declare-fun call!469180 () Regex!15969)

(declare-fun call!469181 () Regex!15969)

(assert (=> b!5918345 (= e!3623600 (Union!15969 call!469180 call!469181))))

(declare-fun b!5918346 () Bool)

(declare-fun c!1051918 () Bool)

(assert (=> b!5918346 (= c!1051918 ((_ is Union!15969) (regTwo!32450 r!7292)))))

(declare-fun e!3623596 () Regex!15969)

(assert (=> b!5918346 (= e!3623596 e!3623600)))

(declare-fun b!5918347 () Bool)

(declare-fun e!3623597 () Regex!15969)

(declare-fun call!469182 () Regex!15969)

(assert (=> b!5918347 (= e!3623597 (Union!15969 (Concat!24814 call!469182 (regTwo!32450 (regTwo!32450 r!7292))) EmptyLang!15969))))

(declare-fun c!1051917 () Bool)

(declare-fun bm!469175 () Bool)

(assert (=> bm!469175 (= call!469181 (derivativeStep!4700 (ite c!1051918 (regTwo!32451 (regTwo!32450 r!7292)) (ite c!1051917 (reg!16298 (regTwo!32450 r!7292)) (regOne!32450 (regTwo!32450 r!7292)))) (head!12479 s!2326)))))

(declare-fun bm!469176 () Bool)

(assert (=> bm!469176 (= call!469183 call!469181)))

(declare-fun b!5918348 () Bool)

(assert (=> b!5918348 (= e!3623596 (ite (= (head!12479 s!2326) (c!1051439 (regTwo!32450 r!7292))) EmptyExpr!15969 EmptyLang!15969))))

(declare-fun b!5918349 () Bool)

(assert (=> b!5918349 (= e!3623600 e!3623599)))

(assert (=> b!5918349 (= c!1051917 ((_ is Star!15969) (regTwo!32450 r!7292)))))

(declare-fun bm!469177 () Bool)

(assert (=> bm!469177 (= call!469182 call!469180)))

(declare-fun bm!469178 () Bool)

(declare-fun c!1051916 () Bool)

(assert (=> bm!469178 (= call!469180 (derivativeStep!4700 (ite c!1051918 (regOne!32451 (regTwo!32450 r!7292)) (ite c!1051916 (regTwo!32450 (regTwo!32450 r!7292)) (regOne!32450 (regTwo!32450 r!7292)))) (head!12479 s!2326)))))

(declare-fun b!5918350 () Bool)

(assert (=> b!5918350 (= e!3623597 (Union!15969 (Concat!24814 call!469183 (regTwo!32450 (regTwo!32450 r!7292))) call!469182))))

(declare-fun b!5918351 () Bool)

(assert (=> b!5918351 (= c!1051916 (nullable!5964 (regOne!32450 (regTwo!32450 r!7292))))))

(assert (=> b!5918351 (= e!3623599 e!3623597)))

(declare-fun b!5918352 () Bool)

(declare-fun e!3623598 () Regex!15969)

(assert (=> b!5918352 (= e!3623598 e!3623596)))

(declare-fun c!1051919 () Bool)

(assert (=> b!5918352 (= c!1051919 ((_ is ElementMatch!15969) (regTwo!32450 r!7292)))))

(declare-fun d!1856222 () Bool)

(declare-fun lt!2309856 () Regex!15969)

(assert (=> d!1856222 (validRegex!7705 lt!2309856)))

(assert (=> d!1856222 (= lt!2309856 e!3623598)))

(declare-fun c!1051920 () Bool)

(assert (=> d!1856222 (= c!1051920 (or ((_ is EmptyExpr!15969) (regTwo!32450 r!7292)) ((_ is EmptyLang!15969) (regTwo!32450 r!7292))))))

(assert (=> d!1856222 (validRegex!7705 (regTwo!32450 r!7292))))

(assert (=> d!1856222 (= (derivativeStep!4700 (regTwo!32450 r!7292) (head!12479 s!2326)) lt!2309856)))

(declare-fun b!5918353 () Bool)

(assert (=> b!5918353 (= e!3623598 EmptyLang!15969)))

(assert (= (and d!1856222 c!1051920) b!5918353))

(assert (= (and d!1856222 (not c!1051920)) b!5918352))

(assert (= (and b!5918352 c!1051919) b!5918348))

(assert (= (and b!5918352 (not c!1051919)) b!5918346))

(assert (= (and b!5918346 c!1051918) b!5918345))

(assert (= (and b!5918346 (not c!1051918)) b!5918349))

(assert (= (and b!5918349 c!1051917) b!5918344))

(assert (= (and b!5918349 (not c!1051917)) b!5918351))

(assert (= (and b!5918351 c!1051916) b!5918350))

(assert (= (and b!5918351 (not c!1051916)) b!5918347))

(assert (= (or b!5918350 b!5918347) bm!469177))

(assert (= (or b!5918344 b!5918350) bm!469176))

(assert (= (or b!5918345 bm!469176) bm!469175))

(assert (= (or b!5918345 bm!469177) bm!469178))

(assert (=> bm!469175 m!6814250))

(declare-fun m!6815620 () Bool)

(assert (=> bm!469175 m!6815620))

(assert (=> bm!469178 m!6814250))

(declare-fun m!6815622 () Bool)

(assert (=> bm!469178 m!6815622))

(assert (=> b!5918351 m!6815384))

(declare-fun m!6815624 () Bool)

(assert (=> d!1856222 m!6815624))

(assert (=> d!1856222 m!6814578))

(assert (=> b!5917546 d!1856222))

(assert (=> b!5917546 d!1855678))

(assert (=> b!5917546 d!1855720))

(declare-fun d!1856224 () Bool)

(assert (=> d!1856224 true))

(assert (=> d!1856224 true))

(declare-fun res!2481360 () Bool)

(assert (=> d!1856224 (= (choose!44639 lambda!322850) res!2481360)))

(assert (=> d!1855810 d!1856224))

(declare-fun b!5918354 () Bool)

(declare-fun e!3623606 () Bool)

(declare-fun e!3623601 () Bool)

(assert (=> b!5918354 (= e!3623606 e!3623601)))

(declare-fun c!1051922 () Bool)

(assert (=> b!5918354 (= c!1051922 ((_ is Union!15969) (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))

(declare-fun b!5918355 () Bool)

(declare-fun e!3623605 () Bool)

(declare-fun call!469185 () Bool)

(assert (=> b!5918355 (= e!3623605 call!469185)))

(declare-fun d!1856226 () Bool)

(declare-fun res!2481363 () Bool)

(declare-fun e!3623607 () Bool)

(assert (=> d!1856226 (=> res!2481363 e!3623607)))

(assert (=> d!1856226 (= res!2481363 ((_ is ElementMatch!15969) (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))

(assert (=> d!1856226 (= (validRegex!7705 (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))) e!3623607)))

(declare-fun b!5918356 () Bool)

(declare-fun e!3623602 () Bool)

(declare-fun call!469186 () Bool)

(assert (=> b!5918356 (= e!3623602 call!469186)))

(declare-fun b!5918357 () Bool)

(declare-fun res!2481362 () Bool)

(declare-fun e!3623603 () Bool)

(assert (=> b!5918357 (=> (not res!2481362) (not e!3623603))))

(declare-fun call!469184 () Bool)

(assert (=> b!5918357 (= res!2481362 call!469184)))

(assert (=> b!5918357 (= e!3623601 e!3623603)))

(declare-fun b!5918358 () Bool)

(declare-fun e!3623604 () Bool)

(assert (=> b!5918358 (= e!3623604 e!3623605)))

(declare-fun res!2481364 () Bool)

(assert (=> b!5918358 (=> (not res!2481364) (not e!3623605))))

(assert (=> b!5918358 (= res!2481364 call!469184)))

(declare-fun b!5918359 () Bool)

(assert (=> b!5918359 (= e!3623606 e!3623602)))

(declare-fun res!2481365 () Bool)

(assert (=> b!5918359 (= res!2481365 (not (nullable!5964 (reg!16298 (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))))

(assert (=> b!5918359 (=> (not res!2481365) (not e!3623602))))

(declare-fun bm!469179 () Bool)

(assert (=> bm!469179 (= call!469184 (validRegex!7705 (ite c!1051922 (regOne!32451 (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))) (regOne!32450 (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))))

(declare-fun b!5918360 () Bool)

(declare-fun res!2481361 () Bool)

(assert (=> b!5918360 (=> res!2481361 e!3623604)))

(assert (=> b!5918360 (= res!2481361 (not ((_ is Concat!24814) (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))))

(assert (=> b!5918360 (= e!3623601 e!3623604)))

(declare-fun b!5918361 () Bool)

(assert (=> b!5918361 (= e!3623607 e!3623606)))

(declare-fun c!1051921 () Bool)

(assert (=> b!5918361 (= c!1051921 ((_ is Star!15969) (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))))))

(declare-fun b!5918362 () Bool)

(assert (=> b!5918362 (= e!3623603 call!469185)))

(declare-fun bm!469180 () Bool)

(assert (=> bm!469180 (= call!469185 call!469186)))

(declare-fun bm!469181 () Bool)

(assert (=> bm!469181 (= call!469186 (validRegex!7705 (ite c!1051921 (reg!16298 (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))) (ite c!1051922 (regTwo!32451 (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))))) (regTwo!32450 (ite c!1051700 (regOne!32451 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292)))) (regOne!32450 (ite c!1051600 (reg!16298 r!7292) (ite c!1051601 (regTwo!32451 r!7292) (regTwo!32450 r!7292))))))))))))

(assert (= (and d!1856226 (not res!2481363)) b!5918361))

(assert (= (and b!5918361 c!1051921) b!5918359))

(assert (= (and b!5918361 (not c!1051921)) b!5918354))

(assert (= (and b!5918359 res!2481365) b!5918356))

(assert (= (and b!5918354 c!1051922) b!5918357))

(assert (= (and b!5918354 (not c!1051922)) b!5918360))

(assert (= (and b!5918357 res!2481362) b!5918362))

(assert (= (and b!5918360 (not res!2481361)) b!5918358))

(assert (= (and b!5918358 res!2481364) b!5918355))

(assert (= (or b!5918362 b!5918355) bm!469180))

(assert (= (or b!5918357 b!5918358) bm!469179))

(assert (= (or b!5918356 bm!469180) bm!469181))

(declare-fun m!6815632 () Bool)

(assert (=> b!5918359 m!6815632))

(declare-fun m!6815636 () Bool)

(assert (=> bm!469179 m!6815636))

(declare-fun m!6815640 () Bool)

(assert (=> bm!469181 m!6815640))

(assert (=> bm!469013 d!1856226))

(declare-fun d!1856228 () Bool)

(declare-fun res!2481366 () Bool)

(declare-fun e!3623608 () Bool)

(assert (=> d!1856228 (=> res!2481366 e!3623608)))

(assert (=> d!1856228 (= res!2481366 ((_ is Nil!64082) (t!377595 (unfocusZipperList!1390 zl!343))))))

(assert (=> d!1856228 (= (forall!15051 (t!377595 (unfocusZipperList!1390 zl!343)) lambda!322812) e!3623608)))

(declare-fun b!5918363 () Bool)

(declare-fun e!3623609 () Bool)

(assert (=> b!5918363 (= e!3623608 e!3623609)))

(declare-fun res!2481367 () Bool)

(assert (=> b!5918363 (=> (not res!2481367) (not e!3623609))))

(assert (=> b!5918363 (= res!2481367 (dynLambda!25053 lambda!322812 (h!70530 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5918364 () Bool)

(assert (=> b!5918364 (= e!3623609 (forall!15051 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343))) lambda!322812))))

(assert (= (and d!1856228 (not res!2481366)) b!5918363))

(assert (= (and b!5918363 res!2481367) b!5918364))

(declare-fun b_lambda!222315 () Bool)

(assert (=> (not b_lambda!222315) (not b!5918363)))

(declare-fun m!6815646 () Bool)

(assert (=> b!5918363 m!6815646))

(declare-fun m!6815650 () Bool)

(assert (=> b!5918364 m!6815650))

(assert (=> b!5917032 d!1856228))

(declare-fun b!5918367 () Bool)

(declare-fun res!2481368 () Bool)

(declare-fun e!3623610 () Bool)

(assert (=> b!5918367 (=> (not res!2481368) (not e!3623610))))

(declare-fun lt!2309857 () List!64208)

(assert (=> b!5918367 (= res!2481368 (= (size!40136 lt!2309857) (+ (size!40136 (t!377597 (_1!36251 (get!22066 lt!2309750)))) (size!40136 (_2!36251 (get!22066 lt!2309750))))))))

(declare-fun b!5918366 () Bool)

(declare-fun e!3623611 () List!64208)

(assert (=> b!5918366 (= e!3623611 (Cons!64084 (h!70532 (t!377597 (_1!36251 (get!22066 lt!2309750)))) (++!14066 (t!377597 (t!377597 (_1!36251 (get!22066 lt!2309750)))) (_2!36251 (get!22066 lt!2309750)))))))

(declare-fun b!5918368 () Bool)

(assert (=> b!5918368 (= e!3623610 (or (not (= (_2!36251 (get!22066 lt!2309750)) Nil!64084)) (= lt!2309857 (t!377597 (_1!36251 (get!22066 lt!2309750))))))))

(declare-fun d!1856230 () Bool)

(assert (=> d!1856230 e!3623610))

(declare-fun res!2481369 () Bool)

(assert (=> d!1856230 (=> (not res!2481369) (not e!3623610))))

(assert (=> d!1856230 (= res!2481369 (= (content!11798 lt!2309857) ((_ map or) (content!11798 (t!377597 (_1!36251 (get!22066 lt!2309750)))) (content!11798 (_2!36251 (get!22066 lt!2309750))))))))

(assert (=> d!1856230 (= lt!2309857 e!3623611)))

(declare-fun c!1051923 () Bool)

(assert (=> d!1856230 (= c!1051923 ((_ is Nil!64084) (t!377597 (_1!36251 (get!22066 lt!2309750)))))))

(assert (=> d!1856230 (= (++!14066 (t!377597 (_1!36251 (get!22066 lt!2309750))) (_2!36251 (get!22066 lt!2309750))) lt!2309857)))

(declare-fun b!5918365 () Bool)

(assert (=> b!5918365 (= e!3623611 (_2!36251 (get!22066 lt!2309750)))))

(assert (= (and d!1856230 c!1051923) b!5918365))

(assert (= (and d!1856230 (not c!1051923)) b!5918366))

(assert (= (and d!1856230 res!2481369) b!5918367))

(assert (= (and b!5918367 res!2481368) b!5918368))

(declare-fun m!6815656 () Bool)

(assert (=> b!5918367 m!6815656))

(assert (=> b!5918367 m!6815420))

(assert (=> b!5918367 m!6814652))

(declare-fun m!6815660 () Bool)

(assert (=> b!5918366 m!6815660))

(declare-fun m!6815662 () Bool)

(assert (=> d!1856230 m!6815662))

(assert (=> d!1856230 m!6815400))

(assert (=> d!1856230 m!6814660))

(assert (=> b!5917228 d!1856230))

(declare-fun bs!1401057 () Bool)

(declare-fun d!1856234 () Bool)

(assert (= bs!1401057 (and d!1856234 d!1856014)))

(declare-fun lambda!322911 () Int)

(assert (=> bs!1401057 (= lambda!322911 lambda!322902)))

(declare-fun bs!1401058 () Bool)

(assert (= bs!1401058 (and d!1856234 d!1855580)))

(assert (=> bs!1401058 (= lambda!322911 lambda!322809)))

(declare-fun bs!1401059 () Bool)

(assert (= bs!1401059 (and d!1856234 d!1855990)))

(assert (=> bs!1401059 (= lambda!322911 lambda!322901)))

(declare-fun bs!1401060 () Bool)

(assert (= bs!1401060 (and d!1856234 d!1856182)))

(assert (=> bs!1401060 (= lambda!322911 lambda!322909)))

(declare-fun bs!1401061 () Bool)

(assert (= bs!1401061 (and d!1856234 d!1855584)))

(assert (=> bs!1401061 (= lambda!322911 lambda!322812)))

(declare-fun bs!1401062 () Bool)

(assert (= bs!1401062 (and d!1856234 d!1855694)))

(assert (=> bs!1401062 (= lambda!322911 lambda!322865)))

(declare-fun bs!1401063 () Bool)

(assert (= bs!1401063 (and d!1856234 d!1855782)))

(assert (=> bs!1401063 (= lambda!322911 lambda!322869)))

(declare-fun bs!1401064 () Bool)

(assert (= bs!1401064 (and d!1856234 d!1855806)))

(assert (=> bs!1401064 (= lambda!322911 lambda!322873)))

(declare-fun bs!1401065 () Bool)

(assert (= bs!1401065 (and d!1856234 d!1855630)))

(assert (=> bs!1401065 (= lambda!322911 lambda!322838)))

(declare-fun bs!1401066 () Bool)

(assert (= bs!1401066 (and d!1856234 d!1855776)))

(assert (=> bs!1401066 (= lambda!322911 lambda!322868)))

(declare-fun bs!1401067 () Bool)

(assert (= bs!1401067 (and d!1856234 d!1855588)))

(assert (=> bs!1401067 (= lambda!322911 lambda!322815)))

(declare-fun bs!1401068 () Bool)

(assert (= bs!1401068 (and d!1856234 d!1855834)))

(assert (=> bs!1401068 (= lambda!322911 lambda!322880)))

(declare-fun bs!1401069 () Bool)

(assert (= bs!1401069 (and d!1856234 d!1856058)))

(assert (=> bs!1401069 (= lambda!322911 lambda!322906)))

(declare-fun bs!1401070 () Bool)

(assert (= bs!1401070 (and d!1856234 d!1856036)))

(assert (=> bs!1401070 (= lambda!322911 lambda!322905)))

(declare-fun bs!1401071 () Bool)

(assert (= bs!1401071 (and d!1856234 d!1855624)))

(assert (=> bs!1401071 (= lambda!322911 lambda!322837)))

(declare-fun bs!1401072 () Bool)

(assert (= bs!1401072 (and d!1856234 d!1856186)))

(assert (=> bs!1401072 (= lambda!322911 lambda!322910)))

(declare-fun b!5918369 () Bool)

(declare-fun e!3623615 () Bool)

(assert (=> b!5918369 (= e!3623615 (isEmpty!35938 (t!377595 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343))))))))

(declare-fun b!5918370 () Bool)

(declare-fun e!3623614 () Regex!15969)

(assert (=> b!5918370 (= e!3623614 (h!70530 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5918371 () Bool)

(declare-fun e!3623616 () Bool)

(declare-fun lt!2309858 () Regex!15969)

(assert (=> b!5918371 (= e!3623616 (isEmptyLang!1405 lt!2309858))))

(declare-fun b!5918372 () Bool)

(declare-fun e!3623612 () Bool)

(assert (=> b!5918372 (= e!3623612 (= lt!2309858 (head!12477 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343))))))))

(declare-fun b!5918374 () Bool)

(assert (=> b!5918374 (= e!3623616 e!3623612)))

(declare-fun c!1051924 () Bool)

(assert (=> b!5918374 (= c!1051924 (isEmpty!35938 (tail!11562 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343))))))))

(declare-fun b!5918375 () Bool)

(assert (=> b!5918375 (= e!3623612 (isUnion!835 lt!2309858))))

(declare-fun b!5918376 () Bool)

(declare-fun e!3623613 () Regex!15969)

(assert (=> b!5918376 (= e!3623614 e!3623613)))

(declare-fun c!1051927 () Bool)

(assert (=> b!5918376 (= c!1051927 ((_ is Cons!64082) (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun b!5918377 () Bool)

(assert (=> b!5918377 (= e!3623613 (Union!15969 (h!70530 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))) (generalisedUnion!1813 (t!377595 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))))))))

(declare-fun b!5918378 () Bool)

(assert (=> b!5918378 (= e!3623613 EmptyLang!15969)))

(declare-fun b!5918373 () Bool)

(declare-fun e!3623617 () Bool)

(assert (=> b!5918373 (= e!3623617 e!3623616)))

(declare-fun c!1051925 () Bool)

(assert (=> b!5918373 (= c!1051925 (isEmpty!35938 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(assert (=> d!1856234 e!3623617))

(declare-fun res!2481371 () Bool)

(assert (=> d!1856234 (=> (not res!2481371) (not e!3623617))))

(assert (=> d!1856234 (= res!2481371 (validRegex!7705 lt!2309858))))

(assert (=> d!1856234 (= lt!2309858 e!3623614)))

(declare-fun c!1051926 () Bool)

(assert (=> d!1856234 (= c!1051926 e!3623615)))

(declare-fun res!2481370 () Bool)

(assert (=> d!1856234 (=> (not res!2481370) (not e!3623615))))

(assert (=> d!1856234 (= res!2481370 ((_ is Cons!64082) (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(assert (=> d!1856234 (forall!15051 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343))) lambda!322911)))

(assert (=> d!1856234 (= (generalisedUnion!1813 (t!377595 (t!377595 (unfocusZipperList!1390 zl!343)))) lt!2309858)))

(assert (= (and d!1856234 res!2481370) b!5918369))

(assert (= (and d!1856234 c!1051926) b!5918370))

(assert (= (and d!1856234 (not c!1051926)) b!5918376))

(assert (= (and b!5918376 c!1051927) b!5918377))

(assert (= (and b!5918376 (not c!1051927)) b!5918378))

(assert (= (and d!1856234 res!2481371) b!5918373))

(assert (= (and b!5918373 c!1051925) b!5918371))

(assert (= (and b!5918373 (not c!1051925)) b!5918374))

(assert (= (and b!5918374 c!1051924) b!5918372))

(assert (= (and b!5918374 (not c!1051924)) b!5918375))

(declare-fun m!6815682 () Bool)

(assert (=> b!5918372 m!6815682))

(declare-fun m!6815684 () Bool)

(assert (=> b!5918375 m!6815684))

(declare-fun m!6815686 () Bool)

(assert (=> d!1856234 m!6815686))

(declare-fun m!6815688 () Bool)

(assert (=> d!1856234 m!6815688))

(assert (=> b!5918373 m!6814796))

(declare-fun m!6815690 () Bool)

(assert (=> b!5918371 m!6815690))

(declare-fun m!6815692 () Bool)

(assert (=> b!5918374 m!6815692))

(assert (=> b!5918374 m!6815692))

(declare-fun m!6815694 () Bool)

(assert (=> b!5918374 m!6815694))

(declare-fun m!6815696 () Bool)

(assert (=> b!5918377 m!6815696))

(declare-fun m!6815698 () Bool)

(assert (=> b!5918369 m!6815698))

(assert (=> b!5917313 d!1856234))

(declare-fun b!5918385 () Bool)

(declare-fun e!3623627 () (InoxSet Context!10706))

(declare-fun call!469191 () (InoxSet Context!10706))

(declare-fun call!469192 () (InoxSet Context!10706))

(assert (=> b!5918385 (= e!3623627 ((_ map or) call!469191 call!469192))))

(declare-fun bm!469182 () Bool)

(declare-fun call!469189 () (InoxSet Context!10706))

(assert (=> bm!469182 (= call!469189 call!469191)))

(declare-fun bm!469183 () Bool)

(declare-fun call!469187 () List!64206)

(declare-fun call!469188 () List!64206)

(assert (=> bm!469183 (= call!469187 call!469188)))

(declare-fun b!5918386 () Bool)

(declare-fun e!3623626 () (InoxSet Context!10706))

(declare-fun call!469190 () (InoxSet Context!10706))

(assert (=> b!5918386 (= e!3623626 call!469190)))

(declare-fun bm!469184 () Bool)

(declare-fun c!1051931 () Bool)

(declare-fun c!1051929 () Bool)

(assert (=> bm!469184 (= call!469188 ($colon$colon!1856 (exprs!5853 (ite c!1051754 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469061))) (ite (or c!1051931 c!1051929) (regTwo!32450 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))) (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))))

(declare-fun b!5918387 () Bool)

(assert (=> b!5918387 (= e!3623626 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5918388 () Bool)

(declare-fun e!3623623 () (InoxSet Context!10706))

(assert (=> b!5918388 (= e!3623623 ((_ map or) call!469192 call!469189))))

(declare-fun b!5918389 () Bool)

(declare-fun c!1051930 () Bool)

(assert (=> b!5918389 (= c!1051930 ((_ is Star!15969) (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))))

(declare-fun e!3623624 () (InoxSet Context!10706))

(assert (=> b!5918389 (= e!3623624 e!3623626)))

(declare-fun d!1856246 () Bool)

(declare-fun c!1051933 () Bool)

(assert (=> d!1856246 (= c!1051933 (and ((_ is ElementMatch!15969) (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))) (= (c!1051439 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))) (h!70532 s!2326))))))

(declare-fun e!3623625 () (InoxSet Context!10706))

(assert (=> d!1856246 (= (derivationStepZipperDown!1219 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))) (ite c!1051754 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469061)) (h!70532 s!2326)) e!3623625)))

(declare-fun c!1051932 () Bool)

(declare-fun bm!469185 () Bool)

(assert (=> bm!469185 (= call!469192 (derivationStepZipperDown!1219 (ite c!1051932 (regTwo!32451 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))) (regOne!32450 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))) (ite c!1051932 (ite c!1051754 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469061)) (Context!10707 call!469188)) (h!70532 s!2326)))))

(declare-fun b!5918390 () Bool)

(assert (=> b!5918390 (= e!3623625 (store ((as const (Array Context!10706 Bool)) false) (ite c!1051754 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469061)) true))))

(declare-fun bm!469186 () Bool)

(assert (=> bm!469186 (= call!469191 (derivationStepZipperDown!1219 (ite c!1051932 (regOne!32451 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))) (ite c!1051931 (regTwo!32450 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))) (ite c!1051929 (regOne!32450 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))) (reg!16298 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))) (ite (or c!1051932 c!1051931) (ite c!1051754 (ite c!1051503 (Context!10707 Nil!64082) (Context!10707 call!468926)) (Context!10707 call!469061)) (Context!10707 call!469187)) (h!70532 s!2326)))))

(declare-fun b!5918391 () Bool)

(declare-fun e!3623622 () Bool)

(assert (=> b!5918391 (= c!1051931 e!3623622)))

(declare-fun res!2481377 () Bool)

(assert (=> b!5918391 (=> (not res!2481377) (not e!3623622))))

(assert (=> b!5918391 (= res!2481377 ((_ is Concat!24814) (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))))

(assert (=> b!5918391 (= e!3623627 e!3623623)))

(declare-fun b!5918392 () Bool)

(assert (=> b!5918392 (= e!3623624 call!469190)))

(declare-fun b!5918393 () Bool)

(assert (=> b!5918393 (= e!3623623 e!3623624)))

(assert (=> b!5918393 (= c!1051929 ((_ is Concat!24814) (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))))

(declare-fun b!5918394 () Bool)

(assert (=> b!5918394 (= e!3623625 e!3623627)))

(assert (=> b!5918394 (= c!1051932 ((_ is Union!15969) (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))))))))

(declare-fun bm!469187 () Bool)

(assert (=> bm!469187 (= call!469190 call!469189)))

(declare-fun b!5918395 () Bool)

(assert (=> b!5918395 (= e!3623622 (nullable!5964 (regOne!32450 (ite c!1051754 (regTwo!32451 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))))

(assert (= (and d!1856246 c!1051933) b!5918390))

(assert (= (and d!1856246 (not c!1051933)) b!5918394))

(assert (= (and b!5918394 c!1051932) b!5918385))

(assert (= (and b!5918394 (not c!1051932)) b!5918391))

(assert (= (and b!5918391 res!2481377) b!5918395))

(assert (= (and b!5918391 c!1051931) b!5918388))

(assert (= (and b!5918391 (not c!1051931)) b!5918393))

(assert (= (and b!5918393 c!1051929) b!5918392))

(assert (= (and b!5918393 (not c!1051929)) b!5918389))

(assert (= (and b!5918389 c!1051930) b!5918386))

(assert (= (and b!5918389 (not c!1051930)) b!5918387))

(assert (= (or b!5918392 b!5918386) bm!469183))

(assert (= (or b!5918392 b!5918386) bm!469187))

(assert (= (or b!5918388 bm!469183) bm!469184))

(assert (= (or b!5918388 bm!469187) bm!469182))

(assert (= (or b!5918385 b!5918388) bm!469185))

(assert (= (or b!5918385 bm!469182) bm!469186))

(declare-fun m!6815700 () Bool)

(assert (=> b!5918390 m!6815700))

(declare-fun m!6815702 () Bool)

(assert (=> bm!469185 m!6815702))

(declare-fun m!6815704 () Bool)

(assert (=> bm!469186 m!6815704))

(declare-fun m!6815706 () Bool)

(assert (=> b!5918395 m!6815706))

(declare-fun m!6815708 () Bool)

(assert (=> bm!469184 m!6815708))

(assert (=> bm!469058 d!1856246))

(declare-fun d!1856252 () Bool)

(assert (=> d!1856252 true))

(assert (=> d!1856252 true))

(declare-fun res!2481383 () Bool)

(assert (=> d!1856252 (= (choose!44639 lambda!322857) res!2481383)))

(assert (=> d!1855880 d!1856252))

(declare-fun call!469199 () Regex!15969)

(declare-fun b!5918405 () Bool)

(declare-fun e!3623638 () Regex!15969)

(assert (=> b!5918405 (= e!3623638 (Concat!24814 call!469199 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))))))

(declare-fun b!5918406 () Bool)

(declare-fun e!3623639 () Regex!15969)

(declare-fun call!469196 () Regex!15969)

(declare-fun call!469197 () Regex!15969)

(assert (=> b!5918406 (= e!3623639 (Union!15969 call!469196 call!469197))))

(declare-fun c!1051938 () Bool)

(declare-fun b!5918407 () Bool)

(assert (=> b!5918407 (= c!1051938 ((_ is Union!15969) (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))))))

(declare-fun e!3623635 () Regex!15969)

(assert (=> b!5918407 (= e!3623635 e!3623639)))

(declare-fun e!3623636 () Regex!15969)

(declare-fun call!469198 () Regex!15969)

(declare-fun b!5918408 () Bool)

(assert (=> b!5918408 (= e!3623636 (Union!15969 (Concat!24814 call!469198 (regTwo!32450 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292))))) EmptyLang!15969))))

(declare-fun bm!469191 () Bool)

(declare-fun c!1051937 () Bool)

(assert (=> bm!469191 (= call!469197 (derivativeStep!4700 (ite c!1051938 (regTwo!32451 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))) (ite c!1051937 (reg!16298 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))) (regOne!32450 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))))) (head!12479 s!2326)))))

(declare-fun bm!469192 () Bool)

(assert (=> bm!469192 (= call!469199 call!469197)))

(declare-fun b!5918409 () Bool)

(assert (=> b!5918409 (= e!3623635 (ite (= (head!12479 s!2326) (c!1051439 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292))))) EmptyExpr!15969 EmptyLang!15969))))

(declare-fun b!5918410 () Bool)

(assert (=> b!5918410 (= e!3623639 e!3623638)))

(assert (=> b!5918410 (= c!1051937 ((_ is Star!15969) (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))))))

(declare-fun bm!469193 () Bool)

(assert (=> bm!469193 (= call!469198 call!469196)))

(declare-fun c!1051936 () Bool)

(declare-fun bm!469194 () Bool)

(assert (=> bm!469194 (= call!469196 (derivativeStep!4700 (ite c!1051938 (regOne!32451 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))) (ite c!1051936 (regTwo!32450 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))) (regOne!32450 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))))) (head!12479 s!2326)))))

(declare-fun b!5918411 () Bool)

(assert (=> b!5918411 (= e!3623636 (Union!15969 (Concat!24814 call!469199 (regTwo!32450 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292))))) call!469198))))

(declare-fun b!5918412 () Bool)

(assert (=> b!5918412 (= c!1051936 (nullable!5964 (regOne!32450 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292))))))))

(assert (=> b!5918412 (= e!3623638 e!3623636)))

(declare-fun b!5918413 () Bool)

(declare-fun e!3623637 () Regex!15969)

(assert (=> b!5918413 (= e!3623637 e!3623635)))

(declare-fun c!1051939 () Bool)

(assert (=> b!5918413 (= c!1051939 ((_ is ElementMatch!15969) (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))))))

(declare-fun d!1856254 () Bool)

(declare-fun lt!2309860 () Regex!15969)

(assert (=> d!1856254 (validRegex!7705 lt!2309860)))

(assert (=> d!1856254 (= lt!2309860 e!3623637)))

(declare-fun c!1051940 () Bool)

(assert (=> d!1856254 (= c!1051940 (or ((_ is EmptyExpr!15969) (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292)))) ((_ is EmptyLang!15969) (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292))))))))

(assert (=> d!1856254 (validRegex!7705 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292))))))

(assert (=> d!1856254 (= (derivativeStep!4700 (ite c!1051645 (regOne!32451 r!7292) (ite c!1051643 (regTwo!32450 r!7292) (regOne!32450 r!7292))) (head!12479 s!2326)) lt!2309860)))

(declare-fun b!5918414 () Bool)

(assert (=> b!5918414 (= e!3623637 EmptyLang!15969)))

(assert (= (and d!1856254 c!1051940) b!5918414))

(assert (= (and d!1856254 (not c!1051940)) b!5918413))

(assert (= (and b!5918413 c!1051939) b!5918409))

(assert (= (and b!5918413 (not c!1051939)) b!5918407))

(assert (= (and b!5918407 c!1051938) b!5918406))

(assert (= (and b!5918407 (not c!1051938)) b!5918410))

(assert (= (and b!5918410 c!1051937) b!5918405))

(assert (= (and b!5918410 (not c!1051937)) b!5918412))

(assert (= (and b!5918412 c!1051936) b!5918411))

(assert (= (and b!5918412 (not c!1051936)) b!5918408))

(assert (= (or b!5918411 b!5918408) bm!469193))

(assert (= (or b!5918405 b!5918411) bm!469192))

(assert (= (or b!5918406 bm!469192) bm!469191))

(assert (= (or b!5918406 bm!469193) bm!469194))

(assert (=> bm!469191 m!6814250))

(declare-fun m!6815716 () Bool)

(assert (=> bm!469191 m!6815716))

(assert (=> bm!469194 m!6814250))

(declare-fun m!6815718 () Bool)

(assert (=> bm!469194 m!6815718))

(declare-fun m!6815720 () Bool)

(assert (=> b!5918412 m!6815720))

(declare-fun m!6815722 () Bool)

(assert (=> d!1856254 m!6815722))

(declare-fun m!6815724 () Bool)

(assert (=> d!1856254 m!6815724))

(assert (=> bm!468983 d!1856254))

(assert (=> b!5917080 d!1856192))

(assert (=> b!5917080 d!1856096))

(assert (=> bm!469047 d!1855664))

(declare-fun d!1856258 () Bool)

(assert (=> d!1856258 (= (nullable!5964 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))) (nullableFct!1935 (regOne!32450 (ite c!1051503 (regTwo!32451 r!7292) (regOne!32450 r!7292)))))))

(declare-fun bs!1401073 () Bool)

(assert (= bs!1401073 d!1856258))

(declare-fun m!6815726 () Bool)

(assert (=> bs!1401073 m!6815726))

(assert (=> b!5917572 d!1856258))

(assert (=> bm!468966 d!1855664))

(declare-fun b!5918424 () Bool)

(declare-fun e!3623652 () Bool)

(declare-fun e!3623647 () Bool)

(assert (=> b!5918424 (= e!3623652 e!3623647)))

(declare-fun c!1051944 () Bool)

(assert (=> b!5918424 (= c!1051944 ((_ is Union!15969) (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))))))

(declare-fun b!5918425 () Bool)

(declare-fun e!3623651 () Bool)

(declare-fun call!469204 () Bool)

(assert (=> b!5918425 (= e!3623651 call!469204)))

(declare-fun d!1856260 () Bool)

(declare-fun res!2481391 () Bool)

(declare-fun e!3623653 () Bool)

(assert (=> d!1856260 (=> res!2481391 e!3623653)))

(assert (=> d!1856260 (= res!2481391 ((_ is ElementMatch!15969) (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))))))

(assert (=> d!1856260 (= (validRegex!7705 (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))) e!3623653)))

(declare-fun b!5918426 () Bool)

(declare-fun e!3623648 () Bool)

(declare-fun call!469205 () Bool)

(assert (=> b!5918426 (= e!3623648 call!469205)))

(declare-fun b!5918427 () Bool)

(declare-fun res!2481390 () Bool)

(declare-fun e!3623649 () Bool)

(assert (=> b!5918427 (=> (not res!2481390) (not e!3623649))))

(declare-fun call!469203 () Bool)

(assert (=> b!5918427 (= res!2481390 call!469203)))

(assert (=> b!5918427 (= e!3623647 e!3623649)))

(declare-fun b!5918428 () Bool)

(declare-fun e!3623650 () Bool)

(assert (=> b!5918428 (= e!3623650 e!3623651)))

(declare-fun res!2481392 () Bool)

(assert (=> b!5918428 (=> (not res!2481392) (not e!3623651))))

(assert (=> b!5918428 (= res!2481392 call!469203)))

(declare-fun b!5918429 () Bool)

(assert (=> b!5918429 (= e!3623652 e!3623648)))

(declare-fun res!2481393 () Bool)

(assert (=> b!5918429 (= res!2481393 (not (nullable!5964 (reg!16298 (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))))))))

(assert (=> b!5918429 (=> (not res!2481393) (not e!3623648))))

(declare-fun bm!469198 () Bool)

(assert (=> bm!469198 (= call!469203 (validRegex!7705 (ite c!1051944 (regOne!32451 (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))) (regOne!32450 (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))))))))

(declare-fun b!5918430 () Bool)

(declare-fun res!2481389 () Bool)

(assert (=> b!5918430 (=> res!2481389 e!3623650)))

(assert (=> b!5918430 (= res!2481389 (not ((_ is Concat!24814) (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292)))))))))

(assert (=> b!5918430 (= e!3623647 e!3623650)))

(declare-fun b!5918431 () Bool)

(assert (=> b!5918431 (= e!3623653 e!3623652)))

(declare-fun c!1051943 () Bool)

(assert (=> b!5918431 (= c!1051943 ((_ is Star!15969) (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))))))

(declare-fun b!5918432 () Bool)

(assert (=> b!5918432 (= e!3623649 call!469204)))

(declare-fun bm!469199 () Bool)

(assert (=> bm!469199 (= call!469204 call!469205)))

(declare-fun bm!469200 () Bool)

(assert (=> bm!469200 (= call!469205 (validRegex!7705 (ite c!1051943 (reg!16298 (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))) (ite c!1051944 (regTwo!32451 (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292))))) (regTwo!32450 (ite c!1051605 (reg!16298 (regOne!32450 r!7292)) (ite c!1051606 (regTwo!32451 (regOne!32450 r!7292)) (regTwo!32450 (regOne!32450 r!7292)))))))))))

(assert (= (and d!1856260 (not res!2481391)) b!5918431))

(assert (= (and b!5918431 c!1051943) b!5918429))

(assert (= (and b!5918431 (not c!1051943)) b!5918424))

(assert (= (and b!5918429 res!2481393) b!5918426))

(assert (= (and b!5918424 c!1051944) b!5918427))

(assert (= (and b!5918424 (not c!1051944)) b!5918430))

(assert (= (and b!5918427 res!2481390) b!5918432))

(assert (= (and b!5918430 (not res!2481389)) b!5918428))

(assert (= (and b!5918428 res!2481392) b!5918425))

(assert (= (or b!5918432 b!5918425) bm!469199))

(assert (= (or b!5918427 b!5918428) bm!469198))

(assert (= (or b!5918426 bm!469199) bm!469200))

(declare-fun m!6815732 () Bool)

(assert (=> b!5918429 m!6815732))

(declare-fun m!6815734 () Bool)

(assert (=> bm!469198 m!6815734))

(declare-fun m!6815736 () Bool)

(assert (=> bm!469200 m!6815736))

(assert (=> bm!468961 d!1856260))

(assert (=> d!1855770 d!1855604))

(assert (=> d!1855770 d!1855596))

(assert (=> d!1855812 d!1855660))

(assert (=> d!1855812 d!1855634))

(declare-fun d!1856264 () Bool)

(assert (=> d!1856264 (= (Exists!3039 lambda!322879) (choose!44639 lambda!322879))))

(declare-fun bs!1401074 () Bool)

(assert (= bs!1401074 d!1856264))

(declare-fun m!6815740 () Bool)

(assert (=> bs!1401074 m!6815740))

(assert (=> d!1855812 d!1856264))

(declare-fun d!1856266 () Bool)

(declare-fun res!2481399 () Bool)

(declare-fun e!3623661 () Bool)

(assert (=> d!1856266 (=> res!2481399 e!3623661)))

(assert (=> d!1856266 (= res!2481399 ((_ is Nil!64082) (t!377595 (exprs!5853 (h!70531 zl!343)))))))

(assert (=> d!1856266 (= (forall!15051 (t!377595 (exprs!5853 (h!70531 zl!343))) lambda!322838) e!3623661)))

(declare-fun b!5918442 () Bool)

(declare-fun e!3623662 () Bool)

(assert (=> b!5918442 (= e!3623661 e!3623662)))

(declare-fun res!2481400 () Bool)

(assert (=> b!5918442 (=> (not res!2481400) (not e!3623662))))

(assert (=> b!5918442 (= res!2481400 (dynLambda!25053 lambda!322838 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun b!5918443 () Bool)

(assert (=> b!5918443 (= e!3623662 (forall!15051 (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))) lambda!322838))))

(assert (= (and d!1856266 (not res!2481399)) b!5918442))

(assert (= (and b!5918442 res!2481400) b!5918443))

(declare-fun b_lambda!222319 () Bool)

(assert (=> (not b_lambda!222319) (not b!5918442)))

(declare-fun m!6815742 () Bool)

(assert (=> b!5918442 m!6815742))

(declare-fun m!6815744 () Bool)

(assert (=> b!5918443 m!6815744))

(assert (=> b!5917186 d!1856266))

(declare-fun d!1856268 () Bool)

(assert (=> d!1856268 (= (Exists!3039 (ite c!1051735 lambda!322890 lambda!322891)) (choose!44639 (ite c!1051735 lambda!322890 lambda!322891)))))

(declare-fun bs!1401075 () Bool)

(assert (= bs!1401075 d!1856268))

(declare-fun m!6815746 () Bool)

(assert (=> bs!1401075 m!6815746))

(assert (=> bm!469046 d!1856268))

(assert (=> b!5917309 d!1855840))

(assert (=> b!5917183 d!1856150))

(assert (=> b!5917183 d!1856110))

(assert (=> b!5917557 d!1855760))

(assert (=> b!5917557 d!1855720))

(declare-fun b!5918444 () Bool)

(declare-fun e!3623668 () Bool)

(declare-fun e!3623663 () Bool)

(assert (=> b!5918444 (= e!3623668 e!3623663)))

(declare-fun c!1051948 () Bool)

(assert (=> b!5918444 (= c!1051948 ((_ is Union!15969) (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))

(declare-fun b!5918445 () Bool)

(declare-fun e!3623667 () Bool)

(declare-fun call!469210 () Bool)

(assert (=> b!5918445 (= e!3623667 call!469210)))

(declare-fun d!1856270 () Bool)

(declare-fun res!2481403 () Bool)

(declare-fun e!3623669 () Bool)

(assert (=> d!1856270 (=> res!2481403 e!3623669)))

(assert (=> d!1856270 (= res!2481403 ((_ is ElementMatch!15969) (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))

(assert (=> d!1856270 (= (validRegex!7705 (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))) e!3623669)))

(declare-fun b!5918446 () Bool)

(declare-fun e!3623664 () Bool)

(declare-fun call!469211 () Bool)

(assert (=> b!5918446 (= e!3623664 call!469211)))

(declare-fun b!5918447 () Bool)

(declare-fun res!2481402 () Bool)

(declare-fun e!3623665 () Bool)

(assert (=> b!5918447 (=> (not res!2481402) (not e!3623665))))

(declare-fun call!469209 () Bool)

(assert (=> b!5918447 (= res!2481402 call!469209)))

(assert (=> b!5918447 (= e!3623663 e!3623665)))

(declare-fun b!5918448 () Bool)

(declare-fun e!3623666 () Bool)

(assert (=> b!5918448 (= e!3623666 e!3623667)))

(declare-fun res!2481404 () Bool)

(assert (=> b!5918448 (=> (not res!2481404) (not e!3623667))))

(assert (=> b!5918448 (= res!2481404 call!469209)))

(declare-fun b!5918449 () Bool)

(assert (=> b!5918449 (= e!3623668 e!3623664)))

(declare-fun res!2481405 () Bool)

(assert (=> b!5918449 (= res!2481405 (not (nullable!5964 (reg!16298 (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))))

(assert (=> b!5918449 (=> (not res!2481405) (not e!3623664))))

(declare-fun bm!469204 () Bool)

(assert (=> bm!469204 (= call!469209 (validRegex!7705 (ite c!1051948 (regOne!32451 (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))) (regOne!32450 (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))))

(declare-fun b!5918450 () Bool)

(declare-fun res!2481401 () Bool)

(assert (=> b!5918450 (=> res!2481401 e!3623666)))

(assert (=> b!5918450 (= res!2481401 (not ((_ is Concat!24814) (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))))

(assert (=> b!5918450 (= e!3623663 e!3623666)))

(declare-fun b!5918451 () Bool)

(assert (=> b!5918451 (= e!3623669 e!3623668)))

(declare-fun c!1051947 () Bool)

(assert (=> b!5918451 (= c!1051947 ((_ is Star!15969) (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))))))

(declare-fun b!5918452 () Bool)

(assert (=> b!5918452 (= e!3623665 call!469210)))

(declare-fun bm!469205 () Bool)

(assert (=> bm!469205 (= call!469210 call!469211)))

(declare-fun bm!469206 () Bool)

(assert (=> bm!469206 (= call!469211 (validRegex!7705 (ite c!1051947 (reg!16298 (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))) (ite c!1051948 (regTwo!32451 (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))))) (regTwo!32450 (ite c!1051732 (regOne!32451 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292))) (regOne!32450 (ite c!1051601 (regOne!32451 r!7292) (regOne!32450 r!7292)))))))))))

(assert (= (and d!1856270 (not res!2481403)) b!5918451))

(assert (= (and b!5918451 c!1051947) b!5918449))

(assert (= (and b!5918451 (not c!1051947)) b!5918444))

(assert (= (and b!5918449 res!2481405) b!5918446))

(assert (= (and b!5918444 c!1051948) b!5918447))

(assert (= (and b!5918444 (not c!1051948)) b!5918450))

(assert (= (and b!5918447 res!2481402) b!5918452))

(assert (= (and b!5918450 (not res!2481401)) b!5918448))

(assert (= (and b!5918448 res!2481404) b!5918445))

(assert (= (or b!5918452 b!5918445) bm!469205))

(assert (= (or b!5918447 b!5918448) bm!469204))

(assert (= (or b!5918446 bm!469205) bm!469206))

(declare-fun m!6815750 () Bool)

(assert (=> b!5918449 m!6815750))

(declare-fun m!6815754 () Bool)

(assert (=> bm!469204 m!6815754))

(declare-fun m!6815756 () Bool)

(assert (=> bm!469206 m!6815756))

(assert (=> bm!469040 d!1856270))

(declare-fun d!1856272 () Bool)

(declare-fun c!1051949 () Bool)

(assert (=> d!1856272 (= c!1051949 ((_ is Nil!64083) res!2480970))))

(declare-fun e!3623670 () (InoxSet Context!10706))

(assert (=> d!1856272 (= (content!11795 res!2480970) e!3623670)))

(declare-fun b!5918453 () Bool)

(assert (=> b!5918453 (= e!3623670 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5918454 () Bool)

(assert (=> b!5918454 (= e!3623670 ((_ map or) (store ((as const (Array Context!10706 Bool)) false) (h!70531 res!2480970) true) (content!11795 (t!377596 res!2480970))))))

(assert (= (and d!1856272 c!1051949) b!5918453))

(assert (= (and d!1856272 (not c!1051949)) b!5918454))

(declare-fun m!6815760 () Bool)

(assert (=> b!5918454 m!6815760))

(declare-fun m!6815762 () Bool)

(assert (=> b!5918454 m!6815762))

(assert (=> b!5917209 d!1856272))

(declare-fun b!5918455 () Bool)

(declare-fun e!3623675 () Bool)

(declare-fun e!3623674 () Bool)

(assert (=> b!5918455 (= e!3623675 e!3623674)))

(declare-fun res!2481410 () Bool)

(assert (=> b!5918455 (=> (not res!2481410) (not e!3623674))))

(assert (=> b!5918455 (= res!2481410 (and (not ((_ is EmptyLang!15969) (reg!16298 r!7292))) (not ((_ is ElementMatch!15969) (reg!16298 r!7292)))))))

(declare-fun b!5918456 () Bool)

(declare-fun e!3623676 () Bool)

(declare-fun call!469213 () Bool)

(assert (=> b!5918456 (= e!3623676 call!469213)))

(declare-fun b!5918457 () Bool)

(declare-fun e!3623673 () Bool)

(declare-fun e!3623672 () Bool)

(assert (=> b!5918457 (= e!3623673 e!3623672)))

(declare-fun c!1051950 () Bool)

(assert (=> b!5918457 (= c!1051950 ((_ is Union!15969) (reg!16298 r!7292)))))

(declare-fun b!5918458 () Bool)

(assert (=> b!5918458 (= e!3623672 e!3623676)))

(declare-fun res!2481409 () Bool)

(declare-fun call!469212 () Bool)

(assert (=> b!5918458 (= res!2481409 call!469212)))

(assert (=> b!5918458 (=> (not res!2481409) (not e!3623676))))

(declare-fun d!1856276 () Bool)

(declare-fun res!2481407 () Bool)

(assert (=> d!1856276 (=> res!2481407 e!3623675)))

(assert (=> d!1856276 (= res!2481407 ((_ is EmptyExpr!15969) (reg!16298 r!7292)))))

(assert (=> d!1856276 (= (nullableFct!1935 (reg!16298 r!7292)) e!3623675)))

(declare-fun b!5918459 () Bool)

(declare-fun e!3623671 () Bool)

(assert (=> b!5918459 (= e!3623671 call!469213)))

(declare-fun b!5918460 () Bool)

(assert (=> b!5918460 (= e!3623674 e!3623673)))

(declare-fun res!2481406 () Bool)

(assert (=> b!5918460 (=> res!2481406 e!3623673)))

(assert (=> b!5918460 (= res!2481406 ((_ is Star!15969) (reg!16298 r!7292)))))

(declare-fun bm!469207 () Bool)

(assert (=> bm!469207 (= call!469212 (nullable!5964 (ite c!1051950 (regOne!32451 (reg!16298 r!7292)) (regOne!32450 (reg!16298 r!7292)))))))

(declare-fun bm!469208 () Bool)

(assert (=> bm!469208 (= call!469213 (nullable!5964 (ite c!1051950 (regTwo!32451 (reg!16298 r!7292)) (regTwo!32450 (reg!16298 r!7292)))))))

(declare-fun b!5918461 () Bool)

(assert (=> b!5918461 (= e!3623672 e!3623671)))

(declare-fun res!2481408 () Bool)

(assert (=> b!5918461 (= res!2481408 call!469212)))

(assert (=> b!5918461 (=> res!2481408 e!3623671)))

(assert (= (and d!1856276 (not res!2481407)) b!5918455))

(assert (= (and b!5918455 res!2481410) b!5918460))

(assert (= (and b!5918460 (not res!2481406)) b!5918457))

(assert (= (and b!5918457 c!1051950) b!5918461))

(assert (= (and b!5918457 (not c!1051950)) b!5918458))

(assert (= (and b!5918461 (not res!2481408)) b!5918459))

(assert (= (and b!5918458 res!2481409) b!5918456))

(assert (= (or b!5918459 b!5918456) bm!469208))

(assert (= (or b!5918461 b!5918458) bm!469207))

(declare-fun m!6815766 () Bool)

(assert (=> bm!469207 m!6815766))

(declare-fun m!6815768 () Bool)

(assert (=> bm!469208 m!6815768))

(assert (=> d!1855732 d!1856276))

(declare-fun d!1856284 () Bool)

(declare-fun e!3623690 () Bool)

(assert (=> d!1856284 e!3623690))

(declare-fun c!1051953 () Bool)

(assert (=> d!1856284 (= c!1051953 ((_ is EmptyExpr!15969) (regOne!32450 r!7292)))))

(declare-fun lt!2309861 () Bool)

(declare-fun e!3623689 () Bool)

(assert (=> d!1856284 (= lt!2309861 e!3623689)))

(declare-fun c!1051954 () Bool)

(assert (=> d!1856284 (= c!1051954 (isEmpty!35940 (_1!36251 (get!22066 lt!2309801))))))

(assert (=> d!1856284 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1856284 (= (matchR!8152 (regOne!32450 r!7292) (_1!36251 (get!22066 lt!2309801))) lt!2309861)))

(declare-fun b!5918471 () Bool)

(assert (=> b!5918471 (= e!3623689 (nullable!5964 (regOne!32450 r!7292)))))

(declare-fun b!5918472 () Bool)

(declare-fun call!469217 () Bool)

(assert (=> b!5918472 (= e!3623690 (= lt!2309861 call!469217))))

(declare-fun b!5918473 () Bool)

(assert (=> b!5918473 (= e!3623689 (matchR!8152 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309801)))) (tail!11564 (_1!36251 (get!22066 lt!2309801)))))))

(declare-fun b!5918474 () Bool)

(declare-fun res!2481418 () Bool)

(declare-fun e!3623688 () Bool)

(assert (=> b!5918474 (=> (not res!2481418) (not e!3623688))))

(assert (=> b!5918474 (= res!2481418 (not call!469217))))

(declare-fun b!5918475 () Bool)

(declare-fun e!3623686 () Bool)

(declare-fun e!3623685 () Bool)

(assert (=> b!5918475 (= e!3623686 e!3623685)))

(declare-fun res!2481420 () Bool)

(assert (=> b!5918475 (=> res!2481420 e!3623685)))

(assert (=> b!5918475 (= res!2481420 call!469217)))

(declare-fun b!5918476 () Bool)

(declare-fun e!3623684 () Bool)

(assert (=> b!5918476 (= e!3623684 (not lt!2309861))))

(declare-fun b!5918477 () Bool)

(assert (=> b!5918477 (= e!3623688 (= (head!12479 (_1!36251 (get!22066 lt!2309801))) (c!1051439 (regOne!32450 r!7292))))))

(declare-fun b!5918478 () Bool)

(declare-fun e!3623687 () Bool)

(assert (=> b!5918478 (= e!3623687 e!3623686)))

(declare-fun res!2481421 () Bool)

(assert (=> b!5918478 (=> (not res!2481421) (not e!3623686))))

(assert (=> b!5918478 (= res!2481421 (not lt!2309861))))

(declare-fun b!5918479 () Bool)

(assert (=> b!5918479 (= e!3623685 (not (= (head!12479 (_1!36251 (get!22066 lt!2309801))) (c!1051439 (regOne!32450 r!7292)))))))

(declare-fun b!5918480 () Bool)

(declare-fun res!2481419 () Bool)

(assert (=> b!5918480 (=> res!2481419 e!3623687)))

(assert (=> b!5918480 (= res!2481419 e!3623688)))

(declare-fun res!2481423 () Bool)

(assert (=> b!5918480 (=> (not res!2481423) (not e!3623688))))

(assert (=> b!5918480 (= res!2481423 lt!2309861)))

(declare-fun b!5918481 () Bool)

(declare-fun res!2481416 () Bool)

(assert (=> b!5918481 (=> res!2481416 e!3623687)))

(assert (=> b!5918481 (= res!2481416 (not ((_ is ElementMatch!15969) (regOne!32450 r!7292))))))

(assert (=> b!5918481 (= e!3623684 e!3623687)))

(declare-fun b!5918482 () Bool)

(assert (=> b!5918482 (= e!3623690 e!3623684)))

(declare-fun c!1051955 () Bool)

(assert (=> b!5918482 (= c!1051955 ((_ is EmptyLang!15969) (regOne!32450 r!7292)))))

(declare-fun bm!469212 () Bool)

(assert (=> bm!469212 (= call!469217 (isEmpty!35940 (_1!36251 (get!22066 lt!2309801))))))

(declare-fun b!5918483 () Bool)

(declare-fun res!2481417 () Bool)

(assert (=> b!5918483 (=> res!2481417 e!3623685)))

(assert (=> b!5918483 (= res!2481417 (not (isEmpty!35940 (tail!11564 (_1!36251 (get!22066 lt!2309801))))))))

(declare-fun b!5918484 () Bool)

(declare-fun res!2481422 () Bool)

(assert (=> b!5918484 (=> (not res!2481422) (not e!3623688))))

(assert (=> b!5918484 (= res!2481422 (isEmpty!35940 (tail!11564 (_1!36251 (get!22066 lt!2309801)))))))

(assert (= (and d!1856284 c!1051954) b!5918471))

(assert (= (and d!1856284 (not c!1051954)) b!5918473))

(assert (= (and d!1856284 c!1051953) b!5918472))

(assert (= (and d!1856284 (not c!1051953)) b!5918482))

(assert (= (and b!5918482 c!1051955) b!5918476))

(assert (= (and b!5918482 (not c!1051955)) b!5918481))

(assert (= (and b!5918481 (not res!2481416)) b!5918480))

(assert (= (and b!5918480 res!2481423) b!5918474))

(assert (= (and b!5918474 res!2481418) b!5918484))

(assert (= (and b!5918484 res!2481422) b!5918477))

(assert (= (and b!5918480 (not res!2481419)) b!5918478))

(assert (= (and b!5918478 res!2481421) b!5918475))

(assert (= (and b!5918475 (not res!2481420)) b!5918483))

(assert (= (and b!5918483 (not res!2481417)) b!5918479))

(assert (= (or b!5918472 b!5918474 b!5918475) bm!469212))

(assert (=> b!5918471 m!6814198))

(declare-fun m!6815770 () Bool)

(assert (=> b!5918483 m!6815770))

(assert (=> b!5918483 m!6815770))

(declare-fun m!6815772 () Bool)

(assert (=> b!5918483 m!6815772))

(assert (=> b!5918484 m!6815770))

(assert (=> b!5918484 m!6815770))

(assert (=> b!5918484 m!6815772))

(declare-fun m!6815774 () Bool)

(assert (=> b!5918473 m!6815774))

(assert (=> b!5918473 m!6815774))

(declare-fun m!6815776 () Bool)

(assert (=> b!5918473 m!6815776))

(assert (=> b!5918473 m!6815770))

(assert (=> b!5918473 m!6815776))

(assert (=> b!5918473 m!6815770))

(declare-fun m!6815778 () Bool)

(assert (=> b!5918473 m!6815778))

(declare-fun m!6815780 () Bool)

(assert (=> d!1856284 m!6815780))

(assert (=> d!1856284 m!6814340))

(assert (=> b!5918479 m!6815774))

(assert (=> b!5918477 m!6815774))

(assert (=> bm!469212 m!6815780))

(assert (=> b!5917300 d!1856284))

(assert (=> b!5917300 d!1856078))

(declare-fun d!1856286 () Bool)

(assert (=> d!1856286 (= (nullable!5964 (derivativeStep!4700 r!7292 (head!12479 s!2326))) (nullableFct!1935 (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun bs!1401077 () Bool)

(assert (= bs!1401077 d!1856286))

(assert (=> bs!1401077 m!6814252))

(declare-fun m!6815784 () Bool)

(assert (=> bs!1401077 m!6815784))

(assert (=> b!5917068 d!1856286))

(declare-fun b!5918485 () Bool)

(declare-fun e!3623696 () Bool)

(declare-fun e!3623691 () Bool)

(assert (=> b!5918485 (= e!3623696 e!3623691)))

(declare-fun c!1051957 () Bool)

(assert (=> b!5918485 (= c!1051957 ((_ is Union!15969) (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))))))

(declare-fun b!5918486 () Bool)

(declare-fun e!3623695 () Bool)

(declare-fun call!469219 () Bool)

(assert (=> b!5918486 (= e!3623695 call!469219)))

(declare-fun d!1856288 () Bool)

(declare-fun res!2481426 () Bool)

(declare-fun e!3623697 () Bool)

(assert (=> d!1856288 (=> res!2481426 e!3623697)))

(assert (=> d!1856288 (= res!2481426 ((_ is ElementMatch!15969) (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))))))

(assert (=> d!1856288 (= (validRegex!7705 (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))) e!3623697)))

(declare-fun b!5918487 () Bool)

(declare-fun e!3623692 () Bool)

(declare-fun call!469220 () Bool)

(assert (=> b!5918487 (= e!3623692 call!469220)))

(declare-fun b!5918488 () Bool)

(declare-fun res!2481425 () Bool)

(declare-fun e!3623693 () Bool)

(assert (=> b!5918488 (=> (not res!2481425) (not e!3623693))))

(declare-fun call!469218 () Bool)

(assert (=> b!5918488 (= res!2481425 call!469218)))

(assert (=> b!5918488 (= e!3623691 e!3623693)))

(declare-fun b!5918489 () Bool)

(declare-fun e!3623694 () Bool)

(assert (=> b!5918489 (= e!3623694 e!3623695)))

(declare-fun res!2481427 () Bool)

(assert (=> b!5918489 (=> (not res!2481427) (not e!3623695))))

(assert (=> b!5918489 (= res!2481427 call!469218)))

(declare-fun b!5918490 () Bool)

(assert (=> b!5918490 (= e!3623696 e!3623692)))

(declare-fun res!2481428 () Bool)

(assert (=> b!5918490 (= res!2481428 (not (nullable!5964 (reg!16298 (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))))))))

(assert (=> b!5918490 (=> (not res!2481428) (not e!3623692))))

(declare-fun bm!469213 () Bool)

(assert (=> bm!469213 (= call!469218 (validRegex!7705 (ite c!1051957 (regOne!32451 (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))) (regOne!32450 (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))))))))

(declare-fun b!5918491 () Bool)

(declare-fun res!2481424 () Bool)

(assert (=> b!5918491 (=> res!2481424 e!3623694)))

(assert (=> b!5918491 (= res!2481424 (not ((_ is Concat!24814) (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701))))))))

(assert (=> b!5918491 (= e!3623691 e!3623694)))

(declare-fun b!5918492 () Bool)

(assert (=> b!5918492 (= e!3623697 e!3623696)))

(declare-fun c!1051956 () Bool)

(assert (=> b!5918492 (= c!1051956 ((_ is Star!15969) (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))))))

(declare-fun b!5918493 () Bool)

(assert (=> b!5918493 (= e!3623693 call!469219)))

(declare-fun bm!469214 () Bool)

(assert (=> bm!469214 (= call!469219 call!469220)))

(declare-fun bm!469215 () Bool)

(assert (=> bm!469215 (= call!469220 (validRegex!7705 (ite c!1051956 (reg!16298 (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))) (ite c!1051957 (regTwo!32451 (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701)))) (regTwo!32450 (ite c!1051607 (reg!16298 lt!2309701) (ite c!1051608 (regTwo!32451 lt!2309701) (regTwo!32450 lt!2309701))))))))))

(assert (= (and d!1856288 (not res!2481426)) b!5918492))

(assert (= (and b!5918492 c!1051956) b!5918490))

(assert (= (and b!5918492 (not c!1051956)) b!5918485))

(assert (= (and b!5918490 res!2481428) b!5918487))

(assert (= (and b!5918485 c!1051957) b!5918488))

(assert (= (and b!5918485 (not c!1051957)) b!5918491))

(assert (= (and b!5918488 res!2481425) b!5918493))

(assert (= (and b!5918491 (not res!2481424)) b!5918489))

(assert (= (and b!5918489 res!2481427) b!5918486))

(assert (= (or b!5918493 b!5918486) bm!469214))

(assert (= (or b!5918488 b!5918489) bm!469213))

(assert (= (or b!5918487 bm!469214) bm!469215))

(declare-fun m!6815790 () Bool)

(assert (=> b!5918490 m!6815790))

(declare-fun m!6815792 () Bool)

(assert (=> bm!469213 m!6815792))

(declare-fun m!6815794 () Bool)

(assert (=> bm!469215 m!6815794))

(assert (=> bm!468964 d!1856288))

(assert (=> d!1855700 d!1855760))

(declare-fun b!5918505 () Bool)

(declare-fun e!3623709 () Bool)

(declare-fun e!3623704 () Bool)

(assert (=> b!5918505 (= e!3623709 e!3623704)))

(declare-fun c!1051964 () Bool)

(assert (=> b!5918505 (= c!1051964 ((_ is Union!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun b!5918506 () Bool)

(declare-fun e!3623708 () Bool)

(declare-fun call!469228 () Bool)

(assert (=> b!5918506 (= e!3623708 call!469228)))

(declare-fun d!1856292 () Bool)

(declare-fun res!2481432 () Bool)

(declare-fun e!3623710 () Bool)

(assert (=> d!1856292 (=> res!2481432 e!3623710)))

(assert (=> d!1856292 (= res!2481432 ((_ is ElementMatch!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(assert (=> d!1856292 (= (validRegex!7705 (derivativeStep!4700 r!7292 (head!12479 s!2326))) e!3623710)))

(declare-fun b!5918507 () Bool)

(declare-fun e!3623705 () Bool)

(declare-fun call!469229 () Bool)

(assert (=> b!5918507 (= e!3623705 call!469229)))

(declare-fun b!5918508 () Bool)

(declare-fun res!2481431 () Bool)

(declare-fun e!3623706 () Bool)

(assert (=> b!5918508 (=> (not res!2481431) (not e!3623706))))

(declare-fun call!469227 () Bool)

(assert (=> b!5918508 (= res!2481431 call!469227)))

(assert (=> b!5918508 (= e!3623704 e!3623706)))

(declare-fun b!5918509 () Bool)

(declare-fun e!3623707 () Bool)

(assert (=> b!5918509 (= e!3623707 e!3623708)))

(declare-fun res!2481433 () Bool)

(assert (=> b!5918509 (=> (not res!2481433) (not e!3623708))))

(assert (=> b!5918509 (= res!2481433 call!469227)))

(declare-fun b!5918510 () Bool)

(assert (=> b!5918510 (= e!3623709 e!3623705)))

(declare-fun res!2481434 () Bool)

(assert (=> b!5918510 (= res!2481434 (not (nullable!5964 (reg!16298 (derivativeStep!4700 r!7292 (head!12479 s!2326))))))))

(assert (=> b!5918510 (=> (not res!2481434) (not e!3623705))))

(declare-fun bm!469222 () Bool)

(assert (=> bm!469222 (= call!469227 (validRegex!7705 (ite c!1051964 (regOne!32451 (derivativeStep!4700 r!7292 (head!12479 s!2326))) (regOne!32450 (derivativeStep!4700 r!7292 (head!12479 s!2326))))))))

(declare-fun b!5918511 () Bool)

(declare-fun res!2481430 () Bool)

(assert (=> b!5918511 (=> res!2481430 e!3623707)))

(assert (=> b!5918511 (= res!2481430 (not ((_ is Concat!24814) (derivativeStep!4700 r!7292 (head!12479 s!2326)))))))

(assert (=> b!5918511 (= e!3623704 e!3623707)))

(declare-fun b!5918512 () Bool)

(assert (=> b!5918512 (= e!3623710 e!3623709)))

(declare-fun c!1051963 () Bool)

(assert (=> b!5918512 (= c!1051963 ((_ is Star!15969) (derivativeStep!4700 r!7292 (head!12479 s!2326))))))

(declare-fun b!5918513 () Bool)

(assert (=> b!5918513 (= e!3623706 call!469228)))

(declare-fun bm!469223 () Bool)

(assert (=> bm!469223 (= call!469228 call!469229)))

(declare-fun bm!469224 () Bool)

(assert (=> bm!469224 (= call!469229 (validRegex!7705 (ite c!1051963 (reg!16298 (derivativeStep!4700 r!7292 (head!12479 s!2326))) (ite c!1051964 (regTwo!32451 (derivativeStep!4700 r!7292 (head!12479 s!2326))) (regTwo!32450 (derivativeStep!4700 r!7292 (head!12479 s!2326)))))))))

(assert (= (and d!1856292 (not res!2481432)) b!5918512))

(assert (= (and b!5918512 c!1051963) b!5918510))

(assert (= (and b!5918512 (not c!1051963)) b!5918505))

(assert (= (and b!5918510 res!2481434) b!5918507))

(assert (= (and b!5918505 c!1051964) b!5918508))

(assert (= (and b!5918505 (not c!1051964)) b!5918511))

(assert (= (and b!5918508 res!2481431) b!5918513))

(assert (= (and b!5918511 (not res!2481430)) b!5918509))

(assert (= (and b!5918509 res!2481433) b!5918506))

(assert (= (or b!5918513 b!5918506) bm!469223))

(assert (= (or b!5918508 b!5918509) bm!469222))

(assert (= (or b!5918507 bm!469223) bm!469224))

(declare-fun m!6815796 () Bool)

(assert (=> b!5918510 m!6815796))

(declare-fun m!6815798 () Bool)

(assert (=> bm!469222 m!6815798))

(declare-fun m!6815800 () Bool)

(assert (=> bm!469224 m!6815800))

(assert (=> d!1855700 d!1856292))

(declare-fun d!1856294 () Bool)

(declare-fun e!3623717 () Bool)

(assert (=> d!1856294 e!3623717))

(declare-fun c!1051965 () Bool)

(assert (=> d!1856294 (= c!1051965 ((_ is EmptyExpr!15969) (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750))))))))

(declare-fun lt!2309862 () Bool)

(declare-fun e!3623716 () Bool)

(assert (=> d!1856294 (= lt!2309862 e!3623716)))

(declare-fun c!1051966 () Bool)

(assert (=> d!1856294 (= c!1051966 (isEmpty!35940 (tail!11564 (_1!36251 (get!22066 lt!2309750)))))))

(assert (=> d!1856294 (validRegex!7705 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750)))))))

(assert (=> d!1856294 (= (matchR!8152 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750)))) (tail!11564 (_1!36251 (get!22066 lt!2309750)))) lt!2309862)))

(declare-fun b!5918514 () Bool)

(assert (=> b!5918514 (= e!3623716 (nullable!5964 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750))))))))

(declare-fun b!5918515 () Bool)

(declare-fun call!469230 () Bool)

(assert (=> b!5918515 (= e!3623717 (= lt!2309862 call!469230))))

(declare-fun b!5918516 () Bool)

(assert (=> b!5918516 (= e!3623716 (matchR!8152 (derivativeStep!4700 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750)))) (head!12479 (tail!11564 (_1!36251 (get!22066 lt!2309750))))) (tail!11564 (tail!11564 (_1!36251 (get!22066 lt!2309750))))))))

(declare-fun b!5918517 () Bool)

(declare-fun res!2481437 () Bool)

(declare-fun e!3623715 () Bool)

(assert (=> b!5918517 (=> (not res!2481437) (not e!3623715))))

(assert (=> b!5918517 (= res!2481437 (not call!469230))))

(declare-fun b!5918518 () Bool)

(declare-fun e!3623713 () Bool)

(declare-fun e!3623712 () Bool)

(assert (=> b!5918518 (= e!3623713 e!3623712)))

(declare-fun res!2481439 () Bool)

(assert (=> b!5918518 (=> res!2481439 e!3623712)))

(assert (=> b!5918518 (= res!2481439 call!469230)))

(declare-fun b!5918519 () Bool)

(declare-fun e!3623711 () Bool)

(assert (=> b!5918519 (= e!3623711 (not lt!2309862))))

(declare-fun b!5918520 () Bool)

(assert (=> b!5918520 (= e!3623715 (= (head!12479 (tail!11564 (_1!36251 (get!22066 lt!2309750)))) (c!1051439 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750)))))))))

(declare-fun b!5918521 () Bool)

(declare-fun e!3623714 () Bool)

(assert (=> b!5918521 (= e!3623714 e!3623713)))

(declare-fun res!2481440 () Bool)

(assert (=> b!5918521 (=> (not res!2481440) (not e!3623713))))

(assert (=> b!5918521 (= res!2481440 (not lt!2309862))))

(declare-fun b!5918522 () Bool)

(assert (=> b!5918522 (= e!3623712 (not (= (head!12479 (tail!11564 (_1!36251 (get!22066 lt!2309750)))) (c!1051439 (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750))))))))))

(declare-fun b!5918523 () Bool)

(declare-fun res!2481438 () Bool)

(assert (=> b!5918523 (=> res!2481438 e!3623714)))

(assert (=> b!5918523 (= res!2481438 e!3623715)))

(declare-fun res!2481442 () Bool)

(assert (=> b!5918523 (=> (not res!2481442) (not e!3623715))))

(assert (=> b!5918523 (= res!2481442 lt!2309862)))

(declare-fun b!5918524 () Bool)

(declare-fun res!2481435 () Bool)

(assert (=> b!5918524 (=> res!2481435 e!3623714)))

(assert (=> b!5918524 (= res!2481435 (not ((_ is ElementMatch!15969) (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750)))))))))

(assert (=> b!5918524 (= e!3623711 e!3623714)))

(declare-fun b!5918525 () Bool)

(assert (=> b!5918525 (= e!3623717 e!3623711)))

(declare-fun c!1051967 () Bool)

(assert (=> b!5918525 (= c!1051967 ((_ is EmptyLang!15969) (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750))))))))

(declare-fun bm!469225 () Bool)

(assert (=> bm!469225 (= call!469230 (isEmpty!35940 (tail!11564 (_1!36251 (get!22066 lt!2309750)))))))

(declare-fun b!5918526 () Bool)

(declare-fun res!2481436 () Bool)

(assert (=> b!5918526 (=> res!2481436 e!3623712)))

(assert (=> b!5918526 (= res!2481436 (not (isEmpty!35940 (tail!11564 (tail!11564 (_1!36251 (get!22066 lt!2309750)))))))))

(declare-fun b!5918527 () Bool)

(declare-fun res!2481441 () Bool)

(assert (=> b!5918527 (=> (not res!2481441) (not e!3623715))))

(assert (=> b!5918527 (= res!2481441 (isEmpty!35940 (tail!11564 (tail!11564 (_1!36251 (get!22066 lt!2309750))))))))

(assert (= (and d!1856294 c!1051966) b!5918514))

(assert (= (and d!1856294 (not c!1051966)) b!5918516))

(assert (= (and d!1856294 c!1051965) b!5918515))

(assert (= (and d!1856294 (not c!1051965)) b!5918525))

(assert (= (and b!5918525 c!1051967) b!5918519))

(assert (= (and b!5918525 (not c!1051967)) b!5918524))

(assert (= (and b!5918524 (not res!2481435)) b!5918523))

(assert (= (and b!5918523 res!2481442) b!5918517))

(assert (= (and b!5918517 res!2481437) b!5918527))

(assert (= (and b!5918527 res!2481441) b!5918520))

(assert (= (and b!5918523 (not res!2481438)) b!5918521))

(assert (= (and b!5918521 res!2481440) b!5918518))

(assert (= (and b!5918518 (not res!2481439)) b!5918526))

(assert (= (and b!5918526 (not res!2481436)) b!5918522))

(assert (= (or b!5918515 b!5918517 b!5918518) bm!469225))

(assert (=> b!5918514 m!6814478))

(declare-fun m!6815802 () Bool)

(assert (=> b!5918514 m!6815802))

(assert (=> b!5918526 m!6814472))

(declare-fun m!6815804 () Bool)

(assert (=> b!5918526 m!6815804))

(assert (=> b!5918526 m!6815804))

(declare-fun m!6815806 () Bool)

(assert (=> b!5918526 m!6815806))

(assert (=> b!5918527 m!6814472))

(assert (=> b!5918527 m!6815804))

(assert (=> b!5918527 m!6815804))

(assert (=> b!5918527 m!6815806))

(assert (=> b!5918516 m!6814472))

(declare-fun m!6815808 () Bool)

(assert (=> b!5918516 m!6815808))

(assert (=> b!5918516 m!6814478))

(assert (=> b!5918516 m!6815808))

(declare-fun m!6815810 () Bool)

(assert (=> b!5918516 m!6815810))

(assert (=> b!5918516 m!6814472))

(assert (=> b!5918516 m!6815804))

(assert (=> b!5918516 m!6815810))

(assert (=> b!5918516 m!6815804))

(declare-fun m!6815816 () Bool)

(assert (=> b!5918516 m!6815816))

(assert (=> d!1856294 m!6814472))

(assert (=> d!1856294 m!6814474))

(assert (=> d!1856294 m!6814478))

(declare-fun m!6815818 () Bool)

(assert (=> d!1856294 m!6815818))

(assert (=> b!5918522 m!6814472))

(assert (=> b!5918522 m!6815808))

(assert (=> b!5918520 m!6814472))

(assert (=> b!5918520 m!6815808))

(assert (=> bm!469225 m!6814472))

(assert (=> bm!469225 m!6814474))

(assert (=> b!5917054 d!1856294))

(declare-fun b!5918528 () Bool)

(declare-fun e!3623721 () Regex!15969)

(declare-fun call!469234 () Regex!15969)

(assert (=> b!5918528 (= e!3623721 (Concat!24814 call!469234 (regOne!32450 r!7292)))))

(declare-fun b!5918529 () Bool)

(declare-fun e!3623722 () Regex!15969)

(declare-fun call!469231 () Regex!15969)

(declare-fun call!469232 () Regex!15969)

(assert (=> b!5918529 (= e!3623722 (Union!15969 call!469231 call!469232))))

(declare-fun b!5918530 () Bool)

(declare-fun c!1051970 () Bool)

(assert (=> b!5918530 (= c!1051970 ((_ is Union!15969) (regOne!32450 r!7292)))))

(declare-fun e!3623718 () Regex!15969)

(assert (=> b!5918530 (= e!3623718 e!3623722)))

(declare-fun b!5918531 () Bool)

(declare-fun e!3623719 () Regex!15969)

(declare-fun call!469233 () Regex!15969)

(assert (=> b!5918531 (= e!3623719 (Union!15969 (Concat!24814 call!469233 (regTwo!32450 (regOne!32450 r!7292))) EmptyLang!15969))))

(declare-fun c!1051969 () Bool)

(declare-fun bm!469226 () Bool)

(assert (=> bm!469226 (= call!469232 (derivativeStep!4700 (ite c!1051970 (regTwo!32451 (regOne!32450 r!7292)) (ite c!1051969 (reg!16298 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))) (head!12479 (_1!36251 (get!22066 lt!2309750)))))))

(declare-fun bm!469227 () Bool)

(assert (=> bm!469227 (= call!469234 call!469232)))

(declare-fun b!5918532 () Bool)

(assert (=> b!5918532 (= e!3623718 (ite (= (head!12479 (_1!36251 (get!22066 lt!2309750))) (c!1051439 (regOne!32450 r!7292))) EmptyExpr!15969 EmptyLang!15969))))

(declare-fun b!5918533 () Bool)

(assert (=> b!5918533 (= e!3623722 e!3623721)))

(assert (=> b!5918533 (= c!1051969 ((_ is Star!15969) (regOne!32450 r!7292)))))

(declare-fun bm!469228 () Bool)

(assert (=> bm!469228 (= call!469233 call!469231)))

(declare-fun c!1051968 () Bool)

(declare-fun bm!469229 () Bool)

(assert (=> bm!469229 (= call!469231 (derivativeStep!4700 (ite c!1051970 (regOne!32451 (regOne!32450 r!7292)) (ite c!1051968 (regTwo!32450 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))) (head!12479 (_1!36251 (get!22066 lt!2309750)))))))

(declare-fun b!5918534 () Bool)

(assert (=> b!5918534 (= e!3623719 (Union!15969 (Concat!24814 call!469234 (regTwo!32450 (regOne!32450 r!7292))) call!469233))))

(declare-fun b!5918535 () Bool)

(assert (=> b!5918535 (= c!1051968 (nullable!5964 (regOne!32450 (regOne!32450 r!7292))))))

(assert (=> b!5918535 (= e!3623721 e!3623719)))

(declare-fun b!5918536 () Bool)

(declare-fun e!3623720 () Regex!15969)

(assert (=> b!5918536 (= e!3623720 e!3623718)))

(declare-fun c!1051971 () Bool)

(assert (=> b!5918536 (= c!1051971 ((_ is ElementMatch!15969) (regOne!32450 r!7292)))))

(declare-fun d!1856296 () Bool)

(declare-fun lt!2309863 () Regex!15969)

(assert (=> d!1856296 (validRegex!7705 lt!2309863)))

(assert (=> d!1856296 (= lt!2309863 e!3623720)))

(declare-fun c!1051972 () Bool)

(assert (=> d!1856296 (= c!1051972 (or ((_ is EmptyExpr!15969) (regOne!32450 r!7292)) ((_ is EmptyLang!15969) (regOne!32450 r!7292))))))

(assert (=> d!1856296 (validRegex!7705 (regOne!32450 r!7292))))

(assert (=> d!1856296 (= (derivativeStep!4700 (regOne!32450 r!7292) (head!12479 (_1!36251 (get!22066 lt!2309750)))) lt!2309863)))

(declare-fun b!5918537 () Bool)

(assert (=> b!5918537 (= e!3623720 EmptyLang!15969)))

(assert (= (and d!1856296 c!1051972) b!5918537))

(assert (= (and d!1856296 (not c!1051972)) b!5918536))

(assert (= (and b!5918536 c!1051971) b!5918532))

(assert (= (and b!5918536 (not c!1051971)) b!5918530))

(assert (= (and b!5918530 c!1051970) b!5918529))

(assert (= (and b!5918530 (not c!1051970)) b!5918533))

(assert (= (and b!5918533 c!1051969) b!5918528))

(assert (= (and b!5918533 (not c!1051969)) b!5918535))

(assert (= (and b!5918535 c!1051968) b!5918534))

(assert (= (and b!5918535 (not c!1051968)) b!5918531))

(assert (= (or b!5918534 b!5918531) bm!469228))

(assert (= (or b!5918528 b!5918534) bm!469227))

(assert (= (or b!5918529 bm!469227) bm!469226))

(assert (= (or b!5918529 bm!469228) bm!469229))

(assert (=> bm!469226 m!6814476))

(declare-fun m!6815826 () Bool)

(assert (=> bm!469226 m!6815826))

(assert (=> bm!469229 m!6814476))

(declare-fun m!6815828 () Bool)

(assert (=> bm!469229 m!6815828))

(declare-fun m!6815830 () Bool)

(assert (=> b!5918535 m!6815830))

(declare-fun m!6815832 () Bool)

(assert (=> d!1856296 m!6815832))

(assert (=> d!1856296 m!6814340))

(assert (=> b!5917054 d!1856296))

(assert (=> b!5917054 d!1855978))

(assert (=> b!5917054 d!1855974))

(assert (=> b!5917179 d!1856070))

(declare-fun b!5918540 () Bool)

(declare-fun e!3623730 () Bool)

(declare-fun e!3623725 () Bool)

(assert (=> b!5918540 (= e!3623730 e!3623725)))

(declare-fun c!1051974 () Bool)

(assert (=> b!5918540 (= c!1051974 ((_ is Union!15969) (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))))))

(declare-fun b!5918541 () Bool)

(declare-fun e!3623729 () Bool)

(declare-fun call!469236 () Bool)

(assert (=> b!5918541 (= e!3623729 call!469236)))

(declare-fun d!1856302 () Bool)

(declare-fun res!2481447 () Bool)

(declare-fun e!3623731 () Bool)

(assert (=> d!1856302 (=> res!2481447 e!3623731)))

(assert (=> d!1856302 (= res!2481447 ((_ is ElementMatch!15969) (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))))))

(assert (=> d!1856302 (= (validRegex!7705 (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))) e!3623731)))

(declare-fun b!5918542 () Bool)

(declare-fun e!3623726 () Bool)

(declare-fun call!469237 () Bool)

(assert (=> b!5918542 (= e!3623726 call!469237)))

(declare-fun b!5918543 () Bool)

(declare-fun res!2481446 () Bool)

(declare-fun e!3623727 () Bool)

(assert (=> b!5918543 (=> (not res!2481446) (not e!3623727))))

(declare-fun call!469235 () Bool)

(assert (=> b!5918543 (= res!2481446 call!469235)))

(assert (=> b!5918543 (= e!3623725 e!3623727)))

(declare-fun b!5918544 () Bool)

(declare-fun e!3623728 () Bool)

(assert (=> b!5918544 (= e!3623728 e!3623729)))

(declare-fun res!2481448 () Bool)

(assert (=> b!5918544 (=> (not res!2481448) (not e!3623729))))

(assert (=> b!5918544 (= res!2481448 call!469235)))

(declare-fun b!5918545 () Bool)

(assert (=> b!5918545 (= e!3623730 e!3623726)))

(declare-fun res!2481449 () Bool)

(assert (=> b!5918545 (= res!2481449 (not (nullable!5964 (reg!16298 (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))))))))

(assert (=> b!5918545 (=> (not res!2481449) (not e!3623726))))

(declare-fun bm!469230 () Bool)

(assert (=> bm!469230 (= call!469235 (validRegex!7705 (ite c!1051974 (regOne!32451 (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))) (regOne!32450 (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))))))))

(declare-fun b!5918546 () Bool)

(declare-fun res!2481445 () Bool)

(assert (=> b!5918546 (=> res!2481445 e!3623728)))

(assert (=> b!5918546 (= res!2481445 (not ((_ is Concat!24814) (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292))))))))

(assert (=> b!5918546 (= e!3623725 e!3623728)))

(declare-fun b!5918547 () Bool)

(assert (=> b!5918547 (= e!3623731 e!3623730)))

(declare-fun c!1051973 () Bool)

(assert (=> b!5918547 (= c!1051973 ((_ is Star!15969) (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))))))

(declare-fun b!5918548 () Bool)

(assert (=> b!5918548 (= e!3623727 call!469236)))

(declare-fun bm!469231 () Bool)

(assert (=> bm!469231 (= call!469236 call!469237)))

(declare-fun bm!469232 () Bool)

(assert (=> bm!469232 (= call!469237 (validRegex!7705 (ite c!1051973 (reg!16298 (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))) (ite c!1051974 (regTwo!32451 (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292)))) (regTwo!32450 (ite c!1051606 (regOne!32451 (regOne!32450 r!7292)) (regOne!32450 (regOne!32450 r!7292))))))))))

(assert (= (and d!1856302 (not res!2481447)) b!5918547))

(assert (= (and b!5918547 c!1051973) b!5918545))

(assert (= (and b!5918547 (not c!1051973)) b!5918540))

(assert (= (and b!5918545 res!2481449) b!5918542))

(assert (= (and b!5918540 c!1051974) b!5918543))

(assert (= (and b!5918540 (not c!1051974)) b!5918546))

(assert (= (and b!5918543 res!2481446) b!5918548))

(assert (= (and b!5918546 (not res!2481445)) b!5918544))

(assert (= (and b!5918544 res!2481448) b!5918541))

(assert (= (or b!5918548 b!5918541) bm!469231))

(assert (= (or b!5918543 b!5918544) bm!469230))

(assert (= (or b!5918542 bm!469231) bm!469232))

(declare-fun m!6815838 () Bool)

(assert (=> b!5918545 m!6815838))

(declare-fun m!6815840 () Bool)

(assert (=> bm!469230 m!6815840))

(declare-fun m!6815842 () Bool)

(assert (=> bm!469232 m!6815842))

(assert (=> bm!468959 d!1856302))

(declare-fun b!5918560 () Bool)

(declare-fun res!2481455 () Bool)

(declare-fun e!3623739 () Bool)

(assert (=> b!5918560 (=> (not res!2481455) (not e!3623739))))

(declare-fun lt!2309864 () List!64208)

(assert (=> b!5918560 (= res!2481455 (= (size!40136 lt!2309864) (+ (size!40136 (_1!36251 (get!22066 lt!2309801))) (size!40136 (_2!36251 (get!22066 lt!2309801))))))))

(declare-fun b!5918559 () Bool)

(declare-fun e!3623740 () List!64208)

(assert (=> b!5918559 (= e!3623740 (Cons!64084 (h!70532 (_1!36251 (get!22066 lt!2309801))) (++!14066 (t!377597 (_1!36251 (get!22066 lt!2309801))) (_2!36251 (get!22066 lt!2309801)))))))

(declare-fun b!5918561 () Bool)

(assert (=> b!5918561 (= e!3623739 (or (not (= (_2!36251 (get!22066 lt!2309801)) Nil!64084)) (= lt!2309864 (_1!36251 (get!22066 lt!2309801)))))))

(declare-fun d!1856306 () Bool)

(assert (=> d!1856306 e!3623739))

(declare-fun res!2481456 () Bool)

(assert (=> d!1856306 (=> (not res!2481456) (not e!3623739))))

(assert (=> d!1856306 (= res!2481456 (= (content!11798 lt!2309864) ((_ map or) (content!11798 (_1!36251 (get!22066 lt!2309801))) (content!11798 (_2!36251 (get!22066 lt!2309801))))))))

(assert (=> d!1856306 (= lt!2309864 e!3623740)))

(declare-fun c!1051977 () Bool)

(assert (=> d!1856306 (= c!1051977 ((_ is Nil!64084) (_1!36251 (get!22066 lt!2309801))))))

(assert (=> d!1856306 (= (++!14066 (_1!36251 (get!22066 lt!2309801)) (_2!36251 (get!22066 lt!2309801))) lt!2309864)))

(declare-fun b!5918558 () Bool)

(assert (=> b!5918558 (= e!3623740 (_2!36251 (get!22066 lt!2309801)))))

(assert (= (and d!1856306 c!1051977) b!5918558))

(assert (= (and d!1856306 (not c!1051977)) b!5918559))

(assert (= (and d!1856306 res!2481456) b!5918560))

(assert (= (and b!5918560 res!2481455) b!5918561))

(declare-fun m!6815844 () Bool)

(assert (=> b!5918560 m!6815844))

(declare-fun m!6815846 () Bool)

(assert (=> b!5918560 m!6815846))

(declare-fun m!6815848 () Bool)

(assert (=> b!5918560 m!6815848))

(declare-fun m!6815850 () Bool)

(assert (=> b!5918559 m!6815850))

(declare-fun m!6815852 () Bool)

(assert (=> d!1856306 m!6815852))

(declare-fun m!6815854 () Bool)

(assert (=> d!1856306 m!6815854))

(declare-fun m!6815856 () Bool)

(assert (=> d!1856306 m!6815856))

(assert (=> b!5917304 d!1856306))

(assert (=> b!5917304 d!1856078))

(declare-fun d!1856308 () Bool)

(assert (=> d!1856308 (= (nullable!5964 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))) (nullableFct!1935 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))

(declare-fun bs!1401078 () Bool)

(assert (= bs!1401078 d!1856308))

(declare-fun m!6815858 () Bool)

(assert (=> bs!1401078 m!6815858))

(assert (=> b!5917395 d!1856308))

(declare-fun b!5918562 () Bool)

(declare-fun e!3623746 () Bool)

(declare-fun e!3623741 () Bool)

(assert (=> b!5918562 (= e!3623746 e!3623741)))

(declare-fun c!1051979 () Bool)

(assert (=> b!5918562 (= c!1051979 ((_ is Union!15969) lt!2309781))))

(declare-fun b!5918563 () Bool)

(declare-fun e!3623745 () Bool)

(declare-fun call!469242 () Bool)

(assert (=> b!5918563 (= e!3623745 call!469242)))

(declare-fun d!1856310 () Bool)

(declare-fun res!2481459 () Bool)

(declare-fun e!3623747 () Bool)

(assert (=> d!1856310 (=> res!2481459 e!3623747)))

(assert (=> d!1856310 (= res!2481459 ((_ is ElementMatch!15969) lt!2309781))))

(assert (=> d!1856310 (= (validRegex!7705 lt!2309781) e!3623747)))

(declare-fun b!5918564 () Bool)

(declare-fun e!3623742 () Bool)

(declare-fun call!469243 () Bool)

(assert (=> b!5918564 (= e!3623742 call!469243)))

(declare-fun b!5918565 () Bool)

(declare-fun res!2481458 () Bool)

(declare-fun e!3623743 () Bool)

(assert (=> b!5918565 (=> (not res!2481458) (not e!3623743))))

(declare-fun call!469241 () Bool)

(assert (=> b!5918565 (= res!2481458 call!469241)))

(assert (=> b!5918565 (= e!3623741 e!3623743)))

(declare-fun b!5918566 () Bool)

(declare-fun e!3623744 () Bool)

(assert (=> b!5918566 (= e!3623744 e!3623745)))

(declare-fun res!2481460 () Bool)

(assert (=> b!5918566 (=> (not res!2481460) (not e!3623745))))

(assert (=> b!5918566 (= res!2481460 call!469241)))

(declare-fun b!5918567 () Bool)

(assert (=> b!5918567 (= e!3623746 e!3623742)))

(declare-fun res!2481461 () Bool)

(assert (=> b!5918567 (= res!2481461 (not (nullable!5964 (reg!16298 lt!2309781))))))

(assert (=> b!5918567 (=> (not res!2481461) (not e!3623742))))

(declare-fun bm!469236 () Bool)

(assert (=> bm!469236 (= call!469241 (validRegex!7705 (ite c!1051979 (regOne!32451 lt!2309781) (regOne!32450 lt!2309781))))))

(declare-fun b!5918568 () Bool)

(declare-fun res!2481457 () Bool)

(assert (=> b!5918568 (=> res!2481457 e!3623744)))

(assert (=> b!5918568 (= res!2481457 (not ((_ is Concat!24814) lt!2309781)))))

(assert (=> b!5918568 (= e!3623741 e!3623744)))

(declare-fun b!5918569 () Bool)

(assert (=> b!5918569 (= e!3623747 e!3623746)))

(declare-fun c!1051978 () Bool)

(assert (=> b!5918569 (= c!1051978 ((_ is Star!15969) lt!2309781))))

(declare-fun b!5918570 () Bool)

(assert (=> b!5918570 (= e!3623743 call!469242)))

(declare-fun bm!469237 () Bool)

(assert (=> bm!469237 (= call!469242 call!469243)))

(declare-fun bm!469238 () Bool)

(assert (=> bm!469238 (= call!469243 (validRegex!7705 (ite c!1051978 (reg!16298 lt!2309781) (ite c!1051979 (regTwo!32451 lt!2309781) (regTwo!32450 lt!2309781)))))))

(assert (= (and d!1856310 (not res!2481459)) b!5918569))

(assert (= (and b!5918569 c!1051978) b!5918567))

(assert (= (and b!5918569 (not c!1051978)) b!5918562))

(assert (= (and b!5918567 res!2481461) b!5918564))

(assert (= (and b!5918562 c!1051979) b!5918565))

(assert (= (and b!5918562 (not c!1051979)) b!5918568))

(assert (= (and b!5918565 res!2481458) b!5918570))

(assert (= (and b!5918568 (not res!2481457)) b!5918566))

(assert (= (and b!5918566 res!2481460) b!5918563))

(assert (= (or b!5918570 b!5918563) bm!469237))

(assert (= (or b!5918565 b!5918566) bm!469236))

(assert (= (or b!5918564 bm!469237) bm!469238))

(declare-fun m!6815866 () Bool)

(assert (=> b!5918567 m!6815866))

(declare-fun m!6815868 () Bool)

(assert (=> bm!469236 m!6815868))

(declare-fun m!6815870 () Bool)

(assert (=> bm!469238 m!6815870))

(assert (=> d!1855704 d!1856310))

(assert (=> d!1855704 d!1855662))

(assert (=> b!5917260 d!1855632))

(assert (=> bs!1400866 d!1856042))

(declare-fun bs!1401079 () Bool)

(declare-fun b!5918571 () Bool)

(assert (= bs!1401079 (and b!5918571 b!5917897)))

(declare-fun lambda!322912 () Int)

(assert (=> bs!1401079 (not (= lambda!322912 lambda!322900))))

(declare-fun bs!1401080 () Bool)

(assert (= bs!1401080 (and b!5918571 b!5918070)))

(assert (=> bs!1401080 (= (and (= (reg!16298 (regOne!32451 (regTwo!32451 r!7292))) (reg!16298 (regTwo!32451 (regOne!32451 r!7292)))) (= (regOne!32451 (regTwo!32451 r!7292)) (regTwo!32451 (regOne!32451 r!7292)))) (= lambda!322912 lambda!322907))))

(declare-fun bs!1401081 () Bool)

(assert (= bs!1401081 (and b!5918571 d!1855652)))

(assert (=> bs!1401081 (not (= lambda!322912 lambda!322859))))

(declare-fun bs!1401082 () Bool)

(assert (= bs!1401082 (and b!5918571 d!1855812)))

(assert (=> bs!1401082 (not (= lambda!322912 lambda!322879))))

(declare-fun bs!1401083 () Bool)

(assert (= bs!1401083 (and b!5918571 b!5918073)))

(assert (=> bs!1401083 (not (= lambda!322912 lambda!322908))))

(assert (=> bs!1401081 (not (= lambda!322912 lambda!322857))))

(declare-fun bs!1401084 () Bool)

(assert (= bs!1401084 (and b!5918571 b!5916342)))

(assert (=> bs!1401084 (not (= lambda!322912 lambda!322806))))

(declare-fun bs!1401085 () Bool)

(assert (= bs!1401085 (and b!5918571 b!5917894)))

(assert (=> bs!1401085 (= (and (= (reg!16298 (regOne!32451 (regTwo!32451 r!7292))) (reg!16298 (regOne!32451 (regOne!32451 r!7292)))) (= (regOne!32451 (regTwo!32451 r!7292)) (regOne!32451 (regOne!32451 r!7292)))) (= lambda!322912 lambda!322899))))

(declare-fun bs!1401086 () Bool)

(assert (= bs!1401086 (and b!5918571 b!5917993)))

(assert (=> bs!1401086 (= (and (= (reg!16298 (regOne!32451 (regTwo!32451 r!7292))) (reg!16298 (regTwo!32451 (regTwo!32451 r!7292)))) (= (regOne!32451 (regTwo!32451 r!7292)) (regTwo!32451 (regTwo!32451 r!7292)))) (= lambda!322912 lambda!322903))))

(declare-fun bs!1401087 () Bool)

(assert (= bs!1401087 (and b!5918571 b!5916600)))

(assert (=> bs!1401087 (= (and (= (reg!16298 (regOne!32451 (regTwo!32451 r!7292))) (reg!16298 r!7292)) (= (regOne!32451 (regTwo!32451 r!7292)) r!7292)) (= lambda!322912 lambda!322826))))

(declare-fun bs!1401088 () Bool)

(assert (= bs!1401088 (and b!5918571 b!5917042)))

(assert (=> bs!1401088 (not (= lambda!322912 lambda!322864))))

(declare-fun bs!1401089 () Bool)

(assert (= bs!1401089 (and b!5918571 b!5917511)))

(assert (=> bs!1401089 (not (= lambda!322912 lambda!322891))))

(declare-fun bs!1401090 () Bool)

(assert (= bs!1401090 (and b!5918571 d!1855884)))

(assert (=> bs!1401090 (not (= lambda!322912 lambda!322885))))

(assert (=> bs!1401090 (not (= lambda!322912 lambda!322888))))

(declare-fun bs!1401091 () Bool)

(assert (= bs!1401091 (and b!5918571 b!5917996)))

(assert (=> bs!1401091 (not (= lambda!322912 lambda!322904))))

(declare-fun bs!1401092 () Bool)

(assert (= bs!1401092 (and b!5918571 d!1855648)))

(assert (=> bs!1401092 (not (= lambda!322912 lambda!322850))))

(declare-fun bs!1401093 () Bool)

(assert (= bs!1401093 (and b!5918571 b!5916603)))

(assert (=> bs!1401093 (not (= lambda!322912 lambda!322827))))

(declare-fun bs!1401094 () Bool)

(assert (= bs!1401094 (and b!5918571 b!5917508)))

(assert (=> bs!1401094 (= (and (= (reg!16298 (regOne!32451 (regTwo!32451 r!7292))) (reg!16298 (regOne!32451 r!7292))) (= (regOne!32451 (regTwo!32451 r!7292)) (regOne!32451 r!7292))) (= lambda!322912 lambda!322890))))

(declare-fun bs!1401095 () Bool)

(assert (= bs!1401095 (and b!5918571 b!5917039)))

(assert (=> bs!1401095 (= (and (= (reg!16298 (regOne!32451 (regTwo!32451 r!7292))) (reg!16298 (regTwo!32451 r!7292))) (= (regOne!32451 (regTwo!32451 r!7292)) (regTwo!32451 r!7292))) (= lambda!322912 lambda!322863))))

(assert (=> bs!1401084 (not (= lambda!322912 lambda!322805))))

(assert (=> b!5918571 true))

(assert (=> b!5918571 true))

(declare-fun bs!1401096 () Bool)

(declare-fun b!5918574 () Bool)

(assert (= bs!1401096 (and b!5918574 b!5917897)))

(declare-fun lambda!322913 () Int)

(assert (=> bs!1401096 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 (regOne!32451 (regOne!32451 r!7292)))) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))))) (= lambda!322913 lambda!322900))))

(declare-fun bs!1401097 () Bool)

(assert (= bs!1401097 (and b!5918574 b!5918070)))

(assert (=> bs!1401097 (not (= lambda!322913 lambda!322907))))

(declare-fun bs!1401098 () Bool)

(assert (= bs!1401098 (and b!5918574 d!1855652)))

(assert (=> bs!1401098 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322913 lambda!322859))))

(declare-fun bs!1401099 () Bool)

(assert (= bs!1401099 (and b!5918574 d!1855812)))

(assert (=> bs!1401099 (not (= lambda!322913 lambda!322879))))

(declare-fun bs!1401100 () Bool)

(assert (= bs!1401100 (and b!5918574 b!5918073)))

(assert (=> bs!1401100 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 (regTwo!32451 (regOne!32451 r!7292)))) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))))) (= lambda!322913 lambda!322908))))

(assert (=> bs!1401098 (not (= lambda!322913 lambda!322857))))

(declare-fun bs!1401101 () Bool)

(assert (= bs!1401101 (and b!5918574 b!5918571)))

(assert (=> bs!1401101 (not (= lambda!322913 lambda!322912))))

(declare-fun bs!1401102 () Bool)

(assert (= bs!1401102 (and b!5918574 b!5916342)))

(assert (=> bs!1401102 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322913 lambda!322806))))

(declare-fun bs!1401103 () Bool)

(assert (= bs!1401103 (and b!5918574 b!5917894)))

(assert (=> bs!1401103 (not (= lambda!322913 lambda!322899))))

(declare-fun bs!1401104 () Bool)

(assert (= bs!1401104 (and b!5918574 b!5917993)))

(assert (=> bs!1401104 (not (= lambda!322913 lambda!322903))))

(declare-fun bs!1401105 () Bool)

(assert (= bs!1401105 (and b!5918574 b!5916600)))

(assert (=> bs!1401105 (not (= lambda!322913 lambda!322826))))

(declare-fun bs!1401106 () Bool)

(assert (= bs!1401106 (and b!5918574 b!5917042)))

(assert (=> bs!1401106 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 (regTwo!32451 r!7292))) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 (regTwo!32451 r!7292)))) (= lambda!322913 lambda!322864))))

(declare-fun bs!1401108 () Bool)

(assert (= bs!1401108 (and b!5918574 b!5917511)))

(assert (=> bs!1401108 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 (regOne!32451 r!7292))) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 (regOne!32451 r!7292)))) (= lambda!322913 lambda!322891))))

(declare-fun bs!1401109 () Bool)

(assert (= bs!1401109 (and b!5918574 d!1855884)))

(assert (=> bs!1401109 (not (= lambda!322913 lambda!322885))))

(assert (=> bs!1401109 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322913 lambda!322888))))

(declare-fun bs!1401111 () Bool)

(assert (= bs!1401111 (and b!5918574 b!5917996)))

(assert (=> bs!1401111 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292)))) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))))) (= lambda!322913 lambda!322904))))

(declare-fun bs!1401112 () Bool)

(assert (= bs!1401112 (and b!5918574 d!1855648)))

(assert (=> bs!1401112 (not (= lambda!322913 lambda!322850))))

(declare-fun bs!1401113 () Bool)

(assert (= bs!1401113 (and b!5918574 b!5916603)))

(assert (=> bs!1401113 (= (and (= (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))) (regOne!32450 r!7292)) (= (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))) (regTwo!32450 r!7292))) (= lambda!322913 lambda!322827))))

(declare-fun bs!1401115 () Bool)

(assert (= bs!1401115 (and b!5918574 b!5917508)))

(assert (=> bs!1401115 (not (= lambda!322913 lambda!322890))))

(declare-fun bs!1401116 () Bool)

(assert (= bs!1401116 (and b!5918574 b!5917039)))

(assert (=> bs!1401116 (not (= lambda!322913 lambda!322863))))

(assert (=> bs!1401102 (not (= lambda!322913 lambda!322805))))

(assert (=> b!5918574 true))

(assert (=> b!5918574 true))

(declare-fun e!3623752 () Bool)

(declare-fun call!469245 () Bool)

(assert (=> b!5918571 (= e!3623752 call!469245)))

(declare-fun b!5918572 () Bool)

(declare-fun e!3623751 () Bool)

(declare-fun e!3623754 () Bool)

(assert (=> b!5918572 (= e!3623751 e!3623754)))

(declare-fun c!1051980 () Bool)

(assert (=> b!5918572 (= c!1051980 ((_ is Star!15969) (regOne!32451 (regTwo!32451 r!7292))))))

(declare-fun b!5918573 () Bool)

(declare-fun c!1051982 () Bool)

(assert (=> b!5918573 (= c!1051982 ((_ is Union!15969) (regOne!32451 (regTwo!32451 r!7292))))))

(declare-fun e!3623749 () Bool)

(assert (=> b!5918573 (= e!3623749 e!3623751)))

(assert (=> b!5918574 (= e!3623754 call!469245)))

(declare-fun bm!469239 () Bool)

(assert (=> bm!469239 (= call!469245 (Exists!3039 (ite c!1051980 lambda!322912 lambda!322913)))))

(declare-fun b!5918575 () Bool)

(declare-fun res!2481463 () Bool)

(assert (=> b!5918575 (=> res!2481463 e!3623752)))

(declare-fun call!469244 () Bool)

(assert (=> b!5918575 (= res!2481463 call!469244)))

(assert (=> b!5918575 (= e!3623754 e!3623752)))

(declare-fun d!1856314 () Bool)

(declare-fun c!1051981 () Bool)

(assert (=> d!1856314 (= c!1051981 ((_ is EmptyExpr!15969) (regOne!32451 (regTwo!32451 r!7292))))))

(declare-fun e!3623750 () Bool)

(assert (=> d!1856314 (= (matchRSpec!3070 (regOne!32451 (regTwo!32451 r!7292)) s!2326) e!3623750)))

(declare-fun b!5918576 () Bool)

(declare-fun e!3623753 () Bool)

(assert (=> b!5918576 (= e!3623753 (matchRSpec!3070 (regTwo!32451 (regOne!32451 (regTwo!32451 r!7292))) s!2326))))

(declare-fun b!5918577 () Bool)

(assert (=> b!5918577 (= e!3623749 (= s!2326 (Cons!64084 (c!1051439 (regOne!32451 (regTwo!32451 r!7292))) Nil!64084)))))

(declare-fun b!5918578 () Bool)

(declare-fun e!3623748 () Bool)

(assert (=> b!5918578 (= e!3623750 e!3623748)))

(declare-fun res!2481462 () Bool)

(assert (=> b!5918578 (= res!2481462 (not ((_ is EmptyLang!15969) (regOne!32451 (regTwo!32451 r!7292)))))))

(assert (=> b!5918578 (=> (not res!2481462) (not e!3623748))))

(declare-fun b!5918579 () Bool)

(declare-fun c!1051983 () Bool)

(assert (=> b!5918579 (= c!1051983 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32451 r!7292))))))

(assert (=> b!5918579 (= e!3623748 e!3623749)))

(declare-fun b!5918580 () Bool)

(assert (=> b!5918580 (= e!3623750 call!469244)))

(declare-fun b!5918581 () Bool)

(assert (=> b!5918581 (= e!3623751 e!3623753)))

(declare-fun res!2481464 () Bool)

(assert (=> b!5918581 (= res!2481464 (matchRSpec!3070 (regOne!32451 (regOne!32451 (regTwo!32451 r!7292))) s!2326))))

(assert (=> b!5918581 (=> res!2481464 e!3623753)))

(declare-fun bm!469240 () Bool)

(assert (=> bm!469240 (= call!469244 (isEmpty!35940 s!2326))))

(assert (= (and d!1856314 c!1051981) b!5918580))

(assert (= (and d!1856314 (not c!1051981)) b!5918578))

(assert (= (and b!5918578 res!2481462) b!5918579))

(assert (= (and b!5918579 c!1051983) b!5918577))

(assert (= (and b!5918579 (not c!1051983)) b!5918573))

(assert (= (and b!5918573 c!1051982) b!5918581))

(assert (= (and b!5918573 (not c!1051982)) b!5918572))

(assert (= (and b!5918581 (not res!2481464)) b!5918576))

(assert (= (and b!5918572 c!1051980) b!5918575))

(assert (= (and b!5918572 (not c!1051980)) b!5918574))

(assert (= (and b!5918575 (not res!2481463)) b!5918571))

(assert (= (or b!5918571 b!5918574) bm!469239))

(assert (= (or b!5918580 b!5918575) bm!469240))

(declare-fun m!6815882 () Bool)

(assert (=> bm!469239 m!6815882))

(declare-fun m!6815884 () Bool)

(assert (=> b!5918576 m!6815884))

(declare-fun m!6815886 () Bool)

(assert (=> b!5918581 m!6815886))

(assert (=> bm!469240 m!6814230))

(assert (=> b!5917049 d!1856314))

(declare-fun d!1856318 () Bool)

(declare-fun res!2481469 () Bool)

(declare-fun e!3623768 () Bool)

(assert (=> d!1856318 (=> res!2481469 e!3623768)))

(assert (=> d!1856318 (= res!2481469 ((_ is Nil!64082) (exprs!5853 (h!70531 (t!377596 zl!343)))))))

(assert (=> d!1856318 (= (forall!15051 (exprs!5853 (h!70531 (t!377596 zl!343))) lambda!322868) e!3623768)))

(declare-fun b!5918604 () Bool)

(declare-fun e!3623769 () Bool)

(assert (=> b!5918604 (= e!3623768 e!3623769)))

(declare-fun res!2481470 () Bool)

(assert (=> b!5918604 (=> (not res!2481470) (not e!3623769))))

(assert (=> b!5918604 (= res!2481470 (dynLambda!25053 lambda!322868 (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343))))))))

(declare-fun b!5918605 () Bool)

(assert (=> b!5918605 (= e!3623769 (forall!15051 (t!377595 (exprs!5853 (h!70531 (t!377596 zl!343)))) lambda!322868))))

(assert (= (and d!1856318 (not res!2481469)) b!5918604))

(assert (= (and b!5918604 res!2481470) b!5918605))

(declare-fun b_lambda!222321 () Bool)

(assert (=> (not b_lambda!222321) (not b!5918604)))

(declare-fun m!6815888 () Bool)

(assert (=> b!5918604 m!6815888))

(declare-fun m!6815890 () Bool)

(assert (=> b!5918605 m!6815890))

(assert (=> d!1855776 d!1856318))

(declare-fun d!1856320 () Bool)

(assert (not d!1856320))

(assert (=> b!5916997 d!1856320))

(declare-fun d!1856322 () Bool)

(assert (not d!1856322))

(assert (=> b!5916997 d!1856322))

(assert (=> b!5916997 d!1856074))

(assert (=> b!5916997 d!1855982))

(assert (=> b!5917171 d!1856010))

(declare-fun b!5918606 () Bool)

(declare-fun e!3623775 () (InoxSet Context!10706))

(declare-fun call!469258 () (InoxSet Context!10706))

(declare-fun call!469259 () (InoxSet Context!10706))

(assert (=> b!5918606 (= e!3623775 ((_ map or) call!469258 call!469259))))

(declare-fun bm!469249 () Bool)

(declare-fun call!469256 () (InoxSet Context!10706))

(assert (=> bm!469249 (= call!469256 call!469258)))

(declare-fun bm!469250 () Bool)

(declare-fun call!469254 () List!64206)

(declare-fun call!469255 () List!64206)

(assert (=> bm!469250 (= call!469254 call!469255)))

(declare-fun b!5918607 () Bool)

(declare-fun e!3623774 () (InoxSet Context!10706))

(declare-fun call!469257 () (InoxSet Context!10706))

(assert (=> b!5918607 (= e!3623774 call!469257)))

(declare-fun bm!469251 () Bool)

(declare-fun c!1051995 () Bool)

(declare-fun c!1051993 () Bool)

(assert (=> bm!469251 (= call!469255 ($colon$colon!1856 (exprs!5853 (ite c!1051746 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469054))) (ite (or c!1051995 c!1051993) (regTwo!32450 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))

(declare-fun b!5918608 () Bool)

(assert (=> b!5918608 (= e!3623774 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5918609 () Bool)

(declare-fun e!3623771 () (InoxSet Context!10706))

(assert (=> b!5918609 (= e!3623771 ((_ map or) call!469259 call!469256))))

(declare-fun b!5918610 () Bool)

(declare-fun c!1051994 () Bool)

(assert (=> b!5918610 (= c!1051994 ((_ is Star!15969) (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(declare-fun e!3623772 () (InoxSet Context!10706))

(assert (=> b!5918610 (= e!3623772 e!3623774)))

(declare-fun c!1051997 () Bool)

(declare-fun d!1856324 () Bool)

(assert (=> d!1856324 (= c!1051997 (and ((_ is ElementMatch!15969) (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (= (c!1051439 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (h!70532 s!2326))))))

(declare-fun e!3623773 () (InoxSet Context!10706))

(assert (=> d!1856324 (= (derivationStepZipperDown!1219 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))) (ite c!1051746 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469054)) (h!70532 s!2326)) e!3623773)))

(declare-fun c!1051996 () Bool)

(declare-fun bm!469252 () Bool)

(assert (=> bm!469252 (= call!469259 (derivationStepZipperDown!1219 (ite c!1051996 (regTwo!32451 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (regOne!32450 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))) (ite c!1051996 (ite c!1051746 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469054)) (Context!10707 call!469255)) (h!70532 s!2326)))))

(declare-fun b!5918611 () Bool)

(assert (=> b!5918611 (= e!3623773 (store ((as const (Array Context!10706 Bool)) false) (ite c!1051746 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469054)) true))))

(declare-fun bm!469253 () Bool)

(assert (=> bm!469253 (= call!469258 (derivationStepZipperDown!1219 (ite c!1051996 (regOne!32451 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (ite c!1051995 (regTwo!32450 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (ite c!1051993 (regOne!32450 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))) (reg!16298 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))) (ite (or c!1051996 c!1051995) (ite c!1051746 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (Context!10707 call!469054)) (Context!10707 call!469254)) (h!70532 s!2326)))))

(declare-fun b!5918612 () Bool)

(declare-fun e!3623770 () Bool)

(assert (=> b!5918612 (= c!1051995 e!3623770)))

(declare-fun res!2481471 () Bool)

(assert (=> b!5918612 (=> (not res!2481471) (not e!3623770))))

(assert (=> b!5918612 (= res!2481471 ((_ is Concat!24814) (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(assert (=> b!5918612 (= e!3623775 e!3623771)))

(declare-fun b!5918613 () Bool)

(assert (=> b!5918613 (= e!3623772 call!469257)))

(declare-fun b!5918614 () Bool)

(assert (=> b!5918614 (= e!3623771 e!3623772)))

(assert (=> b!5918614 (= c!1051993 ((_ is Concat!24814) (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(declare-fun b!5918615 () Bool)

(assert (=> b!5918615 (= e!3623773 e!3623775)))

(assert (=> b!5918615 (= c!1051996 ((_ is Union!15969) (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(declare-fun bm!469254 () Bool)

(assert (=> bm!469254 (= call!469257 call!469256)))

(declare-fun b!5918616 () Bool)

(assert (=> b!5918616 (= e!3623770 (nullable!5964 (regOne!32450 (ite c!1051746 (regTwo!32451 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (regOne!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))))))))

(assert (= (and d!1856324 c!1051997) b!5918611))

(assert (= (and d!1856324 (not c!1051997)) b!5918615))

(assert (= (and b!5918615 c!1051996) b!5918606))

(assert (= (and b!5918615 (not c!1051996)) b!5918612))

(assert (= (and b!5918612 res!2481471) b!5918616))

(assert (= (and b!5918612 c!1051995) b!5918609))

(assert (= (and b!5918612 (not c!1051995)) b!5918614))

(assert (= (and b!5918614 c!1051993) b!5918613))

(assert (= (and b!5918614 (not c!1051993)) b!5918610))

(assert (= (and b!5918610 c!1051994) b!5918607))

(assert (= (and b!5918610 (not c!1051994)) b!5918608))

(assert (= (or b!5918613 b!5918607) bm!469250))

(assert (= (or b!5918613 b!5918607) bm!469254))

(assert (= (or b!5918609 bm!469250) bm!469251))

(assert (= (or b!5918609 bm!469254) bm!469249))

(assert (= (or b!5918606 b!5918609) bm!469252))

(assert (= (or b!5918606 bm!469249) bm!469253))

(declare-fun m!6815892 () Bool)

(assert (=> b!5918611 m!6815892))

(declare-fun m!6815894 () Bool)

(assert (=> bm!469252 m!6815894))

(declare-fun m!6815896 () Bool)

(assert (=> bm!469253 m!6815896))

(declare-fun m!6815898 () Bool)

(assert (=> b!5918616 m!6815898))

(declare-fun m!6815900 () Bool)

(assert (=> bm!469251 m!6815900))

(assert (=> bm!469051 d!1856324))

(assert (=> d!1855738 d!1855984))

(assert (=> d!1855738 d!1856008))

(assert (=> b!5917296 d!1856164))

(declare-fun b!5918617 () Bool)

(declare-fun e!3623781 () (InoxSet Context!10706))

(declare-fun call!469264 () (InoxSet Context!10706))

(declare-fun call!469265 () (InoxSet Context!10706))

(assert (=> b!5918617 (= e!3623781 ((_ map or) call!469264 call!469265))))

(declare-fun bm!469255 () Bool)

(declare-fun call!469262 () (InoxSet Context!10706))

(assert (=> bm!469255 (= call!469262 call!469264)))

(declare-fun bm!469256 () Bool)

(declare-fun call!469260 () List!64206)

(declare-fun call!469261 () List!64206)

(assert (=> bm!469256 (= call!469260 call!469261)))

(declare-fun b!5918618 () Bool)

(declare-fun e!3623780 () (InoxSet Context!10706))

(declare-fun call!469263 () (InoxSet Context!10706))

(assert (=> b!5918618 (= e!3623780 call!469263)))

(declare-fun c!1051998 () Bool)

(declare-fun bm!469257 () Bool)

(declare-fun c!1052000 () Bool)

(assert (=> bm!469257 (= call!469261 ($colon$colon!1856 (exprs!5853 (ite (or c!1051708 c!1051707) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469022))) (ite (or c!1052000 c!1051998) (regTwo!32450 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))) (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))))))

(declare-fun b!5918619 () Bool)

(assert (=> b!5918619 (= e!3623780 ((as const (Array Context!10706 Bool)) false))))

(declare-fun b!5918620 () Bool)

(declare-fun e!3623777 () (InoxSet Context!10706))

(assert (=> b!5918620 (= e!3623777 ((_ map or) call!469265 call!469262))))

(declare-fun b!5918621 () Bool)

(declare-fun c!1051999 () Bool)

(assert (=> b!5918621 (= c!1051999 ((_ is Star!15969) (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))))))

(declare-fun e!3623778 () (InoxSet Context!10706))

(assert (=> b!5918621 (= e!3623778 e!3623780)))

(declare-fun d!1856326 () Bool)

(declare-fun c!1052002 () Bool)

(assert (=> d!1856326 (= c!1052002 (and ((_ is ElementMatch!15969) (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))) (= (c!1051439 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))) (h!70532 s!2326))))))

(declare-fun e!3623779 () (InoxSet Context!10706))

(assert (=> d!1856326 (= (derivationStepZipperDown!1219 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))) (ite (or c!1051708 c!1051707) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469022)) (h!70532 s!2326)) e!3623779)))

(declare-fun c!1052001 () Bool)

(declare-fun bm!469258 () Bool)

(assert (=> bm!469258 (= call!469265 (derivationStepZipperDown!1219 (ite c!1052001 (regTwo!32451 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))) (regOne!32450 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))) (ite c!1052001 (ite (or c!1051708 c!1051707) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469022)) (Context!10707 call!469261)) (h!70532 s!2326)))))

(declare-fun b!5918622 () Bool)

(assert (=> b!5918622 (= e!3623779 (store ((as const (Array Context!10706 Bool)) false) (ite (or c!1051708 c!1051707) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469022)) true))))

(declare-fun bm!469259 () Bool)

(assert (=> bm!469259 (= call!469264 (derivationStepZipperDown!1219 (ite c!1052001 (regOne!32451 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))) (ite c!1052000 (regTwo!32450 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))) (ite c!1051998 (regOne!32450 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))) (reg!16298 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))))) (ite (or c!1052001 c!1052000) (ite (or c!1051708 c!1051707) (ite (or c!1051503 c!1051502) (Context!10707 Nil!64082) (Context!10707 call!468925)) (Context!10707 call!469022)) (Context!10707 call!469260)) (h!70532 s!2326)))))

(declare-fun b!5918623 () Bool)

(declare-fun e!3623776 () Bool)

(assert (=> b!5918623 (= c!1052000 e!3623776)))

(declare-fun res!2481472 () Bool)

(assert (=> b!5918623 (=> (not res!2481472) (not e!3623776))))

(assert (=> b!5918623 (= res!2481472 ((_ is Concat!24814) (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))))))

(assert (=> b!5918623 (= e!3623781 e!3623777)))

(declare-fun b!5918624 () Bool)

(assert (=> b!5918624 (= e!3623778 call!469263)))

(declare-fun b!5918625 () Bool)

(assert (=> b!5918625 (= e!3623777 e!3623778)))

(assert (=> b!5918625 (= c!1051998 ((_ is Concat!24814) (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))))))

(declare-fun b!5918626 () Bool)

(assert (=> b!5918626 (= e!3623779 e!3623781)))

(assert (=> b!5918626 (= c!1052001 ((_ is Union!15969) (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))))))))))

(declare-fun bm!469260 () Bool)

(assert (=> bm!469260 (= call!469263 call!469262)))

(declare-fun b!5918627 () Bool)

(assert (=> b!5918627 (= e!3623776 (nullable!5964 (regOne!32450 (ite c!1051708 (regOne!32451 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051707 (regTwo!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (ite c!1051702 (regOne!32450 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292))))) (reg!16298 (ite c!1051503 (regOne!32451 r!7292) (ite c!1051502 (regTwo!32450 r!7292) (ite c!1051500 (regOne!32450 r!7292) (reg!16298 r!7292)))))))))))))

(assert (= (and d!1856326 c!1052002) b!5918622))

(assert (= (and d!1856326 (not c!1052002)) b!5918626))

(assert (= (and b!5918626 c!1052001) b!5918617))

(assert (= (and b!5918626 (not c!1052001)) b!5918623))

(assert (= (and b!5918623 res!2481472) b!5918627))

(assert (= (and b!5918623 c!1052000) b!5918620))

(assert (= (and b!5918623 (not c!1052000)) b!5918625))

(assert (= (and b!5918625 c!1051998) b!5918624))

(assert (= (and b!5918625 (not c!1051998)) b!5918621))

(assert (= (and b!5918621 c!1051999) b!5918618))

(assert (= (and b!5918621 (not c!1051999)) b!5918619))

(assert (= (or b!5918624 b!5918618) bm!469256))

(assert (= (or b!5918624 b!5918618) bm!469260))

(assert (= (or b!5918620 bm!469256) bm!469257))

(assert (= (or b!5918620 bm!469260) bm!469255))

(assert (= (or b!5918617 b!5918620) bm!469258))

(assert (= (or b!5918617 bm!469255) bm!469259))

(declare-fun m!6815902 () Bool)

(assert (=> b!5918622 m!6815902))

(declare-fun m!6815904 () Bool)

(assert (=> bm!469258 m!6815904))

(declare-fun m!6815906 () Bool)

(assert (=> bm!469259 m!6815906))

(declare-fun m!6815908 () Bool)

(assert (=> b!5918627 m!6815908))

(declare-fun m!6815910 () Bool)

(assert (=> bm!469257 m!6815910))

(assert (=> bm!469025 d!1856326))

(declare-fun d!1856328 () Bool)

(assert (=> d!1856328 (= (isConcat!920 lt!2309794) ((_ is Concat!24814) lt!2309794))))

(assert (=> b!5917252 d!1856328))

(assert (=> b!5917001 d!1856074))

(declare-fun d!1856330 () Bool)

(assert (=> d!1856330 (= ($colon$colon!1856 (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))) (ite (or c!1051745 c!1051743) (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082)))))) (Cons!64082 (ite (or c!1051745 c!1051743) (regTwo!32450 (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (h!70530 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))) (exprs!5853 (Context!10707 (t!377595 (exprs!5853 (Context!10707 (Cons!64082 r!7292 Nil!64082))))))))))

(assert (=> bm!469050 d!1856330))

(declare-fun b!5918628 () Bool)

(declare-fun e!3623782 () Bool)

(assert (=> b!5918628 (= e!3623782 tp_is_empty!41191)))

(declare-fun b!5918629 () Bool)

(declare-fun tp!1644292 () Bool)

(declare-fun tp!1644294 () Bool)

(assert (=> b!5918629 (= e!3623782 (and tp!1644292 tp!1644294))))

(declare-fun b!5918631 () Bool)

(declare-fun tp!1644293 () Bool)

(declare-fun tp!1644295 () Bool)

(assert (=> b!5918631 (= e!3623782 (and tp!1644293 tp!1644295))))

(assert (=> b!5917651 (= tp!1644075 e!3623782)))

(declare-fun b!5918630 () Bool)

(declare-fun tp!1644291 () Bool)

(assert (=> b!5918630 (= e!3623782 tp!1644291)))

(assert (= (and b!5917651 ((_ is ElementMatch!15969) (reg!16298 (regOne!32450 (regOne!32451 r!7292))))) b!5918628))

(assert (= (and b!5917651 ((_ is Concat!24814) (reg!16298 (regOne!32450 (regOne!32451 r!7292))))) b!5918629))

(assert (= (and b!5917651 ((_ is Star!15969) (reg!16298 (regOne!32450 (regOne!32451 r!7292))))) b!5918630))

(assert (= (and b!5917651 ((_ is Union!15969) (reg!16298 (regOne!32450 (regOne!32451 r!7292))))) b!5918631))

(declare-fun b!5918632 () Bool)

(declare-fun e!3623783 () Bool)

(assert (=> b!5918632 (= e!3623783 tp_is_empty!41191)))

(declare-fun b!5918633 () Bool)

(declare-fun tp!1644297 () Bool)

(declare-fun tp!1644299 () Bool)

(assert (=> b!5918633 (= e!3623783 (and tp!1644297 tp!1644299))))

(declare-fun b!5918635 () Bool)

(declare-fun tp!1644298 () Bool)

(declare-fun tp!1644300 () Bool)

(assert (=> b!5918635 (= e!3623783 (and tp!1644298 tp!1644300))))

(assert (=> b!5917695 (= tp!1644132 e!3623783)))

(declare-fun b!5918634 () Bool)

(declare-fun tp!1644296 () Bool)

(assert (=> b!5918634 (= e!3623783 tp!1644296)))

(assert (= (and b!5917695 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32450 (regOne!32450 r!7292))))) b!5918632))

(assert (= (and b!5917695 ((_ is Concat!24814) (regOne!32450 (regTwo!32450 (regOne!32450 r!7292))))) b!5918633))

(assert (= (and b!5917695 ((_ is Star!15969) (regOne!32450 (regTwo!32450 (regOne!32450 r!7292))))) b!5918634))

(assert (= (and b!5917695 ((_ is Union!15969) (regOne!32450 (regTwo!32450 (regOne!32450 r!7292))))) b!5918635))

(declare-fun b!5918636 () Bool)

(declare-fun e!3623784 () Bool)

(assert (=> b!5918636 (= e!3623784 tp_is_empty!41191)))

(declare-fun b!5918637 () Bool)

(declare-fun tp!1644302 () Bool)

(declare-fun tp!1644304 () Bool)

(assert (=> b!5918637 (= e!3623784 (and tp!1644302 tp!1644304))))

(declare-fun b!5918639 () Bool)

(declare-fun tp!1644303 () Bool)

(declare-fun tp!1644305 () Bool)

(assert (=> b!5918639 (= e!3623784 (and tp!1644303 tp!1644305))))

(assert (=> b!5917695 (= tp!1644134 e!3623784)))

(declare-fun b!5918638 () Bool)

(declare-fun tp!1644301 () Bool)

(assert (=> b!5918638 (= e!3623784 tp!1644301)))

(assert (= (and b!5917695 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32450 (regOne!32450 r!7292))))) b!5918636))

(assert (= (and b!5917695 ((_ is Concat!24814) (regTwo!32450 (regTwo!32450 (regOne!32450 r!7292))))) b!5918637))

(assert (= (and b!5917695 ((_ is Star!15969) (regTwo!32450 (regTwo!32450 (regOne!32450 r!7292))))) b!5918638))

(assert (= (and b!5917695 ((_ is Union!15969) (regTwo!32450 (regTwo!32450 (regOne!32450 r!7292))))) b!5918639))

(declare-fun b!5918640 () Bool)

(declare-fun e!3623785 () Bool)

(assert (=> b!5918640 (= e!3623785 tp_is_empty!41191)))

(declare-fun b!5918641 () Bool)

(declare-fun tp!1644307 () Bool)

(declare-fun tp!1644309 () Bool)

(assert (=> b!5918641 (= e!3623785 (and tp!1644307 tp!1644309))))

(declare-fun b!5918643 () Bool)

(declare-fun tp!1644308 () Bool)

(declare-fun tp!1644310 () Bool)

(assert (=> b!5918643 (= e!3623785 (and tp!1644308 tp!1644310))))

(assert (=> b!5917660 (= tp!1644087 e!3623785)))

(declare-fun b!5918642 () Bool)

(declare-fun tp!1644306 () Bool)

(assert (=> b!5918642 (= e!3623785 tp!1644306)))

(assert (= (and b!5917660 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32451 (regTwo!32451 r!7292))))) b!5918640))

(assert (= (and b!5917660 ((_ is Concat!24814) (regOne!32451 (regOne!32451 (regTwo!32451 r!7292))))) b!5918641))

(assert (= (and b!5917660 ((_ is Star!15969) (regOne!32451 (regOne!32451 (regTwo!32451 r!7292))))) b!5918642))

(assert (= (and b!5917660 ((_ is Union!15969) (regOne!32451 (regOne!32451 (regTwo!32451 r!7292))))) b!5918643))

(declare-fun b!5918654 () Bool)

(declare-fun e!3623792 () Bool)

(assert (=> b!5918654 (= e!3623792 tp_is_empty!41191)))

(declare-fun b!5918655 () Bool)

(declare-fun tp!1644312 () Bool)

(declare-fun tp!1644314 () Bool)

(assert (=> b!5918655 (= e!3623792 (and tp!1644312 tp!1644314))))

(declare-fun b!5918657 () Bool)

(declare-fun tp!1644313 () Bool)

(declare-fun tp!1644315 () Bool)

(assert (=> b!5918657 (= e!3623792 (and tp!1644313 tp!1644315))))

(assert (=> b!5917660 (= tp!1644089 e!3623792)))

(declare-fun b!5918656 () Bool)

(declare-fun tp!1644311 () Bool)

(assert (=> b!5918656 (= e!3623792 tp!1644311)))

(assert (= (and b!5917660 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32451 (regTwo!32451 r!7292))))) b!5918654))

(assert (= (and b!5917660 ((_ is Concat!24814) (regTwo!32451 (regOne!32451 (regTwo!32451 r!7292))))) b!5918655))

(assert (= (and b!5917660 ((_ is Star!15969) (regTwo!32451 (regOne!32451 (regTwo!32451 r!7292))))) b!5918656))

(assert (= (and b!5917660 ((_ is Union!15969) (regTwo!32451 (regOne!32451 (regTwo!32451 r!7292))))) b!5918657))

(declare-fun b!5918658 () Bool)

(declare-fun e!3623793 () Bool)

(declare-fun tp!1644316 () Bool)

(declare-fun tp!1644317 () Bool)

(assert (=> b!5918658 (= e!3623793 (and tp!1644316 tp!1644317))))

(assert (=> b!5917596 (= tp!1644024 e!3623793)))

(assert (= (and b!5917596 ((_ is Cons!64082) (exprs!5853 setElem!40167))) b!5918658))

(declare-fun b!5918659 () Bool)

(declare-fun e!3623794 () Bool)

(assert (=> b!5918659 (= e!3623794 tp_is_empty!41191)))

(declare-fun b!5918660 () Bool)

(declare-fun tp!1644319 () Bool)

(declare-fun tp!1644321 () Bool)

(assert (=> b!5918660 (= e!3623794 (and tp!1644319 tp!1644321))))

(declare-fun b!5918662 () Bool)

(declare-fun tp!1644320 () Bool)

(declare-fun tp!1644322 () Bool)

(assert (=> b!5918662 (= e!3623794 (and tp!1644320 tp!1644322))))

(assert (=> b!5917602 (= tp!1644033 e!3623794)))

(declare-fun b!5918661 () Bool)

(declare-fun tp!1644318 () Bool)

(assert (=> b!5918661 (= e!3623794 tp!1644318)))

(assert (= (and b!5917602 ((_ is ElementMatch!15969) (h!70530 (t!377595 (exprs!5853 setElem!40160))))) b!5918659))

(assert (= (and b!5917602 ((_ is Concat!24814) (h!70530 (t!377595 (exprs!5853 setElem!40160))))) b!5918660))

(assert (= (and b!5917602 ((_ is Star!15969) (h!70530 (t!377595 (exprs!5853 setElem!40160))))) b!5918661))

(assert (= (and b!5917602 ((_ is Union!15969) (h!70530 (t!377595 (exprs!5853 setElem!40160))))) b!5918662))

(declare-fun b!5918663 () Bool)

(declare-fun e!3623795 () Bool)

(declare-fun tp!1644323 () Bool)

(declare-fun tp!1644324 () Bool)

(assert (=> b!5918663 (= e!3623795 (and tp!1644323 tp!1644324))))

(assert (=> b!5917602 (= tp!1644034 e!3623795)))

(assert (= (and b!5917602 ((_ is Cons!64082) (t!377595 (t!377595 (exprs!5853 setElem!40160))))) b!5918663))

(declare-fun b!5918664 () Bool)

(declare-fun e!3623796 () Bool)

(assert (=> b!5918664 (= e!3623796 tp_is_empty!41191)))

(declare-fun b!5918665 () Bool)

(declare-fun tp!1644326 () Bool)

(declare-fun tp!1644328 () Bool)

(assert (=> b!5918665 (= e!3623796 (and tp!1644326 tp!1644328))))

(declare-fun b!5918667 () Bool)

(declare-fun tp!1644327 () Bool)

(declare-fun tp!1644329 () Bool)

(assert (=> b!5918667 (= e!3623796 (and tp!1644327 tp!1644329))))

(assert (=> b!5917658 (= tp!1644086 e!3623796)))

(declare-fun b!5918666 () Bool)

(declare-fun tp!1644325 () Bool)

(assert (=> b!5918666 (= e!3623796 tp!1644325)))

(assert (= (and b!5917658 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))))) b!5918664))

(assert (= (and b!5917658 ((_ is Concat!24814) (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))))) b!5918665))

(assert (= (and b!5917658 ((_ is Star!15969) (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))))) b!5918666))

(assert (= (and b!5917658 ((_ is Union!15969) (regOne!32450 (regOne!32451 (regTwo!32451 r!7292))))) b!5918667))

(declare-fun b!5918668 () Bool)

(declare-fun e!3623797 () Bool)

(assert (=> b!5918668 (= e!3623797 tp_is_empty!41191)))

(declare-fun b!5918669 () Bool)

(declare-fun tp!1644331 () Bool)

(declare-fun tp!1644333 () Bool)

(assert (=> b!5918669 (= e!3623797 (and tp!1644331 tp!1644333))))

(declare-fun b!5918671 () Bool)

(declare-fun tp!1644332 () Bool)

(declare-fun tp!1644334 () Bool)

(assert (=> b!5918671 (= e!3623797 (and tp!1644332 tp!1644334))))

(assert (=> b!5917658 (= tp!1644088 e!3623797)))

(declare-fun b!5918670 () Bool)

(declare-fun tp!1644330 () Bool)

(assert (=> b!5918670 (= e!3623797 tp!1644330)))

(assert (= (and b!5917658 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))))) b!5918668))

(assert (= (and b!5917658 ((_ is Concat!24814) (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))))) b!5918669))

(assert (= (and b!5917658 ((_ is Star!15969) (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))))) b!5918670))

(assert (= (and b!5917658 ((_ is Union!15969) (regTwo!32450 (regOne!32451 (regTwo!32451 r!7292))))) b!5918671))

(declare-fun b!5918672 () Bool)

(declare-fun e!3623798 () Bool)

(assert (=> b!5918672 (= e!3623798 tp_is_empty!41191)))

(declare-fun b!5918673 () Bool)

(declare-fun tp!1644336 () Bool)

(declare-fun tp!1644338 () Bool)

(assert (=> b!5918673 (= e!3623798 (and tp!1644336 tp!1644338))))

(declare-fun b!5918675 () Bool)

(declare-fun tp!1644337 () Bool)

(declare-fun tp!1644339 () Bool)

(assert (=> b!5918675 (= e!3623798 (and tp!1644337 tp!1644339))))

(assert (=> b!5917583 (= tp!1644005 e!3623798)))

(declare-fun b!5918674 () Bool)

(declare-fun tp!1644335 () Bool)

(assert (=> b!5918674 (= e!3623798 tp!1644335)))

(assert (= (and b!5917583 ((_ is ElementMatch!15969) (reg!16298 (regOne!32451 (regOne!32451 r!7292))))) b!5918672))

(assert (= (and b!5917583 ((_ is Concat!24814) (reg!16298 (regOne!32451 (regOne!32451 r!7292))))) b!5918673))

(assert (= (and b!5917583 ((_ is Star!15969) (reg!16298 (regOne!32451 (regOne!32451 r!7292))))) b!5918674))

(assert (= (and b!5917583 ((_ is Union!15969) (reg!16298 (regOne!32451 (regOne!32451 r!7292))))) b!5918675))

(declare-fun b!5918676 () Bool)

(declare-fun e!3623799 () Bool)

(assert (=> b!5918676 (= e!3623799 tp_is_empty!41191)))

(declare-fun b!5918677 () Bool)

(declare-fun tp!1644341 () Bool)

(declare-fun tp!1644343 () Bool)

(assert (=> b!5918677 (= e!3623799 (and tp!1644341 tp!1644343))))

(declare-fun b!5918679 () Bool)

(declare-fun tp!1644342 () Bool)

(declare-fun tp!1644344 () Bool)

(assert (=> b!5918679 (= e!3623799 (and tp!1644342 tp!1644344))))

(assert (=> b!5917591 (= tp!1644015 e!3623799)))

(declare-fun b!5918678 () Bool)

(declare-fun tp!1644340 () Bool)

(assert (=> b!5918678 (= e!3623799 tp!1644340)))

(assert (= (and b!5917591 ((_ is ElementMatch!15969) (reg!16298 (reg!16298 (regOne!32451 r!7292))))) b!5918676))

(assert (= (and b!5917591 ((_ is Concat!24814) (reg!16298 (reg!16298 (regOne!32451 r!7292))))) b!5918677))

(assert (= (and b!5917591 ((_ is Star!15969) (reg!16298 (reg!16298 (regOne!32451 r!7292))))) b!5918678))

(assert (= (and b!5917591 ((_ is Union!15969) (reg!16298 (reg!16298 (regOne!32451 r!7292))))) b!5918679))

(declare-fun b!5918680 () Bool)

(declare-fun e!3623800 () Bool)

(assert (=> b!5918680 (= e!3623800 tp_is_empty!41191)))

(declare-fun b!5918681 () Bool)

(declare-fun tp!1644346 () Bool)

(declare-fun tp!1644348 () Bool)

(assert (=> b!5918681 (= e!3623800 (and tp!1644346 tp!1644348))))

(declare-fun b!5918683 () Bool)

(declare-fun tp!1644347 () Bool)

(declare-fun tp!1644349 () Bool)

(assert (=> b!5918683 (= e!3623800 (and tp!1644347 tp!1644349))))

(assert (=> b!5917609 (= tp!1644040 e!3623800)))

(declare-fun b!5918682 () Bool)

(declare-fun tp!1644345 () Bool)

(assert (=> b!5918682 (= e!3623800 tp!1644345)))

(assert (= (and b!5917609 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32450 (reg!16298 r!7292))))) b!5918680))

(assert (= (and b!5917609 ((_ is Concat!24814) (reg!16298 (regTwo!32450 (reg!16298 r!7292))))) b!5918681))

(assert (= (and b!5917609 ((_ is Star!15969) (reg!16298 (regTwo!32450 (reg!16298 r!7292))))) b!5918682))

(assert (= (and b!5917609 ((_ is Union!15969) (reg!16298 (regTwo!32450 (reg!16298 r!7292))))) b!5918683))

(declare-fun b!5918684 () Bool)

(declare-fun e!3623801 () Bool)

(assert (=> b!5918684 (= e!3623801 tp_is_empty!41191)))

(declare-fun b!5918685 () Bool)

(declare-fun tp!1644351 () Bool)

(declare-fun tp!1644353 () Bool)

(assert (=> b!5918685 (= e!3623801 (and tp!1644351 tp!1644353))))

(declare-fun b!5918687 () Bool)

(declare-fun tp!1644352 () Bool)

(declare-fun tp!1644354 () Bool)

(assert (=> b!5918687 (= e!3623801 (and tp!1644352 tp!1644354))))

(assert (=> b!5917663 (= tp!1644090 e!3623801)))

(declare-fun b!5918686 () Bool)

(declare-fun tp!1644350 () Bool)

(assert (=> b!5918686 (= e!3623801 tp!1644350)))

(assert (= (and b!5917663 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918684))

(assert (= (and b!5917663 ((_ is Concat!24814) (reg!16298 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918685))

(assert (= (and b!5917663 ((_ is Star!15969) (reg!16298 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918686))

(assert (= (and b!5917663 ((_ is Union!15969) (reg!16298 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918687))

(declare-fun b!5918688 () Bool)

(declare-fun e!3623802 () Bool)

(assert (=> b!5918688 (= e!3623802 tp_is_empty!41191)))

(declare-fun b!5918689 () Bool)

(declare-fun tp!1644356 () Bool)

(declare-fun tp!1644358 () Bool)

(assert (=> b!5918689 (= e!3623802 (and tp!1644356 tp!1644358))))

(declare-fun b!5918691 () Bool)

(declare-fun tp!1644357 () Bool)

(declare-fun tp!1644359 () Bool)

(assert (=> b!5918691 (= e!3623802 (and tp!1644357 tp!1644359))))

(assert (=> b!5917618 (= tp!1644052 e!3623802)))

(declare-fun b!5918690 () Bool)

(declare-fun tp!1644355 () Bool)

(assert (=> b!5918690 (= e!3623802 tp!1644355)))

(assert (= (and b!5917618 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32451 (reg!16298 r!7292))))) b!5918688))

(assert (= (and b!5917618 ((_ is Concat!24814) (regOne!32451 (regTwo!32451 (reg!16298 r!7292))))) b!5918689))

(assert (= (and b!5917618 ((_ is Star!15969) (regOne!32451 (regTwo!32451 (reg!16298 r!7292))))) b!5918690))

(assert (= (and b!5917618 ((_ is Union!15969) (regOne!32451 (regTwo!32451 (reg!16298 r!7292))))) b!5918691))

(declare-fun b!5918692 () Bool)

(declare-fun e!3623803 () Bool)

(assert (=> b!5918692 (= e!3623803 tp_is_empty!41191)))

(declare-fun b!5918693 () Bool)

(declare-fun tp!1644361 () Bool)

(declare-fun tp!1644363 () Bool)

(assert (=> b!5918693 (= e!3623803 (and tp!1644361 tp!1644363))))

(declare-fun b!5918695 () Bool)

(declare-fun tp!1644362 () Bool)

(declare-fun tp!1644364 () Bool)

(assert (=> b!5918695 (= e!3623803 (and tp!1644362 tp!1644364))))

(assert (=> b!5917618 (= tp!1644054 e!3623803)))

(declare-fun b!5918694 () Bool)

(declare-fun tp!1644360 () Bool)

(assert (=> b!5918694 (= e!3623803 tp!1644360)))

(assert (= (and b!5917618 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32451 (reg!16298 r!7292))))) b!5918692))

(assert (= (and b!5917618 ((_ is Concat!24814) (regTwo!32451 (regTwo!32451 (reg!16298 r!7292))))) b!5918693))

(assert (= (and b!5917618 ((_ is Star!15969) (regTwo!32451 (regTwo!32451 (reg!16298 r!7292))))) b!5918694))

(assert (= (and b!5917618 ((_ is Union!15969) (regTwo!32451 (regTwo!32451 (reg!16298 r!7292))))) b!5918695))

(declare-fun b!5918696 () Bool)

(declare-fun e!3623804 () Bool)

(assert (=> b!5918696 (= e!3623804 tp_is_empty!41191)))

(declare-fun b!5918697 () Bool)

(declare-fun tp!1644366 () Bool)

(declare-fun tp!1644368 () Bool)

(assert (=> b!5918697 (= e!3623804 (and tp!1644366 tp!1644368))))

(declare-fun b!5918699 () Bool)

(declare-fun tp!1644367 () Bool)

(declare-fun tp!1644369 () Bool)

(assert (=> b!5918699 (= e!3623804 (and tp!1644367 tp!1644369))))

(assert (=> b!5917575 (= tp!1643995 e!3623804)))

(declare-fun b!5918698 () Bool)

(declare-fun tp!1644365 () Bool)

(assert (=> b!5918698 (= e!3623804 tp!1644365)))

(assert (= (and b!5917575 ((_ is ElementMatch!15969) (reg!16298 (regOne!32451 (regTwo!32450 r!7292))))) b!5918696))

(assert (= (and b!5917575 ((_ is Concat!24814) (reg!16298 (regOne!32451 (regTwo!32450 r!7292))))) b!5918697))

(assert (= (and b!5917575 ((_ is Star!15969) (reg!16298 (regOne!32451 (regTwo!32450 r!7292))))) b!5918698))

(assert (= (and b!5917575 ((_ is Union!15969) (reg!16298 (regOne!32451 (regTwo!32450 r!7292))))) b!5918699))

(declare-fun b!5918700 () Bool)

(declare-fun e!3623805 () Bool)

(assert (=> b!5918700 (= e!3623805 tp_is_empty!41191)))

(declare-fun b!5918701 () Bool)

(declare-fun tp!1644371 () Bool)

(declare-fun tp!1644373 () Bool)

(assert (=> b!5918701 (= e!3623805 (and tp!1644371 tp!1644373))))

(declare-fun b!5918703 () Bool)

(declare-fun tp!1644372 () Bool)

(declare-fun tp!1644374 () Bool)

(assert (=> b!5918703 (= e!3623805 (and tp!1644372 tp!1644374))))

(assert (=> b!5917681 (= tp!1644113 e!3623805)))

(declare-fun b!5918702 () Bool)

(declare-fun tp!1644370 () Bool)

(assert (=> b!5918702 (= e!3623805 tp!1644370)))

(assert (= (and b!5917681 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32450 (regTwo!32451 r!7292))))) b!5918700))

(assert (= (and b!5917681 ((_ is Concat!24814) (regOne!32451 (regOne!32450 (regTwo!32451 r!7292))))) b!5918701))

(assert (= (and b!5917681 ((_ is Star!15969) (regOne!32451 (regOne!32450 (regTwo!32451 r!7292))))) b!5918702))

(assert (= (and b!5917681 ((_ is Union!15969) (regOne!32451 (regOne!32450 (regTwo!32451 r!7292))))) b!5918703))

(declare-fun b!5918704 () Bool)

(declare-fun e!3623806 () Bool)

(assert (=> b!5918704 (= e!3623806 tp_is_empty!41191)))

(declare-fun b!5918705 () Bool)

(declare-fun tp!1644376 () Bool)

(declare-fun tp!1644378 () Bool)

(assert (=> b!5918705 (= e!3623806 (and tp!1644376 tp!1644378))))

(declare-fun b!5918707 () Bool)

(declare-fun tp!1644377 () Bool)

(declare-fun tp!1644379 () Bool)

(assert (=> b!5918707 (= e!3623806 (and tp!1644377 tp!1644379))))

(assert (=> b!5917681 (= tp!1644115 e!3623806)))

(declare-fun b!5918706 () Bool)

(declare-fun tp!1644375 () Bool)

(assert (=> b!5918706 (= e!3623806 tp!1644375)))

(assert (= (and b!5917681 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32450 (regTwo!32451 r!7292))))) b!5918704))

(assert (= (and b!5917681 ((_ is Concat!24814) (regTwo!32451 (regOne!32450 (regTwo!32451 r!7292))))) b!5918705))

(assert (= (and b!5917681 ((_ is Star!15969) (regTwo!32451 (regOne!32450 (regTwo!32451 r!7292))))) b!5918706))

(assert (= (and b!5917681 ((_ is Union!15969) (regTwo!32451 (regOne!32450 (regTwo!32451 r!7292))))) b!5918707))

(declare-fun b!5918708 () Bool)

(declare-fun e!3623807 () Bool)

(assert (=> b!5918708 (= e!3623807 tp_is_empty!41191)))

(declare-fun b!5918709 () Bool)

(declare-fun tp!1644381 () Bool)

(declare-fun tp!1644383 () Bool)

(assert (=> b!5918709 (= e!3623807 (and tp!1644381 tp!1644383))))

(declare-fun b!5918711 () Bool)

(declare-fun tp!1644382 () Bool)

(declare-fun tp!1644384 () Bool)

(assert (=> b!5918711 (= e!3623807 (and tp!1644382 tp!1644384))))

(assert (=> b!5917672 (= tp!1644102 e!3623807)))

(declare-fun b!5918710 () Bool)

(declare-fun tp!1644380 () Bool)

(assert (=> b!5918710 (= e!3623807 tp!1644380)))

(assert (= (and b!5917672 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32451 (regOne!32450 r!7292))))) b!5918708))

(assert (= (and b!5917672 ((_ is Concat!24814) (regOne!32451 (regOne!32451 (regOne!32450 r!7292))))) b!5918709))

(assert (= (and b!5917672 ((_ is Star!15969) (regOne!32451 (regOne!32451 (regOne!32450 r!7292))))) b!5918710))

(assert (= (and b!5917672 ((_ is Union!15969) (regOne!32451 (regOne!32451 (regOne!32450 r!7292))))) b!5918711))

(declare-fun b!5918712 () Bool)

(declare-fun e!3623808 () Bool)

(assert (=> b!5918712 (= e!3623808 tp_is_empty!41191)))

(declare-fun b!5918713 () Bool)

(declare-fun tp!1644386 () Bool)

(declare-fun tp!1644388 () Bool)

(assert (=> b!5918713 (= e!3623808 (and tp!1644386 tp!1644388))))

(declare-fun b!5918715 () Bool)

(declare-fun tp!1644387 () Bool)

(declare-fun tp!1644389 () Bool)

(assert (=> b!5918715 (= e!3623808 (and tp!1644387 tp!1644389))))

(assert (=> b!5917672 (= tp!1644104 e!3623808)))

(declare-fun b!5918714 () Bool)

(declare-fun tp!1644385 () Bool)

(assert (=> b!5918714 (= e!3623808 tp!1644385)))

(assert (= (and b!5917672 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32451 (regOne!32450 r!7292))))) b!5918712))

(assert (= (and b!5917672 ((_ is Concat!24814) (regTwo!32451 (regOne!32451 (regOne!32450 r!7292))))) b!5918713))

(assert (= (and b!5917672 ((_ is Star!15969) (regTwo!32451 (regOne!32451 (regOne!32450 r!7292))))) b!5918714))

(assert (= (and b!5917672 ((_ is Union!15969) (regTwo!32451 (regOne!32451 (regOne!32450 r!7292))))) b!5918715))

(declare-fun b!5918716 () Bool)

(declare-fun e!3623809 () Bool)

(declare-fun tp!1644390 () Bool)

(declare-fun tp!1644391 () Bool)

(assert (=> b!5918716 (= e!3623809 (and tp!1644390 tp!1644391))))

(assert (=> b!5917208 (= tp!1643988 e!3623809)))

(assert (= (and b!5917208 ((_ is Cons!64082) (exprs!5853 (h!70531 res!2480970)))) b!5918716))

(declare-fun b!5918718 () Bool)

(declare-fun e!3623811 () Bool)

(declare-fun tp!1644392 () Bool)

(assert (=> b!5918718 (= e!3623811 tp!1644392)))

(declare-fun tp!1644393 () Bool)

(declare-fun e!3623810 () Bool)

(declare-fun b!5918717 () Bool)

(assert (=> b!5918717 (= e!3623810 (and (inv!83169 (h!70531 (t!377596 (t!377596 (t!377596 zl!343))))) e!3623811 tp!1644393))))

(assert (=> b!5917593 (= tp!1644021 e!3623810)))

(assert (= b!5918717 b!5918718))

(assert (= (and b!5917593 ((_ is Cons!64083) (t!377596 (t!377596 (t!377596 zl!343))))) b!5918717))

(declare-fun m!6815936 () Bool)

(assert (=> b!5918717 m!6815936))

(declare-fun b!5918719 () Bool)

(declare-fun e!3623812 () Bool)

(assert (=> b!5918719 (= e!3623812 tp_is_empty!41191)))

(declare-fun b!5918720 () Bool)

(declare-fun tp!1644395 () Bool)

(declare-fun tp!1644397 () Bool)

(assert (=> b!5918720 (= e!3623812 (and tp!1644395 tp!1644397))))

(declare-fun b!5918722 () Bool)

(declare-fun tp!1644396 () Bool)

(declare-fun tp!1644398 () Bool)

(assert (=> b!5918722 (= e!3623812 (and tp!1644396 tp!1644398))))

(assert (=> b!5917679 (= tp!1644112 e!3623812)))

(declare-fun b!5918721 () Bool)

(declare-fun tp!1644394 () Bool)

(assert (=> b!5918721 (= e!3623812 tp!1644394)))

(assert (= (and b!5917679 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32450 (regTwo!32451 r!7292))))) b!5918719))

(assert (= (and b!5917679 ((_ is Concat!24814) (regOne!32450 (regOne!32450 (regTwo!32451 r!7292))))) b!5918720))

(assert (= (and b!5917679 ((_ is Star!15969) (regOne!32450 (regOne!32450 (regTwo!32451 r!7292))))) b!5918721))

(assert (= (and b!5917679 ((_ is Union!15969) (regOne!32450 (regOne!32450 (regTwo!32451 r!7292))))) b!5918722))

(declare-fun b!5918723 () Bool)

(declare-fun e!3623813 () Bool)

(assert (=> b!5918723 (= e!3623813 tp_is_empty!41191)))

(declare-fun b!5918724 () Bool)

(declare-fun tp!1644400 () Bool)

(declare-fun tp!1644402 () Bool)

(assert (=> b!5918724 (= e!3623813 (and tp!1644400 tp!1644402))))

(declare-fun b!5918726 () Bool)

(declare-fun tp!1644401 () Bool)

(declare-fun tp!1644403 () Bool)

(assert (=> b!5918726 (= e!3623813 (and tp!1644401 tp!1644403))))

(assert (=> b!5917679 (= tp!1644114 e!3623813)))

(declare-fun b!5918725 () Bool)

(declare-fun tp!1644399 () Bool)

(assert (=> b!5918725 (= e!3623813 tp!1644399)))

(assert (= (and b!5917679 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32450 (regTwo!32451 r!7292))))) b!5918723))

(assert (= (and b!5917679 ((_ is Concat!24814) (regTwo!32450 (regOne!32450 (regTwo!32451 r!7292))))) b!5918724))

(assert (= (and b!5917679 ((_ is Star!15969) (regTwo!32450 (regOne!32450 (regTwo!32451 r!7292))))) b!5918725))

(assert (= (and b!5917679 ((_ is Union!15969) (regTwo!32450 (regOne!32450 (regTwo!32451 r!7292))))) b!5918726))

(declare-fun b!5918727 () Bool)

(declare-fun e!3623814 () Bool)

(assert (=> b!5918727 (= e!3623814 tp_is_empty!41191)))

(declare-fun b!5918728 () Bool)

(declare-fun tp!1644405 () Bool)

(declare-fun tp!1644407 () Bool)

(assert (=> b!5918728 (= e!3623814 (and tp!1644405 tp!1644407))))

(declare-fun b!5918730 () Bool)

(declare-fun tp!1644406 () Bool)

(declare-fun tp!1644408 () Bool)

(assert (=> b!5918730 (= e!3623814 (and tp!1644406 tp!1644408))))

(assert (=> b!5917644 (= tp!1644067 e!3623814)))

(declare-fun b!5918729 () Bool)

(declare-fun tp!1644404 () Bool)

(assert (=> b!5918729 (= e!3623814 tp!1644404)))

(assert (= (and b!5917644 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32450 (regTwo!32450 r!7292))))) b!5918727))

(assert (= (and b!5917644 ((_ is Concat!24814) (regOne!32451 (regOne!32450 (regTwo!32450 r!7292))))) b!5918728))

(assert (= (and b!5917644 ((_ is Star!15969) (regOne!32451 (regOne!32450 (regTwo!32450 r!7292))))) b!5918729))

(assert (= (and b!5917644 ((_ is Union!15969) (regOne!32451 (regOne!32450 (regTwo!32450 r!7292))))) b!5918730))

(declare-fun b!5918731 () Bool)

(declare-fun e!3623818 () Bool)

(assert (=> b!5918731 (= e!3623818 tp_is_empty!41191)))

(declare-fun b!5918732 () Bool)

(declare-fun tp!1644410 () Bool)

(declare-fun tp!1644412 () Bool)

(assert (=> b!5918732 (= e!3623818 (and tp!1644410 tp!1644412))))

(declare-fun b!5918734 () Bool)

(declare-fun tp!1644411 () Bool)

(declare-fun tp!1644413 () Bool)

(assert (=> b!5918734 (= e!3623818 (and tp!1644411 tp!1644413))))

(assert (=> b!5917644 (= tp!1644069 e!3623818)))

(declare-fun b!5918733 () Bool)

(declare-fun tp!1644409 () Bool)

(assert (=> b!5918733 (= e!3623818 tp!1644409)))

(assert (= (and b!5917644 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32450 (regTwo!32450 r!7292))))) b!5918731))

(assert (= (and b!5917644 ((_ is Concat!24814) (regTwo!32451 (regOne!32450 (regTwo!32450 r!7292))))) b!5918732))

(assert (= (and b!5917644 ((_ is Star!15969) (regTwo!32451 (regOne!32450 (regTwo!32450 r!7292))))) b!5918733))

(assert (= (and b!5917644 ((_ is Union!15969) (regTwo!32451 (regOne!32450 (regTwo!32450 r!7292))))) b!5918734))

(declare-fun b!5918744 () Bool)

(declare-fun e!3623823 () Bool)

(assert (=> b!5918744 (= e!3623823 tp_is_empty!41191)))

(declare-fun b!5918745 () Bool)

(declare-fun tp!1644415 () Bool)

(declare-fun tp!1644417 () Bool)

(assert (=> b!5918745 (= e!3623823 (and tp!1644415 tp!1644417))))

(declare-fun b!5918747 () Bool)

(declare-fun tp!1644416 () Bool)

(declare-fun tp!1644418 () Bool)

(assert (=> b!5918747 (= e!3623823 (and tp!1644416 tp!1644418))))

(assert (=> b!5917688 (= tp!1644121 e!3623823)))

(declare-fun b!5918746 () Bool)

(declare-fun tp!1644414 () Bool)

(assert (=> b!5918746 (= e!3623823 tp!1644414)))

(assert (= (and b!5917688 ((_ is ElementMatch!15969) (reg!16298 (reg!16298 (regTwo!32451 r!7292))))) b!5918744))

(assert (= (and b!5917688 ((_ is Concat!24814) (reg!16298 (reg!16298 (regTwo!32451 r!7292))))) b!5918745))

(assert (= (and b!5917688 ((_ is Star!15969) (reg!16298 (reg!16298 (regTwo!32451 r!7292))))) b!5918746))

(assert (= (and b!5917688 ((_ is Union!15969) (reg!16298 (reg!16298 (regTwo!32451 r!7292))))) b!5918747))

(declare-fun b!5918748 () Bool)

(declare-fun e!3623824 () Bool)

(assert (=> b!5918748 (= e!3623824 tp_is_empty!41191)))

(declare-fun b!5918749 () Bool)

(declare-fun tp!1644420 () Bool)

(declare-fun tp!1644422 () Bool)

(assert (=> b!5918749 (= e!3623824 (and tp!1644420 tp!1644422))))

(declare-fun b!5918751 () Bool)

(declare-fun tp!1644421 () Bool)

(declare-fun tp!1644423 () Bool)

(assert (=> b!5918751 (= e!3623824 (and tp!1644421 tp!1644423))))

(assert (=> b!5917697 (= tp!1644133 e!3623824)))

(declare-fun b!5918750 () Bool)

(declare-fun tp!1644419 () Bool)

(assert (=> b!5918750 (= e!3623824 tp!1644419)))

(assert (= (and b!5917697 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32450 (regOne!32450 r!7292))))) b!5918748))

(assert (= (and b!5917697 ((_ is Concat!24814) (regOne!32451 (regTwo!32450 (regOne!32450 r!7292))))) b!5918749))

(assert (= (and b!5917697 ((_ is Star!15969) (regOne!32451 (regTwo!32450 (regOne!32450 r!7292))))) b!5918750))

(assert (= (and b!5917697 ((_ is Union!15969) (regOne!32451 (regTwo!32450 (regOne!32450 r!7292))))) b!5918751))

(declare-fun b!5918752 () Bool)

(declare-fun e!3623825 () Bool)

(assert (=> b!5918752 (= e!3623825 tp_is_empty!41191)))

(declare-fun b!5918753 () Bool)

(declare-fun tp!1644425 () Bool)

(declare-fun tp!1644427 () Bool)

(assert (=> b!5918753 (= e!3623825 (and tp!1644425 tp!1644427))))

(declare-fun b!5918755 () Bool)

(declare-fun tp!1644426 () Bool)

(declare-fun tp!1644428 () Bool)

(assert (=> b!5918755 (= e!3623825 (and tp!1644426 tp!1644428))))

(assert (=> b!5917697 (= tp!1644135 e!3623825)))

(declare-fun b!5918754 () Bool)

(declare-fun tp!1644424 () Bool)

(assert (=> b!5918754 (= e!3623825 tp!1644424)))

(assert (= (and b!5917697 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32450 (regOne!32450 r!7292))))) b!5918752))

(assert (= (and b!5917697 ((_ is Concat!24814) (regTwo!32451 (regTwo!32450 (regOne!32450 r!7292))))) b!5918753))

(assert (= (and b!5917697 ((_ is Star!15969) (regTwo!32451 (regTwo!32450 (regOne!32450 r!7292))))) b!5918754))

(assert (= (and b!5917697 ((_ is Union!15969) (regTwo!32451 (regTwo!32450 (regOne!32450 r!7292))))) b!5918755))

(declare-fun b!5918756 () Bool)

(declare-fun e!3623826 () Bool)

(assert (=> b!5918756 (= e!3623826 tp_is_empty!41191)))

(declare-fun b!5918757 () Bool)

(declare-fun tp!1644430 () Bool)

(declare-fun tp!1644432 () Bool)

(assert (=> b!5918757 (= e!3623826 (and tp!1644430 tp!1644432))))

(declare-fun b!5918759 () Bool)

(declare-fun tp!1644431 () Bool)

(declare-fun tp!1644433 () Bool)

(assert (=> b!5918759 (= e!3623826 (and tp!1644431 tp!1644433))))

(assert (=> b!5917670 (= tp!1644101 e!3623826)))

(declare-fun b!5918758 () Bool)

(declare-fun tp!1644429 () Bool)

(assert (=> b!5918758 (= e!3623826 tp!1644429)))

(assert (= (and b!5917670 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32451 (regOne!32450 r!7292))))) b!5918756))

(assert (= (and b!5917670 ((_ is Concat!24814) (regOne!32450 (regOne!32451 (regOne!32450 r!7292))))) b!5918757))

(assert (= (and b!5917670 ((_ is Star!15969) (regOne!32450 (regOne!32451 (regOne!32450 r!7292))))) b!5918758))

(assert (= (and b!5917670 ((_ is Union!15969) (regOne!32450 (regOne!32451 (regOne!32450 r!7292))))) b!5918759))

(declare-fun b!5918760 () Bool)

(declare-fun e!3623827 () Bool)

(assert (=> b!5918760 (= e!3623827 tp_is_empty!41191)))

(declare-fun b!5918761 () Bool)

(declare-fun tp!1644435 () Bool)

(declare-fun tp!1644437 () Bool)

(assert (=> b!5918761 (= e!3623827 (and tp!1644435 tp!1644437))))

(declare-fun b!5918763 () Bool)

(declare-fun tp!1644436 () Bool)

(declare-fun tp!1644438 () Bool)

(assert (=> b!5918763 (= e!3623827 (and tp!1644436 tp!1644438))))

(assert (=> b!5917670 (= tp!1644103 e!3623827)))

(declare-fun b!5918762 () Bool)

(declare-fun tp!1644434 () Bool)

(assert (=> b!5918762 (= e!3623827 tp!1644434)))

(assert (= (and b!5917670 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32451 (regOne!32450 r!7292))))) b!5918760))

(assert (= (and b!5917670 ((_ is Concat!24814) (regTwo!32450 (regOne!32451 (regOne!32450 r!7292))))) b!5918761))

(assert (= (and b!5917670 ((_ is Star!15969) (regTwo!32450 (regOne!32451 (regOne!32450 r!7292))))) b!5918762))

(assert (= (and b!5917670 ((_ is Union!15969) (regTwo!32450 (regOne!32451 (regOne!32450 r!7292))))) b!5918763))

(declare-fun b!5918764 () Bool)

(declare-fun e!3623828 () Bool)

(assert (=> b!5918764 (= e!3623828 tp_is_empty!41191)))

(declare-fun b!5918765 () Bool)

(declare-fun tp!1644440 () Bool)

(declare-fun tp!1644442 () Bool)

(assert (=> b!5918765 (= e!3623828 (and tp!1644440 tp!1644442))))

(declare-fun b!5918767 () Bool)

(declare-fun tp!1644441 () Bool)

(declare-fun tp!1644443 () Bool)

(assert (=> b!5918767 (= e!3623828 (and tp!1644441 tp!1644443))))

(assert (=> b!5917642 (= tp!1644066 e!3623828)))

(declare-fun b!5918766 () Bool)

(declare-fun tp!1644439 () Bool)

(assert (=> b!5918766 (= e!3623828 tp!1644439)))

(assert (= (and b!5917642 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32450 (regTwo!32450 r!7292))))) b!5918764))

(assert (= (and b!5917642 ((_ is Concat!24814) (regOne!32450 (regOne!32450 (regTwo!32450 r!7292))))) b!5918765))

(assert (= (and b!5917642 ((_ is Star!15969) (regOne!32450 (regOne!32450 (regTwo!32450 r!7292))))) b!5918766))

(assert (= (and b!5917642 ((_ is Union!15969) (regOne!32450 (regOne!32450 (regTwo!32450 r!7292))))) b!5918767))

(declare-fun b!5918768 () Bool)

(declare-fun e!3623829 () Bool)

(assert (=> b!5918768 (= e!3623829 tp_is_empty!41191)))

(declare-fun b!5918769 () Bool)

(declare-fun tp!1644445 () Bool)

(declare-fun tp!1644447 () Bool)

(assert (=> b!5918769 (= e!3623829 (and tp!1644445 tp!1644447))))

(declare-fun b!5918771 () Bool)

(declare-fun tp!1644446 () Bool)

(declare-fun tp!1644448 () Bool)

(assert (=> b!5918771 (= e!3623829 (and tp!1644446 tp!1644448))))

(assert (=> b!5917642 (= tp!1644068 e!3623829)))

(declare-fun b!5918770 () Bool)

(declare-fun tp!1644444 () Bool)

(assert (=> b!5918770 (= e!3623829 tp!1644444)))

(assert (= (and b!5917642 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32450 (regTwo!32450 r!7292))))) b!5918768))

(assert (= (and b!5917642 ((_ is Concat!24814) (regTwo!32450 (regOne!32450 (regTwo!32450 r!7292))))) b!5918769))

(assert (= (and b!5917642 ((_ is Star!15969) (regTwo!32450 (regOne!32450 (regTwo!32450 r!7292))))) b!5918770))

(assert (= (and b!5917642 ((_ is Union!15969) (regTwo!32450 (regOne!32450 (regTwo!32450 r!7292))))) b!5918771))

(declare-fun b!5918781 () Bool)

(declare-fun e!3623837 () Bool)

(assert (=> b!5918781 (= e!3623837 tp_is_empty!41191)))

(declare-fun b!5918782 () Bool)

(declare-fun tp!1644450 () Bool)

(declare-fun tp!1644452 () Bool)

(assert (=> b!5918782 (= e!3623837 (and tp!1644450 tp!1644452))))

(declare-fun b!5918784 () Bool)

(declare-fun tp!1644451 () Bool)

(declare-fun tp!1644453 () Bool)

(assert (=> b!5918784 (= e!3623837 (and tp!1644451 tp!1644453))))

(assert (=> b!5917637 (= tp!1644061 e!3623837)))

(declare-fun b!5918783 () Bool)

(declare-fun tp!1644449 () Bool)

(assert (=> b!5918783 (= e!3623837 tp!1644449)))

(assert (= (and b!5917637 ((_ is ElementMatch!15969) (regOne!32450 (reg!16298 (reg!16298 r!7292))))) b!5918781))

(assert (= (and b!5917637 ((_ is Concat!24814) (regOne!32450 (reg!16298 (reg!16298 r!7292))))) b!5918782))

(assert (= (and b!5917637 ((_ is Star!15969) (regOne!32450 (reg!16298 (reg!16298 r!7292))))) b!5918783))

(assert (= (and b!5917637 ((_ is Union!15969) (regOne!32450 (reg!16298 (reg!16298 r!7292))))) b!5918784))

(declare-fun b!5918785 () Bool)

(declare-fun e!3623838 () Bool)

(assert (=> b!5918785 (= e!3623838 tp_is_empty!41191)))

(declare-fun b!5918786 () Bool)

(declare-fun tp!1644455 () Bool)

(declare-fun tp!1644457 () Bool)

(assert (=> b!5918786 (= e!3623838 (and tp!1644455 tp!1644457))))

(declare-fun b!5918788 () Bool)

(declare-fun tp!1644456 () Bool)

(declare-fun tp!1644458 () Bool)

(assert (=> b!5918788 (= e!3623838 (and tp!1644456 tp!1644458))))

(assert (=> b!5917637 (= tp!1644063 e!3623838)))

(declare-fun b!5918787 () Bool)

(declare-fun tp!1644454 () Bool)

(assert (=> b!5918787 (= e!3623838 tp!1644454)))

(assert (= (and b!5917637 ((_ is ElementMatch!15969) (regTwo!32450 (reg!16298 (reg!16298 r!7292))))) b!5918785))

(assert (= (and b!5917637 ((_ is Concat!24814) (regTwo!32450 (reg!16298 (reg!16298 r!7292))))) b!5918786))

(assert (= (and b!5917637 ((_ is Star!15969) (regTwo!32450 (reg!16298 (reg!16298 r!7292))))) b!5918787))

(assert (= (and b!5917637 ((_ is Union!15969) (regTwo!32450 (reg!16298 (reg!16298 r!7292))))) b!5918788))

(declare-fun b!5918789 () Bool)

(declare-fun e!3623839 () Bool)

(assert (=> b!5918789 (= e!3623839 tp_is_empty!41191)))

(declare-fun b!5918790 () Bool)

(declare-fun tp!1644460 () Bool)

(declare-fun tp!1644462 () Bool)

(assert (=> b!5918790 (= e!3623839 (and tp!1644460 tp!1644462))))

(declare-fun b!5918792 () Bool)

(declare-fun tp!1644461 () Bool)

(declare-fun tp!1644463 () Bool)

(assert (=> b!5918792 (= e!3623839 (and tp!1644461 tp!1644463))))

(assert (=> b!5917646 (= tp!1644071 e!3623839)))

(declare-fun b!5918791 () Bool)

(declare-fun tp!1644459 () Bool)

(assert (=> b!5918791 (= e!3623839 tp!1644459)))

(assert (= (and b!5917646 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918789))

(assert (= (and b!5917646 ((_ is Concat!24814) (regOne!32450 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918790))

(assert (= (and b!5917646 ((_ is Star!15969) (regOne!32450 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918791))

(assert (= (and b!5917646 ((_ is Union!15969) (regOne!32450 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918792))

(declare-fun b!5918793 () Bool)

(declare-fun e!3623840 () Bool)

(assert (=> b!5918793 (= e!3623840 tp_is_empty!41191)))

(declare-fun b!5918794 () Bool)

(declare-fun tp!1644465 () Bool)

(declare-fun tp!1644467 () Bool)

(assert (=> b!5918794 (= e!3623840 (and tp!1644465 tp!1644467))))

(declare-fun b!5918796 () Bool)

(declare-fun tp!1644466 () Bool)

(declare-fun tp!1644468 () Bool)

(assert (=> b!5918796 (= e!3623840 (and tp!1644466 tp!1644468))))

(assert (=> b!5917646 (= tp!1644073 e!3623840)))

(declare-fun b!5918795 () Bool)

(declare-fun tp!1644464 () Bool)

(assert (=> b!5918795 (= e!3623840 tp!1644464)))

(assert (= (and b!5917646 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918793))

(assert (= (and b!5917646 ((_ is Concat!24814) (regTwo!32450 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918794))

(assert (= (and b!5917646 ((_ is Star!15969) (regTwo!32450 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918795))

(assert (= (and b!5917646 ((_ is Union!15969) (regTwo!32450 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918796))

(declare-fun b!5918797 () Bool)

(declare-fun e!3623841 () Bool)

(assert (=> b!5918797 (= e!3623841 tp_is_empty!41191)))

(declare-fun b!5918798 () Bool)

(declare-fun tp!1644470 () Bool)

(declare-fun tp!1644472 () Bool)

(assert (=> b!5918798 (= e!3623841 (and tp!1644470 tp!1644472))))

(declare-fun b!5918800 () Bool)

(declare-fun tp!1644471 () Bool)

(declare-fun tp!1644473 () Bool)

(assert (=> b!5918800 (= e!3623841 (and tp!1644471 tp!1644473))))

(assert (=> b!5917655 (= tp!1644080 e!3623841)))

(declare-fun b!5918799 () Bool)

(declare-fun tp!1644469 () Bool)

(assert (=> b!5918799 (= e!3623841 tp!1644469)))

(assert (= (and b!5917655 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32450 (regOne!32451 r!7292))))) b!5918797))

(assert (= (and b!5917655 ((_ is Concat!24814) (reg!16298 (regTwo!32450 (regOne!32451 r!7292))))) b!5918798))

(assert (= (and b!5917655 ((_ is Star!15969) (reg!16298 (regTwo!32450 (regOne!32451 r!7292))))) b!5918799))

(assert (= (and b!5917655 ((_ is Union!15969) (reg!16298 (regTwo!32450 (regOne!32451 r!7292))))) b!5918800))

(declare-fun b!5918801 () Bool)

(declare-fun e!3623842 () Bool)

(assert (=> b!5918801 (= e!3623842 tp_is_empty!41191)))

(declare-fun b!5918802 () Bool)

(declare-fun tp!1644475 () Bool)

(declare-fun tp!1644477 () Bool)

(assert (=> b!5918802 (= e!3623842 (and tp!1644475 tp!1644477))))

(declare-fun b!5918804 () Bool)

(declare-fun tp!1644476 () Bool)

(declare-fun tp!1644478 () Bool)

(assert (=> b!5918804 (= e!3623842 (and tp!1644476 tp!1644478))))

(assert (=> b!5917699 (= tp!1644137 e!3623842)))

(declare-fun b!5918803 () Bool)

(declare-fun tp!1644474 () Bool)

(assert (=> b!5918803 (= e!3623842 tp!1644474)))

(assert (= (and b!5917699 ((_ is ElementMatch!15969) (regOne!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918801))

(assert (= (and b!5917699 ((_ is Concat!24814) (regOne!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918802))

(assert (= (and b!5917699 ((_ is Star!15969) (regOne!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918803))

(assert (= (and b!5917699 ((_ is Union!15969) (regOne!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918804))

(declare-fun b!5918805 () Bool)

(declare-fun e!3623843 () Bool)

(assert (=> b!5918805 (= e!3623843 tp_is_empty!41191)))

(declare-fun b!5918806 () Bool)

(declare-fun tp!1644480 () Bool)

(declare-fun tp!1644482 () Bool)

(assert (=> b!5918806 (= e!3623843 (and tp!1644480 tp!1644482))))

(declare-fun b!5918808 () Bool)

(declare-fun tp!1644481 () Bool)

(declare-fun tp!1644483 () Bool)

(assert (=> b!5918808 (= e!3623843 (and tp!1644481 tp!1644483))))

(assert (=> b!5917699 (= tp!1644139 e!3623843)))

(declare-fun b!5918807 () Bool)

(declare-fun tp!1644479 () Bool)

(assert (=> b!5918807 (= e!3623843 tp!1644479)))

(assert (= (and b!5917699 ((_ is ElementMatch!15969) (regTwo!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918805))

(assert (= (and b!5917699 ((_ is Concat!24814) (regTwo!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918806))

(assert (= (and b!5917699 ((_ is Star!15969) (regTwo!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918807))

(assert (= (and b!5917699 ((_ is Union!15969) (regTwo!32450 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918808))

(declare-fun b!5918809 () Bool)

(declare-fun e!3623844 () Bool)

(assert (=> b!5918809 (= e!3623844 tp_is_empty!41191)))

(declare-fun b!5918810 () Bool)

(declare-fun tp!1644485 () Bool)

(declare-fun tp!1644487 () Bool)

(assert (=> b!5918810 (= e!3623844 (and tp!1644485 tp!1644487))))

(declare-fun b!5918812 () Bool)

(declare-fun tp!1644486 () Bool)

(declare-fun tp!1644488 () Bool)

(assert (=> b!5918812 (= e!3623844 (and tp!1644486 tp!1644488))))

(assert (=> b!5917620 (= tp!1644056 e!3623844)))

(declare-fun b!5918811 () Bool)

(declare-fun tp!1644484 () Bool)

(assert (=> b!5918811 (= e!3623844 tp!1644484)))

(assert (= (and b!5917620 ((_ is ElementMatch!15969) (regOne!32450 (reg!16298 (regTwo!32450 r!7292))))) b!5918809))

(assert (= (and b!5917620 ((_ is Concat!24814) (regOne!32450 (reg!16298 (regTwo!32450 r!7292))))) b!5918810))

(assert (= (and b!5917620 ((_ is Star!15969) (regOne!32450 (reg!16298 (regTwo!32450 r!7292))))) b!5918811))

(assert (= (and b!5917620 ((_ is Union!15969) (regOne!32450 (reg!16298 (regTwo!32450 r!7292))))) b!5918812))

(declare-fun b!5918813 () Bool)

(declare-fun e!3623845 () Bool)

(assert (=> b!5918813 (= e!3623845 tp_is_empty!41191)))

(declare-fun b!5918814 () Bool)

(declare-fun tp!1644490 () Bool)

(declare-fun tp!1644492 () Bool)

(assert (=> b!5918814 (= e!3623845 (and tp!1644490 tp!1644492))))

(declare-fun b!5918816 () Bool)

(declare-fun tp!1644491 () Bool)

(declare-fun tp!1644493 () Bool)

(assert (=> b!5918816 (= e!3623845 (and tp!1644491 tp!1644493))))

(assert (=> b!5917620 (= tp!1644058 e!3623845)))

(declare-fun b!5918815 () Bool)

(declare-fun tp!1644489 () Bool)

(assert (=> b!5918815 (= e!3623845 tp!1644489)))

(assert (= (and b!5917620 ((_ is ElementMatch!15969) (regTwo!32450 (reg!16298 (regTwo!32450 r!7292))))) b!5918813))

(assert (= (and b!5917620 ((_ is Concat!24814) (regTwo!32450 (reg!16298 (regTwo!32450 r!7292))))) b!5918814))

(assert (= (and b!5917620 ((_ is Star!15969) (regTwo!32450 (reg!16298 (regTwo!32450 r!7292))))) b!5918815))

(assert (= (and b!5917620 ((_ is Union!15969) (regTwo!32450 (reg!16298 (regTwo!32450 r!7292))))) b!5918816))

(declare-fun b!5918817 () Bool)

(declare-fun e!3623846 () Bool)

(assert (=> b!5918817 (= e!3623846 tp_is_empty!41191)))

(declare-fun b!5918818 () Bool)

(declare-fun tp!1644495 () Bool)

(declare-fun tp!1644497 () Bool)

(assert (=> b!5918818 (= e!3623846 (and tp!1644495 tp!1644497))))

(declare-fun b!5918820 () Bool)

(declare-fun tp!1644496 () Bool)

(declare-fun tp!1644498 () Bool)

(assert (=> b!5918820 (= e!3623846 (and tp!1644496 tp!1644498))))

(assert (=> b!5917580 (= tp!1644002 e!3623846)))

(declare-fun b!5918819 () Bool)

(declare-fun tp!1644494 () Bool)

(assert (=> b!5918819 (= e!3623846 tp!1644494)))

(assert (= (and b!5917580 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918817))

(assert (= (and b!5917580 ((_ is Concat!24814) (regOne!32451 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918818))

(assert (= (and b!5917580 ((_ is Star!15969) (regOne!32451 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918819))

(assert (= (and b!5917580 ((_ is Union!15969) (regOne!32451 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918820))

(declare-fun b!5918821 () Bool)

(declare-fun e!3623852 () Bool)

(assert (=> b!5918821 (= e!3623852 tp_is_empty!41191)))

(declare-fun b!5918822 () Bool)

(declare-fun tp!1644500 () Bool)

(declare-fun tp!1644502 () Bool)

(assert (=> b!5918822 (= e!3623852 (and tp!1644500 tp!1644502))))

(declare-fun b!5918824 () Bool)

(declare-fun tp!1644501 () Bool)

(declare-fun tp!1644503 () Bool)

(assert (=> b!5918824 (= e!3623852 (and tp!1644501 tp!1644503))))

(assert (=> b!5917580 (= tp!1644004 e!3623852)))

(declare-fun b!5918823 () Bool)

(declare-fun tp!1644499 () Bool)

(assert (=> b!5918823 (= e!3623852 tp!1644499)))

(assert (= (and b!5917580 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918821))

(assert (= (and b!5917580 ((_ is Concat!24814) (regTwo!32451 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918822))

(assert (= (and b!5917580 ((_ is Star!15969) (regTwo!32451 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918823))

(assert (= (and b!5917580 ((_ is Union!15969) (regTwo!32451 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918824))

(declare-fun b!5918839 () Bool)

(declare-fun e!3623855 () Bool)

(assert (=> b!5918839 (= e!3623855 tp_is_empty!41191)))

(declare-fun b!5918840 () Bool)

(declare-fun tp!1644505 () Bool)

(declare-fun tp!1644507 () Bool)

(assert (=> b!5918840 (= e!3623855 (and tp!1644505 tp!1644507))))

(declare-fun b!5918842 () Bool)

(declare-fun tp!1644506 () Bool)

(declare-fun tp!1644508 () Bool)

(assert (=> b!5918842 (= e!3623855 (and tp!1644506 tp!1644508))))

(assert (=> b!5917606 (= tp!1644037 e!3623855)))

(declare-fun b!5918841 () Bool)

(declare-fun tp!1644504 () Bool)

(assert (=> b!5918841 (= e!3623855 tp!1644504)))

(assert (= (and b!5917606 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32450 (reg!16298 r!7292))))) b!5918839))

(assert (= (and b!5917606 ((_ is Concat!24814) (regOne!32451 (regOne!32450 (reg!16298 r!7292))))) b!5918840))

(assert (= (and b!5917606 ((_ is Star!15969) (regOne!32451 (regOne!32450 (reg!16298 r!7292))))) b!5918841))

(assert (= (and b!5917606 ((_ is Union!15969) (regOne!32451 (regOne!32450 (reg!16298 r!7292))))) b!5918842))

(declare-fun b!5918843 () Bool)

(declare-fun e!3623856 () Bool)

(assert (=> b!5918843 (= e!3623856 tp_is_empty!41191)))

(declare-fun b!5918844 () Bool)

(declare-fun tp!1644510 () Bool)

(declare-fun tp!1644512 () Bool)

(assert (=> b!5918844 (= e!3623856 (and tp!1644510 tp!1644512))))

(declare-fun b!5918846 () Bool)

(declare-fun tp!1644511 () Bool)

(declare-fun tp!1644513 () Bool)

(assert (=> b!5918846 (= e!3623856 (and tp!1644511 tp!1644513))))

(assert (=> b!5917606 (= tp!1644039 e!3623856)))

(declare-fun b!5918845 () Bool)

(declare-fun tp!1644509 () Bool)

(assert (=> b!5918845 (= e!3623856 tp!1644509)))

(assert (= (and b!5917606 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32450 (reg!16298 r!7292))))) b!5918843))

(assert (= (and b!5917606 ((_ is Concat!24814) (regTwo!32451 (regOne!32450 (reg!16298 r!7292))))) b!5918844))

(assert (= (and b!5917606 ((_ is Star!15969) (regTwo!32451 (regOne!32450 (reg!16298 r!7292))))) b!5918845))

(assert (= (and b!5917606 ((_ is Union!15969) (regTwo!32451 (regOne!32450 (reg!16298 r!7292))))) b!5918846))

(declare-fun b!5918847 () Bool)

(declare-fun e!3623857 () Bool)

(assert (=> b!5918847 (= e!3623857 tp_is_empty!41191)))

(declare-fun b!5918848 () Bool)

(declare-fun tp!1644515 () Bool)

(declare-fun tp!1644517 () Bool)

(assert (=> b!5918848 (= e!3623857 (and tp!1644515 tp!1644517))))

(declare-fun b!5918850 () Bool)

(declare-fun tp!1644516 () Bool)

(declare-fun tp!1644518 () Bool)

(assert (=> b!5918850 (= e!3623857 (and tp!1644516 tp!1644518))))

(assert (=> b!5917578 (= tp!1644001 e!3623857)))

(declare-fun b!5918849 () Bool)

(declare-fun tp!1644514 () Bool)

(assert (=> b!5918849 (= e!3623857 tp!1644514)))

(assert (= (and b!5917578 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918847))

(assert (= (and b!5917578 ((_ is Concat!24814) (regOne!32450 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918848))

(assert (= (and b!5917578 ((_ is Star!15969) (regOne!32450 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918849))

(assert (= (and b!5917578 ((_ is Union!15969) (regOne!32450 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918850))

(declare-fun b!5918851 () Bool)

(declare-fun e!3623858 () Bool)

(assert (=> b!5918851 (= e!3623858 tp_is_empty!41191)))

(declare-fun b!5918852 () Bool)

(declare-fun tp!1644520 () Bool)

(declare-fun tp!1644522 () Bool)

(assert (=> b!5918852 (= e!3623858 (and tp!1644520 tp!1644522))))

(declare-fun b!5918854 () Bool)

(declare-fun tp!1644521 () Bool)

(declare-fun tp!1644523 () Bool)

(assert (=> b!5918854 (= e!3623858 (and tp!1644521 tp!1644523))))

(assert (=> b!5917578 (= tp!1644003 e!3623858)))

(declare-fun b!5918853 () Bool)

(declare-fun tp!1644519 () Bool)

(assert (=> b!5918853 (= e!3623858 tp!1644519)))

(assert (= (and b!5917578 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918851))

(assert (= (and b!5917578 ((_ is Concat!24814) (regTwo!32450 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918852))

(assert (= (and b!5917578 ((_ is Star!15969) (regTwo!32450 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918853))

(assert (= (and b!5917578 ((_ is Union!15969) (regTwo!32450 (regTwo!32451 (regTwo!32450 r!7292))))) b!5918854))

(declare-fun b!5918855 () Bool)

(declare-fun e!3623859 () Bool)

(assert (=> b!5918855 (= e!3623859 tp_is_empty!41191)))

(declare-fun b!5918856 () Bool)

(declare-fun tp!1644525 () Bool)

(declare-fun tp!1644527 () Bool)

(assert (=> b!5918856 (= e!3623859 (and tp!1644525 tp!1644527))))

(declare-fun b!5918858 () Bool)

(declare-fun tp!1644526 () Bool)

(declare-fun tp!1644528 () Bool)

(assert (=> b!5918858 (= e!3623859 (and tp!1644526 tp!1644528))))

(assert (=> b!5917587 (= tp!1644010 e!3623859)))

(declare-fun b!5918857 () Bool)

(declare-fun tp!1644524 () Bool)

(assert (=> b!5918857 (= e!3623859 tp!1644524)))

(assert (= (and b!5917587 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32451 (regOne!32451 r!7292))))) b!5918855))

(assert (= (and b!5917587 ((_ is Concat!24814) (reg!16298 (regTwo!32451 (regOne!32451 r!7292))))) b!5918856))

(assert (= (and b!5917587 ((_ is Star!15969) (reg!16298 (regTwo!32451 (regOne!32451 r!7292))))) b!5918857))

(assert (= (and b!5917587 ((_ is Union!15969) (reg!16298 (regTwo!32451 (regOne!32451 r!7292))))) b!5918858))

(declare-fun b!5918859 () Bool)

(declare-fun e!3623860 () Bool)

(assert (=> b!5918859 (= e!3623860 tp_is_empty!41191)))

(declare-fun b!5918860 () Bool)

(declare-fun tp!1644530 () Bool)

(declare-fun tp!1644532 () Bool)

(assert (=> b!5918860 (= e!3623860 (and tp!1644530 tp!1644532))))

(declare-fun b!5918862 () Bool)

(declare-fun tp!1644531 () Bool)

(declare-fun tp!1644533 () Bool)

(assert (=> b!5918862 (= e!3623860 (and tp!1644531 tp!1644533))))

(assert (=> b!5917604 (= tp!1644036 e!3623860)))

(declare-fun b!5918861 () Bool)

(declare-fun tp!1644529 () Bool)

(assert (=> b!5918861 (= e!3623860 tp!1644529)))

(assert (= (and b!5917604 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32450 (reg!16298 r!7292))))) b!5918859))

(assert (= (and b!5917604 ((_ is Concat!24814) (regOne!32450 (regOne!32450 (reg!16298 r!7292))))) b!5918860))

(assert (= (and b!5917604 ((_ is Star!15969) (regOne!32450 (regOne!32450 (reg!16298 r!7292))))) b!5918861))

(assert (= (and b!5917604 ((_ is Union!15969) (regOne!32450 (regOne!32450 (reg!16298 r!7292))))) b!5918862))

(declare-fun b!5918863 () Bool)

(declare-fun e!3623861 () Bool)

(assert (=> b!5918863 (= e!3623861 tp_is_empty!41191)))

(declare-fun b!5918864 () Bool)

(declare-fun tp!1644535 () Bool)

(declare-fun tp!1644537 () Bool)

(assert (=> b!5918864 (= e!3623861 (and tp!1644535 tp!1644537))))

(declare-fun b!5918866 () Bool)

(declare-fun tp!1644536 () Bool)

(declare-fun tp!1644538 () Bool)

(assert (=> b!5918866 (= e!3623861 (and tp!1644536 tp!1644538))))

(assert (=> b!5917604 (= tp!1644038 e!3623861)))

(declare-fun b!5918865 () Bool)

(declare-fun tp!1644534 () Bool)

(assert (=> b!5918865 (= e!3623861 tp!1644534)))

(assert (= (and b!5917604 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32450 (reg!16298 r!7292))))) b!5918863))

(assert (= (and b!5917604 ((_ is Concat!24814) (regTwo!32450 (regOne!32450 (reg!16298 r!7292))))) b!5918864))

(assert (= (and b!5917604 ((_ is Star!15969) (regTwo!32450 (regOne!32450 (reg!16298 r!7292))))) b!5918865))

(assert (= (and b!5917604 ((_ is Union!15969) (regTwo!32450 (regOne!32450 (reg!16298 r!7292))))) b!5918866))

(declare-fun b!5918867 () Bool)

(declare-fun e!3623862 () Bool)

(assert (=> b!5918867 (= e!3623862 tp_is_empty!41191)))

(declare-fun b!5918868 () Bool)

(declare-fun tp!1644540 () Bool)

(declare-fun tp!1644542 () Bool)

(assert (=> b!5918868 (= e!3623862 (and tp!1644540 tp!1644542))))

(declare-fun b!5918870 () Bool)

(declare-fun tp!1644541 () Bool)

(declare-fun tp!1644543 () Bool)

(assert (=> b!5918870 (= e!3623862 (and tp!1644541 tp!1644543))))

(assert (=> b!5917613 (= tp!1644045 e!3623862)))

(declare-fun b!5918869 () Bool)

(declare-fun tp!1644539 () Bool)

(assert (=> b!5918869 (= e!3623862 tp!1644539)))

(assert (= (and b!5917613 ((_ is ElementMatch!15969) (reg!16298 (regOne!32451 (reg!16298 r!7292))))) b!5918867))

(assert (= (and b!5917613 ((_ is Concat!24814) (reg!16298 (regOne!32451 (reg!16298 r!7292))))) b!5918868))

(assert (= (and b!5917613 ((_ is Star!15969) (reg!16298 (regOne!32451 (reg!16298 r!7292))))) b!5918869))

(assert (= (and b!5917613 ((_ is Union!15969) (reg!16298 (regOne!32451 (reg!16298 r!7292))))) b!5918870))

(declare-fun b!5918871 () Bool)

(declare-fun e!3623863 () Bool)

(assert (=> b!5918871 (= e!3623863 tp_is_empty!41191)))

(declare-fun b!5918872 () Bool)

(declare-fun tp!1644545 () Bool)

(declare-fun tp!1644547 () Bool)

(assert (=> b!5918872 (= e!3623863 (and tp!1644545 tp!1644547))))

(declare-fun b!5918874 () Bool)

(declare-fun tp!1644546 () Bool)

(declare-fun tp!1644548 () Bool)

(assert (=> b!5918874 (= e!3623863 (and tp!1644546 tp!1644548))))

(assert (=> b!5917608 (= tp!1644041 e!3623863)))

(declare-fun b!5918873 () Bool)

(declare-fun tp!1644544 () Bool)

(assert (=> b!5918873 (= e!3623863 tp!1644544)))

(assert (= (and b!5917608 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32450 (reg!16298 r!7292))))) b!5918871))

(assert (= (and b!5917608 ((_ is Concat!24814) (regOne!32450 (regTwo!32450 (reg!16298 r!7292))))) b!5918872))

(assert (= (and b!5917608 ((_ is Star!15969) (regOne!32450 (regTwo!32450 (reg!16298 r!7292))))) b!5918873))

(assert (= (and b!5917608 ((_ is Union!15969) (regOne!32450 (regTwo!32450 (reg!16298 r!7292))))) b!5918874))

(declare-fun b!5918875 () Bool)

(declare-fun e!3623864 () Bool)

(assert (=> b!5918875 (= e!3623864 tp_is_empty!41191)))

(declare-fun b!5918876 () Bool)

(declare-fun tp!1644550 () Bool)

(declare-fun tp!1644552 () Bool)

(assert (=> b!5918876 (= e!3623864 (and tp!1644550 tp!1644552))))

(declare-fun b!5918878 () Bool)

(declare-fun tp!1644551 () Bool)

(declare-fun tp!1644553 () Bool)

(assert (=> b!5918878 (= e!3623864 (and tp!1644551 tp!1644553))))

(assert (=> b!5917608 (= tp!1644043 e!3623864)))

(declare-fun b!5918877 () Bool)

(declare-fun tp!1644549 () Bool)

(assert (=> b!5918877 (= e!3623864 tp!1644549)))

(assert (= (and b!5917608 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32450 (reg!16298 r!7292))))) b!5918875))

(assert (= (and b!5917608 ((_ is Concat!24814) (regTwo!32450 (regTwo!32450 (reg!16298 r!7292))))) b!5918876))

(assert (= (and b!5917608 ((_ is Star!15969) (regTwo!32450 (regTwo!32450 (reg!16298 r!7292))))) b!5918877))

(assert (= (and b!5917608 ((_ is Union!15969) (regTwo!32450 (regTwo!32450 (reg!16298 r!7292))))) b!5918878))

(declare-fun b!5918879 () Bool)

(declare-fun e!3623865 () Bool)

(assert (=> b!5918879 (= e!3623865 tp_is_empty!41191)))

(declare-fun b!5918880 () Bool)

(declare-fun tp!1644555 () Bool)

(declare-fun tp!1644557 () Bool)

(assert (=> b!5918880 (= e!3623865 (and tp!1644555 tp!1644557))))

(declare-fun b!5918882 () Bool)

(declare-fun tp!1644556 () Bool)

(declare-fun tp!1644558 () Bool)

(assert (=> b!5918882 (= e!3623865 (and tp!1644556 tp!1644558))))

(assert (=> b!5917702 (= tp!1644141 e!3623865)))

(declare-fun b!5918881 () Bool)

(declare-fun tp!1644554 () Bool)

(assert (=> b!5918881 (= e!3623865 tp!1644554)))

(assert (= (and b!5917702 ((_ is ElementMatch!15969) (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343)))))) b!5918879))

(assert (= (and b!5917702 ((_ is Concat!24814) (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343)))))) b!5918880))

(assert (= (and b!5917702 ((_ is Star!15969) (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343)))))) b!5918881))

(assert (= (and b!5917702 ((_ is Union!15969) (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343)))))) b!5918882))

(declare-fun b!5918883 () Bool)

(declare-fun e!3623866 () Bool)

(declare-fun tp!1644559 () Bool)

(declare-fun tp!1644560 () Bool)

(assert (=> b!5918883 (= e!3623866 (and tp!1644559 tp!1644560))))

(assert (=> b!5917702 (= tp!1644142 e!3623866)))

(assert (= (and b!5917702 ((_ is Cons!64082) (t!377595 (t!377595 (exprs!5853 (h!70531 zl!343)))))) b!5918883))

(declare-fun b!5918884 () Bool)

(declare-fun e!3623867 () Bool)

(assert (=> b!5918884 (= e!3623867 tp_is_empty!41191)))

(declare-fun b!5918885 () Bool)

(declare-fun tp!1644562 () Bool)

(declare-fun tp!1644564 () Bool)

(assert (=> b!5918885 (= e!3623867 (and tp!1644562 tp!1644564))))

(declare-fun b!5918887 () Bool)

(declare-fun tp!1644563 () Bool)

(declare-fun tp!1644565 () Bool)

(assert (=> b!5918887 (= e!3623867 (and tp!1644563 tp!1644565))))

(assert (=> b!5917662 (= tp!1644091 e!3623867)))

(declare-fun b!5918886 () Bool)

(declare-fun tp!1644561 () Bool)

(assert (=> b!5918886 (= e!3623867 tp!1644561)))

(assert (= (and b!5917662 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918884))

(assert (= (and b!5917662 ((_ is Concat!24814) (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918885))

(assert (= (and b!5917662 ((_ is Star!15969) (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918886))

(assert (= (and b!5917662 ((_ is Union!15969) (regOne!32450 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918887))

(declare-fun b!5918888 () Bool)

(declare-fun e!3623868 () Bool)

(assert (=> b!5918888 (= e!3623868 tp_is_empty!41191)))

(declare-fun b!5918889 () Bool)

(declare-fun tp!1644567 () Bool)

(declare-fun tp!1644569 () Bool)

(assert (=> b!5918889 (= e!3623868 (and tp!1644567 tp!1644569))))

(declare-fun b!5918891 () Bool)

(declare-fun tp!1644568 () Bool)

(declare-fun tp!1644570 () Bool)

(assert (=> b!5918891 (= e!3623868 (and tp!1644568 tp!1644570))))

(assert (=> b!5917662 (= tp!1644093 e!3623868)))

(declare-fun b!5918890 () Bool)

(declare-fun tp!1644566 () Bool)

(assert (=> b!5918890 (= e!3623868 tp!1644566)))

(assert (= (and b!5917662 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918888))

(assert (= (and b!5917662 ((_ is Concat!24814) (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918889))

(assert (= (and b!5917662 ((_ is Star!15969) (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918890))

(assert (= (and b!5917662 ((_ is Union!15969) (regTwo!32450 (regTwo!32451 (regTwo!32451 r!7292))))) b!5918891))

(declare-fun b!5918892 () Bool)

(declare-fun e!3623869 () Bool)

(assert (=> b!5918892 (= e!3623869 tp_is_empty!41191)))

(declare-fun b!5918893 () Bool)

(declare-fun tp!1644572 () Bool)

(declare-fun tp!1644574 () Bool)

(assert (=> b!5918893 (= e!3623869 (and tp!1644572 tp!1644574))))

(declare-fun b!5918895 () Bool)

(declare-fun tp!1644573 () Bool)

(declare-fun tp!1644575 () Bool)

(assert (=> b!5918895 (= e!3623869 (and tp!1644573 tp!1644575))))

(assert (=> b!5917617 (= tp!1644050 e!3623869)))

(declare-fun b!5918894 () Bool)

(declare-fun tp!1644571 () Bool)

(assert (=> b!5918894 (= e!3623869 tp!1644571)))

(assert (= (and b!5917617 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32451 (reg!16298 r!7292))))) b!5918892))

(assert (= (and b!5917617 ((_ is Concat!24814) (reg!16298 (regTwo!32451 (reg!16298 r!7292))))) b!5918893))

(assert (= (and b!5917617 ((_ is Star!15969) (reg!16298 (regTwo!32451 (reg!16298 r!7292))))) b!5918894))

(assert (= (and b!5917617 ((_ is Union!15969) (reg!16298 (regTwo!32451 (reg!16298 r!7292))))) b!5918895))

(declare-fun b!5918896 () Bool)

(declare-fun e!3623870 () Bool)

(assert (=> b!5918896 (= e!3623870 tp_is_empty!41191)))

(declare-fun b!5918897 () Bool)

(declare-fun tp!1644577 () Bool)

(declare-fun tp!1644579 () Bool)

(assert (=> b!5918897 (= e!3623870 (and tp!1644577 tp!1644579))))

(declare-fun b!5918899 () Bool)

(declare-fun tp!1644578 () Bool)

(declare-fun tp!1644580 () Bool)

(assert (=> b!5918899 (= e!3623870 (and tp!1644578 tp!1644580))))

(assert (=> b!5917574 (= tp!1643996 e!3623870)))

(declare-fun b!5918898 () Bool)

(declare-fun tp!1644576 () Bool)

(assert (=> b!5918898 (= e!3623870 tp!1644576)))

(assert (= (and b!5917574 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32451 (regTwo!32450 r!7292))))) b!5918896))

(assert (= (and b!5917574 ((_ is Concat!24814) (regOne!32450 (regOne!32451 (regTwo!32450 r!7292))))) b!5918897))

(assert (= (and b!5917574 ((_ is Star!15969) (regOne!32450 (regOne!32451 (regTwo!32450 r!7292))))) b!5918898))

(assert (= (and b!5917574 ((_ is Union!15969) (regOne!32450 (regOne!32451 (regTwo!32450 r!7292))))) b!5918899))

(declare-fun b!5918900 () Bool)

(declare-fun e!3623871 () Bool)

(assert (=> b!5918900 (= e!3623871 tp_is_empty!41191)))

(declare-fun b!5918901 () Bool)

(declare-fun tp!1644582 () Bool)

(declare-fun tp!1644584 () Bool)

(assert (=> b!5918901 (= e!3623871 (and tp!1644582 tp!1644584))))

(declare-fun b!5918903 () Bool)

(declare-fun tp!1644583 () Bool)

(declare-fun tp!1644585 () Bool)

(assert (=> b!5918903 (= e!3623871 (and tp!1644583 tp!1644585))))

(assert (=> b!5917574 (= tp!1643998 e!3623871)))

(declare-fun b!5918902 () Bool)

(declare-fun tp!1644581 () Bool)

(assert (=> b!5918902 (= e!3623871 tp!1644581)))

(assert (= (and b!5917574 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32451 (regTwo!32450 r!7292))))) b!5918900))

(assert (= (and b!5917574 ((_ is Concat!24814) (regTwo!32450 (regOne!32451 (regTwo!32450 r!7292))))) b!5918901))

(assert (= (and b!5917574 ((_ is Star!15969) (regTwo!32450 (regOne!32451 (regTwo!32450 r!7292))))) b!5918902))

(assert (= (and b!5917574 ((_ is Union!15969) (regTwo!32450 (regOne!32451 (regTwo!32450 r!7292))))) b!5918903))

(declare-fun b!5918904 () Bool)

(declare-fun e!3623872 () Bool)

(assert (=> b!5918904 (= e!3623872 tp_is_empty!41191)))

(declare-fun b!5918905 () Bool)

(declare-fun tp!1644587 () Bool)

(declare-fun tp!1644589 () Bool)

(assert (=> b!5918905 (= e!3623872 (and tp!1644587 tp!1644589))))

(declare-fun b!5918907 () Bool)

(declare-fun tp!1644588 () Bool)

(declare-fun tp!1644590 () Bool)

(assert (=> b!5918907 (= e!3623872 (and tp!1644588 tp!1644590))))

(assert (=> b!5917685 (= tp!1644118 e!3623872)))

(declare-fun b!5918906 () Bool)

(declare-fun tp!1644586 () Bool)

(assert (=> b!5918906 (= e!3623872 tp!1644586)))

(assert (= (and b!5917685 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918904))

(assert (= (and b!5917685 ((_ is Concat!24814) (regOne!32451 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918905))

(assert (= (and b!5917685 ((_ is Star!15969) (regOne!32451 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918906))

(assert (= (and b!5917685 ((_ is Union!15969) (regOne!32451 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918907))

(declare-fun b!5918908 () Bool)

(declare-fun e!3623873 () Bool)

(assert (=> b!5918908 (= e!3623873 tp_is_empty!41191)))

(declare-fun b!5918909 () Bool)

(declare-fun tp!1644592 () Bool)

(declare-fun tp!1644594 () Bool)

(assert (=> b!5918909 (= e!3623873 (and tp!1644592 tp!1644594))))

(declare-fun b!5918911 () Bool)

(declare-fun tp!1644593 () Bool)

(declare-fun tp!1644595 () Bool)

(assert (=> b!5918911 (= e!3623873 (and tp!1644593 tp!1644595))))

(assert (=> b!5917685 (= tp!1644120 e!3623873)))

(declare-fun b!5918910 () Bool)

(declare-fun tp!1644591 () Bool)

(assert (=> b!5918910 (= e!3623873 tp!1644591)))

(assert (= (and b!5917685 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918908))

(assert (= (and b!5917685 ((_ is Concat!24814) (regTwo!32451 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918909))

(assert (= (and b!5917685 ((_ is Star!15969) (regTwo!32451 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918910))

(assert (= (and b!5917685 ((_ is Union!15969) (regTwo!32451 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918911))

(declare-fun b!5918912 () Bool)

(declare-fun e!3623874 () Bool)

(assert (=> b!5918912 (= e!3623874 tp_is_empty!41191)))

(declare-fun b!5918913 () Bool)

(declare-fun tp!1644597 () Bool)

(declare-fun tp!1644599 () Bool)

(assert (=> b!5918913 (= e!3623874 (and tp!1644597 tp!1644599))))

(declare-fun b!5918915 () Bool)

(declare-fun tp!1644598 () Bool)

(declare-fun tp!1644600 () Bool)

(assert (=> b!5918915 (= e!3623874 (and tp!1644598 tp!1644600))))

(assert (=> b!5917600 (= tp!1644028 e!3623874)))

(declare-fun b!5918914 () Bool)

(declare-fun tp!1644596 () Bool)

(assert (=> b!5918914 (= e!3623874 tp!1644596)))

(assert (= (and b!5917600 ((_ is ElementMatch!15969) (reg!16298 (h!70530 (exprs!5853 setElem!40160))))) b!5918912))

(assert (= (and b!5917600 ((_ is Concat!24814) (reg!16298 (h!70530 (exprs!5853 setElem!40160))))) b!5918913))

(assert (= (and b!5917600 ((_ is Star!15969) (reg!16298 (h!70530 (exprs!5853 setElem!40160))))) b!5918914))

(assert (= (and b!5917600 ((_ is Union!15969) (reg!16298 (h!70530 (exprs!5853 setElem!40160))))) b!5918915))

(declare-fun b!5918916 () Bool)

(declare-fun e!3623875 () Bool)

(assert (=> b!5918916 (= e!3623875 tp_is_empty!41191)))

(declare-fun b!5918917 () Bool)

(declare-fun tp!1644602 () Bool)

(declare-fun tp!1644604 () Bool)

(assert (=> b!5918917 (= e!3623875 (and tp!1644602 tp!1644604))))

(declare-fun b!5918919 () Bool)

(declare-fun tp!1644603 () Bool)

(declare-fun tp!1644605 () Bool)

(assert (=> b!5918919 (= e!3623875 (and tp!1644603 tp!1644605))))

(assert (=> b!5917676 (= tp!1644107 e!3623875)))

(declare-fun b!5918918 () Bool)

(declare-fun tp!1644601 () Bool)

(assert (=> b!5918918 (= e!3623875 tp!1644601)))

(assert (= (and b!5917676 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32451 (regOne!32450 r!7292))))) b!5918916))

(assert (= (and b!5917676 ((_ is Concat!24814) (regOne!32451 (regTwo!32451 (regOne!32450 r!7292))))) b!5918917))

(assert (= (and b!5917676 ((_ is Star!15969) (regOne!32451 (regTwo!32451 (regOne!32450 r!7292))))) b!5918918))

(assert (= (and b!5917676 ((_ is Union!15969) (regOne!32451 (regTwo!32451 (regOne!32450 r!7292))))) b!5918919))

(declare-fun b!5918920 () Bool)

(declare-fun e!3623876 () Bool)

(assert (=> b!5918920 (= e!3623876 tp_is_empty!41191)))

(declare-fun b!5918921 () Bool)

(declare-fun tp!1644607 () Bool)

(declare-fun tp!1644609 () Bool)

(assert (=> b!5918921 (= e!3623876 (and tp!1644607 tp!1644609))))

(declare-fun b!5918923 () Bool)

(declare-fun tp!1644608 () Bool)

(declare-fun tp!1644610 () Bool)

(assert (=> b!5918923 (= e!3623876 (and tp!1644608 tp!1644610))))

(assert (=> b!5917676 (= tp!1644109 e!3623876)))

(declare-fun b!5918922 () Bool)

(declare-fun tp!1644606 () Bool)

(assert (=> b!5918922 (= e!3623876 tp!1644606)))

(assert (= (and b!5917676 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32451 (regOne!32450 r!7292))))) b!5918920))

(assert (= (and b!5917676 ((_ is Concat!24814) (regTwo!32451 (regTwo!32451 (regOne!32450 r!7292))))) b!5918921))

(assert (= (and b!5917676 ((_ is Star!15969) (regTwo!32451 (regTwo!32451 (regOne!32450 r!7292))))) b!5918922))

(assert (= (and b!5917676 ((_ is Union!15969) (regTwo!32451 (regTwo!32451 (regOne!32450 r!7292))))) b!5918923))

(declare-fun b!5918924 () Bool)

(declare-fun e!3623877 () Bool)

(assert (=> b!5918924 (= e!3623877 tp_is_empty!41191)))

(declare-fun b!5918925 () Bool)

(declare-fun tp!1644612 () Bool)

(declare-fun tp!1644614 () Bool)

(assert (=> b!5918925 (= e!3623877 (and tp!1644612 tp!1644614))))

(declare-fun b!5918927 () Bool)

(declare-fun tp!1644613 () Bool)

(declare-fun tp!1644615 () Bool)

(assert (=> b!5918927 (= e!3623877 (and tp!1644613 tp!1644615))))

(assert (=> b!5917639 (= tp!1644060 e!3623877)))

(declare-fun b!5918926 () Bool)

(declare-fun tp!1644611 () Bool)

(assert (=> b!5918926 (= e!3623877 tp!1644611)))

(assert (= (and b!5917639 ((_ is ElementMatch!15969) (reg!16298 (reg!16298 (reg!16298 r!7292))))) b!5918924))

(assert (= (and b!5917639 ((_ is Concat!24814) (reg!16298 (reg!16298 (reg!16298 r!7292))))) b!5918925))

(assert (= (and b!5917639 ((_ is Star!15969) (reg!16298 (reg!16298 (reg!16298 r!7292))))) b!5918926))

(assert (= (and b!5917639 ((_ is Union!15969) (reg!16298 (reg!16298 (reg!16298 r!7292))))) b!5918927))

(declare-fun b!5918928 () Bool)

(declare-fun e!3623878 () Bool)

(assert (=> b!5918928 (= e!3623878 tp_is_empty!41191)))

(declare-fun b!5918929 () Bool)

(declare-fun tp!1644617 () Bool)

(declare-fun tp!1644619 () Bool)

(assert (=> b!5918929 (= e!3623878 (and tp!1644617 tp!1644619))))

(declare-fun b!5918931 () Bool)

(declare-fun tp!1644618 () Bool)

(declare-fun tp!1644620 () Bool)

(assert (=> b!5918931 (= e!3623878 (and tp!1644618 tp!1644620))))

(assert (=> b!5917683 (= tp!1644117 e!3623878)))

(declare-fun b!5918930 () Bool)

(declare-fun tp!1644616 () Bool)

(assert (=> b!5918930 (= e!3623878 tp!1644616)))

(assert (= (and b!5917683 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918928))

(assert (= (and b!5917683 ((_ is Concat!24814) (regOne!32450 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918929))

(assert (= (and b!5917683 ((_ is Star!15969) (regOne!32450 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918930))

(assert (= (and b!5917683 ((_ is Union!15969) (regOne!32450 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918931))

(declare-fun b!5918932 () Bool)

(declare-fun e!3623879 () Bool)

(assert (=> b!5918932 (= e!3623879 tp_is_empty!41191)))

(declare-fun b!5918933 () Bool)

(declare-fun tp!1644622 () Bool)

(declare-fun tp!1644624 () Bool)

(assert (=> b!5918933 (= e!3623879 (and tp!1644622 tp!1644624))))

(declare-fun b!5918935 () Bool)

(declare-fun tp!1644623 () Bool)

(declare-fun tp!1644625 () Bool)

(assert (=> b!5918935 (= e!3623879 (and tp!1644623 tp!1644625))))

(assert (=> b!5917683 (= tp!1644119 e!3623879)))

(declare-fun b!5918934 () Bool)

(declare-fun tp!1644621 () Bool)

(assert (=> b!5918934 (= e!3623879 tp!1644621)))

(assert (= (and b!5917683 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918932))

(assert (= (and b!5917683 ((_ is Concat!24814) (regTwo!32450 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918933))

(assert (= (and b!5917683 ((_ is Star!15969) (regTwo!32450 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918934))

(assert (= (and b!5917683 ((_ is Union!15969) (regTwo!32450 (regTwo!32450 (regTwo!32451 r!7292))))) b!5918935))

(declare-fun b!5918936 () Bool)

(declare-fun e!3623880 () Bool)

(assert (=> b!5918936 (= e!3623880 tp_is_empty!41191)))

(declare-fun b!5918937 () Bool)

(declare-fun tp!1644627 () Bool)

(declare-fun tp!1644629 () Bool)

(assert (=> b!5918937 (= e!3623880 (and tp!1644627 tp!1644629))))

(declare-fun b!5918939 () Bool)

(declare-fun tp!1644628 () Bool)

(declare-fun tp!1644630 () Bool)

(assert (=> b!5918939 (= e!3623880 (and tp!1644628 tp!1644630))))

(assert (=> b!5917648 (= tp!1644072 e!3623880)))

(declare-fun b!5918938 () Bool)

(declare-fun tp!1644626 () Bool)

(assert (=> b!5918938 (= e!3623880 tp!1644626)))

(assert (= (and b!5917648 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918936))

(assert (= (and b!5917648 ((_ is Concat!24814) (regOne!32451 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918937))

(assert (= (and b!5917648 ((_ is Star!15969) (regOne!32451 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918938))

(assert (= (and b!5917648 ((_ is Union!15969) (regOne!32451 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918939))

(declare-fun b!5918940 () Bool)

(declare-fun e!3623881 () Bool)

(assert (=> b!5918940 (= e!3623881 tp_is_empty!41191)))

(declare-fun b!5918941 () Bool)

(declare-fun tp!1644632 () Bool)

(declare-fun tp!1644634 () Bool)

(assert (=> b!5918941 (= e!3623881 (and tp!1644632 tp!1644634))))

(declare-fun b!5918943 () Bool)

(declare-fun tp!1644633 () Bool)

(declare-fun tp!1644635 () Bool)

(assert (=> b!5918943 (= e!3623881 (and tp!1644633 tp!1644635))))

(assert (=> b!5917648 (= tp!1644074 e!3623881)))

(declare-fun b!5918942 () Bool)

(declare-fun tp!1644631 () Bool)

(assert (=> b!5918942 (= e!3623881 tp!1644631)))

(assert (= (and b!5917648 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918940))

(assert (= (and b!5917648 ((_ is Concat!24814) (regTwo!32451 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918941))

(assert (= (and b!5917648 ((_ is Star!15969) (regTwo!32451 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918942))

(assert (= (and b!5917648 ((_ is Union!15969) (regTwo!32451 (regTwo!32450 (regTwo!32450 r!7292))))) b!5918943))

(declare-fun b!5918944 () Bool)

(declare-fun e!3623882 () Bool)

(assert (=> b!5918944 (= e!3623882 tp_is_empty!41191)))

(declare-fun b!5918945 () Bool)

(declare-fun tp!1644637 () Bool)

(declare-fun tp!1644639 () Bool)

(assert (=> b!5918945 (= e!3623882 (and tp!1644637 tp!1644639))))

(declare-fun b!5918947 () Bool)

(declare-fun tp!1644638 () Bool)

(declare-fun tp!1644640 () Bool)

(assert (=> b!5918947 (= e!3623882 (and tp!1644638 tp!1644640))))

(assert (=> b!5917692 (= tp!1644126 e!3623882)))

(declare-fun b!5918946 () Bool)

(declare-fun tp!1644636 () Bool)

(assert (=> b!5918946 (= e!3623882 tp!1644636)))

(assert (= (and b!5917692 ((_ is ElementMatch!15969) (reg!16298 (regOne!32450 (regOne!32450 r!7292))))) b!5918944))

(assert (= (and b!5917692 ((_ is Concat!24814) (reg!16298 (regOne!32450 (regOne!32450 r!7292))))) b!5918945))

(assert (= (and b!5917692 ((_ is Star!15969) (reg!16298 (regOne!32450 (regOne!32450 r!7292))))) b!5918946))

(assert (= (and b!5917692 ((_ is Union!15969) (reg!16298 (regOne!32450 (regOne!32450 r!7292))))) b!5918947))

(declare-fun b!5918948 () Bool)

(declare-fun e!3623883 () Bool)

(assert (=> b!5918948 (= e!3623883 tp_is_empty!41191)))

(declare-fun b!5918949 () Bool)

(declare-fun tp!1644642 () Bool)

(declare-fun tp!1644644 () Bool)

(assert (=> b!5918949 (= e!3623883 (and tp!1644642 tp!1644644))))

(declare-fun b!5918951 () Bool)

(declare-fun tp!1644643 () Bool)

(declare-fun tp!1644645 () Bool)

(assert (=> b!5918951 (= e!3623883 (and tp!1644643 tp!1644645))))

(assert (=> b!5917701 (= tp!1644138 e!3623883)))

(declare-fun b!5918950 () Bool)

(declare-fun tp!1644641 () Bool)

(assert (=> b!5918950 (= e!3623883 tp!1644641)))

(assert (= (and b!5917701 ((_ is ElementMatch!15969) (regOne!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918948))

(assert (= (and b!5917701 ((_ is Concat!24814) (regOne!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918949))

(assert (= (and b!5917701 ((_ is Star!15969) (regOne!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918950))

(assert (= (and b!5917701 ((_ is Union!15969) (regOne!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918951))

(declare-fun b!5918952 () Bool)

(declare-fun e!3623884 () Bool)

(assert (=> b!5918952 (= e!3623884 tp_is_empty!41191)))

(declare-fun b!5918953 () Bool)

(declare-fun tp!1644647 () Bool)

(declare-fun tp!1644649 () Bool)

(assert (=> b!5918953 (= e!3623884 (and tp!1644647 tp!1644649))))

(declare-fun b!5918955 () Bool)

(declare-fun tp!1644648 () Bool)

(declare-fun tp!1644650 () Bool)

(assert (=> b!5918955 (= e!3623884 (and tp!1644648 tp!1644650))))

(assert (=> b!5917701 (= tp!1644140 e!3623884)))

(declare-fun b!5918954 () Bool)

(declare-fun tp!1644646 () Bool)

(assert (=> b!5918954 (= e!3623884 tp!1644646)))

(assert (= (and b!5917701 ((_ is ElementMatch!15969) (regTwo!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918952))

(assert (= (and b!5917701 ((_ is Concat!24814) (regTwo!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918953))

(assert (= (and b!5917701 ((_ is Star!15969) (regTwo!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918954))

(assert (= (and b!5917701 ((_ is Union!15969) (regTwo!32451 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5918955))

(declare-fun b!5918956 () Bool)

(declare-fun e!3623885 () Bool)

(assert (=> b!5918956 (= e!3623885 tp_is_empty!41191)))

(declare-fun b!5918957 () Bool)

(declare-fun tp!1644652 () Bool)

(declare-fun tp!1644654 () Bool)

(assert (=> b!5918957 (= e!3623885 (and tp!1644652 tp!1644654))))

(declare-fun b!5918959 () Bool)

(declare-fun tp!1644653 () Bool)

(declare-fun tp!1644655 () Bool)

(assert (=> b!5918959 (= e!3623885 (and tp!1644653 tp!1644655))))

(assert (=> b!5917667 (= tp!1644095 e!3623885)))

(declare-fun b!5918958 () Bool)

(declare-fun tp!1644651 () Bool)

(assert (=> b!5918958 (= e!3623885 tp!1644651)))

(assert (= (and b!5917667 ((_ is ElementMatch!15969) (reg!16298 (reg!16298 (regOne!32450 r!7292))))) b!5918956))

(assert (= (and b!5917667 ((_ is Concat!24814) (reg!16298 (reg!16298 (regOne!32450 r!7292))))) b!5918957))

(assert (= (and b!5917667 ((_ is Star!15969) (reg!16298 (reg!16298 (regOne!32450 r!7292))))) b!5918958))

(assert (= (and b!5917667 ((_ is Union!15969) (reg!16298 (reg!16298 (regOne!32450 r!7292))))) b!5918959))

(declare-fun b!5918960 () Bool)

(declare-fun e!3623886 () Bool)

(assert (=> b!5918960 (= e!3623886 tp_is_empty!41191)))

(declare-fun b!5918961 () Bool)

(declare-fun tp!1644657 () Bool)

(declare-fun tp!1644659 () Bool)

(assert (=> b!5918961 (= e!3623886 (and tp!1644657 tp!1644659))))

(declare-fun b!5918963 () Bool)

(declare-fun tp!1644658 () Bool)

(declare-fun tp!1644660 () Bool)

(assert (=> b!5918963 (= e!3623886 (and tp!1644658 tp!1644660))))

(assert (=> b!5917622 (= tp!1644057 e!3623886)))

(declare-fun b!5918962 () Bool)

(declare-fun tp!1644656 () Bool)

(assert (=> b!5918962 (= e!3623886 tp!1644656)))

(assert (= (and b!5917622 ((_ is ElementMatch!15969) (regOne!32451 (reg!16298 (regTwo!32450 r!7292))))) b!5918960))

(assert (= (and b!5917622 ((_ is Concat!24814) (regOne!32451 (reg!16298 (regTwo!32450 r!7292))))) b!5918961))

(assert (= (and b!5917622 ((_ is Star!15969) (regOne!32451 (reg!16298 (regTwo!32450 r!7292))))) b!5918962))

(assert (= (and b!5917622 ((_ is Union!15969) (regOne!32451 (reg!16298 (regTwo!32450 r!7292))))) b!5918963))

(declare-fun b!5918964 () Bool)

(declare-fun e!3623887 () Bool)

(assert (=> b!5918964 (= e!3623887 tp_is_empty!41191)))

(declare-fun b!5918965 () Bool)

(declare-fun tp!1644662 () Bool)

(declare-fun tp!1644664 () Bool)

(assert (=> b!5918965 (= e!3623887 (and tp!1644662 tp!1644664))))

(declare-fun b!5918967 () Bool)

(declare-fun tp!1644663 () Bool)

(declare-fun tp!1644665 () Bool)

(assert (=> b!5918967 (= e!3623887 (and tp!1644663 tp!1644665))))

(assert (=> b!5917622 (= tp!1644059 e!3623887)))

(declare-fun b!5918966 () Bool)

(declare-fun tp!1644661 () Bool)

(assert (=> b!5918966 (= e!3623887 tp!1644661)))

(assert (= (and b!5917622 ((_ is ElementMatch!15969) (regTwo!32451 (reg!16298 (regTwo!32450 r!7292))))) b!5918964))

(assert (= (and b!5917622 ((_ is Concat!24814) (regTwo!32451 (reg!16298 (regTwo!32450 r!7292))))) b!5918965))

(assert (= (and b!5917622 ((_ is Star!15969) (regTwo!32451 (reg!16298 (regTwo!32450 r!7292))))) b!5918966))

(assert (= (and b!5917622 ((_ is Union!15969) (regTwo!32451 (reg!16298 (regTwo!32450 r!7292))))) b!5918967))

(declare-fun b!5918968 () Bool)

(declare-fun e!3623888 () Bool)

(assert (=> b!5918968 (= e!3623888 tp_is_empty!41191)))

(declare-fun b!5918969 () Bool)

(declare-fun tp!1644667 () Bool)

(declare-fun tp!1644669 () Bool)

(assert (=> b!5918969 (= e!3623888 (and tp!1644667 tp!1644669))))

(declare-fun b!5918971 () Bool)

(declare-fun tp!1644668 () Bool)

(declare-fun tp!1644670 () Bool)

(assert (=> b!5918971 (= e!3623888 (and tp!1644668 tp!1644670))))

(assert (=> b!5917674 (= tp!1644106 e!3623888)))

(declare-fun b!5918970 () Bool)

(declare-fun tp!1644666 () Bool)

(assert (=> b!5918970 (= e!3623888 tp!1644666)))

(assert (= (and b!5917674 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32451 (regOne!32450 r!7292))))) b!5918968))

(assert (= (and b!5917674 ((_ is Concat!24814) (regOne!32450 (regTwo!32451 (regOne!32450 r!7292))))) b!5918969))

(assert (= (and b!5917674 ((_ is Star!15969) (regOne!32450 (regTwo!32451 (regOne!32450 r!7292))))) b!5918970))

(assert (= (and b!5917674 ((_ is Union!15969) (regOne!32450 (regTwo!32451 (regOne!32450 r!7292))))) b!5918971))

(declare-fun b!5918974 () Bool)

(declare-fun e!3623891 () Bool)

(assert (=> b!5918974 (= e!3623891 tp_is_empty!41191)))

(declare-fun b!5918975 () Bool)

(declare-fun tp!1644672 () Bool)

(declare-fun tp!1644674 () Bool)

(assert (=> b!5918975 (= e!3623891 (and tp!1644672 tp!1644674))))

(declare-fun b!5918977 () Bool)

(declare-fun tp!1644673 () Bool)

(declare-fun tp!1644675 () Bool)

(assert (=> b!5918977 (= e!3623891 (and tp!1644673 tp!1644675))))

(assert (=> b!5917674 (= tp!1644108 e!3623891)))

(declare-fun b!5918976 () Bool)

(declare-fun tp!1644671 () Bool)

(assert (=> b!5918976 (= e!3623891 tp!1644671)))

(assert (= (and b!5917674 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32451 (regOne!32450 r!7292))))) b!5918974))

(assert (= (and b!5917674 ((_ is Concat!24814) (regTwo!32450 (regTwo!32451 (regOne!32450 r!7292))))) b!5918975))

(assert (= (and b!5917674 ((_ is Star!15969) (regTwo!32450 (regTwo!32451 (regOne!32450 r!7292))))) b!5918976))

(assert (= (and b!5917674 ((_ is Union!15969) (regTwo!32450 (regTwo!32451 (regOne!32450 r!7292))))) b!5918977))

(declare-fun b!5918980 () Bool)

(declare-fun e!3623894 () Bool)

(assert (=> b!5918980 (= e!3623894 tp_is_empty!41191)))

(declare-fun b!5918981 () Bool)

(declare-fun tp!1644677 () Bool)

(declare-fun tp!1644679 () Bool)

(assert (=> b!5918981 (= e!3623894 (and tp!1644677 tp!1644679))))

(declare-fun b!5918983 () Bool)

(declare-fun tp!1644678 () Bool)

(declare-fun tp!1644680 () Bool)

(assert (=> b!5918983 (= e!3623894 (and tp!1644678 tp!1644680))))

(assert (=> b!5917650 (= tp!1644076 e!3623894)))

(declare-fun b!5918982 () Bool)

(declare-fun tp!1644676 () Bool)

(assert (=> b!5918982 (= e!3623894 tp!1644676)))

(assert (= (and b!5917650 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32450 (regOne!32451 r!7292))))) b!5918980))

(assert (= (and b!5917650 ((_ is Concat!24814) (regOne!32450 (regOne!32450 (regOne!32451 r!7292))))) b!5918981))

(assert (= (and b!5917650 ((_ is Star!15969) (regOne!32450 (regOne!32450 (regOne!32451 r!7292))))) b!5918982))

(assert (= (and b!5917650 ((_ is Union!15969) (regOne!32450 (regOne!32450 (regOne!32451 r!7292))))) b!5918983))

(declare-fun b!5918990 () Bool)

(declare-fun e!3623899 () Bool)

(assert (=> b!5918990 (= e!3623899 tp_is_empty!41191)))

(declare-fun b!5918991 () Bool)

(declare-fun tp!1644682 () Bool)

(declare-fun tp!1644684 () Bool)

(assert (=> b!5918991 (= e!3623899 (and tp!1644682 tp!1644684))))

(declare-fun b!5918993 () Bool)

(declare-fun tp!1644683 () Bool)

(declare-fun tp!1644685 () Bool)

(assert (=> b!5918993 (= e!3623899 (and tp!1644683 tp!1644685))))

(assert (=> b!5917650 (= tp!1644078 e!3623899)))

(declare-fun b!5918992 () Bool)

(declare-fun tp!1644681 () Bool)

(assert (=> b!5918992 (= e!3623899 tp!1644681)))

(assert (= (and b!5917650 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32450 (regOne!32451 r!7292))))) b!5918990))

(assert (= (and b!5917650 ((_ is Concat!24814) (regTwo!32450 (regOne!32450 (regOne!32451 r!7292))))) b!5918991))

(assert (= (and b!5917650 ((_ is Star!15969) (regTwo!32450 (regOne!32450 (regOne!32451 r!7292))))) b!5918992))

(assert (= (and b!5917650 ((_ is Union!15969) (regTwo!32450 (regOne!32450 (regOne!32451 r!7292))))) b!5918993))

(declare-fun b!5918996 () Bool)

(declare-fun e!3623902 () Bool)

(assert (=> b!5918996 (= e!3623902 tp_is_empty!41191)))

(declare-fun b!5918997 () Bool)

(declare-fun tp!1644687 () Bool)

(declare-fun tp!1644689 () Bool)

(assert (=> b!5918997 (= e!3623902 (and tp!1644687 tp!1644689))))

(declare-fun b!5918999 () Bool)

(declare-fun tp!1644688 () Bool)

(declare-fun tp!1644690 () Bool)

(assert (=> b!5918999 (= e!3623902 (and tp!1644688 tp!1644690))))

(assert (=> b!5917659 (= tp!1644085 e!3623902)))

(declare-fun b!5918998 () Bool)

(declare-fun tp!1644686 () Bool)

(assert (=> b!5918998 (= e!3623902 tp!1644686)))

(assert (= (and b!5917659 ((_ is ElementMatch!15969) (reg!16298 (regOne!32451 (regTwo!32451 r!7292))))) b!5918996))

(assert (= (and b!5917659 ((_ is Concat!24814) (reg!16298 (regOne!32451 (regTwo!32451 r!7292))))) b!5918997))

(assert (= (and b!5917659 ((_ is Star!15969) (reg!16298 (regOne!32451 (regTwo!32451 r!7292))))) b!5918998))

(assert (= (and b!5917659 ((_ is Union!15969) (reg!16298 (regOne!32451 (regTwo!32451 r!7292))))) b!5918999))

(declare-fun b!5919002 () Bool)

(declare-fun e!3623905 () Bool)

(assert (=> b!5919002 (= e!3623905 tp_is_empty!41191)))

(declare-fun b!5919003 () Bool)

(declare-fun tp!1644692 () Bool)

(declare-fun tp!1644694 () Bool)

(assert (=> b!5919003 (= e!3623905 (and tp!1644692 tp!1644694))))

(declare-fun b!5919005 () Bool)

(declare-fun tp!1644693 () Bool)

(declare-fun tp!1644695 () Bool)

(assert (=> b!5919005 (= e!3623905 (and tp!1644693 tp!1644695))))

(assert (=> b!5917584 (= tp!1644007 e!3623905)))

(declare-fun b!5919004 () Bool)

(declare-fun tp!1644691 () Bool)

(assert (=> b!5919004 (= e!3623905 tp!1644691)))

(assert (= (and b!5917584 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32451 (regOne!32451 r!7292))))) b!5919002))

(assert (= (and b!5917584 ((_ is Concat!24814) (regOne!32451 (regOne!32451 (regOne!32451 r!7292))))) b!5919003))

(assert (= (and b!5917584 ((_ is Star!15969) (regOne!32451 (regOne!32451 (regOne!32451 r!7292))))) b!5919004))

(assert (= (and b!5917584 ((_ is Union!15969) (regOne!32451 (regOne!32451 (regOne!32451 r!7292))))) b!5919005))

(declare-fun b!5919006 () Bool)

(declare-fun e!3623906 () Bool)

(assert (=> b!5919006 (= e!3623906 tp_is_empty!41191)))

(declare-fun b!5919007 () Bool)

(declare-fun tp!1644697 () Bool)

(declare-fun tp!1644699 () Bool)

(assert (=> b!5919007 (= e!3623906 (and tp!1644697 tp!1644699))))

(declare-fun b!5919009 () Bool)

(declare-fun tp!1644698 () Bool)

(declare-fun tp!1644700 () Bool)

(assert (=> b!5919009 (= e!3623906 (and tp!1644698 tp!1644700))))

(assert (=> b!5917584 (= tp!1644009 e!3623906)))

(declare-fun b!5919008 () Bool)

(declare-fun tp!1644696 () Bool)

(assert (=> b!5919008 (= e!3623906 tp!1644696)))

(assert (= (and b!5917584 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32451 (regOne!32451 r!7292))))) b!5919006))

(assert (= (and b!5917584 ((_ is Concat!24814) (regTwo!32451 (regOne!32451 (regOne!32451 r!7292))))) b!5919007))

(assert (= (and b!5917584 ((_ is Star!15969) (regTwo!32451 (regOne!32451 (regOne!32451 r!7292))))) b!5919008))

(assert (= (and b!5917584 ((_ is Union!15969) (regTwo!32451 (regOne!32451 (regOne!32451 r!7292))))) b!5919009))

(declare-fun b!5919010 () Bool)

(declare-fun e!3623907 () Bool)

(assert (=> b!5919010 (= e!3623907 tp_is_empty!41191)))

(declare-fun b!5919011 () Bool)

(declare-fun tp!1644702 () Bool)

(declare-fun tp!1644704 () Bool)

(assert (=> b!5919011 (= e!3623907 (and tp!1644702 tp!1644704))))

(declare-fun b!5919013 () Bool)

(declare-fun tp!1644703 () Bool)

(declare-fun tp!1644705 () Bool)

(assert (=> b!5919013 (= e!3623907 (and tp!1644703 tp!1644705))))

(assert (=> b!5917592 (= tp!1644017 e!3623907)))

(declare-fun b!5919012 () Bool)

(declare-fun tp!1644701 () Bool)

(assert (=> b!5919012 (= e!3623907 tp!1644701)))

(assert (= (and b!5917592 ((_ is ElementMatch!15969) (regOne!32451 (reg!16298 (regOne!32451 r!7292))))) b!5919010))

(assert (= (and b!5917592 ((_ is Concat!24814) (regOne!32451 (reg!16298 (regOne!32451 r!7292))))) b!5919011))

(assert (= (and b!5917592 ((_ is Star!15969) (regOne!32451 (reg!16298 (regOne!32451 r!7292))))) b!5919012))

(assert (= (and b!5917592 ((_ is Union!15969) (regOne!32451 (reg!16298 (regOne!32451 r!7292))))) b!5919013))

(declare-fun b!5919014 () Bool)

(declare-fun e!3623908 () Bool)

(assert (=> b!5919014 (= e!3623908 tp_is_empty!41191)))

(declare-fun b!5919015 () Bool)

(declare-fun tp!1644707 () Bool)

(declare-fun tp!1644709 () Bool)

(assert (=> b!5919015 (= e!3623908 (and tp!1644707 tp!1644709))))

(declare-fun b!5919017 () Bool)

(declare-fun tp!1644708 () Bool)

(declare-fun tp!1644710 () Bool)

(assert (=> b!5919017 (= e!3623908 (and tp!1644708 tp!1644710))))

(assert (=> b!5917592 (= tp!1644019 e!3623908)))

(declare-fun b!5919016 () Bool)

(declare-fun tp!1644706 () Bool)

(assert (=> b!5919016 (= e!3623908 tp!1644706)))

(assert (= (and b!5917592 ((_ is ElementMatch!15969) (regTwo!32451 (reg!16298 (regOne!32451 r!7292))))) b!5919014))

(assert (= (and b!5917592 ((_ is Concat!24814) (regTwo!32451 (reg!16298 (regOne!32451 r!7292))))) b!5919015))

(assert (= (and b!5917592 ((_ is Star!15969) (regTwo!32451 (reg!16298 (regOne!32451 r!7292))))) b!5919016))

(assert (= (and b!5917592 ((_ is Union!15969) (regTwo!32451 (reg!16298 (regOne!32451 r!7292))))) b!5919017))

(declare-fun condSetEmpty!40169 () Bool)

(assert (=> setNonEmpty!40167 (= condSetEmpty!40169 (= setRest!40167 ((as const (Array Context!10706 Bool)) false)))))

(declare-fun setRes!40169 () Bool)

(assert (=> setNonEmpty!40167 (= tp!1644025 setRes!40169)))

(declare-fun setIsEmpty!40169 () Bool)

(assert (=> setIsEmpty!40169 setRes!40169))

(declare-fun e!3623909 () Bool)

(declare-fun setElem!40169 () Context!10706)

(declare-fun setNonEmpty!40169 () Bool)

(declare-fun tp!1644712 () Bool)

(assert (=> setNonEmpty!40169 (= setRes!40169 (and tp!1644712 (inv!83169 setElem!40169) e!3623909))))

(declare-fun setRest!40169 () (InoxSet Context!10706))

(assert (=> setNonEmpty!40169 (= setRest!40167 ((_ map or) (store ((as const (Array Context!10706 Bool)) false) setElem!40169 true) setRest!40169))))

(declare-fun b!5919018 () Bool)

(declare-fun tp!1644711 () Bool)

(assert (=> b!5919018 (= e!3623909 tp!1644711)))

(assert (= (and setNonEmpty!40167 condSetEmpty!40169) setIsEmpty!40169))

(assert (= (and setNonEmpty!40167 (not condSetEmpty!40169)) setNonEmpty!40169))

(assert (= setNonEmpty!40169 b!5919018))

(declare-fun m!6815968 () Bool)

(assert (=> setNonEmpty!40169 m!6815968))

(declare-fun b!5919019 () Bool)

(declare-fun e!3623910 () Bool)

(assert (=> b!5919019 (= e!3623910 tp_is_empty!41191)))

(declare-fun b!5919020 () Bool)

(declare-fun tp!1644714 () Bool)

(declare-fun tp!1644716 () Bool)

(assert (=> b!5919020 (= e!3623910 (and tp!1644714 tp!1644716))))

(declare-fun b!5919022 () Bool)

(declare-fun tp!1644715 () Bool)

(declare-fun tp!1644717 () Bool)

(assert (=> b!5919022 (= e!3623910 (and tp!1644715 tp!1644717))))

(assert (=> b!5917610 (= tp!1644042 e!3623910)))

(declare-fun b!5919021 () Bool)

(declare-fun tp!1644713 () Bool)

(assert (=> b!5919021 (= e!3623910 tp!1644713)))

(assert (= (and b!5917610 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32450 (reg!16298 r!7292))))) b!5919019))

(assert (= (and b!5917610 ((_ is Concat!24814) (regOne!32451 (regTwo!32450 (reg!16298 r!7292))))) b!5919020))

(assert (= (and b!5917610 ((_ is Star!15969) (regOne!32451 (regTwo!32450 (reg!16298 r!7292))))) b!5919021))

(assert (= (and b!5917610 ((_ is Union!15969) (regOne!32451 (regTwo!32450 (reg!16298 r!7292))))) b!5919022))

(declare-fun b!5919023 () Bool)

(declare-fun e!3623911 () Bool)

(assert (=> b!5919023 (= e!3623911 tp_is_empty!41191)))

(declare-fun b!5919024 () Bool)

(declare-fun tp!1644719 () Bool)

(declare-fun tp!1644721 () Bool)

(assert (=> b!5919024 (= e!3623911 (and tp!1644719 tp!1644721))))

(declare-fun b!5919026 () Bool)

(declare-fun tp!1644720 () Bool)

(declare-fun tp!1644722 () Bool)

(assert (=> b!5919026 (= e!3623911 (and tp!1644720 tp!1644722))))

(assert (=> b!5917610 (= tp!1644044 e!3623911)))

(declare-fun b!5919025 () Bool)

(declare-fun tp!1644718 () Bool)

(assert (=> b!5919025 (= e!3623911 tp!1644718)))

(assert (= (and b!5917610 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32450 (reg!16298 r!7292))))) b!5919023))

(assert (= (and b!5917610 ((_ is Concat!24814) (regTwo!32451 (regTwo!32450 (reg!16298 r!7292))))) b!5919024))

(assert (= (and b!5917610 ((_ is Star!15969) (regTwo!32451 (regTwo!32450 (reg!16298 r!7292))))) b!5919025))

(assert (= (and b!5917610 ((_ is Union!15969) (regTwo!32451 (regTwo!32450 (reg!16298 r!7292))))) b!5919026))

(declare-fun b!5919027 () Bool)

(declare-fun e!3623912 () Bool)

(assert (=> b!5919027 (= e!3623912 tp_is_empty!41191)))

(declare-fun b!5919028 () Bool)

(declare-fun tp!1644724 () Bool)

(declare-fun tp!1644726 () Bool)

(assert (=> b!5919028 (= e!3623912 (and tp!1644724 tp!1644726))))

(declare-fun b!5919030 () Bool)

(declare-fun tp!1644725 () Bool)

(declare-fun tp!1644727 () Bool)

(assert (=> b!5919030 (= e!3623912 (and tp!1644725 tp!1644727))))

(assert (=> b!5917664 (= tp!1644092 e!3623912)))

(declare-fun b!5919029 () Bool)

(declare-fun tp!1644723 () Bool)

(assert (=> b!5919029 (= e!3623912 tp!1644723)))

(assert (= (and b!5917664 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32451 (regTwo!32451 r!7292))))) b!5919027))

(assert (= (and b!5917664 ((_ is Concat!24814) (regOne!32451 (regTwo!32451 (regTwo!32451 r!7292))))) b!5919028))

(assert (= (and b!5917664 ((_ is Star!15969) (regOne!32451 (regTwo!32451 (regTwo!32451 r!7292))))) b!5919029))

(assert (= (and b!5917664 ((_ is Union!15969) (regOne!32451 (regTwo!32451 (regTwo!32451 r!7292))))) b!5919030))

(declare-fun b!5919031 () Bool)

(declare-fun e!3623913 () Bool)

(assert (=> b!5919031 (= e!3623913 tp_is_empty!41191)))

(declare-fun b!5919032 () Bool)

(declare-fun tp!1644729 () Bool)

(declare-fun tp!1644731 () Bool)

(assert (=> b!5919032 (= e!3623913 (and tp!1644729 tp!1644731))))

(declare-fun b!5919034 () Bool)

(declare-fun tp!1644730 () Bool)

(declare-fun tp!1644732 () Bool)

(assert (=> b!5919034 (= e!3623913 (and tp!1644730 tp!1644732))))

(assert (=> b!5917664 (= tp!1644094 e!3623913)))

(declare-fun b!5919033 () Bool)

(declare-fun tp!1644728 () Bool)

(assert (=> b!5919033 (= e!3623913 tp!1644728)))

(assert (= (and b!5917664 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32451 (regTwo!32451 r!7292))))) b!5919031))

(assert (= (and b!5917664 ((_ is Concat!24814) (regTwo!32451 (regTwo!32451 (regTwo!32451 r!7292))))) b!5919032))

(assert (= (and b!5917664 ((_ is Star!15969) (regTwo!32451 (regTwo!32451 (regTwo!32451 r!7292))))) b!5919033))

(assert (= (and b!5917664 ((_ is Union!15969) (regTwo!32451 (regTwo!32451 (regTwo!32451 r!7292))))) b!5919034))

(declare-fun b!5919035 () Bool)

(declare-fun e!3623914 () Bool)

(assert (=> b!5919035 (= e!3623914 tp_is_empty!41191)))

(declare-fun b!5919036 () Bool)

(declare-fun tp!1644734 () Bool)

(declare-fun tp!1644736 () Bool)

(assert (=> b!5919036 (= e!3623914 (and tp!1644734 tp!1644736))))

(declare-fun b!5919038 () Bool)

(declare-fun tp!1644735 () Bool)

(declare-fun tp!1644737 () Bool)

(assert (=> b!5919038 (= e!3623914 (and tp!1644735 tp!1644737))))

(assert (=> b!5917576 (= tp!1643997 e!3623914)))

(declare-fun b!5919037 () Bool)

(declare-fun tp!1644733 () Bool)

(assert (=> b!5919037 (= e!3623914 tp!1644733)))

(assert (= (and b!5917576 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32451 (regTwo!32450 r!7292))))) b!5919035))

(assert (= (and b!5917576 ((_ is Concat!24814) (regOne!32451 (regOne!32451 (regTwo!32450 r!7292))))) b!5919036))

(assert (= (and b!5917576 ((_ is Star!15969) (regOne!32451 (regOne!32451 (regTwo!32450 r!7292))))) b!5919037))

(assert (= (and b!5917576 ((_ is Union!15969) (regOne!32451 (regOne!32451 (regTwo!32450 r!7292))))) b!5919038))

(declare-fun b!5919039 () Bool)

(declare-fun e!3623915 () Bool)

(assert (=> b!5919039 (= e!3623915 tp_is_empty!41191)))

(declare-fun b!5919040 () Bool)

(declare-fun tp!1644739 () Bool)

(declare-fun tp!1644741 () Bool)

(assert (=> b!5919040 (= e!3623915 (and tp!1644739 tp!1644741))))

(declare-fun b!5919042 () Bool)

(declare-fun tp!1644740 () Bool)

(declare-fun tp!1644742 () Bool)

(assert (=> b!5919042 (= e!3623915 (and tp!1644740 tp!1644742))))

(assert (=> b!5917576 (= tp!1643999 e!3623915)))

(declare-fun b!5919041 () Bool)

(declare-fun tp!1644738 () Bool)

(assert (=> b!5919041 (= e!3623915 tp!1644738)))

(assert (= (and b!5917576 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32451 (regTwo!32450 r!7292))))) b!5919039))

(assert (= (and b!5917576 ((_ is Concat!24814) (regTwo!32451 (regOne!32451 (regTwo!32450 r!7292))))) b!5919040))

(assert (= (and b!5917576 ((_ is Star!15969) (regTwo!32451 (regOne!32451 (regTwo!32450 r!7292))))) b!5919041))

(assert (= (and b!5917576 ((_ is Union!15969) (regTwo!32451 (regOne!32451 (regTwo!32450 r!7292))))) b!5919042))

(declare-fun b!5919043 () Bool)

(declare-fun e!3623916 () Bool)

(assert (=> b!5919043 (= e!3623916 tp_is_empty!41191)))

(declare-fun b!5919044 () Bool)

(declare-fun tp!1644744 () Bool)

(declare-fun tp!1644746 () Bool)

(assert (=> b!5919044 (= e!3623916 (and tp!1644744 tp!1644746))))

(declare-fun b!5919046 () Bool)

(declare-fun tp!1644745 () Bool)

(declare-fun tp!1644747 () Bool)

(assert (=> b!5919046 (= e!3623916 (and tp!1644745 tp!1644747))))

(assert (=> b!5917582 (= tp!1644006 e!3623916)))

(declare-fun b!5919045 () Bool)

(declare-fun tp!1644743 () Bool)

(assert (=> b!5919045 (= e!3623916 tp!1644743)))

(assert (= (and b!5917582 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32451 (regOne!32451 r!7292))))) b!5919043))

(assert (= (and b!5917582 ((_ is Concat!24814) (regOne!32450 (regOne!32451 (regOne!32451 r!7292))))) b!5919044))

(assert (= (and b!5917582 ((_ is Star!15969) (regOne!32450 (regOne!32451 (regOne!32451 r!7292))))) b!5919045))

(assert (= (and b!5917582 ((_ is Union!15969) (regOne!32450 (regOne!32451 (regOne!32451 r!7292))))) b!5919046))

(declare-fun b!5919047 () Bool)

(declare-fun e!3623917 () Bool)

(assert (=> b!5919047 (= e!3623917 tp_is_empty!41191)))

(declare-fun b!5919048 () Bool)

(declare-fun tp!1644749 () Bool)

(declare-fun tp!1644751 () Bool)

(assert (=> b!5919048 (= e!3623917 (and tp!1644749 tp!1644751))))

(declare-fun b!5919050 () Bool)

(declare-fun tp!1644750 () Bool)

(declare-fun tp!1644752 () Bool)

(assert (=> b!5919050 (= e!3623917 (and tp!1644750 tp!1644752))))

(assert (=> b!5917582 (= tp!1644008 e!3623917)))

(declare-fun b!5919049 () Bool)

(declare-fun tp!1644748 () Bool)

(assert (=> b!5919049 (= e!3623917 tp!1644748)))

(assert (= (and b!5917582 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))))) b!5919047))

(assert (= (and b!5917582 ((_ is Concat!24814) (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))))) b!5919048))

(assert (= (and b!5917582 ((_ is Star!15969) (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))))) b!5919049))

(assert (= (and b!5917582 ((_ is Union!15969) (regTwo!32450 (regOne!32451 (regOne!32451 r!7292))))) b!5919050))

(declare-fun b!5919051 () Bool)

(declare-fun e!3623918 () Bool)

(assert (=> b!5919051 (= e!3623918 tp_is_empty!41191)))

(declare-fun b!5919052 () Bool)

(declare-fun tp!1644754 () Bool)

(declare-fun tp!1644756 () Bool)

(assert (=> b!5919052 (= e!3623918 (and tp!1644754 tp!1644756))))

(declare-fun b!5919054 () Bool)

(declare-fun tp!1644755 () Bool)

(declare-fun tp!1644757 () Bool)

(assert (=> b!5919054 (= e!3623918 (and tp!1644755 tp!1644757))))

(assert (=> b!5917590 (= tp!1644016 e!3623918)))

(declare-fun b!5919053 () Bool)

(declare-fun tp!1644753 () Bool)

(assert (=> b!5919053 (= e!3623918 tp!1644753)))

(assert (= (and b!5917590 ((_ is ElementMatch!15969) (regOne!32450 (reg!16298 (regOne!32451 r!7292))))) b!5919051))

(assert (= (and b!5917590 ((_ is Concat!24814) (regOne!32450 (reg!16298 (regOne!32451 r!7292))))) b!5919052))

(assert (= (and b!5917590 ((_ is Star!15969) (regOne!32450 (reg!16298 (regOne!32451 r!7292))))) b!5919053))

(assert (= (and b!5917590 ((_ is Union!15969) (regOne!32450 (reg!16298 (regOne!32451 r!7292))))) b!5919054))

(declare-fun b!5919055 () Bool)

(declare-fun e!3623919 () Bool)

(assert (=> b!5919055 (= e!3623919 tp_is_empty!41191)))

(declare-fun b!5919056 () Bool)

(declare-fun tp!1644759 () Bool)

(declare-fun tp!1644761 () Bool)

(assert (=> b!5919056 (= e!3623919 (and tp!1644759 tp!1644761))))

(declare-fun b!5919058 () Bool)

(declare-fun tp!1644760 () Bool)

(declare-fun tp!1644762 () Bool)

(assert (=> b!5919058 (= e!3623919 (and tp!1644760 tp!1644762))))

(assert (=> b!5917590 (= tp!1644018 e!3623919)))

(declare-fun b!5919057 () Bool)

(declare-fun tp!1644758 () Bool)

(assert (=> b!5919057 (= e!3623919 tp!1644758)))

(assert (= (and b!5917590 ((_ is ElementMatch!15969) (regTwo!32450 (reg!16298 (regOne!32451 r!7292))))) b!5919055))

(assert (= (and b!5917590 ((_ is Concat!24814) (regTwo!32450 (reg!16298 (regOne!32451 r!7292))))) b!5919056))

(assert (= (and b!5917590 ((_ is Star!15969) (regTwo!32450 (reg!16298 (regOne!32451 r!7292))))) b!5919057))

(assert (= (and b!5917590 ((_ is Union!15969) (regTwo!32450 (reg!16298 (regOne!32451 r!7292))))) b!5919058))

(declare-fun b!5919059 () Bool)

(declare-fun e!3623920 () Bool)

(assert (=> b!5919059 (= e!3623920 tp_is_empty!41191)))

(declare-fun b!5919060 () Bool)

(declare-fun tp!1644764 () Bool)

(declare-fun tp!1644766 () Bool)

(assert (=> b!5919060 (= e!3623920 (and tp!1644764 tp!1644766))))

(declare-fun b!5919062 () Bool)

(declare-fun tp!1644765 () Bool)

(declare-fun tp!1644767 () Bool)

(assert (=> b!5919062 (= e!3623920 (and tp!1644765 tp!1644767))))

(assert (=> b!5917597 (= tp!1644026 e!3623920)))

(declare-fun b!5919061 () Bool)

(declare-fun tp!1644763 () Bool)

(assert (=> b!5919061 (= e!3623920 tp!1644763)))

(assert (= (and b!5917597 ((_ is ElementMatch!15969) (h!70530 (exprs!5853 setElem!40166)))) b!5919059))

(assert (= (and b!5917597 ((_ is Concat!24814) (h!70530 (exprs!5853 setElem!40166)))) b!5919060))

(assert (= (and b!5917597 ((_ is Star!15969) (h!70530 (exprs!5853 setElem!40166)))) b!5919061))

(assert (= (and b!5917597 ((_ is Union!15969) (h!70530 (exprs!5853 setElem!40166)))) b!5919062))

(declare-fun b!5919063 () Bool)

(declare-fun e!3623921 () Bool)

(declare-fun tp!1644768 () Bool)

(declare-fun tp!1644769 () Bool)

(assert (=> b!5919063 (= e!3623921 (and tp!1644768 tp!1644769))))

(assert (=> b!5917597 (= tp!1644027 e!3623921)))

(assert (= (and b!5917597 ((_ is Cons!64082) (t!377595 (exprs!5853 setElem!40166)))) b!5919063))

(declare-fun b!5919064 () Bool)

(declare-fun e!3623922 () Bool)

(assert (=> b!5919064 (= e!3623922 tp_is_empty!41191)))

(declare-fun b!5919065 () Bool)

(declare-fun tp!1644771 () Bool)

(declare-fun tp!1644773 () Bool)

(assert (=> b!5919065 (= e!3623922 (and tp!1644771 tp!1644773))))

(declare-fun b!5919067 () Bool)

(declare-fun tp!1644772 () Bool)

(declare-fun tp!1644774 () Bool)

(assert (=> b!5919067 (= e!3623922 (and tp!1644772 tp!1644774))))

(assert (=> b!5917612 (= tp!1644046 e!3623922)))

(declare-fun b!5919066 () Bool)

(declare-fun tp!1644770 () Bool)

(assert (=> b!5919066 (= e!3623922 tp!1644770)))

(assert (= (and b!5917612 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32451 (reg!16298 r!7292))))) b!5919064))

(assert (= (and b!5917612 ((_ is Concat!24814) (regOne!32450 (regOne!32451 (reg!16298 r!7292))))) b!5919065))

(assert (= (and b!5917612 ((_ is Star!15969) (regOne!32450 (regOne!32451 (reg!16298 r!7292))))) b!5919066))

(assert (= (and b!5917612 ((_ is Union!15969) (regOne!32450 (regOne!32451 (reg!16298 r!7292))))) b!5919067))

(declare-fun b!5919068 () Bool)

(declare-fun e!3623923 () Bool)

(assert (=> b!5919068 (= e!3623923 tp_is_empty!41191)))

(declare-fun b!5919069 () Bool)

(declare-fun tp!1644776 () Bool)

(declare-fun tp!1644778 () Bool)

(assert (=> b!5919069 (= e!3623923 (and tp!1644776 tp!1644778))))

(declare-fun b!5919071 () Bool)

(declare-fun tp!1644777 () Bool)

(declare-fun tp!1644779 () Bool)

(assert (=> b!5919071 (= e!3623923 (and tp!1644777 tp!1644779))))

(assert (=> b!5917612 (= tp!1644048 e!3623923)))

(declare-fun b!5919070 () Bool)

(declare-fun tp!1644775 () Bool)

(assert (=> b!5919070 (= e!3623923 tp!1644775)))

(assert (= (and b!5917612 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32451 (reg!16298 r!7292))))) b!5919068))

(assert (= (and b!5917612 ((_ is Concat!24814) (regTwo!32450 (regOne!32451 (reg!16298 r!7292))))) b!5919069))

(assert (= (and b!5917612 ((_ is Star!15969) (regTwo!32450 (regOne!32451 (reg!16298 r!7292))))) b!5919070))

(assert (= (and b!5917612 ((_ is Union!15969) (regTwo!32450 (regOne!32451 (reg!16298 r!7292))))) b!5919071))

(declare-fun b!5919072 () Bool)

(declare-fun e!3623924 () Bool)

(declare-fun tp!1644780 () Bool)

(declare-fun tp!1644781 () Bool)

(assert (=> b!5919072 (= e!3623924 (and tp!1644780 tp!1644781))))

(assert (=> b!5917594 (= tp!1644020 e!3623924)))

(assert (= (and b!5917594 ((_ is Cons!64082) (exprs!5853 (h!70531 (t!377596 (t!377596 zl!343)))))) b!5919072))

(declare-fun b!5919073 () Bool)

(declare-fun e!3623925 () Bool)

(assert (=> b!5919073 (= e!3623925 tp_is_empty!41191)))

(declare-fun b!5919074 () Bool)

(declare-fun tp!1644783 () Bool)

(declare-fun tp!1644785 () Bool)

(assert (=> b!5919074 (= e!3623925 (and tp!1644783 tp!1644785))))

(declare-fun b!5919076 () Bool)

(declare-fun tp!1644784 () Bool)

(declare-fun tp!1644786 () Bool)

(assert (=> b!5919076 (= e!3623925 (and tp!1644784 tp!1644786))))

(assert (=> b!5917680 (= tp!1644111 e!3623925)))

(declare-fun b!5919075 () Bool)

(declare-fun tp!1644782 () Bool)

(assert (=> b!5919075 (= e!3623925 tp!1644782)))

(assert (= (and b!5917680 ((_ is ElementMatch!15969) (reg!16298 (regOne!32450 (regTwo!32451 r!7292))))) b!5919073))

(assert (= (and b!5917680 ((_ is Concat!24814) (reg!16298 (regOne!32450 (regTwo!32451 r!7292))))) b!5919074))

(assert (= (and b!5917680 ((_ is Star!15969) (reg!16298 (regOne!32450 (regTwo!32451 r!7292))))) b!5919075))

(assert (= (and b!5917680 ((_ is Union!15969) (reg!16298 (regOne!32450 (regTwo!32451 r!7292))))) b!5919076))

(declare-fun b!5919077 () Bool)

(declare-fun e!3623926 () Bool)

(assert (=> b!5919077 (= e!3623926 tp_is_empty!41191)))

(declare-fun b!5919078 () Bool)

(declare-fun tp!1644788 () Bool)

(declare-fun tp!1644790 () Bool)

(assert (=> b!5919078 (= e!3623926 (and tp!1644788 tp!1644790))))

(declare-fun b!5919080 () Bool)

(declare-fun tp!1644789 () Bool)

(declare-fun tp!1644791 () Bool)

(assert (=> b!5919080 (= e!3623926 (and tp!1644789 tp!1644791))))

(assert (=> b!5917689 (= tp!1644123 e!3623926)))

(declare-fun b!5919079 () Bool)

(declare-fun tp!1644787 () Bool)

(assert (=> b!5919079 (= e!3623926 tp!1644787)))

(assert (= (and b!5917689 ((_ is ElementMatch!15969) (regOne!32451 (reg!16298 (regTwo!32451 r!7292))))) b!5919077))

(assert (= (and b!5917689 ((_ is Concat!24814) (regOne!32451 (reg!16298 (regTwo!32451 r!7292))))) b!5919078))

(assert (= (and b!5917689 ((_ is Star!15969) (regOne!32451 (reg!16298 (regTwo!32451 r!7292))))) b!5919079))

(assert (= (and b!5917689 ((_ is Union!15969) (regOne!32451 (reg!16298 (regTwo!32451 r!7292))))) b!5919080))

(declare-fun b!5919081 () Bool)

(declare-fun e!3623927 () Bool)

(assert (=> b!5919081 (= e!3623927 tp_is_empty!41191)))

(declare-fun b!5919082 () Bool)

(declare-fun tp!1644793 () Bool)

(declare-fun tp!1644795 () Bool)

(assert (=> b!5919082 (= e!3623927 (and tp!1644793 tp!1644795))))

(declare-fun b!5919084 () Bool)

(declare-fun tp!1644794 () Bool)

(declare-fun tp!1644796 () Bool)

(assert (=> b!5919084 (= e!3623927 (and tp!1644794 tp!1644796))))

(assert (=> b!5917689 (= tp!1644125 e!3623927)))

(declare-fun b!5919083 () Bool)

(declare-fun tp!1644792 () Bool)

(assert (=> b!5919083 (= e!3623927 tp!1644792)))

(assert (= (and b!5917689 ((_ is ElementMatch!15969) (regTwo!32451 (reg!16298 (regTwo!32451 r!7292))))) b!5919081))

(assert (= (and b!5917689 ((_ is Concat!24814) (regTwo!32451 (reg!16298 (regTwo!32451 r!7292))))) b!5919082))

(assert (= (and b!5917689 ((_ is Star!15969) (regTwo!32451 (reg!16298 (regTwo!32451 r!7292))))) b!5919083))

(assert (= (and b!5917689 ((_ is Union!15969) (regTwo!32451 (reg!16298 (regTwo!32451 r!7292))))) b!5919084))

(declare-fun b!5919086 () Bool)

(declare-fun e!3623929 () Bool)

(declare-fun tp!1644797 () Bool)

(assert (=> b!5919086 (= e!3623929 tp!1644797)))

(declare-fun e!3623928 () Bool)

(declare-fun tp!1644798 () Bool)

(declare-fun b!5919085 () Bool)

(assert (=> b!5919085 (= e!3623928 (and (inv!83169 (h!70531 (t!377596 res!2480970))) e!3623929 tp!1644798))))

(assert (=> b!5917207 (= tp!1643987 e!3623928)))

(assert (= b!5919085 b!5919086))

(assert (= (and b!5917207 ((_ is Cons!64083) (t!377596 res!2480970))) b!5919085))

(declare-fun m!6815970 () Bool)

(assert (=> b!5919085 m!6815970))

(declare-fun b!5919087 () Bool)

(declare-fun e!3623930 () Bool)

(assert (=> b!5919087 (= e!3623930 tp_is_empty!41191)))

(declare-fun b!5919088 () Bool)

(declare-fun tp!1644800 () Bool)

(declare-fun tp!1644802 () Bool)

(assert (=> b!5919088 (= e!3623930 (and tp!1644800 tp!1644802))))

(declare-fun b!5919090 () Bool)

(declare-fun tp!1644801 () Bool)

(declare-fun tp!1644803 () Bool)

(assert (=> b!5919090 (= e!3623930 (and tp!1644801 tp!1644803))))

(assert (=> b!5917671 (= tp!1644100 e!3623930)))

(declare-fun b!5919089 () Bool)

(declare-fun tp!1644799 () Bool)

(assert (=> b!5919089 (= e!3623930 tp!1644799)))

(assert (= (and b!5917671 ((_ is ElementMatch!15969) (reg!16298 (regOne!32451 (regOne!32450 r!7292))))) b!5919087))

(assert (= (and b!5917671 ((_ is Concat!24814) (reg!16298 (regOne!32451 (regOne!32450 r!7292))))) b!5919088))

(assert (= (and b!5917671 ((_ is Star!15969) (reg!16298 (regOne!32451 (regOne!32450 r!7292))))) b!5919089))

(assert (= (and b!5917671 ((_ is Union!15969) (reg!16298 (regOne!32451 (regOne!32450 r!7292))))) b!5919090))

(declare-fun b!5919091 () Bool)

(declare-fun e!3623931 () Bool)

(assert (=> b!5919091 (= e!3623931 tp_is_empty!41191)))

(declare-fun b!5919092 () Bool)

(declare-fun tp!1644805 () Bool)

(declare-fun tp!1644807 () Bool)

(assert (=> b!5919092 (= e!3623931 (and tp!1644805 tp!1644807))))

(declare-fun b!5919094 () Bool)

(declare-fun tp!1644806 () Bool)

(declare-fun tp!1644808 () Bool)

(assert (=> b!5919094 (= e!3623931 (and tp!1644806 tp!1644808))))

(assert (=> b!5917643 (= tp!1644065 e!3623931)))

(declare-fun b!5919093 () Bool)

(declare-fun tp!1644804 () Bool)

(assert (=> b!5919093 (= e!3623931 tp!1644804)))

(assert (= (and b!5917643 ((_ is ElementMatch!15969) (reg!16298 (regOne!32450 (regTwo!32450 r!7292))))) b!5919091))

(assert (= (and b!5917643 ((_ is Concat!24814) (reg!16298 (regOne!32450 (regTwo!32450 r!7292))))) b!5919092))

(assert (= (and b!5917643 ((_ is Star!15969) (reg!16298 (regOne!32450 (regTwo!32450 r!7292))))) b!5919093))

(assert (= (and b!5917643 ((_ is Union!15969) (reg!16298 (regOne!32450 (regTwo!32450 r!7292))))) b!5919094))

(declare-fun b!5919095 () Bool)

(declare-fun e!3623932 () Bool)

(assert (=> b!5919095 (= e!3623932 tp_is_empty!41191)))

(declare-fun b!5919096 () Bool)

(declare-fun tp!1644810 () Bool)

(declare-fun tp!1644812 () Bool)

(assert (=> b!5919096 (= e!3623932 (and tp!1644810 tp!1644812))))

(declare-fun b!5919098 () Bool)

(declare-fun tp!1644811 () Bool)

(declare-fun tp!1644813 () Bool)

(assert (=> b!5919098 (= e!3623932 (and tp!1644811 tp!1644813))))

(assert (=> b!5917687 (= tp!1644122 e!3623932)))

(declare-fun b!5919097 () Bool)

(declare-fun tp!1644809 () Bool)

(assert (=> b!5919097 (= e!3623932 tp!1644809)))

(assert (= (and b!5917687 ((_ is ElementMatch!15969) (regOne!32450 (reg!16298 (regTwo!32451 r!7292))))) b!5919095))

(assert (= (and b!5917687 ((_ is Concat!24814) (regOne!32450 (reg!16298 (regTwo!32451 r!7292))))) b!5919096))

(assert (= (and b!5917687 ((_ is Star!15969) (regOne!32450 (reg!16298 (regTwo!32451 r!7292))))) b!5919097))

(assert (= (and b!5917687 ((_ is Union!15969) (regOne!32450 (reg!16298 (regTwo!32451 r!7292))))) b!5919098))

(declare-fun b!5919099 () Bool)

(declare-fun e!3623933 () Bool)

(assert (=> b!5919099 (= e!3623933 tp_is_empty!41191)))

(declare-fun b!5919100 () Bool)

(declare-fun tp!1644815 () Bool)

(declare-fun tp!1644817 () Bool)

(assert (=> b!5919100 (= e!3623933 (and tp!1644815 tp!1644817))))

(declare-fun b!5919102 () Bool)

(declare-fun tp!1644816 () Bool)

(declare-fun tp!1644818 () Bool)

(assert (=> b!5919102 (= e!3623933 (and tp!1644816 tp!1644818))))

(assert (=> b!5917687 (= tp!1644124 e!3623933)))

(declare-fun b!5919101 () Bool)

(declare-fun tp!1644814 () Bool)

(assert (=> b!5919101 (= e!3623933 tp!1644814)))

(assert (= (and b!5917687 ((_ is ElementMatch!15969) (regTwo!32450 (reg!16298 (regTwo!32451 r!7292))))) b!5919099))

(assert (= (and b!5917687 ((_ is Concat!24814) (regTwo!32450 (reg!16298 (regTwo!32451 r!7292))))) b!5919100))

(assert (= (and b!5917687 ((_ is Star!15969) (regTwo!32450 (reg!16298 (regTwo!32451 r!7292))))) b!5919101))

(assert (= (and b!5917687 ((_ is Union!15969) (regTwo!32450 (reg!16298 (regTwo!32451 r!7292))))) b!5919102))

(declare-fun b!5919110 () Bool)

(declare-fun e!3623940 () Bool)

(assert (=> b!5919110 (= e!3623940 tp_is_empty!41191)))

(declare-fun b!5919111 () Bool)

(declare-fun tp!1644820 () Bool)

(declare-fun tp!1644822 () Bool)

(assert (=> b!5919111 (= e!3623940 (and tp!1644820 tp!1644822))))

(declare-fun b!5919113 () Bool)

(declare-fun tp!1644821 () Bool)

(declare-fun tp!1644823 () Bool)

(assert (=> b!5919113 (= e!3623940 (and tp!1644821 tp!1644823))))

(assert (=> b!5917652 (= tp!1644077 e!3623940)))

(declare-fun b!5919112 () Bool)

(declare-fun tp!1644819 () Bool)

(assert (=> b!5919112 (= e!3623940 tp!1644819)))

(assert (= (and b!5917652 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32450 (regOne!32451 r!7292))))) b!5919110))

(assert (= (and b!5917652 ((_ is Concat!24814) (regOne!32451 (regOne!32450 (regOne!32451 r!7292))))) b!5919111))

(assert (= (and b!5917652 ((_ is Star!15969) (regOne!32451 (regOne!32450 (regOne!32451 r!7292))))) b!5919112))

(assert (= (and b!5917652 ((_ is Union!15969) (regOne!32451 (regOne!32450 (regOne!32451 r!7292))))) b!5919113))

(declare-fun b!5919114 () Bool)

(declare-fun e!3623941 () Bool)

(assert (=> b!5919114 (= e!3623941 tp_is_empty!41191)))

(declare-fun b!5919115 () Bool)

(declare-fun tp!1644825 () Bool)

(declare-fun tp!1644827 () Bool)

(assert (=> b!5919115 (= e!3623941 (and tp!1644825 tp!1644827))))

(declare-fun b!5919117 () Bool)

(declare-fun tp!1644826 () Bool)

(declare-fun tp!1644828 () Bool)

(assert (=> b!5919117 (= e!3623941 (and tp!1644826 tp!1644828))))

(assert (=> b!5917652 (= tp!1644079 e!3623941)))

(declare-fun b!5919116 () Bool)

(declare-fun tp!1644824 () Bool)

(assert (=> b!5919116 (= e!3623941 tp!1644824)))

(assert (= (and b!5917652 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32450 (regOne!32451 r!7292))))) b!5919114))

(assert (= (and b!5917652 ((_ is Concat!24814) (regTwo!32451 (regOne!32450 (regOne!32451 r!7292))))) b!5919115))

(assert (= (and b!5917652 ((_ is Star!15969) (regTwo!32451 (regOne!32450 (regOne!32451 r!7292))))) b!5919116))

(assert (= (and b!5917652 ((_ is Union!15969) (regTwo!32451 (regOne!32450 (regOne!32451 r!7292))))) b!5919117))

(declare-fun b!5919118 () Bool)

(declare-fun e!3623942 () Bool)

(assert (=> b!5919118 (= e!3623942 tp_is_empty!41191)))

(declare-fun b!5919119 () Bool)

(declare-fun tp!1644830 () Bool)

(declare-fun tp!1644832 () Bool)

(assert (=> b!5919119 (= e!3623942 (and tp!1644830 tp!1644832))))

(declare-fun b!5919121 () Bool)

(declare-fun tp!1644831 () Bool)

(declare-fun tp!1644833 () Bool)

(assert (=> b!5919121 (= e!3623942 (and tp!1644831 tp!1644833))))

(assert (=> b!5917696 (= tp!1644131 e!3623942)))

(declare-fun b!5919120 () Bool)

(declare-fun tp!1644829 () Bool)

(assert (=> b!5919120 (= e!3623942 tp!1644829)))

(assert (= (and b!5917696 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32450 (regOne!32450 r!7292))))) b!5919118))

(assert (= (and b!5917696 ((_ is Concat!24814) (reg!16298 (regTwo!32450 (regOne!32450 r!7292))))) b!5919119))

(assert (= (and b!5917696 ((_ is Star!15969) (reg!16298 (regTwo!32450 (regOne!32450 r!7292))))) b!5919120))

(assert (= (and b!5917696 ((_ is Union!15969) (reg!16298 (regTwo!32450 (regOne!32450 r!7292))))) b!5919121))

(declare-fun b!5919122 () Bool)

(declare-fun e!3623943 () Bool)

(assert (=> b!5919122 (= e!3623943 tp_is_empty!41191)))

(declare-fun b!5919123 () Bool)

(declare-fun tp!1644835 () Bool)

(declare-fun tp!1644837 () Bool)

(assert (=> b!5919123 (= e!3623943 (and tp!1644835 tp!1644837))))

(declare-fun b!5919125 () Bool)

(declare-fun tp!1644836 () Bool)

(declare-fun tp!1644838 () Bool)

(assert (=> b!5919125 (= e!3623943 (and tp!1644836 tp!1644838))))

(assert (=> b!5917666 (= tp!1644096 e!3623943)))

(declare-fun b!5919124 () Bool)

(declare-fun tp!1644834 () Bool)

(assert (=> b!5919124 (= e!3623943 tp!1644834)))

(assert (= (and b!5917666 ((_ is ElementMatch!15969) (regOne!32450 (reg!16298 (regOne!32450 r!7292))))) b!5919122))

(assert (= (and b!5917666 ((_ is Concat!24814) (regOne!32450 (reg!16298 (regOne!32450 r!7292))))) b!5919123))

(assert (= (and b!5917666 ((_ is Star!15969) (regOne!32450 (reg!16298 (regOne!32450 r!7292))))) b!5919124))

(assert (= (and b!5917666 ((_ is Union!15969) (regOne!32450 (reg!16298 (regOne!32450 r!7292))))) b!5919125))

(declare-fun b!5919126 () Bool)

(declare-fun e!3623944 () Bool)

(assert (=> b!5919126 (= e!3623944 tp_is_empty!41191)))

(declare-fun b!5919127 () Bool)

(declare-fun tp!1644840 () Bool)

(declare-fun tp!1644842 () Bool)

(assert (=> b!5919127 (= e!3623944 (and tp!1644840 tp!1644842))))

(declare-fun b!5919129 () Bool)

(declare-fun tp!1644841 () Bool)

(declare-fun tp!1644843 () Bool)

(assert (=> b!5919129 (= e!3623944 (and tp!1644841 tp!1644843))))

(assert (=> b!5917666 (= tp!1644098 e!3623944)))

(declare-fun b!5919128 () Bool)

(declare-fun tp!1644839 () Bool)

(assert (=> b!5919128 (= e!3623944 tp!1644839)))

(assert (= (and b!5917666 ((_ is ElementMatch!15969) (regTwo!32450 (reg!16298 (regOne!32450 r!7292))))) b!5919126))

(assert (= (and b!5917666 ((_ is Concat!24814) (regTwo!32450 (reg!16298 (regOne!32450 r!7292))))) b!5919127))

(assert (= (and b!5917666 ((_ is Star!15969) (regTwo!32450 (reg!16298 (regOne!32450 r!7292))))) b!5919128))

(assert (= (and b!5917666 ((_ is Union!15969) (regTwo!32450 (reg!16298 (regOne!32450 r!7292))))) b!5919129))

(declare-fun b!5919130 () Bool)

(declare-fun e!3623945 () Bool)

(assert (=> b!5919130 (= e!3623945 tp_is_empty!41191)))

(declare-fun b!5919131 () Bool)

(declare-fun tp!1644845 () Bool)

(declare-fun tp!1644847 () Bool)

(assert (=> b!5919131 (= e!3623945 (and tp!1644845 tp!1644847))))

(declare-fun b!5919133 () Bool)

(declare-fun tp!1644846 () Bool)

(declare-fun tp!1644848 () Bool)

(assert (=> b!5919133 (= e!3623945 (and tp!1644846 tp!1644848))))

(assert (=> b!5917621 (= tp!1644055 e!3623945)))

(declare-fun b!5919132 () Bool)

(declare-fun tp!1644844 () Bool)

(assert (=> b!5919132 (= e!3623945 tp!1644844)))

(assert (= (and b!5917621 ((_ is ElementMatch!15969) (reg!16298 (reg!16298 (regTwo!32450 r!7292))))) b!5919130))

(assert (= (and b!5917621 ((_ is Concat!24814) (reg!16298 (reg!16298 (regTwo!32450 r!7292))))) b!5919131))

(assert (= (and b!5917621 ((_ is Star!15969) (reg!16298 (reg!16298 (regTwo!32450 r!7292))))) b!5919132))

(assert (= (and b!5917621 ((_ is Union!15969) (reg!16298 (reg!16298 (regTwo!32450 r!7292))))) b!5919133))

(declare-fun b!5919134 () Bool)

(declare-fun e!3623946 () Bool)

(assert (=> b!5919134 (= e!3623946 tp_is_empty!41191)))

(declare-fun b!5919135 () Bool)

(declare-fun tp!1644850 () Bool)

(declare-fun tp!1644852 () Bool)

(assert (=> b!5919135 (= e!3623946 (and tp!1644850 tp!1644852))))

(declare-fun b!5919137 () Bool)

(declare-fun tp!1644851 () Bool)

(declare-fun tp!1644853 () Bool)

(assert (=> b!5919137 (= e!3623946 (and tp!1644851 tp!1644853))))

(assert (=> b!5917595 (= tp!1644022 e!3623946)))

(declare-fun b!5919136 () Bool)

(declare-fun tp!1644849 () Bool)

(assert (=> b!5919136 (= e!3623946 tp!1644849)))

(assert (= (and b!5917595 ((_ is ElementMatch!15969) (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343)))))) b!5919134))

(assert (= (and b!5917595 ((_ is Concat!24814) (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343)))))) b!5919135))

(assert (= (and b!5917595 ((_ is Star!15969) (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343)))))) b!5919136))

(assert (= (and b!5917595 ((_ is Union!15969) (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343)))))) b!5919137))

(declare-fun b!5919138 () Bool)

(declare-fun e!3623947 () Bool)

(declare-fun tp!1644854 () Bool)

(declare-fun tp!1644855 () Bool)

(assert (=> b!5919138 (= e!3623947 (and tp!1644854 tp!1644855))))

(assert (=> b!5917595 (= tp!1644023 e!3623947)))

(assert (= (and b!5917595 ((_ is Cons!64082) (t!377595 (exprs!5853 (h!70531 (t!377596 zl!343)))))) b!5919138))

(declare-fun b!5919139 () Bool)

(declare-fun e!3623948 () Bool)

(assert (=> b!5919139 (= e!3623948 tp_is_empty!41191)))

(declare-fun b!5919140 () Bool)

(declare-fun tp!1644857 () Bool)

(declare-fun tp!1644859 () Bool)

(assert (=> b!5919140 (= e!3623948 (and tp!1644857 tp!1644859))))

(declare-fun b!5919142 () Bool)

(declare-fun tp!1644858 () Bool)

(declare-fun tp!1644860 () Bool)

(assert (=> b!5919142 (= e!3623948 (and tp!1644858 tp!1644860))))

(assert (=> b!5917654 (= tp!1644081 e!3623948)))

(declare-fun b!5919141 () Bool)

(declare-fun tp!1644856 () Bool)

(assert (=> b!5919141 (= e!3623948 tp!1644856)))

(assert (= (and b!5917654 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32450 (regOne!32451 r!7292))))) b!5919139))

(assert (= (and b!5917654 ((_ is Concat!24814) (regOne!32450 (regTwo!32450 (regOne!32451 r!7292))))) b!5919140))

(assert (= (and b!5917654 ((_ is Star!15969) (regOne!32450 (regTwo!32450 (regOne!32451 r!7292))))) b!5919141))

(assert (= (and b!5917654 ((_ is Union!15969) (regOne!32450 (regTwo!32450 (regOne!32451 r!7292))))) b!5919142))

(declare-fun b!5919143 () Bool)

(declare-fun e!3623949 () Bool)

(assert (=> b!5919143 (= e!3623949 tp_is_empty!41191)))

(declare-fun b!5919144 () Bool)

(declare-fun tp!1644862 () Bool)

(declare-fun tp!1644864 () Bool)

(assert (=> b!5919144 (= e!3623949 (and tp!1644862 tp!1644864))))

(declare-fun b!5919146 () Bool)

(declare-fun tp!1644863 () Bool)

(declare-fun tp!1644865 () Bool)

(assert (=> b!5919146 (= e!3623949 (and tp!1644863 tp!1644865))))

(assert (=> b!5917654 (= tp!1644083 e!3623949)))

(declare-fun b!5919145 () Bool)

(declare-fun tp!1644861 () Bool)

(assert (=> b!5919145 (= e!3623949 tp!1644861)))

(assert (= (and b!5917654 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32450 (regOne!32451 r!7292))))) b!5919143))

(assert (= (and b!5917654 ((_ is Concat!24814) (regTwo!32450 (regTwo!32450 (regOne!32451 r!7292))))) b!5919144))

(assert (= (and b!5917654 ((_ is Star!15969) (regTwo!32450 (regTwo!32450 (regOne!32451 r!7292))))) b!5919145))

(assert (= (and b!5917654 ((_ is Union!15969) (regTwo!32450 (regTwo!32450 (regOne!32451 r!7292))))) b!5919146))

(declare-fun b!5919147 () Bool)

(declare-fun e!3623950 () Bool)

(assert (=> b!5919147 (= e!3623950 tp_is_empty!41191)))

(declare-fun b!5919148 () Bool)

(declare-fun tp!1644867 () Bool)

(declare-fun tp!1644869 () Bool)

(assert (=> b!5919148 (= e!3623950 (and tp!1644867 tp!1644869))))

(declare-fun b!5919150 () Bool)

(declare-fun tp!1644868 () Bool)

(declare-fun tp!1644870 () Bool)

(assert (=> b!5919150 (= e!3623950 (and tp!1644868 tp!1644870))))

(assert (=> b!5917579 (= tp!1644000 e!3623950)))

(declare-fun b!5919149 () Bool)

(declare-fun tp!1644866 () Bool)

(assert (=> b!5919149 (= e!3623950 tp!1644866)))

(assert (= (and b!5917579 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32451 (regTwo!32450 r!7292))))) b!5919147))

(assert (= (and b!5917579 ((_ is Concat!24814) (reg!16298 (regTwo!32451 (regTwo!32450 r!7292))))) b!5919148))

(assert (= (and b!5917579 ((_ is Star!15969) (reg!16298 (regTwo!32451 (regTwo!32450 r!7292))))) b!5919149))

(assert (= (and b!5917579 ((_ is Union!15969) (reg!16298 (regTwo!32451 (regTwo!32450 r!7292))))) b!5919150))

(declare-fun b!5919151 () Bool)

(declare-fun e!3623951 () Bool)

(assert (=> b!5919151 (= e!3623951 tp_is_empty!41191)))

(declare-fun b!5919152 () Bool)

(declare-fun tp!1644872 () Bool)

(declare-fun tp!1644874 () Bool)

(assert (=> b!5919152 (= e!3623951 (and tp!1644872 tp!1644874))))

(declare-fun b!5919154 () Bool)

(declare-fun tp!1644873 () Bool)

(declare-fun tp!1644875 () Bool)

(assert (=> b!5919154 (= e!3623951 (and tp!1644873 tp!1644875))))

(assert (=> b!5917588 (= tp!1644012 e!3623951)))

(declare-fun b!5919153 () Bool)

(declare-fun tp!1644871 () Bool)

(assert (=> b!5919153 (= e!3623951 tp!1644871)))

(assert (= (and b!5917588 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32451 (regOne!32451 r!7292))))) b!5919151))

(assert (= (and b!5917588 ((_ is Concat!24814) (regOne!32451 (regTwo!32451 (regOne!32451 r!7292))))) b!5919152))

(assert (= (and b!5917588 ((_ is Star!15969) (regOne!32451 (regTwo!32451 (regOne!32451 r!7292))))) b!5919153))

(assert (= (and b!5917588 ((_ is Union!15969) (regOne!32451 (regTwo!32451 (regOne!32451 r!7292))))) b!5919154))

(declare-fun b!5919155 () Bool)

(declare-fun e!3623952 () Bool)

(assert (=> b!5919155 (= e!3623952 tp_is_empty!41191)))

(declare-fun b!5919156 () Bool)

(declare-fun tp!1644877 () Bool)

(declare-fun tp!1644879 () Bool)

(assert (=> b!5919156 (= e!3623952 (and tp!1644877 tp!1644879))))

(declare-fun b!5919158 () Bool)

(declare-fun tp!1644878 () Bool)

(declare-fun tp!1644880 () Bool)

(assert (=> b!5919158 (= e!3623952 (and tp!1644878 tp!1644880))))

(assert (=> b!5917588 (= tp!1644014 e!3623952)))

(declare-fun b!5919157 () Bool)

(declare-fun tp!1644876 () Bool)

(assert (=> b!5919157 (= e!3623952 tp!1644876)))

(assert (= (and b!5917588 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32451 (regOne!32451 r!7292))))) b!5919155))

(assert (= (and b!5917588 ((_ is Concat!24814) (regTwo!32451 (regTwo!32451 (regOne!32451 r!7292))))) b!5919156))

(assert (= (and b!5917588 ((_ is Star!15969) (regTwo!32451 (regTwo!32451 (regOne!32451 r!7292))))) b!5919157))

(assert (= (and b!5917588 ((_ is Union!15969) (regTwo!32451 (regTwo!32451 (regOne!32451 r!7292))))) b!5919158))

(declare-fun b!5919159 () Bool)

(declare-fun e!3623953 () Bool)

(assert (=> b!5919159 (= e!3623953 tp_is_empty!41191)))

(declare-fun b!5919160 () Bool)

(declare-fun tp!1644882 () Bool)

(declare-fun tp!1644884 () Bool)

(assert (=> b!5919160 (= e!3623953 (and tp!1644882 tp!1644884))))

(declare-fun b!5919162 () Bool)

(declare-fun tp!1644883 () Bool)

(declare-fun tp!1644885 () Bool)

(assert (=> b!5919162 (= e!3623953 (and tp!1644883 tp!1644885))))

(assert (=> b!5917605 (= tp!1644035 e!3623953)))

(declare-fun b!5919161 () Bool)

(declare-fun tp!1644881 () Bool)

(assert (=> b!5919161 (= e!3623953 tp!1644881)))

(assert (= (and b!5917605 ((_ is ElementMatch!15969) (reg!16298 (regOne!32450 (reg!16298 r!7292))))) b!5919159))

(assert (= (and b!5917605 ((_ is Concat!24814) (reg!16298 (regOne!32450 (reg!16298 r!7292))))) b!5919160))

(assert (= (and b!5917605 ((_ is Star!15969) (reg!16298 (regOne!32450 (reg!16298 r!7292))))) b!5919161))

(assert (= (and b!5917605 ((_ is Union!15969) (reg!16298 (regOne!32450 (reg!16298 r!7292))))) b!5919162))

(declare-fun b!5919163 () Bool)

(declare-fun e!3623954 () Bool)

(assert (=> b!5919163 (= e!3623954 tp_is_empty!41191)))

(declare-fun b!5919164 () Bool)

(declare-fun tp!1644887 () Bool)

(declare-fun tp!1644889 () Bool)

(assert (=> b!5919164 (= e!3623954 (and tp!1644887 tp!1644889))))

(declare-fun b!5919166 () Bool)

(declare-fun tp!1644888 () Bool)

(declare-fun tp!1644890 () Bool)

(assert (=> b!5919166 (= e!3623954 (and tp!1644888 tp!1644890))))

(assert (=> b!5917614 (= tp!1644047 e!3623954)))

(declare-fun b!5919165 () Bool)

(declare-fun tp!1644886 () Bool)

(assert (=> b!5919165 (= e!3623954 tp!1644886)))

(assert (= (and b!5917614 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32451 (reg!16298 r!7292))))) b!5919163))

(assert (= (and b!5917614 ((_ is Concat!24814) (regOne!32451 (regOne!32451 (reg!16298 r!7292))))) b!5919164))

(assert (= (and b!5917614 ((_ is Star!15969) (regOne!32451 (regOne!32451 (reg!16298 r!7292))))) b!5919165))

(assert (= (and b!5917614 ((_ is Union!15969) (regOne!32451 (regOne!32451 (reg!16298 r!7292))))) b!5919166))

(declare-fun b!5919167 () Bool)

(declare-fun e!3623955 () Bool)

(assert (=> b!5919167 (= e!3623955 tp_is_empty!41191)))

(declare-fun b!5919168 () Bool)

(declare-fun tp!1644892 () Bool)

(declare-fun tp!1644894 () Bool)

(assert (=> b!5919168 (= e!3623955 (and tp!1644892 tp!1644894))))

(declare-fun b!5919170 () Bool)

(declare-fun tp!1644893 () Bool)

(declare-fun tp!1644895 () Bool)

(assert (=> b!5919170 (= e!3623955 (and tp!1644893 tp!1644895))))

(assert (=> b!5917614 (= tp!1644049 e!3623955)))

(declare-fun b!5919169 () Bool)

(declare-fun tp!1644891 () Bool)

(assert (=> b!5919169 (= e!3623955 tp!1644891)))

(assert (= (and b!5917614 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32451 (reg!16298 r!7292))))) b!5919167))

(assert (= (and b!5917614 ((_ is Concat!24814) (regTwo!32451 (regOne!32451 (reg!16298 r!7292))))) b!5919168))

(assert (= (and b!5917614 ((_ is Star!15969) (regTwo!32451 (regOne!32451 (reg!16298 r!7292))))) b!5919169))

(assert (= (and b!5917614 ((_ is Union!15969) (regTwo!32451 (regOne!32451 (reg!16298 r!7292))))) b!5919170))

(declare-fun b!5919171 () Bool)

(declare-fun e!3623956 () Bool)

(assert (=> b!5919171 (= e!3623956 tp_is_empty!41191)))

(declare-fun b!5919172 () Bool)

(declare-fun tp!1644897 () Bool)

(declare-fun tp!1644899 () Bool)

(assert (=> b!5919172 (= e!3623956 (and tp!1644897 tp!1644899))))

(declare-fun b!5919174 () Bool)

(declare-fun tp!1644898 () Bool)

(declare-fun tp!1644900 () Bool)

(assert (=> b!5919174 (= e!3623956 (and tp!1644898 tp!1644900))))

(assert (=> b!5917586 (= tp!1644011 e!3623956)))

(declare-fun b!5919173 () Bool)

(declare-fun tp!1644896 () Bool)

(assert (=> b!5919173 (= e!3623956 tp!1644896)))

(assert (= (and b!5917586 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))))) b!5919171))

(assert (= (and b!5917586 ((_ is Concat!24814) (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))))) b!5919172))

(assert (= (and b!5917586 ((_ is Star!15969) (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))))) b!5919173))

(assert (= (and b!5917586 ((_ is Union!15969) (regOne!32450 (regTwo!32451 (regOne!32451 r!7292))))) b!5919174))

(declare-fun b!5919175 () Bool)

(declare-fun e!3623957 () Bool)

(assert (=> b!5919175 (= e!3623957 tp_is_empty!41191)))

(declare-fun b!5919176 () Bool)

(declare-fun tp!1644902 () Bool)

(declare-fun tp!1644904 () Bool)

(assert (=> b!5919176 (= e!3623957 (and tp!1644902 tp!1644904))))

(declare-fun b!5919178 () Bool)

(declare-fun tp!1644903 () Bool)

(declare-fun tp!1644905 () Bool)

(assert (=> b!5919178 (= e!3623957 (and tp!1644903 tp!1644905))))

(assert (=> b!5917586 (= tp!1644013 e!3623957)))

(declare-fun b!5919177 () Bool)

(declare-fun tp!1644901 () Bool)

(assert (=> b!5919177 (= e!3623957 tp!1644901)))

(assert (= (and b!5917586 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))))) b!5919175))

(assert (= (and b!5917586 ((_ is Concat!24814) (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))))) b!5919176))

(assert (= (and b!5917586 ((_ is Star!15969) (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))))) b!5919177))

(assert (= (and b!5917586 ((_ is Union!15969) (regTwo!32450 (regTwo!32451 (regOne!32451 r!7292))))) b!5919178))

(declare-fun b!5919183 () Bool)

(declare-fun e!3623960 () Bool)

(declare-fun tp!1644906 () Bool)

(assert (=> b!5919183 (= e!3623960 (and tp_is_empty!41191 tp!1644906))))

(assert (=> b!5917677 (= tp!1644110 e!3623960)))

(assert (= (and b!5917677 ((_ is Cons!64084) (t!377597 (t!377597 (t!377597 s!2326))))) b!5919183))

(declare-fun b!5919184 () Bool)

(declare-fun e!3623961 () Bool)

(assert (=> b!5919184 (= e!3623961 tp_is_empty!41191)))

(declare-fun b!5919185 () Bool)

(declare-fun tp!1644908 () Bool)

(declare-fun tp!1644910 () Bool)

(assert (=> b!5919185 (= e!3623961 (and tp!1644908 tp!1644910))))

(declare-fun b!5919187 () Bool)

(declare-fun tp!1644909 () Bool)

(declare-fun tp!1644911 () Bool)

(assert (=> b!5919187 (= e!3623961 (and tp!1644909 tp!1644911))))

(assert (=> b!5917601 (= tp!1644030 e!3623961)))

(declare-fun b!5919186 () Bool)

(declare-fun tp!1644907 () Bool)

(assert (=> b!5919186 (= e!3623961 tp!1644907)))

(assert (= (and b!5917601 ((_ is ElementMatch!15969) (regOne!32451 (h!70530 (exprs!5853 setElem!40160))))) b!5919184))

(assert (= (and b!5917601 ((_ is Concat!24814) (regOne!32451 (h!70530 (exprs!5853 setElem!40160))))) b!5919185))

(assert (= (and b!5917601 ((_ is Star!15969) (regOne!32451 (h!70530 (exprs!5853 setElem!40160))))) b!5919186))

(assert (= (and b!5917601 ((_ is Union!15969) (regOne!32451 (h!70530 (exprs!5853 setElem!40160))))) b!5919187))

(declare-fun b!5919188 () Bool)

(declare-fun e!3623962 () Bool)

(assert (=> b!5919188 (= e!3623962 tp_is_empty!41191)))

(declare-fun b!5919189 () Bool)

(declare-fun tp!1644913 () Bool)

(declare-fun tp!1644915 () Bool)

(assert (=> b!5919189 (= e!3623962 (and tp!1644913 tp!1644915))))

(declare-fun b!5919191 () Bool)

(declare-fun tp!1644914 () Bool)

(declare-fun tp!1644916 () Bool)

(assert (=> b!5919191 (= e!3623962 (and tp!1644914 tp!1644916))))

(assert (=> b!5917601 (= tp!1644032 e!3623962)))

(declare-fun b!5919190 () Bool)

(declare-fun tp!1644912 () Bool)

(assert (=> b!5919190 (= e!3623962 tp!1644912)))

(assert (= (and b!5917601 ((_ is ElementMatch!15969) (regTwo!32451 (h!70530 (exprs!5853 setElem!40160))))) b!5919188))

(assert (= (and b!5917601 ((_ is Concat!24814) (regTwo!32451 (h!70530 (exprs!5853 setElem!40160))))) b!5919189))

(assert (= (and b!5917601 ((_ is Star!15969) (regTwo!32451 (h!70530 (exprs!5853 setElem!40160))))) b!5919190))

(assert (= (and b!5917601 ((_ is Union!15969) (regTwo!32451 (h!70530 (exprs!5853 setElem!40160))))) b!5919191))

(declare-fun b!5919192 () Bool)

(declare-fun e!3623963 () Bool)

(assert (=> b!5919192 (= e!3623963 tp_is_empty!41191)))

(declare-fun b!5919193 () Bool)

(declare-fun tp!1644918 () Bool)

(declare-fun tp!1644920 () Bool)

(assert (=> b!5919193 (= e!3623963 (and tp!1644918 tp!1644920))))

(declare-fun b!5919195 () Bool)

(declare-fun tp!1644919 () Bool)

(declare-fun tp!1644921 () Bool)

(assert (=> b!5919195 (= e!3623963 (and tp!1644919 tp!1644921))))

(assert (=> b!5917616 (= tp!1644051 e!3623963)))

(declare-fun b!5919194 () Bool)

(declare-fun tp!1644917 () Bool)

(assert (=> b!5919194 (= e!3623963 tp!1644917)))

(assert (= (and b!5917616 ((_ is ElementMatch!15969) (regOne!32450 (regTwo!32451 (reg!16298 r!7292))))) b!5919192))

(assert (= (and b!5917616 ((_ is Concat!24814) (regOne!32450 (regTwo!32451 (reg!16298 r!7292))))) b!5919193))

(assert (= (and b!5917616 ((_ is Star!15969) (regOne!32450 (regTwo!32451 (reg!16298 r!7292))))) b!5919194))

(assert (= (and b!5917616 ((_ is Union!15969) (regOne!32450 (regTwo!32451 (reg!16298 r!7292))))) b!5919195))

(declare-fun b!5919196 () Bool)

(declare-fun e!3623964 () Bool)

(assert (=> b!5919196 (= e!3623964 tp_is_empty!41191)))

(declare-fun b!5919197 () Bool)

(declare-fun tp!1644923 () Bool)

(declare-fun tp!1644925 () Bool)

(assert (=> b!5919197 (= e!3623964 (and tp!1644923 tp!1644925))))

(declare-fun b!5919199 () Bool)

(declare-fun tp!1644924 () Bool)

(declare-fun tp!1644926 () Bool)

(assert (=> b!5919199 (= e!3623964 (and tp!1644924 tp!1644926))))

(assert (=> b!5917616 (= tp!1644053 e!3623964)))

(declare-fun b!5919198 () Bool)

(declare-fun tp!1644922 () Bool)

(assert (=> b!5919198 (= e!3623964 tp!1644922)))

(assert (= (and b!5917616 ((_ is ElementMatch!15969) (regTwo!32450 (regTwo!32451 (reg!16298 r!7292))))) b!5919196))

(assert (= (and b!5917616 ((_ is Concat!24814) (regTwo!32450 (regTwo!32451 (reg!16298 r!7292))))) b!5919197))

(assert (= (and b!5917616 ((_ is Star!15969) (regTwo!32450 (regTwo!32451 (reg!16298 r!7292))))) b!5919198))

(assert (= (and b!5917616 ((_ is Union!15969) (regTwo!32450 (regTwo!32451 (reg!16298 r!7292))))) b!5919199))

(declare-fun b!5919200 () Bool)

(declare-fun e!3623965 () Bool)

(assert (=> b!5919200 (= e!3623965 tp_is_empty!41191)))

(declare-fun b!5919201 () Bool)

(declare-fun tp!1644928 () Bool)

(declare-fun tp!1644930 () Bool)

(assert (=> b!5919201 (= e!3623965 (and tp!1644928 tp!1644930))))

(declare-fun b!5919203 () Bool)

(declare-fun tp!1644929 () Bool)

(declare-fun tp!1644931 () Bool)

(assert (=> b!5919203 (= e!3623965 (and tp!1644929 tp!1644931))))

(assert (=> b!5917640 (= tp!1644062 e!3623965)))

(declare-fun b!5919202 () Bool)

(declare-fun tp!1644927 () Bool)

(assert (=> b!5919202 (= e!3623965 tp!1644927)))

(assert (= (and b!5917640 ((_ is ElementMatch!15969) (regOne!32451 (reg!16298 (reg!16298 r!7292))))) b!5919200))

(assert (= (and b!5917640 ((_ is Concat!24814) (regOne!32451 (reg!16298 (reg!16298 r!7292))))) b!5919201))

(assert (= (and b!5917640 ((_ is Star!15969) (regOne!32451 (reg!16298 (reg!16298 r!7292))))) b!5919202))

(assert (= (and b!5917640 ((_ is Union!15969) (regOne!32451 (reg!16298 (reg!16298 r!7292))))) b!5919203))

(declare-fun b!5919204 () Bool)

(declare-fun e!3623966 () Bool)

(assert (=> b!5919204 (= e!3623966 tp_is_empty!41191)))

(declare-fun b!5919205 () Bool)

(declare-fun tp!1644933 () Bool)

(declare-fun tp!1644935 () Bool)

(assert (=> b!5919205 (= e!3623966 (and tp!1644933 tp!1644935))))

(declare-fun b!5919207 () Bool)

(declare-fun tp!1644934 () Bool)

(declare-fun tp!1644936 () Bool)

(assert (=> b!5919207 (= e!3623966 (and tp!1644934 tp!1644936))))

(assert (=> b!5917640 (= tp!1644064 e!3623966)))

(declare-fun b!5919206 () Bool)

(declare-fun tp!1644932 () Bool)

(assert (=> b!5919206 (= e!3623966 tp!1644932)))

(assert (= (and b!5917640 ((_ is ElementMatch!15969) (regTwo!32451 (reg!16298 (reg!16298 r!7292))))) b!5919204))

(assert (= (and b!5917640 ((_ is Concat!24814) (regTwo!32451 (reg!16298 (reg!16298 r!7292))))) b!5919205))

(assert (= (and b!5917640 ((_ is Star!15969) (regTwo!32451 (reg!16298 (reg!16298 r!7292))))) b!5919206))

(assert (= (and b!5917640 ((_ is Union!15969) (regTwo!32451 (reg!16298 (reg!16298 r!7292))))) b!5919207))

(declare-fun b!5919208 () Bool)

(declare-fun e!3623967 () Bool)

(assert (=> b!5919208 (= e!3623967 tp_is_empty!41191)))

(declare-fun b!5919209 () Bool)

(declare-fun tp!1644938 () Bool)

(declare-fun tp!1644940 () Bool)

(assert (=> b!5919209 (= e!3623967 (and tp!1644938 tp!1644940))))

(declare-fun b!5919211 () Bool)

(declare-fun tp!1644939 () Bool)

(declare-fun tp!1644941 () Bool)

(assert (=> b!5919211 (= e!3623967 (and tp!1644939 tp!1644941))))

(assert (=> b!5917684 (= tp!1644116 e!3623967)))

(declare-fun b!5919210 () Bool)

(declare-fun tp!1644937 () Bool)

(assert (=> b!5919210 (= e!3623967 tp!1644937)))

(assert (= (and b!5917684 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32450 (regTwo!32451 r!7292))))) b!5919208))

(assert (= (and b!5917684 ((_ is Concat!24814) (reg!16298 (regTwo!32450 (regTwo!32451 r!7292))))) b!5919209))

(assert (= (and b!5917684 ((_ is Star!15969) (reg!16298 (regTwo!32450 (regTwo!32451 r!7292))))) b!5919210))

(assert (= (and b!5917684 ((_ is Union!15969) (reg!16298 (regTwo!32450 (regTwo!32451 r!7292))))) b!5919211))

(declare-fun b!5919212 () Bool)

(declare-fun e!3623968 () Bool)

(assert (=> b!5919212 (= e!3623968 tp_is_empty!41191)))

(declare-fun b!5919213 () Bool)

(declare-fun tp!1644943 () Bool)

(declare-fun tp!1644945 () Bool)

(assert (=> b!5919213 (= e!3623968 (and tp!1644943 tp!1644945))))

(declare-fun b!5919215 () Bool)

(declare-fun tp!1644944 () Bool)

(declare-fun tp!1644946 () Bool)

(assert (=> b!5919215 (= e!3623968 (and tp!1644944 tp!1644946))))

(assert (=> b!5917599 (= tp!1644029 e!3623968)))

(declare-fun b!5919214 () Bool)

(declare-fun tp!1644942 () Bool)

(assert (=> b!5919214 (= e!3623968 tp!1644942)))

(assert (= (and b!5917599 ((_ is ElementMatch!15969) (regOne!32450 (h!70530 (exprs!5853 setElem!40160))))) b!5919212))

(assert (= (and b!5917599 ((_ is Concat!24814) (regOne!32450 (h!70530 (exprs!5853 setElem!40160))))) b!5919213))

(assert (= (and b!5917599 ((_ is Star!15969) (regOne!32450 (h!70530 (exprs!5853 setElem!40160))))) b!5919214))

(assert (= (and b!5917599 ((_ is Union!15969) (regOne!32450 (h!70530 (exprs!5853 setElem!40160))))) b!5919215))

(declare-fun b!5919218 () Bool)

(declare-fun e!3623970 () Bool)

(assert (=> b!5919218 (= e!3623970 tp_is_empty!41191)))

(declare-fun b!5919219 () Bool)

(declare-fun tp!1644948 () Bool)

(declare-fun tp!1644950 () Bool)

(assert (=> b!5919219 (= e!3623970 (and tp!1644948 tp!1644950))))

(declare-fun b!5919221 () Bool)

(declare-fun tp!1644949 () Bool)

(declare-fun tp!1644951 () Bool)

(assert (=> b!5919221 (= e!3623970 (and tp!1644949 tp!1644951))))

(assert (=> b!5917599 (= tp!1644031 e!3623970)))

(declare-fun b!5919220 () Bool)

(declare-fun tp!1644947 () Bool)

(assert (=> b!5919220 (= e!3623970 tp!1644947)))

(assert (= (and b!5917599 ((_ is ElementMatch!15969) (regTwo!32450 (h!70530 (exprs!5853 setElem!40160))))) b!5919218))

(assert (= (and b!5917599 ((_ is Concat!24814) (regTwo!32450 (h!70530 (exprs!5853 setElem!40160))))) b!5919219))

(assert (= (and b!5917599 ((_ is Star!15969) (regTwo!32450 (h!70530 (exprs!5853 setElem!40160))))) b!5919220))

(assert (= (and b!5917599 ((_ is Union!15969) (regTwo!32450 (h!70530 (exprs!5853 setElem!40160))))) b!5919221))

(declare-fun b!5919222 () Bool)

(declare-fun e!3623971 () Bool)

(assert (=> b!5919222 (= e!3623971 tp_is_empty!41191)))

(declare-fun b!5919223 () Bool)

(declare-fun tp!1644953 () Bool)

(declare-fun tp!1644955 () Bool)

(assert (=> b!5919223 (= e!3623971 (and tp!1644953 tp!1644955))))

(declare-fun b!5919225 () Bool)

(declare-fun tp!1644954 () Bool)

(declare-fun tp!1644956 () Bool)

(assert (=> b!5919225 (= e!3623971 (and tp!1644954 tp!1644956))))

(assert (=> b!5917693 (= tp!1644128 e!3623971)))

(declare-fun b!5919224 () Bool)

(declare-fun tp!1644952 () Bool)

(assert (=> b!5919224 (= e!3623971 tp!1644952)))

(assert (= (and b!5917693 ((_ is ElementMatch!15969) (regOne!32451 (regOne!32450 (regOne!32450 r!7292))))) b!5919222))

(assert (= (and b!5917693 ((_ is Concat!24814) (regOne!32451 (regOne!32450 (regOne!32450 r!7292))))) b!5919223))

(assert (= (and b!5917693 ((_ is Star!15969) (regOne!32451 (regOne!32450 (regOne!32450 r!7292))))) b!5919224))

(assert (= (and b!5917693 ((_ is Union!15969) (regOne!32451 (regOne!32450 (regOne!32450 r!7292))))) b!5919225))

(declare-fun b!5919226 () Bool)

(declare-fun e!3623972 () Bool)

(assert (=> b!5919226 (= e!3623972 tp_is_empty!41191)))

(declare-fun b!5919227 () Bool)

(declare-fun tp!1644958 () Bool)

(declare-fun tp!1644960 () Bool)

(assert (=> b!5919227 (= e!3623972 (and tp!1644958 tp!1644960))))

(declare-fun b!5919229 () Bool)

(declare-fun tp!1644959 () Bool)

(declare-fun tp!1644961 () Bool)

(assert (=> b!5919229 (= e!3623972 (and tp!1644959 tp!1644961))))

(assert (=> b!5917693 (= tp!1644130 e!3623972)))

(declare-fun b!5919228 () Bool)

(declare-fun tp!1644957 () Bool)

(assert (=> b!5919228 (= e!3623972 tp!1644957)))

(assert (= (and b!5917693 ((_ is ElementMatch!15969) (regTwo!32451 (regOne!32450 (regOne!32450 r!7292))))) b!5919226))

(assert (= (and b!5917693 ((_ is Concat!24814) (regTwo!32451 (regOne!32450 (regOne!32450 r!7292))))) b!5919227))

(assert (= (and b!5917693 ((_ is Star!15969) (regTwo!32451 (regOne!32450 (regOne!32450 r!7292))))) b!5919228))

(assert (= (and b!5917693 ((_ is Union!15969) (regTwo!32451 (regOne!32450 (regOne!32450 r!7292))))) b!5919229))

(declare-fun b!5919230 () Bool)

(declare-fun e!3623973 () Bool)

(assert (=> b!5919230 (= e!3623973 tp_is_empty!41191)))

(declare-fun b!5919231 () Bool)

(declare-fun tp!1644963 () Bool)

(declare-fun tp!1644965 () Bool)

(assert (=> b!5919231 (= e!3623973 (and tp!1644963 tp!1644965))))

(declare-fun b!5919233 () Bool)

(declare-fun tp!1644964 () Bool)

(declare-fun tp!1644966 () Bool)

(assert (=> b!5919233 (= e!3623973 (and tp!1644964 tp!1644966))))

(assert (=> b!5917668 (= tp!1644097 e!3623973)))

(declare-fun b!5919232 () Bool)

(declare-fun tp!1644962 () Bool)

(assert (=> b!5919232 (= e!3623973 tp!1644962)))

(assert (= (and b!5917668 ((_ is ElementMatch!15969) (regOne!32451 (reg!16298 (regOne!32450 r!7292))))) b!5919230))

(assert (= (and b!5917668 ((_ is Concat!24814) (regOne!32451 (reg!16298 (regOne!32450 r!7292))))) b!5919231))

(assert (= (and b!5917668 ((_ is Star!15969) (regOne!32451 (reg!16298 (regOne!32450 r!7292))))) b!5919232))

(assert (= (and b!5917668 ((_ is Union!15969) (regOne!32451 (reg!16298 (regOne!32450 r!7292))))) b!5919233))

(declare-fun b!5919236 () Bool)

(declare-fun e!3623975 () Bool)

(assert (=> b!5919236 (= e!3623975 tp_is_empty!41191)))

(declare-fun b!5919237 () Bool)

(declare-fun tp!1644968 () Bool)

(declare-fun tp!1644970 () Bool)

(assert (=> b!5919237 (= e!3623975 (and tp!1644968 tp!1644970))))

(declare-fun b!5919239 () Bool)

(declare-fun tp!1644969 () Bool)

(declare-fun tp!1644971 () Bool)

(assert (=> b!5919239 (= e!3623975 (and tp!1644969 tp!1644971))))

(assert (=> b!5917668 (= tp!1644099 e!3623975)))

(declare-fun b!5919238 () Bool)

(declare-fun tp!1644967 () Bool)

(assert (=> b!5919238 (= e!3623975 tp!1644967)))

(assert (= (and b!5917668 ((_ is ElementMatch!15969) (regTwo!32451 (reg!16298 (regOne!32450 r!7292))))) b!5919236))

(assert (= (and b!5917668 ((_ is Concat!24814) (regTwo!32451 (reg!16298 (regOne!32450 r!7292))))) b!5919237))

(assert (= (and b!5917668 ((_ is Star!15969) (regTwo!32451 (reg!16298 (regOne!32450 r!7292))))) b!5919238))

(assert (= (and b!5917668 ((_ is Union!15969) (regTwo!32451 (reg!16298 (regOne!32450 r!7292))))) b!5919239))

(declare-fun b!5919240 () Bool)

(declare-fun e!3623976 () Bool)

(assert (=> b!5919240 (= e!3623976 tp_is_empty!41191)))

(declare-fun b!5919241 () Bool)

(declare-fun tp!1644973 () Bool)

(declare-fun tp!1644975 () Bool)

(assert (=> b!5919241 (= e!3623976 (and tp!1644973 tp!1644975))))

(declare-fun b!5919243 () Bool)

(declare-fun tp!1644974 () Bool)

(declare-fun tp!1644976 () Bool)

(assert (=> b!5919243 (= e!3623976 (and tp!1644974 tp!1644976))))

(assert (=> b!5917675 (= tp!1644105 e!3623976)))

(declare-fun b!5919242 () Bool)

(declare-fun tp!1644972 () Bool)

(assert (=> b!5919242 (= e!3623976 tp!1644972)))

(assert (= (and b!5917675 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32451 (regOne!32450 r!7292))))) b!5919240))

(assert (= (and b!5917675 ((_ is Concat!24814) (reg!16298 (regTwo!32451 (regOne!32450 r!7292))))) b!5919241))

(assert (= (and b!5917675 ((_ is Star!15969) (reg!16298 (regTwo!32451 (regOne!32450 r!7292))))) b!5919242))

(assert (= (and b!5917675 ((_ is Union!15969) (reg!16298 (regTwo!32451 (regOne!32450 r!7292))))) b!5919243))

(declare-fun b!5919246 () Bool)

(declare-fun e!3623978 () Bool)

(assert (=> b!5919246 (= e!3623978 tp_is_empty!41191)))

(declare-fun b!5919247 () Bool)

(declare-fun tp!1644978 () Bool)

(declare-fun tp!1644980 () Bool)

(assert (=> b!5919247 (= e!3623978 (and tp!1644978 tp!1644980))))

(declare-fun b!5919249 () Bool)

(declare-fun tp!1644979 () Bool)

(declare-fun tp!1644981 () Bool)

(assert (=> b!5919249 (= e!3623978 (and tp!1644979 tp!1644981))))

(assert (=> b!5917647 (= tp!1644070 e!3623978)))

(declare-fun b!5919248 () Bool)

(declare-fun tp!1644977 () Bool)

(assert (=> b!5919248 (= e!3623978 tp!1644977)))

(assert (= (and b!5917647 ((_ is ElementMatch!15969) (reg!16298 (regTwo!32450 (regTwo!32450 r!7292))))) b!5919246))

(assert (= (and b!5917647 ((_ is Concat!24814) (reg!16298 (regTwo!32450 (regTwo!32450 r!7292))))) b!5919247))

(assert (= (and b!5917647 ((_ is Star!15969) (reg!16298 (regTwo!32450 (regTwo!32450 r!7292))))) b!5919248))

(assert (= (and b!5917647 ((_ is Union!15969) (reg!16298 (regTwo!32450 (regTwo!32450 r!7292))))) b!5919249))

(declare-fun b!5919250 () Bool)

(declare-fun e!3623979 () Bool)

(assert (=> b!5919250 (= e!3623979 tp_is_empty!41191)))

(declare-fun b!5919251 () Bool)

(declare-fun tp!1644983 () Bool)

(declare-fun tp!1644985 () Bool)

(assert (=> b!5919251 (= e!3623979 (and tp!1644983 tp!1644985))))

(declare-fun b!5919253 () Bool)

(declare-fun tp!1644984 () Bool)

(declare-fun tp!1644986 () Bool)

(assert (=> b!5919253 (= e!3623979 (and tp!1644984 tp!1644986))))

(assert (=> b!5917691 (= tp!1644127 e!3623979)))

(declare-fun b!5919252 () Bool)

(declare-fun tp!1644982 () Bool)

(assert (=> b!5919252 (= e!3623979 tp!1644982)))

(assert (= (and b!5917691 ((_ is ElementMatch!15969) (regOne!32450 (regOne!32450 (regOne!32450 r!7292))))) b!5919250))

(assert (= (and b!5917691 ((_ is Concat!24814) (regOne!32450 (regOne!32450 (regOne!32450 r!7292))))) b!5919251))

(assert (= (and b!5917691 ((_ is Star!15969) (regOne!32450 (regOne!32450 (regOne!32450 r!7292))))) b!5919252))

(assert (= (and b!5917691 ((_ is Union!15969) (regOne!32450 (regOne!32450 (regOne!32450 r!7292))))) b!5919253))

(declare-fun b!5919254 () Bool)

(declare-fun e!3623980 () Bool)

(assert (=> b!5919254 (= e!3623980 tp_is_empty!41191)))

(declare-fun b!5919255 () Bool)

(declare-fun tp!1644988 () Bool)

(declare-fun tp!1644990 () Bool)

(assert (=> b!5919255 (= e!3623980 (and tp!1644988 tp!1644990))))

(declare-fun b!5919257 () Bool)

(declare-fun tp!1644989 () Bool)

(declare-fun tp!1644991 () Bool)

(assert (=> b!5919257 (= e!3623980 (and tp!1644989 tp!1644991))))

(assert (=> b!5917691 (= tp!1644129 e!3623980)))

(declare-fun b!5919256 () Bool)

(declare-fun tp!1644987 () Bool)

(assert (=> b!5919256 (= e!3623980 tp!1644987)))

(assert (= (and b!5917691 ((_ is ElementMatch!15969) (regTwo!32450 (regOne!32450 (regOne!32450 r!7292))))) b!5919254))

(assert (= (and b!5917691 ((_ is Concat!24814) (regTwo!32450 (regOne!32450 (regOne!32450 r!7292))))) b!5919255))

(assert (= (and b!5917691 ((_ is Star!15969) (regTwo!32450 (regOne!32450 (regOne!32450 r!7292))))) b!5919256))

(assert (= (and b!5917691 ((_ is Union!15969) (regTwo!32450 (regOne!32450 (regOne!32450 r!7292))))) b!5919257))

(declare-fun b!5919258 () Bool)

(declare-fun e!3623981 () Bool)

(assert (=> b!5919258 (= e!3623981 tp_is_empty!41191)))

(declare-fun b!5919259 () Bool)

(declare-fun tp!1644993 () Bool)

(declare-fun tp!1644995 () Bool)

(assert (=> b!5919259 (= e!3623981 (and tp!1644993 tp!1644995))))

(declare-fun b!5919261 () Bool)

(declare-fun tp!1644994 () Bool)

(declare-fun tp!1644996 () Bool)

(assert (=> b!5919261 (= e!3623981 (and tp!1644994 tp!1644996))))

(assert (=> b!5917656 (= tp!1644082 e!3623981)))

(declare-fun b!5919260 () Bool)

(declare-fun tp!1644992 () Bool)

(assert (=> b!5919260 (= e!3623981 tp!1644992)))

(assert (= (and b!5917656 ((_ is ElementMatch!15969) (regOne!32451 (regTwo!32450 (regOne!32451 r!7292))))) b!5919258))

(assert (= (and b!5917656 ((_ is Concat!24814) (regOne!32451 (regTwo!32450 (regOne!32451 r!7292))))) b!5919259))

(assert (= (and b!5917656 ((_ is Star!15969) (regOne!32451 (regTwo!32450 (regOne!32451 r!7292))))) b!5919260))

(assert (= (and b!5917656 ((_ is Union!15969) (regOne!32451 (regTwo!32450 (regOne!32451 r!7292))))) b!5919261))

(declare-fun b!5919262 () Bool)

(declare-fun e!3623982 () Bool)

(assert (=> b!5919262 (= e!3623982 tp_is_empty!41191)))

(declare-fun b!5919263 () Bool)

(declare-fun tp!1644998 () Bool)

(declare-fun tp!1645000 () Bool)

(assert (=> b!5919263 (= e!3623982 (and tp!1644998 tp!1645000))))

(declare-fun b!5919265 () Bool)

(declare-fun tp!1644999 () Bool)

(declare-fun tp!1645001 () Bool)

(assert (=> b!5919265 (= e!3623982 (and tp!1644999 tp!1645001))))

(assert (=> b!5917656 (= tp!1644084 e!3623982)))

(declare-fun b!5919264 () Bool)

(declare-fun tp!1644997 () Bool)

(assert (=> b!5919264 (= e!3623982 tp!1644997)))

(assert (= (and b!5917656 ((_ is ElementMatch!15969) (regTwo!32451 (regTwo!32450 (regOne!32451 r!7292))))) b!5919262))

(assert (= (and b!5917656 ((_ is Concat!24814) (regTwo!32451 (regTwo!32450 (regOne!32451 r!7292))))) b!5919263))

(assert (= (and b!5917656 ((_ is Star!15969) (regTwo!32451 (regTwo!32450 (regOne!32451 r!7292))))) b!5919264))

(assert (= (and b!5917656 ((_ is Union!15969) (regTwo!32451 (regTwo!32450 (regOne!32451 r!7292))))) b!5919265))

(declare-fun b!5919266 () Bool)

(declare-fun e!3623983 () Bool)

(assert (=> b!5919266 (= e!3623983 tp_is_empty!41191)))

(declare-fun b!5919267 () Bool)

(declare-fun tp!1645003 () Bool)

(declare-fun tp!1645005 () Bool)

(assert (=> b!5919267 (= e!3623983 (and tp!1645003 tp!1645005))))

(declare-fun b!5919269 () Bool)

(declare-fun tp!1645004 () Bool)

(declare-fun tp!1645006 () Bool)

(assert (=> b!5919269 (= e!3623983 (and tp!1645004 tp!1645006))))

(assert (=> b!5917700 (= tp!1644136 e!3623983)))

(declare-fun b!5919268 () Bool)

(declare-fun tp!1645002 () Bool)

(assert (=> b!5919268 (= e!3623983 tp!1645002)))

(assert (= (and b!5917700 ((_ is ElementMatch!15969) (reg!16298 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5919266))

(assert (= (and b!5917700 ((_ is Concat!24814) (reg!16298 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5919267))

(assert (= (and b!5917700 ((_ is Star!15969) (reg!16298 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5919268))

(assert (= (and b!5917700 ((_ is Union!15969) (reg!16298 (h!70530 (exprs!5853 (h!70531 zl!343)))))) b!5919269))

(declare-fun b_lambda!222323 () Bool)

(assert (= b_lambda!222321 (or d!1855776 b_lambda!222323)))

(declare-fun bs!1401160 () Bool)

(declare-fun d!1856362 () Bool)

(assert (= bs!1401160 (and d!1856362 d!1855776)))

(assert (=> bs!1401160 (= (dynLambda!25053 lambda!322868 (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343))))) (validRegex!7705 (h!70530 (exprs!5853 (h!70531 (t!377596 zl!343))))))))

(declare-fun m!6815980 () Bool)

(assert (=> bs!1401160 m!6815980))

(assert (=> b!5918604 d!1856362))

(declare-fun b_lambda!222325 () Bool)

(assert (= b_lambda!222309 (or d!1855694 b_lambda!222325)))

(declare-fun bs!1401162 () Bool)

(declare-fun d!1856364 () Bool)

(assert (= bs!1401162 (and d!1856364 d!1855694)))

(assert (=> bs!1401162 (= (dynLambda!25053 lambda!322865 (h!70530 lt!2309773)) (validRegex!7705 (h!70530 lt!2309773)))))

(declare-fun m!6815982 () Bool)

(assert (=> bs!1401162 m!6815982))

(assert (=> b!5918200 d!1856364))

(declare-fun b_lambda!222327 () Bool)

(assert (= b_lambda!222307 (or d!1855782 b_lambda!222327)))

(declare-fun bs!1401163 () Bool)

(declare-fun d!1856366 () Bool)

(assert (= bs!1401163 (and d!1856366 d!1855782)))

(assert (=> bs!1401163 (= (dynLambda!25053 lambda!322869 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))) (validRegex!7705 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(declare-fun m!6815985 () Bool)

(assert (=> bs!1401163 m!6815985))

(assert (=> b!5918119 d!1856366))

(declare-fun b_lambda!222329 () Bool)

(assert (= b_lambda!222315 (or d!1855584 b_lambda!222329)))

(declare-fun bs!1401165 () Bool)

(declare-fun d!1856368 () Bool)

(assert (= bs!1401165 (and d!1856368 d!1855584)))

(assert (=> bs!1401165 (= (dynLambda!25053 lambda!322812 (h!70530 (t!377595 (unfocusZipperList!1390 zl!343)))) (validRegex!7705 (h!70530 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(declare-fun m!6815988 () Bool)

(assert (=> bs!1401165 m!6815988))

(assert (=> b!5918363 d!1856368))

(declare-fun b_lambda!222331 () Bool)

(assert (= b_lambda!222303 (or d!1855588 b_lambda!222331)))

(declare-fun bs!1401166 () Bool)

(declare-fun d!1856372 () Bool)

(assert (= bs!1401166 (and d!1856372 d!1855588)))

(assert (=> bs!1401166 (= (dynLambda!25053 lambda!322815 (h!70530 (t!377595 lt!2309704))) (validRegex!7705 (h!70530 (t!377595 lt!2309704))))))

(declare-fun m!6815990 () Bool)

(assert (=> bs!1401166 m!6815990))

(assert (=> b!5918004 d!1856372))

(declare-fun b_lambda!222333 () Bool)

(assert (= b_lambda!222319 (or d!1855630 b_lambda!222333)))

(declare-fun bs!1401167 () Bool)

(declare-fun d!1856374 () Bool)

(assert (= bs!1401167 (and d!1856374 d!1855630)))

(assert (=> bs!1401167 (= (dynLambda!25053 lambda!322838 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))) (validRegex!7705 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(assert (=> bs!1401167 m!6815985))

(assert (=> b!5918442 d!1856374))

(declare-fun b_lambda!222335 () Bool)

(assert (= b_lambda!222311 (or d!1855624 b_lambda!222335)))

(declare-fun bs!1401168 () Bool)

(declare-fun d!1856376 () Bool)

(assert (= bs!1401168 (and d!1856376 d!1855624)))

(assert (=> bs!1401168 (= (dynLambda!25053 lambda!322837 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))) (validRegex!7705 (h!70530 (t!377595 (exprs!5853 (h!70531 zl!343))))))))

(assert (=> bs!1401168 m!6815985))

(assert (=> b!5918245 d!1856376))

(declare-fun b_lambda!222337 () Bool)

(assert (= b_lambda!222305 (or d!1855580 b_lambda!222337)))

(declare-fun bs!1401169 () Bool)

(declare-fun d!1856378 () Bool)

(assert (= bs!1401169 (and d!1856378 d!1855580)))

(assert (=> bs!1401169 (= (dynLambda!25053 lambda!322809 (h!70530 (t!377595 (exprs!5853 setElem!40160)))) (validRegex!7705 (h!70530 (t!377595 (exprs!5853 setElem!40160)))))))

(declare-fun m!6815992 () Bool)

(assert (=> bs!1401169 m!6815992))

(assert (=> b!5918049 d!1856378))

(declare-fun b_lambda!222339 () Bool)

(assert (= b_lambda!222301 (or d!1855806 b_lambda!222339)))

(declare-fun bs!1401170 () Bool)

(declare-fun d!1856380 () Bool)

(assert (= bs!1401170 (and d!1856380 d!1855806)))

(assert (=> bs!1401170 (= (dynLambda!25053 lambda!322873 (h!70530 (t!377595 (unfocusZipperList!1390 zl!343)))) (validRegex!7705 (h!70530 (t!377595 (unfocusZipperList!1390 zl!343)))))))

(assert (=> bs!1401170 m!6815988))

(assert (=> b!5917881 d!1856380))

(declare-fun b_lambda!222341 () Bool)

(assert (= b_lambda!222313 (or d!1855834 b_lambda!222341)))

(declare-fun bs!1401171 () Bool)

(declare-fun d!1856382 () Bool)

(assert (= bs!1401171 (and d!1856382 d!1855834)))

(assert (=> bs!1401171 (= (dynLambda!25053 lambda!322880 (h!70530 (exprs!5853 setElem!40166))) (validRegex!7705 (h!70530 (exprs!5853 setElem!40166))))))

(declare-fun m!6815994 () Bool)

(assert (=> bs!1401171 m!6815994))

(assert (=> b!5918247 d!1856382))

(check-sat (not b!5919257) (not b!5918277) (not bm!469094) (not b!5919127) (not b!5919169) (not b!5918454) (not bm!469129) (not b!5918642) (not bm!469124) (not b!5918802) (not b!5919132) (not b!5919194) (not b!5919015) (not b!5919008) (not b!5918689) (not bm!469208) (not b!5918510) (not b!5919193) (not b!5918766) (not b!5918861) (not b!5918275) (not b!5918950) (not bs!1401163) (not bm!469133) (not b!5918121) (not b!5918919) (not b!5918333) (not b!5918663) (not b!5918123) (not b!5918203) (not b!5919028) (not b!5918969) (not b!5918845) (not d!1856108) (not d!1856136) (not b!5918754) (not d!1856234) (not bm!469125) (not b!5919207) (not b!5918449) (not b!5919158) (not b!5918320) (not b!5918783) (not b!5918886) (not b!5918056) (not bm!469198) (not bm!469104) (not b!5918514) (not b!5918670) (not b!5919111) (not b!5918697) (not bs!1401168) (not b!5919157) (not b!5919067) (not b!5918815) (not bm!469222) (not d!1856000) (not b!5918856) (not b!5918945) (not b!5918918) (not b_lambda!222283) (not b!5918086) (not bm!469252) (not b!5917949) (not b!5918967) (not b!5919177) (not b!5919165) (not b!5919238) (not b!5918298) (not b!5918938) (not b!5918939) (not b!5918630) (not bm!469107) (not b!5918788) (not b!5919152) (not b!5918265) (not bm!469215) (not bm!469109) (not bm!469206) (not b!5919166) (not b!5919013) (not b!5919248) (not b!5918942) (not b_lambda!222333) (not b!5917899) (not d!1856012) (not bm!469089) (not b!5918227) (not b!5917989) (not b!5918023) (not bm!469147) (not b!5918660) (not b!5918714) (not b!5918193) (not b!5919060) (not b!5918366) (not b!5918860) (not d!1856106) (not b!5918976) (not b!5919097) (not b!5918639) (not b!5918850) (not b!5918701) (not b!5918655) (not d!1856294) (not b!5918930) (not b!5919045) (not b!5918966) (not b!5918560) (not bm!469079) (not b!5918720) (not b!5919036) (not b_lambda!222323) (not b_lambda!222325) (not b!5918142) (not bm!469146) (not b!5919161) (not b!5919140) (not bm!469100) (not b!5918865) (not b!5918711) (not b!5918698) (not b!5918201) (not b!5919239) (not b!5918115) (not b!5919063) (not b!5919199) (not b!5918559) (not b!5918213) (not bm!469112) (not bm!469178) (not bm!469113) (not b!5919233) (not b!5919261) (not b!5919213) (not b!5918734) (not b!5918977) (not d!1856006) (not b!5919168) (not b!5919124) (not b!5919050) (not bm!469207) (not b!5918915) (not setNonEmpty!40169) (not b!5918321) (not b!5918310) (not b!5918946) (not b!5918818) (not b!5919136) (not b!5918975) (not bm!469130) (not b!5919078) (not b_lambda!222285) (not b!5918823) (not b!5919190) (not b!5919227) (not b!5917960) (not b!5919174) (not d!1856308) (not b!5919211) (not b!5919084) (not d!1856258) (not b!5918887) (not b!5918993) (not b!5918021) (not b!5918718) (not b!5918782) (not b!5919022) (not b!5918724) (not b!5919102) (not b!5919256) (not b!5918255) (not b!5919069) (not b!5919148) (not b!5919178) (not b!5918151) (not b!5918616) (not b!5918238) (not bm!469258) (not bm!469240) (not b!5918375) (not d!1856058) (not b!5917938) (not b!5918763) (not b!5918364) (not b!5918992) (not b!5918276) (not b!5919053) (not d!1856168) (not d!1856036) (not b_lambda!222329) (not b!5918905) (not b!5918881) (not b!5918762) (not d!1856264) (not b!5918334) (not b!5917964) (not b!5918970) (not b!5919034) (not d!1856146) (not b!5919011) (not b!5918891) (not b!5918959) (not b_lambda!222327) (not b!5919072) (not b!5918159) (not b!5918658) (not b!5918374) (not b!5918792) (not b!5918771) (not b!5919252) (not b!5918520) (not b!5918999) (not b!5918911) (not b!5919123) (not bm!469213) (not bm!469229) (not b!5918901) (not b!5918656) (not b!5919056) (not b!5919264) (not b!5918045) (not bm!469186) (not b!5919249) (not b!5918373) (not b!5919048) (not b!5918205) (not b!5918303) (not b!5919021) (not b!5918479) (not b!5918971) (not b!5918165) (not b!5918153) (not b!5918721) (not b!5919202) (not b!5918808) (not b!5918907) (not b!5919052) (not b!5918146) (not d!1856090) (not b!5918889) (not b!5918098) (not b!5919172) (not b!5918292) (not b!5919209) (not b!5918746) (not b!5919229) (not b!5919061) (not bm!469135) (not bm!469080) (not b!5917877) (not bm!469115) (not b!5917954) (not b!5918769) (not b!5918690) (not b!5919197) (not b!5919131) tp_is_empty!41191 (not b!5918864) (not b!5918803) (not d!1856174) (not b!5919219) (not b!5918082) (not b!5918729) (not b!5919004) (not b!5918761) (not b!5918716) (not b!5918842) (not b!5918029) (not d!1856104) (not b!5919205) (not bm!469253) (not b!5917951) (not bm!469106) (not b!5918691) (not b!5918527) (not b!5919232) (not b!5918883) (not b!5918316) (not b!5919112) (not b!5919247) (not b!5918899) (not bm!469138) (not b!5919082) (not b!5918852) (not b!5919160) (not b!5919195) (not b!5919065) (not d!1855990) (not b!5919225) (not b!5918477) (not d!1856218) (not d!1855992) (not b!5918535) (not b!5919020) (not b!5918682) (not b!5918150) (not b!5919086) (not b!5918923) (not b!5919173) (not b!5919170) (not b!5918858) (not b!5919162) (not b!5918758) (not b!5919153) (not bm!469110) (not bm!469173) (not bs!1401167) (not b!5919058) (not b!5919007) (not b!5917905) (not b!5918947) (not b!5919243) (not b!5918934) (not b!5919269) (not b!5919187) (not b!5918084) (not b!5919033) (not b!5918526) (not b!5917882) (not b!5917965) (not b!5918897) (not b!5918351) (not b!5918295) (not b!5919079) (not b!5918134) (not b!5918765) (not d!1856230) (not b!5918291) (not b!5918807) (not bs!1401170) (not b!5919030) (not b!5918367) (not b!5918958) (not b!5918667) (not b!5919198) (not b!5918717) (not bm!469137) (not b!5918909) (not b_lambda!222339) (not b!5918075) (not bm!469126) (not b!5918679) (not b!5918576) (not b!5918954) (not b!5918545) (not d!1856222) (not bm!469102) (not b!5919228) (not b!5919094) (not b!5918722) (not b!5919210) (not b!5919089) (not b!5919025) (not b!5919032) (not b!5919044) (not b!5918862) (not bm!469078) (not b!5918800) (not b!5918251) (not b!5918949) (not d!1856170) (not bm!469225) (not b!5918759) (not b_lambda!222335) (not b!5918703) (not b!5919231) (not d!1856088) (not d!1856306) (not b!5918060) (not bm!469174) (not b!5918003) (not b!5918853) (not b!5918733) (not b!5918297) (not d!1856092) (not b!5918820) (not b!5918955) (not b!5918840) (not b!5917929) (not b!5919090) (not b!5918819) (not b!5919119) (not b!5919125) (not b!5918787) (not b!5918627) (not b!5918868) (not b!5918271) (not b!5919041) (not b!5918673) (not b!5918377) (not b!5918665) (not b!5919062) (not b!5918941) (not bm!469167) (not bm!469097) (not b!5918767) (not b!5919267) (not b!5918296) (not bm!469161) (not b!5918962) (not b!5918677) (not b!5918796) (not bm!469096) (not b!5918278) (not b!5918102) (not b!5918953) (not d!1856100) (not bm!469181) (not b_lambda!222287) (not bs!1401160) (not d!1856160) (not b!5918910) (not b!5917893) (not b!5918567) (not b!5918745) (not b!5918799) (not b!5918631) (not b!5918725) (not b!5918894) (not b!5918750) (not b!5918921) (not b!5918693) (not bs!1401162) (not d!1856164) (not b!5919263) (not b!5919220) (not bm!469134) (not bm!469139) (not b!5919070) (not b!5917904) (not b!5918872) (not b!5919137) (not b!5919098) (not b!5918983) (not b!5918925) (not b!5919100) (not b!5918804) (not b!5919135) (not b!5918751) (not bm!469118) (not d!1856182) (not b!5918199) (not b!5919024) (not b!5919038) (not b!5919223) (not b!5917971) (not b!5918726) (not bm!469086) (not b!5918935) (not d!1855994) (not b!5918674) (not b!5918753) (not b!5919088) (not b!5918917) (not b!5919029) (not b!5918957) (not b!5918695) (not b!5918372) (not bm!469194) (not bm!469143) (not b!5919074) (not b!5918790) (not b!5918943) (not b!5918963) (not b!5918319) (not b!5918005) (not b!5918747) (not b!5918323) (not b!5919093) (not b!5918870) (not bm!469127) (not b!5918965) (not b!5918329) (not b!5918878) (not b!5918638) (not b!5918657) (not b!5918705) (not b!5919129) (not b!5918812) (not b!5918794) (not b!5919042) (not b!5919203) (not d!1856254) (not bm!469171) (not bm!469152) (not b!5919080) (not d!1856076) (not d!1856014) (not bm!469200) (not b!5918848) (not b!5918895) (not bm!469236) (not b!5919054) (not bm!469179) (not b!5919083) (not bm!469154) (not b!5918685) (not bm!469120) (not b!5918429) (not b!5918681) (not bs!1401171) (not b!5918490) (not b!5919096) (not bm!469099) (not b!5918926) (not bm!469082) (not d!1856010) (not bm!469148) (not b!5919003) (not b!5918161) (not b!5918522) (not b!5918633) (not b!5918268) (not b!5918678) (not b!5918104) (not bm!469091) (not b!5918010) (not b!5919214) (not b!5918195) (not b!5919206) (not b!5919037) (not bm!469175) (not b!5918207) (not d!1856172) (not b!5919146) (not b!5918730) (not b!5918109) (not b!5919101) (not b!5919156) (not b!5918997) (not b!5918318) (not b!5918133) (not b!5917948) (not bm!469119) (not b!5919116) (not b!5918757) (not b!5918806) (not b!5919186) (not bm!469141) (not b!5919018) (not b!5918702) (not bs!1401165) (not bm!469160) (not b!5918443) (not b!5918484) (not b!5919071) (not b!5918359) (not b!5918880) (not b!5919120) (not b!5918471) (not b_lambda!222331) (not b!5917906) (not bm!469142) (not b!5918961) (not b!5918412) (not b!5918706) (not bm!469151) (not b!5919009) (not b!5918890) (not b!5918264) (not b!5919016) (not bs!1401166) (not b!5918874) (not bm!469095) (not b!5917943) (not b!5918279) (not b!5919046) (not b!5919026) (not b!5919138) (not d!1855988) (not bm!469230) (not b!5918174) (not b!5918824) (not b!5919154) (not b!5918637) (not b!5918929) (not b_lambda!222341) (not b!5918661) (not b!5917950) (not b!5919017) (not b!5919141) (not b!5919201) (not b!5918369) (not b!5918795) (not b!5918784) (not b!5918246) (not bs!1401169) (not bm!469184) (not bm!469168) (not b!5919164) (not b!5918669) (not b!5919115) (not b!5919224) (not b!5919189) (not b!5918893) (not b!5918931) (not b!5918327) (not bm!469226) (not b!5918982) (not b_lambda!222337) (not b!5919142) (not bm!469257) (not b!5919076) (not b!5918371) (not b!5918846) (not b!5917945) (not b!5919191) (not b!5917952) (not d!1856296) (not b!5918516) (not b!5917998) (not b!5918092) (not b!5918290) (not b!5918798) (not b!5918007) (not b!5918849) (not bm!469155) (not bm!469232) (not b!5918937) (not d!1856208) (not b!5918629) (not b!5918666) (not b!5919092) (not b!5918694) (not b!5919075) (not bm!469132) (not b!5919253) (not d!1856284) (not b!5918898) (not b!5918683) (not d!1856166) (not bm!469212) (not b!5918262) (not b!5919260) (not b!5918877) (not b!5917914) (not b!5919005) (not d!1856098) (not bm!469239) (not b!5917944) (not b!5918120) (not b!5918906) (not d!1856018) (not b!5918816) (not b!5919012) (not b!5918249) (not bm!469170) (not b!5918641) (not bm!469166) (not b!5919255) (not b_lambda!222281) (not d!1856286) (not b!5919251) (not b!5918155) (not bm!469224) (not b!5918873) (not b!5919121) (not bm!469185) (not b!5918483) (not b!5919144) (not b!5918261) (not bm!469114) (not b!5918854) (not b!5918755) (not b!5919265) (not bm!469157) (not b!5918182) (not b!5918581) (not b!5918269) (not b!5918671) (not bm!469238) (not b!5919259) (not b!5918715) (not b!5919049) (not b!5919113) (not bm!469090) (not b!5919128) (not b!5918791) (not bm!469087) (not b!5919057) (not b!5918857) (not b!5918927) (not b!5919215) (not bm!469103) (not b!5918998) (not b!5918699) (not b!5918770) (not b!5918244) (not b!5918922) (not d!1856094) (not b!5918707) (not b!5919133) (not b!5918248) (not b!5918285) (not b!5919040) (not b!5918675) (not b!5918814) (not b!5918635) (not bm!469085) (not bm!469162) (not b!5919221) (not d!1856268) (not b!5918191) (not b!5918686) (not b!5917958) (not b!5919241) (not b!5918197) (not b!5919176) (not b!5918662) (not b!5918257) (not b!5918885) (not b!5919185) (not b!5918732) (not b!5918166) (not b!5918080) (not b!5918844) (not b!5918811) (not bm!469204) (not b!5919183) (not b!5917980) (not b!5918903) (not b!5918395) (not b!5919085) (not b!5918981) (not b_lambda!222279) (not b!5919117) (not b!5918822) (not d!1856186) (not b!5919268) (not d!1856102) (not b!5918050) (not b!5918749) (not b!5918866) (not b!5918841) (not b!5918991) (not b!5918108) (not b!5919237) (not b!5918933) (not b!5918786) (not b!5918810) (not b!5918058) (not b!5918096) (not b!5919149) (not b!5918913) (not b!5918951) (not b!5918129) (not b!5919066) (not b!5918728) (not b!5918902) (not bm!469259) (not bm!469191) (not b!5918473) (not b!5919242) (not b!5919145) (not b!5918876) (not b!5918710) (not b!5918147) (not b!5918914) (not b!5918713) (not b!5918127) (not b!5918634) (not bm!469122) (not b!5918869) (not b!5918687) (not bm!469251) (not b!5918709) (not b!5918882) (not b!5919150) (not b!5918605) (not b!5918066) (not b!5918643))
(check-sat)
