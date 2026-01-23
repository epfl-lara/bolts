; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720626 () Bool)

(assert start!720626)

(declare-fun b!7387803 () Bool)

(assert (=> b!7387803 true))

(declare-fun b!7387801 () Bool)

(assert (=> b!7387801 true))

(declare-fun b!7387800 () Bool)

(declare-fun e!4421880 () Bool)

(declare-fun tp!2102843 () Bool)

(assert (=> b!7387800 (= e!4421880 tp!2102843)))

(declare-fun e!4421881 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!39008 0))(
  ( (C!39009 (val!29878 Int)) )
))
(declare-datatypes ((Regex!19367 0))(
  ( (ElementMatch!19367 (c!1373059 C!39008)) (Concat!28212 (regOne!39246 Regex!19367) (regTwo!39246 Regex!19367)) (EmptyExpr!19367) (Star!19367 (reg!19696 Regex!19367)) (EmptyLang!19367) (Union!19367 (regOne!39247 Regex!19367) (regTwo!39247 Regex!19367)) )
))
(declare-datatypes ((List!71900 0))(
  ( (Nil!71776) (Cons!71776 (h!78224 Regex!19367) (t!386453 List!71900)) )
))
(declare-datatypes ((Context!16614 0))(
  ( (Context!16615 (exprs!8807 List!71900)) )
))
(declare-fun lt!2617738 () (InoxSet Context!16614))

(declare-fun lambda!458972 () Int)

(declare-fun exists!4727 ((InoxSet Context!16614) Int) Bool)

(assert (=> b!7387801 (= e!4421881 (exists!4727 lt!2617738 lambda!458972))))

(declare-fun b!7387802 () Bool)

(declare-fun res!2978989 () Bool)

(declare-fun e!4421882 () Bool)

(assert (=> b!7387802 (=> (not res!2978989) (not e!4421882))))

(declare-datatypes ((List!71901 0))(
  ( (Nil!71777) (Cons!71777 (h!78225 C!39008) (t!386454 List!71901)) )
))
(declare-fun s!7927 () List!71901)

(declare-fun a!2228 () C!39008)

(get-info :version)

(assert (=> b!7387802 (= res!2978989 (and ((_ is Cons!71777) s!7927) (= (h!78225 s!7927) a!2228)))))

(declare-fun setIsEmpty!55928 () Bool)

(declare-fun setRes!55928 () Bool)

(assert (=> setIsEmpty!55928 setRes!55928))

(declare-fun e!4421885 () Bool)

(assert (=> b!7387803 (= e!4421885 (not e!4421881))))

(declare-fun res!2978986 () Bool)

(assert (=> b!7387803 (=> res!2978986 e!4421881)))

(declare-fun lt!2617739 () Context!16614)

(declare-fun lt!2617737 () (InoxSet Context!16614))

(assert (=> b!7387803 (= res!2978986 (or (not (select lt!2617738 lt!2617739)) (= lt!2617738 lt!2617737)))))

(declare-fun empty!3463 () Context!16614)

(declare-fun z!3451 () (InoxSet Context!16614))

(declare-fun lambda!458971 () Int)

(declare-fun flatMapPost!186 ((InoxSet Context!16614) Int Context!16614) Context!16614)

(assert (=> b!7387803 (= (flatMapPost!186 z!3451 lambda!458971 lt!2617739) empty!3463)))

(assert (=> b!7387803 true))

(declare-fun e!4421883 () Bool)

(declare-fun inv!91778 (Context!16614) Bool)

(assert (=> b!7387803 (and (inv!91778 empty!3463) e!4421883)))

(declare-fun b!7387804 () Bool)

(declare-fun res!2978987 () Bool)

(assert (=> b!7387804 (=> (not res!2978987) (not e!4421882))))

(declare-fun c!10532 () Context!16614)

(declare-fun isEmpty!41007 (List!71900) Bool)

(assert (=> b!7387804 (= res!2978987 (not (isEmpty!41007 (exprs!8807 c!10532))))))

(declare-fun b!7387805 () Bool)

(declare-fun res!2978984 () Bool)

(assert (=> b!7387805 (=> (not res!2978984) (not e!4421882))))

(declare-fun tail!14774 (List!71900) List!71900)

(assert (=> b!7387805 (= res!2978984 (isEmpty!41007 (tail!14774 (exprs!8807 c!10532))))))

(declare-fun b!7387807 () Bool)

(assert (=> b!7387807 (= e!4421882 e!4421885)))

(declare-fun res!2978990 () Bool)

(assert (=> b!7387807 (=> (not res!2978990) (not e!4421885))))

(declare-fun lt!2617736 () C!39008)

(declare-fun derivationStepZipperUp!2773 (Context!16614 C!39008) (InoxSet Context!16614))

(assert (=> b!7387807 (= res!2978990 (= (derivationStepZipperUp!2773 c!10532 lt!2617736) lt!2617737))))

(assert (=> b!7387807 (= lt!2617737 (store ((as const (Array Context!16614 Bool)) false) lt!2617739 true))))

(assert (=> b!7387807 (= lt!2617739 (Context!16615 Nil!71776))))

(declare-fun derivationStepZipper!3651 ((InoxSet Context!16614) C!39008) (InoxSet Context!16614))

(assert (=> b!7387807 (= lt!2617738 (derivationStepZipper!3651 z!3451 lt!2617736))))

(declare-fun head!15118 (List!71901) C!39008)

(assert (=> b!7387807 (= lt!2617736 (head!15118 s!7927))))

(declare-fun tp!2102842 () Bool)

(declare-fun e!4421884 () Bool)

(declare-fun setElem!55928 () Context!16614)

(declare-fun setNonEmpty!55928 () Bool)

(assert (=> setNonEmpty!55928 (= setRes!55928 (and tp!2102842 (inv!91778 setElem!55928) e!4421884))))

(declare-fun setRest!55928 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55928 (= z!3451 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55928 true) setRest!55928))))

(declare-fun b!7387808 () Bool)

(declare-fun tp!2102844 () Bool)

(assert (=> b!7387808 (= e!4421883 tp!2102844)))

(declare-fun b!7387809 () Bool)

(declare-fun res!2978988 () Bool)

(assert (=> b!7387809 (=> (not res!2978988) (not e!4421882))))

(declare-fun head!15119 (List!71900) Regex!19367)

(assert (=> b!7387809 (= res!2978988 (= (head!15119 (exprs!8807 c!10532)) (ElementMatch!19367 a!2228)))))

(declare-fun b!7387810 () Bool)

(declare-fun e!4421886 () Bool)

(declare-fun tp_is_empty!48997 () Bool)

(declare-fun tp!2102845 () Bool)

(assert (=> b!7387810 (= e!4421886 (and tp_is_empty!48997 tp!2102845))))

(declare-fun b!7387806 () Bool)

(declare-fun tp!2102841 () Bool)

(assert (=> b!7387806 (= e!4421884 tp!2102841)))

(declare-fun res!2978985 () Bool)

(assert (=> start!720626 (=> (not res!2978985) (not e!4421882))))

(assert (=> start!720626 (= res!2978985 (= z!3451 (store ((as const (Array Context!16614 Bool)) false) c!10532 true)))))

(assert (=> start!720626 e!4421882))

(declare-fun condSetEmpty!55928 () Bool)

(assert (=> start!720626 (= condSetEmpty!55928 (= z!3451 ((as const (Array Context!16614 Bool)) false)))))

(assert (=> start!720626 setRes!55928))

(assert (=> start!720626 (and (inv!91778 c!10532) e!4421880)))

(assert (=> start!720626 tp_is_empty!48997))

(assert (=> start!720626 e!4421886))

(assert (= (and start!720626 res!2978985) b!7387804))

(assert (= (and b!7387804 res!2978987) b!7387809))

(assert (= (and b!7387809 res!2978988) b!7387805))

(assert (= (and b!7387805 res!2978984) b!7387802))

(assert (= (and b!7387802 res!2978989) b!7387807))

(assert (= (and b!7387807 res!2978990) b!7387803))

(assert (= b!7387803 b!7387808))

(assert (= (and b!7387803 (not res!2978986)) b!7387801))

(assert (= (and start!720626 condSetEmpty!55928) setIsEmpty!55928))

(assert (= (and start!720626 (not condSetEmpty!55928)) setNonEmpty!55928))

(assert (= setNonEmpty!55928 b!7387806))

(assert (= start!720626 b!7387800))

(assert (= (and start!720626 ((_ is Cons!71777) s!7927)) b!7387810))

(declare-fun m!8035038 () Bool)

(assert (=> b!7387809 m!8035038))

(declare-fun m!8035040 () Bool)

(assert (=> start!720626 m!8035040))

(declare-fun m!8035042 () Bool)

(assert (=> start!720626 m!8035042))

(declare-fun m!8035044 () Bool)

(assert (=> setNonEmpty!55928 m!8035044))

(declare-fun m!8035046 () Bool)

(assert (=> b!7387807 m!8035046))

(declare-fun m!8035048 () Bool)

(assert (=> b!7387807 m!8035048))

(declare-fun m!8035050 () Bool)

(assert (=> b!7387807 m!8035050))

(declare-fun m!8035052 () Bool)

(assert (=> b!7387807 m!8035052))

(declare-fun m!8035054 () Bool)

(assert (=> b!7387805 m!8035054))

(assert (=> b!7387805 m!8035054))

(declare-fun m!8035056 () Bool)

(assert (=> b!7387805 m!8035056))

(declare-fun m!8035058 () Bool)

(assert (=> b!7387801 m!8035058))

(declare-fun m!8035060 () Bool)

(assert (=> b!7387804 m!8035060))

(declare-fun m!8035062 () Bool)

(assert (=> b!7387803 m!8035062))

(declare-fun m!8035064 () Bool)

(assert (=> b!7387803 m!8035064))

(declare-fun m!8035066 () Bool)

(assert (=> b!7387803 m!8035066))

(check-sat (not b!7387800) (not start!720626) tp_is_empty!48997 (not b!7387808) (not b!7387803) (not b!7387810) (not setNonEmpty!55928) (not b!7387809) (not b!7387805) (not b!7387806) (not b!7387807) (not b!7387804) (not b!7387801))
(check-sat)
(get-model)

(declare-fun d!2286959 () Bool)

(declare-fun lambda!458983 () Int)

(declare-fun forall!18151 (List!71900 Int) Bool)

(assert (=> d!2286959 (= (inv!91778 setElem!55928) (forall!18151 (exprs!8807 setElem!55928) lambda!458983))))

(declare-fun bs!1922140 () Bool)

(assert (= bs!1922140 d!2286959))

(declare-fun m!8035082 () Bool)

(assert (=> bs!1922140 m!8035082))

(assert (=> setNonEmpty!55928 d!2286959))

(declare-fun b!7387852 () Bool)

(declare-fun e!4421909 () (InoxSet Context!16614))

(declare-fun call!680122 () (InoxSet Context!16614))

(assert (=> b!7387852 (= e!4421909 ((_ map or) call!680122 (derivationStepZipperUp!2773 (Context!16615 (t!386453 (exprs!8807 c!10532))) lt!2617736)))))

(declare-fun d!2286975 () Bool)

(declare-fun c!1373072 () Bool)

(declare-fun e!4421908 () Bool)

(assert (=> d!2286975 (= c!1373072 e!4421908)))

(declare-fun res!2978996 () Bool)

(assert (=> d!2286975 (=> (not res!2978996) (not e!4421908))))

(assert (=> d!2286975 (= res!2978996 ((_ is Cons!71776) (exprs!8807 c!10532)))))

(assert (=> d!2286975 (= (derivationStepZipperUp!2773 c!10532 lt!2617736) e!4421909)))

(declare-fun b!7387853 () Bool)

(declare-fun e!4421907 () (InoxSet Context!16614))

(assert (=> b!7387853 (= e!4421907 ((as const (Array Context!16614 Bool)) false))))

(declare-fun b!7387854 () Bool)

(assert (=> b!7387854 (= e!4421907 call!680122)))

(declare-fun b!7387855 () Bool)

(declare-fun nullable!8421 (Regex!19367) Bool)

(assert (=> b!7387855 (= e!4421908 (nullable!8421 (h!78224 (exprs!8807 c!10532))))))

(declare-fun bm!680117 () Bool)

(declare-fun derivationStepZipperDown!3173 (Regex!19367 Context!16614 C!39008) (InoxSet Context!16614))

(assert (=> bm!680117 (= call!680122 (derivationStepZipperDown!3173 (h!78224 (exprs!8807 c!10532)) (Context!16615 (t!386453 (exprs!8807 c!10532))) lt!2617736))))

(declare-fun b!7387856 () Bool)

(assert (=> b!7387856 (= e!4421909 e!4421907)))

(declare-fun c!1373073 () Bool)

(assert (=> b!7387856 (= c!1373073 ((_ is Cons!71776) (exprs!8807 c!10532)))))

(assert (= (and d!2286975 res!2978996) b!7387855))

(assert (= (and d!2286975 c!1373072) b!7387852))

(assert (= (and d!2286975 (not c!1373072)) b!7387856))

(assert (= (and b!7387856 c!1373073) b!7387854))

(assert (= (and b!7387856 (not c!1373073)) b!7387853))

(assert (= (or b!7387852 b!7387854) bm!680117))

(declare-fun m!8035098 () Bool)

(assert (=> b!7387852 m!8035098))

(declare-fun m!8035100 () Bool)

(assert (=> b!7387855 m!8035100))

(declare-fun m!8035102 () Bool)

(assert (=> bm!680117 m!8035102))

(assert (=> b!7387807 d!2286975))

(declare-fun bs!1922144 () Bool)

(declare-fun d!2286985 () Bool)

(assert (= bs!1922144 (and d!2286985 b!7387803)))

(declare-fun lambda!458989 () Int)

(assert (=> bs!1922144 (= (= lt!2617736 a!2228) (= lambda!458989 lambda!458971))))

(assert (=> d!2286985 true))

(declare-fun flatMap!3179 ((InoxSet Context!16614) Int) (InoxSet Context!16614))

(assert (=> d!2286985 (= (derivationStepZipper!3651 z!3451 lt!2617736) (flatMap!3179 z!3451 lambda!458989))))

(declare-fun bs!1922145 () Bool)

(assert (= bs!1922145 d!2286985))

(declare-fun m!8035106 () Bool)

(assert (=> bs!1922145 m!8035106))

(assert (=> b!7387807 d!2286985))

(declare-fun d!2286987 () Bool)

(assert (=> d!2286987 (= (head!15118 s!7927) (h!78225 s!7927))))

(assert (=> b!7387807 d!2286987))

(declare-fun d!2286989 () Bool)

(assert (=> d!2286989 (= (isEmpty!41007 (exprs!8807 c!10532)) ((_ is Nil!71776) (exprs!8807 c!10532)))))

(assert (=> b!7387804 d!2286989))

(declare-fun bs!1922146 () Bool)

(declare-fun d!2286991 () Bool)

(assert (= bs!1922146 (and d!2286991 b!7387801)))

(declare-fun lambda!458992 () Int)

(assert (=> bs!1922146 (not (= lambda!458992 lambda!458972))))

(assert (=> d!2286991 true))

(assert (=> d!2286991 true))

(declare-fun order!29429 () Int)

(declare-fun order!29431 () Int)

(declare-fun dynLambda!29566 (Int Int) Int)

(declare-fun dynLambda!29567 (Int Int) Int)

(assert (=> d!2286991 (< (dynLambda!29566 order!29429 lambda!458971) (dynLambda!29567 order!29431 lambda!458992))))

(assert (=> d!2286991 (= (select (flatMap!3179 z!3451 lambda!458971) lt!2617739) (exists!4727 z!3451 lambda!458992))))

(declare-fun lt!2617748 () Context!16614)

(declare-fun choose!57376 ((InoxSet Context!16614) Int Context!16614) Context!16614)

(assert (=> d!2286991 (= lt!2617748 (choose!57376 z!3451 lambda!458971 lt!2617739))))

(assert (=> d!2286991 (= (flatMapPost!186 z!3451 lambda!458971 lt!2617739) lt!2617748)))

(declare-fun bs!1922147 () Bool)

(assert (= bs!1922147 d!2286991))

(declare-fun m!8035108 () Bool)

(assert (=> bs!1922147 m!8035108))

(declare-fun m!8035110 () Bool)

(assert (=> bs!1922147 m!8035110))

(declare-fun m!8035112 () Bool)

(assert (=> bs!1922147 m!8035112))

(declare-fun m!8035114 () Bool)

(assert (=> bs!1922147 m!8035114))

(assert (=> b!7387803 d!2286991))

(declare-fun bs!1922148 () Bool)

(declare-fun d!2286993 () Bool)

(assert (= bs!1922148 (and d!2286993 d!2286959)))

(declare-fun lambda!458993 () Int)

(assert (=> bs!1922148 (= lambda!458993 lambda!458983)))

(assert (=> d!2286993 (= (inv!91778 empty!3463) (forall!18151 (exprs!8807 empty!3463) lambda!458993))))

(declare-fun bs!1922149 () Bool)

(assert (= bs!1922149 d!2286993))

(declare-fun m!8035116 () Bool)

(assert (=> bs!1922149 m!8035116))

(assert (=> b!7387803 d!2286993))

(declare-fun d!2286995 () Bool)

(declare-fun lt!2617751 () Bool)

(declare-datatypes ((List!71903 0))(
  ( (Nil!71779) (Cons!71779 (h!78227 Context!16614) (t!386456 List!71903)) )
))
(declare-fun exists!4729 (List!71903 Int) Bool)

(declare-fun toList!11730 ((InoxSet Context!16614)) List!71903)

(assert (=> d!2286995 (= lt!2617751 (exists!4729 (toList!11730 lt!2617738) lambda!458972))))

(declare-fun choose!57377 ((InoxSet Context!16614) Int) Bool)

(assert (=> d!2286995 (= lt!2617751 (choose!57377 lt!2617738 lambda!458972))))

(assert (=> d!2286995 (= (exists!4727 lt!2617738 lambda!458972) lt!2617751)))

(declare-fun bs!1922150 () Bool)

(assert (= bs!1922150 d!2286995))

(declare-fun m!8035118 () Bool)

(assert (=> bs!1922150 m!8035118))

(assert (=> bs!1922150 m!8035118))

(declare-fun m!8035120 () Bool)

(assert (=> bs!1922150 m!8035120))

(declare-fun m!8035122 () Bool)

(assert (=> bs!1922150 m!8035122))

(assert (=> b!7387801 d!2286995))

(declare-fun d!2286997 () Bool)

(assert (=> d!2286997 (= (isEmpty!41007 (tail!14774 (exprs!8807 c!10532))) ((_ is Nil!71776) (tail!14774 (exprs!8807 c!10532))))))

(assert (=> b!7387805 d!2286997))

(declare-fun d!2286999 () Bool)

(assert (=> d!2286999 (= (tail!14774 (exprs!8807 c!10532)) (t!386453 (exprs!8807 c!10532)))))

(assert (=> b!7387805 d!2286999))

(declare-fun d!2287001 () Bool)

(assert (=> d!2287001 (= (head!15119 (exprs!8807 c!10532)) (h!78224 (exprs!8807 c!10532)))))

(assert (=> b!7387809 d!2287001))

(declare-fun bs!1922151 () Bool)

(declare-fun d!2287003 () Bool)

(assert (= bs!1922151 (and d!2287003 d!2286959)))

(declare-fun lambda!458994 () Int)

(assert (=> bs!1922151 (= lambda!458994 lambda!458983)))

(declare-fun bs!1922152 () Bool)

(assert (= bs!1922152 (and d!2287003 d!2286993)))

(assert (=> bs!1922152 (= lambda!458994 lambda!458993)))

(assert (=> d!2287003 (= (inv!91778 c!10532) (forall!18151 (exprs!8807 c!10532) lambda!458994))))

(declare-fun bs!1922153 () Bool)

(assert (= bs!1922153 d!2287003))

(declare-fun m!8035124 () Bool)

(assert (=> bs!1922153 m!8035124))

(assert (=> start!720626 d!2287003))

(declare-fun condSetEmpty!55934 () Bool)

(assert (=> setNonEmpty!55928 (= condSetEmpty!55934 (= setRest!55928 ((as const (Array Context!16614 Bool)) false)))))

(declare-fun setRes!55934 () Bool)

(assert (=> setNonEmpty!55928 (= tp!2102842 setRes!55934)))

(declare-fun setIsEmpty!55934 () Bool)

(assert (=> setIsEmpty!55934 setRes!55934))

(declare-fun tp!2102870 () Bool)

(declare-fun setElem!55934 () Context!16614)

(declare-fun setNonEmpty!55934 () Bool)

(declare-fun e!4421918 () Bool)

(assert (=> setNonEmpty!55934 (= setRes!55934 (and tp!2102870 (inv!91778 setElem!55934) e!4421918))))

(declare-fun setRest!55934 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55934 (= setRest!55928 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55934 true) setRest!55934))))

(declare-fun b!7387872 () Bool)

(declare-fun tp!2102869 () Bool)

(assert (=> b!7387872 (= e!4421918 tp!2102869)))

(assert (= (and setNonEmpty!55928 condSetEmpty!55934) setIsEmpty!55934))

(assert (= (and setNonEmpty!55928 (not condSetEmpty!55934)) setNonEmpty!55934))

(assert (= setNonEmpty!55934 b!7387872))

(declare-fun m!8035126 () Bool)

(assert (=> setNonEmpty!55934 m!8035126))

(declare-fun b!7387877 () Bool)

(declare-fun e!4421921 () Bool)

(declare-fun tp!2102875 () Bool)

(declare-fun tp!2102876 () Bool)

(assert (=> b!7387877 (= e!4421921 (and tp!2102875 tp!2102876))))

(assert (=> b!7387808 (= tp!2102844 e!4421921)))

(assert (= (and b!7387808 ((_ is Cons!71776) (exprs!8807 empty!3463))) b!7387877))

(declare-fun b!7387878 () Bool)

(declare-fun e!4421922 () Bool)

(declare-fun tp!2102877 () Bool)

(declare-fun tp!2102878 () Bool)

(assert (=> b!7387878 (= e!4421922 (and tp!2102877 tp!2102878))))

(assert (=> b!7387800 (= tp!2102843 e!4421922)))

(assert (= (and b!7387800 ((_ is Cons!71776) (exprs!8807 c!10532))) b!7387878))

(declare-fun b!7387879 () Bool)

(declare-fun e!4421923 () Bool)

(declare-fun tp!2102879 () Bool)

(declare-fun tp!2102880 () Bool)

(assert (=> b!7387879 (= e!4421923 (and tp!2102879 tp!2102880))))

(assert (=> b!7387806 (= tp!2102841 e!4421923)))

(assert (= (and b!7387806 ((_ is Cons!71776) (exprs!8807 setElem!55928))) b!7387879))

(declare-fun b!7387884 () Bool)

(declare-fun e!4421926 () Bool)

(declare-fun tp!2102883 () Bool)

(assert (=> b!7387884 (= e!4421926 (and tp_is_empty!48997 tp!2102883))))

(assert (=> b!7387810 (= tp!2102845 e!4421926)))

(assert (= (and b!7387810 ((_ is Cons!71777) (t!386454 s!7927))) b!7387884))

(check-sat (not d!2286993) (not d!2287003) (not bm!680117) (not d!2286959) (not b!7387884) (not b!7387877) (not b!7387872) (not d!2286995) (not d!2286985) (not b!7387878) (not b!7387855) tp_is_empty!48997 (not b!7387879) (not setNonEmpty!55934) (not d!2286991) (not b!7387852))
(check-sat)
(get-model)

(declare-fun b!7387970 () Bool)

(declare-fun call!680142 () (InoxSet Context!16614))

(declare-fun e!4421977 () (InoxSet Context!16614))

(assert (=> b!7387970 (= e!4421977 ((_ map or) call!680142 (derivationStepZipperUp!2773 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) lt!2617736)))))

(declare-fun d!2287039 () Bool)

(declare-fun c!1373093 () Bool)

(declare-fun e!4421976 () Bool)

(assert (=> d!2287039 (= c!1373093 e!4421976)))

(declare-fun res!2979017 () Bool)

(assert (=> d!2287039 (=> (not res!2979017) (not e!4421976))))

(assert (=> d!2287039 (= res!2979017 ((_ is Cons!71776) (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))

(assert (=> d!2287039 (= (derivationStepZipperUp!2773 (Context!16615 (t!386453 (exprs!8807 c!10532))) lt!2617736) e!4421977)))

(declare-fun b!7387971 () Bool)

(declare-fun e!4421975 () (InoxSet Context!16614))

(assert (=> b!7387971 (= e!4421975 ((as const (Array Context!16614 Bool)) false))))

(declare-fun b!7387972 () Bool)

(assert (=> b!7387972 (= e!4421975 call!680142)))

(declare-fun b!7387973 () Bool)

(assert (=> b!7387973 (= e!4421976 (nullable!8421 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(declare-fun bm!680137 () Bool)

(assert (=> bm!680137 (= call!680142 (derivationStepZipperDown!3173 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) lt!2617736))))

(declare-fun b!7387974 () Bool)

(assert (=> b!7387974 (= e!4421977 e!4421975)))

(declare-fun c!1373094 () Bool)

(assert (=> b!7387974 (= c!1373094 ((_ is Cons!71776) (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))

(assert (= (and d!2287039 res!2979017) b!7387973))

(assert (= (and d!2287039 c!1373093) b!7387970))

(assert (= (and d!2287039 (not c!1373093)) b!7387974))

(assert (= (and b!7387974 c!1373094) b!7387972))

(assert (= (and b!7387974 (not c!1373094)) b!7387971))

(assert (= (or b!7387970 b!7387972) bm!680137))

(declare-fun m!8035190 () Bool)

(assert (=> b!7387970 m!8035190))

(declare-fun m!8035192 () Bool)

(assert (=> b!7387973 m!8035192))

(declare-fun m!8035194 () Bool)

(assert (=> bm!680137 m!8035194))

(assert (=> b!7387852 d!2287039))

(declare-fun d!2287041 () Bool)

(declare-fun choose!57380 ((InoxSet Context!16614) Int) (InoxSet Context!16614))

(assert (=> d!2287041 (= (flatMap!3179 z!3451 lambda!458989) (choose!57380 z!3451 lambda!458989))))

(declare-fun bs!1922172 () Bool)

(assert (= bs!1922172 d!2287041))

(declare-fun m!8035196 () Bool)

(assert (=> bs!1922172 m!8035196))

(assert (=> d!2286985 d!2287041))

(declare-fun bs!1922173 () Bool)

(declare-fun d!2287043 () Bool)

(assert (= bs!1922173 (and d!2287043 b!7387801)))

(declare-fun lambda!459004 () Int)

(assert (=> bs!1922173 (not (= lambda!459004 lambda!458972))))

(declare-fun bs!1922174 () Bool)

(assert (= bs!1922174 (and d!2287043 d!2286991)))

(assert (=> bs!1922174 (not (= lambda!459004 lambda!458992))))

(assert (=> d!2287043 true))

(assert (=> d!2287043 (< (dynLambda!29567 order!29431 lambda!458972) (dynLambda!29567 order!29431 lambda!459004))))

(declare-fun forall!18153 (List!71903 Int) Bool)

(assert (=> d!2287043 (= (exists!4729 (toList!11730 lt!2617738) lambda!458972) (not (forall!18153 (toList!11730 lt!2617738) lambda!459004)))))

(declare-fun bs!1922175 () Bool)

(assert (= bs!1922175 d!2287043))

(assert (=> bs!1922175 m!8035118))

(declare-fun m!8035198 () Bool)

(assert (=> bs!1922175 m!8035198))

(assert (=> d!2286995 d!2287043))

(declare-fun d!2287045 () Bool)

(declare-fun e!4421980 () Bool)

(assert (=> d!2287045 e!4421980))

(declare-fun res!2979020 () Bool)

(assert (=> d!2287045 (=> (not res!2979020) (not e!4421980))))

(declare-fun lt!2617758 () List!71903)

(declare-fun noDuplicate!3093 (List!71903) Bool)

(assert (=> d!2287045 (= res!2979020 (noDuplicate!3093 lt!2617758))))

(declare-fun choose!57381 ((InoxSet Context!16614)) List!71903)

(assert (=> d!2287045 (= lt!2617758 (choose!57381 lt!2617738))))

(assert (=> d!2287045 (= (toList!11730 lt!2617738) lt!2617758)))

(declare-fun b!7387979 () Bool)

(declare-fun content!15205 (List!71903) (InoxSet Context!16614))

(assert (=> b!7387979 (= e!4421980 (= (content!15205 lt!2617758) lt!2617738))))

(assert (= (and d!2287045 res!2979020) b!7387979))

(declare-fun m!8035200 () Bool)

(assert (=> d!2287045 m!8035200))

(declare-fun m!8035202 () Bool)

(assert (=> d!2287045 m!8035202))

(declare-fun m!8035204 () Bool)

(assert (=> b!7387979 m!8035204))

(assert (=> d!2286995 d!2287045))

(declare-fun d!2287047 () Bool)

(declare-fun res!2979023 () Bool)

(assert (=> d!2287047 (= res!2979023 (exists!4729 (toList!11730 lt!2617738) lambda!458972))))

(assert (=> d!2287047 true))

(assert (=> d!2287047 (= (choose!57377 lt!2617738 lambda!458972) res!2979023)))

(declare-fun bs!1922176 () Bool)

(assert (= bs!1922176 d!2287047))

(assert (=> bs!1922176 m!8035118))

(assert (=> bs!1922176 m!8035118))

(assert (=> bs!1922176 m!8035120))

(assert (=> d!2286995 d!2287047))

(declare-fun bs!1922177 () Bool)

(declare-fun d!2287049 () Bool)

(assert (= bs!1922177 (and d!2287049 d!2286959)))

(declare-fun lambda!459005 () Int)

(assert (=> bs!1922177 (= lambda!459005 lambda!458983)))

(declare-fun bs!1922178 () Bool)

(assert (= bs!1922178 (and d!2287049 d!2286993)))

(assert (=> bs!1922178 (= lambda!459005 lambda!458993)))

(declare-fun bs!1922179 () Bool)

(assert (= bs!1922179 (and d!2287049 d!2287003)))

(assert (=> bs!1922179 (= lambda!459005 lambda!458994)))

(assert (=> d!2287049 (= (inv!91778 setElem!55934) (forall!18151 (exprs!8807 setElem!55934) lambda!459005))))

(declare-fun bs!1922180 () Bool)

(assert (= bs!1922180 d!2287049))

(declare-fun m!8035206 () Bool)

(assert (=> bs!1922180 m!8035206))

(assert (=> setNonEmpty!55934 d!2287049))

(declare-fun d!2287051 () Bool)

(declare-fun res!2979028 () Bool)

(declare-fun e!4421985 () Bool)

(assert (=> d!2287051 (=> res!2979028 e!4421985)))

(assert (=> d!2287051 (= res!2979028 ((_ is Nil!71776) (exprs!8807 empty!3463)))))

(assert (=> d!2287051 (= (forall!18151 (exprs!8807 empty!3463) lambda!458993) e!4421985)))

(declare-fun b!7387984 () Bool)

(declare-fun e!4421986 () Bool)

(assert (=> b!7387984 (= e!4421985 e!4421986)))

(declare-fun res!2979029 () Bool)

(assert (=> b!7387984 (=> (not res!2979029) (not e!4421986))))

(declare-fun dynLambda!29569 (Int Regex!19367) Bool)

(assert (=> b!7387984 (= res!2979029 (dynLambda!29569 lambda!458993 (h!78224 (exprs!8807 empty!3463))))))

(declare-fun b!7387985 () Bool)

(assert (=> b!7387985 (= e!4421986 (forall!18151 (t!386453 (exprs!8807 empty!3463)) lambda!458993))))

(assert (= (and d!2287051 (not res!2979028)) b!7387984))

(assert (= (and b!7387984 res!2979029) b!7387985))

(declare-fun b_lambda!285101 () Bool)

(assert (=> (not b_lambda!285101) (not b!7387984)))

(declare-fun m!8035208 () Bool)

(assert (=> b!7387984 m!8035208))

(declare-fun m!8035210 () Bool)

(assert (=> b!7387985 m!8035210))

(assert (=> d!2286993 d!2287051))

(declare-fun d!2287053 () Bool)

(declare-fun nullableFct!3386 (Regex!19367) Bool)

(assert (=> d!2287053 (= (nullable!8421 (h!78224 (exprs!8807 c!10532))) (nullableFct!3386 (h!78224 (exprs!8807 c!10532))))))

(declare-fun bs!1922181 () Bool)

(assert (= bs!1922181 d!2287053))

(declare-fun m!8035212 () Bool)

(assert (=> bs!1922181 m!8035212))

(assert (=> b!7387855 d!2287053))

(declare-fun d!2287055 () Bool)

(declare-fun res!2979030 () Bool)

(declare-fun e!4421987 () Bool)

(assert (=> d!2287055 (=> res!2979030 e!4421987)))

(assert (=> d!2287055 (= res!2979030 ((_ is Nil!71776) (exprs!8807 c!10532)))))

(assert (=> d!2287055 (= (forall!18151 (exprs!8807 c!10532) lambda!458994) e!4421987)))

(declare-fun b!7387986 () Bool)

(declare-fun e!4421988 () Bool)

(assert (=> b!7387986 (= e!4421987 e!4421988)))

(declare-fun res!2979031 () Bool)

(assert (=> b!7387986 (=> (not res!2979031) (not e!4421988))))

(assert (=> b!7387986 (= res!2979031 (dynLambda!29569 lambda!458994 (h!78224 (exprs!8807 c!10532))))))

(declare-fun b!7387987 () Bool)

(assert (=> b!7387987 (= e!4421988 (forall!18151 (t!386453 (exprs!8807 c!10532)) lambda!458994))))

(assert (= (and d!2287055 (not res!2979030)) b!7387986))

(assert (= (and b!7387986 res!2979031) b!7387987))

(declare-fun b_lambda!285103 () Bool)

(assert (=> (not b_lambda!285103) (not b!7387986)))

(declare-fun m!8035214 () Bool)

(assert (=> b!7387986 m!8035214))

(declare-fun m!8035216 () Bool)

(assert (=> b!7387987 m!8035216))

(assert (=> d!2287003 d!2287055))

(declare-fun d!2287057 () Bool)

(declare-fun res!2979032 () Bool)

(declare-fun e!4421989 () Bool)

(assert (=> d!2287057 (=> res!2979032 e!4421989)))

(assert (=> d!2287057 (= res!2979032 ((_ is Nil!71776) (exprs!8807 setElem!55928)))))

(assert (=> d!2287057 (= (forall!18151 (exprs!8807 setElem!55928) lambda!458983) e!4421989)))

(declare-fun b!7387988 () Bool)

(declare-fun e!4421990 () Bool)

(assert (=> b!7387988 (= e!4421989 e!4421990)))

(declare-fun res!2979033 () Bool)

(assert (=> b!7387988 (=> (not res!2979033) (not e!4421990))))

(assert (=> b!7387988 (= res!2979033 (dynLambda!29569 lambda!458983 (h!78224 (exprs!8807 setElem!55928))))))

(declare-fun b!7387989 () Bool)

(assert (=> b!7387989 (= e!4421990 (forall!18151 (t!386453 (exprs!8807 setElem!55928)) lambda!458983))))

(assert (= (and d!2287057 (not res!2979032)) b!7387988))

(assert (= (and b!7387988 res!2979033) b!7387989))

(declare-fun b_lambda!285105 () Bool)

(assert (=> (not b_lambda!285105) (not b!7387988)))

(declare-fun m!8035218 () Bool)

(assert (=> b!7387988 m!8035218))

(declare-fun m!8035220 () Bool)

(assert (=> b!7387989 m!8035220))

(assert (=> d!2286959 d!2287057))

(declare-fun d!2287059 () Bool)

(assert (=> d!2287059 (= (flatMap!3179 z!3451 lambda!458971) (choose!57380 z!3451 lambda!458971))))

(declare-fun bs!1922182 () Bool)

(assert (= bs!1922182 d!2287059))

(declare-fun m!8035222 () Bool)

(assert (=> bs!1922182 m!8035222))

(assert (=> d!2286991 d!2287059))

(declare-fun d!2287061 () Bool)

(declare-fun lt!2617759 () Bool)

(assert (=> d!2287061 (= lt!2617759 (exists!4729 (toList!11730 z!3451) lambda!458992))))

(assert (=> d!2287061 (= lt!2617759 (choose!57377 z!3451 lambda!458992))))

(assert (=> d!2287061 (= (exists!4727 z!3451 lambda!458992) lt!2617759)))

(declare-fun bs!1922183 () Bool)

(assert (= bs!1922183 d!2287061))

(declare-fun m!8035224 () Bool)

(assert (=> bs!1922183 m!8035224))

(assert (=> bs!1922183 m!8035224))

(declare-fun m!8035226 () Bool)

(assert (=> bs!1922183 m!8035226))

(declare-fun m!8035228 () Bool)

(assert (=> bs!1922183 m!8035228))

(assert (=> d!2286991 d!2287061))

(declare-fun bs!1922184 () Bool)

(declare-fun d!2287063 () Bool)

(assert (= bs!1922184 (and d!2287063 b!7387801)))

(declare-fun lambda!459008 () Int)

(assert (=> bs!1922184 (not (= lambda!459008 lambda!458972))))

(declare-fun bs!1922185 () Bool)

(assert (= bs!1922185 (and d!2287063 d!2286991)))

(assert (=> bs!1922185 (= lambda!459008 lambda!458992)))

(declare-fun bs!1922186 () Bool)

(assert (= bs!1922186 (and d!2287063 d!2287043)))

(assert (=> bs!1922186 (not (= lambda!459008 lambda!459004))))

(assert (=> d!2287063 true))

(assert (=> d!2287063 true))

(assert (=> d!2287063 (< (dynLambda!29566 order!29429 lambda!458971) (dynLambda!29567 order!29431 lambda!459008))))

(assert (=> d!2287063 (= (select (flatMap!3179 z!3451 lambda!458971) lt!2617739) (exists!4727 z!3451 lambda!459008))))

(declare-fun _$3!516 () Context!16614)

(declare-fun e!4421993 () Bool)

(assert (=> d!2287063 (and (inv!91778 _$3!516) e!4421993)))

(assert (=> d!2287063 (= (choose!57376 z!3451 lambda!458971 lt!2617739) _$3!516)))

(declare-fun b!7387993 () Bool)

(declare-fun tp!2102925 () Bool)

(assert (=> b!7387993 (= e!4421993 tp!2102925)))

(assert (= d!2287063 b!7387993))

(assert (=> d!2287063 m!8035108))

(assert (=> d!2287063 m!8035110))

(declare-fun m!8035230 () Bool)

(assert (=> d!2287063 m!8035230))

(declare-fun m!8035232 () Bool)

(assert (=> d!2287063 m!8035232))

(assert (=> d!2286991 d!2287063))

(declare-fun b!7388016 () Bool)

(declare-fun e!4422011 () (InoxSet Context!16614))

(declare-fun call!680158 () (InoxSet Context!16614))

(assert (=> b!7388016 (= e!4422011 call!680158)))

(declare-fun b!7388017 () Bool)

(declare-fun e!4422007 () (InoxSet Context!16614))

(declare-fun e!4422010 () (InoxSet Context!16614))

(assert (=> b!7388017 (= e!4422007 e!4422010)))

(declare-fun c!1373105 () Bool)

(assert (=> b!7388017 (= c!1373105 ((_ is Union!19367) (h!78224 (exprs!8807 c!10532))))))

(declare-fun b!7388018 () Bool)

(declare-fun e!4422008 () (InoxSet Context!16614))

(assert (=> b!7388018 (= e!4422008 call!680158)))

(declare-fun b!7388019 () Bool)

(declare-fun e!4422006 () (InoxSet Context!16614))

(declare-fun call!680157 () (InoxSet Context!16614))

(declare-fun call!680159 () (InoxSet Context!16614))

(assert (=> b!7388019 (= e!4422006 ((_ map or) call!680157 call!680159))))

(declare-fun b!7388020 () Bool)

(declare-fun call!680155 () (InoxSet Context!16614))

(assert (=> b!7388020 (= e!4422010 ((_ map or) call!680157 call!680155))))

(declare-fun b!7388021 () Bool)

(declare-fun c!1373108 () Bool)

(declare-fun e!4422009 () Bool)

(assert (=> b!7388021 (= c!1373108 e!4422009)))

(declare-fun res!2979036 () Bool)

(assert (=> b!7388021 (=> (not res!2979036) (not e!4422009))))

(assert (=> b!7388021 (= res!2979036 ((_ is Concat!28212) (h!78224 (exprs!8807 c!10532))))))

(assert (=> b!7388021 (= e!4422010 e!4422006)))

(declare-fun bm!680150 () Bool)

(assert (=> bm!680150 (= call!680159 call!680155)))

(declare-fun bm!680152 () Bool)

(declare-fun c!1373106 () Bool)

(declare-fun call!680160 () List!71900)

(assert (=> bm!680152 (= call!680155 (derivationStepZipperDown!3173 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) lt!2617736))))

(declare-fun b!7388022 () Bool)

(assert (=> b!7388022 (= e!4422008 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680153 () Bool)

(assert (=> bm!680153 (= call!680158 call!680159)))

(declare-fun b!7388023 () Bool)

(declare-fun c!1373109 () Bool)

(assert (=> b!7388023 (= c!1373109 ((_ is Star!19367) (h!78224 (exprs!8807 c!10532))))))

(assert (=> b!7388023 (= e!4422011 e!4422008)))

(declare-fun b!7388024 () Bool)

(assert (=> b!7388024 (= e!4422006 e!4422011)))

(assert (=> b!7388024 (= c!1373106 ((_ is Concat!28212) (h!78224 (exprs!8807 c!10532))))))

(declare-fun bm!680154 () Bool)

(declare-fun call!680156 () List!71900)

(assert (=> bm!680154 (= call!680160 call!680156)))

(declare-fun bm!680151 () Bool)

(assert (=> bm!680151 (= call!680157 (derivationStepZipperDown!3173 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) lt!2617736))))

(declare-fun d!2287065 () Bool)

(declare-fun c!1373107 () Bool)

(assert (=> d!2287065 (= c!1373107 (and ((_ is ElementMatch!19367) (h!78224 (exprs!8807 c!10532))) (= (c!1373059 (h!78224 (exprs!8807 c!10532))) lt!2617736)))))

(assert (=> d!2287065 (= (derivationStepZipperDown!3173 (h!78224 (exprs!8807 c!10532)) (Context!16615 (t!386453 (exprs!8807 c!10532))) lt!2617736) e!4422007)))

(declare-fun b!7388025 () Bool)

(assert (=> b!7388025 (= e!4422009 (nullable!8421 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))

(declare-fun bm!680155 () Bool)

(declare-fun $colon$colon!3324 (List!71900 Regex!19367) List!71900)

(assert (=> bm!680155 (= call!680156 ($colon$colon!3324 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))) (ite (or c!1373108 c!1373106) (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (h!78224 (exprs!8807 c!10532)))))))

(declare-fun b!7388026 () Bool)

(assert (=> b!7388026 (= e!4422007 (store ((as const (Array Context!16614 Bool)) false) (Context!16615 (t!386453 (exprs!8807 c!10532))) true))))

(assert (= (and d!2287065 c!1373107) b!7388026))

(assert (= (and d!2287065 (not c!1373107)) b!7388017))

(assert (= (and b!7388017 c!1373105) b!7388020))

(assert (= (and b!7388017 (not c!1373105)) b!7388021))

(assert (= (and b!7388021 res!2979036) b!7388025))

(assert (= (and b!7388021 c!1373108) b!7388019))

(assert (= (and b!7388021 (not c!1373108)) b!7388024))

(assert (= (and b!7388024 c!1373106) b!7388016))

(assert (= (and b!7388024 (not c!1373106)) b!7388023))

(assert (= (and b!7388023 c!1373109) b!7388018))

(assert (= (and b!7388023 (not c!1373109)) b!7388022))

(assert (= (or b!7388016 b!7388018) bm!680154))

(assert (= (or b!7388016 b!7388018) bm!680153))

(assert (= (or b!7388019 bm!680154) bm!680155))

(assert (= (or b!7388019 bm!680153) bm!680150))

(assert (= (or b!7388020 b!7388019) bm!680151))

(assert (= (or b!7388020 bm!680150) bm!680152))

(declare-fun m!8035234 () Bool)

(assert (=> b!7388025 m!8035234))

(declare-fun m!8035236 () Bool)

(assert (=> bm!680152 m!8035236))

(declare-fun m!8035238 () Bool)

(assert (=> bm!680155 m!8035238))

(declare-fun m!8035240 () Bool)

(assert (=> bm!680151 m!8035240))

(declare-fun m!8035242 () Bool)

(assert (=> b!7388026 m!8035242))

(assert (=> bm!680117 d!2287065))

(declare-fun b!7388038 () Bool)

(declare-fun e!4422014 () Bool)

(declare-fun tp!2102938 () Bool)

(declare-fun tp!2102940 () Bool)

(assert (=> b!7388038 (= e!4422014 (and tp!2102938 tp!2102940))))

(declare-fun b!7388039 () Bool)

(declare-fun tp!2102939 () Bool)

(assert (=> b!7388039 (= e!4422014 tp!2102939)))

(assert (=> b!7387878 (= tp!2102877 e!4422014)))

(declare-fun b!7388040 () Bool)

(declare-fun tp!2102936 () Bool)

(declare-fun tp!2102937 () Bool)

(assert (=> b!7388040 (= e!4422014 (and tp!2102936 tp!2102937))))

(declare-fun b!7388037 () Bool)

(assert (=> b!7388037 (= e!4422014 tp_is_empty!48997)))

(assert (= (and b!7387878 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 c!10532)))) b!7388037))

(assert (= (and b!7387878 ((_ is Concat!28212) (h!78224 (exprs!8807 c!10532)))) b!7388038))

(assert (= (and b!7387878 ((_ is Star!19367) (h!78224 (exprs!8807 c!10532)))) b!7388039))

(assert (= (and b!7387878 ((_ is Union!19367) (h!78224 (exprs!8807 c!10532)))) b!7388040))

(declare-fun b!7388041 () Bool)

(declare-fun e!4422015 () Bool)

(declare-fun tp!2102941 () Bool)

(declare-fun tp!2102942 () Bool)

(assert (=> b!7388041 (= e!4422015 (and tp!2102941 tp!2102942))))

(assert (=> b!7387878 (= tp!2102878 e!4422015)))

(assert (= (and b!7387878 ((_ is Cons!71776) (t!386453 (exprs!8807 c!10532)))) b!7388041))

(declare-fun condSetEmpty!55936 () Bool)

(assert (=> setNonEmpty!55934 (= condSetEmpty!55936 (= setRest!55934 ((as const (Array Context!16614 Bool)) false)))))

(declare-fun setRes!55936 () Bool)

(assert (=> setNonEmpty!55934 (= tp!2102870 setRes!55936)))

(declare-fun setIsEmpty!55936 () Bool)

(assert (=> setIsEmpty!55936 setRes!55936))

(declare-fun e!4422016 () Bool)

(declare-fun setElem!55936 () Context!16614)

(declare-fun tp!2102944 () Bool)

(declare-fun setNonEmpty!55936 () Bool)

(assert (=> setNonEmpty!55936 (= setRes!55936 (and tp!2102944 (inv!91778 setElem!55936) e!4422016))))

(declare-fun setRest!55936 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55936 (= setRest!55934 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55936 true) setRest!55936))))

(declare-fun b!7388042 () Bool)

(declare-fun tp!2102943 () Bool)

(assert (=> b!7388042 (= e!4422016 tp!2102943)))

(assert (= (and setNonEmpty!55934 condSetEmpty!55936) setIsEmpty!55936))

(assert (= (and setNonEmpty!55934 (not condSetEmpty!55936)) setNonEmpty!55936))

(assert (= setNonEmpty!55936 b!7388042))

(declare-fun m!8035244 () Bool)

(assert (=> setNonEmpty!55936 m!8035244))

(declare-fun b!7388044 () Bool)

(declare-fun e!4422017 () Bool)

(declare-fun tp!2102947 () Bool)

(declare-fun tp!2102949 () Bool)

(assert (=> b!7388044 (= e!4422017 (and tp!2102947 tp!2102949))))

(declare-fun b!7388045 () Bool)

(declare-fun tp!2102948 () Bool)

(assert (=> b!7388045 (= e!4422017 tp!2102948)))

(assert (=> b!7387877 (= tp!2102875 e!4422017)))

(declare-fun b!7388046 () Bool)

(declare-fun tp!2102945 () Bool)

(declare-fun tp!2102946 () Bool)

(assert (=> b!7388046 (= e!4422017 (and tp!2102945 tp!2102946))))

(declare-fun b!7388043 () Bool)

(assert (=> b!7388043 (= e!4422017 tp_is_empty!48997)))

(assert (= (and b!7387877 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 empty!3463)))) b!7388043))

(assert (= (and b!7387877 ((_ is Concat!28212) (h!78224 (exprs!8807 empty!3463)))) b!7388044))

(assert (= (and b!7387877 ((_ is Star!19367) (h!78224 (exprs!8807 empty!3463)))) b!7388045))

(assert (= (and b!7387877 ((_ is Union!19367) (h!78224 (exprs!8807 empty!3463)))) b!7388046))

(declare-fun b!7388047 () Bool)

(declare-fun e!4422018 () Bool)

(declare-fun tp!2102950 () Bool)

(declare-fun tp!2102951 () Bool)

(assert (=> b!7388047 (= e!4422018 (and tp!2102950 tp!2102951))))

(assert (=> b!7387877 (= tp!2102876 e!4422018)))

(assert (= (and b!7387877 ((_ is Cons!71776) (t!386453 (exprs!8807 empty!3463)))) b!7388047))

(declare-fun b!7388048 () Bool)

(declare-fun e!4422019 () Bool)

(declare-fun tp!2102952 () Bool)

(assert (=> b!7388048 (= e!4422019 (and tp_is_empty!48997 tp!2102952))))

(assert (=> b!7387884 (= tp!2102883 e!4422019)))

(assert (= (and b!7387884 ((_ is Cons!71777) (t!386454 (t!386454 s!7927)))) b!7388048))

(declare-fun b!7388049 () Bool)

(declare-fun e!4422020 () Bool)

(declare-fun tp!2102953 () Bool)

(declare-fun tp!2102954 () Bool)

(assert (=> b!7388049 (= e!4422020 (and tp!2102953 tp!2102954))))

(assert (=> b!7387872 (= tp!2102869 e!4422020)))

(assert (= (and b!7387872 ((_ is Cons!71776) (exprs!8807 setElem!55934))) b!7388049))

(declare-fun b!7388051 () Bool)

(declare-fun e!4422021 () Bool)

(declare-fun tp!2102957 () Bool)

(declare-fun tp!2102959 () Bool)

(assert (=> b!7388051 (= e!4422021 (and tp!2102957 tp!2102959))))

(declare-fun b!7388052 () Bool)

(declare-fun tp!2102958 () Bool)

(assert (=> b!7388052 (= e!4422021 tp!2102958)))

(assert (=> b!7387879 (= tp!2102879 e!4422021)))

(declare-fun b!7388053 () Bool)

(declare-fun tp!2102955 () Bool)

(declare-fun tp!2102956 () Bool)

(assert (=> b!7388053 (= e!4422021 (and tp!2102955 tp!2102956))))

(declare-fun b!7388050 () Bool)

(assert (=> b!7388050 (= e!4422021 tp_is_empty!48997)))

(assert (= (and b!7387879 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 setElem!55928)))) b!7388050))

(assert (= (and b!7387879 ((_ is Concat!28212) (h!78224 (exprs!8807 setElem!55928)))) b!7388051))

(assert (= (and b!7387879 ((_ is Star!19367) (h!78224 (exprs!8807 setElem!55928)))) b!7388052))

(assert (= (and b!7387879 ((_ is Union!19367) (h!78224 (exprs!8807 setElem!55928)))) b!7388053))

(declare-fun b!7388054 () Bool)

(declare-fun e!4422022 () Bool)

(declare-fun tp!2102960 () Bool)

(declare-fun tp!2102961 () Bool)

(assert (=> b!7388054 (= e!4422022 (and tp!2102960 tp!2102961))))

(assert (=> b!7387879 (= tp!2102880 e!4422022)))

(assert (= (and b!7387879 ((_ is Cons!71776) (t!386453 (exprs!8807 setElem!55928)))) b!7388054))

(declare-fun b_lambda!285107 () Bool)

(assert (= b_lambda!285101 (or d!2286993 b_lambda!285107)))

(declare-fun bs!1922187 () Bool)

(declare-fun d!2287067 () Bool)

(assert (= bs!1922187 (and d!2287067 d!2286993)))

(declare-fun validRegex!9944 (Regex!19367) Bool)

(assert (=> bs!1922187 (= (dynLambda!29569 lambda!458993 (h!78224 (exprs!8807 empty!3463))) (validRegex!9944 (h!78224 (exprs!8807 empty!3463))))))

(declare-fun m!8035246 () Bool)

(assert (=> bs!1922187 m!8035246))

(assert (=> b!7387984 d!2287067))

(declare-fun b_lambda!285109 () Bool)

(assert (= b_lambda!285105 (or d!2286959 b_lambda!285109)))

(declare-fun bs!1922188 () Bool)

(declare-fun d!2287069 () Bool)

(assert (= bs!1922188 (and d!2287069 d!2286959)))

(assert (=> bs!1922188 (= (dynLambda!29569 lambda!458983 (h!78224 (exprs!8807 setElem!55928))) (validRegex!9944 (h!78224 (exprs!8807 setElem!55928))))))

(declare-fun m!8035248 () Bool)

(assert (=> bs!1922188 m!8035248))

(assert (=> b!7387988 d!2287069))

(declare-fun b_lambda!285111 () Bool)

(assert (= b_lambda!285103 (or d!2287003 b_lambda!285111)))

(declare-fun bs!1922189 () Bool)

(declare-fun d!2287071 () Bool)

(assert (= bs!1922189 (and d!2287071 d!2287003)))

(assert (=> bs!1922189 (= (dynLambda!29569 lambda!458994 (h!78224 (exprs!8807 c!10532))) (validRegex!9944 (h!78224 (exprs!8807 c!10532))))))

(declare-fun m!8035250 () Bool)

(assert (=> bs!1922189 m!8035250))

(assert (=> b!7387986 d!2287071))

(check-sat (not b!7387993) (not bs!1922188) (not b!7388040) (not d!2287063) (not d!2287061) (not b!7387989) (not d!2287049) (not b!7388045) (not bm!680151) (not b!7388049) (not b!7388048) (not b!7388046) (not b!7388044) (not b!7388038) (not b!7387987) (not b!7388051) (not b_lambda!285109) (not b!7388054) (not b!7388039) (not b!7388041) (not d!2287053) (not b!7388025) (not setNonEmpty!55936) (not b!7387979) (not bm!680155) (not d!2287059) (not b_lambda!285107) (not b!7387985) (not d!2287045) (not b!7388052) (not d!2287047) tp_is_empty!48997 (not b!7387973) (not b!7387970) (not b_lambda!285111) (not bs!1922189) (not d!2287043) (not b!7388053) (not bm!680137) (not b!7388047) (not bs!1922187) (not d!2287041) (not bm!680152) (not b!7388042))
(check-sat)
(get-model)

(declare-fun b!7388283 () Bool)

(declare-fun e!4422166 () (InoxSet Context!16614))

(declare-fun call!680204 () (InoxSet Context!16614))

(assert (=> b!7388283 (= e!4422166 call!680204)))

(declare-fun b!7388284 () Bool)

(declare-fun e!4422162 () (InoxSet Context!16614))

(declare-fun e!4422165 () (InoxSet Context!16614))

(assert (=> b!7388284 (= e!4422162 e!4422165)))

(declare-fun c!1373143 () Bool)

(assert (=> b!7388284 (= c!1373143 ((_ is Union!19367) (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))

(declare-fun b!7388285 () Bool)

(declare-fun e!4422163 () (InoxSet Context!16614))

(assert (=> b!7388285 (= e!4422163 call!680204)))

(declare-fun b!7388286 () Bool)

(declare-fun e!4422161 () (InoxSet Context!16614))

(declare-fun call!680203 () (InoxSet Context!16614))

(declare-fun call!680205 () (InoxSet Context!16614))

(assert (=> b!7388286 (= e!4422161 ((_ map or) call!680203 call!680205))))

(declare-fun b!7388287 () Bool)

(declare-fun call!680201 () (InoxSet Context!16614))

(assert (=> b!7388287 (= e!4422165 ((_ map or) call!680203 call!680201))))

(declare-fun b!7388288 () Bool)

(declare-fun c!1373146 () Bool)

(declare-fun e!4422164 () Bool)

(assert (=> b!7388288 (= c!1373146 e!4422164)))

(declare-fun res!2979113 () Bool)

(assert (=> b!7388288 (=> (not res!2979113) (not e!4422164))))

(assert (=> b!7388288 (= res!2979113 ((_ is Concat!28212) (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))

(assert (=> b!7388288 (= e!4422165 e!4422161)))

(declare-fun bm!680196 () Bool)

(assert (=> bm!680196 (= call!680205 call!680201)))

(declare-fun call!680206 () List!71900)

(declare-fun bm!680198 () Bool)

(declare-fun c!1373144 () Bool)

(assert (=> bm!680198 (= call!680201 (derivationStepZipperDown!3173 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))) (ite (or c!1373143 c!1373146) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680206)) lt!2617736))))

(declare-fun b!7388289 () Bool)

(assert (=> b!7388289 (= e!4422163 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680199 () Bool)

(assert (=> bm!680199 (= call!680204 call!680205)))

(declare-fun b!7388290 () Bool)

(declare-fun c!1373147 () Bool)

(assert (=> b!7388290 (= c!1373147 ((_ is Star!19367) (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))

(assert (=> b!7388290 (= e!4422166 e!4422163)))

(declare-fun b!7388291 () Bool)

(assert (=> b!7388291 (= e!4422161 e!4422166)))

(assert (=> b!7388291 (= c!1373144 ((_ is Concat!28212) (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))

(declare-fun bm!680200 () Bool)

(declare-fun call!680202 () List!71900)

(assert (=> bm!680200 (= call!680206 call!680202)))

(declare-fun bm!680197 () Bool)

(assert (=> bm!680197 (= call!680203 (derivationStepZipperDown!3173 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) (ite c!1373143 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680202)) lt!2617736))))

(declare-fun c!1373145 () Bool)

(declare-fun d!2287137 () Bool)

(assert (=> d!2287137 (= c!1373145 (and ((_ is ElementMatch!19367) (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (= (c!1373059 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) lt!2617736)))))

(assert (=> d!2287137 (= (derivationStepZipperDown!3173 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) lt!2617736) e!4422162)))

(declare-fun b!7388292 () Bool)

(assert (=> b!7388292 (= e!4422164 (nullable!8421 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(declare-fun bm!680201 () Bool)

(assert (=> bm!680201 (= call!680202 ($colon$colon!3324 (exprs!8807 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156))) (ite (or c!1373146 c!1373144) (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(declare-fun b!7388293 () Bool)

(assert (=> b!7388293 (= e!4422162 (store ((as const (Array Context!16614 Bool)) false) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) true))))

(assert (= (and d!2287137 c!1373145) b!7388293))

(assert (= (and d!2287137 (not c!1373145)) b!7388284))

(assert (= (and b!7388284 c!1373143) b!7388287))

(assert (= (and b!7388284 (not c!1373143)) b!7388288))

(assert (= (and b!7388288 res!2979113) b!7388292))

(assert (= (and b!7388288 c!1373146) b!7388286))

(assert (= (and b!7388288 (not c!1373146)) b!7388291))

(assert (= (and b!7388291 c!1373144) b!7388283))

(assert (= (and b!7388291 (not c!1373144)) b!7388290))

(assert (= (and b!7388290 c!1373147) b!7388285))

(assert (= (and b!7388290 (not c!1373147)) b!7388289))

(assert (= (or b!7388283 b!7388285) bm!680200))

(assert (= (or b!7388283 b!7388285) bm!680199))

(assert (= (or b!7388286 bm!680200) bm!680201))

(assert (= (or b!7388286 bm!680199) bm!680196))

(assert (= (or b!7388287 b!7388286) bm!680197))

(assert (= (or b!7388287 bm!680196) bm!680198))

(declare-fun m!8035380 () Bool)

(assert (=> b!7388292 m!8035380))

(declare-fun m!8035382 () Bool)

(assert (=> bm!680198 m!8035382))

(declare-fun m!8035384 () Bool)

(assert (=> bm!680201 m!8035384))

(declare-fun m!8035386 () Bool)

(assert (=> bm!680197 m!8035386))

(declare-fun m!8035388 () Bool)

(assert (=> b!7388293 m!8035388))

(assert (=> bm!680151 d!2287137))

(declare-fun d!2287139 () Bool)

(assert (=> d!2287139 true))

(declare-fun setRes!55944 () Bool)

(assert (=> d!2287139 setRes!55944))

(declare-fun condSetEmpty!55944 () Bool)

(declare-fun res!2979116 () (InoxSet Context!16614))

(assert (=> d!2287139 (= condSetEmpty!55944 (= res!2979116 ((as const (Array Context!16614 Bool)) false)))))

(assert (=> d!2287139 (= (choose!57380 z!3451 lambda!458971) res!2979116)))

(declare-fun setIsEmpty!55944 () Bool)

(assert (=> setIsEmpty!55944 setRes!55944))

(declare-fun setNonEmpty!55944 () Bool)

(declare-fun tp!2103091 () Bool)

(declare-fun setElem!55944 () Context!16614)

(declare-fun e!4422169 () Bool)

(assert (=> setNonEmpty!55944 (= setRes!55944 (and tp!2103091 (inv!91778 setElem!55944) e!4422169))))

(declare-fun setRest!55944 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55944 (= res!2979116 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55944 true) setRest!55944))))

(declare-fun b!7388296 () Bool)

(declare-fun tp!2103090 () Bool)

(assert (=> b!7388296 (= e!4422169 tp!2103090)))

(assert (= (and d!2287139 condSetEmpty!55944) setIsEmpty!55944))

(assert (= (and d!2287139 (not condSetEmpty!55944)) setNonEmpty!55944))

(assert (= setNonEmpty!55944 b!7388296))

(declare-fun m!8035390 () Bool)

(assert (=> setNonEmpty!55944 m!8035390))

(assert (=> d!2287059 d!2287139))

(declare-fun b!7388297 () Bool)

(declare-fun e!4422175 () (InoxSet Context!16614))

(declare-fun call!680210 () (InoxSet Context!16614))

(assert (=> b!7388297 (= e!4422175 call!680210)))

(declare-fun b!7388298 () Bool)

(declare-fun e!4422171 () (InoxSet Context!16614))

(declare-fun e!4422174 () (InoxSet Context!16614))

(assert (=> b!7388298 (= e!4422171 e!4422174)))

(declare-fun c!1373148 () Bool)

(assert (=> b!7388298 (= c!1373148 ((_ is Union!19367) (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))

(declare-fun b!7388299 () Bool)

(declare-fun e!4422172 () (InoxSet Context!16614))

(assert (=> b!7388299 (= e!4422172 call!680210)))

(declare-fun b!7388300 () Bool)

(declare-fun e!4422170 () (InoxSet Context!16614))

(declare-fun call!680209 () (InoxSet Context!16614))

(declare-fun call!680211 () (InoxSet Context!16614))

(assert (=> b!7388300 (= e!4422170 ((_ map or) call!680209 call!680211))))

(declare-fun b!7388301 () Bool)

(declare-fun call!680207 () (InoxSet Context!16614))

(assert (=> b!7388301 (= e!4422174 ((_ map or) call!680209 call!680207))))

(declare-fun b!7388302 () Bool)

(declare-fun c!1373151 () Bool)

(declare-fun e!4422173 () Bool)

(assert (=> b!7388302 (= c!1373151 e!4422173)))

(declare-fun res!2979117 () Bool)

(assert (=> b!7388302 (=> (not res!2979117) (not e!4422173))))

(assert (=> b!7388302 (= res!2979117 ((_ is Concat!28212) (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))

(assert (=> b!7388302 (= e!4422174 e!4422170)))

(declare-fun bm!680202 () Bool)

(assert (=> bm!680202 (= call!680211 call!680207)))

(declare-fun bm!680204 () Bool)

(declare-fun c!1373149 () Bool)

(declare-fun call!680212 () List!71900)

(assert (=> bm!680204 (= call!680207 (derivationStepZipperDown!3173 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))) (ite (or c!1373148 c!1373151) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680212)) lt!2617736))))

(declare-fun b!7388303 () Bool)

(assert (=> b!7388303 (= e!4422172 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680205 () Bool)

(assert (=> bm!680205 (= call!680210 call!680211)))

(declare-fun c!1373152 () Bool)

(declare-fun b!7388304 () Bool)

(assert (=> b!7388304 (= c!1373152 ((_ is Star!19367) (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))

(assert (=> b!7388304 (= e!4422175 e!4422172)))

(declare-fun b!7388305 () Bool)

(assert (=> b!7388305 (= e!4422170 e!4422175)))

(assert (=> b!7388305 (= c!1373149 ((_ is Concat!28212) (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))

(declare-fun bm!680206 () Bool)

(declare-fun call!680208 () List!71900)

(assert (=> bm!680206 (= call!680212 call!680208)))

(declare-fun bm!680203 () Bool)

(assert (=> bm!680203 (= call!680209 (derivationStepZipperDown!3173 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))) (ite c!1373148 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680208)) lt!2617736))))

(declare-fun c!1373150 () Bool)

(declare-fun d!2287141 () Bool)

(assert (=> d!2287141 (= c!1373150 (and ((_ is ElementMatch!19367) (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (= (c!1373059 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) lt!2617736)))))

(assert (=> d!2287141 (= (derivationStepZipperDown!3173 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) lt!2617736) e!4422171)))

(declare-fun b!7388306 () Bool)

(assert (=> b!7388306 (= e!4422173 (nullable!8421 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))

(declare-fun bm!680207 () Bool)

(assert (=> bm!680207 (= call!680208 ($colon$colon!3324 (exprs!8807 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160))) (ite (or c!1373151 c!1373149) (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))

(declare-fun b!7388307 () Bool)

(assert (=> b!7388307 (= e!4422171 (store ((as const (Array Context!16614 Bool)) false) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) true))))

(assert (= (and d!2287141 c!1373150) b!7388307))

(assert (= (and d!2287141 (not c!1373150)) b!7388298))

(assert (= (and b!7388298 c!1373148) b!7388301))

(assert (= (and b!7388298 (not c!1373148)) b!7388302))

(assert (= (and b!7388302 res!2979117) b!7388306))

(assert (= (and b!7388302 c!1373151) b!7388300))

(assert (= (and b!7388302 (not c!1373151)) b!7388305))

(assert (= (and b!7388305 c!1373149) b!7388297))

(assert (= (and b!7388305 (not c!1373149)) b!7388304))

(assert (= (and b!7388304 c!1373152) b!7388299))

(assert (= (and b!7388304 (not c!1373152)) b!7388303))

(assert (= (or b!7388297 b!7388299) bm!680206))

(assert (= (or b!7388297 b!7388299) bm!680205))

(assert (= (or b!7388300 bm!680206) bm!680207))

(assert (= (or b!7388300 bm!680205) bm!680202))

(assert (= (or b!7388301 b!7388300) bm!680203))

(assert (= (or b!7388301 bm!680202) bm!680204))

(declare-fun m!8035392 () Bool)

(assert (=> b!7388306 m!8035392))

(declare-fun m!8035394 () Bool)

(assert (=> bm!680204 m!8035394))

(declare-fun m!8035396 () Bool)

(assert (=> bm!680207 m!8035396))

(declare-fun m!8035398 () Bool)

(assert (=> bm!680203 m!8035398))

(declare-fun m!8035400 () Bool)

(assert (=> b!7388307 m!8035400))

(assert (=> bm!680152 d!2287141))

(declare-fun b!7388326 () Bool)

(declare-fun e!4422194 () Bool)

(declare-fun e!4422196 () Bool)

(assert (=> b!7388326 (= e!4422194 e!4422196)))

(declare-fun c!1373158 () Bool)

(assert (=> b!7388326 (= c!1373158 ((_ is Union!19367) (h!78224 (exprs!8807 c!10532))))))

(declare-fun d!2287143 () Bool)

(declare-fun res!2979130 () Bool)

(declare-fun e!4422192 () Bool)

(assert (=> d!2287143 (=> res!2979130 e!4422192)))

(assert (=> d!2287143 (= res!2979130 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 c!10532))))))

(assert (=> d!2287143 (= (validRegex!9944 (h!78224 (exprs!8807 c!10532))) e!4422192)))

(declare-fun b!7388327 () Bool)

(assert (=> b!7388327 (= e!4422192 e!4422194)))

(declare-fun c!1373157 () Bool)

(assert (=> b!7388327 (= c!1373157 ((_ is Star!19367) (h!78224 (exprs!8807 c!10532))))))

(declare-fun bm!680214 () Bool)

(declare-fun call!680219 () Bool)

(assert (=> bm!680214 (= call!680219 (validRegex!9944 (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))))))

(declare-fun b!7388328 () Bool)

(declare-fun res!2979129 () Bool)

(declare-fun e!4422195 () Bool)

(assert (=> b!7388328 (=> res!2979129 e!4422195)))

(assert (=> b!7388328 (= res!2979129 (not ((_ is Concat!28212) (h!78224 (exprs!8807 c!10532)))))))

(assert (=> b!7388328 (= e!4422196 e!4422195)))

(declare-fun b!7388329 () Bool)

(declare-fun e!4422193 () Bool)

(assert (=> b!7388329 (= e!4422195 e!4422193)))

(declare-fun res!2979132 () Bool)

(assert (=> b!7388329 (=> (not res!2979132) (not e!4422193))))

(declare-fun call!680220 () Bool)

(assert (=> b!7388329 (= res!2979132 call!680220)))

(declare-fun b!7388330 () Bool)

(declare-fun e!4422191 () Bool)

(assert (=> b!7388330 (= e!4422191 call!680219)))

(declare-fun b!7388331 () Bool)

(declare-fun res!2979131 () Bool)

(assert (=> b!7388331 (=> (not res!2979131) (not e!4422191))))

(assert (=> b!7388331 (= res!2979131 call!680220)))

(assert (=> b!7388331 (= e!4422196 e!4422191)))

(declare-fun b!7388332 () Bool)

(declare-fun e!4422190 () Bool)

(assert (=> b!7388332 (= e!4422194 e!4422190)))

(declare-fun res!2979128 () Bool)

(assert (=> b!7388332 (= res!2979128 (not (nullable!8421 (reg!19696 (h!78224 (exprs!8807 c!10532))))))))

(assert (=> b!7388332 (=> (not res!2979128) (not e!4422190))))

(declare-fun bm!680215 () Bool)

(declare-fun call!680221 () Bool)

(assert (=> bm!680215 (= call!680220 call!680221)))

(declare-fun b!7388333 () Bool)

(assert (=> b!7388333 (= e!4422190 call!680221)))

(declare-fun bm!680216 () Bool)

(assert (=> bm!680216 (= call!680221 (validRegex!9944 (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(declare-fun b!7388334 () Bool)

(assert (=> b!7388334 (= e!4422193 call!680219)))

(assert (= (and d!2287143 (not res!2979130)) b!7388327))

(assert (= (and b!7388327 c!1373157) b!7388332))

(assert (= (and b!7388327 (not c!1373157)) b!7388326))

(assert (= (and b!7388332 res!2979128) b!7388333))

(assert (= (and b!7388326 c!1373158) b!7388331))

(assert (= (and b!7388326 (not c!1373158)) b!7388328))

(assert (= (and b!7388331 res!2979131) b!7388330))

(assert (= (and b!7388328 (not res!2979129)) b!7388329))

(assert (= (and b!7388329 res!2979132) b!7388334))

(assert (= (or b!7388331 b!7388329) bm!680215))

(assert (= (or b!7388330 b!7388334) bm!680214))

(assert (= (or b!7388333 bm!680215) bm!680216))

(declare-fun m!8035402 () Bool)

(assert (=> bm!680214 m!8035402))

(declare-fun m!8035404 () Bool)

(assert (=> b!7388332 m!8035404))

(declare-fun m!8035406 () Bool)

(assert (=> bm!680216 m!8035406))

(assert (=> bs!1922189 d!2287143))

(declare-fun d!2287145 () Bool)

(declare-fun res!2979133 () Bool)

(declare-fun e!4422197 () Bool)

(assert (=> d!2287145 (=> res!2979133 e!4422197)))

(assert (=> d!2287145 (= res!2979133 ((_ is Nil!71776) (t!386453 (exprs!8807 c!10532))))))

(assert (=> d!2287145 (= (forall!18151 (t!386453 (exprs!8807 c!10532)) lambda!458994) e!4422197)))

(declare-fun b!7388335 () Bool)

(declare-fun e!4422198 () Bool)

(assert (=> b!7388335 (= e!4422197 e!4422198)))

(declare-fun res!2979134 () Bool)

(assert (=> b!7388335 (=> (not res!2979134) (not e!4422198))))

(assert (=> b!7388335 (= res!2979134 (dynLambda!29569 lambda!458994 (h!78224 (t!386453 (exprs!8807 c!10532)))))))

(declare-fun b!7388336 () Bool)

(assert (=> b!7388336 (= e!4422198 (forall!18151 (t!386453 (t!386453 (exprs!8807 c!10532))) lambda!458994))))

(assert (= (and d!2287145 (not res!2979133)) b!7388335))

(assert (= (and b!7388335 res!2979134) b!7388336))

(declare-fun b_lambda!285135 () Bool)

(assert (=> (not b_lambda!285135) (not b!7388335)))

(declare-fun m!8035408 () Bool)

(assert (=> b!7388335 m!8035408))

(declare-fun m!8035410 () Bool)

(assert (=> b!7388336 m!8035410))

(assert (=> b!7387987 d!2287145))

(declare-fun d!2287147 () Bool)

(declare-fun res!2979135 () Bool)

(declare-fun e!4422199 () Bool)

(assert (=> d!2287147 (=> res!2979135 e!4422199)))

(assert (=> d!2287147 (= res!2979135 ((_ is Nil!71776) (t!386453 (exprs!8807 empty!3463))))))

(assert (=> d!2287147 (= (forall!18151 (t!386453 (exprs!8807 empty!3463)) lambda!458993) e!4422199)))

(declare-fun b!7388337 () Bool)

(declare-fun e!4422200 () Bool)

(assert (=> b!7388337 (= e!4422199 e!4422200)))

(declare-fun res!2979136 () Bool)

(assert (=> b!7388337 (=> (not res!2979136) (not e!4422200))))

(assert (=> b!7388337 (= res!2979136 (dynLambda!29569 lambda!458993 (h!78224 (t!386453 (exprs!8807 empty!3463)))))))

(declare-fun b!7388338 () Bool)

(assert (=> b!7388338 (= e!4422200 (forall!18151 (t!386453 (t!386453 (exprs!8807 empty!3463))) lambda!458993))))

(assert (= (and d!2287147 (not res!2979135)) b!7388337))

(assert (= (and b!7388337 res!2979136) b!7388338))

(declare-fun b_lambda!285137 () Bool)

(assert (=> (not b_lambda!285137) (not b!7388337)))

(declare-fun m!8035412 () Bool)

(assert (=> b!7388337 m!8035412))

(declare-fun m!8035414 () Bool)

(assert (=> b!7388338 m!8035414))

(assert (=> b!7387985 d!2287147))

(declare-fun b!7388339 () Bool)

(declare-fun e!4422206 () (InoxSet Context!16614))

(declare-fun call!680225 () (InoxSet Context!16614))

(assert (=> b!7388339 (= e!4422206 call!680225)))

(declare-fun b!7388340 () Bool)

(declare-fun e!4422202 () (InoxSet Context!16614))

(declare-fun e!4422205 () (InoxSet Context!16614))

(assert (=> b!7388340 (= e!4422202 e!4422205)))

(declare-fun c!1373159 () Bool)

(assert (=> b!7388340 (= c!1373159 ((_ is Union!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(declare-fun b!7388341 () Bool)

(declare-fun e!4422203 () (InoxSet Context!16614))

(assert (=> b!7388341 (= e!4422203 call!680225)))

(declare-fun b!7388342 () Bool)

(declare-fun e!4422201 () (InoxSet Context!16614))

(declare-fun call!680224 () (InoxSet Context!16614))

(declare-fun call!680226 () (InoxSet Context!16614))

(assert (=> b!7388342 (= e!4422201 ((_ map or) call!680224 call!680226))))

(declare-fun b!7388343 () Bool)

(declare-fun call!680222 () (InoxSet Context!16614))

(assert (=> b!7388343 (= e!4422205 ((_ map or) call!680224 call!680222))))

(declare-fun b!7388344 () Bool)

(declare-fun c!1373162 () Bool)

(declare-fun e!4422204 () Bool)

(assert (=> b!7388344 (= c!1373162 e!4422204)))

(declare-fun res!2979137 () Bool)

(assert (=> b!7388344 (=> (not res!2979137) (not e!4422204))))

(assert (=> b!7388344 (= res!2979137 ((_ is Concat!28212) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(assert (=> b!7388344 (= e!4422205 e!4422201)))

(declare-fun bm!680217 () Bool)

(assert (=> bm!680217 (= call!680226 call!680222)))

(declare-fun call!680227 () List!71900)

(declare-fun c!1373160 () Bool)

(declare-fun bm!680219 () Bool)

(assert (=> bm!680219 (= call!680222 (derivationStepZipperDown!3173 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (ite (or c!1373159 c!1373162) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680227)) lt!2617736))))

(declare-fun b!7388345 () Bool)

(assert (=> b!7388345 (= e!4422203 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680220 () Bool)

(assert (=> bm!680220 (= call!680225 call!680226)))

(declare-fun b!7388346 () Bool)

(declare-fun c!1373163 () Bool)

(assert (=> b!7388346 (= c!1373163 ((_ is Star!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(assert (=> b!7388346 (= e!4422206 e!4422203)))

(declare-fun b!7388347 () Bool)

(assert (=> b!7388347 (= e!4422201 e!4422206)))

(assert (=> b!7388347 (= c!1373160 ((_ is Concat!28212) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(declare-fun bm!680221 () Bool)

(declare-fun call!680223 () List!71900)

(assert (=> bm!680221 (= call!680227 call!680223)))

(declare-fun bm!680218 () Bool)

(assert (=> bm!680218 (= call!680224 (derivationStepZipperDown!3173 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))) (ite c!1373159 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680223)) lt!2617736))))

(declare-fun d!2287149 () Bool)

(declare-fun c!1373161 () Bool)

(assert (=> d!2287149 (= c!1373161 (and ((_ is ElementMatch!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (= (c!1373059 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) lt!2617736)))))

(assert (=> d!2287149 (= (derivationStepZipperDown!3173 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) lt!2617736) e!4422202)))

(declare-fun b!7388348 () Bool)

(assert (=> b!7388348 (= e!4422204 (nullable!8421 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))

(declare-fun bm!680222 () Bool)

(assert (=> bm!680222 (= call!680223 ($colon$colon!3324 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))) (ite (or c!1373162 c!1373160) (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))

(declare-fun b!7388349 () Bool)

(assert (=> b!7388349 (= e!4422202 (store ((as const (Array Context!16614 Bool)) false) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) true))))

(assert (= (and d!2287149 c!1373161) b!7388349))

(assert (= (and d!2287149 (not c!1373161)) b!7388340))

(assert (= (and b!7388340 c!1373159) b!7388343))

(assert (= (and b!7388340 (not c!1373159)) b!7388344))

(assert (= (and b!7388344 res!2979137) b!7388348))

(assert (= (and b!7388344 c!1373162) b!7388342))

(assert (= (and b!7388344 (not c!1373162)) b!7388347))

(assert (= (and b!7388347 c!1373160) b!7388339))

(assert (= (and b!7388347 (not c!1373160)) b!7388346))

(assert (= (and b!7388346 c!1373163) b!7388341))

(assert (= (and b!7388346 (not c!1373163)) b!7388345))

(assert (= (or b!7388339 b!7388341) bm!680221))

(assert (= (or b!7388339 b!7388341) bm!680220))

(assert (= (or b!7388342 bm!680221) bm!680222))

(assert (= (or b!7388342 bm!680220) bm!680217))

(assert (= (or b!7388343 b!7388342) bm!680218))

(assert (= (or b!7388343 bm!680217) bm!680219))

(declare-fun m!8035416 () Bool)

(assert (=> b!7388348 m!8035416))

(declare-fun m!8035418 () Bool)

(assert (=> bm!680219 m!8035418))

(declare-fun m!8035420 () Bool)

(assert (=> bm!680222 m!8035420))

(declare-fun m!8035422 () Bool)

(assert (=> bm!680218 m!8035422))

(declare-fun m!8035424 () Bool)

(assert (=> b!7388349 m!8035424))

(assert (=> bm!680137 d!2287149))

(declare-fun d!2287151 () Bool)

(declare-fun res!2979142 () Bool)

(declare-fun e!4422211 () Bool)

(assert (=> d!2287151 (=> res!2979142 e!4422211)))

(assert (=> d!2287151 (= res!2979142 ((_ is Nil!71779) lt!2617758))))

(assert (=> d!2287151 (= (noDuplicate!3093 lt!2617758) e!4422211)))

(declare-fun b!7388354 () Bool)

(declare-fun e!4422212 () Bool)

(assert (=> b!7388354 (= e!4422211 e!4422212)))

(declare-fun res!2979143 () Bool)

(assert (=> b!7388354 (=> (not res!2979143) (not e!4422212))))

(declare-fun contains!20837 (List!71903 Context!16614) Bool)

(assert (=> b!7388354 (= res!2979143 (not (contains!20837 (t!386456 lt!2617758) (h!78227 lt!2617758))))))

(declare-fun b!7388355 () Bool)

(assert (=> b!7388355 (= e!4422212 (noDuplicate!3093 (t!386456 lt!2617758)))))

(assert (= (and d!2287151 (not res!2979142)) b!7388354))

(assert (= (and b!7388354 res!2979143) b!7388355))

(declare-fun m!8035426 () Bool)

(assert (=> b!7388354 m!8035426))

(declare-fun m!8035428 () Bool)

(assert (=> b!7388355 m!8035428))

(assert (=> d!2287045 d!2287151))

(declare-fun d!2287153 () Bool)

(declare-fun e!4422221 () Bool)

(assert (=> d!2287153 e!4422221))

(declare-fun res!2979149 () Bool)

(assert (=> d!2287153 (=> (not res!2979149) (not e!4422221))))

(declare-fun res!2979148 () List!71903)

(assert (=> d!2287153 (= res!2979149 (noDuplicate!3093 res!2979148))))

(declare-fun e!4422220 () Bool)

(assert (=> d!2287153 e!4422220))

(assert (=> d!2287153 (= (choose!57381 lt!2617738) res!2979148)))

(declare-fun b!7388363 () Bool)

(declare-fun e!4422219 () Bool)

(declare-fun tp!2103096 () Bool)

(assert (=> b!7388363 (= e!4422219 tp!2103096)))

(declare-fun b!7388362 () Bool)

(declare-fun tp!2103097 () Bool)

(assert (=> b!7388362 (= e!4422220 (and (inv!91778 (h!78227 res!2979148)) e!4422219 tp!2103097))))

(declare-fun b!7388364 () Bool)

(assert (=> b!7388364 (= e!4422221 (= (content!15205 res!2979148) lt!2617738))))

(assert (= b!7388362 b!7388363))

(assert (= (and d!2287153 ((_ is Cons!71779) res!2979148)) b!7388362))

(assert (= (and d!2287153 res!2979149) b!7388364))

(declare-fun m!8035430 () Bool)

(assert (=> d!2287153 m!8035430))

(declare-fun m!8035432 () Bool)

(assert (=> b!7388362 m!8035432))

(declare-fun m!8035434 () Bool)

(assert (=> b!7388364 m!8035434))

(assert (=> d!2287045 d!2287153))

(assert (=> d!2287047 d!2287043))

(assert (=> d!2287047 d!2287045))

(declare-fun b!7388365 () Bool)

(declare-fun e!4422226 () Bool)

(declare-fun e!4422228 () Bool)

(assert (=> b!7388365 (= e!4422226 e!4422228)))

(declare-fun c!1373165 () Bool)

(assert (=> b!7388365 (= c!1373165 ((_ is Union!19367) (h!78224 (exprs!8807 setElem!55928))))))

(declare-fun d!2287155 () Bool)

(declare-fun res!2979152 () Bool)

(declare-fun e!4422224 () Bool)

(assert (=> d!2287155 (=> res!2979152 e!4422224)))

(assert (=> d!2287155 (= res!2979152 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 setElem!55928))))))

(assert (=> d!2287155 (= (validRegex!9944 (h!78224 (exprs!8807 setElem!55928))) e!4422224)))

(declare-fun b!7388366 () Bool)

(assert (=> b!7388366 (= e!4422224 e!4422226)))

(declare-fun c!1373164 () Bool)

(assert (=> b!7388366 (= c!1373164 ((_ is Star!19367) (h!78224 (exprs!8807 setElem!55928))))))

(declare-fun bm!680223 () Bool)

(declare-fun call!680228 () Bool)

(assert (=> bm!680223 (= call!680228 (validRegex!9944 (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))))))

(declare-fun b!7388367 () Bool)

(declare-fun res!2979151 () Bool)

(declare-fun e!4422227 () Bool)

(assert (=> b!7388367 (=> res!2979151 e!4422227)))

(assert (=> b!7388367 (= res!2979151 (not ((_ is Concat!28212) (h!78224 (exprs!8807 setElem!55928)))))))

(assert (=> b!7388367 (= e!4422228 e!4422227)))

(declare-fun b!7388368 () Bool)

(declare-fun e!4422225 () Bool)

(assert (=> b!7388368 (= e!4422227 e!4422225)))

(declare-fun res!2979154 () Bool)

(assert (=> b!7388368 (=> (not res!2979154) (not e!4422225))))

(declare-fun call!680229 () Bool)

(assert (=> b!7388368 (= res!2979154 call!680229)))

(declare-fun b!7388369 () Bool)

(declare-fun e!4422223 () Bool)

(assert (=> b!7388369 (= e!4422223 call!680228)))

(declare-fun b!7388370 () Bool)

(declare-fun res!2979153 () Bool)

(assert (=> b!7388370 (=> (not res!2979153) (not e!4422223))))

(assert (=> b!7388370 (= res!2979153 call!680229)))

(assert (=> b!7388370 (= e!4422228 e!4422223)))

(declare-fun b!7388371 () Bool)

(declare-fun e!4422222 () Bool)

(assert (=> b!7388371 (= e!4422226 e!4422222)))

(declare-fun res!2979150 () Bool)

(assert (=> b!7388371 (= res!2979150 (not (nullable!8421 (reg!19696 (h!78224 (exprs!8807 setElem!55928))))))))

(assert (=> b!7388371 (=> (not res!2979150) (not e!4422222))))

(declare-fun bm!680224 () Bool)

(declare-fun call!680230 () Bool)

(assert (=> bm!680224 (= call!680229 call!680230)))

(declare-fun b!7388372 () Bool)

(assert (=> b!7388372 (= e!4422222 call!680230)))

(declare-fun bm!680225 () Bool)

(assert (=> bm!680225 (= call!680230 (validRegex!9944 (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))))))

(declare-fun b!7388373 () Bool)

(assert (=> b!7388373 (= e!4422225 call!680228)))

(assert (= (and d!2287155 (not res!2979152)) b!7388366))

(assert (= (and b!7388366 c!1373164) b!7388371))

(assert (= (and b!7388366 (not c!1373164)) b!7388365))

(assert (= (and b!7388371 res!2979150) b!7388372))

(assert (= (and b!7388365 c!1373165) b!7388370))

(assert (= (and b!7388365 (not c!1373165)) b!7388367))

(assert (= (and b!7388370 res!2979153) b!7388369))

(assert (= (and b!7388367 (not res!2979151)) b!7388368))

(assert (= (and b!7388368 res!2979154) b!7388373))

(assert (= (or b!7388370 b!7388368) bm!680224))

(assert (= (or b!7388369 b!7388373) bm!680223))

(assert (= (or b!7388372 bm!680224) bm!680225))

(declare-fun m!8035436 () Bool)

(assert (=> bm!680223 m!8035436))

(declare-fun m!8035438 () Bool)

(assert (=> b!7388371 m!8035438))

(declare-fun m!8035440 () Bool)

(assert (=> bm!680225 m!8035440))

(assert (=> bs!1922188 d!2287155))

(declare-fun d!2287157 () Bool)

(declare-fun res!2979155 () Bool)

(declare-fun e!4422229 () Bool)

(assert (=> d!2287157 (=> res!2979155 e!4422229)))

(assert (=> d!2287157 (= res!2979155 ((_ is Nil!71776) (t!386453 (exprs!8807 setElem!55928))))))

(assert (=> d!2287157 (= (forall!18151 (t!386453 (exprs!8807 setElem!55928)) lambda!458983) e!4422229)))

(declare-fun b!7388374 () Bool)

(declare-fun e!4422230 () Bool)

(assert (=> b!7388374 (= e!4422229 e!4422230)))

(declare-fun res!2979156 () Bool)

(assert (=> b!7388374 (=> (not res!2979156) (not e!4422230))))

(assert (=> b!7388374 (= res!2979156 (dynLambda!29569 lambda!458983 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))))

(declare-fun b!7388375 () Bool)

(assert (=> b!7388375 (= e!4422230 (forall!18151 (t!386453 (t!386453 (exprs!8807 setElem!55928))) lambda!458983))))

(assert (= (and d!2287157 (not res!2979155)) b!7388374))

(assert (= (and b!7388374 res!2979156) b!7388375))

(declare-fun b_lambda!285139 () Bool)

(assert (=> (not b_lambda!285139) (not b!7388374)))

(declare-fun m!8035442 () Bool)

(assert (=> b!7388374 m!8035442))

(declare-fun m!8035444 () Bool)

(assert (=> b!7388375 m!8035444))

(assert (=> b!7387989 d!2287157))

(assert (=> d!2287063 d!2287059))

(declare-fun d!2287159 () Bool)

(declare-fun lt!2617762 () Bool)

(assert (=> d!2287159 (= lt!2617762 (exists!4729 (toList!11730 z!3451) lambda!459008))))

(assert (=> d!2287159 (= lt!2617762 (choose!57377 z!3451 lambda!459008))))

(assert (=> d!2287159 (= (exists!4727 z!3451 lambda!459008) lt!2617762)))

(declare-fun bs!1922215 () Bool)

(assert (= bs!1922215 d!2287159))

(assert (=> bs!1922215 m!8035224))

(assert (=> bs!1922215 m!8035224))

(declare-fun m!8035446 () Bool)

(assert (=> bs!1922215 m!8035446))

(declare-fun m!8035448 () Bool)

(assert (=> bs!1922215 m!8035448))

(assert (=> d!2287063 d!2287159))

(declare-fun bs!1922216 () Bool)

(declare-fun d!2287161 () Bool)

(assert (= bs!1922216 (and d!2287161 d!2286959)))

(declare-fun lambda!459012 () Int)

(assert (=> bs!1922216 (= lambda!459012 lambda!458983)))

(declare-fun bs!1922217 () Bool)

(assert (= bs!1922217 (and d!2287161 d!2286993)))

(assert (=> bs!1922217 (= lambda!459012 lambda!458993)))

(declare-fun bs!1922218 () Bool)

(assert (= bs!1922218 (and d!2287161 d!2287003)))

(assert (=> bs!1922218 (= lambda!459012 lambda!458994)))

(declare-fun bs!1922219 () Bool)

(assert (= bs!1922219 (and d!2287161 d!2287049)))

(assert (=> bs!1922219 (= lambda!459012 lambda!459005)))

(assert (=> d!2287161 (= (inv!91778 _$3!516) (forall!18151 (exprs!8807 _$3!516) lambda!459012))))

(declare-fun bs!1922220 () Bool)

(assert (= bs!1922220 d!2287161))

(declare-fun m!8035450 () Bool)

(assert (=> bs!1922220 m!8035450))

(assert (=> d!2287063 d!2287161))

(declare-fun d!2287163 () Bool)

(assert (=> d!2287163 (= (nullable!8421 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (nullableFct!3386 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(declare-fun bs!1922221 () Bool)

(assert (= bs!1922221 d!2287163))

(declare-fun m!8035452 () Bool)

(assert (=> bs!1922221 m!8035452))

(assert (=> b!7387973 d!2287163))

(declare-fun d!2287165 () Bool)

(declare-fun res!2979161 () Bool)

(declare-fun e!4422235 () Bool)

(assert (=> d!2287165 (=> res!2979161 e!4422235)))

(assert (=> d!2287165 (= res!2979161 ((_ is Nil!71779) (toList!11730 lt!2617738)))))

(assert (=> d!2287165 (= (forall!18153 (toList!11730 lt!2617738) lambda!459004) e!4422235)))

(declare-fun b!7388380 () Bool)

(declare-fun e!4422236 () Bool)

(assert (=> b!7388380 (= e!4422235 e!4422236)))

(declare-fun res!2979162 () Bool)

(assert (=> b!7388380 (=> (not res!2979162) (not e!4422236))))

(declare-fun dynLambda!29571 (Int Context!16614) Bool)

(assert (=> b!7388380 (= res!2979162 (dynLambda!29571 lambda!459004 (h!78227 (toList!11730 lt!2617738))))))

(declare-fun b!7388381 () Bool)

(assert (=> b!7388381 (= e!4422236 (forall!18153 (t!386456 (toList!11730 lt!2617738)) lambda!459004))))

(assert (= (and d!2287165 (not res!2979161)) b!7388380))

(assert (= (and b!7388380 res!2979162) b!7388381))

(declare-fun b_lambda!285141 () Bool)

(assert (=> (not b_lambda!285141) (not b!7388380)))

(declare-fun m!8035454 () Bool)

(assert (=> b!7388380 m!8035454))

(declare-fun m!8035456 () Bool)

(assert (=> b!7388381 m!8035456))

(assert (=> d!2287043 d!2287165))

(declare-fun b!7388382 () Bool)

(declare-fun e!4422239 () (InoxSet Context!16614))

(declare-fun call!680231 () (InoxSet Context!16614))

(assert (=> b!7388382 (= e!4422239 ((_ map or) call!680231 (derivationStepZipperUp!2773 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) lt!2617736)))))

(declare-fun d!2287167 () Bool)

(declare-fun c!1373166 () Bool)

(declare-fun e!4422238 () Bool)

(assert (=> d!2287167 (= c!1373166 e!4422238)))

(declare-fun res!2979163 () Bool)

(assert (=> d!2287167 (=> (not res!2979163) (not e!4422238))))

(assert (=> d!2287167 (= res!2979163 ((_ is Cons!71776) (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(assert (=> d!2287167 (= (derivationStepZipperUp!2773 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) lt!2617736) e!4422239)))

(declare-fun b!7388383 () Bool)

(declare-fun e!4422237 () (InoxSet Context!16614))

(assert (=> b!7388383 (= e!4422237 ((as const (Array Context!16614 Bool)) false))))

(declare-fun b!7388384 () Bool)

(assert (=> b!7388384 (= e!4422237 call!680231)))

(declare-fun b!7388385 () Bool)

(assert (=> b!7388385 (= e!4422238 (nullable!8421 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))

(declare-fun bm!680226 () Bool)

(assert (=> bm!680226 (= call!680231 (derivationStepZipperDown!3173 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) lt!2617736))))

(declare-fun b!7388386 () Bool)

(assert (=> b!7388386 (= e!4422239 e!4422237)))

(declare-fun c!1373167 () Bool)

(assert (=> b!7388386 (= c!1373167 ((_ is Cons!71776) (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(assert (= (and d!2287167 res!2979163) b!7388385))

(assert (= (and d!2287167 c!1373166) b!7388382))

(assert (= (and d!2287167 (not c!1373166)) b!7388386))

(assert (= (and b!7388386 c!1373167) b!7388384))

(assert (= (and b!7388386 (not c!1373167)) b!7388383))

(assert (= (or b!7388382 b!7388384) bm!680226))

(declare-fun m!8035458 () Bool)

(assert (=> b!7388382 m!8035458))

(declare-fun m!8035460 () Bool)

(assert (=> b!7388385 m!8035460))

(declare-fun m!8035462 () Bool)

(assert (=> bm!680226 m!8035462))

(assert (=> b!7387970 d!2287167))

(declare-fun d!2287169 () Bool)

(assert (=> d!2287169 (= ($colon$colon!3324 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))) (ite (or c!1373108 c!1373106) (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (h!78224 (exprs!8807 c!10532)))) (Cons!71776 (ite (or c!1373108 c!1373106) (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (h!78224 (exprs!8807 c!10532))) (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))

(assert (=> bm!680155 d!2287169))

(declare-fun d!2287171 () Bool)

(assert (=> d!2287171 (= (nullable!8421 (regOne!39246 (h!78224 (exprs!8807 c!10532)))) (nullableFct!3386 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))

(declare-fun bs!1922222 () Bool)

(assert (= bs!1922222 d!2287171))

(declare-fun m!8035464 () Bool)

(assert (=> bs!1922222 m!8035464))

(assert (=> b!7388025 d!2287171))

(declare-fun d!2287173 () Bool)

(declare-fun c!1373170 () Bool)

(assert (=> d!2287173 (= c!1373170 ((_ is Nil!71779) lt!2617758))))

(declare-fun e!4422242 () (InoxSet Context!16614))

(assert (=> d!2287173 (= (content!15205 lt!2617758) e!4422242)))

(declare-fun b!7388391 () Bool)

(assert (=> b!7388391 (= e!4422242 ((as const (Array Context!16614 Bool)) false))))

(declare-fun b!7388392 () Bool)

(assert (=> b!7388392 (= e!4422242 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) (h!78227 lt!2617758) true) (content!15205 (t!386456 lt!2617758))))))

(assert (= (and d!2287173 c!1373170) b!7388391))

(assert (= (and d!2287173 (not c!1373170)) b!7388392))

(declare-fun m!8035466 () Bool)

(assert (=> b!7388392 m!8035466))

(declare-fun m!8035468 () Bool)

(assert (=> b!7388392 m!8035468))

(assert (=> b!7387979 d!2287173))

(declare-fun b!7388393 () Bool)

(declare-fun e!4422247 () Bool)

(declare-fun e!4422249 () Bool)

(assert (=> b!7388393 (= e!4422247 e!4422249)))

(declare-fun c!1373172 () Bool)

(assert (=> b!7388393 (= c!1373172 ((_ is Union!19367) (h!78224 (exprs!8807 empty!3463))))))

(declare-fun d!2287175 () Bool)

(declare-fun res!2979166 () Bool)

(declare-fun e!4422245 () Bool)

(assert (=> d!2287175 (=> res!2979166 e!4422245)))

(assert (=> d!2287175 (= res!2979166 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 empty!3463))))))

(assert (=> d!2287175 (= (validRegex!9944 (h!78224 (exprs!8807 empty!3463))) e!4422245)))

(declare-fun b!7388394 () Bool)

(assert (=> b!7388394 (= e!4422245 e!4422247)))

(declare-fun c!1373171 () Bool)

(assert (=> b!7388394 (= c!1373171 ((_ is Star!19367) (h!78224 (exprs!8807 empty!3463))))))

(declare-fun bm!680227 () Bool)

(declare-fun call!680232 () Bool)

(assert (=> bm!680227 (= call!680232 (validRegex!9944 (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))))))

(declare-fun b!7388395 () Bool)

(declare-fun res!2979165 () Bool)

(declare-fun e!4422248 () Bool)

(assert (=> b!7388395 (=> res!2979165 e!4422248)))

(assert (=> b!7388395 (= res!2979165 (not ((_ is Concat!28212) (h!78224 (exprs!8807 empty!3463)))))))

(assert (=> b!7388395 (= e!4422249 e!4422248)))

(declare-fun b!7388396 () Bool)

(declare-fun e!4422246 () Bool)

(assert (=> b!7388396 (= e!4422248 e!4422246)))

(declare-fun res!2979168 () Bool)

(assert (=> b!7388396 (=> (not res!2979168) (not e!4422246))))

(declare-fun call!680233 () Bool)

(assert (=> b!7388396 (= res!2979168 call!680233)))

(declare-fun b!7388397 () Bool)

(declare-fun e!4422244 () Bool)

(assert (=> b!7388397 (= e!4422244 call!680232)))

(declare-fun b!7388398 () Bool)

(declare-fun res!2979167 () Bool)

(assert (=> b!7388398 (=> (not res!2979167) (not e!4422244))))

(assert (=> b!7388398 (= res!2979167 call!680233)))

(assert (=> b!7388398 (= e!4422249 e!4422244)))

(declare-fun b!7388399 () Bool)

(declare-fun e!4422243 () Bool)

(assert (=> b!7388399 (= e!4422247 e!4422243)))

(declare-fun res!2979164 () Bool)

(assert (=> b!7388399 (= res!2979164 (not (nullable!8421 (reg!19696 (h!78224 (exprs!8807 empty!3463))))))))

(assert (=> b!7388399 (=> (not res!2979164) (not e!4422243))))

(declare-fun bm!680228 () Bool)

(declare-fun call!680234 () Bool)

(assert (=> bm!680228 (= call!680233 call!680234)))

(declare-fun b!7388400 () Bool)

(assert (=> b!7388400 (= e!4422243 call!680234)))

(declare-fun bm!680229 () Bool)

(assert (=> bm!680229 (= call!680234 (validRegex!9944 (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))))))

(declare-fun b!7388401 () Bool)

(assert (=> b!7388401 (= e!4422246 call!680232)))

(assert (= (and d!2287175 (not res!2979166)) b!7388394))

(assert (= (and b!7388394 c!1373171) b!7388399))

(assert (= (and b!7388394 (not c!1373171)) b!7388393))

(assert (= (and b!7388399 res!2979164) b!7388400))

(assert (= (and b!7388393 c!1373172) b!7388398))

(assert (= (and b!7388393 (not c!1373172)) b!7388395))

(assert (= (and b!7388398 res!2979167) b!7388397))

(assert (= (and b!7388395 (not res!2979165)) b!7388396))

(assert (= (and b!7388396 res!2979168) b!7388401))

(assert (= (or b!7388398 b!7388396) bm!680228))

(assert (= (or b!7388397 b!7388401) bm!680227))

(assert (= (or b!7388400 bm!680228) bm!680229))

(declare-fun m!8035470 () Bool)

(assert (=> bm!680227 m!8035470))

(declare-fun m!8035472 () Bool)

(assert (=> b!7388399 m!8035472))

(declare-fun m!8035474 () Bool)

(assert (=> bm!680229 m!8035474))

(assert (=> bs!1922187 d!2287175))

(declare-fun bs!1922223 () Bool)

(declare-fun d!2287177 () Bool)

(assert (= bs!1922223 (and d!2287177 b!7387801)))

(declare-fun lambda!459013 () Int)

(assert (=> bs!1922223 (not (= lambda!459013 lambda!458972))))

(declare-fun bs!1922224 () Bool)

(assert (= bs!1922224 (and d!2287177 d!2286991)))

(assert (=> bs!1922224 (not (= lambda!459013 lambda!458992))))

(declare-fun bs!1922225 () Bool)

(assert (= bs!1922225 (and d!2287177 d!2287043)))

(assert (=> bs!1922225 (= (= lambda!458992 lambda!458972) (= lambda!459013 lambda!459004))))

(declare-fun bs!1922226 () Bool)

(assert (= bs!1922226 (and d!2287177 d!2287063)))

(assert (=> bs!1922226 (not (= lambda!459013 lambda!459008))))

(assert (=> d!2287177 true))

(assert (=> d!2287177 (< (dynLambda!29567 order!29431 lambda!458992) (dynLambda!29567 order!29431 lambda!459013))))

(assert (=> d!2287177 (= (exists!4729 (toList!11730 z!3451) lambda!458992) (not (forall!18153 (toList!11730 z!3451) lambda!459013)))))

(declare-fun bs!1922227 () Bool)

(assert (= bs!1922227 d!2287177))

(assert (=> bs!1922227 m!8035224))

(declare-fun m!8035476 () Bool)

(assert (=> bs!1922227 m!8035476))

(assert (=> d!2287061 d!2287177))

(declare-fun d!2287179 () Bool)

(declare-fun e!4422250 () Bool)

(assert (=> d!2287179 e!4422250))

(declare-fun res!2979169 () Bool)

(assert (=> d!2287179 (=> (not res!2979169) (not e!4422250))))

(declare-fun lt!2617763 () List!71903)

(assert (=> d!2287179 (= res!2979169 (noDuplicate!3093 lt!2617763))))

(assert (=> d!2287179 (= lt!2617763 (choose!57381 z!3451))))

(assert (=> d!2287179 (= (toList!11730 z!3451) lt!2617763)))

(declare-fun b!7388402 () Bool)

(assert (=> b!7388402 (= e!4422250 (= (content!15205 lt!2617763) z!3451))))

(assert (= (and d!2287179 res!2979169) b!7388402))

(declare-fun m!8035478 () Bool)

(assert (=> d!2287179 m!8035478))

(declare-fun m!8035480 () Bool)

(assert (=> d!2287179 m!8035480))

(declare-fun m!8035482 () Bool)

(assert (=> b!7388402 m!8035482))

(assert (=> d!2287061 d!2287179))

(declare-fun d!2287181 () Bool)

(declare-fun res!2979170 () Bool)

(assert (=> d!2287181 (= res!2979170 (exists!4729 (toList!11730 z!3451) lambda!458992))))

(assert (=> d!2287181 true))

(assert (=> d!2287181 (= (choose!57377 z!3451 lambda!458992) res!2979170)))

(declare-fun bs!1922228 () Bool)

(assert (= bs!1922228 d!2287181))

(assert (=> bs!1922228 m!8035224))

(assert (=> bs!1922228 m!8035224))

(assert (=> bs!1922228 m!8035226))

(assert (=> d!2287061 d!2287181))

(declare-fun d!2287183 () Bool)

(declare-fun res!2979171 () Bool)

(declare-fun e!4422251 () Bool)

(assert (=> d!2287183 (=> res!2979171 e!4422251)))

(assert (=> d!2287183 (= res!2979171 ((_ is Nil!71776) (exprs!8807 setElem!55934)))))

(assert (=> d!2287183 (= (forall!18151 (exprs!8807 setElem!55934) lambda!459005) e!4422251)))

(declare-fun b!7388403 () Bool)

(declare-fun e!4422252 () Bool)

(assert (=> b!7388403 (= e!4422251 e!4422252)))

(declare-fun res!2979172 () Bool)

(assert (=> b!7388403 (=> (not res!2979172) (not e!4422252))))

(assert (=> b!7388403 (= res!2979172 (dynLambda!29569 lambda!459005 (h!78224 (exprs!8807 setElem!55934))))))

(declare-fun b!7388404 () Bool)

(assert (=> b!7388404 (= e!4422252 (forall!18151 (t!386453 (exprs!8807 setElem!55934)) lambda!459005))))

(assert (= (and d!2287183 (not res!2979171)) b!7388403))

(assert (= (and b!7388403 res!2979172) b!7388404))

(declare-fun b_lambda!285143 () Bool)

(assert (=> (not b_lambda!285143) (not b!7388403)))

(declare-fun m!8035484 () Bool)

(assert (=> b!7388403 m!8035484))

(declare-fun m!8035486 () Bool)

(assert (=> b!7388404 m!8035486))

(assert (=> d!2287049 d!2287183))

(declare-fun bm!680234 () Bool)

(declare-fun call!680239 () Bool)

(declare-fun c!1373175 () Bool)

(assert (=> bm!680234 (= call!680239 (nullable!8421 (ite c!1373175 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))))))

(declare-fun b!7388419 () Bool)

(declare-fun e!4422267 () Bool)

(declare-fun e!4422269 () Bool)

(assert (=> b!7388419 (= e!4422267 e!4422269)))

(declare-fun res!2979183 () Bool)

(assert (=> b!7388419 (=> res!2979183 e!4422269)))

(assert (=> b!7388419 (= res!2979183 ((_ is Star!19367) (h!78224 (exprs!8807 c!10532))))))

(declare-fun b!7388420 () Bool)

(declare-fun e!4422268 () Bool)

(assert (=> b!7388420 (= e!4422269 e!4422268)))

(assert (=> b!7388420 (= c!1373175 ((_ is Union!19367) (h!78224 (exprs!8807 c!10532))))))

(declare-fun d!2287185 () Bool)

(declare-fun res!2979187 () Bool)

(declare-fun e!4422270 () Bool)

(assert (=> d!2287185 (=> res!2979187 e!4422270)))

(assert (=> d!2287185 (= res!2979187 ((_ is EmptyExpr!19367) (h!78224 (exprs!8807 c!10532))))))

(assert (=> d!2287185 (= (nullableFct!3386 (h!78224 (exprs!8807 c!10532))) e!4422270)))

(declare-fun b!7388421 () Bool)

(declare-fun e!4422265 () Bool)

(declare-fun call!680240 () Bool)

(assert (=> b!7388421 (= e!4422265 call!680240)))

(declare-fun b!7388422 () Bool)

(assert (=> b!7388422 (= e!4422268 e!4422265)))

(declare-fun res!2979186 () Bool)

(assert (=> b!7388422 (= res!2979186 call!680239)))

(assert (=> b!7388422 (=> res!2979186 e!4422265)))

(declare-fun b!7388423 () Bool)

(assert (=> b!7388423 (= e!4422270 e!4422267)))

(declare-fun res!2979185 () Bool)

(assert (=> b!7388423 (=> (not res!2979185) (not e!4422267))))

(assert (=> b!7388423 (= res!2979185 (and (not ((_ is EmptyLang!19367) (h!78224 (exprs!8807 c!10532)))) (not ((_ is ElementMatch!19367) (h!78224 (exprs!8807 c!10532))))))))

(declare-fun b!7388424 () Bool)

(declare-fun e!4422266 () Bool)

(assert (=> b!7388424 (= e!4422266 call!680239)))

(declare-fun b!7388425 () Bool)

(assert (=> b!7388425 (= e!4422268 e!4422266)))

(declare-fun res!2979184 () Bool)

(assert (=> b!7388425 (= res!2979184 call!680240)))

(assert (=> b!7388425 (=> (not res!2979184) (not e!4422266))))

(declare-fun bm!680235 () Bool)

(assert (=> bm!680235 (= call!680240 (nullable!8421 (ite c!1373175 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))

(assert (= (and d!2287185 (not res!2979187)) b!7388423))

(assert (= (and b!7388423 res!2979185) b!7388419))

(assert (= (and b!7388419 (not res!2979183)) b!7388420))

(assert (= (and b!7388420 c!1373175) b!7388422))

(assert (= (and b!7388420 (not c!1373175)) b!7388425))

(assert (= (and b!7388422 (not res!2979186)) b!7388421))

(assert (= (and b!7388425 res!2979184) b!7388424))

(assert (= (or b!7388421 b!7388425) bm!680235))

(assert (= (or b!7388422 b!7388424) bm!680234))

(declare-fun m!8035488 () Bool)

(assert (=> bm!680234 m!8035488))

(declare-fun m!8035490 () Bool)

(assert (=> bm!680235 m!8035490))

(assert (=> d!2287053 d!2287185))

(declare-fun d!2287187 () Bool)

(assert (=> d!2287187 true))

(declare-fun setRes!55945 () Bool)

(assert (=> d!2287187 setRes!55945))

(declare-fun condSetEmpty!55945 () Bool)

(declare-fun res!2979188 () (InoxSet Context!16614))

(assert (=> d!2287187 (= condSetEmpty!55945 (= res!2979188 ((as const (Array Context!16614 Bool)) false)))))

(assert (=> d!2287187 (= (choose!57380 z!3451 lambda!458989) res!2979188)))

(declare-fun setIsEmpty!55945 () Bool)

(assert (=> setIsEmpty!55945 setRes!55945))

(declare-fun tp!2103099 () Bool)

(declare-fun setNonEmpty!55945 () Bool)

(declare-fun setElem!55945 () Context!16614)

(declare-fun e!4422271 () Bool)

(assert (=> setNonEmpty!55945 (= setRes!55945 (and tp!2103099 (inv!91778 setElem!55945) e!4422271))))

(declare-fun setRest!55945 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55945 (= res!2979188 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55945 true) setRest!55945))))

(declare-fun b!7388426 () Bool)

(declare-fun tp!2103098 () Bool)

(assert (=> b!7388426 (= e!4422271 tp!2103098)))

(assert (= (and d!2287187 condSetEmpty!55945) setIsEmpty!55945))

(assert (= (and d!2287187 (not condSetEmpty!55945)) setNonEmpty!55945))

(assert (= setNonEmpty!55945 b!7388426))

(declare-fun m!8035492 () Bool)

(assert (=> setNonEmpty!55945 m!8035492))

(assert (=> d!2287041 d!2287187))

(declare-fun bs!1922229 () Bool)

(declare-fun d!2287189 () Bool)

(assert (= bs!1922229 (and d!2287189 d!2287161)))

(declare-fun lambda!459014 () Int)

(assert (=> bs!1922229 (= lambda!459014 lambda!459012)))

(declare-fun bs!1922230 () Bool)

(assert (= bs!1922230 (and d!2287189 d!2287003)))

(assert (=> bs!1922230 (= lambda!459014 lambda!458994)))

(declare-fun bs!1922231 () Bool)

(assert (= bs!1922231 (and d!2287189 d!2286993)))

(assert (=> bs!1922231 (= lambda!459014 lambda!458993)))

(declare-fun bs!1922232 () Bool)

(assert (= bs!1922232 (and d!2287189 d!2287049)))

(assert (=> bs!1922232 (= lambda!459014 lambda!459005)))

(declare-fun bs!1922233 () Bool)

(assert (= bs!1922233 (and d!2287189 d!2286959)))

(assert (=> bs!1922233 (= lambda!459014 lambda!458983)))

(assert (=> d!2287189 (= (inv!91778 setElem!55936) (forall!18151 (exprs!8807 setElem!55936) lambda!459014))))

(declare-fun bs!1922234 () Bool)

(assert (= bs!1922234 d!2287189))

(declare-fun m!8035494 () Bool)

(assert (=> bs!1922234 m!8035494))

(assert (=> setNonEmpty!55936 d!2287189))

(declare-fun b!7388428 () Bool)

(declare-fun e!4422272 () Bool)

(declare-fun tp!2103102 () Bool)

(declare-fun tp!2103104 () Bool)

(assert (=> b!7388428 (= e!4422272 (and tp!2103102 tp!2103104))))

(declare-fun b!7388429 () Bool)

(declare-fun tp!2103103 () Bool)

(assert (=> b!7388429 (= e!4422272 tp!2103103)))

(assert (=> b!7388038 (= tp!2102938 e!4422272)))

(declare-fun b!7388430 () Bool)

(declare-fun tp!2103100 () Bool)

(declare-fun tp!2103101 () Bool)

(assert (=> b!7388430 (= e!4422272 (and tp!2103100 tp!2103101))))

(declare-fun b!7388427 () Bool)

(assert (=> b!7388427 (= e!4422272 tp_is_empty!48997)))

(assert (= (and b!7388038 ((_ is ElementMatch!19367) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) b!7388427))

(assert (= (and b!7388038 ((_ is Concat!28212) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) b!7388428))

(assert (= (and b!7388038 ((_ is Star!19367) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) b!7388429))

(assert (= (and b!7388038 ((_ is Union!19367) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) b!7388430))

(declare-fun b!7388432 () Bool)

(declare-fun e!4422273 () Bool)

(declare-fun tp!2103107 () Bool)

(declare-fun tp!2103109 () Bool)

(assert (=> b!7388432 (= e!4422273 (and tp!2103107 tp!2103109))))

(declare-fun b!7388433 () Bool)

(declare-fun tp!2103108 () Bool)

(assert (=> b!7388433 (= e!4422273 tp!2103108)))

(assert (=> b!7388038 (= tp!2102940 e!4422273)))

(declare-fun b!7388434 () Bool)

(declare-fun tp!2103105 () Bool)

(declare-fun tp!2103106 () Bool)

(assert (=> b!7388434 (= e!4422273 (and tp!2103105 tp!2103106))))

(declare-fun b!7388431 () Bool)

(assert (=> b!7388431 (= e!4422273 tp_is_empty!48997)))

(assert (= (and b!7388038 ((_ is ElementMatch!19367) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) b!7388431))

(assert (= (and b!7388038 ((_ is Concat!28212) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) b!7388432))

(assert (= (and b!7388038 ((_ is Star!19367) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) b!7388433))

(assert (= (and b!7388038 ((_ is Union!19367) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) b!7388434))

(declare-fun b!7388436 () Bool)

(declare-fun e!4422274 () Bool)

(declare-fun tp!2103112 () Bool)

(declare-fun tp!2103114 () Bool)

(assert (=> b!7388436 (= e!4422274 (and tp!2103112 tp!2103114))))

(declare-fun b!7388437 () Bool)

(declare-fun tp!2103113 () Bool)

(assert (=> b!7388437 (= e!4422274 tp!2103113)))

(assert (=> b!7388047 (= tp!2102950 e!4422274)))

(declare-fun b!7388438 () Bool)

(declare-fun tp!2103110 () Bool)

(declare-fun tp!2103111 () Bool)

(assert (=> b!7388438 (= e!4422274 (and tp!2103110 tp!2103111))))

(declare-fun b!7388435 () Bool)

(assert (=> b!7388435 (= e!4422274 tp_is_empty!48997)))

(assert (= (and b!7388047 ((_ is ElementMatch!19367) (h!78224 (t!386453 (exprs!8807 empty!3463))))) b!7388435))

(assert (= (and b!7388047 ((_ is Concat!28212) (h!78224 (t!386453 (exprs!8807 empty!3463))))) b!7388436))

(assert (= (and b!7388047 ((_ is Star!19367) (h!78224 (t!386453 (exprs!8807 empty!3463))))) b!7388437))

(assert (= (and b!7388047 ((_ is Union!19367) (h!78224 (t!386453 (exprs!8807 empty!3463))))) b!7388438))

(declare-fun b!7388439 () Bool)

(declare-fun e!4422275 () Bool)

(declare-fun tp!2103115 () Bool)

(declare-fun tp!2103116 () Bool)

(assert (=> b!7388439 (= e!4422275 (and tp!2103115 tp!2103116))))

(assert (=> b!7388047 (= tp!2102951 e!4422275)))

(assert (= (and b!7388047 ((_ is Cons!71776) (t!386453 (t!386453 (exprs!8807 empty!3463))))) b!7388439))

(declare-fun b!7388441 () Bool)

(declare-fun e!4422276 () Bool)

(declare-fun tp!2103119 () Bool)

(declare-fun tp!2103121 () Bool)

(assert (=> b!7388441 (= e!4422276 (and tp!2103119 tp!2103121))))

(declare-fun b!7388442 () Bool)

(declare-fun tp!2103120 () Bool)

(assert (=> b!7388442 (= e!4422276 tp!2103120)))

(assert (=> b!7388054 (= tp!2102960 e!4422276)))

(declare-fun b!7388443 () Bool)

(declare-fun tp!2103117 () Bool)

(declare-fun tp!2103118 () Bool)

(assert (=> b!7388443 (= e!4422276 (and tp!2103117 tp!2103118))))

(declare-fun b!7388440 () Bool)

(assert (=> b!7388440 (= e!4422276 tp_is_empty!48997)))

(assert (= (and b!7388054 ((_ is ElementMatch!19367) (h!78224 (t!386453 (exprs!8807 setElem!55928))))) b!7388440))

(assert (= (and b!7388054 ((_ is Concat!28212) (h!78224 (t!386453 (exprs!8807 setElem!55928))))) b!7388441))

(assert (= (and b!7388054 ((_ is Star!19367) (h!78224 (t!386453 (exprs!8807 setElem!55928))))) b!7388442))

(assert (= (and b!7388054 ((_ is Union!19367) (h!78224 (t!386453 (exprs!8807 setElem!55928))))) b!7388443))

(declare-fun b!7388444 () Bool)

(declare-fun e!4422277 () Bool)

(declare-fun tp!2103122 () Bool)

(declare-fun tp!2103123 () Bool)

(assert (=> b!7388444 (= e!4422277 (and tp!2103122 tp!2103123))))

(assert (=> b!7388054 (= tp!2102961 e!4422277)))

(assert (= (and b!7388054 ((_ is Cons!71776) (t!386453 (t!386453 (exprs!8807 setElem!55928))))) b!7388444))

(declare-fun b!7388446 () Bool)

(declare-fun e!4422278 () Bool)

(declare-fun tp!2103126 () Bool)

(declare-fun tp!2103128 () Bool)

(assert (=> b!7388446 (= e!4422278 (and tp!2103126 tp!2103128))))

(declare-fun b!7388447 () Bool)

(declare-fun tp!2103127 () Bool)

(assert (=> b!7388447 (= e!4422278 tp!2103127)))

(assert (=> b!7388039 (= tp!2102939 e!4422278)))

(declare-fun b!7388448 () Bool)

(declare-fun tp!2103124 () Bool)

(declare-fun tp!2103125 () Bool)

(assert (=> b!7388448 (= e!4422278 (and tp!2103124 tp!2103125))))

(declare-fun b!7388445 () Bool)

(assert (=> b!7388445 (= e!4422278 tp_is_empty!48997)))

(assert (= (and b!7388039 ((_ is ElementMatch!19367) (reg!19696 (h!78224 (exprs!8807 c!10532))))) b!7388445))

(assert (= (and b!7388039 ((_ is Concat!28212) (reg!19696 (h!78224 (exprs!8807 c!10532))))) b!7388446))

(assert (= (and b!7388039 ((_ is Star!19367) (reg!19696 (h!78224 (exprs!8807 c!10532))))) b!7388447))

(assert (= (and b!7388039 ((_ is Union!19367) (reg!19696 (h!78224 (exprs!8807 c!10532))))) b!7388448))

(declare-fun b!7388449 () Bool)

(declare-fun e!4422279 () Bool)

(declare-fun tp!2103129 () Bool)

(declare-fun tp!2103130 () Bool)

(assert (=> b!7388449 (= e!4422279 (and tp!2103129 tp!2103130))))

(assert (=> b!7388042 (= tp!2102943 e!4422279)))

(assert (= (and b!7388042 ((_ is Cons!71776) (exprs!8807 setElem!55936))) b!7388449))

(declare-fun b!7388451 () Bool)

(declare-fun e!4422280 () Bool)

(declare-fun tp!2103133 () Bool)

(declare-fun tp!2103135 () Bool)

(assert (=> b!7388451 (= e!4422280 (and tp!2103133 tp!2103135))))

(declare-fun b!7388452 () Bool)

(declare-fun tp!2103134 () Bool)

(assert (=> b!7388452 (= e!4422280 tp!2103134)))

(assert (=> b!7388052 (= tp!2102958 e!4422280)))

(declare-fun b!7388453 () Bool)

(declare-fun tp!2103131 () Bool)

(declare-fun tp!2103132 () Bool)

(assert (=> b!7388453 (= e!4422280 (and tp!2103131 tp!2103132))))

(declare-fun b!7388450 () Bool)

(assert (=> b!7388450 (= e!4422280 tp_is_empty!48997)))

(assert (= (and b!7388052 ((_ is ElementMatch!19367) (reg!19696 (h!78224 (exprs!8807 setElem!55928))))) b!7388450))

(assert (= (and b!7388052 ((_ is Concat!28212) (reg!19696 (h!78224 (exprs!8807 setElem!55928))))) b!7388451))

(assert (= (and b!7388052 ((_ is Star!19367) (reg!19696 (h!78224 (exprs!8807 setElem!55928))))) b!7388452))

(assert (= (and b!7388052 ((_ is Union!19367) (reg!19696 (h!78224 (exprs!8807 setElem!55928))))) b!7388453))

(declare-fun b!7388455 () Bool)

(declare-fun e!4422281 () Bool)

(declare-fun tp!2103138 () Bool)

(declare-fun tp!2103140 () Bool)

(assert (=> b!7388455 (= e!4422281 (and tp!2103138 tp!2103140))))

(declare-fun b!7388456 () Bool)

(declare-fun tp!2103139 () Bool)

(assert (=> b!7388456 (= e!4422281 tp!2103139)))

(assert (=> b!7388045 (= tp!2102948 e!4422281)))

(declare-fun b!7388457 () Bool)

(declare-fun tp!2103136 () Bool)

(declare-fun tp!2103137 () Bool)

(assert (=> b!7388457 (= e!4422281 (and tp!2103136 tp!2103137))))

(declare-fun b!7388454 () Bool)

(assert (=> b!7388454 (= e!4422281 tp_is_empty!48997)))

(assert (= (and b!7388045 ((_ is ElementMatch!19367) (reg!19696 (h!78224 (exprs!8807 empty!3463))))) b!7388454))

(assert (= (and b!7388045 ((_ is Concat!28212) (reg!19696 (h!78224 (exprs!8807 empty!3463))))) b!7388455))

(assert (= (and b!7388045 ((_ is Star!19367) (reg!19696 (h!78224 (exprs!8807 empty!3463))))) b!7388456))

(assert (= (and b!7388045 ((_ is Union!19367) (reg!19696 (h!78224 (exprs!8807 empty!3463))))) b!7388457))

(declare-fun b!7388458 () Bool)

(declare-fun e!4422282 () Bool)

(declare-fun tp!2103141 () Bool)

(declare-fun tp!2103142 () Bool)

(assert (=> b!7388458 (= e!4422282 (and tp!2103141 tp!2103142))))

(assert (=> b!7387993 (= tp!2102925 e!4422282)))

(assert (= (and b!7387993 ((_ is Cons!71776) (exprs!8807 _$3!516))) b!7388458))

(declare-fun b!7388460 () Bool)

(declare-fun e!4422283 () Bool)

(declare-fun tp!2103145 () Bool)

(declare-fun tp!2103147 () Bool)

(assert (=> b!7388460 (= e!4422283 (and tp!2103145 tp!2103147))))

(declare-fun b!7388461 () Bool)

(declare-fun tp!2103146 () Bool)

(assert (=> b!7388461 (= e!4422283 tp!2103146)))

(assert (=> b!7388044 (= tp!2102947 e!4422283)))

(declare-fun b!7388462 () Bool)

(declare-fun tp!2103143 () Bool)

(declare-fun tp!2103144 () Bool)

(assert (=> b!7388462 (= e!4422283 (and tp!2103143 tp!2103144))))

(declare-fun b!7388459 () Bool)

(assert (=> b!7388459 (= e!4422283 tp_is_empty!48997)))

(assert (= (and b!7388044 ((_ is ElementMatch!19367) (regOne!39246 (h!78224 (exprs!8807 empty!3463))))) b!7388459))

(assert (= (and b!7388044 ((_ is Concat!28212) (regOne!39246 (h!78224 (exprs!8807 empty!3463))))) b!7388460))

(assert (= (and b!7388044 ((_ is Star!19367) (regOne!39246 (h!78224 (exprs!8807 empty!3463))))) b!7388461))

(assert (= (and b!7388044 ((_ is Union!19367) (regOne!39246 (h!78224 (exprs!8807 empty!3463))))) b!7388462))

(declare-fun b!7388464 () Bool)

(declare-fun e!4422284 () Bool)

(declare-fun tp!2103150 () Bool)

(declare-fun tp!2103152 () Bool)

(assert (=> b!7388464 (= e!4422284 (and tp!2103150 tp!2103152))))

(declare-fun b!7388465 () Bool)

(declare-fun tp!2103151 () Bool)

(assert (=> b!7388465 (= e!4422284 tp!2103151)))

(assert (=> b!7388044 (= tp!2102949 e!4422284)))

(declare-fun b!7388466 () Bool)

(declare-fun tp!2103148 () Bool)

(declare-fun tp!2103149 () Bool)

(assert (=> b!7388466 (= e!4422284 (and tp!2103148 tp!2103149))))

(declare-fun b!7388463 () Bool)

(assert (=> b!7388463 (= e!4422284 tp_is_empty!48997)))

(assert (= (and b!7388044 ((_ is ElementMatch!19367) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))) b!7388463))

(assert (= (and b!7388044 ((_ is Concat!28212) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))) b!7388464))

(assert (= (and b!7388044 ((_ is Star!19367) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))) b!7388465))

(assert (= (and b!7388044 ((_ is Union!19367) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))) b!7388466))

(declare-fun b!7388468 () Bool)

(declare-fun e!4422285 () Bool)

(declare-fun tp!2103155 () Bool)

(declare-fun tp!2103157 () Bool)

(assert (=> b!7388468 (= e!4422285 (and tp!2103155 tp!2103157))))

(declare-fun b!7388469 () Bool)

(declare-fun tp!2103156 () Bool)

(assert (=> b!7388469 (= e!4422285 tp!2103156)))

(assert (=> b!7388046 (= tp!2102945 e!4422285)))

(declare-fun b!7388470 () Bool)

(declare-fun tp!2103153 () Bool)

(declare-fun tp!2103154 () Bool)

(assert (=> b!7388470 (= e!4422285 (and tp!2103153 tp!2103154))))

(declare-fun b!7388467 () Bool)

(assert (=> b!7388467 (= e!4422285 tp_is_empty!48997)))

(assert (= (and b!7388046 ((_ is ElementMatch!19367) (regOne!39247 (h!78224 (exprs!8807 empty!3463))))) b!7388467))

(assert (= (and b!7388046 ((_ is Concat!28212) (regOne!39247 (h!78224 (exprs!8807 empty!3463))))) b!7388468))

(assert (= (and b!7388046 ((_ is Star!19367) (regOne!39247 (h!78224 (exprs!8807 empty!3463))))) b!7388469))

(assert (= (and b!7388046 ((_ is Union!19367) (regOne!39247 (h!78224 (exprs!8807 empty!3463))))) b!7388470))

(declare-fun b!7388472 () Bool)

(declare-fun e!4422286 () Bool)

(declare-fun tp!2103160 () Bool)

(declare-fun tp!2103162 () Bool)

(assert (=> b!7388472 (= e!4422286 (and tp!2103160 tp!2103162))))

(declare-fun b!7388473 () Bool)

(declare-fun tp!2103161 () Bool)

(assert (=> b!7388473 (= e!4422286 tp!2103161)))

(assert (=> b!7388046 (= tp!2102946 e!4422286)))

(declare-fun b!7388474 () Bool)

(declare-fun tp!2103158 () Bool)

(declare-fun tp!2103159 () Bool)

(assert (=> b!7388474 (= e!4422286 (and tp!2103158 tp!2103159))))

(declare-fun b!7388471 () Bool)

(assert (=> b!7388471 (= e!4422286 tp_is_empty!48997)))

(assert (= (and b!7388046 ((_ is ElementMatch!19367) (regTwo!39247 (h!78224 (exprs!8807 empty!3463))))) b!7388471))

(assert (= (and b!7388046 ((_ is Concat!28212) (regTwo!39247 (h!78224 (exprs!8807 empty!3463))))) b!7388472))

(assert (= (and b!7388046 ((_ is Star!19367) (regTwo!39247 (h!78224 (exprs!8807 empty!3463))))) b!7388473))

(assert (= (and b!7388046 ((_ is Union!19367) (regTwo!39247 (h!78224 (exprs!8807 empty!3463))))) b!7388474))

(declare-fun b!7388476 () Bool)

(declare-fun e!4422287 () Bool)

(declare-fun tp!2103165 () Bool)

(declare-fun tp!2103167 () Bool)

(assert (=> b!7388476 (= e!4422287 (and tp!2103165 tp!2103167))))

(declare-fun b!7388477 () Bool)

(declare-fun tp!2103166 () Bool)

(assert (=> b!7388477 (= e!4422287 tp!2103166)))

(assert (=> b!7388049 (= tp!2102953 e!4422287)))

(declare-fun b!7388478 () Bool)

(declare-fun tp!2103163 () Bool)

(declare-fun tp!2103164 () Bool)

(assert (=> b!7388478 (= e!4422287 (and tp!2103163 tp!2103164))))

(declare-fun b!7388475 () Bool)

(assert (=> b!7388475 (= e!4422287 tp_is_empty!48997)))

(assert (= (and b!7388049 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 setElem!55934)))) b!7388475))

(assert (= (and b!7388049 ((_ is Concat!28212) (h!78224 (exprs!8807 setElem!55934)))) b!7388476))

(assert (= (and b!7388049 ((_ is Star!19367) (h!78224 (exprs!8807 setElem!55934)))) b!7388477))

(assert (= (and b!7388049 ((_ is Union!19367) (h!78224 (exprs!8807 setElem!55934)))) b!7388478))

(declare-fun b!7388479 () Bool)

(declare-fun e!4422288 () Bool)

(declare-fun tp!2103168 () Bool)

(declare-fun tp!2103169 () Bool)

(assert (=> b!7388479 (= e!4422288 (and tp!2103168 tp!2103169))))

(assert (=> b!7388049 (= tp!2102954 e!4422288)))

(assert (= (and b!7388049 ((_ is Cons!71776) (t!386453 (exprs!8807 setElem!55934)))) b!7388479))

(declare-fun b!7388481 () Bool)

(declare-fun e!4422289 () Bool)

(declare-fun tp!2103172 () Bool)

(declare-fun tp!2103174 () Bool)

(assert (=> b!7388481 (= e!4422289 (and tp!2103172 tp!2103174))))

(declare-fun b!7388482 () Bool)

(declare-fun tp!2103173 () Bool)

(assert (=> b!7388482 (= e!4422289 tp!2103173)))

(assert (=> b!7388041 (= tp!2102941 e!4422289)))

(declare-fun b!7388483 () Bool)

(declare-fun tp!2103170 () Bool)

(declare-fun tp!2103171 () Bool)

(assert (=> b!7388483 (= e!4422289 (and tp!2103170 tp!2103171))))

(declare-fun b!7388480 () Bool)

(assert (=> b!7388480 (= e!4422289 tp_is_empty!48997)))

(assert (= (and b!7388041 ((_ is ElementMatch!19367) (h!78224 (t!386453 (exprs!8807 c!10532))))) b!7388480))

(assert (= (and b!7388041 ((_ is Concat!28212) (h!78224 (t!386453 (exprs!8807 c!10532))))) b!7388481))

(assert (= (and b!7388041 ((_ is Star!19367) (h!78224 (t!386453 (exprs!8807 c!10532))))) b!7388482))

(assert (= (and b!7388041 ((_ is Union!19367) (h!78224 (t!386453 (exprs!8807 c!10532))))) b!7388483))

(declare-fun b!7388484 () Bool)

(declare-fun e!4422290 () Bool)

(declare-fun tp!2103175 () Bool)

(declare-fun tp!2103176 () Bool)

(assert (=> b!7388484 (= e!4422290 (and tp!2103175 tp!2103176))))

(assert (=> b!7388041 (= tp!2102942 e!4422290)))

(assert (= (and b!7388041 ((_ is Cons!71776) (t!386453 (t!386453 (exprs!8807 c!10532))))) b!7388484))

(declare-fun b!7388486 () Bool)

(declare-fun e!4422291 () Bool)

(declare-fun tp!2103179 () Bool)

(declare-fun tp!2103181 () Bool)

(assert (=> b!7388486 (= e!4422291 (and tp!2103179 tp!2103181))))

(declare-fun b!7388487 () Bool)

(declare-fun tp!2103180 () Bool)

(assert (=> b!7388487 (= e!4422291 tp!2103180)))

(assert (=> b!7388053 (= tp!2102955 e!4422291)))

(declare-fun b!7388488 () Bool)

(declare-fun tp!2103177 () Bool)

(declare-fun tp!2103178 () Bool)

(assert (=> b!7388488 (= e!4422291 (and tp!2103177 tp!2103178))))

(declare-fun b!7388485 () Bool)

(assert (=> b!7388485 (= e!4422291 tp_is_empty!48997)))

(assert (= (and b!7388053 ((_ is ElementMatch!19367) (regOne!39247 (h!78224 (exprs!8807 setElem!55928))))) b!7388485))

(assert (= (and b!7388053 ((_ is Concat!28212) (regOne!39247 (h!78224 (exprs!8807 setElem!55928))))) b!7388486))

(assert (= (and b!7388053 ((_ is Star!19367) (regOne!39247 (h!78224 (exprs!8807 setElem!55928))))) b!7388487))

(assert (= (and b!7388053 ((_ is Union!19367) (regOne!39247 (h!78224 (exprs!8807 setElem!55928))))) b!7388488))

(declare-fun b!7388490 () Bool)

(declare-fun e!4422292 () Bool)

(declare-fun tp!2103184 () Bool)

(declare-fun tp!2103186 () Bool)

(assert (=> b!7388490 (= e!4422292 (and tp!2103184 tp!2103186))))

(declare-fun b!7388491 () Bool)

(declare-fun tp!2103185 () Bool)

(assert (=> b!7388491 (= e!4422292 tp!2103185)))

(assert (=> b!7388053 (= tp!2102956 e!4422292)))

(declare-fun b!7388492 () Bool)

(declare-fun tp!2103182 () Bool)

(declare-fun tp!2103183 () Bool)

(assert (=> b!7388492 (= e!4422292 (and tp!2103182 tp!2103183))))

(declare-fun b!7388489 () Bool)

(assert (=> b!7388489 (= e!4422292 tp_is_empty!48997)))

(assert (= (and b!7388053 ((_ is ElementMatch!19367) (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))))) b!7388489))

(assert (= (and b!7388053 ((_ is Concat!28212) (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))))) b!7388490))

(assert (= (and b!7388053 ((_ is Star!19367) (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))))) b!7388491))

(assert (= (and b!7388053 ((_ is Union!19367) (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))))) b!7388492))

(declare-fun b!7388493 () Bool)

(declare-fun e!4422293 () Bool)

(declare-fun tp!2103187 () Bool)

(assert (=> b!7388493 (= e!4422293 (and tp_is_empty!48997 tp!2103187))))

(assert (=> b!7388048 (= tp!2102952 e!4422293)))

(assert (= (and b!7388048 ((_ is Cons!71777) (t!386454 (t!386454 (t!386454 s!7927))))) b!7388493))

(declare-fun b!7388495 () Bool)

(declare-fun e!4422294 () Bool)

(declare-fun tp!2103190 () Bool)

(declare-fun tp!2103192 () Bool)

(assert (=> b!7388495 (= e!4422294 (and tp!2103190 tp!2103192))))

(declare-fun b!7388496 () Bool)

(declare-fun tp!2103191 () Bool)

(assert (=> b!7388496 (= e!4422294 tp!2103191)))

(assert (=> b!7388040 (= tp!2102936 e!4422294)))

(declare-fun b!7388497 () Bool)

(declare-fun tp!2103188 () Bool)

(declare-fun tp!2103189 () Bool)

(assert (=> b!7388497 (= e!4422294 (and tp!2103188 tp!2103189))))

(declare-fun b!7388494 () Bool)

(assert (=> b!7388494 (= e!4422294 tp_is_empty!48997)))

(assert (= (and b!7388040 ((_ is ElementMatch!19367) (regOne!39247 (h!78224 (exprs!8807 c!10532))))) b!7388494))

(assert (= (and b!7388040 ((_ is Concat!28212) (regOne!39247 (h!78224 (exprs!8807 c!10532))))) b!7388495))

(assert (= (and b!7388040 ((_ is Star!19367) (regOne!39247 (h!78224 (exprs!8807 c!10532))))) b!7388496))

(assert (= (and b!7388040 ((_ is Union!19367) (regOne!39247 (h!78224 (exprs!8807 c!10532))))) b!7388497))

(declare-fun b!7388499 () Bool)

(declare-fun e!4422295 () Bool)

(declare-fun tp!2103195 () Bool)

(declare-fun tp!2103197 () Bool)

(assert (=> b!7388499 (= e!4422295 (and tp!2103195 tp!2103197))))

(declare-fun b!7388500 () Bool)

(declare-fun tp!2103196 () Bool)

(assert (=> b!7388500 (= e!4422295 tp!2103196)))

(assert (=> b!7388040 (= tp!2102937 e!4422295)))

(declare-fun b!7388501 () Bool)

(declare-fun tp!2103193 () Bool)

(declare-fun tp!2103194 () Bool)

(assert (=> b!7388501 (= e!4422295 (and tp!2103193 tp!2103194))))

(declare-fun b!7388498 () Bool)

(assert (=> b!7388498 (= e!4422295 tp_is_empty!48997)))

(assert (= (and b!7388040 ((_ is ElementMatch!19367) (regTwo!39247 (h!78224 (exprs!8807 c!10532))))) b!7388498))

(assert (= (and b!7388040 ((_ is Concat!28212) (regTwo!39247 (h!78224 (exprs!8807 c!10532))))) b!7388499))

(assert (= (and b!7388040 ((_ is Star!19367) (regTwo!39247 (h!78224 (exprs!8807 c!10532))))) b!7388500))

(assert (= (and b!7388040 ((_ is Union!19367) (regTwo!39247 (h!78224 (exprs!8807 c!10532))))) b!7388501))

(declare-fun condSetEmpty!55946 () Bool)

(assert (=> setNonEmpty!55936 (= condSetEmpty!55946 (= setRest!55936 ((as const (Array Context!16614 Bool)) false)))))

(declare-fun setRes!55946 () Bool)

(assert (=> setNonEmpty!55936 (= tp!2102944 setRes!55946)))

(declare-fun setIsEmpty!55946 () Bool)

(assert (=> setIsEmpty!55946 setRes!55946))

(declare-fun setNonEmpty!55946 () Bool)

(declare-fun e!4422296 () Bool)

(declare-fun setElem!55946 () Context!16614)

(declare-fun tp!2103199 () Bool)

(assert (=> setNonEmpty!55946 (= setRes!55946 (and tp!2103199 (inv!91778 setElem!55946) e!4422296))))

(declare-fun setRest!55946 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55946 (= setRest!55936 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55946 true) setRest!55946))))

(declare-fun b!7388502 () Bool)

(declare-fun tp!2103198 () Bool)

(assert (=> b!7388502 (= e!4422296 tp!2103198)))

(assert (= (and setNonEmpty!55936 condSetEmpty!55946) setIsEmpty!55946))

(assert (= (and setNonEmpty!55936 (not condSetEmpty!55946)) setNonEmpty!55946))

(assert (= setNonEmpty!55946 b!7388502))

(declare-fun m!8035496 () Bool)

(assert (=> setNonEmpty!55946 m!8035496))

(declare-fun b!7388504 () Bool)

(declare-fun e!4422297 () Bool)

(declare-fun tp!2103202 () Bool)

(declare-fun tp!2103204 () Bool)

(assert (=> b!7388504 (= e!4422297 (and tp!2103202 tp!2103204))))

(declare-fun b!7388505 () Bool)

(declare-fun tp!2103203 () Bool)

(assert (=> b!7388505 (= e!4422297 tp!2103203)))

(assert (=> b!7388051 (= tp!2102957 e!4422297)))

(declare-fun b!7388506 () Bool)

(declare-fun tp!2103200 () Bool)

(declare-fun tp!2103201 () Bool)

(assert (=> b!7388506 (= e!4422297 (and tp!2103200 tp!2103201))))

(declare-fun b!7388503 () Bool)

(assert (=> b!7388503 (= e!4422297 tp_is_empty!48997)))

(assert (= (and b!7388051 ((_ is ElementMatch!19367) (regOne!39246 (h!78224 (exprs!8807 setElem!55928))))) b!7388503))

(assert (= (and b!7388051 ((_ is Concat!28212) (regOne!39246 (h!78224 (exprs!8807 setElem!55928))))) b!7388504))

(assert (= (and b!7388051 ((_ is Star!19367) (regOne!39246 (h!78224 (exprs!8807 setElem!55928))))) b!7388505))

(assert (= (and b!7388051 ((_ is Union!19367) (regOne!39246 (h!78224 (exprs!8807 setElem!55928))))) b!7388506))

(declare-fun b!7388508 () Bool)

(declare-fun e!4422298 () Bool)

(declare-fun tp!2103207 () Bool)

(declare-fun tp!2103209 () Bool)

(assert (=> b!7388508 (= e!4422298 (and tp!2103207 tp!2103209))))

(declare-fun b!7388509 () Bool)

(declare-fun tp!2103208 () Bool)

(assert (=> b!7388509 (= e!4422298 tp!2103208)))

(assert (=> b!7388051 (= tp!2102959 e!4422298)))

(declare-fun b!7388510 () Bool)

(declare-fun tp!2103205 () Bool)

(declare-fun tp!2103206 () Bool)

(assert (=> b!7388510 (= e!4422298 (and tp!2103205 tp!2103206))))

(declare-fun b!7388507 () Bool)

(assert (=> b!7388507 (= e!4422298 tp_is_empty!48997)))

(assert (= (and b!7388051 ((_ is ElementMatch!19367) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))) b!7388507))

(assert (= (and b!7388051 ((_ is Concat!28212) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))) b!7388508))

(assert (= (and b!7388051 ((_ is Star!19367) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))) b!7388509))

(assert (= (and b!7388051 ((_ is Union!19367) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))) b!7388510))

(declare-fun b_lambda!285145 () Bool)

(assert (= b_lambda!285143 (or d!2287049 b_lambda!285145)))

(declare-fun bs!1922235 () Bool)

(declare-fun d!2287191 () Bool)

(assert (= bs!1922235 (and d!2287191 d!2287049)))

(assert (=> bs!1922235 (= (dynLambda!29569 lambda!459005 (h!78224 (exprs!8807 setElem!55934))) (validRegex!9944 (h!78224 (exprs!8807 setElem!55934))))))

(declare-fun m!8035498 () Bool)

(assert (=> bs!1922235 m!8035498))

(assert (=> b!7388403 d!2287191))

(declare-fun b_lambda!285147 () Bool)

(assert (= b_lambda!285137 (or d!2286993 b_lambda!285147)))

(declare-fun bs!1922236 () Bool)

(declare-fun d!2287193 () Bool)

(assert (= bs!1922236 (and d!2287193 d!2286993)))

(assert (=> bs!1922236 (= (dynLambda!29569 lambda!458993 (h!78224 (t!386453 (exprs!8807 empty!3463)))) (validRegex!9944 (h!78224 (t!386453 (exprs!8807 empty!3463)))))))

(declare-fun m!8035500 () Bool)

(assert (=> bs!1922236 m!8035500))

(assert (=> b!7388337 d!2287193))

(declare-fun b_lambda!285149 () Bool)

(assert (= b_lambda!285139 (or d!2286959 b_lambda!285149)))

(declare-fun bs!1922237 () Bool)

(declare-fun d!2287195 () Bool)

(assert (= bs!1922237 (and d!2287195 d!2286959)))

(assert (=> bs!1922237 (= (dynLambda!29569 lambda!458983 (h!78224 (t!386453 (exprs!8807 setElem!55928)))) (validRegex!9944 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))))

(declare-fun m!8035502 () Bool)

(assert (=> bs!1922237 m!8035502))

(assert (=> b!7388374 d!2287195))

(declare-fun b_lambda!285151 () Bool)

(assert (= b_lambda!285135 (or d!2287003 b_lambda!285151)))

(declare-fun bs!1922238 () Bool)

(declare-fun d!2287197 () Bool)

(assert (= bs!1922238 (and d!2287197 d!2287003)))

(assert (=> bs!1922238 (= (dynLambda!29569 lambda!458994 (h!78224 (t!386453 (exprs!8807 c!10532)))) (validRegex!9944 (h!78224 (t!386453 (exprs!8807 c!10532)))))))

(declare-fun m!8035504 () Bool)

(assert (=> bs!1922238 m!8035504))

(assert (=> b!7388335 d!2287197))

(declare-fun b_lambda!285153 () Bool)

(assert (= b_lambda!285141 (or d!2287043 b_lambda!285153)))

(declare-fun bs!1922239 () Bool)

(declare-fun d!2287199 () Bool)

(assert (= bs!1922239 (and d!2287199 d!2287043)))

(assert (=> bs!1922239 (= (dynLambda!29571 lambda!459004 (h!78227 (toList!11730 lt!2617738))) (not (dynLambda!29571 lambda!458972 (h!78227 (toList!11730 lt!2617738)))))))

(declare-fun b_lambda!285155 () Bool)

(assert (=> (not b_lambda!285155) (not bs!1922239)))

(declare-fun m!8035506 () Bool)

(assert (=> bs!1922239 m!8035506))

(assert (=> b!7388380 d!2287199))

(check-sat (not b!7388430) (not bm!680229) (not b!7388443) (not b!7388487) (not bs!1922236) (not bm!680197) (not setNonEmpty!55944) (not b!7388460) (not b!7388462) (not bm!680222) (not b_lambda!285145) (not b_lambda!285109) (not b!7388457) (not b!7388306) (not b!7388466) (not b!7388364) (not b!7388432) (not bm!680226) (not b!7388292) (not b!7388495) (not b!7388402) (not b!7388429) (not b!7388399) (not b!7388437) (not bm!680214) (not b!7388381) (not b!7388332) (not d!2287159) (not b!7388426) (not b!7388510) (not b!7388468) (not d!2287161) (not b!7388504) (not b!7388469) (not b!7388434) (not b!7388453) (not b_lambda!285107) (not bm!680223) (not b!7388338) (not b!7388478) (not bm!680203) (not bm!680218) (not bm!680227) (not bm!680234) (not b!7388296) (not b!7388492) (not b!7388452) (not d!2287171) (not d!2287179) (not b!7388482) (not b!7388509) (not b_lambda!285153) (not b!7388375) (not bs!1922238) (not b!7388392) (not b!7388444) tp_is_empty!48997 (not b!7388436) (not b!7388496) (not b!7388455) (not b!7388458) (not b_lambda!285147) (not b_lambda!285111) (not b!7388499) (not b!7388501) (not b!7388484) (not bm!680216) (not b_lambda!285155) (not b_lambda!285149) (not b!7388354) (not b!7388449) (not b!7388486) (not b!7388404) (not b!7388500) (not b!7388441) (not b!7388355) (not b!7388385) (not b!7388476) (not setNonEmpty!55946) (not b!7388433) (not bm!680204) (not b!7388505) (not d!2287181) (not b!7388493) (not bm!680219) (not b!7388456) (not b!7388502) (not bs!1922235) (not b!7388506) (not d!2287177) (not bm!680207) (not b!7388348) (not d!2287163) (not b!7388472) (not b!7388474) (not b!7388465) (not b!7388479) (not b!7388491) (not b!7388483) (not b!7388497) (not d!2287189) (not b!7388371) (not bm!680201) (not bs!1922237) (not b!7388447) (not b!7388473) (not b!7388438) (not b!7388336) (not b!7388362) (not b!7388481) (not b!7388490) (not setNonEmpty!55945) (not b_lambda!285151) (not b!7388451) (not bm!680225) (not b!7388428) (not b!7388470) (not d!2287153) (not b!7388442) (not b!7388508) (not bm!680235) (not b!7388363) (not bm!680198) (not b!7388439) (not b!7388464) (not b!7388461) (not b!7388382) (not b!7388477) (not b!7388448) (not b!7388446) (not b!7388488))
(check-sat)
(get-model)

(declare-fun b_lambda!285159 () Bool)

(assert (= b_lambda!285155 (or b!7387801 b_lambda!285159)))

(declare-fun bs!1922241 () Bool)

(declare-fun d!2287203 () Bool)

(assert (= bs!1922241 (and d!2287203 b!7387801)))

(assert (=> bs!1922241 (= (dynLambda!29571 lambda!458972 (h!78227 (toList!11730 lt!2617738))) (not (= (h!78227 (toList!11730 lt!2617738)) lt!2617739)))))

(assert (=> bs!1922239 d!2287203))

(check-sat (not b!7388430) (not bm!680229) (not b!7388443) (not b!7388487) (not bs!1922236) (not bm!680197) (not setNonEmpty!55944) (not b!7388460) (not b!7388462) (not bm!680222) (not b_lambda!285145) (not b_lambda!285109) (not b!7388457) (not b!7388306) (not b!7388466) (not b!7388364) (not b!7388432) (not bm!680226) (not b!7388292) (not b!7388495) (not b!7388402) (not b!7388429) (not b!7388399) (not b!7388437) (not bm!680214) (not b!7388381) (not b!7388332) (not d!2287159) (not b!7388426) (not b!7388510) (not b!7388468) (not d!2287161) (not b!7388504) (not b!7388469) (not b!7388434) (not b!7388453) (not b_lambda!285107) (not bm!680223) (not b!7388338) (not b!7388478) (not bm!680203) (not bm!680218) (not bm!680227) (not bm!680234) (not b!7388296) (not b!7388492) (not b!7388452) (not d!2287171) (not d!2287179) (not b!7388482) (not b!7388509) (not b_lambda!285159) (not b_lambda!285153) (not b!7388375) (not bs!1922238) (not b!7388392) (not b!7388444) tp_is_empty!48997 (not b!7388436) (not b!7388496) (not b!7388455) (not b!7388458) (not b_lambda!285147) (not b_lambda!285111) (not b!7388499) (not b!7388501) (not b!7388484) (not bm!680216) (not b_lambda!285149) (not b!7388354) (not b!7388449) (not b!7388486) (not b!7388404) (not b!7388500) (not b!7388441) (not b!7388355) (not b!7388385) (not b!7388476) (not setNonEmpty!55946) (not b!7388433) (not bm!680204) (not b!7388505) (not d!2287181) (not b!7388493) (not bm!680219) (not b!7388456) (not b!7388502) (not bs!1922235) (not b!7388506) (not d!2287177) (not bm!680207) (not b!7388348) (not d!2287163) (not b!7388472) (not b!7388474) (not b!7388465) (not b!7388479) (not b!7388491) (not b!7388483) (not b!7388497) (not d!2287189) (not b!7388371) (not bm!680201) (not bs!1922237) (not b!7388447) (not b!7388473) (not b!7388438) (not b!7388336) (not b!7388362) (not b!7388481) (not b!7388490) (not setNonEmpty!55945) (not b_lambda!285151) (not b!7388451) (not bm!680225) (not b!7388428) (not b!7388470) (not d!2287153) (not b!7388442) (not b!7388508) (not bm!680235) (not b!7388363) (not bm!680198) (not b!7388439) (not b!7388464) (not b!7388461) (not b!7388382) (not b!7388477) (not b!7388448) (not b!7388446) (not b!7388488))
(check-sat)
(get-model)

(declare-fun d!2287243 () Bool)

(declare-fun res!2979235 () Bool)

(declare-fun e!4422369 () Bool)

(assert (=> d!2287243 (=> res!2979235 e!4422369)))

(assert (=> d!2287243 (= res!2979235 ((_ is Nil!71779) (t!386456 (toList!11730 lt!2617738))))))

(assert (=> d!2287243 (= (forall!18153 (t!386456 (toList!11730 lt!2617738)) lambda!459004) e!4422369)))

(declare-fun b!7388605 () Bool)

(declare-fun e!4422370 () Bool)

(assert (=> b!7388605 (= e!4422369 e!4422370)))

(declare-fun res!2979236 () Bool)

(assert (=> b!7388605 (=> (not res!2979236) (not e!4422370))))

(assert (=> b!7388605 (= res!2979236 (dynLambda!29571 lambda!459004 (h!78227 (t!386456 (toList!11730 lt!2617738)))))))

(declare-fun b!7388606 () Bool)

(assert (=> b!7388606 (= e!4422370 (forall!18153 (t!386456 (t!386456 (toList!11730 lt!2617738))) lambda!459004))))

(assert (= (and d!2287243 (not res!2979235)) b!7388605))

(assert (= (and b!7388605 res!2979236) b!7388606))

(declare-fun b_lambda!285165 () Bool)

(assert (=> (not b_lambda!285165) (not b!7388605)))

(declare-fun m!8035594 () Bool)

(assert (=> b!7388605 m!8035594))

(declare-fun m!8035598 () Bool)

(assert (=> b!7388606 m!8035598))

(assert (=> b!7388381 d!2287243))

(declare-fun d!2287245 () Bool)

(assert (=> d!2287245 (= (nullable!8421 (reg!19696 (h!78224 (exprs!8807 empty!3463)))) (nullableFct!3386 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))))

(declare-fun bs!1922253 () Bool)

(assert (= bs!1922253 d!2287245))

(declare-fun m!8035602 () Bool)

(assert (=> bs!1922253 m!8035602))

(assert (=> b!7388399 d!2287245))

(declare-fun b!7388609 () Bool)

(declare-fun e!4422377 () (InoxSet Context!16614))

(declare-fun call!680276 () (InoxSet Context!16614))

(assert (=> b!7388609 (= e!4422377 call!680276)))

(declare-fun b!7388610 () Bool)

(declare-fun e!4422373 () (InoxSet Context!16614))

(declare-fun e!4422376 () (InoxSet Context!16614))

(assert (=> b!7388610 (= e!4422373 e!4422376)))

(declare-fun c!1373201 () Bool)

(assert (=> b!7388610 (= c!1373201 ((_ is Union!19367) (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))))

(declare-fun b!7388611 () Bool)

(declare-fun e!4422374 () (InoxSet Context!16614))

(assert (=> b!7388611 (= e!4422374 call!680276)))

(declare-fun b!7388612 () Bool)

(declare-fun e!4422372 () (InoxSet Context!16614))

(declare-fun call!680275 () (InoxSet Context!16614))

(declare-fun call!680277 () (InoxSet Context!16614))

(assert (=> b!7388612 (= e!4422372 ((_ map or) call!680275 call!680277))))

(declare-fun b!7388613 () Bool)

(declare-fun call!680273 () (InoxSet Context!16614))

(assert (=> b!7388613 (= e!4422376 ((_ map or) call!680275 call!680273))))

(declare-fun b!7388614 () Bool)

(declare-fun c!1373204 () Bool)

(declare-fun e!4422375 () Bool)

(assert (=> b!7388614 (= c!1373204 e!4422375)))

(declare-fun res!2979237 () Bool)

(assert (=> b!7388614 (=> (not res!2979237) (not e!4422375))))

(assert (=> b!7388614 (= res!2979237 ((_ is Concat!28212) (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))))

(assert (=> b!7388614 (= e!4422376 e!4422372)))

(declare-fun bm!680268 () Bool)

(assert (=> bm!680268 (= call!680277 call!680273)))

(declare-fun call!680278 () List!71900)

(declare-fun c!1373202 () Bool)

(declare-fun bm!680270 () Bool)

(assert (=> bm!680270 (= call!680273 (derivationStepZipperDown!3173 (ite c!1373201 (regTwo!39247 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))) (ite c!1373204 (regTwo!39246 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))) (ite c!1373202 (regOne!39246 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))) (reg!19696 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))))) (ite (or c!1373201 c!1373204) (ite (or c!1373143 c!1373146) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680206)) (Context!16615 call!680278)) lt!2617736))))

(declare-fun b!7388615 () Bool)

(assert (=> b!7388615 (= e!4422374 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680271 () Bool)

(assert (=> bm!680271 (= call!680276 call!680277)))

(declare-fun b!7388616 () Bool)

(declare-fun c!1373205 () Bool)

(assert (=> b!7388616 (= c!1373205 ((_ is Star!19367) (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))))

(assert (=> b!7388616 (= e!4422377 e!4422374)))

(declare-fun b!7388617 () Bool)

(assert (=> b!7388617 (= e!4422372 e!4422377)))

(assert (=> b!7388617 (= c!1373202 ((_ is Concat!28212) (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))))

(declare-fun bm!680272 () Bool)

(declare-fun call!680274 () List!71900)

(assert (=> bm!680272 (= call!680278 call!680274)))

(declare-fun bm!680269 () Bool)

(assert (=> bm!680269 (= call!680275 (derivationStepZipperDown!3173 (ite c!1373201 (regOne!39247 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))) (regOne!39246 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))) (ite c!1373201 (ite (or c!1373143 c!1373146) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680206)) (Context!16615 call!680274)) lt!2617736))))

(declare-fun c!1373203 () Bool)

(declare-fun d!2287249 () Bool)

(assert (=> d!2287249 (= c!1373203 (and ((_ is ElementMatch!19367) (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))) (= (c!1373059 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))) lt!2617736)))))

(assert (=> d!2287249 (= (derivationStepZipperDown!3173 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))) (ite (or c!1373143 c!1373146) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680206)) lt!2617736) e!4422373)))

(declare-fun b!7388618 () Bool)

(assert (=> b!7388618 (= e!4422375 (nullable!8421 (regOne!39246 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))))))

(declare-fun bm!680273 () Bool)

(assert (=> bm!680273 (= call!680274 ($colon$colon!3324 (exprs!8807 (ite (or c!1373143 c!1373146) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680206))) (ite (or c!1373204 c!1373202) (regTwo!39246 (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))) (ite c!1373143 (regTwo!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373146 (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373144 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (reg!19696 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))))))

(declare-fun b!7388619 () Bool)

(assert (=> b!7388619 (= e!4422373 (store ((as const (Array Context!16614 Bool)) false) (ite (or c!1373143 c!1373146) (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680206)) true))))

(assert (= (and d!2287249 c!1373203) b!7388619))

(assert (= (and d!2287249 (not c!1373203)) b!7388610))

(assert (= (and b!7388610 c!1373201) b!7388613))

(assert (= (and b!7388610 (not c!1373201)) b!7388614))

(assert (= (and b!7388614 res!2979237) b!7388618))

(assert (= (and b!7388614 c!1373204) b!7388612))

(assert (= (and b!7388614 (not c!1373204)) b!7388617))

(assert (= (and b!7388617 c!1373202) b!7388609))

(assert (= (and b!7388617 (not c!1373202)) b!7388616))

(assert (= (and b!7388616 c!1373205) b!7388611))

(assert (= (and b!7388616 (not c!1373205)) b!7388615))

(assert (= (or b!7388609 b!7388611) bm!680272))

(assert (= (or b!7388609 b!7388611) bm!680271))

(assert (= (or b!7388612 bm!680272) bm!680273))

(assert (= (or b!7388612 bm!680271) bm!680268))

(assert (= (or b!7388613 b!7388612) bm!680269))

(assert (= (or b!7388613 bm!680268) bm!680270))

(declare-fun m!8035616 () Bool)

(assert (=> b!7388618 m!8035616))

(declare-fun m!8035618 () Bool)

(assert (=> bm!680270 m!8035618))

(declare-fun m!8035620 () Bool)

(assert (=> bm!680273 m!8035620))

(declare-fun m!8035624 () Bool)

(assert (=> bm!680269 m!8035624))

(declare-fun m!8035628 () Bool)

(assert (=> b!7388619 m!8035628))

(assert (=> bm!680198 d!2287249))

(declare-fun b!7388627 () Bool)

(declare-fun e!4422389 () Bool)

(declare-fun e!4422391 () Bool)

(assert (=> b!7388627 (= e!4422389 e!4422391)))

(declare-fun c!1373207 () Bool)

(assert (=> b!7388627 (= c!1373207 ((_ is Union!19367) (h!78224 (t!386453 (exprs!8807 empty!3463)))))))

(declare-fun d!2287257 () Bool)

(declare-fun res!2979246 () Bool)

(declare-fun e!4422387 () Bool)

(assert (=> d!2287257 (=> res!2979246 e!4422387)))

(assert (=> d!2287257 (= res!2979246 ((_ is ElementMatch!19367) (h!78224 (t!386453 (exprs!8807 empty!3463)))))))

(assert (=> d!2287257 (= (validRegex!9944 (h!78224 (t!386453 (exprs!8807 empty!3463)))) e!4422387)))

(declare-fun b!7388628 () Bool)

(assert (=> b!7388628 (= e!4422387 e!4422389)))

(declare-fun c!1373206 () Bool)

(assert (=> b!7388628 (= c!1373206 ((_ is Star!19367) (h!78224 (t!386453 (exprs!8807 empty!3463)))))))

(declare-fun bm!680274 () Bool)

(declare-fun call!680279 () Bool)

(assert (=> bm!680274 (= call!680279 (validRegex!9944 (ite c!1373207 (regTwo!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))))))

(declare-fun b!7388629 () Bool)

(declare-fun res!2979245 () Bool)

(declare-fun e!4422390 () Bool)

(assert (=> b!7388629 (=> res!2979245 e!4422390)))

(assert (=> b!7388629 (= res!2979245 (not ((_ is Concat!28212) (h!78224 (t!386453 (exprs!8807 empty!3463))))))))

(assert (=> b!7388629 (= e!4422391 e!4422390)))

(declare-fun b!7388630 () Bool)

(declare-fun e!4422388 () Bool)

(assert (=> b!7388630 (= e!4422390 e!4422388)))

(declare-fun res!2979248 () Bool)

(assert (=> b!7388630 (=> (not res!2979248) (not e!4422388))))

(declare-fun call!680280 () Bool)

(assert (=> b!7388630 (= res!2979248 call!680280)))

(declare-fun b!7388631 () Bool)

(declare-fun e!4422386 () Bool)

(assert (=> b!7388631 (= e!4422386 call!680279)))

(declare-fun b!7388632 () Bool)

(declare-fun res!2979247 () Bool)

(assert (=> b!7388632 (=> (not res!2979247) (not e!4422386))))

(assert (=> b!7388632 (= res!2979247 call!680280)))

(assert (=> b!7388632 (= e!4422391 e!4422386)))

(declare-fun b!7388633 () Bool)

(declare-fun e!4422385 () Bool)

(assert (=> b!7388633 (= e!4422389 e!4422385)))

(declare-fun res!2979244 () Bool)

(assert (=> b!7388633 (= res!2979244 (not (nullable!8421 (reg!19696 (h!78224 (t!386453 (exprs!8807 empty!3463)))))))))

(assert (=> b!7388633 (=> (not res!2979244) (not e!4422385))))

(declare-fun bm!680275 () Bool)

(declare-fun call!680281 () Bool)

(assert (=> bm!680275 (= call!680280 call!680281)))

(declare-fun b!7388634 () Bool)

(assert (=> b!7388634 (= e!4422385 call!680281)))

(declare-fun bm!680276 () Bool)

(assert (=> bm!680276 (= call!680281 (validRegex!9944 (ite c!1373206 (reg!19696 (h!78224 (t!386453 (exprs!8807 empty!3463)))) (ite c!1373207 (regOne!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))) (regOne!39246 (h!78224 (t!386453 (exprs!8807 empty!3463))))))))))

(declare-fun b!7388635 () Bool)

(assert (=> b!7388635 (= e!4422388 call!680279)))

(assert (= (and d!2287257 (not res!2979246)) b!7388628))

(assert (= (and b!7388628 c!1373206) b!7388633))

(assert (= (and b!7388628 (not c!1373206)) b!7388627))

(assert (= (and b!7388633 res!2979244) b!7388634))

(assert (= (and b!7388627 c!1373207) b!7388632))

(assert (= (and b!7388627 (not c!1373207)) b!7388629))

(assert (= (and b!7388632 res!2979247) b!7388631))

(assert (= (and b!7388629 (not res!2979245)) b!7388630))

(assert (= (and b!7388630 res!2979248) b!7388635))

(assert (= (or b!7388632 b!7388630) bm!680275))

(assert (= (or b!7388631 b!7388635) bm!680274))

(assert (= (or b!7388634 bm!680275) bm!680276))

(declare-fun m!8035632 () Bool)

(assert (=> bm!680274 m!8035632))

(declare-fun m!8035634 () Bool)

(assert (=> b!7388633 m!8035634))

(declare-fun m!8035636 () Bool)

(assert (=> bm!680276 m!8035636))

(assert (=> bs!1922236 d!2287257))

(declare-fun d!2287261 () Bool)

(declare-fun res!2979250 () Bool)

(declare-fun e!4422398 () Bool)

(assert (=> d!2287261 (=> res!2979250 e!4422398)))

(assert (=> d!2287261 (= res!2979250 ((_ is Nil!71776) (exprs!8807 setElem!55936)))))

(assert (=> d!2287261 (= (forall!18151 (exprs!8807 setElem!55936) lambda!459014) e!4422398)))

(declare-fun b!7388647 () Bool)

(declare-fun e!4422399 () Bool)

(assert (=> b!7388647 (= e!4422398 e!4422399)))

(declare-fun res!2979251 () Bool)

(assert (=> b!7388647 (=> (not res!2979251) (not e!4422399))))

(assert (=> b!7388647 (= res!2979251 (dynLambda!29569 lambda!459014 (h!78224 (exprs!8807 setElem!55936))))))

(declare-fun b!7388648 () Bool)

(assert (=> b!7388648 (= e!4422399 (forall!18151 (t!386453 (exprs!8807 setElem!55936)) lambda!459014))))

(assert (= (and d!2287261 (not res!2979250)) b!7388647))

(assert (= (and b!7388647 res!2979251) b!7388648))

(declare-fun b_lambda!285169 () Bool)

(assert (=> (not b_lambda!285169) (not b!7388647)))

(declare-fun m!8035638 () Bool)

(assert (=> b!7388647 m!8035638))

(declare-fun m!8035640 () Bool)

(assert (=> b!7388648 m!8035640))

(assert (=> d!2287189 d!2287261))

(declare-fun d!2287263 () Bool)

(assert (=> d!2287263 (= (nullable!8421 (ite c!1373175 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (nullableFct!3386 (ite c!1373175 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))

(declare-fun bs!1922254 () Bool)

(assert (= bs!1922254 d!2287263))

(declare-fun m!8035642 () Bool)

(assert (=> bs!1922254 m!8035642))

(assert (=> bm!680235 d!2287263))

(declare-fun d!2287265 () Bool)

(assert (=> d!2287265 (= (nullable!8421 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (nullableFct!3386 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))

(declare-fun bs!1922255 () Bool)

(assert (= bs!1922255 d!2287265))

(declare-fun m!8035644 () Bool)

(assert (=> bs!1922255 m!8035644))

(assert (=> b!7388385 d!2287265))

(declare-fun bm!680283 () Bool)

(declare-fun call!680288 () Bool)

(declare-fun c!1373213 () Bool)

(assert (=> bm!680283 (= call!680288 (nullable!8421 (ite c!1373213 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(declare-fun b!7388649 () Bool)

(declare-fun e!4422402 () Bool)

(declare-fun e!4422404 () Bool)

(assert (=> b!7388649 (= e!4422402 e!4422404)))

(declare-fun res!2979252 () Bool)

(assert (=> b!7388649 (=> res!2979252 e!4422404)))

(assert (=> b!7388649 (= res!2979252 ((_ is Star!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(declare-fun b!7388650 () Bool)

(declare-fun e!4422403 () Bool)

(assert (=> b!7388650 (= e!4422404 e!4422403)))

(assert (=> b!7388650 (= c!1373213 ((_ is Union!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(declare-fun d!2287267 () Bool)

(declare-fun res!2979256 () Bool)

(declare-fun e!4422405 () Bool)

(assert (=> d!2287267 (=> res!2979256 e!4422405)))

(assert (=> d!2287267 (= res!2979256 ((_ is EmptyExpr!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))

(assert (=> d!2287267 (= (nullableFct!3386 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) e!4422405)))

(declare-fun b!7388651 () Bool)

(declare-fun e!4422400 () Bool)

(declare-fun call!680289 () Bool)

(assert (=> b!7388651 (= e!4422400 call!680289)))

(declare-fun b!7388652 () Bool)

(assert (=> b!7388652 (= e!4422403 e!4422400)))

(declare-fun res!2979255 () Bool)

(assert (=> b!7388652 (= res!2979255 call!680288)))

(assert (=> b!7388652 (=> res!2979255 e!4422400)))

(declare-fun b!7388653 () Bool)

(assert (=> b!7388653 (= e!4422405 e!4422402)))

(declare-fun res!2979254 () Bool)

(assert (=> b!7388653 (=> (not res!2979254) (not e!4422402))))

(assert (=> b!7388653 (= res!2979254 (and (not ((_ is EmptyLang!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))) (not ((_ is ElementMatch!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(declare-fun b!7388654 () Bool)

(declare-fun e!4422401 () Bool)

(assert (=> b!7388654 (= e!4422401 call!680288)))

(declare-fun b!7388655 () Bool)

(assert (=> b!7388655 (= e!4422403 e!4422401)))

(declare-fun res!2979253 () Bool)

(assert (=> b!7388655 (= res!2979253 call!680289)))

(assert (=> b!7388655 (=> (not res!2979253) (not e!4422401))))

(declare-fun bm!680284 () Bool)

(assert (=> bm!680284 (= call!680289 (nullable!8421 (ite c!1373213 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(assert (= (and d!2287267 (not res!2979256)) b!7388653))

(assert (= (and b!7388653 res!2979254) b!7388649))

(assert (= (and b!7388649 (not res!2979252)) b!7388650))

(assert (= (and b!7388650 c!1373213) b!7388652))

(assert (= (and b!7388650 (not c!1373213)) b!7388655))

(assert (= (and b!7388652 (not res!2979255)) b!7388651))

(assert (= (and b!7388655 res!2979253) b!7388654))

(assert (= (or b!7388651 b!7388655) bm!680284))

(assert (= (or b!7388652 b!7388654) bm!680283))

(declare-fun m!8035646 () Bool)

(assert (=> bm!680283 m!8035646))

(declare-fun m!8035648 () Bool)

(assert (=> bm!680284 m!8035648))

(assert (=> d!2287163 d!2287267))

(declare-fun d!2287269 () Bool)

(declare-fun c!1373214 () Bool)

(assert (=> d!2287269 (= c!1373214 ((_ is Nil!71779) (t!386456 lt!2617758)))))

(declare-fun e!4422406 () (InoxSet Context!16614))

(assert (=> d!2287269 (= (content!15205 (t!386456 lt!2617758)) e!4422406)))

(declare-fun b!7388656 () Bool)

(assert (=> b!7388656 (= e!4422406 ((as const (Array Context!16614 Bool)) false))))

(declare-fun b!7388657 () Bool)

(assert (=> b!7388657 (= e!4422406 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) (h!78227 (t!386456 lt!2617758)) true) (content!15205 (t!386456 (t!386456 lt!2617758)))))))

(assert (= (and d!2287269 c!1373214) b!7388656))

(assert (= (and d!2287269 (not c!1373214)) b!7388657))

(declare-fun m!8035650 () Bool)

(assert (=> b!7388657 m!8035650))

(declare-fun m!8035652 () Bool)

(assert (=> b!7388657 m!8035652))

(assert (=> b!7388392 d!2287269))

(assert (=> d!2287181 d!2287177))

(assert (=> d!2287181 d!2287179))

(declare-fun d!2287271 () Bool)

(assert (=> d!2287271 (= ($colon$colon!3324 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))) (ite (or c!1373162 c!1373160) (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))) (Cons!71776 (ite (or c!1373162 c!1373160) (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(assert (=> bm!680222 d!2287271))

(declare-fun d!2287273 () Bool)

(declare-fun res!2979257 () Bool)

(declare-fun e!4422407 () Bool)

(assert (=> d!2287273 (=> res!2979257 e!4422407)))

(assert (=> d!2287273 (= res!2979257 ((_ is Nil!71776) (t!386453 (t!386453 (exprs!8807 empty!3463)))))))

(assert (=> d!2287273 (= (forall!18151 (t!386453 (t!386453 (exprs!8807 empty!3463))) lambda!458993) e!4422407)))

(declare-fun b!7388658 () Bool)

(declare-fun e!4422408 () Bool)

(assert (=> b!7388658 (= e!4422407 e!4422408)))

(declare-fun res!2979258 () Bool)

(assert (=> b!7388658 (=> (not res!2979258) (not e!4422408))))

(assert (=> b!7388658 (= res!2979258 (dynLambda!29569 lambda!458993 (h!78224 (t!386453 (t!386453 (exprs!8807 empty!3463))))))))

(declare-fun b!7388659 () Bool)

(assert (=> b!7388659 (= e!4422408 (forall!18151 (t!386453 (t!386453 (t!386453 (exprs!8807 empty!3463)))) lambda!458993))))

(assert (= (and d!2287273 (not res!2979257)) b!7388658))

(assert (= (and b!7388658 res!2979258) b!7388659))

(declare-fun b_lambda!285171 () Bool)

(assert (=> (not b_lambda!285171) (not b!7388658)))

(declare-fun m!8035658 () Bool)

(assert (=> b!7388658 m!8035658))

(declare-fun m!8035660 () Bool)

(assert (=> b!7388659 m!8035660))

(assert (=> b!7388338 d!2287273))

(declare-fun d!2287275 () Bool)

(assert (=> d!2287275 (= (nullable!8421 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))) (nullableFct!3386 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))))

(declare-fun bs!1922256 () Bool)

(assert (= bs!1922256 d!2287275))

(declare-fun m!8035664 () Bool)

(assert (=> bs!1922256 m!8035664))

(assert (=> b!7388371 d!2287275))

(declare-fun d!2287277 () Bool)

(assert (=> d!2287277 (= (nullable!8421 (ite c!1373175 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) (nullableFct!3386 (ite c!1373175 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))))))

(declare-fun bs!1922257 () Bool)

(assert (= bs!1922257 d!2287277))

(declare-fun m!8035666 () Bool)

(assert (=> bs!1922257 m!8035666))

(assert (=> bm!680234 d!2287277))

(declare-fun d!2287279 () Bool)

(assert (=> d!2287279 (= ($colon$colon!3324 (exprs!8807 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160))) (ite (or c!1373151 c!1373149) (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))) (Cons!71776 (ite (or c!1373151 c!1373149) (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (exprs!8807 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)))))))

(assert (=> bm!680207 d!2287279))

(declare-fun d!2287281 () Bool)

(declare-fun res!2979259 () Bool)

(declare-fun e!4422409 () Bool)

(assert (=> d!2287281 (=> res!2979259 e!4422409)))

(assert (=> d!2287281 (= res!2979259 ((_ is Nil!71779) res!2979148))))

(assert (=> d!2287281 (= (noDuplicate!3093 res!2979148) e!4422409)))

(declare-fun b!7388660 () Bool)

(declare-fun e!4422410 () Bool)

(assert (=> b!7388660 (= e!4422409 e!4422410)))

(declare-fun res!2979260 () Bool)

(assert (=> b!7388660 (=> (not res!2979260) (not e!4422410))))

(assert (=> b!7388660 (= res!2979260 (not (contains!20837 (t!386456 res!2979148) (h!78227 res!2979148))))))

(declare-fun b!7388661 () Bool)

(assert (=> b!7388661 (= e!4422410 (noDuplicate!3093 (t!386456 res!2979148)))))

(assert (= (and d!2287281 (not res!2979259)) b!7388660))

(assert (= (and b!7388660 res!2979260) b!7388661))

(declare-fun m!8035672 () Bool)

(assert (=> b!7388660 m!8035672))

(declare-fun m!8035674 () Bool)

(assert (=> b!7388661 m!8035674))

(assert (=> d!2287153 d!2287281))

(declare-fun b!7388662 () Bool)

(declare-fun e!4422415 () Bool)

(declare-fun e!4422418 () Bool)

(assert (=> b!7388662 (= e!4422415 e!4422418)))

(declare-fun c!1373217 () Bool)

(assert (=> b!7388662 (= c!1373217 ((_ is Union!19367) (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(declare-fun d!2287283 () Bool)

(declare-fun res!2979263 () Bool)

(declare-fun e!4422413 () Bool)

(assert (=> d!2287283 (=> res!2979263 e!4422413)))

(assert (=> d!2287283 (= res!2979263 ((_ is ElementMatch!19367) (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(assert (=> d!2287283 (= (validRegex!9944 (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) e!4422413)))

(declare-fun b!7388663 () Bool)

(assert (=> b!7388663 (= e!4422413 e!4422415)))

(declare-fun c!1373215 () Bool)

(assert (=> b!7388663 (= c!1373215 ((_ is Star!19367) (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(declare-fun call!680290 () Bool)

(declare-fun bm!680285 () Bool)

(assert (=> bm!680285 (= call!680290 (validRegex!9944 (ite c!1373217 (regTwo!39247 (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) (regTwo!39246 (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))))

(declare-fun b!7388664 () Bool)

(declare-fun res!2979262 () Bool)

(declare-fun e!4422417 () Bool)

(assert (=> b!7388664 (=> res!2979262 e!4422417)))

(assert (=> b!7388664 (= res!2979262 (not ((_ is Concat!28212) (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))

(assert (=> b!7388664 (= e!4422418 e!4422417)))

(declare-fun b!7388665 () Bool)

(declare-fun e!4422414 () Bool)

(assert (=> b!7388665 (= e!4422417 e!4422414)))

(declare-fun res!2979265 () Bool)

(assert (=> b!7388665 (=> (not res!2979265) (not e!4422414))))

(declare-fun call!680291 () Bool)

(assert (=> b!7388665 (= res!2979265 call!680291)))

(declare-fun b!7388666 () Bool)

(declare-fun e!4422412 () Bool)

(assert (=> b!7388666 (= e!4422412 call!680290)))

(declare-fun b!7388667 () Bool)

(declare-fun res!2979264 () Bool)

(assert (=> b!7388667 (=> (not res!2979264) (not e!4422412))))

(assert (=> b!7388667 (= res!2979264 call!680291)))

(assert (=> b!7388667 (= e!4422418 e!4422412)))

(declare-fun b!7388668 () Bool)

(declare-fun e!4422411 () Bool)

(assert (=> b!7388668 (= e!4422415 e!4422411)))

(declare-fun res!2979261 () Bool)

(assert (=> b!7388668 (= res!2979261 (not (nullable!8421 (reg!19696 (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))))

(assert (=> b!7388668 (=> (not res!2979261) (not e!4422411))))

(declare-fun bm!680286 () Bool)

(declare-fun call!680292 () Bool)

(assert (=> bm!680286 (= call!680291 call!680292)))

(declare-fun b!7388669 () Bool)

(assert (=> b!7388669 (= e!4422411 call!680292)))

(declare-fun bm!680287 () Bool)

(assert (=> bm!680287 (= call!680292 (validRegex!9944 (ite c!1373215 (reg!19696 (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) (ite c!1373217 (regOne!39247 (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) (regOne!39246 (ite c!1373157 (reg!19696 (h!78224 (exprs!8807 c!10532))) (ite c!1373158 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))))

(declare-fun b!7388670 () Bool)

(assert (=> b!7388670 (= e!4422414 call!680290)))

(assert (= (and d!2287283 (not res!2979263)) b!7388663))

(assert (= (and b!7388663 c!1373215) b!7388668))

(assert (= (and b!7388663 (not c!1373215)) b!7388662))

(assert (= (and b!7388668 res!2979261) b!7388669))

(assert (= (and b!7388662 c!1373217) b!7388667))

(assert (= (and b!7388662 (not c!1373217)) b!7388664))

(assert (= (and b!7388667 res!2979264) b!7388666))

(assert (= (and b!7388664 (not res!2979262)) b!7388665))

(assert (= (and b!7388665 res!2979265) b!7388670))

(assert (= (or b!7388667 b!7388665) bm!680286))

(assert (= (or b!7388666 b!7388670) bm!680285))

(assert (= (or b!7388669 bm!680286) bm!680287))

(declare-fun m!8035676 () Bool)

(assert (=> bm!680285 m!8035676))

(declare-fun m!8035678 () Bool)

(assert (=> b!7388668 m!8035678))

(declare-fun m!8035680 () Bool)

(assert (=> bm!680287 m!8035680))

(assert (=> bm!680216 d!2287283))

(declare-fun d!2287287 () Bool)

(assert (=> d!2287287 (= ($colon$colon!3324 (exprs!8807 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156))) (ite (or c!1373146 c!1373144) (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) (Cons!71776 (ite (or c!1373146 c!1373144) (regTwo!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (exprs!8807 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)))))))

(assert (=> bm!680201 d!2287287))

(declare-fun d!2287289 () Bool)

(declare-fun res!2979271 () Bool)

(declare-fun e!4422425 () Bool)

(assert (=> d!2287289 (=> res!2979271 e!4422425)))

(assert (=> d!2287289 (= res!2979271 ((_ is Nil!71779) (t!386456 lt!2617758)))))

(assert (=> d!2287289 (= (noDuplicate!3093 (t!386456 lt!2617758)) e!4422425)))

(declare-fun b!7388680 () Bool)

(declare-fun e!4422426 () Bool)

(assert (=> b!7388680 (= e!4422425 e!4422426)))

(declare-fun res!2979272 () Bool)

(assert (=> b!7388680 (=> (not res!2979272) (not e!4422426))))

(assert (=> b!7388680 (= res!2979272 (not (contains!20837 (t!386456 (t!386456 lt!2617758)) (h!78227 (t!386456 lt!2617758)))))))

(declare-fun b!7388681 () Bool)

(assert (=> b!7388681 (= e!4422426 (noDuplicate!3093 (t!386456 (t!386456 lt!2617758))))))

(assert (= (and d!2287289 (not res!2979271)) b!7388680))

(assert (= (and b!7388680 res!2979272) b!7388681))

(declare-fun m!8035682 () Bool)

(assert (=> b!7388680 m!8035682))

(declare-fun m!8035684 () Bool)

(assert (=> b!7388681 m!8035684))

(assert (=> b!7388355 d!2287289))

(declare-fun d!2287291 () Bool)

(declare-fun c!1373219 () Bool)

(assert (=> d!2287291 (= c!1373219 ((_ is Nil!71779) lt!2617763))))

(declare-fun e!4422427 () (InoxSet Context!16614))

(assert (=> d!2287291 (= (content!15205 lt!2617763) e!4422427)))

(declare-fun b!7388682 () Bool)

(assert (=> b!7388682 (= e!4422427 ((as const (Array Context!16614 Bool)) false))))

(declare-fun b!7388683 () Bool)

(assert (=> b!7388683 (= e!4422427 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) (h!78227 lt!2617763) true) (content!15205 (t!386456 lt!2617763))))))

(assert (= (and d!2287291 c!1373219) b!7388682))

(assert (= (and d!2287291 (not c!1373219)) b!7388683))

(declare-fun m!8035690 () Bool)

(assert (=> b!7388683 m!8035690))

(declare-fun m!8035692 () Bool)

(assert (=> b!7388683 m!8035692))

(assert (=> b!7388402 d!2287291))

(declare-fun d!2287293 () Bool)

(declare-fun res!2979273 () Bool)

(declare-fun e!4422428 () Bool)

(assert (=> d!2287293 (=> res!2979273 e!4422428)))

(assert (=> d!2287293 (= res!2979273 ((_ is Nil!71776) (exprs!8807 _$3!516)))))

(assert (=> d!2287293 (= (forall!18151 (exprs!8807 _$3!516) lambda!459012) e!4422428)))

(declare-fun b!7388684 () Bool)

(declare-fun e!4422429 () Bool)

(assert (=> b!7388684 (= e!4422428 e!4422429)))

(declare-fun res!2979274 () Bool)

(assert (=> b!7388684 (=> (not res!2979274) (not e!4422429))))

(assert (=> b!7388684 (= res!2979274 (dynLambda!29569 lambda!459012 (h!78224 (exprs!8807 _$3!516))))))

(declare-fun b!7388685 () Bool)

(assert (=> b!7388685 (= e!4422429 (forall!18151 (t!386453 (exprs!8807 _$3!516)) lambda!459012))))

(assert (= (and d!2287293 (not res!2979273)) b!7388684))

(assert (= (and b!7388684 res!2979274) b!7388685))

(declare-fun b_lambda!285173 () Bool)

(assert (=> (not b_lambda!285173) (not b!7388684)))

(declare-fun m!8035696 () Bool)

(assert (=> b!7388684 m!8035696))

(declare-fun m!8035698 () Bool)

(assert (=> b!7388685 m!8035698))

(assert (=> d!2287161 d!2287293))

(declare-fun b!7388688 () Bool)

(declare-fun e!4422436 () (InoxSet Context!16614))

(declare-fun call!680299 () (InoxSet Context!16614))

(assert (=> b!7388688 (= e!4422436 call!680299)))

(declare-fun b!7388689 () Bool)

(declare-fun e!4422432 () (InoxSet Context!16614))

(declare-fun e!4422435 () (InoxSet Context!16614))

(assert (=> b!7388689 (= e!4422432 e!4422435)))

(declare-fun c!1373221 () Bool)

(assert (=> b!7388689 (= c!1373221 ((_ is Union!19367) (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(declare-fun b!7388690 () Bool)

(declare-fun e!4422433 () (InoxSet Context!16614))

(assert (=> b!7388690 (= e!4422433 call!680299)))

(declare-fun b!7388691 () Bool)

(declare-fun e!4422431 () (InoxSet Context!16614))

(declare-fun call!680298 () (InoxSet Context!16614))

(declare-fun call!680300 () (InoxSet Context!16614))

(assert (=> b!7388691 (= e!4422431 ((_ map or) call!680298 call!680300))))

(declare-fun b!7388692 () Bool)

(declare-fun call!680296 () (InoxSet Context!16614))

(assert (=> b!7388692 (= e!4422435 ((_ map or) call!680298 call!680296))))

(declare-fun b!7388693 () Bool)

(declare-fun c!1373224 () Bool)

(declare-fun e!4422434 () Bool)

(assert (=> b!7388693 (= c!1373224 e!4422434)))

(declare-fun res!2979275 () Bool)

(assert (=> b!7388693 (=> (not res!2979275) (not e!4422434))))

(assert (=> b!7388693 (= res!2979275 ((_ is Concat!28212) (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(assert (=> b!7388693 (= e!4422435 e!4422431)))

(declare-fun bm!680291 () Bool)

(assert (=> bm!680291 (= call!680300 call!680296)))

(declare-fun c!1373222 () Bool)

(declare-fun bm!680293 () Bool)

(declare-fun call!680301 () List!71900)

(assert (=> bm!680293 (= call!680296 (derivationStepZipperDown!3173 (ite c!1373221 (regTwo!39247 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) (ite c!1373224 (regTwo!39246 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) (ite c!1373222 (regOne!39246 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) (reg!19696 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))) (ite (or c!1373221 c!1373224) (ite c!1373159 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680223)) (Context!16615 call!680301)) lt!2617736))))

(declare-fun b!7388694 () Bool)

(assert (=> b!7388694 (= e!4422433 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680294 () Bool)

(assert (=> bm!680294 (= call!680299 call!680300)))

(declare-fun b!7388695 () Bool)

(declare-fun c!1373225 () Bool)

(assert (=> b!7388695 (= c!1373225 ((_ is Star!19367) (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(assert (=> b!7388695 (= e!4422436 e!4422433)))

(declare-fun b!7388696 () Bool)

(assert (=> b!7388696 (= e!4422431 e!4422436)))

(assert (=> b!7388696 (= c!1373222 ((_ is Concat!28212) (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))

(declare-fun bm!680295 () Bool)

(declare-fun call!680297 () List!71900)

(assert (=> bm!680295 (= call!680301 call!680297)))

(declare-fun bm!680292 () Bool)

(assert (=> bm!680292 (= call!680298 (derivationStepZipperDown!3173 (ite c!1373221 (regOne!39247 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) (regOne!39246 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (ite c!1373221 (ite c!1373159 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680223)) (Context!16615 call!680297)) lt!2617736))))

(declare-fun d!2287297 () Bool)

(declare-fun c!1373223 () Bool)

(assert (=> d!2287297 (= c!1373223 (and ((_ is ElementMatch!19367) (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) (= (c!1373059 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) lt!2617736)))))

(assert (=> d!2287297 (= (derivationStepZipperDown!3173 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))) (ite c!1373159 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680223)) lt!2617736) e!4422432)))

(declare-fun b!7388697 () Bool)

(assert (=> b!7388697 (= e!4422434 (nullable!8421 (regOne!39246 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))

(declare-fun bm!680296 () Bool)

(assert (=> bm!680296 (= call!680297 ($colon$colon!3324 (exprs!8807 (ite c!1373159 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680223))) (ite (or c!1373224 c!1373222) (regTwo!39246 (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) (ite c!1373159 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))

(declare-fun b!7388698 () Bool)

(assert (=> b!7388698 (= e!4422432 (store ((as const (Array Context!16614 Bool)) false) (ite c!1373159 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680223)) true))))

(assert (= (and d!2287297 c!1373223) b!7388698))

(assert (= (and d!2287297 (not c!1373223)) b!7388689))

(assert (= (and b!7388689 c!1373221) b!7388692))

(assert (= (and b!7388689 (not c!1373221)) b!7388693))

(assert (= (and b!7388693 res!2979275) b!7388697))

(assert (= (and b!7388693 c!1373224) b!7388691))

(assert (= (and b!7388693 (not c!1373224)) b!7388696))

(assert (= (and b!7388696 c!1373222) b!7388688))

(assert (= (and b!7388696 (not c!1373222)) b!7388695))

(assert (= (and b!7388695 c!1373225) b!7388690))

(assert (= (and b!7388695 (not c!1373225)) b!7388694))

(assert (= (or b!7388688 b!7388690) bm!680295))

(assert (= (or b!7388688 b!7388690) bm!680294))

(assert (= (or b!7388691 bm!680295) bm!680296))

(assert (= (or b!7388691 bm!680294) bm!680291))

(assert (= (or b!7388692 b!7388691) bm!680292))

(assert (= (or b!7388692 bm!680291) bm!680293))

(declare-fun m!8035704 () Bool)

(assert (=> b!7388697 m!8035704))

(declare-fun m!8035706 () Bool)

(assert (=> bm!680293 m!8035706))

(declare-fun m!8035708 () Bool)

(assert (=> bm!680296 m!8035708))

(declare-fun m!8035710 () Bool)

(assert (=> bm!680292 m!8035710))

(declare-fun m!8035712 () Bool)

(assert (=> b!7388698 m!8035712))

(assert (=> bm!680218 d!2287297))

(declare-fun b!7388699 () Bool)

(declare-fun e!4422442 () (InoxSet Context!16614))

(declare-fun call!680305 () (InoxSet Context!16614))

(assert (=> b!7388699 (= e!4422442 call!680305)))

(declare-fun b!7388700 () Bool)

(declare-fun e!4422438 () (InoxSet Context!16614))

(declare-fun e!4422441 () (InoxSet Context!16614))

(assert (=> b!7388700 (= e!4422438 e!4422441)))

(declare-fun c!1373226 () Bool)

(assert (=> b!7388700 (= c!1373226 ((_ is Union!19367) (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))))

(declare-fun b!7388701 () Bool)

(declare-fun e!4422439 () (InoxSet Context!16614))

(assert (=> b!7388701 (= e!4422439 call!680305)))

(declare-fun b!7388702 () Bool)

(declare-fun e!4422437 () (InoxSet Context!16614))

(declare-fun call!680304 () (InoxSet Context!16614))

(declare-fun call!680306 () (InoxSet Context!16614))

(assert (=> b!7388702 (= e!4422437 ((_ map or) call!680304 call!680306))))

(declare-fun b!7388703 () Bool)

(declare-fun call!680302 () (InoxSet Context!16614))

(assert (=> b!7388703 (= e!4422441 ((_ map or) call!680304 call!680302))))

(declare-fun b!7388704 () Bool)

(declare-fun c!1373229 () Bool)

(declare-fun e!4422440 () Bool)

(assert (=> b!7388704 (= c!1373229 e!4422440)))

(declare-fun res!2979276 () Bool)

(assert (=> b!7388704 (=> (not res!2979276) (not e!4422440))))

(assert (=> b!7388704 (= res!2979276 ((_ is Concat!28212) (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))))

(assert (=> b!7388704 (= e!4422441 e!4422437)))

(declare-fun bm!680297 () Bool)

(assert (=> bm!680297 (= call!680306 call!680302)))

(declare-fun c!1373227 () Bool)

(declare-fun bm!680299 () Bool)

(declare-fun call!680307 () List!71900)

(assert (=> bm!680299 (= call!680302 (derivationStepZipperDown!3173 (ite c!1373226 (regTwo!39247 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))) (ite c!1373229 (regTwo!39246 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))) (ite c!1373227 (regOne!39246 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))) (reg!19696 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))) (ite (or c!1373226 c!1373229) (ite c!1373148 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680208)) (Context!16615 call!680307)) lt!2617736))))

(declare-fun b!7388705 () Bool)

(assert (=> b!7388705 (= e!4422439 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680300 () Bool)

(assert (=> bm!680300 (= call!680305 call!680306)))

(declare-fun c!1373230 () Bool)

(declare-fun b!7388706 () Bool)

(assert (=> b!7388706 (= c!1373230 ((_ is Star!19367) (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))))

(assert (=> b!7388706 (= e!4422442 e!4422439)))

(declare-fun b!7388707 () Bool)

(assert (=> b!7388707 (= e!4422437 e!4422442)))

(assert (=> b!7388707 (= c!1373227 ((_ is Concat!28212) (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))))

(declare-fun bm!680301 () Bool)

(declare-fun call!680303 () List!71900)

(assert (=> bm!680301 (= call!680307 call!680303)))

(declare-fun bm!680298 () Bool)

(assert (=> bm!680298 (= call!680304 (derivationStepZipperDown!3173 (ite c!1373226 (regOne!39247 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))) (regOne!39246 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))) (ite c!1373226 (ite c!1373148 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680208)) (Context!16615 call!680303)) lt!2617736))))

(declare-fun d!2287301 () Bool)

(declare-fun c!1373228 () Bool)

(assert (=> d!2287301 (= c!1373228 (and ((_ is ElementMatch!19367) (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))) (= (c!1373059 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))) lt!2617736)))))

(assert (=> d!2287301 (= (derivationStepZipperDown!3173 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))) (ite c!1373148 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680208)) lt!2617736) e!4422438)))

(declare-fun b!7388708 () Bool)

(assert (=> b!7388708 (= e!4422440 (nullable!8421 (regOne!39246 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))))

(declare-fun bm!680302 () Bool)

(assert (=> bm!680302 (= call!680303 ($colon$colon!3324 (exprs!8807 (ite c!1373148 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680208))) (ite (or c!1373229 c!1373227) (regTwo!39246 (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))) (ite c!1373148 (regOne!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))))

(declare-fun b!7388709 () Bool)

(assert (=> b!7388709 (= e!4422438 (store ((as const (Array Context!16614 Bool)) false) (ite c!1373148 (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680208)) true))))

(assert (= (and d!2287301 c!1373228) b!7388709))

(assert (= (and d!2287301 (not c!1373228)) b!7388700))

(assert (= (and b!7388700 c!1373226) b!7388703))

(assert (= (and b!7388700 (not c!1373226)) b!7388704))

(assert (= (and b!7388704 res!2979276) b!7388708))

(assert (= (and b!7388704 c!1373229) b!7388702))

(assert (= (and b!7388704 (not c!1373229)) b!7388707))

(assert (= (and b!7388707 c!1373227) b!7388699))

(assert (= (and b!7388707 (not c!1373227)) b!7388706))

(assert (= (and b!7388706 c!1373230) b!7388701))

(assert (= (and b!7388706 (not c!1373230)) b!7388705))

(assert (= (or b!7388699 b!7388701) bm!680301))

(assert (= (or b!7388699 b!7388701) bm!680300))

(assert (= (or b!7388702 bm!680301) bm!680302))

(assert (= (or b!7388702 bm!680300) bm!680297))

(assert (= (or b!7388703 b!7388702) bm!680298))

(assert (= (or b!7388703 bm!680297) bm!680299))

(declare-fun m!8035718 () Bool)

(assert (=> b!7388708 m!8035718))

(declare-fun m!8035720 () Bool)

(assert (=> bm!680299 m!8035720))

(declare-fun m!8035726 () Bool)

(assert (=> bm!680302 m!8035726))

(declare-fun m!8035728 () Bool)

(assert (=> bm!680298 m!8035728))

(declare-fun m!8035730 () Bool)

(assert (=> b!7388709 m!8035730))

(assert (=> bm!680203 d!2287301))

(declare-fun d!2287313 () Bool)

(declare-fun c!1373233 () Bool)

(assert (=> d!2287313 (= c!1373233 ((_ is Nil!71779) res!2979148))))

(declare-fun e!4422449 () (InoxSet Context!16614))

(assert (=> d!2287313 (= (content!15205 res!2979148) e!4422449)))

(declare-fun b!7388712 () Bool)

(assert (=> b!7388712 (= e!4422449 ((as const (Array Context!16614 Bool)) false))))

(declare-fun b!7388713 () Bool)

(assert (=> b!7388713 (= e!4422449 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) (h!78227 res!2979148) true) (content!15205 (t!386456 res!2979148))))))

(assert (= (and d!2287313 c!1373233) b!7388712))

(assert (= (and d!2287313 (not c!1373233)) b!7388713))

(declare-fun m!8035732 () Bool)

(assert (=> b!7388713 m!8035732))

(declare-fun m!8035734 () Bool)

(assert (=> b!7388713 m!8035734))

(assert (=> b!7388364 d!2287313))

(declare-fun b!7388723 () Bool)

(declare-fun e!4422457 () Bool)

(declare-fun e!4422459 () Bool)

(assert (=> b!7388723 (= e!4422457 e!4422459)))

(declare-fun c!1373235 () Bool)

(assert (=> b!7388723 (= c!1373235 ((_ is Union!19367) (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))))))

(declare-fun d!2287315 () Bool)

(declare-fun res!2979286 () Bool)

(declare-fun e!4422455 () Bool)

(assert (=> d!2287315 (=> res!2979286 e!4422455)))

(assert (=> d!2287315 (= res!2979286 ((_ is ElementMatch!19367) (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))))))

(assert (=> d!2287315 (= (validRegex!9944 (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) e!4422455)))

(declare-fun b!7388724 () Bool)

(assert (=> b!7388724 (= e!4422455 e!4422457)))

(declare-fun c!1373234 () Bool)

(assert (=> b!7388724 (= c!1373234 ((_ is Star!19367) (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))))))

(declare-fun call!680311 () Bool)

(declare-fun bm!680306 () Bool)

(assert (=> bm!680306 (= call!680311 (validRegex!9944 (ite c!1373235 (regTwo!39247 (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) (regTwo!39246 (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))))))))

(declare-fun b!7388725 () Bool)

(declare-fun res!2979285 () Bool)

(declare-fun e!4422458 () Bool)

(assert (=> b!7388725 (=> res!2979285 e!4422458)))

(assert (=> b!7388725 (= res!2979285 (not ((_ is Concat!28212) (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463))))))))))

(assert (=> b!7388725 (= e!4422459 e!4422458)))

(declare-fun b!7388726 () Bool)

(declare-fun e!4422456 () Bool)

(assert (=> b!7388726 (= e!4422458 e!4422456)))

(declare-fun res!2979288 () Bool)

(assert (=> b!7388726 (=> (not res!2979288) (not e!4422456))))

(declare-fun call!680312 () Bool)

(assert (=> b!7388726 (= res!2979288 call!680312)))

(declare-fun b!7388727 () Bool)

(declare-fun e!4422454 () Bool)

(assert (=> b!7388727 (= e!4422454 call!680311)))

(declare-fun b!7388728 () Bool)

(declare-fun res!2979287 () Bool)

(assert (=> b!7388728 (=> (not res!2979287) (not e!4422454))))

(assert (=> b!7388728 (= res!2979287 call!680312)))

(assert (=> b!7388728 (= e!4422459 e!4422454)))

(declare-fun b!7388729 () Bool)

(declare-fun e!4422453 () Bool)

(assert (=> b!7388729 (= e!4422457 e!4422453)))

(declare-fun res!2979284 () Bool)

(assert (=> b!7388729 (= res!2979284 (not (nullable!8421 (reg!19696 (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))))))))

(assert (=> b!7388729 (=> (not res!2979284) (not e!4422453))))

(declare-fun bm!680307 () Bool)

(declare-fun call!680313 () Bool)

(assert (=> bm!680307 (= call!680312 call!680313)))

(declare-fun b!7388730 () Bool)

(assert (=> b!7388730 (= e!4422453 call!680313)))

(declare-fun bm!680308 () Bool)

(assert (=> bm!680308 (= call!680313 (validRegex!9944 (ite c!1373234 (reg!19696 (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) (ite c!1373235 (regOne!39247 (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) (regOne!39246 (ite c!1373171 (reg!19696 (h!78224 (exprs!8807 empty!3463))) (ite c!1373172 (regOne!39247 (h!78224 (exprs!8807 empty!3463))) (regOne!39246 (h!78224 (exprs!8807 empty!3463))))))))))))

(declare-fun b!7388731 () Bool)

(assert (=> b!7388731 (= e!4422456 call!680311)))

(assert (= (and d!2287315 (not res!2979286)) b!7388724))

(assert (= (and b!7388724 c!1373234) b!7388729))

(assert (= (and b!7388724 (not c!1373234)) b!7388723))

(assert (= (and b!7388729 res!2979284) b!7388730))

(assert (= (and b!7388723 c!1373235) b!7388728))

(assert (= (and b!7388723 (not c!1373235)) b!7388725))

(assert (= (and b!7388728 res!2979287) b!7388727))

(assert (= (and b!7388725 (not res!2979285)) b!7388726))

(assert (= (and b!7388726 res!2979288) b!7388731))

(assert (= (or b!7388728 b!7388726) bm!680307))

(assert (= (or b!7388727 b!7388731) bm!680306))

(assert (= (or b!7388730 bm!680307) bm!680308))

(declare-fun m!8035736 () Bool)

(assert (=> bm!680306 m!8035736))

(declare-fun m!8035738 () Bool)

(assert (=> b!7388729 m!8035738))

(declare-fun m!8035740 () Bool)

(assert (=> bm!680308 m!8035740))

(assert (=> bm!680229 d!2287315))

(declare-fun b!7388732 () Bool)

(declare-fun e!4422464 () Bool)

(declare-fun e!4422466 () Bool)

(assert (=> b!7388732 (= e!4422464 e!4422466)))

(declare-fun c!1373237 () Bool)

(assert (=> b!7388732 (= c!1373237 ((_ is Union!19367) (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))))))

(declare-fun d!2287317 () Bool)

(declare-fun res!2979291 () Bool)

(declare-fun e!4422462 () Bool)

(assert (=> d!2287317 (=> res!2979291 e!4422462)))

(assert (=> d!2287317 (= res!2979291 ((_ is ElementMatch!19367) (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))))))

(assert (=> d!2287317 (= (validRegex!9944 (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) e!4422462)))

(declare-fun b!7388733 () Bool)

(assert (=> b!7388733 (= e!4422462 e!4422464)))

(declare-fun c!1373236 () Bool)

(assert (=> b!7388733 (= c!1373236 ((_ is Star!19367) (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))))))

(declare-fun bm!680309 () Bool)

(declare-fun call!680314 () Bool)

(assert (=> bm!680309 (= call!680314 (validRegex!9944 (ite c!1373237 (regTwo!39247 (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) (regTwo!39246 (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))))))))

(declare-fun b!7388734 () Bool)

(declare-fun res!2979290 () Bool)

(declare-fun e!4422465 () Bool)

(assert (=> b!7388734 (=> res!2979290 e!4422465)))

(assert (=> b!7388734 (= res!2979290 (not ((_ is Concat!28212) (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))))))

(assert (=> b!7388734 (= e!4422466 e!4422465)))

(declare-fun b!7388735 () Bool)

(declare-fun e!4422463 () Bool)

(assert (=> b!7388735 (= e!4422465 e!4422463)))

(declare-fun res!2979293 () Bool)

(assert (=> b!7388735 (=> (not res!2979293) (not e!4422463))))

(declare-fun call!680315 () Bool)

(assert (=> b!7388735 (= res!2979293 call!680315)))

(declare-fun b!7388736 () Bool)

(declare-fun e!4422461 () Bool)

(assert (=> b!7388736 (= e!4422461 call!680314)))

(declare-fun b!7388737 () Bool)

(declare-fun res!2979292 () Bool)

(assert (=> b!7388737 (=> (not res!2979292) (not e!4422461))))

(assert (=> b!7388737 (= res!2979292 call!680315)))

(assert (=> b!7388737 (= e!4422466 e!4422461)))

(declare-fun b!7388738 () Bool)

(declare-fun e!4422460 () Bool)

(assert (=> b!7388738 (= e!4422464 e!4422460)))

(declare-fun res!2979289 () Bool)

(assert (=> b!7388738 (= res!2979289 (not (nullable!8421 (reg!19696 (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))))))))

(assert (=> b!7388738 (=> (not res!2979289) (not e!4422460))))

(declare-fun bm!680310 () Bool)

(declare-fun call!680316 () Bool)

(assert (=> bm!680310 (= call!680315 call!680316)))

(declare-fun b!7388739 () Bool)

(assert (=> b!7388739 (= e!4422460 call!680316)))

(declare-fun bm!680311 () Bool)

(assert (=> bm!680311 (= call!680316 (validRegex!9944 (ite c!1373236 (reg!19696 (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) (ite c!1373237 (regOne!39247 (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373158 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))))))))

(declare-fun b!7388740 () Bool)

(assert (=> b!7388740 (= e!4422463 call!680314)))

(assert (= (and d!2287317 (not res!2979291)) b!7388733))

(assert (= (and b!7388733 c!1373236) b!7388738))

(assert (= (and b!7388733 (not c!1373236)) b!7388732))

(assert (= (and b!7388738 res!2979289) b!7388739))

(assert (= (and b!7388732 c!1373237) b!7388737))

(assert (= (and b!7388732 (not c!1373237)) b!7388734))

(assert (= (and b!7388737 res!2979292) b!7388736))

(assert (= (and b!7388734 (not res!2979290)) b!7388735))

(assert (= (and b!7388735 res!2979293) b!7388740))

(assert (= (or b!7388737 b!7388735) bm!680310))

(assert (= (or b!7388736 b!7388740) bm!680309))

(assert (= (or b!7388739 bm!680310) bm!680311))

(declare-fun m!8035750 () Bool)

(assert (=> bm!680309 m!8035750))

(declare-fun m!8035752 () Bool)

(assert (=> b!7388738 m!8035752))

(declare-fun m!8035754 () Bool)

(assert (=> bm!680311 m!8035754))

(assert (=> bm!680214 d!2287317))

(declare-fun b!7388741 () Bool)

(declare-fun e!4422472 () (InoxSet Context!16614))

(declare-fun call!680320 () (InoxSet Context!16614))

(assert (=> b!7388741 (= e!4422472 call!680320)))

(declare-fun b!7388742 () Bool)

(declare-fun e!4422468 () (InoxSet Context!16614))

(declare-fun e!4422471 () (InoxSet Context!16614))

(assert (=> b!7388742 (= e!4422468 e!4422471)))

(declare-fun c!1373238 () Bool)

(assert (=> b!7388742 (= c!1373238 ((_ is Union!19367) (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))

(declare-fun b!7388743 () Bool)

(declare-fun e!4422469 () (InoxSet Context!16614))

(assert (=> b!7388743 (= e!4422469 call!680320)))

(declare-fun b!7388744 () Bool)

(declare-fun e!4422467 () (InoxSet Context!16614))

(declare-fun call!680319 () (InoxSet Context!16614))

(declare-fun call!680321 () (InoxSet Context!16614))

(assert (=> b!7388744 (= e!4422467 ((_ map or) call!680319 call!680321))))

(declare-fun b!7388745 () Bool)

(declare-fun call!680317 () (InoxSet Context!16614))

(assert (=> b!7388745 (= e!4422471 ((_ map or) call!680319 call!680317))))

(declare-fun b!7388746 () Bool)

(declare-fun c!1373241 () Bool)

(declare-fun e!4422470 () Bool)

(assert (=> b!7388746 (= c!1373241 e!4422470)))

(declare-fun res!2979294 () Bool)

(assert (=> b!7388746 (=> (not res!2979294) (not e!4422470))))

(assert (=> b!7388746 (= res!2979294 ((_ is Concat!28212) (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))

(assert (=> b!7388746 (= e!4422471 e!4422467)))

(declare-fun bm!680312 () Bool)

(assert (=> bm!680312 (= call!680321 call!680317)))

(declare-fun bm!680314 () Bool)

(declare-fun c!1373239 () Bool)

(declare-fun call!680322 () List!71900)

(assert (=> bm!680314 (= call!680317 (derivationStepZipperDown!3173 (ite c!1373238 (regTwo!39247 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373241 (regTwo!39246 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373239 (regOne!39246 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))) (ite (or c!1373238 c!1373241) (ite c!1373143 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680202)) (Context!16615 call!680322)) lt!2617736))))

(declare-fun b!7388747 () Bool)

(assert (=> b!7388747 (= e!4422469 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680315 () Bool)

(assert (=> bm!680315 (= call!680320 call!680321)))

(declare-fun c!1373242 () Bool)

(declare-fun b!7388748 () Bool)

(assert (=> b!7388748 (= c!1373242 ((_ is Star!19367) (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))

(assert (=> b!7388748 (= e!4422472 e!4422469)))

(declare-fun b!7388749 () Bool)

(assert (=> b!7388749 (= e!4422467 e!4422472)))

(assert (=> b!7388749 (= c!1373239 ((_ is Concat!28212) (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))))))

(declare-fun bm!680316 () Bool)

(declare-fun call!680318 () List!71900)

(assert (=> bm!680316 (= call!680322 call!680318)))

(declare-fun bm!680313 () Bool)

(assert (=> bm!680313 (= call!680319 (derivationStepZipperDown!3173 (ite c!1373238 (regOne!39247 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))) (regOne!39246 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))) (ite c!1373238 (ite c!1373143 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680202)) (Context!16615 call!680318)) lt!2617736))))

(declare-fun c!1373240 () Bool)

(declare-fun d!2287323 () Bool)

(assert (=> d!2287323 (= c!1373240 (and ((_ is ElementMatch!19367) (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))) (= (c!1373059 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))) lt!2617736)))))

(assert (=> d!2287323 (= (derivationStepZipperDown!3173 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) (ite c!1373143 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680202)) lt!2617736) e!4422468)))

(declare-fun b!7388750 () Bool)

(assert (=> b!7388750 (= e!4422470 (nullable!8421 (regOne!39246 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))))

(declare-fun bm!680317 () Bool)

(assert (=> bm!680317 (= call!680318 ($colon$colon!3324 (exprs!8807 (ite c!1373143 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680202))) (ite (or c!1373241 c!1373239) (regTwo!39246 (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373143 (regOne!39247 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))))

(declare-fun b!7388751 () Bool)

(assert (=> b!7388751 (= e!4422468 (store ((as const (Array Context!16614 Bool)) false) (ite c!1373143 (ite c!1373105 (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680156)) (Context!16615 call!680202)) true))))

(assert (= (and d!2287323 c!1373240) b!7388751))

(assert (= (and d!2287323 (not c!1373240)) b!7388742))

(assert (= (and b!7388742 c!1373238) b!7388745))

(assert (= (and b!7388742 (not c!1373238)) b!7388746))

(assert (= (and b!7388746 res!2979294) b!7388750))

(assert (= (and b!7388746 c!1373241) b!7388744))

(assert (= (and b!7388746 (not c!1373241)) b!7388749))

(assert (= (and b!7388749 c!1373239) b!7388741))

(assert (= (and b!7388749 (not c!1373239)) b!7388748))

(assert (= (and b!7388748 c!1373242) b!7388743))

(assert (= (and b!7388748 (not c!1373242)) b!7388747))

(assert (= (or b!7388741 b!7388743) bm!680316))

(assert (= (or b!7388741 b!7388743) bm!680315))

(assert (= (or b!7388744 bm!680316) bm!680317))

(assert (= (or b!7388744 bm!680315) bm!680312))

(assert (= (or b!7388745 b!7388744) bm!680313))

(assert (= (or b!7388745 bm!680312) bm!680314))

(declare-fun m!8035756 () Bool)

(assert (=> b!7388750 m!8035756))

(declare-fun m!8035758 () Bool)

(assert (=> bm!680314 m!8035758))

(declare-fun m!8035760 () Bool)

(assert (=> bm!680317 m!8035760))

(declare-fun m!8035762 () Bool)

(assert (=> bm!680313 m!8035762))

(declare-fun m!8035764 () Bool)

(assert (=> b!7388751 m!8035764))

(assert (=> bm!680197 d!2287323))

(declare-fun d!2287325 () Bool)

(declare-fun res!2979296 () Bool)

(declare-fun e!4422479 () Bool)

(assert (=> d!2287325 (=> res!2979296 e!4422479)))

(assert (=> d!2287325 (= res!2979296 ((_ is Nil!71776) (t!386453 (t!386453 (exprs!8807 c!10532)))))))

(assert (=> d!2287325 (= (forall!18151 (t!386453 (t!386453 (exprs!8807 c!10532))) lambda!458994) e!4422479)))

(declare-fun b!7388763 () Bool)

(declare-fun e!4422480 () Bool)

(assert (=> b!7388763 (= e!4422479 e!4422480)))

(declare-fun res!2979297 () Bool)

(assert (=> b!7388763 (=> (not res!2979297) (not e!4422480))))

(assert (=> b!7388763 (= res!2979297 (dynLambda!29569 lambda!458994 (h!78224 (t!386453 (t!386453 (exprs!8807 c!10532))))))))

(declare-fun b!7388764 () Bool)

(assert (=> b!7388764 (= e!4422480 (forall!18151 (t!386453 (t!386453 (t!386453 (exprs!8807 c!10532)))) lambda!458994))))

(assert (= (and d!2287325 (not res!2979296)) b!7388763))

(assert (= (and b!7388763 res!2979297) b!7388764))

(declare-fun b_lambda!285177 () Bool)

(assert (=> (not b_lambda!285177) (not b!7388763)))

(declare-fun m!8035766 () Bool)

(assert (=> b!7388763 m!8035766))

(declare-fun m!8035768 () Bool)

(assert (=> b!7388764 m!8035768))

(assert (=> b!7388336 d!2287325))

(declare-fun bs!1922268 () Bool)

(declare-fun d!2287327 () Bool)

(assert (= bs!1922268 (and d!2287327 d!2287003)))

(declare-fun lambda!459017 () Int)

(assert (=> bs!1922268 (= lambda!459017 lambda!458994)))

(declare-fun bs!1922269 () Bool)

(assert (= bs!1922269 (and d!2287327 d!2286993)))

(assert (=> bs!1922269 (= lambda!459017 lambda!458993)))

(declare-fun bs!1922270 () Bool)

(assert (= bs!1922270 (and d!2287327 d!2287049)))

(assert (=> bs!1922270 (= lambda!459017 lambda!459005)))

(declare-fun bs!1922271 () Bool)

(assert (= bs!1922271 (and d!2287327 d!2286959)))

(assert (=> bs!1922271 (= lambda!459017 lambda!458983)))

(declare-fun bs!1922272 () Bool)

(assert (= bs!1922272 (and d!2287327 d!2287161)))

(assert (=> bs!1922272 (= lambda!459017 lambda!459012)))

(declare-fun bs!1922273 () Bool)

(assert (= bs!1922273 (and d!2287327 d!2287189)))

(assert (=> bs!1922273 (= lambda!459017 lambda!459014)))

(assert (=> d!2287327 (= (inv!91778 (h!78227 res!2979148)) (forall!18151 (exprs!8807 (h!78227 res!2979148)) lambda!459017))))

(declare-fun bs!1922274 () Bool)

(assert (= bs!1922274 d!2287327))

(declare-fun m!8035774 () Bool)

(assert (=> bs!1922274 m!8035774))

(assert (=> b!7388362 d!2287327))

(declare-fun b!7388765 () Bool)

(declare-fun e!4422485 () Bool)

(declare-fun e!4422487 () Bool)

(assert (=> b!7388765 (= e!4422485 e!4422487)))

(declare-fun c!1373249 () Bool)

(assert (=> b!7388765 (= c!1373249 ((_ is Union!19367) (h!78224 (t!386453 (exprs!8807 setElem!55928)))))))

(declare-fun d!2287329 () Bool)

(declare-fun res!2979300 () Bool)

(declare-fun e!4422483 () Bool)

(assert (=> d!2287329 (=> res!2979300 e!4422483)))

(assert (=> d!2287329 (= res!2979300 ((_ is ElementMatch!19367) (h!78224 (t!386453 (exprs!8807 setElem!55928)))))))

(assert (=> d!2287329 (= (validRegex!9944 (h!78224 (t!386453 (exprs!8807 setElem!55928)))) e!4422483)))

(declare-fun b!7388766 () Bool)

(assert (=> b!7388766 (= e!4422483 e!4422485)))

(declare-fun c!1373248 () Bool)

(assert (=> b!7388766 (= c!1373248 ((_ is Star!19367) (h!78224 (t!386453 (exprs!8807 setElem!55928)))))))

(declare-fun bm!680324 () Bool)

(declare-fun call!680329 () Bool)

(assert (=> bm!680324 (= call!680329 (validRegex!9944 (ite c!1373249 (regTwo!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))))))

(declare-fun b!7388767 () Bool)

(declare-fun res!2979299 () Bool)

(declare-fun e!4422486 () Bool)

(assert (=> b!7388767 (=> res!2979299 e!4422486)))

(assert (=> b!7388767 (= res!2979299 (not ((_ is Concat!28212) (h!78224 (t!386453 (exprs!8807 setElem!55928))))))))

(assert (=> b!7388767 (= e!4422487 e!4422486)))

(declare-fun b!7388768 () Bool)

(declare-fun e!4422484 () Bool)

(assert (=> b!7388768 (= e!4422486 e!4422484)))

(declare-fun res!2979302 () Bool)

(assert (=> b!7388768 (=> (not res!2979302) (not e!4422484))))

(declare-fun call!680330 () Bool)

(assert (=> b!7388768 (= res!2979302 call!680330)))

(declare-fun b!7388769 () Bool)

(declare-fun e!4422482 () Bool)

(assert (=> b!7388769 (= e!4422482 call!680329)))

(declare-fun b!7388770 () Bool)

(declare-fun res!2979301 () Bool)

(assert (=> b!7388770 (=> (not res!2979301) (not e!4422482))))

(assert (=> b!7388770 (= res!2979301 call!680330)))

(assert (=> b!7388770 (= e!4422487 e!4422482)))

(declare-fun b!7388771 () Bool)

(declare-fun e!4422481 () Bool)

(assert (=> b!7388771 (= e!4422485 e!4422481)))

(declare-fun res!2979298 () Bool)

(assert (=> b!7388771 (= res!2979298 (not (nullable!8421 (reg!19696 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))))))

(assert (=> b!7388771 (=> (not res!2979298) (not e!4422481))))

(declare-fun bm!680325 () Bool)

(declare-fun call!680331 () Bool)

(assert (=> bm!680325 (= call!680330 call!680331)))

(declare-fun b!7388772 () Bool)

(assert (=> b!7388772 (= e!4422481 call!680331)))

(declare-fun bm!680326 () Bool)

(assert (=> bm!680326 (= call!680331 (validRegex!9944 (ite c!1373248 (reg!19696 (h!78224 (t!386453 (exprs!8807 setElem!55928)))) (ite c!1373249 (regOne!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))) (regOne!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928))))))))))

(declare-fun b!7388773 () Bool)

(assert (=> b!7388773 (= e!4422484 call!680329)))

(assert (= (and d!2287329 (not res!2979300)) b!7388766))

(assert (= (and b!7388766 c!1373248) b!7388771))

(assert (= (and b!7388766 (not c!1373248)) b!7388765))

(assert (= (and b!7388771 res!2979298) b!7388772))

(assert (= (and b!7388765 c!1373249) b!7388770))

(assert (= (and b!7388765 (not c!1373249)) b!7388767))

(assert (= (and b!7388770 res!2979301) b!7388769))

(assert (= (and b!7388767 (not res!2979299)) b!7388768))

(assert (= (and b!7388768 res!2979302) b!7388773))

(assert (= (or b!7388770 b!7388768) bm!680325))

(assert (= (or b!7388769 b!7388773) bm!680324))

(assert (= (or b!7388772 bm!680325) bm!680326))

(declare-fun m!8035780 () Bool)

(assert (=> bm!680324 m!8035780))

(declare-fun m!8035782 () Bool)

(assert (=> b!7388771 m!8035782))

(declare-fun m!8035784 () Bool)

(assert (=> bm!680326 m!8035784))

(assert (=> bs!1922237 d!2287329))

(declare-fun d!2287331 () Bool)

(declare-fun res!2979303 () Bool)

(declare-fun e!4422488 () Bool)

(assert (=> d!2287331 (=> res!2979303 e!4422488)))

(assert (=> d!2287331 (= res!2979303 ((_ is Nil!71779) lt!2617763))))

(assert (=> d!2287331 (= (noDuplicate!3093 lt!2617763) e!4422488)))

(declare-fun b!7388774 () Bool)

(declare-fun e!4422489 () Bool)

(assert (=> b!7388774 (= e!4422488 e!4422489)))

(declare-fun res!2979304 () Bool)

(assert (=> b!7388774 (=> (not res!2979304) (not e!4422489))))

(assert (=> b!7388774 (= res!2979304 (not (contains!20837 (t!386456 lt!2617763) (h!78227 lt!2617763))))))

(declare-fun b!7388775 () Bool)

(assert (=> b!7388775 (= e!4422489 (noDuplicate!3093 (t!386456 lt!2617763)))))

(assert (= (and d!2287331 (not res!2979303)) b!7388774))

(assert (= (and b!7388774 res!2979304) b!7388775))

(declare-fun m!8035788 () Bool)

(assert (=> b!7388774 m!8035788))

(declare-fun m!8035790 () Bool)

(assert (=> b!7388775 m!8035790))

(assert (=> d!2287179 d!2287331))

(declare-fun d!2287335 () Bool)

(declare-fun e!4422492 () Bool)

(assert (=> d!2287335 e!4422492))

(declare-fun res!2979306 () Bool)

(assert (=> d!2287335 (=> (not res!2979306) (not e!4422492))))

(declare-fun res!2979305 () List!71903)

(assert (=> d!2287335 (= res!2979306 (noDuplicate!3093 res!2979305))))

(declare-fun e!4422491 () Bool)

(assert (=> d!2287335 e!4422491))

(assert (=> d!2287335 (= (choose!57381 z!3451) res!2979305)))

(declare-fun b!7388777 () Bool)

(declare-fun e!4422490 () Bool)

(declare-fun tp!2103212 () Bool)

(assert (=> b!7388777 (= e!4422490 tp!2103212)))

(declare-fun b!7388776 () Bool)

(declare-fun tp!2103213 () Bool)

(assert (=> b!7388776 (= e!4422491 (and (inv!91778 (h!78227 res!2979305)) e!4422490 tp!2103213))))

(declare-fun b!7388778 () Bool)

(assert (=> b!7388778 (= e!4422492 (= (content!15205 res!2979305) z!3451))))

(assert (= b!7388776 b!7388777))

(assert (= (and d!2287335 ((_ is Cons!71779) res!2979305)) b!7388776))

(assert (= (and d!2287335 res!2979306) b!7388778))

(declare-fun m!8035792 () Bool)

(assert (=> d!2287335 m!8035792))

(declare-fun m!8035794 () Bool)

(assert (=> b!7388776 m!8035794))

(declare-fun m!8035796 () Bool)

(assert (=> b!7388778 m!8035796))

(assert (=> d!2287179 d!2287335))

(declare-fun bs!1922275 () Bool)

(declare-fun d!2287337 () Bool)

(assert (= bs!1922275 (and d!2287337 d!2287177)))

(declare-fun lambda!459018 () Int)

(assert (=> bs!1922275 (= (= lambda!459008 lambda!458992) (= lambda!459018 lambda!459013))))

(declare-fun bs!1922276 () Bool)

(assert (= bs!1922276 (and d!2287337 d!2287043)))

(assert (=> bs!1922276 (= (= lambda!459008 lambda!458972) (= lambda!459018 lambda!459004))))

(declare-fun bs!1922277 () Bool)

(assert (= bs!1922277 (and d!2287337 b!7387801)))

(assert (=> bs!1922277 (not (= lambda!459018 lambda!458972))))

(declare-fun bs!1922278 () Bool)

(assert (= bs!1922278 (and d!2287337 d!2287063)))

(assert (=> bs!1922278 (not (= lambda!459018 lambda!459008))))

(declare-fun bs!1922279 () Bool)

(assert (= bs!1922279 (and d!2287337 d!2286991)))

(assert (=> bs!1922279 (not (= lambda!459018 lambda!458992))))

(assert (=> d!2287337 true))

(assert (=> d!2287337 (< (dynLambda!29567 order!29431 lambda!459008) (dynLambda!29567 order!29431 lambda!459018))))

(assert (=> d!2287337 (= (exists!4729 (toList!11730 z!3451) lambda!459008) (not (forall!18153 (toList!11730 z!3451) lambda!459018)))))

(declare-fun bs!1922280 () Bool)

(assert (= bs!1922280 d!2287337))

(assert (=> bs!1922280 m!8035224))

(declare-fun m!8035798 () Bool)

(assert (=> bs!1922280 m!8035798))

(assert (=> d!2287159 d!2287337))

(assert (=> d!2287159 d!2287179))

(declare-fun d!2287339 () Bool)

(declare-fun res!2979308 () Bool)

(assert (=> d!2287339 (= res!2979308 (exists!4729 (toList!11730 z!3451) lambda!459008))))

(assert (=> d!2287339 true))

(assert (=> d!2287339 (= (choose!57377 z!3451 lambda!459008) res!2979308)))

(declare-fun bs!1922281 () Bool)

(assert (= bs!1922281 d!2287339))

(assert (=> bs!1922281 m!8035224))

(assert (=> bs!1922281 m!8035224))

(assert (=> bs!1922281 m!8035446))

(assert (=> d!2287159 d!2287339))

(declare-fun bs!1922282 () Bool)

(declare-fun d!2287341 () Bool)

(assert (= bs!1922282 (and d!2287341 d!2287003)))

(declare-fun lambda!459019 () Int)

(assert (=> bs!1922282 (= lambda!459019 lambda!458994)))

(declare-fun bs!1922283 () Bool)

(assert (= bs!1922283 (and d!2287341 d!2286993)))

(assert (=> bs!1922283 (= lambda!459019 lambda!458993)))

(declare-fun bs!1922284 () Bool)

(assert (= bs!1922284 (and d!2287341 d!2287049)))

(assert (=> bs!1922284 (= lambda!459019 lambda!459005)))

(declare-fun bs!1922285 () Bool)

(assert (= bs!1922285 (and d!2287341 d!2287327)))

(assert (=> bs!1922285 (= lambda!459019 lambda!459017)))

(declare-fun bs!1922286 () Bool)

(assert (= bs!1922286 (and d!2287341 d!2286959)))

(assert (=> bs!1922286 (= lambda!459019 lambda!458983)))

(declare-fun bs!1922287 () Bool)

(assert (= bs!1922287 (and d!2287341 d!2287161)))

(assert (=> bs!1922287 (= lambda!459019 lambda!459012)))

(declare-fun bs!1922288 () Bool)

(assert (= bs!1922288 (and d!2287341 d!2287189)))

(assert (=> bs!1922288 (= lambda!459019 lambda!459014)))

(assert (=> d!2287341 (= (inv!91778 setElem!55946) (forall!18151 (exprs!8807 setElem!55946) lambda!459019))))

(declare-fun bs!1922289 () Bool)

(assert (= bs!1922289 d!2287341))

(declare-fun m!8035808 () Bool)

(assert (=> bs!1922289 m!8035808))

(assert (=> setNonEmpty!55946 d!2287341))

(declare-fun b!7388790 () Bool)

(declare-fun e!4422504 () (InoxSet Context!16614))

(declare-fun call!680341 () (InoxSet Context!16614))

(assert (=> b!7388790 (= e!4422504 call!680341)))

(declare-fun b!7388791 () Bool)

(declare-fun e!4422500 () (InoxSet Context!16614))

(declare-fun e!4422503 () (InoxSet Context!16614))

(assert (=> b!7388791 (= e!4422500 e!4422503)))

(declare-fun c!1373255 () Bool)

(assert (=> b!7388791 (= c!1373255 ((_ is Union!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))

(declare-fun b!7388792 () Bool)

(declare-fun e!4422501 () (InoxSet Context!16614))

(assert (=> b!7388792 (= e!4422501 call!680341)))

(declare-fun b!7388793 () Bool)

(declare-fun e!4422499 () (InoxSet Context!16614))

(declare-fun call!680340 () (InoxSet Context!16614))

(declare-fun call!680342 () (InoxSet Context!16614))

(assert (=> b!7388793 (= e!4422499 ((_ map or) call!680340 call!680342))))

(declare-fun b!7388794 () Bool)

(declare-fun call!680338 () (InoxSet Context!16614))

(assert (=> b!7388794 (= e!4422503 ((_ map or) call!680340 call!680338))))

(declare-fun b!7388795 () Bool)

(declare-fun c!1373258 () Bool)

(declare-fun e!4422502 () Bool)

(assert (=> b!7388795 (= c!1373258 e!4422502)))

(declare-fun res!2979309 () Bool)

(assert (=> b!7388795 (=> (not res!2979309) (not e!4422502))))

(assert (=> b!7388795 (= res!2979309 ((_ is Concat!28212) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))

(assert (=> b!7388795 (= e!4422503 e!4422499)))

(declare-fun bm!680333 () Bool)

(assert (=> bm!680333 (= call!680342 call!680338)))

(declare-fun bm!680335 () Bool)

(declare-fun call!680343 () List!71900)

(declare-fun c!1373256 () Bool)

(assert (=> bm!680335 (= call!680338 (derivationStepZipperDown!3173 (ite c!1373255 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (ite c!1373258 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (ite c!1373256 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))) (ite (or c!1373255 c!1373258) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (Context!16615 call!680343)) lt!2617736))))

(declare-fun b!7388796 () Bool)

(assert (=> b!7388796 (= e!4422501 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680336 () Bool)

(assert (=> bm!680336 (= call!680341 call!680342)))

(declare-fun b!7388797 () Bool)

(declare-fun c!1373259 () Bool)

(assert (=> b!7388797 (= c!1373259 ((_ is Star!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))

(assert (=> b!7388797 (= e!4422504 e!4422501)))

(declare-fun b!7388798 () Bool)

(assert (=> b!7388798 (= e!4422499 e!4422504)))

(assert (=> b!7388798 (= c!1373256 ((_ is Concat!28212) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))

(declare-fun bm!680337 () Bool)

(declare-fun call!680339 () List!71900)

(assert (=> bm!680337 (= call!680343 call!680339)))

(declare-fun bm!680334 () Bool)

(assert (=> bm!680334 (= call!680340 (derivationStepZipperDown!3173 (ite c!1373255 (regOne!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) (ite c!1373255 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (Context!16615 call!680339)) lt!2617736))))

(declare-fun d!2287343 () Bool)

(declare-fun c!1373257 () Bool)

(assert (=> d!2287343 (= c!1373257 (and ((_ is ElementMatch!19367) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (= (c!1373059 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) lt!2617736)))))

(assert (=> d!2287343 (= (derivationStepZipperDown!3173 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) lt!2617736) e!4422500)))

(declare-fun b!7388799 () Bool)

(assert (=> b!7388799 (= e!4422502 (nullable!8421 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))))

(declare-fun bm!680338 () Bool)

(assert (=> bm!680338 (= call!680339 ($colon$colon!3324 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) (ite (or c!1373258 c!1373256) (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))))

(declare-fun b!7388800 () Bool)

(assert (=> b!7388800 (= e!4422500 (store ((as const (Array Context!16614 Bool)) false) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) true))))

(assert (= (and d!2287343 c!1373257) b!7388800))

(assert (= (and d!2287343 (not c!1373257)) b!7388791))

(assert (= (and b!7388791 c!1373255) b!7388794))

(assert (= (and b!7388791 (not c!1373255)) b!7388795))

(assert (= (and b!7388795 res!2979309) b!7388799))

(assert (= (and b!7388795 c!1373258) b!7388793))

(assert (= (and b!7388795 (not c!1373258)) b!7388798))

(assert (= (and b!7388798 c!1373256) b!7388790))

(assert (= (and b!7388798 (not c!1373256)) b!7388797))

(assert (= (and b!7388797 c!1373259) b!7388792))

(assert (= (and b!7388797 (not c!1373259)) b!7388796))

(assert (= (or b!7388790 b!7388792) bm!680337))

(assert (= (or b!7388790 b!7388792) bm!680336))

(assert (= (or b!7388793 bm!680337) bm!680338))

(assert (= (or b!7388793 bm!680336) bm!680333))

(assert (= (or b!7388794 b!7388793) bm!680334))

(assert (= (or b!7388794 bm!680333) bm!680335))

(declare-fun m!8035812 () Bool)

(assert (=> b!7388799 m!8035812))

(declare-fun m!8035814 () Bool)

(assert (=> bm!680335 m!8035814))

(declare-fun m!8035816 () Bool)

(assert (=> bm!680338 m!8035816))

(declare-fun m!8035818 () Bool)

(assert (=> bm!680334 m!8035818))

(declare-fun m!8035820 () Bool)

(assert (=> b!7388800 m!8035820))

(assert (=> bm!680226 d!2287343))

(declare-fun call!680347 () (InoxSet Context!16614))

(declare-fun e!4422514 () (InoxSet Context!16614))

(declare-fun b!7388810 () Bool)

(assert (=> b!7388810 (= e!4422514 ((_ map or) call!680347 (derivationStepZipperUp!2773 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))) lt!2617736)))))

(declare-fun d!2287347 () Bool)

(declare-fun c!1373262 () Bool)

(declare-fun e!4422513 () Bool)

(assert (=> d!2287347 (= c!1373262 e!4422513)))

(declare-fun res!2979315 () Bool)

(assert (=> d!2287347 (=> (not res!2979315) (not e!4422513))))

(assert (=> d!2287347 (= res!2979315 ((_ is Cons!71776) (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))))

(assert (=> d!2287347 (= (derivationStepZipperUp!2773 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) lt!2617736) e!4422514)))

(declare-fun b!7388811 () Bool)

(declare-fun e!4422512 () (InoxSet Context!16614))

(assert (=> b!7388811 (= e!4422512 ((as const (Array Context!16614 Bool)) false))))

(declare-fun b!7388812 () Bool)

(assert (=> b!7388812 (= e!4422512 call!680347)))

(declare-fun b!7388813 () Bool)

(assert (=> b!7388813 (= e!4422513 (nullable!8421 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))))))

(declare-fun bm!680342 () Bool)

(assert (=> bm!680342 (= call!680347 (derivationStepZipperDown!3173 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))) lt!2617736))))

(declare-fun b!7388814 () Bool)

(assert (=> b!7388814 (= e!4422514 e!4422512)))

(declare-fun c!1373263 () Bool)

(assert (=> b!7388814 (= c!1373263 ((_ is Cons!71776) (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))))

(assert (= (and d!2287347 res!2979315) b!7388813))

(assert (= (and d!2287347 c!1373262) b!7388810))

(assert (= (and d!2287347 (not c!1373262)) b!7388814))

(assert (= (and b!7388814 c!1373263) b!7388812))

(assert (= (and b!7388814 (not c!1373263)) b!7388811))

(assert (= (or b!7388810 b!7388812) bm!680342))

(declare-fun m!8035830 () Bool)

(assert (=> b!7388810 m!8035830))

(declare-fun m!8035832 () Bool)

(assert (=> b!7388813 m!8035832))

(declare-fun m!8035834 () Bool)

(assert (=> bm!680342 m!8035834))

(assert (=> b!7388382 d!2287347))

(declare-fun b!7388824 () Bool)

(declare-fun e!4422526 () Bool)

(declare-fun e!4422528 () Bool)

(assert (=> b!7388824 (= e!4422526 e!4422528)))

(declare-fun c!1373267 () Bool)

(assert (=> b!7388824 (= c!1373267 ((_ is Union!19367) (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))))))

(declare-fun d!2287353 () Bool)

(declare-fun res!2979323 () Bool)

(declare-fun e!4422524 () Bool)

(assert (=> d!2287353 (=> res!2979323 e!4422524)))

(assert (=> d!2287353 (= res!2979323 ((_ is ElementMatch!19367) (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))))))

(assert (=> d!2287353 (= (validRegex!9944 (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))) e!4422524)))

(declare-fun b!7388825 () Bool)

(assert (=> b!7388825 (= e!4422524 e!4422526)))

(declare-fun c!1373266 () Bool)

(assert (=> b!7388825 (= c!1373266 ((_ is Star!19367) (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))))))

(declare-fun bm!680346 () Bool)

(declare-fun call!680351 () Bool)

(assert (=> bm!680346 (= call!680351 (validRegex!9944 (ite c!1373267 (regTwo!39247 (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))) (regTwo!39246 (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))))))))

(declare-fun b!7388826 () Bool)

(declare-fun res!2979322 () Bool)

(declare-fun e!4422527 () Bool)

(assert (=> b!7388826 (=> res!2979322 e!4422527)))

(assert (=> b!7388826 (= res!2979322 (not ((_ is Concat!28212) (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))))))

(assert (=> b!7388826 (= e!4422528 e!4422527)))

(declare-fun b!7388827 () Bool)

(declare-fun e!4422525 () Bool)

(assert (=> b!7388827 (= e!4422527 e!4422525)))

(declare-fun res!2979325 () Bool)

(assert (=> b!7388827 (=> (not res!2979325) (not e!4422525))))

(declare-fun call!680352 () Bool)

(assert (=> b!7388827 (= res!2979325 call!680352)))

(declare-fun b!7388828 () Bool)

(declare-fun e!4422523 () Bool)

(assert (=> b!7388828 (= e!4422523 call!680351)))

(declare-fun b!7388829 () Bool)

(declare-fun res!2979324 () Bool)

(assert (=> b!7388829 (=> (not res!2979324) (not e!4422523))))

(assert (=> b!7388829 (= res!2979324 call!680352)))

(assert (=> b!7388829 (= e!4422528 e!4422523)))

(declare-fun b!7388830 () Bool)

(declare-fun e!4422522 () Bool)

(assert (=> b!7388830 (= e!4422526 e!4422522)))

(declare-fun res!2979321 () Bool)

(assert (=> b!7388830 (= res!2979321 (not (nullable!8421 (reg!19696 (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))))))))

(assert (=> b!7388830 (=> (not res!2979321) (not e!4422522))))

(declare-fun bm!680347 () Bool)

(declare-fun call!680353 () Bool)

(assert (=> bm!680347 (= call!680352 call!680353)))

(declare-fun b!7388831 () Bool)

(assert (=> b!7388831 (= e!4422522 call!680353)))

(declare-fun bm!680348 () Bool)

(assert (=> bm!680348 (= call!680353 (validRegex!9944 (ite c!1373266 (reg!19696 (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))) (ite c!1373267 (regOne!39247 (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463))))) (regOne!39246 (ite c!1373172 (regTwo!39247 (h!78224 (exprs!8807 empty!3463))) (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))))))))

(declare-fun b!7388832 () Bool)

(assert (=> b!7388832 (= e!4422525 call!680351)))

(assert (= (and d!2287353 (not res!2979323)) b!7388825))

(assert (= (and b!7388825 c!1373266) b!7388830))

(assert (= (and b!7388825 (not c!1373266)) b!7388824))

(assert (= (and b!7388830 res!2979321) b!7388831))

(assert (= (and b!7388824 c!1373267) b!7388829))

(assert (= (and b!7388824 (not c!1373267)) b!7388826))

(assert (= (and b!7388829 res!2979324) b!7388828))

(assert (= (and b!7388826 (not res!2979322)) b!7388827))

(assert (= (and b!7388827 res!2979325) b!7388832))

(assert (= (or b!7388829 b!7388827) bm!680347))

(assert (= (or b!7388828 b!7388832) bm!680346))

(assert (= (or b!7388831 bm!680347) bm!680348))

(declare-fun m!8035836 () Bool)

(assert (=> bm!680346 m!8035836))

(declare-fun m!8035838 () Bool)

(assert (=> b!7388830 m!8035838))

(declare-fun m!8035840 () Bool)

(assert (=> bm!680348 m!8035840))

(assert (=> bm!680227 d!2287353))

(declare-fun b!7388833 () Bool)

(declare-fun e!4422533 () Bool)

(declare-fun e!4422535 () Bool)

(assert (=> b!7388833 (= e!4422533 e!4422535)))

(declare-fun c!1373269 () Bool)

(assert (=> b!7388833 (= c!1373269 ((_ is Union!19367) (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))))))

(declare-fun d!2287355 () Bool)

(declare-fun res!2979328 () Bool)

(declare-fun e!4422531 () Bool)

(assert (=> d!2287355 (=> res!2979328 e!4422531)))

(assert (=> d!2287355 (= res!2979328 ((_ is ElementMatch!19367) (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))))))

(assert (=> d!2287355 (= (validRegex!9944 (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) e!4422531)))

(declare-fun b!7388834 () Bool)

(assert (=> b!7388834 (= e!4422531 e!4422533)))

(declare-fun c!1373268 () Bool)

(assert (=> b!7388834 (= c!1373268 ((_ is Star!19367) (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))))))

(declare-fun bm!680349 () Bool)

(declare-fun call!680354 () Bool)

(assert (=> bm!680349 (= call!680354 (validRegex!9944 (ite c!1373269 (regTwo!39247 (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) (regTwo!39246 (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))))))))

(declare-fun b!7388835 () Bool)

(declare-fun res!2979327 () Bool)

(declare-fun e!4422534 () Bool)

(assert (=> b!7388835 (=> res!2979327 e!4422534)))

(assert (=> b!7388835 (= res!2979327 (not ((_ is Concat!28212) (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928))))))))))

(assert (=> b!7388835 (= e!4422535 e!4422534)))

(declare-fun b!7388836 () Bool)

(declare-fun e!4422532 () Bool)

(assert (=> b!7388836 (= e!4422534 e!4422532)))

(declare-fun res!2979330 () Bool)

(assert (=> b!7388836 (=> (not res!2979330) (not e!4422532))))

(declare-fun call!680355 () Bool)

(assert (=> b!7388836 (= res!2979330 call!680355)))

(declare-fun b!7388837 () Bool)

(declare-fun e!4422530 () Bool)

(assert (=> b!7388837 (= e!4422530 call!680354)))

(declare-fun b!7388838 () Bool)

(declare-fun res!2979329 () Bool)

(assert (=> b!7388838 (=> (not res!2979329) (not e!4422530))))

(assert (=> b!7388838 (= res!2979329 call!680355)))

(assert (=> b!7388838 (= e!4422535 e!4422530)))

(declare-fun b!7388839 () Bool)

(declare-fun e!4422529 () Bool)

(assert (=> b!7388839 (= e!4422533 e!4422529)))

(declare-fun res!2979326 () Bool)

(assert (=> b!7388839 (= res!2979326 (not (nullable!8421 (reg!19696 (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))))))))

(assert (=> b!7388839 (=> (not res!2979326) (not e!4422529))))

(declare-fun bm!680350 () Bool)

(declare-fun call!680356 () Bool)

(assert (=> bm!680350 (= call!680355 call!680356)))

(declare-fun b!7388840 () Bool)

(assert (=> b!7388840 (= e!4422529 call!680356)))

(declare-fun bm!680351 () Bool)

(assert (=> bm!680351 (= call!680356 (validRegex!9944 (ite c!1373268 (reg!19696 (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) (ite c!1373269 (regOne!39247 (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) (regOne!39246 (ite c!1373164 (reg!19696 (h!78224 (exprs!8807 setElem!55928))) (ite c!1373165 (regOne!39247 (h!78224 (exprs!8807 setElem!55928))) (regOne!39246 (h!78224 (exprs!8807 setElem!55928))))))))))))

(declare-fun b!7388841 () Bool)

(assert (=> b!7388841 (= e!4422532 call!680354)))

(assert (= (and d!2287355 (not res!2979328)) b!7388834))

(assert (= (and b!7388834 c!1373268) b!7388839))

(assert (= (and b!7388834 (not c!1373268)) b!7388833))

(assert (= (and b!7388839 res!2979326) b!7388840))

(assert (= (and b!7388833 c!1373269) b!7388838))

(assert (= (and b!7388833 (not c!1373269)) b!7388835))

(assert (= (and b!7388838 res!2979329) b!7388837))

(assert (= (and b!7388835 (not res!2979327)) b!7388836))

(assert (= (and b!7388836 res!2979330) b!7388841))

(assert (= (or b!7388838 b!7388836) bm!680350))

(assert (= (or b!7388837 b!7388841) bm!680349))

(assert (= (or b!7388840 bm!680350) bm!680351))

(declare-fun m!8035848 () Bool)

(assert (=> bm!680349 m!8035848))

(declare-fun m!8035850 () Bool)

(assert (=> b!7388839 m!8035850))

(declare-fun m!8035852 () Bool)

(assert (=> bm!680351 m!8035852))

(assert (=> bm!680225 d!2287355))

(declare-fun b!7388844 () Bool)

(declare-fun e!4422542 () Bool)

(declare-fun e!4422544 () Bool)

(assert (=> b!7388844 (= e!4422542 e!4422544)))

(declare-fun c!1373271 () Bool)

(assert (=> b!7388844 (= c!1373271 ((_ is Union!19367) (h!78224 (exprs!8807 setElem!55934))))))

(declare-fun d!2287359 () Bool)

(declare-fun res!2979335 () Bool)

(declare-fun e!4422540 () Bool)

(assert (=> d!2287359 (=> res!2979335 e!4422540)))

(assert (=> d!2287359 (= res!2979335 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 setElem!55934))))))

(assert (=> d!2287359 (= (validRegex!9944 (h!78224 (exprs!8807 setElem!55934))) e!4422540)))

(declare-fun b!7388845 () Bool)

(assert (=> b!7388845 (= e!4422540 e!4422542)))

(declare-fun c!1373270 () Bool)

(assert (=> b!7388845 (= c!1373270 ((_ is Star!19367) (h!78224 (exprs!8807 setElem!55934))))))

(declare-fun bm!680352 () Bool)

(declare-fun call!680357 () Bool)

(assert (=> bm!680352 (= call!680357 (validRegex!9944 (ite c!1373271 (regTwo!39247 (h!78224 (exprs!8807 setElem!55934))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55934))))))))

(declare-fun b!7388846 () Bool)

(declare-fun res!2979334 () Bool)

(declare-fun e!4422543 () Bool)

(assert (=> b!7388846 (=> res!2979334 e!4422543)))

(assert (=> b!7388846 (= res!2979334 (not ((_ is Concat!28212) (h!78224 (exprs!8807 setElem!55934)))))))

(assert (=> b!7388846 (= e!4422544 e!4422543)))

(declare-fun b!7388847 () Bool)

(declare-fun e!4422541 () Bool)

(assert (=> b!7388847 (= e!4422543 e!4422541)))

(declare-fun res!2979337 () Bool)

(assert (=> b!7388847 (=> (not res!2979337) (not e!4422541))))

(declare-fun call!680358 () Bool)

(assert (=> b!7388847 (= res!2979337 call!680358)))

(declare-fun b!7388848 () Bool)

(declare-fun e!4422539 () Bool)

(assert (=> b!7388848 (= e!4422539 call!680357)))

(declare-fun b!7388849 () Bool)

(declare-fun res!2979336 () Bool)

(assert (=> b!7388849 (=> (not res!2979336) (not e!4422539))))

(assert (=> b!7388849 (= res!2979336 call!680358)))

(assert (=> b!7388849 (= e!4422544 e!4422539)))

(declare-fun b!7388850 () Bool)

(declare-fun e!4422538 () Bool)

(assert (=> b!7388850 (= e!4422542 e!4422538)))

(declare-fun res!2979333 () Bool)

(assert (=> b!7388850 (= res!2979333 (not (nullable!8421 (reg!19696 (h!78224 (exprs!8807 setElem!55934))))))))

(assert (=> b!7388850 (=> (not res!2979333) (not e!4422538))))

(declare-fun bm!680353 () Bool)

(declare-fun call!680359 () Bool)

(assert (=> bm!680353 (= call!680358 call!680359)))

(declare-fun b!7388851 () Bool)

(assert (=> b!7388851 (= e!4422538 call!680359)))

(declare-fun bm!680354 () Bool)

(assert (=> bm!680354 (= call!680359 (validRegex!9944 (ite c!1373270 (reg!19696 (h!78224 (exprs!8807 setElem!55934))) (ite c!1373271 (regOne!39247 (h!78224 (exprs!8807 setElem!55934))) (regOne!39246 (h!78224 (exprs!8807 setElem!55934)))))))))

(declare-fun b!7388852 () Bool)

(assert (=> b!7388852 (= e!4422541 call!680357)))

(assert (= (and d!2287359 (not res!2979335)) b!7388845))

(assert (= (and b!7388845 c!1373270) b!7388850))

(assert (= (and b!7388845 (not c!1373270)) b!7388844))

(assert (= (and b!7388850 res!2979333) b!7388851))

(assert (= (and b!7388844 c!1373271) b!7388849))

(assert (= (and b!7388844 (not c!1373271)) b!7388846))

(assert (= (and b!7388849 res!2979336) b!7388848))

(assert (= (and b!7388846 (not res!2979334)) b!7388847))

(assert (= (and b!7388847 res!2979337) b!7388852))

(assert (= (or b!7388849 b!7388847) bm!680353))

(assert (= (or b!7388848 b!7388852) bm!680352))

(assert (= (or b!7388851 bm!680353) bm!680354))

(declare-fun m!8035858 () Bool)

(assert (=> bm!680352 m!8035858))

(declare-fun m!8035860 () Bool)

(assert (=> b!7388850 m!8035860))

(declare-fun m!8035862 () Bool)

(assert (=> bm!680354 m!8035862))

(assert (=> bs!1922235 d!2287359))

(declare-fun d!2287363 () Bool)

(declare-fun res!2979338 () Bool)

(declare-fun e!4422545 () Bool)

(assert (=> d!2287363 (=> res!2979338 e!4422545)))

(assert (=> d!2287363 (= res!2979338 ((_ is Nil!71779) (toList!11730 z!3451)))))

(assert (=> d!2287363 (= (forall!18153 (toList!11730 z!3451) lambda!459013) e!4422545)))

(declare-fun b!7388853 () Bool)

(declare-fun e!4422546 () Bool)

(assert (=> b!7388853 (= e!4422545 e!4422546)))

(declare-fun res!2979339 () Bool)

(assert (=> b!7388853 (=> (not res!2979339) (not e!4422546))))

(assert (=> b!7388853 (= res!2979339 (dynLambda!29571 lambda!459013 (h!78227 (toList!11730 z!3451))))))

(declare-fun b!7388854 () Bool)

(assert (=> b!7388854 (= e!4422546 (forall!18153 (t!386456 (toList!11730 z!3451)) lambda!459013))))

(assert (= (and d!2287363 (not res!2979338)) b!7388853))

(assert (= (and b!7388853 res!2979339) b!7388854))

(declare-fun b_lambda!285181 () Bool)

(assert (=> (not b_lambda!285181) (not b!7388853)))

(declare-fun m!8035864 () Bool)

(assert (=> b!7388853 m!8035864))

(declare-fun m!8035866 () Bool)

(assert (=> b!7388854 m!8035866))

(assert (=> d!2287177 d!2287363))

(declare-fun bs!1922297 () Bool)

(declare-fun d!2287365 () Bool)

(assert (= bs!1922297 (and d!2287365 d!2287003)))

(declare-fun lambda!459021 () Int)

(assert (=> bs!1922297 (= lambda!459021 lambda!458994)))

(declare-fun bs!1922298 () Bool)

(assert (= bs!1922298 (and d!2287365 d!2286993)))

(assert (=> bs!1922298 (= lambda!459021 lambda!458993)))

(declare-fun bs!1922300 () Bool)

(assert (= bs!1922300 (and d!2287365 d!2287049)))

(assert (=> bs!1922300 (= lambda!459021 lambda!459005)))

(declare-fun bs!1922301 () Bool)

(assert (= bs!1922301 (and d!2287365 d!2287327)))

(assert (=> bs!1922301 (= lambda!459021 lambda!459017)))

(declare-fun bs!1922303 () Bool)

(assert (= bs!1922303 (and d!2287365 d!2286959)))

(assert (=> bs!1922303 (= lambda!459021 lambda!458983)))

(declare-fun bs!1922304 () Bool)

(assert (= bs!1922304 (and d!2287365 d!2287189)))

(assert (=> bs!1922304 (= lambda!459021 lambda!459014)))

(declare-fun bs!1922305 () Bool)

(assert (= bs!1922305 (and d!2287365 d!2287341)))

(assert (=> bs!1922305 (= lambda!459021 lambda!459019)))

(declare-fun bs!1922306 () Bool)

(assert (= bs!1922306 (and d!2287365 d!2287161)))

(assert (=> bs!1922306 (= lambda!459021 lambda!459012)))

(assert (=> d!2287365 (= (inv!91778 setElem!55945) (forall!18151 (exprs!8807 setElem!55945) lambda!459021))))

(declare-fun bs!1922308 () Bool)

(assert (= bs!1922308 d!2287365))

(declare-fun m!8035870 () Bool)

(assert (=> bs!1922308 m!8035870))

(assert (=> setNonEmpty!55945 d!2287365))

(declare-fun d!2287369 () Bool)

(assert (=> d!2287369 (= (nullable!8421 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))) (nullableFct!3386 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))

(declare-fun bs!1922309 () Bool)

(assert (= bs!1922309 d!2287369))

(declare-fun m!8035872 () Bool)

(assert (=> bs!1922309 m!8035872))

(assert (=> b!7388348 d!2287369))

(declare-fun bm!680358 () Bool)

(declare-fun call!680363 () Bool)

(declare-fun c!1373274 () Bool)

(assert (=> bm!680358 (= call!680363 (nullable!8421 (ite c!1373274 (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(declare-fun b!7388864 () Bool)

(declare-fun e!4422556 () Bool)

(declare-fun e!4422558 () Bool)

(assert (=> b!7388864 (= e!4422556 e!4422558)))

(declare-fun res!2979345 () Bool)

(assert (=> b!7388864 (=> res!2979345 e!4422558)))

(assert (=> b!7388864 (= res!2979345 ((_ is Star!19367) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))

(declare-fun b!7388865 () Bool)

(declare-fun e!4422557 () Bool)

(assert (=> b!7388865 (= e!4422558 e!4422557)))

(assert (=> b!7388865 (= c!1373274 ((_ is Union!19367) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))

(declare-fun d!2287371 () Bool)

(declare-fun res!2979349 () Bool)

(declare-fun e!4422559 () Bool)

(assert (=> d!2287371 (=> res!2979349 e!4422559)))

(assert (=> d!2287371 (= res!2979349 ((_ is EmptyExpr!19367) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))

(assert (=> d!2287371 (= (nullableFct!3386 (regOne!39246 (h!78224 (exprs!8807 c!10532)))) e!4422559)))

(declare-fun b!7388866 () Bool)

(declare-fun e!4422554 () Bool)

(declare-fun call!680364 () Bool)

(assert (=> b!7388866 (= e!4422554 call!680364)))

(declare-fun b!7388867 () Bool)

(assert (=> b!7388867 (= e!4422557 e!4422554)))

(declare-fun res!2979348 () Bool)

(assert (=> b!7388867 (= res!2979348 call!680363)))

(assert (=> b!7388867 (=> res!2979348 e!4422554)))

(declare-fun b!7388868 () Bool)

(assert (=> b!7388868 (= e!4422559 e!4422556)))

(declare-fun res!2979347 () Bool)

(assert (=> b!7388868 (=> (not res!2979347) (not e!4422556))))

(assert (=> b!7388868 (= res!2979347 (and (not ((_ is EmptyLang!19367) (regOne!39246 (h!78224 (exprs!8807 c!10532))))) (not ((_ is ElementMatch!19367) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(declare-fun b!7388869 () Bool)

(declare-fun e!4422555 () Bool)

(assert (=> b!7388869 (= e!4422555 call!680363)))

(declare-fun b!7388870 () Bool)

(assert (=> b!7388870 (= e!4422557 e!4422555)))

(declare-fun res!2979346 () Bool)

(assert (=> b!7388870 (= res!2979346 call!680364)))

(assert (=> b!7388870 (=> (not res!2979346) (not e!4422555))))

(declare-fun bm!680359 () Bool)

(assert (=> bm!680359 (= call!680364 (nullable!8421 (ite c!1373274 (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(assert (= (and d!2287371 (not res!2979349)) b!7388868))

(assert (= (and b!7388868 res!2979347) b!7388864))

(assert (= (and b!7388864 (not res!2979345)) b!7388865))

(assert (= (and b!7388865 c!1373274) b!7388867))

(assert (= (and b!7388865 (not c!1373274)) b!7388870))

(assert (= (and b!7388867 (not res!2979348)) b!7388866))

(assert (= (and b!7388870 res!2979346) b!7388869))

(assert (= (or b!7388866 b!7388870) bm!680359))

(assert (= (or b!7388867 b!7388869) bm!680358))

(declare-fun m!8035874 () Bool)

(assert (=> bm!680358 m!8035874))

(declare-fun m!8035876 () Bool)

(assert (=> bm!680359 m!8035876))

(assert (=> d!2287171 d!2287371))

(declare-fun bs!1922310 () Bool)

(declare-fun d!2287373 () Bool)

(assert (= bs!1922310 (and d!2287373 d!2287003)))

(declare-fun lambda!459022 () Int)

(assert (=> bs!1922310 (= lambda!459022 lambda!458994)))

(declare-fun bs!1922311 () Bool)

(assert (= bs!1922311 (and d!2287373 d!2286993)))

(assert (=> bs!1922311 (= lambda!459022 lambda!458993)))

(declare-fun bs!1922312 () Bool)

(assert (= bs!1922312 (and d!2287373 d!2287365)))

(assert (=> bs!1922312 (= lambda!459022 lambda!459021)))

(declare-fun bs!1922313 () Bool)

(assert (= bs!1922313 (and d!2287373 d!2287049)))

(assert (=> bs!1922313 (= lambda!459022 lambda!459005)))

(declare-fun bs!1922314 () Bool)

(assert (= bs!1922314 (and d!2287373 d!2287327)))

(assert (=> bs!1922314 (= lambda!459022 lambda!459017)))

(declare-fun bs!1922315 () Bool)

(assert (= bs!1922315 (and d!2287373 d!2286959)))

(assert (=> bs!1922315 (= lambda!459022 lambda!458983)))

(declare-fun bs!1922316 () Bool)

(assert (= bs!1922316 (and d!2287373 d!2287189)))

(assert (=> bs!1922316 (= lambda!459022 lambda!459014)))

(declare-fun bs!1922317 () Bool)

(assert (= bs!1922317 (and d!2287373 d!2287341)))

(assert (=> bs!1922317 (= lambda!459022 lambda!459019)))

(declare-fun bs!1922318 () Bool)

(assert (= bs!1922318 (and d!2287373 d!2287161)))

(assert (=> bs!1922318 (= lambda!459022 lambda!459012)))

(assert (=> d!2287373 (= (inv!91778 setElem!55944) (forall!18151 (exprs!8807 setElem!55944) lambda!459022))))

(declare-fun bs!1922319 () Bool)

(assert (= bs!1922319 d!2287373))

(declare-fun m!8035884 () Bool)

(assert (=> bs!1922319 m!8035884))

(assert (=> setNonEmpty!55944 d!2287373))

(declare-fun d!2287377 () Bool)

(assert (=> d!2287377 (= (nullable!8421 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))) (nullableFct!3386 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))

(declare-fun bs!1922320 () Bool)

(assert (= bs!1922320 d!2287377))

(declare-fun m!8035886 () Bool)

(assert (=> bs!1922320 m!8035886))

(assert (=> b!7388306 d!2287377))

(declare-fun d!2287379 () Bool)

(declare-fun res!2979350 () Bool)

(declare-fun e!4422560 () Bool)

(assert (=> d!2287379 (=> res!2979350 e!4422560)))

(assert (=> d!2287379 (= res!2979350 ((_ is Nil!71776) (t!386453 (t!386453 (exprs!8807 setElem!55928)))))))

(assert (=> d!2287379 (= (forall!18151 (t!386453 (t!386453 (exprs!8807 setElem!55928))) lambda!458983) e!4422560)))

(declare-fun b!7388871 () Bool)

(declare-fun e!4422561 () Bool)

(assert (=> b!7388871 (= e!4422560 e!4422561)))

(declare-fun res!2979351 () Bool)

(assert (=> b!7388871 (=> (not res!2979351) (not e!4422561))))

(assert (=> b!7388871 (= res!2979351 (dynLambda!29569 lambda!458983 (h!78224 (t!386453 (t!386453 (exprs!8807 setElem!55928))))))))

(declare-fun b!7388872 () Bool)

(assert (=> b!7388872 (= e!4422561 (forall!18151 (t!386453 (t!386453 (t!386453 (exprs!8807 setElem!55928)))) lambda!458983))))

(assert (= (and d!2287379 (not res!2979350)) b!7388871))

(assert (= (and b!7388871 res!2979351) b!7388872))

(declare-fun b_lambda!285183 () Bool)

(assert (=> (not b_lambda!285183) (not b!7388871)))

(declare-fun m!8035888 () Bool)

(assert (=> b!7388871 m!8035888))

(declare-fun m!8035890 () Bool)

(assert (=> b!7388872 m!8035890))

(assert (=> b!7388375 d!2287379))

(declare-fun b!7388873 () Bool)

(declare-fun e!4422567 () (InoxSet Context!16614))

(declare-fun call!680368 () (InoxSet Context!16614))

(assert (=> b!7388873 (= e!4422567 call!680368)))

(declare-fun b!7388874 () Bool)

(declare-fun e!4422563 () (InoxSet Context!16614))

(declare-fun e!4422566 () (InoxSet Context!16614))

(assert (=> b!7388874 (= e!4422563 e!4422566)))

(declare-fun c!1373275 () Bool)

(assert (=> b!7388874 (= c!1373275 ((_ is Union!19367) (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))))

(declare-fun b!7388875 () Bool)

(declare-fun e!4422564 () (InoxSet Context!16614))

(assert (=> b!7388875 (= e!4422564 call!680368)))

(declare-fun b!7388876 () Bool)

(declare-fun e!4422562 () (InoxSet Context!16614))

(declare-fun call!680367 () (InoxSet Context!16614))

(declare-fun call!680369 () (InoxSet Context!16614))

(assert (=> b!7388876 (= e!4422562 ((_ map or) call!680367 call!680369))))

(declare-fun b!7388877 () Bool)

(declare-fun call!680365 () (InoxSet Context!16614))

(assert (=> b!7388877 (= e!4422566 ((_ map or) call!680367 call!680365))))

(declare-fun b!7388878 () Bool)

(declare-fun c!1373278 () Bool)

(declare-fun e!4422565 () Bool)

(assert (=> b!7388878 (= c!1373278 e!4422565)))

(declare-fun res!2979352 () Bool)

(assert (=> b!7388878 (=> (not res!2979352) (not e!4422565))))

(assert (=> b!7388878 (= res!2979352 ((_ is Concat!28212) (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))))

(assert (=> b!7388878 (= e!4422566 e!4422562)))

(declare-fun bm!680360 () Bool)

(assert (=> bm!680360 (= call!680369 call!680365)))

(declare-fun call!680370 () List!71900)

(declare-fun bm!680362 () Bool)

(declare-fun c!1373276 () Bool)

(assert (=> bm!680362 (= call!680365 (derivationStepZipperDown!3173 (ite c!1373275 (regTwo!39247 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) (ite c!1373278 (regTwo!39246 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) (ite c!1373276 (regOne!39246 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) (reg!19696 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))) (ite (or c!1373275 c!1373278) (ite (or c!1373159 c!1373162) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680227)) (Context!16615 call!680370)) lt!2617736))))

(declare-fun b!7388879 () Bool)

(assert (=> b!7388879 (= e!4422564 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680363 () Bool)

(assert (=> bm!680363 (= call!680368 call!680369)))

(declare-fun b!7388880 () Bool)

(declare-fun c!1373279 () Bool)

(assert (=> b!7388880 (= c!1373279 ((_ is Star!19367) (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))))

(assert (=> b!7388880 (= e!4422567 e!4422564)))

(declare-fun b!7388881 () Bool)

(assert (=> b!7388881 (= e!4422562 e!4422567)))

(assert (=> b!7388881 (= c!1373276 ((_ is Concat!28212) (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))))))

(declare-fun bm!680364 () Bool)

(declare-fun call!680366 () List!71900)

(assert (=> bm!680364 (= call!680370 call!680366)))

(declare-fun bm!680361 () Bool)

(assert (=> bm!680361 (= call!680367 (derivationStepZipperDown!3173 (ite c!1373275 (regOne!39247 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) (regOne!39246 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))) (ite c!1373275 (ite (or c!1373159 c!1373162) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680227)) (Context!16615 call!680366)) lt!2617736))))

(declare-fun c!1373277 () Bool)

(declare-fun d!2287381 () Bool)

(assert (=> d!2287381 (= c!1373277 (and ((_ is ElementMatch!19367) (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) (= (c!1373059 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) lt!2617736)))))

(assert (=> d!2287381 (= (derivationStepZipperDown!3173 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))) (ite (or c!1373159 c!1373162) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680227)) lt!2617736) e!4422563)))

(declare-fun b!7388882 () Bool)

(assert (=> b!7388882 (= e!4422565 (nullable!8421 (regOne!39246 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))))

(declare-fun bm!680365 () Bool)

(assert (=> bm!680365 (= call!680366 ($colon$colon!3324 (exprs!8807 (ite (or c!1373159 c!1373162) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680227))) (ite (or c!1373278 c!1373276) (regTwo!39246 (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))))))) (ite c!1373159 (regTwo!39247 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373162 (regTwo!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (ite c!1373160 (regOne!39246 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (reg!19696 (h!78224 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532))))))))))))))

(declare-fun b!7388883 () Bool)

(assert (=> b!7388883 (= e!4422563 (store ((as const (Array Context!16614 Bool)) false) (ite (or c!1373159 c!1373162) (Context!16615 (t!386453 (exprs!8807 (Context!16615 (t!386453 (exprs!8807 c!10532)))))) (Context!16615 call!680227)) true))))

(assert (= (and d!2287381 c!1373277) b!7388883))

(assert (= (and d!2287381 (not c!1373277)) b!7388874))

(assert (= (and b!7388874 c!1373275) b!7388877))

(assert (= (and b!7388874 (not c!1373275)) b!7388878))

(assert (= (and b!7388878 res!2979352) b!7388882))

(assert (= (and b!7388878 c!1373278) b!7388876))

(assert (= (and b!7388878 (not c!1373278)) b!7388881))

(assert (= (and b!7388881 c!1373276) b!7388873))

(assert (= (and b!7388881 (not c!1373276)) b!7388880))

(assert (= (and b!7388880 c!1373279) b!7388875))

(assert (= (and b!7388880 (not c!1373279)) b!7388879))

(assert (= (or b!7388873 b!7388875) bm!680364))

(assert (= (or b!7388873 b!7388875) bm!680363))

(assert (= (or b!7388876 bm!680364) bm!680365))

(assert (= (or b!7388876 bm!680363) bm!680360))

(assert (= (or b!7388877 b!7388876) bm!680361))

(assert (= (or b!7388877 bm!680360) bm!680362))

(declare-fun m!8035892 () Bool)

(assert (=> b!7388882 m!8035892))

(declare-fun m!8035894 () Bool)

(assert (=> bm!680362 m!8035894))

(declare-fun m!8035896 () Bool)

(assert (=> bm!680365 m!8035896))

(declare-fun m!8035898 () Bool)

(assert (=> bm!680361 m!8035898))

(declare-fun m!8035900 () Bool)

(assert (=> b!7388883 m!8035900))

(assert (=> bm!680219 d!2287381))

(declare-fun d!2287383 () Bool)

(assert (=> d!2287383 (= (nullable!8421 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) (nullableFct!3386 (regOne!39246 (ite c!1373105 (regOne!39247 (h!78224 (exprs!8807 c!10532))) (regOne!39246 (h!78224 (exprs!8807 c!10532)))))))))

(declare-fun bs!1922321 () Bool)

(assert (= bs!1922321 d!2287383))

(declare-fun m!8035902 () Bool)

(assert (=> bs!1922321 m!8035902))

(assert (=> b!7388292 d!2287383))

(declare-fun b!7388884 () Bool)

(declare-fun e!4422572 () Bool)

(declare-fun e!4422574 () Bool)

(assert (=> b!7388884 (= e!4422572 e!4422574)))

(declare-fun c!1373281 () Bool)

(assert (=> b!7388884 (= c!1373281 ((_ is Union!19367) (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))))))

(declare-fun d!2287385 () Bool)

(declare-fun res!2979355 () Bool)

(declare-fun e!4422570 () Bool)

(assert (=> d!2287385 (=> res!2979355 e!4422570)))

(assert (=> d!2287385 (= res!2979355 ((_ is ElementMatch!19367) (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))))))

(assert (=> d!2287385 (= (validRegex!9944 (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))) e!4422570)))

(declare-fun b!7388885 () Bool)

(assert (=> b!7388885 (= e!4422570 e!4422572)))

(declare-fun c!1373280 () Bool)

(assert (=> b!7388885 (= c!1373280 ((_ is Star!19367) (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))))))

(declare-fun call!680371 () Bool)

(declare-fun bm!680366 () Bool)

(assert (=> bm!680366 (= call!680371 (validRegex!9944 (ite c!1373281 (regTwo!39247 (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))) (regTwo!39246 (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))))))))

(declare-fun b!7388886 () Bool)

(declare-fun res!2979354 () Bool)

(declare-fun e!4422573 () Bool)

(assert (=> b!7388886 (=> res!2979354 e!4422573)))

(assert (=> b!7388886 (= res!2979354 (not ((_ is Concat!28212) (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))))))

(assert (=> b!7388886 (= e!4422574 e!4422573)))

(declare-fun b!7388887 () Bool)

(declare-fun e!4422571 () Bool)

(assert (=> b!7388887 (= e!4422573 e!4422571)))

(declare-fun res!2979357 () Bool)

(assert (=> b!7388887 (=> (not res!2979357) (not e!4422571))))

(declare-fun call!680372 () Bool)

(assert (=> b!7388887 (= res!2979357 call!680372)))

(declare-fun b!7388888 () Bool)

(declare-fun e!4422569 () Bool)

(assert (=> b!7388888 (= e!4422569 call!680371)))

(declare-fun b!7388889 () Bool)

(declare-fun res!2979356 () Bool)

(assert (=> b!7388889 (=> (not res!2979356) (not e!4422569))))

(assert (=> b!7388889 (= res!2979356 call!680372)))

(assert (=> b!7388889 (= e!4422574 e!4422569)))

(declare-fun b!7388890 () Bool)

(declare-fun e!4422568 () Bool)

(assert (=> b!7388890 (= e!4422572 e!4422568)))

(declare-fun res!2979353 () Bool)

(assert (=> b!7388890 (= res!2979353 (not (nullable!8421 (reg!19696 (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))))))))

(assert (=> b!7388890 (=> (not res!2979353) (not e!4422568))))

(declare-fun bm!680367 () Bool)

(declare-fun call!680373 () Bool)

(assert (=> bm!680367 (= call!680372 call!680373)))

(declare-fun b!7388891 () Bool)

(assert (=> b!7388891 (= e!4422568 call!680373)))

(declare-fun bm!680368 () Bool)

(assert (=> bm!680368 (= call!680373 (validRegex!9944 (ite c!1373280 (reg!19696 (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))) (ite c!1373281 (regOne!39247 (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928))))) (regOne!39246 (ite c!1373165 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928))) (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))))))))

(declare-fun b!7388892 () Bool)

(assert (=> b!7388892 (= e!4422571 call!680371)))

(assert (= (and d!2287385 (not res!2979355)) b!7388885))

(assert (= (and b!7388885 c!1373280) b!7388890))

(assert (= (and b!7388885 (not c!1373280)) b!7388884))

(assert (= (and b!7388890 res!2979353) b!7388891))

(assert (= (and b!7388884 c!1373281) b!7388889))

(assert (= (and b!7388884 (not c!1373281)) b!7388886))

(assert (= (and b!7388889 res!2979356) b!7388888))

(assert (= (and b!7388886 (not res!2979354)) b!7388887))

(assert (= (and b!7388887 res!2979357) b!7388892))

(assert (= (or b!7388889 b!7388887) bm!680367))

(assert (= (or b!7388888 b!7388892) bm!680366))

(assert (= (or b!7388891 bm!680367) bm!680368))

(declare-fun m!8035904 () Bool)

(assert (=> bm!680366 m!8035904))

(declare-fun m!8035906 () Bool)

(assert (=> b!7388890 m!8035906))

(declare-fun m!8035908 () Bool)

(assert (=> bm!680368 m!8035908))

(assert (=> bm!680223 d!2287385))

(declare-fun d!2287387 () Bool)

(declare-fun lt!2617769 () Bool)

(assert (=> d!2287387 (= lt!2617769 (select (content!15205 (t!386456 lt!2617758)) (h!78227 lt!2617758)))))

(declare-fun e!4422588 () Bool)

(assert (=> d!2287387 (= lt!2617769 e!4422588)))

(declare-fun res!2979371 () Bool)

(assert (=> d!2287387 (=> (not res!2979371) (not e!4422588))))

(assert (=> d!2287387 (= res!2979371 ((_ is Cons!71779) (t!386456 lt!2617758)))))

(assert (=> d!2287387 (= (contains!20837 (t!386456 lt!2617758) (h!78227 lt!2617758)) lt!2617769)))

(declare-fun b!7388905 () Bool)

(declare-fun e!4422587 () Bool)

(assert (=> b!7388905 (= e!4422588 e!4422587)))

(declare-fun res!2979370 () Bool)

(assert (=> b!7388905 (=> res!2979370 e!4422587)))

(assert (=> b!7388905 (= res!2979370 (= (h!78227 (t!386456 lt!2617758)) (h!78227 lt!2617758)))))

(declare-fun b!7388906 () Bool)

(assert (=> b!7388906 (= e!4422587 (contains!20837 (t!386456 (t!386456 lt!2617758)) (h!78227 lt!2617758)))))

(assert (= (and d!2287387 res!2979371) b!7388905))

(assert (= (and b!7388905 (not res!2979370)) b!7388906))

(assert (=> d!2287387 m!8035468))

(declare-fun m!8035918 () Bool)

(assert (=> d!2287387 m!8035918))

(declare-fun m!8035920 () Bool)

(assert (=> b!7388906 m!8035920))

(assert (=> b!7388354 d!2287387))

(declare-fun b!7388909 () Bool)

(declare-fun e!4422594 () Bool)

(declare-fun e!4422596 () Bool)

(assert (=> b!7388909 (= e!4422594 e!4422596)))

(declare-fun c!1373284 () Bool)

(assert (=> b!7388909 (= c!1373284 ((_ is Union!19367) (h!78224 (t!386453 (exprs!8807 c!10532)))))))

(declare-fun d!2287395 () Bool)

(declare-fun res!2979374 () Bool)

(declare-fun e!4422592 () Bool)

(assert (=> d!2287395 (=> res!2979374 e!4422592)))

(assert (=> d!2287395 (= res!2979374 ((_ is ElementMatch!19367) (h!78224 (t!386453 (exprs!8807 c!10532)))))))

(assert (=> d!2287395 (= (validRegex!9944 (h!78224 (t!386453 (exprs!8807 c!10532)))) e!4422592)))

(declare-fun b!7388910 () Bool)

(assert (=> b!7388910 (= e!4422592 e!4422594)))

(declare-fun c!1373283 () Bool)

(assert (=> b!7388910 (= c!1373283 ((_ is Star!19367) (h!78224 (t!386453 (exprs!8807 c!10532)))))))

(declare-fun bm!680369 () Bool)

(declare-fun call!680374 () Bool)

(assert (=> bm!680369 (= call!680374 (validRegex!9944 (ite c!1373284 (regTwo!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))))))

(declare-fun b!7388911 () Bool)

(declare-fun res!2979373 () Bool)

(declare-fun e!4422595 () Bool)

(assert (=> b!7388911 (=> res!2979373 e!4422595)))

(assert (=> b!7388911 (= res!2979373 (not ((_ is Concat!28212) (h!78224 (t!386453 (exprs!8807 c!10532))))))))

(assert (=> b!7388911 (= e!4422596 e!4422595)))

(declare-fun b!7388912 () Bool)

(declare-fun e!4422593 () Bool)

(assert (=> b!7388912 (= e!4422595 e!4422593)))

(declare-fun res!2979376 () Bool)

(assert (=> b!7388912 (=> (not res!2979376) (not e!4422593))))

(declare-fun call!680375 () Bool)

(assert (=> b!7388912 (= res!2979376 call!680375)))

(declare-fun b!7388913 () Bool)

(declare-fun e!4422591 () Bool)

(assert (=> b!7388913 (= e!4422591 call!680374)))

(declare-fun b!7388914 () Bool)

(declare-fun res!2979375 () Bool)

(assert (=> b!7388914 (=> (not res!2979375) (not e!4422591))))

(assert (=> b!7388914 (= res!2979375 call!680375)))

(assert (=> b!7388914 (= e!4422596 e!4422591)))

(declare-fun b!7388915 () Bool)

(declare-fun e!4422590 () Bool)

(assert (=> b!7388915 (= e!4422594 e!4422590)))

(declare-fun res!2979372 () Bool)

(assert (=> b!7388915 (= res!2979372 (not (nullable!8421 (reg!19696 (h!78224 (t!386453 (exprs!8807 c!10532)))))))))

(assert (=> b!7388915 (=> (not res!2979372) (not e!4422590))))

(declare-fun bm!680370 () Bool)

(declare-fun call!680376 () Bool)

(assert (=> bm!680370 (= call!680375 call!680376)))

(declare-fun b!7388916 () Bool)

(assert (=> b!7388916 (= e!4422590 call!680376)))

(declare-fun bm!680371 () Bool)

(assert (=> bm!680371 (= call!680376 (validRegex!9944 (ite c!1373283 (reg!19696 (h!78224 (t!386453 (exprs!8807 c!10532)))) (ite c!1373284 (regOne!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))) (regOne!39246 (h!78224 (t!386453 (exprs!8807 c!10532))))))))))

(declare-fun b!7388917 () Bool)

(assert (=> b!7388917 (= e!4422593 call!680374)))

(assert (= (and d!2287395 (not res!2979374)) b!7388910))

(assert (= (and b!7388910 c!1373283) b!7388915))

(assert (= (and b!7388910 (not c!1373283)) b!7388909))

(assert (= (and b!7388915 res!2979372) b!7388916))

(assert (= (and b!7388909 c!1373284) b!7388914))

(assert (= (and b!7388909 (not c!1373284)) b!7388911))

(assert (= (and b!7388914 res!2979375) b!7388913))

(assert (= (and b!7388911 (not res!2979373)) b!7388912))

(assert (= (and b!7388912 res!2979376) b!7388917))

(assert (= (or b!7388914 b!7388912) bm!680370))

(assert (= (or b!7388913 b!7388917) bm!680369))

(assert (= (or b!7388916 bm!680370) bm!680371))

(declare-fun m!8035928 () Bool)

(assert (=> bm!680369 m!8035928))

(declare-fun m!8035930 () Bool)

(assert (=> b!7388915 m!8035930))

(declare-fun m!8035932 () Bool)

(assert (=> bm!680371 m!8035932))

(assert (=> bs!1922238 d!2287395))

(declare-fun d!2287401 () Bool)

(declare-fun res!2979379 () Bool)

(declare-fun e!4422599 () Bool)

(assert (=> d!2287401 (=> res!2979379 e!4422599)))

(assert (=> d!2287401 (= res!2979379 ((_ is Nil!71776) (t!386453 (exprs!8807 setElem!55934))))))

(assert (=> d!2287401 (= (forall!18151 (t!386453 (exprs!8807 setElem!55934)) lambda!459005) e!4422599)))

(declare-fun b!7388920 () Bool)

(declare-fun e!4422600 () Bool)

(assert (=> b!7388920 (= e!4422599 e!4422600)))

(declare-fun res!2979380 () Bool)

(assert (=> b!7388920 (=> (not res!2979380) (not e!4422600))))

(assert (=> b!7388920 (= res!2979380 (dynLambda!29569 lambda!459005 (h!78224 (t!386453 (exprs!8807 setElem!55934)))))))

(declare-fun b!7388921 () Bool)

(assert (=> b!7388921 (= e!4422600 (forall!18151 (t!386453 (t!386453 (exprs!8807 setElem!55934))) lambda!459005))))

(assert (= (and d!2287401 (not res!2979379)) b!7388920))

(assert (= (and b!7388920 res!2979380) b!7388921))

(declare-fun b_lambda!285189 () Bool)

(assert (=> (not b_lambda!285189) (not b!7388920)))

(declare-fun m!8035936 () Bool)

(assert (=> b!7388920 m!8035936))

(declare-fun m!8035940 () Bool)

(assert (=> b!7388921 m!8035940))

(assert (=> b!7388404 d!2287401))

(declare-fun d!2287405 () Bool)

(assert (=> d!2287405 (= (nullable!8421 (reg!19696 (h!78224 (exprs!8807 c!10532)))) (nullableFct!3386 (reg!19696 (h!78224 (exprs!8807 c!10532)))))))

(declare-fun bs!1922323 () Bool)

(assert (= bs!1922323 d!2287405))

(declare-fun m!8035942 () Bool)

(assert (=> bs!1922323 m!8035942))

(assert (=> b!7388332 d!2287405))

(declare-fun b!7388930 () Bool)

(declare-fun e!4422612 () (InoxSet Context!16614))

(declare-fun call!680386 () (InoxSet Context!16614))

(assert (=> b!7388930 (= e!4422612 call!680386)))

(declare-fun b!7388931 () Bool)

(declare-fun e!4422608 () (InoxSet Context!16614))

(declare-fun e!4422611 () (InoxSet Context!16614))

(assert (=> b!7388931 (= e!4422608 e!4422611)))

(declare-fun c!1373288 () Bool)

(assert (=> b!7388931 (= c!1373288 ((_ is Union!19367) (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))))))

(declare-fun b!7388932 () Bool)

(declare-fun e!4422609 () (InoxSet Context!16614))

(assert (=> b!7388932 (= e!4422609 call!680386)))

(declare-fun b!7388933 () Bool)

(declare-fun e!4422606 () (InoxSet Context!16614))

(declare-fun call!680382 () (InoxSet Context!16614))

(declare-fun call!680387 () (InoxSet Context!16614))

(assert (=> b!7388933 (= e!4422606 ((_ map or) call!680382 call!680387))))

(declare-fun b!7388934 () Bool)

(declare-fun call!680379 () (InoxSet Context!16614))

(assert (=> b!7388934 (= e!4422611 ((_ map or) call!680382 call!680379))))

(declare-fun b!7388935 () Bool)

(declare-fun c!1373293 () Bool)

(declare-fun e!4422610 () Bool)

(assert (=> b!7388935 (= c!1373293 e!4422610)))

(declare-fun res!2979382 () Bool)

(assert (=> b!7388935 (=> (not res!2979382) (not e!4422610))))

(assert (=> b!7388935 (= res!2979382 ((_ is Concat!28212) (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))))))

(assert (=> b!7388935 (= e!4422611 e!4422606)))

(declare-fun bm!680376 () Bool)

(assert (=> bm!680376 (= call!680387 call!680379)))

(declare-fun bm!680378 () Bool)

(declare-fun c!1373289 () Bool)

(declare-fun call!680388 () List!71900)

(assert (=> bm!680378 (= call!680379 (derivationStepZipperDown!3173 (ite c!1373288 (regTwo!39247 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))) (ite c!1373293 (regTwo!39246 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))) (ite c!1373289 (regOne!39246 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))) (reg!19696 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))))) (ite (or c!1373288 c!1373293) (ite (or c!1373148 c!1373151) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680212)) (Context!16615 call!680388)) lt!2617736))))

(declare-fun b!7388936 () Bool)

(assert (=> b!7388936 (= e!4422609 ((as const (Array Context!16614 Bool)) false))))

(declare-fun bm!680379 () Bool)

(assert (=> bm!680379 (= call!680386 call!680387)))

(declare-fun b!7388938 () Bool)

(declare-fun c!1373294 () Bool)

(assert (=> b!7388938 (= c!1373294 ((_ is Star!19367) (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))))))

(assert (=> b!7388938 (= e!4422612 e!4422609)))

(declare-fun b!7388939 () Bool)

(assert (=> b!7388939 (= e!4422606 e!4422612)))

(assert (=> b!7388939 (= c!1373289 ((_ is Concat!28212) (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))))))

(declare-fun bm!680380 () Bool)

(declare-fun call!680381 () List!71900)

(assert (=> bm!680380 (= call!680388 call!680381)))

(declare-fun bm!680377 () Bool)

(assert (=> bm!680377 (= call!680382 (derivationStepZipperDown!3173 (ite c!1373288 (regOne!39247 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))) (regOne!39246 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))) (ite c!1373288 (ite (or c!1373148 c!1373151) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680212)) (Context!16615 call!680381)) lt!2617736))))

(declare-fun c!1373290 () Bool)

(declare-fun d!2287407 () Bool)

(assert (=> d!2287407 (= c!1373290 (and ((_ is ElementMatch!19367) (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))) (= (c!1373059 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))) lt!2617736)))))

(assert (=> d!2287407 (= (derivationStepZipperDown!3173 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))) (ite (or c!1373148 c!1373151) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680212)) lt!2617736) e!4422608)))

(declare-fun b!7388940 () Bool)

(assert (=> b!7388940 (= e!4422610 (nullable!8421 (regOne!39246 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))))))

(declare-fun bm!680381 () Bool)

(assert (=> bm!680381 (= call!680381 ($colon$colon!3324 (exprs!8807 (ite (or c!1373148 c!1373151) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680212))) (ite (or c!1373293 c!1373289) (regTwo!39246 (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))))))) (ite c!1373148 (regTwo!39247 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373151 (regTwo!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (ite c!1373149 (regOne!39246 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532))))))) (reg!19696 (ite c!1373105 (regTwo!39247 (h!78224 (exprs!8807 c!10532))) (ite c!1373108 (regTwo!39246 (h!78224 (exprs!8807 c!10532))) (ite c!1373106 (regOne!39246 (h!78224 (exprs!8807 c!10532))) (reg!19696 (h!78224 (exprs!8807 c!10532)))))))))))))))

(declare-fun b!7388941 () Bool)

(assert (=> b!7388941 (= e!4422608 (store ((as const (Array Context!16614 Bool)) false) (ite (or c!1373148 c!1373151) (ite (or c!1373105 c!1373108) (Context!16615 (t!386453 (exprs!8807 c!10532))) (Context!16615 call!680160)) (Context!16615 call!680212)) true))))

(assert (= (and d!2287407 c!1373290) b!7388941))

(assert (= (and d!2287407 (not c!1373290)) b!7388931))

(assert (= (and b!7388931 c!1373288) b!7388934))

(assert (= (and b!7388931 (not c!1373288)) b!7388935))

(assert (= (and b!7388935 res!2979382) b!7388940))

(assert (= (and b!7388935 c!1373293) b!7388933))

(assert (= (and b!7388935 (not c!1373293)) b!7388939))

(assert (= (and b!7388939 c!1373289) b!7388930))

(assert (= (and b!7388939 (not c!1373289)) b!7388938))

(assert (= (and b!7388938 c!1373294) b!7388932))

(assert (= (and b!7388938 (not c!1373294)) b!7388936))

(assert (= (or b!7388930 b!7388932) bm!680380))

(assert (= (or b!7388930 b!7388932) bm!680379))

(assert (= (or b!7388933 bm!680380) bm!680381))

(assert (= (or b!7388933 bm!680379) bm!680376))

(assert (= (or b!7388934 b!7388933) bm!680377))

(assert (= (or b!7388934 bm!680376) bm!680378))

(declare-fun m!8035946 () Bool)

(assert (=> b!7388940 m!8035946))

(declare-fun m!8035952 () Bool)

(assert (=> bm!680378 m!8035952))

(declare-fun m!8035956 () Bool)

(assert (=> bm!680381 m!8035956))

(declare-fun m!8035960 () Bool)

(assert (=> bm!680377 m!8035960))

(declare-fun m!8035964 () Bool)

(assert (=> b!7388941 m!8035964))

(assert (=> bm!680204 d!2287407))

(declare-fun b!7388944 () Bool)

(declare-fun e!4422613 () Bool)

(declare-fun tp!2103214 () Bool)

(declare-fun tp!2103215 () Bool)

(assert (=> b!7388944 (= e!4422613 (and tp!2103214 tp!2103215))))

(assert (=> b!7388502 (= tp!2103198 e!4422613)))

(assert (= (and b!7388502 ((_ is Cons!71776) (exprs!8807 setElem!55946))) b!7388944))

(declare-fun b!7388946 () Bool)

(declare-fun e!4422614 () Bool)

(declare-fun tp!2103218 () Bool)

(declare-fun tp!2103220 () Bool)

(assert (=> b!7388946 (= e!4422614 (and tp!2103218 tp!2103220))))

(declare-fun b!7388947 () Bool)

(declare-fun tp!2103219 () Bool)

(assert (=> b!7388947 (= e!4422614 tp!2103219)))

(assert (=> b!7388496 (= tp!2103191 e!4422614)))

(declare-fun b!7388948 () Bool)

(declare-fun tp!2103216 () Bool)

(declare-fun tp!2103217 () Bool)

(assert (=> b!7388948 (= e!4422614 (and tp!2103216 tp!2103217))))

(declare-fun b!7388945 () Bool)

(assert (=> b!7388945 (= e!4422614 tp_is_empty!48997)))

(assert (= (and b!7388496 ((_ is ElementMatch!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7388945))

(assert (= (and b!7388496 ((_ is Concat!28212) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7388946))

(assert (= (and b!7388496 ((_ is Star!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7388947))

(assert (= (and b!7388496 ((_ is Union!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7388948))

(declare-fun b!7388950 () Bool)

(declare-fun e!4422615 () Bool)

(declare-fun tp!2103223 () Bool)

(declare-fun tp!2103225 () Bool)

(assert (=> b!7388950 (= e!4422615 (and tp!2103223 tp!2103225))))

(declare-fun b!7388951 () Bool)

(declare-fun tp!2103224 () Bool)

(assert (=> b!7388951 (= e!4422615 tp!2103224)))

(assert (=> b!7388448 (= tp!2103124 e!4422615)))

(declare-fun b!7388952 () Bool)

(declare-fun tp!2103221 () Bool)

(declare-fun tp!2103222 () Bool)

(assert (=> b!7388952 (= e!4422615 (and tp!2103221 tp!2103222))))

(declare-fun b!7388949 () Bool)

(assert (=> b!7388949 (= e!4422615 tp_is_empty!48997)))

(assert (= (and b!7388448 ((_ is ElementMatch!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388949))

(assert (= (and b!7388448 ((_ is Concat!28212) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388950))

(assert (= (and b!7388448 ((_ is Star!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388951))

(assert (= (and b!7388448 ((_ is Union!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388952))

(declare-fun b!7388954 () Bool)

(declare-fun e!4422616 () Bool)

(declare-fun tp!2103228 () Bool)

(declare-fun tp!2103230 () Bool)

(assert (=> b!7388954 (= e!4422616 (and tp!2103228 tp!2103230))))

(declare-fun b!7388955 () Bool)

(declare-fun tp!2103229 () Bool)

(assert (=> b!7388955 (= e!4422616 tp!2103229)))

(assert (=> b!7388448 (= tp!2103125 e!4422616)))

(declare-fun b!7388956 () Bool)

(declare-fun tp!2103226 () Bool)

(declare-fun tp!2103227 () Bool)

(assert (=> b!7388956 (= e!4422616 (and tp!2103226 tp!2103227))))

(declare-fun b!7388953 () Bool)

(assert (=> b!7388953 (= e!4422616 tp_is_empty!48997)))

(assert (= (and b!7388448 ((_ is ElementMatch!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388953))

(assert (= (and b!7388448 ((_ is Concat!28212) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388954))

(assert (= (and b!7388448 ((_ is Star!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388955))

(assert (= (and b!7388448 ((_ is Union!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388956))

(declare-fun b!7388958 () Bool)

(declare-fun e!4422617 () Bool)

(declare-fun tp!2103233 () Bool)

(declare-fun tp!2103235 () Bool)

(assert (=> b!7388958 (= e!4422617 (and tp!2103233 tp!2103235))))

(declare-fun b!7388959 () Bool)

(declare-fun tp!2103234 () Bool)

(assert (=> b!7388959 (= e!4422617 tp!2103234)))

(assert (=> b!7388456 (= tp!2103139 e!4422617)))

(declare-fun b!7388960 () Bool)

(declare-fun tp!2103231 () Bool)

(declare-fun tp!2103232 () Bool)

(assert (=> b!7388960 (= e!4422617 (and tp!2103231 tp!2103232))))

(declare-fun b!7388957 () Bool)

(assert (=> b!7388957 (= e!4422617 tp_is_empty!48997)))

(assert (= (and b!7388456 ((_ is ElementMatch!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7388957))

(assert (= (and b!7388456 ((_ is Concat!28212) (reg!19696 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7388958))

(assert (= (and b!7388456 ((_ is Star!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7388959))

(assert (= (and b!7388456 ((_ is Union!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7388960))

(declare-fun b!7388962 () Bool)

(declare-fun e!4422618 () Bool)

(declare-fun tp!2103238 () Bool)

(declare-fun tp!2103240 () Bool)

(assert (=> b!7388962 (= e!4422618 (and tp!2103238 tp!2103240))))

(declare-fun b!7388963 () Bool)

(declare-fun tp!2103239 () Bool)

(assert (=> b!7388963 (= e!4422618 tp!2103239)))

(assert (=> b!7388446 (= tp!2103126 e!4422618)))

(declare-fun b!7388964 () Bool)

(declare-fun tp!2103236 () Bool)

(declare-fun tp!2103237 () Bool)

(assert (=> b!7388964 (= e!4422618 (and tp!2103236 tp!2103237))))

(declare-fun b!7388961 () Bool)

(assert (=> b!7388961 (= e!4422618 tp_is_empty!48997)))

(assert (= (and b!7388446 ((_ is ElementMatch!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388961))

(assert (= (and b!7388446 ((_ is Concat!28212) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388962))

(assert (= (and b!7388446 ((_ is Star!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388963))

(assert (= (and b!7388446 ((_ is Union!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388964))

(declare-fun b!7388966 () Bool)

(declare-fun e!4422619 () Bool)

(declare-fun tp!2103243 () Bool)

(declare-fun tp!2103245 () Bool)

(assert (=> b!7388966 (= e!4422619 (and tp!2103243 tp!2103245))))

(declare-fun b!7388967 () Bool)

(declare-fun tp!2103244 () Bool)

(assert (=> b!7388967 (= e!4422619 tp!2103244)))

(assert (=> b!7388446 (= tp!2103128 e!4422619)))

(declare-fun b!7388968 () Bool)

(declare-fun tp!2103241 () Bool)

(declare-fun tp!2103242 () Bool)

(assert (=> b!7388968 (= e!4422619 (and tp!2103241 tp!2103242))))

(declare-fun b!7388965 () Bool)

(assert (=> b!7388965 (= e!4422619 tp_is_empty!48997)))

(assert (= (and b!7388446 ((_ is ElementMatch!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388965))

(assert (= (and b!7388446 ((_ is Concat!28212) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388966))

(assert (= (and b!7388446 ((_ is Star!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388967))

(assert (= (and b!7388446 ((_ is Union!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7388968))

(declare-fun b!7388970 () Bool)

(declare-fun e!4422620 () Bool)

(declare-fun tp!2103248 () Bool)

(declare-fun tp!2103250 () Bool)

(assert (=> b!7388970 (= e!4422620 (and tp!2103248 tp!2103250))))

(declare-fun b!7388971 () Bool)

(declare-fun tp!2103249 () Bool)

(assert (=> b!7388971 (= e!4422620 tp!2103249)))

(assert (=> b!7388487 (= tp!2103180 e!4422620)))

(declare-fun b!7388972 () Bool)

(declare-fun tp!2103246 () Bool)

(declare-fun tp!2103247 () Bool)

(assert (=> b!7388972 (= e!4422620 (and tp!2103246 tp!2103247))))

(declare-fun b!7388969 () Bool)

(assert (=> b!7388969 (= e!4422620 tp_is_empty!48997)))

(assert (= (and b!7388487 ((_ is ElementMatch!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7388969))

(assert (= (and b!7388487 ((_ is Concat!28212) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7388970))

(assert (= (and b!7388487 ((_ is Star!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7388971))

(assert (= (and b!7388487 ((_ is Union!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7388972))

(declare-fun b!7388974 () Bool)

(declare-fun e!4422621 () Bool)

(declare-fun tp!2103253 () Bool)

(declare-fun tp!2103255 () Bool)

(assert (=> b!7388974 (= e!4422621 (and tp!2103253 tp!2103255))))

(declare-fun b!7388975 () Bool)

(declare-fun tp!2103254 () Bool)

(assert (=> b!7388975 (= e!4422621 tp!2103254)))

(assert (=> b!7388509 (= tp!2103208 e!4422621)))

(declare-fun b!7388976 () Bool)

(declare-fun tp!2103251 () Bool)

(declare-fun tp!2103252 () Bool)

(assert (=> b!7388976 (= e!4422621 (and tp!2103251 tp!2103252))))

(declare-fun b!7388973 () Bool)

(assert (=> b!7388973 (= e!4422621 tp_is_empty!48997)))

(assert (= (and b!7388509 ((_ is ElementMatch!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7388973))

(assert (= (and b!7388509 ((_ is Concat!28212) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7388974))

(assert (= (and b!7388509 ((_ is Star!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7388975))

(assert (= (and b!7388509 ((_ is Union!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7388976))

(declare-fun b!7388977 () Bool)

(declare-fun e!4422622 () Bool)

(declare-fun tp!2103256 () Bool)

(declare-fun tp!2103257 () Bool)

(assert (=> b!7388977 (= e!4422622 (and tp!2103256 tp!2103257))))

(assert (=> b!7388296 (= tp!2103090 e!4422622)))

(assert (= (and b!7388296 ((_ is Cons!71776) (exprs!8807 setElem!55944))) b!7388977))

(declare-fun b!7388979 () Bool)

(declare-fun e!4422623 () Bool)

(declare-fun tp!2103260 () Bool)

(declare-fun tp!2103262 () Bool)

(assert (=> b!7388979 (= e!4422623 (and tp!2103260 tp!2103262))))

(declare-fun b!7388980 () Bool)

(declare-fun tp!2103261 () Bool)

(assert (=> b!7388980 (= e!4422623 tp!2103261)))

(assert (=> b!7388430 (= tp!2103100 e!4422623)))

(declare-fun b!7388981 () Bool)

(declare-fun tp!2103258 () Bool)

(declare-fun tp!2103259 () Bool)

(assert (=> b!7388981 (= e!4422623 (and tp!2103258 tp!2103259))))

(declare-fun b!7388978 () Bool)

(assert (=> b!7388978 (= e!4422623 tp_is_empty!48997)))

(assert (= (and b!7388430 ((_ is ElementMatch!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7388978))

(assert (= (and b!7388430 ((_ is Concat!28212) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7388979))

(assert (= (and b!7388430 ((_ is Star!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7388980))

(assert (= (and b!7388430 ((_ is Union!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7388981))

(declare-fun b!7388983 () Bool)

(declare-fun e!4422624 () Bool)

(declare-fun tp!2103265 () Bool)

(declare-fun tp!2103267 () Bool)

(assert (=> b!7388983 (= e!4422624 (and tp!2103265 tp!2103267))))

(declare-fun b!7388984 () Bool)

(declare-fun tp!2103266 () Bool)

(assert (=> b!7388984 (= e!4422624 tp!2103266)))

(assert (=> b!7388430 (= tp!2103101 e!4422624)))

(declare-fun b!7388985 () Bool)

(declare-fun tp!2103263 () Bool)

(declare-fun tp!2103264 () Bool)

(assert (=> b!7388985 (= e!4422624 (and tp!2103263 tp!2103264))))

(declare-fun b!7388982 () Bool)

(assert (=> b!7388982 (= e!4422624 tp_is_empty!48997)))

(assert (= (and b!7388430 ((_ is ElementMatch!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7388982))

(assert (= (and b!7388430 ((_ is Concat!28212) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7388983))

(assert (= (and b!7388430 ((_ is Star!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7388984))

(assert (= (and b!7388430 ((_ is Union!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7388985))

(declare-fun b!7388987 () Bool)

(declare-fun e!4422625 () Bool)

(declare-fun tp!2103270 () Bool)

(declare-fun tp!2103272 () Bool)

(assert (=> b!7388987 (= e!4422625 (and tp!2103270 tp!2103272))))

(declare-fun b!7388988 () Bool)

(declare-fun tp!2103271 () Bool)

(assert (=> b!7388988 (= e!4422625 tp!2103271)))

(assert (=> b!7388462 (= tp!2103143 e!4422625)))

(declare-fun b!7388989 () Bool)

(declare-fun tp!2103268 () Bool)

(declare-fun tp!2103269 () Bool)

(assert (=> b!7388989 (= e!4422625 (and tp!2103268 tp!2103269))))

(declare-fun b!7388986 () Bool)

(assert (=> b!7388986 (= e!4422625 tp_is_empty!48997)))

(assert (= (and b!7388462 ((_ is ElementMatch!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7388986))

(assert (= (and b!7388462 ((_ is Concat!28212) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7388987))

(assert (= (and b!7388462 ((_ is Star!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7388988))

(assert (= (and b!7388462 ((_ is Union!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7388989))

(declare-fun b!7388991 () Bool)

(declare-fun e!4422626 () Bool)

(declare-fun tp!2103275 () Bool)

(declare-fun tp!2103277 () Bool)

(assert (=> b!7388991 (= e!4422626 (and tp!2103275 tp!2103277))))

(declare-fun b!7388992 () Bool)

(declare-fun tp!2103276 () Bool)

(assert (=> b!7388992 (= e!4422626 tp!2103276)))

(assert (=> b!7388462 (= tp!2103144 e!4422626)))

(declare-fun b!7388993 () Bool)

(declare-fun tp!2103273 () Bool)

(declare-fun tp!2103274 () Bool)

(assert (=> b!7388993 (= e!4422626 (and tp!2103273 tp!2103274))))

(declare-fun b!7388990 () Bool)

(assert (=> b!7388990 (= e!4422626 tp_is_empty!48997)))

(assert (= (and b!7388462 ((_ is ElementMatch!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7388990))

(assert (= (and b!7388462 ((_ is Concat!28212) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7388991))

(assert (= (and b!7388462 ((_ is Star!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7388992))

(assert (= (and b!7388462 ((_ is Union!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7388993))

(declare-fun b!7388995 () Bool)

(declare-fun e!4422627 () Bool)

(declare-fun tp!2103280 () Bool)

(declare-fun tp!2103282 () Bool)

(assert (=> b!7388995 (= e!4422627 (and tp!2103280 tp!2103282))))

(declare-fun b!7388996 () Bool)

(declare-fun tp!2103281 () Bool)

(assert (=> b!7388996 (= e!4422627 tp!2103281)))

(assert (=> b!7388479 (= tp!2103168 e!4422627)))

(declare-fun b!7388997 () Bool)

(declare-fun tp!2103278 () Bool)

(declare-fun tp!2103279 () Bool)

(assert (=> b!7388997 (= e!4422627 (and tp!2103278 tp!2103279))))

(declare-fun b!7388994 () Bool)

(assert (=> b!7388994 (= e!4422627 tp_is_empty!48997)))

(assert (= (and b!7388479 ((_ is ElementMatch!19367) (h!78224 (t!386453 (exprs!8807 setElem!55934))))) b!7388994))

(assert (= (and b!7388479 ((_ is Concat!28212) (h!78224 (t!386453 (exprs!8807 setElem!55934))))) b!7388995))

(assert (= (and b!7388479 ((_ is Star!19367) (h!78224 (t!386453 (exprs!8807 setElem!55934))))) b!7388996))

(assert (= (and b!7388479 ((_ is Union!19367) (h!78224 (t!386453 (exprs!8807 setElem!55934))))) b!7388997))

(declare-fun b!7388998 () Bool)

(declare-fun e!4422628 () Bool)

(declare-fun tp!2103283 () Bool)

(declare-fun tp!2103284 () Bool)

(assert (=> b!7388998 (= e!4422628 (and tp!2103283 tp!2103284))))

(assert (=> b!7388479 (= tp!2103169 e!4422628)))

(assert (= (and b!7388479 ((_ is Cons!71776) (t!386453 (t!386453 (exprs!8807 setElem!55934))))) b!7388998))

(declare-fun b!7389000 () Bool)

(declare-fun e!4422629 () Bool)

(declare-fun tp!2103287 () Bool)

(declare-fun tp!2103289 () Bool)

(assert (=> b!7389000 (= e!4422629 (and tp!2103287 tp!2103289))))

(declare-fun b!7389001 () Bool)

(declare-fun tp!2103288 () Bool)

(assert (=> b!7389001 (= e!4422629 tp!2103288)))

(assert (=> b!7388452 (= tp!2103134 e!4422629)))

(declare-fun b!7389002 () Bool)

(declare-fun tp!2103285 () Bool)

(declare-fun tp!2103286 () Bool)

(assert (=> b!7389002 (= e!4422629 (and tp!2103285 tp!2103286))))

(declare-fun b!7388999 () Bool)

(assert (=> b!7388999 (= e!4422629 tp_is_empty!48997)))

(assert (= (and b!7388452 ((_ is ElementMatch!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7388999))

(assert (= (and b!7388452 ((_ is Concat!28212) (reg!19696 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389000))

(assert (= (and b!7388452 ((_ is Star!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389001))

(assert (= (and b!7388452 ((_ is Union!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389002))

(declare-fun b!7389004 () Bool)

(declare-fun e!4422630 () Bool)

(declare-fun tp!2103292 () Bool)

(declare-fun tp!2103294 () Bool)

(assert (=> b!7389004 (= e!4422630 (and tp!2103292 tp!2103294))))

(declare-fun b!7389005 () Bool)

(declare-fun tp!2103293 () Bool)

(assert (=> b!7389005 (= e!4422630 tp!2103293)))

(assert (=> b!7388437 (= tp!2103113 e!4422630)))

(declare-fun b!7389006 () Bool)

(declare-fun tp!2103290 () Bool)

(declare-fun tp!2103291 () Bool)

(assert (=> b!7389006 (= e!4422630 (and tp!2103290 tp!2103291))))

(declare-fun b!7389003 () Bool)

(assert (=> b!7389003 (= e!4422630 tp_is_empty!48997)))

(assert (= (and b!7388437 ((_ is ElementMatch!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389003))

(assert (= (and b!7388437 ((_ is Concat!28212) (reg!19696 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389004))

(assert (= (and b!7388437 ((_ is Star!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389005))

(assert (= (and b!7388437 ((_ is Union!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389006))

(declare-fun b!7389008 () Bool)

(declare-fun e!4422631 () Bool)

(declare-fun tp!2103297 () Bool)

(declare-fun tp!2103299 () Bool)

(assert (=> b!7389008 (= e!4422631 (and tp!2103297 tp!2103299))))

(declare-fun b!7389009 () Bool)

(declare-fun tp!2103298 () Bool)

(assert (=> b!7389009 (= e!4422631 tp!2103298)))

(assert (=> b!7388478 (= tp!2103163 e!4422631)))

(declare-fun b!7389010 () Bool)

(declare-fun tp!2103295 () Bool)

(declare-fun tp!2103296 () Bool)

(assert (=> b!7389010 (= e!4422631 (and tp!2103295 tp!2103296))))

(declare-fun b!7389007 () Bool)

(assert (=> b!7389007 (= e!4422631 tp_is_empty!48997)))

(assert (= (and b!7388478 ((_ is ElementMatch!19367) (regOne!39247 (h!78224 (exprs!8807 setElem!55934))))) b!7389007))

(assert (= (and b!7388478 ((_ is Concat!28212) (regOne!39247 (h!78224 (exprs!8807 setElem!55934))))) b!7389008))

(assert (= (and b!7388478 ((_ is Star!19367) (regOne!39247 (h!78224 (exprs!8807 setElem!55934))))) b!7389009))

(assert (= (and b!7388478 ((_ is Union!19367) (regOne!39247 (h!78224 (exprs!8807 setElem!55934))))) b!7389010))

(declare-fun b!7389012 () Bool)

(declare-fun e!4422632 () Bool)

(declare-fun tp!2103302 () Bool)

(declare-fun tp!2103304 () Bool)

(assert (=> b!7389012 (= e!4422632 (and tp!2103302 tp!2103304))))

(declare-fun b!7389013 () Bool)

(declare-fun tp!2103303 () Bool)

(assert (=> b!7389013 (= e!4422632 tp!2103303)))

(assert (=> b!7388478 (= tp!2103164 e!4422632)))

(declare-fun b!7389014 () Bool)

(declare-fun tp!2103300 () Bool)

(declare-fun tp!2103301 () Bool)

(assert (=> b!7389014 (= e!4422632 (and tp!2103300 tp!2103301))))

(declare-fun b!7389011 () Bool)

(assert (=> b!7389011 (= e!4422632 tp_is_empty!48997)))

(assert (= (and b!7388478 ((_ is ElementMatch!19367) (regTwo!39247 (h!78224 (exprs!8807 setElem!55934))))) b!7389011))

(assert (= (and b!7388478 ((_ is Concat!28212) (regTwo!39247 (h!78224 (exprs!8807 setElem!55934))))) b!7389012))

(assert (= (and b!7388478 ((_ is Star!19367) (regTwo!39247 (h!78224 (exprs!8807 setElem!55934))))) b!7389013))

(assert (= (and b!7388478 ((_ is Union!19367) (regTwo!39247 (h!78224 (exprs!8807 setElem!55934))))) b!7389014))

(declare-fun b!7389016 () Bool)

(declare-fun e!4422633 () Bool)

(declare-fun tp!2103307 () Bool)

(declare-fun tp!2103309 () Bool)

(assert (=> b!7389016 (= e!4422633 (and tp!2103307 tp!2103309))))

(declare-fun b!7389017 () Bool)

(declare-fun tp!2103308 () Bool)

(assert (=> b!7389017 (= e!4422633 tp!2103308)))

(assert (=> b!7388428 (= tp!2103102 e!4422633)))

(declare-fun b!7389018 () Bool)

(declare-fun tp!2103305 () Bool)

(declare-fun tp!2103306 () Bool)

(assert (=> b!7389018 (= e!4422633 (and tp!2103305 tp!2103306))))

(declare-fun b!7389015 () Bool)

(assert (=> b!7389015 (= e!4422633 tp_is_empty!48997)))

(assert (= (and b!7388428 ((_ is ElementMatch!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389015))

(assert (= (and b!7388428 ((_ is Concat!28212) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389016))

(assert (= (and b!7388428 ((_ is Star!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389017))

(assert (= (and b!7388428 ((_ is Union!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389018))

(declare-fun b!7389022 () Bool)

(declare-fun e!4422636 () Bool)

(declare-fun tp!2103312 () Bool)

(declare-fun tp!2103314 () Bool)

(assert (=> b!7389022 (= e!4422636 (and tp!2103312 tp!2103314))))

(declare-fun b!7389023 () Bool)

(declare-fun tp!2103313 () Bool)

(assert (=> b!7389023 (= e!4422636 tp!2103313)))

(assert (=> b!7388428 (= tp!2103104 e!4422636)))

(declare-fun b!7389024 () Bool)

(declare-fun tp!2103310 () Bool)

(declare-fun tp!2103311 () Bool)

(assert (=> b!7389024 (= e!4422636 (and tp!2103310 tp!2103311))))

(declare-fun b!7389021 () Bool)

(assert (=> b!7389021 (= e!4422636 tp_is_empty!48997)))

(assert (= (and b!7388428 ((_ is ElementMatch!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389021))

(assert (= (and b!7388428 ((_ is Concat!28212) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389022))

(assert (= (and b!7388428 ((_ is Star!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389023))

(assert (= (and b!7388428 ((_ is Union!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389024))

(declare-fun b!7389026 () Bool)

(declare-fun e!4422637 () Bool)

(declare-fun tp!2103317 () Bool)

(declare-fun tp!2103319 () Bool)

(assert (=> b!7389026 (= e!4422637 (and tp!2103317 tp!2103319))))

(declare-fun b!7389027 () Bool)

(declare-fun tp!2103318 () Bool)

(assert (=> b!7389027 (= e!4422637 tp!2103318)))

(assert (=> b!7388469 (= tp!2103156 e!4422637)))

(declare-fun b!7389028 () Bool)

(declare-fun tp!2103315 () Bool)

(declare-fun tp!2103316 () Bool)

(assert (=> b!7389028 (= e!4422637 (and tp!2103315 tp!2103316))))

(declare-fun b!7389025 () Bool)

(assert (=> b!7389025 (= e!4422637 tp_is_empty!48997)))

(assert (= (and b!7388469 ((_ is ElementMatch!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389025))

(assert (= (and b!7388469 ((_ is Concat!28212) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389026))

(assert (= (and b!7388469 ((_ is Star!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389027))

(assert (= (and b!7388469 ((_ is Union!19367) (reg!19696 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389028))

(declare-fun b!7389029 () Bool)

(declare-fun e!4422638 () Bool)

(declare-fun tp!2103320 () Bool)

(declare-fun tp!2103321 () Bool)

(assert (=> b!7389029 (= e!4422638 (and tp!2103320 tp!2103321))))

(assert (=> b!7388426 (= tp!2103098 e!4422638)))

(assert (= (and b!7388426 ((_ is Cons!71776) (exprs!8807 setElem!55945))) b!7389029))

(declare-fun b!7389031 () Bool)

(declare-fun e!4422639 () Bool)

(declare-fun tp!2103324 () Bool)

(declare-fun tp!2103326 () Bool)

(assert (=> b!7389031 (= e!4422639 (and tp!2103324 tp!2103326))))

(declare-fun b!7389032 () Bool)

(declare-fun tp!2103325 () Bool)

(assert (=> b!7389032 (= e!4422639 tp!2103325)))

(assert (=> b!7388460 (= tp!2103145 e!4422639)))

(declare-fun b!7389033 () Bool)

(declare-fun tp!2103322 () Bool)

(declare-fun tp!2103323 () Bool)

(assert (=> b!7389033 (= e!4422639 (and tp!2103322 tp!2103323))))

(declare-fun b!7389030 () Bool)

(assert (=> b!7389030 (= e!4422639 tp_is_empty!48997)))

(assert (= (and b!7388460 ((_ is ElementMatch!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389030))

(assert (= (and b!7388460 ((_ is Concat!28212) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389031))

(assert (= (and b!7388460 ((_ is Star!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389032))

(assert (= (and b!7388460 ((_ is Union!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389033))

(declare-fun b!7389035 () Bool)

(declare-fun e!4422640 () Bool)

(declare-fun tp!2103329 () Bool)

(declare-fun tp!2103331 () Bool)

(assert (=> b!7389035 (= e!4422640 (and tp!2103329 tp!2103331))))

(declare-fun b!7389036 () Bool)

(declare-fun tp!2103330 () Bool)

(assert (=> b!7389036 (= e!4422640 tp!2103330)))

(assert (=> b!7388460 (= tp!2103147 e!4422640)))

(declare-fun b!7389037 () Bool)

(declare-fun tp!2103327 () Bool)

(declare-fun tp!2103328 () Bool)

(assert (=> b!7389037 (= e!4422640 (and tp!2103327 tp!2103328))))

(declare-fun b!7389034 () Bool)

(assert (=> b!7389034 (= e!4422640 tp_is_empty!48997)))

(assert (= (and b!7388460 ((_ is ElementMatch!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389034))

(assert (= (and b!7388460 ((_ is Concat!28212) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389035))

(assert (= (and b!7388460 ((_ is Star!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389036))

(assert (= (and b!7388460 ((_ is Union!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389037))

(declare-fun b!7389039 () Bool)

(declare-fun e!4422641 () Bool)

(declare-fun tp!2103334 () Bool)

(declare-fun tp!2103336 () Bool)

(assert (=> b!7389039 (= e!4422641 (and tp!2103334 tp!2103336))))

(declare-fun b!7389040 () Bool)

(declare-fun tp!2103335 () Bool)

(assert (=> b!7389040 (= e!4422641 tp!2103335)))

(assert (=> b!7388505 (= tp!2103203 e!4422641)))

(declare-fun b!7389041 () Bool)

(declare-fun tp!2103332 () Bool)

(declare-fun tp!2103333 () Bool)

(assert (=> b!7389041 (= e!4422641 (and tp!2103332 tp!2103333))))

(declare-fun b!7389038 () Bool)

(assert (=> b!7389038 (= e!4422641 tp_is_empty!48997)))

(assert (= (and b!7388505 ((_ is ElementMatch!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389038))

(assert (= (and b!7388505 ((_ is Concat!28212) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389039))

(assert (= (and b!7388505 ((_ is Star!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389040))

(assert (= (and b!7388505 ((_ is Union!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389041))

(declare-fun b!7389043 () Bool)

(declare-fun e!4422643 () Bool)

(declare-fun tp!2103339 () Bool)

(declare-fun tp!2103341 () Bool)

(assert (=> b!7389043 (= e!4422643 (and tp!2103339 tp!2103341))))

(declare-fun b!7389044 () Bool)

(declare-fun tp!2103340 () Bool)

(assert (=> b!7389044 (= e!4422643 tp!2103340)))

(assert (=> b!7388501 (= tp!2103193 e!4422643)))

(declare-fun b!7389045 () Bool)

(declare-fun tp!2103337 () Bool)

(declare-fun tp!2103338 () Bool)

(assert (=> b!7389045 (= e!4422643 (and tp!2103337 tp!2103338))))

(declare-fun b!7389042 () Bool)

(assert (=> b!7389042 (= e!4422643 tp_is_empty!48997)))

(assert (= (and b!7388501 ((_ is ElementMatch!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389042))

(assert (= (and b!7388501 ((_ is Concat!28212) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389043))

(assert (= (and b!7388501 ((_ is Star!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389044))

(assert (= (and b!7388501 ((_ is Union!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389045))

(declare-fun b!7389058 () Bool)

(declare-fun e!4422649 () Bool)

(declare-fun tp!2103344 () Bool)

(declare-fun tp!2103346 () Bool)

(assert (=> b!7389058 (= e!4422649 (and tp!2103344 tp!2103346))))

(declare-fun b!7389059 () Bool)

(declare-fun tp!2103345 () Bool)

(assert (=> b!7389059 (= e!4422649 tp!2103345)))

(assert (=> b!7388501 (= tp!2103194 e!4422649)))

(declare-fun b!7389060 () Bool)

(declare-fun tp!2103342 () Bool)

(declare-fun tp!2103343 () Bool)

(assert (=> b!7389060 (= e!4422649 (and tp!2103342 tp!2103343))))

(declare-fun b!7389057 () Bool)

(assert (=> b!7389057 (= e!4422649 tp_is_empty!48997)))

(assert (= (and b!7388501 ((_ is ElementMatch!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389057))

(assert (= (and b!7388501 ((_ is Concat!28212) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389058))

(assert (= (and b!7388501 ((_ is Star!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389059))

(assert (= (and b!7388501 ((_ is Union!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389060))

(declare-fun b!7389062 () Bool)

(declare-fun e!4422650 () Bool)

(declare-fun tp!2103349 () Bool)

(declare-fun tp!2103351 () Bool)

(assert (=> b!7389062 (= e!4422650 (and tp!2103349 tp!2103351))))

(declare-fun b!7389063 () Bool)

(declare-fun tp!2103350 () Bool)

(assert (=> b!7389063 (= e!4422650 tp!2103350)))

(assert (=> b!7388444 (= tp!2103122 e!4422650)))

(declare-fun b!7389064 () Bool)

(declare-fun tp!2103347 () Bool)

(declare-fun tp!2103348 () Bool)

(assert (=> b!7389064 (= e!4422650 (and tp!2103347 tp!2103348))))

(declare-fun b!7389061 () Bool)

(assert (=> b!7389061 (= e!4422650 tp_is_empty!48997)))

(assert (= (and b!7388444 ((_ is ElementMatch!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 setElem!55928)))))) b!7389061))

(assert (= (and b!7388444 ((_ is Concat!28212) (h!78224 (t!386453 (t!386453 (exprs!8807 setElem!55928)))))) b!7389062))

(assert (= (and b!7388444 ((_ is Star!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 setElem!55928)))))) b!7389063))

(assert (= (and b!7388444 ((_ is Union!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 setElem!55928)))))) b!7389064))

(declare-fun b!7389065 () Bool)

(declare-fun e!4422651 () Bool)

(declare-fun tp!2103352 () Bool)

(declare-fun tp!2103353 () Bool)

(assert (=> b!7389065 (= e!4422651 (and tp!2103352 tp!2103353))))

(assert (=> b!7388444 (= tp!2103123 e!4422651)))

(assert (= (and b!7388444 ((_ is Cons!71776) (t!386453 (t!386453 (t!386453 (exprs!8807 setElem!55928)))))) b!7389065))

(declare-fun b!7389067 () Bool)

(declare-fun e!4422652 () Bool)

(declare-fun tp!2103356 () Bool)

(declare-fun tp!2103358 () Bool)

(assert (=> b!7389067 (= e!4422652 (and tp!2103356 tp!2103358))))

(declare-fun b!7389068 () Bool)

(declare-fun tp!2103357 () Bool)

(assert (=> b!7389068 (= e!4422652 tp!2103357)))

(assert (=> b!7388476 (= tp!2103165 e!4422652)))

(declare-fun b!7389069 () Bool)

(declare-fun tp!2103354 () Bool)

(declare-fun tp!2103355 () Bool)

(assert (=> b!7389069 (= e!4422652 (and tp!2103354 tp!2103355))))

(declare-fun b!7389066 () Bool)

(assert (=> b!7389066 (= e!4422652 tp_is_empty!48997)))

(assert (= (and b!7388476 ((_ is ElementMatch!19367) (regOne!39246 (h!78224 (exprs!8807 setElem!55934))))) b!7389066))

(assert (= (and b!7388476 ((_ is Concat!28212) (regOne!39246 (h!78224 (exprs!8807 setElem!55934))))) b!7389067))

(assert (= (and b!7388476 ((_ is Star!19367) (regOne!39246 (h!78224 (exprs!8807 setElem!55934))))) b!7389068))

(assert (= (and b!7388476 ((_ is Union!19367) (regOne!39246 (h!78224 (exprs!8807 setElem!55934))))) b!7389069))

(declare-fun b!7389071 () Bool)

(declare-fun e!4422653 () Bool)

(declare-fun tp!2103361 () Bool)

(declare-fun tp!2103363 () Bool)

(assert (=> b!7389071 (= e!4422653 (and tp!2103361 tp!2103363))))

(declare-fun b!7389072 () Bool)

(declare-fun tp!2103362 () Bool)

(assert (=> b!7389072 (= e!4422653 tp!2103362)))

(assert (=> b!7388476 (= tp!2103167 e!4422653)))

(declare-fun b!7389073 () Bool)

(declare-fun tp!2103359 () Bool)

(declare-fun tp!2103360 () Bool)

(assert (=> b!7389073 (= e!4422653 (and tp!2103359 tp!2103360))))

(declare-fun b!7389070 () Bool)

(assert (=> b!7389070 (= e!4422653 tp_is_empty!48997)))

(assert (= (and b!7388476 ((_ is ElementMatch!19367) (regTwo!39246 (h!78224 (exprs!8807 setElem!55934))))) b!7389070))

(assert (= (and b!7388476 ((_ is Concat!28212) (regTwo!39246 (h!78224 (exprs!8807 setElem!55934))))) b!7389071))

(assert (= (and b!7388476 ((_ is Star!19367) (regTwo!39246 (h!78224 (exprs!8807 setElem!55934))))) b!7389072))

(assert (= (and b!7388476 ((_ is Union!19367) (regTwo!39246 (h!78224 (exprs!8807 setElem!55934))))) b!7389073))

(declare-fun b!7389075 () Bool)

(declare-fun e!4422654 () Bool)

(declare-fun tp!2103366 () Bool)

(declare-fun tp!2103368 () Bool)

(assert (=> b!7389075 (= e!4422654 (and tp!2103366 tp!2103368))))

(declare-fun b!7389076 () Bool)

(declare-fun tp!2103367 () Bool)

(assert (=> b!7389076 (= e!4422654 tp!2103367)))

(assert (=> b!7388499 (= tp!2103195 e!4422654)))

(declare-fun b!7389077 () Bool)

(declare-fun tp!2103364 () Bool)

(declare-fun tp!2103365 () Bool)

(assert (=> b!7389077 (= e!4422654 (and tp!2103364 tp!2103365))))

(declare-fun b!7389074 () Bool)

(assert (=> b!7389074 (= e!4422654 tp_is_empty!48997)))

(assert (= (and b!7388499 ((_ is ElementMatch!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389074))

(assert (= (and b!7388499 ((_ is Concat!28212) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389075))

(assert (= (and b!7388499 ((_ is Star!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389076))

(assert (= (and b!7388499 ((_ is Union!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389077))

(declare-fun b!7389079 () Bool)

(declare-fun e!4422655 () Bool)

(declare-fun tp!2103371 () Bool)

(declare-fun tp!2103373 () Bool)

(assert (=> b!7389079 (= e!4422655 (and tp!2103371 tp!2103373))))

(declare-fun b!7389080 () Bool)

(declare-fun tp!2103372 () Bool)

(assert (=> b!7389080 (= e!4422655 tp!2103372)))

(assert (=> b!7388499 (= tp!2103197 e!4422655)))

(declare-fun b!7389081 () Bool)

(declare-fun tp!2103369 () Bool)

(declare-fun tp!2103370 () Bool)

(assert (=> b!7389081 (= e!4422655 (and tp!2103369 tp!2103370))))

(declare-fun b!7389078 () Bool)

(assert (=> b!7389078 (= e!4422655 tp_is_empty!48997)))

(assert (= (and b!7388499 ((_ is ElementMatch!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389078))

(assert (= (and b!7388499 ((_ is Concat!28212) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389079))

(assert (= (and b!7388499 ((_ is Star!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389080))

(assert (= (and b!7388499 ((_ is Union!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389081))

(declare-fun b!7389083 () Bool)

(declare-fun e!4422656 () Bool)

(declare-fun tp!2103376 () Bool)

(declare-fun tp!2103378 () Bool)

(assert (=> b!7389083 (= e!4422656 (and tp!2103376 tp!2103378))))

(declare-fun b!7389084 () Bool)

(declare-fun tp!2103377 () Bool)

(assert (=> b!7389084 (= e!4422656 tp!2103377)))

(assert (=> b!7388492 (= tp!2103182 e!4422656)))

(declare-fun b!7389085 () Bool)

(declare-fun tp!2103374 () Bool)

(declare-fun tp!2103375 () Bool)

(assert (=> b!7389085 (= e!4422656 (and tp!2103374 tp!2103375))))

(declare-fun b!7389082 () Bool)

(assert (=> b!7389082 (= e!4422656 tp_is_empty!48997)))

(assert (= (and b!7388492 ((_ is ElementMatch!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389082))

(assert (= (and b!7388492 ((_ is Concat!28212) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389083))

(assert (= (and b!7388492 ((_ is Star!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389084))

(assert (= (and b!7388492 ((_ is Union!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389085))

(declare-fun b!7389087 () Bool)

(declare-fun e!4422657 () Bool)

(declare-fun tp!2103381 () Bool)

(declare-fun tp!2103383 () Bool)

(assert (=> b!7389087 (= e!4422657 (and tp!2103381 tp!2103383))))

(declare-fun b!7389088 () Bool)

(declare-fun tp!2103382 () Bool)

(assert (=> b!7389088 (= e!4422657 tp!2103382)))

(assert (=> b!7388492 (= tp!2103183 e!4422657)))

(declare-fun b!7389089 () Bool)

(declare-fun tp!2103379 () Bool)

(declare-fun tp!2103380 () Bool)

(assert (=> b!7389089 (= e!4422657 (and tp!2103379 tp!2103380))))

(declare-fun b!7389086 () Bool)

(assert (=> b!7389086 (= e!4422657 tp_is_empty!48997)))

(assert (= (and b!7388492 ((_ is ElementMatch!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389086))

(assert (= (and b!7388492 ((_ is Concat!28212) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389087))

(assert (= (and b!7388492 ((_ is Star!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389088))

(assert (= (and b!7388492 ((_ is Union!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389089))

(declare-fun b!7389091 () Bool)

(declare-fun e!4422658 () Bool)

(declare-fun tp!2103386 () Bool)

(declare-fun tp!2103388 () Bool)

(assert (=> b!7389091 (= e!4422658 (and tp!2103386 tp!2103388))))

(declare-fun b!7389092 () Bool)

(declare-fun tp!2103387 () Bool)

(assert (=> b!7389092 (= e!4422658 tp!2103387)))

(assert (=> b!7388441 (= tp!2103119 e!4422658)))

(declare-fun b!7389093 () Bool)

(declare-fun tp!2103384 () Bool)

(declare-fun tp!2103385 () Bool)

(assert (=> b!7389093 (= e!4422658 (and tp!2103384 tp!2103385))))

(declare-fun b!7389090 () Bool)

(assert (=> b!7389090 (= e!4422658 tp_is_empty!48997)))

(assert (= (and b!7388441 ((_ is ElementMatch!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389090))

(assert (= (and b!7388441 ((_ is Concat!28212) (regOne!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389091))

(assert (= (and b!7388441 ((_ is Star!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389092))

(assert (= (and b!7388441 ((_ is Union!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389093))

(declare-fun b!7389095 () Bool)

(declare-fun e!4422659 () Bool)

(declare-fun tp!2103391 () Bool)

(declare-fun tp!2103393 () Bool)

(assert (=> b!7389095 (= e!4422659 (and tp!2103391 tp!2103393))))

(declare-fun b!7389096 () Bool)

(declare-fun tp!2103392 () Bool)

(assert (=> b!7389096 (= e!4422659 tp!2103392)))

(assert (=> b!7388441 (= tp!2103121 e!4422659)))

(declare-fun b!7389097 () Bool)

(declare-fun tp!2103389 () Bool)

(declare-fun tp!2103390 () Bool)

(assert (=> b!7389097 (= e!4422659 (and tp!2103389 tp!2103390))))

(declare-fun b!7389094 () Bool)

(assert (=> b!7389094 (= e!4422659 tp_is_empty!48997)))

(assert (= (and b!7388441 ((_ is ElementMatch!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389094))

(assert (= (and b!7388441 ((_ is Concat!28212) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389095))

(assert (= (and b!7388441 ((_ is Star!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389096))

(assert (= (and b!7388441 ((_ is Union!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389097))

(declare-fun b!7389099 () Bool)

(declare-fun e!4422660 () Bool)

(declare-fun tp!2103396 () Bool)

(declare-fun tp!2103398 () Bool)

(assert (=> b!7389099 (= e!4422660 (and tp!2103396 tp!2103398))))

(declare-fun b!7389100 () Bool)

(declare-fun tp!2103397 () Bool)

(assert (=> b!7389100 (= e!4422660 tp!2103397)))

(assert (=> b!7388482 (= tp!2103173 e!4422660)))

(declare-fun b!7389101 () Bool)

(declare-fun tp!2103394 () Bool)

(declare-fun tp!2103395 () Bool)

(assert (=> b!7389101 (= e!4422660 (and tp!2103394 tp!2103395))))

(declare-fun b!7389098 () Bool)

(assert (=> b!7389098 (= e!4422660 tp_is_empty!48997)))

(assert (= (and b!7388482 ((_ is ElementMatch!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389098))

(assert (= (and b!7388482 ((_ is Concat!28212) (reg!19696 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389099))

(assert (= (and b!7388482 ((_ is Star!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389100))

(assert (= (and b!7388482 ((_ is Union!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389101))

(declare-fun b!7389103 () Bool)

(declare-fun e!4422661 () Bool)

(declare-fun tp!2103401 () Bool)

(declare-fun tp!2103403 () Bool)

(assert (=> b!7389103 (= e!4422661 (and tp!2103401 tp!2103403))))

(declare-fun b!7389104 () Bool)

(declare-fun tp!2103402 () Bool)

(assert (=> b!7389104 (= e!4422661 tp!2103402)))

(assert (=> b!7388458 (= tp!2103141 e!4422661)))

(declare-fun b!7389105 () Bool)

(declare-fun tp!2103399 () Bool)

(declare-fun tp!2103400 () Bool)

(assert (=> b!7389105 (= e!4422661 (and tp!2103399 tp!2103400))))

(declare-fun b!7389102 () Bool)

(assert (=> b!7389102 (= e!4422661 tp_is_empty!48997)))

(assert (= (and b!7388458 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 _$3!516)))) b!7389102))

(assert (= (and b!7388458 ((_ is Concat!28212) (h!78224 (exprs!8807 _$3!516)))) b!7389103))

(assert (= (and b!7388458 ((_ is Star!19367) (h!78224 (exprs!8807 _$3!516)))) b!7389104))

(assert (= (and b!7388458 ((_ is Union!19367) (h!78224 (exprs!8807 _$3!516)))) b!7389105))

(declare-fun b!7389106 () Bool)

(declare-fun e!4422662 () Bool)

(declare-fun tp!2103404 () Bool)

(declare-fun tp!2103405 () Bool)

(assert (=> b!7389106 (= e!4422662 (and tp!2103404 tp!2103405))))

(assert (=> b!7388458 (= tp!2103142 e!4422662)))

(assert (= (and b!7388458 ((_ is Cons!71776) (t!386453 (exprs!8807 _$3!516)))) b!7389106))

(declare-fun b!7389108 () Bool)

(declare-fun e!4422663 () Bool)

(declare-fun tp!2103408 () Bool)

(declare-fun tp!2103410 () Bool)

(assert (=> b!7389108 (= e!4422663 (and tp!2103408 tp!2103410))))

(declare-fun b!7389109 () Bool)

(declare-fun tp!2103409 () Bool)

(assert (=> b!7389109 (= e!4422663 tp!2103409)))

(assert (=> b!7388490 (= tp!2103184 e!4422663)))

(declare-fun b!7389110 () Bool)

(declare-fun tp!2103406 () Bool)

(declare-fun tp!2103407 () Bool)

(assert (=> b!7389110 (= e!4422663 (and tp!2103406 tp!2103407))))

(declare-fun b!7389107 () Bool)

(assert (=> b!7389107 (= e!4422663 tp_is_empty!48997)))

(assert (= (and b!7388490 ((_ is ElementMatch!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389107))

(assert (= (and b!7388490 ((_ is Concat!28212) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389108))

(assert (= (and b!7388490 ((_ is Star!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389109))

(assert (= (and b!7388490 ((_ is Union!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389110))

(declare-fun b!7389112 () Bool)

(declare-fun e!4422664 () Bool)

(declare-fun tp!2103413 () Bool)

(declare-fun tp!2103415 () Bool)

(assert (=> b!7389112 (= e!4422664 (and tp!2103413 tp!2103415))))

(declare-fun b!7389113 () Bool)

(declare-fun tp!2103414 () Bool)

(assert (=> b!7389113 (= e!4422664 tp!2103414)))

(assert (=> b!7388490 (= tp!2103186 e!4422664)))

(declare-fun b!7389114 () Bool)

(declare-fun tp!2103411 () Bool)

(declare-fun tp!2103412 () Bool)

(assert (=> b!7389114 (= e!4422664 (and tp!2103411 tp!2103412))))

(declare-fun b!7389111 () Bool)

(assert (=> b!7389111 (= e!4422664 tp_is_empty!48997)))

(assert (= (and b!7388490 ((_ is ElementMatch!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389111))

(assert (= (and b!7388490 ((_ is Concat!28212) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389112))

(assert (= (and b!7388490 ((_ is Star!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389113))

(assert (= (and b!7388490 ((_ is Union!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389114))

(declare-fun b!7389116 () Bool)

(declare-fun e!4422665 () Bool)

(declare-fun tp!2103418 () Bool)

(declare-fun tp!2103420 () Bool)

(assert (=> b!7389116 (= e!4422665 (and tp!2103418 tp!2103420))))

(declare-fun b!7389117 () Bool)

(declare-fun tp!2103419 () Bool)

(assert (=> b!7389117 (= e!4422665 tp!2103419)))

(assert (=> b!7388443 (= tp!2103117 e!4422665)))

(declare-fun b!7389118 () Bool)

(declare-fun tp!2103416 () Bool)

(declare-fun tp!2103417 () Bool)

(assert (=> b!7389118 (= e!4422665 (and tp!2103416 tp!2103417))))

(declare-fun b!7389115 () Bool)

(assert (=> b!7389115 (= e!4422665 tp_is_empty!48997)))

(assert (= (and b!7388443 ((_ is ElementMatch!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389115))

(assert (= (and b!7388443 ((_ is Concat!28212) (regOne!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389116))

(assert (= (and b!7388443 ((_ is Star!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389117))

(assert (= (and b!7388443 ((_ is Union!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389118))

(declare-fun b!7389120 () Bool)

(declare-fun e!4422666 () Bool)

(declare-fun tp!2103423 () Bool)

(declare-fun tp!2103425 () Bool)

(assert (=> b!7389120 (= e!4422666 (and tp!2103423 tp!2103425))))

(declare-fun b!7389121 () Bool)

(declare-fun tp!2103424 () Bool)

(assert (=> b!7389121 (= e!4422666 tp!2103424)))

(assert (=> b!7388443 (= tp!2103118 e!4422666)))

(declare-fun b!7389122 () Bool)

(declare-fun tp!2103421 () Bool)

(declare-fun tp!2103422 () Bool)

(assert (=> b!7389122 (= e!4422666 (and tp!2103421 tp!2103422))))

(declare-fun b!7389119 () Bool)

(assert (=> b!7389119 (= e!4422666 tp_is_empty!48997)))

(assert (= (and b!7388443 ((_ is ElementMatch!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389119))

(assert (= (and b!7388443 ((_ is Concat!28212) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389120))

(assert (= (and b!7388443 ((_ is Star!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389121))

(assert (= (and b!7388443 ((_ is Union!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389122))

(declare-fun b!7389124 () Bool)

(declare-fun e!4422667 () Bool)

(declare-fun tp!2103428 () Bool)

(declare-fun tp!2103430 () Bool)

(assert (=> b!7389124 (= e!4422667 (and tp!2103428 tp!2103430))))

(declare-fun b!7389125 () Bool)

(declare-fun tp!2103429 () Bool)

(assert (=> b!7389125 (= e!4422667 tp!2103429)))

(assert (=> b!7388457 (= tp!2103136 e!4422667)))

(declare-fun b!7389126 () Bool)

(declare-fun tp!2103426 () Bool)

(declare-fun tp!2103427 () Bool)

(assert (=> b!7389126 (= e!4422667 (and tp!2103426 tp!2103427))))

(declare-fun b!7389123 () Bool)

(assert (=> b!7389123 (= e!4422667 tp_is_empty!48997)))

(assert (= (and b!7388457 ((_ is ElementMatch!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389123))

(assert (= (and b!7388457 ((_ is Concat!28212) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389124))

(assert (= (and b!7388457 ((_ is Star!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389125))

(assert (= (and b!7388457 ((_ is Union!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389126))

(declare-fun b!7389128 () Bool)

(declare-fun e!4422668 () Bool)

(declare-fun tp!2103433 () Bool)

(declare-fun tp!2103435 () Bool)

(assert (=> b!7389128 (= e!4422668 (and tp!2103433 tp!2103435))))

(declare-fun b!7389129 () Bool)

(declare-fun tp!2103434 () Bool)

(assert (=> b!7389129 (= e!4422668 tp!2103434)))

(assert (=> b!7388457 (= tp!2103137 e!4422668)))

(declare-fun b!7389130 () Bool)

(declare-fun tp!2103431 () Bool)

(declare-fun tp!2103432 () Bool)

(assert (=> b!7389130 (= e!4422668 (and tp!2103431 tp!2103432))))

(declare-fun b!7389127 () Bool)

(assert (=> b!7389127 (= e!4422668 tp_is_empty!48997)))

(assert (= (and b!7388457 ((_ is ElementMatch!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389127))

(assert (= (and b!7388457 ((_ is Concat!28212) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389128))

(assert (= (and b!7388457 ((_ is Star!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389129))

(assert (= (and b!7388457 ((_ is Union!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389130))

(declare-fun b!7389132 () Bool)

(declare-fun e!4422669 () Bool)

(declare-fun tp!2103438 () Bool)

(declare-fun tp!2103440 () Bool)

(assert (=> b!7389132 (= e!4422669 (and tp!2103438 tp!2103440))))

(declare-fun b!7389133 () Bool)

(declare-fun tp!2103439 () Bool)

(assert (=> b!7389133 (= e!4422669 tp!2103439)))

(assert (=> b!7388433 (= tp!2103108 e!4422669)))

(declare-fun b!7389134 () Bool)

(declare-fun tp!2103436 () Bool)

(declare-fun tp!2103437 () Bool)

(assert (=> b!7389134 (= e!4422669 (and tp!2103436 tp!2103437))))

(declare-fun b!7389131 () Bool)

(assert (=> b!7389131 (= e!4422669 tp_is_empty!48997)))

(assert (= (and b!7388433 ((_ is ElementMatch!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389131))

(assert (= (and b!7388433 ((_ is Concat!28212) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389132))

(assert (= (and b!7388433 ((_ is Star!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389133))

(assert (= (and b!7388433 ((_ is Union!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389134))

(declare-fun b!7389136 () Bool)

(declare-fun e!4422670 () Bool)

(declare-fun tp!2103443 () Bool)

(declare-fun tp!2103445 () Bool)

(assert (=> b!7389136 (= e!4422670 (and tp!2103443 tp!2103445))))

(declare-fun b!7389137 () Bool)

(declare-fun tp!2103444 () Bool)

(assert (=> b!7389137 (= e!4422670 tp!2103444)))

(assert (=> b!7388474 (= tp!2103158 e!4422670)))

(declare-fun b!7389138 () Bool)

(declare-fun tp!2103441 () Bool)

(declare-fun tp!2103442 () Bool)

(assert (=> b!7389138 (= e!4422670 (and tp!2103441 tp!2103442))))

(declare-fun b!7389135 () Bool)

(assert (=> b!7389135 (= e!4422670 tp_is_empty!48997)))

(assert (= (and b!7388474 ((_ is ElementMatch!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389135))

(assert (= (and b!7388474 ((_ is Concat!28212) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389136))

(assert (= (and b!7388474 ((_ is Star!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389137))

(assert (= (and b!7388474 ((_ is Union!19367) (regOne!39247 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389138))

(declare-fun b!7389144 () Bool)

(declare-fun e!4422672 () Bool)

(declare-fun tp!2103453 () Bool)

(declare-fun tp!2103455 () Bool)

(assert (=> b!7389144 (= e!4422672 (and tp!2103453 tp!2103455))))

(declare-fun b!7389145 () Bool)

(declare-fun tp!2103454 () Bool)

(assert (=> b!7389145 (= e!4422672 tp!2103454)))

(assert (=> b!7388474 (= tp!2103159 e!4422672)))

(declare-fun b!7389146 () Bool)

(declare-fun tp!2103451 () Bool)

(declare-fun tp!2103452 () Bool)

(assert (=> b!7389146 (= e!4422672 (and tp!2103451 tp!2103452))))

(declare-fun b!7389143 () Bool)

(assert (=> b!7389143 (= e!4422672 tp_is_empty!48997)))

(assert (= (and b!7388474 ((_ is ElementMatch!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389143))

(assert (= (and b!7388474 ((_ is Concat!28212) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389144))

(assert (= (and b!7388474 ((_ is Star!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389145))

(assert (= (and b!7388474 ((_ is Union!19367) (regTwo!39247 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389146))

(declare-fun b!7389148 () Bool)

(declare-fun e!4422673 () Bool)

(declare-fun tp!2103458 () Bool)

(declare-fun tp!2103460 () Bool)

(assert (=> b!7389148 (= e!4422673 (and tp!2103458 tp!2103460))))

(declare-fun b!7389149 () Bool)

(declare-fun tp!2103459 () Bool)

(assert (=> b!7389149 (= e!4422673 tp!2103459)))

(assert (=> b!7388465 (= tp!2103151 e!4422673)))

(declare-fun b!7389150 () Bool)

(declare-fun tp!2103456 () Bool)

(declare-fun tp!2103457 () Bool)

(assert (=> b!7389150 (= e!4422673 (and tp!2103456 tp!2103457))))

(declare-fun b!7389147 () Bool)

(assert (=> b!7389147 (= e!4422673 tp_is_empty!48997)))

(assert (= (and b!7388465 ((_ is ElementMatch!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389147))

(assert (= (and b!7388465 ((_ is Concat!28212) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389148))

(assert (= (and b!7388465 ((_ is Star!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389149))

(assert (= (and b!7388465 ((_ is Union!19367) (reg!19696 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389150))

(declare-fun b!7389156 () Bool)

(declare-fun e!4422675 () Bool)

(declare-fun tp!2103468 () Bool)

(declare-fun tp!2103470 () Bool)

(assert (=> b!7389156 (= e!4422675 (and tp!2103468 tp!2103470))))

(declare-fun b!7389157 () Bool)

(declare-fun tp!2103469 () Bool)

(assert (=> b!7389157 (= e!4422675 tp!2103469)))

(assert (=> b!7388510 (= tp!2103205 e!4422675)))

(declare-fun b!7389158 () Bool)

(declare-fun tp!2103466 () Bool)

(declare-fun tp!2103467 () Bool)

(assert (=> b!7389158 (= e!4422675 (and tp!2103466 tp!2103467))))

(declare-fun b!7389155 () Bool)

(assert (=> b!7389155 (= e!4422675 tp_is_empty!48997)))

(assert (= (and b!7388510 ((_ is ElementMatch!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389155))

(assert (= (and b!7388510 ((_ is Concat!28212) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389156))

(assert (= (and b!7388510 ((_ is Star!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389157))

(assert (= (and b!7388510 ((_ is Union!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389158))

(declare-fun b!7389160 () Bool)

(declare-fun e!4422676 () Bool)

(declare-fun tp!2103473 () Bool)

(declare-fun tp!2103475 () Bool)

(assert (=> b!7389160 (= e!4422676 (and tp!2103473 tp!2103475))))

(declare-fun b!7389161 () Bool)

(declare-fun tp!2103474 () Bool)

(assert (=> b!7389161 (= e!4422676 tp!2103474)))

(assert (=> b!7388510 (= tp!2103206 e!4422676)))

(declare-fun b!7389162 () Bool)

(declare-fun tp!2103471 () Bool)

(declare-fun tp!2103472 () Bool)

(assert (=> b!7389162 (= e!4422676 (and tp!2103471 tp!2103472))))

(declare-fun b!7389159 () Bool)

(assert (=> b!7389159 (= e!4422676 tp_is_empty!48997)))

(assert (= (and b!7388510 ((_ is ElementMatch!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389159))

(assert (= (and b!7388510 ((_ is Concat!28212) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389160))

(assert (= (and b!7388510 ((_ is Star!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389161))

(assert (= (and b!7388510 ((_ is Union!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389162))

(declare-fun b!7389168 () Bool)

(declare-fun e!4422678 () Bool)

(declare-fun tp!2103483 () Bool)

(declare-fun tp!2103485 () Bool)

(assert (=> b!7389168 (= e!4422678 (and tp!2103483 tp!2103485))))

(declare-fun b!7389169 () Bool)

(declare-fun tp!2103484 () Bool)

(assert (=> b!7389169 (= e!4422678 tp!2103484)))

(assert (=> b!7388455 (= tp!2103138 e!4422678)))

(declare-fun b!7389170 () Bool)

(declare-fun tp!2103481 () Bool)

(declare-fun tp!2103482 () Bool)

(assert (=> b!7389170 (= e!4422678 (and tp!2103481 tp!2103482))))

(declare-fun b!7389167 () Bool)

(assert (=> b!7389167 (= e!4422678 tp_is_empty!48997)))

(assert (= (and b!7388455 ((_ is ElementMatch!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389167))

(assert (= (and b!7388455 ((_ is Concat!28212) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389168))

(assert (= (and b!7388455 ((_ is Star!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389169))

(assert (= (and b!7388455 ((_ is Union!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389170))

(declare-fun b!7389172 () Bool)

(declare-fun e!4422679 () Bool)

(declare-fun tp!2103488 () Bool)

(declare-fun tp!2103490 () Bool)

(assert (=> b!7389172 (= e!4422679 (and tp!2103488 tp!2103490))))

(declare-fun b!7389173 () Bool)

(declare-fun tp!2103489 () Bool)

(assert (=> b!7389173 (= e!4422679 tp!2103489)))

(assert (=> b!7388455 (= tp!2103140 e!4422679)))

(declare-fun b!7389174 () Bool)

(declare-fun tp!2103486 () Bool)

(declare-fun tp!2103487 () Bool)

(assert (=> b!7389174 (= e!4422679 (and tp!2103486 tp!2103487))))

(declare-fun b!7389171 () Bool)

(assert (=> b!7389171 (= e!4422679 tp_is_empty!48997)))

(assert (= (and b!7388455 ((_ is ElementMatch!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389171))

(assert (= (and b!7388455 ((_ is Concat!28212) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389172))

(assert (= (and b!7388455 ((_ is Star!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389173))

(assert (= (and b!7388455 ((_ is Union!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 empty!3463)))))) b!7389174))

(declare-fun b!7389180 () Bool)

(declare-fun e!4422681 () Bool)

(declare-fun tp!2103498 () Bool)

(declare-fun tp!2103500 () Bool)

(assert (=> b!7389180 (= e!4422681 (and tp!2103498 tp!2103500))))

(declare-fun b!7389181 () Bool)

(declare-fun tp!2103499 () Bool)

(assert (=> b!7389181 (= e!4422681 tp!2103499)))

(assert (=> b!7388497 (= tp!2103188 e!4422681)))

(declare-fun b!7389182 () Bool)

(declare-fun tp!2103496 () Bool)

(declare-fun tp!2103497 () Bool)

(assert (=> b!7389182 (= e!4422681 (and tp!2103496 tp!2103497))))

(declare-fun b!7389179 () Bool)

(assert (=> b!7389179 (= e!4422681 tp_is_empty!48997)))

(assert (= (and b!7388497 ((_ is ElementMatch!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389179))

(assert (= (and b!7388497 ((_ is Concat!28212) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389180))

(assert (= (and b!7388497 ((_ is Star!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389181))

(assert (= (and b!7388497 ((_ is Union!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389182))

(declare-fun b!7389184 () Bool)

(declare-fun e!4422682 () Bool)

(declare-fun tp!2103503 () Bool)

(declare-fun tp!2103505 () Bool)

(assert (=> b!7389184 (= e!4422682 (and tp!2103503 tp!2103505))))

(declare-fun b!7389185 () Bool)

(declare-fun tp!2103504 () Bool)

(assert (=> b!7389185 (= e!4422682 tp!2103504)))

(assert (=> b!7388497 (= tp!2103189 e!4422682)))

(declare-fun b!7389187 () Bool)

(declare-fun tp!2103501 () Bool)

(declare-fun tp!2103502 () Bool)

(assert (=> b!7389187 (= e!4422682 (and tp!2103501 tp!2103502))))

(declare-fun b!7389183 () Bool)

(assert (=> b!7389183 (= e!4422682 tp_is_empty!48997)))

(assert (= (and b!7388497 ((_ is ElementMatch!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389183))

(assert (= (and b!7388497 ((_ is Concat!28212) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389184))

(assert (= (and b!7388497 ((_ is Star!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389185))

(assert (= (and b!7388497 ((_ is Union!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389187))

(declare-fun b!7389210 () Bool)

(declare-fun e!4422692 () Bool)

(declare-fun tp!2103530 () Bool)

(assert (=> b!7389210 (= e!4422692 tp!2103530)))

(declare-fun b!7389209 () Bool)

(declare-fun tp!2103531 () Bool)

(declare-fun e!4422691 () Bool)

(assert (=> b!7389209 (= e!4422691 (and (inv!91778 (h!78227 (t!386456 res!2979148))) e!4422692 tp!2103531))))

(assert (=> b!7388362 (= tp!2103097 e!4422691)))

(assert (= b!7389209 b!7389210))

(assert (= (and b!7388362 ((_ is Cons!71779) (t!386456 res!2979148))) b!7389209))

(declare-fun m!8035984 () Bool)

(assert (=> b!7389209 m!8035984))

(declare-fun b!7389212 () Bool)

(declare-fun e!4422693 () Bool)

(declare-fun tp!2103534 () Bool)

(declare-fun tp!2103536 () Bool)

(assert (=> b!7389212 (= e!4422693 (and tp!2103534 tp!2103536))))

(declare-fun b!7389213 () Bool)

(declare-fun tp!2103535 () Bool)

(assert (=> b!7389213 (= e!4422693 tp!2103535)))

(assert (=> b!7388472 (= tp!2103160 e!4422693)))

(declare-fun b!7389214 () Bool)

(declare-fun tp!2103532 () Bool)

(declare-fun tp!2103533 () Bool)

(assert (=> b!7389214 (= e!4422693 (and tp!2103532 tp!2103533))))

(declare-fun b!7389211 () Bool)

(assert (=> b!7389211 (= e!4422693 tp_is_empty!48997)))

(assert (= (and b!7388472 ((_ is ElementMatch!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389211))

(assert (= (and b!7388472 ((_ is Concat!28212) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389212))

(assert (= (and b!7388472 ((_ is Star!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389213))

(assert (= (and b!7388472 ((_ is Union!19367) (regOne!39246 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389214))

(declare-fun b!7389217 () Bool)

(declare-fun e!4422695 () Bool)

(declare-fun tp!2103541 () Bool)

(declare-fun tp!2103543 () Bool)

(assert (=> b!7389217 (= e!4422695 (and tp!2103541 tp!2103543))))

(declare-fun b!7389218 () Bool)

(declare-fun tp!2103542 () Bool)

(assert (=> b!7389218 (= e!4422695 tp!2103542)))

(assert (=> b!7388472 (= tp!2103162 e!4422695)))

(declare-fun b!7389219 () Bool)

(declare-fun tp!2103539 () Bool)

(declare-fun tp!2103540 () Bool)

(assert (=> b!7389219 (= e!4422695 (and tp!2103539 tp!2103540))))

(declare-fun b!7389216 () Bool)

(assert (=> b!7389216 (= e!4422695 tp_is_empty!48997)))

(assert (= (and b!7388472 ((_ is ElementMatch!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389216))

(assert (= (and b!7388472 ((_ is Concat!28212) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389217))

(assert (= (and b!7388472 ((_ is Star!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389218))

(assert (= (and b!7388472 ((_ is Union!19367) (regTwo!39246 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389219))

(declare-fun b!7389225 () Bool)

(declare-fun e!4422697 () Bool)

(declare-fun tp!2103551 () Bool)

(declare-fun tp!2103553 () Bool)

(assert (=> b!7389225 (= e!4422697 (and tp!2103551 tp!2103553))))

(declare-fun b!7389226 () Bool)

(declare-fun tp!2103552 () Bool)

(assert (=> b!7389226 (= e!4422697 tp!2103552)))

(assert (=> b!7388486 (= tp!2103179 e!4422697)))

(declare-fun b!7389227 () Bool)

(declare-fun tp!2103549 () Bool)

(declare-fun tp!2103550 () Bool)

(assert (=> b!7389227 (= e!4422697 (and tp!2103549 tp!2103550))))

(declare-fun b!7389224 () Bool)

(assert (=> b!7389224 (= e!4422697 tp_is_empty!48997)))

(assert (= (and b!7388486 ((_ is ElementMatch!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389224))

(assert (= (and b!7388486 ((_ is Concat!28212) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389225))

(assert (= (and b!7388486 ((_ is Star!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389226))

(assert (= (and b!7388486 ((_ is Union!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389227))

(declare-fun b!7389231 () Bool)

(declare-fun e!4422699 () Bool)

(declare-fun tp!2103561 () Bool)

(declare-fun tp!2103563 () Bool)

(assert (=> b!7389231 (= e!4422699 (and tp!2103561 tp!2103563))))

(declare-fun b!7389233 () Bool)

(declare-fun tp!2103562 () Bool)

(assert (=> b!7389233 (= e!4422699 tp!2103562)))

(assert (=> b!7388486 (= tp!2103181 e!4422699)))

(declare-fun b!7389235 () Bool)

(declare-fun tp!2103554 () Bool)

(declare-fun tp!2103558 () Bool)

(assert (=> b!7389235 (= e!4422699 (and tp!2103554 tp!2103558))))

(declare-fun b!7389229 () Bool)

(assert (=> b!7389229 (= e!4422699 tp_is_empty!48997)))

(assert (= (and b!7388486 ((_ is ElementMatch!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389229))

(assert (= (and b!7388486 ((_ is Concat!28212) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389231))

(assert (= (and b!7388486 ((_ is Star!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389233))

(assert (= (and b!7388486 ((_ is Union!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389235))

(declare-fun b!7389237 () Bool)

(declare-fun e!4422700 () Bool)

(declare-fun tp!2103566 () Bool)

(declare-fun tp!2103568 () Bool)

(assert (=> b!7389237 (= e!4422700 (and tp!2103566 tp!2103568))))

(declare-fun b!7389238 () Bool)

(declare-fun tp!2103567 () Bool)

(assert (=> b!7389238 (= e!4422700 tp!2103567)))

(assert (=> b!7388439 (= tp!2103115 e!4422700)))

(declare-fun b!7389239 () Bool)

(declare-fun tp!2103564 () Bool)

(declare-fun tp!2103565 () Bool)

(assert (=> b!7389239 (= e!4422700 (and tp!2103564 tp!2103565))))

(declare-fun b!7389236 () Bool)

(assert (=> b!7389236 (= e!4422700 tp_is_empty!48997)))

(assert (= (and b!7388439 ((_ is ElementMatch!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 empty!3463)))))) b!7389236))

(assert (= (and b!7388439 ((_ is Concat!28212) (h!78224 (t!386453 (t!386453 (exprs!8807 empty!3463)))))) b!7389237))

(assert (= (and b!7388439 ((_ is Star!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 empty!3463)))))) b!7389238))

(assert (= (and b!7388439 ((_ is Union!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 empty!3463)))))) b!7389239))

(declare-fun b!7389244 () Bool)

(declare-fun e!4422702 () Bool)

(declare-fun tp!2103574 () Bool)

(declare-fun tp!2103575 () Bool)

(assert (=> b!7389244 (= e!4422702 (and tp!2103574 tp!2103575))))

(assert (=> b!7388439 (= tp!2103116 e!4422702)))

(assert (= (and b!7388439 ((_ is Cons!71776) (t!386453 (t!386453 (t!386453 (exprs!8807 empty!3463)))))) b!7389244))

(declare-fun b!7389246 () Bool)

(declare-fun e!4422703 () Bool)

(declare-fun tp!2103578 () Bool)

(declare-fun tp!2103580 () Bool)

(assert (=> b!7389246 (= e!4422703 (and tp!2103578 tp!2103580))))

(declare-fun b!7389247 () Bool)

(declare-fun tp!2103579 () Bool)

(assert (=> b!7389247 (= e!4422703 tp!2103579)))

(assert (=> b!7388508 (= tp!2103207 e!4422703)))

(declare-fun b!7389248 () Bool)

(declare-fun tp!2103576 () Bool)

(declare-fun tp!2103577 () Bool)

(assert (=> b!7389248 (= e!4422703 (and tp!2103576 tp!2103577))))

(declare-fun b!7389245 () Bool)

(assert (=> b!7389245 (= e!4422703 tp_is_empty!48997)))

(assert (= (and b!7388508 ((_ is ElementMatch!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389245))

(assert (= (and b!7388508 ((_ is Concat!28212) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389246))

(assert (= (and b!7388508 ((_ is Star!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389247))

(assert (= (and b!7388508 ((_ is Union!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389248))

(declare-fun b!7389251 () Bool)

(declare-fun e!4422705 () Bool)

(declare-fun tp!2103585 () Bool)

(declare-fun tp!2103587 () Bool)

(assert (=> b!7389251 (= e!4422705 (and tp!2103585 tp!2103587))))

(declare-fun b!7389252 () Bool)

(declare-fun tp!2103586 () Bool)

(assert (=> b!7389252 (= e!4422705 tp!2103586)))

(assert (=> b!7388508 (= tp!2103209 e!4422705)))

(declare-fun b!7389253 () Bool)

(declare-fun tp!2103583 () Bool)

(declare-fun tp!2103584 () Bool)

(assert (=> b!7389253 (= e!4422705 (and tp!2103583 tp!2103584))))

(declare-fun b!7389250 () Bool)

(assert (=> b!7389250 (= e!4422705 tp_is_empty!48997)))

(assert (= (and b!7388508 ((_ is ElementMatch!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389250))

(assert (= (and b!7388508 ((_ is Concat!28212) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389251))

(assert (= (and b!7388508 ((_ is Star!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389252))

(assert (= (and b!7388508 ((_ is Union!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389253))

(declare-fun condSetEmpty!55947 () Bool)

(assert (=> setNonEmpty!55946 (= condSetEmpty!55947 (= setRest!55946 ((as const (Array Context!16614 Bool)) false)))))

(declare-fun setRes!55947 () Bool)

(assert (=> setNonEmpty!55946 (= tp!2103199 setRes!55947)))

(declare-fun setIsEmpty!55947 () Bool)

(assert (=> setIsEmpty!55947 setRes!55947))

(declare-fun tp!2103591 () Bool)

(declare-fun setNonEmpty!55947 () Bool)

(declare-fun setElem!55947 () Context!16614)

(declare-fun e!4422707 () Bool)

(assert (=> setNonEmpty!55947 (= setRes!55947 (and tp!2103591 (inv!91778 setElem!55947) e!4422707))))

(declare-fun setRest!55947 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55947 (= setRest!55946 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55947 true) setRest!55947))))

(declare-fun b!7389255 () Bool)

(declare-fun tp!2103590 () Bool)

(assert (=> b!7389255 (= e!4422707 tp!2103590)))

(assert (= (and setNonEmpty!55946 condSetEmpty!55947) setIsEmpty!55947))

(assert (= (and setNonEmpty!55946 (not condSetEmpty!55947)) setNonEmpty!55947))

(assert (= setNonEmpty!55947 b!7389255))

(declare-fun m!8035986 () Bool)

(assert (=> setNonEmpty!55947 m!8035986))

(declare-fun b!7389261 () Bool)

(declare-fun e!4422709 () Bool)

(declare-fun tp!2103599 () Bool)

(declare-fun tp!2103601 () Bool)

(assert (=> b!7389261 (= e!4422709 (and tp!2103599 tp!2103601))))

(declare-fun b!7389262 () Bool)

(declare-fun tp!2103600 () Bool)

(assert (=> b!7389262 (= e!4422709 tp!2103600)))

(assert (=> b!7388495 (= tp!2103190 e!4422709)))

(declare-fun b!7389263 () Bool)

(declare-fun tp!2103597 () Bool)

(declare-fun tp!2103598 () Bool)

(assert (=> b!7389263 (= e!4422709 (and tp!2103597 tp!2103598))))

(declare-fun b!7389260 () Bool)

(assert (=> b!7389260 (= e!4422709 tp_is_empty!48997)))

(assert (= (and b!7388495 ((_ is ElementMatch!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389260))

(assert (= (and b!7388495 ((_ is Concat!28212) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389261))

(assert (= (and b!7388495 ((_ is Star!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389262))

(assert (= (and b!7388495 ((_ is Union!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389263))

(declare-fun b!7389266 () Bool)

(declare-fun e!4422711 () Bool)

(declare-fun tp!2103608 () Bool)

(declare-fun tp!2103610 () Bool)

(assert (=> b!7389266 (= e!4422711 (and tp!2103608 tp!2103610))))

(declare-fun b!7389268 () Bool)

(declare-fun tp!2103609 () Bool)

(assert (=> b!7389268 (= e!4422711 tp!2103609)))

(assert (=> b!7388495 (= tp!2103192 e!4422711)))

(declare-fun b!7389270 () Bool)

(declare-fun tp!2103606 () Bool)

(declare-fun tp!2103607 () Bool)

(assert (=> b!7389270 (= e!4422711 (and tp!2103606 tp!2103607))))

(declare-fun b!7389264 () Bool)

(assert (=> b!7389264 (= e!4422711 tp_is_empty!48997)))

(assert (= (and b!7388495 ((_ is ElementMatch!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389264))

(assert (= (and b!7388495 ((_ is Concat!28212) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389266))

(assert (= (and b!7388495 ((_ is Star!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389268))

(assert (= (and b!7388495 ((_ is Union!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389270))

(declare-fun b!7389273 () Bool)

(declare-fun e!4422712 () Bool)

(declare-fun tp!2103614 () Bool)

(declare-fun tp!2103616 () Bool)

(assert (=> b!7389273 (= e!4422712 (and tp!2103614 tp!2103616))))

(declare-fun b!7389274 () Bool)

(declare-fun tp!2103615 () Bool)

(assert (=> b!7389274 (= e!4422712 tp!2103615)))

(assert (=> b!7388447 (= tp!2103127 e!4422712)))

(declare-fun b!7389275 () Bool)

(declare-fun tp!2103612 () Bool)

(declare-fun tp!2103613 () Bool)

(assert (=> b!7389275 (= e!4422712 (and tp!2103612 tp!2103613))))

(declare-fun b!7389272 () Bool)

(assert (=> b!7389272 (= e!4422712 tp_is_empty!48997)))

(assert (= (and b!7388447 ((_ is ElementMatch!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7389272))

(assert (= (and b!7388447 ((_ is Concat!28212) (reg!19696 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7389273))

(assert (= (and b!7388447 ((_ is Star!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7389274))

(assert (= (and b!7388447 ((_ is Union!19367) (reg!19696 (reg!19696 (h!78224 (exprs!8807 c!10532)))))) b!7389275))

(declare-fun b!7389281 () Bool)

(declare-fun e!4422714 () Bool)

(declare-fun tp!2103624 () Bool)

(declare-fun tp!2103626 () Bool)

(assert (=> b!7389281 (= e!4422714 (and tp!2103624 tp!2103626))))

(declare-fun b!7389282 () Bool)

(declare-fun tp!2103625 () Bool)

(assert (=> b!7389282 (= e!4422714 tp!2103625)))

(assert (=> b!7388488 (= tp!2103177 e!4422714)))

(declare-fun b!7389283 () Bool)

(declare-fun tp!2103622 () Bool)

(declare-fun tp!2103623 () Bool)

(assert (=> b!7389283 (= e!4422714 (and tp!2103622 tp!2103623))))

(declare-fun b!7389280 () Bool)

(assert (=> b!7389280 (= e!4422714 tp_is_empty!48997)))

(assert (= (and b!7388488 ((_ is ElementMatch!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389280))

(assert (= (and b!7388488 ((_ is Concat!28212) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389281))

(assert (= (and b!7388488 ((_ is Star!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389282))

(assert (= (and b!7388488 ((_ is Union!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389283))

(declare-fun b!7389285 () Bool)

(declare-fun e!4422715 () Bool)

(declare-fun tp!2103629 () Bool)

(declare-fun tp!2103631 () Bool)

(assert (=> b!7389285 (= e!4422715 (and tp!2103629 tp!2103631))))

(declare-fun b!7389286 () Bool)

(declare-fun tp!2103630 () Bool)

(assert (=> b!7389286 (= e!4422715 tp!2103630)))

(assert (=> b!7388488 (= tp!2103178 e!4422715)))

(declare-fun b!7389287 () Bool)

(declare-fun tp!2103627 () Bool)

(declare-fun tp!2103628 () Bool)

(assert (=> b!7389287 (= e!4422715 (and tp!2103627 tp!2103628))))

(declare-fun b!7389284 () Bool)

(assert (=> b!7389284 (= e!4422715 tp_is_empty!48997)))

(assert (= (and b!7388488 ((_ is ElementMatch!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389284))

(assert (= (and b!7388488 ((_ is Concat!28212) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389285))

(assert (= (and b!7388488 ((_ is Star!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389286))

(assert (= (and b!7388488 ((_ is Union!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389287))

(declare-fun b!7389293 () Bool)

(declare-fun e!4422717 () Bool)

(declare-fun tp!2103639 () Bool)

(declare-fun tp!2103641 () Bool)

(assert (=> b!7389293 (= e!4422717 (and tp!2103639 tp!2103641))))

(declare-fun b!7389294 () Bool)

(declare-fun tp!2103640 () Bool)

(assert (=> b!7389294 (= e!4422717 tp!2103640)))

(assert (=> b!7388461 (= tp!2103146 e!4422717)))

(declare-fun b!7389295 () Bool)

(declare-fun tp!2103637 () Bool)

(declare-fun tp!2103638 () Bool)

(assert (=> b!7389295 (= e!4422717 (and tp!2103637 tp!2103638))))

(declare-fun b!7389292 () Bool)

(assert (=> b!7389292 (= e!4422717 tp_is_empty!48997)))

(assert (= (and b!7388461 ((_ is ElementMatch!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389292))

(assert (= (and b!7388461 ((_ is Concat!28212) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389293))

(assert (= (and b!7388461 ((_ is Star!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389294))

(assert (= (and b!7388461 ((_ is Union!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389295))

(declare-fun b!7389297 () Bool)

(declare-fun e!4422718 () Bool)

(declare-fun tp!2103644 () Bool)

(declare-fun tp!2103646 () Bool)

(assert (=> b!7389297 (= e!4422718 (and tp!2103644 tp!2103646))))

(declare-fun b!7389298 () Bool)

(declare-fun tp!2103645 () Bool)

(assert (=> b!7389298 (= e!4422718 tp!2103645)))

(assert (=> b!7388477 (= tp!2103166 e!4422718)))

(declare-fun b!7389299 () Bool)

(declare-fun tp!2103642 () Bool)

(declare-fun tp!2103643 () Bool)

(assert (=> b!7389299 (= e!4422718 (and tp!2103642 tp!2103643))))

(declare-fun b!7389296 () Bool)

(assert (=> b!7389296 (= e!4422718 tp_is_empty!48997)))

(assert (= (and b!7388477 ((_ is ElementMatch!19367) (reg!19696 (h!78224 (exprs!8807 setElem!55934))))) b!7389296))

(assert (= (and b!7388477 ((_ is Concat!28212) (reg!19696 (h!78224 (exprs!8807 setElem!55934))))) b!7389297))

(assert (= (and b!7388477 ((_ is Star!19367) (reg!19696 (h!78224 (exprs!8807 setElem!55934))))) b!7389298))

(assert (= (and b!7388477 ((_ is Union!19367) (reg!19696 (h!78224 (exprs!8807 setElem!55934))))) b!7389299))

(declare-fun b!7389305 () Bool)

(declare-fun e!4422720 () Bool)

(declare-fun tp!2103654 () Bool)

(declare-fun tp!2103656 () Bool)

(assert (=> b!7389305 (= e!4422720 (and tp!2103654 tp!2103656))))

(declare-fun b!7389306 () Bool)

(declare-fun tp!2103655 () Bool)

(assert (=> b!7389306 (= e!4422720 tp!2103655)))

(assert (=> b!7388468 (= tp!2103155 e!4422720)))

(declare-fun b!7389307 () Bool)

(declare-fun tp!2103652 () Bool)

(declare-fun tp!2103653 () Bool)

(assert (=> b!7389307 (= e!4422720 (and tp!2103652 tp!2103653))))

(declare-fun b!7389304 () Bool)

(assert (=> b!7389304 (= e!4422720 tp_is_empty!48997)))

(assert (= (and b!7388468 ((_ is ElementMatch!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389304))

(assert (= (and b!7388468 ((_ is Concat!28212) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389305))

(assert (= (and b!7388468 ((_ is Star!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389306))

(assert (= (and b!7388468 ((_ is Union!19367) (regOne!39246 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389307))

(declare-fun b!7389309 () Bool)

(declare-fun e!4422721 () Bool)

(declare-fun tp!2103659 () Bool)

(declare-fun tp!2103661 () Bool)

(assert (=> b!7389309 (= e!4422721 (and tp!2103659 tp!2103661))))

(declare-fun b!7389310 () Bool)

(declare-fun tp!2103660 () Bool)

(assert (=> b!7389310 (= e!4422721 tp!2103660)))

(assert (=> b!7388468 (= tp!2103157 e!4422721)))

(declare-fun b!7389311 () Bool)

(declare-fun tp!2103657 () Bool)

(declare-fun tp!2103658 () Bool)

(assert (=> b!7389311 (= e!4422721 (and tp!2103657 tp!2103658))))

(declare-fun b!7389308 () Bool)

(assert (=> b!7389308 (= e!4422721 tp_is_empty!48997)))

(assert (= (and b!7388468 ((_ is ElementMatch!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389308))

(assert (= (and b!7388468 ((_ is Concat!28212) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389309))

(assert (= (and b!7388468 ((_ is Star!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389310))

(assert (= (and b!7388468 ((_ is Union!19367) (regTwo!39246 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389311))

(declare-fun condSetEmpty!55948 () Bool)

(assert (=> setNonEmpty!55945 (= condSetEmpty!55948 (= setRest!55945 ((as const (Array Context!16614 Bool)) false)))))

(declare-fun setRes!55948 () Bool)

(assert (=> setNonEmpty!55945 (= tp!2103099 setRes!55948)))

(declare-fun setIsEmpty!55948 () Bool)

(assert (=> setIsEmpty!55948 setRes!55948))

(declare-fun e!4422723 () Bool)

(declare-fun setElem!55948 () Context!16614)

(declare-fun setNonEmpty!55948 () Bool)

(declare-fun tp!2103668 () Bool)

(assert (=> setNonEmpty!55948 (= setRes!55948 (and tp!2103668 (inv!91778 setElem!55948) e!4422723))))

(declare-fun setRest!55948 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55948 (= setRest!55945 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55948 true) setRest!55948))))

(declare-fun b!7389316 () Bool)

(declare-fun tp!2103667 () Bool)

(assert (=> b!7389316 (= e!4422723 tp!2103667)))

(assert (= (and setNonEmpty!55945 condSetEmpty!55948) setIsEmpty!55948))

(assert (= (and setNonEmpty!55945 (not condSetEmpty!55948)) setNonEmpty!55948))

(assert (= setNonEmpty!55948 b!7389316))

(declare-fun m!8035988 () Bool)

(assert (=> setNonEmpty!55948 m!8035988))

(declare-fun b!7389322 () Bool)

(declare-fun e!4422725 () Bool)

(declare-fun tp!2103676 () Bool)

(declare-fun tp!2103678 () Bool)

(assert (=> b!7389322 (= e!4422725 (and tp!2103676 tp!2103678))))

(declare-fun b!7389323 () Bool)

(declare-fun tp!2103677 () Bool)

(assert (=> b!7389323 (= e!4422725 tp!2103677)))

(assert (=> b!7388453 (= tp!2103131 e!4422725)))

(declare-fun b!7389324 () Bool)

(declare-fun tp!2103674 () Bool)

(declare-fun tp!2103675 () Bool)

(assert (=> b!7389324 (= e!4422725 (and tp!2103674 tp!2103675))))

(declare-fun b!7389321 () Bool)

(assert (=> b!7389321 (= e!4422725 tp_is_empty!48997)))

(assert (= (and b!7388453 ((_ is ElementMatch!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389321))

(assert (= (and b!7388453 ((_ is Concat!28212) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389322))

(assert (= (and b!7388453 ((_ is Star!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389323))

(assert (= (and b!7388453 ((_ is Union!19367) (regOne!39247 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389324))

(declare-fun b!7389326 () Bool)

(declare-fun e!4422726 () Bool)

(declare-fun tp!2103681 () Bool)

(declare-fun tp!2103683 () Bool)

(assert (=> b!7389326 (= e!4422726 (and tp!2103681 tp!2103683))))

(declare-fun b!7389327 () Bool)

(declare-fun tp!2103682 () Bool)

(assert (=> b!7389327 (= e!4422726 tp!2103682)))

(assert (=> b!7388453 (= tp!2103132 e!4422726)))

(declare-fun b!7389328 () Bool)

(declare-fun tp!2103679 () Bool)

(declare-fun tp!2103680 () Bool)

(assert (=> b!7389328 (= e!4422726 (and tp!2103679 tp!2103680))))

(declare-fun b!7389325 () Bool)

(assert (=> b!7389325 (= e!4422726 tp_is_empty!48997)))

(assert (= (and b!7388453 ((_ is ElementMatch!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389325))

(assert (= (and b!7388453 ((_ is Concat!28212) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389326))

(assert (= (and b!7388453 ((_ is Star!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389327))

(assert (= (and b!7388453 ((_ is Union!19367) (regTwo!39247 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389328))

(declare-fun b!7389334 () Bool)

(declare-fun e!4422728 () Bool)

(declare-fun tp!2103691 () Bool)

(declare-fun tp!2103693 () Bool)

(assert (=> b!7389334 (= e!4422728 (and tp!2103691 tp!2103693))))

(declare-fun b!7389335 () Bool)

(declare-fun tp!2103692 () Bool)

(assert (=> b!7389335 (= e!4422728 tp!2103692)))

(assert (=> b!7388438 (= tp!2103110 e!4422728)))

(declare-fun b!7389336 () Bool)

(declare-fun tp!2103689 () Bool)

(declare-fun tp!2103690 () Bool)

(assert (=> b!7389336 (= e!4422728 (and tp!2103689 tp!2103690))))

(declare-fun b!7389333 () Bool)

(assert (=> b!7389333 (= e!4422728 tp_is_empty!48997)))

(assert (= (and b!7388438 ((_ is ElementMatch!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389333))

(assert (= (and b!7388438 ((_ is Concat!28212) (regOne!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389334))

(assert (= (and b!7388438 ((_ is Star!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389335))

(assert (= (and b!7388438 ((_ is Union!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389336))

(declare-fun b!7389338 () Bool)

(declare-fun e!4422729 () Bool)

(declare-fun tp!2103696 () Bool)

(declare-fun tp!2103698 () Bool)

(assert (=> b!7389338 (= e!4422729 (and tp!2103696 tp!2103698))))

(declare-fun b!7389339 () Bool)

(declare-fun tp!2103697 () Bool)

(assert (=> b!7389339 (= e!4422729 tp!2103697)))

(assert (=> b!7388438 (= tp!2103111 e!4422729)))

(declare-fun b!7389340 () Bool)

(declare-fun tp!2103694 () Bool)

(declare-fun tp!2103695 () Bool)

(assert (=> b!7389340 (= e!4422729 (and tp!2103694 tp!2103695))))

(declare-fun b!7389337 () Bool)

(assert (=> b!7389337 (= e!4422729 tp_is_empty!48997)))

(assert (= (and b!7388438 ((_ is ElementMatch!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389337))

(assert (= (and b!7388438 ((_ is Concat!28212) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389338))

(assert (= (and b!7388438 ((_ is Star!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389339))

(assert (= (and b!7388438 ((_ is Union!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389340))

(declare-fun b!7389346 () Bool)

(declare-fun e!4422731 () Bool)

(declare-fun tp!2103706 () Bool)

(declare-fun tp!2103708 () Bool)

(assert (=> b!7389346 (= e!4422731 (and tp!2103706 tp!2103708))))

(declare-fun b!7389347 () Bool)

(declare-fun tp!2103707 () Bool)

(assert (=> b!7389347 (= e!4422731 tp!2103707)))

(assert (=> b!7388429 (= tp!2103103 e!4422731)))

(declare-fun b!7389348 () Bool)

(declare-fun tp!2103704 () Bool)

(declare-fun tp!2103705 () Bool)

(assert (=> b!7389348 (= e!4422731 (and tp!2103704 tp!2103705))))

(declare-fun b!7389345 () Bool)

(assert (=> b!7389345 (= e!4422731 tp_is_empty!48997)))

(assert (= (and b!7388429 ((_ is ElementMatch!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389345))

(assert (= (and b!7388429 ((_ is Concat!28212) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389346))

(assert (= (and b!7388429 ((_ is Star!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389347))

(assert (= (and b!7388429 ((_ is Union!19367) (reg!19696 (regOne!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389348))

(declare-fun condSetEmpty!55949 () Bool)

(assert (=> setNonEmpty!55944 (= condSetEmpty!55949 (= setRest!55944 ((as const (Array Context!16614 Bool)) false)))))

(declare-fun setRes!55949 () Bool)

(assert (=> setNonEmpty!55944 (= tp!2103091 setRes!55949)))

(declare-fun setIsEmpty!55949 () Bool)

(assert (=> setIsEmpty!55949 setRes!55949))

(declare-fun tp!2103710 () Bool)

(declare-fun e!4422732 () Bool)

(declare-fun setNonEmpty!55949 () Bool)

(declare-fun setElem!55949 () Context!16614)

(assert (=> setNonEmpty!55949 (= setRes!55949 (and tp!2103710 (inv!91778 setElem!55949) e!4422732))))

(declare-fun setRest!55949 () (InoxSet Context!16614))

(assert (=> setNonEmpty!55949 (= setRest!55944 ((_ map or) (store ((as const (Array Context!16614 Bool)) false) setElem!55949 true) setRest!55949))))

(declare-fun b!7389349 () Bool)

(declare-fun tp!2103709 () Bool)

(assert (=> b!7389349 (= e!4422732 tp!2103709)))

(assert (= (and setNonEmpty!55944 condSetEmpty!55949) setIsEmpty!55949))

(assert (= (and setNonEmpty!55944 (not condSetEmpty!55949)) setNonEmpty!55949))

(assert (= setNonEmpty!55949 b!7389349))

(declare-fun m!8035990 () Bool)

(assert (=> setNonEmpty!55949 m!8035990))

(declare-fun b!7389355 () Bool)

(declare-fun e!4422734 () Bool)

(declare-fun tp!2103718 () Bool)

(declare-fun tp!2103720 () Bool)

(assert (=> b!7389355 (= e!4422734 (and tp!2103718 tp!2103720))))

(declare-fun b!7389356 () Bool)

(declare-fun tp!2103719 () Bool)

(assert (=> b!7389356 (= e!4422734 tp!2103719)))

(assert (=> b!7388470 (= tp!2103153 e!4422734)))

(declare-fun b!7389357 () Bool)

(declare-fun tp!2103716 () Bool)

(declare-fun tp!2103717 () Bool)

(assert (=> b!7389357 (= e!4422734 (and tp!2103716 tp!2103717))))

(declare-fun b!7389354 () Bool)

(assert (=> b!7389354 (= e!4422734 tp_is_empty!48997)))

(assert (= (and b!7388470 ((_ is ElementMatch!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389354))

(assert (= (and b!7388470 ((_ is Concat!28212) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389355))

(assert (= (and b!7388470 ((_ is Star!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389356))

(assert (= (and b!7388470 ((_ is Union!19367) (regOne!39247 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389357))

(declare-fun b!7389361 () Bool)

(declare-fun e!4422736 () Bool)

(declare-fun tp!2103727 () Bool)

(declare-fun tp!2103729 () Bool)

(assert (=> b!7389361 (= e!4422736 (and tp!2103727 tp!2103729))))

(declare-fun b!7389363 () Bool)

(declare-fun tp!2103728 () Bool)

(assert (=> b!7389363 (= e!4422736 tp!2103728)))

(assert (=> b!7388470 (= tp!2103154 e!4422736)))

(declare-fun b!7389365 () Bool)

(declare-fun tp!2103725 () Bool)

(declare-fun tp!2103726 () Bool)

(assert (=> b!7389365 (= e!4422736 (and tp!2103725 tp!2103726))))

(declare-fun b!7389358 () Bool)

(assert (=> b!7389358 (= e!4422736 tp_is_empty!48997)))

(assert (= (and b!7388470 ((_ is ElementMatch!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389358))

(assert (= (and b!7388470 ((_ is Concat!28212) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389361))

(assert (= (and b!7388470 ((_ is Star!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389363))

(assert (= (and b!7388470 ((_ is Union!19367) (regTwo!39247 (regOne!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389365))

(declare-fun b!7389367 () Bool)

(declare-fun e!4422737 () Bool)

(declare-fun tp!2103733 () Bool)

(declare-fun tp!2103735 () Bool)

(assert (=> b!7389367 (= e!4422737 (and tp!2103733 tp!2103735))))

(declare-fun b!7389368 () Bool)

(declare-fun tp!2103734 () Bool)

(assert (=> b!7389368 (= e!4422737 tp!2103734)))

(assert (=> b!7388484 (= tp!2103175 e!4422737)))

(declare-fun b!7389369 () Bool)

(declare-fun tp!2103731 () Bool)

(declare-fun tp!2103732 () Bool)

(assert (=> b!7389369 (= e!4422737 (and tp!2103731 tp!2103732))))

(declare-fun b!7389366 () Bool)

(assert (=> b!7389366 (= e!4422737 tp_is_empty!48997)))

(assert (= (and b!7388484 ((_ is ElementMatch!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 c!10532)))))) b!7389366))

(assert (= (and b!7388484 ((_ is Concat!28212) (h!78224 (t!386453 (t!386453 (exprs!8807 c!10532)))))) b!7389367))

(assert (= (and b!7388484 ((_ is Star!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 c!10532)))))) b!7389368))

(assert (= (and b!7388484 ((_ is Union!19367) (h!78224 (t!386453 (t!386453 (exprs!8807 c!10532)))))) b!7389369))

(declare-fun b!7389374 () Bool)

(declare-fun e!4422739 () Bool)

(declare-fun tp!2103741 () Bool)

(declare-fun tp!2103742 () Bool)

(assert (=> b!7389374 (= e!4422739 (and tp!2103741 tp!2103742))))

(assert (=> b!7388484 (= tp!2103176 e!4422739)))

(assert (= (and b!7388484 ((_ is Cons!71776) (t!386453 (t!386453 (t!386453 (exprs!8807 c!10532)))))) b!7389374))

(declare-fun b!7389376 () Bool)

(declare-fun e!4422740 () Bool)

(declare-fun tp!2103745 () Bool)

(declare-fun tp!2103747 () Bool)

(assert (=> b!7389376 (= e!4422740 (and tp!2103745 tp!2103747))))

(declare-fun b!7389377 () Bool)

(declare-fun tp!2103746 () Bool)

(assert (=> b!7389377 (= e!4422740 tp!2103746)))

(assert (=> b!7388506 (= tp!2103200 e!4422740)))

(declare-fun b!7389378 () Bool)

(declare-fun tp!2103743 () Bool)

(declare-fun tp!2103744 () Bool)

(assert (=> b!7389378 (= e!4422740 (and tp!2103743 tp!2103744))))

(declare-fun b!7389375 () Bool)

(assert (=> b!7389375 (= e!4422740 tp_is_empty!48997)))

(assert (= (and b!7388506 ((_ is ElementMatch!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389375))

(assert (= (and b!7388506 ((_ is Concat!28212) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389376))

(assert (= (and b!7388506 ((_ is Star!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389377))

(assert (= (and b!7388506 ((_ is Union!19367) (regOne!39247 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389378))

(declare-fun b!7389380 () Bool)

(declare-fun e!4422741 () Bool)

(declare-fun tp!2103751 () Bool)

(declare-fun tp!2103753 () Bool)

(assert (=> b!7389380 (= e!4422741 (and tp!2103751 tp!2103753))))

(declare-fun b!7389381 () Bool)

(declare-fun tp!2103752 () Bool)

(assert (=> b!7389381 (= e!4422741 tp!2103752)))

(assert (=> b!7388506 (= tp!2103201 e!4422741)))

(declare-fun b!7389382 () Bool)

(declare-fun tp!2103749 () Bool)

(declare-fun tp!2103750 () Bool)

(assert (=> b!7389382 (= e!4422741 (and tp!2103749 tp!2103750))))

(declare-fun b!7389379 () Bool)

(assert (=> b!7389379 (= e!4422741 tp_is_empty!48997)))

(assert (= (and b!7388506 ((_ is ElementMatch!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389379))

(assert (= (and b!7388506 ((_ is Concat!28212) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389380))

(assert (= (and b!7388506 ((_ is Star!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389381))

(assert (= (and b!7388506 ((_ is Union!19367) (regTwo!39247 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389382))

(declare-fun b!7389388 () Bool)

(declare-fun e!4422743 () Bool)

(declare-fun tp!2103760 () Bool)

(declare-fun tp!2103762 () Bool)

(assert (=> b!7389388 (= e!4422743 (and tp!2103760 tp!2103762))))

(declare-fun b!7389389 () Bool)

(declare-fun tp!2103761 () Bool)

(assert (=> b!7389389 (= e!4422743 tp!2103761)))

(assert (=> b!7388451 (= tp!2103133 e!4422743)))

(declare-fun b!7389390 () Bool)

(declare-fun tp!2103758 () Bool)

(declare-fun tp!2103759 () Bool)

(assert (=> b!7389390 (= e!4422743 (and tp!2103758 tp!2103759))))

(declare-fun b!7389387 () Bool)

(assert (=> b!7389387 (= e!4422743 tp_is_empty!48997)))

(assert (= (and b!7388451 ((_ is ElementMatch!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389387))

(assert (= (and b!7388451 ((_ is Concat!28212) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389388))

(assert (= (and b!7388451 ((_ is Star!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389389))

(assert (= (and b!7388451 ((_ is Union!19367) (regOne!39246 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389390))

(declare-fun b!7389395 () Bool)

(declare-fun e!4422745 () Bool)

(declare-fun tp!2103770 () Bool)

(declare-fun tp!2103772 () Bool)

(assert (=> b!7389395 (= e!4422745 (and tp!2103770 tp!2103772))))

(declare-fun b!7389397 () Bool)

(declare-fun tp!2103771 () Bool)

(assert (=> b!7389397 (= e!4422745 tp!2103771)))

(assert (=> b!7388451 (= tp!2103135 e!4422745)))

(declare-fun b!7389398 () Bool)

(declare-fun tp!2103768 () Bool)

(declare-fun tp!2103769 () Bool)

(assert (=> b!7389398 (= e!4422745 (and tp!2103768 tp!2103769))))

(declare-fun b!7389393 () Bool)

(assert (=> b!7389393 (= e!4422745 tp_is_empty!48997)))

(assert (= (and b!7388451 ((_ is ElementMatch!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389393))

(assert (= (and b!7388451 ((_ is Concat!28212) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389395))

(assert (= (and b!7388451 ((_ is Star!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389397))

(assert (= (and b!7388451 ((_ is Union!19367) (regTwo!39246 (reg!19696 (h!78224 (exprs!8807 setElem!55928)))))) b!7389398))

(declare-fun b!7389399 () Bool)

(declare-fun e!4422746 () Bool)

(declare-fun tp!2103773 () Bool)

(assert (=> b!7389399 (= e!4422746 (and tp_is_empty!48997 tp!2103773))))

(assert (=> b!7388493 (= tp!2103187 e!4422746)))

(assert (= (and b!7388493 ((_ is Cons!71777) (t!386454 (t!386454 (t!386454 (t!386454 s!7927)))))) b!7389399))

(declare-fun b!7389401 () Bool)

(declare-fun e!4422747 () Bool)

(declare-fun tp!2103776 () Bool)

(declare-fun tp!2103778 () Bool)

(assert (=> b!7389401 (= e!4422747 (and tp!2103776 tp!2103778))))

(declare-fun b!7389402 () Bool)

(declare-fun tp!2103777 () Bool)

(assert (=> b!7389402 (= e!4422747 tp!2103777)))

(assert (=> b!7388436 (= tp!2103112 e!4422747)))

(declare-fun b!7389403 () Bool)

(declare-fun tp!2103774 () Bool)

(declare-fun tp!2103775 () Bool)

(assert (=> b!7389403 (= e!4422747 (and tp!2103774 tp!2103775))))

(declare-fun b!7389400 () Bool)

(assert (=> b!7389400 (= e!4422747 tp_is_empty!48997)))

(assert (= (and b!7388436 ((_ is ElementMatch!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389400))

(assert (= (and b!7388436 ((_ is Concat!28212) (regOne!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389401))

(assert (= (and b!7388436 ((_ is Star!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389402))

(assert (= (and b!7388436 ((_ is Union!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389403))

(declare-fun b!7389409 () Bool)

(declare-fun e!4422749 () Bool)

(declare-fun tp!2103786 () Bool)

(declare-fun tp!2103788 () Bool)

(assert (=> b!7389409 (= e!4422749 (and tp!2103786 tp!2103788))))

(declare-fun b!7389410 () Bool)

(declare-fun tp!2103787 () Bool)

(assert (=> b!7389410 (= e!4422749 tp!2103787)))

(assert (=> b!7388436 (= tp!2103114 e!4422749)))

(declare-fun b!7389411 () Bool)

(declare-fun tp!2103784 () Bool)

(declare-fun tp!2103785 () Bool)

(assert (=> b!7389411 (= e!4422749 (and tp!2103784 tp!2103785))))

(declare-fun b!7389408 () Bool)

(assert (=> b!7389408 (= e!4422749 tp_is_empty!48997)))

(assert (= (and b!7388436 ((_ is ElementMatch!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389408))

(assert (= (and b!7388436 ((_ is Concat!28212) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389409))

(assert (= (and b!7388436 ((_ is Star!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389410))

(assert (= (and b!7388436 ((_ is Union!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 empty!3463)))))) b!7389411))

(declare-fun b!7389413 () Bool)

(declare-fun e!4422751 () Bool)

(declare-fun tp!2103791 () Bool)

(declare-fun tp!2103793 () Bool)

(assert (=> b!7389413 (= e!4422751 (and tp!2103791 tp!2103793))))

(declare-fun b!7389414 () Bool)

(declare-fun tp!2103792 () Bool)

(assert (=> b!7389414 (= e!4422751 tp!2103792)))

(assert (=> b!7388491 (= tp!2103185 e!4422751)))

(declare-fun b!7389416 () Bool)

(declare-fun tp!2103789 () Bool)

(declare-fun tp!2103790 () Bool)

(assert (=> b!7389416 (= e!4422751 (and tp!2103789 tp!2103790))))

(declare-fun b!7389412 () Bool)

(assert (=> b!7389412 (= e!4422751 tp_is_empty!48997)))

(assert (= (and b!7388491 ((_ is ElementMatch!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389412))

(assert (= (and b!7388491 ((_ is Concat!28212) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389413))

(assert (= (and b!7388491 ((_ is Star!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389414))

(assert (= (and b!7388491 ((_ is Union!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 setElem!55928)))))) b!7389416))

(declare-fun b!7389420 () Bool)

(declare-fun e!4422753 () Bool)

(declare-fun tp!2103802 () Bool)

(declare-fun tp!2103804 () Bool)

(assert (=> b!7389420 (= e!4422753 (and tp!2103802 tp!2103804))))

(declare-fun b!7389422 () Bool)

(declare-fun tp!2103803 () Bool)

(assert (=> b!7389422 (= e!4422753 tp!2103803)))

(assert (=> b!7388504 (= tp!2103202 e!4422753)))

(declare-fun b!7389423 () Bool)

(declare-fun tp!2103800 () Bool)

(declare-fun tp!2103801 () Bool)

(assert (=> b!7389423 (= e!4422753 (and tp!2103800 tp!2103801))))

(declare-fun b!7389417 () Bool)

(assert (=> b!7389417 (= e!4422753 tp_is_empty!48997)))

(assert (= (and b!7388504 ((_ is ElementMatch!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389417))

(assert (= (and b!7388504 ((_ is Concat!28212) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389420))

(assert (= (and b!7388504 ((_ is Star!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389422))

(assert (= (and b!7388504 ((_ is Union!19367) (regOne!39246 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389423))

(declare-fun b!7389426 () Bool)

(declare-fun e!4422754 () Bool)

(declare-fun tp!2103808 () Bool)

(declare-fun tp!2103810 () Bool)

(assert (=> b!7389426 (= e!4422754 (and tp!2103808 tp!2103810))))

(declare-fun b!7389427 () Bool)

(declare-fun tp!2103809 () Bool)

(assert (=> b!7389427 (= e!4422754 tp!2103809)))

(assert (=> b!7388504 (= tp!2103204 e!4422754)))

(declare-fun b!7389428 () Bool)

(declare-fun tp!2103806 () Bool)

(declare-fun tp!2103807 () Bool)

(assert (=> b!7389428 (= e!4422754 (and tp!2103806 tp!2103807))))

(declare-fun b!7389425 () Bool)

(assert (=> b!7389425 (= e!4422754 tp_is_empty!48997)))

(assert (= (and b!7388504 ((_ is ElementMatch!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389425))

(assert (= (and b!7388504 ((_ is Concat!28212) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389426))

(assert (= (and b!7388504 ((_ is Star!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389427))

(assert (= (and b!7388504 ((_ is Union!19367) (regTwo!39246 (regOne!39246 (h!78224 (exprs!8807 setElem!55928)))))) b!7389428))

(declare-fun b!7389434 () Bool)

(declare-fun e!4422756 () Bool)

(declare-fun tp!2103818 () Bool)

(declare-fun tp!2103820 () Bool)

(assert (=> b!7389434 (= e!4422756 (and tp!2103818 tp!2103820))))

(declare-fun b!7389435 () Bool)

(declare-fun tp!2103819 () Bool)

(assert (=> b!7389435 (= e!4422756 tp!2103819)))

(assert (=> b!7388500 (= tp!2103196 e!4422756)))

(declare-fun b!7389436 () Bool)

(declare-fun tp!2103816 () Bool)

(declare-fun tp!2103817 () Bool)

(assert (=> b!7389436 (= e!4422756 (and tp!2103816 tp!2103817))))

(declare-fun b!7389433 () Bool)

(assert (=> b!7389433 (= e!4422756 tp_is_empty!48997)))

(assert (= (and b!7388500 ((_ is ElementMatch!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389433))

(assert (= (and b!7388500 ((_ is Concat!28212) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389434))

(assert (= (and b!7388500 ((_ is Star!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389435))

(assert (= (and b!7388500 ((_ is Union!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 c!10532)))))) b!7389436))

(declare-fun b!7389438 () Bool)

(declare-fun e!4422757 () Bool)

(declare-fun tp!2103823 () Bool)

(declare-fun tp!2103825 () Bool)

(assert (=> b!7389438 (= e!4422757 (and tp!2103823 tp!2103825))))

(declare-fun b!7389439 () Bool)

(declare-fun tp!2103824 () Bool)

(assert (=> b!7389439 (= e!4422757 tp!2103824)))

(assert (=> b!7388466 (= tp!2103148 e!4422757)))

(declare-fun b!7389440 () Bool)

(declare-fun tp!2103821 () Bool)

(declare-fun tp!2103822 () Bool)

(assert (=> b!7389440 (= e!4422757 (and tp!2103821 tp!2103822))))

(declare-fun b!7389437 () Bool)

(assert (=> b!7389437 (= e!4422757 tp_is_empty!48997)))

(assert (= (and b!7388466 ((_ is ElementMatch!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389437))

(assert (= (and b!7388466 ((_ is Concat!28212) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389438))

(assert (= (and b!7388466 ((_ is Star!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389439))

(assert (= (and b!7388466 ((_ is Union!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389440))

(declare-fun b!7389446 () Bool)

(declare-fun e!4422759 () Bool)

(declare-fun tp!2103833 () Bool)

(declare-fun tp!2103835 () Bool)

(assert (=> b!7389446 (= e!4422759 (and tp!2103833 tp!2103835))))

(declare-fun b!7389447 () Bool)

(declare-fun tp!2103834 () Bool)

(assert (=> b!7389447 (= e!4422759 tp!2103834)))

(assert (=> b!7388466 (= tp!2103149 e!4422759)))

(declare-fun b!7389448 () Bool)

(declare-fun tp!2103831 () Bool)

(declare-fun tp!2103832 () Bool)

(assert (=> b!7389448 (= e!4422759 (and tp!2103831 tp!2103832))))

(declare-fun b!7389445 () Bool)

(assert (=> b!7389445 (= e!4422759 tp_is_empty!48997)))

(assert (= (and b!7388466 ((_ is ElementMatch!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389445))

(assert (= (and b!7388466 ((_ is Concat!28212) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389446))

(assert (= (and b!7388466 ((_ is Star!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389447))

(assert (= (and b!7388466 ((_ is Union!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389448))

(declare-fun b!7389450 () Bool)

(declare-fun e!4422760 () Bool)

(declare-fun tp!2103838 () Bool)

(declare-fun tp!2103840 () Bool)

(assert (=> b!7389450 (= e!4422760 (and tp!2103838 tp!2103840))))

(declare-fun b!7389451 () Bool)

(declare-fun tp!2103839 () Bool)

(assert (=> b!7389451 (= e!4422760 tp!2103839)))

(assert (=> b!7388442 (= tp!2103120 e!4422760)))

(declare-fun b!7389452 () Bool)

(declare-fun tp!2103836 () Bool)

(declare-fun tp!2103837 () Bool)

(assert (=> b!7389452 (= e!4422760 (and tp!2103836 tp!2103837))))

(declare-fun b!7389449 () Bool)

(assert (=> b!7389449 (= e!4422760 tp_is_empty!48997)))

(assert (= (and b!7388442 ((_ is ElementMatch!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389449))

(assert (= (and b!7388442 ((_ is Concat!28212) (reg!19696 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389450))

(assert (= (and b!7388442 ((_ is Star!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389451))

(assert (= (and b!7388442 ((_ is Union!19367) (reg!19696 (h!78224 (t!386453 (exprs!8807 setElem!55928)))))) b!7389452))

(declare-fun b!7389458 () Bool)

(declare-fun e!4422762 () Bool)

(declare-fun tp!2103848 () Bool)

(declare-fun tp!2103850 () Bool)

(assert (=> b!7389458 (= e!4422762 (and tp!2103848 tp!2103850))))

(declare-fun b!7389459 () Bool)

(declare-fun tp!2103849 () Bool)

(assert (=> b!7389459 (= e!4422762 tp!2103849)))

(assert (=> b!7388483 (= tp!2103170 e!4422762)))

(declare-fun b!7389460 () Bool)

(declare-fun tp!2103846 () Bool)

(declare-fun tp!2103847 () Bool)

(assert (=> b!7389460 (= e!4422762 (and tp!2103846 tp!2103847))))

(declare-fun b!7389457 () Bool)

(assert (=> b!7389457 (= e!4422762 tp_is_empty!48997)))

(assert (= (and b!7388483 ((_ is ElementMatch!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389457))

(assert (= (and b!7388483 ((_ is Concat!28212) (regOne!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389458))

(assert (= (and b!7388483 ((_ is Star!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389459))

(assert (= (and b!7388483 ((_ is Union!19367) (regOne!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389460))

(declare-fun b!7389462 () Bool)

(declare-fun e!4422763 () Bool)

(declare-fun tp!2103853 () Bool)

(declare-fun tp!2103855 () Bool)

(assert (=> b!7389462 (= e!4422763 (and tp!2103853 tp!2103855))))

(declare-fun b!7389463 () Bool)

(declare-fun tp!2103854 () Bool)

(assert (=> b!7389463 (= e!4422763 tp!2103854)))

(assert (=> b!7388483 (= tp!2103171 e!4422763)))

(declare-fun b!7389464 () Bool)

(declare-fun tp!2103851 () Bool)

(declare-fun tp!2103852 () Bool)

(assert (=> b!7389464 (= e!4422763 (and tp!2103851 tp!2103852))))

(declare-fun b!7389461 () Bool)

(assert (=> b!7389461 (= e!4422763 tp_is_empty!48997)))

(assert (= (and b!7388483 ((_ is ElementMatch!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389461))

(assert (= (and b!7388483 ((_ is Concat!28212) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389462))

(assert (= (and b!7388483 ((_ is Star!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389463))

(assert (= (and b!7388483 ((_ is Union!19367) (regTwo!39247 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389464))

(declare-fun b!7389469 () Bool)

(declare-fun e!4422765 () Bool)

(declare-fun tp!2103861 () Bool)

(declare-fun tp!2103862 () Bool)

(assert (=> b!7389469 (= e!4422765 (and tp!2103861 tp!2103862))))

(assert (=> b!7388363 (= tp!2103096 e!4422765)))

(assert (= (and b!7388363 ((_ is Cons!71776) (exprs!8807 (h!78227 res!2979148)))) b!7389469))

(declare-fun b!7389471 () Bool)

(declare-fun e!4422766 () Bool)

(declare-fun tp!2103865 () Bool)

(declare-fun tp!2103867 () Bool)

(assert (=> b!7389471 (= e!4422766 (and tp!2103865 tp!2103867))))

(declare-fun b!7389472 () Bool)

(declare-fun tp!2103866 () Bool)

(assert (=> b!7389472 (= e!4422766 tp!2103866)))

(assert (=> b!7388432 (= tp!2103107 e!4422766)))

(declare-fun b!7389473 () Bool)

(declare-fun tp!2103863 () Bool)

(declare-fun tp!2103864 () Bool)

(assert (=> b!7389473 (= e!4422766 (and tp!2103863 tp!2103864))))

(declare-fun b!7389470 () Bool)

(assert (=> b!7389470 (= e!4422766 tp_is_empty!48997)))

(assert (= (and b!7388432 ((_ is ElementMatch!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389470))

(assert (= (and b!7388432 ((_ is Concat!28212) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389471))

(assert (= (and b!7388432 ((_ is Star!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389472))

(assert (= (and b!7388432 ((_ is Union!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389473))

(declare-fun b!7389479 () Bool)

(declare-fun e!4422768 () Bool)

(declare-fun tp!2103875 () Bool)

(declare-fun tp!2103877 () Bool)

(assert (=> b!7389479 (= e!4422768 (and tp!2103875 tp!2103877))))

(declare-fun b!7389480 () Bool)

(declare-fun tp!2103876 () Bool)

(assert (=> b!7389480 (= e!4422768 tp!2103876)))

(assert (=> b!7388432 (= tp!2103109 e!4422768)))

(declare-fun b!7389481 () Bool)

(declare-fun tp!2103873 () Bool)

(declare-fun tp!2103874 () Bool)

(assert (=> b!7389481 (= e!4422768 (and tp!2103873 tp!2103874))))

(declare-fun b!7389478 () Bool)

(assert (=> b!7389478 (= e!4422768 tp_is_empty!48997)))

(assert (= (and b!7388432 ((_ is ElementMatch!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389478))

(assert (= (and b!7388432 ((_ is Concat!28212) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389479))

(assert (= (and b!7388432 ((_ is Star!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389480))

(assert (= (and b!7388432 ((_ is Union!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389481))

(declare-fun b!7389483 () Bool)

(declare-fun e!4422769 () Bool)

(declare-fun tp!2103880 () Bool)

(declare-fun tp!2103882 () Bool)

(assert (=> b!7389483 (= e!4422769 (and tp!2103880 tp!2103882))))

(declare-fun b!7389484 () Bool)

(declare-fun tp!2103881 () Bool)

(assert (=> b!7389484 (= e!4422769 tp!2103881)))

(assert (=> b!7388473 (= tp!2103161 e!4422769)))

(declare-fun b!7389485 () Bool)

(declare-fun tp!2103878 () Bool)

(declare-fun tp!2103879 () Bool)

(assert (=> b!7389485 (= e!4422769 (and tp!2103878 tp!2103879))))

(declare-fun b!7389482 () Bool)

(assert (=> b!7389482 (= e!4422769 tp_is_empty!48997)))

(assert (= (and b!7388473 ((_ is ElementMatch!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389482))

(assert (= (and b!7388473 ((_ is Concat!28212) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389483))

(assert (= (and b!7388473 ((_ is Star!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389484))

(assert (= (and b!7388473 ((_ is Union!19367) (reg!19696 (regTwo!39247 (h!78224 (exprs!8807 empty!3463)))))) b!7389485))

(declare-fun b!7389491 () Bool)

(declare-fun e!4422771 () Bool)

(declare-fun tp!2103890 () Bool)

(declare-fun tp!2103892 () Bool)

(assert (=> b!7389491 (= e!4422771 (and tp!2103890 tp!2103892))))

(declare-fun b!7389492 () Bool)

(declare-fun tp!2103891 () Bool)

(assert (=> b!7389492 (= e!4422771 tp!2103891)))

(assert (=> b!7388464 (= tp!2103150 e!4422771)))

(declare-fun b!7389493 () Bool)

(declare-fun tp!2103888 () Bool)

(declare-fun tp!2103889 () Bool)

(assert (=> b!7389493 (= e!4422771 (and tp!2103888 tp!2103889))))

(declare-fun b!7389490 () Bool)

(assert (=> b!7389490 (= e!4422771 tp_is_empty!48997)))

(assert (= (and b!7388464 ((_ is ElementMatch!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389490))

(assert (= (and b!7388464 ((_ is Concat!28212) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389491))

(assert (= (and b!7388464 ((_ is Star!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389492))

(assert (= (and b!7388464 ((_ is Union!19367) (regOne!39246 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389493))

(declare-fun b!7389495 () Bool)

(declare-fun e!4422772 () Bool)

(declare-fun tp!2103895 () Bool)

(declare-fun tp!2103897 () Bool)

(assert (=> b!7389495 (= e!4422772 (and tp!2103895 tp!2103897))))

(declare-fun b!7389496 () Bool)

(declare-fun tp!2103896 () Bool)

(assert (=> b!7389496 (= e!4422772 tp!2103896)))

(assert (=> b!7388464 (= tp!2103152 e!4422772)))

(declare-fun b!7389497 () Bool)

(declare-fun tp!2103893 () Bool)

(declare-fun tp!2103894 () Bool)

(assert (=> b!7389497 (= e!4422772 (and tp!2103893 tp!2103894))))

(declare-fun b!7389494 () Bool)

(assert (=> b!7389494 (= e!4422772 tp_is_empty!48997)))

(assert (= (and b!7388464 ((_ is ElementMatch!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389494))

(assert (= (and b!7388464 ((_ is Concat!28212) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389495))

(assert (= (and b!7388464 ((_ is Star!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389496))

(assert (= (and b!7388464 ((_ is Union!19367) (regTwo!39246 (regTwo!39246 (h!78224 (exprs!8807 empty!3463)))))) b!7389497))

(declare-fun b!7389503 () Bool)

(declare-fun e!4422774 () Bool)

(declare-fun tp!2103905 () Bool)

(declare-fun tp!2103907 () Bool)

(assert (=> b!7389503 (= e!4422774 (and tp!2103905 tp!2103907))))

(declare-fun b!7389504 () Bool)

(declare-fun tp!2103906 () Bool)

(assert (=> b!7389504 (= e!4422774 tp!2103906)))

(assert (=> b!7388449 (= tp!2103129 e!4422774)))

(declare-fun b!7389505 () Bool)

(declare-fun tp!2103903 () Bool)

(declare-fun tp!2103904 () Bool)

(assert (=> b!7389505 (= e!4422774 (and tp!2103903 tp!2103904))))

(declare-fun b!7389502 () Bool)

(assert (=> b!7389502 (= e!4422774 tp_is_empty!48997)))

(assert (= (and b!7388449 ((_ is ElementMatch!19367) (h!78224 (exprs!8807 setElem!55936)))) b!7389502))

(assert (= (and b!7388449 ((_ is Concat!28212) (h!78224 (exprs!8807 setElem!55936)))) b!7389503))

(assert (= (and b!7388449 ((_ is Star!19367) (h!78224 (exprs!8807 setElem!55936)))) b!7389504))

(assert (= (and b!7388449 ((_ is Union!19367) (h!78224 (exprs!8807 setElem!55936)))) b!7389505))

(declare-fun b!7389506 () Bool)

(declare-fun e!4422775 () Bool)

(declare-fun tp!2103908 () Bool)

(declare-fun tp!2103909 () Bool)

(assert (=> b!7389506 (= e!4422775 (and tp!2103908 tp!2103909))))

(assert (=> b!7388449 (= tp!2103130 e!4422775)))

(assert (= (and b!7388449 ((_ is Cons!71776) (t!386453 (exprs!8807 setElem!55936)))) b!7389506))

(declare-fun b!7389512 () Bool)

(declare-fun e!4422777 () Bool)

(declare-fun tp!2103917 () Bool)

(declare-fun tp!2103919 () Bool)

(assert (=> b!7389512 (= e!4422777 (and tp!2103917 tp!2103919))))

(declare-fun b!7389513 () Bool)

(declare-fun tp!2103918 () Bool)

(assert (=> b!7389513 (= e!4422777 tp!2103918)))

(assert (=> b!7388481 (= tp!2103172 e!4422777)))

(declare-fun b!7389514 () Bool)

(declare-fun tp!2103915 () Bool)

(declare-fun tp!2103916 () Bool)

(assert (=> b!7389514 (= e!4422777 (and tp!2103915 tp!2103916))))

(declare-fun b!7389511 () Bool)

(assert (=> b!7389511 (= e!4422777 tp_is_empty!48997)))

(assert (= (and b!7388481 ((_ is ElementMatch!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389511))

(assert (= (and b!7388481 ((_ is Concat!28212) (regOne!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389512))

(assert (= (and b!7388481 ((_ is Star!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389513))

(assert (= (and b!7388481 ((_ is Union!19367) (regOne!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389514))

(declare-fun b!7389516 () Bool)

(declare-fun e!4422778 () Bool)

(declare-fun tp!2103922 () Bool)

(declare-fun tp!2103924 () Bool)

(assert (=> b!7389516 (= e!4422778 (and tp!2103922 tp!2103924))))

(declare-fun b!7389517 () Bool)

(declare-fun tp!2103923 () Bool)

(assert (=> b!7389517 (= e!4422778 tp!2103923)))

(assert (=> b!7388481 (= tp!2103174 e!4422778)))

(declare-fun b!7389518 () Bool)

(declare-fun tp!2103920 () Bool)

(declare-fun tp!2103921 () Bool)

(assert (=> b!7389518 (= e!4422778 (and tp!2103920 tp!2103921))))

(declare-fun b!7389515 () Bool)

(assert (=> b!7389515 (= e!4422778 tp_is_empty!48997)))

(assert (= (and b!7388481 ((_ is ElementMatch!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389515))

(assert (= (and b!7388481 ((_ is Concat!28212) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389516))

(assert (= (and b!7388481 ((_ is Star!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389517))

(assert (= (and b!7388481 ((_ is Union!19367) (regTwo!39246 (h!78224 (t!386453 (exprs!8807 c!10532)))))) b!7389518))

(declare-fun b!7389521 () Bool)

(declare-fun e!4422780 () Bool)

(declare-fun tp!2103929 () Bool)

(declare-fun tp!2103931 () Bool)

(assert (=> b!7389521 (= e!4422780 (and tp!2103929 tp!2103931))))

(declare-fun b!7389522 () Bool)

(declare-fun tp!2103930 () Bool)

(assert (=> b!7389522 (= e!4422780 tp!2103930)))

(assert (=> b!7388434 (= tp!2103105 e!4422780)))

(declare-fun b!7389523 () Bool)

(declare-fun tp!2103927 () Bool)

(declare-fun tp!2103928 () Bool)

(assert (=> b!7389523 (= e!4422780 (and tp!2103927 tp!2103928))))

(declare-fun b!7389520 () Bool)

(assert (=> b!7389520 (= e!4422780 tp_is_empty!48997)))

(assert (= (and b!7388434 ((_ is ElementMatch!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389520))

(assert (= (and b!7388434 ((_ is Concat!28212) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389521))

(assert (= (and b!7388434 ((_ is Star!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389522))

(assert (= (and b!7388434 ((_ is Union!19367) (regOne!39247 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389523))

(declare-fun b!7389529 () Bool)

(declare-fun e!4422782 () Bool)

(declare-fun tp!2103939 () Bool)

(declare-fun tp!2103941 () Bool)

(assert (=> b!7389529 (= e!4422782 (and tp!2103939 tp!2103941))))

(declare-fun b!7389530 () Bool)

(declare-fun tp!2103940 () Bool)

(assert (=> b!7389530 (= e!4422782 tp!2103940)))

(assert (=> b!7388434 (= tp!2103106 e!4422782)))

(declare-fun b!7389531 () Bool)

(declare-fun tp!2103937 () Bool)

(declare-fun tp!2103938 () Bool)

(assert (=> b!7389531 (= e!4422782 (and tp!2103937 tp!2103938))))

(declare-fun b!7389528 () Bool)

(assert (=> b!7389528 (= e!4422782 tp_is_empty!48997)))

(assert (= (and b!7388434 ((_ is ElementMatch!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389528))

(assert (= (and b!7388434 ((_ is Concat!28212) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389529))

(assert (= (and b!7388434 ((_ is Star!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389530))

(assert (= (and b!7388434 ((_ is Union!19367) (regTwo!39247 (regTwo!39246 (h!78224 (exprs!8807 c!10532)))))) b!7389531))

(declare-fun b_lambda!285193 () Bool)

(assert (= b_lambda!285177 (or d!2287003 b_lambda!285193)))

(declare-fun bs!1922342 () Bool)

(declare-fun d!2287421 () Bool)

(assert (= bs!1922342 (and d!2287421 d!2287003)))

(assert (=> bs!1922342 (= (dynLambda!29569 lambda!458994 (h!78224 (t!386453 (t!386453 (exprs!8807 c!10532))))) (validRegex!9944 (h!78224 (t!386453 (t!386453 (exprs!8807 c!10532))))))))

(declare-fun m!8035992 () Bool)

(assert (=> bs!1922342 m!8035992))

(assert (=> b!7388763 d!2287421))

(declare-fun b_lambda!285195 () Bool)

(assert (= b_lambda!285173 (or d!2287161 b_lambda!285195)))

(declare-fun bs!1922343 () Bool)

(declare-fun d!2287423 () Bool)

(assert (= bs!1922343 (and d!2287423 d!2287161)))

(assert (=> bs!1922343 (= (dynLambda!29569 lambda!459012 (h!78224 (exprs!8807 _$3!516))) (validRegex!9944 (h!78224 (exprs!8807 _$3!516))))))

(declare-fun m!8035994 () Bool)

(assert (=> bs!1922343 m!8035994))

(assert (=> b!7388684 d!2287423))

(declare-fun b_lambda!285197 () Bool)

(assert (= b_lambda!285183 (or d!2286959 b_lambda!285197)))

(declare-fun bs!1922344 () Bool)

(declare-fun d!2287425 () Bool)

(assert (= bs!1922344 (and d!2287425 d!2286959)))

(assert (=> bs!1922344 (= (dynLambda!29569 lambda!458983 (h!78224 (t!386453 (t!386453 (exprs!8807 setElem!55928))))) (validRegex!9944 (h!78224 (t!386453 (t!386453 (exprs!8807 setElem!55928))))))))

(declare-fun m!8035996 () Bool)

(assert (=> bs!1922344 m!8035996))

(assert (=> b!7388871 d!2287425))

(declare-fun b_lambda!285199 () Bool)

(assert (= b_lambda!285169 (or d!2287189 b_lambda!285199)))

(declare-fun bs!1922345 () Bool)

(declare-fun d!2287427 () Bool)

(assert (= bs!1922345 (and d!2287427 d!2287189)))

(assert (=> bs!1922345 (= (dynLambda!29569 lambda!459014 (h!78224 (exprs!8807 setElem!55936))) (validRegex!9944 (h!78224 (exprs!8807 setElem!55936))))))

(declare-fun m!8035998 () Bool)

(assert (=> bs!1922345 m!8035998))

(assert (=> b!7388647 d!2287427))

(declare-fun b_lambda!285201 () Bool)

(assert (= b_lambda!285165 (or d!2287043 b_lambda!285201)))

(declare-fun bs!1922346 () Bool)

(declare-fun d!2287429 () Bool)

(assert (= bs!1922346 (and d!2287429 d!2287043)))

(assert (=> bs!1922346 (= (dynLambda!29571 lambda!459004 (h!78227 (t!386456 (toList!11730 lt!2617738)))) (not (dynLambda!29571 lambda!458972 (h!78227 (t!386456 (toList!11730 lt!2617738))))))))

(declare-fun b_lambda!285209 () Bool)

(assert (=> (not b_lambda!285209) (not bs!1922346)))

(declare-fun m!8036000 () Bool)

(assert (=> bs!1922346 m!8036000))

(assert (=> b!7388605 d!2287429))

(declare-fun b_lambda!285203 () Bool)

(assert (= b_lambda!285171 (or d!2286993 b_lambda!285203)))

(declare-fun bs!1922347 () Bool)

(declare-fun d!2287431 () Bool)

(assert (= bs!1922347 (and d!2287431 d!2286993)))

(assert (=> bs!1922347 (= (dynLambda!29569 lambda!458993 (h!78224 (t!386453 (t!386453 (exprs!8807 empty!3463))))) (validRegex!9944 (h!78224 (t!386453 (t!386453 (exprs!8807 empty!3463))))))))

(declare-fun m!8036002 () Bool)

(assert (=> bs!1922347 m!8036002))

(assert (=> b!7388658 d!2287431))

(declare-fun b_lambda!285205 () Bool)

(assert (= b_lambda!285181 (or d!2287177 b_lambda!285205)))

(declare-fun bs!1922348 () Bool)

(declare-fun d!2287433 () Bool)

(assert (= bs!1922348 (and d!2287433 d!2287177)))

(assert (=> bs!1922348 (= (dynLambda!29571 lambda!459013 (h!78227 (toList!11730 z!3451))) (not (dynLambda!29571 lambda!458992 (h!78227 (toList!11730 z!3451)))))))

(declare-fun b_lambda!285211 () Bool)

(assert (=> (not b_lambda!285211) (not bs!1922348)))

(declare-fun m!8036004 () Bool)

(assert (=> bs!1922348 m!8036004))

(assert (=> b!7388853 d!2287433))

(declare-fun b_lambda!285207 () Bool)

(assert (= b_lambda!285189 (or d!2287049 b_lambda!285207)))

(declare-fun bs!1922349 () Bool)

(declare-fun d!2287435 () Bool)

(assert (= bs!1922349 (and d!2287435 d!2287049)))

(assert (=> bs!1922349 (= (dynLambda!29569 lambda!459005 (h!78224 (t!386453 (exprs!8807 setElem!55934)))) (validRegex!9944 (h!78224 (t!386453 (exprs!8807 setElem!55934)))))))

(declare-fun m!8036006 () Bool)

(assert (=> bs!1922349 m!8036006))

(assert (=> b!7388920 d!2287435))

(check-sat (not b!7389506) (not b!7388850) (not d!2287365) (not bm!680354) (not b!7389522) (not b!7389356) (not b!7389093) (not b!7389022) (not b!7389084) (not b!7389150) (not bm!680358) (not b!7388685) (not bm!680348) (not b!7389132) (not b!7389309) (not bm!680381) (not b!7388959) (not b!7389523) (not b!7389529) (not b!7389001) (not d!2287245) (not b!7389378) (not d!2287335) (not b!7388997) (not b!7389214) (not d!2287263) (not b!7389088) (not b!7389491) (not d!2287275) (not b!7389075) (not b!7389448) (not b!7389423) (not b!7388962) (not b!7389365) (not bs!1922345) (not b!7389024) (not b!7389409) (not b!7388657) (not b!7389149) (not b!7389023) (not b!7388972) (not bm!680270) (not b!7388985) (not d!2287383) (not b!7389479) (not b!7389060) (not b!7389266) (not b!7389380) (not b!7389395) (not b_lambda!285145) (not b!7388995) (not b!7389381) (not b!7389427) (not b!7389247) (not b_lambda!285109) (not b!7389081) (not b!7389294) (not b!7389145) (not b!7389518) (not bm!680313) (not b!7389338) (not b!7389435) (not b!7389033) (not bm!680346) (not b!7388970) (not bm!680314) (not b!7388906) (not b!7389210) (not b!7389282) (not b!7389399) (not b_lambda!285199) (not b!7388956) (not d!2287341) (not b!7389237) (not b!7389184) (not b!7388750) (not b!7389462) (not b!7389113) (not b!7388996) (not b!7389129) (not b!7389013) (not b!7389217) (not b!7388964) (not bm!680283) (not b!7388987) (not b!7388708) (not b!7389106) (not b!7389026) (not b!7389347) (not b!7389068) (not b!7389044) (not b!7389369) (not b!7389144) (not b!7389014) (not b!7388776) (not b!7389233) (not b!7389416) (not b!7388944) (not b_lambda!285201) (not d!2287327) (not b!7388951) (not b!7389128) (not d!2287277) (not b!7389363) (not b!7389530) (not b!7388960) (not b!7388890) (not b!7389305) (not b!7389446) (not b!7389027) (not b!7388988) (not b!7389401) (not b!7389336) (not b!7389377) (not b!7389504) (not b!7388966) (not bm!680296) (not b!7389109) (not b!7388854) (not b!7389130) (not b!7388872) (not b!7389436) (not bm!680287) (not b!7389112) (not b!7389043) (not b!7389218) (not b!7389297) (not b!7389397) (not b!7389451) (not b!7388633) (not b!7389328) (not b!7389410) (not b!7389029) (not b!7389018) (not b_lambda!285209) (not b!7389071) (not b!7389005) (not b!7388977) (not b!7388713) (not b!7389270) (not b_lambda!285195) (not b!7388946) (not b!7389298) (not bm!680334) (not b_lambda!285203) (not b!7389316) (not b!7389187) (not b!7388697) (not b!7389496) (not b!7389059) (not b!7389173) (not b!7389513) (not b_lambda!285197) (not b!7389138) (not b!7389464) (not b!7389485) (not bm!680371) (not b!7388963) (not b!7389099) (not b!7389169) (not bm!680349) (not b!7389521) (not b!7389157) (not b!7389348) (not b_lambda!285107) (not b!7389403) (not bm!680326) (not bm!680284) (not b!7389311) (not b!7389281) (not b!7389322) (not b!7389085) (not b!7389122) (not b!7389463) (not b!7389473) (not b!7389035) (not b!7388680) (not b!7388955) (not b!7389414) (not b!7389480) (not b!7389116) (not b!7389110) (not b!7388921) (not b!7389440) (not b!7389413) (not b!7388954) (not b!7388993) (not b!7389117) (not b!7388989) (not b!7389503) (not b!7388968) (not b!7388976) (not b!7389101) (not bm!680273) (not b!7389459) (not b!7389095) (not b!7388882) (not b!7389017) (not bm!680378) (not b_lambda!285159) (not b_lambda!285205) (not b!7389376) (not b!7389471) (not b_lambda!285153) (not b!7389307) (not b!7389067) (not bs!1922344) (not b!7388738) (not b!7388958) (not b!7389100) (not bm!680369) (not b!7389083) (not b!7389124) (not b!7389483) (not b!7388947) (not b!7388660) (not b!7389010) (not b!7388950) (not b!7389161) (not b!7389079) tp_is_empty!48997 (not b!7388940) (not b!7389162) (not d!2287405) (not b!7389299) (not b!7389125) (not bm!680302) (not b!7389168) (not b_lambda!285147) (not b!7389004) (not bm!680309) (not bm!680285) (not b_lambda!285111) (not b!7389263) (not b!7389460) (not b!7389505) (not b!7389493) (not b!7389285) (not bm!680342) (not b!7388981) (not bs!1922343) (not b!7389252) (not b!7389036) (not b!7389170) (not b!7388777) (not b!7389235) (not b!7389089) (not setNonEmpty!55948) (not b!7389212) (not b!7389398) (not b!7389472) (not b!7389438) (not b!7389058) (not b!7389346) (not b!7389039) (not b!7389274) (not b!7389160) (not bm!680299) (not b!7388983) (not b!7389323) (not b!7389227) (not b!7388915) (not b!7388975) (not b!7388839) (not b!7389065) (not b!7389209) (not b!7389032) (not b!7389180) (not b!7389368) (not b!7389310) (not b!7388764) (not b!7389420) (not b_lambda!285193) (not d!2287337) (not b!7389439) (not b_lambda!285149) (not b!7388971) (not bm!680311) (not bm!680359) (not b!7389469) (not setNonEmpty!55947) (not b!7389000) (not b!7389326) (not b!7388991) (not b!7388974) (not b!7388775) (not b!7389097) (not b!7388992) (not b!7389251) (not b!7389040) (not b!7389238) (not bm!680362) (not b_lambda!285211) (not d!2287339) (not bs!1922342) (not bm!680274) (not b!7389458) (not b!7389357) (not b!7388683) (not b!7389349) (not bm!680361) (not b!7389295) (not b!7388661) (not b!7389361) (not b!7389114) (not b!7389073) (not b!7389390) (not b!7389481) (not b!7389172) (not b!7389037) (not b!7389080) (not b!7389497) (not bm!680377) (not b_lambda!285207) (not b!7388948) (not b!7389447) (not b!7389226) (not b!7389087) (not b!7389512) (not b!7389174) (not b!7389045) (not b!7389516) (not b!7389213) (not b!7389121) (not b!7389185) (not b!7389248) (not b!7389062) (not b!7389426) (not b!7389118) (not b!7389002) (not b!7388980) (not b!7388810) (not b!7389105) (not b!7389517) (not b!7389076) (not b!7389327) (not b!7389367) (not setNonEmpty!55949) (not d!2287373) (not bs!1922347) (not b!7389450) (not b!7389402) (not b!7389495) (not b!7389411) (not bm!680306) (not b!7388799) (not b!7389009) (not b!7388979) (not b!7389434) (not b!7389283) (not b!7389069) (not d!2287377) (not b!7389255) (not b!7389136) (not bm!680338) (not b!7389355) (not b!7388967) (not bm!680366) (not b!7389008) (not bs!1922349) (not b!7389339) (not b!7388998) (not b!7389006) (not b!7389246) (not bm!680324) (not b!7389231) (not b!7389091) (not b!7389028) (not b!7389092) (not d!2287387) (not b!7389334) (not b!7389244) (not b!7389340) (not b!7389306) (not b!7388681) (not b!7389077) (not b!7389063) (not d!2287265) (not b!7389253) (not b!7389158) (not b!7389120) (not b!7389031) (not b!7389146) (not b_lambda!285151) (not bm!680292) (not bm!680276) (not b!7389531) (not b!7389275) (not bm!680269) (not b!7389452) (not b!7389428) (not b!7389514) (not b!7389268) (not b!7389219) (not d!2287369) (not b!7389156) (not b!7388618) (not b!7388668) (not b!7388774) (not b!7389126) (not b!7388771) (not bm!680365) (not bm!680352) (not b!7388952) (not b!7389225) (not b!7389239) (not b!7389273) (not b!7388984) (not b!7389064) (not b!7388648) (not b!7389422) (not b!7388778) (not b!7389096) (not b!7389148) (not b!7388606) (not b!7389388) (not bm!680335) (not b!7389324) (not b!7389134) (not b!7389012) (not b!7388659) (not b!7389335) (not b!7389104) (not b!7388813) (not bm!680351) (not b!7389374) (not b!7389261) (not b!7388830) (not b!7389484) (not b!7389103) (not b!7389041) (not b!7389293) (not b!7389016) (not b!7389133) (not b!7389389) (not bm!680298) (not bm!680308) (not bm!680368) (not b!7389137) (not b!7389108) (not b!7389182) (not b!7389382) (not b!7389072) (not b!7388729) (not b!7389181) (not bm!680317) (not b!7389492) (not b!7389287) (not b!7389286) (not bm!680293) (not b!7389262))
(check-sat)
(get-model)

(declare-fun b_lambda!285233 () Bool)

(assert (= b_lambda!285211 (or d!2286991 b_lambda!285233)))

(declare-fun bs!1922358 () Bool)

(declare-fun d!2287453 () Bool)

(assert (= bs!1922358 (and d!2287453 d!2286991)))

(declare-fun dynLambda!29572 (Int Context!16614) (InoxSet Context!16614))

(assert (=> bs!1922358 (= (dynLambda!29571 lambda!458992 (h!78227 (toList!11730 z!3451))) (select (dynLambda!29572 lambda!458971 (h!78227 (toList!11730 z!3451))) lt!2617739))))

(declare-fun b_lambda!285237 () Bool)

(assert (=> (not b_lambda!285237) (not bs!1922358)))

(declare-fun m!8036032 () Bool)

(assert (=> bs!1922358 m!8036032))

(declare-fun m!8036034 () Bool)

(assert (=> bs!1922358 m!8036034))

(assert (=> bs!1922348 d!2287453))

(declare-fun b_lambda!285235 () Bool)

(assert (= b_lambda!285209 (or b!7387801 b_lambda!285235)))

(declare-fun bs!1922359 () Bool)

(declare-fun d!2287455 () Bool)

(assert (= bs!1922359 (and d!2287455 b!7387801)))

(assert (=> bs!1922359 (= (dynLambda!29571 lambda!458972 (h!78227 (t!386456 (toList!11730 lt!2617738)))) (not (= (h!78227 (t!386456 (toList!11730 lt!2617738))) lt!2617739)))))

(assert (=> bs!1922346 d!2287455))

(check-sat (not b!7389506) (not b!7388850) (not d!2287365) (not bm!680354) (not b!7389522) (not b!7389356) (not b!7389093) (not b!7389022) (not b!7389084) (not b!7389150) (not bm!680358) (not b!7388685) (not bm!680348) (not b!7389132) (not b!7389309) (not bm!680381) (not b!7388959) (not b!7389523) (not b!7389529) (not b!7389001) (not d!2287245) (not b!7389378) (not d!2287335) (not b!7388997) (not b!7389214) (not d!2287263) (not b!7389088) (not b!7389491) (not d!2287275) (not b!7389075) (not b!7389448) (not b!7389423) (not b!7388962) (not b!7389365) (not bs!1922345) (not b!7389024) (not b!7389409) (not b!7388657) (not b!7389149) (not b!7389023) (not b!7388972) (not bm!680270) (not b!7388985) (not d!2287383) (not b!7389479) (not b!7389060) (not b!7389266) (not b!7389380) (not b!7389395) (not b_lambda!285145) (not b!7388995) (not b!7389381) (not b_lambda!285235) (not b!7389427) (not b!7389247) (not b_lambda!285109) (not b!7389081) (not b!7389294) (not b!7389145) (not b!7389518) (not bm!680313) (not b!7389338) (not b!7389435) (not b!7389033) (not bm!680346) (not b!7388970) (not bm!680314) (not b!7388906) (not b!7389210) (not b!7389282) (not b!7389399) (not b_lambda!285199) (not b!7388956) (not d!2287341) (not b!7389237) (not b!7389184) (not b!7388750) (not b!7389462) (not b!7389113) (not b!7388996) (not b!7389129) (not b!7389013) (not b!7389217) (not b!7388964) (not bm!680283) (not b!7388987) (not b!7388708) (not b!7389106) (not b!7389026) (not b!7389347) (not b!7389068) (not b!7389044) (not b!7389369) (not b!7389144) (not b!7389014) (not b!7388776) (not b!7389233) (not b!7389416) (not b!7388944) (not b_lambda!285201) (not d!2287327) (not b!7388951) (not b!7389128) (not d!2287277) (not b!7389363) (not b!7389530) (not b!7388960) (not b!7388890) (not b!7389305) (not b!7389446) (not b!7389027) (not b!7388988) (not b!7389401) (not b!7389336) (not b!7389377) (not b!7389504) (not b!7388966) (not bm!680296) (not b!7389109) (not b!7388854) (not b!7389130) (not b!7388872) (not b!7389436) (not bm!680287) (not b!7389112) (not b!7389043) (not b!7389218) (not b!7389297) (not b!7389397) (not b!7389451) (not b!7388633) (not b!7389328) (not b!7389410) (not b!7389029) (not b!7389018) (not b!7389071) (not b!7389005) (not b!7388977) (not b!7388713) (not b!7389270) (not b_lambda!285195) (not b!7388946) (not b!7389298) (not bm!680334) (not b_lambda!285203) (not b!7389316) (not b!7389187) (not b!7388697) (not b!7389496) (not b!7389059) (not b!7389173) (not b!7389513) (not b_lambda!285197) (not b!7389138) (not b!7389464) (not b!7389485) (not bm!680371) (not b!7388963) (not b!7389099) (not b!7389169) (not bm!680349) (not b!7389521) (not b!7389157) (not b!7389348) (not b_lambda!285107) (not b!7389403) (not bm!680326) (not bm!680284) (not b!7389311) (not b!7389281) (not b!7389322) (not b!7389085) (not b!7389122) (not b!7389463) (not b!7389473) (not b!7389035) (not b!7388680) (not b!7388955) (not b!7389414) (not b!7389480) (not b!7389116) (not b!7389110) (not b!7388921) (not b!7389440) (not b!7389413) (not b!7388954) (not b!7388993) (not b!7389117) (not b!7388989) (not b!7389503) (not b!7388968) (not b!7388976) (not b!7389101) (not bm!680273) (not b!7389459) (not b!7389095) (not b!7388882) (not b!7389017) (not bm!680378) (not b_lambda!285159) (not b_lambda!285205) (not b!7389376) (not b!7389471) (not b_lambda!285153) (not b!7389307) (not b!7389067) (not bs!1922344) (not b!7388738) (not b!7388958) (not b!7389100) (not bm!680369) (not b!7389083) (not b!7389124) (not b!7389483) (not b!7388947) (not b!7388660) (not b!7389010) (not b!7388950) (not b!7389161) (not b!7389079) tp_is_empty!48997 (not b!7388940) (not b!7389162) (not d!2287405) (not b!7389299) (not b!7389125) (not bm!680302) (not b!7389168) (not b_lambda!285147) (not b!7389004) (not bm!680309) (not bm!680285) (not b_lambda!285111) (not b!7389263) (not b!7389460) (not b!7389505) (not b!7389493) (not b!7389285) (not bm!680342) (not b!7388981) (not bs!1922343) (not b!7389252) (not b!7389036) (not b!7389170) (not b!7388777) (not b!7389235) (not b!7389089) (not setNonEmpty!55948) (not b!7389212) (not b!7389398) (not b!7389472) (not b!7389438) (not b!7389058) (not b!7389346) (not b!7389039) (not b!7389274) (not b!7389160) (not bm!680299) (not b!7388983) (not b!7389323) (not b!7389227) (not b!7388915) (not b!7388975) (not b!7388839) (not b!7389065) (not b!7389209) (not b!7389032) (not b!7389180) (not b!7389368) (not b!7389310) (not b!7388764) (not b!7389420) (not b_lambda!285193) (not d!2287337) (not b!7389439) (not b_lambda!285149) (not b!7388971) (not bm!680311) (not bm!680359) (not b!7389469) (not setNonEmpty!55947) (not b!7389000) (not b!7389326) (not b!7388991) (not b!7388974) (not b!7388775) (not b!7389097) (not b!7388992) (not b!7389251) (not b!7389040) (not b!7389238) (not bm!680362) (not d!2287339) (not bs!1922342) (not bm!680274) (not b!7389458) (not b!7389357) (not b!7388683) (not b!7389349) (not bm!680361) (not b!7389295) (not b!7388661) (not b!7389361) (not b!7389114) (not b!7389073) (not b!7389390) (not b!7389481) (not b!7389172) (not b!7389037) (not b!7389080) (not b!7389497) (not bm!680377) (not b_lambda!285207) (not b!7388948) (not b!7389447) (not b_lambda!285237) (not b!7389226) (not b!7389087) (not b!7389512) (not b!7389174) (not b!7389045) (not b!7389516) (not b!7389213) (not b!7389121) (not b!7389185) (not b!7389248) (not b!7389062) (not b!7389426) (not b!7389002) (not b!7388980) (not b!7388810) (not b!7389105) (not b!7389517) (not b!7389118) (not b_lambda!285233) (not b!7389076) (not b!7389327) (not b!7389367) (not setNonEmpty!55949) (not d!2287373) (not bs!1922347) (not b!7389450) (not b!7389402) (not b!7389495) (not b!7389411) (not bm!680306) (not b!7388799) (not b!7389009) (not b!7388979) (not b!7389434) (not b!7389283) (not b!7389069) (not d!2287377) (not b!7389255) (not b!7389136) (not bm!680338) (not b!7389355) (not b!7388967) (not bm!680366) (not b!7389008) (not bs!1922349) (not b!7389339) (not b!7388998) (not b!7389006) (not b!7389246) (not bm!680324) (not b!7389231) (not b!7389091) (not b!7389028) (not b!7389092) (not d!2287387) (not b!7389334) (not b!7389244) (not b!7389340) (not b!7389306) (not b!7388681) (not b!7389077) (not b!7389063) (not d!2287265) (not b!7389253) (not b!7389158) (not b!7389120) (not b!7389031) (not b!7389146) (not b_lambda!285151) (not bm!680292) (not bm!680276) (not b!7389531) (not b!7389275) (not bm!680269) (not b!7389452) (not b!7389428) (not b!7389514) (not b!7389268) (not b!7389219) (not d!2287369) (not b!7389156) (not b!7388618) (not b!7388668) (not b!7388774) (not b!7389126) (not b!7388771) (not bm!680365) (not bm!680352) (not b!7388952) (not b!7389225) (not b!7389239) (not b!7389273) (not b!7388984) (not b!7389064) (not b!7388648) (not b!7389422) (not b!7388778) (not b!7389096) (not b!7389148) (not b!7388606) (not b!7389388) (not bm!680335) (not b!7389324) (not b!7389134) (not b!7389012) (not b!7388659) (not b!7389335) (not b!7389104) (not b!7388813) (not bm!680351) (not b!7389374) (not b!7389261) (not b!7388830) (not b!7389484) (not b!7389103) (not b!7389041) (not b!7389293) (not b!7389016) (not b!7389133) (not b!7389389) (not bm!680298) (not bm!680308) (not bm!680368) (not b!7389137) (not b!7389108) (not b!7389182) (not b!7389382) (not b!7389072) (not b!7388729) (not b!7389181) (not bm!680317) (not b!7389492) (not b!7389287) (not b!7389286) (not bm!680293) (not b!7389262))
(check-sat)
