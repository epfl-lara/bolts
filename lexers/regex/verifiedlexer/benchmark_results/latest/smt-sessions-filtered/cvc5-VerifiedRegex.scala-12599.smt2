; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697958 () Bool)

(assert start!697958)

(declare-fun b!7158423 () Bool)

(declare-fun res!2918761 () Bool)

(declare-fun e!4300489 () Bool)

(assert (=> b!7158423 (=> (not res!2918761) (not e!4300489))))

(declare-datatypes ((C!36886 0))(
  ( (C!36887 (val!28391 Int)) )
))
(declare-datatypes ((Regex!18306 0))(
  ( (ElementMatch!18306 (c!1334006 C!36886)) (Concat!27151 (regOne!37124 Regex!18306) (regTwo!37124 Regex!18306)) (EmptyExpr!18306) (Star!18306 (reg!18635 Regex!18306)) (EmptyLang!18306) (Union!18306 (regOne!37125 Regex!18306) (regTwo!37125 Regex!18306)) )
))
(declare-datatypes ((List!69658 0))(
  ( (Nil!69534) (Cons!69534 (h!75982 Regex!18306) (t!383675 List!69658)) )
))
(declare-datatypes ((Context!14516 0))(
  ( (Context!14517 (exprs!7758 List!69658)) )
))
(declare-fun z!3530 () (Set Context!14516))

(declare-fun focus!381 (Regex!18306) (Set Context!14516))

(assert (=> b!7158423 (= res!2918761 (not (= z!3530 (focus!381 EmptyExpr!18306))))))

(declare-fun b!7158424 () Bool)

(declare-fun e!4300490 () Bool)

(declare-fun tp_is_empty!46185 () Bool)

(declare-fun tp!1979609 () Bool)

(assert (=> b!7158424 (= e!4300490 (and tp_is_empty!46185 tp!1979609))))

(declare-fun b!7158425 () Bool)

(declare-datatypes ((List!69659 0))(
  ( (Nil!69535) (Cons!69535 (h!75983 C!36886) (t!383676 List!69659)) )
))
(declare-fun s!7967 () List!69659)

(assert (=> b!7158425 (= e!4300489 (= s!7967 Nil!69535))))

(declare-fun setIsEmpty!52794 () Bool)

(declare-fun setRes!52794 () Bool)

(assert (=> setIsEmpty!52794 setRes!52794))

(declare-fun b!7158426 () Bool)

(declare-fun res!2918763 () Bool)

(assert (=> b!7158426 (=> (not res!2918763) (not e!4300489))))

(assert (=> b!7158426 (= res!2918763 (= z!3530 (set.singleton (Context!14517 Nil!69534))))))

(declare-fun b!7158422 () Bool)

(declare-fun e!4300491 () Bool)

(declare-fun tp!1979610 () Bool)

(assert (=> b!7158422 (= e!4300491 tp!1979610)))

(declare-fun res!2918760 () Bool)

(assert (=> start!697958 (=> (not res!2918760) (not e!4300489))))

(declare-datatypes ((List!69660 0))(
  ( (Nil!69536) (Cons!69536 (h!75984 Context!14516) (t!383677 List!69660)) )
))
(declare-fun unfocusZipper!2566 (List!69660) Regex!18306)

(declare-fun toList!11249 ((Set Context!14516)) List!69660)

(assert (=> start!697958 (= res!2918760 (= (unfocusZipper!2566 (toList!11249 z!3530)) EmptyExpr!18306))))

(assert (=> start!697958 e!4300489))

(declare-fun condSetEmpty!52794 () Bool)

(assert (=> start!697958 (= condSetEmpty!52794 (= z!3530 (as set.empty (Set Context!14516))))))

(assert (=> start!697958 setRes!52794))

(assert (=> start!697958 e!4300490))

(declare-fun b!7158427 () Bool)

(declare-fun res!2918762 () Bool)

(assert (=> b!7158427 (=> (not res!2918762) (not e!4300489))))

(declare-fun isEmpty!40158 (List!69659) Bool)

(assert (=> b!7158427 (= res!2918762 (not (isEmpty!40158 s!7967)))))

(declare-fun setElem!52794 () Context!14516)

(declare-fun setNonEmpty!52794 () Bool)

(declare-fun tp!1979608 () Bool)

(declare-fun inv!88788 (Context!14516) Bool)

(assert (=> setNonEmpty!52794 (= setRes!52794 (and tp!1979608 (inv!88788 setElem!52794) e!4300491))))

(declare-fun setRest!52794 () (Set Context!14516))

(assert (=> setNonEmpty!52794 (= z!3530 (set.union (set.insert setElem!52794 (as set.empty (Set Context!14516))) setRest!52794))))

(assert (= (and start!697958 res!2918760) b!7158423))

(assert (= (and b!7158423 res!2918761) b!7158426))

(assert (= (and b!7158426 res!2918763) b!7158427))

(assert (= (and b!7158427 res!2918762) b!7158425))

(assert (= (and start!697958 condSetEmpty!52794) setIsEmpty!52794))

(assert (= (and start!697958 (not condSetEmpty!52794)) setNonEmpty!52794))

(assert (= setNonEmpty!52794 b!7158422))

(assert (= (and start!697958 (is-Cons!69535 s!7967)) b!7158424))

(declare-fun m!7864716 () Bool)

(assert (=> b!7158423 m!7864716))

(declare-fun m!7864718 () Bool)

(assert (=> start!697958 m!7864718))

(assert (=> start!697958 m!7864718))

(declare-fun m!7864720 () Bool)

(assert (=> start!697958 m!7864720))

(declare-fun m!7864722 () Bool)

(assert (=> b!7158427 m!7864722))

(declare-fun m!7864724 () Bool)

(assert (=> setNonEmpty!52794 m!7864724))

(push 1)

(assert (not start!697958))

(assert (not b!7158423))

(assert (not b!7158424))

(assert (not b!7158422))

(assert (not b!7158427))

(assert tp_is_empty!46185)

(assert (not setNonEmpty!52794))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2230206 () Bool)

(declare-fun e!4300503 () Bool)

(assert (=> d!2230206 e!4300503))

(declare-fun res!2918780 () Bool)

(assert (=> d!2230206 (=> (not res!2918780) (not e!4300503))))

(declare-fun validRegex!9435 (Regex!18306) Bool)

(assert (=> d!2230206 (= res!2918780 (validRegex!9435 EmptyExpr!18306))))

(assert (=> d!2230206 (= (focus!381 EmptyExpr!18306) (set.insert (Context!14517 (Cons!69534 EmptyExpr!18306 Nil!69534)) (as set.empty (Set Context!14516))))))

(declare-fun b!7158448 () Bool)

(assert (=> b!7158448 (= e!4300503 (= (unfocusZipper!2566 (toList!11249 (set.insert (Context!14517 (Cons!69534 EmptyExpr!18306 Nil!69534)) (as set.empty (Set Context!14516))))) EmptyExpr!18306))))

(assert (= (and d!2230206 res!2918780) b!7158448))

(declare-fun m!7864738 () Bool)

(assert (=> d!2230206 m!7864738))

(declare-fun m!7864740 () Bool)

(assert (=> d!2230206 m!7864740))

(assert (=> b!7158448 m!7864740))

(assert (=> b!7158448 m!7864740))

(declare-fun m!7864742 () Bool)

(assert (=> b!7158448 m!7864742))

(assert (=> b!7158448 m!7864742))

(declare-fun m!7864744 () Bool)

(assert (=> b!7158448 m!7864744))

(assert (=> b!7158423 d!2230206))

(declare-fun d!2230210 () Bool)

(assert (=> d!2230210 (= (isEmpty!40158 s!7967) (is-Nil!69535 s!7967))))

(assert (=> b!7158427 d!2230210))

(declare-fun d!2230212 () Bool)

(declare-fun lt!2569699 () Regex!18306)

(assert (=> d!2230212 (validRegex!9435 lt!2569699)))

(declare-fun generalisedUnion!2738 (List!69658) Regex!18306)

(declare-fun unfocusZipperList!2294 (List!69660) List!69658)

(assert (=> d!2230212 (= lt!2569699 (generalisedUnion!2738 (unfocusZipperList!2294 (toList!11249 z!3530))))))

(assert (=> d!2230212 (= (unfocusZipper!2566 (toList!11249 z!3530)) lt!2569699)))

(declare-fun bs!1890197 () Bool)

(assert (= bs!1890197 d!2230212))

(declare-fun m!7864746 () Bool)

(assert (=> bs!1890197 m!7864746))

(assert (=> bs!1890197 m!7864718))

(declare-fun m!7864748 () Bool)

(assert (=> bs!1890197 m!7864748))

(assert (=> bs!1890197 m!7864748))

(declare-fun m!7864750 () Bool)

(assert (=> bs!1890197 m!7864750))

(assert (=> start!697958 d!2230212))

(declare-fun d!2230214 () Bool)

(declare-fun e!4300506 () Bool)

(assert (=> d!2230214 e!4300506))

(declare-fun res!2918783 () Bool)

(assert (=> d!2230214 (=> (not res!2918783) (not e!4300506))))

(declare-fun lt!2569702 () List!69660)

(declare-fun noDuplicate!2855 (List!69660) Bool)

(assert (=> d!2230214 (= res!2918783 (noDuplicate!2855 lt!2569702))))

(declare-fun choose!55322 ((Set Context!14516)) List!69660)

(assert (=> d!2230214 (= lt!2569702 (choose!55322 z!3530))))

(assert (=> d!2230214 (= (toList!11249 z!3530) lt!2569702)))

(declare-fun b!7158451 () Bool)

(declare-fun content!14284 (List!69660) (Set Context!14516))

(assert (=> b!7158451 (= e!4300506 (= (content!14284 lt!2569702) z!3530))))

(assert (= (and d!2230214 res!2918783) b!7158451))

(declare-fun m!7864752 () Bool)

(assert (=> d!2230214 m!7864752))

(declare-fun m!7864754 () Bool)

(assert (=> d!2230214 m!7864754))

(declare-fun m!7864756 () Bool)

(assert (=> b!7158451 m!7864756))

(assert (=> start!697958 d!2230214))

(declare-fun d!2230216 () Bool)

(declare-fun lambda!436707 () Int)

(declare-fun forall!17138 (List!69658 Int) Bool)

(assert (=> d!2230216 (= (inv!88788 setElem!52794) (forall!17138 (exprs!7758 setElem!52794) lambda!436707))))

(declare-fun bs!1890198 () Bool)

(assert (= bs!1890198 d!2230216))

(declare-fun m!7864758 () Bool)

(assert (=> bs!1890198 m!7864758))

(assert (=> setNonEmpty!52794 d!2230216))

(declare-fun b!7158458 () Bool)

(declare-fun e!4300511 () Bool)

(declare-fun tp!1979624 () Bool)

(declare-fun tp!1979625 () Bool)

(assert (=> b!7158458 (= e!4300511 (and tp!1979624 tp!1979625))))

(assert (=> b!7158422 (= tp!1979610 e!4300511)))

(assert (= (and b!7158422 (is-Cons!69534 (exprs!7758 setElem!52794))) b!7158458))

(declare-fun b!7158463 () Bool)

(declare-fun e!4300514 () Bool)

(declare-fun tp!1979628 () Bool)

(assert (=> b!7158463 (= e!4300514 (and tp_is_empty!46185 tp!1979628))))

(assert (=> b!7158424 (= tp!1979609 e!4300514)))

(assert (= (and b!7158424 (is-Cons!69535 (t!383676 s!7967))) b!7158463))

(declare-fun condSetEmpty!52800 () Bool)

(assert (=> setNonEmpty!52794 (= condSetEmpty!52800 (= setRest!52794 (as set.empty (Set Context!14516))))))

(declare-fun setRes!52800 () Bool)

(assert (=> setNonEmpty!52794 (= tp!1979608 setRes!52800)))

(declare-fun setIsEmpty!52800 () Bool)

(assert (=> setIsEmpty!52800 setRes!52800))

(declare-fun setNonEmpty!52800 () Bool)

(declare-fun setElem!52800 () Context!14516)

(declare-fun tp!1979633 () Bool)

(declare-fun e!4300518 () Bool)

(assert (=> setNonEmpty!52800 (= setRes!52800 (and tp!1979633 (inv!88788 setElem!52800) e!4300518))))

(declare-fun setRest!52800 () (Set Context!14516))

(assert (=> setNonEmpty!52800 (= setRest!52794 (set.union (set.insert setElem!52800 (as set.empty (Set Context!14516))) setRest!52800))))

(declare-fun b!7158469 () Bool)

(declare-fun tp!1979634 () Bool)

(assert (=> b!7158469 (= e!4300518 tp!1979634)))

(assert (= (and setNonEmpty!52794 condSetEmpty!52800) setIsEmpty!52800))

(assert (= (and setNonEmpty!52794 (not condSetEmpty!52800)) setNonEmpty!52800))

(assert (= setNonEmpty!52800 b!7158469))

(declare-fun m!7864764 () Bool)

(assert (=> setNonEmpty!52800 m!7864764))

(push 1)

(assert (not b!7158463))

(assert (not setNonEmpty!52800))

(assert tp_is_empty!46185)

(assert (not b!7158469))

(assert (not b!7158458))

(assert (not b!7158451))

(assert (not b!7158448))

(assert (not d!2230216))

(assert (not d!2230214))

(assert (not d!2230206))

(assert (not d!2230212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

