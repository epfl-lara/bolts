; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!713226 () Bool)

(assert start!713226)

(declare-fun b!7316840 () Bool)

(declare-fun e!4380280 () Bool)

(declare-fun tp!2077333 () Bool)

(assert (=> b!7316840 (= e!4380280 tp!2077333)))

(declare-fun b!7316841 () Bool)

(declare-fun e!4380279 () Bool)

(declare-datatypes ((C!38162 0))(
  ( (C!38163 (val!29177 Int)) )
))
(declare-datatypes ((Regex!18944 0))(
  ( (ElementMatch!18944 (c!1358288 C!38162)) (Concat!27789 (regOne!38400 Regex!18944) (regTwo!38400 Regex!18944)) (EmptyExpr!18944) (Star!18944 (reg!19273 Regex!18944)) (EmptyLang!18944) (Union!18944 (regOne!38401 Regex!18944) (regTwo!38401 Regex!18944)) )
))
(declare-datatypes ((List!71314 0))(
  ( (Nil!71190) (Cons!71190 (h!77638 Regex!18944) (t!385546 List!71314)) )
))
(declare-datatypes ((Context!15768 0))(
  ( (Context!15769 (exprs!8384 List!71314)) )
))
(declare-fun lt!2602316 () Context!15768)

(declare-fun nullableContext!408 (Context!15768) Bool)

(assert (=> b!7316841 (= e!4380279 (not (nullableContext!408 lt!2602316)))))

(declare-fun res!2956597 () Bool)

(declare-fun e!4380275 () Bool)

(assert (=> start!713226 (=> (not res!2956597) (not e!4380275))))

(declare-datatypes ((List!71315 0))(
  ( (Nil!71191) (Cons!71191 (h!77639 C!38162) (t!385547 List!71315)) )
))
(declare-fun s!7362 () List!71315)

(assert (=> start!713226 (= res!2956597 (not (is-Cons!71191 s!7362)))))

(assert (=> start!713226 e!4380275))

(declare-fun e!4380278 () Bool)

(assert (=> start!713226 e!4380278))

(declare-fun condSetEmpty!54642 () Bool)

(declare-fun z1!542 () (Set Context!15768))

(assert (=> start!713226 (= condSetEmpty!54642 (= z1!542 (as set.empty (Set Context!15768))))))

(declare-fun setRes!54643 () Bool)

(assert (=> start!713226 setRes!54643))

(declare-fun condSetEmpty!54643 () Bool)

(declare-fun z2!461 () (Set Context!15768))

(assert (=> start!713226 (= condSetEmpty!54643 (= z2!461 (as set.empty (Set Context!15768))))))

(declare-fun setRes!54642 () Bool)

(assert (=> start!713226 setRes!54642))

(declare-fun b!7316842 () Bool)

(declare-fun res!2956596 () Bool)

(declare-fun e!4380277 () Bool)

(assert (=> b!7316842 (=> (not res!2956596) (not e!4380277))))

(declare-fun lt!2602315 () (Set Context!15768))

(declare-fun lambda!452489 () Int)

(declare-fun exists!4597 ((Set Context!15768) Int) Bool)

(assert (=> b!7316842 (= res!2956596 (not (exists!4597 lt!2602315 lambda!452489)))))

(declare-fun b!7316843 () Bool)

(declare-fun tp_is_empty!47633 () Bool)

(declare-fun tp!2077334 () Bool)

(assert (=> b!7316843 (= e!4380278 (and tp_is_empty!47633 tp!2077334))))

(declare-fun b!7316844 () Bool)

(assert (=> b!7316844 (= e!4380275 e!4380277)))

(declare-fun res!2956600 () Bool)

(assert (=> b!7316844 (=> (not res!2956600) (not e!4380277))))

(declare-fun nullableZipper!3123 ((Set Context!15768)) Bool)

(assert (=> b!7316844 (= res!2956600 (not (nullableZipper!3123 lt!2602315)))))

(assert (=> b!7316844 (= lt!2602315 (set.union z1!542 z2!461))))

(declare-fun tp!2077336 () Bool)

(declare-fun setElem!54642 () Context!15768)

(declare-fun setNonEmpty!54642 () Bool)

(declare-fun inv!90482 (Context!15768) Bool)

(assert (=> setNonEmpty!54642 (= setRes!54643 (and tp!2077336 (inv!90482 setElem!54642) e!4380280))))

(declare-fun setRest!54642 () (Set Context!15768))

(assert (=> setNonEmpty!54642 (= z1!542 (set.union (set.insert setElem!54642 (as set.empty (Set Context!15768))) setRest!54642))))

(declare-fun setIsEmpty!54642 () Bool)

(assert (=> setIsEmpty!54642 setRes!54643))

(declare-fun tp!2077335 () Bool)

(declare-fun setElem!54643 () Context!15768)

(declare-fun setNonEmpty!54643 () Bool)

(declare-fun e!4380276 () Bool)

(assert (=> setNonEmpty!54643 (= setRes!54642 (and tp!2077335 (inv!90482 setElem!54643) e!4380276))))

(declare-fun setRest!54643 () (Set Context!15768))

(assert (=> setNonEmpty!54643 (= z2!461 (set.union (set.insert setElem!54643 (as set.empty (Set Context!15768))) setRest!54643))))

(declare-fun setIsEmpty!54643 () Bool)

(assert (=> setIsEmpty!54643 setRes!54642))

(declare-fun b!7316845 () Bool)

(declare-fun tp!2077332 () Bool)

(assert (=> b!7316845 (= e!4380276 tp!2077332)))

(declare-fun b!7316846 () Bool)

(declare-fun res!2956599 () Bool)

(assert (=> b!7316846 (=> (not res!2956599) (not e!4380277))))

(assert (=> b!7316846 (= res!2956599 (nullableZipper!3123 z1!542))))

(declare-fun b!7316847 () Bool)

(assert (=> b!7316847 (= e!4380277 e!4380279)))

(declare-fun res!2956598 () Bool)

(assert (=> b!7316847 (=> (not res!2956598) (not e!4380279))))

(assert (=> b!7316847 (= res!2956598 (set.member lt!2602316 lt!2602315))))

(declare-fun getWitness!2336 ((Set Context!15768) Int) Context!15768)

(assert (=> b!7316847 (= lt!2602316 (getWitness!2336 z1!542 lambda!452489))))

(assert (= (and start!713226 res!2956597) b!7316844))

(assert (= (and b!7316844 res!2956600) b!7316842))

(assert (= (and b!7316842 res!2956596) b!7316846))

(assert (= (and b!7316846 res!2956599) b!7316847))

(assert (= (and b!7316847 res!2956598) b!7316841))

(assert (= (and start!713226 (is-Cons!71191 s!7362)) b!7316843))

(assert (= (and start!713226 condSetEmpty!54642) setIsEmpty!54642))

(assert (= (and start!713226 (not condSetEmpty!54642)) setNonEmpty!54642))

(assert (= setNonEmpty!54642 b!7316840))

(assert (= (and start!713226 condSetEmpty!54643) setIsEmpty!54643))

(assert (= (and start!713226 (not condSetEmpty!54643)) setNonEmpty!54643))

(assert (= setNonEmpty!54643 b!7316845))

(declare-fun m!7981036 () Bool)

(assert (=> b!7316844 m!7981036))

(declare-fun m!7981038 () Bool)

(assert (=> b!7316846 m!7981038))

(declare-fun m!7981040 () Bool)

(assert (=> setNonEmpty!54643 m!7981040))

(declare-fun m!7981042 () Bool)

(assert (=> b!7316841 m!7981042))

(declare-fun m!7981044 () Bool)

(assert (=> setNonEmpty!54642 m!7981044))

(declare-fun m!7981046 () Bool)

(assert (=> b!7316847 m!7981046))

(declare-fun m!7981048 () Bool)

(assert (=> b!7316847 m!7981048))

(declare-fun m!7981050 () Bool)

(assert (=> b!7316842 m!7981050))

(push 1)

(assert (not setNonEmpty!54643))

(assert (not b!7316847))

(assert (not b!7316842))

(assert tp_is_empty!47633)

(assert (not b!7316845))

(assert (not b!7316841))

(assert (not b!7316844))

(assert (not b!7316843))

(assert (not b!7316840))

(assert (not setNonEmpty!54642))

(assert (not b!7316846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1915252 () Bool)

(declare-fun d!2271888 () Bool)

(assert (= bs!1915252 (and d!2271888 b!7316842)))

(declare-fun lambda!452497 () Int)

(assert (=> bs!1915252 (= lambda!452497 lambda!452489)))

(assert (=> d!2271888 (= (nullableZipper!3123 z1!542) (exists!4597 z1!542 lambda!452497))))

(declare-fun bs!1915253 () Bool)

(assert (= bs!1915253 d!2271888))

(declare-fun m!7981068 () Bool)

(assert (=> bs!1915253 m!7981068))

(assert (=> b!7316846 d!2271888))

(declare-fun bs!1915254 () Bool)

(declare-fun d!2271890 () Bool)

(assert (= bs!1915254 (and d!2271890 b!7316842)))

(declare-fun lambda!452498 () Int)

(assert (=> bs!1915254 (= lambda!452498 lambda!452489)))

(declare-fun bs!1915255 () Bool)

(assert (= bs!1915255 (and d!2271890 d!2271888)))

(assert (=> bs!1915255 (= lambda!452498 lambda!452497)))

(assert (=> d!2271890 (= (nullableZipper!3123 lt!2602315) (exists!4597 lt!2602315 lambda!452498))))

(declare-fun bs!1915256 () Bool)

(assert (= bs!1915256 d!2271890))

(declare-fun m!7981070 () Bool)

(assert (=> bs!1915256 m!7981070))

(assert (=> b!7316844 d!2271890))

(declare-fun d!2271892 () Bool)

(declare-fun e!4380301 () Bool)

(assert (=> d!2271892 e!4380301))

(declare-fun res!2956618 () Bool)

(assert (=> d!2271892 (=> (not res!2956618) (not e!4380301))))

(declare-fun lt!2602325 () Context!15768)

(declare-fun dynLambda!29167 (Int Context!15768) Bool)

(assert (=> d!2271892 (= res!2956618 (dynLambda!29167 lambda!452489 lt!2602325))))

(declare-datatypes ((List!71318 0))(
  ( (Nil!71194) (Cons!71194 (h!77642 Context!15768) (t!385550 List!71318)) )
))
(declare-fun getWitness!2338 (List!71318 Int) Context!15768)

(declare-fun toList!11631 ((Set Context!15768)) List!71318)

(assert (=> d!2271892 (= lt!2602325 (getWitness!2338 (toList!11631 z1!542) lambda!452489))))

(assert (=> d!2271892 (exists!4597 z1!542 lambda!452489)))

(assert (=> d!2271892 (= (getWitness!2336 z1!542 lambda!452489) lt!2602325)))

(declare-fun b!7316874 () Bool)

(assert (=> b!7316874 (= e!4380301 (set.member lt!2602325 z1!542))))

(assert (= (and d!2271892 res!2956618) b!7316874))

(declare-fun b_lambda!282615 () Bool)

(assert (=> (not b_lambda!282615) (not d!2271892)))

(declare-fun m!7981072 () Bool)

(assert (=> d!2271892 m!7981072))

(declare-fun m!7981074 () Bool)

(assert (=> d!2271892 m!7981074))

(assert (=> d!2271892 m!7981074))

(declare-fun m!7981076 () Bool)

(assert (=> d!2271892 m!7981076))

(declare-fun m!7981078 () Bool)

(assert (=> d!2271892 m!7981078))

(declare-fun m!7981080 () Bool)

(assert (=> b!7316874 m!7981080))

(assert (=> b!7316847 d!2271892))

(declare-fun d!2271894 () Bool)

(declare-fun lambda!452501 () Int)

(declare-fun forall!17780 (List!71314 Int) Bool)

(assert (=> d!2271894 (= (inv!90482 setElem!54642) (forall!17780 (exprs!8384 setElem!54642) lambda!452501))))

(declare-fun bs!1915257 () Bool)

(assert (= bs!1915257 d!2271894))

(declare-fun m!7981082 () Bool)

(assert (=> bs!1915257 m!7981082))

(assert (=> setNonEmpty!54642 d!2271894))

(declare-fun d!2271896 () Bool)

(declare-fun lt!2602328 () Bool)

(declare-fun exists!4599 (List!71318 Int) Bool)

(assert (=> d!2271896 (= lt!2602328 (exists!4599 (toList!11631 lt!2602315) lambda!452489))))

(declare-fun choose!56752 ((Set Context!15768) Int) Bool)

(assert (=> d!2271896 (= lt!2602328 (choose!56752 lt!2602315 lambda!452489))))

(assert (=> d!2271896 (= (exists!4597 lt!2602315 lambda!452489) lt!2602328)))

(declare-fun bs!1915258 () Bool)

(assert (= bs!1915258 d!2271896))

(declare-fun m!7981084 () Bool)

(assert (=> bs!1915258 m!7981084))

(assert (=> bs!1915258 m!7981084))

(declare-fun m!7981086 () Bool)

(assert (=> bs!1915258 m!7981086))

(declare-fun m!7981088 () Bool)

(assert (=> bs!1915258 m!7981088))

(assert (=> b!7316842 d!2271896))

(declare-fun bs!1915259 () Bool)

(declare-fun d!2271898 () Bool)

(assert (= bs!1915259 (and d!2271898 d!2271894)))

(declare-fun lambda!452502 () Int)

(assert (=> bs!1915259 (= lambda!452502 lambda!452501)))

(assert (=> d!2271898 (= (inv!90482 setElem!54643) (forall!17780 (exprs!8384 setElem!54643) lambda!452502))))

(declare-fun bs!1915260 () Bool)

(assert (= bs!1915260 d!2271898))

(declare-fun m!7981090 () Bool)

(assert (=> bs!1915260 m!7981090))

(assert (=> setNonEmpty!54643 d!2271898))

(declare-fun bs!1915261 () Bool)

(declare-fun d!2271900 () Bool)

(assert (= bs!1915261 (and d!2271900 d!2271894)))

(declare-fun lambda!452505 () Int)

(assert (=> bs!1915261 (not (= lambda!452505 lambda!452501))))

(declare-fun bs!1915262 () Bool)

(assert (= bs!1915262 (and d!2271900 d!2271898)))

(assert (=> bs!1915262 (not (= lambda!452505 lambda!452502))))

(assert (=> d!2271900 (= (nullableContext!408 lt!2602316) (forall!17780 (exprs!8384 lt!2602316) lambda!452505))))

(declare-fun bs!1915263 () Bool)

(assert (= bs!1915263 d!2271900))

(declare-fun m!7981092 () Bool)

(assert (=> bs!1915263 m!7981092))

(assert (=> b!7316841 d!2271900))

(declare-fun b!7316879 () Bool)

(declare-fun e!4380304 () Bool)

(declare-fun tp!2077356 () Bool)

(declare-fun tp!2077357 () Bool)

(assert (=> b!7316879 (= e!4380304 (and tp!2077356 tp!2077357))))

(assert (=> b!7316845 (= tp!2077332 e!4380304)))

(assert (= (and b!7316845 (is-Cons!71190 (exprs!8384 setElem!54643))) b!7316879))

(declare-fun b!7316880 () Bool)

(declare-fun e!4380305 () Bool)

(declare-fun tp!2077358 () Bool)

(declare-fun tp!2077359 () Bool)

(assert (=> b!7316880 (= e!4380305 (and tp!2077358 tp!2077359))))

(assert (=> b!7316840 (= tp!2077333 e!4380305)))

(assert (= (and b!7316840 (is-Cons!71190 (exprs!8384 setElem!54642))) b!7316880))

(declare-fun condSetEmpty!54652 () Bool)

(assert (=> setNonEmpty!54642 (= condSetEmpty!54652 (= setRest!54642 (as set.empty (Set Context!15768))))))

(declare-fun setRes!54652 () Bool)

(assert (=> setNonEmpty!54642 (= tp!2077336 setRes!54652)))

(declare-fun setIsEmpty!54652 () Bool)

(assert (=> setIsEmpty!54652 setRes!54652))

(declare-fun e!4380308 () Bool)

(declare-fun tp!2077364 () Bool)

(declare-fun setNonEmpty!54652 () Bool)

(declare-fun setElem!54652 () Context!15768)

(assert (=> setNonEmpty!54652 (= setRes!54652 (and tp!2077364 (inv!90482 setElem!54652) e!4380308))))

(declare-fun setRest!54652 () (Set Context!15768))

(assert (=> setNonEmpty!54652 (= setRest!54642 (set.union (set.insert setElem!54652 (as set.empty (Set Context!15768))) setRest!54652))))

(declare-fun b!7316885 () Bool)

(declare-fun tp!2077365 () Bool)

(assert (=> b!7316885 (= e!4380308 tp!2077365)))

(assert (= (and setNonEmpty!54642 condSetEmpty!54652) setIsEmpty!54652))

(assert (= (and setNonEmpty!54642 (not condSetEmpty!54652)) setNonEmpty!54652))

(assert (= setNonEmpty!54652 b!7316885))

(declare-fun m!7981094 () Bool)

(assert (=> setNonEmpty!54652 m!7981094))

(declare-fun condSetEmpty!54653 () Bool)

(assert (=> setNonEmpty!54643 (= condSetEmpty!54653 (= setRest!54643 (as set.empty (Set Context!15768))))))

(declare-fun setRes!54653 () Bool)

(assert (=> setNonEmpty!54643 (= tp!2077335 setRes!54653)))

(declare-fun setIsEmpty!54653 () Bool)

(assert (=> setIsEmpty!54653 setRes!54653))

(declare-fun setNonEmpty!54653 () Bool)

(declare-fun tp!2077366 () Bool)

(declare-fun e!4380309 () Bool)

(declare-fun setElem!54653 () Context!15768)

(assert (=> setNonEmpty!54653 (= setRes!54653 (and tp!2077366 (inv!90482 setElem!54653) e!4380309))))

(declare-fun setRest!54653 () (Set Context!15768))

(assert (=> setNonEmpty!54653 (= setRest!54643 (set.union (set.insert setElem!54653 (as set.empty (Set Context!15768))) setRest!54653))))

(declare-fun b!7316886 () Bool)

(declare-fun tp!2077367 () Bool)

(assert (=> b!7316886 (= e!4380309 tp!2077367)))

(assert (= (and setNonEmpty!54643 condSetEmpty!54653) setIsEmpty!54653))

(assert (= (and setNonEmpty!54643 (not condSetEmpty!54653)) setNonEmpty!54653))

(assert (= setNonEmpty!54653 b!7316886))

(declare-fun m!7981096 () Bool)

(assert (=> setNonEmpty!54653 m!7981096))

(declare-fun b!7316891 () Bool)

(declare-fun e!4380312 () Bool)

(declare-fun tp!2077370 () Bool)

(assert (=> b!7316891 (= e!4380312 (and tp_is_empty!47633 tp!2077370))))

(assert (=> b!7316843 (= tp!2077334 e!4380312)))

(assert (= (and b!7316843 (is-Cons!71191 (t!385547 s!7362))) b!7316891))

(declare-fun b_lambda!282617 () Bool)

(assert (= b_lambda!282615 (or b!7316842 b_lambda!282617)))

(declare-fun bs!1915264 () Bool)

(declare-fun d!2271904 () Bool)

(assert (= bs!1915264 (and d!2271904 b!7316842)))

(assert (=> bs!1915264 (= (dynLambda!29167 lambda!452489 lt!2602325) (nullableContext!408 lt!2602325))))

(declare-fun m!7981098 () Bool)

(assert (=> bs!1915264 m!7981098))

(assert (=> d!2271892 d!2271904))

(push 1)

(assert (not b!7316886))

(assert (not b!7316879))

(assert tp_is_empty!47633)

(assert (not bs!1915264))

(assert (not d!2271898))

(assert (not setNonEmpty!54652))

(assert (not d!2271892))

(assert (not b!7316885))

(assert (not b!7316880))

(assert (not b!7316891))

(assert (not d!2271890))

(assert (not d!2271894))

(assert (not d!2271888))

(assert (not setNonEmpty!54653))

(assert (not b_lambda!282617))

(assert (not d!2271896))

(assert (not d!2271900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

