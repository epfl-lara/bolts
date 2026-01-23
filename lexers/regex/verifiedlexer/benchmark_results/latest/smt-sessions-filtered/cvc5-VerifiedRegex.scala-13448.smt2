; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727296 () Bool)

(assert start!727296)

(declare-fun bs!1938848 () Bool)

(declare-fun b!7509050 () Bool)

(assert (= bs!1938848 (and b!7509050 start!727296)))

(declare-fun lambda!465892 () Int)

(declare-fun lambda!465891 () Int)

(assert (=> bs!1938848 (not (= lambda!465892 lambda!465891))))

(declare-fun e!4477542 () Bool)

(declare-fun e!4477540 () Bool)

(assert (=> b!7509050 (= e!4477542 (not e!4477540))))

(declare-fun res!3012573 () Bool)

(assert (=> b!7509050 (=> res!3012573 e!4477540)))

(declare-datatypes ((C!39790 0))(
  ( (C!39791 (val!30293 Int)) )
))
(declare-datatypes ((Regex!19732 0))(
  ( (ElementMatch!19732 (c!1386604 C!39790)) (Concat!28577 (regOne!39976 Regex!19732) (regTwo!39976 Regex!19732)) (EmptyExpr!19732) (Star!19732 (reg!20061 Regex!19732)) (EmptyLang!19732) (Union!19732 (regOne!39977 Regex!19732) (regTwo!39977 Regex!19732)) )
))
(declare-datatypes ((List!72571 0))(
  ( (Nil!72447) (Cons!72447 (h!78895 Regex!19732) (t!387140 List!72571)) )
))
(declare-datatypes ((Context!16968 0))(
  ( (Context!16969 (exprs!8984 List!72571)) )
))
(declare-fun z!556 () (Set Context!16968))

(declare-fun exists!4889 ((Set Context!16968) Int) Bool)

(assert (=> b!7509050 (= res!3012573 (exists!4889 z!556 lambda!465892))))

(declare-datatypes ((List!72572 0))(
  ( (Nil!72448) (Cons!72448 (h!78896 Context!16968) (t!387141 List!72572)) )
))
(declare-fun lt!2637055 () List!72572)

(declare-fun exists!4890 (List!72572 Int) Bool)

(assert (=> b!7509050 (not (exists!4890 lt!2637055 lambda!465892))))

(declare-datatypes ((Unit!166490 0))(
  ( (Unit!166491) )
))
(declare-fun lt!2637054 () Unit!166490)

(declare-fun lemmaForallThenNotExists!479 (List!72572 Int) Unit!166490)

(assert (=> b!7509050 (= lt!2637054 (lemmaForallThenNotExists!479 lt!2637055 lambda!465891))))

(declare-fun toList!11849 ((Set Context!16968)) List!72572)

(assert (=> b!7509050 (= lt!2637055 (toList!11849 z!556))))

(declare-fun b!7509051 () Bool)

(declare-datatypes ((List!72573 0))(
  ( (Nil!72449) (Cons!72449 (h!78897 C!39790) (t!387142 List!72573)) )
))
(declare-datatypes ((Option!17237 0))(
  ( (None!17236) (Some!17236 (v!54365 List!72573)) )
))
(declare-fun isEmpty!41324 (Option!17237) Bool)

(declare-fun getLanguageWitness!1068 ((Set Context!16968)) Option!17237)

(assert (=> b!7509051 (= e!4477540 (isEmpty!41324 (getLanguageWitness!1068 z!556)))))

(declare-fun b!7509052 () Bool)

(declare-fun res!3012571 () Bool)

(assert (=> b!7509052 (=> (not res!3012571) (not e!4477542))))

(declare-fun forall!18336 ((Set Context!16968) Int) Bool)

(assert (=> b!7509052 (= res!3012571 (forall!18336 z!556 lambda!465891))))

(declare-fun e!4477541 () Bool)

(declare-fun setRes!57137 () Bool)

(declare-fun tp!2179509 () Bool)

(declare-fun setElem!57137 () Context!16968)

(declare-fun setNonEmpty!57137 () Bool)

(declare-fun inv!92561 (Context!16968) Bool)

(assert (=> setNonEmpty!57137 (= setRes!57137 (and tp!2179509 (inv!92561 setElem!57137) e!4477541))))

(declare-fun setRest!57137 () (Set Context!16968))

(assert (=> setNonEmpty!57137 (= z!556 (set.union (set.insert setElem!57137 (as set.empty (Set Context!16968))) setRest!57137))))

(declare-fun setIsEmpty!57137 () Bool)

(assert (=> setIsEmpty!57137 setRes!57137))

(declare-fun res!3012572 () Bool)

(assert (=> start!727296 (=> (not res!3012572) (not e!4477542))))

(assert (=> start!727296 (= res!3012572 (forall!18336 z!556 lambda!465891))))

(assert (=> start!727296 e!4477542))

(declare-fun condSetEmpty!57137 () Bool)

(assert (=> start!727296 (= condSetEmpty!57137 (= z!556 (as set.empty (Set Context!16968))))))

(assert (=> start!727296 setRes!57137))

(declare-fun b!7509053 () Bool)

(declare-fun tp!2179508 () Bool)

(assert (=> b!7509053 (= e!4477541 tp!2179508)))

(assert (= (and start!727296 res!3012572) b!7509052))

(assert (= (and b!7509052 res!3012571) b!7509050))

(assert (= (and b!7509050 (not res!3012573)) b!7509051))

(assert (= (and start!727296 condSetEmpty!57137) setIsEmpty!57137))

(assert (= (and start!727296 (not condSetEmpty!57137)) setNonEmpty!57137))

(assert (= setNonEmpty!57137 b!7509053))

(declare-fun m!8093100 () Bool)

(assert (=> start!727296 m!8093100))

(declare-fun m!8093102 () Bool)

(assert (=> b!7509050 m!8093102))

(declare-fun m!8093104 () Bool)

(assert (=> b!7509050 m!8093104))

(declare-fun m!8093106 () Bool)

(assert (=> b!7509050 m!8093106))

(declare-fun m!8093108 () Bool)

(assert (=> b!7509050 m!8093108))

(declare-fun m!8093110 () Bool)

(assert (=> b!7509051 m!8093110))

(assert (=> b!7509051 m!8093110))

(declare-fun m!8093112 () Bool)

(assert (=> b!7509051 m!8093112))

(declare-fun m!8093114 () Bool)

(assert (=> setNonEmpty!57137 m!8093114))

(assert (=> b!7509052 m!8093100))

(push 1)

(assert (not b!7509050))

(assert (not start!727296))

(assert (not setNonEmpty!57137))

(assert (not b!7509053))

(assert (not b!7509051))

(assert (not b!7509052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2305889 () Bool)

(assert (=> d!2305889 (= (isEmpty!41324 (getLanguageWitness!1068 z!556)) (not (is-Some!17236 (getLanguageWitness!1068 z!556))))))

(assert (=> b!7509051 d!2305889))

(declare-fun bs!1938850 () Bool)

(declare-fun d!2305891 () Bool)

(assert (= bs!1938850 (and d!2305891 start!727296)))

(declare-fun lambda!465911 () Int)

(assert (=> bs!1938850 (not (= lambda!465911 lambda!465891))))

(declare-fun bs!1938851 () Bool)

(assert (= bs!1938851 (and d!2305891 b!7509050)))

(assert (=> bs!1938851 (= lambda!465911 lambda!465892)))

(declare-fun lt!2637064 () Option!17237)

(declare-fun isDefined!13912 (Option!17237) Bool)

(assert (=> d!2305891 (= (isDefined!13912 lt!2637064) (exists!4889 z!556 lambda!465911))))

(declare-fun e!4477556 () Option!17237)

(assert (=> d!2305891 (= lt!2637064 e!4477556)))

(declare-fun c!1386622 () Bool)

(assert (=> d!2305891 (= c!1386622 (exists!4889 z!556 lambda!465911))))

(assert (=> d!2305891 (= (getLanguageWitness!1068 z!556) lt!2637064)))

(declare-fun b!7509070 () Bool)

(declare-fun getLanguageWitness!1070 (Context!16968) Option!17237)

(declare-fun getWitness!2484 ((Set Context!16968) Int) Context!16968)

(assert (=> b!7509070 (= e!4477556 (getLanguageWitness!1070 (getWitness!2484 z!556 lambda!465911)))))

(declare-fun b!7509071 () Bool)

(assert (=> b!7509071 (= e!4477556 None!17236)))

(assert (= (and d!2305891 c!1386622) b!7509070))

(assert (= (and d!2305891 (not c!1386622)) b!7509071))

(declare-fun m!8093132 () Bool)

(assert (=> d!2305891 m!8093132))

(declare-fun m!8093134 () Bool)

(assert (=> d!2305891 m!8093134))

(assert (=> d!2305891 m!8093134))

(declare-fun m!8093136 () Bool)

(assert (=> b!7509070 m!8093136))

(assert (=> b!7509070 m!8093136))

(declare-fun m!8093138 () Bool)

(assert (=> b!7509070 m!8093138))

(assert (=> b!7509051 d!2305891))

(declare-fun d!2305893 () Bool)

(declare-fun lt!2637067 () Bool)

(declare-fun forall!18338 (List!72572 Int) Bool)

(assert (=> d!2305893 (= lt!2637067 (forall!18338 (toList!11849 z!556) lambda!465891))))

(declare-fun choose!58227 ((Set Context!16968) Int) Bool)

(assert (=> d!2305893 (= lt!2637067 (choose!58227 z!556 lambda!465891))))

(assert (=> d!2305893 (= (forall!18336 z!556 lambda!465891) lt!2637067)))

(declare-fun bs!1938852 () Bool)

(assert (= bs!1938852 d!2305893))

(assert (=> bs!1938852 m!8093108))

(assert (=> bs!1938852 m!8093108))

(declare-fun m!8093140 () Bool)

(assert (=> bs!1938852 m!8093140))

(declare-fun m!8093142 () Bool)

(assert (=> bs!1938852 m!8093142))

(assert (=> start!727296 d!2305893))

(declare-fun d!2305895 () Bool)

(declare-fun lambda!465914 () Int)

(declare-fun forall!18339 (List!72571 Int) Bool)

(assert (=> d!2305895 (= (inv!92561 setElem!57137) (forall!18339 (exprs!8984 setElem!57137) lambda!465914))))

(declare-fun bs!1938853 () Bool)

(assert (= bs!1938853 d!2305895))

(declare-fun m!8093144 () Bool)

(assert (=> bs!1938853 m!8093144))

(assert (=> setNonEmpty!57137 d!2305895))

(assert (=> b!7509052 d!2305893))

(declare-fun d!2305901 () Bool)

(declare-fun lt!2637070 () Bool)

(assert (=> d!2305901 (= lt!2637070 (exists!4890 (toList!11849 z!556) lambda!465892))))

(declare-fun choose!58228 ((Set Context!16968) Int) Bool)

(assert (=> d!2305901 (= lt!2637070 (choose!58228 z!556 lambda!465892))))

(assert (=> d!2305901 (= (exists!4889 z!556 lambda!465892) lt!2637070)))

(declare-fun bs!1938854 () Bool)

(assert (= bs!1938854 d!2305901))

(assert (=> bs!1938854 m!8093108))

(assert (=> bs!1938854 m!8093108))

(declare-fun m!8093146 () Bool)

(assert (=> bs!1938854 m!8093146))

(declare-fun m!8093148 () Bool)

(assert (=> bs!1938854 m!8093148))

(assert (=> b!7509050 d!2305901))

(declare-fun bs!1938855 () Bool)

(declare-fun d!2305903 () Bool)

(assert (= bs!1938855 (and d!2305903 start!727296)))

(declare-fun lambda!465917 () Int)

(assert (=> bs!1938855 (not (= lambda!465917 lambda!465891))))

(declare-fun bs!1938856 () Bool)

(assert (= bs!1938856 (and d!2305903 b!7509050)))

(assert (=> bs!1938856 (not (= lambda!465917 lambda!465892))))

(declare-fun bs!1938857 () Bool)

(assert (= bs!1938857 (and d!2305903 d!2305891)))

(assert (=> bs!1938857 (not (= lambda!465917 lambda!465911))))

(assert (=> d!2305903 true))

(declare-fun order!29673 () Int)

(declare-fun dynLambda!29795 (Int Int) Int)

(assert (=> d!2305903 (< (dynLambda!29795 order!29673 lambda!465892) (dynLambda!29795 order!29673 lambda!465917))))

(assert (=> d!2305903 (= (exists!4890 lt!2637055 lambda!465892) (not (forall!18338 lt!2637055 lambda!465917)))))

(declare-fun bs!1938858 () Bool)

(assert (= bs!1938858 d!2305903))

(declare-fun m!8093150 () Bool)

(assert (=> bs!1938858 m!8093150))

(assert (=> b!7509050 d!2305903))

(declare-fun bs!1938859 () Bool)

(declare-fun d!2305905 () Bool)

(assert (= bs!1938859 (and d!2305905 start!727296)))

(declare-fun lambda!465920 () Int)

(assert (=> bs!1938859 (not (= lambda!465920 lambda!465891))))

(declare-fun bs!1938860 () Bool)

(assert (= bs!1938860 (and d!2305905 b!7509050)))

(assert (=> bs!1938860 (not (= lambda!465920 lambda!465892))))

(declare-fun bs!1938861 () Bool)

(assert (= bs!1938861 (and d!2305905 d!2305891)))

(assert (=> bs!1938861 (not (= lambda!465920 lambda!465911))))

(declare-fun bs!1938862 () Bool)

(assert (= bs!1938862 (and d!2305905 d!2305903)))

(assert (=> bs!1938862 (= (= lambda!465891 lambda!465892) (= lambda!465920 lambda!465917))))

(assert (=> d!2305905 true))

(assert (=> d!2305905 (< (dynLambda!29795 order!29673 lambda!465891) (dynLambda!29795 order!29673 lambda!465920))))

(assert (=> d!2305905 (not (exists!4890 lt!2637055 lambda!465920))))

(declare-fun lt!2637073 () Unit!166490)

(declare-fun choose!58229 (List!72572 Int) Unit!166490)

(assert (=> d!2305905 (= lt!2637073 (choose!58229 lt!2637055 lambda!465891))))

(assert (=> d!2305905 (forall!18338 lt!2637055 lambda!465891)))

(assert (=> d!2305905 (= (lemmaForallThenNotExists!479 lt!2637055 lambda!465891) lt!2637073)))

(declare-fun bs!1938863 () Bool)

(assert (= bs!1938863 d!2305905))

(declare-fun m!8093152 () Bool)

(assert (=> bs!1938863 m!8093152))

(declare-fun m!8093154 () Bool)

(assert (=> bs!1938863 m!8093154))

(declare-fun m!8093156 () Bool)

(assert (=> bs!1938863 m!8093156))

(assert (=> b!7509050 d!2305905))

(declare-fun d!2305907 () Bool)

(declare-fun e!4477563 () Bool)

(assert (=> d!2305907 e!4477563))

(declare-fun res!3012585 () Bool)

(assert (=> d!2305907 (=> (not res!3012585) (not e!4477563))))

(declare-fun lt!2637078 () List!72572)

(declare-fun noDuplicate!3153 (List!72572) Bool)

(assert (=> d!2305907 (= res!3012585 (noDuplicate!3153 lt!2637078))))

(declare-fun choose!58230 ((Set Context!16968)) List!72572)

(assert (=> d!2305907 (= lt!2637078 (choose!58230 z!556))))

(assert (=> d!2305907 (= (toList!11849 z!556) lt!2637078)))

(declare-fun b!7509080 () Bool)

(declare-fun content!15322 (List!72572) (Set Context!16968))

(assert (=> b!7509080 (= e!4477563 (= (content!15322 lt!2637078) z!556))))

(assert (= (and d!2305907 res!3012585) b!7509080))

(declare-fun m!8093158 () Bool)

(assert (=> d!2305907 m!8093158))

(declare-fun m!8093160 () Bool)

(assert (=> d!2305907 m!8093160))

(declare-fun m!8093162 () Bool)

(assert (=> b!7509080 m!8093162))

(assert (=> b!7509050 d!2305907))

(declare-fun condSetEmpty!57143 () Bool)

(assert (=> setNonEmpty!57137 (= condSetEmpty!57143 (= setRest!57137 (as set.empty (Set Context!16968))))))

(declare-fun setRes!57143 () Bool)

(assert (=> setNonEmpty!57137 (= tp!2179509 setRes!57143)))

(declare-fun setIsEmpty!57143 () Bool)

(assert (=> setIsEmpty!57143 setRes!57143))

(declare-fun tp!2179521 () Bool)

(declare-fun setNonEmpty!57143 () Bool)

(declare-fun setElem!57143 () Context!16968)

(declare-fun e!4477566 () Bool)

(assert (=> setNonEmpty!57143 (= setRes!57143 (and tp!2179521 (inv!92561 setElem!57143) e!4477566))))

(declare-fun setRest!57143 () (Set Context!16968))

(assert (=> setNonEmpty!57143 (= setRest!57137 (set.union (set.insert setElem!57143 (as set.empty (Set Context!16968))) setRest!57143))))

(declare-fun b!7509085 () Bool)

(declare-fun tp!2179520 () Bool)

(assert (=> b!7509085 (= e!4477566 tp!2179520)))

(assert (= (and setNonEmpty!57137 condSetEmpty!57143) setIsEmpty!57143))

(assert (= (and setNonEmpty!57137 (not condSetEmpty!57143)) setNonEmpty!57143))

(assert (= setNonEmpty!57143 b!7509085))

(declare-fun m!8093164 () Bool)

(assert (=> setNonEmpty!57143 m!8093164))

(declare-fun b!7509090 () Bool)

(declare-fun e!4477569 () Bool)

(declare-fun tp!2179526 () Bool)

(declare-fun tp!2179527 () Bool)

(assert (=> b!7509090 (= e!4477569 (and tp!2179526 tp!2179527))))

(assert (=> b!7509053 (= tp!2179508 e!4477569)))

(assert (= (and b!7509053 (is-Cons!72447 (exprs!8984 setElem!57137))) b!7509090))

(push 1)

(assert (not b!7509080))

(assert (not setNonEmpty!57143))

(assert (not d!2305901))

(assert (not d!2305905))

(assert (not d!2305891))

(assert (not b!7509070))

(assert (not b!7509085))

(assert (not d!2305903))

(assert (not b!7509090))

(assert (not d!2305895))

(assert (not d!2305893))

(assert (not d!2305907))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

