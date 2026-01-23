; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!272258 () Bool)

(assert start!272258)

(declare-fun res!1170743 () Bool)

(declare-fun e!1778497 () Bool)

(assert (=> start!272258 (=> (not res!1170743) (not e!1778497))))

(declare-datatypes ((T!54806 0))(
  ( (T!54807 (val!10333 Int)) )
))
(declare-datatypes ((List!32964 0))(
  ( (Nil!32850) (Cons!32850 (h!38270 T!54806) (t!229926 List!32964)) )
))
(declare-fun ll!54 () List!32964)

(assert (=> start!272258 (= res!1170743 (is-Nil!32850 ll!54))))

(assert (=> start!272258 e!1778497))

(declare-fun e!1778498 () Bool)

(assert (=> start!272258 e!1778498))

(declare-fun e!1778496 () Bool)

(assert (=> start!272258 e!1778496))

(declare-fun b!2812272 () Bool)

(declare-fun lt!1004666 () List!32964)

(declare-fun ++!8066 (List!32964 List!32964) List!32964)

(assert (=> b!2812272 (= e!1778497 (not (= lt!1004666 (++!8066 lt!1004666 ll!54))))))

(declare-datatypes ((List!32966 0) (Object!5253 0) (Conc!10171 0) (IArray!20347 0) (BalanceConc!19971 0))(
  ( (Nil!32851) (Cons!32851 (h!38271 Object!5253) (t!229927 List!32966)) )
  ( (BalanceConc!19970 (value!158137 BalanceConc!19971)) (List!32965 (value!158138 List!32966)) (Character!113 (value!158139 (_ BitVec 16))) (Open!113 (value!158140 Int)) )
  ( (Node!10171 (left!24778 Conc!10171) (right!25108 Conc!10171) (csize!20572 Int) (cheight!10382 Int)) (Leaf!15495 (xs!13283 IArray!20347) (csize!20573 Int)) (Empty!10171) )
  ( (IArray!20348 (innerList!10231 List!32966)) )
  ( (BalanceConc!19972 (c!455677 Conc!10171)) )
))
(declare-datatypes ((Vector!234 0))(
  ( (Vector!235 (underlying!8357 Object!5253) (overflowing!174 List!32964)) )
))
(declare-fun v!5966 () Vector!234)

(declare-fun list!12306 (Vector!234) List!32964)

(assert (=> b!2812272 (= lt!1004666 (list!12306 v!5966))))

(declare-fun b!2812273 () Bool)

(declare-fun tp_is_empty!14389 () Bool)

(declare-fun tp!898038 () Bool)

(assert (=> b!2812273 (= e!1778498 (and tp_is_empty!14389 tp!898038))))

(declare-fun b!2812274 () Bool)

(declare-fun tp!898039 () Bool)

(declare-fun tp!898037 () Bool)

(assert (=> b!2812274 (= e!1778496 (and tp!898039 tp!898037))))

(assert (= (and start!272258 res!1170743) b!2812272))

(assert (= (and start!272258 (is-Cons!32850 ll!54)) b!2812273))

(assert (= start!272258 b!2812274))

(declare-fun m!3242473 () Bool)

(assert (=> b!2812272 m!3242473))

(declare-fun m!3242475 () Bool)

(assert (=> b!2812272 m!3242475))

(push 1)

(assert (not b!2812272))

(assert (not b!2812273))

(assert (not b!2812274))

(assert tp_is_empty!14389)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2812294 () Bool)

(declare-fun res!1170751 () Bool)

(declare-fun e!1778513 () Bool)

(assert (=> b!2812294 (=> (not res!1170751) (not e!1778513))))

(declare-fun lt!1004672 () List!32964)

(declare-fun size!25603 (List!32964) Int)

(assert (=> b!2812294 (= res!1170751 (= (size!25603 lt!1004672) (+ (size!25603 lt!1004666) (size!25603 ll!54))))))

(declare-fun b!2812292 () Bool)

(declare-fun e!1778512 () List!32964)

(assert (=> b!2812292 (= e!1778512 ll!54)))

(declare-fun b!2812293 () Bool)

(assert (=> b!2812293 (= e!1778512 (Cons!32850 (h!38270 lt!1004666) (++!8066 (t!229926 lt!1004666) ll!54)))))

(declare-fun d!816410 () Bool)

(assert (=> d!816410 e!1778513))

(declare-fun res!1170752 () Bool)

(assert (=> d!816410 (=> (not res!1170752) (not e!1778513))))

(declare-fun content!4578 (List!32964) (Set T!54806))

(assert (=> d!816410 (= res!1170752 (= (content!4578 lt!1004672) (set.union (content!4578 lt!1004666) (content!4578 ll!54))))))

(assert (=> d!816410 (= lt!1004672 e!1778512)))

(declare-fun c!455681 () Bool)

(assert (=> d!816410 (= c!455681 (is-Nil!32850 lt!1004666))))

(assert (=> d!816410 (= (++!8066 lt!1004666 ll!54) lt!1004672)))

(declare-fun b!2812295 () Bool)

(assert (=> b!2812295 (= e!1778513 (or (not (= ll!54 Nil!32850)) (= lt!1004672 lt!1004666)))))

(assert (= (and d!816410 c!455681) b!2812292))

(assert (= (and d!816410 (not c!455681)) b!2812293))

(assert (= (and d!816410 res!1170752) b!2812294))

(assert (= (and b!2812294 res!1170751) b!2812295))

(declare-fun m!3242481 () Bool)

(assert (=> b!2812294 m!3242481))

(declare-fun m!3242483 () Bool)

(assert (=> b!2812294 m!3242483))

(declare-fun m!3242485 () Bool)

(assert (=> b!2812294 m!3242485))

(declare-fun m!3242487 () Bool)

(assert (=> b!2812293 m!3242487))

(declare-fun m!3242489 () Bool)

(assert (=> d!816410 m!3242489))

(declare-fun m!3242491 () Bool)

(assert (=> d!816410 m!3242491))

(declare-fun m!3242493 () Bool)

(assert (=> d!816410 m!3242493))

(assert (=> b!2812272 d!816410))

(declare-fun d!816414 () Bool)

(declare-fun choose!16609 (Vector!234) List!32964)

(assert (=> d!816414 (= (list!12306 v!5966) (choose!16609 v!5966))))

(declare-fun bs!516460 () Bool)

(assert (= bs!516460 d!816414))

(declare-fun m!3242495 () Bool)

(assert (=> bs!516460 m!3242495))

(assert (=> b!2812272 d!816414))

(declare-fun b!2812304 () Bool)

(declare-fun e!1778518 () Bool)

(declare-fun tp!898051 () Bool)

(assert (=> b!2812304 (= e!1778518 (and tp_is_empty!14389 tp!898051))))

(assert (=> b!2812273 (= tp!898038 e!1778518)))

(assert (= (and b!2812273 (is-Cons!32850 (t!229926 ll!54))) b!2812304))

(declare-fun b!2812318 () Bool)

(declare-fun e!1778526 () Bool)

(declare-fun tp!898056 () Bool)

(declare-fun inv!44602 (Conc!10171) Bool)

(assert (=> b!2812318 (= e!1778526 (and (inv!44602 (c!455677 (value!158137 (underlying!8357 v!5966)))) tp!898056))))

(declare-fun b!2812317 () Bool)

(declare-fun e!1778525 () Bool)

(declare-fun inv!44603 (BalanceConc!19971) Bool)

(assert (=> b!2812317 (= e!1778525 (and (inv!44603 (value!158137 (underlying!8357 v!5966))) e!1778526))))

(declare-fun b!2812319 () Bool)

(declare-fun tp!898057 () Bool)

(assert (=> b!2812319 (= e!1778525 tp!898057)))

(assert (=> b!2812274 (= tp!898039 e!1778525)))

(assert (= b!2812317 b!2812318))

(assert (= (and b!2812274 (is-BalanceConc!19970 (underlying!8357 v!5966))) b!2812317))

(assert (= (and b!2812274 (is-List!32965 (underlying!8357 v!5966))) b!2812319))

(declare-fun m!3242497 () Bool)

(assert (=> b!2812318 m!3242497))

(declare-fun m!3242499 () Bool)

(assert (=> b!2812317 m!3242499))

(declare-fun b!2812320 () Bool)

(declare-fun e!1778527 () Bool)

(declare-fun tp!898058 () Bool)

(assert (=> b!2812320 (= e!1778527 (and tp_is_empty!14389 tp!898058))))

(assert (=> b!2812274 (= tp!898037 e!1778527)))

(assert (= (and b!2812274 (is-Cons!32850 (overflowing!174 v!5966))) b!2812320))

(push 1)

(assert (not b!2812304))

(assert (not d!816410))

(assert (not b!2812318))

(assert (not d!816414))

(assert (not b!2812294))

(assert (not b!2812317))

(assert (not b!2812320))

(assert tp_is_empty!14389)

(assert (not b!2812319))

(assert (not b!2812293))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

