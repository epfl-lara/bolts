; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!541502 () Bool)

(assert start!541502)

(declare-fun setRes!30741 () Bool)

(declare-fun setNonEmpty!30741 () Bool)

(declare-datatypes ((C!28802 0))(
  ( (C!28803 (val!24053 Int)) )
))
(declare-datatypes ((Regex!14268 0))(
  ( (ElementMatch!14268 (c!881624 C!28802)) (Concat!23113 (regOne!29048 Regex!14268) (regTwo!29048 Regex!14268)) (EmptyExpr!14268) (Star!14268 (reg!14597 Regex!14268)) (EmptyLang!14268) (Union!14268 (regOne!29049 Regex!14268) (regTwo!29049 Regex!14268)) )
))
(declare-datatypes ((List!59475 0))(
  ( (Nil!59351) (Cons!59351 (h!65799 Regex!14268) (t!372502 List!59475)) )
))
(declare-datatypes ((Context!7304 0))(
  ( (Context!7305 (exprs!4152 List!59475)) )
))
(declare-fun setElem!30741 () Context!7304)

(declare-fun e!3197749 () Bool)

(declare-fun tp!1430400 () Bool)

(declare-fun inv!78852 (Context!7304) Bool)

(assert (=> setNonEmpty!30741 (= setRes!30741 (and tp!1430400 (inv!78852 setElem!30741) e!3197749))))

(declare-fun z!1006 () (Set Context!7304))

(declare-fun setRest!30741 () (Set Context!7304))

(assert (=> setNonEmpty!30741 (= z!1006 (set.union (set.insert setElem!30741 (as set.empty (Set Context!7304))) setRest!30741))))

(declare-fun setIsEmpty!30741 () Bool)

(assert (=> setIsEmpty!30741 setRes!30741))

(declare-fun b!5127480 () Bool)

(declare-fun e!3197748 () Bool)

(declare-datatypes ((List!59476 0))(
  ( (Nil!59352) (Cons!59352 (h!65800 C!28802) (t!372503 List!59476)) )
))
(declare-fun s!2272 () List!59476)

(declare-fun size!39560 (List!59476) Int)

(assert (=> b!5127480 (= e!3197748 (< (size!39560 s!2272) 0))))

(declare-fun b!5127481 () Bool)

(declare-fun e!3197750 () Bool)

(declare-fun tp_is_empty!37805 () Bool)

(declare-fun tp!1430401 () Bool)

(assert (=> b!5127481 (= e!3197750 (and tp_is_empty!37805 tp!1430401))))

(declare-fun b!5127482 () Bool)

(declare-fun tp!1430402 () Bool)

(assert (=> b!5127482 (= e!3197749 tp!1430402)))

(declare-fun res!2183105 () Bool)

(assert (=> start!541502 (=> (not res!2183105) (not e!3197748))))

(declare-fun lostCauseZipper!1146 ((Set Context!7304)) Bool)

(assert (=> start!541502 (= res!2183105 (lostCauseZipper!1146 z!1006))))

(assert (=> start!541502 e!3197748))

(declare-fun condSetEmpty!30741 () Bool)

(assert (=> start!541502 (= condSetEmpty!30741 (= z!1006 (as set.empty (Set Context!7304))))))

(assert (=> start!541502 setRes!30741))

(assert (=> start!541502 e!3197750))

(assert (= (and start!541502 res!2183105) b!5127480))

(assert (= (and start!541502 condSetEmpty!30741) setIsEmpty!30741))

(assert (= (and start!541502 (not condSetEmpty!30741)) setNonEmpty!30741))

(assert (= setNonEmpty!30741 b!5127482))

(assert (= (and start!541502 (is-Cons!59352 s!2272)) b!5127481))

(declare-fun m!6191534 () Bool)

(assert (=> setNonEmpty!30741 m!6191534))

(declare-fun m!6191536 () Bool)

(assert (=> b!5127480 m!6191536))

(declare-fun m!6191538 () Bool)

(assert (=> start!541502 m!6191538))

(push 1)

(assert (not setNonEmpty!30741))

(assert (not start!541502))

(assert (not b!5127482))

(assert tp_is_empty!37805)

(assert (not b!5127481))

(assert (not b!5127480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1194204 () Bool)

(declare-fun b!5127500 () Bool)

(declare-fun d!1658630 () Bool)

(assert (= bs!1194204 (and b!5127500 d!1658630)))

(declare-fun lambda!252060 () Int)

(declare-fun lambda!252059 () Int)

(assert (=> bs!1194204 (not (= lambda!252060 lambda!252059))))

(declare-fun bs!1194205 () Bool)

(declare-fun b!5127501 () Bool)

(assert (= bs!1194205 (and b!5127501 d!1658630)))

(declare-fun lambda!252061 () Int)

(assert (=> bs!1194205 (not (= lambda!252061 lambda!252059))))

(declare-fun bs!1194206 () Bool)

(assert (= bs!1194206 (and b!5127501 b!5127500)))

(assert (=> bs!1194206 (= lambda!252061 lambda!252060)))

(declare-datatypes ((List!59479 0))(
  ( (Nil!59355) (Cons!59355 (h!65803 Context!7304) (t!372506 List!59479)) )
))
(declare-fun lt!2114688 () List!59479)

(declare-fun lt!2114684 () List!59479)

(declare-fun c!881640 () Bool)

(declare-fun bm!356926 () Bool)

(declare-fun call!356931 () Bool)

(declare-fun exists!1518 (List!59479 Int) Bool)

(assert (=> bm!356926 (= call!356931 (exists!1518 (ite c!881640 lt!2114688 lt!2114684) (ite c!881640 lambda!252060 lambda!252061)))))

(declare-datatypes ((Unit!150539 0))(
  ( (Unit!150540) )
))
(declare-fun e!3197768 () Unit!150539)

(declare-fun Unit!150541 () Unit!150539)

(assert (=> b!5127501 (= e!3197768 Unit!150541)))

(declare-fun call!356930 () List!59479)

(assert (=> b!5127501 (= lt!2114684 call!356930)))

(declare-fun lt!2114683 () Unit!150539)

(declare-fun lemmaForallThenNotExists!340 (List!59479 Int) Unit!150539)

(assert (=> b!5127501 (= lt!2114683 (lemmaForallThenNotExists!340 lt!2114684 lambda!252059))))

(assert (=> b!5127501 (not call!356931)))

(declare-fun lt!2114681 () Unit!150539)

(assert (=> b!5127501 (= lt!2114681 lt!2114683)))

(declare-fun lt!2114682 () Bool)

(declare-datatypes ((Option!14717 0))(
  ( (None!14716) (Some!14716 (v!50729 List!59476)) )
))
(declare-fun isEmpty!31976 (Option!14717) Bool)

(declare-fun getLanguageWitness!848 ((Set Context!7304)) Option!14717)

(assert (=> d!1658630 (= lt!2114682 (isEmpty!31976 (getLanguageWitness!848 z!1006)))))

(declare-fun forall!13663 ((Set Context!7304) Int) Bool)

(assert (=> d!1658630 (= lt!2114682 (forall!13663 z!1006 lambda!252059))))

(declare-fun lt!2114687 () Unit!150539)

(assert (=> d!1658630 (= lt!2114687 e!3197768)))

(assert (=> d!1658630 (= c!881640 (not (forall!13663 z!1006 lambda!252059)))))

(assert (=> d!1658630 (= (lostCauseZipper!1146 z!1006) lt!2114682)))

(declare-fun Unit!150542 () Unit!150539)

(assert (=> b!5127500 (= e!3197768 Unit!150542)))

(assert (=> b!5127500 (= lt!2114688 call!356930)))

(declare-fun lt!2114686 () Unit!150539)

(declare-fun lemmaNotForallThenExists!357 (List!59479 Int) Unit!150539)

(assert (=> b!5127500 (= lt!2114686 (lemmaNotForallThenExists!357 lt!2114688 lambda!252059))))

(assert (=> b!5127500 call!356931))

(declare-fun lt!2114685 () Unit!150539)

(assert (=> b!5127500 (= lt!2114685 lt!2114686)))

(declare-fun bm!356925 () Bool)

(declare-fun toList!8285 ((Set Context!7304)) List!59479)

(assert (=> bm!356925 (= call!356930 (toList!8285 z!1006))))

(assert (= (and d!1658630 c!881640) b!5127500))

(assert (= (and d!1658630 (not c!881640)) b!5127501))

(assert (= (or b!5127500 b!5127501) bm!356925))

(assert (= (or b!5127500 b!5127501) bm!356926))

(declare-fun m!6191546 () Bool)

(assert (=> b!5127501 m!6191546))

(declare-fun m!6191548 () Bool)

(assert (=> bm!356926 m!6191548))

(declare-fun m!6191550 () Bool)

(assert (=> bm!356925 m!6191550))

(declare-fun m!6191552 () Bool)

(assert (=> d!1658630 m!6191552))

(assert (=> d!1658630 m!6191552))

(declare-fun m!6191554 () Bool)

(assert (=> d!1658630 m!6191554))

(declare-fun m!6191556 () Bool)

(assert (=> d!1658630 m!6191556))

(assert (=> d!1658630 m!6191556))

(declare-fun m!6191558 () Bool)

(assert (=> b!5127500 m!6191558))

(assert (=> start!541502 d!1658630))

(declare-fun d!1658634 () Bool)

(declare-fun lt!2114691 () Int)

(assert (=> d!1658634 (>= lt!2114691 0)))

(declare-fun e!3197771 () Int)

(assert (=> d!1658634 (= lt!2114691 e!3197771)))

(declare-fun c!881643 () Bool)

(assert (=> d!1658634 (= c!881643 (is-Nil!59352 s!2272))))

(assert (=> d!1658634 (= (size!39560 s!2272) lt!2114691)))

(declare-fun b!5127506 () Bool)

(assert (=> b!5127506 (= e!3197771 0)))

(declare-fun b!5127507 () Bool)

(assert (=> b!5127507 (= e!3197771 (+ 1 (size!39560 (t!372503 s!2272))))))

(assert (= (and d!1658634 c!881643) b!5127506))

(assert (= (and d!1658634 (not c!881643)) b!5127507))

(declare-fun m!6191560 () Bool)

(assert (=> b!5127507 m!6191560))

(assert (=> b!5127480 d!1658634))

(declare-fun d!1658636 () Bool)

(declare-fun lambda!252064 () Int)

(declare-fun forall!13664 (List!59475 Int) Bool)

(assert (=> d!1658636 (= (inv!78852 setElem!30741) (forall!13664 (exprs!4152 setElem!30741) lambda!252064))))

(declare-fun bs!1194207 () Bool)

(assert (= bs!1194207 d!1658636))

(declare-fun m!6191562 () Bool)

(assert (=> bs!1194207 m!6191562))

(assert (=> setNonEmpty!30741 d!1658636))

(declare-fun b!5127512 () Bool)

(declare-fun e!3197774 () Bool)

(declare-fun tp!1430414 () Bool)

(assert (=> b!5127512 (= e!3197774 (and tp_is_empty!37805 tp!1430414))))

(assert (=> b!5127481 (= tp!1430401 e!3197774)))

(assert (= (and b!5127481 (is-Cons!59352 (t!372503 s!2272))) b!5127512))

(declare-fun b!5127517 () Bool)

(declare-fun e!3197777 () Bool)

(declare-fun tp!1430419 () Bool)

(declare-fun tp!1430420 () Bool)

(assert (=> b!5127517 (= e!3197777 (and tp!1430419 tp!1430420))))

(assert (=> b!5127482 (= tp!1430402 e!3197777)))

(assert (= (and b!5127482 (is-Cons!59351 (exprs!4152 setElem!30741))) b!5127517))

(declare-fun condSetEmpty!30747 () Bool)

(assert (=> setNonEmpty!30741 (= condSetEmpty!30747 (= setRest!30741 (as set.empty (Set Context!7304))))))

(declare-fun setRes!30747 () Bool)

(assert (=> setNonEmpty!30741 (= tp!1430400 setRes!30747)))

(declare-fun setIsEmpty!30747 () Bool)

(assert (=> setIsEmpty!30747 setRes!30747))

(declare-fun e!3197780 () Bool)

(declare-fun setElem!30747 () Context!7304)

(declare-fun tp!1430426 () Bool)

(declare-fun setNonEmpty!30747 () Bool)

(assert (=> setNonEmpty!30747 (= setRes!30747 (and tp!1430426 (inv!78852 setElem!30747) e!3197780))))

(declare-fun setRest!30747 () (Set Context!7304))

(assert (=> setNonEmpty!30747 (= setRest!30741 (set.union (set.insert setElem!30747 (as set.empty (Set Context!7304))) setRest!30747))))

(declare-fun b!5127522 () Bool)

(declare-fun tp!1430425 () Bool)

(assert (=> b!5127522 (= e!3197780 tp!1430425)))

(assert (= (and setNonEmpty!30741 condSetEmpty!30747) setIsEmpty!30747))

(assert (= (and setNonEmpty!30741 (not condSetEmpty!30747)) setNonEmpty!30747))

(assert (= setNonEmpty!30747 b!5127522))

(declare-fun m!6191564 () Bool)

(assert (=> setNonEmpty!30747 m!6191564))

(push 1)

(assert (not b!5127512))

(assert (not d!1658636))

(assert (not b!5127501))

(assert (not d!1658630))

(assert (not bm!356925))

(assert (not b!5127500))

(assert (not b!5127507))

(assert (not bm!356926))

(assert (not setNonEmpty!30747))

(assert tp_is_empty!37805)

(assert (not b!5127517))

(assert (not b!5127522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

