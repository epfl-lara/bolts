; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712838 () Bool)

(assert start!712838)

(declare-fun b!7315119 () Bool)

(declare-fun e!4378999 () Bool)

(declare-fun e!4378997 () Bool)

(assert (=> b!7315119 (= e!4378999 e!4378997)))

(declare-fun res!2956004 () Bool)

(assert (=> b!7315119 (=> (not res!2956004) (not e!4378997))))

(declare-datatypes ((C!38082 0))(
  ( (C!38083 (val!29137 Int)) )
))
(declare-datatypes ((Regex!18904 0))(
  ( (ElementMatch!18904 (c!1357896 C!38082)) (Concat!27749 (regOne!38320 Regex!18904) (regTwo!38320 Regex!18904)) (EmptyExpr!18904) (Star!18904 (reg!19233 Regex!18904)) (EmptyLang!18904) (Union!18904 (regOne!38321 Regex!18904) (regTwo!38321 Regex!18904)) )
))
(declare-datatypes ((List!71214 0))(
  ( (Nil!71090) (Cons!71090 (h!77538 Regex!18904) (t!385446 List!71214)) )
))
(declare-datatypes ((Context!15688 0))(
  ( (Context!15689 (exprs!8344 List!71214)) )
))
(declare-fun lt!2601789 () (Set Context!15688))

(declare-fun nullableZipper!3085 ((Set Context!15688)) Bool)

(assert (=> b!7315119 (= res!2956004 (not (nullableZipper!3085 lt!2601789)))))

(declare-fun z1!542 () (Set Context!15688))

(declare-fun z2!461 () (Set Context!15688))

(assert (=> b!7315119 (= lt!2601789 (set.union z1!542 z2!461))))

(declare-fun setIsEmpty!54282 () Bool)

(declare-fun setRes!54283 () Bool)

(assert (=> setIsEmpty!54282 setRes!54283))

(declare-fun setIsEmpty!54283 () Bool)

(declare-fun setRes!54282 () Bool)

(assert (=> setIsEmpty!54283 setRes!54282))

(declare-fun setElem!54283 () Context!15688)

(declare-fun tp!2076068 () Bool)

(declare-fun e!4378995 () Bool)

(declare-fun setNonEmpty!54282 () Bool)

(declare-fun inv!90382 (Context!15688) Bool)

(assert (=> setNonEmpty!54282 (= setRes!54283 (and tp!2076068 (inv!90382 setElem!54283) e!4378995))))

(declare-fun setRest!54282 () (Set Context!15688))

(assert (=> setNonEmpty!54282 (= z1!542 (set.union (set.insert setElem!54283 (as set.empty (Set Context!15688))) setRest!54282))))

(declare-fun b!7315121 () Bool)

(declare-fun res!2956005 () Bool)

(assert (=> b!7315121 (=> (not res!2956005) (not e!4378997))))

(assert (=> b!7315121 (= res!2956005 (nullableZipper!3085 z1!542))))

(declare-fun b!7315122 () Bool)

(declare-fun e!4378998 () Bool)

(declare-fun tp!2076072 () Bool)

(assert (=> b!7315122 (= e!4378998 tp!2076072)))

(declare-fun b!7315123 () Bool)

(declare-fun lambda!451979 () Int)

(declare-fun exists!4540 ((Set Context!15688) Int) Bool)

(assert (=> b!7315123 (= e!4378997 (not (exists!4540 z1!542 lambda!451979)))))

(declare-fun b!7315124 () Bool)

(declare-fun tp!2076069 () Bool)

(assert (=> b!7315124 (= e!4378995 tp!2076069)))

(declare-fun b!7315120 () Bool)

(declare-fun res!2956003 () Bool)

(assert (=> b!7315120 (=> (not res!2956003) (not e!4378997))))

(assert (=> b!7315120 (= res!2956003 (not (exists!4540 lt!2601789 lambda!451979)))))

(declare-fun res!2956006 () Bool)

(assert (=> start!712838 (=> (not res!2956006) (not e!4378999))))

(declare-datatypes ((List!71215 0))(
  ( (Nil!71091) (Cons!71091 (h!77539 C!38082) (t!385447 List!71215)) )
))
(declare-fun s!7362 () List!71215)

(assert (=> start!712838 (= res!2956006 (not (is-Cons!71091 s!7362)))))

(assert (=> start!712838 e!4378999))

(declare-fun e!4378996 () Bool)

(assert (=> start!712838 e!4378996))

(declare-fun condSetEmpty!54283 () Bool)

(assert (=> start!712838 (= condSetEmpty!54283 (= z1!542 (as set.empty (Set Context!15688))))))

(assert (=> start!712838 setRes!54283))

(declare-fun condSetEmpty!54282 () Bool)

(assert (=> start!712838 (= condSetEmpty!54282 (= z2!461 (as set.empty (Set Context!15688))))))

(assert (=> start!712838 setRes!54282))

(declare-fun setNonEmpty!54283 () Bool)

(declare-fun setElem!54282 () Context!15688)

(declare-fun tp!2076070 () Bool)

(assert (=> setNonEmpty!54283 (= setRes!54282 (and tp!2076070 (inv!90382 setElem!54282) e!4378998))))

(declare-fun setRest!54283 () (Set Context!15688))

(assert (=> setNonEmpty!54283 (= z2!461 (set.union (set.insert setElem!54282 (as set.empty (Set Context!15688))) setRest!54283))))

(declare-fun b!7315125 () Bool)

(declare-fun tp_is_empty!47553 () Bool)

(declare-fun tp!2076071 () Bool)

(assert (=> b!7315125 (= e!4378996 (and tp_is_empty!47553 tp!2076071))))

(assert (= (and start!712838 res!2956006) b!7315119))

(assert (= (and b!7315119 res!2956004) b!7315120))

(assert (= (and b!7315120 res!2956003) b!7315121))

(assert (= (and b!7315121 res!2956005) b!7315123))

(assert (= (and start!712838 (is-Cons!71091 s!7362)) b!7315125))

(assert (= (and start!712838 condSetEmpty!54283) setIsEmpty!54282))

(assert (= (and start!712838 (not condSetEmpty!54283)) setNonEmpty!54282))

(assert (= setNonEmpty!54282 b!7315124))

(assert (= (and start!712838 condSetEmpty!54282) setIsEmpty!54283))

(assert (= (and start!712838 (not condSetEmpty!54282)) setNonEmpty!54283))

(assert (= setNonEmpty!54283 b!7315122))

(declare-fun m!7979142 () Bool)

(assert (=> b!7315123 m!7979142))

(declare-fun m!7979144 () Bool)

(assert (=> setNonEmpty!54283 m!7979144))

(declare-fun m!7979146 () Bool)

(assert (=> b!7315120 m!7979146))

(declare-fun m!7979148 () Bool)

(assert (=> b!7315121 m!7979148))

(declare-fun m!7979150 () Bool)

(assert (=> b!7315119 m!7979150))

(declare-fun m!7979152 () Bool)

(assert (=> setNonEmpty!54282 m!7979152))

(push 1)

(assert (not b!7315125))

(assert (not b!7315121))

(assert (not setNonEmpty!54282))

(assert (not b!7315123))

(assert (not b!7315124))

(assert (not setNonEmpty!54283))

(assert (not b!7315122))

(assert (not b!7315120))

(assert (not b!7315119))

(assert tp_is_empty!47553)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1914720 () Bool)

(declare-fun d!2271198 () Bool)

(assert (= bs!1914720 (and d!2271198 b!7315120)))

(declare-fun lambda!451987 () Int)

(assert (=> bs!1914720 (= lambda!451987 lambda!451979)))

(assert (=> d!2271198 (= (nullableZipper!3085 z1!542) (exists!4540 z1!542 lambda!451987))))

(declare-fun bs!1914721 () Bool)

(assert (= bs!1914721 d!2271198))

(declare-fun m!7979166 () Bool)

(assert (=> bs!1914721 m!7979166))

(assert (=> b!7315121 d!2271198))

(declare-fun bs!1914722 () Bool)

(declare-fun d!2271200 () Bool)

(assert (= bs!1914722 (and d!2271200 b!7315120)))

(declare-fun lambda!451988 () Int)

(assert (=> bs!1914722 (= lambda!451988 lambda!451979)))

(declare-fun bs!1914723 () Bool)

(assert (= bs!1914723 (and d!2271200 d!2271198)))

(assert (=> bs!1914723 (= lambda!451988 lambda!451987)))

(assert (=> d!2271200 (= (nullableZipper!3085 lt!2601789) (exists!4540 lt!2601789 lambda!451988))))

(declare-fun bs!1914724 () Bool)

(assert (= bs!1914724 d!2271200))

(declare-fun m!7979168 () Bool)

(assert (=> bs!1914724 m!7979168))

(assert (=> b!7315119 d!2271200))

(declare-fun d!2271202 () Bool)

(declare-fun lt!2601795 () Bool)

(declare-datatypes ((List!71218 0))(
  ( (Nil!71094) (Cons!71094 (h!77542 Context!15688) (t!385450 List!71218)) )
))
(declare-fun exists!4542 (List!71218 Int) Bool)

(declare-fun toList!11611 ((Set Context!15688)) List!71218)

(assert (=> d!2271202 (= lt!2601795 (exists!4542 (toList!11611 lt!2601789) lambda!451979))))

(declare-fun choose!56718 ((Set Context!15688) Int) Bool)

(assert (=> d!2271202 (= lt!2601795 (choose!56718 lt!2601789 lambda!451979))))

(assert (=> d!2271202 (= (exists!4540 lt!2601789 lambda!451979) lt!2601795)))

(declare-fun bs!1914725 () Bool)

(assert (= bs!1914725 d!2271202))

(declare-fun m!7979170 () Bool)

(assert (=> bs!1914725 m!7979170))

(assert (=> bs!1914725 m!7979170))

(declare-fun m!7979172 () Bool)

(assert (=> bs!1914725 m!7979172))

(declare-fun m!7979174 () Bool)

(assert (=> bs!1914725 m!7979174))

(assert (=> b!7315120 d!2271202))

(declare-fun d!2271204 () Bool)

(declare-fun lt!2601796 () Bool)

(assert (=> d!2271204 (= lt!2601796 (exists!4542 (toList!11611 z1!542) lambda!451979))))

(assert (=> d!2271204 (= lt!2601796 (choose!56718 z1!542 lambda!451979))))

(assert (=> d!2271204 (= (exists!4540 z1!542 lambda!451979) lt!2601796)))

(declare-fun bs!1914726 () Bool)

(assert (= bs!1914726 d!2271204))

(declare-fun m!7979176 () Bool)

(assert (=> bs!1914726 m!7979176))

(assert (=> bs!1914726 m!7979176))

(declare-fun m!7979178 () Bool)

(assert (=> bs!1914726 m!7979178))

(declare-fun m!7979180 () Bool)

(assert (=> bs!1914726 m!7979180))

(assert (=> b!7315123 d!2271204))

(declare-fun d!2271206 () Bool)

(declare-fun lambda!451991 () Int)

(declare-fun forall!17759 (List!71214 Int) Bool)

(assert (=> d!2271206 (= (inv!90382 setElem!54282) (forall!17759 (exprs!8344 setElem!54282) lambda!451991))))

(declare-fun bs!1914727 () Bool)

(assert (= bs!1914727 d!2271206))

(declare-fun m!7979182 () Bool)

(assert (=> bs!1914727 m!7979182))

(assert (=> setNonEmpty!54283 d!2271206))

(declare-fun bs!1914728 () Bool)

(declare-fun d!2271208 () Bool)

(assert (= bs!1914728 (and d!2271208 d!2271206)))

(declare-fun lambda!451992 () Int)

(assert (=> bs!1914728 (= lambda!451992 lambda!451991)))

(assert (=> d!2271208 (= (inv!90382 setElem!54283) (forall!17759 (exprs!8344 setElem!54283) lambda!451992))))

(declare-fun bs!1914729 () Bool)

(assert (= bs!1914729 d!2271208))

(declare-fun m!7979184 () Bool)

(assert (=> bs!1914729 m!7979184))

(assert (=> setNonEmpty!54282 d!2271208))

(declare-fun b!7315151 () Bool)

(declare-fun e!4379017 () Bool)

(declare-fun tp!2076090 () Bool)

(assert (=> b!7315151 (= e!4379017 (and tp_is_empty!47553 tp!2076090))))

(assert (=> b!7315125 (= tp!2076071 e!4379017)))

(assert (= (and b!7315125 (is-Cons!71091 (t!385447 s!7362))) b!7315151))

(declare-fun b!7315156 () Bool)

(declare-fun e!4379020 () Bool)

(declare-fun tp!2076095 () Bool)

(declare-fun tp!2076096 () Bool)

(assert (=> b!7315156 (= e!4379020 (and tp!2076095 tp!2076096))))

(assert (=> b!7315122 (= tp!2076072 e!4379020)))

(assert (= (and b!7315122 (is-Cons!71090 (exprs!8344 setElem!54282))) b!7315156))

(declare-fun b!7315157 () Bool)

(declare-fun e!4379021 () Bool)

(declare-fun tp!2076097 () Bool)

(declare-fun tp!2076098 () Bool)

(assert (=> b!7315157 (= e!4379021 (and tp!2076097 tp!2076098))))

(assert (=> b!7315124 (= tp!2076069 e!4379021)))

(assert (= (and b!7315124 (is-Cons!71090 (exprs!8344 setElem!54283))) b!7315157))

(declare-fun condSetEmpty!54292 () Bool)

(assert (=> setNonEmpty!54283 (= condSetEmpty!54292 (= setRest!54283 (as set.empty (Set Context!15688))))))

(declare-fun setRes!54292 () Bool)

(assert (=> setNonEmpty!54283 (= tp!2076070 setRes!54292)))

(declare-fun setIsEmpty!54292 () Bool)

(assert (=> setIsEmpty!54292 setRes!54292))

(declare-fun e!4379024 () Bool)

(declare-fun tp!2076103 () Bool)

(declare-fun setElem!54292 () Context!15688)

(declare-fun setNonEmpty!54292 () Bool)

(assert (=> setNonEmpty!54292 (= setRes!54292 (and tp!2076103 (inv!90382 setElem!54292) e!4379024))))

(declare-fun setRest!54292 () (Set Context!15688))

(assert (=> setNonEmpty!54292 (= setRest!54283 (set.union (set.insert setElem!54292 (as set.empty (Set Context!15688))) setRest!54292))))

(declare-fun b!7315162 () Bool)

(declare-fun tp!2076104 () Bool)

(assert (=> b!7315162 (= e!4379024 tp!2076104)))

(assert (= (and setNonEmpty!54283 condSetEmpty!54292) setIsEmpty!54292))

(assert (= (and setNonEmpty!54283 (not condSetEmpty!54292)) setNonEmpty!54292))

(assert (= setNonEmpty!54292 b!7315162))

(declare-fun m!7979186 () Bool)

(assert (=> setNonEmpty!54292 m!7979186))

(declare-fun condSetEmpty!54293 () Bool)

(assert (=> setNonEmpty!54282 (= condSetEmpty!54293 (= setRest!54282 (as set.empty (Set Context!15688))))))

(declare-fun setRes!54293 () Bool)

(assert (=> setNonEmpty!54282 (= tp!2076068 setRes!54293)))

(declare-fun setIsEmpty!54293 () Bool)

(assert (=> setIsEmpty!54293 setRes!54293))

(declare-fun e!4379025 () Bool)

(declare-fun setElem!54293 () Context!15688)

(declare-fun tp!2076105 () Bool)

(declare-fun setNonEmpty!54293 () Bool)

(assert (=> setNonEmpty!54293 (= setRes!54293 (and tp!2076105 (inv!90382 setElem!54293) e!4379025))))

(declare-fun setRest!54293 () (Set Context!15688))

(assert (=> setNonEmpty!54293 (= setRest!54282 (set.union (set.insert setElem!54293 (as set.empty (Set Context!15688))) setRest!54293))))

(declare-fun b!7315163 () Bool)

(declare-fun tp!2076106 () Bool)

(assert (=> b!7315163 (= e!4379025 tp!2076106)))

(assert (= (and setNonEmpty!54282 condSetEmpty!54293) setIsEmpty!54293))

(assert (= (and setNonEmpty!54282 (not condSetEmpty!54293)) setNonEmpty!54293))

(assert (= setNonEmpty!54293 b!7315163))

(declare-fun m!7979188 () Bool)

(assert (=> setNonEmpty!54293 m!7979188))

(push 1)

(assert (not d!2271208))

(assert (not b!7315151))

(assert (not d!2271202))

(assert (not setNonEmpty!54292))

(assert (not d!2271200))

(assert (not b!7315163))

(assert (not b!7315156))

(assert (not d!2271204))

(assert (not d!2271206))

(assert (not d!2271198))

(assert (not b!7315157))

(assert tp_is_empty!47553)

(assert (not setNonEmpty!54293))

(assert (not b!7315162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

