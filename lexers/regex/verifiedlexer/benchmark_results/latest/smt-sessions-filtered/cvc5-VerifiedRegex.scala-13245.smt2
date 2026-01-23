; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720520 () Bool)

(assert start!720520)

(declare-fun b!7385778 () Bool)

(assert (=> b!7385778 true))

(declare-fun b!7385769 () Bool)

(declare-fun e!4420910 () Bool)

(declare-fun tp_is_empty!48991 () Bool)

(declare-fun tp!2101372 () Bool)

(assert (=> b!7385769 (= e!4420910 (and tp_is_empty!48991 tp!2101372))))

(declare-fun b!7385770 () Bool)

(declare-fun res!2978571 () Bool)

(declare-fun e!4420908 () Bool)

(assert (=> b!7385770 (=> (not res!2978571) (not e!4420908))))

(declare-datatypes ((C!39002 0))(
  ( (C!39003 (val!29875 Int)) )
))
(declare-datatypes ((Regex!19364 0))(
  ( (ElementMatch!19364 (c!1372812 C!39002)) (Concat!28209 (regOne!39240 Regex!19364) (regTwo!39240 Regex!19364)) (EmptyExpr!19364) (Star!19364 (reg!19693 Regex!19364)) (EmptyLang!19364) (Union!19364 (regOne!39241 Regex!19364) (regTwo!39241 Regex!19364)) )
))
(declare-datatypes ((List!71892 0))(
  ( (Nil!71768) (Cons!71768 (h!78216 Regex!19364) (t!386443 List!71892)) )
))
(declare-datatypes ((Context!16608 0))(
  ( (Context!16609 (exprs!8804 List!71892)) )
))
(declare-fun c!10532 () Context!16608)

(declare-fun a!2228 () C!39002)

(declare-fun head!15112 (List!71892) Regex!19364)

(assert (=> b!7385770 (= res!2978571 (= (head!15112 (exprs!8804 c!10532)) (ElementMatch!19364 a!2228)))))

(declare-fun b!7385771 () Bool)

(declare-fun e!4420909 () Bool)

(declare-fun tp!2101376 () Bool)

(assert (=> b!7385771 (= e!4420909 tp!2101376)))

(declare-fun res!2978572 () Bool)

(assert (=> start!720520 (=> (not res!2978572) (not e!4420908))))

(declare-fun z!3451 () (Set Context!16608))

(assert (=> start!720520 (= res!2978572 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16608)))))))

(assert (=> start!720520 e!4420908))

(declare-fun condSetEmpty!55895 () Bool)

(assert (=> start!720520 (= condSetEmpty!55895 (= z!3451 (as set.empty (Set Context!16608))))))

(declare-fun setRes!55895 () Bool)

(assert (=> start!720520 setRes!55895))

(declare-fun inv!91772 (Context!16608) Bool)

(assert (=> start!720520 (and (inv!91772 c!10532) e!4420909)))

(assert (=> start!720520 tp_is_empty!48991))

(assert (=> start!720520 e!4420910))

(declare-fun setIsEmpty!55895 () Bool)

(assert (=> setIsEmpty!55895 setRes!55895))

(declare-fun b!7385772 () Bool)

(declare-fun e!4420905 () Bool)

(assert (=> b!7385772 (= e!4420908 e!4420905)))

(declare-fun res!2978573 () Bool)

(assert (=> b!7385772 (=> (not res!2978573) (not e!4420905))))

(declare-fun lt!2617688 () Context!16608)

(declare-fun lt!2617689 () C!39002)

(declare-fun derivationStepZipperUp!2770 (Context!16608 C!39002) (Set Context!16608))

(assert (=> b!7385772 (= res!2978573 (= (derivationStepZipperUp!2770 c!10532 lt!2617689) (set.insert lt!2617688 (as set.empty (Set Context!16608)))))))

(assert (=> b!7385772 (= lt!2617688 (Context!16609 Nil!71768))))

(declare-datatypes ((List!71893 0))(
  ( (Nil!71769) (Cons!71769 (h!78217 C!39002) (t!386444 List!71893)) )
))
(declare-fun s!7927 () List!71893)

(declare-fun head!15113 (List!71893) C!39002)

(assert (=> b!7385772 (= lt!2617689 (head!15113 s!7927))))

(declare-fun b!7385773 () Bool)

(declare-fun e!4420907 () Bool)

(declare-fun tp!2101375 () Bool)

(assert (=> b!7385773 (= e!4420907 tp!2101375)))

(declare-fun tp!2101373 () Bool)

(declare-fun setNonEmpty!55895 () Bool)

(declare-fun e!4420906 () Bool)

(declare-fun setElem!55895 () Context!16608)

(assert (=> setNonEmpty!55895 (= setRes!55895 (and tp!2101373 (inv!91772 setElem!55895) e!4420906))))

(declare-fun setRest!55895 () (Set Context!16608))

(assert (=> setNonEmpty!55895 (= z!3451 (set.union (set.insert setElem!55895 (as set.empty (Set Context!16608))) setRest!55895))))

(declare-fun b!7385774 () Bool)

(declare-fun res!2978574 () Bool)

(assert (=> b!7385774 (=> (not res!2978574) (not e!4420908))))

(assert (=> b!7385774 (= res!2978574 (and (is-Cons!71769 s!7927) (= (h!78217 s!7927) a!2228)))))

(declare-fun b!7385775 () Bool)

(declare-fun tp!2101374 () Bool)

(assert (=> b!7385775 (= e!4420906 tp!2101374)))

(declare-fun b!7385776 () Bool)

(declare-fun res!2978569 () Bool)

(assert (=> b!7385776 (=> (not res!2978569) (not e!4420908))))

(declare-fun isEmpty!41004 (List!71892) Bool)

(declare-fun tail!14771 (List!71892) List!71892)

(assert (=> b!7385776 (= res!2978569 (isEmpty!41004 (tail!14771 (exprs!8804 c!10532))))))

(declare-fun b!7385777 () Bool)

(declare-fun res!2978570 () Bool)

(assert (=> b!7385777 (=> (not res!2978570) (not e!4420908))))

(assert (=> b!7385777 (= res!2978570 (not (isEmpty!41004 (exprs!8804 c!10532))))))

(declare-fun derivationStepZipper!3648 ((Set Context!16608) C!39002) (Set Context!16608))

(assert (=> b!7385778 (= e!4420905 (not (set.member lt!2617688 (derivationStepZipper!3648 z!3451 lt!2617689))))))

(declare-fun empty!3451 () Context!16608)

(declare-fun lambda!458909 () Int)

(declare-fun flatMapPost!183 ((Set Context!16608) Int Context!16608) Context!16608)

(assert (=> b!7385778 (= (flatMapPost!183 z!3451 lambda!458909 lt!2617688) empty!3451)))

(assert (=> b!7385778 true))

(assert (=> b!7385778 (and (inv!91772 empty!3451) e!4420907)))

(assert (= (and start!720520 res!2978572) b!7385777))

(assert (= (and b!7385777 res!2978570) b!7385770))

(assert (= (and b!7385770 res!2978571) b!7385776))

(assert (= (and b!7385776 res!2978569) b!7385774))

(assert (= (and b!7385774 res!2978574) b!7385772))

(assert (= (and b!7385772 res!2978573) b!7385778))

(assert (= b!7385778 b!7385773))

(assert (= (and start!720520 condSetEmpty!55895) setIsEmpty!55895))

(assert (= (and start!720520 (not condSetEmpty!55895)) setNonEmpty!55895))

(assert (= setNonEmpty!55895 b!7385775))

(assert (= start!720520 b!7385771))

(assert (= (and start!720520 (is-Cons!71769 s!7927)) b!7385769))

(declare-fun m!8034106 () Bool)

(assert (=> start!720520 m!8034106))

(declare-fun m!8034108 () Bool)

(assert (=> start!720520 m!8034108))

(declare-fun m!8034110 () Bool)

(assert (=> b!7385772 m!8034110))

(declare-fun m!8034112 () Bool)

(assert (=> b!7385772 m!8034112))

(declare-fun m!8034114 () Bool)

(assert (=> b!7385772 m!8034114))

(declare-fun m!8034116 () Bool)

(assert (=> b!7385778 m!8034116))

(declare-fun m!8034118 () Bool)

(assert (=> b!7385778 m!8034118))

(declare-fun m!8034120 () Bool)

(assert (=> b!7385778 m!8034120))

(declare-fun m!8034122 () Bool)

(assert (=> b!7385778 m!8034122))

(declare-fun m!8034124 () Bool)

(assert (=> b!7385776 m!8034124))

(assert (=> b!7385776 m!8034124))

(declare-fun m!8034126 () Bool)

(assert (=> b!7385776 m!8034126))

(declare-fun m!8034128 () Bool)

(assert (=> setNonEmpty!55895 m!8034128))

(declare-fun m!8034130 () Bool)

(assert (=> b!7385770 m!8034130))

(declare-fun m!8034132 () Bool)

(assert (=> b!7385777 m!8034132))

(push 1)

(assert (not b!7385776))

(assert tp_is_empty!48991)

(assert (not b!7385778))

(assert (not start!720520))

(assert (not b!7385772))

(assert (not b!7385775))

(assert (not b!7385771))

(assert (not b!7385773))

(assert (not setNonEmpty!55895))

(assert (not b!7385769))

(assert (not b!7385777))

(assert (not b!7385770))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1921951 () Bool)

(declare-fun d!2286526 () Bool)

(assert (= bs!1921951 (and d!2286526 b!7385778)))

(declare-fun lambda!458915 () Int)

(assert (=> bs!1921951 (= (= lt!2617689 a!2228) (= lambda!458915 lambda!458909))))

(assert (=> d!2286526 true))

(declare-fun flatMap!3176 ((Set Context!16608) Int) (Set Context!16608))

(assert (=> d!2286526 (= (derivationStepZipper!3648 z!3451 lt!2617689) (flatMap!3176 z!3451 lambda!458915))))

(declare-fun bs!1921952 () Bool)

(assert (= bs!1921952 d!2286526))

(declare-fun m!8034162 () Bool)

(assert (=> bs!1921952 m!8034162))

(assert (=> b!7385778 d!2286526))

(declare-fun d!2286528 () Bool)

(assert (=> d!2286528 true))

(assert (=> d!2286528 true))

(declare-fun lambda!458921 () Int)

(declare-fun order!29419 () Int)

(declare-fun order!29417 () Int)

(declare-fun dynLambda!29554 (Int Int) Int)

(declare-fun dynLambda!29555 (Int Int) Int)

(assert (=> d!2286528 (< (dynLambda!29554 order!29417 lambda!458909) (dynLambda!29555 order!29419 lambda!458921))))

(declare-fun exists!4722 ((Set Context!16608) Int) Bool)

(assert (=> d!2286528 (= (set.member lt!2617688 (flatMap!3176 z!3451 lambda!458909)) (exists!4722 z!3451 lambda!458921))))

(declare-fun lt!2617698 () Context!16608)

(declare-fun choose!57366 ((Set Context!16608) Int Context!16608) Context!16608)

(assert (=> d!2286528 (= lt!2617698 (choose!57366 z!3451 lambda!458909 lt!2617688))))

(assert (=> d!2286528 (= (flatMapPost!183 z!3451 lambda!458909 lt!2617688) lt!2617698)))

(declare-fun bs!1921954 () Bool)

(assert (= bs!1921954 d!2286528))

(declare-fun m!8034166 () Bool)

(assert (=> bs!1921954 m!8034166))

(declare-fun m!8034168 () Bool)

(assert (=> bs!1921954 m!8034168))

(declare-fun m!8034170 () Bool)

(assert (=> bs!1921954 m!8034170))

(declare-fun m!8034172 () Bool)

(assert (=> bs!1921954 m!8034172))

(assert (=> b!7385778 d!2286528))

(declare-fun d!2286534 () Bool)

(declare-fun lambda!458924 () Int)

(declare-fun forall!18147 (List!71892 Int) Bool)

(assert (=> d!2286534 (= (inv!91772 empty!3451) (forall!18147 (exprs!8804 empty!3451) lambda!458924))))

(declare-fun bs!1921955 () Bool)

(assert (= bs!1921955 d!2286534))

(declare-fun m!8034174 () Bool)

(assert (=> bs!1921955 m!8034174))

(assert (=> b!7385778 d!2286534))

(declare-fun d!2286536 () Bool)

(assert (=> d!2286536 (= (isEmpty!41004 (exprs!8804 c!10532)) (is-Nil!71768 (exprs!8804 c!10532)))))

(assert (=> b!7385777 d!2286536))

(declare-fun d!2286538 () Bool)

(assert (=> d!2286538 (= (head!15112 (exprs!8804 c!10532)) (h!78216 (exprs!8804 c!10532)))))

(assert (=> b!7385770 d!2286538))

(declare-fun bs!1921956 () Bool)

(declare-fun d!2286542 () Bool)

(assert (= bs!1921956 (and d!2286542 d!2286534)))

(declare-fun lambda!458926 () Int)

(assert (=> bs!1921956 (= lambda!458926 lambda!458924)))

(assert (=> d!2286542 (= (inv!91772 setElem!55895) (forall!18147 (exprs!8804 setElem!55895) lambda!458926))))

(declare-fun bs!1921959 () Bool)

(assert (= bs!1921959 d!2286542))

(declare-fun m!8034184 () Bool)

(assert (=> bs!1921959 m!8034184))

(assert (=> setNonEmpty!55895 d!2286542))

(declare-fun bs!1921960 () Bool)

(declare-fun d!2286546 () Bool)

(assert (= bs!1921960 (and d!2286546 d!2286534)))

(declare-fun lambda!458927 () Int)

(assert (=> bs!1921960 (= lambda!458927 lambda!458924)))

(declare-fun bs!1921961 () Bool)

(assert (= bs!1921961 (and d!2286546 d!2286542)))

(assert (=> bs!1921961 (= lambda!458927 lambda!458926)))

(assert (=> d!2286546 (= (inv!91772 c!10532) (forall!18147 (exprs!8804 c!10532) lambda!458927))))

(declare-fun bs!1921962 () Bool)

(assert (= bs!1921962 d!2286546))

(declare-fun m!8034186 () Bool)

(assert (=> bs!1921962 m!8034186))

(assert (=> start!720520 d!2286546))

(declare-fun e!4420945 () (Set Context!16608))

(declare-fun b!7385843 () Bool)

(declare-fun call!679844 () (Set Context!16608))

(assert (=> b!7385843 (= e!4420945 (set.union call!679844 (derivationStepZipperUp!2770 (Context!16609 (t!386443 (exprs!8804 c!10532))) lt!2617689)))))

(declare-fun b!7385844 () Bool)

(declare-fun e!4420946 () (Set Context!16608))

(assert (=> b!7385844 (= e!4420946 (as set.empty (Set Context!16608)))))

(declare-fun d!2286550 () Bool)

(declare-fun c!1372830 () Bool)

(declare-fun e!4420944 () Bool)

(assert (=> d!2286550 (= c!1372830 e!4420944)))

(declare-fun res!2978598 () Bool)

(assert (=> d!2286550 (=> (not res!2978598) (not e!4420944))))

(assert (=> d!2286550 (= res!2978598 (is-Cons!71768 (exprs!8804 c!10532)))))

(assert (=> d!2286550 (= (derivationStepZipperUp!2770 c!10532 lt!2617689) e!4420945)))

(declare-fun b!7385845 () Bool)

(declare-fun nullable!8419 (Regex!19364) Bool)

(assert (=> b!7385845 (= e!4420944 (nullable!8419 (h!78216 (exprs!8804 c!10532))))))

(declare-fun bm!679839 () Bool)

(declare-fun derivationStepZipperDown!3171 (Regex!19364 Context!16608 C!39002) (Set Context!16608))

(assert (=> bm!679839 (= call!679844 (derivationStepZipperDown!3171 (h!78216 (exprs!8804 c!10532)) (Context!16609 (t!386443 (exprs!8804 c!10532))) lt!2617689))))

(declare-fun b!7385846 () Bool)

(assert (=> b!7385846 (= e!4420945 e!4420946)))

(declare-fun c!1372831 () Bool)

(assert (=> b!7385846 (= c!1372831 (is-Cons!71768 (exprs!8804 c!10532)))))

(declare-fun b!7385847 () Bool)

(assert (=> b!7385847 (= e!4420946 call!679844)))

(assert (= (and d!2286550 res!2978598) b!7385845))

(assert (= (and d!2286550 c!1372830) b!7385843))

(assert (= (and d!2286550 (not c!1372830)) b!7385846))

(assert (= (and b!7385846 c!1372831) b!7385847))

(assert (= (and b!7385846 (not c!1372831)) b!7385844))

(assert (= (or b!7385843 b!7385847) bm!679839))

(declare-fun m!8034190 () Bool)

(assert (=> b!7385843 m!8034190))

(declare-fun m!8034192 () Bool)

(assert (=> b!7385845 m!8034192))

(declare-fun m!8034194 () Bool)

(assert (=> bm!679839 m!8034194))

(assert (=> b!7385772 d!2286550))

(declare-fun d!2286556 () Bool)

(assert (=> d!2286556 (= (head!15113 s!7927) (h!78217 s!7927))))

(assert (=> b!7385772 d!2286556))

(declare-fun d!2286558 () Bool)

(assert (=> d!2286558 (= (isEmpty!41004 (tail!14771 (exprs!8804 c!10532))) (is-Nil!71768 (tail!14771 (exprs!8804 c!10532))))))

(assert (=> b!7385776 d!2286558))

(declare-fun d!2286560 () Bool)

(assert (=> d!2286560 (= (tail!14771 (exprs!8804 c!10532)) (t!386443 (exprs!8804 c!10532)))))

(assert (=> b!7385776 d!2286560))

(declare-fun b!7385853 () Bool)

(declare-fun e!4420949 () Bool)

(declare-fun tp!2101394 () Bool)

(assert (=> b!7385853 (= e!4420949 (and tp_is_empty!48991 tp!2101394))))

(assert (=> b!7385769 (= tp!2101372 e!4420949)))

(assert (= (and b!7385769 (is-Cons!71769 (t!386444 s!7927))) b!7385853))

(declare-fun b!7385858 () Bool)

(declare-fun e!4420952 () Bool)

(declare-fun tp!2101399 () Bool)

(declare-fun tp!2101400 () Bool)

(assert (=> b!7385858 (= e!4420952 (and tp!2101399 tp!2101400))))

(assert (=> b!7385773 (= tp!2101375 e!4420952)))

(assert (= (and b!7385773 (is-Cons!71768 (exprs!8804 empty!3451))) b!7385858))

(declare-fun condSetEmpty!55901 () Bool)

(assert (=> setNonEmpty!55895 (= condSetEmpty!55901 (= setRest!55895 (as set.empty (Set Context!16608))))))

(declare-fun setRes!55901 () Bool)

(assert (=> setNonEmpty!55895 (= tp!2101373 setRes!55901)))

(declare-fun setIsEmpty!55901 () Bool)

(assert (=> setIsEmpty!55901 setRes!55901))

(declare-fun tp!2101405 () Bool)

(declare-fun setElem!55901 () Context!16608)

(declare-fun setNonEmpty!55901 () Bool)

(declare-fun e!4420955 () Bool)

(assert (=> setNonEmpty!55901 (= setRes!55901 (and tp!2101405 (inv!91772 setElem!55901) e!4420955))))

(declare-fun setRest!55901 () (Set Context!16608))

(assert (=> setNonEmpty!55901 (= setRest!55895 (set.union (set.insert setElem!55901 (as set.empty (Set Context!16608))) setRest!55901))))

(declare-fun b!7385867 () Bool)

(declare-fun tp!2101406 () Bool)

(assert (=> b!7385867 (= e!4420955 tp!2101406)))

(assert (= (and setNonEmpty!55895 condSetEmpty!55901) setIsEmpty!55901))

(assert (= (and setNonEmpty!55895 (not condSetEmpty!55901)) setNonEmpty!55901))

(assert (= setNonEmpty!55901 b!7385867))

(declare-fun m!8034206 () Bool)

(assert (=> setNonEmpty!55901 m!8034206))

(declare-fun b!7385868 () Bool)

(declare-fun e!4420956 () Bool)

(declare-fun tp!2101407 () Bool)

(declare-fun tp!2101408 () Bool)

(assert (=> b!7385868 (= e!4420956 (and tp!2101407 tp!2101408))))

(assert (=> b!7385775 (= tp!2101374 e!4420956)))

(assert (= (and b!7385775 (is-Cons!71768 (exprs!8804 setElem!55895))) b!7385868))

(declare-fun b!7385869 () Bool)

(declare-fun e!4420957 () Bool)

(declare-fun tp!2101409 () Bool)

(declare-fun tp!2101410 () Bool)

(assert (=> b!7385869 (= e!4420957 (and tp!2101409 tp!2101410))))

(assert (=> b!7385771 (= tp!2101376 e!4420957)))

(assert (= (and b!7385771 (is-Cons!71768 (exprs!8804 c!10532))) b!7385869))

(push 1)

(assert (not b!7385868))

(assert (not b!7385845))

(assert (not b!7385858))

(assert (not b!7385843))

(assert (not bm!679839))

(assert (not d!2286542))

(assert (not b!7385853))

(assert tp_is_empty!48991)

(assert (not b!7385867))

(assert (not b!7385869))

(assert (not d!2286526))

(assert (not d!2286528))

(assert (not setNonEmpty!55901))

(assert (not d!2286546))

(assert (not d!2286534))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286578 () Bool)

(declare-fun res!2978610 () Bool)

(declare-fun e!4420982 () Bool)

(assert (=> d!2286578 (=> res!2978610 e!4420982)))

(assert (=> d!2286578 (= res!2978610 (is-Nil!71768 (exprs!8804 empty!3451)))))

(assert (=> d!2286578 (= (forall!18147 (exprs!8804 empty!3451) lambda!458924) e!4420982)))

(declare-fun b!7385902 () Bool)

(declare-fun e!4420983 () Bool)

(assert (=> b!7385902 (= e!4420982 e!4420983)))

(declare-fun res!2978611 () Bool)

(assert (=> b!7385902 (=> (not res!2978611) (not e!4420983))))

(declare-fun dynLambda!29558 (Int Regex!19364) Bool)

(assert (=> b!7385902 (= res!2978611 (dynLambda!29558 lambda!458924 (h!78216 (exprs!8804 empty!3451))))))

(declare-fun b!7385903 () Bool)

(assert (=> b!7385903 (= e!4420983 (forall!18147 (t!386443 (exprs!8804 empty!3451)) lambda!458924))))

(assert (= (and d!2286578 (not res!2978610)) b!7385902))

(assert (= (and b!7385902 res!2978611) b!7385903))

(declare-fun b_lambda!284965 () Bool)

(assert (=> (not b_lambda!284965) (not b!7385902)))

(declare-fun m!8034222 () Bool)

(assert (=> b!7385902 m!8034222))

(declare-fun m!8034224 () Bool)

(assert (=> b!7385903 m!8034224))

(assert (=> d!2286534 d!2286578))

(declare-fun d!2286580 () Bool)

(declare-fun choose!57368 ((Set Context!16608) Int) (Set Context!16608))

(assert (=> d!2286580 (= (flatMap!3176 z!3451 lambda!458909) (choose!57368 z!3451 lambda!458909))))

(declare-fun bs!1921970 () Bool)

(assert (= bs!1921970 d!2286580))

(declare-fun m!8034226 () Bool)

(assert (=> bs!1921970 m!8034226))

(assert (=> d!2286528 d!2286580))

(declare-fun d!2286582 () Bool)

(declare-fun lt!2617704 () Bool)

(declare-datatypes ((List!71896 0))(
  ( (Nil!71772) (Cons!71772 (h!78220 Context!16608) (t!386447 List!71896)) )
))
(declare-fun exists!4724 (List!71896 Int) Bool)

(declare-fun toList!11727 ((Set Context!16608)) List!71896)

(assert (=> d!2286582 (= lt!2617704 (exists!4724 (toList!11727 z!3451) lambda!458921))))

(declare-fun choose!57369 ((Set Context!16608) Int) Bool)

(assert (=> d!2286582 (= lt!2617704 (choose!57369 z!3451 lambda!458921))))

(assert (=> d!2286582 (= (exists!4722 z!3451 lambda!458921) lt!2617704)))

(declare-fun bs!1921971 () Bool)

(assert (= bs!1921971 d!2286582))

(declare-fun m!8034228 () Bool)

(assert (=> bs!1921971 m!8034228))

(assert (=> bs!1921971 m!8034228))

(declare-fun m!8034230 () Bool)

(assert (=> bs!1921971 m!8034230))

(declare-fun m!8034232 () Bool)

(assert (=> bs!1921971 m!8034232))

(assert (=> d!2286528 d!2286582))

(declare-fun bs!1921972 () Bool)

(declare-fun d!2286584 () Bool)

(assert (= bs!1921972 (and d!2286584 d!2286528)))

(declare-fun lambda!458937 () Int)

(assert (=> bs!1921972 (= lambda!458937 lambda!458921)))

(assert (=> d!2286584 true))

(assert (=> d!2286584 true))

(assert (=> d!2286584 (< (dynLambda!29554 order!29417 lambda!458909) (dynLambda!29555 order!29419 lambda!458937))))

(assert (=> d!2286584 (= (set.member lt!2617688 (flatMap!3176 z!3451 lambda!458909)) (exists!4722 z!3451 lambda!458937))))

(declare-fun _$3!507 () Context!16608)

(declare-fun e!4420998 () Bool)

(assert (=> d!2286584 (and (inv!91772 _$3!507) e!4420998)))

(assert (=> d!2286584 (= (choose!57366 z!3451 lambda!458909 lt!2617688) _$3!507)))

(declare-fun b!7385929 () Bool)

(declare-fun tp!2101432 () Bool)

(assert (=> b!7385929 (= e!4420998 tp!2101432)))

(assert (= d!2286584 b!7385929))

(assert (=> d!2286584 m!8034166))

(assert (=> d!2286584 m!8034168))

(declare-fun m!8034234 () Bool)

(assert (=> d!2286584 m!8034234))

(declare-fun m!8034236 () Bool)

(assert (=> d!2286584 m!8034236))

(assert (=> d!2286528 d!2286584))

(declare-fun bm!679871 () Bool)

(declare-fun call!679876 () List!71892)

(declare-fun call!679880 () List!71892)

(assert (=> bm!679871 (= call!679876 call!679880)))

(declare-fun b!7385971 () Bool)

(declare-fun e!4421025 () (Set Context!16608))

(declare-fun call!679879 () (Set Context!16608))

(assert (=> b!7385971 (= e!4421025 call!679879)))

(declare-fun b!7385972 () Bool)

(assert (=> b!7385972 (= e!4421025 (as set.empty (Set Context!16608)))))

(declare-fun bm!679872 () Bool)

(declare-fun call!679878 () (Set Context!16608))

(declare-fun call!679877 () (Set Context!16608))

(assert (=> bm!679872 (= call!679878 call!679877)))

(declare-fun c!1372862 () Bool)

(declare-fun bm!679873 () Bool)

(declare-fun c!1372859 () Bool)

(declare-fun c!1372863 () Bool)

(assert (=> bm!679873 (= call!679877 (derivationStepZipperDown!3171 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))) (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) lt!2617689))))

(declare-fun bm!679874 () Bool)

(assert (=> bm!679874 (= call!679879 call!679878)))

(declare-fun b!7385973 () Bool)

(declare-fun e!4421027 () Bool)

(assert (=> b!7385973 (= e!4421027 (nullable!8419 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))

(declare-fun d!2286586 () Bool)

(declare-fun c!1372861 () Bool)

(assert (=> d!2286586 (= c!1372861 (and (is-ElementMatch!19364 (h!78216 (exprs!8804 c!10532))) (= (c!1372812 (h!78216 (exprs!8804 c!10532))) lt!2617689)))))

(declare-fun e!4421026 () (Set Context!16608))

(assert (=> d!2286586 (= (derivationStepZipperDown!3171 (h!78216 (exprs!8804 c!10532)) (Context!16609 (t!386443 (exprs!8804 c!10532))) lt!2617689) e!4421026)))

(declare-fun b!7385974 () Bool)

(declare-fun e!4421028 () (Set Context!16608))

(assert (=> b!7385974 (= e!4421028 call!679879)))

(declare-fun bm!679875 () Bool)

(declare-fun $colon$colon!3322 (List!71892 Regex!19364) List!71892)

(assert (=> bm!679875 (= call!679880 ($colon$colon!3322 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))) (ite (or c!1372862 c!1372863) (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (h!78216 (exprs!8804 c!10532)))))))

(declare-fun b!7385975 () Bool)

(declare-fun e!4421024 () (Set Context!16608))

(assert (=> b!7385975 (= e!4421026 e!4421024)))

(assert (=> b!7385975 (= c!1372859 (is-Union!19364 (h!78216 (exprs!8804 c!10532))))))

(declare-fun bm!679876 () Bool)

(declare-fun call!679881 () (Set Context!16608))

(assert (=> bm!679876 (= call!679881 (derivationStepZipperDown!3171 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))) (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) lt!2617689))))

(declare-fun b!7385976 () Bool)

(assert (=> b!7385976 (= c!1372862 e!4421027)))

(declare-fun res!2978621 () Bool)

(assert (=> b!7385976 (=> (not res!2978621) (not e!4421027))))

(assert (=> b!7385976 (= res!2978621 (is-Concat!28209 (h!78216 (exprs!8804 c!10532))))))

(declare-fun e!4421029 () (Set Context!16608))

(assert (=> b!7385976 (= e!4421024 e!4421029)))

(declare-fun b!7385977 () Bool)

(declare-fun c!1372860 () Bool)

(assert (=> b!7385977 (= c!1372860 (is-Star!19364 (h!78216 (exprs!8804 c!10532))))))

(assert (=> b!7385977 (= e!4421028 e!4421025)))

(declare-fun b!7385978 () Bool)

(assert (=> b!7385978 (= e!4421024 (set.union call!679877 call!679881))))

(declare-fun b!7385979 () Bool)

(assert (=> b!7385979 (= e!4421029 e!4421028)))

(assert (=> b!7385979 (= c!1372863 (is-Concat!28209 (h!78216 (exprs!8804 c!10532))))))

(declare-fun b!7385980 () Bool)

(assert (=> b!7385980 (= e!4421026 (set.insert (Context!16609 (t!386443 (exprs!8804 c!10532))) (as set.empty (Set Context!16608))))))

(declare-fun b!7385981 () Bool)

(assert (=> b!7385981 (= e!4421029 (set.union call!679881 call!679878))))

(assert (= (and d!2286586 c!1372861) b!7385980))

(assert (= (and d!2286586 (not c!1372861)) b!7385975))

(assert (= (and b!7385975 c!1372859) b!7385978))

(assert (= (and b!7385975 (not c!1372859)) b!7385976))

(assert (= (and b!7385976 res!2978621) b!7385973))

(assert (= (and b!7385976 c!1372862) b!7385981))

(assert (= (and b!7385976 (not c!1372862)) b!7385979))

(assert (= (and b!7385979 c!1372863) b!7385974))

(assert (= (and b!7385979 (not c!1372863)) b!7385977))

(assert (= (and b!7385977 c!1372860) b!7385971))

(assert (= (and b!7385977 (not c!1372860)) b!7385972))

(assert (= (or b!7385974 b!7385971) bm!679871))

(assert (= (or b!7385974 b!7385971) bm!679874))

(assert (= (or b!7385981 bm!679871) bm!679875))

(assert (= (or b!7385981 bm!679874) bm!679872))

(assert (= (or b!7385978 bm!679872) bm!679873))

(assert (= (or b!7385978 b!7385981) bm!679876))

(declare-fun m!8034272 () Bool)

(assert (=> bm!679873 m!8034272))

(declare-fun m!8034274 () Bool)

(assert (=> b!7385980 m!8034274))

(declare-fun m!8034276 () Bool)

(assert (=> bm!679876 m!8034276))

(declare-fun m!8034278 () Bool)

(assert (=> b!7385973 m!8034278))

(declare-fun m!8034280 () Bool)

(assert (=> bm!679875 m!8034280))

(assert (=> bm!679839 d!2286586))

(declare-fun d!2286602 () Bool)

(declare-fun res!2978622 () Bool)

(declare-fun e!4421033 () Bool)

(assert (=> d!2286602 (=> res!2978622 e!4421033)))

(assert (=> d!2286602 (= res!2978622 (is-Nil!71768 (exprs!8804 setElem!55895)))))

(assert (=> d!2286602 (= (forall!18147 (exprs!8804 setElem!55895) lambda!458926) e!4421033)))

(declare-fun b!7385996 () Bool)

(declare-fun e!4421034 () Bool)

(assert (=> b!7385996 (= e!4421033 e!4421034)))

(declare-fun res!2978623 () Bool)

(assert (=> b!7385996 (=> (not res!2978623) (not e!4421034))))

(assert (=> b!7385996 (= res!2978623 (dynLambda!29558 lambda!458926 (h!78216 (exprs!8804 setElem!55895))))))

(declare-fun b!7385997 () Bool)

(assert (=> b!7385997 (= e!4421034 (forall!18147 (t!386443 (exprs!8804 setElem!55895)) lambda!458926))))

(assert (= (and d!2286602 (not res!2978622)) b!7385996))

(assert (= (and b!7385996 res!2978623) b!7385997))

(declare-fun b_lambda!284971 () Bool)

(assert (=> (not b_lambda!284971) (not b!7385996)))

(declare-fun m!8034282 () Bool)

(assert (=> b!7385996 m!8034282))

(declare-fun m!8034284 () Bool)

(assert (=> b!7385997 m!8034284))

(assert (=> d!2286542 d!2286602))

(declare-fun d!2286604 () Bool)

(declare-fun nullableFct!3384 (Regex!19364) Bool)

(assert (=> d!2286604 (= (nullable!8419 (h!78216 (exprs!8804 c!10532))) (nullableFct!3384 (h!78216 (exprs!8804 c!10532))))))

(declare-fun bs!1921981 () Bool)

(assert (= bs!1921981 d!2286604))

(declare-fun m!8034286 () Bool)

(assert (=> bs!1921981 m!8034286))

(assert (=> b!7385845 d!2286604))

(declare-fun d!2286606 () Bool)

(assert (=> d!2286606 (= (flatMap!3176 z!3451 lambda!458915) (choose!57368 z!3451 lambda!458915))))

(declare-fun bs!1921982 () Bool)

(assert (= bs!1921982 d!2286606))

(declare-fun m!8034288 () Bool)

(assert (=> bs!1921982 m!8034288))

(assert (=> d!2286526 d!2286606))

(declare-fun d!2286608 () Bool)

(declare-fun res!2978624 () Bool)

(declare-fun e!4421043 () Bool)

(assert (=> d!2286608 (=> res!2978624 e!4421043)))

(assert (=> d!2286608 (= res!2978624 (is-Nil!71768 (exprs!8804 c!10532)))))

(assert (=> d!2286608 (= (forall!18147 (exprs!8804 c!10532) lambda!458927) e!4421043)))

(declare-fun b!7386012 () Bool)

(declare-fun e!4421044 () Bool)

(assert (=> b!7386012 (= e!4421043 e!4421044)))

(declare-fun res!2978625 () Bool)

(assert (=> b!7386012 (=> (not res!2978625) (not e!4421044))))

(assert (=> b!7386012 (= res!2978625 (dynLambda!29558 lambda!458927 (h!78216 (exprs!8804 c!10532))))))

(declare-fun b!7386013 () Bool)

(assert (=> b!7386013 (= e!4421044 (forall!18147 (t!386443 (exprs!8804 c!10532)) lambda!458927))))

(assert (= (and d!2286608 (not res!2978624)) b!7386012))

(assert (= (and b!7386012 res!2978625) b!7386013))

(declare-fun b_lambda!284973 () Bool)

(assert (=> (not b_lambda!284973) (not b!7386012)))

(declare-fun m!8034292 () Bool)

(assert (=> b!7386012 m!8034292))

(declare-fun m!8034294 () Bool)

(assert (=> b!7386013 m!8034294))

(assert (=> d!2286546 d!2286608))

(declare-fun e!4421046 () (Set Context!16608))

(declare-fun b!7386014 () Bool)

(declare-fun call!679882 () (Set Context!16608))

(assert (=> b!7386014 (= e!4421046 (set.union call!679882 (derivationStepZipperUp!2770 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) lt!2617689)))))

(declare-fun b!7386015 () Bool)

(declare-fun e!4421047 () (Set Context!16608))

(assert (=> b!7386015 (= e!4421047 (as set.empty (Set Context!16608)))))

(declare-fun d!2286610 () Bool)

(declare-fun c!1372864 () Bool)

(declare-fun e!4421045 () Bool)

(assert (=> d!2286610 (= c!1372864 e!4421045)))

(declare-fun res!2978626 () Bool)

(assert (=> d!2286610 (=> (not res!2978626) (not e!4421045))))

(assert (=> d!2286610 (= res!2978626 (is-Cons!71768 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))

(assert (=> d!2286610 (= (derivationStepZipperUp!2770 (Context!16609 (t!386443 (exprs!8804 c!10532))) lt!2617689) e!4421046)))

(declare-fun b!7386016 () Bool)

(assert (=> b!7386016 (= e!4421045 (nullable!8419 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(declare-fun bm!679877 () Bool)

(assert (=> bm!679877 (= call!679882 (derivationStepZipperDown!3171 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) lt!2617689))))

(declare-fun b!7386017 () Bool)

(assert (=> b!7386017 (= e!4421046 e!4421047)))

(declare-fun c!1372865 () Bool)

(assert (=> b!7386017 (= c!1372865 (is-Cons!71768 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))

(declare-fun b!7386018 () Bool)

(assert (=> b!7386018 (= e!4421047 call!679882)))

(assert (= (and d!2286610 res!2978626) b!7386016))

(assert (= (and d!2286610 c!1372864) b!7386014))

(assert (= (and d!2286610 (not c!1372864)) b!7386017))

(assert (= (and b!7386017 c!1372865) b!7386018))

(assert (= (and b!7386017 (not c!1372865)) b!7386015))

(assert (= (or b!7386014 b!7386018) bm!679877))

(declare-fun m!8034302 () Bool)

(assert (=> b!7386014 m!8034302))

(declare-fun m!8034304 () Bool)

(assert (=> b!7386016 m!8034304))

(declare-fun m!8034306 () Bool)

(assert (=> bm!679877 m!8034306))

(assert (=> b!7385843 d!2286610))

(declare-fun bs!1921986 () Bool)

(declare-fun d!2286618 () Bool)

(assert (= bs!1921986 (and d!2286618 d!2286534)))

(declare-fun lambda!458942 () Int)

(assert (=> bs!1921986 (= lambda!458942 lambda!458924)))

(declare-fun bs!1921987 () Bool)

(assert (= bs!1921987 (and d!2286618 d!2286542)))

(assert (=> bs!1921987 (= lambda!458942 lambda!458926)))

(declare-fun bs!1921988 () Bool)

(assert (= bs!1921988 (and d!2286618 d!2286546)))

(assert (=> bs!1921988 (= lambda!458942 lambda!458927)))

(assert (=> d!2286618 (= (inv!91772 setElem!55901) (forall!18147 (exprs!8804 setElem!55901) lambda!458942))))

(declare-fun bs!1921989 () Bool)

(assert (= bs!1921989 d!2286618))

(declare-fun m!8034308 () Bool)

(assert (=> bs!1921989 m!8034308))

(assert (=> setNonEmpty!55901 d!2286618))

(declare-fun b!7386019 () Bool)

(declare-fun e!4421048 () Bool)

(declare-fun tp!2101472 () Bool)

(assert (=> b!7386019 (= e!4421048 (and tp_is_empty!48991 tp!2101472))))

(assert (=> b!7385853 (= tp!2101394 e!4421048)))

(assert (= (and b!7385853 (is-Cons!71769 (t!386444 (t!386444 s!7927)))) b!7386019))

(declare-fun b!7386030 () Bool)

(declare-fun e!4421051 () Bool)

(assert (=> b!7386030 (= e!4421051 tp_is_empty!48991)))

(declare-fun b!7386031 () Bool)

(declare-fun tp!2101486 () Bool)

(declare-fun tp!2101485 () Bool)

(assert (=> b!7386031 (= e!4421051 (and tp!2101486 tp!2101485))))

(declare-fun b!7386032 () Bool)

(declare-fun tp!2101484 () Bool)

(assert (=> b!7386032 (= e!4421051 tp!2101484)))

(assert (=> b!7385868 (= tp!2101407 e!4421051)))

(declare-fun b!7386033 () Bool)

(declare-fun tp!2101483 () Bool)

(declare-fun tp!2101487 () Bool)

(assert (=> b!7386033 (= e!4421051 (and tp!2101483 tp!2101487))))

(assert (= (and b!7385868 (is-ElementMatch!19364 (h!78216 (exprs!8804 setElem!55895)))) b!7386030))

(assert (= (and b!7385868 (is-Concat!28209 (h!78216 (exprs!8804 setElem!55895)))) b!7386031))

(assert (= (and b!7385868 (is-Star!19364 (h!78216 (exprs!8804 setElem!55895)))) b!7386032))

(assert (= (and b!7385868 (is-Union!19364 (h!78216 (exprs!8804 setElem!55895)))) b!7386033))

(declare-fun b!7386034 () Bool)

(declare-fun e!4421052 () Bool)

(declare-fun tp!2101488 () Bool)

(declare-fun tp!2101489 () Bool)

(assert (=> b!7386034 (= e!4421052 (and tp!2101488 tp!2101489))))

(assert (=> b!7385868 (= tp!2101408 e!4421052)))

(assert (= (and b!7385868 (is-Cons!71768 (t!386443 (exprs!8804 setElem!55895)))) b!7386034))

(declare-fun b!7386035 () Bool)

(declare-fun e!4421053 () Bool)

(declare-fun tp!2101490 () Bool)

(declare-fun tp!2101491 () Bool)

(assert (=> b!7386035 (= e!4421053 (and tp!2101490 tp!2101491))))

(assert (=> b!7385867 (= tp!2101406 e!4421053)))

(assert (= (and b!7385867 (is-Cons!71768 (exprs!8804 setElem!55901))) b!7386035))

(declare-fun b!7386036 () Bool)

(declare-fun e!4421054 () Bool)

(assert (=> b!7386036 (= e!4421054 tp_is_empty!48991)))

(declare-fun b!7386037 () Bool)

(declare-fun tp!2101495 () Bool)

(declare-fun tp!2101494 () Bool)

(assert (=> b!7386037 (= e!4421054 (and tp!2101495 tp!2101494))))

(declare-fun b!7386038 () Bool)

(declare-fun tp!2101493 () Bool)

(assert (=> b!7386038 (= e!4421054 tp!2101493)))

(assert (=> b!7385858 (= tp!2101399 e!4421054)))

(declare-fun b!7386039 () Bool)

(declare-fun tp!2101492 () Bool)

(declare-fun tp!2101496 () Bool)

(assert (=> b!7386039 (= e!4421054 (and tp!2101492 tp!2101496))))

(assert (= (and b!7385858 (is-ElementMatch!19364 (h!78216 (exprs!8804 empty!3451)))) b!7386036))

(assert (= (and b!7385858 (is-Concat!28209 (h!78216 (exprs!8804 empty!3451)))) b!7386037))

(assert (= (and b!7385858 (is-Star!19364 (h!78216 (exprs!8804 empty!3451)))) b!7386038))

(assert (= (and b!7385858 (is-Union!19364 (h!78216 (exprs!8804 empty!3451)))) b!7386039))

(declare-fun b!7386040 () Bool)

(declare-fun e!4421055 () Bool)

(declare-fun tp!2101497 () Bool)

(declare-fun tp!2101498 () Bool)

(assert (=> b!7386040 (= e!4421055 (and tp!2101497 tp!2101498))))

(assert (=> b!7385858 (= tp!2101400 e!4421055)))

(assert (= (and b!7385858 (is-Cons!71768 (t!386443 (exprs!8804 empty!3451)))) b!7386040))

(declare-fun condSetEmpty!55906 () Bool)

(assert (=> setNonEmpty!55901 (= condSetEmpty!55906 (= setRest!55901 (as set.empty (Set Context!16608))))))

(declare-fun setRes!55906 () Bool)

(assert (=> setNonEmpty!55901 (= tp!2101405 setRes!55906)))

(declare-fun setIsEmpty!55906 () Bool)

(assert (=> setIsEmpty!55906 setRes!55906))

(declare-fun e!4421056 () Bool)

(declare-fun setNonEmpty!55906 () Bool)

(declare-fun setElem!55906 () Context!16608)

(declare-fun tp!2101499 () Bool)

(assert (=> setNonEmpty!55906 (= setRes!55906 (and tp!2101499 (inv!91772 setElem!55906) e!4421056))))

(declare-fun setRest!55906 () (Set Context!16608))

(assert (=> setNonEmpty!55906 (= setRest!55901 (set.union (set.insert setElem!55906 (as set.empty (Set Context!16608))) setRest!55906))))

(declare-fun b!7386041 () Bool)

(declare-fun tp!2101500 () Bool)

(assert (=> b!7386041 (= e!4421056 tp!2101500)))

(assert (= (and setNonEmpty!55901 condSetEmpty!55906) setIsEmpty!55906))

(assert (= (and setNonEmpty!55901 (not condSetEmpty!55906)) setNonEmpty!55906))

(assert (= setNonEmpty!55906 b!7386041))

(declare-fun m!8034310 () Bool)

(assert (=> setNonEmpty!55906 m!8034310))

(declare-fun b!7386042 () Bool)

(declare-fun e!4421057 () Bool)

(assert (=> b!7386042 (= e!4421057 tp_is_empty!48991)))

(declare-fun b!7386043 () Bool)

(declare-fun tp!2101504 () Bool)

(declare-fun tp!2101503 () Bool)

(assert (=> b!7386043 (= e!4421057 (and tp!2101504 tp!2101503))))

(declare-fun b!7386044 () Bool)

(declare-fun tp!2101502 () Bool)

(assert (=> b!7386044 (= e!4421057 tp!2101502)))

(assert (=> b!7385869 (= tp!2101409 e!4421057)))

(declare-fun b!7386045 () Bool)

(declare-fun tp!2101501 () Bool)

(declare-fun tp!2101505 () Bool)

(assert (=> b!7386045 (= e!4421057 (and tp!2101501 tp!2101505))))

(assert (= (and b!7385869 (is-ElementMatch!19364 (h!78216 (exprs!8804 c!10532)))) b!7386042))

(assert (= (and b!7385869 (is-Concat!28209 (h!78216 (exprs!8804 c!10532)))) b!7386043))

(assert (= (and b!7385869 (is-Star!19364 (h!78216 (exprs!8804 c!10532)))) b!7386044))

(assert (= (and b!7385869 (is-Union!19364 (h!78216 (exprs!8804 c!10532)))) b!7386045))

(declare-fun b!7386046 () Bool)

(declare-fun e!4421058 () Bool)

(declare-fun tp!2101506 () Bool)

(declare-fun tp!2101507 () Bool)

(assert (=> b!7386046 (= e!4421058 (and tp!2101506 tp!2101507))))

(assert (=> b!7385869 (= tp!2101410 e!4421058)))

(assert (= (and b!7385869 (is-Cons!71768 (t!386443 (exprs!8804 c!10532)))) b!7386046))

(declare-fun b_lambda!284981 () Bool)

(assert (= b_lambda!284965 (or d!2286534 b_lambda!284981)))

(declare-fun bs!1921990 () Bool)

(declare-fun d!2286620 () Bool)

(assert (= bs!1921990 (and d!2286620 d!2286534)))

(declare-fun validRegex!9942 (Regex!19364) Bool)

(assert (=> bs!1921990 (= (dynLambda!29558 lambda!458924 (h!78216 (exprs!8804 empty!3451))) (validRegex!9942 (h!78216 (exprs!8804 empty!3451))))))

(declare-fun m!8034312 () Bool)

(assert (=> bs!1921990 m!8034312))

(assert (=> b!7385902 d!2286620))

(declare-fun b_lambda!284983 () Bool)

(assert (= b_lambda!284971 (or d!2286542 b_lambda!284983)))

(declare-fun bs!1921991 () Bool)

(declare-fun d!2286622 () Bool)

(assert (= bs!1921991 (and d!2286622 d!2286542)))

(assert (=> bs!1921991 (= (dynLambda!29558 lambda!458926 (h!78216 (exprs!8804 setElem!55895))) (validRegex!9942 (h!78216 (exprs!8804 setElem!55895))))))

(declare-fun m!8034314 () Bool)

(assert (=> bs!1921991 m!8034314))

(assert (=> b!7385996 d!2286622))

(declare-fun b_lambda!284985 () Bool)

(assert (= b_lambda!284973 (or d!2286546 b_lambda!284985)))

(declare-fun bs!1921992 () Bool)

(declare-fun d!2286624 () Bool)

(assert (= bs!1921992 (and d!2286624 d!2286546)))

(assert (=> bs!1921992 (= (dynLambda!29558 lambda!458927 (h!78216 (exprs!8804 c!10532))) (validRegex!9942 (h!78216 (exprs!8804 c!10532))))))

(declare-fun m!8034316 () Bool)

(assert (=> bs!1921992 m!8034316))

(assert (=> b!7386012 d!2286624))

(push 1)

(assert (not d!2286582))

(assert (not b!7386044))

(assert (not b!7386038))

(assert (not d!2286618))

(assert (not b!7386046))

(assert (not b!7386037))

(assert (not b!7386040))

(assert (not b!7386031))

(assert (not b!7386045))

(assert (not b!7386014))

(assert (not b!7386013))

(assert (not b!7385903))

(assert (not bs!1921990))

(assert (not b!7385929))

(assert (not b!7386016))

(assert (not d!2286604))

(assert (not bm!679876))

(assert (not b!7386019))

(assert (not b!7385997))

(assert (not b_lambda!284981))

(assert tp_is_empty!48991)

(assert (not b_lambda!284983))

(assert (not b_lambda!284985))

(assert (not b!7386039))

(assert (not b!7386033))

(assert (not b!7385973))

(assert (not b!7386041))

(assert (not b!7386043))

(assert (not bs!1921992))

(assert (not bs!1921991))

(assert (not b!7386035))

(assert (not d!2286584))

(assert (not d!2286606))

(assert (not bm!679873))

(assert (not b!7386034))

(assert (not setNonEmpty!55906))

(assert (not d!2286580))

(assert (not bm!679877))

(assert (not b!7386032))

(assert (not bm!679875))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286680 () Bool)

(assert (=> d!2286680 true))

(declare-fun setRes!55914 () Bool)

(assert (=> d!2286680 setRes!55914))

(declare-fun condSetEmpty!55914 () Bool)

(declare-fun res!2978691 () (Set Context!16608))

(assert (=> d!2286680 (= condSetEmpty!55914 (= res!2978691 (as set.empty (Set Context!16608))))))

(assert (=> d!2286680 (= (choose!57368 z!3451 lambda!458915) res!2978691)))

(declare-fun setIsEmpty!55914 () Bool)

(assert (=> setIsEmpty!55914 setRes!55914))

(declare-fun tp!2101630 () Bool)

(declare-fun e!4421177 () Bool)

(declare-fun setElem!55914 () Context!16608)

(declare-fun setNonEmpty!55914 () Bool)

(assert (=> setNonEmpty!55914 (= setRes!55914 (and tp!2101630 (inv!91772 setElem!55914) e!4421177))))

(declare-fun setRest!55914 () (Set Context!16608))

(assert (=> setNonEmpty!55914 (= res!2978691 (set.union (set.insert setElem!55914 (as set.empty (Set Context!16608))) setRest!55914))))

(declare-fun b!7386254 () Bool)

(declare-fun tp!2101631 () Bool)

(assert (=> b!7386254 (= e!4421177 tp!2101631)))

(assert (= (and d!2286680 condSetEmpty!55914) setIsEmpty!55914))

(assert (= (and d!2286680 (not condSetEmpty!55914)) setNonEmpty!55914))

(assert (= setNonEmpty!55914 b!7386254))

(declare-fun m!8034426 () Bool)

(assert (=> setNonEmpty!55914 m!8034426))

(assert (=> d!2286606 d!2286680))

(declare-fun d!2286682 () Bool)

(assert (=> d!2286682 (= (nullable!8419 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (nullableFct!3384 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(declare-fun bs!1922015 () Bool)

(assert (= bs!1922015 d!2286682))

(declare-fun m!8034428 () Bool)

(assert (=> bs!1922015 m!8034428))

(assert (=> b!7386016 d!2286682))

(declare-fun d!2286684 () Bool)

(declare-fun res!2978692 () Bool)

(declare-fun e!4421178 () Bool)

(assert (=> d!2286684 (=> res!2978692 e!4421178)))

(assert (=> d!2286684 (= res!2978692 (is-Nil!71768 (t!386443 (exprs!8804 setElem!55895))))))

(assert (=> d!2286684 (= (forall!18147 (t!386443 (exprs!8804 setElem!55895)) lambda!458926) e!4421178)))

(declare-fun b!7386255 () Bool)

(declare-fun e!4421179 () Bool)

(assert (=> b!7386255 (= e!4421178 e!4421179)))

(declare-fun res!2978693 () Bool)

(assert (=> b!7386255 (=> (not res!2978693) (not e!4421179))))

(assert (=> b!7386255 (= res!2978693 (dynLambda!29558 lambda!458926 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))))

(declare-fun b!7386256 () Bool)

(assert (=> b!7386256 (= e!4421179 (forall!18147 (t!386443 (t!386443 (exprs!8804 setElem!55895))) lambda!458926))))

(assert (= (and d!2286684 (not res!2978692)) b!7386255))

(assert (= (and b!7386255 res!2978693) b!7386256))

(declare-fun b_lambda!285003 () Bool)

(assert (=> (not b_lambda!285003) (not b!7386255)))

(declare-fun m!8034430 () Bool)

(assert (=> b!7386255 m!8034430))

(declare-fun m!8034432 () Bool)

(assert (=> b!7386256 m!8034432))

(assert (=> b!7385997 d!2286684))

(declare-fun d!2286686 () Bool)

(declare-fun res!2978694 () Bool)

(declare-fun e!4421180 () Bool)

(assert (=> d!2286686 (=> res!2978694 e!4421180)))

(assert (=> d!2286686 (= res!2978694 (is-Nil!71768 (exprs!8804 setElem!55901)))))

(assert (=> d!2286686 (= (forall!18147 (exprs!8804 setElem!55901) lambda!458942) e!4421180)))

(declare-fun b!7386257 () Bool)

(declare-fun e!4421181 () Bool)

(assert (=> b!7386257 (= e!4421180 e!4421181)))

(declare-fun res!2978695 () Bool)

(assert (=> b!7386257 (=> (not res!2978695) (not e!4421181))))

(assert (=> b!7386257 (= res!2978695 (dynLambda!29558 lambda!458942 (h!78216 (exprs!8804 setElem!55901))))))

(declare-fun b!7386258 () Bool)

(assert (=> b!7386258 (= e!4421181 (forall!18147 (t!386443 (exprs!8804 setElem!55901)) lambda!458942))))

(assert (= (and d!2286686 (not res!2978694)) b!7386257))

(assert (= (and b!7386257 res!2978695) b!7386258))

(declare-fun b_lambda!285005 () Bool)

(assert (=> (not b_lambda!285005) (not b!7386257)))

(declare-fun m!8034434 () Bool)

(assert (=> b!7386257 m!8034434))

(declare-fun m!8034436 () Bool)

(assert (=> b!7386258 m!8034436))

(assert (=> d!2286618 d!2286686))

(declare-fun bm!679918 () Bool)

(declare-fun call!679923 () List!71892)

(declare-fun call!679927 () List!71892)

(assert (=> bm!679918 (= call!679923 call!679927)))

(declare-fun b!7386259 () Bool)

(declare-fun e!4421183 () (Set Context!16608))

(declare-fun call!679926 () (Set Context!16608))

(assert (=> b!7386259 (= e!4421183 call!679926)))

(declare-fun b!7386260 () Bool)

(assert (=> b!7386260 (= e!4421183 (as set.empty (Set Context!16608)))))

(declare-fun bm!679919 () Bool)

(declare-fun call!679925 () (Set Context!16608))

(declare-fun call!679924 () (Set Context!16608))

(assert (=> bm!679919 (= call!679925 call!679924)))

(declare-fun bm!679920 () Bool)

(declare-fun c!1372896 () Bool)

(declare-fun c!1372899 () Bool)

(declare-fun c!1372900 () Bool)

(assert (=> bm!679920 (= call!679924 (derivationStepZipperDown!3171 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (ite (or c!1372896 c!1372899) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679923)) lt!2617689))))

(declare-fun bm!679921 () Bool)

(assert (=> bm!679921 (= call!679926 call!679925)))

(declare-fun b!7386261 () Bool)

(declare-fun e!4421185 () Bool)

(assert (=> b!7386261 (= e!4421185 (nullable!8419 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))

(declare-fun d!2286688 () Bool)

(declare-fun c!1372898 () Bool)

(assert (=> d!2286688 (= c!1372898 (and (is-ElementMatch!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (= (c!1372812 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) lt!2617689)))))

(declare-fun e!4421184 () (Set Context!16608))

(assert (=> d!2286688 (= (derivationStepZipperDown!3171 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) lt!2617689) e!4421184)))

(declare-fun b!7386262 () Bool)

(declare-fun e!4421186 () (Set Context!16608))

(assert (=> b!7386262 (= e!4421186 call!679926)))

(declare-fun bm!679922 () Bool)

(assert (=> bm!679922 (= call!679927 ($colon$colon!3322 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))) (ite (or c!1372899 c!1372900) (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))

(declare-fun b!7386263 () Bool)

(declare-fun e!4421182 () (Set Context!16608))

(assert (=> b!7386263 (= e!4421184 e!4421182)))

(assert (=> b!7386263 (= c!1372896 (is-Union!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(declare-fun call!679928 () (Set Context!16608))

(declare-fun bm!679923 () Bool)

(assert (=> bm!679923 (= call!679928 (derivationStepZipperDown!3171 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))) (ite c!1372896 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679927)) lt!2617689))))

(declare-fun b!7386264 () Bool)

(assert (=> b!7386264 (= c!1372899 e!4421185)))

(declare-fun res!2978696 () Bool)

(assert (=> b!7386264 (=> (not res!2978696) (not e!4421185))))

(assert (=> b!7386264 (= res!2978696 (is-Concat!28209 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(declare-fun e!4421187 () (Set Context!16608))

(assert (=> b!7386264 (= e!4421182 e!4421187)))

(declare-fun b!7386265 () Bool)

(declare-fun c!1372897 () Bool)

(assert (=> b!7386265 (= c!1372897 (is-Star!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(assert (=> b!7386265 (= e!4421186 e!4421183)))

(declare-fun b!7386266 () Bool)

(assert (=> b!7386266 (= e!4421182 (set.union call!679924 call!679928))))

(declare-fun b!7386267 () Bool)

(assert (=> b!7386267 (= e!4421187 e!4421186)))

(assert (=> b!7386267 (= c!1372900 (is-Concat!28209 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(declare-fun b!7386268 () Bool)

(assert (=> b!7386268 (= e!4421184 (set.insert (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (as set.empty (Set Context!16608))))))

(declare-fun b!7386269 () Bool)

(assert (=> b!7386269 (= e!4421187 (set.union call!679928 call!679925))))

(assert (= (and d!2286688 c!1372898) b!7386268))

(assert (= (and d!2286688 (not c!1372898)) b!7386263))

(assert (= (and b!7386263 c!1372896) b!7386266))

(assert (= (and b!7386263 (not c!1372896)) b!7386264))

(assert (= (and b!7386264 res!2978696) b!7386261))

(assert (= (and b!7386264 c!1372899) b!7386269))

(assert (= (and b!7386264 (not c!1372899)) b!7386267))

(assert (= (and b!7386267 c!1372900) b!7386262))

(assert (= (and b!7386267 (not c!1372900)) b!7386265))

(assert (= (and b!7386265 c!1372897) b!7386259))

(assert (= (and b!7386265 (not c!1372897)) b!7386260))

(assert (= (or b!7386262 b!7386259) bm!679918))

(assert (= (or b!7386262 b!7386259) bm!679921))

(assert (= (or b!7386269 bm!679918) bm!679922))

(assert (= (or b!7386269 bm!679921) bm!679919))

(assert (= (or b!7386266 bm!679919) bm!679920))

(assert (= (or b!7386266 b!7386269) bm!679923))

(declare-fun m!8034438 () Bool)

(assert (=> bm!679920 m!8034438))

(declare-fun m!8034440 () Bool)

(assert (=> b!7386268 m!8034440))

(declare-fun m!8034442 () Bool)

(assert (=> bm!679923 m!8034442))

(declare-fun m!8034444 () Bool)

(assert (=> b!7386261 m!8034444))

(declare-fun m!8034446 () Bool)

(assert (=> bm!679922 m!8034446))

(assert (=> bm!679877 d!2286688))

(declare-fun d!2286690 () Bool)

(assert (=> d!2286690 true))

(declare-fun setRes!55915 () Bool)

(assert (=> d!2286690 setRes!55915))

(declare-fun condSetEmpty!55915 () Bool)

(declare-fun res!2978697 () (Set Context!16608))

(assert (=> d!2286690 (= condSetEmpty!55915 (= res!2978697 (as set.empty (Set Context!16608))))))

(assert (=> d!2286690 (= (choose!57368 z!3451 lambda!458909) res!2978697)))

(declare-fun setIsEmpty!55915 () Bool)

(assert (=> setIsEmpty!55915 setRes!55915))

(declare-fun e!4421188 () Bool)

(declare-fun setElem!55915 () Context!16608)

(declare-fun setNonEmpty!55915 () Bool)

(declare-fun tp!2101632 () Bool)

(assert (=> setNonEmpty!55915 (= setRes!55915 (and tp!2101632 (inv!91772 setElem!55915) e!4421188))))

(declare-fun setRest!55915 () (Set Context!16608))

(assert (=> setNonEmpty!55915 (= res!2978697 (set.union (set.insert setElem!55915 (as set.empty (Set Context!16608))) setRest!55915))))

(declare-fun b!7386270 () Bool)

(declare-fun tp!2101633 () Bool)

(assert (=> b!7386270 (= e!4421188 tp!2101633)))

(assert (= (and d!2286690 condSetEmpty!55915) setIsEmpty!55915))

(assert (= (and d!2286690 (not condSetEmpty!55915)) setNonEmpty!55915))

(assert (= setNonEmpty!55915 b!7386270))

(declare-fun m!8034448 () Bool)

(assert (=> setNonEmpty!55915 m!8034448))

(assert (=> d!2286580 d!2286690))

(declare-fun bm!679924 () Bool)

(declare-fun call!679929 () List!71892)

(declare-fun call!679933 () List!71892)

(assert (=> bm!679924 (= call!679929 call!679933)))

(declare-fun b!7386271 () Bool)

(declare-fun e!4421190 () (Set Context!16608))

(declare-fun call!679932 () (Set Context!16608))

(assert (=> b!7386271 (= e!4421190 call!679932)))

(declare-fun b!7386272 () Bool)

(assert (=> b!7386272 (= e!4421190 (as set.empty (Set Context!16608)))))

(declare-fun bm!679925 () Bool)

(declare-fun call!679931 () (Set Context!16608))

(declare-fun call!679930 () (Set Context!16608))

(assert (=> bm!679925 (= call!679931 call!679930)))

(declare-fun c!1372905 () Bool)

(declare-fun c!1372904 () Bool)

(declare-fun bm!679926 () Bool)

(declare-fun c!1372901 () Bool)

(assert (=> bm!679926 (= call!679930 (derivationStepZipperDown!3171 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))) (ite (or c!1372901 c!1372904) (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679929)) lt!2617689))))

(declare-fun bm!679927 () Bool)

(assert (=> bm!679927 (= call!679932 call!679931)))

(declare-fun e!4421192 () Bool)

(declare-fun b!7386273 () Bool)

(assert (=> b!7386273 (= e!4421192 (nullable!8419 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))

(declare-fun d!2286692 () Bool)

(declare-fun c!1372903 () Bool)

(assert (=> d!2286692 (= c!1372903 (and (is-ElementMatch!19364 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (= (c!1372812 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) lt!2617689)))))

(declare-fun e!4421191 () (Set Context!16608))

(assert (=> d!2286692 (= (derivationStepZipperDown!3171 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))) (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) lt!2617689) e!4421191)))

(declare-fun b!7386274 () Bool)

(declare-fun e!4421193 () (Set Context!16608))

(assert (=> b!7386274 (= e!4421193 call!679932)))

(declare-fun bm!679928 () Bool)

(assert (=> bm!679928 (= call!679933 ($colon$colon!3322 (exprs!8804 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876))) (ite (or c!1372904 c!1372905) (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))

(declare-fun b!7386275 () Bool)

(declare-fun e!4421189 () (Set Context!16608))

(assert (=> b!7386275 (= e!4421191 e!4421189)))

(assert (=> b!7386275 (= c!1372901 (is-Union!19364 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))

(declare-fun call!679934 () (Set Context!16608))

(declare-fun bm!679929 () Bool)

(assert (=> bm!679929 (= call!679934 (derivationStepZipperDown!3171 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))) (ite c!1372901 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679933)) lt!2617689))))

(declare-fun b!7386276 () Bool)

(assert (=> b!7386276 (= c!1372904 e!4421192)))

(declare-fun res!2978698 () Bool)

(assert (=> b!7386276 (=> (not res!2978698) (not e!4421192))))

(assert (=> b!7386276 (= res!2978698 (is-Concat!28209 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))

(declare-fun e!4421194 () (Set Context!16608))

(assert (=> b!7386276 (= e!4421189 e!4421194)))

(declare-fun b!7386277 () Bool)

(declare-fun c!1372902 () Bool)

(assert (=> b!7386277 (= c!1372902 (is-Star!19364 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))

(assert (=> b!7386277 (= e!4421193 e!4421190)))

(declare-fun b!7386278 () Bool)

(assert (=> b!7386278 (= e!4421189 (set.union call!679930 call!679934))))

(declare-fun b!7386279 () Bool)

(assert (=> b!7386279 (= e!4421194 e!4421193)))

(assert (=> b!7386279 (= c!1372905 (is-Concat!28209 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))

(declare-fun b!7386280 () Bool)

(assert (=> b!7386280 (= e!4421191 (set.insert (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (as set.empty (Set Context!16608))))))

(declare-fun b!7386281 () Bool)

(assert (=> b!7386281 (= e!4421194 (set.union call!679934 call!679931))))

(assert (= (and d!2286692 c!1372903) b!7386280))

(assert (= (and d!2286692 (not c!1372903)) b!7386275))

(assert (= (and b!7386275 c!1372901) b!7386278))

(assert (= (and b!7386275 (not c!1372901)) b!7386276))

(assert (= (and b!7386276 res!2978698) b!7386273))

(assert (= (and b!7386276 c!1372904) b!7386281))

(assert (= (and b!7386276 (not c!1372904)) b!7386279))

(assert (= (and b!7386279 c!1372905) b!7386274))

(assert (= (and b!7386279 (not c!1372905)) b!7386277))

(assert (= (and b!7386277 c!1372902) b!7386271))

(assert (= (and b!7386277 (not c!1372902)) b!7386272))

(assert (= (or b!7386274 b!7386271) bm!679924))

(assert (= (or b!7386274 b!7386271) bm!679927))

(assert (= (or b!7386281 bm!679924) bm!679928))

(assert (= (or b!7386281 bm!679927) bm!679925))

(assert (= (or b!7386278 bm!679925) bm!679926))

(assert (= (or b!7386278 b!7386281) bm!679929))

(declare-fun m!8034450 () Bool)

(assert (=> bm!679926 m!8034450))

(declare-fun m!8034452 () Bool)

(assert (=> b!7386280 m!8034452))

(declare-fun m!8034454 () Bool)

(assert (=> bm!679929 m!8034454))

(declare-fun m!8034456 () Bool)

(assert (=> b!7386273 m!8034456))

(declare-fun m!8034458 () Bool)

(assert (=> bm!679928 m!8034458))

(assert (=> bm!679873 d!2286692))

(declare-fun d!2286694 () Bool)

(declare-fun res!2978699 () Bool)

(declare-fun e!4421195 () Bool)

(assert (=> d!2286694 (=> res!2978699 e!4421195)))

(assert (=> d!2286694 (= res!2978699 (is-Nil!71768 (t!386443 (exprs!8804 c!10532))))))

(assert (=> d!2286694 (= (forall!18147 (t!386443 (exprs!8804 c!10532)) lambda!458927) e!4421195)))

(declare-fun b!7386282 () Bool)

(declare-fun e!4421196 () Bool)

(assert (=> b!7386282 (= e!4421195 e!4421196)))

(declare-fun res!2978700 () Bool)

(assert (=> b!7386282 (=> (not res!2978700) (not e!4421196))))

(assert (=> b!7386282 (= res!2978700 (dynLambda!29558 lambda!458927 (h!78216 (t!386443 (exprs!8804 c!10532)))))))

(declare-fun b!7386283 () Bool)

(assert (=> b!7386283 (= e!4421196 (forall!18147 (t!386443 (t!386443 (exprs!8804 c!10532))) lambda!458927))))

(assert (= (and d!2286694 (not res!2978699)) b!7386282))

(assert (= (and b!7386282 res!2978700) b!7386283))

(declare-fun b_lambda!285007 () Bool)

(assert (=> (not b_lambda!285007) (not b!7386282)))

(declare-fun m!8034460 () Bool)

(assert (=> b!7386282 m!8034460))

(declare-fun m!8034462 () Bool)

(assert (=> b!7386283 m!8034462))

(assert (=> b!7386013 d!2286694))

(declare-fun d!2286696 () Bool)

(assert (=> d!2286696 (= (nullable!8419 (regOne!39240 (h!78216 (exprs!8804 c!10532)))) (nullableFct!3384 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))

(declare-fun bs!1922016 () Bool)

(assert (= bs!1922016 d!2286696))

(declare-fun m!8034464 () Bool)

(assert (=> bs!1922016 m!8034464))

(assert (=> b!7385973 d!2286696))

(declare-fun b!7386298 () Bool)

(declare-fun e!4421214 () Bool)

(declare-fun call!679939 () Bool)

(assert (=> b!7386298 (= e!4421214 call!679939)))

(declare-fun b!7386299 () Bool)

(declare-fun e!4421209 () Bool)

(declare-fun e!4421210 () Bool)

(assert (=> b!7386299 (= e!4421209 e!4421210)))

(declare-fun res!2978711 () Bool)

(assert (=> b!7386299 (= res!2978711 call!679939)))

(assert (=> b!7386299 (=> (not res!2978711) (not e!4421210))))

(declare-fun b!7386300 () Bool)

(declare-fun e!4421213 () Bool)

(assert (=> b!7386300 (= e!4421213 e!4421209)))

(declare-fun c!1372908 () Bool)

(assert (=> b!7386300 (= c!1372908 (is-Union!19364 (h!78216 (exprs!8804 c!10532))))))

(declare-fun b!7386301 () Bool)

(declare-fun call!679940 () Bool)

(assert (=> b!7386301 (= e!4421210 call!679940)))

(declare-fun b!7386302 () Bool)

(declare-fun e!4421212 () Bool)

(declare-fun e!4421211 () Bool)

(assert (=> b!7386302 (= e!4421212 e!4421211)))

(declare-fun res!2978714 () Bool)

(assert (=> b!7386302 (=> (not res!2978714) (not e!4421211))))

(assert (=> b!7386302 (= res!2978714 (and (not (is-EmptyLang!19364 (h!78216 (exprs!8804 c!10532)))) (not (is-ElementMatch!19364 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun b!7386303 () Bool)

(assert (=> b!7386303 (= e!4421211 e!4421213)))

(declare-fun res!2978713 () Bool)

(assert (=> b!7386303 (=> res!2978713 e!4421213)))

(assert (=> b!7386303 (= res!2978713 (is-Star!19364 (h!78216 (exprs!8804 c!10532))))))

(declare-fun bm!679935 () Bool)

(assert (=> bm!679935 (= call!679939 (nullable!8419 (ite c!1372908 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun b!7386304 () Bool)

(assert (=> b!7386304 (= e!4421209 e!4421214)))

(declare-fun res!2978715 () Bool)

(assert (=> b!7386304 (= res!2978715 call!679940)))

(assert (=> b!7386304 (=> res!2978715 e!4421214)))

(declare-fun d!2286698 () Bool)

(declare-fun res!2978712 () Bool)

(assert (=> d!2286698 (=> res!2978712 e!4421212)))

(assert (=> d!2286698 (= res!2978712 (is-EmptyExpr!19364 (h!78216 (exprs!8804 c!10532))))))

(assert (=> d!2286698 (= (nullableFct!3384 (h!78216 (exprs!8804 c!10532))) e!4421212)))

(declare-fun bm!679934 () Bool)

(assert (=> bm!679934 (= call!679940 (nullable!8419 (ite c!1372908 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))))))

(assert (= (and d!2286698 (not res!2978712)) b!7386302))

(assert (= (and b!7386302 res!2978714) b!7386303))

(assert (= (and b!7386303 (not res!2978713)) b!7386300))

(assert (= (and b!7386300 c!1372908) b!7386304))

(assert (= (and b!7386300 (not c!1372908)) b!7386299))

(assert (= (and b!7386304 (not res!2978715)) b!7386298))

(assert (= (and b!7386299 res!2978711) b!7386301))

(assert (= (or b!7386298 b!7386299) bm!679935))

(assert (= (or b!7386304 b!7386301) bm!679934))

(declare-fun m!8034466 () Bool)

(assert (=> bm!679935 m!8034466))

(declare-fun m!8034468 () Bool)

(assert (=> bm!679934 m!8034468))

(assert (=> d!2286604 d!2286698))

(declare-fun d!2286700 () Bool)

(declare-fun res!2978716 () Bool)

(declare-fun e!4421215 () Bool)

(assert (=> d!2286700 (=> res!2978716 e!4421215)))

(assert (=> d!2286700 (= res!2978716 (is-Nil!71768 (t!386443 (exprs!8804 empty!3451))))))

(assert (=> d!2286700 (= (forall!18147 (t!386443 (exprs!8804 empty!3451)) lambda!458924) e!4421215)))

(declare-fun b!7386305 () Bool)

(declare-fun e!4421216 () Bool)

(assert (=> b!7386305 (= e!4421215 e!4421216)))

(declare-fun res!2978717 () Bool)

(assert (=> b!7386305 (=> (not res!2978717) (not e!4421216))))

(assert (=> b!7386305 (= res!2978717 (dynLambda!29558 lambda!458924 (h!78216 (t!386443 (exprs!8804 empty!3451)))))))

(declare-fun b!7386306 () Bool)

(assert (=> b!7386306 (= e!4421216 (forall!18147 (t!386443 (t!386443 (exprs!8804 empty!3451))) lambda!458924))))

(assert (= (and d!2286700 (not res!2978716)) b!7386305))

(assert (= (and b!7386305 res!2978717) b!7386306))

(declare-fun b_lambda!285009 () Bool)

(assert (=> (not b_lambda!285009) (not b!7386305)))

(declare-fun m!8034470 () Bool)

(assert (=> b!7386305 m!8034470))

(declare-fun m!8034472 () Bool)

(assert (=> b!7386306 m!8034472))

(assert (=> b!7385903 d!2286700))

(declare-fun b!7386325 () Bool)

(declare-fun e!4421231 () Bool)

(declare-fun e!4421235 () Bool)

(assert (=> b!7386325 (= e!4421231 e!4421235)))

(declare-fun c!1372914 () Bool)

(assert (=> b!7386325 (= c!1372914 (is-Star!19364 (h!78216 (exprs!8804 setElem!55895))))))

(declare-fun d!2286702 () Bool)

(declare-fun res!2978730 () Bool)

(assert (=> d!2286702 (=> res!2978730 e!4421231)))

(assert (=> d!2286702 (= res!2978730 (is-ElementMatch!19364 (h!78216 (exprs!8804 setElem!55895))))))

(assert (=> d!2286702 (= (validRegex!9942 (h!78216 (exprs!8804 setElem!55895))) e!4421231)))

(declare-fun b!7386326 () Bool)

(declare-fun e!4421232 () Bool)

(declare-fun call!679948 () Bool)

(assert (=> b!7386326 (= e!4421232 call!679948)))

(declare-fun b!7386327 () Bool)

(declare-fun e!4421237 () Bool)

(assert (=> b!7386327 (= e!4421235 e!4421237)))

(declare-fun res!2978731 () Bool)

(assert (=> b!7386327 (= res!2978731 (not (nullable!8419 (reg!19693 (h!78216 (exprs!8804 setElem!55895))))))))

(assert (=> b!7386327 (=> (not res!2978731) (not e!4421237))))

(declare-fun bm!679942 () Bool)

(declare-fun call!679949 () Bool)

(declare-fun call!679947 () Bool)

(assert (=> bm!679942 (= call!679949 call!679947)))

(declare-fun b!7386328 () Bool)

(assert (=> b!7386328 (= e!4421237 call!679947)))

(declare-fun bm!679943 () Bool)

(declare-fun c!1372913 () Bool)

(assert (=> bm!679943 (= call!679947 (validRegex!9942 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))))))

(declare-fun b!7386329 () Bool)

(declare-fun e!4421236 () Bool)

(assert (=> b!7386329 (= e!4421236 call!679948)))

(declare-fun b!7386330 () Bool)

(declare-fun e!4421233 () Bool)

(assert (=> b!7386330 (= e!4421233 e!4421232)))

(declare-fun res!2978729 () Bool)

(assert (=> b!7386330 (=> (not res!2978729) (not e!4421232))))

(assert (=> b!7386330 (= res!2978729 call!679949)))

(declare-fun b!7386331 () Bool)

(declare-fun res!2978732 () Bool)

(assert (=> b!7386331 (=> (not res!2978732) (not e!4421236))))

(assert (=> b!7386331 (= res!2978732 call!679949)))

(declare-fun e!4421234 () Bool)

(assert (=> b!7386331 (= e!4421234 e!4421236)))

(declare-fun b!7386332 () Bool)

(declare-fun res!2978728 () Bool)

(assert (=> b!7386332 (=> res!2978728 e!4421233)))

(assert (=> b!7386332 (= res!2978728 (not (is-Concat!28209 (h!78216 (exprs!8804 setElem!55895)))))))

(assert (=> b!7386332 (= e!4421234 e!4421233)))

(declare-fun b!7386333 () Bool)

(assert (=> b!7386333 (= e!4421235 e!4421234)))

(assert (=> b!7386333 (= c!1372913 (is-Union!19364 (h!78216 (exprs!8804 setElem!55895))))))

(declare-fun bm!679944 () Bool)

(assert (=> bm!679944 (= call!679948 (validRegex!9942 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))))))

(assert (= (and d!2286702 (not res!2978730)) b!7386325))

(assert (= (and b!7386325 c!1372914) b!7386327))

(assert (= (and b!7386325 (not c!1372914)) b!7386333))

(assert (= (and b!7386327 res!2978731) b!7386328))

(assert (= (and b!7386333 c!1372913) b!7386331))

(assert (= (and b!7386333 (not c!1372913)) b!7386332))

(assert (= (and b!7386331 res!2978732) b!7386329))

(assert (= (and b!7386332 (not res!2978728)) b!7386330))

(assert (= (and b!7386330 res!2978729) b!7386326))

(assert (= (or b!7386331 b!7386330) bm!679942))

(assert (= (or b!7386329 b!7386326) bm!679944))

(assert (= (or b!7386328 bm!679942) bm!679943))

(declare-fun m!8034474 () Bool)

(assert (=> b!7386327 m!8034474))

(declare-fun m!8034476 () Bool)

(assert (=> bm!679943 m!8034476))

(declare-fun m!8034478 () Bool)

(assert (=> bm!679944 m!8034478))

(assert (=> bs!1921991 d!2286702))

(declare-fun bs!1922017 () Bool)

(declare-fun d!2286704 () Bool)

(assert (= bs!1922017 (and d!2286704 d!2286534)))

(declare-fun lambda!458948 () Int)

(assert (=> bs!1922017 (= lambda!458948 lambda!458924)))

(declare-fun bs!1922018 () Bool)

(assert (= bs!1922018 (and d!2286704 d!2286542)))

(assert (=> bs!1922018 (= lambda!458948 lambda!458926)))

(declare-fun bs!1922019 () Bool)

(assert (= bs!1922019 (and d!2286704 d!2286546)))

(assert (=> bs!1922019 (= lambda!458948 lambda!458927)))

(declare-fun bs!1922020 () Bool)

(assert (= bs!1922020 (and d!2286704 d!2286618)))

(assert (=> bs!1922020 (= lambda!458948 lambda!458942)))

(assert (=> d!2286704 (= (inv!91772 setElem!55906) (forall!18147 (exprs!8804 setElem!55906) lambda!458948))))

(declare-fun bs!1922021 () Bool)

(assert (= bs!1922021 d!2286704))

(declare-fun m!8034480 () Bool)

(assert (=> bs!1922021 m!8034480))

(assert (=> setNonEmpty!55906 d!2286704))

(assert (=> d!2286584 d!2286580))

(declare-fun d!2286706 () Bool)

(declare-fun lt!2617712 () Bool)

(assert (=> d!2286706 (= lt!2617712 (exists!4724 (toList!11727 z!3451) lambda!458937))))

(assert (=> d!2286706 (= lt!2617712 (choose!57369 z!3451 lambda!458937))))

(assert (=> d!2286706 (= (exists!4722 z!3451 lambda!458937) lt!2617712)))

(declare-fun bs!1922022 () Bool)

(assert (= bs!1922022 d!2286706))

(assert (=> bs!1922022 m!8034228))

(assert (=> bs!1922022 m!8034228))

(declare-fun m!8034482 () Bool)

(assert (=> bs!1922022 m!8034482))

(declare-fun m!8034484 () Bool)

(assert (=> bs!1922022 m!8034484))

(assert (=> d!2286584 d!2286706))

(declare-fun bs!1922023 () Bool)

(declare-fun d!2286708 () Bool)

(assert (= bs!1922023 (and d!2286708 d!2286542)))

(declare-fun lambda!458949 () Int)

(assert (=> bs!1922023 (= lambda!458949 lambda!458926)))

(declare-fun bs!1922024 () Bool)

(assert (= bs!1922024 (and d!2286708 d!2286618)))

(assert (=> bs!1922024 (= lambda!458949 lambda!458942)))

(declare-fun bs!1922025 () Bool)

(assert (= bs!1922025 (and d!2286708 d!2286534)))

(assert (=> bs!1922025 (= lambda!458949 lambda!458924)))

(declare-fun bs!1922026 () Bool)

(assert (= bs!1922026 (and d!2286708 d!2286704)))

(assert (=> bs!1922026 (= lambda!458949 lambda!458948)))

(declare-fun bs!1922027 () Bool)

(assert (= bs!1922027 (and d!2286708 d!2286546)))

(assert (=> bs!1922027 (= lambda!458949 lambda!458927)))

(assert (=> d!2286708 (= (inv!91772 _$3!507) (forall!18147 (exprs!8804 _$3!507) lambda!458949))))

(declare-fun bs!1922028 () Bool)

(assert (= bs!1922028 d!2286708))

(declare-fun m!8034486 () Bool)

(assert (=> bs!1922028 m!8034486))

(assert (=> d!2286584 d!2286708))

(declare-fun d!2286710 () Bool)

(assert (=> d!2286710 (= ($colon$colon!3322 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))) (ite (or c!1372862 c!1372863) (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (h!78216 (exprs!8804 c!10532)))) (Cons!71768 (ite (or c!1372862 c!1372863) (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (h!78216 (exprs!8804 c!10532))) (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))

(assert (=> bm!679875 d!2286710))

(declare-fun bm!679945 () Bool)

(declare-fun call!679950 () List!71892)

(declare-fun call!679954 () List!71892)

(assert (=> bm!679945 (= call!679950 call!679954)))

(declare-fun b!7386334 () Bool)

(declare-fun e!4421239 () (Set Context!16608))

(declare-fun call!679953 () (Set Context!16608))

(assert (=> b!7386334 (= e!4421239 call!679953)))

(declare-fun b!7386335 () Bool)

(assert (=> b!7386335 (= e!4421239 (as set.empty (Set Context!16608)))))

(declare-fun bm!679946 () Bool)

(declare-fun call!679952 () (Set Context!16608))

(declare-fun call!679951 () (Set Context!16608))

(assert (=> bm!679946 (= call!679952 call!679951)))

(declare-fun c!1372919 () Bool)

(declare-fun c!1372915 () Bool)

(declare-fun bm!679947 () Bool)

(declare-fun c!1372918 () Bool)

(assert (=> bm!679947 (= call!679951 (derivationStepZipperDown!3171 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))) (ite (or c!1372915 c!1372918) (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679950)) lt!2617689))))

(declare-fun bm!679948 () Bool)

(assert (=> bm!679948 (= call!679953 call!679952)))

(declare-fun b!7386336 () Bool)

(declare-fun e!4421241 () Bool)

(assert (=> b!7386336 (= e!4421241 (nullable!8419 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(declare-fun d!2286712 () Bool)

(declare-fun c!1372917 () Bool)

(assert (=> d!2286712 (= c!1372917 (and (is-ElementMatch!19364 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (= (c!1372812 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) lt!2617689)))))

(declare-fun e!4421240 () (Set Context!16608))

(assert (=> d!2286712 (= (derivationStepZipperDown!3171 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))) (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) lt!2617689) e!4421240)))

(declare-fun b!7386337 () Bool)

(declare-fun e!4421242 () (Set Context!16608))

(assert (=> b!7386337 (= e!4421242 call!679953)))

(declare-fun bm!679949 () Bool)

(assert (=> bm!679949 (= call!679954 ($colon$colon!3322 (exprs!8804 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880))) (ite (or c!1372918 c!1372919) (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(declare-fun b!7386338 () Bool)

(declare-fun e!4421238 () (Set Context!16608))

(assert (=> b!7386338 (= e!4421240 e!4421238)))

(assert (=> b!7386338 (= c!1372915 (is-Union!19364 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun bm!679950 () Bool)

(declare-fun call!679955 () (Set Context!16608))

(assert (=> bm!679950 (= call!679955 (derivationStepZipperDown!3171 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) (ite c!1372915 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679954)) lt!2617689))))

(declare-fun b!7386339 () Bool)

(assert (=> b!7386339 (= c!1372918 e!4421241)))

(declare-fun res!2978733 () Bool)

(assert (=> b!7386339 (=> (not res!2978733) (not e!4421241))))

(assert (=> b!7386339 (= res!2978733 (is-Concat!28209 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun e!4421243 () (Set Context!16608))

(assert (=> b!7386339 (= e!4421238 e!4421243)))

(declare-fun b!7386340 () Bool)

(declare-fun c!1372916 () Bool)

(assert (=> b!7386340 (= c!1372916 (is-Star!19364 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))

(assert (=> b!7386340 (= e!4421242 e!4421239)))

(declare-fun b!7386341 () Bool)

(assert (=> b!7386341 (= e!4421238 (set.union call!679951 call!679955))))

(declare-fun b!7386342 () Bool)

(assert (=> b!7386342 (= e!4421243 e!4421242)))

(assert (=> b!7386342 (= c!1372919 (is-Concat!28209 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun b!7386343 () Bool)

(assert (=> b!7386343 (= e!4421240 (set.insert (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (as set.empty (Set Context!16608))))))

(declare-fun b!7386344 () Bool)

(assert (=> b!7386344 (= e!4421243 (set.union call!679955 call!679952))))

(assert (= (and d!2286712 c!1372917) b!7386343))

(assert (= (and d!2286712 (not c!1372917)) b!7386338))

(assert (= (and b!7386338 c!1372915) b!7386341))

(assert (= (and b!7386338 (not c!1372915)) b!7386339))

(assert (= (and b!7386339 res!2978733) b!7386336))

(assert (= (and b!7386339 c!1372918) b!7386344))

(assert (= (and b!7386339 (not c!1372918)) b!7386342))

(assert (= (and b!7386342 c!1372919) b!7386337))

(assert (= (and b!7386342 (not c!1372919)) b!7386340))

(assert (= (and b!7386340 c!1372916) b!7386334))

(assert (= (and b!7386340 (not c!1372916)) b!7386335))

(assert (= (or b!7386337 b!7386334) bm!679945))

(assert (= (or b!7386337 b!7386334) bm!679948))

(assert (= (or b!7386344 bm!679945) bm!679949))

(assert (= (or b!7386344 bm!679948) bm!679946))

(assert (= (or b!7386341 bm!679946) bm!679947))

(assert (= (or b!7386341 b!7386344) bm!679950))

(declare-fun m!8034488 () Bool)

(assert (=> bm!679947 m!8034488))

(declare-fun m!8034490 () Bool)

(assert (=> b!7386343 m!8034490))

(declare-fun m!8034492 () Bool)

(assert (=> bm!679950 m!8034492))

(declare-fun m!8034494 () Bool)

(assert (=> b!7386336 m!8034494))

(declare-fun m!8034496 () Bool)

(assert (=> bm!679949 m!8034496))

(assert (=> bm!679876 d!2286712))

(declare-fun b!7386345 () Bool)

(declare-fun e!4421245 () (Set Context!16608))

(declare-fun call!679956 () (Set Context!16608))

(assert (=> b!7386345 (= e!4421245 (set.union call!679956 (derivationStepZipperUp!2770 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) lt!2617689)))))

(declare-fun b!7386346 () Bool)

(declare-fun e!4421246 () (Set Context!16608))

(assert (=> b!7386346 (= e!4421246 (as set.empty (Set Context!16608)))))

(declare-fun d!2286714 () Bool)

(declare-fun c!1372920 () Bool)

(declare-fun e!4421244 () Bool)

(assert (=> d!2286714 (= c!1372920 e!4421244)))

(declare-fun res!2978734 () Bool)

(assert (=> d!2286714 (=> (not res!2978734) (not e!4421244))))

(assert (=> d!2286714 (= res!2978734 (is-Cons!71768 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(assert (=> d!2286714 (= (derivationStepZipperUp!2770 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) lt!2617689) e!4421245)))

(declare-fun b!7386347 () Bool)

(assert (=> b!7386347 (= e!4421244 (nullable!8419 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))

(declare-fun bm!679951 () Bool)

(assert (=> bm!679951 (= call!679956 (derivationStepZipperDown!3171 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) lt!2617689))))

(declare-fun b!7386348 () Bool)

(assert (=> b!7386348 (= e!4421245 e!4421246)))

(declare-fun c!1372921 () Bool)

(assert (=> b!7386348 (= c!1372921 (is-Cons!71768 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(declare-fun b!7386349 () Bool)

(assert (=> b!7386349 (= e!4421246 call!679956)))

(assert (= (and d!2286714 res!2978734) b!7386347))

(assert (= (and d!2286714 c!1372920) b!7386345))

(assert (= (and d!2286714 (not c!1372920)) b!7386348))

(assert (= (and b!7386348 c!1372921) b!7386349))

(assert (= (and b!7386348 (not c!1372921)) b!7386346))

(assert (= (or b!7386345 b!7386349) bm!679951))

(declare-fun m!8034498 () Bool)

(assert (=> b!7386345 m!8034498))

(declare-fun m!8034500 () Bool)

(assert (=> b!7386347 m!8034500))

(declare-fun m!8034502 () Bool)

(assert (=> bm!679951 m!8034502))

(assert (=> b!7386014 d!2286714))

(declare-fun bs!1922029 () Bool)

(declare-fun d!2286716 () Bool)

(assert (= bs!1922029 (and d!2286716 d!2286528)))

(declare-fun lambda!458952 () Int)

(assert (=> bs!1922029 (not (= lambda!458952 lambda!458921))))

(declare-fun bs!1922030 () Bool)

(assert (= bs!1922030 (and d!2286716 d!2286584)))

(assert (=> bs!1922030 (not (= lambda!458952 lambda!458937))))

(assert (=> d!2286716 true))

(assert (=> d!2286716 (< (dynLambda!29555 order!29419 lambda!458921) (dynLambda!29555 order!29419 lambda!458952))))

(declare-fun forall!18149 (List!71896 Int) Bool)

(assert (=> d!2286716 (= (exists!4724 (toList!11727 z!3451) lambda!458921) (not (forall!18149 (toList!11727 z!3451) lambda!458952)))))

(declare-fun bs!1922031 () Bool)

(assert (= bs!1922031 d!2286716))

(assert (=> bs!1922031 m!8034228))

(declare-fun m!8034504 () Bool)

(assert (=> bs!1922031 m!8034504))

(assert (=> d!2286582 d!2286716))

(declare-fun d!2286718 () Bool)

(declare-fun e!4421249 () Bool)

(assert (=> d!2286718 e!4421249))

(declare-fun res!2978737 () Bool)

(assert (=> d!2286718 (=> (not res!2978737) (not e!4421249))))

(declare-fun lt!2617715 () List!71896)

(declare-fun noDuplicate!3091 (List!71896) Bool)

(assert (=> d!2286718 (= res!2978737 (noDuplicate!3091 lt!2617715))))

(declare-fun choose!57373 ((Set Context!16608)) List!71896)

(assert (=> d!2286718 (= lt!2617715 (choose!57373 z!3451))))

(assert (=> d!2286718 (= (toList!11727 z!3451) lt!2617715)))

(declare-fun b!7386354 () Bool)

(declare-fun content!15203 (List!71896) (Set Context!16608))

(assert (=> b!7386354 (= e!4421249 (= (content!15203 lt!2617715) z!3451))))

(assert (= (and d!2286718 res!2978737) b!7386354))

(declare-fun m!8034506 () Bool)

(assert (=> d!2286718 m!8034506))

(declare-fun m!8034508 () Bool)

(assert (=> d!2286718 m!8034508))

(declare-fun m!8034510 () Bool)

(assert (=> b!7386354 m!8034510))

(assert (=> d!2286582 d!2286718))

(declare-fun d!2286720 () Bool)

(declare-fun res!2978740 () Bool)

(assert (=> d!2286720 (= res!2978740 (exists!4724 (toList!11727 z!3451) lambda!458921))))

(assert (=> d!2286720 true))

(assert (=> d!2286720 (= (choose!57369 z!3451 lambda!458921) res!2978740)))

(declare-fun bs!1922032 () Bool)

(assert (= bs!1922032 d!2286720))

(assert (=> bs!1922032 m!8034228))

(assert (=> bs!1922032 m!8034228))

(assert (=> bs!1922032 m!8034230))

(assert (=> d!2286582 d!2286720))

(declare-fun b!7386355 () Bool)

(declare-fun e!4421250 () Bool)

(declare-fun e!4421254 () Bool)

(assert (=> b!7386355 (= e!4421250 e!4421254)))

(declare-fun c!1372923 () Bool)

(assert (=> b!7386355 (= c!1372923 (is-Star!19364 (h!78216 (exprs!8804 empty!3451))))))

(declare-fun d!2286722 () Bool)

(declare-fun res!2978743 () Bool)

(assert (=> d!2286722 (=> res!2978743 e!4421250)))

(assert (=> d!2286722 (= res!2978743 (is-ElementMatch!19364 (h!78216 (exprs!8804 empty!3451))))))

(assert (=> d!2286722 (= (validRegex!9942 (h!78216 (exprs!8804 empty!3451))) e!4421250)))

(declare-fun b!7386356 () Bool)

(declare-fun e!4421251 () Bool)

(declare-fun call!679958 () Bool)

(assert (=> b!7386356 (= e!4421251 call!679958)))

(declare-fun b!7386357 () Bool)

(declare-fun e!4421256 () Bool)

(assert (=> b!7386357 (= e!4421254 e!4421256)))

(declare-fun res!2978744 () Bool)

(assert (=> b!7386357 (= res!2978744 (not (nullable!8419 (reg!19693 (h!78216 (exprs!8804 empty!3451))))))))

(assert (=> b!7386357 (=> (not res!2978744) (not e!4421256))))

(declare-fun bm!679952 () Bool)

(declare-fun call!679959 () Bool)

(declare-fun call!679957 () Bool)

(assert (=> bm!679952 (= call!679959 call!679957)))

(declare-fun b!7386358 () Bool)

(assert (=> b!7386358 (= e!4421256 call!679957)))

(declare-fun bm!679953 () Bool)

(declare-fun c!1372922 () Bool)

(assert (=> bm!679953 (= call!679957 (validRegex!9942 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))))))

(declare-fun b!7386359 () Bool)

(declare-fun e!4421255 () Bool)

(assert (=> b!7386359 (= e!4421255 call!679958)))

(declare-fun b!7386360 () Bool)

(declare-fun e!4421252 () Bool)

(assert (=> b!7386360 (= e!4421252 e!4421251)))

(declare-fun res!2978742 () Bool)

(assert (=> b!7386360 (=> (not res!2978742) (not e!4421251))))

(assert (=> b!7386360 (= res!2978742 call!679959)))

(declare-fun b!7386361 () Bool)

(declare-fun res!2978745 () Bool)

(assert (=> b!7386361 (=> (not res!2978745) (not e!4421255))))

(assert (=> b!7386361 (= res!2978745 call!679959)))

(declare-fun e!4421253 () Bool)

(assert (=> b!7386361 (= e!4421253 e!4421255)))

(declare-fun b!7386362 () Bool)

(declare-fun res!2978741 () Bool)

(assert (=> b!7386362 (=> res!2978741 e!4421252)))

(assert (=> b!7386362 (= res!2978741 (not (is-Concat!28209 (h!78216 (exprs!8804 empty!3451)))))))

(assert (=> b!7386362 (= e!4421253 e!4421252)))

(declare-fun b!7386363 () Bool)

(assert (=> b!7386363 (= e!4421254 e!4421253)))

(assert (=> b!7386363 (= c!1372922 (is-Union!19364 (h!78216 (exprs!8804 empty!3451))))))

(declare-fun bm!679954 () Bool)

(assert (=> bm!679954 (= call!679958 (validRegex!9942 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))))))

(assert (= (and d!2286722 (not res!2978743)) b!7386355))

(assert (= (and b!7386355 c!1372923) b!7386357))

(assert (= (and b!7386355 (not c!1372923)) b!7386363))

(assert (= (and b!7386357 res!2978744) b!7386358))

(assert (= (and b!7386363 c!1372922) b!7386361))

(assert (= (and b!7386363 (not c!1372922)) b!7386362))

(assert (= (and b!7386361 res!2978745) b!7386359))

(assert (= (and b!7386362 (not res!2978741)) b!7386360))

(assert (= (and b!7386360 res!2978742) b!7386356))

(assert (= (or b!7386361 b!7386360) bm!679952))

(assert (= (or b!7386359 b!7386356) bm!679954))

(assert (= (or b!7386358 bm!679952) bm!679953))

(declare-fun m!8034512 () Bool)

(assert (=> b!7386357 m!8034512))

(declare-fun m!8034514 () Bool)

(assert (=> bm!679953 m!8034514))

(declare-fun m!8034516 () Bool)

(assert (=> bm!679954 m!8034516))

(assert (=> bs!1921990 d!2286722))

(declare-fun b!7386364 () Bool)

(declare-fun e!4421257 () Bool)

(declare-fun e!4421261 () Bool)

(assert (=> b!7386364 (= e!4421257 e!4421261)))

(declare-fun c!1372925 () Bool)

(assert (=> b!7386364 (= c!1372925 (is-Star!19364 (h!78216 (exprs!8804 c!10532))))))

(declare-fun d!2286724 () Bool)

(declare-fun res!2978748 () Bool)

(assert (=> d!2286724 (=> res!2978748 e!4421257)))

(assert (=> d!2286724 (= res!2978748 (is-ElementMatch!19364 (h!78216 (exprs!8804 c!10532))))))

(assert (=> d!2286724 (= (validRegex!9942 (h!78216 (exprs!8804 c!10532))) e!4421257)))

(declare-fun b!7386365 () Bool)

(declare-fun e!4421258 () Bool)

(declare-fun call!679961 () Bool)

(assert (=> b!7386365 (= e!4421258 call!679961)))

(declare-fun b!7386366 () Bool)

(declare-fun e!4421263 () Bool)

(assert (=> b!7386366 (= e!4421261 e!4421263)))

(declare-fun res!2978749 () Bool)

(assert (=> b!7386366 (= res!2978749 (not (nullable!8419 (reg!19693 (h!78216 (exprs!8804 c!10532))))))))

(assert (=> b!7386366 (=> (not res!2978749) (not e!4421263))))

(declare-fun bm!679955 () Bool)

(declare-fun call!679962 () Bool)

(declare-fun call!679960 () Bool)

(assert (=> bm!679955 (= call!679962 call!679960)))

(declare-fun b!7386367 () Bool)

(assert (=> b!7386367 (= e!4421263 call!679960)))

(declare-fun bm!679956 () Bool)

(declare-fun c!1372924 () Bool)

(assert (=> bm!679956 (= call!679960 (validRegex!9942 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(declare-fun b!7386368 () Bool)

(declare-fun e!4421262 () Bool)

(assert (=> b!7386368 (= e!4421262 call!679961)))

(declare-fun b!7386369 () Bool)

(declare-fun e!4421259 () Bool)

(assert (=> b!7386369 (= e!4421259 e!4421258)))

(declare-fun res!2978747 () Bool)

(assert (=> b!7386369 (=> (not res!2978747) (not e!4421258))))

(assert (=> b!7386369 (= res!2978747 call!679962)))

(declare-fun b!7386370 () Bool)

(declare-fun res!2978750 () Bool)

(assert (=> b!7386370 (=> (not res!2978750) (not e!4421262))))

(assert (=> b!7386370 (= res!2978750 call!679962)))

(declare-fun e!4421260 () Bool)

(assert (=> b!7386370 (= e!4421260 e!4421262)))

(declare-fun b!7386371 () Bool)

(declare-fun res!2978746 () Bool)

(assert (=> b!7386371 (=> res!2978746 e!4421259)))

(assert (=> b!7386371 (= res!2978746 (not (is-Concat!28209 (h!78216 (exprs!8804 c!10532)))))))

(assert (=> b!7386371 (= e!4421260 e!4421259)))

(declare-fun b!7386372 () Bool)

(assert (=> b!7386372 (= e!4421261 e!4421260)))

(assert (=> b!7386372 (= c!1372924 (is-Union!19364 (h!78216 (exprs!8804 c!10532))))))

(declare-fun bm!679957 () Bool)

(assert (=> bm!679957 (= call!679961 (validRegex!9942 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))))))

(assert (= (and d!2286724 (not res!2978748)) b!7386364))

(assert (= (and b!7386364 c!1372925) b!7386366))

(assert (= (and b!7386364 (not c!1372925)) b!7386372))

(assert (= (and b!7386366 res!2978749) b!7386367))

(assert (= (and b!7386372 c!1372924) b!7386370))

(assert (= (and b!7386372 (not c!1372924)) b!7386371))

(assert (= (and b!7386370 res!2978750) b!7386368))

(assert (= (and b!7386371 (not res!2978746)) b!7386369))

(assert (= (and b!7386369 res!2978747) b!7386365))

(assert (= (or b!7386370 b!7386369) bm!679955))

(assert (= (or b!7386368 b!7386365) bm!679957))

(assert (= (or b!7386367 bm!679955) bm!679956))

(declare-fun m!8034518 () Bool)

(assert (=> b!7386366 m!8034518))

(declare-fun m!8034520 () Bool)

(assert (=> bm!679956 m!8034520))

(declare-fun m!8034522 () Bool)

(assert (=> bm!679957 m!8034522))

(assert (=> bs!1921992 d!2286724))

(declare-fun b!7386373 () Bool)

(declare-fun e!4421264 () Bool)

(assert (=> b!7386373 (= e!4421264 tp_is_empty!48991)))

(declare-fun b!7386374 () Bool)

(declare-fun tp!2101637 () Bool)

(declare-fun tp!2101636 () Bool)

(assert (=> b!7386374 (= e!4421264 (and tp!2101637 tp!2101636))))

(declare-fun b!7386375 () Bool)

(declare-fun tp!2101635 () Bool)

(assert (=> b!7386375 (= e!4421264 tp!2101635)))

(assert (=> b!7386037 (= tp!2101495 e!4421264)))

(declare-fun b!7386376 () Bool)

(declare-fun tp!2101634 () Bool)

(declare-fun tp!2101638 () Bool)

(assert (=> b!7386376 (= e!4421264 (and tp!2101634 tp!2101638))))

(assert (= (and b!7386037 (is-ElementMatch!19364 (regOne!39240 (h!78216 (exprs!8804 empty!3451))))) b!7386373))

(assert (= (and b!7386037 (is-Concat!28209 (regOne!39240 (h!78216 (exprs!8804 empty!3451))))) b!7386374))

(assert (= (and b!7386037 (is-Star!19364 (regOne!39240 (h!78216 (exprs!8804 empty!3451))))) b!7386375))

(assert (= (and b!7386037 (is-Union!19364 (regOne!39240 (h!78216 (exprs!8804 empty!3451))))) b!7386376))

(declare-fun b!7386377 () Bool)

(declare-fun e!4421265 () Bool)

(assert (=> b!7386377 (= e!4421265 tp_is_empty!48991)))

(declare-fun b!7386378 () Bool)

(declare-fun tp!2101642 () Bool)

(declare-fun tp!2101641 () Bool)

(assert (=> b!7386378 (= e!4421265 (and tp!2101642 tp!2101641))))

(declare-fun b!7386379 () Bool)

(declare-fun tp!2101640 () Bool)

(assert (=> b!7386379 (= e!4421265 tp!2101640)))

(assert (=> b!7386037 (= tp!2101494 e!4421265)))

(declare-fun b!7386380 () Bool)

(declare-fun tp!2101639 () Bool)

(declare-fun tp!2101643 () Bool)

(assert (=> b!7386380 (= e!4421265 (and tp!2101639 tp!2101643))))

(assert (= (and b!7386037 (is-ElementMatch!19364 (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))) b!7386377))

(assert (= (and b!7386037 (is-Concat!28209 (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))) b!7386378))

(assert (= (and b!7386037 (is-Star!19364 (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))) b!7386379))

(assert (= (and b!7386037 (is-Union!19364 (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))) b!7386380))

(declare-fun b!7386381 () Bool)

(declare-fun e!4421266 () Bool)

(assert (=> b!7386381 (= e!4421266 tp_is_empty!48991)))

(declare-fun b!7386382 () Bool)

(declare-fun tp!2101647 () Bool)

(declare-fun tp!2101646 () Bool)

(assert (=> b!7386382 (= e!4421266 (and tp!2101647 tp!2101646))))

(declare-fun b!7386383 () Bool)

(declare-fun tp!2101645 () Bool)

(assert (=> b!7386383 (= e!4421266 tp!2101645)))

(assert (=> b!7386046 (= tp!2101506 e!4421266)))

(declare-fun b!7386384 () Bool)

(declare-fun tp!2101644 () Bool)

(declare-fun tp!2101648 () Bool)

(assert (=> b!7386384 (= e!4421266 (and tp!2101644 tp!2101648))))

(assert (= (and b!7386046 (is-ElementMatch!19364 (h!78216 (t!386443 (exprs!8804 c!10532))))) b!7386381))

(assert (= (and b!7386046 (is-Concat!28209 (h!78216 (t!386443 (exprs!8804 c!10532))))) b!7386382))

(assert (= (and b!7386046 (is-Star!19364 (h!78216 (t!386443 (exprs!8804 c!10532))))) b!7386383))

(assert (= (and b!7386046 (is-Union!19364 (h!78216 (t!386443 (exprs!8804 c!10532))))) b!7386384))

(declare-fun b!7386385 () Bool)

(declare-fun e!4421267 () Bool)

(declare-fun tp!2101649 () Bool)

(declare-fun tp!2101650 () Bool)

(assert (=> b!7386385 (= e!4421267 (and tp!2101649 tp!2101650))))

(assert (=> b!7386046 (= tp!2101507 e!4421267)))

(assert (= (and b!7386046 (is-Cons!71768 (t!386443 (t!386443 (exprs!8804 c!10532))))) b!7386385))

(declare-fun b!7386386 () Bool)

(declare-fun e!4421268 () Bool)

(assert (=> b!7386386 (= e!4421268 tp_is_empty!48991)))

(declare-fun b!7386387 () Bool)

(declare-fun tp!2101654 () Bool)

(declare-fun tp!2101653 () Bool)

(assert (=> b!7386387 (= e!4421268 (and tp!2101654 tp!2101653))))

(declare-fun b!7386388 () Bool)

(declare-fun tp!2101652 () Bool)

(assert (=> b!7386388 (= e!4421268 tp!2101652)))

(assert (=> b!7386038 (= tp!2101493 e!4421268)))

(declare-fun b!7386389 () Bool)

(declare-fun tp!2101651 () Bool)

(declare-fun tp!2101655 () Bool)

(assert (=> b!7386389 (= e!4421268 (and tp!2101651 tp!2101655))))

(assert (= (and b!7386038 (is-ElementMatch!19364 (reg!19693 (h!78216 (exprs!8804 empty!3451))))) b!7386386))

(assert (= (and b!7386038 (is-Concat!28209 (reg!19693 (h!78216 (exprs!8804 empty!3451))))) b!7386387))

(assert (= (and b!7386038 (is-Star!19364 (reg!19693 (h!78216 (exprs!8804 empty!3451))))) b!7386388))

(assert (= (and b!7386038 (is-Union!19364 (reg!19693 (h!78216 (exprs!8804 empty!3451))))) b!7386389))

(declare-fun b!7386390 () Bool)

(declare-fun e!4421269 () Bool)

(declare-fun tp!2101656 () Bool)

(assert (=> b!7386390 (= e!4421269 (and tp_is_empty!48991 tp!2101656))))

(assert (=> b!7386019 (= tp!2101472 e!4421269)))

(assert (= (and b!7386019 (is-Cons!71769 (t!386444 (t!386444 (t!386444 s!7927))))) b!7386390))

(declare-fun b!7386391 () Bool)

(declare-fun e!4421270 () Bool)

(assert (=> b!7386391 (= e!4421270 tp_is_empty!48991)))

(declare-fun b!7386392 () Bool)

(declare-fun tp!2101660 () Bool)

(declare-fun tp!2101659 () Bool)

(assert (=> b!7386392 (= e!4421270 (and tp!2101660 tp!2101659))))

(declare-fun b!7386393 () Bool)

(declare-fun tp!2101658 () Bool)

(assert (=> b!7386393 (= e!4421270 tp!2101658)))

(assert (=> b!7386035 (= tp!2101490 e!4421270)))

(declare-fun b!7386394 () Bool)

(declare-fun tp!2101657 () Bool)

(declare-fun tp!2101661 () Bool)

(assert (=> b!7386394 (= e!4421270 (and tp!2101657 tp!2101661))))

(assert (= (and b!7386035 (is-ElementMatch!19364 (h!78216 (exprs!8804 setElem!55901)))) b!7386391))

(assert (= (and b!7386035 (is-Concat!28209 (h!78216 (exprs!8804 setElem!55901)))) b!7386392))

(assert (= (and b!7386035 (is-Star!19364 (h!78216 (exprs!8804 setElem!55901)))) b!7386393))

(assert (= (and b!7386035 (is-Union!19364 (h!78216 (exprs!8804 setElem!55901)))) b!7386394))

(declare-fun b!7386395 () Bool)

(declare-fun e!4421271 () Bool)

(declare-fun tp!2101662 () Bool)

(declare-fun tp!2101663 () Bool)

(assert (=> b!7386395 (= e!4421271 (and tp!2101662 tp!2101663))))

(assert (=> b!7386035 (= tp!2101491 e!4421271)))

(assert (= (and b!7386035 (is-Cons!71768 (t!386443 (exprs!8804 setElem!55901)))) b!7386395))

(declare-fun b!7386396 () Bool)

(declare-fun e!4421272 () Bool)

(assert (=> b!7386396 (= e!4421272 tp_is_empty!48991)))

(declare-fun b!7386397 () Bool)

(declare-fun tp!2101667 () Bool)

(declare-fun tp!2101666 () Bool)

(assert (=> b!7386397 (= e!4421272 (and tp!2101667 tp!2101666))))

(declare-fun b!7386398 () Bool)

(declare-fun tp!2101665 () Bool)

(assert (=> b!7386398 (= e!4421272 tp!2101665)))

(assert (=> b!7386039 (= tp!2101492 e!4421272)))

(declare-fun b!7386399 () Bool)

(declare-fun tp!2101664 () Bool)

(declare-fun tp!2101668 () Bool)

(assert (=> b!7386399 (= e!4421272 (and tp!2101664 tp!2101668))))

(assert (= (and b!7386039 (is-ElementMatch!19364 (regOne!39241 (h!78216 (exprs!8804 empty!3451))))) b!7386396))

(assert (= (and b!7386039 (is-Concat!28209 (regOne!39241 (h!78216 (exprs!8804 empty!3451))))) b!7386397))

(assert (= (and b!7386039 (is-Star!19364 (regOne!39241 (h!78216 (exprs!8804 empty!3451))))) b!7386398))

(assert (= (and b!7386039 (is-Union!19364 (regOne!39241 (h!78216 (exprs!8804 empty!3451))))) b!7386399))

(declare-fun b!7386400 () Bool)

(declare-fun e!4421273 () Bool)

(assert (=> b!7386400 (= e!4421273 tp_is_empty!48991)))

(declare-fun b!7386401 () Bool)

(declare-fun tp!2101672 () Bool)

(declare-fun tp!2101671 () Bool)

(assert (=> b!7386401 (= e!4421273 (and tp!2101672 tp!2101671))))

(declare-fun b!7386402 () Bool)

(declare-fun tp!2101670 () Bool)

(assert (=> b!7386402 (= e!4421273 tp!2101670)))

(assert (=> b!7386039 (= tp!2101496 e!4421273)))

(declare-fun b!7386403 () Bool)

(declare-fun tp!2101669 () Bool)

(declare-fun tp!2101673 () Bool)

(assert (=> b!7386403 (= e!4421273 (and tp!2101669 tp!2101673))))

(assert (= (and b!7386039 (is-ElementMatch!19364 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))))) b!7386400))

(assert (= (and b!7386039 (is-Concat!28209 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))))) b!7386401))

(assert (= (and b!7386039 (is-Star!19364 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))))) b!7386402))

(assert (= (and b!7386039 (is-Union!19364 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))))) b!7386403))

(declare-fun b!7386404 () Bool)

(declare-fun e!4421274 () Bool)

(assert (=> b!7386404 (= e!4421274 tp_is_empty!48991)))

(declare-fun b!7386405 () Bool)

(declare-fun tp!2101677 () Bool)

(declare-fun tp!2101676 () Bool)

(assert (=> b!7386405 (= e!4421274 (and tp!2101677 tp!2101676))))

(declare-fun b!7386406 () Bool)

(declare-fun tp!2101675 () Bool)

(assert (=> b!7386406 (= e!4421274 tp!2101675)))

(assert (=> b!7386031 (= tp!2101486 e!4421274)))

(declare-fun b!7386407 () Bool)

(declare-fun tp!2101674 () Bool)

(declare-fun tp!2101678 () Bool)

(assert (=> b!7386407 (= e!4421274 (and tp!2101674 tp!2101678))))

(assert (= (and b!7386031 (is-ElementMatch!19364 (regOne!39240 (h!78216 (exprs!8804 setElem!55895))))) b!7386404))

(assert (= (and b!7386031 (is-Concat!28209 (regOne!39240 (h!78216 (exprs!8804 setElem!55895))))) b!7386405))

(assert (= (and b!7386031 (is-Star!19364 (regOne!39240 (h!78216 (exprs!8804 setElem!55895))))) b!7386406))

(assert (= (and b!7386031 (is-Union!19364 (regOne!39240 (h!78216 (exprs!8804 setElem!55895))))) b!7386407))

(declare-fun b!7386408 () Bool)

(declare-fun e!4421275 () Bool)

(assert (=> b!7386408 (= e!4421275 tp_is_empty!48991)))

(declare-fun b!7386409 () Bool)

(declare-fun tp!2101682 () Bool)

(declare-fun tp!2101681 () Bool)

(assert (=> b!7386409 (= e!4421275 (and tp!2101682 tp!2101681))))

(declare-fun b!7386410 () Bool)

(declare-fun tp!2101680 () Bool)

(assert (=> b!7386410 (= e!4421275 tp!2101680)))

(assert (=> b!7386031 (= tp!2101485 e!4421275)))

(declare-fun b!7386411 () Bool)

(declare-fun tp!2101679 () Bool)

(declare-fun tp!2101683 () Bool)

(assert (=> b!7386411 (= e!4421275 (and tp!2101679 tp!2101683))))

(assert (= (and b!7386031 (is-ElementMatch!19364 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))) b!7386408))

(assert (= (and b!7386031 (is-Concat!28209 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))) b!7386409))

(assert (= (and b!7386031 (is-Star!19364 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))) b!7386410))

(assert (= (and b!7386031 (is-Union!19364 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))) b!7386411))

(declare-fun b!7386412 () Bool)

(declare-fun e!4421276 () Bool)

(declare-fun tp!2101684 () Bool)

(declare-fun tp!2101685 () Bool)

(assert (=> b!7386412 (= e!4421276 (and tp!2101684 tp!2101685))))

(assert (=> b!7386041 (= tp!2101500 e!4421276)))

(assert (= (and b!7386041 (is-Cons!71768 (exprs!8804 setElem!55906))) b!7386412))

(declare-fun b!7386413 () Bool)

(declare-fun e!4421277 () Bool)

(assert (=> b!7386413 (= e!4421277 tp_is_empty!48991)))

(declare-fun b!7386414 () Bool)

(declare-fun tp!2101689 () Bool)

(declare-fun tp!2101688 () Bool)

(assert (=> b!7386414 (= e!4421277 (and tp!2101689 tp!2101688))))

(declare-fun b!7386415 () Bool)

(declare-fun tp!2101687 () Bool)

(assert (=> b!7386415 (= e!4421277 tp!2101687)))

(assert (=> b!7386033 (= tp!2101483 e!4421277)))

(declare-fun b!7386416 () Bool)

(declare-fun tp!2101686 () Bool)

(declare-fun tp!2101690 () Bool)

(assert (=> b!7386416 (= e!4421277 (and tp!2101686 tp!2101690))))

(assert (= (and b!7386033 (is-ElementMatch!19364 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))))) b!7386413))

(assert (= (and b!7386033 (is-Concat!28209 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))))) b!7386414))

(assert (= (and b!7386033 (is-Star!19364 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))))) b!7386415))

(assert (= (and b!7386033 (is-Union!19364 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))))) b!7386416))

(declare-fun b!7386417 () Bool)

(declare-fun e!4421278 () Bool)

(assert (=> b!7386417 (= e!4421278 tp_is_empty!48991)))

(declare-fun b!7386418 () Bool)

(declare-fun tp!2101694 () Bool)

(declare-fun tp!2101693 () Bool)

(assert (=> b!7386418 (= e!4421278 (and tp!2101694 tp!2101693))))

(declare-fun b!7386419 () Bool)

(declare-fun tp!2101692 () Bool)

(assert (=> b!7386419 (= e!4421278 tp!2101692)))

(assert (=> b!7386033 (= tp!2101487 e!4421278)))

(declare-fun b!7386420 () Bool)

(declare-fun tp!2101691 () Bool)

(declare-fun tp!2101695 () Bool)

(assert (=> b!7386420 (= e!4421278 (and tp!2101691 tp!2101695))))

(assert (= (and b!7386033 (is-ElementMatch!19364 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))))) b!7386417))

(assert (= (and b!7386033 (is-Concat!28209 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))))) b!7386418))

(assert (= (and b!7386033 (is-Star!19364 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))))) b!7386419))

(assert (= (and b!7386033 (is-Union!19364 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))))) b!7386420))

(declare-fun condSetEmpty!55916 () Bool)

(assert (=> setNonEmpty!55906 (= condSetEmpty!55916 (= setRest!55906 (as set.empty (Set Context!16608))))))

(declare-fun setRes!55916 () Bool)

(assert (=> setNonEmpty!55906 (= tp!2101499 setRes!55916)))

(declare-fun setIsEmpty!55916 () Bool)

(assert (=> setIsEmpty!55916 setRes!55916))

(declare-fun e!4421279 () Bool)

(declare-fun setElem!55916 () Context!16608)

(declare-fun tp!2101696 () Bool)

(declare-fun setNonEmpty!55916 () Bool)

(assert (=> setNonEmpty!55916 (= setRes!55916 (and tp!2101696 (inv!91772 setElem!55916) e!4421279))))

(declare-fun setRest!55916 () (Set Context!16608))

(assert (=> setNonEmpty!55916 (= setRest!55906 (set.union (set.insert setElem!55916 (as set.empty (Set Context!16608))) setRest!55916))))

(declare-fun b!7386421 () Bool)

(declare-fun tp!2101697 () Bool)

(assert (=> b!7386421 (= e!4421279 tp!2101697)))

(assert (= (and setNonEmpty!55906 condSetEmpty!55916) setIsEmpty!55916))

(assert (= (and setNonEmpty!55906 (not condSetEmpty!55916)) setNonEmpty!55916))

(assert (= setNonEmpty!55916 b!7386421))

(declare-fun m!8034524 () Bool)

(assert (=> setNonEmpty!55916 m!8034524))

(declare-fun b!7386422 () Bool)

(declare-fun e!4421280 () Bool)

(assert (=> b!7386422 (= e!4421280 tp_is_empty!48991)))

(declare-fun b!7386423 () Bool)

(declare-fun tp!2101701 () Bool)

(declare-fun tp!2101700 () Bool)

(assert (=> b!7386423 (= e!4421280 (and tp!2101701 tp!2101700))))

(declare-fun b!7386424 () Bool)

(declare-fun tp!2101699 () Bool)

(assert (=> b!7386424 (= e!4421280 tp!2101699)))

(assert (=> b!7386032 (= tp!2101484 e!4421280)))

(declare-fun b!7386425 () Bool)

(declare-fun tp!2101698 () Bool)

(declare-fun tp!2101702 () Bool)

(assert (=> b!7386425 (= e!4421280 (and tp!2101698 tp!2101702))))

(assert (= (and b!7386032 (is-ElementMatch!19364 (reg!19693 (h!78216 (exprs!8804 setElem!55895))))) b!7386422))

(assert (= (and b!7386032 (is-Concat!28209 (reg!19693 (h!78216 (exprs!8804 setElem!55895))))) b!7386423))

(assert (= (and b!7386032 (is-Star!19364 (reg!19693 (h!78216 (exprs!8804 setElem!55895))))) b!7386424))

(assert (= (and b!7386032 (is-Union!19364 (reg!19693 (h!78216 (exprs!8804 setElem!55895))))) b!7386425))

(declare-fun b!7386426 () Bool)

(declare-fun e!4421281 () Bool)

(assert (=> b!7386426 (= e!4421281 tp_is_empty!48991)))

(declare-fun b!7386427 () Bool)

(declare-fun tp!2101706 () Bool)

(declare-fun tp!2101705 () Bool)

(assert (=> b!7386427 (= e!4421281 (and tp!2101706 tp!2101705))))

(declare-fun b!7386428 () Bool)

(declare-fun tp!2101704 () Bool)

(assert (=> b!7386428 (= e!4421281 tp!2101704)))

(assert (=> b!7386043 (= tp!2101504 e!4421281)))

(declare-fun b!7386429 () Bool)

(declare-fun tp!2101703 () Bool)

(declare-fun tp!2101707 () Bool)

(assert (=> b!7386429 (= e!4421281 (and tp!2101703 tp!2101707))))

(assert (= (and b!7386043 (is-ElementMatch!19364 (regOne!39240 (h!78216 (exprs!8804 c!10532))))) b!7386426))

(assert (= (and b!7386043 (is-Concat!28209 (regOne!39240 (h!78216 (exprs!8804 c!10532))))) b!7386427))

(assert (= (and b!7386043 (is-Star!19364 (regOne!39240 (h!78216 (exprs!8804 c!10532))))) b!7386428))

(assert (= (and b!7386043 (is-Union!19364 (regOne!39240 (h!78216 (exprs!8804 c!10532))))) b!7386429))

(declare-fun b!7386430 () Bool)

(declare-fun e!4421282 () Bool)

(assert (=> b!7386430 (= e!4421282 tp_is_empty!48991)))

(declare-fun b!7386431 () Bool)

(declare-fun tp!2101711 () Bool)

(declare-fun tp!2101710 () Bool)

(assert (=> b!7386431 (= e!4421282 (and tp!2101711 tp!2101710))))

(declare-fun b!7386432 () Bool)

(declare-fun tp!2101709 () Bool)

(assert (=> b!7386432 (= e!4421282 tp!2101709)))

(assert (=> b!7386043 (= tp!2101503 e!4421282)))

(declare-fun b!7386433 () Bool)

(declare-fun tp!2101708 () Bool)

(declare-fun tp!2101712 () Bool)

(assert (=> b!7386433 (= e!4421282 (and tp!2101708 tp!2101712))))

(assert (= (and b!7386043 (is-ElementMatch!19364 (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) b!7386430))

(assert (= (and b!7386043 (is-Concat!28209 (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) b!7386431))

(assert (= (and b!7386043 (is-Star!19364 (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) b!7386432))

(assert (= (and b!7386043 (is-Union!19364 (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) b!7386433))

(declare-fun b!7386434 () Bool)

(declare-fun e!4421283 () Bool)

(assert (=> b!7386434 (= e!4421283 tp_is_empty!48991)))

(declare-fun b!7386435 () Bool)

(declare-fun tp!2101716 () Bool)

(declare-fun tp!2101715 () Bool)

(assert (=> b!7386435 (= e!4421283 (and tp!2101716 tp!2101715))))

(declare-fun b!7386436 () Bool)

(declare-fun tp!2101714 () Bool)

(assert (=> b!7386436 (= e!4421283 tp!2101714)))

(assert (=> b!7386045 (= tp!2101501 e!4421283)))

(declare-fun b!7386437 () Bool)

(declare-fun tp!2101713 () Bool)

(declare-fun tp!2101717 () Bool)

(assert (=> b!7386437 (= e!4421283 (and tp!2101713 tp!2101717))))

(assert (= (and b!7386045 (is-ElementMatch!19364 (regOne!39241 (h!78216 (exprs!8804 c!10532))))) b!7386434))

(assert (= (and b!7386045 (is-Concat!28209 (regOne!39241 (h!78216 (exprs!8804 c!10532))))) b!7386435))

(assert (= (and b!7386045 (is-Star!19364 (regOne!39241 (h!78216 (exprs!8804 c!10532))))) b!7386436))

(assert (= (and b!7386045 (is-Union!19364 (regOne!39241 (h!78216 (exprs!8804 c!10532))))) b!7386437))

(declare-fun b!7386438 () Bool)

(declare-fun e!4421284 () Bool)

(assert (=> b!7386438 (= e!4421284 tp_is_empty!48991)))

(declare-fun b!7386439 () Bool)

(declare-fun tp!2101721 () Bool)

(declare-fun tp!2101720 () Bool)

(assert (=> b!7386439 (= e!4421284 (and tp!2101721 tp!2101720))))

(declare-fun b!7386440 () Bool)

(declare-fun tp!2101719 () Bool)

(assert (=> b!7386440 (= e!4421284 tp!2101719)))

(assert (=> b!7386045 (= tp!2101505 e!4421284)))

(declare-fun b!7386441 () Bool)

(declare-fun tp!2101718 () Bool)

(declare-fun tp!2101722 () Bool)

(assert (=> b!7386441 (= e!4421284 (and tp!2101718 tp!2101722))))

(assert (= (and b!7386045 (is-ElementMatch!19364 (regTwo!39241 (h!78216 (exprs!8804 c!10532))))) b!7386438))

(assert (= (and b!7386045 (is-Concat!28209 (regTwo!39241 (h!78216 (exprs!8804 c!10532))))) b!7386439))

(assert (= (and b!7386045 (is-Star!19364 (regTwo!39241 (h!78216 (exprs!8804 c!10532))))) b!7386440))

(assert (= (and b!7386045 (is-Union!19364 (regTwo!39241 (h!78216 (exprs!8804 c!10532))))) b!7386441))

(declare-fun b!7386442 () Bool)

(declare-fun e!4421285 () Bool)

(assert (=> b!7386442 (= e!4421285 tp_is_empty!48991)))

(declare-fun b!7386443 () Bool)

(declare-fun tp!2101726 () Bool)

(declare-fun tp!2101725 () Bool)

(assert (=> b!7386443 (= e!4421285 (and tp!2101726 tp!2101725))))

(declare-fun b!7386444 () Bool)

(declare-fun tp!2101724 () Bool)

(assert (=> b!7386444 (= e!4421285 tp!2101724)))

(assert (=> b!7386044 (= tp!2101502 e!4421285)))

(declare-fun b!7386445 () Bool)

(declare-fun tp!2101723 () Bool)

(declare-fun tp!2101727 () Bool)

(assert (=> b!7386445 (= e!4421285 (and tp!2101723 tp!2101727))))

(assert (= (and b!7386044 (is-ElementMatch!19364 (reg!19693 (h!78216 (exprs!8804 c!10532))))) b!7386442))

(assert (= (and b!7386044 (is-Concat!28209 (reg!19693 (h!78216 (exprs!8804 c!10532))))) b!7386443))

(assert (= (and b!7386044 (is-Star!19364 (reg!19693 (h!78216 (exprs!8804 c!10532))))) b!7386444))

(assert (= (and b!7386044 (is-Union!19364 (reg!19693 (h!78216 (exprs!8804 c!10532))))) b!7386445))

(declare-fun b!7386446 () Bool)

(declare-fun e!4421286 () Bool)

(assert (=> b!7386446 (= e!4421286 tp_is_empty!48991)))

(declare-fun b!7386447 () Bool)

(declare-fun tp!2101731 () Bool)

(declare-fun tp!2101730 () Bool)

(assert (=> b!7386447 (= e!4421286 (and tp!2101731 tp!2101730))))

(declare-fun b!7386448 () Bool)

(declare-fun tp!2101729 () Bool)

(assert (=> b!7386448 (= e!4421286 tp!2101729)))

(assert (=> b!7386040 (= tp!2101497 e!4421286)))

(declare-fun b!7386449 () Bool)

(declare-fun tp!2101728 () Bool)

(declare-fun tp!2101732 () Bool)

(assert (=> b!7386449 (= e!4421286 (and tp!2101728 tp!2101732))))

(assert (= (and b!7386040 (is-ElementMatch!19364 (h!78216 (t!386443 (exprs!8804 empty!3451))))) b!7386446))

(assert (= (and b!7386040 (is-Concat!28209 (h!78216 (t!386443 (exprs!8804 empty!3451))))) b!7386447))

(assert (= (and b!7386040 (is-Star!19364 (h!78216 (t!386443 (exprs!8804 empty!3451))))) b!7386448))

(assert (= (and b!7386040 (is-Union!19364 (h!78216 (t!386443 (exprs!8804 empty!3451))))) b!7386449))

(declare-fun b!7386450 () Bool)

(declare-fun e!4421287 () Bool)

(declare-fun tp!2101733 () Bool)

(declare-fun tp!2101734 () Bool)

(assert (=> b!7386450 (= e!4421287 (and tp!2101733 tp!2101734))))

(assert (=> b!7386040 (= tp!2101498 e!4421287)))

(assert (= (and b!7386040 (is-Cons!71768 (t!386443 (t!386443 (exprs!8804 empty!3451))))) b!7386450))

(declare-fun b!7386451 () Bool)

(declare-fun e!4421288 () Bool)

(declare-fun tp!2101735 () Bool)

(declare-fun tp!2101736 () Bool)

(assert (=> b!7386451 (= e!4421288 (and tp!2101735 tp!2101736))))

(assert (=> b!7385929 (= tp!2101432 e!4421288)))

(assert (= (and b!7385929 (is-Cons!71768 (exprs!8804 _$3!507))) b!7386451))

(declare-fun b!7386452 () Bool)

(declare-fun e!4421289 () Bool)

(assert (=> b!7386452 (= e!4421289 tp_is_empty!48991)))

(declare-fun b!7386453 () Bool)

(declare-fun tp!2101740 () Bool)

(declare-fun tp!2101739 () Bool)

(assert (=> b!7386453 (= e!4421289 (and tp!2101740 tp!2101739))))

(declare-fun b!7386454 () Bool)

(declare-fun tp!2101738 () Bool)

(assert (=> b!7386454 (= e!4421289 tp!2101738)))

(assert (=> b!7386034 (= tp!2101488 e!4421289)))

(declare-fun b!7386455 () Bool)

(declare-fun tp!2101737 () Bool)

(declare-fun tp!2101741 () Bool)

(assert (=> b!7386455 (= e!4421289 (and tp!2101737 tp!2101741))))

(assert (= (and b!7386034 (is-ElementMatch!19364 (h!78216 (t!386443 (exprs!8804 setElem!55895))))) b!7386452))

(assert (= (and b!7386034 (is-Concat!28209 (h!78216 (t!386443 (exprs!8804 setElem!55895))))) b!7386453))

(assert (= (and b!7386034 (is-Star!19364 (h!78216 (t!386443 (exprs!8804 setElem!55895))))) b!7386454))

(assert (= (and b!7386034 (is-Union!19364 (h!78216 (t!386443 (exprs!8804 setElem!55895))))) b!7386455))

(declare-fun b!7386456 () Bool)

(declare-fun e!4421290 () Bool)

(declare-fun tp!2101742 () Bool)

(declare-fun tp!2101743 () Bool)

(assert (=> b!7386456 (= e!4421290 (and tp!2101742 tp!2101743))))

(assert (=> b!7386034 (= tp!2101489 e!4421290)))

(assert (= (and b!7386034 (is-Cons!71768 (t!386443 (t!386443 (exprs!8804 setElem!55895))))) b!7386456))

(declare-fun b_lambda!285011 () Bool)

(assert (= b_lambda!285003 (or d!2286542 b_lambda!285011)))

(declare-fun bs!1922033 () Bool)

(declare-fun d!2286726 () Bool)

(assert (= bs!1922033 (and d!2286726 d!2286542)))

(assert (=> bs!1922033 (= (dynLambda!29558 lambda!458926 (h!78216 (t!386443 (exprs!8804 setElem!55895)))) (validRegex!9942 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))))

(declare-fun m!8034526 () Bool)

(assert (=> bs!1922033 m!8034526))

(assert (=> b!7386255 d!2286726))

(declare-fun b_lambda!285013 () Bool)

(assert (= b_lambda!285009 (or d!2286534 b_lambda!285013)))

(declare-fun bs!1922034 () Bool)

(declare-fun d!2286728 () Bool)

(assert (= bs!1922034 (and d!2286728 d!2286534)))

(assert (=> bs!1922034 (= (dynLambda!29558 lambda!458924 (h!78216 (t!386443 (exprs!8804 empty!3451)))) (validRegex!9942 (h!78216 (t!386443 (exprs!8804 empty!3451)))))))

(declare-fun m!8034528 () Bool)

(assert (=> bs!1922034 m!8034528))

(assert (=> b!7386305 d!2286728))

(declare-fun b_lambda!285015 () Bool)

(assert (= b_lambda!285007 (or d!2286546 b_lambda!285015)))

(declare-fun bs!1922035 () Bool)

(declare-fun d!2286730 () Bool)

(assert (= bs!1922035 (and d!2286730 d!2286546)))

(assert (=> bs!1922035 (= (dynLambda!29558 lambda!458927 (h!78216 (t!386443 (exprs!8804 c!10532)))) (validRegex!9942 (h!78216 (t!386443 (exprs!8804 c!10532)))))))

(declare-fun m!8034530 () Bool)

(assert (=> bs!1922035 m!8034530))

(assert (=> b!7386282 d!2286730))

(declare-fun b_lambda!285017 () Bool)

(assert (= b_lambda!285005 (or d!2286618 b_lambda!285017)))

(declare-fun bs!1922036 () Bool)

(declare-fun d!2286732 () Bool)

(assert (= bs!1922036 (and d!2286732 d!2286618)))

(assert (=> bs!1922036 (= (dynLambda!29558 lambda!458942 (h!78216 (exprs!8804 setElem!55901))) (validRegex!9942 (h!78216 (exprs!8804 setElem!55901))))))

(declare-fun m!8034532 () Bool)

(assert (=> bs!1922036 m!8034532))

(assert (=> b!7386257 d!2286732))

(push 1)

(assert (not b!7386451))

(assert (not b!7386375))

(assert (not b!7386415))

(assert (not b!7386366))

(assert (not d!2286708))

(assert (not b!7386423))

(assert (not b!7386441))

(assert (not setNonEmpty!55915))

(assert (not b!7386379))

(assert (not b!7386395))

(assert (not b!7386455))

(assert (not b!7386443))

(assert (not bs!1922034))

(assert (not b!7386447))

(assert (not b!7386425))

(assert (not bs!1922036))

(assert (not b!7386376))

(assert (not b!7386428))

(assert (not b!7386385))

(assert (not bm!679934))

(assert (not d!2286718))

(assert (not b!7386414))

(assert (not b!7386258))

(assert (not b!7386387))

(assert (not bs!1922035))

(assert (not b!7386378))

(assert (not b!7386397))

(assert (not b!7386374))

(assert (not d!2286720))

(assert (not b!7386394))

(assert (not b!7386418))

(assert (not b!7386439))

(assert (not b!7386256))

(assert (not b!7386454))

(assert (not b!7386382))

(assert (not bm!679922))

(assert (not b!7386384))

(assert (not b!7386456))

(assert (not b!7386327))

(assert (not b_lambda!285013))

(assert (not b!7386445))

(assert (not b!7386405))

(assert (not b_lambda!284981))

(assert (not bm!679951))

(assert (not b!7386383))

(assert tp_is_empty!48991)

(assert (not bm!679928))

(assert (not b!7386390))

(assert (not b!7386336))

(assert (not b!7386437))

(assert (not b!7386424))

(assert (not b!7386389))

(assert (not b!7386427))

(assert (not d!2286682))

(assert (not bm!679944))

(assert (not b!7386273))

(assert (not bm!679947))

(assert (not b!7386448))

(assert (not b!7386393))

(assert (not b!7386254))

(assert (not b!7386410))

(assert (not b!7386380))

(assert (not b!7386440))

(assert (not b_lambda!284983))

(assert (not b_lambda!284985))

(assert (not b!7386402))

(assert (not bm!679950))

(assert (not bm!679956))

(assert (not b!7386354))

(assert (not bm!679953))

(assert (not b!7386399))

(assert (not b!7386429))

(assert (not b!7386401))

(assert (not b!7386409))

(assert (not b!7386283))

(assert (not b!7386412))

(assert (not b!7386357))

(assert (not b!7386449))

(assert (not b!7386388))

(assert (not b!7386261))

(assert (not b!7386347))

(assert (not bm!679920))

(assert (not b!7386398))

(assert (not bs!1922033))

(assert (not b!7386435))

(assert (not b!7386420))

(assert (not d!2286696))

(assert (not bm!679949))

(assert (not b!7386421))

(assert (not b!7386453))

(assert (not b!7386407))

(assert (not b!7386345))

(assert (not b!7386419))

(assert (not b!7386450))

(assert (not b!7386436))

(assert (not b!7386433))

(assert (not bm!679943))

(assert (not b_lambda!285015))

(assert (not bm!679957))

(assert (not d!2286704))

(assert (not bm!679935))

(assert (not b!7386403))

(assert (not b!7386411))

(assert (not b!7386444))

(assert (not d!2286706))

(assert (not b_lambda!285011))

(assert (not bm!679923))

(assert (not b!7386432))

(assert (not d!2286716))

(assert (not b!7386416))

(assert (not setNonEmpty!55914))

(assert (not b!7386406))

(assert (not bm!679954))

(assert (not bm!679926))

(assert (not b!7386306))

(assert (not bm!679929))

(assert (not b!7386431))

(assert (not setNonEmpty!55916))

(assert (not b!7386270))

(assert (not b_lambda!285017))

(assert (not b!7386392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1922082 () Bool)

(declare-fun d!2286842 () Bool)

(assert (= bs!1922082 (and d!2286842 d!2286542)))

(declare-fun lambda!458957 () Int)

(assert (=> bs!1922082 (= lambda!458957 lambda!458926)))

(declare-fun bs!1922083 () Bool)

(assert (= bs!1922083 (and d!2286842 d!2286618)))

(assert (=> bs!1922083 (= lambda!458957 lambda!458942)))

(declare-fun bs!1922084 () Bool)

(assert (= bs!1922084 (and d!2286842 d!2286534)))

(assert (=> bs!1922084 (= lambda!458957 lambda!458924)))

(declare-fun bs!1922085 () Bool)

(assert (= bs!1922085 (and d!2286842 d!2286708)))

(assert (=> bs!1922085 (= lambda!458957 lambda!458949)))

(declare-fun bs!1922086 () Bool)

(assert (= bs!1922086 (and d!2286842 d!2286704)))

(assert (=> bs!1922086 (= lambda!458957 lambda!458948)))

(declare-fun bs!1922087 () Bool)

(assert (= bs!1922087 (and d!2286842 d!2286546)))

(assert (=> bs!1922087 (= lambda!458957 lambda!458927)))

(assert (=> d!2286842 (= (inv!91772 setElem!55915) (forall!18147 (exprs!8804 setElem!55915) lambda!458957))))

(declare-fun bs!1922088 () Bool)

(assert (= bs!1922088 d!2286842))

(declare-fun m!8034766 () Bool)

(assert (=> bs!1922088 m!8034766))

(assert (=> setNonEmpty!55915 d!2286842))

(declare-fun b!7387099 () Bool)

(declare-fun e!4421568 () Bool)

(declare-fun e!4421572 () Bool)

(assert (=> b!7387099 (= e!4421568 e!4421572)))

(declare-fun c!1372989 () Bool)

(assert (=> b!7387099 (= c!1372989 (is-Star!19364 (h!78216 (exprs!8804 setElem!55901))))))

(declare-fun d!2286844 () Bool)

(declare-fun res!2978852 () Bool)

(assert (=> d!2286844 (=> res!2978852 e!4421568)))

(assert (=> d!2286844 (= res!2978852 (is-ElementMatch!19364 (h!78216 (exprs!8804 setElem!55901))))))

(assert (=> d!2286844 (= (validRegex!9942 (h!78216 (exprs!8804 setElem!55901))) e!4421568)))

(declare-fun b!7387100 () Bool)

(declare-fun e!4421569 () Bool)

(declare-fun call!680041 () Bool)

(assert (=> b!7387100 (= e!4421569 call!680041)))

(declare-fun b!7387101 () Bool)

(declare-fun e!4421574 () Bool)

(assert (=> b!7387101 (= e!4421572 e!4421574)))

(declare-fun res!2978853 () Bool)

(assert (=> b!7387101 (= res!2978853 (not (nullable!8419 (reg!19693 (h!78216 (exprs!8804 setElem!55901))))))))

(assert (=> b!7387101 (=> (not res!2978853) (not e!4421574))))

(declare-fun bm!680035 () Bool)

(declare-fun call!680042 () Bool)

(declare-fun call!680040 () Bool)

(assert (=> bm!680035 (= call!680042 call!680040)))

(declare-fun b!7387102 () Bool)

(assert (=> b!7387102 (= e!4421574 call!680040)))

(declare-fun bm!680036 () Bool)

(declare-fun c!1372988 () Bool)

(assert (=> bm!680036 (= call!680040 (validRegex!9942 (ite c!1372989 (reg!19693 (h!78216 (exprs!8804 setElem!55901))) (ite c!1372988 (regOne!39241 (h!78216 (exprs!8804 setElem!55901))) (regOne!39240 (h!78216 (exprs!8804 setElem!55901)))))))))

(declare-fun b!7387103 () Bool)

(declare-fun e!4421573 () Bool)

(assert (=> b!7387103 (= e!4421573 call!680041)))

(declare-fun b!7387104 () Bool)

(declare-fun e!4421570 () Bool)

(assert (=> b!7387104 (= e!4421570 e!4421569)))

(declare-fun res!2978851 () Bool)

(assert (=> b!7387104 (=> (not res!2978851) (not e!4421569))))

(assert (=> b!7387104 (= res!2978851 call!680042)))

(declare-fun b!7387105 () Bool)

(declare-fun res!2978854 () Bool)

(assert (=> b!7387105 (=> (not res!2978854) (not e!4421573))))

(assert (=> b!7387105 (= res!2978854 call!680042)))

(declare-fun e!4421571 () Bool)

(assert (=> b!7387105 (= e!4421571 e!4421573)))

(declare-fun b!7387106 () Bool)

(declare-fun res!2978850 () Bool)

(assert (=> b!7387106 (=> res!2978850 e!4421570)))

(assert (=> b!7387106 (= res!2978850 (not (is-Concat!28209 (h!78216 (exprs!8804 setElem!55901)))))))

(assert (=> b!7387106 (= e!4421571 e!4421570)))

(declare-fun b!7387107 () Bool)

(assert (=> b!7387107 (= e!4421572 e!4421571)))

(assert (=> b!7387107 (= c!1372988 (is-Union!19364 (h!78216 (exprs!8804 setElem!55901))))))

(declare-fun bm!680037 () Bool)

(assert (=> bm!680037 (= call!680041 (validRegex!9942 (ite c!1372988 (regTwo!39241 (h!78216 (exprs!8804 setElem!55901))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55901))))))))

(assert (= (and d!2286844 (not res!2978852)) b!7387099))

(assert (= (and b!7387099 c!1372989) b!7387101))

(assert (= (and b!7387099 (not c!1372989)) b!7387107))

(assert (= (and b!7387101 res!2978853) b!7387102))

(assert (= (and b!7387107 c!1372988) b!7387105))

(assert (= (and b!7387107 (not c!1372988)) b!7387106))

(assert (= (and b!7387105 res!2978854) b!7387103))

(assert (= (and b!7387106 (not res!2978850)) b!7387104))

(assert (= (and b!7387104 res!2978851) b!7387100))

(assert (= (or b!7387105 b!7387104) bm!680035))

(assert (= (or b!7387103 b!7387100) bm!680037))

(assert (= (or b!7387102 bm!680035) bm!680036))

(declare-fun m!8034768 () Bool)

(assert (=> b!7387101 m!8034768))

(declare-fun m!8034770 () Bool)

(assert (=> bm!680036 m!8034770))

(declare-fun m!8034772 () Bool)

(assert (=> bm!680037 m!8034772))

(assert (=> bs!1922036 d!2286844))

(declare-fun d!2286846 () Bool)

(assert (=> d!2286846 (= (nullable!8419 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) (nullableFct!3384 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(declare-fun bs!1922089 () Bool)

(assert (= bs!1922089 d!2286846))

(declare-fun m!8034774 () Bool)

(assert (=> bs!1922089 m!8034774))

(assert (=> b!7386336 d!2286846))

(declare-fun b!7387108 () Bool)

(declare-fun e!4421575 () Bool)

(declare-fun e!4421579 () Bool)

(assert (=> b!7387108 (= e!4421575 e!4421579)))

(declare-fun c!1372991 () Bool)

(assert (=> b!7387108 (= c!1372991 (is-Star!19364 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))))))

(declare-fun d!2286848 () Bool)

(declare-fun res!2978857 () Bool)

(assert (=> d!2286848 (=> res!2978857 e!4421575)))

(assert (=> d!2286848 (= res!2978857 (is-ElementMatch!19364 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))))))

(assert (=> d!2286848 (= (validRegex!9942 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))) e!4421575)))

(declare-fun b!7387109 () Bool)

(declare-fun e!4421576 () Bool)

(declare-fun call!680044 () Bool)

(assert (=> b!7387109 (= e!4421576 call!680044)))

(declare-fun b!7387110 () Bool)

(declare-fun e!4421581 () Bool)

(assert (=> b!7387110 (= e!4421579 e!4421581)))

(declare-fun res!2978858 () Bool)

(assert (=> b!7387110 (= res!2978858 (not (nullable!8419 (reg!19693 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))))))))

(assert (=> b!7387110 (=> (not res!2978858) (not e!4421581))))

(declare-fun bm!680038 () Bool)

(declare-fun call!680045 () Bool)

(declare-fun call!680043 () Bool)

(assert (=> bm!680038 (= call!680045 call!680043)))

(declare-fun b!7387111 () Bool)

(assert (=> b!7387111 (= e!4421581 call!680043)))

(declare-fun c!1372990 () Bool)

(declare-fun bm!680039 () Bool)

(assert (=> bm!680039 (= call!680043 (validRegex!9942 (ite c!1372991 (reg!19693 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))) (ite c!1372990 (regOne!39241 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))) (regOne!39240 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))))))))

(declare-fun b!7387112 () Bool)

(declare-fun e!4421580 () Bool)

(assert (=> b!7387112 (= e!4421580 call!680044)))

(declare-fun b!7387113 () Bool)

(declare-fun e!4421577 () Bool)

(assert (=> b!7387113 (= e!4421577 e!4421576)))

(declare-fun res!2978856 () Bool)

(assert (=> b!7387113 (=> (not res!2978856) (not e!4421576))))

(assert (=> b!7387113 (= res!2978856 call!680045)))

(declare-fun b!7387114 () Bool)

(declare-fun res!2978859 () Bool)

(assert (=> b!7387114 (=> (not res!2978859) (not e!4421580))))

(assert (=> b!7387114 (= res!2978859 call!680045)))

(declare-fun e!4421578 () Bool)

(assert (=> b!7387114 (= e!4421578 e!4421580)))

(declare-fun b!7387115 () Bool)

(declare-fun res!2978855 () Bool)

(assert (=> b!7387115 (=> res!2978855 e!4421577)))

(assert (=> b!7387115 (= res!2978855 (not (is-Concat!28209 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))))))

(assert (=> b!7387115 (= e!4421578 e!4421577)))

(declare-fun b!7387116 () Bool)

(assert (=> b!7387116 (= e!4421579 e!4421578)))

(assert (=> b!7387116 (= c!1372990 (is-Union!19364 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))))))

(declare-fun bm!680040 () Bool)

(assert (=> bm!680040 (= call!680044 (validRegex!9942 (ite c!1372990 (regTwo!39241 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))) (regTwo!39240 (ite c!1372922 (regTwo!39241 (h!78216 (exprs!8804 empty!3451))) (regTwo!39240 (h!78216 (exprs!8804 empty!3451))))))))))

(assert (= (and d!2286848 (not res!2978857)) b!7387108))

(assert (= (and b!7387108 c!1372991) b!7387110))

(assert (= (and b!7387108 (not c!1372991)) b!7387116))

(assert (= (and b!7387110 res!2978858) b!7387111))

(assert (= (and b!7387116 c!1372990) b!7387114))

(assert (= (and b!7387116 (not c!1372990)) b!7387115))

(assert (= (and b!7387114 res!2978859) b!7387112))

(assert (= (and b!7387115 (not res!2978855)) b!7387113))

(assert (= (and b!7387113 res!2978856) b!7387109))

(assert (= (or b!7387114 b!7387113) bm!680038))

(assert (= (or b!7387112 b!7387109) bm!680040))

(assert (= (or b!7387111 bm!680038) bm!680039))

(declare-fun m!8034776 () Bool)

(assert (=> b!7387110 m!8034776))

(declare-fun m!8034778 () Bool)

(assert (=> bm!680039 m!8034778))

(declare-fun m!8034780 () Bool)

(assert (=> bm!680040 m!8034780))

(assert (=> bm!679954 d!2286848))

(declare-fun d!2286850 () Bool)

(declare-fun res!2978860 () Bool)

(declare-fun e!4421582 () Bool)

(assert (=> d!2286850 (=> res!2978860 e!4421582)))

(assert (=> d!2286850 (= res!2978860 (is-Nil!71768 (exprs!8804 _$3!507)))))

(assert (=> d!2286850 (= (forall!18147 (exprs!8804 _$3!507) lambda!458949) e!4421582)))

(declare-fun b!7387117 () Bool)

(declare-fun e!4421583 () Bool)

(assert (=> b!7387117 (= e!4421582 e!4421583)))

(declare-fun res!2978861 () Bool)

(assert (=> b!7387117 (=> (not res!2978861) (not e!4421583))))

(assert (=> b!7387117 (= res!2978861 (dynLambda!29558 lambda!458949 (h!78216 (exprs!8804 _$3!507))))))

(declare-fun b!7387118 () Bool)

(assert (=> b!7387118 (= e!4421583 (forall!18147 (t!386443 (exprs!8804 _$3!507)) lambda!458949))))

(assert (= (and d!2286850 (not res!2978860)) b!7387117))

(assert (= (and b!7387117 res!2978861) b!7387118))

(declare-fun b_lambda!285049 () Bool)

(assert (=> (not b_lambda!285049) (not b!7387117)))

(declare-fun m!8034782 () Bool)

(assert (=> b!7387117 m!8034782))

(declare-fun m!8034784 () Bool)

(assert (=> b!7387118 m!8034784))

(assert (=> d!2286708 d!2286850))

(declare-fun d!2286852 () Bool)

(declare-fun res!2978866 () Bool)

(declare-fun e!4421588 () Bool)

(assert (=> d!2286852 (=> res!2978866 e!4421588)))

(assert (=> d!2286852 (= res!2978866 (is-Nil!71772 (toList!11727 z!3451)))))

(assert (=> d!2286852 (= (forall!18149 (toList!11727 z!3451) lambda!458952) e!4421588)))

(declare-fun b!7387123 () Bool)

(declare-fun e!4421589 () Bool)

(assert (=> b!7387123 (= e!4421588 e!4421589)))

(declare-fun res!2978867 () Bool)

(assert (=> b!7387123 (=> (not res!2978867) (not e!4421589))))

(declare-fun dynLambda!29561 (Int Context!16608) Bool)

(assert (=> b!7387123 (= res!2978867 (dynLambda!29561 lambda!458952 (h!78220 (toList!11727 z!3451))))))

(declare-fun b!7387124 () Bool)

(assert (=> b!7387124 (= e!4421589 (forall!18149 (t!386447 (toList!11727 z!3451)) lambda!458952))))

(assert (= (and d!2286852 (not res!2978866)) b!7387123))

(assert (= (and b!7387123 res!2978867) b!7387124))

(declare-fun b_lambda!285051 () Bool)

(assert (=> (not b_lambda!285051) (not b!7387123)))

(declare-fun m!8034786 () Bool)

(assert (=> b!7387123 m!8034786))

(declare-fun m!8034788 () Bool)

(assert (=> b!7387124 m!8034788))

(assert (=> d!2286716 d!2286852))

(declare-fun b!7387125 () Bool)

(declare-fun e!4421595 () Bool)

(declare-fun call!680046 () Bool)

(assert (=> b!7387125 (= e!4421595 call!680046)))

(declare-fun b!7387126 () Bool)

(declare-fun e!4421590 () Bool)

(declare-fun e!4421591 () Bool)

(assert (=> b!7387126 (= e!4421590 e!4421591)))

(declare-fun res!2978868 () Bool)

(assert (=> b!7387126 (= res!2978868 call!680046)))

(assert (=> b!7387126 (=> (not res!2978868) (not e!4421591))))

(declare-fun b!7387127 () Bool)

(declare-fun e!4421594 () Bool)

(assert (=> b!7387127 (= e!4421594 e!4421590)))

(declare-fun c!1372992 () Bool)

(assert (=> b!7387127 (= c!1372992 (is-Union!19364 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))

(declare-fun b!7387128 () Bool)

(declare-fun call!680047 () Bool)

(assert (=> b!7387128 (= e!4421591 call!680047)))

(declare-fun b!7387129 () Bool)

(declare-fun e!4421593 () Bool)

(declare-fun e!4421592 () Bool)

(assert (=> b!7387129 (= e!4421593 e!4421592)))

(declare-fun res!2978871 () Bool)

(assert (=> b!7387129 (=> (not res!2978871) (not e!4421592))))

(assert (=> b!7387129 (= res!2978871 (and (not (is-EmptyLang!19364 (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (not (is-ElementMatch!19364 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(declare-fun b!7387130 () Bool)

(assert (=> b!7387130 (= e!4421592 e!4421594)))

(declare-fun res!2978870 () Bool)

(assert (=> b!7387130 (=> res!2978870 e!4421594)))

(assert (=> b!7387130 (= res!2978870 (is-Star!19364 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))

(declare-fun bm!680042 () Bool)

(assert (=> bm!680042 (= call!680046 (nullable!8419 (ite c!1372992 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))) (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(declare-fun b!7387131 () Bool)

(assert (=> b!7387131 (= e!4421590 e!4421595)))

(declare-fun res!2978872 () Bool)

(assert (=> b!7387131 (= res!2978872 call!680047)))

(assert (=> b!7387131 (=> res!2978872 e!4421595)))

(declare-fun d!2286854 () Bool)

(declare-fun res!2978869 () Bool)

(assert (=> d!2286854 (=> res!2978869 e!4421593)))

(assert (=> d!2286854 (= res!2978869 (is-EmptyExpr!19364 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))

(assert (=> d!2286854 (= (nullableFct!3384 (regOne!39240 (h!78216 (exprs!8804 c!10532)))) e!4421593)))

(declare-fun bm!680041 () Bool)

(assert (=> bm!680041 (= call!680047 (nullable!8419 (ite c!1372992 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))) (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(assert (= (and d!2286854 (not res!2978869)) b!7387129))

(assert (= (and b!7387129 res!2978871) b!7387130))

(assert (= (and b!7387130 (not res!2978870)) b!7387127))

(assert (= (and b!7387127 c!1372992) b!7387131))

(assert (= (and b!7387127 (not c!1372992)) b!7387126))

(assert (= (and b!7387131 (not res!2978872)) b!7387125))

(assert (= (and b!7387126 res!2978868) b!7387128))

(assert (= (or b!7387125 b!7387126) bm!680042))

(assert (= (or b!7387131 b!7387128) bm!680041))

(declare-fun m!8034790 () Bool)

(assert (=> bm!680042 m!8034790))

(declare-fun m!8034792 () Bool)

(assert (=> bm!680041 m!8034792))

(assert (=> d!2286696 d!2286854))

(declare-fun d!2286856 () Bool)

(assert (=> d!2286856 (= ($colon$colon!3322 (exprs!8804 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880))) (ite (or c!1372918 c!1372919) (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) (Cons!71768 (ite (or c!1372918 c!1372919) (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (exprs!8804 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)))))))

(assert (=> bm!679949 d!2286856))

(declare-fun d!2286858 () Bool)

(declare-fun res!2978877 () Bool)

(declare-fun e!4421600 () Bool)

(assert (=> d!2286858 (=> res!2978877 e!4421600)))

(assert (=> d!2286858 (= res!2978877 (is-Nil!71772 lt!2617715))))

(assert (=> d!2286858 (= (noDuplicate!3091 lt!2617715) e!4421600)))

(declare-fun b!7387136 () Bool)

(declare-fun e!4421601 () Bool)

(assert (=> b!7387136 (= e!4421600 e!4421601)))

(declare-fun res!2978878 () Bool)

(assert (=> b!7387136 (=> (not res!2978878) (not e!4421601))))

(declare-fun contains!20835 (List!71896 Context!16608) Bool)

(assert (=> b!7387136 (= res!2978878 (not (contains!20835 (t!386447 lt!2617715) (h!78220 lt!2617715))))))

(declare-fun b!7387137 () Bool)

(assert (=> b!7387137 (= e!4421601 (noDuplicate!3091 (t!386447 lt!2617715)))))

(assert (= (and d!2286858 (not res!2978877)) b!7387136))

(assert (= (and b!7387136 res!2978878) b!7387137))

(declare-fun m!8034794 () Bool)

(assert (=> b!7387136 m!8034794))

(declare-fun m!8034796 () Bool)

(assert (=> b!7387137 m!8034796))

(assert (=> d!2286718 d!2286858))

(declare-fun d!2286860 () Bool)

(declare-fun e!4421608 () Bool)

(assert (=> d!2286860 e!4421608))

(declare-fun res!2978884 () Bool)

(assert (=> d!2286860 (=> (not res!2978884) (not e!4421608))))

(declare-fun res!2978883 () List!71896)

(assert (=> d!2286860 (= res!2978884 (noDuplicate!3091 res!2978883))))

(declare-fun e!4421610 () Bool)

(assert (=> d!2286860 e!4421610))

(assert (=> d!2286860 (= (choose!57373 z!3451) res!2978883)))

(declare-fun b!7387145 () Bool)

(declare-fun e!4421609 () Bool)

(declare-fun tp!2102284 () Bool)

(assert (=> b!7387145 (= e!4421609 tp!2102284)))

(declare-fun tp!2102285 () Bool)

(declare-fun b!7387144 () Bool)

(assert (=> b!7387144 (= e!4421610 (and (inv!91772 (h!78220 res!2978883)) e!4421609 tp!2102285))))

(declare-fun b!7387146 () Bool)

(assert (=> b!7387146 (= e!4421608 (= (content!15203 res!2978883) z!3451))))

(assert (= b!7387144 b!7387145))

(assert (= (and d!2286860 (is-Cons!71772 res!2978883)) b!7387144))

(assert (= (and d!2286860 res!2978884) b!7387146))

(declare-fun m!8034798 () Bool)

(assert (=> d!2286860 m!8034798))

(declare-fun m!8034800 () Bool)

(assert (=> b!7387144 m!8034800))

(declare-fun m!8034802 () Bool)

(assert (=> b!7387146 m!8034802))

(assert (=> d!2286718 d!2286860))

(declare-fun d!2286862 () Bool)

(declare-fun res!2978885 () Bool)

(declare-fun e!4421611 () Bool)

(assert (=> d!2286862 (=> res!2978885 e!4421611)))

(assert (=> d!2286862 (= res!2978885 (is-Nil!71768 (exprs!8804 setElem!55906)))))

(assert (=> d!2286862 (= (forall!18147 (exprs!8804 setElem!55906) lambda!458948) e!4421611)))

(declare-fun b!7387147 () Bool)

(declare-fun e!4421612 () Bool)

(assert (=> b!7387147 (= e!4421611 e!4421612)))

(declare-fun res!2978886 () Bool)

(assert (=> b!7387147 (=> (not res!2978886) (not e!4421612))))

(assert (=> b!7387147 (= res!2978886 (dynLambda!29558 lambda!458948 (h!78216 (exprs!8804 setElem!55906))))))

(declare-fun b!7387148 () Bool)

(assert (=> b!7387148 (= e!4421612 (forall!18147 (t!386443 (exprs!8804 setElem!55906)) lambda!458948))))

(assert (= (and d!2286862 (not res!2978885)) b!7387147))

(assert (= (and b!7387147 res!2978886) b!7387148))

(declare-fun b_lambda!285053 () Bool)

(assert (=> (not b_lambda!285053) (not b!7387147)))

(declare-fun m!8034804 () Bool)

(assert (=> b!7387147 m!8034804))

(declare-fun m!8034806 () Bool)

(assert (=> b!7387148 m!8034806))

(assert (=> d!2286704 d!2286862))

(declare-fun bm!680043 () Bool)

(declare-fun call!680048 () List!71892)

(declare-fun call!680052 () List!71892)

(assert (=> bm!680043 (= call!680048 call!680052)))

(declare-fun b!7387149 () Bool)

(declare-fun e!4421614 () (Set Context!16608))

(declare-fun call!680051 () (Set Context!16608))

(assert (=> b!7387149 (= e!4421614 call!680051)))

(declare-fun b!7387150 () Bool)

(assert (=> b!7387150 (= e!4421614 (as set.empty (Set Context!16608)))))

(declare-fun bm!680044 () Bool)

(declare-fun call!680050 () (Set Context!16608))

(declare-fun call!680049 () (Set Context!16608))

(assert (=> bm!680044 (= call!680050 call!680049)))

(declare-fun c!1372993 () Bool)

(declare-fun bm!680045 () Bool)

(declare-fun c!1372997 () Bool)

(declare-fun c!1372996 () Bool)

(assert (=> bm!680045 (= call!680049 (derivationStepZipperDown!3171 (ite c!1372993 (regOne!39241 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372996 (regTwo!39240 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372997 (regOne!39240 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))) (ite (or c!1372993 c!1372996) (ite c!1372915 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679954)) (Context!16609 call!680048)) lt!2617689))))

(declare-fun bm!680046 () Bool)

(assert (=> bm!680046 (= call!680051 call!680050)))

(declare-fun b!7387151 () Bool)

(declare-fun e!4421616 () Bool)

(assert (=> b!7387151 (= e!4421616 (nullable!8419 (regOne!39240 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))))

(declare-fun c!1372995 () Bool)

(declare-fun d!2286864 () Bool)

(assert (=> d!2286864 (= c!1372995 (and (is-ElementMatch!19364 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))) (= (c!1372812 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))) lt!2617689)))))

(declare-fun e!4421615 () (Set Context!16608))

(assert (=> d!2286864 (= (derivationStepZipperDown!3171 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) (ite c!1372915 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679954)) lt!2617689) e!4421615)))

(declare-fun b!7387152 () Bool)

(declare-fun e!4421617 () (Set Context!16608))

(assert (=> b!7387152 (= e!4421617 call!680051)))

(declare-fun bm!680047 () Bool)

(assert (=> bm!680047 (= call!680052 ($colon$colon!3322 (exprs!8804 (ite c!1372915 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679954))) (ite (or c!1372996 c!1372997) (regTwo!39240 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))))

(declare-fun b!7387153 () Bool)

(declare-fun e!4421613 () (Set Context!16608))

(assert (=> b!7387153 (= e!4421615 e!4421613)))

(assert (=> b!7387153 (= c!1372993 (is-Union!19364 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))

(declare-fun bm!680048 () Bool)

(declare-fun call!680053 () (Set Context!16608))

(assert (=> bm!680048 (= call!680053 (derivationStepZipperDown!3171 (ite c!1372993 (regTwo!39241 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))) (ite c!1372993 (ite c!1372915 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679954)) (Context!16609 call!680052)) lt!2617689))))

(declare-fun b!7387154 () Bool)

(assert (=> b!7387154 (= c!1372996 e!4421616)))

(declare-fun res!2978887 () Bool)

(assert (=> b!7387154 (=> (not res!2978887) (not e!4421616))))

(assert (=> b!7387154 (= res!2978887 (is-Concat!28209 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))

(declare-fun e!4421618 () (Set Context!16608))

(assert (=> b!7387154 (= e!4421613 e!4421618)))

(declare-fun c!1372994 () Bool)

(declare-fun b!7387155 () Bool)

(assert (=> b!7387155 (= c!1372994 (is-Star!19364 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))

(assert (=> b!7387155 (= e!4421617 e!4421614)))

(declare-fun b!7387156 () Bool)

(assert (=> b!7387156 (= e!4421613 (set.union call!680049 call!680053))))

(declare-fun b!7387157 () Bool)

(assert (=> b!7387157 (= e!4421618 e!4421617)))

(assert (=> b!7387157 (= c!1372997 (is-Concat!28209 (ite c!1372915 (regTwo!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))

(declare-fun b!7387158 () Bool)

(assert (=> b!7387158 (= e!4421615 (set.insert (ite c!1372915 (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679954)) (as set.empty (Set Context!16608))))))

(declare-fun b!7387159 () Bool)

(assert (=> b!7387159 (= e!4421618 (set.union call!680053 call!680050))))

(assert (= (and d!2286864 c!1372995) b!7387158))

(assert (= (and d!2286864 (not c!1372995)) b!7387153))

(assert (= (and b!7387153 c!1372993) b!7387156))

(assert (= (and b!7387153 (not c!1372993)) b!7387154))

(assert (= (and b!7387154 res!2978887) b!7387151))

(assert (= (and b!7387154 c!1372996) b!7387159))

(assert (= (and b!7387154 (not c!1372996)) b!7387157))

(assert (= (and b!7387157 c!1372997) b!7387152))

(assert (= (and b!7387157 (not c!1372997)) b!7387155))

(assert (= (and b!7387155 c!1372994) b!7387149))

(assert (= (and b!7387155 (not c!1372994)) b!7387150))

(assert (= (or b!7387152 b!7387149) bm!680043))

(assert (= (or b!7387152 b!7387149) bm!680046))

(assert (= (or b!7387159 bm!680043) bm!680047))

(assert (= (or b!7387159 bm!680046) bm!680044))

(assert (= (or b!7387156 bm!680044) bm!680045))

(assert (= (or b!7387156 b!7387159) bm!680048))

(declare-fun m!8034808 () Bool)

(assert (=> bm!680045 m!8034808))

(declare-fun m!8034810 () Bool)

(assert (=> b!7387158 m!8034810))

(declare-fun m!8034812 () Bool)

(assert (=> bm!680048 m!8034812))

(declare-fun m!8034814 () Bool)

(assert (=> b!7387151 m!8034814))

(declare-fun m!8034816 () Bool)

(assert (=> bm!680047 m!8034816))

(assert (=> bm!679950 d!2286864))

(assert (=> d!2286720 d!2286716))

(assert (=> d!2286720 d!2286718))

(declare-fun d!2286866 () Bool)

(declare-fun res!2978888 () Bool)

(declare-fun e!4421619 () Bool)

(assert (=> d!2286866 (=> res!2978888 e!4421619)))

(assert (=> d!2286866 (= res!2978888 (is-Nil!71768 (t!386443 (t!386443 (exprs!8804 empty!3451)))))))

(assert (=> d!2286866 (= (forall!18147 (t!386443 (t!386443 (exprs!8804 empty!3451))) lambda!458924) e!4421619)))

(declare-fun b!7387160 () Bool)

(declare-fun e!4421620 () Bool)

(assert (=> b!7387160 (= e!4421619 e!4421620)))

(declare-fun res!2978889 () Bool)

(assert (=> b!7387160 (=> (not res!2978889) (not e!4421620))))

(assert (=> b!7387160 (= res!2978889 (dynLambda!29558 lambda!458924 (h!78216 (t!386443 (t!386443 (exprs!8804 empty!3451))))))))

(declare-fun b!7387161 () Bool)

(assert (=> b!7387161 (= e!4421620 (forall!18147 (t!386443 (t!386443 (t!386443 (exprs!8804 empty!3451)))) lambda!458924))))

(assert (= (and d!2286866 (not res!2978888)) b!7387160))

(assert (= (and b!7387160 res!2978889) b!7387161))

(declare-fun b_lambda!285055 () Bool)

(assert (=> (not b_lambda!285055) (not b!7387160)))

(declare-fun m!8034818 () Bool)

(assert (=> b!7387160 m!8034818))

(declare-fun m!8034820 () Bool)

(assert (=> b!7387161 m!8034820))

(assert (=> b!7386306 d!2286866))

(declare-fun d!2286868 () Bool)

(declare-fun res!2978890 () Bool)

(declare-fun e!4421621 () Bool)

(assert (=> d!2286868 (=> res!2978890 e!4421621)))

(assert (=> d!2286868 (= res!2978890 (is-Nil!71768 (t!386443 (t!386443 (exprs!8804 setElem!55895)))))))

(assert (=> d!2286868 (= (forall!18147 (t!386443 (t!386443 (exprs!8804 setElem!55895))) lambda!458926) e!4421621)))

(declare-fun b!7387162 () Bool)

(declare-fun e!4421622 () Bool)

(assert (=> b!7387162 (= e!4421621 e!4421622)))

(declare-fun res!2978891 () Bool)

(assert (=> b!7387162 (=> (not res!2978891) (not e!4421622))))

(assert (=> b!7387162 (= res!2978891 (dynLambda!29558 lambda!458926 (h!78216 (t!386443 (t!386443 (exprs!8804 setElem!55895))))))))

(declare-fun b!7387163 () Bool)

(assert (=> b!7387163 (= e!4421622 (forall!18147 (t!386443 (t!386443 (t!386443 (exprs!8804 setElem!55895)))) lambda!458926))))

(assert (= (and d!2286868 (not res!2978890)) b!7387162))

(assert (= (and b!7387162 res!2978891) b!7387163))

(declare-fun b_lambda!285057 () Bool)

(assert (=> (not b_lambda!285057) (not b!7387162)))

(declare-fun m!8034822 () Bool)

(assert (=> b!7387162 m!8034822))

(declare-fun m!8034824 () Bool)

(assert (=> b!7387163 m!8034824))

(assert (=> b!7386256 d!2286868))

(declare-fun b!7387164 () Bool)

(declare-fun e!4421623 () Bool)

(declare-fun e!4421627 () Bool)

(assert (=> b!7387164 (= e!4421623 e!4421627)))

(declare-fun c!1372999 () Bool)

(assert (=> b!7387164 (= c!1372999 (is-Star!19364 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))))

(declare-fun d!2286870 () Bool)

(declare-fun res!2978894 () Bool)

(assert (=> d!2286870 (=> res!2978894 e!4421623)))

(assert (=> d!2286870 (= res!2978894 (is-ElementMatch!19364 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))))

(assert (=> d!2286870 (= (validRegex!9942 (h!78216 (t!386443 (exprs!8804 setElem!55895)))) e!4421623)))

(declare-fun b!7387165 () Bool)

(declare-fun e!4421624 () Bool)

(declare-fun call!680055 () Bool)

(assert (=> b!7387165 (= e!4421624 call!680055)))

(declare-fun b!7387166 () Bool)

(declare-fun e!4421629 () Bool)

(assert (=> b!7387166 (= e!4421627 e!4421629)))

(declare-fun res!2978895 () Bool)

(assert (=> b!7387166 (= res!2978895 (not (nullable!8419 (reg!19693 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))))))

(assert (=> b!7387166 (=> (not res!2978895) (not e!4421629))))

(declare-fun bm!680049 () Bool)

(declare-fun call!680056 () Bool)

(declare-fun call!680054 () Bool)

(assert (=> bm!680049 (= call!680056 call!680054)))

(declare-fun b!7387167 () Bool)

(assert (=> b!7387167 (= e!4421629 call!680054)))

(declare-fun bm!680050 () Bool)

(declare-fun c!1372998 () Bool)

(assert (=> bm!680050 (= call!680054 (validRegex!9942 (ite c!1372999 (reg!19693 (h!78216 (t!386443 (exprs!8804 setElem!55895)))) (ite c!1372998 (regOne!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))) (regOne!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895))))))))))

(declare-fun b!7387168 () Bool)

(declare-fun e!4421628 () Bool)

(assert (=> b!7387168 (= e!4421628 call!680055)))

(declare-fun b!7387169 () Bool)

(declare-fun e!4421625 () Bool)

(assert (=> b!7387169 (= e!4421625 e!4421624)))

(declare-fun res!2978893 () Bool)

(assert (=> b!7387169 (=> (not res!2978893) (not e!4421624))))

(assert (=> b!7387169 (= res!2978893 call!680056)))

(declare-fun b!7387170 () Bool)

(declare-fun res!2978896 () Bool)

(assert (=> b!7387170 (=> (not res!2978896) (not e!4421628))))

(assert (=> b!7387170 (= res!2978896 call!680056)))

(declare-fun e!4421626 () Bool)

(assert (=> b!7387170 (= e!4421626 e!4421628)))

(declare-fun b!7387171 () Bool)

(declare-fun res!2978892 () Bool)

(assert (=> b!7387171 (=> res!2978892 e!4421625)))

(assert (=> b!7387171 (= res!2978892 (not (is-Concat!28209 (h!78216 (t!386443 (exprs!8804 setElem!55895))))))))

(assert (=> b!7387171 (= e!4421626 e!4421625)))

(declare-fun b!7387172 () Bool)

(assert (=> b!7387172 (= e!4421627 e!4421626)))

(assert (=> b!7387172 (= c!1372998 (is-Union!19364 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))))

(declare-fun bm!680051 () Bool)

(assert (=> bm!680051 (= call!680055 (validRegex!9942 (ite c!1372998 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))) (regTwo!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))))))

(assert (= (and d!2286870 (not res!2978894)) b!7387164))

(assert (= (and b!7387164 c!1372999) b!7387166))

(assert (= (and b!7387164 (not c!1372999)) b!7387172))

(assert (= (and b!7387166 res!2978895) b!7387167))

(assert (= (and b!7387172 c!1372998) b!7387170))

(assert (= (and b!7387172 (not c!1372998)) b!7387171))

(assert (= (and b!7387170 res!2978896) b!7387168))

(assert (= (and b!7387171 (not res!2978892)) b!7387169))

(assert (= (and b!7387169 res!2978893) b!7387165))

(assert (= (or b!7387170 b!7387169) bm!680049))

(assert (= (or b!7387168 b!7387165) bm!680051))

(assert (= (or b!7387167 bm!680049) bm!680050))

(declare-fun m!8034826 () Bool)

(assert (=> b!7387166 m!8034826))

(declare-fun m!8034828 () Bool)

(assert (=> bm!680050 m!8034828))

(declare-fun m!8034830 () Bool)

(assert (=> bm!680051 m!8034830))

(assert (=> bs!1922033 d!2286870))

(declare-fun bm!680052 () Bool)

(declare-fun call!680057 () List!71892)

(declare-fun call!680061 () List!71892)

(assert (=> bm!680052 (= call!680057 call!680061)))

(declare-fun b!7387173 () Bool)

(declare-fun e!4421631 () (Set Context!16608))

(declare-fun call!680060 () (Set Context!16608))

(assert (=> b!7387173 (= e!4421631 call!680060)))

(declare-fun b!7387174 () Bool)

(assert (=> b!7387174 (= e!4421631 (as set.empty (Set Context!16608)))))

(declare-fun bm!680053 () Bool)

(declare-fun call!680059 () (Set Context!16608))

(declare-fun call!680058 () (Set Context!16608))

(assert (=> bm!680053 (= call!680059 call!680058)))

(declare-fun c!1373000 () Bool)

(declare-fun bm!680054 () Bool)

(declare-fun c!1373004 () Bool)

(declare-fun c!1373003 () Bool)

(assert (=> bm!680054 (= call!680058 (derivationStepZipperDown!3171 (ite c!1373000 (regOne!39241 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))) (ite c!1373003 (regTwo!39240 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))) (ite c!1373004 (regOne!39240 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))) (reg!19693 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))))) (ite (or c!1373000 c!1373003) (ite (or c!1372901 c!1372904) (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679929)) (Context!16609 call!680057)) lt!2617689))))

(declare-fun bm!680055 () Bool)

(assert (=> bm!680055 (= call!680060 call!680059)))

(declare-fun b!7387175 () Bool)

(declare-fun e!4421633 () Bool)

(assert (=> b!7387175 (= e!4421633 (nullable!8419 (regOne!39240 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))))))

(declare-fun d!2286872 () Bool)

(declare-fun c!1373002 () Bool)

(assert (=> d!2286872 (= c!1373002 (and (is-ElementMatch!19364 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))) (= (c!1372812 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))) lt!2617689)))))

(declare-fun e!4421632 () (Set Context!16608))

(assert (=> d!2286872 (= (derivationStepZipperDown!3171 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))) (ite (or c!1372901 c!1372904) (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679929)) lt!2617689) e!4421632)))

(declare-fun b!7387176 () Bool)

(declare-fun e!4421634 () (Set Context!16608))

(assert (=> b!7387176 (= e!4421634 call!680060)))

(declare-fun bm!680056 () Bool)

(assert (=> bm!680056 (= call!680061 ($colon$colon!3322 (exprs!8804 (ite (or c!1372901 c!1372904) (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679929))) (ite (or c!1373003 c!1373004) (regTwo!39240 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))) (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))))))

(declare-fun b!7387177 () Bool)

(declare-fun e!4421630 () (Set Context!16608))

(assert (=> b!7387177 (= e!4421632 e!4421630)))

(assert (=> b!7387177 (= c!1373000 (is-Union!19364 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))))))

(declare-fun bm!680057 () Bool)

(declare-fun call!680062 () (Set Context!16608))

(assert (=> bm!680057 (= call!680062 (derivationStepZipperDown!3171 (ite c!1373000 (regTwo!39241 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))) (regOne!39240 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))) (ite c!1373000 (ite (or c!1372901 c!1372904) (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679929)) (Context!16609 call!680061)) lt!2617689))))

(declare-fun b!7387178 () Bool)

(assert (=> b!7387178 (= c!1373003 e!4421633)))

(declare-fun res!2978897 () Bool)

(assert (=> b!7387178 (=> (not res!2978897) (not e!4421633))))

(assert (=> b!7387178 (= res!2978897 (is-Concat!28209 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))))))

(declare-fun e!4421635 () (Set Context!16608))

(assert (=> b!7387178 (= e!4421630 e!4421635)))

(declare-fun c!1373001 () Bool)

(declare-fun b!7387179 () Bool)

(assert (=> b!7387179 (= c!1373001 (is-Star!19364 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))))))

(assert (=> b!7387179 (= e!4421634 e!4421631)))

(declare-fun b!7387180 () Bool)

(assert (=> b!7387180 (= e!4421630 (set.union call!680058 call!680062))))

(declare-fun b!7387181 () Bool)

(assert (=> b!7387181 (= e!4421635 e!4421634)))

(assert (=> b!7387181 (= c!1373004 (is-Concat!28209 (ite c!1372901 (regOne!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372904 (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372905 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (reg!19693 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))))))

(declare-fun b!7387182 () Bool)

(assert (=> b!7387182 (= e!4421632 (set.insert (ite (or c!1372901 c!1372904) (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679929)) (as set.empty (Set Context!16608))))))

(declare-fun b!7387183 () Bool)

(assert (=> b!7387183 (= e!4421635 (set.union call!680062 call!680059))))

(assert (= (and d!2286872 c!1373002) b!7387182))

(assert (= (and d!2286872 (not c!1373002)) b!7387177))

(assert (= (and b!7387177 c!1373000) b!7387180))

(assert (= (and b!7387177 (not c!1373000)) b!7387178))

(assert (= (and b!7387178 res!2978897) b!7387175))

(assert (= (and b!7387178 c!1373003) b!7387183))

(assert (= (and b!7387178 (not c!1373003)) b!7387181))

(assert (= (and b!7387181 c!1373004) b!7387176))

(assert (= (and b!7387181 (not c!1373004)) b!7387179))

(assert (= (and b!7387179 c!1373001) b!7387173))

(assert (= (and b!7387179 (not c!1373001)) b!7387174))

(assert (= (or b!7387176 b!7387173) bm!680052))

(assert (= (or b!7387176 b!7387173) bm!680055))

(assert (= (or b!7387183 bm!680052) bm!680056))

(assert (= (or b!7387183 bm!680055) bm!680053))

(assert (= (or b!7387180 bm!680053) bm!680054))

(assert (= (or b!7387180 b!7387183) bm!680057))

(declare-fun m!8034832 () Bool)

(assert (=> bm!680054 m!8034832))

(declare-fun m!8034834 () Bool)

(assert (=> b!7387182 m!8034834))

(declare-fun m!8034836 () Bool)

(assert (=> bm!680057 m!8034836))

(declare-fun m!8034838 () Bool)

(assert (=> b!7387175 m!8034838))

(declare-fun m!8034840 () Bool)

(assert (=> bm!680056 m!8034840))

(assert (=> bm!679926 d!2286872))

(declare-fun bs!1922090 () Bool)

(declare-fun d!2286874 () Bool)

(assert (= bs!1922090 (and d!2286874 d!2286542)))

(declare-fun lambda!458958 () Int)

(assert (=> bs!1922090 (= lambda!458958 lambda!458926)))

(declare-fun bs!1922091 () Bool)

(assert (= bs!1922091 (and d!2286874 d!2286618)))

(assert (=> bs!1922091 (= lambda!458958 lambda!458942)))

(declare-fun bs!1922092 () Bool)

(assert (= bs!1922092 (and d!2286874 d!2286534)))

(assert (=> bs!1922092 (= lambda!458958 lambda!458924)))

(declare-fun bs!1922093 () Bool)

(assert (= bs!1922093 (and d!2286874 d!2286708)))

(assert (=> bs!1922093 (= lambda!458958 lambda!458949)))

(declare-fun bs!1922094 () Bool)

(assert (= bs!1922094 (and d!2286874 d!2286704)))

(assert (=> bs!1922094 (= lambda!458958 lambda!458948)))

(declare-fun bs!1922095 () Bool)

(assert (= bs!1922095 (and d!2286874 d!2286842)))

(assert (=> bs!1922095 (= lambda!458958 lambda!458957)))

(declare-fun bs!1922096 () Bool)

(assert (= bs!1922096 (and d!2286874 d!2286546)))

(assert (=> bs!1922096 (= lambda!458958 lambda!458927)))

(assert (=> d!2286874 (= (inv!91772 setElem!55916) (forall!18147 (exprs!8804 setElem!55916) lambda!458958))))

(declare-fun bs!1922097 () Bool)

(assert (= bs!1922097 d!2286874))

(declare-fun m!8034842 () Bool)

(assert (=> bs!1922097 m!8034842))

(assert (=> setNonEmpty!55916 d!2286874))

(declare-fun d!2286876 () Bool)

(assert (=> d!2286876 (= (nullable!8419 (reg!19693 (h!78216 (exprs!8804 c!10532)))) (nullableFct!3384 (reg!19693 (h!78216 (exprs!8804 c!10532)))))))

(declare-fun bs!1922098 () Bool)

(assert (= bs!1922098 d!2286876))

(declare-fun m!8034844 () Bool)

(assert (=> bs!1922098 m!8034844))

(assert (=> b!7386366 d!2286876))

(declare-fun bm!680058 () Bool)

(declare-fun call!680063 () List!71892)

(declare-fun call!680067 () List!71892)

(assert (=> bm!680058 (= call!680063 call!680067)))

(declare-fun b!7387184 () Bool)

(declare-fun e!4421637 () (Set Context!16608))

(declare-fun call!680066 () (Set Context!16608))

(assert (=> b!7387184 (= e!4421637 call!680066)))

(declare-fun b!7387185 () Bool)

(assert (=> b!7387185 (= e!4421637 (as set.empty (Set Context!16608)))))

(declare-fun bm!680059 () Bool)

(declare-fun call!680065 () (Set Context!16608))

(declare-fun call!680064 () (Set Context!16608))

(assert (=> bm!680059 (= call!680065 call!680064)))

(declare-fun c!1373009 () Bool)

(declare-fun bm!680060 () Bool)

(declare-fun c!1373008 () Bool)

(declare-fun c!1373005 () Bool)

(assert (=> bm!680060 (= call!680064 (derivationStepZipperDown!3171 (ite c!1373005 (regOne!39241 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) (ite c!1373008 (regTwo!39240 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) (ite c!1373009 (regOne!39240 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) (reg!19693 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))) (ite (or c!1373005 c!1373008) (ite (or c!1372896 c!1372899) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679923)) (Context!16609 call!680063)) lt!2617689))))

(declare-fun bm!680061 () Bool)

(assert (=> bm!680061 (= call!680066 call!680065)))

(declare-fun b!7387186 () Bool)

(declare-fun e!4421639 () Bool)

(assert (=> b!7387186 (= e!4421639 (nullable!8419 (regOne!39240 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))))

(declare-fun d!2286878 () Bool)

(declare-fun c!1373007 () Bool)

(assert (=> d!2286878 (= c!1373007 (and (is-ElementMatch!19364 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) (= (c!1372812 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) lt!2617689)))))

(declare-fun e!4421638 () (Set Context!16608))

(assert (=> d!2286878 (= (derivationStepZipperDown!3171 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (ite (or c!1372896 c!1372899) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679923)) lt!2617689) e!4421638)))

(declare-fun b!7387187 () Bool)

(declare-fun e!4421640 () (Set Context!16608))

(assert (=> b!7387187 (= e!4421640 call!680066)))

(declare-fun bm!680062 () Bool)

(assert (=> bm!680062 (= call!680067 ($colon$colon!3322 (exprs!8804 (ite (or c!1372896 c!1372899) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679923))) (ite (or c!1373008 c!1373009) (regTwo!39240 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))))

(declare-fun b!7387188 () Bool)

(declare-fun e!4421636 () (Set Context!16608))

(assert (=> b!7387188 (= e!4421638 e!4421636)))

(assert (=> b!7387188 (= c!1373005 (is-Union!19364 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))))

(declare-fun call!680068 () (Set Context!16608))

(declare-fun bm!680063 () Bool)

(assert (=> bm!680063 (= call!680068 (derivationStepZipperDown!3171 (ite c!1373005 (regTwo!39241 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) (regOne!39240 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))) (ite c!1373005 (ite (or c!1372896 c!1372899) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679923)) (Context!16609 call!680067)) lt!2617689))))

(declare-fun b!7387189 () Bool)

(assert (=> b!7387189 (= c!1373008 e!4421639)))

(declare-fun res!2978898 () Bool)

(assert (=> b!7387189 (=> (not res!2978898) (not e!4421639))))

(assert (=> b!7387189 (= res!2978898 (is-Concat!28209 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))))

(declare-fun e!4421641 () (Set Context!16608))

(assert (=> b!7387189 (= e!4421636 e!4421641)))

(declare-fun b!7387190 () Bool)

(declare-fun c!1373006 () Bool)

(assert (=> b!7387190 (= c!1373006 (is-Star!19364 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))))

(assert (=> b!7387190 (= e!4421640 e!4421637)))

(declare-fun b!7387191 () Bool)

(assert (=> b!7387191 (= e!4421636 (set.union call!680064 call!680068))))

(declare-fun b!7387192 () Bool)

(assert (=> b!7387192 (= e!4421641 e!4421640)))

(assert (=> b!7387192 (= c!1373009 (is-Concat!28209 (ite c!1372896 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372899 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (ite c!1372900 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))))

(declare-fun b!7387193 () Bool)

(assert (=> b!7387193 (= e!4421638 (set.insert (ite (or c!1372896 c!1372899) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679923)) (as set.empty (Set Context!16608))))))

(declare-fun b!7387194 () Bool)

(assert (=> b!7387194 (= e!4421641 (set.union call!680068 call!680065))))

(assert (= (and d!2286878 c!1373007) b!7387193))

(assert (= (and d!2286878 (not c!1373007)) b!7387188))

(assert (= (and b!7387188 c!1373005) b!7387191))

(assert (= (and b!7387188 (not c!1373005)) b!7387189))

(assert (= (and b!7387189 res!2978898) b!7387186))

(assert (= (and b!7387189 c!1373008) b!7387194))

(assert (= (and b!7387189 (not c!1373008)) b!7387192))

(assert (= (and b!7387192 c!1373009) b!7387187))

(assert (= (and b!7387192 (not c!1373009)) b!7387190))

(assert (= (and b!7387190 c!1373006) b!7387184))

(assert (= (and b!7387190 (not c!1373006)) b!7387185))

(assert (= (or b!7387187 b!7387184) bm!680058))

(assert (= (or b!7387187 b!7387184) bm!680061))

(assert (= (or b!7387194 bm!680058) bm!680062))

(assert (= (or b!7387194 bm!680061) bm!680059))

(assert (= (or b!7387191 bm!680059) bm!680060))

(assert (= (or b!7387191 b!7387194) bm!680063))

(declare-fun m!8034846 () Bool)

(assert (=> bm!680060 m!8034846))

(declare-fun m!8034848 () Bool)

(assert (=> b!7387193 m!8034848))

(declare-fun m!8034850 () Bool)

(assert (=> bm!680063 m!8034850))

(declare-fun m!8034852 () Bool)

(assert (=> b!7387186 m!8034852))

(declare-fun m!8034854 () Bool)

(assert (=> bm!680062 m!8034854))

(assert (=> bm!679920 d!2286878))

(declare-fun d!2286880 () Bool)

(assert (=> d!2286880 (= (nullable!8419 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))) (nullableFct!3384 (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))

(declare-fun bs!1922099 () Bool)

(assert (= bs!1922099 d!2286880))

(declare-fun m!8034856 () Bool)

(assert (=> bs!1922099 m!8034856))

(assert (=> b!7386273 d!2286880))

(declare-fun b!7387195 () Bool)

(declare-fun call!680069 () (Set Context!16608))

(declare-fun e!4421643 () (Set Context!16608))

(assert (=> b!7387195 (= e!4421643 (set.union call!680069 (derivationStepZipperUp!2770 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))) lt!2617689)))))

(declare-fun b!7387196 () Bool)

(declare-fun e!4421644 () (Set Context!16608))

(assert (=> b!7387196 (= e!4421644 (as set.empty (Set Context!16608)))))

(declare-fun d!2286882 () Bool)

(declare-fun c!1373010 () Bool)

(declare-fun e!4421642 () Bool)

(assert (=> d!2286882 (= c!1373010 e!4421642)))

(declare-fun res!2978899 () Bool)

(assert (=> d!2286882 (=> (not res!2978899) (not e!4421642))))

(assert (=> d!2286882 (= res!2978899 (is-Cons!71768 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))))

(assert (=> d!2286882 (= (derivationStepZipperUp!2770 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) lt!2617689) e!4421643)))

(declare-fun b!7387197 () Bool)

(assert (=> b!7387197 (= e!4421642 (nullable!8419 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))))))

(declare-fun bm!680064 () Bool)

(assert (=> bm!680064 (= call!680069 (derivationStepZipperDown!3171 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))) lt!2617689))))

(declare-fun b!7387198 () Bool)

(assert (=> b!7387198 (= e!4421643 e!4421644)))

(declare-fun c!1373011 () Bool)

(assert (=> b!7387198 (= c!1373011 (is-Cons!71768 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))))

(declare-fun b!7387199 () Bool)

(assert (=> b!7387199 (= e!4421644 call!680069)))

(assert (= (and d!2286882 res!2978899) b!7387197))

(assert (= (and d!2286882 c!1373010) b!7387195))

(assert (= (and d!2286882 (not c!1373010)) b!7387198))

(assert (= (and b!7387198 c!1373011) b!7387199))

(assert (= (and b!7387198 (not c!1373011)) b!7387196))

(assert (= (or b!7387195 b!7387199) bm!680064))

(declare-fun m!8034858 () Bool)

(assert (=> b!7387195 m!8034858))

(declare-fun m!8034860 () Bool)

(assert (=> b!7387197 m!8034860))

(declare-fun m!8034862 () Bool)

(assert (=> bm!680064 m!8034862))

(assert (=> b!7386345 d!2286882))

(declare-fun d!2286884 () Bool)

(assert (=> d!2286884 (= (nullable!8419 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))) (nullableFct!3384 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))))

(declare-fun bs!1922100 () Bool)

(assert (= bs!1922100 d!2286884))

(declare-fun m!8034864 () Bool)

(assert (=> bs!1922100 m!8034864))

(assert (=> b!7386327 d!2286884))

(declare-fun d!2286886 () Bool)

(assert (=> d!2286886 (= (nullable!8419 (ite c!1372908 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) (nullableFct!3384 (ite c!1372908 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun bs!1922101 () Bool)

(assert (= bs!1922101 d!2286886))

(declare-fun m!8034866 () Bool)

(assert (=> bs!1922101 m!8034866))

(assert (=> bm!679934 d!2286886))

(declare-fun b!7387200 () Bool)

(declare-fun e!4421645 () Bool)

(declare-fun e!4421649 () Bool)

(assert (=> b!7387200 (= e!4421645 e!4421649)))

(declare-fun c!1373013 () Bool)

(assert (=> b!7387200 (= c!1373013 (is-Star!19364 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(declare-fun d!2286888 () Bool)

(declare-fun res!2978902 () Bool)

(assert (=> d!2286888 (=> res!2978902 e!4421645)))

(assert (=> d!2286888 (= res!2978902 (is-ElementMatch!19364 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(assert (=> d!2286888 (= (validRegex!9942 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) e!4421645)))

(declare-fun b!7387201 () Bool)

(declare-fun e!4421646 () Bool)

(declare-fun call!680071 () Bool)

(assert (=> b!7387201 (= e!4421646 call!680071)))

(declare-fun b!7387202 () Bool)

(declare-fun e!4421651 () Bool)

(assert (=> b!7387202 (= e!4421649 e!4421651)))

(declare-fun res!2978903 () Bool)

(assert (=> b!7387202 (= res!2978903 (not (nullable!8419 (reg!19693 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))))

(assert (=> b!7387202 (=> (not res!2978903) (not e!4421651))))

(declare-fun bm!680065 () Bool)

(declare-fun call!680072 () Bool)

(declare-fun call!680070 () Bool)

(assert (=> bm!680065 (= call!680072 call!680070)))

(declare-fun b!7387203 () Bool)

(assert (=> b!7387203 (= e!4421651 call!680070)))

(declare-fun c!1373012 () Bool)

(declare-fun bm!680066 () Bool)

(assert (=> bm!680066 (= call!680070 (validRegex!9942 (ite c!1373013 (reg!19693 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) (ite c!1373012 (regOne!39241 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) (regOne!39240 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))))

(declare-fun b!7387204 () Bool)

(declare-fun e!4421650 () Bool)

(assert (=> b!7387204 (= e!4421650 call!680071)))

(declare-fun b!7387205 () Bool)

(declare-fun e!4421647 () Bool)

(assert (=> b!7387205 (= e!4421647 e!4421646)))

(declare-fun res!2978901 () Bool)

(assert (=> b!7387205 (=> (not res!2978901) (not e!4421646))))

(assert (=> b!7387205 (= res!2978901 call!680072)))

(declare-fun b!7387206 () Bool)

(declare-fun res!2978904 () Bool)

(assert (=> b!7387206 (=> (not res!2978904) (not e!4421650))))

(assert (=> b!7387206 (= res!2978904 call!680072)))

(declare-fun e!4421648 () Bool)

(assert (=> b!7387206 (= e!4421648 e!4421650)))

(declare-fun b!7387207 () Bool)

(declare-fun res!2978900 () Bool)

(assert (=> b!7387207 (=> res!2978900 e!4421647)))

(assert (=> b!7387207 (= res!2978900 (not (is-Concat!28209 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))

(assert (=> b!7387207 (= e!4421648 e!4421647)))

(declare-fun b!7387208 () Bool)

(assert (=> b!7387208 (= e!4421649 e!4421648)))

(assert (=> b!7387208 (= c!1373012 (is-Union!19364 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))

(declare-fun bm!680067 () Bool)

(assert (=> bm!680067 (= call!680071 (validRegex!9942 (ite c!1373012 (regTwo!39241 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) (regTwo!39240 (ite c!1372925 (reg!19693 (h!78216 (exprs!8804 c!10532))) (ite c!1372924 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))))

(assert (= (and d!2286888 (not res!2978902)) b!7387200))

(assert (= (and b!7387200 c!1373013) b!7387202))

(assert (= (and b!7387200 (not c!1373013)) b!7387208))

(assert (= (and b!7387202 res!2978903) b!7387203))

(assert (= (and b!7387208 c!1373012) b!7387206))

(assert (= (and b!7387208 (not c!1373012)) b!7387207))

(assert (= (and b!7387206 res!2978904) b!7387204))

(assert (= (and b!7387207 (not res!2978900)) b!7387205))

(assert (= (and b!7387205 res!2978901) b!7387201))

(assert (= (or b!7387206 b!7387205) bm!680065))

(assert (= (or b!7387204 b!7387201) bm!680067))

(assert (= (or b!7387203 bm!680065) bm!680066))

(declare-fun m!8034868 () Bool)

(assert (=> b!7387202 m!8034868))

(declare-fun m!8034870 () Bool)

(assert (=> bm!680066 m!8034870))

(declare-fun m!8034872 () Bool)

(assert (=> bm!680067 m!8034872))

(assert (=> bm!679956 d!2286888))

(declare-fun d!2286890 () Bool)

(assert (=> d!2286890 (= (nullable!8419 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))) (nullableFct!3384 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))

(declare-fun bs!1922102 () Bool)

(assert (= bs!1922102 d!2286890))

(declare-fun m!8034874 () Bool)

(assert (=> bs!1922102 m!8034874))

(assert (=> b!7386261 d!2286890))

(declare-fun d!2286892 () Bool)

(assert (=> d!2286892 (= ($colon$colon!3322 (exprs!8804 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876))) (ite (or c!1372904 c!1372905) (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))) (Cons!71768 (ite (or c!1372904 c!1372905) (regTwo!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (exprs!8804 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)))))))

(assert (=> bm!679928 d!2286892))

(declare-fun bs!1922103 () Bool)

(declare-fun d!2286894 () Bool)

(assert (= bs!1922103 (and d!2286894 d!2286542)))

(declare-fun lambda!458959 () Int)

(assert (=> bs!1922103 (= lambda!458959 lambda!458926)))

(declare-fun bs!1922104 () Bool)

(assert (= bs!1922104 (and d!2286894 d!2286618)))

(assert (=> bs!1922104 (= lambda!458959 lambda!458942)))

(declare-fun bs!1922105 () Bool)

(assert (= bs!1922105 (and d!2286894 d!2286534)))

(assert (=> bs!1922105 (= lambda!458959 lambda!458924)))

(declare-fun bs!1922106 () Bool)

(assert (= bs!1922106 (and d!2286894 d!2286708)))

(assert (=> bs!1922106 (= lambda!458959 lambda!458949)))

(declare-fun bs!1922107 () Bool)

(assert (= bs!1922107 (and d!2286894 d!2286704)))

(assert (=> bs!1922107 (= lambda!458959 lambda!458948)))

(declare-fun bs!1922108 () Bool)

(assert (= bs!1922108 (and d!2286894 d!2286874)))

(assert (=> bs!1922108 (= lambda!458959 lambda!458958)))

(declare-fun bs!1922109 () Bool)

(assert (= bs!1922109 (and d!2286894 d!2286842)))

(assert (=> bs!1922109 (= lambda!458959 lambda!458957)))

(declare-fun bs!1922110 () Bool)

(assert (= bs!1922110 (and d!2286894 d!2286546)))

(assert (=> bs!1922110 (= lambda!458959 lambda!458927)))

(assert (=> d!2286894 (= (inv!91772 setElem!55914) (forall!18147 (exprs!8804 setElem!55914) lambda!458959))))

(declare-fun bs!1922111 () Bool)

(assert (= bs!1922111 d!2286894))

(declare-fun m!8034876 () Bool)

(assert (=> bs!1922111 m!8034876))

(assert (=> setNonEmpty!55914 d!2286894))

(declare-fun d!2286896 () Bool)

(assert (=> d!2286896 (= (nullable!8419 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (nullableFct!3384 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))

(declare-fun bs!1922112 () Bool)

(assert (= bs!1922112 d!2286896))

(declare-fun m!8034878 () Bool)

(assert (=> bs!1922112 m!8034878))

(assert (=> b!7386347 d!2286896))

(declare-fun b!7387209 () Bool)

(declare-fun e!4421652 () Bool)

(declare-fun e!4421656 () Bool)

(assert (=> b!7387209 (= e!4421652 e!4421656)))

(declare-fun c!1373015 () Bool)

(assert (=> b!7387209 (= c!1373015 (is-Star!19364 (h!78216 (t!386443 (exprs!8804 empty!3451)))))))

(declare-fun d!2286898 () Bool)

(declare-fun res!2978907 () Bool)

(assert (=> d!2286898 (=> res!2978907 e!4421652)))

(assert (=> d!2286898 (= res!2978907 (is-ElementMatch!19364 (h!78216 (t!386443 (exprs!8804 empty!3451)))))))

(assert (=> d!2286898 (= (validRegex!9942 (h!78216 (t!386443 (exprs!8804 empty!3451)))) e!4421652)))

(declare-fun b!7387210 () Bool)

(declare-fun e!4421653 () Bool)

(declare-fun call!680074 () Bool)

(assert (=> b!7387210 (= e!4421653 call!680074)))

(declare-fun b!7387211 () Bool)

(declare-fun e!4421658 () Bool)

(assert (=> b!7387211 (= e!4421656 e!4421658)))

(declare-fun res!2978908 () Bool)

(assert (=> b!7387211 (= res!2978908 (not (nullable!8419 (reg!19693 (h!78216 (t!386443 (exprs!8804 empty!3451)))))))))

(assert (=> b!7387211 (=> (not res!2978908) (not e!4421658))))

(declare-fun bm!680068 () Bool)

(declare-fun call!680075 () Bool)

(declare-fun call!680073 () Bool)

(assert (=> bm!680068 (= call!680075 call!680073)))

(declare-fun b!7387212 () Bool)

(assert (=> b!7387212 (= e!4421658 call!680073)))

(declare-fun c!1373014 () Bool)

(declare-fun bm!680069 () Bool)

(assert (=> bm!680069 (= call!680073 (validRegex!9942 (ite c!1373015 (reg!19693 (h!78216 (t!386443 (exprs!8804 empty!3451)))) (ite c!1373014 (regOne!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))) (regOne!39240 (h!78216 (t!386443 (exprs!8804 empty!3451))))))))))

(declare-fun b!7387213 () Bool)

(declare-fun e!4421657 () Bool)

(assert (=> b!7387213 (= e!4421657 call!680074)))

(declare-fun b!7387214 () Bool)

(declare-fun e!4421654 () Bool)

(assert (=> b!7387214 (= e!4421654 e!4421653)))

(declare-fun res!2978906 () Bool)

(assert (=> b!7387214 (=> (not res!2978906) (not e!4421653))))

(assert (=> b!7387214 (= res!2978906 call!680075)))

(declare-fun b!7387215 () Bool)

(declare-fun res!2978909 () Bool)

(assert (=> b!7387215 (=> (not res!2978909) (not e!4421657))))

(assert (=> b!7387215 (= res!2978909 call!680075)))

(declare-fun e!4421655 () Bool)

(assert (=> b!7387215 (= e!4421655 e!4421657)))

(declare-fun b!7387216 () Bool)

(declare-fun res!2978905 () Bool)

(assert (=> b!7387216 (=> res!2978905 e!4421654)))

(assert (=> b!7387216 (= res!2978905 (not (is-Concat!28209 (h!78216 (t!386443 (exprs!8804 empty!3451))))))))

(assert (=> b!7387216 (= e!4421655 e!4421654)))

(declare-fun b!7387217 () Bool)

(assert (=> b!7387217 (= e!4421656 e!4421655)))

(assert (=> b!7387217 (= c!1373014 (is-Union!19364 (h!78216 (t!386443 (exprs!8804 empty!3451)))))))

(declare-fun bm!680070 () Bool)

(assert (=> bm!680070 (= call!680074 (validRegex!9942 (ite c!1373014 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))) (regTwo!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))))))

(assert (= (and d!2286898 (not res!2978907)) b!7387209))

(assert (= (and b!7387209 c!1373015) b!7387211))

(assert (= (and b!7387209 (not c!1373015)) b!7387217))

(assert (= (and b!7387211 res!2978908) b!7387212))

(assert (= (and b!7387217 c!1373014) b!7387215))

(assert (= (and b!7387217 (not c!1373014)) b!7387216))

(assert (= (and b!7387215 res!2978909) b!7387213))

(assert (= (and b!7387216 (not res!2978905)) b!7387214))

(assert (= (and b!7387214 res!2978906) b!7387210))

(assert (= (or b!7387215 b!7387214) bm!680068))

(assert (= (or b!7387213 b!7387210) bm!680070))

(assert (= (or b!7387212 bm!680068) bm!680069))

(declare-fun m!8034880 () Bool)

(assert (=> b!7387211 m!8034880))

(declare-fun m!8034882 () Bool)

(assert (=> bm!680069 m!8034882))

(declare-fun m!8034884 () Bool)

(assert (=> bm!680070 m!8034884))

(assert (=> bs!1922034 d!2286898))

(declare-fun b!7387218 () Bool)

(declare-fun e!4421659 () Bool)

(declare-fun e!4421663 () Bool)

(assert (=> b!7387218 (= e!4421659 e!4421663)))

(declare-fun c!1373017 () Bool)

(assert (=> b!7387218 (= c!1373017 (is-Star!19364 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))))))

(declare-fun d!2286900 () Bool)

(declare-fun res!2978912 () Bool)

(assert (=> d!2286900 (=> res!2978912 e!4421659)))

(assert (=> d!2286900 (= res!2978912 (is-ElementMatch!19364 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))))))

(assert (=> d!2286900 (= (validRegex!9942 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) e!4421659)))

(declare-fun b!7387219 () Bool)

(declare-fun e!4421660 () Bool)

(declare-fun call!680077 () Bool)

(assert (=> b!7387219 (= e!4421660 call!680077)))

(declare-fun b!7387220 () Bool)

(declare-fun e!4421665 () Bool)

(assert (=> b!7387220 (= e!4421663 e!4421665)))

(declare-fun res!2978913 () Bool)

(assert (=> b!7387220 (= res!2978913 (not (nullable!8419 (reg!19693 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))))))))

(assert (=> b!7387220 (=> (not res!2978913) (not e!4421665))))

(declare-fun bm!680071 () Bool)

(declare-fun call!680078 () Bool)

(declare-fun call!680076 () Bool)

(assert (=> bm!680071 (= call!680078 call!680076)))

(declare-fun b!7387221 () Bool)

(assert (=> b!7387221 (= e!4421665 call!680076)))

(declare-fun bm!680072 () Bool)

(declare-fun c!1373016 () Bool)

(assert (=> bm!680072 (= call!680076 (validRegex!9942 (ite c!1373017 (reg!19693 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) (ite c!1373016 (regOne!39241 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) (regOne!39240 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895))))))))))))

(declare-fun b!7387222 () Bool)

(declare-fun e!4421664 () Bool)

(assert (=> b!7387222 (= e!4421664 call!680077)))

(declare-fun b!7387223 () Bool)

(declare-fun e!4421661 () Bool)

(assert (=> b!7387223 (= e!4421661 e!4421660)))

(declare-fun res!2978911 () Bool)

(assert (=> b!7387223 (=> (not res!2978911) (not e!4421660))))

(assert (=> b!7387223 (= res!2978911 call!680078)))

(declare-fun b!7387224 () Bool)

(declare-fun res!2978914 () Bool)

(assert (=> b!7387224 (=> (not res!2978914) (not e!4421664))))

(assert (=> b!7387224 (= res!2978914 call!680078)))

(declare-fun e!4421662 () Bool)

(assert (=> b!7387224 (= e!4421662 e!4421664)))

(declare-fun b!7387225 () Bool)

(declare-fun res!2978910 () Bool)

(assert (=> b!7387225 (=> res!2978910 e!4421661)))

(assert (=> b!7387225 (= res!2978910 (not (is-Concat!28209 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895))))))))))

(assert (=> b!7387225 (= e!4421662 e!4421661)))

(declare-fun b!7387226 () Bool)

(assert (=> b!7387226 (= e!4421663 e!4421662)))

(assert (=> b!7387226 (= c!1373016 (is-Union!19364 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))))))

(declare-fun bm!680073 () Bool)

(assert (=> bm!680073 (= call!680077 (validRegex!9942 (ite c!1373016 (regTwo!39241 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) (regTwo!39240 (ite c!1372914 (reg!19693 (h!78216 (exprs!8804 setElem!55895))) (ite c!1372913 (regOne!39241 (h!78216 (exprs!8804 setElem!55895))) (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))))))))

(assert (= (and d!2286900 (not res!2978912)) b!7387218))

(assert (= (and b!7387218 c!1373017) b!7387220))

(assert (= (and b!7387218 (not c!1373017)) b!7387226))

(assert (= (and b!7387220 res!2978913) b!7387221))

(assert (= (and b!7387226 c!1373016) b!7387224))

(assert (= (and b!7387226 (not c!1373016)) b!7387225))

(assert (= (and b!7387224 res!2978914) b!7387222))

(assert (= (and b!7387225 (not res!2978910)) b!7387223))

(assert (= (and b!7387223 res!2978911) b!7387219))

(assert (= (or b!7387224 b!7387223) bm!680071))

(assert (= (or b!7387222 b!7387219) bm!680073))

(assert (= (or b!7387221 bm!680071) bm!680072))

(declare-fun m!8034886 () Bool)

(assert (=> b!7387220 m!8034886))

(declare-fun m!8034888 () Bool)

(assert (=> bm!680072 m!8034888))

(declare-fun m!8034890 () Bool)

(assert (=> bm!680073 m!8034890))

(assert (=> bm!679943 d!2286900))

(declare-fun d!2286902 () Bool)

(assert (=> d!2286902 (= ($colon$colon!3322 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))) (ite (or c!1372899 c!1372900) (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))) (Cons!71768 (ite (or c!1372899 c!1372900) (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(assert (=> bm!679922 d!2286902))

(declare-fun bm!680074 () Bool)

(declare-fun call!680079 () List!71892)

(declare-fun call!680083 () List!71892)

(assert (=> bm!680074 (= call!680079 call!680083)))

(declare-fun b!7387227 () Bool)

(declare-fun e!4421667 () (Set Context!16608))

(declare-fun call!680082 () (Set Context!16608))

(assert (=> b!7387227 (= e!4421667 call!680082)))

(declare-fun b!7387228 () Bool)

(assert (=> b!7387228 (= e!4421667 (as set.empty (Set Context!16608)))))

(declare-fun bm!680075 () Bool)

(declare-fun call!680081 () (Set Context!16608))

(declare-fun call!680080 () (Set Context!16608))

(assert (=> bm!680075 (= call!680081 call!680080)))

(declare-fun c!1373021 () Bool)

(declare-fun bm!680076 () Bool)

(declare-fun c!1373022 () Bool)

(declare-fun c!1373018 () Bool)

(assert (=> bm!680076 (= call!680080 (derivationStepZipperDown!3171 (ite c!1373018 (regOne!39241 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))) (ite c!1373021 (regTwo!39240 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))) (ite c!1373022 (regOne!39240 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))) (reg!19693 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))) (ite (or c!1373018 c!1373021) (ite c!1372901 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679933)) (Context!16609 call!680079)) lt!2617689))))

(declare-fun bm!680077 () Bool)

(assert (=> bm!680077 (= call!680082 call!680081)))

(declare-fun b!7387229 () Bool)

(declare-fun e!4421669 () Bool)

(assert (=> b!7387229 (= e!4421669 (nullable!8419 (regOne!39240 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))))

(declare-fun d!2286904 () Bool)

(declare-fun c!1373020 () Bool)

(assert (=> d!2286904 (= c!1373020 (and (is-ElementMatch!19364 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))) (= (c!1372812 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))) lt!2617689)))))

(declare-fun e!4421668 () (Set Context!16608))

(assert (=> d!2286904 (= (derivationStepZipperDown!3171 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))) (ite c!1372901 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679933)) lt!2617689) e!4421668)))

(declare-fun b!7387230 () Bool)

(declare-fun e!4421670 () (Set Context!16608))

(assert (=> b!7387230 (= e!4421670 call!680082)))

(declare-fun bm!680078 () Bool)

(assert (=> bm!680078 (= call!680083 ($colon$colon!3322 (exprs!8804 (ite c!1372901 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679933))) (ite (or c!1373021 c!1373022) (regTwo!39240 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))) (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))))))

(declare-fun b!7387231 () Bool)

(declare-fun e!4421666 () (Set Context!16608))

(assert (=> b!7387231 (= e!4421668 e!4421666)))

(assert (=> b!7387231 (= c!1373018 (is-Union!19364 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))))

(declare-fun bm!680079 () Bool)

(declare-fun call!680084 () (Set Context!16608))

(assert (=> bm!680079 (= call!680084 (derivationStepZipperDown!3171 (ite c!1373018 (regTwo!39241 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))) (regOne!39240 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532)))))))))) (ite c!1373018 (ite c!1372901 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679933)) (Context!16609 call!680083)) lt!2617689))))

(declare-fun b!7387232 () Bool)

(assert (=> b!7387232 (= c!1373021 e!4421669)))

(declare-fun res!2978915 () Bool)

(assert (=> b!7387232 (=> (not res!2978915) (not e!4421669))))

(assert (=> b!7387232 (= res!2978915 (is-Concat!28209 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))))

(declare-fun e!4421671 () (Set Context!16608))

(assert (=> b!7387232 (= e!4421666 e!4421671)))

(declare-fun c!1373019 () Bool)

(declare-fun b!7387233 () Bool)

(assert (=> b!7387233 (= c!1373019 (is-Star!19364 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))))

(assert (=> b!7387233 (= e!4421670 e!4421667)))

(declare-fun b!7387234 () Bool)

(assert (=> b!7387234 (= e!4421666 (set.union call!680080 call!680084))))

(declare-fun b!7387235 () Bool)

(assert (=> b!7387235 (= e!4421671 e!4421670)))

(assert (=> b!7387235 (= c!1373022 (is-Concat!28209 (ite c!1372901 (regTwo!39241 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))) (regOne!39240 (ite c!1372859 (regOne!39241 (h!78216 (exprs!8804 c!10532))) (ite c!1372862 (regTwo!39240 (h!78216 (exprs!8804 c!10532))) (ite c!1372863 (regOne!39240 (h!78216 (exprs!8804 c!10532))) (reg!19693 (h!78216 (exprs!8804 c!10532))))))))))))

(declare-fun b!7387236 () Bool)

(assert (=> b!7387236 (= e!4421668 (set.insert (ite c!1372901 (ite (or c!1372859 c!1372862) (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679876)) (Context!16609 call!679933)) (as set.empty (Set Context!16608))))))

(declare-fun b!7387237 () Bool)

(assert (=> b!7387237 (= e!4421671 (set.union call!680084 call!680081))))

(assert (= (and d!2286904 c!1373020) b!7387236))

(assert (= (and d!2286904 (not c!1373020)) b!7387231))

(assert (= (and b!7387231 c!1373018) b!7387234))

(assert (= (and b!7387231 (not c!1373018)) b!7387232))

(assert (= (and b!7387232 res!2978915) b!7387229))

(assert (= (and b!7387232 c!1373021) b!7387237))

(assert (= (and b!7387232 (not c!1373021)) b!7387235))

(assert (= (and b!7387235 c!1373022) b!7387230))

(assert (= (and b!7387235 (not c!1373022)) b!7387233))

(assert (= (and b!7387233 c!1373019) b!7387227))

(assert (= (and b!7387233 (not c!1373019)) b!7387228))

(assert (= (or b!7387230 b!7387227) bm!680074))

(assert (= (or b!7387230 b!7387227) bm!680077))

(assert (= (or b!7387237 bm!680074) bm!680078))

(assert (= (or b!7387237 bm!680077) bm!680075))

(assert (= (or b!7387234 bm!680075) bm!680076))

(assert (= (or b!7387234 b!7387237) bm!680079))

(declare-fun m!8034892 () Bool)

(assert (=> bm!680076 m!8034892))

(declare-fun m!8034894 () Bool)

(assert (=> b!7387236 m!8034894))

(declare-fun m!8034896 () Bool)

(assert (=> bm!680079 m!8034896))

(declare-fun m!8034898 () Bool)

(assert (=> b!7387229 m!8034898))

(declare-fun m!8034900 () Bool)

(assert (=> bm!680078 m!8034900))

(assert (=> bm!679929 d!2286904))

(declare-fun bm!680080 () Bool)

(declare-fun call!680085 () List!71892)

(declare-fun call!680089 () List!71892)

(assert (=> bm!680080 (= call!680085 call!680089)))

(declare-fun b!7387238 () Bool)

(declare-fun e!4421673 () (Set Context!16608))

(declare-fun call!680088 () (Set Context!16608))

(assert (=> b!7387238 (= e!4421673 call!680088)))

(declare-fun b!7387239 () Bool)

(assert (=> b!7387239 (= e!4421673 (as set.empty (Set Context!16608)))))

(declare-fun bm!680081 () Bool)

(declare-fun call!680087 () (Set Context!16608))

(declare-fun call!680086 () (Set Context!16608))

(assert (=> bm!680081 (= call!680087 call!680086)))

(declare-fun c!1373023 () Bool)

(declare-fun c!1373027 () Bool)

(declare-fun c!1373026 () Bool)

(declare-fun bm!680082 () Bool)

(assert (=> bm!680082 (= call!680086 (derivationStepZipperDown!3171 (ite c!1373023 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (ite c!1373026 (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (ite c!1373027 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (reg!19693 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))) (ite (or c!1373023 c!1373026) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (Context!16609 call!680085)) lt!2617689))))

(declare-fun bm!680083 () Bool)

(assert (=> bm!680083 (= call!680088 call!680087)))

(declare-fun b!7387240 () Bool)

(declare-fun e!4421675 () Bool)

(assert (=> b!7387240 (= e!4421675 (nullable!8419 (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))))

(declare-fun d!2286906 () Bool)

(declare-fun c!1373025 () Bool)

(assert (=> d!2286906 (= c!1373025 (and (is-ElementMatch!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (= (c!1372812 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) lt!2617689)))))

(declare-fun e!4421674 () (Set Context!16608))

(assert (=> d!2286906 (= (derivationStepZipperDown!3171 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) lt!2617689) e!4421674)))

(declare-fun b!7387241 () Bool)

(declare-fun e!4421676 () (Set Context!16608))

(assert (=> b!7387241 (= e!4421676 call!680088)))

(declare-fun bm!680084 () Bool)

(assert (=> bm!680084 (= call!680089 ($colon$colon!3322 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) (ite (or c!1373026 c!1373027) (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))))

(declare-fun b!7387242 () Bool)

(declare-fun e!4421672 () (Set Context!16608))

(assert (=> b!7387242 (= e!4421674 e!4421672)))

(assert (=> b!7387242 (= c!1373023 (is-Union!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))

(declare-fun bm!680085 () Bool)

(declare-fun call!680090 () (Set Context!16608))

(assert (=> bm!680085 (= call!680090 (derivationStepZipperDown!3171 (ite c!1373023 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))) (ite c!1373023 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (Context!16609 call!680089)) lt!2617689))))

(declare-fun b!7387243 () Bool)

(assert (=> b!7387243 (= c!1373026 e!4421675)))

(declare-fun res!2978916 () Bool)

(assert (=> b!7387243 (=> (not res!2978916) (not e!4421675))))

(assert (=> b!7387243 (= res!2978916 (is-Concat!28209 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))

(declare-fun e!4421677 () (Set Context!16608))

(assert (=> b!7387243 (= e!4421672 e!4421677)))

(declare-fun b!7387244 () Bool)

(declare-fun c!1373024 () Bool)

(assert (=> b!7387244 (= c!1373024 (is-Star!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))

(assert (=> b!7387244 (= e!4421676 e!4421673)))

(declare-fun b!7387245 () Bool)

(assert (=> b!7387245 (= e!4421672 (set.union call!680086 call!680090))))

(declare-fun b!7387246 () Bool)

(assert (=> b!7387246 (= e!4421677 e!4421676)))

(assert (=> b!7387246 (= c!1373027 (is-Concat!28209 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))

(declare-fun b!7387247 () Bool)

(assert (=> b!7387247 (= e!4421674 (set.insert (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (as set.empty (Set Context!16608))))))

(declare-fun b!7387248 () Bool)

(assert (=> b!7387248 (= e!4421677 (set.union call!680090 call!680087))))

(assert (= (and d!2286906 c!1373025) b!7387247))

(assert (= (and d!2286906 (not c!1373025)) b!7387242))

(assert (= (and b!7387242 c!1373023) b!7387245))

(assert (= (and b!7387242 (not c!1373023)) b!7387243))

(assert (= (and b!7387243 res!2978916) b!7387240))

(assert (= (and b!7387243 c!1373026) b!7387248))

(assert (= (and b!7387243 (not c!1373026)) b!7387246))

(assert (= (and b!7387246 c!1373027) b!7387241))

(assert (= (and b!7387246 (not c!1373027)) b!7387244))

(assert (= (and b!7387244 c!1373024) b!7387238))

(assert (= (and b!7387244 (not c!1373024)) b!7387239))

(assert (= (or b!7387241 b!7387238) bm!680080))

(assert (= (or b!7387241 b!7387238) bm!680083))

(assert (= (or b!7387248 bm!680080) bm!680084))

(assert (= (or b!7387248 bm!680083) bm!680081))

(assert (= (or b!7387245 bm!680081) bm!680082))

(assert (= (or b!7387245 b!7387248) bm!680085))

(declare-fun m!8034902 () Bool)

(assert (=> bm!680082 m!8034902))

(declare-fun m!8034904 () Bool)

(assert (=> b!7387247 m!8034904))

(declare-fun m!8034906 () Bool)

(assert (=> bm!680085 m!8034906))

(declare-fun m!8034908 () Bool)

(assert (=> b!7387240 m!8034908))

(declare-fun m!8034910 () Bool)

(assert (=> bm!680084 m!8034910))

(assert (=> bm!679951 d!2286906))

(declare-fun d!2286908 () Bool)

(assert (=> d!2286908 (= (nullable!8419 (reg!19693 (h!78216 (exprs!8804 empty!3451)))) (nullableFct!3384 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))))

(declare-fun bs!1922113 () Bool)

(assert (= bs!1922113 d!2286908))

(declare-fun m!8034912 () Bool)

(assert (=> bs!1922113 m!8034912))

(assert (=> b!7386357 d!2286908))

(declare-fun d!2286910 () Bool)

(assert (=> d!2286910 (= (nullable!8419 (ite c!1372908 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (nullableFct!3384 (ite c!1372908 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun bs!1922114 () Bool)

(assert (= bs!1922114 d!2286910))

(declare-fun m!8034914 () Bool)

(assert (=> bs!1922114 m!8034914))

(assert (=> bm!679935 d!2286910))

(declare-fun bs!1922115 () Bool)

(declare-fun d!2286912 () Bool)

(assert (= bs!1922115 (and d!2286912 d!2286528)))

(declare-fun lambda!458960 () Int)

(assert (=> bs!1922115 (not (= lambda!458960 lambda!458921))))

(declare-fun bs!1922116 () Bool)

(assert (= bs!1922116 (and d!2286912 d!2286584)))

(assert (=> bs!1922116 (not (= lambda!458960 lambda!458937))))

(declare-fun bs!1922117 () Bool)

(assert (= bs!1922117 (and d!2286912 d!2286716)))

(assert (=> bs!1922117 (= (= lambda!458937 lambda!458921) (= lambda!458960 lambda!458952))))

(assert (=> d!2286912 true))

(assert (=> d!2286912 (< (dynLambda!29555 order!29419 lambda!458937) (dynLambda!29555 order!29419 lambda!458960))))

(assert (=> d!2286912 (= (exists!4724 (toList!11727 z!3451) lambda!458937) (not (forall!18149 (toList!11727 z!3451) lambda!458960)))))

(declare-fun bs!1922118 () Bool)

(assert (= bs!1922118 d!2286912))

(assert (=> bs!1922118 m!8034228))

(declare-fun m!8034916 () Bool)

(assert (=> bs!1922118 m!8034916))

(assert (=> d!2286706 d!2286912))

(assert (=> d!2286706 d!2286718))

(declare-fun d!2286914 () Bool)

(declare-fun res!2978917 () Bool)

(assert (=> d!2286914 (= res!2978917 (exists!4724 (toList!11727 z!3451) lambda!458937))))

(assert (=> d!2286914 true))

(assert (=> d!2286914 (= (choose!57369 z!3451 lambda!458937) res!2978917)))

(declare-fun bs!1922119 () Bool)

(assert (= bs!1922119 d!2286914))

(assert (=> bs!1922119 m!8034228))

(assert (=> bs!1922119 m!8034228))

(assert (=> bs!1922119 m!8034482))

(assert (=> d!2286706 d!2286914))

(declare-fun bm!680086 () Bool)

(declare-fun call!680091 () List!71892)

(declare-fun call!680095 () List!71892)

(assert (=> bm!680086 (= call!680091 call!680095)))

(declare-fun b!7387249 () Bool)

(declare-fun e!4421679 () (Set Context!16608))

(declare-fun call!680094 () (Set Context!16608))

(assert (=> b!7387249 (= e!4421679 call!680094)))

(declare-fun b!7387250 () Bool)

(assert (=> b!7387250 (= e!4421679 (as set.empty (Set Context!16608)))))

(declare-fun bm!680087 () Bool)

(declare-fun call!680093 () (Set Context!16608))

(declare-fun call!680092 () (Set Context!16608))

(assert (=> bm!680087 (= call!680093 call!680092)))

(declare-fun c!1373028 () Bool)

(declare-fun c!1373031 () Bool)

(declare-fun c!1373032 () Bool)

(declare-fun bm!680088 () Bool)

(assert (=> bm!680088 (= call!680092 (derivationStepZipperDown!3171 (ite c!1373028 (regOne!39241 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) (ite c!1373031 (regTwo!39240 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) (ite c!1373032 (regOne!39240 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) (reg!19693 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))) (ite (or c!1373028 c!1373031) (ite c!1372896 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679927)) (Context!16609 call!680091)) lt!2617689))))

(declare-fun bm!680089 () Bool)

(assert (=> bm!680089 (= call!680094 call!680093)))

(declare-fun b!7387251 () Bool)

(declare-fun e!4421681 () Bool)

(assert (=> b!7387251 (= e!4421681 (nullable!8419 (regOne!39240 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))

(declare-fun c!1373030 () Bool)

(declare-fun d!2286916 () Bool)

(assert (=> d!2286916 (= c!1373030 (and (is-ElementMatch!19364 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) (= (c!1372812 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) lt!2617689)))))

(declare-fun e!4421680 () (Set Context!16608))

(assert (=> d!2286916 (= (derivationStepZipperDown!3171 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))) (ite c!1372896 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679927)) lt!2617689) e!4421680)))

(declare-fun b!7387252 () Bool)

(declare-fun e!4421682 () (Set Context!16608))

(assert (=> b!7387252 (= e!4421682 call!680094)))

(declare-fun bm!680090 () Bool)

(assert (=> bm!680090 (= call!680095 ($colon$colon!3322 (exprs!8804 (ite c!1372896 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679927))) (ite (or c!1373031 c!1373032) (regTwo!39240 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))))))

(declare-fun b!7387253 () Bool)

(declare-fun e!4421678 () (Set Context!16608))

(assert (=> b!7387253 (= e!4421680 e!4421678)))

(assert (=> b!7387253 (= c!1373028 (is-Union!19364 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(declare-fun bm!680091 () Bool)

(declare-fun call!680096 () (Set Context!16608))

(assert (=> bm!680091 (= call!680096 (derivationStepZipperDown!3171 (ite c!1373028 (regTwo!39241 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))) (regOne!39240 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))))) (ite c!1373028 (ite c!1372896 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679927)) (Context!16609 call!680095)) lt!2617689))))

(declare-fun b!7387254 () Bool)

(assert (=> b!7387254 (= c!1373031 e!4421681)))

(declare-fun res!2978918 () Bool)

(assert (=> b!7387254 (=> (not res!2978918) (not e!4421681))))

(assert (=> b!7387254 (= res!2978918 (is-Concat!28209 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(declare-fun e!4421683 () (Set Context!16608))

(assert (=> b!7387254 (= e!4421678 e!4421683)))

(declare-fun b!7387255 () Bool)

(declare-fun c!1373029 () Bool)

(assert (=> b!7387255 (= c!1373029 (is-Star!19364 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(assert (=> b!7387255 (= e!4421682 e!4421679)))

(declare-fun b!7387256 () Bool)

(assert (=> b!7387256 (= e!4421678 (set.union call!680092 call!680096))))

(declare-fun b!7387257 () Bool)

(assert (=> b!7387257 (= e!4421683 e!4421682)))

(assert (=> b!7387257 (= c!1373032 (is-Concat!28209 (ite c!1372896 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(declare-fun b!7387258 () Bool)

(assert (=> b!7387258 (= e!4421680 (set.insert (ite c!1372896 (Context!16609 (t!386443 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (Context!16609 call!679927)) (as set.empty (Set Context!16608))))))

(declare-fun b!7387259 () Bool)

(assert (=> b!7387259 (= e!4421683 (set.union call!680096 call!680093))))

(assert (= (and d!2286916 c!1373030) b!7387258))

(assert (= (and d!2286916 (not c!1373030)) b!7387253))

(assert (= (and b!7387253 c!1373028) b!7387256))

(assert (= (and b!7387253 (not c!1373028)) b!7387254))

(assert (= (and b!7387254 res!2978918) b!7387251))

(assert (= (and b!7387254 c!1373031) b!7387259))

(assert (= (and b!7387254 (not c!1373031)) b!7387257))

(assert (= (and b!7387257 c!1373032) b!7387252))

(assert (= (and b!7387257 (not c!1373032)) b!7387255))

(assert (= (and b!7387255 c!1373029) b!7387249))

(assert (= (and b!7387255 (not c!1373029)) b!7387250))

(assert (= (or b!7387252 b!7387249) bm!680086))

(assert (= (or b!7387252 b!7387249) bm!680089))

(assert (= (or b!7387259 bm!680086) bm!680090))

(assert (= (or b!7387259 bm!680089) bm!680087))

(assert (= (or b!7387256 bm!680087) bm!680088))

(assert (= (or b!7387256 b!7387259) bm!680091))

(declare-fun m!8034918 () Bool)

(assert (=> bm!680088 m!8034918))

(declare-fun m!8034920 () Bool)

(assert (=> b!7387258 m!8034920))

(declare-fun m!8034922 () Bool)

(assert (=> bm!680091 m!8034922))

(declare-fun m!8034924 () Bool)

(assert (=> b!7387251 m!8034924))

(declare-fun m!8034926 () Bool)

(assert (=> bm!680090 m!8034926))

(assert (=> bm!679923 d!2286916))

(declare-fun d!2286918 () Bool)

(declare-fun res!2978919 () Bool)

(declare-fun e!4421684 () Bool)

(assert (=> d!2286918 (=> res!2978919 e!4421684)))

(assert (=> d!2286918 (= res!2978919 (is-Nil!71768 (t!386443 (t!386443 (exprs!8804 c!10532)))))))

(assert (=> d!2286918 (= (forall!18147 (t!386443 (t!386443 (exprs!8804 c!10532))) lambda!458927) e!4421684)))

(declare-fun b!7387260 () Bool)

(declare-fun e!4421685 () Bool)

(assert (=> b!7387260 (= e!4421684 e!4421685)))

(declare-fun res!2978920 () Bool)

(assert (=> b!7387260 (=> (not res!2978920) (not e!4421685))))

(assert (=> b!7387260 (= res!2978920 (dynLambda!29558 lambda!458927 (h!78216 (t!386443 (t!386443 (exprs!8804 c!10532))))))))

(declare-fun b!7387261 () Bool)

(assert (=> b!7387261 (= e!4421685 (forall!18147 (t!386443 (t!386443 (t!386443 (exprs!8804 c!10532)))) lambda!458927))))

(assert (= (and d!2286918 (not res!2978919)) b!7387260))

(assert (= (and b!7387260 res!2978920) b!7387261))

(declare-fun b_lambda!285059 () Bool)

(assert (=> (not b_lambda!285059) (not b!7387260)))

(declare-fun m!8034928 () Bool)

(assert (=> b!7387260 m!8034928))

(declare-fun m!8034930 () Bool)

(assert (=> b!7387261 m!8034930))

(assert (=> b!7386283 d!2286918))

(declare-fun b!7387262 () Bool)

(declare-fun e!4421686 () Bool)

(declare-fun e!4421690 () Bool)

(assert (=> b!7387262 (= e!4421686 e!4421690)))

(declare-fun c!1373034 () Bool)

(assert (=> b!7387262 (= c!1373034 (is-Star!19364 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))))))

(declare-fun d!2286920 () Bool)

(declare-fun res!2978923 () Bool)

(assert (=> d!2286920 (=> res!2978923 e!4421686)))

(assert (=> d!2286920 (= res!2978923 (is-ElementMatch!19364 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))))))

(assert (=> d!2286920 (= (validRegex!9942 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) e!4421686)))

(declare-fun b!7387263 () Bool)

(declare-fun e!4421687 () Bool)

(declare-fun call!680098 () Bool)

(assert (=> b!7387263 (= e!4421687 call!680098)))

(declare-fun b!7387264 () Bool)

(declare-fun e!4421692 () Bool)

(assert (=> b!7387264 (= e!4421690 e!4421692)))

(declare-fun res!2978924 () Bool)

(assert (=> b!7387264 (= res!2978924 (not (nullable!8419 (reg!19693 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))))))))

(assert (=> b!7387264 (=> (not res!2978924) (not e!4421692))))

(declare-fun bm!680092 () Bool)

(declare-fun call!680099 () Bool)

(declare-fun call!680097 () Bool)

(assert (=> bm!680092 (= call!680099 call!680097)))

(declare-fun b!7387265 () Bool)

(assert (=> b!7387265 (= e!4421692 call!680097)))

(declare-fun bm!680093 () Bool)

(declare-fun c!1373033 () Bool)

(assert (=> bm!680093 (= call!680097 (validRegex!9942 (ite c!1373034 (reg!19693 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) (ite c!1373033 (regOne!39241 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) (regOne!39240 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451))))))))))))

(declare-fun b!7387266 () Bool)

(declare-fun e!4421691 () Bool)

(assert (=> b!7387266 (= e!4421691 call!680098)))

(declare-fun b!7387267 () Bool)

(declare-fun e!4421688 () Bool)

(assert (=> b!7387267 (= e!4421688 e!4421687)))

(declare-fun res!2978922 () Bool)

(assert (=> b!7387267 (=> (not res!2978922) (not e!4421687))))

(assert (=> b!7387267 (= res!2978922 call!680099)))

(declare-fun b!7387268 () Bool)

(declare-fun res!2978925 () Bool)

(assert (=> b!7387268 (=> (not res!2978925) (not e!4421691))))

(assert (=> b!7387268 (= res!2978925 call!680099)))

(declare-fun e!4421689 () Bool)

(assert (=> b!7387268 (= e!4421689 e!4421691)))

(declare-fun b!7387269 () Bool)

(declare-fun res!2978921 () Bool)

(assert (=> b!7387269 (=> res!2978921 e!4421688)))

(assert (=> b!7387269 (= res!2978921 (not (is-Concat!28209 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451))))))))))

(assert (=> b!7387269 (= e!4421689 e!4421688)))

(declare-fun b!7387270 () Bool)

(assert (=> b!7387270 (= e!4421690 e!4421689)))

(assert (=> b!7387270 (= c!1373033 (is-Union!19364 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))))))

(declare-fun bm!680094 () Bool)

(assert (=> bm!680094 (= call!680098 (validRegex!9942 (ite c!1373033 (regTwo!39241 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) (regTwo!39240 (ite c!1372923 (reg!19693 (h!78216 (exprs!8804 empty!3451))) (ite c!1372922 (regOne!39241 (h!78216 (exprs!8804 empty!3451))) (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))))))))

(assert (= (and d!2286920 (not res!2978923)) b!7387262))

(assert (= (and b!7387262 c!1373034) b!7387264))

(assert (= (and b!7387262 (not c!1373034)) b!7387270))

(assert (= (and b!7387264 res!2978924) b!7387265))

(assert (= (and b!7387270 c!1373033) b!7387268))

(assert (= (and b!7387270 (not c!1373033)) b!7387269))

(assert (= (and b!7387268 res!2978925) b!7387266))

(assert (= (and b!7387269 (not res!2978921)) b!7387267))

(assert (= (and b!7387267 res!2978922) b!7387263))

(assert (= (or b!7387268 b!7387267) bm!680092))

(assert (= (or b!7387266 b!7387263) bm!680094))

(assert (= (or b!7387265 bm!680092) bm!680093))

(declare-fun m!8034932 () Bool)

(assert (=> b!7387264 m!8034932))

(declare-fun m!8034934 () Bool)

(assert (=> bm!680093 m!8034934))

(declare-fun m!8034936 () Bool)

(assert (=> bm!680094 m!8034936))

(assert (=> bm!679953 d!2286920))

(declare-fun b!7387271 () Bool)

(declare-fun e!4421693 () Bool)

(declare-fun e!4421697 () Bool)

(assert (=> b!7387271 (= e!4421693 e!4421697)))

(declare-fun c!1373036 () Bool)

(assert (=> b!7387271 (= c!1373036 (is-Star!19364 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun d!2286922 () Bool)

(declare-fun res!2978928 () Bool)

(assert (=> d!2286922 (=> res!2978928 e!4421693)))

(assert (=> d!2286922 (= res!2978928 (is-ElementMatch!19364 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))))))

(assert (=> d!2286922 (= (validRegex!9942 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) e!4421693)))

(declare-fun b!7387272 () Bool)

(declare-fun e!4421694 () Bool)

(declare-fun call!680101 () Bool)

(assert (=> b!7387272 (= e!4421694 call!680101)))

(declare-fun b!7387273 () Bool)

(declare-fun e!4421699 () Bool)

(assert (=> b!7387273 (= e!4421697 e!4421699)))

(declare-fun res!2978929 () Bool)

(assert (=> b!7387273 (= res!2978929 (not (nullable!8419 (reg!19693 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))))))))

(assert (=> b!7387273 (=> (not res!2978929) (not e!4421699))))

(declare-fun bm!680095 () Bool)

(declare-fun call!680102 () Bool)

(declare-fun call!680100 () Bool)

(assert (=> bm!680095 (= call!680102 call!680100)))

(declare-fun b!7387274 () Bool)

(assert (=> b!7387274 (= e!4421699 call!680100)))

(declare-fun c!1373035 () Bool)

(declare-fun bm!680096 () Bool)

(assert (=> bm!680096 (= call!680100 (validRegex!9942 (ite c!1373036 (reg!19693 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1373035 (regOne!39241 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) (regOne!39240 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))))))))

(declare-fun b!7387275 () Bool)

(declare-fun e!4421698 () Bool)

(assert (=> b!7387275 (= e!4421698 call!680101)))

(declare-fun b!7387276 () Bool)

(declare-fun e!4421695 () Bool)

(assert (=> b!7387276 (= e!4421695 e!4421694)))

(declare-fun res!2978927 () Bool)

(assert (=> b!7387276 (=> (not res!2978927) (not e!4421694))))

(assert (=> b!7387276 (= res!2978927 call!680102)))

(declare-fun b!7387277 () Bool)

(declare-fun res!2978930 () Bool)

(assert (=> b!7387277 (=> (not res!2978930) (not e!4421698))))

(assert (=> b!7387277 (= res!2978930 call!680102)))

(declare-fun e!4421696 () Bool)

(assert (=> b!7387277 (= e!4421696 e!4421698)))

(declare-fun b!7387278 () Bool)

(declare-fun res!2978926 () Bool)

(assert (=> b!7387278 (=> res!2978926 e!4421695)))

(assert (=> b!7387278 (= res!2978926 (not (is-Concat!28209 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))))))

(assert (=> b!7387278 (= e!4421696 e!4421695)))

(declare-fun b!7387279 () Bool)

(assert (=> b!7387279 (= e!4421697 e!4421696)))

(assert (=> b!7387279 (= c!1373035 (is-Union!19364 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))))))

(declare-fun bm!680097 () Bool)

(assert (=> bm!680097 (= call!680101 (validRegex!9942 (ite c!1373035 (regTwo!39241 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))) (regTwo!39240 (ite c!1372924 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regTwo!39240 (h!78216 (exprs!8804 c!10532))))))))))

(assert (= (and d!2286922 (not res!2978928)) b!7387271))

(assert (= (and b!7387271 c!1373036) b!7387273))

(assert (= (and b!7387271 (not c!1373036)) b!7387279))

(assert (= (and b!7387273 res!2978929) b!7387274))

(assert (= (and b!7387279 c!1373035) b!7387277))

(assert (= (and b!7387279 (not c!1373035)) b!7387278))

(assert (= (and b!7387277 res!2978930) b!7387275))

(assert (= (and b!7387278 (not res!2978926)) b!7387276))

(assert (= (and b!7387276 res!2978927) b!7387272))

(assert (= (or b!7387277 b!7387276) bm!680095))

(assert (= (or b!7387275 b!7387272) bm!680097))

(assert (= (or b!7387274 bm!680095) bm!680096))

(declare-fun m!8034938 () Bool)

(assert (=> b!7387273 m!8034938))

(declare-fun m!8034940 () Bool)

(assert (=> bm!680096 m!8034940))

(declare-fun m!8034942 () Bool)

(assert (=> bm!680097 m!8034942))

(assert (=> bm!679957 d!2286922))

(declare-fun b!7387280 () Bool)

(declare-fun e!4421700 () Bool)

(declare-fun e!4421704 () Bool)

(assert (=> b!7387280 (= e!4421700 e!4421704)))

(declare-fun c!1373038 () Bool)

(assert (=> b!7387280 (= c!1373038 (is-Star!19364 (h!78216 (t!386443 (exprs!8804 c!10532)))))))

(declare-fun d!2286924 () Bool)

(declare-fun res!2978933 () Bool)

(assert (=> d!2286924 (=> res!2978933 e!4421700)))

(assert (=> d!2286924 (= res!2978933 (is-ElementMatch!19364 (h!78216 (t!386443 (exprs!8804 c!10532)))))))

(assert (=> d!2286924 (= (validRegex!9942 (h!78216 (t!386443 (exprs!8804 c!10532)))) e!4421700)))

(declare-fun b!7387281 () Bool)

(declare-fun e!4421701 () Bool)

(declare-fun call!680104 () Bool)

(assert (=> b!7387281 (= e!4421701 call!680104)))

(declare-fun b!7387282 () Bool)

(declare-fun e!4421706 () Bool)

(assert (=> b!7387282 (= e!4421704 e!4421706)))

(declare-fun res!2978934 () Bool)

(assert (=> b!7387282 (= res!2978934 (not (nullable!8419 (reg!19693 (h!78216 (t!386443 (exprs!8804 c!10532)))))))))

(assert (=> b!7387282 (=> (not res!2978934) (not e!4421706))))

(declare-fun bm!680098 () Bool)

(declare-fun call!680105 () Bool)

(declare-fun call!680103 () Bool)

(assert (=> bm!680098 (= call!680105 call!680103)))

(declare-fun b!7387283 () Bool)

(assert (=> b!7387283 (= e!4421706 call!680103)))

(declare-fun c!1373037 () Bool)

(declare-fun bm!680099 () Bool)

(assert (=> bm!680099 (= call!680103 (validRegex!9942 (ite c!1373038 (reg!19693 (h!78216 (t!386443 (exprs!8804 c!10532)))) (ite c!1373037 (regOne!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))) (regOne!39240 (h!78216 (t!386443 (exprs!8804 c!10532))))))))))

(declare-fun b!7387284 () Bool)

(declare-fun e!4421705 () Bool)

(assert (=> b!7387284 (= e!4421705 call!680104)))

(declare-fun b!7387285 () Bool)

(declare-fun e!4421702 () Bool)

(assert (=> b!7387285 (= e!4421702 e!4421701)))

(declare-fun res!2978932 () Bool)

(assert (=> b!7387285 (=> (not res!2978932) (not e!4421701))))

(assert (=> b!7387285 (= res!2978932 call!680105)))

(declare-fun b!7387286 () Bool)

(declare-fun res!2978935 () Bool)

(assert (=> b!7387286 (=> (not res!2978935) (not e!4421705))))

(assert (=> b!7387286 (= res!2978935 call!680105)))

(declare-fun e!4421703 () Bool)

(assert (=> b!7387286 (= e!4421703 e!4421705)))

(declare-fun b!7387287 () Bool)

(declare-fun res!2978931 () Bool)

(assert (=> b!7387287 (=> res!2978931 e!4421702)))

(assert (=> b!7387287 (= res!2978931 (not (is-Concat!28209 (h!78216 (t!386443 (exprs!8804 c!10532))))))))

(assert (=> b!7387287 (= e!4421703 e!4421702)))

(declare-fun b!7387288 () Bool)

(assert (=> b!7387288 (= e!4421704 e!4421703)))

(assert (=> b!7387288 (= c!1373037 (is-Union!19364 (h!78216 (t!386443 (exprs!8804 c!10532)))))))

(declare-fun bm!680100 () Bool)

(assert (=> bm!680100 (= call!680104 (validRegex!9942 (ite c!1373037 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))) (regTwo!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))))))

(assert (= (and d!2286924 (not res!2978933)) b!7387280))

(assert (= (and b!7387280 c!1373038) b!7387282))

(assert (= (and b!7387280 (not c!1373038)) b!7387288))

(assert (= (and b!7387282 res!2978934) b!7387283))

(assert (= (and b!7387288 c!1373037) b!7387286))

(assert (= (and b!7387288 (not c!1373037)) b!7387287))

(assert (= (and b!7387286 res!2978935) b!7387284))

(assert (= (and b!7387287 (not res!2978931)) b!7387285))

(assert (= (and b!7387285 res!2978932) b!7387281))

(assert (= (or b!7387286 b!7387285) bm!680098))

(assert (= (or b!7387284 b!7387281) bm!680100))

(assert (= (or b!7387283 bm!680098) bm!680099))

(declare-fun m!8034944 () Bool)

(assert (=> b!7387282 m!8034944))

(declare-fun m!8034946 () Bool)

(assert (=> bm!680099 m!8034946))

(declare-fun m!8034948 () Bool)

(assert (=> bm!680100 m!8034948))

(assert (=> bs!1922035 d!2286924))

(declare-fun b!7387289 () Bool)

(declare-fun e!4421712 () Bool)

(declare-fun call!680106 () Bool)

(assert (=> b!7387289 (= e!4421712 call!680106)))

(declare-fun b!7387290 () Bool)

(declare-fun e!4421707 () Bool)

(declare-fun e!4421708 () Bool)

(assert (=> b!7387290 (= e!4421707 e!4421708)))

(declare-fun res!2978936 () Bool)

(assert (=> b!7387290 (= res!2978936 call!680106)))

(assert (=> b!7387290 (=> (not res!2978936) (not e!4421708))))

(declare-fun b!7387291 () Bool)

(declare-fun e!4421711 () Bool)

(assert (=> b!7387291 (= e!4421711 e!4421707)))

(declare-fun c!1373039 () Bool)

(assert (=> b!7387291 (= c!1373039 (is-Union!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(declare-fun b!7387292 () Bool)

(declare-fun call!680107 () Bool)

(assert (=> b!7387292 (= e!4421708 call!680107)))

(declare-fun b!7387293 () Bool)

(declare-fun e!4421710 () Bool)

(declare-fun e!4421709 () Bool)

(assert (=> b!7387293 (= e!4421710 e!4421709)))

(declare-fun res!2978939 () Bool)

(assert (=> b!7387293 (=> (not res!2978939) (not e!4421709))))

(assert (=> b!7387293 (= res!2978939 (and (not (is-EmptyLang!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532))))))) (not (is-ElementMatch!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(declare-fun b!7387294 () Bool)

(assert (=> b!7387294 (= e!4421709 e!4421711)))

(declare-fun res!2978938 () Bool)

(assert (=> b!7387294 (=> res!2978938 e!4421711)))

(assert (=> b!7387294 (= res!2978938 (is-Star!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(declare-fun bm!680102 () Bool)

(assert (=> bm!680102 (= call!680106 (nullable!8419 (ite c!1373039 (regTwo!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regOne!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(declare-fun b!7387295 () Bool)

(assert (=> b!7387295 (= e!4421707 e!4421712)))

(declare-fun res!2978940 () Bool)

(assert (=> b!7387295 (= res!2978940 call!680107)))

(assert (=> b!7387295 (=> res!2978940 e!4421712)))

(declare-fun d!2286926 () Bool)

(declare-fun res!2978937 () Bool)

(assert (=> d!2286926 (=> res!2978937 e!4421710)))

(assert (=> d!2286926 (= res!2978937 (is-EmptyExpr!19364 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))

(assert (=> d!2286926 (= (nullableFct!3384 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) e!4421710)))

(declare-fun bm!680101 () Bool)

(assert (=> bm!680101 (= call!680107 (nullable!8419 (ite c!1373039 (regOne!39241 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))) (regTwo!39240 (h!78216 (exprs!8804 (Context!16609 (t!386443 (exprs!8804 c!10532)))))))))))

(assert (= (and d!2286926 (not res!2978937)) b!7387293))

(assert (= (and b!7387293 res!2978939) b!7387294))

(assert (= (and b!7387294 (not res!2978938)) b!7387291))

(assert (= (and b!7387291 c!1373039) b!7387295))

(assert (= (and b!7387291 (not c!1373039)) b!7387290))

(assert (= (and b!7387295 (not res!2978940)) b!7387289))

(assert (= (and b!7387290 res!2978936) b!7387292))

(assert (= (or b!7387289 b!7387290) bm!680102))

(assert (= (or b!7387295 b!7387292) bm!680101))

(declare-fun m!8034950 () Bool)

(assert (=> bm!680102 m!8034950))

(declare-fun m!8034952 () Bool)

(assert (=> bm!680101 m!8034952))

(assert (=> d!2286682 d!2286926))

(declare-fun b!7387296 () Bool)

(declare-fun e!4421713 () Bool)

(declare-fun e!4421717 () Bool)

(assert (=> b!7387296 (= e!4421713 e!4421717)))

(declare-fun c!1373041 () Bool)

(assert (=> b!7387296 (= c!1373041 (is-Star!19364 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))))))

(declare-fun d!2286928 () Bool)

(declare-fun res!2978943 () Bool)

(assert (=> d!2286928 (=> res!2978943 e!4421713)))

(assert (=> d!2286928 (= res!2978943 (is-ElementMatch!19364 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))))))

(assert (=> d!2286928 (= (validRegex!9942 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))) e!4421713)))

(declare-fun b!7387297 () Bool)

(declare-fun e!4421714 () Bool)

(declare-fun call!680109 () Bool)

(assert (=> b!7387297 (= e!4421714 call!680109)))

(declare-fun b!7387298 () Bool)

(declare-fun e!4421719 () Bool)

(assert (=> b!7387298 (= e!4421717 e!4421719)))

(declare-fun res!2978944 () Bool)

(assert (=> b!7387298 (= res!2978944 (not (nullable!8419 (reg!19693 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))))))))

(assert (=> b!7387298 (=> (not res!2978944) (not e!4421719))))

(declare-fun bm!680103 () Bool)

(declare-fun call!680110 () Bool)

(declare-fun call!680108 () Bool)

(assert (=> bm!680103 (= call!680110 call!680108)))

(declare-fun b!7387299 () Bool)

(assert (=> b!7387299 (= e!4421719 call!680108)))

(declare-fun c!1373040 () Bool)

(declare-fun bm!680104 () Bool)

(assert (=> bm!680104 (= call!680108 (validRegex!9942 (ite c!1373041 (reg!19693 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))) (ite c!1373040 (regOne!39241 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))) (regOne!39240 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))))))))

(declare-fun b!7387300 () Bool)

(declare-fun e!4421718 () Bool)

(assert (=> b!7387300 (= e!4421718 call!680109)))

(declare-fun b!7387301 () Bool)

(declare-fun e!4421715 () Bool)

(assert (=> b!7387301 (= e!4421715 e!4421714)))

(declare-fun res!2978942 () Bool)

(assert (=> b!7387301 (=> (not res!2978942) (not e!4421714))))

(assert (=> b!7387301 (= res!2978942 call!680110)))

(declare-fun b!7387302 () Bool)

(declare-fun res!2978945 () Bool)

(assert (=> b!7387302 (=> (not res!2978945) (not e!4421718))))

(assert (=> b!7387302 (= res!2978945 call!680110)))

(declare-fun e!4421716 () Bool)

(assert (=> b!7387302 (= e!4421716 e!4421718)))

(declare-fun b!7387303 () Bool)

(declare-fun res!2978941 () Bool)

(assert (=> b!7387303 (=> res!2978941 e!4421715)))

(assert (=> b!7387303 (= res!2978941 (not (is-Concat!28209 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))))))

(assert (=> b!7387303 (= e!4421716 e!4421715)))

(declare-fun b!7387304 () Bool)

(assert (=> b!7387304 (= e!4421717 e!4421716)))

(assert (=> b!7387304 (= c!1373040 (is-Union!19364 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))))))

(declare-fun bm!680105 () Bool)

(assert (=> bm!680105 (= call!680109 (validRegex!9942 (ite c!1373040 (regTwo!39241 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))) (regTwo!39240 (ite c!1372913 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895))) (regTwo!39240 (h!78216 (exprs!8804 setElem!55895))))))))))

(assert (= (and d!2286928 (not res!2978943)) b!7387296))

(assert (= (and b!7387296 c!1373041) b!7387298))

(assert (= (and b!7387296 (not c!1373041)) b!7387304))

(assert (= (and b!7387298 res!2978944) b!7387299))

(assert (= (and b!7387304 c!1373040) b!7387302))

(assert (= (and b!7387304 (not c!1373040)) b!7387303))

(assert (= (and b!7387302 res!2978945) b!7387300))

(assert (= (and b!7387303 (not res!2978941)) b!7387301))

(assert (= (and b!7387301 res!2978942) b!7387297))

(assert (= (or b!7387302 b!7387301) bm!680103))

(assert (= (or b!7387300 b!7387297) bm!680105))

(assert (= (or b!7387299 bm!680103) bm!680104))

(declare-fun m!8034954 () Bool)

(assert (=> b!7387298 m!8034954))

(declare-fun m!8034956 () Bool)

(assert (=> bm!680104 m!8034956))

(declare-fun m!8034958 () Bool)

(assert (=> bm!680105 m!8034958))

(assert (=> bm!679944 d!2286928))

(declare-fun d!2286930 () Bool)

(declare-fun c!1373044 () Bool)

(assert (=> d!2286930 (= c!1373044 (is-Nil!71772 lt!2617715))))

(declare-fun e!4421722 () (Set Context!16608))

(assert (=> d!2286930 (= (content!15203 lt!2617715) e!4421722)))

(declare-fun b!7387309 () Bool)

(assert (=> b!7387309 (= e!4421722 (as set.empty (Set Context!16608)))))

(declare-fun b!7387310 () Bool)

(assert (=> b!7387310 (= e!4421722 (set.union (set.insert (h!78220 lt!2617715) (as set.empty (Set Context!16608))) (content!15203 (t!386447 lt!2617715))))))

(assert (= (and d!2286930 c!1373044) b!7387309))

(assert (= (and d!2286930 (not c!1373044)) b!7387310))

(declare-fun m!8034960 () Bool)

(assert (=> b!7387310 m!8034960))

(declare-fun m!8034962 () Bool)

(assert (=> b!7387310 m!8034962))

(assert (=> b!7386354 d!2286930))

(declare-fun d!2286932 () Bool)

(declare-fun res!2978946 () Bool)

(declare-fun e!4421723 () Bool)

(assert (=> d!2286932 (=> res!2978946 e!4421723)))

(assert (=> d!2286932 (= res!2978946 (is-Nil!71768 (t!386443 (exprs!8804 setElem!55901))))))

(assert (=> d!2286932 (= (forall!18147 (t!386443 (exprs!8804 setElem!55901)) lambda!458942) e!4421723)))

(declare-fun b!7387311 () Bool)

(declare-fun e!4421724 () Bool)

(assert (=> b!7387311 (= e!4421723 e!4421724)))

(declare-fun res!2978947 () Bool)

(assert (=> b!7387311 (=> (not res!2978947) (not e!4421724))))

(assert (=> b!7387311 (= res!2978947 (dynLambda!29558 lambda!458942 (h!78216 (t!386443 (exprs!8804 setElem!55901)))))))

(declare-fun b!7387312 () Bool)

(assert (=> b!7387312 (= e!4421724 (forall!18147 (t!386443 (t!386443 (exprs!8804 setElem!55901))) lambda!458942))))

(assert (= (and d!2286932 (not res!2978946)) b!7387311))

(assert (= (and b!7387311 res!2978947) b!7387312))

(declare-fun b_lambda!285061 () Bool)

(assert (=> (not b_lambda!285061) (not b!7387311)))

(declare-fun m!8034964 () Bool)

(assert (=> b!7387311 m!8034964))

(declare-fun m!8034966 () Bool)

(assert (=> b!7387312 m!8034966))

(assert (=> b!7386258 d!2286932))

(declare-fun bm!680106 () Bool)

(declare-fun call!680111 () List!71892)

(declare-fun call!680115 () List!71892)

(assert (=> bm!680106 (= call!680111 call!680115)))

(declare-fun b!7387313 () Bool)

(declare-fun e!4421726 () (Set Context!16608))

(declare-fun call!680114 () (Set Context!16608))

(assert (=> b!7387313 (= e!4421726 call!680114)))

(declare-fun b!7387314 () Bool)

(assert (=> b!7387314 (= e!4421726 (as set.empty (Set Context!16608)))))

(declare-fun bm!680107 () Bool)

(declare-fun call!680113 () (Set Context!16608))

(declare-fun call!680112 () (Set Context!16608))

(assert (=> bm!680107 (= call!680113 call!680112)))

(declare-fun c!1373048 () Bool)

(declare-fun c!1373045 () Bool)

(declare-fun bm!680108 () Bool)

(declare-fun c!1373049 () Bool)

(assert (=> bm!680108 (= call!680112 (derivationStepZipperDown!3171 (ite c!1373045 (regOne!39241 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))) (ite c!1373048 (regTwo!39240 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))) (ite c!1373049 (regOne!39240 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))) (reg!19693 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))))) (ite (or c!1373045 c!1373048) (ite (or c!1372915 c!1372918) (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679950)) (Context!16609 call!680111)) lt!2617689))))

(declare-fun bm!680109 () Bool)

(assert (=> bm!680109 (= call!680114 call!680113)))

(declare-fun e!4421728 () Bool)

(declare-fun b!7387315 () Bool)

(assert (=> b!7387315 (= e!4421728 (nullable!8419 (regOne!39240 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))))))

(declare-fun c!1373047 () Bool)

(declare-fun d!2286934 () Bool)

(assert (=> d!2286934 (= c!1373047 (and (is-ElementMatch!19364 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))) (= (c!1372812 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))) lt!2617689)))))

(declare-fun e!4421727 () (Set Context!16608))

(assert (=> d!2286934 (= (derivationStepZipperDown!3171 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))) (ite (or c!1372915 c!1372918) (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679950)) lt!2617689) e!4421727)))

(declare-fun b!7387316 () Bool)

(declare-fun e!4421729 () (Set Context!16608))

(assert (=> b!7387316 (= e!4421729 call!680114)))

(declare-fun bm!680110 () Bool)

(assert (=> bm!680110 (= call!680115 ($colon$colon!3322 (exprs!8804 (ite (or c!1372915 c!1372918) (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679950))) (ite (or c!1373048 c!1373049) (regTwo!39240 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))) (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))))))

(declare-fun b!7387317 () Bool)

(declare-fun e!4421725 () (Set Context!16608))

(assert (=> b!7387317 (= e!4421727 e!4421725)))

(assert (=> b!7387317 (= c!1373045 (is-Union!19364 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))))

(declare-fun call!680116 () (Set Context!16608))

(declare-fun bm!680111 () Bool)

(assert (=> bm!680111 (= call!680116 (derivationStepZipperDown!3171 (ite c!1373045 (regTwo!39241 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))) (regOne!39240 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532)))))))))) (ite c!1373045 (ite (or c!1372915 c!1372918) (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679950)) (Context!16609 call!680115)) lt!2617689))))

(declare-fun b!7387318 () Bool)

(assert (=> b!7387318 (= c!1373048 e!4421728)))

(declare-fun res!2978948 () Bool)

(assert (=> b!7387318 (=> (not res!2978948) (not e!4421728))))

(assert (=> b!7387318 (= res!2978948 (is-Concat!28209 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))))

(declare-fun e!4421730 () (Set Context!16608))

(assert (=> b!7387318 (= e!4421725 e!4421730)))

(declare-fun c!1373046 () Bool)

(declare-fun b!7387319 () Bool)

(assert (=> b!7387319 (= c!1373046 (is-Star!19364 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))))

(assert (=> b!7387319 (= e!4421729 e!4421726)))

(declare-fun b!7387320 () Bool)

(assert (=> b!7387320 (= e!4421725 (set.union call!680112 call!680116))))

(declare-fun b!7387321 () Bool)

(assert (=> b!7387321 (= e!4421730 e!4421729)))

(assert (=> b!7387321 (= c!1373049 (is-Concat!28209 (ite c!1372915 (regOne!39241 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372918 (regTwo!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (ite c!1372919 (regOne!39240 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))) (reg!19693 (ite c!1372859 (regTwo!39241 (h!78216 (exprs!8804 c!10532))) (regOne!39240 (h!78216 (exprs!8804 c!10532))))))))))))

(declare-fun b!7387322 () Bool)

(assert (=> b!7387322 (= e!4421727 (set.insert (ite (or c!1372915 c!1372918) (ite c!1372859 (Context!16609 (t!386443 (exprs!8804 c!10532))) (Context!16609 call!679880)) (Context!16609 call!679950)) (as set.empty (Set Context!16608))))))

(declare-fun b!7387323 () Bool)

(assert (=> b!7387323 (= e!4421730 (set.union call!680116 call!680113))))

(assert (= (and d!2286934 c!1373047) b!7387322))

(assert (= (and d!2286934 (not c!1373047)) b!7387317))

(assert (= (and b!7387317 c!1373045) b!7387320))

(assert (= (and b!7387317 (not c!1373045)) b!7387318))

(assert (= (and b!7387318 res!2978948) b!7387315))

(assert (= (and b!7387318 c!1373048) b!7387323))

(assert (= (and b!7387318 (not c!1373048)) b!7387321))

(assert (= (and b!7387321 c!1373049) b!7387316))

(assert (= (and b!7387321 (not c!1373049)) b!7387319))

(assert (= (and b!7387319 c!1373046) b!7387313))

(assert (= (and b!7387319 (not c!1373046)) b!7387314))

(assert (= (or b!7387316 b!7387313) bm!680106))

(assert (= (or b!7387316 b!7387313) bm!680109))

(assert (= (or b!7387323 bm!680106) bm!680110))

(assert (= (or b!7387323 bm!680109) bm!680107))

(assert (= (or b!7387320 bm!680107) bm!680108))

(assert (= (or b!7387320 b!7387323) bm!680111))

(declare-fun m!8034968 () Bool)

(assert (=> bm!680108 m!8034968))

(declare-fun m!8034970 () Bool)

(assert (=> b!7387322 m!8034970))

(declare-fun m!8034972 () Bool)

(assert (=> bm!680111 m!8034972))

(declare-fun m!8034974 () Bool)

(assert (=> b!7387315 m!8034974))

(declare-fun m!8034976 () Bool)

(assert (=> bm!680110 m!8034976))

(assert (=> bm!679947 d!2286934))

(declare-fun b!7387324 () Bool)

(declare-fun e!4421731 () Bool)

(assert (=> b!7387324 (= e!4421731 tp_is_empty!48991)))

(declare-fun b!7387325 () Bool)

(declare-fun tp!2102289 () Bool)

(declare-fun tp!2102288 () Bool)

(assert (=> b!7387325 (= e!4421731 (and tp!2102289 tp!2102288))))

(declare-fun b!7387326 () Bool)

(declare-fun tp!2102287 () Bool)

(assert (=> b!7387326 (= e!4421731 tp!2102287)))

(assert (=> b!7386380 (= tp!2101639 e!4421731)))

(declare-fun b!7387327 () Bool)

(declare-fun tp!2102286 () Bool)

(declare-fun tp!2102290 () Bool)

(assert (=> b!7387327 (= e!4421731 (and tp!2102286 tp!2102290))))

(assert (= (and b!7386380 (is-ElementMatch!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387324))

(assert (= (and b!7386380 (is-Concat!28209 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387325))

(assert (= (and b!7386380 (is-Star!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387326))

(assert (= (and b!7386380 (is-Union!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387327))

(declare-fun b!7387328 () Bool)

(declare-fun e!4421732 () Bool)

(assert (=> b!7387328 (= e!4421732 tp_is_empty!48991)))

(declare-fun b!7387329 () Bool)

(declare-fun tp!2102294 () Bool)

(declare-fun tp!2102293 () Bool)

(assert (=> b!7387329 (= e!4421732 (and tp!2102294 tp!2102293))))

(declare-fun b!7387330 () Bool)

(declare-fun tp!2102292 () Bool)

(assert (=> b!7387330 (= e!4421732 tp!2102292)))

(assert (=> b!7386380 (= tp!2101643 e!4421732)))

(declare-fun b!7387331 () Bool)

(declare-fun tp!2102291 () Bool)

(declare-fun tp!2102295 () Bool)

(assert (=> b!7387331 (= e!4421732 (and tp!2102291 tp!2102295))))

(assert (= (and b!7386380 (is-ElementMatch!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387328))

(assert (= (and b!7386380 (is-Concat!28209 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387329))

(assert (= (and b!7386380 (is-Star!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387330))

(assert (= (and b!7386380 (is-Union!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387331))

(declare-fun condSetEmpty!55920 () Bool)

(assert (=> setNonEmpty!55915 (= condSetEmpty!55920 (= setRest!55915 (as set.empty (Set Context!16608))))))

(declare-fun setRes!55920 () Bool)

(assert (=> setNonEmpty!55915 (= tp!2101632 setRes!55920)))

(declare-fun setIsEmpty!55920 () Bool)

(assert (=> setIsEmpty!55920 setRes!55920))

(declare-fun tp!2102296 () Bool)

(declare-fun setNonEmpty!55920 () Bool)

(declare-fun e!4421733 () Bool)

(declare-fun setElem!55920 () Context!16608)

(assert (=> setNonEmpty!55920 (= setRes!55920 (and tp!2102296 (inv!91772 setElem!55920) e!4421733))))

(declare-fun setRest!55920 () (Set Context!16608))

(assert (=> setNonEmpty!55920 (= setRest!55915 (set.union (set.insert setElem!55920 (as set.empty (Set Context!16608))) setRest!55920))))

(declare-fun b!7387332 () Bool)

(declare-fun tp!2102297 () Bool)

(assert (=> b!7387332 (= e!4421733 tp!2102297)))

(assert (= (and setNonEmpty!55915 condSetEmpty!55920) setIsEmpty!55920))

(assert (= (and setNonEmpty!55915 (not condSetEmpty!55920)) setNonEmpty!55920))

(assert (= setNonEmpty!55920 b!7387332))

(declare-fun m!8034978 () Bool)

(assert (=> setNonEmpty!55920 m!8034978))

(declare-fun b!7387333 () Bool)

(declare-fun e!4421734 () Bool)

(assert (=> b!7387333 (= e!4421734 tp_is_empty!48991)))

(declare-fun b!7387334 () Bool)

(declare-fun tp!2102301 () Bool)

(declare-fun tp!2102300 () Bool)

(assert (=> b!7387334 (= e!4421734 (and tp!2102301 tp!2102300))))

(declare-fun b!7387335 () Bool)

(declare-fun tp!2102299 () Bool)

(assert (=> b!7387335 (= e!4421734 tp!2102299)))

(assert (=> b!7386388 (= tp!2101652 e!4421734)))

(declare-fun b!7387336 () Bool)

(declare-fun tp!2102298 () Bool)

(declare-fun tp!2102302 () Bool)

(assert (=> b!7387336 (= e!4421734 (and tp!2102298 tp!2102302))))

(assert (= (and b!7386388 (is-ElementMatch!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387333))

(assert (= (and b!7386388 (is-Concat!28209 (reg!19693 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387334))

(assert (= (and b!7386388 (is-Star!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387335))

(assert (= (and b!7386388 (is-Union!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387336))

(declare-fun b!7387337 () Bool)

(declare-fun e!4421735 () Bool)

(assert (=> b!7387337 (= e!4421735 tp_is_empty!48991)))

(declare-fun b!7387338 () Bool)

(declare-fun tp!2102306 () Bool)

(declare-fun tp!2102305 () Bool)

(assert (=> b!7387338 (= e!4421735 (and tp!2102306 tp!2102305))))

(declare-fun b!7387339 () Bool)

(declare-fun tp!2102304 () Bool)

(assert (=> b!7387339 (= e!4421735 tp!2102304)))

(assert (=> b!7386451 (= tp!2101735 e!4421735)))

(declare-fun b!7387340 () Bool)

(declare-fun tp!2102303 () Bool)

(declare-fun tp!2102307 () Bool)

(assert (=> b!7387340 (= e!4421735 (and tp!2102303 tp!2102307))))

(assert (= (and b!7386451 (is-ElementMatch!19364 (h!78216 (exprs!8804 _$3!507)))) b!7387337))

(assert (= (and b!7386451 (is-Concat!28209 (h!78216 (exprs!8804 _$3!507)))) b!7387338))

(assert (= (and b!7386451 (is-Star!19364 (h!78216 (exprs!8804 _$3!507)))) b!7387339))

(assert (= (and b!7386451 (is-Union!19364 (h!78216 (exprs!8804 _$3!507)))) b!7387340))

(declare-fun b!7387341 () Bool)

(declare-fun e!4421736 () Bool)

(declare-fun tp!2102308 () Bool)

(declare-fun tp!2102309 () Bool)

(assert (=> b!7387341 (= e!4421736 (and tp!2102308 tp!2102309))))

(assert (=> b!7386451 (= tp!2101736 e!4421736)))

(assert (= (and b!7386451 (is-Cons!71768 (t!386443 (exprs!8804 _$3!507)))) b!7387341))

(declare-fun b!7387342 () Bool)

(declare-fun e!4421737 () Bool)

(assert (=> b!7387342 (= e!4421737 tp_is_empty!48991)))

(declare-fun b!7387343 () Bool)

(declare-fun tp!2102313 () Bool)

(declare-fun tp!2102312 () Bool)

(assert (=> b!7387343 (= e!4421737 (and tp!2102313 tp!2102312))))

(declare-fun b!7387344 () Bool)

(declare-fun tp!2102311 () Bool)

(assert (=> b!7387344 (= e!4421737 tp!2102311)))

(assert (=> b!7386405 (= tp!2101677 e!4421737)))

(declare-fun b!7387345 () Bool)

(declare-fun tp!2102310 () Bool)

(declare-fun tp!2102314 () Bool)

(assert (=> b!7387345 (= e!4421737 (and tp!2102310 tp!2102314))))

(assert (= (and b!7386405 (is-ElementMatch!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387342))

(assert (= (and b!7386405 (is-Concat!28209 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387343))

(assert (= (and b!7386405 (is-Star!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387344))

(assert (= (and b!7386405 (is-Union!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387345))

(declare-fun b!7387346 () Bool)

(declare-fun e!4421738 () Bool)

(assert (=> b!7387346 (= e!4421738 tp_is_empty!48991)))

(declare-fun b!7387347 () Bool)

(declare-fun tp!2102318 () Bool)

(declare-fun tp!2102317 () Bool)

(assert (=> b!7387347 (= e!4421738 (and tp!2102318 tp!2102317))))

(declare-fun b!7387348 () Bool)

(declare-fun tp!2102316 () Bool)

(assert (=> b!7387348 (= e!4421738 tp!2102316)))

(assert (=> b!7386405 (= tp!2101676 e!4421738)))

(declare-fun b!7387349 () Bool)

(declare-fun tp!2102315 () Bool)

(declare-fun tp!2102319 () Bool)

(assert (=> b!7387349 (= e!4421738 (and tp!2102315 tp!2102319))))

(assert (= (and b!7386405 (is-ElementMatch!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387346))

(assert (= (and b!7386405 (is-Concat!28209 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387347))

(assert (= (and b!7386405 (is-Star!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387348))

(assert (= (and b!7386405 (is-Union!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387349))

(declare-fun b!7387350 () Bool)

(declare-fun e!4421739 () Bool)

(assert (=> b!7387350 (= e!4421739 tp_is_empty!48991)))

(declare-fun b!7387351 () Bool)

(declare-fun tp!2102323 () Bool)

(declare-fun tp!2102322 () Bool)

(assert (=> b!7387351 (= e!4421739 (and tp!2102323 tp!2102322))))

(declare-fun b!7387352 () Bool)

(declare-fun tp!2102321 () Bool)

(assert (=> b!7387352 (= e!4421739 tp!2102321)))

(assert (=> b!7386444 (= tp!2101724 e!4421739)))

(declare-fun b!7387353 () Bool)

(declare-fun tp!2102320 () Bool)

(declare-fun tp!2102324 () Bool)

(assert (=> b!7387353 (= e!4421739 (and tp!2102320 tp!2102324))))

(assert (= (and b!7386444 (is-ElementMatch!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387350))

(assert (= (and b!7386444 (is-Concat!28209 (reg!19693 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387351))

(assert (= (and b!7386444 (is-Star!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387352))

(assert (= (and b!7386444 (is-Union!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387353))

(declare-fun b!7387354 () Bool)

(declare-fun e!4421740 () Bool)

(declare-fun tp!2102325 () Bool)

(assert (=> b!7387354 (= e!4421740 (and tp_is_empty!48991 tp!2102325))))

(assert (=> b!7386390 (= tp!2101656 e!4421740)))

(assert (= (and b!7386390 (is-Cons!71769 (t!386444 (t!386444 (t!386444 (t!386444 s!7927)))))) b!7387354))

(declare-fun b!7387355 () Bool)

(declare-fun e!4421741 () Bool)

(assert (=> b!7387355 (= e!4421741 tp_is_empty!48991)))

(declare-fun b!7387356 () Bool)

(declare-fun tp!2102329 () Bool)

(declare-fun tp!2102328 () Bool)

(assert (=> b!7387356 (= e!4421741 (and tp!2102329 tp!2102328))))

(declare-fun b!7387357 () Bool)

(declare-fun tp!2102327 () Bool)

(assert (=> b!7387357 (= e!4421741 tp!2102327)))

(assert (=> b!7386435 (= tp!2101716 e!4421741)))

(declare-fun b!7387358 () Bool)

(declare-fun tp!2102326 () Bool)

(declare-fun tp!2102330 () Bool)

(assert (=> b!7387358 (= e!4421741 (and tp!2102326 tp!2102330))))

(assert (= (and b!7386435 (is-ElementMatch!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387355))

(assert (= (and b!7386435 (is-Concat!28209 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387356))

(assert (= (and b!7386435 (is-Star!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387357))

(assert (= (and b!7386435 (is-Union!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387358))

(declare-fun b!7387359 () Bool)

(declare-fun e!4421742 () Bool)

(assert (=> b!7387359 (= e!4421742 tp_is_empty!48991)))

(declare-fun b!7387360 () Bool)

(declare-fun tp!2102334 () Bool)

(declare-fun tp!2102333 () Bool)

(assert (=> b!7387360 (= e!4421742 (and tp!2102334 tp!2102333))))

(declare-fun b!7387361 () Bool)

(declare-fun tp!2102332 () Bool)

(assert (=> b!7387361 (= e!4421742 tp!2102332)))

(assert (=> b!7386435 (= tp!2101715 e!4421742)))

(declare-fun b!7387362 () Bool)

(declare-fun tp!2102331 () Bool)

(declare-fun tp!2102335 () Bool)

(assert (=> b!7387362 (= e!4421742 (and tp!2102331 tp!2102335))))

(assert (= (and b!7386435 (is-ElementMatch!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387359))

(assert (= (and b!7386435 (is-Concat!28209 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387360))

(assert (= (and b!7386435 (is-Star!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387361))

(assert (= (and b!7386435 (is-Union!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387362))

(declare-fun b!7387363 () Bool)

(declare-fun e!4421743 () Bool)

(assert (=> b!7387363 (= e!4421743 tp_is_empty!48991)))

(declare-fun b!7387364 () Bool)

(declare-fun tp!2102339 () Bool)

(declare-fun tp!2102338 () Bool)

(assert (=> b!7387364 (= e!4421743 (and tp!2102339 tp!2102338))))

(declare-fun b!7387365 () Bool)

(declare-fun tp!2102337 () Bool)

(assert (=> b!7387365 (= e!4421743 tp!2102337)))

(assert (=> b!7386407 (= tp!2101674 e!4421743)))

(declare-fun b!7387366 () Bool)

(declare-fun tp!2102336 () Bool)

(declare-fun tp!2102340 () Bool)

(assert (=> b!7387366 (= e!4421743 (and tp!2102336 tp!2102340))))

(assert (= (and b!7386407 (is-ElementMatch!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387363))

(assert (= (and b!7386407 (is-Concat!28209 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387364))

(assert (= (and b!7386407 (is-Star!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387365))

(assert (= (and b!7386407 (is-Union!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387366))

(declare-fun b!7387367 () Bool)

(declare-fun e!4421744 () Bool)

(assert (=> b!7387367 (= e!4421744 tp_is_empty!48991)))

(declare-fun b!7387368 () Bool)

(declare-fun tp!2102344 () Bool)

(declare-fun tp!2102343 () Bool)

(assert (=> b!7387368 (= e!4421744 (and tp!2102344 tp!2102343))))

(declare-fun b!7387369 () Bool)

(declare-fun tp!2102342 () Bool)

(assert (=> b!7387369 (= e!4421744 tp!2102342)))

(assert (=> b!7386407 (= tp!2101678 e!4421744)))

(declare-fun b!7387370 () Bool)

(declare-fun tp!2102341 () Bool)

(declare-fun tp!2102345 () Bool)

(assert (=> b!7387370 (= e!4421744 (and tp!2102341 tp!2102345))))

(assert (= (and b!7386407 (is-ElementMatch!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387367))

(assert (= (and b!7386407 (is-Concat!28209 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387368))

(assert (= (and b!7386407 (is-Star!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387369))

(assert (= (and b!7386407 (is-Union!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387370))

(declare-fun b!7387371 () Bool)

(declare-fun e!4421745 () Bool)

(assert (=> b!7387371 (= e!4421745 tp_is_empty!48991)))

(declare-fun b!7387372 () Bool)

(declare-fun tp!2102349 () Bool)

(declare-fun tp!2102348 () Bool)

(assert (=> b!7387372 (= e!4421745 (and tp!2102349 tp!2102348))))

(declare-fun b!7387373 () Bool)

(declare-fun tp!2102347 () Bool)

(assert (=> b!7387373 (= e!4421745 tp!2102347)))

(assert (=> b!7386398 (= tp!2101665 e!4421745)))

(declare-fun b!7387374 () Bool)

(declare-fun tp!2102346 () Bool)

(declare-fun tp!2102350 () Bool)

(assert (=> b!7387374 (= e!4421745 (and tp!2102346 tp!2102350))))

(assert (= (and b!7386398 (is-ElementMatch!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387371))

(assert (= (and b!7386398 (is-Concat!28209 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387372))

(assert (= (and b!7386398 (is-Star!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387373))

(assert (= (and b!7386398 (is-Union!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387374))

(declare-fun b!7387375 () Bool)

(declare-fun e!4421746 () Bool)

(assert (=> b!7387375 (= e!4421746 tp_is_empty!48991)))

(declare-fun b!7387376 () Bool)

(declare-fun tp!2102354 () Bool)

(declare-fun tp!2102353 () Bool)

(assert (=> b!7387376 (= e!4421746 (and tp!2102354 tp!2102353))))

(declare-fun b!7387377 () Bool)

(declare-fun tp!2102352 () Bool)

(assert (=> b!7387377 (= e!4421746 tp!2102352)))

(assert (=> b!7386437 (= tp!2101713 e!4421746)))

(declare-fun b!7387378 () Bool)

(declare-fun tp!2102351 () Bool)

(declare-fun tp!2102355 () Bool)

(assert (=> b!7387378 (= e!4421746 (and tp!2102351 tp!2102355))))

(assert (= (and b!7386437 (is-ElementMatch!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387375))

(assert (= (and b!7386437 (is-Concat!28209 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387376))

(assert (= (and b!7386437 (is-Star!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387377))

(assert (= (and b!7386437 (is-Union!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387378))

(declare-fun b!7387379 () Bool)

(declare-fun e!4421747 () Bool)

(assert (=> b!7387379 (= e!4421747 tp_is_empty!48991)))

(declare-fun b!7387380 () Bool)

(declare-fun tp!2102359 () Bool)

(declare-fun tp!2102358 () Bool)

(assert (=> b!7387380 (= e!4421747 (and tp!2102359 tp!2102358))))

(declare-fun b!7387381 () Bool)

(declare-fun tp!2102357 () Bool)

(assert (=> b!7387381 (= e!4421747 tp!2102357)))

(assert (=> b!7386437 (= tp!2101717 e!4421747)))

(declare-fun b!7387382 () Bool)

(declare-fun tp!2102356 () Bool)

(declare-fun tp!2102360 () Bool)

(assert (=> b!7387382 (= e!4421747 (and tp!2102356 tp!2102360))))

(assert (= (and b!7386437 (is-ElementMatch!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387379))

(assert (= (and b!7386437 (is-Concat!28209 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387380))

(assert (= (and b!7386437 (is-Star!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387381))

(assert (= (and b!7386437 (is-Union!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387382))

(declare-fun b!7387383 () Bool)

(declare-fun e!4421748 () Bool)

(assert (=> b!7387383 (= e!4421748 tp_is_empty!48991)))

(declare-fun b!7387384 () Bool)

(declare-fun tp!2102364 () Bool)

(declare-fun tp!2102363 () Bool)

(assert (=> b!7387384 (= e!4421748 (and tp!2102364 tp!2102363))))

(declare-fun b!7387385 () Bool)

(declare-fun tp!2102362 () Bool)

(assert (=> b!7387385 (= e!4421748 tp!2102362)))

(assert (=> b!7386382 (= tp!2101647 e!4421748)))

(declare-fun b!7387386 () Bool)

(declare-fun tp!2102361 () Bool)

(declare-fun tp!2102365 () Bool)

(assert (=> b!7387386 (= e!4421748 (and tp!2102361 tp!2102365))))

(assert (= (and b!7386382 (is-ElementMatch!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387383))

(assert (= (and b!7386382 (is-Concat!28209 (regOne!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387384))

(assert (= (and b!7386382 (is-Star!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387385))

(assert (= (and b!7386382 (is-Union!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387386))

(declare-fun b!7387387 () Bool)

(declare-fun e!4421749 () Bool)

(assert (=> b!7387387 (= e!4421749 tp_is_empty!48991)))

(declare-fun b!7387388 () Bool)

(declare-fun tp!2102369 () Bool)

(declare-fun tp!2102368 () Bool)

(assert (=> b!7387388 (= e!4421749 (and tp!2102369 tp!2102368))))

(declare-fun b!7387389 () Bool)

(declare-fun tp!2102367 () Bool)

(assert (=> b!7387389 (= e!4421749 tp!2102367)))

(assert (=> b!7386382 (= tp!2101646 e!4421749)))

(declare-fun b!7387390 () Bool)

(declare-fun tp!2102366 () Bool)

(declare-fun tp!2102370 () Bool)

(assert (=> b!7387390 (= e!4421749 (and tp!2102366 tp!2102370))))

(assert (= (and b!7386382 (is-ElementMatch!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387387))

(assert (= (and b!7386382 (is-Concat!28209 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387388))

(assert (= (and b!7386382 (is-Star!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387389))

(assert (= (and b!7386382 (is-Union!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387390))

(declare-fun b!7387391 () Bool)

(declare-fun e!4421750 () Bool)

(assert (=> b!7387391 (= e!4421750 tp_is_empty!48991)))

(declare-fun b!7387392 () Bool)

(declare-fun tp!2102374 () Bool)

(declare-fun tp!2102373 () Bool)

(assert (=> b!7387392 (= e!4421750 (and tp!2102374 tp!2102373))))

(declare-fun b!7387393 () Bool)

(declare-fun tp!2102372 () Bool)

(assert (=> b!7387393 (= e!4421750 tp!2102372)))

(assert (=> b!7386428 (= tp!2101704 e!4421750)))

(declare-fun b!7387394 () Bool)

(declare-fun tp!2102371 () Bool)

(declare-fun tp!2102375 () Bool)

(assert (=> b!7387394 (= e!4421750 (and tp!2102371 tp!2102375))))

(assert (= (and b!7386428 (is-ElementMatch!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387391))

(assert (= (and b!7386428 (is-Concat!28209 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387392))

(assert (= (and b!7386428 (is-Star!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387393))

(assert (= (and b!7386428 (is-Union!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387394))

(declare-fun b!7387395 () Bool)

(declare-fun e!4421751 () Bool)

(declare-fun tp!2102376 () Bool)

(declare-fun tp!2102377 () Bool)

(assert (=> b!7387395 (= e!4421751 (and tp!2102376 tp!2102377))))

(assert (=> b!7386421 (= tp!2101697 e!4421751)))

(assert (= (and b!7386421 (is-Cons!71768 (exprs!8804 setElem!55916))) b!7387395))

(declare-fun b!7387396 () Bool)

(declare-fun e!4421752 () Bool)

(assert (=> b!7387396 (= e!4421752 tp_is_empty!48991)))

(declare-fun b!7387397 () Bool)

(declare-fun tp!2102381 () Bool)

(declare-fun tp!2102380 () Bool)

(assert (=> b!7387397 (= e!4421752 (and tp!2102381 tp!2102380))))

(declare-fun b!7387398 () Bool)

(declare-fun tp!2102379 () Bool)

(assert (=> b!7387398 (= e!4421752 tp!2102379)))

(assert (=> b!7386415 (= tp!2101687 e!4421752)))

(declare-fun b!7387399 () Bool)

(declare-fun tp!2102378 () Bool)

(declare-fun tp!2102382 () Bool)

(assert (=> b!7387399 (= e!4421752 (and tp!2102378 tp!2102382))))

(assert (= (and b!7386415 (is-ElementMatch!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387396))

(assert (= (and b!7386415 (is-Concat!28209 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387397))

(assert (= (and b!7386415 (is-Star!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387398))

(assert (= (and b!7386415 (is-Union!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387399))

(declare-fun b!7387400 () Bool)

(declare-fun e!4421753 () Bool)

(assert (=> b!7387400 (= e!4421753 tp_is_empty!48991)))

(declare-fun b!7387401 () Bool)

(declare-fun tp!2102386 () Bool)

(declare-fun tp!2102385 () Bool)

(assert (=> b!7387401 (= e!4421753 (and tp!2102386 tp!2102385))))

(declare-fun b!7387402 () Bool)

(declare-fun tp!2102384 () Bool)

(assert (=> b!7387402 (= e!4421753 tp!2102384)))

(assert (=> b!7386384 (= tp!2101644 e!4421753)))

(declare-fun b!7387403 () Bool)

(declare-fun tp!2102383 () Bool)

(declare-fun tp!2102387 () Bool)

(assert (=> b!7387403 (= e!4421753 (and tp!2102383 tp!2102387))))

(assert (= (and b!7386384 (is-ElementMatch!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387400))

(assert (= (and b!7386384 (is-Concat!28209 (regOne!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387401))

(assert (= (and b!7386384 (is-Star!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387402))

(assert (= (and b!7386384 (is-Union!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387403))

(declare-fun b!7387404 () Bool)

(declare-fun e!4421754 () Bool)

(assert (=> b!7387404 (= e!4421754 tp_is_empty!48991)))

(declare-fun b!7387405 () Bool)

(declare-fun tp!2102391 () Bool)

(declare-fun tp!2102390 () Bool)

(assert (=> b!7387405 (= e!4421754 (and tp!2102391 tp!2102390))))

(declare-fun b!7387406 () Bool)

(declare-fun tp!2102389 () Bool)

(assert (=> b!7387406 (= e!4421754 tp!2102389)))

(assert (=> b!7386384 (= tp!2101648 e!4421754)))

(declare-fun b!7387407 () Bool)

(declare-fun tp!2102388 () Bool)

(declare-fun tp!2102392 () Bool)

(assert (=> b!7387407 (= e!4421754 (and tp!2102388 tp!2102392))))

(assert (= (and b!7386384 (is-ElementMatch!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387404))

(assert (= (and b!7386384 (is-Concat!28209 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387405))

(assert (= (and b!7386384 (is-Star!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387406))

(assert (= (and b!7386384 (is-Union!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387407))

(declare-fun b!7387408 () Bool)

(declare-fun e!4421755 () Bool)

(assert (=> b!7387408 (= e!4421755 tp_is_empty!48991)))

(declare-fun b!7387409 () Bool)

(declare-fun tp!2102396 () Bool)

(declare-fun tp!2102395 () Bool)

(assert (=> b!7387409 (= e!4421755 (and tp!2102396 tp!2102395))))

(declare-fun b!7387410 () Bool)

(declare-fun tp!2102394 () Bool)

(assert (=> b!7387410 (= e!4421755 tp!2102394)))

(assert (=> b!7386375 (= tp!2101635 e!4421755)))

(declare-fun b!7387411 () Bool)

(declare-fun tp!2102393 () Bool)

(declare-fun tp!2102397 () Bool)

(assert (=> b!7387411 (= e!4421755 (and tp!2102393 tp!2102397))))

(assert (= (and b!7386375 (is-ElementMatch!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387408))

(assert (= (and b!7386375 (is-Concat!28209 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387409))

(assert (= (and b!7386375 (is-Star!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387410))

(assert (= (and b!7386375 (is-Union!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387411))

(declare-fun b!7387412 () Bool)

(declare-fun e!4421756 () Bool)

(assert (=> b!7387412 (= e!4421756 tp_is_empty!48991)))

(declare-fun b!7387413 () Bool)

(declare-fun tp!2102401 () Bool)

(declare-fun tp!2102400 () Bool)

(assert (=> b!7387413 (= e!4421756 (and tp!2102401 tp!2102400))))

(declare-fun b!7387414 () Bool)

(declare-fun tp!2102399 () Bool)

(assert (=> b!7387414 (= e!4421756 tp!2102399)))

(assert (=> b!7386453 (= tp!2101740 e!4421756)))

(declare-fun b!7387415 () Bool)

(declare-fun tp!2102398 () Bool)

(declare-fun tp!2102402 () Bool)

(assert (=> b!7387415 (= e!4421756 (and tp!2102398 tp!2102402))))

(assert (= (and b!7386453 (is-ElementMatch!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387412))

(assert (= (and b!7386453 (is-Concat!28209 (regOne!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387413))

(assert (= (and b!7386453 (is-Star!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387414))

(assert (= (and b!7386453 (is-Union!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387415))

(declare-fun b!7387416 () Bool)

(declare-fun e!4421757 () Bool)

(assert (=> b!7387416 (= e!4421757 tp_is_empty!48991)))

(declare-fun b!7387417 () Bool)

(declare-fun tp!2102406 () Bool)

(declare-fun tp!2102405 () Bool)

(assert (=> b!7387417 (= e!4421757 (and tp!2102406 tp!2102405))))

(declare-fun b!7387418 () Bool)

(declare-fun tp!2102404 () Bool)

(assert (=> b!7387418 (= e!4421757 tp!2102404)))

(assert (=> b!7386453 (= tp!2101739 e!4421757)))

(declare-fun b!7387419 () Bool)

(declare-fun tp!2102403 () Bool)

(declare-fun tp!2102407 () Bool)

(assert (=> b!7387419 (= e!4421757 (and tp!2102403 tp!2102407))))

(assert (= (and b!7386453 (is-ElementMatch!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387416))

(assert (= (and b!7386453 (is-Concat!28209 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387417))

(assert (= (and b!7386453 (is-Star!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387418))

(assert (= (and b!7386453 (is-Union!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387419))

(declare-fun condSetEmpty!55921 () Bool)

(assert (=> setNonEmpty!55914 (= condSetEmpty!55921 (= setRest!55914 (as set.empty (Set Context!16608))))))

(declare-fun setRes!55921 () Bool)

(assert (=> setNonEmpty!55914 (= tp!2101630 setRes!55921)))

(declare-fun setIsEmpty!55921 () Bool)

(assert (=> setIsEmpty!55921 setRes!55921))

(declare-fun tp!2102408 () Bool)

(declare-fun e!4421758 () Bool)

(declare-fun setElem!55921 () Context!16608)

(declare-fun setNonEmpty!55921 () Bool)

(assert (=> setNonEmpty!55921 (= setRes!55921 (and tp!2102408 (inv!91772 setElem!55921) e!4421758))))

(declare-fun setRest!55921 () (Set Context!16608))

(assert (=> setNonEmpty!55921 (= setRest!55914 (set.union (set.insert setElem!55921 (as set.empty (Set Context!16608))) setRest!55921))))

(declare-fun b!7387420 () Bool)

(declare-fun tp!2102409 () Bool)

(assert (=> b!7387420 (= e!4421758 tp!2102409)))

(assert (= (and setNonEmpty!55914 condSetEmpty!55921) setIsEmpty!55921))

(assert (= (and setNonEmpty!55914 (not condSetEmpty!55921)) setNonEmpty!55921))

(assert (= setNonEmpty!55921 b!7387420))

(declare-fun m!8034980 () Bool)

(assert (=> setNonEmpty!55921 m!8034980))

(declare-fun b!7387421 () Bool)

(declare-fun e!4421759 () Bool)

(assert (=> b!7387421 (= e!4421759 tp_is_empty!48991)))

(declare-fun b!7387422 () Bool)

(declare-fun tp!2102413 () Bool)

(declare-fun tp!2102412 () Bool)

(assert (=> b!7387422 (= e!4421759 (and tp!2102413 tp!2102412))))

(declare-fun b!7387423 () Bool)

(declare-fun tp!2102411 () Bool)

(assert (=> b!7387423 (= e!4421759 tp!2102411)))

(assert (=> b!7386455 (= tp!2101737 e!4421759)))

(declare-fun b!7387424 () Bool)

(declare-fun tp!2102410 () Bool)

(declare-fun tp!2102414 () Bool)

(assert (=> b!7387424 (= e!4421759 (and tp!2102410 tp!2102414))))

(assert (= (and b!7386455 (is-ElementMatch!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387421))

(assert (= (and b!7386455 (is-Concat!28209 (regOne!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387422))

(assert (= (and b!7386455 (is-Star!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387423))

(assert (= (and b!7386455 (is-Union!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387424))

(declare-fun b!7387425 () Bool)

(declare-fun e!4421760 () Bool)

(assert (=> b!7387425 (= e!4421760 tp_is_empty!48991)))

(declare-fun b!7387426 () Bool)

(declare-fun tp!2102418 () Bool)

(declare-fun tp!2102417 () Bool)

(assert (=> b!7387426 (= e!4421760 (and tp!2102418 tp!2102417))))

(declare-fun b!7387427 () Bool)

(declare-fun tp!2102416 () Bool)

(assert (=> b!7387427 (= e!4421760 tp!2102416)))

(assert (=> b!7386455 (= tp!2101741 e!4421760)))

(declare-fun b!7387428 () Bool)

(declare-fun tp!2102415 () Bool)

(declare-fun tp!2102419 () Bool)

(assert (=> b!7387428 (= e!4421760 (and tp!2102415 tp!2102419))))

(assert (= (and b!7386455 (is-ElementMatch!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387425))

(assert (= (and b!7386455 (is-Concat!28209 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387426))

(assert (= (and b!7386455 (is-Star!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387427))

(assert (= (and b!7386455 (is-Union!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387428))

(declare-fun b!7387429 () Bool)

(declare-fun e!4421761 () Bool)

(assert (=> b!7387429 (= e!4421761 tp_is_empty!48991)))

(declare-fun b!7387430 () Bool)

(declare-fun tp!2102423 () Bool)

(declare-fun tp!2102422 () Bool)

(assert (=> b!7387430 (= e!4421761 (and tp!2102423 tp!2102422))))

(declare-fun b!7387431 () Bool)

(declare-fun tp!2102421 () Bool)

(assert (=> b!7387431 (= e!4421761 tp!2102421)))

(assert (=> b!7386392 (= tp!2101660 e!4421761)))

(declare-fun b!7387432 () Bool)

(declare-fun tp!2102420 () Bool)

(declare-fun tp!2102424 () Bool)

(assert (=> b!7387432 (= e!4421761 (and tp!2102420 tp!2102424))))

(assert (= (and b!7386392 (is-ElementMatch!19364 (regOne!39240 (h!78216 (exprs!8804 setElem!55901))))) b!7387429))

(assert (= (and b!7386392 (is-Concat!28209 (regOne!39240 (h!78216 (exprs!8804 setElem!55901))))) b!7387430))

(assert (= (and b!7386392 (is-Star!19364 (regOne!39240 (h!78216 (exprs!8804 setElem!55901))))) b!7387431))

(assert (= (and b!7386392 (is-Union!19364 (regOne!39240 (h!78216 (exprs!8804 setElem!55901))))) b!7387432))

(declare-fun b!7387433 () Bool)

(declare-fun e!4421762 () Bool)

(assert (=> b!7387433 (= e!4421762 tp_is_empty!48991)))

(declare-fun b!7387434 () Bool)

(declare-fun tp!2102428 () Bool)

(declare-fun tp!2102427 () Bool)

(assert (=> b!7387434 (= e!4421762 (and tp!2102428 tp!2102427))))

(declare-fun b!7387435 () Bool)

(declare-fun tp!2102426 () Bool)

(assert (=> b!7387435 (= e!4421762 tp!2102426)))

(assert (=> b!7386392 (= tp!2101659 e!4421762)))

(declare-fun b!7387436 () Bool)

(declare-fun tp!2102425 () Bool)

(declare-fun tp!2102429 () Bool)

(assert (=> b!7387436 (= e!4421762 (and tp!2102425 tp!2102429))))

(assert (= (and b!7386392 (is-ElementMatch!19364 (regTwo!39240 (h!78216 (exprs!8804 setElem!55901))))) b!7387433))

(assert (= (and b!7386392 (is-Concat!28209 (regTwo!39240 (h!78216 (exprs!8804 setElem!55901))))) b!7387434))

(assert (= (and b!7386392 (is-Star!19364 (regTwo!39240 (h!78216 (exprs!8804 setElem!55901))))) b!7387435))

(assert (= (and b!7386392 (is-Union!19364 (regTwo!39240 (h!78216 (exprs!8804 setElem!55901))))) b!7387436))

(declare-fun b!7387437 () Bool)

(declare-fun e!4421763 () Bool)

(assert (=> b!7387437 (= e!4421763 tp_is_empty!48991)))

(declare-fun b!7387438 () Bool)

(declare-fun tp!2102433 () Bool)

(declare-fun tp!2102432 () Bool)

(assert (=> b!7387438 (= e!4421763 (and tp!2102433 tp!2102432))))

(declare-fun b!7387439 () Bool)

(declare-fun tp!2102431 () Bool)

(assert (=> b!7387439 (= e!4421763 tp!2102431)))

(assert (=> b!7386385 (= tp!2101649 e!4421763)))

(declare-fun b!7387440 () Bool)

(declare-fun tp!2102430 () Bool)

(declare-fun tp!2102434 () Bool)

(assert (=> b!7387440 (= e!4421763 (and tp!2102430 tp!2102434))))

(assert (= (and b!7386385 (is-ElementMatch!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 c!10532)))))) b!7387437))

(assert (= (and b!7386385 (is-Concat!28209 (h!78216 (t!386443 (t!386443 (exprs!8804 c!10532)))))) b!7387438))

(assert (= (and b!7386385 (is-Star!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 c!10532)))))) b!7387439))

(assert (= (and b!7386385 (is-Union!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 c!10532)))))) b!7387440))

(declare-fun b!7387441 () Bool)

(declare-fun e!4421764 () Bool)

(declare-fun tp!2102435 () Bool)

(declare-fun tp!2102436 () Bool)

(assert (=> b!7387441 (= e!4421764 (and tp!2102435 tp!2102436))))

(assert (=> b!7386385 (= tp!2101650 e!4421764)))

(assert (= (and b!7386385 (is-Cons!71768 (t!386443 (t!386443 (t!386443 (exprs!8804 c!10532)))))) b!7387441))

(declare-fun b!7387442 () Bool)

(declare-fun e!4421765 () Bool)

(assert (=> b!7387442 (= e!4421765 tp_is_empty!48991)))

(declare-fun b!7387443 () Bool)

(declare-fun tp!2102440 () Bool)

(declare-fun tp!2102439 () Bool)

(assert (=> b!7387443 (= e!4421765 (and tp!2102440 tp!2102439))))

(declare-fun b!7387444 () Bool)

(declare-fun tp!2102438 () Bool)

(assert (=> b!7387444 (= e!4421765 tp!2102438)))

(assert (=> b!7386409 (= tp!2101682 e!4421765)))

(declare-fun b!7387445 () Bool)

(declare-fun tp!2102437 () Bool)

(declare-fun tp!2102441 () Bool)

(assert (=> b!7387445 (= e!4421765 (and tp!2102437 tp!2102441))))

(assert (= (and b!7386409 (is-ElementMatch!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387442))

(assert (= (and b!7386409 (is-Concat!28209 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387443))

(assert (= (and b!7386409 (is-Star!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387444))

(assert (= (and b!7386409 (is-Union!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387445))

(declare-fun b!7387446 () Bool)

(declare-fun e!4421766 () Bool)

(assert (=> b!7387446 (= e!4421766 tp_is_empty!48991)))

(declare-fun b!7387447 () Bool)

(declare-fun tp!2102445 () Bool)

(declare-fun tp!2102444 () Bool)

(assert (=> b!7387447 (= e!4421766 (and tp!2102445 tp!2102444))))

(declare-fun b!7387448 () Bool)

(declare-fun tp!2102443 () Bool)

(assert (=> b!7387448 (= e!4421766 tp!2102443)))

(assert (=> b!7386409 (= tp!2101681 e!4421766)))

(declare-fun b!7387449 () Bool)

(declare-fun tp!2102442 () Bool)

(declare-fun tp!2102446 () Bool)

(assert (=> b!7387449 (= e!4421766 (and tp!2102442 tp!2102446))))

(assert (= (and b!7386409 (is-ElementMatch!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387446))

(assert (= (and b!7386409 (is-Concat!28209 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387447))

(assert (= (and b!7386409 (is-Star!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387448))

(assert (= (and b!7386409 (is-Union!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387449))

(declare-fun b!7387450 () Bool)

(declare-fun e!4421767 () Bool)

(assert (=> b!7387450 (= e!4421767 tp_is_empty!48991)))

(declare-fun b!7387451 () Bool)

(declare-fun tp!2102450 () Bool)

(declare-fun tp!2102449 () Bool)

(assert (=> b!7387451 (= e!4421767 (and tp!2102450 tp!2102449))))

(declare-fun b!7387452 () Bool)

(declare-fun tp!2102448 () Bool)

(assert (=> b!7387452 (= e!4421767 tp!2102448)))

(assert (=> b!7386448 (= tp!2101729 e!4421767)))

(declare-fun b!7387453 () Bool)

(declare-fun tp!2102447 () Bool)

(declare-fun tp!2102451 () Bool)

(assert (=> b!7387453 (= e!4421767 (and tp!2102447 tp!2102451))))

(assert (= (and b!7386448 (is-ElementMatch!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387450))

(assert (= (and b!7386448 (is-Concat!28209 (reg!19693 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387451))

(assert (= (and b!7386448 (is-Star!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387452))

(assert (= (and b!7386448 (is-Union!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387453))

(declare-fun b!7387454 () Bool)

(declare-fun e!4421768 () Bool)

(assert (=> b!7387454 (= e!4421768 tp_is_empty!48991)))

(declare-fun b!7387455 () Bool)

(declare-fun tp!2102455 () Bool)

(declare-fun tp!2102454 () Bool)

(assert (=> b!7387455 (= e!4421768 (and tp!2102455 tp!2102454))))

(declare-fun b!7387456 () Bool)

(declare-fun tp!2102453 () Bool)

(assert (=> b!7387456 (= e!4421768 tp!2102453)))

(assert (=> b!7386394 (= tp!2101657 e!4421768)))

(declare-fun b!7387457 () Bool)

(declare-fun tp!2102452 () Bool)

(declare-fun tp!2102456 () Bool)

(assert (=> b!7387457 (= e!4421768 (and tp!2102452 tp!2102456))))

(assert (= (and b!7386394 (is-ElementMatch!19364 (regOne!39241 (h!78216 (exprs!8804 setElem!55901))))) b!7387454))

(assert (= (and b!7386394 (is-Concat!28209 (regOne!39241 (h!78216 (exprs!8804 setElem!55901))))) b!7387455))

(assert (= (and b!7386394 (is-Star!19364 (regOne!39241 (h!78216 (exprs!8804 setElem!55901))))) b!7387456))

(assert (= (and b!7386394 (is-Union!19364 (regOne!39241 (h!78216 (exprs!8804 setElem!55901))))) b!7387457))

(declare-fun b!7387458 () Bool)

(declare-fun e!4421769 () Bool)

(assert (=> b!7387458 (= e!4421769 tp_is_empty!48991)))

(declare-fun b!7387459 () Bool)

(declare-fun tp!2102460 () Bool)

(declare-fun tp!2102459 () Bool)

(assert (=> b!7387459 (= e!4421769 (and tp!2102460 tp!2102459))))

(declare-fun b!7387460 () Bool)

(declare-fun tp!2102458 () Bool)

(assert (=> b!7387460 (= e!4421769 tp!2102458)))

(assert (=> b!7386394 (= tp!2101661 e!4421769)))

(declare-fun b!7387461 () Bool)

(declare-fun tp!2102457 () Bool)

(declare-fun tp!2102461 () Bool)

(assert (=> b!7387461 (= e!4421769 (and tp!2102457 tp!2102461))))

(assert (= (and b!7386394 (is-ElementMatch!19364 (regTwo!39241 (h!78216 (exprs!8804 setElem!55901))))) b!7387458))

(assert (= (and b!7386394 (is-Concat!28209 (regTwo!39241 (h!78216 (exprs!8804 setElem!55901))))) b!7387459))

(assert (= (and b!7386394 (is-Star!19364 (regTwo!39241 (h!78216 (exprs!8804 setElem!55901))))) b!7387460))

(assert (= (and b!7386394 (is-Union!19364 (regTwo!39241 (h!78216 (exprs!8804 setElem!55901))))) b!7387461))

(declare-fun b!7387462 () Bool)

(declare-fun e!4421770 () Bool)

(assert (=> b!7387462 (= e!4421770 tp_is_empty!48991)))

(declare-fun b!7387463 () Bool)

(declare-fun tp!2102465 () Bool)

(declare-fun tp!2102464 () Bool)

(assert (=> b!7387463 (= e!4421770 (and tp!2102465 tp!2102464))))

(declare-fun b!7387464 () Bool)

(declare-fun tp!2102463 () Bool)

(assert (=> b!7387464 (= e!4421770 tp!2102463)))

(assert (=> b!7386439 (= tp!2101721 e!4421770)))

(declare-fun b!7387465 () Bool)

(declare-fun tp!2102462 () Bool)

(declare-fun tp!2102466 () Bool)

(assert (=> b!7387465 (= e!4421770 (and tp!2102462 tp!2102466))))

(assert (= (and b!7386439 (is-ElementMatch!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387462))

(assert (= (and b!7386439 (is-Concat!28209 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387463))

(assert (= (and b!7386439 (is-Star!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387464))

(assert (= (and b!7386439 (is-Union!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387465))

(declare-fun b!7387466 () Bool)

(declare-fun e!4421771 () Bool)

(assert (=> b!7387466 (= e!4421771 tp_is_empty!48991)))

(declare-fun b!7387467 () Bool)

(declare-fun tp!2102470 () Bool)

(declare-fun tp!2102469 () Bool)

(assert (=> b!7387467 (= e!4421771 (and tp!2102470 tp!2102469))))

(declare-fun b!7387468 () Bool)

(declare-fun tp!2102468 () Bool)

(assert (=> b!7387468 (= e!4421771 tp!2102468)))

(assert (=> b!7386439 (= tp!2101720 e!4421771)))

(declare-fun b!7387469 () Bool)

(declare-fun tp!2102467 () Bool)

(declare-fun tp!2102471 () Bool)

(assert (=> b!7387469 (= e!4421771 (and tp!2102467 tp!2102471))))

(assert (= (and b!7386439 (is-ElementMatch!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387466))

(assert (= (and b!7386439 (is-Concat!28209 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387467))

(assert (= (and b!7386439 (is-Star!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387468))

(assert (= (and b!7386439 (is-Union!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387469))

(declare-fun b!7387470 () Bool)

(declare-fun e!4421772 () Bool)

(assert (=> b!7387470 (= e!4421772 tp_is_empty!48991)))

(declare-fun b!7387471 () Bool)

(declare-fun tp!2102475 () Bool)

(declare-fun tp!2102474 () Bool)

(assert (=> b!7387471 (= e!4421772 (and tp!2102475 tp!2102474))))

(declare-fun b!7387472 () Bool)

(declare-fun tp!2102473 () Bool)

(assert (=> b!7387472 (= e!4421772 tp!2102473)))

(assert (=> b!7386411 (= tp!2101679 e!4421772)))

(declare-fun b!7387473 () Bool)

(declare-fun tp!2102472 () Bool)

(declare-fun tp!2102476 () Bool)

(assert (=> b!7387473 (= e!4421772 (and tp!2102472 tp!2102476))))

(assert (= (and b!7386411 (is-ElementMatch!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387470))

(assert (= (and b!7386411 (is-Concat!28209 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387471))

(assert (= (and b!7386411 (is-Star!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387472))

(assert (= (and b!7386411 (is-Union!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387473))

(declare-fun b!7387474 () Bool)

(declare-fun e!4421773 () Bool)

(assert (=> b!7387474 (= e!4421773 tp_is_empty!48991)))

(declare-fun b!7387475 () Bool)

(declare-fun tp!2102480 () Bool)

(declare-fun tp!2102479 () Bool)

(assert (=> b!7387475 (= e!4421773 (and tp!2102480 tp!2102479))))

(declare-fun b!7387476 () Bool)

(declare-fun tp!2102478 () Bool)

(assert (=> b!7387476 (= e!4421773 tp!2102478)))

(assert (=> b!7386411 (= tp!2101683 e!4421773)))

(declare-fun b!7387477 () Bool)

(declare-fun tp!2102477 () Bool)

(declare-fun tp!2102481 () Bool)

(assert (=> b!7387477 (= e!4421773 (and tp!2102477 tp!2102481))))

(assert (= (and b!7386411 (is-ElementMatch!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387474))

(assert (= (and b!7386411 (is-Concat!28209 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387475))

(assert (= (and b!7386411 (is-Star!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387476))

(assert (= (and b!7386411 (is-Union!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387477))

(declare-fun b!7387478 () Bool)

(declare-fun e!4421774 () Bool)

(assert (=> b!7387478 (= e!4421774 tp_is_empty!48991)))

(declare-fun b!7387479 () Bool)

(declare-fun tp!2102485 () Bool)

(declare-fun tp!2102484 () Bool)

(assert (=> b!7387479 (= e!4421774 (and tp!2102485 tp!2102484))))

(declare-fun b!7387480 () Bool)

(declare-fun tp!2102483 () Bool)

(assert (=> b!7387480 (= e!4421774 tp!2102483)))

(assert (=> b!7386456 (= tp!2101742 e!4421774)))

(declare-fun b!7387481 () Bool)

(declare-fun tp!2102482 () Bool)

(declare-fun tp!2102486 () Bool)

(assert (=> b!7387481 (= e!4421774 (and tp!2102482 tp!2102486))))

(assert (= (and b!7386456 (is-ElementMatch!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 setElem!55895)))))) b!7387478))

(assert (= (and b!7386456 (is-Concat!28209 (h!78216 (t!386443 (t!386443 (exprs!8804 setElem!55895)))))) b!7387479))

(assert (= (and b!7386456 (is-Star!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 setElem!55895)))))) b!7387480))

(assert (= (and b!7386456 (is-Union!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 setElem!55895)))))) b!7387481))

(declare-fun b!7387482 () Bool)

(declare-fun e!4421775 () Bool)

(declare-fun tp!2102487 () Bool)

(declare-fun tp!2102488 () Bool)

(assert (=> b!7387482 (= e!4421775 (and tp!2102487 tp!2102488))))

(assert (=> b!7386456 (= tp!2101743 e!4421775)))

(assert (= (and b!7386456 (is-Cons!71768 (t!386443 (t!386443 (t!386443 (exprs!8804 setElem!55895)))))) b!7387482))

(declare-fun b!7387483 () Bool)

(declare-fun e!4421776 () Bool)

(assert (=> b!7387483 (= e!4421776 tp_is_empty!48991)))

(declare-fun b!7387484 () Bool)

(declare-fun tp!2102492 () Bool)

(declare-fun tp!2102491 () Bool)

(assert (=> b!7387484 (= e!4421776 (and tp!2102492 tp!2102491))))

(declare-fun b!7387485 () Bool)

(declare-fun tp!2102490 () Bool)

(assert (=> b!7387485 (= e!4421776 tp!2102490)))

(assert (=> b!7386402 (= tp!2101670 e!4421776)))

(declare-fun b!7387486 () Bool)

(declare-fun tp!2102489 () Bool)

(declare-fun tp!2102493 () Bool)

(assert (=> b!7387486 (= e!4421776 (and tp!2102489 tp!2102493))))

(assert (= (and b!7386402 (is-ElementMatch!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387483))

(assert (= (and b!7386402 (is-Concat!28209 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387484))

(assert (= (and b!7386402 (is-Star!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387485))

(assert (= (and b!7386402 (is-Union!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387486))

(declare-fun b!7387487 () Bool)

(declare-fun e!4421777 () Bool)

(assert (=> b!7387487 (= e!4421777 tp_is_empty!48991)))

(declare-fun b!7387488 () Bool)

(declare-fun tp!2102497 () Bool)

(declare-fun tp!2102496 () Bool)

(assert (=> b!7387488 (= e!4421777 (and tp!2102497 tp!2102496))))

(declare-fun b!7387489 () Bool)

(declare-fun tp!2102495 () Bool)

(assert (=> b!7387489 (= e!4421777 tp!2102495)))

(assert (=> b!7386441 (= tp!2101718 e!4421777)))

(declare-fun b!7387490 () Bool)

(declare-fun tp!2102494 () Bool)

(declare-fun tp!2102498 () Bool)

(assert (=> b!7387490 (= e!4421777 (and tp!2102494 tp!2102498))))

(assert (= (and b!7386441 (is-ElementMatch!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387487))

(assert (= (and b!7386441 (is-Concat!28209 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387488))

(assert (= (and b!7386441 (is-Star!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387489))

(assert (= (and b!7386441 (is-Union!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387490))

(declare-fun b!7387491 () Bool)

(declare-fun e!4421778 () Bool)

(assert (=> b!7387491 (= e!4421778 tp_is_empty!48991)))

(declare-fun b!7387492 () Bool)

(declare-fun tp!2102502 () Bool)

(declare-fun tp!2102501 () Bool)

(assert (=> b!7387492 (= e!4421778 (and tp!2102502 tp!2102501))))

(declare-fun b!7387493 () Bool)

(declare-fun tp!2102500 () Bool)

(assert (=> b!7387493 (= e!4421778 tp!2102500)))

(assert (=> b!7386441 (= tp!2101722 e!4421778)))

(declare-fun b!7387494 () Bool)

(declare-fun tp!2102499 () Bool)

(declare-fun tp!2102503 () Bool)

(assert (=> b!7387494 (= e!4421778 (and tp!2102499 tp!2102503))))

(assert (= (and b!7386441 (is-ElementMatch!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387491))

(assert (= (and b!7386441 (is-Concat!28209 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387492))

(assert (= (and b!7386441 (is-Star!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387493))

(assert (= (and b!7386441 (is-Union!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387494))

(declare-fun b!7387495 () Bool)

(declare-fun e!4421779 () Bool)

(assert (=> b!7387495 (= e!4421779 tp_is_empty!48991)))

(declare-fun b!7387496 () Bool)

(declare-fun tp!2102507 () Bool)

(declare-fun tp!2102506 () Bool)

(assert (=> b!7387496 (= e!4421779 (and tp!2102507 tp!2102506))))

(declare-fun b!7387497 () Bool)

(declare-fun tp!2102505 () Bool)

(assert (=> b!7387497 (= e!4421779 tp!2102505)))

(assert (=> b!7386432 (= tp!2101709 e!4421779)))

(declare-fun b!7387498 () Bool)

(declare-fun tp!2102504 () Bool)

(declare-fun tp!2102508 () Bool)

(assert (=> b!7387498 (= e!4421779 (and tp!2102504 tp!2102508))))

(assert (= (and b!7386432 (is-ElementMatch!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387495))

(assert (= (and b!7386432 (is-Concat!28209 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387496))

(assert (= (and b!7386432 (is-Star!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387497))

(assert (= (and b!7386432 (is-Union!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387498))

(declare-fun b!7387499 () Bool)

(declare-fun e!4421780 () Bool)

(assert (=> b!7387499 (= e!4421780 tp_is_empty!48991)))

(declare-fun b!7387500 () Bool)

(declare-fun tp!2102512 () Bool)

(declare-fun tp!2102511 () Bool)

(assert (=> b!7387500 (= e!4421780 (and tp!2102512 tp!2102511))))

(declare-fun b!7387501 () Bool)

(declare-fun tp!2102510 () Bool)

(assert (=> b!7387501 (= e!4421780 tp!2102510)))

(assert (=> b!7386423 (= tp!2101701 e!4421780)))

(declare-fun b!7387502 () Bool)

(declare-fun tp!2102509 () Bool)

(declare-fun tp!2102513 () Bool)

(assert (=> b!7387502 (= e!4421780 (and tp!2102509 tp!2102513))))

(assert (= (and b!7386423 (is-ElementMatch!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387499))

(assert (= (and b!7386423 (is-Concat!28209 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387500))

(assert (= (and b!7386423 (is-Star!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387501))

(assert (= (and b!7386423 (is-Union!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387502))

(declare-fun b!7387503 () Bool)

(declare-fun e!4421781 () Bool)

(assert (=> b!7387503 (= e!4421781 tp_is_empty!48991)))

(declare-fun b!7387504 () Bool)

(declare-fun tp!2102517 () Bool)

(declare-fun tp!2102516 () Bool)

(assert (=> b!7387504 (= e!4421781 (and tp!2102517 tp!2102516))))

(declare-fun b!7387505 () Bool)

(declare-fun tp!2102515 () Bool)

(assert (=> b!7387505 (= e!4421781 tp!2102515)))

(assert (=> b!7386423 (= tp!2101700 e!4421781)))

(declare-fun b!7387506 () Bool)

(declare-fun tp!2102514 () Bool)

(declare-fun tp!2102518 () Bool)

(assert (=> b!7387506 (= e!4421781 (and tp!2102514 tp!2102518))))

(assert (= (and b!7386423 (is-ElementMatch!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387503))

(assert (= (and b!7386423 (is-Concat!28209 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387504))

(assert (= (and b!7386423 (is-Star!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387505))

(assert (= (and b!7386423 (is-Union!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387506))

(declare-fun b!7387507 () Bool)

(declare-fun e!4421782 () Bool)

(assert (=> b!7387507 (= e!4421782 tp_is_empty!48991)))

(declare-fun b!7387508 () Bool)

(declare-fun tp!2102522 () Bool)

(declare-fun tp!2102521 () Bool)

(assert (=> b!7387508 (= e!4421782 (and tp!2102522 tp!2102521))))

(declare-fun b!7387509 () Bool)

(declare-fun tp!2102520 () Bool)

(assert (=> b!7387509 (= e!4421782 tp!2102520)))

(assert (=> b!7386419 (= tp!2101692 e!4421782)))

(declare-fun b!7387510 () Bool)

(declare-fun tp!2102519 () Bool)

(declare-fun tp!2102523 () Bool)

(assert (=> b!7387510 (= e!4421782 (and tp!2102519 tp!2102523))))

(assert (= (and b!7386419 (is-ElementMatch!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387507))

(assert (= (and b!7386419 (is-Concat!28209 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387508))

(assert (= (and b!7386419 (is-Star!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387509))

(assert (= (and b!7386419 (is-Union!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387510))

(declare-fun b!7387511 () Bool)

(declare-fun e!4421783 () Bool)

(assert (=> b!7387511 (= e!4421783 tp_is_empty!48991)))

(declare-fun b!7387512 () Bool)

(declare-fun tp!2102527 () Bool)

(declare-fun tp!2102526 () Bool)

(assert (=> b!7387512 (= e!4421783 (and tp!2102527 tp!2102526))))

(declare-fun b!7387513 () Bool)

(declare-fun tp!2102525 () Bool)

(assert (=> b!7387513 (= e!4421783 tp!2102525)))

(assert (=> b!7386395 (= tp!2101662 e!4421783)))

(declare-fun b!7387514 () Bool)

(declare-fun tp!2102524 () Bool)

(declare-fun tp!2102528 () Bool)

(assert (=> b!7387514 (= e!4421783 (and tp!2102524 tp!2102528))))

(assert (= (and b!7386395 (is-ElementMatch!19364 (h!78216 (t!386443 (exprs!8804 setElem!55901))))) b!7387511))

(assert (= (and b!7386395 (is-Concat!28209 (h!78216 (t!386443 (exprs!8804 setElem!55901))))) b!7387512))

(assert (= (and b!7386395 (is-Star!19364 (h!78216 (t!386443 (exprs!8804 setElem!55901))))) b!7387513))

(assert (= (and b!7386395 (is-Union!19364 (h!78216 (t!386443 (exprs!8804 setElem!55901))))) b!7387514))

(declare-fun b!7387515 () Bool)

(declare-fun e!4421784 () Bool)

(declare-fun tp!2102529 () Bool)

(declare-fun tp!2102530 () Bool)

(assert (=> b!7387515 (= e!4421784 (and tp!2102529 tp!2102530))))

(assert (=> b!7386395 (= tp!2101663 e!4421784)))

(assert (= (and b!7386395 (is-Cons!71768 (t!386443 (t!386443 (exprs!8804 setElem!55901))))) b!7387515))

(declare-fun b!7387516 () Bool)

(declare-fun e!4421785 () Bool)

(assert (=> b!7387516 (= e!4421785 tp_is_empty!48991)))

(declare-fun b!7387517 () Bool)

(declare-fun tp!2102534 () Bool)

(declare-fun tp!2102533 () Bool)

(assert (=> b!7387517 (= e!4421785 (and tp!2102534 tp!2102533))))

(declare-fun b!7387518 () Bool)

(declare-fun tp!2102532 () Bool)

(assert (=> b!7387518 (= e!4421785 tp!2102532)))

(assert (=> b!7386379 (= tp!2101640 e!4421785)))

(declare-fun b!7387519 () Bool)

(declare-fun tp!2102531 () Bool)

(declare-fun tp!2102535 () Bool)

(assert (=> b!7387519 (= e!4421785 (and tp!2102531 tp!2102535))))

(assert (= (and b!7386379 (is-ElementMatch!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387516))

(assert (= (and b!7386379 (is-Concat!28209 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387517))

(assert (= (and b!7386379 (is-Star!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387518))

(assert (= (and b!7386379 (is-Union!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387519))

(declare-fun b!7387520 () Bool)

(declare-fun e!4421786 () Bool)

(assert (=> b!7387520 (= e!4421786 tp_is_empty!48991)))

(declare-fun b!7387521 () Bool)

(declare-fun tp!2102539 () Bool)

(declare-fun tp!2102538 () Bool)

(assert (=> b!7387521 (= e!4421786 (and tp!2102539 tp!2102538))))

(declare-fun b!7387522 () Bool)

(declare-fun tp!2102537 () Bool)

(assert (=> b!7387522 (= e!4421786 tp!2102537)))

(assert (=> b!7386425 (= tp!2101698 e!4421786)))

(declare-fun b!7387523 () Bool)

(declare-fun tp!2102536 () Bool)

(declare-fun tp!2102540 () Bool)

(assert (=> b!7387523 (= e!4421786 (and tp!2102536 tp!2102540))))

(assert (= (and b!7386425 (is-ElementMatch!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387520))

(assert (= (and b!7386425 (is-Concat!28209 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387521))

(assert (= (and b!7386425 (is-Star!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387522))

(assert (= (and b!7386425 (is-Union!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387523))

(declare-fun b!7387524 () Bool)

(declare-fun e!4421787 () Bool)

(assert (=> b!7387524 (= e!4421787 tp_is_empty!48991)))

(declare-fun b!7387525 () Bool)

(declare-fun tp!2102544 () Bool)

(declare-fun tp!2102543 () Bool)

(assert (=> b!7387525 (= e!4421787 (and tp!2102544 tp!2102543))))

(declare-fun b!7387526 () Bool)

(declare-fun tp!2102542 () Bool)

(assert (=> b!7387526 (= e!4421787 tp!2102542)))

(assert (=> b!7386425 (= tp!2101702 e!4421787)))

(declare-fun b!7387527 () Bool)

(declare-fun tp!2102541 () Bool)

(declare-fun tp!2102545 () Bool)

(assert (=> b!7387527 (= e!4421787 (and tp!2102541 tp!2102545))))

(assert (= (and b!7386425 (is-ElementMatch!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387524))

(assert (= (and b!7386425 (is-Concat!28209 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387525))

(assert (= (and b!7386425 (is-Star!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387526))

(assert (= (and b!7386425 (is-Union!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387527))

(declare-fun b!7387528 () Bool)

(declare-fun e!4421788 () Bool)

(assert (=> b!7387528 (= e!4421788 tp_is_empty!48991)))

(declare-fun b!7387529 () Bool)

(declare-fun tp!2102549 () Bool)

(declare-fun tp!2102548 () Bool)

(assert (=> b!7387529 (= e!4421788 (and tp!2102549 tp!2102548))))

(declare-fun b!7387530 () Bool)

(declare-fun tp!2102547 () Bool)

(assert (=> b!7387530 (= e!4421788 tp!2102547)))

(assert (=> b!7386412 (= tp!2101684 e!4421788)))

(declare-fun b!7387531 () Bool)

(declare-fun tp!2102546 () Bool)

(declare-fun tp!2102550 () Bool)

(assert (=> b!7387531 (= e!4421788 (and tp!2102546 tp!2102550))))

(assert (= (and b!7386412 (is-ElementMatch!19364 (h!78216 (exprs!8804 setElem!55906)))) b!7387528))

(assert (= (and b!7386412 (is-Concat!28209 (h!78216 (exprs!8804 setElem!55906)))) b!7387529))

(assert (= (and b!7386412 (is-Star!19364 (h!78216 (exprs!8804 setElem!55906)))) b!7387530))

(assert (= (and b!7386412 (is-Union!19364 (h!78216 (exprs!8804 setElem!55906)))) b!7387531))

(declare-fun b!7387532 () Bool)

(declare-fun e!4421789 () Bool)

(declare-fun tp!2102551 () Bool)

(declare-fun tp!2102552 () Bool)

(assert (=> b!7387532 (= e!4421789 (and tp!2102551 tp!2102552))))

(assert (=> b!7386412 (= tp!2101685 e!4421789)))

(assert (= (and b!7386412 (is-Cons!71768 (t!386443 (exprs!8804 setElem!55906)))) b!7387532))

(declare-fun b!7387533 () Bool)

(declare-fun e!4421790 () Bool)

(declare-fun tp!2102553 () Bool)

(declare-fun tp!2102554 () Bool)

(assert (=> b!7387533 (= e!4421790 (and tp!2102553 tp!2102554))))

(assert (=> b!7386270 (= tp!2101633 e!4421790)))

(assert (= (and b!7386270 (is-Cons!71768 (exprs!8804 setElem!55915))) b!7387533))

(declare-fun b!7387534 () Bool)

(declare-fun e!4421791 () Bool)

(assert (=> b!7387534 (= e!4421791 tp_is_empty!48991)))

(declare-fun b!7387535 () Bool)

(declare-fun tp!2102558 () Bool)

(declare-fun tp!2102557 () Bool)

(assert (=> b!7387535 (= e!4421791 (and tp!2102558 tp!2102557))))

(declare-fun b!7387536 () Bool)

(declare-fun tp!2102556 () Bool)

(assert (=> b!7387536 (= e!4421791 tp!2102556)))

(assert (=> b!7386387 (= tp!2101654 e!4421791)))

(declare-fun b!7387537 () Bool)

(declare-fun tp!2102555 () Bool)

(declare-fun tp!2102559 () Bool)

(assert (=> b!7387537 (= e!4421791 (and tp!2102555 tp!2102559))))

(assert (= (and b!7386387 (is-ElementMatch!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387534))

(assert (= (and b!7386387 (is-Concat!28209 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387535))

(assert (= (and b!7386387 (is-Star!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387536))

(assert (= (and b!7386387 (is-Union!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387537))

(declare-fun b!7387538 () Bool)

(declare-fun e!4421792 () Bool)

(assert (=> b!7387538 (= e!4421792 tp_is_empty!48991)))

(declare-fun b!7387539 () Bool)

(declare-fun tp!2102563 () Bool)

(declare-fun tp!2102562 () Bool)

(assert (=> b!7387539 (= e!4421792 (and tp!2102563 tp!2102562))))

(declare-fun b!7387540 () Bool)

(declare-fun tp!2102561 () Bool)

(assert (=> b!7387540 (= e!4421792 tp!2102561)))

(assert (=> b!7386387 (= tp!2101653 e!4421792)))

(declare-fun b!7387541 () Bool)

(declare-fun tp!2102560 () Bool)

(declare-fun tp!2102564 () Bool)

(assert (=> b!7387541 (= e!4421792 (and tp!2102560 tp!2102564))))

(assert (= (and b!7386387 (is-ElementMatch!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387538))

(assert (= (and b!7386387 (is-Concat!28209 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387539))

(assert (= (and b!7386387 (is-Star!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387540))

(assert (= (and b!7386387 (is-Union!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387541))

(declare-fun b!7387542 () Bool)

(declare-fun e!4421793 () Bool)

(assert (=> b!7387542 (= e!4421793 tp_is_empty!48991)))

(declare-fun b!7387543 () Bool)

(declare-fun tp!2102568 () Bool)

(declare-fun tp!2102567 () Bool)

(assert (=> b!7387543 (= e!4421793 (and tp!2102568 tp!2102567))))

(declare-fun b!7387544 () Bool)

(declare-fun tp!2102566 () Bool)

(assert (=> b!7387544 (= e!4421793 tp!2102566)))

(assert (=> b!7386389 (= tp!2101651 e!4421793)))

(declare-fun b!7387545 () Bool)

(declare-fun tp!2102565 () Bool)

(declare-fun tp!2102569 () Bool)

(assert (=> b!7387545 (= e!4421793 (and tp!2102565 tp!2102569))))

(assert (= (and b!7386389 (is-ElementMatch!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387542))

(assert (= (and b!7386389 (is-Concat!28209 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387543))

(assert (= (and b!7386389 (is-Star!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387544))

(assert (= (and b!7386389 (is-Union!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387545))

(declare-fun b!7387546 () Bool)

(declare-fun e!4421794 () Bool)

(assert (=> b!7387546 (= e!4421794 tp_is_empty!48991)))

(declare-fun b!7387547 () Bool)

(declare-fun tp!2102573 () Bool)

(declare-fun tp!2102572 () Bool)

(assert (=> b!7387547 (= e!4421794 (and tp!2102573 tp!2102572))))

(declare-fun b!7387548 () Bool)

(declare-fun tp!2102571 () Bool)

(assert (=> b!7387548 (= e!4421794 tp!2102571)))

(assert (=> b!7386389 (= tp!2101655 e!4421794)))

(declare-fun b!7387549 () Bool)

(declare-fun tp!2102570 () Bool)

(declare-fun tp!2102574 () Bool)

(assert (=> b!7387549 (= e!4421794 (and tp!2102570 tp!2102574))))

(assert (= (and b!7386389 (is-ElementMatch!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387546))

(assert (= (and b!7386389 (is-Concat!28209 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387547))

(assert (= (and b!7386389 (is-Star!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387548))

(assert (= (and b!7386389 (is-Union!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 empty!3451)))))) b!7387549))

(declare-fun b!7387550 () Bool)

(declare-fun e!4421795 () Bool)

(assert (=> b!7387550 (= e!4421795 tp_is_empty!48991)))

(declare-fun b!7387551 () Bool)

(declare-fun tp!2102578 () Bool)

(declare-fun tp!2102577 () Bool)

(assert (=> b!7387551 (= e!4421795 (and tp!2102578 tp!2102577))))

(declare-fun b!7387552 () Bool)

(declare-fun tp!2102576 () Bool)

(assert (=> b!7387552 (= e!4421795 tp!2102576)))

(assert (=> b!7386443 (= tp!2101726 e!4421795)))

(declare-fun b!7387553 () Bool)

(declare-fun tp!2102575 () Bool)

(declare-fun tp!2102579 () Bool)

(assert (=> b!7387553 (= e!4421795 (and tp!2102575 tp!2102579))))

(assert (= (and b!7386443 (is-ElementMatch!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387550))

(assert (= (and b!7386443 (is-Concat!28209 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387551))

(assert (= (and b!7386443 (is-Star!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387552))

(assert (= (and b!7386443 (is-Union!19364 (regOne!39240 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387553))

(declare-fun b!7387554 () Bool)

(declare-fun e!4421796 () Bool)

(assert (=> b!7387554 (= e!4421796 tp_is_empty!48991)))

(declare-fun b!7387555 () Bool)

(declare-fun tp!2102583 () Bool)

(declare-fun tp!2102582 () Bool)

(assert (=> b!7387555 (= e!4421796 (and tp!2102583 tp!2102582))))

(declare-fun b!7387556 () Bool)

(declare-fun tp!2102581 () Bool)

(assert (=> b!7387556 (= e!4421796 tp!2102581)))

(assert (=> b!7386443 (= tp!2101725 e!4421796)))

(declare-fun b!7387557 () Bool)

(declare-fun tp!2102580 () Bool)

(declare-fun tp!2102584 () Bool)

(assert (=> b!7387557 (= e!4421796 (and tp!2102580 tp!2102584))))

(assert (= (and b!7386443 (is-ElementMatch!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387554))

(assert (= (and b!7386443 (is-Concat!28209 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387555))

(assert (= (and b!7386443 (is-Star!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387556))

(assert (= (and b!7386443 (is-Union!19364 (regTwo!39240 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387557))

(declare-fun b!7387558 () Bool)

(declare-fun e!4421797 () Bool)

(assert (=> b!7387558 (= e!4421797 tp_is_empty!48991)))

(declare-fun b!7387559 () Bool)

(declare-fun tp!2102588 () Bool)

(declare-fun tp!2102587 () Bool)

(assert (=> b!7387559 (= e!4421797 (and tp!2102588 tp!2102587))))

(declare-fun b!7387560 () Bool)

(declare-fun tp!2102586 () Bool)

(assert (=> b!7387560 (= e!4421797 tp!2102586)))

(assert (=> b!7386406 (= tp!2101675 e!4421797)))

(declare-fun b!7387561 () Bool)

(declare-fun tp!2102585 () Bool)

(declare-fun tp!2102589 () Bool)

(assert (=> b!7387561 (= e!4421797 (and tp!2102585 tp!2102589))))

(assert (= (and b!7386406 (is-ElementMatch!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387558))

(assert (= (and b!7386406 (is-Concat!28209 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387559))

(assert (= (and b!7386406 (is-Star!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387560))

(assert (= (and b!7386406 (is-Union!19364 (reg!19693 (regOne!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387561))

(declare-fun b!7387562 () Bool)

(declare-fun e!4421798 () Bool)

(assert (=> b!7387562 (= e!4421798 tp_is_empty!48991)))

(declare-fun b!7387563 () Bool)

(declare-fun tp!2102593 () Bool)

(declare-fun tp!2102592 () Bool)

(assert (=> b!7387563 (= e!4421798 (and tp!2102593 tp!2102592))))

(declare-fun b!7387564 () Bool)

(declare-fun tp!2102591 () Bool)

(assert (=> b!7387564 (= e!4421798 tp!2102591)))

(assert (=> b!7386397 (= tp!2101667 e!4421798)))

(declare-fun b!7387565 () Bool)

(declare-fun tp!2102590 () Bool)

(declare-fun tp!2102594 () Bool)

(assert (=> b!7387565 (= e!4421798 (and tp!2102590 tp!2102594))))

(assert (= (and b!7386397 (is-ElementMatch!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387562))

(assert (= (and b!7386397 (is-Concat!28209 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387563))

(assert (= (and b!7386397 (is-Star!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387564))

(assert (= (and b!7386397 (is-Union!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387565))

(declare-fun b!7387566 () Bool)

(declare-fun e!4421799 () Bool)

(assert (=> b!7387566 (= e!4421799 tp_is_empty!48991)))

(declare-fun b!7387567 () Bool)

(declare-fun tp!2102598 () Bool)

(declare-fun tp!2102597 () Bool)

(assert (=> b!7387567 (= e!4421799 (and tp!2102598 tp!2102597))))

(declare-fun b!7387568 () Bool)

(declare-fun tp!2102596 () Bool)

(assert (=> b!7387568 (= e!4421799 tp!2102596)))

(assert (=> b!7386397 (= tp!2101666 e!4421799)))

(declare-fun b!7387569 () Bool)

(declare-fun tp!2102595 () Bool)

(declare-fun tp!2102599 () Bool)

(assert (=> b!7387569 (= e!4421799 (and tp!2102595 tp!2102599))))

(assert (= (and b!7386397 (is-ElementMatch!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387566))

(assert (= (and b!7386397 (is-Concat!28209 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387567))

(assert (= (and b!7386397 (is-Star!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387568))

(assert (= (and b!7386397 (is-Union!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387569))

(declare-fun b!7387570 () Bool)

(declare-fun e!4421800 () Bool)

(assert (=> b!7387570 (= e!4421800 tp_is_empty!48991)))

(declare-fun b!7387571 () Bool)

(declare-fun tp!2102603 () Bool)

(declare-fun tp!2102602 () Bool)

(assert (=> b!7387571 (= e!4421800 (and tp!2102603 tp!2102602))))

(declare-fun b!7387572 () Bool)

(declare-fun tp!2102601 () Bool)

(assert (=> b!7387572 (= e!4421800 tp!2102601)))

(assert (=> b!7386445 (= tp!2101723 e!4421800)))

(declare-fun b!7387573 () Bool)

(declare-fun tp!2102600 () Bool)

(declare-fun tp!2102604 () Bool)

(assert (=> b!7387573 (= e!4421800 (and tp!2102600 tp!2102604))))

(assert (= (and b!7386445 (is-ElementMatch!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387570))

(assert (= (and b!7386445 (is-Concat!28209 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387571))

(assert (= (and b!7386445 (is-Star!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387572))

(assert (= (and b!7386445 (is-Union!19364 (regOne!39241 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387573))

(declare-fun b!7387574 () Bool)

(declare-fun e!4421801 () Bool)

(assert (=> b!7387574 (= e!4421801 tp_is_empty!48991)))

(declare-fun b!7387575 () Bool)

(declare-fun tp!2102608 () Bool)

(declare-fun tp!2102607 () Bool)

(assert (=> b!7387575 (= e!4421801 (and tp!2102608 tp!2102607))))

(declare-fun b!7387576 () Bool)

(declare-fun tp!2102606 () Bool)

(assert (=> b!7387576 (= e!4421801 tp!2102606)))

(assert (=> b!7386445 (= tp!2101727 e!4421801)))

(declare-fun b!7387577 () Bool)

(declare-fun tp!2102605 () Bool)

(declare-fun tp!2102609 () Bool)

(assert (=> b!7387577 (= e!4421801 (and tp!2102605 tp!2102609))))

(assert (= (and b!7386445 (is-ElementMatch!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387574))

(assert (= (and b!7386445 (is-Concat!28209 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387575))

(assert (= (and b!7386445 (is-Star!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387576))

(assert (= (and b!7386445 (is-Union!19364 (regTwo!39241 (reg!19693 (h!78216 (exprs!8804 c!10532)))))) b!7387577))

(declare-fun b!7387578 () Bool)

(declare-fun e!4421802 () Bool)

(assert (=> b!7387578 (= e!4421802 tp_is_empty!48991)))

(declare-fun b!7387579 () Bool)

(declare-fun tp!2102613 () Bool)

(declare-fun tp!2102612 () Bool)

(assert (=> b!7387579 (= e!4421802 (and tp!2102613 tp!2102612))))

(declare-fun b!7387580 () Bool)

(declare-fun tp!2102611 () Bool)

(assert (=> b!7387580 (= e!4421802 tp!2102611)))

(assert (=> b!7386436 (= tp!2101714 e!4421802)))

(declare-fun b!7387581 () Bool)

(declare-fun tp!2102610 () Bool)

(declare-fun tp!2102614 () Bool)

(assert (=> b!7387581 (= e!4421802 (and tp!2102610 tp!2102614))))

(assert (= (and b!7386436 (is-ElementMatch!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387578))

(assert (= (and b!7386436 (is-Concat!28209 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387579))

(assert (= (and b!7386436 (is-Star!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387580))

(assert (= (and b!7386436 (is-Union!19364 (reg!19693 (regOne!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387581))

(declare-fun b!7387582 () Bool)

(declare-fun e!4421803 () Bool)

(assert (=> b!7387582 (= e!4421803 tp_is_empty!48991)))

(declare-fun b!7387583 () Bool)

(declare-fun tp!2102618 () Bool)

(declare-fun tp!2102617 () Bool)

(assert (=> b!7387583 (= e!4421803 (and tp!2102618 tp!2102617))))

(declare-fun b!7387584 () Bool)

(declare-fun tp!2102616 () Bool)

(assert (=> b!7387584 (= e!4421803 tp!2102616)))

(assert (=> b!7386427 (= tp!2101706 e!4421803)))

(declare-fun b!7387585 () Bool)

(declare-fun tp!2102615 () Bool)

(declare-fun tp!2102619 () Bool)

(assert (=> b!7387585 (= e!4421803 (and tp!2102615 tp!2102619))))

(assert (= (and b!7386427 (is-ElementMatch!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387582))

(assert (= (and b!7386427 (is-Concat!28209 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387583))

(assert (= (and b!7386427 (is-Star!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387584))

(assert (= (and b!7386427 (is-Union!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387585))

(declare-fun b!7387586 () Bool)

(declare-fun e!4421804 () Bool)

(assert (=> b!7387586 (= e!4421804 tp_is_empty!48991)))

(declare-fun b!7387587 () Bool)

(declare-fun tp!2102623 () Bool)

(declare-fun tp!2102622 () Bool)

(assert (=> b!7387587 (= e!4421804 (and tp!2102623 tp!2102622))))

(declare-fun b!7387588 () Bool)

(declare-fun tp!2102621 () Bool)

(assert (=> b!7387588 (= e!4421804 tp!2102621)))

(assert (=> b!7386427 (= tp!2101705 e!4421804)))

(declare-fun b!7387589 () Bool)

(declare-fun tp!2102620 () Bool)

(declare-fun tp!2102624 () Bool)

(assert (=> b!7387589 (= e!4421804 (and tp!2102620 tp!2102624))))

(assert (= (and b!7386427 (is-ElementMatch!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387586))

(assert (= (and b!7386427 (is-Concat!28209 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387587))

(assert (= (and b!7386427 (is-Star!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387588))

(assert (= (and b!7386427 (is-Union!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387589))

(declare-fun condSetEmpty!55922 () Bool)

(assert (=> setNonEmpty!55916 (= condSetEmpty!55922 (= setRest!55916 (as set.empty (Set Context!16608))))))

(declare-fun setRes!55922 () Bool)

(assert (=> setNonEmpty!55916 (= tp!2101696 setRes!55922)))

(declare-fun setIsEmpty!55922 () Bool)

(assert (=> setIsEmpty!55922 setRes!55922))

(declare-fun e!4421805 () Bool)

(declare-fun tp!2102625 () Bool)

(declare-fun setElem!55922 () Context!16608)

(declare-fun setNonEmpty!55922 () Bool)

(assert (=> setNonEmpty!55922 (= setRes!55922 (and tp!2102625 (inv!91772 setElem!55922) e!4421805))))

(declare-fun setRest!55922 () (Set Context!16608))

(assert (=> setNonEmpty!55922 (= setRest!55916 (set.union (set.insert setElem!55922 (as set.empty (Set Context!16608))) setRest!55922))))

(declare-fun b!7387590 () Bool)

(declare-fun tp!2102626 () Bool)

(assert (=> b!7387590 (= e!4421805 tp!2102626)))

(assert (= (and setNonEmpty!55916 condSetEmpty!55922) setIsEmpty!55922))

(assert (= (and setNonEmpty!55916 (not condSetEmpty!55922)) setNonEmpty!55922))

(assert (= setNonEmpty!55922 b!7387590))

(declare-fun m!8034982 () Bool)

(assert (=> setNonEmpty!55922 m!8034982))

(declare-fun b!7387591 () Bool)

(declare-fun e!4421806 () Bool)

(assert (=> b!7387591 (= e!4421806 tp_is_empty!48991)))

(declare-fun b!7387592 () Bool)

(declare-fun tp!2102630 () Bool)

(declare-fun tp!2102629 () Bool)

(assert (=> b!7387592 (= e!4421806 (and tp!2102630 tp!2102629))))

(declare-fun b!7387593 () Bool)

(declare-fun tp!2102628 () Bool)

(assert (=> b!7387593 (= e!4421806 tp!2102628)))

(assert (=> b!7386414 (= tp!2101689 e!4421806)))

(declare-fun b!7387594 () Bool)

(declare-fun tp!2102627 () Bool)

(declare-fun tp!2102631 () Bool)

(assert (=> b!7387594 (= e!4421806 (and tp!2102627 tp!2102631))))

(assert (= (and b!7386414 (is-ElementMatch!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387591))

(assert (= (and b!7386414 (is-Concat!28209 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387592))

(assert (= (and b!7386414 (is-Star!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387593))

(assert (= (and b!7386414 (is-Union!19364 (regOne!39240 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387594))

(declare-fun b!7387595 () Bool)

(declare-fun e!4421807 () Bool)

(assert (=> b!7387595 (= e!4421807 tp_is_empty!48991)))

(declare-fun b!7387596 () Bool)

(declare-fun tp!2102635 () Bool)

(declare-fun tp!2102634 () Bool)

(assert (=> b!7387596 (= e!4421807 (and tp!2102635 tp!2102634))))

(declare-fun b!7387597 () Bool)

(declare-fun tp!2102633 () Bool)

(assert (=> b!7387597 (= e!4421807 tp!2102633)))

(assert (=> b!7386414 (= tp!2101688 e!4421807)))

(declare-fun b!7387598 () Bool)

(declare-fun tp!2102632 () Bool)

(declare-fun tp!2102636 () Bool)

(assert (=> b!7387598 (= e!4421807 (and tp!2102632 tp!2102636))))

(assert (= (and b!7386414 (is-ElementMatch!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387595))

(assert (= (and b!7386414 (is-Concat!28209 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387596))

(assert (= (and b!7386414 (is-Star!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387597))

(assert (= (and b!7386414 (is-Union!19364 (regTwo!39240 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387598))

(declare-fun b!7387599 () Bool)

(declare-fun e!4421808 () Bool)

(assert (=> b!7387599 (= e!4421808 tp_is_empty!48991)))

(declare-fun b!7387600 () Bool)

(declare-fun tp!2102640 () Bool)

(declare-fun tp!2102639 () Bool)

(assert (=> b!7387600 (= e!4421808 (and tp!2102640 tp!2102639))))

(declare-fun b!7387601 () Bool)

(declare-fun tp!2102638 () Bool)

(assert (=> b!7387601 (= e!4421808 tp!2102638)))

(assert (=> b!7386399 (= tp!2101664 e!4421808)))

(declare-fun b!7387602 () Bool)

(declare-fun tp!2102637 () Bool)

(declare-fun tp!2102641 () Bool)

(assert (=> b!7387602 (= e!4421808 (and tp!2102637 tp!2102641))))

(assert (= (and b!7386399 (is-ElementMatch!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387599))

(assert (= (and b!7386399 (is-Concat!28209 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387600))

(assert (= (and b!7386399 (is-Star!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387601))

(assert (= (and b!7386399 (is-Union!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387602))

(declare-fun b!7387603 () Bool)

(declare-fun e!4421809 () Bool)

(assert (=> b!7387603 (= e!4421809 tp_is_empty!48991)))

(declare-fun b!7387604 () Bool)

(declare-fun tp!2102645 () Bool)

(declare-fun tp!2102644 () Bool)

(assert (=> b!7387604 (= e!4421809 (and tp!2102645 tp!2102644))))

(declare-fun b!7387605 () Bool)

(declare-fun tp!2102643 () Bool)

(assert (=> b!7387605 (= e!4421809 tp!2102643)))

(assert (=> b!7386399 (= tp!2101668 e!4421809)))

(declare-fun b!7387606 () Bool)

(declare-fun tp!2102642 () Bool)

(declare-fun tp!2102646 () Bool)

(assert (=> b!7387606 (= e!4421809 (and tp!2102642 tp!2102646))))

(assert (= (and b!7386399 (is-ElementMatch!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387603))

(assert (= (and b!7386399 (is-Concat!28209 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387604))

(assert (= (and b!7386399 (is-Star!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387605))

(assert (= (and b!7386399 (is-Union!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387606))

(declare-fun b!7387607 () Bool)

(declare-fun e!4421810 () Bool)

(assert (=> b!7387607 (= e!4421810 tp_is_empty!48991)))

(declare-fun b!7387608 () Bool)

(declare-fun tp!2102650 () Bool)

(declare-fun tp!2102649 () Bool)

(assert (=> b!7387608 (= e!4421810 (and tp!2102650 tp!2102649))))

(declare-fun b!7387609 () Bool)

(declare-fun tp!2102648 () Bool)

(assert (=> b!7387609 (= e!4421810 tp!2102648)))

(assert (=> b!7386383 (= tp!2101645 e!4421810)))

(declare-fun b!7387610 () Bool)

(declare-fun tp!2102647 () Bool)

(declare-fun tp!2102651 () Bool)

(assert (=> b!7387610 (= e!4421810 (and tp!2102647 tp!2102651))))

(assert (= (and b!7386383 (is-ElementMatch!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387607))

(assert (= (and b!7386383 (is-Concat!28209 (reg!19693 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387608))

(assert (= (and b!7386383 (is-Star!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387609))

(assert (= (and b!7386383 (is-Union!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 c!10532)))))) b!7387610))

(declare-fun b!7387611 () Bool)

(declare-fun e!4421811 () Bool)

(assert (=> b!7387611 (= e!4421811 tp_is_empty!48991)))

(declare-fun b!7387612 () Bool)

(declare-fun tp!2102655 () Bool)

(declare-fun tp!2102654 () Bool)

(assert (=> b!7387612 (= e!4421811 (and tp!2102655 tp!2102654))))

(declare-fun b!7387613 () Bool)

(declare-fun tp!2102653 () Bool)

(assert (=> b!7387613 (= e!4421811 tp!2102653)))

(assert (=> b!7386429 (= tp!2101703 e!4421811)))

(declare-fun b!7387614 () Bool)

(declare-fun tp!2102652 () Bool)

(declare-fun tp!2102656 () Bool)

(assert (=> b!7387614 (= e!4421811 (and tp!2102652 tp!2102656))))

(assert (= (and b!7386429 (is-ElementMatch!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387611))

(assert (= (and b!7386429 (is-Concat!28209 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387612))

(assert (= (and b!7386429 (is-Star!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387613))

(assert (= (and b!7386429 (is-Union!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387614))

(declare-fun b!7387615 () Bool)

(declare-fun e!4421812 () Bool)

(assert (=> b!7387615 (= e!4421812 tp_is_empty!48991)))

(declare-fun b!7387616 () Bool)

(declare-fun tp!2102660 () Bool)

(declare-fun tp!2102659 () Bool)

(assert (=> b!7387616 (= e!4421812 (and tp!2102660 tp!2102659))))

(declare-fun b!7387617 () Bool)

(declare-fun tp!2102658 () Bool)

(assert (=> b!7387617 (= e!4421812 tp!2102658)))

(assert (=> b!7386429 (= tp!2101707 e!4421812)))

(declare-fun b!7387618 () Bool)

(declare-fun tp!2102657 () Bool)

(declare-fun tp!2102661 () Bool)

(assert (=> b!7387618 (= e!4421812 (and tp!2102657 tp!2102661))))

(assert (= (and b!7386429 (is-ElementMatch!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387615))

(assert (= (and b!7386429 (is-Concat!28209 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387616))

(assert (= (and b!7386429 (is-Star!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387617))

(assert (= (and b!7386429 (is-Union!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387618))

(declare-fun b!7387619 () Bool)

(declare-fun e!4421813 () Bool)

(assert (=> b!7387619 (= e!4421813 tp_is_empty!48991)))

(declare-fun b!7387620 () Bool)

(declare-fun tp!2102665 () Bool)

(declare-fun tp!2102664 () Bool)

(assert (=> b!7387620 (= e!4421813 (and tp!2102665 tp!2102664))))

(declare-fun b!7387621 () Bool)

(declare-fun tp!2102663 () Bool)

(assert (=> b!7387621 (= e!4421813 tp!2102663)))

(assert (=> b!7386374 (= tp!2101637 e!4421813)))

(declare-fun b!7387622 () Bool)

(declare-fun tp!2102662 () Bool)

(declare-fun tp!2102666 () Bool)

(assert (=> b!7387622 (= e!4421813 (and tp!2102662 tp!2102666))))

(assert (= (and b!7386374 (is-ElementMatch!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387619))

(assert (= (and b!7386374 (is-Concat!28209 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387620))

(assert (= (and b!7386374 (is-Star!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387621))

(assert (= (and b!7386374 (is-Union!19364 (regOne!39240 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387622))

(declare-fun b!7387623 () Bool)

(declare-fun e!4421814 () Bool)

(assert (=> b!7387623 (= e!4421814 tp_is_empty!48991)))

(declare-fun b!7387624 () Bool)

(declare-fun tp!2102670 () Bool)

(declare-fun tp!2102669 () Bool)

(assert (=> b!7387624 (= e!4421814 (and tp!2102670 tp!2102669))))

(declare-fun b!7387625 () Bool)

(declare-fun tp!2102668 () Bool)

(assert (=> b!7387625 (= e!4421814 tp!2102668)))

(assert (=> b!7386374 (= tp!2101636 e!4421814)))

(declare-fun b!7387626 () Bool)

(declare-fun tp!2102667 () Bool)

(declare-fun tp!2102671 () Bool)

(assert (=> b!7387626 (= e!4421814 (and tp!2102667 tp!2102671))))

(assert (= (and b!7386374 (is-ElementMatch!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387623))

(assert (= (and b!7386374 (is-Concat!28209 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387624))

(assert (= (and b!7386374 (is-Star!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387625))

(assert (= (and b!7386374 (is-Union!19364 (regTwo!39240 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387626))

(declare-fun b!7387627 () Bool)

(declare-fun e!4421815 () Bool)

(assert (=> b!7387627 (= e!4421815 tp_is_empty!48991)))

(declare-fun b!7387628 () Bool)

(declare-fun tp!2102675 () Bool)

(declare-fun tp!2102674 () Bool)

(assert (=> b!7387628 (= e!4421815 (and tp!2102675 tp!2102674))))

(declare-fun b!7387629 () Bool)

(declare-fun tp!2102673 () Bool)

(assert (=> b!7387629 (= e!4421815 tp!2102673)))

(assert (=> b!7386416 (= tp!2101686 e!4421815)))

(declare-fun b!7387630 () Bool)

(declare-fun tp!2102672 () Bool)

(declare-fun tp!2102676 () Bool)

(assert (=> b!7387630 (= e!4421815 (and tp!2102672 tp!2102676))))

(assert (= (and b!7386416 (is-ElementMatch!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387627))

(assert (= (and b!7386416 (is-Concat!28209 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387628))

(assert (= (and b!7386416 (is-Star!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387629))

(assert (= (and b!7386416 (is-Union!19364 (regOne!39241 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387630))

(declare-fun b!7387631 () Bool)

(declare-fun e!4421816 () Bool)

(assert (=> b!7387631 (= e!4421816 tp_is_empty!48991)))

(declare-fun b!7387632 () Bool)

(declare-fun tp!2102680 () Bool)

(declare-fun tp!2102679 () Bool)

(assert (=> b!7387632 (= e!4421816 (and tp!2102680 tp!2102679))))

(declare-fun b!7387633 () Bool)

(declare-fun tp!2102678 () Bool)

(assert (=> b!7387633 (= e!4421816 tp!2102678)))

(assert (=> b!7386416 (= tp!2101690 e!4421816)))

(declare-fun b!7387634 () Bool)

(declare-fun tp!2102677 () Bool)

(declare-fun tp!2102681 () Bool)

(assert (=> b!7387634 (= e!4421816 (and tp!2102677 tp!2102681))))

(assert (= (and b!7386416 (is-ElementMatch!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387631))

(assert (= (and b!7386416 (is-Concat!28209 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387632))

(assert (= (and b!7386416 (is-Star!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387633))

(assert (= (and b!7386416 (is-Union!19364 (regTwo!39241 (regOne!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387634))

(declare-fun b!7387635 () Bool)

(declare-fun e!4421817 () Bool)

(assert (=> b!7387635 (= e!4421817 tp_is_empty!48991)))

(declare-fun b!7387636 () Bool)

(declare-fun tp!2102685 () Bool)

(declare-fun tp!2102684 () Bool)

(assert (=> b!7387636 (= e!4421817 (and tp!2102685 tp!2102684))))

(declare-fun b!7387637 () Bool)

(declare-fun tp!2102683 () Bool)

(assert (=> b!7387637 (= e!4421817 tp!2102683)))

(assert (=> b!7386376 (= tp!2101634 e!4421817)))

(declare-fun b!7387638 () Bool)

(declare-fun tp!2102682 () Bool)

(declare-fun tp!2102686 () Bool)

(assert (=> b!7387638 (= e!4421817 (and tp!2102682 tp!2102686))))

(assert (= (and b!7386376 (is-ElementMatch!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387635))

(assert (= (and b!7386376 (is-Concat!28209 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387636))

(assert (= (and b!7386376 (is-Star!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387637))

(assert (= (and b!7386376 (is-Union!19364 (regOne!39241 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387638))

(declare-fun b!7387639 () Bool)

(declare-fun e!4421818 () Bool)

(assert (=> b!7387639 (= e!4421818 tp_is_empty!48991)))

(declare-fun b!7387640 () Bool)

(declare-fun tp!2102690 () Bool)

(declare-fun tp!2102689 () Bool)

(assert (=> b!7387640 (= e!4421818 (and tp!2102690 tp!2102689))))

(declare-fun b!7387641 () Bool)

(declare-fun tp!2102688 () Bool)

(assert (=> b!7387641 (= e!4421818 tp!2102688)))

(assert (=> b!7386376 (= tp!2101638 e!4421818)))

(declare-fun b!7387642 () Bool)

(declare-fun tp!2102687 () Bool)

(declare-fun tp!2102691 () Bool)

(assert (=> b!7387642 (= e!4421818 (and tp!2102687 tp!2102691))))

(assert (= (and b!7386376 (is-ElementMatch!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387639))

(assert (= (and b!7386376 (is-Concat!28209 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387640))

(assert (= (and b!7386376 (is-Star!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387641))

(assert (= (and b!7386376 (is-Union!19364 (regTwo!39241 (regOne!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387642))

(declare-fun b!7387643 () Bool)

(declare-fun e!4421819 () Bool)

(assert (=> b!7387643 (= e!4421819 tp_is_empty!48991)))

(declare-fun b!7387644 () Bool)

(declare-fun tp!2102695 () Bool)

(declare-fun tp!2102694 () Bool)

(assert (=> b!7387644 (= e!4421819 (and tp!2102695 tp!2102694))))

(declare-fun b!7387645 () Bool)

(declare-fun tp!2102693 () Bool)

(assert (=> b!7387645 (= e!4421819 tp!2102693)))

(assert (=> b!7386454 (= tp!2101738 e!4421819)))

(declare-fun b!7387646 () Bool)

(declare-fun tp!2102692 () Bool)

(declare-fun tp!2102696 () Bool)

(assert (=> b!7387646 (= e!4421819 (and tp!2102692 tp!2102696))))

(assert (= (and b!7386454 (is-ElementMatch!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387643))

(assert (= (and b!7386454 (is-Concat!28209 (reg!19693 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387644))

(assert (= (and b!7386454 (is-Star!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387645))

(assert (= (and b!7386454 (is-Union!19364 (reg!19693 (h!78216 (t!386443 (exprs!8804 setElem!55895)))))) b!7387646))

(declare-fun b!7387647 () Bool)

(declare-fun e!4421820 () Bool)

(declare-fun tp!2102697 () Bool)

(declare-fun tp!2102698 () Bool)

(assert (=> b!7387647 (= e!4421820 (and tp!2102697 tp!2102698))))

(assert (=> b!7386254 (= tp!2101631 e!4421820)))

(assert (= (and b!7386254 (is-Cons!71768 (exprs!8804 setElem!55914))) b!7387647))

(declare-fun b!7387648 () Bool)

(declare-fun e!4421821 () Bool)

(assert (=> b!7387648 (= e!4421821 tp_is_empty!48991)))

(declare-fun b!7387649 () Bool)

(declare-fun tp!2102702 () Bool)

(declare-fun tp!2102701 () Bool)

(assert (=> b!7387649 (= e!4421821 (and tp!2102702 tp!2102701))))

(declare-fun b!7387650 () Bool)

(declare-fun tp!2102700 () Bool)

(assert (=> b!7387650 (= e!4421821 tp!2102700)))

(assert (=> b!7386447 (= tp!2101731 e!4421821)))

(declare-fun b!7387651 () Bool)

(declare-fun tp!2102699 () Bool)

(declare-fun tp!2102703 () Bool)

(assert (=> b!7387651 (= e!4421821 (and tp!2102699 tp!2102703))))

(assert (= (and b!7386447 (is-ElementMatch!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387648))

(assert (= (and b!7386447 (is-Concat!28209 (regOne!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387649))

(assert (= (and b!7386447 (is-Star!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387650))

(assert (= (and b!7386447 (is-Union!19364 (regOne!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387651))

(declare-fun b!7387652 () Bool)

(declare-fun e!4421822 () Bool)

(assert (=> b!7387652 (= e!4421822 tp_is_empty!48991)))

(declare-fun b!7387653 () Bool)

(declare-fun tp!2102707 () Bool)

(declare-fun tp!2102706 () Bool)

(assert (=> b!7387653 (= e!4421822 (and tp!2102707 tp!2102706))))

(declare-fun b!7387654 () Bool)

(declare-fun tp!2102705 () Bool)

(assert (=> b!7387654 (= e!4421822 tp!2102705)))

(assert (=> b!7386447 (= tp!2101730 e!4421822)))

(declare-fun b!7387655 () Bool)

(declare-fun tp!2102704 () Bool)

(declare-fun tp!2102708 () Bool)

(assert (=> b!7387655 (= e!4421822 (and tp!2102704 tp!2102708))))

(assert (= (and b!7386447 (is-ElementMatch!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387652))

(assert (= (and b!7386447 (is-Concat!28209 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387653))

(assert (= (and b!7386447 (is-Star!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387654))

(assert (= (and b!7386447 (is-Union!19364 (regTwo!39240 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387655))

(declare-fun b!7387656 () Bool)

(declare-fun e!4421823 () Bool)

(assert (=> b!7387656 (= e!4421823 tp_is_empty!48991)))

(declare-fun b!7387657 () Bool)

(declare-fun tp!2102712 () Bool)

(declare-fun tp!2102711 () Bool)

(assert (=> b!7387657 (= e!4421823 (and tp!2102712 tp!2102711))))

(declare-fun b!7387658 () Bool)

(declare-fun tp!2102710 () Bool)

(assert (=> b!7387658 (= e!4421823 tp!2102710)))

(assert (=> b!7386393 (= tp!2101658 e!4421823)))

(declare-fun b!7387659 () Bool)

(declare-fun tp!2102709 () Bool)

(declare-fun tp!2102713 () Bool)

(assert (=> b!7387659 (= e!4421823 (and tp!2102709 tp!2102713))))

(assert (= (and b!7386393 (is-ElementMatch!19364 (reg!19693 (h!78216 (exprs!8804 setElem!55901))))) b!7387656))

(assert (= (and b!7386393 (is-Concat!28209 (reg!19693 (h!78216 (exprs!8804 setElem!55901))))) b!7387657))

(assert (= (and b!7386393 (is-Star!19364 (reg!19693 (h!78216 (exprs!8804 setElem!55901))))) b!7387658))

(assert (= (and b!7386393 (is-Union!19364 (reg!19693 (h!78216 (exprs!8804 setElem!55901))))) b!7387659))

(declare-fun b!7387660 () Bool)

(declare-fun e!4421824 () Bool)

(assert (=> b!7387660 (= e!4421824 tp_is_empty!48991)))

(declare-fun b!7387661 () Bool)

(declare-fun tp!2102717 () Bool)

(declare-fun tp!2102716 () Bool)

(assert (=> b!7387661 (= e!4421824 (and tp!2102717 tp!2102716))))

(declare-fun b!7387662 () Bool)

(declare-fun tp!2102715 () Bool)

(assert (=> b!7387662 (= e!4421824 tp!2102715)))

(assert (=> b!7386410 (= tp!2101680 e!4421824)))

(declare-fun b!7387663 () Bool)

(declare-fun tp!2102714 () Bool)

(declare-fun tp!2102718 () Bool)

(assert (=> b!7387663 (= e!4421824 (and tp!2102714 tp!2102718))))

(assert (= (and b!7386410 (is-ElementMatch!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387660))

(assert (= (and b!7386410 (is-Concat!28209 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387661))

(assert (= (and b!7386410 (is-Star!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387662))

(assert (= (and b!7386410 (is-Union!19364 (reg!19693 (regTwo!39240 (h!78216 (exprs!8804 setElem!55895)))))) b!7387663))

(declare-fun b!7387664 () Bool)

(declare-fun e!4421825 () Bool)

(assert (=> b!7387664 (= e!4421825 tp_is_empty!48991)))

(declare-fun b!7387665 () Bool)

(declare-fun tp!2102722 () Bool)

(declare-fun tp!2102721 () Bool)

(assert (=> b!7387665 (= e!4421825 (and tp!2102722 tp!2102721))))

(declare-fun b!7387666 () Bool)

(declare-fun tp!2102720 () Bool)

(assert (=> b!7387666 (= e!4421825 tp!2102720)))

(assert (=> b!7386401 (= tp!2101672 e!4421825)))

(declare-fun b!7387667 () Bool)

(declare-fun tp!2102719 () Bool)

(declare-fun tp!2102723 () Bool)

(assert (=> b!7387667 (= e!4421825 (and tp!2102719 tp!2102723))))

(assert (= (and b!7386401 (is-ElementMatch!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387664))

(assert (= (and b!7386401 (is-Concat!28209 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387665))

(assert (= (and b!7386401 (is-Star!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387666))

(assert (= (and b!7386401 (is-Union!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387667))

(declare-fun b!7387668 () Bool)

(declare-fun e!4421826 () Bool)

(assert (=> b!7387668 (= e!4421826 tp_is_empty!48991)))

(declare-fun b!7387669 () Bool)

(declare-fun tp!2102727 () Bool)

(declare-fun tp!2102726 () Bool)

(assert (=> b!7387669 (= e!4421826 (and tp!2102727 tp!2102726))))

(declare-fun b!7387670 () Bool)

(declare-fun tp!2102725 () Bool)

(assert (=> b!7387670 (= e!4421826 tp!2102725)))

(assert (=> b!7386401 (= tp!2101671 e!4421826)))

(declare-fun b!7387671 () Bool)

(declare-fun tp!2102724 () Bool)

(declare-fun tp!2102728 () Bool)

(assert (=> b!7387671 (= e!4421826 (and tp!2102724 tp!2102728))))

(assert (= (and b!7386401 (is-ElementMatch!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387668))

(assert (= (and b!7386401 (is-Concat!28209 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387669))

(assert (= (and b!7386401 (is-Star!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387670))

(assert (= (and b!7386401 (is-Union!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387671))

(declare-fun b!7387672 () Bool)

(declare-fun e!4421827 () Bool)

(assert (=> b!7387672 (= e!4421827 tp_is_empty!48991)))

(declare-fun b!7387673 () Bool)

(declare-fun tp!2102732 () Bool)

(declare-fun tp!2102731 () Bool)

(assert (=> b!7387673 (= e!4421827 (and tp!2102732 tp!2102731))))

(declare-fun b!7387674 () Bool)

(declare-fun tp!2102730 () Bool)

(assert (=> b!7387674 (= e!4421827 tp!2102730)))

(assert (=> b!7386449 (= tp!2101728 e!4421827)))

(declare-fun b!7387675 () Bool)

(declare-fun tp!2102729 () Bool)

(declare-fun tp!2102733 () Bool)

(assert (=> b!7387675 (= e!4421827 (and tp!2102729 tp!2102733))))

(assert (= (and b!7386449 (is-ElementMatch!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387672))

(assert (= (and b!7386449 (is-Concat!28209 (regOne!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387673))

(assert (= (and b!7386449 (is-Star!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387674))

(assert (= (and b!7386449 (is-Union!19364 (regOne!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387675))

(declare-fun b!7387676 () Bool)

(declare-fun e!4421828 () Bool)

(assert (=> b!7387676 (= e!4421828 tp_is_empty!48991)))

(declare-fun b!7387677 () Bool)

(declare-fun tp!2102737 () Bool)

(declare-fun tp!2102736 () Bool)

(assert (=> b!7387677 (= e!4421828 (and tp!2102737 tp!2102736))))

(declare-fun b!7387678 () Bool)

(declare-fun tp!2102735 () Bool)

(assert (=> b!7387678 (= e!4421828 tp!2102735)))

(assert (=> b!7386449 (= tp!2101732 e!4421828)))

(declare-fun b!7387679 () Bool)

(declare-fun tp!2102734 () Bool)

(declare-fun tp!2102738 () Bool)

(assert (=> b!7387679 (= e!4421828 (and tp!2102734 tp!2102738))))

(assert (= (and b!7386449 (is-ElementMatch!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387676))

(assert (= (and b!7386449 (is-Concat!28209 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387677))

(assert (= (and b!7386449 (is-Star!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387678))

(assert (= (and b!7386449 (is-Union!19364 (regTwo!39241 (h!78216 (t!386443 (exprs!8804 empty!3451)))))) b!7387679))

(declare-fun b!7387680 () Bool)

(declare-fun e!4421829 () Bool)

(assert (=> b!7387680 (= e!4421829 tp_is_empty!48991)))

(declare-fun b!7387681 () Bool)

(declare-fun tp!2102742 () Bool)

(declare-fun tp!2102741 () Bool)

(assert (=> b!7387681 (= e!4421829 (and tp!2102742 tp!2102741))))

(declare-fun b!7387682 () Bool)

(declare-fun tp!2102740 () Bool)

(assert (=> b!7387682 (= e!4421829 tp!2102740)))

(assert (=> b!7386440 (= tp!2101719 e!4421829)))

(declare-fun b!7387683 () Bool)

(declare-fun tp!2102739 () Bool)

(declare-fun tp!2102743 () Bool)

(assert (=> b!7387683 (= e!4421829 (and tp!2102739 tp!2102743))))

(assert (= (and b!7386440 (is-ElementMatch!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387680))

(assert (= (and b!7386440 (is-Concat!28209 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387681))

(assert (= (and b!7386440 (is-Star!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387682))

(assert (= (and b!7386440 (is-Union!19364 (reg!19693 (regTwo!39241 (h!78216 (exprs!8804 c!10532)))))) b!7387683))

(declare-fun b!7387684 () Bool)

(declare-fun e!4421830 () Bool)

(assert (=> b!7387684 (= e!4421830 tp_is_empty!48991)))

(declare-fun b!7387685 () Bool)

(declare-fun tp!2102747 () Bool)

(declare-fun tp!2102746 () Bool)

(assert (=> b!7387685 (= e!4421830 (and tp!2102747 tp!2102746))))

(declare-fun b!7387686 () Bool)

(declare-fun tp!2102745 () Bool)

(assert (=> b!7387686 (= e!4421830 tp!2102745)))

(assert (=> b!7386431 (= tp!2101711 e!4421830)))

(declare-fun b!7387687 () Bool)

(declare-fun tp!2102744 () Bool)

(declare-fun tp!2102748 () Bool)

(assert (=> b!7387687 (= e!4421830 (and tp!2102744 tp!2102748))))

(assert (= (and b!7386431 (is-ElementMatch!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387684))

(assert (= (and b!7386431 (is-Concat!28209 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387685))

(assert (= (and b!7386431 (is-Star!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387686))

(assert (= (and b!7386431 (is-Union!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387687))

(declare-fun b!7387688 () Bool)

(declare-fun e!4421831 () Bool)

(assert (=> b!7387688 (= e!4421831 tp_is_empty!48991)))

(declare-fun b!7387689 () Bool)

(declare-fun tp!2102752 () Bool)

(declare-fun tp!2102751 () Bool)

(assert (=> b!7387689 (= e!4421831 (and tp!2102752 tp!2102751))))

(declare-fun b!7387690 () Bool)

(declare-fun tp!2102750 () Bool)

(assert (=> b!7387690 (= e!4421831 tp!2102750)))

(assert (=> b!7386431 (= tp!2101710 e!4421831)))

(declare-fun b!7387691 () Bool)

(declare-fun tp!2102749 () Bool)

(declare-fun tp!2102753 () Bool)

(assert (=> b!7387691 (= e!4421831 (and tp!2102749 tp!2102753))))

(assert (= (and b!7386431 (is-ElementMatch!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387688))

(assert (= (and b!7386431 (is-Concat!28209 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387689))

(assert (= (and b!7386431 (is-Star!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387690))

(assert (= (and b!7386431 (is-Union!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387691))

(declare-fun b!7387692 () Bool)

(declare-fun e!4421832 () Bool)

(assert (=> b!7387692 (= e!4421832 tp_is_empty!48991)))

(declare-fun b!7387693 () Bool)

(declare-fun tp!2102757 () Bool)

(declare-fun tp!2102756 () Bool)

(assert (=> b!7387693 (= e!4421832 (and tp!2102757 tp!2102756))))

(declare-fun b!7387694 () Bool)

(declare-fun tp!2102755 () Bool)

(assert (=> b!7387694 (= e!4421832 tp!2102755)))

(assert (=> b!7386418 (= tp!2101694 e!4421832)))

(declare-fun b!7387695 () Bool)

(declare-fun tp!2102754 () Bool)

(declare-fun tp!2102758 () Bool)

(assert (=> b!7387695 (= e!4421832 (and tp!2102754 tp!2102758))))

(assert (= (and b!7386418 (is-ElementMatch!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387692))

(assert (= (and b!7386418 (is-Concat!28209 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387693))

(assert (= (and b!7386418 (is-Star!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387694))

(assert (= (and b!7386418 (is-Union!19364 (regOne!39240 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387695))

(declare-fun b!7387696 () Bool)

(declare-fun e!4421833 () Bool)

(assert (=> b!7387696 (= e!4421833 tp_is_empty!48991)))

(declare-fun b!7387697 () Bool)

(declare-fun tp!2102762 () Bool)

(declare-fun tp!2102761 () Bool)

(assert (=> b!7387697 (= e!4421833 (and tp!2102762 tp!2102761))))

(declare-fun b!7387698 () Bool)

(declare-fun tp!2102760 () Bool)

(assert (=> b!7387698 (= e!4421833 tp!2102760)))

(assert (=> b!7386418 (= tp!2101693 e!4421833)))

(declare-fun b!7387699 () Bool)

(declare-fun tp!2102759 () Bool)

(declare-fun tp!2102763 () Bool)

(assert (=> b!7387699 (= e!4421833 (and tp!2102759 tp!2102763))))

(assert (= (and b!7386418 (is-ElementMatch!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387696))

(assert (= (and b!7386418 (is-Concat!28209 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387697))

(assert (= (and b!7386418 (is-Star!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387698))

(assert (= (and b!7386418 (is-Union!19364 (regTwo!39240 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387699))

(declare-fun b!7387700 () Bool)

(declare-fun e!4421834 () Bool)

(assert (=> b!7387700 (= e!4421834 tp_is_empty!48991)))

(declare-fun b!7387701 () Bool)

(declare-fun tp!2102767 () Bool)

(declare-fun tp!2102766 () Bool)

(assert (=> b!7387701 (= e!4421834 (and tp!2102767 tp!2102766))))

(declare-fun b!7387702 () Bool)

(declare-fun tp!2102765 () Bool)

(assert (=> b!7387702 (= e!4421834 tp!2102765)))

(assert (=> b!7386403 (= tp!2101669 e!4421834)))

(declare-fun b!7387703 () Bool)

(declare-fun tp!2102764 () Bool)

(declare-fun tp!2102768 () Bool)

(assert (=> b!7387703 (= e!4421834 (and tp!2102764 tp!2102768))))

(assert (= (and b!7386403 (is-ElementMatch!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387700))

(assert (= (and b!7386403 (is-Concat!28209 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387701))

(assert (= (and b!7386403 (is-Star!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387702))

(assert (= (and b!7386403 (is-Union!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387703))

(declare-fun b!7387704 () Bool)

(declare-fun e!4421835 () Bool)

(assert (=> b!7387704 (= e!4421835 tp_is_empty!48991)))

(declare-fun b!7387705 () Bool)

(declare-fun tp!2102772 () Bool)

(declare-fun tp!2102771 () Bool)

(assert (=> b!7387705 (= e!4421835 (and tp!2102772 tp!2102771))))

(declare-fun b!7387706 () Bool)

(declare-fun tp!2102770 () Bool)

(assert (=> b!7387706 (= e!4421835 tp!2102770)))

(assert (=> b!7386403 (= tp!2101673 e!4421835)))

(declare-fun b!7387707 () Bool)

(declare-fun tp!2102769 () Bool)

(declare-fun tp!2102773 () Bool)

(assert (=> b!7387707 (= e!4421835 (and tp!2102769 tp!2102773))))

(assert (= (and b!7386403 (is-ElementMatch!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387704))

(assert (= (and b!7386403 (is-Concat!28209 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387705))

(assert (= (and b!7386403 (is-Star!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387706))

(assert (= (and b!7386403 (is-Union!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 empty!3451)))))) b!7387707))

(declare-fun b!7387708 () Bool)

(declare-fun e!4421836 () Bool)

(assert (=> b!7387708 (= e!4421836 tp_is_empty!48991)))

(declare-fun b!7387709 () Bool)

(declare-fun tp!2102777 () Bool)

(declare-fun tp!2102776 () Bool)

(assert (=> b!7387709 (= e!4421836 (and tp!2102777 tp!2102776))))

(declare-fun b!7387710 () Bool)

(declare-fun tp!2102775 () Bool)

(assert (=> b!7387710 (= e!4421836 tp!2102775)))

(assert (=> b!7386433 (= tp!2101708 e!4421836)))

(declare-fun b!7387711 () Bool)

(declare-fun tp!2102774 () Bool)

(declare-fun tp!2102778 () Bool)

(assert (=> b!7387711 (= e!4421836 (and tp!2102774 tp!2102778))))

(assert (= (and b!7386433 (is-ElementMatch!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387708))

(assert (= (and b!7386433 (is-Concat!28209 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387709))

(assert (= (and b!7386433 (is-Star!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387710))

(assert (= (and b!7386433 (is-Union!19364 (regOne!39241 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387711))

(declare-fun b!7387712 () Bool)

(declare-fun e!4421837 () Bool)

(assert (=> b!7387712 (= e!4421837 tp_is_empty!48991)))

(declare-fun b!7387713 () Bool)

(declare-fun tp!2102782 () Bool)

(declare-fun tp!2102781 () Bool)

(assert (=> b!7387713 (= e!4421837 (and tp!2102782 tp!2102781))))

(declare-fun b!7387714 () Bool)

(declare-fun tp!2102780 () Bool)

(assert (=> b!7387714 (= e!4421837 tp!2102780)))

(assert (=> b!7386433 (= tp!2101712 e!4421837)))

(declare-fun b!7387715 () Bool)

(declare-fun tp!2102779 () Bool)

(declare-fun tp!2102783 () Bool)

(assert (=> b!7387715 (= e!4421837 (and tp!2102779 tp!2102783))))

(assert (= (and b!7386433 (is-ElementMatch!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387712))

(assert (= (and b!7386433 (is-Concat!28209 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387713))

(assert (= (and b!7386433 (is-Star!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387714))

(assert (= (and b!7386433 (is-Union!19364 (regTwo!39241 (regTwo!39240 (h!78216 (exprs!8804 c!10532)))))) b!7387715))

(declare-fun b!7387716 () Bool)

(declare-fun e!4421838 () Bool)

(assert (=> b!7387716 (= e!4421838 tp_is_empty!48991)))

(declare-fun b!7387717 () Bool)

(declare-fun tp!2102787 () Bool)

(declare-fun tp!2102786 () Bool)

(assert (=> b!7387717 (= e!4421838 (and tp!2102787 tp!2102786))))

(declare-fun b!7387718 () Bool)

(declare-fun tp!2102785 () Bool)

(assert (=> b!7387718 (= e!4421838 tp!2102785)))

(assert (=> b!7386378 (= tp!2101642 e!4421838)))

(declare-fun b!7387719 () Bool)

(declare-fun tp!2102784 () Bool)

(declare-fun tp!2102788 () Bool)

(assert (=> b!7387719 (= e!4421838 (and tp!2102784 tp!2102788))))

(assert (= (and b!7386378 (is-ElementMatch!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387716))

(assert (= (and b!7386378 (is-Concat!28209 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387717))

(assert (= (and b!7386378 (is-Star!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387718))

(assert (= (and b!7386378 (is-Union!19364 (regOne!39240 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387719))

(declare-fun b!7387720 () Bool)

(declare-fun e!4421839 () Bool)

(assert (=> b!7387720 (= e!4421839 tp_is_empty!48991)))

(declare-fun b!7387721 () Bool)

(declare-fun tp!2102792 () Bool)

(declare-fun tp!2102791 () Bool)

(assert (=> b!7387721 (= e!4421839 (and tp!2102792 tp!2102791))))

(declare-fun b!7387722 () Bool)

(declare-fun tp!2102790 () Bool)

(assert (=> b!7387722 (= e!4421839 tp!2102790)))

(assert (=> b!7386378 (= tp!2101641 e!4421839)))

(declare-fun b!7387723 () Bool)

(declare-fun tp!2102789 () Bool)

(declare-fun tp!2102793 () Bool)

(assert (=> b!7387723 (= e!4421839 (and tp!2102789 tp!2102793))))

(assert (= (and b!7386378 (is-ElementMatch!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387720))

(assert (= (and b!7386378 (is-Concat!28209 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387721))

(assert (= (and b!7386378 (is-Star!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387722))

(assert (= (and b!7386378 (is-Union!19364 (regTwo!39240 (regTwo!39240 (h!78216 (exprs!8804 empty!3451)))))) b!7387723))

(declare-fun b!7387724 () Bool)

(declare-fun e!4421840 () Bool)

(assert (=> b!7387724 (= e!4421840 tp_is_empty!48991)))

(declare-fun b!7387725 () Bool)

(declare-fun tp!2102797 () Bool)

(declare-fun tp!2102796 () Bool)

(assert (=> b!7387725 (= e!4421840 (and tp!2102797 tp!2102796))))

(declare-fun b!7387726 () Bool)

(declare-fun tp!2102795 () Bool)

(assert (=> b!7387726 (= e!4421840 tp!2102795)))

(assert (=> b!7386424 (= tp!2101699 e!4421840)))

(declare-fun b!7387727 () Bool)

(declare-fun tp!2102794 () Bool)

(declare-fun tp!2102798 () Bool)

(assert (=> b!7387727 (= e!4421840 (and tp!2102794 tp!2102798))))

(assert (= (and b!7386424 (is-ElementMatch!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387724))

(assert (= (and b!7386424 (is-Concat!28209 (reg!19693 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387725))

(assert (= (and b!7386424 (is-Star!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387726))

(assert (= (and b!7386424 (is-Union!19364 (reg!19693 (reg!19693 (h!78216 (exprs!8804 setElem!55895)))))) b!7387727))

(declare-fun b!7387728 () Bool)

(declare-fun e!4421841 () Bool)

(assert (=> b!7387728 (= e!4421841 tp_is_empty!48991)))

(declare-fun b!7387729 () Bool)

(declare-fun tp!2102802 () Bool)

(declare-fun tp!2102801 () Bool)

(assert (=> b!7387729 (= e!4421841 (and tp!2102802 tp!2102801))))

(declare-fun b!7387730 () Bool)

(declare-fun tp!2102800 () Bool)

(assert (=> b!7387730 (= e!4421841 tp!2102800)))

(assert (=> b!7386420 (= tp!2101691 e!4421841)))

(declare-fun b!7387731 () Bool)

(declare-fun tp!2102799 () Bool)

(declare-fun tp!2102803 () Bool)

(assert (=> b!7387731 (= e!4421841 (and tp!2102799 tp!2102803))))

(assert (= (and b!7386420 (is-ElementMatch!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387728))

(assert (= (and b!7386420 (is-Concat!28209 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387729))

(assert (= (and b!7386420 (is-Star!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387730))

(assert (= (and b!7386420 (is-Union!19364 (regOne!39241 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387731))

(declare-fun b!7387732 () Bool)

(declare-fun e!4421842 () Bool)

(assert (=> b!7387732 (= e!4421842 tp_is_empty!48991)))

(declare-fun b!7387733 () Bool)

(declare-fun tp!2102807 () Bool)

(declare-fun tp!2102806 () Bool)

(assert (=> b!7387733 (= e!4421842 (and tp!2102807 tp!2102806))))

(declare-fun b!7387734 () Bool)

(declare-fun tp!2102805 () Bool)

(assert (=> b!7387734 (= e!4421842 tp!2102805)))

(assert (=> b!7386420 (= tp!2101695 e!4421842)))

(declare-fun b!7387735 () Bool)

(declare-fun tp!2102804 () Bool)

(declare-fun tp!2102808 () Bool)

(assert (=> b!7387735 (= e!4421842 (and tp!2102804 tp!2102808))))

(assert (= (and b!7386420 (is-ElementMatch!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387732))

(assert (= (and b!7386420 (is-Concat!28209 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387733))

(assert (= (and b!7386420 (is-Star!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387734))

(assert (= (and b!7386420 (is-Union!19364 (regTwo!39241 (regTwo!39241 (h!78216 (exprs!8804 setElem!55895)))))) b!7387735))

(declare-fun b!7387736 () Bool)

(declare-fun e!4421843 () Bool)

(assert (=> b!7387736 (= e!4421843 tp_is_empty!48991)))

(declare-fun b!7387737 () Bool)

(declare-fun tp!2102812 () Bool)

(declare-fun tp!2102811 () Bool)

(assert (=> b!7387737 (= e!4421843 (and tp!2102812 tp!2102811))))

(declare-fun b!7387738 () Bool)

(declare-fun tp!2102810 () Bool)

(assert (=> b!7387738 (= e!4421843 tp!2102810)))

(assert (=> b!7386450 (= tp!2101733 e!4421843)))

(declare-fun b!7387739 () Bool)

(declare-fun tp!2102809 () Bool)

(declare-fun tp!2102813 () Bool)

(assert (=> b!7387739 (= e!4421843 (and tp!2102809 tp!2102813))))

(assert (= (and b!7386450 (is-ElementMatch!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 empty!3451)))))) b!7387736))

(assert (= (and b!7386450 (is-Concat!28209 (h!78216 (t!386443 (t!386443 (exprs!8804 empty!3451)))))) b!7387737))

(assert (= (and b!7386450 (is-Star!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 empty!3451)))))) b!7387738))

(assert (= (and b!7386450 (is-Union!19364 (h!78216 (t!386443 (t!386443 (exprs!8804 empty!3451)))))) b!7387739))

(declare-fun b!7387740 () Bool)

(declare-fun e!4421844 () Bool)

(declare-fun tp!2102814 () Bool)

(declare-fun tp!2102815 () Bool)

(assert (=> b!7387740 (= e!4421844 (and tp!2102814 tp!2102815))))

(assert (=> b!7386450 (= tp!2101734 e!4421844)))

(assert (= (and b!7386450 (is-Cons!71768 (t!386443 (t!386443 (t!386443 (exprs!8804 empty!3451)))))) b!7387740))

(declare-fun b_lambda!285063 () Bool)

(assert (= b_lambda!285051 (or d!2286716 b_lambda!285063)))

(declare-fun bs!1922120 () Bool)

(declare-fun d!2286936 () Bool)

(assert (= bs!1922120 (and d!2286936 d!2286716)))

(assert (=> bs!1922120 (= (dynLambda!29561 lambda!458952 (h!78220 (toList!11727 z!3451))) (not (dynLambda!29561 lambda!458921 (h!78220 (toList!11727 z!3451)))))))

(declare-fun b_lambda!285077 () Bool)

(assert (=> (not b_lambda!285077) (not bs!1922120)))

(declare-fun m!8034984 () Bool)

(assert (=> bs!1922120 m!8034984))

(assert (=> b!7387123 d!2286936))

(declare-fun b_lambda!285065 () Bool)

(assert (= b_lambda!285055 (or d!2286534 b_lambda!285065)))

(declare-fun bs!1922121 () Bool)

(declare-fun d!2286938 () Bool)

(assert (= bs!1922121 (and d!2286938 d!2286534)))

(assert (=> bs!1922121 (= (dynLambda!29558 lambda!458924 (h!78216 (t!386443 (t!386443 (exprs!8804 empty!3451))))) (validRegex!9942 (h!78216 (t!386443 (t!386443 (exprs!8804 empty!3451))))))))

(declare-fun m!8034986 () Bool)

(assert (=> bs!1922121 m!8034986))

(assert (=> b!7387160 d!2286938))

(declare-fun b_lambda!285067 () Bool)

(assert (= b_lambda!285057 (or d!2286542 b_lambda!285067)))

(declare-fun bs!1922122 () Bool)

(declare-fun d!2286940 () Bool)

(assert (= bs!1922122 (and d!2286940 d!2286542)))

(assert (=> bs!1922122 (= (dynLambda!29558 lambda!458926 (h!78216 (t!386443 (t!386443 (exprs!8804 setElem!55895))))) (validRegex!9942 (h!78216 (t!386443 (t!386443 (exprs!8804 setElem!55895))))))))

(declare-fun m!8034988 () Bool)

(assert (=> bs!1922122 m!8034988))

(assert (=> b!7387162 d!2286940))

(declare-fun b_lambda!285069 () Bool)

(assert (= b_lambda!285061 (or d!2286618 b_lambda!285069)))

(declare-fun bs!1922123 () Bool)

(declare-fun d!2286942 () Bool)

(assert (= bs!1922123 (and d!2286942 d!2286618)))

(assert (=> bs!1922123 (= (dynLambda!29558 lambda!458942 (h!78216 (t!386443 (exprs!8804 setElem!55901)))) (validRegex!9942 (h!78216 (t!386443 (exprs!8804 setElem!55901)))))))

(declare-fun m!8034990 () Bool)

(assert (=> bs!1922123 m!8034990))

(assert (=> b!7387311 d!2286942))

(declare-fun b_lambda!285071 () Bool)

(assert (= b_lambda!285059 (or d!2286546 b_lambda!285071)))

(declare-fun bs!1922124 () Bool)

(declare-fun d!2286944 () Bool)

(assert (= bs!1922124 (and d!2286944 d!2286546)))

(assert (=> bs!1922124 (= (dynLambda!29558 lambda!458927 (h!78216 (t!386443 (t!386443 (exprs!8804 c!10532))))) (validRegex!9942 (h!78216 (t!386443 (t!386443 (exprs!8804 c!10532))))))))

(declare-fun m!8034992 () Bool)

(assert (=> bs!1922124 m!8034992))

(assert (=> b!7387260 d!2286944))

(declare-fun b_lambda!285073 () Bool)

(assert (= b_lambda!285049 (or d!2286708 b_lambda!285073)))

(declare-fun bs!1922125 () Bool)

(declare-fun d!2286946 () Bool)

(assert (= bs!1922125 (and d!2286946 d!2286708)))

(assert (=> bs!1922125 (= (dynLambda!29558 lambda!458949 (h!78216 (exprs!8804 _$3!507))) (validRegex!9942 (h!78216 (exprs!8804 _$3!507))))))

(declare-fun m!8034994 () Bool)

(assert (=> bs!1922125 m!8034994))

(assert (=> b!7387117 d!2286946))

(declare-fun b_lambda!285075 () Bool)

(assert (= b_lambda!285053 (or d!2286704 b_lambda!285075)))

(declare-fun bs!1922126 () Bool)

(declare-fun d!2286948 () Bool)

(assert (= bs!1922126 (and d!2286948 d!2286704)))

(assert (=> bs!1922126 (= (dynLambda!29558 lambda!458948 (h!78216 (exprs!8804 setElem!55906))) (validRegex!9942 (h!78216 (exprs!8804 setElem!55906))))))

(declare-fun m!8034996 () Bool)

(assert (=> bs!1922126 m!8034996))

(assert (=> b!7387147 d!2286948))

(push 1)

(assert (not bm!680056))

(assert (not bs!1922122))

(assert (not b!7387435))

(assert (not bs!1922126))

(assert (not b!7387459))

(assert (not bm!680048))

(assert (not b!7387124))

(assert (not b!7387726))

(assert (not bm!680078))

(assert (not b!7387352))

(assert (not d!2286890))

(assert (not b!7387465))

(assert (not b!7387148))

(assert (not b!7387373))

(assert (not b!7387598))

(assert (not b!7387547))

(assert (not b!7387494))

(assert (not b!7387539))

(assert (not bm!680094))

(assert (not b!7387687))

(assert (not bs!1922124))

(assert (not b!7387349))

(assert (not b!7387264))

(assert (not b!7387489))

(assert (not bm!680037))

(assert (not b!7387740))

(assert (not b!7387584))

(assert (not b!7387592))

(assert (not b!7387662))

(assert (not b!7387411))

(assert (not bm!680064))

(assert (not d!2286880))

(assert (not b!7387420))

(assert (not b!7387381))

(assert (not b!7387529))

(assert (not b!7387439))

(assert (not b!7387518))

(assert (not b!7387455))

(assert (not bm!680050))

(assert (not b!7387175))

(assert (not b!7387110))

(assert (not b!7387428))

(assert (not b!7387469))

(assert (not b!7387372))

(assert (not b!7387561))

(assert (not b!7387612))

(assert (not b!7387597))

(assert (not b!7387665))

(assert (not b!7387675))

(assert (not b!7387617))

(assert (not b!7387650))

(assert (not b!7387476))

(assert (not b!7387629))

(assert (not b!7387343))

(assert (not b!7387370))

(assert (not b!7387587))

(assert (not b!7387609))

(assert (not setNonEmpty!55920))

(assert (not b!7387606))

(assert (not b!7387523))

(assert (not b!7387345))

(assert (not b!7387519))

(assert (not d!2286894))

(assert (not b!7387640))

(assert (not b!7387683))

(assert (not b!7387633))

(assert (not b!7387678))

(assert (not b!7387423))

(assert (not b!7387541))

(assert (not b!7387475))

(assert (not b!7387564))

(assert (not b!7387347))

(assert (not b!7387409))

(assert (not bm!680076))

(assert (not b!7387621))

(assert (not b!7387145))

(assert (not b!7387403))

(assert (not b!7387490))

(assert (not b!7387315))

(assert (not b!7387556))

(assert (not b!7387548))

(assert (not d!2286874))

(assert (not bm!680040))

(assert (not setNonEmpty!55922))

(assert (not b!7387393))

(assert (not b!7387730))

(assert (not bm!680047))

(assert (not b!7387638))

(assert (not bm!680105))

(assert (not b!7387693))

(assert (not b!7387616))

(assert (not b!7387389))

(assert (not b!7387651))

(assert (not b!7387330))

(assert (not b!7387460))

(assert (not b!7387418))

(assert (not b!7387273))

(assert (not b!7387486))

(assert (not b!7387508))

(assert (not b!7387723))

(assert (not bm!680067))

(assert (not bm!680041))

(assert (not b!7387630))

(assert (not b!7387498))

(assert (not d!2286860))

(assert (not b!7387419))

(assert (not b!7387589))

(assert (not b!7387655))

(assert (not b!7387493))

(assert (not b!7387136))

(assert (not b!7387738))

(assert (not b!7387397))

(assert (not b!7387569))

(assert (not b!7387694))

(assert (not b!7387532))

(assert (not b_lambda!285069))

(assert (not b!7387340))

(assert (not b!7387339))

(assert (not b!7387618))

(assert (not b!7387505))

(assert (not b!7387151))

(assert (not d!2286908))

(assert (not bm!680039))

(assert (not d!2286896))

(assert (not d!2286912))

(assert (not b!7387464))

(assert (not bm!680093))

(assert (not bs!1922125))

(assert (not b!7387555))

(assert (not b!7387166))

(assert (not b!7387229))

(assert (not b!7387368))

(assert (not b!7387579))

(assert (not b!7387642))

(assert (not b!7387719))

(assert (not b!7387530))

(assert (not b!7387613))

(assert (not b!7387657))

(assert (not b!7387514))

(assert (not b!7387536))

(assert (not b!7387384))

(assert (not b!7387497))

(assert (not b!7387485))

(assert (not b_lambda!285013))

(assert (not b!7387331))

(assert (not b!7387452))

(assert (not b_lambda!285065))

(assert (not b!7387471))

(assert (not b!7387351))

(assert (not b!7387526))

(assert (not b!7387734))

(assert (not b_lambda!284981))

(assert (not b!7387504))

(assert tp_is_empty!48991)

(assert (not b!7387622))

(assert (not b!7387604))

(assert (not b!7387596))

(assert (not b!7387543))

(assert (not b!7387161))

(assert (not b!7387448))

(assert (not b!7387673))

(assert (not b!7387449))

(assert (not b!7387492))

(assert (not b!7387710))

(assert (not b!7387729))

(assert (not bm!680063))

(assert (not b!7387431))

(assert (not b!7387354))

(assert (not b!7387614))

(assert (not b!7387572))

(assert (not b!7387377))

(assert (not b!7387118))

(assert (not b!7387658))

(assert (not b!7387506))

(assert (not b!7387496))

(assert (not b!7387590))

(assert (not b!7387737))

(assert (not b!7387394))

(assert (not b!7387521))

(assert (not bm!680084))

(assert (not setNonEmpty!55921))

(assert (not b!7387679))

(assert (not b!7387445))

(assert (not b!7387388))

(assert (not b!7387395))

(assert (not b!7387390))

(assert (not b!7387533))

(assert (not b!7387705))

(assert (not b!7387386))

(assert (not b!7387365))

(assert (not b!7387626))

(assert (not b!7387577))

(assert (not b!7387666))

(assert (not b!7387332))

(assert (not b!7387426))

(assert (not b!7387441))

(assert (not b!7387632))

(assert (not d!2286914))

(assert (not b!7387706))

(assert (not b!7387733))

(assert (not b!7387440))

(assert (not b!7387610))

(assert (not b!7387620))

(assert (not d!2286842))

(assert (not b!7387488))

(assert (not b_lambda!284985))

(assert (not b!7387338))

(assert (not b!7387707))

(assert (not b!7387628))

(assert (not b!7387376))

(assert (not b!7387380))

(assert (not b!7387702))

(assert (not b!7387477))

(assert (not b!7387563))

(assert (not b!7387697))

(assert (not b!7387552))

(assert (not b!7387374))

(assert (not b!7387457))

(assert (not b!7387515))

(assert (not b_lambda!284983))

(assert (not b!7387509))

(assert (not b!7387399))

(assert (not b!7387735))

(assert (not bm!680045))

(assert (not b!7387593))

(assert (not b!7387565))

(assert (not b!7387211))

(assert (not b!7387715))

(assert (not b!7387144))

(assert (not b!7387625))

(assert (not b!7387649))

(assert (not b!7387453))

(assert (not b!7387385))

(assert (not b!7387585))

(assert (not b!7387510))

(assert (not b!7387661))

(assert (not b!7387146))

(assert (not b!7387553))

(assert (not b!7387701))

(assert (not b!7387414))

(assert (not b!7387703))

(assert (not b!7387669))

(assert (not b!7387358))

(assert (not b!7387568))

(assert (not b!7387559))

(assert (not b!7387681))

(assert (not b!7387674))

(assert (not b!7387725))

(assert (not b!7387588))

(assert (not bm!680101))

(assert (not b!7387636))

(assert (not bm!680060))

(assert (not b!7387401))

(assert (not b!7387717))

(assert (not b!7387571))

(assert (not b!7387602))

(assert (not bm!680062))

(assert (not b!7387557))

(assert (not b!7387312))

(assert (not b!7387647))

(assert (not d!2286884))

(assert (not b!7387424))

(assert (not b!7387356))

(assert (not b!7387739))

(assert (not b!7387525))

(assert (not bm!680073))

(assert (not bm!680051))

(assert (not b!7387353))

(assert (not b!7387473))

(assert (not b!7387197))

(assert (not b!7387513))

(assert (not bm!680102))

(assert (not b!7387137))

(assert (not b!7387436))

(assert (not b!7387427))

(assert (not b!7387344))

(assert (not b!7387544))

(assert (not b!7387451))

(assert (not bm!680111))

(assert (not bm!680108))

(assert (not b!7387722))

(assert (not b!7387545))

(assert (not bm!680091))

(assert (not b_lambda!285073))

(assert (not b!7387605))

(assert (not b!7387580))

(assert (not bm!680100))

(assert (not b!7387714))

(assert (not b!7387727))

(assert (not d!2286886))

(assert (not bs!1922121))

(assert (not bm!680054))

(assert (not b!7387444))

(assert (not bm!680104))

(assert (not b!7387713))

(assert (not b!7387567))

(assert (not bm!680072))

(assert (not b!7387691))

(assert (not b!7387410))

(assert (not b_lambda!285063))

(assert (not b!7387405))

(assert (not b!7387641))

(assert (not b!7387327))

(assert (not b!7387644))

(assert (not b!7387670))

(assert (not b!7387186))

(assert (not b!7387220))

(assert (not b!7387690))

(assert (not b!7387699))

(assert (not b!7387195))

(assert (not b!7387481))

(assert (not b!7387608))

(assert (not d!2286846))

(assert (not b!7387348))

(assert (not b!7387360))

(assert (not b!7387415))

(assert (not b!7387709))

(assert (not b!7387685))

(assert (not b!7387325))

(assert (not b!7387422))

(assert (not b!7387334))

(assert (not bm!680036))

(assert (not b!7387251))

(assert (not b!7387369))

(assert (not b!7387467))

(assert (not b_lambda!285015))

(assert (not b!7387240))

(assert (not bm!680099))

(assert (not bs!1922123))

(assert (not b!7387472))

(assert (not bm!680096))

(assert (not b!7387527))

(assert (not b!7387163))

(assert (not b!7387398))

(assert (not b!7387663))

(assert (not b!7387329))

(assert (not b!7387461))

(assert (not b!7387282))

(assert (not b!7387364))

(assert (not b!7387361))

(assert (not b!7387646))

(assert (not b!7387382))

(assert (not b!7387434))

(assert (not b!7387573))

(assert (not b!7387653))

(assert (not b!7387417))

(assert (not b!7387575))

(assert (not b!7387335))

(assert (not b!7387378))

(assert (not b!7387501))

(assert (not bm!680042))

(assert (not b!7387645))

(assert (not b!7387482))

(assert (not b!7387500))

(assert (not b_lambda!285075))

(assert (not b!7387686))

(assert (not b!7387535))

(assert (not b!7387463))

(assert (not b!7387336))

(assert (not b!7387362))

(assert (not b!7387537))

(assert (not b_lambda!285067))

(assert (not b!7387659))

(assert (not bm!680097))

(assert (not b!7387447))

(assert (not b!7387671))

(assert (not b_lambda!285011))

(assert (not b!7387689))

(assert (not b!7387540))

(assert (not b!7387667))

(assert (not b!7387601))

(assert (not b!7387576))

(assert (not b!7387438))

(assert (not b!7387468))

(assert (not b!7387512))

(assert (not b!7387695))

(assert (not b!7387298))

(assert (not b!7387677))

(assert (not b!7387682))

(assert (not bm!680070))

(assert (not bm!680057))

(assert (not bm!680082))

(assert (not b!7387326))

(assert (not b!7387432))

(assert (not b!7387430))

(assert (not bm!680088))

(assert (not b!7387407))

(assert (not b!7387624))

(assert (not b!7387551))

(assert (not b!7387718))

(assert (not b!7387456))

(assert (not b!7387479))

(assert (not bm!680110))

(assert (not b!7387698))

(assert (not b!7387581))

(assert (not b!7387637))

(assert (not b!7387366))

(assert (not bm!680066))

(assert (not b!7387721))

(assert (not b!7387549))

(assert (not b!7387654))

(assert (not b!7387522))

(assert (not b!7387406))

(assert (not b!7387357))

(assert (not bm!680090))

(assert (not b!7387341))

(assert (not b!7387101))

(assert (not b!7387731))

(assert (not b!7387484))

(assert (not d!2286910))

(assert (not b!7387634))

(assert (not d!2286876))

(assert (not b!7387413))

(assert (not b!7387531))

(assert (not b!7387402))

(assert (not b!7387583))

(assert (not b!7387517))

(assert (not b!7387202))

(assert (not b!7387392))

(assert (not b!7387711))

(assert (not b!7387502))

(assert (not b!7387443))

(assert (not b!7387600))

(assert (not b_lambda!285017))

(assert (not b!7387310))

(assert (not b!7387594))

(assert (not b!7387560))

(assert (not b!7387480))

(assert (not b_lambda!285071))

(assert (not b_lambda!285077))

(assert (not b!7387261))

(assert (not bm!680069))

(assert (not bm!680085))

(assert (not bm!680079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!285079 () Bool)

(assert (= b_lambda!285077 (or d!2286528 b_lambda!285079)))

(declare-fun bs!1922127 () Bool)

(declare-fun d!2286950 () Bool)

(assert (= bs!1922127 (and d!2286950 d!2286528)))

(declare-fun dynLambda!29562 (Int Context!16608) (Set Context!16608))

(assert (=> bs!1922127 (= (dynLambda!29561 lambda!458921 (h!78220 (toList!11727 z!3451))) (set.member lt!2617688 (dynLambda!29562 lambda!458909 (h!78220 (toList!11727 z!3451)))))))

(declare-fun b_lambda!285081 () Bool)

(assert (=> (not b_lambda!285081) (not bs!1922127)))

(declare-fun m!8034998 () Bool)

(assert (=> bs!1922127 m!8034998))

(declare-fun m!8035000 () Bool)

(assert (=> bs!1922127 m!8035000))

(assert (=> bs!1922120 d!2286950))

(push 1)

(assert (not bm!680056))

(assert (not bs!1922122))

(assert (not b!7387435))

(assert (not bs!1922126))

(assert (not b!7387459))

(assert (not bm!680048))

(assert (not b!7387124))

(assert (not b!7387726))

(assert (not bm!680078))

(assert (not b!7387352))

(assert (not d!2286890))

(assert (not b!7387465))

(assert (not b!7387148))

(assert (not b!7387373))

(assert (not b!7387598))

(assert (not b!7387547))

(assert (not b!7387494))

(assert (not b!7387539))

(assert (not bm!680094))

(assert (not b!7387687))

(assert (not bs!1922124))

(assert (not b!7387349))

(assert (not b!7387264))

(assert (not b!7387489))

(assert (not bm!680037))

(assert (not b!7387740))

(assert (not b!7387584))

(assert (not b!7387592))

(assert (not b!7387662))

(assert (not b!7387411))

(assert (not bm!680064))

(assert (not d!2286880))

(assert (not b!7387420))

(assert (not b!7387381))

(assert (not b!7387529))

(assert (not b!7387439))

(assert (not b!7387518))

(assert (not b!7387455))

(assert (not bm!680050))

(assert (not b!7387175))

(assert (not b!7387110))

(assert (not b!7387428))

(assert (not b!7387469))

(assert (not b!7387372))

(assert (not b!7387561))

(assert (not b!7387612))

(assert (not b!7387597))

(assert (not b!7387665))

(assert (not b!7387675))

(assert (not b!7387617))

(assert (not b!7387650))

(assert (not b!7387476))

(assert (not b!7387629))

(assert (not b!7387343))

(assert (not b!7387370))

(assert (not b!7387587))

(assert (not b!7387609))

(assert (not setNonEmpty!55920))

(assert (not b!7387606))

(assert (not b!7387523))

(assert (not b!7387345))

(assert (not b!7387519))

(assert (not d!2286894))

(assert (not b!7387640))

(assert (not b!7387683))

(assert (not b!7387633))

(assert (not b!7387678))

(assert (not b!7387423))

(assert (not b!7387541))

(assert (not b!7387475))

(assert (not b!7387564))

(assert (not b!7387347))

(assert (not b!7387409))

(assert (not bm!680076))

(assert (not b!7387621))

(assert (not b!7387145))

(assert (not b!7387403))

(assert (not b!7387490))

(assert (not b!7387315))

(assert (not b!7387556))

(assert (not b!7387548))

(assert (not d!2286874))

(assert (not bm!680040))

(assert (not setNonEmpty!55922))

(assert (not b!7387393))

(assert (not b!7387730))

(assert (not bm!680047))

(assert (not b!7387638))

(assert (not bm!680105))

(assert (not b!7387693))

(assert (not b!7387616))

(assert (not b!7387389))

(assert (not b!7387651))

(assert (not b!7387330))

(assert (not b!7387460))

(assert (not b!7387418))

(assert (not b!7387273))

(assert (not b!7387486))

(assert (not b!7387508))

(assert (not b!7387723))

(assert (not bm!680067))

(assert (not bm!680041))

(assert (not b!7387630))

(assert (not b!7387498))

(assert (not d!2286860))

(assert (not b!7387419))

(assert (not b!7387589))

(assert (not b!7387655))

(assert (not b!7387493))

(assert (not b!7387136))

(assert (not b!7387738))

(assert (not b!7387397))

(assert (not b!7387569))

(assert (not b!7387694))

(assert (not b!7387532))

(assert (not b_lambda!285069))

(assert (not b!7387340))

(assert (not b!7387339))

(assert (not b!7387618))

(assert (not b!7387505))

(assert (not b!7387151))

(assert (not d!2286908))

(assert (not bm!680039))

(assert (not d!2286896))

(assert (not d!2286912))

(assert (not b!7387464))

(assert (not bm!680093))

(assert (not bs!1922125))

(assert (not b!7387555))

(assert (not b!7387166))

(assert (not b!7387229))

(assert (not b!7387579))

(assert (not b!7387642))

(assert (not b!7387719))

(assert (not b!7387530))

(assert (not b!7387613))

(assert (not b_lambda!285081))

(assert (not b!7387368))

(assert (not b!7387657))

(assert (not b!7387514))

(assert (not b!7387536))

(assert (not b!7387384))

(assert (not b!7387497))

(assert (not b!7387485))

(assert (not b_lambda!285013))

(assert (not b!7387331))

(assert (not b!7387452))

(assert (not b_lambda!285065))

(assert (not b!7387471))

(assert (not b!7387351))

(assert (not b!7387526))

(assert (not b!7387734))

(assert (not b_lambda!284981))

(assert (not b!7387504))

(assert tp_is_empty!48991)

(assert (not b!7387622))

(assert (not b!7387604))

(assert (not b!7387596))

(assert (not b!7387543))

(assert (not b!7387161))

(assert (not b!7387448))

(assert (not b!7387673))

(assert (not b!7387449))

(assert (not b!7387492))

(assert (not b!7387710))

(assert (not b!7387729))

(assert (not bm!680063))

(assert (not b!7387431))

(assert (not b!7387354))

(assert (not b!7387614))

(assert (not b!7387572))

(assert (not b!7387377))

(assert (not b!7387118))

(assert (not b!7387658))

(assert (not b!7387506))

(assert (not b!7387496))

(assert (not b!7387590))

(assert (not b!7387737))

(assert (not b!7387394))

(assert (not b!7387521))

(assert (not bm!680084))

(assert (not setNonEmpty!55921))

(assert (not b!7387679))

(assert (not b!7387445))

(assert (not b!7387388))

(assert (not b!7387395))

(assert (not b!7387390))

(assert (not b!7387533))

(assert (not b!7387705))

(assert (not b!7387386))

(assert (not b!7387365))

(assert (not b!7387626))

(assert (not b!7387577))

(assert (not b!7387666))

(assert (not b!7387332))

(assert (not b!7387426))

(assert (not b!7387441))

(assert (not b!7387632))

(assert (not d!2286914))

(assert (not b!7387706))

(assert (not b!7387733))

(assert (not b!7387440))

(assert (not b!7387610))

(assert (not b!7387620))

(assert (not d!2286842))

(assert (not b!7387488))

(assert (not b_lambda!284985))

(assert (not b!7387338))

(assert (not b!7387707))

(assert (not b!7387628))

(assert (not b!7387376))

(assert (not b!7387380))

(assert (not b!7387702))

(assert (not b!7387477))

(assert (not b!7387563))

(assert (not b!7387697))

(assert (not b!7387552))

(assert (not b!7387374))

(assert (not b!7387457))

(assert (not b!7387515))

(assert (not b_lambda!284983))

(assert (not b!7387509))

(assert (not b!7387399))

(assert (not b!7387735))

(assert (not bm!680045))

(assert (not b!7387593))

(assert (not b!7387565))

(assert (not b!7387211))

(assert (not b!7387715))

(assert (not b!7387144))

(assert (not b!7387625))

(assert (not b!7387649))

(assert (not b!7387453))

(assert (not b!7387385))

(assert (not b!7387585))

(assert (not b!7387510))

(assert (not b!7387661))

(assert (not b!7387146))

(assert (not b!7387553))

(assert (not b!7387701))

(assert (not b!7387414))

(assert (not b!7387703))

(assert (not b!7387669))

(assert (not b!7387358))

(assert (not b!7387568))

(assert (not b!7387559))

(assert (not b!7387681))

(assert (not b!7387674))

(assert (not b!7387725))

(assert (not b!7387588))

(assert (not bm!680101))

(assert (not b!7387636))

(assert (not bm!680060))

(assert (not b!7387401))

(assert (not b!7387717))

(assert (not b!7387571))

(assert (not b!7387602))

(assert (not bm!680062))

(assert (not b!7387557))

(assert (not b!7387312))

(assert (not b!7387647))

(assert (not d!2286884))

(assert (not b!7387424))

(assert (not b!7387356))

(assert (not b!7387739))

(assert (not b!7387525))

(assert (not bm!680073))

(assert (not bm!680051))

(assert (not b!7387353))

(assert (not b!7387473))

(assert (not b!7387197))

(assert (not b!7387513))

(assert (not bm!680102))

(assert (not b!7387137))

(assert (not b!7387436))

(assert (not b!7387427))

(assert (not b!7387344))

(assert (not b!7387544))

(assert (not b!7387451))

(assert (not bm!680111))

(assert (not bm!680108))

(assert (not b!7387722))

(assert (not b!7387545))

(assert (not bm!680091))

(assert (not b_lambda!285073))

(assert (not b!7387605))

(assert (not b!7387580))

(assert (not bm!680100))

(assert (not b!7387714))

(assert (not b!7387727))

(assert (not d!2286886))

(assert (not bs!1922121))

(assert (not bm!680054))

(assert (not b!7387444))

(assert (not bm!680104))

(assert (not b!7387713))

(assert (not b!7387567))

(assert (not bm!680072))

(assert (not b!7387691))

(assert (not b!7387410))

(assert (not b_lambda!285063))

(assert (not b!7387405))

(assert (not b!7387641))

(assert (not b!7387327))

(assert (not b!7387644))

(assert (not b!7387670))

(assert (not b!7387186))

(assert (not b!7387220))

(assert (not b!7387690))

(assert (not b!7387699))

(assert (not b!7387195))

(assert (not b!7387481))

(assert (not b!7387608))

(assert (not d!2286846))

(assert (not b!7387348))

(assert (not b!7387360))

(assert (not b!7387415))

(assert (not b!7387709))

(assert (not b!7387685))

(assert (not b!7387325))

(assert (not b!7387422))

(assert (not b!7387334))

(assert (not bm!680036))

(assert (not b!7387251))

(assert (not b!7387369))

(assert (not b!7387467))

(assert (not b_lambda!285015))

(assert (not b!7387240))

(assert (not bm!680099))

(assert (not bs!1922123))

(assert (not b!7387472))

(assert (not bm!680096))

(assert (not b!7387527))

(assert (not b!7387163))

(assert (not b!7387398))

(assert (not b!7387663))

(assert (not b!7387329))

(assert (not b!7387461))

(assert (not b!7387282))

(assert (not b!7387364))

(assert (not b!7387361))

(assert (not b!7387646))

(assert (not b!7387382))

(assert (not b!7387434))

(assert (not b!7387573))

(assert (not b!7387653))

(assert (not b!7387417))

(assert (not b!7387575))

(assert (not b!7387335))

(assert (not b!7387378))

(assert (not b!7387501))

(assert (not bm!680042))

(assert (not b!7387645))

(assert (not b!7387482))

(assert (not b!7387500))

(assert (not b_lambda!285075))

(assert (not b!7387686))

(assert (not b!7387535))

(assert (not b!7387463))

(assert (not b!7387336))

(assert (not b!7387537))

(assert (not b_lambda!285067))

(assert (not b!7387659))

(assert (not bm!680097))

(assert (not b!7387447))

(assert (not b!7387671))

(assert (not b_lambda!285011))

(assert (not b_lambda!285079))

(assert (not b!7387362))

(assert (not b!7387689))

(assert (not b!7387540))

(assert (not b!7387667))

(assert (not b!7387601))

(assert (not b!7387576))

(assert (not b!7387438))

(assert (not b!7387468))

(assert (not b!7387512))

(assert (not b!7387695))

(assert (not b!7387298))

(assert (not b!7387677))

(assert (not b!7387682))

(assert (not bm!680070))

(assert (not bm!680057))

(assert (not bm!680082))

(assert (not b!7387326))

(assert (not b!7387432))

(assert (not b!7387430))

(assert (not bm!680088))

(assert (not b!7387407))

(assert (not b!7387624))

(assert (not b!7387551))

(assert (not b!7387718))

(assert (not b!7387456))

(assert (not b!7387479))

(assert (not bm!680110))

(assert (not b!7387698))

(assert (not b!7387581))

(assert (not b!7387637))

(assert (not b!7387366))

(assert (not bm!680066))

(assert (not b!7387721))

(assert (not b!7387549))

(assert (not b!7387654))

(assert (not b!7387522))

(assert (not b!7387406))

(assert (not b!7387357))

(assert (not bm!680090))

(assert (not b!7387341))

(assert (not b!7387101))

(assert (not b!7387731))

(assert (not b!7387484))

(assert (not d!2286910))

(assert (not b!7387634))

(assert (not d!2286876))

(assert (not b!7387413))

(assert (not b!7387531))

(assert (not b!7387402))

(assert (not b!7387583))

(assert (not b!7387517))

(assert (not b!7387202))

(assert (not b!7387392))

(assert (not b!7387711))

(assert (not b!7387502))

(assert (not b!7387443))

(assert (not b!7387600))

(assert (not b_lambda!285017))

(assert (not b!7387310))

(assert (not b!7387594))

(assert (not b!7387560))

(assert (not b!7387480))

(assert (not b_lambda!285071))

(assert (not b!7387261))

(assert (not bm!680069))

(assert (not bm!680085))

(assert (not bm!680079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!285083 () Bool)

(assert (= b_lambda!285081 (or b!7385778 b_lambda!285083)))

(declare-fun bs!1922128 () Bool)

(declare-fun d!2286952 () Bool)

(assert (= bs!1922128 (and d!2286952 b!7385778)))

(assert (=> bs!1922128 (= (dynLambda!29562 lambda!458909 (h!78220 (toList!11727 z!3451))) (derivationStepZipperUp!2770 (h!78220 (toList!11727 z!3451)) a!2228))))

(declare-fun m!8035002 () Bool)

(assert (=> bs!1922128 m!8035002))

(assert (=> bs!1922127 d!2286952))

(push 1)

(assert (not bm!680056))

(assert (not bs!1922122))

(assert (not b!7387435))

(assert (not bs!1922126))

(assert (not b!7387459))

(assert (not bm!680048))

(assert (not b!7387124))

(assert (not b!7387726))

(assert (not bm!680078))

(assert (not b!7387352))

(assert (not d!2286890))

(assert (not b!7387465))

(assert (not b!7387148))

(assert (not b!7387373))

(assert (not b!7387598))

(assert (not b!7387547))

(assert (not b!7387494))

(assert (not b!7387539))

(assert (not bm!680094))

(assert (not b!7387687))

(assert (not bs!1922124))

(assert (not b!7387349))

(assert (not b!7387264))

(assert (not b!7387489))

(assert (not bm!680037))

(assert (not b!7387740))

(assert (not b!7387584))

(assert (not b!7387592))

(assert (not b!7387662))

(assert (not b!7387411))

(assert (not bm!680064))

(assert (not d!2286880))

(assert (not b!7387420))

(assert (not b!7387381))

(assert (not b!7387529))

(assert (not b!7387439))

(assert (not b!7387518))

(assert (not b!7387455))

(assert (not bm!680050))

(assert (not b!7387175))

(assert (not b!7387110))

(assert (not b!7387428))

(assert (not b!7387469))

(assert (not b!7387372))

(assert (not b!7387561))

(assert (not b!7387612))

(assert (not b!7387597))

(assert (not b!7387665))

(assert (not b!7387675))

(assert (not b!7387617))

(assert (not b!7387650))

(assert (not b!7387476))

(assert (not b!7387629))

(assert (not b!7387343))

(assert (not b!7387370))

(assert (not b!7387587))

(assert (not b!7387609))

(assert (not setNonEmpty!55920))

(assert (not b!7387606))

(assert (not b!7387523))

(assert (not b!7387345))

(assert (not b!7387519))

(assert (not d!2286894))

(assert (not b!7387640))

(assert (not b!7387683))

(assert (not b!7387633))

(assert (not b!7387678))

(assert (not b!7387423))

(assert (not b!7387541))

(assert (not b!7387475))

(assert (not b!7387564))

(assert (not b!7387347))

(assert (not b!7387409))

(assert (not bm!680076))

(assert (not b!7387621))

(assert (not b!7387145))

(assert (not b!7387403))

(assert (not b!7387490))

(assert (not b!7387315))

(assert (not b!7387556))

(assert (not b!7387548))

(assert (not d!2286874))

(assert (not bm!680040))

(assert (not setNonEmpty!55922))

(assert (not b!7387393))

(assert (not b!7387730))

(assert (not bm!680047))

(assert (not b!7387638))

(assert (not bm!680105))

(assert (not b!7387693))

(assert (not b!7387616))

(assert (not b!7387389))

(assert (not b!7387651))

(assert (not b!7387330))

(assert (not b!7387460))

(assert (not b!7387418))

(assert (not b!7387273))

(assert (not b!7387486))

(assert (not b!7387508))

(assert (not b!7387723))

(assert (not bm!680067))

(assert (not bm!680041))

(assert (not b!7387630))

(assert (not b!7387498))

(assert (not d!2286860))

(assert (not b!7387419))

(assert (not b!7387589))

(assert (not b!7387655))

(assert (not b!7387493))

(assert (not b!7387136))

(assert (not b!7387738))

(assert (not b!7387397))

(assert (not b!7387569))

(assert (not b!7387694))

(assert (not b!7387532))

(assert (not b_lambda!285069))

(assert (not b!7387340))

(assert (not b!7387339))

(assert (not b!7387618))

(assert (not b!7387505))

(assert (not b!7387151))

(assert (not d!2286908))

(assert (not bm!680039))

(assert (not d!2286896))

(assert (not d!2286912))

(assert (not b!7387464))

(assert (not bm!680093))

(assert (not bs!1922125))

(assert (not b!7387555))

(assert (not b!7387166))

(assert (not b!7387229))

(assert (not b!7387368))

(assert (not b!7387579))

(assert (not b!7387642))

(assert (not b!7387719))

(assert (not b!7387530))

(assert (not b!7387613))

(assert (not b!7387657))

(assert (not b!7387514))

(assert (not b!7387536))

(assert (not b!7387384))

(assert (not b!7387497))

(assert (not b!7387485))

(assert (not b_lambda!285013))

(assert (not b!7387331))

(assert (not b!7387452))

(assert (not b_lambda!285065))

(assert (not b!7387471))

(assert (not b!7387351))

(assert (not b!7387526))

(assert (not b!7387734))

(assert (not b_lambda!284981))

(assert (not b!7387504))

(assert tp_is_empty!48991)

(assert (not b!7387622))

(assert (not b!7387604))

(assert (not b!7387596))

(assert (not b!7387543))

(assert (not b!7387161))

(assert (not b!7387448))

(assert (not b!7387673))

(assert (not b!7387449))

(assert (not b!7387492))

(assert (not b!7387710))

(assert (not b!7387729))

(assert (not bm!680063))

(assert (not b!7387431))

(assert (not b!7387354))

(assert (not b!7387614))

(assert (not b!7387572))

(assert (not b!7387377))

(assert (not b!7387118))

(assert (not b!7387658))

(assert (not b!7387506))

(assert (not b!7387496))

(assert (not b!7387590))

(assert (not b!7387737))

(assert (not b!7387394))

(assert (not b!7387521))

(assert (not bm!680084))

(assert (not setNonEmpty!55921))

(assert (not b!7387679))

(assert (not b!7387445))

(assert (not b!7387388))

(assert (not b!7387395))

(assert (not b!7387390))

(assert (not b!7387533))

(assert (not b!7387705))

(assert (not b!7387386))

(assert (not b!7387365))

(assert (not b!7387626))

(assert (not b!7387577))

(assert (not b!7387666))

(assert (not b!7387332))

(assert (not b!7387426))

(assert (not bs!1922128))

(assert (not b!7387441))

(assert (not b!7387632))

(assert (not d!2286914))

(assert (not b!7387706))

(assert (not b!7387733))

(assert (not b!7387440))

(assert (not b!7387610))

(assert (not b!7387620))

(assert (not d!2286842))

(assert (not b!7387488))

(assert (not b_lambda!284985))

(assert (not b!7387338))

(assert (not b!7387707))

(assert (not b!7387628))

(assert (not b!7387376))

(assert (not b!7387380))

(assert (not b!7387702))

(assert (not b!7387477))

(assert (not b!7387563))

(assert (not b!7387697))

(assert (not b!7387552))

(assert (not b!7387374))

(assert (not b!7387457))

(assert (not b!7387515))

(assert (not b_lambda!284983))

(assert (not b!7387509))

(assert (not b!7387399))

(assert (not b!7387735))

(assert (not bm!680045))

(assert (not b!7387593))

(assert (not b!7387565))

(assert (not b!7387211))

(assert (not b!7387715))

(assert (not b!7387144))

(assert (not b!7387625))

(assert (not b!7387649))

(assert (not b!7387453))

(assert (not b!7387385))

(assert (not b!7387585))

(assert (not b!7387510))

(assert (not b!7387661))

(assert (not b!7387146))

(assert (not b!7387553))

(assert (not b!7387701))

(assert (not b!7387414))

(assert (not b!7387703))

(assert (not b!7387669))

(assert (not b!7387358))

(assert (not b!7387568))

(assert (not b!7387559))

(assert (not b!7387681))

(assert (not b!7387674))

(assert (not b!7387725))

(assert (not b!7387588))

(assert (not bm!680101))

(assert (not b!7387636))

(assert (not bm!680060))

(assert (not b!7387401))

(assert (not b!7387717))

(assert (not b!7387571))

(assert (not b!7387602))

(assert (not bm!680062))

(assert (not b!7387557))

(assert (not b!7387312))

(assert (not b!7387647))

(assert (not d!2286884))

(assert (not b!7387424))

(assert (not b!7387356))

(assert (not b!7387739))

(assert (not b!7387525))

(assert (not bm!680073))

(assert (not bm!680051))

(assert (not b!7387353))

(assert (not b!7387473))

(assert (not b_lambda!285083))

(assert (not b!7387197))

(assert (not b!7387513))

(assert (not bm!680102))

(assert (not b!7387137))

(assert (not b!7387436))

(assert (not b!7387427))

(assert (not b!7387344))

(assert (not b!7387544))

(assert (not b!7387451))

(assert (not bm!680111))

(assert (not bm!680108))

(assert (not b!7387722))

(assert (not b!7387545))

(assert (not bm!680091))

(assert (not b_lambda!285073))

(assert (not b!7387605))

(assert (not b!7387580))

(assert (not bm!680100))

(assert (not b!7387714))

(assert (not b!7387727))

(assert (not d!2286886))

(assert (not bs!1922121))

(assert (not bm!680054))

(assert (not b!7387444))

(assert (not bm!680104))

(assert (not b!7387713))

(assert (not b!7387567))

(assert (not bm!680072))

(assert (not b!7387691))

(assert (not b!7387410))

(assert (not b_lambda!285063))

(assert (not b!7387405))

(assert (not b!7387641))

(assert (not b!7387327))

(assert (not b!7387644))

(assert (not b!7387670))

(assert (not b!7387186))

(assert (not b!7387220))

(assert (not b!7387690))

(assert (not b!7387699))

(assert (not b!7387195))

(assert (not b!7387481))

(assert (not b!7387608))

(assert (not d!2286846))

(assert (not b!7387348))

(assert (not b!7387360))

(assert (not b!7387415))

(assert (not b!7387709))

(assert (not b!7387685))

(assert (not b!7387325))

(assert (not b!7387422))

(assert (not b!7387334))

(assert (not bm!680036))

(assert (not b!7387251))

(assert (not b!7387369))

(assert (not b!7387467))

(assert (not b_lambda!285015))

(assert (not b!7387240))

(assert (not bm!680099))

(assert (not bs!1922123))

(assert (not b!7387472))

(assert (not bm!680096))

(assert (not b!7387527))

(assert (not b!7387163))

(assert (not b!7387398))

(assert (not b!7387663))

(assert (not b!7387329))

(assert (not b!7387461))

(assert (not b!7387282))

(assert (not b!7387364))

(assert (not b!7387361))

(assert (not b!7387646))

(assert (not b!7387382))

(assert (not b!7387434))

(assert (not b!7387573))

(assert (not b!7387653))

(assert (not b!7387417))

(assert (not b!7387575))

(assert (not b!7387335))

(assert (not b!7387378))

(assert (not b!7387501))

(assert (not bm!680042))

(assert (not b!7387645))

(assert (not b!7387482))

(assert (not b!7387500))

(assert (not b_lambda!285075))

(assert (not b!7387686))

(assert (not b!7387535))

(assert (not b!7387463))

(assert (not b!7387336))

(assert (not b!7387537))

(assert (not b_lambda!285067))

(assert (not b!7387659))

(assert (not bm!680097))

(assert (not b!7387447))

(assert (not b!7387671))

(assert (not b_lambda!285011))

(assert (not b_lambda!285079))

(assert (not b!7387362))

(assert (not b!7387689))

(assert (not b!7387540))

(assert (not b!7387667))

(assert (not b!7387601))

(assert (not b!7387576))

(assert (not b!7387438))

(assert (not b!7387468))

(assert (not b!7387512))

(assert (not b!7387695))

(assert (not b!7387298))

(assert (not b!7387677))

(assert (not b!7387682))

(assert (not bm!680070))

(assert (not bm!680057))

(assert (not bm!680082))

(assert (not b!7387326))

(assert (not b!7387432))

(assert (not b!7387430))

(assert (not bm!680088))

(assert (not b!7387407))

(assert (not b!7387624))

(assert (not b!7387551))

(assert (not b!7387718))

(assert (not b!7387456))

(assert (not b!7387479))

(assert (not bm!680110))

(assert (not b!7387698))

(assert (not b!7387581))

(assert (not b!7387637))

(assert (not b!7387366))

(assert (not bm!680066))

(assert (not b!7387721))

(assert (not b!7387549))

(assert (not b!7387654))

(assert (not b!7387522))

(assert (not b!7387406))

(assert (not b!7387357))

(assert (not bm!680090))

(assert (not b!7387341))

(assert (not b!7387101))

(assert (not b!7387731))

(assert (not b!7387484))

(assert (not d!2286910))

(assert (not b!7387634))

(assert (not d!2286876))

(assert (not b!7387413))

(assert (not b!7387531))

(assert (not b!7387402))

(assert (not b!7387583))

(assert (not b!7387517))

(assert (not b!7387202))

(assert (not b!7387392))

(assert (not b!7387711))

(assert (not b!7387502))

(assert (not b!7387443))

(assert (not b!7387600))

(assert (not b_lambda!285017))

(assert (not b!7387310))

(assert (not b!7387594))

(assert (not b!7387560))

(assert (not b!7387480))

(assert (not b_lambda!285071))

(assert (not b!7387261))

(assert (not bm!680069))

(assert (not bm!680085))

(assert (not bm!680079))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

