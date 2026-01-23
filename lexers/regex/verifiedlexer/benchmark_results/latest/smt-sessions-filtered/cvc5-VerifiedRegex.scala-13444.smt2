; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727204 () Bool)

(assert start!727204)

(declare-fun bs!1938770 () Bool)

(declare-fun b!7508890 () Bool)

(assert (= bs!1938770 (and b!7508890 start!727204)))

(declare-fun lambda!465755 () Int)

(declare-fun lambda!465754 () Int)

(assert (=> bs!1938770 (not (= lambda!465755 lambda!465754))))

(declare-fun res!3012513 () Bool)

(declare-fun e!4477403 () Bool)

(assert (=> start!727204 (=> (not res!3012513) (not e!4477403))))

(declare-datatypes ((C!39774 0))(
  ( (C!39775 (val!30285 Int)) )
))
(declare-datatypes ((Regex!19724 0))(
  ( (ElementMatch!19724 (c!1386537 C!39774)) (Concat!28569 (regOne!39960 Regex!19724) (regTwo!39960 Regex!19724)) (EmptyExpr!19724) (Star!19724 (reg!20053 Regex!19724)) (EmptyLang!19724) (Union!19724 (regOne!39961 Regex!19724) (regTwo!39961 Regex!19724)) )
))
(declare-datatypes ((List!72555 0))(
  ( (Nil!72431) (Cons!72431 (h!78879 Regex!19724) (t!387124 List!72555)) )
))
(declare-datatypes ((Context!16952 0))(
  ( (Context!16953 (exprs!8976 List!72555)) )
))
(declare-fun z!556 () (Set Context!16952))

(declare-fun forall!18319 ((Set Context!16952) Int) Bool)

(assert (=> start!727204 (= res!3012513 (not (forall!18319 z!556 lambda!465754)))))

(assert (=> start!727204 e!4477403))

(declare-fun condSetEmpty!57095 () Bool)

(assert (=> start!727204 (= condSetEmpty!57095 (= z!556 (as set.empty (Set Context!16952))))))

(declare-fun setRes!57095 () Bool)

(assert (=> start!727204 setRes!57095))

(declare-fun b!7508891 () Bool)

(declare-fun e!4477404 () Bool)

(declare-fun tp!2179388 () Bool)

(assert (=> b!7508891 (= e!4477404 tp!2179388)))

(declare-fun setIsEmpty!57095 () Bool)

(assert (=> setIsEmpty!57095 setRes!57095))

(declare-fun exists!4877 ((Set Context!16952) Int) Bool)

(assert (=> b!7508890 (= e!4477403 (not (exists!4877 z!556 lambda!465755)))))

(declare-datatypes ((List!72556 0))(
  ( (Nil!72432) (Cons!72432 (h!78880 Context!16952) (t!387125 List!72556)) )
))
(declare-fun lt!2636944 () List!72556)

(declare-fun exists!4878 (List!72556 Int) Bool)

(assert (=> b!7508890 (exists!4878 lt!2636944 lambda!465755)))

(declare-datatypes ((Unit!166478 0))(
  ( (Unit!166479) )
))
(declare-fun lt!2636943 () Unit!166478)

(declare-fun lemmaNotForallThenExists!510 (List!72556 Int) Unit!166478)

(assert (=> b!7508890 (= lt!2636943 (lemmaNotForallThenExists!510 lt!2636944 lambda!465754))))

(declare-fun toList!11843 ((Set Context!16952)) List!72556)

(assert (=> b!7508890 (= lt!2636944 (toList!11843 z!556))))

(declare-fun setElem!57095 () Context!16952)

(declare-fun setNonEmpty!57095 () Bool)

(declare-fun tp!2179389 () Bool)

(declare-fun inv!92541 (Context!16952) Bool)

(assert (=> setNonEmpty!57095 (= setRes!57095 (and tp!2179389 (inv!92541 setElem!57095) e!4477404))))

(declare-fun setRest!57095 () (Set Context!16952))

(assert (=> setNonEmpty!57095 (= z!556 (set.union (set.insert setElem!57095 (as set.empty (Set Context!16952))) setRest!57095))))

(assert (= (and start!727204 res!3012513) b!7508890))

(assert (= (and start!727204 condSetEmpty!57095) setIsEmpty!57095))

(assert (= (and start!727204 (not condSetEmpty!57095)) setNonEmpty!57095))

(assert (= setNonEmpty!57095 b!7508891))

(declare-fun m!8092850 () Bool)

(assert (=> start!727204 m!8092850))

(declare-fun m!8092852 () Bool)

(assert (=> b!7508890 m!8092852))

(declare-fun m!8092854 () Bool)

(assert (=> b!7508890 m!8092854))

(declare-fun m!8092856 () Bool)

(assert (=> b!7508890 m!8092856))

(declare-fun m!8092858 () Bool)

(assert (=> b!7508890 m!8092858))

(declare-fun m!8092860 () Bool)

(assert (=> setNonEmpty!57095 m!8092860))

(push 1)

(assert (not b!7508890))

(assert (not start!727204))

(assert (not setNonEmpty!57095))

(assert (not b!7508891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2305809 () Bool)

(declare-fun lt!2636953 () Bool)

(assert (=> d!2305809 (= lt!2636953 (exists!4878 (toList!11843 z!556) lambda!465755))))

(declare-fun choose!58213 ((Set Context!16952) Int) Bool)

(assert (=> d!2305809 (= lt!2636953 (choose!58213 z!556 lambda!465755))))

(assert (=> d!2305809 (= (exists!4877 z!556 lambda!465755) lt!2636953)))

(declare-fun bs!1938772 () Bool)

(assert (= bs!1938772 d!2305809))

(assert (=> bs!1938772 m!8092858))

(assert (=> bs!1938772 m!8092858))

(declare-fun m!8092874 () Bool)

(assert (=> bs!1938772 m!8092874))

(declare-fun m!8092876 () Bool)

(assert (=> bs!1938772 m!8092876))

(assert (=> b!7508890 d!2305809))

(declare-fun bs!1938773 () Bool)

(declare-fun d!2305811 () Bool)

(assert (= bs!1938773 (and d!2305811 start!727204)))

(declare-fun lambda!465768 () Int)

(assert (=> bs!1938773 (not (= lambda!465768 lambda!465754))))

(declare-fun bs!1938774 () Bool)

(assert (= bs!1938774 (and d!2305811 b!7508890)))

(assert (=> bs!1938774 (not (= lambda!465768 lambda!465755))))

(assert (=> d!2305811 true))

(declare-fun order!29661 () Int)

(declare-fun dynLambda!29792 (Int Int) Int)

(assert (=> d!2305811 (< (dynLambda!29792 order!29661 lambda!465755) (dynLambda!29792 order!29661 lambda!465768))))

(declare-fun forall!18321 (List!72556 Int) Bool)

(assert (=> d!2305811 (= (exists!4878 lt!2636944 lambda!465755) (not (forall!18321 lt!2636944 lambda!465768)))))

(declare-fun bs!1938775 () Bool)

(assert (= bs!1938775 d!2305811))

(declare-fun m!8092878 () Bool)

(assert (=> bs!1938775 m!8092878))

(assert (=> b!7508890 d!2305811))

(declare-fun bs!1938776 () Bool)

(declare-fun d!2305813 () Bool)

(assert (= bs!1938776 (and d!2305813 start!727204)))

(declare-fun lambda!465771 () Int)

(assert (=> bs!1938776 (not (= lambda!465771 lambda!465754))))

(declare-fun bs!1938777 () Bool)

(assert (= bs!1938777 (and d!2305813 b!7508890)))

(assert (=> bs!1938777 (not (= lambda!465771 lambda!465755))))

(declare-fun bs!1938778 () Bool)

(assert (= bs!1938778 (and d!2305813 d!2305811)))

(assert (=> bs!1938778 (= (= lambda!465754 lambda!465755) (= lambda!465771 lambda!465768))))

(assert (=> d!2305813 true))

(assert (=> d!2305813 (< (dynLambda!29792 order!29661 lambda!465754) (dynLambda!29792 order!29661 lambda!465771))))

(assert (=> d!2305813 (exists!4878 lt!2636944 lambda!465771)))

(declare-fun lt!2636956 () Unit!166478)

(declare-fun choose!58214 (List!72556 Int) Unit!166478)

(assert (=> d!2305813 (= lt!2636956 (choose!58214 lt!2636944 lambda!465754))))

(assert (=> d!2305813 (not (forall!18321 lt!2636944 lambda!465754))))

(assert (=> d!2305813 (= (lemmaNotForallThenExists!510 lt!2636944 lambda!465754) lt!2636956)))

(declare-fun bs!1938779 () Bool)

(assert (= bs!1938779 d!2305813))

(declare-fun m!8092880 () Bool)

(assert (=> bs!1938779 m!8092880))

(declare-fun m!8092882 () Bool)

(assert (=> bs!1938779 m!8092882))

(declare-fun m!8092884 () Bool)

(assert (=> bs!1938779 m!8092884))

(assert (=> b!7508890 d!2305813))

(declare-fun d!2305817 () Bool)

(declare-fun e!4477417 () Bool)

(assert (=> d!2305817 e!4477417))

(declare-fun res!3012519 () Bool)

(assert (=> d!2305817 (=> (not res!3012519) (not e!4477417))))

(declare-fun lt!2636959 () List!72556)

(declare-fun noDuplicate!3150 (List!72556) Bool)

(assert (=> d!2305817 (= res!3012519 (noDuplicate!3150 lt!2636959))))

(declare-fun choose!58215 ((Set Context!16952)) List!72556)

(assert (=> d!2305817 (= lt!2636959 (choose!58215 z!556))))

(assert (=> d!2305817 (= (toList!11843 z!556) lt!2636959)))

(declare-fun b!7508902 () Bool)

(declare-fun content!15319 (List!72556) (Set Context!16952))

(assert (=> b!7508902 (= e!4477417 (= (content!15319 lt!2636959) z!556))))

(assert (= (and d!2305817 res!3012519) b!7508902))

(declare-fun m!8092886 () Bool)

(assert (=> d!2305817 m!8092886))

(declare-fun m!8092888 () Bool)

(assert (=> d!2305817 m!8092888))

(declare-fun m!8092890 () Bool)

(assert (=> b!7508902 m!8092890))

(assert (=> b!7508890 d!2305817))

(declare-fun d!2305819 () Bool)

(declare-fun lt!2636962 () Bool)

(assert (=> d!2305819 (= lt!2636962 (forall!18321 (toList!11843 z!556) lambda!465754))))

(declare-fun choose!58216 ((Set Context!16952) Int) Bool)

(assert (=> d!2305819 (= lt!2636962 (choose!58216 z!556 lambda!465754))))

(assert (=> d!2305819 (= (forall!18319 z!556 lambda!465754) lt!2636962)))

(declare-fun bs!1938780 () Bool)

(assert (= bs!1938780 d!2305819))

(assert (=> bs!1938780 m!8092858))

(assert (=> bs!1938780 m!8092858))

(declare-fun m!8092892 () Bool)

(assert (=> bs!1938780 m!8092892))

(declare-fun m!8092894 () Bool)

(assert (=> bs!1938780 m!8092894))

(assert (=> start!727204 d!2305819))

(declare-fun d!2305821 () Bool)

(declare-fun lambda!465776 () Int)

(declare-fun forall!18322 (List!72555 Int) Bool)

(assert (=> d!2305821 (= (inv!92541 setElem!57095) (forall!18322 (exprs!8976 setElem!57095) lambda!465776))))

(declare-fun bs!1938781 () Bool)

(assert (= bs!1938781 d!2305821))

(declare-fun m!8092896 () Bool)

(assert (=> bs!1938781 m!8092896))

(assert (=> setNonEmpty!57095 d!2305821))

(declare-fun b!7508907 () Bool)

(declare-fun e!4477420 () Bool)

(declare-fun tp!2179400 () Bool)

(declare-fun tp!2179401 () Bool)

(assert (=> b!7508907 (= e!4477420 (and tp!2179400 tp!2179401))))

(assert (=> b!7508891 (= tp!2179388 e!4477420)))

(assert (= (and b!7508891 (is-Cons!72431 (exprs!8976 setElem!57095))) b!7508907))

(declare-fun condSetEmpty!57101 () Bool)

(assert (=> setNonEmpty!57095 (= condSetEmpty!57101 (= setRest!57095 (as set.empty (Set Context!16952))))))

(declare-fun setRes!57101 () Bool)

(assert (=> setNonEmpty!57095 (= tp!2179389 setRes!57101)))

(declare-fun setIsEmpty!57101 () Bool)

(assert (=> setIsEmpty!57101 setRes!57101))

(declare-fun tp!2179406 () Bool)

(declare-fun setElem!57101 () Context!16952)

(declare-fun setNonEmpty!57101 () Bool)

(declare-fun e!4477423 () Bool)

(assert (=> setNonEmpty!57101 (= setRes!57101 (and tp!2179406 (inv!92541 setElem!57101) e!4477423))))

(declare-fun setRest!57101 () (Set Context!16952))

(assert (=> setNonEmpty!57101 (= setRest!57095 (set.union (set.insert setElem!57101 (as set.empty (Set Context!16952))) setRest!57101))))

(declare-fun b!7508912 () Bool)

(declare-fun tp!2179407 () Bool)

(assert (=> b!7508912 (= e!4477423 tp!2179407)))

(assert (= (and setNonEmpty!57095 condSetEmpty!57101) setIsEmpty!57101))

(assert (= (and setNonEmpty!57095 (not condSetEmpty!57101)) setNonEmpty!57101))

(assert (= setNonEmpty!57101 b!7508912))

(declare-fun m!8092898 () Bool)

(assert (=> setNonEmpty!57101 m!8092898))

(push 1)

(assert (not d!2305809))

(assert (not d!2305817))

(assert (not d!2305811))

(assert (not b!7508907))

(assert (not b!7508902))

(assert (not setNonEmpty!57101))

(assert (not d!2305819))

(assert (not d!2305821))

(assert (not d!2305813))

(assert (not b!7508912))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

