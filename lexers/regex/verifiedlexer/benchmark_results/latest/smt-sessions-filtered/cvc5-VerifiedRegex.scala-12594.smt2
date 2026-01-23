; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697758 () Bool)

(assert start!697758)

(declare-fun b!7157582 () Bool)

(declare-fun res!2918442 () Bool)

(declare-fun e!4299923 () Bool)

(assert (=> b!7157582 (=> (not res!2918442) (not e!4299923))))

(declare-datatypes ((C!36866 0))(
  ( (C!36867 (val!28381 Int)) )
))
(declare-datatypes ((Regex!18296 0))(
  ( (ElementMatch!18296 (c!1333844 C!36866)) (Concat!27141 (regOne!37104 Regex!18296) (regTwo!37104 Regex!18296)) (EmptyExpr!18296) (Star!18296 (reg!18625 Regex!18296)) (EmptyLang!18296) (Union!18296 (regOne!37105 Regex!18296) (regTwo!37105 Regex!18296)) )
))
(declare-datatypes ((List!69628 0))(
  ( (Nil!69504) (Cons!69504 (h!75952 Regex!18296) (t!383645 List!69628)) )
))
(declare-datatypes ((Context!14496 0))(
  ( (Context!14497 (exprs!7748 List!69628)) )
))
(declare-fun z!3530 () (Set Context!14496))

(declare-fun focus!371 (Regex!18296) (Set Context!14496))

(assert (=> b!7157582 (= res!2918442 (= z!3530 (focus!371 EmptyExpr!18296)))))

(declare-fun setIsEmpty!52738 () Bool)

(declare-fun setRes!52738 () Bool)

(assert (=> setIsEmpty!52738 setRes!52738))

(declare-fun res!2918440 () Bool)

(assert (=> start!697758 (=> (not res!2918440) (not e!4299923))))

(declare-datatypes ((List!69629 0))(
  ( (Nil!69505) (Cons!69505 (h!75953 Context!14496) (t!383646 List!69629)) )
))
(declare-fun unfocusZipper!2556 (List!69629) Regex!18296)

(declare-fun toList!11239 ((Set Context!14496)) List!69629)

(assert (=> start!697758 (= res!2918440 (= (unfocusZipper!2556 (toList!11239 z!3530)) EmptyExpr!18296))))

(assert (=> start!697758 e!4299923))

(declare-fun condSetEmpty!52738 () Bool)

(assert (=> start!697758 (= condSetEmpty!52738 (= z!3530 (as set.empty (Set Context!14496))))))

(assert (=> start!697758 setRes!52738))

(declare-fun e!4299924 () Bool)

(assert (=> start!697758 e!4299924))

(declare-fun b!7157583 () Bool)

(declare-fun e!4299925 () Bool)

(declare-datatypes ((List!69630 0))(
  ( (Nil!69506) (Cons!69506 (h!75954 C!36866) (t!383647 List!69630)) )
))
(declare-fun s!7967 () List!69630)

(assert (=> b!7157583 (= e!4299925 (not (= s!7967 Nil!69506)))))

(declare-fun e!4299926 () Bool)

(declare-fun tp!1979324 () Bool)

(declare-fun setElem!52738 () Context!14496)

(declare-fun setNonEmpty!52738 () Bool)

(declare-fun inv!88763 (Context!14496) Bool)

(assert (=> setNonEmpty!52738 (= setRes!52738 (and tp!1979324 (inv!88763 setElem!52738) e!4299926))))

(declare-fun setRest!52738 () (Set Context!14496))

(assert (=> setNonEmpty!52738 (= z!3530 (set.union (set.insert setElem!52738 (as set.empty (Set Context!14496))) setRest!52738))))

(declare-fun b!7157584 () Bool)

(declare-fun tp_is_empty!46165 () Bool)

(declare-fun tp!1979322 () Bool)

(assert (=> b!7157584 (= e!4299924 (and tp_is_empty!46165 tp!1979322))))

(declare-fun b!7157585 () Bool)

(assert (=> b!7157585 (= e!4299923 (not e!4299925))))

(declare-fun res!2918441 () Bool)

(assert (=> b!7157585 (=> res!2918441 e!4299925)))

(declare-fun isEmpty!40146 (List!69630) Bool)

(assert (=> b!7157585 (= res!2918441 (isEmpty!40146 s!7967))))

(declare-fun nullableContext!169 (Context!14496) Bool)

(assert (=> b!7157585 (nullableContext!169 (Context!14497 (Cons!69504 EmptyExpr!18296 Nil!69504)))))

(declare-fun b!7157586 () Bool)

(declare-fun tp!1979323 () Bool)

(assert (=> b!7157586 (= e!4299926 tp!1979323)))

(assert (= (and start!697758 res!2918440) b!7157582))

(assert (= (and b!7157582 res!2918442) b!7157585))

(assert (= (and b!7157585 (not res!2918441)) b!7157583))

(assert (= (and start!697758 condSetEmpty!52738) setIsEmpty!52738))

(assert (= (and start!697758 (not condSetEmpty!52738)) setNonEmpty!52738))

(assert (= setNonEmpty!52738 b!7157586))

(assert (= (and start!697758 (is-Cons!69506 s!7967)) b!7157584))

(declare-fun m!7863996 () Bool)

(assert (=> b!7157582 m!7863996))

(declare-fun m!7863998 () Bool)

(assert (=> start!697758 m!7863998))

(assert (=> start!697758 m!7863998))

(declare-fun m!7864000 () Bool)

(assert (=> start!697758 m!7864000))

(declare-fun m!7864002 () Bool)

(assert (=> setNonEmpty!52738 m!7864002))

(declare-fun m!7864004 () Bool)

(assert (=> b!7157585 m!7864004))

(declare-fun m!7864006 () Bool)

(assert (=> b!7157585 m!7864006))

(push 1)

(assert (not setNonEmpty!52738))

(assert tp_is_empty!46165)

(assert (not b!7157586))

(assert (not b!7157584))

(assert (not b!7157585))

(assert (not b!7157582))

(assert (not start!697758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229961 () Bool)

(declare-fun e!4299941 () Bool)

(assert (=> d!2229961 e!4299941))

(declare-fun res!2918455 () Bool)

(assert (=> d!2229961 (=> (not res!2918455) (not e!4299941))))

(declare-fun validRegex!9428 (Regex!18296) Bool)

(assert (=> d!2229961 (= res!2918455 (validRegex!9428 EmptyExpr!18296))))

(assert (=> d!2229961 (= (focus!371 EmptyExpr!18296) (set.insert (Context!14497 (Cons!69504 EmptyExpr!18296 Nil!69504)) (as set.empty (Set Context!14496))))))

(declare-fun b!7157604 () Bool)

(assert (=> b!7157604 (= e!4299941 (= (unfocusZipper!2556 (toList!11239 (set.insert (Context!14497 (Cons!69504 EmptyExpr!18296 Nil!69504)) (as set.empty (Set Context!14496))))) EmptyExpr!18296))))

(assert (= (and d!2229961 res!2918455) b!7157604))

(declare-fun m!7864020 () Bool)

(assert (=> d!2229961 m!7864020))

(declare-fun m!7864022 () Bool)

(assert (=> d!2229961 m!7864022))

(assert (=> b!7157604 m!7864022))

(assert (=> b!7157604 m!7864022))

(declare-fun m!7864024 () Bool)

(assert (=> b!7157604 m!7864024))

(assert (=> b!7157604 m!7864024))

(declare-fun m!7864026 () Bool)

(assert (=> b!7157604 m!7864026))

(assert (=> b!7157582 d!2229961))

(declare-fun d!2229967 () Bool)

(declare-fun lt!2569533 () Regex!18296)

(assert (=> d!2229967 (validRegex!9428 lt!2569533)))

(declare-fun generalisedUnion!2731 (List!69628) Regex!18296)

(declare-fun unfocusZipperList!2287 (List!69629) List!69628)

(assert (=> d!2229967 (= lt!2569533 (generalisedUnion!2731 (unfocusZipperList!2287 (toList!11239 z!3530))))))

(assert (=> d!2229967 (= (unfocusZipper!2556 (toList!11239 z!3530)) lt!2569533)))

(declare-fun bs!1890111 () Bool)

(assert (= bs!1890111 d!2229967))

(declare-fun m!7864028 () Bool)

(assert (=> bs!1890111 m!7864028))

(assert (=> bs!1890111 m!7863998))

(declare-fun m!7864030 () Bool)

(assert (=> bs!1890111 m!7864030))

(assert (=> bs!1890111 m!7864030))

(declare-fun m!7864032 () Bool)

(assert (=> bs!1890111 m!7864032))

(assert (=> start!697758 d!2229967))

(declare-fun d!2229969 () Bool)

(declare-fun e!4299944 () Bool)

(assert (=> d!2229969 e!4299944))

(declare-fun res!2918458 () Bool)

(assert (=> d!2229969 (=> (not res!2918458) (not e!4299944))))

(declare-fun lt!2569536 () List!69629)

(declare-fun noDuplicate!2848 (List!69629) Bool)

(assert (=> d!2229969 (= res!2918458 (noDuplicate!2848 lt!2569536))))

(declare-fun choose!55312 ((Set Context!14496)) List!69629)

(assert (=> d!2229969 (= lt!2569536 (choose!55312 z!3530))))

(assert (=> d!2229969 (= (toList!11239 z!3530) lt!2569536)))

(declare-fun b!7157607 () Bool)

(declare-fun content!14277 (List!69629) (Set Context!14496))

(assert (=> b!7157607 (= e!4299944 (= (content!14277 lt!2569536) z!3530))))

(assert (= (and d!2229969 res!2918458) b!7157607))

(declare-fun m!7864034 () Bool)

(assert (=> d!2229969 m!7864034))

(declare-fun m!7864036 () Bool)

(assert (=> d!2229969 m!7864036))

(declare-fun m!7864038 () Bool)

(assert (=> b!7157607 m!7864038))

(assert (=> start!697758 d!2229969))

(declare-fun d!2229971 () Bool)

(assert (=> d!2229971 (= (isEmpty!40146 s!7967) (is-Nil!69506 s!7967))))

(assert (=> b!7157585 d!2229971))

(declare-fun d!2229973 () Bool)

(declare-fun lambda!436605 () Int)

(declare-fun forall!17131 (List!69628 Int) Bool)

(assert (=> d!2229973 (= (nullableContext!169 (Context!14497 (Cons!69504 EmptyExpr!18296 Nil!69504))) (forall!17131 (exprs!7748 (Context!14497 (Cons!69504 EmptyExpr!18296 Nil!69504))) lambda!436605))))

(declare-fun bs!1890112 () Bool)

(assert (= bs!1890112 d!2229973))

(declare-fun m!7864040 () Bool)

(assert (=> bs!1890112 m!7864040))

(assert (=> b!7157585 d!2229973))

(declare-fun bs!1890113 () Bool)

(declare-fun d!2229975 () Bool)

(assert (= bs!1890113 (and d!2229975 d!2229973)))

(declare-fun lambda!436608 () Int)

(assert (=> bs!1890113 (not (= lambda!436608 lambda!436605))))

(assert (=> d!2229975 (= (inv!88763 setElem!52738) (forall!17131 (exprs!7748 setElem!52738) lambda!436608))))

(declare-fun bs!1890114 () Bool)

(assert (= bs!1890114 d!2229975))

(declare-fun m!7864042 () Bool)

(assert (=> bs!1890114 m!7864042))

(assert (=> setNonEmpty!52738 d!2229975))

(declare-fun b!7157612 () Bool)

(declare-fun e!4299947 () Bool)

(declare-fun tp!1979338 () Bool)

(declare-fun tp!1979339 () Bool)

(assert (=> b!7157612 (= e!4299947 (and tp!1979338 tp!1979339))))

(assert (=> b!7157586 (= tp!1979323 e!4299947)))

(assert (= (and b!7157586 (is-Cons!69504 (exprs!7748 setElem!52738))) b!7157612))

(declare-fun b!7157617 () Bool)

(declare-fun e!4299950 () Bool)

(declare-fun tp!1979342 () Bool)

(assert (=> b!7157617 (= e!4299950 (and tp_is_empty!46165 tp!1979342))))

(assert (=> b!7157584 (= tp!1979322 e!4299950)))

(assert (= (and b!7157584 (is-Cons!69506 (t!383647 s!7967))) b!7157617))

(declare-fun condSetEmpty!52744 () Bool)

(assert (=> setNonEmpty!52738 (= condSetEmpty!52744 (= setRest!52738 (as set.empty (Set Context!14496))))))

(declare-fun setRes!52744 () Bool)

(assert (=> setNonEmpty!52738 (= tp!1979324 setRes!52744)))

(declare-fun setIsEmpty!52744 () Bool)

(assert (=> setIsEmpty!52744 setRes!52744))

(declare-fun setNonEmpty!52744 () Bool)

(declare-fun setElem!52744 () Context!14496)

(declare-fun tp!1979347 () Bool)

(declare-fun e!4299953 () Bool)

(assert (=> setNonEmpty!52744 (= setRes!52744 (and tp!1979347 (inv!88763 setElem!52744) e!4299953))))

(declare-fun setRest!52744 () (Set Context!14496))

(assert (=> setNonEmpty!52744 (= setRest!52738 (set.union (set.insert setElem!52744 (as set.empty (Set Context!14496))) setRest!52744))))

(declare-fun b!7157622 () Bool)

(declare-fun tp!1979348 () Bool)

(assert (=> b!7157622 (= e!4299953 tp!1979348)))

(assert (= (and setNonEmpty!52738 condSetEmpty!52744) setIsEmpty!52744))

(assert (= (and setNonEmpty!52738 (not condSetEmpty!52744)) setNonEmpty!52744))

(assert (= setNonEmpty!52744 b!7157622))

(declare-fun m!7864044 () Bool)

(assert (=> setNonEmpty!52744 m!7864044))

(push 1)

(assert (not b!7157612))

(assert (not d!2229967))

(assert (not setNonEmpty!52744))

(assert (not b!7157604))

(assert (not d!2229973))

(assert (not d!2229961))

(assert (not b!7157607))

(assert tp_is_empty!46165)

(assert (not d!2229969))

(assert (not b!7157622))

(assert (not d!2229975))

(assert (not b!7157617))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

