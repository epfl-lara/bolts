; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727350 () Bool)

(assert start!727350)

(declare-fun setIsEmpty!57161 () Bool)

(declare-fun setRes!57161 () Bool)

(assert (=> setIsEmpty!57161 setRes!57161))

(declare-fun b!7509164 () Bool)

(declare-fun e!4477628 () Bool)

(declare-datatypes ((C!39798 0))(
  ( (C!39799 (val!30297 Int)) )
))
(declare-datatypes ((Regex!19736 0))(
  ( (ElementMatch!19736 (c!1386648 C!39798)) (Concat!28581 (regOne!39984 Regex!19736) (regTwo!39984 Regex!19736)) (EmptyExpr!19736) (Star!19736 (reg!20065 Regex!19736)) (EmptyLang!19736) (Union!19736 (regOne!39985 Regex!19736) (regTwo!39985 Regex!19736)) )
))
(declare-datatypes ((List!72581 0))(
  ( (Nil!72457) (Cons!72457 (h!78905 Regex!19736) (t!387150 List!72581)) )
))
(declare-datatypes ((Context!16976 0))(
  ( (Context!16977 (exprs!8988 List!72581)) )
))
(declare-fun z!556 () (Set Context!16976))

(declare-fun lambda!465956 () Int)

(declare-datatypes ((List!72582 0))(
  ( (Nil!72458) (Cons!72458 (h!78906 Context!16976) (t!387151 List!72582)) )
))
(declare-fun forall!18345 (List!72582 Int) Bool)

(declare-fun toList!11853 ((Set Context!16976)) List!72582)

(assert (=> b!7509164 (= e!4477628 (not (forall!18345 (toList!11853 z!556) lambda!465956)))))

(declare-fun res!3012617 () Bool)

(assert (=> start!727350 (=> (not res!3012617) (not e!4477628))))

(declare-fun forall!18346 ((Set Context!16976) Int) Bool)

(assert (=> start!727350 (= res!3012617 (forall!18346 z!556 lambda!465956))))

(assert (=> start!727350 e!4477628))

(declare-fun condSetEmpty!57161 () Bool)

(assert (=> start!727350 (= condSetEmpty!57161 (= z!556 (as set.empty (Set Context!16976))))))

(assert (=> start!727350 setRes!57161))

(declare-fun b!7509165 () Bool)

(declare-fun e!4477629 () Bool)

(declare-fun tp!2179580 () Bool)

(assert (=> b!7509165 (= e!4477629 tp!2179580)))

(declare-fun b!7509166 () Bool)

(declare-fun res!3012618 () Bool)

(assert (=> b!7509166 (=> (not res!3012618) (not e!4477628))))

(assert (=> b!7509166 (= res!3012618 (forall!18346 z!556 lambda!465956))))

(declare-fun setNonEmpty!57161 () Bool)

(declare-fun setElem!57161 () Context!16976)

(declare-fun tp!2179581 () Bool)

(declare-fun inv!92571 (Context!16976) Bool)

(assert (=> setNonEmpty!57161 (= setRes!57161 (and tp!2179581 (inv!92571 setElem!57161) e!4477629))))

(declare-fun setRest!57161 () (Set Context!16976))

(assert (=> setNonEmpty!57161 (= z!556 (set.union (set.insert setElem!57161 (as set.empty (Set Context!16976))) setRest!57161))))

(assert (= (and start!727350 res!3012617) b!7509166))

(assert (= (and b!7509166 res!3012618) b!7509164))

(assert (= (and start!727350 condSetEmpty!57161) setIsEmpty!57161))

(assert (= (and start!727350 (not condSetEmpty!57161)) setNonEmpty!57161))

(assert (= setNonEmpty!57161 b!7509165))

(declare-fun m!8093242 () Bool)

(assert (=> b!7509164 m!8093242))

(assert (=> b!7509164 m!8093242))

(declare-fun m!8093244 () Bool)

(assert (=> b!7509164 m!8093244))

(declare-fun m!8093246 () Bool)

(assert (=> start!727350 m!8093246))

(assert (=> b!7509166 m!8093246))

(declare-fun m!8093248 () Bool)

(assert (=> setNonEmpty!57161 m!8093248))

(push 1)

(assert (not b!7509166))

(assert (not start!727350))

(assert (not setNonEmpty!57161))

(assert (not b!7509164))

(assert (not b!7509165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2305939 () Bool)

(declare-fun lambda!465966 () Int)

(declare-fun forall!18349 (List!72581 Int) Bool)

(assert (=> d!2305939 (= (inv!92571 setElem!57161) (forall!18349 (exprs!8988 setElem!57161) lambda!465966))))

(declare-fun bs!1938885 () Bool)

(assert (= bs!1938885 d!2305939))

(declare-fun m!8093258 () Bool)

(assert (=> bs!1938885 m!8093258))

(assert (=> setNonEmpty!57161 d!2305939))

(declare-fun d!2305941 () Bool)

(declare-fun res!3012629 () Bool)

(declare-fun e!4477640 () Bool)

(assert (=> d!2305941 (=> res!3012629 e!4477640)))

(assert (=> d!2305941 (= res!3012629 (is-Nil!72458 (toList!11853 z!556)))))

(assert (=> d!2305941 (= (forall!18345 (toList!11853 z!556) lambda!465956) e!4477640)))

(declare-fun b!7509180 () Bool)

(declare-fun e!4477641 () Bool)

(assert (=> b!7509180 (= e!4477640 e!4477641)))

(declare-fun res!3012630 () Bool)

(assert (=> b!7509180 (=> (not res!3012630) (not e!4477641))))

(declare-fun dynLambda!29797 (Int Context!16976) Bool)

(assert (=> b!7509180 (= res!3012630 (dynLambda!29797 lambda!465956 (h!78906 (toList!11853 z!556))))))

(declare-fun b!7509181 () Bool)

(assert (=> b!7509181 (= e!4477641 (forall!18345 (t!387151 (toList!11853 z!556)) lambda!465956))))

(assert (= (and d!2305941 (not res!3012629)) b!7509180))

(assert (= (and b!7509180 res!3012630) b!7509181))

(declare-fun b_lambda!287899 () Bool)

(assert (=> (not b_lambda!287899) (not b!7509180)))

(declare-fun m!8093260 () Bool)

(assert (=> b!7509180 m!8093260))

(declare-fun m!8093262 () Bool)

(assert (=> b!7509181 m!8093262))

(assert (=> b!7509164 d!2305941))

(declare-fun d!2305943 () Bool)

(declare-fun e!4477644 () Bool)

(assert (=> d!2305943 e!4477644))

(declare-fun res!3012633 () Bool)

(assert (=> d!2305943 (=> (not res!3012633) (not e!4477644))))

(declare-fun lt!2637106 () List!72582)

(declare-fun noDuplicate!3155 (List!72582) Bool)

(assert (=> d!2305943 (= res!3012633 (noDuplicate!3155 lt!2637106))))

(declare-fun choose!58233 ((Set Context!16976)) List!72582)

(assert (=> d!2305943 (= lt!2637106 (choose!58233 z!556))))

(assert (=> d!2305943 (= (toList!11853 z!556) lt!2637106)))

(declare-fun b!7509184 () Bool)

(declare-fun content!15324 (List!72582) (Set Context!16976))

(assert (=> b!7509184 (= e!4477644 (= (content!15324 lt!2637106) z!556))))

(assert (= (and d!2305943 res!3012633) b!7509184))

(declare-fun m!8093264 () Bool)

(assert (=> d!2305943 m!8093264))

(declare-fun m!8093266 () Bool)

(assert (=> d!2305943 m!8093266))

(declare-fun m!8093268 () Bool)

(assert (=> b!7509184 m!8093268))

(assert (=> b!7509164 d!2305943))

(declare-fun d!2305945 () Bool)

(declare-fun lt!2637109 () Bool)

(assert (=> d!2305945 (= lt!2637109 (forall!18345 (toList!11853 z!556) lambda!465956))))

(declare-fun choose!58234 ((Set Context!16976) Int) Bool)

(assert (=> d!2305945 (= lt!2637109 (choose!58234 z!556 lambda!465956))))

(assert (=> d!2305945 (= (forall!18346 z!556 lambda!465956) lt!2637109)))

(declare-fun bs!1938886 () Bool)

(assert (= bs!1938886 d!2305945))

(assert (=> bs!1938886 m!8093242))

(assert (=> bs!1938886 m!8093242))

(assert (=> bs!1938886 m!8093244))

(declare-fun m!8093270 () Bool)

(assert (=> bs!1938886 m!8093270))

(assert (=> start!727350 d!2305945))

(assert (=> b!7509166 d!2305945))

(declare-fun condSetEmpty!57167 () Bool)

(assert (=> setNonEmpty!57161 (= condSetEmpty!57167 (= setRest!57161 (as set.empty (Set Context!16976))))))

(declare-fun setRes!57167 () Bool)

(assert (=> setNonEmpty!57161 (= tp!2179581 setRes!57167)))

(declare-fun setIsEmpty!57167 () Bool)

(assert (=> setIsEmpty!57167 setRes!57167))

(declare-fun e!4477647 () Bool)

(declare-fun setElem!57167 () Context!16976)

(declare-fun tp!2179592 () Bool)

(declare-fun setNonEmpty!57167 () Bool)

(assert (=> setNonEmpty!57167 (= setRes!57167 (and tp!2179592 (inv!92571 setElem!57167) e!4477647))))

(declare-fun setRest!57167 () (Set Context!16976))

(assert (=> setNonEmpty!57167 (= setRest!57161 (set.union (set.insert setElem!57167 (as set.empty (Set Context!16976))) setRest!57167))))

(declare-fun b!7509189 () Bool)

(declare-fun tp!2179593 () Bool)

(assert (=> b!7509189 (= e!4477647 tp!2179593)))

(assert (= (and setNonEmpty!57161 condSetEmpty!57167) setIsEmpty!57167))

(assert (= (and setNonEmpty!57161 (not condSetEmpty!57167)) setNonEmpty!57167))

(assert (= setNonEmpty!57167 b!7509189))

(declare-fun m!8093272 () Bool)

(assert (=> setNonEmpty!57167 m!8093272))

(declare-fun b!7509194 () Bool)

(declare-fun e!4477650 () Bool)

(declare-fun tp!2179598 () Bool)

(declare-fun tp!2179599 () Bool)

(assert (=> b!7509194 (= e!4477650 (and tp!2179598 tp!2179599))))

(assert (=> b!7509165 (= tp!2179580 e!4477650)))

(assert (= (and b!7509165 (is-Cons!72457 (exprs!8988 setElem!57161))) b!7509194))

(declare-fun b_lambda!287901 () Bool)

(assert (= b_lambda!287899 (or start!727350 b_lambda!287901)))

(declare-fun bs!1938887 () Bool)

(declare-fun d!2305949 () Bool)

(assert (= bs!1938887 (and d!2305949 start!727350)))

(declare-fun lostCause!1621 (Context!16976) Bool)

(assert (=> bs!1938887 (= (dynLambda!29797 lambda!465956 (h!78906 (toList!11853 z!556))) (lostCause!1621 (h!78906 (toList!11853 z!556))))))

(declare-fun m!8093274 () Bool)

(assert (=> bs!1938887 m!8093274))

(assert (=> b!7509180 d!2305949))

(push 1)

(assert (not b!7509189))

(assert (not bs!1938887))

(assert (not b!7509184))

(assert (not d!2305939))

(assert (not d!2305943))

(assert (not b!7509194))

(assert (not b!7509181))

(assert (not d!2305945))

(assert (not setNonEmpty!57167))

(assert (not b_lambda!287901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

