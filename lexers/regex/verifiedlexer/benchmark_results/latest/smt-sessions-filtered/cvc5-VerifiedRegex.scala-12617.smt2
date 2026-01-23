; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!699068 () Bool)

(assert start!699068)

(declare-fun res!2924107 () Bool)

(declare-fun e!4311265 () Bool)

(assert (=> start!699068 (=> (not res!2924107) (not e!4311265))))

(declare-datatypes ((C!36958 0))(
  ( (C!36959 (val!28427 Int)) )
))
(declare-datatypes ((Regex!18342 0))(
  ( (ElementMatch!18342 (c!1336798 C!36958)) (Concat!27187 (regOne!37196 Regex!18342) (regTwo!37196 Regex!18342)) (EmptyExpr!18342) (Star!18342 (reg!18671 Regex!18342)) (EmptyLang!18342) (Union!18342 (regOne!37197 Regex!18342) (regTwo!37197 Regex!18342)) )
))
(declare-datatypes ((List!69760 0))(
  ( (Nil!69636) (Cons!69636 (h!76084 Regex!18342) (t!383781 List!69760)) )
))
(declare-datatypes ((Context!14588 0))(
  ( (Context!14589 (exprs!7794 List!69760)) )
))
(declare-fun z!3530 () (Set Context!14588))

(declare-datatypes ((List!69761 0))(
  ( (Nil!69637) (Cons!69637 (h!76085 Context!14588) (t!383782 List!69761)) )
))
(declare-fun unfocusZipper!2602 (List!69761) Regex!18342)

(declare-fun toList!11285 ((Set Context!14588)) List!69761)

(assert (=> start!699068 (= res!2924107 (= (unfocusZipper!2602 (toList!11285 z!3530)) EmptyExpr!18342))))

(assert (=> start!699068 e!4311265))

(declare-fun condSetEmpty!53080 () Bool)

(assert (=> start!699068 (= condSetEmpty!53080 (= z!3530 (as set.empty (Set Context!14588))))))

(declare-fun setRes!53080 () Bool)

(assert (=> start!699068 setRes!53080))

(declare-fun b!7178560 () Bool)

(declare-fun lt!2570627 () Context!14588)

(declare-fun inv!88878 (Context!14588) Bool)

(assert (=> b!7178560 (= e!4311265 (not (inv!88878 lt!2570627)))))

(declare-fun nullableContext!191 (Context!14588) Bool)

(assert (=> b!7178560 (nullableContext!191 lt!2570627)))

(assert (=> b!7178560 (= lt!2570627 (Context!14589 (Cons!69636 EmptyExpr!18342 Nil!69636)))))

(declare-fun setNonEmpty!53080 () Bool)

(declare-fun tp!1991429 () Bool)

(declare-fun e!4311266 () Bool)

(declare-fun setElem!53080 () Context!14588)

(assert (=> setNonEmpty!53080 (= setRes!53080 (and tp!1991429 (inv!88878 setElem!53080) e!4311266))))

(declare-fun setRest!53080 () (Set Context!14588))

(assert (=> setNonEmpty!53080 (= z!3530 (set.union (set.insert setElem!53080 (as set.empty (Set Context!14588))) setRest!53080))))

(declare-fun b!7178561 () Bool)

(declare-fun tp!1991428 () Bool)

(assert (=> b!7178561 (= e!4311266 tp!1991428)))

(declare-fun b!7178562 () Bool)

(declare-fun res!2924106 () Bool)

(assert (=> b!7178562 (=> (not res!2924106) (not e!4311265))))

(declare-fun focus!417 (Regex!18342) (Set Context!14588))

(assert (=> b!7178562 (= res!2924106 (= z!3530 (focus!417 EmptyExpr!18342)))))

(declare-fun setIsEmpty!53080 () Bool)

(assert (=> setIsEmpty!53080 setRes!53080))

(assert (= (and start!699068 res!2924107) b!7178562))

(assert (= (and b!7178562 res!2924106) b!7178560))

(assert (= (and start!699068 condSetEmpty!53080) setIsEmpty!53080))

(assert (= (and start!699068 (not condSetEmpty!53080)) setNonEmpty!53080))

(assert (= setNonEmpty!53080 b!7178561))

(declare-fun m!7877408 () Bool)

(assert (=> start!699068 m!7877408))

(assert (=> start!699068 m!7877408))

(declare-fun m!7877410 () Bool)

(assert (=> start!699068 m!7877410))

(declare-fun m!7877412 () Bool)

(assert (=> b!7178560 m!7877412))

(declare-fun m!7877414 () Bool)

(assert (=> b!7178560 m!7877414))

(declare-fun m!7877416 () Bool)

(assert (=> setNonEmpty!53080 m!7877416))

(declare-fun m!7877418 () Bool)

(assert (=> b!7178562 m!7877418))

(push 1)

(assert (not start!699068))

(assert (not b!7178561))

(assert (not b!7178562))

(assert (not b!7178560))

(assert (not setNonEmpty!53080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2235878 () Bool)

(declare-fun lambda!437371 () Int)

(declare-fun forall!17171 (List!69760 Int) Bool)

(assert (=> d!2235878 (= (inv!88878 setElem!53080) (forall!17171 (exprs!7794 setElem!53080) lambda!437371))))

(declare-fun bs!1895461 () Bool)

(assert (= bs!1895461 d!2235878))

(declare-fun m!7877452 () Bool)

(assert (=> bs!1895461 m!7877452))

(assert (=> setNonEmpty!53080 d!2235878))

(declare-fun bs!1895462 () Bool)

(declare-fun d!2235886 () Bool)

(assert (= bs!1895462 (and d!2235886 d!2235878)))

(declare-fun lambda!437372 () Int)

(assert (=> bs!1895462 (= lambda!437372 lambda!437371)))

(assert (=> d!2235886 (= (inv!88878 lt!2570627) (forall!17171 (exprs!7794 lt!2570627) lambda!437372))))

(declare-fun bs!1895463 () Bool)

(assert (= bs!1895463 d!2235886))

(declare-fun m!7877454 () Bool)

(assert (=> bs!1895463 m!7877454))

(assert (=> b!7178560 d!2235886))

(declare-fun bs!1895464 () Bool)

(declare-fun d!2235888 () Bool)

(assert (= bs!1895464 (and d!2235888 d!2235878)))

(declare-fun lambda!437375 () Int)

(assert (=> bs!1895464 (not (= lambda!437375 lambda!437371))))

(declare-fun bs!1895465 () Bool)

(assert (= bs!1895465 (and d!2235888 d!2235886)))

(assert (=> bs!1895465 (not (= lambda!437375 lambda!437372))))

(assert (=> d!2235888 (= (nullableContext!191 lt!2570627) (forall!17171 (exprs!7794 lt!2570627) lambda!437375))))

(declare-fun bs!1895466 () Bool)

(assert (= bs!1895466 d!2235888))

(declare-fun m!7877456 () Bool)

(assert (=> bs!1895466 m!7877456))

(assert (=> b!7178560 d!2235888))

(declare-fun d!2235890 () Bool)

(declare-fun lt!2570639 () Regex!18342)

(declare-fun validRegex!9464 (Regex!18342) Bool)

(assert (=> d!2235890 (validRegex!9464 lt!2570639)))

(declare-fun generalisedUnion!2767 (List!69760) Regex!18342)

(declare-fun unfocusZipperList!2323 (List!69761) List!69760)

(assert (=> d!2235890 (= lt!2570639 (generalisedUnion!2767 (unfocusZipperList!2323 (toList!11285 z!3530))))))

(assert (=> d!2235890 (= (unfocusZipper!2602 (toList!11285 z!3530)) lt!2570639)))

(declare-fun bs!1895467 () Bool)

(assert (= bs!1895467 d!2235890))

(declare-fun m!7877458 () Bool)

(assert (=> bs!1895467 m!7877458))

(assert (=> bs!1895467 m!7877408))

(declare-fun m!7877460 () Bool)

(assert (=> bs!1895467 m!7877460))

(assert (=> bs!1895467 m!7877460))

(declare-fun m!7877462 () Bool)

(assert (=> bs!1895467 m!7877462))

(assert (=> start!699068 d!2235890))

(declare-fun d!2235892 () Bool)

(declare-fun e!4311281 () Bool)

(assert (=> d!2235892 e!4311281))

(declare-fun res!2924123 () Bool)

(assert (=> d!2235892 (=> (not res!2924123) (not e!4311281))))

(declare-fun lt!2570642 () List!69761)

(declare-fun noDuplicate!2883 (List!69761) Bool)

(assert (=> d!2235892 (= res!2924123 (noDuplicate!2883 lt!2570642))))

(declare-fun choose!55379 ((Set Context!14588)) List!69761)

(assert (=> d!2235892 (= lt!2570642 (choose!55379 z!3530))))

(assert (=> d!2235892 (= (toList!11285 z!3530) lt!2570642)))

(declare-fun b!7178580 () Bool)

(declare-fun content!14312 (List!69761) (Set Context!14588))

(assert (=> b!7178580 (= e!4311281 (= (content!14312 lt!2570642) z!3530))))

(assert (= (and d!2235892 res!2924123) b!7178580))

(declare-fun m!7877464 () Bool)

(assert (=> d!2235892 m!7877464))

(declare-fun m!7877466 () Bool)

(assert (=> d!2235892 m!7877466))

(declare-fun m!7877468 () Bool)

(assert (=> b!7178580 m!7877468))

(assert (=> start!699068 d!2235892))

(declare-fun d!2235894 () Bool)

(declare-fun e!4311284 () Bool)

(assert (=> d!2235894 e!4311284))

(declare-fun res!2924127 () Bool)

(assert (=> d!2235894 (=> (not res!2924127) (not e!4311284))))

(assert (=> d!2235894 (= res!2924127 (validRegex!9464 EmptyExpr!18342))))

(assert (=> d!2235894 (= (focus!417 EmptyExpr!18342) (set.insert (Context!14589 (Cons!69636 EmptyExpr!18342 Nil!69636)) (as set.empty (Set Context!14588))))))

(declare-fun b!7178583 () Bool)

(assert (=> b!7178583 (= e!4311284 (= (unfocusZipper!2602 (toList!11285 (set.insert (Context!14589 (Cons!69636 EmptyExpr!18342 Nil!69636)) (as set.empty (Set Context!14588))))) EmptyExpr!18342))))

(assert (= (and d!2235894 res!2924127) b!7178583))

(declare-fun m!7877470 () Bool)

(assert (=> d!2235894 m!7877470))

(declare-fun m!7877472 () Bool)

(assert (=> d!2235894 m!7877472))

(assert (=> b!7178583 m!7877472))

(assert (=> b!7178583 m!7877472))

(declare-fun m!7877474 () Bool)

(assert (=> b!7178583 m!7877474))

(assert (=> b!7178583 m!7877474))

(declare-fun m!7877476 () Bool)

(assert (=> b!7178583 m!7877476))

(assert (=> b!7178562 d!2235894))

(declare-fun b!7178588 () Bool)

(declare-fun e!4311287 () Bool)

(declare-fun tp!1991440 () Bool)

(declare-fun tp!1991441 () Bool)

(assert (=> b!7178588 (= e!4311287 (and tp!1991440 tp!1991441))))

(assert (=> b!7178561 (= tp!1991428 e!4311287)))

(assert (= (and b!7178561 (is-Cons!69636 (exprs!7794 setElem!53080))) b!7178588))

(declare-fun condSetEmpty!53086 () Bool)

(assert (=> setNonEmpty!53080 (= condSetEmpty!53086 (= setRest!53080 (as set.empty (Set Context!14588))))))

(declare-fun setRes!53086 () Bool)

(assert (=> setNonEmpty!53080 (= tp!1991429 setRes!53086)))

(declare-fun setIsEmpty!53086 () Bool)

(assert (=> setIsEmpty!53086 setRes!53086))

(declare-fun tp!1991446 () Bool)

(declare-fun setElem!53086 () Context!14588)

(declare-fun e!4311290 () Bool)

(declare-fun setNonEmpty!53086 () Bool)

(assert (=> setNonEmpty!53086 (= setRes!53086 (and tp!1991446 (inv!88878 setElem!53086) e!4311290))))

(declare-fun setRest!53086 () (Set Context!14588))

(assert (=> setNonEmpty!53086 (= setRest!53080 (set.union (set.insert setElem!53086 (as set.empty (Set Context!14588))) setRest!53086))))

(declare-fun b!7178593 () Bool)

(declare-fun tp!1991447 () Bool)

(assert (=> b!7178593 (= e!4311290 tp!1991447)))

(assert (= (and setNonEmpty!53080 condSetEmpty!53086) setIsEmpty!53086))

(assert (= (and setNonEmpty!53080 (not condSetEmpty!53086)) setNonEmpty!53086))

(assert (= setNonEmpty!53086 b!7178593))

(declare-fun m!7877478 () Bool)

(assert (=> setNonEmpty!53086 m!7877478))

(push 1)

(assert (not d!2235890))

(assert (not b!7178593))

(assert (not d!2235878))

(assert (not b!7178583))

(assert (not d!2235892))

(assert (not b!7178580))

(assert (not setNonEmpty!53086))

(assert (not d!2235888))

(assert (not b!7178588))

(assert (not d!2235886))

(assert (not d!2235894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

