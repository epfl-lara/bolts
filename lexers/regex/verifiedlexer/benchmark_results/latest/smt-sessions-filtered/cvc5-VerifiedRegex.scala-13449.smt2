; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727330 () Bool)

(assert start!727330)

(declare-fun b!7509112 () Bool)

(declare-fun e!4477587 () Bool)

(declare-datatypes ((C!39794 0))(
  ( (C!39795 (val!30295 Int)) )
))
(declare-datatypes ((Regex!19734 0))(
  ( (ElementMatch!19734 (c!1386636 C!39794)) (Concat!28579 (regOne!39980 Regex!19734) (regTwo!39980 Regex!19734)) (EmptyExpr!19734) (Star!19734 (reg!20063 Regex!19734)) (EmptyLang!19734) (Union!19734 (regOne!39981 Regex!19734) (regTwo!39981 Regex!19734)) )
))
(declare-datatypes ((List!72577 0))(
  ( (Nil!72453) (Cons!72453 (h!78901 Regex!19734) (t!387146 List!72577)) )
))
(declare-datatypes ((Context!16972 0))(
  ( (Context!16973 (exprs!8986 List!72577)) )
))
(declare-fun z!556 () (Set Context!16972))

(declare-fun lambda!465938 () Int)

(declare-datatypes ((List!72578 0))(
  ( (Nil!72454) (Cons!72454 (h!78902 Context!16972) (t!387147 List!72578)) )
))
(declare-fun forall!18340 (List!72578 Int) Bool)

(declare-fun toList!11851 ((Set Context!16972)) List!72578)

(assert (=> b!7509112 (= e!4477587 (forall!18340 (toList!11851 z!556) lambda!465938))))

(declare-fun tp!2179545 () Bool)

(declare-fun setRes!57149 () Bool)

(declare-fun setNonEmpty!57149 () Bool)

(declare-fun e!4477586 () Bool)

(declare-fun setElem!57149 () Context!16972)

(declare-fun inv!92566 (Context!16972) Bool)

(assert (=> setNonEmpty!57149 (= setRes!57149 (and tp!2179545 (inv!92566 setElem!57149) e!4477586))))

(declare-fun setRest!57149 () (Set Context!16972))

(assert (=> setNonEmpty!57149 (= z!556 (set.union (set.insert setElem!57149 (as set.empty (Set Context!16972))) setRest!57149))))

(declare-fun res!3012591 () Bool)

(assert (=> start!727330 (=> (not res!3012591) (not e!4477587))))

(declare-fun forall!18341 ((Set Context!16972) Int) Bool)

(assert (=> start!727330 (= res!3012591 (not (forall!18341 z!556 lambda!465938)))))

(assert (=> start!727330 e!4477587))

(declare-fun condSetEmpty!57149 () Bool)

(assert (=> start!727330 (= condSetEmpty!57149 (= z!556 (as set.empty (Set Context!16972))))))

(assert (=> start!727330 setRes!57149))

(declare-fun b!7509113 () Bool)

(declare-fun tp!2179544 () Bool)

(assert (=> b!7509113 (= e!4477586 tp!2179544)))

(declare-fun setIsEmpty!57149 () Bool)

(assert (=> setIsEmpty!57149 setRes!57149))

(assert (= (and start!727330 res!3012591) b!7509112))

(assert (= (and start!727330 condSetEmpty!57149) setIsEmpty!57149))

(assert (= (and start!727330 (not condSetEmpty!57149)) setNonEmpty!57149))

(assert (= setNonEmpty!57149 b!7509113))

(declare-fun m!8093192 () Bool)

(assert (=> b!7509112 m!8093192))

(assert (=> b!7509112 m!8093192))

(declare-fun m!8093194 () Bool)

(assert (=> b!7509112 m!8093194))

(declare-fun m!8093196 () Bool)

(assert (=> setNonEmpty!57149 m!8093196))

(declare-fun m!8093198 () Bool)

(assert (=> start!727330 m!8093198))

(push 1)

(assert (not b!7509112))

(assert (not start!727330))

(assert (not setNonEmpty!57149))

(assert (not b!7509113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2305920 () Bool)

(declare-fun res!3012599 () Bool)

(declare-fun e!4477598 () Bool)

(assert (=> d!2305920 (=> res!3012599 e!4477598)))

(assert (=> d!2305920 (= res!3012599 (is-Nil!72454 (toList!11851 z!556)))))

(assert (=> d!2305920 (= (forall!18340 (toList!11851 z!556) lambda!465938) e!4477598)))

(declare-fun b!7509124 () Bool)

(declare-fun e!4477599 () Bool)

(assert (=> b!7509124 (= e!4477598 e!4477599)))

(declare-fun res!3012600 () Bool)

(assert (=> b!7509124 (=> (not res!3012600) (not e!4477599))))

(declare-fun dynLambda!29796 (Int Context!16972) Bool)

(assert (=> b!7509124 (= res!3012600 (dynLambda!29796 lambda!465938 (h!78902 (toList!11851 z!556))))))

(declare-fun b!7509125 () Bool)

(assert (=> b!7509125 (= e!4477599 (forall!18340 (t!387147 (toList!11851 z!556)) lambda!465938))))

(assert (= (and d!2305920 (not res!3012599)) b!7509124))

(assert (= (and b!7509124 res!3012600) b!7509125))

(declare-fun b_lambda!287891 () Bool)

(assert (=> (not b_lambda!287891) (not b!7509124)))

(declare-fun m!8093208 () Bool)

(assert (=> b!7509124 m!8093208))

(declare-fun m!8093210 () Bool)

(assert (=> b!7509125 m!8093210))

(assert (=> b!7509112 d!2305920))

(declare-fun d!2305922 () Bool)

(declare-fun e!4477602 () Bool)

(assert (=> d!2305922 e!4477602))

(declare-fun res!3012603 () Bool)

(assert (=> d!2305922 (=> (not res!3012603) (not e!4477602))))

(declare-fun lt!2637094 () List!72578)

(declare-fun noDuplicate!3154 (List!72578) Bool)

(assert (=> d!2305922 (= res!3012603 (noDuplicate!3154 lt!2637094))))

(declare-fun choose!58231 ((Set Context!16972)) List!72578)

(assert (=> d!2305922 (= lt!2637094 (choose!58231 z!556))))

(assert (=> d!2305922 (= (toList!11851 z!556) lt!2637094)))

(declare-fun b!7509128 () Bool)

(declare-fun content!15323 (List!72578) (Set Context!16972))

(assert (=> b!7509128 (= e!4477602 (= (content!15323 lt!2637094) z!556))))

(assert (= (and d!2305922 res!3012603) b!7509128))

(declare-fun m!8093212 () Bool)

(assert (=> d!2305922 m!8093212))

(declare-fun m!8093214 () Bool)

(assert (=> d!2305922 m!8093214))

(declare-fun m!8093216 () Bool)

(assert (=> b!7509128 m!8093216))

(assert (=> b!7509112 d!2305922))

(declare-fun d!2305924 () Bool)

(declare-fun lt!2637097 () Bool)

(assert (=> d!2305924 (= lt!2637097 (forall!18340 (toList!11851 z!556) lambda!465938))))

(declare-fun choose!58232 ((Set Context!16972) Int) Bool)

(assert (=> d!2305924 (= lt!2637097 (choose!58232 z!556 lambda!465938))))

(assert (=> d!2305924 (= (forall!18341 z!556 lambda!465938) lt!2637097)))

(declare-fun bs!1938878 () Bool)

(assert (= bs!1938878 d!2305924))

(assert (=> bs!1938878 m!8093192))

(assert (=> bs!1938878 m!8093192))

(assert (=> bs!1938878 m!8093194))

(declare-fun m!8093218 () Bool)

(assert (=> bs!1938878 m!8093218))

(assert (=> start!727330 d!2305924))

(declare-fun d!2305926 () Bool)

(declare-fun lambda!465946 () Int)

(declare-fun forall!18344 (List!72577 Int) Bool)

(assert (=> d!2305926 (= (inv!92566 setElem!57149) (forall!18344 (exprs!8986 setElem!57149) lambda!465946))))

(declare-fun bs!1938879 () Bool)

(assert (= bs!1938879 d!2305926))

(declare-fun m!8093220 () Bool)

(assert (=> bs!1938879 m!8093220))

(assert (=> setNonEmpty!57149 d!2305926))

(declare-fun b!7509137 () Bool)

(declare-fun e!4477609 () Bool)

(declare-fun tp!2179556 () Bool)

(declare-fun tp!2179557 () Bool)

(assert (=> b!7509137 (= e!4477609 (and tp!2179556 tp!2179557))))

(assert (=> b!7509113 (= tp!2179544 e!4477609)))

(assert (= (and b!7509113 (is-Cons!72453 (exprs!8986 setElem!57149))) b!7509137))

(declare-fun condSetEmpty!57155 () Bool)

(assert (=> setNonEmpty!57149 (= condSetEmpty!57155 (= setRest!57149 (as set.empty (Set Context!16972))))))

(declare-fun setRes!57155 () Bool)

(assert (=> setNonEmpty!57149 (= tp!2179545 setRes!57155)))

(declare-fun setIsEmpty!57155 () Bool)

(assert (=> setIsEmpty!57155 setRes!57155))

(declare-fun e!4477612 () Bool)

(declare-fun tp!2179563 () Bool)

(declare-fun setNonEmpty!57155 () Bool)

(declare-fun setElem!57155 () Context!16972)

(assert (=> setNonEmpty!57155 (= setRes!57155 (and tp!2179563 (inv!92566 setElem!57155) e!4477612))))

(declare-fun setRest!57155 () (Set Context!16972))

(assert (=> setNonEmpty!57155 (= setRest!57149 (set.union (set.insert setElem!57155 (as set.empty (Set Context!16972))) setRest!57155))))

(declare-fun b!7509142 () Bool)

(declare-fun tp!2179562 () Bool)

(assert (=> b!7509142 (= e!4477612 tp!2179562)))

(assert (= (and setNonEmpty!57149 condSetEmpty!57155) setIsEmpty!57155))

(assert (= (and setNonEmpty!57149 (not condSetEmpty!57155)) setNonEmpty!57155))

(assert (= setNonEmpty!57155 b!7509142))

(declare-fun m!8093222 () Bool)

(assert (=> setNonEmpty!57155 m!8093222))

(declare-fun b_lambda!287893 () Bool)

(assert (= b_lambda!287891 (or start!727330 b_lambda!287893)))

(declare-fun bs!1938880 () Bool)

(declare-fun d!2305930 () Bool)

(assert (= bs!1938880 (and d!2305930 start!727330)))

(declare-fun lostCause!1620 (Context!16972) Bool)

(assert (=> bs!1938880 (= (dynLambda!29796 lambda!465938 (h!78902 (toList!11851 z!556))) (lostCause!1620 (h!78902 (toList!11851 z!556))))))

(declare-fun m!8093224 () Bool)

(assert (=> bs!1938880 m!8093224))

(assert (=> b!7509124 d!2305930))

(push 1)

(assert (not b!7509137))

(assert (not d!2305926))

(assert (not b!7509142))

(assert (not b!7509128))

(assert (not bs!1938880))

(assert (not b_lambda!287893))

(assert (not d!2305924))

(assert (not setNonEmpty!57155))

(assert (not b!7509125))

(assert (not d!2305922))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

