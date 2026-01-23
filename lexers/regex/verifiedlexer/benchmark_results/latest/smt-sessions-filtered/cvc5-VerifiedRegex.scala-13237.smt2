; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!720400 () Bool)

(assert start!720400)

(declare-fun b!7384847 () Bool)

(declare-fun e!4420391 () Bool)

(declare-fun tp!2100970 () Bool)

(assert (=> b!7384847 (= e!4420391 tp!2100970)))

(declare-fun b!7384848 () Bool)

(declare-fun res!2978192 () Bool)

(declare-fun e!4420389 () Bool)

(assert (=> b!7384848 (=> (not res!2978192) (not e!4420389))))

(declare-datatypes ((C!38970 0))(
  ( (C!38971 (val!29859 Int)) )
))
(declare-datatypes ((Regex!19348 0))(
  ( (ElementMatch!19348 (c!1372648 C!38970)) (Concat!28193 (regOne!39208 Regex!19348) (regTwo!39208 Regex!19348)) (EmptyExpr!19348) (Star!19348 (reg!19677 Regex!19348)) (EmptyLang!19348) (Union!19348 (regOne!39209 Regex!19348) (regTwo!39209 Regex!19348)) )
))
(declare-datatypes ((List!71858 0))(
  ( (Nil!71734) (Cons!71734 (h!78182 Regex!19348) (t!386409 List!71858)) )
))
(declare-datatypes ((Context!16576 0))(
  ( (Context!16577 (exprs!8788 List!71858)) )
))
(declare-fun c!10532 () Context!16576)

(declare-fun isEmpty!40988 (List!71858) Bool)

(assert (=> b!7384848 (= res!2978192 (not (isEmpty!40988 (exprs!8788 c!10532))))))

(declare-fun b!7384849 () Bool)

(assert (=> b!7384849 (= e!4420389 (= (exprs!8788 c!10532) Nil!71734))))

(declare-fun res!2978193 () Bool)

(assert (=> start!720400 (=> (not res!2978193) (not e!4420389))))

(declare-fun z!3451 () (Set Context!16576))

(assert (=> start!720400 (= res!2978193 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16576)))))))

(assert (=> start!720400 e!4420389))

(declare-fun condSetEmpty!55826 () Bool)

(assert (=> start!720400 (= condSetEmpty!55826 (= z!3451 (as set.empty (Set Context!16576))))))

(declare-fun setRes!55826 () Bool)

(assert (=> start!720400 setRes!55826))

(declare-fun inv!91732 (Context!16576) Bool)

(assert (=> start!720400 (and (inv!91732 c!10532) e!4420391)))

(declare-fun tp_is_empty!48959 () Bool)

(assert (=> start!720400 tp_is_empty!48959))

(declare-fun tp!2100969 () Bool)

(declare-fun e!4420390 () Bool)

(declare-fun setNonEmpty!55826 () Bool)

(declare-fun setElem!55826 () Context!16576)

(assert (=> setNonEmpty!55826 (= setRes!55826 (and tp!2100969 (inv!91732 setElem!55826) e!4420390))))

(declare-fun setRest!55826 () (Set Context!16576))

(assert (=> setNonEmpty!55826 (= z!3451 (set.union (set.insert setElem!55826 (as set.empty (Set Context!16576))) setRest!55826))))

(declare-fun setIsEmpty!55826 () Bool)

(assert (=> setIsEmpty!55826 setRes!55826))

(declare-fun b!7384850 () Bool)

(declare-fun tp!2100971 () Bool)

(assert (=> b!7384850 (= e!4420390 tp!2100971)))

(declare-fun b!7384851 () Bool)

(declare-fun res!2978191 () Bool)

(assert (=> b!7384851 (=> (not res!2978191) (not e!4420389))))

(declare-fun a!2228 () C!38970)

(declare-fun head!15086 (List!71858) Regex!19348)

(assert (=> b!7384851 (= res!2978191 (= (head!15086 (exprs!8788 c!10532)) (ElementMatch!19348 a!2228)))))

(assert (= (and start!720400 res!2978193) b!7384848))

(assert (= (and b!7384848 res!2978192) b!7384851))

(assert (= (and b!7384851 res!2978191) b!7384849))

(assert (= (and start!720400 condSetEmpty!55826) setIsEmpty!55826))

(assert (= (and start!720400 (not condSetEmpty!55826)) setNonEmpty!55826))

(assert (= setNonEmpty!55826 b!7384850))

(assert (= start!720400 b!7384847))

(declare-fun m!8033538 () Bool)

(assert (=> b!7384848 m!8033538))

(declare-fun m!8033540 () Bool)

(assert (=> start!720400 m!8033540))

(declare-fun m!8033542 () Bool)

(assert (=> start!720400 m!8033542))

(declare-fun m!8033544 () Bool)

(assert (=> setNonEmpty!55826 m!8033544))

(declare-fun m!8033546 () Bool)

(assert (=> b!7384851 m!8033546))

(push 1)

(assert (not b!7384851))

(assert (not b!7384847))

(assert (not b!7384848))

(assert (not b!7384850))

(assert tp_is_empty!48959)

(assert (not start!720400))

(assert (not setNonEmpty!55826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2286382 () Bool)

(assert (=> d!2286382 (= (head!15086 (exprs!8788 c!10532)) (h!78182 (exprs!8788 c!10532)))))

(assert (=> b!7384851 d!2286382))

(declare-fun d!2286386 () Bool)

(assert (=> d!2286386 (= (isEmpty!40988 (exprs!8788 c!10532)) (is-Nil!71734 (exprs!8788 c!10532)))))

(assert (=> b!7384848 d!2286386))

(declare-fun d!2286388 () Bool)

(declare-fun lambda!458803 () Int)

(declare-fun forall!18141 (List!71858 Int) Bool)

(assert (=> d!2286388 (= (inv!91732 c!10532) (forall!18141 (exprs!8788 c!10532) lambda!458803))))

(declare-fun bs!1921897 () Bool)

(assert (= bs!1921897 d!2286388))

(declare-fun m!8033558 () Bool)

(assert (=> bs!1921897 m!8033558))

(assert (=> start!720400 d!2286388))

(declare-fun bs!1921898 () Bool)

(declare-fun d!2286392 () Bool)

(assert (= bs!1921898 (and d!2286392 d!2286388)))

(declare-fun lambda!458804 () Int)

(assert (=> bs!1921898 (= lambda!458804 lambda!458803)))

(assert (=> d!2286392 (= (inv!91732 setElem!55826) (forall!18141 (exprs!8788 setElem!55826) lambda!458804))))

(declare-fun bs!1921899 () Bool)

(assert (= bs!1921899 d!2286392))

(declare-fun m!8033560 () Bool)

(assert (=> bs!1921899 m!8033560))

(assert (=> setNonEmpty!55826 d!2286392))

(declare-fun condSetEmpty!55832 () Bool)

(assert (=> setNonEmpty!55826 (= condSetEmpty!55832 (= setRest!55826 (as set.empty (Set Context!16576))))))

(declare-fun setRes!55832 () Bool)

(assert (=> setNonEmpty!55826 (= tp!2100969 setRes!55832)))

(declare-fun setIsEmpty!55832 () Bool)

(assert (=> setIsEmpty!55832 setRes!55832))

(declare-fun setElem!55832 () Context!16576)

(declare-fun tp!2100985 () Bool)

(declare-fun e!4420403 () Bool)

(declare-fun setNonEmpty!55832 () Bool)

(assert (=> setNonEmpty!55832 (= setRes!55832 (and tp!2100985 (inv!91732 setElem!55832) e!4420403))))

(declare-fun setRest!55832 () (Set Context!16576))

(assert (=> setNonEmpty!55832 (= setRest!55826 (set.union (set.insert setElem!55832 (as set.empty (Set Context!16576))) setRest!55832))))

(declare-fun b!7384871 () Bool)

(declare-fun tp!2100986 () Bool)

(assert (=> b!7384871 (= e!4420403 tp!2100986)))

(assert (= (and setNonEmpty!55826 condSetEmpty!55832) setIsEmpty!55832))

(assert (= (and setNonEmpty!55826 (not condSetEmpty!55832)) setNonEmpty!55832))

(assert (= setNonEmpty!55832 b!7384871))

(declare-fun m!8033562 () Bool)

(assert (=> setNonEmpty!55832 m!8033562))

(declare-fun b!7384876 () Bool)

(declare-fun e!4420406 () Bool)

(declare-fun tp!2100991 () Bool)

(declare-fun tp!2100992 () Bool)

(assert (=> b!7384876 (= e!4420406 (and tp!2100991 tp!2100992))))

(assert (=> b!7384847 (= tp!2100970 e!4420406)))

(assert (= (and b!7384847 (is-Cons!71734 (exprs!8788 c!10532))) b!7384876))

(declare-fun b!7384877 () Bool)

(declare-fun e!4420407 () Bool)

(declare-fun tp!2100993 () Bool)

(declare-fun tp!2100994 () Bool)

(assert (=> b!7384877 (= e!4420407 (and tp!2100993 tp!2100994))))

(assert (=> b!7384850 (= tp!2100971 e!4420407)))

(assert (= (and b!7384850 (is-Cons!71734 (exprs!8788 setElem!55826))) b!7384877))

(push 1)

(assert (not b!7384877))

(assert (not b!7384871))

(assert (not d!2286388))

(assert (not b!7384876))

(assert (not d!2286392))

(assert tp_is_empty!48959)

(assert (not setNonEmpty!55832))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

