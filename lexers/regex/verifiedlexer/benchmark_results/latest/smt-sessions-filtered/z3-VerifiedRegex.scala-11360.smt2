; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601692 () Bool)

(assert start!601692)

(declare-fun b!5914749 () Bool)

(assert (=> b!5914749 true))

(assert (=> b!5914749 true))

(declare-fun lambda!322696 () Int)

(declare-fun lambda!322695 () Int)

(assert (=> b!5914749 (not (= lambda!322696 lambda!322695))))

(assert (=> b!5914749 true))

(assert (=> b!5914749 true))

(declare-fun b!5914738 () Bool)

(declare-fun res!2480061 () Bool)

(declare-fun e!3621613 () Bool)

(assert (=> b!5914738 (=> (not res!2480061) (not e!3621613))))

(declare-datatypes ((C!32204 0))(
  ( (C!32205 (val!25804 Int)) )
))
(declare-datatypes ((Regex!15967 0))(
  ( (ElementMatch!15967 (c!1051133 C!32204)) (Concat!24812 (regOne!32446 Regex!15967) (regTwo!32446 Regex!15967)) (EmptyExpr!15967) (Star!15967 (reg!16296 Regex!15967)) (EmptyLang!15967) (Union!15967 (regOne!32447 Regex!15967) (regTwo!32447 Regex!15967)) )
))
(declare-fun r!7292 () Regex!15967)

(declare-datatypes ((List!64200 0))(
  ( (Nil!64076) (Cons!64076 (h!70524 Regex!15967) (t!377589 List!64200)) )
))
(declare-datatypes ((Context!10702 0))(
  ( (Context!10703 (exprs!5851 List!64200)) )
))
(declare-datatypes ((List!64201 0))(
  ( (Nil!64077) (Cons!64077 (h!70525 Context!10702) (t!377590 List!64201)) )
))
(declare-fun zl!343 () List!64201)

(declare-fun unfocusZipper!1709 (List!64201) Regex!15967)

(assert (=> b!5914738 (= res!2480061 (= r!7292 (unfocusZipper!1709 zl!343)))))

(declare-fun b!5914739 () Bool)

(declare-fun res!2480063 () Bool)

(declare-fun e!3621617 () Bool)

(assert (=> b!5914739 (=> res!2480063 e!3621617)))

(declare-fun generalisedConcat!1564 (List!64200) Regex!15967)

(assert (=> b!5914739 (= res!2480063 (not (= r!7292 (generalisedConcat!1564 (exprs!5851 (h!70525 zl!343))))))))

(declare-fun setElem!40146 () Context!10702)

(declare-fun tp!1643373 () Bool)

(declare-fun setNonEmpty!40146 () Bool)

(declare-fun e!3621612 () Bool)

(declare-fun setRes!40146 () Bool)

(declare-fun inv!83164 (Context!10702) Bool)

(assert (=> setNonEmpty!40146 (= setRes!40146 (and tp!1643373 (inv!83164 setElem!40146) e!3621612))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10702))

(declare-fun setRest!40146 () (InoxSet Context!10702))

(assert (=> setNonEmpty!40146 (= z!1189 ((_ map or) (store ((as const (Array Context!10702 Bool)) false) setElem!40146 true) setRest!40146))))

(declare-fun b!5914740 () Bool)

(declare-fun e!3621618 () Bool)

(declare-fun tp!1643381 () Bool)

(assert (=> b!5914740 (= e!3621618 tp!1643381)))

(declare-fun b!5914741 () Bool)

(declare-fun res!2480057 () Bool)

(assert (=> b!5914741 (=> res!2480057 e!3621617)))

(declare-fun generalisedUnion!1811 (List!64200) Regex!15967)

(declare-fun unfocusZipperList!1388 (List!64201) List!64200)

(assert (=> b!5914741 (= res!2480057 (not (= r!7292 (generalisedUnion!1811 (unfocusZipperList!1388 zl!343)))))))

(declare-fun b!5914742 () Bool)

(declare-fun res!2480060 () Bool)

(assert (=> b!5914742 (=> (not res!2480060) (not e!3621613))))

(declare-fun toList!9751 ((InoxSet Context!10702)) List!64201)

(assert (=> b!5914742 (= res!2480060 (= (toList!9751 z!1189) zl!343))))

(declare-fun b!5914743 () Bool)

(declare-fun e!3621614 () Bool)

(declare-fun tp!1643376 () Bool)

(assert (=> b!5914743 (= e!3621614 tp!1643376)))

(declare-fun b!5914744 () Bool)

(assert (=> b!5914744 (= e!3621613 (not e!3621617))))

(declare-fun res!2480064 () Bool)

(assert (=> b!5914744 (=> res!2480064 e!3621617)))

(get-info :version)

(assert (=> b!5914744 (= res!2480064 (not ((_ is Cons!64077) zl!343)))))

(declare-fun lt!2309550 () Bool)

(declare-datatypes ((List!64202 0))(
  ( (Nil!64078) (Cons!64078 (h!70526 C!32204) (t!377591 List!64202)) )
))
(declare-fun s!2326 () List!64202)

(declare-fun matchRSpec!3068 (Regex!15967 List!64202) Bool)

(assert (=> b!5914744 (= lt!2309550 (matchRSpec!3068 r!7292 s!2326))))

(declare-fun matchR!8150 (Regex!15967 List!64202) Bool)

(assert (=> b!5914744 (= lt!2309550 (matchR!8150 r!7292 s!2326))))

(declare-datatypes ((Unit!157205 0))(
  ( (Unit!157206) )
))
(declare-fun lt!2309552 () Unit!157205)

(declare-fun mainMatchTheorem!3068 (Regex!15967 List!64202) Unit!157205)

(assert (=> b!5914744 (= lt!2309552 (mainMatchTheorem!3068 r!7292 s!2326))))

(declare-fun res!2480056 () Bool)

(assert (=> start!601692 (=> (not res!2480056) (not e!3621613))))

(declare-fun validRegex!7703 (Regex!15967) Bool)

(assert (=> start!601692 (= res!2480056 (validRegex!7703 r!7292))))

(assert (=> start!601692 e!3621613))

(assert (=> start!601692 e!3621614))

(declare-fun condSetEmpty!40146 () Bool)

(assert (=> start!601692 (= condSetEmpty!40146 (= z!1189 ((as const (Array Context!10702 Bool)) false)))))

(assert (=> start!601692 setRes!40146))

(declare-fun e!3621616 () Bool)

(assert (=> start!601692 e!3621616))

(declare-fun e!3621615 () Bool)

(assert (=> start!601692 e!3621615))

(declare-fun setIsEmpty!40146 () Bool)

(assert (=> setIsEmpty!40146 setRes!40146))

(declare-fun b!5914745 () Bool)

(declare-fun tp_is_empty!41187 () Bool)

(assert (=> b!5914745 (= e!3621614 tp_is_empty!41187)))

(declare-fun b!5914746 () Bool)

(declare-fun res!2480059 () Bool)

(assert (=> b!5914746 (=> res!2480059 e!3621617)))

(declare-fun isEmpty!35929 (List!64201) Bool)

(assert (=> b!5914746 (= res!2480059 (not (isEmpty!35929 (t!377590 zl!343))))))

(declare-fun b!5914747 () Bool)

(declare-fun res!2480066 () Bool)

(declare-fun e!3621619 () Bool)

(assert (=> b!5914747 (=> res!2480066 e!3621619)))

(declare-fun isEmpty!35930 (List!64200) Bool)

(assert (=> b!5914747 (= res!2480066 (not (isEmpty!35930 (t!377589 (exprs!5851 (h!70525 zl!343))))))))

(declare-fun tp!1643378 () Bool)

(declare-fun b!5914748 () Bool)

(assert (=> b!5914748 (= e!3621616 (and (inv!83164 (h!70525 zl!343)) e!3621618 tp!1643378))))

(assert (=> b!5914749 (= e!3621617 e!3621619)))

(declare-fun res!2480058 () Bool)

(assert (=> b!5914749 (=> res!2480058 e!3621619)))

(declare-fun lt!2309548 () Bool)

(assert (=> b!5914749 (= res!2480058 (or (not (= lt!2309550 lt!2309548)) ((_ is Nil!64078) s!2326)))))

(declare-fun Exists!3037 (Int) Bool)

(assert (=> b!5914749 (= (Exists!3037 lambda!322695) (Exists!3037 lambda!322696))))

(declare-fun lt!2309549 () Unit!157205)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1574 (Regex!15967 Regex!15967 List!64202) Unit!157205)

(assert (=> b!5914749 (= lt!2309549 (lemmaExistCutMatchRandMatchRSpecEquivalent!1574 (regOne!32446 r!7292) (regTwo!32446 r!7292) s!2326))))

(assert (=> b!5914749 (= lt!2309548 (Exists!3037 lambda!322695))))

(declare-datatypes ((tuple2!65892 0))(
  ( (tuple2!65893 (_1!36249 List!64202) (_2!36249 List!64202)) )
))
(declare-datatypes ((Option!15858 0))(
  ( (None!15857) (Some!15857 (v!51951 tuple2!65892)) )
))
(declare-fun isDefined!12561 (Option!15858) Bool)

(declare-fun findConcatSeparation!2272 (Regex!15967 Regex!15967 List!64202 List!64202 List!64202) Option!15858)

(assert (=> b!5914749 (= lt!2309548 (isDefined!12561 (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) Nil!64078 s!2326 s!2326)))))

(declare-fun lt!2309547 () Unit!157205)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2036 (Regex!15967 Regex!15967 List!64202) Unit!157205)

(assert (=> b!5914749 (= lt!2309547 (lemmaFindConcatSeparationEquivalentToExists!2036 (regOne!32446 r!7292) (regTwo!32446 r!7292) s!2326))))

(declare-fun b!5914750 () Bool)

(assert (=> b!5914750 (= e!3621619 (inv!83164 (Context!10703 Nil!64076)))))

(declare-fun lt!2309551 () (InoxSet Context!10702))

(declare-fun derivationStepZipperUp!1143 (Context!10702 C!32204) (InoxSet Context!10702))

(assert (=> b!5914750 (= lt!2309551 (derivationStepZipperUp!1143 (Context!10703 (Cons!64076 r!7292 Nil!64076)) (h!70526 s!2326)))))

(declare-fun b!5914751 () Bool)

(declare-fun tp!1643380 () Bool)

(declare-fun tp!1643379 () Bool)

(assert (=> b!5914751 (= e!3621614 (and tp!1643380 tp!1643379))))

(declare-fun b!5914752 () Bool)

(declare-fun tp!1643374 () Bool)

(declare-fun tp!1643375 () Bool)

(assert (=> b!5914752 (= e!3621614 (and tp!1643374 tp!1643375))))

(declare-fun b!5914753 () Bool)

(declare-fun res!2480062 () Bool)

(assert (=> b!5914753 (=> res!2480062 e!3621617)))

(assert (=> b!5914753 (= res!2480062 (not ((_ is Cons!64076) (exprs!5851 (h!70525 zl!343)))))))

(declare-fun b!5914754 () Bool)

(declare-fun tp!1643382 () Bool)

(assert (=> b!5914754 (= e!3621612 tp!1643382)))

(declare-fun b!5914755 () Bool)

(declare-fun tp!1643377 () Bool)

(assert (=> b!5914755 (= e!3621615 (and tp_is_empty!41187 tp!1643377))))

(declare-fun b!5914756 () Bool)

(declare-fun res!2480065 () Bool)

(assert (=> b!5914756 (=> res!2480065 e!3621617)))

(assert (=> b!5914756 (= res!2480065 (or ((_ is EmptyExpr!15967) r!7292) ((_ is EmptyLang!15967) r!7292) ((_ is ElementMatch!15967) r!7292) ((_ is Union!15967) r!7292) (not ((_ is Concat!24812) r!7292))))))

(assert (= (and start!601692 res!2480056) b!5914742))

(assert (= (and b!5914742 res!2480060) b!5914738))

(assert (= (and b!5914738 res!2480061) b!5914744))

(assert (= (and b!5914744 (not res!2480064)) b!5914746))

(assert (= (and b!5914746 (not res!2480059)) b!5914739))

(assert (= (and b!5914739 (not res!2480063)) b!5914753))

(assert (= (and b!5914753 (not res!2480062)) b!5914741))

(assert (= (and b!5914741 (not res!2480057)) b!5914756))

(assert (= (and b!5914756 (not res!2480065)) b!5914749))

(assert (= (and b!5914749 (not res!2480058)) b!5914747))

(assert (= (and b!5914747 (not res!2480066)) b!5914750))

(assert (= (and start!601692 ((_ is ElementMatch!15967) r!7292)) b!5914745))

(assert (= (and start!601692 ((_ is Concat!24812) r!7292)) b!5914751))

(assert (= (and start!601692 ((_ is Star!15967) r!7292)) b!5914743))

(assert (= (and start!601692 ((_ is Union!15967) r!7292)) b!5914752))

(assert (= (and start!601692 condSetEmpty!40146) setIsEmpty!40146))

(assert (= (and start!601692 (not condSetEmpty!40146)) setNonEmpty!40146))

(assert (= setNonEmpty!40146 b!5914754))

(assert (= b!5914748 b!5914740))

(assert (= (and start!601692 ((_ is Cons!64077) zl!343)) b!5914748))

(assert (= (and start!601692 ((_ is Cons!64078) s!2326)) b!5914755))

(declare-fun m!6813110 () Bool)

(assert (=> b!5914749 m!6813110))

(declare-fun m!6813112 () Bool)

(assert (=> b!5914749 m!6813112))

(declare-fun m!6813114 () Bool)

(assert (=> b!5914749 m!6813114))

(declare-fun m!6813116 () Bool)

(assert (=> b!5914749 m!6813116))

(declare-fun m!6813118 () Bool)

(assert (=> b!5914749 m!6813118))

(assert (=> b!5914749 m!6813114))

(assert (=> b!5914749 m!6813110))

(declare-fun m!6813120 () Bool)

(assert (=> b!5914749 m!6813120))

(declare-fun m!6813122 () Bool)

(assert (=> b!5914741 m!6813122))

(assert (=> b!5914741 m!6813122))

(declare-fun m!6813124 () Bool)

(assert (=> b!5914741 m!6813124))

(declare-fun m!6813126 () Bool)

(assert (=> b!5914739 m!6813126))

(declare-fun m!6813128 () Bool)

(assert (=> b!5914744 m!6813128))

(declare-fun m!6813130 () Bool)

(assert (=> b!5914744 m!6813130))

(declare-fun m!6813132 () Bool)

(assert (=> b!5914744 m!6813132))

(declare-fun m!6813134 () Bool)

(assert (=> b!5914738 m!6813134))

(declare-fun m!6813136 () Bool)

(assert (=> b!5914746 m!6813136))

(declare-fun m!6813138 () Bool)

(assert (=> b!5914748 m!6813138))

(declare-fun m!6813140 () Bool)

(assert (=> start!601692 m!6813140))

(declare-fun m!6813142 () Bool)

(assert (=> b!5914747 m!6813142))

(declare-fun m!6813144 () Bool)

(assert (=> b!5914742 m!6813144))

(declare-fun m!6813146 () Bool)

(assert (=> setNonEmpty!40146 m!6813146))

(declare-fun m!6813148 () Bool)

(assert (=> b!5914750 m!6813148))

(declare-fun m!6813150 () Bool)

(assert (=> b!5914750 m!6813150))

(check-sat (not b!5914754) (not b!5914743) (not b!5914751) (not setNonEmpty!40146) (not b!5914746) (not b!5914738) (not b!5914752) (not b!5914740) (not b!5914739) (not b!5914747) (not b!5914749) (not b!5914741) (not start!601692) tp_is_empty!41187 (not b!5914744) (not b!5914742) (not b!5914748) (not b!5914755) (not b!5914750))
(check-sat)
(get-model)

(declare-fun d!1855215 () Bool)

(declare-fun e!3621661 () Bool)

(assert (=> d!1855215 e!3621661))

(declare-fun res!2480081 () Bool)

(assert (=> d!1855215 (=> (not res!2480081) (not e!3621661))))

(declare-fun lt!2309567 () List!64201)

(declare-fun noDuplicate!1825 (List!64201) Bool)

(assert (=> d!1855215 (= res!2480081 (noDuplicate!1825 lt!2309567))))

(declare-fun choose!44625 ((InoxSet Context!10702)) List!64201)

(assert (=> d!1855215 (= lt!2309567 (choose!44625 z!1189))))

(assert (=> d!1855215 (= (toList!9751 z!1189) lt!2309567)))

(declare-fun b!5914829 () Bool)

(declare-fun content!11792 (List!64201) (InoxSet Context!10702))

(assert (=> b!5914829 (= e!3621661 (= (content!11792 lt!2309567) z!1189))))

(assert (= (and d!1855215 res!2480081) b!5914829))

(declare-fun m!6813200 () Bool)

(assert (=> d!1855215 m!6813200))

(declare-fun m!6813202 () Bool)

(assert (=> d!1855215 m!6813202))

(declare-fun m!6813204 () Bool)

(assert (=> b!5914829 m!6813204))

(assert (=> b!5914742 d!1855215))

(declare-fun bs!1400365 () Bool)

(declare-fun b!5914987 () Bool)

(assert (= bs!1400365 (and b!5914987 b!5914749)))

(declare-fun lambda!322721 () Int)

(assert (=> bs!1400365 (not (= lambda!322721 lambda!322695))))

(assert (=> bs!1400365 (not (= lambda!322721 lambda!322696))))

(assert (=> b!5914987 true))

(assert (=> b!5914987 true))

(declare-fun bs!1400366 () Bool)

(declare-fun b!5914980 () Bool)

(assert (= bs!1400366 (and b!5914980 b!5914749)))

(declare-fun lambda!322722 () Int)

(assert (=> bs!1400366 (not (= lambda!322722 lambda!322695))))

(assert (=> bs!1400366 (= lambda!322722 lambda!322696)))

(declare-fun bs!1400367 () Bool)

(assert (= bs!1400367 (and b!5914980 b!5914987)))

(assert (=> bs!1400367 (not (= lambda!322722 lambda!322721))))

(assert (=> b!5914980 true))

(assert (=> b!5914980 true))

(declare-fun e!3621750 () Bool)

(declare-fun call!468747 () Bool)

(assert (=> b!5914980 (= e!3621750 call!468747)))

(declare-fun b!5914981 () Bool)

(declare-fun res!2480155 () Bool)

(declare-fun e!3621755 () Bool)

(assert (=> b!5914981 (=> res!2480155 e!3621755)))

(declare-fun call!468748 () Bool)

(assert (=> b!5914981 (= res!2480155 call!468748)))

(assert (=> b!5914981 (= e!3621750 e!3621755)))

(declare-fun b!5914982 () Bool)

(declare-fun e!3621749 () Bool)

(assert (=> b!5914982 (= e!3621749 e!3621750)))

(declare-fun c!1051201 () Bool)

(assert (=> b!5914982 (= c!1051201 ((_ is Star!15967) r!7292))))

(declare-fun b!5914983 () Bool)

(declare-fun c!1051200 () Bool)

(assert (=> b!5914983 (= c!1051200 ((_ is Union!15967) r!7292))))

(declare-fun e!3621752 () Bool)

(assert (=> b!5914983 (= e!3621752 e!3621749)))

(declare-fun b!5914984 () Bool)

(declare-fun e!3621754 () Bool)

(declare-fun e!3621753 () Bool)

(assert (=> b!5914984 (= e!3621754 e!3621753)))

(declare-fun res!2480154 () Bool)

(assert (=> b!5914984 (= res!2480154 (not ((_ is EmptyLang!15967) r!7292)))))

(assert (=> b!5914984 (=> (not res!2480154) (not e!3621753))))

(declare-fun b!5914985 () Bool)

(declare-fun e!3621751 () Bool)

(assert (=> b!5914985 (= e!3621749 e!3621751)))

(declare-fun res!2480156 () Bool)

(assert (=> b!5914985 (= res!2480156 (matchRSpec!3068 (regOne!32447 r!7292) s!2326))))

(assert (=> b!5914985 (=> res!2480156 e!3621751)))

(declare-fun b!5914986 () Bool)

(assert (=> b!5914986 (= e!3621754 call!468748)))

(assert (=> b!5914987 (= e!3621755 call!468747)))

(declare-fun b!5914988 () Bool)

(assert (=> b!5914988 (= e!3621751 (matchRSpec!3068 (regTwo!32447 r!7292) s!2326))))

(declare-fun b!5914989 () Bool)

(declare-fun c!1051203 () Bool)

(assert (=> b!5914989 (= c!1051203 ((_ is ElementMatch!15967) r!7292))))

(assert (=> b!5914989 (= e!3621753 e!3621752)))

(declare-fun bm!468743 () Bool)

(declare-fun isEmpty!35933 (List!64202) Bool)

(assert (=> bm!468743 (= call!468748 (isEmpty!35933 s!2326))))

(declare-fun b!5914990 () Bool)

(assert (=> b!5914990 (= e!3621752 (= s!2326 (Cons!64078 (c!1051133 r!7292) Nil!64078)))))

(declare-fun d!1855223 () Bool)

(declare-fun c!1051202 () Bool)

(assert (=> d!1855223 (= c!1051202 ((_ is EmptyExpr!15967) r!7292))))

(assert (=> d!1855223 (= (matchRSpec!3068 r!7292 s!2326) e!3621754)))

(declare-fun bm!468742 () Bool)

(assert (=> bm!468742 (= call!468747 (Exists!3037 (ite c!1051201 lambda!322721 lambda!322722)))))

(assert (= (and d!1855223 c!1051202) b!5914986))

(assert (= (and d!1855223 (not c!1051202)) b!5914984))

(assert (= (and b!5914984 res!2480154) b!5914989))

(assert (= (and b!5914989 c!1051203) b!5914990))

(assert (= (and b!5914989 (not c!1051203)) b!5914983))

(assert (= (and b!5914983 c!1051200) b!5914985))

(assert (= (and b!5914983 (not c!1051200)) b!5914982))

(assert (= (and b!5914985 (not res!2480156)) b!5914988))

(assert (= (and b!5914982 c!1051201) b!5914981))

(assert (= (and b!5914982 (not c!1051201)) b!5914980))

(assert (= (and b!5914981 (not res!2480155)) b!5914987))

(assert (= (or b!5914987 b!5914980) bm!468742))

(assert (= (or b!5914986 b!5914981) bm!468743))

(declare-fun m!6813250 () Bool)

(assert (=> b!5914985 m!6813250))

(declare-fun m!6813252 () Bool)

(assert (=> b!5914988 m!6813252))

(declare-fun m!6813254 () Bool)

(assert (=> bm!468743 m!6813254))

(declare-fun m!6813256 () Bool)

(assert (=> bm!468742 m!6813256))

(assert (=> b!5914744 d!1855223))

(declare-fun bm!468751 () Bool)

(declare-fun call!468756 () Bool)

(assert (=> bm!468751 (= call!468756 (isEmpty!35933 s!2326))))

(declare-fun b!5915062 () Bool)

(declare-fun e!3621799 () Bool)

(declare-fun head!12475 (List!64202) C!32204)

(assert (=> b!5915062 (= e!3621799 (= (head!12475 s!2326) (c!1051133 r!7292)))))

(declare-fun b!5915063 () Bool)

(declare-fun e!3621801 () Bool)

(declare-fun e!3621803 () Bool)

(assert (=> b!5915063 (= e!3621801 e!3621803)))

(declare-fun c!1051218 () Bool)

(assert (=> b!5915063 (= c!1051218 ((_ is EmptyLang!15967) r!7292))))

(declare-fun b!5915064 () Bool)

(declare-fun lt!2309591 () Bool)

(assert (=> b!5915064 (= e!3621803 (not lt!2309591))))

(declare-fun b!5915065 () Bool)

(assert (=> b!5915065 (= e!3621801 (= lt!2309591 call!468756))))

(declare-fun b!5915067 () Bool)

(declare-fun e!3621798 () Bool)

(declare-fun derivativeStep!4698 (Regex!15967 C!32204) Regex!15967)

(declare-fun tail!11560 (List!64202) List!64202)

(assert (=> b!5915067 (= e!3621798 (matchR!8150 (derivativeStep!4698 r!7292 (head!12475 s!2326)) (tail!11560 s!2326)))))

(declare-fun b!5915068 () Bool)

(declare-fun res!2480207 () Bool)

(declare-fun e!3621800 () Bool)

(assert (=> b!5915068 (=> res!2480207 e!3621800)))

(assert (=> b!5915068 (= res!2480207 (not ((_ is ElementMatch!15967) r!7292)))))

(assert (=> b!5915068 (= e!3621803 e!3621800)))

(declare-fun b!5915069 () Bool)

(declare-fun res!2480205 () Bool)

(assert (=> b!5915069 (=> res!2480205 e!3621800)))

(assert (=> b!5915069 (= res!2480205 e!3621799)))

(declare-fun res!2480201 () Bool)

(assert (=> b!5915069 (=> (not res!2480201) (not e!3621799))))

(assert (=> b!5915069 (= res!2480201 lt!2309591)))

(declare-fun b!5915070 () Bool)

(declare-fun e!3621802 () Bool)

(assert (=> b!5915070 (= e!3621802 (not (= (head!12475 s!2326) (c!1051133 r!7292))))))

(declare-fun b!5915071 () Bool)

(declare-fun e!3621797 () Bool)

(assert (=> b!5915071 (= e!3621797 e!3621802)))

(declare-fun res!2480206 () Bool)

(assert (=> b!5915071 (=> res!2480206 e!3621802)))

(assert (=> b!5915071 (= res!2480206 call!468756)))

(declare-fun b!5915072 () Bool)

(declare-fun res!2480204 () Bool)

(assert (=> b!5915072 (=> (not res!2480204) (not e!3621799))))

(assert (=> b!5915072 (= res!2480204 (not call!468756))))

(declare-fun b!5915073 () Bool)

(declare-fun res!2480200 () Bool)

(assert (=> b!5915073 (=> res!2480200 e!3621802)))

(assert (=> b!5915073 (= res!2480200 (not (isEmpty!35933 (tail!11560 s!2326))))))

(declare-fun b!5915074 () Bool)

(declare-fun res!2480203 () Bool)

(assert (=> b!5915074 (=> (not res!2480203) (not e!3621799))))

(assert (=> b!5915074 (= res!2480203 (isEmpty!35933 (tail!11560 s!2326)))))

(declare-fun b!5915075 () Bool)

(declare-fun nullable!5962 (Regex!15967) Bool)

(assert (=> b!5915075 (= e!3621798 (nullable!5962 r!7292))))

(declare-fun d!1855241 () Bool)

(assert (=> d!1855241 e!3621801))

(declare-fun c!1051220 () Bool)

(assert (=> d!1855241 (= c!1051220 ((_ is EmptyExpr!15967) r!7292))))

(assert (=> d!1855241 (= lt!2309591 e!3621798)))

(declare-fun c!1051219 () Bool)

(assert (=> d!1855241 (= c!1051219 (isEmpty!35933 s!2326))))

(assert (=> d!1855241 (validRegex!7703 r!7292)))

(assert (=> d!1855241 (= (matchR!8150 r!7292 s!2326) lt!2309591)))

(declare-fun b!5915066 () Bool)

(assert (=> b!5915066 (= e!3621800 e!3621797)))

(declare-fun res!2480202 () Bool)

(assert (=> b!5915066 (=> (not res!2480202) (not e!3621797))))

(assert (=> b!5915066 (= res!2480202 (not lt!2309591))))

(assert (= (and d!1855241 c!1051219) b!5915075))

(assert (= (and d!1855241 (not c!1051219)) b!5915067))

(assert (= (and d!1855241 c!1051220) b!5915065))

(assert (= (and d!1855241 (not c!1051220)) b!5915063))

(assert (= (and b!5915063 c!1051218) b!5915064))

(assert (= (and b!5915063 (not c!1051218)) b!5915068))

(assert (= (and b!5915068 (not res!2480207)) b!5915069))

(assert (= (and b!5915069 res!2480201) b!5915072))

(assert (= (and b!5915072 res!2480204) b!5915074))

(assert (= (and b!5915074 res!2480203) b!5915062))

(assert (= (and b!5915069 (not res!2480205)) b!5915066))

(assert (= (and b!5915066 res!2480202) b!5915071))

(assert (= (and b!5915071 (not res!2480206)) b!5915073))

(assert (= (and b!5915073 (not res!2480200)) b!5915070))

(assert (= (or b!5915065 b!5915071 b!5915072) bm!468751))

(assert (=> bm!468751 m!6813254))

(declare-fun m!6813288 () Bool)

(assert (=> b!5915075 m!6813288))

(declare-fun m!6813290 () Bool)

(assert (=> b!5915062 m!6813290))

(assert (=> d!1855241 m!6813254))

(assert (=> d!1855241 m!6813140))

(assert (=> b!5915070 m!6813290))

(assert (=> b!5915067 m!6813290))

(assert (=> b!5915067 m!6813290))

(declare-fun m!6813292 () Bool)

(assert (=> b!5915067 m!6813292))

(declare-fun m!6813294 () Bool)

(assert (=> b!5915067 m!6813294))

(assert (=> b!5915067 m!6813292))

(assert (=> b!5915067 m!6813294))

(declare-fun m!6813296 () Bool)

(assert (=> b!5915067 m!6813296))

(assert (=> b!5915073 m!6813294))

(assert (=> b!5915073 m!6813294))

(declare-fun m!6813298 () Bool)

(assert (=> b!5915073 m!6813298))

(assert (=> b!5915074 m!6813294))

(assert (=> b!5915074 m!6813294))

(assert (=> b!5915074 m!6813298))

(assert (=> b!5914744 d!1855241))

(declare-fun d!1855249 () Bool)

(assert (=> d!1855249 (= (matchR!8150 r!7292 s!2326) (matchRSpec!3068 r!7292 s!2326))))

(declare-fun lt!2309597 () Unit!157205)

(declare-fun choose!44626 (Regex!15967 List!64202) Unit!157205)

(assert (=> d!1855249 (= lt!2309597 (choose!44626 r!7292 s!2326))))

(assert (=> d!1855249 (validRegex!7703 r!7292)))

(assert (=> d!1855249 (= (mainMatchTheorem!3068 r!7292 s!2326) lt!2309597)))

(declare-fun bs!1400380 () Bool)

(assert (= bs!1400380 d!1855249))

(assert (=> bs!1400380 m!6813130))

(assert (=> bs!1400380 m!6813128))

(declare-fun m!6813308 () Bool)

(assert (=> bs!1400380 m!6813308))

(assert (=> bs!1400380 m!6813140))

(assert (=> b!5914744 d!1855249))

(declare-fun bm!468758 () Bool)

(declare-fun call!468763 () Bool)

(declare-fun c!1051225 () Bool)

(assert (=> bm!468758 (= call!468763 (validRegex!7703 (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))))))

(declare-fun b!5915156 () Bool)

(declare-fun res!2480230 () Bool)

(declare-fun e!3621846 () Bool)

(assert (=> b!5915156 (=> res!2480230 e!3621846)))

(assert (=> b!5915156 (= res!2480230 (not ((_ is Concat!24812) r!7292)))))

(declare-fun e!3621849 () Bool)

(assert (=> b!5915156 (= e!3621849 e!3621846)))

(declare-fun d!1855253 () Bool)

(declare-fun res!2480228 () Bool)

(declare-fun e!3621850 () Bool)

(assert (=> d!1855253 (=> res!2480228 e!3621850)))

(assert (=> d!1855253 (= res!2480228 ((_ is ElementMatch!15967) r!7292))))

(assert (=> d!1855253 (= (validRegex!7703 r!7292) e!3621850)))

(declare-fun c!1051226 () Bool)

(declare-fun bm!468759 () Bool)

(declare-fun call!468765 () Bool)

(assert (=> bm!468759 (= call!468765 (validRegex!7703 (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))))))

(declare-fun b!5915157 () Bool)

(declare-fun e!3621851 () Bool)

(assert (=> b!5915157 (= e!3621846 e!3621851)))

(declare-fun res!2480226 () Bool)

(assert (=> b!5915157 (=> (not res!2480226) (not e!3621851))))

(assert (=> b!5915157 (= res!2480226 call!468763)))

(declare-fun b!5915158 () Bool)

(declare-fun e!3621845 () Bool)

(assert (=> b!5915158 (= e!3621845 e!3621849)))

(assert (=> b!5915158 (= c!1051225 ((_ is Union!15967) r!7292))))

(declare-fun b!5915159 () Bool)

(declare-fun e!3621848 () Bool)

(assert (=> b!5915159 (= e!3621845 e!3621848)))

(declare-fun res!2480227 () Bool)

(assert (=> b!5915159 (= res!2480227 (not (nullable!5962 (reg!16296 r!7292))))))

(assert (=> b!5915159 (=> (not res!2480227) (not e!3621848))))

(declare-fun b!5915160 () Bool)

(assert (=> b!5915160 (= e!3621848 call!468765)))

(declare-fun b!5915161 () Bool)

(assert (=> b!5915161 (= e!3621850 e!3621845)))

(assert (=> b!5915161 (= c!1051226 ((_ is Star!15967) r!7292))))

(declare-fun b!5915162 () Bool)

(declare-fun call!468764 () Bool)

(assert (=> b!5915162 (= e!3621851 call!468764)))

(declare-fun bm!468760 () Bool)

(assert (=> bm!468760 (= call!468764 call!468765)))

(declare-fun b!5915163 () Bool)

(declare-fun res!2480229 () Bool)

(declare-fun e!3621847 () Bool)

(assert (=> b!5915163 (=> (not res!2480229) (not e!3621847))))

(assert (=> b!5915163 (= res!2480229 call!468763)))

(assert (=> b!5915163 (= e!3621849 e!3621847)))

(declare-fun b!5915164 () Bool)

(assert (=> b!5915164 (= e!3621847 call!468764)))

(assert (= (and d!1855253 (not res!2480228)) b!5915161))

(assert (= (and b!5915161 c!1051226) b!5915159))

(assert (= (and b!5915161 (not c!1051226)) b!5915158))

(assert (= (and b!5915159 res!2480227) b!5915160))

(assert (= (and b!5915158 c!1051225) b!5915163))

(assert (= (and b!5915158 (not c!1051225)) b!5915156))

(assert (= (and b!5915163 res!2480229) b!5915164))

(assert (= (and b!5915156 (not res!2480230)) b!5915157))

(assert (= (and b!5915157 res!2480226) b!5915162))

(assert (= (or b!5915164 b!5915162) bm!468760))

(assert (= (or b!5915163 b!5915157) bm!468758))

(assert (= (or b!5915160 bm!468760) bm!468759))

(declare-fun m!6813314 () Bool)

(assert (=> bm!468758 m!6813314))

(declare-fun m!6813316 () Bool)

(assert (=> bm!468759 m!6813316))

(declare-fun m!6813318 () Bool)

(assert (=> b!5915159 m!6813318))

(assert (=> start!601692 d!1855253))

(declare-fun d!1855255 () Bool)

(declare-fun e!3621866 () Bool)

(assert (=> d!1855255 e!3621866))

(declare-fun res!2480242 () Bool)

(assert (=> d!1855255 (=> res!2480242 e!3621866)))

(declare-fun e!3621864 () Bool)

(assert (=> d!1855255 (= res!2480242 e!3621864)))

(declare-fun res!2480245 () Bool)

(assert (=> d!1855255 (=> (not res!2480245) (not e!3621864))))

(declare-fun lt!2309606 () Option!15858)

(assert (=> d!1855255 (= res!2480245 (isDefined!12561 lt!2309606))))

(declare-fun e!3621862 () Option!15858)

(assert (=> d!1855255 (= lt!2309606 e!3621862)))

(declare-fun c!1051231 () Bool)

(declare-fun e!3621865 () Bool)

(assert (=> d!1855255 (= c!1051231 e!3621865)))

(declare-fun res!2480241 () Bool)

(assert (=> d!1855255 (=> (not res!2480241) (not e!3621865))))

(assert (=> d!1855255 (= res!2480241 (matchR!8150 (regOne!32446 r!7292) Nil!64078))))

(assert (=> d!1855255 (validRegex!7703 (regOne!32446 r!7292))))

(assert (=> d!1855255 (= (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) Nil!64078 s!2326 s!2326) lt!2309606)))

(declare-fun b!5915183 () Bool)

(assert (=> b!5915183 (= e!3621862 (Some!15857 (tuple2!65893 Nil!64078 s!2326)))))

(declare-fun b!5915184 () Bool)

(assert (=> b!5915184 (= e!3621865 (matchR!8150 (regTwo!32446 r!7292) s!2326))))

(declare-fun b!5915185 () Bool)

(declare-fun ++!14064 (List!64202 List!64202) List!64202)

(declare-fun get!22063 (Option!15858) tuple2!65892)

(assert (=> b!5915185 (= e!3621864 (= (++!14064 (_1!36249 (get!22063 lt!2309606)) (_2!36249 (get!22063 lt!2309606))) s!2326))))

(declare-fun b!5915186 () Bool)

(declare-fun res!2480243 () Bool)

(assert (=> b!5915186 (=> (not res!2480243) (not e!3621864))))

(assert (=> b!5915186 (= res!2480243 (matchR!8150 (regOne!32446 r!7292) (_1!36249 (get!22063 lt!2309606))))))

(declare-fun b!5915187 () Bool)

(declare-fun e!3621863 () Option!15858)

(assert (=> b!5915187 (= e!3621862 e!3621863)))

(declare-fun c!1051232 () Bool)

(assert (=> b!5915187 (= c!1051232 ((_ is Nil!64078) s!2326))))

(declare-fun b!5915188 () Bool)

(declare-fun res!2480244 () Bool)

(assert (=> b!5915188 (=> (not res!2480244) (not e!3621864))))

(assert (=> b!5915188 (= res!2480244 (matchR!8150 (regTwo!32446 r!7292) (_2!36249 (get!22063 lt!2309606))))))

(declare-fun b!5915189 () Bool)

(assert (=> b!5915189 (= e!3621863 None!15857)))

(declare-fun b!5915190 () Bool)

(assert (=> b!5915190 (= e!3621866 (not (isDefined!12561 lt!2309606)))))

(declare-fun b!5915191 () Bool)

(declare-fun lt!2309604 () Unit!157205)

(declare-fun lt!2309605 () Unit!157205)

(assert (=> b!5915191 (= lt!2309604 lt!2309605)))

(assert (=> b!5915191 (= (++!14064 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (t!377591 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2159 (List!64202 C!32204 List!64202 List!64202) Unit!157205)

(assert (=> b!5915191 (= lt!2309605 (lemmaMoveElementToOtherListKeepsConcatEq!2159 Nil!64078 (h!70526 s!2326) (t!377591 s!2326) s!2326))))

(assert (=> b!5915191 (= e!3621863 (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (t!377591 s!2326) s!2326))))

(assert (= (and d!1855255 res!2480241) b!5915184))

(assert (= (and d!1855255 c!1051231) b!5915183))

(assert (= (and d!1855255 (not c!1051231)) b!5915187))

(assert (= (and b!5915187 c!1051232) b!5915189))

(assert (= (and b!5915187 (not c!1051232)) b!5915191))

(assert (= (and d!1855255 res!2480245) b!5915186))

(assert (= (and b!5915186 res!2480243) b!5915188))

(assert (= (and b!5915188 res!2480244) b!5915185))

(assert (= (and d!1855255 (not res!2480242)) b!5915190))

(declare-fun m!6813320 () Bool)

(assert (=> d!1855255 m!6813320))

(declare-fun m!6813322 () Bool)

(assert (=> d!1855255 m!6813322))

(declare-fun m!6813324 () Bool)

(assert (=> d!1855255 m!6813324))

(declare-fun m!6813326 () Bool)

(assert (=> b!5915184 m!6813326))

(declare-fun m!6813328 () Bool)

(assert (=> b!5915186 m!6813328))

(declare-fun m!6813330 () Bool)

(assert (=> b!5915186 m!6813330))

(assert (=> b!5915188 m!6813328))

(declare-fun m!6813332 () Bool)

(assert (=> b!5915188 m!6813332))

(assert (=> b!5915185 m!6813328))

(declare-fun m!6813334 () Bool)

(assert (=> b!5915185 m!6813334))

(declare-fun m!6813336 () Bool)

(assert (=> b!5915191 m!6813336))

(assert (=> b!5915191 m!6813336))

(declare-fun m!6813338 () Bool)

(assert (=> b!5915191 m!6813338))

(declare-fun m!6813340 () Bool)

(assert (=> b!5915191 m!6813340))

(assert (=> b!5915191 m!6813336))

(declare-fun m!6813342 () Bool)

(assert (=> b!5915191 m!6813342))

(assert (=> b!5915190 m!6813320))

(assert (=> b!5914749 d!1855255))

(declare-fun d!1855257 () Bool)

(declare-fun choose!44627 (Int) Bool)

(assert (=> d!1855257 (= (Exists!3037 lambda!322695) (choose!44627 lambda!322695))))

(declare-fun bs!1400381 () Bool)

(assert (= bs!1400381 d!1855257))

(declare-fun m!6813344 () Bool)

(assert (=> bs!1400381 m!6813344))

(assert (=> b!5914749 d!1855257))

(declare-fun d!1855259 () Bool)

(assert (=> d!1855259 (= (Exists!3037 lambda!322696) (choose!44627 lambda!322696))))

(declare-fun bs!1400382 () Bool)

(assert (= bs!1400382 d!1855259))

(declare-fun m!6813346 () Bool)

(assert (=> bs!1400382 m!6813346))

(assert (=> b!5914749 d!1855259))

(declare-fun bs!1400383 () Bool)

(declare-fun d!1855261 () Bool)

(assert (= bs!1400383 (and d!1855261 b!5914749)))

(declare-fun lambda!322734 () Int)

(assert (=> bs!1400383 (= lambda!322734 lambda!322695)))

(assert (=> bs!1400383 (not (= lambda!322734 lambda!322696))))

(declare-fun bs!1400384 () Bool)

(assert (= bs!1400384 (and d!1855261 b!5914987)))

(assert (=> bs!1400384 (not (= lambda!322734 lambda!322721))))

(declare-fun bs!1400385 () Bool)

(assert (= bs!1400385 (and d!1855261 b!5914980)))

(assert (=> bs!1400385 (not (= lambda!322734 lambda!322722))))

(assert (=> d!1855261 true))

(assert (=> d!1855261 true))

(assert (=> d!1855261 true))

(assert (=> d!1855261 (= (isDefined!12561 (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) Nil!64078 s!2326 s!2326)) (Exists!3037 lambda!322734))))

(declare-fun lt!2309609 () Unit!157205)

(declare-fun choose!44628 (Regex!15967 Regex!15967 List!64202) Unit!157205)

(assert (=> d!1855261 (= lt!2309609 (choose!44628 (regOne!32446 r!7292) (regTwo!32446 r!7292) s!2326))))

(assert (=> d!1855261 (validRegex!7703 (regOne!32446 r!7292))))

(assert (=> d!1855261 (= (lemmaFindConcatSeparationEquivalentToExists!2036 (regOne!32446 r!7292) (regTwo!32446 r!7292) s!2326) lt!2309609)))

(declare-fun bs!1400386 () Bool)

(assert (= bs!1400386 d!1855261))

(declare-fun m!6813348 () Bool)

(assert (=> bs!1400386 m!6813348))

(assert (=> bs!1400386 m!6813324))

(assert (=> bs!1400386 m!6813110))

(assert (=> bs!1400386 m!6813112))

(assert (=> bs!1400386 m!6813110))

(declare-fun m!6813350 () Bool)

(assert (=> bs!1400386 m!6813350))

(assert (=> b!5914749 d!1855261))

(declare-fun bs!1400387 () Bool)

(declare-fun d!1855263 () Bool)

(assert (= bs!1400387 (and d!1855263 b!5914987)))

(declare-fun lambda!322739 () Int)

(assert (=> bs!1400387 (not (= lambda!322739 lambda!322721))))

(declare-fun bs!1400388 () Bool)

(assert (= bs!1400388 (and d!1855263 d!1855261)))

(assert (=> bs!1400388 (= lambda!322739 lambda!322734)))

(declare-fun bs!1400389 () Bool)

(assert (= bs!1400389 (and d!1855263 b!5914749)))

(assert (=> bs!1400389 (= lambda!322739 lambda!322695)))

(assert (=> bs!1400389 (not (= lambda!322739 lambda!322696))))

(declare-fun bs!1400390 () Bool)

(assert (= bs!1400390 (and d!1855263 b!5914980)))

(assert (=> bs!1400390 (not (= lambda!322739 lambda!322722))))

(assert (=> d!1855263 true))

(assert (=> d!1855263 true))

(assert (=> d!1855263 true))

(declare-fun lambda!322740 () Int)

(assert (=> bs!1400387 (not (= lambda!322740 lambda!322721))))

(declare-fun bs!1400391 () Bool)

(assert (= bs!1400391 d!1855263))

(assert (=> bs!1400391 (not (= lambda!322740 lambda!322739))))

(assert (=> bs!1400388 (not (= lambda!322740 lambda!322734))))

(assert (=> bs!1400389 (not (= lambda!322740 lambda!322695))))

(assert (=> bs!1400389 (= lambda!322740 lambda!322696)))

(assert (=> bs!1400390 (= lambda!322740 lambda!322722)))

(assert (=> d!1855263 true))

(assert (=> d!1855263 true))

(assert (=> d!1855263 true))

(assert (=> d!1855263 (= (Exists!3037 lambda!322739) (Exists!3037 lambda!322740))))

(declare-fun lt!2309612 () Unit!157205)

(declare-fun choose!44629 (Regex!15967 Regex!15967 List!64202) Unit!157205)

(assert (=> d!1855263 (= lt!2309612 (choose!44629 (regOne!32446 r!7292) (regTwo!32446 r!7292) s!2326))))

(assert (=> d!1855263 (validRegex!7703 (regOne!32446 r!7292))))

(assert (=> d!1855263 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1574 (regOne!32446 r!7292) (regTwo!32446 r!7292) s!2326) lt!2309612)))

(declare-fun m!6813352 () Bool)

(assert (=> bs!1400391 m!6813352))

(declare-fun m!6813354 () Bool)

(assert (=> bs!1400391 m!6813354))

(declare-fun m!6813356 () Bool)

(assert (=> bs!1400391 m!6813356))

(assert (=> bs!1400391 m!6813324))

(assert (=> b!5914749 d!1855263))

(declare-fun d!1855265 () Bool)

(declare-fun isEmpty!35934 (Option!15858) Bool)

(assert (=> d!1855265 (= (isDefined!12561 (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) Nil!64078 s!2326 s!2326)) (not (isEmpty!35934 (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) Nil!64078 s!2326 s!2326))))))

(declare-fun bs!1400392 () Bool)

(assert (= bs!1400392 d!1855265))

(assert (=> bs!1400392 m!6813110))

(declare-fun m!6813358 () Bool)

(assert (=> bs!1400392 m!6813358))

(assert (=> b!5914749 d!1855265))

(declare-fun d!1855267 () Bool)

(declare-fun lambda!322743 () Int)

(declare-fun forall!15050 (List!64200 Int) Bool)

(assert (=> d!1855267 (= (inv!83164 setElem!40146) (forall!15050 (exprs!5851 setElem!40146) lambda!322743))))

(declare-fun bs!1400393 () Bool)

(assert (= bs!1400393 d!1855267))

(declare-fun m!6813360 () Bool)

(assert (=> bs!1400393 m!6813360))

(assert (=> setNonEmpty!40146 d!1855267))

(declare-fun bs!1400394 () Bool)

(declare-fun d!1855269 () Bool)

(assert (= bs!1400394 (and d!1855269 d!1855267)))

(declare-fun lambda!322746 () Int)

(assert (=> bs!1400394 (= lambda!322746 lambda!322743)))

(declare-fun b!5915224 () Bool)

(declare-fun e!3621885 () Bool)

(declare-fun lt!2309615 () Regex!15967)

(declare-fun isEmptyLang!1404 (Regex!15967) Bool)

(assert (=> b!5915224 (= e!3621885 (isEmptyLang!1404 lt!2309615))))

(declare-fun b!5915225 () Bool)

(declare-fun e!3621890 () Regex!15967)

(assert (=> b!5915225 (= e!3621890 (h!70524 (unfocusZipperList!1388 zl!343)))))

(declare-fun e!3621886 () Bool)

(assert (=> d!1855269 e!3621886))

(declare-fun res!2480263 () Bool)

(assert (=> d!1855269 (=> (not res!2480263) (not e!3621886))))

(assert (=> d!1855269 (= res!2480263 (validRegex!7703 lt!2309615))))

(assert (=> d!1855269 (= lt!2309615 e!3621890)))

(declare-fun c!1051243 () Bool)

(declare-fun e!3621888 () Bool)

(assert (=> d!1855269 (= c!1051243 e!3621888)))

(declare-fun res!2480262 () Bool)

(assert (=> d!1855269 (=> (not res!2480262) (not e!3621888))))

(assert (=> d!1855269 (= res!2480262 ((_ is Cons!64076) (unfocusZipperList!1388 zl!343)))))

(assert (=> d!1855269 (forall!15050 (unfocusZipperList!1388 zl!343) lambda!322746)))

(assert (=> d!1855269 (= (generalisedUnion!1811 (unfocusZipperList!1388 zl!343)) lt!2309615)))

(declare-fun b!5915226 () Bool)

(assert (=> b!5915226 (= e!3621886 e!3621885)))

(declare-fun c!1051242 () Bool)

(assert (=> b!5915226 (= c!1051242 (isEmpty!35930 (unfocusZipperList!1388 zl!343)))))

(declare-fun b!5915227 () Bool)

(declare-fun e!3621889 () Regex!15967)

(assert (=> b!5915227 (= e!3621889 EmptyLang!15967)))

(declare-fun b!5915228 () Bool)

(assert (=> b!5915228 (= e!3621890 e!3621889)))

(declare-fun c!1051241 () Bool)

(assert (=> b!5915228 (= c!1051241 ((_ is Cons!64076) (unfocusZipperList!1388 zl!343)))))

(declare-fun b!5915229 () Bool)

(declare-fun e!3621887 () Bool)

(declare-fun isUnion!834 (Regex!15967) Bool)

(assert (=> b!5915229 (= e!3621887 (isUnion!834 lt!2309615))))

(declare-fun b!5915230 () Bool)

(declare-fun head!12476 (List!64200) Regex!15967)

(assert (=> b!5915230 (= e!3621887 (= lt!2309615 (head!12476 (unfocusZipperList!1388 zl!343))))))

(declare-fun b!5915231 () Bool)

(assert (=> b!5915231 (= e!3621889 (Union!15967 (h!70524 (unfocusZipperList!1388 zl!343)) (generalisedUnion!1811 (t!377589 (unfocusZipperList!1388 zl!343)))))))

(declare-fun b!5915232 () Bool)

(assert (=> b!5915232 (= e!3621888 (isEmpty!35930 (t!377589 (unfocusZipperList!1388 zl!343))))))

(declare-fun b!5915233 () Bool)

(assert (=> b!5915233 (= e!3621885 e!3621887)))

(declare-fun c!1051244 () Bool)

(declare-fun tail!11561 (List!64200) List!64200)

(assert (=> b!5915233 (= c!1051244 (isEmpty!35930 (tail!11561 (unfocusZipperList!1388 zl!343))))))

(assert (= (and d!1855269 res!2480262) b!5915232))

(assert (= (and d!1855269 c!1051243) b!5915225))

(assert (= (and d!1855269 (not c!1051243)) b!5915228))

(assert (= (and b!5915228 c!1051241) b!5915231))

(assert (= (and b!5915228 (not c!1051241)) b!5915227))

(assert (= (and d!1855269 res!2480263) b!5915226))

(assert (= (and b!5915226 c!1051242) b!5915224))

(assert (= (and b!5915226 (not c!1051242)) b!5915233))

(assert (= (and b!5915233 c!1051244) b!5915230))

(assert (= (and b!5915233 (not c!1051244)) b!5915229))

(declare-fun m!6813362 () Bool)

(assert (=> b!5915232 m!6813362))

(declare-fun m!6813364 () Bool)

(assert (=> d!1855269 m!6813364))

(assert (=> d!1855269 m!6813122))

(declare-fun m!6813366 () Bool)

(assert (=> d!1855269 m!6813366))

(declare-fun m!6813368 () Bool)

(assert (=> b!5915224 m!6813368))

(declare-fun m!6813370 () Bool)

(assert (=> b!5915229 m!6813370))

(declare-fun m!6813372 () Bool)

(assert (=> b!5915231 m!6813372))

(assert (=> b!5915226 m!6813122))

(declare-fun m!6813374 () Bool)

(assert (=> b!5915226 m!6813374))

(assert (=> b!5915230 m!6813122))

(declare-fun m!6813376 () Bool)

(assert (=> b!5915230 m!6813376))

(assert (=> b!5915233 m!6813122))

(declare-fun m!6813378 () Bool)

(assert (=> b!5915233 m!6813378))

(assert (=> b!5915233 m!6813378))

(declare-fun m!6813380 () Bool)

(assert (=> b!5915233 m!6813380))

(assert (=> b!5914741 d!1855269))

(declare-fun bs!1400395 () Bool)

(declare-fun d!1855271 () Bool)

(assert (= bs!1400395 (and d!1855271 d!1855267)))

(declare-fun lambda!322749 () Int)

(assert (=> bs!1400395 (= lambda!322749 lambda!322743)))

(declare-fun bs!1400396 () Bool)

(assert (= bs!1400396 (and d!1855271 d!1855269)))

(assert (=> bs!1400396 (= lambda!322749 lambda!322746)))

(declare-fun lt!2309618 () List!64200)

(assert (=> d!1855271 (forall!15050 lt!2309618 lambda!322749)))

(declare-fun e!3621893 () List!64200)

(assert (=> d!1855271 (= lt!2309618 e!3621893)))

(declare-fun c!1051247 () Bool)

(assert (=> d!1855271 (= c!1051247 ((_ is Cons!64077) zl!343))))

(assert (=> d!1855271 (= (unfocusZipperList!1388 zl!343) lt!2309618)))

(declare-fun b!5915238 () Bool)

(assert (=> b!5915238 (= e!3621893 (Cons!64076 (generalisedConcat!1564 (exprs!5851 (h!70525 zl!343))) (unfocusZipperList!1388 (t!377590 zl!343))))))

(declare-fun b!5915239 () Bool)

(assert (=> b!5915239 (= e!3621893 Nil!64076)))

(assert (= (and d!1855271 c!1051247) b!5915238))

(assert (= (and d!1855271 (not c!1051247)) b!5915239))

(declare-fun m!6813382 () Bool)

(assert (=> d!1855271 m!6813382))

(assert (=> b!5915238 m!6813126))

(declare-fun m!6813384 () Bool)

(assert (=> b!5915238 m!6813384))

(assert (=> b!5914741 d!1855271))

(declare-fun bs!1400397 () Bool)

(declare-fun d!1855273 () Bool)

(assert (= bs!1400397 (and d!1855273 d!1855267)))

(declare-fun lambda!322750 () Int)

(assert (=> bs!1400397 (= lambda!322750 lambda!322743)))

(declare-fun bs!1400398 () Bool)

(assert (= bs!1400398 (and d!1855273 d!1855269)))

(assert (=> bs!1400398 (= lambda!322750 lambda!322746)))

(declare-fun bs!1400399 () Bool)

(assert (= bs!1400399 (and d!1855273 d!1855271)))

(assert (=> bs!1400399 (= lambda!322750 lambda!322749)))

(assert (=> d!1855273 (= (inv!83164 (Context!10703 Nil!64076)) (forall!15050 (exprs!5851 (Context!10703 Nil!64076)) lambda!322750))))

(declare-fun bs!1400400 () Bool)

(assert (= bs!1400400 d!1855273))

(declare-fun m!6813386 () Bool)

(assert (=> bs!1400400 m!6813386))

(assert (=> b!5914750 d!1855273))

(declare-fun b!5915250 () Bool)

(declare-fun e!3621901 () Bool)

(assert (=> b!5915250 (= e!3621901 (nullable!5962 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))))

(declare-fun bm!468763 () Bool)

(declare-fun call!468768 () (InoxSet Context!10702))

(declare-fun derivationStepZipperDown!1217 (Regex!15967 Context!10702 C!32204) (InoxSet Context!10702))

(assert (=> bm!468763 (= call!468768 (derivationStepZipperDown!1217 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))) (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (h!70526 s!2326)))))

(declare-fun b!5915251 () Bool)

(declare-fun e!3621902 () (InoxSet Context!10702))

(assert (=> b!5915251 (= e!3621902 ((as const (Array Context!10702 Bool)) false))))

(declare-fun b!5915252 () Bool)

(assert (=> b!5915252 (= e!3621902 call!468768)))

(declare-fun d!1855275 () Bool)

(declare-fun c!1051252 () Bool)

(assert (=> d!1855275 (= c!1051252 e!3621901)))

(declare-fun res!2480266 () Bool)

(assert (=> d!1855275 (=> (not res!2480266) (not e!3621901))))

(assert (=> d!1855275 (= res!2480266 ((_ is Cons!64076) (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))))

(declare-fun e!3621900 () (InoxSet Context!10702))

(assert (=> d!1855275 (= (derivationStepZipperUp!1143 (Context!10703 (Cons!64076 r!7292 Nil!64076)) (h!70526 s!2326)) e!3621900)))

(declare-fun b!5915253 () Bool)

(assert (=> b!5915253 (= e!3621900 ((_ map or) call!468768 (derivationStepZipperUp!1143 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (h!70526 s!2326))))))

(declare-fun b!5915254 () Bool)

(assert (=> b!5915254 (= e!3621900 e!3621902)))

(declare-fun c!1051253 () Bool)

(assert (=> b!5915254 (= c!1051253 ((_ is Cons!64076) (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))))

(assert (= (and d!1855275 res!2480266) b!5915250))

(assert (= (and d!1855275 c!1051252) b!5915253))

(assert (= (and d!1855275 (not c!1051252)) b!5915254))

(assert (= (and b!5915254 c!1051253) b!5915252))

(assert (= (and b!5915254 (not c!1051253)) b!5915251))

(assert (= (or b!5915253 b!5915252) bm!468763))

(declare-fun m!6813388 () Bool)

(assert (=> b!5915250 m!6813388))

(declare-fun m!6813390 () Bool)

(assert (=> bm!468763 m!6813390))

(declare-fun m!6813392 () Bool)

(assert (=> b!5915253 m!6813392))

(assert (=> b!5914750 d!1855275))

(declare-fun d!1855277 () Bool)

(assert (=> d!1855277 (= (isEmpty!35930 (t!377589 (exprs!5851 (h!70525 zl!343)))) ((_ is Nil!64076) (t!377589 (exprs!5851 (h!70525 zl!343)))))))

(assert (=> b!5914747 d!1855277))

(declare-fun d!1855279 () Bool)

(declare-fun lt!2309621 () Regex!15967)

(assert (=> d!1855279 (validRegex!7703 lt!2309621)))

(assert (=> d!1855279 (= lt!2309621 (generalisedUnion!1811 (unfocusZipperList!1388 zl!343)))))

(assert (=> d!1855279 (= (unfocusZipper!1709 zl!343) lt!2309621)))

(declare-fun bs!1400401 () Bool)

(assert (= bs!1400401 d!1855279))

(declare-fun m!6813394 () Bool)

(assert (=> bs!1400401 m!6813394))

(assert (=> bs!1400401 m!6813122))

(assert (=> bs!1400401 m!6813122))

(assert (=> bs!1400401 m!6813124))

(assert (=> b!5914738 d!1855279))

(declare-fun d!1855281 () Bool)

(assert (=> d!1855281 (= (isEmpty!35929 (t!377590 zl!343)) ((_ is Nil!64077) (t!377590 zl!343)))))

(assert (=> b!5914746 d!1855281))

(declare-fun bs!1400402 () Bool)

(declare-fun d!1855283 () Bool)

(assert (= bs!1400402 (and d!1855283 d!1855267)))

(declare-fun lambda!322751 () Int)

(assert (=> bs!1400402 (= lambda!322751 lambda!322743)))

(declare-fun bs!1400403 () Bool)

(assert (= bs!1400403 (and d!1855283 d!1855269)))

(assert (=> bs!1400403 (= lambda!322751 lambda!322746)))

(declare-fun bs!1400404 () Bool)

(assert (= bs!1400404 (and d!1855283 d!1855271)))

(assert (=> bs!1400404 (= lambda!322751 lambda!322749)))

(declare-fun bs!1400405 () Bool)

(assert (= bs!1400405 (and d!1855283 d!1855273)))

(assert (=> bs!1400405 (= lambda!322751 lambda!322750)))

(assert (=> d!1855283 (= (inv!83164 (h!70525 zl!343)) (forall!15050 (exprs!5851 (h!70525 zl!343)) lambda!322751))))

(declare-fun bs!1400406 () Bool)

(assert (= bs!1400406 d!1855283))

(declare-fun m!6813396 () Bool)

(assert (=> bs!1400406 m!6813396))

(assert (=> b!5914748 d!1855283))

(declare-fun bs!1400407 () Bool)

(declare-fun d!1855285 () Bool)

(assert (= bs!1400407 (and d!1855285 d!1855269)))

(declare-fun lambda!322754 () Int)

(assert (=> bs!1400407 (= lambda!322754 lambda!322746)))

(declare-fun bs!1400408 () Bool)

(assert (= bs!1400408 (and d!1855285 d!1855271)))

(assert (=> bs!1400408 (= lambda!322754 lambda!322749)))

(declare-fun bs!1400409 () Bool)

(assert (= bs!1400409 (and d!1855285 d!1855273)))

(assert (=> bs!1400409 (= lambda!322754 lambda!322750)))

(declare-fun bs!1400410 () Bool)

(assert (= bs!1400410 (and d!1855285 d!1855267)))

(assert (=> bs!1400410 (= lambda!322754 lambda!322743)))

(declare-fun bs!1400411 () Bool)

(assert (= bs!1400411 (and d!1855285 d!1855283)))

(assert (=> bs!1400411 (= lambda!322754 lambda!322751)))

(declare-fun b!5915275 () Bool)

(declare-fun e!3621919 () Bool)

(declare-fun lt!2309624 () Regex!15967)

(declare-fun isConcat!918 (Regex!15967) Bool)

(assert (=> b!5915275 (= e!3621919 (isConcat!918 lt!2309624))))

(declare-fun b!5915276 () Bool)

(declare-fun e!3621915 () Bool)

(assert (=> b!5915276 (= e!3621915 e!3621919)))

(declare-fun c!1051265 () Bool)

(assert (=> b!5915276 (= c!1051265 (isEmpty!35930 (tail!11561 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun b!5915277 () Bool)

(assert (=> b!5915277 (= e!3621919 (= lt!2309624 (head!12476 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun b!5915278 () Bool)

(declare-fun e!3621916 () Regex!15967)

(assert (=> b!5915278 (= e!3621916 (h!70524 (exprs!5851 (h!70525 zl!343))))))

(declare-fun e!3621918 () Bool)

(assert (=> d!1855285 e!3621918))

(declare-fun res!2480272 () Bool)

(assert (=> d!1855285 (=> (not res!2480272) (not e!3621918))))

(assert (=> d!1855285 (= res!2480272 (validRegex!7703 lt!2309624))))

(assert (=> d!1855285 (= lt!2309624 e!3621916)))

(declare-fun c!1051262 () Bool)

(declare-fun e!3621917 () Bool)

(assert (=> d!1855285 (= c!1051262 e!3621917)))

(declare-fun res!2480271 () Bool)

(assert (=> d!1855285 (=> (not res!2480271) (not e!3621917))))

(assert (=> d!1855285 (= res!2480271 ((_ is Cons!64076) (exprs!5851 (h!70525 zl!343))))))

(assert (=> d!1855285 (forall!15050 (exprs!5851 (h!70525 zl!343)) lambda!322754)))

(assert (=> d!1855285 (= (generalisedConcat!1564 (exprs!5851 (h!70525 zl!343))) lt!2309624)))

(declare-fun b!5915279 () Bool)

(assert (=> b!5915279 (= e!3621918 e!3621915)))

(declare-fun c!1051264 () Bool)

(assert (=> b!5915279 (= c!1051264 (isEmpty!35930 (exprs!5851 (h!70525 zl!343))))))

(declare-fun b!5915280 () Bool)

(assert (=> b!5915280 (= e!3621917 (isEmpty!35930 (t!377589 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun b!5915281 () Bool)

(declare-fun e!3621920 () Regex!15967)

(assert (=> b!5915281 (= e!3621920 (Concat!24812 (h!70524 (exprs!5851 (h!70525 zl!343))) (generalisedConcat!1564 (t!377589 (exprs!5851 (h!70525 zl!343))))))))

(declare-fun b!5915282 () Bool)

(assert (=> b!5915282 (= e!3621916 e!3621920)))

(declare-fun c!1051263 () Bool)

(assert (=> b!5915282 (= c!1051263 ((_ is Cons!64076) (exprs!5851 (h!70525 zl!343))))))

(declare-fun b!5915283 () Bool)

(declare-fun isEmptyExpr!1395 (Regex!15967) Bool)

(assert (=> b!5915283 (= e!3621915 (isEmptyExpr!1395 lt!2309624))))

(declare-fun b!5915284 () Bool)

(assert (=> b!5915284 (= e!3621920 EmptyExpr!15967)))

(assert (= (and d!1855285 res!2480271) b!5915280))

(assert (= (and d!1855285 c!1051262) b!5915278))

(assert (= (and d!1855285 (not c!1051262)) b!5915282))

(assert (= (and b!5915282 c!1051263) b!5915281))

(assert (= (and b!5915282 (not c!1051263)) b!5915284))

(assert (= (and d!1855285 res!2480272) b!5915279))

(assert (= (and b!5915279 c!1051264) b!5915283))

(assert (= (and b!5915279 (not c!1051264)) b!5915276))

(assert (= (and b!5915276 c!1051265) b!5915277))

(assert (= (and b!5915276 (not c!1051265)) b!5915275))

(assert (=> b!5915280 m!6813142))

(declare-fun m!6813398 () Bool)

(assert (=> b!5915277 m!6813398))

(declare-fun m!6813400 () Bool)

(assert (=> b!5915279 m!6813400))

(declare-fun m!6813402 () Bool)

(assert (=> d!1855285 m!6813402))

(declare-fun m!6813404 () Bool)

(assert (=> d!1855285 m!6813404))

(declare-fun m!6813406 () Bool)

(assert (=> b!5915281 m!6813406))

(declare-fun m!6813408 () Bool)

(assert (=> b!5915283 m!6813408))

(declare-fun m!6813410 () Bool)

(assert (=> b!5915276 m!6813410))

(assert (=> b!5915276 m!6813410))

(declare-fun m!6813412 () Bool)

(assert (=> b!5915276 m!6813412))

(declare-fun m!6813414 () Bool)

(assert (=> b!5915275 m!6813414))

(assert (=> b!5914739 d!1855285))

(declare-fun b!5915295 () Bool)

(declare-fun e!3621923 () Bool)

(assert (=> b!5915295 (= e!3621923 tp_is_empty!41187)))

(assert (=> b!5914752 (= tp!1643374 e!3621923)))

(declare-fun b!5915298 () Bool)

(declare-fun tp!1643453 () Bool)

(declare-fun tp!1643452 () Bool)

(assert (=> b!5915298 (= e!3621923 (and tp!1643453 tp!1643452))))

(declare-fun b!5915296 () Bool)

(declare-fun tp!1643451 () Bool)

(declare-fun tp!1643454 () Bool)

(assert (=> b!5915296 (= e!3621923 (and tp!1643451 tp!1643454))))

(declare-fun b!5915297 () Bool)

(declare-fun tp!1643455 () Bool)

(assert (=> b!5915297 (= e!3621923 tp!1643455)))

(assert (= (and b!5914752 ((_ is ElementMatch!15967) (regOne!32447 r!7292))) b!5915295))

(assert (= (and b!5914752 ((_ is Concat!24812) (regOne!32447 r!7292))) b!5915296))

(assert (= (and b!5914752 ((_ is Star!15967) (regOne!32447 r!7292))) b!5915297))

(assert (= (and b!5914752 ((_ is Union!15967) (regOne!32447 r!7292))) b!5915298))

(declare-fun b!5915299 () Bool)

(declare-fun e!3621924 () Bool)

(assert (=> b!5915299 (= e!3621924 tp_is_empty!41187)))

(assert (=> b!5914752 (= tp!1643375 e!3621924)))

(declare-fun b!5915302 () Bool)

(declare-fun tp!1643458 () Bool)

(declare-fun tp!1643457 () Bool)

(assert (=> b!5915302 (= e!3621924 (and tp!1643458 tp!1643457))))

(declare-fun b!5915300 () Bool)

(declare-fun tp!1643456 () Bool)

(declare-fun tp!1643459 () Bool)

(assert (=> b!5915300 (= e!3621924 (and tp!1643456 tp!1643459))))

(declare-fun b!5915301 () Bool)

(declare-fun tp!1643460 () Bool)

(assert (=> b!5915301 (= e!3621924 tp!1643460)))

(assert (= (and b!5914752 ((_ is ElementMatch!15967) (regTwo!32447 r!7292))) b!5915299))

(assert (= (and b!5914752 ((_ is Concat!24812) (regTwo!32447 r!7292))) b!5915300))

(assert (= (and b!5914752 ((_ is Star!15967) (regTwo!32447 r!7292))) b!5915301))

(assert (= (and b!5914752 ((_ is Union!15967) (regTwo!32447 r!7292))) b!5915302))

(declare-fun b!5915310 () Bool)

(declare-fun e!3621930 () Bool)

(declare-fun tp!1643465 () Bool)

(assert (=> b!5915310 (= e!3621930 tp!1643465)))

(declare-fun b!5915309 () Bool)

(declare-fun e!3621929 () Bool)

(declare-fun tp!1643466 () Bool)

(assert (=> b!5915309 (= e!3621929 (and (inv!83164 (h!70525 (t!377590 zl!343))) e!3621930 tp!1643466))))

(assert (=> b!5914748 (= tp!1643378 e!3621929)))

(assert (= b!5915309 b!5915310))

(assert (= (and b!5914748 ((_ is Cons!64077) (t!377590 zl!343))) b!5915309))

(declare-fun m!6813416 () Bool)

(assert (=> b!5915309 m!6813416))

(declare-fun b!5915311 () Bool)

(declare-fun e!3621931 () Bool)

(assert (=> b!5915311 (= e!3621931 tp_is_empty!41187)))

(assert (=> b!5914743 (= tp!1643376 e!3621931)))

(declare-fun b!5915314 () Bool)

(declare-fun tp!1643469 () Bool)

(declare-fun tp!1643468 () Bool)

(assert (=> b!5915314 (= e!3621931 (and tp!1643469 tp!1643468))))

(declare-fun b!5915312 () Bool)

(declare-fun tp!1643467 () Bool)

(declare-fun tp!1643470 () Bool)

(assert (=> b!5915312 (= e!3621931 (and tp!1643467 tp!1643470))))

(declare-fun b!5915313 () Bool)

(declare-fun tp!1643471 () Bool)

(assert (=> b!5915313 (= e!3621931 tp!1643471)))

(assert (= (and b!5914743 ((_ is ElementMatch!15967) (reg!16296 r!7292))) b!5915311))

(assert (= (and b!5914743 ((_ is Concat!24812) (reg!16296 r!7292))) b!5915312))

(assert (= (and b!5914743 ((_ is Star!15967) (reg!16296 r!7292))) b!5915313))

(assert (= (and b!5914743 ((_ is Union!15967) (reg!16296 r!7292))) b!5915314))

(declare-fun b!5915319 () Bool)

(declare-fun e!3621934 () Bool)

(declare-fun tp!1643476 () Bool)

(declare-fun tp!1643477 () Bool)

(assert (=> b!5915319 (= e!3621934 (and tp!1643476 tp!1643477))))

(assert (=> b!5914740 (= tp!1643381 e!3621934)))

(assert (= (and b!5914740 ((_ is Cons!64076) (exprs!5851 (h!70525 zl!343)))) b!5915319))

(declare-fun b!5915324 () Bool)

(declare-fun e!3621937 () Bool)

(declare-fun tp!1643480 () Bool)

(assert (=> b!5915324 (= e!3621937 (and tp_is_empty!41187 tp!1643480))))

(assert (=> b!5914755 (= tp!1643377 e!3621937)))

(assert (= (and b!5914755 ((_ is Cons!64078) (t!377591 s!2326))) b!5915324))

(declare-fun condSetEmpty!40152 () Bool)

(assert (=> setNonEmpty!40146 (= condSetEmpty!40152 (= setRest!40146 ((as const (Array Context!10702 Bool)) false)))))

(declare-fun setRes!40152 () Bool)

(assert (=> setNonEmpty!40146 (= tp!1643373 setRes!40152)))

(declare-fun setIsEmpty!40152 () Bool)

(assert (=> setIsEmpty!40152 setRes!40152))

(declare-fun setNonEmpty!40152 () Bool)

(declare-fun setElem!40152 () Context!10702)

(declare-fun e!3621940 () Bool)

(declare-fun tp!1643485 () Bool)

(assert (=> setNonEmpty!40152 (= setRes!40152 (and tp!1643485 (inv!83164 setElem!40152) e!3621940))))

(declare-fun setRest!40152 () (InoxSet Context!10702))

(assert (=> setNonEmpty!40152 (= setRest!40146 ((_ map or) (store ((as const (Array Context!10702 Bool)) false) setElem!40152 true) setRest!40152))))

(declare-fun b!5915329 () Bool)

(declare-fun tp!1643486 () Bool)

(assert (=> b!5915329 (= e!3621940 tp!1643486)))

(assert (= (and setNonEmpty!40146 condSetEmpty!40152) setIsEmpty!40152))

(assert (= (and setNonEmpty!40146 (not condSetEmpty!40152)) setNonEmpty!40152))

(assert (= setNonEmpty!40152 b!5915329))

(declare-fun m!6813418 () Bool)

(assert (=> setNonEmpty!40152 m!6813418))

(declare-fun b!5915330 () Bool)

(declare-fun e!3621941 () Bool)

(declare-fun tp!1643487 () Bool)

(declare-fun tp!1643488 () Bool)

(assert (=> b!5915330 (= e!3621941 (and tp!1643487 tp!1643488))))

(assert (=> b!5914754 (= tp!1643382 e!3621941)))

(assert (= (and b!5914754 ((_ is Cons!64076) (exprs!5851 setElem!40146))) b!5915330))

(declare-fun b!5915331 () Bool)

(declare-fun e!3621942 () Bool)

(assert (=> b!5915331 (= e!3621942 tp_is_empty!41187)))

(assert (=> b!5914751 (= tp!1643380 e!3621942)))

(declare-fun b!5915334 () Bool)

(declare-fun tp!1643491 () Bool)

(declare-fun tp!1643490 () Bool)

(assert (=> b!5915334 (= e!3621942 (and tp!1643491 tp!1643490))))

(declare-fun b!5915332 () Bool)

(declare-fun tp!1643489 () Bool)

(declare-fun tp!1643492 () Bool)

(assert (=> b!5915332 (= e!3621942 (and tp!1643489 tp!1643492))))

(declare-fun b!5915333 () Bool)

(declare-fun tp!1643493 () Bool)

(assert (=> b!5915333 (= e!3621942 tp!1643493)))

(assert (= (and b!5914751 ((_ is ElementMatch!15967) (regOne!32446 r!7292))) b!5915331))

(assert (= (and b!5914751 ((_ is Concat!24812) (regOne!32446 r!7292))) b!5915332))

(assert (= (and b!5914751 ((_ is Star!15967) (regOne!32446 r!7292))) b!5915333))

(assert (= (and b!5914751 ((_ is Union!15967) (regOne!32446 r!7292))) b!5915334))

(declare-fun b!5915335 () Bool)

(declare-fun e!3621943 () Bool)

(assert (=> b!5915335 (= e!3621943 tp_is_empty!41187)))

(assert (=> b!5914751 (= tp!1643379 e!3621943)))

(declare-fun b!5915338 () Bool)

(declare-fun tp!1643496 () Bool)

(declare-fun tp!1643495 () Bool)

(assert (=> b!5915338 (= e!3621943 (and tp!1643496 tp!1643495))))

(declare-fun b!5915336 () Bool)

(declare-fun tp!1643494 () Bool)

(declare-fun tp!1643497 () Bool)

(assert (=> b!5915336 (= e!3621943 (and tp!1643494 tp!1643497))))

(declare-fun b!5915337 () Bool)

(declare-fun tp!1643498 () Bool)

(assert (=> b!5915337 (= e!3621943 tp!1643498)))

(assert (= (and b!5914751 ((_ is ElementMatch!15967) (regTwo!32446 r!7292))) b!5915335))

(assert (= (and b!5914751 ((_ is Concat!24812) (regTwo!32446 r!7292))) b!5915336))

(assert (= (and b!5914751 ((_ is Star!15967) (regTwo!32446 r!7292))) b!5915337))

(assert (= (and b!5914751 ((_ is Union!15967) (regTwo!32446 r!7292))) b!5915338))

(check-sat (not b!5915297) (not b!5915277) (not d!1855259) (not b!5915232) (not d!1855267) (not b!5915231) (not b!5915301) (not b!5915309) (not b!5914988) (not setNonEmpty!40152) (not b!5915074) (not b!5915279) (not b!5915253) (not b!5914985) (not b!5915298) (not b!5915238) (not b!5915336) (not b!5915313) (not b!5915230) (not d!1855279) (not b!5915296) (not bm!468758) (not b!5914829) (not bm!468751) (not d!1855215) (not b!5915312) (not b!5915190) (not b!5915226) (not d!1855261) (not b!5915329) (not b!5915186) (not b!5915075) (not b!5915229) (not b!5915250) (not b!5915333) (not d!1855283) (not b!5915324) (not bm!468759) (not b!5915334) (not d!1855241) (not bm!468743) (not b!5915338) (not b!5915300) (not b!5915159) (not b!5915275) (not d!1855249) (not b!5915283) tp_is_empty!41187 (not b!5915302) (not d!1855255) (not d!1855269) (not d!1855273) (not b!5915314) (not d!1855263) (not b!5915067) (not b!5915332) (not d!1855271) (not bm!468763) (not b!5915319) (not d!1855285) (not b!5915233) (not d!1855257) (not b!5915062) (not b!5915280) (not d!1855265) (not b!5915224) (not b!5915185) (not b!5915191) (not bm!468742) (not b!5915073) (not b!5915188) (not b!5915276) (not b!5915070) (not b!5915184) (not b!5915337) (not b!5915330) (not b!5915281) (not b!5915310))
(check-sat)
(get-model)

(declare-fun bs!1400517 () Bool)

(declare-fun d!1855433 () Bool)

(assert (= bs!1400517 (and d!1855433 d!1855269)))

(declare-fun lambda!322773 () Int)

(assert (=> bs!1400517 (= lambda!322773 lambda!322746)))

(declare-fun bs!1400518 () Bool)

(assert (= bs!1400518 (and d!1855433 d!1855271)))

(assert (=> bs!1400518 (= lambda!322773 lambda!322749)))

(declare-fun bs!1400519 () Bool)

(assert (= bs!1400519 (and d!1855433 d!1855273)))

(assert (=> bs!1400519 (= lambda!322773 lambda!322750)))

(declare-fun bs!1400520 () Bool)

(assert (= bs!1400520 (and d!1855433 d!1855267)))

(assert (=> bs!1400520 (= lambda!322773 lambda!322743)))

(declare-fun bs!1400521 () Bool)

(assert (= bs!1400521 (and d!1855433 d!1855283)))

(assert (=> bs!1400521 (= lambda!322773 lambda!322751)))

(declare-fun bs!1400522 () Bool)

(assert (= bs!1400522 (and d!1855433 d!1855285)))

(assert (=> bs!1400522 (= lambda!322773 lambda!322754)))

(assert (=> d!1855433 (= (inv!83164 (h!70525 (t!377590 zl!343))) (forall!15050 (exprs!5851 (h!70525 (t!377590 zl!343))) lambda!322773))))

(declare-fun bs!1400523 () Bool)

(assert (= bs!1400523 d!1855433))

(declare-fun m!6813738 () Bool)

(assert (=> bs!1400523 m!6813738))

(assert (=> b!5915309 d!1855433))

(declare-fun d!1855435 () Bool)

(assert (=> d!1855435 true))

(assert (=> d!1855435 true))

(declare-fun res!2480418 () Bool)

(assert (=> d!1855435 (= (choose!44627 lambda!322696) res!2480418)))

(assert (=> d!1855259 d!1855435))

(declare-fun bm!468822 () Bool)

(declare-fun call!468827 () Bool)

(assert (=> bm!468822 (= call!468827 (isEmpty!35933 (tail!11560 s!2326)))))

(declare-fun b!5915769 () Bool)

(declare-fun e!3622176 () Bool)

(assert (=> b!5915769 (= e!3622176 (= (head!12475 (tail!11560 s!2326)) (c!1051133 (derivativeStep!4698 r!7292 (head!12475 s!2326)))))))

(declare-fun b!5915770 () Bool)

(declare-fun e!3622178 () Bool)

(declare-fun e!3622180 () Bool)

(assert (=> b!5915770 (= e!3622178 e!3622180)))

(declare-fun c!1051352 () Bool)

(assert (=> b!5915770 (= c!1051352 ((_ is EmptyLang!15967) (derivativeStep!4698 r!7292 (head!12475 s!2326))))))

(declare-fun b!5915771 () Bool)

(declare-fun lt!2309647 () Bool)

(assert (=> b!5915771 (= e!3622180 (not lt!2309647))))

(declare-fun b!5915772 () Bool)

(assert (=> b!5915772 (= e!3622178 (= lt!2309647 call!468827))))

(declare-fun b!5915774 () Bool)

(declare-fun e!3622175 () Bool)

(assert (=> b!5915774 (= e!3622175 (matchR!8150 (derivativeStep!4698 (derivativeStep!4698 r!7292 (head!12475 s!2326)) (head!12475 (tail!11560 s!2326))) (tail!11560 (tail!11560 s!2326))))))

(declare-fun b!5915775 () Bool)

(declare-fun res!2480426 () Bool)

(declare-fun e!3622177 () Bool)

(assert (=> b!5915775 (=> res!2480426 e!3622177)))

(assert (=> b!5915775 (= res!2480426 (not ((_ is ElementMatch!15967) (derivativeStep!4698 r!7292 (head!12475 s!2326)))))))

(assert (=> b!5915775 (= e!3622180 e!3622177)))

(declare-fun b!5915776 () Bool)

(declare-fun res!2480424 () Bool)

(assert (=> b!5915776 (=> res!2480424 e!3622177)))

(assert (=> b!5915776 (= res!2480424 e!3622176)))

(declare-fun res!2480420 () Bool)

(assert (=> b!5915776 (=> (not res!2480420) (not e!3622176))))

(assert (=> b!5915776 (= res!2480420 lt!2309647)))

(declare-fun b!5915777 () Bool)

(declare-fun e!3622179 () Bool)

(assert (=> b!5915777 (= e!3622179 (not (= (head!12475 (tail!11560 s!2326)) (c!1051133 (derivativeStep!4698 r!7292 (head!12475 s!2326))))))))

(declare-fun b!5915778 () Bool)

(declare-fun e!3622174 () Bool)

(assert (=> b!5915778 (= e!3622174 e!3622179)))

(declare-fun res!2480425 () Bool)

(assert (=> b!5915778 (=> res!2480425 e!3622179)))

(assert (=> b!5915778 (= res!2480425 call!468827)))

(declare-fun b!5915779 () Bool)

(declare-fun res!2480423 () Bool)

(assert (=> b!5915779 (=> (not res!2480423) (not e!3622176))))

(assert (=> b!5915779 (= res!2480423 (not call!468827))))

(declare-fun b!5915780 () Bool)

(declare-fun res!2480419 () Bool)

(assert (=> b!5915780 (=> res!2480419 e!3622179)))

(assert (=> b!5915780 (= res!2480419 (not (isEmpty!35933 (tail!11560 (tail!11560 s!2326)))))))

(declare-fun b!5915781 () Bool)

(declare-fun res!2480422 () Bool)

(assert (=> b!5915781 (=> (not res!2480422) (not e!3622176))))

(assert (=> b!5915781 (= res!2480422 (isEmpty!35933 (tail!11560 (tail!11560 s!2326))))))

(declare-fun b!5915782 () Bool)

(assert (=> b!5915782 (= e!3622175 (nullable!5962 (derivativeStep!4698 r!7292 (head!12475 s!2326))))))

(declare-fun d!1855437 () Bool)

(assert (=> d!1855437 e!3622178))

(declare-fun c!1051354 () Bool)

(assert (=> d!1855437 (= c!1051354 ((_ is EmptyExpr!15967) (derivativeStep!4698 r!7292 (head!12475 s!2326))))))

(assert (=> d!1855437 (= lt!2309647 e!3622175)))

(declare-fun c!1051353 () Bool)

(assert (=> d!1855437 (= c!1051353 (isEmpty!35933 (tail!11560 s!2326)))))

(assert (=> d!1855437 (validRegex!7703 (derivativeStep!4698 r!7292 (head!12475 s!2326)))))

(assert (=> d!1855437 (= (matchR!8150 (derivativeStep!4698 r!7292 (head!12475 s!2326)) (tail!11560 s!2326)) lt!2309647)))

(declare-fun b!5915773 () Bool)

(assert (=> b!5915773 (= e!3622177 e!3622174)))

(declare-fun res!2480421 () Bool)

(assert (=> b!5915773 (=> (not res!2480421) (not e!3622174))))

(assert (=> b!5915773 (= res!2480421 (not lt!2309647))))

(assert (= (and d!1855437 c!1051353) b!5915782))

(assert (= (and d!1855437 (not c!1051353)) b!5915774))

(assert (= (and d!1855437 c!1051354) b!5915772))

(assert (= (and d!1855437 (not c!1051354)) b!5915770))

(assert (= (and b!5915770 c!1051352) b!5915771))

(assert (= (and b!5915770 (not c!1051352)) b!5915775))

(assert (= (and b!5915775 (not res!2480426)) b!5915776))

(assert (= (and b!5915776 res!2480420) b!5915779))

(assert (= (and b!5915779 res!2480423) b!5915781))

(assert (= (and b!5915781 res!2480422) b!5915769))

(assert (= (and b!5915776 (not res!2480424)) b!5915773))

(assert (= (and b!5915773 res!2480421) b!5915778))

(assert (= (and b!5915778 (not res!2480425)) b!5915780))

(assert (= (and b!5915780 (not res!2480419)) b!5915777))

(assert (= (or b!5915772 b!5915778 b!5915779) bm!468822))

(assert (=> bm!468822 m!6813294))

(assert (=> bm!468822 m!6813298))

(assert (=> b!5915782 m!6813292))

(declare-fun m!6813740 () Bool)

(assert (=> b!5915782 m!6813740))

(assert (=> b!5915769 m!6813294))

(declare-fun m!6813742 () Bool)

(assert (=> b!5915769 m!6813742))

(assert (=> d!1855437 m!6813294))

(assert (=> d!1855437 m!6813298))

(assert (=> d!1855437 m!6813292))

(declare-fun m!6813744 () Bool)

(assert (=> d!1855437 m!6813744))

(assert (=> b!5915777 m!6813294))

(assert (=> b!5915777 m!6813742))

(assert (=> b!5915774 m!6813294))

(assert (=> b!5915774 m!6813742))

(assert (=> b!5915774 m!6813292))

(assert (=> b!5915774 m!6813742))

(declare-fun m!6813746 () Bool)

(assert (=> b!5915774 m!6813746))

(assert (=> b!5915774 m!6813294))

(declare-fun m!6813748 () Bool)

(assert (=> b!5915774 m!6813748))

(assert (=> b!5915774 m!6813746))

(assert (=> b!5915774 m!6813748))

(declare-fun m!6813750 () Bool)

(assert (=> b!5915774 m!6813750))

(assert (=> b!5915780 m!6813294))

(assert (=> b!5915780 m!6813748))

(assert (=> b!5915780 m!6813748))

(declare-fun m!6813752 () Bool)

(assert (=> b!5915780 m!6813752))

(assert (=> b!5915781 m!6813294))

(assert (=> b!5915781 m!6813748))

(assert (=> b!5915781 m!6813748))

(assert (=> b!5915781 m!6813752))

(assert (=> b!5915067 d!1855437))

(declare-fun b!5915803 () Bool)

(declare-fun c!1051369 () Bool)

(assert (=> b!5915803 (= c!1051369 ((_ is Union!15967) r!7292))))

(declare-fun e!3622192 () Regex!15967)

(declare-fun e!3622193 () Regex!15967)

(assert (=> b!5915803 (= e!3622192 e!3622193)))

(declare-fun b!5915804 () Bool)

(declare-fun c!1051366 () Bool)

(assert (=> b!5915804 (= c!1051366 (nullable!5962 (regOne!32446 r!7292)))))

(declare-fun e!3622191 () Regex!15967)

(declare-fun e!3622194 () Regex!15967)

(assert (=> b!5915804 (= e!3622191 e!3622194)))

(declare-fun bm!468831 () Bool)

(declare-fun call!468839 () Regex!15967)

(declare-fun call!468837 () Regex!15967)

(assert (=> bm!468831 (= call!468839 call!468837)))

(declare-fun b!5915805 () Bool)

(declare-fun call!468836 () Regex!15967)

(assert (=> b!5915805 (= e!3622193 (Union!15967 call!468837 call!468836))))

(declare-fun b!5915806 () Bool)

(assert (=> b!5915806 (= e!3622191 (Concat!24812 call!468839 r!7292))))

(declare-fun b!5915807 () Bool)

(declare-fun call!468838 () Regex!15967)

(assert (=> b!5915807 (= e!3622194 (Union!15967 (Concat!24812 call!468838 (regTwo!32446 r!7292)) EmptyLang!15967))))

(declare-fun b!5915808 () Bool)

(assert (=> b!5915808 (= e!3622193 e!3622191)))

(declare-fun c!1051367 () Bool)

(assert (=> b!5915808 (= c!1051367 ((_ is Star!15967) r!7292))))

(declare-fun b!5915809 () Bool)

(assert (=> b!5915809 (= e!3622192 (ite (= (head!12475 s!2326) (c!1051133 r!7292)) EmptyExpr!15967 EmptyLang!15967))))

(declare-fun d!1855439 () Bool)

(declare-fun lt!2309650 () Regex!15967)

(assert (=> d!1855439 (validRegex!7703 lt!2309650)))

(declare-fun e!3622195 () Regex!15967)

(assert (=> d!1855439 (= lt!2309650 e!3622195)))

(declare-fun c!1051368 () Bool)

(assert (=> d!1855439 (= c!1051368 (or ((_ is EmptyExpr!15967) r!7292) ((_ is EmptyLang!15967) r!7292)))))

(assert (=> d!1855439 (validRegex!7703 r!7292)))

(assert (=> d!1855439 (= (derivativeStep!4698 r!7292 (head!12475 s!2326)) lt!2309650)))

(declare-fun bm!468832 () Bool)

(assert (=> bm!468832 (= call!468838 call!468836)))

(declare-fun b!5915810 () Bool)

(assert (=> b!5915810 (= e!3622195 e!3622192)))

(declare-fun c!1051365 () Bool)

(assert (=> b!5915810 (= c!1051365 ((_ is ElementMatch!15967) r!7292))))

(declare-fun bm!468833 () Bool)

(assert (=> bm!468833 (= call!468837 (derivativeStep!4698 (ite c!1051369 (regOne!32447 r!7292) (ite c!1051367 (reg!16296 r!7292) (regOne!32446 r!7292))) (head!12475 s!2326)))))

(declare-fun bm!468834 () Bool)

(assert (=> bm!468834 (= call!468836 (derivativeStep!4698 (ite c!1051369 (regTwo!32447 r!7292) (ite c!1051366 (regTwo!32446 r!7292) (regOne!32446 r!7292))) (head!12475 s!2326)))))

(declare-fun b!5915811 () Bool)

(assert (=> b!5915811 (= e!3622194 (Union!15967 (Concat!24812 call!468839 (regTwo!32446 r!7292)) call!468838))))

(declare-fun b!5915812 () Bool)

(assert (=> b!5915812 (= e!3622195 EmptyLang!15967)))

(assert (= (and d!1855439 c!1051368) b!5915812))

(assert (= (and d!1855439 (not c!1051368)) b!5915810))

(assert (= (and b!5915810 c!1051365) b!5915809))

(assert (= (and b!5915810 (not c!1051365)) b!5915803))

(assert (= (and b!5915803 c!1051369) b!5915805))

(assert (= (and b!5915803 (not c!1051369)) b!5915808))

(assert (= (and b!5915808 c!1051367) b!5915806))

(assert (= (and b!5915808 (not c!1051367)) b!5915804))

(assert (= (and b!5915804 c!1051366) b!5915811))

(assert (= (and b!5915804 (not c!1051366)) b!5915807))

(assert (= (or b!5915811 b!5915807) bm!468832))

(assert (= (or b!5915806 b!5915811) bm!468831))

(assert (= (or b!5915805 bm!468832) bm!468834))

(assert (= (or b!5915805 bm!468831) bm!468833))

(declare-fun m!6813754 () Bool)

(assert (=> b!5915804 m!6813754))

(declare-fun m!6813756 () Bool)

(assert (=> d!1855439 m!6813756))

(assert (=> d!1855439 m!6813140))

(assert (=> bm!468833 m!6813290))

(declare-fun m!6813758 () Bool)

(assert (=> bm!468833 m!6813758))

(assert (=> bm!468834 m!6813290))

(declare-fun m!6813760 () Bool)

(assert (=> bm!468834 m!6813760))

(assert (=> b!5915067 d!1855439))

(declare-fun d!1855441 () Bool)

(assert (=> d!1855441 (= (head!12475 s!2326) (h!70526 s!2326))))

(assert (=> b!5915067 d!1855441))

(declare-fun d!1855443 () Bool)

(assert (=> d!1855443 (= (tail!11560 s!2326) (t!377591 s!2326))))

(assert (=> b!5915067 d!1855443))

(declare-fun bs!1400524 () Bool)

(declare-fun b!5915820 () Bool)

(assert (= bs!1400524 (and b!5915820 b!5914987)))

(declare-fun lambda!322774 () Int)

(assert (=> bs!1400524 (= (and (= (reg!16296 (regOne!32447 r!7292)) (reg!16296 r!7292)) (= (regOne!32447 r!7292) r!7292)) (= lambda!322774 lambda!322721))))

(declare-fun bs!1400525 () Bool)

(assert (= bs!1400525 (and b!5915820 d!1855263)))

(assert (=> bs!1400525 (not (= lambda!322774 lambda!322740))))

(assert (=> bs!1400525 (not (= lambda!322774 lambda!322739))))

(declare-fun bs!1400526 () Bool)

(assert (= bs!1400526 (and b!5915820 d!1855261)))

(assert (=> bs!1400526 (not (= lambda!322774 lambda!322734))))

(declare-fun bs!1400527 () Bool)

(assert (= bs!1400527 (and b!5915820 b!5914749)))

(assert (=> bs!1400527 (not (= lambda!322774 lambda!322695))))

(assert (=> bs!1400527 (not (= lambda!322774 lambda!322696))))

(declare-fun bs!1400528 () Bool)

(assert (= bs!1400528 (and b!5915820 b!5914980)))

(assert (=> bs!1400528 (not (= lambda!322774 lambda!322722))))

(assert (=> b!5915820 true))

(assert (=> b!5915820 true))

(declare-fun bs!1400529 () Bool)

(declare-fun b!5915813 () Bool)

(assert (= bs!1400529 (and b!5915813 b!5914987)))

(declare-fun lambda!322775 () Int)

(assert (=> bs!1400529 (not (= lambda!322775 lambda!322721))))

(declare-fun bs!1400530 () Bool)

(assert (= bs!1400530 (and b!5915813 d!1855263)))

(assert (=> bs!1400530 (= (and (= (regOne!32446 (regOne!32447 r!7292)) (regOne!32446 r!7292)) (= (regTwo!32446 (regOne!32447 r!7292)) (regTwo!32446 r!7292))) (= lambda!322775 lambda!322740))))

(assert (=> bs!1400530 (not (= lambda!322775 lambda!322739))))

(declare-fun bs!1400531 () Bool)

(assert (= bs!1400531 (and b!5915813 d!1855261)))

(assert (=> bs!1400531 (not (= lambda!322775 lambda!322734))))

(declare-fun bs!1400532 () Bool)

(assert (= bs!1400532 (and b!5915813 b!5914749)))

(assert (=> bs!1400532 (not (= lambda!322775 lambda!322695))))

(declare-fun bs!1400533 () Bool)

(assert (= bs!1400533 (and b!5915813 b!5915820)))

(assert (=> bs!1400533 (not (= lambda!322775 lambda!322774))))

(assert (=> bs!1400532 (= (and (= (regOne!32446 (regOne!32447 r!7292)) (regOne!32446 r!7292)) (= (regTwo!32446 (regOne!32447 r!7292)) (regTwo!32446 r!7292))) (= lambda!322775 lambda!322696))))

(declare-fun bs!1400534 () Bool)

(assert (= bs!1400534 (and b!5915813 b!5914980)))

(assert (=> bs!1400534 (= (and (= (regOne!32446 (regOne!32447 r!7292)) (regOne!32446 r!7292)) (= (regTwo!32446 (regOne!32447 r!7292)) (regTwo!32446 r!7292))) (= lambda!322775 lambda!322722))))

(assert (=> b!5915813 true))

(assert (=> b!5915813 true))

(declare-fun e!3622197 () Bool)

(declare-fun call!468840 () Bool)

(assert (=> b!5915813 (= e!3622197 call!468840)))

(declare-fun b!5915814 () Bool)

(declare-fun res!2480428 () Bool)

(declare-fun e!3622202 () Bool)

(assert (=> b!5915814 (=> res!2480428 e!3622202)))

(declare-fun call!468841 () Bool)

(assert (=> b!5915814 (= res!2480428 call!468841)))

(assert (=> b!5915814 (= e!3622197 e!3622202)))

(declare-fun b!5915815 () Bool)

(declare-fun e!3622196 () Bool)

(assert (=> b!5915815 (= e!3622196 e!3622197)))

(declare-fun c!1051371 () Bool)

(assert (=> b!5915815 (= c!1051371 ((_ is Star!15967) (regOne!32447 r!7292)))))

(declare-fun b!5915816 () Bool)

(declare-fun c!1051370 () Bool)

(assert (=> b!5915816 (= c!1051370 ((_ is Union!15967) (regOne!32447 r!7292)))))

(declare-fun e!3622199 () Bool)

(assert (=> b!5915816 (= e!3622199 e!3622196)))

(declare-fun b!5915817 () Bool)

(declare-fun e!3622201 () Bool)

(declare-fun e!3622200 () Bool)

(assert (=> b!5915817 (= e!3622201 e!3622200)))

(declare-fun res!2480427 () Bool)

(assert (=> b!5915817 (= res!2480427 (not ((_ is EmptyLang!15967) (regOne!32447 r!7292))))))

(assert (=> b!5915817 (=> (not res!2480427) (not e!3622200))))

(declare-fun b!5915818 () Bool)

(declare-fun e!3622198 () Bool)

(assert (=> b!5915818 (= e!3622196 e!3622198)))

(declare-fun res!2480429 () Bool)

(assert (=> b!5915818 (= res!2480429 (matchRSpec!3068 (regOne!32447 (regOne!32447 r!7292)) s!2326))))

(assert (=> b!5915818 (=> res!2480429 e!3622198)))

(declare-fun b!5915819 () Bool)

(assert (=> b!5915819 (= e!3622201 call!468841)))

(assert (=> b!5915820 (= e!3622202 call!468840)))

(declare-fun b!5915821 () Bool)

(assert (=> b!5915821 (= e!3622198 (matchRSpec!3068 (regTwo!32447 (regOne!32447 r!7292)) s!2326))))

(declare-fun b!5915822 () Bool)

(declare-fun c!1051373 () Bool)

(assert (=> b!5915822 (= c!1051373 ((_ is ElementMatch!15967) (regOne!32447 r!7292)))))

(assert (=> b!5915822 (= e!3622200 e!3622199)))

(declare-fun bm!468836 () Bool)

(assert (=> bm!468836 (= call!468841 (isEmpty!35933 s!2326))))

(declare-fun b!5915823 () Bool)

(assert (=> b!5915823 (= e!3622199 (= s!2326 (Cons!64078 (c!1051133 (regOne!32447 r!7292)) Nil!64078)))))

(declare-fun d!1855445 () Bool)

(declare-fun c!1051372 () Bool)

(assert (=> d!1855445 (= c!1051372 ((_ is EmptyExpr!15967) (regOne!32447 r!7292)))))

(assert (=> d!1855445 (= (matchRSpec!3068 (regOne!32447 r!7292) s!2326) e!3622201)))

(declare-fun bm!468835 () Bool)

(assert (=> bm!468835 (= call!468840 (Exists!3037 (ite c!1051371 lambda!322774 lambda!322775)))))

(assert (= (and d!1855445 c!1051372) b!5915819))

(assert (= (and d!1855445 (not c!1051372)) b!5915817))

(assert (= (and b!5915817 res!2480427) b!5915822))

(assert (= (and b!5915822 c!1051373) b!5915823))

(assert (= (and b!5915822 (not c!1051373)) b!5915816))

(assert (= (and b!5915816 c!1051370) b!5915818))

(assert (= (and b!5915816 (not c!1051370)) b!5915815))

(assert (= (and b!5915818 (not res!2480429)) b!5915821))

(assert (= (and b!5915815 c!1051371) b!5915814))

(assert (= (and b!5915815 (not c!1051371)) b!5915813))

(assert (= (and b!5915814 (not res!2480428)) b!5915820))

(assert (= (or b!5915820 b!5915813) bm!468835))

(assert (= (or b!5915819 b!5915814) bm!468836))

(declare-fun m!6813762 () Bool)

(assert (=> b!5915818 m!6813762))

(declare-fun m!6813764 () Bool)

(assert (=> b!5915821 m!6813764))

(assert (=> bm!468836 m!6813254))

(declare-fun m!6813766 () Bool)

(assert (=> bm!468835 m!6813766))

(assert (=> b!5914985 d!1855445))

(declare-fun d!1855447 () Bool)

(assert (=> d!1855447 (= (isEmpty!35930 (tail!11561 (unfocusZipperList!1388 zl!343))) ((_ is Nil!64076) (tail!11561 (unfocusZipperList!1388 zl!343))))))

(assert (=> b!5915233 d!1855447))

(declare-fun d!1855449 () Bool)

(assert (=> d!1855449 (= (tail!11561 (unfocusZipperList!1388 zl!343)) (t!377589 (unfocusZipperList!1388 zl!343)))))

(assert (=> b!5915233 d!1855449))

(declare-fun bm!468849 () Bool)

(declare-fun call!468859 () (InoxSet Context!10702))

(declare-fun call!468856 () (InoxSet Context!10702))

(assert (=> bm!468849 (= call!468859 call!468856)))

(declare-fun b!5915846 () Bool)

(declare-fun e!3622215 () (InoxSet Context!10702))

(assert (=> b!5915846 (= e!3622215 ((as const (Array Context!10702 Bool)) false))))

(declare-fun b!5915847 () Bool)

(declare-fun c!1051385 () Bool)

(assert (=> b!5915847 (= c!1051385 ((_ is Star!15967) (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))))

(declare-fun e!3622216 () (InoxSet Context!10702))

(assert (=> b!5915847 (= e!3622216 e!3622215)))

(declare-fun b!5915848 () Bool)

(declare-fun e!3622220 () (InoxSet Context!10702))

(assert (=> b!5915848 (= e!3622220 e!3622216)))

(declare-fun c!1051388 () Bool)

(assert (=> b!5915848 (= c!1051388 ((_ is Concat!24812) (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))))

(declare-fun b!5915849 () Bool)

(declare-fun e!3622219 () Bool)

(assert (=> b!5915849 (= e!3622219 (nullable!5962 (regOne!32446 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))))))

(declare-fun b!5915850 () Bool)

(declare-fun c!1051387 () Bool)

(assert (=> b!5915850 (= c!1051387 e!3622219)))

(declare-fun res!2480432 () Bool)

(assert (=> b!5915850 (=> (not res!2480432) (not e!3622219))))

(assert (=> b!5915850 (= res!2480432 ((_ is Concat!24812) (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))))

(declare-fun e!3622218 () (InoxSet Context!10702))

(assert (=> b!5915850 (= e!3622218 e!3622220)))

(declare-fun call!468854 () List!64200)

(declare-fun bm!468850 () Bool)

(declare-fun $colon$colon!1854 (List!64200 Regex!15967) List!64200)

(assert (=> bm!468850 (= call!468854 ($colon$colon!1854 (exprs!5851 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))) (ite (or c!1051387 c!1051388) (regTwo!32446 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))))))

(declare-fun d!1855451 () Bool)

(declare-fun c!1051384 () Bool)

(assert (=> d!1855451 (= c!1051384 (and ((_ is ElementMatch!15967) (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (= (c!1051133 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (h!70526 s!2326))))))

(declare-fun e!3622217 () (InoxSet Context!10702))

(assert (=> d!1855451 (= (derivationStepZipperDown!1217 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))) (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (h!70526 s!2326)) e!3622217)))

(declare-fun b!5915851 () Bool)

(declare-fun call!468858 () (InoxSet Context!10702))

(assert (=> b!5915851 (= e!3622215 call!468858)))

(declare-fun bm!468851 () Bool)

(declare-fun call!468855 () List!64200)

(assert (=> bm!468851 (= call!468855 call!468854)))

(declare-fun b!5915852 () Bool)

(declare-fun call!468857 () (InoxSet Context!10702))

(assert (=> b!5915852 (= e!3622220 ((_ map or) call!468857 call!468859))))

(declare-fun bm!468852 () Bool)

(assert (=> bm!468852 (= call!468858 call!468859)))

(declare-fun b!5915853 () Bool)

(assert (=> b!5915853 (= e!3622217 e!3622218)))

(declare-fun c!1051386 () Bool)

(assert (=> b!5915853 (= c!1051386 ((_ is Union!15967) (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))))

(declare-fun b!5915854 () Bool)

(assert (=> b!5915854 (= e!3622217 (store ((as const (Array Context!10702 Bool)) false) (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) true))))

(declare-fun bm!468853 () Bool)

(assert (=> bm!468853 (= call!468857 (derivationStepZipperDown!1217 (ite c!1051386 (regTwo!32447 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (regOne!32446 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))) (ite c!1051386 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (Context!10703 call!468854)) (h!70526 s!2326)))))

(declare-fun b!5915855 () Bool)

(assert (=> b!5915855 (= e!3622218 ((_ map or) call!468856 call!468857))))

(declare-fun bm!468854 () Bool)

(assert (=> bm!468854 (= call!468856 (derivationStepZipperDown!1217 (ite c!1051386 (regOne!32447 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (ite c!1051387 (regTwo!32446 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (ite c!1051388 (regOne!32446 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (reg!16296 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))))) (ite (or c!1051386 c!1051387) (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (Context!10703 call!468855)) (h!70526 s!2326)))))

(declare-fun b!5915856 () Bool)

(assert (=> b!5915856 (= e!3622216 call!468858)))

(assert (= (and d!1855451 c!1051384) b!5915854))

(assert (= (and d!1855451 (not c!1051384)) b!5915853))

(assert (= (and b!5915853 c!1051386) b!5915855))

(assert (= (and b!5915853 (not c!1051386)) b!5915850))

(assert (= (and b!5915850 res!2480432) b!5915849))

(assert (= (and b!5915850 c!1051387) b!5915852))

(assert (= (and b!5915850 (not c!1051387)) b!5915848))

(assert (= (and b!5915848 c!1051388) b!5915856))

(assert (= (and b!5915848 (not c!1051388)) b!5915847))

(assert (= (and b!5915847 c!1051385) b!5915851))

(assert (= (and b!5915847 (not c!1051385)) b!5915846))

(assert (= (or b!5915856 b!5915851) bm!468851))

(assert (= (or b!5915856 b!5915851) bm!468852))

(assert (= (or b!5915852 bm!468851) bm!468850))

(assert (= (or b!5915852 bm!468852) bm!468849))

(assert (= (or b!5915855 b!5915852) bm!468853))

(assert (= (or b!5915855 bm!468849) bm!468854))

(declare-fun m!6813768 () Bool)

(assert (=> bm!468854 m!6813768))

(declare-fun m!6813770 () Bool)

(assert (=> bm!468850 m!6813770))

(declare-fun m!6813772 () Bool)

(assert (=> b!5915854 m!6813772))

(declare-fun m!6813774 () Bool)

(assert (=> b!5915849 m!6813774))

(declare-fun m!6813776 () Bool)

(assert (=> bm!468853 m!6813776))

(assert (=> bm!468763 d!1855451))

(declare-fun d!1855453 () Bool)

(assert (=> d!1855453 (= (isUnion!834 lt!2309615) ((_ is Union!15967) lt!2309615))))

(assert (=> b!5915229 d!1855453))

(declare-fun bs!1400535 () Bool)

(declare-fun d!1855455 () Bool)

(assert (= bs!1400535 (and d!1855455 d!1855271)))

(declare-fun lambda!322776 () Int)

(assert (=> bs!1400535 (= lambda!322776 lambda!322749)))

(declare-fun bs!1400536 () Bool)

(assert (= bs!1400536 (and d!1855455 d!1855273)))

(assert (=> bs!1400536 (= lambda!322776 lambda!322750)))

(declare-fun bs!1400537 () Bool)

(assert (= bs!1400537 (and d!1855455 d!1855267)))

(assert (=> bs!1400537 (= lambda!322776 lambda!322743)))

(declare-fun bs!1400538 () Bool)

(assert (= bs!1400538 (and d!1855455 d!1855283)))

(assert (=> bs!1400538 (= lambda!322776 lambda!322751)))

(declare-fun bs!1400539 () Bool)

(assert (= bs!1400539 (and d!1855455 d!1855285)))

(assert (=> bs!1400539 (= lambda!322776 lambda!322754)))

(declare-fun bs!1400540 () Bool)

(assert (= bs!1400540 (and d!1855455 d!1855269)))

(assert (=> bs!1400540 (= lambda!322776 lambda!322746)))

(declare-fun bs!1400541 () Bool)

(assert (= bs!1400541 (and d!1855455 d!1855433)))

(assert (=> bs!1400541 (= lambda!322776 lambda!322773)))

(declare-fun b!5915857 () Bool)

(declare-fun e!3622221 () Bool)

(declare-fun lt!2309651 () Regex!15967)

(assert (=> b!5915857 (= e!3622221 (isEmptyLang!1404 lt!2309651))))

(declare-fun b!5915858 () Bool)

(declare-fun e!3622226 () Regex!15967)

(assert (=> b!5915858 (= e!3622226 (h!70524 (t!377589 (unfocusZipperList!1388 zl!343))))))

(declare-fun e!3622222 () Bool)

(assert (=> d!1855455 e!3622222))

(declare-fun res!2480434 () Bool)

(assert (=> d!1855455 (=> (not res!2480434) (not e!3622222))))

(assert (=> d!1855455 (= res!2480434 (validRegex!7703 lt!2309651))))

(assert (=> d!1855455 (= lt!2309651 e!3622226)))

(declare-fun c!1051391 () Bool)

(declare-fun e!3622224 () Bool)

(assert (=> d!1855455 (= c!1051391 e!3622224)))

(declare-fun res!2480433 () Bool)

(assert (=> d!1855455 (=> (not res!2480433) (not e!3622224))))

(assert (=> d!1855455 (= res!2480433 ((_ is Cons!64076) (t!377589 (unfocusZipperList!1388 zl!343))))))

(assert (=> d!1855455 (forall!15050 (t!377589 (unfocusZipperList!1388 zl!343)) lambda!322776)))

(assert (=> d!1855455 (= (generalisedUnion!1811 (t!377589 (unfocusZipperList!1388 zl!343))) lt!2309651)))

(declare-fun b!5915859 () Bool)

(assert (=> b!5915859 (= e!3622222 e!3622221)))

(declare-fun c!1051390 () Bool)

(assert (=> b!5915859 (= c!1051390 (isEmpty!35930 (t!377589 (unfocusZipperList!1388 zl!343))))))

(declare-fun b!5915860 () Bool)

(declare-fun e!3622225 () Regex!15967)

(assert (=> b!5915860 (= e!3622225 EmptyLang!15967)))

(declare-fun b!5915861 () Bool)

(assert (=> b!5915861 (= e!3622226 e!3622225)))

(declare-fun c!1051389 () Bool)

(assert (=> b!5915861 (= c!1051389 ((_ is Cons!64076) (t!377589 (unfocusZipperList!1388 zl!343))))))

(declare-fun b!5915862 () Bool)

(declare-fun e!3622223 () Bool)

(assert (=> b!5915862 (= e!3622223 (isUnion!834 lt!2309651))))

(declare-fun b!5915863 () Bool)

(assert (=> b!5915863 (= e!3622223 (= lt!2309651 (head!12476 (t!377589 (unfocusZipperList!1388 zl!343)))))))

(declare-fun b!5915864 () Bool)

(assert (=> b!5915864 (= e!3622225 (Union!15967 (h!70524 (t!377589 (unfocusZipperList!1388 zl!343))) (generalisedUnion!1811 (t!377589 (t!377589 (unfocusZipperList!1388 zl!343))))))))

(declare-fun b!5915865 () Bool)

(assert (=> b!5915865 (= e!3622224 (isEmpty!35930 (t!377589 (t!377589 (unfocusZipperList!1388 zl!343)))))))

(declare-fun b!5915866 () Bool)

(assert (=> b!5915866 (= e!3622221 e!3622223)))

(declare-fun c!1051392 () Bool)

(assert (=> b!5915866 (= c!1051392 (isEmpty!35930 (tail!11561 (t!377589 (unfocusZipperList!1388 zl!343)))))))

(assert (= (and d!1855455 res!2480433) b!5915865))

(assert (= (and d!1855455 c!1051391) b!5915858))

(assert (= (and d!1855455 (not c!1051391)) b!5915861))

(assert (= (and b!5915861 c!1051389) b!5915864))

(assert (= (and b!5915861 (not c!1051389)) b!5915860))

(assert (= (and d!1855455 res!2480434) b!5915859))

(assert (= (and b!5915859 c!1051390) b!5915857))

(assert (= (and b!5915859 (not c!1051390)) b!5915866))

(assert (= (and b!5915866 c!1051392) b!5915863))

(assert (= (and b!5915866 (not c!1051392)) b!5915862))

(declare-fun m!6813778 () Bool)

(assert (=> b!5915865 m!6813778))

(declare-fun m!6813780 () Bool)

(assert (=> d!1855455 m!6813780))

(declare-fun m!6813782 () Bool)

(assert (=> d!1855455 m!6813782))

(declare-fun m!6813784 () Bool)

(assert (=> b!5915857 m!6813784))

(declare-fun m!6813786 () Bool)

(assert (=> b!5915862 m!6813786))

(declare-fun m!6813788 () Bool)

(assert (=> b!5915864 m!6813788))

(assert (=> b!5915859 m!6813362))

(declare-fun m!6813790 () Bool)

(assert (=> b!5915863 m!6813790))

(declare-fun m!6813792 () Bool)

(assert (=> b!5915866 m!6813792))

(assert (=> b!5915866 m!6813792))

(declare-fun m!6813794 () Bool)

(assert (=> b!5915866 m!6813794))

(assert (=> b!5915231 d!1855455))

(declare-fun d!1855457 () Bool)

(declare-fun nullableFct!1934 (Regex!15967) Bool)

(assert (=> d!1855457 (= (nullable!5962 (reg!16296 r!7292)) (nullableFct!1934 (reg!16296 r!7292)))))

(declare-fun bs!1400542 () Bool)

(assert (= bs!1400542 d!1855457))

(declare-fun m!6813796 () Bool)

(assert (=> bs!1400542 m!6813796))

(assert (=> b!5915159 d!1855457))

(declare-fun d!1855459 () Bool)

(assert (=> d!1855459 (= (isEmpty!35933 s!2326) ((_ is Nil!64078) s!2326))))

(assert (=> bm!468751 d!1855459))

(declare-fun d!1855461 () Bool)

(assert (=> d!1855461 true))

(assert (=> d!1855461 true))

(declare-fun res!2480435 () Bool)

(assert (=> d!1855461 (= (choose!44627 lambda!322695) res!2480435)))

(assert (=> d!1855257 d!1855461))

(declare-fun d!1855463 () Bool)

(assert (=> d!1855463 (= (isEmptyLang!1404 lt!2309615) ((_ is EmptyLang!15967) lt!2309615))))

(assert (=> b!5915224 d!1855463))

(declare-fun d!1855465 () Bool)

(declare-fun res!2480440 () Bool)

(declare-fun e!3622231 () Bool)

(assert (=> d!1855465 (=> res!2480440 e!3622231)))

(assert (=> d!1855465 (= res!2480440 ((_ is Nil!64077) lt!2309567))))

(assert (=> d!1855465 (= (noDuplicate!1825 lt!2309567) e!3622231)))

(declare-fun b!5915871 () Bool)

(declare-fun e!3622232 () Bool)

(assert (=> b!5915871 (= e!3622231 e!3622232)))

(declare-fun res!2480441 () Bool)

(assert (=> b!5915871 (=> (not res!2480441) (not e!3622232))))

(declare-fun contains!19952 (List!64201 Context!10702) Bool)

(assert (=> b!5915871 (= res!2480441 (not (contains!19952 (t!377590 lt!2309567) (h!70525 lt!2309567))))))

(declare-fun b!5915872 () Bool)

(assert (=> b!5915872 (= e!3622232 (noDuplicate!1825 (t!377590 lt!2309567)))))

(assert (= (and d!1855465 (not res!2480440)) b!5915871))

(assert (= (and b!5915871 res!2480441) b!5915872))

(declare-fun m!6813798 () Bool)

(assert (=> b!5915871 m!6813798))

(declare-fun m!6813800 () Bool)

(assert (=> b!5915872 m!6813800))

(assert (=> d!1855215 d!1855465))

(declare-fun d!1855467 () Bool)

(declare-fun e!3622241 () Bool)

(assert (=> d!1855467 e!3622241))

(declare-fun res!2480446 () Bool)

(assert (=> d!1855467 (=> (not res!2480446) (not e!3622241))))

(declare-fun res!2480447 () List!64201)

(assert (=> d!1855467 (= res!2480446 (noDuplicate!1825 res!2480447))))

(declare-fun e!3622239 () Bool)

(assert (=> d!1855467 e!3622239))

(assert (=> d!1855467 (= (choose!44625 z!1189) res!2480447)))

(declare-fun b!5915880 () Bool)

(declare-fun e!3622240 () Bool)

(declare-fun tp!1643658 () Bool)

(assert (=> b!5915880 (= e!3622240 tp!1643658)))

(declare-fun b!5915879 () Bool)

(declare-fun tp!1643657 () Bool)

(assert (=> b!5915879 (= e!3622239 (and (inv!83164 (h!70525 res!2480447)) e!3622240 tp!1643657))))

(declare-fun b!5915881 () Bool)

(assert (=> b!5915881 (= e!3622241 (= (content!11792 res!2480447) z!1189))))

(assert (= b!5915879 b!5915880))

(assert (= (and d!1855467 ((_ is Cons!64077) res!2480447)) b!5915879))

(assert (= (and d!1855467 res!2480446) b!5915881))

(declare-fun m!6813802 () Bool)

(assert (=> d!1855467 m!6813802))

(declare-fun m!6813804 () Bool)

(assert (=> b!5915879 m!6813804))

(declare-fun m!6813806 () Bool)

(assert (=> b!5915881 m!6813806))

(assert (=> d!1855215 d!1855467))

(declare-fun c!1051393 () Bool)

(declare-fun bm!468855 () Bool)

(declare-fun call!468860 () Bool)

(assert (=> bm!468855 (= call!468860 (validRegex!7703 (ite c!1051393 (regOne!32447 (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))) (regOne!32446 (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))))))))

(declare-fun b!5915882 () Bool)

(declare-fun res!2480452 () Bool)

(declare-fun e!3622243 () Bool)

(assert (=> b!5915882 (=> res!2480452 e!3622243)))

(assert (=> b!5915882 (= res!2480452 (not ((_ is Concat!24812) (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292)))))))

(declare-fun e!3622246 () Bool)

(assert (=> b!5915882 (= e!3622246 e!3622243)))

(declare-fun d!1855469 () Bool)

(declare-fun res!2480450 () Bool)

(declare-fun e!3622247 () Bool)

(assert (=> d!1855469 (=> res!2480450 e!3622247)))

(assert (=> d!1855469 (= res!2480450 ((_ is ElementMatch!15967) (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))))))

(assert (=> d!1855469 (= (validRegex!7703 (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))) e!3622247)))

(declare-fun bm!468856 () Bool)

(declare-fun call!468862 () Bool)

(declare-fun c!1051394 () Bool)

(assert (=> bm!468856 (= call!468862 (validRegex!7703 (ite c!1051394 (reg!16296 (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))) (ite c!1051393 (regTwo!32447 (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))) (regTwo!32446 (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292)))))))))

(declare-fun b!5915883 () Bool)

(declare-fun e!3622248 () Bool)

(assert (=> b!5915883 (= e!3622243 e!3622248)))

(declare-fun res!2480448 () Bool)

(assert (=> b!5915883 (=> (not res!2480448) (not e!3622248))))

(assert (=> b!5915883 (= res!2480448 call!468860)))

(declare-fun b!5915884 () Bool)

(declare-fun e!3622242 () Bool)

(assert (=> b!5915884 (= e!3622242 e!3622246)))

(assert (=> b!5915884 (= c!1051393 ((_ is Union!15967) (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))))))

(declare-fun b!5915885 () Bool)

(declare-fun e!3622245 () Bool)

(assert (=> b!5915885 (= e!3622242 e!3622245)))

(declare-fun res!2480449 () Bool)

(assert (=> b!5915885 (= res!2480449 (not (nullable!5962 (reg!16296 (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))))))))

(assert (=> b!5915885 (=> (not res!2480449) (not e!3622245))))

(declare-fun b!5915886 () Bool)

(assert (=> b!5915886 (= e!3622245 call!468862)))

(declare-fun b!5915887 () Bool)

(assert (=> b!5915887 (= e!3622247 e!3622242)))

(assert (=> b!5915887 (= c!1051394 ((_ is Star!15967) (ite c!1051225 (regOne!32447 r!7292) (regOne!32446 r!7292))))))

(declare-fun b!5915888 () Bool)

(declare-fun call!468861 () Bool)

(assert (=> b!5915888 (= e!3622248 call!468861)))

(declare-fun bm!468857 () Bool)

(assert (=> bm!468857 (= call!468861 call!468862)))

(declare-fun b!5915889 () Bool)

(declare-fun res!2480451 () Bool)

(declare-fun e!3622244 () Bool)

(assert (=> b!5915889 (=> (not res!2480451) (not e!3622244))))

(assert (=> b!5915889 (= res!2480451 call!468860)))

(assert (=> b!5915889 (= e!3622246 e!3622244)))

(declare-fun b!5915890 () Bool)

(assert (=> b!5915890 (= e!3622244 call!468861)))

(assert (= (and d!1855469 (not res!2480450)) b!5915887))

(assert (= (and b!5915887 c!1051394) b!5915885))

(assert (= (and b!5915887 (not c!1051394)) b!5915884))

(assert (= (and b!5915885 res!2480449) b!5915886))

(assert (= (and b!5915884 c!1051393) b!5915889))

(assert (= (and b!5915884 (not c!1051393)) b!5915882))

(assert (= (and b!5915889 res!2480451) b!5915890))

(assert (= (and b!5915882 (not res!2480452)) b!5915883))

(assert (= (and b!5915883 res!2480448) b!5915888))

(assert (= (or b!5915890 b!5915888) bm!468857))

(assert (= (or b!5915889 b!5915883) bm!468855))

(assert (= (or b!5915886 bm!468857) bm!468856))

(declare-fun m!6813808 () Bool)

(assert (=> bm!468855 m!6813808))

(declare-fun m!6813810 () Bool)

(assert (=> bm!468856 m!6813810))

(declare-fun m!6813812 () Bool)

(assert (=> b!5915885 m!6813812))

(assert (=> bm!468758 d!1855469))

(declare-fun d!1855471 () Bool)

(declare-fun res!2480457 () Bool)

(declare-fun e!3622253 () Bool)

(assert (=> d!1855471 (=> res!2480457 e!3622253)))

(assert (=> d!1855471 (= res!2480457 ((_ is Nil!64076) (exprs!5851 (h!70525 zl!343))))))

(assert (=> d!1855471 (= (forall!15050 (exprs!5851 (h!70525 zl!343)) lambda!322751) e!3622253)))

(declare-fun b!5915895 () Bool)

(declare-fun e!3622254 () Bool)

(assert (=> b!5915895 (= e!3622253 e!3622254)))

(declare-fun res!2480458 () Bool)

(assert (=> b!5915895 (=> (not res!2480458) (not e!3622254))))

(declare-fun dynLambda!25052 (Int Regex!15967) Bool)

(assert (=> b!5915895 (= res!2480458 (dynLambda!25052 lambda!322751 (h!70524 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun b!5915896 () Bool)

(assert (=> b!5915896 (= e!3622254 (forall!15050 (t!377589 (exprs!5851 (h!70525 zl!343))) lambda!322751))))

(assert (= (and d!1855471 (not res!2480457)) b!5915895))

(assert (= (and b!5915895 res!2480458) b!5915896))

(declare-fun b_lambda!222237 () Bool)

(assert (=> (not b_lambda!222237) (not b!5915895)))

(declare-fun m!6813814 () Bool)

(assert (=> b!5915895 m!6813814))

(declare-fun m!6813816 () Bool)

(assert (=> b!5915896 m!6813816))

(assert (=> d!1855283 d!1855471))

(declare-fun b!5915906 () Bool)

(declare-fun e!3622259 () List!64202)

(assert (=> b!5915906 (= e!3622259 (Cons!64078 (h!70526 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078))) (++!14064 (t!377591 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078))) (t!377591 s!2326))))))

(declare-fun b!5915905 () Bool)

(assert (=> b!5915905 (= e!3622259 (t!377591 s!2326))))

(declare-fun b!5915908 () Bool)

(declare-fun e!3622260 () Bool)

(declare-fun lt!2309654 () List!64202)

(assert (=> b!5915908 (= e!3622260 (or (not (= (t!377591 s!2326) Nil!64078)) (= lt!2309654 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)))))))

(declare-fun d!1855473 () Bool)

(assert (=> d!1855473 e!3622260))

(declare-fun res!2480463 () Bool)

(assert (=> d!1855473 (=> (not res!2480463) (not e!3622260))))

(declare-fun content!11794 (List!64202) (InoxSet C!32204))

(assert (=> d!1855473 (= res!2480463 (= (content!11794 lt!2309654) ((_ map or) (content!11794 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078))) (content!11794 (t!377591 s!2326)))))))

(assert (=> d!1855473 (= lt!2309654 e!3622259)))

(declare-fun c!1051397 () Bool)

(assert (=> d!1855473 (= c!1051397 ((_ is Nil!64078) (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078))))))

(assert (=> d!1855473 (= (++!14064 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (t!377591 s!2326)) lt!2309654)))

(declare-fun b!5915907 () Bool)

(declare-fun res!2480464 () Bool)

(assert (=> b!5915907 (=> (not res!2480464) (not e!3622260))))

(declare-fun size!40134 (List!64202) Int)

(assert (=> b!5915907 (= res!2480464 (= (size!40134 lt!2309654) (+ (size!40134 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078))) (size!40134 (t!377591 s!2326)))))))

(assert (= (and d!1855473 c!1051397) b!5915905))

(assert (= (and d!1855473 (not c!1051397)) b!5915906))

(assert (= (and d!1855473 res!2480463) b!5915907))

(assert (= (and b!5915907 res!2480464) b!5915908))

(declare-fun m!6813818 () Bool)

(assert (=> b!5915906 m!6813818))

(declare-fun m!6813820 () Bool)

(assert (=> d!1855473 m!6813820))

(assert (=> d!1855473 m!6813336))

(declare-fun m!6813822 () Bool)

(assert (=> d!1855473 m!6813822))

(declare-fun m!6813824 () Bool)

(assert (=> d!1855473 m!6813824))

(declare-fun m!6813826 () Bool)

(assert (=> b!5915907 m!6813826))

(assert (=> b!5915907 m!6813336))

(declare-fun m!6813828 () Bool)

(assert (=> b!5915907 m!6813828))

(declare-fun m!6813830 () Bool)

(assert (=> b!5915907 m!6813830))

(assert (=> b!5915191 d!1855473))

(declare-fun b!5915910 () Bool)

(declare-fun e!3622261 () List!64202)

(assert (=> b!5915910 (= e!3622261 (Cons!64078 (h!70526 Nil!64078) (++!14064 (t!377591 Nil!64078) (Cons!64078 (h!70526 s!2326) Nil!64078))))))

(declare-fun b!5915909 () Bool)

(assert (=> b!5915909 (= e!3622261 (Cons!64078 (h!70526 s!2326) Nil!64078))))

(declare-fun b!5915912 () Bool)

(declare-fun e!3622262 () Bool)

(declare-fun lt!2309655 () List!64202)

(assert (=> b!5915912 (= e!3622262 (or (not (= (Cons!64078 (h!70526 s!2326) Nil!64078) Nil!64078)) (= lt!2309655 Nil!64078)))))

(declare-fun d!1855475 () Bool)

(assert (=> d!1855475 e!3622262))

(declare-fun res!2480465 () Bool)

(assert (=> d!1855475 (=> (not res!2480465) (not e!3622262))))

(assert (=> d!1855475 (= res!2480465 (= (content!11794 lt!2309655) ((_ map or) (content!11794 Nil!64078) (content!11794 (Cons!64078 (h!70526 s!2326) Nil!64078)))))))

(assert (=> d!1855475 (= lt!2309655 e!3622261)))

(declare-fun c!1051398 () Bool)

(assert (=> d!1855475 (= c!1051398 ((_ is Nil!64078) Nil!64078))))

(assert (=> d!1855475 (= (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) lt!2309655)))

(declare-fun b!5915911 () Bool)

(declare-fun res!2480466 () Bool)

(assert (=> b!5915911 (=> (not res!2480466) (not e!3622262))))

(assert (=> b!5915911 (= res!2480466 (= (size!40134 lt!2309655) (+ (size!40134 Nil!64078) (size!40134 (Cons!64078 (h!70526 s!2326) Nil!64078)))))))

(assert (= (and d!1855475 c!1051398) b!5915909))

(assert (= (and d!1855475 (not c!1051398)) b!5915910))

(assert (= (and d!1855475 res!2480465) b!5915911))

(assert (= (and b!5915911 res!2480466) b!5915912))

(declare-fun m!6813832 () Bool)

(assert (=> b!5915910 m!6813832))

(declare-fun m!6813834 () Bool)

(assert (=> d!1855475 m!6813834))

(declare-fun m!6813836 () Bool)

(assert (=> d!1855475 m!6813836))

(declare-fun m!6813838 () Bool)

(assert (=> d!1855475 m!6813838))

(declare-fun m!6813840 () Bool)

(assert (=> b!5915911 m!6813840))

(declare-fun m!6813842 () Bool)

(assert (=> b!5915911 m!6813842))

(declare-fun m!6813844 () Bool)

(assert (=> b!5915911 m!6813844))

(assert (=> b!5915191 d!1855475))

(declare-fun d!1855477 () Bool)

(assert (=> d!1855477 (= (++!14064 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (t!377591 s!2326)) s!2326)))

(declare-fun lt!2309658 () Unit!157205)

(declare-fun choose!44631 (List!64202 C!32204 List!64202 List!64202) Unit!157205)

(assert (=> d!1855477 (= lt!2309658 (choose!44631 Nil!64078 (h!70526 s!2326) (t!377591 s!2326) s!2326))))

(assert (=> d!1855477 (= (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) (t!377591 s!2326))) s!2326)))

(assert (=> d!1855477 (= (lemmaMoveElementToOtherListKeepsConcatEq!2159 Nil!64078 (h!70526 s!2326) (t!377591 s!2326) s!2326) lt!2309658)))

(declare-fun bs!1400543 () Bool)

(assert (= bs!1400543 d!1855477))

(assert (=> bs!1400543 m!6813336))

(assert (=> bs!1400543 m!6813336))

(assert (=> bs!1400543 m!6813338))

(declare-fun m!6813846 () Bool)

(assert (=> bs!1400543 m!6813846))

(declare-fun m!6813848 () Bool)

(assert (=> bs!1400543 m!6813848))

(assert (=> b!5915191 d!1855477))

(declare-fun d!1855479 () Bool)

(declare-fun e!3622267 () Bool)

(assert (=> d!1855479 e!3622267))

(declare-fun res!2480468 () Bool)

(assert (=> d!1855479 (=> res!2480468 e!3622267)))

(declare-fun e!3622265 () Bool)

(assert (=> d!1855479 (= res!2480468 e!3622265)))

(declare-fun res!2480471 () Bool)

(assert (=> d!1855479 (=> (not res!2480471) (not e!3622265))))

(declare-fun lt!2309661 () Option!15858)

(assert (=> d!1855479 (= res!2480471 (isDefined!12561 lt!2309661))))

(declare-fun e!3622263 () Option!15858)

(assert (=> d!1855479 (= lt!2309661 e!3622263)))

(declare-fun c!1051399 () Bool)

(declare-fun e!3622266 () Bool)

(assert (=> d!1855479 (= c!1051399 e!3622266)))

(declare-fun res!2480467 () Bool)

(assert (=> d!1855479 (=> (not res!2480467) (not e!3622266))))

(assert (=> d!1855479 (= res!2480467 (matchR!8150 (regOne!32446 r!7292) (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078))))))

(assert (=> d!1855479 (validRegex!7703 (regOne!32446 r!7292))))

(assert (=> d!1855479 (= (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (t!377591 s!2326) s!2326) lt!2309661)))

(declare-fun b!5915913 () Bool)

(assert (=> b!5915913 (= e!3622263 (Some!15857 (tuple2!65893 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (t!377591 s!2326))))))

(declare-fun b!5915914 () Bool)

(assert (=> b!5915914 (= e!3622266 (matchR!8150 (regTwo!32446 r!7292) (t!377591 s!2326)))))

(declare-fun b!5915915 () Bool)

(assert (=> b!5915915 (= e!3622265 (= (++!14064 (_1!36249 (get!22063 lt!2309661)) (_2!36249 (get!22063 lt!2309661))) s!2326))))

(declare-fun b!5915916 () Bool)

(declare-fun res!2480469 () Bool)

(assert (=> b!5915916 (=> (not res!2480469) (not e!3622265))))

(assert (=> b!5915916 (= res!2480469 (matchR!8150 (regOne!32446 r!7292) (_1!36249 (get!22063 lt!2309661))))))

(declare-fun b!5915917 () Bool)

(declare-fun e!3622264 () Option!15858)

(assert (=> b!5915917 (= e!3622263 e!3622264)))

(declare-fun c!1051400 () Bool)

(assert (=> b!5915917 (= c!1051400 ((_ is Nil!64078) (t!377591 s!2326)))))

(declare-fun b!5915918 () Bool)

(declare-fun res!2480470 () Bool)

(assert (=> b!5915918 (=> (not res!2480470) (not e!3622265))))

(assert (=> b!5915918 (= res!2480470 (matchR!8150 (regTwo!32446 r!7292) (_2!36249 (get!22063 lt!2309661))))))

(declare-fun b!5915919 () Bool)

(assert (=> b!5915919 (= e!3622264 None!15857)))

(declare-fun b!5915920 () Bool)

(assert (=> b!5915920 (= e!3622267 (not (isDefined!12561 lt!2309661)))))

(declare-fun b!5915921 () Bool)

(declare-fun lt!2309659 () Unit!157205)

(declare-fun lt!2309660 () Unit!157205)

(assert (=> b!5915921 (= lt!2309659 lt!2309660)))

(assert (=> b!5915921 (= (++!14064 (++!14064 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (Cons!64078 (h!70526 (t!377591 s!2326)) Nil!64078)) (t!377591 (t!377591 s!2326))) s!2326)))

(assert (=> b!5915921 (= lt!2309660 (lemmaMoveElementToOtherListKeepsConcatEq!2159 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (h!70526 (t!377591 s!2326)) (t!377591 (t!377591 s!2326)) s!2326))))

(assert (=> b!5915921 (= e!3622264 (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) (++!14064 (++!14064 Nil!64078 (Cons!64078 (h!70526 s!2326) Nil!64078)) (Cons!64078 (h!70526 (t!377591 s!2326)) Nil!64078)) (t!377591 (t!377591 s!2326)) s!2326))))

(assert (= (and d!1855479 res!2480467) b!5915914))

(assert (= (and d!1855479 c!1051399) b!5915913))

(assert (= (and d!1855479 (not c!1051399)) b!5915917))

(assert (= (and b!5915917 c!1051400) b!5915919))

(assert (= (and b!5915917 (not c!1051400)) b!5915921))

(assert (= (and d!1855479 res!2480471) b!5915916))

(assert (= (and b!5915916 res!2480469) b!5915918))

(assert (= (and b!5915918 res!2480470) b!5915915))

(assert (= (and d!1855479 (not res!2480468)) b!5915920))

(declare-fun m!6813850 () Bool)

(assert (=> d!1855479 m!6813850))

(assert (=> d!1855479 m!6813336))

(declare-fun m!6813852 () Bool)

(assert (=> d!1855479 m!6813852))

(assert (=> d!1855479 m!6813324))

(declare-fun m!6813854 () Bool)

(assert (=> b!5915914 m!6813854))

(declare-fun m!6813856 () Bool)

(assert (=> b!5915916 m!6813856))

(declare-fun m!6813858 () Bool)

(assert (=> b!5915916 m!6813858))

(assert (=> b!5915918 m!6813856))

(declare-fun m!6813860 () Bool)

(assert (=> b!5915918 m!6813860))

(assert (=> b!5915915 m!6813856))

(declare-fun m!6813862 () Bool)

(assert (=> b!5915915 m!6813862))

(assert (=> b!5915921 m!6813336))

(declare-fun m!6813864 () Bool)

(assert (=> b!5915921 m!6813864))

(assert (=> b!5915921 m!6813864))

(declare-fun m!6813866 () Bool)

(assert (=> b!5915921 m!6813866))

(assert (=> b!5915921 m!6813336))

(declare-fun m!6813868 () Bool)

(assert (=> b!5915921 m!6813868))

(assert (=> b!5915921 m!6813864))

(declare-fun m!6813870 () Bool)

(assert (=> b!5915921 m!6813870))

(assert (=> b!5915920 m!6813850))

(assert (=> b!5915191 d!1855479))

(declare-fun d!1855481 () Bool)

(declare-fun res!2480472 () Bool)

(declare-fun e!3622268 () Bool)

(assert (=> d!1855481 (=> res!2480472 e!3622268)))

(assert (=> d!1855481 (= res!2480472 ((_ is Nil!64076) (exprs!5851 setElem!40146)))))

(assert (=> d!1855481 (= (forall!15050 (exprs!5851 setElem!40146) lambda!322743) e!3622268)))

(declare-fun b!5915922 () Bool)

(declare-fun e!3622269 () Bool)

(assert (=> b!5915922 (= e!3622268 e!3622269)))

(declare-fun res!2480473 () Bool)

(assert (=> b!5915922 (=> (not res!2480473) (not e!3622269))))

(assert (=> b!5915922 (= res!2480473 (dynLambda!25052 lambda!322743 (h!70524 (exprs!5851 setElem!40146))))))

(declare-fun b!5915923 () Bool)

(assert (=> b!5915923 (= e!3622269 (forall!15050 (t!377589 (exprs!5851 setElem!40146)) lambda!322743))))

(assert (= (and d!1855481 (not res!2480472)) b!5915922))

(assert (= (and b!5915922 res!2480473) b!5915923))

(declare-fun b_lambda!222239 () Bool)

(assert (=> (not b_lambda!222239) (not b!5915922)))

(declare-fun m!6813872 () Bool)

(assert (=> b!5915922 m!6813872))

(declare-fun m!6813874 () Bool)

(assert (=> b!5915923 m!6813874))

(assert (=> d!1855267 d!1855481))

(assert (=> b!5915280 d!1855277))

(declare-fun d!1855483 () Bool)

(assert (=> d!1855483 (= (nullable!5962 r!7292) (nullableFct!1934 r!7292))))

(declare-fun bs!1400544 () Bool)

(assert (= bs!1400544 d!1855483))

(declare-fun m!6813876 () Bool)

(assert (=> bs!1400544 m!6813876))

(assert (=> b!5915075 d!1855483))

(declare-fun d!1855485 () Bool)

(assert (=> d!1855485 (= (isEmpty!35930 (tail!11561 (exprs!5851 (h!70525 zl!343)))) ((_ is Nil!64076) (tail!11561 (exprs!5851 (h!70525 zl!343)))))))

(assert (=> b!5915276 d!1855485))

(declare-fun d!1855487 () Bool)

(assert (=> d!1855487 (= (tail!11561 (exprs!5851 (h!70525 zl!343))) (t!377589 (exprs!5851 (h!70525 zl!343))))))

(assert (=> b!5915276 d!1855487))

(declare-fun bm!468858 () Bool)

(declare-fun call!468863 () Bool)

(declare-fun c!1051401 () Bool)

(assert (=> bm!468858 (= call!468863 (validRegex!7703 (ite c!1051401 (regOne!32447 lt!2309615) (regOne!32446 lt!2309615))))))

(declare-fun b!5915924 () Bool)

(declare-fun res!2480478 () Bool)

(declare-fun e!3622271 () Bool)

(assert (=> b!5915924 (=> res!2480478 e!3622271)))

(assert (=> b!5915924 (= res!2480478 (not ((_ is Concat!24812) lt!2309615)))))

(declare-fun e!3622274 () Bool)

(assert (=> b!5915924 (= e!3622274 e!3622271)))

(declare-fun d!1855489 () Bool)

(declare-fun res!2480476 () Bool)

(declare-fun e!3622275 () Bool)

(assert (=> d!1855489 (=> res!2480476 e!3622275)))

(assert (=> d!1855489 (= res!2480476 ((_ is ElementMatch!15967) lt!2309615))))

(assert (=> d!1855489 (= (validRegex!7703 lt!2309615) e!3622275)))

(declare-fun call!468865 () Bool)

(declare-fun c!1051402 () Bool)

(declare-fun bm!468859 () Bool)

(assert (=> bm!468859 (= call!468865 (validRegex!7703 (ite c!1051402 (reg!16296 lt!2309615) (ite c!1051401 (regTwo!32447 lt!2309615) (regTwo!32446 lt!2309615)))))))

(declare-fun b!5915925 () Bool)

(declare-fun e!3622276 () Bool)

(assert (=> b!5915925 (= e!3622271 e!3622276)))

(declare-fun res!2480474 () Bool)

(assert (=> b!5915925 (=> (not res!2480474) (not e!3622276))))

(assert (=> b!5915925 (= res!2480474 call!468863)))

(declare-fun b!5915926 () Bool)

(declare-fun e!3622270 () Bool)

(assert (=> b!5915926 (= e!3622270 e!3622274)))

(assert (=> b!5915926 (= c!1051401 ((_ is Union!15967) lt!2309615))))

(declare-fun b!5915927 () Bool)

(declare-fun e!3622273 () Bool)

(assert (=> b!5915927 (= e!3622270 e!3622273)))

(declare-fun res!2480475 () Bool)

(assert (=> b!5915927 (= res!2480475 (not (nullable!5962 (reg!16296 lt!2309615))))))

(assert (=> b!5915927 (=> (not res!2480475) (not e!3622273))))

(declare-fun b!5915928 () Bool)

(assert (=> b!5915928 (= e!3622273 call!468865)))

(declare-fun b!5915929 () Bool)

(assert (=> b!5915929 (= e!3622275 e!3622270)))

(assert (=> b!5915929 (= c!1051402 ((_ is Star!15967) lt!2309615))))

(declare-fun b!5915930 () Bool)

(declare-fun call!468864 () Bool)

(assert (=> b!5915930 (= e!3622276 call!468864)))

(declare-fun bm!468860 () Bool)

(assert (=> bm!468860 (= call!468864 call!468865)))

(declare-fun b!5915931 () Bool)

(declare-fun res!2480477 () Bool)

(declare-fun e!3622272 () Bool)

(assert (=> b!5915931 (=> (not res!2480477) (not e!3622272))))

(assert (=> b!5915931 (= res!2480477 call!468863)))

(assert (=> b!5915931 (= e!3622274 e!3622272)))

(declare-fun b!5915932 () Bool)

(assert (=> b!5915932 (= e!3622272 call!468864)))

(assert (= (and d!1855489 (not res!2480476)) b!5915929))

(assert (= (and b!5915929 c!1051402) b!5915927))

(assert (= (and b!5915929 (not c!1051402)) b!5915926))

(assert (= (and b!5915927 res!2480475) b!5915928))

(assert (= (and b!5915926 c!1051401) b!5915931))

(assert (= (and b!5915926 (not c!1051401)) b!5915924))

(assert (= (and b!5915931 res!2480477) b!5915932))

(assert (= (and b!5915924 (not res!2480478)) b!5915925))

(assert (= (and b!5915925 res!2480474) b!5915930))

(assert (= (or b!5915932 b!5915930) bm!468860))

(assert (= (or b!5915931 b!5915925) bm!468858))

(assert (= (or b!5915928 bm!468860) bm!468859))

(declare-fun m!6813878 () Bool)

(assert (=> bm!468858 m!6813878))

(declare-fun m!6813880 () Bool)

(assert (=> bm!468859 m!6813880))

(declare-fun m!6813882 () Bool)

(assert (=> b!5915927 m!6813882))

(assert (=> d!1855269 d!1855489))

(declare-fun d!1855491 () Bool)

(declare-fun res!2480479 () Bool)

(declare-fun e!3622277 () Bool)

(assert (=> d!1855491 (=> res!2480479 e!3622277)))

(assert (=> d!1855491 (= res!2480479 ((_ is Nil!64076) (unfocusZipperList!1388 zl!343)))))

(assert (=> d!1855491 (= (forall!15050 (unfocusZipperList!1388 zl!343) lambda!322746) e!3622277)))

(declare-fun b!5915933 () Bool)

(declare-fun e!3622278 () Bool)

(assert (=> b!5915933 (= e!3622277 e!3622278)))

(declare-fun res!2480480 () Bool)

(assert (=> b!5915933 (=> (not res!2480480) (not e!3622278))))

(assert (=> b!5915933 (= res!2480480 (dynLambda!25052 lambda!322746 (h!70524 (unfocusZipperList!1388 zl!343))))))

(declare-fun b!5915934 () Bool)

(assert (=> b!5915934 (= e!3622278 (forall!15050 (t!377589 (unfocusZipperList!1388 zl!343)) lambda!322746))))

(assert (= (and d!1855491 (not res!2480479)) b!5915933))

(assert (= (and b!5915933 res!2480480) b!5915934))

(declare-fun b_lambda!222241 () Bool)

(assert (=> (not b_lambda!222241) (not b!5915933)))

(declare-fun m!6813884 () Bool)

(assert (=> b!5915933 m!6813884))

(declare-fun m!6813886 () Bool)

(assert (=> b!5915934 m!6813886))

(assert (=> d!1855269 d!1855491))

(assert (=> d!1855249 d!1855241))

(assert (=> d!1855249 d!1855223))

(declare-fun d!1855493 () Bool)

(assert (=> d!1855493 (= (matchR!8150 r!7292 s!2326) (matchRSpec!3068 r!7292 s!2326))))

(assert (=> d!1855493 true))

(declare-fun _$88!4392 () Unit!157205)

(assert (=> d!1855493 (= (choose!44626 r!7292 s!2326) _$88!4392)))

(declare-fun bs!1400545 () Bool)

(assert (= bs!1400545 d!1855493))

(assert (=> bs!1400545 m!6813130))

(assert (=> bs!1400545 m!6813128))

(assert (=> d!1855249 d!1855493))

(assert (=> d!1855249 d!1855253))

(declare-fun d!1855495 () Bool)

(assert (=> d!1855495 (= (Exists!3037 lambda!322739) (choose!44627 lambda!322739))))

(declare-fun bs!1400546 () Bool)

(assert (= bs!1400546 d!1855495))

(declare-fun m!6813888 () Bool)

(assert (=> bs!1400546 m!6813888))

(assert (=> d!1855263 d!1855495))

(declare-fun d!1855497 () Bool)

(assert (=> d!1855497 (= (Exists!3037 lambda!322740) (choose!44627 lambda!322740))))

(declare-fun bs!1400547 () Bool)

(assert (= bs!1400547 d!1855497))

(declare-fun m!6813890 () Bool)

(assert (=> bs!1400547 m!6813890))

(assert (=> d!1855263 d!1855497))

(declare-fun bs!1400548 () Bool)

(declare-fun d!1855499 () Bool)

(assert (= bs!1400548 (and d!1855499 b!5914987)))

(declare-fun lambda!322781 () Int)

(assert (=> bs!1400548 (not (= lambda!322781 lambda!322721))))

(declare-fun bs!1400549 () Bool)

(assert (= bs!1400549 (and d!1855499 d!1855263)))

(assert (=> bs!1400549 (not (= lambda!322781 lambda!322740))))

(declare-fun bs!1400550 () Bool)

(assert (= bs!1400550 (and d!1855499 b!5915813)))

(assert (=> bs!1400550 (not (= lambda!322781 lambda!322775))))

(assert (=> bs!1400549 (= lambda!322781 lambda!322739)))

(declare-fun bs!1400551 () Bool)

(assert (= bs!1400551 (and d!1855499 d!1855261)))

(assert (=> bs!1400551 (= lambda!322781 lambda!322734)))

(declare-fun bs!1400552 () Bool)

(assert (= bs!1400552 (and d!1855499 b!5914749)))

(assert (=> bs!1400552 (= lambda!322781 lambda!322695)))

(declare-fun bs!1400553 () Bool)

(assert (= bs!1400553 (and d!1855499 b!5915820)))

(assert (=> bs!1400553 (not (= lambda!322781 lambda!322774))))

(assert (=> bs!1400552 (not (= lambda!322781 lambda!322696))))

(declare-fun bs!1400554 () Bool)

(assert (= bs!1400554 (and d!1855499 b!5914980)))

(assert (=> bs!1400554 (not (= lambda!322781 lambda!322722))))

(assert (=> d!1855499 true))

(assert (=> d!1855499 true))

(assert (=> d!1855499 true))

(declare-fun lambda!322782 () Int)

(assert (=> bs!1400549 (= lambda!322782 lambda!322740)))

(assert (=> bs!1400550 (= (and (= (regOne!32446 r!7292) (regOne!32446 (regOne!32447 r!7292))) (= (regTwo!32446 r!7292) (regTwo!32446 (regOne!32447 r!7292)))) (= lambda!322782 lambda!322775))))

(assert (=> bs!1400549 (not (= lambda!322782 lambda!322739))))

(assert (=> bs!1400551 (not (= lambda!322782 lambda!322734))))

(assert (=> bs!1400552 (not (= lambda!322782 lambda!322695))))

(assert (=> bs!1400553 (not (= lambda!322782 lambda!322774))))

(declare-fun bs!1400555 () Bool)

(assert (= bs!1400555 d!1855499))

(assert (=> bs!1400555 (not (= lambda!322782 lambda!322781))))

(assert (=> bs!1400548 (not (= lambda!322782 lambda!322721))))

(assert (=> bs!1400552 (= lambda!322782 lambda!322696)))

(assert (=> bs!1400554 (= lambda!322782 lambda!322722)))

(assert (=> d!1855499 true))

(assert (=> d!1855499 true))

(assert (=> d!1855499 true))

(assert (=> d!1855499 (= (Exists!3037 lambda!322781) (Exists!3037 lambda!322782))))

(assert (=> d!1855499 true))

(declare-fun _$90!1578 () Unit!157205)

(assert (=> d!1855499 (= (choose!44629 (regOne!32446 r!7292) (regTwo!32446 r!7292) s!2326) _$90!1578)))

(declare-fun m!6813892 () Bool)

(assert (=> bs!1400555 m!6813892))

(declare-fun m!6813894 () Bool)

(assert (=> bs!1400555 m!6813894))

(assert (=> d!1855263 d!1855499))

(declare-fun bm!468861 () Bool)

(declare-fun call!468866 () Bool)

(declare-fun c!1051403 () Bool)

(assert (=> bm!468861 (= call!468866 (validRegex!7703 (ite c!1051403 (regOne!32447 (regOne!32446 r!7292)) (regOne!32446 (regOne!32446 r!7292)))))))

(declare-fun b!5915943 () Bool)

(declare-fun res!2480493 () Bool)

(declare-fun e!3622284 () Bool)

(assert (=> b!5915943 (=> res!2480493 e!3622284)))

(assert (=> b!5915943 (= res!2480493 (not ((_ is Concat!24812) (regOne!32446 r!7292))))))

(declare-fun e!3622287 () Bool)

(assert (=> b!5915943 (= e!3622287 e!3622284)))

(declare-fun d!1855501 () Bool)

(declare-fun res!2480491 () Bool)

(declare-fun e!3622288 () Bool)

(assert (=> d!1855501 (=> res!2480491 e!3622288)))

(assert (=> d!1855501 (= res!2480491 ((_ is ElementMatch!15967) (regOne!32446 r!7292)))))

(assert (=> d!1855501 (= (validRegex!7703 (regOne!32446 r!7292)) e!3622288)))

(declare-fun bm!468862 () Bool)

(declare-fun c!1051404 () Bool)

(declare-fun call!468868 () Bool)

(assert (=> bm!468862 (= call!468868 (validRegex!7703 (ite c!1051404 (reg!16296 (regOne!32446 r!7292)) (ite c!1051403 (regTwo!32447 (regOne!32446 r!7292)) (regTwo!32446 (regOne!32446 r!7292))))))))

(declare-fun b!5915944 () Bool)

(declare-fun e!3622289 () Bool)

(assert (=> b!5915944 (= e!3622284 e!3622289)))

(declare-fun res!2480489 () Bool)

(assert (=> b!5915944 (=> (not res!2480489) (not e!3622289))))

(assert (=> b!5915944 (= res!2480489 call!468866)))

(declare-fun b!5915945 () Bool)

(declare-fun e!3622283 () Bool)

(assert (=> b!5915945 (= e!3622283 e!3622287)))

(assert (=> b!5915945 (= c!1051403 ((_ is Union!15967) (regOne!32446 r!7292)))))

(declare-fun b!5915946 () Bool)

(declare-fun e!3622286 () Bool)

(assert (=> b!5915946 (= e!3622283 e!3622286)))

(declare-fun res!2480490 () Bool)

(assert (=> b!5915946 (= res!2480490 (not (nullable!5962 (reg!16296 (regOne!32446 r!7292)))))))

(assert (=> b!5915946 (=> (not res!2480490) (not e!3622286))))

(declare-fun b!5915947 () Bool)

(assert (=> b!5915947 (= e!3622286 call!468868)))

(declare-fun b!5915948 () Bool)

(assert (=> b!5915948 (= e!3622288 e!3622283)))

(assert (=> b!5915948 (= c!1051404 ((_ is Star!15967) (regOne!32446 r!7292)))))

(declare-fun b!5915949 () Bool)

(declare-fun call!468867 () Bool)

(assert (=> b!5915949 (= e!3622289 call!468867)))

(declare-fun bm!468863 () Bool)

(assert (=> bm!468863 (= call!468867 call!468868)))

(declare-fun b!5915950 () Bool)

(declare-fun res!2480492 () Bool)

(declare-fun e!3622285 () Bool)

(assert (=> b!5915950 (=> (not res!2480492) (not e!3622285))))

(assert (=> b!5915950 (= res!2480492 call!468866)))

(assert (=> b!5915950 (= e!3622287 e!3622285)))

(declare-fun b!5915951 () Bool)

(assert (=> b!5915951 (= e!3622285 call!468867)))

(assert (= (and d!1855501 (not res!2480491)) b!5915948))

(assert (= (and b!5915948 c!1051404) b!5915946))

(assert (= (and b!5915948 (not c!1051404)) b!5915945))

(assert (= (and b!5915946 res!2480490) b!5915947))

(assert (= (and b!5915945 c!1051403) b!5915950))

(assert (= (and b!5915945 (not c!1051403)) b!5915943))

(assert (= (and b!5915950 res!2480492) b!5915951))

(assert (= (and b!5915943 (not res!2480493)) b!5915944))

(assert (= (and b!5915944 res!2480489) b!5915949))

(assert (= (or b!5915951 b!5915949) bm!468863))

(assert (= (or b!5915950 b!5915944) bm!468861))

(assert (= (or b!5915947 bm!468863) bm!468862))

(declare-fun m!6813896 () Bool)

(assert (=> bm!468861 m!6813896))

(declare-fun m!6813898 () Bool)

(assert (=> bm!468862 m!6813898))

(declare-fun m!6813900 () Bool)

(assert (=> b!5915946 m!6813900))

(assert (=> d!1855263 d!1855501))

(declare-fun b!5915953 () Bool)

(declare-fun e!3622290 () List!64202)

(assert (=> b!5915953 (= e!3622290 (Cons!64078 (h!70526 (_1!36249 (get!22063 lt!2309606))) (++!14064 (t!377591 (_1!36249 (get!22063 lt!2309606))) (_2!36249 (get!22063 lt!2309606)))))))

(declare-fun b!5915952 () Bool)

(assert (=> b!5915952 (= e!3622290 (_2!36249 (get!22063 lt!2309606)))))

(declare-fun b!5915955 () Bool)

(declare-fun e!3622291 () Bool)

(declare-fun lt!2309662 () List!64202)

(assert (=> b!5915955 (= e!3622291 (or (not (= (_2!36249 (get!22063 lt!2309606)) Nil!64078)) (= lt!2309662 (_1!36249 (get!22063 lt!2309606)))))))

(declare-fun d!1855503 () Bool)

(assert (=> d!1855503 e!3622291))

(declare-fun res!2480494 () Bool)

(assert (=> d!1855503 (=> (not res!2480494) (not e!3622291))))

(assert (=> d!1855503 (= res!2480494 (= (content!11794 lt!2309662) ((_ map or) (content!11794 (_1!36249 (get!22063 lt!2309606))) (content!11794 (_2!36249 (get!22063 lt!2309606))))))))

(assert (=> d!1855503 (= lt!2309662 e!3622290)))

(declare-fun c!1051405 () Bool)

(assert (=> d!1855503 (= c!1051405 ((_ is Nil!64078) (_1!36249 (get!22063 lt!2309606))))))

(assert (=> d!1855503 (= (++!14064 (_1!36249 (get!22063 lt!2309606)) (_2!36249 (get!22063 lt!2309606))) lt!2309662)))

(declare-fun b!5915954 () Bool)

(declare-fun res!2480495 () Bool)

(assert (=> b!5915954 (=> (not res!2480495) (not e!3622291))))

(assert (=> b!5915954 (= res!2480495 (= (size!40134 lt!2309662) (+ (size!40134 (_1!36249 (get!22063 lt!2309606))) (size!40134 (_2!36249 (get!22063 lt!2309606))))))))

(assert (= (and d!1855503 c!1051405) b!5915952))

(assert (= (and d!1855503 (not c!1051405)) b!5915953))

(assert (= (and d!1855503 res!2480494) b!5915954))

(assert (= (and b!5915954 res!2480495) b!5915955))

(declare-fun m!6813902 () Bool)

(assert (=> b!5915953 m!6813902))

(declare-fun m!6813904 () Bool)

(assert (=> d!1855503 m!6813904))

(declare-fun m!6813906 () Bool)

(assert (=> d!1855503 m!6813906))

(declare-fun m!6813908 () Bool)

(assert (=> d!1855503 m!6813908))

(declare-fun m!6813910 () Bool)

(assert (=> b!5915954 m!6813910))

(declare-fun m!6813912 () Bool)

(assert (=> b!5915954 m!6813912))

(declare-fun m!6813914 () Bool)

(assert (=> b!5915954 m!6813914))

(assert (=> b!5915185 d!1855503))

(declare-fun d!1855505 () Bool)

(assert (=> d!1855505 (= (get!22063 lt!2309606) (v!51951 lt!2309606))))

(assert (=> b!5915185 d!1855505))

(declare-fun d!1855507 () Bool)

(assert (=> d!1855507 (= (isEmpty!35933 (tail!11560 s!2326)) ((_ is Nil!64078) (tail!11560 s!2326)))))

(assert (=> b!5915073 d!1855507))

(assert (=> b!5915073 d!1855443))

(declare-fun d!1855509 () Bool)

(declare-fun c!1051408 () Bool)

(assert (=> d!1855509 (= c!1051408 ((_ is Nil!64077) lt!2309567))))

(declare-fun e!3622294 () (InoxSet Context!10702))

(assert (=> d!1855509 (= (content!11792 lt!2309567) e!3622294)))

(declare-fun b!5915960 () Bool)

(assert (=> b!5915960 (= e!3622294 ((as const (Array Context!10702 Bool)) false))))

(declare-fun b!5915961 () Bool)

(assert (=> b!5915961 (= e!3622294 ((_ map or) (store ((as const (Array Context!10702 Bool)) false) (h!70525 lt!2309567) true) (content!11792 (t!377590 lt!2309567))))))

(assert (= (and d!1855509 c!1051408) b!5915960))

(assert (= (and d!1855509 (not c!1051408)) b!5915961))

(declare-fun m!6813916 () Bool)

(assert (=> b!5915961 m!6813916))

(declare-fun m!6813918 () Bool)

(assert (=> b!5915961 m!6813918))

(assert (=> b!5914829 d!1855509))

(assert (=> b!5915070 d!1855441))

(declare-fun bm!468864 () Bool)

(declare-fun call!468869 () Bool)

(assert (=> bm!468864 (= call!468869 (isEmpty!35933 s!2326))))

(declare-fun b!5915962 () Bool)

(declare-fun e!3622297 () Bool)

(assert (=> b!5915962 (= e!3622297 (= (head!12475 s!2326) (c!1051133 (regTwo!32446 r!7292))))))

(declare-fun b!5915963 () Bool)

(declare-fun e!3622299 () Bool)

(declare-fun e!3622301 () Bool)

(assert (=> b!5915963 (= e!3622299 e!3622301)))

(declare-fun c!1051409 () Bool)

(assert (=> b!5915963 (= c!1051409 ((_ is EmptyLang!15967) (regTwo!32446 r!7292)))))

(declare-fun b!5915964 () Bool)

(declare-fun lt!2309663 () Bool)

(assert (=> b!5915964 (= e!3622301 (not lt!2309663))))

(declare-fun b!5915965 () Bool)

(assert (=> b!5915965 (= e!3622299 (= lt!2309663 call!468869))))

(declare-fun b!5915967 () Bool)

(declare-fun e!3622296 () Bool)

(assert (=> b!5915967 (= e!3622296 (matchR!8150 (derivativeStep!4698 (regTwo!32446 r!7292) (head!12475 s!2326)) (tail!11560 s!2326)))))

(declare-fun b!5915968 () Bool)

(declare-fun res!2480503 () Bool)

(declare-fun e!3622298 () Bool)

(assert (=> b!5915968 (=> res!2480503 e!3622298)))

(assert (=> b!5915968 (= res!2480503 (not ((_ is ElementMatch!15967) (regTwo!32446 r!7292))))))

(assert (=> b!5915968 (= e!3622301 e!3622298)))

(declare-fun b!5915969 () Bool)

(declare-fun res!2480501 () Bool)

(assert (=> b!5915969 (=> res!2480501 e!3622298)))

(assert (=> b!5915969 (= res!2480501 e!3622297)))

(declare-fun res!2480497 () Bool)

(assert (=> b!5915969 (=> (not res!2480497) (not e!3622297))))

(assert (=> b!5915969 (= res!2480497 lt!2309663)))

(declare-fun b!5915970 () Bool)

(declare-fun e!3622300 () Bool)

(assert (=> b!5915970 (= e!3622300 (not (= (head!12475 s!2326) (c!1051133 (regTwo!32446 r!7292)))))))

(declare-fun b!5915971 () Bool)

(declare-fun e!3622295 () Bool)

(assert (=> b!5915971 (= e!3622295 e!3622300)))

(declare-fun res!2480502 () Bool)

(assert (=> b!5915971 (=> res!2480502 e!3622300)))

(assert (=> b!5915971 (= res!2480502 call!468869)))

(declare-fun b!5915972 () Bool)

(declare-fun res!2480500 () Bool)

(assert (=> b!5915972 (=> (not res!2480500) (not e!3622297))))

(assert (=> b!5915972 (= res!2480500 (not call!468869))))

(declare-fun b!5915973 () Bool)

(declare-fun res!2480496 () Bool)

(assert (=> b!5915973 (=> res!2480496 e!3622300)))

(assert (=> b!5915973 (= res!2480496 (not (isEmpty!35933 (tail!11560 s!2326))))))

(declare-fun b!5915974 () Bool)

(declare-fun res!2480499 () Bool)

(assert (=> b!5915974 (=> (not res!2480499) (not e!3622297))))

(assert (=> b!5915974 (= res!2480499 (isEmpty!35933 (tail!11560 s!2326)))))

(declare-fun b!5915975 () Bool)

(assert (=> b!5915975 (= e!3622296 (nullable!5962 (regTwo!32446 r!7292)))))

(declare-fun d!1855511 () Bool)

(assert (=> d!1855511 e!3622299))

(declare-fun c!1051411 () Bool)

(assert (=> d!1855511 (= c!1051411 ((_ is EmptyExpr!15967) (regTwo!32446 r!7292)))))

(assert (=> d!1855511 (= lt!2309663 e!3622296)))

(declare-fun c!1051410 () Bool)

(assert (=> d!1855511 (= c!1051410 (isEmpty!35933 s!2326))))

(assert (=> d!1855511 (validRegex!7703 (regTwo!32446 r!7292))))

(assert (=> d!1855511 (= (matchR!8150 (regTwo!32446 r!7292) s!2326) lt!2309663)))

(declare-fun b!5915966 () Bool)

(assert (=> b!5915966 (= e!3622298 e!3622295)))

(declare-fun res!2480498 () Bool)

(assert (=> b!5915966 (=> (not res!2480498) (not e!3622295))))

(assert (=> b!5915966 (= res!2480498 (not lt!2309663))))

(assert (= (and d!1855511 c!1051410) b!5915975))

(assert (= (and d!1855511 (not c!1051410)) b!5915967))

(assert (= (and d!1855511 c!1051411) b!5915965))

(assert (= (and d!1855511 (not c!1051411)) b!5915963))

(assert (= (and b!5915963 c!1051409) b!5915964))

(assert (= (and b!5915963 (not c!1051409)) b!5915968))

(assert (= (and b!5915968 (not res!2480503)) b!5915969))

(assert (= (and b!5915969 res!2480497) b!5915972))

(assert (= (and b!5915972 res!2480500) b!5915974))

(assert (= (and b!5915974 res!2480499) b!5915962))

(assert (= (and b!5915969 (not res!2480501)) b!5915966))

(assert (= (and b!5915966 res!2480498) b!5915971))

(assert (= (and b!5915971 (not res!2480502)) b!5915973))

(assert (= (and b!5915973 (not res!2480496)) b!5915970))

(assert (= (or b!5915965 b!5915971 b!5915972) bm!468864))

(assert (=> bm!468864 m!6813254))

(declare-fun m!6813920 () Bool)

(assert (=> b!5915975 m!6813920))

(assert (=> b!5915962 m!6813290))

(assert (=> d!1855511 m!6813254))

(declare-fun m!6813922 () Bool)

(assert (=> d!1855511 m!6813922))

(assert (=> b!5915970 m!6813290))

(assert (=> b!5915967 m!6813290))

(assert (=> b!5915967 m!6813290))

(declare-fun m!6813924 () Bool)

(assert (=> b!5915967 m!6813924))

(assert (=> b!5915967 m!6813294))

(assert (=> b!5915967 m!6813924))

(assert (=> b!5915967 m!6813294))

(declare-fun m!6813926 () Bool)

(assert (=> b!5915967 m!6813926))

(assert (=> b!5915973 m!6813294))

(assert (=> b!5915973 m!6813294))

(assert (=> b!5915973 m!6813298))

(assert (=> b!5915974 m!6813294))

(assert (=> b!5915974 m!6813294))

(assert (=> b!5915974 m!6813298))

(assert (=> b!5915184 d!1855511))

(declare-fun bm!468865 () Bool)

(declare-fun call!468870 () Bool)

(declare-fun c!1051412 () Bool)

(assert (=> bm!468865 (= call!468870 (validRegex!7703 (ite c!1051412 (regOne!32447 lt!2309624) (regOne!32446 lt!2309624))))))

(declare-fun b!5915976 () Bool)

(declare-fun res!2480508 () Bool)

(declare-fun e!3622303 () Bool)

(assert (=> b!5915976 (=> res!2480508 e!3622303)))

(assert (=> b!5915976 (= res!2480508 (not ((_ is Concat!24812) lt!2309624)))))

(declare-fun e!3622306 () Bool)

(assert (=> b!5915976 (= e!3622306 e!3622303)))

(declare-fun d!1855513 () Bool)

(declare-fun res!2480506 () Bool)

(declare-fun e!3622307 () Bool)

(assert (=> d!1855513 (=> res!2480506 e!3622307)))

(assert (=> d!1855513 (= res!2480506 ((_ is ElementMatch!15967) lt!2309624))))

(assert (=> d!1855513 (= (validRegex!7703 lt!2309624) e!3622307)))

(declare-fun bm!468866 () Bool)

(declare-fun c!1051413 () Bool)

(declare-fun call!468872 () Bool)

(assert (=> bm!468866 (= call!468872 (validRegex!7703 (ite c!1051413 (reg!16296 lt!2309624) (ite c!1051412 (regTwo!32447 lt!2309624) (regTwo!32446 lt!2309624)))))))

(declare-fun b!5915977 () Bool)

(declare-fun e!3622308 () Bool)

(assert (=> b!5915977 (= e!3622303 e!3622308)))

(declare-fun res!2480504 () Bool)

(assert (=> b!5915977 (=> (not res!2480504) (not e!3622308))))

(assert (=> b!5915977 (= res!2480504 call!468870)))

(declare-fun b!5915978 () Bool)

(declare-fun e!3622302 () Bool)

(assert (=> b!5915978 (= e!3622302 e!3622306)))

(assert (=> b!5915978 (= c!1051412 ((_ is Union!15967) lt!2309624))))

(declare-fun b!5915979 () Bool)

(declare-fun e!3622305 () Bool)

(assert (=> b!5915979 (= e!3622302 e!3622305)))

(declare-fun res!2480505 () Bool)

(assert (=> b!5915979 (= res!2480505 (not (nullable!5962 (reg!16296 lt!2309624))))))

(assert (=> b!5915979 (=> (not res!2480505) (not e!3622305))))

(declare-fun b!5915980 () Bool)

(assert (=> b!5915980 (= e!3622305 call!468872)))

(declare-fun b!5915981 () Bool)

(assert (=> b!5915981 (= e!3622307 e!3622302)))

(assert (=> b!5915981 (= c!1051413 ((_ is Star!15967) lt!2309624))))

(declare-fun b!5915982 () Bool)

(declare-fun call!468871 () Bool)

(assert (=> b!5915982 (= e!3622308 call!468871)))

(declare-fun bm!468867 () Bool)

(assert (=> bm!468867 (= call!468871 call!468872)))

(declare-fun b!5915983 () Bool)

(declare-fun res!2480507 () Bool)

(declare-fun e!3622304 () Bool)

(assert (=> b!5915983 (=> (not res!2480507) (not e!3622304))))

(assert (=> b!5915983 (= res!2480507 call!468870)))

(assert (=> b!5915983 (= e!3622306 e!3622304)))

(declare-fun b!5915984 () Bool)

(assert (=> b!5915984 (= e!3622304 call!468871)))

(assert (= (and d!1855513 (not res!2480506)) b!5915981))

(assert (= (and b!5915981 c!1051413) b!5915979))

(assert (= (and b!5915981 (not c!1051413)) b!5915978))

(assert (= (and b!5915979 res!2480505) b!5915980))

(assert (= (and b!5915978 c!1051412) b!5915983))

(assert (= (and b!5915978 (not c!1051412)) b!5915976))

(assert (= (and b!5915983 res!2480507) b!5915984))

(assert (= (and b!5915976 (not res!2480508)) b!5915977))

(assert (= (and b!5915977 res!2480504) b!5915982))

(assert (= (or b!5915984 b!5915982) bm!468867))

(assert (= (or b!5915983 b!5915977) bm!468865))

(assert (= (or b!5915980 bm!468867) bm!468866))

(declare-fun m!6813928 () Bool)

(assert (=> bm!468865 m!6813928))

(declare-fun m!6813930 () Bool)

(assert (=> bm!468866 m!6813930))

(declare-fun m!6813932 () Bool)

(assert (=> b!5915979 m!6813932))

(assert (=> d!1855285 d!1855513))

(declare-fun d!1855515 () Bool)

(declare-fun res!2480509 () Bool)

(declare-fun e!3622309 () Bool)

(assert (=> d!1855515 (=> res!2480509 e!3622309)))

(assert (=> d!1855515 (= res!2480509 ((_ is Nil!64076) (exprs!5851 (h!70525 zl!343))))))

(assert (=> d!1855515 (= (forall!15050 (exprs!5851 (h!70525 zl!343)) lambda!322754) e!3622309)))

(declare-fun b!5915985 () Bool)

(declare-fun e!3622310 () Bool)

(assert (=> b!5915985 (= e!3622309 e!3622310)))

(declare-fun res!2480510 () Bool)

(assert (=> b!5915985 (=> (not res!2480510) (not e!3622310))))

(assert (=> b!5915985 (= res!2480510 (dynLambda!25052 lambda!322754 (h!70524 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun b!5915986 () Bool)

(assert (=> b!5915986 (= e!3622310 (forall!15050 (t!377589 (exprs!5851 (h!70525 zl!343))) lambda!322754))))

(assert (= (and d!1855515 (not res!2480509)) b!5915985))

(assert (= (and b!5915985 res!2480510) b!5915986))

(declare-fun b_lambda!222243 () Bool)

(assert (=> (not b_lambda!222243) (not b!5915985)))

(declare-fun m!6813934 () Bool)

(assert (=> b!5915985 m!6813934))

(declare-fun m!6813936 () Bool)

(assert (=> b!5915986 m!6813936))

(assert (=> d!1855285 d!1855515))

(declare-fun d!1855517 () Bool)

(declare-fun res!2480511 () Bool)

(declare-fun e!3622311 () Bool)

(assert (=> d!1855517 (=> res!2480511 e!3622311)))

(assert (=> d!1855517 (= res!2480511 ((_ is Nil!64076) lt!2309618))))

(assert (=> d!1855517 (= (forall!15050 lt!2309618 lambda!322749) e!3622311)))

(declare-fun b!5915987 () Bool)

(declare-fun e!3622312 () Bool)

(assert (=> b!5915987 (= e!3622311 e!3622312)))

(declare-fun res!2480512 () Bool)

(assert (=> b!5915987 (=> (not res!2480512) (not e!3622312))))

(assert (=> b!5915987 (= res!2480512 (dynLambda!25052 lambda!322749 (h!70524 lt!2309618)))))

(declare-fun b!5915988 () Bool)

(assert (=> b!5915988 (= e!3622312 (forall!15050 (t!377589 lt!2309618) lambda!322749))))

(assert (= (and d!1855517 (not res!2480511)) b!5915987))

(assert (= (and b!5915987 res!2480512) b!5915988))

(declare-fun b_lambda!222245 () Bool)

(assert (=> (not b_lambda!222245) (not b!5915987)))

(declare-fun m!6813938 () Bool)

(assert (=> b!5915987 m!6813938))

(declare-fun m!6813940 () Bool)

(assert (=> b!5915988 m!6813940))

(assert (=> d!1855271 d!1855517))

(declare-fun bs!1400556 () Bool)

(declare-fun b!5915996 () Bool)

(assert (= bs!1400556 (and b!5915996 d!1855263)))

(declare-fun lambda!322783 () Int)

(assert (=> bs!1400556 (not (= lambda!322783 lambda!322740))))

(declare-fun bs!1400557 () Bool)

(assert (= bs!1400557 (and b!5915996 b!5915813)))

(assert (=> bs!1400557 (not (= lambda!322783 lambda!322775))))

(assert (=> bs!1400556 (not (= lambda!322783 lambda!322739))))

(declare-fun bs!1400558 () Bool)

(assert (= bs!1400558 (and b!5915996 d!1855261)))

(assert (=> bs!1400558 (not (= lambda!322783 lambda!322734))))

(declare-fun bs!1400559 () Bool)

(assert (= bs!1400559 (and b!5915996 b!5914749)))

(assert (=> bs!1400559 (not (= lambda!322783 lambda!322695))))

(declare-fun bs!1400560 () Bool)

(assert (= bs!1400560 (and b!5915996 b!5915820)))

(assert (=> bs!1400560 (= (and (= (reg!16296 (regTwo!32447 r!7292)) (reg!16296 (regOne!32447 r!7292))) (= (regTwo!32447 r!7292) (regOne!32447 r!7292))) (= lambda!322783 lambda!322774))))

(declare-fun bs!1400561 () Bool)

(assert (= bs!1400561 (and b!5915996 d!1855499)))

(assert (=> bs!1400561 (not (= lambda!322783 lambda!322781))))

(declare-fun bs!1400562 () Bool)

(assert (= bs!1400562 (and b!5915996 b!5914987)))

(assert (=> bs!1400562 (= (and (= (reg!16296 (regTwo!32447 r!7292)) (reg!16296 r!7292)) (= (regTwo!32447 r!7292) r!7292)) (= lambda!322783 lambda!322721))))

(assert (=> bs!1400561 (not (= lambda!322783 lambda!322782))))

(assert (=> bs!1400559 (not (= lambda!322783 lambda!322696))))

(declare-fun bs!1400563 () Bool)

(assert (= bs!1400563 (and b!5915996 b!5914980)))

(assert (=> bs!1400563 (not (= lambda!322783 lambda!322722))))

(assert (=> b!5915996 true))

(assert (=> b!5915996 true))

(declare-fun bs!1400564 () Bool)

(declare-fun b!5915989 () Bool)

(assert (= bs!1400564 (and b!5915989 d!1855263)))

(declare-fun lambda!322784 () Int)

(assert (=> bs!1400564 (= (and (= (regOne!32446 (regTwo!32447 r!7292)) (regOne!32446 r!7292)) (= (regTwo!32446 (regTwo!32447 r!7292)) (regTwo!32446 r!7292))) (= lambda!322784 lambda!322740))))

(declare-fun bs!1400565 () Bool)

(assert (= bs!1400565 (and b!5915989 b!5915813)))

(assert (=> bs!1400565 (= (and (= (regOne!32446 (regTwo!32447 r!7292)) (regOne!32446 (regOne!32447 r!7292))) (= (regTwo!32446 (regTwo!32447 r!7292)) (regTwo!32446 (regOne!32447 r!7292)))) (= lambda!322784 lambda!322775))))

(assert (=> bs!1400564 (not (= lambda!322784 lambda!322739))))

(declare-fun bs!1400566 () Bool)

(assert (= bs!1400566 (and b!5915989 d!1855261)))

(assert (=> bs!1400566 (not (= lambda!322784 lambda!322734))))

(declare-fun bs!1400567 () Bool)

(assert (= bs!1400567 (and b!5915989 b!5915820)))

(assert (=> bs!1400567 (not (= lambda!322784 lambda!322774))))

(declare-fun bs!1400568 () Bool)

(assert (= bs!1400568 (and b!5915989 d!1855499)))

(assert (=> bs!1400568 (not (= lambda!322784 lambda!322781))))

(declare-fun bs!1400569 () Bool)

(assert (= bs!1400569 (and b!5915989 b!5914987)))

(assert (=> bs!1400569 (not (= lambda!322784 lambda!322721))))

(assert (=> bs!1400568 (= (and (= (regOne!32446 (regTwo!32447 r!7292)) (regOne!32446 r!7292)) (= (regTwo!32446 (regTwo!32447 r!7292)) (regTwo!32446 r!7292))) (= lambda!322784 lambda!322782))))

(declare-fun bs!1400570 () Bool)

(assert (= bs!1400570 (and b!5915989 b!5915996)))

(assert (=> bs!1400570 (not (= lambda!322784 lambda!322783))))

(declare-fun bs!1400571 () Bool)

(assert (= bs!1400571 (and b!5915989 b!5914749)))

(assert (=> bs!1400571 (not (= lambda!322784 lambda!322695))))

(assert (=> bs!1400571 (= (and (= (regOne!32446 (regTwo!32447 r!7292)) (regOne!32446 r!7292)) (= (regTwo!32446 (regTwo!32447 r!7292)) (regTwo!32446 r!7292))) (= lambda!322784 lambda!322696))))

(declare-fun bs!1400572 () Bool)

(assert (= bs!1400572 (and b!5915989 b!5914980)))

(assert (=> bs!1400572 (= (and (= (regOne!32446 (regTwo!32447 r!7292)) (regOne!32446 r!7292)) (= (regTwo!32446 (regTwo!32447 r!7292)) (regTwo!32446 r!7292))) (= lambda!322784 lambda!322722))))

(assert (=> b!5915989 true))

(assert (=> b!5915989 true))

(declare-fun e!3622314 () Bool)

(declare-fun call!468873 () Bool)

(assert (=> b!5915989 (= e!3622314 call!468873)))

(declare-fun b!5915990 () Bool)

(declare-fun res!2480514 () Bool)

(declare-fun e!3622319 () Bool)

(assert (=> b!5915990 (=> res!2480514 e!3622319)))

(declare-fun call!468874 () Bool)

(assert (=> b!5915990 (= res!2480514 call!468874)))

(assert (=> b!5915990 (= e!3622314 e!3622319)))

(declare-fun b!5915991 () Bool)

(declare-fun e!3622313 () Bool)

(assert (=> b!5915991 (= e!3622313 e!3622314)))

(declare-fun c!1051415 () Bool)

(assert (=> b!5915991 (= c!1051415 ((_ is Star!15967) (regTwo!32447 r!7292)))))

(declare-fun b!5915992 () Bool)

(declare-fun c!1051414 () Bool)

(assert (=> b!5915992 (= c!1051414 ((_ is Union!15967) (regTwo!32447 r!7292)))))

(declare-fun e!3622316 () Bool)

(assert (=> b!5915992 (= e!3622316 e!3622313)))

(declare-fun b!5915993 () Bool)

(declare-fun e!3622318 () Bool)

(declare-fun e!3622317 () Bool)

(assert (=> b!5915993 (= e!3622318 e!3622317)))

(declare-fun res!2480513 () Bool)

(assert (=> b!5915993 (= res!2480513 (not ((_ is EmptyLang!15967) (regTwo!32447 r!7292))))))

(assert (=> b!5915993 (=> (not res!2480513) (not e!3622317))))

(declare-fun b!5915994 () Bool)

(declare-fun e!3622315 () Bool)

(assert (=> b!5915994 (= e!3622313 e!3622315)))

(declare-fun res!2480515 () Bool)

(assert (=> b!5915994 (= res!2480515 (matchRSpec!3068 (regOne!32447 (regTwo!32447 r!7292)) s!2326))))

(assert (=> b!5915994 (=> res!2480515 e!3622315)))

(declare-fun b!5915995 () Bool)

(assert (=> b!5915995 (= e!3622318 call!468874)))

(assert (=> b!5915996 (= e!3622319 call!468873)))

(declare-fun b!5915997 () Bool)

(assert (=> b!5915997 (= e!3622315 (matchRSpec!3068 (regTwo!32447 (regTwo!32447 r!7292)) s!2326))))

(declare-fun b!5915998 () Bool)

(declare-fun c!1051417 () Bool)

(assert (=> b!5915998 (= c!1051417 ((_ is ElementMatch!15967) (regTwo!32447 r!7292)))))

(assert (=> b!5915998 (= e!3622317 e!3622316)))

(declare-fun bm!468869 () Bool)

(assert (=> bm!468869 (= call!468874 (isEmpty!35933 s!2326))))

(declare-fun b!5915999 () Bool)

(assert (=> b!5915999 (= e!3622316 (= s!2326 (Cons!64078 (c!1051133 (regTwo!32447 r!7292)) Nil!64078)))))

(declare-fun d!1855519 () Bool)

(declare-fun c!1051416 () Bool)

(assert (=> d!1855519 (= c!1051416 ((_ is EmptyExpr!15967) (regTwo!32447 r!7292)))))

(assert (=> d!1855519 (= (matchRSpec!3068 (regTwo!32447 r!7292) s!2326) e!3622318)))

(declare-fun bm!468868 () Bool)

(assert (=> bm!468868 (= call!468873 (Exists!3037 (ite c!1051415 lambda!322783 lambda!322784)))))

(assert (= (and d!1855519 c!1051416) b!5915995))

(assert (= (and d!1855519 (not c!1051416)) b!5915993))

(assert (= (and b!5915993 res!2480513) b!5915998))

(assert (= (and b!5915998 c!1051417) b!5915999))

(assert (= (and b!5915998 (not c!1051417)) b!5915992))

(assert (= (and b!5915992 c!1051414) b!5915994))

(assert (= (and b!5915992 (not c!1051414)) b!5915991))

(assert (= (and b!5915994 (not res!2480515)) b!5915997))

(assert (= (and b!5915991 c!1051415) b!5915990))

(assert (= (and b!5915991 (not c!1051415)) b!5915989))

(assert (= (and b!5915990 (not res!2480514)) b!5915996))

(assert (= (or b!5915996 b!5915989) bm!468868))

(assert (= (or b!5915995 b!5915990) bm!468869))

(declare-fun m!6813942 () Bool)

(assert (=> b!5915994 m!6813942))

(declare-fun m!6813944 () Bool)

(assert (=> b!5915997 m!6813944))

(assert (=> bm!468869 m!6813254))

(declare-fun m!6813946 () Bool)

(assert (=> bm!468868 m!6813946))

(assert (=> b!5914988 d!1855519))

(assert (=> b!5915238 d!1855285))

(declare-fun bs!1400573 () Bool)

(declare-fun d!1855521 () Bool)

(assert (= bs!1400573 (and d!1855521 d!1855455)))

(declare-fun lambda!322785 () Int)

(assert (=> bs!1400573 (= lambda!322785 lambda!322776)))

(declare-fun bs!1400574 () Bool)

(assert (= bs!1400574 (and d!1855521 d!1855271)))

(assert (=> bs!1400574 (= lambda!322785 lambda!322749)))

(declare-fun bs!1400575 () Bool)

(assert (= bs!1400575 (and d!1855521 d!1855273)))

(assert (=> bs!1400575 (= lambda!322785 lambda!322750)))

(declare-fun bs!1400576 () Bool)

(assert (= bs!1400576 (and d!1855521 d!1855267)))

(assert (=> bs!1400576 (= lambda!322785 lambda!322743)))

(declare-fun bs!1400577 () Bool)

(assert (= bs!1400577 (and d!1855521 d!1855283)))

(assert (=> bs!1400577 (= lambda!322785 lambda!322751)))

(declare-fun bs!1400578 () Bool)

(assert (= bs!1400578 (and d!1855521 d!1855285)))

(assert (=> bs!1400578 (= lambda!322785 lambda!322754)))

(declare-fun bs!1400579 () Bool)

(assert (= bs!1400579 (and d!1855521 d!1855269)))

(assert (=> bs!1400579 (= lambda!322785 lambda!322746)))

(declare-fun bs!1400580 () Bool)

(assert (= bs!1400580 (and d!1855521 d!1855433)))

(assert (=> bs!1400580 (= lambda!322785 lambda!322773)))

(declare-fun lt!2309664 () List!64200)

(assert (=> d!1855521 (forall!15050 lt!2309664 lambda!322785)))

(declare-fun e!3622320 () List!64200)

(assert (=> d!1855521 (= lt!2309664 e!3622320)))

(declare-fun c!1051418 () Bool)

(assert (=> d!1855521 (= c!1051418 ((_ is Cons!64077) (t!377590 zl!343)))))

(assert (=> d!1855521 (= (unfocusZipperList!1388 (t!377590 zl!343)) lt!2309664)))

(declare-fun b!5916000 () Bool)

(assert (=> b!5916000 (= e!3622320 (Cons!64076 (generalisedConcat!1564 (exprs!5851 (h!70525 (t!377590 zl!343)))) (unfocusZipperList!1388 (t!377590 (t!377590 zl!343)))))))

(declare-fun b!5916001 () Bool)

(assert (=> b!5916001 (= e!3622320 Nil!64076)))

(assert (= (and d!1855521 c!1051418) b!5916000))

(assert (= (and d!1855521 (not c!1051418)) b!5916001))

(declare-fun m!6813948 () Bool)

(assert (=> d!1855521 m!6813948))

(declare-fun m!6813950 () Bool)

(assert (=> b!5916000 m!6813950))

(declare-fun m!6813952 () Bool)

(assert (=> b!5916000 m!6813952))

(assert (=> b!5915238 d!1855521))

(declare-fun b!5916002 () Bool)

(declare-fun e!3622322 () Bool)

(assert (=> b!5916002 (= e!3622322 (nullable!5962 (h!70524 (exprs!5851 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))))))))

(declare-fun bm!468870 () Bool)

(declare-fun call!468875 () (InoxSet Context!10702))

(assert (=> bm!468870 (= call!468875 (derivationStepZipperDown!1217 (h!70524 (exprs!5851 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))) (Context!10703 (t!377589 (exprs!5851 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))))) (h!70526 s!2326)))))

(declare-fun b!5916003 () Bool)

(declare-fun e!3622323 () (InoxSet Context!10702))

(assert (=> b!5916003 (= e!3622323 ((as const (Array Context!10702 Bool)) false))))

(declare-fun b!5916004 () Bool)

(assert (=> b!5916004 (= e!3622323 call!468875)))

(declare-fun d!1855523 () Bool)

(declare-fun c!1051419 () Bool)

(assert (=> d!1855523 (= c!1051419 e!3622322)))

(declare-fun res!2480516 () Bool)

(assert (=> d!1855523 (=> (not res!2480516) (not e!3622322))))

(assert (=> d!1855523 (= res!2480516 ((_ is Cons!64076) (exprs!5851 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))))))

(declare-fun e!3622321 () (InoxSet Context!10702))

(assert (=> d!1855523 (= (derivationStepZipperUp!1143 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (h!70526 s!2326)) e!3622321)))

(declare-fun b!5916005 () Bool)

(assert (=> b!5916005 (= e!3622321 ((_ map or) call!468875 (derivationStepZipperUp!1143 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076)))))))) (h!70526 s!2326))))))

(declare-fun b!5916006 () Bool)

(assert (=> b!5916006 (= e!3622321 e!3622323)))

(declare-fun c!1051420 () Bool)

(assert (=> b!5916006 (= c!1051420 ((_ is Cons!64076) (exprs!5851 (Context!10703 (t!377589 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))))))

(assert (= (and d!1855523 res!2480516) b!5916002))

(assert (= (and d!1855523 c!1051419) b!5916005))

(assert (= (and d!1855523 (not c!1051419)) b!5916006))

(assert (= (and b!5916006 c!1051420) b!5916004))

(assert (= (and b!5916006 (not c!1051420)) b!5916003))

(assert (= (or b!5916005 b!5916004) bm!468870))

(declare-fun m!6813954 () Bool)

(assert (=> b!5916002 m!6813954))

(declare-fun m!6813956 () Bool)

(assert (=> bm!468870 m!6813956))

(declare-fun m!6813958 () Bool)

(assert (=> b!5916005 m!6813958))

(assert (=> b!5915253 d!1855523))

(declare-fun d!1855525 () Bool)

(assert (=> d!1855525 (= (Exists!3037 (ite c!1051201 lambda!322721 lambda!322722)) (choose!44627 (ite c!1051201 lambda!322721 lambda!322722)))))

(declare-fun bs!1400581 () Bool)

(assert (= bs!1400581 d!1855525))

(declare-fun m!6813960 () Bool)

(assert (=> bs!1400581 m!6813960))

(assert (=> bm!468742 d!1855525))

(declare-fun d!1855527 () Bool)

(assert (=> d!1855527 (= (nullable!5962 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))) (nullableFct!1934 (h!70524 (exprs!5851 (Context!10703 (Cons!64076 r!7292 Nil!64076))))))))

(declare-fun bs!1400582 () Bool)

(assert (= bs!1400582 d!1855527))

(declare-fun m!6813962 () Bool)

(assert (=> bs!1400582 m!6813962))

(assert (=> b!5915250 d!1855527))

(declare-fun d!1855529 () Bool)

(assert (=> d!1855529 (= (isEmpty!35930 (t!377589 (unfocusZipperList!1388 zl!343))) ((_ is Nil!64076) (t!377589 (unfocusZipperList!1388 zl!343))))))

(assert (=> b!5915232 d!1855529))

(declare-fun d!1855531 () Bool)

(assert (=> d!1855531 (= (isEmpty!35934 (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) Nil!64078 s!2326 s!2326)) (not ((_ is Some!15857) (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) Nil!64078 s!2326 s!2326))))))

(assert (=> d!1855265 d!1855531))

(declare-fun bs!1400583 () Bool)

(declare-fun d!1855533 () Bool)

(assert (= bs!1400583 (and d!1855533 d!1855455)))

(declare-fun lambda!322786 () Int)

(assert (=> bs!1400583 (= lambda!322786 lambda!322776)))

(declare-fun bs!1400584 () Bool)

(assert (= bs!1400584 (and d!1855533 d!1855271)))

(assert (=> bs!1400584 (= lambda!322786 lambda!322749)))

(declare-fun bs!1400585 () Bool)

(assert (= bs!1400585 (and d!1855533 d!1855273)))

(assert (=> bs!1400585 (= lambda!322786 lambda!322750)))

(declare-fun bs!1400586 () Bool)

(assert (= bs!1400586 (and d!1855533 d!1855267)))

(assert (=> bs!1400586 (= lambda!322786 lambda!322743)))

(declare-fun bs!1400587 () Bool)

(assert (= bs!1400587 (and d!1855533 d!1855521)))

(assert (=> bs!1400587 (= lambda!322786 lambda!322785)))

(declare-fun bs!1400588 () Bool)

(assert (= bs!1400588 (and d!1855533 d!1855283)))

(assert (=> bs!1400588 (= lambda!322786 lambda!322751)))

(declare-fun bs!1400589 () Bool)

(assert (= bs!1400589 (and d!1855533 d!1855285)))

(assert (=> bs!1400589 (= lambda!322786 lambda!322754)))

(declare-fun bs!1400590 () Bool)

(assert (= bs!1400590 (and d!1855533 d!1855269)))

(assert (=> bs!1400590 (= lambda!322786 lambda!322746)))

(declare-fun bs!1400591 () Bool)

(assert (= bs!1400591 (and d!1855533 d!1855433)))

(assert (=> bs!1400591 (= lambda!322786 lambda!322773)))

(assert (=> d!1855533 (= (inv!83164 setElem!40152) (forall!15050 (exprs!5851 setElem!40152) lambda!322786))))

(declare-fun bs!1400592 () Bool)

(assert (= bs!1400592 d!1855533))

(declare-fun m!6813964 () Bool)

(assert (=> bs!1400592 m!6813964))

(assert (=> setNonEmpty!40152 d!1855533))

(declare-fun bm!468871 () Bool)

(declare-fun call!468876 () Bool)

(declare-fun c!1051421 () Bool)

(assert (=> bm!468871 (= call!468876 (validRegex!7703 (ite c!1051421 (regOne!32447 lt!2309621) (regOne!32446 lt!2309621))))))

(declare-fun b!5916007 () Bool)

(declare-fun res!2480521 () Bool)

(declare-fun e!3622325 () Bool)

(assert (=> b!5916007 (=> res!2480521 e!3622325)))

(assert (=> b!5916007 (= res!2480521 (not ((_ is Concat!24812) lt!2309621)))))

(declare-fun e!3622328 () Bool)

(assert (=> b!5916007 (= e!3622328 e!3622325)))

(declare-fun d!1855535 () Bool)

(declare-fun res!2480519 () Bool)

(declare-fun e!3622329 () Bool)

(assert (=> d!1855535 (=> res!2480519 e!3622329)))

(assert (=> d!1855535 (= res!2480519 ((_ is ElementMatch!15967) lt!2309621))))

(assert (=> d!1855535 (= (validRegex!7703 lt!2309621) e!3622329)))

(declare-fun bm!468872 () Bool)

(declare-fun c!1051422 () Bool)

(declare-fun call!468878 () Bool)

(assert (=> bm!468872 (= call!468878 (validRegex!7703 (ite c!1051422 (reg!16296 lt!2309621) (ite c!1051421 (regTwo!32447 lt!2309621) (regTwo!32446 lt!2309621)))))))

(declare-fun b!5916008 () Bool)

(declare-fun e!3622330 () Bool)

(assert (=> b!5916008 (= e!3622325 e!3622330)))

(declare-fun res!2480517 () Bool)

(assert (=> b!5916008 (=> (not res!2480517) (not e!3622330))))

(assert (=> b!5916008 (= res!2480517 call!468876)))

(declare-fun b!5916009 () Bool)

(declare-fun e!3622324 () Bool)

(assert (=> b!5916009 (= e!3622324 e!3622328)))

(assert (=> b!5916009 (= c!1051421 ((_ is Union!15967) lt!2309621))))

(declare-fun b!5916010 () Bool)

(declare-fun e!3622327 () Bool)

(assert (=> b!5916010 (= e!3622324 e!3622327)))

(declare-fun res!2480518 () Bool)

(assert (=> b!5916010 (= res!2480518 (not (nullable!5962 (reg!16296 lt!2309621))))))

(assert (=> b!5916010 (=> (not res!2480518) (not e!3622327))))

(declare-fun b!5916011 () Bool)

(assert (=> b!5916011 (= e!3622327 call!468878)))

(declare-fun b!5916012 () Bool)

(assert (=> b!5916012 (= e!3622329 e!3622324)))

(assert (=> b!5916012 (= c!1051422 ((_ is Star!15967) lt!2309621))))

(declare-fun b!5916013 () Bool)

(declare-fun call!468877 () Bool)

(assert (=> b!5916013 (= e!3622330 call!468877)))

(declare-fun bm!468873 () Bool)

(assert (=> bm!468873 (= call!468877 call!468878)))

(declare-fun b!5916014 () Bool)

(declare-fun res!2480520 () Bool)

(declare-fun e!3622326 () Bool)

(assert (=> b!5916014 (=> (not res!2480520) (not e!3622326))))

(assert (=> b!5916014 (= res!2480520 call!468876)))

(assert (=> b!5916014 (= e!3622328 e!3622326)))

(declare-fun b!5916015 () Bool)

(assert (=> b!5916015 (= e!3622326 call!468877)))

(assert (= (and d!1855535 (not res!2480519)) b!5916012))

(assert (= (and b!5916012 c!1051422) b!5916010))

(assert (= (and b!5916012 (not c!1051422)) b!5916009))

(assert (= (and b!5916010 res!2480518) b!5916011))

(assert (= (and b!5916009 c!1051421) b!5916014))

(assert (= (and b!5916009 (not c!1051421)) b!5916007))

(assert (= (and b!5916014 res!2480520) b!5916015))

(assert (= (and b!5916007 (not res!2480521)) b!5916008))

(assert (= (and b!5916008 res!2480517) b!5916013))

(assert (= (or b!5916015 b!5916013) bm!468873))

(assert (= (or b!5916014 b!5916008) bm!468871))

(assert (= (or b!5916011 bm!468873) bm!468872))

(declare-fun m!6813966 () Bool)

(assert (=> bm!468871 m!6813966))

(declare-fun m!6813968 () Bool)

(assert (=> bm!468872 m!6813968))

(declare-fun m!6813970 () Bool)

(assert (=> b!5916010 m!6813970))

(assert (=> d!1855279 d!1855535))

(assert (=> d!1855279 d!1855269))

(assert (=> d!1855279 d!1855271))

(declare-fun d!1855537 () Bool)

(assert (=> d!1855537 (= (head!12476 (unfocusZipperList!1388 zl!343)) (h!70524 (unfocusZipperList!1388 zl!343)))))

(assert (=> b!5915230 d!1855537))

(assert (=> b!5915062 d!1855441))

(declare-fun d!1855539 () Bool)

(assert (=> d!1855539 (= (isEmpty!35930 (unfocusZipperList!1388 zl!343)) ((_ is Nil!64076) (unfocusZipperList!1388 zl!343)))))

(assert (=> b!5915226 d!1855539))

(declare-fun call!468879 () Bool)

(declare-fun bm!468874 () Bool)

(declare-fun c!1051423 () Bool)

(assert (=> bm!468874 (= call!468879 (validRegex!7703 (ite c!1051423 (regOne!32447 (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))) (regOne!32446 (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))))))))

(declare-fun b!5916016 () Bool)

(declare-fun res!2480526 () Bool)

(declare-fun e!3622332 () Bool)

(assert (=> b!5916016 (=> res!2480526 e!3622332)))

(assert (=> b!5916016 (= res!2480526 (not ((_ is Concat!24812) (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292))))))))

(declare-fun e!3622335 () Bool)

(assert (=> b!5916016 (= e!3622335 e!3622332)))

(declare-fun d!1855541 () Bool)

(declare-fun res!2480524 () Bool)

(declare-fun e!3622336 () Bool)

(assert (=> d!1855541 (=> res!2480524 e!3622336)))

(assert (=> d!1855541 (= res!2480524 ((_ is ElementMatch!15967) (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))))))

(assert (=> d!1855541 (= (validRegex!7703 (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))) e!3622336)))

(declare-fun bm!468875 () Bool)

(declare-fun call!468881 () Bool)

(declare-fun c!1051424 () Bool)

(assert (=> bm!468875 (= call!468881 (validRegex!7703 (ite c!1051424 (reg!16296 (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))) (ite c!1051423 (regTwo!32447 (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))) (regTwo!32446 (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292))))))))))

(declare-fun b!5916017 () Bool)

(declare-fun e!3622337 () Bool)

(assert (=> b!5916017 (= e!3622332 e!3622337)))

(declare-fun res!2480522 () Bool)

(assert (=> b!5916017 (=> (not res!2480522) (not e!3622337))))

(assert (=> b!5916017 (= res!2480522 call!468879)))

(declare-fun b!5916018 () Bool)

(declare-fun e!3622331 () Bool)

(assert (=> b!5916018 (= e!3622331 e!3622335)))

(assert (=> b!5916018 (= c!1051423 ((_ is Union!15967) (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))))))

(declare-fun b!5916019 () Bool)

(declare-fun e!3622334 () Bool)

(assert (=> b!5916019 (= e!3622331 e!3622334)))

(declare-fun res!2480523 () Bool)

(assert (=> b!5916019 (= res!2480523 (not (nullable!5962 (reg!16296 (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))))))))

(assert (=> b!5916019 (=> (not res!2480523) (not e!3622334))))

(declare-fun b!5916020 () Bool)

(assert (=> b!5916020 (= e!3622334 call!468881)))

(declare-fun b!5916021 () Bool)

(assert (=> b!5916021 (= e!3622336 e!3622331)))

(assert (=> b!5916021 (= c!1051424 ((_ is Star!15967) (ite c!1051226 (reg!16296 r!7292) (ite c!1051225 (regTwo!32447 r!7292) (regTwo!32446 r!7292)))))))

(declare-fun b!5916022 () Bool)

(declare-fun call!468880 () Bool)

(assert (=> b!5916022 (= e!3622337 call!468880)))

(declare-fun bm!468876 () Bool)

(assert (=> bm!468876 (= call!468880 call!468881)))

(declare-fun b!5916023 () Bool)

(declare-fun res!2480525 () Bool)

(declare-fun e!3622333 () Bool)

(assert (=> b!5916023 (=> (not res!2480525) (not e!3622333))))

(assert (=> b!5916023 (= res!2480525 call!468879)))

(assert (=> b!5916023 (= e!3622335 e!3622333)))

(declare-fun b!5916024 () Bool)

(assert (=> b!5916024 (= e!3622333 call!468880)))

(assert (= (and d!1855541 (not res!2480524)) b!5916021))

(assert (= (and b!5916021 c!1051424) b!5916019))

(assert (= (and b!5916021 (not c!1051424)) b!5916018))

(assert (= (and b!5916019 res!2480523) b!5916020))

(assert (= (and b!5916018 c!1051423) b!5916023))

(assert (= (and b!5916018 (not c!1051423)) b!5916016))

(assert (= (and b!5916023 res!2480525) b!5916024))

(assert (= (and b!5916016 (not res!2480526)) b!5916017))

(assert (= (and b!5916017 res!2480522) b!5916022))

(assert (= (or b!5916024 b!5916022) bm!468876))

(assert (= (or b!5916023 b!5916017) bm!468874))

(assert (= (or b!5916020 bm!468876) bm!468875))

(declare-fun m!6813972 () Bool)

(assert (=> bm!468874 m!6813972))

(declare-fun m!6813974 () Bool)

(assert (=> bm!468875 m!6813974))

(declare-fun m!6813976 () Bool)

(assert (=> b!5916019 m!6813976))

(assert (=> bm!468759 d!1855541))

(declare-fun d!1855543 () Bool)

(assert (=> d!1855543 (= (isDefined!12561 lt!2309606) (not (isEmpty!35934 lt!2309606)))))

(declare-fun bs!1400593 () Bool)

(assert (= bs!1400593 d!1855543))

(declare-fun m!6813978 () Bool)

(assert (=> bs!1400593 m!6813978))

(assert (=> d!1855255 d!1855543))

(declare-fun bm!468877 () Bool)

(declare-fun call!468882 () Bool)

(assert (=> bm!468877 (= call!468882 (isEmpty!35933 Nil!64078))))

(declare-fun b!5916025 () Bool)

(declare-fun e!3622340 () Bool)

(assert (=> b!5916025 (= e!3622340 (= (head!12475 Nil!64078) (c!1051133 (regOne!32446 r!7292))))))

(declare-fun b!5916026 () Bool)

(declare-fun e!3622342 () Bool)

(declare-fun e!3622344 () Bool)

(assert (=> b!5916026 (= e!3622342 e!3622344)))

(declare-fun c!1051425 () Bool)

(assert (=> b!5916026 (= c!1051425 ((_ is EmptyLang!15967) (regOne!32446 r!7292)))))

(declare-fun b!5916027 () Bool)

(declare-fun lt!2309665 () Bool)

(assert (=> b!5916027 (= e!3622344 (not lt!2309665))))

(declare-fun b!5916028 () Bool)

(assert (=> b!5916028 (= e!3622342 (= lt!2309665 call!468882))))

(declare-fun b!5916030 () Bool)

(declare-fun e!3622339 () Bool)

(assert (=> b!5916030 (= e!3622339 (matchR!8150 (derivativeStep!4698 (regOne!32446 r!7292) (head!12475 Nil!64078)) (tail!11560 Nil!64078)))))

(declare-fun b!5916031 () Bool)

(declare-fun res!2480534 () Bool)

(declare-fun e!3622341 () Bool)

(assert (=> b!5916031 (=> res!2480534 e!3622341)))

(assert (=> b!5916031 (= res!2480534 (not ((_ is ElementMatch!15967) (regOne!32446 r!7292))))))

(assert (=> b!5916031 (= e!3622344 e!3622341)))

(declare-fun b!5916032 () Bool)

(declare-fun res!2480532 () Bool)

(assert (=> b!5916032 (=> res!2480532 e!3622341)))

(assert (=> b!5916032 (= res!2480532 e!3622340)))

(declare-fun res!2480528 () Bool)

(assert (=> b!5916032 (=> (not res!2480528) (not e!3622340))))

(assert (=> b!5916032 (= res!2480528 lt!2309665)))

(declare-fun b!5916033 () Bool)

(declare-fun e!3622343 () Bool)

(assert (=> b!5916033 (= e!3622343 (not (= (head!12475 Nil!64078) (c!1051133 (regOne!32446 r!7292)))))))

(declare-fun b!5916034 () Bool)

(declare-fun e!3622338 () Bool)

(assert (=> b!5916034 (= e!3622338 e!3622343)))

(declare-fun res!2480533 () Bool)

(assert (=> b!5916034 (=> res!2480533 e!3622343)))

(assert (=> b!5916034 (= res!2480533 call!468882)))

(declare-fun b!5916035 () Bool)

(declare-fun res!2480531 () Bool)

(assert (=> b!5916035 (=> (not res!2480531) (not e!3622340))))

(assert (=> b!5916035 (= res!2480531 (not call!468882))))

(declare-fun b!5916036 () Bool)

(declare-fun res!2480527 () Bool)

(assert (=> b!5916036 (=> res!2480527 e!3622343)))

(assert (=> b!5916036 (= res!2480527 (not (isEmpty!35933 (tail!11560 Nil!64078))))))

(declare-fun b!5916037 () Bool)

(declare-fun res!2480530 () Bool)

(assert (=> b!5916037 (=> (not res!2480530) (not e!3622340))))

(assert (=> b!5916037 (= res!2480530 (isEmpty!35933 (tail!11560 Nil!64078)))))

(declare-fun b!5916038 () Bool)

(assert (=> b!5916038 (= e!3622339 (nullable!5962 (regOne!32446 r!7292)))))

(declare-fun d!1855545 () Bool)

(assert (=> d!1855545 e!3622342))

(declare-fun c!1051427 () Bool)

(assert (=> d!1855545 (= c!1051427 ((_ is EmptyExpr!15967) (regOne!32446 r!7292)))))

(assert (=> d!1855545 (= lt!2309665 e!3622339)))

(declare-fun c!1051426 () Bool)

(assert (=> d!1855545 (= c!1051426 (isEmpty!35933 Nil!64078))))

(assert (=> d!1855545 (validRegex!7703 (regOne!32446 r!7292))))

(assert (=> d!1855545 (= (matchR!8150 (regOne!32446 r!7292) Nil!64078) lt!2309665)))

(declare-fun b!5916029 () Bool)

(assert (=> b!5916029 (= e!3622341 e!3622338)))

(declare-fun res!2480529 () Bool)

(assert (=> b!5916029 (=> (not res!2480529) (not e!3622338))))

(assert (=> b!5916029 (= res!2480529 (not lt!2309665))))

(assert (= (and d!1855545 c!1051426) b!5916038))

(assert (= (and d!1855545 (not c!1051426)) b!5916030))

(assert (= (and d!1855545 c!1051427) b!5916028))

(assert (= (and d!1855545 (not c!1051427)) b!5916026))

(assert (= (and b!5916026 c!1051425) b!5916027))

(assert (= (and b!5916026 (not c!1051425)) b!5916031))

(assert (= (and b!5916031 (not res!2480534)) b!5916032))

(assert (= (and b!5916032 res!2480528) b!5916035))

(assert (= (and b!5916035 res!2480531) b!5916037))

(assert (= (and b!5916037 res!2480530) b!5916025))

(assert (= (and b!5916032 (not res!2480532)) b!5916029))

(assert (= (and b!5916029 res!2480529) b!5916034))

(assert (= (and b!5916034 (not res!2480533)) b!5916036))

(assert (= (and b!5916036 (not res!2480527)) b!5916033))

(assert (= (or b!5916028 b!5916034 b!5916035) bm!468877))

(declare-fun m!6813980 () Bool)

(assert (=> bm!468877 m!6813980))

(assert (=> b!5916038 m!6813754))

(declare-fun m!6813982 () Bool)

(assert (=> b!5916025 m!6813982))

(assert (=> d!1855545 m!6813980))

(assert (=> d!1855545 m!6813324))

(assert (=> b!5916033 m!6813982))

(assert (=> b!5916030 m!6813982))

(assert (=> b!5916030 m!6813982))

(declare-fun m!6813984 () Bool)

(assert (=> b!5916030 m!6813984))

(declare-fun m!6813986 () Bool)

(assert (=> b!5916030 m!6813986))

(assert (=> b!5916030 m!6813984))

(assert (=> b!5916030 m!6813986))

(declare-fun m!6813988 () Bool)

(assert (=> b!5916030 m!6813988))

(assert (=> b!5916036 m!6813986))

(assert (=> b!5916036 m!6813986))

(declare-fun m!6813990 () Bool)

(assert (=> b!5916036 m!6813990))

(assert (=> b!5916037 m!6813986))

(assert (=> b!5916037 m!6813986))

(assert (=> b!5916037 m!6813990))

(assert (=> d!1855255 d!1855545))

(assert (=> d!1855255 d!1855501))

(declare-fun bs!1400594 () Bool)

(declare-fun d!1855547 () Bool)

(assert (= bs!1400594 (and d!1855547 d!1855271)))

(declare-fun lambda!322787 () Int)

(assert (=> bs!1400594 (= lambda!322787 lambda!322749)))

(declare-fun bs!1400595 () Bool)

(assert (= bs!1400595 (and d!1855547 d!1855273)))

(assert (=> bs!1400595 (= lambda!322787 lambda!322750)))

(declare-fun bs!1400596 () Bool)

(assert (= bs!1400596 (and d!1855547 d!1855267)))

(assert (=> bs!1400596 (= lambda!322787 lambda!322743)))

(declare-fun bs!1400597 () Bool)

(assert (= bs!1400597 (and d!1855547 d!1855521)))

(assert (=> bs!1400597 (= lambda!322787 lambda!322785)))

(declare-fun bs!1400598 () Bool)

(assert (= bs!1400598 (and d!1855547 d!1855283)))

(assert (=> bs!1400598 (= lambda!322787 lambda!322751)))

(declare-fun bs!1400599 () Bool)

(assert (= bs!1400599 (and d!1855547 d!1855285)))

(assert (=> bs!1400599 (= lambda!322787 lambda!322754)))

(declare-fun bs!1400600 () Bool)

(assert (= bs!1400600 (and d!1855547 d!1855533)))

(assert (=> bs!1400600 (= lambda!322787 lambda!322786)))

(declare-fun bs!1400601 () Bool)

(assert (= bs!1400601 (and d!1855547 d!1855455)))

(assert (=> bs!1400601 (= lambda!322787 lambda!322776)))

(declare-fun bs!1400602 () Bool)

(assert (= bs!1400602 (and d!1855547 d!1855269)))

(assert (=> bs!1400602 (= lambda!322787 lambda!322746)))

(declare-fun bs!1400603 () Bool)

(assert (= bs!1400603 (and d!1855547 d!1855433)))

(assert (=> bs!1400603 (= lambda!322787 lambda!322773)))

(declare-fun b!5916039 () Bool)

(declare-fun e!3622349 () Bool)

(declare-fun lt!2309666 () Regex!15967)

(assert (=> b!5916039 (= e!3622349 (isConcat!918 lt!2309666))))

(declare-fun b!5916040 () Bool)

(declare-fun e!3622345 () Bool)

(assert (=> b!5916040 (= e!3622345 e!3622349)))

(declare-fun c!1051431 () Bool)

(assert (=> b!5916040 (= c!1051431 (isEmpty!35930 (tail!11561 (t!377589 (exprs!5851 (h!70525 zl!343))))))))

(declare-fun b!5916041 () Bool)

(assert (=> b!5916041 (= e!3622349 (= lt!2309666 (head!12476 (t!377589 (exprs!5851 (h!70525 zl!343))))))))

(declare-fun b!5916042 () Bool)

(declare-fun e!3622346 () Regex!15967)

(assert (=> b!5916042 (= e!3622346 (h!70524 (t!377589 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun e!3622348 () Bool)

(assert (=> d!1855547 e!3622348))

(declare-fun res!2480536 () Bool)

(assert (=> d!1855547 (=> (not res!2480536) (not e!3622348))))

(assert (=> d!1855547 (= res!2480536 (validRegex!7703 lt!2309666))))

(assert (=> d!1855547 (= lt!2309666 e!3622346)))

(declare-fun c!1051428 () Bool)

(declare-fun e!3622347 () Bool)

(assert (=> d!1855547 (= c!1051428 e!3622347)))

(declare-fun res!2480535 () Bool)

(assert (=> d!1855547 (=> (not res!2480535) (not e!3622347))))

(assert (=> d!1855547 (= res!2480535 ((_ is Cons!64076) (t!377589 (exprs!5851 (h!70525 zl!343)))))))

(assert (=> d!1855547 (forall!15050 (t!377589 (exprs!5851 (h!70525 zl!343))) lambda!322787)))

(assert (=> d!1855547 (= (generalisedConcat!1564 (t!377589 (exprs!5851 (h!70525 zl!343)))) lt!2309666)))

(declare-fun b!5916043 () Bool)

(assert (=> b!5916043 (= e!3622348 e!3622345)))

(declare-fun c!1051430 () Bool)

(assert (=> b!5916043 (= c!1051430 (isEmpty!35930 (t!377589 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun b!5916044 () Bool)

(assert (=> b!5916044 (= e!3622347 (isEmpty!35930 (t!377589 (t!377589 (exprs!5851 (h!70525 zl!343))))))))

(declare-fun b!5916045 () Bool)

(declare-fun e!3622350 () Regex!15967)

(assert (=> b!5916045 (= e!3622350 (Concat!24812 (h!70524 (t!377589 (exprs!5851 (h!70525 zl!343)))) (generalisedConcat!1564 (t!377589 (t!377589 (exprs!5851 (h!70525 zl!343)))))))))

(declare-fun b!5916046 () Bool)

(assert (=> b!5916046 (= e!3622346 e!3622350)))

(declare-fun c!1051429 () Bool)

(assert (=> b!5916046 (= c!1051429 ((_ is Cons!64076) (t!377589 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun b!5916047 () Bool)

(assert (=> b!5916047 (= e!3622345 (isEmptyExpr!1395 lt!2309666))))

(declare-fun b!5916048 () Bool)

(assert (=> b!5916048 (= e!3622350 EmptyExpr!15967)))

(assert (= (and d!1855547 res!2480535) b!5916044))

(assert (= (and d!1855547 c!1051428) b!5916042))

(assert (= (and d!1855547 (not c!1051428)) b!5916046))

(assert (= (and b!5916046 c!1051429) b!5916045))

(assert (= (and b!5916046 (not c!1051429)) b!5916048))

(assert (= (and d!1855547 res!2480536) b!5916043))

(assert (= (and b!5916043 c!1051430) b!5916047))

(assert (= (and b!5916043 (not c!1051430)) b!5916040))

(assert (= (and b!5916040 c!1051431) b!5916041))

(assert (= (and b!5916040 (not c!1051431)) b!5916039))

(declare-fun m!6813992 () Bool)

(assert (=> b!5916044 m!6813992))

(declare-fun m!6813994 () Bool)

(assert (=> b!5916041 m!6813994))

(assert (=> b!5916043 m!6813142))

(declare-fun m!6813996 () Bool)

(assert (=> d!1855547 m!6813996))

(declare-fun m!6813998 () Bool)

(assert (=> d!1855547 m!6813998))

(declare-fun m!6814000 () Bool)

(assert (=> b!5916045 m!6814000))

(declare-fun m!6814002 () Bool)

(assert (=> b!5916047 m!6814002))

(declare-fun m!6814004 () Bool)

(assert (=> b!5916040 m!6814004))

(assert (=> b!5916040 m!6814004))

(declare-fun m!6814006 () Bool)

(assert (=> b!5916040 m!6814006))

(declare-fun m!6814008 () Bool)

(assert (=> b!5916039 m!6814008))

(assert (=> b!5915281 d!1855547))

(declare-fun d!1855549 () Bool)

(declare-fun res!2480537 () Bool)

(declare-fun e!3622351 () Bool)

(assert (=> d!1855549 (=> res!2480537 e!3622351)))

(assert (=> d!1855549 (= res!2480537 ((_ is Nil!64076) (exprs!5851 (Context!10703 Nil!64076))))))

(assert (=> d!1855549 (= (forall!15050 (exprs!5851 (Context!10703 Nil!64076)) lambda!322750) e!3622351)))

(declare-fun b!5916049 () Bool)

(declare-fun e!3622352 () Bool)

(assert (=> b!5916049 (= e!3622351 e!3622352)))

(declare-fun res!2480538 () Bool)

(assert (=> b!5916049 (=> (not res!2480538) (not e!3622352))))

(assert (=> b!5916049 (= res!2480538 (dynLambda!25052 lambda!322750 (h!70524 (exprs!5851 (Context!10703 Nil!64076)))))))

(declare-fun b!5916050 () Bool)

(assert (=> b!5916050 (= e!3622352 (forall!15050 (t!377589 (exprs!5851 (Context!10703 Nil!64076))) lambda!322750))))

(assert (= (and d!1855549 (not res!2480537)) b!5916049))

(assert (= (and b!5916049 res!2480538) b!5916050))

(declare-fun b_lambda!222247 () Bool)

(assert (=> (not b_lambda!222247) (not b!5916049)))

(declare-fun m!6814010 () Bool)

(assert (=> b!5916049 m!6814010))

(declare-fun m!6814012 () Bool)

(assert (=> b!5916050 m!6814012))

(assert (=> d!1855273 d!1855549))

(declare-fun d!1855551 () Bool)

(assert (=> d!1855551 (= (isEmptyExpr!1395 lt!2309624) ((_ is EmptyExpr!15967) lt!2309624))))

(assert (=> b!5915283 d!1855551))

(assert (=> b!5915190 d!1855543))

(declare-fun d!1855553 () Bool)

(assert (=> d!1855553 (= (isEmpty!35930 (exprs!5851 (h!70525 zl!343))) ((_ is Nil!64076) (exprs!5851 (h!70525 zl!343))))))

(assert (=> b!5915279 d!1855553))

(declare-fun bm!468878 () Bool)

(declare-fun call!468883 () Bool)

(assert (=> bm!468878 (= call!468883 (isEmpty!35933 (_2!36249 (get!22063 lt!2309606))))))

(declare-fun b!5916051 () Bool)

(declare-fun e!3622355 () Bool)

(assert (=> b!5916051 (= e!3622355 (= (head!12475 (_2!36249 (get!22063 lt!2309606))) (c!1051133 (regTwo!32446 r!7292))))))

(declare-fun b!5916052 () Bool)

(declare-fun e!3622357 () Bool)

(declare-fun e!3622359 () Bool)

(assert (=> b!5916052 (= e!3622357 e!3622359)))

(declare-fun c!1051432 () Bool)

(assert (=> b!5916052 (= c!1051432 ((_ is EmptyLang!15967) (regTwo!32446 r!7292)))))

(declare-fun b!5916053 () Bool)

(declare-fun lt!2309667 () Bool)

(assert (=> b!5916053 (= e!3622359 (not lt!2309667))))

(declare-fun b!5916054 () Bool)

(assert (=> b!5916054 (= e!3622357 (= lt!2309667 call!468883))))

(declare-fun b!5916056 () Bool)

(declare-fun e!3622354 () Bool)

(assert (=> b!5916056 (= e!3622354 (matchR!8150 (derivativeStep!4698 (regTwo!32446 r!7292) (head!12475 (_2!36249 (get!22063 lt!2309606)))) (tail!11560 (_2!36249 (get!22063 lt!2309606)))))))

(declare-fun b!5916057 () Bool)

(declare-fun res!2480546 () Bool)

(declare-fun e!3622356 () Bool)

(assert (=> b!5916057 (=> res!2480546 e!3622356)))

(assert (=> b!5916057 (= res!2480546 (not ((_ is ElementMatch!15967) (regTwo!32446 r!7292))))))

(assert (=> b!5916057 (= e!3622359 e!3622356)))

(declare-fun b!5916058 () Bool)

(declare-fun res!2480544 () Bool)

(assert (=> b!5916058 (=> res!2480544 e!3622356)))

(assert (=> b!5916058 (= res!2480544 e!3622355)))

(declare-fun res!2480540 () Bool)

(assert (=> b!5916058 (=> (not res!2480540) (not e!3622355))))

(assert (=> b!5916058 (= res!2480540 lt!2309667)))

(declare-fun b!5916059 () Bool)

(declare-fun e!3622358 () Bool)

(assert (=> b!5916059 (= e!3622358 (not (= (head!12475 (_2!36249 (get!22063 lt!2309606))) (c!1051133 (regTwo!32446 r!7292)))))))

(declare-fun b!5916060 () Bool)

(declare-fun e!3622353 () Bool)

(assert (=> b!5916060 (= e!3622353 e!3622358)))

(declare-fun res!2480545 () Bool)

(assert (=> b!5916060 (=> res!2480545 e!3622358)))

(assert (=> b!5916060 (= res!2480545 call!468883)))

(declare-fun b!5916061 () Bool)

(declare-fun res!2480543 () Bool)

(assert (=> b!5916061 (=> (not res!2480543) (not e!3622355))))

(assert (=> b!5916061 (= res!2480543 (not call!468883))))

(declare-fun b!5916062 () Bool)

(declare-fun res!2480539 () Bool)

(assert (=> b!5916062 (=> res!2480539 e!3622358)))

(assert (=> b!5916062 (= res!2480539 (not (isEmpty!35933 (tail!11560 (_2!36249 (get!22063 lt!2309606))))))))

(declare-fun b!5916063 () Bool)

(declare-fun res!2480542 () Bool)

(assert (=> b!5916063 (=> (not res!2480542) (not e!3622355))))

(assert (=> b!5916063 (= res!2480542 (isEmpty!35933 (tail!11560 (_2!36249 (get!22063 lt!2309606)))))))

(declare-fun b!5916064 () Bool)

(assert (=> b!5916064 (= e!3622354 (nullable!5962 (regTwo!32446 r!7292)))))

(declare-fun d!1855555 () Bool)

(assert (=> d!1855555 e!3622357))

(declare-fun c!1051434 () Bool)

(assert (=> d!1855555 (= c!1051434 ((_ is EmptyExpr!15967) (regTwo!32446 r!7292)))))

(assert (=> d!1855555 (= lt!2309667 e!3622354)))

(declare-fun c!1051433 () Bool)

(assert (=> d!1855555 (= c!1051433 (isEmpty!35933 (_2!36249 (get!22063 lt!2309606))))))

(assert (=> d!1855555 (validRegex!7703 (regTwo!32446 r!7292))))

(assert (=> d!1855555 (= (matchR!8150 (regTwo!32446 r!7292) (_2!36249 (get!22063 lt!2309606))) lt!2309667)))

(declare-fun b!5916055 () Bool)

(assert (=> b!5916055 (= e!3622356 e!3622353)))

(declare-fun res!2480541 () Bool)

(assert (=> b!5916055 (=> (not res!2480541) (not e!3622353))))

(assert (=> b!5916055 (= res!2480541 (not lt!2309667))))

(assert (= (and d!1855555 c!1051433) b!5916064))

(assert (= (and d!1855555 (not c!1051433)) b!5916056))

(assert (= (and d!1855555 c!1051434) b!5916054))

(assert (= (and d!1855555 (not c!1051434)) b!5916052))

(assert (= (and b!5916052 c!1051432) b!5916053))

(assert (= (and b!5916052 (not c!1051432)) b!5916057))

(assert (= (and b!5916057 (not res!2480546)) b!5916058))

(assert (= (and b!5916058 res!2480540) b!5916061))

(assert (= (and b!5916061 res!2480543) b!5916063))

(assert (= (and b!5916063 res!2480542) b!5916051))

(assert (= (and b!5916058 (not res!2480544)) b!5916055))

(assert (= (and b!5916055 res!2480541) b!5916060))

(assert (= (and b!5916060 (not res!2480545)) b!5916062))

(assert (= (and b!5916062 (not res!2480539)) b!5916059))

(assert (= (or b!5916054 b!5916060 b!5916061) bm!468878))

(declare-fun m!6814014 () Bool)

(assert (=> bm!468878 m!6814014))

(assert (=> b!5916064 m!6813920))

(declare-fun m!6814016 () Bool)

(assert (=> b!5916051 m!6814016))

(assert (=> d!1855555 m!6814014))

(assert (=> d!1855555 m!6813922))

(assert (=> b!5916059 m!6814016))

(assert (=> b!5916056 m!6814016))

(assert (=> b!5916056 m!6814016))

(declare-fun m!6814018 () Bool)

(assert (=> b!5916056 m!6814018))

(declare-fun m!6814020 () Bool)

(assert (=> b!5916056 m!6814020))

(assert (=> b!5916056 m!6814018))

(assert (=> b!5916056 m!6814020))

(declare-fun m!6814022 () Bool)

(assert (=> b!5916056 m!6814022))

(assert (=> b!5916062 m!6814020))

(assert (=> b!5916062 m!6814020))

(declare-fun m!6814024 () Bool)

(assert (=> b!5916062 m!6814024))

(assert (=> b!5916063 m!6814020))

(assert (=> b!5916063 m!6814020))

(assert (=> b!5916063 m!6814024))

(assert (=> b!5915188 d!1855555))

(assert (=> b!5915188 d!1855505))

(assert (=> d!1855261 d!1855255))

(declare-fun d!1855557 () Bool)

(assert (=> d!1855557 (= (Exists!3037 lambda!322734) (choose!44627 lambda!322734))))

(declare-fun bs!1400604 () Bool)

(assert (= bs!1400604 d!1855557))

(declare-fun m!6814026 () Bool)

(assert (=> bs!1400604 m!6814026))

(assert (=> d!1855261 d!1855557))

(assert (=> d!1855261 d!1855501))

(assert (=> d!1855261 d!1855265))

(declare-fun bs!1400605 () Bool)

(declare-fun d!1855559 () Bool)

(assert (= bs!1400605 (and d!1855559 d!1855263)))

(declare-fun lambda!322790 () Int)

(assert (=> bs!1400605 (not (= lambda!322790 lambda!322740))))

(declare-fun bs!1400606 () Bool)

(assert (= bs!1400606 (and d!1855559 b!5915813)))

(assert (=> bs!1400606 (not (= lambda!322790 lambda!322775))))

(declare-fun bs!1400607 () Bool)

(assert (= bs!1400607 (and d!1855559 b!5915989)))

(assert (=> bs!1400607 (not (= lambda!322790 lambda!322784))))

(assert (=> bs!1400605 (= lambda!322790 lambda!322739)))

(declare-fun bs!1400608 () Bool)

(assert (= bs!1400608 (and d!1855559 d!1855261)))

(assert (=> bs!1400608 (= lambda!322790 lambda!322734)))

(declare-fun bs!1400609 () Bool)

(assert (= bs!1400609 (and d!1855559 b!5915820)))

(assert (=> bs!1400609 (not (= lambda!322790 lambda!322774))))

(declare-fun bs!1400610 () Bool)

(assert (= bs!1400610 (and d!1855559 d!1855499)))

(assert (=> bs!1400610 (= lambda!322790 lambda!322781)))

(declare-fun bs!1400611 () Bool)

(assert (= bs!1400611 (and d!1855559 b!5914987)))

(assert (=> bs!1400611 (not (= lambda!322790 lambda!322721))))

(assert (=> bs!1400610 (not (= lambda!322790 lambda!322782))))

(declare-fun bs!1400612 () Bool)

(assert (= bs!1400612 (and d!1855559 b!5915996)))

(assert (=> bs!1400612 (not (= lambda!322790 lambda!322783))))

(declare-fun bs!1400613 () Bool)

(assert (= bs!1400613 (and d!1855559 b!5914749)))

(assert (=> bs!1400613 (= lambda!322790 lambda!322695)))

(assert (=> bs!1400613 (not (= lambda!322790 lambda!322696))))

(declare-fun bs!1400614 () Bool)

(assert (= bs!1400614 (and d!1855559 b!5914980)))

(assert (=> bs!1400614 (not (= lambda!322790 lambda!322722))))

(assert (=> d!1855559 true))

(assert (=> d!1855559 true))

(assert (=> d!1855559 true))

(assert (=> d!1855559 (= (isDefined!12561 (findConcatSeparation!2272 (regOne!32446 r!7292) (regTwo!32446 r!7292) Nil!64078 s!2326 s!2326)) (Exists!3037 lambda!322790))))

(assert (=> d!1855559 true))

(declare-fun _$89!1954 () Unit!157205)

(assert (=> d!1855559 (= (choose!44628 (regOne!32446 r!7292) (regTwo!32446 r!7292) s!2326) _$89!1954)))

(declare-fun bs!1400615 () Bool)

(assert (= bs!1400615 d!1855559))

(assert (=> bs!1400615 m!6813110))

(assert (=> bs!1400615 m!6813110))

(assert (=> bs!1400615 m!6813112))

(declare-fun m!6814028 () Bool)

(assert (=> bs!1400615 m!6814028))

(assert (=> d!1855261 d!1855559))

(declare-fun d!1855561 () Bool)

(assert (=> d!1855561 (= (head!12476 (exprs!5851 (h!70525 zl!343))) (h!70524 (exprs!5851 (h!70525 zl!343))))))

(assert (=> b!5915277 d!1855561))

(assert (=> d!1855241 d!1855459))

(assert (=> d!1855241 d!1855253))

(assert (=> b!5915074 d!1855507))

(assert (=> b!5915074 d!1855443))

(declare-fun bm!468879 () Bool)

(declare-fun call!468884 () Bool)

(assert (=> bm!468879 (= call!468884 (isEmpty!35933 (_1!36249 (get!22063 lt!2309606))))))

(declare-fun b!5916069 () Bool)

(declare-fun e!3622364 () Bool)

(assert (=> b!5916069 (= e!3622364 (= (head!12475 (_1!36249 (get!22063 lt!2309606))) (c!1051133 (regOne!32446 r!7292))))))

(declare-fun b!5916070 () Bool)

(declare-fun e!3622366 () Bool)

(declare-fun e!3622368 () Bool)

(assert (=> b!5916070 (= e!3622366 e!3622368)))

(declare-fun c!1051435 () Bool)

(assert (=> b!5916070 (= c!1051435 ((_ is EmptyLang!15967) (regOne!32446 r!7292)))))

(declare-fun b!5916071 () Bool)

(declare-fun lt!2309668 () Bool)

(assert (=> b!5916071 (= e!3622368 (not lt!2309668))))

(declare-fun b!5916072 () Bool)

(assert (=> b!5916072 (= e!3622366 (= lt!2309668 call!468884))))

(declare-fun b!5916074 () Bool)

(declare-fun e!3622363 () Bool)

(assert (=> b!5916074 (= e!3622363 (matchR!8150 (derivativeStep!4698 (regOne!32446 r!7292) (head!12475 (_1!36249 (get!22063 lt!2309606)))) (tail!11560 (_1!36249 (get!22063 lt!2309606)))))))

(declare-fun b!5916075 () Bool)

(declare-fun res!2480558 () Bool)

(declare-fun e!3622365 () Bool)

(assert (=> b!5916075 (=> res!2480558 e!3622365)))

(assert (=> b!5916075 (= res!2480558 (not ((_ is ElementMatch!15967) (regOne!32446 r!7292))))))

(assert (=> b!5916075 (= e!3622368 e!3622365)))

(declare-fun b!5916076 () Bool)

(declare-fun res!2480556 () Bool)

(assert (=> b!5916076 (=> res!2480556 e!3622365)))

(assert (=> b!5916076 (= res!2480556 e!3622364)))

(declare-fun res!2480552 () Bool)

(assert (=> b!5916076 (=> (not res!2480552) (not e!3622364))))

(assert (=> b!5916076 (= res!2480552 lt!2309668)))

(declare-fun b!5916077 () Bool)

(declare-fun e!3622367 () Bool)

(assert (=> b!5916077 (= e!3622367 (not (= (head!12475 (_1!36249 (get!22063 lt!2309606))) (c!1051133 (regOne!32446 r!7292)))))))

(declare-fun b!5916078 () Bool)

(declare-fun e!3622362 () Bool)

(assert (=> b!5916078 (= e!3622362 e!3622367)))

(declare-fun res!2480557 () Bool)

(assert (=> b!5916078 (=> res!2480557 e!3622367)))

(assert (=> b!5916078 (= res!2480557 call!468884)))

(declare-fun b!5916079 () Bool)

(declare-fun res!2480555 () Bool)

(assert (=> b!5916079 (=> (not res!2480555) (not e!3622364))))

(assert (=> b!5916079 (= res!2480555 (not call!468884))))

(declare-fun b!5916080 () Bool)

(declare-fun res!2480551 () Bool)

(assert (=> b!5916080 (=> res!2480551 e!3622367)))

(assert (=> b!5916080 (= res!2480551 (not (isEmpty!35933 (tail!11560 (_1!36249 (get!22063 lt!2309606))))))))

(declare-fun b!5916081 () Bool)

(declare-fun res!2480554 () Bool)

(assert (=> b!5916081 (=> (not res!2480554) (not e!3622364))))

(assert (=> b!5916081 (= res!2480554 (isEmpty!35933 (tail!11560 (_1!36249 (get!22063 lt!2309606)))))))

(declare-fun b!5916082 () Bool)

(assert (=> b!5916082 (= e!3622363 (nullable!5962 (regOne!32446 r!7292)))))

(declare-fun d!1855563 () Bool)

(assert (=> d!1855563 e!3622366))

(declare-fun c!1051437 () Bool)

(assert (=> d!1855563 (= c!1051437 ((_ is EmptyExpr!15967) (regOne!32446 r!7292)))))

(assert (=> d!1855563 (= lt!2309668 e!3622363)))

(declare-fun c!1051436 () Bool)

(assert (=> d!1855563 (= c!1051436 (isEmpty!35933 (_1!36249 (get!22063 lt!2309606))))))

(assert (=> d!1855563 (validRegex!7703 (regOne!32446 r!7292))))

(assert (=> d!1855563 (= (matchR!8150 (regOne!32446 r!7292) (_1!36249 (get!22063 lt!2309606))) lt!2309668)))

(declare-fun b!5916073 () Bool)

(assert (=> b!5916073 (= e!3622365 e!3622362)))

(declare-fun res!2480553 () Bool)

(assert (=> b!5916073 (=> (not res!2480553) (not e!3622362))))

(assert (=> b!5916073 (= res!2480553 (not lt!2309668))))

(assert (= (and d!1855563 c!1051436) b!5916082))

(assert (= (and d!1855563 (not c!1051436)) b!5916074))

(assert (= (and d!1855563 c!1051437) b!5916072))

(assert (= (and d!1855563 (not c!1051437)) b!5916070))

(assert (= (and b!5916070 c!1051435) b!5916071))

(assert (= (and b!5916070 (not c!1051435)) b!5916075))

(assert (= (and b!5916075 (not res!2480558)) b!5916076))

(assert (= (and b!5916076 res!2480552) b!5916079))

(assert (= (and b!5916079 res!2480555) b!5916081))

(assert (= (and b!5916081 res!2480554) b!5916069))

(assert (= (and b!5916076 (not res!2480556)) b!5916073))

(assert (= (and b!5916073 res!2480553) b!5916078))

(assert (= (and b!5916078 (not res!2480557)) b!5916080))

(assert (= (and b!5916080 (not res!2480551)) b!5916077))

(assert (= (or b!5916072 b!5916078 b!5916079) bm!468879))

(declare-fun m!6814030 () Bool)

(assert (=> bm!468879 m!6814030))

(assert (=> b!5916082 m!6813754))

(declare-fun m!6814032 () Bool)

(assert (=> b!5916069 m!6814032))

(assert (=> d!1855563 m!6814030))

(assert (=> d!1855563 m!6813324))

(assert (=> b!5916077 m!6814032))

(assert (=> b!5916074 m!6814032))

(assert (=> b!5916074 m!6814032))

(declare-fun m!6814034 () Bool)

(assert (=> b!5916074 m!6814034))

(declare-fun m!6814036 () Bool)

(assert (=> b!5916074 m!6814036))

(assert (=> b!5916074 m!6814034))

(assert (=> b!5916074 m!6814036))

(declare-fun m!6814038 () Bool)

(assert (=> b!5916074 m!6814038))

(assert (=> b!5916080 m!6814036))

(assert (=> b!5916080 m!6814036))

(declare-fun m!6814040 () Bool)

(assert (=> b!5916080 m!6814040))

(assert (=> b!5916081 m!6814036))

(assert (=> b!5916081 m!6814036))

(assert (=> b!5916081 m!6814040))

(assert (=> b!5915186 d!1855563))

(assert (=> b!5915186 d!1855505))

(assert (=> bm!468743 d!1855459))

(declare-fun d!1855565 () Bool)

(assert (=> d!1855565 (= (isConcat!918 lt!2309624) ((_ is Concat!24812) lt!2309624))))

(assert (=> b!5915275 d!1855565))

(declare-fun b!5916083 () Bool)

(declare-fun e!3622369 () Bool)

(assert (=> b!5916083 (= e!3622369 tp_is_empty!41187)))

(assert (=> b!5915337 (= tp!1643498 e!3622369)))

(declare-fun b!5916086 () Bool)

(declare-fun tp!1643661 () Bool)

(declare-fun tp!1643660 () Bool)

(assert (=> b!5916086 (= e!3622369 (and tp!1643661 tp!1643660))))

(declare-fun b!5916084 () Bool)

(declare-fun tp!1643659 () Bool)

(declare-fun tp!1643662 () Bool)

(assert (=> b!5916084 (= e!3622369 (and tp!1643659 tp!1643662))))

(declare-fun b!5916085 () Bool)

(declare-fun tp!1643663 () Bool)

(assert (=> b!5916085 (= e!3622369 tp!1643663)))

(assert (= (and b!5915337 ((_ is ElementMatch!15967) (reg!16296 (regTwo!32446 r!7292)))) b!5916083))

(assert (= (and b!5915337 ((_ is Concat!24812) (reg!16296 (regTwo!32446 r!7292)))) b!5916084))

(assert (= (and b!5915337 ((_ is Star!15967) (reg!16296 (regTwo!32446 r!7292)))) b!5916085))

(assert (= (and b!5915337 ((_ is Union!15967) (reg!16296 (regTwo!32446 r!7292)))) b!5916086))

(declare-fun b!5916088 () Bool)

(declare-fun e!3622371 () Bool)

(declare-fun tp!1643664 () Bool)

(assert (=> b!5916088 (= e!3622371 tp!1643664)))

(declare-fun e!3622370 () Bool)

(declare-fun tp!1643665 () Bool)

(declare-fun b!5916087 () Bool)

(assert (=> b!5916087 (= e!3622370 (and (inv!83164 (h!70525 (t!377590 (t!377590 zl!343)))) e!3622371 tp!1643665))))

(assert (=> b!5915309 (= tp!1643466 e!3622370)))

(assert (= b!5916087 b!5916088))

(assert (= (and b!5915309 ((_ is Cons!64077) (t!377590 (t!377590 zl!343)))) b!5916087))

(declare-fun m!6814042 () Bool)

(assert (=> b!5916087 m!6814042))

(declare-fun b!5916089 () Bool)

(declare-fun e!3622372 () Bool)

(declare-fun tp!1643666 () Bool)

(declare-fun tp!1643667 () Bool)

(assert (=> b!5916089 (= e!3622372 (and tp!1643666 tp!1643667))))

(assert (=> b!5915310 (= tp!1643465 e!3622372)))

(assert (= (and b!5915310 ((_ is Cons!64076) (exprs!5851 (h!70525 (t!377590 zl!343))))) b!5916089))

(declare-fun b!5916090 () Bool)

(declare-fun e!3622373 () Bool)

(assert (=> b!5916090 (= e!3622373 tp_is_empty!41187)))

(assert (=> b!5915338 (= tp!1643496 e!3622373)))

(declare-fun b!5916093 () Bool)

(declare-fun tp!1643670 () Bool)

(declare-fun tp!1643669 () Bool)

(assert (=> b!5916093 (= e!3622373 (and tp!1643670 tp!1643669))))

(declare-fun b!5916091 () Bool)

(declare-fun tp!1643668 () Bool)

(declare-fun tp!1643671 () Bool)

(assert (=> b!5916091 (= e!3622373 (and tp!1643668 tp!1643671))))

(declare-fun b!5916092 () Bool)

(declare-fun tp!1643672 () Bool)

(assert (=> b!5916092 (= e!3622373 tp!1643672)))

(assert (= (and b!5915338 ((_ is ElementMatch!15967) (regOne!32447 (regTwo!32446 r!7292)))) b!5916090))

(assert (= (and b!5915338 ((_ is Concat!24812) (regOne!32447 (regTwo!32446 r!7292)))) b!5916091))

(assert (= (and b!5915338 ((_ is Star!15967) (regOne!32447 (regTwo!32446 r!7292)))) b!5916092))

(assert (= (and b!5915338 ((_ is Union!15967) (regOne!32447 (regTwo!32446 r!7292)))) b!5916093))

(declare-fun b!5916094 () Bool)

(declare-fun e!3622374 () Bool)

(assert (=> b!5916094 (= e!3622374 tp_is_empty!41187)))

(assert (=> b!5915338 (= tp!1643495 e!3622374)))

(declare-fun b!5916097 () Bool)

(declare-fun tp!1643675 () Bool)

(declare-fun tp!1643674 () Bool)

(assert (=> b!5916097 (= e!3622374 (and tp!1643675 tp!1643674))))

(declare-fun b!5916095 () Bool)

(declare-fun tp!1643673 () Bool)

(declare-fun tp!1643676 () Bool)

(assert (=> b!5916095 (= e!3622374 (and tp!1643673 tp!1643676))))

(declare-fun b!5916096 () Bool)

(declare-fun tp!1643677 () Bool)

(assert (=> b!5916096 (= e!3622374 tp!1643677)))

(assert (= (and b!5915338 ((_ is ElementMatch!15967) (regTwo!32447 (regTwo!32446 r!7292)))) b!5916094))

(assert (= (and b!5915338 ((_ is Concat!24812) (regTwo!32447 (regTwo!32446 r!7292)))) b!5916095))

(assert (= (and b!5915338 ((_ is Star!15967) (regTwo!32447 (regTwo!32446 r!7292)))) b!5916096))

(assert (= (and b!5915338 ((_ is Union!15967) (regTwo!32447 (regTwo!32446 r!7292)))) b!5916097))

(declare-fun b!5916098 () Bool)

(declare-fun e!3622375 () Bool)

(assert (=> b!5916098 (= e!3622375 tp_is_empty!41187)))

(assert (=> b!5915301 (= tp!1643460 e!3622375)))

(declare-fun b!5916101 () Bool)

(declare-fun tp!1643680 () Bool)

(declare-fun tp!1643679 () Bool)

(assert (=> b!5916101 (= e!3622375 (and tp!1643680 tp!1643679))))

(declare-fun b!5916099 () Bool)

(declare-fun tp!1643678 () Bool)

(declare-fun tp!1643681 () Bool)

(assert (=> b!5916099 (= e!3622375 (and tp!1643678 tp!1643681))))

(declare-fun b!5916100 () Bool)

(declare-fun tp!1643682 () Bool)

(assert (=> b!5916100 (= e!3622375 tp!1643682)))

(assert (= (and b!5915301 ((_ is ElementMatch!15967) (reg!16296 (regTwo!32447 r!7292)))) b!5916098))

(assert (= (and b!5915301 ((_ is Concat!24812) (reg!16296 (regTwo!32447 r!7292)))) b!5916099))

(assert (= (and b!5915301 ((_ is Star!15967) (reg!16296 (regTwo!32447 r!7292)))) b!5916100))

(assert (= (and b!5915301 ((_ is Union!15967) (reg!16296 (regTwo!32447 r!7292)))) b!5916101))

(declare-fun b!5916102 () Bool)

(declare-fun e!3622376 () Bool)

(assert (=> b!5916102 (= e!3622376 tp_is_empty!41187)))

(assert (=> b!5915302 (= tp!1643458 e!3622376)))

(declare-fun b!5916105 () Bool)

(declare-fun tp!1643685 () Bool)

(declare-fun tp!1643684 () Bool)

(assert (=> b!5916105 (= e!3622376 (and tp!1643685 tp!1643684))))

(declare-fun b!5916103 () Bool)

(declare-fun tp!1643683 () Bool)

(declare-fun tp!1643686 () Bool)

(assert (=> b!5916103 (= e!3622376 (and tp!1643683 tp!1643686))))

(declare-fun b!5916104 () Bool)

(declare-fun tp!1643687 () Bool)

(assert (=> b!5916104 (= e!3622376 tp!1643687)))

(assert (= (and b!5915302 ((_ is ElementMatch!15967) (regOne!32447 (regTwo!32447 r!7292)))) b!5916102))

(assert (= (and b!5915302 ((_ is Concat!24812) (regOne!32447 (regTwo!32447 r!7292)))) b!5916103))

(assert (= (and b!5915302 ((_ is Star!15967) (regOne!32447 (regTwo!32447 r!7292)))) b!5916104))

(assert (= (and b!5915302 ((_ is Union!15967) (regOne!32447 (regTwo!32447 r!7292)))) b!5916105))

(declare-fun b!5916106 () Bool)

(declare-fun e!3622377 () Bool)

(assert (=> b!5916106 (= e!3622377 tp_is_empty!41187)))

(assert (=> b!5915302 (= tp!1643457 e!3622377)))

(declare-fun b!5916109 () Bool)

(declare-fun tp!1643690 () Bool)

(declare-fun tp!1643689 () Bool)

(assert (=> b!5916109 (= e!3622377 (and tp!1643690 tp!1643689))))

(declare-fun b!5916107 () Bool)

(declare-fun tp!1643688 () Bool)

(declare-fun tp!1643691 () Bool)

(assert (=> b!5916107 (= e!3622377 (and tp!1643688 tp!1643691))))

(declare-fun b!5916108 () Bool)

(declare-fun tp!1643692 () Bool)

(assert (=> b!5916108 (= e!3622377 tp!1643692)))

(assert (= (and b!5915302 ((_ is ElementMatch!15967) (regTwo!32447 (regTwo!32447 r!7292)))) b!5916106))

(assert (= (and b!5915302 ((_ is Concat!24812) (regTwo!32447 (regTwo!32447 r!7292)))) b!5916107))

(assert (= (and b!5915302 ((_ is Star!15967) (regTwo!32447 (regTwo!32447 r!7292)))) b!5916108))

(assert (= (and b!5915302 ((_ is Union!15967) (regTwo!32447 (regTwo!32447 r!7292)))) b!5916109))

(declare-fun b!5916110 () Bool)

(declare-fun e!3622378 () Bool)

(assert (=> b!5916110 (= e!3622378 tp_is_empty!41187)))

(assert (=> b!5915336 (= tp!1643494 e!3622378)))

(declare-fun b!5916113 () Bool)

(declare-fun tp!1643695 () Bool)

(declare-fun tp!1643694 () Bool)

(assert (=> b!5916113 (= e!3622378 (and tp!1643695 tp!1643694))))

(declare-fun b!5916111 () Bool)

(declare-fun tp!1643693 () Bool)

(declare-fun tp!1643696 () Bool)

(assert (=> b!5916111 (= e!3622378 (and tp!1643693 tp!1643696))))

(declare-fun b!5916112 () Bool)

(declare-fun tp!1643697 () Bool)

(assert (=> b!5916112 (= e!3622378 tp!1643697)))

(assert (= (and b!5915336 ((_ is ElementMatch!15967) (regOne!32446 (regTwo!32446 r!7292)))) b!5916110))

(assert (= (and b!5915336 ((_ is Concat!24812) (regOne!32446 (regTwo!32446 r!7292)))) b!5916111))

(assert (= (and b!5915336 ((_ is Star!15967) (regOne!32446 (regTwo!32446 r!7292)))) b!5916112))

(assert (= (and b!5915336 ((_ is Union!15967) (regOne!32446 (regTwo!32446 r!7292)))) b!5916113))

(declare-fun b!5916114 () Bool)

(declare-fun e!3622379 () Bool)

(assert (=> b!5916114 (= e!3622379 tp_is_empty!41187)))

(assert (=> b!5915336 (= tp!1643497 e!3622379)))

(declare-fun b!5916117 () Bool)

(declare-fun tp!1643700 () Bool)

(declare-fun tp!1643699 () Bool)

(assert (=> b!5916117 (= e!3622379 (and tp!1643700 tp!1643699))))

(declare-fun b!5916115 () Bool)

(declare-fun tp!1643698 () Bool)

(declare-fun tp!1643701 () Bool)

(assert (=> b!5916115 (= e!3622379 (and tp!1643698 tp!1643701))))

(declare-fun b!5916116 () Bool)

(declare-fun tp!1643702 () Bool)

(assert (=> b!5916116 (= e!3622379 tp!1643702)))

(assert (= (and b!5915336 ((_ is ElementMatch!15967) (regTwo!32446 (regTwo!32446 r!7292)))) b!5916114))

(assert (= (and b!5915336 ((_ is Concat!24812) (regTwo!32446 (regTwo!32446 r!7292)))) b!5916115))

(assert (= (and b!5915336 ((_ is Star!15967) (regTwo!32446 (regTwo!32446 r!7292)))) b!5916116))

(assert (= (and b!5915336 ((_ is Union!15967) (regTwo!32446 (regTwo!32446 r!7292)))) b!5916117))

(declare-fun condSetEmpty!40154 () Bool)

(assert (=> setNonEmpty!40152 (= condSetEmpty!40154 (= setRest!40152 ((as const (Array Context!10702 Bool)) false)))))

(declare-fun setRes!40154 () Bool)

(assert (=> setNonEmpty!40152 (= tp!1643485 setRes!40154)))

(declare-fun setIsEmpty!40154 () Bool)

(assert (=> setIsEmpty!40154 setRes!40154))

(declare-fun tp!1643703 () Bool)

(declare-fun setElem!40154 () Context!10702)

(declare-fun e!3622380 () Bool)

(declare-fun setNonEmpty!40154 () Bool)

(assert (=> setNonEmpty!40154 (= setRes!40154 (and tp!1643703 (inv!83164 setElem!40154) e!3622380))))

(declare-fun setRest!40154 () (InoxSet Context!10702))

(assert (=> setNonEmpty!40154 (= setRest!40152 ((_ map or) (store ((as const (Array Context!10702 Bool)) false) setElem!40154 true) setRest!40154))))

(declare-fun b!5916118 () Bool)

(declare-fun tp!1643704 () Bool)

(assert (=> b!5916118 (= e!3622380 tp!1643704)))

(assert (= (and setNonEmpty!40152 condSetEmpty!40154) setIsEmpty!40154))

(assert (= (and setNonEmpty!40152 (not condSetEmpty!40154)) setNonEmpty!40154))

(assert (= setNonEmpty!40154 b!5916118))

(declare-fun m!6814044 () Bool)

(assert (=> setNonEmpty!40154 m!6814044))

(declare-fun b!5916119 () Bool)

(declare-fun e!3622381 () Bool)

(assert (=> b!5916119 (= e!3622381 tp_is_empty!41187)))

(assert (=> b!5915300 (= tp!1643456 e!3622381)))

(declare-fun b!5916122 () Bool)

(declare-fun tp!1643707 () Bool)

(declare-fun tp!1643706 () Bool)

(assert (=> b!5916122 (= e!3622381 (and tp!1643707 tp!1643706))))

(declare-fun b!5916120 () Bool)

(declare-fun tp!1643705 () Bool)

(declare-fun tp!1643708 () Bool)

(assert (=> b!5916120 (= e!3622381 (and tp!1643705 tp!1643708))))

(declare-fun b!5916121 () Bool)

(declare-fun tp!1643709 () Bool)

(assert (=> b!5916121 (= e!3622381 tp!1643709)))

(assert (= (and b!5915300 ((_ is ElementMatch!15967) (regOne!32446 (regTwo!32447 r!7292)))) b!5916119))

(assert (= (and b!5915300 ((_ is Concat!24812) (regOne!32446 (regTwo!32447 r!7292)))) b!5916120))

(assert (= (and b!5915300 ((_ is Star!15967) (regOne!32446 (regTwo!32447 r!7292)))) b!5916121))

(assert (= (and b!5915300 ((_ is Union!15967) (regOne!32446 (regTwo!32447 r!7292)))) b!5916122))

(declare-fun b!5916123 () Bool)

(declare-fun e!3622382 () Bool)

(assert (=> b!5916123 (= e!3622382 tp_is_empty!41187)))

(assert (=> b!5915300 (= tp!1643459 e!3622382)))

(declare-fun b!5916126 () Bool)

(declare-fun tp!1643712 () Bool)

(declare-fun tp!1643711 () Bool)

(assert (=> b!5916126 (= e!3622382 (and tp!1643712 tp!1643711))))

(declare-fun b!5916124 () Bool)

(declare-fun tp!1643710 () Bool)

(declare-fun tp!1643713 () Bool)

(assert (=> b!5916124 (= e!3622382 (and tp!1643710 tp!1643713))))

(declare-fun b!5916125 () Bool)

(declare-fun tp!1643714 () Bool)

(assert (=> b!5916125 (= e!3622382 tp!1643714)))

(assert (= (and b!5915300 ((_ is ElementMatch!15967) (regTwo!32446 (regTwo!32447 r!7292)))) b!5916123))

(assert (= (and b!5915300 ((_ is Concat!24812) (regTwo!32446 (regTwo!32447 r!7292)))) b!5916124))

(assert (= (and b!5915300 ((_ is Star!15967) (regTwo!32446 (regTwo!32447 r!7292)))) b!5916125))

(assert (= (and b!5915300 ((_ is Union!15967) (regTwo!32446 (regTwo!32447 r!7292)))) b!5916126))

(declare-fun b!5916127 () Bool)

(declare-fun e!3622383 () Bool)

(declare-fun tp!1643715 () Bool)

(declare-fun tp!1643716 () Bool)

(assert (=> b!5916127 (= e!3622383 (and tp!1643715 tp!1643716))))

(assert (=> b!5915329 (= tp!1643486 e!3622383)))

(assert (= (and b!5915329 ((_ is Cons!64076) (exprs!5851 setElem!40152))) b!5916127))

(declare-fun b!5916128 () Bool)

(declare-fun e!3622384 () Bool)

(assert (=> b!5916128 (= e!3622384 tp_is_empty!41187)))

(assert (=> b!5915312 (= tp!1643467 e!3622384)))

(declare-fun b!5916131 () Bool)

(declare-fun tp!1643719 () Bool)

(declare-fun tp!1643718 () Bool)

(assert (=> b!5916131 (= e!3622384 (and tp!1643719 tp!1643718))))

(declare-fun b!5916129 () Bool)

(declare-fun tp!1643717 () Bool)

(declare-fun tp!1643720 () Bool)

(assert (=> b!5916129 (= e!3622384 (and tp!1643717 tp!1643720))))

(declare-fun b!5916130 () Bool)

(declare-fun tp!1643721 () Bool)

(assert (=> b!5916130 (= e!3622384 tp!1643721)))

(assert (= (and b!5915312 ((_ is ElementMatch!15967) (regOne!32446 (reg!16296 r!7292)))) b!5916128))

(assert (= (and b!5915312 ((_ is Concat!24812) (regOne!32446 (reg!16296 r!7292)))) b!5916129))

(assert (= (and b!5915312 ((_ is Star!15967) (regOne!32446 (reg!16296 r!7292)))) b!5916130))

(assert (= (and b!5915312 ((_ is Union!15967) (regOne!32446 (reg!16296 r!7292)))) b!5916131))

(declare-fun b!5916132 () Bool)

(declare-fun e!3622385 () Bool)

(assert (=> b!5916132 (= e!3622385 tp_is_empty!41187)))

(assert (=> b!5915312 (= tp!1643470 e!3622385)))

(declare-fun b!5916135 () Bool)

(declare-fun tp!1643724 () Bool)

(declare-fun tp!1643723 () Bool)

(assert (=> b!5916135 (= e!3622385 (and tp!1643724 tp!1643723))))

(declare-fun b!5916133 () Bool)

(declare-fun tp!1643722 () Bool)

(declare-fun tp!1643725 () Bool)

(assert (=> b!5916133 (= e!3622385 (and tp!1643722 tp!1643725))))

(declare-fun b!5916134 () Bool)

(declare-fun tp!1643726 () Bool)

(assert (=> b!5916134 (= e!3622385 tp!1643726)))

(assert (= (and b!5915312 ((_ is ElementMatch!15967) (regTwo!32446 (reg!16296 r!7292)))) b!5916132))

(assert (= (and b!5915312 ((_ is Concat!24812) (regTwo!32446 (reg!16296 r!7292)))) b!5916133))

(assert (= (and b!5915312 ((_ is Star!15967) (regTwo!32446 (reg!16296 r!7292)))) b!5916134))

(assert (= (and b!5915312 ((_ is Union!15967) (regTwo!32446 (reg!16296 r!7292)))) b!5916135))

(declare-fun b!5916136 () Bool)

(declare-fun e!3622386 () Bool)

(assert (=> b!5916136 (= e!3622386 tp_is_empty!41187)))

(assert (=> b!5915332 (= tp!1643489 e!3622386)))

(declare-fun b!5916139 () Bool)

(declare-fun tp!1643729 () Bool)

(declare-fun tp!1643728 () Bool)

(assert (=> b!5916139 (= e!3622386 (and tp!1643729 tp!1643728))))

(declare-fun b!5916137 () Bool)

(declare-fun tp!1643727 () Bool)

(declare-fun tp!1643730 () Bool)

(assert (=> b!5916137 (= e!3622386 (and tp!1643727 tp!1643730))))

(declare-fun b!5916138 () Bool)

(declare-fun tp!1643731 () Bool)

(assert (=> b!5916138 (= e!3622386 tp!1643731)))

(assert (= (and b!5915332 ((_ is ElementMatch!15967) (regOne!32446 (regOne!32446 r!7292)))) b!5916136))

(assert (= (and b!5915332 ((_ is Concat!24812) (regOne!32446 (regOne!32446 r!7292)))) b!5916137))

(assert (= (and b!5915332 ((_ is Star!15967) (regOne!32446 (regOne!32446 r!7292)))) b!5916138))

(assert (= (and b!5915332 ((_ is Union!15967) (regOne!32446 (regOne!32446 r!7292)))) b!5916139))

(declare-fun b!5916140 () Bool)

(declare-fun e!3622387 () Bool)

(assert (=> b!5916140 (= e!3622387 tp_is_empty!41187)))

(assert (=> b!5915332 (= tp!1643492 e!3622387)))

(declare-fun b!5916143 () Bool)

(declare-fun tp!1643734 () Bool)

(declare-fun tp!1643733 () Bool)

(assert (=> b!5916143 (= e!3622387 (and tp!1643734 tp!1643733))))

(declare-fun b!5916141 () Bool)

(declare-fun tp!1643732 () Bool)

(declare-fun tp!1643735 () Bool)

(assert (=> b!5916141 (= e!3622387 (and tp!1643732 tp!1643735))))

(declare-fun b!5916142 () Bool)

(declare-fun tp!1643736 () Bool)

(assert (=> b!5916142 (= e!3622387 tp!1643736)))

(assert (= (and b!5915332 ((_ is ElementMatch!15967) (regTwo!32446 (regOne!32446 r!7292)))) b!5916140))

(assert (= (and b!5915332 ((_ is Concat!24812) (regTwo!32446 (regOne!32446 r!7292)))) b!5916141))

(assert (= (and b!5915332 ((_ is Star!15967) (regTwo!32446 (regOne!32446 r!7292)))) b!5916142))

(assert (= (and b!5915332 ((_ is Union!15967) (regTwo!32446 (regOne!32446 r!7292)))) b!5916143))

(declare-fun b!5916144 () Bool)

(declare-fun e!3622388 () Bool)

(assert (=> b!5916144 (= e!3622388 tp_is_empty!41187)))

(assert (=> b!5915333 (= tp!1643493 e!3622388)))

(declare-fun b!5916147 () Bool)

(declare-fun tp!1643739 () Bool)

(declare-fun tp!1643738 () Bool)

(assert (=> b!5916147 (= e!3622388 (and tp!1643739 tp!1643738))))

(declare-fun b!5916145 () Bool)

(declare-fun tp!1643737 () Bool)

(declare-fun tp!1643740 () Bool)

(assert (=> b!5916145 (= e!3622388 (and tp!1643737 tp!1643740))))

(declare-fun b!5916146 () Bool)

(declare-fun tp!1643741 () Bool)

(assert (=> b!5916146 (= e!3622388 tp!1643741)))

(assert (= (and b!5915333 ((_ is ElementMatch!15967) (reg!16296 (regOne!32446 r!7292)))) b!5916144))

(assert (= (and b!5915333 ((_ is Concat!24812) (reg!16296 (regOne!32446 r!7292)))) b!5916145))

(assert (= (and b!5915333 ((_ is Star!15967) (reg!16296 (regOne!32446 r!7292)))) b!5916146))

(assert (= (and b!5915333 ((_ is Union!15967) (reg!16296 (regOne!32446 r!7292)))) b!5916147))

(declare-fun b!5916148 () Bool)

(declare-fun e!3622389 () Bool)

(assert (=> b!5916148 (= e!3622389 tp_is_empty!41187)))

(assert (=> b!5915313 (= tp!1643471 e!3622389)))

(declare-fun b!5916151 () Bool)

(declare-fun tp!1643744 () Bool)

(declare-fun tp!1643743 () Bool)

(assert (=> b!5916151 (= e!3622389 (and tp!1643744 tp!1643743))))

(declare-fun b!5916149 () Bool)

(declare-fun tp!1643742 () Bool)

(declare-fun tp!1643745 () Bool)

(assert (=> b!5916149 (= e!3622389 (and tp!1643742 tp!1643745))))

(declare-fun b!5916150 () Bool)

(declare-fun tp!1643746 () Bool)

(assert (=> b!5916150 (= e!3622389 tp!1643746)))

(assert (= (and b!5915313 ((_ is ElementMatch!15967) (reg!16296 (reg!16296 r!7292)))) b!5916148))

(assert (= (and b!5915313 ((_ is Concat!24812) (reg!16296 (reg!16296 r!7292)))) b!5916149))

(assert (= (and b!5915313 ((_ is Star!15967) (reg!16296 (reg!16296 r!7292)))) b!5916150))

(assert (= (and b!5915313 ((_ is Union!15967) (reg!16296 (reg!16296 r!7292)))) b!5916151))

(declare-fun b!5916152 () Bool)

(declare-fun e!3622390 () Bool)

(assert (=> b!5916152 (= e!3622390 tp_is_empty!41187)))

(assert (=> b!5915314 (= tp!1643469 e!3622390)))

(declare-fun b!5916155 () Bool)

(declare-fun tp!1643749 () Bool)

(declare-fun tp!1643748 () Bool)

(assert (=> b!5916155 (= e!3622390 (and tp!1643749 tp!1643748))))

(declare-fun b!5916153 () Bool)

(declare-fun tp!1643747 () Bool)

(declare-fun tp!1643750 () Bool)

(assert (=> b!5916153 (= e!3622390 (and tp!1643747 tp!1643750))))

(declare-fun b!5916154 () Bool)

(declare-fun tp!1643751 () Bool)

(assert (=> b!5916154 (= e!3622390 tp!1643751)))

(assert (= (and b!5915314 ((_ is ElementMatch!15967) (regOne!32447 (reg!16296 r!7292)))) b!5916152))

(assert (= (and b!5915314 ((_ is Concat!24812) (regOne!32447 (reg!16296 r!7292)))) b!5916153))

(assert (= (and b!5915314 ((_ is Star!15967) (regOne!32447 (reg!16296 r!7292)))) b!5916154))

(assert (= (and b!5915314 ((_ is Union!15967) (regOne!32447 (reg!16296 r!7292)))) b!5916155))

(declare-fun b!5916156 () Bool)

(declare-fun e!3622391 () Bool)

(assert (=> b!5916156 (= e!3622391 tp_is_empty!41187)))

(assert (=> b!5915314 (= tp!1643468 e!3622391)))

(declare-fun b!5916159 () Bool)

(declare-fun tp!1643754 () Bool)

(declare-fun tp!1643753 () Bool)

(assert (=> b!5916159 (= e!3622391 (and tp!1643754 tp!1643753))))

(declare-fun b!5916157 () Bool)

(declare-fun tp!1643752 () Bool)

(declare-fun tp!1643755 () Bool)

(assert (=> b!5916157 (= e!3622391 (and tp!1643752 tp!1643755))))

(declare-fun b!5916158 () Bool)

(declare-fun tp!1643756 () Bool)

(assert (=> b!5916158 (= e!3622391 tp!1643756)))

(assert (= (and b!5915314 ((_ is ElementMatch!15967) (regTwo!32447 (reg!16296 r!7292)))) b!5916156))

(assert (= (and b!5915314 ((_ is Concat!24812) (regTwo!32447 (reg!16296 r!7292)))) b!5916157))

(assert (= (and b!5915314 ((_ is Star!15967) (regTwo!32447 (reg!16296 r!7292)))) b!5916158))

(assert (= (and b!5915314 ((_ is Union!15967) (regTwo!32447 (reg!16296 r!7292)))) b!5916159))

(declare-fun b!5916160 () Bool)

(declare-fun e!3622392 () Bool)

(assert (=> b!5916160 (= e!3622392 tp_is_empty!41187)))

(assert (=> b!5915334 (= tp!1643491 e!3622392)))

(declare-fun b!5916163 () Bool)

(declare-fun tp!1643759 () Bool)

(declare-fun tp!1643758 () Bool)

(assert (=> b!5916163 (= e!3622392 (and tp!1643759 tp!1643758))))

(declare-fun b!5916161 () Bool)

(declare-fun tp!1643757 () Bool)

(declare-fun tp!1643760 () Bool)

(assert (=> b!5916161 (= e!3622392 (and tp!1643757 tp!1643760))))

(declare-fun b!5916162 () Bool)

(declare-fun tp!1643761 () Bool)

(assert (=> b!5916162 (= e!3622392 tp!1643761)))

(assert (= (and b!5915334 ((_ is ElementMatch!15967) (regOne!32447 (regOne!32446 r!7292)))) b!5916160))

(assert (= (and b!5915334 ((_ is Concat!24812) (regOne!32447 (regOne!32446 r!7292)))) b!5916161))

(assert (= (and b!5915334 ((_ is Star!15967) (regOne!32447 (regOne!32446 r!7292)))) b!5916162))

(assert (= (and b!5915334 ((_ is Union!15967) (regOne!32447 (regOne!32446 r!7292)))) b!5916163))

(declare-fun b!5916164 () Bool)

(declare-fun e!3622393 () Bool)

(assert (=> b!5916164 (= e!3622393 tp_is_empty!41187)))

(assert (=> b!5915334 (= tp!1643490 e!3622393)))

(declare-fun b!5916167 () Bool)

(declare-fun tp!1643764 () Bool)

(declare-fun tp!1643763 () Bool)

(assert (=> b!5916167 (= e!3622393 (and tp!1643764 tp!1643763))))

(declare-fun b!5916165 () Bool)

(declare-fun tp!1643762 () Bool)

(declare-fun tp!1643765 () Bool)

(assert (=> b!5916165 (= e!3622393 (and tp!1643762 tp!1643765))))

(declare-fun b!5916166 () Bool)

(declare-fun tp!1643766 () Bool)

(assert (=> b!5916166 (= e!3622393 tp!1643766)))

(assert (= (and b!5915334 ((_ is ElementMatch!15967) (regTwo!32447 (regOne!32446 r!7292)))) b!5916164))

(assert (= (and b!5915334 ((_ is Concat!24812) (regTwo!32447 (regOne!32446 r!7292)))) b!5916165))

(assert (= (and b!5915334 ((_ is Star!15967) (regTwo!32447 (regOne!32446 r!7292)))) b!5916166))

(assert (= (and b!5915334 ((_ is Union!15967) (regTwo!32447 (regOne!32446 r!7292)))) b!5916167))

(declare-fun b!5916168 () Bool)

(declare-fun e!3622394 () Bool)

(assert (=> b!5916168 (= e!3622394 tp_is_empty!41187)))

(assert (=> b!5915297 (= tp!1643455 e!3622394)))

(declare-fun b!5916171 () Bool)

(declare-fun tp!1643769 () Bool)

(declare-fun tp!1643768 () Bool)

(assert (=> b!5916171 (= e!3622394 (and tp!1643769 tp!1643768))))

(declare-fun b!5916169 () Bool)

(declare-fun tp!1643767 () Bool)

(declare-fun tp!1643770 () Bool)

(assert (=> b!5916169 (= e!3622394 (and tp!1643767 tp!1643770))))

(declare-fun b!5916170 () Bool)

(declare-fun tp!1643771 () Bool)

(assert (=> b!5916170 (= e!3622394 tp!1643771)))

(assert (= (and b!5915297 ((_ is ElementMatch!15967) (reg!16296 (regOne!32447 r!7292)))) b!5916168))

(assert (= (and b!5915297 ((_ is Concat!24812) (reg!16296 (regOne!32447 r!7292)))) b!5916169))

(assert (= (and b!5915297 ((_ is Star!15967) (reg!16296 (regOne!32447 r!7292)))) b!5916170))

(assert (= (and b!5915297 ((_ is Union!15967) (reg!16296 (regOne!32447 r!7292)))) b!5916171))

(declare-fun b!5916172 () Bool)

(declare-fun e!3622395 () Bool)

(assert (=> b!5916172 (= e!3622395 tp_is_empty!41187)))

(assert (=> b!5915298 (= tp!1643453 e!3622395)))

(declare-fun b!5916175 () Bool)

(declare-fun tp!1643774 () Bool)

(declare-fun tp!1643773 () Bool)

(assert (=> b!5916175 (= e!3622395 (and tp!1643774 tp!1643773))))

(declare-fun b!5916173 () Bool)

(declare-fun tp!1643772 () Bool)

(declare-fun tp!1643775 () Bool)

(assert (=> b!5916173 (= e!3622395 (and tp!1643772 tp!1643775))))

(declare-fun b!5916174 () Bool)

(declare-fun tp!1643776 () Bool)

(assert (=> b!5916174 (= e!3622395 tp!1643776)))

(assert (= (and b!5915298 ((_ is ElementMatch!15967) (regOne!32447 (regOne!32447 r!7292)))) b!5916172))

(assert (= (and b!5915298 ((_ is Concat!24812) (regOne!32447 (regOne!32447 r!7292)))) b!5916173))

(assert (= (and b!5915298 ((_ is Star!15967) (regOne!32447 (regOne!32447 r!7292)))) b!5916174))

(assert (= (and b!5915298 ((_ is Union!15967) (regOne!32447 (regOne!32447 r!7292)))) b!5916175))

(declare-fun b!5916176 () Bool)

(declare-fun e!3622396 () Bool)

(assert (=> b!5916176 (= e!3622396 tp_is_empty!41187)))

(assert (=> b!5915298 (= tp!1643452 e!3622396)))

(declare-fun b!5916179 () Bool)

(declare-fun tp!1643779 () Bool)

(declare-fun tp!1643778 () Bool)

(assert (=> b!5916179 (= e!3622396 (and tp!1643779 tp!1643778))))

(declare-fun b!5916177 () Bool)

(declare-fun tp!1643777 () Bool)

(declare-fun tp!1643780 () Bool)

(assert (=> b!5916177 (= e!3622396 (and tp!1643777 tp!1643780))))

(declare-fun b!5916178 () Bool)

(declare-fun tp!1643781 () Bool)

(assert (=> b!5916178 (= e!3622396 tp!1643781)))

(assert (= (and b!5915298 ((_ is ElementMatch!15967) (regTwo!32447 (regOne!32447 r!7292)))) b!5916176))

(assert (= (and b!5915298 ((_ is Concat!24812) (regTwo!32447 (regOne!32447 r!7292)))) b!5916177))

(assert (= (and b!5915298 ((_ is Star!15967) (regTwo!32447 (regOne!32447 r!7292)))) b!5916178))

(assert (= (and b!5915298 ((_ is Union!15967) (regTwo!32447 (regOne!32447 r!7292)))) b!5916179))

(declare-fun b!5916180 () Bool)

(declare-fun e!3622397 () Bool)

(assert (=> b!5916180 (= e!3622397 tp_is_empty!41187)))

(assert (=> b!5915319 (= tp!1643476 e!3622397)))

(declare-fun b!5916183 () Bool)

(declare-fun tp!1643784 () Bool)

(declare-fun tp!1643783 () Bool)

(assert (=> b!5916183 (= e!3622397 (and tp!1643784 tp!1643783))))

(declare-fun b!5916181 () Bool)

(declare-fun tp!1643782 () Bool)

(declare-fun tp!1643785 () Bool)

(assert (=> b!5916181 (= e!3622397 (and tp!1643782 tp!1643785))))

(declare-fun b!5916182 () Bool)

(declare-fun tp!1643786 () Bool)

(assert (=> b!5916182 (= e!3622397 tp!1643786)))

(assert (= (and b!5915319 ((_ is ElementMatch!15967) (h!70524 (exprs!5851 (h!70525 zl!343))))) b!5916180))

(assert (= (and b!5915319 ((_ is Concat!24812) (h!70524 (exprs!5851 (h!70525 zl!343))))) b!5916181))

(assert (= (and b!5915319 ((_ is Star!15967) (h!70524 (exprs!5851 (h!70525 zl!343))))) b!5916182))

(assert (= (and b!5915319 ((_ is Union!15967) (h!70524 (exprs!5851 (h!70525 zl!343))))) b!5916183))

(declare-fun b!5916184 () Bool)

(declare-fun e!3622398 () Bool)

(declare-fun tp!1643787 () Bool)

(declare-fun tp!1643788 () Bool)

(assert (=> b!5916184 (= e!3622398 (and tp!1643787 tp!1643788))))

(assert (=> b!5915319 (= tp!1643477 e!3622398)))

(assert (= (and b!5915319 ((_ is Cons!64076) (t!377589 (exprs!5851 (h!70525 zl!343))))) b!5916184))

(declare-fun b!5916185 () Bool)

(declare-fun e!3622399 () Bool)

(assert (=> b!5916185 (= e!3622399 tp_is_empty!41187)))

(assert (=> b!5915296 (= tp!1643451 e!3622399)))

(declare-fun b!5916188 () Bool)

(declare-fun tp!1643791 () Bool)

(declare-fun tp!1643790 () Bool)

(assert (=> b!5916188 (= e!3622399 (and tp!1643791 tp!1643790))))

(declare-fun b!5916186 () Bool)

(declare-fun tp!1643789 () Bool)

(declare-fun tp!1643792 () Bool)

(assert (=> b!5916186 (= e!3622399 (and tp!1643789 tp!1643792))))

(declare-fun b!5916187 () Bool)

(declare-fun tp!1643793 () Bool)

(assert (=> b!5916187 (= e!3622399 tp!1643793)))

(assert (= (and b!5915296 ((_ is ElementMatch!15967) (regOne!32446 (regOne!32447 r!7292)))) b!5916185))

(assert (= (and b!5915296 ((_ is Concat!24812) (regOne!32446 (regOne!32447 r!7292)))) b!5916186))

(assert (= (and b!5915296 ((_ is Star!15967) (regOne!32446 (regOne!32447 r!7292)))) b!5916187))

(assert (= (and b!5915296 ((_ is Union!15967) (regOne!32446 (regOne!32447 r!7292)))) b!5916188))

(declare-fun b!5916189 () Bool)

(declare-fun e!3622400 () Bool)

(assert (=> b!5916189 (= e!3622400 tp_is_empty!41187)))

(assert (=> b!5915296 (= tp!1643454 e!3622400)))

(declare-fun b!5916192 () Bool)

(declare-fun tp!1643796 () Bool)

(declare-fun tp!1643795 () Bool)

(assert (=> b!5916192 (= e!3622400 (and tp!1643796 tp!1643795))))

(declare-fun b!5916190 () Bool)

(declare-fun tp!1643794 () Bool)

(declare-fun tp!1643797 () Bool)

(assert (=> b!5916190 (= e!3622400 (and tp!1643794 tp!1643797))))

(declare-fun b!5916191 () Bool)

(declare-fun tp!1643798 () Bool)

(assert (=> b!5916191 (= e!3622400 tp!1643798)))

(assert (= (and b!5915296 ((_ is ElementMatch!15967) (regTwo!32446 (regOne!32447 r!7292)))) b!5916189))

(assert (= (and b!5915296 ((_ is Concat!24812) (regTwo!32446 (regOne!32447 r!7292)))) b!5916190))

(assert (= (and b!5915296 ((_ is Star!15967) (regTwo!32446 (regOne!32447 r!7292)))) b!5916191))

(assert (= (and b!5915296 ((_ is Union!15967) (regTwo!32446 (regOne!32447 r!7292)))) b!5916192))

(declare-fun b!5916193 () Bool)

(declare-fun e!3622401 () Bool)

(assert (=> b!5916193 (= e!3622401 tp_is_empty!41187)))

(assert (=> b!5915330 (= tp!1643487 e!3622401)))

(declare-fun b!5916196 () Bool)

(declare-fun tp!1643801 () Bool)

(declare-fun tp!1643800 () Bool)

(assert (=> b!5916196 (= e!3622401 (and tp!1643801 tp!1643800))))

(declare-fun b!5916194 () Bool)

(declare-fun tp!1643799 () Bool)

(declare-fun tp!1643802 () Bool)

(assert (=> b!5916194 (= e!3622401 (and tp!1643799 tp!1643802))))

(declare-fun b!5916195 () Bool)

(declare-fun tp!1643803 () Bool)

(assert (=> b!5916195 (= e!3622401 tp!1643803)))

(assert (= (and b!5915330 ((_ is ElementMatch!15967) (h!70524 (exprs!5851 setElem!40146)))) b!5916193))

(assert (= (and b!5915330 ((_ is Concat!24812) (h!70524 (exprs!5851 setElem!40146)))) b!5916194))

(assert (= (and b!5915330 ((_ is Star!15967) (h!70524 (exprs!5851 setElem!40146)))) b!5916195))

(assert (= (and b!5915330 ((_ is Union!15967) (h!70524 (exprs!5851 setElem!40146)))) b!5916196))

(declare-fun b!5916197 () Bool)

(declare-fun e!3622402 () Bool)

(declare-fun tp!1643804 () Bool)

(declare-fun tp!1643805 () Bool)

(assert (=> b!5916197 (= e!3622402 (and tp!1643804 tp!1643805))))

(assert (=> b!5915330 (= tp!1643488 e!3622402)))

(assert (= (and b!5915330 ((_ is Cons!64076) (t!377589 (exprs!5851 setElem!40146)))) b!5916197))

(declare-fun b!5916198 () Bool)

(declare-fun e!3622403 () Bool)

(declare-fun tp!1643806 () Bool)

(assert (=> b!5916198 (= e!3622403 (and tp_is_empty!41187 tp!1643806))))

(assert (=> b!5915324 (= tp!1643480 e!3622403)))

(assert (= (and b!5915324 ((_ is Cons!64078) (t!377591 (t!377591 s!2326)))) b!5916198))

(declare-fun b_lambda!222249 () Bool)

(assert (= b_lambda!222241 (or d!1855269 b_lambda!222249)))

(declare-fun bs!1400616 () Bool)

(declare-fun d!1855567 () Bool)

(assert (= bs!1400616 (and d!1855567 d!1855269)))

(assert (=> bs!1400616 (= (dynLambda!25052 lambda!322746 (h!70524 (unfocusZipperList!1388 zl!343))) (validRegex!7703 (h!70524 (unfocusZipperList!1388 zl!343))))))

(declare-fun m!6814046 () Bool)

(assert (=> bs!1400616 m!6814046))

(assert (=> b!5915933 d!1855567))

(declare-fun b_lambda!222251 () Bool)

(assert (= b_lambda!222243 (or d!1855285 b_lambda!222251)))

(declare-fun bs!1400617 () Bool)

(declare-fun d!1855569 () Bool)

(assert (= bs!1400617 (and d!1855569 d!1855285)))

(assert (=> bs!1400617 (= (dynLambda!25052 lambda!322754 (h!70524 (exprs!5851 (h!70525 zl!343)))) (validRegex!7703 (h!70524 (exprs!5851 (h!70525 zl!343)))))))

(declare-fun m!6814048 () Bool)

(assert (=> bs!1400617 m!6814048))

(assert (=> b!5915985 d!1855569))

(declare-fun b_lambda!222253 () Bool)

(assert (= b_lambda!222247 (or d!1855273 b_lambda!222253)))

(declare-fun bs!1400618 () Bool)

(declare-fun d!1855571 () Bool)

(assert (= bs!1400618 (and d!1855571 d!1855273)))

(assert (=> bs!1400618 (= (dynLambda!25052 lambda!322750 (h!70524 (exprs!5851 (Context!10703 Nil!64076)))) (validRegex!7703 (h!70524 (exprs!5851 (Context!10703 Nil!64076)))))))

(declare-fun m!6814050 () Bool)

(assert (=> bs!1400618 m!6814050))

(assert (=> b!5916049 d!1855571))

(declare-fun b_lambda!222255 () Bool)

(assert (= b_lambda!222239 (or d!1855267 b_lambda!222255)))

(declare-fun bs!1400619 () Bool)

(declare-fun d!1855573 () Bool)

(assert (= bs!1400619 (and d!1855573 d!1855267)))

(assert (=> bs!1400619 (= (dynLambda!25052 lambda!322743 (h!70524 (exprs!5851 setElem!40146))) (validRegex!7703 (h!70524 (exprs!5851 setElem!40146))))))

(declare-fun m!6814052 () Bool)

(assert (=> bs!1400619 m!6814052))

(assert (=> b!5915922 d!1855573))

(declare-fun b_lambda!222257 () Bool)

(assert (= b_lambda!222237 (or d!1855283 b_lambda!222257)))

(declare-fun bs!1400620 () Bool)

(declare-fun d!1855575 () Bool)

(assert (= bs!1400620 (and d!1855575 d!1855283)))

(assert (=> bs!1400620 (= (dynLambda!25052 lambda!322751 (h!70524 (exprs!5851 (h!70525 zl!343)))) (validRegex!7703 (h!70524 (exprs!5851 (h!70525 zl!343)))))))

(assert (=> bs!1400620 m!6814048))

(assert (=> b!5915895 d!1855575))

(declare-fun b_lambda!222259 () Bool)

(assert (= b_lambda!222245 (or d!1855271 b_lambda!222259)))

(declare-fun bs!1400621 () Bool)

(declare-fun d!1855577 () Bool)

(assert (= bs!1400621 (and d!1855577 d!1855271)))

(assert (=> bs!1400621 (= (dynLambda!25052 lambda!322749 (h!70524 lt!2309618)) (validRegex!7703 (h!70524 lt!2309618)))))

(declare-fun m!6814054 () Bool)

(assert (=> bs!1400621 m!6814054))

(assert (=> b!5915987 d!1855577))

(check-sat (not b!5915975) (not b!5915997) (not b!5915849) (not b!5916166) (not d!1855497) (not b!5916127) (not b!5915946) (not b!5916069) (not d!1855557) (not d!1855555) (not bm!468868) (not b!5916145) (not b!5915864) (not b!5916105) (not b!5916087) (not b!5916097) (not b!5916051) (not b!5915879) (not b!5916150) (not b!5916130) (not b!5916197) (not b!5915961) (not d!1855483) (not b!5916191) (not b!5916175) (not b!5916040) (not d!1855525) (not d!1855495) (not setNonEmpty!40154) (not b!5916099) (not bm!468835) (not d!1855527) (not d!1855479) (not b!5915885) (not b!5915918) (not bm!468872) (not b!5915777) (not b!5916080) (not b!5916074) (not b!5916113) (not d!1855511) (not b!5916120) (not b!5916036) (not bm!468870) (not b!5916159) (not b!5916038) (not b!5916045) (not b!5916174) (not b!5916002) (not b!5915962) (not b!5916154) (not b!5915866) (not b!5916050) (not b!5915818) (not b!5916179) (not b!5916063) (not b!5915970) (not d!1855439) (not bm!468861) (not bs!1400616) (not b!5916163) (not b!5915916) (not b!5916188) (not b!5916157) (not b!5916107) (not bm!468833) (not b!5915881) (not bm!468866) (not b!5916182) (not d!1855473) (not b!5916165) (not bm!468864) (not b!5916084) (not d!1855543) (not bm!468859) (not b!5916056) (not b!5916086) (not d!1855455) (not b!5915780) (not b!5916101) (not b!5916059) (not b!5916093) (not b_lambda!222251) (not b!5916116) (not b!5915914) (not b!5916169) (not b!5915988) (not b!5915804) (not b!5916162) (not b!5916103) (not b!5916187) (not b!5916085) (not d!1855545) (not b!5916161) (not b!5916025) (not b!5915865) (not b!5916047) (not b!5915896) (not b!5916041) (not b!5916112) (not b!5915920) (not b!5916118) (not b!5916062) (not b!5915953) (not b!5916089) (not b!5915821) (not bm!468850) (not b!5916037) (not d!1855503) (not b!5916178) (not b!5915769) (not b!5916143) (not b!5915923) (not b!5916109) (not b!5916039) (not d!1855467) (not b!5916010) (not bm!468879) (not bm!468874) (not b!5916181) (not b!5915907) (not b!5916082) (not d!1855559) (not b!5915921) (not d!1855533) (not b!5916139) (not bs!1400618) (not b!5916077) (not bm!468875) (not b!5916138) (not bm!468822) (not b!5916135) (not b!5916033) (not b!5916043) (not d!1855437) (not b!5916196) (not b!5916194) (not b!5916100) (not bm!468853) (not b!5916133) (not b!5916115) (not b!5916088) (not b!5916184) (not bm!468836) (not b!5916171) tp_is_empty!41187 (not b!5916142) (not b!5916030) (not b_lambda!222259) (not b!5915986) (not b!5916198) (not d!1855499) (not b!5916147) (not d!1855477) (not b!5915872) (not b!5916167) (not b!5915934) (not bm!468856) (not d!1855475) (not b!5916131) (not b!5916137) (not b!5916151) (not b!5916170) (not b!5916044) (not b!5916096) (not b!5916124) (not b!5915994) (not bs!1400621) (not b!5916064) (not b!5916000) (not b!5916183) (not b_lambda!222257) (not bm!468858) (not b!5916095) (not b!5916125) (not b!5915880) (not bm!468862) (not b!5916141) (not bm!468834) (not b!5916146) (not b!5915871) (not b!5916195) (not d!1855433) (not b!5915859) (not b!5915774) (not b!5915781) (not b!5915863) (not b!5915862) (not b!5916126) (not bm!468865) (not bm!468871) (not b!5916111) (not b!5915973) (not b!5916153) (not b!5916005) (not d!1855493) (not b!5915911) (not d!1855457) (not b!5916081) (not b!5916149) (not bm!468854) (not b!5915927) (not b!5916104) (not b!5916121) (not b!5915967) (not b!5916186) (not b!5915979) (not b!5916117) (not bs!1400619) (not b!5915974) (not b!5916091) (not b!5916177) (not bm!468877) (not b!5916190) (not b!5916173) (not bs!1400620) (not b!5915906) (not b!5915915) (not b!5915954) (not bs!1400617) (not bm!468855) (not d!1855521) (not bm!468869) (not b!5916158) (not b!5916108) (not b!5916192) (not b!5916129) (not b_lambda!222255) (not d!1855547) (not b!5915782) (not b!5916134) (not d!1855563) (not b!5916092) (not b!5916122) (not b!5915857) (not b!5916019) (not b!5915910) (not b_lambda!222249) (not b!5916155) (not bm!468878) (not b_lambda!222253))
(check-sat)
