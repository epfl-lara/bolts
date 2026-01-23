; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699956 () Bool)

(assert start!699956)

(declare-fun setIsEmpty!53325 () Bool)

(declare-fun setRes!53325 () Bool)

(assert (=> setIsEmpty!53325 setRes!53325))

(declare-fun tp!1999799 () Bool)

(declare-fun setNonEmpty!53325 () Bool)

(declare-datatypes ((C!37024 0))(
  ( (C!37025 (val!28460 Int)) )
))
(declare-datatypes ((Regex!18375 0))(
  ( (ElementMatch!18375 (c!1338979 C!37024)) (Concat!27220 (regOne!37262 Regex!18375) (regTwo!37262 Regex!18375)) (EmptyExpr!18375) (Star!18375 (reg!18704 Regex!18375)) (EmptyLang!18375) (Union!18375 (regOne!37263 Regex!18375) (regTwo!37263 Regex!18375)) )
))
(declare-datatypes ((List!69847 0))(
  ( (Nil!69723) (Cons!69723 (h!76171 Regex!18375) (t!383872 List!69847)) )
))
(declare-datatypes ((Context!14654 0))(
  ( (Context!14655 (exprs!7827 List!69847)) )
))
(declare-fun setElem!53325 () Context!14654)

(declare-fun e!4320056 () Bool)

(declare-fun inv!88959 (Context!14654) Bool)

(assert (=> setNonEmpty!53325 (= setRes!53325 (and tp!1999799 (inv!88959 setElem!53325) e!4320056))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3517 () (InoxSet Context!14654))

(declare-fun setRest!53325 () (InoxSet Context!14654))

(assert (=> setNonEmpty!53325 (= z!3517 ((_ map or) (store ((as const (Array Context!14654 Bool)) false) setElem!53325 true) setRest!53325))))

(declare-fun b!7194041 () Bool)

(declare-fun e!4320054 () Bool)

(declare-fun e!4320055 () Bool)

(assert (=> b!7194041 (= e!4320054 e!4320055)))

(declare-fun res!2928778 () Bool)

(assert (=> b!7194041 (=> (not res!2928778) (not e!4320055))))

(declare-fun c!10544 () Context!14654)

(declare-fun lt!2571459 () C!37024)

(declare-fun derivationStepZipperUp!2341 (Context!14654 C!37024) (InoxSet Context!14654))

(assert (=> b!7194041 (= res!2928778 (= (derivationStepZipperUp!2341 c!10544 lt!2571459) ((as const (Array Context!14654 Bool)) false)))))

(declare-fun lt!2571460 () (InoxSet Context!14654))

(declare-fun derivationStepZipper!3236 ((InoxSet Context!14654) C!37024) (InoxSet Context!14654))

(assert (=> b!7194041 (= lt!2571460 (derivationStepZipper!3236 z!3517 lt!2571459))))

(declare-datatypes ((List!69848 0))(
  ( (Nil!69724) (Cons!69724 (h!76172 C!37024) (t!383873 List!69848)) )
))
(declare-fun s!7961 () List!69848)

(declare-fun head!14706 (List!69848) C!37024)

(assert (=> b!7194041 (= lt!2571459 (head!14706 s!7961))))

(declare-fun b!7194042 () Bool)

(declare-fun res!2928775 () Bool)

(assert (=> b!7194042 (=> (not res!2928775) (not e!4320054))))

(declare-fun isEmpty!40245 (List!69848) Bool)

(assert (=> b!7194042 (= res!2928775 (not (isEmpty!40245 s!7961)))))

(declare-fun b!7194043 () Bool)

(declare-fun e!4320053 () Bool)

(declare-fun tp!1999798 () Bool)

(assert (=> b!7194043 (= e!4320053 tp!1999798)))

(declare-fun res!2928779 () Bool)

(assert (=> start!699956 (=> (not res!2928779) (not e!4320054))))

(assert (=> start!699956 (= res!2928779 (= z!3517 (store ((as const (Array Context!14654 Bool)) false) c!10544 true)))))

(assert (=> start!699956 e!4320054))

(declare-fun condSetEmpty!53325 () Bool)

(assert (=> start!699956 (= condSetEmpty!53325 (= z!3517 ((as const (Array Context!14654 Bool)) false)))))

(assert (=> start!699956 setRes!53325))

(assert (=> start!699956 (and (inv!88959 c!10544) e!4320053)))

(declare-fun e!4320057 () Bool)

(assert (=> start!699956 e!4320057))

(declare-fun b!7194044 () Bool)

(declare-fun res!2928776 () Bool)

(assert (=> b!7194044 (=> (not res!2928776) (not e!4320054))))

(declare-fun isEmpty!40246 (List!69847) Bool)

(assert (=> b!7194044 (= res!2928776 (not (isEmpty!40246 (exprs!7827 c!10544))))))

(declare-fun b!7194045 () Bool)

(declare-fun tp_is_empty!46307 () Bool)

(declare-fun tp!1999796 () Bool)

(assert (=> b!7194045 (= e!4320057 (and tp_is_empty!46307 tp!1999796))))

(declare-fun b!7194046 () Bool)

(declare-fun res!2928777 () Bool)

(assert (=> b!7194046 (=> (not res!2928777) (not e!4320054))))

(declare-fun head!14707 (List!69847) Regex!18375)

(assert (=> b!7194046 (= res!2928777 (= (head!14707 (exprs!7827 c!10544)) EmptyLang!18375))))

(declare-fun b!7194047 () Bool)

(declare-fun res!2928780 () Bool)

(assert (=> b!7194047 (=> (not res!2928780) (not e!4320055))))

(assert (=> b!7194047 (= res!2928780 (not (= lt!2571460 ((as const (Array Context!14654 Bool)) false))))))

(declare-fun b!7194048 () Bool)

(declare-fun tp!1999797 () Bool)

(assert (=> b!7194048 (= e!4320056 tp!1999797)))

(declare-fun b!7194049 () Bool)

(declare-datatypes ((List!69849 0))(
  ( (Nil!69725) (Cons!69725 (h!76173 Context!14654) (t!383874 List!69849)) )
))
(declare-fun toList!11314 ((InoxSet Context!14654)) List!69849)

(assert (=> b!7194049 (= e!4320055 (= (toList!11314 lt!2571460) Nil!69725))))

(assert (= (and start!699956 res!2928779) b!7194044))

(assert (= (and b!7194044 res!2928776) b!7194046))

(assert (= (and b!7194046 res!2928777) b!7194042))

(assert (= (and b!7194042 res!2928775) b!7194041))

(assert (= (and b!7194041 res!2928778) b!7194047))

(assert (= (and b!7194047 res!2928780) b!7194049))

(assert (= (and start!699956 condSetEmpty!53325) setIsEmpty!53325))

(assert (= (and start!699956 (not condSetEmpty!53325)) setNonEmpty!53325))

(assert (= setNonEmpty!53325 b!7194048))

(assert (= start!699956 b!7194043))

(get-info :version)

(assert (= (and start!699956 ((_ is Cons!69724) s!7961)) b!7194045))

(declare-fun m!7888620 () Bool)

(assert (=> b!7194049 m!7888620))

(declare-fun m!7888622 () Bool)

(assert (=> setNonEmpty!53325 m!7888622))

(declare-fun m!7888624 () Bool)

(assert (=> b!7194042 m!7888624))

(declare-fun m!7888626 () Bool)

(assert (=> b!7194041 m!7888626))

(declare-fun m!7888628 () Bool)

(assert (=> b!7194041 m!7888628))

(declare-fun m!7888630 () Bool)

(assert (=> b!7194041 m!7888630))

(declare-fun m!7888632 () Bool)

(assert (=> start!699956 m!7888632))

(declare-fun m!7888634 () Bool)

(assert (=> start!699956 m!7888634))

(declare-fun m!7888636 () Bool)

(assert (=> b!7194044 m!7888636))

(declare-fun m!7888638 () Bool)

(assert (=> b!7194046 m!7888638))

(check-sat (not start!699956) (not b!7194041) (not b!7194049) (not b!7194048) (not b!7194043) tp_is_empty!46307 (not b!7194042) (not b!7194046) (not b!7194044) (not setNonEmpty!53325) (not b!7194045))
(check-sat)
(get-model)

(declare-fun d!2241086 () Bool)

(assert (=> d!2241086 (= (isEmpty!40245 s!7961) ((_ is Nil!69724) s!7961))))

(assert (=> b!7194042 d!2241086))

(declare-fun b!7194060 () Bool)

(declare-fun e!4320064 () (InoxSet Context!14654))

(declare-fun e!4320065 () (InoxSet Context!14654))

(assert (=> b!7194060 (= e!4320064 e!4320065)))

(declare-fun c!1338985 () Bool)

(assert (=> b!7194060 (= c!1338985 ((_ is Cons!69723) (exprs!7827 c!10544)))))

(declare-fun b!7194061 () Bool)

(declare-fun e!4320066 () Bool)

(declare-fun nullable!7788 (Regex!18375) Bool)

(assert (=> b!7194061 (= e!4320066 (nullable!7788 (h!76171 (exprs!7827 c!10544))))))

(declare-fun b!7194062 () Bool)

(declare-fun call!655987 () (InoxSet Context!14654))

(assert (=> b!7194062 (= e!4320065 call!655987)))

(declare-fun b!7194063 () Bool)

(assert (=> b!7194063 (= e!4320065 ((as const (Array Context!14654 Bool)) false))))

(declare-fun bm!655982 () Bool)

(declare-fun derivationStepZipperDown!2519 (Regex!18375 Context!14654 C!37024) (InoxSet Context!14654))

(assert (=> bm!655982 (= call!655987 (derivationStepZipperDown!2519 (h!76171 (exprs!7827 c!10544)) (Context!14655 (t!383872 (exprs!7827 c!10544))) lt!2571459))))

(declare-fun d!2241088 () Bool)

(declare-fun c!1338984 () Bool)

(assert (=> d!2241088 (= c!1338984 e!4320066)))

(declare-fun res!2928783 () Bool)

(assert (=> d!2241088 (=> (not res!2928783) (not e!4320066))))

(assert (=> d!2241088 (= res!2928783 ((_ is Cons!69723) (exprs!7827 c!10544)))))

(assert (=> d!2241088 (= (derivationStepZipperUp!2341 c!10544 lt!2571459) e!4320064)))

(declare-fun b!7194064 () Bool)

(assert (=> b!7194064 (= e!4320064 ((_ map or) call!655987 (derivationStepZipperUp!2341 (Context!14655 (t!383872 (exprs!7827 c!10544))) lt!2571459)))))

(assert (= (and d!2241088 res!2928783) b!7194061))

(assert (= (and d!2241088 c!1338984) b!7194064))

(assert (= (and d!2241088 (not c!1338984)) b!7194060))

(assert (= (and b!7194060 c!1338985) b!7194062))

(assert (= (and b!7194060 (not c!1338985)) b!7194063))

(assert (= (or b!7194064 b!7194062) bm!655982))

(declare-fun m!7888640 () Bool)

(assert (=> b!7194061 m!7888640))

(declare-fun m!7888642 () Bool)

(assert (=> bm!655982 m!7888642))

(declare-fun m!7888644 () Bool)

(assert (=> b!7194064 m!7888644))

(assert (=> b!7194041 d!2241088))

(declare-fun d!2241090 () Bool)

(assert (=> d!2241090 true))

(declare-fun lambda!438002 () Int)

(declare-fun flatMap!2678 ((InoxSet Context!14654) Int) (InoxSet Context!14654))

(assert (=> d!2241090 (= (derivationStepZipper!3236 z!3517 lt!2571459) (flatMap!2678 z!3517 lambda!438002))))

(declare-fun bs!1900412 () Bool)

(assert (= bs!1900412 d!2241090))

(declare-fun m!7888646 () Bool)

(assert (=> bs!1900412 m!7888646))

(assert (=> b!7194041 d!2241090))

(declare-fun d!2241094 () Bool)

(assert (=> d!2241094 (= (head!14706 s!7961) (h!76172 s!7961))))

(assert (=> b!7194041 d!2241094))

(declare-fun d!2241096 () Bool)

(assert (=> d!2241096 (= (head!14707 (exprs!7827 c!10544)) (h!76171 (exprs!7827 c!10544)))))

(assert (=> b!7194046 d!2241096))

(declare-fun d!2241098 () Bool)

(declare-fun lambda!438005 () Int)

(declare-fun forall!17200 (List!69847 Int) Bool)

(assert (=> d!2241098 (= (inv!88959 setElem!53325) (forall!17200 (exprs!7827 setElem!53325) lambda!438005))))

(declare-fun bs!1900413 () Bool)

(assert (= bs!1900413 d!2241098))

(declare-fun m!7888648 () Bool)

(assert (=> bs!1900413 m!7888648))

(assert (=> setNonEmpty!53325 d!2241098))

(declare-fun d!2241100 () Bool)

(assert (=> d!2241100 (= (isEmpty!40246 (exprs!7827 c!10544)) ((_ is Nil!69723) (exprs!7827 c!10544)))))

(assert (=> b!7194044 d!2241100))

(declare-fun d!2241102 () Bool)

(declare-fun e!4320069 () Bool)

(assert (=> d!2241102 e!4320069))

(declare-fun res!2928786 () Bool)

(assert (=> d!2241102 (=> (not res!2928786) (not e!4320069))))

(declare-fun lt!2571463 () List!69849)

(declare-fun noDuplicate!2899 (List!69849) Bool)

(assert (=> d!2241102 (= res!2928786 (noDuplicate!2899 lt!2571463))))

(declare-fun choose!55421 ((InoxSet Context!14654)) List!69849)

(assert (=> d!2241102 (= lt!2571463 (choose!55421 lt!2571460))))

(assert (=> d!2241102 (= (toList!11314 lt!2571460) lt!2571463)))

(declare-fun b!7194069 () Bool)

(declare-fun content!14328 (List!69849) (InoxSet Context!14654))

(assert (=> b!7194069 (= e!4320069 (= (content!14328 lt!2571463) lt!2571460))))

(assert (= (and d!2241102 res!2928786) b!7194069))

(declare-fun m!7888650 () Bool)

(assert (=> d!2241102 m!7888650))

(declare-fun m!7888652 () Bool)

(assert (=> d!2241102 m!7888652))

(declare-fun m!7888654 () Bool)

(assert (=> b!7194069 m!7888654))

(assert (=> b!7194049 d!2241102))

(declare-fun bs!1900414 () Bool)

(declare-fun d!2241104 () Bool)

(assert (= bs!1900414 (and d!2241104 d!2241098)))

(declare-fun lambda!438006 () Int)

(assert (=> bs!1900414 (= lambda!438006 lambda!438005)))

(assert (=> d!2241104 (= (inv!88959 c!10544) (forall!17200 (exprs!7827 c!10544) lambda!438006))))

(declare-fun bs!1900415 () Bool)

(assert (= bs!1900415 d!2241104))

(declare-fun m!7888656 () Bool)

(assert (=> bs!1900415 m!7888656))

(assert (=> start!699956 d!2241104))

(declare-fun condSetEmpty!53328 () Bool)

(assert (=> setNonEmpty!53325 (= condSetEmpty!53328 (= setRest!53325 ((as const (Array Context!14654 Bool)) false)))))

(declare-fun setRes!53328 () Bool)

(assert (=> setNonEmpty!53325 (= tp!1999799 setRes!53328)))

(declare-fun setIsEmpty!53328 () Bool)

(assert (=> setIsEmpty!53328 setRes!53328))

(declare-fun setNonEmpty!53328 () Bool)

(declare-fun e!4320072 () Bool)

(declare-fun setElem!53328 () Context!14654)

(declare-fun tp!1999804 () Bool)

(assert (=> setNonEmpty!53328 (= setRes!53328 (and tp!1999804 (inv!88959 setElem!53328) e!4320072))))

(declare-fun setRest!53328 () (InoxSet Context!14654))

(assert (=> setNonEmpty!53328 (= setRest!53325 ((_ map or) (store ((as const (Array Context!14654 Bool)) false) setElem!53328 true) setRest!53328))))

(declare-fun b!7194074 () Bool)

(declare-fun tp!1999805 () Bool)

(assert (=> b!7194074 (= e!4320072 tp!1999805)))

(assert (= (and setNonEmpty!53325 condSetEmpty!53328) setIsEmpty!53328))

(assert (= (and setNonEmpty!53325 (not condSetEmpty!53328)) setNonEmpty!53328))

(assert (= setNonEmpty!53328 b!7194074))

(declare-fun m!7888658 () Bool)

(assert (=> setNonEmpty!53328 m!7888658))

(declare-fun b!7194079 () Bool)

(declare-fun e!4320075 () Bool)

(declare-fun tp!1999808 () Bool)

(assert (=> b!7194079 (= e!4320075 (and tp_is_empty!46307 tp!1999808))))

(assert (=> b!7194045 (= tp!1999796 e!4320075)))

(assert (= (and b!7194045 ((_ is Cons!69724) (t!383873 s!7961))) b!7194079))

(declare-fun b!7194084 () Bool)

(declare-fun e!4320078 () Bool)

(declare-fun tp!1999813 () Bool)

(declare-fun tp!1999814 () Bool)

(assert (=> b!7194084 (= e!4320078 (and tp!1999813 tp!1999814))))

(assert (=> b!7194043 (= tp!1999798 e!4320078)))

(assert (= (and b!7194043 ((_ is Cons!69723) (exprs!7827 c!10544))) b!7194084))

(declare-fun b!7194085 () Bool)

(declare-fun e!4320079 () Bool)

(declare-fun tp!1999815 () Bool)

(declare-fun tp!1999816 () Bool)

(assert (=> b!7194085 (= e!4320079 (and tp!1999815 tp!1999816))))

(assert (=> b!7194048 (= tp!1999797 e!4320079)))

(assert (= (and b!7194048 ((_ is Cons!69723) (exprs!7827 setElem!53325))) b!7194085))

(check-sat (not b!7194085) (not b!7194084) (not b!7194061) (not setNonEmpty!53328) (not d!2241102) (not b!7194064) (not b!7194079) (not bm!655982) tp_is_empty!46307 (not b!7194069) (not b!7194074) (not d!2241098) (not d!2241090) (not d!2241104))
(check-sat)
(get-model)

(declare-fun d!2241106 () Bool)

(declare-fun res!2928791 () Bool)

(declare-fun e!4320084 () Bool)

(assert (=> d!2241106 (=> res!2928791 e!4320084)))

(assert (=> d!2241106 (= res!2928791 ((_ is Nil!69723) (exprs!7827 c!10544)))))

(assert (=> d!2241106 (= (forall!17200 (exprs!7827 c!10544) lambda!438006) e!4320084)))

(declare-fun b!7194090 () Bool)

(declare-fun e!4320085 () Bool)

(assert (=> b!7194090 (= e!4320084 e!4320085)))

(declare-fun res!2928792 () Bool)

(assert (=> b!7194090 (=> (not res!2928792) (not e!4320085))))

(declare-fun dynLambda!28395 (Int Regex!18375) Bool)

(assert (=> b!7194090 (= res!2928792 (dynLambda!28395 lambda!438006 (h!76171 (exprs!7827 c!10544))))))

(declare-fun b!7194091 () Bool)

(assert (=> b!7194091 (= e!4320085 (forall!17200 (t!383872 (exprs!7827 c!10544)) lambda!438006))))

(assert (= (and d!2241106 (not res!2928791)) b!7194090))

(assert (= (and b!7194090 res!2928792) b!7194091))

(declare-fun b_lambda!275787 () Bool)

(assert (=> (not b_lambda!275787) (not b!7194090)))

(declare-fun m!7888660 () Bool)

(assert (=> b!7194090 m!7888660))

(declare-fun m!7888662 () Bool)

(assert (=> b!7194091 m!7888662))

(assert (=> d!2241104 d!2241106))

(declare-fun d!2241108 () Bool)

(declare-fun choose!55422 ((InoxSet Context!14654) Int) (InoxSet Context!14654))

(assert (=> d!2241108 (= (flatMap!2678 z!3517 lambda!438002) (choose!55422 z!3517 lambda!438002))))

(declare-fun bs!1900416 () Bool)

(assert (= bs!1900416 d!2241108))

(declare-fun m!7888664 () Bool)

(assert (=> bs!1900416 m!7888664))

(assert (=> d!2241090 d!2241108))

(declare-fun d!2241110 () Bool)

(declare-fun nullableFct!3047 (Regex!18375) Bool)

(assert (=> d!2241110 (= (nullable!7788 (h!76171 (exprs!7827 c!10544))) (nullableFct!3047 (h!76171 (exprs!7827 c!10544))))))

(declare-fun bs!1900417 () Bool)

(assert (= bs!1900417 d!2241110))

(declare-fun m!7888666 () Bool)

(assert (=> bs!1900417 m!7888666))

(assert (=> b!7194061 d!2241110))

(declare-fun d!2241112 () Bool)

(declare-fun res!2928797 () Bool)

(declare-fun e!4320090 () Bool)

(assert (=> d!2241112 (=> res!2928797 e!4320090)))

(assert (=> d!2241112 (= res!2928797 ((_ is Nil!69725) lt!2571463))))

(assert (=> d!2241112 (= (noDuplicate!2899 lt!2571463) e!4320090)))

(declare-fun b!7194096 () Bool)

(declare-fun e!4320091 () Bool)

(assert (=> b!7194096 (= e!4320090 e!4320091)))

(declare-fun res!2928798 () Bool)

(assert (=> b!7194096 (=> (not res!2928798) (not e!4320091))))

(declare-fun contains!20726 (List!69849 Context!14654) Bool)

(assert (=> b!7194096 (= res!2928798 (not (contains!20726 (t!383874 lt!2571463) (h!76173 lt!2571463))))))

(declare-fun b!7194097 () Bool)

(assert (=> b!7194097 (= e!4320091 (noDuplicate!2899 (t!383874 lt!2571463)))))

(assert (= (and d!2241112 (not res!2928797)) b!7194096))

(assert (= (and b!7194096 res!2928798) b!7194097))

(declare-fun m!7888668 () Bool)

(assert (=> b!7194096 m!7888668))

(declare-fun m!7888670 () Bool)

(assert (=> b!7194097 m!7888670))

(assert (=> d!2241102 d!2241112))

(declare-fun d!2241114 () Bool)

(declare-fun e!4320100 () Bool)

(assert (=> d!2241114 e!4320100))

(declare-fun res!2928803 () Bool)

(assert (=> d!2241114 (=> (not res!2928803) (not e!4320100))))

(declare-fun res!2928804 () List!69849)

(assert (=> d!2241114 (= res!2928803 (noDuplicate!2899 res!2928804))))

(declare-fun e!4320099 () Bool)

(assert (=> d!2241114 e!4320099))

(assert (=> d!2241114 (= (choose!55421 lt!2571460) res!2928804)))

(declare-fun b!7194105 () Bool)

(declare-fun e!4320098 () Bool)

(declare-fun tp!1999822 () Bool)

(assert (=> b!7194105 (= e!4320098 tp!1999822)))

(declare-fun tp!1999821 () Bool)

(declare-fun b!7194104 () Bool)

(assert (=> b!7194104 (= e!4320099 (and (inv!88959 (h!76173 res!2928804)) e!4320098 tp!1999821))))

(declare-fun b!7194106 () Bool)

(assert (=> b!7194106 (= e!4320100 (= (content!14328 res!2928804) lt!2571460))))

(assert (= b!7194104 b!7194105))

(assert (= (and d!2241114 ((_ is Cons!69725) res!2928804)) b!7194104))

(assert (= (and d!2241114 res!2928803) b!7194106))

(declare-fun m!7888672 () Bool)

(assert (=> d!2241114 m!7888672))

(declare-fun m!7888674 () Bool)

(assert (=> b!7194104 m!7888674))

(declare-fun m!7888676 () Bool)

(assert (=> b!7194106 m!7888676))

(assert (=> d!2241102 d!2241114))

(declare-fun d!2241116 () Bool)

(declare-fun res!2928805 () Bool)

(declare-fun e!4320101 () Bool)

(assert (=> d!2241116 (=> res!2928805 e!4320101)))

(assert (=> d!2241116 (= res!2928805 ((_ is Nil!69723) (exprs!7827 setElem!53325)))))

(assert (=> d!2241116 (= (forall!17200 (exprs!7827 setElem!53325) lambda!438005) e!4320101)))

(declare-fun b!7194107 () Bool)

(declare-fun e!4320102 () Bool)

(assert (=> b!7194107 (= e!4320101 e!4320102)))

(declare-fun res!2928806 () Bool)

(assert (=> b!7194107 (=> (not res!2928806) (not e!4320102))))

(assert (=> b!7194107 (= res!2928806 (dynLambda!28395 lambda!438005 (h!76171 (exprs!7827 setElem!53325))))))

(declare-fun b!7194108 () Bool)

(assert (=> b!7194108 (= e!4320102 (forall!17200 (t!383872 (exprs!7827 setElem!53325)) lambda!438005))))

(assert (= (and d!2241116 (not res!2928805)) b!7194107))

(assert (= (and b!7194107 res!2928806) b!7194108))

(declare-fun b_lambda!275789 () Bool)

(assert (=> (not b_lambda!275789) (not b!7194107)))

(declare-fun m!7888678 () Bool)

(assert (=> b!7194107 m!7888678))

(declare-fun m!7888680 () Bool)

(assert (=> b!7194108 m!7888680))

(assert (=> d!2241098 d!2241116))

(declare-fun bs!1900418 () Bool)

(declare-fun d!2241118 () Bool)

(assert (= bs!1900418 (and d!2241118 d!2241098)))

(declare-fun lambda!438007 () Int)

(assert (=> bs!1900418 (= lambda!438007 lambda!438005)))

(declare-fun bs!1900419 () Bool)

(assert (= bs!1900419 (and d!2241118 d!2241104)))

(assert (=> bs!1900419 (= lambda!438007 lambda!438006)))

(assert (=> d!2241118 (= (inv!88959 setElem!53328) (forall!17200 (exprs!7827 setElem!53328) lambda!438007))))

(declare-fun bs!1900420 () Bool)

(assert (= bs!1900420 d!2241118))

(declare-fun m!7888682 () Bool)

(assert (=> bs!1900420 m!7888682))

(assert (=> setNonEmpty!53328 d!2241118))

(declare-fun d!2241120 () Bool)

(declare-fun c!1338990 () Bool)

(assert (=> d!2241120 (= c!1338990 ((_ is Nil!69725) lt!2571463))))

(declare-fun e!4320105 () (InoxSet Context!14654))

(assert (=> d!2241120 (= (content!14328 lt!2571463) e!4320105)))

(declare-fun b!7194113 () Bool)

(assert (=> b!7194113 (= e!4320105 ((as const (Array Context!14654 Bool)) false))))

(declare-fun b!7194114 () Bool)

(assert (=> b!7194114 (= e!4320105 ((_ map or) (store ((as const (Array Context!14654 Bool)) false) (h!76173 lt!2571463) true) (content!14328 (t!383874 lt!2571463))))))

(assert (= (and d!2241120 c!1338990) b!7194113))

(assert (= (and d!2241120 (not c!1338990)) b!7194114))

(declare-fun m!7888684 () Bool)

(assert (=> b!7194114 m!7888684))

(declare-fun m!7888686 () Bool)

(assert (=> b!7194114 m!7888686))

(assert (=> b!7194069 d!2241120))

(declare-fun b!7194115 () Bool)

(declare-fun e!4320106 () (InoxSet Context!14654))

(declare-fun e!4320107 () (InoxSet Context!14654))

(assert (=> b!7194115 (= e!4320106 e!4320107)))

(declare-fun c!1338992 () Bool)

(assert (=> b!7194115 (= c!1338992 ((_ is Cons!69723) (exprs!7827 (Context!14655 (t!383872 (exprs!7827 c!10544))))))))

(declare-fun b!7194116 () Bool)

(declare-fun e!4320108 () Bool)

(assert (=> b!7194116 (= e!4320108 (nullable!7788 (h!76171 (exprs!7827 (Context!14655 (t!383872 (exprs!7827 c!10544)))))))))

(declare-fun b!7194117 () Bool)

(declare-fun call!655988 () (InoxSet Context!14654))

(assert (=> b!7194117 (= e!4320107 call!655988)))

(declare-fun b!7194118 () Bool)

(assert (=> b!7194118 (= e!4320107 ((as const (Array Context!14654 Bool)) false))))

(declare-fun bm!655983 () Bool)

(assert (=> bm!655983 (= call!655988 (derivationStepZipperDown!2519 (h!76171 (exprs!7827 (Context!14655 (t!383872 (exprs!7827 c!10544))))) (Context!14655 (t!383872 (exprs!7827 (Context!14655 (t!383872 (exprs!7827 c!10544)))))) lt!2571459))))

(declare-fun d!2241122 () Bool)

(declare-fun c!1338991 () Bool)

(assert (=> d!2241122 (= c!1338991 e!4320108)))

(declare-fun res!2928807 () Bool)

(assert (=> d!2241122 (=> (not res!2928807) (not e!4320108))))

(assert (=> d!2241122 (= res!2928807 ((_ is Cons!69723) (exprs!7827 (Context!14655 (t!383872 (exprs!7827 c!10544))))))))

(assert (=> d!2241122 (= (derivationStepZipperUp!2341 (Context!14655 (t!383872 (exprs!7827 c!10544))) lt!2571459) e!4320106)))

(declare-fun b!7194119 () Bool)

(assert (=> b!7194119 (= e!4320106 ((_ map or) call!655988 (derivationStepZipperUp!2341 (Context!14655 (t!383872 (exprs!7827 (Context!14655 (t!383872 (exprs!7827 c!10544)))))) lt!2571459)))))

(assert (= (and d!2241122 res!2928807) b!7194116))

(assert (= (and d!2241122 c!1338991) b!7194119))

(assert (= (and d!2241122 (not c!1338991)) b!7194115))

(assert (= (and b!7194115 c!1338992) b!7194117))

(assert (= (and b!7194115 (not c!1338992)) b!7194118))

(assert (= (or b!7194119 b!7194117) bm!655983))

(declare-fun m!7888688 () Bool)

(assert (=> b!7194116 m!7888688))

(declare-fun m!7888690 () Bool)

(assert (=> bm!655983 m!7888690))

(declare-fun m!7888692 () Bool)

(assert (=> b!7194119 m!7888692))

(assert (=> b!7194064 d!2241122))

(declare-fun call!656007 () (InoxSet Context!14654))

(declare-fun c!1339010 () Bool)

(declare-fun call!656009 () List!69847)

(declare-fun bm!655999 () Bool)

(declare-fun c!1339009 () Bool)

(declare-fun c!1339012 () Bool)

(assert (=> bm!655999 (= call!656007 (derivationStepZipperDown!2519 (ite c!1339010 (regOne!37263 (h!76171 (exprs!7827 c!10544))) (ite c!1339012 (regTwo!37262 (h!76171 (exprs!7827 c!10544))) (ite c!1339009 (regOne!37262 (h!76171 (exprs!7827 c!10544))) (reg!18704 (h!76171 (exprs!7827 c!10544)))))) (ite (or c!1339010 c!1339012) (Context!14655 (t!383872 (exprs!7827 c!10544))) (Context!14655 call!656009)) lt!2571459))))

(declare-fun b!7194157 () Bool)

(declare-fun e!4320135 () (InoxSet Context!14654))

(declare-fun call!656008 () (InoxSet Context!14654))

(assert (=> b!7194157 (= e!4320135 call!656008)))

(declare-fun b!7194158 () Bool)

(declare-fun e!4320131 () (InoxSet Context!14654))

(declare-fun call!656004 () (InoxSet Context!14654))

(declare-fun call!656006 () (InoxSet Context!14654))

(assert (=> b!7194158 (= e!4320131 ((_ map or) call!656004 call!656006))))

(declare-fun b!7194159 () Bool)

(declare-fun e!4320133 () (InoxSet Context!14654))

(assert (=> b!7194159 (= e!4320133 call!656008)))

(declare-fun d!2241124 () Bool)

(declare-fun c!1339013 () Bool)

(assert (=> d!2241124 (= c!1339013 (and ((_ is ElementMatch!18375) (h!76171 (exprs!7827 c!10544))) (= (c!1338979 (h!76171 (exprs!7827 c!10544))) lt!2571459)))))

(declare-fun e!4320134 () (InoxSet Context!14654))

(assert (=> d!2241124 (= (derivationStepZipperDown!2519 (h!76171 (exprs!7827 c!10544)) (Context!14655 (t!383872 (exprs!7827 c!10544))) lt!2571459) e!4320134)))

(declare-fun call!656005 () List!69847)

(declare-fun bm!656000 () Bool)

(assert (=> bm!656000 (= call!656004 (derivationStepZipperDown!2519 (ite c!1339010 (regTwo!37263 (h!76171 (exprs!7827 c!10544))) (regOne!37262 (h!76171 (exprs!7827 c!10544)))) (ite c!1339010 (Context!14655 (t!383872 (exprs!7827 c!10544))) (Context!14655 call!656005)) lt!2571459))))

(declare-fun b!7194160 () Bool)

(assert (=> b!7194160 (= e!4320134 (store ((as const (Array Context!14654 Bool)) false) (Context!14655 (t!383872 (exprs!7827 c!10544))) true))))

(declare-fun bm!656001 () Bool)

(assert (=> bm!656001 (= call!656008 call!656006)))

(declare-fun b!7194161 () Bool)

(declare-fun e!4320130 () Bool)

(assert (=> b!7194161 (= c!1339012 e!4320130)))

(declare-fun res!2928813 () Bool)

(assert (=> b!7194161 (=> (not res!2928813) (not e!4320130))))

(assert (=> b!7194161 (= res!2928813 ((_ is Concat!27220) (h!76171 (exprs!7827 c!10544))))))

(declare-fun e!4320132 () (InoxSet Context!14654))

(assert (=> b!7194161 (= e!4320132 e!4320131)))

(declare-fun bm!656002 () Bool)

(declare-fun $colon$colon!2847 (List!69847 Regex!18375) List!69847)

(assert (=> bm!656002 (= call!656005 ($colon$colon!2847 (exprs!7827 (Context!14655 (t!383872 (exprs!7827 c!10544)))) (ite (or c!1339012 c!1339009) (regTwo!37262 (h!76171 (exprs!7827 c!10544))) (h!76171 (exprs!7827 c!10544)))))))

(declare-fun b!7194162 () Bool)

(declare-fun c!1339011 () Bool)

(assert (=> b!7194162 (= c!1339011 ((_ is Star!18375) (h!76171 (exprs!7827 c!10544))))))

(assert (=> b!7194162 (= e!4320135 e!4320133)))

(declare-fun b!7194163 () Bool)

(assert (=> b!7194163 (= e!4320134 e!4320132)))

(assert (=> b!7194163 (= c!1339010 ((_ is Union!18375) (h!76171 (exprs!7827 c!10544))))))

(declare-fun bm!656003 () Bool)

(assert (=> bm!656003 (= call!656009 call!656005)))

(declare-fun b!7194164 () Bool)

(assert (=> b!7194164 (= e!4320133 ((as const (Array Context!14654 Bool)) false))))

(declare-fun b!7194165 () Bool)

(assert (=> b!7194165 (= e!4320132 ((_ map or) call!656007 call!656004))))

(declare-fun b!7194166 () Bool)

(assert (=> b!7194166 (= e!4320131 e!4320135)))

(assert (=> b!7194166 (= c!1339009 ((_ is Concat!27220) (h!76171 (exprs!7827 c!10544))))))

(declare-fun b!7194167 () Bool)

(assert (=> b!7194167 (= e!4320130 (nullable!7788 (regOne!37262 (h!76171 (exprs!7827 c!10544)))))))

(declare-fun bm!656004 () Bool)

(assert (=> bm!656004 (= call!656006 call!656007)))

(assert (= (and d!2241124 c!1339013) b!7194160))

(assert (= (and d!2241124 (not c!1339013)) b!7194163))

(assert (= (and b!7194163 c!1339010) b!7194165))

(assert (= (and b!7194163 (not c!1339010)) b!7194161))

(assert (= (and b!7194161 res!2928813) b!7194167))

(assert (= (and b!7194161 c!1339012) b!7194158))

(assert (= (and b!7194161 (not c!1339012)) b!7194166))

(assert (= (and b!7194166 c!1339009) b!7194157))

(assert (= (and b!7194166 (not c!1339009)) b!7194162))

(assert (= (and b!7194162 c!1339011) b!7194159))

(assert (= (and b!7194162 (not c!1339011)) b!7194164))

(assert (= (or b!7194157 b!7194159) bm!656003))

(assert (= (or b!7194157 b!7194159) bm!656001))

(assert (= (or b!7194158 bm!656001) bm!656004))

(assert (= (or b!7194158 bm!656003) bm!656002))

(assert (= (or b!7194165 bm!656004) bm!655999))

(assert (= (or b!7194165 b!7194158) bm!656000))

(declare-fun m!7888702 () Bool)

(assert (=> b!7194160 m!7888702))

(declare-fun m!7888704 () Bool)

(assert (=> bm!655999 m!7888704))

(declare-fun m!7888706 () Bool)

(assert (=> bm!656002 m!7888706))

(declare-fun m!7888708 () Bool)

(assert (=> bm!656000 m!7888708))

(declare-fun m!7888710 () Bool)

(assert (=> b!7194167 m!7888710))

(assert (=> bm!655982 d!2241124))

(declare-fun b!7194180 () Bool)

(declare-fun e!4320138 () Bool)

(declare-fun tp!1999833 () Bool)

(assert (=> b!7194180 (= e!4320138 tp!1999833)))

(declare-fun b!7194178 () Bool)

(assert (=> b!7194178 (= e!4320138 tp_is_empty!46307)))

(assert (=> b!7194085 (= tp!1999815 e!4320138)))

(declare-fun b!7194179 () Bool)

(declare-fun tp!1999837 () Bool)

(declare-fun tp!1999836 () Bool)

(assert (=> b!7194179 (= e!4320138 (and tp!1999837 tp!1999836))))

(declare-fun b!7194181 () Bool)

(declare-fun tp!1999835 () Bool)

(declare-fun tp!1999834 () Bool)

(assert (=> b!7194181 (= e!4320138 (and tp!1999835 tp!1999834))))

(assert (= (and b!7194085 ((_ is ElementMatch!18375) (h!76171 (exprs!7827 setElem!53325)))) b!7194178))

(assert (= (and b!7194085 ((_ is Concat!27220) (h!76171 (exprs!7827 setElem!53325)))) b!7194179))

(assert (= (and b!7194085 ((_ is Star!18375) (h!76171 (exprs!7827 setElem!53325)))) b!7194180))

(assert (= (and b!7194085 ((_ is Union!18375) (h!76171 (exprs!7827 setElem!53325)))) b!7194181))

(declare-fun b!7194184 () Bool)

(declare-fun e!4320139 () Bool)

(declare-fun tp!1999838 () Bool)

(declare-fun tp!1999839 () Bool)

(assert (=> b!7194184 (= e!4320139 (and tp!1999838 tp!1999839))))

(assert (=> b!7194085 (= tp!1999816 e!4320139)))

(assert (= (and b!7194085 ((_ is Cons!69723) (t!383872 (exprs!7827 setElem!53325)))) b!7194184))

(declare-fun b!7194185 () Bool)

(declare-fun e!4320140 () Bool)

(declare-fun tp!1999840 () Bool)

(assert (=> b!7194185 (= e!4320140 (and tp_is_empty!46307 tp!1999840))))

(assert (=> b!7194079 (= tp!1999808 e!4320140)))

(assert (= (and b!7194079 ((_ is Cons!69724) (t!383873 (t!383873 s!7961)))) b!7194185))

(declare-fun b!7194186 () Bool)

(declare-fun e!4320141 () Bool)

(declare-fun tp!1999841 () Bool)

(declare-fun tp!1999842 () Bool)

(assert (=> b!7194186 (= e!4320141 (and tp!1999841 tp!1999842))))

(assert (=> b!7194074 (= tp!1999805 e!4320141)))

(assert (= (and b!7194074 ((_ is Cons!69723) (exprs!7827 setElem!53328))) b!7194186))

(declare-fun condSetEmpty!53329 () Bool)

(assert (=> setNonEmpty!53328 (= condSetEmpty!53329 (= setRest!53328 ((as const (Array Context!14654 Bool)) false)))))

(declare-fun setRes!53329 () Bool)

(assert (=> setNonEmpty!53328 (= tp!1999804 setRes!53329)))

(declare-fun setIsEmpty!53329 () Bool)

(assert (=> setIsEmpty!53329 setRes!53329))

(declare-fun e!4320142 () Bool)

(declare-fun tp!1999843 () Bool)

(declare-fun setNonEmpty!53329 () Bool)

(declare-fun setElem!53329 () Context!14654)

(assert (=> setNonEmpty!53329 (= setRes!53329 (and tp!1999843 (inv!88959 setElem!53329) e!4320142))))

(declare-fun setRest!53329 () (InoxSet Context!14654))

(assert (=> setNonEmpty!53329 (= setRest!53328 ((_ map or) (store ((as const (Array Context!14654 Bool)) false) setElem!53329 true) setRest!53329))))

(declare-fun b!7194187 () Bool)

(declare-fun tp!1999844 () Bool)

(assert (=> b!7194187 (= e!4320142 tp!1999844)))

(assert (= (and setNonEmpty!53328 condSetEmpty!53329) setIsEmpty!53329))

(assert (= (and setNonEmpty!53328 (not condSetEmpty!53329)) setNonEmpty!53329))

(assert (= setNonEmpty!53329 b!7194187))

(declare-fun m!7888714 () Bool)

(assert (=> setNonEmpty!53329 m!7888714))

(declare-fun b!7194190 () Bool)

(declare-fun e!4320143 () Bool)

(declare-fun tp!1999845 () Bool)

(assert (=> b!7194190 (= e!4320143 tp!1999845)))

(declare-fun b!7194188 () Bool)

(assert (=> b!7194188 (= e!4320143 tp_is_empty!46307)))

(assert (=> b!7194084 (= tp!1999813 e!4320143)))

(declare-fun b!7194189 () Bool)

(declare-fun tp!1999849 () Bool)

(declare-fun tp!1999848 () Bool)

(assert (=> b!7194189 (= e!4320143 (and tp!1999849 tp!1999848))))

(declare-fun b!7194191 () Bool)

(declare-fun tp!1999847 () Bool)

(declare-fun tp!1999846 () Bool)

(assert (=> b!7194191 (= e!4320143 (and tp!1999847 tp!1999846))))

(assert (= (and b!7194084 ((_ is ElementMatch!18375) (h!76171 (exprs!7827 c!10544)))) b!7194188))

(assert (= (and b!7194084 ((_ is Concat!27220) (h!76171 (exprs!7827 c!10544)))) b!7194189))

(assert (= (and b!7194084 ((_ is Star!18375) (h!76171 (exprs!7827 c!10544)))) b!7194190))

(assert (= (and b!7194084 ((_ is Union!18375) (h!76171 (exprs!7827 c!10544)))) b!7194191))

(declare-fun b!7194192 () Bool)

(declare-fun e!4320144 () Bool)

(declare-fun tp!1999850 () Bool)

(declare-fun tp!1999851 () Bool)

(assert (=> b!7194192 (= e!4320144 (and tp!1999850 tp!1999851))))

(assert (=> b!7194084 (= tp!1999814 e!4320144)))

(assert (= (and b!7194084 ((_ is Cons!69723) (t!383872 (exprs!7827 c!10544)))) b!7194192))

(declare-fun b_lambda!275791 () Bool)

(assert (= b_lambda!275787 (or d!2241104 b_lambda!275791)))

(declare-fun bs!1900423 () Bool)

(declare-fun d!2241136 () Bool)

(assert (= bs!1900423 (and d!2241136 d!2241104)))

(declare-fun validRegex!9481 (Regex!18375) Bool)

(assert (=> bs!1900423 (= (dynLambda!28395 lambda!438006 (h!76171 (exprs!7827 c!10544))) (validRegex!9481 (h!76171 (exprs!7827 c!10544))))))

(declare-fun m!7888716 () Bool)

(assert (=> bs!1900423 m!7888716))

(assert (=> b!7194090 d!2241136))

(declare-fun b_lambda!275793 () Bool)

(assert (= b_lambda!275789 (or d!2241098 b_lambda!275793)))

(declare-fun bs!1900425 () Bool)

(declare-fun d!2241138 () Bool)

(assert (= bs!1900425 (and d!2241138 d!2241098)))

(assert (=> bs!1900425 (= (dynLambda!28395 lambda!438005 (h!76171 (exprs!7827 setElem!53325))) (validRegex!9481 (h!76171 (exprs!7827 setElem!53325))))))

(declare-fun m!7888718 () Bool)

(assert (=> bs!1900425 m!7888718))

(assert (=> b!7194107 d!2241138))

(check-sat (not bm!656000) (not b!7194116) (not d!2241118) (not b!7194108) (not bs!1900423) (not b!7194180) tp_is_empty!46307 (not b!7194185) (not setNonEmpty!53329) (not b!7194192) (not b!7194179) (not b!7194190) (not b!7194189) (not bm!655983) (not b!7194167) (not b!7194119) (not b!7194105) (not bm!655999) (not b!7194096) (not bs!1900425) (not b!7194091) (not d!2241110) (not b!7194187) (not bm!656002) (not b!7194097) (not b!7194106) (not d!2241114) (not b!7194181) (not b!7194191) (not b_lambda!275791) (not b!7194104) (not b!7194184) (not b!7194186) (not b!7194114) (not d!2241108) (not b_lambda!275793))
(check-sat)
