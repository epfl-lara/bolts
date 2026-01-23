; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272272 () Bool)

(assert start!272272)

(declare-fun res!1170764 () Bool)

(declare-fun e!1778557 () Bool)

(assert (=> start!272272 (=> (not res!1170764) (not e!1778557))))

(declare-datatypes ((T!54822 0))(
  ( (T!54823 (val!10336 Int)) )
))
(declare-datatypes ((List!32973 0))(
  ( (Nil!32856) (Cons!32856 (h!38276 T!54822) (t!229932 List!32973)) )
))
(declare-fun ll!54 () List!32973)

(get-info :version)

(assert (=> start!272272 (= res!1170764 (not ((_ is Nil!32856) ll!54)))))

(assert (=> start!272272 e!1778557))

(declare-fun e!1778556 () Bool)

(assert (=> start!272272 e!1778556))

(declare-fun e!1778555 () Bool)

(assert (=> start!272272 e!1778555))

(declare-fun b!2812357 () Bool)

(declare-fun size!25606 (List!32973) Int)

(assert (=> b!2812357 (= e!1778557 (not (< (size!25606 (t!229932 ll!54)) (size!25606 ll!54))))))

(declare-datatypes ((Conc!10174 0) (Object!5256 0) (IArray!20353 0) (BalanceConc!19980 0) (List!32975 0))(
  ( (Node!10174 (left!24782 Conc!10174) (right!25112 Conc!10174) (csize!20578 Int) (cheight!10385 Int)) (Leaf!15499 (xs!13286 IArray!20353) (csize!20579 Int)) (Empty!10174) )
  ( (BalanceConc!19979 (value!158152 BalanceConc!19980)) (List!32974 (value!158153 List!32975)) (Character!116 (value!158154 (_ BitVec 16))) (Open!116 (value!158155 Int)) )
  ( (IArray!20354 (innerList!10234 List!32975)) )
  ( (BalanceConc!19981 (c!455686 Conc!10174)) )
  ( (Nil!32857) (Cons!32857 (h!38277 Object!5256) (t!229933 List!32975)) )
))
(declare-datatypes ((Vector!240 0))(
  ( (Vector!241 (underlying!8360 Object!5256) (overflowing!177 List!32973)) )
))
(declare-fun v!5966 () Vector!240)

(declare-fun list!12309 (Vector!240) List!32973)

(declare-fun $colon+!210 (Vector!240 T!54822) Vector!240)

(declare-fun $colon+!211 (List!32973 T!54822) List!32973)

(assert (=> b!2812357 (= (list!12309 ($colon+!210 v!5966 (h!38276 ll!54))) ($colon+!211 (list!12309 v!5966) (h!38276 ll!54)))))

(declare-fun b!2812358 () Bool)

(declare-fun tp_is_empty!14395 () Bool)

(declare-fun tp!898085 () Bool)

(assert (=> b!2812358 (= e!1778556 (and tp_is_empty!14395 tp!898085))))

(declare-fun b!2812359 () Bool)

(declare-fun tp!898086 () Bool)

(declare-fun tp!898084 () Bool)

(assert (=> b!2812359 (= e!1778555 (and tp!898086 tp!898084))))

(assert (= (and start!272272 res!1170764) b!2812357))

(assert (= (and start!272272 ((_ is Cons!32856) ll!54)) b!2812358))

(assert (= start!272272 b!2812359))

(declare-fun m!3242533 () Bool)

(assert (=> b!2812357 m!3242533))

(declare-fun m!3242535 () Bool)

(assert (=> b!2812357 m!3242535))

(declare-fun m!3242537 () Bool)

(assert (=> b!2812357 m!3242537))

(declare-fun m!3242539 () Bool)

(assert (=> b!2812357 m!3242539))

(declare-fun m!3242541 () Bool)

(assert (=> b!2812357 m!3242541))

(declare-fun m!3242543 () Bool)

(assert (=> b!2812357 m!3242543))

(assert (=> b!2812357 m!3242537))

(assert (=> b!2812357 m!3242533))

(check-sat (not b!2812357) (not b!2812358) (not b!2812359) tp_is_empty!14395)
(check-sat)
(get-model)

(declare-fun d!816423 () Bool)

(declare-fun choose!16612 (Vector!240) List!32973)

(assert (=> d!816423 (= (list!12309 v!5966) (choose!16612 v!5966))))

(declare-fun bs!516465 () Bool)

(assert (= bs!516465 d!816423))

(declare-fun m!3242547 () Bool)

(assert (=> bs!516465 m!3242547))

(assert (=> b!2812357 d!816423))

(declare-fun d!816425 () Bool)

(declare-fun lt!1004682 () Int)

(assert (=> d!816425 (>= lt!1004682 0)))

(declare-fun e!1778564 () Int)

(assert (=> d!816425 (= lt!1004682 e!1778564)))

(declare-fun c!455693 () Bool)

(assert (=> d!816425 (= c!455693 ((_ is Nil!32856) ll!54))))

(assert (=> d!816425 (= (size!25606 ll!54) lt!1004682)))

(declare-fun b!2812372 () Bool)

(assert (=> b!2812372 (= e!1778564 0)))

(declare-fun b!2812373 () Bool)

(assert (=> b!2812373 (= e!1778564 (+ 1 (size!25606 (t!229932 ll!54))))))

(assert (= (and d!816425 c!455693) b!2812372))

(assert (= (and d!816425 (not c!455693)) b!2812373))

(assert (=> b!2812373 m!3242543))

(assert (=> b!2812357 d!816425))

(declare-fun d!816433 () Bool)

(assert (=> d!816433 (= (list!12309 ($colon+!210 v!5966 (h!38276 ll!54))) (choose!16612 ($colon+!210 v!5966 (h!38276 ll!54))))))

(declare-fun bs!516467 () Bool)

(assert (= bs!516467 d!816433))

(assert (=> bs!516467 m!3242533))

(declare-fun m!3242553 () Bool)

(assert (=> bs!516467 m!3242553))

(assert (=> b!2812357 d!816433))

(declare-fun d!816435 () Bool)

(declare-fun lt!1004685 () Int)

(assert (=> d!816435 (>= lt!1004685 0)))

(declare-fun e!1778565 () Int)

(assert (=> d!816435 (= lt!1004685 e!1778565)))

(declare-fun c!455694 () Bool)

(assert (=> d!816435 (= c!455694 ((_ is Nil!32856) (t!229932 ll!54)))))

(assert (=> d!816435 (= (size!25606 (t!229932 ll!54)) lt!1004685)))

(declare-fun b!2812374 () Bool)

(assert (=> b!2812374 (= e!1778565 0)))

(declare-fun b!2812375 () Bool)

(assert (=> b!2812375 (= e!1778565 (+ 1 (size!25606 (t!229932 (t!229932 ll!54)))))))

(assert (= (and d!816435 c!455694) b!2812374))

(assert (= (and d!816435 (not c!455694)) b!2812375))

(declare-fun m!3242555 () Bool)

(assert (=> b!2812375 m!3242555))

(assert (=> b!2812357 d!816435))

(declare-fun d!816437 () Bool)

(declare-fun lt!1004689 () Vector!240)

(assert (=> d!816437 (= (list!12309 lt!1004689) ($colon+!211 (list!12309 v!5966) (h!38276 ll!54)))))

(declare-fun choose!16614 (Vector!240 T!54822) Vector!240)

(assert (=> d!816437 (= lt!1004689 (choose!16614 v!5966 (h!38276 ll!54)))))

(assert (=> d!816437 (= ($colon+!210 v!5966 (h!38276 ll!54)) lt!1004689)))

(declare-fun bs!516469 () Bool)

(assert (= bs!516469 d!816437))

(declare-fun m!3242561 () Bool)

(assert (=> bs!516469 m!3242561))

(assert (=> bs!516469 m!3242537))

(assert (=> bs!516469 m!3242537))

(assert (=> bs!516469 m!3242539))

(declare-fun m!3242563 () Bool)

(assert (=> bs!516469 m!3242563))

(assert (=> b!2812357 d!816437))

(declare-fun b!2812429 () Bool)

(declare-fun res!1170785 () Bool)

(declare-fun e!1778590 () Bool)

(assert (=> b!2812429 (=> (not res!1170785) (not e!1778590))))

(declare-fun lt!1004695 () List!32973)

(assert (=> b!2812429 (= res!1170785 (= (size!25606 lt!1004695) (+ (size!25606 (list!12309 v!5966)) 1)))))

(declare-fun bm!183118 () Bool)

(declare-fun call!183123 () (_ BitVec 32))

(declare-fun isize!70 (List!32973) (_ BitVec 32))

(assert (=> bm!183118 (= call!183123 (isize!70 (list!12309 v!5966)))))

(declare-fun b!2812431 () Bool)

(declare-fun e!1778589 () List!32973)

(assert (=> b!2812431 (= e!1778589 (Cons!32856 (h!38276 (list!12309 v!5966)) ($colon+!211 (t!229932 (list!12309 v!5966)) (h!38276 ll!54))))))

(declare-fun b!2812432 () Bool)

(declare-fun res!1170786 () Bool)

(assert (=> b!2812432 (=> (not res!1170786) (not e!1778590))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4581 (List!32973) (InoxSet T!54822))

(assert (=> b!2812432 (= res!1170786 (= (content!4581 lt!1004695) ((_ map or) (content!4581 (list!12309 v!5966)) (store ((as const (Array T!54822 Bool)) false) (h!38276 ll!54) true))))))

(declare-fun b!2812433 () Bool)

(declare-fun e!1778588 () Bool)

(declare-fun call!183124 () (_ BitVec 32))

(assert (=> b!2812433 (= e!1778588 (= call!183124 (bvadd call!183123 #b00000000000000000000000000000001)))))

(declare-fun bm!183119 () Bool)

(assert (=> bm!183119 (= call!183124 (isize!70 lt!1004695))))

(declare-fun b!2812434 () Bool)

(declare-fun res!1170787 () Bool)

(assert (=> b!2812434 (=> (not res!1170787) (not e!1778590))))

(assert (=> b!2812434 (= res!1170787 e!1778588)))

(declare-fun c!455705 () Bool)

(assert (=> b!2812434 (= c!455705 (bvslt (isize!70 (list!12309 v!5966)) #b01111111111111111111111111111111))))

(declare-fun d!816441 () Bool)

(assert (=> d!816441 e!1778590))

(declare-fun res!1170788 () Bool)

(assert (=> d!816441 (=> (not res!1170788) (not e!1778590))))

(assert (=> d!816441 (= res!1170788 ((_ is Cons!32856) lt!1004695))))

(assert (=> d!816441 (= lt!1004695 e!1778589)))

(declare-fun c!455706 () Bool)

(assert (=> d!816441 (= c!455706 ((_ is Nil!32856) (list!12309 v!5966)))))

(assert (=> d!816441 (= ($colon+!211 (list!12309 v!5966) (h!38276 ll!54)) lt!1004695)))

(declare-fun b!2812430 () Bool)

(assert (=> b!2812430 (= e!1778588 (= call!183124 call!183123))))

(declare-fun b!2812435 () Bool)

(assert (=> b!2812435 (= e!1778589 (Cons!32856 (h!38276 ll!54) (list!12309 v!5966)))))

(declare-fun b!2812436 () Bool)

(declare-fun ++!8069 (List!32973 List!32973) List!32973)

(assert (=> b!2812436 (= e!1778590 (= lt!1004695 (++!8069 (list!12309 v!5966) (Cons!32856 (h!38276 ll!54) Nil!32856))))))

(assert (= (and d!816441 c!455706) b!2812435))

(assert (= (and d!816441 (not c!455706)) b!2812431))

(assert (= (and d!816441 res!1170788) b!2812429))

(assert (= (and b!2812429 res!1170785) b!2812434))

(assert (= (and b!2812434 c!455705) b!2812433))

(assert (= (and b!2812434 (not c!455705)) b!2812430))

(assert (= (or b!2812433 b!2812430) bm!183118))

(assert (= (or b!2812433 b!2812430) bm!183119))

(assert (= (and b!2812434 res!1170787) b!2812432))

(assert (= (and b!2812432 res!1170786) b!2812436))

(declare-fun m!3242583 () Bool)

(assert (=> b!2812429 m!3242583))

(assert (=> b!2812429 m!3242537))

(declare-fun m!3242585 () Bool)

(assert (=> b!2812429 m!3242585))

(declare-fun m!3242587 () Bool)

(assert (=> bm!183119 m!3242587))

(assert (=> bm!183118 m!3242537))

(declare-fun m!3242589 () Bool)

(assert (=> bm!183118 m!3242589))

(declare-fun m!3242591 () Bool)

(assert (=> b!2812431 m!3242591))

(assert (=> b!2812434 m!3242537))

(assert (=> b!2812434 m!3242589))

(declare-fun m!3242593 () Bool)

(assert (=> b!2812432 m!3242593))

(assert (=> b!2812432 m!3242537))

(declare-fun m!3242595 () Bool)

(assert (=> b!2812432 m!3242595))

(declare-fun m!3242597 () Bool)

(assert (=> b!2812432 m!3242597))

(assert (=> b!2812436 m!3242537))

(declare-fun m!3242603 () Bool)

(assert (=> b!2812436 m!3242603))

(assert (=> b!2812357 d!816441))

(declare-fun b!2812445 () Bool)

(declare-fun e!1778596 () Bool)

(declare-fun tp!898099 () Bool)

(assert (=> b!2812445 (= e!1778596 (and tp_is_empty!14395 tp!898099))))

(assert (=> b!2812358 (= tp!898085 e!1778596)))

(assert (= (and b!2812358 ((_ is Cons!32856) (t!229932 ll!54))) b!2812445))

(declare-fun b!2812455 () Bool)

(declare-fun e!1778602 () Bool)

(declare-fun tp!898104 () Bool)

(declare-fun inv!44608 (Conc!10174) Bool)

(assert (=> b!2812455 (= e!1778602 (and (inv!44608 (c!455686 (value!158152 (underlying!8360 v!5966)))) tp!898104))))

(declare-fun b!2812454 () Bool)

(declare-fun e!1778601 () Bool)

(declare-fun inv!44609 (BalanceConc!19980) Bool)

(assert (=> b!2812454 (= e!1778601 (and (inv!44609 (value!158152 (underlying!8360 v!5966))) e!1778602))))

(declare-fun b!2812456 () Bool)

(declare-fun tp!898105 () Bool)

(assert (=> b!2812456 (= e!1778601 tp!898105)))

(assert (=> b!2812359 (= tp!898086 e!1778601)))

(assert (= b!2812454 b!2812455))

(assert (= (and b!2812359 ((_ is BalanceConc!19979) (underlying!8360 v!5966))) b!2812454))

(assert (= (and b!2812359 ((_ is List!32974) (underlying!8360 v!5966))) b!2812456))

(declare-fun m!3242605 () Bool)

(assert (=> b!2812455 m!3242605))

(declare-fun m!3242607 () Bool)

(assert (=> b!2812454 m!3242607))

(declare-fun b!2812457 () Bool)

(declare-fun e!1778603 () Bool)

(declare-fun tp!898106 () Bool)

(assert (=> b!2812457 (= e!1778603 (and tp_is_empty!14395 tp!898106))))

(assert (=> b!2812359 (= tp!898084 e!1778603)))

(assert (= (and b!2812359 ((_ is Cons!32856) (overflowing!177 v!5966))) b!2812457))

(check-sat (not b!2812455) (not b!2812436) (not d!816423) (not bm!183118) (not b!2812456) (not b!2812454) (not b!2812429) (not d!816437) (not b!2812457) (not b!2812373) (not b!2812434) (not d!816433) (not bm!183119) (not b!2812445) (not b!2812375) (not b!2812431) (not b!2812432) tp_is_empty!14395)
(check-sat)
