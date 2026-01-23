; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187838 () Bool)

(assert start!187838)

(declare-fun b!1874228 () Bool)

(declare-fun e!1195814 () Bool)

(declare-fun tp!533678 () Bool)

(assert (=> b!1874228 (= e!1195814 tp!533678)))

(declare-fun b!1874229 () Bool)

(declare-fun e!1195815 () Bool)

(declare-datatypes ((C!10330 0))(
  ( (C!10331 (val!6053 Int)) )
))
(declare-datatypes ((Regex!5086 0))(
  ( (ElementMatch!5086 (c!305421 C!10330)) (Concat!8905 (regOne!10684 Regex!5086) (regTwo!10684 Regex!5086)) (EmptyExpr!5086) (Star!5086 (reg!5415 Regex!5086)) (EmptyLang!5086) (Union!5086 (regOne!10685 Regex!5086) (regTwo!10685 Regex!5086)) )
))
(declare-datatypes ((List!20896 0))(
  ( (Nil!20814) (Cons!20814 (h!26215 Regex!5086) (t!173113 List!20896)) )
))
(declare-datatypes ((Context!1948 0))(
  ( (Context!1949 (exprs!1474 List!20896)) )
))
(declare-fun z!679 () (Set Context!1948))

(declare-datatypes ((List!20897 0))(
  ( (Nil!20815) (Cons!20815 (h!26216 C!10330) (t!173114 List!20897)) )
))
(declare-fun input!3792 () List!20897)

(declare-fun nullableZipper!39 ((Set Context!1948)) Bool)

(declare-fun matchZipper!89 ((Set Context!1948) List!20897) Bool)

(assert (=> b!1874229 (= e!1195815 (not (= (nullableZipper!39 z!679) (matchZipper!89 z!679 input!3792))))))

(declare-fun tp!533679 () Bool)

(declare-fun setRes!11533 () Bool)

(declare-fun setElem!11533 () Context!1948)

(declare-fun setNonEmpty!11533 () Bool)

(declare-fun inv!27631 (Context!1948) Bool)

(assert (=> setNonEmpty!11533 (= setRes!11533 (and tp!533679 (inv!27631 setElem!11533) e!1195814))))

(declare-fun setRest!11533 () (Set Context!1948))

(assert (=> setNonEmpty!11533 (= z!679 (set.union (set.insert setElem!11533 (as set.empty (Set Context!1948))) setRest!11533))))

(declare-fun res!838428 () Bool)

(assert (=> start!187838 (=> (not res!838428) (not e!1195815))))

(declare-fun isEmpty!12963 (List!20897) Bool)

(assert (=> start!187838 (= res!838428 (isEmpty!12963 input!3792))))

(assert (=> start!187838 e!1195815))

(declare-fun e!1195816 () Bool)

(assert (=> start!187838 e!1195816))

(declare-fun condSetEmpty!11533 () Bool)

(assert (=> start!187838 (= condSetEmpty!11533 (= z!679 (as set.empty (Set Context!1948))))))

(assert (=> start!187838 setRes!11533))

(declare-fun setIsEmpty!11533 () Bool)

(assert (=> setIsEmpty!11533 setRes!11533))

(declare-fun b!1874230 () Bool)

(declare-fun tp_is_empty!8873 () Bool)

(declare-fun tp!533680 () Bool)

(assert (=> b!1874230 (= e!1195816 (and tp_is_empty!8873 tp!533680))))

(assert (= (and start!187838 res!838428) b!1874229))

(assert (= (and start!187838 (is-Cons!20815 input!3792)) b!1874230))

(assert (= (and start!187838 condSetEmpty!11533) setIsEmpty!11533))

(assert (= (and start!187838 (not condSetEmpty!11533)) setNonEmpty!11533))

(assert (= setNonEmpty!11533 b!1874228))

(declare-fun m!2299265 () Bool)

(assert (=> b!1874229 m!2299265))

(declare-fun m!2299267 () Bool)

(assert (=> b!1874229 m!2299267))

(declare-fun m!2299269 () Bool)

(assert (=> setNonEmpty!11533 m!2299269))

(declare-fun m!2299271 () Bool)

(assert (=> start!187838 m!2299271))

(push 1)

(assert (not b!1874228))

(assert (not b!1874229))

(assert tp_is_empty!8873)

(assert (not b!1874230))

(assert (not start!187838))

(assert (not setNonEmpty!11533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572738 () Bool)

(declare-fun lambda!73777 () Int)

(declare-fun exists!678 ((Set Context!1948) Int) Bool)

(assert (=> d!572738 (= (nullableZipper!39 z!679) (exists!678 z!679 lambda!73777))))

(declare-fun bs!412148 () Bool)

(assert (= bs!412148 d!572738))

(declare-fun m!2299281 () Bool)

(assert (=> bs!412148 m!2299281))

(assert (=> b!1874229 d!572738))

(declare-fun d!572740 () Bool)

(declare-fun c!305427 () Bool)

(assert (=> d!572740 (= c!305427 (isEmpty!12963 input!3792))))

(declare-fun e!1195828 () Bool)

(assert (=> d!572740 (= (matchZipper!89 z!679 input!3792) e!1195828)))

(declare-fun b!1874244 () Bool)

(assert (=> b!1874244 (= e!1195828 (nullableZipper!39 z!679))))

(declare-fun b!1874245 () Bool)

(declare-fun derivationStepZipper!76 ((Set Context!1948) C!10330) (Set Context!1948))

(declare-fun head!4352 (List!20897) C!10330)

(declare-fun tail!2881 (List!20897) List!20897)

(assert (=> b!1874245 (= e!1195828 (matchZipper!89 (derivationStepZipper!76 z!679 (head!4352 input!3792)) (tail!2881 input!3792)))))

(assert (= (and d!572740 c!305427) b!1874244))

(assert (= (and d!572740 (not c!305427)) b!1874245))

(assert (=> d!572740 m!2299271))

(assert (=> b!1874244 m!2299265))

(declare-fun m!2299283 () Bool)

(assert (=> b!1874245 m!2299283))

(assert (=> b!1874245 m!2299283))

(declare-fun m!2299285 () Bool)

(assert (=> b!1874245 m!2299285))

(declare-fun m!2299287 () Bool)

(assert (=> b!1874245 m!2299287))

(assert (=> b!1874245 m!2299285))

(assert (=> b!1874245 m!2299287))

(declare-fun m!2299289 () Bool)

(assert (=> b!1874245 m!2299289))

(assert (=> b!1874229 d!572740))

(declare-fun d!572742 () Bool)

(declare-fun lambda!73780 () Int)

(declare-fun forall!4418 (List!20896 Int) Bool)

(assert (=> d!572742 (= (inv!27631 setElem!11533) (forall!4418 (exprs!1474 setElem!11533) lambda!73780))))

(declare-fun bs!412149 () Bool)

(assert (= bs!412149 d!572742))

(declare-fun m!2299291 () Bool)

(assert (=> bs!412149 m!2299291))

(assert (=> setNonEmpty!11533 d!572742))

(declare-fun d!572744 () Bool)

(assert (=> d!572744 (= (isEmpty!12963 input!3792) (is-Nil!20815 input!3792))))

(assert (=> start!187838 d!572744))

(declare-fun condSetEmpty!11539 () Bool)

(assert (=> setNonEmpty!11533 (= condSetEmpty!11539 (= setRest!11533 (as set.empty (Set Context!1948))))))

(declare-fun setRes!11539 () Bool)

(assert (=> setNonEmpty!11533 (= tp!533679 setRes!11539)))

(declare-fun setIsEmpty!11539 () Bool)

(assert (=> setIsEmpty!11539 setRes!11539))

(declare-fun e!1195831 () Bool)

(declare-fun setElem!11539 () Context!1948)

(declare-fun tp!533695 () Bool)

(declare-fun setNonEmpty!11539 () Bool)

(assert (=> setNonEmpty!11539 (= setRes!11539 (and tp!533695 (inv!27631 setElem!11539) e!1195831))))

(declare-fun setRest!11539 () (Set Context!1948))

(assert (=> setNonEmpty!11539 (= setRest!11533 (set.union (set.insert setElem!11539 (as set.empty (Set Context!1948))) setRest!11539))))

(declare-fun b!1874250 () Bool)

(declare-fun tp!533694 () Bool)

(assert (=> b!1874250 (= e!1195831 tp!533694)))

(assert (= (and setNonEmpty!11533 condSetEmpty!11539) setIsEmpty!11539))

(assert (= (and setNonEmpty!11533 (not condSetEmpty!11539)) setNonEmpty!11539))

(assert (= setNonEmpty!11539 b!1874250))

(declare-fun m!2299293 () Bool)

(assert (=> setNonEmpty!11539 m!2299293))

(declare-fun b!1874255 () Bool)

(declare-fun e!1195834 () Bool)

(declare-fun tp!533700 () Bool)

(declare-fun tp!533701 () Bool)

(assert (=> b!1874255 (= e!1195834 (and tp!533700 tp!533701))))

(assert (=> b!1874228 (= tp!533678 e!1195834)))

(assert (= (and b!1874228 (is-Cons!20814 (exprs!1474 setElem!11533))) b!1874255))

(declare-fun b!1874260 () Bool)

(declare-fun e!1195837 () Bool)

(declare-fun tp!533704 () Bool)

(assert (=> b!1874260 (= e!1195837 (and tp_is_empty!8873 tp!533704))))

(assert (=> b!1874230 (= tp!533680 e!1195837)))

(assert (= (and b!1874230 (is-Cons!20815 (t!173114 input!3792))) b!1874260))

(push 1)

(assert (not b!1874250))

(assert (not b!1874260))

(assert (not d!572738))

(assert tp_is_empty!8873)

(assert (not b!1874244))

(assert (not d!572740))

(assert (not setNonEmpty!11539))

(assert (not b!1874245))

(assert (not b!1874255))

(assert (not d!572742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

