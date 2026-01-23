; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722874 () Bool)

(assert start!722874)

(declare-fun setIsEmpty!56610 () Bool)

(declare-fun setRes!56610 () Bool)

(assert (=> setIsEmpty!56610 setRes!56610))

(declare-fun b!7442463 () Bool)

(declare-fun e!4444106 () Bool)

(declare-fun tp_is_empty!49175 () Bool)

(declare-fun tp!2151830 () Bool)

(assert (=> b!7442463 (= e!4444106 (and tp_is_empty!49175 tp!2151830))))

(declare-fun b!7442464 () Bool)

(declare-fun e!4444107 () Bool)

(declare-datatypes ((C!39190 0))(
  ( (C!39191 (val!29969 Int)) )
))
(declare-datatypes ((Regex!19458 0))(
  ( (ElementMatch!19458 (c!1377264 C!39190)) (Concat!28303 (regOne!39428 Regex!19458) (regTwo!39428 Regex!19458)) (EmptyExpr!19458) (Star!19458 (reg!19787 Regex!19458)) (EmptyLang!19458) (Union!19458 (regOne!39429 Regex!19458) (regTwo!39429 Regex!19458)) )
))
(declare-datatypes ((List!72142 0))(
  ( (Nil!72018) (Cons!72018 (h!78466 Regex!19458) (t!386707 List!72142)) )
))
(declare-datatypes ((Context!16796 0))(
  ( (Context!16797 (exprs!8898 List!72142)) )
))
(declare-fun lt!2619483 () Context!16796)

(declare-fun nullableContext!419 (Context!16796) Bool)

(assert (=> b!7442464 (= e!4444107 (not (nullableContext!419 lt!2619483)))))

(declare-fun res!2986768 () Bool)

(assert (=> start!722874 (=> (not res!2986768) (not e!4444107))))

(declare-fun z!3488 () (Set Context!16796))

(declare-datatypes ((List!72143 0))(
  ( (Nil!72019) (Cons!72019 (h!78467 C!39190) (t!386708 List!72143)) )
))
(declare-fun s!7945 () List!72143)

(assert (=> start!722874 (= res!2986768 (and (= z!3488 (set.insert lt!2619483 (as set.empty (Set Context!16796)))) (not (is-Cons!72019 s!7945))))))

(assert (=> start!722874 (= lt!2619483 (Context!16797 Nil!72018))))

(assert (=> start!722874 e!4444107))

(declare-fun condSetEmpty!56610 () Bool)

(assert (=> start!722874 (= condSetEmpty!56610 (= z!3488 (as set.empty (Set Context!16796))))))

(assert (=> start!722874 setRes!56610))

(assert (=> start!722874 e!4444106))

(declare-fun b!7442465 () Bool)

(declare-fun e!4444105 () Bool)

(declare-fun tp!2151829 () Bool)

(assert (=> b!7442465 (= e!4444105 tp!2151829)))

(declare-fun tp!2151831 () Bool)

(declare-fun setNonEmpty!56610 () Bool)

(declare-fun setElem!56610 () Context!16796)

(declare-fun inv!92007 (Context!16796) Bool)

(assert (=> setNonEmpty!56610 (= setRes!56610 (and tp!2151831 (inv!92007 setElem!56610) e!4444105))))

(declare-fun setRest!56610 () (Set Context!16796))

(assert (=> setNonEmpty!56610 (= z!3488 (set.union (set.insert setElem!56610 (as set.empty (Set Context!16796))) setRest!56610))))

(assert (= (and start!722874 res!2986768) b!7442464))

(assert (= (and start!722874 condSetEmpty!56610) setIsEmpty!56610))

(assert (= (and start!722874 (not condSetEmpty!56610)) setNonEmpty!56610))

(assert (= setNonEmpty!56610 b!7442465))

(assert (= (and start!722874 (is-Cons!72019 s!7945)) b!7442463))

(declare-fun m!8053980 () Bool)

(assert (=> b!7442464 m!8053980))

(declare-fun m!8053982 () Bool)

(assert (=> start!722874 m!8053982))

(declare-fun m!8053984 () Bool)

(assert (=> setNonEmpty!56610 m!8053984))

(push 1)

(assert (not setNonEmpty!56610))

(assert (not b!7442463))

(assert (not b!7442464))

(assert tp_is_empty!49175)

(assert (not b!7442465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2295779 () Bool)

(declare-fun lambda!460492 () Int)

(declare-fun forall!18233 (List!72142 Int) Bool)

(assert (=> d!2295779 (= (inv!92007 setElem!56610) (forall!18233 (exprs!8898 setElem!56610) lambda!460492))))

(declare-fun bs!1926409 () Bool)

(assert (= bs!1926409 d!2295779))

(declare-fun m!8053992 () Bool)

(assert (=> bs!1926409 m!8053992))

(assert (=> setNonEmpty!56610 d!2295779))

(declare-fun bs!1926410 () Bool)

(declare-fun d!2295783 () Bool)

(assert (= bs!1926410 (and d!2295783 d!2295779)))

(declare-fun lambda!460495 () Int)

(assert (=> bs!1926410 (not (= lambda!460495 lambda!460492))))

(assert (=> d!2295783 (= (nullableContext!419 lt!2619483) (forall!18233 (exprs!8898 lt!2619483) lambda!460495))))

(declare-fun bs!1926411 () Bool)

(assert (= bs!1926411 d!2295783))

(declare-fun m!8053994 () Bool)

(assert (=> bs!1926411 m!8053994))

(assert (=> b!7442464 d!2295783))

(declare-fun b!7442479 () Bool)

(declare-fun e!4444119 () Bool)

(declare-fun tp!2151845 () Bool)

(declare-fun tp!2151846 () Bool)

(assert (=> b!7442479 (= e!4444119 (and tp!2151845 tp!2151846))))

(assert (=> b!7442465 (= tp!2151829 e!4444119)))

(assert (= (and b!7442465 (is-Cons!72018 (exprs!8898 setElem!56610))) b!7442479))

(declare-fun condSetEmpty!56616 () Bool)

(assert (=> setNonEmpty!56610 (= condSetEmpty!56616 (= setRest!56610 (as set.empty (Set Context!16796))))))

(declare-fun setRes!56616 () Bool)

(assert (=> setNonEmpty!56610 (= tp!2151831 setRes!56616)))

(declare-fun setIsEmpty!56616 () Bool)

(assert (=> setIsEmpty!56616 setRes!56616))

(declare-fun e!4444122 () Bool)

(declare-fun setNonEmpty!56616 () Bool)

(declare-fun tp!2151852 () Bool)

(declare-fun setElem!56616 () Context!16796)

(assert (=> setNonEmpty!56616 (= setRes!56616 (and tp!2151852 (inv!92007 setElem!56616) e!4444122))))

(declare-fun setRest!56616 () (Set Context!16796))

(assert (=> setNonEmpty!56616 (= setRest!56610 (set.union (set.insert setElem!56616 (as set.empty (Set Context!16796))) setRest!56616))))

(declare-fun b!7442484 () Bool)

(declare-fun tp!2151851 () Bool)

(assert (=> b!7442484 (= e!4444122 tp!2151851)))

(assert (= (and setNonEmpty!56610 condSetEmpty!56616) setIsEmpty!56616))

(assert (= (and setNonEmpty!56610 (not condSetEmpty!56616)) setNonEmpty!56616))

(assert (= setNonEmpty!56616 b!7442484))

(declare-fun m!8053996 () Bool)

(assert (=> setNonEmpty!56616 m!8053996))

(declare-fun b!7442489 () Bool)

(declare-fun e!4444125 () Bool)

(declare-fun tp!2151855 () Bool)

(assert (=> b!7442489 (= e!4444125 (and tp_is_empty!49175 tp!2151855))))

(assert (=> b!7442463 (= tp!2151830 e!4444125)))

(assert (= (and b!7442463 (is-Cons!72019 (t!386708 s!7945))) b!7442489))

(push 1)

(assert (not b!7442489))

(assert (not b!7442484))

(assert (not b!7442479))

(assert (not d!2295783))

(assert (not setNonEmpty!56616))

(assert (not d!2295779))

(assert tp_is_empty!49175)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2295787 () Bool)

(declare-fun res!2986776 () Bool)

(declare-fun e!4444133 () Bool)

(assert (=> d!2295787 (=> res!2986776 e!4444133)))

(assert (=> d!2295787 (= res!2986776 (is-Nil!72018 (exprs!8898 setElem!56610)))))

(assert (=> d!2295787 (= (forall!18233 (exprs!8898 setElem!56610) lambda!460492) e!4444133)))

(declare-fun b!7442501 () Bool)

(declare-fun e!4444134 () Bool)

(assert (=> b!7442501 (= e!4444133 e!4444134)))

(declare-fun res!2986777 () Bool)

(assert (=> b!7442501 (=> (not res!2986777) (not e!4444134))))

(declare-fun dynLambda!29734 (Int Regex!19458) Bool)

(assert (=> b!7442501 (= res!2986777 (dynLambda!29734 lambda!460492 (h!78466 (exprs!8898 setElem!56610))))))

(declare-fun b!7442502 () Bool)

(assert (=> b!7442502 (= e!4444134 (forall!18233 (t!386707 (exprs!8898 setElem!56610)) lambda!460492))))

(assert (= (and d!2295787 (not res!2986776)) b!7442501))

(assert (= (and b!7442501 res!2986777) b!7442502))

(declare-fun b_lambda!287587 () Bool)

(assert (=> (not b_lambda!287587) (not b!7442501)))

(declare-fun m!8054002 () Bool)

(assert (=> b!7442501 m!8054002))

(declare-fun m!8054004 () Bool)

(assert (=> b!7442502 m!8054004))

(assert (=> d!2295779 d!2295787))

(declare-fun d!2295789 () Bool)

(declare-fun res!2986778 () Bool)

(declare-fun e!4444137 () Bool)

(assert (=> d!2295789 (=> res!2986778 e!4444137)))

(assert (=> d!2295789 (= res!2986778 (is-Nil!72018 (exprs!8898 lt!2619483)))))

(assert (=> d!2295789 (= (forall!18233 (exprs!8898 lt!2619483) lambda!460495) e!4444137)))

(declare-fun b!7442505 () Bool)

(declare-fun e!4444138 () Bool)

(assert (=> b!7442505 (= e!4444137 e!4444138)))

(declare-fun res!2986779 () Bool)

(assert (=> b!7442505 (=> (not res!2986779) (not e!4444138))))

(assert (=> b!7442505 (= res!2986779 (dynLambda!29734 lambda!460495 (h!78466 (exprs!8898 lt!2619483))))))

(declare-fun b!7442506 () Bool)

(assert (=> b!7442506 (= e!4444138 (forall!18233 (t!386707 (exprs!8898 lt!2619483)) lambda!460495))))

(assert (= (and d!2295789 (not res!2986778)) b!7442505))

(assert (= (and b!7442505 res!2986779) b!7442506))

(declare-fun b_lambda!287589 () Bool)

(assert (=> (not b_lambda!287589) (not b!7442505)))

(declare-fun m!8054006 () Bool)

(assert (=> b!7442505 m!8054006))

(declare-fun m!8054008 () Bool)

(assert (=> b!7442506 m!8054008))

(assert (=> d!2295783 d!2295789))

(declare-fun bs!1926415 () Bool)

(declare-fun d!2295791 () Bool)

(assert (= bs!1926415 (and d!2295791 d!2295779)))

(declare-fun lambda!460502 () Int)

(assert (=> bs!1926415 (= lambda!460502 lambda!460492)))

(declare-fun bs!1926416 () Bool)

(assert (= bs!1926416 (and d!2295791 d!2295783)))

(assert (=> bs!1926416 (not (= lambda!460502 lambda!460495))))

(assert (=> d!2295791 (= (inv!92007 setElem!56616) (forall!18233 (exprs!8898 setElem!56616) lambda!460502))))

(declare-fun bs!1926417 () Bool)

(assert (= bs!1926417 d!2295791))

(declare-fun m!8054012 () Bool)

(assert (=> bs!1926417 m!8054012))

(assert (=> setNonEmpty!56616 d!2295791))

(declare-fun b!7442512 () Bool)

(declare-fun e!4444142 () Bool)

(declare-fun tp!2151867 () Bool)

(assert (=> b!7442512 (= e!4444142 (and tp_is_empty!49175 tp!2151867))))

(assert (=> b!7442489 (= tp!2151855 e!4444142)))

(assert (= (and b!7442489 (is-Cons!72019 (t!386708 (t!386708 s!7945)))) b!7442512))

(declare-fun b!7442524 () Bool)

(declare-fun e!4444146 () Bool)

(assert (=> b!7442524 (= e!4444146 tp_is_empty!49175)))

(declare-fun b!7442525 () Bool)

(declare-fun tp!2151884 () Bool)

(declare-fun tp!2151882 () Bool)

(assert (=> b!7442525 (= e!4444146 (and tp!2151884 tp!2151882))))

(declare-fun b!7442527 () Bool)

(declare-fun tp!2151883 () Bool)

(declare-fun tp!2151885 () Bool)

(assert (=> b!7442527 (= e!4444146 (and tp!2151883 tp!2151885))))

(assert (=> b!7442479 (= tp!2151845 e!4444146)))

(declare-fun b!7442526 () Bool)

(declare-fun tp!2151886 () Bool)

(assert (=> b!7442526 (= e!4444146 tp!2151886)))

(assert (= (and b!7442479 (is-ElementMatch!19458 (h!78466 (exprs!8898 setElem!56610)))) b!7442524))

(assert (= (and b!7442479 (is-Concat!28303 (h!78466 (exprs!8898 setElem!56610)))) b!7442525))

(assert (= (and b!7442479 (is-Star!19458 (h!78466 (exprs!8898 setElem!56610)))) b!7442526))

(assert (= (and b!7442479 (is-Union!19458 (h!78466 (exprs!8898 setElem!56610)))) b!7442527))

(declare-fun b!7442528 () Bool)

(declare-fun e!4444147 () Bool)

(declare-fun tp!2151887 () Bool)

(declare-fun tp!2151888 () Bool)

(assert (=> b!7442528 (= e!4444147 (and tp!2151887 tp!2151888))))

(assert (=> b!7442479 (= tp!2151846 e!4444147)))

(assert (= (and b!7442479 (is-Cons!72018 (t!386707 (exprs!8898 setElem!56610)))) b!7442528))

(declare-fun b!7442529 () Bool)

(declare-fun e!4444148 () Bool)

(declare-fun tp!2151889 () Bool)

(declare-fun tp!2151890 () Bool)

(assert (=> b!7442529 (= e!4444148 (and tp!2151889 tp!2151890))))

(assert (=> b!7442484 (= tp!2151851 e!4444148)))

(assert (= (and b!7442484 (is-Cons!72018 (exprs!8898 setElem!56616))) b!7442529))

(declare-fun condSetEmpty!56620 () Bool)

(assert (=> setNonEmpty!56616 (= condSetEmpty!56620 (= setRest!56616 (as set.empty (Set Context!16796))))))

(declare-fun setRes!56620 () Bool)

(assert (=> setNonEmpty!56616 (= tp!2151852 setRes!56620)))

(declare-fun setIsEmpty!56620 () Bool)

(assert (=> setIsEmpty!56620 setRes!56620))

(declare-fun setElem!56620 () Context!16796)

(declare-fun tp!2151892 () Bool)

(declare-fun e!4444149 () Bool)

(declare-fun setNonEmpty!56620 () Bool)

(assert (=> setNonEmpty!56620 (= setRes!56620 (and tp!2151892 (inv!92007 setElem!56620) e!4444149))))

(declare-fun setRest!56620 () (Set Context!16796))

(assert (=> setNonEmpty!56620 (= setRest!56616 (set.union (set.insert setElem!56620 (as set.empty (Set Context!16796))) setRest!56620))))

(declare-fun b!7442530 () Bool)

(declare-fun tp!2151891 () Bool)

(assert (=> b!7442530 (= e!4444149 tp!2151891)))

(assert (= (and setNonEmpty!56616 condSetEmpty!56620) setIsEmpty!56620))

(assert (= (and setNonEmpty!56616 (not condSetEmpty!56620)) setNonEmpty!56620))

(assert (= setNonEmpty!56620 b!7442530))

(declare-fun m!8054014 () Bool)

(assert (=> setNonEmpty!56620 m!8054014))

(declare-fun b_lambda!287591 () Bool)

(assert (= b_lambda!287587 (or d!2295779 b_lambda!287591)))

(declare-fun bs!1926418 () Bool)

(declare-fun d!2295793 () Bool)

(assert (= bs!1926418 (and d!2295793 d!2295779)))

(declare-fun validRegex!9982 (Regex!19458) Bool)

(assert (=> bs!1926418 (= (dynLambda!29734 lambda!460492 (h!78466 (exprs!8898 setElem!56610))) (validRegex!9982 (h!78466 (exprs!8898 setElem!56610))))))

(declare-fun m!8054016 () Bool)

(assert (=> bs!1926418 m!8054016))

(assert (=> b!7442501 d!2295793))

(declare-fun b_lambda!287593 () Bool)

(assert (= b_lambda!287589 (or d!2295783 b_lambda!287593)))

(declare-fun bs!1926419 () Bool)

(declare-fun d!2295795 () Bool)

(assert (= bs!1926419 (and d!2295795 d!2295783)))

(declare-fun nullable!8481 (Regex!19458) Bool)

(assert (=> bs!1926419 (= (dynLambda!29734 lambda!460495 (h!78466 (exprs!8898 lt!2619483))) (nullable!8481 (h!78466 (exprs!8898 lt!2619483))))))

(declare-fun m!8054018 () Bool)

(assert (=> bs!1926419 m!8054018))

(assert (=> b!7442505 d!2295795))

(push 1)

(assert (not b!7442529))

(assert (not b!7442526))

(assert tp_is_empty!49175)

(assert (not d!2295791))

(assert (not b!7442502))

(assert (not b!7442528))

(assert (not b!7442527))

(assert (not b_lambda!287593))

(assert (not b!7442525))

(assert (not b!7442530))

(assert (not b!7442512))

(assert (not b!7442506))

(assert (not bs!1926419))

(assert (not setNonEmpty!56620))

(assert (not bs!1926418))

(assert (not b_lambda!287591))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

