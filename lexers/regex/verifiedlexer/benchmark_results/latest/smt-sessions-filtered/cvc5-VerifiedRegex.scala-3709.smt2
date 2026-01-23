; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!208800 () Bool)

(assert start!208800)

(assert (=> start!208800 true))

(declare-fun b!2152295 () Bool)

(declare-fun e!1376497 () Bool)

(declare-datatypes ((C!11914 0))(
  ( (C!11915 (val!6943 Int)) )
))
(declare-datatypes ((List!24821 0))(
  ( (Nil!24737) (Cons!24737 (h!30138 C!11914) (t!197369 List!24821)) )
))
(declare-datatypes ((IArray!16045 0))(
  ( (IArray!16046 (innerList!8080 List!24821)) )
))
(declare-datatypes ((Conc!8020 0))(
  ( (Node!8020 (left!19019 Conc!8020) (right!19349 Conc!8020) (csize!16270 Int) (cheight!8231 Int)) (Leaf!11730 (xs!10962 IArray!16045) (csize!16271 Int)) (Empty!8020) )
))
(declare-datatypes ((Regex!5884 0))(
  ( (ElementMatch!5884 (c!341345 C!11914)) (Concat!10186 (regOne!12280 Regex!5884) (regTwo!12280 Regex!5884)) (EmptyExpr!5884) (Star!5884 (reg!6213 Regex!5884)) (EmptyLang!5884) (Union!5884 (regOne!12281 Regex!5884) (regTwo!12281 Regex!5884)) )
))
(declare-datatypes ((List!24822 0))(
  ( (Nil!24738) (Cons!24738 (h!30139 Regex!5884) (t!197370 List!24822)) )
))
(declare-datatypes ((Context!2908 0))(
  ( (Context!2909 (exprs!1954 List!24822)) )
))
(declare-datatypes ((BalanceConc!15802 0))(
  ( (BalanceConc!15803 (c!341346 Conc!8020)) )
))
(declare-datatypes ((StackFrame!302 0))(
  ( (StackFrame!303 (z!5953 (Set Context!2908)) (from!2796 Int) (lastNullablePos!483 Int) (res!928051 Int) (totalInput!3285 BalanceConc!15802)) )
))
(declare-datatypes ((List!24823 0))(
  ( (Nil!24739) (Cons!24739 (h!30140 StackFrame!302) (t!197371 List!24823)) )
))
(declare-fun s!7978 () List!24823)

(declare-fun tp!669122 () Bool)

(declare-fun inv!32640 (Conc!8020) Bool)

(assert (=> b!2152295 (= e!1376497 (and (inv!32640 (c!341346 (totalInput!3285 (h!30140 s!7978)))) tp!669122))))

(declare-fun res!928050 () Bool)

(declare-fun e!1376496 () Bool)

(assert (=> start!208800 (=> (not res!928050) (not e!1376496))))

(declare-fun lambda!81069 () Int)

(declare-fun forall!5060 (List!24823 Int) Bool)

(assert (=> start!208800 (= res!928050 (forall!5060 s!7978 lambda!81069))))

(assert (=> start!208800 e!1376496))

(declare-fun e!1376495 () Bool)

(assert (=> start!208800 e!1376495))

(assert (=> start!208800 true))

(declare-fun b!2152296 () Bool)

(assert (=> b!2152296 (= e!1376496 (not (forall!5060 (t!197371 s!7978) lambda!81069)))))

(declare-datatypes ((Unit!37884 0))(
  ( (Unit!37885) )
))
(declare-fun lt!801261 () Unit!37884)

(declare-fun lemmaInv!798 (StackFrame!302) Unit!37884)

(assert (=> b!2152296 (= lt!801261 (lemmaInv!798 (h!30140 s!7978)))))

(declare-fun setElem!17335 () Context!2908)

(declare-fun setNonEmpty!17335 () Bool)

(declare-fun tp!669123 () Bool)

(declare-fun setRes!17335 () Bool)

(declare-fun e!1376499 () Bool)

(declare-fun inv!32641 (Context!2908) Bool)

(assert (=> setNonEmpty!17335 (= setRes!17335 (and tp!669123 (inv!32641 setElem!17335) e!1376499))))

(declare-fun setRest!17335 () (Set Context!2908))

(assert (=> setNonEmpty!17335 (= (z!5953 (h!30140 s!7978)) (set.union (set.insert setElem!17335 (as set.empty (Set Context!2908))) setRest!17335))))

(declare-fun b!2152297 () Bool)

(declare-fun res!928049 () Bool)

(assert (=> b!2152297 (=> (not res!928049) (not e!1376496))))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(assert (=> b!2152297 (= res!928049 (and (= res1!7 res2!7) (not (is-Nil!24739 s!7978))))))

(declare-fun b!2152298 () Bool)

(declare-fun tp!669125 () Bool)

(assert (=> b!2152298 (= e!1376499 tp!669125)))

(declare-fun b!2152299 () Bool)

(declare-fun e!1376498 () Bool)

(declare-fun tp!669124 () Bool)

(declare-fun inv!32642 (StackFrame!302) Bool)

(assert (=> b!2152299 (= e!1376495 (and (inv!32642 (h!30140 s!7978)) e!1376498 tp!669124))))

(declare-fun setIsEmpty!17335 () Bool)

(assert (=> setIsEmpty!17335 setRes!17335))

(declare-fun b!2152300 () Bool)

(declare-fun inv!32643 (BalanceConc!15802) Bool)

(assert (=> b!2152300 (= e!1376498 (and setRes!17335 (inv!32643 (totalInput!3285 (h!30140 s!7978))) e!1376497))))

(declare-fun condSetEmpty!17335 () Bool)

(assert (=> b!2152300 (= condSetEmpty!17335 (= (z!5953 (h!30140 s!7978)) (as set.empty (Set Context!2908))))))

(assert (= (and start!208800 res!928050) b!2152297))

(assert (= (and b!2152297 res!928049) b!2152296))

(assert (= (and b!2152300 condSetEmpty!17335) setIsEmpty!17335))

(assert (= (and b!2152300 (not condSetEmpty!17335)) setNonEmpty!17335))

(assert (= setNonEmpty!17335 b!2152298))

(assert (= b!2152300 b!2152295))

(assert (= b!2152299 b!2152300))

(assert (= (and start!208800 (is-Cons!24739 s!7978)) b!2152299))

(declare-fun m!2594566 () Bool)

(assert (=> b!2152299 m!2594566))

(declare-fun m!2594568 () Bool)

(assert (=> b!2152300 m!2594568))

(declare-fun m!2594570 () Bool)

(assert (=> b!2152295 m!2594570))

(declare-fun m!2594572 () Bool)

(assert (=> b!2152296 m!2594572))

(declare-fun m!2594574 () Bool)

(assert (=> b!2152296 m!2594574))

(declare-fun m!2594576 () Bool)

(assert (=> setNonEmpty!17335 m!2594576))

(declare-fun m!2594578 () Bool)

(assert (=> start!208800 m!2594578))

(push 1)

(assert (not b!2152295))

(assert (not b!2152299))

(assert (not b!2152300))

(assert (not b!2152298))

(assert (not b!2152296))

(assert (not start!208800))

(assert (not setNonEmpty!17335))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!645872 () Bool)

(declare-fun lambda!81077 () Int)

(declare-fun forall!5062 (List!24822 Int) Bool)

(assert (=> d!645872 (= (inv!32641 setElem!17335) (forall!5062 (exprs!1954 setElem!17335) lambda!81077))))

(declare-fun bs!445681 () Bool)

(assert (= bs!445681 d!645872))

(declare-fun m!2594596 () Bool)

(assert (=> bs!445681 m!2594596))

(assert (=> setNonEmpty!17335 d!645872))

(declare-fun d!645878 () Bool)

(declare-fun isBalanced!2487 (Conc!8020) Bool)

(assert (=> d!645878 (= (inv!32643 (totalInput!3285 (h!30140 s!7978))) (isBalanced!2487 (c!341346 (totalInput!3285 (h!30140 s!7978)))))))

(declare-fun bs!445682 () Bool)

(assert (= bs!445682 d!645878))

(declare-fun m!2594598 () Bool)

(assert (=> bs!445682 m!2594598))

(assert (=> b!2152300 d!645878))

(declare-fun d!645880 () Bool)

(declare-fun res!928069 () Bool)

(declare-fun e!1376525 () Bool)

(assert (=> d!645880 (=> res!928069 e!1376525)))

(assert (=> d!645880 (= res!928069 (is-Nil!24739 s!7978))))

(assert (=> d!645880 (= (forall!5060 s!7978 lambda!81069) e!1376525)))

(declare-fun b!2152333 () Bool)

(declare-fun e!1376526 () Bool)

(assert (=> b!2152333 (= e!1376525 e!1376526)))

(declare-fun res!928070 () Bool)

(assert (=> b!2152333 (=> (not res!928070) (not e!1376526))))

(declare-fun dynLambda!11401 (Int StackFrame!302) Bool)

(assert (=> b!2152333 (= res!928070 (dynLambda!11401 lambda!81069 (h!30140 s!7978)))))

(declare-fun b!2152334 () Bool)

(assert (=> b!2152334 (= e!1376526 (forall!5060 (t!197371 s!7978) lambda!81069))))

(assert (= (and d!645880 (not res!928069)) b!2152333))

(assert (= (and b!2152333 res!928070) b!2152334))

(declare-fun b_lambda!70859 () Bool)

(assert (=> (not b_lambda!70859) (not b!2152333)))

(declare-fun m!2594600 () Bool)

(assert (=> b!2152333 m!2594600))

(assert (=> b!2152334 m!2594572))

(assert (=> start!208800 d!645880))

(declare-fun d!645882 () Bool)

(declare-fun res!928071 () Bool)

(declare-fun e!1376527 () Bool)

(assert (=> d!645882 (=> res!928071 e!1376527)))

(assert (=> d!645882 (= res!928071 (is-Nil!24739 (t!197371 s!7978)))))

(assert (=> d!645882 (= (forall!5060 (t!197371 s!7978) lambda!81069) e!1376527)))

(declare-fun b!2152335 () Bool)

(declare-fun e!1376528 () Bool)

(assert (=> b!2152335 (= e!1376527 e!1376528)))

(declare-fun res!928072 () Bool)

(assert (=> b!2152335 (=> (not res!928072) (not e!1376528))))

(assert (=> b!2152335 (= res!928072 (dynLambda!11401 lambda!81069 (h!30140 (t!197371 s!7978))))))

(declare-fun b!2152336 () Bool)

(assert (=> b!2152336 (= e!1376528 (forall!5060 (t!197371 (t!197371 s!7978)) lambda!81069))))

(assert (= (and d!645882 (not res!928071)) b!2152335))

(assert (= (and b!2152335 res!928072) b!2152336))

(declare-fun b_lambda!70861 () Bool)

(assert (=> (not b_lambda!70861) (not b!2152335)))

(declare-fun m!2594602 () Bool)

(assert (=> b!2152335 m!2594602))

(declare-fun m!2594604 () Bool)

(assert (=> b!2152336 m!2594604))

(assert (=> b!2152296 d!645882))

(declare-fun b!2152349 () Bool)

(declare-fun res!928090 () Bool)

(declare-fun e!1376534 () Bool)

(assert (=> b!2152349 (=> (not res!928090) (not e!1376534))))

(declare-fun e!1376533 () Bool)

(assert (=> b!2152349 (= res!928090 e!1376533)))

(declare-fun res!928089 () Bool)

(assert (=> b!2152349 (=> res!928089 e!1376533)))

(declare-fun nullableZipper!206 ((Set Context!2908)) Bool)

(assert (=> b!2152349 (= res!928089 (not (nullableZipper!206 (z!5953 (h!30140 s!7978)))))))

(declare-fun b!2152350 () Bool)

(declare-fun furthestNullablePosition!115 ((Set Context!2908) Int BalanceConc!15802 Int Int) Int)

(declare-fun size!19347 (BalanceConc!15802) Int)

(assert (=> b!2152350 (= e!1376534 (= (res!928051 (h!30140 s!7978)) (furthestNullablePosition!115 (z!5953 (h!30140 s!7978)) (from!2796 (h!30140 s!7978)) (totalInput!3285 (h!30140 s!7978)) (size!19347 (totalInput!3285 (h!30140 s!7978))) (lastNullablePos!483 (h!30140 s!7978)))))))

(declare-fun b!2152351 () Bool)

(declare-fun res!928087 () Bool)

(assert (=> b!2152351 (=> (not res!928087) (not e!1376534))))

(assert (=> b!2152351 (= res!928087 (and (>= (lastNullablePos!483 (h!30140 s!7978)) (- 1)) (< (lastNullablePos!483 (h!30140 s!7978)) (from!2796 (h!30140 s!7978)))))))

(declare-fun b!2152352 () Bool)

(declare-fun res!928088 () Bool)

(assert (=> b!2152352 (=> (not res!928088) (not e!1376534))))

(assert (=> b!2152352 (= res!928088 (= (size!19347 (totalInput!3285 (h!30140 s!7978))) (size!19347 (totalInput!3285 (h!30140 s!7978)))))))

(declare-fun d!645884 () Bool)

(assert (=> d!645884 e!1376534))

(declare-fun res!928085 () Bool)

(assert (=> d!645884 (=> (not res!928085) (not e!1376534))))

(assert (=> d!645884 (= res!928085 (>= (from!2796 (h!30140 s!7978)) 0))))

(declare-fun Unit!37888 () Unit!37884)

(assert (=> d!645884 (= (lemmaInv!798 (h!30140 s!7978)) Unit!37888)))

(declare-fun b!2152353 () Bool)

(declare-fun res!928086 () Bool)

(assert (=> b!2152353 (=> (not res!928086) (not e!1376534))))

(assert (=> b!2152353 (= res!928086 (<= (from!2796 (h!30140 s!7978)) (size!19347 (totalInput!3285 (h!30140 s!7978)))))))

(declare-fun b!2152354 () Bool)

(assert (=> b!2152354 (= e!1376533 (= (lastNullablePos!483 (h!30140 s!7978)) (- (from!2796 (h!30140 s!7978)) 1)))))

(assert (= (and d!645884 res!928085) b!2152353))

(assert (= (and b!2152353 res!928086) b!2152352))

(assert (= (and b!2152352 res!928088) b!2152351))

(assert (= (and b!2152351 res!928087) b!2152349))

(assert (= (and b!2152349 (not res!928089)) b!2152354))

(assert (= (and b!2152349 res!928090) b!2152350))

(declare-fun m!2594606 () Bool)

(assert (=> b!2152349 m!2594606))

(declare-fun m!2594608 () Bool)

(assert (=> b!2152350 m!2594608))

(assert (=> b!2152350 m!2594608))

(declare-fun m!2594610 () Bool)

(assert (=> b!2152350 m!2594610))

(assert (=> b!2152352 m!2594608))

(assert (=> b!2152353 m!2594608))

(assert (=> b!2152296 d!645884))

(declare-fun d!645886 () Bool)

(declare-fun c!341351 () Bool)

(assert (=> d!645886 (= c!341351 (is-Node!8020 (c!341346 (totalInput!3285 (h!30140 s!7978)))))))

(declare-fun e!1376539 () Bool)

(assert (=> d!645886 (= (inv!32640 (c!341346 (totalInput!3285 (h!30140 s!7978)))) e!1376539)))

(declare-fun b!2152361 () Bool)

(declare-fun inv!32648 (Conc!8020) Bool)

(assert (=> b!2152361 (= e!1376539 (inv!32648 (c!341346 (totalInput!3285 (h!30140 s!7978)))))))

(declare-fun b!2152362 () Bool)

(declare-fun e!1376540 () Bool)

(assert (=> b!2152362 (= e!1376539 e!1376540)))

(declare-fun res!928093 () Bool)

(assert (=> b!2152362 (= res!928093 (not (is-Leaf!11730 (c!341346 (totalInput!3285 (h!30140 s!7978))))))))

(assert (=> b!2152362 (=> res!928093 e!1376540)))

(declare-fun b!2152363 () Bool)

(declare-fun inv!32649 (Conc!8020) Bool)

(assert (=> b!2152363 (= e!1376540 (inv!32649 (c!341346 (totalInput!3285 (h!30140 s!7978)))))))

(assert (= (and d!645886 c!341351) b!2152361))

(assert (= (and d!645886 (not c!341351)) b!2152362))

(assert (= (and b!2152362 (not res!928093)) b!2152363))

(declare-fun m!2594612 () Bool)

(assert (=> b!2152361 m!2594612))

(declare-fun m!2594614 () Bool)

(assert (=> b!2152363 m!2594614))

(assert (=> b!2152295 d!645886))

(declare-fun b!2152376 () Bool)

(declare-fun res!928106 () Bool)

(declare-fun e!1376545 () Bool)

(assert (=> b!2152376 (=> (not res!928106) (not e!1376545))))

(assert (=> b!2152376 (= res!928106 (= (size!19347 (totalInput!3285 (h!30140 s!7978))) (size!19347 (totalInput!3285 (h!30140 s!7978)))))))

(declare-fun b!2152377 () Bool)

(declare-fun res!928110 () Bool)

(assert (=> b!2152377 (=> (not res!928110) (not e!1376545))))

(assert (=> b!2152377 (= res!928110 (and (>= (lastNullablePos!483 (h!30140 s!7978)) (- 1)) (< (lastNullablePos!483 (h!30140 s!7978)) (from!2796 (h!30140 s!7978)))))))

(declare-fun b!2152378 () Bool)

(assert (=> b!2152378 (= e!1376545 (= (res!928051 (h!30140 s!7978)) (furthestNullablePosition!115 (z!5953 (h!30140 s!7978)) (from!2796 (h!30140 s!7978)) (totalInput!3285 (h!30140 s!7978)) (size!19347 (totalInput!3285 (h!30140 s!7978))) (lastNullablePos!483 (h!30140 s!7978)))))))

(declare-fun b!2152379 () Bool)

(declare-fun res!928111 () Bool)

(assert (=> b!2152379 (=> (not res!928111) (not e!1376545))))

(assert (=> b!2152379 (= res!928111 (<= (from!2796 (h!30140 s!7978)) (size!19347 (totalInput!3285 (h!30140 s!7978)))))))

(declare-fun b!2152380 () Bool)

(declare-fun e!1376546 () Bool)

(assert (=> b!2152380 (= e!1376546 (= (lastNullablePos!483 (h!30140 s!7978)) (- (from!2796 (h!30140 s!7978)) 1)))))

(declare-fun d!645888 () Bool)

(declare-fun res!928109 () Bool)

(assert (=> d!645888 (=> (not res!928109) (not e!1376545))))

(assert (=> d!645888 (= res!928109 (>= (from!2796 (h!30140 s!7978)) 0))))

(assert (=> d!645888 (= (inv!32642 (h!30140 s!7978)) e!1376545)))

(declare-fun b!2152381 () Bool)

(declare-fun res!928107 () Bool)

(assert (=> b!2152381 (=> (not res!928107) (not e!1376545))))

(assert (=> b!2152381 (= res!928107 e!1376546)))

(declare-fun res!928108 () Bool)

(assert (=> b!2152381 (=> res!928108 e!1376546)))

(assert (=> b!2152381 (= res!928108 (not (nullableZipper!206 (z!5953 (h!30140 s!7978)))))))

(assert (= (and d!645888 res!928109) b!2152379))

(assert (= (and b!2152379 res!928111) b!2152376))

(assert (= (and b!2152376 res!928106) b!2152377))

(assert (= (and b!2152377 res!928110) b!2152381))

(assert (= (and b!2152381 (not res!928108)) b!2152380))

(assert (= (and b!2152381 res!928107) b!2152378))

(assert (=> b!2152376 m!2594608))

(assert (=> b!2152378 m!2594608))

(assert (=> b!2152378 m!2594608))

(assert (=> b!2152378 m!2594610))

(assert (=> b!2152379 m!2594608))

(assert (=> b!2152381 m!2594606))

(assert (=> b!2152299 d!645888))

(declare-fun condSetEmpty!17341 () Bool)

(assert (=> setNonEmpty!17335 (= condSetEmpty!17341 (= setRest!17335 (as set.empty (Set Context!2908))))))

(declare-fun setRes!17341 () Bool)

(assert (=> setNonEmpty!17335 (= tp!669123 setRes!17341)))

(declare-fun setIsEmpty!17341 () Bool)

(assert (=> setIsEmpty!17341 setRes!17341))

(declare-fun tp!669143 () Bool)

(declare-fun setNonEmpty!17341 () Bool)

(declare-fun setElem!17341 () Context!2908)

(declare-fun e!1376549 () Bool)

(assert (=> setNonEmpty!17341 (= setRes!17341 (and tp!669143 (inv!32641 setElem!17341) e!1376549))))

(declare-fun setRest!17341 () (Set Context!2908))

(assert (=> setNonEmpty!17341 (= setRest!17335 (set.union (set.insert setElem!17341 (as set.empty (Set Context!2908))) setRest!17341))))

(declare-fun b!2152386 () Bool)

(declare-fun tp!669142 () Bool)

(assert (=> b!2152386 (= e!1376549 tp!669142)))

(assert (= (and setNonEmpty!17335 condSetEmpty!17341) setIsEmpty!17341))

(assert (= (and setNonEmpty!17335 (not condSetEmpty!17341)) setNonEmpty!17341))

(assert (= setNonEmpty!17341 b!2152386))

(declare-fun m!2594616 () Bool)

(assert (=> setNonEmpty!17341 m!2594616))

(declare-fun e!1376555 () Bool)

(declare-fun tp!669152 () Bool)

(declare-fun tp!669151 () Bool)

(declare-fun b!2152395 () Bool)

(assert (=> b!2152395 (= e!1376555 (and (inv!32640 (left!19019 (c!341346 (totalInput!3285 (h!30140 s!7978))))) tp!669152 (inv!32640 (right!19349 (c!341346 (totalInput!3285 (h!30140 s!7978))))) tp!669151))))

(declare-fun b!2152397 () Bool)

(declare-fun e!1376554 () Bool)

(declare-fun tp!669150 () Bool)

(assert (=> b!2152397 (= e!1376554 tp!669150)))

(declare-fun b!2152396 () Bool)

(declare-fun inv!32650 (IArray!16045) Bool)

(assert (=> b!2152396 (= e!1376555 (and (inv!32650 (xs!10962 (c!341346 (totalInput!3285 (h!30140 s!7978))))) e!1376554))))

(assert (=> b!2152295 (= tp!669122 (and (inv!32640 (c!341346 (totalInput!3285 (h!30140 s!7978)))) e!1376555))))

(assert (= (and b!2152295 (is-Node!8020 (c!341346 (totalInput!3285 (h!30140 s!7978))))) b!2152395))

(assert (= b!2152396 b!2152397))

(assert (= (and b!2152295 (is-Leaf!11730 (c!341346 (totalInput!3285 (h!30140 s!7978))))) b!2152396))

(declare-fun m!2594618 () Bool)

(assert (=> b!2152395 m!2594618))

(declare-fun m!2594620 () Bool)

(assert (=> b!2152395 m!2594620))

(declare-fun m!2594622 () Bool)

(assert (=> b!2152396 m!2594622))

(assert (=> b!2152295 m!2594570))

(declare-fun e!1376567 () Bool)

(assert (=> b!2152299 (= tp!669124 e!1376567)))

(declare-fun e!1376565 () Bool)

(declare-fun b!2152408 () Bool)

(declare-fun e!1376564 () Bool)

(declare-fun setRes!17344 () Bool)

(assert (=> b!2152408 (= e!1376564 (and setRes!17344 (inv!32643 (totalInput!3285 (h!30140 (t!197371 s!7978)))) e!1376565))))

(declare-fun condSetEmpty!17344 () Bool)

(assert (=> b!2152408 (= condSetEmpty!17344 (= (z!5953 (h!30140 (t!197371 s!7978))) (as set.empty (Set Context!2908))))))

(declare-fun setIsEmpty!17344 () Bool)

(assert (=> setIsEmpty!17344 setRes!17344))

(declare-fun b!2152409 () Bool)

(declare-fun e!1376566 () Bool)

(declare-fun tp!669164 () Bool)

(assert (=> b!2152409 (= e!1376566 tp!669164)))

(declare-fun tp!669163 () Bool)

(declare-fun setElem!17344 () Context!2908)

(declare-fun setNonEmpty!17344 () Bool)

(assert (=> setNonEmpty!17344 (= setRes!17344 (and tp!669163 (inv!32641 setElem!17344) e!1376566))))

(declare-fun setRest!17344 () (Set Context!2908))

(assert (=> setNonEmpty!17344 (= (z!5953 (h!30140 (t!197371 s!7978))) (set.union (set.insert setElem!17344 (as set.empty (Set Context!2908))) setRest!17344))))

(declare-fun b!2152410 () Bool)

(declare-fun tp!669161 () Bool)

(assert (=> b!2152410 (= e!1376567 (and (inv!32642 (h!30140 (t!197371 s!7978))) e!1376564 tp!669161))))

(declare-fun b!2152411 () Bool)

(declare-fun tp!669162 () Bool)

(assert (=> b!2152411 (= e!1376565 (and (inv!32640 (c!341346 (totalInput!3285 (h!30140 (t!197371 s!7978))))) tp!669162))))

(assert (= (and b!2152408 condSetEmpty!17344) setIsEmpty!17344))

(assert (= (and b!2152408 (not condSetEmpty!17344)) setNonEmpty!17344))

(assert (= setNonEmpty!17344 b!2152409))

(assert (= b!2152408 b!2152411))

(assert (= b!2152410 b!2152408))

(assert (= (and b!2152299 (is-Cons!24739 (t!197371 s!7978))) b!2152410))

(declare-fun m!2594624 () Bool)

(assert (=> b!2152408 m!2594624))

(declare-fun m!2594626 () Bool)

(assert (=> setNonEmpty!17344 m!2594626))

(declare-fun m!2594628 () Bool)

(assert (=> b!2152410 m!2594628))

(declare-fun m!2594630 () Bool)

(assert (=> b!2152411 m!2594630))

(declare-fun b!2152416 () Bool)

(declare-fun e!1376570 () Bool)

(declare-fun tp!669169 () Bool)

(declare-fun tp!669170 () Bool)

(assert (=> b!2152416 (= e!1376570 (and tp!669169 tp!669170))))

(assert (=> b!2152298 (= tp!669125 e!1376570)))

(assert (= (and b!2152298 (is-Cons!24738 (exprs!1954 setElem!17335))) b!2152416))

(declare-fun b_lambda!70863 () Bool)

(assert (= b_lambda!70861 (or start!208800 b_lambda!70863)))

(declare-fun bs!445683 () Bool)

(declare-fun d!645890 () Bool)

(assert (= bs!445683 (and d!645890 start!208800)))

(assert (=> bs!445683 (= (dynLambda!11401 lambda!81069 (h!30140 (t!197371 s!7978))) (= (res!928051 (h!30140 (t!197371 s!7978))) res1!7))))

(assert (=> b!2152335 d!645890))

(declare-fun b_lambda!70865 () Bool)

(assert (= b_lambda!70859 (or start!208800 b_lambda!70865)))

(declare-fun bs!445684 () Bool)

(declare-fun d!645892 () Bool)

(assert (= bs!445684 (and d!645892 start!208800)))

(assert (=> bs!445684 (= (dynLambda!11401 lambda!81069 (h!30140 s!7978)) (= (res!928051 (h!30140 s!7978)) res1!7))))

(assert (=> b!2152333 d!645892))

(push 1)

(assert (not b!2152353))

(assert (not b!2152349))

(assert (not b!2152408))

(assert (not b!2152352))

(assert (not b!2152378))

(assert (not d!645872))

(assert (not b!2152416))

(assert (not b_lambda!70863))

(assert (not b!2152381))

(assert (not b!2152411))

(assert (not b!2152396))

(assert (not b!2152410))

(assert (not b!2152376))

(assert (not b!2152336))

(assert (not b!2152397))

(assert (not b!2152379))

(assert (not b!2152395))

(assert (not b!2152361))

(assert (not b!2152295))

(assert (not b!2152363))

(assert (not b!2152409))

(assert (not b!2152334))

(assert (not setNonEmpty!17344))

(assert (not d!645878))

(assert (not b!2152350))

(assert (not setNonEmpty!17341))

(assert (not b_lambda!70865))

(assert (not b!2152386))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

