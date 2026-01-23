; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697906 () Bool)

(assert start!697906)

(declare-fun b!7158222 () Bool)

(assert (=> b!7158222 true))

(declare-fun res!2918681 () Bool)

(declare-fun e!4300355 () Bool)

(assert (=> start!697906 (=> (not res!2918681) (not e!4300355))))

(declare-datatypes ((C!36878 0))(
  ( (C!36879 (val!28387 Int)) )
))
(declare-datatypes ((Regex!18302 0))(
  ( (ElementMatch!18302 (c!1333975 C!36878)) (Concat!27147 (regOne!37116 Regex!18302) (regTwo!37116 Regex!18302)) (EmptyExpr!18302) (Star!18302 (reg!18631 Regex!18302)) (EmptyLang!18302) (Union!18302 (regOne!37117 Regex!18302) (regTwo!37117 Regex!18302)) )
))
(declare-datatypes ((List!69646 0))(
  ( (Nil!69522) (Cons!69522 (h!75970 Regex!18302) (t!383663 List!69646)) )
))
(declare-datatypes ((Context!14508 0))(
  ( (Context!14509 (exprs!7754 List!69646)) )
))
(declare-fun z!3530 () (Set Context!14508))

(declare-datatypes ((List!69647 0))(
  ( (Nil!69523) (Cons!69523 (h!75971 Context!14508) (t!383664 List!69647)) )
))
(declare-fun unfocusZipper!2562 (List!69647) Regex!18302)

(declare-fun toList!11245 ((Set Context!14508)) List!69647)

(assert (=> start!697906 (= res!2918681 (= (unfocusZipper!2562 (toList!11245 z!3530)) EmptyExpr!18302))))

(assert (=> start!697906 e!4300355))

(declare-fun condSetEmpty!52776 () Bool)

(assert (=> start!697906 (= condSetEmpty!52776 (= z!3530 (as set.empty (Set Context!14508))))))

(declare-fun setRes!52776 () Bool)

(assert (=> start!697906 setRes!52776))

(declare-fun e!4300353 () Bool)

(assert (=> start!697906 e!4300353))

(declare-fun setIsEmpty!52776 () Bool)

(assert (=> setIsEmpty!52776 setRes!52776))

(declare-fun b!7158216 () Bool)

(declare-fun e!4300356 () Bool)

(declare-fun e!4300354 () Bool)

(assert (=> b!7158216 (= e!4300356 e!4300354)))

(declare-fun res!2918683 () Bool)

(assert (=> b!7158216 (=> res!2918683 e!4300354)))

(declare-fun lt!2569639 () Context!14508)

(declare-fun lt!2569638 () C!36878)

(declare-fun derivationStepZipperUp!2292 (Context!14508 C!36878) (Set Context!14508))

(assert (=> b!7158216 (= res!2918683 (not (= (derivationStepZipperUp!2292 lt!2569639 lt!2569638) (as set.empty (Set Context!14508)))))))

(declare-fun lt!2569640 () (Set Context!14508))

(declare-fun derivationStepZipper!3187 ((Set Context!14508) C!36878) (Set Context!14508))

(assert (=> b!7158216 (= lt!2569640 (derivationStepZipper!3187 z!3530 lt!2569638))))

(declare-datatypes ((List!69648 0))(
  ( (Nil!69524) (Cons!69524 (h!75972 C!36878) (t!383665 List!69648)) )
))
(declare-fun s!7967 () List!69648)

(declare-fun head!14584 (List!69648) C!36878)

(assert (=> b!7158216 (= lt!2569638 (head!14584 s!7967))))

(declare-fun setElem!52776 () Context!14508)

(declare-fun e!4300352 () Bool)

(declare-fun tp!1979528 () Bool)

(declare-fun setNonEmpty!52776 () Bool)

(declare-fun inv!88778 (Context!14508) Bool)

(assert (=> setNonEmpty!52776 (= setRes!52776 (and tp!1979528 (inv!88778 setElem!52776) e!4300352))))

(declare-fun setRest!52776 () (Set Context!14508))

(assert (=> setNonEmpty!52776 (= z!3530 (set.union (set.insert setElem!52776 (as set.empty (Set Context!14508))) setRest!52776))))

(declare-fun b!7158217 () Bool)

(assert (=> b!7158217 (= e!4300354 (not (= s!7967 Nil!69524)))))

(declare-datatypes ((Unit!163315 0))(
  ( (Unit!163316) )
))
(declare-fun lt!2569637 () Unit!163315)

(declare-fun e!4300357 () Unit!163315)

(assert (=> b!7158217 (= lt!2569637 e!4300357)))

(declare-fun c!1333974 () Bool)

(assert (=> b!7158217 (= c!1333974 (not (= lt!2569640 (as set.empty (Set Context!14508)))))))

(declare-fun b!7158218 () Bool)

(declare-fun Unit!163317 () Unit!163315)

(assert (=> b!7158218 (= e!4300357 Unit!163317)))

(declare-fun b!7158219 () Bool)

(assert (=> b!7158219 (= e!4300355 (not e!4300356))))

(declare-fun res!2918680 () Bool)

(assert (=> b!7158219 (=> res!2918680 e!4300356)))

(declare-fun isEmpty!40154 (List!69648) Bool)

(assert (=> b!7158219 (= res!2918680 (isEmpty!40154 s!7967))))

(declare-fun nullableContext!175 (Context!14508) Bool)

(assert (=> b!7158219 (nullableContext!175 lt!2569639)))

(assert (=> b!7158219 (= lt!2569639 (Context!14509 (Cons!69522 EmptyExpr!18302 Nil!69522)))))

(declare-fun b!7158220 () Bool)

(declare-fun tp!1979531 () Bool)

(assert (=> b!7158220 (= e!4300352 tp!1979531)))

(declare-fun b!7158221 () Bool)

(declare-fun tp_is_empty!46177 () Bool)

(declare-fun tp!1979530 () Bool)

(assert (=> b!7158221 (= e!4300353 (and tp_is_empty!46177 tp!1979530))))

(declare-fun Unit!163318 () Unit!163315)

(assert (=> b!7158222 (= e!4300357 Unit!163318)))

(declare-fun empty!2899 () Context!14508)

(declare-fun e!4300358 () Bool)

(assert (=> b!7158222 (and (inv!88778 empty!2899) e!4300358)))

(assert (=> b!7158222 true))

(declare-fun res!2918682 () Bool)

(declare-fun lambda!436667 () Int)

(declare-fun flatMapPost!45 ((Set Context!14508) Int Context!14508) Context!14508)

(declare-fun head!14585 (List!69647) Context!14508)

(assert (=> b!7158222 (= res!2918682 (= (flatMapPost!45 z!3530 lambda!436667 (head!14585 (toList!11245 lt!2569640))) empty!2899))))

(declare-fun e!4300351 () Bool)

(assert (=> b!7158222 (=> (not res!2918682) (not e!4300351))))

(assert (=> b!7158222 e!4300351))

(declare-fun b!7158223 () Bool)

(declare-fun tp!1979529 () Bool)

(assert (=> b!7158223 (= e!4300358 tp!1979529)))

(declare-fun b!7158224 () Bool)

(declare-fun res!2918684 () Bool)

(assert (=> b!7158224 (=> (not res!2918684) (not e!4300355))))

(declare-fun focus!377 (Regex!18302) (Set Context!14508))

(assert (=> b!7158224 (= res!2918684 (= z!3530 (focus!377 EmptyExpr!18302)))))

(declare-fun b!7158225 () Bool)

(assert (=> b!7158225 (= e!4300351 false)))

(assert (= (and start!697906 res!2918681) b!7158224))

(assert (= (and b!7158224 res!2918684) b!7158219))

(assert (= (and b!7158219 (not res!2918680)) b!7158216))

(assert (= (and b!7158216 (not res!2918683)) b!7158217))

(assert (= (and b!7158217 c!1333974) b!7158222))

(assert (= (and b!7158217 (not c!1333974)) b!7158218))

(assert (= b!7158222 b!7158223))

(assert (= (and b!7158222 res!2918682) b!7158225))

(assert (= (and start!697906 condSetEmpty!52776) setIsEmpty!52776))

(assert (= (and start!697906 (not condSetEmpty!52776)) setNonEmpty!52776))

(assert (= setNonEmpty!52776 b!7158220))

(assert (= (and start!697906 (is-Cons!69524 s!7967)) b!7158221))

(declare-fun m!7864524 () Bool)

(assert (=> b!7158224 m!7864524))

(declare-fun m!7864526 () Bool)

(assert (=> b!7158216 m!7864526))

(declare-fun m!7864528 () Bool)

(assert (=> b!7158216 m!7864528))

(declare-fun m!7864530 () Bool)

(assert (=> b!7158216 m!7864530))

(declare-fun m!7864532 () Bool)

(assert (=> start!697906 m!7864532))

(assert (=> start!697906 m!7864532))

(declare-fun m!7864534 () Bool)

(assert (=> start!697906 m!7864534))

(declare-fun m!7864536 () Bool)

(assert (=> setNonEmpty!52776 m!7864536))

(declare-fun m!7864538 () Bool)

(assert (=> b!7158222 m!7864538))

(declare-fun m!7864540 () Bool)

(assert (=> b!7158222 m!7864540))

(assert (=> b!7158222 m!7864540))

(declare-fun m!7864542 () Bool)

(assert (=> b!7158222 m!7864542))

(assert (=> b!7158222 m!7864542))

(declare-fun m!7864544 () Bool)

(assert (=> b!7158222 m!7864544))

(declare-fun m!7864546 () Bool)

(assert (=> b!7158219 m!7864546))

(declare-fun m!7864548 () Bool)

(assert (=> b!7158219 m!7864548))

(push 1)

(assert (not setNonEmpty!52776))

(assert (not b!7158219))

(assert (not b!7158221))

(assert (not b!7158222))

(assert tp_is_empty!46177)

(assert (not b!7158223))

(assert (not b!7158220))

(assert (not b!7158216))

(assert (not b!7158224))

(assert (not start!697906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2230152 () Bool)

(declare-fun lt!2569655 () Regex!18302)

(declare-fun validRegex!9434 (Regex!18302) Bool)

(assert (=> d!2230152 (validRegex!9434 lt!2569655)))

(declare-fun generalisedUnion!2737 (List!69646) Regex!18302)

(declare-fun unfocusZipperList!2293 (List!69647) List!69646)

(assert (=> d!2230152 (= lt!2569655 (generalisedUnion!2737 (unfocusZipperList!2293 (toList!11245 z!3530))))))

(assert (=> d!2230152 (= (unfocusZipper!2562 (toList!11245 z!3530)) lt!2569655)))

(declare-fun bs!1890175 () Bool)

(assert (= bs!1890175 d!2230152))

(declare-fun m!7864576 () Bool)

(assert (=> bs!1890175 m!7864576))

(assert (=> bs!1890175 m!7864532))

(declare-fun m!7864578 () Bool)

(assert (=> bs!1890175 m!7864578))

(assert (=> bs!1890175 m!7864578))

(declare-fun m!7864580 () Bool)

(assert (=> bs!1890175 m!7864580))

(assert (=> start!697906 d!2230152))

(declare-fun d!2230154 () Bool)

(declare-fun e!4300385 () Bool)

(assert (=> d!2230154 e!4300385))

(declare-fun res!2918702 () Bool)

(assert (=> d!2230154 (=> (not res!2918702) (not e!4300385))))

(declare-fun lt!2569658 () List!69647)

(declare-fun noDuplicate!2854 (List!69647) Bool)

(assert (=> d!2230154 (= res!2918702 (noDuplicate!2854 lt!2569658))))

(declare-fun choose!55320 ((Set Context!14508)) List!69647)

(assert (=> d!2230154 (= lt!2569658 (choose!55320 z!3530))))

(assert (=> d!2230154 (= (toList!11245 z!3530) lt!2569658)))

(declare-fun b!7158262 () Bool)

(declare-fun content!14283 (List!69647) (Set Context!14508))

(assert (=> b!7158262 (= e!4300385 (= (content!14283 lt!2569658) z!3530))))

(assert (= (and d!2230154 res!2918702) b!7158262))

(declare-fun m!7864582 () Bool)

(assert (=> d!2230154 m!7864582))

(declare-fun m!7864584 () Bool)

(assert (=> d!2230154 m!7864584))

(declare-fun m!7864586 () Bool)

(assert (=> b!7158262 m!7864586))

(assert (=> start!697906 d!2230154))

(declare-fun e!4300394 () (Set Context!14508))

(declare-fun call!651803 () (Set Context!14508))

(declare-fun b!7158273 () Bool)

(assert (=> b!7158273 (= e!4300394 (set.union call!651803 (derivationStepZipperUp!2292 (Context!14509 (t!383663 (exprs!7754 lt!2569639))) lt!2569638)))))

(declare-fun b!7158274 () Bool)

(declare-fun e!4300393 () (Set Context!14508))

(assert (=> b!7158274 (= e!4300393 (as set.empty (Set Context!14508)))))

(declare-fun b!7158275 () Bool)

(assert (=> b!7158275 (= e!4300394 e!4300393)))

(declare-fun c!1333984 () Bool)

(assert (=> b!7158275 (= c!1333984 (is-Cons!69522 (exprs!7754 lt!2569639)))))

(declare-fun d!2230156 () Bool)

(declare-fun c!1333985 () Bool)

(declare-fun e!4300392 () Bool)

(assert (=> d!2230156 (= c!1333985 e!4300392)))

(declare-fun res!2918705 () Bool)

(assert (=> d!2230156 (=> (not res!2918705) (not e!4300392))))

(assert (=> d!2230156 (= res!2918705 (is-Cons!69522 (exprs!7754 lt!2569639)))))

(assert (=> d!2230156 (= (derivationStepZipperUp!2292 lt!2569639 lt!2569638) e!4300394)))

(declare-fun b!7158276 () Bool)

(assert (=> b!7158276 (= e!4300393 call!651803)))

(declare-fun bm!651798 () Bool)

(declare-fun derivationStepZipperDown!2489 (Regex!18302 Context!14508 C!36878) (Set Context!14508))

(assert (=> bm!651798 (= call!651803 (derivationStepZipperDown!2489 (h!75970 (exprs!7754 lt!2569639)) (Context!14509 (t!383663 (exprs!7754 lt!2569639))) lt!2569638))))

(declare-fun b!7158277 () Bool)

(declare-fun nullable!7747 (Regex!18302) Bool)

(assert (=> b!7158277 (= e!4300392 (nullable!7747 (h!75970 (exprs!7754 lt!2569639))))))

(assert (= (and d!2230156 res!2918705) b!7158277))

(assert (= (and d!2230156 c!1333985) b!7158273))

(assert (= (and d!2230156 (not c!1333985)) b!7158275))

(assert (= (and b!7158275 c!1333984) b!7158276))

(assert (= (and b!7158275 (not c!1333984)) b!7158274))

(assert (= (or b!7158273 b!7158276) bm!651798))

(declare-fun m!7864588 () Bool)

(assert (=> b!7158273 m!7864588))

(declare-fun m!7864590 () Bool)

(assert (=> bm!651798 m!7864590))

(declare-fun m!7864592 () Bool)

(assert (=> b!7158277 m!7864592))

(assert (=> b!7158216 d!2230156))

(declare-fun bs!1890176 () Bool)

(declare-fun d!2230158 () Bool)

(assert (= bs!1890176 (and d!2230158 b!7158222)))

(declare-fun lambda!436673 () Int)

(assert (=> bs!1890176 (= lambda!436673 lambda!436667)))

(assert (=> d!2230158 true))

(declare-fun flatMap!2644 ((Set Context!14508) Int) (Set Context!14508))

(assert (=> d!2230158 (= (derivationStepZipper!3187 z!3530 lt!2569638) (flatMap!2644 z!3530 lambda!436673))))

(declare-fun bs!1890177 () Bool)

(assert (= bs!1890177 d!2230158))

(declare-fun m!7864594 () Bool)

(assert (=> bs!1890177 m!7864594))

(assert (=> b!7158216 d!2230158))

(declare-fun d!2230162 () Bool)

(assert (=> d!2230162 (= (head!14584 s!7967) (h!75972 s!7967))))

(assert (=> b!7158216 d!2230162))

(declare-fun d!2230164 () Bool)

(declare-fun lambda!436676 () Int)

(declare-fun forall!17137 (List!69646 Int) Bool)

(assert (=> d!2230164 (= (inv!88778 setElem!52776) (forall!17137 (exprs!7754 setElem!52776) lambda!436676))))

(declare-fun bs!1890178 () Bool)

(assert (= bs!1890178 d!2230164))

(declare-fun m!7864596 () Bool)

(assert (=> bs!1890178 m!7864596))

(assert (=> setNonEmpty!52776 d!2230164))

(declare-fun bs!1890179 () Bool)

(declare-fun d!2230166 () Bool)

(assert (= bs!1890179 (and d!2230166 d!2230164)))

(declare-fun lambda!436677 () Int)

(assert (=> bs!1890179 (= lambda!436677 lambda!436676)))

(assert (=> d!2230166 (= (inv!88778 empty!2899) (forall!17137 (exprs!7754 empty!2899) lambda!436677))))

(declare-fun bs!1890180 () Bool)

(assert (= bs!1890180 d!2230166))

(declare-fun m!7864598 () Bool)

(assert (=> bs!1890180 m!7864598))

(assert (=> b!7158222 d!2230166))

(declare-fun d!2230168 () Bool)

(assert (=> d!2230168 true))

(assert (=> d!2230168 true))

(declare-fun order!28641 () Int)

(declare-fun order!28639 () Int)

(declare-fun lambda!436680 () Int)

(declare-fun dynLambda!28317 (Int Int) Int)

(declare-fun dynLambda!28318 (Int Int) Int)

(assert (=> d!2230168 (< (dynLambda!28317 order!28639 lambda!436667) (dynLambda!28318 order!28641 lambda!436680))))

(declare-fun exists!4054 ((Set Context!14508) Int) Bool)

(assert (=> d!2230168 (= (set.member (head!14585 (toList!11245 lt!2569640)) (flatMap!2644 z!3530 lambda!436667)) (exists!4054 z!3530 lambda!436680))))

(declare-fun lt!2569661 () Context!14508)

(declare-fun choose!55321 ((Set Context!14508) Int Context!14508) Context!14508)

(assert (=> d!2230168 (= lt!2569661 (choose!55321 z!3530 lambda!436667 (head!14585 (toList!11245 lt!2569640))))))

(assert (=> d!2230168 (= (flatMapPost!45 z!3530 lambda!436667 (head!14585 (toList!11245 lt!2569640))) lt!2569661)))

(declare-fun bs!1890181 () Bool)

(assert (= bs!1890181 d!2230168))

(declare-fun m!7864600 () Bool)

(assert (=> bs!1890181 m!7864600))

(assert (=> bs!1890181 m!7864542))

(declare-fun m!7864602 () Bool)

(assert (=> bs!1890181 m!7864602))

(declare-fun m!7864604 () Bool)

(assert (=> bs!1890181 m!7864604))

(assert (=> bs!1890181 m!7864542))

(declare-fun m!7864606 () Bool)

(assert (=> bs!1890181 m!7864606))

(assert (=> b!7158222 d!2230168))

(declare-fun d!2230170 () Bool)

(assert (=> d!2230170 (= (head!14585 (toList!11245 lt!2569640)) (h!75971 (toList!11245 lt!2569640)))))

(assert (=> b!7158222 d!2230170))

(declare-fun d!2230172 () Bool)

(declare-fun e!4300401 () Bool)

(assert (=> d!2230172 e!4300401))

(declare-fun res!2918708 () Bool)

(assert (=> d!2230172 (=> (not res!2918708) (not e!4300401))))

(declare-fun lt!2569662 () List!69647)

(assert (=> d!2230172 (= res!2918708 (noDuplicate!2854 lt!2569662))))

(assert (=> d!2230172 (= lt!2569662 (choose!55320 lt!2569640))))

(assert (=> d!2230172 (= (toList!11245 lt!2569640) lt!2569662)))

(declare-fun b!7158293 () Bool)

(assert (=> b!7158293 (= e!4300401 (= (content!14283 lt!2569662) lt!2569640))))

(assert (= (and d!2230172 res!2918708) b!7158293))

(declare-fun m!7864608 () Bool)

(assert (=> d!2230172 m!7864608))

(declare-fun m!7864610 () Bool)

(assert (=> d!2230172 m!7864610))

(declare-fun m!7864612 () Bool)

(assert (=> b!7158293 m!7864612))

(assert (=> b!7158222 d!2230172))

(declare-fun d!2230174 () Bool)

(assert (=> d!2230174 (= (isEmpty!40154 s!7967) (is-Nil!69524 s!7967))))

(assert (=> b!7158219 d!2230174))

(declare-fun bs!1890182 () Bool)

(declare-fun d!2230176 () Bool)

(assert (= bs!1890182 (and d!2230176 d!2230164)))

(declare-fun lambda!436683 () Int)

(assert (=> bs!1890182 (not (= lambda!436683 lambda!436676))))

(declare-fun bs!1890183 () Bool)

(assert (= bs!1890183 (and d!2230176 d!2230166)))

(assert (=> bs!1890183 (not (= lambda!436683 lambda!436677))))

(assert (=> d!2230176 (= (nullableContext!175 lt!2569639) (forall!17137 (exprs!7754 lt!2569639) lambda!436683))))

(declare-fun bs!1890184 () Bool)

(assert (= bs!1890184 d!2230176))

(declare-fun m!7864614 () Bool)

(assert (=> bs!1890184 m!7864614))

(assert (=> b!7158219 d!2230176))

(declare-fun d!2230178 () Bool)

(declare-fun e!4300407 () Bool)

(assert (=> d!2230178 e!4300407))

(declare-fun res!2918713 () Bool)

(assert (=> d!2230178 (=> (not res!2918713) (not e!4300407))))

(assert (=> d!2230178 (= res!2918713 (validRegex!9434 EmptyExpr!18302))))

(assert (=> d!2230178 (= (focus!377 EmptyExpr!18302) (set.insert (Context!14509 (Cons!69522 EmptyExpr!18302 Nil!69522)) (as set.empty (Set Context!14508))))))

(declare-fun b!7158301 () Bool)

(assert (=> b!7158301 (= e!4300407 (= (unfocusZipper!2562 (toList!11245 (set.insert (Context!14509 (Cons!69522 EmptyExpr!18302 Nil!69522)) (as set.empty (Set Context!14508))))) EmptyExpr!18302))))

(assert (= (and d!2230178 res!2918713) b!7158301))

(declare-fun m!7864622 () Bool)

(assert (=> d!2230178 m!7864622))

(declare-fun m!7864624 () Bool)

(assert (=> d!2230178 m!7864624))

(assert (=> b!7158301 m!7864624))

(assert (=> b!7158301 m!7864624))

(declare-fun m!7864626 () Bool)

(assert (=> b!7158301 m!7864626))

(assert (=> b!7158301 m!7864626))

(declare-fun m!7864628 () Bool)

(assert (=> b!7158301 m!7864628))

(assert (=> b!7158224 d!2230178))

(declare-fun b!7158306 () Bool)

(declare-fun e!4300410 () Bool)

(declare-fun tp!1979548 () Bool)

(declare-fun tp!1979549 () Bool)

(assert (=> b!7158306 (= e!4300410 (and tp!1979548 tp!1979549))))

(assert (=> b!7158220 (= tp!1979531 e!4300410)))

(assert (= (and b!7158220 (is-Cons!69522 (exprs!7754 setElem!52776))) b!7158306))

(declare-fun b!7158311 () Bool)

(declare-fun e!4300413 () Bool)

(declare-fun tp!1979552 () Bool)

(assert (=> b!7158311 (= e!4300413 (and tp_is_empty!46177 tp!1979552))))

(assert (=> b!7158221 (= tp!1979530 e!4300413)))

(assert (= (and b!7158221 (is-Cons!69524 (t!383665 s!7967))) b!7158311))

(declare-fun condSetEmpty!52782 () Bool)

(assert (=> setNonEmpty!52776 (= condSetEmpty!52782 (= setRest!52776 (as set.empty (Set Context!14508))))))

(declare-fun setRes!52782 () Bool)

(assert (=> setNonEmpty!52776 (= tp!1979528 setRes!52782)))

(declare-fun setIsEmpty!52782 () Bool)

(assert (=> setIsEmpty!52782 setRes!52782))

(declare-fun tp!1979558 () Bool)

(declare-fun setNonEmpty!52782 () Bool)

(declare-fun e!4300416 () Bool)

(declare-fun setElem!52782 () Context!14508)

(assert (=> setNonEmpty!52782 (= setRes!52782 (and tp!1979558 (inv!88778 setElem!52782) e!4300416))))

(declare-fun setRest!52782 () (Set Context!14508))

(assert (=> setNonEmpty!52782 (= setRest!52776 (set.union (set.insert setElem!52782 (as set.empty (Set Context!14508))) setRest!52782))))

(declare-fun b!7158316 () Bool)

(declare-fun tp!1979557 () Bool)

(assert (=> b!7158316 (= e!4300416 tp!1979557)))

(assert (= (and setNonEmpty!52776 condSetEmpty!52782) setIsEmpty!52782))

(assert (= (and setNonEmpty!52776 (not condSetEmpty!52782)) setNonEmpty!52782))

(assert (= setNonEmpty!52782 b!7158316))

(declare-fun m!7864630 () Bool)

(assert (=> setNonEmpty!52782 m!7864630))

(declare-fun b!7158317 () Bool)

(declare-fun e!4300417 () Bool)

(declare-fun tp!1979559 () Bool)

(declare-fun tp!1979560 () Bool)

(assert (=> b!7158317 (= e!4300417 (and tp!1979559 tp!1979560))))

(assert (=> b!7158223 (= tp!1979529 e!4300417)))

(assert (= (and b!7158223 (is-Cons!69522 (exprs!7754 empty!2899))) b!7158317))

(push 1)

(assert (not bm!651798))

(assert (not d!2230164))

(assert (not b!7158293))

(assert (not b!7158317))

(assert (not setNonEmpty!52782))

(assert (not b!7158311))

(assert (not d!2230166))

(assert (not b!7158301))

(assert (not d!2230168))

(assert (not d!2230152))

(assert (not b!7158316))

(assert (not b!7158306))

(assert (not d!2230154))

(assert (not d!2230176))

(assert (not b!7158273))

(assert (not b!7158277))

(assert (not d!2230158))

(assert (not d!2230178))

(assert (not b!7158262))

(assert tp_is_empty!46177)

(assert (not d!2230172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

