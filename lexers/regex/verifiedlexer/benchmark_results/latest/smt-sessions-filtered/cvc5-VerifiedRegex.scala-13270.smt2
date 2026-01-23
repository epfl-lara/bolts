; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721972 () Bool)

(assert start!721972)

(declare-fun b!7410060 () Bool)

(assert (=> b!7410060 true))

(declare-fun b!7410054 () Bool)

(assert (=> b!7410054 true))

(declare-fun lambda!459946 () Int)

(declare-fun lambda!459945 () Int)

(assert (=> b!7410054 (not (= lambda!459946 lambda!459945))))

(assert (=> b!7410054 true))

(assert (=> b!7410054 true))

(declare-fun b!7410052 () Bool)

(declare-fun res!2983051 () Bool)

(declare-fun e!4431862 () Bool)

(assert (=> b!7410052 (=> (not res!2983051) (not e!4431862))))

(declare-datatypes ((C!39102 0))(
  ( (C!39103 (val!29925 Int)) )
))
(declare-datatypes ((Regex!19414 0))(
  ( (ElementMatch!19414 (c!1375465 C!39102)) (Concat!28259 (regOne!39340 Regex!19414) (regTwo!39340 Regex!19414)) (EmptyExpr!19414) (Star!19414 (reg!19743 Regex!19414)) (EmptyLang!19414) (Union!19414 (regOne!39341 Regex!19414) (regTwo!39341 Regex!19414)) )
))
(declare-datatypes ((List!72028 0))(
  ( (Nil!71904) (Cons!71904 (h!78352 Regex!19414) (t!386587 List!72028)) )
))
(declare-datatypes ((Context!16708 0))(
  ( (Context!16709 (exprs!8854 List!72028)) )
))
(declare-fun c!10532 () Context!16708)

(declare-fun isEmpty!41062 (List!72028) Bool)

(declare-fun tail!14827 (List!72028) List!72028)

(assert (=> b!7410052 (= res!2983051 (isEmpty!41062 (tail!14827 (exprs!8854 c!10532))))))

(declare-fun b!7410053 () Bool)

(declare-fun e!4431867 () Bool)

(declare-datatypes ((List!72029 0))(
  ( (Nil!71905) (Cons!71905 (h!78353 C!39102) (t!386588 List!72029)) )
))
(declare-fun s!7927 () List!72029)

(declare-fun a!2228 () C!39102)

(assert (=> b!7410053 (= e!4431867 (not (= s!7927 (Cons!71905 a!2228 Nil!71905))))))

(declare-datatypes ((Unit!165731 0))(
  ( (Unit!165732) )
))
(declare-fun e!4431865 () Unit!165731)

(declare-fun Unit!165733 () Unit!165731)

(assert (=> b!7410054 (= e!4431865 Unit!165733)))

(declare-fun lt!2618941 () Context!16708)

(declare-fun lt!2618935 () (Set Context!16708))

(declare-fun getWitness!2461 ((Set Context!16708) Int) Context!16708)

(assert (=> b!7410054 (= lt!2618941 (getWitness!2461 lt!2618935 lambda!459945))))

(declare-fun lambda!459944 () Int)

(declare-fun z!3451 () (Set Context!16708))

(declare-fun lt!2618937 () Context!16708)

(declare-fun flatMapPost!221 ((Set Context!16708) Int Context!16708) Context!16708)

(assert (=> b!7410054 (= (flatMapPost!221 z!3451 lambda!459944 lt!2618941) lt!2618937)))

(declare-fun lt!2618942 () Context!16708)

(assert (=> b!7410054 (= lt!2618942 (getWitness!2461 z!3451 lambda!459946))))

(assert (=> b!7410054 false))

(declare-fun res!2983049 () Bool)

(assert (=> start!721972 (=> (not res!2983049) (not e!4431862))))

(assert (=> start!721972 (= res!2983049 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16708)))))))

(assert (=> start!721972 e!4431862))

(declare-fun condSetEmpty!56294 () Bool)

(assert (=> start!721972 (= condSetEmpty!56294 (= z!3451 (as set.empty (Set Context!16708))))))

(declare-fun setRes!56294 () Bool)

(assert (=> start!721972 setRes!56294))

(declare-fun e!4431866 () Bool)

(declare-fun inv!91897 (Context!16708) Bool)

(assert (=> start!721972 (and (inv!91897 c!10532) e!4431866)))

(declare-fun tp_is_empty!49091 () Bool)

(assert (=> start!721972 tp_is_empty!49091))

(declare-fun e!4431868 () Bool)

(assert (=> start!721972 e!4431868))

(declare-fun b!7410055 () Bool)

(declare-fun res!2983048 () Bool)

(assert (=> b!7410055 (=> (not res!2983048) (not e!4431862))))

(assert (=> b!7410055 (= res!2983048 (and (is-Cons!71905 s!7927) (= (h!78353 s!7927) a!2228)))))

(declare-fun b!7410056 () Bool)

(declare-fun tp!2120167 () Bool)

(assert (=> b!7410056 (= e!4431868 (and tp_is_empty!49091 tp!2120167))))

(declare-fun setIsEmpty!56294 () Bool)

(assert (=> setIsEmpty!56294 setRes!56294))

(declare-fun b!7410057 () Bool)

(declare-fun e!4431864 () Bool)

(assert (=> b!7410057 (= e!4431862 e!4431864)))

(declare-fun res!2983045 () Bool)

(assert (=> b!7410057 (=> (not res!2983045) (not e!4431864))))

(declare-fun lt!2618938 () (Set Context!16708))

(declare-fun lt!2618939 () C!39102)

(declare-fun derivationStepZipperUp!2818 (Context!16708 C!39102) (Set Context!16708))

(assert (=> b!7410057 (= res!2983045 (= (derivationStepZipperUp!2818 c!10532 lt!2618939) lt!2618938))))

(declare-fun lt!2618936 () Context!16708)

(assert (=> b!7410057 (= lt!2618938 (set.insert lt!2618936 (as set.empty (Set Context!16708))))))

(assert (=> b!7410057 (= lt!2618936 (Context!16709 Nil!71904))))

(declare-fun derivationStepZipper!3688 ((Set Context!16708) C!39102) (Set Context!16708))

(assert (=> b!7410057 (= lt!2618935 (derivationStepZipper!3688 z!3451 lt!2618939))))

(declare-fun head!15220 (List!72029) C!39102)

(assert (=> b!7410057 (= lt!2618939 (head!15220 s!7927))))

(declare-fun b!7410058 () Bool)

(declare-fun res!2983047 () Bool)

(assert (=> b!7410058 (=> (not res!2983047) (not e!4431862))))

(assert (=> b!7410058 (= res!2983047 (not (isEmpty!41062 (exprs!8854 c!10532))))))

(declare-fun b!7410059 () Bool)

(declare-fun e!4431860 () Bool)

(declare-fun tp!2120163 () Bool)

(assert (=> b!7410059 (= e!4431860 tp!2120163)))

(declare-fun e!4431869 () Bool)

(assert (=> b!7410060 (= e!4431864 (not e!4431869))))

(declare-fun res!2983053 () Bool)

(assert (=> b!7410060 (=> res!2983053 e!4431869)))

(assert (=> b!7410060 (= res!2983053 (not (set.member lt!2618936 lt!2618935)))))

(assert (=> b!7410060 (= (flatMapPost!221 z!3451 lambda!459944 lt!2618936) lt!2618937)))

(declare-fun empty!3603 () Context!16708)

(assert (=> b!7410060 (= lt!2618937 empty!3603)))

(assert (=> b!7410060 true))

(assert (=> b!7410060 (and (inv!91897 empty!3603) e!4431860)))

(declare-fun b!7410061 () Bool)

(declare-fun tp!2120166 () Bool)

(assert (=> b!7410061 (= e!4431866 tp!2120166)))

(declare-fun b!7410062 () Bool)

(declare-fun e!4431861 () Bool)

(assert (=> b!7410062 (= e!4431869 e!4431861)))

(declare-fun res!2983052 () Bool)

(assert (=> b!7410062 (=> res!2983052 e!4431861)))

(declare-fun isEmpty!41063 (List!72029) Bool)

(assert (=> b!7410062 (= res!2983052 (isEmpty!41063 (t!386588 s!7927)))))

(declare-fun lt!2618943 () Bool)

(assert (=> b!7410062 lt!2618943))

(declare-fun lt!2618940 () Unit!165731)

(assert (=> b!7410062 (= lt!2618940 e!4431865)))

(declare-fun c!1375464 () Bool)

(assert (=> b!7410062 (= c!1375464 (not lt!2618943))))

(assert (=> b!7410062 (= lt!2618943 (= lt!2618935 lt!2618938))))

(declare-fun b!7410063 () Bool)

(assert (=> b!7410063 (= e!4431861 e!4431867)))

(declare-fun res!2983050 () Bool)

(assert (=> b!7410063 (=> res!2983050 e!4431867)))

(declare-fun matchZipper!3814 ((Set Context!16708) List!72029) Bool)

(assert (=> b!7410063 (= res!2983050 (matchZipper!3814 z!3451 s!7927))))

(assert (=> b!7410063 (not (matchZipper!3814 lt!2618935 (t!386588 s!7927)))))

(declare-fun lt!2618934 () Unit!165731)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!69 ((Set Context!16708) List!72029) Unit!165731)

(assert (=> b!7410063 (= lt!2618934 (lemmaZipperOfEmptyContextMatchesEmptyString!69 lt!2618935 (t!386588 s!7927)))))

(declare-fun b!7410064 () Bool)

(declare-fun e!4431863 () Bool)

(declare-fun tp!2120164 () Bool)

(assert (=> b!7410064 (= e!4431863 tp!2120164)))

(declare-fun b!7410065 () Bool)

(declare-fun res!2983046 () Bool)

(assert (=> b!7410065 (=> (not res!2983046) (not e!4431862))))

(declare-fun head!15221 (List!72028) Regex!19414)

(assert (=> b!7410065 (= res!2983046 (= (head!15221 (exprs!8854 c!10532)) (ElementMatch!19414 a!2228)))))

(declare-fun setElem!56294 () Context!16708)

(declare-fun tp!2120165 () Bool)

(declare-fun setNonEmpty!56294 () Bool)

(assert (=> setNonEmpty!56294 (= setRes!56294 (and tp!2120165 (inv!91897 setElem!56294) e!4431863))))

(declare-fun setRest!56294 () (Set Context!16708))

(assert (=> setNonEmpty!56294 (= z!3451 (set.union (set.insert setElem!56294 (as set.empty (Set Context!16708))) setRest!56294))))

(declare-fun b!7410066 () Bool)

(declare-fun Unit!165734 () Unit!165731)

(assert (=> b!7410066 (= e!4431865 Unit!165734)))

(assert (= (and start!721972 res!2983049) b!7410058))

(assert (= (and b!7410058 res!2983047) b!7410065))

(assert (= (and b!7410065 res!2983046) b!7410052))

(assert (= (and b!7410052 res!2983051) b!7410055))

(assert (= (and b!7410055 res!2983048) b!7410057))

(assert (= (and b!7410057 res!2983045) b!7410060))

(assert (= b!7410060 b!7410059))

(assert (= (and b!7410060 (not res!2983053)) b!7410062))

(assert (= (and b!7410062 c!1375464) b!7410054))

(assert (= (and b!7410062 (not c!1375464)) b!7410066))

(assert (= (and b!7410062 (not res!2983052)) b!7410063))

(assert (= (and b!7410063 (not res!2983050)) b!7410053))

(assert (= (and start!721972 condSetEmpty!56294) setIsEmpty!56294))

(assert (= (and start!721972 (not condSetEmpty!56294)) setNonEmpty!56294))

(assert (= setNonEmpty!56294 b!7410064))

(assert (= start!721972 b!7410061))

(assert (= (and start!721972 (is-Cons!71905 s!7927)) b!7410056))

(declare-fun m!8045552 () Bool)

(assert (=> setNonEmpty!56294 m!8045552))

(declare-fun m!8045554 () Bool)

(assert (=> b!7410065 m!8045554))

(declare-fun m!8045556 () Bool)

(assert (=> b!7410063 m!8045556))

(declare-fun m!8045558 () Bool)

(assert (=> b!7410063 m!8045558))

(declare-fun m!8045560 () Bool)

(assert (=> b!7410063 m!8045560))

(declare-fun m!8045562 () Bool)

(assert (=> start!721972 m!8045562))

(declare-fun m!8045564 () Bool)

(assert (=> start!721972 m!8045564))

(declare-fun m!8045566 () Bool)

(assert (=> b!7410058 m!8045566))

(declare-fun m!8045568 () Bool)

(assert (=> b!7410062 m!8045568))

(declare-fun m!8045570 () Bool)

(assert (=> b!7410057 m!8045570))

(declare-fun m!8045572 () Bool)

(assert (=> b!7410057 m!8045572))

(declare-fun m!8045574 () Bool)

(assert (=> b!7410057 m!8045574))

(declare-fun m!8045576 () Bool)

(assert (=> b!7410057 m!8045576))

(declare-fun m!8045578 () Bool)

(assert (=> b!7410052 m!8045578))

(assert (=> b!7410052 m!8045578))

(declare-fun m!8045580 () Bool)

(assert (=> b!7410052 m!8045580))

(declare-fun m!8045582 () Bool)

(assert (=> b!7410054 m!8045582))

(declare-fun m!8045584 () Bool)

(assert (=> b!7410054 m!8045584))

(declare-fun m!8045586 () Bool)

(assert (=> b!7410054 m!8045586))

(declare-fun m!8045588 () Bool)

(assert (=> b!7410060 m!8045588))

(declare-fun m!8045590 () Bool)

(assert (=> b!7410060 m!8045590))

(declare-fun m!8045592 () Bool)

(assert (=> b!7410060 m!8045592))

(push 1)

(assert (not b!7410058))

(assert (not b!7410059))

(assert tp_is_empty!49091)

(assert (not b!7410061))

(assert (not setNonEmpty!56294))

(assert (not b!7410054))

(assert (not start!721972))

(assert (not b!7410052))

(assert (not b!7410060))

(assert (not b!7410062))

(assert (not b!7410063))

(assert (not b!7410065))

(assert (not b!7410057))

(assert (not b!7410064))

(assert (not b!7410056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2291823 () Bool)

(assert (=> d!2291823 (= (isEmpty!41062 (exprs!8854 c!10532)) (is-Nil!71904 (exprs!8854 c!10532)))))

(assert (=> b!7410058 d!2291823))

(declare-fun d!2291825 () Bool)

(declare-fun e!4431902 () Bool)

(assert (=> d!2291825 e!4431902))

(declare-fun res!2983083 () Bool)

(assert (=> d!2291825 (=> (not res!2983083) (not e!4431902))))

(declare-fun lt!2618979 () Context!16708)

(declare-fun dynLambda!29678 (Int Context!16708) Bool)

(assert (=> d!2291825 (= res!2983083 (dynLambda!29678 lambda!459945 lt!2618979))))

(declare-datatypes ((List!72032 0))(
  ( (Nil!71908) (Cons!71908 (h!78356 Context!16708) (t!386591 List!72032)) )
))
(declare-fun getWitness!2463 (List!72032 Int) Context!16708)

(declare-fun toList!11765 ((Set Context!16708)) List!72032)

(assert (=> d!2291825 (= lt!2618979 (getWitness!2463 (toList!11765 lt!2618935) lambda!459945))))

(declare-fun exists!4784 ((Set Context!16708) Int) Bool)

(assert (=> d!2291825 (exists!4784 lt!2618935 lambda!459945)))

(assert (=> d!2291825 (= (getWitness!2461 lt!2618935 lambda!459945) lt!2618979)))

(declare-fun b!7410129 () Bool)

(assert (=> b!7410129 (= e!4431902 (set.member lt!2618979 lt!2618935))))

(assert (= (and d!2291825 res!2983083) b!7410129))

(declare-fun b_lambda!286583 () Bool)

(assert (=> (not b_lambda!286583) (not d!2291825)))

(declare-fun m!8045646 () Bool)

(assert (=> d!2291825 m!8045646))

(declare-fun m!8045650 () Bool)

(assert (=> d!2291825 m!8045650))

(assert (=> d!2291825 m!8045650))

(declare-fun m!8045652 () Bool)

(assert (=> d!2291825 m!8045652))

(declare-fun m!8045654 () Bool)

(assert (=> d!2291825 m!8045654))

(declare-fun m!8045656 () Bool)

(assert (=> b!7410129 m!8045656))

(assert (=> b!7410054 d!2291825))

(declare-fun bs!1924570 () Bool)

(declare-fun d!2291831 () Bool)

(assert (= bs!1924570 (and d!2291831 b!7410054)))

(declare-fun lambda!459967 () Int)

(assert (=> bs!1924570 (not (= lambda!459967 lambda!459945))))

(assert (=> bs!1924570 (not (= lambda!459967 lambda!459946))))

(assert (=> d!2291831 true))

(assert (=> d!2291831 true))

(declare-fun order!29549 () Int)

(declare-fun order!29551 () Int)

(declare-fun dynLambda!29679 (Int Int) Int)

(declare-fun dynLambda!29680 (Int Int) Int)

(assert (=> d!2291831 (< (dynLambda!29679 order!29549 lambda!459944) (dynLambda!29680 order!29551 lambda!459967))))

(declare-fun flatMap!3214 ((Set Context!16708) Int) (Set Context!16708))

(assert (=> d!2291831 (= (set.member lt!2618941 (flatMap!3214 z!3451 lambda!459944)) (exists!4784 z!3451 lambda!459967))))

(declare-fun lt!2618982 () Context!16708)

(declare-fun choose!57473 ((Set Context!16708) Int Context!16708) Context!16708)

(assert (=> d!2291831 (= lt!2618982 (choose!57473 z!3451 lambda!459944 lt!2618941))))

(assert (=> d!2291831 (= (flatMapPost!221 z!3451 lambda!459944 lt!2618941) lt!2618982)))

(declare-fun bs!1924571 () Bool)

(assert (= bs!1924571 d!2291831))

(declare-fun m!8045658 () Bool)

(assert (=> bs!1924571 m!8045658))

(declare-fun m!8045660 () Bool)

(assert (=> bs!1924571 m!8045660))

(declare-fun m!8045662 () Bool)

(assert (=> bs!1924571 m!8045662))

(declare-fun m!8045664 () Bool)

(assert (=> bs!1924571 m!8045664))

(assert (=> b!7410054 d!2291831))

(declare-fun d!2291835 () Bool)

(declare-fun e!4431903 () Bool)

(assert (=> d!2291835 e!4431903))

(declare-fun res!2983084 () Bool)

(assert (=> d!2291835 (=> (not res!2983084) (not e!4431903))))

(declare-fun lt!2618983 () Context!16708)

(assert (=> d!2291835 (= res!2983084 (dynLambda!29678 lambda!459946 lt!2618983))))

(assert (=> d!2291835 (= lt!2618983 (getWitness!2463 (toList!11765 z!3451) lambda!459946))))

(assert (=> d!2291835 (exists!4784 z!3451 lambda!459946)))

(assert (=> d!2291835 (= (getWitness!2461 z!3451 lambda!459946) lt!2618983)))

(declare-fun b!7410133 () Bool)

(assert (=> b!7410133 (= e!4431903 (set.member lt!2618983 z!3451))))

(assert (= (and d!2291835 res!2983084) b!7410133))

(declare-fun b_lambda!286585 () Bool)

(assert (=> (not b_lambda!286585) (not d!2291835)))

(declare-fun m!8045666 () Bool)

(assert (=> d!2291835 m!8045666))

(declare-fun m!8045668 () Bool)

(assert (=> d!2291835 m!8045668))

(assert (=> d!2291835 m!8045668))

(declare-fun m!8045670 () Bool)

(assert (=> d!2291835 m!8045670))

(declare-fun m!8045672 () Bool)

(assert (=> d!2291835 m!8045672))

(declare-fun m!8045674 () Bool)

(assert (=> b!7410133 m!8045674))

(assert (=> b!7410054 d!2291835))

(declare-fun d!2291837 () Bool)

(assert (=> d!2291837 (= (head!15221 (exprs!8854 c!10532)) (h!78352 (exprs!8854 c!10532)))))

(assert (=> b!7410065 d!2291837))

(declare-fun bs!1924572 () Bool)

(declare-fun d!2291839 () Bool)

(assert (= bs!1924572 (and d!2291839 b!7410054)))

(declare-fun lambda!459968 () Int)

(assert (=> bs!1924572 (not (= lambda!459968 lambda!459945))))

(assert (=> bs!1924572 (not (= lambda!459968 lambda!459946))))

(declare-fun bs!1924573 () Bool)

(assert (= bs!1924573 (and d!2291839 d!2291831)))

(assert (=> bs!1924573 (= (= lt!2618936 lt!2618941) (= lambda!459968 lambda!459967))))

(assert (=> d!2291839 true))

(assert (=> d!2291839 true))

(assert (=> d!2291839 (< (dynLambda!29679 order!29549 lambda!459944) (dynLambda!29680 order!29551 lambda!459968))))

(assert (=> d!2291839 (= (set.member lt!2618936 (flatMap!3214 z!3451 lambda!459944)) (exists!4784 z!3451 lambda!459968))))

(declare-fun lt!2618984 () Context!16708)

(assert (=> d!2291839 (= lt!2618984 (choose!57473 z!3451 lambda!459944 lt!2618936))))

(assert (=> d!2291839 (= (flatMapPost!221 z!3451 lambda!459944 lt!2618936) lt!2618984)))

(declare-fun bs!1924574 () Bool)

(assert (= bs!1924574 d!2291839))

(assert (=> bs!1924574 m!8045658))

(declare-fun m!8045676 () Bool)

(assert (=> bs!1924574 m!8045676))

(declare-fun m!8045678 () Bool)

(assert (=> bs!1924574 m!8045678))

(declare-fun m!8045680 () Bool)

(assert (=> bs!1924574 m!8045680))

(assert (=> b!7410060 d!2291839))

(declare-fun d!2291841 () Bool)

(declare-fun lambda!459971 () Int)

(declare-fun forall!18198 (List!72028 Int) Bool)

(assert (=> d!2291841 (= (inv!91897 empty!3603) (forall!18198 (exprs!8854 empty!3603) lambda!459971))))

(declare-fun bs!1924575 () Bool)

(assert (= bs!1924575 d!2291841))

(declare-fun m!8045692 () Bool)

(assert (=> bs!1924575 m!8045692))

(assert (=> b!7410060 d!2291841))

(declare-fun bs!1924576 () Bool)

(declare-fun d!2291845 () Bool)

(assert (= bs!1924576 (and d!2291845 d!2291841)))

(declare-fun lambda!459972 () Int)

(assert (=> bs!1924576 (= lambda!459972 lambda!459971)))

(assert (=> d!2291845 (= (inv!91897 setElem!56294) (forall!18198 (exprs!8854 setElem!56294) lambda!459972))))

(declare-fun bs!1924577 () Bool)

(assert (= bs!1924577 d!2291845))

(declare-fun m!8045694 () Bool)

(assert (=> bs!1924577 m!8045694))

(assert (=> setNonEmpty!56294 d!2291845))

(declare-fun d!2291847 () Bool)

(assert (=> d!2291847 (= (isEmpty!41062 (tail!14827 (exprs!8854 c!10532))) (is-Nil!71904 (tail!14827 (exprs!8854 c!10532))))))

(assert (=> b!7410052 d!2291847))

(declare-fun d!2291849 () Bool)

(assert (=> d!2291849 (= (tail!14827 (exprs!8854 c!10532)) (t!386587 (exprs!8854 c!10532)))))

(assert (=> b!7410052 d!2291849))

(declare-fun d!2291851 () Bool)

(assert (=> d!2291851 (= (isEmpty!41063 (t!386588 s!7927)) (is-Nil!71905 (t!386588 s!7927)))))

(assert (=> b!7410062 d!2291851))

(declare-fun bs!1924580 () Bool)

(declare-fun d!2291853 () Bool)

(assert (= bs!1924580 (and d!2291853 d!2291841)))

(declare-fun lambda!459974 () Int)

(assert (=> bs!1924580 (= lambda!459974 lambda!459971)))

(declare-fun bs!1924581 () Bool)

(assert (= bs!1924581 (and d!2291853 d!2291845)))

(assert (=> bs!1924581 (= lambda!459974 lambda!459972)))

(assert (=> d!2291853 (= (inv!91897 c!10532) (forall!18198 (exprs!8854 c!10532) lambda!459974))))

(declare-fun bs!1924582 () Bool)

(assert (= bs!1924582 d!2291853))

(declare-fun m!8045696 () Bool)

(assert (=> bs!1924582 m!8045696))

(assert (=> start!721972 d!2291853))

(declare-fun b!7410148 () Bool)

(declare-fun e!4431916 () (Set Context!16708))

(declare-fun e!4431915 () (Set Context!16708))

(assert (=> b!7410148 (= e!4431916 e!4431915)))

(declare-fun c!1375482 () Bool)

(assert (=> b!7410148 (= c!1375482 (is-Cons!71904 (exprs!8854 c!10532)))))

(declare-fun bm!682240 () Bool)

(declare-fun call!682245 () (Set Context!16708))

(declare-fun derivationStepZipperDown!3210 (Regex!19414 Context!16708 C!39102) (Set Context!16708))

(assert (=> bm!682240 (= call!682245 (derivationStepZipperDown!3210 (h!78352 (exprs!8854 c!10532)) (Context!16709 (t!386587 (exprs!8854 c!10532))) lt!2618939))))

(declare-fun d!2291855 () Bool)

(declare-fun c!1375483 () Bool)

(declare-fun e!4431914 () Bool)

(assert (=> d!2291855 (= c!1375483 e!4431914)))

(declare-fun res!2983091 () Bool)

(assert (=> d!2291855 (=> (not res!2983091) (not e!4431914))))

(assert (=> d!2291855 (= res!2983091 (is-Cons!71904 (exprs!8854 c!10532)))))

(assert (=> d!2291855 (= (derivationStepZipperUp!2818 c!10532 lt!2618939) e!4431916)))

(declare-fun b!7410149 () Bool)

(assert (=> b!7410149 (= e!4431915 call!682245)))

(declare-fun b!7410150 () Bool)

(declare-fun nullable!8458 (Regex!19414) Bool)

(assert (=> b!7410150 (= e!4431914 (nullable!8458 (h!78352 (exprs!8854 c!10532))))))

(declare-fun b!7410151 () Bool)

(assert (=> b!7410151 (= e!4431916 (set.union call!682245 (derivationStepZipperUp!2818 (Context!16709 (t!386587 (exprs!8854 c!10532))) lt!2618939)))))

(declare-fun b!7410152 () Bool)

(assert (=> b!7410152 (= e!4431915 (as set.empty (Set Context!16708)))))

(assert (= (and d!2291855 res!2983091) b!7410150))

(assert (= (and d!2291855 c!1375483) b!7410151))

(assert (= (and d!2291855 (not c!1375483)) b!7410148))

(assert (= (and b!7410148 c!1375482) b!7410149))

(assert (= (and b!7410148 (not c!1375482)) b!7410152))

(assert (= (or b!7410151 b!7410149) bm!682240))

(declare-fun m!8045714 () Bool)

(assert (=> bm!682240 m!8045714))

(declare-fun m!8045716 () Bool)

(assert (=> b!7410150 m!8045716))

(declare-fun m!8045718 () Bool)

(assert (=> b!7410151 m!8045718))

(assert (=> b!7410057 d!2291855))

(declare-fun bs!1924584 () Bool)

(declare-fun d!2291861 () Bool)

(assert (= bs!1924584 (and d!2291861 b!7410060)))

(declare-fun lambda!459977 () Int)

(assert (=> bs!1924584 (= (= lt!2618939 a!2228) (= lambda!459977 lambda!459944))))

(assert (=> d!2291861 true))

(assert (=> d!2291861 (= (derivationStepZipper!3688 z!3451 lt!2618939) (flatMap!3214 z!3451 lambda!459977))))

(declare-fun bs!1924585 () Bool)

(assert (= bs!1924585 d!2291861))

(declare-fun m!8045720 () Bool)

(assert (=> bs!1924585 m!8045720))

(assert (=> b!7410057 d!2291861))

(declare-fun d!2291863 () Bool)

(assert (=> d!2291863 (= (head!15220 s!7927) (h!78353 s!7927))))

(assert (=> b!7410057 d!2291863))

(declare-fun d!2291865 () Bool)

(declare-fun c!1375492 () Bool)

(assert (=> d!2291865 (= c!1375492 (isEmpty!41063 s!7927))))

(declare-fun e!4431923 () Bool)

(assert (=> d!2291865 (= (matchZipper!3814 z!3451 s!7927) e!4431923)))

(declare-fun b!7410165 () Bool)

(declare-fun nullableZipper!3143 ((Set Context!16708)) Bool)

(assert (=> b!7410165 (= e!4431923 (nullableZipper!3143 z!3451))))

(declare-fun b!7410166 () Bool)

(declare-fun tail!14829 (List!72029) List!72029)

(assert (=> b!7410166 (= e!4431923 (matchZipper!3814 (derivationStepZipper!3688 z!3451 (head!15220 s!7927)) (tail!14829 s!7927)))))

(assert (= (and d!2291865 c!1375492) b!7410165))

(assert (= (and d!2291865 (not c!1375492)) b!7410166))

(declare-fun m!8045732 () Bool)

(assert (=> d!2291865 m!8045732))

(declare-fun m!8045734 () Bool)

(assert (=> b!7410165 m!8045734))

(assert (=> b!7410166 m!8045576))

(assert (=> b!7410166 m!8045576))

(declare-fun m!8045736 () Bool)

(assert (=> b!7410166 m!8045736))

(declare-fun m!8045738 () Bool)

(assert (=> b!7410166 m!8045738))

(assert (=> b!7410166 m!8045736))

(assert (=> b!7410166 m!8045738))

(declare-fun m!8045742 () Bool)

(assert (=> b!7410166 m!8045742))

(assert (=> b!7410063 d!2291865))

(declare-fun d!2291869 () Bool)

(declare-fun c!1375493 () Bool)

(assert (=> d!2291869 (= c!1375493 (isEmpty!41063 (t!386588 s!7927)))))

(declare-fun e!4431924 () Bool)

(assert (=> d!2291869 (= (matchZipper!3814 lt!2618935 (t!386588 s!7927)) e!4431924)))

(declare-fun b!7410167 () Bool)

(assert (=> b!7410167 (= e!4431924 (nullableZipper!3143 lt!2618935))))

(declare-fun b!7410168 () Bool)

(assert (=> b!7410168 (= e!4431924 (matchZipper!3814 (derivationStepZipper!3688 lt!2618935 (head!15220 (t!386588 s!7927))) (tail!14829 (t!386588 s!7927))))))

(assert (= (and d!2291869 c!1375493) b!7410167))

(assert (= (and d!2291869 (not c!1375493)) b!7410168))

(assert (=> d!2291869 m!8045568))

(declare-fun m!8045750 () Bool)

(assert (=> b!7410167 m!8045750))

(declare-fun m!8045752 () Bool)

(assert (=> b!7410168 m!8045752))

(assert (=> b!7410168 m!8045752))

(declare-fun m!8045756 () Bool)

(assert (=> b!7410168 m!8045756))

(declare-fun m!8045758 () Bool)

(assert (=> b!7410168 m!8045758))

(assert (=> b!7410168 m!8045756))

(assert (=> b!7410168 m!8045758))

(declare-fun m!8045760 () Bool)

(assert (=> b!7410168 m!8045760))

(assert (=> b!7410063 d!2291869))

(declare-fun d!2291873 () Bool)

(assert (=> d!2291873 (= (matchZipper!3814 lt!2618935 (t!386588 s!7927)) (isEmpty!41063 (t!386588 s!7927)))))

(declare-fun lt!2618992 () Unit!165731)

(declare-fun choose!57475 ((Set Context!16708) List!72029) Unit!165731)

(assert (=> d!2291873 (= lt!2618992 (choose!57475 lt!2618935 (t!386588 s!7927)))))

(assert (=> d!2291873 (= lt!2618935 (set.singleton (Context!16709 Nil!71904)))))

(assert (=> d!2291873 (= (lemmaZipperOfEmptyContextMatchesEmptyString!69 lt!2618935 (t!386588 s!7927)) lt!2618992)))

(declare-fun bs!1924586 () Bool)

(assert (= bs!1924586 d!2291873))

(assert (=> bs!1924586 m!8045558))

(assert (=> bs!1924586 m!8045568))

(declare-fun m!8045762 () Bool)

(assert (=> bs!1924586 m!8045762))

(assert (=> b!7410063 d!2291873))

(declare-fun b!7410173 () Bool)

(declare-fun e!4431927 () Bool)

(declare-fun tp!2120187 () Bool)

(declare-fun tp!2120188 () Bool)

(assert (=> b!7410173 (= e!4431927 (and tp!2120187 tp!2120188))))

(assert (=> b!7410064 (= tp!2120164 e!4431927)))

(assert (= (and b!7410064 (is-Cons!71904 (exprs!8854 setElem!56294))) b!7410173))

(declare-fun b!7410174 () Bool)

(declare-fun e!4431928 () Bool)

(declare-fun tp!2120189 () Bool)

(declare-fun tp!2120190 () Bool)

(assert (=> b!7410174 (= e!4431928 (and tp!2120189 tp!2120190))))

(assert (=> b!7410059 (= tp!2120163 e!4431928)))

(assert (= (and b!7410059 (is-Cons!71904 (exprs!8854 empty!3603))) b!7410174))

(declare-fun b!7410179 () Bool)

(declare-fun e!4431931 () Bool)

(declare-fun tp!2120193 () Bool)

(assert (=> b!7410179 (= e!4431931 (and tp_is_empty!49091 tp!2120193))))

(assert (=> b!7410056 (= tp!2120167 e!4431931)))

(assert (= (and b!7410056 (is-Cons!71905 (t!386588 s!7927))) b!7410179))

(declare-fun condSetEmpty!56300 () Bool)

(assert (=> setNonEmpty!56294 (= condSetEmpty!56300 (= setRest!56294 (as set.empty (Set Context!16708))))))

(declare-fun setRes!56300 () Bool)

(assert (=> setNonEmpty!56294 (= tp!2120165 setRes!56300)))

(declare-fun setIsEmpty!56300 () Bool)

(assert (=> setIsEmpty!56300 setRes!56300))

(declare-fun tp!2120199 () Bool)

(declare-fun e!4431934 () Bool)

(declare-fun setElem!56300 () Context!16708)

(declare-fun setNonEmpty!56300 () Bool)

(assert (=> setNonEmpty!56300 (= setRes!56300 (and tp!2120199 (inv!91897 setElem!56300) e!4431934))))

(declare-fun setRest!56300 () (Set Context!16708))

(assert (=> setNonEmpty!56300 (= setRest!56294 (set.union (set.insert setElem!56300 (as set.empty (Set Context!16708))) setRest!56300))))

(declare-fun b!7410184 () Bool)

(declare-fun tp!2120198 () Bool)

(assert (=> b!7410184 (= e!4431934 tp!2120198)))

(assert (= (and setNonEmpty!56294 condSetEmpty!56300) setIsEmpty!56300))

(assert (= (and setNonEmpty!56294 (not condSetEmpty!56300)) setNonEmpty!56300))

(assert (= setNonEmpty!56300 b!7410184))

(declare-fun m!8045764 () Bool)

(assert (=> setNonEmpty!56300 m!8045764))

(declare-fun b!7410185 () Bool)

(declare-fun e!4431935 () Bool)

(declare-fun tp!2120200 () Bool)

(declare-fun tp!2120201 () Bool)

(assert (=> b!7410185 (= e!4431935 (and tp!2120200 tp!2120201))))

(assert (=> b!7410061 (= tp!2120166 e!4431935)))

(assert (= (and b!7410061 (is-Cons!71904 (exprs!8854 c!10532))) b!7410185))

(declare-fun b_lambda!286591 () Bool)

(assert (= b_lambda!286583 (or b!7410054 b_lambda!286591)))

(declare-fun bs!1924587 () Bool)

(declare-fun d!2291875 () Bool)

(assert (= bs!1924587 (and d!2291875 b!7410054)))

(assert (=> bs!1924587 (= (dynLambda!29678 lambda!459945 lt!2618979) (not (= lt!2618979 lt!2618936)))))

(assert (=> d!2291825 d!2291875))

(declare-fun b_lambda!286593 () Bool)

(assert (= b_lambda!286585 (or b!7410054 b_lambda!286593)))

(declare-fun bs!1924588 () Bool)

(declare-fun d!2291877 () Bool)

(assert (= bs!1924588 (and d!2291877 b!7410054)))

(assert (=> bs!1924588 (= (dynLambda!29678 lambda!459946 lt!2618983) (set.member lt!2618941 (derivationStepZipperUp!2818 lt!2618983 lt!2618939)))))

(declare-fun m!8045766 () Bool)

(assert (=> bs!1924588 m!8045766))

(declare-fun m!8045768 () Bool)

(assert (=> bs!1924588 m!8045768))

(assert (=> d!2291835 d!2291877))

(push 1)

(assert (not d!2291835))

(assert (not bm!682240))

(assert tp_is_empty!49091)

(assert (not d!2291825))

(assert (not b!7410166))

(assert (not b!7410165))

(assert (not bs!1924588))

(assert (not b!7410179))

(assert (not setNonEmpty!56300))

(assert (not b!7410174))

(assert (not d!2291861))

(assert (not b_lambda!286593))

(assert (not d!2291865))

(assert (not b!7410151))

(assert (not b!7410168))

(assert (not d!2291853))

(assert (not b!7410184))

(assert (not d!2291845))

(assert (not b_lambda!286591))

(assert (not b!7410150))

(assert (not d!2291869))

(assert (not b!7410185))

(assert (not d!2291831))

(assert (not b!7410173))

(assert (not d!2291839))

(assert (not b!7410167))

(assert (not d!2291873))

(assert (not d!2291841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

