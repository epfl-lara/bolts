; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542758 () Bool)

(assert start!542758)

(declare-fun b!5131942 () Bool)

(assert (=> b!5131942 true))

(declare-fun bs!1198270 () Bool)

(declare-fun b!5131949 () Bool)

(declare-fun b!5131950 () Bool)

(assert (= bs!1198270 (and b!5131949 b!5131950)))

(declare-fun lambda!254527 () Int)

(declare-fun lambda!254526 () Int)

(assert (=> bs!1198270 (not (= lambda!254527 lambda!254526))))

(declare-fun e!3200833 () Bool)

(declare-fun e!3200836 () Bool)

(assert (=> b!5131942 (= e!3200833 e!3200836)))

(declare-fun res!2185690 () Bool)

(assert (=> b!5131942 (=> (not res!2185690) (not e!3200836))))

(declare-fun lambda!254525 () Int)

(declare-datatypes ((C!28970 0))(
  ( (C!28971 (val!24137 Int)) )
))
(declare-datatypes ((Regex!14352 0))(
  ( (ElementMatch!14352 (c!882989 C!28970)) (Concat!23197 (regOne!29216 Regex!14352) (regTwo!29216 Regex!14352)) (EmptyExpr!14352) (Star!14352 (reg!14681 Regex!14352)) (EmptyLang!14352) (Union!14352 (regOne!29217 Regex!14352) (regTwo!29217 Regex!14352)) )
))
(declare-datatypes ((List!59639 0))(
  ( (Nil!59515) (Cons!59515 (h!65963 Regex!14352) (t!372666 List!59639)) )
))
(declare-datatypes ((Context!7472 0))(
  ( (Context!7473 (exprs!4236 List!59639)) )
))
(declare-fun z!1054 () (Set Context!7472))

(declare-fun lt!2117400 () (Set Context!7472))

(declare-fun flatMap!403 ((Set Context!7472) Int) (Set Context!7472))

(assert (=> b!5131942 (= res!2185690 (= lt!2117400 (flatMap!403 z!1054 lambda!254525)))))

(declare-fun a!1233 () C!28970)

(declare-fun derivationStepZipper!907 ((Set Context!7472) C!28970) (Set Context!7472))

(assert (=> b!5131942 (= lt!2117400 (derivationStepZipper!907 z!1054 a!1233))))

(declare-fun b!5131943 () Bool)

(declare-fun e!3200835 () Bool)

(declare-fun lt!2117404 () Context!7472)

(declare-fun lostCause!1295 (Context!7472) Bool)

(assert (=> b!5131943 (= e!3200835 (not (lostCause!1295 lt!2117404)))))

(declare-fun b!5131944 () Bool)

(declare-fun res!2185695 () Bool)

(declare-fun e!3200831 () Bool)

(assert (=> b!5131944 (=> (not res!2185695) (not e!3200831))))

(declare-fun lt!2117402 () Bool)

(assert (=> b!5131944 (= res!2185695 (not lt!2117402))))

(declare-fun b!5131945 () Bool)

(declare-fun res!2185693 () Bool)

(assert (=> b!5131945 (=> (not res!2185693) (not e!3200831))))

(declare-fun forall!13785 ((Set Context!7472) Int) Bool)

(assert (=> b!5131945 (= res!2185693 (not (forall!13785 lt!2117400 lambda!254526)))))

(declare-fun setElem!31149 () Context!7472)

(declare-fun setRes!31149 () Bool)

(declare-fun setNonEmpty!31149 () Bool)

(declare-fun e!3200832 () Bool)

(declare-fun tp!1431686 () Bool)

(declare-fun inv!79062 (Context!7472) Bool)

(assert (=> setNonEmpty!31149 (= setRes!31149 (and tp!1431686 (inv!79062 setElem!31149) e!3200832))))

(declare-fun setRest!31149 () (Set Context!7472))

(assert (=> setNonEmpty!31149 (= z!1054 (set.union (set.insert setElem!31149 (as set.empty (Set Context!7472))) setRest!31149))))

(declare-fun b!5131946 () Bool)

(declare-fun e!3200834 () Bool)

(assert (=> b!5131946 (= e!3200834 e!3200835)))

(declare-fun res!2185692 () Bool)

(assert (=> b!5131946 (=> res!2185692 e!3200835)))

(assert (=> b!5131946 (= res!2185692 (not (set.member lt!2117404 lt!2117400)))))

(declare-datatypes ((List!59640 0))(
  ( (Nil!59516) (Cons!59516 (h!65964 Context!7472) (t!372667 List!59640)) )
))
(declare-fun lt!2117403 () List!59640)

(declare-fun getWitness!800 (List!59640 Int) Context!7472)

(assert (=> b!5131946 (= lt!2117404 (getWitness!800 lt!2117403 lambda!254527))))

(declare-fun setIsEmpty!31149 () Bool)

(assert (=> setIsEmpty!31149 setRes!31149))

(declare-fun b!5131947 () Bool)

(declare-fun res!2185694 () Bool)

(assert (=> b!5131947 (=> (not res!2185694) (not e!3200831))))

(assert (=> b!5131947 (= res!2185694 (forall!13785 z!1054 lambda!254526))))

(declare-fun b!5131948 () Bool)

(declare-fun tp!1431687 () Bool)

(assert (=> b!5131948 (= e!3200832 tp!1431687)))

(assert (=> b!5131949 (= e!3200831 (not e!3200834))))

(declare-fun res!2185696 () Bool)

(assert (=> b!5131949 (=> res!2185696 e!3200834)))

(declare-fun exists!1661 ((Set Context!7472) Int) Bool)

(assert (=> b!5131949 (= res!2185696 (not (exists!1661 lt!2117400 lambda!254527)))))

(declare-fun exists!1662 (List!59640 Int) Bool)

(assert (=> b!5131949 (exists!1662 lt!2117403 lambda!254527)))

(declare-datatypes ((Unit!150799 0))(
  ( (Unit!150800) )
))
(declare-fun lt!2117401 () Unit!150799)

(declare-fun lemmaNotForallThenExists!385 (List!59640 Int) Unit!150799)

(assert (=> b!5131949 (= lt!2117401 (lemmaNotForallThenExists!385 lt!2117403 lambda!254526))))

(declare-fun toList!8337 ((Set Context!7472)) List!59640)

(assert (=> b!5131949 (= lt!2117403 (toList!8337 lt!2117400))))

(assert (=> b!5131950 (= e!3200836 e!3200831)))

(declare-fun res!2185691 () Bool)

(assert (=> b!5131950 (=> (not res!2185691) (not e!3200831))))

(assert (=> b!5131950 (= res!2185691 (= lt!2117402 (forall!13785 lt!2117400 lambda!254526)))))

(declare-fun lostCauseZipper!1196 ((Set Context!7472)) Bool)

(assert (=> b!5131950 (= lt!2117402 (lostCauseZipper!1196 lt!2117400))))

(declare-fun res!2185689 () Bool)

(assert (=> start!542758 (=> (not res!2185689) (not e!3200833))))

(assert (=> start!542758 (= res!2185689 (lostCauseZipper!1196 z!1054))))

(assert (=> start!542758 e!3200833))

(declare-fun condSetEmpty!31149 () Bool)

(assert (=> start!542758 (= condSetEmpty!31149 (= z!1054 (as set.empty (Set Context!7472))))))

(assert (=> start!542758 setRes!31149))

(declare-fun tp_is_empty!37877 () Bool)

(assert (=> start!542758 tp_is_empty!37877))

(assert (= (and start!542758 res!2185689) b!5131942))

(assert (= (and b!5131942 res!2185690) b!5131950))

(assert (= (and b!5131950 res!2185691) b!5131947))

(assert (= (and b!5131947 res!2185694) b!5131944))

(assert (= (and b!5131944 res!2185695) b!5131945))

(assert (= (and b!5131945 res!2185693) b!5131949))

(assert (= (and b!5131949 (not res!2185696)) b!5131946))

(assert (= (and b!5131946 (not res!2185692)) b!5131943))

(assert (= (and start!542758 condSetEmpty!31149) setIsEmpty!31149))

(assert (= (and start!542758 (not condSetEmpty!31149)) setNonEmpty!31149))

(assert (= setNonEmpty!31149 b!5131948))

(declare-fun m!6197538 () Bool)

(assert (=> start!542758 m!6197538))

(declare-fun m!6197540 () Bool)

(assert (=> b!5131947 m!6197540))

(declare-fun m!6197542 () Bool)

(assert (=> b!5131946 m!6197542))

(declare-fun m!6197544 () Bool)

(assert (=> b!5131946 m!6197544))

(declare-fun m!6197546 () Bool)

(assert (=> b!5131950 m!6197546))

(declare-fun m!6197548 () Bool)

(assert (=> b!5131950 m!6197548))

(assert (=> b!5131945 m!6197546))

(declare-fun m!6197550 () Bool)

(assert (=> b!5131949 m!6197550))

(declare-fun m!6197552 () Bool)

(assert (=> b!5131949 m!6197552))

(declare-fun m!6197554 () Bool)

(assert (=> b!5131949 m!6197554))

(declare-fun m!6197556 () Bool)

(assert (=> b!5131949 m!6197556))

(declare-fun m!6197558 () Bool)

(assert (=> setNonEmpty!31149 m!6197558))

(declare-fun m!6197560 () Bool)

(assert (=> b!5131943 m!6197560))

(declare-fun m!6197562 () Bool)

(assert (=> b!5131942 m!6197562))

(declare-fun m!6197564 () Bool)

(assert (=> b!5131942 m!6197564))

(push 1)

(assert (not b!5131946))

(assert (not b!5131947))

(assert (not setNonEmpty!31149))

(assert (not b!5131945))

(assert (not b!5131949))

(assert (not b!5131942))

(assert (not b!5131948))

(assert (not start!542758))

(assert (not b!5131950))

(assert tp_is_empty!37877)

(assert (not b!5131943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1660626 () Bool)

(declare-fun lt!2117422 () Bool)

(declare-fun forall!13787 (List!59640 Int) Bool)

(assert (=> d!1660626 (= lt!2117422 (forall!13787 (toList!8337 lt!2117400) lambda!254526))))

(declare-fun choose!37896 ((Set Context!7472) Int) Bool)

(assert (=> d!1660626 (= lt!2117422 (choose!37896 lt!2117400 lambda!254526))))

(assert (=> d!1660626 (= (forall!13785 lt!2117400 lambda!254526) lt!2117422)))

(declare-fun bs!1198272 () Bool)

(assert (= bs!1198272 d!1660626))

(assert (=> bs!1198272 m!6197556))

(assert (=> bs!1198272 m!6197556))

(declare-fun m!6197594 () Bool)

(assert (=> bs!1198272 m!6197594))

(declare-fun m!6197596 () Bool)

(assert (=> bs!1198272 m!6197596))

(assert (=> b!5131945 d!1660626))

(declare-fun bs!1198273 () Bool)

(declare-fun d!1660628 () Bool)

(assert (= bs!1198273 (and d!1660628 b!5131950)))

(declare-fun lambda!254559 () Int)

(assert (=> bs!1198273 (= lambda!254559 lambda!254526)))

(declare-fun bs!1198274 () Bool)

(assert (= bs!1198274 (and d!1660628 b!5131949)))

(assert (=> bs!1198274 (not (= lambda!254559 lambda!254527))))

(declare-fun bs!1198275 () Bool)

(declare-fun b!5131986 () Bool)

(assert (= bs!1198275 (and b!5131986 b!5131950)))

(declare-fun lambda!254560 () Int)

(assert (=> bs!1198275 (not (= lambda!254560 lambda!254526))))

(declare-fun bs!1198276 () Bool)

(assert (= bs!1198276 (and b!5131986 b!5131949)))

(assert (=> bs!1198276 (= lambda!254560 lambda!254527)))

(declare-fun bs!1198277 () Bool)

(assert (= bs!1198277 (and b!5131986 d!1660628)))

(assert (=> bs!1198277 (not (= lambda!254560 lambda!254559))))

(declare-fun bs!1198278 () Bool)

(declare-fun b!5131987 () Bool)

(assert (= bs!1198278 (and b!5131987 b!5131950)))

(declare-fun lambda!254561 () Int)

(assert (=> bs!1198278 (not (= lambda!254561 lambda!254526))))

(declare-fun bs!1198279 () Bool)

(assert (= bs!1198279 (and b!5131987 b!5131949)))

(assert (=> bs!1198279 (= lambda!254561 lambda!254527)))

(declare-fun bs!1198280 () Bool)

(assert (= bs!1198280 (and b!5131987 d!1660628)))

(assert (=> bs!1198280 (not (= lambda!254561 lambda!254559))))

(declare-fun bs!1198281 () Bool)

(assert (= bs!1198281 (and b!5131987 b!5131986)))

(assert (=> bs!1198281 (= lambda!254561 lambda!254560)))

(declare-fun bm!357203 () Bool)

(declare-fun call!357209 () List!59640)

(assert (=> bm!357203 (= call!357209 (toList!8337 z!1054))))

(declare-fun e!3200863 () Unit!150799)

(declare-fun Unit!150803 () Unit!150799)

(assert (=> b!5131986 (= e!3200863 Unit!150803)))

(declare-fun lt!2117440 () List!59640)

(assert (=> b!5131986 (= lt!2117440 call!357209)))

(declare-fun lt!2117443 () Unit!150799)

(assert (=> b!5131986 (= lt!2117443 (lemmaNotForallThenExists!385 lt!2117440 lambda!254559))))

(declare-fun call!357208 () Bool)

(assert (=> b!5131986 call!357208))

(declare-fun lt!2117441 () Unit!150799)

(assert (=> b!5131986 (= lt!2117441 lt!2117443)))

(declare-fun Unit!150804 () Unit!150799)

(assert (=> b!5131987 (= e!3200863 Unit!150804)))

(declare-fun lt!2117445 () List!59640)

(assert (=> b!5131987 (= lt!2117445 call!357209)))

(declare-fun lt!2117446 () Unit!150799)

(declare-fun lemmaForallThenNotExists!360 (List!59640 Int) Unit!150799)

(assert (=> b!5131987 (= lt!2117446 (lemmaForallThenNotExists!360 lt!2117445 lambda!254559))))

(assert (=> b!5131987 (not call!357208)))

(declare-fun lt!2117444 () Unit!150799)

(assert (=> b!5131987 (= lt!2117444 lt!2117446)))

(declare-fun bm!357204 () Bool)

(declare-fun c!883011 () Bool)

(assert (=> bm!357204 (= call!357208 (exists!1662 (ite c!883011 lt!2117440 lt!2117445) (ite c!883011 lambda!254560 lambda!254561)))))

(declare-fun lt!2117442 () Bool)

(declare-datatypes ((List!59643 0))(
  ( (Nil!59519) (Cons!59519 (h!65967 C!28970) (t!372670 List!59643)) )
))
(declare-datatypes ((Option!14738 0))(
  ( (None!14737) (Some!14737 (v!50766 List!59643)) )
))
(declare-fun isEmpty!31999 (Option!14738) Bool)

(declare-fun getLanguageWitness!875 ((Set Context!7472)) Option!14738)

(assert (=> d!1660628 (= lt!2117442 (isEmpty!31999 (getLanguageWitness!875 z!1054)))))

(assert (=> d!1660628 (= lt!2117442 (forall!13785 z!1054 lambda!254559))))

(declare-fun lt!2117439 () Unit!150799)

(assert (=> d!1660628 (= lt!2117439 e!3200863)))

(assert (=> d!1660628 (= c!883011 (not (forall!13785 z!1054 lambda!254559)))))

(assert (=> d!1660628 (= (lostCauseZipper!1196 z!1054) lt!2117442)))

(assert (= (and d!1660628 c!883011) b!5131986))

(assert (= (and d!1660628 (not c!883011)) b!5131987))

(assert (= (or b!5131986 b!5131987) bm!357203))

(assert (= (or b!5131986 b!5131987) bm!357204))

(declare-fun m!6197598 () Bool)

(assert (=> b!5131986 m!6197598))

(declare-fun m!6197600 () Bool)

(assert (=> d!1660628 m!6197600))

(assert (=> d!1660628 m!6197600))

(declare-fun m!6197602 () Bool)

(assert (=> d!1660628 m!6197602))

(declare-fun m!6197604 () Bool)

(assert (=> d!1660628 m!6197604))

(assert (=> d!1660628 m!6197604))

(declare-fun m!6197606 () Bool)

(assert (=> b!5131987 m!6197606))

(declare-fun m!6197608 () Bool)

(assert (=> bm!357204 m!6197608))

(declare-fun m!6197610 () Bool)

(assert (=> bm!357203 m!6197610))

(assert (=> start!542758 d!1660628))

(declare-fun d!1660632 () Bool)

(declare-fun lambda!254564 () Int)

(declare-fun exists!1665 (List!59639 Int) Bool)

(assert (=> d!1660632 (= (lostCause!1295 lt!2117404) (exists!1665 (exprs!4236 lt!2117404) lambda!254564))))

(declare-fun bs!1198284 () Bool)

(assert (= bs!1198284 d!1660632))

(declare-fun m!6197622 () Bool)

(assert (=> bs!1198284 m!6197622))

(assert (=> b!5131943 d!1660632))

(declare-fun d!1660638 () Bool)

(declare-fun lt!2117451 () Bool)

(assert (=> d!1660638 (= lt!2117451 (forall!13787 (toList!8337 z!1054) lambda!254526))))

(assert (=> d!1660638 (= lt!2117451 (choose!37896 z!1054 lambda!254526))))

(assert (=> d!1660638 (= (forall!13785 z!1054 lambda!254526) lt!2117451)))

(declare-fun bs!1198285 () Bool)

(assert (= bs!1198285 d!1660638))

(assert (=> bs!1198285 m!6197610))

(assert (=> bs!1198285 m!6197610))

(declare-fun m!6197624 () Bool)

(assert (=> bs!1198285 m!6197624))

(declare-fun m!6197626 () Bool)

(assert (=> bs!1198285 m!6197626))

(assert (=> b!5131947 d!1660638))

(declare-fun b!5132000 () Bool)

(declare-fun e!3200873 () Context!7472)

(assert (=> b!5132000 (= e!3200873 (getWitness!800 (t!372667 lt!2117403) lambda!254527))))

(declare-fun b!5132001 () Bool)

(declare-fun e!3200874 () Context!7472)

(assert (=> b!5132001 (= e!3200874 (h!65964 lt!2117403))))

(declare-fun d!1660640 () Bool)

(declare-fun e!3200875 () Bool)

(assert (=> d!1660640 e!3200875))

(declare-fun res!2185726 () Bool)

(assert (=> d!1660640 (=> (not res!2185726) (not e!3200875))))

(declare-fun lt!2117457 () Context!7472)

(declare-fun dynLambda!23695 (Int Context!7472) Bool)

(assert (=> d!1660640 (= res!2185726 (dynLambda!23695 lambda!254527 lt!2117457))))

(assert (=> d!1660640 (= lt!2117457 e!3200874)))

(declare-fun c!883017 () Bool)

(declare-fun e!3200872 () Bool)

(assert (=> d!1660640 (= c!883017 e!3200872)))

(declare-fun res!2185725 () Bool)

(assert (=> d!1660640 (=> (not res!2185725) (not e!3200872))))

(assert (=> d!1660640 (= res!2185725 (is-Cons!59516 lt!2117403))))

(assert (=> d!1660640 (exists!1662 lt!2117403 lambda!254527)))

(assert (=> d!1660640 (= (getWitness!800 lt!2117403 lambda!254527) lt!2117457)))

(declare-fun b!5132002 () Bool)

(assert (=> b!5132002 (= e!3200874 e!3200873)))

(declare-fun c!883016 () Bool)

(assert (=> b!5132002 (= c!883016 (is-Cons!59516 lt!2117403))))

(declare-fun b!5132003 () Bool)

(declare-fun contains!19639 (List!59640 Context!7472) Bool)

(assert (=> b!5132003 (= e!3200875 (contains!19639 lt!2117403 lt!2117457))))

(declare-fun b!5132004 () Bool)

(assert (=> b!5132004 (= e!3200872 (dynLambda!23695 lambda!254527 (h!65964 lt!2117403)))))

(declare-fun b!5132005 () Bool)

(declare-fun lt!2117456 () Unit!150799)

(declare-fun Unit!150805 () Unit!150799)

(assert (=> b!5132005 (= lt!2117456 Unit!150805)))

(assert (=> b!5132005 false))

(declare-fun head!10986 (List!59640) Context!7472)

(assert (=> b!5132005 (= e!3200873 (head!10986 lt!2117403))))

(assert (= (and d!1660640 res!2185725) b!5132004))

(assert (= (and d!1660640 c!883017) b!5132001))

(assert (= (and d!1660640 (not c!883017)) b!5132002))

(assert (= (and b!5132002 c!883016) b!5132000))

(assert (= (and b!5132002 (not c!883016)) b!5132005))

(assert (= (and d!1660640 res!2185726) b!5132003))

(declare-fun b_lambda!199845 () Bool)

(assert (=> (not b_lambda!199845) (not d!1660640)))

(declare-fun b_lambda!199847 () Bool)

(assert (=> (not b_lambda!199847) (not b!5132004)))

(declare-fun m!6197628 () Bool)

(assert (=> d!1660640 m!6197628))

(assert (=> d!1660640 m!6197552))

(declare-fun m!6197630 () Bool)

(assert (=> b!5132005 m!6197630))

(declare-fun m!6197632 () Bool)

(assert (=> b!5132004 m!6197632))

(declare-fun m!6197634 () Bool)

(assert (=> b!5132000 m!6197634))

(declare-fun m!6197636 () Bool)

(assert (=> b!5132003 m!6197636))

(assert (=> b!5131946 d!1660640))

(assert (=> b!5131950 d!1660626))

(declare-fun bs!1198286 () Bool)

(declare-fun d!1660642 () Bool)

(assert (= bs!1198286 (and d!1660642 b!5131950)))

(declare-fun lambda!254565 () Int)

(assert (=> bs!1198286 (= lambda!254565 lambda!254526)))

(declare-fun bs!1198287 () Bool)

(assert (= bs!1198287 (and d!1660642 b!5131949)))

(assert (=> bs!1198287 (not (= lambda!254565 lambda!254527))))

(declare-fun bs!1198288 () Bool)

(assert (= bs!1198288 (and d!1660642 b!5131986)))

(assert (=> bs!1198288 (not (= lambda!254565 lambda!254560))))

(declare-fun bs!1198289 () Bool)

(assert (= bs!1198289 (and d!1660642 b!5131987)))

(assert (=> bs!1198289 (not (= lambda!254565 lambda!254561))))

(declare-fun bs!1198290 () Bool)

(assert (= bs!1198290 (and d!1660642 d!1660628)))

(assert (=> bs!1198290 (= lambda!254565 lambda!254559)))

(declare-fun bs!1198291 () Bool)

(declare-fun b!5132006 () Bool)

(assert (= bs!1198291 (and b!5132006 b!5131950)))

(declare-fun lambda!254566 () Int)

(assert (=> bs!1198291 (not (= lambda!254566 lambda!254526))))

(declare-fun bs!1198292 () Bool)

(assert (= bs!1198292 (and b!5132006 b!5131949)))

(assert (=> bs!1198292 (= lambda!254566 lambda!254527)))

(declare-fun bs!1198293 () Bool)

(assert (= bs!1198293 (and b!5132006 b!5131986)))

(assert (=> bs!1198293 (= lambda!254566 lambda!254560)))

(declare-fun bs!1198294 () Bool)

(assert (= bs!1198294 (and b!5132006 d!1660642)))

(assert (=> bs!1198294 (not (= lambda!254566 lambda!254565))))

(declare-fun bs!1198295 () Bool)

(assert (= bs!1198295 (and b!5132006 b!5131987)))

(assert (=> bs!1198295 (= lambda!254566 lambda!254561)))

(declare-fun bs!1198296 () Bool)

(assert (= bs!1198296 (and b!5132006 d!1660628)))

(assert (=> bs!1198296 (not (= lambda!254566 lambda!254559))))

(declare-fun bs!1198297 () Bool)

(declare-fun b!5132007 () Bool)

(assert (= bs!1198297 (and b!5132007 b!5131950)))

(declare-fun lambda!254567 () Int)

(assert (=> bs!1198297 (not (= lambda!254567 lambda!254526))))

(declare-fun bs!1198298 () Bool)

(assert (= bs!1198298 (and b!5132007 b!5131949)))

(assert (=> bs!1198298 (= lambda!254567 lambda!254527)))

(declare-fun bs!1198299 () Bool)

(assert (= bs!1198299 (and b!5132007 b!5132006)))

(assert (=> bs!1198299 (= lambda!254567 lambda!254566)))

(declare-fun bs!1198300 () Bool)

(assert (= bs!1198300 (and b!5132007 b!5131986)))

(assert (=> bs!1198300 (= lambda!254567 lambda!254560)))

(declare-fun bs!1198301 () Bool)

(assert (= bs!1198301 (and b!5132007 d!1660642)))

(assert (=> bs!1198301 (not (= lambda!254567 lambda!254565))))

(declare-fun bs!1198302 () Bool)

(assert (= bs!1198302 (and b!5132007 b!5131987)))

(assert (=> bs!1198302 (= lambda!254567 lambda!254561)))

(declare-fun bs!1198303 () Bool)

(assert (= bs!1198303 (and b!5132007 d!1660628)))

(assert (=> bs!1198303 (not (= lambda!254567 lambda!254559))))

(declare-fun bm!357205 () Bool)

(declare-fun call!357211 () List!59640)

(assert (=> bm!357205 (= call!357211 (toList!8337 lt!2117400))))

(declare-fun e!3200876 () Unit!150799)

(declare-fun Unit!150806 () Unit!150799)

(assert (=> b!5132006 (= e!3200876 Unit!150806)))

(declare-fun lt!2117459 () List!59640)

(assert (=> b!5132006 (= lt!2117459 call!357211)))

(declare-fun lt!2117462 () Unit!150799)

(assert (=> b!5132006 (= lt!2117462 (lemmaNotForallThenExists!385 lt!2117459 lambda!254565))))

(declare-fun call!357210 () Bool)

(assert (=> b!5132006 call!357210))

(declare-fun lt!2117460 () Unit!150799)

(assert (=> b!5132006 (= lt!2117460 lt!2117462)))

(declare-fun Unit!150807 () Unit!150799)

(assert (=> b!5132007 (= e!3200876 Unit!150807)))

(declare-fun lt!2117464 () List!59640)

(assert (=> b!5132007 (= lt!2117464 call!357211)))

(declare-fun lt!2117465 () Unit!150799)

(assert (=> b!5132007 (= lt!2117465 (lemmaForallThenNotExists!360 lt!2117464 lambda!254565))))

(assert (=> b!5132007 (not call!357210)))

(declare-fun lt!2117463 () Unit!150799)

(assert (=> b!5132007 (= lt!2117463 lt!2117465)))

(declare-fun c!883018 () Bool)

(declare-fun bm!357206 () Bool)

(assert (=> bm!357206 (= call!357210 (exists!1662 (ite c!883018 lt!2117459 lt!2117464) (ite c!883018 lambda!254566 lambda!254567)))))

(declare-fun lt!2117461 () Bool)

(assert (=> d!1660642 (= lt!2117461 (isEmpty!31999 (getLanguageWitness!875 lt!2117400)))))

(assert (=> d!1660642 (= lt!2117461 (forall!13785 lt!2117400 lambda!254565))))

(declare-fun lt!2117458 () Unit!150799)

(assert (=> d!1660642 (= lt!2117458 e!3200876)))

(assert (=> d!1660642 (= c!883018 (not (forall!13785 lt!2117400 lambda!254565)))))

(assert (=> d!1660642 (= (lostCauseZipper!1196 lt!2117400) lt!2117461)))

(assert (= (and d!1660642 c!883018) b!5132006))

(assert (= (and d!1660642 (not c!883018)) b!5132007))

(assert (= (or b!5132006 b!5132007) bm!357205))

(assert (= (or b!5132006 b!5132007) bm!357206))

(declare-fun m!6197638 () Bool)

(assert (=> b!5132006 m!6197638))

(declare-fun m!6197640 () Bool)

(assert (=> d!1660642 m!6197640))

(assert (=> d!1660642 m!6197640))

(declare-fun m!6197642 () Bool)

(assert (=> d!1660642 m!6197642))

(declare-fun m!6197644 () Bool)

(assert (=> d!1660642 m!6197644))

(assert (=> d!1660642 m!6197644))

(declare-fun m!6197646 () Bool)

(assert (=> b!5132007 m!6197646))

(declare-fun m!6197648 () Bool)

(assert (=> bm!357206 m!6197648))

(assert (=> bm!357205 m!6197556))

(assert (=> b!5131950 d!1660642))

(declare-fun d!1660644 () Bool)

(declare-fun choose!37897 ((Set Context!7472) Int) (Set Context!7472))

(assert (=> d!1660644 (= (flatMap!403 z!1054 lambda!254525) (choose!37897 z!1054 lambda!254525))))

(declare-fun bs!1198304 () Bool)

(assert (= bs!1198304 d!1660644))

(declare-fun m!6197650 () Bool)

(assert (=> bs!1198304 m!6197650))

(assert (=> b!5131942 d!1660644))

(declare-fun bs!1198305 () Bool)

(declare-fun d!1660646 () Bool)

(assert (= bs!1198305 (and d!1660646 b!5131942)))

(declare-fun lambda!254570 () Int)

(assert (=> bs!1198305 (= lambda!254570 lambda!254525)))

(assert (=> d!1660646 true))

(assert (=> d!1660646 (= (derivationStepZipper!907 z!1054 a!1233) (flatMap!403 z!1054 lambda!254570))))

(declare-fun bs!1198306 () Bool)

(assert (= bs!1198306 d!1660646))

(declare-fun m!6197652 () Bool)

(assert (=> bs!1198306 m!6197652))

(assert (=> b!5131942 d!1660646))

(declare-fun d!1660648 () Bool)

(declare-fun lt!2117468 () Bool)

(assert (=> d!1660648 (= lt!2117468 (exists!1662 (toList!8337 lt!2117400) lambda!254527))))

(declare-fun choose!37898 ((Set Context!7472) Int) Bool)

(assert (=> d!1660648 (= lt!2117468 (choose!37898 lt!2117400 lambda!254527))))

(assert (=> d!1660648 (= (exists!1661 lt!2117400 lambda!254527) lt!2117468)))

(declare-fun bs!1198307 () Bool)

(assert (= bs!1198307 d!1660648))

(assert (=> bs!1198307 m!6197556))

(assert (=> bs!1198307 m!6197556))

(declare-fun m!6197654 () Bool)

(assert (=> bs!1198307 m!6197654))

(declare-fun m!6197656 () Bool)

(assert (=> bs!1198307 m!6197656))

(assert (=> b!5131949 d!1660648))

(declare-fun bs!1198308 () Bool)

(declare-fun d!1660650 () Bool)

(assert (= bs!1198308 (and d!1660650 b!5131950)))

(declare-fun lambda!254574 () Int)

(assert (=> bs!1198308 (not (= lambda!254574 lambda!254526))))

(declare-fun bs!1198309 () Bool)

(assert (= bs!1198309 (and d!1660650 b!5131949)))

(assert (=> bs!1198309 (not (= lambda!254574 lambda!254527))))

(declare-fun bs!1198310 () Bool)

(assert (= bs!1198310 (and d!1660650 b!5132006)))

(assert (=> bs!1198310 (not (= lambda!254574 lambda!254566))))

(declare-fun bs!1198311 () Bool)

(assert (= bs!1198311 (and d!1660650 b!5131986)))

(assert (=> bs!1198311 (not (= lambda!254574 lambda!254560))))

(declare-fun bs!1198312 () Bool)

(assert (= bs!1198312 (and d!1660650 d!1660642)))

(assert (=> bs!1198312 (not (= lambda!254574 lambda!254565))))

(declare-fun bs!1198313 () Bool)

(assert (= bs!1198313 (and d!1660650 b!5132007)))

(assert (=> bs!1198313 (not (= lambda!254574 lambda!254567))))

(declare-fun bs!1198314 () Bool)

(assert (= bs!1198314 (and d!1660650 b!5131987)))

(assert (=> bs!1198314 (not (= lambda!254574 lambda!254561))))

(declare-fun bs!1198315 () Bool)

(assert (= bs!1198315 (and d!1660650 d!1660628)))

(assert (=> bs!1198315 (not (= lambda!254574 lambda!254559))))

(assert (=> d!1660650 true))

(declare-fun order!26863 () Int)

(declare-fun dynLambda!23696 (Int Int) Int)

(assert (=> d!1660650 (< (dynLambda!23696 order!26863 lambda!254527) (dynLambda!23696 order!26863 lambda!254574))))

(assert (=> d!1660650 (= (exists!1662 lt!2117403 lambda!254527) (not (forall!13787 lt!2117403 lambda!254574)))))

(declare-fun bs!1198316 () Bool)

(assert (= bs!1198316 d!1660650))

(declare-fun m!6197658 () Bool)

(assert (=> bs!1198316 m!6197658))

(assert (=> b!5131949 d!1660650))

(declare-fun bs!1198317 () Bool)

(declare-fun d!1660652 () Bool)

(assert (= bs!1198317 (and d!1660652 b!5131950)))

(declare-fun lambda!254582 () Int)

(assert (=> bs!1198317 (not (= lambda!254582 lambda!254526))))

(declare-fun bs!1198318 () Bool)

(assert (= bs!1198318 (and d!1660652 b!5131949)))

(assert (=> bs!1198318 (not (= lambda!254582 lambda!254527))))

(declare-fun bs!1198319 () Bool)

(assert (= bs!1198319 (and d!1660652 b!5132006)))

(assert (=> bs!1198319 (not (= lambda!254582 lambda!254566))))

(declare-fun bs!1198320 () Bool)

(assert (= bs!1198320 (and d!1660652 b!5131986)))

(assert (=> bs!1198320 (not (= lambda!254582 lambda!254560))))

(declare-fun bs!1198321 () Bool)

(assert (= bs!1198321 (and d!1660652 d!1660642)))

(assert (=> bs!1198321 (not (= lambda!254582 lambda!254565))))

(declare-fun bs!1198322 () Bool)

(assert (= bs!1198322 (and d!1660652 b!5131987)))

(assert (=> bs!1198322 (not (= lambda!254582 lambda!254561))))

(declare-fun bs!1198323 () Bool)

(assert (= bs!1198323 (and d!1660652 d!1660628)))

(assert (=> bs!1198323 (not (= lambda!254582 lambda!254559))))

(declare-fun bs!1198324 () Bool)

(assert (= bs!1198324 (and d!1660652 d!1660650)))

(assert (=> bs!1198324 (= (= lambda!254526 lambda!254527) (= lambda!254582 lambda!254574))))

(declare-fun bs!1198325 () Bool)

(assert (= bs!1198325 (and d!1660652 b!5132007)))

(assert (=> bs!1198325 (not (= lambda!254582 lambda!254567))))

(assert (=> d!1660652 true))

(assert (=> d!1660652 (< (dynLambda!23696 order!26863 lambda!254526) (dynLambda!23696 order!26863 lambda!254582))))

(assert (=> d!1660652 (exists!1662 lt!2117403 lambda!254582)))

(declare-fun lt!2117481 () Unit!150799)

(declare-fun choose!37899 (List!59640 Int) Unit!150799)

(assert (=> d!1660652 (= lt!2117481 (choose!37899 lt!2117403 lambda!254526))))

(assert (=> d!1660652 (not (forall!13787 lt!2117403 lambda!254526))))

(assert (=> d!1660652 (= (lemmaNotForallThenExists!385 lt!2117403 lambda!254526) lt!2117481)))

(declare-fun bs!1198326 () Bool)

(assert (= bs!1198326 d!1660652))

(declare-fun m!6197660 () Bool)

(assert (=> bs!1198326 m!6197660))

(declare-fun m!6197662 () Bool)

(assert (=> bs!1198326 m!6197662))

(declare-fun m!6197664 () Bool)

(assert (=> bs!1198326 m!6197664))

(assert (=> b!5131949 d!1660652))

(declare-fun d!1660654 () Bool)

(declare-fun e!3200887 () Bool)

(assert (=> d!1660654 e!3200887))

(declare-fun res!2185729 () Bool)

(assert (=> d!1660654 (=> (not res!2185729) (not e!3200887))))

(declare-fun lt!2117490 () List!59640)

(declare-fun noDuplicate!1096 (List!59640) Bool)

(assert (=> d!1660654 (= res!2185729 (noDuplicate!1096 lt!2117490))))

(declare-fun choose!37900 ((Set Context!7472)) List!59640)

(assert (=> d!1660654 (= lt!2117490 (choose!37900 lt!2117400))))

(assert (=> d!1660654 (= (toList!8337 lt!2117400) lt!2117490)))

(declare-fun b!5132016 () Bool)

(declare-fun content!10573 (List!59640) (Set Context!7472))

(assert (=> b!5132016 (= e!3200887 (= (content!10573 lt!2117490) lt!2117400))))

(assert (= (and d!1660654 res!2185729) b!5132016))

(declare-fun m!6197666 () Bool)

(assert (=> d!1660654 m!6197666))

(declare-fun m!6197668 () Bool)

(assert (=> d!1660654 m!6197668))

(declare-fun m!6197670 () Bool)

(assert (=> b!5132016 m!6197670))

(assert (=> b!5131949 d!1660654))

(declare-fun bs!1198327 () Bool)

(declare-fun d!1660656 () Bool)

(assert (= bs!1198327 (and d!1660656 d!1660632)))

(declare-fun lambda!254591 () Int)

(assert (=> bs!1198327 (not (= lambda!254591 lambda!254564))))

(declare-fun forall!13788 (List!59639 Int) Bool)

(assert (=> d!1660656 (= (inv!79062 setElem!31149) (forall!13788 (exprs!4236 setElem!31149) lambda!254591))))

(declare-fun bs!1198328 () Bool)

(assert (= bs!1198328 d!1660656))

(declare-fun m!6197672 () Bool)

(assert (=> bs!1198328 m!6197672))

(assert (=> setNonEmpty!31149 d!1660656))

(declare-fun b!5132021 () Bool)

(declare-fun e!3200890 () Bool)

(declare-fun tp!1431698 () Bool)

(declare-fun tp!1431699 () Bool)

(assert (=> b!5132021 (= e!3200890 (and tp!1431698 tp!1431699))))

(assert (=> b!5131948 (= tp!1431687 e!3200890)))

(assert (= (and b!5131948 (is-Cons!59515 (exprs!4236 setElem!31149))) b!5132021))

(declare-fun condSetEmpty!31155 () Bool)

(assert (=> setNonEmpty!31149 (= condSetEmpty!31155 (= setRest!31149 (as set.empty (Set Context!7472))))))

(declare-fun setRes!31155 () Bool)

(assert (=> setNonEmpty!31149 (= tp!1431686 setRes!31155)))

(declare-fun setIsEmpty!31155 () Bool)

(assert (=> setIsEmpty!31155 setRes!31155))

(declare-fun tp!1431704 () Bool)

(declare-fun setNonEmpty!31155 () Bool)

(declare-fun e!3200893 () Bool)

(declare-fun setElem!31155 () Context!7472)

(assert (=> setNonEmpty!31155 (= setRes!31155 (and tp!1431704 (inv!79062 setElem!31155) e!3200893))))

(declare-fun setRest!31155 () (Set Context!7472))

(assert (=> setNonEmpty!31155 (= setRest!31149 (set.union (set.insert setElem!31155 (as set.empty (Set Context!7472))) setRest!31155))))

(declare-fun b!5132026 () Bool)

(declare-fun tp!1431705 () Bool)

(assert (=> b!5132026 (= e!3200893 tp!1431705)))

(assert (= (and setNonEmpty!31149 condSetEmpty!31155) setIsEmpty!31155))

(assert (= (and setNonEmpty!31149 (not condSetEmpty!31155)) setNonEmpty!31155))

(assert (= setNonEmpty!31155 b!5132026))

(declare-fun m!6197674 () Bool)

(assert (=> setNonEmpty!31155 m!6197674))

(declare-fun b_lambda!199849 () Bool)

(assert (= b_lambda!199847 (or b!5131949 b_lambda!199849)))

(declare-fun bs!1198329 () Bool)

(declare-fun d!1660658 () Bool)

(assert (= bs!1198329 (and d!1660658 b!5131949)))

(assert (=> bs!1198329 (= (dynLambda!23695 lambda!254527 (h!65964 lt!2117403)) (not (lostCause!1295 (h!65964 lt!2117403))))))

(declare-fun m!6197676 () Bool)

(assert (=> bs!1198329 m!6197676))

(assert (=> b!5132004 d!1660658))

(declare-fun b_lambda!199851 () Bool)

(assert (= b_lambda!199845 (or b!5131949 b_lambda!199851)))

(declare-fun bs!1198330 () Bool)

(declare-fun d!1660660 () Bool)

(assert (= bs!1198330 (and d!1660660 b!5131949)))

(assert (=> bs!1198330 (= (dynLambda!23695 lambda!254527 lt!2117457) (not (lostCause!1295 lt!2117457)))))

(declare-fun m!6197678 () Bool)

(assert (=> bs!1198330 m!6197678))

(assert (=> d!1660640 d!1660660))

(push 1)

(assert (not d!1660652))

(assert (not bm!357206))

(assert (not b_lambda!199849))

(assert (not bm!357204))

(assert (not d!1660642))

(assert (not b!5132021))

(assert (not b!5132003))

(assert (not b!5132026))

(assert (not b_lambda!199851))

(assert (not bs!1198330))

(assert (not b!5132000))

(assert (not d!1660632))

(assert (not setNonEmpty!31155))

(assert (not b!5131987))

(assert (not b!5132005))

(assert (not bm!357203))

(assert (not bm!357205))

(assert (not b!5132016))

(assert (not b!5132007))

(assert (not d!1660650))

(assert (not d!1660654))

(assert (not d!1660646))

(assert (not d!1660648))

(assert (not d!1660626))

(assert (not d!1660644))

(assert (not bs!1198329))

(assert (not d!1660656))

(assert (not d!1660628))

(assert (not b!5132006))

(assert (not d!1660638))

(assert (not b!5131986))

(assert tp_is_empty!37877)

(assert (not d!1660640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

