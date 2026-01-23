; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!610278 () Bool)

(assert start!610278)

(declare-fun b!6104050 () Bool)

(assert (=> b!6104050 true))

(assert (=> b!6104050 true))

(declare-fun lambda!332563 () Int)

(declare-fun lambda!332562 () Int)

(assert (=> b!6104050 (not (= lambda!332563 lambda!332562))))

(assert (=> b!6104050 true))

(assert (=> b!6104050 true))

(declare-fun b!6104037 () Bool)

(declare-fun res!2532471 () Bool)

(declare-fun e!3722628 () Bool)

(assert (=> b!6104037 (=> res!2532471 e!3722628)))

(declare-datatypes ((C!32380 0))(
  ( (C!32381 (val!25892 Int)) )
))
(declare-datatypes ((Regex!16055 0))(
  ( (ElementMatch!16055 (c!1096515 C!32380)) (Concat!24900 (regOne!32622 Regex!16055) (regTwo!32622 Regex!16055)) (EmptyExpr!16055) (Star!16055 (reg!16384 Regex!16055)) (EmptyLang!16055) (Union!16055 (regOne!32623 Regex!16055) (regTwo!32623 Regex!16055)) )
))
(declare-datatypes ((List!64464 0))(
  ( (Nil!64340) (Cons!64340 (h!70788 Regex!16055) (t!377915 List!64464)) )
))
(declare-datatypes ((Context!10878 0))(
  ( (Context!10879 (exprs!5939 List!64464)) )
))
(declare-datatypes ((List!64465 0))(
  ( (Nil!64341) (Cons!64341 (h!70789 Context!10878) (t!377916 List!64465)) )
))
(declare-fun zl!343 () List!64465)

(declare-fun isEmpty!36261 (List!64465) Bool)

(assert (=> b!6104037 (= res!2532471 (not (isEmpty!36261 (t!377916 zl!343))))))

(declare-fun res!2532468 () Bool)

(declare-fun e!3722625 () Bool)

(assert (=> start!610278 (=> (not res!2532468) (not e!3722625))))

(declare-fun r!7292 () Regex!16055)

(declare-fun validRegex!7791 (Regex!16055) Bool)

(assert (=> start!610278 (= res!2532468 (validRegex!7791 r!7292))))

(assert (=> start!610278 e!3722625))

(declare-fun e!3722626 () Bool)

(assert (=> start!610278 e!3722626))

(declare-fun condSetEmpty!41246 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10878))

(assert (=> start!610278 (= condSetEmpty!41246 (= z!1189 ((as const (Array Context!10878 Bool)) false)))))

(declare-fun setRes!41246 () Bool)

(assert (=> start!610278 setRes!41246))

(declare-fun e!3722631 () Bool)

(assert (=> start!610278 e!3722631))

(declare-fun e!3722629 () Bool)

(assert (=> start!610278 e!3722629))

(declare-fun b!6104038 () Bool)

(declare-fun res!2532473 () Bool)

(assert (=> b!6104038 (=> (not res!2532473) (not e!3722625))))

(declare-fun toList!9839 ((InoxSet Context!10878)) List!64465)

(assert (=> b!6104038 (= res!2532473 (= (toList!9839 z!1189) zl!343))))

(declare-fun b!6104039 () Bool)

(declare-fun tp_is_empty!41363 () Bool)

(assert (=> b!6104039 (= e!3722626 tp_is_empty!41363)))

(declare-fun b!6104040 () Bool)

(declare-fun tp!1704287 () Bool)

(declare-fun tp!1704292 () Bool)

(assert (=> b!6104040 (= e!3722626 (and tp!1704287 tp!1704292))))

(declare-fun b!6104041 () Bool)

(declare-fun res!2532477 () Bool)

(assert (=> b!6104041 (=> res!2532477 e!3722628)))

(declare-fun generalisedConcat!1652 (List!64464) Regex!16055)

(assert (=> b!6104041 (= res!2532477 (not (= r!7292 (generalisedConcat!1652 (exprs!5939 (h!70789 zl!343))))))))

(declare-fun b!6104042 () Bool)

(assert (=> b!6104042 (= e!3722625 (not e!3722628))))

(declare-fun res!2532467 () Bool)

(assert (=> b!6104042 (=> res!2532467 e!3722628)))

(get-info :version)

(assert (=> b!6104042 (= res!2532467 (not ((_ is Cons!64341) zl!343)))))

(declare-fun lt!2329516 () Bool)

(declare-datatypes ((List!64466 0))(
  ( (Nil!64342) (Cons!64342 (h!70790 C!32380) (t!377917 List!64466)) )
))
(declare-fun s!2326 () List!64466)

(declare-fun matchRSpec!3156 (Regex!16055 List!64466) Bool)

(assert (=> b!6104042 (= lt!2329516 (matchRSpec!3156 r!7292 s!2326))))

(declare-fun matchR!8238 (Regex!16055 List!64466) Bool)

(assert (=> b!6104042 (= lt!2329516 (matchR!8238 r!7292 s!2326))))

(declare-datatypes ((Unit!157381 0))(
  ( (Unit!157382) )
))
(declare-fun lt!2329518 () Unit!157381)

(declare-fun mainMatchTheorem!3156 (Regex!16055 List!64466) Unit!157381)

(assert (=> b!6104042 (= lt!2329518 (mainMatchTheorem!3156 r!7292 s!2326))))

(declare-fun setIsEmpty!41246 () Bool)

(assert (=> setIsEmpty!41246 setRes!41246))

(declare-fun b!6104043 () Bool)

(declare-fun res!2532475 () Bool)

(declare-fun e!3722624 () Bool)

(assert (=> b!6104043 (=> res!2532475 e!3722624)))

(declare-fun isEmpty!36262 (List!64464) Bool)

(assert (=> b!6104043 (= res!2532475 (isEmpty!36262 (t!377915 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6104044 () Bool)

(declare-fun tp!1704286 () Bool)

(assert (=> b!6104044 (= e!3722626 tp!1704286)))

(declare-fun b!6104045 () Bool)

(declare-fun tp!1704290 () Bool)

(declare-fun tp!1704291 () Bool)

(assert (=> b!6104045 (= e!3722626 (and tp!1704290 tp!1704291))))

(declare-fun b!6104046 () Bool)

(declare-fun lt!2329513 () Context!10878)

(declare-fun inv!83384 (Context!10878) Bool)

(assert (=> b!6104046 (= e!3722624 (inv!83384 lt!2329513))))

(declare-fun lt!2329519 () (InoxSet Context!10878))

(declare-fun derivationStepZipperDown!1303 (Regex!16055 Context!10878 C!32380) (InoxSet Context!10878))

(assert (=> b!6104046 (= lt!2329519 (derivationStepZipperDown!1303 (h!70788 (exprs!5939 (h!70789 zl!343))) lt!2329513 (h!70790 s!2326)))))

(assert (=> b!6104046 (= lt!2329513 (Context!10879 (t!377915 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun lt!2329515 () (InoxSet Context!10878))

(declare-fun derivationStepZipperUp!1229 (Context!10878 C!32380) (InoxSet Context!10878))

(assert (=> b!6104046 (= lt!2329515 (derivationStepZipperUp!1229 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))) (h!70790 s!2326)))))

(declare-fun b!6104047 () Bool)

(declare-fun res!2532472 () Bool)

(assert (=> b!6104047 (=> (not res!2532472) (not e!3722625))))

(declare-fun unfocusZipper!1797 (List!64465) Regex!16055)

(assert (=> b!6104047 (= res!2532472 (= r!7292 (unfocusZipper!1797 zl!343)))))

(declare-fun e!3722627 () Bool)

(declare-fun tp!1704294 () Bool)

(declare-fun setNonEmpty!41246 () Bool)

(declare-fun setElem!41246 () Context!10878)

(assert (=> setNonEmpty!41246 (= setRes!41246 (and tp!1704294 (inv!83384 setElem!41246) e!3722627))))

(declare-fun setRest!41246 () (InoxSet Context!10878))

(assert (=> setNonEmpty!41246 (= z!1189 ((_ map or) (store ((as const (Array Context!10878 Bool)) false) setElem!41246 true) setRest!41246))))

(declare-fun b!6104048 () Bool)

(declare-fun res!2532474 () Bool)

(assert (=> b!6104048 (=> res!2532474 e!3722628)))

(declare-fun generalisedUnion!1899 (List!64464) Regex!16055)

(declare-fun unfocusZipperList!1476 (List!64465) List!64464)

(assert (=> b!6104048 (= res!2532474 (not (= r!7292 (generalisedUnion!1899 (unfocusZipperList!1476 zl!343)))))))

(declare-fun e!3722630 () Bool)

(declare-fun b!6104049 () Bool)

(declare-fun tp!1704293 () Bool)

(assert (=> b!6104049 (= e!3722631 (and (inv!83384 (h!70789 zl!343)) e!3722630 tp!1704293))))

(assert (=> b!6104050 (= e!3722628 e!3722624)))

(declare-fun res!2532470 () Bool)

(assert (=> b!6104050 (=> res!2532470 e!3722624)))

(declare-fun lt!2329520 () Bool)

(assert (=> b!6104050 (= res!2532470 (or (not (= lt!2329516 lt!2329520)) ((_ is Nil!64342) s!2326)))))

(declare-fun Exists!3125 (Int) Bool)

(assert (=> b!6104050 (= (Exists!3125 lambda!332562) (Exists!3125 lambda!332563))))

(declare-fun lt!2329517 () Unit!157381)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1662 (Regex!16055 Regex!16055 List!64466) Unit!157381)

(assert (=> b!6104050 (= lt!2329517 (lemmaExistCutMatchRandMatchRSpecEquivalent!1662 (regOne!32622 r!7292) (regTwo!32622 r!7292) s!2326))))

(assert (=> b!6104050 (= lt!2329520 (Exists!3125 lambda!332562))))

(declare-datatypes ((tuple2!66068 0))(
  ( (tuple2!66069 (_1!36337 List!64466) (_2!36337 List!64466)) )
))
(declare-datatypes ((Option!15946 0))(
  ( (None!15945) (Some!15945 (v!52078 tuple2!66068)) )
))
(declare-fun isDefined!12649 (Option!15946) Bool)

(declare-fun findConcatSeparation!2360 (Regex!16055 Regex!16055 List!64466 List!64466 List!64466) Option!15946)

(assert (=> b!6104050 (= lt!2329520 (isDefined!12649 (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) Nil!64342 s!2326 s!2326)))))

(declare-fun lt!2329514 () Unit!157381)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2124 (Regex!16055 Regex!16055 List!64466) Unit!157381)

(assert (=> b!6104050 (= lt!2329514 (lemmaFindConcatSeparationEquivalentToExists!2124 (regOne!32622 r!7292) (regTwo!32622 r!7292) s!2326))))

(declare-fun b!6104051 () Bool)

(declare-fun res!2532469 () Bool)

(assert (=> b!6104051 (=> res!2532469 e!3722628)))

(assert (=> b!6104051 (= res!2532469 (or ((_ is EmptyExpr!16055) r!7292) ((_ is EmptyLang!16055) r!7292) ((_ is ElementMatch!16055) r!7292) ((_ is Union!16055) r!7292) (not ((_ is Concat!24900) r!7292))))))

(declare-fun b!6104052 () Bool)

(declare-fun tp!1704285 () Bool)

(assert (=> b!6104052 (= e!3722630 tp!1704285)))

(declare-fun b!6104053 () Bool)

(declare-fun tp!1704289 () Bool)

(assert (=> b!6104053 (= e!3722629 (and tp_is_empty!41363 tp!1704289))))

(declare-fun b!6104054 () Bool)

(declare-fun tp!1704288 () Bool)

(assert (=> b!6104054 (= e!3722627 tp!1704288)))

(declare-fun b!6104055 () Bool)

(declare-fun res!2532476 () Bool)

(assert (=> b!6104055 (=> res!2532476 e!3722628)))

(assert (=> b!6104055 (= res!2532476 (not ((_ is Cons!64340) (exprs!5939 (h!70789 zl!343)))))))

(assert (= (and start!610278 res!2532468) b!6104038))

(assert (= (and b!6104038 res!2532473) b!6104047))

(assert (= (and b!6104047 res!2532472) b!6104042))

(assert (= (and b!6104042 (not res!2532467)) b!6104037))

(assert (= (and b!6104037 (not res!2532471)) b!6104041))

(assert (= (and b!6104041 (not res!2532477)) b!6104055))

(assert (= (and b!6104055 (not res!2532476)) b!6104048))

(assert (= (and b!6104048 (not res!2532474)) b!6104051))

(assert (= (and b!6104051 (not res!2532469)) b!6104050))

(assert (= (and b!6104050 (not res!2532470)) b!6104043))

(assert (= (and b!6104043 (not res!2532475)) b!6104046))

(assert (= (and start!610278 ((_ is ElementMatch!16055) r!7292)) b!6104039))

(assert (= (and start!610278 ((_ is Concat!24900) r!7292)) b!6104045))

(assert (= (and start!610278 ((_ is Star!16055) r!7292)) b!6104044))

(assert (= (and start!610278 ((_ is Union!16055) r!7292)) b!6104040))

(assert (= (and start!610278 condSetEmpty!41246) setIsEmpty!41246))

(assert (= (and start!610278 (not condSetEmpty!41246)) setNonEmpty!41246))

(assert (= setNonEmpty!41246 b!6104054))

(assert (= b!6104049 b!6104052))

(assert (= (and start!610278 ((_ is Cons!64341) zl!343)) b!6104049))

(assert (= (and start!610278 ((_ is Cons!64342) s!2326)) b!6104053))

(declare-fun m!6955752 () Bool)

(assert (=> setNonEmpty!41246 m!6955752))

(declare-fun m!6955754 () Bool)

(assert (=> b!6104038 m!6955754))

(declare-fun m!6955756 () Bool)

(assert (=> b!6104046 m!6955756))

(declare-fun m!6955758 () Bool)

(assert (=> b!6104046 m!6955758))

(declare-fun m!6955760 () Bool)

(assert (=> b!6104046 m!6955760))

(declare-fun m!6955762 () Bool)

(assert (=> start!610278 m!6955762))

(declare-fun m!6955764 () Bool)

(assert (=> b!6104050 m!6955764))

(assert (=> b!6104050 m!6955764))

(declare-fun m!6955766 () Bool)

(assert (=> b!6104050 m!6955766))

(declare-fun m!6955768 () Bool)

(assert (=> b!6104050 m!6955768))

(declare-fun m!6955770 () Bool)

(assert (=> b!6104050 m!6955770))

(declare-fun m!6955772 () Bool)

(assert (=> b!6104050 m!6955772))

(assert (=> b!6104050 m!6955766))

(declare-fun m!6955774 () Bool)

(assert (=> b!6104050 m!6955774))

(declare-fun m!6955776 () Bool)

(assert (=> b!6104041 m!6955776))

(declare-fun m!6955778 () Bool)

(assert (=> b!6104048 m!6955778))

(assert (=> b!6104048 m!6955778))

(declare-fun m!6955780 () Bool)

(assert (=> b!6104048 m!6955780))

(declare-fun m!6955782 () Bool)

(assert (=> b!6104037 m!6955782))

(declare-fun m!6955784 () Bool)

(assert (=> b!6104049 m!6955784))

(declare-fun m!6955786 () Bool)

(assert (=> b!6104043 m!6955786))

(declare-fun m!6955788 () Bool)

(assert (=> b!6104042 m!6955788))

(declare-fun m!6955790 () Bool)

(assert (=> b!6104042 m!6955790))

(declare-fun m!6955792 () Bool)

(assert (=> b!6104042 m!6955792))

(declare-fun m!6955794 () Bool)

(assert (=> b!6104047 m!6955794))

(check-sat (not b!6104037) (not b!6104053) (not b!6104042) (not b!6104046) (not b!6104040) (not b!6104054) (not b!6104041) (not b!6104038) (not b!6104050) (not start!610278) tp_is_empty!41363 (not b!6104049) (not b!6104043) (not b!6104045) (not b!6104047) (not setNonEmpty!41246) (not b!6104048) (not b!6104052) (not b!6104044))
(check-sat)
(get-model)

(declare-fun bs!1515698 () Bool)

(declare-fun b!6104226 () Bool)

(assert (= bs!1515698 (and b!6104226 b!6104050)))

(declare-fun lambda!332583 () Int)

(assert (=> bs!1515698 (not (= lambda!332583 lambda!332562))))

(assert (=> bs!1515698 (not (= lambda!332583 lambda!332563))))

(assert (=> b!6104226 true))

(assert (=> b!6104226 true))

(declare-fun bs!1515700 () Bool)

(declare-fun b!6104225 () Bool)

(assert (= bs!1515700 (and b!6104225 b!6104050)))

(declare-fun lambda!332585 () Int)

(assert (=> bs!1515700 (not (= lambda!332585 lambda!332562))))

(assert (=> bs!1515700 (= lambda!332585 lambda!332563)))

(declare-fun bs!1515702 () Bool)

(assert (= bs!1515702 (and b!6104225 b!6104226)))

(assert (=> bs!1515702 (not (= lambda!332585 lambda!332583))))

(assert (=> b!6104225 true))

(assert (=> b!6104225 true))

(declare-fun bm!504783 () Bool)

(declare-fun call!504788 () Bool)

(declare-fun isEmpty!36265 (List!64466) Bool)

(assert (=> bm!504783 (= call!504788 (isEmpty!36265 s!2326))))

(declare-fun b!6104216 () Bool)

(declare-fun e!3722721 () Bool)

(assert (=> b!6104216 (= e!3722721 (= s!2326 (Cons!64342 (c!1096515 r!7292) Nil!64342)))))

(declare-fun b!6104217 () Bool)

(declare-fun e!3722719 () Bool)

(assert (=> b!6104217 (= e!3722719 call!504788)))

(declare-fun d!1913281 () Bool)

(declare-fun c!1096551 () Bool)

(assert (=> d!1913281 (= c!1096551 ((_ is EmptyExpr!16055) r!7292))))

(assert (=> d!1913281 (= (matchRSpec!3156 r!7292 s!2326) e!3722719)))

(declare-fun b!6104218 () Bool)

(declare-fun e!3722718 () Bool)

(declare-fun e!3722717 () Bool)

(assert (=> b!6104218 (= e!3722718 e!3722717)))

(declare-fun res!2532566 () Bool)

(assert (=> b!6104218 (= res!2532566 (matchRSpec!3156 (regOne!32623 r!7292) s!2326))))

(assert (=> b!6104218 (=> res!2532566 e!3722717)))

(declare-fun b!6104219 () Bool)

(declare-fun c!1096554 () Bool)

(assert (=> b!6104219 (= c!1096554 ((_ is ElementMatch!16055) r!7292))))

(declare-fun e!3722723 () Bool)

(assert (=> b!6104219 (= e!3722723 e!3722721)))

(declare-fun b!6104220 () Bool)

(declare-fun e!3722722 () Bool)

(assert (=> b!6104220 (= e!3722718 e!3722722)))

(declare-fun c!1096552 () Bool)

(assert (=> b!6104220 (= c!1096552 ((_ is Star!16055) r!7292))))

(declare-fun b!6104221 () Bool)

(assert (=> b!6104221 (= e!3722717 (matchRSpec!3156 (regTwo!32623 r!7292) s!2326))))

(declare-fun call!504789 () Bool)

(declare-fun bm!504784 () Bool)

(assert (=> bm!504784 (= call!504789 (Exists!3125 (ite c!1096552 lambda!332583 lambda!332585)))))

(declare-fun b!6104222 () Bool)

(declare-fun c!1096553 () Bool)

(assert (=> b!6104222 (= c!1096553 ((_ is Union!16055) r!7292))))

(assert (=> b!6104222 (= e!3722721 e!3722718)))

(declare-fun b!6104223 () Bool)

(assert (=> b!6104223 (= e!3722719 e!3722723)))

(declare-fun res!2532565 () Bool)

(assert (=> b!6104223 (= res!2532565 (not ((_ is EmptyLang!16055) r!7292)))))

(assert (=> b!6104223 (=> (not res!2532565) (not e!3722723))))

(declare-fun b!6104224 () Bool)

(declare-fun res!2532564 () Bool)

(declare-fun e!3722720 () Bool)

(assert (=> b!6104224 (=> res!2532564 e!3722720)))

(assert (=> b!6104224 (= res!2532564 call!504788)))

(assert (=> b!6104224 (= e!3722722 e!3722720)))

(assert (=> b!6104225 (= e!3722722 call!504789)))

(assert (=> b!6104226 (= e!3722720 call!504789)))

(assert (= (and d!1913281 c!1096551) b!6104217))

(assert (= (and d!1913281 (not c!1096551)) b!6104223))

(assert (= (and b!6104223 res!2532565) b!6104219))

(assert (= (and b!6104219 c!1096554) b!6104216))

(assert (= (and b!6104219 (not c!1096554)) b!6104222))

(assert (= (and b!6104222 c!1096553) b!6104218))

(assert (= (and b!6104222 (not c!1096553)) b!6104220))

(assert (= (and b!6104218 (not res!2532566)) b!6104221))

(assert (= (and b!6104220 c!1096552) b!6104224))

(assert (= (and b!6104220 (not c!1096552)) b!6104225))

(assert (= (and b!6104224 (not res!2532564)) b!6104226))

(assert (= (or b!6104226 b!6104225) bm!504784))

(assert (= (or b!6104217 b!6104224) bm!504783))

(declare-fun m!6955860 () Bool)

(assert (=> bm!504783 m!6955860))

(declare-fun m!6955862 () Bool)

(assert (=> b!6104218 m!6955862))

(declare-fun m!6955864 () Bool)

(assert (=> b!6104221 m!6955864))

(declare-fun m!6955866 () Bool)

(assert (=> bm!504784 m!6955866))

(assert (=> b!6104042 d!1913281))

(declare-fun b!6104333 () Bool)

(declare-fun e!3722786 () Bool)

(declare-fun head!12631 (List!64466) C!32380)

(assert (=> b!6104333 (= e!3722786 (not (= (head!12631 s!2326) (c!1096515 r!7292))))))

(declare-fun b!6104334 () Bool)

(declare-fun res!2532601 () Bool)

(declare-fun e!3722784 () Bool)

(assert (=> b!6104334 (=> res!2532601 e!3722784)))

(declare-fun e!3722788 () Bool)

(assert (=> b!6104334 (= res!2532601 e!3722788)))

(declare-fun res!2532600 () Bool)

(assert (=> b!6104334 (=> (not res!2532600) (not e!3722788))))

(declare-fun lt!2329550 () Bool)

(assert (=> b!6104334 (= res!2532600 lt!2329550)))

(declare-fun b!6104335 () Bool)

(declare-fun e!3722787 () Bool)

(assert (=> b!6104335 (= e!3722784 e!3722787)))

(declare-fun res!2532595 () Bool)

(assert (=> b!6104335 (=> (not res!2532595) (not e!3722787))))

(assert (=> b!6104335 (= res!2532595 (not lt!2329550))))

(declare-fun bm!504808 () Bool)

(declare-fun call!504813 () Bool)

(assert (=> bm!504808 (= call!504813 (isEmpty!36265 s!2326))))

(declare-fun b!6104336 () Bool)

(declare-fun e!3722785 () Bool)

(assert (=> b!6104336 (= e!3722785 (= lt!2329550 call!504813))))

(declare-fun b!6104338 () Bool)

(declare-fun res!2532602 () Bool)

(assert (=> b!6104338 (=> (not res!2532602) (not e!3722788))))

(assert (=> b!6104338 (= res!2532602 (not call!504813))))

(declare-fun b!6104339 () Bool)

(assert (=> b!6104339 (= e!3722787 e!3722786)))

(declare-fun res!2532596 () Bool)

(assert (=> b!6104339 (=> res!2532596 e!3722786)))

(assert (=> b!6104339 (= res!2532596 call!504813)))

(declare-fun b!6104340 () Bool)

(declare-fun e!3722783 () Bool)

(assert (=> b!6104340 (= e!3722783 (not lt!2329550))))

(declare-fun b!6104341 () Bool)

(declare-fun e!3722789 () Bool)

(declare-fun nullable!6048 (Regex!16055) Bool)

(assert (=> b!6104341 (= e!3722789 (nullable!6048 r!7292))))

(declare-fun b!6104342 () Bool)

(assert (=> b!6104342 (= e!3722788 (= (head!12631 s!2326) (c!1096515 r!7292)))))

(declare-fun b!6104343 () Bool)

(declare-fun res!2532598 () Bool)

(assert (=> b!6104343 (=> res!2532598 e!3722784)))

(assert (=> b!6104343 (= res!2532598 (not ((_ is ElementMatch!16055) r!7292)))))

(assert (=> b!6104343 (= e!3722783 e!3722784)))

(declare-fun b!6104344 () Bool)

(declare-fun res!2532599 () Bool)

(assert (=> b!6104344 (=> res!2532599 e!3722786)))

(declare-fun tail!11716 (List!64466) List!64466)

(assert (=> b!6104344 (= res!2532599 (not (isEmpty!36265 (tail!11716 s!2326))))))

(declare-fun b!6104345 () Bool)

(assert (=> b!6104345 (= e!3722785 e!3722783)))

(declare-fun c!1096595 () Bool)

(assert (=> b!6104345 (= c!1096595 ((_ is EmptyLang!16055) r!7292))))

(declare-fun b!6104346 () Bool)

(declare-fun derivativeStep!4776 (Regex!16055 C!32380) Regex!16055)

(assert (=> b!6104346 (= e!3722789 (matchR!8238 (derivativeStep!4776 r!7292 (head!12631 s!2326)) (tail!11716 s!2326)))))

(declare-fun d!1913295 () Bool)

(assert (=> d!1913295 e!3722785))

(declare-fun c!1096594 () Bool)

(assert (=> d!1913295 (= c!1096594 ((_ is EmptyExpr!16055) r!7292))))

(assert (=> d!1913295 (= lt!2329550 e!3722789)))

(declare-fun c!1096596 () Bool)

(assert (=> d!1913295 (= c!1096596 (isEmpty!36265 s!2326))))

(assert (=> d!1913295 (validRegex!7791 r!7292)))

(assert (=> d!1913295 (= (matchR!8238 r!7292 s!2326) lt!2329550)))

(declare-fun b!6104337 () Bool)

(declare-fun res!2532597 () Bool)

(assert (=> b!6104337 (=> (not res!2532597) (not e!3722788))))

(assert (=> b!6104337 (= res!2532597 (isEmpty!36265 (tail!11716 s!2326)))))

(assert (= (and d!1913295 c!1096596) b!6104341))

(assert (= (and d!1913295 (not c!1096596)) b!6104346))

(assert (= (and d!1913295 c!1096594) b!6104336))

(assert (= (and d!1913295 (not c!1096594)) b!6104345))

(assert (= (and b!6104345 c!1096595) b!6104340))

(assert (= (and b!6104345 (not c!1096595)) b!6104343))

(assert (= (and b!6104343 (not res!2532598)) b!6104334))

(assert (= (and b!6104334 res!2532600) b!6104338))

(assert (= (and b!6104338 res!2532602) b!6104337))

(assert (= (and b!6104337 res!2532597) b!6104342))

(assert (= (and b!6104334 (not res!2532601)) b!6104335))

(assert (= (and b!6104335 res!2532595) b!6104339))

(assert (= (and b!6104339 (not res!2532596)) b!6104344))

(assert (= (and b!6104344 (not res!2532599)) b!6104333))

(assert (= (or b!6104336 b!6104338 b!6104339) bm!504808))

(assert (=> bm!504808 m!6955860))

(declare-fun m!6955908 () Bool)

(assert (=> b!6104341 m!6955908))

(declare-fun m!6955910 () Bool)

(assert (=> b!6104337 m!6955910))

(assert (=> b!6104337 m!6955910))

(declare-fun m!6955912 () Bool)

(assert (=> b!6104337 m!6955912))

(declare-fun m!6955914 () Bool)

(assert (=> b!6104346 m!6955914))

(assert (=> b!6104346 m!6955914))

(declare-fun m!6955922 () Bool)

(assert (=> b!6104346 m!6955922))

(assert (=> b!6104346 m!6955910))

(assert (=> b!6104346 m!6955922))

(assert (=> b!6104346 m!6955910))

(declare-fun m!6955924 () Bool)

(assert (=> b!6104346 m!6955924))

(assert (=> b!6104344 m!6955910))

(assert (=> b!6104344 m!6955910))

(assert (=> b!6104344 m!6955912))

(assert (=> b!6104333 m!6955914))

(assert (=> b!6104342 m!6955914))

(assert (=> d!1913295 m!6955860))

(assert (=> d!1913295 m!6955762))

(assert (=> b!6104042 d!1913295))

(declare-fun d!1913315 () Bool)

(assert (=> d!1913315 (= (matchR!8238 r!7292 s!2326) (matchRSpec!3156 r!7292 s!2326))))

(declare-fun lt!2329556 () Unit!157381)

(declare-fun choose!45382 (Regex!16055 List!64466) Unit!157381)

(assert (=> d!1913315 (= lt!2329556 (choose!45382 r!7292 s!2326))))

(assert (=> d!1913315 (validRegex!7791 r!7292)))

(assert (=> d!1913315 (= (mainMatchTheorem!3156 r!7292 s!2326) lt!2329556)))

(declare-fun bs!1515712 () Bool)

(assert (= bs!1515712 d!1913315))

(assert (=> bs!1515712 m!6955790))

(assert (=> bs!1515712 m!6955788))

(declare-fun m!6955932 () Bool)

(assert (=> bs!1515712 m!6955932))

(assert (=> bs!1515712 m!6955762))

(assert (=> b!6104042 d!1913315))

(declare-fun b!6104485 () Bool)

(declare-fun res!2532639 () Bool)

(declare-fun e!3722872 () Bool)

(assert (=> b!6104485 (=> (not res!2532639) (not e!3722872))))

(declare-fun lt!2329570 () Option!15946)

(declare-fun get!22185 (Option!15946) tuple2!66068)

(assert (=> b!6104485 (= res!2532639 (matchR!8238 (regOne!32622 r!7292) (_1!36337 (get!22185 lt!2329570))))))

(declare-fun b!6104486 () Bool)

(declare-fun res!2532637 () Bool)

(assert (=> b!6104486 (=> (not res!2532637) (not e!3722872))))

(assert (=> b!6104486 (= res!2532637 (matchR!8238 (regTwo!32622 r!7292) (_2!36337 (get!22185 lt!2329570))))))

(declare-fun b!6104487 () Bool)

(declare-fun lt!2329569 () Unit!157381)

(declare-fun lt!2329571 () Unit!157381)

(assert (=> b!6104487 (= lt!2329569 lt!2329571)))

(declare-fun ++!14142 (List!64466 List!64466) List!64466)

(assert (=> b!6104487 (= (++!14142 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (t!377917 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2237 (List!64466 C!32380 List!64466 List!64466) Unit!157381)

(assert (=> b!6104487 (= lt!2329571 (lemmaMoveElementToOtherListKeepsConcatEq!2237 Nil!64342 (h!70790 s!2326) (t!377917 s!2326) s!2326))))

(declare-fun e!3722868 () Option!15946)

(assert (=> b!6104487 (= e!3722868 (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (t!377917 s!2326) s!2326))))

(declare-fun b!6104488 () Bool)

(assert (=> b!6104488 (= e!3722868 None!15945)))

(declare-fun b!6104489 () Bool)

(assert (=> b!6104489 (= e!3722872 (= (++!14142 (_1!36337 (get!22185 lt!2329570)) (_2!36337 (get!22185 lt!2329570))) s!2326))))

(declare-fun d!1913319 () Bool)

(declare-fun e!3722870 () Bool)

(assert (=> d!1913319 e!3722870))

(declare-fun res!2532640 () Bool)

(assert (=> d!1913319 (=> res!2532640 e!3722870)))

(assert (=> d!1913319 (= res!2532640 e!3722872)))

(declare-fun res!2532638 () Bool)

(assert (=> d!1913319 (=> (not res!2532638) (not e!3722872))))

(assert (=> d!1913319 (= res!2532638 (isDefined!12649 lt!2329570))))

(declare-fun e!3722869 () Option!15946)

(assert (=> d!1913319 (= lt!2329570 e!3722869)))

(declare-fun c!1096623 () Bool)

(declare-fun e!3722871 () Bool)

(assert (=> d!1913319 (= c!1096623 e!3722871)))

(declare-fun res!2532641 () Bool)

(assert (=> d!1913319 (=> (not res!2532641) (not e!3722871))))

(assert (=> d!1913319 (= res!2532641 (matchR!8238 (regOne!32622 r!7292) Nil!64342))))

(assert (=> d!1913319 (validRegex!7791 (regOne!32622 r!7292))))

(assert (=> d!1913319 (= (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) Nil!64342 s!2326 s!2326) lt!2329570)))

(declare-fun b!6104490 () Bool)

(assert (=> b!6104490 (= e!3722870 (not (isDefined!12649 lt!2329570)))))

(declare-fun b!6104491 () Bool)

(assert (=> b!6104491 (= e!3722871 (matchR!8238 (regTwo!32622 r!7292) s!2326))))

(declare-fun b!6104492 () Bool)

(assert (=> b!6104492 (= e!3722869 (Some!15945 (tuple2!66069 Nil!64342 s!2326)))))

(declare-fun b!6104493 () Bool)

(assert (=> b!6104493 (= e!3722869 e!3722868)))

(declare-fun c!1096622 () Bool)

(assert (=> b!6104493 (= c!1096622 ((_ is Nil!64342) s!2326))))

(assert (= (and d!1913319 res!2532641) b!6104491))

(assert (= (and d!1913319 c!1096623) b!6104492))

(assert (= (and d!1913319 (not c!1096623)) b!6104493))

(assert (= (and b!6104493 c!1096622) b!6104488))

(assert (= (and b!6104493 (not c!1096622)) b!6104487))

(assert (= (and d!1913319 res!2532638) b!6104485))

(assert (= (and b!6104485 res!2532639) b!6104486))

(assert (= (and b!6104486 res!2532637) b!6104489))

(assert (= (and d!1913319 (not res!2532640)) b!6104490))

(declare-fun m!6955962 () Bool)

(assert (=> b!6104486 m!6955962))

(declare-fun m!6955964 () Bool)

(assert (=> b!6104486 m!6955964))

(declare-fun m!6955966 () Bool)

(assert (=> b!6104491 m!6955966))

(declare-fun m!6955968 () Bool)

(assert (=> b!6104487 m!6955968))

(assert (=> b!6104487 m!6955968))

(declare-fun m!6955970 () Bool)

(assert (=> b!6104487 m!6955970))

(declare-fun m!6955972 () Bool)

(assert (=> b!6104487 m!6955972))

(assert (=> b!6104487 m!6955968))

(declare-fun m!6955974 () Bool)

(assert (=> b!6104487 m!6955974))

(declare-fun m!6955976 () Bool)

(assert (=> b!6104490 m!6955976))

(assert (=> b!6104485 m!6955962))

(declare-fun m!6955978 () Bool)

(assert (=> b!6104485 m!6955978))

(assert (=> d!1913319 m!6955976))

(declare-fun m!6955980 () Bool)

(assert (=> d!1913319 m!6955980))

(declare-fun m!6955982 () Bool)

(assert (=> d!1913319 m!6955982))

(assert (=> b!6104489 m!6955962))

(declare-fun m!6955984 () Bool)

(assert (=> b!6104489 m!6955984))

(assert (=> b!6104050 d!1913319))

(declare-fun d!1913323 () Bool)

(declare-fun choose!45383 (Int) Bool)

(assert (=> d!1913323 (= (Exists!3125 lambda!332563) (choose!45383 lambda!332563))))

(declare-fun bs!1515722 () Bool)

(assert (= bs!1515722 d!1913323))

(declare-fun m!6955986 () Bool)

(assert (=> bs!1515722 m!6955986))

(assert (=> b!6104050 d!1913323))

(declare-fun d!1913325 () Bool)

(assert (=> d!1913325 (= (Exists!3125 lambda!332562) (choose!45383 lambda!332562))))

(declare-fun bs!1515723 () Bool)

(assert (= bs!1515723 d!1913325))

(declare-fun m!6955988 () Bool)

(assert (=> bs!1515723 m!6955988))

(assert (=> b!6104050 d!1913325))

(declare-fun bs!1515724 () Bool)

(declare-fun d!1913327 () Bool)

(assert (= bs!1515724 (and d!1913327 b!6104050)))

(declare-fun lambda!332601 () Int)

(assert (=> bs!1515724 (= lambda!332601 lambda!332562)))

(assert (=> bs!1515724 (not (= lambda!332601 lambda!332563))))

(declare-fun bs!1515725 () Bool)

(assert (= bs!1515725 (and d!1913327 b!6104226)))

(assert (=> bs!1515725 (not (= lambda!332601 lambda!332583))))

(declare-fun bs!1515726 () Bool)

(assert (= bs!1515726 (and d!1913327 b!6104225)))

(assert (=> bs!1515726 (not (= lambda!332601 lambda!332585))))

(assert (=> d!1913327 true))

(assert (=> d!1913327 true))

(assert (=> d!1913327 true))

(assert (=> d!1913327 (= (isDefined!12649 (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) Nil!64342 s!2326 s!2326)) (Exists!3125 lambda!332601))))

(declare-fun lt!2329574 () Unit!157381)

(declare-fun choose!45384 (Regex!16055 Regex!16055 List!64466) Unit!157381)

(assert (=> d!1913327 (= lt!2329574 (choose!45384 (regOne!32622 r!7292) (regTwo!32622 r!7292) s!2326))))

(assert (=> d!1913327 (validRegex!7791 (regOne!32622 r!7292))))

(assert (=> d!1913327 (= (lemmaFindConcatSeparationEquivalentToExists!2124 (regOne!32622 r!7292) (regTwo!32622 r!7292) s!2326) lt!2329574)))

(declare-fun bs!1515727 () Bool)

(assert (= bs!1515727 d!1913327))

(assert (=> bs!1515727 m!6955982))

(assert (=> bs!1515727 m!6955766))

(assert (=> bs!1515727 m!6955768))

(declare-fun m!6955990 () Bool)

(assert (=> bs!1515727 m!6955990))

(assert (=> bs!1515727 m!6955766))

(declare-fun m!6955992 () Bool)

(assert (=> bs!1515727 m!6955992))

(assert (=> b!6104050 d!1913327))

(declare-fun bs!1515728 () Bool)

(declare-fun d!1913329 () Bool)

(assert (= bs!1515728 (and d!1913329 b!6104050)))

(declare-fun lambda!332606 () Int)

(assert (=> bs!1515728 (= lambda!332606 lambda!332562)))

(declare-fun bs!1515729 () Bool)

(assert (= bs!1515729 (and d!1913329 d!1913327)))

(assert (=> bs!1515729 (= lambda!332606 lambda!332601)))

(declare-fun bs!1515730 () Bool)

(assert (= bs!1515730 (and d!1913329 b!6104226)))

(assert (=> bs!1515730 (not (= lambda!332606 lambda!332583))))

(declare-fun bs!1515731 () Bool)

(assert (= bs!1515731 (and d!1913329 b!6104225)))

(assert (=> bs!1515731 (not (= lambda!332606 lambda!332585))))

(assert (=> bs!1515728 (not (= lambda!332606 lambda!332563))))

(assert (=> d!1913329 true))

(assert (=> d!1913329 true))

(assert (=> d!1913329 true))

(declare-fun lambda!332607 () Int)

(assert (=> bs!1515728 (not (= lambda!332607 lambda!332562))))

(assert (=> bs!1515729 (not (= lambda!332607 lambda!332601))))

(assert (=> bs!1515730 (not (= lambda!332607 lambda!332583))))

(declare-fun bs!1515732 () Bool)

(assert (= bs!1515732 d!1913329))

(assert (=> bs!1515732 (not (= lambda!332607 lambda!332606))))

(assert (=> bs!1515731 (= lambda!332607 lambda!332585)))

(assert (=> bs!1515728 (= lambda!332607 lambda!332563)))

(assert (=> d!1913329 true))

(assert (=> d!1913329 true))

(assert (=> d!1913329 true))

(assert (=> d!1913329 (= (Exists!3125 lambda!332606) (Exists!3125 lambda!332607))))

(declare-fun lt!2329577 () Unit!157381)

(declare-fun choose!45385 (Regex!16055 Regex!16055 List!64466) Unit!157381)

(assert (=> d!1913329 (= lt!2329577 (choose!45385 (regOne!32622 r!7292) (regTwo!32622 r!7292) s!2326))))

(assert (=> d!1913329 (validRegex!7791 (regOne!32622 r!7292))))

(assert (=> d!1913329 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1662 (regOne!32622 r!7292) (regTwo!32622 r!7292) s!2326) lt!2329577)))

(declare-fun m!6955994 () Bool)

(assert (=> bs!1515732 m!6955994))

(declare-fun m!6955996 () Bool)

(assert (=> bs!1515732 m!6955996))

(declare-fun m!6955998 () Bool)

(assert (=> bs!1515732 m!6955998))

(assert (=> bs!1515732 m!6955982))

(assert (=> b!6104050 d!1913329))

(declare-fun d!1913331 () Bool)

(declare-fun isEmpty!36266 (Option!15946) Bool)

(assert (=> d!1913331 (= (isDefined!12649 (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) Nil!64342 s!2326 s!2326)) (not (isEmpty!36266 (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) Nil!64342 s!2326 s!2326))))))

(declare-fun bs!1515733 () Bool)

(assert (= bs!1515733 d!1913331))

(assert (=> bs!1515733 m!6955766))

(declare-fun m!6956000 () Bool)

(assert (=> bs!1515733 m!6956000))

(assert (=> b!6104050 d!1913331))

(declare-fun d!1913333 () Bool)

(declare-fun e!3722892 () Bool)

(assert (=> d!1913333 e!3722892))

(declare-fun res!2532659 () Bool)

(assert (=> d!1913333 (=> (not res!2532659) (not e!3722892))))

(declare-fun lt!2329580 () Regex!16055)

(assert (=> d!1913333 (= res!2532659 (validRegex!7791 lt!2329580))))

(declare-fun e!3722893 () Regex!16055)

(assert (=> d!1913333 (= lt!2329580 e!3722893)))

(declare-fun c!1096634 () Bool)

(declare-fun e!3722895 () Bool)

(assert (=> d!1913333 (= c!1096634 e!3722895)))

(declare-fun res!2532658 () Bool)

(assert (=> d!1913333 (=> (not res!2532658) (not e!3722895))))

(assert (=> d!1913333 (= res!2532658 ((_ is Cons!64340) (exprs!5939 (h!70789 zl!343))))))

(declare-fun lambda!332610 () Int)

(declare-fun forall!15176 (List!64464 Int) Bool)

(assert (=> d!1913333 (forall!15176 (exprs!5939 (h!70789 zl!343)) lambda!332610)))

(assert (=> d!1913333 (= (generalisedConcat!1652 (exprs!5939 (h!70789 zl!343))) lt!2329580)))

(declare-fun b!6104526 () Bool)

(assert (=> b!6104526 (= e!3722895 (isEmpty!36262 (t!377915 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6104527 () Bool)

(declare-fun e!3722896 () Bool)

(assert (=> b!6104527 (= e!3722892 e!3722896)))

(declare-fun c!1096635 () Bool)

(assert (=> b!6104527 (= c!1096635 (isEmpty!36262 (exprs!5939 (h!70789 zl!343))))))

(declare-fun b!6104528 () Bool)

(declare-fun e!3722891 () Regex!16055)

(assert (=> b!6104528 (= e!3722891 EmptyExpr!16055)))

(declare-fun b!6104529 () Bool)

(declare-fun e!3722894 () Bool)

(declare-fun isConcat!995 (Regex!16055) Bool)

(assert (=> b!6104529 (= e!3722894 (isConcat!995 lt!2329580))))

(declare-fun b!6104530 () Bool)

(declare-fun isEmptyExpr!1472 (Regex!16055) Bool)

(assert (=> b!6104530 (= e!3722896 (isEmptyExpr!1472 lt!2329580))))

(declare-fun b!6104531 () Bool)

(assert (=> b!6104531 (= e!3722891 (Concat!24900 (h!70788 (exprs!5939 (h!70789 zl!343))) (generalisedConcat!1652 (t!377915 (exprs!5939 (h!70789 zl!343))))))))

(declare-fun b!6104532 () Bool)

(declare-fun head!12632 (List!64464) Regex!16055)

(assert (=> b!6104532 (= e!3722894 (= lt!2329580 (head!12632 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6104533 () Bool)

(assert (=> b!6104533 (= e!3722896 e!3722894)))

(declare-fun c!1096632 () Bool)

(declare-fun tail!11717 (List!64464) List!64464)

(assert (=> b!6104533 (= c!1096632 (isEmpty!36262 (tail!11717 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6104534 () Bool)

(assert (=> b!6104534 (= e!3722893 (h!70788 (exprs!5939 (h!70789 zl!343))))))

(declare-fun b!6104535 () Bool)

(assert (=> b!6104535 (= e!3722893 e!3722891)))

(declare-fun c!1096633 () Bool)

(assert (=> b!6104535 (= c!1096633 ((_ is Cons!64340) (exprs!5939 (h!70789 zl!343))))))

(assert (= (and d!1913333 res!2532658) b!6104526))

(assert (= (and d!1913333 c!1096634) b!6104534))

(assert (= (and d!1913333 (not c!1096634)) b!6104535))

(assert (= (and b!6104535 c!1096633) b!6104531))

(assert (= (and b!6104535 (not c!1096633)) b!6104528))

(assert (= (and d!1913333 res!2532659) b!6104527))

(assert (= (and b!6104527 c!1096635) b!6104530))

(assert (= (and b!6104527 (not c!1096635)) b!6104533))

(assert (= (and b!6104533 c!1096632) b!6104532))

(assert (= (and b!6104533 (not c!1096632)) b!6104529))

(declare-fun m!6956002 () Bool)

(assert (=> b!6104527 m!6956002))

(declare-fun m!6956004 () Bool)

(assert (=> d!1913333 m!6956004))

(declare-fun m!6956006 () Bool)

(assert (=> d!1913333 m!6956006))

(declare-fun m!6956008 () Bool)

(assert (=> b!6104530 m!6956008))

(declare-fun m!6956010 () Bool)

(assert (=> b!6104532 m!6956010))

(declare-fun m!6956012 () Bool)

(assert (=> b!6104533 m!6956012))

(assert (=> b!6104533 m!6956012))

(declare-fun m!6956014 () Bool)

(assert (=> b!6104533 m!6956014))

(declare-fun m!6956016 () Bool)

(assert (=> b!6104531 m!6956016))

(declare-fun m!6956018 () Bool)

(assert (=> b!6104529 m!6956018))

(assert (=> b!6104526 m!6955786))

(assert (=> b!6104041 d!1913333))

(declare-fun bs!1515734 () Bool)

(declare-fun d!1913335 () Bool)

(assert (= bs!1515734 (and d!1913335 d!1913333)))

(declare-fun lambda!332613 () Int)

(assert (=> bs!1515734 (= lambda!332613 lambda!332610)))

(assert (=> d!1913335 (= (inv!83384 (h!70789 zl!343)) (forall!15176 (exprs!5939 (h!70789 zl!343)) lambda!332613))))

(declare-fun bs!1515735 () Bool)

(assert (= bs!1515735 d!1913335))

(declare-fun m!6956020 () Bool)

(assert (=> bs!1515735 m!6956020))

(assert (=> b!6104049 d!1913335))

(declare-fun bs!1515736 () Bool)

(declare-fun d!1913337 () Bool)

(assert (= bs!1515736 (and d!1913337 d!1913333)))

(declare-fun lambda!332616 () Int)

(assert (=> bs!1515736 (= lambda!332616 lambda!332610)))

(declare-fun bs!1515737 () Bool)

(assert (= bs!1515737 (and d!1913337 d!1913335)))

(assert (=> bs!1515737 (= lambda!332616 lambda!332613)))

(declare-fun b!6104556 () Bool)

(declare-fun e!3722911 () Bool)

(declare-fun lt!2329583 () Regex!16055)

(declare-fun isEmptyLang!1482 (Regex!16055) Bool)

(assert (=> b!6104556 (= e!3722911 (isEmptyLang!1482 lt!2329583))))

(declare-fun b!6104557 () Bool)

(declare-fun e!3722912 () Bool)

(assert (=> b!6104557 (= e!3722911 e!3722912)))

(declare-fun c!1096645 () Bool)

(assert (=> b!6104557 (= c!1096645 (isEmpty!36262 (tail!11717 (unfocusZipperList!1476 zl!343))))))

(declare-fun b!6104558 () Bool)

(declare-fun e!3722914 () Regex!16055)

(declare-fun e!3722910 () Regex!16055)

(assert (=> b!6104558 (= e!3722914 e!3722910)))

(declare-fun c!1096647 () Bool)

(assert (=> b!6104558 (= c!1096647 ((_ is Cons!64340) (unfocusZipperList!1476 zl!343)))))

(declare-fun b!6104559 () Bool)

(declare-fun isUnion!912 (Regex!16055) Bool)

(assert (=> b!6104559 (= e!3722912 (isUnion!912 lt!2329583))))

(declare-fun b!6104560 () Bool)

(assert (=> b!6104560 (= e!3722910 (Union!16055 (h!70788 (unfocusZipperList!1476 zl!343)) (generalisedUnion!1899 (t!377915 (unfocusZipperList!1476 zl!343)))))))

(declare-fun e!3722909 () Bool)

(assert (=> d!1913337 e!3722909))

(declare-fun res!2532665 () Bool)

(assert (=> d!1913337 (=> (not res!2532665) (not e!3722909))))

(assert (=> d!1913337 (= res!2532665 (validRegex!7791 lt!2329583))))

(assert (=> d!1913337 (= lt!2329583 e!3722914)))

(declare-fun c!1096644 () Bool)

(declare-fun e!3722913 () Bool)

(assert (=> d!1913337 (= c!1096644 e!3722913)))

(declare-fun res!2532664 () Bool)

(assert (=> d!1913337 (=> (not res!2532664) (not e!3722913))))

(assert (=> d!1913337 (= res!2532664 ((_ is Cons!64340) (unfocusZipperList!1476 zl!343)))))

(assert (=> d!1913337 (forall!15176 (unfocusZipperList!1476 zl!343) lambda!332616)))

(assert (=> d!1913337 (= (generalisedUnion!1899 (unfocusZipperList!1476 zl!343)) lt!2329583)))

(declare-fun b!6104561 () Bool)

(assert (=> b!6104561 (= e!3722909 e!3722911)))

(declare-fun c!1096646 () Bool)

(assert (=> b!6104561 (= c!1096646 (isEmpty!36262 (unfocusZipperList!1476 zl!343)))))

(declare-fun b!6104562 () Bool)

(assert (=> b!6104562 (= e!3722912 (= lt!2329583 (head!12632 (unfocusZipperList!1476 zl!343))))))

(declare-fun b!6104563 () Bool)

(assert (=> b!6104563 (= e!3722910 EmptyLang!16055)))

(declare-fun b!6104564 () Bool)

(assert (=> b!6104564 (= e!3722914 (h!70788 (unfocusZipperList!1476 zl!343)))))

(declare-fun b!6104565 () Bool)

(assert (=> b!6104565 (= e!3722913 (isEmpty!36262 (t!377915 (unfocusZipperList!1476 zl!343))))))

(assert (= (and d!1913337 res!2532664) b!6104565))

(assert (= (and d!1913337 c!1096644) b!6104564))

(assert (= (and d!1913337 (not c!1096644)) b!6104558))

(assert (= (and b!6104558 c!1096647) b!6104560))

(assert (= (and b!6104558 (not c!1096647)) b!6104563))

(assert (= (and d!1913337 res!2532665) b!6104561))

(assert (= (and b!6104561 c!1096646) b!6104556))

(assert (= (and b!6104561 (not c!1096646)) b!6104557))

(assert (= (and b!6104557 c!1096645) b!6104562))

(assert (= (and b!6104557 (not c!1096645)) b!6104559))

(declare-fun m!6956022 () Bool)

(assert (=> b!6104560 m!6956022))

(declare-fun m!6956024 () Bool)

(assert (=> b!6104559 m!6956024))

(assert (=> b!6104561 m!6955778))

(declare-fun m!6956026 () Bool)

(assert (=> b!6104561 m!6956026))

(declare-fun m!6956028 () Bool)

(assert (=> b!6104565 m!6956028))

(declare-fun m!6956030 () Bool)

(assert (=> d!1913337 m!6956030))

(assert (=> d!1913337 m!6955778))

(declare-fun m!6956032 () Bool)

(assert (=> d!1913337 m!6956032))

(assert (=> b!6104562 m!6955778))

(declare-fun m!6956034 () Bool)

(assert (=> b!6104562 m!6956034))

(declare-fun m!6956036 () Bool)

(assert (=> b!6104556 m!6956036))

(assert (=> b!6104557 m!6955778))

(declare-fun m!6956038 () Bool)

(assert (=> b!6104557 m!6956038))

(assert (=> b!6104557 m!6956038))

(declare-fun m!6956040 () Bool)

(assert (=> b!6104557 m!6956040))

(assert (=> b!6104048 d!1913337))

(declare-fun bs!1515738 () Bool)

(declare-fun d!1913339 () Bool)

(assert (= bs!1515738 (and d!1913339 d!1913333)))

(declare-fun lambda!332619 () Int)

(assert (=> bs!1515738 (= lambda!332619 lambda!332610)))

(declare-fun bs!1515739 () Bool)

(assert (= bs!1515739 (and d!1913339 d!1913335)))

(assert (=> bs!1515739 (= lambda!332619 lambda!332613)))

(declare-fun bs!1515740 () Bool)

(assert (= bs!1515740 (and d!1913339 d!1913337)))

(assert (=> bs!1515740 (= lambda!332619 lambda!332616)))

(declare-fun lt!2329586 () List!64464)

(assert (=> d!1913339 (forall!15176 lt!2329586 lambda!332619)))

(declare-fun e!3722917 () List!64464)

(assert (=> d!1913339 (= lt!2329586 e!3722917)))

(declare-fun c!1096650 () Bool)

(assert (=> d!1913339 (= c!1096650 ((_ is Cons!64341) zl!343))))

(assert (=> d!1913339 (= (unfocusZipperList!1476 zl!343) lt!2329586)))

(declare-fun b!6104570 () Bool)

(assert (=> b!6104570 (= e!3722917 (Cons!64340 (generalisedConcat!1652 (exprs!5939 (h!70789 zl!343))) (unfocusZipperList!1476 (t!377916 zl!343))))))

(declare-fun b!6104571 () Bool)

(assert (=> b!6104571 (= e!3722917 Nil!64340)))

(assert (= (and d!1913339 c!1096650) b!6104570))

(assert (= (and d!1913339 (not c!1096650)) b!6104571))

(declare-fun m!6956042 () Bool)

(assert (=> d!1913339 m!6956042))

(assert (=> b!6104570 m!6955776))

(declare-fun m!6956044 () Bool)

(assert (=> b!6104570 m!6956044))

(assert (=> b!6104048 d!1913339))

(declare-fun bs!1515741 () Bool)

(declare-fun d!1913341 () Bool)

(assert (= bs!1515741 (and d!1913341 d!1913333)))

(declare-fun lambda!332620 () Int)

(assert (=> bs!1515741 (= lambda!332620 lambda!332610)))

(declare-fun bs!1515742 () Bool)

(assert (= bs!1515742 (and d!1913341 d!1913335)))

(assert (=> bs!1515742 (= lambda!332620 lambda!332613)))

(declare-fun bs!1515743 () Bool)

(assert (= bs!1515743 (and d!1913341 d!1913337)))

(assert (=> bs!1515743 (= lambda!332620 lambda!332616)))

(declare-fun bs!1515744 () Bool)

(assert (= bs!1515744 (and d!1913341 d!1913339)))

(assert (=> bs!1515744 (= lambda!332620 lambda!332619)))

(assert (=> d!1913341 (= (inv!83384 setElem!41246) (forall!15176 (exprs!5939 setElem!41246) lambda!332620))))

(declare-fun bs!1515745 () Bool)

(assert (= bs!1515745 d!1913341))

(declare-fun m!6956046 () Bool)

(assert (=> bs!1515745 m!6956046))

(assert (=> setNonEmpty!41246 d!1913341))

(declare-fun d!1913343 () Bool)

(declare-fun e!3722920 () Bool)

(assert (=> d!1913343 e!3722920))

(declare-fun res!2532668 () Bool)

(assert (=> d!1913343 (=> (not res!2532668) (not e!3722920))))

(declare-fun lt!2329589 () List!64465)

(declare-fun noDuplicate!1902 (List!64465) Bool)

(assert (=> d!1913343 (= res!2532668 (noDuplicate!1902 lt!2329589))))

(declare-fun choose!45386 ((InoxSet Context!10878)) List!64465)

(assert (=> d!1913343 (= lt!2329589 (choose!45386 z!1189))))

(assert (=> d!1913343 (= (toList!9839 z!1189) lt!2329589)))

(declare-fun b!6104574 () Bool)

(declare-fun content!11935 (List!64465) (InoxSet Context!10878))

(assert (=> b!6104574 (= e!3722920 (= (content!11935 lt!2329589) z!1189))))

(assert (= (and d!1913343 res!2532668) b!6104574))

(declare-fun m!6956048 () Bool)

(assert (=> d!1913343 m!6956048))

(declare-fun m!6956050 () Bool)

(assert (=> d!1913343 m!6956050))

(declare-fun m!6956052 () Bool)

(assert (=> b!6104574 m!6956052))

(assert (=> b!6104038 d!1913343))

(declare-fun b!6104593 () Bool)

(declare-fun e!3722940 () Bool)

(declare-fun e!3722941 () Bool)

(assert (=> b!6104593 (= e!3722940 e!3722941)))

(declare-fun res!2532679 () Bool)

(assert (=> b!6104593 (=> (not res!2532679) (not e!3722941))))

(declare-fun call!504831 () Bool)

(assert (=> b!6104593 (= res!2532679 call!504831)))

(declare-fun b!6104594 () Bool)

(declare-fun res!2532682 () Bool)

(declare-fun e!3722937 () Bool)

(assert (=> b!6104594 (=> (not res!2532682) (not e!3722937))))

(assert (=> b!6104594 (= res!2532682 call!504831)))

(declare-fun e!3722939 () Bool)

(assert (=> b!6104594 (= e!3722939 e!3722937)))

(declare-fun b!6104595 () Bool)

(declare-fun e!3722935 () Bool)

(declare-fun call!504830 () Bool)

(assert (=> b!6104595 (= e!3722935 call!504830)))

(declare-fun b!6104596 () Bool)

(declare-fun res!2532681 () Bool)

(assert (=> b!6104596 (=> res!2532681 e!3722940)))

(assert (=> b!6104596 (= res!2532681 (not ((_ is Concat!24900) r!7292)))))

(assert (=> b!6104596 (= e!3722939 e!3722940)))

(declare-fun b!6104597 () Bool)

(declare-fun e!3722936 () Bool)

(declare-fun e!3722938 () Bool)

(assert (=> b!6104597 (= e!3722936 e!3722938)))

(declare-fun c!1096655 () Bool)

(assert (=> b!6104597 (= c!1096655 ((_ is Star!16055) r!7292))))

(declare-fun c!1096656 () Bool)

(declare-fun bm!504824 () Bool)

(assert (=> bm!504824 (= call!504830 (validRegex!7791 (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))))))

(declare-fun b!6104598 () Bool)

(assert (=> b!6104598 (= e!3722938 e!3722939)))

(assert (=> b!6104598 (= c!1096656 ((_ is Union!16055) r!7292))))

(declare-fun b!6104599 () Bool)

(assert (=> b!6104599 (= e!3722938 e!3722935)))

(declare-fun res!2532680 () Bool)

(assert (=> b!6104599 (= res!2532680 (not (nullable!6048 (reg!16384 r!7292))))))

(assert (=> b!6104599 (=> (not res!2532680) (not e!3722935))))

(declare-fun bm!504825 () Bool)

(assert (=> bm!504825 (= call!504831 call!504830)))

(declare-fun bm!504826 () Bool)

(declare-fun call!504829 () Bool)

(assert (=> bm!504826 (= call!504829 (validRegex!7791 (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))))))

(declare-fun b!6104601 () Bool)

(assert (=> b!6104601 (= e!3722941 call!504829)))

(declare-fun d!1913345 () Bool)

(declare-fun res!2532683 () Bool)

(assert (=> d!1913345 (=> res!2532683 e!3722936)))

(assert (=> d!1913345 (= res!2532683 ((_ is ElementMatch!16055) r!7292))))

(assert (=> d!1913345 (= (validRegex!7791 r!7292) e!3722936)))

(declare-fun b!6104600 () Bool)

(assert (=> b!6104600 (= e!3722937 call!504829)))

(assert (= (and d!1913345 (not res!2532683)) b!6104597))

(assert (= (and b!6104597 c!1096655) b!6104599))

(assert (= (and b!6104597 (not c!1096655)) b!6104598))

(assert (= (and b!6104599 res!2532680) b!6104595))

(assert (= (and b!6104598 c!1096656) b!6104594))

(assert (= (and b!6104598 (not c!1096656)) b!6104596))

(assert (= (and b!6104594 res!2532682) b!6104600))

(assert (= (and b!6104596 (not res!2532681)) b!6104593))

(assert (= (and b!6104593 res!2532679) b!6104601))

(assert (= (or b!6104600 b!6104601) bm!504826))

(assert (= (or b!6104594 b!6104593) bm!504825))

(assert (= (or b!6104595 bm!504825) bm!504824))

(declare-fun m!6956054 () Bool)

(assert (=> bm!504824 m!6956054))

(declare-fun m!6956056 () Bool)

(assert (=> b!6104599 m!6956056))

(declare-fun m!6956058 () Bool)

(assert (=> bm!504826 m!6956058))

(assert (=> start!610278 d!1913345))

(declare-fun d!1913347 () Bool)

(declare-fun lt!2329592 () Regex!16055)

(assert (=> d!1913347 (validRegex!7791 lt!2329592)))

(assert (=> d!1913347 (= lt!2329592 (generalisedUnion!1899 (unfocusZipperList!1476 zl!343)))))

(assert (=> d!1913347 (= (unfocusZipper!1797 zl!343) lt!2329592)))

(declare-fun bs!1515746 () Bool)

(assert (= bs!1515746 d!1913347))

(declare-fun m!6956060 () Bool)

(assert (=> bs!1515746 m!6956060))

(assert (=> bs!1515746 m!6955778))

(assert (=> bs!1515746 m!6955778))

(assert (=> bs!1515746 m!6955780))

(assert (=> b!6104047 d!1913347))

(declare-fun d!1913349 () Bool)

(assert (=> d!1913349 (= (isEmpty!36261 (t!377916 zl!343)) ((_ is Nil!64341) (t!377916 zl!343)))))

(assert (=> b!6104037 d!1913349))

(declare-fun bs!1515747 () Bool)

(declare-fun d!1913351 () Bool)

(assert (= bs!1515747 (and d!1913351 d!1913339)))

(declare-fun lambda!332621 () Int)

(assert (=> bs!1515747 (= lambda!332621 lambda!332619)))

(declare-fun bs!1515748 () Bool)

(assert (= bs!1515748 (and d!1913351 d!1913335)))

(assert (=> bs!1515748 (= lambda!332621 lambda!332613)))

(declare-fun bs!1515749 () Bool)

(assert (= bs!1515749 (and d!1913351 d!1913337)))

(assert (=> bs!1515749 (= lambda!332621 lambda!332616)))

(declare-fun bs!1515750 () Bool)

(assert (= bs!1515750 (and d!1913351 d!1913341)))

(assert (=> bs!1515750 (= lambda!332621 lambda!332620)))

(declare-fun bs!1515751 () Bool)

(assert (= bs!1515751 (and d!1913351 d!1913333)))

(assert (=> bs!1515751 (= lambda!332621 lambda!332610)))

(assert (=> d!1913351 (= (inv!83384 lt!2329513) (forall!15176 (exprs!5939 lt!2329513) lambda!332621))))

(declare-fun bs!1515752 () Bool)

(assert (= bs!1515752 d!1913351))

(declare-fun m!6956062 () Bool)

(assert (=> bs!1515752 m!6956062))

(assert (=> b!6104046 d!1913351))

(declare-fun b!6104625 () Bool)

(declare-fun e!3722956 () (InoxSet Context!10878))

(declare-fun call!504848 () (InoxSet Context!10878))

(assert (=> b!6104625 (= e!3722956 call!504848)))

(declare-fun b!6104626 () Bool)

(declare-fun e!3722959 () (InoxSet Context!10878))

(declare-fun e!3722958 () (InoxSet Context!10878))

(assert (=> b!6104626 (= e!3722959 e!3722958)))

(declare-fun c!1096670 () Bool)

(assert (=> b!6104626 (= c!1096670 ((_ is Concat!24900) (h!70788 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun bm!504839 () Bool)

(declare-fun call!504849 () (InoxSet Context!10878))

(assert (=> bm!504839 (= call!504848 call!504849)))

(declare-fun bm!504840 () Bool)

(declare-fun call!504844 () (InoxSet Context!10878))

(assert (=> bm!504840 (= call!504849 call!504844)))

(declare-fun b!6104627 () Bool)

(declare-fun c!1096669 () Bool)

(declare-fun e!3722954 () Bool)

(assert (=> b!6104627 (= c!1096669 e!3722954)))

(declare-fun res!2532686 () Bool)

(assert (=> b!6104627 (=> (not res!2532686) (not e!3722954))))

(assert (=> b!6104627 (= res!2532686 ((_ is Concat!24900) (h!70788 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun e!3722957 () (InoxSet Context!10878))

(assert (=> b!6104627 (= e!3722957 e!3722959)))

(declare-fun b!6104628 () Bool)

(assert (=> b!6104628 (= e!3722956 ((as const (Array Context!10878 Bool)) false))))

(declare-fun b!6104629 () Bool)

(declare-fun e!3722955 () (InoxSet Context!10878))

(assert (=> b!6104629 (= e!3722955 (store ((as const (Array Context!10878 Bool)) false) lt!2329513 true))))

(declare-fun d!1913353 () Bool)

(declare-fun c!1096668 () Bool)

(assert (=> d!1913353 (= c!1096668 (and ((_ is ElementMatch!16055) (h!70788 (exprs!5939 (h!70789 zl!343)))) (= (c!1096515 (h!70788 (exprs!5939 (h!70789 zl!343)))) (h!70790 s!2326))))))

(assert (=> d!1913353 (= (derivationStepZipperDown!1303 (h!70788 (exprs!5939 (h!70789 zl!343))) lt!2329513 (h!70790 s!2326)) e!3722955)))

(declare-fun b!6104624 () Bool)

(assert (=> b!6104624 (= e!3722955 e!3722957)))

(declare-fun c!1096671 () Bool)

(assert (=> b!6104624 (= c!1096671 ((_ is Union!16055) (h!70788 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6104630 () Bool)

(declare-fun call!504846 () (InoxSet Context!10878))

(assert (=> b!6104630 (= e!3722957 ((_ map or) call!504844 call!504846))))

(declare-fun b!6104631 () Bool)

(assert (=> b!6104631 (= e!3722959 ((_ map or) call!504846 call!504849))))

(declare-fun bm!504841 () Bool)

(declare-fun call!504845 () List!64464)

(assert (=> bm!504841 (= call!504844 (derivationStepZipperDown!1303 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343))))))) (ite (or c!1096671 c!1096669) lt!2329513 (Context!10879 call!504845)) (h!70790 s!2326)))))

(declare-fun b!6104632 () Bool)

(declare-fun c!1096667 () Bool)

(assert (=> b!6104632 (= c!1096667 ((_ is Star!16055) (h!70788 (exprs!5939 (h!70789 zl!343)))))))

(assert (=> b!6104632 (= e!3722958 e!3722956)))

(declare-fun bm!504842 () Bool)

(declare-fun call!504847 () List!64464)

(assert (=> bm!504842 (= call!504845 call!504847)))

(declare-fun bm!504843 () Bool)

(declare-fun $colon$colon!1932 (List!64464 Regex!16055) List!64464)

(assert (=> bm!504843 (= call!504847 ($colon$colon!1932 (exprs!5939 lt!2329513) (ite (or c!1096669 c!1096670) (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (h!70788 (exprs!5939 (h!70789 zl!343))))))))

(declare-fun bm!504844 () Bool)

(assert (=> bm!504844 (= call!504846 (derivationStepZipperDown!1303 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))) (ite c!1096671 lt!2329513 (Context!10879 call!504847)) (h!70790 s!2326)))))

(declare-fun b!6104633 () Bool)

(assert (=> b!6104633 (= e!3722954 (nullable!6048 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))))))

(declare-fun b!6104634 () Bool)

(assert (=> b!6104634 (= e!3722958 call!504848)))

(assert (= (and d!1913353 c!1096668) b!6104629))

(assert (= (and d!1913353 (not c!1096668)) b!6104624))

(assert (= (and b!6104624 c!1096671) b!6104630))

(assert (= (and b!6104624 (not c!1096671)) b!6104627))

(assert (= (and b!6104627 res!2532686) b!6104633))

(assert (= (and b!6104627 c!1096669) b!6104631))

(assert (= (and b!6104627 (not c!1096669)) b!6104626))

(assert (= (and b!6104626 c!1096670) b!6104634))

(assert (= (and b!6104626 (not c!1096670)) b!6104632))

(assert (= (and b!6104632 c!1096667) b!6104625))

(assert (= (and b!6104632 (not c!1096667)) b!6104628))

(assert (= (or b!6104634 b!6104625) bm!504842))

(assert (= (or b!6104634 b!6104625) bm!504839))

(assert (= (or b!6104631 bm!504842) bm!504843))

(assert (= (or b!6104631 bm!504839) bm!504840))

(assert (= (or b!6104630 b!6104631) bm!504844))

(assert (= (or b!6104630 bm!504840) bm!504841))

(declare-fun m!6956064 () Bool)

(assert (=> b!6104629 m!6956064))

(declare-fun m!6956066 () Bool)

(assert (=> bm!504843 m!6956066))

(declare-fun m!6956068 () Bool)

(assert (=> b!6104633 m!6956068))

(declare-fun m!6956070 () Bool)

(assert (=> bm!504841 m!6956070))

(declare-fun m!6956072 () Bool)

(assert (=> bm!504844 m!6956072))

(assert (=> b!6104046 d!1913353))

(declare-fun b!6104645 () Bool)

(declare-fun e!3722966 () (InoxSet Context!10878))

(declare-fun call!504852 () (InoxSet Context!10878))

(assert (=> b!6104645 (= e!3722966 call!504852)))

(declare-fun b!6104646 () Bool)

(declare-fun e!3722967 () (InoxSet Context!10878))

(assert (=> b!6104646 (= e!3722967 e!3722966)))

(declare-fun c!1096676 () Bool)

(assert (=> b!6104646 (= c!1096676 ((_ is Cons!64340) (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))))

(declare-fun b!6104647 () Bool)

(assert (=> b!6104647 (= e!3722967 ((_ map or) call!504852 (derivationStepZipperUp!1229 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (h!70790 s!2326))))))

(declare-fun bm!504847 () Bool)

(assert (=> bm!504847 (= call!504852 (derivationStepZipperDown!1303 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))) (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (h!70790 s!2326)))))

(declare-fun b!6104649 () Bool)

(assert (=> b!6104649 (= e!3722966 ((as const (Array Context!10878 Bool)) false))))

(declare-fun d!1913355 () Bool)

(declare-fun c!1096677 () Bool)

(declare-fun e!3722968 () Bool)

(assert (=> d!1913355 (= c!1096677 e!3722968)))

(declare-fun res!2532689 () Bool)

(assert (=> d!1913355 (=> (not res!2532689) (not e!3722968))))

(assert (=> d!1913355 (= res!2532689 ((_ is Cons!64340) (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))))

(assert (=> d!1913355 (= (derivationStepZipperUp!1229 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))) (h!70790 s!2326)) e!3722967)))

(declare-fun b!6104648 () Bool)

(assert (=> b!6104648 (= e!3722968 (nullable!6048 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))))

(assert (= (and d!1913355 res!2532689) b!6104648))

(assert (= (and d!1913355 c!1096677) b!6104647))

(assert (= (and d!1913355 (not c!1096677)) b!6104646))

(assert (= (and b!6104646 c!1096676) b!6104645))

(assert (= (and b!6104646 (not c!1096676)) b!6104649))

(assert (= (or b!6104647 b!6104645) bm!504847))

(declare-fun m!6956074 () Bool)

(assert (=> b!6104647 m!6956074))

(declare-fun m!6956076 () Bool)

(assert (=> bm!504847 m!6956076))

(declare-fun m!6956078 () Bool)

(assert (=> b!6104648 m!6956078))

(assert (=> b!6104046 d!1913355))

(declare-fun d!1913357 () Bool)

(assert (=> d!1913357 (= (isEmpty!36262 (t!377915 (exprs!5939 (h!70789 zl!343)))) ((_ is Nil!64340) (t!377915 (exprs!5939 (h!70789 zl!343)))))))

(assert (=> b!6104043 d!1913357))

(declare-fun b!6104661 () Bool)

(declare-fun e!3722971 () Bool)

(declare-fun tp!1704363 () Bool)

(declare-fun tp!1704364 () Bool)

(assert (=> b!6104661 (= e!3722971 (and tp!1704363 tp!1704364))))

(declare-fun b!6104660 () Bool)

(assert (=> b!6104660 (= e!3722971 tp_is_empty!41363)))

(declare-fun b!6104662 () Bool)

(declare-fun tp!1704367 () Bool)

(assert (=> b!6104662 (= e!3722971 tp!1704367)))

(assert (=> b!6104045 (= tp!1704290 e!3722971)))

(declare-fun b!6104663 () Bool)

(declare-fun tp!1704365 () Bool)

(declare-fun tp!1704366 () Bool)

(assert (=> b!6104663 (= e!3722971 (and tp!1704365 tp!1704366))))

(assert (= (and b!6104045 ((_ is ElementMatch!16055) (regOne!32622 r!7292))) b!6104660))

(assert (= (and b!6104045 ((_ is Concat!24900) (regOne!32622 r!7292))) b!6104661))

(assert (= (and b!6104045 ((_ is Star!16055) (regOne!32622 r!7292))) b!6104662))

(assert (= (and b!6104045 ((_ is Union!16055) (regOne!32622 r!7292))) b!6104663))

(declare-fun b!6104665 () Bool)

(declare-fun e!3722972 () Bool)

(declare-fun tp!1704368 () Bool)

(declare-fun tp!1704369 () Bool)

(assert (=> b!6104665 (= e!3722972 (and tp!1704368 tp!1704369))))

(declare-fun b!6104664 () Bool)

(assert (=> b!6104664 (= e!3722972 tp_is_empty!41363)))

(declare-fun b!6104666 () Bool)

(declare-fun tp!1704372 () Bool)

(assert (=> b!6104666 (= e!3722972 tp!1704372)))

(assert (=> b!6104045 (= tp!1704291 e!3722972)))

(declare-fun b!6104667 () Bool)

(declare-fun tp!1704370 () Bool)

(declare-fun tp!1704371 () Bool)

(assert (=> b!6104667 (= e!3722972 (and tp!1704370 tp!1704371))))

(assert (= (and b!6104045 ((_ is ElementMatch!16055) (regTwo!32622 r!7292))) b!6104664))

(assert (= (and b!6104045 ((_ is Concat!24900) (regTwo!32622 r!7292))) b!6104665))

(assert (= (and b!6104045 ((_ is Star!16055) (regTwo!32622 r!7292))) b!6104666))

(assert (= (and b!6104045 ((_ is Union!16055) (regTwo!32622 r!7292))) b!6104667))

(declare-fun b!6104675 () Bool)

(declare-fun e!3722978 () Bool)

(declare-fun tp!1704377 () Bool)

(assert (=> b!6104675 (= e!3722978 tp!1704377)))

(declare-fun b!6104674 () Bool)

(declare-fun tp!1704378 () Bool)

(declare-fun e!3722977 () Bool)

(assert (=> b!6104674 (= e!3722977 (and (inv!83384 (h!70789 (t!377916 zl!343))) e!3722978 tp!1704378))))

(assert (=> b!6104049 (= tp!1704293 e!3722977)))

(assert (= b!6104674 b!6104675))

(assert (= (and b!6104049 ((_ is Cons!64341) (t!377916 zl!343))) b!6104674))

(declare-fun m!6956080 () Bool)

(assert (=> b!6104674 m!6956080))

(declare-fun b!6104680 () Bool)

(declare-fun e!3722981 () Bool)

(declare-fun tp!1704383 () Bool)

(declare-fun tp!1704384 () Bool)

(assert (=> b!6104680 (= e!3722981 (and tp!1704383 tp!1704384))))

(assert (=> b!6104054 (= tp!1704288 e!3722981)))

(assert (= (and b!6104054 ((_ is Cons!64340) (exprs!5939 setElem!41246))) b!6104680))

(declare-fun b!6104682 () Bool)

(declare-fun e!3722982 () Bool)

(declare-fun tp!1704385 () Bool)

(declare-fun tp!1704386 () Bool)

(assert (=> b!6104682 (= e!3722982 (and tp!1704385 tp!1704386))))

(declare-fun b!6104681 () Bool)

(assert (=> b!6104681 (= e!3722982 tp_is_empty!41363)))

(declare-fun b!6104683 () Bool)

(declare-fun tp!1704389 () Bool)

(assert (=> b!6104683 (= e!3722982 tp!1704389)))

(assert (=> b!6104040 (= tp!1704287 e!3722982)))

(declare-fun b!6104684 () Bool)

(declare-fun tp!1704387 () Bool)

(declare-fun tp!1704388 () Bool)

(assert (=> b!6104684 (= e!3722982 (and tp!1704387 tp!1704388))))

(assert (= (and b!6104040 ((_ is ElementMatch!16055) (regOne!32623 r!7292))) b!6104681))

(assert (= (and b!6104040 ((_ is Concat!24900) (regOne!32623 r!7292))) b!6104682))

(assert (= (and b!6104040 ((_ is Star!16055) (regOne!32623 r!7292))) b!6104683))

(assert (= (and b!6104040 ((_ is Union!16055) (regOne!32623 r!7292))) b!6104684))

(declare-fun b!6104686 () Bool)

(declare-fun e!3722983 () Bool)

(declare-fun tp!1704390 () Bool)

(declare-fun tp!1704391 () Bool)

(assert (=> b!6104686 (= e!3722983 (and tp!1704390 tp!1704391))))

(declare-fun b!6104685 () Bool)

(assert (=> b!6104685 (= e!3722983 tp_is_empty!41363)))

(declare-fun b!6104687 () Bool)

(declare-fun tp!1704394 () Bool)

(assert (=> b!6104687 (= e!3722983 tp!1704394)))

(assert (=> b!6104040 (= tp!1704292 e!3722983)))

(declare-fun b!6104688 () Bool)

(declare-fun tp!1704392 () Bool)

(declare-fun tp!1704393 () Bool)

(assert (=> b!6104688 (= e!3722983 (and tp!1704392 tp!1704393))))

(assert (= (and b!6104040 ((_ is ElementMatch!16055) (regTwo!32623 r!7292))) b!6104685))

(assert (= (and b!6104040 ((_ is Concat!24900) (regTwo!32623 r!7292))) b!6104686))

(assert (= (and b!6104040 ((_ is Star!16055) (regTwo!32623 r!7292))) b!6104687))

(assert (= (and b!6104040 ((_ is Union!16055) (regTwo!32623 r!7292))) b!6104688))

(declare-fun b!6104690 () Bool)

(declare-fun e!3722984 () Bool)

(declare-fun tp!1704395 () Bool)

(declare-fun tp!1704396 () Bool)

(assert (=> b!6104690 (= e!3722984 (and tp!1704395 tp!1704396))))

(declare-fun b!6104689 () Bool)

(assert (=> b!6104689 (= e!3722984 tp_is_empty!41363)))

(declare-fun b!6104691 () Bool)

(declare-fun tp!1704399 () Bool)

(assert (=> b!6104691 (= e!3722984 tp!1704399)))

(assert (=> b!6104044 (= tp!1704286 e!3722984)))

(declare-fun b!6104692 () Bool)

(declare-fun tp!1704397 () Bool)

(declare-fun tp!1704398 () Bool)

(assert (=> b!6104692 (= e!3722984 (and tp!1704397 tp!1704398))))

(assert (= (and b!6104044 ((_ is ElementMatch!16055) (reg!16384 r!7292))) b!6104689))

(assert (= (and b!6104044 ((_ is Concat!24900) (reg!16384 r!7292))) b!6104690))

(assert (= (and b!6104044 ((_ is Star!16055) (reg!16384 r!7292))) b!6104691))

(assert (= (and b!6104044 ((_ is Union!16055) (reg!16384 r!7292))) b!6104692))

(declare-fun b!6104697 () Bool)

(declare-fun e!3722987 () Bool)

(declare-fun tp!1704402 () Bool)

(assert (=> b!6104697 (= e!3722987 (and tp_is_empty!41363 tp!1704402))))

(assert (=> b!6104053 (= tp!1704289 e!3722987)))

(assert (= (and b!6104053 ((_ is Cons!64342) (t!377917 s!2326))) b!6104697))

(declare-fun condSetEmpty!41252 () Bool)

(assert (=> setNonEmpty!41246 (= condSetEmpty!41252 (= setRest!41246 ((as const (Array Context!10878 Bool)) false)))))

(declare-fun setRes!41252 () Bool)

(assert (=> setNonEmpty!41246 (= tp!1704294 setRes!41252)))

(declare-fun setIsEmpty!41252 () Bool)

(assert (=> setIsEmpty!41252 setRes!41252))

(declare-fun setNonEmpty!41252 () Bool)

(declare-fun tp!1704407 () Bool)

(declare-fun e!3722990 () Bool)

(declare-fun setElem!41252 () Context!10878)

(assert (=> setNonEmpty!41252 (= setRes!41252 (and tp!1704407 (inv!83384 setElem!41252) e!3722990))))

(declare-fun setRest!41252 () (InoxSet Context!10878))

(assert (=> setNonEmpty!41252 (= setRest!41246 ((_ map or) (store ((as const (Array Context!10878 Bool)) false) setElem!41252 true) setRest!41252))))

(declare-fun b!6104702 () Bool)

(declare-fun tp!1704408 () Bool)

(assert (=> b!6104702 (= e!3722990 tp!1704408)))

(assert (= (and setNonEmpty!41246 condSetEmpty!41252) setIsEmpty!41252))

(assert (= (and setNonEmpty!41246 (not condSetEmpty!41252)) setNonEmpty!41252))

(assert (= setNonEmpty!41252 b!6104702))

(declare-fun m!6956082 () Bool)

(assert (=> setNonEmpty!41252 m!6956082))

(declare-fun b!6104703 () Bool)

(declare-fun e!3722991 () Bool)

(declare-fun tp!1704409 () Bool)

(declare-fun tp!1704410 () Bool)

(assert (=> b!6104703 (= e!3722991 (and tp!1704409 tp!1704410))))

(assert (=> b!6104052 (= tp!1704285 e!3722991)))

(assert (= (and b!6104052 ((_ is Cons!64340) (exprs!5939 (h!70789 zl!343)))) b!6104703))

(check-sat (not b!6104690) (not b!6104527) (not b!6104337) tp_is_empty!41363 (not b!6104648) (not d!1913319) (not d!1913315) (not b!6104675) (not b!6104574) (not d!1913295) (not b!6104661) (not b!6104667) (not b!6104662) (not bm!504843) (not b!6104570) (not b!6104688) (not d!1913337) (not bm!504783) (not b!6104489) (not d!1913339) (not d!1913347) (not b!6104559) (not d!1913325) (not b!6104692) (not b!6104344) (not b!6104682) (not b!6104665) (not bm!504824) (not d!1913341) (not b!6104529) (not b!6104633) (not b!6104697) (not d!1913329) (not b!6104565) (not b!6104687) (not b!6104702) (not d!1913323) (not b!6104680) (not b!6104221) (not bm!504784) (not b!6104346) (not b!6104530) (not setNonEmpty!41252) (not b!6104556) (not b!6104666) (not bm!504844) (not b!6104674) (not b!6104526) (not b!6104560) (not b!6104663) (not d!1913351) (not b!6104691) (not b!6104341) (not b!6104218) (not d!1913343) (not b!6104485) (not bm!504841) (not d!1913335) (not b!6104647) (not b!6104703) (not b!6104532) (not b!6104533) (not b!6104686) (not b!6104487) (not d!1913327) (not b!6104333) (not b!6104684) (not bm!504826) (not b!6104531) (not d!1913331) (not bm!504847) (not b!6104486) (not b!6104562) (not b!6104557) (not b!6104599) (not bm!504808) (not b!6104490) (not b!6104342) (not b!6104683) (not b!6104561) (not b!6104491) (not d!1913333))
(check-sat)
(get-model)

(declare-fun d!1913513 () Bool)

(assert (=> d!1913513 (= (isEmpty!36266 (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) Nil!64342 s!2326 s!2326)) (not ((_ is Some!15945) (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) Nil!64342 s!2326 s!2326))))))

(assert (=> d!1913331 d!1913513))

(declare-fun d!1913515 () Bool)

(declare-fun nullableFct!2012 (Regex!16055) Bool)

(assert (=> d!1913515 (= (nullable!6048 (reg!16384 r!7292)) (nullableFct!2012 (reg!16384 r!7292)))))

(declare-fun bs!1515859 () Bool)

(assert (= bs!1515859 d!1913515))

(declare-fun m!6956424 () Bool)

(assert (=> bs!1515859 m!6956424))

(assert (=> b!6104599 d!1913515))

(declare-fun d!1913517 () Bool)

(assert (=> d!1913517 (= (isEmptyExpr!1472 lt!2329580) ((_ is EmptyExpr!16055) lt!2329580))))

(assert (=> b!6104530 d!1913517))

(declare-fun d!1913519 () Bool)

(assert (=> d!1913519 (= (Exists!3125 (ite c!1096552 lambda!332583 lambda!332585)) (choose!45383 (ite c!1096552 lambda!332583 lambda!332585)))))

(declare-fun bs!1515860 () Bool)

(assert (= bs!1515860 d!1913519))

(declare-fun m!6956426 () Bool)

(assert (=> bs!1515860 m!6956426))

(assert (=> bm!504784 d!1913519))

(declare-fun b!6105134 () Bool)

(declare-fun e!3723225 () Bool)

(assert (=> b!6105134 (= e!3723225 (not (= (head!12631 (_1!36337 (get!22185 lt!2329570))) (c!1096515 (regOne!32622 r!7292)))))))

(declare-fun b!6105135 () Bool)

(declare-fun res!2532839 () Bool)

(declare-fun e!3723223 () Bool)

(assert (=> b!6105135 (=> res!2532839 e!3723223)))

(declare-fun e!3723227 () Bool)

(assert (=> b!6105135 (= res!2532839 e!3723227)))

(declare-fun res!2532838 () Bool)

(assert (=> b!6105135 (=> (not res!2532838) (not e!3723227))))

(declare-fun lt!2329615 () Bool)

(assert (=> b!6105135 (= res!2532838 lt!2329615)))

(declare-fun b!6105136 () Bool)

(declare-fun e!3723226 () Bool)

(assert (=> b!6105136 (= e!3723223 e!3723226)))

(declare-fun res!2532833 () Bool)

(assert (=> b!6105136 (=> (not res!2532833) (not e!3723226))))

(assert (=> b!6105136 (= res!2532833 (not lt!2329615))))

(declare-fun bm!504906 () Bool)

(declare-fun call!504911 () Bool)

(assert (=> bm!504906 (= call!504911 (isEmpty!36265 (_1!36337 (get!22185 lt!2329570))))))

(declare-fun b!6105137 () Bool)

(declare-fun e!3723224 () Bool)

(assert (=> b!6105137 (= e!3723224 (= lt!2329615 call!504911))))

(declare-fun b!6105139 () Bool)

(declare-fun res!2532840 () Bool)

(assert (=> b!6105139 (=> (not res!2532840) (not e!3723227))))

(assert (=> b!6105139 (= res!2532840 (not call!504911))))

(declare-fun b!6105140 () Bool)

(assert (=> b!6105140 (= e!3723226 e!3723225)))

(declare-fun res!2532834 () Bool)

(assert (=> b!6105140 (=> res!2532834 e!3723225)))

(assert (=> b!6105140 (= res!2532834 call!504911)))

(declare-fun b!6105141 () Bool)

(declare-fun e!3723222 () Bool)

(assert (=> b!6105141 (= e!3723222 (not lt!2329615))))

(declare-fun b!6105142 () Bool)

(declare-fun e!3723228 () Bool)

(assert (=> b!6105142 (= e!3723228 (nullable!6048 (regOne!32622 r!7292)))))

(declare-fun b!6105143 () Bool)

(assert (=> b!6105143 (= e!3723227 (= (head!12631 (_1!36337 (get!22185 lt!2329570))) (c!1096515 (regOne!32622 r!7292))))))

(declare-fun b!6105144 () Bool)

(declare-fun res!2532836 () Bool)

(assert (=> b!6105144 (=> res!2532836 e!3723223)))

(assert (=> b!6105144 (= res!2532836 (not ((_ is ElementMatch!16055) (regOne!32622 r!7292))))))

(assert (=> b!6105144 (= e!3723222 e!3723223)))

(declare-fun b!6105145 () Bool)

(declare-fun res!2532837 () Bool)

(assert (=> b!6105145 (=> res!2532837 e!3723225)))

(assert (=> b!6105145 (= res!2532837 (not (isEmpty!36265 (tail!11716 (_1!36337 (get!22185 lt!2329570))))))))

(declare-fun b!6105146 () Bool)

(assert (=> b!6105146 (= e!3723224 e!3723222)))

(declare-fun c!1096765 () Bool)

(assert (=> b!6105146 (= c!1096765 ((_ is EmptyLang!16055) (regOne!32622 r!7292)))))

(declare-fun b!6105147 () Bool)

(assert (=> b!6105147 (= e!3723228 (matchR!8238 (derivativeStep!4776 (regOne!32622 r!7292) (head!12631 (_1!36337 (get!22185 lt!2329570)))) (tail!11716 (_1!36337 (get!22185 lt!2329570)))))))

(declare-fun d!1913521 () Bool)

(assert (=> d!1913521 e!3723224))

(declare-fun c!1096764 () Bool)

(assert (=> d!1913521 (= c!1096764 ((_ is EmptyExpr!16055) (regOne!32622 r!7292)))))

(assert (=> d!1913521 (= lt!2329615 e!3723228)))

(declare-fun c!1096766 () Bool)

(assert (=> d!1913521 (= c!1096766 (isEmpty!36265 (_1!36337 (get!22185 lt!2329570))))))

(assert (=> d!1913521 (validRegex!7791 (regOne!32622 r!7292))))

(assert (=> d!1913521 (= (matchR!8238 (regOne!32622 r!7292) (_1!36337 (get!22185 lt!2329570))) lt!2329615)))

(declare-fun b!6105138 () Bool)

(declare-fun res!2532835 () Bool)

(assert (=> b!6105138 (=> (not res!2532835) (not e!3723227))))

(assert (=> b!6105138 (= res!2532835 (isEmpty!36265 (tail!11716 (_1!36337 (get!22185 lt!2329570)))))))

(assert (= (and d!1913521 c!1096766) b!6105142))

(assert (= (and d!1913521 (not c!1096766)) b!6105147))

(assert (= (and d!1913521 c!1096764) b!6105137))

(assert (= (and d!1913521 (not c!1096764)) b!6105146))

(assert (= (and b!6105146 c!1096765) b!6105141))

(assert (= (and b!6105146 (not c!1096765)) b!6105144))

(assert (= (and b!6105144 (not res!2532836)) b!6105135))

(assert (= (and b!6105135 res!2532838) b!6105139))

(assert (= (and b!6105139 res!2532840) b!6105138))

(assert (= (and b!6105138 res!2532835) b!6105143))

(assert (= (and b!6105135 (not res!2532839)) b!6105136))

(assert (= (and b!6105136 res!2532833) b!6105140))

(assert (= (and b!6105140 (not res!2532834)) b!6105145))

(assert (= (and b!6105145 (not res!2532837)) b!6105134))

(assert (= (or b!6105137 b!6105139 b!6105140) bm!504906))

(declare-fun m!6956428 () Bool)

(assert (=> bm!504906 m!6956428))

(declare-fun m!6956430 () Bool)

(assert (=> b!6105142 m!6956430))

(declare-fun m!6956432 () Bool)

(assert (=> b!6105138 m!6956432))

(assert (=> b!6105138 m!6956432))

(declare-fun m!6956434 () Bool)

(assert (=> b!6105138 m!6956434))

(declare-fun m!6956436 () Bool)

(assert (=> b!6105147 m!6956436))

(assert (=> b!6105147 m!6956436))

(declare-fun m!6956438 () Bool)

(assert (=> b!6105147 m!6956438))

(assert (=> b!6105147 m!6956432))

(assert (=> b!6105147 m!6956438))

(assert (=> b!6105147 m!6956432))

(declare-fun m!6956440 () Bool)

(assert (=> b!6105147 m!6956440))

(assert (=> b!6105145 m!6956432))

(assert (=> b!6105145 m!6956432))

(assert (=> b!6105145 m!6956434))

(assert (=> b!6105134 m!6956436))

(assert (=> b!6105143 m!6956436))

(assert (=> d!1913521 m!6956428))

(assert (=> d!1913521 m!6955982))

(assert (=> b!6104485 d!1913521))

(declare-fun d!1913523 () Bool)

(assert (=> d!1913523 (= (get!22185 lt!2329570) (v!52078 lt!2329570))))

(assert (=> b!6104485 d!1913523))

(declare-fun b!6105148 () Bool)

(declare-fun e!3723234 () Bool)

(declare-fun e!3723235 () Bool)

(assert (=> b!6105148 (= e!3723234 e!3723235)))

(declare-fun res!2532841 () Bool)

(assert (=> b!6105148 (=> (not res!2532841) (not e!3723235))))

(declare-fun call!504914 () Bool)

(assert (=> b!6105148 (= res!2532841 call!504914)))

(declare-fun b!6105149 () Bool)

(declare-fun res!2532844 () Bool)

(declare-fun e!3723231 () Bool)

(assert (=> b!6105149 (=> (not res!2532844) (not e!3723231))))

(assert (=> b!6105149 (= res!2532844 call!504914)))

(declare-fun e!3723233 () Bool)

(assert (=> b!6105149 (= e!3723233 e!3723231)))

(declare-fun b!6105150 () Bool)

(declare-fun e!3723229 () Bool)

(declare-fun call!504913 () Bool)

(assert (=> b!6105150 (= e!3723229 call!504913)))

(declare-fun b!6105151 () Bool)

(declare-fun res!2532843 () Bool)

(assert (=> b!6105151 (=> res!2532843 e!3723234)))

(assert (=> b!6105151 (= res!2532843 (not ((_ is Concat!24900) (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292))))))))

(assert (=> b!6105151 (= e!3723233 e!3723234)))

(declare-fun b!6105152 () Bool)

(declare-fun e!3723230 () Bool)

(declare-fun e!3723232 () Bool)

(assert (=> b!6105152 (= e!3723230 e!3723232)))

(declare-fun c!1096767 () Bool)

(assert (=> b!6105152 (= c!1096767 ((_ is Star!16055) (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))))))

(declare-fun c!1096768 () Bool)

(declare-fun bm!504907 () Bool)

(assert (=> bm!504907 (= call!504913 (validRegex!7791 (ite c!1096767 (reg!16384 (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))) (ite c!1096768 (regOne!32623 (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))) (regOne!32622 (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292))))))))))

(declare-fun b!6105153 () Bool)

(assert (=> b!6105153 (= e!3723232 e!3723233)))

(assert (=> b!6105153 (= c!1096768 ((_ is Union!16055) (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))))))

(declare-fun b!6105154 () Bool)

(assert (=> b!6105154 (= e!3723232 e!3723229)))

(declare-fun res!2532842 () Bool)

(assert (=> b!6105154 (= res!2532842 (not (nullable!6048 (reg!16384 (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))))))))

(assert (=> b!6105154 (=> (not res!2532842) (not e!3723229))))

(declare-fun bm!504908 () Bool)

(assert (=> bm!504908 (= call!504914 call!504913)))

(declare-fun bm!504909 () Bool)

(declare-fun call!504912 () Bool)

(assert (=> bm!504909 (= call!504912 (validRegex!7791 (ite c!1096768 (regTwo!32623 (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))) (regTwo!32622 (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))))))))

(declare-fun b!6105156 () Bool)

(assert (=> b!6105156 (= e!3723235 call!504912)))

(declare-fun d!1913525 () Bool)

(declare-fun res!2532845 () Bool)

(assert (=> d!1913525 (=> res!2532845 e!3723230)))

(assert (=> d!1913525 (= res!2532845 ((_ is ElementMatch!16055) (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))))))

(assert (=> d!1913525 (= (validRegex!7791 (ite c!1096655 (reg!16384 r!7292) (ite c!1096656 (regOne!32623 r!7292) (regOne!32622 r!7292)))) e!3723230)))

(declare-fun b!6105155 () Bool)

(assert (=> b!6105155 (= e!3723231 call!504912)))

(assert (= (and d!1913525 (not res!2532845)) b!6105152))

(assert (= (and b!6105152 c!1096767) b!6105154))

(assert (= (and b!6105152 (not c!1096767)) b!6105153))

(assert (= (and b!6105154 res!2532842) b!6105150))

(assert (= (and b!6105153 c!1096768) b!6105149))

(assert (= (and b!6105153 (not c!1096768)) b!6105151))

(assert (= (and b!6105149 res!2532844) b!6105155))

(assert (= (and b!6105151 (not res!2532843)) b!6105148))

(assert (= (and b!6105148 res!2532841) b!6105156))

(assert (= (or b!6105155 b!6105156) bm!504909))

(assert (= (or b!6105149 b!6105148) bm!504908))

(assert (= (or b!6105150 bm!504908) bm!504907))

(declare-fun m!6956442 () Bool)

(assert (=> bm!504907 m!6956442))

(declare-fun m!6956444 () Bool)

(assert (=> b!6105154 m!6956444))

(declare-fun m!6956446 () Bool)

(assert (=> bm!504909 m!6956446))

(assert (=> bm!504824 d!1913525))

(declare-fun b!6105158 () Bool)

(declare-fun e!3723238 () (InoxSet Context!10878))

(declare-fun call!504919 () (InoxSet Context!10878))

(assert (=> b!6105158 (= e!3723238 call!504919)))

(declare-fun b!6105159 () Bool)

(declare-fun e!3723241 () (InoxSet Context!10878))

(declare-fun e!3723240 () (InoxSet Context!10878))

(assert (=> b!6105159 (= e!3723241 e!3723240)))

(declare-fun c!1096772 () Bool)

(assert (=> b!6105159 (= c!1096772 ((_ is Concat!24900) (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))))))

(declare-fun bm!504910 () Bool)

(declare-fun call!504920 () (InoxSet Context!10878))

(assert (=> bm!504910 (= call!504919 call!504920)))

(declare-fun bm!504911 () Bool)

(declare-fun call!504915 () (InoxSet Context!10878))

(assert (=> bm!504911 (= call!504920 call!504915)))

(declare-fun b!6105160 () Bool)

(declare-fun c!1096771 () Bool)

(declare-fun e!3723236 () Bool)

(assert (=> b!6105160 (= c!1096771 e!3723236)))

(declare-fun res!2532846 () Bool)

(assert (=> b!6105160 (=> (not res!2532846) (not e!3723236))))

(assert (=> b!6105160 (= res!2532846 ((_ is Concat!24900) (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))))))

(declare-fun e!3723239 () (InoxSet Context!10878))

(assert (=> b!6105160 (= e!3723239 e!3723241)))

(declare-fun b!6105161 () Bool)

(assert (=> b!6105161 (= e!3723238 ((as const (Array Context!10878 Bool)) false))))

(declare-fun b!6105162 () Bool)

(declare-fun e!3723237 () (InoxSet Context!10878))

(assert (=> b!6105162 (= e!3723237 (store ((as const (Array Context!10878 Bool)) false) (ite c!1096671 lt!2329513 (Context!10879 call!504847)) true))))

(declare-fun d!1913527 () Bool)

(declare-fun c!1096770 () Bool)

(assert (=> d!1913527 (= c!1096770 (and ((_ is ElementMatch!16055) (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))) (= (c!1096515 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))) (h!70790 s!2326))))))

(assert (=> d!1913527 (= (derivationStepZipperDown!1303 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))) (ite c!1096671 lt!2329513 (Context!10879 call!504847)) (h!70790 s!2326)) e!3723237)))

(declare-fun b!6105157 () Bool)

(assert (=> b!6105157 (= e!3723237 e!3723239)))

(declare-fun c!1096773 () Bool)

(assert (=> b!6105157 (= c!1096773 ((_ is Union!16055) (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))))))

(declare-fun b!6105163 () Bool)

(declare-fun call!504917 () (InoxSet Context!10878))

(assert (=> b!6105163 (= e!3723239 ((_ map or) call!504915 call!504917))))

(declare-fun b!6105164 () Bool)

(assert (=> b!6105164 (= e!3723241 ((_ map or) call!504917 call!504920))))

(declare-fun bm!504912 () Bool)

(declare-fun call!504916 () List!64464)

(assert (=> bm!504912 (= call!504915 (derivationStepZipperDown!1303 (ite c!1096773 (regOne!32623 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))) (ite c!1096771 (regTwo!32622 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))) (ite c!1096772 (regOne!32622 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))) (reg!16384 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))))))) (ite (or c!1096773 c!1096771) (ite c!1096671 lt!2329513 (Context!10879 call!504847)) (Context!10879 call!504916)) (h!70790 s!2326)))))

(declare-fun b!6105165 () Bool)

(declare-fun c!1096769 () Bool)

(assert (=> b!6105165 (= c!1096769 ((_ is Star!16055) (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))))))

(assert (=> b!6105165 (= e!3723240 e!3723238)))

(declare-fun bm!504913 () Bool)

(declare-fun call!504918 () List!64464)

(assert (=> bm!504913 (= call!504916 call!504918)))

(declare-fun bm!504914 () Bool)

(assert (=> bm!504914 (= call!504918 ($colon$colon!1932 (exprs!5939 (ite c!1096671 lt!2329513 (Context!10879 call!504847))) (ite (or c!1096771 c!1096772) (regTwo!32622 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))) (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))))))))

(declare-fun bm!504915 () Bool)

(assert (=> bm!504915 (= call!504917 (derivationStepZipperDown!1303 (ite c!1096773 (regTwo!32623 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))))) (regOne!32622 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))))) (ite c!1096773 (ite c!1096671 lt!2329513 (Context!10879 call!504847)) (Context!10879 call!504918)) (h!70790 s!2326)))))

(declare-fun b!6105166 () Bool)

(assert (=> b!6105166 (= e!3723236 (nullable!6048 (regOne!32622 (ite c!1096671 (regTwo!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))))))))

(declare-fun b!6105167 () Bool)

(assert (=> b!6105167 (= e!3723240 call!504919)))

(assert (= (and d!1913527 c!1096770) b!6105162))

(assert (= (and d!1913527 (not c!1096770)) b!6105157))

(assert (= (and b!6105157 c!1096773) b!6105163))

(assert (= (and b!6105157 (not c!1096773)) b!6105160))

(assert (= (and b!6105160 res!2532846) b!6105166))

(assert (= (and b!6105160 c!1096771) b!6105164))

(assert (= (and b!6105160 (not c!1096771)) b!6105159))

(assert (= (and b!6105159 c!1096772) b!6105167))

(assert (= (and b!6105159 (not c!1096772)) b!6105165))

(assert (= (and b!6105165 c!1096769) b!6105158))

(assert (= (and b!6105165 (not c!1096769)) b!6105161))

(assert (= (or b!6105167 b!6105158) bm!504913))

(assert (= (or b!6105167 b!6105158) bm!504910))

(assert (= (or b!6105164 bm!504913) bm!504914))

(assert (= (or b!6105164 bm!504910) bm!504911))

(assert (= (or b!6105163 b!6105164) bm!504915))

(assert (= (or b!6105163 bm!504911) bm!504912))

(declare-fun m!6956448 () Bool)

(assert (=> b!6105162 m!6956448))

(declare-fun m!6956450 () Bool)

(assert (=> bm!504914 m!6956450))

(declare-fun m!6956452 () Bool)

(assert (=> b!6105166 m!6956452))

(declare-fun m!6956454 () Bool)

(assert (=> bm!504912 m!6956454))

(declare-fun m!6956456 () Bool)

(assert (=> bm!504915 m!6956456))

(assert (=> bm!504844 d!1913527))

(assert (=> b!6104570 d!1913333))

(declare-fun bs!1515861 () Bool)

(declare-fun d!1913529 () Bool)

(assert (= bs!1515861 (and d!1913529 d!1913351)))

(declare-fun lambda!332640 () Int)

(assert (=> bs!1515861 (= lambda!332640 lambda!332621)))

(declare-fun bs!1515862 () Bool)

(assert (= bs!1515862 (and d!1913529 d!1913339)))

(assert (=> bs!1515862 (= lambda!332640 lambda!332619)))

(declare-fun bs!1515863 () Bool)

(assert (= bs!1515863 (and d!1913529 d!1913335)))

(assert (=> bs!1515863 (= lambda!332640 lambda!332613)))

(declare-fun bs!1515864 () Bool)

(assert (= bs!1515864 (and d!1913529 d!1913337)))

(assert (=> bs!1515864 (= lambda!332640 lambda!332616)))

(declare-fun bs!1515865 () Bool)

(assert (= bs!1515865 (and d!1913529 d!1913341)))

(assert (=> bs!1515865 (= lambda!332640 lambda!332620)))

(declare-fun bs!1515866 () Bool)

(assert (= bs!1515866 (and d!1913529 d!1913333)))

(assert (=> bs!1515866 (= lambda!332640 lambda!332610)))

(declare-fun lt!2329616 () List!64464)

(assert (=> d!1913529 (forall!15176 lt!2329616 lambda!332640)))

(declare-fun e!3723242 () List!64464)

(assert (=> d!1913529 (= lt!2329616 e!3723242)))

(declare-fun c!1096774 () Bool)

(assert (=> d!1913529 (= c!1096774 ((_ is Cons!64341) (t!377916 zl!343)))))

(assert (=> d!1913529 (= (unfocusZipperList!1476 (t!377916 zl!343)) lt!2329616)))

(declare-fun b!6105168 () Bool)

(assert (=> b!6105168 (= e!3723242 (Cons!64340 (generalisedConcat!1652 (exprs!5939 (h!70789 (t!377916 zl!343)))) (unfocusZipperList!1476 (t!377916 (t!377916 zl!343)))))))

(declare-fun b!6105169 () Bool)

(assert (=> b!6105169 (= e!3723242 Nil!64340)))

(assert (= (and d!1913529 c!1096774) b!6105168))

(assert (= (and d!1913529 (not c!1096774)) b!6105169))

(declare-fun m!6956458 () Bool)

(assert (=> d!1913529 m!6956458))

(declare-fun m!6956460 () Bool)

(assert (=> b!6105168 m!6956460))

(declare-fun m!6956462 () Bool)

(assert (=> b!6105168 m!6956462))

(assert (=> b!6104570 d!1913529))

(declare-fun d!1913531 () Bool)

(declare-fun res!2532851 () Bool)

(declare-fun e!3723247 () Bool)

(assert (=> d!1913531 (=> res!2532851 e!3723247)))

(assert (=> d!1913531 (= res!2532851 ((_ is Nil!64341) lt!2329589))))

(assert (=> d!1913531 (= (noDuplicate!1902 lt!2329589) e!3723247)))

(declare-fun b!6105174 () Bool)

(declare-fun e!3723248 () Bool)

(assert (=> b!6105174 (= e!3723247 e!3723248)))

(declare-fun res!2532852 () Bool)

(assert (=> b!6105174 (=> (not res!2532852) (not e!3723248))))

(declare-fun contains!20018 (List!64465 Context!10878) Bool)

(assert (=> b!6105174 (= res!2532852 (not (contains!20018 (t!377916 lt!2329589) (h!70789 lt!2329589))))))

(declare-fun b!6105175 () Bool)

(assert (=> b!6105175 (= e!3723248 (noDuplicate!1902 (t!377916 lt!2329589)))))

(assert (= (and d!1913531 (not res!2532851)) b!6105174))

(assert (= (and b!6105174 res!2532852) b!6105175))

(declare-fun m!6956464 () Bool)

(assert (=> b!6105174 m!6956464))

(declare-fun m!6956466 () Bool)

(assert (=> b!6105175 m!6956466))

(assert (=> d!1913343 d!1913531))

(declare-fun d!1913533 () Bool)

(declare-fun e!3723256 () Bool)

(assert (=> d!1913533 e!3723256))

(declare-fun res!2532857 () Bool)

(assert (=> d!1913533 (=> (not res!2532857) (not e!3723256))))

(declare-fun res!2532858 () List!64465)

(assert (=> d!1913533 (= res!2532857 (noDuplicate!1902 res!2532858))))

(declare-fun e!3723257 () Bool)

(assert (=> d!1913533 e!3723257))

(assert (=> d!1913533 (= (choose!45386 z!1189) res!2532858)))

(declare-fun b!6105183 () Bool)

(declare-fun e!3723255 () Bool)

(declare-fun tp!1704569 () Bool)

(assert (=> b!6105183 (= e!3723255 tp!1704569)))

(declare-fun b!6105182 () Bool)

(declare-fun tp!1704570 () Bool)

(assert (=> b!6105182 (= e!3723257 (and (inv!83384 (h!70789 res!2532858)) e!3723255 tp!1704570))))

(declare-fun b!6105184 () Bool)

(assert (=> b!6105184 (= e!3723256 (= (content!11935 res!2532858) z!1189))))

(assert (= b!6105182 b!6105183))

(assert (= (and d!1913533 ((_ is Cons!64341) res!2532858)) b!6105182))

(assert (= (and d!1913533 res!2532857) b!6105184))

(declare-fun m!6956468 () Bool)

(assert (=> d!1913533 m!6956468))

(declare-fun m!6956470 () Bool)

(assert (=> b!6105182 m!6956470))

(declare-fun m!6956472 () Bool)

(assert (=> b!6105184 m!6956472))

(assert (=> d!1913343 d!1913533))

(assert (=> b!6104526 d!1913357))

(declare-fun bs!1515867 () Bool)

(declare-fun b!6105195 () Bool)

(assert (= bs!1515867 (and b!6105195 b!6104050)))

(declare-fun lambda!332641 () Int)

(assert (=> bs!1515867 (not (= lambda!332641 lambda!332562))))

(declare-fun bs!1515868 () Bool)

(assert (= bs!1515868 (and b!6105195 d!1913327)))

(assert (=> bs!1515868 (not (= lambda!332641 lambda!332601))))

(declare-fun bs!1515869 () Bool)

(assert (= bs!1515869 (and b!6105195 d!1913329)))

(assert (=> bs!1515869 (not (= lambda!332641 lambda!332607))))

(declare-fun bs!1515870 () Bool)

(assert (= bs!1515870 (and b!6105195 b!6104226)))

(assert (=> bs!1515870 (= (and (= (reg!16384 (regOne!32623 r!7292)) (reg!16384 r!7292)) (= (regOne!32623 r!7292) r!7292)) (= lambda!332641 lambda!332583))))

(assert (=> bs!1515869 (not (= lambda!332641 lambda!332606))))

(declare-fun bs!1515871 () Bool)

(assert (= bs!1515871 (and b!6105195 b!6104225)))

(assert (=> bs!1515871 (not (= lambda!332641 lambda!332585))))

(assert (=> bs!1515867 (not (= lambda!332641 lambda!332563))))

(assert (=> b!6105195 true))

(assert (=> b!6105195 true))

(declare-fun bs!1515872 () Bool)

(declare-fun b!6105194 () Bool)

(assert (= bs!1515872 (and b!6105194 b!6104050)))

(declare-fun lambda!332642 () Int)

(assert (=> bs!1515872 (not (= lambda!332642 lambda!332562))))

(declare-fun bs!1515873 () Bool)

(assert (= bs!1515873 (and b!6105194 d!1913327)))

(assert (=> bs!1515873 (not (= lambda!332642 lambda!332601))))

(declare-fun bs!1515874 () Bool)

(assert (= bs!1515874 (and b!6105194 d!1913329)))

(assert (=> bs!1515874 (= (and (= (regOne!32622 (regOne!32623 r!7292)) (regOne!32622 r!7292)) (= (regTwo!32622 (regOne!32623 r!7292)) (regTwo!32622 r!7292))) (= lambda!332642 lambda!332607))))

(declare-fun bs!1515875 () Bool)

(assert (= bs!1515875 (and b!6105194 b!6104226)))

(assert (=> bs!1515875 (not (= lambda!332642 lambda!332583))))

(assert (=> bs!1515874 (not (= lambda!332642 lambda!332606))))

(declare-fun bs!1515876 () Bool)

(assert (= bs!1515876 (and b!6105194 b!6105195)))

(assert (=> bs!1515876 (not (= lambda!332642 lambda!332641))))

(declare-fun bs!1515877 () Bool)

(assert (= bs!1515877 (and b!6105194 b!6104225)))

(assert (=> bs!1515877 (= (and (= (regOne!32622 (regOne!32623 r!7292)) (regOne!32622 r!7292)) (= (regTwo!32622 (regOne!32623 r!7292)) (regTwo!32622 r!7292))) (= lambda!332642 lambda!332585))))

(assert (=> bs!1515872 (= (and (= (regOne!32622 (regOne!32623 r!7292)) (regOne!32622 r!7292)) (= (regTwo!32622 (regOne!32623 r!7292)) (regTwo!32622 r!7292))) (= lambda!332642 lambda!332563))))

(assert (=> b!6105194 true))

(assert (=> b!6105194 true))

(declare-fun bm!504916 () Bool)

(declare-fun call!504921 () Bool)

(assert (=> bm!504916 (= call!504921 (isEmpty!36265 s!2326))))

(declare-fun b!6105185 () Bool)

(declare-fun e!3723262 () Bool)

(assert (=> b!6105185 (= e!3723262 (= s!2326 (Cons!64342 (c!1096515 (regOne!32623 r!7292)) Nil!64342)))))

(declare-fun b!6105186 () Bool)

(declare-fun e!3723260 () Bool)

(assert (=> b!6105186 (= e!3723260 call!504921)))

(declare-fun d!1913535 () Bool)

(declare-fun c!1096775 () Bool)

(assert (=> d!1913535 (= c!1096775 ((_ is EmptyExpr!16055) (regOne!32623 r!7292)))))

(assert (=> d!1913535 (= (matchRSpec!3156 (regOne!32623 r!7292) s!2326) e!3723260)))

(declare-fun b!6105187 () Bool)

(declare-fun e!3723259 () Bool)

(declare-fun e!3723258 () Bool)

(assert (=> b!6105187 (= e!3723259 e!3723258)))

(declare-fun res!2532861 () Bool)

(assert (=> b!6105187 (= res!2532861 (matchRSpec!3156 (regOne!32623 (regOne!32623 r!7292)) s!2326))))

(assert (=> b!6105187 (=> res!2532861 e!3723258)))

(declare-fun b!6105188 () Bool)

(declare-fun c!1096778 () Bool)

(assert (=> b!6105188 (= c!1096778 ((_ is ElementMatch!16055) (regOne!32623 r!7292)))))

(declare-fun e!3723264 () Bool)

(assert (=> b!6105188 (= e!3723264 e!3723262)))

(declare-fun b!6105189 () Bool)

(declare-fun e!3723263 () Bool)

(assert (=> b!6105189 (= e!3723259 e!3723263)))

(declare-fun c!1096776 () Bool)

(assert (=> b!6105189 (= c!1096776 ((_ is Star!16055) (regOne!32623 r!7292)))))

(declare-fun b!6105190 () Bool)

(assert (=> b!6105190 (= e!3723258 (matchRSpec!3156 (regTwo!32623 (regOne!32623 r!7292)) s!2326))))

(declare-fun bm!504917 () Bool)

(declare-fun call!504922 () Bool)

(assert (=> bm!504917 (= call!504922 (Exists!3125 (ite c!1096776 lambda!332641 lambda!332642)))))

(declare-fun b!6105191 () Bool)

(declare-fun c!1096777 () Bool)

(assert (=> b!6105191 (= c!1096777 ((_ is Union!16055) (regOne!32623 r!7292)))))

(assert (=> b!6105191 (= e!3723262 e!3723259)))

(declare-fun b!6105192 () Bool)

(assert (=> b!6105192 (= e!3723260 e!3723264)))

(declare-fun res!2532860 () Bool)

(assert (=> b!6105192 (= res!2532860 (not ((_ is EmptyLang!16055) (regOne!32623 r!7292))))))

(assert (=> b!6105192 (=> (not res!2532860) (not e!3723264))))

(declare-fun b!6105193 () Bool)

(declare-fun res!2532859 () Bool)

(declare-fun e!3723261 () Bool)

(assert (=> b!6105193 (=> res!2532859 e!3723261)))

(assert (=> b!6105193 (= res!2532859 call!504921)))

(assert (=> b!6105193 (= e!3723263 e!3723261)))

(assert (=> b!6105194 (= e!3723263 call!504922)))

(assert (=> b!6105195 (= e!3723261 call!504922)))

(assert (= (and d!1913535 c!1096775) b!6105186))

(assert (= (and d!1913535 (not c!1096775)) b!6105192))

(assert (= (and b!6105192 res!2532860) b!6105188))

(assert (= (and b!6105188 c!1096778) b!6105185))

(assert (= (and b!6105188 (not c!1096778)) b!6105191))

(assert (= (and b!6105191 c!1096777) b!6105187))

(assert (= (and b!6105191 (not c!1096777)) b!6105189))

(assert (= (and b!6105187 (not res!2532861)) b!6105190))

(assert (= (and b!6105189 c!1096776) b!6105193))

(assert (= (and b!6105189 (not c!1096776)) b!6105194))

(assert (= (and b!6105193 (not res!2532859)) b!6105195))

(assert (= (or b!6105195 b!6105194) bm!504917))

(assert (= (or b!6105186 b!6105193) bm!504916))

(assert (=> bm!504916 m!6955860))

(declare-fun m!6956474 () Bool)

(assert (=> b!6105187 m!6956474))

(declare-fun m!6956476 () Bool)

(assert (=> b!6105190 m!6956476))

(declare-fun m!6956478 () Bool)

(assert (=> bm!504917 m!6956478))

(assert (=> b!6104218 d!1913535))

(declare-fun d!1913537 () Bool)

(declare-fun res!2532866 () Bool)

(declare-fun e!3723269 () Bool)

(assert (=> d!1913537 (=> res!2532866 e!3723269)))

(assert (=> d!1913537 (= res!2532866 ((_ is Nil!64340) lt!2329586))))

(assert (=> d!1913537 (= (forall!15176 lt!2329586 lambda!332619) e!3723269)))

(declare-fun b!6105200 () Bool)

(declare-fun e!3723270 () Bool)

(assert (=> b!6105200 (= e!3723269 e!3723270)))

(declare-fun res!2532867 () Bool)

(assert (=> b!6105200 (=> (not res!2532867) (not e!3723270))))

(declare-fun dynLambda!25336 (Int Regex!16055) Bool)

(assert (=> b!6105200 (= res!2532867 (dynLambda!25336 lambda!332619 (h!70788 lt!2329586)))))

(declare-fun b!6105201 () Bool)

(assert (=> b!6105201 (= e!3723270 (forall!15176 (t!377915 lt!2329586) lambda!332619))))

(assert (= (and d!1913537 (not res!2532866)) b!6105200))

(assert (= (and b!6105200 res!2532867) b!6105201))

(declare-fun b_lambda!232585 () Bool)

(assert (=> (not b_lambda!232585) (not b!6105200)))

(declare-fun m!6956480 () Bool)

(assert (=> b!6105200 m!6956480))

(declare-fun m!6956482 () Bool)

(assert (=> b!6105201 m!6956482))

(assert (=> d!1913339 d!1913537))

(declare-fun d!1913539 () Bool)

(assert (=> d!1913539 (= (isEmptyLang!1482 lt!2329583) ((_ is EmptyLang!16055) lt!2329583))))

(assert (=> b!6104556 d!1913539))

(declare-fun d!1913541 () Bool)

(assert (=> d!1913541 (= (head!12631 s!2326) (h!70790 s!2326))))

(assert (=> b!6104342 d!1913541))

(assert (=> d!1913327 d!1913319))

(declare-fun d!1913543 () Bool)

(assert (=> d!1913543 (= (Exists!3125 lambda!332601) (choose!45383 lambda!332601))))

(declare-fun bs!1515878 () Bool)

(assert (= bs!1515878 d!1913543))

(declare-fun m!6956484 () Bool)

(assert (=> bs!1515878 m!6956484))

(assert (=> d!1913327 d!1913543))

(declare-fun b!6105202 () Bool)

(declare-fun e!3723276 () Bool)

(declare-fun e!3723277 () Bool)

(assert (=> b!6105202 (= e!3723276 e!3723277)))

(declare-fun res!2532868 () Bool)

(assert (=> b!6105202 (=> (not res!2532868) (not e!3723277))))

(declare-fun call!504925 () Bool)

(assert (=> b!6105202 (= res!2532868 call!504925)))

(declare-fun b!6105203 () Bool)

(declare-fun res!2532871 () Bool)

(declare-fun e!3723273 () Bool)

(assert (=> b!6105203 (=> (not res!2532871) (not e!3723273))))

(assert (=> b!6105203 (= res!2532871 call!504925)))

(declare-fun e!3723275 () Bool)

(assert (=> b!6105203 (= e!3723275 e!3723273)))

(declare-fun b!6105204 () Bool)

(declare-fun e!3723271 () Bool)

(declare-fun call!504924 () Bool)

(assert (=> b!6105204 (= e!3723271 call!504924)))

(declare-fun b!6105205 () Bool)

(declare-fun res!2532870 () Bool)

(assert (=> b!6105205 (=> res!2532870 e!3723276)))

(assert (=> b!6105205 (= res!2532870 (not ((_ is Concat!24900) (regOne!32622 r!7292))))))

(assert (=> b!6105205 (= e!3723275 e!3723276)))

(declare-fun b!6105206 () Bool)

(declare-fun e!3723272 () Bool)

(declare-fun e!3723274 () Bool)

(assert (=> b!6105206 (= e!3723272 e!3723274)))

(declare-fun c!1096779 () Bool)

(assert (=> b!6105206 (= c!1096779 ((_ is Star!16055) (regOne!32622 r!7292)))))

(declare-fun bm!504918 () Bool)

(declare-fun c!1096780 () Bool)

(assert (=> bm!504918 (= call!504924 (validRegex!7791 (ite c!1096779 (reg!16384 (regOne!32622 r!7292)) (ite c!1096780 (regOne!32623 (regOne!32622 r!7292)) (regOne!32622 (regOne!32622 r!7292))))))))

(declare-fun b!6105207 () Bool)

(assert (=> b!6105207 (= e!3723274 e!3723275)))

(assert (=> b!6105207 (= c!1096780 ((_ is Union!16055) (regOne!32622 r!7292)))))

(declare-fun b!6105208 () Bool)

(assert (=> b!6105208 (= e!3723274 e!3723271)))

(declare-fun res!2532869 () Bool)

(assert (=> b!6105208 (= res!2532869 (not (nullable!6048 (reg!16384 (regOne!32622 r!7292)))))))

(assert (=> b!6105208 (=> (not res!2532869) (not e!3723271))))

(declare-fun bm!504919 () Bool)

(assert (=> bm!504919 (= call!504925 call!504924)))

(declare-fun bm!504920 () Bool)

(declare-fun call!504923 () Bool)

(assert (=> bm!504920 (= call!504923 (validRegex!7791 (ite c!1096780 (regTwo!32623 (regOne!32622 r!7292)) (regTwo!32622 (regOne!32622 r!7292)))))))

(declare-fun b!6105210 () Bool)

(assert (=> b!6105210 (= e!3723277 call!504923)))

(declare-fun d!1913545 () Bool)

(declare-fun res!2532872 () Bool)

(assert (=> d!1913545 (=> res!2532872 e!3723272)))

(assert (=> d!1913545 (= res!2532872 ((_ is ElementMatch!16055) (regOne!32622 r!7292)))))

(assert (=> d!1913545 (= (validRegex!7791 (regOne!32622 r!7292)) e!3723272)))

(declare-fun b!6105209 () Bool)

(assert (=> b!6105209 (= e!3723273 call!504923)))

(assert (= (and d!1913545 (not res!2532872)) b!6105206))

(assert (= (and b!6105206 c!1096779) b!6105208))

(assert (= (and b!6105206 (not c!1096779)) b!6105207))

(assert (= (and b!6105208 res!2532869) b!6105204))

(assert (= (and b!6105207 c!1096780) b!6105203))

(assert (= (and b!6105207 (not c!1096780)) b!6105205))

(assert (= (and b!6105203 res!2532871) b!6105209))

(assert (= (and b!6105205 (not res!2532870)) b!6105202))

(assert (= (and b!6105202 res!2532868) b!6105210))

(assert (= (or b!6105209 b!6105210) bm!504920))

(assert (= (or b!6105203 b!6105202) bm!504919))

(assert (= (or b!6105204 bm!504919) bm!504918))

(declare-fun m!6956486 () Bool)

(assert (=> bm!504918 m!6956486))

(declare-fun m!6956488 () Bool)

(assert (=> b!6105208 m!6956488))

(declare-fun m!6956490 () Bool)

(assert (=> bm!504920 m!6956490))

(assert (=> d!1913327 d!1913545))

(assert (=> d!1913327 d!1913331))

(declare-fun bs!1515879 () Bool)

(declare-fun d!1913547 () Bool)

(assert (= bs!1515879 (and d!1913547 b!6104050)))

(declare-fun lambda!332645 () Int)

(assert (=> bs!1515879 (= lambda!332645 lambda!332562)))

(declare-fun bs!1515880 () Bool)

(assert (= bs!1515880 (and d!1913547 d!1913327)))

(assert (=> bs!1515880 (= lambda!332645 lambda!332601)))

(declare-fun bs!1515881 () Bool)

(assert (= bs!1515881 (and d!1913547 b!6105194)))

(assert (=> bs!1515881 (not (= lambda!332645 lambda!332642))))

(declare-fun bs!1515882 () Bool)

(assert (= bs!1515882 (and d!1913547 d!1913329)))

(assert (=> bs!1515882 (not (= lambda!332645 lambda!332607))))

(declare-fun bs!1515883 () Bool)

(assert (= bs!1515883 (and d!1913547 b!6104226)))

(assert (=> bs!1515883 (not (= lambda!332645 lambda!332583))))

(assert (=> bs!1515882 (= lambda!332645 lambda!332606)))

(declare-fun bs!1515884 () Bool)

(assert (= bs!1515884 (and d!1913547 b!6105195)))

(assert (=> bs!1515884 (not (= lambda!332645 lambda!332641))))

(declare-fun bs!1515885 () Bool)

(assert (= bs!1515885 (and d!1913547 b!6104225)))

(assert (=> bs!1515885 (not (= lambda!332645 lambda!332585))))

(assert (=> bs!1515879 (not (= lambda!332645 lambda!332563))))

(assert (=> d!1913547 true))

(assert (=> d!1913547 true))

(assert (=> d!1913547 true))

(assert (=> d!1913547 (= (isDefined!12649 (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) Nil!64342 s!2326 s!2326)) (Exists!3125 lambda!332645))))

(assert (=> d!1913547 true))

(declare-fun _$89!2152 () Unit!157381)

(assert (=> d!1913547 (= (choose!45384 (regOne!32622 r!7292) (regTwo!32622 r!7292) s!2326) _$89!2152)))

(declare-fun bs!1515886 () Bool)

(assert (= bs!1515886 d!1913547))

(assert (=> bs!1515886 m!6955766))

(assert (=> bs!1515886 m!6955766))

(assert (=> bs!1515886 m!6955768))

(declare-fun m!6956492 () Bool)

(assert (=> bs!1515886 m!6956492))

(assert (=> d!1913327 d!1913547))

(declare-fun b!6105223 () Bool)

(declare-fun e!3723284 () List!64466)

(assert (=> b!6105223 (= e!3723284 (_2!36337 (get!22185 lt!2329570)))))

(declare-fun b!6105224 () Bool)

(assert (=> b!6105224 (= e!3723284 (Cons!64342 (h!70790 (_1!36337 (get!22185 lt!2329570))) (++!14142 (t!377917 (_1!36337 (get!22185 lt!2329570))) (_2!36337 (get!22185 lt!2329570)))))))

(declare-fun b!6105225 () Bool)

(declare-fun res!2532882 () Bool)

(declare-fun e!3723285 () Bool)

(assert (=> b!6105225 (=> (not res!2532882) (not e!3723285))))

(declare-fun lt!2329619 () List!64466)

(declare-fun size!40200 (List!64466) Int)

(assert (=> b!6105225 (= res!2532882 (= (size!40200 lt!2329619) (+ (size!40200 (_1!36337 (get!22185 lt!2329570))) (size!40200 (_2!36337 (get!22185 lt!2329570))))))))

(declare-fun d!1913549 () Bool)

(assert (=> d!1913549 e!3723285))

(declare-fun res!2532881 () Bool)

(assert (=> d!1913549 (=> (not res!2532881) (not e!3723285))))

(declare-fun content!11937 (List!64466) (InoxSet C!32380))

(assert (=> d!1913549 (= res!2532881 (= (content!11937 lt!2329619) ((_ map or) (content!11937 (_1!36337 (get!22185 lt!2329570))) (content!11937 (_2!36337 (get!22185 lt!2329570))))))))

(assert (=> d!1913549 (= lt!2329619 e!3723284)))

(declare-fun c!1096783 () Bool)

(assert (=> d!1913549 (= c!1096783 ((_ is Nil!64342) (_1!36337 (get!22185 lt!2329570))))))

(assert (=> d!1913549 (= (++!14142 (_1!36337 (get!22185 lt!2329570)) (_2!36337 (get!22185 lt!2329570))) lt!2329619)))

(declare-fun b!6105226 () Bool)

(assert (=> b!6105226 (= e!3723285 (or (not (= (_2!36337 (get!22185 lt!2329570)) Nil!64342)) (= lt!2329619 (_1!36337 (get!22185 lt!2329570)))))))

(assert (= (and d!1913549 c!1096783) b!6105223))

(assert (= (and d!1913549 (not c!1096783)) b!6105224))

(assert (= (and d!1913549 res!2532881) b!6105225))

(assert (= (and b!6105225 res!2532882) b!6105226))

(declare-fun m!6956494 () Bool)

(assert (=> b!6105224 m!6956494))

(declare-fun m!6956496 () Bool)

(assert (=> b!6105225 m!6956496))

(declare-fun m!6956498 () Bool)

(assert (=> b!6105225 m!6956498))

(declare-fun m!6956500 () Bool)

(assert (=> b!6105225 m!6956500))

(declare-fun m!6956502 () Bool)

(assert (=> d!1913549 m!6956502))

(declare-fun m!6956504 () Bool)

(assert (=> d!1913549 m!6956504))

(declare-fun m!6956506 () Bool)

(assert (=> d!1913549 m!6956506))

(assert (=> b!6104489 d!1913549))

(assert (=> b!6104489 d!1913523))

(declare-fun d!1913551 () Bool)

(assert (=> d!1913551 (= (head!12632 (exprs!5939 (h!70789 zl!343))) (h!70788 (exprs!5939 (h!70789 zl!343))))))

(assert (=> b!6104532 d!1913551))

(declare-fun b!6105227 () Bool)

(declare-fun e!3723286 () List!64466)

(assert (=> b!6105227 (= e!3723286 (t!377917 s!2326))))

(declare-fun b!6105228 () Bool)

(assert (=> b!6105228 (= e!3723286 (Cons!64342 (h!70790 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342))) (++!14142 (t!377917 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342))) (t!377917 s!2326))))))

(declare-fun b!6105229 () Bool)

(declare-fun res!2532884 () Bool)

(declare-fun e!3723287 () Bool)

(assert (=> b!6105229 (=> (not res!2532884) (not e!3723287))))

(declare-fun lt!2329620 () List!64466)

(assert (=> b!6105229 (= res!2532884 (= (size!40200 lt!2329620) (+ (size!40200 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342))) (size!40200 (t!377917 s!2326)))))))

(declare-fun d!1913553 () Bool)

(assert (=> d!1913553 e!3723287))

(declare-fun res!2532883 () Bool)

(assert (=> d!1913553 (=> (not res!2532883) (not e!3723287))))

(assert (=> d!1913553 (= res!2532883 (= (content!11937 lt!2329620) ((_ map or) (content!11937 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342))) (content!11937 (t!377917 s!2326)))))))

(assert (=> d!1913553 (= lt!2329620 e!3723286)))

(declare-fun c!1096784 () Bool)

(assert (=> d!1913553 (= c!1096784 ((_ is Nil!64342) (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342))))))

(assert (=> d!1913553 (= (++!14142 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (t!377917 s!2326)) lt!2329620)))

(declare-fun b!6105230 () Bool)

(assert (=> b!6105230 (= e!3723287 (or (not (= (t!377917 s!2326) Nil!64342)) (= lt!2329620 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)))))))

(assert (= (and d!1913553 c!1096784) b!6105227))

(assert (= (and d!1913553 (not c!1096784)) b!6105228))

(assert (= (and d!1913553 res!2532883) b!6105229))

(assert (= (and b!6105229 res!2532884) b!6105230))

(declare-fun m!6956508 () Bool)

(assert (=> b!6105228 m!6956508))

(declare-fun m!6956510 () Bool)

(assert (=> b!6105229 m!6956510))

(assert (=> b!6105229 m!6955968))

(declare-fun m!6956512 () Bool)

(assert (=> b!6105229 m!6956512))

(declare-fun m!6956514 () Bool)

(assert (=> b!6105229 m!6956514))

(declare-fun m!6956516 () Bool)

(assert (=> d!1913553 m!6956516))

(assert (=> d!1913553 m!6955968))

(declare-fun m!6956518 () Bool)

(assert (=> d!1913553 m!6956518))

(declare-fun m!6956520 () Bool)

(assert (=> d!1913553 m!6956520))

(assert (=> b!6104487 d!1913553))

(declare-fun b!6105231 () Bool)

(declare-fun e!3723288 () List!64466)

(assert (=> b!6105231 (= e!3723288 (Cons!64342 (h!70790 s!2326) Nil!64342))))

(declare-fun b!6105232 () Bool)

(assert (=> b!6105232 (= e!3723288 (Cons!64342 (h!70790 Nil!64342) (++!14142 (t!377917 Nil!64342) (Cons!64342 (h!70790 s!2326) Nil!64342))))))

(declare-fun b!6105233 () Bool)

(declare-fun res!2532886 () Bool)

(declare-fun e!3723289 () Bool)

(assert (=> b!6105233 (=> (not res!2532886) (not e!3723289))))

(declare-fun lt!2329621 () List!64466)

(assert (=> b!6105233 (= res!2532886 (= (size!40200 lt!2329621) (+ (size!40200 Nil!64342) (size!40200 (Cons!64342 (h!70790 s!2326) Nil!64342)))))))

(declare-fun d!1913555 () Bool)

(assert (=> d!1913555 e!3723289))

(declare-fun res!2532885 () Bool)

(assert (=> d!1913555 (=> (not res!2532885) (not e!3723289))))

(assert (=> d!1913555 (= res!2532885 (= (content!11937 lt!2329621) ((_ map or) (content!11937 Nil!64342) (content!11937 (Cons!64342 (h!70790 s!2326) Nil!64342)))))))

(assert (=> d!1913555 (= lt!2329621 e!3723288)))

(declare-fun c!1096785 () Bool)

(assert (=> d!1913555 (= c!1096785 ((_ is Nil!64342) Nil!64342))))

(assert (=> d!1913555 (= (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) lt!2329621)))

(declare-fun b!6105234 () Bool)

(assert (=> b!6105234 (= e!3723289 (or (not (= (Cons!64342 (h!70790 s!2326) Nil!64342) Nil!64342)) (= lt!2329621 Nil!64342)))))

(assert (= (and d!1913555 c!1096785) b!6105231))

(assert (= (and d!1913555 (not c!1096785)) b!6105232))

(assert (= (and d!1913555 res!2532885) b!6105233))

(assert (= (and b!6105233 res!2532886) b!6105234))

(declare-fun m!6956522 () Bool)

(assert (=> b!6105232 m!6956522))

(declare-fun m!6956524 () Bool)

(assert (=> b!6105233 m!6956524))

(declare-fun m!6956526 () Bool)

(assert (=> b!6105233 m!6956526))

(declare-fun m!6956528 () Bool)

(assert (=> b!6105233 m!6956528))

(declare-fun m!6956530 () Bool)

(assert (=> d!1913555 m!6956530))

(declare-fun m!6956532 () Bool)

(assert (=> d!1913555 m!6956532))

(declare-fun m!6956534 () Bool)

(assert (=> d!1913555 m!6956534))

(assert (=> b!6104487 d!1913555))

(declare-fun d!1913557 () Bool)

(assert (=> d!1913557 (= (++!14142 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (t!377917 s!2326)) s!2326)))

(declare-fun lt!2329624 () Unit!157381)

(declare-fun choose!45388 (List!64466 C!32380 List!64466 List!64466) Unit!157381)

(assert (=> d!1913557 (= lt!2329624 (choose!45388 Nil!64342 (h!70790 s!2326) (t!377917 s!2326) s!2326))))

(assert (=> d!1913557 (= (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) (t!377917 s!2326))) s!2326)))

(assert (=> d!1913557 (= (lemmaMoveElementToOtherListKeepsConcatEq!2237 Nil!64342 (h!70790 s!2326) (t!377917 s!2326) s!2326) lt!2329624)))

(declare-fun bs!1515887 () Bool)

(assert (= bs!1515887 d!1913557))

(assert (=> bs!1515887 m!6955968))

(assert (=> bs!1515887 m!6955968))

(assert (=> bs!1515887 m!6955970))

(declare-fun m!6956536 () Bool)

(assert (=> bs!1515887 m!6956536))

(declare-fun m!6956538 () Bool)

(assert (=> bs!1515887 m!6956538))

(assert (=> b!6104487 d!1913557))

(declare-fun b!6105235 () Bool)

(declare-fun res!2532889 () Bool)

(declare-fun e!3723294 () Bool)

(assert (=> b!6105235 (=> (not res!2532889) (not e!3723294))))

(declare-fun lt!2329626 () Option!15946)

(assert (=> b!6105235 (= res!2532889 (matchR!8238 (regOne!32622 r!7292) (_1!36337 (get!22185 lt!2329626))))))

(declare-fun b!6105236 () Bool)

(declare-fun res!2532887 () Bool)

(assert (=> b!6105236 (=> (not res!2532887) (not e!3723294))))

(assert (=> b!6105236 (= res!2532887 (matchR!8238 (regTwo!32622 r!7292) (_2!36337 (get!22185 lt!2329626))))))

(declare-fun b!6105237 () Bool)

(declare-fun lt!2329625 () Unit!157381)

(declare-fun lt!2329627 () Unit!157381)

(assert (=> b!6105237 (= lt!2329625 lt!2329627)))

(assert (=> b!6105237 (= (++!14142 (++!14142 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (Cons!64342 (h!70790 (t!377917 s!2326)) Nil!64342)) (t!377917 (t!377917 s!2326))) s!2326)))

(assert (=> b!6105237 (= lt!2329627 (lemmaMoveElementToOtherListKeepsConcatEq!2237 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (h!70790 (t!377917 s!2326)) (t!377917 (t!377917 s!2326)) s!2326))))

(declare-fun e!3723290 () Option!15946)

(assert (=> b!6105237 (= e!3723290 (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) (++!14142 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (Cons!64342 (h!70790 (t!377917 s!2326)) Nil!64342)) (t!377917 (t!377917 s!2326)) s!2326))))

(declare-fun b!6105238 () Bool)

(assert (=> b!6105238 (= e!3723290 None!15945)))

(declare-fun b!6105239 () Bool)

(assert (=> b!6105239 (= e!3723294 (= (++!14142 (_1!36337 (get!22185 lt!2329626)) (_2!36337 (get!22185 lt!2329626))) s!2326))))

(declare-fun d!1913559 () Bool)

(declare-fun e!3723292 () Bool)

(assert (=> d!1913559 e!3723292))

(declare-fun res!2532890 () Bool)

(assert (=> d!1913559 (=> res!2532890 e!3723292)))

(assert (=> d!1913559 (= res!2532890 e!3723294)))

(declare-fun res!2532888 () Bool)

(assert (=> d!1913559 (=> (not res!2532888) (not e!3723294))))

(assert (=> d!1913559 (= res!2532888 (isDefined!12649 lt!2329626))))

(declare-fun e!3723291 () Option!15946)

(assert (=> d!1913559 (= lt!2329626 e!3723291)))

(declare-fun c!1096787 () Bool)

(declare-fun e!3723293 () Bool)

(assert (=> d!1913559 (= c!1096787 e!3723293)))

(declare-fun res!2532891 () Bool)

(assert (=> d!1913559 (=> (not res!2532891) (not e!3723293))))

(assert (=> d!1913559 (= res!2532891 (matchR!8238 (regOne!32622 r!7292) (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342))))))

(assert (=> d!1913559 (validRegex!7791 (regOne!32622 r!7292))))

(assert (=> d!1913559 (= (findConcatSeparation!2360 (regOne!32622 r!7292) (regTwo!32622 r!7292) (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (t!377917 s!2326) s!2326) lt!2329626)))

(declare-fun b!6105240 () Bool)

(assert (=> b!6105240 (= e!3723292 (not (isDefined!12649 lt!2329626)))))

(declare-fun b!6105241 () Bool)

(assert (=> b!6105241 (= e!3723293 (matchR!8238 (regTwo!32622 r!7292) (t!377917 s!2326)))))

(declare-fun b!6105242 () Bool)

(assert (=> b!6105242 (= e!3723291 (Some!15945 (tuple2!66069 (++!14142 Nil!64342 (Cons!64342 (h!70790 s!2326) Nil!64342)) (t!377917 s!2326))))))

(declare-fun b!6105243 () Bool)

(assert (=> b!6105243 (= e!3723291 e!3723290)))

(declare-fun c!1096786 () Bool)

(assert (=> b!6105243 (= c!1096786 ((_ is Nil!64342) (t!377917 s!2326)))))

(assert (= (and d!1913559 res!2532891) b!6105241))

(assert (= (and d!1913559 c!1096787) b!6105242))

(assert (= (and d!1913559 (not c!1096787)) b!6105243))

(assert (= (and b!6105243 c!1096786) b!6105238))

(assert (= (and b!6105243 (not c!1096786)) b!6105237))

(assert (= (and d!1913559 res!2532888) b!6105235))

(assert (= (and b!6105235 res!2532889) b!6105236))

(assert (= (and b!6105236 res!2532887) b!6105239))

(assert (= (and d!1913559 (not res!2532890)) b!6105240))

(declare-fun m!6956540 () Bool)

(assert (=> b!6105236 m!6956540))

(declare-fun m!6956542 () Bool)

(assert (=> b!6105236 m!6956542))

(declare-fun m!6956544 () Bool)

(assert (=> b!6105241 m!6956544))

(assert (=> b!6105237 m!6955968))

(declare-fun m!6956546 () Bool)

(assert (=> b!6105237 m!6956546))

(assert (=> b!6105237 m!6956546))

(declare-fun m!6956548 () Bool)

(assert (=> b!6105237 m!6956548))

(assert (=> b!6105237 m!6955968))

(declare-fun m!6956550 () Bool)

(assert (=> b!6105237 m!6956550))

(assert (=> b!6105237 m!6956546))

(declare-fun m!6956552 () Bool)

(assert (=> b!6105237 m!6956552))

(declare-fun m!6956554 () Bool)

(assert (=> b!6105240 m!6956554))

(assert (=> b!6105235 m!6956540))

(declare-fun m!6956556 () Bool)

(assert (=> b!6105235 m!6956556))

(assert (=> d!1913559 m!6956554))

(assert (=> d!1913559 m!6955968))

(declare-fun m!6956558 () Bool)

(assert (=> d!1913559 m!6956558))

(assert (=> d!1913559 m!6955982))

(assert (=> b!6105239 m!6956540))

(declare-fun m!6956560 () Bool)

(assert (=> b!6105239 m!6956560))

(assert (=> b!6104487 d!1913559))

(declare-fun d!1913561 () Bool)

(assert (=> d!1913561 (= (isEmpty!36262 (unfocusZipperList!1476 zl!343)) ((_ is Nil!64340) (unfocusZipperList!1476 zl!343)))))

(assert (=> b!6104561 d!1913561))

(declare-fun b!6105245 () Bool)

(declare-fun e!3723297 () (InoxSet Context!10878))

(declare-fun call!504930 () (InoxSet Context!10878))

(assert (=> b!6105245 (= e!3723297 call!504930)))

(declare-fun b!6105246 () Bool)

(declare-fun e!3723300 () (InoxSet Context!10878))

(declare-fun e!3723299 () (InoxSet Context!10878))

(assert (=> b!6105246 (= e!3723300 e!3723299)))

(declare-fun c!1096791 () Bool)

(assert (=> b!6105246 (= c!1096791 ((_ is Concat!24900) (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))))

(declare-fun bm!504921 () Bool)

(declare-fun call!504931 () (InoxSet Context!10878))

(assert (=> bm!504921 (= call!504930 call!504931)))

(declare-fun bm!504922 () Bool)

(declare-fun call!504926 () (InoxSet Context!10878))

(assert (=> bm!504922 (= call!504931 call!504926)))

(declare-fun b!6105247 () Bool)

(declare-fun c!1096790 () Bool)

(declare-fun e!3723295 () Bool)

(assert (=> b!6105247 (= c!1096790 e!3723295)))

(declare-fun res!2532892 () Bool)

(assert (=> b!6105247 (=> (not res!2532892) (not e!3723295))))

(assert (=> b!6105247 (= res!2532892 ((_ is Concat!24900) (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))))

(declare-fun e!3723298 () (InoxSet Context!10878))

(assert (=> b!6105247 (= e!3723298 e!3723300)))

(declare-fun b!6105248 () Bool)

(assert (=> b!6105248 (= e!3723297 ((as const (Array Context!10878 Bool)) false))))

(declare-fun b!6105249 () Bool)

(declare-fun e!3723296 () (InoxSet Context!10878))

(assert (=> b!6105249 (= e!3723296 (store ((as const (Array Context!10878 Bool)) false) (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) true))))

(declare-fun d!1913563 () Bool)

(declare-fun c!1096789 () Bool)

(assert (=> d!1913563 (= c!1096789 (and ((_ is ElementMatch!16055) (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (= (c!1096515 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (h!70790 s!2326))))))

(assert (=> d!1913563 (= (derivationStepZipperDown!1303 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))) (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (h!70790 s!2326)) e!3723296)))

(declare-fun b!6105244 () Bool)

(assert (=> b!6105244 (= e!3723296 e!3723298)))

(declare-fun c!1096792 () Bool)

(assert (=> b!6105244 (= c!1096792 ((_ is Union!16055) (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))))

(declare-fun b!6105250 () Bool)

(declare-fun call!504928 () (InoxSet Context!10878))

(assert (=> b!6105250 (= e!3723298 ((_ map or) call!504926 call!504928))))

(declare-fun b!6105251 () Bool)

(assert (=> b!6105251 (= e!3723300 ((_ map or) call!504928 call!504931))))

(declare-fun bm!504923 () Bool)

(declare-fun call!504927 () List!64464)

(assert (=> bm!504923 (= call!504926 (derivationStepZipperDown!1303 (ite c!1096792 (regOne!32623 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (ite c!1096790 (regTwo!32622 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (ite c!1096791 (regOne!32622 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (reg!16384 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))))) (ite (or c!1096792 c!1096790) (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (Context!10879 call!504927)) (h!70790 s!2326)))))

(declare-fun b!6105252 () Bool)

(declare-fun c!1096788 () Bool)

(assert (=> b!6105252 (= c!1096788 ((_ is Star!16055) (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))))

(assert (=> b!6105252 (= e!3723299 e!3723297)))

(declare-fun bm!504924 () Bool)

(declare-fun call!504929 () List!64464)

(assert (=> bm!504924 (= call!504927 call!504929)))

(declare-fun bm!504925 () Bool)

(assert (=> bm!504925 (= call!504929 ($colon$colon!1932 (exprs!5939 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))) (ite (or c!1096790 c!1096791) (regTwo!32622 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))))))

(declare-fun bm!504926 () Bool)

(assert (=> bm!504926 (= call!504928 (derivationStepZipperDown!1303 (ite c!1096792 (regTwo!32623 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (regOne!32622 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))) (ite c!1096792 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (Context!10879 call!504929)) (h!70790 s!2326)))))

(declare-fun b!6105253 () Bool)

(assert (=> b!6105253 (= e!3723295 (nullable!6048 (regOne!32622 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))))))

(declare-fun b!6105254 () Bool)

(assert (=> b!6105254 (= e!3723299 call!504930)))

(assert (= (and d!1913563 c!1096789) b!6105249))

(assert (= (and d!1913563 (not c!1096789)) b!6105244))

(assert (= (and b!6105244 c!1096792) b!6105250))

(assert (= (and b!6105244 (not c!1096792)) b!6105247))

(assert (= (and b!6105247 res!2532892) b!6105253))

(assert (= (and b!6105247 c!1096790) b!6105251))

(assert (= (and b!6105247 (not c!1096790)) b!6105246))

(assert (= (and b!6105246 c!1096791) b!6105254))

(assert (= (and b!6105246 (not c!1096791)) b!6105252))

(assert (= (and b!6105252 c!1096788) b!6105245))

(assert (= (and b!6105252 (not c!1096788)) b!6105248))

(assert (= (or b!6105254 b!6105245) bm!504924))

(assert (= (or b!6105254 b!6105245) bm!504921))

(assert (= (or b!6105251 bm!504924) bm!504925))

(assert (= (or b!6105251 bm!504921) bm!504922))

(assert (= (or b!6105250 b!6105251) bm!504926))

(assert (= (or b!6105250 bm!504922) bm!504923))

(declare-fun m!6956562 () Bool)

(assert (=> b!6105249 m!6956562))

(declare-fun m!6956564 () Bool)

(assert (=> bm!504925 m!6956564))

(declare-fun m!6956566 () Bool)

(assert (=> b!6105253 m!6956566))

(declare-fun m!6956568 () Bool)

(assert (=> bm!504923 m!6956568))

(declare-fun m!6956570 () Bool)

(assert (=> bm!504926 m!6956570))

(assert (=> bm!504847 d!1913563))

(declare-fun d!1913565 () Bool)

(assert (=> d!1913565 (= (isUnion!912 lt!2329583) ((_ is Union!16055) lt!2329583))))

(assert (=> b!6104559 d!1913565))

(declare-fun bs!1515888 () Bool)

(declare-fun d!1913567 () Bool)

(assert (= bs!1515888 (and d!1913567 d!1913351)))

(declare-fun lambda!332646 () Int)

(assert (=> bs!1515888 (= lambda!332646 lambda!332621)))

(declare-fun bs!1515889 () Bool)

(assert (= bs!1515889 (and d!1913567 d!1913339)))

(assert (=> bs!1515889 (= lambda!332646 lambda!332619)))

(declare-fun bs!1515890 () Bool)

(assert (= bs!1515890 (and d!1913567 d!1913335)))

(assert (=> bs!1515890 (= lambda!332646 lambda!332613)))

(declare-fun bs!1515891 () Bool)

(assert (= bs!1515891 (and d!1913567 d!1913337)))

(assert (=> bs!1515891 (= lambda!332646 lambda!332616)))

(declare-fun bs!1515892 () Bool)

(assert (= bs!1515892 (and d!1913567 d!1913341)))

(assert (=> bs!1515892 (= lambda!332646 lambda!332620)))

(declare-fun bs!1515893 () Bool)

(assert (= bs!1515893 (and d!1913567 d!1913529)))

(assert (=> bs!1515893 (= lambda!332646 lambda!332640)))

(declare-fun bs!1515894 () Bool)

(assert (= bs!1515894 (and d!1913567 d!1913333)))

(assert (=> bs!1515894 (= lambda!332646 lambda!332610)))

(assert (=> d!1913567 (= (inv!83384 (h!70789 (t!377916 zl!343))) (forall!15176 (exprs!5939 (h!70789 (t!377916 zl!343))) lambda!332646))))

(declare-fun bs!1515895 () Bool)

(assert (= bs!1515895 d!1913567))

(declare-fun m!6956572 () Bool)

(assert (=> bs!1515895 m!6956572))

(assert (=> b!6104674 d!1913567))

(declare-fun d!1913569 () Bool)

(declare-fun res!2532893 () Bool)

(declare-fun e!3723301 () Bool)

(assert (=> d!1913569 (=> res!2532893 e!3723301)))

(assert (=> d!1913569 (= res!2532893 ((_ is Nil!64340) (exprs!5939 lt!2329513)))))

(assert (=> d!1913569 (= (forall!15176 (exprs!5939 lt!2329513) lambda!332621) e!3723301)))

(declare-fun b!6105255 () Bool)

(declare-fun e!3723302 () Bool)

(assert (=> b!6105255 (= e!3723301 e!3723302)))

(declare-fun res!2532894 () Bool)

(assert (=> b!6105255 (=> (not res!2532894) (not e!3723302))))

(assert (=> b!6105255 (= res!2532894 (dynLambda!25336 lambda!332621 (h!70788 (exprs!5939 lt!2329513))))))

(declare-fun b!6105256 () Bool)

(assert (=> b!6105256 (= e!3723302 (forall!15176 (t!377915 (exprs!5939 lt!2329513)) lambda!332621))))

(assert (= (and d!1913569 (not res!2532893)) b!6105255))

(assert (= (and b!6105255 res!2532894) b!6105256))

(declare-fun b_lambda!232587 () Bool)

(assert (=> (not b_lambda!232587) (not b!6105255)))

(declare-fun m!6956574 () Bool)

(assert (=> b!6105255 m!6956574))

(declare-fun m!6956576 () Bool)

(assert (=> b!6105256 m!6956576))

(assert (=> d!1913351 d!1913569))

(declare-fun d!1913571 () Bool)

(assert (=> d!1913571 (= (isEmpty!36265 s!2326) ((_ is Nil!64342) s!2326))))

(assert (=> d!1913295 d!1913571))

(assert (=> d!1913295 d!1913345))

(declare-fun d!1913573 () Bool)

(declare-fun res!2532895 () Bool)

(declare-fun e!3723303 () Bool)

(assert (=> d!1913573 (=> res!2532895 e!3723303)))

(assert (=> d!1913573 (= res!2532895 ((_ is Nil!64340) (exprs!5939 setElem!41246)))))

(assert (=> d!1913573 (= (forall!15176 (exprs!5939 setElem!41246) lambda!332620) e!3723303)))

(declare-fun b!6105257 () Bool)

(declare-fun e!3723304 () Bool)

(assert (=> b!6105257 (= e!3723303 e!3723304)))

(declare-fun res!2532896 () Bool)

(assert (=> b!6105257 (=> (not res!2532896) (not e!3723304))))

(assert (=> b!6105257 (= res!2532896 (dynLambda!25336 lambda!332620 (h!70788 (exprs!5939 setElem!41246))))))

(declare-fun b!6105258 () Bool)

(assert (=> b!6105258 (= e!3723304 (forall!15176 (t!377915 (exprs!5939 setElem!41246)) lambda!332620))))

(assert (= (and d!1913573 (not res!2532895)) b!6105257))

(assert (= (and b!6105257 res!2532896) b!6105258))

(declare-fun b_lambda!232589 () Bool)

(assert (=> (not b_lambda!232589) (not b!6105257)))

(declare-fun m!6956578 () Bool)

(assert (=> b!6105257 m!6956578))

(declare-fun m!6956580 () Bool)

(assert (=> b!6105258 m!6956580))

(assert (=> d!1913341 d!1913573))

(assert (=> b!6104333 d!1913541))

(declare-fun b!6105260 () Bool)

(declare-fun e!3723307 () (InoxSet Context!10878))

(declare-fun call!504936 () (InoxSet Context!10878))

(assert (=> b!6105260 (= e!3723307 call!504936)))

(declare-fun b!6105261 () Bool)

(declare-fun e!3723310 () (InoxSet Context!10878))

(declare-fun e!3723309 () (InoxSet Context!10878))

(assert (=> b!6105261 (= e!3723310 e!3723309)))

(declare-fun c!1096796 () Bool)

(assert (=> b!6105261 (= c!1096796 ((_ is Concat!24900) (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))))))

(declare-fun bm!504927 () Bool)

(declare-fun call!504937 () (InoxSet Context!10878))

(assert (=> bm!504927 (= call!504936 call!504937)))

(declare-fun bm!504928 () Bool)

(declare-fun call!504932 () (InoxSet Context!10878))

(assert (=> bm!504928 (= call!504937 call!504932)))

(declare-fun b!6105262 () Bool)

(declare-fun c!1096795 () Bool)

(declare-fun e!3723305 () Bool)

(assert (=> b!6105262 (= c!1096795 e!3723305)))

(declare-fun res!2532897 () Bool)

(assert (=> b!6105262 (=> (not res!2532897) (not e!3723305))))

(assert (=> b!6105262 (= res!2532897 ((_ is Concat!24900) (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))))))

(declare-fun e!3723308 () (InoxSet Context!10878))

(assert (=> b!6105262 (= e!3723308 e!3723310)))

(declare-fun b!6105263 () Bool)

(assert (=> b!6105263 (= e!3723307 ((as const (Array Context!10878 Bool)) false))))

(declare-fun e!3723306 () (InoxSet Context!10878))

(declare-fun b!6105264 () Bool)

(assert (=> b!6105264 (= e!3723306 (store ((as const (Array Context!10878 Bool)) false) (ite (or c!1096671 c!1096669) lt!2329513 (Context!10879 call!504845)) true))))

(declare-fun d!1913575 () Bool)

(declare-fun c!1096794 () Bool)

(assert (=> d!1913575 (= c!1096794 (and ((_ is ElementMatch!16055) (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))) (= (c!1096515 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))) (h!70790 s!2326))))))

(assert (=> d!1913575 (= (derivationStepZipperDown!1303 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343))))))) (ite (or c!1096671 c!1096669) lt!2329513 (Context!10879 call!504845)) (h!70790 s!2326)) e!3723306)))

(declare-fun b!6105259 () Bool)

(assert (=> b!6105259 (= e!3723306 e!3723308)))

(declare-fun c!1096797 () Bool)

(assert (=> b!6105259 (= c!1096797 ((_ is Union!16055) (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))))))

(declare-fun b!6105265 () Bool)

(declare-fun call!504934 () (InoxSet Context!10878))

(assert (=> b!6105265 (= e!3723308 ((_ map or) call!504932 call!504934))))

(declare-fun b!6105266 () Bool)

(assert (=> b!6105266 (= e!3723310 ((_ map or) call!504934 call!504937))))

(declare-fun call!504933 () List!64464)

(declare-fun bm!504929 () Bool)

(assert (=> bm!504929 (= call!504932 (derivationStepZipperDown!1303 (ite c!1096797 (regOne!32623 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))) (ite c!1096795 (regTwo!32622 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))) (ite c!1096796 (regOne!32622 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))) (reg!16384 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343))))))))))) (ite (or c!1096797 c!1096795) (ite (or c!1096671 c!1096669) lt!2329513 (Context!10879 call!504845)) (Context!10879 call!504933)) (h!70790 s!2326)))))

(declare-fun c!1096793 () Bool)

(declare-fun b!6105267 () Bool)

(assert (=> b!6105267 (= c!1096793 ((_ is Star!16055) (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))))))

(assert (=> b!6105267 (= e!3723309 e!3723307)))

(declare-fun bm!504930 () Bool)

(declare-fun call!504935 () List!64464)

(assert (=> bm!504930 (= call!504933 call!504935)))

(declare-fun bm!504931 () Bool)

(assert (=> bm!504931 (= call!504935 ($colon$colon!1932 (exprs!5939 (ite (or c!1096671 c!1096669) lt!2329513 (Context!10879 call!504845))) (ite (or c!1096795 c!1096796) (regTwo!32622 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))) (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343))))))))))))

(declare-fun bm!504932 () Bool)

(assert (=> bm!504932 (= call!504934 (derivationStepZipperDown!1303 (ite c!1096797 (regTwo!32623 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343)))))))) (regOne!32622 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343))))))))) (ite c!1096797 (ite (or c!1096671 c!1096669) lt!2329513 (Context!10879 call!504845)) (Context!10879 call!504935)) (h!70790 s!2326)))))

(declare-fun b!6105268 () Bool)

(assert (=> b!6105268 (= e!3723305 (nullable!6048 (regOne!32622 (ite c!1096671 (regOne!32623 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096669 (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (ite c!1096670 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (reg!16384 (h!70788 (exprs!5939 (h!70789 zl!343))))))))))))

(declare-fun b!6105269 () Bool)

(assert (=> b!6105269 (= e!3723309 call!504936)))

(assert (= (and d!1913575 c!1096794) b!6105264))

(assert (= (and d!1913575 (not c!1096794)) b!6105259))

(assert (= (and b!6105259 c!1096797) b!6105265))

(assert (= (and b!6105259 (not c!1096797)) b!6105262))

(assert (= (and b!6105262 res!2532897) b!6105268))

(assert (= (and b!6105262 c!1096795) b!6105266))

(assert (= (and b!6105262 (not c!1096795)) b!6105261))

(assert (= (and b!6105261 c!1096796) b!6105269))

(assert (= (and b!6105261 (not c!1096796)) b!6105267))

(assert (= (and b!6105267 c!1096793) b!6105260))

(assert (= (and b!6105267 (not c!1096793)) b!6105263))

(assert (= (or b!6105269 b!6105260) bm!504930))

(assert (= (or b!6105269 b!6105260) bm!504927))

(assert (= (or b!6105266 bm!504930) bm!504931))

(assert (= (or b!6105266 bm!504927) bm!504928))

(assert (= (or b!6105265 b!6105266) bm!504932))

(assert (= (or b!6105265 bm!504928) bm!504929))

(declare-fun m!6956582 () Bool)

(assert (=> b!6105264 m!6956582))

(declare-fun m!6956584 () Bool)

(assert (=> bm!504931 m!6956584))

(declare-fun m!6956586 () Bool)

(assert (=> b!6105268 m!6956586))

(declare-fun m!6956588 () Bool)

(assert (=> bm!504929 m!6956588))

(declare-fun m!6956590 () Bool)

(assert (=> bm!504932 m!6956590))

(assert (=> bm!504841 d!1913575))

(declare-fun d!1913577 () Bool)

(assert (=> d!1913577 (= (isEmpty!36262 (t!377915 (unfocusZipperList!1476 zl!343))) ((_ is Nil!64340) (t!377915 (unfocusZipperList!1476 zl!343))))))

(assert (=> b!6104565 d!1913577))

(assert (=> d!1913315 d!1913295))

(assert (=> d!1913315 d!1913281))

(declare-fun d!1913579 () Bool)

(assert (=> d!1913579 (= (matchR!8238 r!7292 s!2326) (matchRSpec!3156 r!7292 s!2326))))

(assert (=> d!1913579 true))

(declare-fun _$88!4590 () Unit!157381)

(assert (=> d!1913579 (= (choose!45382 r!7292 s!2326) _$88!4590)))

(declare-fun bs!1515896 () Bool)

(assert (= bs!1515896 d!1913579))

(assert (=> bs!1515896 m!6955790))

(assert (=> bs!1515896 m!6955788))

(assert (=> d!1913315 d!1913579))

(assert (=> d!1913315 d!1913345))

(declare-fun d!1913581 () Bool)

(declare-fun c!1096800 () Bool)

(assert (=> d!1913581 (= c!1096800 ((_ is Nil!64341) lt!2329589))))

(declare-fun e!3723313 () (InoxSet Context!10878))

(assert (=> d!1913581 (= (content!11935 lt!2329589) e!3723313)))

(declare-fun b!6105274 () Bool)

(assert (=> b!6105274 (= e!3723313 ((as const (Array Context!10878 Bool)) false))))

(declare-fun b!6105275 () Bool)

(assert (=> b!6105275 (= e!3723313 ((_ map or) (store ((as const (Array Context!10878 Bool)) false) (h!70789 lt!2329589) true) (content!11935 (t!377916 lt!2329589))))))

(assert (= (and d!1913581 c!1096800) b!6105274))

(assert (= (and d!1913581 (not c!1096800)) b!6105275))

(declare-fun m!6956592 () Bool)

(assert (=> b!6105275 m!6956592))

(declare-fun m!6956594 () Bool)

(assert (=> b!6105275 m!6956594))

(assert (=> b!6104574 d!1913581))

(declare-fun d!1913583 () Bool)

(assert (=> d!1913583 (= (isConcat!995 lt!2329580) ((_ is Concat!24900) lt!2329580))))

(assert (=> b!6104529 d!1913583))

(declare-fun d!1913585 () Bool)

(assert (=> d!1913585 true))

(assert (=> d!1913585 true))

(declare-fun res!2532900 () Bool)

(assert (=> d!1913585 (= (choose!45383 lambda!332562) res!2532900)))

(assert (=> d!1913325 d!1913585))

(declare-fun d!1913587 () Bool)

(assert (=> d!1913587 (= (isEmpty!36265 (tail!11716 s!2326)) ((_ is Nil!64342) (tail!11716 s!2326)))))

(assert (=> b!6104337 d!1913587))

(declare-fun d!1913589 () Bool)

(assert (=> d!1913589 (= (tail!11716 s!2326) (t!377917 s!2326))))

(assert (=> b!6104337 d!1913589))

(declare-fun bs!1515897 () Bool)

(declare-fun b!6105286 () Bool)

(assert (= bs!1515897 (and b!6105286 b!6104050)))

(declare-fun lambda!332647 () Int)

(assert (=> bs!1515897 (not (= lambda!332647 lambda!332562))))

(declare-fun bs!1515898 () Bool)

(assert (= bs!1515898 (and b!6105286 d!1913327)))

(assert (=> bs!1515898 (not (= lambda!332647 lambda!332601))))

(declare-fun bs!1515899 () Bool)

(assert (= bs!1515899 (and b!6105286 b!6105194)))

(assert (=> bs!1515899 (not (= lambda!332647 lambda!332642))))

(declare-fun bs!1515900 () Bool)

(assert (= bs!1515900 (and b!6105286 d!1913329)))

(assert (=> bs!1515900 (not (= lambda!332647 lambda!332607))))

(declare-fun bs!1515901 () Bool)

(assert (= bs!1515901 (and b!6105286 d!1913547)))

(assert (=> bs!1515901 (not (= lambda!332647 lambda!332645))))

(declare-fun bs!1515902 () Bool)

(assert (= bs!1515902 (and b!6105286 b!6104226)))

(assert (=> bs!1515902 (= (and (= (reg!16384 (regTwo!32623 r!7292)) (reg!16384 r!7292)) (= (regTwo!32623 r!7292) r!7292)) (= lambda!332647 lambda!332583))))

(assert (=> bs!1515900 (not (= lambda!332647 lambda!332606))))

(declare-fun bs!1515903 () Bool)

(assert (= bs!1515903 (and b!6105286 b!6105195)))

(assert (=> bs!1515903 (= (and (= (reg!16384 (regTwo!32623 r!7292)) (reg!16384 (regOne!32623 r!7292))) (= (regTwo!32623 r!7292) (regOne!32623 r!7292))) (= lambda!332647 lambda!332641))))

(declare-fun bs!1515904 () Bool)

(assert (= bs!1515904 (and b!6105286 b!6104225)))

(assert (=> bs!1515904 (not (= lambda!332647 lambda!332585))))

(assert (=> bs!1515897 (not (= lambda!332647 lambda!332563))))

(assert (=> b!6105286 true))

(assert (=> b!6105286 true))

(declare-fun bs!1515905 () Bool)

(declare-fun b!6105285 () Bool)

(assert (= bs!1515905 (and b!6105285 b!6105286)))

(declare-fun lambda!332648 () Int)

(assert (=> bs!1515905 (not (= lambda!332648 lambda!332647))))

(declare-fun bs!1515906 () Bool)

(assert (= bs!1515906 (and b!6105285 b!6104050)))

(assert (=> bs!1515906 (not (= lambda!332648 lambda!332562))))

(declare-fun bs!1515907 () Bool)

(assert (= bs!1515907 (and b!6105285 d!1913327)))

(assert (=> bs!1515907 (not (= lambda!332648 lambda!332601))))

(declare-fun bs!1515908 () Bool)

(assert (= bs!1515908 (and b!6105285 b!6105194)))

(assert (=> bs!1515908 (= (and (= (regOne!32622 (regTwo!32623 r!7292)) (regOne!32622 (regOne!32623 r!7292))) (= (regTwo!32622 (regTwo!32623 r!7292)) (regTwo!32622 (regOne!32623 r!7292)))) (= lambda!332648 lambda!332642))))

(declare-fun bs!1515909 () Bool)

(assert (= bs!1515909 (and b!6105285 d!1913329)))

(assert (=> bs!1515909 (= (and (= (regOne!32622 (regTwo!32623 r!7292)) (regOne!32622 r!7292)) (= (regTwo!32622 (regTwo!32623 r!7292)) (regTwo!32622 r!7292))) (= lambda!332648 lambda!332607))))

(declare-fun bs!1515910 () Bool)

(assert (= bs!1515910 (and b!6105285 d!1913547)))

(assert (=> bs!1515910 (not (= lambda!332648 lambda!332645))))

(declare-fun bs!1515911 () Bool)

(assert (= bs!1515911 (and b!6105285 b!6104226)))

(assert (=> bs!1515911 (not (= lambda!332648 lambda!332583))))

(assert (=> bs!1515909 (not (= lambda!332648 lambda!332606))))

(declare-fun bs!1515912 () Bool)

(assert (= bs!1515912 (and b!6105285 b!6105195)))

(assert (=> bs!1515912 (not (= lambda!332648 lambda!332641))))

(declare-fun bs!1515913 () Bool)

(assert (= bs!1515913 (and b!6105285 b!6104225)))

(assert (=> bs!1515913 (= (and (= (regOne!32622 (regTwo!32623 r!7292)) (regOne!32622 r!7292)) (= (regTwo!32622 (regTwo!32623 r!7292)) (regTwo!32622 r!7292))) (= lambda!332648 lambda!332585))))

(assert (=> bs!1515906 (= (and (= (regOne!32622 (regTwo!32623 r!7292)) (regOne!32622 r!7292)) (= (regTwo!32622 (regTwo!32623 r!7292)) (regTwo!32622 r!7292))) (= lambda!332648 lambda!332563))))

(assert (=> b!6105285 true))

(assert (=> b!6105285 true))

(declare-fun bm!504933 () Bool)

(declare-fun call!504938 () Bool)

(assert (=> bm!504933 (= call!504938 (isEmpty!36265 s!2326))))

(declare-fun b!6105276 () Bool)

(declare-fun e!3723318 () Bool)

(assert (=> b!6105276 (= e!3723318 (= s!2326 (Cons!64342 (c!1096515 (regTwo!32623 r!7292)) Nil!64342)))))

(declare-fun b!6105277 () Bool)

(declare-fun e!3723316 () Bool)

(assert (=> b!6105277 (= e!3723316 call!504938)))

(declare-fun d!1913591 () Bool)

(declare-fun c!1096801 () Bool)

(assert (=> d!1913591 (= c!1096801 ((_ is EmptyExpr!16055) (regTwo!32623 r!7292)))))

(assert (=> d!1913591 (= (matchRSpec!3156 (regTwo!32623 r!7292) s!2326) e!3723316)))

(declare-fun b!6105278 () Bool)

(declare-fun e!3723315 () Bool)

(declare-fun e!3723314 () Bool)

(assert (=> b!6105278 (= e!3723315 e!3723314)))

(declare-fun res!2532903 () Bool)

(assert (=> b!6105278 (= res!2532903 (matchRSpec!3156 (regOne!32623 (regTwo!32623 r!7292)) s!2326))))

(assert (=> b!6105278 (=> res!2532903 e!3723314)))

(declare-fun b!6105279 () Bool)

(declare-fun c!1096804 () Bool)

(assert (=> b!6105279 (= c!1096804 ((_ is ElementMatch!16055) (regTwo!32623 r!7292)))))

(declare-fun e!3723320 () Bool)

(assert (=> b!6105279 (= e!3723320 e!3723318)))

(declare-fun b!6105280 () Bool)

(declare-fun e!3723319 () Bool)

(assert (=> b!6105280 (= e!3723315 e!3723319)))

(declare-fun c!1096802 () Bool)

(assert (=> b!6105280 (= c!1096802 ((_ is Star!16055) (regTwo!32623 r!7292)))))

(declare-fun b!6105281 () Bool)

(assert (=> b!6105281 (= e!3723314 (matchRSpec!3156 (regTwo!32623 (regTwo!32623 r!7292)) s!2326))))

(declare-fun call!504939 () Bool)

(declare-fun bm!504934 () Bool)

(assert (=> bm!504934 (= call!504939 (Exists!3125 (ite c!1096802 lambda!332647 lambda!332648)))))

(declare-fun b!6105282 () Bool)

(declare-fun c!1096803 () Bool)

(assert (=> b!6105282 (= c!1096803 ((_ is Union!16055) (regTwo!32623 r!7292)))))

(assert (=> b!6105282 (= e!3723318 e!3723315)))

(declare-fun b!6105283 () Bool)

(assert (=> b!6105283 (= e!3723316 e!3723320)))

(declare-fun res!2532902 () Bool)

(assert (=> b!6105283 (= res!2532902 (not ((_ is EmptyLang!16055) (regTwo!32623 r!7292))))))

(assert (=> b!6105283 (=> (not res!2532902) (not e!3723320))))

(declare-fun b!6105284 () Bool)

(declare-fun res!2532901 () Bool)

(declare-fun e!3723317 () Bool)

(assert (=> b!6105284 (=> res!2532901 e!3723317)))

(assert (=> b!6105284 (= res!2532901 call!504938)))

(assert (=> b!6105284 (= e!3723319 e!3723317)))

(assert (=> b!6105285 (= e!3723319 call!504939)))

(assert (=> b!6105286 (= e!3723317 call!504939)))

(assert (= (and d!1913591 c!1096801) b!6105277))

(assert (= (and d!1913591 (not c!1096801)) b!6105283))

(assert (= (and b!6105283 res!2532902) b!6105279))

(assert (= (and b!6105279 c!1096804) b!6105276))

(assert (= (and b!6105279 (not c!1096804)) b!6105282))

(assert (= (and b!6105282 c!1096803) b!6105278))

(assert (= (and b!6105282 (not c!1096803)) b!6105280))

(assert (= (and b!6105278 (not res!2532903)) b!6105281))

(assert (= (and b!6105280 c!1096802) b!6105284))

(assert (= (and b!6105280 (not c!1096802)) b!6105285))

(assert (= (and b!6105284 (not res!2532901)) b!6105286))

(assert (= (or b!6105286 b!6105285) bm!504934))

(assert (= (or b!6105277 b!6105284) bm!504933))

(assert (=> bm!504933 m!6955860))

(declare-fun m!6956596 () Bool)

(assert (=> b!6105278 m!6956596))

(declare-fun m!6956598 () Bool)

(assert (=> b!6105281 m!6956598))

(declare-fun m!6956600 () Bool)

(assert (=> bm!504934 m!6956600))

(assert (=> b!6104221 d!1913591))

(declare-fun d!1913593 () Bool)

(assert (=> d!1913593 (= (nullable!6048 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))) (nullableFct!2012 (regOne!32622 (h!70788 (exprs!5939 (h!70789 zl!343))))))))

(declare-fun bs!1515914 () Bool)

(assert (= bs!1515914 d!1913593))

(declare-fun m!6956602 () Bool)

(assert (=> bs!1515914 m!6956602))

(assert (=> b!6104633 d!1913593))

(declare-fun b!6105287 () Bool)

(declare-fun e!3723326 () Bool)

(declare-fun e!3723327 () Bool)

(assert (=> b!6105287 (= e!3723326 e!3723327)))

(declare-fun res!2532904 () Bool)

(assert (=> b!6105287 (=> (not res!2532904) (not e!3723327))))

(declare-fun call!504942 () Bool)

(assert (=> b!6105287 (= res!2532904 call!504942)))

(declare-fun b!6105288 () Bool)

(declare-fun res!2532907 () Bool)

(declare-fun e!3723323 () Bool)

(assert (=> b!6105288 (=> (not res!2532907) (not e!3723323))))

(assert (=> b!6105288 (= res!2532907 call!504942)))

(declare-fun e!3723325 () Bool)

(assert (=> b!6105288 (= e!3723325 e!3723323)))

(declare-fun b!6105289 () Bool)

(declare-fun e!3723321 () Bool)

(declare-fun call!504941 () Bool)

(assert (=> b!6105289 (= e!3723321 call!504941)))

(declare-fun b!6105290 () Bool)

(declare-fun res!2532906 () Bool)

(assert (=> b!6105290 (=> res!2532906 e!3723326)))

(assert (=> b!6105290 (= res!2532906 (not ((_ is Concat!24900) lt!2329583)))))

(assert (=> b!6105290 (= e!3723325 e!3723326)))

(declare-fun b!6105291 () Bool)

(declare-fun e!3723322 () Bool)

(declare-fun e!3723324 () Bool)

(assert (=> b!6105291 (= e!3723322 e!3723324)))

(declare-fun c!1096805 () Bool)

(assert (=> b!6105291 (= c!1096805 ((_ is Star!16055) lt!2329583))))

(declare-fun c!1096806 () Bool)

(declare-fun bm!504935 () Bool)

(assert (=> bm!504935 (= call!504941 (validRegex!7791 (ite c!1096805 (reg!16384 lt!2329583) (ite c!1096806 (regOne!32623 lt!2329583) (regOne!32622 lt!2329583)))))))

(declare-fun b!6105292 () Bool)

(assert (=> b!6105292 (= e!3723324 e!3723325)))

(assert (=> b!6105292 (= c!1096806 ((_ is Union!16055) lt!2329583))))

(declare-fun b!6105293 () Bool)

(assert (=> b!6105293 (= e!3723324 e!3723321)))

(declare-fun res!2532905 () Bool)

(assert (=> b!6105293 (= res!2532905 (not (nullable!6048 (reg!16384 lt!2329583))))))

(assert (=> b!6105293 (=> (not res!2532905) (not e!3723321))))

(declare-fun bm!504936 () Bool)

(assert (=> bm!504936 (= call!504942 call!504941)))

(declare-fun bm!504937 () Bool)

(declare-fun call!504940 () Bool)

(assert (=> bm!504937 (= call!504940 (validRegex!7791 (ite c!1096806 (regTwo!32623 lt!2329583) (regTwo!32622 lt!2329583))))))

(declare-fun b!6105295 () Bool)

(assert (=> b!6105295 (= e!3723327 call!504940)))

(declare-fun d!1913595 () Bool)

(declare-fun res!2532908 () Bool)

(assert (=> d!1913595 (=> res!2532908 e!3723322)))

(assert (=> d!1913595 (= res!2532908 ((_ is ElementMatch!16055) lt!2329583))))

(assert (=> d!1913595 (= (validRegex!7791 lt!2329583) e!3723322)))

(declare-fun b!6105294 () Bool)

(assert (=> b!6105294 (= e!3723323 call!504940)))

(assert (= (and d!1913595 (not res!2532908)) b!6105291))

(assert (= (and b!6105291 c!1096805) b!6105293))

(assert (= (and b!6105291 (not c!1096805)) b!6105292))

(assert (= (and b!6105293 res!2532905) b!6105289))

(assert (= (and b!6105292 c!1096806) b!6105288))

(assert (= (and b!6105292 (not c!1096806)) b!6105290))

(assert (= (and b!6105288 res!2532907) b!6105294))

(assert (= (and b!6105290 (not res!2532906)) b!6105287))

(assert (= (and b!6105287 res!2532904) b!6105295))

(assert (= (or b!6105294 b!6105295) bm!504937))

(assert (= (or b!6105288 b!6105287) bm!504936))

(assert (= (or b!6105289 bm!504936) bm!504935))

(declare-fun m!6956604 () Bool)

(assert (=> bm!504935 m!6956604))

(declare-fun m!6956606 () Bool)

(assert (=> b!6105293 m!6956606))

(declare-fun m!6956608 () Bool)

(assert (=> bm!504937 m!6956608))

(assert (=> d!1913337 d!1913595))

(declare-fun d!1913597 () Bool)

(declare-fun res!2532909 () Bool)

(declare-fun e!3723328 () Bool)

(assert (=> d!1913597 (=> res!2532909 e!3723328)))

(assert (=> d!1913597 (= res!2532909 ((_ is Nil!64340) (unfocusZipperList!1476 zl!343)))))

(assert (=> d!1913597 (= (forall!15176 (unfocusZipperList!1476 zl!343) lambda!332616) e!3723328)))

(declare-fun b!6105296 () Bool)

(declare-fun e!3723329 () Bool)

(assert (=> b!6105296 (= e!3723328 e!3723329)))

(declare-fun res!2532910 () Bool)

(assert (=> b!6105296 (=> (not res!2532910) (not e!3723329))))

(assert (=> b!6105296 (= res!2532910 (dynLambda!25336 lambda!332616 (h!70788 (unfocusZipperList!1476 zl!343))))))

(declare-fun b!6105297 () Bool)

(assert (=> b!6105297 (= e!3723329 (forall!15176 (t!377915 (unfocusZipperList!1476 zl!343)) lambda!332616))))

(assert (= (and d!1913597 (not res!2532909)) b!6105296))

(assert (= (and b!6105296 res!2532910) b!6105297))

(declare-fun b_lambda!232591 () Bool)

(assert (=> (not b_lambda!232591) (not b!6105296)))

(declare-fun m!6956610 () Bool)

(assert (=> b!6105296 m!6956610))

(declare-fun m!6956612 () Bool)

(assert (=> b!6105297 m!6956612))

(assert (=> d!1913337 d!1913597))

(assert (=> bm!504808 d!1913571))

(declare-fun d!1913599 () Bool)

(assert (=> d!1913599 (= (isEmpty!36262 (exprs!5939 (h!70789 zl!343))) ((_ is Nil!64340) (exprs!5939 (h!70789 zl!343))))))

(assert (=> b!6104527 d!1913599))

(declare-fun d!1913601 () Bool)

(assert (=> d!1913601 (= ($colon$colon!1932 (exprs!5939 lt!2329513) (ite (or c!1096669 c!1096670) (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (h!70788 (exprs!5939 (h!70789 zl!343))))) (Cons!64340 (ite (or c!1096669 c!1096670) (regTwo!32622 (h!70788 (exprs!5939 (h!70789 zl!343)))) (h!70788 (exprs!5939 (h!70789 zl!343)))) (exprs!5939 lt!2329513)))))

(assert (=> bm!504843 d!1913601))

(declare-fun d!1913603 () Bool)

(assert (=> d!1913603 (= (isDefined!12649 lt!2329570) (not (isEmpty!36266 lt!2329570)))))

(declare-fun bs!1515915 () Bool)

(assert (= bs!1515915 d!1913603))

(declare-fun m!6956614 () Bool)

(assert (=> bs!1515915 m!6956614))

(assert (=> b!6104490 d!1913603))

(declare-fun d!1913605 () Bool)

(assert (=> d!1913605 (= (isEmpty!36262 (tail!11717 (unfocusZipperList!1476 zl!343))) ((_ is Nil!64340) (tail!11717 (unfocusZipperList!1476 zl!343))))))

(assert (=> b!6104557 d!1913605))

(declare-fun d!1913607 () Bool)

(assert (=> d!1913607 (= (tail!11717 (unfocusZipperList!1476 zl!343)) (t!377915 (unfocusZipperList!1476 zl!343)))))

(assert (=> b!6104557 d!1913607))

(declare-fun d!1913609 () Bool)

(assert (=> d!1913609 (= (Exists!3125 lambda!332606) (choose!45383 lambda!332606))))

(declare-fun bs!1515916 () Bool)

(assert (= bs!1515916 d!1913609))

(declare-fun m!6956616 () Bool)

(assert (=> bs!1515916 m!6956616))

(assert (=> d!1913329 d!1913609))

(declare-fun d!1913611 () Bool)

(assert (=> d!1913611 (= (Exists!3125 lambda!332607) (choose!45383 lambda!332607))))

(declare-fun bs!1515917 () Bool)

(assert (= bs!1515917 d!1913611))

(declare-fun m!6956618 () Bool)

(assert (=> bs!1515917 m!6956618))

(assert (=> d!1913329 d!1913611))

(declare-fun bs!1515918 () Bool)

(declare-fun d!1913613 () Bool)

(assert (= bs!1515918 (and d!1913613 b!6105286)))

(declare-fun lambda!332653 () Int)

(assert (=> bs!1515918 (not (= lambda!332653 lambda!332647))))

(declare-fun bs!1515919 () Bool)

(assert (= bs!1515919 (and d!1913613 b!6104050)))

(assert (=> bs!1515919 (= lambda!332653 lambda!332562)))

(declare-fun bs!1515920 () Bool)

(assert (= bs!1515920 (and d!1913613 d!1913327)))

(assert (=> bs!1515920 (= lambda!332653 lambda!332601)))

(declare-fun bs!1515921 () Bool)

(assert (= bs!1515921 (and d!1913613 b!6105194)))

(assert (=> bs!1515921 (not (= lambda!332653 lambda!332642))))

(declare-fun bs!1515922 () Bool)

(assert (= bs!1515922 (and d!1913613 d!1913329)))

(assert (=> bs!1515922 (not (= lambda!332653 lambda!332607))))

(declare-fun bs!1515923 () Bool)

(assert (= bs!1515923 (and d!1913613 d!1913547)))

(assert (=> bs!1515923 (= lambda!332653 lambda!332645)))

(declare-fun bs!1515924 () Bool)

(assert (= bs!1515924 (and d!1913613 b!6105285)))

(assert (=> bs!1515924 (not (= lambda!332653 lambda!332648))))

(declare-fun bs!1515925 () Bool)

(assert (= bs!1515925 (and d!1913613 b!6104226)))

(assert (=> bs!1515925 (not (= lambda!332653 lambda!332583))))

(assert (=> bs!1515922 (= lambda!332653 lambda!332606)))

(declare-fun bs!1515926 () Bool)

(assert (= bs!1515926 (and d!1913613 b!6105195)))

(assert (=> bs!1515926 (not (= lambda!332653 lambda!332641))))

(declare-fun bs!1515927 () Bool)

(assert (= bs!1515927 (and d!1913613 b!6104225)))

(assert (=> bs!1515927 (not (= lambda!332653 lambda!332585))))

(assert (=> bs!1515919 (not (= lambda!332653 lambda!332563))))

(assert (=> d!1913613 true))

(assert (=> d!1913613 true))

(assert (=> d!1913613 true))

(declare-fun lambda!332654 () Int)

(assert (=> bs!1515918 (not (= lambda!332654 lambda!332647))))

(assert (=> bs!1515919 (not (= lambda!332654 lambda!332562))))

(assert (=> bs!1515920 (not (= lambda!332654 lambda!332601))))

(assert (=> bs!1515921 (= (and (= (regOne!32622 r!7292) (regOne!32622 (regOne!32623 r!7292))) (= (regTwo!32622 r!7292) (regTwo!32622 (regOne!32623 r!7292)))) (= lambda!332654 lambda!332642))))

(assert (=> bs!1515922 (= lambda!332654 lambda!332607)))

(assert (=> bs!1515923 (not (= lambda!332654 lambda!332645))))

(assert (=> bs!1515924 (= (and (= (regOne!32622 r!7292) (regOne!32622 (regTwo!32623 r!7292))) (= (regTwo!32622 r!7292) (regTwo!32622 (regTwo!32623 r!7292)))) (= lambda!332654 lambda!332648))))

(assert (=> bs!1515925 (not (= lambda!332654 lambda!332583))))

(declare-fun bs!1515928 () Bool)

(assert (= bs!1515928 d!1913613))

(assert (=> bs!1515928 (not (= lambda!332654 lambda!332653))))

(assert (=> bs!1515922 (not (= lambda!332654 lambda!332606))))

(assert (=> bs!1515926 (not (= lambda!332654 lambda!332641))))

(assert (=> bs!1515927 (= lambda!332654 lambda!332585)))

(assert (=> bs!1515919 (= lambda!332654 lambda!332563)))

(assert (=> d!1913613 true))

(assert (=> d!1913613 true))

(assert (=> d!1913613 true))

(assert (=> d!1913613 (= (Exists!3125 lambda!332653) (Exists!3125 lambda!332654))))

(assert (=> d!1913613 true))

(declare-fun _$90!1776 () Unit!157381)

(assert (=> d!1913613 (= (choose!45385 (regOne!32622 r!7292) (regTwo!32622 r!7292) s!2326) _$90!1776)))

(declare-fun m!6956620 () Bool)

(assert (=> bs!1515928 m!6956620))

(declare-fun m!6956622 () Bool)

(assert (=> bs!1515928 m!6956622))

(assert (=> d!1913329 d!1913613))

(assert (=> d!1913329 d!1913545))

(declare-fun d!1913615 () Bool)

(assert (=> d!1913615 (= (isEmpty!36262 (tail!11717 (exprs!5939 (h!70789 zl!343)))) ((_ is Nil!64340) (tail!11717 (exprs!5939 (h!70789 zl!343)))))))

(assert (=> b!6104533 d!1913615))

(declare-fun d!1913617 () Bool)

(assert (=> d!1913617 (= (tail!11717 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))

(assert (=> b!6104533 d!1913617))

(declare-fun d!1913619 () Bool)

(assert (=> d!1913619 (= (nullable!6048 r!7292) (nullableFct!2012 r!7292))))

(declare-fun bs!1515929 () Bool)

(assert (= bs!1515929 d!1913619))

(declare-fun m!6956624 () Bool)

(assert (=> bs!1515929 m!6956624))

(assert (=> b!6104341 d!1913619))

(declare-fun b!6105306 () Bool)

(declare-fun e!3723339 () Bool)

(declare-fun e!3723340 () Bool)

(assert (=> b!6105306 (= e!3723339 e!3723340)))

(declare-fun res!2532919 () Bool)

(assert (=> b!6105306 (=> (not res!2532919) (not e!3723340))))

(declare-fun call!504945 () Bool)

(assert (=> b!6105306 (= res!2532919 call!504945)))

(declare-fun b!6105307 () Bool)

(declare-fun res!2532922 () Bool)

(declare-fun e!3723336 () Bool)

(assert (=> b!6105307 (=> (not res!2532922) (not e!3723336))))

(assert (=> b!6105307 (= res!2532922 call!504945)))

(declare-fun e!3723338 () Bool)

(assert (=> b!6105307 (= e!3723338 e!3723336)))

(declare-fun b!6105308 () Bool)

(declare-fun e!3723334 () Bool)

(declare-fun call!504944 () Bool)

(assert (=> b!6105308 (= e!3723334 call!504944)))

(declare-fun b!6105309 () Bool)

(declare-fun res!2532921 () Bool)

(assert (=> b!6105309 (=> res!2532921 e!3723339)))

(assert (=> b!6105309 (= res!2532921 (not ((_ is Concat!24900) (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292)))))))

(assert (=> b!6105309 (= e!3723338 e!3723339)))

(declare-fun b!6105310 () Bool)

(declare-fun e!3723335 () Bool)

(declare-fun e!3723337 () Bool)

(assert (=> b!6105310 (= e!3723335 e!3723337)))

(declare-fun c!1096807 () Bool)

(assert (=> b!6105310 (= c!1096807 ((_ is Star!16055) (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))))))

(declare-fun c!1096808 () Bool)

(declare-fun bm!504938 () Bool)

(assert (=> bm!504938 (= call!504944 (validRegex!7791 (ite c!1096807 (reg!16384 (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))) (ite c!1096808 (regOne!32623 (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))) (regOne!32622 (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292)))))))))

(declare-fun b!6105311 () Bool)

(assert (=> b!6105311 (= e!3723337 e!3723338)))

(assert (=> b!6105311 (= c!1096808 ((_ is Union!16055) (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))))))

(declare-fun b!6105312 () Bool)

(assert (=> b!6105312 (= e!3723337 e!3723334)))

(declare-fun res!2532920 () Bool)

(assert (=> b!6105312 (= res!2532920 (not (nullable!6048 (reg!16384 (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))))))))

(assert (=> b!6105312 (=> (not res!2532920) (not e!3723334))))

(declare-fun bm!504939 () Bool)

(assert (=> bm!504939 (= call!504945 call!504944)))

(declare-fun call!504943 () Bool)

(declare-fun bm!504940 () Bool)

(assert (=> bm!504940 (= call!504943 (validRegex!7791 (ite c!1096808 (regTwo!32623 (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))) (regTwo!32622 (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))))))))

(declare-fun b!6105314 () Bool)

(assert (=> b!6105314 (= e!3723340 call!504943)))

(declare-fun d!1913621 () Bool)

(declare-fun res!2532923 () Bool)

(assert (=> d!1913621 (=> res!2532923 e!3723335)))

(assert (=> d!1913621 (= res!2532923 ((_ is ElementMatch!16055) (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))))))

(assert (=> d!1913621 (= (validRegex!7791 (ite c!1096656 (regTwo!32623 r!7292) (regTwo!32622 r!7292))) e!3723335)))

(declare-fun b!6105313 () Bool)

(assert (=> b!6105313 (= e!3723336 call!504943)))

(assert (= (and d!1913621 (not res!2532923)) b!6105310))

(assert (= (and b!6105310 c!1096807) b!6105312))

(assert (= (and b!6105310 (not c!1096807)) b!6105311))

(assert (= (and b!6105312 res!2532920) b!6105308))

(assert (= (and b!6105311 c!1096808) b!6105307))

(assert (= (and b!6105311 (not c!1096808)) b!6105309))

(assert (= (and b!6105307 res!2532922) b!6105313))

(assert (= (and b!6105309 (not res!2532921)) b!6105306))

(assert (= (and b!6105306 res!2532919) b!6105314))

(assert (= (or b!6105313 b!6105314) bm!504940))

(assert (= (or b!6105307 b!6105306) bm!504939))

(assert (= (or b!6105308 bm!504939) bm!504938))

(declare-fun m!6956626 () Bool)

(assert (=> bm!504938 m!6956626))

(declare-fun m!6956628 () Bool)

(assert (=> b!6105312 m!6956628))

(declare-fun m!6956630 () Bool)

(assert (=> bm!504940 m!6956630))

(assert (=> bm!504826 d!1913621))

(declare-fun b!6105315 () Bool)

(declare-fun e!3723344 () Bool)

(assert (=> b!6105315 (= e!3723344 (not (= (head!12631 (_2!36337 (get!22185 lt!2329570))) (c!1096515 (regTwo!32622 r!7292)))))))

(declare-fun b!6105316 () Bool)

(declare-fun res!2532930 () Bool)

(declare-fun e!3723342 () Bool)

(assert (=> b!6105316 (=> res!2532930 e!3723342)))

(declare-fun e!3723346 () Bool)

(assert (=> b!6105316 (= res!2532930 e!3723346)))

(declare-fun res!2532929 () Bool)

(assert (=> b!6105316 (=> (not res!2532929) (not e!3723346))))

(declare-fun lt!2329628 () Bool)

(assert (=> b!6105316 (= res!2532929 lt!2329628)))

(declare-fun b!6105317 () Bool)

(declare-fun e!3723345 () Bool)

(assert (=> b!6105317 (= e!3723342 e!3723345)))

(declare-fun res!2532924 () Bool)

(assert (=> b!6105317 (=> (not res!2532924) (not e!3723345))))

(assert (=> b!6105317 (= res!2532924 (not lt!2329628))))

(declare-fun bm!504941 () Bool)

(declare-fun call!504946 () Bool)

(assert (=> bm!504941 (= call!504946 (isEmpty!36265 (_2!36337 (get!22185 lt!2329570))))))

(declare-fun b!6105318 () Bool)

(declare-fun e!3723343 () Bool)

(assert (=> b!6105318 (= e!3723343 (= lt!2329628 call!504946))))

(declare-fun b!6105320 () Bool)

(declare-fun res!2532931 () Bool)

(assert (=> b!6105320 (=> (not res!2532931) (not e!3723346))))

(assert (=> b!6105320 (= res!2532931 (not call!504946))))

(declare-fun b!6105321 () Bool)

(assert (=> b!6105321 (= e!3723345 e!3723344)))

(declare-fun res!2532925 () Bool)

(assert (=> b!6105321 (=> res!2532925 e!3723344)))

(assert (=> b!6105321 (= res!2532925 call!504946)))

(declare-fun b!6105322 () Bool)

(declare-fun e!3723341 () Bool)

(assert (=> b!6105322 (= e!3723341 (not lt!2329628))))

(declare-fun b!6105323 () Bool)

(declare-fun e!3723347 () Bool)

(assert (=> b!6105323 (= e!3723347 (nullable!6048 (regTwo!32622 r!7292)))))

(declare-fun b!6105324 () Bool)

(assert (=> b!6105324 (= e!3723346 (= (head!12631 (_2!36337 (get!22185 lt!2329570))) (c!1096515 (regTwo!32622 r!7292))))))

(declare-fun b!6105325 () Bool)

(declare-fun res!2532927 () Bool)

(assert (=> b!6105325 (=> res!2532927 e!3723342)))

(assert (=> b!6105325 (= res!2532927 (not ((_ is ElementMatch!16055) (regTwo!32622 r!7292))))))

(assert (=> b!6105325 (= e!3723341 e!3723342)))

(declare-fun b!6105326 () Bool)

(declare-fun res!2532928 () Bool)

(assert (=> b!6105326 (=> res!2532928 e!3723344)))

(assert (=> b!6105326 (= res!2532928 (not (isEmpty!36265 (tail!11716 (_2!36337 (get!22185 lt!2329570))))))))

(declare-fun b!6105327 () Bool)

(assert (=> b!6105327 (= e!3723343 e!3723341)))

(declare-fun c!1096810 () Bool)

(assert (=> b!6105327 (= c!1096810 ((_ is EmptyLang!16055) (regTwo!32622 r!7292)))))

(declare-fun b!6105328 () Bool)

(assert (=> b!6105328 (= e!3723347 (matchR!8238 (derivativeStep!4776 (regTwo!32622 r!7292) (head!12631 (_2!36337 (get!22185 lt!2329570)))) (tail!11716 (_2!36337 (get!22185 lt!2329570)))))))

(declare-fun d!1913623 () Bool)

(assert (=> d!1913623 e!3723343))

(declare-fun c!1096809 () Bool)

(assert (=> d!1913623 (= c!1096809 ((_ is EmptyExpr!16055) (regTwo!32622 r!7292)))))

(assert (=> d!1913623 (= lt!2329628 e!3723347)))

(declare-fun c!1096811 () Bool)

(assert (=> d!1913623 (= c!1096811 (isEmpty!36265 (_2!36337 (get!22185 lt!2329570))))))

(assert (=> d!1913623 (validRegex!7791 (regTwo!32622 r!7292))))

(assert (=> d!1913623 (= (matchR!8238 (regTwo!32622 r!7292) (_2!36337 (get!22185 lt!2329570))) lt!2329628)))

(declare-fun b!6105319 () Bool)

(declare-fun res!2532926 () Bool)

(assert (=> b!6105319 (=> (not res!2532926) (not e!3723346))))

(assert (=> b!6105319 (= res!2532926 (isEmpty!36265 (tail!11716 (_2!36337 (get!22185 lt!2329570)))))))

(assert (= (and d!1913623 c!1096811) b!6105323))

(assert (= (and d!1913623 (not c!1096811)) b!6105328))

(assert (= (and d!1913623 c!1096809) b!6105318))

(assert (= (and d!1913623 (not c!1096809)) b!6105327))

(assert (= (and b!6105327 c!1096810) b!6105322))

(assert (= (and b!6105327 (not c!1096810)) b!6105325))

(assert (= (and b!6105325 (not res!2532927)) b!6105316))

(assert (= (and b!6105316 res!2532929) b!6105320))

(assert (= (and b!6105320 res!2532931) b!6105319))

(assert (= (and b!6105319 res!2532926) b!6105324))

(assert (= (and b!6105316 (not res!2532930)) b!6105317))

(assert (= (and b!6105317 res!2532924) b!6105321))

(assert (= (and b!6105321 (not res!2532925)) b!6105326))

(assert (= (and b!6105326 (not res!2532928)) b!6105315))

(assert (= (or b!6105318 b!6105320 b!6105321) bm!504941))

(declare-fun m!6956632 () Bool)

(assert (=> bm!504941 m!6956632))

(declare-fun m!6956634 () Bool)

(assert (=> b!6105323 m!6956634))

(declare-fun m!6956636 () Bool)

(assert (=> b!6105319 m!6956636))

(assert (=> b!6105319 m!6956636))

(declare-fun m!6956638 () Bool)

(assert (=> b!6105319 m!6956638))

(declare-fun m!6956640 () Bool)

(assert (=> b!6105328 m!6956640))

(assert (=> b!6105328 m!6956640))

(declare-fun m!6956642 () Bool)

(assert (=> b!6105328 m!6956642))

(assert (=> b!6105328 m!6956636))

(assert (=> b!6105328 m!6956642))

(assert (=> b!6105328 m!6956636))

(declare-fun m!6956644 () Bool)

(assert (=> b!6105328 m!6956644))

(assert (=> b!6105326 m!6956636))

(assert (=> b!6105326 m!6956636))

(assert (=> b!6105326 m!6956638))

(assert (=> b!6105315 m!6956640))

(assert (=> b!6105324 m!6956640))

(assert (=> d!1913623 m!6956632))

(declare-fun m!6956646 () Bool)

(assert (=> d!1913623 m!6956646))

(assert (=> b!6104486 d!1913623))

(assert (=> b!6104486 d!1913523))

(declare-fun bs!1515930 () Bool)

(declare-fun d!1913625 () Bool)

(assert (= bs!1515930 (and d!1913625 d!1913351)))

(declare-fun lambda!332655 () Int)

(assert (=> bs!1515930 (= lambda!332655 lambda!332621)))

(declare-fun bs!1515931 () Bool)

(assert (= bs!1515931 (and d!1913625 d!1913339)))

(assert (=> bs!1515931 (= lambda!332655 lambda!332619)))

(declare-fun bs!1515932 () Bool)

(assert (= bs!1515932 (and d!1913625 d!1913335)))

(assert (=> bs!1515932 (= lambda!332655 lambda!332613)))

(declare-fun bs!1515933 () Bool)

(assert (= bs!1515933 (and d!1913625 d!1913337)))

(assert (=> bs!1515933 (= lambda!332655 lambda!332616)))

(declare-fun bs!1515934 () Bool)

(assert (= bs!1515934 (and d!1913625 d!1913341)))

(assert (=> bs!1515934 (= lambda!332655 lambda!332620)))

(declare-fun bs!1515935 () Bool)

(assert (= bs!1515935 (and d!1913625 d!1913529)))

(assert (=> bs!1515935 (= lambda!332655 lambda!332640)))

(declare-fun bs!1515936 () Bool)

(assert (= bs!1515936 (and d!1913625 d!1913567)))

(assert (=> bs!1515936 (= lambda!332655 lambda!332646)))

(declare-fun bs!1515937 () Bool)

(assert (= bs!1515937 (and d!1913625 d!1913333)))

(assert (=> bs!1515937 (= lambda!332655 lambda!332610)))

(assert (=> d!1913625 (= (inv!83384 setElem!41252) (forall!15176 (exprs!5939 setElem!41252) lambda!332655))))

(declare-fun bs!1515938 () Bool)

(assert (= bs!1515938 d!1913625))

(declare-fun m!6956648 () Bool)

(assert (=> bs!1515938 m!6956648))

(assert (=> setNonEmpty!41252 d!1913625))

(declare-fun bs!1515939 () Bool)

(declare-fun d!1913627 () Bool)

(assert (= bs!1515939 (and d!1913627 d!1913351)))

(declare-fun lambda!332656 () Int)

(assert (=> bs!1515939 (= lambda!332656 lambda!332621)))

(declare-fun bs!1515940 () Bool)

(assert (= bs!1515940 (and d!1913627 d!1913625)))

(assert (=> bs!1515940 (= lambda!332656 lambda!332655)))

(declare-fun bs!1515941 () Bool)

(assert (= bs!1515941 (and d!1913627 d!1913339)))

(assert (=> bs!1515941 (= lambda!332656 lambda!332619)))

(declare-fun bs!1515942 () Bool)

(assert (= bs!1515942 (and d!1913627 d!1913335)))

(assert (=> bs!1515942 (= lambda!332656 lambda!332613)))

(declare-fun bs!1515943 () Bool)

(assert (= bs!1515943 (and d!1913627 d!1913337)))

(assert (=> bs!1515943 (= lambda!332656 lambda!332616)))

(declare-fun bs!1515944 () Bool)

(assert (= bs!1515944 (and d!1913627 d!1913341)))

(assert (=> bs!1515944 (= lambda!332656 lambda!332620)))

(declare-fun bs!1515945 () Bool)

(assert (= bs!1515945 (and d!1913627 d!1913529)))

(assert (=> bs!1515945 (= lambda!332656 lambda!332640)))

(declare-fun bs!1515946 () Bool)

(assert (= bs!1515946 (and d!1913627 d!1913567)))

(assert (=> bs!1515946 (= lambda!332656 lambda!332646)))

(declare-fun bs!1515947 () Bool)

(assert (= bs!1515947 (and d!1913627 d!1913333)))

(assert (=> bs!1515947 (= lambda!332656 lambda!332610)))

(declare-fun e!3723349 () Bool)

(assert (=> d!1913627 e!3723349))

(declare-fun res!2532933 () Bool)

(assert (=> d!1913627 (=> (not res!2532933) (not e!3723349))))

(declare-fun lt!2329629 () Regex!16055)

(assert (=> d!1913627 (= res!2532933 (validRegex!7791 lt!2329629))))

(declare-fun e!3723350 () Regex!16055)

(assert (=> d!1913627 (= lt!2329629 e!3723350)))

(declare-fun c!1096814 () Bool)

(declare-fun e!3723352 () Bool)

(assert (=> d!1913627 (= c!1096814 e!3723352)))

(declare-fun res!2532932 () Bool)

(assert (=> d!1913627 (=> (not res!2532932) (not e!3723352))))

(assert (=> d!1913627 (= res!2532932 ((_ is Cons!64340) (t!377915 (exprs!5939 (h!70789 zl!343)))))))

(assert (=> d!1913627 (forall!15176 (t!377915 (exprs!5939 (h!70789 zl!343))) lambda!332656)))

(assert (=> d!1913627 (= (generalisedConcat!1652 (t!377915 (exprs!5939 (h!70789 zl!343)))) lt!2329629)))

(declare-fun b!6105329 () Bool)

(assert (=> b!6105329 (= e!3723352 (isEmpty!36262 (t!377915 (t!377915 (exprs!5939 (h!70789 zl!343))))))))

(declare-fun b!6105330 () Bool)

(declare-fun e!3723353 () Bool)

(assert (=> b!6105330 (= e!3723349 e!3723353)))

(declare-fun c!1096815 () Bool)

(assert (=> b!6105330 (= c!1096815 (isEmpty!36262 (t!377915 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6105331 () Bool)

(declare-fun e!3723348 () Regex!16055)

(assert (=> b!6105331 (= e!3723348 EmptyExpr!16055)))

(declare-fun b!6105332 () Bool)

(declare-fun e!3723351 () Bool)

(assert (=> b!6105332 (= e!3723351 (isConcat!995 lt!2329629))))

(declare-fun b!6105333 () Bool)

(assert (=> b!6105333 (= e!3723353 (isEmptyExpr!1472 lt!2329629))))

(declare-fun b!6105334 () Bool)

(assert (=> b!6105334 (= e!3723348 (Concat!24900 (h!70788 (t!377915 (exprs!5939 (h!70789 zl!343)))) (generalisedConcat!1652 (t!377915 (t!377915 (exprs!5939 (h!70789 zl!343)))))))))

(declare-fun b!6105335 () Bool)

(assert (=> b!6105335 (= e!3723351 (= lt!2329629 (head!12632 (t!377915 (exprs!5939 (h!70789 zl!343))))))))

(declare-fun b!6105336 () Bool)

(assert (=> b!6105336 (= e!3723353 e!3723351)))

(declare-fun c!1096812 () Bool)

(assert (=> b!6105336 (= c!1096812 (isEmpty!36262 (tail!11717 (t!377915 (exprs!5939 (h!70789 zl!343))))))))

(declare-fun b!6105337 () Bool)

(assert (=> b!6105337 (= e!3723350 (h!70788 (t!377915 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6105338 () Bool)

(assert (=> b!6105338 (= e!3723350 e!3723348)))

(declare-fun c!1096813 () Bool)

(assert (=> b!6105338 (= c!1096813 ((_ is Cons!64340) (t!377915 (exprs!5939 (h!70789 zl!343)))))))

(assert (= (and d!1913627 res!2532932) b!6105329))

(assert (= (and d!1913627 c!1096814) b!6105337))

(assert (= (and d!1913627 (not c!1096814)) b!6105338))

(assert (= (and b!6105338 c!1096813) b!6105334))

(assert (= (and b!6105338 (not c!1096813)) b!6105331))

(assert (= (and d!1913627 res!2532933) b!6105330))

(assert (= (and b!6105330 c!1096815) b!6105333))

(assert (= (and b!6105330 (not c!1096815)) b!6105336))

(assert (= (and b!6105336 c!1096812) b!6105335))

(assert (= (and b!6105336 (not c!1096812)) b!6105332))

(assert (=> b!6105330 m!6955786))

(declare-fun m!6956650 () Bool)

(assert (=> d!1913627 m!6956650))

(declare-fun m!6956652 () Bool)

(assert (=> d!1913627 m!6956652))

(declare-fun m!6956654 () Bool)

(assert (=> b!6105333 m!6956654))

(declare-fun m!6956656 () Bool)

(assert (=> b!6105335 m!6956656))

(declare-fun m!6956658 () Bool)

(assert (=> b!6105336 m!6956658))

(assert (=> b!6105336 m!6956658))

(declare-fun m!6956660 () Bool)

(assert (=> b!6105336 m!6956660))

(declare-fun m!6956662 () Bool)

(assert (=> b!6105334 m!6956662))

(declare-fun m!6956664 () Bool)

(assert (=> b!6105332 m!6956664))

(declare-fun m!6956666 () Bool)

(assert (=> b!6105329 m!6956666))

(assert (=> b!6104531 d!1913627))

(declare-fun d!1913629 () Bool)

(assert (=> d!1913629 (= (head!12632 (unfocusZipperList!1476 zl!343)) (h!70788 (unfocusZipperList!1476 zl!343)))))

(assert (=> b!6104562 d!1913629))

(declare-fun d!1913631 () Bool)

(assert (=> d!1913631 (= (nullable!6048 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (nullableFct!2012 (h!70788 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))))

(declare-fun bs!1515948 () Bool)

(assert (= bs!1515948 d!1913631))

(declare-fun m!6956668 () Bool)

(assert (=> bs!1515948 m!6956668))

(assert (=> b!6104648 d!1913631))

(declare-fun bs!1515949 () Bool)

(declare-fun d!1913633 () Bool)

(assert (= bs!1515949 (and d!1913633 d!1913351)))

(declare-fun lambda!332657 () Int)

(assert (=> bs!1515949 (= lambda!332657 lambda!332621)))

(declare-fun bs!1515950 () Bool)

(assert (= bs!1515950 (and d!1913633 d!1913625)))

(assert (=> bs!1515950 (= lambda!332657 lambda!332655)))

(declare-fun bs!1515951 () Bool)

(assert (= bs!1515951 (and d!1913633 d!1913339)))

(assert (=> bs!1515951 (= lambda!332657 lambda!332619)))

(declare-fun bs!1515952 () Bool)

(assert (= bs!1515952 (and d!1913633 d!1913335)))

(assert (=> bs!1515952 (= lambda!332657 lambda!332613)))

(declare-fun bs!1515953 () Bool)

(assert (= bs!1515953 (and d!1913633 d!1913337)))

(assert (=> bs!1515953 (= lambda!332657 lambda!332616)))

(declare-fun bs!1515954 () Bool)

(assert (= bs!1515954 (and d!1913633 d!1913341)))

(assert (=> bs!1515954 (= lambda!332657 lambda!332620)))

(declare-fun bs!1515955 () Bool)

(assert (= bs!1515955 (and d!1913633 d!1913529)))

(assert (=> bs!1515955 (= lambda!332657 lambda!332640)))

(declare-fun bs!1515956 () Bool)

(assert (= bs!1515956 (and d!1913633 d!1913567)))

(assert (=> bs!1515956 (= lambda!332657 lambda!332646)))

(declare-fun bs!1515957 () Bool)

(assert (= bs!1515957 (and d!1913633 d!1913627)))

(assert (=> bs!1515957 (= lambda!332657 lambda!332656)))

(declare-fun bs!1515958 () Bool)

(assert (= bs!1515958 (and d!1913633 d!1913333)))

(assert (=> bs!1515958 (= lambda!332657 lambda!332610)))

(declare-fun b!6105339 () Bool)

(declare-fun e!3723356 () Bool)

(declare-fun lt!2329630 () Regex!16055)

(assert (=> b!6105339 (= e!3723356 (isEmptyLang!1482 lt!2329630))))

(declare-fun b!6105340 () Bool)

(declare-fun e!3723357 () Bool)

(assert (=> b!6105340 (= e!3723356 e!3723357)))

(declare-fun c!1096817 () Bool)

(assert (=> b!6105340 (= c!1096817 (isEmpty!36262 (tail!11717 (t!377915 (unfocusZipperList!1476 zl!343)))))))

(declare-fun b!6105341 () Bool)

(declare-fun e!3723359 () Regex!16055)

(declare-fun e!3723355 () Regex!16055)

(assert (=> b!6105341 (= e!3723359 e!3723355)))

(declare-fun c!1096819 () Bool)

(assert (=> b!6105341 (= c!1096819 ((_ is Cons!64340) (t!377915 (unfocusZipperList!1476 zl!343))))))

(declare-fun b!6105342 () Bool)

(assert (=> b!6105342 (= e!3723357 (isUnion!912 lt!2329630))))

(declare-fun b!6105343 () Bool)

(assert (=> b!6105343 (= e!3723355 (Union!16055 (h!70788 (t!377915 (unfocusZipperList!1476 zl!343))) (generalisedUnion!1899 (t!377915 (t!377915 (unfocusZipperList!1476 zl!343))))))))

(declare-fun e!3723354 () Bool)

(assert (=> d!1913633 e!3723354))

(declare-fun res!2532935 () Bool)

(assert (=> d!1913633 (=> (not res!2532935) (not e!3723354))))

(assert (=> d!1913633 (= res!2532935 (validRegex!7791 lt!2329630))))

(assert (=> d!1913633 (= lt!2329630 e!3723359)))

(declare-fun c!1096816 () Bool)

(declare-fun e!3723358 () Bool)

(assert (=> d!1913633 (= c!1096816 e!3723358)))

(declare-fun res!2532934 () Bool)

(assert (=> d!1913633 (=> (not res!2532934) (not e!3723358))))

(assert (=> d!1913633 (= res!2532934 ((_ is Cons!64340) (t!377915 (unfocusZipperList!1476 zl!343))))))

(assert (=> d!1913633 (forall!15176 (t!377915 (unfocusZipperList!1476 zl!343)) lambda!332657)))

(assert (=> d!1913633 (= (generalisedUnion!1899 (t!377915 (unfocusZipperList!1476 zl!343))) lt!2329630)))

(declare-fun b!6105344 () Bool)

(assert (=> b!6105344 (= e!3723354 e!3723356)))

(declare-fun c!1096818 () Bool)

(assert (=> b!6105344 (= c!1096818 (isEmpty!36262 (t!377915 (unfocusZipperList!1476 zl!343))))))

(declare-fun b!6105345 () Bool)

(assert (=> b!6105345 (= e!3723357 (= lt!2329630 (head!12632 (t!377915 (unfocusZipperList!1476 zl!343)))))))

(declare-fun b!6105346 () Bool)

(assert (=> b!6105346 (= e!3723355 EmptyLang!16055)))

(declare-fun b!6105347 () Bool)

(assert (=> b!6105347 (= e!3723359 (h!70788 (t!377915 (unfocusZipperList!1476 zl!343))))))

(declare-fun b!6105348 () Bool)

(assert (=> b!6105348 (= e!3723358 (isEmpty!36262 (t!377915 (t!377915 (unfocusZipperList!1476 zl!343)))))))

(assert (= (and d!1913633 res!2532934) b!6105348))

(assert (= (and d!1913633 c!1096816) b!6105347))

(assert (= (and d!1913633 (not c!1096816)) b!6105341))

(assert (= (and b!6105341 c!1096819) b!6105343))

(assert (= (and b!6105341 (not c!1096819)) b!6105346))

(assert (= (and d!1913633 res!2532935) b!6105344))

(assert (= (and b!6105344 c!1096818) b!6105339))

(assert (= (and b!6105344 (not c!1096818)) b!6105340))

(assert (= (and b!6105340 c!1096817) b!6105345))

(assert (= (and b!6105340 (not c!1096817)) b!6105342))

(declare-fun m!6956670 () Bool)

(assert (=> b!6105343 m!6956670))

(declare-fun m!6956672 () Bool)

(assert (=> b!6105342 m!6956672))

(assert (=> b!6105344 m!6956028))

(declare-fun m!6956674 () Bool)

(assert (=> b!6105348 m!6956674))

(declare-fun m!6956676 () Bool)

(assert (=> d!1913633 m!6956676))

(declare-fun m!6956678 () Bool)

(assert (=> d!1913633 m!6956678))

(declare-fun m!6956680 () Bool)

(assert (=> b!6105345 m!6956680))

(declare-fun m!6956682 () Bool)

(assert (=> b!6105339 m!6956682))

(declare-fun m!6956684 () Bool)

(assert (=> b!6105340 m!6956684))

(assert (=> b!6105340 m!6956684))

(declare-fun m!6956686 () Bool)

(assert (=> b!6105340 m!6956686))

(assert (=> b!6104560 d!1913633))

(declare-fun b!6105349 () Bool)

(declare-fun e!3723360 () (InoxSet Context!10878))

(declare-fun call!504947 () (InoxSet Context!10878))

(assert (=> b!6105349 (= e!3723360 call!504947)))

(declare-fun b!6105350 () Bool)

(declare-fun e!3723361 () (InoxSet Context!10878))

(assert (=> b!6105350 (= e!3723361 e!3723360)))

(declare-fun c!1096820 () Bool)

(assert (=> b!6105350 (= c!1096820 ((_ is Cons!64340) (exprs!5939 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))))))

(declare-fun b!6105351 () Bool)

(assert (=> b!6105351 (= e!3723361 ((_ map or) call!504947 (derivationStepZipperUp!1229 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))))) (h!70790 s!2326))))))

(declare-fun bm!504942 () Bool)

(assert (=> bm!504942 (= call!504947 (derivationStepZipperDown!1303 (h!70788 (exprs!5939 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))) (Context!10879 (t!377915 (exprs!5939 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))))) (h!70790 s!2326)))))

(declare-fun b!6105353 () Bool)

(assert (=> b!6105353 (= e!3723360 ((as const (Array Context!10878 Bool)) false))))

(declare-fun d!1913635 () Bool)

(declare-fun c!1096821 () Bool)

(declare-fun e!3723362 () Bool)

(assert (=> d!1913635 (= c!1096821 e!3723362)))

(declare-fun res!2532936 () Bool)

(assert (=> d!1913635 (=> (not res!2532936) (not e!3723362))))

(assert (=> d!1913635 (= res!2532936 ((_ is Cons!64340) (exprs!5939 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))))))))

(assert (=> d!1913635 (= (derivationStepZipperUp!1229 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343)))))))) (h!70790 s!2326)) e!3723361)))

(declare-fun b!6105352 () Bool)

(assert (=> b!6105352 (= e!3723362 (nullable!6048 (h!70788 (exprs!5939 (Context!10879 (t!377915 (exprs!5939 (Context!10879 (Cons!64340 (h!70788 (exprs!5939 (h!70789 zl!343))) (t!377915 (exprs!5939 (h!70789 zl!343))))))))))))))

(assert (= (and d!1913635 res!2532936) b!6105352))

(assert (= (and d!1913635 c!1096821) b!6105351))

(assert (= (and d!1913635 (not c!1096821)) b!6105350))

(assert (= (and b!6105350 c!1096820) b!6105349))

(assert (= (and b!6105350 (not c!1096820)) b!6105353))

(assert (= (or b!6105351 b!6105349) bm!504942))

(declare-fun m!6956688 () Bool)

(assert (=> b!6105351 m!6956688))

(declare-fun m!6956690 () Bool)

(assert (=> bm!504942 m!6956690))

(declare-fun m!6956692 () Bool)

(assert (=> b!6105352 m!6956692))

(assert (=> b!6104647 d!1913635))

(declare-fun b!6105354 () Bool)

(declare-fun e!3723366 () Bool)

(assert (=> b!6105354 (= e!3723366 (not (= (head!12631 (tail!11716 s!2326)) (c!1096515 (derivativeStep!4776 r!7292 (head!12631 s!2326))))))))

(declare-fun b!6105355 () Bool)

(declare-fun res!2532943 () Bool)

(declare-fun e!3723364 () Bool)

(assert (=> b!6105355 (=> res!2532943 e!3723364)))

(declare-fun e!3723368 () Bool)

(assert (=> b!6105355 (= res!2532943 e!3723368)))

(declare-fun res!2532942 () Bool)

(assert (=> b!6105355 (=> (not res!2532942) (not e!3723368))))

(declare-fun lt!2329631 () Bool)

(assert (=> b!6105355 (= res!2532942 lt!2329631)))

(declare-fun b!6105356 () Bool)

(declare-fun e!3723367 () Bool)

(assert (=> b!6105356 (= e!3723364 e!3723367)))

(declare-fun res!2532937 () Bool)

(assert (=> b!6105356 (=> (not res!2532937) (not e!3723367))))

(assert (=> b!6105356 (= res!2532937 (not lt!2329631))))

(declare-fun bm!504943 () Bool)

(declare-fun call!504948 () Bool)

(assert (=> bm!504943 (= call!504948 (isEmpty!36265 (tail!11716 s!2326)))))

(declare-fun b!6105357 () Bool)

(declare-fun e!3723365 () Bool)

(assert (=> b!6105357 (= e!3723365 (= lt!2329631 call!504948))))

(declare-fun b!6105359 () Bool)

(declare-fun res!2532944 () Bool)

(assert (=> b!6105359 (=> (not res!2532944) (not e!3723368))))

(assert (=> b!6105359 (= res!2532944 (not call!504948))))

(declare-fun b!6105360 () Bool)

(assert (=> b!6105360 (= e!3723367 e!3723366)))

(declare-fun res!2532938 () Bool)

(assert (=> b!6105360 (=> res!2532938 e!3723366)))

(assert (=> b!6105360 (= res!2532938 call!504948)))

(declare-fun b!6105361 () Bool)

(declare-fun e!3723363 () Bool)

(assert (=> b!6105361 (= e!3723363 (not lt!2329631))))

(declare-fun b!6105362 () Bool)

(declare-fun e!3723369 () Bool)

(assert (=> b!6105362 (= e!3723369 (nullable!6048 (derivativeStep!4776 r!7292 (head!12631 s!2326))))))

(declare-fun b!6105363 () Bool)

(assert (=> b!6105363 (= e!3723368 (= (head!12631 (tail!11716 s!2326)) (c!1096515 (derivativeStep!4776 r!7292 (head!12631 s!2326)))))))

(declare-fun b!6105364 () Bool)

(declare-fun res!2532940 () Bool)

(assert (=> b!6105364 (=> res!2532940 e!3723364)))

(assert (=> b!6105364 (= res!2532940 (not ((_ is ElementMatch!16055) (derivativeStep!4776 r!7292 (head!12631 s!2326)))))))

(assert (=> b!6105364 (= e!3723363 e!3723364)))

(declare-fun b!6105365 () Bool)

(declare-fun res!2532941 () Bool)

(assert (=> b!6105365 (=> res!2532941 e!3723366)))

(assert (=> b!6105365 (= res!2532941 (not (isEmpty!36265 (tail!11716 (tail!11716 s!2326)))))))

(declare-fun b!6105366 () Bool)

(assert (=> b!6105366 (= e!3723365 e!3723363)))

(declare-fun c!1096823 () Bool)

(assert (=> b!6105366 (= c!1096823 ((_ is EmptyLang!16055) (derivativeStep!4776 r!7292 (head!12631 s!2326))))))

(declare-fun b!6105367 () Bool)

(assert (=> b!6105367 (= e!3723369 (matchR!8238 (derivativeStep!4776 (derivativeStep!4776 r!7292 (head!12631 s!2326)) (head!12631 (tail!11716 s!2326))) (tail!11716 (tail!11716 s!2326))))))

(declare-fun d!1913637 () Bool)

(assert (=> d!1913637 e!3723365))

(declare-fun c!1096822 () Bool)

(assert (=> d!1913637 (= c!1096822 ((_ is EmptyExpr!16055) (derivativeStep!4776 r!7292 (head!12631 s!2326))))))

(assert (=> d!1913637 (= lt!2329631 e!3723369)))

(declare-fun c!1096824 () Bool)

(assert (=> d!1913637 (= c!1096824 (isEmpty!36265 (tail!11716 s!2326)))))

(assert (=> d!1913637 (validRegex!7791 (derivativeStep!4776 r!7292 (head!12631 s!2326)))))

(assert (=> d!1913637 (= (matchR!8238 (derivativeStep!4776 r!7292 (head!12631 s!2326)) (tail!11716 s!2326)) lt!2329631)))

(declare-fun b!6105358 () Bool)

(declare-fun res!2532939 () Bool)

(assert (=> b!6105358 (=> (not res!2532939) (not e!3723368))))

(assert (=> b!6105358 (= res!2532939 (isEmpty!36265 (tail!11716 (tail!11716 s!2326))))))

(assert (= (and d!1913637 c!1096824) b!6105362))

(assert (= (and d!1913637 (not c!1096824)) b!6105367))

(assert (= (and d!1913637 c!1096822) b!6105357))

(assert (= (and d!1913637 (not c!1096822)) b!6105366))

(assert (= (and b!6105366 c!1096823) b!6105361))

(assert (= (and b!6105366 (not c!1096823)) b!6105364))

(assert (= (and b!6105364 (not res!2532940)) b!6105355))

(assert (= (and b!6105355 res!2532942) b!6105359))

(assert (= (and b!6105359 res!2532944) b!6105358))

(assert (= (and b!6105358 res!2532939) b!6105363))

(assert (= (and b!6105355 (not res!2532943)) b!6105356))

(assert (= (and b!6105356 res!2532937) b!6105360))

(assert (= (and b!6105360 (not res!2532938)) b!6105365))

(assert (= (and b!6105365 (not res!2532941)) b!6105354))

(assert (= (or b!6105357 b!6105359 b!6105360) bm!504943))

(assert (=> bm!504943 m!6955910))

(assert (=> bm!504943 m!6955912))

(assert (=> b!6105362 m!6955922))

(declare-fun m!6956694 () Bool)

(assert (=> b!6105362 m!6956694))

(assert (=> b!6105358 m!6955910))

(declare-fun m!6956696 () Bool)

(assert (=> b!6105358 m!6956696))

(assert (=> b!6105358 m!6956696))

(declare-fun m!6956698 () Bool)

(assert (=> b!6105358 m!6956698))

(assert (=> b!6105367 m!6955910))

(declare-fun m!6956700 () Bool)

(assert (=> b!6105367 m!6956700))

(assert (=> b!6105367 m!6955922))

(assert (=> b!6105367 m!6956700))

(declare-fun m!6956702 () Bool)

(assert (=> b!6105367 m!6956702))

(assert (=> b!6105367 m!6955910))

(assert (=> b!6105367 m!6956696))

(assert (=> b!6105367 m!6956702))

(assert (=> b!6105367 m!6956696))

(declare-fun m!6956704 () Bool)

(assert (=> b!6105367 m!6956704))

(assert (=> b!6105365 m!6955910))

(assert (=> b!6105365 m!6956696))

(assert (=> b!6105365 m!6956696))

(assert (=> b!6105365 m!6956698))

(assert (=> b!6105354 m!6955910))

(assert (=> b!6105354 m!6956700))

(assert (=> b!6105363 m!6955910))

(assert (=> b!6105363 m!6956700))

(assert (=> d!1913637 m!6955910))

(assert (=> d!1913637 m!6955912))

(assert (=> d!1913637 m!6955922))

(declare-fun m!6956706 () Bool)

(assert (=> d!1913637 m!6956706))

(assert (=> b!6104346 d!1913637))

(declare-fun bm!504952 () Bool)

(declare-fun call!504958 () Regex!16055)

(declare-fun call!504960 () Regex!16055)

(assert (=> bm!504952 (= call!504958 call!504960)))

(declare-fun b!6105388 () Bool)

(declare-fun e!3723383 () Regex!16055)

(declare-fun e!3723381 () Regex!16055)

(assert (=> b!6105388 (= e!3723383 e!3723381)))

(declare-fun c!1096838 () Bool)

(assert (=> b!6105388 (= c!1096838 ((_ is Star!16055) r!7292))))

(declare-fun b!6105389 () Bool)

(declare-fun call!504959 () Regex!16055)

(declare-fun call!504957 () Regex!16055)

(assert (=> b!6105389 (= e!3723383 (Union!16055 call!504959 call!504957))))

(declare-fun d!1913639 () Bool)

(declare-fun lt!2329634 () Regex!16055)

(assert (=> d!1913639 (validRegex!7791 lt!2329634)))

(declare-fun e!3723382 () Regex!16055)

(assert (=> d!1913639 (= lt!2329634 e!3723382)))

(declare-fun c!1096837 () Bool)

(assert (=> d!1913639 (= c!1096837 (or ((_ is EmptyExpr!16055) r!7292) ((_ is EmptyLang!16055) r!7292)))))

(assert (=> d!1913639 (validRegex!7791 r!7292)))

(assert (=> d!1913639 (= (derivativeStep!4776 r!7292 (head!12631 s!2326)) lt!2329634)))

(declare-fun b!6105390 () Bool)

(assert (=> b!6105390 (= e!3723381 (Concat!24900 call!504960 r!7292))))

(declare-fun bm!504953 () Bool)

(assert (=> bm!504953 (= call!504960 call!504957)))

(declare-fun b!6105391 () Bool)

(declare-fun e!3723380 () Regex!16055)

(assert (=> b!6105391 (= e!3723380 (Union!16055 (Concat!24900 call!504959 (regTwo!32622 r!7292)) call!504958))))

(declare-fun b!6105392 () Bool)

(assert (=> b!6105392 (= e!3723382 EmptyLang!16055)))

(declare-fun b!6105393 () Bool)

(assert (=> b!6105393 (= e!3723380 (Union!16055 (Concat!24900 call!504958 (regTwo!32622 r!7292)) EmptyLang!16055))))

(declare-fun bm!504954 () Bool)

(declare-fun c!1096836 () Bool)

(assert (=> bm!504954 (= call!504959 (derivativeStep!4776 (ite c!1096836 (regOne!32623 r!7292) (regOne!32622 r!7292)) (head!12631 s!2326)))))

(declare-fun b!6105394 () Bool)

(declare-fun c!1096835 () Bool)

(assert (=> b!6105394 (= c!1096835 (nullable!6048 (regOne!32622 r!7292)))))

(assert (=> b!6105394 (= e!3723381 e!3723380)))

(declare-fun b!6105395 () Bool)

(assert (=> b!6105395 (= c!1096836 ((_ is Union!16055) r!7292))))

(declare-fun e!3723384 () Regex!16055)

(assert (=> b!6105395 (= e!3723384 e!3723383)))

(declare-fun b!6105396 () Bool)

(assert (=> b!6105396 (= e!3723384 (ite (= (head!12631 s!2326) (c!1096515 r!7292)) EmptyExpr!16055 EmptyLang!16055))))

(declare-fun bm!504955 () Bool)

(assert (=> bm!504955 (= call!504957 (derivativeStep!4776 (ite c!1096836 (regTwo!32623 r!7292) (ite c!1096838 (reg!16384 r!7292) (ite c!1096835 (regTwo!32622 r!7292) (regOne!32622 r!7292)))) (head!12631 s!2326)))))

(declare-fun b!6105397 () Bool)

(assert (=> b!6105397 (= e!3723382 e!3723384)))

(declare-fun c!1096839 () Bool)

(assert (=> b!6105397 (= c!1096839 ((_ is ElementMatch!16055) r!7292))))

(assert (= (and d!1913639 c!1096837) b!6105392))

(assert (= (and d!1913639 (not c!1096837)) b!6105397))

(assert (= (and b!6105397 c!1096839) b!6105396))

(assert (= (and b!6105397 (not c!1096839)) b!6105395))

(assert (= (and b!6105395 c!1096836) b!6105389))

(assert (= (and b!6105395 (not c!1096836)) b!6105388))

(assert (= (and b!6105388 c!1096838) b!6105390))

(assert (= (and b!6105388 (not c!1096838)) b!6105394))

(assert (= (and b!6105394 c!1096835) b!6105391))

(assert (= (and b!6105394 (not c!1096835)) b!6105393))

(assert (= (or b!6105391 b!6105393) bm!504952))

(assert (= (or b!6105390 bm!504952) bm!504953))

(assert (= (or b!6105389 bm!504953) bm!504955))

(assert (= (or b!6105389 b!6105391) bm!504954))

(declare-fun m!6956708 () Bool)

(assert (=> d!1913639 m!6956708))

(assert (=> d!1913639 m!6955762))

(assert (=> bm!504954 m!6955914))

(declare-fun m!6956710 () Bool)

(assert (=> bm!504954 m!6956710))

(assert (=> b!6105394 m!6956430))

(assert (=> bm!504955 m!6955914))

(declare-fun m!6956712 () Bool)

(assert (=> bm!504955 m!6956712))

(assert (=> b!6104346 d!1913639))

(assert (=> b!6104346 d!1913541))

(assert (=> b!6104346 d!1913589))

(declare-fun b!6105398 () Bool)

(declare-fun e!3723390 () Bool)

(declare-fun e!3723391 () Bool)

(assert (=> b!6105398 (= e!3723390 e!3723391)))

(declare-fun res!2532945 () Bool)

(assert (=> b!6105398 (=> (not res!2532945) (not e!3723391))))

(declare-fun call!504963 () Bool)

(assert (=> b!6105398 (= res!2532945 call!504963)))

(declare-fun b!6105399 () Bool)

(declare-fun res!2532948 () Bool)

(declare-fun e!3723387 () Bool)

(assert (=> b!6105399 (=> (not res!2532948) (not e!3723387))))

(assert (=> b!6105399 (= res!2532948 call!504963)))

(declare-fun e!3723389 () Bool)

(assert (=> b!6105399 (= e!3723389 e!3723387)))

(declare-fun b!6105400 () Bool)

(declare-fun e!3723385 () Bool)

(declare-fun call!504962 () Bool)

(assert (=> b!6105400 (= e!3723385 call!504962)))

(declare-fun b!6105401 () Bool)

(declare-fun res!2532947 () Bool)

(assert (=> b!6105401 (=> res!2532947 e!3723390)))

(assert (=> b!6105401 (= res!2532947 (not ((_ is Concat!24900) lt!2329580)))))

(assert (=> b!6105401 (= e!3723389 e!3723390)))

(declare-fun b!6105402 () Bool)

(declare-fun e!3723386 () Bool)

(declare-fun e!3723388 () Bool)

(assert (=> b!6105402 (= e!3723386 e!3723388)))

(declare-fun c!1096840 () Bool)

(assert (=> b!6105402 (= c!1096840 ((_ is Star!16055) lt!2329580))))

(declare-fun c!1096841 () Bool)

(declare-fun bm!504956 () Bool)

(assert (=> bm!504956 (= call!504962 (validRegex!7791 (ite c!1096840 (reg!16384 lt!2329580) (ite c!1096841 (regOne!32623 lt!2329580) (regOne!32622 lt!2329580)))))))

(declare-fun b!6105403 () Bool)

(assert (=> b!6105403 (= e!3723388 e!3723389)))

(assert (=> b!6105403 (= c!1096841 ((_ is Union!16055) lt!2329580))))

(declare-fun b!6105404 () Bool)

(assert (=> b!6105404 (= e!3723388 e!3723385)))

(declare-fun res!2532946 () Bool)

(assert (=> b!6105404 (= res!2532946 (not (nullable!6048 (reg!16384 lt!2329580))))))

(assert (=> b!6105404 (=> (not res!2532946) (not e!3723385))))

(declare-fun bm!504957 () Bool)

(assert (=> bm!504957 (= call!504963 call!504962)))

(declare-fun bm!504958 () Bool)

(declare-fun call!504961 () Bool)

(assert (=> bm!504958 (= call!504961 (validRegex!7791 (ite c!1096841 (regTwo!32623 lt!2329580) (regTwo!32622 lt!2329580))))))

(declare-fun b!6105406 () Bool)

(assert (=> b!6105406 (= e!3723391 call!504961)))

(declare-fun d!1913641 () Bool)

(declare-fun res!2532949 () Bool)

(assert (=> d!1913641 (=> res!2532949 e!3723386)))

(assert (=> d!1913641 (= res!2532949 ((_ is ElementMatch!16055) lt!2329580))))

(assert (=> d!1913641 (= (validRegex!7791 lt!2329580) e!3723386)))

(declare-fun b!6105405 () Bool)

(assert (=> b!6105405 (= e!3723387 call!504961)))

(assert (= (and d!1913641 (not res!2532949)) b!6105402))

(assert (= (and b!6105402 c!1096840) b!6105404))

(assert (= (and b!6105402 (not c!1096840)) b!6105403))

(assert (= (and b!6105404 res!2532946) b!6105400))

(assert (= (and b!6105403 c!1096841) b!6105399))

(assert (= (and b!6105403 (not c!1096841)) b!6105401))

(assert (= (and b!6105399 res!2532948) b!6105405))

(assert (= (and b!6105401 (not res!2532947)) b!6105398))

(assert (= (and b!6105398 res!2532945) b!6105406))

(assert (= (or b!6105405 b!6105406) bm!504958))

(assert (= (or b!6105399 b!6105398) bm!504957))

(assert (= (or b!6105400 bm!504957) bm!504956))

(declare-fun m!6956714 () Bool)

(assert (=> bm!504956 m!6956714))

(declare-fun m!6956716 () Bool)

(assert (=> b!6105404 m!6956716))

(declare-fun m!6956718 () Bool)

(assert (=> bm!504958 m!6956718))

(assert (=> d!1913333 d!1913641))

(declare-fun d!1913643 () Bool)

(declare-fun res!2532950 () Bool)

(declare-fun e!3723392 () Bool)

(assert (=> d!1913643 (=> res!2532950 e!3723392)))

(assert (=> d!1913643 (= res!2532950 ((_ is Nil!64340) (exprs!5939 (h!70789 zl!343))))))

(assert (=> d!1913643 (= (forall!15176 (exprs!5939 (h!70789 zl!343)) lambda!332610) e!3723392)))

(declare-fun b!6105407 () Bool)

(declare-fun e!3723393 () Bool)

(assert (=> b!6105407 (= e!3723392 e!3723393)))

(declare-fun res!2532951 () Bool)

(assert (=> b!6105407 (=> (not res!2532951) (not e!3723393))))

(assert (=> b!6105407 (= res!2532951 (dynLambda!25336 lambda!332610 (h!70788 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6105408 () Bool)

(assert (=> b!6105408 (= e!3723393 (forall!15176 (t!377915 (exprs!5939 (h!70789 zl!343))) lambda!332610))))

(assert (= (and d!1913643 (not res!2532950)) b!6105407))

(assert (= (and b!6105407 res!2532951) b!6105408))

(declare-fun b_lambda!232593 () Bool)

(assert (=> (not b_lambda!232593) (not b!6105407)))

(declare-fun m!6956720 () Bool)

(assert (=> b!6105407 m!6956720))

(declare-fun m!6956722 () Bool)

(assert (=> b!6105408 m!6956722))

(assert (=> d!1913333 d!1913643))

(assert (=> b!6104344 d!1913587))

(assert (=> b!6104344 d!1913589))

(declare-fun d!1913645 () Bool)

(declare-fun res!2532952 () Bool)

(declare-fun e!3723394 () Bool)

(assert (=> d!1913645 (=> res!2532952 e!3723394)))

(assert (=> d!1913645 (= res!2532952 ((_ is Nil!64340) (exprs!5939 (h!70789 zl!343))))))

(assert (=> d!1913645 (= (forall!15176 (exprs!5939 (h!70789 zl!343)) lambda!332613) e!3723394)))

(declare-fun b!6105409 () Bool)

(declare-fun e!3723395 () Bool)

(assert (=> b!6105409 (= e!3723394 e!3723395)))

(declare-fun res!2532953 () Bool)

(assert (=> b!6105409 (=> (not res!2532953) (not e!3723395))))

(assert (=> b!6105409 (= res!2532953 (dynLambda!25336 lambda!332613 (h!70788 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun b!6105410 () Bool)

(assert (=> b!6105410 (= e!3723395 (forall!15176 (t!377915 (exprs!5939 (h!70789 zl!343))) lambda!332613))))

(assert (= (and d!1913645 (not res!2532952)) b!6105409))

(assert (= (and b!6105409 res!2532953) b!6105410))

(declare-fun b_lambda!232595 () Bool)

(assert (=> (not b_lambda!232595) (not b!6105409)))

(declare-fun m!6956724 () Bool)

(assert (=> b!6105409 m!6956724))

(declare-fun m!6956726 () Bool)

(assert (=> b!6105410 m!6956726))

(assert (=> d!1913335 d!1913645))

(declare-fun b!6105411 () Bool)

(declare-fun e!3723399 () Bool)

(assert (=> b!6105411 (= e!3723399 (not (= (head!12631 s!2326) (c!1096515 (regTwo!32622 r!7292)))))))

(declare-fun b!6105412 () Bool)

(declare-fun res!2532960 () Bool)

(declare-fun e!3723397 () Bool)

(assert (=> b!6105412 (=> res!2532960 e!3723397)))

(declare-fun e!3723401 () Bool)

(assert (=> b!6105412 (= res!2532960 e!3723401)))

(declare-fun res!2532959 () Bool)

(assert (=> b!6105412 (=> (not res!2532959) (not e!3723401))))

(declare-fun lt!2329635 () Bool)

(assert (=> b!6105412 (= res!2532959 lt!2329635)))

(declare-fun b!6105413 () Bool)

(declare-fun e!3723400 () Bool)

(assert (=> b!6105413 (= e!3723397 e!3723400)))

(declare-fun res!2532954 () Bool)

(assert (=> b!6105413 (=> (not res!2532954) (not e!3723400))))

(assert (=> b!6105413 (= res!2532954 (not lt!2329635))))

(declare-fun bm!504959 () Bool)

(declare-fun call!504964 () Bool)

(assert (=> bm!504959 (= call!504964 (isEmpty!36265 s!2326))))

(declare-fun b!6105414 () Bool)

(declare-fun e!3723398 () Bool)

(assert (=> b!6105414 (= e!3723398 (= lt!2329635 call!504964))))

(declare-fun b!6105416 () Bool)

(declare-fun res!2532961 () Bool)

(assert (=> b!6105416 (=> (not res!2532961) (not e!3723401))))

(assert (=> b!6105416 (= res!2532961 (not call!504964))))

(declare-fun b!6105417 () Bool)

(assert (=> b!6105417 (= e!3723400 e!3723399)))

(declare-fun res!2532955 () Bool)

(assert (=> b!6105417 (=> res!2532955 e!3723399)))

(assert (=> b!6105417 (= res!2532955 call!504964)))

(declare-fun b!6105418 () Bool)

(declare-fun e!3723396 () Bool)

(assert (=> b!6105418 (= e!3723396 (not lt!2329635))))

(declare-fun b!6105419 () Bool)

(declare-fun e!3723402 () Bool)

(assert (=> b!6105419 (= e!3723402 (nullable!6048 (regTwo!32622 r!7292)))))

(declare-fun b!6105420 () Bool)

(assert (=> b!6105420 (= e!3723401 (= (head!12631 s!2326) (c!1096515 (regTwo!32622 r!7292))))))

(declare-fun b!6105421 () Bool)

(declare-fun res!2532957 () Bool)

(assert (=> b!6105421 (=> res!2532957 e!3723397)))

(assert (=> b!6105421 (= res!2532957 (not ((_ is ElementMatch!16055) (regTwo!32622 r!7292))))))

(assert (=> b!6105421 (= e!3723396 e!3723397)))

(declare-fun b!6105422 () Bool)

(declare-fun res!2532958 () Bool)

(assert (=> b!6105422 (=> res!2532958 e!3723399)))

(assert (=> b!6105422 (= res!2532958 (not (isEmpty!36265 (tail!11716 s!2326))))))

(declare-fun b!6105423 () Bool)

(assert (=> b!6105423 (= e!3723398 e!3723396)))

(declare-fun c!1096843 () Bool)

(assert (=> b!6105423 (= c!1096843 ((_ is EmptyLang!16055) (regTwo!32622 r!7292)))))

(declare-fun b!6105424 () Bool)

(assert (=> b!6105424 (= e!3723402 (matchR!8238 (derivativeStep!4776 (regTwo!32622 r!7292) (head!12631 s!2326)) (tail!11716 s!2326)))))

(declare-fun d!1913647 () Bool)

(assert (=> d!1913647 e!3723398))

(declare-fun c!1096842 () Bool)

(assert (=> d!1913647 (= c!1096842 ((_ is EmptyExpr!16055) (regTwo!32622 r!7292)))))

(assert (=> d!1913647 (= lt!2329635 e!3723402)))

(declare-fun c!1096844 () Bool)

(assert (=> d!1913647 (= c!1096844 (isEmpty!36265 s!2326))))

(assert (=> d!1913647 (validRegex!7791 (regTwo!32622 r!7292))))

(assert (=> d!1913647 (= (matchR!8238 (regTwo!32622 r!7292) s!2326) lt!2329635)))

(declare-fun b!6105415 () Bool)

(declare-fun res!2532956 () Bool)

(assert (=> b!6105415 (=> (not res!2532956) (not e!3723401))))

(assert (=> b!6105415 (= res!2532956 (isEmpty!36265 (tail!11716 s!2326)))))

(assert (= (and d!1913647 c!1096844) b!6105419))

(assert (= (and d!1913647 (not c!1096844)) b!6105424))

(assert (= (and d!1913647 c!1096842) b!6105414))

(assert (= (and d!1913647 (not c!1096842)) b!6105423))

(assert (= (and b!6105423 c!1096843) b!6105418))

(assert (= (and b!6105423 (not c!1096843)) b!6105421))

(assert (= (and b!6105421 (not res!2532957)) b!6105412))

(assert (= (and b!6105412 res!2532959) b!6105416))

(assert (= (and b!6105416 res!2532961) b!6105415))

(assert (= (and b!6105415 res!2532956) b!6105420))

(assert (= (and b!6105412 (not res!2532960)) b!6105413))

(assert (= (and b!6105413 res!2532954) b!6105417))

(assert (= (and b!6105417 (not res!2532955)) b!6105422))

(assert (= (and b!6105422 (not res!2532958)) b!6105411))

(assert (= (or b!6105414 b!6105416 b!6105417) bm!504959))

(assert (=> bm!504959 m!6955860))

(assert (=> b!6105419 m!6956634))

(assert (=> b!6105415 m!6955910))

(assert (=> b!6105415 m!6955910))

(assert (=> b!6105415 m!6955912))

(assert (=> b!6105424 m!6955914))

(assert (=> b!6105424 m!6955914))

(declare-fun m!6956728 () Bool)

(assert (=> b!6105424 m!6956728))

(assert (=> b!6105424 m!6955910))

(assert (=> b!6105424 m!6956728))

(assert (=> b!6105424 m!6955910))

(declare-fun m!6956730 () Bool)

(assert (=> b!6105424 m!6956730))

(assert (=> b!6105422 m!6955910))

(assert (=> b!6105422 m!6955910))

(assert (=> b!6105422 m!6955912))

(assert (=> b!6105411 m!6955914))

(assert (=> b!6105420 m!6955914))

(assert (=> d!1913647 m!6955860))

(assert (=> d!1913647 m!6956646))

(assert (=> b!6104491 d!1913647))

(assert (=> d!1913319 d!1913603))

(declare-fun b!6105425 () Bool)

(declare-fun e!3723406 () Bool)

(assert (=> b!6105425 (= e!3723406 (not (= (head!12631 Nil!64342) (c!1096515 (regOne!32622 r!7292)))))))

(declare-fun b!6105426 () Bool)

(declare-fun res!2532968 () Bool)

(declare-fun e!3723404 () Bool)

(assert (=> b!6105426 (=> res!2532968 e!3723404)))

(declare-fun e!3723408 () Bool)

(assert (=> b!6105426 (= res!2532968 e!3723408)))

(declare-fun res!2532967 () Bool)

(assert (=> b!6105426 (=> (not res!2532967) (not e!3723408))))

(declare-fun lt!2329636 () Bool)

(assert (=> b!6105426 (= res!2532967 lt!2329636)))

(declare-fun b!6105427 () Bool)

(declare-fun e!3723407 () Bool)

(assert (=> b!6105427 (= e!3723404 e!3723407)))

(declare-fun res!2532962 () Bool)

(assert (=> b!6105427 (=> (not res!2532962) (not e!3723407))))

(assert (=> b!6105427 (= res!2532962 (not lt!2329636))))

(declare-fun bm!504960 () Bool)

(declare-fun call!504965 () Bool)

(assert (=> bm!504960 (= call!504965 (isEmpty!36265 Nil!64342))))

(declare-fun b!6105428 () Bool)

(declare-fun e!3723405 () Bool)

(assert (=> b!6105428 (= e!3723405 (= lt!2329636 call!504965))))

(declare-fun b!6105430 () Bool)

(declare-fun res!2532969 () Bool)

(assert (=> b!6105430 (=> (not res!2532969) (not e!3723408))))

(assert (=> b!6105430 (= res!2532969 (not call!504965))))

(declare-fun b!6105431 () Bool)

(assert (=> b!6105431 (= e!3723407 e!3723406)))

(declare-fun res!2532963 () Bool)

(assert (=> b!6105431 (=> res!2532963 e!3723406)))

(assert (=> b!6105431 (= res!2532963 call!504965)))

(declare-fun b!6105432 () Bool)

(declare-fun e!3723403 () Bool)

(assert (=> b!6105432 (= e!3723403 (not lt!2329636))))

(declare-fun b!6105433 () Bool)

(declare-fun e!3723409 () Bool)

(assert (=> b!6105433 (= e!3723409 (nullable!6048 (regOne!32622 r!7292)))))

(declare-fun b!6105434 () Bool)

(assert (=> b!6105434 (= e!3723408 (= (head!12631 Nil!64342) (c!1096515 (regOne!32622 r!7292))))))

(declare-fun b!6105435 () Bool)

(declare-fun res!2532965 () Bool)

(assert (=> b!6105435 (=> res!2532965 e!3723404)))

(assert (=> b!6105435 (= res!2532965 (not ((_ is ElementMatch!16055) (regOne!32622 r!7292))))))

(assert (=> b!6105435 (= e!3723403 e!3723404)))

(declare-fun b!6105436 () Bool)

(declare-fun res!2532966 () Bool)

(assert (=> b!6105436 (=> res!2532966 e!3723406)))

(assert (=> b!6105436 (= res!2532966 (not (isEmpty!36265 (tail!11716 Nil!64342))))))

(declare-fun b!6105437 () Bool)

(assert (=> b!6105437 (= e!3723405 e!3723403)))

(declare-fun c!1096846 () Bool)

(assert (=> b!6105437 (= c!1096846 ((_ is EmptyLang!16055) (regOne!32622 r!7292)))))

(declare-fun b!6105438 () Bool)

(assert (=> b!6105438 (= e!3723409 (matchR!8238 (derivativeStep!4776 (regOne!32622 r!7292) (head!12631 Nil!64342)) (tail!11716 Nil!64342)))))

(declare-fun d!1913649 () Bool)

(assert (=> d!1913649 e!3723405))

(declare-fun c!1096845 () Bool)

(assert (=> d!1913649 (= c!1096845 ((_ is EmptyExpr!16055) (regOne!32622 r!7292)))))

(assert (=> d!1913649 (= lt!2329636 e!3723409)))

(declare-fun c!1096847 () Bool)

(assert (=> d!1913649 (= c!1096847 (isEmpty!36265 Nil!64342))))

(assert (=> d!1913649 (validRegex!7791 (regOne!32622 r!7292))))

(assert (=> d!1913649 (= (matchR!8238 (regOne!32622 r!7292) Nil!64342) lt!2329636)))

(declare-fun b!6105429 () Bool)

(declare-fun res!2532964 () Bool)

(assert (=> b!6105429 (=> (not res!2532964) (not e!3723408))))

(assert (=> b!6105429 (= res!2532964 (isEmpty!36265 (tail!11716 Nil!64342)))))

(assert (= (and d!1913649 c!1096847) b!6105433))

(assert (= (and d!1913649 (not c!1096847)) b!6105438))

(assert (= (and d!1913649 c!1096845) b!6105428))

(assert (= (and d!1913649 (not c!1096845)) b!6105437))

(assert (= (and b!6105437 c!1096846) b!6105432))

(assert (= (and b!6105437 (not c!1096846)) b!6105435))

(assert (= (and b!6105435 (not res!2532965)) b!6105426))

(assert (= (and b!6105426 res!2532967) b!6105430))

(assert (= (and b!6105430 res!2532969) b!6105429))

(assert (= (and b!6105429 res!2532964) b!6105434))

(assert (= (and b!6105426 (not res!2532968)) b!6105427))

(assert (= (and b!6105427 res!2532962) b!6105431))

(assert (= (and b!6105431 (not res!2532963)) b!6105436))

(assert (= (and b!6105436 (not res!2532966)) b!6105425))

(assert (= (or b!6105428 b!6105430 b!6105431) bm!504960))

(declare-fun m!6956732 () Bool)

(assert (=> bm!504960 m!6956732))

(assert (=> b!6105433 m!6956430))

(declare-fun m!6956734 () Bool)

(assert (=> b!6105429 m!6956734))

(assert (=> b!6105429 m!6956734))

(declare-fun m!6956736 () Bool)

(assert (=> b!6105429 m!6956736))

(declare-fun m!6956738 () Bool)

(assert (=> b!6105438 m!6956738))

(assert (=> b!6105438 m!6956738))

(declare-fun m!6956740 () Bool)

(assert (=> b!6105438 m!6956740))

(assert (=> b!6105438 m!6956734))

(assert (=> b!6105438 m!6956740))

(assert (=> b!6105438 m!6956734))

(declare-fun m!6956742 () Bool)

(assert (=> b!6105438 m!6956742))

(assert (=> b!6105436 m!6956734))

(assert (=> b!6105436 m!6956734))

(assert (=> b!6105436 m!6956736))

(assert (=> b!6105425 m!6956738))

(assert (=> b!6105434 m!6956738))

(assert (=> d!1913649 m!6956732))

(assert (=> d!1913649 m!6955982))

(assert (=> d!1913319 d!1913649))

(assert (=> d!1913319 d!1913545))

(assert (=> bm!504783 d!1913571))

(declare-fun d!1913651 () Bool)

(assert (=> d!1913651 true))

(assert (=> d!1913651 true))

(declare-fun res!2532970 () Bool)

(assert (=> d!1913651 (= (choose!45383 lambda!332563) res!2532970)))

(assert (=> d!1913323 d!1913651))

(declare-fun b!6105439 () Bool)

(declare-fun e!3723415 () Bool)

(declare-fun e!3723416 () Bool)

(assert (=> b!6105439 (= e!3723415 e!3723416)))

(declare-fun res!2532971 () Bool)

(assert (=> b!6105439 (=> (not res!2532971) (not e!3723416))))

(declare-fun call!504968 () Bool)

(assert (=> b!6105439 (= res!2532971 call!504968)))

(declare-fun b!6105440 () Bool)

(declare-fun res!2532974 () Bool)

(declare-fun e!3723412 () Bool)

(assert (=> b!6105440 (=> (not res!2532974) (not e!3723412))))

(assert (=> b!6105440 (= res!2532974 call!504968)))

(declare-fun e!3723414 () Bool)

(assert (=> b!6105440 (= e!3723414 e!3723412)))

(declare-fun b!6105441 () Bool)

(declare-fun e!3723410 () Bool)

(declare-fun call!504967 () Bool)

(assert (=> b!6105441 (= e!3723410 call!504967)))

(declare-fun b!6105442 () Bool)

(declare-fun res!2532973 () Bool)

(assert (=> b!6105442 (=> res!2532973 e!3723415)))

(assert (=> b!6105442 (= res!2532973 (not ((_ is Concat!24900) lt!2329592)))))

(assert (=> b!6105442 (= e!3723414 e!3723415)))

(declare-fun b!6105443 () Bool)

(declare-fun e!3723411 () Bool)

(declare-fun e!3723413 () Bool)

(assert (=> b!6105443 (= e!3723411 e!3723413)))

(declare-fun c!1096848 () Bool)

(assert (=> b!6105443 (= c!1096848 ((_ is Star!16055) lt!2329592))))

(declare-fun bm!504961 () Bool)

(declare-fun c!1096849 () Bool)

(assert (=> bm!504961 (= call!504967 (validRegex!7791 (ite c!1096848 (reg!16384 lt!2329592) (ite c!1096849 (regOne!32623 lt!2329592) (regOne!32622 lt!2329592)))))))

(declare-fun b!6105444 () Bool)

(assert (=> b!6105444 (= e!3723413 e!3723414)))

(assert (=> b!6105444 (= c!1096849 ((_ is Union!16055) lt!2329592))))

(declare-fun b!6105445 () Bool)

(assert (=> b!6105445 (= e!3723413 e!3723410)))

(declare-fun res!2532972 () Bool)

(assert (=> b!6105445 (= res!2532972 (not (nullable!6048 (reg!16384 lt!2329592))))))

(assert (=> b!6105445 (=> (not res!2532972) (not e!3723410))))

(declare-fun bm!504962 () Bool)

(assert (=> bm!504962 (= call!504968 call!504967)))

(declare-fun bm!504963 () Bool)

(declare-fun call!504966 () Bool)

(assert (=> bm!504963 (= call!504966 (validRegex!7791 (ite c!1096849 (regTwo!32623 lt!2329592) (regTwo!32622 lt!2329592))))))

(declare-fun b!6105447 () Bool)

(assert (=> b!6105447 (= e!3723416 call!504966)))

(declare-fun d!1913653 () Bool)

(declare-fun res!2532975 () Bool)

(assert (=> d!1913653 (=> res!2532975 e!3723411)))

(assert (=> d!1913653 (= res!2532975 ((_ is ElementMatch!16055) lt!2329592))))

(assert (=> d!1913653 (= (validRegex!7791 lt!2329592) e!3723411)))

(declare-fun b!6105446 () Bool)

(assert (=> b!6105446 (= e!3723412 call!504966)))

(assert (= (and d!1913653 (not res!2532975)) b!6105443))

(assert (= (and b!6105443 c!1096848) b!6105445))

(assert (= (and b!6105443 (not c!1096848)) b!6105444))

(assert (= (and b!6105445 res!2532972) b!6105441))

(assert (= (and b!6105444 c!1096849) b!6105440))

(assert (= (and b!6105444 (not c!1096849)) b!6105442))

(assert (= (and b!6105440 res!2532974) b!6105446))

(assert (= (and b!6105442 (not res!2532973)) b!6105439))

(assert (= (and b!6105439 res!2532971) b!6105447))

(assert (= (or b!6105446 b!6105447) bm!504963))

(assert (= (or b!6105440 b!6105439) bm!504962))

(assert (= (or b!6105441 bm!504962) bm!504961))

(declare-fun m!6956744 () Bool)

(assert (=> bm!504961 m!6956744))

(declare-fun m!6956746 () Bool)

(assert (=> b!6105445 m!6956746))

(declare-fun m!6956748 () Bool)

(assert (=> bm!504963 m!6956748))

(assert (=> d!1913347 d!1913653))

(assert (=> d!1913347 d!1913337))

(assert (=> d!1913347 d!1913339))

(declare-fun b!6105449 () Bool)

(declare-fun e!3723417 () Bool)

(declare-fun tp!1704571 () Bool)

(declare-fun tp!1704572 () Bool)

(assert (=> b!6105449 (= e!3723417 (and tp!1704571 tp!1704572))))

(declare-fun b!6105448 () Bool)

(assert (=> b!6105448 (= e!3723417 tp_is_empty!41363)))

(declare-fun b!6105450 () Bool)

(declare-fun tp!1704575 () Bool)

(assert (=> b!6105450 (= e!3723417 tp!1704575)))

(assert (=> b!6104688 (= tp!1704392 e!3723417)))

(declare-fun b!6105451 () Bool)

(declare-fun tp!1704573 () Bool)

(declare-fun tp!1704574 () Bool)

(assert (=> b!6105451 (= e!3723417 (and tp!1704573 tp!1704574))))

(assert (= (and b!6104688 ((_ is ElementMatch!16055) (regOne!32623 (regTwo!32623 r!7292)))) b!6105448))

(assert (= (and b!6104688 ((_ is Concat!24900) (regOne!32623 (regTwo!32623 r!7292)))) b!6105449))

(assert (= (and b!6104688 ((_ is Star!16055) (regOne!32623 (regTwo!32623 r!7292)))) b!6105450))

(assert (= (and b!6104688 ((_ is Union!16055) (regOne!32623 (regTwo!32623 r!7292)))) b!6105451))

(declare-fun b!6105453 () Bool)

(declare-fun e!3723418 () Bool)

(declare-fun tp!1704576 () Bool)

(declare-fun tp!1704577 () Bool)

(assert (=> b!6105453 (= e!3723418 (and tp!1704576 tp!1704577))))

(declare-fun b!6105452 () Bool)

(assert (=> b!6105452 (= e!3723418 tp_is_empty!41363)))

(declare-fun b!6105454 () Bool)

(declare-fun tp!1704580 () Bool)

(assert (=> b!6105454 (= e!3723418 tp!1704580)))

(assert (=> b!6104688 (= tp!1704393 e!3723418)))

(declare-fun b!6105455 () Bool)

(declare-fun tp!1704578 () Bool)

(declare-fun tp!1704579 () Bool)

(assert (=> b!6105455 (= e!3723418 (and tp!1704578 tp!1704579))))

(assert (= (and b!6104688 ((_ is ElementMatch!16055) (regTwo!32623 (regTwo!32623 r!7292)))) b!6105452))

(assert (= (and b!6104688 ((_ is Concat!24900) (regTwo!32623 (regTwo!32623 r!7292)))) b!6105453))

(assert (= (and b!6104688 ((_ is Star!16055) (regTwo!32623 (regTwo!32623 r!7292)))) b!6105454))

(assert (= (and b!6104688 ((_ is Union!16055) (regTwo!32623 (regTwo!32623 r!7292)))) b!6105455))

(declare-fun b!6105457 () Bool)

(declare-fun e!3723419 () Bool)

(declare-fun tp!1704581 () Bool)

(declare-fun tp!1704582 () Bool)

(assert (=> b!6105457 (= e!3723419 (and tp!1704581 tp!1704582))))

(declare-fun b!6105456 () Bool)

(assert (=> b!6105456 (= e!3723419 tp_is_empty!41363)))

(declare-fun b!6105458 () Bool)

(declare-fun tp!1704585 () Bool)

(assert (=> b!6105458 (= e!3723419 tp!1704585)))

(assert (=> b!6104667 (= tp!1704370 e!3723419)))

(declare-fun b!6105459 () Bool)

(declare-fun tp!1704583 () Bool)

(declare-fun tp!1704584 () Bool)

(assert (=> b!6105459 (= e!3723419 (and tp!1704583 tp!1704584))))

(assert (= (and b!6104667 ((_ is ElementMatch!16055) (regOne!32623 (regTwo!32622 r!7292)))) b!6105456))

(assert (= (and b!6104667 ((_ is Concat!24900) (regOne!32623 (regTwo!32622 r!7292)))) b!6105457))

(assert (= (and b!6104667 ((_ is Star!16055) (regOne!32623 (regTwo!32622 r!7292)))) b!6105458))

(assert (= (and b!6104667 ((_ is Union!16055) (regOne!32623 (regTwo!32622 r!7292)))) b!6105459))

(declare-fun b!6105461 () Bool)

(declare-fun e!3723420 () Bool)

(declare-fun tp!1704586 () Bool)

(declare-fun tp!1704587 () Bool)

(assert (=> b!6105461 (= e!3723420 (and tp!1704586 tp!1704587))))

(declare-fun b!6105460 () Bool)

(assert (=> b!6105460 (= e!3723420 tp_is_empty!41363)))

(declare-fun b!6105462 () Bool)

(declare-fun tp!1704590 () Bool)

(assert (=> b!6105462 (= e!3723420 tp!1704590)))

(assert (=> b!6104667 (= tp!1704371 e!3723420)))

(declare-fun b!6105463 () Bool)

(declare-fun tp!1704588 () Bool)

(declare-fun tp!1704589 () Bool)

(assert (=> b!6105463 (= e!3723420 (and tp!1704588 tp!1704589))))

(assert (= (and b!6104667 ((_ is ElementMatch!16055) (regTwo!32623 (regTwo!32622 r!7292)))) b!6105460))

(assert (= (and b!6104667 ((_ is Concat!24900) (regTwo!32623 (regTwo!32622 r!7292)))) b!6105461))

(assert (= (and b!6104667 ((_ is Star!16055) (regTwo!32623 (regTwo!32622 r!7292)))) b!6105462))

(assert (= (and b!6104667 ((_ is Union!16055) (regTwo!32623 (regTwo!32622 r!7292)))) b!6105463))

(declare-fun b!6105465 () Bool)

(declare-fun e!3723421 () Bool)

(declare-fun tp!1704591 () Bool)

(declare-fun tp!1704592 () Bool)

(assert (=> b!6105465 (= e!3723421 (and tp!1704591 tp!1704592))))

(declare-fun b!6105464 () Bool)

(assert (=> b!6105464 (= e!3723421 tp_is_empty!41363)))

(declare-fun b!6105466 () Bool)

(declare-fun tp!1704595 () Bool)

(assert (=> b!6105466 (= e!3723421 tp!1704595)))

(assert (=> b!6104687 (= tp!1704394 e!3723421)))

(declare-fun b!6105467 () Bool)

(declare-fun tp!1704593 () Bool)

(declare-fun tp!1704594 () Bool)

(assert (=> b!6105467 (= e!3723421 (and tp!1704593 tp!1704594))))

(assert (= (and b!6104687 ((_ is ElementMatch!16055) (reg!16384 (regTwo!32623 r!7292)))) b!6105464))

(assert (= (and b!6104687 ((_ is Concat!24900) (reg!16384 (regTwo!32623 r!7292)))) b!6105465))

(assert (= (and b!6104687 ((_ is Star!16055) (reg!16384 (regTwo!32623 r!7292)))) b!6105466))

(assert (= (and b!6104687 ((_ is Union!16055) (reg!16384 (regTwo!32623 r!7292)))) b!6105467))

(declare-fun b!6105469 () Bool)

(declare-fun e!3723422 () Bool)

(declare-fun tp!1704596 () Bool)

(declare-fun tp!1704597 () Bool)

(assert (=> b!6105469 (= e!3723422 (and tp!1704596 tp!1704597))))

(declare-fun b!6105468 () Bool)

(assert (=> b!6105468 (= e!3723422 tp_is_empty!41363)))

(declare-fun b!6105470 () Bool)

(declare-fun tp!1704600 () Bool)

(assert (=> b!6105470 (= e!3723422 tp!1704600)))

(assert (=> b!6104666 (= tp!1704372 e!3723422)))

(declare-fun b!6105471 () Bool)

(declare-fun tp!1704598 () Bool)

(declare-fun tp!1704599 () Bool)

(assert (=> b!6105471 (= e!3723422 (and tp!1704598 tp!1704599))))

(assert (= (and b!6104666 ((_ is ElementMatch!16055) (reg!16384 (regTwo!32622 r!7292)))) b!6105468))

(assert (= (and b!6104666 ((_ is Concat!24900) (reg!16384 (regTwo!32622 r!7292)))) b!6105469))

(assert (= (and b!6104666 ((_ is Star!16055) (reg!16384 (regTwo!32622 r!7292)))) b!6105470))

(assert (= (and b!6104666 ((_ is Union!16055) (reg!16384 (regTwo!32622 r!7292)))) b!6105471))

(declare-fun b!6105473 () Bool)

(declare-fun e!3723423 () Bool)

(declare-fun tp!1704601 () Bool)

(declare-fun tp!1704602 () Bool)

(assert (=> b!6105473 (= e!3723423 (and tp!1704601 tp!1704602))))

(declare-fun b!6105472 () Bool)

(assert (=> b!6105472 (= e!3723423 tp_is_empty!41363)))

(declare-fun b!6105474 () Bool)

(declare-fun tp!1704605 () Bool)

(assert (=> b!6105474 (= e!3723423 tp!1704605)))

(assert (=> b!6104686 (= tp!1704390 e!3723423)))

(declare-fun b!6105475 () Bool)

(declare-fun tp!1704603 () Bool)

(declare-fun tp!1704604 () Bool)

(assert (=> b!6105475 (= e!3723423 (and tp!1704603 tp!1704604))))

(assert (= (and b!6104686 ((_ is ElementMatch!16055) (regOne!32622 (regTwo!32623 r!7292)))) b!6105472))

(assert (= (and b!6104686 ((_ is Concat!24900) (regOne!32622 (regTwo!32623 r!7292)))) b!6105473))

(assert (= (and b!6104686 ((_ is Star!16055) (regOne!32622 (regTwo!32623 r!7292)))) b!6105474))

(assert (= (and b!6104686 ((_ is Union!16055) (regOne!32622 (regTwo!32623 r!7292)))) b!6105475))

(declare-fun b!6105477 () Bool)

(declare-fun e!3723424 () Bool)

(declare-fun tp!1704606 () Bool)

(declare-fun tp!1704607 () Bool)

(assert (=> b!6105477 (= e!3723424 (and tp!1704606 tp!1704607))))

(declare-fun b!6105476 () Bool)

(assert (=> b!6105476 (= e!3723424 tp_is_empty!41363)))

(declare-fun b!6105478 () Bool)

(declare-fun tp!1704610 () Bool)

(assert (=> b!6105478 (= e!3723424 tp!1704610)))

(assert (=> b!6104686 (= tp!1704391 e!3723424)))

(declare-fun b!6105479 () Bool)

(declare-fun tp!1704608 () Bool)

(declare-fun tp!1704609 () Bool)

(assert (=> b!6105479 (= e!3723424 (and tp!1704608 tp!1704609))))

(assert (= (and b!6104686 ((_ is ElementMatch!16055) (regTwo!32622 (regTwo!32623 r!7292)))) b!6105476))

(assert (= (and b!6104686 ((_ is Concat!24900) (regTwo!32622 (regTwo!32623 r!7292)))) b!6105477))

(assert (= (and b!6104686 ((_ is Star!16055) (regTwo!32622 (regTwo!32623 r!7292)))) b!6105478))

(assert (= (and b!6104686 ((_ is Union!16055) (regTwo!32622 (regTwo!32623 r!7292)))) b!6105479))

(declare-fun b!6105481 () Bool)

(declare-fun e!3723425 () Bool)

(declare-fun tp!1704611 () Bool)

(declare-fun tp!1704612 () Bool)

(assert (=> b!6105481 (= e!3723425 (and tp!1704611 tp!1704612))))

(declare-fun b!6105480 () Bool)

(assert (=> b!6105480 (= e!3723425 tp_is_empty!41363)))

(declare-fun b!6105482 () Bool)

(declare-fun tp!1704615 () Bool)

(assert (=> b!6105482 (= e!3723425 tp!1704615)))

(assert (=> b!6104665 (= tp!1704368 e!3723425)))

(declare-fun b!6105483 () Bool)

(declare-fun tp!1704613 () Bool)

(declare-fun tp!1704614 () Bool)

(assert (=> b!6105483 (= e!3723425 (and tp!1704613 tp!1704614))))

(assert (= (and b!6104665 ((_ is ElementMatch!16055) (regOne!32622 (regTwo!32622 r!7292)))) b!6105480))

(assert (= (and b!6104665 ((_ is Concat!24900) (regOne!32622 (regTwo!32622 r!7292)))) b!6105481))

(assert (= (and b!6104665 ((_ is Star!16055) (regOne!32622 (regTwo!32622 r!7292)))) b!6105482))

(assert (= (and b!6104665 ((_ is Union!16055) (regOne!32622 (regTwo!32622 r!7292)))) b!6105483))

(declare-fun b!6105485 () Bool)

(declare-fun e!3723426 () Bool)

(declare-fun tp!1704616 () Bool)

(declare-fun tp!1704617 () Bool)

(assert (=> b!6105485 (= e!3723426 (and tp!1704616 tp!1704617))))

(declare-fun b!6105484 () Bool)

(assert (=> b!6105484 (= e!3723426 tp_is_empty!41363)))

(declare-fun b!6105486 () Bool)

(declare-fun tp!1704620 () Bool)

(assert (=> b!6105486 (= e!3723426 tp!1704620)))

(assert (=> b!6104665 (= tp!1704369 e!3723426)))

(declare-fun b!6105487 () Bool)

(declare-fun tp!1704618 () Bool)

(declare-fun tp!1704619 () Bool)

(assert (=> b!6105487 (= e!3723426 (and tp!1704618 tp!1704619))))

(assert (= (and b!6104665 ((_ is ElementMatch!16055) (regTwo!32622 (regTwo!32622 r!7292)))) b!6105484))

(assert (= (and b!6104665 ((_ is Concat!24900) (regTwo!32622 (regTwo!32622 r!7292)))) b!6105485))

(assert (= (and b!6104665 ((_ is Star!16055) (regTwo!32622 (regTwo!32622 r!7292)))) b!6105486))

(assert (= (and b!6104665 ((_ is Union!16055) (regTwo!32622 (regTwo!32622 r!7292)))) b!6105487))

(declare-fun condSetEmpty!41254 () Bool)

(assert (=> setNonEmpty!41252 (= condSetEmpty!41254 (= setRest!41252 ((as const (Array Context!10878 Bool)) false)))))

(declare-fun setRes!41254 () Bool)

(assert (=> setNonEmpty!41252 (= tp!1704407 setRes!41254)))

(declare-fun setIsEmpty!41254 () Bool)

(assert (=> setIsEmpty!41254 setRes!41254))

(declare-fun e!3723427 () Bool)

(declare-fun tp!1704621 () Bool)

(declare-fun setElem!41254 () Context!10878)

(declare-fun setNonEmpty!41254 () Bool)

(assert (=> setNonEmpty!41254 (= setRes!41254 (and tp!1704621 (inv!83384 setElem!41254) e!3723427))))

(declare-fun setRest!41254 () (InoxSet Context!10878))

(assert (=> setNonEmpty!41254 (= setRest!41252 ((_ map or) (store ((as const (Array Context!10878 Bool)) false) setElem!41254 true) setRest!41254))))

(declare-fun b!6105488 () Bool)

(declare-fun tp!1704622 () Bool)

(assert (=> b!6105488 (= e!3723427 tp!1704622)))

(assert (= (and setNonEmpty!41252 condSetEmpty!41254) setIsEmpty!41254))

(assert (= (and setNonEmpty!41252 (not condSetEmpty!41254)) setNonEmpty!41254))

(assert (= setNonEmpty!41254 b!6105488))

(declare-fun m!6956750 () Bool)

(assert (=> setNonEmpty!41254 m!6956750))

(declare-fun b!6105489 () Bool)

(declare-fun e!3723428 () Bool)

(declare-fun tp!1704623 () Bool)

(declare-fun tp!1704624 () Bool)

(assert (=> b!6105489 (= e!3723428 (and tp!1704623 tp!1704624))))

(assert (=> b!6104702 (= tp!1704408 e!3723428)))

(assert (= (and b!6104702 ((_ is Cons!64340) (exprs!5939 setElem!41252))) b!6105489))

(declare-fun b!6105491 () Bool)

(declare-fun e!3723429 () Bool)

(declare-fun tp!1704625 () Bool)

(declare-fun tp!1704626 () Bool)

(assert (=> b!6105491 (= e!3723429 (and tp!1704625 tp!1704626))))

(declare-fun b!6105490 () Bool)

(assert (=> b!6105490 (= e!3723429 tp_is_empty!41363)))

(declare-fun b!6105492 () Bool)

(declare-fun tp!1704629 () Bool)

(assert (=> b!6105492 (= e!3723429 tp!1704629)))

(assert (=> b!6104703 (= tp!1704409 e!3723429)))

(declare-fun b!6105493 () Bool)

(declare-fun tp!1704627 () Bool)

(declare-fun tp!1704628 () Bool)

(assert (=> b!6105493 (= e!3723429 (and tp!1704627 tp!1704628))))

(assert (= (and b!6104703 ((_ is ElementMatch!16055) (h!70788 (exprs!5939 (h!70789 zl!343))))) b!6105490))

(assert (= (and b!6104703 ((_ is Concat!24900) (h!70788 (exprs!5939 (h!70789 zl!343))))) b!6105491))

(assert (= (and b!6104703 ((_ is Star!16055) (h!70788 (exprs!5939 (h!70789 zl!343))))) b!6105492))

(assert (= (and b!6104703 ((_ is Union!16055) (h!70788 (exprs!5939 (h!70789 zl!343))))) b!6105493))

(declare-fun b!6105494 () Bool)

(declare-fun e!3723430 () Bool)

(declare-fun tp!1704630 () Bool)

(declare-fun tp!1704631 () Bool)

(assert (=> b!6105494 (= e!3723430 (and tp!1704630 tp!1704631))))

(assert (=> b!6104703 (= tp!1704410 e!3723430)))

(assert (= (and b!6104703 ((_ is Cons!64340) (t!377915 (exprs!5939 (h!70789 zl!343))))) b!6105494))

(declare-fun b!6105495 () Bool)

(declare-fun e!3723431 () Bool)

(declare-fun tp!1704632 () Bool)

(declare-fun tp!1704633 () Bool)

(assert (=> b!6105495 (= e!3723431 (and tp!1704632 tp!1704633))))

(assert (=> b!6104675 (= tp!1704377 e!3723431)))

(assert (= (and b!6104675 ((_ is Cons!64340) (exprs!5939 (h!70789 (t!377916 zl!343))))) b!6105495))

(declare-fun b!6105496 () Bool)

(declare-fun e!3723432 () Bool)

(declare-fun tp!1704634 () Bool)

(assert (=> b!6105496 (= e!3723432 (and tp_is_empty!41363 tp!1704634))))

(assert (=> b!6104697 (= tp!1704402 e!3723432)))

(assert (= (and b!6104697 ((_ is Cons!64342) (t!377917 (t!377917 s!2326)))) b!6105496))

(declare-fun b!6105498 () Bool)

(declare-fun e!3723434 () Bool)

(declare-fun tp!1704635 () Bool)

(assert (=> b!6105498 (= e!3723434 tp!1704635)))

(declare-fun b!6105497 () Bool)

(declare-fun tp!1704636 () Bool)

(declare-fun e!3723433 () Bool)

(assert (=> b!6105497 (= e!3723433 (and (inv!83384 (h!70789 (t!377916 (t!377916 zl!343)))) e!3723434 tp!1704636))))

(assert (=> b!6104674 (= tp!1704378 e!3723433)))

(assert (= b!6105497 b!6105498))

(assert (= (and b!6104674 ((_ is Cons!64341) (t!377916 (t!377916 zl!343)))) b!6105497))

(declare-fun m!6956752 () Bool)

(assert (=> b!6105497 m!6956752))

(declare-fun b!6105500 () Bool)

(declare-fun e!3723435 () Bool)

(declare-fun tp!1704637 () Bool)

(declare-fun tp!1704638 () Bool)

(assert (=> b!6105500 (= e!3723435 (and tp!1704637 tp!1704638))))

(declare-fun b!6105499 () Bool)

(assert (=> b!6105499 (= e!3723435 tp_is_empty!41363)))

(declare-fun b!6105501 () Bool)

(declare-fun tp!1704641 () Bool)

(assert (=> b!6105501 (= e!3723435 tp!1704641)))

(assert (=> b!6104680 (= tp!1704383 e!3723435)))

(declare-fun b!6105502 () Bool)

(declare-fun tp!1704639 () Bool)

(declare-fun tp!1704640 () Bool)

(assert (=> b!6105502 (= e!3723435 (and tp!1704639 tp!1704640))))

(assert (= (and b!6104680 ((_ is ElementMatch!16055) (h!70788 (exprs!5939 setElem!41246)))) b!6105499))

(assert (= (and b!6104680 ((_ is Concat!24900) (h!70788 (exprs!5939 setElem!41246)))) b!6105500))

(assert (= (and b!6104680 ((_ is Star!16055) (h!70788 (exprs!5939 setElem!41246)))) b!6105501))

(assert (= (and b!6104680 ((_ is Union!16055) (h!70788 (exprs!5939 setElem!41246)))) b!6105502))

(declare-fun b!6105503 () Bool)

(declare-fun e!3723436 () Bool)

(declare-fun tp!1704642 () Bool)

(declare-fun tp!1704643 () Bool)

(assert (=> b!6105503 (= e!3723436 (and tp!1704642 tp!1704643))))

(assert (=> b!6104680 (= tp!1704384 e!3723436)))

(assert (= (and b!6104680 ((_ is Cons!64340) (t!377915 (exprs!5939 setElem!41246)))) b!6105503))

(declare-fun b!6105505 () Bool)

(declare-fun e!3723437 () Bool)

(declare-fun tp!1704644 () Bool)

(declare-fun tp!1704645 () Bool)

(assert (=> b!6105505 (= e!3723437 (and tp!1704644 tp!1704645))))

(declare-fun b!6105504 () Bool)

(assert (=> b!6105504 (= e!3723437 tp_is_empty!41363)))

(declare-fun b!6105506 () Bool)

(declare-fun tp!1704648 () Bool)

(assert (=> b!6105506 (= e!3723437 tp!1704648)))

(assert (=> b!6104684 (= tp!1704387 e!3723437)))

(declare-fun b!6105507 () Bool)

(declare-fun tp!1704646 () Bool)

(declare-fun tp!1704647 () Bool)

(assert (=> b!6105507 (= e!3723437 (and tp!1704646 tp!1704647))))

(assert (= (and b!6104684 ((_ is ElementMatch!16055) (regOne!32623 (regOne!32623 r!7292)))) b!6105504))

(assert (= (and b!6104684 ((_ is Concat!24900) (regOne!32623 (regOne!32623 r!7292)))) b!6105505))

(assert (= (and b!6104684 ((_ is Star!16055) (regOne!32623 (regOne!32623 r!7292)))) b!6105506))

(assert (= (and b!6104684 ((_ is Union!16055) (regOne!32623 (regOne!32623 r!7292)))) b!6105507))

(declare-fun b!6105509 () Bool)

(declare-fun e!3723438 () Bool)

(declare-fun tp!1704649 () Bool)

(declare-fun tp!1704650 () Bool)

(assert (=> b!6105509 (= e!3723438 (and tp!1704649 tp!1704650))))

(declare-fun b!6105508 () Bool)

(assert (=> b!6105508 (= e!3723438 tp_is_empty!41363)))

(declare-fun b!6105510 () Bool)

(declare-fun tp!1704653 () Bool)

(assert (=> b!6105510 (= e!3723438 tp!1704653)))

(assert (=> b!6104684 (= tp!1704388 e!3723438)))

(declare-fun b!6105511 () Bool)

(declare-fun tp!1704651 () Bool)

(declare-fun tp!1704652 () Bool)

(assert (=> b!6105511 (= e!3723438 (and tp!1704651 tp!1704652))))

(assert (= (and b!6104684 ((_ is ElementMatch!16055) (regTwo!32623 (regOne!32623 r!7292)))) b!6105508))

(assert (= (and b!6104684 ((_ is Concat!24900) (regTwo!32623 (regOne!32623 r!7292)))) b!6105509))

(assert (= (and b!6104684 ((_ is Star!16055) (regTwo!32623 (regOne!32623 r!7292)))) b!6105510))

(assert (= (and b!6104684 ((_ is Union!16055) (regTwo!32623 (regOne!32623 r!7292)))) b!6105511))

(declare-fun b!6105513 () Bool)

(declare-fun e!3723439 () Bool)

(declare-fun tp!1704654 () Bool)

(declare-fun tp!1704655 () Bool)

(assert (=> b!6105513 (= e!3723439 (and tp!1704654 tp!1704655))))

(declare-fun b!6105512 () Bool)

(assert (=> b!6105512 (= e!3723439 tp_is_empty!41363)))

(declare-fun b!6105514 () Bool)

(declare-fun tp!1704658 () Bool)

(assert (=> b!6105514 (= e!3723439 tp!1704658)))

(assert (=> b!6104663 (= tp!1704365 e!3723439)))

(declare-fun b!6105515 () Bool)

(declare-fun tp!1704656 () Bool)

(declare-fun tp!1704657 () Bool)

(assert (=> b!6105515 (= e!3723439 (and tp!1704656 tp!1704657))))

(assert (= (and b!6104663 ((_ is ElementMatch!16055) (regOne!32623 (regOne!32622 r!7292)))) b!6105512))

(assert (= (and b!6104663 ((_ is Concat!24900) (regOne!32623 (regOne!32622 r!7292)))) b!6105513))

(assert (= (and b!6104663 ((_ is Star!16055) (regOne!32623 (regOne!32622 r!7292)))) b!6105514))

(assert (= (and b!6104663 ((_ is Union!16055) (regOne!32623 (regOne!32622 r!7292)))) b!6105515))

(declare-fun b!6105517 () Bool)

(declare-fun e!3723440 () Bool)

(declare-fun tp!1704659 () Bool)

(declare-fun tp!1704660 () Bool)

(assert (=> b!6105517 (= e!3723440 (and tp!1704659 tp!1704660))))

(declare-fun b!6105516 () Bool)

(assert (=> b!6105516 (= e!3723440 tp_is_empty!41363)))

(declare-fun b!6105518 () Bool)

(declare-fun tp!1704663 () Bool)

(assert (=> b!6105518 (= e!3723440 tp!1704663)))

(assert (=> b!6104663 (= tp!1704366 e!3723440)))

(declare-fun b!6105519 () Bool)

(declare-fun tp!1704661 () Bool)

(declare-fun tp!1704662 () Bool)

(assert (=> b!6105519 (= e!3723440 (and tp!1704661 tp!1704662))))

(assert (= (and b!6104663 ((_ is ElementMatch!16055) (regTwo!32623 (regOne!32622 r!7292)))) b!6105516))

(assert (= (and b!6104663 ((_ is Concat!24900) (regTwo!32623 (regOne!32622 r!7292)))) b!6105517))

(assert (= (and b!6104663 ((_ is Star!16055) (regTwo!32623 (regOne!32622 r!7292)))) b!6105518))

(assert (= (and b!6104663 ((_ is Union!16055) (regTwo!32623 (regOne!32622 r!7292)))) b!6105519))

(declare-fun b!6105521 () Bool)

(declare-fun e!3723441 () Bool)

(declare-fun tp!1704664 () Bool)

(declare-fun tp!1704665 () Bool)

(assert (=> b!6105521 (= e!3723441 (and tp!1704664 tp!1704665))))

(declare-fun b!6105520 () Bool)

(assert (=> b!6105520 (= e!3723441 tp_is_empty!41363)))

(declare-fun b!6105522 () Bool)

(declare-fun tp!1704668 () Bool)

(assert (=> b!6105522 (= e!3723441 tp!1704668)))

(assert (=> b!6104682 (= tp!1704385 e!3723441)))

(declare-fun b!6105523 () Bool)

(declare-fun tp!1704666 () Bool)

(declare-fun tp!1704667 () Bool)

(assert (=> b!6105523 (= e!3723441 (and tp!1704666 tp!1704667))))

(assert (= (and b!6104682 ((_ is ElementMatch!16055) (regOne!32622 (regOne!32623 r!7292)))) b!6105520))

(assert (= (and b!6104682 ((_ is Concat!24900) (regOne!32622 (regOne!32623 r!7292)))) b!6105521))

(assert (= (and b!6104682 ((_ is Star!16055) (regOne!32622 (regOne!32623 r!7292)))) b!6105522))

(assert (= (and b!6104682 ((_ is Union!16055) (regOne!32622 (regOne!32623 r!7292)))) b!6105523))

(declare-fun b!6105525 () Bool)

(declare-fun e!3723442 () Bool)

(declare-fun tp!1704669 () Bool)

(declare-fun tp!1704670 () Bool)

(assert (=> b!6105525 (= e!3723442 (and tp!1704669 tp!1704670))))

(declare-fun b!6105524 () Bool)

(assert (=> b!6105524 (= e!3723442 tp_is_empty!41363)))

(declare-fun b!6105526 () Bool)

(declare-fun tp!1704673 () Bool)

(assert (=> b!6105526 (= e!3723442 tp!1704673)))

(assert (=> b!6104682 (= tp!1704386 e!3723442)))

(declare-fun b!6105527 () Bool)

(declare-fun tp!1704671 () Bool)

(declare-fun tp!1704672 () Bool)

(assert (=> b!6105527 (= e!3723442 (and tp!1704671 tp!1704672))))

(assert (= (and b!6104682 ((_ is ElementMatch!16055) (regTwo!32622 (regOne!32623 r!7292)))) b!6105524))

(assert (= (and b!6104682 ((_ is Concat!24900) (regTwo!32622 (regOne!32623 r!7292)))) b!6105525))

(assert (= (and b!6104682 ((_ is Star!16055) (regTwo!32622 (regOne!32623 r!7292)))) b!6105526))

(assert (= (and b!6104682 ((_ is Union!16055) (regTwo!32622 (regOne!32623 r!7292)))) b!6105527))

(declare-fun b!6105529 () Bool)

(declare-fun e!3723443 () Bool)

(declare-fun tp!1704674 () Bool)

(declare-fun tp!1704675 () Bool)

(assert (=> b!6105529 (= e!3723443 (and tp!1704674 tp!1704675))))

(declare-fun b!6105528 () Bool)

(assert (=> b!6105528 (= e!3723443 tp_is_empty!41363)))

(declare-fun b!6105530 () Bool)

(declare-fun tp!1704678 () Bool)

(assert (=> b!6105530 (= e!3723443 tp!1704678)))

(assert (=> b!6104661 (= tp!1704363 e!3723443)))

(declare-fun b!6105531 () Bool)

(declare-fun tp!1704676 () Bool)

(declare-fun tp!1704677 () Bool)

(assert (=> b!6105531 (= e!3723443 (and tp!1704676 tp!1704677))))

(assert (= (and b!6104661 ((_ is ElementMatch!16055) (regOne!32622 (regOne!32622 r!7292)))) b!6105528))

(assert (= (and b!6104661 ((_ is Concat!24900) (regOne!32622 (regOne!32622 r!7292)))) b!6105529))

(assert (= (and b!6104661 ((_ is Star!16055) (regOne!32622 (regOne!32622 r!7292)))) b!6105530))

(assert (= (and b!6104661 ((_ is Union!16055) (regOne!32622 (regOne!32622 r!7292)))) b!6105531))

(declare-fun b!6105533 () Bool)

(declare-fun e!3723444 () Bool)

(declare-fun tp!1704679 () Bool)

(declare-fun tp!1704680 () Bool)

(assert (=> b!6105533 (= e!3723444 (and tp!1704679 tp!1704680))))

(declare-fun b!6105532 () Bool)

(assert (=> b!6105532 (= e!3723444 tp_is_empty!41363)))

(declare-fun b!6105534 () Bool)

(declare-fun tp!1704683 () Bool)

(assert (=> b!6105534 (= e!3723444 tp!1704683)))

(assert (=> b!6104661 (= tp!1704364 e!3723444)))

(declare-fun b!6105535 () Bool)

(declare-fun tp!1704681 () Bool)

(declare-fun tp!1704682 () Bool)

(assert (=> b!6105535 (= e!3723444 (and tp!1704681 tp!1704682))))

(assert (= (and b!6104661 ((_ is ElementMatch!16055) (regTwo!32622 (regOne!32622 r!7292)))) b!6105532))

(assert (= (and b!6104661 ((_ is Concat!24900) (regTwo!32622 (regOne!32622 r!7292)))) b!6105533))

(assert (= (and b!6104661 ((_ is Star!16055) (regTwo!32622 (regOne!32622 r!7292)))) b!6105534))

(assert (= (and b!6104661 ((_ is Union!16055) (regTwo!32622 (regOne!32622 r!7292)))) b!6105535))

(declare-fun b!6105537 () Bool)

(declare-fun e!3723445 () Bool)

(declare-fun tp!1704684 () Bool)

(declare-fun tp!1704685 () Bool)

(assert (=> b!6105537 (= e!3723445 (and tp!1704684 tp!1704685))))

(declare-fun b!6105536 () Bool)

(assert (=> b!6105536 (= e!3723445 tp_is_empty!41363)))

(declare-fun b!6105538 () Bool)

(declare-fun tp!1704688 () Bool)

(assert (=> b!6105538 (= e!3723445 tp!1704688)))

(assert (=> b!6104683 (= tp!1704389 e!3723445)))

(declare-fun b!6105539 () Bool)

(declare-fun tp!1704686 () Bool)

(declare-fun tp!1704687 () Bool)

(assert (=> b!6105539 (= e!3723445 (and tp!1704686 tp!1704687))))

(assert (= (and b!6104683 ((_ is ElementMatch!16055) (reg!16384 (regOne!32623 r!7292)))) b!6105536))

(assert (= (and b!6104683 ((_ is Concat!24900) (reg!16384 (regOne!32623 r!7292)))) b!6105537))

(assert (= (and b!6104683 ((_ is Star!16055) (reg!16384 (regOne!32623 r!7292)))) b!6105538))

(assert (= (and b!6104683 ((_ is Union!16055) (reg!16384 (regOne!32623 r!7292)))) b!6105539))

(declare-fun b!6105541 () Bool)

(declare-fun e!3723446 () Bool)

(declare-fun tp!1704689 () Bool)

(declare-fun tp!1704690 () Bool)

(assert (=> b!6105541 (= e!3723446 (and tp!1704689 tp!1704690))))

(declare-fun b!6105540 () Bool)

(assert (=> b!6105540 (= e!3723446 tp_is_empty!41363)))

(declare-fun b!6105542 () Bool)

(declare-fun tp!1704693 () Bool)

(assert (=> b!6105542 (= e!3723446 tp!1704693)))

(assert (=> b!6104662 (= tp!1704367 e!3723446)))

(declare-fun b!6105543 () Bool)

(declare-fun tp!1704691 () Bool)

(declare-fun tp!1704692 () Bool)

(assert (=> b!6105543 (= e!3723446 (and tp!1704691 tp!1704692))))

(assert (= (and b!6104662 ((_ is ElementMatch!16055) (reg!16384 (regOne!32622 r!7292)))) b!6105540))

(assert (= (and b!6104662 ((_ is Concat!24900) (reg!16384 (regOne!32622 r!7292)))) b!6105541))

(assert (= (and b!6104662 ((_ is Star!16055) (reg!16384 (regOne!32622 r!7292)))) b!6105542))

(assert (= (and b!6104662 ((_ is Union!16055) (reg!16384 (regOne!32622 r!7292)))) b!6105543))

(declare-fun b!6105545 () Bool)

(declare-fun e!3723447 () Bool)

(declare-fun tp!1704694 () Bool)

(declare-fun tp!1704695 () Bool)

(assert (=> b!6105545 (= e!3723447 (and tp!1704694 tp!1704695))))

(declare-fun b!6105544 () Bool)

(assert (=> b!6105544 (= e!3723447 tp_is_empty!41363)))

(declare-fun b!6105546 () Bool)

(declare-fun tp!1704698 () Bool)

(assert (=> b!6105546 (= e!3723447 tp!1704698)))

(assert (=> b!6104692 (= tp!1704397 e!3723447)))

(declare-fun b!6105547 () Bool)

(declare-fun tp!1704696 () Bool)

(declare-fun tp!1704697 () Bool)

(assert (=> b!6105547 (= e!3723447 (and tp!1704696 tp!1704697))))

(assert (= (and b!6104692 ((_ is ElementMatch!16055) (regOne!32623 (reg!16384 r!7292)))) b!6105544))

(assert (= (and b!6104692 ((_ is Concat!24900) (regOne!32623 (reg!16384 r!7292)))) b!6105545))

(assert (= (and b!6104692 ((_ is Star!16055) (regOne!32623 (reg!16384 r!7292)))) b!6105546))

(assert (= (and b!6104692 ((_ is Union!16055) (regOne!32623 (reg!16384 r!7292)))) b!6105547))

(declare-fun b!6105549 () Bool)

(declare-fun e!3723448 () Bool)

(declare-fun tp!1704699 () Bool)

(declare-fun tp!1704700 () Bool)

(assert (=> b!6105549 (= e!3723448 (and tp!1704699 tp!1704700))))

(declare-fun b!6105548 () Bool)

(assert (=> b!6105548 (= e!3723448 tp_is_empty!41363)))

(declare-fun b!6105550 () Bool)

(declare-fun tp!1704703 () Bool)

(assert (=> b!6105550 (= e!3723448 tp!1704703)))

(assert (=> b!6104692 (= tp!1704398 e!3723448)))

(declare-fun b!6105551 () Bool)

(declare-fun tp!1704701 () Bool)

(declare-fun tp!1704702 () Bool)

(assert (=> b!6105551 (= e!3723448 (and tp!1704701 tp!1704702))))

(assert (= (and b!6104692 ((_ is ElementMatch!16055) (regTwo!32623 (reg!16384 r!7292)))) b!6105548))

(assert (= (and b!6104692 ((_ is Concat!24900) (regTwo!32623 (reg!16384 r!7292)))) b!6105549))

(assert (= (and b!6104692 ((_ is Star!16055) (regTwo!32623 (reg!16384 r!7292)))) b!6105550))

(assert (= (and b!6104692 ((_ is Union!16055) (regTwo!32623 (reg!16384 r!7292)))) b!6105551))

(declare-fun b!6105553 () Bool)

(declare-fun e!3723449 () Bool)

(declare-fun tp!1704704 () Bool)

(declare-fun tp!1704705 () Bool)

(assert (=> b!6105553 (= e!3723449 (and tp!1704704 tp!1704705))))

(declare-fun b!6105552 () Bool)

(assert (=> b!6105552 (= e!3723449 tp_is_empty!41363)))

(declare-fun b!6105554 () Bool)

(declare-fun tp!1704708 () Bool)

(assert (=> b!6105554 (= e!3723449 tp!1704708)))

(assert (=> b!6104690 (= tp!1704395 e!3723449)))

(declare-fun b!6105555 () Bool)

(declare-fun tp!1704706 () Bool)

(declare-fun tp!1704707 () Bool)

(assert (=> b!6105555 (= e!3723449 (and tp!1704706 tp!1704707))))

(assert (= (and b!6104690 ((_ is ElementMatch!16055) (regOne!32622 (reg!16384 r!7292)))) b!6105552))

(assert (= (and b!6104690 ((_ is Concat!24900) (regOne!32622 (reg!16384 r!7292)))) b!6105553))

(assert (= (and b!6104690 ((_ is Star!16055) (regOne!32622 (reg!16384 r!7292)))) b!6105554))

(assert (= (and b!6104690 ((_ is Union!16055) (regOne!32622 (reg!16384 r!7292)))) b!6105555))

(declare-fun b!6105557 () Bool)

(declare-fun e!3723450 () Bool)

(declare-fun tp!1704709 () Bool)

(declare-fun tp!1704710 () Bool)

(assert (=> b!6105557 (= e!3723450 (and tp!1704709 tp!1704710))))

(declare-fun b!6105556 () Bool)

(assert (=> b!6105556 (= e!3723450 tp_is_empty!41363)))

(declare-fun b!6105558 () Bool)

(declare-fun tp!1704713 () Bool)

(assert (=> b!6105558 (= e!3723450 tp!1704713)))

(assert (=> b!6104690 (= tp!1704396 e!3723450)))

(declare-fun b!6105559 () Bool)

(declare-fun tp!1704711 () Bool)

(declare-fun tp!1704712 () Bool)

(assert (=> b!6105559 (= e!3723450 (and tp!1704711 tp!1704712))))

(assert (= (and b!6104690 ((_ is ElementMatch!16055) (regTwo!32622 (reg!16384 r!7292)))) b!6105556))

(assert (= (and b!6104690 ((_ is Concat!24900) (regTwo!32622 (reg!16384 r!7292)))) b!6105557))

(assert (= (and b!6104690 ((_ is Star!16055) (regTwo!32622 (reg!16384 r!7292)))) b!6105558))

(assert (= (and b!6104690 ((_ is Union!16055) (regTwo!32622 (reg!16384 r!7292)))) b!6105559))

(declare-fun b!6105561 () Bool)

(declare-fun e!3723451 () Bool)

(declare-fun tp!1704714 () Bool)

(declare-fun tp!1704715 () Bool)

(assert (=> b!6105561 (= e!3723451 (and tp!1704714 tp!1704715))))

(declare-fun b!6105560 () Bool)

(assert (=> b!6105560 (= e!3723451 tp_is_empty!41363)))

(declare-fun b!6105562 () Bool)

(declare-fun tp!1704718 () Bool)

(assert (=> b!6105562 (= e!3723451 tp!1704718)))

(assert (=> b!6104691 (= tp!1704399 e!3723451)))

(declare-fun b!6105563 () Bool)

(declare-fun tp!1704716 () Bool)

(declare-fun tp!1704717 () Bool)

(assert (=> b!6105563 (= e!3723451 (and tp!1704716 tp!1704717))))

(assert (= (and b!6104691 ((_ is ElementMatch!16055) (reg!16384 (reg!16384 r!7292)))) b!6105560))

(assert (= (and b!6104691 ((_ is Concat!24900) (reg!16384 (reg!16384 r!7292)))) b!6105561))

(assert (= (and b!6104691 ((_ is Star!16055) (reg!16384 (reg!16384 r!7292)))) b!6105562))

(assert (= (and b!6104691 ((_ is Union!16055) (reg!16384 (reg!16384 r!7292)))) b!6105563))

(declare-fun b_lambda!232597 () Bool)

(assert (= b_lambda!232595 (or d!1913335 b_lambda!232597)))

(declare-fun bs!1515959 () Bool)

(declare-fun d!1913655 () Bool)

(assert (= bs!1515959 (and d!1913655 d!1913335)))

(assert (=> bs!1515959 (= (dynLambda!25336 lambda!332613 (h!70788 (exprs!5939 (h!70789 zl!343)))) (validRegex!7791 (h!70788 (exprs!5939 (h!70789 zl!343)))))))

(declare-fun m!6956754 () Bool)

(assert (=> bs!1515959 m!6956754))

(assert (=> b!6105409 d!1913655))

(declare-fun b_lambda!232599 () Bool)

(assert (= b_lambda!232589 (or d!1913341 b_lambda!232599)))

(declare-fun bs!1515960 () Bool)

(declare-fun d!1913657 () Bool)

(assert (= bs!1515960 (and d!1913657 d!1913341)))

(assert (=> bs!1515960 (= (dynLambda!25336 lambda!332620 (h!70788 (exprs!5939 setElem!41246))) (validRegex!7791 (h!70788 (exprs!5939 setElem!41246))))))

(declare-fun m!6956756 () Bool)

(assert (=> bs!1515960 m!6956756))

(assert (=> b!6105257 d!1913657))

(declare-fun b_lambda!232601 () Bool)

(assert (= b_lambda!232593 (or d!1913333 b_lambda!232601)))

(declare-fun bs!1515961 () Bool)

(declare-fun d!1913659 () Bool)

(assert (= bs!1515961 (and d!1913659 d!1913333)))

(assert (=> bs!1515961 (= (dynLambda!25336 lambda!332610 (h!70788 (exprs!5939 (h!70789 zl!343)))) (validRegex!7791 (h!70788 (exprs!5939 (h!70789 zl!343)))))))

(assert (=> bs!1515961 m!6956754))

(assert (=> b!6105407 d!1913659))

(declare-fun b_lambda!232603 () Bool)

(assert (= b_lambda!232587 (or d!1913351 b_lambda!232603)))

(declare-fun bs!1515962 () Bool)

(declare-fun d!1913661 () Bool)

(assert (= bs!1515962 (and d!1913661 d!1913351)))

(assert (=> bs!1515962 (= (dynLambda!25336 lambda!332621 (h!70788 (exprs!5939 lt!2329513))) (validRegex!7791 (h!70788 (exprs!5939 lt!2329513))))))

(declare-fun m!6956758 () Bool)

(assert (=> bs!1515962 m!6956758))

(assert (=> b!6105255 d!1913661))

(declare-fun b_lambda!232605 () Bool)

(assert (= b_lambda!232591 (or d!1913337 b_lambda!232605)))

(declare-fun bs!1515963 () Bool)

(declare-fun d!1913663 () Bool)

(assert (= bs!1515963 (and d!1913663 d!1913337)))

(assert (=> bs!1515963 (= (dynLambda!25336 lambda!332616 (h!70788 (unfocusZipperList!1476 zl!343))) (validRegex!7791 (h!70788 (unfocusZipperList!1476 zl!343))))))

(declare-fun m!6956760 () Bool)

(assert (=> bs!1515963 m!6956760))

(assert (=> b!6105296 d!1913663))

(declare-fun b_lambda!232607 () Bool)

(assert (= b_lambda!232585 (or d!1913339 b_lambda!232607)))

(declare-fun bs!1515964 () Bool)

(declare-fun d!1913665 () Bool)

(assert (= bs!1515964 (and d!1913665 d!1913339)))

(assert (=> bs!1515964 (= (dynLambda!25336 lambda!332619 (h!70788 lt!2329586)) (validRegex!7791 (h!70788 lt!2329586)))))

(declare-fun m!6956762 () Bool)

(assert (=> bs!1515964 m!6956762))

(assert (=> b!6105200 d!1913665))

(check-sat (not b!6105138) (not b!6105521) (not b!6105537) (not b!6105168) (not b!6105482) (not b!6105549) (not b!6105533) (not b!6105503) (not b!6105345) (not b!6105241) (not b!6105175) (not d!1913533) (not bs!1515962) (not d!1913547) (not bm!504943) (not b!6105237) (not b!6105143) (not b!6105562) (not b!6105496) (not b!6105183) (not b!6105535) (not b!6105335) (not b!6105543) (not b!6105225) (not bm!504916) (not b!6105332) (not b!6105351) (not b!6105312) (not bm!504938) (not d!1913521) (not b!6105419) (not b!6105538) (not b!6105415) (not b!6105458) (not b!6105474) (not b!6105235) (not b!6105348) (not b!6105253) (not bm!504926) (not b!6105147) (not bm!504906) (not b!6105505) (not bs!1515964) (not bs!1515961) (not b!6105494) (not b!6105365) (not b!6105483) (not b!6105330) (not b!6105495) (not b!6105454) (not b!6105473) (not d!1913603) (not b!6105438) (not b!6105433) (not b!6105422) (not d!1913609) (not b!6105278) (not bm!504931) (not b!6105485) (not b!6105563) (not b!6105462) (not b!6105394) (not b!6105315) (not b!6105224) (not d!1913611) (not b!6105459) (not b!6105502) (not b!6105134) (not b!6105420) (not b!6105182) (not bm!504959) (not b!6105323) (not b!6105559) (not b!6105275) (not b!6105515) (not b!6105362) (not b!6105457) (not b!6105545) (not d!1913619) (not b!6105342) (not d!1913593) (not b!6105201) (not b!6105498) (not b!6105343) (not bm!504923) (not b!6105514) (not b!6105425) (not b!6105281) (not bm!504961) (not b!6105363) (not b!6105478) (not b!6105239) (not b!6105534) (not b!6105445) (not b_lambda!232597) (not b!6105558) (not b!6105551) (not b_lambda!232601) (not bm!504918) (not b!6105184) (not b!6105256) (not d!1913519) (not b!6105526) (not b!6105529) (not b!6105530) (not b!6105531) (not b!6105554) (not d!1913549) (not b!6105411) (not bm!504917) (not b!6105501) (not bm!504941) (not b!6105339) (not b!6105561) (not b!6105354) (not b!6105352) (not bm!504907) (not b!6105154) (not b!6105522) (not d!1913529) (not b!6105404) (not b!6105449) (not b!6105517) (not b!6105539) (not b!6105541) (not d!1913567) (not b!6105240) (not b!6105334) (not b!6105145) (not b!6105492) (not bm!504942) (not b!6105451) (not bm!504954) (not b!6105208) (not b!6105513) (not b_lambda!232605) (not d!1913559) (not b!6105493) (not bs!1515960) (not b!6105434) (not b!6105479) (not bs!1515963) (not b!6105497) (not b!6105367) (not b!6105453) (not b!6105506) (not b!6105511) (not b!6105469) (not b!6105450) (not b!6105475) (not b!6105336) (not bs!1515959) (not d!1913543) (not bm!504925) (not b_lambda!232599) (not b!6105477) (not d!1913639) (not d!1913631) (not bm!504920) (not b!6105297) (not b!6105228) tp_is_empty!41363 (not b!6105481) (not b!6105236) (not b!6105424) (not b!6105344) (not b!6105550) (not d!1913579) (not bm!504914) (not b!6105523) (not b!6105258) (not b!6105471) (not bm!504955) (not b!6105527) (not b!6105429) (not b!6105509) (not b!6105190) (not b!6105268) (not b!6105542) (not b!6105465) (not b!6105510) (not b!6105500) (not b!6105174) (not b!6105410) (not d!1913625) (not b!6105547) (not bm!504956) (not b!6105358) (not bm!504940) (not b!6105293) (not d!1913555) (not b!6105328) (not b!6105233) (not b!6105333) (not bm!504935) (not d!1913633) (not b!6105408) (not b!6105491) (not bm!504937) (not d!1913649) (not b!6105319) (not b!6105187) (not b!6105229) (not b!6105466) (not bm!504934) (not bm!504909) (not setNonEmpty!41254) (not b!6105507) (not bm!504912) (not b!6105329) (not b!6105455) (not b!6105518) (not b!6105142) (not b!6105467) (not b!6105461) (not bm!504958) (not b!6105553) (not b!6105488) (not d!1913553) (not b!6105489) (not b!6105519) (not b!6105546) (not d!1913557) (not b!6105525) (not bm!504960) (not b!6105340) (not b!6105232) (not d!1913627) (not b!6105557) (not d!1913637) (not d!1913515) (not b!6105470) (not b!6105324) (not b!6105166) (not b!6105486) (not b!6105326) (not d!1913613) (not b_lambda!232603) (not b!6105487) (not bm!504933) (not b!6105555) (not bm!504929) (not b!6105436) (not b!6105463) (not bm!504963) (not bm!504932) (not d!1913623) (not d!1913647) (not b_lambda!232607) (not bm!504915))
(check-sat)
