; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!44986 () Bool)

(assert start!44986)

(declare-fun b_free!13109 () Bool)

(declare-fun b_next!13109 () Bool)

(assert (=> start!44986 (= b_free!13109 (not b_next!13109))))

(declare-fun tp!130508 () Bool)

(declare-fun b_and!50391 () Bool)

(assert (=> start!44986 (= tp!130508 b_and!50391)))

(declare-fun b_free!13111 () Bool)

(declare-fun b_next!13111 () Bool)

(assert (=> start!44986 (= b_free!13111 (not b_next!13111))))

(declare-fun tp!130511 () Bool)

(declare-fun b_and!50393 () Bool)

(assert (=> start!44986 (= tp!130511 b_and!50393)))

(assert (=> start!44986 true))

(declare-fun order!4119 () Int)

(declare-fun order!4121 () Int)

(declare-fun f!1027 () Int)

(declare-fun lambda!13918 () Int)

(declare-fun dynLambda!2819 (Int Int) Int)

(declare-fun dynLambda!2820 (Int Int) Int)

(assert (=> start!44986 (< (dynLambda!2819 order!4119 f!1027) (dynLambda!2820 order!4121 lambda!13918))))

(assert (=> start!44986 true))

(declare-fun order!4123 () Int)

(declare-fun p!1789 () Int)

(declare-fun dynLambda!2821 (Int Int) Int)

(assert (=> start!44986 (< (dynLambda!2821 order!4123 p!1789) (dynLambda!2820 order!4121 lambda!13918))))

(declare-fun setNonEmpty!1881 () Bool)

(declare-fun setRes!1881 () Bool)

(declare-fun tp!130510 () Bool)

(declare-fun tp_is_empty!2077 () Bool)

(assert (=> setNonEmpty!1881 (= setRes!1881 (and tp!130510 tp_is_empty!2077))))

(declare-datatypes ((A!349 0))(
  ( (A!350 (val!1487 Int)) )
))
(declare-fun s!1494 () (Set A!349))

(declare-fun setElem!1881 () A!349)

(declare-fun setRest!1881 () (Set A!349))

(assert (=> setNonEmpty!1881 (= s!1494 (set.union (set.insert setElem!1881 (as set.empty (Set A!349))) setRest!1881))))

(declare-fun b!471249 () Bool)

(declare-fun e!288165 () Bool)

(declare-fun tp_is_empty!2079 () Bool)

(declare-fun tp!130509 () Bool)

(assert (=> b!471249 (= e!288165 (and tp_is_empty!2079 tp!130509))))

(declare-fun b!471250 () Bool)

(declare-fun e!288164 () Bool)

(declare-fun e!288166 () Bool)

(assert (=> b!471250 (= e!288164 e!288166)))

(declare-fun res!208920 () Bool)

(assert (=> b!471250 (=> (not res!208920) (not e!288166))))

(declare-datatypes ((B!911 0))(
  ( (B!912 (val!1488 Int)) )
))
(declare-datatypes ((List!4542 0))(
  ( (Nil!4532) (Cons!4532 (h!9929 B!911) (t!72950 List!4542)) )
))
(declare-fun l!2882 () List!4542)

(declare-fun lt!209971 () List!4542)

(declare-fun subseq!100 (List!4542 List!4542) Bool)

(assert (=> b!471250 (= res!208920 (subseq!100 l!2882 lt!209971))))

(declare-fun lt!209972 () (Set B!911))

(declare-fun toList!313 ((Set B!911)) List!4542)

(assert (=> b!471250 (= lt!209971 (toList!313 lt!209972))))

(declare-fun flatMap!79 ((Set A!349) Int) (Set B!911))

(assert (=> b!471250 (= lt!209972 (flatMap!79 s!1494 f!1027))))

(declare-fun res!208919 () Bool)

(assert (=> start!44986 (=> (not res!208919) (not e!288164))))

(declare-fun Forall!229 (Int) Bool)

(assert (=> start!44986 (= res!208919 (Forall!229 lambda!13918))))

(assert (=> start!44986 e!288164))

(assert (=> start!44986 tp!130508))

(assert (=> start!44986 tp!130511))

(declare-fun condSetEmpty!1881 () Bool)

(assert (=> start!44986 (= condSetEmpty!1881 (= s!1494 (as set.empty (Set A!349))))))

(assert (=> start!44986 setRes!1881))

(assert (=> start!44986 e!288165))

(declare-fun b!471251 () Bool)

(assert (=> b!471251 (= e!288166 (not (set.member (h!9929 l!2882) lt!209972)))))

(declare-datatypes ((Unit!8269 0))(
  ( (Unit!8270) )
))
(declare-fun lt!209973 () Unit!8269)

(declare-fun subseqContains!11 (List!4542 List!4542 B!911) Unit!8269)

(assert (=> b!471251 (= lt!209973 (subseqContains!11 l!2882 lt!209971 (h!9929 l!2882)))))

(declare-fun setIsEmpty!1881 () Bool)

(assert (=> setIsEmpty!1881 setRes!1881))

(declare-fun b!471252 () Bool)

(declare-fun res!208918 () Bool)

(assert (=> b!471252 (=> (not res!208918) (not e!288166))))

(assert (=> b!471252 (= res!208918 (is-Cons!4532 l!2882))))

(assert (= (and start!44986 res!208919) b!471250))

(assert (= (and b!471250 res!208920) b!471252))

(assert (= (and b!471252 res!208918) b!471251))

(assert (= (and start!44986 condSetEmpty!1881) setIsEmpty!1881))

(assert (= (and start!44986 (not condSetEmpty!1881)) setNonEmpty!1881))

(assert (= (and start!44986 (is-Cons!4532 l!2882)) b!471249))

(declare-fun m!744815 () Bool)

(assert (=> b!471250 m!744815))

(declare-fun m!744817 () Bool)

(assert (=> b!471250 m!744817))

(declare-fun m!744819 () Bool)

(assert (=> b!471250 m!744819))

(declare-fun m!744821 () Bool)

(assert (=> start!44986 m!744821))

(declare-fun m!744823 () Bool)

(assert (=> b!471251 m!744823))

(declare-fun m!744825 () Bool)

(assert (=> b!471251 m!744825))

(push 1)

(assert (not b!471250))

(assert (not b!471249))

(assert (not b!471251))

(assert (not start!44986))

(assert (not b_next!13109))

(assert b_and!50391)

(assert b_and!50393)

(assert (not b_next!13111))

(assert tp_is_empty!2079)

(assert (not setNonEmpty!1881))

(assert tp_is_empty!2077)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50391)

(assert b_and!50393)

(assert (not b_next!13111))

(assert (not b_next!13109))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179262 () Bool)

(declare-fun contains!1021 (List!4542 B!911) Bool)

(assert (=> d!179262 (contains!1021 lt!209971 (h!9929 l!2882))))

(declare-fun lt!209985 () Unit!8269)

(declare-fun choose!3539 (List!4542 List!4542 B!911) Unit!8269)

(assert (=> d!179262 (= lt!209985 (choose!3539 l!2882 lt!209971 (h!9929 l!2882)))))

(declare-fun e!288178 () Bool)

(assert (=> d!179262 e!288178))

(declare-fun res!208932 () Bool)

(assert (=> d!179262 (=> (not res!208932) (not e!288178))))

(assert (=> d!179262 (= res!208932 (subseq!100 l!2882 lt!209971))))

(assert (=> d!179262 (= (subseqContains!11 l!2882 lt!209971 (h!9929 l!2882)) lt!209985)))

(declare-fun b!471275 () Bool)

(assert (=> b!471275 (= e!288178 (contains!1021 l!2882 (h!9929 l!2882)))))

(assert (= (and d!179262 res!208932) b!471275))

(declare-fun m!744839 () Bool)

(assert (=> d!179262 m!744839))

(declare-fun m!744841 () Bool)

(assert (=> d!179262 m!744841))

(assert (=> d!179262 m!744815))

(declare-fun m!744843 () Bool)

(assert (=> b!471275 m!744843))

(assert (=> b!471251 d!179262))

(declare-fun b!471284 () Bool)

(declare-fun e!288189 () Bool)

(declare-fun e!288188 () Bool)

(assert (=> b!471284 (= e!288189 e!288188)))

(declare-fun res!208942 () Bool)

(assert (=> b!471284 (=> (not res!208942) (not e!288188))))

(assert (=> b!471284 (= res!208942 (is-Cons!4532 lt!209971))))

(declare-fun b!471285 () Bool)

(declare-fun e!288187 () Bool)

(assert (=> b!471285 (= e!288188 e!288187)))

(declare-fun res!208944 () Bool)

(assert (=> b!471285 (=> res!208944 e!288187)))

(declare-fun e!288190 () Bool)

(assert (=> b!471285 (= res!208944 e!288190)))

(declare-fun res!208943 () Bool)

(assert (=> b!471285 (=> (not res!208943) (not e!288190))))

(assert (=> b!471285 (= res!208943 (= (h!9929 l!2882) (h!9929 lt!209971)))))

(declare-fun b!471287 () Bool)

(assert (=> b!471287 (= e!288187 (subseq!100 l!2882 (t!72950 lt!209971)))))

(declare-fun b!471286 () Bool)

(assert (=> b!471286 (= e!288190 (subseq!100 (t!72950 l!2882) (t!72950 lt!209971)))))

(declare-fun d!179264 () Bool)

(declare-fun res!208941 () Bool)

(assert (=> d!179264 (=> res!208941 e!288189)))

(assert (=> d!179264 (= res!208941 (is-Nil!4532 l!2882))))

(assert (=> d!179264 (= (subseq!100 l!2882 lt!209971) e!288189)))

(assert (= (and d!179264 (not res!208941)) b!471284))

(assert (= (and b!471284 res!208942) b!471285))

(assert (= (and b!471285 res!208943) b!471286))

(assert (= (and b!471285 (not res!208944)) b!471287))

(declare-fun m!744845 () Bool)

(assert (=> b!471287 m!744845))

(declare-fun m!744847 () Bool)

(assert (=> b!471286 m!744847))

(assert (=> b!471250 d!179264))

(declare-fun d!179266 () Bool)

(declare-fun e!288193 () Bool)

(assert (=> d!179266 e!288193))

(declare-fun res!208947 () Bool)

(assert (=> d!179266 (=> (not res!208947) (not e!288193))))

(declare-fun lt!209988 () List!4542)

(declare-fun noDuplicate!91 (List!4542) Bool)

(assert (=> d!179266 (= res!208947 (noDuplicate!91 lt!209988))))

(declare-fun choose!3540 ((Set B!911)) List!4542)

(assert (=> d!179266 (= lt!209988 (choose!3540 lt!209972))))

(assert (=> d!179266 (= (toList!313 lt!209972) lt!209988)))

(declare-fun b!471290 () Bool)

(declare-fun content!768 (List!4542) (Set B!911))

(assert (=> b!471290 (= e!288193 (= (content!768 lt!209988) lt!209972))))

(assert (= (and d!179266 res!208947) b!471290))

(declare-fun m!744849 () Bool)

(assert (=> d!179266 m!744849))

(declare-fun m!744851 () Bool)

(assert (=> d!179266 m!744851))

(declare-fun m!744853 () Bool)

(assert (=> b!471290 m!744853))

(assert (=> b!471250 d!179266))

(declare-fun d!179268 () Bool)

(declare-fun choose!3541 ((Set A!349) Int) (Set B!911))

(assert (=> d!179268 (= (flatMap!79 s!1494 f!1027) (choose!3541 s!1494 f!1027))))

(declare-fun bs!58406 () Bool)

(assert (= bs!58406 d!179268))

(declare-fun m!744855 () Bool)

(assert (=> bs!58406 m!744855))

(assert (=> b!471250 d!179268))

(declare-fun d!179270 () Bool)

(declare-fun choose!3542 (Int) Bool)

(assert (=> d!179270 (= (Forall!229 lambda!13918) (choose!3542 lambda!13918))))

(declare-fun bs!58407 () Bool)

(assert (= bs!58407 d!179270))

(declare-fun m!744857 () Bool)

(assert (=> bs!58407 m!744857))

(assert (=> start!44986 d!179270))

(declare-fun condSetEmpty!1887 () Bool)

(assert (=> setNonEmpty!1881 (= condSetEmpty!1887 (= setRest!1881 (as set.empty (Set A!349))))))

(declare-fun setRes!1887 () Bool)

(assert (=> setNonEmpty!1881 (= tp!130510 setRes!1887)))

(declare-fun setIsEmpty!1887 () Bool)

(assert (=> setIsEmpty!1887 setRes!1887))

(declare-fun setNonEmpty!1887 () Bool)

(declare-fun tp!130526 () Bool)

(assert (=> setNonEmpty!1887 (= setRes!1887 (and tp!130526 tp_is_empty!2077))))

(declare-fun setElem!1887 () A!349)

(declare-fun setRest!1887 () (Set A!349))

(assert (=> setNonEmpty!1887 (= setRest!1881 (set.union (set.insert setElem!1887 (as set.empty (Set A!349))) setRest!1887))))

(assert (= (and setNonEmpty!1881 condSetEmpty!1887) setIsEmpty!1887))

(assert (= (and setNonEmpty!1881 (not condSetEmpty!1887)) setNonEmpty!1887))

(declare-fun b!471297 () Bool)

(declare-fun e!288196 () Bool)

(declare-fun tp!130529 () Bool)

(assert (=> b!471297 (= e!288196 (and tp_is_empty!2079 tp!130529))))

(assert (=> b!471249 (= tp!130509 e!288196)))

(assert (= (and b!471249 (is-Cons!4532 (t!72950 l!2882))) b!471297))

(push 1)

(assert (not d!179270))

(assert (not setNonEmpty!1887))

(assert (not b!471286))

(assert (not b!471297))

(assert (not d!179268))

(assert tp_is_empty!2077)

(assert (not b_next!13109))

(assert b_and!50391)

(assert (not b!471287))

(assert b_and!50393)

(assert (not b_next!13111))

(assert tp_is_empty!2079)

(assert (not b!471290))

(assert (not b!471275))

(assert (not d!179262))

(assert (not d!179266))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50391)

(assert b_and!50393)

(assert (not b_next!13111))

(assert (not b_next!13109))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!471298 () Bool)

(declare-fun e!288199 () Bool)

(declare-fun e!288198 () Bool)

(assert (=> b!471298 (= e!288199 e!288198)))

(declare-fun res!208949 () Bool)

(assert (=> b!471298 (=> (not res!208949) (not e!288198))))

(assert (=> b!471298 (= res!208949 (is-Cons!4532 (t!72950 lt!209971)))))

(declare-fun b!471299 () Bool)

(declare-fun e!288197 () Bool)

(assert (=> b!471299 (= e!288198 e!288197)))

(declare-fun res!208951 () Bool)

(assert (=> b!471299 (=> res!208951 e!288197)))

(declare-fun e!288200 () Bool)

(assert (=> b!471299 (= res!208951 e!288200)))

(declare-fun res!208950 () Bool)

(assert (=> b!471299 (=> (not res!208950) (not e!288200))))

(assert (=> b!471299 (= res!208950 (= (h!9929 (t!72950 l!2882)) (h!9929 (t!72950 lt!209971))))))

(declare-fun b!471301 () Bool)

(assert (=> b!471301 (= e!288197 (subseq!100 (t!72950 l!2882) (t!72950 (t!72950 lt!209971))))))

(declare-fun b!471300 () Bool)

(assert (=> b!471300 (= e!288200 (subseq!100 (t!72950 (t!72950 l!2882)) (t!72950 (t!72950 lt!209971))))))

(declare-fun d!179274 () Bool)

(declare-fun res!208948 () Bool)

(assert (=> d!179274 (=> res!208948 e!288199)))

(assert (=> d!179274 (= res!208948 (is-Nil!4532 (t!72950 l!2882)))))

(assert (=> d!179274 (= (subseq!100 (t!72950 l!2882) (t!72950 lt!209971)) e!288199)))

(assert (= (and d!179274 (not res!208948)) b!471298))

(assert (= (and b!471298 res!208949) b!471299))

(assert (= (and b!471299 res!208950) b!471300))

(assert (= (and b!471299 (not res!208951)) b!471301))

(declare-fun m!744859 () Bool)

(assert (=> b!471301 m!744859))

(declare-fun m!744861 () Bool)

(assert (=> b!471300 m!744861))

(assert (=> b!471286 d!179274))

(declare-fun d!179276 () Bool)

(assert (=> d!179276 true))

(assert (=> d!179276 true))

(declare-fun res!208962 () Bool)

(assert (=> d!179276 (= (choose!3542 lambda!13918) res!208962)))

(assert (=> d!179270 d!179276))

(declare-fun d!179278 () Bool)

(declare-fun c!94797 () Bool)

(assert (=> d!179278 (= c!94797 (is-Nil!4532 lt!209988))))

(declare-fun e!288211 () (Set B!911))

(assert (=> d!179278 (= (content!768 lt!209988) e!288211)))

(declare-fun b!471314 () Bool)

(assert (=> b!471314 (= e!288211 (as set.empty (Set B!911)))))

(declare-fun b!471315 () Bool)

(assert (=> b!471315 (= e!288211 (set.union (set.insert (h!9929 lt!209988) (as set.empty (Set B!911))) (content!768 (t!72950 lt!209988))))))

(assert (= (and d!179278 c!94797) b!471314))

(assert (= (and d!179278 (not c!94797)) b!471315))

(declare-fun m!744863 () Bool)

(assert (=> b!471315 m!744863))

(declare-fun m!744865 () Bool)

(assert (=> b!471315 m!744865))

(assert (=> b!471290 d!179278))

(declare-fun b!471316 () Bool)

(declare-fun e!288214 () Bool)

(declare-fun e!288213 () Bool)

(assert (=> b!471316 (= e!288214 e!288213)))

(declare-fun res!208964 () Bool)

(assert (=> b!471316 (=> (not res!208964) (not e!288213))))

(assert (=> b!471316 (= res!208964 (is-Cons!4532 (t!72950 lt!209971)))))

(declare-fun b!471317 () Bool)

(declare-fun e!288212 () Bool)

(assert (=> b!471317 (= e!288213 e!288212)))

(declare-fun res!208966 () Bool)

(assert (=> b!471317 (=> res!208966 e!288212)))

(declare-fun e!288215 () Bool)

(assert (=> b!471317 (= res!208966 e!288215)))

(declare-fun res!208965 () Bool)

(assert (=> b!471317 (=> (not res!208965) (not e!288215))))

(assert (=> b!471317 (= res!208965 (= (h!9929 l!2882) (h!9929 (t!72950 lt!209971))))))

(declare-fun b!471319 () Bool)

(assert (=> b!471319 (= e!288212 (subseq!100 l!2882 (t!72950 (t!72950 lt!209971))))))

(declare-fun b!471318 () Bool)

(assert (=> b!471318 (= e!288215 (subseq!100 (t!72950 l!2882) (t!72950 (t!72950 lt!209971))))))

(declare-fun d!179280 () Bool)

(declare-fun res!208963 () Bool)

(assert (=> d!179280 (=> res!208963 e!288214)))

(assert (=> d!179280 (= res!208963 (is-Nil!4532 l!2882))))

(assert (=> d!179280 (= (subseq!100 l!2882 (t!72950 lt!209971)) e!288214)))

(assert (= (and d!179280 (not res!208963)) b!471316))

(assert (= (and b!471316 res!208964) b!471317))

(assert (= (and b!471317 res!208965) b!471318))

(assert (= (and b!471317 (not res!208966)) b!471319))

(declare-fun m!744867 () Bool)

(assert (=> b!471319 m!744867))

(assert (=> b!471318 m!744859))

(assert (=> b!471287 d!179280))

(declare-fun d!179282 () Bool)

(declare-fun lt!209991 () Bool)

(assert (=> d!179282 (= lt!209991 (set.member (h!9929 l!2882) (content!768 l!2882)))))

(declare-fun e!288225 () Bool)

(assert (=> d!179282 (= lt!209991 e!288225)))

(declare-fun res!208975 () Bool)

(assert (=> d!179282 (=> (not res!208975) (not e!288225))))

(assert (=> d!179282 (= res!208975 (is-Cons!4532 l!2882))))

(assert (=> d!179282 (= (contains!1021 l!2882 (h!9929 l!2882)) lt!209991)))

(declare-fun b!471328 () Bool)

(declare-fun e!288224 () Bool)

(assert (=> b!471328 (= e!288225 e!288224)))

(declare-fun res!208976 () Bool)

(assert (=> b!471328 (=> res!208976 e!288224)))

(assert (=> b!471328 (= res!208976 (= (h!9929 l!2882) (h!9929 l!2882)))))

(declare-fun b!471329 () Bool)

(assert (=> b!471329 (= e!288224 (contains!1021 (t!72950 l!2882) (h!9929 l!2882)))))

(assert (= (and d!179282 res!208975) b!471328))

(assert (= (and b!471328 (not res!208976)) b!471329))

(declare-fun m!744873 () Bool)

(assert (=> d!179282 m!744873))

(declare-fun m!744875 () Bool)

(assert (=> d!179282 m!744875))

(declare-fun m!744877 () Bool)

(assert (=> b!471329 m!744877))

(assert (=> b!471275 d!179282))

(declare-fun d!179286 () Bool)

(declare-fun lt!209992 () Bool)

(assert (=> d!179286 (= lt!209992 (set.member (h!9929 l!2882) (content!768 lt!209971)))))

(declare-fun e!288227 () Bool)

(assert (=> d!179286 (= lt!209992 e!288227)))

(declare-fun res!208977 () Bool)

(assert (=> d!179286 (=> (not res!208977) (not e!288227))))

(assert (=> d!179286 (= res!208977 (is-Cons!4532 lt!209971))))

(assert (=> d!179286 (= (contains!1021 lt!209971 (h!9929 l!2882)) lt!209992)))

(declare-fun b!471330 () Bool)

(declare-fun e!288226 () Bool)

(assert (=> b!471330 (= e!288227 e!288226)))

(declare-fun res!208978 () Bool)

(assert (=> b!471330 (=> res!208978 e!288226)))

(assert (=> b!471330 (= res!208978 (= (h!9929 lt!209971) (h!9929 l!2882)))))

(declare-fun b!471331 () Bool)

(assert (=> b!471331 (= e!288226 (contains!1021 (t!72950 lt!209971) (h!9929 l!2882)))))

(assert (= (and d!179286 res!208977) b!471330))

(assert (= (and b!471330 (not res!208978)) b!471331))

(declare-fun m!744879 () Bool)

(assert (=> d!179286 m!744879))

(declare-fun m!744881 () Bool)

(assert (=> d!179286 m!744881))

(declare-fun m!744883 () Bool)

(assert (=> b!471331 m!744883))

(assert (=> d!179262 d!179286))

(declare-fun d!179288 () Bool)

(assert (=> d!179288 (contains!1021 lt!209971 (h!9929 l!2882))))

(assert (=> d!179288 true))

(declare-fun _$10!100 () Unit!8269)

(assert (=> d!179288 (= (choose!3539 l!2882 lt!209971 (h!9929 l!2882)) _$10!100)))

(declare-fun bs!58408 () Bool)

(assert (= bs!58408 d!179288))

(assert (=> bs!58408 m!744839))

(assert (=> d!179262 d!179288))

(assert (=> d!179262 d!179264))

(declare-fun d!179290 () Bool)

(declare-fun res!208983 () Bool)

(declare-fun e!288232 () Bool)

(assert (=> d!179290 (=> res!208983 e!288232)))

(assert (=> d!179290 (= res!208983 (is-Nil!4532 lt!209988))))

(assert (=> d!179290 (= (noDuplicate!91 lt!209988) e!288232)))

(declare-fun b!471336 () Bool)

(declare-fun e!288233 () Bool)

(assert (=> b!471336 (= e!288232 e!288233)))

(declare-fun res!208984 () Bool)

(assert (=> b!471336 (=> (not res!208984) (not e!288233))))

(assert (=> b!471336 (= res!208984 (not (contains!1021 (t!72950 lt!209988) (h!9929 lt!209988))))))

(declare-fun b!471337 () Bool)

(assert (=> b!471337 (= e!288233 (noDuplicate!91 (t!72950 lt!209988)))))

(assert (= (and d!179290 (not res!208983)) b!471336))

(assert (= (and b!471336 res!208984) b!471337))

(declare-fun m!744885 () Bool)

(assert (=> b!471336 m!744885))

(declare-fun m!744887 () Bool)

(assert (=> b!471337 m!744887))

(assert (=> d!179266 d!179290))

(declare-fun d!179292 () Bool)

(declare-fun e!288241 () Bool)

(assert (=> d!179292 e!288241))

(declare-fun res!208992 () Bool)

(assert (=> d!179292 (=> (not res!208992) (not e!288241))))

(declare-fun res!208991 () List!4542)

(assert (=> d!179292 (= res!208992 (noDuplicate!91 res!208991))))

(declare-fun e!288240 () Bool)

(assert (=> d!179292 e!288240))

(assert (=> d!179292 (= (choose!3540 lt!209972) res!208991)))

(declare-fun b!471344 () Bool)

(declare-fun tp!130532 () Bool)

(assert (=> b!471344 (= e!288240 (and tp_is_empty!2079 tp!130532))))

(declare-fun b!471345 () Bool)

(assert (=> b!471345 (= e!288241 (= (content!768 res!208991) lt!209972))))

(assert (= (and d!179292 (is-Cons!4532 res!208991)) b!471344))

(assert (= (and d!179292 res!208992) b!471345))

(declare-fun m!744889 () Bool)

(assert (=> d!179292 m!744889))

(declare-fun m!744891 () Bool)

(assert (=> b!471345 m!744891))

(assert (=> d!179266 d!179292))

(declare-fun d!179294 () Bool)

(assert (=> d!179294 true))

(declare-fun setRes!1890 () Bool)

(assert (=> d!179294 setRes!1890))

(declare-fun condSetEmpty!1890 () Bool)

(declare-fun res!208996 () (Set B!911))

(assert (=> d!179294 (= condSetEmpty!1890 (= res!208996 (as set.empty (Set B!911))))))

(assert (=> d!179294 (= (choose!3541 s!1494 f!1027) res!208996)))

(declare-fun setIsEmpty!1890 () Bool)

(assert (=> setIsEmpty!1890 setRes!1890))

(declare-fun setNonEmpty!1890 () Bool)

(declare-fun tp!130535 () Bool)

(assert (=> setNonEmpty!1890 (= setRes!1890 (and tp!130535 tp_is_empty!2079))))

(declare-fun setElem!1890 () B!911)

(declare-fun setRest!1890 () (Set B!911))

(assert (=> setNonEmpty!1890 (= res!208996 (set.union (set.insert setElem!1890 (as set.empty (Set B!911))) setRest!1890))))

(assert (= (and d!179294 condSetEmpty!1890) setIsEmpty!1890))

(assert (= (and d!179294 (not condSetEmpty!1890)) setNonEmpty!1890))

(assert (=> d!179268 d!179294))

(declare-fun b!471347 () Bool)

(declare-fun e!288243 () Bool)

(declare-fun tp!130536 () Bool)

(assert (=> b!471347 (= e!288243 (and tp_is_empty!2079 tp!130536))))

(assert (=> b!471297 (= tp!130529 e!288243)))

(assert (= (and b!471297 (is-Cons!4532 (t!72950 (t!72950 l!2882)))) b!471347))

(declare-fun condSetEmpty!1891 () Bool)

(assert (=> setNonEmpty!1887 (= condSetEmpty!1891 (= setRest!1887 (as set.empty (Set A!349))))))

(declare-fun setRes!1891 () Bool)

(assert (=> setNonEmpty!1887 (= tp!130526 setRes!1891)))

(declare-fun setIsEmpty!1891 () Bool)

(assert (=> setIsEmpty!1891 setRes!1891))

(declare-fun setNonEmpty!1891 () Bool)

(declare-fun tp!130537 () Bool)

(assert (=> setNonEmpty!1891 (= setRes!1891 (and tp!130537 tp_is_empty!2077))))

(declare-fun setElem!1891 () A!349)

(declare-fun setRest!1891 () (Set A!349))

(assert (=> setNonEmpty!1891 (= setRest!1887 (set.union (set.insert setElem!1891 (as set.empty (Set A!349))) setRest!1891))))

(assert (= (and setNonEmpty!1887 condSetEmpty!1891) setIsEmpty!1891))

(assert (= (and setNonEmpty!1887 (not condSetEmpty!1891)) setNonEmpty!1891))

(push 1)

(assert (not d!179282))

(assert (not setNonEmpty!1890))

(assert (not d!179292))

(assert (not b!471347))

(assert (not b!471329))

(assert (not b!471336))

(assert tp_is_empty!2077)

(assert (not b!471315))

(assert (not b_next!13111))

(assert (not b!471337))

(assert (not b!471331))

(assert (not b!471301))

(assert (not setNonEmpty!1891))

(assert (not b_next!13109))

(assert (not b!471319))

(assert (not d!179286))

(assert b_and!50391)

(assert (not b!471344))

(assert (not b!471300))

(assert b_and!50393)

(assert (not b!471318))

(assert tp_is_empty!2079)

(assert (not d!179288))

(assert (not b!471345))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50391)

(assert b_and!50393)

(assert (not b_next!13111))

(assert (not b_next!13109))

(check-sat)

(pop 1)

