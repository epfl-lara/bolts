; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!542588 () Bool)

(assert start!542588)

(declare-fun b!5131445 () Bool)

(assert (=> b!5131445 true))

(declare-fun b!5131444 () Bool)

(declare-fun res!2185432 () Bool)

(declare-fun e!3200465 () Bool)

(assert (=> b!5131444 (=> (not res!2185432) (not e!3200465))))

(declare-datatypes ((C!28954 0))(
  ( (C!28955 (val!24129 Int)) )
))
(declare-datatypes ((Regex!14344 0))(
  ( (ElementMatch!14344 (c!882800 C!28954)) (Concat!23189 (regOne!29200 Regex!14344) (regTwo!29200 Regex!14344)) (EmptyExpr!14344) (Star!14344 (reg!14673 Regex!14344)) (EmptyLang!14344) (Union!14344 (regOne!29201 Regex!14344) (regTwo!29201 Regex!14344)) )
))
(declare-datatypes ((List!59621 0))(
  ( (Nil!59497) (Cons!59497 (h!65945 Regex!14344) (t!372648 List!59621)) )
))
(declare-datatypes ((Context!7456 0))(
  ( (Context!7457 (exprs!4228 List!59621)) )
))
(declare-fun lt!2117035 () (Set Context!7456))

(declare-fun lambda!254194 () Int)

(declare-fun lostCauseZipper!1188 ((Set Context!7456)) Bool)

(declare-fun forall!13769 ((Set Context!7456) Int) Bool)

(assert (=> b!5131444 (= res!2185432 (= (lostCauseZipper!1188 lt!2117035) (forall!13769 lt!2117035 lambda!254194)))))

(declare-fun res!2185433 () Bool)

(declare-fun e!3200466 () Bool)

(assert (=> start!542588 (=> (not res!2185433) (not e!3200466))))

(declare-fun z!1054 () (Set Context!7456))

(assert (=> start!542588 (= res!2185433 (lostCauseZipper!1188 z!1054))))

(assert (=> start!542588 e!3200466))

(declare-fun condSetEmpty!31099 () Bool)

(assert (=> start!542588 (= condSetEmpty!31099 (= z!1054 (as set.empty (Set Context!7456))))))

(declare-fun setRes!31099 () Bool)

(assert (=> start!542588 setRes!31099))

(declare-fun tp_is_empty!37861 () Bool)

(assert (=> start!542588 tp_is_empty!37861))

(assert (=> b!5131445 (= e!3200466 e!3200465)))

(declare-fun res!2185431 () Bool)

(assert (=> b!5131445 (=> (not res!2185431) (not e!3200465))))

(declare-fun lambda!254193 () Int)

(declare-fun flatMap!395 ((Set Context!7456) Int) (Set Context!7456))

(assert (=> b!5131445 (= res!2185431 (= lt!2117035 (flatMap!395 z!1054 lambda!254193)))))

(declare-fun a!1233 () C!28954)

(declare-fun derivationStepZipper!899 ((Set Context!7456) C!28954) (Set Context!7456))

(assert (=> b!5131445 (= lt!2117035 (derivationStepZipper!899 z!1054 a!1233))))

(declare-fun b!5131446 () Bool)

(assert (=> b!5131446 (= e!3200465 (not (forall!13769 z!1054 lambda!254194)))))

(declare-fun e!3200464 () Bool)

(declare-fun tp!1431501 () Bool)

(declare-fun setElem!31099 () Context!7456)

(declare-fun setNonEmpty!31099 () Bool)

(declare-fun inv!79042 (Context!7456) Bool)

(assert (=> setNonEmpty!31099 (= setRes!31099 (and tp!1431501 (inv!79042 setElem!31099) e!3200464))))

(declare-fun setRest!31099 () (Set Context!7456))

(assert (=> setNonEmpty!31099 (= z!1054 (set.union (set.insert setElem!31099 (as set.empty (Set Context!7456))) setRest!31099))))

(declare-fun setIsEmpty!31099 () Bool)

(assert (=> setIsEmpty!31099 setRes!31099))

(declare-fun b!5131447 () Bool)

(declare-fun tp!1431500 () Bool)

(assert (=> b!5131447 (= e!3200464 tp!1431500)))

(assert (= (and start!542588 res!2185433) b!5131445))

(assert (= (and b!5131445 res!2185431) b!5131444))

(assert (= (and b!5131444 res!2185432) b!5131446))

(assert (= (and start!542588 condSetEmpty!31099) setIsEmpty!31099))

(assert (= (and start!542588 (not condSetEmpty!31099)) setNonEmpty!31099))

(assert (= setNonEmpty!31099 b!5131447))

(declare-fun m!6196788 () Bool)

(assert (=> setNonEmpty!31099 m!6196788))

(declare-fun m!6196790 () Bool)

(assert (=> b!5131446 m!6196790))

(declare-fun m!6196792 () Bool)

(assert (=> start!542588 m!6196792))

(declare-fun m!6196794 () Bool)

(assert (=> b!5131445 m!6196794))

(declare-fun m!6196796 () Bool)

(assert (=> b!5131445 m!6196796))

(declare-fun m!6196798 () Bool)

(assert (=> b!5131444 m!6196798))

(declare-fun m!6196800 () Bool)

(assert (=> b!5131444 m!6196800))

(push 1)

(assert (not b!5131446))

(assert (not b!5131444))

(assert (not start!542588))

(assert (not setNonEmpty!31099))

(assert (not b!5131445))

(assert tp_is_empty!37861)

(assert (not b!5131447))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1660332 () Bool)

(declare-fun choose!37876 ((Set Context!7456) Int) (Set Context!7456))

(assert (=> d!1660332 (= (flatMap!395 z!1054 lambda!254193) (choose!37876 z!1054 lambda!254193))))

(declare-fun bs!1197613 () Bool)

(assert (= bs!1197613 d!1660332))

(declare-fun m!6196816 () Bool)

(assert (=> bs!1197613 m!6196816))

(assert (=> b!5131445 d!1660332))

(declare-fun bs!1197614 () Bool)

(declare-fun d!1660334 () Bool)

(assert (= bs!1197614 (and d!1660334 b!5131445)))

(declare-fun lambda!254205 () Int)

(assert (=> bs!1197614 (= lambda!254205 lambda!254193)))

(assert (=> d!1660334 true))

(assert (=> d!1660334 (= (derivationStepZipper!899 z!1054 a!1233) (flatMap!395 z!1054 lambda!254205))))

(declare-fun bs!1197615 () Bool)

(assert (= bs!1197615 d!1660334))

(declare-fun m!6196818 () Bool)

(assert (=> bs!1197615 m!6196818))

(assert (=> b!5131445 d!1660334))

(declare-fun bs!1197616 () Bool)

(declare-fun d!1660336 () Bool)

(assert (= bs!1197616 (and d!1660336 b!5131444)))

(declare-fun lambda!254218 () Int)

(assert (=> bs!1197616 (= lambda!254218 lambda!254194)))

(declare-fun bs!1197617 () Bool)

(declare-fun b!5131468 () Bool)

(assert (= bs!1197617 (and b!5131468 b!5131444)))

(declare-fun lambda!254219 () Int)

(assert (=> bs!1197617 (not (= lambda!254219 lambda!254194))))

(declare-fun bs!1197618 () Bool)

(assert (= bs!1197618 (and b!5131468 d!1660336)))

(assert (=> bs!1197618 (not (= lambda!254219 lambda!254218))))

(declare-fun bs!1197619 () Bool)

(declare-fun b!5131469 () Bool)

(assert (= bs!1197619 (and b!5131469 b!5131444)))

(declare-fun lambda!254220 () Int)

(assert (=> bs!1197619 (not (= lambda!254220 lambda!254194))))

(declare-fun bs!1197620 () Bool)

(assert (= bs!1197620 (and b!5131469 d!1660336)))

(assert (=> bs!1197620 (not (= lambda!254220 lambda!254218))))

(declare-fun bs!1197621 () Bool)

(assert (= bs!1197621 (and b!5131469 b!5131468)))

(assert (=> bs!1197621 (= lambda!254220 lambda!254219)))

(declare-datatypes ((Unit!150767 0))(
  ( (Unit!150768) )
))
(declare-fun e!3200482 () Unit!150767)

(declare-fun Unit!150769 () Unit!150767)

(assert (=> b!5131469 (= e!3200482 Unit!150769)))

(declare-datatypes ((List!59623 0))(
  ( (Nil!59499) (Cons!59499 (h!65947 Context!7456) (t!372650 List!59623)) )
))
(declare-fun lt!2117061 () List!59623)

(declare-fun call!357162 () List!59623)

(assert (=> b!5131469 (= lt!2117061 call!357162)))

(declare-fun lt!2117058 () Unit!150767)

(declare-fun lemmaForallThenNotExists!355 (List!59623 Int) Unit!150767)

(assert (=> b!5131469 (= lt!2117058 (lemmaForallThenNotExists!355 lt!2117061 lambda!254218))))

(declare-fun call!357163 () Bool)

(assert (=> b!5131469 (not call!357163)))

(declare-fun lt!2117060 () Unit!150767)

(assert (=> b!5131469 (= lt!2117060 lt!2117058)))

(declare-fun lt!2117056 () Bool)

(declare-datatypes ((List!59624 0))(
  ( (Nil!59500) (Cons!59500 (h!65948 C!28954) (t!372651 List!59624)) )
))
(declare-datatypes ((Option!14733 0))(
  ( (None!14732) (Some!14732 (v!50759 List!59624)) )
))
(declare-fun isEmpty!31994 (Option!14733) Bool)

(declare-fun getLanguageWitness!868 ((Set Context!7456)) Option!14733)

(assert (=> d!1660336 (= lt!2117056 (isEmpty!31994 (getLanguageWitness!868 lt!2117035)))))

(assert (=> d!1660336 (= lt!2117056 (forall!13769 lt!2117035 lambda!254218))))

(declare-fun lt!2117059 () Unit!150767)

(assert (=> d!1660336 (= lt!2117059 e!3200482)))

(declare-fun c!882816 () Bool)

(assert (=> d!1660336 (= c!882816 (not (forall!13769 lt!2117035 lambda!254218)))))

(assert (=> d!1660336 (= (lostCauseZipper!1188 lt!2117035) lt!2117056)))

(declare-fun Unit!150770 () Unit!150767)

(assert (=> b!5131468 (= e!3200482 Unit!150770)))

(declare-fun lt!2117055 () List!59623)

(assert (=> b!5131468 (= lt!2117055 call!357162)))

(declare-fun lt!2117057 () Unit!150767)

(declare-fun lemmaNotForallThenExists!380 (List!59623 Int) Unit!150767)

(assert (=> b!5131468 (= lt!2117057 (lemmaNotForallThenExists!380 lt!2117055 lambda!254218))))

(assert (=> b!5131468 call!357163))

(declare-fun lt!2117062 () Unit!150767)

(assert (=> b!5131468 (= lt!2117062 lt!2117057)))

(declare-fun bm!357158 () Bool)

(declare-fun exists!1650 (List!59623 Int) Bool)

(assert (=> bm!357158 (= call!357163 (exists!1650 (ite c!882816 lt!2117055 lt!2117061) (ite c!882816 lambda!254219 lambda!254220)))))

(declare-fun bm!357157 () Bool)

(declare-fun toList!8332 ((Set Context!7456)) List!59623)

(assert (=> bm!357157 (= call!357162 (toList!8332 lt!2117035))))

(assert (= (and d!1660336 c!882816) b!5131468))

(assert (= (and d!1660336 (not c!882816)) b!5131469))

(assert (= (or b!5131468 b!5131469) bm!357157))

(assert (= (or b!5131468 b!5131469) bm!357158))

(declare-fun m!6196820 () Bool)

(assert (=> bm!357157 m!6196820))

(declare-fun m!6196822 () Bool)

(assert (=> d!1660336 m!6196822))

(assert (=> d!1660336 m!6196822))

(declare-fun m!6196824 () Bool)

(assert (=> d!1660336 m!6196824))

(declare-fun m!6196826 () Bool)

(assert (=> d!1660336 m!6196826))

(assert (=> d!1660336 m!6196826))

(declare-fun m!6196828 () Bool)

(assert (=> b!5131468 m!6196828))

(declare-fun m!6196830 () Bool)

(assert (=> b!5131469 m!6196830))

(declare-fun m!6196832 () Bool)

(assert (=> bm!357158 m!6196832))

(assert (=> b!5131444 d!1660336))

(declare-fun d!1660338 () Bool)

(declare-fun lt!2117065 () Bool)

(declare-fun forall!13771 (List!59623 Int) Bool)

(assert (=> d!1660338 (= lt!2117065 (forall!13771 (toList!8332 lt!2117035) lambda!254194))))

(declare-fun choose!37877 ((Set Context!7456) Int) Bool)

(assert (=> d!1660338 (= lt!2117065 (choose!37877 lt!2117035 lambda!254194))))

(assert (=> d!1660338 (= (forall!13769 lt!2117035 lambda!254194) lt!2117065)))

(declare-fun bs!1197622 () Bool)

(assert (= bs!1197622 d!1660338))

(assert (=> bs!1197622 m!6196820))

(assert (=> bs!1197622 m!6196820))

(declare-fun m!6196834 () Bool)

(assert (=> bs!1197622 m!6196834))

(declare-fun m!6196836 () Bool)

(assert (=> bs!1197622 m!6196836))

(assert (=> b!5131444 d!1660338))

(declare-fun d!1660342 () Bool)

(declare-fun lt!2117066 () Bool)

(assert (=> d!1660342 (= lt!2117066 (forall!13771 (toList!8332 z!1054) lambda!254194))))

(assert (=> d!1660342 (= lt!2117066 (choose!37877 z!1054 lambda!254194))))

(assert (=> d!1660342 (= (forall!13769 z!1054 lambda!254194) lt!2117066)))

(declare-fun bs!1197623 () Bool)

(assert (= bs!1197623 d!1660342))

(declare-fun m!6196838 () Bool)

(assert (=> bs!1197623 m!6196838))

(assert (=> bs!1197623 m!6196838))

(declare-fun m!6196840 () Bool)

(assert (=> bs!1197623 m!6196840))

(declare-fun m!6196842 () Bool)

(assert (=> bs!1197623 m!6196842))

(assert (=> b!5131446 d!1660342))

(declare-fun d!1660344 () Bool)

(declare-fun lambda!254223 () Int)

(declare-fun forall!13772 (List!59621 Int) Bool)

(assert (=> d!1660344 (= (inv!79042 setElem!31099) (forall!13772 (exprs!4228 setElem!31099) lambda!254223))))

(declare-fun bs!1197624 () Bool)

(assert (= bs!1197624 d!1660344))

(declare-fun m!6196844 () Bool)

(assert (=> bs!1197624 m!6196844))

(assert (=> setNonEmpty!31099 d!1660344))

(declare-fun bs!1197625 () Bool)

(declare-fun d!1660346 () Bool)

(assert (= bs!1197625 (and d!1660346 b!5131444)))

(declare-fun lambda!254224 () Int)

(assert (=> bs!1197625 (= lambda!254224 lambda!254194)))

(declare-fun bs!1197626 () Bool)

(assert (= bs!1197626 (and d!1660346 d!1660336)))

(assert (=> bs!1197626 (= lambda!254224 lambda!254218)))

(declare-fun bs!1197627 () Bool)

(assert (= bs!1197627 (and d!1660346 b!5131468)))

(assert (=> bs!1197627 (not (= lambda!254224 lambda!254219))))

(declare-fun bs!1197628 () Bool)

(assert (= bs!1197628 (and d!1660346 b!5131469)))

(assert (=> bs!1197628 (not (= lambda!254224 lambda!254220))))

(declare-fun bs!1197630 () Bool)

(declare-fun b!5131470 () Bool)

(assert (= bs!1197630 (and b!5131470 b!5131468)))

(declare-fun lambda!254225 () Int)

(assert (=> bs!1197630 (= lambda!254225 lambda!254219)))

(declare-fun bs!1197631 () Bool)

(assert (= bs!1197631 (and b!5131470 d!1660346)))

(assert (=> bs!1197631 (not (= lambda!254225 lambda!254224))))

(declare-fun bs!1197632 () Bool)

(assert (= bs!1197632 (and b!5131470 b!5131444)))

(assert (=> bs!1197632 (not (= lambda!254225 lambda!254194))))

(declare-fun bs!1197633 () Bool)

(assert (= bs!1197633 (and b!5131470 d!1660336)))

(assert (=> bs!1197633 (not (= lambda!254225 lambda!254218))))

(declare-fun bs!1197634 () Bool)

(assert (= bs!1197634 (and b!5131470 b!5131469)))

(assert (=> bs!1197634 (= lambda!254225 lambda!254220)))

(declare-fun bs!1197635 () Bool)

(declare-fun b!5131471 () Bool)

(assert (= bs!1197635 (and b!5131471 b!5131470)))

(declare-fun lambda!254226 () Int)

(assert (=> bs!1197635 (= lambda!254226 lambda!254225)))

(declare-fun bs!1197636 () Bool)

(assert (= bs!1197636 (and b!5131471 b!5131468)))

(assert (=> bs!1197636 (= lambda!254226 lambda!254219)))

(declare-fun bs!1197637 () Bool)

(assert (= bs!1197637 (and b!5131471 d!1660346)))

(assert (=> bs!1197637 (not (= lambda!254226 lambda!254224))))

(declare-fun bs!1197638 () Bool)

(assert (= bs!1197638 (and b!5131471 b!5131444)))

(assert (=> bs!1197638 (not (= lambda!254226 lambda!254194))))

(declare-fun bs!1197639 () Bool)

(assert (= bs!1197639 (and b!5131471 d!1660336)))

(assert (=> bs!1197639 (not (= lambda!254226 lambda!254218))))

(declare-fun bs!1197640 () Bool)

(assert (= bs!1197640 (and b!5131471 b!5131469)))

(assert (=> bs!1197640 (= lambda!254226 lambda!254220)))

(declare-fun e!3200483 () Unit!150767)

(declare-fun Unit!150771 () Unit!150767)

(assert (=> b!5131471 (= e!3200483 Unit!150771)))

(declare-fun lt!2117075 () List!59623)

(declare-fun call!357164 () List!59623)

(assert (=> b!5131471 (= lt!2117075 call!357164)))

(declare-fun lt!2117072 () Unit!150767)

(assert (=> b!5131471 (= lt!2117072 (lemmaForallThenNotExists!355 lt!2117075 lambda!254224))))

(declare-fun call!357165 () Bool)

(assert (=> b!5131471 (not call!357165)))

(declare-fun lt!2117074 () Unit!150767)

(assert (=> b!5131471 (= lt!2117074 lt!2117072)))

(declare-fun lt!2117070 () Bool)

(assert (=> d!1660346 (= lt!2117070 (isEmpty!31994 (getLanguageWitness!868 z!1054)))))

(assert (=> d!1660346 (= lt!2117070 (forall!13769 z!1054 lambda!254224))))

(declare-fun lt!2117073 () Unit!150767)

(assert (=> d!1660346 (= lt!2117073 e!3200483)))

(declare-fun c!882817 () Bool)

(assert (=> d!1660346 (= c!882817 (not (forall!13769 z!1054 lambda!254224)))))

(assert (=> d!1660346 (= (lostCauseZipper!1188 z!1054) lt!2117070)))

(declare-fun Unit!150772 () Unit!150767)

(assert (=> b!5131470 (= e!3200483 Unit!150772)))

(declare-fun lt!2117069 () List!59623)

(assert (=> b!5131470 (= lt!2117069 call!357164)))

(declare-fun lt!2117071 () Unit!150767)

(assert (=> b!5131470 (= lt!2117071 (lemmaNotForallThenExists!380 lt!2117069 lambda!254224))))

(assert (=> b!5131470 call!357165))

(declare-fun lt!2117076 () Unit!150767)

(assert (=> b!5131470 (= lt!2117076 lt!2117071)))

(declare-fun bm!357160 () Bool)

(assert (=> bm!357160 (= call!357165 (exists!1650 (ite c!882817 lt!2117069 lt!2117075) (ite c!882817 lambda!254225 lambda!254226)))))

(declare-fun bm!357159 () Bool)

(assert (=> bm!357159 (= call!357164 (toList!8332 z!1054))))

(assert (= (and d!1660346 c!882817) b!5131470))

(assert (= (and d!1660346 (not c!882817)) b!5131471))

(assert (= (or b!5131470 b!5131471) bm!357159))

(assert (= (or b!5131470 b!5131471) bm!357160))

(assert (=> bm!357159 m!6196838))

(declare-fun m!6196852 () Bool)

(assert (=> d!1660346 m!6196852))

(assert (=> d!1660346 m!6196852))

(declare-fun m!6196854 () Bool)

(assert (=> d!1660346 m!6196854))

(declare-fun m!6196856 () Bool)

(assert (=> d!1660346 m!6196856))

(assert (=> d!1660346 m!6196856))

(declare-fun m!6196858 () Bool)

(assert (=> b!5131470 m!6196858))

(declare-fun m!6196860 () Bool)

(assert (=> b!5131471 m!6196860))

(declare-fun m!6196862 () Bool)

(assert (=> bm!357160 m!6196862))

(assert (=> start!542588 d!1660346))

(declare-fun condSetEmpty!31105 () Bool)

(assert (=> setNonEmpty!31099 (= condSetEmpty!31105 (= setRest!31099 (as set.empty (Set Context!7456))))))

(declare-fun setRes!31105 () Bool)

(assert (=> setNonEmpty!31099 (= tp!1431501 setRes!31105)))

(declare-fun setIsEmpty!31105 () Bool)

(assert (=> setIsEmpty!31105 setRes!31105))

(declare-fun tp!1431512 () Bool)

(declare-fun setNonEmpty!31105 () Bool)

(declare-fun setElem!31105 () Context!7456)

(declare-fun e!3200486 () Bool)

(assert (=> setNonEmpty!31105 (= setRes!31105 (and tp!1431512 (inv!79042 setElem!31105) e!3200486))))

(declare-fun setRest!31105 () (Set Context!7456))

(assert (=> setNonEmpty!31105 (= setRest!31099 (set.union (set.insert setElem!31105 (as set.empty (Set Context!7456))) setRest!31105))))

(declare-fun b!5131476 () Bool)

(declare-fun tp!1431513 () Bool)

(assert (=> b!5131476 (= e!3200486 tp!1431513)))

(assert (= (and setNonEmpty!31099 condSetEmpty!31105) setIsEmpty!31105))

(assert (= (and setNonEmpty!31099 (not condSetEmpty!31105)) setNonEmpty!31105))

(assert (= setNonEmpty!31105 b!5131476))

(declare-fun m!6196866 () Bool)

(assert (=> setNonEmpty!31105 m!6196866))

(declare-fun b!5131481 () Bool)

(declare-fun e!3200489 () Bool)

(declare-fun tp!1431518 () Bool)

(declare-fun tp!1431519 () Bool)

(assert (=> b!5131481 (= e!3200489 (and tp!1431518 tp!1431519))))

(assert (=> b!5131447 (= tp!1431500 e!3200489)))

(assert (= (and b!5131447 (is-Cons!59497 (exprs!4228 setElem!31099))) b!5131481))

(push 1)

(assert (not d!1660332))

(assert (not bm!357159))

(assert (not b!5131476))

(assert (not b!5131469))

(assert (not b!5131481))

(assert (not b!5131468))

(assert (not d!1660338))

(assert (not b!5131470))

(assert tp_is_empty!37861)

(assert (not b!5131471))

(assert (not bm!357160))

(assert (not setNonEmpty!31105))

(assert (not d!1660342))

(assert (not d!1660344))

(assert (not d!1660334))

(assert (not bm!357157))

(assert (not d!1660336))

(assert (not d!1660346))

(assert (not bm!357158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

