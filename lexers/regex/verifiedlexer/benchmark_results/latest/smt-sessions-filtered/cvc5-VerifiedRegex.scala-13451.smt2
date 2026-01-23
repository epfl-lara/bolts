; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727368 () Bool)

(assert start!727368)

(declare-fun bs!1938892 () Bool)

(declare-fun b!7509217 () Bool)

(assert (= bs!1938892 (and b!7509217 start!727368)))

(declare-fun lambda!465983 () Int)

(declare-fun lambda!465982 () Int)

(assert (=> bs!1938892 (not (= lambda!465983 lambda!465982))))

(declare-fun bs!1938893 () Bool)

(declare-fun b!7509218 () Bool)

(assert (= bs!1938893 (and b!7509218 start!727368)))

(declare-fun lambda!465984 () Int)

(assert (=> bs!1938893 (not (= lambda!465984 lambda!465982))))

(declare-fun bs!1938894 () Bool)

(assert (= bs!1938894 (and b!7509218 b!7509217)))

(assert (=> bs!1938894 (= lambda!465984 lambda!465983)))

(declare-datatypes ((Unit!166494 0))(
  ( (Unit!166495) )
))
(declare-fun e!4477672 () Unit!166494)

(declare-fun Unit!166496 () Unit!166494)

(assert (=> b!7509217 (= e!4477672 Unit!166496)))

(declare-datatypes ((C!39802 0))(
  ( (C!39803 (val!30299 Int)) )
))
(declare-datatypes ((Regex!19738 0))(
  ( (ElementMatch!19738 (c!1386667 C!39802)) (Concat!28583 (regOne!39988 Regex!19738) (regTwo!39988 Regex!19738)) (EmptyExpr!19738) (Star!19738 (reg!20067 Regex!19738)) (EmptyLang!19738) (Union!19738 (regOne!39989 Regex!19738) (regTwo!39989 Regex!19738)) )
))
(declare-datatypes ((List!72585 0))(
  ( (Nil!72461) (Cons!72461 (h!78909 Regex!19738) (t!387154 List!72585)) )
))
(declare-datatypes ((Context!16980 0))(
  ( (Context!16981 (exprs!8990 List!72585)) )
))
(declare-datatypes ((List!72586 0))(
  ( (Nil!72462) (Cons!72462 (h!78910 Context!16980) (t!387155 List!72586)) )
))
(declare-fun lt!2637125 () List!72586)

(declare-fun call!688906 () List!72586)

(assert (=> b!7509217 (= lt!2637125 call!688906)))

(declare-fun lt!2637126 () Unit!166494)

(declare-fun lemmaNotForallThenExists!514 (List!72586 Int) Unit!166494)

(assert (=> b!7509217 (= lt!2637126 (lemmaNotForallThenExists!514 lt!2637125 lambda!465982))))

(declare-fun call!688905 () Bool)

(assert (=> b!7509217 call!688905))

(declare-fun Unit!166497 () Unit!166494)

(assert (=> b!7509218 (= e!4477672 Unit!166497)))

(declare-fun lt!2637124 () List!72586)

(assert (=> b!7509218 (= lt!2637124 call!688906)))

(declare-fun lt!2637123 () Unit!166494)

(declare-fun lemmaForallThenNotExists!481 (List!72586 Int) Unit!166494)

(assert (=> b!7509218 (= lt!2637123 (lemmaForallThenNotExists!481 lt!2637124 lambda!465982))))

(assert (=> b!7509218 (not call!688905)))

(declare-fun c!1386666 () Bool)

(declare-fun bm!688900 () Bool)

(declare-fun exists!4893 (List!72586 Int) Bool)

(assert (=> bm!688900 (= call!688905 (exists!4893 (ite c!1386666 lt!2637125 lt!2637124) (ite c!1386666 lambda!465983 lambda!465984)))))

(declare-fun bm!688901 () Bool)

(declare-fun z!556 () (Set Context!16980))

(declare-fun toList!11855 ((Set Context!16980)) List!72586)

(assert (=> bm!688901 (= call!688906 (toList!11855 z!556))))

(declare-fun setIsEmpty!57173 () Bool)

(declare-fun setRes!57173 () Bool)

(assert (=> setIsEmpty!57173 setRes!57173))

(declare-fun b!7509219 () Bool)

(declare-fun e!4477671 () Bool)

(declare-fun tp!2179617 () Bool)

(assert (=> b!7509219 (= e!4477671 tp!2179617)))

(declare-fun tp!2179616 () Bool)

(declare-fun setNonEmpty!57173 () Bool)

(declare-fun setElem!57173 () Context!16980)

(declare-fun inv!92576 (Context!16980) Bool)

(assert (=> setNonEmpty!57173 (= setRes!57173 (and tp!2179616 (inv!92576 setElem!57173) e!4477671))))

(declare-fun setRest!57173 () (Set Context!16980))

(assert (=> setNonEmpty!57173 (= z!556 (set.union (set.insert setElem!57173 (as set.empty (Set Context!16980))) setRest!57173))))

(declare-fun lt!2637127 () Unit!166494)

(assert (=> start!727368 (= lt!2637127 e!4477672)))

(declare-fun forall!18350 ((Set Context!16980) Int) Bool)

(assert (=> start!727368 (= c!1386666 (not (forall!18350 z!556 lambda!465982)))))

(declare-datatypes ((List!72587 0))(
  ( (Nil!72463) (Cons!72463 (h!78911 C!39802) (t!387156 List!72587)) )
))
(declare-datatypes ((Option!17239 0))(
  ( (None!17238) (Some!17238 (v!54367 List!72587)) )
))
(declare-fun isEmpty!41326 (Option!17239) Bool)

(declare-fun getLanguageWitness!1071 ((Set Context!16980)) Option!17239)

(assert (=> start!727368 (not (= (forall!18350 z!556 lambda!465982) (isEmpty!41326 (getLanguageWitness!1071 z!556))))))

(declare-fun condSetEmpty!57173 () Bool)

(assert (=> start!727368 (= condSetEmpty!57173 (= z!556 (as set.empty (Set Context!16980))))))

(assert (=> start!727368 setRes!57173))

(assert (= (and start!727368 c!1386666) b!7509217))

(assert (= (and start!727368 (not c!1386666)) b!7509218))

(assert (= (or b!7509217 b!7509218) bm!688900))

(assert (= (or b!7509217 b!7509218) bm!688901))

(assert (= (and start!727368 condSetEmpty!57173) setIsEmpty!57173))

(assert (= (and start!727368 (not condSetEmpty!57173)) setNonEmpty!57173))

(assert (= setNonEmpty!57173 b!7509219))

(declare-fun m!8093280 () Bool)

(assert (=> start!727368 m!8093280))

(assert (=> start!727368 m!8093280))

(declare-fun m!8093282 () Bool)

(assert (=> start!727368 m!8093282))

(assert (=> start!727368 m!8093282))

(declare-fun m!8093284 () Bool)

(assert (=> start!727368 m!8093284))

(declare-fun m!8093286 () Bool)

(assert (=> setNonEmpty!57173 m!8093286))

(declare-fun m!8093288 () Bool)

(assert (=> b!7509218 m!8093288))

(declare-fun m!8093290 () Bool)

(assert (=> bm!688901 m!8093290))

(declare-fun m!8093292 () Bool)

(assert (=> bm!688900 m!8093292))

(declare-fun m!8093294 () Bool)

(assert (=> b!7509217 m!8093294))

(push 1)

(assert (not bm!688901))

(assert (not start!727368))

(assert (not b!7509218))

(assert (not bm!688900))

(assert (not b!7509217))

(assert (not b!7509219))

(assert (not setNonEmpty!57173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1938898 () Bool)

(declare-fun d!2305956 () Bool)

(assert (= bs!1938898 (and d!2305956 start!727368)))

(declare-fun lambda!466002 () Int)

(assert (=> bs!1938898 (not (= lambda!466002 lambda!465982))))

(declare-fun bs!1938899 () Bool)

(assert (= bs!1938899 (and d!2305956 b!7509217)))

(assert (=> bs!1938899 (not (= lambda!466002 lambda!465983))))

(declare-fun bs!1938900 () Bool)

(assert (= bs!1938900 (and d!2305956 b!7509218)))

(assert (=> bs!1938900 (not (= lambda!466002 lambda!465984))))

(assert (=> d!2305956 true))

(declare-fun order!29677 () Int)

(declare-fun dynLambda!29798 (Int Int) Int)

(assert (=> d!2305956 (< (dynLambda!29798 order!29677 (ite c!1386666 lambda!465983 lambda!465984)) (dynLambda!29798 order!29677 lambda!466002))))

(declare-fun forall!18352 (List!72586 Int) Bool)

(assert (=> d!2305956 (= (exists!4893 (ite c!1386666 lt!2637125 lt!2637124) (ite c!1386666 lambda!465983 lambda!465984)) (not (forall!18352 (ite c!1386666 lt!2637125 lt!2637124) lambda!466002)))))

(declare-fun bs!1938901 () Bool)

(assert (= bs!1938901 d!2305956))

(declare-fun m!8093312 () Bool)

(assert (=> bs!1938901 m!8093312))

(assert (=> bm!688900 d!2305956))

(declare-fun d!2305958 () Bool)

(declare-fun e!4477685 () Bool)

(assert (=> d!2305958 e!4477685))

(declare-fun res!3012642 () Bool)

(assert (=> d!2305958 (=> (not res!3012642) (not e!4477685))))

(declare-fun lt!2637145 () List!72586)

(declare-fun noDuplicate!3156 (List!72586) Bool)

(assert (=> d!2305958 (= res!3012642 (noDuplicate!3156 lt!2637145))))

(declare-fun choose!58235 ((Set Context!16980)) List!72586)

(assert (=> d!2305958 (= lt!2637145 (choose!58235 z!556))))

(assert (=> d!2305958 (= (toList!11855 z!556) lt!2637145)))

(declare-fun b!7509233 () Bool)

(declare-fun content!15325 (List!72586) (Set Context!16980))

(assert (=> b!7509233 (= e!4477685 (= (content!15325 lt!2637145) z!556))))

(assert (= (and d!2305958 res!3012642) b!7509233))

(declare-fun m!8093314 () Bool)

(assert (=> d!2305958 m!8093314))

(declare-fun m!8093316 () Bool)

(assert (=> d!2305958 m!8093316))

(declare-fun m!8093318 () Bool)

(assert (=> b!7509233 m!8093318))

(assert (=> bm!688901 d!2305958))

(declare-fun d!2305960 () Bool)

(declare-fun lt!2637148 () Bool)

(assert (=> d!2305960 (= lt!2637148 (forall!18352 (toList!11855 z!556) lambda!465982))))

(declare-fun choose!58236 ((Set Context!16980) Int) Bool)

(assert (=> d!2305960 (= lt!2637148 (choose!58236 z!556 lambda!465982))))

(assert (=> d!2305960 (= (forall!18350 z!556 lambda!465982) lt!2637148)))

(declare-fun bs!1938902 () Bool)

(assert (= bs!1938902 d!2305960))

(assert (=> bs!1938902 m!8093290))

(assert (=> bs!1938902 m!8093290))

(declare-fun m!8093320 () Bool)

(assert (=> bs!1938902 m!8093320))

(declare-fun m!8093322 () Bool)

(assert (=> bs!1938902 m!8093322))

(assert (=> start!727368 d!2305960))

(declare-fun d!2305962 () Bool)

(assert (=> d!2305962 (= (isEmpty!41326 (getLanguageWitness!1071 z!556)) (not (is-Some!17238 (getLanguageWitness!1071 z!556))))))

(assert (=> start!727368 d!2305962))

(declare-fun bs!1938903 () Bool)

(declare-fun d!2305964 () Bool)

(assert (= bs!1938903 (and d!2305964 start!727368)))

(declare-fun lambda!466009 () Int)

(assert (=> bs!1938903 (not (= lambda!466009 lambda!465982))))

(declare-fun bs!1938904 () Bool)

(assert (= bs!1938904 (and d!2305964 b!7509217)))

(assert (=> bs!1938904 (= lambda!466009 lambda!465983)))

(declare-fun bs!1938905 () Bool)

(assert (= bs!1938905 (and d!2305964 b!7509218)))

(assert (=> bs!1938905 (= lambda!466009 lambda!465984)))

(declare-fun bs!1938906 () Bool)

(assert (= bs!1938906 (and d!2305964 d!2305956)))

(assert (=> bs!1938906 (not (= lambda!466009 lambda!466002))))

(declare-fun lt!2637151 () Option!17239)

(declare-fun isDefined!13913 (Option!17239) Bool)

(declare-fun exists!4895 ((Set Context!16980) Int) Bool)

(assert (=> d!2305964 (= (isDefined!13913 lt!2637151) (exists!4895 z!556 lambda!466009))))

(declare-fun e!4477688 () Option!17239)

(assert (=> d!2305964 (= lt!2637151 e!4477688)))

(declare-fun c!1386688 () Bool)

(assert (=> d!2305964 (= c!1386688 (exists!4895 z!556 lambda!466009))))

(assert (=> d!2305964 (= (getLanguageWitness!1071 z!556) lt!2637151)))

(declare-fun b!7509238 () Bool)

(declare-fun getLanguageWitness!1073 (Context!16980) Option!17239)

(declare-fun getWitness!2485 ((Set Context!16980) Int) Context!16980)

(assert (=> b!7509238 (= e!4477688 (getLanguageWitness!1073 (getWitness!2485 z!556 lambda!466009)))))

(declare-fun b!7509239 () Bool)

(assert (=> b!7509239 (= e!4477688 None!17238)))

(assert (= (and d!2305964 c!1386688) b!7509238))

(assert (= (and d!2305964 (not c!1386688)) b!7509239))

(declare-fun m!8093324 () Bool)

(assert (=> d!2305964 m!8093324))

(declare-fun m!8093326 () Bool)

(assert (=> d!2305964 m!8093326))

(assert (=> d!2305964 m!8093326))

(declare-fun m!8093328 () Bool)

(assert (=> b!7509238 m!8093328))

(assert (=> b!7509238 m!8093328))

(declare-fun m!8093330 () Bool)

(assert (=> b!7509238 m!8093330))

(assert (=> start!727368 d!2305964))

(declare-fun bs!1938907 () Bool)

(declare-fun d!2305968 () Bool)

(assert (= bs!1938907 (and d!2305968 b!7509217)))

(declare-fun lambda!466013 () Int)

(assert (=> bs!1938907 (not (= lambda!466013 lambda!465983))))

(declare-fun bs!1938908 () Bool)

(assert (= bs!1938908 (and d!2305968 d!2305956)))

(assert (=> bs!1938908 (= (= lambda!465982 (ite c!1386666 lambda!465983 lambda!465984)) (= lambda!466013 lambda!466002))))

(declare-fun bs!1938909 () Bool)

(assert (= bs!1938909 (and d!2305968 b!7509218)))

(assert (=> bs!1938909 (not (= lambda!466013 lambda!465984))))

(declare-fun bs!1938910 () Bool)

(assert (= bs!1938910 (and d!2305968 d!2305964)))

(assert (=> bs!1938910 (not (= lambda!466013 lambda!466009))))

(declare-fun bs!1938911 () Bool)

(assert (= bs!1938911 (and d!2305968 start!727368)))

(assert (=> bs!1938911 (not (= lambda!466013 lambda!465982))))

(assert (=> d!2305968 true))

(assert (=> d!2305968 (< (dynLambda!29798 order!29677 lambda!465982) (dynLambda!29798 order!29677 lambda!466013))))

(assert (=> d!2305968 (exists!4893 lt!2637125 lambda!466013)))

(declare-fun lt!2637154 () Unit!166494)

(declare-fun choose!58237 (List!72586 Int) Unit!166494)

(assert (=> d!2305968 (= lt!2637154 (choose!58237 lt!2637125 lambda!465982))))

(assert (=> d!2305968 (not (forall!18352 lt!2637125 lambda!465982))))

(assert (=> d!2305968 (= (lemmaNotForallThenExists!514 lt!2637125 lambda!465982) lt!2637154)))

(declare-fun bs!1938912 () Bool)

(assert (= bs!1938912 d!2305968))

(declare-fun m!8093332 () Bool)

(assert (=> bs!1938912 m!8093332))

(declare-fun m!8093334 () Bool)

(assert (=> bs!1938912 m!8093334))

(declare-fun m!8093336 () Bool)

(assert (=> bs!1938912 m!8093336))

(assert (=> b!7509217 d!2305968))

(declare-fun bs!1938916 () Bool)

(declare-fun d!2305970 () Bool)

(assert (= bs!1938916 (and d!2305970 b!7509217)))

(declare-fun lambda!466018 () Int)

(assert (=> bs!1938916 (not (= lambda!466018 lambda!465983))))

(declare-fun bs!1938917 () Bool)

(assert (= bs!1938917 (and d!2305970 d!2305956)))

(assert (=> bs!1938917 (= (= lambda!465982 (ite c!1386666 lambda!465983 lambda!465984)) (= lambda!466018 lambda!466002))))

(declare-fun bs!1938918 () Bool)

(assert (= bs!1938918 (and d!2305970 b!7509218)))

(assert (=> bs!1938918 (not (= lambda!466018 lambda!465984))))

(declare-fun bs!1938919 () Bool)

(assert (= bs!1938919 (and d!2305970 d!2305964)))

(assert (=> bs!1938919 (not (= lambda!466018 lambda!466009))))

(declare-fun bs!1938920 () Bool)

(assert (= bs!1938920 (and d!2305970 start!727368)))

(assert (=> bs!1938920 (not (= lambda!466018 lambda!465982))))

(declare-fun bs!1938921 () Bool)

(assert (= bs!1938921 (and d!2305970 d!2305968)))

(assert (=> bs!1938921 (= lambda!466018 lambda!466013)))

(assert (=> d!2305970 true))

(assert (=> d!2305970 (< (dynLambda!29798 order!29677 lambda!465982) (dynLambda!29798 order!29677 lambda!466018))))

(assert (=> d!2305970 (not (exists!4893 lt!2637124 lambda!466018))))

(declare-fun lt!2637157 () Unit!166494)

(declare-fun choose!58238 (List!72586 Int) Unit!166494)

(assert (=> d!2305970 (= lt!2637157 (choose!58238 lt!2637124 lambda!465982))))

(assert (=> d!2305970 (forall!18352 lt!2637124 lambda!465982)))

(assert (=> d!2305970 (= (lemmaForallThenNotExists!481 lt!2637124 lambda!465982) lt!2637157)))

(declare-fun bs!1938923 () Bool)

(assert (= bs!1938923 d!2305970))

(declare-fun m!8093340 () Bool)

(assert (=> bs!1938923 m!8093340))

(declare-fun m!8093342 () Bool)

(assert (=> bs!1938923 m!8093342))

(declare-fun m!8093344 () Bool)

(assert (=> bs!1938923 m!8093344))

(assert (=> b!7509218 d!2305970))

(declare-fun d!2305974 () Bool)

(declare-fun lambda!466021 () Int)

(declare-fun forall!18353 (List!72585 Int) Bool)

(assert (=> d!2305974 (= (inv!92576 setElem!57173) (forall!18353 (exprs!8990 setElem!57173) lambda!466021))))

(declare-fun bs!1938924 () Bool)

(assert (= bs!1938924 d!2305974))

(declare-fun m!8093346 () Bool)

(assert (=> bs!1938924 m!8093346))

(assert (=> setNonEmpty!57173 d!2305974))

(declare-fun b!7509246 () Bool)

(declare-fun e!4477697 () Bool)

(declare-fun tp!2179628 () Bool)

(declare-fun tp!2179629 () Bool)

(assert (=> b!7509246 (= e!4477697 (and tp!2179628 tp!2179629))))

(assert (=> b!7509219 (= tp!2179617 e!4477697)))

(assert (= (and b!7509219 (is-Cons!72461 (exprs!8990 setElem!57173))) b!7509246))

(declare-fun condSetEmpty!57179 () Bool)

(assert (=> setNonEmpty!57173 (= condSetEmpty!57179 (= setRest!57173 (as set.empty (Set Context!16980))))))

(declare-fun setRes!57179 () Bool)

(assert (=> setNonEmpty!57173 (= tp!2179616 setRes!57179)))

(declare-fun setIsEmpty!57179 () Bool)

(assert (=> setIsEmpty!57179 setRes!57179))

(declare-fun tp!2179634 () Bool)

(declare-fun setElem!57179 () Context!16980)

(declare-fun setNonEmpty!57179 () Bool)

(declare-fun e!4477700 () Bool)

(assert (=> setNonEmpty!57179 (= setRes!57179 (and tp!2179634 (inv!92576 setElem!57179) e!4477700))))

(declare-fun setRest!57179 () (Set Context!16980))

(assert (=> setNonEmpty!57179 (= setRest!57173 (set.union (set.insert setElem!57179 (as set.empty (Set Context!16980))) setRest!57179))))

(declare-fun b!7509251 () Bool)

(declare-fun tp!2179635 () Bool)

(assert (=> b!7509251 (= e!4477700 tp!2179635)))

(assert (= (and setNonEmpty!57173 condSetEmpty!57179) setIsEmpty!57179))

(assert (= (and setNonEmpty!57173 (not condSetEmpty!57179)) setNonEmpty!57179))

(assert (= setNonEmpty!57179 b!7509251))

(declare-fun m!8093348 () Bool)

(assert (=> setNonEmpty!57179 m!8093348))

(push 1)

(assert (not d!2305964))

(assert (not d!2305974))

(assert (not setNonEmpty!57179))

(assert (not b!7509246))

(assert (not d!2305956))

(assert (not d!2305960))

(assert (not b!7509238))

(assert (not b!7509233))

(assert (not b!7509251))

(assert (not d!2305958))

(assert (not d!2305970))

(assert (not d!2305968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1938944 () Bool)

(declare-fun d!2305988 () Bool)

(assert (= bs!1938944 (and d!2305988 d!2305974)))

(declare-fun lambda!466040 () Int)

(assert (=> bs!1938944 (not (= lambda!466040 lambda!466021))))

(declare-fun b!7509283 () Bool)

(declare-fun e!4477723 () Option!17239)

(assert (=> b!7509283 (= e!4477723 None!17238)))

(declare-fun b!7509285 () Bool)

(declare-fun c!1386706 () Bool)

(declare-fun lt!2637181 () Option!17239)

(assert (=> b!7509285 (= c!1386706 (is-Some!17238 lt!2637181))))

(assert (=> b!7509285 (= lt!2637181 (getLanguageWitness!1073 (Context!16981 (t!387154 (exprs!8990 (getWitness!2485 z!556 lambda!466009))))))))

(declare-fun e!4477721 () Option!17239)

(assert (=> b!7509285 (= e!4477723 e!4477721)))

(declare-fun b!7509286 () Bool)

(declare-fun e!4477722 () Option!17239)

(assert (=> b!7509286 (= e!4477722 e!4477723)))

(declare-fun lt!2637180 () Option!17239)

(declare-fun getLanguageWitness!1075 (Regex!19738) Option!17239)

(assert (=> b!7509286 (= lt!2637180 (getLanguageWitness!1075 (h!78909 (exprs!8990 (getWitness!2485 z!556 lambda!466009)))))))

(declare-fun c!1386705 () Bool)

(assert (=> b!7509286 (= c!1386705 (is-Some!17238 lt!2637180))))

(declare-fun b!7509287 () Bool)

(assert (=> b!7509287 (= e!4477722 (Some!17238 Nil!72463))))

(declare-fun b!7509288 () Bool)

(assert (=> b!7509288 (= e!4477721 None!17238)))

(declare-fun lt!2637179 () Option!17239)

(declare-fun exists!4897 (List!72585 Int) Bool)

(assert (=> d!2305988 (= (isEmpty!41326 lt!2637179) (exists!4897 (exprs!8990 (getWitness!2485 z!556 lambda!466009)) lambda!466040))))

(assert (=> d!2305988 (= lt!2637179 e!4477722)))

(declare-fun c!1386707 () Bool)

(assert (=> d!2305988 (= c!1386707 (is-Cons!72461 (exprs!8990 (getWitness!2485 z!556 lambda!466009))))))

(assert (=> d!2305988 (= (getLanguageWitness!1073 (getWitness!2485 z!556 lambda!466009)) lt!2637179)))

(declare-fun b!7509284 () Bool)

(declare-fun ++!17349 (List!72587 List!72587) List!72587)

(assert (=> b!7509284 (= e!4477721 (Some!17238 (++!17349 (v!54367 lt!2637180) (v!54367 lt!2637181))))))

(assert (= (and d!2305988 c!1386707) b!7509286))

(assert (= (and d!2305988 (not c!1386707)) b!7509287))

(assert (= (and b!7509286 c!1386705) b!7509285))

(assert (= (and b!7509286 (not c!1386705)) b!7509283))

(assert (= (and b!7509285 c!1386706) b!7509284))

(assert (= (and b!7509285 (not c!1386706)) b!7509288))

(declare-fun m!8093384 () Bool)

(assert (=> b!7509285 m!8093384))

(declare-fun m!8093386 () Bool)

(assert (=> b!7509286 m!8093386))

(declare-fun m!8093388 () Bool)

(assert (=> d!2305988 m!8093388))

(declare-fun m!8093390 () Bool)

(assert (=> d!2305988 m!8093390))

(declare-fun m!8093392 () Bool)

(assert (=> b!7509284 m!8093392))

(assert (=> b!7509238 d!2305988))

(declare-fun d!2305990 () Bool)

(declare-fun e!4477726 () Bool)

(assert (=> d!2305990 e!4477726))

(declare-fun res!3012648 () Bool)

(assert (=> d!2305990 (=> (not res!3012648) (not e!4477726))))

(declare-fun lt!2637184 () Context!16980)

(declare-fun dynLambda!29800 (Int Context!16980) Bool)

(assert (=> d!2305990 (= res!3012648 (dynLambda!29800 lambda!466009 lt!2637184))))

(declare-fun getWitness!2487 (List!72586 Int) Context!16980)

(assert (=> d!2305990 (= lt!2637184 (getWitness!2487 (toList!11855 z!556) lambda!466009))))

(assert (=> d!2305990 (exists!4895 z!556 lambda!466009)))

(assert (=> d!2305990 (= (getWitness!2485 z!556 lambda!466009) lt!2637184)))

(declare-fun b!7509291 () Bool)

(assert (=> b!7509291 (= e!4477726 (set.member lt!2637184 z!556))))

(assert (= (and d!2305990 res!3012648) b!7509291))

(declare-fun b_lambda!287903 () Bool)

(assert (=> (not b_lambda!287903) (not d!2305990)))

(declare-fun m!8093394 () Bool)

(assert (=> d!2305990 m!8093394))

(assert (=> d!2305990 m!8093290))

(assert (=> d!2305990 m!8093290))

(declare-fun m!8093396 () Bool)

(assert (=> d!2305990 m!8093396))

(assert (=> d!2305990 m!8093326))

(declare-fun m!8093398 () Bool)

(assert (=> b!7509291 m!8093398))

(assert (=> b!7509238 d!2305990))

(declare-fun d!2305992 () Bool)

(declare-fun res!3012653 () Bool)

(declare-fun e!4477731 () Bool)

(assert (=> d!2305992 (=> res!3012653 e!4477731)))

(assert (=> d!2305992 (= res!3012653 (is-Nil!72462 (ite c!1386666 lt!2637125 lt!2637124)))))

(assert (=> d!2305992 (= (forall!18352 (ite c!1386666 lt!2637125 lt!2637124) lambda!466002) e!4477731)))

(declare-fun b!7509296 () Bool)

(declare-fun e!4477732 () Bool)

(assert (=> b!7509296 (= e!4477731 e!4477732)))

(declare-fun res!3012654 () Bool)

(assert (=> b!7509296 (=> (not res!3012654) (not e!4477732))))

(assert (=> b!7509296 (= res!3012654 (dynLambda!29800 lambda!466002 (h!78910 (ite c!1386666 lt!2637125 lt!2637124))))))

(declare-fun b!7509297 () Bool)

(assert (=> b!7509297 (= e!4477732 (forall!18352 (t!387155 (ite c!1386666 lt!2637125 lt!2637124)) lambda!466002))))

(assert (= (and d!2305992 (not res!3012653)) b!7509296))

(assert (= (and b!7509296 res!3012654) b!7509297))

(declare-fun b_lambda!287905 () Bool)

(assert (=> (not b_lambda!287905) (not b!7509296)))

(declare-fun m!8093400 () Bool)

(assert (=> b!7509296 m!8093400))

(declare-fun m!8093402 () Bool)

(assert (=> b!7509297 m!8093402))

(assert (=> d!2305956 d!2305992))

(declare-fun d!2305994 () Bool)

(declare-fun res!3012659 () Bool)

(declare-fun e!4477737 () Bool)

(assert (=> d!2305994 (=> res!3012659 e!4477737)))

(assert (=> d!2305994 (= res!3012659 (is-Nil!72462 lt!2637145))))

(assert (=> d!2305994 (= (noDuplicate!3156 lt!2637145) e!4477737)))

(declare-fun b!7509302 () Bool)

(declare-fun e!4477738 () Bool)

(assert (=> b!7509302 (= e!4477737 e!4477738)))

(declare-fun res!3012660 () Bool)

(assert (=> b!7509302 (=> (not res!3012660) (not e!4477738))))

(declare-fun contains!20871 (List!72586 Context!16980) Bool)

(assert (=> b!7509302 (= res!3012660 (not (contains!20871 (t!387155 lt!2637145) (h!78910 lt!2637145))))))

(declare-fun b!7509303 () Bool)

(assert (=> b!7509303 (= e!4477738 (noDuplicate!3156 (t!387155 lt!2637145)))))

(assert (= (and d!2305994 (not res!3012659)) b!7509302))

(assert (= (and b!7509302 res!3012660) b!7509303))

(declare-fun m!8093404 () Bool)

(assert (=> b!7509302 m!8093404))

(declare-fun m!8093406 () Bool)

(assert (=> b!7509303 m!8093406))

(assert (=> d!2305958 d!2305994))

(declare-fun d!2305996 () Bool)

(declare-fun e!4477746 () Bool)

(assert (=> d!2305996 e!4477746))

(declare-fun res!3012666 () Bool)

(assert (=> d!2305996 (=> (not res!3012666) (not e!4477746))))

(declare-fun res!3012665 () List!72586)

(assert (=> d!2305996 (= res!3012666 (noDuplicate!3156 res!3012665))))

(declare-fun e!4477747 () Bool)

(assert (=> d!2305996 e!4477747))

(assert (=> d!2305996 (= (choose!58235 z!556) res!3012665)))

(declare-fun b!7509311 () Bool)

(declare-fun e!4477745 () Bool)

(declare-fun tp!2179653 () Bool)

(assert (=> b!7509311 (= e!4477745 tp!2179653)))

(declare-fun b!7509310 () Bool)

(declare-fun tp!2179652 () Bool)

(assert (=> b!7509310 (= e!4477747 (and (inv!92576 (h!78910 res!3012665)) e!4477745 tp!2179652))))

(declare-fun b!7509312 () Bool)

(assert (=> b!7509312 (= e!4477746 (= (content!15325 res!3012665) z!556))))

(assert (= b!7509310 b!7509311))

(assert (= (and d!2305996 (is-Cons!72462 res!3012665)) b!7509310))

(assert (= (and d!2305996 res!3012666) b!7509312))

(declare-fun m!8093408 () Bool)

(assert (=> d!2305996 m!8093408))

(declare-fun m!8093410 () Bool)

(assert (=> b!7509310 m!8093410))

(declare-fun m!8093412 () Bool)

(assert (=> b!7509312 m!8093412))

(assert (=> d!2305958 d!2305996))

(declare-fun bs!1938945 () Bool)

(declare-fun d!2305998 () Bool)

(assert (= bs!1938945 (and d!2305998 b!7509217)))

(declare-fun lambda!466041 () Int)

(assert (=> bs!1938945 (not (= lambda!466041 lambda!465983))))

(declare-fun bs!1938946 () Bool)

(assert (= bs!1938946 (and d!2305998 d!2305956)))

(assert (=> bs!1938946 (= (= lambda!466018 (ite c!1386666 lambda!465983 lambda!465984)) (= lambda!466041 lambda!466002))))

(declare-fun bs!1938947 () Bool)

(assert (= bs!1938947 (and d!2305998 b!7509218)))

(assert (=> bs!1938947 (not (= lambda!466041 lambda!465984))))

(declare-fun bs!1938948 () Bool)

(assert (= bs!1938948 (and d!2305998 d!2305964)))

(assert (=> bs!1938948 (not (= lambda!466041 lambda!466009))))

(declare-fun bs!1938949 () Bool)

(assert (= bs!1938949 (and d!2305998 d!2305970)))

(assert (=> bs!1938949 (= (= lambda!466018 lambda!465982) (= lambda!466041 lambda!466018))))

(declare-fun bs!1938950 () Bool)

(assert (= bs!1938950 (and d!2305998 start!727368)))

(assert (=> bs!1938950 (not (= lambda!466041 lambda!465982))))

(declare-fun bs!1938951 () Bool)

(assert (= bs!1938951 (and d!2305998 d!2305968)))

(assert (=> bs!1938951 (= (= lambda!466018 lambda!465982) (= lambda!466041 lambda!466013))))

(assert (=> d!2305998 true))

(assert (=> d!2305998 (< (dynLambda!29798 order!29677 lambda!466018) (dynLambda!29798 order!29677 lambda!466041))))

(assert (=> d!2305998 (= (exists!4893 lt!2637124 lambda!466018) (not (forall!18352 lt!2637124 lambda!466041)))))

(declare-fun bs!1938952 () Bool)

(assert (= bs!1938952 d!2305998))

(declare-fun m!8093414 () Bool)

(assert (=> bs!1938952 m!8093414))

(assert (=> d!2305970 d!2305998))

(declare-fun bs!1938953 () Bool)

(declare-fun d!2306000 () Bool)

(assert (= bs!1938953 (and d!2306000 b!7509217)))

(declare-fun lambda!466044 () Int)

(assert (=> bs!1938953 (not (= lambda!466044 lambda!465983))))

(declare-fun bs!1938954 () Bool)

(assert (= bs!1938954 (and d!2306000 d!2305956)))

(assert (=> bs!1938954 (= (= lambda!465982 (ite c!1386666 lambda!465983 lambda!465984)) (= lambda!466044 lambda!466002))))

(declare-fun bs!1938955 () Bool)

(assert (= bs!1938955 (and d!2306000 b!7509218)))

(assert (=> bs!1938955 (not (= lambda!466044 lambda!465984))))

(declare-fun bs!1938956 () Bool)

(assert (= bs!1938956 (and d!2306000 d!2305998)))

(assert (=> bs!1938956 (= (= lambda!465982 lambda!466018) (= lambda!466044 lambda!466041))))

(declare-fun bs!1938957 () Bool)

(assert (= bs!1938957 (and d!2306000 d!2305964)))

(assert (=> bs!1938957 (not (= lambda!466044 lambda!466009))))

(declare-fun bs!1938958 () Bool)

(assert (= bs!1938958 (and d!2306000 d!2305970)))

(assert (=> bs!1938958 (= lambda!466044 lambda!466018)))

(declare-fun bs!1938959 () Bool)

(assert (= bs!1938959 (and d!2306000 start!727368)))

(assert (=> bs!1938959 (not (= lambda!466044 lambda!465982))))

(declare-fun bs!1938960 () Bool)

(assert (= bs!1938960 (and d!2306000 d!2305968)))

(assert (=> bs!1938960 (= lambda!466044 lambda!466013)))

(assert (=> d!2306000 true))

(assert (=> d!2306000 (< (dynLambda!29798 order!29677 lambda!465982) (dynLambda!29798 order!29677 lambda!466044))))

(assert (=> d!2306000 (not (exists!4893 lt!2637124 lambda!466044))))

(assert (=> d!2306000 true))

(declare-fun _$98!294 () Unit!166494)

(assert (=> d!2306000 (= (choose!58238 lt!2637124 lambda!465982) _$98!294)))

(declare-fun bs!1938961 () Bool)

(assert (= bs!1938961 d!2306000))

(declare-fun m!8093416 () Bool)

(assert (=> bs!1938961 m!8093416))

(assert (=> d!2305970 d!2306000))

(declare-fun d!2306002 () Bool)

(declare-fun res!3012667 () Bool)

(declare-fun e!4477750 () Bool)

(assert (=> d!2306002 (=> res!3012667 e!4477750)))

(assert (=> d!2306002 (= res!3012667 (is-Nil!72462 lt!2637124))))

(assert (=> d!2306002 (= (forall!18352 lt!2637124 lambda!465982) e!4477750)))

(declare-fun b!7509313 () Bool)

(declare-fun e!4477751 () Bool)

(assert (=> b!7509313 (= e!4477750 e!4477751)))

(declare-fun res!3012668 () Bool)

(assert (=> b!7509313 (=> (not res!3012668) (not e!4477751))))

(assert (=> b!7509313 (= res!3012668 (dynLambda!29800 lambda!465982 (h!78910 lt!2637124)))))

(declare-fun b!7509314 () Bool)

(assert (=> b!7509314 (= e!4477751 (forall!18352 (t!387155 lt!2637124) lambda!465982))))

(assert (= (and d!2306002 (not res!3012667)) b!7509313))

(assert (= (and b!7509313 res!3012668) b!7509314))

(declare-fun b_lambda!287907 () Bool)

(assert (=> (not b_lambda!287907) (not b!7509313)))

(declare-fun m!8093418 () Bool)

(assert (=> b!7509313 m!8093418))

(declare-fun m!8093420 () Bool)

(assert (=> b!7509314 m!8093420))

(assert (=> d!2305970 d!2306002))

(declare-fun d!2306004 () Bool)

(assert (=> d!2306004 (= (isDefined!13913 lt!2637151) (not (isEmpty!41326 lt!2637151)))))

(declare-fun bs!1938962 () Bool)

(assert (= bs!1938962 d!2306004))

(declare-fun m!8093422 () Bool)

(assert (=> bs!1938962 m!8093422))

(assert (=> d!2305964 d!2306004))

(declare-fun d!2306006 () Bool)

(declare-fun lt!2637187 () Bool)

(assert (=> d!2306006 (= lt!2637187 (exists!4893 (toList!11855 z!556) lambda!466009))))

(declare-fun choose!58243 ((Set Context!16980) Int) Bool)

(assert (=> d!2306006 (= lt!2637187 (choose!58243 z!556 lambda!466009))))

(assert (=> d!2306006 (= (exists!4895 z!556 lambda!466009) lt!2637187)))

(declare-fun bs!1938963 () Bool)

(assert (= bs!1938963 d!2306006))

(assert (=> bs!1938963 m!8093290))

(assert (=> bs!1938963 m!8093290))

(declare-fun m!8093424 () Bool)

(assert (=> bs!1938963 m!8093424))

(declare-fun m!8093426 () Bool)

(assert (=> bs!1938963 m!8093426))

(assert (=> d!2305964 d!2306006))

(declare-fun d!2306008 () Bool)

(declare-fun res!3012669 () Bool)

(declare-fun e!4477752 () Bool)

(assert (=> d!2306008 (=> res!3012669 e!4477752)))

(assert (=> d!2306008 (= res!3012669 (is-Nil!72462 (toList!11855 z!556)))))

(assert (=> d!2306008 (= (forall!18352 (toList!11855 z!556) lambda!465982) e!4477752)))

(declare-fun b!7509315 () Bool)

(declare-fun e!4477753 () Bool)

(assert (=> b!7509315 (= e!4477752 e!4477753)))

(declare-fun res!3012670 () Bool)

(assert (=> b!7509315 (=> (not res!3012670) (not e!4477753))))

(assert (=> b!7509315 (= res!3012670 (dynLambda!29800 lambda!465982 (h!78910 (toList!11855 z!556))))))

(declare-fun b!7509316 () Bool)

(assert (=> b!7509316 (= e!4477753 (forall!18352 (t!387155 (toList!11855 z!556)) lambda!465982))))

(assert (= (and d!2306008 (not res!3012669)) b!7509315))

(assert (= (and b!7509315 res!3012670) b!7509316))

(declare-fun b_lambda!287909 () Bool)

(assert (=> (not b_lambda!287909) (not b!7509315)))

(declare-fun m!8093428 () Bool)

(assert (=> b!7509315 m!8093428))

(declare-fun m!8093430 () Bool)

(assert (=> b!7509316 m!8093430))

(assert (=> d!2305960 d!2306008))

(assert (=> d!2305960 d!2305958))

(declare-fun d!2306010 () Bool)

(declare-fun res!3012673 () Bool)

(assert (=> d!2306010 (= res!3012673 (forall!18352 (toList!11855 z!556) lambda!465982))))

(assert (=> d!2306010 true))

(assert (=> d!2306010 (= (choose!58236 z!556 lambda!465982) res!3012673)))

(declare-fun bs!1938964 () Bool)

(assert (= bs!1938964 d!2306010))

(assert (=> bs!1938964 m!8093290))

(assert (=> bs!1938964 m!8093290))

(assert (=> bs!1938964 m!8093320))

(assert (=> d!2305960 d!2306010))

(declare-fun bs!1938965 () Bool)

(declare-fun d!2306012 () Bool)

(assert (= bs!1938965 (and d!2306012 b!7509217)))

(declare-fun lambda!466045 () Int)

(assert (=> bs!1938965 (not (= lambda!466045 lambda!465983))))

(declare-fun bs!1938966 () Bool)

(assert (= bs!1938966 (and d!2306012 d!2305956)))

(assert (=> bs!1938966 (= (= lambda!466013 (ite c!1386666 lambda!465983 lambda!465984)) (= lambda!466045 lambda!466002))))

(declare-fun bs!1938967 () Bool)

(assert (= bs!1938967 (and d!2306012 b!7509218)))

(assert (=> bs!1938967 (not (= lambda!466045 lambda!465984))))

(declare-fun bs!1938968 () Bool)

(assert (= bs!1938968 (and d!2306012 d!2305998)))

(assert (=> bs!1938968 (= (= lambda!466013 lambda!466018) (= lambda!466045 lambda!466041))))

(declare-fun bs!1938969 () Bool)

(assert (= bs!1938969 (and d!2306012 d!2305964)))

(assert (=> bs!1938969 (not (= lambda!466045 lambda!466009))))

(declare-fun bs!1938970 () Bool)

(assert (= bs!1938970 (and d!2306012 d!2305970)))

(assert (=> bs!1938970 (= (= lambda!466013 lambda!465982) (= lambda!466045 lambda!466018))))

(declare-fun bs!1938971 () Bool)

(assert (= bs!1938971 (and d!2306012 start!727368)))

(assert (=> bs!1938971 (not (= lambda!466045 lambda!465982))))

(declare-fun bs!1938972 () Bool)

(assert (= bs!1938972 (and d!2306012 d!2306000)))

(assert (=> bs!1938972 (= (= lambda!466013 lambda!465982) (= lambda!466045 lambda!466044))))

(declare-fun bs!1938973 () Bool)

(assert (= bs!1938973 (and d!2306012 d!2305968)))

(assert (=> bs!1938973 (= (= lambda!466013 lambda!465982) (= lambda!466045 lambda!466013))))

(assert (=> d!2306012 true))

(assert (=> d!2306012 (< (dynLambda!29798 order!29677 lambda!466013) (dynLambda!29798 order!29677 lambda!466045))))

(assert (=> d!2306012 (= (exists!4893 lt!2637125 lambda!466013) (not (forall!18352 lt!2637125 lambda!466045)))))

(declare-fun bs!1938974 () Bool)

(assert (= bs!1938974 d!2306012))

(declare-fun m!8093432 () Bool)

(assert (=> bs!1938974 m!8093432))

(assert (=> d!2305968 d!2306012))

(declare-fun bs!1938975 () Bool)

(declare-fun d!2306014 () Bool)

(assert (= bs!1938975 (and d!2306014 b!7509217)))

(declare-fun lambda!466048 () Int)

(assert (=> bs!1938975 (not (= lambda!466048 lambda!465983))))

(declare-fun bs!1938976 () Bool)

(assert (= bs!1938976 (and d!2306014 d!2305956)))

(assert (=> bs!1938976 (= (= lambda!465982 (ite c!1386666 lambda!465983 lambda!465984)) (= lambda!466048 lambda!466002))))

(declare-fun bs!1938977 () Bool)

(assert (= bs!1938977 (and d!2306014 b!7509218)))

(assert (=> bs!1938977 (not (= lambda!466048 lambda!465984))))

(declare-fun bs!1938978 () Bool)

(assert (= bs!1938978 (and d!2306014 d!2305998)))

(assert (=> bs!1938978 (= (= lambda!465982 lambda!466018) (= lambda!466048 lambda!466041))))

(declare-fun bs!1938979 () Bool)

(assert (= bs!1938979 (and d!2306014 d!2305964)))

(assert (=> bs!1938979 (not (= lambda!466048 lambda!466009))))

(declare-fun bs!1938980 () Bool)

(assert (= bs!1938980 (and d!2306014 d!2305970)))

(assert (=> bs!1938980 (= lambda!466048 lambda!466018)))

(declare-fun bs!1938981 () Bool)

(assert (= bs!1938981 (and d!2306014 d!2306012)))

(assert (=> bs!1938981 (= (= lambda!465982 lambda!466013) (= lambda!466048 lambda!466045))))

(declare-fun bs!1938982 () Bool)

(assert (= bs!1938982 (and d!2306014 start!727368)))

(assert (=> bs!1938982 (not (= lambda!466048 lambda!465982))))

(declare-fun bs!1938983 () Bool)

(assert (= bs!1938983 (and d!2306014 d!2306000)))

(assert (=> bs!1938983 (= lambda!466048 lambda!466044)))

(declare-fun bs!1938984 () Bool)

(assert (= bs!1938984 (and d!2306014 d!2305968)))

(assert (=> bs!1938984 (= lambda!466048 lambda!466013)))

(assert (=> d!2306014 true))

(assert (=> d!2306014 (< (dynLambda!29798 order!29677 lambda!465982) (dynLambda!29798 order!29677 lambda!466048))))

(assert (=> d!2306014 (exists!4893 lt!2637125 lambda!466048)))

(assert (=> d!2306014 true))

(declare-fun _$97!203 () Unit!166494)

(assert (=> d!2306014 (= (choose!58237 lt!2637125 lambda!465982) _$97!203)))

(declare-fun bs!1938985 () Bool)

(assert (= bs!1938985 d!2306014))

(declare-fun m!8093434 () Bool)

(assert (=> bs!1938985 m!8093434))

(assert (=> d!2305968 d!2306014))

(declare-fun d!2306016 () Bool)

(declare-fun res!3012674 () Bool)

(declare-fun e!4477756 () Bool)

(assert (=> d!2306016 (=> res!3012674 e!4477756)))

(assert (=> d!2306016 (= res!3012674 (is-Nil!72462 lt!2637125))))

(assert (=> d!2306016 (= (forall!18352 lt!2637125 lambda!465982) e!4477756)))

(declare-fun b!7509317 () Bool)

(declare-fun e!4477757 () Bool)

(assert (=> b!7509317 (= e!4477756 e!4477757)))

(declare-fun res!3012675 () Bool)

(assert (=> b!7509317 (=> (not res!3012675) (not e!4477757))))

(assert (=> b!7509317 (= res!3012675 (dynLambda!29800 lambda!465982 (h!78910 lt!2637125)))))

(declare-fun b!7509318 () Bool)

(assert (=> b!7509318 (= e!4477757 (forall!18352 (t!387155 lt!2637125) lambda!465982))))

(assert (= (and d!2306016 (not res!3012674)) b!7509317))

(assert (= (and b!7509317 res!3012675) b!7509318))

(declare-fun b_lambda!287911 () Bool)

(assert (=> (not b_lambda!287911) (not b!7509317)))

(declare-fun m!8093436 () Bool)

(assert (=> b!7509317 m!8093436))

(declare-fun m!8093438 () Bool)

(assert (=> b!7509318 m!8093438))

(assert (=> d!2305968 d!2306016))

(declare-fun bs!1938986 () Bool)

(declare-fun d!2306018 () Bool)

(assert (= bs!1938986 (and d!2306018 d!2305974)))

(declare-fun lambda!466049 () Int)

(assert (=> bs!1938986 (= lambda!466049 lambda!466021)))

(declare-fun bs!1938987 () Bool)

(assert (= bs!1938987 (and d!2306018 d!2305988)))

(assert (=> bs!1938987 (not (= lambda!466049 lambda!466040))))

(assert (=> d!2306018 (= (inv!92576 setElem!57179) (forall!18353 (exprs!8990 setElem!57179) lambda!466049))))

(declare-fun bs!1938988 () Bool)

(assert (= bs!1938988 d!2306018))

(declare-fun m!8093440 () Bool)

(assert (=> bs!1938988 m!8093440))

(assert (=> setNonEmpty!57179 d!2306018))

(declare-fun d!2306020 () Bool)

(declare-fun res!3012680 () Bool)

(declare-fun e!4477762 () Bool)

(assert (=> d!2306020 (=> res!3012680 e!4477762)))

(assert (=> d!2306020 (= res!3012680 (is-Nil!72461 (exprs!8990 setElem!57173)))))

(assert (=> d!2306020 (= (forall!18353 (exprs!8990 setElem!57173) lambda!466021) e!4477762)))

(declare-fun b!7509323 () Bool)

(declare-fun e!4477763 () Bool)

(assert (=> b!7509323 (= e!4477762 e!4477763)))

(declare-fun res!3012681 () Bool)

(assert (=> b!7509323 (=> (not res!3012681) (not e!4477763))))

(declare-fun dynLambda!29801 (Int Regex!19738) Bool)

(assert (=> b!7509323 (= res!3012681 (dynLambda!29801 lambda!466021 (h!78909 (exprs!8990 setElem!57173))))))

(declare-fun b!7509324 () Bool)

(assert (=> b!7509324 (= e!4477763 (forall!18353 (t!387154 (exprs!8990 setElem!57173)) lambda!466021))))

(assert (= (and d!2306020 (not res!3012680)) b!7509323))

(assert (= (and b!7509323 res!3012681) b!7509324))

(declare-fun b_lambda!287913 () Bool)

(assert (=> (not b_lambda!287913) (not b!7509323)))

(declare-fun m!8093442 () Bool)

(assert (=> b!7509323 m!8093442))

(declare-fun m!8093444 () Bool)

(assert (=> b!7509324 m!8093444))

(assert (=> d!2305974 d!2306020))

(declare-fun d!2306022 () Bool)

(declare-fun c!1386710 () Bool)

(assert (=> d!2306022 (= c!1386710 (is-Nil!72462 lt!2637145))))

(declare-fun e!4477766 () (Set Context!16980))

(assert (=> d!2306022 (= (content!15325 lt!2637145) e!4477766)))

(declare-fun b!7509329 () Bool)

(assert (=> b!7509329 (= e!4477766 (as set.empty (Set Context!16980)))))

(declare-fun b!7509330 () Bool)

(assert (=> b!7509330 (= e!4477766 (set.union (set.insert (h!78910 lt!2637145) (as set.empty (Set Context!16980))) (content!15325 (t!387155 lt!2637145))))))

(assert (= (and d!2306022 c!1386710) b!7509329))

(assert (= (and d!2306022 (not c!1386710)) b!7509330))

(declare-fun m!8093446 () Bool)

(assert (=> b!7509330 m!8093446))

(declare-fun m!8093448 () Bool)

(assert (=> b!7509330 m!8093448))

(assert (=> b!7509233 d!2306022))

(declare-fun condSetEmpty!57183 () Bool)

(assert (=> setNonEmpty!57179 (= condSetEmpty!57183 (= setRest!57179 (as set.empty (Set Context!16980))))))

(declare-fun setRes!57183 () Bool)

(assert (=> setNonEmpty!57179 (= tp!2179634 setRes!57183)))

(declare-fun setIsEmpty!57183 () Bool)

(assert (=> setIsEmpty!57183 setRes!57183))

(declare-fun tp!2179654 () Bool)

(declare-fun setElem!57183 () Context!16980)

(declare-fun setNonEmpty!57183 () Bool)

(declare-fun e!4477767 () Bool)

(assert (=> setNonEmpty!57183 (= setRes!57183 (and tp!2179654 (inv!92576 setElem!57183) e!4477767))))

(declare-fun setRest!57183 () (Set Context!16980))

(assert (=> setNonEmpty!57183 (= setRest!57179 (set.union (set.insert setElem!57183 (as set.empty (Set Context!16980))) setRest!57183))))

(declare-fun b!7509331 () Bool)

(declare-fun tp!2179655 () Bool)

(assert (=> b!7509331 (= e!4477767 tp!2179655)))

(assert (= (and setNonEmpty!57179 condSetEmpty!57183) setIsEmpty!57183))

(assert (= (and setNonEmpty!57179 (not condSetEmpty!57183)) setNonEmpty!57183))

(assert (= setNonEmpty!57183 b!7509331))

(declare-fun m!8093450 () Bool)

(assert (=> setNonEmpty!57183 m!8093450))

(declare-fun b!7509342 () Bool)

(declare-fun e!4477770 () Bool)

(declare-fun tp_is_empty!49781 () Bool)

(assert (=> b!7509342 (= e!4477770 tp_is_empty!49781)))

(declare-fun b!7509344 () Bool)

(declare-fun tp!2179670 () Bool)

(assert (=> b!7509344 (= e!4477770 tp!2179670)))

(declare-fun b!7509345 () Bool)

(declare-fun tp!2179669 () Bool)

(declare-fun tp!2179666 () Bool)

(assert (=> b!7509345 (= e!4477770 (and tp!2179669 tp!2179666))))

(declare-fun b!7509343 () Bool)

(declare-fun tp!2179667 () Bool)

(declare-fun tp!2179668 () Bool)

(assert (=> b!7509343 (= e!4477770 (and tp!2179667 tp!2179668))))

(assert (=> b!7509246 (= tp!2179628 e!4477770)))

(assert (= (and b!7509246 (is-ElementMatch!19738 (h!78909 (exprs!8990 setElem!57173)))) b!7509342))

(assert (= (and b!7509246 (is-Concat!28583 (h!78909 (exprs!8990 setElem!57173)))) b!7509343))

(assert (= (and b!7509246 (is-Star!19738 (h!78909 (exprs!8990 setElem!57173)))) b!7509344))

(assert (= (and b!7509246 (is-Union!19738 (h!78909 (exprs!8990 setElem!57173)))) b!7509345))

(declare-fun b!7509346 () Bool)

(declare-fun e!4477771 () Bool)

(declare-fun tp!2179671 () Bool)

(declare-fun tp!2179672 () Bool)

(assert (=> b!7509346 (= e!4477771 (and tp!2179671 tp!2179672))))

(assert (=> b!7509246 (= tp!2179629 e!4477771)))

(assert (= (and b!7509246 (is-Cons!72461 (t!387154 (exprs!8990 setElem!57173)))) b!7509346))

(declare-fun b!7509347 () Bool)

(declare-fun e!4477772 () Bool)

(declare-fun tp!2179673 () Bool)

(declare-fun tp!2179674 () Bool)

(assert (=> b!7509347 (= e!4477772 (and tp!2179673 tp!2179674))))

(assert (=> b!7509251 (= tp!2179635 e!4477772)))

(assert (= (and b!7509251 (is-Cons!72461 (exprs!8990 setElem!57179))) b!7509347))

(declare-fun b_lambda!287915 () Bool)

(assert (= b_lambda!287913 (or d!2305974 b_lambda!287915)))

(declare-fun bs!1938989 () Bool)

(declare-fun d!2306024 () Bool)

(assert (= bs!1938989 (and d!2306024 d!2305974)))

(declare-fun validRegex!10185 (Regex!19738) Bool)

(assert (=> bs!1938989 (= (dynLambda!29801 lambda!466021 (h!78909 (exprs!8990 setElem!57173))) (validRegex!10185 (h!78909 (exprs!8990 setElem!57173))))))

(declare-fun m!8093452 () Bool)

(assert (=> bs!1938989 m!8093452))

(assert (=> b!7509323 d!2306024))

(declare-fun b_lambda!287917 () Bool)

(assert (= b_lambda!287903 (or d!2305964 b_lambda!287917)))

(declare-fun bs!1938990 () Bool)

(declare-fun d!2306026 () Bool)

(assert (= bs!1938990 (and d!2306026 d!2305964)))

(declare-fun lostCause!1622 (Context!16980) Bool)

(assert (=> bs!1938990 (= (dynLambda!29800 lambda!466009 lt!2637184) (not (lostCause!1622 lt!2637184)))))

(declare-fun m!8093454 () Bool)

(assert (=> bs!1938990 m!8093454))

(assert (=> d!2305990 d!2306026))

(declare-fun b_lambda!287919 () Bool)

(assert (= b_lambda!287909 (or start!727368 b_lambda!287919)))

(declare-fun bs!1938991 () Bool)

(declare-fun d!2306028 () Bool)

(assert (= bs!1938991 (and d!2306028 start!727368)))

(assert (=> bs!1938991 (= (dynLambda!29800 lambda!465982 (h!78910 (toList!11855 z!556))) (lostCause!1622 (h!78910 (toList!11855 z!556))))))

(declare-fun m!8093456 () Bool)

(assert (=> bs!1938991 m!8093456))

(assert (=> b!7509315 d!2306028))

(declare-fun b_lambda!287921 () Bool)

(assert (= b_lambda!287911 (or start!727368 b_lambda!287921)))

(declare-fun bs!1938992 () Bool)

(declare-fun d!2306030 () Bool)

(assert (= bs!1938992 (and d!2306030 start!727368)))

(assert (=> bs!1938992 (= (dynLambda!29800 lambda!465982 (h!78910 lt!2637125)) (lostCause!1622 (h!78910 lt!2637125)))))

(declare-fun m!8093458 () Bool)

(assert (=> bs!1938992 m!8093458))

(assert (=> b!7509317 d!2306030))

(declare-fun b_lambda!287923 () Bool)

(assert (= b_lambda!287907 (or start!727368 b_lambda!287923)))

(declare-fun bs!1938993 () Bool)

(declare-fun d!2306032 () Bool)

(assert (= bs!1938993 (and d!2306032 start!727368)))

(assert (=> bs!1938993 (= (dynLambda!29800 lambda!465982 (h!78910 lt!2637124)) (lostCause!1622 (h!78910 lt!2637124)))))

(declare-fun m!8093460 () Bool)

(assert (=> bs!1938993 m!8093460))

(assert (=> b!7509313 d!2306032))

(declare-fun b_lambda!287925 () Bool)

(assert (= b_lambda!287905 (or d!2305956 b_lambda!287925)))

(declare-fun bs!1938994 () Bool)

(declare-fun d!2306034 () Bool)

(assert (= bs!1938994 (and d!2306034 d!2305956)))

(assert (=> bs!1938994 (= (dynLambda!29800 lambda!466002 (h!78910 (ite c!1386666 lt!2637125 lt!2637124))) (not (dynLambda!29800 (ite c!1386666 lambda!465983 lambda!465984) (h!78910 (ite c!1386666 lt!2637125 lt!2637124)))))))

(declare-fun b_lambda!287927 () Bool)

(assert (=> (not b_lambda!287927) (not bs!1938994)))

(declare-fun m!8093462 () Bool)

(assert (=> bs!1938994 m!8093462))

(assert (=> b!7509296 d!2306034))

(push 1)

(assert (not b!7509318))

(assert (not b!7509311))

(assert (not b_lambda!287921))

(assert (not b!7509343))

(assert (not d!2306004))

(assert (not b!7509346))

(assert (not b_lambda!287923))

(assert (not d!2306000))

(assert (not d!2305998))

(assert tp_is_empty!49781)

(assert (not d!2306010))

(assert (not bs!1938992))

(assert (not d!2306006))

(assert (not b_lambda!287927))

(assert (not b!7509344))

(assert (not b_lambda!287919))

(assert (not d!2305990))

(assert (not d!2306018))

(assert (not b_lambda!287915))

(assert (not bs!1938993))

(assert (not bs!1938990))

(assert (not b!7509312))

(assert (not d!2306014))

(assert (not d!2305996))

(assert (not bs!1938991))

(assert (not d!2306012))

(assert (not b_lambda!287917))

(assert (not b!7509314))

(assert (not b!7509324))

(assert (not b!7509310))

(assert (not b!7509347))

(assert (not b!7509286))

(assert (not b_lambda!287925))

(assert (not b!7509302))

(assert (not d!2305988))

(assert (not b!7509284))

(assert (not b!7509330))

(assert (not b!7509297))

(assert (not b!7509345))

(assert (not bs!1938989))

(assert (not b!7509316))

(assert (not b!7509303))

(assert (not b!7509331))

(assert (not setNonEmpty!57183))

(assert (not b!7509285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

