; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282882 () Bool)

(assert start!282882)

(declare-fun b!2907091 () Bool)

(declare-fun e!1835092 () Bool)

(declare-fun tp_is_empty!15401 () Bool)

(declare-fun tp!933822 () Bool)

(assert (=> b!2907091 (= e!1835092 (and tp_is_empty!15401 tp!933822))))

(declare-fun b!2907093 () Bool)

(declare-fun e!1835091 () Bool)

(declare-fun tp!933821 () Bool)

(assert (=> b!2907093 (= e!1835091 (and tp_is_empty!15401 tp!933821))))

(declare-fun e!1835090 () Bool)

(declare-fun setRes!25775 () Bool)

(declare-fun tp!933823 () Bool)

(declare-datatypes ((C!17996 0))(
  ( (C!17997 (val!11032 Int)) )
))
(declare-datatypes ((Regex!8907 0))(
  ( (ElementMatch!8907 (c!473732 C!17996)) (Concat!14228 (regOne!18326 Regex!8907) (regTwo!18326 Regex!8907)) (EmptyExpr!8907) (Star!8907 (reg!9236 Regex!8907)) (EmptyLang!8907) (Union!8907 (regOne!18327 Regex!8907) (regTwo!18327 Regex!8907)) )
))
(declare-datatypes ((List!34723 0))(
  ( (Nil!34599) (Cons!34599 (h!40019 Regex!8907) (t!233766 List!34723)) )
))
(declare-datatypes ((Context!5470 0))(
  ( (Context!5471 (exprs!3235 List!34723)) )
))
(declare-fun setElem!25775 () Context!5470)

(declare-fun setNonEmpty!25775 () Bool)

(declare-fun inv!46722 (Context!5470) Bool)

(assert (=> setNonEmpty!25775 (= setRes!25775 (and tp!933823 (inv!46722 setElem!25775) e!1835090))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!929 () (InoxSet Context!5470))

(declare-fun setRest!25775 () (InoxSet Context!5470))

(assert (=> setNonEmpty!25775 (= z!929 ((_ map or) (store ((as const (Array Context!5470 Bool)) false) setElem!25775 true) setRest!25775))))

(declare-fun setIsEmpty!25775 () Bool)

(assert (=> setIsEmpty!25775 setRes!25775))

(declare-fun b!2907094 () Bool)

(declare-fun e!1835093 () Bool)

(declare-fun lostCauseZipper!600 ((InoxSet Context!5470)) Bool)

(assert (=> b!2907094 (= e!1835093 (not (lostCauseZipper!600 z!929)))))

(declare-fun b!2907092 () Bool)

(declare-fun res!1200529 () Bool)

(assert (=> b!2907092 (=> (not res!1200529) (not e!1835093))))

(declare-datatypes ((List!34724 0))(
  ( (Nil!34600) (Cons!34600 (h!40020 C!17996) (t!233767 List!34724)) )
))
(declare-fun prefix!909 () List!34724)

(get-info :version)

(assert (=> b!2907092 (= res!1200529 ((_ is Nil!34600) prefix!909))))

(declare-fun res!1200527 () Bool)

(assert (=> start!282882 (=> (not res!1200527) (not e!1835093))))

(declare-fun s!2253 () List!34724)

(declare-fun isPrefix!2744 (List!34724 List!34724) Bool)

(assert (=> start!282882 (= res!1200527 (isPrefix!2744 prefix!909 s!2253))))

(assert (=> start!282882 e!1835093))

(assert (=> start!282882 e!1835091))

(assert (=> start!282882 e!1835092))

(declare-fun condSetEmpty!25775 () Bool)

(assert (=> start!282882 (= condSetEmpty!25775 (= z!929 ((as const (Array Context!5470 Bool)) false)))))

(assert (=> start!282882 setRes!25775))

(declare-fun b!2907095 () Bool)

(declare-fun res!1200528 () Bool)

(assert (=> b!2907095 (=> (not res!1200528) (not e!1835093))))

(declare-fun prefixMatchZipper!351 ((InoxSet Context!5470) List!34724) Bool)

(assert (=> b!2907095 (= res!1200528 (not (prefixMatchZipper!351 z!929 prefix!909)))))

(declare-fun b!2907096 () Bool)

(declare-fun tp!933820 () Bool)

(assert (=> b!2907096 (= e!1835090 tp!933820)))

(assert (= (and start!282882 res!1200527) b!2907095))

(assert (= (and b!2907095 res!1200528) b!2907092))

(assert (= (and b!2907092 res!1200529) b!2907094))

(assert (= (and start!282882 ((_ is Cons!34600) prefix!909)) b!2907093))

(assert (= (and start!282882 ((_ is Cons!34600) s!2253)) b!2907091))

(assert (= (and start!282882 condSetEmpty!25775) setIsEmpty!25775))

(assert (= (and start!282882 (not condSetEmpty!25775)) setNonEmpty!25775))

(assert (= setNonEmpty!25775 b!2907096))

(declare-fun m!3308819 () Bool)

(assert (=> setNonEmpty!25775 m!3308819))

(declare-fun m!3308821 () Bool)

(assert (=> b!2907094 m!3308821))

(declare-fun m!3308823 () Bool)

(assert (=> start!282882 m!3308823))

(declare-fun m!3308825 () Bool)

(assert (=> b!2907095 m!3308825))

(check-sat (not b!2907093) (not setNonEmpty!25775) tp_is_empty!15401 (not start!282882) (not b!2907096) (not b!2907094) (not b!2907095) (not b!2907091))
(check-sat)
(get-model)

(declare-fun b!2907106 () Bool)

(declare-fun res!1200541 () Bool)

(declare-fun e!1835102 () Bool)

(assert (=> b!2907106 (=> (not res!1200541) (not e!1835102))))

(declare-fun head!6430 (List!34724) C!17996)

(assert (=> b!2907106 (= res!1200541 (= (head!6430 prefix!909) (head!6430 s!2253)))))

(declare-fun d!836297 () Bool)

(declare-fun e!1835100 () Bool)

(assert (=> d!836297 e!1835100))

(declare-fun res!1200538 () Bool)

(assert (=> d!836297 (=> res!1200538 e!1835100)))

(declare-fun lt!1022639 () Bool)

(assert (=> d!836297 (= res!1200538 (not lt!1022639))))

(declare-fun e!1835101 () Bool)

(assert (=> d!836297 (= lt!1022639 e!1835101)))

(declare-fun res!1200540 () Bool)

(assert (=> d!836297 (=> res!1200540 e!1835101)))

(assert (=> d!836297 (= res!1200540 ((_ is Nil!34600) prefix!909))))

(assert (=> d!836297 (= (isPrefix!2744 prefix!909 s!2253) lt!1022639)))

(declare-fun b!2907107 () Bool)

(declare-fun tail!4661 (List!34724) List!34724)

(assert (=> b!2907107 (= e!1835102 (isPrefix!2744 (tail!4661 prefix!909) (tail!4661 s!2253)))))

(declare-fun b!2907105 () Bool)

(assert (=> b!2907105 (= e!1835101 e!1835102)))

(declare-fun res!1200539 () Bool)

(assert (=> b!2907105 (=> (not res!1200539) (not e!1835102))))

(assert (=> b!2907105 (= res!1200539 (not ((_ is Nil!34600) s!2253)))))

(declare-fun b!2907108 () Bool)

(declare-fun size!26379 (List!34724) Int)

(assert (=> b!2907108 (= e!1835100 (>= (size!26379 s!2253) (size!26379 prefix!909)))))

(assert (= (and d!836297 (not res!1200540)) b!2907105))

(assert (= (and b!2907105 res!1200539) b!2907106))

(assert (= (and b!2907106 res!1200541) b!2907107))

(assert (= (and d!836297 (not res!1200538)) b!2907108))

(declare-fun m!3308827 () Bool)

(assert (=> b!2907106 m!3308827))

(declare-fun m!3308829 () Bool)

(assert (=> b!2907106 m!3308829))

(declare-fun m!3308831 () Bool)

(assert (=> b!2907107 m!3308831))

(declare-fun m!3308833 () Bool)

(assert (=> b!2907107 m!3308833))

(assert (=> b!2907107 m!3308831))

(assert (=> b!2907107 m!3308833))

(declare-fun m!3308835 () Bool)

(assert (=> b!2907107 m!3308835))

(declare-fun m!3308837 () Bool)

(assert (=> b!2907108 m!3308837))

(declare-fun m!3308839 () Bool)

(assert (=> b!2907108 m!3308839))

(assert (=> start!282882 d!836297))

(declare-fun bs!524109 () Bool)

(declare-fun b!2907113 () Bool)

(declare-fun d!836301 () Bool)

(assert (= bs!524109 (and b!2907113 d!836301)))

(declare-fun lambda!107699 () Int)

(declare-fun lambda!107698 () Int)

(assert (=> bs!524109 (not (= lambda!107699 lambda!107698))))

(declare-fun bs!524110 () Bool)

(declare-fun b!2907114 () Bool)

(assert (= bs!524110 (and b!2907114 d!836301)))

(declare-fun lambda!107700 () Int)

(assert (=> bs!524110 (not (= lambda!107700 lambda!107698))))

(declare-fun bs!524111 () Bool)

(assert (= bs!524111 (and b!2907114 b!2907113)))

(assert (=> bs!524111 (= lambda!107700 lambda!107699)))

(declare-datatypes ((List!34725 0))(
  ( (Nil!34601) (Cons!34601 (h!40021 Context!5470) (t!233768 List!34725)) )
))
(declare-fun lt!1022663 () List!34725)

(declare-fun call!189715 () Bool)

(declare-fun bm!189710 () Bool)

(declare-fun lt!1022662 () List!34725)

(declare-fun c!473743 () Bool)

(declare-fun exists!1204 (List!34725 Int) Bool)

(assert (=> bm!189710 (= call!189715 (exists!1204 (ite c!473743 lt!1022663 lt!1022662) (ite c!473743 lambda!107699 lambda!107700)))))

(declare-fun lt!1022660 () Bool)

(declare-datatypes ((Option!6541 0))(
  ( (None!6540) (Some!6540 (v!34666 List!34724)) )
))
(declare-fun isEmpty!18886 (Option!6541) Bool)

(declare-fun getLanguageWitness!575 ((InoxSet Context!5470)) Option!6541)

(assert (=> d!836301 (= lt!1022660 (isEmpty!18886 (getLanguageWitness!575 z!929)))))

(declare-fun forall!7107 ((InoxSet Context!5470) Int) Bool)

(assert (=> d!836301 (= lt!1022660 (forall!7107 z!929 lambda!107698))))

(declare-datatypes ((Unit!48145 0))(
  ( (Unit!48146) )
))
(declare-fun lt!1022661 () Unit!48145)

(declare-fun e!1835109 () Unit!48145)

(assert (=> d!836301 (= lt!1022661 e!1835109)))

(assert (=> d!836301 (= c!473743 (not (forall!7107 z!929 lambda!107698)))))

(assert (=> d!836301 (= (lostCauseZipper!600 z!929) lt!1022660)))

(declare-fun bm!189711 () Bool)

(declare-fun call!189716 () List!34725)

(declare-fun toList!2031 ((InoxSet Context!5470)) List!34725)

(assert (=> bm!189711 (= call!189716 (toList!2031 z!929))))

(declare-fun Unit!48147 () Unit!48145)

(assert (=> b!2907113 (= e!1835109 Unit!48147)))

(assert (=> b!2907113 (= lt!1022663 call!189716)))

(declare-fun lt!1022659 () Unit!48145)

(declare-fun lemmaNotForallThenExists!158 (List!34725 Int) Unit!48145)

(assert (=> b!2907113 (= lt!1022659 (lemmaNotForallThenExists!158 lt!1022663 lambda!107698))))

(assert (=> b!2907113 call!189715))

(declare-fun lt!1022658 () Unit!48145)

(assert (=> b!2907113 (= lt!1022658 lt!1022659)))

(declare-fun Unit!48148 () Unit!48145)

(assert (=> b!2907114 (= e!1835109 Unit!48148)))

(assert (=> b!2907114 (= lt!1022662 call!189716)))

(declare-fun lt!1022657 () Unit!48145)

(declare-fun lemmaForallThenNotExists!141 (List!34725 Int) Unit!48145)

(assert (=> b!2907114 (= lt!1022657 (lemmaForallThenNotExists!141 lt!1022662 lambda!107698))))

(assert (=> b!2907114 (not call!189715)))

(declare-fun lt!1022656 () Unit!48145)

(assert (=> b!2907114 (= lt!1022656 lt!1022657)))

(assert (= (and d!836301 c!473743) b!2907113))

(assert (= (and d!836301 (not c!473743)) b!2907114))

(assert (= (or b!2907113 b!2907114) bm!189710))

(assert (= (or b!2907113 b!2907114) bm!189711))

(declare-fun m!3308841 () Bool)

(assert (=> b!2907113 m!3308841))

(declare-fun m!3308843 () Bool)

(assert (=> bm!189711 m!3308843))

(declare-fun m!3308845 () Bool)

(assert (=> bm!189710 m!3308845))

(declare-fun m!3308847 () Bool)

(assert (=> b!2907114 m!3308847))

(declare-fun m!3308849 () Bool)

(assert (=> d!836301 m!3308849))

(assert (=> d!836301 m!3308849))

(declare-fun m!3308851 () Bool)

(assert (=> d!836301 m!3308851))

(declare-fun m!3308853 () Bool)

(assert (=> d!836301 m!3308853))

(assert (=> d!836301 m!3308853))

(assert (=> b!2907094 d!836301))

(declare-fun d!836303 () Bool)

(declare-fun c!473746 () Bool)

(declare-fun isEmpty!18887 (List!34724) Bool)

(assert (=> d!836303 (= c!473746 (isEmpty!18887 prefix!909))))

(declare-fun e!1835112 () Bool)

(assert (=> d!836303 (= (prefixMatchZipper!351 z!929 prefix!909) e!1835112)))

(declare-fun b!2907119 () Bool)

(assert (=> b!2907119 (= e!1835112 (not (lostCauseZipper!600 z!929)))))

(declare-fun b!2907120 () Bool)

(declare-fun derivationStepZipper!498 ((InoxSet Context!5470) C!17996) (InoxSet Context!5470))

(assert (=> b!2907120 (= e!1835112 (prefixMatchZipper!351 (derivationStepZipper!498 z!929 (head!6430 prefix!909)) (tail!4661 prefix!909)))))

(assert (= (and d!836303 c!473746) b!2907119))

(assert (= (and d!836303 (not c!473746)) b!2907120))

(declare-fun m!3308855 () Bool)

(assert (=> d!836303 m!3308855))

(assert (=> b!2907119 m!3308821))

(assert (=> b!2907120 m!3308827))

(assert (=> b!2907120 m!3308827))

(declare-fun m!3308857 () Bool)

(assert (=> b!2907120 m!3308857))

(assert (=> b!2907120 m!3308831))

(assert (=> b!2907120 m!3308857))

(assert (=> b!2907120 m!3308831))

(declare-fun m!3308859 () Bool)

(assert (=> b!2907120 m!3308859))

(assert (=> b!2907095 d!836303))

(declare-fun d!836305 () Bool)

(declare-fun lambda!107703 () Int)

(declare-fun forall!7108 (List!34723 Int) Bool)

(assert (=> d!836305 (= (inv!46722 setElem!25775) (forall!7108 (exprs!3235 setElem!25775) lambda!107703))))

(declare-fun bs!524112 () Bool)

(assert (= bs!524112 d!836305))

(declare-fun m!3308861 () Bool)

(assert (=> bs!524112 m!3308861))

(assert (=> setNonEmpty!25775 d!836305))

(declare-fun b!2907125 () Bool)

(declare-fun e!1835115 () Bool)

(declare-fun tp!933826 () Bool)

(assert (=> b!2907125 (= e!1835115 (and tp_is_empty!15401 tp!933826))))

(assert (=> b!2907091 (= tp!933822 e!1835115)))

(assert (= (and b!2907091 ((_ is Cons!34600) (t!233767 s!2253))) b!2907125))

(declare-fun condSetEmpty!25778 () Bool)

(assert (=> setNonEmpty!25775 (= condSetEmpty!25778 (= setRest!25775 ((as const (Array Context!5470 Bool)) false)))))

(declare-fun setRes!25778 () Bool)

(assert (=> setNonEmpty!25775 (= tp!933823 setRes!25778)))

(declare-fun setIsEmpty!25778 () Bool)

(assert (=> setIsEmpty!25778 setRes!25778))

(declare-fun e!1835118 () Bool)

(declare-fun setElem!25778 () Context!5470)

(declare-fun setNonEmpty!25778 () Bool)

(declare-fun tp!933832 () Bool)

(assert (=> setNonEmpty!25778 (= setRes!25778 (and tp!933832 (inv!46722 setElem!25778) e!1835118))))

(declare-fun setRest!25778 () (InoxSet Context!5470))

(assert (=> setNonEmpty!25778 (= setRest!25775 ((_ map or) (store ((as const (Array Context!5470 Bool)) false) setElem!25778 true) setRest!25778))))

(declare-fun b!2907130 () Bool)

(declare-fun tp!933831 () Bool)

(assert (=> b!2907130 (= e!1835118 tp!933831)))

(assert (= (and setNonEmpty!25775 condSetEmpty!25778) setIsEmpty!25778))

(assert (= (and setNonEmpty!25775 (not condSetEmpty!25778)) setNonEmpty!25778))

(assert (= setNonEmpty!25778 b!2907130))

(declare-fun m!3308863 () Bool)

(assert (=> setNonEmpty!25778 m!3308863))

(declare-fun b!2907131 () Bool)

(declare-fun e!1835119 () Bool)

(declare-fun tp!933833 () Bool)

(assert (=> b!2907131 (= e!1835119 (and tp_is_empty!15401 tp!933833))))

(assert (=> b!2907093 (= tp!933821 e!1835119)))

(assert (= (and b!2907093 ((_ is Cons!34600) (t!233767 prefix!909))) b!2907131))

(declare-fun b!2907136 () Bool)

(declare-fun e!1835122 () Bool)

(declare-fun tp!933838 () Bool)

(declare-fun tp!933839 () Bool)

(assert (=> b!2907136 (= e!1835122 (and tp!933838 tp!933839))))

(assert (=> b!2907096 (= tp!933820 e!1835122)))

(assert (= (and b!2907096 ((_ is Cons!34599) (exprs!3235 setElem!25775))) b!2907136))

(check-sat (not b!2907108) (not d!836305) (not b!2907113) (not b!2907125) (not b!2907106) (not bm!189711) (not b!2907119) (not d!836303) (not setNonEmpty!25778) (not d!836301) (not b!2907130) tp_is_empty!15401 (not bm!189710) (not b!2907120) (not b!2907136) (not b!2907131) (not b!2907114) (not b!2907107))
(check-sat)
(get-model)

(declare-fun d!836311 () Bool)

(declare-fun e!1835134 () Bool)

(assert (=> d!836311 e!1835134))

(declare-fun res!1200556 () Bool)

(assert (=> d!836311 (=> (not res!1200556) (not e!1835134))))

(declare-fun lt!1022669 () List!34725)

(declare-fun noDuplicate!583 (List!34725) Bool)

(assert (=> d!836311 (= res!1200556 (noDuplicate!583 lt!1022669))))

(declare-fun choose!17089 ((InoxSet Context!5470)) List!34725)

(assert (=> d!836311 (= lt!1022669 (choose!17089 z!929))))

(assert (=> d!836311 (= (toList!2031 z!929) lt!1022669)))

(declare-fun b!2907151 () Bool)

(declare-fun content!4738 (List!34725) (InoxSet Context!5470))

(assert (=> b!2907151 (= e!1835134 (= (content!4738 lt!1022669) z!929))))

(assert (= (and d!836311 res!1200556) b!2907151))

(declare-fun m!3308881 () Bool)

(assert (=> d!836311 m!3308881))

(declare-fun m!3308883 () Bool)

(assert (=> d!836311 m!3308883))

(declare-fun m!3308885 () Bool)

(assert (=> b!2907151 m!3308885))

(assert (=> bm!189711 d!836311))

(declare-fun d!836313 () Bool)

(assert (=> d!836313 (= (isEmpty!18887 prefix!909) ((_ is Nil!34600) prefix!909))))

(assert (=> d!836303 d!836313))

(declare-fun bs!524114 () Bool)

(declare-fun d!836315 () Bool)

(assert (= bs!524114 (and d!836315 d!836301)))

(declare-fun lambda!107709 () Int)

(assert (=> bs!524114 (not (= lambda!107709 lambda!107698))))

(declare-fun bs!524115 () Bool)

(assert (= bs!524115 (and d!836315 b!2907113)))

(assert (=> bs!524115 (not (= lambda!107709 lambda!107699))))

(declare-fun bs!524116 () Bool)

(assert (= bs!524116 (and d!836315 b!2907114)))

(assert (=> bs!524116 (not (= lambda!107709 lambda!107700))))

(assert (=> d!836315 true))

(declare-fun order!18163 () Int)

(declare-fun dynLambda!14344 (Int Int) Int)

(assert (=> d!836315 (< (dynLambda!14344 order!18163 (ite c!473743 lambda!107699 lambda!107700)) (dynLambda!14344 order!18163 lambda!107709))))

(declare-fun forall!7111 (List!34725 Int) Bool)

(assert (=> d!836315 (= (exists!1204 (ite c!473743 lt!1022663 lt!1022662) (ite c!473743 lambda!107699 lambda!107700)) (not (forall!7111 (ite c!473743 lt!1022663 lt!1022662) lambda!107709)))))

(declare-fun bs!524117 () Bool)

(assert (= bs!524117 d!836315))

(declare-fun m!3308893 () Bool)

(assert (=> bs!524117 m!3308893))

(assert (=> bm!189710 d!836315))

(declare-fun d!836319 () Bool)

(declare-fun res!1200561 () Bool)

(declare-fun e!1835142 () Bool)

(assert (=> d!836319 (=> res!1200561 e!1835142)))

(assert (=> d!836319 (= res!1200561 ((_ is Nil!34599) (exprs!3235 setElem!25775)))))

(assert (=> d!836319 (= (forall!7108 (exprs!3235 setElem!25775) lambda!107703) e!1835142)))

(declare-fun b!2907164 () Bool)

(declare-fun e!1835143 () Bool)

(assert (=> b!2907164 (= e!1835142 e!1835143)))

(declare-fun res!1200562 () Bool)

(assert (=> b!2907164 (=> (not res!1200562) (not e!1835143))))

(declare-fun dynLambda!14345 (Int Regex!8907) Bool)

(assert (=> b!2907164 (= res!1200562 (dynLambda!14345 lambda!107703 (h!40019 (exprs!3235 setElem!25775))))))

(declare-fun b!2907165 () Bool)

(assert (=> b!2907165 (= e!1835143 (forall!7108 (t!233766 (exprs!3235 setElem!25775)) lambda!107703))))

(assert (= (and d!836319 (not res!1200561)) b!2907164))

(assert (= (and b!2907164 res!1200562) b!2907165))

(declare-fun b_lambda!86327 () Bool)

(assert (=> (not b_lambda!86327) (not b!2907164)))

(declare-fun m!3308895 () Bool)

(assert (=> b!2907164 m!3308895))

(declare-fun m!3308897 () Bool)

(assert (=> b!2907165 m!3308897))

(assert (=> d!836305 d!836319))

(declare-fun d!836321 () Bool)

(assert (=> d!836321 (= (isEmpty!18886 (getLanguageWitness!575 z!929)) (not ((_ is Some!6540) (getLanguageWitness!575 z!929))))))

(assert (=> d!836301 d!836321))

(declare-fun bs!524118 () Bool)

(declare-fun d!836323 () Bool)

(assert (= bs!524118 (and d!836323 d!836301)))

(declare-fun lambda!107726 () Int)

(assert (=> bs!524118 (not (= lambda!107726 lambda!107698))))

(declare-fun bs!524119 () Bool)

(assert (= bs!524119 (and d!836323 b!2907113)))

(assert (=> bs!524119 (= lambda!107726 lambda!107699)))

(declare-fun bs!524120 () Bool)

(assert (= bs!524120 (and d!836323 b!2907114)))

(assert (=> bs!524120 (= lambda!107726 lambda!107700)))

(declare-fun bs!524121 () Bool)

(assert (= bs!524121 (and d!836323 d!836315)))

(assert (=> bs!524121 (not (= lambda!107726 lambda!107709))))

(declare-fun lt!1022688 () Option!6541)

(declare-fun isDefined!5103 (Option!6541) Bool)

(declare-fun exists!1206 ((InoxSet Context!5470) Int) Bool)

(assert (=> d!836323 (= (isDefined!5103 lt!1022688) (exists!1206 z!929 lambda!107726))))

(declare-fun e!1835152 () Option!6541)

(assert (=> d!836323 (= lt!1022688 e!1835152)))

(declare-fun c!473766 () Bool)

(assert (=> d!836323 (= c!473766 (exists!1206 z!929 lambda!107726))))

(assert (=> d!836323 (= (getLanguageWitness!575 z!929) lt!1022688)))

(declare-fun b!2907174 () Bool)

(declare-fun getLanguageWitness!577 (Context!5470) Option!6541)

(declare-fun getWitness!624 ((InoxSet Context!5470) Int) Context!5470)

(assert (=> b!2907174 (= e!1835152 (getLanguageWitness!577 (getWitness!624 z!929 lambda!107726)))))

(declare-fun b!2907175 () Bool)

(assert (=> b!2907175 (= e!1835152 None!6540)))

(assert (= (and d!836323 c!473766) b!2907174))

(assert (= (and d!836323 (not c!473766)) b!2907175))

(declare-fun m!3308899 () Bool)

(assert (=> d!836323 m!3308899))

(declare-fun m!3308901 () Bool)

(assert (=> d!836323 m!3308901))

(assert (=> d!836323 m!3308901))

(declare-fun m!3308903 () Bool)

(assert (=> b!2907174 m!3308903))

(assert (=> b!2907174 m!3308903))

(declare-fun m!3308905 () Bool)

(assert (=> b!2907174 m!3308905))

(assert (=> d!836301 d!836323))

(declare-fun d!836325 () Bool)

(declare-fun lt!1022699 () Bool)

(assert (=> d!836325 (= lt!1022699 (forall!7111 (toList!2031 z!929) lambda!107698))))

(declare-fun choose!17090 ((InoxSet Context!5470) Int) Bool)

(assert (=> d!836325 (= lt!1022699 (choose!17090 z!929 lambda!107698))))

(assert (=> d!836325 (= (forall!7107 z!929 lambda!107698) lt!1022699)))

(declare-fun bs!524122 () Bool)

(assert (= bs!524122 d!836325))

(assert (=> bs!524122 m!3308843))

(assert (=> bs!524122 m!3308843))

(declare-fun m!3308907 () Bool)

(assert (=> bs!524122 m!3308907))

(declare-fun m!3308909 () Bool)

(assert (=> bs!524122 m!3308909))

(assert (=> d!836301 d!836325))

(assert (=> b!2907119 d!836301))

(declare-fun d!836327 () Bool)

(declare-fun c!473770 () Bool)

(assert (=> d!836327 (= c!473770 (isEmpty!18887 (tail!4661 prefix!909)))))

(declare-fun e!1835154 () Bool)

(assert (=> d!836327 (= (prefixMatchZipper!351 (derivationStepZipper!498 z!929 (head!6430 prefix!909)) (tail!4661 prefix!909)) e!1835154)))

(declare-fun b!2907178 () Bool)

(assert (=> b!2907178 (= e!1835154 (not (lostCauseZipper!600 (derivationStepZipper!498 z!929 (head!6430 prefix!909)))))))

(declare-fun b!2907179 () Bool)

(assert (=> b!2907179 (= e!1835154 (prefixMatchZipper!351 (derivationStepZipper!498 (derivationStepZipper!498 z!929 (head!6430 prefix!909)) (head!6430 (tail!4661 prefix!909))) (tail!4661 (tail!4661 prefix!909))))))

(assert (= (and d!836327 c!473770) b!2907178))

(assert (= (and d!836327 (not c!473770)) b!2907179))

(assert (=> d!836327 m!3308831))

(declare-fun m!3308911 () Bool)

(assert (=> d!836327 m!3308911))

(assert (=> b!2907178 m!3308857))

(declare-fun m!3308913 () Bool)

(assert (=> b!2907178 m!3308913))

(assert (=> b!2907179 m!3308831))

(declare-fun m!3308915 () Bool)

(assert (=> b!2907179 m!3308915))

(assert (=> b!2907179 m!3308857))

(assert (=> b!2907179 m!3308915))

(declare-fun m!3308917 () Bool)

(assert (=> b!2907179 m!3308917))

(assert (=> b!2907179 m!3308831))

(declare-fun m!3308919 () Bool)

(assert (=> b!2907179 m!3308919))

(assert (=> b!2907179 m!3308917))

(assert (=> b!2907179 m!3308919))

(declare-fun m!3308921 () Bool)

(assert (=> b!2907179 m!3308921))

(assert (=> b!2907120 d!836327))

(declare-fun d!836329 () Bool)

(assert (=> d!836329 true))

(declare-fun lambda!107734 () Int)

(declare-fun flatMap!236 ((InoxSet Context!5470) Int) (InoxSet Context!5470))

(assert (=> d!836329 (= (derivationStepZipper!498 z!929 (head!6430 prefix!909)) (flatMap!236 z!929 lambda!107734))))

(declare-fun bs!524126 () Bool)

(assert (= bs!524126 d!836329))

(declare-fun m!3308937 () Bool)

(assert (=> bs!524126 m!3308937))

(assert (=> b!2907120 d!836329))

(declare-fun d!836331 () Bool)

(assert (=> d!836331 (= (head!6430 prefix!909) (h!40020 prefix!909))))

(assert (=> b!2907120 d!836331))

(declare-fun d!836333 () Bool)

(assert (=> d!836333 (= (tail!4661 prefix!909) (t!233767 prefix!909))))

(assert (=> b!2907120 d!836333))

(declare-fun b!2907199 () Bool)

(declare-fun res!1200566 () Bool)

(declare-fun e!1835167 () Bool)

(assert (=> b!2907199 (=> (not res!1200566) (not e!1835167))))

(assert (=> b!2907199 (= res!1200566 (= (head!6430 (tail!4661 prefix!909)) (head!6430 (tail!4661 s!2253))))))

(declare-fun d!836335 () Bool)

(declare-fun e!1835165 () Bool)

(assert (=> d!836335 e!1835165))

(declare-fun res!1200563 () Bool)

(assert (=> d!836335 (=> res!1200563 e!1835165)))

(declare-fun lt!1022700 () Bool)

(assert (=> d!836335 (= res!1200563 (not lt!1022700))))

(declare-fun e!1835166 () Bool)

(assert (=> d!836335 (= lt!1022700 e!1835166)))

(declare-fun res!1200565 () Bool)

(assert (=> d!836335 (=> res!1200565 e!1835166)))

(assert (=> d!836335 (= res!1200565 ((_ is Nil!34600) (tail!4661 prefix!909)))))

(assert (=> d!836335 (= (isPrefix!2744 (tail!4661 prefix!909) (tail!4661 s!2253)) lt!1022700)))

(declare-fun b!2907200 () Bool)

(assert (=> b!2907200 (= e!1835167 (isPrefix!2744 (tail!4661 (tail!4661 prefix!909)) (tail!4661 (tail!4661 s!2253))))))

(declare-fun b!2907198 () Bool)

(assert (=> b!2907198 (= e!1835166 e!1835167)))

(declare-fun res!1200564 () Bool)

(assert (=> b!2907198 (=> (not res!1200564) (not e!1835167))))

(assert (=> b!2907198 (= res!1200564 (not ((_ is Nil!34600) (tail!4661 s!2253))))))

(declare-fun b!2907201 () Bool)

(assert (=> b!2907201 (= e!1835165 (>= (size!26379 (tail!4661 s!2253)) (size!26379 (tail!4661 prefix!909))))))

(assert (= (and d!836335 (not res!1200565)) b!2907198))

(assert (= (and b!2907198 res!1200564) b!2907199))

(assert (= (and b!2907199 res!1200566) b!2907200))

(assert (= (and d!836335 (not res!1200563)) b!2907201))

(assert (=> b!2907199 m!3308831))

(assert (=> b!2907199 m!3308915))

(assert (=> b!2907199 m!3308833))

(declare-fun m!3308941 () Bool)

(assert (=> b!2907199 m!3308941))

(assert (=> b!2907200 m!3308831))

(assert (=> b!2907200 m!3308919))

(assert (=> b!2907200 m!3308833))

(declare-fun m!3308943 () Bool)

(assert (=> b!2907200 m!3308943))

(assert (=> b!2907200 m!3308919))

(assert (=> b!2907200 m!3308943))

(declare-fun m!3308945 () Bool)

(assert (=> b!2907200 m!3308945))

(assert (=> b!2907201 m!3308833))

(declare-fun m!3308947 () Bool)

(assert (=> b!2907201 m!3308947))

(assert (=> b!2907201 m!3308831))

(declare-fun m!3308949 () Bool)

(assert (=> b!2907201 m!3308949))

(assert (=> b!2907107 d!836335))

(assert (=> b!2907107 d!836333))

(declare-fun d!836337 () Bool)

(assert (=> d!836337 (= (tail!4661 s!2253) (t!233767 s!2253))))

(assert (=> b!2907107 d!836337))

(assert (=> b!2907106 d!836331))

(declare-fun d!836339 () Bool)

(assert (=> d!836339 (= (head!6430 s!2253) (h!40020 s!2253))))

(assert (=> b!2907106 d!836339))

(declare-fun bs!524127 () Bool)

(declare-fun d!836341 () Bool)

(assert (= bs!524127 (and d!836341 d!836305)))

(declare-fun lambda!107735 () Int)

(assert (=> bs!524127 (= lambda!107735 lambda!107703)))

(assert (=> d!836341 (= (inv!46722 setElem!25778) (forall!7108 (exprs!3235 setElem!25778) lambda!107735))))

(declare-fun bs!524128 () Bool)

(assert (= bs!524128 d!836341))

(declare-fun m!3308951 () Bool)

(assert (=> bs!524128 m!3308951))

(assert (=> setNonEmpty!25778 d!836341))

(declare-fun bs!524129 () Bool)

(declare-fun d!836343 () Bool)

(assert (= bs!524129 (and d!836343 b!2907114)))

(declare-fun lambda!107738 () Int)

(assert (=> bs!524129 (not (= lambda!107738 lambda!107700))))

(declare-fun bs!524130 () Bool)

(assert (= bs!524130 (and d!836343 d!836315)))

(assert (=> bs!524130 (= (= lambda!107698 (ite c!473743 lambda!107699 lambda!107700)) (= lambda!107738 lambda!107709))))

(declare-fun bs!524131 () Bool)

(assert (= bs!524131 (and d!836343 b!2907113)))

(assert (=> bs!524131 (not (= lambda!107738 lambda!107699))))

(declare-fun bs!524132 () Bool)

(assert (= bs!524132 (and d!836343 d!836301)))

(assert (=> bs!524132 (not (= lambda!107738 lambda!107698))))

(declare-fun bs!524133 () Bool)

(assert (= bs!524133 (and d!836343 d!836323)))

(assert (=> bs!524133 (not (= lambda!107738 lambda!107726))))

(assert (=> d!836343 true))

(assert (=> d!836343 (< (dynLambda!14344 order!18163 lambda!107698) (dynLambda!14344 order!18163 lambda!107738))))

(assert (=> d!836343 (exists!1204 lt!1022663 lambda!107738)))

(declare-fun lt!1022703 () Unit!48145)

(declare-fun choose!17091 (List!34725 Int) Unit!48145)

(assert (=> d!836343 (= lt!1022703 (choose!17091 lt!1022663 lambda!107698))))

(assert (=> d!836343 (not (forall!7111 lt!1022663 lambda!107698))))

(assert (=> d!836343 (= (lemmaNotForallThenExists!158 lt!1022663 lambda!107698) lt!1022703)))

(declare-fun bs!524134 () Bool)

(assert (= bs!524134 d!836343))

(declare-fun m!3308953 () Bool)

(assert (=> bs!524134 m!3308953))

(declare-fun m!3308955 () Bool)

(assert (=> bs!524134 m!3308955))

(declare-fun m!3308957 () Bool)

(assert (=> bs!524134 m!3308957))

(assert (=> b!2907113 d!836343))

(declare-fun bs!524135 () Bool)

(declare-fun d!836345 () Bool)

(assert (= bs!524135 (and d!836345 b!2907114)))

(declare-fun lambda!107741 () Int)

(assert (=> bs!524135 (not (= lambda!107741 lambda!107700))))

(declare-fun bs!524136 () Bool)

(assert (= bs!524136 (and d!836345 d!836343)))

(assert (=> bs!524136 (= lambda!107741 lambda!107738)))

(declare-fun bs!524137 () Bool)

(assert (= bs!524137 (and d!836345 d!836315)))

(assert (=> bs!524137 (= (= lambda!107698 (ite c!473743 lambda!107699 lambda!107700)) (= lambda!107741 lambda!107709))))

(declare-fun bs!524138 () Bool)

(assert (= bs!524138 (and d!836345 b!2907113)))

(assert (=> bs!524138 (not (= lambda!107741 lambda!107699))))

(declare-fun bs!524139 () Bool)

(assert (= bs!524139 (and d!836345 d!836301)))

(assert (=> bs!524139 (not (= lambda!107741 lambda!107698))))

(declare-fun bs!524140 () Bool)

(assert (= bs!524140 (and d!836345 d!836323)))

(assert (=> bs!524140 (not (= lambda!107741 lambda!107726))))

(assert (=> d!836345 true))

(assert (=> d!836345 (< (dynLambda!14344 order!18163 lambda!107698) (dynLambda!14344 order!18163 lambda!107741))))

(assert (=> d!836345 (not (exists!1204 lt!1022662 lambda!107741))))

(declare-fun lt!1022706 () Unit!48145)

(declare-fun choose!17092 (List!34725 Int) Unit!48145)

(assert (=> d!836345 (= lt!1022706 (choose!17092 lt!1022662 lambda!107698))))

(assert (=> d!836345 (forall!7111 lt!1022662 lambda!107698)))

(assert (=> d!836345 (= (lemmaForallThenNotExists!141 lt!1022662 lambda!107698) lt!1022706)))

(declare-fun bs!524141 () Bool)

(assert (= bs!524141 d!836345))

(declare-fun m!3308959 () Bool)

(assert (=> bs!524141 m!3308959))

(declare-fun m!3308961 () Bool)

(assert (=> bs!524141 m!3308961))

(declare-fun m!3308963 () Bool)

(assert (=> bs!524141 m!3308963))

(assert (=> b!2907114 d!836345))

(declare-fun d!836347 () Bool)

(declare-fun lt!1022709 () Int)

(assert (=> d!836347 (>= lt!1022709 0)))

(declare-fun e!1835174 () Int)

(assert (=> d!836347 (= lt!1022709 e!1835174)))

(declare-fun c!473775 () Bool)

(assert (=> d!836347 (= c!473775 ((_ is Nil!34600) s!2253))))

(assert (=> d!836347 (= (size!26379 s!2253) lt!1022709)))

(declare-fun b!2907206 () Bool)

(assert (=> b!2907206 (= e!1835174 0)))

(declare-fun b!2907207 () Bool)

(assert (=> b!2907207 (= e!1835174 (+ 1 (size!26379 (t!233767 s!2253))))))

(assert (= (and d!836347 c!473775) b!2907206))

(assert (= (and d!836347 (not c!473775)) b!2907207))

(declare-fun m!3308965 () Bool)

(assert (=> b!2907207 m!3308965))

(assert (=> b!2907108 d!836347))

(declare-fun d!836349 () Bool)

(declare-fun lt!1022710 () Int)

(assert (=> d!836349 (>= lt!1022710 0)))

(declare-fun e!1835175 () Int)

(assert (=> d!836349 (= lt!1022710 e!1835175)))

(declare-fun c!473776 () Bool)

(assert (=> d!836349 (= c!473776 ((_ is Nil!34600) prefix!909))))

(assert (=> d!836349 (= (size!26379 prefix!909) lt!1022710)))

(declare-fun b!2907208 () Bool)

(assert (=> b!2907208 (= e!1835175 0)))

(declare-fun b!2907209 () Bool)

(assert (=> b!2907209 (= e!1835175 (+ 1 (size!26379 (t!233767 prefix!909))))))

(assert (= (and d!836349 c!473776) b!2907208))

(assert (= (and d!836349 (not c!473776)) b!2907209))

(declare-fun m!3308967 () Bool)

(assert (=> b!2907209 m!3308967))

(assert (=> b!2907108 d!836349))

(declare-fun b!2907210 () Bool)

(declare-fun e!1835176 () Bool)

(declare-fun tp!933856 () Bool)

(declare-fun tp!933857 () Bool)

(assert (=> b!2907210 (= e!1835176 (and tp!933856 tp!933857))))

(assert (=> b!2907130 (= tp!933831 e!1835176)))

(assert (= (and b!2907130 ((_ is Cons!34599) (exprs!3235 setElem!25778))) b!2907210))

(declare-fun b!2907211 () Bool)

(declare-fun e!1835177 () Bool)

(declare-fun tp!933858 () Bool)

(assert (=> b!2907211 (= e!1835177 (and tp_is_empty!15401 tp!933858))))

(assert (=> b!2907131 (= tp!933833 e!1835177)))

(assert (= (and b!2907131 ((_ is Cons!34600) (t!233767 (t!233767 prefix!909)))) b!2907211))

(declare-fun condSetEmpty!25782 () Bool)

(assert (=> setNonEmpty!25778 (= condSetEmpty!25782 (= setRest!25778 ((as const (Array Context!5470 Bool)) false)))))

(declare-fun setRes!25782 () Bool)

(assert (=> setNonEmpty!25778 (= tp!933832 setRes!25782)))

(declare-fun setIsEmpty!25782 () Bool)

(assert (=> setIsEmpty!25782 setRes!25782))

(declare-fun e!1835178 () Bool)

(declare-fun setNonEmpty!25782 () Bool)

(declare-fun setElem!25782 () Context!5470)

(declare-fun tp!933860 () Bool)

(assert (=> setNonEmpty!25782 (= setRes!25782 (and tp!933860 (inv!46722 setElem!25782) e!1835178))))

(declare-fun setRest!25782 () (InoxSet Context!5470))

(assert (=> setNonEmpty!25782 (= setRest!25778 ((_ map or) (store ((as const (Array Context!5470 Bool)) false) setElem!25782 true) setRest!25782))))

(declare-fun b!2907212 () Bool)

(declare-fun tp!933859 () Bool)

(assert (=> b!2907212 (= e!1835178 tp!933859)))

(assert (= (and setNonEmpty!25778 condSetEmpty!25782) setIsEmpty!25782))

(assert (= (and setNonEmpty!25778 (not condSetEmpty!25782)) setNonEmpty!25782))

(assert (= setNonEmpty!25782 b!2907212))

(declare-fun m!3308969 () Bool)

(assert (=> setNonEmpty!25782 m!3308969))

(declare-fun b!2907213 () Bool)

(declare-fun e!1835179 () Bool)

(declare-fun tp!933861 () Bool)

(assert (=> b!2907213 (= e!1835179 (and tp_is_empty!15401 tp!933861))))

(assert (=> b!2907125 (= tp!933826 e!1835179)))

(assert (= (and b!2907125 ((_ is Cons!34600) (t!233767 (t!233767 s!2253)))) b!2907213))

(declare-fun b!2907225 () Bool)

(declare-fun e!1835182 () Bool)

(declare-fun tp!933873 () Bool)

(declare-fun tp!933875 () Bool)

(assert (=> b!2907225 (= e!1835182 (and tp!933873 tp!933875))))

(declare-fun b!2907227 () Bool)

(declare-fun tp!933872 () Bool)

(declare-fun tp!933876 () Bool)

(assert (=> b!2907227 (= e!1835182 (and tp!933872 tp!933876))))

(assert (=> b!2907136 (= tp!933838 e!1835182)))

(declare-fun b!2907224 () Bool)

(assert (=> b!2907224 (= e!1835182 tp_is_empty!15401)))

(declare-fun b!2907226 () Bool)

(declare-fun tp!933874 () Bool)

(assert (=> b!2907226 (= e!1835182 tp!933874)))

(assert (= (and b!2907136 ((_ is ElementMatch!8907) (h!40019 (exprs!3235 setElem!25775)))) b!2907224))

(assert (= (and b!2907136 ((_ is Concat!14228) (h!40019 (exprs!3235 setElem!25775)))) b!2907225))

(assert (= (and b!2907136 ((_ is Star!8907) (h!40019 (exprs!3235 setElem!25775)))) b!2907226))

(assert (= (and b!2907136 ((_ is Union!8907) (h!40019 (exprs!3235 setElem!25775)))) b!2907227))

(declare-fun b!2907228 () Bool)

(declare-fun e!1835183 () Bool)

(declare-fun tp!933877 () Bool)

(declare-fun tp!933878 () Bool)

(assert (=> b!2907228 (= e!1835183 (and tp!933877 tp!933878))))

(assert (=> b!2907136 (= tp!933839 e!1835183)))

(assert (= (and b!2907136 ((_ is Cons!34599) (t!233766 (exprs!3235 setElem!25775)))) b!2907228))

(declare-fun b_lambda!86329 () Bool)

(assert (= b_lambda!86327 (or d!836305 b_lambda!86329)))

(declare-fun bs!524142 () Bool)

(declare-fun d!836351 () Bool)

(assert (= bs!524142 (and d!836351 d!836305)))

(declare-fun validRegex!3665 (Regex!8907) Bool)

(assert (=> bs!524142 (= (dynLambda!14345 lambda!107703 (h!40019 (exprs!3235 setElem!25775))) (validRegex!3665 (h!40019 (exprs!3235 setElem!25775))))))

(declare-fun m!3308971 () Bool)

(assert (=> bs!524142 m!3308971))

(assert (=> b!2907164 d!836351))

(check-sat (not b_lambda!86329) (not d!836325) (not d!836323) (not d!836329) (not b!2907213) (not b!2907228) (not d!836345) (not b!2907151) (not d!836341) (not b!2907165) (not b!2907227) (not d!836327) (not bs!524142) (not b!2907178) (not b!2907211) (not b!2907207) tp_is_empty!15401 (not d!836343) (not b!2907199) (not d!836315) (not b!2907226) (not b!2907179) (not b!2907210) (not b!2907174) (not b!2907225) (not b!2907212) (not b!2907200) (not d!836311) (not setNonEmpty!25782) (not b!2907201) (not b!2907209))
(check-sat)
