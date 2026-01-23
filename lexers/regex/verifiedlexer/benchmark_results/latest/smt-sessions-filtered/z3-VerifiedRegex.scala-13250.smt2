; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720942 () Bool)

(assert start!720942)

(declare-fun b!7397791 () Bool)

(declare-fun e!4426141 () Bool)

(declare-fun tp!2111259 () Bool)

(assert (=> b!7397791 (= e!4426141 tp!2111259)))

(declare-fun setNonEmpty!56018 () Bool)

(declare-fun setRes!56018 () Bool)

(declare-fun e!4426142 () Bool)

(declare-fun tp!2111261 () Bool)

(declare-datatypes ((C!39024 0))(
  ( (C!39025 (val!29886 Int)) )
))
(declare-datatypes ((Regex!19375 0))(
  ( (ElementMatch!19375 (c!1373981 C!39024)) (Concat!28220 (regOne!39262 Regex!19375) (regTwo!39262 Regex!19375)) (EmptyExpr!19375) (Star!19375 (reg!19704 Regex!19375)) (EmptyLang!19375) (Union!19375 (regOne!39263 Regex!19375) (regTwo!39263 Regex!19375)) )
))
(declare-datatypes ((List!71924 0))(
  ( (Nil!71800) (Cons!71800 (h!78248 Regex!19375) (t!386481 List!71924)) )
))
(declare-datatypes ((Context!16630 0))(
  ( (Context!16631 (exprs!8815 List!71924)) )
))
(declare-fun setElem!56018 () Context!16630)

(declare-fun inv!91798 (Context!16630) Bool)

(assert (=> setNonEmpty!56018 (= setRes!56018 (and tp!2111261 (inv!91798 setElem!56018) e!4426142))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16630))

(declare-fun setRest!56018 () (InoxSet Context!16630))

(assert (=> setNonEmpty!56018 (= z!3451 ((_ map or) (store ((as const (Array Context!16630 Bool)) false) setElem!56018 true) setRest!56018))))

(declare-fun b!7397792 () Bool)

(declare-fun res!2980604 () Bool)

(declare-fun e!4426139 () Bool)

(assert (=> b!7397792 (=> (not res!2980604) (not e!4426139))))

(declare-fun c!10532 () Context!16630)

(declare-fun a!2228 () C!39024)

(declare-fun head!15135 (List!71924) Regex!19375)

(assert (=> b!7397792 (= res!2980604 (= (head!15135 (exprs!8815 c!10532)) (ElementMatch!19375 a!2228)))))

(declare-fun b!7397793 () Bool)

(declare-fun res!2980601 () Bool)

(assert (=> b!7397793 (=> (not res!2980601) (not e!4426139))))

(declare-datatypes ((List!71925 0))(
  ( (Nil!71801) (Cons!71801 (h!78249 C!39024) (t!386482 List!71925)) )
))
(declare-fun s!7927 () List!71925)

(get-info :version)

(assert (=> b!7397793 (= res!2980601 (and (or (not ((_ is Cons!71801) s!7927)) (not (= (h!78249 s!7927) a!2228))) ((_ is Cons!71801) s!7927) (not (= (h!78249 s!7927) a!2228))))))

(declare-fun b!7397794 () Bool)

(declare-fun e!4426140 () Bool)

(declare-fun tp_is_empty!49013 () Bool)

(declare-fun tp!2111260 () Bool)

(assert (=> b!7397794 (= e!4426140 (and tp_is_empty!49013 tp!2111260))))

(declare-fun b!7397795 () Bool)

(declare-fun res!2980602 () Bool)

(assert (=> b!7397795 (=> (not res!2980602) (not e!4426139))))

(declare-fun isEmpty!41015 (List!71924) Bool)

(assert (=> b!7397795 (= res!2980602 (not (isEmpty!41015 (exprs!8815 c!10532))))))

(declare-fun b!7397796 () Bool)

(declare-fun tp!2111258 () Bool)

(assert (=> b!7397796 (= e!4426142 tp!2111258)))

(declare-fun res!2980600 () Bool)

(assert (=> start!720942 (=> (not res!2980600) (not e!4426139))))

(assert (=> start!720942 (= res!2980600 (= z!3451 (store ((as const (Array Context!16630 Bool)) false) c!10532 true)))))

(assert (=> start!720942 e!4426139))

(declare-fun condSetEmpty!56018 () Bool)

(assert (=> start!720942 (= condSetEmpty!56018 (= z!3451 ((as const (Array Context!16630 Bool)) false)))))

(assert (=> start!720942 setRes!56018))

(assert (=> start!720942 (and (inv!91798 c!10532) e!4426141)))

(assert (=> start!720942 tp_is_empty!49013))

(assert (=> start!720942 e!4426140))

(declare-fun setIsEmpty!56018 () Bool)

(assert (=> setIsEmpty!56018 setRes!56018))

(declare-fun b!7397797 () Bool)

(declare-fun res!2980603 () Bool)

(assert (=> b!7397797 (=> (not res!2980603) (not e!4426139))))

(declare-fun tail!14782 (List!71924) List!71924)

(assert (=> b!7397797 (= res!2980603 (isEmpty!41015 (tail!14782 (exprs!8815 c!10532))))))

(declare-fun b!7397798 () Bool)

(declare-fun derivationStepZipperUp!2781 (Context!16630 C!39024) (InoxSet Context!16630))

(assert (=> b!7397798 (= e!4426139 (not (= (derivationStepZipperUp!2781 c!10532 (h!78249 s!7927)) ((as const (Array Context!16630 Bool)) false))))))

(assert (= (and start!720942 res!2980600) b!7397795))

(assert (= (and b!7397795 res!2980602) b!7397792))

(assert (= (and b!7397792 res!2980604) b!7397797))

(assert (= (and b!7397797 res!2980603) b!7397793))

(assert (= (and b!7397793 res!2980601) b!7397798))

(assert (= (and start!720942 condSetEmpty!56018) setIsEmpty!56018))

(assert (= (and start!720942 (not condSetEmpty!56018)) setNonEmpty!56018))

(assert (= setNonEmpty!56018 b!7397796))

(assert (= start!720942 b!7397791))

(assert (= (and start!720942 ((_ is Cons!71801) s!7927)) b!7397794))

(declare-fun m!8039036 () Bool)

(assert (=> b!7397798 m!8039036))

(declare-fun m!8039038 () Bool)

(assert (=> setNonEmpty!56018 m!8039038))

(declare-fun m!8039040 () Bool)

(assert (=> b!7397797 m!8039040))

(assert (=> b!7397797 m!8039040))

(declare-fun m!8039042 () Bool)

(assert (=> b!7397797 m!8039042))

(declare-fun m!8039044 () Bool)

(assert (=> start!720942 m!8039044))

(declare-fun m!8039046 () Bool)

(assert (=> start!720942 m!8039046))

(declare-fun m!8039048 () Bool)

(assert (=> b!7397795 m!8039048))

(declare-fun m!8039050 () Bool)

(assert (=> b!7397792 m!8039050))

(check-sat (not b!7397795) (not b!7397798) (not b!7397797) (not start!720942) tp_is_empty!49013 (not b!7397796) (not b!7397792) (not b!7397794) (not setNonEmpty!56018) (not b!7397791))
(check-sat)
(get-model)

(declare-fun d!2288889 () Bool)

(assert (=> d!2288889 (= (head!15135 (exprs!8815 c!10532)) (h!78248 (exprs!8815 c!10532)))))

(assert (=> b!7397792 d!2288889))

(declare-fun d!2288893 () Bool)

(declare-fun lambda!459231 () Int)

(declare-fun forall!18162 (List!71924 Int) Bool)

(assert (=> d!2288893 (= (inv!91798 c!10532) (forall!18162 (exprs!8815 c!10532) lambda!459231))))

(declare-fun bs!1923154 () Bool)

(assert (= bs!1923154 d!2288893))

(declare-fun m!8039058 () Bool)

(assert (=> bs!1923154 m!8039058))

(assert (=> start!720942 d!2288893))

(declare-fun bs!1923155 () Bool)

(declare-fun d!2288903 () Bool)

(assert (= bs!1923155 (and d!2288903 d!2288893)))

(declare-fun lambda!459232 () Int)

(assert (=> bs!1923155 (= lambda!459232 lambda!459231)))

(assert (=> d!2288903 (= (inv!91798 setElem!56018) (forall!18162 (exprs!8815 setElem!56018) lambda!459232))))

(declare-fun bs!1923156 () Bool)

(assert (= bs!1923156 d!2288903))

(declare-fun m!8039060 () Bool)

(assert (=> bs!1923156 m!8039060))

(assert (=> setNonEmpty!56018 d!2288903))

(declare-fun d!2288905 () Bool)

(assert (=> d!2288905 (= (isEmpty!41015 (exprs!8815 c!10532)) ((_ is Nil!71800) (exprs!8815 c!10532)))))

(assert (=> b!7397795 d!2288905))

(declare-fun b!7397824 () Bool)

(declare-fun e!4426159 () Bool)

(declare-fun nullable!8427 (Regex!19375) Bool)

(assert (=> b!7397824 (= e!4426159 (nullable!8427 (h!78248 (exprs!8815 c!10532))))))

(declare-fun b!7397825 () Bool)

(declare-fun e!4426160 () (InoxSet Context!16630))

(declare-fun call!681088 () (InoxSet Context!16630))

(assert (=> b!7397825 (= e!4426160 call!681088)))

(declare-fun b!7397826 () Bool)

(declare-fun e!4426158 () (InoxSet Context!16630))

(assert (=> b!7397826 (= e!4426158 ((_ map or) call!681088 (derivationStepZipperUp!2781 (Context!16631 (t!386481 (exprs!8815 c!10532))) (h!78249 s!7927))))))

(declare-fun b!7397827 () Bool)

(assert (=> b!7397827 (= e!4426158 e!4426160)))

(declare-fun c!1373993 () Bool)

(assert (=> b!7397827 (= c!1373993 ((_ is Cons!71800) (exprs!8815 c!10532)))))

(declare-fun b!7397828 () Bool)

(assert (=> b!7397828 (= e!4426160 ((as const (Array Context!16630 Bool)) false))))

(declare-fun d!2288907 () Bool)

(declare-fun c!1373992 () Bool)

(assert (=> d!2288907 (= c!1373992 e!4426159)))

(declare-fun res!2980610 () Bool)

(assert (=> d!2288907 (=> (not res!2980610) (not e!4426159))))

(assert (=> d!2288907 (= res!2980610 ((_ is Cons!71800) (exprs!8815 c!10532)))))

(assert (=> d!2288907 (= (derivationStepZipperUp!2781 c!10532 (h!78249 s!7927)) e!4426158)))

(declare-fun bm!681083 () Bool)

(declare-fun derivationStepZipperDown!3179 (Regex!19375 Context!16630 C!39024) (InoxSet Context!16630))

(assert (=> bm!681083 (= call!681088 (derivationStepZipperDown!3179 (h!78248 (exprs!8815 c!10532)) (Context!16631 (t!386481 (exprs!8815 c!10532))) (h!78249 s!7927)))))

(assert (= (and d!2288907 res!2980610) b!7397824))

(assert (= (and d!2288907 c!1373992) b!7397826))

(assert (= (and d!2288907 (not c!1373992)) b!7397827))

(assert (= (and b!7397827 c!1373993) b!7397825))

(assert (= (and b!7397827 (not c!1373993)) b!7397828))

(assert (= (or b!7397826 b!7397825) bm!681083))

(declare-fun m!8039062 () Bool)

(assert (=> b!7397824 m!8039062))

(declare-fun m!8039064 () Bool)

(assert (=> b!7397826 m!8039064))

(declare-fun m!8039066 () Bool)

(assert (=> bm!681083 m!8039066))

(assert (=> b!7397798 d!2288907))

(declare-fun d!2288909 () Bool)

(assert (=> d!2288909 (= (isEmpty!41015 (tail!14782 (exprs!8815 c!10532))) ((_ is Nil!71800) (tail!14782 (exprs!8815 c!10532))))))

(assert (=> b!7397797 d!2288909))

(declare-fun d!2288911 () Bool)

(assert (=> d!2288911 (= (tail!14782 (exprs!8815 c!10532)) (t!386481 (exprs!8815 c!10532)))))

(assert (=> b!7397797 d!2288911))

(declare-fun b!7397833 () Bool)

(declare-fun e!4426163 () Bool)

(declare-fun tp!2111266 () Bool)

(declare-fun tp!2111267 () Bool)

(assert (=> b!7397833 (= e!4426163 (and tp!2111266 tp!2111267))))

(assert (=> b!7397796 (= tp!2111258 e!4426163)))

(assert (= (and b!7397796 ((_ is Cons!71800) (exprs!8815 setElem!56018))) b!7397833))

(declare-fun condSetEmpty!56021 () Bool)

(assert (=> setNonEmpty!56018 (= condSetEmpty!56021 (= setRest!56018 ((as const (Array Context!16630 Bool)) false)))))

(declare-fun setRes!56021 () Bool)

(assert (=> setNonEmpty!56018 (= tp!2111261 setRes!56021)))

(declare-fun setIsEmpty!56021 () Bool)

(assert (=> setIsEmpty!56021 setRes!56021))

(declare-fun e!4426166 () Bool)

(declare-fun setNonEmpty!56021 () Bool)

(declare-fun tp!2111273 () Bool)

(declare-fun setElem!56021 () Context!16630)

(assert (=> setNonEmpty!56021 (= setRes!56021 (and tp!2111273 (inv!91798 setElem!56021) e!4426166))))

(declare-fun setRest!56021 () (InoxSet Context!16630))

(assert (=> setNonEmpty!56021 (= setRest!56018 ((_ map or) (store ((as const (Array Context!16630 Bool)) false) setElem!56021 true) setRest!56021))))

(declare-fun b!7397838 () Bool)

(declare-fun tp!2111272 () Bool)

(assert (=> b!7397838 (= e!4426166 tp!2111272)))

(assert (= (and setNonEmpty!56018 condSetEmpty!56021) setIsEmpty!56021))

(assert (= (and setNonEmpty!56018 (not condSetEmpty!56021)) setNonEmpty!56021))

(assert (= setNonEmpty!56021 b!7397838))

(declare-fun m!8039068 () Bool)

(assert (=> setNonEmpty!56021 m!8039068))

(declare-fun b!7397839 () Bool)

(declare-fun e!4426167 () Bool)

(declare-fun tp!2111274 () Bool)

(declare-fun tp!2111275 () Bool)

(assert (=> b!7397839 (= e!4426167 (and tp!2111274 tp!2111275))))

(assert (=> b!7397791 (= tp!2111259 e!4426167)))

(assert (= (and b!7397791 ((_ is Cons!71800) (exprs!8815 c!10532))) b!7397839))

(declare-fun b!7397844 () Bool)

(declare-fun e!4426170 () Bool)

(declare-fun tp!2111278 () Bool)

(assert (=> b!7397844 (= e!4426170 (and tp_is_empty!49013 tp!2111278))))

(assert (=> b!7397794 (= tp!2111260 e!4426170)))

(assert (= (and b!7397794 ((_ is Cons!71801) (t!386482 s!7927))) b!7397844))

(check-sat (not b!7397839) (not b!7397838) (not b!7397844) (not d!2288903) (not d!2288893) tp_is_empty!49013 (not b!7397833) (not b!7397824) (not setNonEmpty!56021) (not bm!681083) (not b!7397826))
(check-sat)
(get-model)

(declare-fun d!2288913 () Bool)

(declare-fun res!2980615 () Bool)

(declare-fun e!4426175 () Bool)

(assert (=> d!2288913 (=> res!2980615 e!4426175)))

(assert (=> d!2288913 (= res!2980615 ((_ is Nil!71800) (exprs!8815 setElem!56018)))))

(assert (=> d!2288913 (= (forall!18162 (exprs!8815 setElem!56018) lambda!459232) e!4426175)))

(declare-fun b!7397849 () Bool)

(declare-fun e!4426176 () Bool)

(assert (=> b!7397849 (= e!4426175 e!4426176)))

(declare-fun res!2980616 () Bool)

(assert (=> b!7397849 (=> (not res!2980616) (not e!4426176))))

(declare-fun dynLambda!29595 (Int Regex!19375) Bool)

(assert (=> b!7397849 (= res!2980616 (dynLambda!29595 lambda!459232 (h!78248 (exprs!8815 setElem!56018))))))

(declare-fun b!7397850 () Bool)

(assert (=> b!7397850 (= e!4426176 (forall!18162 (t!386481 (exprs!8815 setElem!56018)) lambda!459232))))

(assert (= (and d!2288913 (not res!2980615)) b!7397849))

(assert (= (and b!7397849 res!2980616) b!7397850))

(declare-fun b_lambda!285739 () Bool)

(assert (=> (not b_lambda!285739) (not b!7397849)))

(declare-fun m!8039070 () Bool)

(assert (=> b!7397849 m!8039070))

(declare-fun m!8039072 () Bool)

(assert (=> b!7397850 m!8039072))

(assert (=> d!2288903 d!2288913))

(declare-fun b!7397851 () Bool)

(declare-fun e!4426178 () Bool)

(assert (=> b!7397851 (= e!4426178 (nullable!8427 (h!78248 (exprs!8815 (Context!16631 (t!386481 (exprs!8815 c!10532)))))))))

(declare-fun b!7397852 () Bool)

(declare-fun e!4426179 () (InoxSet Context!16630))

(declare-fun call!681089 () (InoxSet Context!16630))

(assert (=> b!7397852 (= e!4426179 call!681089)))

(declare-fun b!7397853 () Bool)

(declare-fun e!4426177 () (InoxSet Context!16630))

(assert (=> b!7397853 (= e!4426177 ((_ map or) call!681089 (derivationStepZipperUp!2781 (Context!16631 (t!386481 (exprs!8815 (Context!16631 (t!386481 (exprs!8815 c!10532)))))) (h!78249 s!7927))))))

(declare-fun b!7397854 () Bool)

(assert (=> b!7397854 (= e!4426177 e!4426179)))

(declare-fun c!1373995 () Bool)

(assert (=> b!7397854 (= c!1373995 ((_ is Cons!71800) (exprs!8815 (Context!16631 (t!386481 (exprs!8815 c!10532))))))))

(declare-fun b!7397855 () Bool)

(assert (=> b!7397855 (= e!4426179 ((as const (Array Context!16630 Bool)) false))))

(declare-fun d!2288915 () Bool)

(declare-fun c!1373994 () Bool)

(assert (=> d!2288915 (= c!1373994 e!4426178)))

(declare-fun res!2980617 () Bool)

(assert (=> d!2288915 (=> (not res!2980617) (not e!4426178))))

(assert (=> d!2288915 (= res!2980617 ((_ is Cons!71800) (exprs!8815 (Context!16631 (t!386481 (exprs!8815 c!10532))))))))

(assert (=> d!2288915 (= (derivationStepZipperUp!2781 (Context!16631 (t!386481 (exprs!8815 c!10532))) (h!78249 s!7927)) e!4426177)))

(declare-fun bm!681084 () Bool)

(assert (=> bm!681084 (= call!681089 (derivationStepZipperDown!3179 (h!78248 (exprs!8815 (Context!16631 (t!386481 (exprs!8815 c!10532))))) (Context!16631 (t!386481 (exprs!8815 (Context!16631 (t!386481 (exprs!8815 c!10532)))))) (h!78249 s!7927)))))

(assert (= (and d!2288915 res!2980617) b!7397851))

(assert (= (and d!2288915 c!1373994) b!7397853))

(assert (= (and d!2288915 (not c!1373994)) b!7397854))

(assert (= (and b!7397854 c!1373995) b!7397852))

(assert (= (and b!7397854 (not c!1373995)) b!7397855))

(assert (= (or b!7397853 b!7397852) bm!681084))

(declare-fun m!8039074 () Bool)

(assert (=> b!7397851 m!8039074))

(declare-fun m!8039076 () Bool)

(assert (=> b!7397853 m!8039076))

(declare-fun m!8039078 () Bool)

(assert (=> bm!681084 m!8039078))

(assert (=> b!7397826 d!2288915))

(declare-fun d!2288917 () Bool)

(declare-fun res!2980618 () Bool)

(declare-fun e!4426180 () Bool)

(assert (=> d!2288917 (=> res!2980618 e!4426180)))

(assert (=> d!2288917 (= res!2980618 ((_ is Nil!71800) (exprs!8815 c!10532)))))

(assert (=> d!2288917 (= (forall!18162 (exprs!8815 c!10532) lambda!459231) e!4426180)))

(declare-fun b!7397856 () Bool)

(declare-fun e!4426181 () Bool)

(assert (=> b!7397856 (= e!4426180 e!4426181)))

(declare-fun res!2980619 () Bool)

(assert (=> b!7397856 (=> (not res!2980619) (not e!4426181))))

(assert (=> b!7397856 (= res!2980619 (dynLambda!29595 lambda!459231 (h!78248 (exprs!8815 c!10532))))))

(declare-fun b!7397857 () Bool)

(assert (=> b!7397857 (= e!4426181 (forall!18162 (t!386481 (exprs!8815 c!10532)) lambda!459231))))

(assert (= (and d!2288917 (not res!2980618)) b!7397856))

(assert (= (and b!7397856 res!2980619) b!7397857))

(declare-fun b_lambda!285741 () Bool)

(assert (=> (not b_lambda!285741) (not b!7397856)))

(declare-fun m!8039080 () Bool)

(assert (=> b!7397856 m!8039080))

(declare-fun m!8039082 () Bool)

(assert (=> b!7397857 m!8039082))

(assert (=> d!2288893 d!2288917))

(declare-fun bs!1923157 () Bool)

(declare-fun d!2288919 () Bool)

(assert (= bs!1923157 (and d!2288919 d!2288893)))

(declare-fun lambda!459233 () Int)

(assert (=> bs!1923157 (= lambda!459233 lambda!459231)))

(declare-fun bs!1923158 () Bool)

(assert (= bs!1923158 (and d!2288919 d!2288903)))

(assert (=> bs!1923158 (= lambda!459233 lambda!459232)))

(assert (=> d!2288919 (= (inv!91798 setElem!56021) (forall!18162 (exprs!8815 setElem!56021) lambda!459233))))

(declare-fun bs!1923159 () Bool)

(assert (= bs!1923159 d!2288919))

(declare-fun m!8039084 () Bool)

(assert (=> bs!1923159 m!8039084))

(assert (=> setNonEmpty!56021 d!2288919))

(declare-fun d!2288921 () Bool)

(declare-fun nullableFct!3389 (Regex!19375) Bool)

(assert (=> d!2288921 (= (nullable!8427 (h!78248 (exprs!8815 c!10532))) (nullableFct!3389 (h!78248 (exprs!8815 c!10532))))))

(declare-fun bs!1923160 () Bool)

(assert (= bs!1923160 d!2288921))

(declare-fun m!8039086 () Bool)

(assert (=> bs!1923160 m!8039086))

(assert (=> b!7397824 d!2288921))

(declare-fun d!2288923 () Bool)

(declare-fun c!1374008 () Bool)

(assert (=> d!2288923 (= c!1374008 (and ((_ is ElementMatch!19375) (h!78248 (exprs!8815 c!10532))) (= (c!1373981 (h!78248 (exprs!8815 c!10532))) (h!78249 s!7927))))))

(declare-fun e!4426195 () (InoxSet Context!16630))

(assert (=> d!2288923 (= (derivationStepZipperDown!3179 (h!78248 (exprs!8815 c!10532)) (Context!16631 (t!386481 (exprs!8815 c!10532))) (h!78249 s!7927)) e!4426195)))

(declare-fun call!681102 () List!71924)

(declare-fun call!681104 () (InoxSet Context!16630))

(declare-fun c!1374010 () Bool)

(declare-fun bm!681097 () Bool)

(assert (=> bm!681097 (= call!681104 (derivationStepZipperDown!3179 (ite c!1374010 (regOne!39263 (h!78248 (exprs!8815 c!10532))) (regOne!39262 (h!78248 (exprs!8815 c!10532)))) (ite c!1374010 (Context!16631 (t!386481 (exprs!8815 c!10532))) (Context!16631 call!681102)) (h!78249 s!7927)))))

(declare-fun bm!681098 () Bool)

(declare-fun call!681105 () List!71924)

(assert (=> bm!681098 (= call!681105 call!681102)))

(declare-fun b!7397880 () Bool)

(declare-fun c!1374006 () Bool)

(declare-fun e!4426196 () Bool)

(assert (=> b!7397880 (= c!1374006 e!4426196)))

(declare-fun res!2980622 () Bool)

(assert (=> b!7397880 (=> (not res!2980622) (not e!4426196))))

(assert (=> b!7397880 (= res!2980622 ((_ is Concat!28220) (h!78248 (exprs!8815 c!10532))))))

(declare-fun e!4426194 () (InoxSet Context!16630))

(declare-fun e!4426197 () (InoxSet Context!16630))

(assert (=> b!7397880 (= e!4426194 e!4426197)))

(declare-fun bm!681099 () Bool)

(declare-fun call!681103 () (InoxSet Context!16630))

(declare-fun call!681106 () (InoxSet Context!16630))

(assert (=> bm!681099 (= call!681103 call!681106)))

(declare-fun b!7397881 () Bool)

(declare-fun e!4426198 () (InoxSet Context!16630))

(assert (=> b!7397881 (= e!4426197 e!4426198)))

(declare-fun c!1374007 () Bool)

(assert (=> b!7397881 (= c!1374007 ((_ is Concat!28220) (h!78248 (exprs!8815 c!10532))))))

(declare-fun b!7397882 () Bool)

(declare-fun call!681107 () (InoxSet Context!16630))

(assert (=> b!7397882 (= e!4426194 ((_ map or) call!681104 call!681107))))

(declare-fun bm!681100 () Bool)

(assert (=> bm!681100 (= call!681106 call!681107)))

(declare-fun b!7397883 () Bool)

(assert (=> b!7397883 (= e!4426198 call!681103)))

(declare-fun b!7397884 () Bool)

(assert (=> b!7397884 (= e!4426195 e!4426194)))

(assert (=> b!7397884 (= c!1374010 ((_ is Union!19375) (h!78248 (exprs!8815 c!10532))))))

(declare-fun b!7397885 () Bool)

(declare-fun c!1374009 () Bool)

(assert (=> b!7397885 (= c!1374009 ((_ is Star!19375) (h!78248 (exprs!8815 c!10532))))))

(declare-fun e!4426199 () (InoxSet Context!16630))

(assert (=> b!7397885 (= e!4426198 e!4426199)))

(declare-fun bm!681101 () Bool)

(declare-fun $colon$colon!3327 (List!71924 Regex!19375) List!71924)

(assert (=> bm!681101 (= call!681102 ($colon$colon!3327 (exprs!8815 (Context!16631 (t!386481 (exprs!8815 c!10532)))) (ite (or c!1374006 c!1374007) (regTwo!39262 (h!78248 (exprs!8815 c!10532))) (h!78248 (exprs!8815 c!10532)))))))

(declare-fun b!7397886 () Bool)

(assert (=> b!7397886 (= e!4426197 ((_ map or) call!681104 call!681106))))

(declare-fun b!7397887 () Bool)

(assert (=> b!7397887 (= e!4426199 call!681103)))

(declare-fun b!7397888 () Bool)

(assert (=> b!7397888 (= e!4426196 (nullable!8427 (regOne!39262 (h!78248 (exprs!8815 c!10532)))))))

(declare-fun b!7397889 () Bool)

(assert (=> b!7397889 (= e!4426195 (store ((as const (Array Context!16630 Bool)) false) (Context!16631 (t!386481 (exprs!8815 c!10532))) true))))

(declare-fun bm!681102 () Bool)

(assert (=> bm!681102 (= call!681107 (derivationStepZipperDown!3179 (ite c!1374010 (regTwo!39263 (h!78248 (exprs!8815 c!10532))) (ite c!1374006 (regTwo!39262 (h!78248 (exprs!8815 c!10532))) (ite c!1374007 (regOne!39262 (h!78248 (exprs!8815 c!10532))) (reg!19704 (h!78248 (exprs!8815 c!10532)))))) (ite (or c!1374010 c!1374006) (Context!16631 (t!386481 (exprs!8815 c!10532))) (Context!16631 call!681105)) (h!78249 s!7927)))))

(declare-fun b!7397890 () Bool)

(assert (=> b!7397890 (= e!4426199 ((as const (Array Context!16630 Bool)) false))))

(assert (= (and d!2288923 c!1374008) b!7397889))

(assert (= (and d!2288923 (not c!1374008)) b!7397884))

(assert (= (and b!7397884 c!1374010) b!7397882))

(assert (= (and b!7397884 (not c!1374010)) b!7397880))

(assert (= (and b!7397880 res!2980622) b!7397888))

(assert (= (and b!7397880 c!1374006) b!7397886))

(assert (= (and b!7397880 (not c!1374006)) b!7397881))

(assert (= (and b!7397881 c!1374007) b!7397883))

(assert (= (and b!7397881 (not c!1374007)) b!7397885))

(assert (= (and b!7397885 c!1374009) b!7397887))

(assert (= (and b!7397885 (not c!1374009)) b!7397890))

(assert (= (or b!7397883 b!7397887) bm!681098))

(assert (= (or b!7397883 b!7397887) bm!681099))

(assert (= (or b!7397886 bm!681098) bm!681101))

(assert (= (or b!7397886 bm!681099) bm!681100))

(assert (= (or b!7397882 b!7397886) bm!681097))

(assert (= (or b!7397882 bm!681100) bm!681102))

(declare-fun m!8039088 () Bool)

(assert (=> b!7397888 m!8039088))

(declare-fun m!8039090 () Bool)

(assert (=> bm!681097 m!8039090))

(declare-fun m!8039092 () Bool)

(assert (=> bm!681102 m!8039092))

(declare-fun m!8039094 () Bool)

(assert (=> bm!681101 m!8039094))

(declare-fun m!8039096 () Bool)

(assert (=> b!7397889 m!8039096))

(assert (=> bm!681083 d!2288923))

(declare-fun e!4426202 () Bool)

(assert (=> b!7397839 (= tp!2111274 e!4426202)))

(declare-fun b!7397901 () Bool)

(assert (=> b!7397901 (= e!4426202 tp_is_empty!49013)))

(declare-fun b!7397902 () Bool)

(declare-fun tp!2111291 () Bool)

(declare-fun tp!2111292 () Bool)

(assert (=> b!7397902 (= e!4426202 (and tp!2111291 tp!2111292))))

(declare-fun b!7397903 () Bool)

(declare-fun tp!2111293 () Bool)

(assert (=> b!7397903 (= e!4426202 tp!2111293)))

(declare-fun b!7397904 () Bool)

(declare-fun tp!2111290 () Bool)

(declare-fun tp!2111289 () Bool)

(assert (=> b!7397904 (= e!4426202 (and tp!2111290 tp!2111289))))

(assert (= (and b!7397839 ((_ is ElementMatch!19375) (h!78248 (exprs!8815 c!10532)))) b!7397901))

(assert (= (and b!7397839 ((_ is Concat!28220) (h!78248 (exprs!8815 c!10532)))) b!7397902))

(assert (= (and b!7397839 ((_ is Star!19375) (h!78248 (exprs!8815 c!10532)))) b!7397903))

(assert (= (and b!7397839 ((_ is Union!19375) (h!78248 (exprs!8815 c!10532)))) b!7397904))

(declare-fun b!7397905 () Bool)

(declare-fun e!4426203 () Bool)

(declare-fun tp!2111294 () Bool)

(declare-fun tp!2111295 () Bool)

(assert (=> b!7397905 (= e!4426203 (and tp!2111294 tp!2111295))))

(assert (=> b!7397839 (= tp!2111275 e!4426203)))

(assert (= (and b!7397839 ((_ is Cons!71800) (t!386481 (exprs!8815 c!10532)))) b!7397905))

(declare-fun e!4426204 () Bool)

(assert (=> b!7397833 (= tp!2111266 e!4426204)))

(declare-fun b!7397906 () Bool)

(assert (=> b!7397906 (= e!4426204 tp_is_empty!49013)))

(declare-fun b!7397907 () Bool)

(declare-fun tp!2111298 () Bool)

(declare-fun tp!2111299 () Bool)

(assert (=> b!7397907 (= e!4426204 (and tp!2111298 tp!2111299))))

(declare-fun b!7397908 () Bool)

(declare-fun tp!2111300 () Bool)

(assert (=> b!7397908 (= e!4426204 tp!2111300)))

(declare-fun b!7397909 () Bool)

(declare-fun tp!2111297 () Bool)

(declare-fun tp!2111296 () Bool)

(assert (=> b!7397909 (= e!4426204 (and tp!2111297 tp!2111296))))

(assert (= (and b!7397833 ((_ is ElementMatch!19375) (h!78248 (exprs!8815 setElem!56018)))) b!7397906))

(assert (= (and b!7397833 ((_ is Concat!28220) (h!78248 (exprs!8815 setElem!56018)))) b!7397907))

(assert (= (and b!7397833 ((_ is Star!19375) (h!78248 (exprs!8815 setElem!56018)))) b!7397908))

(assert (= (and b!7397833 ((_ is Union!19375) (h!78248 (exprs!8815 setElem!56018)))) b!7397909))

(declare-fun b!7397910 () Bool)

(declare-fun e!4426205 () Bool)

(declare-fun tp!2111301 () Bool)

(declare-fun tp!2111302 () Bool)

(assert (=> b!7397910 (= e!4426205 (and tp!2111301 tp!2111302))))

(assert (=> b!7397833 (= tp!2111267 e!4426205)))

(assert (= (and b!7397833 ((_ is Cons!71800) (t!386481 (exprs!8815 setElem!56018)))) b!7397910))

(declare-fun b!7397911 () Bool)

(declare-fun e!4426206 () Bool)

(declare-fun tp!2111303 () Bool)

(assert (=> b!7397911 (= e!4426206 (and tp_is_empty!49013 tp!2111303))))

(assert (=> b!7397844 (= tp!2111278 e!4426206)))

(assert (= (and b!7397844 ((_ is Cons!71801) (t!386482 (t!386482 s!7927)))) b!7397911))

(declare-fun b!7397912 () Bool)

(declare-fun e!4426207 () Bool)

(declare-fun tp!2111304 () Bool)

(declare-fun tp!2111305 () Bool)

(assert (=> b!7397912 (= e!4426207 (and tp!2111304 tp!2111305))))

(assert (=> b!7397838 (= tp!2111272 e!4426207)))

(assert (= (and b!7397838 ((_ is Cons!71800) (exprs!8815 setElem!56021))) b!7397912))

(declare-fun condSetEmpty!56022 () Bool)

(assert (=> setNonEmpty!56021 (= condSetEmpty!56022 (= setRest!56021 ((as const (Array Context!16630 Bool)) false)))))

(declare-fun setRes!56022 () Bool)

(assert (=> setNonEmpty!56021 (= tp!2111273 setRes!56022)))

(declare-fun setIsEmpty!56022 () Bool)

(assert (=> setIsEmpty!56022 setRes!56022))

(declare-fun tp!2111307 () Bool)

(declare-fun setNonEmpty!56022 () Bool)

(declare-fun setElem!56022 () Context!16630)

(declare-fun e!4426208 () Bool)

(assert (=> setNonEmpty!56022 (= setRes!56022 (and tp!2111307 (inv!91798 setElem!56022) e!4426208))))

(declare-fun setRest!56022 () (InoxSet Context!16630))

(assert (=> setNonEmpty!56022 (= setRest!56021 ((_ map or) (store ((as const (Array Context!16630 Bool)) false) setElem!56022 true) setRest!56022))))

(declare-fun b!7397913 () Bool)

(declare-fun tp!2111306 () Bool)

(assert (=> b!7397913 (= e!4426208 tp!2111306)))

(assert (= (and setNonEmpty!56021 condSetEmpty!56022) setIsEmpty!56022))

(assert (= (and setNonEmpty!56021 (not condSetEmpty!56022)) setNonEmpty!56022))

(assert (= setNonEmpty!56022 b!7397913))

(declare-fun m!8039098 () Bool)

(assert (=> setNonEmpty!56022 m!8039098))

(declare-fun b_lambda!285743 () Bool)

(assert (= b_lambda!285741 (or d!2288893 b_lambda!285743)))

(declare-fun bs!1923161 () Bool)

(declare-fun d!2288925 () Bool)

(assert (= bs!1923161 (and d!2288925 d!2288893)))

(declare-fun validRegex!9947 (Regex!19375) Bool)

(assert (=> bs!1923161 (= (dynLambda!29595 lambda!459231 (h!78248 (exprs!8815 c!10532))) (validRegex!9947 (h!78248 (exprs!8815 c!10532))))))

(declare-fun m!8039100 () Bool)

(assert (=> bs!1923161 m!8039100))

(assert (=> b!7397856 d!2288925))

(declare-fun b_lambda!285745 () Bool)

(assert (= b_lambda!285739 (or d!2288903 b_lambda!285745)))

(declare-fun bs!1923162 () Bool)

(declare-fun d!2288927 () Bool)

(assert (= bs!1923162 (and d!2288927 d!2288903)))

(assert (=> bs!1923162 (= (dynLambda!29595 lambda!459232 (h!78248 (exprs!8815 setElem!56018))) (validRegex!9947 (h!78248 (exprs!8815 setElem!56018))))))

(declare-fun m!8039102 () Bool)

(assert (=> bs!1923162 m!8039102))

(assert (=> b!7397849 d!2288927))

(check-sat (not bm!681101) (not d!2288921) (not b!7397888) tp_is_empty!49013 (not b!7397907) (not b!7397851) (not d!2288919) (not b!7397908) (not bm!681097) (not b!7397911) (not setNonEmpty!56022) (not b!7397853) (not b_lambda!285745) (not b!7397905) (not b!7397902) (not b!7397912) (not b_lambda!285743) (not b!7397904) (not b!7397903) (not b!7397913) (not bs!1923162) (not b!7397910) (not bm!681102) (not b!7397909) (not b!7397857) (not b!7397850) (not bm!681084) (not bs!1923161))
(check-sat)
