; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!598240 () Bool)

(assert start!598240)

(declare-fun b!5843799 () Bool)

(declare-fun res!2461494 () Bool)

(declare-fun e!3584241 () Bool)

(assert (=> b!5843799 (=> (not res!2461494) (not e!3584241))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32096 0))(
  ( (C!32097 (val!25750 Int)) )
))
(declare-datatypes ((Regex!15913 0))(
  ( (ElementMatch!15913 (c!1035547 C!32096)) (Concat!24758 (regOne!32338 Regex!15913) (regTwo!32338 Regex!15913)) (EmptyExpr!15913) (Star!15913 (reg!16242 Regex!15913)) (EmptyLang!15913) (Union!15913 (regOne!32339 Regex!15913) (regTwo!32339 Regex!15913)) )
))
(declare-datatypes ((List!64038 0))(
  ( (Nil!63914) (Cons!63914 (h!70362 Regex!15913) (t!377395 List!64038)) )
))
(declare-datatypes ((Context!10594 0))(
  ( (Context!10595 (exprs!5797 List!64038)) )
))
(declare-fun z!1189 () (InoxSet Context!10594))

(declare-datatypes ((List!64039 0))(
  ( (Nil!63915) (Cons!63915 (h!70363 Context!10594) (t!377396 List!64039)) )
))
(declare-fun zl!343 () List!64039)

(declare-fun toList!9697 ((InoxSet Context!10594)) List!64039)

(assert (=> b!5843799 (= res!2461494 (= (toList!9697 z!1189) zl!343))))

(declare-fun b!5843800 () Bool)

(declare-fun e!3584239 () Bool)

(declare-fun lt!2303990 () Context!10594)

(declare-fun inv!83029 (Context!10594) Bool)

(assert (=> b!5843800 (= e!3584239 (inv!83029 lt!2303990))))

(declare-fun b!5843801 () Bool)

(declare-fun res!2461501 () Bool)

(assert (=> b!5843801 (=> res!2461501 e!3584239)))

(declare-fun r!7292 () Regex!15913)

(declare-datatypes ((List!64040 0))(
  ( (Nil!63916) (Cons!63916 (h!70364 C!32096) (t!377397 List!64040)) )
))
(declare-fun s!2326 () List!64040)

(declare-fun lt!2303988 () (InoxSet Context!10594))

(declare-fun derivationStepZipperDown!1179 (Regex!15913 Context!10594 C!32096) (InoxSet Context!10594))

(assert (=> b!5843801 (= res!2461501 (not (= lt!2303988 ((_ map or) (derivationStepZipperDown!1179 (regOne!32339 r!7292) lt!2303990 (h!70364 s!2326)) (derivationStepZipperDown!1179 (regTwo!32339 r!7292) lt!2303990 (h!70364 s!2326))))))))

(declare-fun b!5843802 () Bool)

(declare-fun e!3584240 () Bool)

(declare-fun tp!1616035 () Bool)

(declare-fun tp!1616034 () Bool)

(assert (=> b!5843802 (= e!3584240 (and tp!1616035 tp!1616034))))

(declare-fun b!5843803 () Bool)

(declare-fun e!3584247 () Bool)

(declare-fun tp!1616033 () Bool)

(assert (=> b!5843803 (= e!3584247 tp!1616033)))

(declare-fun b!5843804 () Bool)

(declare-fun res!2461496 () Bool)

(declare-fun e!3584245 () Bool)

(assert (=> b!5843804 (=> res!2461496 e!3584245)))

(get-info :version)

(assert (=> b!5843804 (= res!2461496 (or ((_ is EmptyExpr!15913) r!7292) ((_ is EmptyLang!15913) r!7292) ((_ is ElementMatch!15913) r!7292) (not ((_ is Union!15913) r!7292))))))

(declare-fun res!2461495 () Bool)

(assert (=> start!598240 (=> (not res!2461495) (not e!3584241))))

(declare-fun validRegex!7649 (Regex!15913) Bool)

(assert (=> start!598240 (= res!2461495 (validRegex!7649 r!7292))))

(assert (=> start!598240 e!3584241))

(assert (=> start!598240 e!3584240))

(declare-fun condSetEmpty!39600 () Bool)

(assert (=> start!598240 (= condSetEmpty!39600 (= z!1189 ((as const (Array Context!10594 Bool)) false)))))

(declare-fun setRes!39600 () Bool)

(assert (=> start!598240 setRes!39600))

(declare-fun e!3584242 () Bool)

(assert (=> start!598240 e!3584242))

(declare-fun e!3584243 () Bool)

(assert (=> start!598240 e!3584243))

(declare-fun b!5843805 () Bool)

(declare-fun tp_is_empty!41079 () Bool)

(assert (=> b!5843805 (= e!3584240 tp_is_empty!41079)))

(declare-fun b!5843806 () Bool)

(declare-fun res!2461499 () Bool)

(assert (=> b!5843806 (=> res!2461499 e!3584245)))

(declare-fun isEmpty!35772 (List!64039) Bool)

(assert (=> b!5843806 (= res!2461499 (not (isEmpty!35772 (t!377396 zl!343))))))

(declare-fun b!5843807 () Bool)

(declare-fun tp!1616032 () Bool)

(assert (=> b!5843807 (= e!3584242 (and (inv!83029 (h!70363 zl!343)) e!3584247 tp!1616032))))

(declare-fun b!5843808 () Bool)

(declare-fun tp!1616039 () Bool)

(assert (=> b!5843808 (= e!3584240 tp!1616039)))

(declare-fun e!3584244 () Bool)

(declare-fun setNonEmpty!39600 () Bool)

(declare-fun tp!1616031 () Bool)

(declare-fun setElem!39600 () Context!10594)

(assert (=> setNonEmpty!39600 (= setRes!39600 (and tp!1616031 (inv!83029 setElem!39600) e!3584244))))

(declare-fun setRest!39600 () (InoxSet Context!10594))

(assert (=> setNonEmpty!39600 (= z!1189 ((_ map or) (store ((as const (Array Context!10594 Bool)) false) setElem!39600 true) setRest!39600))))

(declare-fun b!5843809 () Bool)

(declare-fun tp!1616038 () Bool)

(assert (=> b!5843809 (= e!3584244 tp!1616038)))

(declare-fun b!5843810 () Bool)

(declare-fun e!3584246 () Bool)

(assert (=> b!5843810 (= e!3584245 e!3584246)))

(declare-fun res!2461497 () Bool)

(assert (=> b!5843810 (=> res!2461497 e!3584246)))

(declare-fun lt!2303982 () Bool)

(declare-fun lt!2303985 () Bool)

(declare-fun lt!2303986 () Bool)

(assert (=> b!5843810 (= res!2461497 (or (not (= lt!2303986 (or lt!2303985 lt!2303982))) ((_ is Nil!63916) s!2326)))))

(declare-fun matchRSpec!3014 (Regex!15913 List!64040) Bool)

(assert (=> b!5843810 (= lt!2303982 (matchRSpec!3014 (regTwo!32339 r!7292) s!2326))))

(declare-fun matchR!8096 (Regex!15913 List!64040) Bool)

(assert (=> b!5843810 (= lt!2303982 (matchR!8096 (regTwo!32339 r!7292) s!2326))))

(declare-datatypes ((Unit!157097 0))(
  ( (Unit!157098) )
))
(declare-fun lt!2303984 () Unit!157097)

(declare-fun mainMatchTheorem!3014 (Regex!15913 List!64040) Unit!157097)

(assert (=> b!5843810 (= lt!2303984 (mainMatchTheorem!3014 (regTwo!32339 r!7292) s!2326))))

(assert (=> b!5843810 (= lt!2303985 (matchRSpec!3014 (regOne!32339 r!7292) s!2326))))

(assert (=> b!5843810 (= lt!2303985 (matchR!8096 (regOne!32339 r!7292) s!2326))))

(declare-fun lt!2303989 () Unit!157097)

(assert (=> b!5843810 (= lt!2303989 (mainMatchTheorem!3014 (regOne!32339 r!7292) s!2326))))

(declare-fun b!5843811 () Bool)

(declare-fun res!2461502 () Bool)

(assert (=> b!5843811 (=> res!2461502 e!3584245)))

(declare-fun generalisedConcat!1510 (List!64038) Regex!15913)

(assert (=> b!5843811 (= res!2461502 (not (= r!7292 (generalisedConcat!1510 (exprs!5797 (h!70363 zl!343))))))))

(declare-fun b!5843812 () Bool)

(declare-fun res!2461500 () Bool)

(assert (=> b!5843812 (=> res!2461500 e!3584245)))

(declare-fun generalisedUnion!1757 (List!64038) Regex!15913)

(declare-fun unfocusZipperList!1334 (List!64039) List!64038)

(assert (=> b!5843812 (= res!2461500 (not (= r!7292 (generalisedUnion!1757 (unfocusZipperList!1334 zl!343)))))))

(declare-fun b!5843813 () Bool)

(assert (=> b!5843813 (= e!3584246 e!3584239)))

(declare-fun res!2461503 () Bool)

(assert (=> b!5843813 (=> res!2461503 e!3584239)))

(declare-fun lt!2303983 () (InoxSet Context!10594))

(assert (=> b!5843813 (= res!2461503 (not (= lt!2303983 lt!2303988)))))

(assert (=> b!5843813 (= lt!2303988 (derivationStepZipperDown!1179 r!7292 lt!2303990 (h!70364 s!2326)))))

(assert (=> b!5843813 (= lt!2303990 (Context!10595 Nil!63914))))

(declare-fun derivationStepZipperUp!1105 (Context!10594 C!32096) (InoxSet Context!10594))

(assert (=> b!5843813 (= lt!2303983 (derivationStepZipperUp!1105 (Context!10595 (Cons!63914 r!7292 Nil!63914)) (h!70364 s!2326)))))

(declare-fun b!5843814 () Bool)

(declare-fun res!2461504 () Bool)

(assert (=> b!5843814 (=> (not res!2461504) (not e!3584241))))

(declare-fun unfocusZipper!1655 (List!64039) Regex!15913)

(assert (=> b!5843814 (= res!2461504 (= r!7292 (unfocusZipper!1655 zl!343)))))

(declare-fun b!5843815 () Bool)

(declare-fun tp!1616040 () Bool)

(assert (=> b!5843815 (= e!3584243 (and tp_is_empty!41079 tp!1616040))))

(declare-fun b!5843816 () Bool)

(declare-fun tp!1616037 () Bool)

(declare-fun tp!1616036 () Bool)

(assert (=> b!5843816 (= e!3584240 (and tp!1616037 tp!1616036))))

(declare-fun b!5843817 () Bool)

(assert (=> b!5843817 (= e!3584241 (not e!3584245))))

(declare-fun res!2461498 () Bool)

(assert (=> b!5843817 (=> res!2461498 e!3584245)))

(assert (=> b!5843817 (= res!2461498 (not ((_ is Cons!63915) zl!343)))))

(assert (=> b!5843817 (= lt!2303986 (matchRSpec!3014 r!7292 s!2326))))

(assert (=> b!5843817 (= lt!2303986 (matchR!8096 r!7292 s!2326))))

(declare-fun lt!2303987 () Unit!157097)

(assert (=> b!5843817 (= lt!2303987 (mainMatchTheorem!3014 r!7292 s!2326))))

(declare-fun setIsEmpty!39600 () Bool)

(assert (=> setIsEmpty!39600 setRes!39600))

(declare-fun b!5843818 () Bool)

(declare-fun res!2461493 () Bool)

(assert (=> b!5843818 (=> res!2461493 e!3584245)))

(assert (=> b!5843818 (= res!2461493 (not ((_ is Cons!63914) (exprs!5797 (h!70363 zl!343)))))))

(assert (= (and start!598240 res!2461495) b!5843799))

(assert (= (and b!5843799 res!2461494) b!5843814))

(assert (= (and b!5843814 res!2461504) b!5843817))

(assert (= (and b!5843817 (not res!2461498)) b!5843806))

(assert (= (and b!5843806 (not res!2461499)) b!5843811))

(assert (= (and b!5843811 (not res!2461502)) b!5843818))

(assert (= (and b!5843818 (not res!2461493)) b!5843812))

(assert (= (and b!5843812 (not res!2461500)) b!5843804))

(assert (= (and b!5843804 (not res!2461496)) b!5843810))

(assert (= (and b!5843810 (not res!2461497)) b!5843813))

(assert (= (and b!5843813 (not res!2461503)) b!5843801))

(assert (= (and b!5843801 (not res!2461501)) b!5843800))

(assert (= (and start!598240 ((_ is ElementMatch!15913) r!7292)) b!5843805))

(assert (= (and start!598240 ((_ is Concat!24758) r!7292)) b!5843816))

(assert (= (and start!598240 ((_ is Star!15913) r!7292)) b!5843808))

(assert (= (and start!598240 ((_ is Union!15913) r!7292)) b!5843802))

(assert (= (and start!598240 condSetEmpty!39600) setIsEmpty!39600))

(assert (= (and start!598240 (not condSetEmpty!39600)) setNonEmpty!39600))

(assert (= setNonEmpty!39600 b!5843809))

(assert (= b!5843807 b!5843803))

(assert (= (and start!598240 ((_ is Cons!63915) zl!343)) b!5843807))

(assert (= (and start!598240 ((_ is Cons!63916) s!2326)) b!5843815))

(declare-fun m!6766814 () Bool)

(assert (=> b!5843800 m!6766814))

(declare-fun m!6766816 () Bool)

(assert (=> b!5843812 m!6766816))

(assert (=> b!5843812 m!6766816))

(declare-fun m!6766818 () Bool)

(assert (=> b!5843812 m!6766818))

(declare-fun m!6766820 () Bool)

(assert (=> b!5843799 m!6766820))

(declare-fun m!6766822 () Bool)

(assert (=> b!5843806 m!6766822))

(declare-fun m!6766824 () Bool)

(assert (=> b!5843807 m!6766824))

(declare-fun m!6766826 () Bool)

(assert (=> b!5843814 m!6766826))

(declare-fun m!6766828 () Bool)

(assert (=> start!598240 m!6766828))

(declare-fun m!6766830 () Bool)

(assert (=> b!5843801 m!6766830))

(declare-fun m!6766832 () Bool)

(assert (=> b!5843801 m!6766832))

(declare-fun m!6766834 () Bool)

(assert (=> setNonEmpty!39600 m!6766834))

(declare-fun m!6766836 () Bool)

(assert (=> b!5843817 m!6766836))

(declare-fun m!6766838 () Bool)

(assert (=> b!5843817 m!6766838))

(declare-fun m!6766840 () Bool)

(assert (=> b!5843817 m!6766840))

(declare-fun m!6766842 () Bool)

(assert (=> b!5843810 m!6766842))

(declare-fun m!6766844 () Bool)

(assert (=> b!5843810 m!6766844))

(declare-fun m!6766846 () Bool)

(assert (=> b!5843810 m!6766846))

(declare-fun m!6766848 () Bool)

(assert (=> b!5843810 m!6766848))

(declare-fun m!6766850 () Bool)

(assert (=> b!5843810 m!6766850))

(declare-fun m!6766852 () Bool)

(assert (=> b!5843810 m!6766852))

(declare-fun m!6766854 () Bool)

(assert (=> b!5843813 m!6766854))

(declare-fun m!6766856 () Bool)

(assert (=> b!5843813 m!6766856))

(declare-fun m!6766858 () Bool)

(assert (=> b!5843811 m!6766858))

(check-sat (not b!5843807) (not b!5843806) (not b!5843801) (not b!5843813) (not start!598240) (not b!5843814) (not b!5843815) tp_is_empty!41079 (not b!5843810) (not b!5843812) (not b!5843816) (not b!5843802) (not b!5843808) (not b!5843811) (not b!5843817) (not setNonEmpty!39600) (not b!5843809) (not b!5843803) (not b!5843800) (not b!5843799))
(check-sat)
(get-model)

(declare-fun d!1835956 () Bool)

(declare-fun lt!2303993 () Regex!15913)

(assert (=> d!1835956 (validRegex!7649 lt!2303993)))

(assert (=> d!1835956 (= lt!2303993 (generalisedUnion!1757 (unfocusZipperList!1334 zl!343)))))

(assert (=> d!1835956 (= (unfocusZipper!1655 zl!343) lt!2303993)))

(declare-fun bs!1376838 () Bool)

(assert (= bs!1376838 d!1835956))

(declare-fun m!6766860 () Bool)

(assert (=> bs!1376838 m!6766860))

(assert (=> bs!1376838 m!6766816))

(assert (=> bs!1376838 m!6766816))

(assert (=> bs!1376838 m!6766818))

(assert (=> b!5843814 d!1835956))

(declare-fun d!1835958 () Bool)

(assert (=> d!1835958 (= (isEmpty!35772 (t!377396 zl!343)) ((_ is Nil!63915) (t!377396 zl!343)))))

(assert (=> b!5843806 d!1835958))

(declare-fun b!5844156 () Bool)

(assert (=> b!5844156 true))

(assert (=> b!5844156 true))

(declare-fun bs!1376876 () Bool)

(declare-fun b!5844153 () Bool)

(assert (= bs!1376876 (and b!5844153 b!5844156)))

(declare-fun lambda!319684 () Int)

(declare-fun lambda!319683 () Int)

(assert (=> bs!1376876 (not (= lambda!319684 lambda!319683))))

(assert (=> b!5844153 true))

(assert (=> b!5844153 true))

(declare-fun call!456666 () Bool)

(declare-fun c!1035656 () Bool)

(declare-fun bm!456660 () Bool)

(declare-fun Exists!2985 (Int) Bool)

(assert (=> bm!456660 (= call!456666 (Exists!2985 (ite c!1035656 lambda!319683 lambda!319684)))))

(declare-fun b!5844147 () Bool)

(declare-fun res!2461620 () Bool)

(declare-fun e!3584437 () Bool)

(assert (=> b!5844147 (=> res!2461620 e!3584437)))

(declare-fun call!456665 () Bool)

(assert (=> b!5844147 (= res!2461620 call!456665)))

(declare-fun e!3584439 () Bool)

(assert (=> b!5844147 (= e!3584439 e!3584437)))

(declare-fun b!5844148 () Bool)

(declare-fun e!3584438 () Bool)

(declare-fun e!3584441 () Bool)

(assert (=> b!5844148 (= e!3584438 e!3584441)))

(declare-fun res!2461621 () Bool)

(assert (=> b!5844148 (= res!2461621 (matchRSpec!3014 (regOne!32339 r!7292) s!2326))))

(assert (=> b!5844148 (=> res!2461621 e!3584441)))

(declare-fun d!1835960 () Bool)

(declare-fun c!1035653 () Bool)

(assert (=> d!1835960 (= c!1035653 ((_ is EmptyExpr!15913) r!7292))))

(declare-fun e!3584440 () Bool)

(assert (=> d!1835960 (= (matchRSpec!3014 r!7292 s!2326) e!3584440)))

(declare-fun b!5844149 () Bool)

(declare-fun c!1035655 () Bool)

(assert (=> b!5844149 (= c!1035655 ((_ is Union!15913) r!7292))))

(declare-fun e!3584436 () Bool)

(assert (=> b!5844149 (= e!3584436 e!3584438)))

(declare-fun b!5844150 () Bool)

(assert (=> b!5844150 (= e!3584438 e!3584439)))

(assert (=> b!5844150 (= c!1035656 ((_ is Star!15913) r!7292))))

(declare-fun b!5844151 () Bool)

(declare-fun c!1035654 () Bool)

(assert (=> b!5844151 (= c!1035654 ((_ is ElementMatch!15913) r!7292))))

(declare-fun e!3584435 () Bool)

(assert (=> b!5844151 (= e!3584435 e!3584436)))

(declare-fun b!5844152 () Bool)

(assert (=> b!5844152 (= e!3584440 call!456665)))

(declare-fun bm!456661 () Bool)

(declare-fun isEmpty!35774 (List!64040) Bool)

(assert (=> bm!456661 (= call!456665 (isEmpty!35774 s!2326))))

(assert (=> b!5844153 (= e!3584439 call!456666)))

(declare-fun b!5844154 () Bool)

(assert (=> b!5844154 (= e!3584440 e!3584435)))

(declare-fun res!2461619 () Bool)

(assert (=> b!5844154 (= res!2461619 (not ((_ is EmptyLang!15913) r!7292)))))

(assert (=> b!5844154 (=> (not res!2461619) (not e!3584435))))

(declare-fun b!5844155 () Bool)

(assert (=> b!5844155 (= e!3584441 (matchRSpec!3014 (regTwo!32339 r!7292) s!2326))))

(assert (=> b!5844156 (= e!3584437 call!456666)))

(declare-fun b!5844157 () Bool)

(assert (=> b!5844157 (= e!3584436 (= s!2326 (Cons!63916 (c!1035547 r!7292) Nil!63916)))))

(assert (= (and d!1835960 c!1035653) b!5844152))

(assert (= (and d!1835960 (not c!1035653)) b!5844154))

(assert (= (and b!5844154 res!2461619) b!5844151))

(assert (= (and b!5844151 c!1035654) b!5844157))

(assert (= (and b!5844151 (not c!1035654)) b!5844149))

(assert (= (and b!5844149 c!1035655) b!5844148))

(assert (= (and b!5844149 (not c!1035655)) b!5844150))

(assert (= (and b!5844148 (not res!2461621)) b!5844155))

(assert (= (and b!5844150 c!1035656) b!5844147))

(assert (= (and b!5844150 (not c!1035656)) b!5844153))

(assert (= (and b!5844147 (not res!2461620)) b!5844156))

(assert (= (or b!5844156 b!5844153) bm!456660))

(assert (= (or b!5844152 b!5844147) bm!456661))

(declare-fun m!6767008 () Bool)

(assert (=> bm!456660 m!6767008))

(assert (=> b!5844148 m!6766848))

(declare-fun m!6767010 () Bool)

(assert (=> bm!456661 m!6767010))

(assert (=> b!5844155 m!6766842))

(assert (=> b!5843817 d!1835960))

(declare-fun b!5844253 () Bool)

(declare-fun e!3584489 () Bool)

(declare-fun lt!2304021 () Bool)

(declare-fun call!456672 () Bool)

(assert (=> b!5844253 (= e!3584489 (= lt!2304021 call!456672))))

(declare-fun b!5844254 () Bool)

(declare-fun res!2461649 () Bool)

(declare-fun e!3584490 () Bool)

(assert (=> b!5844254 (=> (not res!2461649) (not e!3584490))))

(declare-fun tail!11464 (List!64040) List!64040)

(assert (=> b!5844254 (= res!2461649 (isEmpty!35774 (tail!11464 s!2326)))))

(declare-fun b!5844255 () Bool)

(declare-fun e!3584488 () Bool)

(declare-fun e!3584487 () Bool)

(assert (=> b!5844255 (= e!3584488 e!3584487)))

(declare-fun res!2461644 () Bool)

(assert (=> b!5844255 (=> res!2461644 e!3584487)))

(assert (=> b!5844255 (= res!2461644 call!456672)))

(declare-fun d!1836008 () Bool)

(assert (=> d!1836008 e!3584489))

(declare-fun c!1035667 () Bool)

(assert (=> d!1836008 (= c!1035667 ((_ is EmptyExpr!15913) r!7292))))

(declare-fun e!3584491 () Bool)

(assert (=> d!1836008 (= lt!2304021 e!3584491)))

(declare-fun c!1035666 () Bool)

(assert (=> d!1836008 (= c!1035666 (isEmpty!35774 s!2326))))

(assert (=> d!1836008 (validRegex!7649 r!7292)))

(assert (=> d!1836008 (= (matchR!8096 r!7292 s!2326) lt!2304021)))

(declare-fun b!5844256 () Bool)

(declare-fun nullable!5913 (Regex!15913) Bool)

(assert (=> b!5844256 (= e!3584491 (nullable!5913 r!7292))))

(declare-fun b!5844257 () Bool)

(declare-fun head!12380 (List!64040) C!32096)

(assert (=> b!5844257 (= e!3584487 (not (= (head!12380 s!2326) (c!1035547 r!7292))))))

(declare-fun b!5844258 () Bool)

(declare-fun res!2461647 () Bool)

(assert (=> b!5844258 (=> (not res!2461647) (not e!3584490))))

(assert (=> b!5844258 (= res!2461647 (not call!456672))))

(declare-fun b!5844259 () Bool)

(declare-fun e!3584492 () Bool)

(assert (=> b!5844259 (= e!3584489 e!3584492)))

(declare-fun c!1035665 () Bool)

(assert (=> b!5844259 (= c!1035665 ((_ is EmptyLang!15913) r!7292))))

(declare-fun b!5844260 () Bool)

(declare-fun e!3584486 () Bool)

(assert (=> b!5844260 (= e!3584486 e!3584488)))

(declare-fun res!2461645 () Bool)

(assert (=> b!5844260 (=> (not res!2461645) (not e!3584488))))

(assert (=> b!5844260 (= res!2461645 (not lt!2304021))))

(declare-fun b!5844261 () Bool)

(declare-fun res!2461646 () Bool)

(assert (=> b!5844261 (=> res!2461646 e!3584486)))

(assert (=> b!5844261 (= res!2461646 e!3584490)))

(declare-fun res!2461643 () Bool)

(assert (=> b!5844261 (=> (not res!2461643) (not e!3584490))))

(assert (=> b!5844261 (= res!2461643 lt!2304021)))

(declare-fun b!5844262 () Bool)

(declare-fun res!2461650 () Bool)

(assert (=> b!5844262 (=> res!2461650 e!3584486)))

(assert (=> b!5844262 (= res!2461650 (not ((_ is ElementMatch!15913) r!7292)))))

(assert (=> b!5844262 (= e!3584492 e!3584486)))

(declare-fun b!5844263 () Bool)

(assert (=> b!5844263 (= e!3584490 (= (head!12380 s!2326) (c!1035547 r!7292)))))

(declare-fun b!5844264 () Bool)

(declare-fun derivativeStep!4651 (Regex!15913 C!32096) Regex!15913)

(assert (=> b!5844264 (= e!3584491 (matchR!8096 (derivativeStep!4651 r!7292 (head!12380 s!2326)) (tail!11464 s!2326)))))

(declare-fun bm!456667 () Bool)

(assert (=> bm!456667 (= call!456672 (isEmpty!35774 s!2326))))

(declare-fun b!5844265 () Bool)

(assert (=> b!5844265 (= e!3584492 (not lt!2304021))))

(declare-fun b!5844266 () Bool)

(declare-fun res!2461648 () Bool)

(assert (=> b!5844266 (=> res!2461648 e!3584487)))

(assert (=> b!5844266 (= res!2461648 (not (isEmpty!35774 (tail!11464 s!2326))))))

(assert (= (and d!1836008 c!1035666) b!5844256))

(assert (= (and d!1836008 (not c!1035666)) b!5844264))

(assert (= (and d!1836008 c!1035667) b!5844253))

(assert (= (and d!1836008 (not c!1035667)) b!5844259))

(assert (= (and b!5844259 c!1035665) b!5844265))

(assert (= (and b!5844259 (not c!1035665)) b!5844262))

(assert (= (and b!5844262 (not res!2461650)) b!5844261))

(assert (= (and b!5844261 res!2461643) b!5844258))

(assert (= (and b!5844258 res!2461647) b!5844254))

(assert (= (and b!5844254 res!2461649) b!5844263))

(assert (= (and b!5844261 (not res!2461646)) b!5844260))

(assert (= (and b!5844260 res!2461645) b!5844255))

(assert (= (and b!5844255 (not res!2461644)) b!5844266))

(assert (= (and b!5844266 (not res!2461648)) b!5844257))

(assert (= (or b!5844253 b!5844255 b!5844258) bm!456667))

(assert (=> bm!456667 m!6767010))

(declare-fun m!6767016 () Bool)

(assert (=> b!5844254 m!6767016))

(assert (=> b!5844254 m!6767016))

(declare-fun m!6767018 () Bool)

(assert (=> b!5844254 m!6767018))

(declare-fun m!6767020 () Bool)

(assert (=> b!5844264 m!6767020))

(assert (=> b!5844264 m!6767020))

(declare-fun m!6767022 () Bool)

(assert (=> b!5844264 m!6767022))

(assert (=> b!5844264 m!6767016))

(assert (=> b!5844264 m!6767022))

(assert (=> b!5844264 m!6767016))

(declare-fun m!6767024 () Bool)

(assert (=> b!5844264 m!6767024))

(assert (=> b!5844266 m!6767016))

(assert (=> b!5844266 m!6767016))

(assert (=> b!5844266 m!6767018))

(assert (=> d!1836008 m!6767010))

(assert (=> d!1836008 m!6766828))

(declare-fun m!6767026 () Bool)

(assert (=> b!5844256 m!6767026))

(assert (=> b!5844257 m!6767020))

(assert (=> b!5844263 m!6767020))

(assert (=> b!5843817 d!1836008))

(declare-fun d!1836010 () Bool)

(assert (=> d!1836010 (= (matchR!8096 r!7292 s!2326) (matchRSpec!3014 r!7292 s!2326))))

(declare-fun lt!2304024 () Unit!157097)

(declare-fun choose!44354 (Regex!15913 List!64040) Unit!157097)

(assert (=> d!1836010 (= lt!2304024 (choose!44354 r!7292 s!2326))))

(assert (=> d!1836010 (validRegex!7649 r!7292)))

(assert (=> d!1836010 (= (mainMatchTheorem!3014 r!7292 s!2326) lt!2304024)))

(declare-fun bs!1376877 () Bool)

(assert (= bs!1376877 d!1836010))

(assert (=> bs!1376877 m!6766838))

(assert (=> bs!1376877 m!6766836))

(declare-fun m!6767028 () Bool)

(assert (=> bs!1376877 m!6767028))

(assert (=> bs!1376877 m!6766828))

(assert (=> b!5843817 d!1836010))

(declare-fun d!1836012 () Bool)

(declare-fun lambda!319687 () Int)

(declare-fun forall!15000 (List!64038 Int) Bool)

(assert (=> d!1836012 (= (inv!83029 (h!70363 zl!343)) (forall!15000 (exprs!5797 (h!70363 zl!343)) lambda!319687))))

(declare-fun bs!1376878 () Bool)

(assert (= bs!1376878 d!1836012))

(declare-fun m!6767030 () Bool)

(assert (=> bs!1376878 m!6767030))

(assert (=> b!5843807 d!1836012))

(declare-fun bs!1376879 () Bool)

(declare-fun d!1836014 () Bool)

(assert (= bs!1376879 (and d!1836014 d!1836012)))

(declare-fun lambda!319688 () Int)

(assert (=> bs!1376879 (= lambda!319688 lambda!319687)))

(assert (=> d!1836014 (= (inv!83029 setElem!39600) (forall!15000 (exprs!5797 setElem!39600) lambda!319688))))

(declare-fun bs!1376880 () Bool)

(assert (= bs!1376880 d!1836014))

(declare-fun m!6767032 () Bool)

(assert (=> bs!1376880 m!6767032))

(assert (=> setNonEmpty!39600 d!1836014))

(declare-fun d!1836016 () Bool)

(declare-fun e!3584495 () Bool)

(assert (=> d!1836016 e!3584495))

(declare-fun res!2461653 () Bool)

(assert (=> d!1836016 (=> (not res!2461653) (not e!3584495))))

(declare-fun lt!2304027 () List!64039)

(declare-fun noDuplicate!1778 (List!64039) Bool)

(assert (=> d!1836016 (= res!2461653 (noDuplicate!1778 lt!2304027))))

(declare-fun choose!44355 ((InoxSet Context!10594)) List!64039)

(assert (=> d!1836016 (= lt!2304027 (choose!44355 z!1189))))

(assert (=> d!1836016 (= (toList!9697 z!1189) lt!2304027)))

(declare-fun b!5844269 () Bool)

(declare-fun content!11743 (List!64039) (InoxSet Context!10594))

(assert (=> b!5844269 (= e!3584495 (= (content!11743 lt!2304027) z!1189))))

(assert (= (and d!1836016 res!2461653) b!5844269))

(declare-fun m!6767034 () Bool)

(assert (=> d!1836016 m!6767034))

(declare-fun m!6767036 () Bool)

(assert (=> d!1836016 m!6767036))

(declare-fun m!6767038 () Bool)

(assert (=> b!5844269 m!6767038))

(assert (=> b!5843799 d!1836016))

(declare-fun b!5844293 () Bool)

(declare-fun c!1035678 () Bool)

(declare-fun e!3584509 () Bool)

(assert (=> b!5844293 (= c!1035678 e!3584509)))

(declare-fun res!2461656 () Bool)

(assert (=> b!5844293 (=> (not res!2461656) (not e!3584509))))

(assert (=> b!5844293 (= res!2461656 ((_ is Concat!24758) (regOne!32339 r!7292)))))

(declare-fun e!3584511 () (InoxSet Context!10594))

(declare-fun e!3584510 () (InoxSet Context!10594))

(assert (=> b!5844293 (= e!3584511 e!3584510)))

(declare-fun b!5844294 () Bool)

(declare-fun e!3584508 () (InoxSet Context!10594))

(declare-fun call!456685 () (InoxSet Context!10594))

(assert (=> b!5844294 (= e!3584508 call!456685)))

(declare-fun b!5844295 () Bool)

(declare-fun e!3584512 () (InoxSet Context!10594))

(assert (=> b!5844295 (= e!3584512 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844296 () Bool)

(assert (=> b!5844296 (= e!3584510 e!3584508)))

(declare-fun c!1035679 () Bool)

(assert (=> b!5844296 (= c!1035679 ((_ is Concat!24758) (regOne!32339 r!7292)))))

(declare-fun call!456687 () List!64038)

(declare-fun bm!456680 () Bool)

(declare-fun $colon$colon!1818 (List!64038 Regex!15913) List!64038)

(assert (=> bm!456680 (= call!456687 ($colon$colon!1818 (exprs!5797 lt!2303990) (ite (or c!1035678 c!1035679) (regTwo!32338 (regOne!32339 r!7292)) (regOne!32339 r!7292))))))

(declare-fun bm!456681 () Bool)

(declare-fun call!456688 () List!64038)

(assert (=> bm!456681 (= call!456688 call!456687)))

(declare-fun b!5844297 () Bool)

(declare-fun call!456690 () (InoxSet Context!10594))

(declare-fun call!456686 () (InoxSet Context!10594))

(assert (=> b!5844297 (= e!3584511 ((_ map or) call!456690 call!456686))))

(declare-fun b!5844298 () Bool)

(declare-fun e!3584513 () (InoxSet Context!10594))

(assert (=> b!5844298 (= e!3584513 (store ((as const (Array Context!10594 Bool)) false) lt!2303990 true))))

(declare-fun c!1035681 () Bool)

(declare-fun bm!456682 () Bool)

(assert (=> bm!456682 (= call!456686 (derivationStepZipperDown!1179 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292))))) (ite (or c!1035681 c!1035678) lt!2303990 (Context!10595 call!456688)) (h!70364 s!2326)))))

(declare-fun b!5844299 () Bool)

(assert (=> b!5844299 (= e!3584513 e!3584511)))

(assert (=> b!5844299 (= c!1035681 ((_ is Union!15913) (regOne!32339 r!7292)))))

(declare-fun d!1836018 () Bool)

(declare-fun c!1035680 () Bool)

(assert (=> d!1836018 (= c!1035680 (and ((_ is ElementMatch!15913) (regOne!32339 r!7292)) (= (c!1035547 (regOne!32339 r!7292)) (h!70364 s!2326))))))

(assert (=> d!1836018 (= (derivationStepZipperDown!1179 (regOne!32339 r!7292) lt!2303990 (h!70364 s!2326)) e!3584513)))

(declare-fun b!5844292 () Bool)

(declare-fun call!456689 () (InoxSet Context!10594))

(assert (=> b!5844292 (= e!3584510 ((_ map or) call!456690 call!456689))))

(declare-fun b!5844300 () Bool)

(declare-fun c!1035682 () Bool)

(assert (=> b!5844300 (= c!1035682 ((_ is Star!15913) (regOne!32339 r!7292)))))

(assert (=> b!5844300 (= e!3584508 e!3584512)))

(declare-fun b!5844301 () Bool)

(assert (=> b!5844301 (= e!3584512 call!456685)))

(declare-fun b!5844302 () Bool)

(assert (=> b!5844302 (= e!3584509 (nullable!5913 (regOne!32338 (regOne!32339 r!7292))))))

(declare-fun bm!456683 () Bool)

(assert (=> bm!456683 (= call!456689 call!456686)))

(declare-fun bm!456684 () Bool)

(assert (=> bm!456684 (= call!456685 call!456689)))

(declare-fun bm!456685 () Bool)

(assert (=> bm!456685 (= call!456690 (derivationStepZipperDown!1179 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292))) (ite c!1035681 lt!2303990 (Context!10595 call!456687)) (h!70364 s!2326)))))

(assert (= (and d!1836018 c!1035680) b!5844298))

(assert (= (and d!1836018 (not c!1035680)) b!5844299))

(assert (= (and b!5844299 c!1035681) b!5844297))

(assert (= (and b!5844299 (not c!1035681)) b!5844293))

(assert (= (and b!5844293 res!2461656) b!5844302))

(assert (= (and b!5844293 c!1035678) b!5844292))

(assert (= (and b!5844293 (not c!1035678)) b!5844296))

(assert (= (and b!5844296 c!1035679) b!5844294))

(assert (= (and b!5844296 (not c!1035679)) b!5844300))

(assert (= (and b!5844300 c!1035682) b!5844301))

(assert (= (and b!5844300 (not c!1035682)) b!5844295))

(assert (= (or b!5844294 b!5844301) bm!456681))

(assert (= (or b!5844294 b!5844301) bm!456684))

(assert (= (or b!5844292 bm!456681) bm!456680))

(assert (= (or b!5844292 bm!456684) bm!456683))

(assert (= (or b!5844297 bm!456683) bm!456682))

(assert (= (or b!5844297 b!5844292) bm!456685))

(declare-fun m!6767040 () Bool)

(assert (=> bm!456682 m!6767040))

(declare-fun m!6767042 () Bool)

(assert (=> bm!456685 m!6767042))

(declare-fun m!6767044 () Bool)

(assert (=> b!5844302 m!6767044))

(declare-fun m!6767046 () Bool)

(assert (=> b!5844298 m!6767046))

(declare-fun m!6767048 () Bool)

(assert (=> bm!456680 m!6767048))

(assert (=> b!5843801 d!1836018))

(declare-fun b!5844304 () Bool)

(declare-fun c!1035683 () Bool)

(declare-fun e!3584515 () Bool)

(assert (=> b!5844304 (= c!1035683 e!3584515)))

(declare-fun res!2461657 () Bool)

(assert (=> b!5844304 (=> (not res!2461657) (not e!3584515))))

(assert (=> b!5844304 (= res!2461657 ((_ is Concat!24758) (regTwo!32339 r!7292)))))

(declare-fun e!3584517 () (InoxSet Context!10594))

(declare-fun e!3584516 () (InoxSet Context!10594))

(assert (=> b!5844304 (= e!3584517 e!3584516)))

(declare-fun b!5844305 () Bool)

(declare-fun e!3584514 () (InoxSet Context!10594))

(declare-fun call!456691 () (InoxSet Context!10594))

(assert (=> b!5844305 (= e!3584514 call!456691)))

(declare-fun b!5844306 () Bool)

(declare-fun e!3584518 () (InoxSet Context!10594))

(assert (=> b!5844306 (= e!3584518 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844307 () Bool)

(assert (=> b!5844307 (= e!3584516 e!3584514)))

(declare-fun c!1035684 () Bool)

(assert (=> b!5844307 (= c!1035684 ((_ is Concat!24758) (regTwo!32339 r!7292)))))

(declare-fun bm!456686 () Bool)

(declare-fun call!456693 () List!64038)

(assert (=> bm!456686 (= call!456693 ($colon$colon!1818 (exprs!5797 lt!2303990) (ite (or c!1035683 c!1035684) (regTwo!32338 (regTwo!32339 r!7292)) (regTwo!32339 r!7292))))))

(declare-fun bm!456687 () Bool)

(declare-fun call!456694 () List!64038)

(assert (=> bm!456687 (= call!456694 call!456693)))

(declare-fun b!5844308 () Bool)

(declare-fun call!456696 () (InoxSet Context!10594))

(declare-fun call!456692 () (InoxSet Context!10594))

(assert (=> b!5844308 (= e!3584517 ((_ map or) call!456696 call!456692))))

(declare-fun b!5844309 () Bool)

(declare-fun e!3584519 () (InoxSet Context!10594))

(assert (=> b!5844309 (= e!3584519 (store ((as const (Array Context!10594 Bool)) false) lt!2303990 true))))

(declare-fun bm!456688 () Bool)

(declare-fun c!1035686 () Bool)

(assert (=> bm!456688 (= call!456692 (derivationStepZipperDown!1179 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292))))) (ite (or c!1035686 c!1035683) lt!2303990 (Context!10595 call!456694)) (h!70364 s!2326)))))

(declare-fun b!5844310 () Bool)

(assert (=> b!5844310 (= e!3584519 e!3584517)))

(assert (=> b!5844310 (= c!1035686 ((_ is Union!15913) (regTwo!32339 r!7292)))))

(declare-fun d!1836020 () Bool)

(declare-fun c!1035685 () Bool)

(assert (=> d!1836020 (= c!1035685 (and ((_ is ElementMatch!15913) (regTwo!32339 r!7292)) (= (c!1035547 (regTwo!32339 r!7292)) (h!70364 s!2326))))))

(assert (=> d!1836020 (= (derivationStepZipperDown!1179 (regTwo!32339 r!7292) lt!2303990 (h!70364 s!2326)) e!3584519)))

(declare-fun b!5844303 () Bool)

(declare-fun call!456695 () (InoxSet Context!10594))

(assert (=> b!5844303 (= e!3584516 ((_ map or) call!456696 call!456695))))

(declare-fun b!5844311 () Bool)

(declare-fun c!1035687 () Bool)

(assert (=> b!5844311 (= c!1035687 ((_ is Star!15913) (regTwo!32339 r!7292)))))

(assert (=> b!5844311 (= e!3584514 e!3584518)))

(declare-fun b!5844312 () Bool)

(assert (=> b!5844312 (= e!3584518 call!456691)))

(declare-fun b!5844313 () Bool)

(assert (=> b!5844313 (= e!3584515 (nullable!5913 (regOne!32338 (regTwo!32339 r!7292))))))

(declare-fun bm!456689 () Bool)

(assert (=> bm!456689 (= call!456695 call!456692)))

(declare-fun bm!456690 () Bool)

(assert (=> bm!456690 (= call!456691 call!456695)))

(declare-fun bm!456691 () Bool)

(assert (=> bm!456691 (= call!456696 (derivationStepZipperDown!1179 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292))) (ite c!1035686 lt!2303990 (Context!10595 call!456693)) (h!70364 s!2326)))))

(assert (= (and d!1836020 c!1035685) b!5844309))

(assert (= (and d!1836020 (not c!1035685)) b!5844310))

(assert (= (and b!5844310 c!1035686) b!5844308))

(assert (= (and b!5844310 (not c!1035686)) b!5844304))

(assert (= (and b!5844304 res!2461657) b!5844313))

(assert (= (and b!5844304 c!1035683) b!5844303))

(assert (= (and b!5844304 (not c!1035683)) b!5844307))

(assert (= (and b!5844307 c!1035684) b!5844305))

(assert (= (and b!5844307 (not c!1035684)) b!5844311))

(assert (= (and b!5844311 c!1035687) b!5844312))

(assert (= (and b!5844311 (not c!1035687)) b!5844306))

(assert (= (or b!5844305 b!5844312) bm!456687))

(assert (= (or b!5844305 b!5844312) bm!456690))

(assert (= (or b!5844303 bm!456687) bm!456686))

(assert (= (or b!5844303 bm!456690) bm!456689))

(assert (= (or b!5844308 bm!456689) bm!456688))

(assert (= (or b!5844308 b!5844303) bm!456691))

(declare-fun m!6767050 () Bool)

(assert (=> bm!456688 m!6767050))

(declare-fun m!6767052 () Bool)

(assert (=> bm!456691 m!6767052))

(declare-fun m!6767054 () Bool)

(assert (=> b!5844313 m!6767054))

(assert (=> b!5844309 m!6767046))

(declare-fun m!6767056 () Bool)

(assert (=> bm!456686 m!6767056))

(assert (=> b!5843801 d!1836020))

(declare-fun bs!1376881 () Bool)

(declare-fun b!5844323 () Bool)

(assert (= bs!1376881 (and b!5844323 b!5844156)))

(declare-fun lambda!319689 () Int)

(assert (=> bs!1376881 (= (and (= (reg!16242 (regTwo!32339 r!7292)) (reg!16242 r!7292)) (= (regTwo!32339 r!7292) r!7292)) (= lambda!319689 lambda!319683))))

(declare-fun bs!1376882 () Bool)

(assert (= bs!1376882 (and b!5844323 b!5844153)))

(assert (=> bs!1376882 (not (= lambda!319689 lambda!319684))))

(assert (=> b!5844323 true))

(assert (=> b!5844323 true))

(declare-fun bs!1376883 () Bool)

(declare-fun b!5844320 () Bool)

(assert (= bs!1376883 (and b!5844320 b!5844156)))

(declare-fun lambda!319690 () Int)

(assert (=> bs!1376883 (not (= lambda!319690 lambda!319683))))

(declare-fun bs!1376884 () Bool)

(assert (= bs!1376884 (and b!5844320 b!5844153)))

(assert (=> bs!1376884 (= (and (= (regOne!32338 (regTwo!32339 r!7292)) (regOne!32338 r!7292)) (= (regTwo!32338 (regTwo!32339 r!7292)) (regTwo!32338 r!7292))) (= lambda!319690 lambda!319684))))

(declare-fun bs!1376885 () Bool)

(assert (= bs!1376885 (and b!5844320 b!5844323)))

(assert (=> bs!1376885 (not (= lambda!319690 lambda!319689))))

(assert (=> b!5844320 true))

(assert (=> b!5844320 true))

(declare-fun call!456698 () Bool)

(declare-fun c!1035691 () Bool)

(declare-fun bm!456692 () Bool)

(assert (=> bm!456692 (= call!456698 (Exists!2985 (ite c!1035691 lambda!319689 lambda!319690)))))

(declare-fun b!5844314 () Bool)

(declare-fun res!2461659 () Bool)

(declare-fun e!3584522 () Bool)

(assert (=> b!5844314 (=> res!2461659 e!3584522)))

(declare-fun call!456697 () Bool)

(assert (=> b!5844314 (= res!2461659 call!456697)))

(declare-fun e!3584524 () Bool)

(assert (=> b!5844314 (= e!3584524 e!3584522)))

(declare-fun b!5844315 () Bool)

(declare-fun e!3584523 () Bool)

(declare-fun e!3584526 () Bool)

(assert (=> b!5844315 (= e!3584523 e!3584526)))

(declare-fun res!2461660 () Bool)

(assert (=> b!5844315 (= res!2461660 (matchRSpec!3014 (regOne!32339 (regTwo!32339 r!7292)) s!2326))))

(assert (=> b!5844315 (=> res!2461660 e!3584526)))

(declare-fun d!1836022 () Bool)

(declare-fun c!1035688 () Bool)

(assert (=> d!1836022 (= c!1035688 ((_ is EmptyExpr!15913) (regTwo!32339 r!7292)))))

(declare-fun e!3584525 () Bool)

(assert (=> d!1836022 (= (matchRSpec!3014 (regTwo!32339 r!7292) s!2326) e!3584525)))

(declare-fun b!5844316 () Bool)

(declare-fun c!1035690 () Bool)

(assert (=> b!5844316 (= c!1035690 ((_ is Union!15913) (regTwo!32339 r!7292)))))

(declare-fun e!3584521 () Bool)

(assert (=> b!5844316 (= e!3584521 e!3584523)))

(declare-fun b!5844317 () Bool)

(assert (=> b!5844317 (= e!3584523 e!3584524)))

(assert (=> b!5844317 (= c!1035691 ((_ is Star!15913) (regTwo!32339 r!7292)))))

(declare-fun b!5844318 () Bool)

(declare-fun c!1035689 () Bool)

(assert (=> b!5844318 (= c!1035689 ((_ is ElementMatch!15913) (regTwo!32339 r!7292)))))

(declare-fun e!3584520 () Bool)

(assert (=> b!5844318 (= e!3584520 e!3584521)))

(declare-fun b!5844319 () Bool)

(assert (=> b!5844319 (= e!3584525 call!456697)))

(declare-fun bm!456693 () Bool)

(assert (=> bm!456693 (= call!456697 (isEmpty!35774 s!2326))))

(assert (=> b!5844320 (= e!3584524 call!456698)))

(declare-fun b!5844321 () Bool)

(assert (=> b!5844321 (= e!3584525 e!3584520)))

(declare-fun res!2461658 () Bool)

(assert (=> b!5844321 (= res!2461658 (not ((_ is EmptyLang!15913) (regTwo!32339 r!7292))))))

(assert (=> b!5844321 (=> (not res!2461658) (not e!3584520))))

(declare-fun b!5844322 () Bool)

(assert (=> b!5844322 (= e!3584526 (matchRSpec!3014 (regTwo!32339 (regTwo!32339 r!7292)) s!2326))))

(assert (=> b!5844323 (= e!3584522 call!456698)))

(declare-fun b!5844324 () Bool)

(assert (=> b!5844324 (= e!3584521 (= s!2326 (Cons!63916 (c!1035547 (regTwo!32339 r!7292)) Nil!63916)))))

(assert (= (and d!1836022 c!1035688) b!5844319))

(assert (= (and d!1836022 (not c!1035688)) b!5844321))

(assert (= (and b!5844321 res!2461658) b!5844318))

(assert (= (and b!5844318 c!1035689) b!5844324))

(assert (= (and b!5844318 (not c!1035689)) b!5844316))

(assert (= (and b!5844316 c!1035690) b!5844315))

(assert (= (and b!5844316 (not c!1035690)) b!5844317))

(assert (= (and b!5844315 (not res!2461660)) b!5844322))

(assert (= (and b!5844317 c!1035691) b!5844314))

(assert (= (and b!5844317 (not c!1035691)) b!5844320))

(assert (= (and b!5844314 (not res!2461659)) b!5844323))

(assert (= (or b!5844323 b!5844320) bm!456692))

(assert (= (or b!5844319 b!5844314) bm!456693))

(declare-fun m!6767058 () Bool)

(assert (=> bm!456692 m!6767058))

(declare-fun m!6767060 () Bool)

(assert (=> b!5844315 m!6767060))

(assert (=> bm!456693 m!6767010))

(declare-fun m!6767062 () Bool)

(assert (=> b!5844322 m!6767062))

(assert (=> b!5843810 d!1836022))

(declare-fun d!1836024 () Bool)

(assert (=> d!1836024 (= (matchR!8096 (regOne!32339 r!7292) s!2326) (matchRSpec!3014 (regOne!32339 r!7292) s!2326))))

(declare-fun lt!2304028 () Unit!157097)

(assert (=> d!1836024 (= lt!2304028 (choose!44354 (regOne!32339 r!7292) s!2326))))

(assert (=> d!1836024 (validRegex!7649 (regOne!32339 r!7292))))

(assert (=> d!1836024 (= (mainMatchTheorem!3014 (regOne!32339 r!7292) s!2326) lt!2304028)))

(declare-fun bs!1376886 () Bool)

(assert (= bs!1376886 d!1836024))

(assert (=> bs!1376886 m!6766852))

(assert (=> bs!1376886 m!6766848))

(declare-fun m!6767064 () Bool)

(assert (=> bs!1376886 m!6767064))

(declare-fun m!6767066 () Bool)

(assert (=> bs!1376886 m!6767066))

(assert (=> b!5843810 d!1836024))

(declare-fun b!5844325 () Bool)

(declare-fun e!3584530 () Bool)

(declare-fun lt!2304029 () Bool)

(declare-fun call!456699 () Bool)

(assert (=> b!5844325 (= e!3584530 (= lt!2304029 call!456699))))

(declare-fun b!5844326 () Bool)

(declare-fun res!2461667 () Bool)

(declare-fun e!3584531 () Bool)

(assert (=> b!5844326 (=> (not res!2461667) (not e!3584531))))

(assert (=> b!5844326 (= res!2461667 (isEmpty!35774 (tail!11464 s!2326)))))

(declare-fun b!5844327 () Bool)

(declare-fun e!3584529 () Bool)

(declare-fun e!3584528 () Bool)

(assert (=> b!5844327 (= e!3584529 e!3584528)))

(declare-fun res!2461662 () Bool)

(assert (=> b!5844327 (=> res!2461662 e!3584528)))

(assert (=> b!5844327 (= res!2461662 call!456699)))

(declare-fun d!1836026 () Bool)

(assert (=> d!1836026 e!3584530))

(declare-fun c!1035694 () Bool)

(assert (=> d!1836026 (= c!1035694 ((_ is EmptyExpr!15913) (regTwo!32339 r!7292)))))

(declare-fun e!3584532 () Bool)

(assert (=> d!1836026 (= lt!2304029 e!3584532)))

(declare-fun c!1035693 () Bool)

(assert (=> d!1836026 (= c!1035693 (isEmpty!35774 s!2326))))

(assert (=> d!1836026 (validRegex!7649 (regTwo!32339 r!7292))))

(assert (=> d!1836026 (= (matchR!8096 (regTwo!32339 r!7292) s!2326) lt!2304029)))

(declare-fun b!5844328 () Bool)

(assert (=> b!5844328 (= e!3584532 (nullable!5913 (regTwo!32339 r!7292)))))

(declare-fun b!5844329 () Bool)

(assert (=> b!5844329 (= e!3584528 (not (= (head!12380 s!2326) (c!1035547 (regTwo!32339 r!7292)))))))

(declare-fun b!5844330 () Bool)

(declare-fun res!2461665 () Bool)

(assert (=> b!5844330 (=> (not res!2461665) (not e!3584531))))

(assert (=> b!5844330 (= res!2461665 (not call!456699))))

(declare-fun b!5844331 () Bool)

(declare-fun e!3584533 () Bool)

(assert (=> b!5844331 (= e!3584530 e!3584533)))

(declare-fun c!1035692 () Bool)

(assert (=> b!5844331 (= c!1035692 ((_ is EmptyLang!15913) (regTwo!32339 r!7292)))))

(declare-fun b!5844332 () Bool)

(declare-fun e!3584527 () Bool)

(assert (=> b!5844332 (= e!3584527 e!3584529)))

(declare-fun res!2461663 () Bool)

(assert (=> b!5844332 (=> (not res!2461663) (not e!3584529))))

(assert (=> b!5844332 (= res!2461663 (not lt!2304029))))

(declare-fun b!5844333 () Bool)

(declare-fun res!2461664 () Bool)

(assert (=> b!5844333 (=> res!2461664 e!3584527)))

(assert (=> b!5844333 (= res!2461664 e!3584531)))

(declare-fun res!2461661 () Bool)

(assert (=> b!5844333 (=> (not res!2461661) (not e!3584531))))

(assert (=> b!5844333 (= res!2461661 lt!2304029)))

(declare-fun b!5844334 () Bool)

(declare-fun res!2461668 () Bool)

(assert (=> b!5844334 (=> res!2461668 e!3584527)))

(assert (=> b!5844334 (= res!2461668 (not ((_ is ElementMatch!15913) (regTwo!32339 r!7292))))))

(assert (=> b!5844334 (= e!3584533 e!3584527)))

(declare-fun b!5844335 () Bool)

(assert (=> b!5844335 (= e!3584531 (= (head!12380 s!2326) (c!1035547 (regTwo!32339 r!7292))))))

(declare-fun b!5844336 () Bool)

(assert (=> b!5844336 (= e!3584532 (matchR!8096 (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326)) (tail!11464 s!2326)))))

(declare-fun bm!456694 () Bool)

(assert (=> bm!456694 (= call!456699 (isEmpty!35774 s!2326))))

(declare-fun b!5844337 () Bool)

(assert (=> b!5844337 (= e!3584533 (not lt!2304029))))

(declare-fun b!5844338 () Bool)

(declare-fun res!2461666 () Bool)

(assert (=> b!5844338 (=> res!2461666 e!3584528)))

(assert (=> b!5844338 (= res!2461666 (not (isEmpty!35774 (tail!11464 s!2326))))))

(assert (= (and d!1836026 c!1035693) b!5844328))

(assert (= (and d!1836026 (not c!1035693)) b!5844336))

(assert (= (and d!1836026 c!1035694) b!5844325))

(assert (= (and d!1836026 (not c!1035694)) b!5844331))

(assert (= (and b!5844331 c!1035692) b!5844337))

(assert (= (and b!5844331 (not c!1035692)) b!5844334))

(assert (= (and b!5844334 (not res!2461668)) b!5844333))

(assert (= (and b!5844333 res!2461661) b!5844330))

(assert (= (and b!5844330 res!2461665) b!5844326))

(assert (= (and b!5844326 res!2461667) b!5844335))

(assert (= (and b!5844333 (not res!2461664)) b!5844332))

(assert (= (and b!5844332 res!2461663) b!5844327))

(assert (= (and b!5844327 (not res!2461662)) b!5844338))

(assert (= (and b!5844338 (not res!2461666)) b!5844329))

(assert (= (or b!5844325 b!5844327 b!5844330) bm!456694))

(assert (=> bm!456694 m!6767010))

(assert (=> b!5844326 m!6767016))

(assert (=> b!5844326 m!6767016))

(assert (=> b!5844326 m!6767018))

(assert (=> b!5844336 m!6767020))

(assert (=> b!5844336 m!6767020))

(declare-fun m!6767068 () Bool)

(assert (=> b!5844336 m!6767068))

(assert (=> b!5844336 m!6767016))

(assert (=> b!5844336 m!6767068))

(assert (=> b!5844336 m!6767016))

(declare-fun m!6767070 () Bool)

(assert (=> b!5844336 m!6767070))

(assert (=> b!5844338 m!6767016))

(assert (=> b!5844338 m!6767016))

(assert (=> b!5844338 m!6767018))

(assert (=> d!1836026 m!6767010))

(declare-fun m!6767072 () Bool)

(assert (=> d!1836026 m!6767072))

(declare-fun m!6767074 () Bool)

(assert (=> b!5844328 m!6767074))

(assert (=> b!5844329 m!6767020))

(assert (=> b!5844335 m!6767020))

(assert (=> b!5843810 d!1836026))

(declare-fun d!1836028 () Bool)

(assert (=> d!1836028 (= (matchR!8096 (regTwo!32339 r!7292) s!2326) (matchRSpec!3014 (regTwo!32339 r!7292) s!2326))))

(declare-fun lt!2304030 () Unit!157097)

(assert (=> d!1836028 (= lt!2304030 (choose!44354 (regTwo!32339 r!7292) s!2326))))

(assert (=> d!1836028 (validRegex!7649 (regTwo!32339 r!7292))))

(assert (=> d!1836028 (= (mainMatchTheorem!3014 (regTwo!32339 r!7292) s!2326) lt!2304030)))

(declare-fun bs!1376887 () Bool)

(assert (= bs!1376887 d!1836028))

(assert (=> bs!1376887 m!6766846))

(assert (=> bs!1376887 m!6766842))

(declare-fun m!6767076 () Bool)

(assert (=> bs!1376887 m!6767076))

(assert (=> bs!1376887 m!6767072))

(assert (=> b!5843810 d!1836028))

(declare-fun bs!1376888 () Bool)

(declare-fun b!5844348 () Bool)

(assert (= bs!1376888 (and b!5844348 b!5844156)))

(declare-fun lambda!319691 () Int)

(assert (=> bs!1376888 (= (and (= (reg!16242 (regOne!32339 r!7292)) (reg!16242 r!7292)) (= (regOne!32339 r!7292) r!7292)) (= lambda!319691 lambda!319683))))

(declare-fun bs!1376889 () Bool)

(assert (= bs!1376889 (and b!5844348 b!5844153)))

(assert (=> bs!1376889 (not (= lambda!319691 lambda!319684))))

(declare-fun bs!1376890 () Bool)

(assert (= bs!1376890 (and b!5844348 b!5844323)))

(assert (=> bs!1376890 (= (and (= (reg!16242 (regOne!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292))) (= (regOne!32339 r!7292) (regTwo!32339 r!7292))) (= lambda!319691 lambda!319689))))

(declare-fun bs!1376891 () Bool)

(assert (= bs!1376891 (and b!5844348 b!5844320)))

(assert (=> bs!1376891 (not (= lambda!319691 lambda!319690))))

(assert (=> b!5844348 true))

(assert (=> b!5844348 true))

(declare-fun bs!1376892 () Bool)

(declare-fun b!5844345 () Bool)

(assert (= bs!1376892 (and b!5844345 b!5844323)))

(declare-fun lambda!319692 () Int)

(assert (=> bs!1376892 (not (= lambda!319692 lambda!319689))))

(declare-fun bs!1376893 () Bool)

(assert (= bs!1376893 (and b!5844345 b!5844320)))

(assert (=> bs!1376893 (= (and (= (regOne!32338 (regOne!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292))) (= (regTwo!32338 (regOne!32339 r!7292)) (regTwo!32338 (regTwo!32339 r!7292)))) (= lambda!319692 lambda!319690))))

(declare-fun bs!1376894 () Bool)

(assert (= bs!1376894 (and b!5844345 b!5844153)))

(assert (=> bs!1376894 (= (and (= (regOne!32338 (regOne!32339 r!7292)) (regOne!32338 r!7292)) (= (regTwo!32338 (regOne!32339 r!7292)) (regTwo!32338 r!7292))) (= lambda!319692 lambda!319684))))

(declare-fun bs!1376895 () Bool)

(assert (= bs!1376895 (and b!5844345 b!5844156)))

(assert (=> bs!1376895 (not (= lambda!319692 lambda!319683))))

(declare-fun bs!1376896 () Bool)

(assert (= bs!1376896 (and b!5844345 b!5844348)))

(assert (=> bs!1376896 (not (= lambda!319692 lambda!319691))))

(assert (=> b!5844345 true))

(assert (=> b!5844345 true))

(declare-fun bm!456695 () Bool)

(declare-fun call!456701 () Bool)

(declare-fun c!1035698 () Bool)

(assert (=> bm!456695 (= call!456701 (Exists!2985 (ite c!1035698 lambda!319691 lambda!319692)))))

(declare-fun b!5844339 () Bool)

(declare-fun res!2461670 () Bool)

(declare-fun e!3584536 () Bool)

(assert (=> b!5844339 (=> res!2461670 e!3584536)))

(declare-fun call!456700 () Bool)

(assert (=> b!5844339 (= res!2461670 call!456700)))

(declare-fun e!3584538 () Bool)

(assert (=> b!5844339 (= e!3584538 e!3584536)))

(declare-fun b!5844340 () Bool)

(declare-fun e!3584537 () Bool)

(declare-fun e!3584540 () Bool)

(assert (=> b!5844340 (= e!3584537 e!3584540)))

(declare-fun res!2461671 () Bool)

(assert (=> b!5844340 (= res!2461671 (matchRSpec!3014 (regOne!32339 (regOne!32339 r!7292)) s!2326))))

(assert (=> b!5844340 (=> res!2461671 e!3584540)))

(declare-fun d!1836030 () Bool)

(declare-fun c!1035695 () Bool)

(assert (=> d!1836030 (= c!1035695 ((_ is EmptyExpr!15913) (regOne!32339 r!7292)))))

(declare-fun e!3584539 () Bool)

(assert (=> d!1836030 (= (matchRSpec!3014 (regOne!32339 r!7292) s!2326) e!3584539)))

(declare-fun b!5844341 () Bool)

(declare-fun c!1035697 () Bool)

(assert (=> b!5844341 (= c!1035697 ((_ is Union!15913) (regOne!32339 r!7292)))))

(declare-fun e!3584535 () Bool)

(assert (=> b!5844341 (= e!3584535 e!3584537)))

(declare-fun b!5844342 () Bool)

(assert (=> b!5844342 (= e!3584537 e!3584538)))

(assert (=> b!5844342 (= c!1035698 ((_ is Star!15913) (regOne!32339 r!7292)))))

(declare-fun b!5844343 () Bool)

(declare-fun c!1035696 () Bool)

(assert (=> b!5844343 (= c!1035696 ((_ is ElementMatch!15913) (regOne!32339 r!7292)))))

(declare-fun e!3584534 () Bool)

(assert (=> b!5844343 (= e!3584534 e!3584535)))

(declare-fun b!5844344 () Bool)

(assert (=> b!5844344 (= e!3584539 call!456700)))

(declare-fun bm!456696 () Bool)

(assert (=> bm!456696 (= call!456700 (isEmpty!35774 s!2326))))

(assert (=> b!5844345 (= e!3584538 call!456701)))

(declare-fun b!5844346 () Bool)

(assert (=> b!5844346 (= e!3584539 e!3584534)))

(declare-fun res!2461669 () Bool)

(assert (=> b!5844346 (= res!2461669 (not ((_ is EmptyLang!15913) (regOne!32339 r!7292))))))

(assert (=> b!5844346 (=> (not res!2461669) (not e!3584534))))

(declare-fun b!5844347 () Bool)

(assert (=> b!5844347 (= e!3584540 (matchRSpec!3014 (regTwo!32339 (regOne!32339 r!7292)) s!2326))))

(assert (=> b!5844348 (= e!3584536 call!456701)))

(declare-fun b!5844349 () Bool)

(assert (=> b!5844349 (= e!3584535 (= s!2326 (Cons!63916 (c!1035547 (regOne!32339 r!7292)) Nil!63916)))))

(assert (= (and d!1836030 c!1035695) b!5844344))

(assert (= (and d!1836030 (not c!1035695)) b!5844346))

(assert (= (and b!5844346 res!2461669) b!5844343))

(assert (= (and b!5844343 c!1035696) b!5844349))

(assert (= (and b!5844343 (not c!1035696)) b!5844341))

(assert (= (and b!5844341 c!1035697) b!5844340))

(assert (= (and b!5844341 (not c!1035697)) b!5844342))

(assert (= (and b!5844340 (not res!2461671)) b!5844347))

(assert (= (and b!5844342 c!1035698) b!5844339))

(assert (= (and b!5844342 (not c!1035698)) b!5844345))

(assert (= (and b!5844339 (not res!2461670)) b!5844348))

(assert (= (or b!5844348 b!5844345) bm!456695))

(assert (= (or b!5844344 b!5844339) bm!456696))

(declare-fun m!6767078 () Bool)

(assert (=> bm!456695 m!6767078))

(declare-fun m!6767080 () Bool)

(assert (=> b!5844340 m!6767080))

(assert (=> bm!456696 m!6767010))

(declare-fun m!6767082 () Bool)

(assert (=> b!5844347 m!6767082))

(assert (=> b!5843810 d!1836030))

(declare-fun b!5844350 () Bool)

(declare-fun e!3584544 () Bool)

(declare-fun lt!2304031 () Bool)

(declare-fun call!456702 () Bool)

(assert (=> b!5844350 (= e!3584544 (= lt!2304031 call!456702))))

(declare-fun b!5844351 () Bool)

(declare-fun res!2461678 () Bool)

(declare-fun e!3584545 () Bool)

(assert (=> b!5844351 (=> (not res!2461678) (not e!3584545))))

(assert (=> b!5844351 (= res!2461678 (isEmpty!35774 (tail!11464 s!2326)))))

(declare-fun b!5844352 () Bool)

(declare-fun e!3584543 () Bool)

(declare-fun e!3584542 () Bool)

(assert (=> b!5844352 (= e!3584543 e!3584542)))

(declare-fun res!2461673 () Bool)

(assert (=> b!5844352 (=> res!2461673 e!3584542)))

(assert (=> b!5844352 (= res!2461673 call!456702)))

(declare-fun d!1836032 () Bool)

(assert (=> d!1836032 e!3584544))

(declare-fun c!1035701 () Bool)

(assert (=> d!1836032 (= c!1035701 ((_ is EmptyExpr!15913) (regOne!32339 r!7292)))))

(declare-fun e!3584546 () Bool)

(assert (=> d!1836032 (= lt!2304031 e!3584546)))

(declare-fun c!1035700 () Bool)

(assert (=> d!1836032 (= c!1035700 (isEmpty!35774 s!2326))))

(assert (=> d!1836032 (validRegex!7649 (regOne!32339 r!7292))))

(assert (=> d!1836032 (= (matchR!8096 (regOne!32339 r!7292) s!2326) lt!2304031)))

(declare-fun b!5844353 () Bool)

(assert (=> b!5844353 (= e!3584546 (nullable!5913 (regOne!32339 r!7292)))))

(declare-fun b!5844354 () Bool)

(assert (=> b!5844354 (= e!3584542 (not (= (head!12380 s!2326) (c!1035547 (regOne!32339 r!7292)))))))

(declare-fun b!5844355 () Bool)

(declare-fun res!2461676 () Bool)

(assert (=> b!5844355 (=> (not res!2461676) (not e!3584545))))

(assert (=> b!5844355 (= res!2461676 (not call!456702))))

(declare-fun b!5844356 () Bool)

(declare-fun e!3584547 () Bool)

(assert (=> b!5844356 (= e!3584544 e!3584547)))

(declare-fun c!1035699 () Bool)

(assert (=> b!5844356 (= c!1035699 ((_ is EmptyLang!15913) (regOne!32339 r!7292)))))

(declare-fun b!5844357 () Bool)

(declare-fun e!3584541 () Bool)

(assert (=> b!5844357 (= e!3584541 e!3584543)))

(declare-fun res!2461674 () Bool)

(assert (=> b!5844357 (=> (not res!2461674) (not e!3584543))))

(assert (=> b!5844357 (= res!2461674 (not lt!2304031))))

(declare-fun b!5844358 () Bool)

(declare-fun res!2461675 () Bool)

(assert (=> b!5844358 (=> res!2461675 e!3584541)))

(assert (=> b!5844358 (= res!2461675 e!3584545)))

(declare-fun res!2461672 () Bool)

(assert (=> b!5844358 (=> (not res!2461672) (not e!3584545))))

(assert (=> b!5844358 (= res!2461672 lt!2304031)))

(declare-fun b!5844359 () Bool)

(declare-fun res!2461679 () Bool)

(assert (=> b!5844359 (=> res!2461679 e!3584541)))

(assert (=> b!5844359 (= res!2461679 (not ((_ is ElementMatch!15913) (regOne!32339 r!7292))))))

(assert (=> b!5844359 (= e!3584547 e!3584541)))

(declare-fun b!5844360 () Bool)

(assert (=> b!5844360 (= e!3584545 (= (head!12380 s!2326) (c!1035547 (regOne!32339 r!7292))))))

(declare-fun b!5844361 () Bool)

(assert (=> b!5844361 (= e!3584546 (matchR!8096 (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326)) (tail!11464 s!2326)))))

(declare-fun bm!456697 () Bool)

(assert (=> bm!456697 (= call!456702 (isEmpty!35774 s!2326))))

(declare-fun b!5844362 () Bool)

(assert (=> b!5844362 (= e!3584547 (not lt!2304031))))

(declare-fun b!5844363 () Bool)

(declare-fun res!2461677 () Bool)

(assert (=> b!5844363 (=> res!2461677 e!3584542)))

(assert (=> b!5844363 (= res!2461677 (not (isEmpty!35774 (tail!11464 s!2326))))))

(assert (= (and d!1836032 c!1035700) b!5844353))

(assert (= (and d!1836032 (not c!1035700)) b!5844361))

(assert (= (and d!1836032 c!1035701) b!5844350))

(assert (= (and d!1836032 (not c!1035701)) b!5844356))

(assert (= (and b!5844356 c!1035699) b!5844362))

(assert (= (and b!5844356 (not c!1035699)) b!5844359))

(assert (= (and b!5844359 (not res!2461679)) b!5844358))

(assert (= (and b!5844358 res!2461672) b!5844355))

(assert (= (and b!5844355 res!2461676) b!5844351))

(assert (= (and b!5844351 res!2461678) b!5844360))

(assert (= (and b!5844358 (not res!2461675)) b!5844357))

(assert (= (and b!5844357 res!2461674) b!5844352))

(assert (= (and b!5844352 (not res!2461673)) b!5844363))

(assert (= (and b!5844363 (not res!2461677)) b!5844354))

(assert (= (or b!5844350 b!5844352 b!5844355) bm!456697))

(assert (=> bm!456697 m!6767010))

(assert (=> b!5844351 m!6767016))

(assert (=> b!5844351 m!6767016))

(assert (=> b!5844351 m!6767018))

(assert (=> b!5844361 m!6767020))

(assert (=> b!5844361 m!6767020))

(declare-fun m!6767084 () Bool)

(assert (=> b!5844361 m!6767084))

(assert (=> b!5844361 m!6767016))

(assert (=> b!5844361 m!6767084))

(assert (=> b!5844361 m!6767016))

(declare-fun m!6767086 () Bool)

(assert (=> b!5844361 m!6767086))

(assert (=> b!5844363 m!6767016))

(assert (=> b!5844363 m!6767016))

(assert (=> b!5844363 m!6767018))

(assert (=> d!1836032 m!6767010))

(assert (=> d!1836032 m!6767066))

(declare-fun m!6767088 () Bool)

(assert (=> b!5844353 m!6767088))

(assert (=> b!5844354 m!6767020))

(assert (=> b!5844360 m!6767020))

(assert (=> b!5843810 d!1836032))

(declare-fun bs!1376897 () Bool)

(declare-fun d!1836034 () Bool)

(assert (= bs!1376897 (and d!1836034 d!1836012)))

(declare-fun lambda!319693 () Int)

(assert (=> bs!1376897 (= lambda!319693 lambda!319687)))

(declare-fun bs!1376898 () Bool)

(assert (= bs!1376898 (and d!1836034 d!1836014)))

(assert (=> bs!1376898 (= lambda!319693 lambda!319688)))

(assert (=> d!1836034 (= (inv!83029 lt!2303990) (forall!15000 (exprs!5797 lt!2303990) lambda!319693))))

(declare-fun bs!1376899 () Bool)

(assert (= bs!1376899 d!1836034))

(declare-fun m!6767090 () Bool)

(assert (=> bs!1376899 m!6767090))

(assert (=> b!5843800 d!1836034))

(declare-fun bs!1376900 () Bool)

(declare-fun d!1836036 () Bool)

(assert (= bs!1376900 (and d!1836036 d!1836012)))

(declare-fun lambda!319696 () Int)

(assert (=> bs!1376900 (= lambda!319696 lambda!319687)))

(declare-fun bs!1376901 () Bool)

(assert (= bs!1376901 (and d!1836036 d!1836014)))

(assert (=> bs!1376901 (= lambda!319696 lambda!319688)))

(declare-fun bs!1376902 () Bool)

(assert (= bs!1376902 (and d!1836036 d!1836034)))

(assert (=> bs!1376902 (= lambda!319696 lambda!319693)))

(declare-fun b!5844384 () Bool)

(declare-fun e!3584563 () Regex!15913)

(declare-fun e!3584560 () Regex!15913)

(assert (=> b!5844384 (= e!3584563 e!3584560)))

(declare-fun c!1035712 () Bool)

(assert (=> b!5844384 (= c!1035712 ((_ is Cons!63914) (unfocusZipperList!1334 zl!343)))))

(declare-fun b!5844385 () Bool)

(assert (=> b!5844385 (= e!3584560 EmptyLang!15913)))

(declare-fun b!5844386 () Bool)

(declare-fun e!3584562 () Bool)

(declare-fun lt!2304034 () Regex!15913)

(declare-fun head!12381 (List!64038) Regex!15913)

(assert (=> b!5844386 (= e!3584562 (= lt!2304034 (head!12381 (unfocusZipperList!1334 zl!343))))))

(declare-fun b!5844387 () Bool)

(declare-fun e!3584564 () Bool)

(declare-fun isEmptyLang!1356 (Regex!15913) Bool)

(assert (=> b!5844387 (= e!3584564 (isEmptyLang!1356 lt!2304034))))

(declare-fun b!5844388 () Bool)

(assert (=> b!5844388 (= e!3584563 (h!70362 (unfocusZipperList!1334 zl!343)))))

(declare-fun e!3584565 () Bool)

(assert (=> d!1836036 e!3584565))

(declare-fun res!2461684 () Bool)

(assert (=> d!1836036 (=> (not res!2461684) (not e!3584565))))

(assert (=> d!1836036 (= res!2461684 (validRegex!7649 lt!2304034))))

(assert (=> d!1836036 (= lt!2304034 e!3584563)))

(declare-fun c!1035710 () Bool)

(declare-fun e!3584561 () Bool)

(assert (=> d!1836036 (= c!1035710 e!3584561)))

(declare-fun res!2461685 () Bool)

(assert (=> d!1836036 (=> (not res!2461685) (not e!3584561))))

(assert (=> d!1836036 (= res!2461685 ((_ is Cons!63914) (unfocusZipperList!1334 zl!343)))))

(assert (=> d!1836036 (forall!15000 (unfocusZipperList!1334 zl!343) lambda!319696)))

(assert (=> d!1836036 (= (generalisedUnion!1757 (unfocusZipperList!1334 zl!343)) lt!2304034)))

(declare-fun b!5844389 () Bool)

(declare-fun isUnion!786 (Regex!15913) Bool)

(assert (=> b!5844389 (= e!3584562 (isUnion!786 lt!2304034))))

(declare-fun b!5844390 () Bool)

(assert (=> b!5844390 (= e!3584564 e!3584562)))

(declare-fun c!1035713 () Bool)

(declare-fun isEmpty!35776 (List!64038) Bool)

(declare-fun tail!11466 (List!64038) List!64038)

(assert (=> b!5844390 (= c!1035713 (isEmpty!35776 (tail!11466 (unfocusZipperList!1334 zl!343))))))

(declare-fun b!5844391 () Bool)

(assert (=> b!5844391 (= e!3584560 (Union!15913 (h!70362 (unfocusZipperList!1334 zl!343)) (generalisedUnion!1757 (t!377395 (unfocusZipperList!1334 zl!343)))))))

(declare-fun b!5844392 () Bool)

(assert (=> b!5844392 (= e!3584561 (isEmpty!35776 (t!377395 (unfocusZipperList!1334 zl!343))))))

(declare-fun b!5844393 () Bool)

(assert (=> b!5844393 (= e!3584565 e!3584564)))

(declare-fun c!1035711 () Bool)

(assert (=> b!5844393 (= c!1035711 (isEmpty!35776 (unfocusZipperList!1334 zl!343)))))

(assert (= (and d!1836036 res!2461685) b!5844392))

(assert (= (and d!1836036 c!1035710) b!5844388))

(assert (= (and d!1836036 (not c!1035710)) b!5844384))

(assert (= (and b!5844384 c!1035712) b!5844391))

(assert (= (and b!5844384 (not c!1035712)) b!5844385))

(assert (= (and d!1836036 res!2461684) b!5844393))

(assert (= (and b!5844393 c!1035711) b!5844387))

(assert (= (and b!5844393 (not c!1035711)) b!5844390))

(assert (= (and b!5844390 c!1035713) b!5844386))

(assert (= (and b!5844390 (not c!1035713)) b!5844389))

(declare-fun m!6767092 () Bool)

(assert (=> b!5844389 m!6767092))

(declare-fun m!6767094 () Bool)

(assert (=> d!1836036 m!6767094))

(assert (=> d!1836036 m!6766816))

(declare-fun m!6767096 () Bool)

(assert (=> d!1836036 m!6767096))

(assert (=> b!5844390 m!6766816))

(declare-fun m!6767098 () Bool)

(assert (=> b!5844390 m!6767098))

(assert (=> b!5844390 m!6767098))

(declare-fun m!6767100 () Bool)

(assert (=> b!5844390 m!6767100))

(assert (=> b!5844393 m!6766816))

(declare-fun m!6767102 () Bool)

(assert (=> b!5844393 m!6767102))

(assert (=> b!5844386 m!6766816))

(declare-fun m!6767104 () Bool)

(assert (=> b!5844386 m!6767104))

(declare-fun m!6767106 () Bool)

(assert (=> b!5844387 m!6767106))

(declare-fun m!6767108 () Bool)

(assert (=> b!5844392 m!6767108))

(declare-fun m!6767110 () Bool)

(assert (=> b!5844391 m!6767110))

(assert (=> b!5843812 d!1836036))

(declare-fun bs!1376903 () Bool)

(declare-fun d!1836038 () Bool)

(assert (= bs!1376903 (and d!1836038 d!1836012)))

(declare-fun lambda!319699 () Int)

(assert (=> bs!1376903 (= lambda!319699 lambda!319687)))

(declare-fun bs!1376904 () Bool)

(assert (= bs!1376904 (and d!1836038 d!1836014)))

(assert (=> bs!1376904 (= lambda!319699 lambda!319688)))

(declare-fun bs!1376905 () Bool)

(assert (= bs!1376905 (and d!1836038 d!1836034)))

(assert (=> bs!1376905 (= lambda!319699 lambda!319693)))

(declare-fun bs!1376906 () Bool)

(assert (= bs!1376906 (and d!1836038 d!1836036)))

(assert (=> bs!1376906 (= lambda!319699 lambda!319696)))

(declare-fun lt!2304037 () List!64038)

(assert (=> d!1836038 (forall!15000 lt!2304037 lambda!319699)))

(declare-fun e!3584568 () List!64038)

(assert (=> d!1836038 (= lt!2304037 e!3584568)))

(declare-fun c!1035716 () Bool)

(assert (=> d!1836038 (= c!1035716 ((_ is Cons!63915) zl!343))))

(assert (=> d!1836038 (= (unfocusZipperList!1334 zl!343) lt!2304037)))

(declare-fun b!5844398 () Bool)

(assert (=> b!5844398 (= e!3584568 (Cons!63914 (generalisedConcat!1510 (exprs!5797 (h!70363 zl!343))) (unfocusZipperList!1334 (t!377396 zl!343))))))

(declare-fun b!5844399 () Bool)

(assert (=> b!5844399 (= e!3584568 Nil!63914)))

(assert (= (and d!1836038 c!1035716) b!5844398))

(assert (= (and d!1836038 (not c!1035716)) b!5844399))

(declare-fun m!6767112 () Bool)

(assert (=> d!1836038 m!6767112))

(assert (=> b!5844398 m!6766858))

(declare-fun m!6767114 () Bool)

(assert (=> b!5844398 m!6767114))

(assert (=> b!5843812 d!1836038))

(declare-fun bs!1376907 () Bool)

(declare-fun d!1836040 () Bool)

(assert (= bs!1376907 (and d!1836040 d!1836012)))

(declare-fun lambda!319702 () Int)

(assert (=> bs!1376907 (= lambda!319702 lambda!319687)))

(declare-fun bs!1376908 () Bool)

(assert (= bs!1376908 (and d!1836040 d!1836034)))

(assert (=> bs!1376908 (= lambda!319702 lambda!319693)))

(declare-fun bs!1376909 () Bool)

(assert (= bs!1376909 (and d!1836040 d!1836014)))

(assert (=> bs!1376909 (= lambda!319702 lambda!319688)))

(declare-fun bs!1376910 () Bool)

(assert (= bs!1376910 (and d!1836040 d!1836036)))

(assert (=> bs!1376910 (= lambda!319702 lambda!319696)))

(declare-fun bs!1376911 () Bool)

(assert (= bs!1376911 (and d!1836040 d!1836038)))

(assert (=> bs!1376911 (= lambda!319702 lambda!319699)))

(declare-fun e!3584581 () Bool)

(assert (=> d!1836040 e!3584581))

(declare-fun res!2461691 () Bool)

(assert (=> d!1836040 (=> (not res!2461691) (not e!3584581))))

(declare-fun lt!2304040 () Regex!15913)

(assert (=> d!1836040 (= res!2461691 (validRegex!7649 lt!2304040))))

(declare-fun e!3584586 () Regex!15913)

(assert (=> d!1836040 (= lt!2304040 e!3584586)))

(declare-fun c!1035727 () Bool)

(declare-fun e!3584584 () Bool)

(assert (=> d!1836040 (= c!1035727 e!3584584)))

(declare-fun res!2461690 () Bool)

(assert (=> d!1836040 (=> (not res!2461690) (not e!3584584))))

(assert (=> d!1836040 (= res!2461690 ((_ is Cons!63914) (exprs!5797 (h!70363 zl!343))))))

(assert (=> d!1836040 (forall!15000 (exprs!5797 (h!70363 zl!343)) lambda!319702)))

(assert (=> d!1836040 (= (generalisedConcat!1510 (exprs!5797 (h!70363 zl!343))) lt!2304040)))

(declare-fun b!5844420 () Bool)

(assert (=> b!5844420 (= e!3584586 (h!70362 (exprs!5797 (h!70363 zl!343))))))

(declare-fun b!5844421 () Bool)

(declare-fun e!3584582 () Bool)

(assert (=> b!5844421 (= e!3584581 e!3584582)))

(declare-fun c!1035725 () Bool)

(assert (=> b!5844421 (= c!1035725 (isEmpty!35776 (exprs!5797 (h!70363 zl!343))))))

(declare-fun b!5844422 () Bool)

(declare-fun e!3584583 () Bool)

(assert (=> b!5844422 (= e!3584583 (= lt!2304040 (head!12381 (exprs!5797 (h!70363 zl!343)))))))

(declare-fun b!5844423 () Bool)

(declare-fun e!3584585 () Regex!15913)

(assert (=> b!5844423 (= e!3584585 EmptyExpr!15913)))

(declare-fun b!5844424 () Bool)

(declare-fun isEmptyExpr!1348 (Regex!15913) Bool)

(assert (=> b!5844424 (= e!3584582 (isEmptyExpr!1348 lt!2304040))))

(declare-fun b!5844425 () Bool)

(declare-fun isConcat!871 (Regex!15913) Bool)

(assert (=> b!5844425 (= e!3584583 (isConcat!871 lt!2304040))))

(declare-fun b!5844426 () Bool)

(assert (=> b!5844426 (= e!3584586 e!3584585)))

(declare-fun c!1035728 () Bool)

(assert (=> b!5844426 (= c!1035728 ((_ is Cons!63914) (exprs!5797 (h!70363 zl!343))))))

(declare-fun b!5844427 () Bool)

(assert (=> b!5844427 (= e!3584582 e!3584583)))

(declare-fun c!1035726 () Bool)

(assert (=> b!5844427 (= c!1035726 (isEmpty!35776 (tail!11466 (exprs!5797 (h!70363 zl!343)))))))

(declare-fun b!5844428 () Bool)

(assert (=> b!5844428 (= e!3584585 (Concat!24758 (h!70362 (exprs!5797 (h!70363 zl!343))) (generalisedConcat!1510 (t!377395 (exprs!5797 (h!70363 zl!343))))))))

(declare-fun b!5844429 () Bool)

(assert (=> b!5844429 (= e!3584584 (isEmpty!35776 (t!377395 (exprs!5797 (h!70363 zl!343)))))))

(assert (= (and d!1836040 res!2461690) b!5844429))

(assert (= (and d!1836040 c!1035727) b!5844420))

(assert (= (and d!1836040 (not c!1035727)) b!5844426))

(assert (= (and b!5844426 c!1035728) b!5844428))

(assert (= (and b!5844426 (not c!1035728)) b!5844423))

(assert (= (and d!1836040 res!2461691) b!5844421))

(assert (= (and b!5844421 c!1035725) b!5844424))

(assert (= (and b!5844421 (not c!1035725)) b!5844427))

(assert (= (and b!5844427 c!1035726) b!5844422))

(assert (= (and b!5844427 (not c!1035726)) b!5844425))

(declare-fun m!6767116 () Bool)

(assert (=> b!5844429 m!6767116))

(declare-fun m!6767118 () Bool)

(assert (=> b!5844424 m!6767118))

(declare-fun m!6767120 () Bool)

(assert (=> b!5844421 m!6767120))

(declare-fun m!6767122 () Bool)

(assert (=> b!5844428 m!6767122))

(declare-fun m!6767124 () Bool)

(assert (=> b!5844425 m!6767124))

(declare-fun m!6767126 () Bool)

(assert (=> b!5844427 m!6767126))

(assert (=> b!5844427 m!6767126))

(declare-fun m!6767128 () Bool)

(assert (=> b!5844427 m!6767128))

(declare-fun m!6767130 () Bool)

(assert (=> b!5844422 m!6767130))

(declare-fun m!6767132 () Bool)

(assert (=> d!1836040 m!6767132))

(declare-fun m!6767134 () Bool)

(assert (=> d!1836040 m!6767134))

(assert (=> b!5843811 d!1836040))

(declare-fun c!1035734 () Bool)

(declare-fun c!1035733 () Bool)

(declare-fun bm!456704 () Bool)

(declare-fun call!456709 () Bool)

(assert (=> bm!456704 (= call!456709 (validRegex!7649 (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))))))

(declare-fun b!5844448 () Bool)

(declare-fun e!3584605 () Bool)

(declare-fun e!3584603 () Bool)

(assert (=> b!5844448 (= e!3584605 e!3584603)))

(declare-fun res!2461704 () Bool)

(assert (=> b!5844448 (=> (not res!2461704) (not e!3584603))))

(declare-fun call!456711 () Bool)

(assert (=> b!5844448 (= res!2461704 call!456711)))

(declare-fun b!5844449 () Bool)

(declare-fun e!3584606 () Bool)

(declare-fun e!3584604 () Bool)

(assert (=> b!5844449 (= e!3584606 e!3584604)))

(assert (=> b!5844449 (= c!1035734 ((_ is Star!15913) r!7292))))

(declare-fun b!5844450 () Bool)

(declare-fun res!2461706 () Bool)

(declare-fun e!3584601 () Bool)

(assert (=> b!5844450 (=> (not res!2461706) (not e!3584601))))

(assert (=> b!5844450 (= res!2461706 call!456711)))

(declare-fun e!3584607 () Bool)

(assert (=> b!5844450 (= e!3584607 e!3584601)))

(declare-fun b!5844451 () Bool)

(assert (=> b!5844451 (= e!3584604 e!3584607)))

(assert (=> b!5844451 (= c!1035733 ((_ is Union!15913) r!7292))))

(declare-fun b!5844453 () Bool)

(declare-fun e!3584602 () Bool)

(assert (=> b!5844453 (= e!3584604 e!3584602)))

(declare-fun res!2461702 () Bool)

(assert (=> b!5844453 (= res!2461702 (not (nullable!5913 (reg!16242 r!7292))))))

(assert (=> b!5844453 (=> (not res!2461702) (not e!3584602))))

(declare-fun bm!456705 () Bool)

(declare-fun call!456710 () Bool)

(assert (=> bm!456705 (= call!456710 call!456709)))

(declare-fun b!5844454 () Bool)

(assert (=> b!5844454 (= e!3584602 call!456709)))

(declare-fun b!5844455 () Bool)

(assert (=> b!5844455 (= e!3584603 call!456710)))

(declare-fun b!5844456 () Bool)

(declare-fun res!2461703 () Bool)

(assert (=> b!5844456 (=> res!2461703 e!3584605)))

(assert (=> b!5844456 (= res!2461703 (not ((_ is Concat!24758) r!7292)))))

(assert (=> b!5844456 (= e!3584607 e!3584605)))

(declare-fun bm!456706 () Bool)

(assert (=> bm!456706 (= call!456711 (validRegex!7649 (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))))))

(declare-fun b!5844452 () Bool)

(assert (=> b!5844452 (= e!3584601 call!456710)))

(declare-fun d!1836042 () Bool)

(declare-fun res!2461705 () Bool)

(assert (=> d!1836042 (=> res!2461705 e!3584606)))

(assert (=> d!1836042 (= res!2461705 ((_ is ElementMatch!15913) r!7292))))

(assert (=> d!1836042 (= (validRegex!7649 r!7292) e!3584606)))

(assert (= (and d!1836042 (not res!2461705)) b!5844449))

(assert (= (and b!5844449 c!1035734) b!5844453))

(assert (= (and b!5844449 (not c!1035734)) b!5844451))

(assert (= (and b!5844453 res!2461702) b!5844454))

(assert (= (and b!5844451 c!1035733) b!5844450))

(assert (= (and b!5844451 (not c!1035733)) b!5844456))

(assert (= (and b!5844450 res!2461706) b!5844452))

(assert (= (and b!5844456 (not res!2461703)) b!5844448))

(assert (= (and b!5844448 res!2461704) b!5844455))

(assert (= (or b!5844452 b!5844455) bm!456705))

(assert (= (or b!5844450 b!5844448) bm!456706))

(assert (= (or b!5844454 bm!456705) bm!456704))

(declare-fun m!6767136 () Bool)

(assert (=> bm!456704 m!6767136))

(declare-fun m!6767138 () Bool)

(assert (=> b!5844453 m!6767138))

(declare-fun m!6767140 () Bool)

(assert (=> bm!456706 m!6767140))

(assert (=> start!598240 d!1836042))

(declare-fun b!5844458 () Bool)

(declare-fun c!1035735 () Bool)

(declare-fun e!3584609 () Bool)

(assert (=> b!5844458 (= c!1035735 e!3584609)))

(declare-fun res!2461707 () Bool)

(assert (=> b!5844458 (=> (not res!2461707) (not e!3584609))))

(assert (=> b!5844458 (= res!2461707 ((_ is Concat!24758) r!7292))))

(declare-fun e!3584611 () (InoxSet Context!10594))

(declare-fun e!3584610 () (InoxSet Context!10594))

(assert (=> b!5844458 (= e!3584611 e!3584610)))

(declare-fun b!5844459 () Bool)

(declare-fun e!3584608 () (InoxSet Context!10594))

(declare-fun call!456712 () (InoxSet Context!10594))

(assert (=> b!5844459 (= e!3584608 call!456712)))

(declare-fun b!5844460 () Bool)

(declare-fun e!3584612 () (InoxSet Context!10594))

(assert (=> b!5844460 (= e!3584612 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844461 () Bool)

(assert (=> b!5844461 (= e!3584610 e!3584608)))

(declare-fun c!1035736 () Bool)

(assert (=> b!5844461 (= c!1035736 ((_ is Concat!24758) r!7292))))

(declare-fun call!456714 () List!64038)

(declare-fun bm!456707 () Bool)

(assert (=> bm!456707 (= call!456714 ($colon$colon!1818 (exprs!5797 lt!2303990) (ite (or c!1035735 c!1035736) (regTwo!32338 r!7292) r!7292)))))

(declare-fun bm!456708 () Bool)

(declare-fun call!456715 () List!64038)

(assert (=> bm!456708 (= call!456715 call!456714)))

(declare-fun b!5844462 () Bool)

(declare-fun call!456717 () (InoxSet Context!10594))

(declare-fun call!456713 () (InoxSet Context!10594))

(assert (=> b!5844462 (= e!3584611 ((_ map or) call!456717 call!456713))))

(declare-fun b!5844463 () Bool)

(declare-fun e!3584613 () (InoxSet Context!10594))

(assert (=> b!5844463 (= e!3584613 (store ((as const (Array Context!10594 Bool)) false) lt!2303990 true))))

(declare-fun bm!456709 () Bool)

(declare-fun c!1035738 () Bool)

(assert (=> bm!456709 (= call!456713 (derivationStepZipperDown!1179 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292)))) (ite (or c!1035738 c!1035735) lt!2303990 (Context!10595 call!456715)) (h!70364 s!2326)))))

(declare-fun b!5844464 () Bool)

(assert (=> b!5844464 (= e!3584613 e!3584611)))

(assert (=> b!5844464 (= c!1035738 ((_ is Union!15913) r!7292))))

(declare-fun d!1836044 () Bool)

(declare-fun c!1035737 () Bool)

(assert (=> d!1836044 (= c!1035737 (and ((_ is ElementMatch!15913) r!7292) (= (c!1035547 r!7292) (h!70364 s!2326))))))

(assert (=> d!1836044 (= (derivationStepZipperDown!1179 r!7292 lt!2303990 (h!70364 s!2326)) e!3584613)))

(declare-fun b!5844457 () Bool)

(declare-fun call!456716 () (InoxSet Context!10594))

(assert (=> b!5844457 (= e!3584610 ((_ map or) call!456717 call!456716))))

(declare-fun b!5844465 () Bool)

(declare-fun c!1035739 () Bool)

(assert (=> b!5844465 (= c!1035739 ((_ is Star!15913) r!7292))))

(assert (=> b!5844465 (= e!3584608 e!3584612)))

(declare-fun b!5844466 () Bool)

(assert (=> b!5844466 (= e!3584612 call!456712)))

(declare-fun b!5844467 () Bool)

(assert (=> b!5844467 (= e!3584609 (nullable!5913 (regOne!32338 r!7292)))))

(declare-fun bm!456710 () Bool)

(assert (=> bm!456710 (= call!456716 call!456713)))

(declare-fun bm!456711 () Bool)

(assert (=> bm!456711 (= call!456712 call!456716)))

(declare-fun bm!456712 () Bool)

(assert (=> bm!456712 (= call!456717 (derivationStepZipperDown!1179 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292)) (ite c!1035738 lt!2303990 (Context!10595 call!456714)) (h!70364 s!2326)))))

(assert (= (and d!1836044 c!1035737) b!5844463))

(assert (= (and d!1836044 (not c!1035737)) b!5844464))

(assert (= (and b!5844464 c!1035738) b!5844462))

(assert (= (and b!5844464 (not c!1035738)) b!5844458))

(assert (= (and b!5844458 res!2461707) b!5844467))

(assert (= (and b!5844458 c!1035735) b!5844457))

(assert (= (and b!5844458 (not c!1035735)) b!5844461))

(assert (= (and b!5844461 c!1035736) b!5844459))

(assert (= (and b!5844461 (not c!1035736)) b!5844465))

(assert (= (and b!5844465 c!1035739) b!5844466))

(assert (= (and b!5844465 (not c!1035739)) b!5844460))

(assert (= (or b!5844459 b!5844466) bm!456708))

(assert (= (or b!5844459 b!5844466) bm!456711))

(assert (= (or b!5844457 bm!456708) bm!456707))

(assert (= (or b!5844457 bm!456711) bm!456710))

(assert (= (or b!5844462 bm!456710) bm!456709))

(assert (= (or b!5844462 b!5844457) bm!456712))

(declare-fun m!6767142 () Bool)

(assert (=> bm!456709 m!6767142))

(declare-fun m!6767144 () Bool)

(assert (=> bm!456712 m!6767144))

(declare-fun m!6767146 () Bool)

(assert (=> b!5844467 m!6767146))

(assert (=> b!5844463 m!6767046))

(declare-fun m!6767148 () Bool)

(assert (=> bm!456707 m!6767148))

(assert (=> b!5843813 d!1836044))

(declare-fun b!5844478 () Bool)

(declare-fun e!3584621 () (InoxSet Context!10594))

(declare-fun e!3584620 () (InoxSet Context!10594))

(assert (=> b!5844478 (= e!3584621 e!3584620)))

(declare-fun c!1035745 () Bool)

(assert (=> b!5844478 (= c!1035745 ((_ is Cons!63914) (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))))

(declare-fun bm!456715 () Bool)

(declare-fun call!456720 () (InoxSet Context!10594))

(assert (=> bm!456715 (= call!456720 (derivationStepZipperDown!1179 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))) (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (h!70364 s!2326)))))

(declare-fun b!5844479 () Bool)

(assert (=> b!5844479 (= e!3584620 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844480 () Bool)

(declare-fun e!3584622 () Bool)

(assert (=> b!5844480 (= e!3584622 (nullable!5913 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))))

(declare-fun d!1836046 () Bool)

(declare-fun c!1035744 () Bool)

(assert (=> d!1836046 (= c!1035744 e!3584622)))

(declare-fun res!2461710 () Bool)

(assert (=> d!1836046 (=> (not res!2461710) (not e!3584622))))

(assert (=> d!1836046 (= res!2461710 ((_ is Cons!63914) (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))))

(assert (=> d!1836046 (= (derivationStepZipperUp!1105 (Context!10595 (Cons!63914 r!7292 Nil!63914)) (h!70364 s!2326)) e!3584621)))

(declare-fun b!5844481 () Bool)

(assert (=> b!5844481 (= e!3584621 ((_ map or) call!456720 (derivationStepZipperUp!1105 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (h!70364 s!2326))))))

(declare-fun b!5844482 () Bool)

(assert (=> b!5844482 (= e!3584620 call!456720)))

(assert (= (and d!1836046 res!2461710) b!5844480))

(assert (= (and d!1836046 c!1035744) b!5844481))

(assert (= (and d!1836046 (not c!1035744)) b!5844478))

(assert (= (and b!5844478 c!1035745) b!5844482))

(assert (= (and b!5844478 (not c!1035745)) b!5844479))

(assert (= (or b!5844481 b!5844482) bm!456715))

(declare-fun m!6767150 () Bool)

(assert (=> bm!456715 m!6767150))

(declare-fun m!6767152 () Bool)

(assert (=> b!5844480 m!6767152))

(declare-fun m!6767154 () Bool)

(assert (=> b!5844481 m!6767154))

(assert (=> b!5843813 d!1836046))

(declare-fun b!5844487 () Bool)

(declare-fun e!3584625 () Bool)

(declare-fun tp!1616103 () Bool)

(declare-fun tp!1616104 () Bool)

(assert (=> b!5844487 (= e!3584625 (and tp!1616103 tp!1616104))))

(assert (=> b!5843809 (= tp!1616038 e!3584625)))

(assert (= (and b!5843809 ((_ is Cons!63914) (exprs!5797 setElem!39600))) b!5844487))

(declare-fun e!3584628 () Bool)

(assert (=> b!5843816 (= tp!1616037 e!3584628)))

(declare-fun b!5844499 () Bool)

(declare-fun tp!1616116 () Bool)

(declare-fun tp!1616119 () Bool)

(assert (=> b!5844499 (= e!3584628 (and tp!1616116 tp!1616119))))

(declare-fun b!5844500 () Bool)

(declare-fun tp!1616118 () Bool)

(assert (=> b!5844500 (= e!3584628 tp!1616118)))

(declare-fun b!5844498 () Bool)

(assert (=> b!5844498 (= e!3584628 tp_is_empty!41079)))

(declare-fun b!5844501 () Bool)

(declare-fun tp!1616115 () Bool)

(declare-fun tp!1616117 () Bool)

(assert (=> b!5844501 (= e!3584628 (and tp!1616115 tp!1616117))))

(assert (= (and b!5843816 ((_ is ElementMatch!15913) (regOne!32338 r!7292))) b!5844498))

(assert (= (and b!5843816 ((_ is Concat!24758) (regOne!32338 r!7292))) b!5844499))

(assert (= (and b!5843816 ((_ is Star!15913) (regOne!32338 r!7292))) b!5844500))

(assert (= (and b!5843816 ((_ is Union!15913) (regOne!32338 r!7292))) b!5844501))

(declare-fun e!3584629 () Bool)

(assert (=> b!5843816 (= tp!1616036 e!3584629)))

(declare-fun b!5844503 () Bool)

(declare-fun tp!1616121 () Bool)

(declare-fun tp!1616124 () Bool)

(assert (=> b!5844503 (= e!3584629 (and tp!1616121 tp!1616124))))

(declare-fun b!5844504 () Bool)

(declare-fun tp!1616123 () Bool)

(assert (=> b!5844504 (= e!3584629 tp!1616123)))

(declare-fun b!5844502 () Bool)

(assert (=> b!5844502 (= e!3584629 tp_is_empty!41079)))

(declare-fun b!5844505 () Bool)

(declare-fun tp!1616120 () Bool)

(declare-fun tp!1616122 () Bool)

(assert (=> b!5844505 (= e!3584629 (and tp!1616120 tp!1616122))))

(assert (= (and b!5843816 ((_ is ElementMatch!15913) (regTwo!32338 r!7292))) b!5844502))

(assert (= (and b!5843816 ((_ is Concat!24758) (regTwo!32338 r!7292))) b!5844503))

(assert (= (and b!5843816 ((_ is Star!15913) (regTwo!32338 r!7292))) b!5844504))

(assert (= (and b!5843816 ((_ is Union!15913) (regTwo!32338 r!7292))) b!5844505))

(declare-fun b!5844510 () Bool)

(declare-fun e!3584632 () Bool)

(declare-fun tp!1616127 () Bool)

(assert (=> b!5844510 (= e!3584632 (and tp_is_empty!41079 tp!1616127))))

(assert (=> b!5843815 (= tp!1616040 e!3584632)))

(assert (= (and b!5843815 ((_ is Cons!63916) (t!377397 s!2326))) b!5844510))

(declare-fun e!3584633 () Bool)

(assert (=> b!5843802 (= tp!1616035 e!3584633)))

(declare-fun b!5844512 () Bool)

(declare-fun tp!1616129 () Bool)

(declare-fun tp!1616132 () Bool)

(assert (=> b!5844512 (= e!3584633 (and tp!1616129 tp!1616132))))

(declare-fun b!5844513 () Bool)

(declare-fun tp!1616131 () Bool)

(assert (=> b!5844513 (= e!3584633 tp!1616131)))

(declare-fun b!5844511 () Bool)

(assert (=> b!5844511 (= e!3584633 tp_is_empty!41079)))

(declare-fun b!5844514 () Bool)

(declare-fun tp!1616128 () Bool)

(declare-fun tp!1616130 () Bool)

(assert (=> b!5844514 (= e!3584633 (and tp!1616128 tp!1616130))))

(assert (= (and b!5843802 ((_ is ElementMatch!15913) (regOne!32339 r!7292))) b!5844511))

(assert (= (and b!5843802 ((_ is Concat!24758) (regOne!32339 r!7292))) b!5844512))

(assert (= (and b!5843802 ((_ is Star!15913) (regOne!32339 r!7292))) b!5844513))

(assert (= (and b!5843802 ((_ is Union!15913) (regOne!32339 r!7292))) b!5844514))

(declare-fun e!3584634 () Bool)

(assert (=> b!5843802 (= tp!1616034 e!3584634)))

(declare-fun b!5844516 () Bool)

(declare-fun tp!1616134 () Bool)

(declare-fun tp!1616137 () Bool)

(assert (=> b!5844516 (= e!3584634 (and tp!1616134 tp!1616137))))

(declare-fun b!5844517 () Bool)

(declare-fun tp!1616136 () Bool)

(assert (=> b!5844517 (= e!3584634 tp!1616136)))

(declare-fun b!5844515 () Bool)

(assert (=> b!5844515 (= e!3584634 tp_is_empty!41079)))

(declare-fun b!5844518 () Bool)

(declare-fun tp!1616133 () Bool)

(declare-fun tp!1616135 () Bool)

(assert (=> b!5844518 (= e!3584634 (and tp!1616133 tp!1616135))))

(assert (= (and b!5843802 ((_ is ElementMatch!15913) (regTwo!32339 r!7292))) b!5844515))

(assert (= (and b!5843802 ((_ is Concat!24758) (regTwo!32339 r!7292))) b!5844516))

(assert (= (and b!5843802 ((_ is Star!15913) (regTwo!32339 r!7292))) b!5844517))

(assert (= (and b!5843802 ((_ is Union!15913) (regTwo!32339 r!7292))) b!5844518))

(declare-fun b!5844526 () Bool)

(declare-fun e!3584640 () Bool)

(declare-fun tp!1616142 () Bool)

(assert (=> b!5844526 (= e!3584640 tp!1616142)))

(declare-fun tp!1616143 () Bool)

(declare-fun b!5844525 () Bool)

(declare-fun e!3584639 () Bool)

(assert (=> b!5844525 (= e!3584639 (and (inv!83029 (h!70363 (t!377396 zl!343))) e!3584640 tp!1616143))))

(assert (=> b!5843807 (= tp!1616032 e!3584639)))

(assert (= b!5844525 b!5844526))

(assert (= (and b!5843807 ((_ is Cons!63915) (t!377396 zl!343))) b!5844525))

(declare-fun m!6767156 () Bool)

(assert (=> b!5844525 m!6767156))

(declare-fun condSetEmpty!39606 () Bool)

(assert (=> setNonEmpty!39600 (= condSetEmpty!39606 (= setRest!39600 ((as const (Array Context!10594 Bool)) false)))))

(declare-fun setRes!39606 () Bool)

(assert (=> setNonEmpty!39600 (= tp!1616031 setRes!39606)))

(declare-fun setIsEmpty!39606 () Bool)

(assert (=> setIsEmpty!39606 setRes!39606))

(declare-fun setNonEmpty!39606 () Bool)

(declare-fun e!3584643 () Bool)

(declare-fun tp!1616148 () Bool)

(declare-fun setElem!39606 () Context!10594)

(assert (=> setNonEmpty!39606 (= setRes!39606 (and tp!1616148 (inv!83029 setElem!39606) e!3584643))))

(declare-fun setRest!39606 () (InoxSet Context!10594))

(assert (=> setNonEmpty!39606 (= setRest!39600 ((_ map or) (store ((as const (Array Context!10594 Bool)) false) setElem!39606 true) setRest!39606))))

(declare-fun b!5844531 () Bool)

(declare-fun tp!1616149 () Bool)

(assert (=> b!5844531 (= e!3584643 tp!1616149)))

(assert (= (and setNonEmpty!39600 condSetEmpty!39606) setIsEmpty!39606))

(assert (= (and setNonEmpty!39600 (not condSetEmpty!39606)) setNonEmpty!39606))

(assert (= setNonEmpty!39606 b!5844531))

(declare-fun m!6767158 () Bool)

(assert (=> setNonEmpty!39606 m!6767158))

(declare-fun b!5844532 () Bool)

(declare-fun e!3584644 () Bool)

(declare-fun tp!1616150 () Bool)

(declare-fun tp!1616151 () Bool)

(assert (=> b!5844532 (= e!3584644 (and tp!1616150 tp!1616151))))

(assert (=> b!5843803 (= tp!1616033 e!3584644)))

(assert (= (and b!5843803 ((_ is Cons!63914) (exprs!5797 (h!70363 zl!343)))) b!5844532))

(declare-fun e!3584645 () Bool)

(assert (=> b!5843808 (= tp!1616039 e!3584645)))

(declare-fun b!5844534 () Bool)

(declare-fun tp!1616153 () Bool)

(declare-fun tp!1616156 () Bool)

(assert (=> b!5844534 (= e!3584645 (and tp!1616153 tp!1616156))))

(declare-fun b!5844535 () Bool)

(declare-fun tp!1616155 () Bool)

(assert (=> b!5844535 (= e!3584645 tp!1616155)))

(declare-fun b!5844533 () Bool)

(assert (=> b!5844533 (= e!3584645 tp_is_empty!41079)))

(declare-fun b!5844536 () Bool)

(declare-fun tp!1616152 () Bool)

(declare-fun tp!1616154 () Bool)

(assert (=> b!5844536 (= e!3584645 (and tp!1616152 tp!1616154))))

(assert (= (and b!5843808 ((_ is ElementMatch!15913) (reg!16242 r!7292))) b!5844533))

(assert (= (and b!5843808 ((_ is Concat!24758) (reg!16242 r!7292))) b!5844534))

(assert (= (and b!5843808 ((_ is Star!15913) (reg!16242 r!7292))) b!5844535))

(assert (= (and b!5843808 ((_ is Union!15913) (reg!16242 r!7292))) b!5844536))

(check-sat (not b!5844425) (not b!5844322) (not bm!456709) (not b!5844353) (not b!5844532) (not d!1836034) (not d!1835956) (not b!5844504) (not b!5844429) (not b!5844256) (not b!5844467) (not setNonEmpty!39606) (not bm!456707) (not d!1836038) (not bm!456695) (not bm!456686) (not b!5844392) (not b!5844531) (not b!5844361) (not b!5844487) (not b!5844536) (not b!5844505) (not bm!456682) (not d!1836032) (not b!5844516) (not bm!456660) (not d!1836024) (not b!5844518) (not b!5844514) (not b!5844534) (not b!5844387) (not b!5844526) (not d!1836016) (not b!5844363) (not d!1836010) (not bm!456692) (not b!5844500) (not b!5844503) (not b!5844328) (not bm!456661) (not b!5844535) (not b!5844453) (not b!5844340) (not b!5844257) (not b!5844266) (not bm!456693) (not b!5844315) (not b!5844354) (not d!1836040) (not b!5844336) (not bm!456715) (not bm!456680) (not b!5844499) (not b!5844313) (not b!5844360) (not b!5844393) (not b!5844254) (not b!5844386) (not b!5844512) (not bm!456706) (not d!1836026) (not b!5844428) (not bm!456694) (not b!5844326) (not b!5844148) (not b!5844480) (not b!5844422) (not bm!456712) (not b!5844398) tp_is_empty!41079 (not bm!456685) (not b!5844329) (not b!5844263) (not b!5844513) (not d!1836012) (not bm!456697) (not d!1836008) (not b!5844427) (not d!1836028) (not b!5844335) (not b!5844501) (not b!5844421) (not b!5844510) (not b!5844481) (not b!5844391) (not d!1836014) (not b!5844390) (not b!5844155) (not b!5844424) (not b!5844338) (not b!5844351) (not bm!456691) (not bm!456704) (not b!5844302) (not bm!456667) (not b!5844347) (not bm!456688) (not bm!456696) (not b!5844389) (not b!5844525) (not d!1836036) (not b!5844269) (not b!5844264) (not b!5844517))
(check-sat)
(get-model)

(declare-fun d!1836048 () Bool)

(assert (=> d!1836048 (= (isEmptyLang!1356 lt!2304034) ((_ is EmptyLang!15913) lt!2304034))))

(assert (=> b!5844387 d!1836048))

(declare-fun d!1836050 () Bool)

(declare-fun res!2461715 () Bool)

(declare-fun e!3584650 () Bool)

(assert (=> d!1836050 (=> res!2461715 e!3584650)))

(assert (=> d!1836050 (= res!2461715 ((_ is Nil!63915) lt!2304027))))

(assert (=> d!1836050 (= (noDuplicate!1778 lt!2304027) e!3584650)))

(declare-fun b!5844541 () Bool)

(declare-fun e!3584651 () Bool)

(assert (=> b!5844541 (= e!3584650 e!3584651)))

(declare-fun res!2461716 () Bool)

(assert (=> b!5844541 (=> (not res!2461716) (not e!3584651))))

(declare-fun contains!19918 (List!64039 Context!10594) Bool)

(assert (=> b!5844541 (= res!2461716 (not (contains!19918 (t!377396 lt!2304027) (h!70363 lt!2304027))))))

(declare-fun b!5844542 () Bool)

(assert (=> b!5844542 (= e!3584651 (noDuplicate!1778 (t!377396 lt!2304027)))))

(assert (= (and d!1836050 (not res!2461715)) b!5844541))

(assert (= (and b!5844541 res!2461716) b!5844542))

(declare-fun m!6767160 () Bool)

(assert (=> b!5844541 m!6767160))

(declare-fun m!6767162 () Bool)

(assert (=> b!5844542 m!6767162))

(assert (=> d!1836016 d!1836050))

(declare-fun d!1836052 () Bool)

(declare-fun e!3584660 () Bool)

(assert (=> d!1836052 e!3584660))

(declare-fun res!2461721 () Bool)

(assert (=> d!1836052 (=> (not res!2461721) (not e!3584660))))

(declare-fun res!2461722 () List!64039)

(assert (=> d!1836052 (= res!2461721 (noDuplicate!1778 res!2461722))))

(declare-fun e!3584658 () Bool)

(assert (=> d!1836052 e!3584658))

(assert (=> d!1836052 (= (choose!44355 z!1189) res!2461722)))

(declare-fun b!5844550 () Bool)

(declare-fun e!3584659 () Bool)

(declare-fun tp!1616162 () Bool)

(assert (=> b!5844550 (= e!3584659 tp!1616162)))

(declare-fun tp!1616161 () Bool)

(declare-fun b!5844549 () Bool)

(assert (=> b!5844549 (= e!3584658 (and (inv!83029 (h!70363 res!2461722)) e!3584659 tp!1616161))))

(declare-fun b!5844551 () Bool)

(assert (=> b!5844551 (= e!3584660 (= (content!11743 res!2461722) z!1189))))

(assert (= b!5844549 b!5844550))

(assert (= (and d!1836052 ((_ is Cons!63915) res!2461722)) b!5844549))

(assert (= (and d!1836052 res!2461721) b!5844551))

(declare-fun m!6767164 () Bool)

(assert (=> d!1836052 m!6767164))

(declare-fun m!6767166 () Bool)

(assert (=> b!5844549 m!6767166))

(declare-fun m!6767168 () Bool)

(assert (=> b!5844551 m!6767168))

(assert (=> d!1836016 d!1836052))

(declare-fun c!1035746 () Bool)

(declare-fun c!1035747 () Bool)

(declare-fun bm!456716 () Bool)

(declare-fun call!456721 () Bool)

(assert (=> bm!456716 (= call!456721 (validRegex!7649 (ite c!1035747 (reg!16242 lt!2304040) (ite c!1035746 (regTwo!32339 lt!2304040) (regTwo!32338 lt!2304040)))))))

(declare-fun b!5844552 () Bool)

(declare-fun e!3584665 () Bool)

(declare-fun e!3584663 () Bool)

(assert (=> b!5844552 (= e!3584665 e!3584663)))

(declare-fun res!2461725 () Bool)

(assert (=> b!5844552 (=> (not res!2461725) (not e!3584663))))

(declare-fun call!456723 () Bool)

(assert (=> b!5844552 (= res!2461725 call!456723)))

(declare-fun b!5844553 () Bool)

(declare-fun e!3584666 () Bool)

(declare-fun e!3584664 () Bool)

(assert (=> b!5844553 (= e!3584666 e!3584664)))

(assert (=> b!5844553 (= c!1035747 ((_ is Star!15913) lt!2304040))))

(declare-fun b!5844554 () Bool)

(declare-fun res!2461727 () Bool)

(declare-fun e!3584661 () Bool)

(assert (=> b!5844554 (=> (not res!2461727) (not e!3584661))))

(assert (=> b!5844554 (= res!2461727 call!456723)))

(declare-fun e!3584667 () Bool)

(assert (=> b!5844554 (= e!3584667 e!3584661)))

(declare-fun b!5844555 () Bool)

(assert (=> b!5844555 (= e!3584664 e!3584667)))

(assert (=> b!5844555 (= c!1035746 ((_ is Union!15913) lt!2304040))))

(declare-fun b!5844557 () Bool)

(declare-fun e!3584662 () Bool)

(assert (=> b!5844557 (= e!3584664 e!3584662)))

(declare-fun res!2461723 () Bool)

(assert (=> b!5844557 (= res!2461723 (not (nullable!5913 (reg!16242 lt!2304040))))))

(assert (=> b!5844557 (=> (not res!2461723) (not e!3584662))))

(declare-fun bm!456717 () Bool)

(declare-fun call!456722 () Bool)

(assert (=> bm!456717 (= call!456722 call!456721)))

(declare-fun b!5844558 () Bool)

(assert (=> b!5844558 (= e!3584662 call!456721)))

(declare-fun b!5844559 () Bool)

(assert (=> b!5844559 (= e!3584663 call!456722)))

(declare-fun b!5844560 () Bool)

(declare-fun res!2461724 () Bool)

(assert (=> b!5844560 (=> res!2461724 e!3584665)))

(assert (=> b!5844560 (= res!2461724 (not ((_ is Concat!24758) lt!2304040)))))

(assert (=> b!5844560 (= e!3584667 e!3584665)))

(declare-fun bm!456718 () Bool)

(assert (=> bm!456718 (= call!456723 (validRegex!7649 (ite c!1035746 (regOne!32339 lt!2304040) (regOne!32338 lt!2304040))))))

(declare-fun b!5844556 () Bool)

(assert (=> b!5844556 (= e!3584661 call!456722)))

(declare-fun d!1836054 () Bool)

(declare-fun res!2461726 () Bool)

(assert (=> d!1836054 (=> res!2461726 e!3584666)))

(assert (=> d!1836054 (= res!2461726 ((_ is ElementMatch!15913) lt!2304040))))

(assert (=> d!1836054 (= (validRegex!7649 lt!2304040) e!3584666)))

(assert (= (and d!1836054 (not res!2461726)) b!5844553))

(assert (= (and b!5844553 c!1035747) b!5844557))

(assert (= (and b!5844553 (not c!1035747)) b!5844555))

(assert (= (and b!5844557 res!2461723) b!5844558))

(assert (= (and b!5844555 c!1035746) b!5844554))

(assert (= (and b!5844555 (not c!1035746)) b!5844560))

(assert (= (and b!5844554 res!2461727) b!5844556))

(assert (= (and b!5844560 (not res!2461724)) b!5844552))

(assert (= (and b!5844552 res!2461725) b!5844559))

(assert (= (or b!5844556 b!5844559) bm!456717))

(assert (= (or b!5844554 b!5844552) bm!456718))

(assert (= (or b!5844558 bm!456717) bm!456716))

(declare-fun m!6767170 () Bool)

(assert (=> bm!456716 m!6767170))

(declare-fun m!6767172 () Bool)

(assert (=> b!5844557 m!6767172))

(declare-fun m!6767174 () Bool)

(assert (=> bm!456718 m!6767174))

(assert (=> d!1836040 d!1836054))

(declare-fun d!1836056 () Bool)

(declare-fun res!2461732 () Bool)

(declare-fun e!3584672 () Bool)

(assert (=> d!1836056 (=> res!2461732 e!3584672)))

(assert (=> d!1836056 (= res!2461732 ((_ is Nil!63914) (exprs!5797 (h!70363 zl!343))))))

(assert (=> d!1836056 (= (forall!15000 (exprs!5797 (h!70363 zl!343)) lambda!319702) e!3584672)))

(declare-fun b!5844565 () Bool)

(declare-fun e!3584673 () Bool)

(assert (=> b!5844565 (= e!3584672 e!3584673)))

(declare-fun res!2461733 () Bool)

(assert (=> b!5844565 (=> (not res!2461733) (not e!3584673))))

(declare-fun dynLambda!24983 (Int Regex!15913) Bool)

(assert (=> b!5844565 (= res!2461733 (dynLambda!24983 lambda!319702 (h!70362 (exprs!5797 (h!70363 zl!343)))))))

(declare-fun b!5844566 () Bool)

(assert (=> b!5844566 (= e!3584673 (forall!15000 (t!377395 (exprs!5797 (h!70363 zl!343))) lambda!319702))))

(assert (= (and d!1836056 (not res!2461732)) b!5844565))

(assert (= (and b!5844565 res!2461733) b!5844566))

(declare-fun b_lambda!220053 () Bool)

(assert (=> (not b_lambda!220053) (not b!5844565)))

(declare-fun m!6767176 () Bool)

(assert (=> b!5844565 m!6767176))

(declare-fun m!6767178 () Bool)

(assert (=> b!5844566 m!6767178))

(assert (=> d!1836040 d!1836056))

(declare-fun d!1836058 () Bool)

(declare-fun nullableFct!1899 (Regex!15913) Bool)

(assert (=> d!1836058 (= (nullable!5913 (regOne!32338 r!7292)) (nullableFct!1899 (regOne!32338 r!7292)))))

(declare-fun bs!1376912 () Bool)

(assert (= bs!1376912 d!1836058))

(declare-fun m!6767180 () Bool)

(assert (=> bs!1376912 m!6767180))

(assert (=> b!5844467 d!1836058))

(declare-fun d!1836060 () Bool)

(assert (=> d!1836060 (= (isUnion!786 lt!2304034) ((_ is Union!15913) lt!2304034))))

(assert (=> b!5844389 d!1836060))

(declare-fun d!1836062 () Bool)

(assert (=> d!1836062 (= (isEmpty!35774 (tail!11464 s!2326)) ((_ is Nil!63916) (tail!11464 s!2326)))))

(assert (=> b!5844254 d!1836062))

(declare-fun d!1836064 () Bool)

(assert (=> d!1836064 (= (tail!11464 s!2326) (t!377397 s!2326))))

(assert (=> b!5844254 d!1836064))

(declare-fun b!5844568 () Bool)

(declare-fun c!1035748 () Bool)

(declare-fun e!3584675 () Bool)

(assert (=> b!5844568 (= c!1035748 e!3584675)))

(declare-fun res!2461734 () Bool)

(assert (=> b!5844568 (=> (not res!2461734) (not e!3584675))))

(assert (=> b!5844568 (= res!2461734 ((_ is Concat!24758) (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))))))

(declare-fun e!3584677 () (InoxSet Context!10594))

(declare-fun e!3584676 () (InoxSet Context!10594))

(assert (=> b!5844568 (= e!3584677 e!3584676)))

(declare-fun b!5844569 () Bool)

(declare-fun e!3584674 () (InoxSet Context!10594))

(declare-fun call!456724 () (InoxSet Context!10594))

(assert (=> b!5844569 (= e!3584674 call!456724)))

(declare-fun b!5844570 () Bool)

(declare-fun e!3584678 () (InoxSet Context!10594))

(assert (=> b!5844570 (= e!3584678 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844571 () Bool)

(assert (=> b!5844571 (= e!3584676 e!3584674)))

(declare-fun c!1035749 () Bool)

(assert (=> b!5844571 (= c!1035749 ((_ is Concat!24758) (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))))))

(declare-fun call!456726 () List!64038)

(declare-fun bm!456719 () Bool)

(assert (=> bm!456719 (= call!456726 ($colon$colon!1818 (exprs!5797 (ite (or c!1035681 c!1035678) lt!2303990 (Context!10595 call!456688))) (ite (or c!1035748 c!1035749) (regTwo!32338 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))) (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292))))))))))

(declare-fun bm!456720 () Bool)

(declare-fun call!456727 () List!64038)

(assert (=> bm!456720 (= call!456727 call!456726)))

(declare-fun b!5844572 () Bool)

(declare-fun call!456729 () (InoxSet Context!10594))

(declare-fun call!456725 () (InoxSet Context!10594))

(assert (=> b!5844572 (= e!3584677 ((_ map or) call!456729 call!456725))))

(declare-fun e!3584679 () (InoxSet Context!10594))

(declare-fun b!5844573 () Bool)

(assert (=> b!5844573 (= e!3584679 (store ((as const (Array Context!10594 Bool)) false) (ite (or c!1035681 c!1035678) lt!2303990 (Context!10595 call!456688)) true))))

(declare-fun bm!456721 () Bool)

(declare-fun c!1035751 () Bool)

(assert (=> bm!456721 (= call!456725 (derivationStepZipperDown!1179 (ite c!1035751 (regTwo!32339 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))) (ite c!1035748 (regTwo!32338 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))) (ite c!1035749 (regOne!32338 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))) (reg!16242 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292))))))))) (ite (or c!1035751 c!1035748) (ite (or c!1035681 c!1035678) lt!2303990 (Context!10595 call!456688)) (Context!10595 call!456727)) (h!70364 s!2326)))))

(declare-fun b!5844574 () Bool)

(assert (=> b!5844574 (= e!3584679 e!3584677)))

(assert (=> b!5844574 (= c!1035751 ((_ is Union!15913) (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))))))

(declare-fun d!1836066 () Bool)

(declare-fun c!1035750 () Bool)

(assert (=> d!1836066 (= c!1035750 (and ((_ is ElementMatch!15913) (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))) (= (c!1035547 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))) (h!70364 s!2326))))))

(assert (=> d!1836066 (= (derivationStepZipperDown!1179 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292))))) (ite (or c!1035681 c!1035678) lt!2303990 (Context!10595 call!456688)) (h!70364 s!2326)) e!3584679)))

(declare-fun b!5844567 () Bool)

(declare-fun call!456728 () (InoxSet Context!10594))

(assert (=> b!5844567 (= e!3584676 ((_ map or) call!456729 call!456728))))

(declare-fun b!5844575 () Bool)

(declare-fun c!1035752 () Bool)

(assert (=> b!5844575 (= c!1035752 ((_ is Star!15913) (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))))))

(assert (=> b!5844575 (= e!3584674 e!3584678)))

(declare-fun b!5844576 () Bool)

(assert (=> b!5844576 (= e!3584678 call!456724)))

(declare-fun b!5844577 () Bool)

(assert (=> b!5844577 (= e!3584675 (nullable!5913 (regOne!32338 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292))))))))))

(declare-fun bm!456722 () Bool)

(assert (=> bm!456722 (= call!456728 call!456725)))

(declare-fun bm!456723 () Bool)

(assert (=> bm!456723 (= call!456724 call!456728)))

(declare-fun bm!456724 () Bool)

(assert (=> bm!456724 (= call!456729 (derivationStepZipperDown!1179 (ite c!1035751 (regOne!32339 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292)))))) (regOne!32338 (ite c!1035681 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035678 (regTwo!32338 (regOne!32339 r!7292)) (ite c!1035679 (regOne!32338 (regOne!32339 r!7292)) (reg!16242 (regOne!32339 r!7292))))))) (ite c!1035751 (ite (or c!1035681 c!1035678) lt!2303990 (Context!10595 call!456688)) (Context!10595 call!456726)) (h!70364 s!2326)))))

(assert (= (and d!1836066 c!1035750) b!5844573))

(assert (= (and d!1836066 (not c!1035750)) b!5844574))

(assert (= (and b!5844574 c!1035751) b!5844572))

(assert (= (and b!5844574 (not c!1035751)) b!5844568))

(assert (= (and b!5844568 res!2461734) b!5844577))

(assert (= (and b!5844568 c!1035748) b!5844567))

(assert (= (and b!5844568 (not c!1035748)) b!5844571))

(assert (= (and b!5844571 c!1035749) b!5844569))

(assert (= (and b!5844571 (not c!1035749)) b!5844575))

(assert (= (and b!5844575 c!1035752) b!5844576))

(assert (= (and b!5844575 (not c!1035752)) b!5844570))

(assert (= (or b!5844569 b!5844576) bm!456720))

(assert (= (or b!5844569 b!5844576) bm!456723))

(assert (= (or b!5844567 bm!456720) bm!456719))

(assert (= (or b!5844567 bm!456723) bm!456722))

(assert (= (or b!5844572 bm!456722) bm!456721))

(assert (= (or b!5844572 b!5844567) bm!456724))

(declare-fun m!6767182 () Bool)

(assert (=> bm!456721 m!6767182))

(declare-fun m!6767184 () Bool)

(assert (=> bm!456724 m!6767184))

(declare-fun m!6767186 () Bool)

(assert (=> b!5844577 m!6767186))

(declare-fun m!6767188 () Bool)

(assert (=> b!5844573 m!6767188))

(declare-fun m!6767190 () Bool)

(assert (=> bm!456719 m!6767190))

(assert (=> bm!456682 d!1836066))

(declare-fun b!5844578 () Bool)

(declare-fun e!3584683 () Bool)

(declare-fun lt!2304041 () Bool)

(declare-fun call!456730 () Bool)

(assert (=> b!5844578 (= e!3584683 (= lt!2304041 call!456730))))

(declare-fun b!5844579 () Bool)

(declare-fun res!2461741 () Bool)

(declare-fun e!3584684 () Bool)

(assert (=> b!5844579 (=> (not res!2461741) (not e!3584684))))

(assert (=> b!5844579 (= res!2461741 (isEmpty!35774 (tail!11464 (tail!11464 s!2326))))))

(declare-fun b!5844580 () Bool)

(declare-fun e!3584682 () Bool)

(declare-fun e!3584681 () Bool)

(assert (=> b!5844580 (= e!3584682 e!3584681)))

(declare-fun res!2461736 () Bool)

(assert (=> b!5844580 (=> res!2461736 e!3584681)))

(assert (=> b!5844580 (= res!2461736 call!456730)))

(declare-fun d!1836068 () Bool)

(assert (=> d!1836068 e!3584683))

(declare-fun c!1035755 () Bool)

(assert (=> d!1836068 (= c!1035755 ((_ is EmptyExpr!15913) (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326))))))

(declare-fun e!3584685 () Bool)

(assert (=> d!1836068 (= lt!2304041 e!3584685)))

(declare-fun c!1035754 () Bool)

(assert (=> d!1836068 (= c!1035754 (isEmpty!35774 (tail!11464 s!2326)))))

(assert (=> d!1836068 (validRegex!7649 (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326)))))

(assert (=> d!1836068 (= (matchR!8096 (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326)) (tail!11464 s!2326)) lt!2304041)))

(declare-fun b!5844581 () Bool)

(assert (=> b!5844581 (= e!3584685 (nullable!5913 (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326))))))

(declare-fun b!5844582 () Bool)

(assert (=> b!5844582 (= e!3584681 (not (= (head!12380 (tail!11464 s!2326)) (c!1035547 (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326))))))))

(declare-fun b!5844583 () Bool)

(declare-fun res!2461739 () Bool)

(assert (=> b!5844583 (=> (not res!2461739) (not e!3584684))))

(assert (=> b!5844583 (= res!2461739 (not call!456730))))

(declare-fun b!5844584 () Bool)

(declare-fun e!3584686 () Bool)

(assert (=> b!5844584 (= e!3584683 e!3584686)))

(declare-fun c!1035753 () Bool)

(assert (=> b!5844584 (= c!1035753 ((_ is EmptyLang!15913) (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326))))))

(declare-fun b!5844585 () Bool)

(declare-fun e!3584680 () Bool)

(assert (=> b!5844585 (= e!3584680 e!3584682)))

(declare-fun res!2461737 () Bool)

(assert (=> b!5844585 (=> (not res!2461737) (not e!3584682))))

(assert (=> b!5844585 (= res!2461737 (not lt!2304041))))

(declare-fun b!5844586 () Bool)

(declare-fun res!2461738 () Bool)

(assert (=> b!5844586 (=> res!2461738 e!3584680)))

(assert (=> b!5844586 (= res!2461738 e!3584684)))

(declare-fun res!2461735 () Bool)

(assert (=> b!5844586 (=> (not res!2461735) (not e!3584684))))

(assert (=> b!5844586 (= res!2461735 lt!2304041)))

(declare-fun b!5844587 () Bool)

(declare-fun res!2461742 () Bool)

(assert (=> b!5844587 (=> res!2461742 e!3584680)))

(assert (=> b!5844587 (= res!2461742 (not ((_ is ElementMatch!15913) (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326)))))))

(assert (=> b!5844587 (= e!3584686 e!3584680)))

(declare-fun b!5844588 () Bool)

(assert (=> b!5844588 (= e!3584684 (= (head!12380 (tail!11464 s!2326)) (c!1035547 (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326)))))))

(declare-fun b!5844589 () Bool)

(assert (=> b!5844589 (= e!3584685 (matchR!8096 (derivativeStep!4651 (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326)) (head!12380 (tail!11464 s!2326))) (tail!11464 (tail!11464 s!2326))))))

(declare-fun bm!456725 () Bool)

(assert (=> bm!456725 (= call!456730 (isEmpty!35774 (tail!11464 s!2326)))))

(declare-fun b!5844590 () Bool)

(assert (=> b!5844590 (= e!3584686 (not lt!2304041))))

(declare-fun b!5844591 () Bool)

(declare-fun res!2461740 () Bool)

(assert (=> b!5844591 (=> res!2461740 e!3584681)))

(assert (=> b!5844591 (= res!2461740 (not (isEmpty!35774 (tail!11464 (tail!11464 s!2326)))))))

(assert (= (and d!1836068 c!1035754) b!5844581))

(assert (= (and d!1836068 (not c!1035754)) b!5844589))

(assert (= (and d!1836068 c!1035755) b!5844578))

(assert (= (and d!1836068 (not c!1035755)) b!5844584))

(assert (= (and b!5844584 c!1035753) b!5844590))

(assert (= (and b!5844584 (not c!1035753)) b!5844587))

(assert (= (and b!5844587 (not res!2461742)) b!5844586))

(assert (= (and b!5844586 res!2461735) b!5844583))

(assert (= (and b!5844583 res!2461739) b!5844579))

(assert (= (and b!5844579 res!2461741) b!5844588))

(assert (= (and b!5844586 (not res!2461738)) b!5844585))

(assert (= (and b!5844585 res!2461737) b!5844580))

(assert (= (and b!5844580 (not res!2461736)) b!5844591))

(assert (= (and b!5844591 (not res!2461740)) b!5844582))

(assert (= (or b!5844578 b!5844580 b!5844583) bm!456725))

(assert (=> bm!456725 m!6767016))

(assert (=> bm!456725 m!6767018))

(assert (=> b!5844579 m!6767016))

(declare-fun m!6767192 () Bool)

(assert (=> b!5844579 m!6767192))

(assert (=> b!5844579 m!6767192))

(declare-fun m!6767194 () Bool)

(assert (=> b!5844579 m!6767194))

(assert (=> b!5844589 m!6767016))

(declare-fun m!6767196 () Bool)

(assert (=> b!5844589 m!6767196))

(assert (=> b!5844589 m!6767068))

(assert (=> b!5844589 m!6767196))

(declare-fun m!6767198 () Bool)

(assert (=> b!5844589 m!6767198))

(assert (=> b!5844589 m!6767016))

(assert (=> b!5844589 m!6767192))

(assert (=> b!5844589 m!6767198))

(assert (=> b!5844589 m!6767192))

(declare-fun m!6767200 () Bool)

(assert (=> b!5844589 m!6767200))

(assert (=> b!5844591 m!6767016))

(assert (=> b!5844591 m!6767192))

(assert (=> b!5844591 m!6767192))

(assert (=> b!5844591 m!6767194))

(assert (=> d!1836068 m!6767016))

(assert (=> d!1836068 m!6767018))

(assert (=> d!1836068 m!6767068))

(declare-fun m!6767202 () Bool)

(assert (=> d!1836068 m!6767202))

(assert (=> b!5844581 m!6767068))

(declare-fun m!6767204 () Bool)

(assert (=> b!5844581 m!6767204))

(assert (=> b!5844582 m!6767016))

(assert (=> b!5844582 m!6767196))

(assert (=> b!5844588 m!6767016))

(assert (=> b!5844588 m!6767196))

(assert (=> b!5844336 d!1836068))

(declare-fun bm!456734 () Bool)

(declare-fun call!456742 () Regex!15913)

(declare-fun c!1035766 () Bool)

(declare-fun c!1035768 () Bool)

(assert (=> bm!456734 (= call!456742 (derivativeStep!4651 (ite c!1035768 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035766 (reg!16242 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (head!12380 s!2326)))))

(declare-fun b!5844612 () Bool)

(declare-fun e!3584697 () Regex!15913)

(declare-fun call!456740 () Regex!15913)

(assert (=> b!5844612 (= e!3584697 (Union!15913 call!456740 call!456742))))

(declare-fun b!5844613 () Bool)

(declare-fun call!456741 () Regex!15913)

(declare-fun call!456739 () Regex!15913)

(declare-fun e!3584699 () Regex!15913)

(assert (=> b!5844613 (= e!3584699 (Union!15913 (Concat!24758 call!456741 (regTwo!32338 (regTwo!32339 r!7292))) call!456739))))

(declare-fun b!5844614 () Bool)

(assert (=> b!5844614 (= e!3584699 (Union!15913 (Concat!24758 call!456739 (regTwo!32338 (regTwo!32339 r!7292))) EmptyLang!15913))))

(declare-fun d!1836070 () Bool)

(declare-fun lt!2304044 () Regex!15913)

(assert (=> d!1836070 (validRegex!7649 lt!2304044)))

(declare-fun e!3584698 () Regex!15913)

(assert (=> d!1836070 (= lt!2304044 e!3584698)))

(declare-fun c!1035770 () Bool)

(assert (=> d!1836070 (= c!1035770 (or ((_ is EmptyExpr!15913) (regTwo!32339 r!7292)) ((_ is EmptyLang!15913) (regTwo!32339 r!7292))))))

(assert (=> d!1836070 (validRegex!7649 (regTwo!32339 r!7292))))

(assert (=> d!1836070 (= (derivativeStep!4651 (regTwo!32339 r!7292) (head!12380 s!2326)) lt!2304044)))

(declare-fun b!5844615 () Bool)

(assert (=> b!5844615 (= e!3584698 EmptyLang!15913)))

(declare-fun b!5844616 () Bool)

(declare-fun c!1035769 () Bool)

(assert (=> b!5844616 (= c!1035769 (nullable!5913 (regOne!32338 (regTwo!32339 r!7292))))))

(declare-fun e!3584700 () Regex!15913)

(assert (=> b!5844616 (= e!3584700 e!3584699)))

(declare-fun bm!456735 () Bool)

(assert (=> bm!456735 (= call!456739 call!456740)))

(declare-fun b!5844617 () Bool)

(declare-fun e!3584701 () Regex!15913)

(assert (=> b!5844617 (= e!3584698 e!3584701)))

(declare-fun c!1035767 () Bool)

(assert (=> b!5844617 (= c!1035767 ((_ is ElementMatch!15913) (regTwo!32339 r!7292)))))

(declare-fun b!5844618 () Bool)

(assert (=> b!5844618 (= e!3584701 (ite (= (head!12380 s!2326) (c!1035547 (regTwo!32339 r!7292))) EmptyExpr!15913 EmptyLang!15913))))

(declare-fun b!5844619 () Bool)

(assert (=> b!5844619 (= e!3584700 (Concat!24758 call!456741 (regTwo!32339 r!7292)))))

(declare-fun bm!456736 () Bool)

(assert (=> bm!456736 (= call!456740 (derivativeStep!4651 (ite c!1035768 (regOne!32339 (regTwo!32339 r!7292)) (ite c!1035769 (regTwo!32338 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (head!12380 s!2326)))))

(declare-fun b!5844620 () Bool)

(assert (=> b!5844620 (= c!1035768 ((_ is Union!15913) (regTwo!32339 r!7292)))))

(assert (=> b!5844620 (= e!3584701 e!3584697)))

(declare-fun b!5844621 () Bool)

(assert (=> b!5844621 (= e!3584697 e!3584700)))

(assert (=> b!5844621 (= c!1035766 ((_ is Star!15913) (regTwo!32339 r!7292)))))

(declare-fun bm!456737 () Bool)

(assert (=> bm!456737 (= call!456741 call!456742)))

(assert (= (and d!1836070 c!1035770) b!5844615))

(assert (= (and d!1836070 (not c!1035770)) b!5844617))

(assert (= (and b!5844617 c!1035767) b!5844618))

(assert (= (and b!5844617 (not c!1035767)) b!5844620))

(assert (= (and b!5844620 c!1035768) b!5844612))

(assert (= (and b!5844620 (not c!1035768)) b!5844621))

(assert (= (and b!5844621 c!1035766) b!5844619))

(assert (= (and b!5844621 (not c!1035766)) b!5844616))

(assert (= (and b!5844616 c!1035769) b!5844613))

(assert (= (and b!5844616 (not c!1035769)) b!5844614))

(assert (= (or b!5844613 b!5844614) bm!456735))

(assert (= (or b!5844619 b!5844613) bm!456737))

(assert (= (or b!5844612 bm!456737) bm!456734))

(assert (= (or b!5844612 bm!456735) bm!456736))

(assert (=> bm!456734 m!6767020))

(declare-fun m!6767206 () Bool)

(assert (=> bm!456734 m!6767206))

(declare-fun m!6767208 () Bool)

(assert (=> d!1836070 m!6767208))

(assert (=> d!1836070 m!6767072))

(assert (=> b!5844616 m!6767054))

(assert (=> bm!456736 m!6767020))

(declare-fun m!6767210 () Bool)

(assert (=> bm!456736 m!6767210))

(assert (=> b!5844336 d!1836070))

(declare-fun d!1836072 () Bool)

(assert (=> d!1836072 (= (head!12380 s!2326) (h!70364 s!2326))))

(assert (=> b!5844336 d!1836072))

(assert (=> b!5844336 d!1836064))

(declare-fun bs!1376913 () Bool)

(declare-fun d!1836074 () Bool)

(assert (= bs!1376913 (and d!1836074 d!1836012)))

(declare-fun lambda!319703 () Int)

(assert (=> bs!1376913 (= lambda!319703 lambda!319687)))

(declare-fun bs!1376914 () Bool)

(assert (= bs!1376914 (and d!1836074 d!1836034)))

(assert (=> bs!1376914 (= lambda!319703 lambda!319693)))

(declare-fun bs!1376915 () Bool)

(assert (= bs!1376915 (and d!1836074 d!1836014)))

(assert (=> bs!1376915 (= lambda!319703 lambda!319688)))

(declare-fun bs!1376916 () Bool)

(assert (= bs!1376916 (and d!1836074 d!1836040)))

(assert (=> bs!1376916 (= lambda!319703 lambda!319702)))

(declare-fun bs!1376917 () Bool)

(assert (= bs!1376917 (and d!1836074 d!1836036)))

(assert (=> bs!1376917 (= lambda!319703 lambda!319696)))

(declare-fun bs!1376918 () Bool)

(assert (= bs!1376918 (and d!1836074 d!1836038)))

(assert (=> bs!1376918 (= lambda!319703 lambda!319699)))

(declare-fun b!5844622 () Bool)

(declare-fun e!3584705 () Regex!15913)

(declare-fun e!3584702 () Regex!15913)

(assert (=> b!5844622 (= e!3584705 e!3584702)))

(declare-fun c!1035773 () Bool)

(assert (=> b!5844622 (= c!1035773 ((_ is Cons!63914) (t!377395 (unfocusZipperList!1334 zl!343))))))

(declare-fun b!5844623 () Bool)

(assert (=> b!5844623 (= e!3584702 EmptyLang!15913)))

(declare-fun b!5844624 () Bool)

(declare-fun e!3584704 () Bool)

(declare-fun lt!2304045 () Regex!15913)

(assert (=> b!5844624 (= e!3584704 (= lt!2304045 (head!12381 (t!377395 (unfocusZipperList!1334 zl!343)))))))

(declare-fun b!5844625 () Bool)

(declare-fun e!3584706 () Bool)

(assert (=> b!5844625 (= e!3584706 (isEmptyLang!1356 lt!2304045))))

(declare-fun b!5844626 () Bool)

(assert (=> b!5844626 (= e!3584705 (h!70362 (t!377395 (unfocusZipperList!1334 zl!343))))))

(declare-fun e!3584707 () Bool)

(assert (=> d!1836074 e!3584707))

(declare-fun res!2461743 () Bool)

(assert (=> d!1836074 (=> (not res!2461743) (not e!3584707))))

(assert (=> d!1836074 (= res!2461743 (validRegex!7649 lt!2304045))))

(assert (=> d!1836074 (= lt!2304045 e!3584705)))

(declare-fun c!1035771 () Bool)

(declare-fun e!3584703 () Bool)

(assert (=> d!1836074 (= c!1035771 e!3584703)))

(declare-fun res!2461744 () Bool)

(assert (=> d!1836074 (=> (not res!2461744) (not e!3584703))))

(assert (=> d!1836074 (= res!2461744 ((_ is Cons!63914) (t!377395 (unfocusZipperList!1334 zl!343))))))

(assert (=> d!1836074 (forall!15000 (t!377395 (unfocusZipperList!1334 zl!343)) lambda!319703)))

(assert (=> d!1836074 (= (generalisedUnion!1757 (t!377395 (unfocusZipperList!1334 zl!343))) lt!2304045)))

(declare-fun b!5844627 () Bool)

(assert (=> b!5844627 (= e!3584704 (isUnion!786 lt!2304045))))

(declare-fun b!5844628 () Bool)

(assert (=> b!5844628 (= e!3584706 e!3584704)))

(declare-fun c!1035774 () Bool)

(assert (=> b!5844628 (= c!1035774 (isEmpty!35776 (tail!11466 (t!377395 (unfocusZipperList!1334 zl!343)))))))

(declare-fun b!5844629 () Bool)

(assert (=> b!5844629 (= e!3584702 (Union!15913 (h!70362 (t!377395 (unfocusZipperList!1334 zl!343))) (generalisedUnion!1757 (t!377395 (t!377395 (unfocusZipperList!1334 zl!343))))))))

(declare-fun b!5844630 () Bool)

(assert (=> b!5844630 (= e!3584703 (isEmpty!35776 (t!377395 (t!377395 (unfocusZipperList!1334 zl!343)))))))

(declare-fun b!5844631 () Bool)

(assert (=> b!5844631 (= e!3584707 e!3584706)))

(declare-fun c!1035772 () Bool)

(assert (=> b!5844631 (= c!1035772 (isEmpty!35776 (t!377395 (unfocusZipperList!1334 zl!343))))))

(assert (= (and d!1836074 res!2461744) b!5844630))

(assert (= (and d!1836074 c!1035771) b!5844626))

(assert (= (and d!1836074 (not c!1035771)) b!5844622))

(assert (= (and b!5844622 c!1035773) b!5844629))

(assert (= (and b!5844622 (not c!1035773)) b!5844623))

(assert (= (and d!1836074 res!2461743) b!5844631))

(assert (= (and b!5844631 c!1035772) b!5844625))

(assert (= (and b!5844631 (not c!1035772)) b!5844628))

(assert (= (and b!5844628 c!1035774) b!5844624))

(assert (= (and b!5844628 (not c!1035774)) b!5844627))

(declare-fun m!6767212 () Bool)

(assert (=> b!5844627 m!6767212))

(declare-fun m!6767214 () Bool)

(assert (=> d!1836074 m!6767214))

(declare-fun m!6767216 () Bool)

(assert (=> d!1836074 m!6767216))

(declare-fun m!6767218 () Bool)

(assert (=> b!5844628 m!6767218))

(assert (=> b!5844628 m!6767218))

(declare-fun m!6767220 () Bool)

(assert (=> b!5844628 m!6767220))

(assert (=> b!5844631 m!6767108))

(declare-fun m!6767222 () Bool)

(assert (=> b!5844624 m!6767222))

(declare-fun m!6767224 () Bool)

(assert (=> b!5844625 m!6767224))

(declare-fun m!6767226 () Bool)

(assert (=> b!5844630 m!6767226))

(declare-fun m!6767228 () Bool)

(assert (=> b!5844629 m!6767228))

(assert (=> b!5844391 d!1836074))

(declare-fun d!1836076 () Bool)

(assert (=> d!1836076 (= (isEmpty!35774 s!2326) ((_ is Nil!63916) s!2326))))

(assert (=> bm!456661 d!1836076))

(declare-fun c!1035776 () Bool)

(declare-fun c!1035775 () Bool)

(declare-fun bm!456738 () Bool)

(declare-fun call!456743 () Bool)

(assert (=> bm!456738 (= call!456743 (validRegex!7649 (ite c!1035776 (reg!16242 (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))) (ite c!1035775 (regTwo!32339 (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))) (regTwo!32338 (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292)))))))))

(declare-fun b!5844632 () Bool)

(declare-fun e!3584712 () Bool)

(declare-fun e!3584710 () Bool)

(assert (=> b!5844632 (= e!3584712 e!3584710)))

(declare-fun res!2461747 () Bool)

(assert (=> b!5844632 (=> (not res!2461747) (not e!3584710))))

(declare-fun call!456745 () Bool)

(assert (=> b!5844632 (= res!2461747 call!456745)))

(declare-fun b!5844633 () Bool)

(declare-fun e!3584713 () Bool)

(declare-fun e!3584711 () Bool)

(assert (=> b!5844633 (= e!3584713 e!3584711)))

(assert (=> b!5844633 (= c!1035776 ((_ is Star!15913) (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))))))

(declare-fun b!5844634 () Bool)

(declare-fun res!2461749 () Bool)

(declare-fun e!3584708 () Bool)

(assert (=> b!5844634 (=> (not res!2461749) (not e!3584708))))

(assert (=> b!5844634 (= res!2461749 call!456745)))

(declare-fun e!3584714 () Bool)

(assert (=> b!5844634 (= e!3584714 e!3584708)))

(declare-fun b!5844635 () Bool)

(assert (=> b!5844635 (= e!3584711 e!3584714)))

(assert (=> b!5844635 (= c!1035775 ((_ is Union!15913) (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))))))

(declare-fun b!5844637 () Bool)

(declare-fun e!3584709 () Bool)

(assert (=> b!5844637 (= e!3584711 e!3584709)))

(declare-fun res!2461745 () Bool)

(assert (=> b!5844637 (= res!2461745 (not (nullable!5913 (reg!16242 (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))))))))

(assert (=> b!5844637 (=> (not res!2461745) (not e!3584709))))

(declare-fun bm!456739 () Bool)

(declare-fun call!456744 () Bool)

(assert (=> bm!456739 (= call!456744 call!456743)))

(declare-fun b!5844638 () Bool)

(assert (=> b!5844638 (= e!3584709 call!456743)))

(declare-fun b!5844639 () Bool)

(assert (=> b!5844639 (= e!3584710 call!456744)))

(declare-fun b!5844640 () Bool)

(declare-fun res!2461746 () Bool)

(assert (=> b!5844640 (=> res!2461746 e!3584712)))

(assert (=> b!5844640 (= res!2461746 (not ((_ is Concat!24758) (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292)))))))

(assert (=> b!5844640 (= e!3584714 e!3584712)))

(declare-fun bm!456740 () Bool)

(assert (=> bm!456740 (= call!456745 (validRegex!7649 (ite c!1035775 (regOne!32339 (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))) (regOne!32338 (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))))))))

(declare-fun b!5844636 () Bool)

(assert (=> b!5844636 (= e!3584708 call!456744)))

(declare-fun d!1836078 () Bool)

(declare-fun res!2461748 () Bool)

(assert (=> d!1836078 (=> res!2461748 e!3584713)))

(assert (=> d!1836078 (= res!2461748 ((_ is ElementMatch!15913) (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))))))

(assert (=> d!1836078 (= (validRegex!7649 (ite c!1035733 (regOne!32339 r!7292) (regOne!32338 r!7292))) e!3584713)))

(assert (= (and d!1836078 (not res!2461748)) b!5844633))

(assert (= (and b!5844633 c!1035776) b!5844637))

(assert (= (and b!5844633 (not c!1035776)) b!5844635))

(assert (= (and b!5844637 res!2461745) b!5844638))

(assert (= (and b!5844635 c!1035775) b!5844634))

(assert (= (and b!5844635 (not c!1035775)) b!5844640))

(assert (= (and b!5844634 res!2461749) b!5844636))

(assert (= (and b!5844640 (not res!2461746)) b!5844632))

(assert (= (and b!5844632 res!2461747) b!5844639))

(assert (= (or b!5844636 b!5844639) bm!456739))

(assert (= (or b!5844634 b!5844632) bm!456740))

(assert (= (or b!5844638 bm!456739) bm!456738))

(declare-fun m!6767230 () Bool)

(assert (=> bm!456738 m!6767230))

(declare-fun m!6767232 () Bool)

(assert (=> b!5844637 m!6767232))

(declare-fun m!6767234 () Bool)

(assert (=> bm!456740 m!6767234))

(assert (=> bm!456706 d!1836078))

(declare-fun d!1836080 () Bool)

(assert (=> d!1836080 (= (nullable!5913 r!7292) (nullableFct!1899 r!7292))))

(declare-fun bs!1376919 () Bool)

(assert (= bs!1376919 d!1836080))

(declare-fun m!6767236 () Bool)

(assert (=> bs!1376919 m!6767236))

(assert (=> b!5844256 d!1836080))

(declare-fun d!1836082 () Bool)

(assert (=> d!1836082 (= (isEmpty!35776 (unfocusZipperList!1334 zl!343)) ((_ is Nil!63914) (unfocusZipperList!1334 zl!343)))))

(assert (=> b!5844393 d!1836082))

(assert (=> bm!456693 d!1836076))

(assert (=> d!1836024 d!1836032))

(assert (=> d!1836024 d!1836030))

(declare-fun d!1836084 () Bool)

(assert (=> d!1836084 (= (matchR!8096 (regOne!32339 r!7292) s!2326) (matchRSpec!3014 (regOne!32339 r!7292) s!2326))))

(assert (=> d!1836084 true))

(declare-fun _$88!4223 () Unit!157097)

(assert (=> d!1836084 (= (choose!44354 (regOne!32339 r!7292) s!2326) _$88!4223)))

(declare-fun bs!1376920 () Bool)

(assert (= bs!1376920 d!1836084))

(assert (=> bs!1376920 m!6766852))

(assert (=> bs!1376920 m!6766848))

(assert (=> d!1836024 d!1836084))

(declare-fun c!1035778 () Bool)

(declare-fun bm!456741 () Bool)

(declare-fun call!456746 () Bool)

(declare-fun c!1035777 () Bool)

(assert (=> bm!456741 (= call!456746 (validRegex!7649 (ite c!1035778 (reg!16242 (regOne!32339 r!7292)) (ite c!1035777 (regTwo!32339 (regOne!32339 r!7292)) (regTwo!32338 (regOne!32339 r!7292))))))))

(declare-fun b!5844641 () Bool)

(declare-fun e!3584719 () Bool)

(declare-fun e!3584717 () Bool)

(assert (=> b!5844641 (= e!3584719 e!3584717)))

(declare-fun res!2461752 () Bool)

(assert (=> b!5844641 (=> (not res!2461752) (not e!3584717))))

(declare-fun call!456748 () Bool)

(assert (=> b!5844641 (= res!2461752 call!456748)))

(declare-fun b!5844642 () Bool)

(declare-fun e!3584720 () Bool)

(declare-fun e!3584718 () Bool)

(assert (=> b!5844642 (= e!3584720 e!3584718)))

(assert (=> b!5844642 (= c!1035778 ((_ is Star!15913) (regOne!32339 r!7292)))))

(declare-fun b!5844643 () Bool)

(declare-fun res!2461754 () Bool)

(declare-fun e!3584715 () Bool)

(assert (=> b!5844643 (=> (not res!2461754) (not e!3584715))))

(assert (=> b!5844643 (= res!2461754 call!456748)))

(declare-fun e!3584721 () Bool)

(assert (=> b!5844643 (= e!3584721 e!3584715)))

(declare-fun b!5844644 () Bool)

(assert (=> b!5844644 (= e!3584718 e!3584721)))

(assert (=> b!5844644 (= c!1035777 ((_ is Union!15913) (regOne!32339 r!7292)))))

(declare-fun b!5844646 () Bool)

(declare-fun e!3584716 () Bool)

(assert (=> b!5844646 (= e!3584718 e!3584716)))

(declare-fun res!2461750 () Bool)

(assert (=> b!5844646 (= res!2461750 (not (nullable!5913 (reg!16242 (regOne!32339 r!7292)))))))

(assert (=> b!5844646 (=> (not res!2461750) (not e!3584716))))

(declare-fun bm!456742 () Bool)

(declare-fun call!456747 () Bool)

(assert (=> bm!456742 (= call!456747 call!456746)))

(declare-fun b!5844647 () Bool)

(assert (=> b!5844647 (= e!3584716 call!456746)))

(declare-fun b!5844648 () Bool)

(assert (=> b!5844648 (= e!3584717 call!456747)))

(declare-fun b!5844649 () Bool)

(declare-fun res!2461751 () Bool)

(assert (=> b!5844649 (=> res!2461751 e!3584719)))

(assert (=> b!5844649 (= res!2461751 (not ((_ is Concat!24758) (regOne!32339 r!7292))))))

(assert (=> b!5844649 (= e!3584721 e!3584719)))

(declare-fun bm!456743 () Bool)

(assert (=> bm!456743 (= call!456748 (validRegex!7649 (ite c!1035777 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))))))

(declare-fun b!5844645 () Bool)

(assert (=> b!5844645 (= e!3584715 call!456747)))

(declare-fun d!1836086 () Bool)

(declare-fun res!2461753 () Bool)

(assert (=> d!1836086 (=> res!2461753 e!3584720)))

(assert (=> d!1836086 (= res!2461753 ((_ is ElementMatch!15913) (regOne!32339 r!7292)))))

(assert (=> d!1836086 (= (validRegex!7649 (regOne!32339 r!7292)) e!3584720)))

(assert (= (and d!1836086 (not res!2461753)) b!5844642))

(assert (= (and b!5844642 c!1035778) b!5844646))

(assert (= (and b!5844642 (not c!1035778)) b!5844644))

(assert (= (and b!5844646 res!2461750) b!5844647))

(assert (= (and b!5844644 c!1035777) b!5844643))

(assert (= (and b!5844644 (not c!1035777)) b!5844649))

(assert (= (and b!5844643 res!2461754) b!5844645))

(assert (= (and b!5844649 (not res!2461751)) b!5844641))

(assert (= (and b!5844641 res!2461752) b!5844648))

(assert (= (or b!5844645 b!5844648) bm!456742))

(assert (= (or b!5844643 b!5844641) bm!456743))

(assert (= (or b!5844647 bm!456742) bm!456741))

(declare-fun m!6767238 () Bool)

(assert (=> bm!456741 m!6767238))

(declare-fun m!6767240 () Bool)

(assert (=> b!5844646 m!6767240))

(declare-fun m!6767242 () Bool)

(assert (=> bm!456743 m!6767242))

(assert (=> d!1836024 d!1836086))

(declare-fun d!1836088 () Bool)

(assert (=> d!1836088 (= (isEmpty!35776 (exprs!5797 (h!70363 zl!343))) ((_ is Nil!63914) (exprs!5797 (h!70363 zl!343))))))

(assert (=> b!5844421 d!1836088))

(declare-fun bs!1376921 () Bool)

(declare-fun b!5844659 () Bool)

(assert (= bs!1376921 (and b!5844659 b!5844323)))

(declare-fun lambda!319704 () Int)

(assert (=> bs!1376921 (= (and (= (reg!16242 (regTwo!32339 (regOne!32339 r!7292))) (reg!16242 (regTwo!32339 r!7292))) (= (regTwo!32339 (regOne!32339 r!7292)) (regTwo!32339 r!7292))) (= lambda!319704 lambda!319689))))

(declare-fun bs!1376922 () Bool)

(assert (= bs!1376922 (and b!5844659 b!5844320)))

(assert (=> bs!1376922 (not (= lambda!319704 lambda!319690))))

(declare-fun bs!1376923 () Bool)

(assert (= bs!1376923 (and b!5844659 b!5844153)))

(assert (=> bs!1376923 (not (= lambda!319704 lambda!319684))))

(declare-fun bs!1376924 () Bool)

(assert (= bs!1376924 (and b!5844659 b!5844156)))

(assert (=> bs!1376924 (= (and (= (reg!16242 (regTwo!32339 (regOne!32339 r!7292))) (reg!16242 r!7292)) (= (regTwo!32339 (regOne!32339 r!7292)) r!7292)) (= lambda!319704 lambda!319683))))

(declare-fun bs!1376925 () Bool)

(assert (= bs!1376925 (and b!5844659 b!5844345)))

(assert (=> bs!1376925 (not (= lambda!319704 lambda!319692))))

(declare-fun bs!1376926 () Bool)

(assert (= bs!1376926 (and b!5844659 b!5844348)))

(assert (=> bs!1376926 (= (and (= (reg!16242 (regTwo!32339 (regOne!32339 r!7292))) (reg!16242 (regOne!32339 r!7292))) (= (regTwo!32339 (regOne!32339 r!7292)) (regOne!32339 r!7292))) (= lambda!319704 lambda!319691))))

(assert (=> b!5844659 true))

(assert (=> b!5844659 true))

(declare-fun bs!1376927 () Bool)

(declare-fun b!5844656 () Bool)

(assert (= bs!1376927 (and b!5844656 b!5844323)))

(declare-fun lambda!319705 () Int)

(assert (=> bs!1376927 (not (= lambda!319705 lambda!319689))))

(declare-fun bs!1376928 () Bool)

(assert (= bs!1376928 (and b!5844656 b!5844320)))

(assert (=> bs!1376928 (= (and (= (regOne!32338 (regTwo!32339 (regOne!32339 r!7292))) (regOne!32338 (regTwo!32339 r!7292))) (= (regTwo!32338 (regTwo!32339 (regOne!32339 r!7292))) (regTwo!32338 (regTwo!32339 r!7292)))) (= lambda!319705 lambda!319690))))

(declare-fun bs!1376929 () Bool)

(assert (= bs!1376929 (and b!5844656 b!5844153)))

(assert (=> bs!1376929 (= (and (= (regOne!32338 (regTwo!32339 (regOne!32339 r!7292))) (regOne!32338 r!7292)) (= (regTwo!32338 (regTwo!32339 (regOne!32339 r!7292))) (regTwo!32338 r!7292))) (= lambda!319705 lambda!319684))))

(declare-fun bs!1376930 () Bool)

(assert (= bs!1376930 (and b!5844656 b!5844156)))

(assert (=> bs!1376930 (not (= lambda!319705 lambda!319683))))

(declare-fun bs!1376931 () Bool)

(assert (= bs!1376931 (and b!5844656 b!5844659)))

(assert (=> bs!1376931 (not (= lambda!319705 lambda!319704))))

(declare-fun bs!1376932 () Bool)

(assert (= bs!1376932 (and b!5844656 b!5844345)))

(assert (=> bs!1376932 (= (and (= (regOne!32338 (regTwo!32339 (regOne!32339 r!7292))) (regOne!32338 (regOne!32339 r!7292))) (= (regTwo!32338 (regTwo!32339 (regOne!32339 r!7292))) (regTwo!32338 (regOne!32339 r!7292)))) (= lambda!319705 lambda!319692))))

(declare-fun bs!1376933 () Bool)

(assert (= bs!1376933 (and b!5844656 b!5844348)))

(assert (=> bs!1376933 (not (= lambda!319705 lambda!319691))))

(assert (=> b!5844656 true))

(assert (=> b!5844656 true))

(declare-fun call!456750 () Bool)

(declare-fun c!1035782 () Bool)

(declare-fun bm!456744 () Bool)

(assert (=> bm!456744 (= call!456750 (Exists!2985 (ite c!1035782 lambda!319704 lambda!319705)))))

(declare-fun b!5844650 () Bool)

(declare-fun res!2461756 () Bool)

(declare-fun e!3584724 () Bool)

(assert (=> b!5844650 (=> res!2461756 e!3584724)))

(declare-fun call!456749 () Bool)

(assert (=> b!5844650 (= res!2461756 call!456749)))

(declare-fun e!3584726 () Bool)

(assert (=> b!5844650 (= e!3584726 e!3584724)))

(declare-fun b!5844651 () Bool)

(declare-fun e!3584725 () Bool)

(declare-fun e!3584728 () Bool)

(assert (=> b!5844651 (= e!3584725 e!3584728)))

(declare-fun res!2461757 () Bool)

(assert (=> b!5844651 (= res!2461757 (matchRSpec!3014 (regOne!32339 (regTwo!32339 (regOne!32339 r!7292))) s!2326))))

(assert (=> b!5844651 (=> res!2461757 e!3584728)))

(declare-fun d!1836090 () Bool)

(declare-fun c!1035779 () Bool)

(assert (=> d!1836090 (= c!1035779 ((_ is EmptyExpr!15913) (regTwo!32339 (regOne!32339 r!7292))))))

(declare-fun e!3584727 () Bool)

(assert (=> d!1836090 (= (matchRSpec!3014 (regTwo!32339 (regOne!32339 r!7292)) s!2326) e!3584727)))

(declare-fun b!5844652 () Bool)

(declare-fun c!1035781 () Bool)

(assert (=> b!5844652 (= c!1035781 ((_ is Union!15913) (regTwo!32339 (regOne!32339 r!7292))))))

(declare-fun e!3584723 () Bool)

(assert (=> b!5844652 (= e!3584723 e!3584725)))

(declare-fun b!5844653 () Bool)

(assert (=> b!5844653 (= e!3584725 e!3584726)))

(assert (=> b!5844653 (= c!1035782 ((_ is Star!15913) (regTwo!32339 (regOne!32339 r!7292))))))

(declare-fun b!5844654 () Bool)

(declare-fun c!1035780 () Bool)

(assert (=> b!5844654 (= c!1035780 ((_ is ElementMatch!15913) (regTwo!32339 (regOne!32339 r!7292))))))

(declare-fun e!3584722 () Bool)

(assert (=> b!5844654 (= e!3584722 e!3584723)))

(declare-fun b!5844655 () Bool)

(assert (=> b!5844655 (= e!3584727 call!456749)))

(declare-fun bm!456745 () Bool)

(assert (=> bm!456745 (= call!456749 (isEmpty!35774 s!2326))))

(assert (=> b!5844656 (= e!3584726 call!456750)))

(declare-fun b!5844657 () Bool)

(assert (=> b!5844657 (= e!3584727 e!3584722)))

(declare-fun res!2461755 () Bool)

(assert (=> b!5844657 (= res!2461755 (not ((_ is EmptyLang!15913) (regTwo!32339 (regOne!32339 r!7292)))))))

(assert (=> b!5844657 (=> (not res!2461755) (not e!3584722))))

(declare-fun b!5844658 () Bool)

(assert (=> b!5844658 (= e!3584728 (matchRSpec!3014 (regTwo!32339 (regTwo!32339 (regOne!32339 r!7292))) s!2326))))

(assert (=> b!5844659 (= e!3584724 call!456750)))

(declare-fun b!5844660 () Bool)

(assert (=> b!5844660 (= e!3584723 (= s!2326 (Cons!63916 (c!1035547 (regTwo!32339 (regOne!32339 r!7292))) Nil!63916)))))

(assert (= (and d!1836090 c!1035779) b!5844655))

(assert (= (and d!1836090 (not c!1035779)) b!5844657))

(assert (= (and b!5844657 res!2461755) b!5844654))

(assert (= (and b!5844654 c!1035780) b!5844660))

(assert (= (and b!5844654 (not c!1035780)) b!5844652))

(assert (= (and b!5844652 c!1035781) b!5844651))

(assert (= (and b!5844652 (not c!1035781)) b!5844653))

(assert (= (and b!5844651 (not res!2461757)) b!5844658))

(assert (= (and b!5844653 c!1035782) b!5844650))

(assert (= (and b!5844653 (not c!1035782)) b!5844656))

(assert (= (and b!5844650 (not res!2461756)) b!5844659))

(assert (= (or b!5844659 b!5844656) bm!456744))

(assert (= (or b!5844655 b!5844650) bm!456745))

(declare-fun m!6767244 () Bool)

(assert (=> bm!456744 m!6767244))

(declare-fun m!6767246 () Bool)

(assert (=> b!5844651 m!6767246))

(assert (=> bm!456745 m!6767010))

(declare-fun m!6767248 () Bool)

(assert (=> b!5844658 m!6767248))

(assert (=> b!5844347 d!1836090))

(declare-fun d!1836092 () Bool)

(declare-fun res!2461758 () Bool)

(declare-fun e!3584729 () Bool)

(assert (=> d!1836092 (=> res!2461758 e!3584729)))

(assert (=> d!1836092 (= res!2461758 ((_ is Nil!63914) (exprs!5797 lt!2303990)))))

(assert (=> d!1836092 (= (forall!15000 (exprs!5797 lt!2303990) lambda!319693) e!3584729)))

(declare-fun b!5844661 () Bool)

(declare-fun e!3584730 () Bool)

(assert (=> b!5844661 (= e!3584729 e!3584730)))

(declare-fun res!2461759 () Bool)

(assert (=> b!5844661 (=> (not res!2461759) (not e!3584730))))

(assert (=> b!5844661 (= res!2461759 (dynLambda!24983 lambda!319693 (h!70362 (exprs!5797 lt!2303990))))))

(declare-fun b!5844662 () Bool)

(assert (=> b!5844662 (= e!3584730 (forall!15000 (t!377395 (exprs!5797 lt!2303990)) lambda!319693))))

(assert (= (and d!1836092 (not res!2461758)) b!5844661))

(assert (= (and b!5844661 res!2461759) b!5844662))

(declare-fun b_lambda!220055 () Bool)

(assert (=> (not b_lambda!220055) (not b!5844661)))

(declare-fun m!6767250 () Bool)

(assert (=> b!5844661 m!6767250))

(declare-fun m!6767252 () Bool)

(assert (=> b!5844662 m!6767252))

(assert (=> d!1836034 d!1836092))

(declare-fun d!1836096 () Bool)

(assert (=> d!1836096 (= (nullable!5913 (regOne!32338 (regOne!32339 r!7292))) (nullableFct!1899 (regOne!32338 (regOne!32339 r!7292))))))

(declare-fun bs!1376934 () Bool)

(assert (= bs!1376934 d!1836096))

(declare-fun m!6767254 () Bool)

(assert (=> bs!1376934 m!6767254))

(assert (=> b!5844302 d!1836096))

(assert (=> d!1836010 d!1836008))

(assert (=> d!1836010 d!1835960))

(declare-fun d!1836098 () Bool)

(assert (=> d!1836098 (= (matchR!8096 r!7292 s!2326) (matchRSpec!3014 r!7292 s!2326))))

(assert (=> d!1836098 true))

(declare-fun _$88!4224 () Unit!157097)

(assert (=> d!1836098 (= (choose!44354 r!7292 s!2326) _$88!4224)))

(declare-fun bs!1376935 () Bool)

(assert (= bs!1376935 d!1836098))

(assert (=> bs!1376935 m!6766838))

(assert (=> bs!1376935 m!6766836))

(assert (=> d!1836010 d!1836098))

(assert (=> d!1836010 d!1836042))

(assert (=> b!5844351 d!1836062))

(assert (=> b!5844351 d!1836064))

(declare-fun d!1836100 () Bool)

(assert (=> d!1836100 (= (nullable!5913 (regOne!32339 r!7292)) (nullableFct!1899 (regOne!32339 r!7292)))))

(declare-fun bs!1376936 () Bool)

(assert (= bs!1376936 d!1836100))

(declare-fun m!6767256 () Bool)

(assert (=> bs!1376936 m!6767256))

(assert (=> b!5844353 d!1836100))

(declare-fun bs!1376937 () Bool)

(declare-fun d!1836102 () Bool)

(assert (= bs!1376937 (and d!1836102 d!1836012)))

(declare-fun lambda!319706 () Int)

(assert (=> bs!1376937 (= lambda!319706 lambda!319687)))

(declare-fun bs!1376938 () Bool)

(assert (= bs!1376938 (and d!1836102 d!1836034)))

(assert (=> bs!1376938 (= lambda!319706 lambda!319693)))

(declare-fun bs!1376939 () Bool)

(assert (= bs!1376939 (and d!1836102 d!1836014)))

(assert (=> bs!1376939 (= lambda!319706 lambda!319688)))

(declare-fun bs!1376940 () Bool)

(assert (= bs!1376940 (and d!1836102 d!1836040)))

(assert (=> bs!1376940 (= lambda!319706 lambda!319702)))

(declare-fun bs!1376941 () Bool)

(assert (= bs!1376941 (and d!1836102 d!1836036)))

(assert (=> bs!1376941 (= lambda!319706 lambda!319696)))

(declare-fun bs!1376942 () Bool)

(assert (= bs!1376942 (and d!1836102 d!1836074)))

(assert (=> bs!1376942 (= lambda!319706 lambda!319703)))

(declare-fun bs!1376943 () Bool)

(assert (= bs!1376943 (and d!1836102 d!1836038)))

(assert (=> bs!1376943 (= lambda!319706 lambda!319699)))

(assert (=> d!1836102 (= (inv!83029 setElem!39606) (forall!15000 (exprs!5797 setElem!39606) lambda!319706))))

(declare-fun bs!1376944 () Bool)

(assert (= bs!1376944 d!1836102))

(declare-fun m!6767258 () Bool)

(assert (=> bs!1376944 m!6767258))

(assert (=> setNonEmpty!39606 d!1836102))

(declare-fun d!1836108 () Bool)

(assert (=> d!1836108 (= (isConcat!871 lt!2304040) ((_ is Concat!24758) lt!2304040))))

(assert (=> b!5844425 d!1836108))

(declare-fun b!5844664 () Bool)

(declare-fun c!1035783 () Bool)

(declare-fun e!3584732 () Bool)

(assert (=> b!5844664 (= c!1035783 e!3584732)))

(declare-fun res!2461760 () Bool)

(assert (=> b!5844664 (=> (not res!2461760) (not e!3584732))))

(assert (=> b!5844664 (= res!2461760 ((_ is Concat!24758) (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))))

(declare-fun e!3584734 () (InoxSet Context!10594))

(declare-fun e!3584733 () (InoxSet Context!10594))

(assert (=> b!5844664 (= e!3584734 e!3584733)))

(declare-fun b!5844665 () Bool)

(declare-fun e!3584731 () (InoxSet Context!10594))

(declare-fun call!456751 () (InoxSet Context!10594))

(assert (=> b!5844665 (= e!3584731 call!456751)))

(declare-fun b!5844666 () Bool)

(declare-fun e!3584735 () (InoxSet Context!10594))

(assert (=> b!5844666 (= e!3584735 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844667 () Bool)

(assert (=> b!5844667 (= e!3584733 e!3584731)))

(declare-fun c!1035784 () Bool)

(assert (=> b!5844667 (= c!1035784 ((_ is Concat!24758) (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))))

(declare-fun bm!456746 () Bool)

(declare-fun call!456753 () List!64038)

(assert (=> bm!456746 (= call!456753 ($colon$colon!1818 (exprs!5797 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))) (ite (or c!1035783 c!1035784) (regTwo!32338 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))))))

(declare-fun bm!456747 () Bool)

(declare-fun call!456754 () List!64038)

(assert (=> bm!456747 (= call!456754 call!456753)))

(declare-fun b!5844668 () Bool)

(declare-fun call!456756 () (InoxSet Context!10594))

(declare-fun call!456752 () (InoxSet Context!10594))

(assert (=> b!5844668 (= e!3584734 ((_ map or) call!456756 call!456752))))

(declare-fun b!5844669 () Bool)

(declare-fun e!3584736 () (InoxSet Context!10594))

(assert (=> b!5844669 (= e!3584736 (store ((as const (Array Context!10594 Bool)) false) (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) true))))

(declare-fun bm!456748 () Bool)

(declare-fun c!1035786 () Bool)

(assert (=> bm!456748 (= call!456752 (derivationStepZipperDown!1179 (ite c!1035786 (regTwo!32339 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (ite c!1035783 (regTwo!32338 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (ite c!1035784 (regOne!32338 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (reg!16242 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))))) (ite (or c!1035786 c!1035783) (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (Context!10595 call!456754)) (h!70364 s!2326)))))

(declare-fun b!5844670 () Bool)

(assert (=> b!5844670 (= e!3584736 e!3584734)))

(assert (=> b!5844670 (= c!1035786 ((_ is Union!15913) (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))))

(declare-fun d!1836112 () Bool)

(declare-fun c!1035785 () Bool)

(assert (=> d!1836112 (= c!1035785 (and ((_ is ElementMatch!15913) (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (= (c!1035547 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (h!70364 s!2326))))))

(assert (=> d!1836112 (= (derivationStepZipperDown!1179 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))) (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (h!70364 s!2326)) e!3584736)))

(declare-fun b!5844663 () Bool)

(declare-fun call!456755 () (InoxSet Context!10594))

(assert (=> b!5844663 (= e!3584733 ((_ map or) call!456756 call!456755))))

(declare-fun b!5844671 () Bool)

(declare-fun c!1035787 () Bool)

(assert (=> b!5844671 (= c!1035787 ((_ is Star!15913) (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))))

(assert (=> b!5844671 (= e!3584731 e!3584735)))

(declare-fun b!5844672 () Bool)

(assert (=> b!5844672 (= e!3584735 call!456751)))

(declare-fun b!5844673 () Bool)

(assert (=> b!5844673 (= e!3584732 (nullable!5913 (regOne!32338 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))))))

(declare-fun bm!456749 () Bool)

(assert (=> bm!456749 (= call!456755 call!456752)))

(declare-fun bm!456750 () Bool)

(assert (=> bm!456750 (= call!456751 call!456755)))

(declare-fun bm!456751 () Bool)

(assert (=> bm!456751 (= call!456756 (derivationStepZipperDown!1179 (ite c!1035786 (regOne!32339 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (regOne!32338 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))) (ite c!1035786 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (Context!10595 call!456753)) (h!70364 s!2326)))))

(assert (= (and d!1836112 c!1035785) b!5844669))

(assert (= (and d!1836112 (not c!1035785)) b!5844670))

(assert (= (and b!5844670 c!1035786) b!5844668))

(assert (= (and b!5844670 (not c!1035786)) b!5844664))

(assert (= (and b!5844664 res!2461760) b!5844673))

(assert (= (and b!5844664 c!1035783) b!5844663))

(assert (= (and b!5844664 (not c!1035783)) b!5844667))

(assert (= (and b!5844667 c!1035784) b!5844665))

(assert (= (and b!5844667 (not c!1035784)) b!5844671))

(assert (= (and b!5844671 c!1035787) b!5844672))

(assert (= (and b!5844671 (not c!1035787)) b!5844666))

(assert (= (or b!5844665 b!5844672) bm!456747))

(assert (= (or b!5844665 b!5844672) bm!456750))

(assert (= (or b!5844663 bm!456747) bm!456746))

(assert (= (or b!5844663 bm!456750) bm!456749))

(assert (= (or b!5844668 bm!456749) bm!456748))

(assert (= (or b!5844668 b!5844663) bm!456751))

(declare-fun m!6767260 () Bool)

(assert (=> bm!456748 m!6767260))

(declare-fun m!6767262 () Bool)

(assert (=> bm!456751 m!6767262))

(declare-fun m!6767264 () Bool)

(assert (=> b!5844673 m!6767264))

(declare-fun m!6767266 () Bool)

(assert (=> b!5844669 m!6767266))

(declare-fun m!6767270 () Bool)

(assert (=> bm!456746 m!6767270))

(assert (=> bm!456715 d!1836112))

(declare-fun d!1836120 () Bool)

(assert (=> d!1836120 (= (isEmpty!35776 (tail!11466 (exprs!5797 (h!70363 zl!343)))) ((_ is Nil!63914) (tail!11466 (exprs!5797 (h!70363 zl!343)))))))

(assert (=> b!5844427 d!1836120))

(declare-fun d!1836124 () Bool)

(assert (=> d!1836124 (= (tail!11466 (exprs!5797 (h!70363 zl!343))) (t!377395 (exprs!5797 (h!70363 zl!343))))))

(assert (=> b!5844427 d!1836124))

(declare-fun b!5844674 () Bool)

(declare-fun e!3584740 () Bool)

(declare-fun lt!2304046 () Bool)

(declare-fun call!456757 () Bool)

(assert (=> b!5844674 (= e!3584740 (= lt!2304046 call!456757))))

(declare-fun b!5844675 () Bool)

(declare-fun res!2461767 () Bool)

(declare-fun e!3584741 () Bool)

(assert (=> b!5844675 (=> (not res!2461767) (not e!3584741))))

(assert (=> b!5844675 (= res!2461767 (isEmpty!35774 (tail!11464 (tail!11464 s!2326))))))

(declare-fun b!5844676 () Bool)

(declare-fun e!3584739 () Bool)

(declare-fun e!3584738 () Bool)

(assert (=> b!5844676 (= e!3584739 e!3584738)))

(declare-fun res!2461762 () Bool)

(assert (=> b!5844676 (=> res!2461762 e!3584738)))

(assert (=> b!5844676 (= res!2461762 call!456757)))

(declare-fun d!1836128 () Bool)

(assert (=> d!1836128 e!3584740))

(declare-fun c!1035790 () Bool)

(assert (=> d!1836128 (= c!1035790 ((_ is EmptyExpr!15913) (derivativeStep!4651 r!7292 (head!12380 s!2326))))))

(declare-fun e!3584742 () Bool)

(assert (=> d!1836128 (= lt!2304046 e!3584742)))

(declare-fun c!1035789 () Bool)

(assert (=> d!1836128 (= c!1035789 (isEmpty!35774 (tail!11464 s!2326)))))

(assert (=> d!1836128 (validRegex!7649 (derivativeStep!4651 r!7292 (head!12380 s!2326)))))

(assert (=> d!1836128 (= (matchR!8096 (derivativeStep!4651 r!7292 (head!12380 s!2326)) (tail!11464 s!2326)) lt!2304046)))

(declare-fun b!5844677 () Bool)

(assert (=> b!5844677 (= e!3584742 (nullable!5913 (derivativeStep!4651 r!7292 (head!12380 s!2326))))))

(declare-fun b!5844678 () Bool)

(assert (=> b!5844678 (= e!3584738 (not (= (head!12380 (tail!11464 s!2326)) (c!1035547 (derivativeStep!4651 r!7292 (head!12380 s!2326))))))))

(declare-fun b!5844679 () Bool)

(declare-fun res!2461765 () Bool)

(assert (=> b!5844679 (=> (not res!2461765) (not e!3584741))))

(assert (=> b!5844679 (= res!2461765 (not call!456757))))

(declare-fun b!5844680 () Bool)

(declare-fun e!3584743 () Bool)

(assert (=> b!5844680 (= e!3584740 e!3584743)))

(declare-fun c!1035788 () Bool)

(assert (=> b!5844680 (= c!1035788 ((_ is EmptyLang!15913) (derivativeStep!4651 r!7292 (head!12380 s!2326))))))

(declare-fun b!5844681 () Bool)

(declare-fun e!3584737 () Bool)

(assert (=> b!5844681 (= e!3584737 e!3584739)))

(declare-fun res!2461763 () Bool)

(assert (=> b!5844681 (=> (not res!2461763) (not e!3584739))))

(assert (=> b!5844681 (= res!2461763 (not lt!2304046))))

(declare-fun b!5844682 () Bool)

(declare-fun res!2461764 () Bool)

(assert (=> b!5844682 (=> res!2461764 e!3584737)))

(assert (=> b!5844682 (= res!2461764 e!3584741)))

(declare-fun res!2461761 () Bool)

(assert (=> b!5844682 (=> (not res!2461761) (not e!3584741))))

(assert (=> b!5844682 (= res!2461761 lt!2304046)))

(declare-fun b!5844683 () Bool)

(declare-fun res!2461768 () Bool)

(assert (=> b!5844683 (=> res!2461768 e!3584737)))

(assert (=> b!5844683 (= res!2461768 (not ((_ is ElementMatch!15913) (derivativeStep!4651 r!7292 (head!12380 s!2326)))))))

(assert (=> b!5844683 (= e!3584743 e!3584737)))

(declare-fun b!5844684 () Bool)

(assert (=> b!5844684 (= e!3584741 (= (head!12380 (tail!11464 s!2326)) (c!1035547 (derivativeStep!4651 r!7292 (head!12380 s!2326)))))))

(declare-fun b!5844685 () Bool)

(assert (=> b!5844685 (= e!3584742 (matchR!8096 (derivativeStep!4651 (derivativeStep!4651 r!7292 (head!12380 s!2326)) (head!12380 (tail!11464 s!2326))) (tail!11464 (tail!11464 s!2326))))))

(declare-fun bm!456752 () Bool)

(assert (=> bm!456752 (= call!456757 (isEmpty!35774 (tail!11464 s!2326)))))

(declare-fun b!5844686 () Bool)

(assert (=> b!5844686 (= e!3584743 (not lt!2304046))))

(declare-fun b!5844687 () Bool)

(declare-fun res!2461766 () Bool)

(assert (=> b!5844687 (=> res!2461766 e!3584738)))

(assert (=> b!5844687 (= res!2461766 (not (isEmpty!35774 (tail!11464 (tail!11464 s!2326)))))))

(assert (= (and d!1836128 c!1035789) b!5844677))

(assert (= (and d!1836128 (not c!1035789)) b!5844685))

(assert (= (and d!1836128 c!1035790) b!5844674))

(assert (= (and d!1836128 (not c!1035790)) b!5844680))

(assert (= (and b!5844680 c!1035788) b!5844686))

(assert (= (and b!5844680 (not c!1035788)) b!5844683))

(assert (= (and b!5844683 (not res!2461768)) b!5844682))

(assert (= (and b!5844682 res!2461761) b!5844679))

(assert (= (and b!5844679 res!2461765) b!5844675))

(assert (= (and b!5844675 res!2461767) b!5844684))

(assert (= (and b!5844682 (not res!2461764)) b!5844681))

(assert (= (and b!5844681 res!2461763) b!5844676))

(assert (= (and b!5844676 (not res!2461762)) b!5844687))

(assert (= (and b!5844687 (not res!2461766)) b!5844678))

(assert (= (or b!5844674 b!5844676 b!5844679) bm!456752))

(assert (=> bm!456752 m!6767016))

(assert (=> bm!456752 m!6767018))

(assert (=> b!5844675 m!6767016))

(assert (=> b!5844675 m!6767192))

(assert (=> b!5844675 m!6767192))

(assert (=> b!5844675 m!6767194))

(assert (=> b!5844685 m!6767016))

(assert (=> b!5844685 m!6767196))

(assert (=> b!5844685 m!6767022))

(assert (=> b!5844685 m!6767196))

(declare-fun m!6767272 () Bool)

(assert (=> b!5844685 m!6767272))

(assert (=> b!5844685 m!6767016))

(assert (=> b!5844685 m!6767192))

(assert (=> b!5844685 m!6767272))

(assert (=> b!5844685 m!6767192))

(declare-fun m!6767274 () Bool)

(assert (=> b!5844685 m!6767274))

(assert (=> b!5844687 m!6767016))

(assert (=> b!5844687 m!6767192))

(assert (=> b!5844687 m!6767192))

(assert (=> b!5844687 m!6767194))

(assert (=> d!1836128 m!6767016))

(assert (=> d!1836128 m!6767018))

(assert (=> d!1836128 m!6767022))

(declare-fun m!6767276 () Bool)

(assert (=> d!1836128 m!6767276))

(assert (=> b!5844677 m!6767022))

(declare-fun m!6767278 () Bool)

(assert (=> b!5844677 m!6767278))

(assert (=> b!5844678 m!6767016))

(assert (=> b!5844678 m!6767196))

(assert (=> b!5844684 m!6767016))

(assert (=> b!5844684 m!6767196))

(assert (=> b!5844264 d!1836128))

(declare-fun call!456763 () Regex!15913)

(declare-fun bm!456755 () Bool)

(declare-fun c!1035795 () Bool)

(declare-fun c!1035797 () Bool)

(assert (=> bm!456755 (= call!456763 (derivativeStep!4651 (ite c!1035797 (regTwo!32339 r!7292) (ite c!1035795 (reg!16242 r!7292) (regOne!32338 r!7292))) (head!12380 s!2326)))))

(declare-fun b!5844699 () Bool)

(declare-fun e!3584751 () Regex!15913)

(declare-fun call!456761 () Regex!15913)

(assert (=> b!5844699 (= e!3584751 (Union!15913 call!456761 call!456763))))

(declare-fun call!456762 () Regex!15913)

(declare-fun b!5844700 () Bool)

(declare-fun e!3584753 () Regex!15913)

(declare-fun call!456760 () Regex!15913)

(assert (=> b!5844700 (= e!3584753 (Union!15913 (Concat!24758 call!456762 (regTwo!32338 r!7292)) call!456760))))

(declare-fun b!5844701 () Bool)

(assert (=> b!5844701 (= e!3584753 (Union!15913 (Concat!24758 call!456760 (regTwo!32338 r!7292)) EmptyLang!15913))))

(declare-fun d!1836134 () Bool)

(declare-fun lt!2304047 () Regex!15913)

(assert (=> d!1836134 (validRegex!7649 lt!2304047)))

(declare-fun e!3584752 () Regex!15913)

(assert (=> d!1836134 (= lt!2304047 e!3584752)))

(declare-fun c!1035799 () Bool)

(assert (=> d!1836134 (= c!1035799 (or ((_ is EmptyExpr!15913) r!7292) ((_ is EmptyLang!15913) r!7292)))))

(assert (=> d!1836134 (validRegex!7649 r!7292)))

(assert (=> d!1836134 (= (derivativeStep!4651 r!7292 (head!12380 s!2326)) lt!2304047)))

(declare-fun b!5844702 () Bool)

(assert (=> b!5844702 (= e!3584752 EmptyLang!15913)))

(declare-fun b!5844703 () Bool)

(declare-fun c!1035798 () Bool)

(assert (=> b!5844703 (= c!1035798 (nullable!5913 (regOne!32338 r!7292)))))

(declare-fun e!3584754 () Regex!15913)

(assert (=> b!5844703 (= e!3584754 e!3584753)))

(declare-fun bm!456756 () Bool)

(assert (=> bm!456756 (= call!456760 call!456761)))

(declare-fun b!5844704 () Bool)

(declare-fun e!3584755 () Regex!15913)

(assert (=> b!5844704 (= e!3584752 e!3584755)))

(declare-fun c!1035796 () Bool)

(assert (=> b!5844704 (= c!1035796 ((_ is ElementMatch!15913) r!7292))))

(declare-fun b!5844705 () Bool)

(assert (=> b!5844705 (= e!3584755 (ite (= (head!12380 s!2326) (c!1035547 r!7292)) EmptyExpr!15913 EmptyLang!15913))))

(declare-fun b!5844706 () Bool)

(assert (=> b!5844706 (= e!3584754 (Concat!24758 call!456762 r!7292))))

(declare-fun bm!456757 () Bool)

(assert (=> bm!456757 (= call!456761 (derivativeStep!4651 (ite c!1035797 (regOne!32339 r!7292) (ite c!1035798 (regTwo!32338 r!7292) (regOne!32338 r!7292))) (head!12380 s!2326)))))

(declare-fun b!5844707 () Bool)

(assert (=> b!5844707 (= c!1035797 ((_ is Union!15913) r!7292))))

(assert (=> b!5844707 (= e!3584755 e!3584751)))

(declare-fun b!5844708 () Bool)

(assert (=> b!5844708 (= e!3584751 e!3584754)))

(assert (=> b!5844708 (= c!1035795 ((_ is Star!15913) r!7292))))

(declare-fun bm!456758 () Bool)

(assert (=> bm!456758 (= call!456762 call!456763)))

(assert (= (and d!1836134 c!1035799) b!5844702))

(assert (= (and d!1836134 (not c!1035799)) b!5844704))

(assert (= (and b!5844704 c!1035796) b!5844705))

(assert (= (and b!5844704 (not c!1035796)) b!5844707))

(assert (= (and b!5844707 c!1035797) b!5844699))

(assert (= (and b!5844707 (not c!1035797)) b!5844708))

(assert (= (and b!5844708 c!1035795) b!5844706))

(assert (= (and b!5844708 (not c!1035795)) b!5844703))

(assert (= (and b!5844703 c!1035798) b!5844700))

(assert (= (and b!5844703 (not c!1035798)) b!5844701))

(assert (= (or b!5844700 b!5844701) bm!456756))

(assert (= (or b!5844706 b!5844700) bm!456758))

(assert (= (or b!5844699 bm!456758) bm!456755))

(assert (= (or b!5844699 bm!456756) bm!456757))

(assert (=> bm!456755 m!6767020))

(declare-fun m!6767280 () Bool)

(assert (=> bm!456755 m!6767280))

(declare-fun m!6767282 () Bool)

(assert (=> d!1836134 m!6767282))

(assert (=> d!1836134 m!6766828))

(assert (=> b!5844703 m!6767146))

(assert (=> bm!456757 m!6767020))

(declare-fun m!6767284 () Bool)

(assert (=> bm!456757 m!6767284))

(assert (=> b!5844264 d!1836134))

(assert (=> b!5844264 d!1836072))

(assert (=> b!5844264 d!1836064))

(declare-fun d!1836136 () Bool)

(assert (=> d!1836136 (= (nullable!5913 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (nullableFct!1899 (h!70362 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))))

(declare-fun bs!1376958 () Bool)

(assert (= bs!1376958 d!1836136))

(declare-fun m!6767286 () Bool)

(assert (=> bs!1376958 m!6767286))

(assert (=> b!5844480 d!1836136))

(assert (=> d!1836026 d!1836076))

(declare-fun c!1035800 () Bool)

(declare-fun c!1035801 () Bool)

(declare-fun call!456764 () Bool)

(declare-fun bm!456759 () Bool)

(assert (=> bm!456759 (= call!456764 (validRegex!7649 (ite c!1035801 (reg!16242 (regTwo!32339 r!7292)) (ite c!1035800 (regTwo!32339 (regTwo!32339 r!7292)) (regTwo!32338 (regTwo!32339 r!7292))))))))

(declare-fun b!5844709 () Bool)

(declare-fun e!3584760 () Bool)

(declare-fun e!3584758 () Bool)

(assert (=> b!5844709 (= e!3584760 e!3584758)))

(declare-fun res!2461774 () Bool)

(assert (=> b!5844709 (=> (not res!2461774) (not e!3584758))))

(declare-fun call!456766 () Bool)

(assert (=> b!5844709 (= res!2461774 call!456766)))

(declare-fun b!5844710 () Bool)

(declare-fun e!3584761 () Bool)

(declare-fun e!3584759 () Bool)

(assert (=> b!5844710 (= e!3584761 e!3584759)))

(assert (=> b!5844710 (= c!1035801 ((_ is Star!15913) (regTwo!32339 r!7292)))))

(declare-fun b!5844711 () Bool)

(declare-fun res!2461776 () Bool)

(declare-fun e!3584756 () Bool)

(assert (=> b!5844711 (=> (not res!2461776) (not e!3584756))))

(assert (=> b!5844711 (= res!2461776 call!456766)))

(declare-fun e!3584762 () Bool)

(assert (=> b!5844711 (= e!3584762 e!3584756)))

(declare-fun b!5844712 () Bool)

(assert (=> b!5844712 (= e!3584759 e!3584762)))

(assert (=> b!5844712 (= c!1035800 ((_ is Union!15913) (regTwo!32339 r!7292)))))

(declare-fun b!5844714 () Bool)

(declare-fun e!3584757 () Bool)

(assert (=> b!5844714 (= e!3584759 e!3584757)))

(declare-fun res!2461772 () Bool)

(assert (=> b!5844714 (= res!2461772 (not (nullable!5913 (reg!16242 (regTwo!32339 r!7292)))))))

(assert (=> b!5844714 (=> (not res!2461772) (not e!3584757))))

(declare-fun bm!456760 () Bool)

(declare-fun call!456765 () Bool)

(assert (=> bm!456760 (= call!456765 call!456764)))

(declare-fun b!5844715 () Bool)

(assert (=> b!5844715 (= e!3584757 call!456764)))

(declare-fun b!5844716 () Bool)

(assert (=> b!5844716 (= e!3584758 call!456765)))

(declare-fun b!5844717 () Bool)

(declare-fun res!2461773 () Bool)

(assert (=> b!5844717 (=> res!2461773 e!3584760)))

(assert (=> b!5844717 (= res!2461773 (not ((_ is Concat!24758) (regTwo!32339 r!7292))))))

(assert (=> b!5844717 (= e!3584762 e!3584760)))

(declare-fun bm!456761 () Bool)

(assert (=> bm!456761 (= call!456766 (validRegex!7649 (ite c!1035800 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))))))

(declare-fun b!5844713 () Bool)

(assert (=> b!5844713 (= e!3584756 call!456765)))

(declare-fun d!1836138 () Bool)

(declare-fun res!2461775 () Bool)

(assert (=> d!1836138 (=> res!2461775 e!3584761)))

(assert (=> d!1836138 (= res!2461775 ((_ is ElementMatch!15913) (regTwo!32339 r!7292)))))

(assert (=> d!1836138 (= (validRegex!7649 (regTwo!32339 r!7292)) e!3584761)))

(assert (= (and d!1836138 (not res!2461775)) b!5844710))

(assert (= (and b!5844710 c!1035801) b!5844714))

(assert (= (and b!5844710 (not c!1035801)) b!5844712))

(assert (= (and b!5844714 res!2461772) b!5844715))

(assert (= (and b!5844712 c!1035800) b!5844711))

(assert (= (and b!5844712 (not c!1035800)) b!5844717))

(assert (= (and b!5844711 res!2461776) b!5844713))

(assert (= (and b!5844717 (not res!2461773)) b!5844709))

(assert (= (and b!5844709 res!2461774) b!5844716))

(assert (= (or b!5844713 b!5844716) bm!456760))

(assert (= (or b!5844711 b!5844709) bm!456761))

(assert (= (or b!5844715 bm!456760) bm!456759))

(declare-fun m!6767288 () Bool)

(assert (=> bm!456759 m!6767288))

(declare-fun m!6767290 () Bool)

(assert (=> b!5844714 m!6767290))

(declare-fun m!6767292 () Bool)

(assert (=> bm!456761 m!6767292))

(assert (=> d!1836026 d!1836138))

(declare-fun d!1836140 () Bool)

(assert (=> d!1836140 (= (isEmpty!35776 (t!377395 (exprs!5797 (h!70363 zl!343)))) ((_ is Nil!63914) (t!377395 (exprs!5797 (h!70363 zl!343)))))))

(assert (=> b!5844429 d!1836140))

(declare-fun b!5844719 () Bool)

(declare-fun c!1035802 () Bool)

(declare-fun e!3584764 () Bool)

(assert (=> b!5844719 (= c!1035802 e!3584764)))

(declare-fun res!2461777 () Bool)

(assert (=> b!5844719 (=> (not res!2461777) (not e!3584764))))

(assert (=> b!5844719 (= res!2461777 ((_ is Concat!24758) (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))))))

(declare-fun e!3584766 () (InoxSet Context!10594))

(declare-fun e!3584765 () (InoxSet Context!10594))

(assert (=> b!5844719 (= e!3584766 e!3584765)))

(declare-fun b!5844720 () Bool)

(declare-fun e!3584763 () (InoxSet Context!10594))

(declare-fun call!456767 () (InoxSet Context!10594))

(assert (=> b!5844720 (= e!3584763 call!456767)))

(declare-fun b!5844721 () Bool)

(declare-fun e!3584767 () (InoxSet Context!10594))

(assert (=> b!5844721 (= e!3584767 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844722 () Bool)

(assert (=> b!5844722 (= e!3584765 e!3584763)))

(declare-fun c!1035803 () Bool)

(assert (=> b!5844722 (= c!1035803 ((_ is Concat!24758) (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))))))

(declare-fun bm!456762 () Bool)

(declare-fun call!456769 () List!64038)

(assert (=> bm!456762 (= call!456769 ($colon$colon!1818 (exprs!5797 (ite c!1035686 lt!2303990 (Context!10595 call!456693))) (ite (or c!1035802 c!1035803) (regTwo!32338 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292))))))))

(declare-fun bm!456763 () Bool)

(declare-fun call!456770 () List!64038)

(assert (=> bm!456763 (= call!456770 call!456769)))

(declare-fun b!5844723 () Bool)

(declare-fun call!456772 () (InoxSet Context!10594))

(declare-fun call!456768 () (InoxSet Context!10594))

(assert (=> b!5844723 (= e!3584766 ((_ map or) call!456772 call!456768))))

(declare-fun e!3584768 () (InoxSet Context!10594))

(declare-fun b!5844724 () Bool)

(assert (=> b!5844724 (= e!3584768 (store ((as const (Array Context!10594 Bool)) false) (ite c!1035686 lt!2303990 (Context!10595 call!456693)) true))))

(declare-fun c!1035805 () Bool)

(declare-fun bm!456764 () Bool)

(assert (=> bm!456764 (= call!456768 (derivationStepZipperDown!1179 (ite c!1035805 (regTwo!32339 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (ite c!1035802 (regTwo!32338 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (ite c!1035803 (regOne!32338 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (reg!16242 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292))))))) (ite (or c!1035805 c!1035802) (ite c!1035686 lt!2303990 (Context!10595 call!456693)) (Context!10595 call!456770)) (h!70364 s!2326)))))

(declare-fun b!5844725 () Bool)

(assert (=> b!5844725 (= e!3584768 e!3584766)))

(assert (=> b!5844725 (= c!1035805 ((_ is Union!15913) (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))))))

(declare-fun d!1836142 () Bool)

(declare-fun c!1035804 () Bool)

(assert (=> d!1836142 (= c!1035804 (and ((_ is ElementMatch!15913) (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (= (c!1035547 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (h!70364 s!2326))))))

(assert (=> d!1836142 (= (derivationStepZipperDown!1179 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292))) (ite c!1035686 lt!2303990 (Context!10595 call!456693)) (h!70364 s!2326)) e!3584768)))

(declare-fun b!5844718 () Bool)

(declare-fun call!456771 () (InoxSet Context!10594))

(assert (=> b!5844718 (= e!3584765 ((_ map or) call!456772 call!456771))))

(declare-fun b!5844726 () Bool)

(declare-fun c!1035806 () Bool)

(assert (=> b!5844726 (= c!1035806 ((_ is Star!15913) (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))))))

(assert (=> b!5844726 (= e!3584763 e!3584767)))

(declare-fun b!5844727 () Bool)

(assert (=> b!5844727 (= e!3584767 call!456767)))

(declare-fun b!5844728 () Bool)

(assert (=> b!5844728 (= e!3584764 (nullable!5913 (regOne!32338 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292))))))))

(declare-fun bm!456765 () Bool)

(assert (=> bm!456765 (= call!456771 call!456768)))

(declare-fun bm!456766 () Bool)

(assert (=> bm!456766 (= call!456767 call!456771)))

(declare-fun bm!456767 () Bool)

(assert (=> bm!456767 (= call!456772 (derivationStepZipperDown!1179 (ite c!1035805 (regOne!32339 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292)))) (regOne!32338 (ite c!1035686 (regOne!32339 (regTwo!32339 r!7292)) (regOne!32338 (regTwo!32339 r!7292))))) (ite c!1035805 (ite c!1035686 lt!2303990 (Context!10595 call!456693)) (Context!10595 call!456769)) (h!70364 s!2326)))))

(assert (= (and d!1836142 c!1035804) b!5844724))

(assert (= (and d!1836142 (not c!1035804)) b!5844725))

(assert (= (and b!5844725 c!1035805) b!5844723))

(assert (= (and b!5844725 (not c!1035805)) b!5844719))

(assert (= (and b!5844719 res!2461777) b!5844728))

(assert (= (and b!5844719 c!1035802) b!5844718))

(assert (= (and b!5844719 (not c!1035802)) b!5844722))

(assert (= (and b!5844722 c!1035803) b!5844720))

(assert (= (and b!5844722 (not c!1035803)) b!5844726))

(assert (= (and b!5844726 c!1035806) b!5844727))

(assert (= (and b!5844726 (not c!1035806)) b!5844721))

(assert (= (or b!5844720 b!5844727) bm!456763))

(assert (= (or b!5844720 b!5844727) bm!456766))

(assert (= (or b!5844718 bm!456763) bm!456762))

(assert (= (or b!5844718 bm!456766) bm!456765))

(assert (= (or b!5844723 bm!456765) bm!456764))

(assert (= (or b!5844723 b!5844718) bm!456767))

(declare-fun m!6767294 () Bool)

(assert (=> bm!456764 m!6767294))

(declare-fun m!6767296 () Bool)

(assert (=> bm!456767 m!6767296))

(declare-fun m!6767298 () Bool)

(assert (=> b!5844728 m!6767298))

(declare-fun m!6767300 () Bool)

(assert (=> b!5844724 m!6767300))

(declare-fun m!6767302 () Bool)

(assert (=> bm!456762 m!6767302))

(assert (=> bm!456691 d!1836142))

(declare-fun bm!456768 () Bool)

(declare-fun c!1035808 () Bool)

(declare-fun c!1035807 () Bool)

(declare-fun call!456773 () Bool)

(assert (=> bm!456768 (= call!456773 (validRegex!7649 (ite c!1035808 (reg!16242 (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))) (ite c!1035807 (regTwo!32339 (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))) (regTwo!32338 (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292))))))))))

(declare-fun b!5844729 () Bool)

(declare-fun e!3584773 () Bool)

(declare-fun e!3584771 () Bool)

(assert (=> b!5844729 (= e!3584773 e!3584771)))

(declare-fun res!2461780 () Bool)

(assert (=> b!5844729 (=> (not res!2461780) (not e!3584771))))

(declare-fun call!456775 () Bool)

(assert (=> b!5844729 (= res!2461780 call!456775)))

(declare-fun b!5844730 () Bool)

(declare-fun e!3584774 () Bool)

(declare-fun e!3584772 () Bool)

(assert (=> b!5844730 (= e!3584774 e!3584772)))

(assert (=> b!5844730 (= c!1035808 ((_ is Star!15913) (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))))))

(declare-fun b!5844731 () Bool)

(declare-fun res!2461782 () Bool)

(declare-fun e!3584769 () Bool)

(assert (=> b!5844731 (=> (not res!2461782) (not e!3584769))))

(assert (=> b!5844731 (= res!2461782 call!456775)))

(declare-fun e!3584775 () Bool)

(assert (=> b!5844731 (= e!3584775 e!3584769)))

(declare-fun b!5844732 () Bool)

(assert (=> b!5844732 (= e!3584772 e!3584775)))

(assert (=> b!5844732 (= c!1035807 ((_ is Union!15913) (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))))))

(declare-fun b!5844734 () Bool)

(declare-fun e!3584770 () Bool)

(assert (=> b!5844734 (= e!3584772 e!3584770)))

(declare-fun res!2461778 () Bool)

(assert (=> b!5844734 (= res!2461778 (not (nullable!5913 (reg!16242 (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))))))))

(assert (=> b!5844734 (=> (not res!2461778) (not e!3584770))))

(declare-fun bm!456769 () Bool)

(declare-fun call!456774 () Bool)

(assert (=> bm!456769 (= call!456774 call!456773)))

(declare-fun b!5844735 () Bool)

(assert (=> b!5844735 (= e!3584770 call!456773)))

(declare-fun b!5844736 () Bool)

(assert (=> b!5844736 (= e!3584771 call!456774)))

(declare-fun b!5844737 () Bool)

(declare-fun res!2461779 () Bool)

(assert (=> b!5844737 (=> res!2461779 e!3584773)))

(assert (=> b!5844737 (= res!2461779 (not ((_ is Concat!24758) (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292))))))))

(assert (=> b!5844737 (= e!3584775 e!3584773)))

(declare-fun bm!456770 () Bool)

(assert (=> bm!456770 (= call!456775 (validRegex!7649 (ite c!1035807 (regOne!32339 (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))) (regOne!32338 (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))))))))

(declare-fun b!5844733 () Bool)

(assert (=> b!5844733 (= e!3584769 call!456774)))

(declare-fun d!1836144 () Bool)

(declare-fun res!2461781 () Bool)

(assert (=> d!1836144 (=> res!2461781 e!3584774)))

(assert (=> d!1836144 (= res!2461781 ((_ is ElementMatch!15913) (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))))))

(assert (=> d!1836144 (= (validRegex!7649 (ite c!1035734 (reg!16242 r!7292) (ite c!1035733 (regTwo!32339 r!7292) (regTwo!32338 r!7292)))) e!3584774)))

(assert (= (and d!1836144 (not res!2461781)) b!5844730))

(assert (= (and b!5844730 c!1035808) b!5844734))

(assert (= (and b!5844730 (not c!1035808)) b!5844732))

(assert (= (and b!5844734 res!2461778) b!5844735))

(assert (= (and b!5844732 c!1035807) b!5844731))

(assert (= (and b!5844732 (not c!1035807)) b!5844737))

(assert (= (and b!5844731 res!2461782) b!5844733))

(assert (= (and b!5844737 (not res!2461779)) b!5844729))

(assert (= (and b!5844729 res!2461780) b!5844736))

(assert (= (or b!5844733 b!5844736) bm!456769))

(assert (= (or b!5844731 b!5844729) bm!456770))

(assert (= (or b!5844735 bm!456769) bm!456768))

(declare-fun m!6767310 () Bool)

(assert (=> bm!456768 m!6767310))

(declare-fun m!6767312 () Bool)

(assert (=> b!5844734 m!6767312))

(declare-fun m!6767314 () Bool)

(assert (=> bm!456770 m!6767314))

(assert (=> bm!456704 d!1836144))

(declare-fun bs!1376966 () Bool)

(declare-fun d!1836148 () Bool)

(assert (= bs!1376966 (and d!1836148 d!1836012)))

(declare-fun lambda!319710 () Int)

(assert (=> bs!1376966 (= lambda!319710 lambda!319687)))

(declare-fun bs!1376967 () Bool)

(assert (= bs!1376967 (and d!1836148 d!1836034)))

(assert (=> bs!1376967 (= lambda!319710 lambda!319693)))

(declare-fun bs!1376968 () Bool)

(assert (= bs!1376968 (and d!1836148 d!1836014)))

(assert (=> bs!1376968 (= lambda!319710 lambda!319688)))

(declare-fun bs!1376969 () Bool)

(assert (= bs!1376969 (and d!1836148 d!1836102)))

(assert (=> bs!1376969 (= lambda!319710 lambda!319706)))

(declare-fun bs!1376970 () Bool)

(assert (= bs!1376970 (and d!1836148 d!1836040)))

(assert (=> bs!1376970 (= lambda!319710 lambda!319702)))

(declare-fun bs!1376971 () Bool)

(assert (= bs!1376971 (and d!1836148 d!1836036)))

(assert (=> bs!1376971 (= lambda!319710 lambda!319696)))

(declare-fun bs!1376972 () Bool)

(assert (= bs!1376972 (and d!1836148 d!1836074)))

(assert (=> bs!1376972 (= lambda!319710 lambda!319703)))

(declare-fun bs!1376973 () Bool)

(assert (= bs!1376973 (and d!1836148 d!1836038)))

(assert (=> bs!1376973 (= lambda!319710 lambda!319699)))

(assert (=> d!1836148 (= (inv!83029 (h!70363 (t!377396 zl!343))) (forall!15000 (exprs!5797 (h!70363 (t!377396 zl!343))) lambda!319710))))

(declare-fun bs!1376974 () Bool)

(assert (= bs!1376974 d!1836148))

(declare-fun m!6767320 () Bool)

(assert (=> bs!1376974 m!6767320))

(assert (=> b!5844525 d!1836148))

(declare-fun bm!456777 () Bool)

(declare-fun c!1035814 () Bool)

(declare-fun call!456782 () Bool)

(declare-fun c!1035815 () Bool)

(assert (=> bm!456777 (= call!456782 (validRegex!7649 (ite c!1035815 (reg!16242 lt!2304034) (ite c!1035814 (regTwo!32339 lt!2304034) (regTwo!32338 lt!2304034)))))))

(declare-fun b!5844749 () Bool)

(declare-fun e!3584786 () Bool)

(declare-fun e!3584784 () Bool)

(assert (=> b!5844749 (= e!3584786 e!3584784)))

(declare-fun res!2461786 () Bool)

(assert (=> b!5844749 (=> (not res!2461786) (not e!3584784))))

(declare-fun call!456784 () Bool)

(assert (=> b!5844749 (= res!2461786 call!456784)))

(declare-fun b!5844750 () Bool)

(declare-fun e!3584787 () Bool)

(declare-fun e!3584785 () Bool)

(assert (=> b!5844750 (= e!3584787 e!3584785)))

(assert (=> b!5844750 (= c!1035815 ((_ is Star!15913) lt!2304034))))

(declare-fun b!5844751 () Bool)

(declare-fun res!2461788 () Bool)

(declare-fun e!3584782 () Bool)

(assert (=> b!5844751 (=> (not res!2461788) (not e!3584782))))

(assert (=> b!5844751 (= res!2461788 call!456784)))

(declare-fun e!3584788 () Bool)

(assert (=> b!5844751 (= e!3584788 e!3584782)))

(declare-fun b!5844752 () Bool)

(assert (=> b!5844752 (= e!3584785 e!3584788)))

(assert (=> b!5844752 (= c!1035814 ((_ is Union!15913) lt!2304034))))

(declare-fun b!5844754 () Bool)

(declare-fun e!3584783 () Bool)

(assert (=> b!5844754 (= e!3584785 e!3584783)))

(declare-fun res!2461784 () Bool)

(assert (=> b!5844754 (= res!2461784 (not (nullable!5913 (reg!16242 lt!2304034))))))

(assert (=> b!5844754 (=> (not res!2461784) (not e!3584783))))

(declare-fun bm!456778 () Bool)

(declare-fun call!456783 () Bool)

(assert (=> bm!456778 (= call!456783 call!456782)))

(declare-fun b!5844755 () Bool)

(assert (=> b!5844755 (= e!3584783 call!456782)))

(declare-fun b!5844756 () Bool)

(assert (=> b!5844756 (= e!3584784 call!456783)))

(declare-fun b!5844757 () Bool)

(declare-fun res!2461785 () Bool)

(assert (=> b!5844757 (=> res!2461785 e!3584786)))

(assert (=> b!5844757 (= res!2461785 (not ((_ is Concat!24758) lt!2304034)))))

(assert (=> b!5844757 (= e!3584788 e!3584786)))

(declare-fun bm!456779 () Bool)

(assert (=> bm!456779 (= call!456784 (validRegex!7649 (ite c!1035814 (regOne!32339 lt!2304034) (regOne!32338 lt!2304034))))))

(declare-fun b!5844753 () Bool)

(assert (=> b!5844753 (= e!3584782 call!456783)))

(declare-fun d!1836150 () Bool)

(declare-fun res!2461787 () Bool)

(assert (=> d!1836150 (=> res!2461787 e!3584787)))

(assert (=> d!1836150 (= res!2461787 ((_ is ElementMatch!15913) lt!2304034))))

(assert (=> d!1836150 (= (validRegex!7649 lt!2304034) e!3584787)))

(assert (= (and d!1836150 (not res!2461787)) b!5844750))

(assert (= (and b!5844750 c!1035815) b!5844754))

(assert (= (and b!5844750 (not c!1035815)) b!5844752))

(assert (= (and b!5844754 res!2461784) b!5844755))

(assert (= (and b!5844752 c!1035814) b!5844751))

(assert (= (and b!5844752 (not c!1035814)) b!5844757))

(assert (= (and b!5844751 res!2461788) b!5844753))

(assert (= (and b!5844757 (not res!2461785)) b!5844749))

(assert (= (and b!5844749 res!2461786) b!5844756))

(assert (= (or b!5844753 b!5844756) bm!456778))

(assert (= (or b!5844751 b!5844749) bm!456779))

(assert (= (or b!5844755 bm!456778) bm!456777))

(declare-fun m!6767328 () Bool)

(assert (=> bm!456777 m!6767328))

(declare-fun m!6767330 () Bool)

(assert (=> b!5844754 m!6767330))

(declare-fun m!6767332 () Bool)

(assert (=> bm!456779 m!6767332))

(assert (=> d!1836036 d!1836150))

(declare-fun d!1836154 () Bool)

(declare-fun res!2461794 () Bool)

(declare-fun e!3584796 () Bool)

(assert (=> d!1836154 (=> res!2461794 e!3584796)))

(assert (=> d!1836154 (= res!2461794 ((_ is Nil!63914) (unfocusZipperList!1334 zl!343)))))

(assert (=> d!1836154 (= (forall!15000 (unfocusZipperList!1334 zl!343) lambda!319696) e!3584796)))

(declare-fun b!5844767 () Bool)

(declare-fun e!3584797 () Bool)

(assert (=> b!5844767 (= e!3584796 e!3584797)))

(declare-fun res!2461795 () Bool)

(assert (=> b!5844767 (=> (not res!2461795) (not e!3584797))))

(assert (=> b!5844767 (= res!2461795 (dynLambda!24983 lambda!319696 (h!70362 (unfocusZipperList!1334 zl!343))))))

(declare-fun b!5844768 () Bool)

(assert (=> b!5844768 (= e!3584797 (forall!15000 (t!377395 (unfocusZipperList!1334 zl!343)) lambda!319696))))

(assert (= (and d!1836154 (not res!2461794)) b!5844767))

(assert (= (and b!5844767 res!2461795) b!5844768))

(declare-fun b_lambda!220057 () Bool)

(assert (=> (not b_lambda!220057) (not b!5844767)))

(declare-fun m!6767340 () Bool)

(assert (=> b!5844767 m!6767340))

(declare-fun m!6767342 () Bool)

(assert (=> b!5844768 m!6767342))

(assert (=> d!1836036 d!1836154))

(declare-fun d!1836158 () Bool)

(declare-fun res!2461796 () Bool)

(declare-fun e!3584798 () Bool)

(assert (=> d!1836158 (=> res!2461796 e!3584798)))

(assert (=> d!1836158 (= res!2461796 ((_ is Nil!63914) (exprs!5797 setElem!39600)))))

(assert (=> d!1836158 (= (forall!15000 (exprs!5797 setElem!39600) lambda!319688) e!3584798)))

(declare-fun b!5844769 () Bool)

(declare-fun e!3584799 () Bool)

(assert (=> b!5844769 (= e!3584798 e!3584799)))

(declare-fun res!2461797 () Bool)

(assert (=> b!5844769 (=> (not res!2461797) (not e!3584799))))

(assert (=> b!5844769 (= res!2461797 (dynLambda!24983 lambda!319688 (h!70362 (exprs!5797 setElem!39600))))))

(declare-fun b!5844770 () Bool)

(assert (=> b!5844770 (= e!3584799 (forall!15000 (t!377395 (exprs!5797 setElem!39600)) lambda!319688))))

(assert (= (and d!1836158 (not res!2461796)) b!5844769))

(assert (= (and b!5844769 res!2461797) b!5844770))

(declare-fun b_lambda!220059 () Bool)

(assert (=> (not b_lambda!220059) (not b!5844769)))

(declare-fun m!6767344 () Bool)

(assert (=> b!5844769 m!6767344))

(declare-fun m!6767346 () Bool)

(assert (=> b!5844770 m!6767346))

(assert (=> d!1836014 d!1836158))

(assert (=> b!5844329 d!1836072))

(declare-fun d!1836160 () Bool)

(declare-fun c!1035824 () Bool)

(assert (=> d!1836160 (= c!1035824 ((_ is Nil!63915) lt!2304027))))

(declare-fun e!3584809 () (InoxSet Context!10594))

(assert (=> d!1836160 (= (content!11743 lt!2304027) e!3584809)))

(declare-fun b!5844786 () Bool)

(assert (=> b!5844786 (= e!3584809 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844787 () Bool)

(assert (=> b!5844787 (= e!3584809 ((_ map or) (store ((as const (Array Context!10594 Bool)) false) (h!70363 lt!2304027) true) (content!11743 (t!377396 lt!2304027))))))

(assert (= (and d!1836160 c!1035824) b!5844786))

(assert (= (and d!1836160 (not c!1035824)) b!5844787))

(declare-fun m!6767350 () Bool)

(assert (=> b!5844787 m!6767350))

(declare-fun m!6767352 () Bool)

(assert (=> b!5844787 m!6767352))

(assert (=> b!5844269 d!1836160))

(declare-fun d!1836164 () Bool)

(declare-fun choose!44357 (Int) Bool)

(assert (=> d!1836164 (= (Exists!2985 (ite c!1035656 lambda!319683 lambda!319684)) (choose!44357 (ite c!1035656 lambda!319683 lambda!319684)))))

(declare-fun bs!1376984 () Bool)

(assert (= bs!1376984 d!1836164))

(declare-fun m!6767354 () Bool)

(assert (=> bs!1376984 m!6767354))

(assert (=> bm!456660 d!1836164))

(declare-fun b!5844788 () Bool)

(declare-fun e!3584813 () Bool)

(declare-fun lt!2304048 () Bool)

(declare-fun call!456790 () Bool)

(assert (=> b!5844788 (= e!3584813 (= lt!2304048 call!456790))))

(declare-fun b!5844789 () Bool)

(declare-fun res!2461807 () Bool)

(declare-fun e!3584814 () Bool)

(assert (=> b!5844789 (=> (not res!2461807) (not e!3584814))))

(assert (=> b!5844789 (= res!2461807 (isEmpty!35774 (tail!11464 (tail!11464 s!2326))))))

(declare-fun b!5844790 () Bool)

(declare-fun e!3584812 () Bool)

(declare-fun e!3584811 () Bool)

(assert (=> b!5844790 (= e!3584812 e!3584811)))

(declare-fun res!2461802 () Bool)

(assert (=> b!5844790 (=> res!2461802 e!3584811)))

(assert (=> b!5844790 (= res!2461802 call!456790)))

(declare-fun d!1836166 () Bool)

(assert (=> d!1836166 e!3584813))

(declare-fun c!1035827 () Bool)

(assert (=> d!1836166 (= c!1035827 ((_ is EmptyExpr!15913) (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326))))))

(declare-fun e!3584815 () Bool)

(assert (=> d!1836166 (= lt!2304048 e!3584815)))

(declare-fun c!1035826 () Bool)

(assert (=> d!1836166 (= c!1035826 (isEmpty!35774 (tail!11464 s!2326)))))

(assert (=> d!1836166 (validRegex!7649 (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326)))))

(assert (=> d!1836166 (= (matchR!8096 (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326)) (tail!11464 s!2326)) lt!2304048)))

(declare-fun b!5844791 () Bool)

(assert (=> b!5844791 (= e!3584815 (nullable!5913 (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326))))))

(declare-fun b!5844792 () Bool)

(assert (=> b!5844792 (= e!3584811 (not (= (head!12380 (tail!11464 s!2326)) (c!1035547 (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326))))))))

(declare-fun b!5844793 () Bool)

(declare-fun res!2461805 () Bool)

(assert (=> b!5844793 (=> (not res!2461805) (not e!3584814))))

(assert (=> b!5844793 (= res!2461805 (not call!456790))))

(declare-fun b!5844794 () Bool)

(declare-fun e!3584816 () Bool)

(assert (=> b!5844794 (= e!3584813 e!3584816)))

(declare-fun c!1035825 () Bool)

(assert (=> b!5844794 (= c!1035825 ((_ is EmptyLang!15913) (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326))))))

(declare-fun b!5844795 () Bool)

(declare-fun e!3584810 () Bool)

(assert (=> b!5844795 (= e!3584810 e!3584812)))

(declare-fun res!2461803 () Bool)

(assert (=> b!5844795 (=> (not res!2461803) (not e!3584812))))

(assert (=> b!5844795 (= res!2461803 (not lt!2304048))))

(declare-fun b!5844796 () Bool)

(declare-fun res!2461804 () Bool)

(assert (=> b!5844796 (=> res!2461804 e!3584810)))

(assert (=> b!5844796 (= res!2461804 e!3584814)))

(declare-fun res!2461801 () Bool)

(assert (=> b!5844796 (=> (not res!2461801) (not e!3584814))))

(assert (=> b!5844796 (= res!2461801 lt!2304048)))

(declare-fun b!5844797 () Bool)

(declare-fun res!2461808 () Bool)

(assert (=> b!5844797 (=> res!2461808 e!3584810)))

(assert (=> b!5844797 (= res!2461808 (not ((_ is ElementMatch!15913) (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326)))))))

(assert (=> b!5844797 (= e!3584816 e!3584810)))

(declare-fun b!5844798 () Bool)

(assert (=> b!5844798 (= e!3584814 (= (head!12380 (tail!11464 s!2326)) (c!1035547 (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326)))))))

(declare-fun b!5844799 () Bool)

(assert (=> b!5844799 (= e!3584815 (matchR!8096 (derivativeStep!4651 (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326)) (head!12380 (tail!11464 s!2326))) (tail!11464 (tail!11464 s!2326))))))

(declare-fun bm!456785 () Bool)

(assert (=> bm!456785 (= call!456790 (isEmpty!35774 (tail!11464 s!2326)))))

(declare-fun b!5844800 () Bool)

(assert (=> b!5844800 (= e!3584816 (not lt!2304048))))

(declare-fun b!5844801 () Bool)

(declare-fun res!2461806 () Bool)

(assert (=> b!5844801 (=> res!2461806 e!3584811)))

(assert (=> b!5844801 (= res!2461806 (not (isEmpty!35774 (tail!11464 (tail!11464 s!2326)))))))

(assert (= (and d!1836166 c!1035826) b!5844791))

(assert (= (and d!1836166 (not c!1035826)) b!5844799))

(assert (= (and d!1836166 c!1035827) b!5844788))

(assert (= (and d!1836166 (not c!1035827)) b!5844794))

(assert (= (and b!5844794 c!1035825) b!5844800))

(assert (= (and b!5844794 (not c!1035825)) b!5844797))

(assert (= (and b!5844797 (not res!2461808)) b!5844796))

(assert (= (and b!5844796 res!2461801) b!5844793))

(assert (= (and b!5844793 res!2461805) b!5844789))

(assert (= (and b!5844789 res!2461807) b!5844798))

(assert (= (and b!5844796 (not res!2461804)) b!5844795))

(assert (= (and b!5844795 res!2461803) b!5844790))

(assert (= (and b!5844790 (not res!2461802)) b!5844801))

(assert (= (and b!5844801 (not res!2461806)) b!5844792))

(assert (= (or b!5844788 b!5844790 b!5844793) bm!456785))

(assert (=> bm!456785 m!6767016))

(assert (=> bm!456785 m!6767018))

(assert (=> b!5844789 m!6767016))

(assert (=> b!5844789 m!6767192))

(assert (=> b!5844789 m!6767192))

(assert (=> b!5844789 m!6767194))

(assert (=> b!5844799 m!6767016))

(assert (=> b!5844799 m!6767196))

(assert (=> b!5844799 m!6767084))

(assert (=> b!5844799 m!6767196))

(declare-fun m!6767356 () Bool)

(assert (=> b!5844799 m!6767356))

(assert (=> b!5844799 m!6767016))

(assert (=> b!5844799 m!6767192))

(assert (=> b!5844799 m!6767356))

(assert (=> b!5844799 m!6767192))

(declare-fun m!6767358 () Bool)

(assert (=> b!5844799 m!6767358))

(assert (=> b!5844801 m!6767016))

(assert (=> b!5844801 m!6767192))

(assert (=> b!5844801 m!6767192))

(assert (=> b!5844801 m!6767194))

(assert (=> d!1836166 m!6767016))

(assert (=> d!1836166 m!6767018))

(assert (=> d!1836166 m!6767084))

(declare-fun m!6767360 () Bool)

(assert (=> d!1836166 m!6767360))

(assert (=> b!5844791 m!6767084))

(declare-fun m!6767362 () Bool)

(assert (=> b!5844791 m!6767362))

(assert (=> b!5844792 m!6767016))

(assert (=> b!5844792 m!6767196))

(assert (=> b!5844798 m!6767016))

(assert (=> b!5844798 m!6767196))

(assert (=> b!5844361 d!1836166))

(declare-fun bm!456786 () Bool)

(declare-fun c!1035830 () Bool)

(declare-fun c!1035828 () Bool)

(declare-fun call!456794 () Regex!15913)

(assert (=> bm!456786 (= call!456794 (derivativeStep!4651 (ite c!1035830 (regTwo!32339 (regOne!32339 r!7292)) (ite c!1035828 (reg!16242 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (head!12380 s!2326)))))

(declare-fun b!5844802 () Bool)

(declare-fun e!3584817 () Regex!15913)

(declare-fun call!456792 () Regex!15913)

(assert (=> b!5844802 (= e!3584817 (Union!15913 call!456792 call!456794))))

(declare-fun e!3584819 () Regex!15913)

(declare-fun call!456793 () Regex!15913)

(declare-fun b!5844803 () Bool)

(declare-fun call!456791 () Regex!15913)

(assert (=> b!5844803 (= e!3584819 (Union!15913 (Concat!24758 call!456793 (regTwo!32338 (regOne!32339 r!7292))) call!456791))))

(declare-fun b!5844804 () Bool)

(assert (=> b!5844804 (= e!3584819 (Union!15913 (Concat!24758 call!456791 (regTwo!32338 (regOne!32339 r!7292))) EmptyLang!15913))))

(declare-fun d!1836168 () Bool)

(declare-fun lt!2304049 () Regex!15913)

(assert (=> d!1836168 (validRegex!7649 lt!2304049)))

(declare-fun e!3584818 () Regex!15913)

(assert (=> d!1836168 (= lt!2304049 e!3584818)))

(declare-fun c!1035832 () Bool)

(assert (=> d!1836168 (= c!1035832 (or ((_ is EmptyExpr!15913) (regOne!32339 r!7292)) ((_ is EmptyLang!15913) (regOne!32339 r!7292))))))

(assert (=> d!1836168 (validRegex!7649 (regOne!32339 r!7292))))

(assert (=> d!1836168 (= (derivativeStep!4651 (regOne!32339 r!7292) (head!12380 s!2326)) lt!2304049)))

(declare-fun b!5844805 () Bool)

(assert (=> b!5844805 (= e!3584818 EmptyLang!15913)))

(declare-fun b!5844806 () Bool)

(declare-fun c!1035831 () Bool)

(assert (=> b!5844806 (= c!1035831 (nullable!5913 (regOne!32338 (regOne!32339 r!7292))))))

(declare-fun e!3584820 () Regex!15913)

(assert (=> b!5844806 (= e!3584820 e!3584819)))

(declare-fun bm!456787 () Bool)

(assert (=> bm!456787 (= call!456791 call!456792)))

(declare-fun b!5844807 () Bool)

(declare-fun e!3584821 () Regex!15913)

(assert (=> b!5844807 (= e!3584818 e!3584821)))

(declare-fun c!1035829 () Bool)

(assert (=> b!5844807 (= c!1035829 ((_ is ElementMatch!15913) (regOne!32339 r!7292)))))

(declare-fun b!5844808 () Bool)

(assert (=> b!5844808 (= e!3584821 (ite (= (head!12380 s!2326) (c!1035547 (regOne!32339 r!7292))) EmptyExpr!15913 EmptyLang!15913))))

(declare-fun b!5844809 () Bool)

(assert (=> b!5844809 (= e!3584820 (Concat!24758 call!456793 (regOne!32339 r!7292)))))

(declare-fun bm!456788 () Bool)

(assert (=> bm!456788 (= call!456792 (derivativeStep!4651 (ite c!1035830 (regOne!32339 (regOne!32339 r!7292)) (ite c!1035831 (regTwo!32338 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (head!12380 s!2326)))))

(declare-fun b!5844810 () Bool)

(assert (=> b!5844810 (= c!1035830 ((_ is Union!15913) (regOne!32339 r!7292)))))

(assert (=> b!5844810 (= e!3584821 e!3584817)))

(declare-fun b!5844811 () Bool)

(assert (=> b!5844811 (= e!3584817 e!3584820)))

(assert (=> b!5844811 (= c!1035828 ((_ is Star!15913) (regOne!32339 r!7292)))))

(declare-fun bm!456789 () Bool)

(assert (=> bm!456789 (= call!456793 call!456794)))

(assert (= (and d!1836168 c!1035832) b!5844805))

(assert (= (and d!1836168 (not c!1035832)) b!5844807))

(assert (= (and b!5844807 c!1035829) b!5844808))

(assert (= (and b!5844807 (not c!1035829)) b!5844810))

(assert (= (and b!5844810 c!1035830) b!5844802))

(assert (= (and b!5844810 (not c!1035830)) b!5844811))

(assert (= (and b!5844811 c!1035828) b!5844809))

(assert (= (and b!5844811 (not c!1035828)) b!5844806))

(assert (= (and b!5844806 c!1035831) b!5844803))

(assert (= (and b!5844806 (not c!1035831)) b!5844804))

(assert (= (or b!5844803 b!5844804) bm!456787))

(assert (= (or b!5844809 b!5844803) bm!456789))

(assert (= (or b!5844802 bm!456789) bm!456786))

(assert (= (or b!5844802 bm!456787) bm!456788))

(assert (=> bm!456786 m!6767020))

(declare-fun m!6767370 () Bool)

(assert (=> bm!456786 m!6767370))

(declare-fun m!6767372 () Bool)

(assert (=> d!1836168 m!6767372))

(assert (=> d!1836168 m!6767066))

(assert (=> b!5844806 m!6767044))

(assert (=> bm!456788 m!6767020))

(declare-fun m!6767374 () Bool)

(assert (=> bm!456788 m!6767374))

(assert (=> b!5844361 d!1836168))

(assert (=> b!5844361 d!1836072))

(assert (=> b!5844361 d!1836064))

(declare-fun d!1836172 () Bool)

(declare-fun res!2461809 () Bool)

(declare-fun e!3584822 () Bool)

(assert (=> d!1836172 (=> res!2461809 e!3584822)))

(assert (=> d!1836172 (= res!2461809 ((_ is Nil!63914) (exprs!5797 (h!70363 zl!343))))))

(assert (=> d!1836172 (= (forall!15000 (exprs!5797 (h!70363 zl!343)) lambda!319687) e!3584822)))

(declare-fun b!5844812 () Bool)

(declare-fun e!3584823 () Bool)

(assert (=> b!5844812 (= e!3584822 e!3584823)))

(declare-fun res!2461810 () Bool)

(assert (=> b!5844812 (=> (not res!2461810) (not e!3584823))))

(assert (=> b!5844812 (= res!2461810 (dynLambda!24983 lambda!319687 (h!70362 (exprs!5797 (h!70363 zl!343)))))))

(declare-fun b!5844813 () Bool)

(assert (=> b!5844813 (= e!3584823 (forall!15000 (t!377395 (exprs!5797 (h!70363 zl!343))) lambda!319687))))

(assert (= (and d!1836172 (not res!2461809)) b!5844812))

(assert (= (and b!5844812 res!2461810) b!5844813))

(declare-fun b_lambda!220061 () Bool)

(assert (=> (not b_lambda!220061) (not b!5844812)))

(declare-fun m!6767376 () Bool)

(assert (=> b!5844812 m!6767376))

(declare-fun m!6767378 () Bool)

(assert (=> b!5844813 m!6767378))

(assert (=> d!1836012 d!1836172))

(assert (=> b!5844148 d!1836030))

(declare-fun d!1836174 () Bool)

(assert (=> d!1836174 (= (nullable!5913 (reg!16242 r!7292)) (nullableFct!1899 (reg!16242 r!7292)))))

(declare-fun bs!1376996 () Bool)

(assert (= bs!1376996 d!1836174))

(declare-fun m!6767384 () Bool)

(assert (=> bs!1376996 m!6767384))

(assert (=> b!5844453 d!1836174))

(declare-fun d!1836180 () Bool)

(assert (=> d!1836180 (= (head!12381 (unfocusZipperList!1334 zl!343)) (h!70362 (unfocusZipperList!1334 zl!343)))))

(assert (=> b!5844386 d!1836180))

(declare-fun d!1836182 () Bool)

(assert (=> d!1836182 (= (Exists!2985 (ite c!1035691 lambda!319689 lambda!319690)) (choose!44357 (ite c!1035691 lambda!319689 lambda!319690)))))

(declare-fun bs!1376997 () Bool)

(assert (= bs!1376997 d!1836182))

(declare-fun m!6767386 () Bool)

(assert (=> bs!1376997 m!6767386))

(assert (=> bm!456692 d!1836182))

(declare-fun bs!1376998 () Bool)

(declare-fun b!5844834 () Bool)

(assert (= bs!1376998 (and b!5844834 b!5844323)))

(declare-fun lambda!319713 () Int)

(assert (=> bs!1376998 (= (and (= (reg!16242 (regOne!32339 (regTwo!32339 r!7292))) (reg!16242 (regTwo!32339 r!7292))) (= (regOne!32339 (regTwo!32339 r!7292)) (regTwo!32339 r!7292))) (= lambda!319713 lambda!319689))))

(declare-fun bs!1377000 () Bool)

(assert (= bs!1377000 (and b!5844834 b!5844320)))

(assert (=> bs!1377000 (not (= lambda!319713 lambda!319690))))

(declare-fun bs!1377003 () Bool)

(assert (= bs!1377003 (and b!5844834 b!5844153)))

(assert (=> bs!1377003 (not (= lambda!319713 lambda!319684))))

(declare-fun bs!1377006 () Bool)

(assert (= bs!1377006 (and b!5844834 b!5844659)))

(assert (=> bs!1377006 (= (and (= (reg!16242 (regOne!32339 (regTwo!32339 r!7292))) (reg!16242 (regTwo!32339 (regOne!32339 r!7292)))) (= (regOne!32339 (regTwo!32339 r!7292)) (regTwo!32339 (regOne!32339 r!7292)))) (= lambda!319713 lambda!319704))))

(declare-fun bs!1377009 () Bool)

(assert (= bs!1377009 (and b!5844834 b!5844345)))

(assert (=> bs!1377009 (not (= lambda!319713 lambda!319692))))

(declare-fun bs!1377011 () Bool)

(assert (= bs!1377011 (and b!5844834 b!5844348)))

(assert (=> bs!1377011 (= (and (= (reg!16242 (regOne!32339 (regTwo!32339 r!7292))) (reg!16242 (regOne!32339 r!7292))) (= (regOne!32339 (regTwo!32339 r!7292)) (regOne!32339 r!7292))) (= lambda!319713 lambda!319691))))

(declare-fun bs!1377013 () Bool)

(assert (= bs!1377013 (and b!5844834 b!5844656)))

(assert (=> bs!1377013 (not (= lambda!319713 lambda!319705))))

(declare-fun bs!1377014 () Bool)

(assert (= bs!1377014 (and b!5844834 b!5844156)))

(assert (=> bs!1377014 (= (and (= (reg!16242 (regOne!32339 (regTwo!32339 r!7292))) (reg!16242 r!7292)) (= (regOne!32339 (regTwo!32339 r!7292)) r!7292)) (= lambda!319713 lambda!319683))))

(assert (=> b!5844834 true))

(assert (=> b!5844834 true))

(declare-fun bs!1377015 () Bool)

(declare-fun b!5844831 () Bool)

(assert (= bs!1377015 (and b!5844831 b!5844323)))

(declare-fun lambda!319715 () Int)

(assert (=> bs!1377015 (not (= lambda!319715 lambda!319689))))

(declare-fun bs!1377016 () Bool)

(assert (= bs!1377016 (and b!5844831 b!5844320)))

(assert (=> bs!1377016 (= (and (= (regOne!32338 (regOne!32339 (regTwo!32339 r!7292))) (regOne!32338 (regTwo!32339 r!7292))) (= (regTwo!32338 (regOne!32339 (regTwo!32339 r!7292))) (regTwo!32338 (regTwo!32339 r!7292)))) (= lambda!319715 lambda!319690))))

(declare-fun bs!1377017 () Bool)

(assert (= bs!1377017 (and b!5844831 b!5844659)))

(assert (=> bs!1377017 (not (= lambda!319715 lambda!319704))))

(declare-fun bs!1377018 () Bool)

(assert (= bs!1377018 (and b!5844831 b!5844345)))

(assert (=> bs!1377018 (= (and (= (regOne!32338 (regOne!32339 (regTwo!32339 r!7292))) (regOne!32338 (regOne!32339 r!7292))) (= (regTwo!32338 (regOne!32339 (regTwo!32339 r!7292))) (regTwo!32338 (regOne!32339 r!7292)))) (= lambda!319715 lambda!319692))))

(declare-fun bs!1377019 () Bool)

(assert (= bs!1377019 (and b!5844831 b!5844348)))

(assert (=> bs!1377019 (not (= lambda!319715 lambda!319691))))

(declare-fun bs!1377020 () Bool)

(assert (= bs!1377020 (and b!5844831 b!5844153)))

(assert (=> bs!1377020 (= (and (= (regOne!32338 (regOne!32339 (regTwo!32339 r!7292))) (regOne!32338 r!7292)) (= (regTwo!32338 (regOne!32339 (regTwo!32339 r!7292))) (regTwo!32338 r!7292))) (= lambda!319715 lambda!319684))))

(declare-fun bs!1377021 () Bool)

(assert (= bs!1377021 (and b!5844831 b!5844834)))

(assert (=> bs!1377021 (not (= lambda!319715 lambda!319713))))

(declare-fun bs!1377022 () Bool)

(assert (= bs!1377022 (and b!5844831 b!5844656)))

(assert (=> bs!1377022 (= (and (= (regOne!32338 (regOne!32339 (regTwo!32339 r!7292))) (regOne!32338 (regTwo!32339 (regOne!32339 r!7292)))) (= (regTwo!32338 (regOne!32339 (regTwo!32339 r!7292))) (regTwo!32338 (regTwo!32339 (regOne!32339 r!7292))))) (= lambda!319715 lambda!319705))))

(declare-fun bs!1377023 () Bool)

(assert (= bs!1377023 (and b!5844831 b!5844156)))

(assert (=> bs!1377023 (not (= lambda!319715 lambda!319683))))

(assert (=> b!5844831 true))

(assert (=> b!5844831 true))

(declare-fun call!456802 () Bool)

(declare-fun c!1035841 () Bool)

(declare-fun bm!456796 () Bool)

(assert (=> bm!456796 (= call!456802 (Exists!2985 (ite c!1035841 lambda!319713 lambda!319715)))))

(declare-fun b!5844825 () Bool)

(declare-fun res!2461813 () Bool)

(declare-fun e!3584832 () Bool)

(assert (=> b!5844825 (=> res!2461813 e!3584832)))

(declare-fun call!456801 () Bool)

(assert (=> b!5844825 (= res!2461813 call!456801)))

(declare-fun e!3584834 () Bool)

(assert (=> b!5844825 (= e!3584834 e!3584832)))

(declare-fun b!5844826 () Bool)

(declare-fun e!3584833 () Bool)

(declare-fun e!3584836 () Bool)

(assert (=> b!5844826 (= e!3584833 e!3584836)))

(declare-fun res!2461814 () Bool)

(assert (=> b!5844826 (= res!2461814 (matchRSpec!3014 (regOne!32339 (regOne!32339 (regTwo!32339 r!7292))) s!2326))))

(assert (=> b!5844826 (=> res!2461814 e!3584836)))

(declare-fun d!1836184 () Bool)

(declare-fun c!1035838 () Bool)

(assert (=> d!1836184 (= c!1035838 ((_ is EmptyExpr!15913) (regOne!32339 (regTwo!32339 r!7292))))))

(declare-fun e!3584835 () Bool)

(assert (=> d!1836184 (= (matchRSpec!3014 (regOne!32339 (regTwo!32339 r!7292)) s!2326) e!3584835)))

(declare-fun b!5844827 () Bool)

(declare-fun c!1035840 () Bool)

(assert (=> b!5844827 (= c!1035840 ((_ is Union!15913) (regOne!32339 (regTwo!32339 r!7292))))))

(declare-fun e!3584831 () Bool)

(assert (=> b!5844827 (= e!3584831 e!3584833)))

(declare-fun b!5844828 () Bool)

(assert (=> b!5844828 (= e!3584833 e!3584834)))

(assert (=> b!5844828 (= c!1035841 ((_ is Star!15913) (regOne!32339 (regTwo!32339 r!7292))))))

(declare-fun b!5844829 () Bool)

(declare-fun c!1035839 () Bool)

(assert (=> b!5844829 (= c!1035839 ((_ is ElementMatch!15913) (regOne!32339 (regTwo!32339 r!7292))))))

(declare-fun e!3584830 () Bool)

(assert (=> b!5844829 (= e!3584830 e!3584831)))

(declare-fun b!5844830 () Bool)

(assert (=> b!5844830 (= e!3584835 call!456801)))

(declare-fun bm!456797 () Bool)

(assert (=> bm!456797 (= call!456801 (isEmpty!35774 s!2326))))

(assert (=> b!5844831 (= e!3584834 call!456802)))

(declare-fun b!5844832 () Bool)

(assert (=> b!5844832 (= e!3584835 e!3584830)))

(declare-fun res!2461812 () Bool)

(assert (=> b!5844832 (= res!2461812 (not ((_ is EmptyLang!15913) (regOne!32339 (regTwo!32339 r!7292)))))))

(assert (=> b!5844832 (=> (not res!2461812) (not e!3584830))))

(declare-fun b!5844833 () Bool)

(assert (=> b!5844833 (= e!3584836 (matchRSpec!3014 (regTwo!32339 (regOne!32339 (regTwo!32339 r!7292))) s!2326))))

(assert (=> b!5844834 (= e!3584832 call!456802)))

(declare-fun b!5844835 () Bool)

(assert (=> b!5844835 (= e!3584831 (= s!2326 (Cons!63916 (c!1035547 (regOne!32339 (regTwo!32339 r!7292))) Nil!63916)))))

(assert (= (and d!1836184 c!1035838) b!5844830))

(assert (= (and d!1836184 (not c!1035838)) b!5844832))

(assert (= (and b!5844832 res!2461812) b!5844829))

(assert (= (and b!5844829 c!1035839) b!5844835))

(assert (= (and b!5844829 (not c!1035839)) b!5844827))

(assert (= (and b!5844827 c!1035840) b!5844826))

(assert (= (and b!5844827 (not c!1035840)) b!5844828))

(assert (= (and b!5844826 (not res!2461814)) b!5844833))

(assert (= (and b!5844828 c!1035841) b!5844825))

(assert (= (and b!5844828 (not c!1035841)) b!5844831))

(assert (= (and b!5844825 (not res!2461813)) b!5844834))

(assert (= (or b!5844834 b!5844831) bm!456796))

(assert (= (or b!5844830 b!5844825) bm!456797))

(declare-fun m!6767402 () Bool)

(assert (=> bm!456796 m!6767402))

(declare-fun m!6767404 () Bool)

(assert (=> b!5844826 m!6767404))

(assert (=> bm!456797 m!6767010))

(declare-fun m!6767406 () Bool)

(assert (=> b!5844833 m!6767406))

(assert (=> b!5844315 d!1836184))

(assert (=> b!5844335 d!1836072))

(assert (=> bm!456696 d!1836076))

(declare-fun d!1836194 () Bool)

(assert (=> d!1836194 (= (isEmpty!35776 (tail!11466 (unfocusZipperList!1334 zl!343))) ((_ is Nil!63914) (tail!11466 (unfocusZipperList!1334 zl!343))))))

(assert (=> b!5844390 d!1836194))

(declare-fun d!1836196 () Bool)

(assert (=> d!1836196 (= (tail!11466 (unfocusZipperList!1334 zl!343)) (t!377395 (unfocusZipperList!1334 zl!343)))))

(assert (=> b!5844390 d!1836196))

(assert (=> bm!456694 d!1836076))

(declare-fun d!1836198 () Bool)

(assert (=> d!1836198 (= ($colon$colon!1818 (exprs!5797 lt!2303990) (ite (or c!1035683 c!1035684) (regTwo!32338 (regTwo!32339 r!7292)) (regTwo!32339 r!7292))) (Cons!63914 (ite (or c!1035683 c!1035684) (regTwo!32338 (regTwo!32339 r!7292)) (regTwo!32339 r!7292)) (exprs!5797 lt!2303990)))))

(assert (=> bm!456686 d!1836198))

(declare-fun b!5844855 () Bool)

(declare-fun c!1035846 () Bool)

(declare-fun e!3584852 () Bool)

(assert (=> b!5844855 (= c!1035846 e!3584852)))

(declare-fun res!2461825 () Bool)

(assert (=> b!5844855 (=> (not res!2461825) (not e!3584852))))

(assert (=> b!5844855 (= res!2461825 ((_ is Concat!24758) (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))))))

(declare-fun e!3584854 () (InoxSet Context!10594))

(declare-fun e!3584853 () (InoxSet Context!10594))

(assert (=> b!5844855 (= e!3584854 e!3584853)))

(declare-fun b!5844856 () Bool)

(declare-fun e!3584851 () (InoxSet Context!10594))

(declare-fun call!456809 () (InoxSet Context!10594))

(assert (=> b!5844856 (= e!3584851 call!456809)))

(declare-fun b!5844857 () Bool)

(declare-fun e!3584855 () (InoxSet Context!10594))

(assert (=> b!5844857 (= e!3584855 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844858 () Bool)

(assert (=> b!5844858 (= e!3584853 e!3584851)))

(declare-fun c!1035847 () Bool)

(assert (=> b!5844858 (= c!1035847 ((_ is Concat!24758) (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))))))

(declare-fun bm!456804 () Bool)

(declare-fun call!456811 () List!64038)

(assert (=> bm!456804 (= call!456811 ($colon$colon!1818 (exprs!5797 (ite c!1035738 lt!2303990 (Context!10595 call!456714))) (ite (or c!1035846 c!1035847) (regTwo!32338 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))) (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292)))))))

(declare-fun bm!456805 () Bool)

(declare-fun call!456812 () List!64038)

(assert (=> bm!456805 (= call!456812 call!456811)))

(declare-fun b!5844859 () Bool)

(declare-fun call!456814 () (InoxSet Context!10594))

(declare-fun call!456810 () (InoxSet Context!10594))

(assert (=> b!5844859 (= e!3584854 ((_ map or) call!456814 call!456810))))

(declare-fun e!3584856 () (InoxSet Context!10594))

(declare-fun b!5844860 () Bool)

(assert (=> b!5844860 (= e!3584856 (store ((as const (Array Context!10594 Bool)) false) (ite c!1035738 lt!2303990 (Context!10595 call!456714)) true))))

(declare-fun bm!456806 () Bool)

(declare-fun c!1035849 () Bool)

(assert (=> bm!456806 (= call!456810 (derivationStepZipperDown!1179 (ite c!1035849 (regTwo!32339 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))) (ite c!1035846 (regTwo!32338 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))) (ite c!1035847 (regOne!32338 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))) (reg!16242 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292)))))) (ite (or c!1035849 c!1035846) (ite c!1035738 lt!2303990 (Context!10595 call!456714)) (Context!10595 call!456812)) (h!70364 s!2326)))))

(declare-fun b!5844861 () Bool)

(assert (=> b!5844861 (= e!3584856 e!3584854)))

(assert (=> b!5844861 (= c!1035849 ((_ is Union!15913) (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))))))

(declare-fun c!1035848 () Bool)

(declare-fun d!1836202 () Bool)

(assert (=> d!1836202 (= c!1035848 (and ((_ is ElementMatch!15913) (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))) (= (c!1035547 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))) (h!70364 s!2326))))))

(assert (=> d!1836202 (= (derivationStepZipperDown!1179 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292)) (ite c!1035738 lt!2303990 (Context!10595 call!456714)) (h!70364 s!2326)) e!3584856)))

(declare-fun b!5844854 () Bool)

(declare-fun call!456813 () (InoxSet Context!10594))

(assert (=> b!5844854 (= e!3584853 ((_ map or) call!456814 call!456813))))

(declare-fun b!5844862 () Bool)

(declare-fun c!1035850 () Bool)

(assert (=> b!5844862 (= c!1035850 ((_ is Star!15913) (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))))))

(assert (=> b!5844862 (= e!3584851 e!3584855)))

(declare-fun b!5844863 () Bool)

(assert (=> b!5844863 (= e!3584855 call!456809)))

(declare-fun b!5844864 () Bool)

(assert (=> b!5844864 (= e!3584852 (nullable!5913 (regOne!32338 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292)))))))

(declare-fun bm!456807 () Bool)

(assert (=> bm!456807 (= call!456813 call!456810)))

(declare-fun bm!456808 () Bool)

(assert (=> bm!456808 (= call!456809 call!456813)))

(declare-fun bm!456809 () Bool)

(assert (=> bm!456809 (= call!456814 (derivationStepZipperDown!1179 (ite c!1035849 (regOne!32339 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292))) (regOne!32338 (ite c!1035738 (regOne!32339 r!7292) (regOne!32338 r!7292)))) (ite c!1035849 (ite c!1035738 lt!2303990 (Context!10595 call!456714)) (Context!10595 call!456811)) (h!70364 s!2326)))))

(assert (= (and d!1836202 c!1035848) b!5844860))

(assert (= (and d!1836202 (not c!1035848)) b!5844861))

(assert (= (and b!5844861 c!1035849) b!5844859))

(assert (= (and b!5844861 (not c!1035849)) b!5844855))

(assert (= (and b!5844855 res!2461825) b!5844864))

(assert (= (and b!5844855 c!1035846) b!5844854))

(assert (= (and b!5844855 (not c!1035846)) b!5844858))

(assert (= (and b!5844858 c!1035847) b!5844856))

(assert (= (and b!5844858 (not c!1035847)) b!5844862))

(assert (= (and b!5844862 c!1035850) b!5844863))

(assert (= (and b!5844862 (not c!1035850)) b!5844857))

(assert (= (or b!5844856 b!5844863) bm!456805))

(assert (= (or b!5844856 b!5844863) bm!456808))

(assert (= (or b!5844854 bm!456805) bm!456804))

(assert (= (or b!5844854 bm!456808) bm!456807))

(assert (= (or b!5844859 bm!456807) bm!456806))

(assert (= (or b!5844859 b!5844854) bm!456809))

(declare-fun m!6767420 () Bool)

(assert (=> bm!456806 m!6767420))

(declare-fun m!6767422 () Bool)

(assert (=> bm!456809 m!6767422))

(declare-fun m!6767424 () Bool)

(assert (=> b!5844864 m!6767424))

(declare-fun m!6767426 () Bool)

(assert (=> b!5844860 m!6767426))

(declare-fun m!6767428 () Bool)

(assert (=> bm!456804 m!6767428))

(assert (=> bm!456712 d!1836202))

(assert (=> b!5844257 d!1836072))

(declare-fun d!1836208 () Bool)

(assert (=> d!1836208 (= (isEmpty!35776 (t!377395 (unfocusZipperList!1334 zl!343))) ((_ is Nil!63914) (t!377395 (unfocusZipperList!1334 zl!343))))))

(assert (=> b!5844392 d!1836208))

(assert (=> b!5844338 d!1836062))

(assert (=> b!5844338 d!1836064))

(assert (=> b!5844155 d!1836022))

(declare-fun d!1836210 () Bool)

(assert (=> d!1836210 (= (head!12381 (exprs!5797 (h!70363 zl!343))) (h!70362 (exprs!5797 (h!70363 zl!343))))))

(assert (=> b!5844422 d!1836210))

(assert (=> d!1836032 d!1836076))

(assert (=> d!1836032 d!1836086))

(declare-fun b!5844871 () Bool)

(declare-fun c!1035853 () Bool)

(declare-fun e!3584861 () Bool)

(assert (=> b!5844871 (= c!1035853 e!3584861)))

(declare-fun res!2461827 () Bool)

(assert (=> b!5844871 (=> (not res!2461827) (not e!3584861))))

(assert (=> b!5844871 (= res!2461827 ((_ is Concat!24758) (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))))))

(declare-fun e!3584863 () (InoxSet Context!10594))

(declare-fun e!3584862 () (InoxSet Context!10594))

(assert (=> b!5844871 (= e!3584863 e!3584862)))

(declare-fun b!5844872 () Bool)

(declare-fun e!3584860 () (InoxSet Context!10594))

(declare-fun call!456816 () (InoxSet Context!10594))

(assert (=> b!5844872 (= e!3584860 call!456816)))

(declare-fun b!5844873 () Bool)

(declare-fun e!3584864 () (InoxSet Context!10594))

(assert (=> b!5844873 (= e!3584864 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844874 () Bool)

(assert (=> b!5844874 (= e!3584862 e!3584860)))

(declare-fun c!1035854 () Bool)

(assert (=> b!5844874 (= c!1035854 ((_ is Concat!24758) (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))))))

(declare-fun bm!456811 () Bool)

(declare-fun call!456818 () List!64038)

(assert (=> bm!456811 (= call!456818 ($colon$colon!1818 (exprs!5797 (ite (or c!1035686 c!1035683) lt!2303990 (Context!10595 call!456694))) (ite (or c!1035853 c!1035854) (regTwo!32338 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))) (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292))))))))))

(declare-fun bm!456812 () Bool)

(declare-fun call!456819 () List!64038)

(assert (=> bm!456812 (= call!456819 call!456818)))

(declare-fun b!5844875 () Bool)

(declare-fun call!456821 () (InoxSet Context!10594))

(declare-fun call!456817 () (InoxSet Context!10594))

(assert (=> b!5844875 (= e!3584863 ((_ map or) call!456821 call!456817))))

(declare-fun e!3584865 () (InoxSet Context!10594))

(declare-fun b!5844876 () Bool)

(assert (=> b!5844876 (= e!3584865 (store ((as const (Array Context!10594 Bool)) false) (ite (or c!1035686 c!1035683) lt!2303990 (Context!10595 call!456694)) true))))

(declare-fun bm!456813 () Bool)

(declare-fun c!1035856 () Bool)

(assert (=> bm!456813 (= call!456817 (derivationStepZipperDown!1179 (ite c!1035856 (regTwo!32339 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))) (ite c!1035853 (regTwo!32338 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))) (ite c!1035854 (regOne!32338 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))) (reg!16242 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292))))))))) (ite (or c!1035856 c!1035853) (ite (or c!1035686 c!1035683) lt!2303990 (Context!10595 call!456694)) (Context!10595 call!456819)) (h!70364 s!2326)))))

(declare-fun b!5844877 () Bool)

(assert (=> b!5844877 (= e!3584865 e!3584863)))

(assert (=> b!5844877 (= c!1035856 ((_ is Union!15913) (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))))))

(declare-fun c!1035855 () Bool)

(declare-fun d!1836214 () Bool)

(assert (=> d!1836214 (= c!1035855 (and ((_ is ElementMatch!15913) (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))) (= (c!1035547 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))) (h!70364 s!2326))))))

(assert (=> d!1836214 (= (derivationStepZipperDown!1179 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292))))) (ite (or c!1035686 c!1035683) lt!2303990 (Context!10595 call!456694)) (h!70364 s!2326)) e!3584865)))

(declare-fun b!5844870 () Bool)

(declare-fun call!456820 () (InoxSet Context!10594))

(assert (=> b!5844870 (= e!3584862 ((_ map or) call!456821 call!456820))))

(declare-fun c!1035857 () Bool)

(declare-fun b!5844878 () Bool)

(assert (=> b!5844878 (= c!1035857 ((_ is Star!15913) (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))))))

(assert (=> b!5844878 (= e!3584860 e!3584864)))

(declare-fun b!5844879 () Bool)

(assert (=> b!5844879 (= e!3584864 call!456816)))

(declare-fun b!5844880 () Bool)

(assert (=> b!5844880 (= e!3584861 (nullable!5913 (regOne!32338 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292))))))))))

(declare-fun bm!456814 () Bool)

(assert (=> bm!456814 (= call!456820 call!456817)))

(declare-fun bm!456815 () Bool)

(assert (=> bm!456815 (= call!456816 call!456820)))

(declare-fun bm!456816 () Bool)

(assert (=> bm!456816 (= call!456821 (derivationStepZipperDown!1179 (ite c!1035856 (regOne!32339 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292)))))) (regOne!32338 (ite c!1035686 (regTwo!32339 (regTwo!32339 r!7292)) (ite c!1035683 (regTwo!32338 (regTwo!32339 r!7292)) (ite c!1035684 (regOne!32338 (regTwo!32339 r!7292)) (reg!16242 (regTwo!32339 r!7292))))))) (ite c!1035856 (ite (or c!1035686 c!1035683) lt!2303990 (Context!10595 call!456694)) (Context!10595 call!456818)) (h!70364 s!2326)))))

(assert (= (and d!1836214 c!1035855) b!5844876))

(assert (= (and d!1836214 (not c!1035855)) b!5844877))

(assert (= (and b!5844877 c!1035856) b!5844875))

(assert (= (and b!5844877 (not c!1035856)) b!5844871))

(assert (= (and b!5844871 res!2461827) b!5844880))

(assert (= (and b!5844871 c!1035853) b!5844870))

(assert (= (and b!5844871 (not c!1035853)) b!5844874))

(assert (= (and b!5844874 c!1035854) b!5844872))

(assert (= (and b!5844874 (not c!1035854)) b!5844878))

(assert (= (and b!5844878 c!1035857) b!5844879))

(assert (= (and b!5844878 (not c!1035857)) b!5844873))

(assert (= (or b!5844872 b!5844879) bm!456812))

(assert (= (or b!5844872 b!5844879) bm!456815))

(assert (= (or b!5844870 bm!456812) bm!456811))

(assert (= (or b!5844870 bm!456815) bm!456814))

(assert (= (or b!5844875 bm!456814) bm!456813))

(assert (= (or b!5844875 b!5844870) bm!456816))

(declare-fun m!6767436 () Bool)

(assert (=> bm!456813 m!6767436))

(declare-fun m!6767438 () Bool)

(assert (=> bm!456816 m!6767438))

(declare-fun m!6767440 () Bool)

(assert (=> b!5844880 m!6767440))

(declare-fun m!6767442 () Bool)

(assert (=> b!5844876 m!6767442))

(declare-fun m!6767444 () Bool)

(assert (=> bm!456811 m!6767444))

(assert (=> bm!456688 d!1836214))

(declare-fun d!1836218 () Bool)

(assert (=> d!1836218 (= (isEmptyExpr!1348 lt!2304040) ((_ is EmptyExpr!15913) lt!2304040))))

(assert (=> b!5844424 d!1836218))

(declare-fun bs!1377026 () Bool)

(declare-fun b!5844904 () Bool)

(assert (= bs!1377026 (and b!5844904 b!5844323)))

(declare-fun lambda!319716 () Int)

(assert (=> bs!1377026 (= (and (= (reg!16242 (regTwo!32339 (regTwo!32339 r!7292))) (reg!16242 (regTwo!32339 r!7292))) (= (regTwo!32339 (regTwo!32339 r!7292)) (regTwo!32339 r!7292))) (= lambda!319716 lambda!319689))))

(declare-fun bs!1377027 () Bool)

(assert (= bs!1377027 (and b!5844904 b!5844320)))

(assert (=> bs!1377027 (not (= lambda!319716 lambda!319690))))

(declare-fun bs!1377028 () Bool)

(assert (= bs!1377028 (and b!5844904 b!5844659)))

(assert (=> bs!1377028 (= (and (= (reg!16242 (regTwo!32339 (regTwo!32339 r!7292))) (reg!16242 (regTwo!32339 (regOne!32339 r!7292)))) (= (regTwo!32339 (regTwo!32339 r!7292)) (regTwo!32339 (regOne!32339 r!7292)))) (= lambda!319716 lambda!319704))))

(declare-fun bs!1377029 () Bool)

(assert (= bs!1377029 (and b!5844904 b!5844345)))

(assert (=> bs!1377029 (not (= lambda!319716 lambda!319692))))

(declare-fun bs!1377030 () Bool)

(assert (= bs!1377030 (and b!5844904 b!5844831)))

(assert (=> bs!1377030 (not (= lambda!319716 lambda!319715))))

(declare-fun bs!1377031 () Bool)

(assert (= bs!1377031 (and b!5844904 b!5844348)))

(assert (=> bs!1377031 (= (and (= (reg!16242 (regTwo!32339 (regTwo!32339 r!7292))) (reg!16242 (regOne!32339 r!7292))) (= (regTwo!32339 (regTwo!32339 r!7292)) (regOne!32339 r!7292))) (= lambda!319716 lambda!319691))))

(declare-fun bs!1377032 () Bool)

(assert (= bs!1377032 (and b!5844904 b!5844153)))

(assert (=> bs!1377032 (not (= lambda!319716 lambda!319684))))

(declare-fun bs!1377033 () Bool)

(assert (= bs!1377033 (and b!5844904 b!5844834)))

(assert (=> bs!1377033 (= (and (= (reg!16242 (regTwo!32339 (regTwo!32339 r!7292))) (reg!16242 (regOne!32339 (regTwo!32339 r!7292)))) (= (regTwo!32339 (regTwo!32339 r!7292)) (regOne!32339 (regTwo!32339 r!7292)))) (= lambda!319716 lambda!319713))))

(declare-fun bs!1377034 () Bool)

(assert (= bs!1377034 (and b!5844904 b!5844656)))

(assert (=> bs!1377034 (not (= lambda!319716 lambda!319705))))

(declare-fun bs!1377035 () Bool)

(assert (= bs!1377035 (and b!5844904 b!5844156)))

(assert (=> bs!1377035 (= (and (= (reg!16242 (regTwo!32339 (regTwo!32339 r!7292))) (reg!16242 r!7292)) (= (regTwo!32339 (regTwo!32339 r!7292)) r!7292)) (= lambda!319716 lambda!319683))))

(assert (=> b!5844904 true))

(assert (=> b!5844904 true))

(declare-fun bs!1377036 () Bool)

(declare-fun b!5844901 () Bool)

(assert (= bs!1377036 (and b!5844901 b!5844323)))

(declare-fun lambda!319717 () Int)

(assert (=> bs!1377036 (not (= lambda!319717 lambda!319689))))

(declare-fun bs!1377037 () Bool)

(assert (= bs!1377037 (and b!5844901 b!5844320)))

(assert (=> bs!1377037 (= (and (= (regOne!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regOne!32338 (regTwo!32339 r!7292))) (= (regTwo!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regTwo!32338 (regTwo!32339 r!7292)))) (= lambda!319717 lambda!319690))))

(declare-fun bs!1377038 () Bool)

(assert (= bs!1377038 (and b!5844901 b!5844659)))

(assert (=> bs!1377038 (not (= lambda!319717 lambda!319704))))

(declare-fun bs!1377039 () Bool)

(assert (= bs!1377039 (and b!5844901 b!5844345)))

(assert (=> bs!1377039 (= (and (= (regOne!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regOne!32338 (regOne!32339 r!7292))) (= (regTwo!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regTwo!32338 (regOne!32339 r!7292)))) (= lambda!319717 lambda!319692))))

(declare-fun bs!1377040 () Bool)

(assert (= bs!1377040 (and b!5844901 b!5844831)))

(assert (=> bs!1377040 (= (and (= (regOne!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regOne!32338 (regOne!32339 (regTwo!32339 r!7292)))) (= (regTwo!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regTwo!32338 (regOne!32339 (regTwo!32339 r!7292))))) (= lambda!319717 lambda!319715))))

(declare-fun bs!1377041 () Bool)

(assert (= bs!1377041 (and b!5844901 b!5844904)))

(assert (=> bs!1377041 (not (= lambda!319717 lambda!319716))))

(declare-fun bs!1377042 () Bool)

(assert (= bs!1377042 (and b!5844901 b!5844348)))

(assert (=> bs!1377042 (not (= lambda!319717 lambda!319691))))

(declare-fun bs!1377043 () Bool)

(assert (= bs!1377043 (and b!5844901 b!5844153)))

(assert (=> bs!1377043 (= (and (= (regOne!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regOne!32338 r!7292)) (= (regTwo!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regTwo!32338 r!7292))) (= lambda!319717 lambda!319684))))

(declare-fun bs!1377044 () Bool)

(assert (= bs!1377044 (and b!5844901 b!5844834)))

(assert (=> bs!1377044 (not (= lambda!319717 lambda!319713))))

(declare-fun bs!1377045 () Bool)

(assert (= bs!1377045 (and b!5844901 b!5844656)))

(assert (=> bs!1377045 (= (and (= (regOne!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regOne!32338 (regTwo!32339 (regOne!32339 r!7292)))) (= (regTwo!32338 (regTwo!32339 (regTwo!32339 r!7292))) (regTwo!32338 (regTwo!32339 (regOne!32339 r!7292))))) (= lambda!319717 lambda!319705))))

(declare-fun bs!1377046 () Bool)

(assert (= bs!1377046 (and b!5844901 b!5844156)))

(assert (=> bs!1377046 (not (= lambda!319717 lambda!319683))))

(assert (=> b!5844901 true))

(assert (=> b!5844901 true))

(declare-fun c!1035864 () Bool)

(declare-fun call!456824 () Bool)

(declare-fun bm!456818 () Bool)

(assert (=> bm!456818 (= call!456824 (Exists!2985 (ite c!1035864 lambda!319716 lambda!319717)))))

(declare-fun b!5844895 () Bool)

(declare-fun res!2461837 () Bool)

(declare-fun e!3584875 () Bool)

(assert (=> b!5844895 (=> res!2461837 e!3584875)))

(declare-fun call!456823 () Bool)

(assert (=> b!5844895 (= res!2461837 call!456823)))

(declare-fun e!3584877 () Bool)

(assert (=> b!5844895 (= e!3584877 e!3584875)))

(declare-fun b!5844896 () Bool)

(declare-fun e!3584876 () Bool)

(declare-fun e!3584879 () Bool)

(assert (=> b!5844896 (= e!3584876 e!3584879)))

(declare-fun res!2461838 () Bool)

(assert (=> b!5844896 (= res!2461838 (matchRSpec!3014 (regOne!32339 (regTwo!32339 (regTwo!32339 r!7292))) s!2326))))

(assert (=> b!5844896 (=> res!2461838 e!3584879)))

(declare-fun d!1836220 () Bool)

(declare-fun c!1035861 () Bool)

(assert (=> d!1836220 (= c!1035861 ((_ is EmptyExpr!15913) (regTwo!32339 (regTwo!32339 r!7292))))))

(declare-fun e!3584878 () Bool)

(assert (=> d!1836220 (= (matchRSpec!3014 (regTwo!32339 (regTwo!32339 r!7292)) s!2326) e!3584878)))

(declare-fun b!5844897 () Bool)

(declare-fun c!1035863 () Bool)

(assert (=> b!5844897 (= c!1035863 ((_ is Union!15913) (regTwo!32339 (regTwo!32339 r!7292))))))

(declare-fun e!3584874 () Bool)

(assert (=> b!5844897 (= e!3584874 e!3584876)))

(declare-fun b!5844898 () Bool)

(assert (=> b!5844898 (= e!3584876 e!3584877)))

(assert (=> b!5844898 (= c!1035864 ((_ is Star!15913) (regTwo!32339 (regTwo!32339 r!7292))))))

(declare-fun b!5844899 () Bool)

(declare-fun c!1035862 () Bool)

(assert (=> b!5844899 (= c!1035862 ((_ is ElementMatch!15913) (regTwo!32339 (regTwo!32339 r!7292))))))

(declare-fun e!3584873 () Bool)

(assert (=> b!5844899 (= e!3584873 e!3584874)))

(declare-fun b!5844900 () Bool)

(assert (=> b!5844900 (= e!3584878 call!456823)))

(declare-fun bm!456819 () Bool)

(assert (=> bm!456819 (= call!456823 (isEmpty!35774 s!2326))))

(assert (=> b!5844901 (= e!3584877 call!456824)))

(declare-fun b!5844902 () Bool)

(assert (=> b!5844902 (= e!3584878 e!3584873)))

(declare-fun res!2461836 () Bool)

(assert (=> b!5844902 (= res!2461836 (not ((_ is EmptyLang!15913) (regTwo!32339 (regTwo!32339 r!7292)))))))

(assert (=> b!5844902 (=> (not res!2461836) (not e!3584873))))

(declare-fun b!5844903 () Bool)

(assert (=> b!5844903 (= e!3584879 (matchRSpec!3014 (regTwo!32339 (regTwo!32339 (regTwo!32339 r!7292))) s!2326))))

(assert (=> b!5844904 (= e!3584875 call!456824)))

(declare-fun b!5844905 () Bool)

(assert (=> b!5844905 (= e!3584874 (= s!2326 (Cons!63916 (c!1035547 (regTwo!32339 (regTwo!32339 r!7292))) Nil!63916)))))

(assert (= (and d!1836220 c!1035861) b!5844900))

(assert (= (and d!1836220 (not c!1035861)) b!5844902))

(assert (= (and b!5844902 res!2461836) b!5844899))

(assert (= (and b!5844899 c!1035862) b!5844905))

(assert (= (and b!5844899 (not c!1035862)) b!5844897))

(assert (= (and b!5844897 c!1035863) b!5844896))

(assert (= (and b!5844897 (not c!1035863)) b!5844898))

(assert (= (and b!5844896 (not res!2461838)) b!5844903))

(assert (= (and b!5844898 c!1035864) b!5844895))

(assert (= (and b!5844898 (not c!1035864)) b!5844901))

(assert (= (and b!5844895 (not res!2461837)) b!5844904))

(assert (= (or b!5844904 b!5844901) bm!456818))

(assert (= (or b!5844900 b!5844895) bm!456819))

(declare-fun m!6767460 () Bool)

(assert (=> bm!456818 m!6767460))

(declare-fun m!6767462 () Bool)

(assert (=> b!5844896 m!6767462))

(assert (=> bm!456819 m!6767010))

(declare-fun m!6767464 () Bool)

(assert (=> b!5844903 m!6767464))

(assert (=> b!5844322 d!1836220))

(declare-fun d!1836224 () Bool)

(declare-fun res!2461839 () Bool)

(declare-fun e!3584880 () Bool)

(assert (=> d!1836224 (=> res!2461839 e!3584880)))

(assert (=> d!1836224 (= res!2461839 ((_ is Nil!63914) lt!2304037))))

(assert (=> d!1836224 (= (forall!15000 lt!2304037 lambda!319699) e!3584880)))

(declare-fun b!5844906 () Bool)

(declare-fun e!3584881 () Bool)

(assert (=> b!5844906 (= e!3584880 e!3584881)))

(declare-fun res!2461840 () Bool)

(assert (=> b!5844906 (=> (not res!2461840) (not e!3584881))))

(assert (=> b!5844906 (= res!2461840 (dynLambda!24983 lambda!319699 (h!70362 lt!2304037)))))

(declare-fun b!5844907 () Bool)

(assert (=> b!5844907 (= e!3584881 (forall!15000 (t!377395 lt!2304037) lambda!319699))))

(assert (= (and d!1836224 (not res!2461839)) b!5844906))

(assert (= (and b!5844906 res!2461840) b!5844907))

(declare-fun b_lambda!220063 () Bool)

(assert (=> (not b_lambda!220063) (not b!5844906)))

(declare-fun m!6767466 () Bool)

(assert (=> b!5844906 m!6767466))

(declare-fun m!6767468 () Bool)

(assert (=> b!5844907 m!6767468))

(assert (=> d!1836038 d!1836224))

(assert (=> b!5844354 d!1836072))

(assert (=> b!5844398 d!1836040))

(declare-fun bs!1377047 () Bool)

(declare-fun d!1836226 () Bool)

(assert (= bs!1377047 (and d!1836226 d!1836012)))

(declare-fun lambda!319718 () Int)

(assert (=> bs!1377047 (= lambda!319718 lambda!319687)))

(declare-fun bs!1377048 () Bool)

(assert (= bs!1377048 (and d!1836226 d!1836034)))

(assert (=> bs!1377048 (= lambda!319718 lambda!319693)))

(declare-fun bs!1377049 () Bool)

(assert (= bs!1377049 (and d!1836226 d!1836014)))

(assert (=> bs!1377049 (= lambda!319718 lambda!319688)))

(declare-fun bs!1377050 () Bool)

(assert (= bs!1377050 (and d!1836226 d!1836102)))

(assert (=> bs!1377050 (= lambda!319718 lambda!319706)))

(declare-fun bs!1377051 () Bool)

(assert (= bs!1377051 (and d!1836226 d!1836040)))

(assert (=> bs!1377051 (= lambda!319718 lambda!319702)))

(declare-fun bs!1377052 () Bool)

(assert (= bs!1377052 (and d!1836226 d!1836148)))

(assert (=> bs!1377052 (= lambda!319718 lambda!319710)))

(declare-fun bs!1377053 () Bool)

(assert (= bs!1377053 (and d!1836226 d!1836036)))

(assert (=> bs!1377053 (= lambda!319718 lambda!319696)))

(declare-fun bs!1377054 () Bool)

(assert (= bs!1377054 (and d!1836226 d!1836074)))

(assert (=> bs!1377054 (= lambda!319718 lambda!319703)))

(declare-fun bs!1377055 () Bool)

(assert (= bs!1377055 (and d!1836226 d!1836038)))

(assert (=> bs!1377055 (= lambda!319718 lambda!319699)))

(declare-fun lt!2304053 () List!64038)

(assert (=> d!1836226 (forall!15000 lt!2304053 lambda!319718)))

(declare-fun e!3584882 () List!64038)

(assert (=> d!1836226 (= lt!2304053 e!3584882)))

(declare-fun c!1035865 () Bool)

(assert (=> d!1836226 (= c!1035865 ((_ is Cons!63915) (t!377396 zl!343)))))

(assert (=> d!1836226 (= (unfocusZipperList!1334 (t!377396 zl!343)) lt!2304053)))

(declare-fun b!5844910 () Bool)

(assert (=> b!5844910 (= e!3584882 (Cons!63914 (generalisedConcat!1510 (exprs!5797 (h!70363 (t!377396 zl!343)))) (unfocusZipperList!1334 (t!377396 (t!377396 zl!343)))))))

(declare-fun b!5844911 () Bool)

(assert (=> b!5844911 (= e!3584882 Nil!63914)))

(assert (= (and d!1836226 c!1035865) b!5844910))

(assert (= (and d!1836226 (not c!1035865)) b!5844911))

(declare-fun m!6767470 () Bool)

(assert (=> d!1836226 m!6767470))

(declare-fun m!6767472 () Bool)

(assert (=> b!5844910 m!6767472))

(declare-fun m!6767474 () Bool)

(assert (=> b!5844910 m!6767474))

(assert (=> b!5844398 d!1836226))

(declare-fun b!5844931 () Bool)

(declare-fun c!1035876 () Bool)

(declare-fun e!3584894 () Bool)

(assert (=> b!5844931 (= c!1035876 e!3584894)))

(declare-fun res!2461841 () Bool)

(assert (=> b!5844931 (=> (not res!2461841) (not e!3584894))))

(assert (=> b!5844931 (= res!2461841 ((_ is Concat!24758) (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))))))

(declare-fun e!3584896 () (InoxSet Context!10594))

(declare-fun e!3584895 () (InoxSet Context!10594))

(assert (=> b!5844931 (= e!3584896 e!3584895)))

(declare-fun b!5844932 () Bool)

(declare-fun e!3584893 () (InoxSet Context!10594))

(declare-fun call!456829 () (InoxSet Context!10594))

(assert (=> b!5844932 (= e!3584893 call!456829)))

(declare-fun b!5844933 () Bool)

(declare-fun e!3584897 () (InoxSet Context!10594))

(assert (=> b!5844933 (= e!3584897 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844934 () Bool)

(assert (=> b!5844934 (= e!3584895 e!3584893)))

(declare-fun c!1035877 () Bool)

(assert (=> b!5844934 (= c!1035877 ((_ is Concat!24758) (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))))))

(declare-fun bm!456824 () Bool)

(declare-fun call!456831 () List!64038)

(assert (=> bm!456824 (= call!456831 ($colon$colon!1818 (exprs!5797 (ite c!1035681 lt!2303990 (Context!10595 call!456687))) (ite (or c!1035876 c!1035877) (regTwo!32338 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292))))))))

(declare-fun bm!456825 () Bool)

(declare-fun call!456832 () List!64038)

(assert (=> bm!456825 (= call!456832 call!456831)))

(declare-fun b!5844935 () Bool)

(declare-fun call!456834 () (InoxSet Context!10594))

(declare-fun call!456830 () (InoxSet Context!10594))

(assert (=> b!5844935 (= e!3584896 ((_ map or) call!456834 call!456830))))

(declare-fun b!5844936 () Bool)

(declare-fun e!3584898 () (InoxSet Context!10594))

(assert (=> b!5844936 (= e!3584898 (store ((as const (Array Context!10594 Bool)) false) (ite c!1035681 lt!2303990 (Context!10595 call!456687)) true))))

(declare-fun c!1035879 () Bool)

(declare-fun bm!456826 () Bool)

(assert (=> bm!456826 (= call!456830 (derivationStepZipperDown!1179 (ite c!1035879 (regTwo!32339 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (ite c!1035876 (regTwo!32338 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (ite c!1035877 (regOne!32338 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (reg!16242 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292))))))) (ite (or c!1035879 c!1035876) (ite c!1035681 lt!2303990 (Context!10595 call!456687)) (Context!10595 call!456832)) (h!70364 s!2326)))))

(declare-fun b!5844937 () Bool)

(assert (=> b!5844937 (= e!3584898 e!3584896)))

(assert (=> b!5844937 (= c!1035879 ((_ is Union!15913) (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))))))

(declare-fun d!1836228 () Bool)

(declare-fun c!1035878 () Bool)

(assert (=> d!1836228 (= c!1035878 (and ((_ is ElementMatch!15913) (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (= (c!1035547 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (h!70364 s!2326))))))

(assert (=> d!1836228 (= (derivationStepZipperDown!1179 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292))) (ite c!1035681 lt!2303990 (Context!10595 call!456687)) (h!70364 s!2326)) e!3584898)))

(declare-fun b!5844930 () Bool)

(declare-fun call!456833 () (InoxSet Context!10594))

(assert (=> b!5844930 (= e!3584895 ((_ map or) call!456834 call!456833))))

(declare-fun b!5844938 () Bool)

(declare-fun c!1035880 () Bool)

(assert (=> b!5844938 (= c!1035880 ((_ is Star!15913) (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))))))

(assert (=> b!5844938 (= e!3584893 e!3584897)))

(declare-fun b!5844939 () Bool)

(assert (=> b!5844939 (= e!3584897 call!456829)))

(declare-fun b!5844940 () Bool)

(assert (=> b!5844940 (= e!3584894 (nullable!5913 (regOne!32338 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292))))))))

(declare-fun bm!456827 () Bool)

(assert (=> bm!456827 (= call!456833 call!456830)))

(declare-fun bm!456828 () Bool)

(assert (=> bm!456828 (= call!456829 call!456833)))

(declare-fun bm!456829 () Bool)

(assert (=> bm!456829 (= call!456834 (derivationStepZipperDown!1179 (ite c!1035879 (regOne!32339 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292)))) (regOne!32338 (ite c!1035681 (regOne!32339 (regOne!32339 r!7292)) (regOne!32338 (regOne!32339 r!7292))))) (ite c!1035879 (ite c!1035681 lt!2303990 (Context!10595 call!456687)) (Context!10595 call!456831)) (h!70364 s!2326)))))

(assert (= (and d!1836228 c!1035878) b!5844936))

(assert (= (and d!1836228 (not c!1035878)) b!5844937))

(assert (= (and b!5844937 c!1035879) b!5844935))

(assert (= (and b!5844937 (not c!1035879)) b!5844931))

(assert (= (and b!5844931 res!2461841) b!5844940))

(assert (= (and b!5844931 c!1035876) b!5844930))

(assert (= (and b!5844931 (not c!1035876)) b!5844934))

(assert (= (and b!5844934 c!1035877) b!5844932))

(assert (= (and b!5844934 (not c!1035877)) b!5844938))

(assert (= (and b!5844938 c!1035880) b!5844939))

(assert (= (and b!5844938 (not c!1035880)) b!5844933))

(assert (= (or b!5844932 b!5844939) bm!456825))

(assert (= (or b!5844932 b!5844939) bm!456828))

(assert (= (or b!5844930 bm!456825) bm!456824))

(assert (= (or b!5844930 bm!456828) bm!456827))

(assert (= (or b!5844935 bm!456827) bm!456826))

(assert (= (or b!5844935 b!5844930) bm!456829))

(declare-fun m!6767476 () Bool)

(assert (=> bm!456826 m!6767476))

(declare-fun m!6767478 () Bool)

(assert (=> bm!456829 m!6767478))

(declare-fun m!6767480 () Bool)

(assert (=> b!5844940 m!6767480))

(declare-fun m!6767482 () Bool)

(assert (=> b!5844936 m!6767482))

(declare-fun m!6767484 () Bool)

(assert (=> bm!456824 m!6767484))

(assert (=> bm!456685 d!1836228))

(assert (=> b!5844263 d!1836072))

(declare-fun d!1836230 () Bool)

(assert (=> d!1836230 (= (nullable!5913 (regOne!32338 (regTwo!32339 r!7292))) (nullableFct!1899 (regOne!32338 (regTwo!32339 r!7292))))))

(declare-fun bs!1377056 () Bool)

(assert (= bs!1377056 d!1836230))

(declare-fun m!6767486 () Bool)

(assert (=> bs!1377056 m!6767486))

(assert (=> b!5844313 d!1836230))

(assert (=> bm!456667 d!1836076))

(declare-fun bs!1377057 () Bool)

(declare-fun d!1836232 () Bool)

(assert (= bs!1377057 (and d!1836232 d!1836012)))

(declare-fun lambda!319719 () Int)

(assert (=> bs!1377057 (= lambda!319719 lambda!319687)))

(declare-fun bs!1377058 () Bool)

(assert (= bs!1377058 (and d!1836232 d!1836226)))

(assert (=> bs!1377058 (= lambda!319719 lambda!319718)))

(declare-fun bs!1377059 () Bool)

(assert (= bs!1377059 (and d!1836232 d!1836034)))

(assert (=> bs!1377059 (= lambda!319719 lambda!319693)))

(declare-fun bs!1377060 () Bool)

(assert (= bs!1377060 (and d!1836232 d!1836014)))

(assert (=> bs!1377060 (= lambda!319719 lambda!319688)))

(declare-fun bs!1377061 () Bool)

(assert (= bs!1377061 (and d!1836232 d!1836102)))

(assert (=> bs!1377061 (= lambda!319719 lambda!319706)))

(declare-fun bs!1377062 () Bool)

(assert (= bs!1377062 (and d!1836232 d!1836040)))

(assert (=> bs!1377062 (= lambda!319719 lambda!319702)))

(declare-fun bs!1377063 () Bool)

(assert (= bs!1377063 (and d!1836232 d!1836148)))

(assert (=> bs!1377063 (= lambda!319719 lambda!319710)))

(declare-fun bs!1377064 () Bool)

(assert (= bs!1377064 (and d!1836232 d!1836036)))

(assert (=> bs!1377064 (= lambda!319719 lambda!319696)))

(declare-fun bs!1377065 () Bool)

(assert (= bs!1377065 (and d!1836232 d!1836074)))

(assert (=> bs!1377065 (= lambda!319719 lambda!319703)))

(declare-fun bs!1377066 () Bool)

(assert (= bs!1377066 (and d!1836232 d!1836038)))

(assert (=> bs!1377066 (= lambda!319719 lambda!319699)))

(declare-fun e!3584899 () Bool)

(assert (=> d!1836232 e!3584899))

(declare-fun res!2461843 () Bool)

(assert (=> d!1836232 (=> (not res!2461843) (not e!3584899))))

(declare-fun lt!2304054 () Regex!15913)

(assert (=> d!1836232 (= res!2461843 (validRegex!7649 lt!2304054))))

(declare-fun e!3584904 () Regex!15913)

(assert (=> d!1836232 (= lt!2304054 e!3584904)))

(declare-fun c!1035883 () Bool)

(declare-fun e!3584902 () Bool)

(assert (=> d!1836232 (= c!1035883 e!3584902)))

(declare-fun res!2461842 () Bool)

(assert (=> d!1836232 (=> (not res!2461842) (not e!3584902))))

(assert (=> d!1836232 (= res!2461842 ((_ is Cons!63914) (t!377395 (exprs!5797 (h!70363 zl!343)))))))

(assert (=> d!1836232 (forall!15000 (t!377395 (exprs!5797 (h!70363 zl!343))) lambda!319719)))

(assert (=> d!1836232 (= (generalisedConcat!1510 (t!377395 (exprs!5797 (h!70363 zl!343)))) lt!2304054)))

(declare-fun b!5844941 () Bool)

(assert (=> b!5844941 (= e!3584904 (h!70362 (t!377395 (exprs!5797 (h!70363 zl!343)))))))

(declare-fun b!5844942 () Bool)

(declare-fun e!3584900 () Bool)

(assert (=> b!5844942 (= e!3584899 e!3584900)))

(declare-fun c!1035881 () Bool)

(assert (=> b!5844942 (= c!1035881 (isEmpty!35776 (t!377395 (exprs!5797 (h!70363 zl!343)))))))

(declare-fun b!5844943 () Bool)

(declare-fun e!3584901 () Bool)

(assert (=> b!5844943 (= e!3584901 (= lt!2304054 (head!12381 (t!377395 (exprs!5797 (h!70363 zl!343))))))))

(declare-fun b!5844944 () Bool)

(declare-fun e!3584903 () Regex!15913)

(assert (=> b!5844944 (= e!3584903 EmptyExpr!15913)))

(declare-fun b!5844945 () Bool)

(assert (=> b!5844945 (= e!3584900 (isEmptyExpr!1348 lt!2304054))))

(declare-fun b!5844946 () Bool)

(assert (=> b!5844946 (= e!3584901 (isConcat!871 lt!2304054))))

(declare-fun b!5844947 () Bool)

(assert (=> b!5844947 (= e!3584904 e!3584903)))

(declare-fun c!1035884 () Bool)

(assert (=> b!5844947 (= c!1035884 ((_ is Cons!63914) (t!377395 (exprs!5797 (h!70363 zl!343)))))))

(declare-fun b!5844948 () Bool)

(assert (=> b!5844948 (= e!3584900 e!3584901)))

(declare-fun c!1035882 () Bool)

(assert (=> b!5844948 (= c!1035882 (isEmpty!35776 (tail!11466 (t!377395 (exprs!5797 (h!70363 zl!343))))))))

(declare-fun b!5844949 () Bool)

(assert (=> b!5844949 (= e!3584903 (Concat!24758 (h!70362 (t!377395 (exprs!5797 (h!70363 zl!343)))) (generalisedConcat!1510 (t!377395 (t!377395 (exprs!5797 (h!70363 zl!343)))))))))

(declare-fun b!5844950 () Bool)

(assert (=> b!5844950 (= e!3584902 (isEmpty!35776 (t!377395 (t!377395 (exprs!5797 (h!70363 zl!343))))))))

(assert (= (and d!1836232 res!2461842) b!5844950))

(assert (= (and d!1836232 c!1035883) b!5844941))

(assert (= (and d!1836232 (not c!1035883)) b!5844947))

(assert (= (and b!5844947 c!1035884) b!5844949))

(assert (= (and b!5844947 (not c!1035884)) b!5844944))

(assert (= (and d!1836232 res!2461843) b!5844942))

(assert (= (and b!5844942 c!1035881) b!5844945))

(assert (= (and b!5844942 (not c!1035881)) b!5844948))

(assert (= (and b!5844948 c!1035882) b!5844943))

(assert (= (and b!5844948 (not c!1035882)) b!5844946))

(declare-fun m!6767488 () Bool)

(assert (=> b!5844950 m!6767488))

(declare-fun m!6767490 () Bool)

(assert (=> b!5844945 m!6767490))

(assert (=> b!5844942 m!6767116))

(declare-fun m!6767492 () Bool)

(assert (=> b!5844949 m!6767492))

(declare-fun m!6767494 () Bool)

(assert (=> b!5844946 m!6767494))

(declare-fun m!6767496 () Bool)

(assert (=> b!5844948 m!6767496))

(assert (=> b!5844948 m!6767496))

(declare-fun m!6767498 () Bool)

(assert (=> b!5844948 m!6767498))

(declare-fun m!6767500 () Bool)

(assert (=> b!5844943 m!6767500))

(declare-fun m!6767502 () Bool)

(assert (=> d!1836232 m!6767502))

(declare-fun m!6767504 () Bool)

(assert (=> d!1836232 m!6767504))

(assert (=> b!5844428 d!1836232))

(declare-fun b!5844951 () Bool)

(declare-fun e!3584906 () (InoxSet Context!10594))

(declare-fun e!3584905 () (InoxSet Context!10594))

(assert (=> b!5844951 (= e!3584906 e!3584905)))

(declare-fun c!1035886 () Bool)

(assert (=> b!5844951 (= c!1035886 ((_ is Cons!63914) (exprs!5797 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))))))

(declare-fun bm!456834 () Bool)

(declare-fun call!456839 () (InoxSet Context!10594))

(assert (=> bm!456834 (= call!456839 (derivationStepZipperDown!1179 (h!70362 (exprs!5797 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))) (Context!10595 (t!377395 (exprs!5797 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))))) (h!70364 s!2326)))))

(declare-fun b!5844952 () Bool)

(assert (=> b!5844952 (= e!3584905 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844953 () Bool)

(declare-fun e!3584907 () Bool)

(assert (=> b!5844953 (= e!3584907 (nullable!5913 (h!70362 (exprs!5797 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))))))))

(declare-fun d!1836234 () Bool)

(declare-fun c!1035885 () Bool)

(assert (=> d!1836234 (= c!1035885 e!3584907)))

(declare-fun res!2461844 () Bool)

(assert (=> d!1836234 (=> (not res!2461844) (not e!3584907))))

(assert (=> d!1836234 (= res!2461844 ((_ is Cons!63914) (exprs!5797 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))))))))

(assert (=> d!1836234 (= (derivationStepZipperUp!1105 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914))))) (h!70364 s!2326)) e!3584906)))

(declare-fun b!5844954 () Bool)

(assert (=> b!5844954 (= e!3584906 ((_ map or) call!456839 (derivationStepZipperUp!1105 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (t!377395 (exprs!5797 (Context!10595 (Cons!63914 r!7292 Nil!63914)))))))) (h!70364 s!2326))))))

(declare-fun b!5844955 () Bool)

(assert (=> b!5844955 (= e!3584905 call!456839)))

(assert (= (and d!1836234 res!2461844) b!5844953))

(assert (= (and d!1836234 c!1035885) b!5844954))

(assert (= (and d!1836234 (not c!1035885)) b!5844951))

(assert (= (and b!5844951 c!1035886) b!5844955))

(assert (= (and b!5844951 (not c!1035886)) b!5844952))

(assert (= (or b!5844954 b!5844955) bm!456834))

(declare-fun m!6767506 () Bool)

(assert (=> bm!456834 m!6767506))

(declare-fun m!6767508 () Bool)

(assert (=> b!5844953 m!6767508))

(declare-fun m!6767510 () Bool)

(assert (=> b!5844954 m!6767510))

(assert (=> b!5844481 d!1836234))

(assert (=> b!5844326 d!1836062))

(assert (=> b!5844326 d!1836064))

(declare-fun d!1836236 () Bool)

(assert (=> d!1836236 (= ($colon$colon!1818 (exprs!5797 lt!2303990) (ite (or c!1035735 c!1035736) (regTwo!32338 r!7292) r!7292)) (Cons!63914 (ite (or c!1035735 c!1035736) (regTwo!32338 r!7292) r!7292) (exprs!5797 lt!2303990)))))

(assert (=> bm!456707 d!1836236))

(assert (=> b!5844266 d!1836062))

(assert (=> b!5844266 d!1836064))

(declare-fun call!456840 () Bool)

(declare-fun c!1035887 () Bool)

(declare-fun c!1035888 () Bool)

(declare-fun bm!456835 () Bool)

(assert (=> bm!456835 (= call!456840 (validRegex!7649 (ite c!1035888 (reg!16242 lt!2303993) (ite c!1035887 (regTwo!32339 lt!2303993) (regTwo!32338 lt!2303993)))))))

(declare-fun b!5844956 () Bool)

(declare-fun e!3584912 () Bool)

(declare-fun e!3584910 () Bool)

(assert (=> b!5844956 (= e!3584912 e!3584910)))

(declare-fun res!2461847 () Bool)

(assert (=> b!5844956 (=> (not res!2461847) (not e!3584910))))

(declare-fun call!456842 () Bool)

(assert (=> b!5844956 (= res!2461847 call!456842)))

(declare-fun b!5844957 () Bool)

(declare-fun e!3584913 () Bool)

(declare-fun e!3584911 () Bool)

(assert (=> b!5844957 (= e!3584913 e!3584911)))

(assert (=> b!5844957 (= c!1035888 ((_ is Star!15913) lt!2303993))))

(declare-fun b!5844958 () Bool)

(declare-fun res!2461849 () Bool)

(declare-fun e!3584908 () Bool)

(assert (=> b!5844958 (=> (not res!2461849) (not e!3584908))))

(assert (=> b!5844958 (= res!2461849 call!456842)))

(declare-fun e!3584914 () Bool)

(assert (=> b!5844958 (= e!3584914 e!3584908)))

(declare-fun b!5844959 () Bool)

(assert (=> b!5844959 (= e!3584911 e!3584914)))

(assert (=> b!5844959 (= c!1035887 ((_ is Union!15913) lt!2303993))))

(declare-fun b!5844961 () Bool)

(declare-fun e!3584909 () Bool)

(assert (=> b!5844961 (= e!3584911 e!3584909)))

(declare-fun res!2461845 () Bool)

(assert (=> b!5844961 (= res!2461845 (not (nullable!5913 (reg!16242 lt!2303993))))))

(assert (=> b!5844961 (=> (not res!2461845) (not e!3584909))))

(declare-fun bm!456836 () Bool)

(declare-fun call!456841 () Bool)

(assert (=> bm!456836 (= call!456841 call!456840)))

(declare-fun b!5844962 () Bool)

(assert (=> b!5844962 (= e!3584909 call!456840)))

(declare-fun b!5844963 () Bool)

(assert (=> b!5844963 (= e!3584910 call!456841)))

(declare-fun b!5844964 () Bool)

(declare-fun res!2461846 () Bool)

(assert (=> b!5844964 (=> res!2461846 e!3584912)))

(assert (=> b!5844964 (= res!2461846 (not ((_ is Concat!24758) lt!2303993)))))

(assert (=> b!5844964 (= e!3584914 e!3584912)))

(declare-fun bm!456837 () Bool)

(assert (=> bm!456837 (= call!456842 (validRegex!7649 (ite c!1035887 (regOne!32339 lt!2303993) (regOne!32338 lt!2303993))))))

(declare-fun b!5844960 () Bool)

(assert (=> b!5844960 (= e!3584908 call!456841)))

(declare-fun d!1836238 () Bool)

(declare-fun res!2461848 () Bool)

(assert (=> d!1836238 (=> res!2461848 e!3584913)))

(assert (=> d!1836238 (= res!2461848 ((_ is ElementMatch!15913) lt!2303993))))

(assert (=> d!1836238 (= (validRegex!7649 lt!2303993) e!3584913)))

(assert (= (and d!1836238 (not res!2461848)) b!5844957))

(assert (= (and b!5844957 c!1035888) b!5844961))

(assert (= (and b!5844957 (not c!1035888)) b!5844959))

(assert (= (and b!5844961 res!2461845) b!5844962))

(assert (= (and b!5844959 c!1035887) b!5844958))

(assert (= (and b!5844959 (not c!1035887)) b!5844964))

(assert (= (and b!5844958 res!2461849) b!5844960))

(assert (= (and b!5844964 (not res!2461846)) b!5844956))

(assert (= (and b!5844956 res!2461847) b!5844963))

(assert (= (or b!5844960 b!5844963) bm!456836))

(assert (= (or b!5844958 b!5844956) bm!456837))

(assert (= (or b!5844962 bm!456836) bm!456835))

(declare-fun m!6767512 () Bool)

(assert (=> bm!456835 m!6767512))

(declare-fun m!6767514 () Bool)

(assert (=> b!5844961 m!6767514))

(declare-fun m!6767516 () Bool)

(assert (=> bm!456837 m!6767516))

(assert (=> d!1835956 d!1836238))

(assert (=> d!1835956 d!1836036))

(assert (=> d!1835956 d!1836038))

(assert (=> d!1836028 d!1836026))

(assert (=> d!1836028 d!1836022))

(declare-fun d!1836240 () Bool)

(assert (=> d!1836240 (= (matchR!8096 (regTwo!32339 r!7292) s!2326) (matchRSpec!3014 (regTwo!32339 r!7292) s!2326))))

(assert (=> d!1836240 true))

(declare-fun _$88!4229 () Unit!157097)

(assert (=> d!1836240 (= (choose!44354 (regTwo!32339 r!7292) s!2326) _$88!4229)))

(declare-fun bs!1377067 () Bool)

(assert (= bs!1377067 d!1836240))

(assert (=> bs!1377067 m!6766846))

(assert (=> bs!1377067 m!6766842))

(assert (=> d!1836028 d!1836240))

(assert (=> d!1836028 d!1836138))

(assert (=> b!5844360 d!1836072))

(declare-fun d!1836242 () Bool)

(assert (=> d!1836242 (= (nullable!5913 (regTwo!32339 r!7292)) (nullableFct!1899 (regTwo!32339 r!7292)))))

(declare-fun bs!1377068 () Bool)

(assert (= bs!1377068 d!1836242))

(declare-fun m!6767518 () Bool)

(assert (=> bs!1377068 m!6767518))

(assert (=> b!5844328 d!1836242))

(declare-fun d!1836244 () Bool)

(assert (=> d!1836244 (= (Exists!2985 (ite c!1035698 lambda!319691 lambda!319692)) (choose!44357 (ite c!1035698 lambda!319691 lambda!319692)))))

(declare-fun bs!1377069 () Bool)

(assert (= bs!1377069 d!1836244))

(declare-fun m!6767520 () Bool)

(assert (=> bs!1377069 m!6767520))

(assert (=> bm!456695 d!1836244))

(assert (=> bm!456697 d!1836076))

(declare-fun b!5844976 () Bool)

(declare-fun c!1035894 () Bool)

(declare-fun e!3584921 () Bool)

(assert (=> b!5844976 (= c!1035894 e!3584921)))

(declare-fun res!2461850 () Bool)

(assert (=> b!5844976 (=> (not res!2461850) (not e!3584921))))

(assert (=> b!5844976 (= res!2461850 ((_ is Concat!24758) (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))))))

(declare-fun e!3584923 () (InoxSet Context!10594))

(declare-fun e!3584922 () (InoxSet Context!10594))

(assert (=> b!5844976 (= e!3584923 e!3584922)))

(declare-fun b!5844977 () Bool)

(declare-fun e!3584920 () (InoxSet Context!10594))

(declare-fun call!456847 () (InoxSet Context!10594))

(assert (=> b!5844977 (= e!3584920 call!456847)))

(declare-fun b!5844978 () Bool)

(declare-fun e!3584924 () (InoxSet Context!10594))

(assert (=> b!5844978 (= e!3584924 ((as const (Array Context!10594 Bool)) false))))

(declare-fun b!5844979 () Bool)

(assert (=> b!5844979 (= e!3584922 e!3584920)))

(declare-fun c!1035895 () Bool)

(assert (=> b!5844979 (= c!1035895 ((_ is Concat!24758) (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))))))

(declare-fun call!456849 () List!64038)

(declare-fun bm!456842 () Bool)

(assert (=> bm!456842 (= call!456849 ($colon$colon!1818 (exprs!5797 (ite (or c!1035738 c!1035735) lt!2303990 (Context!10595 call!456715))) (ite (or c!1035894 c!1035895) (regTwo!32338 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))) (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292)))))))))

(declare-fun bm!456843 () Bool)

(declare-fun call!456850 () List!64038)

(assert (=> bm!456843 (= call!456850 call!456849)))

(declare-fun b!5844980 () Bool)

(declare-fun call!456852 () (InoxSet Context!10594))

(declare-fun call!456848 () (InoxSet Context!10594))

(assert (=> b!5844980 (= e!3584923 ((_ map or) call!456852 call!456848))))

(declare-fun b!5844981 () Bool)

(declare-fun e!3584925 () (InoxSet Context!10594))

(assert (=> b!5844981 (= e!3584925 (store ((as const (Array Context!10594 Bool)) false) (ite (or c!1035738 c!1035735) lt!2303990 (Context!10595 call!456715)) true))))

(declare-fun bm!456844 () Bool)

(declare-fun c!1035897 () Bool)

(assert (=> bm!456844 (= call!456848 (derivationStepZipperDown!1179 (ite c!1035897 (regTwo!32339 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))) (ite c!1035894 (regTwo!32338 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))) (ite c!1035895 (regOne!32338 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))) (reg!16242 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292)))))))) (ite (or c!1035897 c!1035894) (ite (or c!1035738 c!1035735) lt!2303990 (Context!10595 call!456715)) (Context!10595 call!456850)) (h!70364 s!2326)))))

(declare-fun b!5844982 () Bool)

(assert (=> b!5844982 (= e!3584925 e!3584923)))

(assert (=> b!5844982 (= c!1035897 ((_ is Union!15913) (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))))))

(declare-fun c!1035896 () Bool)

(declare-fun d!1836246 () Bool)

(assert (=> d!1836246 (= c!1035896 (and ((_ is ElementMatch!15913) (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))) (= (c!1035547 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))) (h!70364 s!2326))))))

(assert (=> d!1836246 (= (derivationStepZipperDown!1179 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292)))) (ite (or c!1035738 c!1035735) lt!2303990 (Context!10595 call!456715)) (h!70364 s!2326)) e!3584925)))

(declare-fun b!5844975 () Bool)

(declare-fun call!456851 () (InoxSet Context!10594))

(assert (=> b!5844975 (= e!3584922 ((_ map or) call!456852 call!456851))))

(declare-fun c!1035898 () Bool)

(declare-fun b!5844983 () Bool)

(assert (=> b!5844983 (= c!1035898 ((_ is Star!15913) (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))))))

(assert (=> b!5844983 (= e!3584920 e!3584924)))

(declare-fun b!5844984 () Bool)

(assert (=> b!5844984 (= e!3584924 call!456847)))

(declare-fun b!5844985 () Bool)

(assert (=> b!5844985 (= e!3584921 (nullable!5913 (regOne!32338 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292)))))))))

(declare-fun bm!456845 () Bool)

(assert (=> bm!456845 (= call!456851 call!456848)))

(declare-fun bm!456846 () Bool)

(assert (=> bm!456846 (= call!456847 call!456851)))

(declare-fun bm!456847 () Bool)

(assert (=> bm!456847 (= call!456852 (derivationStepZipperDown!1179 (ite c!1035897 (regOne!32339 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292))))) (regOne!32338 (ite c!1035738 (regTwo!32339 r!7292) (ite c!1035735 (regTwo!32338 r!7292) (ite c!1035736 (regOne!32338 r!7292) (reg!16242 r!7292)))))) (ite c!1035897 (ite (or c!1035738 c!1035735) lt!2303990 (Context!10595 call!456715)) (Context!10595 call!456849)) (h!70364 s!2326)))))

(assert (= (and d!1836246 c!1035896) b!5844981))

(assert (= (and d!1836246 (not c!1035896)) b!5844982))

(assert (= (and b!5844982 c!1035897) b!5844980))

(assert (= (and b!5844982 (not c!1035897)) b!5844976))

(assert (= (and b!5844976 res!2461850) b!5844985))

(assert (= (and b!5844976 c!1035894) b!5844975))

(assert (= (and b!5844976 (not c!1035894)) b!5844979))

(assert (= (and b!5844979 c!1035895) b!5844977))

(assert (= (and b!5844979 (not c!1035895)) b!5844983))

(assert (= (and b!5844983 c!1035898) b!5844984))

(assert (= (and b!5844983 (not c!1035898)) b!5844978))

(assert (= (or b!5844977 b!5844984) bm!456843))

(assert (= (or b!5844977 b!5844984) bm!456846))

(assert (= (or b!5844975 bm!456843) bm!456842))

(assert (= (or b!5844975 bm!456846) bm!456845))

(assert (= (or b!5844980 bm!456845) bm!456844))

(assert (= (or b!5844980 b!5844975) bm!456847))

(declare-fun m!6767530 () Bool)

(assert (=> bm!456844 m!6767530))

(declare-fun m!6767532 () Bool)

(assert (=> bm!456847 m!6767532))

(declare-fun m!6767534 () Bool)

(assert (=> b!5844985 m!6767534))

(declare-fun m!6767536 () Bool)

(assert (=> b!5844981 m!6767536))

(declare-fun m!6767538 () Bool)

(assert (=> bm!456842 m!6767538))

(assert (=> bm!456709 d!1836246))

(assert (=> d!1836008 d!1836076))

(assert (=> d!1836008 d!1836042))

(declare-fun bs!1377079 () Bool)

(declare-fun b!5845005 () Bool)

(assert (= bs!1377079 (and b!5845005 b!5844323)))

(declare-fun lambda!319721 () Int)

(assert (=> bs!1377079 (= (and (= (reg!16242 (regOne!32339 (regOne!32339 r!7292))) (reg!16242 (regTwo!32339 r!7292))) (= (regOne!32339 (regOne!32339 r!7292)) (regTwo!32339 r!7292))) (= lambda!319721 lambda!319689))))

(declare-fun bs!1377080 () Bool)

(assert (= bs!1377080 (and b!5845005 b!5844320)))

(assert (=> bs!1377080 (not (= lambda!319721 lambda!319690))))

(declare-fun bs!1377081 () Bool)

(assert (= bs!1377081 (and b!5845005 b!5844659)))

(assert (=> bs!1377081 (= (and (= (reg!16242 (regOne!32339 (regOne!32339 r!7292))) (reg!16242 (regTwo!32339 (regOne!32339 r!7292)))) (= (regOne!32339 (regOne!32339 r!7292)) (regTwo!32339 (regOne!32339 r!7292)))) (= lambda!319721 lambda!319704))))

(declare-fun bs!1377082 () Bool)

(assert (= bs!1377082 (and b!5845005 b!5844345)))

(assert (=> bs!1377082 (not (= lambda!319721 lambda!319692))))

(declare-fun bs!1377083 () Bool)

(assert (= bs!1377083 (and b!5845005 b!5844831)))

(assert (=> bs!1377083 (not (= lambda!319721 lambda!319715))))

(declare-fun bs!1377084 () Bool)

(assert (= bs!1377084 (and b!5845005 b!5844904)))

(assert (=> bs!1377084 (= (and (= (reg!16242 (regOne!32339 (regOne!32339 r!7292))) (reg!16242 (regTwo!32339 (regTwo!32339 r!7292)))) (= (regOne!32339 (regOne!32339 r!7292)) (regTwo!32339 (regTwo!32339 r!7292)))) (= lambda!319721 lambda!319716))))

(declare-fun bs!1377085 () Bool)

(assert (= bs!1377085 (and b!5845005 b!5844153)))

(assert (=> bs!1377085 (not (= lambda!319721 lambda!319684))))

(declare-fun bs!1377086 () Bool)

(assert (= bs!1377086 (and b!5845005 b!5844834)))

(assert (=> bs!1377086 (= (and (= (reg!16242 (regOne!32339 (regOne!32339 r!7292))) (reg!16242 (regOne!32339 (regTwo!32339 r!7292)))) (= (regOne!32339 (regOne!32339 r!7292)) (regOne!32339 (regTwo!32339 r!7292)))) (= lambda!319721 lambda!319713))))

(declare-fun bs!1377087 () Bool)

(assert (= bs!1377087 (and b!5845005 b!5844656)))

(assert (=> bs!1377087 (not (= lambda!319721 lambda!319705))))

(declare-fun bs!1377088 () Bool)

(assert (= bs!1377088 (and b!5845005 b!5844156)))

(assert (=> bs!1377088 (= (and (= (reg!16242 (regOne!32339 (regOne!32339 r!7292))) (reg!16242 r!7292)) (= (regOne!32339 (regOne!32339 r!7292)) r!7292)) (= lambda!319721 lambda!319683))))

(declare-fun bs!1377089 () Bool)

(assert (= bs!1377089 (and b!5845005 b!5844348)))

(assert (=> bs!1377089 (= (and (= (reg!16242 (regOne!32339 (regOne!32339 r!7292))) (reg!16242 (regOne!32339 r!7292))) (= (regOne!32339 (regOne!32339 r!7292)) (regOne!32339 r!7292))) (= lambda!319721 lambda!319691))))

(declare-fun bs!1377090 () Bool)

(assert (= bs!1377090 (and b!5845005 b!5844901)))

(assert (=> bs!1377090 (not (= lambda!319721 lambda!319717))))

(assert (=> b!5845005 true))

(assert (=> b!5845005 true))

(declare-fun bs!1377091 () Bool)

(declare-fun b!5845002 () Bool)

(assert (= bs!1377091 (and b!5845002 b!5845005)))

(declare-fun lambda!319722 () Int)

(assert (=> bs!1377091 (not (= lambda!319722 lambda!319721))))

(declare-fun bs!1377092 () Bool)

(assert (= bs!1377092 (and b!5845002 b!5844323)))

(assert (=> bs!1377092 (not (= lambda!319722 lambda!319689))))

(declare-fun bs!1377093 () Bool)

(assert (= bs!1377093 (and b!5845002 b!5844320)))

(assert (=> bs!1377093 (= (and (= (regOne!32338 (regOne!32339 (regOne!32339 r!7292))) (regOne!32338 (regTwo!32339 r!7292))) (= (regTwo!32338 (regOne!32339 (regOne!32339 r!7292))) (regTwo!32338 (regTwo!32339 r!7292)))) (= lambda!319722 lambda!319690))))

(declare-fun bs!1377094 () Bool)

(assert (= bs!1377094 (and b!5845002 b!5844659)))

(assert (=> bs!1377094 (not (= lambda!319722 lambda!319704))))

(declare-fun bs!1377095 () Bool)

(assert (= bs!1377095 (and b!5845002 b!5844345)))

(assert (=> bs!1377095 (= (and (= (regOne!32338 (regOne!32339 (regOne!32339 r!7292))) (regOne!32338 (regOne!32339 r!7292))) (= (regTwo!32338 (regOne!32339 (regOne!32339 r!7292))) (regTwo!32338 (regOne!32339 r!7292)))) (= lambda!319722 lambda!319692))))

(declare-fun bs!1377096 () Bool)

(assert (= bs!1377096 (and b!5845002 b!5844831)))

(assert (=> bs!1377096 (= (and (= (regOne!32338 (regOne!32339 (regOne!32339 r!7292))) (regOne!32338 (regOne!32339 (regTwo!32339 r!7292)))) (= (regTwo!32338 (regOne!32339 (regOne!32339 r!7292))) (regTwo!32338 (regOne!32339 (regTwo!32339 r!7292))))) (= lambda!319722 lambda!319715))))

(declare-fun bs!1377097 () Bool)

(assert (= bs!1377097 (and b!5845002 b!5844904)))

(assert (=> bs!1377097 (not (= lambda!319722 lambda!319716))))

(declare-fun bs!1377098 () Bool)

(assert (= bs!1377098 (and b!5845002 b!5844153)))

(assert (=> bs!1377098 (= (and (= (regOne!32338 (regOne!32339 (regOne!32339 r!7292))) (regOne!32338 r!7292)) (= (regTwo!32338 (regOne!32339 (regOne!32339 r!7292))) (regTwo!32338 r!7292))) (= lambda!319722 lambda!319684))))

(declare-fun bs!1377099 () Bool)

(assert (= bs!1377099 (and b!5845002 b!5844834)))

(assert (=> bs!1377099 (not (= lambda!319722 lambda!319713))))

(declare-fun bs!1377100 () Bool)

(assert (= bs!1377100 (and b!5845002 b!5844656)))

(assert (=> bs!1377100 (= (and (= (regOne!32338 (regOne!32339 (regOne!32339 r!7292))) (regOne!32338 (regTwo!32339 (regOne!32339 r!7292)))) (= (regTwo!32338 (regOne!32339 (regOne!32339 r!7292))) (regTwo!32338 (regTwo!32339 (regOne!32339 r!7292))))) (= lambda!319722 lambda!319705))))

(declare-fun bs!1377101 () Bool)

(assert (= bs!1377101 (and b!5845002 b!5844156)))

(assert (=> bs!1377101 (not (= lambda!319722 lambda!319683))))

(declare-fun bs!1377102 () Bool)

(assert (= bs!1377102 (and b!5845002 b!5844348)))

(assert (=> bs!1377102 (not (= lambda!319722 lambda!319691))))

(declare-fun bs!1377103 () Bool)

(assert (= bs!1377103 (and b!5845002 b!5844901)))

(assert (=> bs!1377103 (= (and (= (regOne!32338 (regOne!32339 (regOne!32339 r!7292))) (regOne!32338 (regTwo!32339 (regTwo!32339 r!7292)))) (= (regTwo!32338 (regOne!32339 (regOne!32339 r!7292))) (regTwo!32338 (regTwo!32339 (regTwo!32339 r!7292))))) (= lambda!319722 lambda!319717))))

(assert (=> b!5845002 true))

(assert (=> b!5845002 true))

(declare-fun call!456854 () Bool)

(declare-fun c!1035906 () Bool)

(declare-fun bm!456848 () Bool)

(assert (=> bm!456848 (= call!456854 (Exists!2985 (ite c!1035906 lambda!319721 lambda!319722)))))

(declare-fun b!5844996 () Bool)

(declare-fun res!2461854 () Bool)

(declare-fun e!3584934 () Bool)

(assert (=> b!5844996 (=> res!2461854 e!3584934)))

(declare-fun call!456853 () Bool)

(assert (=> b!5844996 (= res!2461854 call!456853)))

(declare-fun e!3584936 () Bool)

(assert (=> b!5844996 (= e!3584936 e!3584934)))

(declare-fun b!5844997 () Bool)

(declare-fun e!3584935 () Bool)

(declare-fun e!3584938 () Bool)

(assert (=> b!5844997 (= e!3584935 e!3584938)))

(declare-fun res!2461855 () Bool)

(assert (=> b!5844997 (= res!2461855 (matchRSpec!3014 (regOne!32339 (regOne!32339 (regOne!32339 r!7292))) s!2326))))

(assert (=> b!5844997 (=> res!2461855 e!3584938)))

(declare-fun d!1836256 () Bool)

(declare-fun c!1035903 () Bool)

(assert (=> d!1836256 (= c!1035903 ((_ is EmptyExpr!15913) (regOne!32339 (regOne!32339 r!7292))))))

(declare-fun e!3584937 () Bool)

(assert (=> d!1836256 (= (matchRSpec!3014 (regOne!32339 (regOne!32339 r!7292)) s!2326) e!3584937)))

(declare-fun b!5844998 () Bool)

(declare-fun c!1035905 () Bool)

(assert (=> b!5844998 (= c!1035905 ((_ is Union!15913) (regOne!32339 (regOne!32339 r!7292))))))

(declare-fun e!3584933 () Bool)

(assert (=> b!5844998 (= e!3584933 e!3584935)))

(declare-fun b!5844999 () Bool)

(assert (=> b!5844999 (= e!3584935 e!3584936)))

(assert (=> b!5844999 (= c!1035906 ((_ is Star!15913) (regOne!32339 (regOne!32339 r!7292))))))

(declare-fun b!5845000 () Bool)

(declare-fun c!1035904 () Bool)

(assert (=> b!5845000 (= c!1035904 ((_ is ElementMatch!15913) (regOne!32339 (regOne!32339 r!7292))))))

(declare-fun e!3584932 () Bool)

(assert (=> b!5845000 (= e!3584932 e!3584933)))

(declare-fun b!5845001 () Bool)

(assert (=> b!5845001 (= e!3584937 call!456853)))

(declare-fun bm!456849 () Bool)

(assert (=> bm!456849 (= call!456853 (isEmpty!35774 s!2326))))

(assert (=> b!5845002 (= e!3584936 call!456854)))

(declare-fun b!5845003 () Bool)

(assert (=> b!5845003 (= e!3584937 e!3584932)))

(declare-fun res!2461853 () Bool)

(assert (=> b!5845003 (= res!2461853 (not ((_ is EmptyLang!15913) (regOne!32339 (regOne!32339 r!7292)))))))

(assert (=> b!5845003 (=> (not res!2461853) (not e!3584932))))

(declare-fun b!5845004 () Bool)

(assert (=> b!5845004 (= e!3584938 (matchRSpec!3014 (regTwo!32339 (regOne!32339 (regOne!32339 r!7292))) s!2326))))

(assert (=> b!5845005 (= e!3584934 call!456854)))

(declare-fun b!5845006 () Bool)

(assert (=> b!5845006 (= e!3584933 (= s!2326 (Cons!63916 (c!1035547 (regOne!32339 (regOne!32339 r!7292))) Nil!63916)))))

(assert (= (and d!1836256 c!1035903) b!5845001))

(assert (= (and d!1836256 (not c!1035903)) b!5845003))

(assert (= (and b!5845003 res!2461853) b!5845000))

(assert (= (and b!5845000 c!1035904) b!5845006))

(assert (= (and b!5845000 (not c!1035904)) b!5844998))

(assert (= (and b!5844998 c!1035905) b!5844997))

(assert (= (and b!5844998 (not c!1035905)) b!5844999))

(assert (= (and b!5844997 (not res!2461855)) b!5845004))

(assert (= (and b!5844999 c!1035906) b!5844996))

(assert (= (and b!5844999 (not c!1035906)) b!5845002))

(assert (= (and b!5844996 (not res!2461854)) b!5845005))

(assert (= (or b!5845005 b!5845002) bm!456848))

(assert (= (or b!5845001 b!5844996) bm!456849))

(declare-fun m!6767572 () Bool)

(assert (=> bm!456848 m!6767572))

(declare-fun m!6767576 () Bool)

(assert (=> b!5844997 m!6767576))

(assert (=> bm!456849 m!6767010))

(declare-fun m!6767578 () Bool)

(assert (=> b!5845004 m!6767578))

(assert (=> b!5844340 d!1836256))

(assert (=> b!5844363 d!1836062))

(assert (=> b!5844363 d!1836064))

(declare-fun d!1836270 () Bool)

(assert (=> d!1836270 (= ($colon$colon!1818 (exprs!5797 lt!2303990) (ite (or c!1035678 c!1035679) (regTwo!32338 (regOne!32339 r!7292)) (regOne!32339 r!7292))) (Cons!63914 (ite (or c!1035678 c!1035679) (regTwo!32338 (regOne!32339 r!7292)) (regOne!32339 r!7292)) (exprs!5797 lt!2303990)))))

(assert (=> bm!456680 d!1836270))

(declare-fun e!3584961 () Bool)

(assert (=> b!5844512 (= tp!1616129 e!3584961)))

(declare-fun b!5845047 () Bool)

(declare-fun tp!1616164 () Bool)

(declare-fun tp!1616167 () Bool)

(assert (=> b!5845047 (= e!3584961 (and tp!1616164 tp!1616167))))

(declare-fun b!5845048 () Bool)

(declare-fun tp!1616166 () Bool)

(assert (=> b!5845048 (= e!3584961 tp!1616166)))

(declare-fun b!5845046 () Bool)

(assert (=> b!5845046 (= e!3584961 tp_is_empty!41079)))

(declare-fun b!5845049 () Bool)

(declare-fun tp!1616163 () Bool)

(declare-fun tp!1616165 () Bool)

(assert (=> b!5845049 (= e!3584961 (and tp!1616163 tp!1616165))))

(assert (= (and b!5844512 ((_ is ElementMatch!15913) (regOne!32338 (regOne!32339 r!7292)))) b!5845046))

(assert (= (and b!5844512 ((_ is Concat!24758) (regOne!32338 (regOne!32339 r!7292)))) b!5845047))

(assert (= (and b!5844512 ((_ is Star!15913) (regOne!32338 (regOne!32339 r!7292)))) b!5845048))

(assert (= (and b!5844512 ((_ is Union!15913) (regOne!32338 (regOne!32339 r!7292)))) b!5845049))

(declare-fun e!3584962 () Bool)

(assert (=> b!5844512 (= tp!1616132 e!3584962)))

(declare-fun b!5845051 () Bool)

(declare-fun tp!1616169 () Bool)

(declare-fun tp!1616172 () Bool)

(assert (=> b!5845051 (= e!3584962 (and tp!1616169 tp!1616172))))

(declare-fun b!5845052 () Bool)

(declare-fun tp!1616171 () Bool)

(assert (=> b!5845052 (= e!3584962 tp!1616171)))

(declare-fun b!5845050 () Bool)

(assert (=> b!5845050 (= e!3584962 tp_is_empty!41079)))

(declare-fun b!5845053 () Bool)

(declare-fun tp!1616168 () Bool)

(declare-fun tp!1616170 () Bool)

(assert (=> b!5845053 (= e!3584962 (and tp!1616168 tp!1616170))))

(assert (= (and b!5844512 ((_ is ElementMatch!15913) (regTwo!32338 (regOne!32339 r!7292)))) b!5845050))

(assert (= (and b!5844512 ((_ is Concat!24758) (regTwo!32338 (regOne!32339 r!7292)))) b!5845051))

(assert (= (and b!5844512 ((_ is Star!15913) (regTwo!32338 (regOne!32339 r!7292)))) b!5845052))

(assert (= (and b!5844512 ((_ is Union!15913) (regTwo!32338 (regOne!32339 r!7292)))) b!5845053))

(declare-fun e!3584963 () Bool)

(assert (=> b!5844513 (= tp!1616131 e!3584963)))

(declare-fun b!5845055 () Bool)

(declare-fun tp!1616174 () Bool)

(declare-fun tp!1616177 () Bool)

(assert (=> b!5845055 (= e!3584963 (and tp!1616174 tp!1616177))))

(declare-fun b!5845056 () Bool)

(declare-fun tp!1616176 () Bool)

(assert (=> b!5845056 (= e!3584963 tp!1616176)))

(declare-fun b!5845054 () Bool)

(assert (=> b!5845054 (= e!3584963 tp_is_empty!41079)))

(declare-fun b!5845057 () Bool)

(declare-fun tp!1616173 () Bool)

(declare-fun tp!1616175 () Bool)

(assert (=> b!5845057 (= e!3584963 (and tp!1616173 tp!1616175))))

(assert (= (and b!5844513 ((_ is ElementMatch!15913) (reg!16242 (regOne!32339 r!7292)))) b!5845054))

(assert (= (and b!5844513 ((_ is Concat!24758) (reg!16242 (regOne!32339 r!7292)))) b!5845055))

(assert (= (and b!5844513 ((_ is Star!15913) (reg!16242 (regOne!32339 r!7292)))) b!5845056))

(assert (= (and b!5844513 ((_ is Union!15913) (reg!16242 (regOne!32339 r!7292)))) b!5845057))

(declare-fun e!3584964 () Bool)

(assert (=> b!5844514 (= tp!1616128 e!3584964)))

(declare-fun b!5845059 () Bool)

(declare-fun tp!1616179 () Bool)

(declare-fun tp!1616182 () Bool)

(assert (=> b!5845059 (= e!3584964 (and tp!1616179 tp!1616182))))

(declare-fun b!5845060 () Bool)

(declare-fun tp!1616181 () Bool)

(assert (=> b!5845060 (= e!3584964 tp!1616181)))

(declare-fun b!5845058 () Bool)

(assert (=> b!5845058 (= e!3584964 tp_is_empty!41079)))

(declare-fun b!5845061 () Bool)

(declare-fun tp!1616178 () Bool)

(declare-fun tp!1616180 () Bool)

(assert (=> b!5845061 (= e!3584964 (and tp!1616178 tp!1616180))))

(assert (= (and b!5844514 ((_ is ElementMatch!15913) (regOne!32339 (regOne!32339 r!7292)))) b!5845058))

(assert (= (and b!5844514 ((_ is Concat!24758) (regOne!32339 (regOne!32339 r!7292)))) b!5845059))

(assert (= (and b!5844514 ((_ is Star!15913) (regOne!32339 (regOne!32339 r!7292)))) b!5845060))

(assert (= (and b!5844514 ((_ is Union!15913) (regOne!32339 (regOne!32339 r!7292)))) b!5845061))

(declare-fun e!3584965 () Bool)

(assert (=> b!5844514 (= tp!1616130 e!3584965)))

(declare-fun b!5845063 () Bool)

(declare-fun tp!1616184 () Bool)

(declare-fun tp!1616187 () Bool)

(assert (=> b!5845063 (= e!3584965 (and tp!1616184 tp!1616187))))

(declare-fun b!5845064 () Bool)

(declare-fun tp!1616186 () Bool)

(assert (=> b!5845064 (= e!3584965 tp!1616186)))

(declare-fun b!5845062 () Bool)

(assert (=> b!5845062 (= e!3584965 tp_is_empty!41079)))

(declare-fun b!5845065 () Bool)

(declare-fun tp!1616183 () Bool)

(declare-fun tp!1616185 () Bool)

(assert (=> b!5845065 (= e!3584965 (and tp!1616183 tp!1616185))))

(assert (= (and b!5844514 ((_ is ElementMatch!15913) (regTwo!32339 (regOne!32339 r!7292)))) b!5845062))

(assert (= (and b!5844514 ((_ is Concat!24758) (regTwo!32339 (regOne!32339 r!7292)))) b!5845063))

(assert (= (and b!5844514 ((_ is Star!15913) (regTwo!32339 (regOne!32339 r!7292)))) b!5845064))

(assert (= (and b!5844514 ((_ is Union!15913) (regTwo!32339 (regOne!32339 r!7292)))) b!5845065))

(declare-fun e!3584966 () Bool)

(assert (=> b!5844534 (= tp!1616153 e!3584966)))

(declare-fun b!5845067 () Bool)

(declare-fun tp!1616189 () Bool)

(declare-fun tp!1616192 () Bool)

(assert (=> b!5845067 (= e!3584966 (and tp!1616189 tp!1616192))))

(declare-fun b!5845068 () Bool)

(declare-fun tp!1616191 () Bool)

(assert (=> b!5845068 (= e!3584966 tp!1616191)))

(declare-fun b!5845066 () Bool)

(assert (=> b!5845066 (= e!3584966 tp_is_empty!41079)))

(declare-fun b!5845069 () Bool)

(declare-fun tp!1616188 () Bool)

(declare-fun tp!1616190 () Bool)

(assert (=> b!5845069 (= e!3584966 (and tp!1616188 tp!1616190))))

(assert (= (and b!5844534 ((_ is ElementMatch!15913) (regOne!32338 (reg!16242 r!7292)))) b!5845066))

(assert (= (and b!5844534 ((_ is Concat!24758) (regOne!32338 (reg!16242 r!7292)))) b!5845067))

(assert (= (and b!5844534 ((_ is Star!15913) (regOne!32338 (reg!16242 r!7292)))) b!5845068))

(assert (= (and b!5844534 ((_ is Union!15913) (regOne!32338 (reg!16242 r!7292)))) b!5845069))

(declare-fun e!3584973 () Bool)

(assert (=> b!5844534 (= tp!1616156 e!3584973)))

(declare-fun b!5845082 () Bool)

(declare-fun tp!1616194 () Bool)

(declare-fun tp!1616197 () Bool)

(assert (=> b!5845082 (= e!3584973 (and tp!1616194 tp!1616197))))

(declare-fun b!5845083 () Bool)

(declare-fun tp!1616196 () Bool)

(assert (=> b!5845083 (= e!3584973 tp!1616196)))

(declare-fun b!5845081 () Bool)

(assert (=> b!5845081 (= e!3584973 tp_is_empty!41079)))

(declare-fun b!5845084 () Bool)

(declare-fun tp!1616193 () Bool)

(declare-fun tp!1616195 () Bool)

(assert (=> b!5845084 (= e!3584973 (and tp!1616193 tp!1616195))))

(assert (= (and b!5844534 ((_ is ElementMatch!15913) (regTwo!32338 (reg!16242 r!7292)))) b!5845081))

(assert (= (and b!5844534 ((_ is Concat!24758) (regTwo!32338 (reg!16242 r!7292)))) b!5845082))

(assert (= (and b!5844534 ((_ is Star!15913) (regTwo!32338 (reg!16242 r!7292)))) b!5845083))

(assert (= (and b!5844534 ((_ is Union!15913) (regTwo!32338 (reg!16242 r!7292)))) b!5845084))

(declare-fun e!3584974 () Bool)

(assert (=> b!5844535 (= tp!1616155 e!3584974)))

(declare-fun b!5845086 () Bool)

(declare-fun tp!1616199 () Bool)

(declare-fun tp!1616202 () Bool)

(assert (=> b!5845086 (= e!3584974 (and tp!1616199 tp!1616202))))

(declare-fun b!5845087 () Bool)

(declare-fun tp!1616201 () Bool)

(assert (=> b!5845087 (= e!3584974 tp!1616201)))

(declare-fun b!5845085 () Bool)

(assert (=> b!5845085 (= e!3584974 tp_is_empty!41079)))

(declare-fun b!5845088 () Bool)

(declare-fun tp!1616198 () Bool)

(declare-fun tp!1616200 () Bool)

(assert (=> b!5845088 (= e!3584974 (and tp!1616198 tp!1616200))))

(assert (= (and b!5844535 ((_ is ElementMatch!15913) (reg!16242 (reg!16242 r!7292)))) b!5845085))

(assert (= (and b!5844535 ((_ is Concat!24758) (reg!16242 (reg!16242 r!7292)))) b!5845086))

(assert (= (and b!5844535 ((_ is Star!15913) (reg!16242 (reg!16242 r!7292)))) b!5845087))

(assert (= (and b!5844535 ((_ is Union!15913) (reg!16242 (reg!16242 r!7292)))) b!5845088))

(declare-fun e!3584975 () Bool)

(assert (=> b!5844536 (= tp!1616152 e!3584975)))

(declare-fun b!5845090 () Bool)

(declare-fun tp!1616204 () Bool)

(declare-fun tp!1616207 () Bool)

(assert (=> b!5845090 (= e!3584975 (and tp!1616204 tp!1616207))))

(declare-fun b!5845091 () Bool)

(declare-fun tp!1616206 () Bool)

(assert (=> b!5845091 (= e!3584975 tp!1616206)))

(declare-fun b!5845089 () Bool)

(assert (=> b!5845089 (= e!3584975 tp_is_empty!41079)))

(declare-fun b!5845092 () Bool)

(declare-fun tp!1616203 () Bool)

(declare-fun tp!1616205 () Bool)

(assert (=> b!5845092 (= e!3584975 (and tp!1616203 tp!1616205))))

(assert (= (and b!5844536 ((_ is ElementMatch!15913) (regOne!32339 (reg!16242 r!7292)))) b!5845089))

(assert (= (and b!5844536 ((_ is Concat!24758) (regOne!32339 (reg!16242 r!7292)))) b!5845090))

(assert (= (and b!5844536 ((_ is Star!15913) (regOne!32339 (reg!16242 r!7292)))) b!5845091))

(assert (= (and b!5844536 ((_ is Union!15913) (regOne!32339 (reg!16242 r!7292)))) b!5845092))

(declare-fun e!3584976 () Bool)

(assert (=> b!5844536 (= tp!1616154 e!3584976)))

(declare-fun b!5845094 () Bool)

(declare-fun tp!1616209 () Bool)

(declare-fun tp!1616212 () Bool)

(assert (=> b!5845094 (= e!3584976 (and tp!1616209 tp!1616212))))

(declare-fun b!5845095 () Bool)

(declare-fun tp!1616211 () Bool)

(assert (=> b!5845095 (= e!3584976 tp!1616211)))

(declare-fun b!5845093 () Bool)

(assert (=> b!5845093 (= e!3584976 tp_is_empty!41079)))

(declare-fun b!5845096 () Bool)

(declare-fun tp!1616208 () Bool)

(declare-fun tp!1616210 () Bool)

(assert (=> b!5845096 (= e!3584976 (and tp!1616208 tp!1616210))))

(assert (= (and b!5844536 ((_ is ElementMatch!15913) (regTwo!32339 (reg!16242 r!7292)))) b!5845093))

(assert (= (and b!5844536 ((_ is Concat!24758) (regTwo!32339 (reg!16242 r!7292)))) b!5845094))

(assert (= (and b!5844536 ((_ is Star!15913) (regTwo!32339 (reg!16242 r!7292)))) b!5845095))

(assert (= (and b!5844536 ((_ is Union!15913) (regTwo!32339 (reg!16242 r!7292)))) b!5845096))

(declare-fun e!3584977 () Bool)

(assert (=> b!5844499 (= tp!1616116 e!3584977)))

(declare-fun b!5845098 () Bool)

(declare-fun tp!1616214 () Bool)

(declare-fun tp!1616217 () Bool)

(assert (=> b!5845098 (= e!3584977 (and tp!1616214 tp!1616217))))

(declare-fun b!5845099 () Bool)

(declare-fun tp!1616216 () Bool)

(assert (=> b!5845099 (= e!3584977 tp!1616216)))

(declare-fun b!5845097 () Bool)

(assert (=> b!5845097 (= e!3584977 tp_is_empty!41079)))

(declare-fun b!5845100 () Bool)

(declare-fun tp!1616213 () Bool)

(declare-fun tp!1616215 () Bool)

(assert (=> b!5845100 (= e!3584977 (and tp!1616213 tp!1616215))))

(assert (= (and b!5844499 ((_ is ElementMatch!15913) (regOne!32338 (regOne!32338 r!7292)))) b!5845097))

(assert (= (and b!5844499 ((_ is Concat!24758) (regOne!32338 (regOne!32338 r!7292)))) b!5845098))

(assert (= (and b!5844499 ((_ is Star!15913) (regOne!32338 (regOne!32338 r!7292)))) b!5845099))

(assert (= (and b!5844499 ((_ is Union!15913) (regOne!32338 (regOne!32338 r!7292)))) b!5845100))

(declare-fun e!3584978 () Bool)

(assert (=> b!5844499 (= tp!1616119 e!3584978)))

(declare-fun b!5845102 () Bool)

(declare-fun tp!1616219 () Bool)

(declare-fun tp!1616222 () Bool)

(assert (=> b!5845102 (= e!3584978 (and tp!1616219 tp!1616222))))

(declare-fun b!5845103 () Bool)

(declare-fun tp!1616221 () Bool)

(assert (=> b!5845103 (= e!3584978 tp!1616221)))

(declare-fun b!5845101 () Bool)

(assert (=> b!5845101 (= e!3584978 tp_is_empty!41079)))

(declare-fun b!5845104 () Bool)

(declare-fun tp!1616218 () Bool)

(declare-fun tp!1616220 () Bool)

(assert (=> b!5845104 (= e!3584978 (and tp!1616218 tp!1616220))))

(assert (= (and b!5844499 ((_ is ElementMatch!15913) (regTwo!32338 (regOne!32338 r!7292)))) b!5845101))

(assert (= (and b!5844499 ((_ is Concat!24758) (regTwo!32338 (regOne!32338 r!7292)))) b!5845102))

(assert (= (and b!5844499 ((_ is Star!15913) (regTwo!32338 (regOne!32338 r!7292)))) b!5845103))

(assert (= (and b!5844499 ((_ is Union!15913) (regTwo!32338 (regOne!32338 r!7292)))) b!5845104))

(declare-fun e!3584979 () Bool)

(assert (=> b!5844500 (= tp!1616118 e!3584979)))

(declare-fun b!5845106 () Bool)

(declare-fun tp!1616224 () Bool)

(declare-fun tp!1616227 () Bool)

(assert (=> b!5845106 (= e!3584979 (and tp!1616224 tp!1616227))))

(declare-fun b!5845107 () Bool)

(declare-fun tp!1616226 () Bool)

(assert (=> b!5845107 (= e!3584979 tp!1616226)))

(declare-fun b!5845105 () Bool)

(assert (=> b!5845105 (= e!3584979 tp_is_empty!41079)))

(declare-fun b!5845108 () Bool)

(declare-fun tp!1616223 () Bool)

(declare-fun tp!1616225 () Bool)

(assert (=> b!5845108 (= e!3584979 (and tp!1616223 tp!1616225))))

(assert (= (and b!5844500 ((_ is ElementMatch!15913) (reg!16242 (regOne!32338 r!7292)))) b!5845105))

(assert (= (and b!5844500 ((_ is Concat!24758) (reg!16242 (regOne!32338 r!7292)))) b!5845106))

(assert (= (and b!5844500 ((_ is Star!15913) (reg!16242 (regOne!32338 r!7292)))) b!5845107))

(assert (= (and b!5844500 ((_ is Union!15913) (reg!16242 (regOne!32338 r!7292)))) b!5845108))

(declare-fun condSetEmpty!39607 () Bool)

(assert (=> setNonEmpty!39606 (= condSetEmpty!39607 (= setRest!39606 ((as const (Array Context!10594 Bool)) false)))))

(declare-fun setRes!39607 () Bool)

(assert (=> setNonEmpty!39606 (= tp!1616148 setRes!39607)))

(declare-fun setIsEmpty!39607 () Bool)

(assert (=> setIsEmpty!39607 setRes!39607))

(declare-fun e!3584980 () Bool)

(declare-fun setNonEmpty!39607 () Bool)

(declare-fun setElem!39607 () Context!10594)

(declare-fun tp!1616228 () Bool)

(assert (=> setNonEmpty!39607 (= setRes!39607 (and tp!1616228 (inv!83029 setElem!39607) e!3584980))))

(declare-fun setRest!39607 () (InoxSet Context!10594))

(assert (=> setNonEmpty!39607 (= setRest!39606 ((_ map or) (store ((as const (Array Context!10594 Bool)) false) setElem!39607 true) setRest!39607))))

(declare-fun b!5845109 () Bool)

(declare-fun tp!1616229 () Bool)

(assert (=> b!5845109 (= e!3584980 tp!1616229)))

(assert (= (and setNonEmpty!39606 condSetEmpty!39607) setIsEmpty!39607))

(assert (= (and setNonEmpty!39606 (not condSetEmpty!39607)) setNonEmpty!39607))

(assert (= setNonEmpty!39607 b!5845109))

(declare-fun m!6767600 () Bool)

(assert (=> setNonEmpty!39607 m!6767600))

(declare-fun e!3584981 () Bool)

(assert (=> b!5844501 (= tp!1616115 e!3584981)))

(declare-fun b!5845111 () Bool)

(declare-fun tp!1616231 () Bool)

(declare-fun tp!1616234 () Bool)

(assert (=> b!5845111 (= e!3584981 (and tp!1616231 tp!1616234))))

(declare-fun b!5845112 () Bool)

(declare-fun tp!1616233 () Bool)

(assert (=> b!5845112 (= e!3584981 tp!1616233)))

(declare-fun b!5845110 () Bool)

(assert (=> b!5845110 (= e!3584981 tp_is_empty!41079)))

(declare-fun b!5845113 () Bool)

(declare-fun tp!1616230 () Bool)

(declare-fun tp!1616232 () Bool)

(assert (=> b!5845113 (= e!3584981 (and tp!1616230 tp!1616232))))

(assert (= (and b!5844501 ((_ is ElementMatch!15913) (regOne!32339 (regOne!32338 r!7292)))) b!5845110))

(assert (= (and b!5844501 ((_ is Concat!24758) (regOne!32339 (regOne!32338 r!7292)))) b!5845111))

(assert (= (and b!5844501 ((_ is Star!15913) (regOne!32339 (regOne!32338 r!7292)))) b!5845112))

(assert (= (and b!5844501 ((_ is Union!15913) (regOne!32339 (regOne!32338 r!7292)))) b!5845113))

(declare-fun e!3584982 () Bool)

(assert (=> b!5844501 (= tp!1616117 e!3584982)))

(declare-fun b!5845115 () Bool)

(declare-fun tp!1616236 () Bool)

(declare-fun tp!1616239 () Bool)

(assert (=> b!5845115 (= e!3584982 (and tp!1616236 tp!1616239))))

(declare-fun b!5845116 () Bool)

(declare-fun tp!1616238 () Bool)

(assert (=> b!5845116 (= e!3584982 tp!1616238)))

(declare-fun b!5845114 () Bool)

(assert (=> b!5845114 (= e!3584982 tp_is_empty!41079)))

(declare-fun b!5845117 () Bool)

(declare-fun tp!1616235 () Bool)

(declare-fun tp!1616237 () Bool)

(assert (=> b!5845117 (= e!3584982 (and tp!1616235 tp!1616237))))

(assert (= (and b!5844501 ((_ is ElementMatch!15913) (regTwo!32339 (regOne!32338 r!7292)))) b!5845114))

(assert (= (and b!5844501 ((_ is Concat!24758) (regTwo!32339 (regOne!32338 r!7292)))) b!5845115))

(assert (= (and b!5844501 ((_ is Star!15913) (regTwo!32339 (regOne!32338 r!7292)))) b!5845116))

(assert (= (and b!5844501 ((_ is Union!15913) (regTwo!32339 (regOne!32338 r!7292)))) b!5845117))

(declare-fun b!5845118 () Bool)

(declare-fun e!3584983 () Bool)

(declare-fun tp!1616240 () Bool)

(declare-fun tp!1616241 () Bool)

(assert (=> b!5845118 (= e!3584983 (and tp!1616240 tp!1616241))))

(assert (=> b!5844531 (= tp!1616149 e!3584983)))

(assert (= (and b!5844531 ((_ is Cons!63914) (exprs!5797 setElem!39606))) b!5845118))

(declare-fun e!3584984 () Bool)

(assert (=> b!5844516 (= tp!1616134 e!3584984)))

(declare-fun b!5845120 () Bool)

(declare-fun tp!1616243 () Bool)

(declare-fun tp!1616246 () Bool)

(assert (=> b!5845120 (= e!3584984 (and tp!1616243 tp!1616246))))

(declare-fun b!5845121 () Bool)

(declare-fun tp!1616245 () Bool)

(assert (=> b!5845121 (= e!3584984 tp!1616245)))

(declare-fun b!5845119 () Bool)

(assert (=> b!5845119 (= e!3584984 tp_is_empty!41079)))

(declare-fun b!5845122 () Bool)

(declare-fun tp!1616242 () Bool)

(declare-fun tp!1616244 () Bool)

(assert (=> b!5845122 (= e!3584984 (and tp!1616242 tp!1616244))))

(assert (= (and b!5844516 ((_ is ElementMatch!15913) (regOne!32338 (regTwo!32339 r!7292)))) b!5845119))

(assert (= (and b!5844516 ((_ is Concat!24758) (regOne!32338 (regTwo!32339 r!7292)))) b!5845120))

(assert (= (and b!5844516 ((_ is Star!15913) (regOne!32338 (regTwo!32339 r!7292)))) b!5845121))

(assert (= (and b!5844516 ((_ is Union!15913) (regOne!32338 (regTwo!32339 r!7292)))) b!5845122))

(declare-fun e!3584985 () Bool)

(assert (=> b!5844516 (= tp!1616137 e!3584985)))

(declare-fun b!5845124 () Bool)

(declare-fun tp!1616248 () Bool)

(declare-fun tp!1616251 () Bool)

(assert (=> b!5845124 (= e!3584985 (and tp!1616248 tp!1616251))))

(declare-fun b!5845125 () Bool)

(declare-fun tp!1616250 () Bool)

(assert (=> b!5845125 (= e!3584985 tp!1616250)))

(declare-fun b!5845123 () Bool)

(assert (=> b!5845123 (= e!3584985 tp_is_empty!41079)))

(declare-fun b!5845126 () Bool)

(declare-fun tp!1616247 () Bool)

(declare-fun tp!1616249 () Bool)

(assert (=> b!5845126 (= e!3584985 (and tp!1616247 tp!1616249))))

(assert (= (and b!5844516 ((_ is ElementMatch!15913) (regTwo!32338 (regTwo!32339 r!7292)))) b!5845123))

(assert (= (and b!5844516 ((_ is Concat!24758) (regTwo!32338 (regTwo!32339 r!7292)))) b!5845124))

(assert (= (and b!5844516 ((_ is Star!15913) (regTwo!32338 (regTwo!32339 r!7292)))) b!5845125))

(assert (= (and b!5844516 ((_ is Union!15913) (regTwo!32338 (regTwo!32339 r!7292)))) b!5845126))

(declare-fun e!3584986 () Bool)

(assert (=> b!5844517 (= tp!1616136 e!3584986)))

(declare-fun b!5845128 () Bool)

(declare-fun tp!1616253 () Bool)

(declare-fun tp!1616256 () Bool)

(assert (=> b!5845128 (= e!3584986 (and tp!1616253 tp!1616256))))

(declare-fun b!5845129 () Bool)

(declare-fun tp!1616255 () Bool)

(assert (=> b!5845129 (= e!3584986 tp!1616255)))

(declare-fun b!5845127 () Bool)

(assert (=> b!5845127 (= e!3584986 tp_is_empty!41079)))

(declare-fun b!5845130 () Bool)

(declare-fun tp!1616252 () Bool)

(declare-fun tp!1616254 () Bool)

(assert (=> b!5845130 (= e!3584986 (and tp!1616252 tp!1616254))))

(assert (= (and b!5844517 ((_ is ElementMatch!15913) (reg!16242 (regTwo!32339 r!7292)))) b!5845127))

(assert (= (and b!5844517 ((_ is Concat!24758) (reg!16242 (regTwo!32339 r!7292)))) b!5845128))

(assert (= (and b!5844517 ((_ is Star!15913) (reg!16242 (regTwo!32339 r!7292)))) b!5845129))

(assert (= (and b!5844517 ((_ is Union!15913) (reg!16242 (regTwo!32339 r!7292)))) b!5845130))

(declare-fun e!3584987 () Bool)

(assert (=> b!5844518 (= tp!1616133 e!3584987)))

(declare-fun b!5845132 () Bool)

(declare-fun tp!1616258 () Bool)

(declare-fun tp!1616261 () Bool)

(assert (=> b!5845132 (= e!3584987 (and tp!1616258 tp!1616261))))

(declare-fun b!5845133 () Bool)

(declare-fun tp!1616260 () Bool)

(assert (=> b!5845133 (= e!3584987 tp!1616260)))

(declare-fun b!5845131 () Bool)

(assert (=> b!5845131 (= e!3584987 tp_is_empty!41079)))

(declare-fun b!5845134 () Bool)

(declare-fun tp!1616257 () Bool)

(declare-fun tp!1616259 () Bool)

(assert (=> b!5845134 (= e!3584987 (and tp!1616257 tp!1616259))))

(assert (= (and b!5844518 ((_ is ElementMatch!15913) (regOne!32339 (regTwo!32339 r!7292)))) b!5845131))

(assert (= (and b!5844518 ((_ is Concat!24758) (regOne!32339 (regTwo!32339 r!7292)))) b!5845132))

(assert (= (and b!5844518 ((_ is Star!15913) (regOne!32339 (regTwo!32339 r!7292)))) b!5845133))

(assert (= (and b!5844518 ((_ is Union!15913) (regOne!32339 (regTwo!32339 r!7292)))) b!5845134))

(declare-fun e!3584988 () Bool)

(assert (=> b!5844518 (= tp!1616135 e!3584988)))

(declare-fun b!5845136 () Bool)

(declare-fun tp!1616263 () Bool)

(declare-fun tp!1616266 () Bool)

(assert (=> b!5845136 (= e!3584988 (and tp!1616263 tp!1616266))))

(declare-fun b!5845137 () Bool)

(declare-fun tp!1616265 () Bool)

(assert (=> b!5845137 (= e!3584988 tp!1616265)))

(declare-fun b!5845135 () Bool)

(assert (=> b!5845135 (= e!3584988 tp_is_empty!41079)))

(declare-fun b!5845138 () Bool)

(declare-fun tp!1616262 () Bool)

(declare-fun tp!1616264 () Bool)

(assert (=> b!5845138 (= e!3584988 (and tp!1616262 tp!1616264))))

(assert (= (and b!5844518 ((_ is ElementMatch!15913) (regTwo!32339 (regTwo!32339 r!7292)))) b!5845135))

(assert (= (and b!5844518 ((_ is Concat!24758) (regTwo!32339 (regTwo!32339 r!7292)))) b!5845136))

(assert (= (and b!5844518 ((_ is Star!15913) (regTwo!32339 (regTwo!32339 r!7292)))) b!5845137))

(assert (= (and b!5844518 ((_ is Union!15913) (regTwo!32339 (regTwo!32339 r!7292)))) b!5845138))

(declare-fun b!5845139 () Bool)

(declare-fun e!3584989 () Bool)

(declare-fun tp!1616267 () Bool)

(assert (=> b!5845139 (= e!3584989 (and tp_is_empty!41079 tp!1616267))))

(assert (=> b!5844510 (= tp!1616127 e!3584989)))

(assert (= (and b!5844510 ((_ is Cons!63916) (t!377397 (t!377397 s!2326)))) b!5845139))

(declare-fun b!5845143 () Bool)

(declare-fun e!3584995 () Bool)

(declare-fun tp!1616268 () Bool)

(assert (=> b!5845143 (= e!3584995 tp!1616268)))

(declare-fun b!5845142 () Bool)

(declare-fun tp!1616269 () Bool)

(declare-fun e!3584994 () Bool)

(assert (=> b!5845142 (= e!3584994 (and (inv!83029 (h!70363 (t!377396 (t!377396 zl!343)))) e!3584995 tp!1616269))))

(assert (=> b!5844525 (= tp!1616143 e!3584994)))

(assert (= b!5845142 b!5845143))

(assert (= (and b!5844525 ((_ is Cons!63915) (t!377396 (t!377396 zl!343)))) b!5845142))

(declare-fun m!6767602 () Bool)

(assert (=> b!5845142 m!6767602))

(declare-fun b!5845146 () Bool)

(declare-fun e!3584996 () Bool)

(declare-fun tp!1616270 () Bool)

(declare-fun tp!1616271 () Bool)

(assert (=> b!5845146 (= e!3584996 (and tp!1616270 tp!1616271))))

(assert (=> b!5844526 (= tp!1616142 e!3584996)))

(assert (= (and b!5844526 ((_ is Cons!63914) (exprs!5797 (h!70363 (t!377396 zl!343))))) b!5845146))

(declare-fun e!3584997 () Bool)

(assert (=> b!5844532 (= tp!1616150 e!3584997)))

(declare-fun b!5845148 () Bool)

(declare-fun tp!1616273 () Bool)

(declare-fun tp!1616276 () Bool)

(assert (=> b!5845148 (= e!3584997 (and tp!1616273 tp!1616276))))

(declare-fun b!5845149 () Bool)

(declare-fun tp!1616275 () Bool)

(assert (=> b!5845149 (= e!3584997 tp!1616275)))

(declare-fun b!5845147 () Bool)

(assert (=> b!5845147 (= e!3584997 tp_is_empty!41079)))

(declare-fun b!5845150 () Bool)

(declare-fun tp!1616272 () Bool)

(declare-fun tp!1616274 () Bool)

(assert (=> b!5845150 (= e!3584997 (and tp!1616272 tp!1616274))))

(assert (= (and b!5844532 ((_ is ElementMatch!15913) (h!70362 (exprs!5797 (h!70363 zl!343))))) b!5845147))

(assert (= (and b!5844532 ((_ is Concat!24758) (h!70362 (exprs!5797 (h!70363 zl!343))))) b!5845148))

(assert (= (and b!5844532 ((_ is Star!15913) (h!70362 (exprs!5797 (h!70363 zl!343))))) b!5845149))

(assert (= (and b!5844532 ((_ is Union!15913) (h!70362 (exprs!5797 (h!70363 zl!343))))) b!5845150))

(declare-fun b!5845151 () Bool)

(declare-fun e!3584998 () Bool)

(declare-fun tp!1616277 () Bool)

(declare-fun tp!1616278 () Bool)

(assert (=> b!5845151 (= e!3584998 (and tp!1616277 tp!1616278))))

(assert (=> b!5844532 (= tp!1616151 e!3584998)))

(assert (= (and b!5844532 ((_ is Cons!63914) (t!377395 (exprs!5797 (h!70363 zl!343))))) b!5845151))

(declare-fun e!3584999 () Bool)

(assert (=> b!5844487 (= tp!1616103 e!3584999)))

(declare-fun b!5845153 () Bool)

(declare-fun tp!1616280 () Bool)

(declare-fun tp!1616283 () Bool)

(assert (=> b!5845153 (= e!3584999 (and tp!1616280 tp!1616283))))

(declare-fun b!5845154 () Bool)

(declare-fun tp!1616282 () Bool)

(assert (=> b!5845154 (= e!3584999 tp!1616282)))

(declare-fun b!5845152 () Bool)

(assert (=> b!5845152 (= e!3584999 tp_is_empty!41079)))

(declare-fun b!5845155 () Bool)

(declare-fun tp!1616279 () Bool)

(declare-fun tp!1616281 () Bool)

(assert (=> b!5845155 (= e!3584999 (and tp!1616279 tp!1616281))))

(assert (= (and b!5844487 ((_ is ElementMatch!15913) (h!70362 (exprs!5797 setElem!39600)))) b!5845152))

(assert (= (and b!5844487 ((_ is Concat!24758) (h!70362 (exprs!5797 setElem!39600)))) b!5845153))

(assert (= (and b!5844487 ((_ is Star!15913) (h!70362 (exprs!5797 setElem!39600)))) b!5845154))

(assert (= (and b!5844487 ((_ is Union!15913) (h!70362 (exprs!5797 setElem!39600)))) b!5845155))

(declare-fun b!5845156 () Bool)

(declare-fun e!3585000 () Bool)

(declare-fun tp!1616284 () Bool)

(declare-fun tp!1616285 () Bool)

(assert (=> b!5845156 (= e!3585000 (and tp!1616284 tp!1616285))))

(assert (=> b!5844487 (= tp!1616104 e!3585000)))

(assert (= (and b!5844487 ((_ is Cons!63914) (t!377395 (exprs!5797 setElem!39600)))) b!5845156))

(declare-fun e!3585001 () Bool)

(assert (=> b!5844503 (= tp!1616121 e!3585001)))

(declare-fun b!5845158 () Bool)

(declare-fun tp!1616287 () Bool)

(declare-fun tp!1616290 () Bool)

(assert (=> b!5845158 (= e!3585001 (and tp!1616287 tp!1616290))))

(declare-fun b!5845159 () Bool)

(declare-fun tp!1616289 () Bool)

(assert (=> b!5845159 (= e!3585001 tp!1616289)))

(declare-fun b!5845157 () Bool)

(assert (=> b!5845157 (= e!3585001 tp_is_empty!41079)))

(declare-fun b!5845160 () Bool)

(declare-fun tp!1616286 () Bool)

(declare-fun tp!1616288 () Bool)

(assert (=> b!5845160 (= e!3585001 (and tp!1616286 tp!1616288))))

(assert (= (and b!5844503 ((_ is ElementMatch!15913) (regOne!32338 (regTwo!32338 r!7292)))) b!5845157))

(assert (= (and b!5844503 ((_ is Concat!24758) (regOne!32338 (regTwo!32338 r!7292)))) b!5845158))

(assert (= (and b!5844503 ((_ is Star!15913) (regOne!32338 (regTwo!32338 r!7292)))) b!5845159))

(assert (= (and b!5844503 ((_ is Union!15913) (regOne!32338 (regTwo!32338 r!7292)))) b!5845160))

(declare-fun e!3585004 () Bool)

(assert (=> b!5844503 (= tp!1616124 e!3585004)))

(declare-fun b!5845164 () Bool)

(declare-fun tp!1616292 () Bool)

(declare-fun tp!1616295 () Bool)

(assert (=> b!5845164 (= e!3585004 (and tp!1616292 tp!1616295))))

(declare-fun b!5845165 () Bool)

(declare-fun tp!1616294 () Bool)

(assert (=> b!5845165 (= e!3585004 tp!1616294)))

(declare-fun b!5845163 () Bool)

(assert (=> b!5845163 (= e!3585004 tp_is_empty!41079)))

(declare-fun b!5845166 () Bool)

(declare-fun tp!1616291 () Bool)

(declare-fun tp!1616293 () Bool)

(assert (=> b!5845166 (= e!3585004 (and tp!1616291 tp!1616293))))

(assert (= (and b!5844503 ((_ is ElementMatch!15913) (regTwo!32338 (regTwo!32338 r!7292)))) b!5845163))

(assert (= (and b!5844503 ((_ is Concat!24758) (regTwo!32338 (regTwo!32338 r!7292)))) b!5845164))

(assert (= (and b!5844503 ((_ is Star!15913) (regTwo!32338 (regTwo!32338 r!7292)))) b!5845165))

(assert (= (and b!5844503 ((_ is Union!15913) (regTwo!32338 (regTwo!32338 r!7292)))) b!5845166))

(declare-fun e!3585005 () Bool)

(assert (=> b!5844504 (= tp!1616123 e!3585005)))

(declare-fun b!5845168 () Bool)

(declare-fun tp!1616297 () Bool)

(declare-fun tp!1616300 () Bool)

(assert (=> b!5845168 (= e!3585005 (and tp!1616297 tp!1616300))))

(declare-fun b!5845169 () Bool)

(declare-fun tp!1616299 () Bool)

(assert (=> b!5845169 (= e!3585005 tp!1616299)))

(declare-fun b!5845167 () Bool)

(assert (=> b!5845167 (= e!3585005 tp_is_empty!41079)))

(declare-fun b!5845170 () Bool)

(declare-fun tp!1616296 () Bool)

(declare-fun tp!1616298 () Bool)

(assert (=> b!5845170 (= e!3585005 (and tp!1616296 tp!1616298))))

(assert (= (and b!5844504 ((_ is ElementMatch!15913) (reg!16242 (regTwo!32338 r!7292)))) b!5845167))

(assert (= (and b!5844504 ((_ is Concat!24758) (reg!16242 (regTwo!32338 r!7292)))) b!5845168))

(assert (= (and b!5844504 ((_ is Star!15913) (reg!16242 (regTwo!32338 r!7292)))) b!5845169))

(assert (= (and b!5844504 ((_ is Union!15913) (reg!16242 (regTwo!32338 r!7292)))) b!5845170))

(declare-fun e!3585006 () Bool)

(assert (=> b!5844505 (= tp!1616120 e!3585006)))

(declare-fun b!5845172 () Bool)

(declare-fun tp!1616302 () Bool)

(declare-fun tp!1616305 () Bool)

(assert (=> b!5845172 (= e!3585006 (and tp!1616302 tp!1616305))))

(declare-fun b!5845173 () Bool)

(declare-fun tp!1616304 () Bool)

(assert (=> b!5845173 (= e!3585006 tp!1616304)))

(declare-fun b!5845171 () Bool)

(assert (=> b!5845171 (= e!3585006 tp_is_empty!41079)))

(declare-fun b!5845174 () Bool)

(declare-fun tp!1616301 () Bool)

(declare-fun tp!1616303 () Bool)

(assert (=> b!5845174 (= e!3585006 (and tp!1616301 tp!1616303))))

(assert (= (and b!5844505 ((_ is ElementMatch!15913) (regOne!32339 (regTwo!32338 r!7292)))) b!5845171))

(assert (= (and b!5844505 ((_ is Concat!24758) (regOne!32339 (regTwo!32338 r!7292)))) b!5845172))

(assert (= (and b!5844505 ((_ is Star!15913) (regOne!32339 (regTwo!32338 r!7292)))) b!5845173))

(assert (= (and b!5844505 ((_ is Union!15913) (regOne!32339 (regTwo!32338 r!7292)))) b!5845174))

(declare-fun e!3585007 () Bool)

(assert (=> b!5844505 (= tp!1616122 e!3585007)))

(declare-fun b!5845176 () Bool)

(declare-fun tp!1616307 () Bool)

(declare-fun tp!1616310 () Bool)

(assert (=> b!5845176 (= e!3585007 (and tp!1616307 tp!1616310))))

(declare-fun b!5845177 () Bool)

(declare-fun tp!1616309 () Bool)

(assert (=> b!5845177 (= e!3585007 tp!1616309)))

(declare-fun b!5845175 () Bool)

(assert (=> b!5845175 (= e!3585007 tp_is_empty!41079)))

(declare-fun b!5845178 () Bool)

(declare-fun tp!1616306 () Bool)

(declare-fun tp!1616308 () Bool)

(assert (=> b!5845178 (= e!3585007 (and tp!1616306 tp!1616308))))

(assert (= (and b!5844505 ((_ is ElementMatch!15913) (regTwo!32339 (regTwo!32338 r!7292)))) b!5845175))

(assert (= (and b!5844505 ((_ is Concat!24758) (regTwo!32339 (regTwo!32338 r!7292)))) b!5845176))

(assert (= (and b!5844505 ((_ is Star!15913) (regTwo!32339 (regTwo!32338 r!7292)))) b!5845177))

(assert (= (and b!5844505 ((_ is Union!15913) (regTwo!32339 (regTwo!32338 r!7292)))) b!5845178))

(declare-fun b_lambda!220065 () Bool)

(assert (= b_lambda!220057 (or d!1836036 b_lambda!220065)))

(declare-fun bs!1377105 () Bool)

(declare-fun d!1836288 () Bool)

(assert (= bs!1377105 (and d!1836288 d!1836036)))

(assert (=> bs!1377105 (= (dynLambda!24983 lambda!319696 (h!70362 (unfocusZipperList!1334 zl!343))) (validRegex!7649 (h!70362 (unfocusZipperList!1334 zl!343))))))

(declare-fun m!6767608 () Bool)

(assert (=> bs!1377105 m!6767608))

(assert (=> b!5844767 d!1836288))

(declare-fun b_lambda!220067 () Bool)

(assert (= b_lambda!220061 (or d!1836012 b_lambda!220067)))

(declare-fun bs!1377106 () Bool)

(declare-fun d!1836290 () Bool)

(assert (= bs!1377106 (and d!1836290 d!1836012)))

(assert (=> bs!1377106 (= (dynLambda!24983 lambda!319687 (h!70362 (exprs!5797 (h!70363 zl!343)))) (validRegex!7649 (h!70362 (exprs!5797 (h!70363 zl!343)))))))

(declare-fun m!6767610 () Bool)

(assert (=> bs!1377106 m!6767610))

(assert (=> b!5844812 d!1836290))

(declare-fun b_lambda!220069 () Bool)

(assert (= b_lambda!220059 (or d!1836014 b_lambda!220069)))

(declare-fun bs!1377107 () Bool)

(declare-fun d!1836292 () Bool)

(assert (= bs!1377107 (and d!1836292 d!1836014)))

(assert (=> bs!1377107 (= (dynLambda!24983 lambda!319688 (h!70362 (exprs!5797 setElem!39600))) (validRegex!7649 (h!70362 (exprs!5797 setElem!39600))))))

(declare-fun m!6767612 () Bool)

(assert (=> bs!1377107 m!6767612))

(assert (=> b!5844769 d!1836292))

(declare-fun b_lambda!220071 () Bool)

(assert (= b_lambda!220063 (or d!1836038 b_lambda!220071)))

(declare-fun bs!1377108 () Bool)

(declare-fun d!1836294 () Bool)

(assert (= bs!1377108 (and d!1836294 d!1836038)))

(assert (=> bs!1377108 (= (dynLambda!24983 lambda!319699 (h!70362 lt!2304037)) (validRegex!7649 (h!70362 lt!2304037)))))

(declare-fun m!6767614 () Bool)

(assert (=> bs!1377108 m!6767614))

(assert (=> b!5844906 d!1836294))

(declare-fun b_lambda!220073 () Bool)

(assert (= b_lambda!220053 (or d!1836040 b_lambda!220073)))

(declare-fun bs!1377109 () Bool)

(declare-fun d!1836296 () Bool)

(assert (= bs!1377109 (and d!1836296 d!1836040)))

(assert (=> bs!1377109 (= (dynLambda!24983 lambda!319702 (h!70362 (exprs!5797 (h!70363 zl!343)))) (validRegex!7649 (h!70362 (exprs!5797 (h!70363 zl!343)))))))

(assert (=> bs!1377109 m!6767610))

(assert (=> b!5844565 d!1836296))

(declare-fun b_lambda!220075 () Bool)

(assert (= b_lambda!220055 (or d!1836034 b_lambda!220075)))

(declare-fun bs!1377110 () Bool)

(declare-fun d!1836298 () Bool)

(assert (= bs!1377110 (and d!1836298 d!1836034)))

(assert (=> bs!1377110 (= (dynLambda!24983 lambda!319693 (h!70362 (exprs!5797 lt!2303990))) (validRegex!7649 (h!70362 (exprs!5797 lt!2303990))))))

(declare-fun m!6767616 () Bool)

(assert (=> bs!1377110 m!6767616))

(assert (=> b!5844661 d!1836298))

(check-sat (not b!5844833) (not d!1836232) (not b!5845082) (not bm!456797) (not b!5845113) (not bm!456824) (not b!5844826) (not b!5845136) (not b!5844557) (not b!5844581) (not b!5845068) (not b!5845065) (not b!5845165) (not b!5845100) (not bm!456752) (not bm!456847) (not b!5845106) (not b!5845159) (not bs!1377105) (not b!5845099) (not bm!456777) (not bm!456809) (not b!5845118) (not b!5844985) (not b!5845149) (not b!5844734) (not b!5845108) (not b!5845047) (not d!1836068) (not b!5844625) (not b!5845086) (not b!5844549) (not bm!456716) (not b_lambda!220067) (not b!5844792) (not b!5844685) (not b!5845051) (not bs!1377106) (not bm!456757) (not b!5845064) (not b!5844651) (not b!5845138) (not bs!1377107) (not bm!456785) (not b!5845129) (not b!5845154) (not b!5844631) (not b!5845158) (not b!5844953) (not d!1836102) (not b!5845121) (not b!5845053) (not b!5844588) (not b!5844629) (not b!5845170) (not b!5845148) (not bm!456835) (not bm!456811) (not b!5845178) (not b!5844799) (not bm!456819) (not d!1836136) (not d!1836100) (not b!5844950) (not b!5845049) (not b!5845146) (not b!5845166) (not b!5844880) (not b!5844943) (not b!5845116) (not bm!456762) (not b!5844787) (not b!5844646) (not bm!456721) (not b!5845056) (not b!5844801) (not bm!456745) (not b!5844551) (not b!5845090) (not b!5845137) (not d!1836070) (not b!5845142) (not b!5845098) (not b!5844591) (not b!5845096) (not bs!1377108) (not b!5845103) (not d!1836166) (not bm!456734) (not bm!456796) (not b!5844768) (not bm!456818) (not b!5845088) (not b_lambda!220075) (not d!1836148) (not b!5845130) (not bm!456788) (not d!1836164) (not bm!456844) (not bm!456761) (not b!5844542) (not bm!456724) (not bm!456829) (not b!5844945) (not bm!456738) (not b!5845124) (not bm!456806) (not d!1836226) (not b!5844946) (not b!5844864) (not b!5845109) (not bm!456741) (not b!5844806) (not b_lambda!220069) (not b!5845155) (not b!5844997) (not b!5845169) (not bm!456804) (not b!5844903) (not bm!456740) (not bm!456768) (not b!5845094) (not b!5844541) (not b!5845060) (not b!5844673) (not bm!456849) (not b!5844770) (not b!5844628) (not b!5844550) (not d!1836080) (not bm!456837) (not b!5845164) (not b!5844961) (not b!5844703) (not bm!456755) (not b!5844910) (not b!5845091) (not bm!456813) (not b!5845176) (not b!5845069) (not d!1836052) (not b!5844714) (not b!5844577) (not b!5844791) (not b!5844627) (not b!5844954) (not b!5845151) (not b!5844675) (not b!5845126) (not b!5845111) (not bm!456826) (not b!5844798) (not bm!456848) (not d!1836134) (not b!5845150) (not b!5845125) tp_is_empty!41079 (not d!1836168) (not b!5845117) (not bm!456718) (not bm!456770) (not d!1836242) (not b!5844754) (not b!5845067) (not b!5844940) (not b!5845143) (not b!5845092) (not b!5844896) (not b!5845115) (not bm!456834) (not b!5844616) (not d!1836098) (not b!5845156) (not b!5845087) (not b!5844942) (not bs!1377109) (not b!5844566) (not bm!456767) (not b!5845095) (not d!1836240) (not bm!456748) (not b!5844637) (not d!1836244) (not b!5845139) (not b!5845172) (not b!5845052) (not d!1836128) (not d!1836084) (not d!1836058) (not b!5845177) (not bm!456842) (not bm!456759) (not bm!456764) (not b!5845055) (not b!5844907) (not b_lambda!220071) (not bm!456751) (not b!5845133) (not b!5845128) (not b!5844813) (not b!5844630) (not bm!456743) (not b!5844678) (not b!5844687) (not b!5845134) (not b!5845132) (not bm!456736) (not b!5844684) (not b!5844949) (not bm!456719) (not b!5845122) (not b!5845059) (not b!5845004) (not b!5844589) (not bm!456816) (not b!5844789) (not b!5845107) (not b!5844658) (not bm!456746) (not bm!456779) (not b!5845084) (not b!5844624) (not bs!1377110) (not b!5845153) (not b!5845083) (not b!5844662) (not b!5845061) (not b!5845102) (not d!1836230) (not b!5845168) (not bm!456725) (not b!5845112) (not b!5845063) (not b!5845104) (not b!5844579) (not d!1836182) (not b_lambda!220065) (not setNonEmpty!39607) (not b_lambda!220073) (not b!5844728) (not b!5844677) (not b!5845048) (not b!5845120) (not bm!456786) (not b!5844948) (not b!5845174) (not b!5844582) (not d!1836174) (not d!1836074) (not d!1836096) (not b!5845160) (not b!5845057) (not b!5845173) (not bm!456744))
(check-sat)
