; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!721268 () Bool)

(assert start!721268)

(declare-fun b!7406614 () Bool)

(declare-fun res!2982042 () Bool)

(declare-fun e!4429869 () Bool)

(assert (=> b!7406614 (=> (not res!2982042) (not e!4429869))))

(declare-datatypes ((C!39056 0))(
  ( (C!39057 (val!29902 Int)) )
))
(declare-datatypes ((Regex!19391 0))(
  ( (ElementMatch!19391 (c!1374712 C!39056)) (Concat!28236 (regOne!39294 Regex!19391) (regTwo!39294 Regex!19391)) (EmptyExpr!19391) (Star!19391 (reg!19720 Regex!19391)) (EmptyLang!19391) (Union!19391 (regOne!39295 Regex!19391) (regTwo!39295 Regex!19391)) )
))
(declare-datatypes ((List!71964 0))(
  ( (Nil!71840) (Cons!71840 (h!78288 Regex!19391) (t!386523 List!71964)) )
))
(declare-datatypes ((Context!16662 0))(
  ( (Context!16663 (exprs!8831 List!71964)) )
))
(declare-fun c!10532 () Context!16662)

(declare-fun isEmpty!41031 (List!71964) Bool)

(assert (=> b!7406614 (= res!2982042 (not (isEmpty!41031 (exprs!8831 c!10532))))))

(declare-fun b!7406615 () Bool)

(declare-fun e!4429867 () Bool)

(declare-fun tp_is_empty!49045 () Bool)

(declare-fun tp!2118753 () Bool)

(assert (=> b!7406615 (= e!4429867 (and tp_is_empty!49045 tp!2118753))))

(declare-fun b!7406616 () Bool)

(declare-fun e!4429865 () Bool)

(declare-fun tp!2118750 () Bool)

(assert (=> b!7406616 (= e!4429865 tp!2118750)))

(declare-fun b!7406617 () Bool)

(declare-fun res!2982038 () Bool)

(assert (=> b!7406617 (=> (not res!2982038) (not e!4429869))))

(declare-datatypes ((List!71965 0))(
  ( (Nil!71841) (Cons!71841 (h!78289 C!39056) (t!386524 List!71965)) )
))
(declare-fun s!7927 () List!71965)

(declare-fun a!2228 () C!39056)

(get-info :version)

(assert (=> b!7406617 (= res!2982038 (and ((_ is Cons!71841) s!7927) (= (h!78289 s!7927) a!2228)))))

(declare-fun b!7406619 () Bool)

(declare-fun res!2982040 () Bool)

(assert (=> b!7406619 (=> (not res!2982040) (not e!4429869))))

(declare-fun tail!14798 (List!71964) List!71964)

(assert (=> b!7406619 (= res!2982040 (isEmpty!41031 (tail!14798 (exprs!8831 c!10532))))))

(declare-fun b!7406620 () Bool)

(declare-fun res!2982037 () Bool)

(assert (=> b!7406620 (=> (not res!2982037) (not e!4429869))))

(declare-fun head!15166 (List!71964) Regex!19391)

(assert (=> b!7406620 (= res!2982037 (= (head!15166 (exprs!8831 c!10532)) (ElementMatch!19391 a!2228)))))

(declare-fun setRes!56142 () Bool)

(declare-fun setElem!56142 () Context!16662)

(declare-fun setNonEmpty!56142 () Bool)

(declare-fun tp!2118751 () Bool)

(declare-fun inv!91838 (Context!16662) Bool)

(assert (=> setNonEmpty!56142 (= setRes!56142 (and tp!2118751 (inv!91838 setElem!56142) e!4429865))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16662))

(declare-fun setRest!56142 () (InoxSet Context!16662))

(assert (=> setNonEmpty!56142 (= z!3451 ((_ map or) (store ((as const (Array Context!16662 Bool)) false) setElem!56142 true) setRest!56142))))

(declare-fun setIsEmpty!56142 () Bool)

(assert (=> setIsEmpty!56142 setRes!56142))

(declare-fun res!2982039 () Bool)

(assert (=> start!721268 (=> (not res!2982039) (not e!4429869))))

(assert (=> start!721268 (= res!2982039 (= z!3451 (store ((as const (Array Context!16662 Bool)) false) c!10532 true)))))

(assert (=> start!721268 e!4429869))

(declare-fun condSetEmpty!56142 () Bool)

(assert (=> start!721268 (= condSetEmpty!56142 (= z!3451 ((as const (Array Context!16662 Bool)) false)))))

(assert (=> start!721268 setRes!56142))

(declare-fun e!4429868 () Bool)

(assert (=> start!721268 (and (inv!91838 c!10532) e!4429868)))

(assert (=> start!721268 tp_is_empty!49045))

(assert (=> start!721268 e!4429867))

(declare-fun b!7406618 () Bool)

(declare-fun e!4429866 () Bool)

(declare-fun lt!2618159 () Context!16662)

(assert (=> b!7406618 (= e!4429866 (not (inv!91838 lt!2618159)))))

(declare-fun b!7406621 () Bool)

(assert (=> b!7406621 (= e!4429869 e!4429866)))

(declare-fun res!2982041 () Bool)

(assert (=> b!7406621 (=> (not res!2982041) (not e!4429866))))

(declare-fun derivationStepZipperUp!2795 (Context!16662 C!39056) (InoxSet Context!16662))

(declare-fun head!15167 (List!71965) C!39056)

(assert (=> b!7406621 (= res!2982041 (= (derivationStepZipperUp!2795 c!10532 (head!15167 s!7927)) (store ((as const (Array Context!16662 Bool)) false) lt!2618159 true)))))

(assert (=> b!7406621 (= lt!2618159 (Context!16663 Nil!71840))))

(declare-fun b!7406622 () Bool)

(declare-fun tp!2118752 () Bool)

(assert (=> b!7406622 (= e!4429868 tp!2118752)))

(assert (= (and start!721268 res!2982039) b!7406614))

(assert (= (and b!7406614 res!2982042) b!7406620))

(assert (= (and b!7406620 res!2982037) b!7406619))

(assert (= (and b!7406619 res!2982040) b!7406617))

(assert (= (and b!7406617 res!2982038) b!7406621))

(assert (= (and b!7406621 res!2982041) b!7406618))

(assert (= (and start!721268 condSetEmpty!56142) setIsEmpty!56142))

(assert (= (and start!721268 (not condSetEmpty!56142)) setNonEmpty!56142))

(assert (= setNonEmpty!56142 b!7406616))

(assert (= start!721268 b!7406622))

(assert (= (and start!721268 ((_ is Cons!71841) s!7927)) b!7406615))

(declare-fun m!8042212 () Bool)

(assert (=> start!721268 m!8042212))

(declare-fun m!8042214 () Bool)

(assert (=> start!721268 m!8042214))

(declare-fun m!8042216 () Bool)

(assert (=> b!7406620 m!8042216))

(declare-fun m!8042218 () Bool)

(assert (=> b!7406621 m!8042218))

(assert (=> b!7406621 m!8042218))

(declare-fun m!8042220 () Bool)

(assert (=> b!7406621 m!8042220))

(declare-fun m!8042222 () Bool)

(assert (=> b!7406621 m!8042222))

(declare-fun m!8042224 () Bool)

(assert (=> setNonEmpty!56142 m!8042224))

(declare-fun m!8042226 () Bool)

(assert (=> b!7406618 m!8042226))

(declare-fun m!8042228 () Bool)

(assert (=> b!7406619 m!8042228))

(assert (=> b!7406619 m!8042228))

(declare-fun m!8042230 () Bool)

(assert (=> b!7406619 m!8042230))

(declare-fun m!8042232 () Bool)

(assert (=> b!7406614 m!8042232))

(check-sat (not b!7406618) (not b!7406619) (not b!7406616) (not b!7406620) tp_is_empty!49045 (not b!7406621) (not b!7406614) (not start!721268) (not setNonEmpty!56142) (not b!7406622) (not b!7406615))
(check-sat)
(get-model)

(declare-fun d!2290359 () Bool)

(declare-fun lambda!459403 () Int)

(declare-fun forall!18175 (List!71964 Int) Bool)

(assert (=> d!2290359 (= (inv!91838 setElem!56142) (forall!18175 (exprs!8831 setElem!56142) lambda!459403))))

(declare-fun bs!1923818 () Bool)

(assert (= bs!1923818 d!2290359))

(declare-fun m!8042240 () Bool)

(assert (=> bs!1923818 m!8042240))

(assert (=> setNonEmpty!56142 d!2290359))

(declare-fun d!2290367 () Bool)

(assert (=> d!2290367 (= (head!15166 (exprs!8831 c!10532)) (h!78288 (exprs!8831 c!10532)))))

(assert (=> b!7406620 d!2290367))

(declare-fun d!2290369 () Bool)

(assert (=> d!2290369 (= (isEmpty!41031 (exprs!8831 c!10532)) ((_ is Nil!71840) (exprs!8831 c!10532)))))

(assert (=> b!7406614 d!2290369))

(declare-fun bs!1923819 () Bool)

(declare-fun d!2290371 () Bool)

(assert (= bs!1923819 (and d!2290371 d!2290359)))

(declare-fun lambda!459404 () Int)

(assert (=> bs!1923819 (= lambda!459404 lambda!459403)))

(assert (=> d!2290371 (= (inv!91838 c!10532) (forall!18175 (exprs!8831 c!10532) lambda!459404))))

(declare-fun bs!1923820 () Bool)

(assert (= bs!1923820 d!2290371))

(declare-fun m!8042242 () Bool)

(assert (=> bs!1923820 m!8042242))

(assert (=> start!721268 d!2290371))

(declare-fun d!2290373 () Bool)

(assert (=> d!2290373 (= (isEmpty!41031 (tail!14798 (exprs!8831 c!10532))) ((_ is Nil!71840) (tail!14798 (exprs!8831 c!10532))))))

(assert (=> b!7406619 d!2290373))

(declare-fun d!2290375 () Bool)

(assert (=> d!2290375 (= (tail!14798 (exprs!8831 c!10532)) (t!386523 (exprs!8831 c!10532)))))

(assert (=> b!7406619 d!2290375))

(declare-fun bs!1923821 () Bool)

(declare-fun d!2290377 () Bool)

(assert (= bs!1923821 (and d!2290377 d!2290359)))

(declare-fun lambda!459405 () Int)

(assert (=> bs!1923821 (= lambda!459405 lambda!459403)))

(declare-fun bs!1923822 () Bool)

(assert (= bs!1923822 (and d!2290377 d!2290371)))

(assert (=> bs!1923822 (= lambda!459405 lambda!459404)))

(assert (=> d!2290377 (= (inv!91838 lt!2618159) (forall!18175 (exprs!8831 lt!2618159) lambda!459405))))

(declare-fun bs!1923823 () Bool)

(assert (= bs!1923823 d!2290377))

(declare-fun m!8042244 () Bool)

(assert (=> bs!1923823 m!8042244))

(assert (=> b!7406618 d!2290377))

(declare-fun b!7406649 () Bool)

(declare-fun e!4429885 () (InoxSet Context!16662))

(declare-fun e!4429886 () (InoxSet Context!16662))

(assert (=> b!7406649 (= e!4429885 e!4429886)))

(declare-fun c!1374724 () Bool)

(assert (=> b!7406649 (= c!1374724 ((_ is Cons!71840) (exprs!8831 c!10532)))))

(declare-fun bm!681884 () Bool)

(declare-fun call!681889 () (InoxSet Context!16662))

(declare-fun derivationStepZipperDown!3188 (Regex!19391 Context!16662 C!39056) (InoxSet Context!16662))

(assert (=> bm!681884 (= call!681889 (derivationStepZipperDown!3188 (h!78288 (exprs!8831 c!10532)) (Context!16663 (t!386523 (exprs!8831 c!10532))) (head!15167 s!7927)))))

(declare-fun b!7406650 () Bool)

(assert (=> b!7406650 (= e!4429885 ((_ map or) call!681889 (derivationStepZipperUp!2795 (Context!16663 (t!386523 (exprs!8831 c!10532))) (head!15167 s!7927))))))

(declare-fun b!7406651 () Bool)

(declare-fun e!4429887 () Bool)

(declare-fun nullable!8436 (Regex!19391) Bool)

(assert (=> b!7406651 (= e!4429887 (nullable!8436 (h!78288 (exprs!8831 c!10532))))))

(declare-fun b!7406652 () Bool)

(assert (=> b!7406652 (= e!4429886 ((as const (Array Context!16662 Bool)) false))))

(declare-fun b!7406648 () Bool)

(assert (=> b!7406648 (= e!4429886 call!681889)))

(declare-fun d!2290379 () Bool)

(declare-fun c!1374723 () Bool)

(assert (=> d!2290379 (= c!1374723 e!4429887)))

(declare-fun res!2982048 () Bool)

(assert (=> d!2290379 (=> (not res!2982048) (not e!4429887))))

(assert (=> d!2290379 (= res!2982048 ((_ is Cons!71840) (exprs!8831 c!10532)))))

(assert (=> d!2290379 (= (derivationStepZipperUp!2795 c!10532 (head!15167 s!7927)) e!4429885)))

(assert (= (and d!2290379 res!2982048) b!7406651))

(assert (= (and d!2290379 c!1374723) b!7406650))

(assert (= (and d!2290379 (not c!1374723)) b!7406649))

(assert (= (and b!7406649 c!1374724) b!7406648))

(assert (= (and b!7406649 (not c!1374724)) b!7406652))

(assert (= (or b!7406650 b!7406648) bm!681884))

(assert (=> bm!681884 m!8042218))

(declare-fun m!8042246 () Bool)

(assert (=> bm!681884 m!8042246))

(assert (=> b!7406650 m!8042218))

(declare-fun m!8042248 () Bool)

(assert (=> b!7406650 m!8042248))

(declare-fun m!8042250 () Bool)

(assert (=> b!7406651 m!8042250))

(assert (=> b!7406621 d!2290379))

(declare-fun d!2290381 () Bool)

(assert (=> d!2290381 (= (head!15167 s!7927) (h!78289 s!7927))))

(assert (=> b!7406621 d!2290381))

(declare-fun b!7406657 () Bool)

(declare-fun e!4429890 () Bool)

(declare-fun tp!2118758 () Bool)

(declare-fun tp!2118759 () Bool)

(assert (=> b!7406657 (= e!4429890 (and tp!2118758 tp!2118759))))

(assert (=> b!7406616 (= tp!2118750 e!4429890)))

(assert (= (and b!7406616 ((_ is Cons!71840) (exprs!8831 setElem!56142))) b!7406657))

(declare-fun condSetEmpty!56145 () Bool)

(assert (=> setNonEmpty!56142 (= condSetEmpty!56145 (= setRest!56142 ((as const (Array Context!16662 Bool)) false)))))

(declare-fun setRes!56145 () Bool)

(assert (=> setNonEmpty!56142 (= tp!2118751 setRes!56145)))

(declare-fun setIsEmpty!56145 () Bool)

(assert (=> setIsEmpty!56145 setRes!56145))

(declare-fun setNonEmpty!56145 () Bool)

(declare-fun setElem!56145 () Context!16662)

(declare-fun tp!2118764 () Bool)

(declare-fun e!4429893 () Bool)

(assert (=> setNonEmpty!56145 (= setRes!56145 (and tp!2118764 (inv!91838 setElem!56145) e!4429893))))

(declare-fun setRest!56145 () (InoxSet Context!16662))

(assert (=> setNonEmpty!56145 (= setRest!56142 ((_ map or) (store ((as const (Array Context!16662 Bool)) false) setElem!56145 true) setRest!56145))))

(declare-fun b!7406662 () Bool)

(declare-fun tp!2118765 () Bool)

(assert (=> b!7406662 (= e!4429893 tp!2118765)))

(assert (= (and setNonEmpty!56142 condSetEmpty!56145) setIsEmpty!56145))

(assert (= (and setNonEmpty!56142 (not condSetEmpty!56145)) setNonEmpty!56145))

(assert (= setNonEmpty!56145 b!7406662))

(declare-fun m!8042252 () Bool)

(assert (=> setNonEmpty!56145 m!8042252))

(declare-fun b!7406667 () Bool)

(declare-fun e!4429896 () Bool)

(declare-fun tp!2118768 () Bool)

(assert (=> b!7406667 (= e!4429896 (and tp_is_empty!49045 tp!2118768))))

(assert (=> b!7406615 (= tp!2118753 e!4429896)))

(assert (= (and b!7406615 ((_ is Cons!71841) (t!386524 s!7927))) b!7406667))

(declare-fun b!7406668 () Bool)

(declare-fun e!4429897 () Bool)

(declare-fun tp!2118769 () Bool)

(declare-fun tp!2118770 () Bool)

(assert (=> b!7406668 (= e!4429897 (and tp!2118769 tp!2118770))))

(assert (=> b!7406622 (= tp!2118752 e!4429897)))

(assert (= (and b!7406622 ((_ is Cons!71840) (exprs!8831 c!10532))) b!7406668))

(check-sat (not setNonEmpty!56145) (not d!2290359) (not b!7406667) tp_is_empty!49045 (not b!7406650) (not b!7406657) (not b!7406662) (not b!7406668) (not d!2290377) (not d!2290371) (not b!7406651) (not bm!681884))
(check-sat)
(get-model)

(declare-fun d!2290383 () Bool)

(declare-fun res!2982053 () Bool)

(declare-fun e!4429902 () Bool)

(assert (=> d!2290383 (=> res!2982053 e!4429902)))

(assert (=> d!2290383 (= res!2982053 ((_ is Nil!71840) (exprs!8831 lt!2618159)))))

(assert (=> d!2290383 (= (forall!18175 (exprs!8831 lt!2618159) lambda!459405) e!4429902)))

(declare-fun b!7406673 () Bool)

(declare-fun e!4429903 () Bool)

(assert (=> b!7406673 (= e!4429902 e!4429903)))

(declare-fun res!2982054 () Bool)

(assert (=> b!7406673 (=> (not res!2982054) (not e!4429903))))

(declare-fun dynLambda!29612 (Int Regex!19391) Bool)

(assert (=> b!7406673 (= res!2982054 (dynLambda!29612 lambda!459405 (h!78288 (exprs!8831 lt!2618159))))))

(declare-fun b!7406674 () Bool)

(assert (=> b!7406674 (= e!4429903 (forall!18175 (t!386523 (exprs!8831 lt!2618159)) lambda!459405))))

(assert (= (and d!2290383 (not res!2982053)) b!7406673))

(assert (= (and b!7406673 res!2982054) b!7406674))

(declare-fun b_lambda!286127 () Bool)

(assert (=> (not b_lambda!286127) (not b!7406673)))

(declare-fun m!8042254 () Bool)

(assert (=> b!7406673 m!8042254))

(declare-fun m!8042256 () Bool)

(assert (=> b!7406674 m!8042256))

(assert (=> d!2290377 d!2290383))

(declare-fun c!1374739 () Bool)

(declare-fun bm!681897 () Bool)

(declare-fun call!681902 () List!71964)

(declare-fun c!1374735 () Bool)

(declare-fun $colon$colon!3334 (List!71964 Regex!19391) List!71964)

(assert (=> bm!681897 (= call!681902 ($colon$colon!3334 (exprs!8831 (Context!16663 (t!386523 (exprs!8831 c!10532)))) (ite (or c!1374735 c!1374739) (regTwo!39294 (h!78288 (exprs!8831 c!10532))) (h!78288 (exprs!8831 c!10532)))))))

(declare-fun b!7406697 () Bool)

(declare-fun e!4429920 () (InoxSet Context!16662))

(declare-fun call!681905 () (InoxSet Context!16662))

(declare-fun call!681906 () (InoxSet Context!16662))

(assert (=> b!7406697 (= e!4429920 ((_ map or) call!681905 call!681906))))

(declare-fun b!7406698 () Bool)

(declare-fun e!4429919 () Bool)

(assert (=> b!7406698 (= c!1374735 e!4429919)))

(declare-fun res!2982057 () Bool)

(assert (=> b!7406698 (=> (not res!2982057) (not e!4429919))))

(assert (=> b!7406698 (= res!2982057 ((_ is Concat!28236) (h!78288 (exprs!8831 c!10532))))))

(declare-fun e!4429918 () (InoxSet Context!16662))

(assert (=> b!7406698 (= e!4429918 e!4429920)))

(declare-fun bm!681898 () Bool)

(declare-fun call!681907 () List!71964)

(assert (=> bm!681898 (= call!681907 call!681902)))

(declare-fun bm!681899 () Bool)

(declare-fun call!681904 () (InoxSet Context!16662))

(assert (=> bm!681899 (= call!681904 call!681906)))

(declare-fun c!1374736 () Bool)

(declare-fun bm!681900 () Bool)

(declare-fun call!681903 () (InoxSet Context!16662))

(assert (=> bm!681900 (= call!681903 (derivationStepZipperDown!3188 (ite c!1374736 (regOne!39295 (h!78288 (exprs!8831 c!10532))) (ite c!1374735 (regTwo!39294 (h!78288 (exprs!8831 c!10532))) (ite c!1374739 (regOne!39294 (h!78288 (exprs!8831 c!10532))) (reg!19720 (h!78288 (exprs!8831 c!10532)))))) (ite (or c!1374736 c!1374735) (Context!16663 (t!386523 (exprs!8831 c!10532))) (Context!16663 call!681907)) (head!15167 s!7927)))))

(declare-fun b!7406699 () Bool)

(declare-fun e!4429917 () (InoxSet Context!16662))

(assert (=> b!7406699 (= e!4429920 e!4429917)))

(assert (=> b!7406699 (= c!1374739 ((_ is Concat!28236) (h!78288 (exprs!8831 c!10532))))))

(declare-fun bm!681901 () Bool)

(assert (=> bm!681901 (= call!681905 (derivationStepZipperDown!3188 (ite c!1374736 (regTwo!39295 (h!78288 (exprs!8831 c!10532))) (regOne!39294 (h!78288 (exprs!8831 c!10532)))) (ite c!1374736 (Context!16663 (t!386523 (exprs!8831 c!10532))) (Context!16663 call!681902)) (head!15167 s!7927)))))

(declare-fun b!7406700 () Bool)

(declare-fun e!4429921 () (InoxSet Context!16662))

(assert (=> b!7406700 (= e!4429921 call!681904)))

(declare-fun b!7406701 () Bool)

(declare-fun c!1374737 () Bool)

(assert (=> b!7406701 (= c!1374737 ((_ is Star!19391) (h!78288 (exprs!8831 c!10532))))))

(assert (=> b!7406701 (= e!4429917 e!4429921)))

(declare-fun b!7406702 () Bool)

(declare-fun e!4429916 () (InoxSet Context!16662))

(assert (=> b!7406702 (= e!4429916 (store ((as const (Array Context!16662 Bool)) false) (Context!16663 (t!386523 (exprs!8831 c!10532))) true))))

(declare-fun b!7406703 () Bool)

(assert (=> b!7406703 (= e!4429917 call!681904)))

(declare-fun b!7406705 () Bool)

(assert (=> b!7406705 (= e!4429919 (nullable!8436 (regOne!39294 (h!78288 (exprs!8831 c!10532)))))))

(declare-fun bm!681902 () Bool)

(assert (=> bm!681902 (= call!681906 call!681903)))

(declare-fun b!7406706 () Bool)

(assert (=> b!7406706 (= e!4429921 ((as const (Array Context!16662 Bool)) false))))

(declare-fun b!7406707 () Bool)

(assert (=> b!7406707 (= e!4429918 ((_ map or) call!681903 call!681905))))

(declare-fun b!7406704 () Bool)

(assert (=> b!7406704 (= e!4429916 e!4429918)))

(assert (=> b!7406704 (= c!1374736 ((_ is Union!19391) (h!78288 (exprs!8831 c!10532))))))

(declare-fun d!2290385 () Bool)

(declare-fun c!1374738 () Bool)

(assert (=> d!2290385 (= c!1374738 (and ((_ is ElementMatch!19391) (h!78288 (exprs!8831 c!10532))) (= (c!1374712 (h!78288 (exprs!8831 c!10532))) (head!15167 s!7927))))))

(assert (=> d!2290385 (= (derivationStepZipperDown!3188 (h!78288 (exprs!8831 c!10532)) (Context!16663 (t!386523 (exprs!8831 c!10532))) (head!15167 s!7927)) e!4429916)))

(assert (= (and d!2290385 c!1374738) b!7406702))

(assert (= (and d!2290385 (not c!1374738)) b!7406704))

(assert (= (and b!7406704 c!1374736) b!7406707))

(assert (= (and b!7406704 (not c!1374736)) b!7406698))

(assert (= (and b!7406698 res!2982057) b!7406705))

(assert (= (and b!7406698 c!1374735) b!7406697))

(assert (= (and b!7406698 (not c!1374735)) b!7406699))

(assert (= (and b!7406699 c!1374739) b!7406703))

(assert (= (and b!7406699 (not c!1374739)) b!7406701))

(assert (= (and b!7406701 c!1374737) b!7406700))

(assert (= (and b!7406701 (not c!1374737)) b!7406706))

(assert (= (or b!7406703 b!7406700) bm!681898))

(assert (= (or b!7406703 b!7406700) bm!681899))

(assert (= (or b!7406697 bm!681898) bm!681897))

(assert (= (or b!7406697 bm!681899) bm!681902))

(assert (= (or b!7406707 bm!681902) bm!681900))

(assert (= (or b!7406707 b!7406697) bm!681901))

(assert (=> bm!681901 m!8042218))

(declare-fun m!8042258 () Bool)

(assert (=> bm!681901 m!8042258))

(declare-fun m!8042260 () Bool)

(assert (=> bm!681897 m!8042260))

(declare-fun m!8042262 () Bool)

(assert (=> b!7406705 m!8042262))

(declare-fun m!8042264 () Bool)

(assert (=> b!7406702 m!8042264))

(assert (=> bm!681900 m!8042218))

(declare-fun m!8042266 () Bool)

(assert (=> bm!681900 m!8042266))

(assert (=> bm!681884 d!2290385))

(declare-fun bs!1923824 () Bool)

(declare-fun d!2290387 () Bool)

(assert (= bs!1923824 (and d!2290387 d!2290359)))

(declare-fun lambda!459406 () Int)

(assert (=> bs!1923824 (= lambda!459406 lambda!459403)))

(declare-fun bs!1923825 () Bool)

(assert (= bs!1923825 (and d!2290387 d!2290371)))

(assert (=> bs!1923825 (= lambda!459406 lambda!459404)))

(declare-fun bs!1923826 () Bool)

(assert (= bs!1923826 (and d!2290387 d!2290377)))

(assert (=> bs!1923826 (= lambda!459406 lambda!459405)))

(assert (=> d!2290387 (= (inv!91838 setElem!56145) (forall!18175 (exprs!8831 setElem!56145) lambda!459406))))

(declare-fun bs!1923827 () Bool)

(assert (= bs!1923827 d!2290387))

(declare-fun m!8042268 () Bool)

(assert (=> bs!1923827 m!8042268))

(assert (=> setNonEmpty!56145 d!2290387))

(declare-fun d!2290389 () Bool)

(declare-fun nullableFct!3395 (Regex!19391) Bool)

(assert (=> d!2290389 (= (nullable!8436 (h!78288 (exprs!8831 c!10532))) (nullableFct!3395 (h!78288 (exprs!8831 c!10532))))))

(declare-fun bs!1923828 () Bool)

(assert (= bs!1923828 d!2290389))

(declare-fun m!8042270 () Bool)

(assert (=> bs!1923828 m!8042270))

(assert (=> b!7406651 d!2290389))

(declare-fun d!2290391 () Bool)

(declare-fun res!2982058 () Bool)

(declare-fun e!4429922 () Bool)

(assert (=> d!2290391 (=> res!2982058 e!4429922)))

(assert (=> d!2290391 (= res!2982058 ((_ is Nil!71840) (exprs!8831 setElem!56142)))))

(assert (=> d!2290391 (= (forall!18175 (exprs!8831 setElem!56142) lambda!459403) e!4429922)))

(declare-fun b!7406708 () Bool)

(declare-fun e!4429923 () Bool)

(assert (=> b!7406708 (= e!4429922 e!4429923)))

(declare-fun res!2982059 () Bool)

(assert (=> b!7406708 (=> (not res!2982059) (not e!4429923))))

(assert (=> b!7406708 (= res!2982059 (dynLambda!29612 lambda!459403 (h!78288 (exprs!8831 setElem!56142))))))

(declare-fun b!7406709 () Bool)

(assert (=> b!7406709 (= e!4429923 (forall!18175 (t!386523 (exprs!8831 setElem!56142)) lambda!459403))))

(assert (= (and d!2290391 (not res!2982058)) b!7406708))

(assert (= (and b!7406708 res!2982059) b!7406709))

(declare-fun b_lambda!286129 () Bool)

(assert (=> (not b_lambda!286129) (not b!7406708)))

(declare-fun m!8042272 () Bool)

(assert (=> b!7406708 m!8042272))

(declare-fun m!8042274 () Bool)

(assert (=> b!7406709 m!8042274))

(assert (=> d!2290359 d!2290391))

(declare-fun d!2290393 () Bool)

(declare-fun res!2982060 () Bool)

(declare-fun e!4429924 () Bool)

(assert (=> d!2290393 (=> res!2982060 e!4429924)))

(assert (=> d!2290393 (= res!2982060 ((_ is Nil!71840) (exprs!8831 c!10532)))))

(assert (=> d!2290393 (= (forall!18175 (exprs!8831 c!10532) lambda!459404) e!4429924)))

(declare-fun b!7406710 () Bool)

(declare-fun e!4429925 () Bool)

(assert (=> b!7406710 (= e!4429924 e!4429925)))

(declare-fun res!2982061 () Bool)

(assert (=> b!7406710 (=> (not res!2982061) (not e!4429925))))

(assert (=> b!7406710 (= res!2982061 (dynLambda!29612 lambda!459404 (h!78288 (exprs!8831 c!10532))))))

(declare-fun b!7406711 () Bool)

(assert (=> b!7406711 (= e!4429925 (forall!18175 (t!386523 (exprs!8831 c!10532)) lambda!459404))))

(assert (= (and d!2290393 (not res!2982060)) b!7406710))

(assert (= (and b!7406710 res!2982061) b!7406711))

(declare-fun b_lambda!286131 () Bool)

(assert (=> (not b_lambda!286131) (not b!7406710)))

(declare-fun m!8042276 () Bool)

(assert (=> b!7406710 m!8042276))

(declare-fun m!8042278 () Bool)

(assert (=> b!7406711 m!8042278))

(assert (=> d!2290371 d!2290393))

(declare-fun b!7406713 () Bool)

(declare-fun e!4429926 () (InoxSet Context!16662))

(declare-fun e!4429927 () (InoxSet Context!16662))

(assert (=> b!7406713 (= e!4429926 e!4429927)))

(declare-fun c!1374741 () Bool)

(assert (=> b!7406713 (= c!1374741 ((_ is Cons!71840) (exprs!8831 (Context!16663 (t!386523 (exprs!8831 c!10532))))))))

(declare-fun bm!681903 () Bool)

(declare-fun call!681908 () (InoxSet Context!16662))

(assert (=> bm!681903 (= call!681908 (derivationStepZipperDown!3188 (h!78288 (exprs!8831 (Context!16663 (t!386523 (exprs!8831 c!10532))))) (Context!16663 (t!386523 (exprs!8831 (Context!16663 (t!386523 (exprs!8831 c!10532)))))) (head!15167 s!7927)))))

(declare-fun b!7406714 () Bool)

(assert (=> b!7406714 (= e!4429926 ((_ map or) call!681908 (derivationStepZipperUp!2795 (Context!16663 (t!386523 (exprs!8831 (Context!16663 (t!386523 (exprs!8831 c!10532)))))) (head!15167 s!7927))))))

(declare-fun b!7406715 () Bool)

(declare-fun e!4429928 () Bool)

(assert (=> b!7406715 (= e!4429928 (nullable!8436 (h!78288 (exprs!8831 (Context!16663 (t!386523 (exprs!8831 c!10532)))))))))

(declare-fun b!7406716 () Bool)

(assert (=> b!7406716 (= e!4429927 ((as const (Array Context!16662 Bool)) false))))

(declare-fun b!7406712 () Bool)

(assert (=> b!7406712 (= e!4429927 call!681908)))

(declare-fun d!2290395 () Bool)

(declare-fun c!1374740 () Bool)

(assert (=> d!2290395 (= c!1374740 e!4429928)))

(declare-fun res!2982062 () Bool)

(assert (=> d!2290395 (=> (not res!2982062) (not e!4429928))))

(assert (=> d!2290395 (= res!2982062 ((_ is Cons!71840) (exprs!8831 (Context!16663 (t!386523 (exprs!8831 c!10532))))))))

(assert (=> d!2290395 (= (derivationStepZipperUp!2795 (Context!16663 (t!386523 (exprs!8831 c!10532))) (head!15167 s!7927)) e!4429926)))

(assert (= (and d!2290395 res!2982062) b!7406715))

(assert (= (and d!2290395 c!1374740) b!7406714))

(assert (= (and d!2290395 (not c!1374740)) b!7406713))

(assert (= (and b!7406713 c!1374741) b!7406712))

(assert (= (and b!7406713 (not c!1374741)) b!7406716))

(assert (= (or b!7406714 b!7406712) bm!681903))

(assert (=> bm!681903 m!8042218))

(declare-fun m!8042280 () Bool)

(assert (=> bm!681903 m!8042280))

(assert (=> b!7406714 m!8042218))

(declare-fun m!8042282 () Bool)

(assert (=> b!7406714 m!8042282))

(declare-fun m!8042284 () Bool)

(assert (=> b!7406715 m!8042284))

(assert (=> b!7406650 d!2290395))

(declare-fun e!4429931 () Bool)

(assert (=> b!7406657 (= tp!2118758 e!4429931)))

(declare-fun b!7406727 () Bool)

(assert (=> b!7406727 (= e!4429931 tp_is_empty!49045)))

(declare-fun b!7406729 () Bool)

(declare-fun tp!2118781 () Bool)

(assert (=> b!7406729 (= e!4429931 tp!2118781)))

(declare-fun b!7406730 () Bool)

(declare-fun tp!2118784 () Bool)

(declare-fun tp!2118785 () Bool)

(assert (=> b!7406730 (= e!4429931 (and tp!2118784 tp!2118785))))

(declare-fun b!7406728 () Bool)

(declare-fun tp!2118783 () Bool)

(declare-fun tp!2118782 () Bool)

(assert (=> b!7406728 (= e!4429931 (and tp!2118783 tp!2118782))))

(assert (= (and b!7406657 ((_ is ElementMatch!19391) (h!78288 (exprs!8831 setElem!56142)))) b!7406727))

(assert (= (and b!7406657 ((_ is Concat!28236) (h!78288 (exprs!8831 setElem!56142)))) b!7406728))

(assert (= (and b!7406657 ((_ is Star!19391) (h!78288 (exprs!8831 setElem!56142)))) b!7406729))

(assert (= (and b!7406657 ((_ is Union!19391) (h!78288 (exprs!8831 setElem!56142)))) b!7406730))

(declare-fun b!7406731 () Bool)

(declare-fun e!4429932 () Bool)

(declare-fun tp!2118786 () Bool)

(declare-fun tp!2118787 () Bool)

(assert (=> b!7406731 (= e!4429932 (and tp!2118786 tp!2118787))))

(assert (=> b!7406657 (= tp!2118759 e!4429932)))

(assert (= (and b!7406657 ((_ is Cons!71840) (t!386523 (exprs!8831 setElem!56142)))) b!7406731))

(declare-fun b!7406732 () Bool)

(declare-fun e!4429933 () Bool)

(declare-fun tp!2118788 () Bool)

(assert (=> b!7406732 (= e!4429933 (and tp_is_empty!49045 tp!2118788))))

(assert (=> b!7406667 (= tp!2118768 e!4429933)))

(assert (= (and b!7406667 ((_ is Cons!71841) (t!386524 (t!386524 s!7927)))) b!7406732))

(declare-fun condSetEmpty!56146 () Bool)

(assert (=> setNonEmpty!56145 (= condSetEmpty!56146 (= setRest!56145 ((as const (Array Context!16662 Bool)) false)))))

(declare-fun setRes!56146 () Bool)

(assert (=> setNonEmpty!56145 (= tp!2118764 setRes!56146)))

(declare-fun setIsEmpty!56146 () Bool)

(assert (=> setIsEmpty!56146 setRes!56146))

(declare-fun setNonEmpty!56146 () Bool)

(declare-fun e!4429934 () Bool)

(declare-fun tp!2118789 () Bool)

(declare-fun setElem!56146 () Context!16662)

(assert (=> setNonEmpty!56146 (= setRes!56146 (and tp!2118789 (inv!91838 setElem!56146) e!4429934))))

(declare-fun setRest!56146 () (InoxSet Context!16662))

(assert (=> setNonEmpty!56146 (= setRest!56145 ((_ map or) (store ((as const (Array Context!16662 Bool)) false) setElem!56146 true) setRest!56146))))

(declare-fun b!7406733 () Bool)

(declare-fun tp!2118790 () Bool)

(assert (=> b!7406733 (= e!4429934 tp!2118790)))

(assert (= (and setNonEmpty!56145 condSetEmpty!56146) setIsEmpty!56146))

(assert (= (and setNonEmpty!56145 (not condSetEmpty!56146)) setNonEmpty!56146))

(assert (= setNonEmpty!56146 b!7406733))

(declare-fun m!8042286 () Bool)

(assert (=> setNonEmpty!56146 m!8042286))

(declare-fun b!7406734 () Bool)

(declare-fun e!4429935 () Bool)

(declare-fun tp!2118791 () Bool)

(declare-fun tp!2118792 () Bool)

(assert (=> b!7406734 (= e!4429935 (and tp!2118791 tp!2118792))))

(assert (=> b!7406662 (= tp!2118765 e!4429935)))

(assert (= (and b!7406662 ((_ is Cons!71840) (exprs!8831 setElem!56145))) b!7406734))

(declare-fun e!4429936 () Bool)

(assert (=> b!7406668 (= tp!2118769 e!4429936)))

(declare-fun b!7406735 () Bool)

(assert (=> b!7406735 (= e!4429936 tp_is_empty!49045)))

(declare-fun b!7406737 () Bool)

(declare-fun tp!2118793 () Bool)

(assert (=> b!7406737 (= e!4429936 tp!2118793)))

(declare-fun b!7406738 () Bool)

(declare-fun tp!2118796 () Bool)

(declare-fun tp!2118797 () Bool)

(assert (=> b!7406738 (= e!4429936 (and tp!2118796 tp!2118797))))

(declare-fun b!7406736 () Bool)

(declare-fun tp!2118795 () Bool)

(declare-fun tp!2118794 () Bool)

(assert (=> b!7406736 (= e!4429936 (and tp!2118795 tp!2118794))))

(assert (= (and b!7406668 ((_ is ElementMatch!19391) (h!78288 (exprs!8831 c!10532)))) b!7406735))

(assert (= (and b!7406668 ((_ is Concat!28236) (h!78288 (exprs!8831 c!10532)))) b!7406736))

(assert (= (and b!7406668 ((_ is Star!19391) (h!78288 (exprs!8831 c!10532)))) b!7406737))

(assert (= (and b!7406668 ((_ is Union!19391) (h!78288 (exprs!8831 c!10532)))) b!7406738))

(declare-fun b!7406739 () Bool)

(declare-fun e!4429937 () Bool)

(declare-fun tp!2118798 () Bool)

(declare-fun tp!2118799 () Bool)

(assert (=> b!7406739 (= e!4429937 (and tp!2118798 tp!2118799))))

(assert (=> b!7406668 (= tp!2118770 e!4429937)))

(assert (= (and b!7406668 ((_ is Cons!71840) (t!386523 (exprs!8831 c!10532)))) b!7406739))

(declare-fun b_lambda!286133 () Bool)

(assert (= b_lambda!286131 (or d!2290371 b_lambda!286133)))

(declare-fun bs!1923829 () Bool)

(declare-fun d!2290397 () Bool)

(assert (= bs!1923829 (and d!2290397 d!2290371)))

(declare-fun validRegex!9954 (Regex!19391) Bool)

(assert (=> bs!1923829 (= (dynLambda!29612 lambda!459404 (h!78288 (exprs!8831 c!10532))) (validRegex!9954 (h!78288 (exprs!8831 c!10532))))))

(declare-fun m!8042288 () Bool)

(assert (=> bs!1923829 m!8042288))

(assert (=> b!7406710 d!2290397))

(declare-fun b_lambda!286135 () Bool)

(assert (= b_lambda!286129 (or d!2290359 b_lambda!286135)))

(declare-fun bs!1923830 () Bool)

(declare-fun d!2290399 () Bool)

(assert (= bs!1923830 (and d!2290399 d!2290359)))

(assert (=> bs!1923830 (= (dynLambda!29612 lambda!459403 (h!78288 (exprs!8831 setElem!56142))) (validRegex!9954 (h!78288 (exprs!8831 setElem!56142))))))

(declare-fun m!8042290 () Bool)

(assert (=> bs!1923830 m!8042290))

(assert (=> b!7406708 d!2290399))

(declare-fun b_lambda!286137 () Bool)

(assert (= b_lambda!286127 (or d!2290377 b_lambda!286137)))

(declare-fun bs!1923831 () Bool)

(declare-fun d!2290401 () Bool)

(assert (= bs!1923831 (and d!2290401 d!2290377)))

(assert (=> bs!1923831 (= (dynLambda!29612 lambda!459405 (h!78288 (exprs!8831 lt!2618159))) (validRegex!9954 (h!78288 (exprs!8831 lt!2618159))))))

(declare-fun m!8042292 () Bool)

(assert (=> bs!1923831 m!8042292))

(assert (=> b!7406673 d!2290401))

(check-sat (not bs!1923829) (not b!7406715) (not bm!681901) (not b!7406705) (not b!7406739) (not bm!681900) (not b!7406714) (not bm!681897) (not d!2290387) (not bs!1923831) (not setNonEmpty!56146) (not b!7406729) (not b!7406733) (not b!7406674) (not b!7406736) (not b_lambda!286135) (not b!7406730) (not b_lambda!286137) (not b!7406738) (not b!7406737) (not bs!1923830) tp_is_empty!49045 (not b!7406732) (not b!7406711) (not b!7406709) (not b!7406731) (not bm!681903) (not d!2290389) (not b_lambda!286133) (not b!7406734) (not b!7406728))
(check-sat)
